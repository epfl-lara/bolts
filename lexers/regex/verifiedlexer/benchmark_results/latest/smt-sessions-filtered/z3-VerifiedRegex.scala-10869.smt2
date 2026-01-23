; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!561206 () Bool)

(assert start!561206)

(declare-fun b!5323677 () Bool)

(assert (=> b!5323677 true))

(assert (=> b!5323677 true))

(declare-fun lambda!271671 () Int)

(declare-fun lambda!271670 () Int)

(assert (=> b!5323677 (not (= lambda!271671 lambda!271670))))

(assert (=> b!5323677 true))

(assert (=> b!5323677 true))

(declare-fun b!5323675 () Bool)

(assert (=> b!5323675 true))

(declare-fun b!5323660 () Bool)

(declare-fun e!3307152 () Bool)

(declare-fun tp!1482268 () Bool)

(assert (=> b!5323660 (= e!3307152 tp!1482268)))

(declare-fun b!5323661 () Bool)

(declare-fun e!3307139 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30240 0))(
  ( (C!30241 (val!24822 Int)) )
))
(declare-datatypes ((Regex!14985 0))(
  ( (ElementMatch!14985 (c!925355 C!30240)) (Concat!23830 (regOne!30482 Regex!14985) (regTwo!30482 Regex!14985)) (EmptyExpr!14985) (Star!14985 (reg!15314 Regex!14985)) (EmptyLang!14985) (Union!14985 (regOne!30483 Regex!14985) (regTwo!30483 Regex!14985)) )
))
(declare-datatypes ((List!61254 0))(
  ( (Nil!61130) (Cons!61130 (h!67578 Regex!14985) (t!374467 List!61254)) )
))
(declare-datatypes ((Context!8738 0))(
  ( (Context!8739 (exprs!4869 List!61254)) )
))
(declare-fun lt!2172719 () (InoxSet Context!8738))

(declare-datatypes ((List!61255 0))(
  ( (Nil!61131) (Cons!61131 (h!67579 C!30240) (t!374468 List!61255)) )
))
(declare-fun s!2326 () List!61255)

(declare-fun matchZipper!1229 ((InoxSet Context!8738) List!61255) Bool)

(assert (=> b!5323661 (= e!3307139 (matchZipper!1229 lt!2172719 (t!374468 s!2326)))))

(declare-fun b!5323662 () Bool)

(declare-datatypes ((Unit!153458 0))(
  ( (Unit!153459) )
))
(declare-fun e!3307146 () Unit!153458)

(declare-fun Unit!153460 () Unit!153458)

(assert (=> b!5323662 (= e!3307146 Unit!153460)))

(declare-fun lt!2172703 () Unit!153458)

(declare-fun lt!2172711 () (InoxSet Context!8738))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!222 ((InoxSet Context!8738) (InoxSet Context!8738) List!61255) Unit!153458)

(assert (=> b!5323662 (= lt!2172703 (lemmaZipperConcatMatchesSameAsBothZippers!222 lt!2172711 lt!2172719 (t!374468 s!2326)))))

(declare-fun res!2258188 () Bool)

(assert (=> b!5323662 (= res!2258188 (matchZipper!1229 lt!2172711 (t!374468 s!2326)))))

(assert (=> b!5323662 (=> res!2258188 e!3307139)))

(assert (=> b!5323662 (= (matchZipper!1229 ((_ map or) lt!2172711 lt!2172719) (t!374468 s!2326)) e!3307139)))

(declare-fun b!5323663 () Bool)

(declare-fun res!2258173 () Bool)

(declare-fun e!3307138 () Bool)

(assert (=> b!5323663 (=> (not res!2258173) (not e!3307138))))

(declare-fun z!1189 () (InoxSet Context!8738))

(declare-datatypes ((List!61256 0))(
  ( (Nil!61132) (Cons!61132 (h!67580 Context!8738) (t!374469 List!61256)) )
))
(declare-fun zl!343 () List!61256)

(declare-fun toList!8769 ((InoxSet Context!8738)) List!61256)

(assert (=> b!5323663 (= res!2258173 (= (toList!8769 z!1189) zl!343))))

(declare-fun b!5323664 () Bool)

(declare-fun e!3307141 () Bool)

(declare-fun tp_is_empty!39223 () Bool)

(assert (=> b!5323664 (= e!3307141 tp_is_empty!39223)))

(declare-fun b!5323666 () Bool)

(declare-fun res!2258175 () Bool)

(declare-fun e!3307148 () Bool)

(assert (=> b!5323666 (=> res!2258175 e!3307148)))

(declare-fun r!7292 () Regex!14985)

(declare-fun generalisedUnion!914 (List!61254) Regex!14985)

(declare-fun unfocusZipperList!427 (List!61256) List!61254)

(assert (=> b!5323666 (= res!2258175 (not (= r!7292 (generalisedUnion!914 (unfocusZipperList!427 zl!343)))))))

(declare-fun b!5323667 () Bool)

(declare-fun res!2258181 () Bool)

(assert (=> b!5323667 (=> res!2258181 e!3307148)))

(get-info :version)

(assert (=> b!5323667 (= res!2258181 (or ((_ is EmptyExpr!14985) r!7292) ((_ is EmptyLang!14985) r!7292) ((_ is ElementMatch!14985) r!7292) ((_ is Union!14985) r!7292) (not ((_ is Concat!23830) r!7292))))))

(declare-fun setIsEmpty!34289 () Bool)

(declare-fun setRes!34289 () Bool)

(assert (=> setIsEmpty!34289 setRes!34289))

(declare-fun setNonEmpty!34289 () Bool)

(declare-fun setElem!34289 () Context!8738)

(declare-fun tp!1482270 () Bool)

(declare-fun inv!80709 (Context!8738) Bool)

(assert (=> setNonEmpty!34289 (= setRes!34289 (and tp!1482270 (inv!80709 setElem!34289) e!3307152))))

(declare-fun setRest!34289 () (InoxSet Context!8738))

(assert (=> setNonEmpty!34289 (= z!1189 ((_ map or) (store ((as const (Array Context!8738 Bool)) false) setElem!34289 true) setRest!34289))))

(declare-fun b!5323668 () Bool)

(declare-fun e!3307143 () Bool)

(declare-fun nullable!5154 (Regex!14985) Bool)

(assert (=> b!5323668 (= e!3307143 (nullable!5154 (regOne!30482 (regOne!30482 r!7292))))))

(declare-fun b!5323669 () Bool)

(declare-fun e!3307145 () Bool)

(declare-fun tp!1482272 () Bool)

(assert (=> b!5323669 (= e!3307145 tp!1482272)))

(declare-fun b!5323670 () Bool)

(declare-fun res!2258177 () Bool)

(declare-fun e!3307151 () Bool)

(assert (=> b!5323670 (=> res!2258177 e!3307151)))

(declare-fun isEmpty!33099 (List!61254) Bool)

(assert (=> b!5323670 (= res!2258177 (isEmpty!33099 (t!374467 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun b!5323671 () Bool)

(declare-fun res!2258190 () Bool)

(assert (=> b!5323671 (=> res!2258190 e!3307148)))

(assert (=> b!5323671 (= res!2258190 (not ((_ is Cons!61130) (exprs!4869 (h!67580 zl!343)))))))

(declare-fun b!5323672 () Bool)

(declare-fun res!2258191 () Bool)

(declare-fun e!3307140 () Bool)

(assert (=> b!5323672 (=> res!2258191 e!3307140)))

(assert (=> b!5323672 (= res!2258191 (not (= (exprs!4869 (h!67580 zl!343)) (Cons!61130 (Concat!23830 (regOne!30482 (regOne!30482 r!7292)) (regTwo!30482 (regOne!30482 r!7292))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))))

(declare-fun b!5323673 () Bool)

(declare-fun tp!1482273 () Bool)

(declare-fun tp!1482271 () Bool)

(assert (=> b!5323673 (= e!3307141 (and tp!1482273 tp!1482271))))

(declare-fun b!5323674 () Bool)

(declare-fun e!3307149 () Bool)

(declare-fun e!3307147 () Bool)

(assert (=> b!5323674 (= e!3307149 e!3307147)))

(declare-fun res!2258180 () Bool)

(assert (=> b!5323674 (=> res!2258180 e!3307147)))

(declare-fun lt!2172717 () (InoxSet Context!8738))

(assert (=> b!5323674 (= res!2258180 (not (= lt!2172711 lt!2172717)))))

(declare-fun lt!2172697 () List!61254)

(declare-fun derivationStepZipperDown!433 (Regex!14985 Context!8738 C!30240) (InoxSet Context!8738))

(assert (=> b!5323674 (= lt!2172717 (derivationStepZipperDown!433 (regOne!30482 (regOne!30482 r!7292)) (Context!8739 lt!2172697) (h!67579 s!2326)))))

(assert (=> b!5323674 (= lt!2172697 (Cons!61130 (regTwo!30482 (regOne!30482 r!7292)) (t!374467 (exprs!4869 (h!67580 zl!343)))))))

(assert (=> b!5323675 (= e!3307151 e!3307149)))

(declare-fun res!2258172 () Bool)

(assert (=> b!5323675 (=> res!2258172 e!3307149)))

(assert (=> b!5323675 (= res!2258172 (or (and ((_ is ElementMatch!14985) (regOne!30482 r!7292)) (= (c!925355 (regOne!30482 r!7292)) (h!67579 s!2326))) ((_ is Union!14985) (regOne!30482 r!7292))))))

(declare-fun lt!2172695 () Unit!153458)

(assert (=> b!5323675 (= lt!2172695 e!3307146)))

(declare-fun c!925354 () Bool)

(assert (=> b!5323675 (= c!925354 (nullable!5154 (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun lambda!271672 () Int)

(declare-fun flatMap!712 ((InoxSet Context!8738) Int) (InoxSet Context!8738))

(declare-fun derivationStepZipperUp!357 (Context!8738 C!30240) (InoxSet Context!8738))

(assert (=> b!5323675 (= (flatMap!712 z!1189 lambda!271672) (derivationStepZipperUp!357 (h!67580 zl!343) (h!67579 s!2326)))))

(declare-fun lt!2172699 () Unit!153458)

(declare-fun lemmaFlatMapOnSingletonSet!244 ((InoxSet Context!8738) Context!8738 Int) Unit!153458)

(assert (=> b!5323675 (= lt!2172699 (lemmaFlatMapOnSingletonSet!244 z!1189 (h!67580 zl!343) lambda!271672))))

(declare-fun lt!2172716 () Context!8738)

(assert (=> b!5323675 (= lt!2172719 (derivationStepZipperUp!357 lt!2172716 (h!67579 s!2326)))))

(assert (=> b!5323675 (= lt!2172711 (derivationStepZipperDown!433 (h!67578 (exprs!4869 (h!67580 zl!343))) lt!2172716 (h!67579 s!2326)))))

(assert (=> b!5323675 (= lt!2172716 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun lt!2172710 () (InoxSet Context!8738))

(assert (=> b!5323675 (= lt!2172710 (derivationStepZipperUp!357 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343))))) (h!67579 s!2326)))))

(declare-fun b!5323676 () Bool)

(declare-fun res!2258193 () Bool)

(assert (=> b!5323676 (=> res!2258193 e!3307140)))

(declare-fun lt!2172705 () Bool)

(declare-fun lt!2172713 () (InoxSet Context!8738))

(assert (=> b!5323676 (= res!2258193 (not (= lt!2172705 (matchZipper!1229 lt!2172713 (t!374468 s!2326)))))))

(assert (=> b!5323677 (= e!3307148 e!3307151)))

(declare-fun res!2258192 () Bool)

(assert (=> b!5323677 (=> res!2258192 e!3307151)))

(declare-fun lt!2172712 () Bool)

(declare-fun lt!2172709 () Bool)

(assert (=> b!5323677 (= res!2258192 (or (not (= lt!2172709 lt!2172712)) ((_ is Nil!61131) s!2326)))))

(declare-fun Exists!2166 (Int) Bool)

(assert (=> b!5323677 (= (Exists!2166 lambda!271670) (Exists!2166 lambda!271671))))

(declare-fun lt!2172715 () Unit!153458)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!820 (Regex!14985 Regex!14985 List!61255) Unit!153458)

(assert (=> b!5323677 (= lt!2172715 (lemmaExistCutMatchRandMatchRSpecEquivalent!820 (regOne!30482 r!7292) (regTwo!30482 r!7292) s!2326))))

(assert (=> b!5323677 (= lt!2172712 (Exists!2166 lambda!271670))))

(declare-datatypes ((tuple2!64368 0))(
  ( (tuple2!64369 (_1!35487 List!61255) (_2!35487 List!61255)) )
))
(declare-datatypes ((Option!15096 0))(
  ( (None!15095) (Some!15095 (v!51124 tuple2!64368)) )
))
(declare-fun isDefined!11799 (Option!15096) Bool)

(declare-fun findConcatSeparation!1510 (Regex!14985 Regex!14985 List!61255 List!61255 List!61255) Option!15096)

(assert (=> b!5323677 (= lt!2172712 (isDefined!11799 (findConcatSeparation!1510 (regOne!30482 r!7292) (regTwo!30482 r!7292) Nil!61131 s!2326 s!2326)))))

(declare-fun lt!2172696 () Unit!153458)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1274 (Regex!14985 Regex!14985 List!61255) Unit!153458)

(assert (=> b!5323677 (= lt!2172696 (lemmaFindConcatSeparationEquivalentToExists!1274 (regOne!30482 r!7292) (regTwo!30482 r!7292) s!2326))))

(declare-fun tp!1482269 () Bool)

(declare-fun b!5323678 () Bool)

(declare-fun e!3307150 () Bool)

(assert (=> b!5323678 (= e!3307150 (and (inv!80709 (h!67580 zl!343)) e!3307145 tp!1482269))))

(declare-fun b!5323679 () Bool)

(declare-fun res!2258178 () Bool)

(assert (=> b!5323679 (=> res!2258178 e!3307148)))

(declare-fun generalisedConcat!654 (List!61254) Regex!14985)

(assert (=> b!5323679 (= res!2258178 (not (= r!7292 (generalisedConcat!654 (exprs!4869 (h!67580 zl!343))))))))

(declare-fun b!5323680 () Bool)

(declare-fun res!2258189 () Bool)

(assert (=> b!5323680 (=> res!2258189 e!3307149)))

(assert (=> b!5323680 (= res!2258189 (not ((_ is Concat!23830) (regOne!30482 r!7292))))))

(declare-fun b!5323681 () Bool)

(declare-fun res!2258182 () Bool)

(declare-fun e!3307144 () Bool)

(assert (=> b!5323681 (=> res!2258182 e!3307144)))

(declare-fun lt!2172714 () List!61256)

(declare-fun zipperDepth!94 (List!61256) Int)

(assert (=> b!5323681 (= res!2258182 (> (zipperDepth!94 lt!2172714) (zipperDepth!94 zl!343)))))

(declare-fun b!5323682 () Bool)

(declare-fun e!3307142 () Bool)

(declare-fun tp!1482277 () Bool)

(assert (=> b!5323682 (= e!3307142 (and tp_is_empty!39223 tp!1482277))))

(declare-fun b!5323683 () Bool)

(declare-fun tp!1482274 () Bool)

(assert (=> b!5323683 (= e!3307141 tp!1482274)))

(declare-fun b!5323684 () Bool)

(declare-fun res!2258176 () Bool)

(assert (=> b!5323684 (=> (not res!2258176) (not e!3307138))))

(declare-fun unfocusZipper!727 (List!61256) Regex!14985)

(assert (=> b!5323684 (= res!2258176 (= r!7292 (unfocusZipper!727 zl!343)))))

(declare-fun b!5323665 () Bool)

(assert (=> b!5323665 (= e!3307140 e!3307144)))

(declare-fun res!2258184 () Bool)

(assert (=> b!5323665 (=> res!2258184 e!3307144)))

(declare-fun zipperDepthTotal!138 (List!61256) Int)

(assert (=> b!5323665 (= res!2258184 (>= (zipperDepthTotal!138 lt!2172714) (zipperDepthTotal!138 zl!343)))))

(declare-fun lt!2172701 () Context!8738)

(assert (=> b!5323665 (= lt!2172714 (Cons!61132 lt!2172701 Nil!61132))))

(declare-fun res!2258186 () Bool)

(assert (=> start!561206 (=> (not res!2258186) (not e!3307138))))

(declare-fun validRegex!6721 (Regex!14985) Bool)

(assert (=> start!561206 (= res!2258186 (validRegex!6721 r!7292))))

(assert (=> start!561206 e!3307138))

(assert (=> start!561206 e!3307141))

(declare-fun condSetEmpty!34289 () Bool)

(assert (=> start!561206 (= condSetEmpty!34289 (= z!1189 ((as const (Array Context!8738 Bool)) false)))))

(assert (=> start!561206 setRes!34289))

(assert (=> start!561206 e!3307150))

(assert (=> start!561206 e!3307142))

(declare-fun b!5323685 () Bool)

(declare-fun res!2258174 () Bool)

(assert (=> b!5323685 (=> res!2258174 e!3307148)))

(declare-fun isEmpty!33100 (List!61256) Bool)

(assert (=> b!5323685 (= res!2258174 (not (isEmpty!33100 (t!374469 zl!343))))))

(declare-fun b!5323686 () Bool)

(declare-fun lambda!271673 () Int)

(declare-fun forall!14403 (List!61254 Int) Bool)

(assert (=> b!5323686 (= e!3307144 (forall!14403 lt!2172697 lambda!271673))))

(declare-fun lt!2172706 () Bool)

(declare-fun lt!2172700 () Regex!14985)

(declare-fun matchRSpec!2088 (Regex!14985 List!61255) Bool)

(assert (=> b!5323686 (= lt!2172706 (matchRSpec!2088 lt!2172700 s!2326))))

(declare-fun lt!2172718 () Unit!153458)

(declare-fun mainMatchTheorem!2088 (Regex!14985 List!61255) Unit!153458)

(assert (=> b!5323686 (= lt!2172718 (mainMatchTheorem!2088 lt!2172700 s!2326))))

(declare-fun lt!2172707 () (InoxSet Context!8738))

(assert (=> b!5323686 (= lt!2172706 (matchZipper!1229 lt!2172707 s!2326))))

(declare-fun matchR!7170 (Regex!14985 List!61255) Bool)

(assert (=> b!5323686 (= lt!2172706 (matchR!7170 lt!2172700 s!2326))))

(declare-fun lt!2172698 () Unit!153458)

(declare-fun theoremZipperRegexEquiv!383 ((InoxSet Context!8738) List!61256 Regex!14985 List!61255) Unit!153458)

(assert (=> b!5323686 (= lt!2172698 (theoremZipperRegexEquiv!383 lt!2172707 lt!2172714 lt!2172700 s!2326))))

(declare-fun lt!2172704 () List!61254)

(assert (=> b!5323686 (= lt!2172700 (generalisedConcat!654 lt!2172704))))

(declare-fun b!5323687 () Bool)

(assert (=> b!5323687 (= e!3307138 (not e!3307148))))

(declare-fun res!2258185 () Bool)

(assert (=> b!5323687 (=> res!2258185 e!3307148)))

(assert (=> b!5323687 (= res!2258185 (not ((_ is Cons!61132) zl!343)))))

(assert (=> b!5323687 (= lt!2172709 (matchRSpec!2088 r!7292 s!2326))))

(assert (=> b!5323687 (= lt!2172709 (matchR!7170 r!7292 s!2326))))

(declare-fun lt!2172720 () Unit!153458)

(assert (=> b!5323687 (= lt!2172720 (mainMatchTheorem!2088 r!7292 s!2326))))

(declare-fun b!5323688 () Bool)

(declare-fun res!2258194 () Bool)

(assert (=> b!5323688 (=> res!2258194 e!3307140)))

(declare-fun contextDepthTotal!118 (Context!8738) Int)

(assert (=> b!5323688 (= res!2258194 (>= (contextDepthTotal!118 lt!2172701) (contextDepthTotal!118 (h!67580 zl!343))))))

(declare-fun b!5323689 () Bool)

(declare-fun Unit!153461 () Unit!153458)

(assert (=> b!5323689 (= e!3307146 Unit!153461)))

(declare-fun b!5323690 () Bool)

(declare-fun tp!1482275 () Bool)

(declare-fun tp!1482276 () Bool)

(assert (=> b!5323690 (= e!3307141 (and tp!1482275 tp!1482276))))

(declare-fun b!5323691 () Bool)

(declare-fun e!3307137 () Bool)

(assert (=> b!5323691 (= e!3307147 e!3307137)))

(declare-fun res!2258195 () Bool)

(assert (=> b!5323691 (=> res!2258195 e!3307137)))

(assert (=> b!5323691 (= res!2258195 (not (= lt!2172705 (matchZipper!1229 lt!2172717 (t!374468 s!2326)))))))

(assert (=> b!5323691 (= lt!2172705 (matchZipper!1229 lt!2172711 (t!374468 s!2326)))))

(declare-fun b!5323692 () Bool)

(declare-fun res!2258183 () Bool)

(assert (=> b!5323692 (=> res!2258183 e!3307149)))

(assert (=> b!5323692 (= res!2258183 e!3307143)))

(declare-fun res!2258179 () Bool)

(assert (=> b!5323692 (=> (not res!2258179) (not e!3307143))))

(assert (=> b!5323692 (= res!2258179 ((_ is Concat!23830) (regOne!30482 r!7292)))))

(declare-fun b!5323693 () Bool)

(assert (=> b!5323693 (= e!3307137 e!3307140)))

(declare-fun res!2258187 () Bool)

(assert (=> b!5323693 (=> res!2258187 e!3307140)))

(assert (=> b!5323693 (= res!2258187 (not (= lt!2172713 lt!2172717)))))

(assert (=> b!5323693 (= (flatMap!712 lt!2172707 lambda!271672) (derivationStepZipperUp!357 lt!2172701 (h!67579 s!2326)))))

(declare-fun lt!2172708 () Unit!153458)

(assert (=> b!5323693 (= lt!2172708 (lemmaFlatMapOnSingletonSet!244 lt!2172707 lt!2172701 lambda!271672))))

(declare-fun lt!2172702 () (InoxSet Context!8738))

(assert (=> b!5323693 (= lt!2172702 (derivationStepZipperUp!357 lt!2172701 (h!67579 s!2326)))))

(declare-fun derivationStepZipper!1226 ((InoxSet Context!8738) C!30240) (InoxSet Context!8738))

(assert (=> b!5323693 (= lt!2172713 (derivationStepZipper!1226 lt!2172707 (h!67579 s!2326)))))

(assert (=> b!5323693 (= lt!2172707 (store ((as const (Array Context!8738 Bool)) false) lt!2172701 true))))

(assert (=> b!5323693 (= lt!2172701 (Context!8739 lt!2172704))))

(assert (=> b!5323693 (= lt!2172704 (Cons!61130 (regOne!30482 (regOne!30482 r!7292)) lt!2172697))))

(assert (= (and start!561206 res!2258186) b!5323663))

(assert (= (and b!5323663 res!2258173) b!5323684))

(assert (= (and b!5323684 res!2258176) b!5323687))

(assert (= (and b!5323687 (not res!2258185)) b!5323685))

(assert (= (and b!5323685 (not res!2258174)) b!5323679))

(assert (= (and b!5323679 (not res!2258178)) b!5323671))

(assert (= (and b!5323671 (not res!2258190)) b!5323666))

(assert (= (and b!5323666 (not res!2258175)) b!5323667))

(assert (= (and b!5323667 (not res!2258181)) b!5323677))

(assert (= (and b!5323677 (not res!2258192)) b!5323670))

(assert (= (and b!5323670 (not res!2258177)) b!5323675))

(assert (= (and b!5323675 c!925354) b!5323662))

(assert (= (and b!5323675 (not c!925354)) b!5323689))

(assert (= (and b!5323662 (not res!2258188)) b!5323661))

(assert (= (and b!5323675 (not res!2258172)) b!5323692))

(assert (= (and b!5323692 res!2258179) b!5323668))

(assert (= (and b!5323692 (not res!2258183)) b!5323680))

(assert (= (and b!5323680 (not res!2258189)) b!5323674))

(assert (= (and b!5323674 (not res!2258180)) b!5323691))

(assert (= (and b!5323691 (not res!2258195)) b!5323693))

(assert (= (and b!5323693 (not res!2258187)) b!5323676))

(assert (= (and b!5323676 (not res!2258193)) b!5323672))

(assert (= (and b!5323672 (not res!2258191)) b!5323688))

(assert (= (and b!5323688 (not res!2258194)) b!5323665))

(assert (= (and b!5323665 (not res!2258184)) b!5323681))

(assert (= (and b!5323681 (not res!2258182)) b!5323686))

(assert (= (and start!561206 ((_ is ElementMatch!14985) r!7292)) b!5323664))

(assert (= (and start!561206 ((_ is Concat!23830) r!7292)) b!5323673))

(assert (= (and start!561206 ((_ is Star!14985) r!7292)) b!5323683))

(assert (= (and start!561206 ((_ is Union!14985) r!7292)) b!5323690))

(assert (= (and start!561206 condSetEmpty!34289) setIsEmpty!34289))

(assert (= (and start!561206 (not condSetEmpty!34289)) setNonEmpty!34289))

(assert (= setNonEmpty!34289 b!5323660))

(assert (= b!5323678 b!5323669))

(assert (= (and start!561206 ((_ is Cons!61132) zl!343)) b!5323678))

(assert (= (and start!561206 ((_ is Cons!61131) s!2326)) b!5323682))

(declare-fun m!6358104 () Bool)

(assert (=> b!5323678 m!6358104))

(declare-fun m!6358106 () Bool)

(assert (=> b!5323686 m!6358106))

(declare-fun m!6358108 () Bool)

(assert (=> b!5323686 m!6358108))

(declare-fun m!6358110 () Bool)

(assert (=> b!5323686 m!6358110))

(declare-fun m!6358112 () Bool)

(assert (=> b!5323686 m!6358112))

(declare-fun m!6358114 () Bool)

(assert (=> b!5323686 m!6358114))

(declare-fun m!6358116 () Bool)

(assert (=> b!5323686 m!6358116))

(declare-fun m!6358118 () Bool)

(assert (=> b!5323686 m!6358118))

(declare-fun m!6358120 () Bool)

(assert (=> b!5323693 m!6358120))

(declare-fun m!6358122 () Bool)

(assert (=> b!5323693 m!6358122))

(declare-fun m!6358124 () Bool)

(assert (=> b!5323693 m!6358124))

(declare-fun m!6358126 () Bool)

(assert (=> b!5323693 m!6358126))

(declare-fun m!6358128 () Bool)

(assert (=> b!5323693 m!6358128))

(declare-fun m!6358130 () Bool)

(assert (=> b!5323670 m!6358130))

(declare-fun m!6358132 () Bool)

(assert (=> b!5323674 m!6358132))

(declare-fun m!6358134 () Bool)

(assert (=> b!5323685 m!6358134))

(declare-fun m!6358136 () Bool)

(assert (=> b!5323666 m!6358136))

(assert (=> b!5323666 m!6358136))

(declare-fun m!6358138 () Bool)

(assert (=> b!5323666 m!6358138))

(declare-fun m!6358140 () Bool)

(assert (=> b!5323677 m!6358140))

(declare-fun m!6358142 () Bool)

(assert (=> b!5323677 m!6358142))

(declare-fun m!6358144 () Bool)

(assert (=> b!5323677 m!6358144))

(assert (=> b!5323677 m!6358140))

(declare-fun m!6358146 () Bool)

(assert (=> b!5323677 m!6358146))

(declare-fun m!6358148 () Bool)

(assert (=> b!5323677 m!6358148))

(assert (=> b!5323677 m!6358142))

(declare-fun m!6358150 () Bool)

(assert (=> b!5323677 m!6358150))

(declare-fun m!6358152 () Bool)

(assert (=> b!5323684 m!6358152))

(declare-fun m!6358154 () Bool)

(assert (=> b!5323679 m!6358154))

(declare-fun m!6358156 () Bool)

(assert (=> b!5323691 m!6358156))

(declare-fun m!6358158 () Bool)

(assert (=> b!5323691 m!6358158))

(declare-fun m!6358160 () Bool)

(assert (=> b!5323687 m!6358160))

(declare-fun m!6358162 () Bool)

(assert (=> b!5323687 m!6358162))

(declare-fun m!6358164 () Bool)

(assert (=> b!5323687 m!6358164))

(declare-fun m!6358166 () Bool)

(assert (=> b!5323661 m!6358166))

(declare-fun m!6358168 () Bool)

(assert (=> b!5323675 m!6358168))

(declare-fun m!6358170 () Bool)

(assert (=> b!5323675 m!6358170))

(declare-fun m!6358172 () Bool)

(assert (=> b!5323675 m!6358172))

(declare-fun m!6358174 () Bool)

(assert (=> b!5323675 m!6358174))

(declare-fun m!6358176 () Bool)

(assert (=> b!5323675 m!6358176))

(declare-fun m!6358178 () Bool)

(assert (=> b!5323675 m!6358178))

(declare-fun m!6358180 () Bool)

(assert (=> b!5323675 m!6358180))

(declare-fun m!6358182 () Bool)

(assert (=> setNonEmpty!34289 m!6358182))

(declare-fun m!6358184 () Bool)

(assert (=> b!5323662 m!6358184))

(assert (=> b!5323662 m!6358158))

(declare-fun m!6358186 () Bool)

(assert (=> b!5323662 m!6358186))

(declare-fun m!6358188 () Bool)

(assert (=> b!5323668 m!6358188))

(declare-fun m!6358190 () Bool)

(assert (=> b!5323665 m!6358190))

(declare-fun m!6358192 () Bool)

(assert (=> b!5323665 m!6358192))

(declare-fun m!6358194 () Bool)

(assert (=> b!5323681 m!6358194))

(declare-fun m!6358196 () Bool)

(assert (=> b!5323681 m!6358196))

(declare-fun m!6358198 () Bool)

(assert (=> b!5323688 m!6358198))

(declare-fun m!6358200 () Bool)

(assert (=> b!5323688 m!6358200))

(declare-fun m!6358202 () Bool)

(assert (=> b!5323663 m!6358202))

(declare-fun m!6358204 () Bool)

(assert (=> start!561206 m!6358204))

(declare-fun m!6358206 () Bool)

(assert (=> b!5323676 m!6358206))

(check-sat (not b!5323674) (not b!5323691) (not b!5323678) (not b!5323668) (not b!5323686) (not b!5323661) (not b!5323673) (not b!5323688) (not b!5323676) (not b!5323666) (not b!5323663) (not b!5323669) tp_is_empty!39223 (not b!5323687) (not b!5323660) (not b!5323690) (not b!5323679) (not b!5323662) (not b!5323683) (not b!5323681) (not b!5323675) (not b!5323682) (not b!5323670) (not b!5323665) (not b!5323685) (not start!561206) (not b!5323684) (not b!5323677) (not b!5323693) (not setNonEmpty!34289))
(check-sat)
(get-model)

(declare-fun bs!1233714 () Bool)

(declare-fun d!1709812 () Bool)

(assert (= bs!1233714 (and d!1709812 b!5323686)))

(declare-fun lambda!271706 () Int)

(assert (=> bs!1233714 (= lambda!271706 lambda!271673)))

(declare-fun b!5323858 () Bool)

(declare-fun e!3307243 () Bool)

(declare-fun lt!2172760 () Regex!14985)

(declare-fun isConcat!405 (Regex!14985) Bool)

(assert (=> b!5323858 (= e!3307243 (isConcat!405 lt!2172760))))

(declare-fun b!5323859 () Bool)

(declare-fun head!11413 (List!61254) Regex!14985)

(assert (=> b!5323859 (= e!3307243 (= lt!2172760 (head!11413 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun b!5323860 () Bool)

(declare-fun e!3307244 () Bool)

(assert (=> b!5323860 (= e!3307244 (isEmpty!33099 (t!374467 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun b!5323861 () Bool)

(declare-fun e!3307241 () Bool)

(declare-fun isEmptyExpr!882 (Regex!14985) Bool)

(assert (=> b!5323861 (= e!3307241 (isEmptyExpr!882 lt!2172760))))

(declare-fun b!5323862 () Bool)

(declare-fun e!3307242 () Bool)

(assert (=> b!5323862 (= e!3307242 e!3307241)))

(declare-fun c!925403 () Bool)

(assert (=> b!5323862 (= c!925403 (isEmpty!33099 (exprs!4869 (h!67580 zl!343))))))

(assert (=> d!1709812 e!3307242))

(declare-fun res!2258275 () Bool)

(assert (=> d!1709812 (=> (not res!2258275) (not e!3307242))))

(assert (=> d!1709812 (= res!2258275 (validRegex!6721 lt!2172760))))

(declare-fun e!3307245 () Regex!14985)

(assert (=> d!1709812 (= lt!2172760 e!3307245)))

(declare-fun c!925401 () Bool)

(assert (=> d!1709812 (= c!925401 e!3307244)))

(declare-fun res!2258274 () Bool)

(assert (=> d!1709812 (=> (not res!2258274) (not e!3307244))))

(assert (=> d!1709812 (= res!2258274 ((_ is Cons!61130) (exprs!4869 (h!67580 zl!343))))))

(assert (=> d!1709812 (forall!14403 (exprs!4869 (h!67580 zl!343)) lambda!271706)))

(assert (=> d!1709812 (= (generalisedConcat!654 (exprs!4869 (h!67580 zl!343))) lt!2172760)))

(declare-fun b!5323863 () Bool)

(declare-fun e!3307240 () Regex!14985)

(assert (=> b!5323863 (= e!3307240 EmptyExpr!14985)))

(declare-fun b!5323864 () Bool)

(assert (=> b!5323864 (= e!3307245 e!3307240)))

(declare-fun c!925404 () Bool)

(assert (=> b!5323864 (= c!925404 ((_ is Cons!61130) (exprs!4869 (h!67580 zl!343))))))

(declare-fun b!5323865 () Bool)

(assert (=> b!5323865 (= e!3307241 e!3307243)))

(declare-fun c!925402 () Bool)

(declare-fun tail!10510 (List!61254) List!61254)

(assert (=> b!5323865 (= c!925402 (isEmpty!33099 (tail!10510 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun b!5323866 () Bool)

(assert (=> b!5323866 (= e!3307240 (Concat!23830 (h!67578 (exprs!4869 (h!67580 zl!343))) (generalisedConcat!654 (t!374467 (exprs!4869 (h!67580 zl!343))))))))

(declare-fun b!5323867 () Bool)

(assert (=> b!5323867 (= e!3307245 (h!67578 (exprs!4869 (h!67580 zl!343))))))

(assert (= (and d!1709812 res!2258274) b!5323860))

(assert (= (and d!1709812 c!925401) b!5323867))

(assert (= (and d!1709812 (not c!925401)) b!5323864))

(assert (= (and b!5323864 c!925404) b!5323866))

(assert (= (and b!5323864 (not c!925404)) b!5323863))

(assert (= (and d!1709812 res!2258275) b!5323862))

(assert (= (and b!5323862 c!925403) b!5323861))

(assert (= (and b!5323862 (not c!925403)) b!5323865))

(assert (= (and b!5323865 c!925402) b!5323859))

(assert (= (and b!5323865 (not c!925402)) b!5323858))

(declare-fun m!6358298 () Bool)

(assert (=> b!5323862 m!6358298))

(assert (=> b!5323860 m!6358130))

(declare-fun m!6358300 () Bool)

(assert (=> b!5323858 m!6358300))

(declare-fun m!6358302 () Bool)

(assert (=> d!1709812 m!6358302))

(declare-fun m!6358304 () Bool)

(assert (=> d!1709812 m!6358304))

(declare-fun m!6358306 () Bool)

(assert (=> b!5323866 m!6358306))

(declare-fun m!6358308 () Bool)

(assert (=> b!5323865 m!6358308))

(assert (=> b!5323865 m!6358308))

(declare-fun m!6358310 () Bool)

(assert (=> b!5323865 m!6358310))

(declare-fun m!6358312 () Bool)

(assert (=> b!5323859 m!6358312))

(declare-fun m!6358314 () Bool)

(assert (=> b!5323861 m!6358314))

(assert (=> b!5323679 d!1709812))

(declare-fun d!1709822 () Bool)

(declare-fun c!925417 () Bool)

(declare-fun isEmpty!33103 (List!61255) Bool)

(assert (=> d!1709822 (= c!925417 (isEmpty!33103 (t!374468 s!2326)))))

(declare-fun e!3307260 () Bool)

(assert (=> d!1709822 (= (matchZipper!1229 lt!2172719 (t!374468 s!2326)) e!3307260)))

(declare-fun b!5323894 () Bool)

(declare-fun nullableZipper!1348 ((InoxSet Context!8738)) Bool)

(assert (=> b!5323894 (= e!3307260 (nullableZipper!1348 lt!2172719))))

(declare-fun b!5323895 () Bool)

(declare-fun head!11414 (List!61255) C!30240)

(declare-fun tail!10511 (List!61255) List!61255)

(assert (=> b!5323895 (= e!3307260 (matchZipper!1229 (derivationStepZipper!1226 lt!2172719 (head!11414 (t!374468 s!2326))) (tail!10511 (t!374468 s!2326))))))

(assert (= (and d!1709822 c!925417) b!5323894))

(assert (= (and d!1709822 (not c!925417)) b!5323895))

(declare-fun m!6358316 () Bool)

(assert (=> d!1709822 m!6358316))

(declare-fun m!6358318 () Bool)

(assert (=> b!5323894 m!6358318))

(declare-fun m!6358320 () Bool)

(assert (=> b!5323895 m!6358320))

(assert (=> b!5323895 m!6358320))

(declare-fun m!6358322 () Bool)

(assert (=> b!5323895 m!6358322))

(declare-fun m!6358324 () Bool)

(assert (=> b!5323895 m!6358324))

(assert (=> b!5323895 m!6358322))

(assert (=> b!5323895 m!6358324))

(declare-fun m!6358326 () Bool)

(assert (=> b!5323895 m!6358326))

(assert (=> b!5323661 d!1709822))

(declare-fun b!5323976 () Bool)

(assert (=> b!5323976 true))

(declare-fun bs!1233720 () Bool)

(declare-fun b!5323978 () Bool)

(assert (= bs!1233720 (and b!5323978 b!5323976)))

(declare-fun lambda!271715 () Int)

(declare-fun lt!2172778 () Int)

(declare-fun lt!2172775 () Int)

(declare-fun lambda!271714 () Int)

(assert (=> bs!1233720 (= (= lt!2172775 lt!2172778) (= lambda!271715 lambda!271714))))

(assert (=> b!5323978 true))

(declare-fun d!1709824 () Bool)

(declare-fun e!3307312 () Bool)

(assert (=> d!1709824 e!3307312))

(declare-fun res!2258300 () Bool)

(assert (=> d!1709824 (=> (not res!2258300) (not e!3307312))))

(assert (=> d!1709824 (= res!2258300 (>= lt!2172775 0))))

(declare-fun e!3307313 () Int)

(assert (=> d!1709824 (= lt!2172775 e!3307313)))

(declare-fun c!925453 () Bool)

(assert (=> d!1709824 (= c!925453 ((_ is Cons!61132) lt!2172714))))

(assert (=> d!1709824 (= (zipperDepth!94 lt!2172714) lt!2172775)))

(assert (=> b!5323976 (= e!3307313 lt!2172778)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!54 (Context!8738) Int)

(assert (=> b!5323976 (= lt!2172778 (maxBigInt!0 (contextDepth!54 (h!67580 lt!2172714)) (zipperDepth!94 (t!374469 lt!2172714))))))

(declare-fun lt!2172776 () Unit!153458)

(declare-fun lambda!271713 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!48 (List!61256 Int Int Int) Unit!153458)

(assert (=> b!5323976 (= lt!2172776 (lemmaForallContextDepthBiggerThanTransitive!48 (t!374469 lt!2172714) lt!2172778 (zipperDepth!94 (t!374469 lt!2172714)) lambda!271713))))

(declare-fun forall!14405 (List!61256 Int) Bool)

(assert (=> b!5323976 (forall!14405 (t!374469 lt!2172714) lambda!271714)))

(declare-fun lt!2172777 () Unit!153458)

(assert (=> b!5323976 (= lt!2172777 lt!2172776)))

(declare-fun b!5323977 () Bool)

(assert (=> b!5323977 (= e!3307313 0)))

(assert (=> b!5323978 (= e!3307312 (forall!14405 lt!2172714 lambda!271715))))

(assert (= (and d!1709824 c!925453) b!5323976))

(assert (= (and d!1709824 (not c!925453)) b!5323977))

(assert (= (and d!1709824 res!2258300) b!5323978))

(declare-fun m!6358404 () Bool)

(assert (=> b!5323976 m!6358404))

(declare-fun m!6358406 () Bool)

(assert (=> b!5323976 m!6358406))

(assert (=> b!5323976 m!6358404))

(declare-fun m!6358408 () Bool)

(assert (=> b!5323976 m!6358408))

(declare-fun m!6358410 () Bool)

(assert (=> b!5323976 m!6358410))

(assert (=> b!5323976 m!6358408))

(assert (=> b!5323976 m!6358408))

(declare-fun m!6358412 () Bool)

(assert (=> b!5323976 m!6358412))

(declare-fun m!6358414 () Bool)

(assert (=> b!5323978 m!6358414))

(assert (=> b!5323681 d!1709824))

(declare-fun bs!1233721 () Bool)

(declare-fun b!5323992 () Bool)

(assert (= bs!1233721 (and b!5323992 b!5323976)))

(declare-fun lambda!271716 () Int)

(assert (=> bs!1233721 (= lambda!271716 lambda!271713)))

(declare-fun lambda!271717 () Int)

(declare-fun lt!2172782 () Int)

(assert (=> bs!1233721 (= (= lt!2172782 lt!2172778) (= lambda!271717 lambda!271714))))

(declare-fun bs!1233723 () Bool)

(assert (= bs!1233723 (and b!5323992 b!5323978)))

(assert (=> bs!1233723 (= (= lt!2172782 lt!2172775) (= lambda!271717 lambda!271715))))

(assert (=> b!5323992 true))

(declare-fun bs!1233724 () Bool)

(declare-fun b!5323994 () Bool)

(assert (= bs!1233724 (and b!5323994 b!5323976)))

(declare-fun lambda!271718 () Int)

(declare-fun lt!2172779 () Int)

(assert (=> bs!1233724 (= (= lt!2172779 lt!2172778) (= lambda!271718 lambda!271714))))

(declare-fun bs!1233725 () Bool)

(assert (= bs!1233725 (and b!5323994 b!5323978)))

(assert (=> bs!1233725 (= (= lt!2172779 lt!2172775) (= lambda!271718 lambda!271715))))

(declare-fun bs!1233726 () Bool)

(assert (= bs!1233726 (and b!5323994 b!5323992)))

(assert (=> bs!1233726 (= (= lt!2172779 lt!2172782) (= lambda!271718 lambda!271717))))

(assert (=> b!5323994 true))

(declare-fun d!1709852 () Bool)

(declare-fun e!3307322 () Bool)

(assert (=> d!1709852 e!3307322))

(declare-fun res!2258306 () Bool)

(assert (=> d!1709852 (=> (not res!2258306) (not e!3307322))))

(assert (=> d!1709852 (= res!2258306 (>= lt!2172779 0))))

(declare-fun e!3307323 () Int)

(assert (=> d!1709852 (= lt!2172779 e!3307323)))

(declare-fun c!925457 () Bool)

(assert (=> d!1709852 (= c!925457 ((_ is Cons!61132) zl!343))))

(assert (=> d!1709852 (= (zipperDepth!94 zl!343) lt!2172779)))

(assert (=> b!5323992 (= e!3307323 lt!2172782)))

(assert (=> b!5323992 (= lt!2172782 (maxBigInt!0 (contextDepth!54 (h!67580 zl!343)) (zipperDepth!94 (t!374469 zl!343))))))

(declare-fun lt!2172780 () Unit!153458)

(assert (=> b!5323992 (= lt!2172780 (lemmaForallContextDepthBiggerThanTransitive!48 (t!374469 zl!343) lt!2172782 (zipperDepth!94 (t!374469 zl!343)) lambda!271716))))

(assert (=> b!5323992 (forall!14405 (t!374469 zl!343) lambda!271717)))

(declare-fun lt!2172781 () Unit!153458)

(assert (=> b!5323992 (= lt!2172781 lt!2172780)))

(declare-fun b!5323993 () Bool)

(assert (=> b!5323993 (= e!3307323 0)))

(assert (=> b!5323994 (= e!3307322 (forall!14405 zl!343 lambda!271718))))

(assert (= (and d!1709852 c!925457) b!5323992))

(assert (= (and d!1709852 (not c!925457)) b!5323993))

(assert (= (and d!1709852 res!2258306) b!5323994))

(declare-fun m!6358430 () Bool)

(assert (=> b!5323992 m!6358430))

(declare-fun m!6358432 () Bool)

(assert (=> b!5323992 m!6358432))

(assert (=> b!5323992 m!6358430))

(declare-fun m!6358434 () Bool)

(assert (=> b!5323992 m!6358434))

(declare-fun m!6358436 () Bool)

(assert (=> b!5323992 m!6358436))

(assert (=> b!5323992 m!6358434))

(assert (=> b!5323992 m!6358434))

(declare-fun m!6358438 () Bool)

(assert (=> b!5323992 m!6358438))

(declare-fun m!6358440 () Bool)

(assert (=> b!5323994 m!6358440))

(assert (=> b!5323681 d!1709852))

(declare-fun d!1709860 () Bool)

(declare-fun e!3307348 () Bool)

(assert (=> d!1709860 (= (matchZipper!1229 ((_ map or) lt!2172711 lt!2172719) (t!374468 s!2326)) e!3307348)))

(declare-fun res!2258324 () Bool)

(assert (=> d!1709860 (=> res!2258324 e!3307348)))

(assert (=> d!1709860 (= res!2258324 (matchZipper!1229 lt!2172711 (t!374468 s!2326)))))

(declare-fun lt!2172795 () Unit!153458)

(declare-fun choose!39857 ((InoxSet Context!8738) (InoxSet Context!8738) List!61255) Unit!153458)

(assert (=> d!1709860 (= lt!2172795 (choose!39857 lt!2172711 lt!2172719 (t!374468 s!2326)))))

(assert (=> d!1709860 (= (lemmaZipperConcatMatchesSameAsBothZippers!222 lt!2172711 lt!2172719 (t!374468 s!2326)) lt!2172795)))

(declare-fun b!5324036 () Bool)

(assert (=> b!5324036 (= e!3307348 (matchZipper!1229 lt!2172719 (t!374468 s!2326)))))

(assert (= (and d!1709860 (not res!2258324)) b!5324036))

(assert (=> d!1709860 m!6358186))

(assert (=> d!1709860 m!6358158))

(declare-fun m!6358478 () Bool)

(assert (=> d!1709860 m!6358478))

(assert (=> b!5324036 m!6358166))

(assert (=> b!5323662 d!1709860))

(declare-fun d!1709880 () Bool)

(declare-fun c!925472 () Bool)

(assert (=> d!1709880 (= c!925472 (isEmpty!33103 (t!374468 s!2326)))))

(declare-fun e!3307349 () Bool)

(assert (=> d!1709880 (= (matchZipper!1229 lt!2172711 (t!374468 s!2326)) e!3307349)))

(declare-fun b!5324037 () Bool)

(assert (=> b!5324037 (= e!3307349 (nullableZipper!1348 lt!2172711))))

(declare-fun b!5324038 () Bool)

(assert (=> b!5324038 (= e!3307349 (matchZipper!1229 (derivationStepZipper!1226 lt!2172711 (head!11414 (t!374468 s!2326))) (tail!10511 (t!374468 s!2326))))))

(assert (= (and d!1709880 c!925472) b!5324037))

(assert (= (and d!1709880 (not c!925472)) b!5324038))

(assert (=> d!1709880 m!6358316))

(declare-fun m!6358480 () Bool)

(assert (=> b!5324037 m!6358480))

(assert (=> b!5324038 m!6358320))

(assert (=> b!5324038 m!6358320))

(declare-fun m!6358482 () Bool)

(assert (=> b!5324038 m!6358482))

(assert (=> b!5324038 m!6358324))

(assert (=> b!5324038 m!6358482))

(assert (=> b!5324038 m!6358324))

(declare-fun m!6358484 () Bool)

(assert (=> b!5324038 m!6358484))

(assert (=> b!5323662 d!1709880))

(declare-fun d!1709882 () Bool)

(declare-fun c!925473 () Bool)

(assert (=> d!1709882 (= c!925473 (isEmpty!33103 (t!374468 s!2326)))))

(declare-fun e!3307350 () Bool)

(assert (=> d!1709882 (= (matchZipper!1229 ((_ map or) lt!2172711 lt!2172719) (t!374468 s!2326)) e!3307350)))

(declare-fun b!5324039 () Bool)

(assert (=> b!5324039 (= e!3307350 (nullableZipper!1348 ((_ map or) lt!2172711 lt!2172719)))))

(declare-fun b!5324040 () Bool)

(assert (=> b!5324040 (= e!3307350 (matchZipper!1229 (derivationStepZipper!1226 ((_ map or) lt!2172711 lt!2172719) (head!11414 (t!374468 s!2326))) (tail!10511 (t!374468 s!2326))))))

(assert (= (and d!1709882 c!925473) b!5324039))

(assert (= (and d!1709882 (not c!925473)) b!5324040))

(assert (=> d!1709882 m!6358316))

(declare-fun m!6358486 () Bool)

(assert (=> b!5324039 m!6358486))

(assert (=> b!5324040 m!6358320))

(assert (=> b!5324040 m!6358320))

(declare-fun m!6358488 () Bool)

(assert (=> b!5324040 m!6358488))

(assert (=> b!5324040 m!6358324))

(assert (=> b!5324040 m!6358488))

(assert (=> b!5324040 m!6358324))

(declare-fun m!6358490 () Bool)

(assert (=> b!5324040 m!6358490))

(assert (=> b!5323662 d!1709882))

(declare-fun d!1709884 () Bool)

(declare-fun e!3307353 () Bool)

(assert (=> d!1709884 e!3307353))

(declare-fun res!2258327 () Bool)

(assert (=> d!1709884 (=> (not res!2258327) (not e!3307353))))

(declare-fun lt!2172801 () List!61256)

(declare-fun noDuplicate!1303 (List!61256) Bool)

(assert (=> d!1709884 (= res!2258327 (noDuplicate!1303 lt!2172801))))

(declare-fun choose!39858 ((InoxSet Context!8738)) List!61256)

(assert (=> d!1709884 (= lt!2172801 (choose!39858 z!1189))))

(assert (=> d!1709884 (= (toList!8769 z!1189) lt!2172801)))

(declare-fun b!5324043 () Bool)

(declare-fun content!10901 (List!61256) (InoxSet Context!8738))

(assert (=> b!5324043 (= e!3307353 (= (content!10901 lt!2172801) z!1189))))

(assert (= (and d!1709884 res!2258327) b!5324043))

(declare-fun m!6358494 () Bool)

(assert (=> d!1709884 m!6358494))

(declare-fun m!6358496 () Bool)

(assert (=> d!1709884 m!6358496))

(declare-fun m!6358498 () Bool)

(assert (=> b!5324043 m!6358498))

(assert (=> b!5323663 d!1709884))

(declare-fun b!5324124 () Bool)

(declare-fun e!3307404 () (InoxSet Context!8738))

(declare-fun call!380222 () (InoxSet Context!8738))

(declare-fun call!380224 () (InoxSet Context!8738))

(assert (=> b!5324124 (= e!3307404 ((_ map or) call!380222 call!380224))))

(declare-fun b!5324125 () Bool)

(declare-fun e!3307407 () (InoxSet Context!8738))

(declare-fun call!380226 () (InoxSet Context!8738))

(assert (=> b!5324125 (= e!3307407 call!380226)))

(declare-fun b!5324126 () Bool)

(declare-fun c!925506 () Bool)

(assert (=> b!5324126 (= c!925506 ((_ is Star!14985) (regOne!30482 (regOne!30482 r!7292))))))

(declare-fun e!3307402 () (InoxSet Context!8738))

(assert (=> b!5324126 (= e!3307402 e!3307407)))

(declare-fun b!5324127 () Bool)

(declare-fun e!3307403 () (InoxSet Context!8738))

(assert (=> b!5324127 (= e!3307403 (store ((as const (Array Context!8738 Bool)) false) (Context!8739 lt!2172697) true))))

(declare-fun bm!380217 () Bool)

(declare-fun call!380227 () List!61254)

(declare-fun call!380223 () List!61254)

(assert (=> bm!380217 (= call!380227 call!380223)))

(declare-fun bm!380218 () Bool)

(declare-fun c!925509 () Bool)

(declare-fun c!925508 () Bool)

(declare-fun $colon$colon!1398 (List!61254 Regex!14985) List!61254)

(assert (=> bm!380218 (= call!380223 ($colon$colon!1398 (exprs!4869 (Context!8739 lt!2172697)) (ite (or c!925509 c!925508) (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 r!7292)))))))

(declare-fun bm!380219 () Bool)

(declare-fun c!925510 () Bool)

(assert (=> bm!380219 (= call!380222 (derivationStepZipperDown!433 (ite c!925510 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292)))) (ite c!925510 (Context!8739 lt!2172697) (Context!8739 call!380223)) (h!67579 s!2326)))))

(declare-fun bm!380220 () Bool)

(declare-fun call!380225 () (InoxSet Context!8738))

(assert (=> bm!380220 (= call!380226 call!380225)))

(declare-fun b!5324130 () Bool)

(declare-fun e!3307405 () Bool)

(assert (=> b!5324130 (= c!925509 e!3307405)))

(declare-fun res!2258344 () Bool)

(assert (=> b!5324130 (=> (not res!2258344) (not e!3307405))))

(assert (=> b!5324130 (= res!2258344 ((_ is Concat!23830) (regOne!30482 (regOne!30482 r!7292))))))

(declare-fun e!3307406 () (InoxSet Context!8738))

(assert (=> b!5324130 (= e!3307404 e!3307406)))

(declare-fun b!5324131 () Bool)

(assert (=> b!5324131 (= e!3307402 call!380226)))

(declare-fun d!1709888 () Bool)

(declare-fun c!925507 () Bool)

(assert (=> d!1709888 (= c!925507 (and ((_ is ElementMatch!14985) (regOne!30482 (regOne!30482 r!7292))) (= (c!925355 (regOne!30482 (regOne!30482 r!7292))) (h!67579 s!2326))))))

(assert (=> d!1709888 (= (derivationStepZipperDown!433 (regOne!30482 (regOne!30482 r!7292)) (Context!8739 lt!2172697) (h!67579 s!2326)) e!3307403)))

(declare-fun b!5324132 () Bool)

(assert (=> b!5324132 (= e!3307405 (nullable!5154 (regOne!30482 (regOne!30482 (regOne!30482 r!7292)))))))

(declare-fun b!5324133 () Bool)

(assert (=> b!5324133 (= e!3307406 ((_ map or) call!380222 call!380225))))

(declare-fun bm!380221 () Bool)

(assert (=> bm!380221 (= call!380225 call!380224)))

(declare-fun b!5324134 () Bool)

(assert (=> b!5324134 (= e!3307406 e!3307402)))

(assert (=> b!5324134 (= c!925508 ((_ is Concat!23830) (regOne!30482 (regOne!30482 r!7292))))))

(declare-fun b!5324135 () Bool)

(assert (=> b!5324135 (= e!3307403 e!3307404)))

(assert (=> b!5324135 (= c!925510 ((_ is Union!14985) (regOne!30482 (regOne!30482 r!7292))))))

(declare-fun b!5324136 () Bool)

(assert (=> b!5324136 (= e!3307407 ((as const (Array Context!8738 Bool)) false))))

(declare-fun bm!380222 () Bool)

(assert (=> bm!380222 (= call!380224 (derivationStepZipperDown!433 (ite c!925510 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (ite c!925509 (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (ite c!925508 (regOne!30482 (regOne!30482 (regOne!30482 r!7292))) (reg!15314 (regOne!30482 (regOne!30482 r!7292)))))) (ite (or c!925510 c!925509) (Context!8739 lt!2172697) (Context!8739 call!380227)) (h!67579 s!2326)))))

(assert (= (and d!1709888 c!925507) b!5324127))

(assert (= (and d!1709888 (not c!925507)) b!5324135))

(assert (= (and b!5324135 c!925510) b!5324124))

(assert (= (and b!5324135 (not c!925510)) b!5324130))

(assert (= (and b!5324130 res!2258344) b!5324132))

(assert (= (and b!5324130 c!925509) b!5324133))

(assert (= (and b!5324130 (not c!925509)) b!5324134))

(assert (= (and b!5324134 c!925508) b!5324131))

(assert (= (and b!5324134 (not c!925508)) b!5324126))

(assert (= (and b!5324126 c!925506) b!5324125))

(assert (= (and b!5324126 (not c!925506)) b!5324136))

(assert (= (or b!5324131 b!5324125) bm!380217))

(assert (= (or b!5324131 b!5324125) bm!380220))

(assert (= (or b!5324133 bm!380217) bm!380218))

(assert (= (or b!5324133 bm!380220) bm!380221))

(assert (= (or b!5324124 bm!380221) bm!380222))

(assert (= (or b!5324124 b!5324133) bm!380219))

(declare-fun m!6358540 () Bool)

(assert (=> bm!380222 m!6358540))

(declare-fun m!6358542 () Bool)

(assert (=> bm!380219 m!6358542))

(declare-fun m!6358544 () Bool)

(assert (=> b!5324132 m!6358544))

(declare-fun m!6358546 () Bool)

(assert (=> b!5324127 m!6358546))

(declare-fun m!6358548 () Bool)

(assert (=> bm!380218 m!6358548))

(assert (=> b!5323674 d!1709888))

(declare-fun d!1709902 () Bool)

(declare-fun dynLambda!24167 (Int Context!8738) (InoxSet Context!8738))

(assert (=> d!1709902 (= (flatMap!712 z!1189 lambda!271672) (dynLambda!24167 lambda!271672 (h!67580 zl!343)))))

(declare-fun lt!2172815 () Unit!153458)

(declare-fun choose!39859 ((InoxSet Context!8738) Context!8738 Int) Unit!153458)

(assert (=> d!1709902 (= lt!2172815 (choose!39859 z!1189 (h!67580 zl!343) lambda!271672))))

(assert (=> d!1709902 (= z!1189 (store ((as const (Array Context!8738 Bool)) false) (h!67580 zl!343) true))))

(assert (=> d!1709902 (= (lemmaFlatMapOnSingletonSet!244 z!1189 (h!67580 zl!343) lambda!271672) lt!2172815)))

(declare-fun b_lambda!204787 () Bool)

(assert (=> (not b_lambda!204787) (not d!1709902)))

(declare-fun bs!1233749 () Bool)

(assert (= bs!1233749 d!1709902))

(assert (=> bs!1233749 m!6358178))

(declare-fun m!6358570 () Bool)

(assert (=> bs!1233749 m!6358570))

(declare-fun m!6358572 () Bool)

(assert (=> bs!1233749 m!6358572))

(declare-fun m!6358574 () Bool)

(assert (=> bs!1233749 m!6358574))

(assert (=> b!5323675 d!1709902))

(declare-fun d!1709906 () Bool)

(declare-fun nullableFct!1500 (Regex!14985) Bool)

(assert (=> d!1709906 (= (nullable!5154 (h!67578 (exprs!4869 (h!67580 zl!343)))) (nullableFct!1500 (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun bs!1233754 () Bool)

(assert (= bs!1233754 d!1709906))

(declare-fun m!6358576 () Bool)

(assert (=> bs!1233754 m!6358576))

(assert (=> b!5323675 d!1709906))

(declare-fun b!5324161 () Bool)

(declare-fun e!3307425 () (InoxSet Context!8738))

(declare-fun call!380228 () (InoxSet Context!8738))

(declare-fun call!380230 () (InoxSet Context!8738))

(assert (=> b!5324161 (= e!3307425 ((_ map or) call!380228 call!380230))))

(declare-fun b!5324162 () Bool)

(declare-fun e!3307432 () (InoxSet Context!8738))

(declare-fun call!380232 () (InoxSet Context!8738))

(assert (=> b!5324162 (= e!3307432 call!380232)))

(declare-fun b!5324163 () Bool)

(declare-fun c!925522 () Bool)

(assert (=> b!5324163 (= c!925522 ((_ is Star!14985) (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun e!3307423 () (InoxSet Context!8738))

(assert (=> b!5324163 (= e!3307423 e!3307432)))

(declare-fun b!5324164 () Bool)

(declare-fun e!3307424 () (InoxSet Context!8738))

(assert (=> b!5324164 (= e!3307424 (store ((as const (Array Context!8738 Bool)) false) lt!2172716 true))))

(declare-fun bm!380223 () Bool)

(declare-fun call!380233 () List!61254)

(declare-fun call!380229 () List!61254)

(assert (=> bm!380223 (= call!380233 call!380229)))

(declare-fun c!925524 () Bool)

(declare-fun bm!380224 () Bool)

(declare-fun c!925525 () Bool)

(assert (=> bm!380224 (= call!380229 ($colon$colon!1398 (exprs!4869 lt!2172716) (ite (or c!925525 c!925524) (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (h!67578 (exprs!4869 (h!67580 zl!343))))))))

(declare-fun c!925526 () Bool)

(declare-fun bm!380225 () Bool)

(assert (=> bm!380225 (= call!380228 (derivationStepZipperDown!433 (ite c!925526 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343))))) (ite c!925526 lt!2172716 (Context!8739 call!380229)) (h!67579 s!2326)))))

(declare-fun bm!380226 () Bool)

(declare-fun call!380231 () (InoxSet Context!8738))

(assert (=> bm!380226 (= call!380232 call!380231)))

(declare-fun b!5324170 () Bool)

(declare-fun e!3307427 () Bool)

(assert (=> b!5324170 (= c!925525 e!3307427)))

(declare-fun res!2258350 () Bool)

(assert (=> b!5324170 (=> (not res!2258350) (not e!3307427))))

(assert (=> b!5324170 (= res!2258350 ((_ is Concat!23830) (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun e!3307429 () (InoxSet Context!8738))

(assert (=> b!5324170 (= e!3307425 e!3307429)))

(declare-fun b!5324172 () Bool)

(assert (=> b!5324172 (= e!3307423 call!380232)))

(declare-fun d!1709908 () Bool)

(declare-fun c!925523 () Bool)

(assert (=> d!1709908 (= c!925523 (and ((_ is ElementMatch!14985) (h!67578 (exprs!4869 (h!67580 zl!343)))) (= (c!925355 (h!67578 (exprs!4869 (h!67580 zl!343)))) (h!67579 s!2326))))))

(assert (=> d!1709908 (= (derivationStepZipperDown!433 (h!67578 (exprs!4869 (h!67580 zl!343))) lt!2172716 (h!67579 s!2326)) e!3307424)))

(declare-fun b!5324174 () Bool)

(assert (=> b!5324174 (= e!3307427 (nullable!5154 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343))))))))

(declare-fun b!5324176 () Bool)

(assert (=> b!5324176 (= e!3307429 ((_ map or) call!380228 call!380231))))

(declare-fun bm!380227 () Bool)

(assert (=> bm!380227 (= call!380231 call!380230)))

(declare-fun b!5324179 () Bool)

(assert (=> b!5324179 (= e!3307429 e!3307423)))

(assert (=> b!5324179 (= c!925524 ((_ is Concat!23830) (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun b!5324180 () Bool)

(assert (=> b!5324180 (= e!3307424 e!3307425)))

(assert (=> b!5324180 (= c!925526 ((_ is Union!14985) (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun b!5324181 () Bool)

(assert (=> b!5324181 (= e!3307432 ((as const (Array Context!8738 Bool)) false))))

(declare-fun bm!380228 () Bool)

(assert (=> bm!380228 (= call!380230 (derivationStepZipperDown!433 (ite c!925526 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925525 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925524 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343))))))) (ite (or c!925526 c!925525) lt!2172716 (Context!8739 call!380233)) (h!67579 s!2326)))))

(assert (= (and d!1709908 c!925523) b!5324164))

(assert (= (and d!1709908 (not c!925523)) b!5324180))

(assert (= (and b!5324180 c!925526) b!5324161))

(assert (= (and b!5324180 (not c!925526)) b!5324170))

(assert (= (and b!5324170 res!2258350) b!5324174))

(assert (= (and b!5324170 c!925525) b!5324176))

(assert (= (and b!5324170 (not c!925525)) b!5324179))

(assert (= (and b!5324179 c!925524) b!5324172))

(assert (= (and b!5324179 (not c!925524)) b!5324163))

(assert (= (and b!5324163 c!925522) b!5324162))

(assert (= (and b!5324163 (not c!925522)) b!5324181))

(assert (= (or b!5324172 b!5324162) bm!380223))

(assert (= (or b!5324172 b!5324162) bm!380226))

(assert (= (or b!5324176 bm!380223) bm!380224))

(assert (= (or b!5324176 bm!380226) bm!380227))

(assert (= (or b!5324161 bm!380227) bm!380228))

(assert (= (or b!5324161 b!5324176) bm!380225))

(declare-fun m!6358600 () Bool)

(assert (=> bm!380228 m!6358600))

(declare-fun m!6358602 () Bool)

(assert (=> bm!380225 m!6358602))

(declare-fun m!6358604 () Bool)

(assert (=> b!5324174 m!6358604))

(declare-fun m!6358606 () Bool)

(assert (=> b!5324164 m!6358606))

(declare-fun m!6358608 () Bool)

(assert (=> bm!380224 m!6358608))

(assert (=> b!5323675 d!1709908))

(declare-fun d!1709914 () Bool)

(declare-fun choose!39861 ((InoxSet Context!8738) Int) (InoxSet Context!8738))

(assert (=> d!1709914 (= (flatMap!712 z!1189 lambda!271672) (choose!39861 z!1189 lambda!271672))))

(declare-fun bs!1233760 () Bool)

(assert (= bs!1233760 d!1709914))

(declare-fun m!6358610 () Bool)

(assert (=> bs!1233760 m!6358610))

(assert (=> b!5323675 d!1709914))

(declare-fun b!5324254 () Bool)

(declare-fun e!3307468 () (InoxSet Context!8738))

(assert (=> b!5324254 (= e!3307468 ((as const (Array Context!8738 Bool)) false))))

(declare-fun b!5324255 () Bool)

(declare-fun call!380236 () (InoxSet Context!8738))

(assert (=> b!5324255 (= e!3307468 call!380236)))

(declare-fun d!1709916 () Bool)

(declare-fun c!925540 () Bool)

(declare-fun e!3307469 () Bool)

(assert (=> d!1709916 (= c!925540 e!3307469)))

(declare-fun res!2258354 () Bool)

(assert (=> d!1709916 (=> (not res!2258354) (not e!3307469))))

(assert (=> d!1709916 (= res!2258354 ((_ is Cons!61130) (exprs!4869 (h!67580 zl!343))))))

(declare-fun e!3307470 () (InoxSet Context!8738))

(assert (=> d!1709916 (= (derivationStepZipperUp!357 (h!67580 zl!343) (h!67579 s!2326)) e!3307470)))

(declare-fun b!5324256 () Bool)

(assert (=> b!5324256 (= e!3307470 e!3307468)))

(declare-fun c!925539 () Bool)

(assert (=> b!5324256 (= c!925539 ((_ is Cons!61130) (exprs!4869 (h!67580 zl!343))))))

(declare-fun b!5324257 () Bool)

(assert (=> b!5324257 (= e!3307470 ((_ map or) call!380236 (derivationStepZipperUp!357 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343)))) (h!67579 s!2326))))))

(declare-fun bm!380231 () Bool)

(assert (=> bm!380231 (= call!380236 (derivationStepZipperDown!433 (h!67578 (exprs!4869 (h!67580 zl!343))) (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343)))) (h!67579 s!2326)))))

(declare-fun b!5324258 () Bool)

(assert (=> b!5324258 (= e!3307469 (nullable!5154 (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(assert (= (and d!1709916 res!2258354) b!5324258))

(assert (= (and d!1709916 c!925540) b!5324257))

(assert (= (and d!1709916 (not c!925540)) b!5324256))

(assert (= (and b!5324256 c!925539) b!5324255))

(assert (= (and b!5324256 (not c!925539)) b!5324254))

(assert (= (or b!5324257 b!5324255) bm!380231))

(declare-fun m!6358626 () Bool)

(assert (=> b!5324257 m!6358626))

(declare-fun m!6358628 () Bool)

(assert (=> bm!380231 m!6358628))

(assert (=> b!5324258 m!6358180))

(assert (=> b!5323675 d!1709916))

(declare-fun b!5324259 () Bool)

(declare-fun e!3307471 () (InoxSet Context!8738))

(assert (=> b!5324259 (= e!3307471 ((as const (Array Context!8738 Bool)) false))))

(declare-fun b!5324260 () Bool)

(declare-fun call!380237 () (InoxSet Context!8738))

(assert (=> b!5324260 (= e!3307471 call!380237)))

(declare-fun d!1709928 () Bool)

(declare-fun c!925542 () Bool)

(declare-fun e!3307472 () Bool)

(assert (=> d!1709928 (= c!925542 e!3307472)))

(declare-fun res!2258355 () Bool)

(assert (=> d!1709928 (=> (not res!2258355) (not e!3307472))))

(assert (=> d!1709928 (= res!2258355 ((_ is Cons!61130) (exprs!4869 lt!2172716)))))

(declare-fun e!3307473 () (InoxSet Context!8738))

(assert (=> d!1709928 (= (derivationStepZipperUp!357 lt!2172716 (h!67579 s!2326)) e!3307473)))

(declare-fun b!5324261 () Bool)

(assert (=> b!5324261 (= e!3307473 e!3307471)))

(declare-fun c!925541 () Bool)

(assert (=> b!5324261 (= c!925541 ((_ is Cons!61130) (exprs!4869 lt!2172716)))))

(declare-fun b!5324262 () Bool)

(assert (=> b!5324262 (= e!3307473 ((_ map or) call!380237 (derivationStepZipperUp!357 (Context!8739 (t!374467 (exprs!4869 lt!2172716))) (h!67579 s!2326))))))

(declare-fun bm!380232 () Bool)

(assert (=> bm!380232 (= call!380237 (derivationStepZipperDown!433 (h!67578 (exprs!4869 lt!2172716)) (Context!8739 (t!374467 (exprs!4869 lt!2172716))) (h!67579 s!2326)))))

(declare-fun b!5324263 () Bool)

(assert (=> b!5324263 (= e!3307472 (nullable!5154 (h!67578 (exprs!4869 lt!2172716))))))

(assert (= (and d!1709928 res!2258355) b!5324263))

(assert (= (and d!1709928 c!925542) b!5324262))

(assert (= (and d!1709928 (not c!925542)) b!5324261))

(assert (= (and b!5324261 c!925541) b!5324260))

(assert (= (and b!5324261 (not c!925541)) b!5324259))

(assert (= (or b!5324262 b!5324260) bm!380232))

(declare-fun m!6358630 () Bool)

(assert (=> b!5324262 m!6358630))

(declare-fun m!6358632 () Bool)

(assert (=> bm!380232 m!6358632))

(declare-fun m!6358634 () Bool)

(assert (=> b!5324263 m!6358634))

(assert (=> b!5323675 d!1709928))

(declare-fun b!5324264 () Bool)

(declare-fun e!3307474 () (InoxSet Context!8738))

(assert (=> b!5324264 (= e!3307474 ((as const (Array Context!8738 Bool)) false))))

(declare-fun b!5324265 () Bool)

(declare-fun call!380238 () (InoxSet Context!8738))

(assert (=> b!5324265 (= e!3307474 call!380238)))

(declare-fun d!1709930 () Bool)

(declare-fun c!925544 () Bool)

(declare-fun e!3307475 () Bool)

(assert (=> d!1709930 (= c!925544 e!3307475)))

(declare-fun res!2258356 () Bool)

(assert (=> d!1709930 (=> (not res!2258356) (not e!3307475))))

(assert (=> d!1709930 (= res!2258356 ((_ is Cons!61130) (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343))))))))))

(declare-fun e!3307476 () (InoxSet Context!8738))

(assert (=> d!1709930 (= (derivationStepZipperUp!357 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343))))) (h!67579 s!2326)) e!3307476)))

(declare-fun b!5324266 () Bool)

(assert (=> b!5324266 (= e!3307476 e!3307474)))

(declare-fun c!925543 () Bool)

(assert (=> b!5324266 (= c!925543 ((_ is Cons!61130) (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343))))))))))

(declare-fun b!5324267 () Bool)

(assert (=> b!5324267 (= e!3307476 ((_ map or) call!380238 (derivationStepZipperUp!357 (Context!8739 (t!374467 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))) (h!67579 s!2326))))))

(declare-fun bm!380233 () Bool)

(assert (=> bm!380233 (= call!380238 (derivationStepZipperDown!433 (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343))))))) (Context!8739 (t!374467 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))) (h!67579 s!2326)))))

(declare-fun b!5324268 () Bool)

(assert (=> b!5324268 (= e!3307475 (nullable!5154 (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))))))

(assert (= (and d!1709930 res!2258356) b!5324268))

(assert (= (and d!1709930 c!925544) b!5324267))

(assert (= (and d!1709930 (not c!925544)) b!5324266))

(assert (= (and b!5324266 c!925543) b!5324265))

(assert (= (and b!5324266 (not c!925543)) b!5324264))

(assert (= (or b!5324267 b!5324265) bm!380233))

(declare-fun m!6358636 () Bool)

(assert (=> b!5324267 m!6358636))

(declare-fun m!6358638 () Bool)

(assert (=> bm!380233 m!6358638))

(declare-fun m!6358640 () Bool)

(assert (=> b!5324268 m!6358640))

(assert (=> b!5323675 d!1709930))

(declare-fun d!1709932 () Bool)

(declare-fun c!925545 () Bool)

(assert (=> d!1709932 (= c!925545 (isEmpty!33103 (t!374468 s!2326)))))

(declare-fun e!3307477 () Bool)

(assert (=> d!1709932 (= (matchZipper!1229 lt!2172713 (t!374468 s!2326)) e!3307477)))

(declare-fun b!5324269 () Bool)

(assert (=> b!5324269 (= e!3307477 (nullableZipper!1348 lt!2172713))))

(declare-fun b!5324270 () Bool)

(assert (=> b!5324270 (= e!3307477 (matchZipper!1229 (derivationStepZipper!1226 lt!2172713 (head!11414 (t!374468 s!2326))) (tail!10511 (t!374468 s!2326))))))

(assert (= (and d!1709932 c!925545) b!5324269))

(assert (= (and d!1709932 (not c!925545)) b!5324270))

(assert (=> d!1709932 m!6358316))

(declare-fun m!6358642 () Bool)

(assert (=> b!5324269 m!6358642))

(assert (=> b!5324270 m!6358320))

(assert (=> b!5324270 m!6358320))

(declare-fun m!6358644 () Bool)

(assert (=> b!5324270 m!6358644))

(assert (=> b!5324270 m!6358324))

(assert (=> b!5324270 m!6358644))

(assert (=> b!5324270 m!6358324))

(declare-fun m!6358646 () Bool)

(assert (=> b!5324270 m!6358646))

(assert (=> b!5323676 d!1709932))

(declare-fun b!5324289 () Bool)

(declare-fun res!2258367 () Bool)

(declare-fun e!3307490 () Bool)

(assert (=> b!5324289 (=> (not res!2258367) (not e!3307490))))

(declare-fun lt!2172830 () Option!15096)

(declare-fun get!21026 (Option!15096) tuple2!64368)

(assert (=> b!5324289 (= res!2258367 (matchR!7170 (regTwo!30482 r!7292) (_2!35487 (get!21026 lt!2172830))))))

(declare-fun b!5324290 () Bool)

(declare-fun res!2258370 () Bool)

(assert (=> b!5324290 (=> (not res!2258370) (not e!3307490))))

(assert (=> b!5324290 (= res!2258370 (matchR!7170 (regOne!30482 r!7292) (_1!35487 (get!21026 lt!2172830))))))

(declare-fun d!1709934 () Bool)

(declare-fun e!3307491 () Bool)

(assert (=> d!1709934 e!3307491))

(declare-fun res!2258369 () Bool)

(assert (=> d!1709934 (=> res!2258369 e!3307491)))

(assert (=> d!1709934 (= res!2258369 e!3307490)))

(declare-fun res!2258371 () Bool)

(assert (=> d!1709934 (=> (not res!2258371) (not e!3307490))))

(assert (=> d!1709934 (= res!2258371 (isDefined!11799 lt!2172830))))

(declare-fun e!3307489 () Option!15096)

(assert (=> d!1709934 (= lt!2172830 e!3307489)))

(declare-fun c!925551 () Bool)

(declare-fun e!3307492 () Bool)

(assert (=> d!1709934 (= c!925551 e!3307492)))

(declare-fun res!2258368 () Bool)

(assert (=> d!1709934 (=> (not res!2258368) (not e!3307492))))

(assert (=> d!1709934 (= res!2258368 (matchR!7170 (regOne!30482 r!7292) Nil!61131))))

(assert (=> d!1709934 (validRegex!6721 (regOne!30482 r!7292))))

(assert (=> d!1709934 (= (findConcatSeparation!1510 (regOne!30482 r!7292) (regTwo!30482 r!7292) Nil!61131 s!2326 s!2326) lt!2172830)))

(declare-fun b!5324291 () Bool)

(assert (=> b!5324291 (= e!3307491 (not (isDefined!11799 lt!2172830)))))

(declare-fun b!5324292 () Bool)

(declare-fun lt!2172829 () Unit!153458)

(declare-fun lt!2172828 () Unit!153458)

(assert (=> b!5324292 (= lt!2172829 lt!2172828)))

(declare-fun ++!13328 (List!61255 List!61255) List!61255)

(assert (=> b!5324292 (= (++!13328 (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) Nil!61131)) (t!374468 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1743 (List!61255 C!30240 List!61255 List!61255) Unit!153458)

(assert (=> b!5324292 (= lt!2172828 (lemmaMoveElementToOtherListKeepsConcatEq!1743 Nil!61131 (h!67579 s!2326) (t!374468 s!2326) s!2326))))

(declare-fun e!3307488 () Option!15096)

(assert (=> b!5324292 (= e!3307488 (findConcatSeparation!1510 (regOne!30482 r!7292) (regTwo!30482 r!7292) (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) Nil!61131)) (t!374468 s!2326) s!2326))))

(declare-fun b!5324293 () Bool)

(assert (=> b!5324293 (= e!3307489 (Some!15095 (tuple2!64369 Nil!61131 s!2326)))))

(declare-fun b!5324294 () Bool)

(assert (=> b!5324294 (= e!3307490 (= (++!13328 (_1!35487 (get!21026 lt!2172830)) (_2!35487 (get!21026 lt!2172830))) s!2326))))

(declare-fun b!5324295 () Bool)

(assert (=> b!5324295 (= e!3307489 e!3307488)))

(declare-fun c!925550 () Bool)

(assert (=> b!5324295 (= c!925550 ((_ is Nil!61131) s!2326))))

(declare-fun b!5324296 () Bool)

(assert (=> b!5324296 (= e!3307488 None!15095)))

(declare-fun b!5324297 () Bool)

(assert (=> b!5324297 (= e!3307492 (matchR!7170 (regTwo!30482 r!7292) s!2326))))

(assert (= (and d!1709934 res!2258368) b!5324297))

(assert (= (and d!1709934 c!925551) b!5324293))

(assert (= (and d!1709934 (not c!925551)) b!5324295))

(assert (= (and b!5324295 c!925550) b!5324296))

(assert (= (and b!5324295 (not c!925550)) b!5324292))

(assert (= (and d!1709934 res!2258371) b!5324290))

(assert (= (and b!5324290 res!2258370) b!5324289))

(assert (= (and b!5324289 res!2258367) b!5324294))

(assert (= (and d!1709934 (not res!2258369)) b!5324291))

(declare-fun m!6358648 () Bool)

(assert (=> b!5324294 m!6358648))

(declare-fun m!6358650 () Bool)

(assert (=> b!5324294 m!6358650))

(declare-fun m!6358652 () Bool)

(assert (=> b!5324291 m!6358652))

(assert (=> d!1709934 m!6358652))

(declare-fun m!6358654 () Bool)

(assert (=> d!1709934 m!6358654))

(declare-fun m!6358656 () Bool)

(assert (=> d!1709934 m!6358656))

(assert (=> b!5324290 m!6358648))

(declare-fun m!6358658 () Bool)

(assert (=> b!5324290 m!6358658))

(declare-fun m!6358660 () Bool)

(assert (=> b!5324297 m!6358660))

(declare-fun m!6358662 () Bool)

(assert (=> b!5324292 m!6358662))

(assert (=> b!5324292 m!6358662))

(declare-fun m!6358664 () Bool)

(assert (=> b!5324292 m!6358664))

(declare-fun m!6358666 () Bool)

(assert (=> b!5324292 m!6358666))

(assert (=> b!5324292 m!6358662))

(declare-fun m!6358668 () Bool)

(assert (=> b!5324292 m!6358668))

(assert (=> b!5324289 m!6358648))

(declare-fun m!6358670 () Bool)

(assert (=> b!5324289 m!6358670))

(assert (=> b!5323677 d!1709934))

(declare-fun d!1709936 () Bool)

(declare-fun choose!39862 (Int) Bool)

(assert (=> d!1709936 (= (Exists!2166 lambda!271671) (choose!39862 lambda!271671))))

(declare-fun bs!1233771 () Bool)

(assert (= bs!1233771 d!1709936))

(declare-fun m!6358672 () Bool)

(assert (=> bs!1233771 m!6358672))

(assert (=> b!5323677 d!1709936))

(declare-fun bs!1233772 () Bool)

(declare-fun d!1709938 () Bool)

(assert (= bs!1233772 (and d!1709938 b!5323677)))

(declare-fun lambda!271737 () Int)

(assert (=> bs!1233772 (= lambda!271737 lambda!271670)))

(assert (=> bs!1233772 (not (= lambda!271737 lambda!271671))))

(assert (=> d!1709938 true))

(assert (=> d!1709938 true))

(assert (=> d!1709938 true))

(assert (=> d!1709938 (= (isDefined!11799 (findConcatSeparation!1510 (regOne!30482 r!7292) (regTwo!30482 r!7292) Nil!61131 s!2326 s!2326)) (Exists!2166 lambda!271737))))

(declare-fun lt!2172833 () Unit!153458)

(declare-fun choose!39863 (Regex!14985 Regex!14985 List!61255) Unit!153458)

(assert (=> d!1709938 (= lt!2172833 (choose!39863 (regOne!30482 r!7292) (regTwo!30482 r!7292) s!2326))))

(assert (=> d!1709938 (validRegex!6721 (regOne!30482 r!7292))))

(assert (=> d!1709938 (= (lemmaFindConcatSeparationEquivalentToExists!1274 (regOne!30482 r!7292) (regTwo!30482 r!7292) s!2326) lt!2172833)))

(declare-fun bs!1233773 () Bool)

(assert (= bs!1233773 d!1709938))

(declare-fun m!6358674 () Bool)

(assert (=> bs!1233773 m!6358674))

(assert (=> bs!1233773 m!6358656))

(assert (=> bs!1233773 m!6358142))

(assert (=> bs!1233773 m!6358144))

(assert (=> bs!1233773 m!6358142))

(declare-fun m!6358676 () Bool)

(assert (=> bs!1233773 m!6358676))

(assert (=> b!5323677 d!1709938))

(declare-fun d!1709940 () Bool)

(assert (=> d!1709940 (= (Exists!2166 lambda!271670) (choose!39862 lambda!271670))))

(declare-fun bs!1233774 () Bool)

(assert (= bs!1233774 d!1709940))

(declare-fun m!6358678 () Bool)

(assert (=> bs!1233774 m!6358678))

(assert (=> b!5323677 d!1709940))

(declare-fun bs!1233775 () Bool)

(declare-fun d!1709942 () Bool)

(assert (= bs!1233775 (and d!1709942 b!5323677)))

(declare-fun lambda!271742 () Int)

(assert (=> bs!1233775 (= lambda!271742 lambda!271670)))

(assert (=> bs!1233775 (not (= lambda!271742 lambda!271671))))

(declare-fun bs!1233776 () Bool)

(assert (= bs!1233776 (and d!1709942 d!1709938)))

(assert (=> bs!1233776 (= lambda!271742 lambda!271737)))

(assert (=> d!1709942 true))

(assert (=> d!1709942 true))

(assert (=> d!1709942 true))

(declare-fun lambda!271743 () Int)

(assert (=> bs!1233775 (not (= lambda!271743 lambda!271670))))

(assert (=> bs!1233775 (= lambda!271743 lambda!271671)))

(assert (=> bs!1233776 (not (= lambda!271743 lambda!271737))))

(declare-fun bs!1233777 () Bool)

(assert (= bs!1233777 d!1709942))

(assert (=> bs!1233777 (not (= lambda!271743 lambda!271742))))

(assert (=> d!1709942 true))

(assert (=> d!1709942 true))

(assert (=> d!1709942 true))

(assert (=> d!1709942 (= (Exists!2166 lambda!271742) (Exists!2166 lambda!271743))))

(declare-fun lt!2172836 () Unit!153458)

(declare-fun choose!39864 (Regex!14985 Regex!14985 List!61255) Unit!153458)

(assert (=> d!1709942 (= lt!2172836 (choose!39864 (regOne!30482 r!7292) (regTwo!30482 r!7292) s!2326))))

(assert (=> d!1709942 (validRegex!6721 (regOne!30482 r!7292))))

(assert (=> d!1709942 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!820 (regOne!30482 r!7292) (regTwo!30482 r!7292) s!2326) lt!2172836)))

(declare-fun m!6358680 () Bool)

(assert (=> bs!1233777 m!6358680))

(declare-fun m!6358682 () Bool)

(assert (=> bs!1233777 m!6358682))

(declare-fun m!6358684 () Bool)

(assert (=> bs!1233777 m!6358684))

(assert (=> bs!1233777 m!6358656))

(assert (=> b!5323677 d!1709942))

(declare-fun d!1709944 () Bool)

(declare-fun isEmpty!33104 (Option!15096) Bool)

(assert (=> d!1709944 (= (isDefined!11799 (findConcatSeparation!1510 (regOne!30482 r!7292) (regTwo!30482 r!7292) Nil!61131 s!2326 s!2326)) (not (isEmpty!33104 (findConcatSeparation!1510 (regOne!30482 r!7292) (regTwo!30482 r!7292) Nil!61131 s!2326 s!2326))))))

(declare-fun bs!1233778 () Bool)

(assert (= bs!1233778 d!1709944))

(assert (=> bs!1233778 m!6358142))

(declare-fun m!6358686 () Bool)

(assert (=> bs!1233778 m!6358686))

(assert (=> b!5323677 d!1709944))

(declare-fun bs!1233779 () Bool)

(declare-fun d!1709946 () Bool)

(assert (= bs!1233779 (and d!1709946 b!5323686)))

(declare-fun lambda!271746 () Int)

(assert (=> bs!1233779 (= lambda!271746 lambda!271673)))

(declare-fun bs!1233780 () Bool)

(assert (= bs!1233780 (and d!1709946 d!1709812)))

(assert (=> bs!1233780 (= lambda!271746 lambda!271706)))

(assert (=> d!1709946 (= (inv!80709 (h!67580 zl!343)) (forall!14403 (exprs!4869 (h!67580 zl!343)) lambda!271746))))

(declare-fun bs!1233781 () Bool)

(assert (= bs!1233781 d!1709946))

(declare-fun m!6358688 () Bool)

(assert (=> bs!1233781 m!6358688))

(assert (=> b!5323678 d!1709946))

(declare-fun d!1709948 () Bool)

(assert (=> d!1709948 (= (nullable!5154 (regOne!30482 (regOne!30482 r!7292))) (nullableFct!1500 (regOne!30482 (regOne!30482 r!7292))))))

(declare-fun bs!1233782 () Bool)

(assert (= bs!1233782 d!1709948))

(declare-fun m!6358690 () Bool)

(assert (=> bs!1233782 m!6358690))

(assert (=> b!5323668 d!1709948))

(declare-fun d!1709950 () Bool)

(declare-fun c!925552 () Bool)

(assert (=> d!1709950 (= c!925552 (isEmpty!33103 (t!374468 s!2326)))))

(declare-fun e!3307499 () Bool)

(assert (=> d!1709950 (= (matchZipper!1229 lt!2172717 (t!374468 s!2326)) e!3307499)))

(declare-fun b!5324310 () Bool)

(assert (=> b!5324310 (= e!3307499 (nullableZipper!1348 lt!2172717))))

(declare-fun b!5324311 () Bool)

(assert (=> b!5324311 (= e!3307499 (matchZipper!1229 (derivationStepZipper!1226 lt!2172717 (head!11414 (t!374468 s!2326))) (tail!10511 (t!374468 s!2326))))))

(assert (= (and d!1709950 c!925552) b!5324310))

(assert (= (and d!1709950 (not c!925552)) b!5324311))

(assert (=> d!1709950 m!6358316))

(declare-fun m!6358692 () Bool)

(assert (=> b!5324310 m!6358692))

(assert (=> b!5324311 m!6358320))

(assert (=> b!5324311 m!6358320))

(declare-fun m!6358694 () Bool)

(assert (=> b!5324311 m!6358694))

(assert (=> b!5324311 m!6358324))

(assert (=> b!5324311 m!6358694))

(assert (=> b!5324311 m!6358324))

(declare-fun m!6358696 () Bool)

(assert (=> b!5324311 m!6358696))

(assert (=> b!5323691 d!1709950))

(assert (=> b!5323691 d!1709880))

(declare-fun d!1709952 () Bool)

(assert (=> d!1709952 (= (isEmpty!33099 (t!374467 (exprs!4869 (h!67580 zl!343)))) ((_ is Nil!61130) (t!374467 (exprs!4869 (h!67580 zl!343)))))))

(assert (=> b!5323670 d!1709952))

(declare-fun d!1709954 () Bool)

(assert (=> d!1709954 (= (flatMap!712 lt!2172707 lambda!271672) (choose!39861 lt!2172707 lambda!271672))))

(declare-fun bs!1233783 () Bool)

(assert (= bs!1233783 d!1709954))

(declare-fun m!6358698 () Bool)

(assert (=> bs!1233783 m!6358698))

(assert (=> b!5323693 d!1709954))

(declare-fun b!5324312 () Bool)

(declare-fun e!3307500 () (InoxSet Context!8738))

(assert (=> b!5324312 (= e!3307500 ((as const (Array Context!8738 Bool)) false))))

(declare-fun b!5324313 () Bool)

(declare-fun call!380239 () (InoxSet Context!8738))

(assert (=> b!5324313 (= e!3307500 call!380239)))

(declare-fun d!1709956 () Bool)

(declare-fun c!925554 () Bool)

(declare-fun e!3307501 () Bool)

(assert (=> d!1709956 (= c!925554 e!3307501)))

(declare-fun res!2258384 () Bool)

(assert (=> d!1709956 (=> (not res!2258384) (not e!3307501))))

(assert (=> d!1709956 (= res!2258384 ((_ is Cons!61130) (exprs!4869 lt!2172701)))))

(declare-fun e!3307502 () (InoxSet Context!8738))

(assert (=> d!1709956 (= (derivationStepZipperUp!357 lt!2172701 (h!67579 s!2326)) e!3307502)))

(declare-fun b!5324314 () Bool)

(assert (=> b!5324314 (= e!3307502 e!3307500)))

(declare-fun c!925553 () Bool)

(assert (=> b!5324314 (= c!925553 ((_ is Cons!61130) (exprs!4869 lt!2172701)))))

(declare-fun b!5324315 () Bool)

(assert (=> b!5324315 (= e!3307502 ((_ map or) call!380239 (derivationStepZipperUp!357 (Context!8739 (t!374467 (exprs!4869 lt!2172701))) (h!67579 s!2326))))))

(declare-fun bm!380234 () Bool)

(assert (=> bm!380234 (= call!380239 (derivationStepZipperDown!433 (h!67578 (exprs!4869 lt!2172701)) (Context!8739 (t!374467 (exprs!4869 lt!2172701))) (h!67579 s!2326)))))

(declare-fun b!5324316 () Bool)

(assert (=> b!5324316 (= e!3307501 (nullable!5154 (h!67578 (exprs!4869 lt!2172701))))))

(assert (= (and d!1709956 res!2258384) b!5324316))

(assert (= (and d!1709956 c!925554) b!5324315))

(assert (= (and d!1709956 (not c!925554)) b!5324314))

(assert (= (and b!5324314 c!925553) b!5324313))

(assert (= (and b!5324314 (not c!925553)) b!5324312))

(assert (= (or b!5324315 b!5324313) bm!380234))

(declare-fun m!6358700 () Bool)

(assert (=> b!5324315 m!6358700))

(declare-fun m!6358702 () Bool)

(assert (=> bm!380234 m!6358702))

(declare-fun m!6358704 () Bool)

(assert (=> b!5324316 m!6358704))

(assert (=> b!5323693 d!1709956))

(declare-fun d!1709958 () Bool)

(assert (=> d!1709958 (= (flatMap!712 lt!2172707 lambda!271672) (dynLambda!24167 lambda!271672 lt!2172701))))

(declare-fun lt!2172837 () Unit!153458)

(assert (=> d!1709958 (= lt!2172837 (choose!39859 lt!2172707 lt!2172701 lambda!271672))))

(assert (=> d!1709958 (= lt!2172707 (store ((as const (Array Context!8738 Bool)) false) lt!2172701 true))))

(assert (=> d!1709958 (= (lemmaFlatMapOnSingletonSet!244 lt!2172707 lt!2172701 lambda!271672) lt!2172837)))

(declare-fun b_lambda!204795 () Bool)

(assert (=> (not b_lambda!204795) (not d!1709958)))

(declare-fun bs!1233784 () Bool)

(assert (= bs!1233784 d!1709958))

(assert (=> bs!1233784 m!6358126))

(declare-fun m!6358706 () Bool)

(assert (=> bs!1233784 m!6358706))

(declare-fun m!6358708 () Bool)

(assert (=> bs!1233784 m!6358708))

(assert (=> bs!1233784 m!6358124))

(assert (=> b!5323693 d!1709958))

(declare-fun bs!1233785 () Bool)

(declare-fun d!1709960 () Bool)

(assert (= bs!1233785 (and d!1709960 b!5323675)))

(declare-fun lambda!271749 () Int)

(assert (=> bs!1233785 (= lambda!271749 lambda!271672)))

(assert (=> d!1709960 true))

(assert (=> d!1709960 (= (derivationStepZipper!1226 lt!2172707 (h!67579 s!2326)) (flatMap!712 lt!2172707 lambda!271749))))

(declare-fun bs!1233786 () Bool)

(assert (= bs!1233786 d!1709960))

(declare-fun m!6358710 () Bool)

(assert (=> bs!1233786 m!6358710))

(assert (=> b!5323693 d!1709960))

(declare-fun d!1709962 () Bool)

(declare-fun lt!2172840 () Regex!14985)

(assert (=> d!1709962 (validRegex!6721 lt!2172840)))

(assert (=> d!1709962 (= lt!2172840 (generalisedUnion!914 (unfocusZipperList!427 zl!343)))))

(assert (=> d!1709962 (= (unfocusZipper!727 zl!343) lt!2172840)))

(declare-fun bs!1233787 () Bool)

(assert (= bs!1233787 d!1709962))

(declare-fun m!6358712 () Bool)

(assert (=> bs!1233787 m!6358712))

(assert (=> bs!1233787 m!6358136))

(assert (=> bs!1233787 m!6358136))

(assert (=> bs!1233787 m!6358138))

(assert (=> b!5323684 d!1709962))

(declare-fun d!1709964 () Bool)

(declare-fun lt!2172843 () Int)

(assert (=> d!1709964 (>= lt!2172843 0)))

(declare-fun e!3307505 () Int)

(assert (=> d!1709964 (= lt!2172843 e!3307505)))

(declare-fun c!925559 () Bool)

(assert (=> d!1709964 (= c!925559 ((_ is Cons!61132) lt!2172714))))

(assert (=> d!1709964 (= (zipperDepthTotal!138 lt!2172714) lt!2172843)))

(declare-fun b!5324323 () Bool)

(assert (=> b!5324323 (= e!3307505 (+ (contextDepthTotal!118 (h!67580 lt!2172714)) (zipperDepthTotal!138 (t!374469 lt!2172714))))))

(declare-fun b!5324324 () Bool)

(assert (=> b!5324324 (= e!3307505 0)))

(assert (= (and d!1709964 c!925559) b!5324323))

(assert (= (and d!1709964 (not c!925559)) b!5324324))

(declare-fun m!6358714 () Bool)

(assert (=> b!5324323 m!6358714))

(declare-fun m!6358716 () Bool)

(assert (=> b!5324323 m!6358716))

(assert (=> b!5323665 d!1709964))

(declare-fun d!1709966 () Bool)

(declare-fun lt!2172844 () Int)

(assert (=> d!1709966 (>= lt!2172844 0)))

(declare-fun e!3307506 () Int)

(assert (=> d!1709966 (= lt!2172844 e!3307506)))

(declare-fun c!925560 () Bool)

(assert (=> d!1709966 (= c!925560 ((_ is Cons!61132) zl!343))))

(assert (=> d!1709966 (= (zipperDepthTotal!138 zl!343) lt!2172844)))

(declare-fun b!5324325 () Bool)

(assert (=> b!5324325 (= e!3307506 (+ (contextDepthTotal!118 (h!67580 zl!343)) (zipperDepthTotal!138 (t!374469 zl!343))))))

(declare-fun b!5324326 () Bool)

(assert (=> b!5324326 (= e!3307506 0)))

(assert (= (and d!1709966 c!925560) b!5324325))

(assert (= (and d!1709966 (not c!925560)) b!5324326))

(assert (=> b!5324325 m!6358200))

(declare-fun m!6358718 () Bool)

(assert (=> b!5324325 m!6358718))

(assert (=> b!5323665 d!1709966))

(declare-fun d!1709968 () Bool)

(assert (=> d!1709968 (= (isEmpty!33100 (t!374469 zl!343)) ((_ is Nil!61132) (t!374469 zl!343)))))

(assert (=> b!5323685 d!1709968))

(declare-fun bs!1233788 () Bool)

(declare-fun d!1709970 () Bool)

(assert (= bs!1233788 (and d!1709970 b!5323686)))

(declare-fun lambda!271752 () Int)

(assert (=> bs!1233788 (= lambda!271752 lambda!271673)))

(declare-fun bs!1233789 () Bool)

(assert (= bs!1233789 (and d!1709970 d!1709812)))

(assert (=> bs!1233789 (= lambda!271752 lambda!271706)))

(declare-fun bs!1233790 () Bool)

(assert (= bs!1233790 (and d!1709970 d!1709946)))

(assert (=> bs!1233790 (= lambda!271752 lambda!271746)))

(declare-fun b!5324347 () Bool)

(declare-fun e!3307519 () Bool)

(declare-fun lt!2172847 () Regex!14985)

(declare-fun isUnion!323 (Regex!14985) Bool)

(assert (=> b!5324347 (= e!3307519 (isUnion!323 lt!2172847))))

(declare-fun b!5324348 () Bool)

(declare-fun e!3307523 () Bool)

(declare-fun isEmptyLang!891 (Regex!14985) Bool)

(assert (=> b!5324348 (= e!3307523 (isEmptyLang!891 lt!2172847))))

(declare-fun e!3307524 () Bool)

(assert (=> d!1709970 e!3307524))

(declare-fun res!2258390 () Bool)

(assert (=> d!1709970 (=> (not res!2258390) (not e!3307524))))

(assert (=> d!1709970 (= res!2258390 (validRegex!6721 lt!2172847))))

(declare-fun e!3307520 () Regex!14985)

(assert (=> d!1709970 (= lt!2172847 e!3307520)))

(declare-fun c!925569 () Bool)

(declare-fun e!3307522 () Bool)

(assert (=> d!1709970 (= c!925569 e!3307522)))

(declare-fun res!2258389 () Bool)

(assert (=> d!1709970 (=> (not res!2258389) (not e!3307522))))

(assert (=> d!1709970 (= res!2258389 ((_ is Cons!61130) (unfocusZipperList!427 zl!343)))))

(assert (=> d!1709970 (forall!14403 (unfocusZipperList!427 zl!343) lambda!271752)))

(assert (=> d!1709970 (= (generalisedUnion!914 (unfocusZipperList!427 zl!343)) lt!2172847)))

(declare-fun b!5324349 () Bool)

(assert (=> b!5324349 (= e!3307519 (= lt!2172847 (head!11413 (unfocusZipperList!427 zl!343))))))

(declare-fun b!5324350 () Bool)

(assert (=> b!5324350 (= e!3307524 e!3307523)))

(declare-fun c!925570 () Bool)

(assert (=> b!5324350 (= c!925570 (isEmpty!33099 (unfocusZipperList!427 zl!343)))))

(declare-fun b!5324351 () Bool)

(assert (=> b!5324351 (= e!3307523 e!3307519)))

(declare-fun c!925571 () Bool)

(assert (=> b!5324351 (= c!925571 (isEmpty!33099 (tail!10510 (unfocusZipperList!427 zl!343))))))

(declare-fun b!5324352 () Bool)

(declare-fun e!3307521 () Regex!14985)

(assert (=> b!5324352 (= e!3307521 (Union!14985 (h!67578 (unfocusZipperList!427 zl!343)) (generalisedUnion!914 (t!374467 (unfocusZipperList!427 zl!343)))))))

(declare-fun b!5324353 () Bool)

(assert (=> b!5324353 (= e!3307521 EmptyLang!14985)))

(declare-fun b!5324354 () Bool)

(assert (=> b!5324354 (= e!3307520 e!3307521)))

(declare-fun c!925572 () Bool)

(assert (=> b!5324354 (= c!925572 ((_ is Cons!61130) (unfocusZipperList!427 zl!343)))))

(declare-fun b!5324355 () Bool)

(assert (=> b!5324355 (= e!3307522 (isEmpty!33099 (t!374467 (unfocusZipperList!427 zl!343))))))

(declare-fun b!5324356 () Bool)

(assert (=> b!5324356 (= e!3307520 (h!67578 (unfocusZipperList!427 zl!343)))))

(assert (= (and d!1709970 res!2258389) b!5324355))

(assert (= (and d!1709970 c!925569) b!5324356))

(assert (= (and d!1709970 (not c!925569)) b!5324354))

(assert (= (and b!5324354 c!925572) b!5324352))

(assert (= (and b!5324354 (not c!925572)) b!5324353))

(assert (= (and d!1709970 res!2258390) b!5324350))

(assert (= (and b!5324350 c!925570) b!5324348))

(assert (= (and b!5324350 (not c!925570)) b!5324351))

(assert (= (and b!5324351 c!925571) b!5324349))

(assert (= (and b!5324351 (not c!925571)) b!5324347))

(declare-fun m!6358720 () Bool)

(assert (=> d!1709970 m!6358720))

(assert (=> d!1709970 m!6358136))

(declare-fun m!6358722 () Bool)

(assert (=> d!1709970 m!6358722))

(declare-fun m!6358724 () Bool)

(assert (=> b!5324348 m!6358724))

(declare-fun m!6358726 () Bool)

(assert (=> b!5324347 m!6358726))

(declare-fun m!6358728 () Bool)

(assert (=> b!5324355 m!6358728))

(declare-fun m!6358730 () Bool)

(assert (=> b!5324352 m!6358730))

(assert (=> b!5324350 m!6358136))

(declare-fun m!6358732 () Bool)

(assert (=> b!5324350 m!6358732))

(assert (=> b!5324349 m!6358136))

(declare-fun m!6358734 () Bool)

(assert (=> b!5324349 m!6358734))

(assert (=> b!5324351 m!6358136))

(declare-fun m!6358736 () Bool)

(assert (=> b!5324351 m!6358736))

(assert (=> b!5324351 m!6358736))

(declare-fun m!6358738 () Bool)

(assert (=> b!5324351 m!6358738))

(assert (=> b!5323666 d!1709970))

(declare-fun bs!1233791 () Bool)

(declare-fun d!1709972 () Bool)

(assert (= bs!1233791 (and d!1709972 b!5323686)))

(declare-fun lambda!271755 () Int)

(assert (=> bs!1233791 (= lambda!271755 lambda!271673)))

(declare-fun bs!1233792 () Bool)

(assert (= bs!1233792 (and d!1709972 d!1709812)))

(assert (=> bs!1233792 (= lambda!271755 lambda!271706)))

(declare-fun bs!1233793 () Bool)

(assert (= bs!1233793 (and d!1709972 d!1709946)))

(assert (=> bs!1233793 (= lambda!271755 lambda!271746)))

(declare-fun bs!1233794 () Bool)

(assert (= bs!1233794 (and d!1709972 d!1709970)))

(assert (=> bs!1233794 (= lambda!271755 lambda!271752)))

(declare-fun lt!2172850 () List!61254)

(assert (=> d!1709972 (forall!14403 lt!2172850 lambda!271755)))

(declare-fun e!3307527 () List!61254)

(assert (=> d!1709972 (= lt!2172850 e!3307527)))

(declare-fun c!925575 () Bool)

(assert (=> d!1709972 (= c!925575 ((_ is Cons!61132) zl!343))))

(assert (=> d!1709972 (= (unfocusZipperList!427 zl!343) lt!2172850)))

(declare-fun b!5324361 () Bool)

(assert (=> b!5324361 (= e!3307527 (Cons!61130 (generalisedConcat!654 (exprs!4869 (h!67580 zl!343))) (unfocusZipperList!427 (t!374469 zl!343))))))

(declare-fun b!5324362 () Bool)

(assert (=> b!5324362 (= e!3307527 Nil!61130)))

(assert (= (and d!1709972 c!925575) b!5324361))

(assert (= (and d!1709972 (not c!925575)) b!5324362))

(declare-fun m!6358740 () Bool)

(assert (=> d!1709972 m!6358740))

(assert (=> b!5324361 m!6358154))

(declare-fun m!6358742 () Bool)

(assert (=> b!5324361 m!6358742))

(assert (=> b!5323666 d!1709972))

(declare-fun bs!1233795 () Bool)

(declare-fun b!5324398 () Bool)

(assert (= bs!1233795 (and b!5324398 d!1709938)))

(declare-fun lambda!271760 () Int)

(assert (=> bs!1233795 (not (= lambda!271760 lambda!271737))))

(declare-fun bs!1233796 () Bool)

(assert (= bs!1233796 (and b!5324398 b!5323677)))

(assert (=> bs!1233796 (not (= lambda!271760 lambda!271670))))

(declare-fun bs!1233797 () Bool)

(assert (= bs!1233797 (and b!5324398 d!1709942)))

(assert (=> bs!1233797 (not (= lambda!271760 lambda!271742))))

(assert (=> bs!1233797 (not (= lambda!271760 lambda!271743))))

(assert (=> bs!1233796 (not (= lambda!271760 lambda!271671))))

(assert (=> b!5324398 true))

(assert (=> b!5324398 true))

(declare-fun bs!1233798 () Bool)

(declare-fun b!5324400 () Bool)

(assert (= bs!1233798 (and b!5324400 d!1709938)))

(declare-fun lambda!271761 () Int)

(assert (=> bs!1233798 (not (= lambda!271761 lambda!271737))))

(declare-fun bs!1233799 () Bool)

(assert (= bs!1233799 (and b!5324400 b!5324398)))

(assert (=> bs!1233799 (not (= lambda!271761 lambda!271760))))

(declare-fun bs!1233800 () Bool)

(assert (= bs!1233800 (and b!5324400 b!5323677)))

(assert (=> bs!1233800 (not (= lambda!271761 lambda!271670))))

(declare-fun bs!1233801 () Bool)

(assert (= bs!1233801 (and b!5324400 d!1709942)))

(assert (=> bs!1233801 (not (= lambda!271761 lambda!271742))))

(assert (=> bs!1233801 (= (and (= (regOne!30482 lt!2172700) (regOne!30482 r!7292)) (= (regTwo!30482 lt!2172700) (regTwo!30482 r!7292))) (= lambda!271761 lambda!271743))))

(assert (=> bs!1233800 (= (and (= (regOne!30482 lt!2172700) (regOne!30482 r!7292)) (= (regTwo!30482 lt!2172700) (regTwo!30482 r!7292))) (= lambda!271761 lambda!271671))))

(assert (=> b!5324400 true))

(assert (=> b!5324400 true))

(declare-fun b!5324395 () Bool)

(declare-fun e!3307547 () Bool)

(declare-fun e!3307550 () Bool)

(assert (=> b!5324395 (= e!3307547 e!3307550)))

(declare-fun c!925587 () Bool)

(assert (=> b!5324395 (= c!925587 ((_ is Star!14985) lt!2172700))))

(declare-fun b!5324396 () Bool)

(declare-fun e!3307552 () Bool)

(assert (=> b!5324396 (= e!3307552 (= s!2326 (Cons!61131 (c!925355 lt!2172700) Nil!61131)))))

(declare-fun b!5324397 () Bool)

(declare-fun e!3307549 () Bool)

(declare-fun call!380245 () Bool)

(assert (=> b!5324397 (= e!3307549 call!380245)))

(declare-fun e!3307548 () Bool)

(declare-fun call!380244 () Bool)

(assert (=> b!5324398 (= e!3307548 call!380244)))

(declare-fun b!5324399 () Bool)

(declare-fun res!2258409 () Bool)

(assert (=> b!5324399 (=> res!2258409 e!3307548)))

(assert (=> b!5324399 (= res!2258409 call!380245)))

(assert (=> b!5324399 (= e!3307550 e!3307548)))

(assert (=> b!5324400 (= e!3307550 call!380244)))

(declare-fun d!1709974 () Bool)

(declare-fun c!925584 () Bool)

(assert (=> d!1709974 (= c!925584 ((_ is EmptyExpr!14985) lt!2172700))))

(assert (=> d!1709974 (= (matchRSpec!2088 lt!2172700 s!2326) e!3307549)))

(declare-fun bm!380239 () Bool)

(assert (=> bm!380239 (= call!380245 (isEmpty!33103 s!2326))))

(declare-fun b!5324401 () Bool)

(declare-fun e!3307551 () Bool)

(assert (=> b!5324401 (= e!3307547 e!3307551)))

(declare-fun res!2258408 () Bool)

(assert (=> b!5324401 (= res!2258408 (matchRSpec!2088 (regOne!30483 lt!2172700) s!2326))))

(assert (=> b!5324401 (=> res!2258408 e!3307551)))

(declare-fun b!5324402 () Bool)

(declare-fun c!925586 () Bool)

(assert (=> b!5324402 (= c!925586 ((_ is Union!14985) lt!2172700))))

(assert (=> b!5324402 (= e!3307552 e!3307547)))

(declare-fun b!5324403 () Bool)

(declare-fun e!3307546 () Bool)

(assert (=> b!5324403 (= e!3307549 e!3307546)))

(declare-fun res!2258407 () Bool)

(assert (=> b!5324403 (= res!2258407 (not ((_ is EmptyLang!14985) lt!2172700)))))

(assert (=> b!5324403 (=> (not res!2258407) (not e!3307546))))

(declare-fun bm!380240 () Bool)

(assert (=> bm!380240 (= call!380244 (Exists!2166 (ite c!925587 lambda!271760 lambda!271761)))))

(declare-fun b!5324404 () Bool)

(declare-fun c!925585 () Bool)

(assert (=> b!5324404 (= c!925585 ((_ is ElementMatch!14985) lt!2172700))))

(assert (=> b!5324404 (= e!3307546 e!3307552)))

(declare-fun b!5324405 () Bool)

(assert (=> b!5324405 (= e!3307551 (matchRSpec!2088 (regTwo!30483 lt!2172700) s!2326))))

(assert (= (and d!1709974 c!925584) b!5324397))

(assert (= (and d!1709974 (not c!925584)) b!5324403))

(assert (= (and b!5324403 res!2258407) b!5324404))

(assert (= (and b!5324404 c!925585) b!5324396))

(assert (= (and b!5324404 (not c!925585)) b!5324402))

(assert (= (and b!5324402 c!925586) b!5324401))

(assert (= (and b!5324402 (not c!925586)) b!5324395))

(assert (= (and b!5324401 (not res!2258408)) b!5324405))

(assert (= (and b!5324395 c!925587) b!5324399))

(assert (= (and b!5324395 (not c!925587)) b!5324400))

(assert (= (and b!5324399 (not res!2258409)) b!5324398))

(assert (= (or b!5324398 b!5324400) bm!380240))

(assert (= (or b!5324397 b!5324399) bm!380239))

(declare-fun m!6358744 () Bool)

(assert (=> bm!380239 m!6358744))

(declare-fun m!6358746 () Bool)

(assert (=> b!5324401 m!6358746))

(declare-fun m!6358748 () Bool)

(assert (=> bm!380240 m!6358748))

(declare-fun m!6358750 () Bool)

(assert (=> b!5324405 m!6358750))

(assert (=> b!5323686 d!1709974))

(declare-fun d!1709976 () Bool)

(assert (=> d!1709976 (= (matchR!7170 lt!2172700 s!2326) (matchZipper!1229 lt!2172707 s!2326))))

(declare-fun lt!2172853 () Unit!153458)

(declare-fun choose!39866 ((InoxSet Context!8738) List!61256 Regex!14985 List!61255) Unit!153458)

(assert (=> d!1709976 (= lt!2172853 (choose!39866 lt!2172707 lt!2172714 lt!2172700 s!2326))))

(assert (=> d!1709976 (validRegex!6721 lt!2172700)))

(assert (=> d!1709976 (= (theoremZipperRegexEquiv!383 lt!2172707 lt!2172714 lt!2172700 s!2326) lt!2172853)))

(declare-fun bs!1233802 () Bool)

(assert (= bs!1233802 d!1709976))

(assert (=> bs!1233802 m!6358118))

(assert (=> bs!1233802 m!6358114))

(declare-fun m!6358752 () Bool)

(assert (=> bs!1233802 m!6358752))

(declare-fun m!6358754 () Bool)

(assert (=> bs!1233802 m!6358754))

(assert (=> b!5323686 d!1709976))

(declare-fun b!5324435 () Bool)

(declare-fun e!3307568 () Bool)

(assert (=> b!5324435 (= e!3307568 (nullable!5154 lt!2172700))))

(declare-fun b!5324436 () Bool)

(declare-fun e!3307569 () Bool)

(assert (=> b!5324436 (= e!3307569 (not (= (head!11414 s!2326) (c!925355 lt!2172700))))))

(declare-fun b!5324437 () Bool)

(declare-fun e!3307573 () Bool)

(declare-fun lt!2172856 () Bool)

(assert (=> b!5324437 (= e!3307573 (not lt!2172856))))

(declare-fun b!5324438 () Bool)

(declare-fun e!3307571 () Bool)

(declare-fun e!3307567 () Bool)

(assert (=> b!5324438 (= e!3307571 e!3307567)))

(declare-fun res!2258431 () Bool)

(assert (=> b!5324438 (=> (not res!2258431) (not e!3307567))))

(assert (=> b!5324438 (= res!2258431 (not lt!2172856))))

(declare-fun b!5324439 () Bool)

(declare-fun res!2258430 () Bool)

(declare-fun e!3307570 () Bool)

(assert (=> b!5324439 (=> (not res!2258430) (not e!3307570))))

(assert (=> b!5324439 (= res!2258430 (isEmpty!33103 (tail!10511 s!2326)))))

(declare-fun b!5324440 () Bool)

(declare-fun res!2258432 () Bool)

(assert (=> b!5324440 (=> res!2258432 e!3307571)))

(assert (=> b!5324440 (= res!2258432 (not ((_ is ElementMatch!14985) lt!2172700)))))

(assert (=> b!5324440 (= e!3307573 e!3307571)))

(declare-fun b!5324441 () Bool)

(assert (=> b!5324441 (= e!3307570 (= (head!11414 s!2326) (c!925355 lt!2172700)))))

(declare-fun b!5324442 () Bool)

(assert (=> b!5324442 (= e!3307567 e!3307569)))

(declare-fun res!2258433 () Bool)

(assert (=> b!5324442 (=> res!2258433 e!3307569)))

(declare-fun call!380248 () Bool)

(assert (=> b!5324442 (= res!2258433 call!380248)))

(declare-fun bm!380243 () Bool)

(assert (=> bm!380243 (= call!380248 (isEmpty!33103 s!2326))))

(declare-fun b!5324443 () Bool)

(declare-fun res!2258428 () Bool)

(assert (=> b!5324443 (=> res!2258428 e!3307569)))

(assert (=> b!5324443 (= res!2258428 (not (isEmpty!33103 (tail!10511 s!2326))))))

(declare-fun d!1709978 () Bool)

(declare-fun e!3307572 () Bool)

(assert (=> d!1709978 e!3307572))

(declare-fun c!925596 () Bool)

(assert (=> d!1709978 (= c!925596 ((_ is EmptyExpr!14985) lt!2172700))))

(assert (=> d!1709978 (= lt!2172856 e!3307568)))

(declare-fun c!925595 () Bool)

(assert (=> d!1709978 (= c!925595 (isEmpty!33103 s!2326))))

(assert (=> d!1709978 (validRegex!6721 lt!2172700)))

(assert (=> d!1709978 (= (matchR!7170 lt!2172700 s!2326) lt!2172856)))

(declare-fun b!5324434 () Bool)

(declare-fun res!2258429 () Bool)

(assert (=> b!5324434 (=> (not res!2258429) (not e!3307570))))

(assert (=> b!5324434 (= res!2258429 (not call!380248))))

(declare-fun b!5324444 () Bool)

(assert (=> b!5324444 (= e!3307572 e!3307573)))

(declare-fun c!925594 () Bool)

(assert (=> b!5324444 (= c!925594 ((_ is EmptyLang!14985) lt!2172700))))

(declare-fun b!5324445 () Bool)

(assert (=> b!5324445 (= e!3307572 (= lt!2172856 call!380248))))

(declare-fun b!5324446 () Bool)

(declare-fun res!2258427 () Bool)

(assert (=> b!5324446 (=> res!2258427 e!3307571)))

(assert (=> b!5324446 (= res!2258427 e!3307570)))

(declare-fun res!2258426 () Bool)

(assert (=> b!5324446 (=> (not res!2258426) (not e!3307570))))

(assert (=> b!5324446 (= res!2258426 lt!2172856)))

(declare-fun b!5324447 () Bool)

(declare-fun derivativeStep!4169 (Regex!14985 C!30240) Regex!14985)

(assert (=> b!5324447 (= e!3307568 (matchR!7170 (derivativeStep!4169 lt!2172700 (head!11414 s!2326)) (tail!10511 s!2326)))))

(assert (= (and d!1709978 c!925595) b!5324435))

(assert (= (and d!1709978 (not c!925595)) b!5324447))

(assert (= (and d!1709978 c!925596) b!5324445))

(assert (= (and d!1709978 (not c!925596)) b!5324444))

(assert (= (and b!5324444 c!925594) b!5324437))

(assert (= (and b!5324444 (not c!925594)) b!5324440))

(assert (= (and b!5324440 (not res!2258432)) b!5324446))

(assert (= (and b!5324446 res!2258426) b!5324434))

(assert (= (and b!5324434 res!2258429) b!5324439))

(assert (= (and b!5324439 res!2258430) b!5324441))

(assert (= (and b!5324446 (not res!2258427)) b!5324438))

(assert (= (and b!5324438 res!2258431) b!5324442))

(assert (= (and b!5324442 (not res!2258433)) b!5324443))

(assert (= (and b!5324443 (not res!2258428)) b!5324436))

(assert (= (or b!5324445 b!5324434 b!5324442) bm!380243))

(assert (=> bm!380243 m!6358744))

(declare-fun m!6358756 () Bool)

(assert (=> b!5324436 m!6358756))

(assert (=> d!1709978 m!6358744))

(assert (=> d!1709978 m!6358754))

(assert (=> b!5324441 m!6358756))

(declare-fun m!6358758 () Bool)

(assert (=> b!5324439 m!6358758))

(assert (=> b!5324439 m!6358758))

(declare-fun m!6358760 () Bool)

(assert (=> b!5324439 m!6358760))

(declare-fun m!6358762 () Bool)

(assert (=> b!5324435 m!6358762))

(assert (=> b!5324443 m!6358758))

(assert (=> b!5324443 m!6358758))

(assert (=> b!5324443 m!6358760))

(assert (=> b!5324447 m!6358756))

(assert (=> b!5324447 m!6358756))

(declare-fun m!6358764 () Bool)

(assert (=> b!5324447 m!6358764))

(assert (=> b!5324447 m!6358758))

(assert (=> b!5324447 m!6358764))

(assert (=> b!5324447 m!6358758))

(declare-fun m!6358766 () Bool)

(assert (=> b!5324447 m!6358766))

(assert (=> b!5323686 d!1709978))

(declare-fun d!1709980 () Bool)

(assert (=> d!1709980 (= (matchR!7170 lt!2172700 s!2326) (matchRSpec!2088 lt!2172700 s!2326))))

(declare-fun lt!2172859 () Unit!153458)

(declare-fun choose!39867 (Regex!14985 List!61255) Unit!153458)

(assert (=> d!1709980 (= lt!2172859 (choose!39867 lt!2172700 s!2326))))

(assert (=> d!1709980 (validRegex!6721 lt!2172700)))

(assert (=> d!1709980 (= (mainMatchTheorem!2088 lt!2172700 s!2326) lt!2172859)))

(declare-fun bs!1233803 () Bool)

(assert (= bs!1233803 d!1709980))

(assert (=> bs!1233803 m!6358118))

(assert (=> bs!1233803 m!6358112))

(declare-fun m!6358768 () Bool)

(assert (=> bs!1233803 m!6358768))

(assert (=> bs!1233803 m!6358754))

(assert (=> b!5323686 d!1709980))

(declare-fun d!1709982 () Bool)

(declare-fun res!2258438 () Bool)

(declare-fun e!3307578 () Bool)

(assert (=> d!1709982 (=> res!2258438 e!3307578)))

(assert (=> d!1709982 (= res!2258438 ((_ is Nil!61130) lt!2172697))))

(assert (=> d!1709982 (= (forall!14403 lt!2172697 lambda!271673) e!3307578)))

(declare-fun b!5324452 () Bool)

(declare-fun e!3307579 () Bool)

(assert (=> b!5324452 (= e!3307578 e!3307579)))

(declare-fun res!2258439 () Bool)

(assert (=> b!5324452 (=> (not res!2258439) (not e!3307579))))

(declare-fun dynLambda!24169 (Int Regex!14985) Bool)

(assert (=> b!5324452 (= res!2258439 (dynLambda!24169 lambda!271673 (h!67578 lt!2172697)))))

(declare-fun b!5324453 () Bool)

(assert (=> b!5324453 (= e!3307579 (forall!14403 (t!374467 lt!2172697) lambda!271673))))

(assert (= (and d!1709982 (not res!2258438)) b!5324452))

(assert (= (and b!5324452 res!2258439) b!5324453))

(declare-fun b_lambda!204797 () Bool)

(assert (=> (not b_lambda!204797) (not b!5324452)))

(declare-fun m!6358770 () Bool)

(assert (=> b!5324452 m!6358770))

(declare-fun m!6358772 () Bool)

(assert (=> b!5324453 m!6358772))

(assert (=> b!5323686 d!1709982))

(declare-fun d!1709984 () Bool)

(declare-fun c!925597 () Bool)

(assert (=> d!1709984 (= c!925597 (isEmpty!33103 s!2326))))

(declare-fun e!3307580 () Bool)

(assert (=> d!1709984 (= (matchZipper!1229 lt!2172707 s!2326) e!3307580)))

(declare-fun b!5324454 () Bool)

(assert (=> b!5324454 (= e!3307580 (nullableZipper!1348 lt!2172707))))

(declare-fun b!5324455 () Bool)

(assert (=> b!5324455 (= e!3307580 (matchZipper!1229 (derivationStepZipper!1226 lt!2172707 (head!11414 s!2326)) (tail!10511 s!2326)))))

(assert (= (and d!1709984 c!925597) b!5324454))

(assert (= (and d!1709984 (not c!925597)) b!5324455))

(assert (=> d!1709984 m!6358744))

(declare-fun m!6358774 () Bool)

(assert (=> b!5324454 m!6358774))

(assert (=> b!5324455 m!6358756))

(assert (=> b!5324455 m!6358756))

(declare-fun m!6358776 () Bool)

(assert (=> b!5324455 m!6358776))

(assert (=> b!5324455 m!6358758))

(assert (=> b!5324455 m!6358776))

(assert (=> b!5324455 m!6358758))

(declare-fun m!6358778 () Bool)

(assert (=> b!5324455 m!6358778))

(assert (=> b!5323686 d!1709984))

(declare-fun bs!1233804 () Bool)

(declare-fun d!1709986 () Bool)

(assert (= bs!1233804 (and d!1709986 d!1709946)))

(declare-fun lambda!271762 () Int)

(assert (=> bs!1233804 (= lambda!271762 lambda!271746)))

(declare-fun bs!1233805 () Bool)

(assert (= bs!1233805 (and d!1709986 d!1709972)))

(assert (=> bs!1233805 (= lambda!271762 lambda!271755)))

(declare-fun bs!1233806 () Bool)

(assert (= bs!1233806 (and d!1709986 d!1709970)))

(assert (=> bs!1233806 (= lambda!271762 lambda!271752)))

(declare-fun bs!1233807 () Bool)

(assert (= bs!1233807 (and d!1709986 d!1709812)))

(assert (=> bs!1233807 (= lambda!271762 lambda!271706)))

(declare-fun bs!1233808 () Bool)

(assert (= bs!1233808 (and d!1709986 b!5323686)))

(assert (=> bs!1233808 (= lambda!271762 lambda!271673)))

(declare-fun b!5324456 () Bool)

(declare-fun e!3307584 () Bool)

(declare-fun lt!2172860 () Regex!14985)

(assert (=> b!5324456 (= e!3307584 (isConcat!405 lt!2172860))))

(declare-fun b!5324457 () Bool)

(assert (=> b!5324457 (= e!3307584 (= lt!2172860 (head!11413 lt!2172704)))))

(declare-fun b!5324458 () Bool)

(declare-fun e!3307585 () Bool)

(assert (=> b!5324458 (= e!3307585 (isEmpty!33099 (t!374467 lt!2172704)))))

(declare-fun b!5324459 () Bool)

(declare-fun e!3307582 () Bool)

(assert (=> b!5324459 (= e!3307582 (isEmptyExpr!882 lt!2172860))))

(declare-fun b!5324460 () Bool)

(declare-fun e!3307583 () Bool)

(assert (=> b!5324460 (= e!3307583 e!3307582)))

(declare-fun c!925600 () Bool)

(assert (=> b!5324460 (= c!925600 (isEmpty!33099 lt!2172704))))

(assert (=> d!1709986 e!3307583))

(declare-fun res!2258441 () Bool)

(assert (=> d!1709986 (=> (not res!2258441) (not e!3307583))))

(assert (=> d!1709986 (= res!2258441 (validRegex!6721 lt!2172860))))

(declare-fun e!3307586 () Regex!14985)

(assert (=> d!1709986 (= lt!2172860 e!3307586)))

(declare-fun c!925598 () Bool)

(assert (=> d!1709986 (= c!925598 e!3307585)))

(declare-fun res!2258440 () Bool)

(assert (=> d!1709986 (=> (not res!2258440) (not e!3307585))))

(assert (=> d!1709986 (= res!2258440 ((_ is Cons!61130) lt!2172704))))

(assert (=> d!1709986 (forall!14403 lt!2172704 lambda!271762)))

(assert (=> d!1709986 (= (generalisedConcat!654 lt!2172704) lt!2172860)))

(declare-fun b!5324461 () Bool)

(declare-fun e!3307581 () Regex!14985)

(assert (=> b!5324461 (= e!3307581 EmptyExpr!14985)))

(declare-fun b!5324462 () Bool)

(assert (=> b!5324462 (= e!3307586 e!3307581)))

(declare-fun c!925601 () Bool)

(assert (=> b!5324462 (= c!925601 ((_ is Cons!61130) lt!2172704))))

(declare-fun b!5324463 () Bool)

(assert (=> b!5324463 (= e!3307582 e!3307584)))

(declare-fun c!925599 () Bool)

(assert (=> b!5324463 (= c!925599 (isEmpty!33099 (tail!10510 lt!2172704)))))

(declare-fun b!5324464 () Bool)

(assert (=> b!5324464 (= e!3307581 (Concat!23830 (h!67578 lt!2172704) (generalisedConcat!654 (t!374467 lt!2172704))))))

(declare-fun b!5324465 () Bool)

(assert (=> b!5324465 (= e!3307586 (h!67578 lt!2172704))))

(assert (= (and d!1709986 res!2258440) b!5324458))

(assert (= (and d!1709986 c!925598) b!5324465))

(assert (= (and d!1709986 (not c!925598)) b!5324462))

(assert (= (and b!5324462 c!925601) b!5324464))

(assert (= (and b!5324462 (not c!925601)) b!5324461))

(assert (= (and d!1709986 res!2258441) b!5324460))

(assert (= (and b!5324460 c!925600) b!5324459))

(assert (= (and b!5324460 (not c!925600)) b!5324463))

(assert (= (and b!5324463 c!925599) b!5324457))

(assert (= (and b!5324463 (not c!925599)) b!5324456))

(declare-fun m!6358780 () Bool)

(assert (=> b!5324460 m!6358780))

(declare-fun m!6358782 () Bool)

(assert (=> b!5324458 m!6358782))

(declare-fun m!6358784 () Bool)

(assert (=> b!5324456 m!6358784))

(declare-fun m!6358786 () Bool)

(assert (=> d!1709986 m!6358786))

(declare-fun m!6358788 () Bool)

(assert (=> d!1709986 m!6358788))

(declare-fun m!6358790 () Bool)

(assert (=> b!5324464 m!6358790))

(declare-fun m!6358792 () Bool)

(assert (=> b!5324463 m!6358792))

(assert (=> b!5324463 m!6358792))

(declare-fun m!6358794 () Bool)

(assert (=> b!5324463 m!6358794))

(declare-fun m!6358796 () Bool)

(assert (=> b!5324457 m!6358796))

(declare-fun m!6358798 () Bool)

(assert (=> b!5324459 m!6358798))

(assert (=> b!5323686 d!1709986))

(declare-fun bs!1233809 () Bool)

(declare-fun b!5324469 () Bool)

(assert (= bs!1233809 (and b!5324469 d!1709938)))

(declare-fun lambda!271763 () Int)

(assert (=> bs!1233809 (not (= lambda!271763 lambda!271737))))

(declare-fun bs!1233810 () Bool)

(assert (= bs!1233810 (and b!5324469 b!5324398)))

(assert (=> bs!1233810 (= (and (= (reg!15314 r!7292) (reg!15314 lt!2172700)) (= r!7292 lt!2172700)) (= lambda!271763 lambda!271760))))

(declare-fun bs!1233811 () Bool)

(assert (= bs!1233811 (and b!5324469 b!5323677)))

(assert (=> bs!1233811 (not (= lambda!271763 lambda!271670))))

(declare-fun bs!1233812 () Bool)

(assert (= bs!1233812 (and b!5324469 d!1709942)))

(assert (=> bs!1233812 (not (= lambda!271763 lambda!271743))))

(assert (=> bs!1233811 (not (= lambda!271763 lambda!271671))))

(declare-fun bs!1233813 () Bool)

(assert (= bs!1233813 (and b!5324469 b!5324400)))

(assert (=> bs!1233813 (not (= lambda!271763 lambda!271761))))

(assert (=> bs!1233812 (not (= lambda!271763 lambda!271742))))

(assert (=> b!5324469 true))

(assert (=> b!5324469 true))

(declare-fun bs!1233814 () Bool)

(declare-fun b!5324471 () Bool)

(assert (= bs!1233814 (and b!5324471 d!1709938)))

(declare-fun lambda!271764 () Int)

(assert (=> bs!1233814 (not (= lambda!271764 lambda!271737))))

(declare-fun bs!1233815 () Bool)

(assert (= bs!1233815 (and b!5324471 b!5324398)))

(assert (=> bs!1233815 (not (= lambda!271764 lambda!271760))))

(declare-fun bs!1233816 () Bool)

(assert (= bs!1233816 (and b!5324471 b!5324469)))

(assert (=> bs!1233816 (not (= lambda!271764 lambda!271763))))

(declare-fun bs!1233817 () Bool)

(assert (= bs!1233817 (and b!5324471 b!5323677)))

(assert (=> bs!1233817 (not (= lambda!271764 lambda!271670))))

(declare-fun bs!1233818 () Bool)

(assert (= bs!1233818 (and b!5324471 d!1709942)))

(assert (=> bs!1233818 (= lambda!271764 lambda!271743)))

(assert (=> bs!1233817 (= lambda!271764 lambda!271671)))

(declare-fun bs!1233819 () Bool)

(assert (= bs!1233819 (and b!5324471 b!5324400)))

(assert (=> bs!1233819 (= (and (= (regOne!30482 r!7292) (regOne!30482 lt!2172700)) (= (regTwo!30482 r!7292) (regTwo!30482 lt!2172700))) (= lambda!271764 lambda!271761))))

(assert (=> bs!1233818 (not (= lambda!271764 lambda!271742))))

(assert (=> b!5324471 true))

(assert (=> b!5324471 true))

(declare-fun b!5324466 () Bool)

(declare-fun e!3307588 () Bool)

(declare-fun e!3307591 () Bool)

(assert (=> b!5324466 (= e!3307588 e!3307591)))

(declare-fun c!925605 () Bool)

(assert (=> b!5324466 (= c!925605 ((_ is Star!14985) r!7292))))

(declare-fun b!5324467 () Bool)

(declare-fun e!3307593 () Bool)

(assert (=> b!5324467 (= e!3307593 (= s!2326 (Cons!61131 (c!925355 r!7292) Nil!61131)))))

(declare-fun b!5324468 () Bool)

(declare-fun e!3307590 () Bool)

(declare-fun call!380250 () Bool)

(assert (=> b!5324468 (= e!3307590 call!380250)))

(declare-fun e!3307589 () Bool)

(declare-fun call!380249 () Bool)

(assert (=> b!5324469 (= e!3307589 call!380249)))

(declare-fun b!5324470 () Bool)

(declare-fun res!2258444 () Bool)

(assert (=> b!5324470 (=> res!2258444 e!3307589)))

(assert (=> b!5324470 (= res!2258444 call!380250)))

(assert (=> b!5324470 (= e!3307591 e!3307589)))

(assert (=> b!5324471 (= e!3307591 call!380249)))

(declare-fun d!1709988 () Bool)

(declare-fun c!925602 () Bool)

(assert (=> d!1709988 (= c!925602 ((_ is EmptyExpr!14985) r!7292))))

(assert (=> d!1709988 (= (matchRSpec!2088 r!7292 s!2326) e!3307590)))

(declare-fun bm!380244 () Bool)

(assert (=> bm!380244 (= call!380250 (isEmpty!33103 s!2326))))

(declare-fun b!5324472 () Bool)

(declare-fun e!3307592 () Bool)

(assert (=> b!5324472 (= e!3307588 e!3307592)))

(declare-fun res!2258443 () Bool)

(assert (=> b!5324472 (= res!2258443 (matchRSpec!2088 (regOne!30483 r!7292) s!2326))))

(assert (=> b!5324472 (=> res!2258443 e!3307592)))

(declare-fun b!5324473 () Bool)

(declare-fun c!925604 () Bool)

(assert (=> b!5324473 (= c!925604 ((_ is Union!14985) r!7292))))

(assert (=> b!5324473 (= e!3307593 e!3307588)))

(declare-fun b!5324474 () Bool)

(declare-fun e!3307587 () Bool)

(assert (=> b!5324474 (= e!3307590 e!3307587)))

(declare-fun res!2258442 () Bool)

(assert (=> b!5324474 (= res!2258442 (not ((_ is EmptyLang!14985) r!7292)))))

(assert (=> b!5324474 (=> (not res!2258442) (not e!3307587))))

(declare-fun bm!380245 () Bool)

(assert (=> bm!380245 (= call!380249 (Exists!2166 (ite c!925605 lambda!271763 lambda!271764)))))

(declare-fun b!5324475 () Bool)

(declare-fun c!925603 () Bool)

(assert (=> b!5324475 (= c!925603 ((_ is ElementMatch!14985) r!7292))))

(assert (=> b!5324475 (= e!3307587 e!3307593)))

(declare-fun b!5324476 () Bool)

(assert (=> b!5324476 (= e!3307592 (matchRSpec!2088 (regTwo!30483 r!7292) s!2326))))

(assert (= (and d!1709988 c!925602) b!5324468))

(assert (= (and d!1709988 (not c!925602)) b!5324474))

(assert (= (and b!5324474 res!2258442) b!5324475))

(assert (= (and b!5324475 c!925603) b!5324467))

(assert (= (and b!5324475 (not c!925603)) b!5324473))

(assert (= (and b!5324473 c!925604) b!5324472))

(assert (= (and b!5324473 (not c!925604)) b!5324466))

(assert (= (and b!5324472 (not res!2258443)) b!5324476))

(assert (= (and b!5324466 c!925605) b!5324470))

(assert (= (and b!5324466 (not c!925605)) b!5324471))

(assert (= (and b!5324470 (not res!2258444)) b!5324469))

(assert (= (or b!5324469 b!5324471) bm!380245))

(assert (= (or b!5324468 b!5324470) bm!380244))

(assert (=> bm!380244 m!6358744))

(declare-fun m!6358800 () Bool)

(assert (=> b!5324472 m!6358800))

(declare-fun m!6358802 () Bool)

(assert (=> bm!380245 m!6358802))

(declare-fun m!6358804 () Bool)

(assert (=> b!5324476 m!6358804))

(assert (=> b!5323687 d!1709988))

(declare-fun b!5324478 () Bool)

(declare-fun e!3307595 () Bool)

(assert (=> b!5324478 (= e!3307595 (nullable!5154 r!7292))))

(declare-fun b!5324479 () Bool)

(declare-fun e!3307596 () Bool)

(assert (=> b!5324479 (= e!3307596 (not (= (head!11414 s!2326) (c!925355 r!7292))))))

(declare-fun b!5324480 () Bool)

(declare-fun e!3307600 () Bool)

(declare-fun lt!2172861 () Bool)

(assert (=> b!5324480 (= e!3307600 (not lt!2172861))))

(declare-fun b!5324481 () Bool)

(declare-fun e!3307598 () Bool)

(declare-fun e!3307594 () Bool)

(assert (=> b!5324481 (= e!3307598 e!3307594)))

(declare-fun res!2258450 () Bool)

(assert (=> b!5324481 (=> (not res!2258450) (not e!3307594))))

(assert (=> b!5324481 (= res!2258450 (not lt!2172861))))

(declare-fun b!5324482 () Bool)

(declare-fun res!2258449 () Bool)

(declare-fun e!3307597 () Bool)

(assert (=> b!5324482 (=> (not res!2258449) (not e!3307597))))

(assert (=> b!5324482 (= res!2258449 (isEmpty!33103 (tail!10511 s!2326)))))

(declare-fun b!5324483 () Bool)

(declare-fun res!2258451 () Bool)

(assert (=> b!5324483 (=> res!2258451 e!3307598)))

(assert (=> b!5324483 (= res!2258451 (not ((_ is ElementMatch!14985) r!7292)))))

(assert (=> b!5324483 (= e!3307600 e!3307598)))

(declare-fun b!5324484 () Bool)

(assert (=> b!5324484 (= e!3307597 (= (head!11414 s!2326) (c!925355 r!7292)))))

(declare-fun b!5324485 () Bool)

(assert (=> b!5324485 (= e!3307594 e!3307596)))

(declare-fun res!2258452 () Bool)

(assert (=> b!5324485 (=> res!2258452 e!3307596)))

(declare-fun call!380251 () Bool)

(assert (=> b!5324485 (= res!2258452 call!380251)))

(declare-fun bm!380246 () Bool)

(assert (=> bm!380246 (= call!380251 (isEmpty!33103 s!2326))))

(declare-fun b!5324486 () Bool)

(declare-fun res!2258447 () Bool)

(assert (=> b!5324486 (=> res!2258447 e!3307596)))

(assert (=> b!5324486 (= res!2258447 (not (isEmpty!33103 (tail!10511 s!2326))))))

(declare-fun d!1709990 () Bool)

(declare-fun e!3307599 () Bool)

(assert (=> d!1709990 e!3307599))

(declare-fun c!925608 () Bool)

(assert (=> d!1709990 (= c!925608 ((_ is EmptyExpr!14985) r!7292))))

(assert (=> d!1709990 (= lt!2172861 e!3307595)))

(declare-fun c!925607 () Bool)

(assert (=> d!1709990 (= c!925607 (isEmpty!33103 s!2326))))

(assert (=> d!1709990 (validRegex!6721 r!7292)))

(assert (=> d!1709990 (= (matchR!7170 r!7292 s!2326) lt!2172861)))

(declare-fun b!5324477 () Bool)

(declare-fun res!2258448 () Bool)

(assert (=> b!5324477 (=> (not res!2258448) (not e!3307597))))

(assert (=> b!5324477 (= res!2258448 (not call!380251))))

(declare-fun b!5324487 () Bool)

(assert (=> b!5324487 (= e!3307599 e!3307600)))

(declare-fun c!925606 () Bool)

(assert (=> b!5324487 (= c!925606 ((_ is EmptyLang!14985) r!7292))))

(declare-fun b!5324488 () Bool)

(assert (=> b!5324488 (= e!3307599 (= lt!2172861 call!380251))))

(declare-fun b!5324489 () Bool)

(declare-fun res!2258446 () Bool)

(assert (=> b!5324489 (=> res!2258446 e!3307598)))

(assert (=> b!5324489 (= res!2258446 e!3307597)))

(declare-fun res!2258445 () Bool)

(assert (=> b!5324489 (=> (not res!2258445) (not e!3307597))))

(assert (=> b!5324489 (= res!2258445 lt!2172861)))

(declare-fun b!5324490 () Bool)

(assert (=> b!5324490 (= e!3307595 (matchR!7170 (derivativeStep!4169 r!7292 (head!11414 s!2326)) (tail!10511 s!2326)))))

(assert (= (and d!1709990 c!925607) b!5324478))

(assert (= (and d!1709990 (not c!925607)) b!5324490))

(assert (= (and d!1709990 c!925608) b!5324488))

(assert (= (and d!1709990 (not c!925608)) b!5324487))

(assert (= (and b!5324487 c!925606) b!5324480))

(assert (= (and b!5324487 (not c!925606)) b!5324483))

(assert (= (and b!5324483 (not res!2258451)) b!5324489))

(assert (= (and b!5324489 res!2258445) b!5324477))

(assert (= (and b!5324477 res!2258448) b!5324482))

(assert (= (and b!5324482 res!2258449) b!5324484))

(assert (= (and b!5324489 (not res!2258446)) b!5324481))

(assert (= (and b!5324481 res!2258450) b!5324485))

(assert (= (and b!5324485 (not res!2258452)) b!5324486))

(assert (= (and b!5324486 (not res!2258447)) b!5324479))

(assert (= (or b!5324488 b!5324477 b!5324485) bm!380246))

(assert (=> bm!380246 m!6358744))

(assert (=> b!5324479 m!6358756))

(assert (=> d!1709990 m!6358744))

(assert (=> d!1709990 m!6358204))

(assert (=> b!5324484 m!6358756))

(assert (=> b!5324482 m!6358758))

(assert (=> b!5324482 m!6358758))

(assert (=> b!5324482 m!6358760))

(declare-fun m!6358806 () Bool)

(assert (=> b!5324478 m!6358806))

(assert (=> b!5324486 m!6358758))

(assert (=> b!5324486 m!6358758))

(assert (=> b!5324486 m!6358760))

(assert (=> b!5324490 m!6358756))

(assert (=> b!5324490 m!6358756))

(declare-fun m!6358808 () Bool)

(assert (=> b!5324490 m!6358808))

(assert (=> b!5324490 m!6358758))

(assert (=> b!5324490 m!6358808))

(assert (=> b!5324490 m!6358758))

(declare-fun m!6358810 () Bool)

(assert (=> b!5324490 m!6358810))

(assert (=> b!5323687 d!1709990))

(declare-fun d!1709992 () Bool)

(assert (=> d!1709992 (= (matchR!7170 r!7292 s!2326) (matchRSpec!2088 r!7292 s!2326))))

(declare-fun lt!2172862 () Unit!153458)

(assert (=> d!1709992 (= lt!2172862 (choose!39867 r!7292 s!2326))))

(assert (=> d!1709992 (validRegex!6721 r!7292)))

(assert (=> d!1709992 (= (mainMatchTheorem!2088 r!7292 s!2326) lt!2172862)))

(declare-fun bs!1233820 () Bool)

(assert (= bs!1233820 d!1709992))

(assert (=> bs!1233820 m!6358162))

(assert (=> bs!1233820 m!6358160))

(declare-fun m!6358812 () Bool)

(assert (=> bs!1233820 m!6358812))

(assert (=> bs!1233820 m!6358204))

(assert (=> b!5323687 d!1709992))

(declare-fun d!1709994 () Bool)

(declare-fun lt!2172865 () Int)

(assert (=> d!1709994 (>= lt!2172865 0)))

(declare-fun e!3307603 () Int)

(assert (=> d!1709994 (= lt!2172865 e!3307603)))

(declare-fun c!925612 () Bool)

(assert (=> d!1709994 (= c!925612 ((_ is Cons!61130) (exprs!4869 lt!2172701)))))

(assert (=> d!1709994 (= (contextDepthTotal!118 lt!2172701) lt!2172865)))

(declare-fun b!5324495 () Bool)

(declare-fun regexDepthTotal!53 (Regex!14985) Int)

(assert (=> b!5324495 (= e!3307603 (+ (regexDepthTotal!53 (h!67578 (exprs!4869 lt!2172701))) (contextDepthTotal!118 (Context!8739 (t!374467 (exprs!4869 lt!2172701))))))))

(declare-fun b!5324496 () Bool)

(assert (=> b!5324496 (= e!3307603 1)))

(assert (= (and d!1709994 c!925612) b!5324495))

(assert (= (and d!1709994 (not c!925612)) b!5324496))

(declare-fun m!6358814 () Bool)

(assert (=> b!5324495 m!6358814))

(declare-fun m!6358816 () Bool)

(assert (=> b!5324495 m!6358816))

(assert (=> b!5323688 d!1709994))

(declare-fun d!1709996 () Bool)

(declare-fun lt!2172866 () Int)

(assert (=> d!1709996 (>= lt!2172866 0)))

(declare-fun e!3307604 () Int)

(assert (=> d!1709996 (= lt!2172866 e!3307604)))

(declare-fun c!925613 () Bool)

(assert (=> d!1709996 (= c!925613 ((_ is Cons!61130) (exprs!4869 (h!67580 zl!343))))))

(assert (=> d!1709996 (= (contextDepthTotal!118 (h!67580 zl!343)) lt!2172866)))

(declare-fun b!5324497 () Bool)

(assert (=> b!5324497 (= e!3307604 (+ (regexDepthTotal!53 (h!67578 (exprs!4869 (h!67580 zl!343)))) (contextDepthTotal!118 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343)))))))))

(declare-fun b!5324498 () Bool)

(assert (=> b!5324498 (= e!3307604 1)))

(assert (= (and d!1709996 c!925613) b!5324497))

(assert (= (and d!1709996 (not c!925613)) b!5324498))

(declare-fun m!6358818 () Bool)

(assert (=> b!5324497 m!6358818))

(declare-fun m!6358820 () Bool)

(assert (=> b!5324497 m!6358820))

(assert (=> b!5323688 d!1709996))

(declare-fun bs!1233821 () Bool)

(declare-fun d!1709998 () Bool)

(assert (= bs!1233821 (and d!1709998 d!1709946)))

(declare-fun lambda!271765 () Int)

(assert (=> bs!1233821 (= lambda!271765 lambda!271746)))

(declare-fun bs!1233822 () Bool)

(assert (= bs!1233822 (and d!1709998 d!1709972)))

(assert (=> bs!1233822 (= lambda!271765 lambda!271755)))

(declare-fun bs!1233823 () Bool)

(assert (= bs!1233823 (and d!1709998 d!1709970)))

(assert (=> bs!1233823 (= lambda!271765 lambda!271752)))

(declare-fun bs!1233824 () Bool)

(assert (= bs!1233824 (and d!1709998 d!1709986)))

(assert (=> bs!1233824 (= lambda!271765 lambda!271762)))

(declare-fun bs!1233825 () Bool)

(assert (= bs!1233825 (and d!1709998 d!1709812)))

(assert (=> bs!1233825 (= lambda!271765 lambda!271706)))

(declare-fun bs!1233826 () Bool)

(assert (= bs!1233826 (and d!1709998 b!5323686)))

(assert (=> bs!1233826 (= lambda!271765 lambda!271673)))

(assert (=> d!1709998 (= (inv!80709 setElem!34289) (forall!14403 (exprs!4869 setElem!34289) lambda!271765))))

(declare-fun bs!1233827 () Bool)

(assert (= bs!1233827 d!1709998))

(declare-fun m!6358822 () Bool)

(assert (=> bs!1233827 m!6358822))

(assert (=> setNonEmpty!34289 d!1709998))

(declare-fun b!5324517 () Bool)

(declare-fun e!3307622 () Bool)

(declare-fun call!380258 () Bool)

(assert (=> b!5324517 (= e!3307622 call!380258)))

(declare-fun b!5324518 () Bool)

(declare-fun e!3307620 () Bool)

(declare-fun e!3307619 () Bool)

(assert (=> b!5324518 (= e!3307620 e!3307619)))

(declare-fun res!2258467 () Bool)

(assert (=> b!5324518 (=> (not res!2258467) (not e!3307619))))

(declare-fun call!380260 () Bool)

(assert (=> b!5324518 (= res!2258467 call!380260)))

(declare-fun b!5324519 () Bool)

(declare-fun res!2258465 () Bool)

(assert (=> b!5324519 (=> res!2258465 e!3307620)))

(assert (=> b!5324519 (= res!2258465 (not ((_ is Concat!23830) r!7292)))))

(declare-fun e!3307624 () Bool)

(assert (=> b!5324519 (= e!3307624 e!3307620)))

(declare-fun bm!380253 () Bool)

(declare-fun c!925618 () Bool)

(declare-fun c!925619 () Bool)

(assert (=> bm!380253 (= call!380258 (validRegex!6721 (ite c!925619 (reg!15314 r!7292) (ite c!925618 (regTwo!30483 r!7292) (regTwo!30482 r!7292)))))))

(declare-fun b!5324520 () Bool)

(declare-fun e!3307623 () Bool)

(assert (=> b!5324520 (= e!3307623 e!3307624)))

(assert (=> b!5324520 (= c!925618 ((_ is Union!14985) r!7292))))

(declare-fun d!1710000 () Bool)

(declare-fun res!2258464 () Bool)

(declare-fun e!3307621 () Bool)

(assert (=> d!1710000 (=> res!2258464 e!3307621)))

(assert (=> d!1710000 (= res!2258464 ((_ is ElementMatch!14985) r!7292))))

(assert (=> d!1710000 (= (validRegex!6721 r!7292) e!3307621)))

(declare-fun b!5324521 () Bool)

(declare-fun res!2258466 () Bool)

(declare-fun e!3307625 () Bool)

(assert (=> b!5324521 (=> (not res!2258466) (not e!3307625))))

(assert (=> b!5324521 (= res!2258466 call!380260)))

(assert (=> b!5324521 (= e!3307624 e!3307625)))

(declare-fun bm!380254 () Bool)

(assert (=> bm!380254 (= call!380260 (validRegex!6721 (ite c!925618 (regOne!30483 r!7292) (regOne!30482 r!7292))))))

(declare-fun b!5324522 () Bool)

(declare-fun call!380259 () Bool)

(assert (=> b!5324522 (= e!3307625 call!380259)))

(declare-fun b!5324523 () Bool)

(assert (=> b!5324523 (= e!3307619 call!380259)))

(declare-fun b!5324524 () Bool)

(assert (=> b!5324524 (= e!3307623 e!3307622)))

(declare-fun res!2258463 () Bool)

(assert (=> b!5324524 (= res!2258463 (not (nullable!5154 (reg!15314 r!7292))))))

(assert (=> b!5324524 (=> (not res!2258463) (not e!3307622))))

(declare-fun bm!380255 () Bool)

(assert (=> bm!380255 (= call!380259 call!380258)))

(declare-fun b!5324525 () Bool)

(assert (=> b!5324525 (= e!3307621 e!3307623)))

(assert (=> b!5324525 (= c!925619 ((_ is Star!14985) r!7292))))

(assert (= (and d!1710000 (not res!2258464)) b!5324525))

(assert (= (and b!5324525 c!925619) b!5324524))

(assert (= (and b!5324525 (not c!925619)) b!5324520))

(assert (= (and b!5324524 res!2258463) b!5324517))

(assert (= (and b!5324520 c!925618) b!5324521))

(assert (= (and b!5324520 (not c!925618)) b!5324519))

(assert (= (and b!5324521 res!2258466) b!5324522))

(assert (= (and b!5324519 (not res!2258465)) b!5324518))

(assert (= (and b!5324518 res!2258467) b!5324523))

(assert (= (or b!5324522 b!5324523) bm!380255))

(assert (= (or b!5324521 b!5324518) bm!380254))

(assert (= (or b!5324517 bm!380255) bm!380253))

(declare-fun m!6358824 () Bool)

(assert (=> bm!380253 m!6358824))

(declare-fun m!6358826 () Bool)

(assert (=> bm!380254 m!6358826))

(declare-fun m!6358828 () Bool)

(assert (=> b!5324524 m!6358828))

(assert (=> start!561206 d!1710000))

(declare-fun b!5324530 () Bool)

(declare-fun e!3307628 () Bool)

(declare-fun tp!1482340 () Bool)

(declare-fun tp!1482341 () Bool)

(assert (=> b!5324530 (= e!3307628 (and tp!1482340 tp!1482341))))

(assert (=> b!5323660 (= tp!1482268 e!3307628)))

(assert (= (and b!5323660 ((_ is Cons!61130) (exprs!4869 setElem!34289))) b!5324530))

(declare-fun b!5324543 () Bool)

(declare-fun e!3307631 () Bool)

(declare-fun tp!1482355 () Bool)

(assert (=> b!5324543 (= e!3307631 tp!1482355)))

(assert (=> b!5323690 (= tp!1482275 e!3307631)))

(declare-fun b!5324542 () Bool)

(declare-fun tp!1482356 () Bool)

(declare-fun tp!1482354 () Bool)

(assert (=> b!5324542 (= e!3307631 (and tp!1482356 tp!1482354))))

(declare-fun b!5324541 () Bool)

(assert (=> b!5324541 (= e!3307631 tp_is_empty!39223)))

(declare-fun b!5324544 () Bool)

(declare-fun tp!1482352 () Bool)

(declare-fun tp!1482353 () Bool)

(assert (=> b!5324544 (= e!3307631 (and tp!1482352 tp!1482353))))

(assert (= (and b!5323690 ((_ is ElementMatch!14985) (regOne!30483 r!7292))) b!5324541))

(assert (= (and b!5323690 ((_ is Concat!23830) (regOne!30483 r!7292))) b!5324542))

(assert (= (and b!5323690 ((_ is Star!14985) (regOne!30483 r!7292))) b!5324543))

(assert (= (and b!5323690 ((_ is Union!14985) (regOne!30483 r!7292))) b!5324544))

(declare-fun b!5324547 () Bool)

(declare-fun e!3307632 () Bool)

(declare-fun tp!1482360 () Bool)

(assert (=> b!5324547 (= e!3307632 tp!1482360)))

(assert (=> b!5323690 (= tp!1482276 e!3307632)))

(declare-fun b!5324546 () Bool)

(declare-fun tp!1482361 () Bool)

(declare-fun tp!1482359 () Bool)

(assert (=> b!5324546 (= e!3307632 (and tp!1482361 tp!1482359))))

(declare-fun b!5324545 () Bool)

(assert (=> b!5324545 (= e!3307632 tp_is_empty!39223)))

(declare-fun b!5324548 () Bool)

(declare-fun tp!1482357 () Bool)

(declare-fun tp!1482358 () Bool)

(assert (=> b!5324548 (= e!3307632 (and tp!1482357 tp!1482358))))

(assert (= (and b!5323690 ((_ is ElementMatch!14985) (regTwo!30483 r!7292))) b!5324545))

(assert (= (and b!5323690 ((_ is Concat!23830) (regTwo!30483 r!7292))) b!5324546))

(assert (= (and b!5323690 ((_ is Star!14985) (regTwo!30483 r!7292))) b!5324547))

(assert (= (and b!5323690 ((_ is Union!14985) (regTwo!30483 r!7292))) b!5324548))

(declare-fun b!5324549 () Bool)

(declare-fun e!3307633 () Bool)

(declare-fun tp!1482362 () Bool)

(declare-fun tp!1482363 () Bool)

(assert (=> b!5324549 (= e!3307633 (and tp!1482362 tp!1482363))))

(assert (=> b!5323669 (= tp!1482272 e!3307633)))

(assert (= (and b!5323669 ((_ is Cons!61130) (exprs!4869 (h!67580 zl!343)))) b!5324549))

(declare-fun b!5324554 () Bool)

(declare-fun e!3307636 () Bool)

(declare-fun tp!1482366 () Bool)

(assert (=> b!5324554 (= e!3307636 (and tp_is_empty!39223 tp!1482366))))

(assert (=> b!5323682 (= tp!1482277 e!3307636)))

(assert (= (and b!5323682 ((_ is Cons!61131) (t!374468 s!2326))) b!5324554))

(declare-fun condSetEmpty!34295 () Bool)

(assert (=> setNonEmpty!34289 (= condSetEmpty!34295 (= setRest!34289 ((as const (Array Context!8738 Bool)) false)))))

(declare-fun setRes!34295 () Bool)

(assert (=> setNonEmpty!34289 (= tp!1482270 setRes!34295)))

(declare-fun setIsEmpty!34295 () Bool)

(assert (=> setIsEmpty!34295 setRes!34295))

(declare-fun e!3307639 () Bool)

(declare-fun tp!1482371 () Bool)

(declare-fun setNonEmpty!34295 () Bool)

(declare-fun setElem!34295 () Context!8738)

(assert (=> setNonEmpty!34295 (= setRes!34295 (and tp!1482371 (inv!80709 setElem!34295) e!3307639))))

(declare-fun setRest!34295 () (InoxSet Context!8738))

(assert (=> setNonEmpty!34295 (= setRest!34289 ((_ map or) (store ((as const (Array Context!8738 Bool)) false) setElem!34295 true) setRest!34295))))

(declare-fun b!5324559 () Bool)

(declare-fun tp!1482372 () Bool)

(assert (=> b!5324559 (= e!3307639 tp!1482372)))

(assert (= (and setNonEmpty!34289 condSetEmpty!34295) setIsEmpty!34295))

(assert (= (and setNonEmpty!34289 (not condSetEmpty!34295)) setNonEmpty!34295))

(assert (= setNonEmpty!34295 b!5324559))

(declare-fun m!6358830 () Bool)

(assert (=> setNonEmpty!34295 m!6358830))

(declare-fun b!5324562 () Bool)

(declare-fun e!3307640 () Bool)

(declare-fun tp!1482376 () Bool)

(assert (=> b!5324562 (= e!3307640 tp!1482376)))

(assert (=> b!5323683 (= tp!1482274 e!3307640)))

(declare-fun b!5324561 () Bool)

(declare-fun tp!1482377 () Bool)

(declare-fun tp!1482375 () Bool)

(assert (=> b!5324561 (= e!3307640 (and tp!1482377 tp!1482375))))

(declare-fun b!5324560 () Bool)

(assert (=> b!5324560 (= e!3307640 tp_is_empty!39223)))

(declare-fun b!5324563 () Bool)

(declare-fun tp!1482373 () Bool)

(declare-fun tp!1482374 () Bool)

(assert (=> b!5324563 (= e!3307640 (and tp!1482373 tp!1482374))))

(assert (= (and b!5323683 ((_ is ElementMatch!14985) (reg!15314 r!7292))) b!5324560))

(assert (= (and b!5323683 ((_ is Concat!23830) (reg!15314 r!7292))) b!5324561))

(assert (= (and b!5323683 ((_ is Star!14985) (reg!15314 r!7292))) b!5324562))

(assert (= (and b!5323683 ((_ is Union!14985) (reg!15314 r!7292))) b!5324563))

(declare-fun b!5324571 () Bool)

(declare-fun e!3307646 () Bool)

(declare-fun tp!1482382 () Bool)

(assert (=> b!5324571 (= e!3307646 tp!1482382)))

(declare-fun b!5324570 () Bool)

(declare-fun tp!1482383 () Bool)

(declare-fun e!3307645 () Bool)

(assert (=> b!5324570 (= e!3307645 (and (inv!80709 (h!67580 (t!374469 zl!343))) e!3307646 tp!1482383))))

(assert (=> b!5323678 (= tp!1482269 e!3307645)))

(assert (= b!5324570 b!5324571))

(assert (= (and b!5323678 ((_ is Cons!61132) (t!374469 zl!343))) b!5324570))

(declare-fun m!6358832 () Bool)

(assert (=> b!5324570 m!6358832))

(declare-fun b!5324574 () Bool)

(declare-fun e!3307647 () Bool)

(declare-fun tp!1482387 () Bool)

(assert (=> b!5324574 (= e!3307647 tp!1482387)))

(assert (=> b!5323673 (= tp!1482273 e!3307647)))

(declare-fun b!5324573 () Bool)

(declare-fun tp!1482388 () Bool)

(declare-fun tp!1482386 () Bool)

(assert (=> b!5324573 (= e!3307647 (and tp!1482388 tp!1482386))))

(declare-fun b!5324572 () Bool)

(assert (=> b!5324572 (= e!3307647 tp_is_empty!39223)))

(declare-fun b!5324575 () Bool)

(declare-fun tp!1482384 () Bool)

(declare-fun tp!1482385 () Bool)

(assert (=> b!5324575 (= e!3307647 (and tp!1482384 tp!1482385))))

(assert (= (and b!5323673 ((_ is ElementMatch!14985) (regOne!30482 r!7292))) b!5324572))

(assert (= (and b!5323673 ((_ is Concat!23830) (regOne!30482 r!7292))) b!5324573))

(assert (= (and b!5323673 ((_ is Star!14985) (regOne!30482 r!7292))) b!5324574))

(assert (= (and b!5323673 ((_ is Union!14985) (regOne!30482 r!7292))) b!5324575))

(declare-fun b!5324578 () Bool)

(declare-fun e!3307648 () Bool)

(declare-fun tp!1482392 () Bool)

(assert (=> b!5324578 (= e!3307648 tp!1482392)))

(assert (=> b!5323673 (= tp!1482271 e!3307648)))

(declare-fun b!5324577 () Bool)

(declare-fun tp!1482393 () Bool)

(declare-fun tp!1482391 () Bool)

(assert (=> b!5324577 (= e!3307648 (and tp!1482393 tp!1482391))))

(declare-fun b!5324576 () Bool)

(assert (=> b!5324576 (= e!3307648 tp_is_empty!39223)))

(declare-fun b!5324579 () Bool)

(declare-fun tp!1482389 () Bool)

(declare-fun tp!1482390 () Bool)

(assert (=> b!5324579 (= e!3307648 (and tp!1482389 tp!1482390))))

(assert (= (and b!5323673 ((_ is ElementMatch!14985) (regTwo!30482 r!7292))) b!5324576))

(assert (= (and b!5323673 ((_ is Concat!23830) (regTwo!30482 r!7292))) b!5324577))

(assert (= (and b!5323673 ((_ is Star!14985) (regTwo!30482 r!7292))) b!5324578))

(assert (= (and b!5323673 ((_ is Union!14985) (regTwo!30482 r!7292))) b!5324579))

(declare-fun b_lambda!204799 () Bool)

(assert (= b_lambda!204795 (or b!5323675 b_lambda!204799)))

(declare-fun bs!1233828 () Bool)

(declare-fun d!1710002 () Bool)

(assert (= bs!1233828 (and d!1710002 b!5323675)))

(assert (=> bs!1233828 (= (dynLambda!24167 lambda!271672 lt!2172701) (derivationStepZipperUp!357 lt!2172701 (h!67579 s!2326)))))

(assert (=> bs!1233828 m!6358120))

(assert (=> d!1709958 d!1710002))

(declare-fun b_lambda!204801 () Bool)

(assert (= b_lambda!204787 (or b!5323675 b_lambda!204801)))

(declare-fun bs!1233829 () Bool)

(declare-fun d!1710004 () Bool)

(assert (= bs!1233829 (and d!1710004 b!5323675)))

(assert (=> bs!1233829 (= (dynLambda!24167 lambda!271672 (h!67580 zl!343)) (derivationStepZipperUp!357 (h!67580 zl!343) (h!67579 s!2326)))))

(assert (=> bs!1233829 m!6358170))

(assert (=> d!1709902 d!1710004))

(declare-fun b_lambda!204803 () Bool)

(assert (= b_lambda!204797 (or b!5323686 b_lambda!204803)))

(declare-fun bs!1233830 () Bool)

(declare-fun d!1710006 () Bool)

(assert (= bs!1233830 (and d!1710006 b!5323686)))

(assert (=> bs!1233830 (= (dynLambda!24169 lambda!271673 (h!67578 lt!2172697)) (validRegex!6721 (h!67578 lt!2172697)))))

(declare-fun m!6358834 () Bool)

(assert (=> bs!1233830 m!6358834))

(assert (=> b!5324452 d!1710006))

(check-sat (not b_lambda!204803) (not bm!380244) (not d!1709986) (not b!5323894) (not bm!380225) (not b!5324548) (not b!5324174) (not b!5324524) (not b!5324351) (not b!5324347) (not d!1709970) (not b!5323861) (not bm!380219) (not b!5324039) (not b!5324258) (not d!1709980) (not bm!380239) (not bm!380253) (not b!5324579) (not b!5324263) tp_is_empty!39223 (not b!5324457) (not d!1709990) (not setNonEmpty!34295) (not d!1709992) (not b!5324361) (not d!1709954) (not b!5324441) (not d!1709942) (not b!5324574) (not b!5323978) (not b!5324575) (not b!5324484) (not b!5324577) (not d!1709822) (not b!5324268) (not d!1709914) (not b!5323860) (not b!5324349) (not b_lambda!204801) (not d!1709978) (not b!5324405) (not bm!380254) (not b!5324547) (not b!5324563) (not b!5324311) (not b!5324463) (not b!5324472) (not b!5324478) (not bm!380240) (not d!1709962) (not b!5324544) (not b!5324482) (not b!5324355) (not b!5324436) (not b!5324454) (not b!5324132) (not b!5324497) (not d!1709998) (not b!5324267) (not bm!380245) (not b!5324036) (not d!1709984) (not b!5324530) (not b!5323976) (not b!5324554) (not b!5324292) (not b!5324262) (not b!5323862) (not b!5323865) (not b!5324316) (not d!1709938) (not b!5324486) (not b!5323994) (not b!5324578) (not b!5324310) (not b!5324546) (not d!1709958) (not b!5324323) (not d!1709960) (not b!5324352) (not bm!380218) (not b!5324040) (not d!1709902) (not bm!380246) (not d!1709944) (not b!5324495) (not b!5324549) (not b!5324297) (not d!1709936) (not b!5324490) (not bs!1233828) (not d!1709946) (not b!5323895) (not bm!380231) (not d!1709950) (not b!5324476) (not b!5324459) (not bm!380232) (not b!5324294) (not b!5324289) (not bm!380243) (not b!5324571) (not b!5324037) (not b!5324270) (not b!5324038) (not b!5323858) (not bm!380224) (not b!5324573) (not b!5324269) (not b!5324348) (not b!5324559) (not b!5324257) (not b!5324543) (not b!5324479) (not d!1709934) (not b!5324456) (not d!1709972) (not b!5324443) (not b_lambda!204799) (not bm!380233) (not d!1709932) (not b!5324542) (not b!5324453) (not b!5324401) (not d!1709940) (not b!5324562) (not d!1709860) (not d!1709906) (not d!1709976) (not bm!380228) (not b!5324447) (not b!5324043) (not b!5324291) (not b!5324325) (not d!1709880) (not d!1709882) (not b!5324570) (not b!5324290) (not b!5324455) (not b!5324439) (not b!5324460) (not d!1709812) (not b!5323859) (not b!5323992) (not b!5324350) (not d!1709948) (not b!5323866) (not b!5324561) (not bm!380222) (not bm!380234) (not b!5324315) (not d!1709884) (not b!5324458) (not b!5324435) (not bs!1233830) (not b!5324464) (not bs!1233829))
(check-sat)
(get-model)

(declare-fun bs!1233982 () Bool)

(declare-fun d!1710130 () Bool)

(assert (= bs!1233982 (and d!1710130 d!1709946)))

(declare-fun lambda!271794 () Int)

(assert (=> bs!1233982 (= lambda!271794 lambda!271746)))

(declare-fun bs!1233983 () Bool)

(assert (= bs!1233983 (and d!1710130 d!1709972)))

(assert (=> bs!1233983 (= lambda!271794 lambda!271755)))

(declare-fun bs!1233984 () Bool)

(assert (= bs!1233984 (and d!1710130 d!1709970)))

(assert (=> bs!1233984 (= lambda!271794 lambda!271752)))

(declare-fun bs!1233985 () Bool)

(assert (= bs!1233985 (and d!1710130 d!1709986)))

(assert (=> bs!1233985 (= lambda!271794 lambda!271762)))

(declare-fun bs!1233986 () Bool)

(assert (= bs!1233986 (and d!1710130 d!1709998)))

(assert (=> bs!1233986 (= lambda!271794 lambda!271765)))

(declare-fun bs!1233988 () Bool)

(assert (= bs!1233988 (and d!1710130 d!1709812)))

(assert (=> bs!1233988 (= lambda!271794 lambda!271706)))

(declare-fun bs!1233989 () Bool)

(assert (= bs!1233989 (and d!1710130 b!5323686)))

(assert (=> bs!1233989 (= lambda!271794 lambda!271673)))

(assert (=> d!1710130 (= (inv!80709 (h!67580 (t!374469 zl!343))) (forall!14403 (exprs!4869 (h!67580 (t!374469 zl!343))) lambda!271794))))

(declare-fun bs!1233990 () Bool)

(assert (= bs!1233990 d!1710130))

(declare-fun m!6359146 () Bool)

(assert (=> bs!1233990 m!6359146))

(assert (=> b!5324570 d!1710130))

(declare-fun d!1710140 () Bool)

(assert (=> d!1710140 (= ($colon$colon!1398 (exprs!4869 (Context!8739 lt!2172697)) (ite (or c!925509 c!925508) (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 r!7292)))) (Cons!61130 (ite (or c!925509 c!925508) (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 r!7292))) (exprs!4869 (Context!8739 lt!2172697))))))

(assert (=> bm!380218 d!1710140))

(declare-fun bs!1233991 () Bool)

(declare-fun d!1710146 () Bool)

(assert (= bs!1233991 (and d!1710146 d!1709946)))

(declare-fun lambda!271795 () Int)

(assert (=> bs!1233991 (= lambda!271795 lambda!271746)))

(declare-fun bs!1233992 () Bool)

(assert (= bs!1233992 (and d!1710146 d!1709972)))

(assert (=> bs!1233992 (= lambda!271795 lambda!271755)))

(declare-fun bs!1233993 () Bool)

(assert (= bs!1233993 (and d!1710146 d!1709970)))

(assert (=> bs!1233993 (= lambda!271795 lambda!271752)))

(declare-fun bs!1233994 () Bool)

(assert (= bs!1233994 (and d!1710146 d!1709986)))

(assert (=> bs!1233994 (= lambda!271795 lambda!271762)))

(declare-fun bs!1233995 () Bool)

(assert (= bs!1233995 (and d!1710146 d!1710130)))

(assert (=> bs!1233995 (= lambda!271795 lambda!271794)))

(declare-fun bs!1233996 () Bool)

(assert (= bs!1233996 (and d!1710146 d!1709998)))

(assert (=> bs!1233996 (= lambda!271795 lambda!271765)))

(declare-fun bs!1233997 () Bool)

(assert (= bs!1233997 (and d!1710146 d!1709812)))

(assert (=> bs!1233997 (= lambda!271795 lambda!271706)))

(declare-fun bs!1233998 () Bool)

(assert (= bs!1233998 (and d!1710146 b!5323686)))

(assert (=> bs!1233998 (= lambda!271795 lambda!271673)))

(declare-fun b!5324863 () Bool)

(declare-fun e!3307827 () Bool)

(declare-fun lt!2172921 () Regex!14985)

(assert (=> b!5324863 (= e!3307827 (isConcat!405 lt!2172921))))

(declare-fun b!5324864 () Bool)

(assert (=> b!5324864 (= e!3307827 (= lt!2172921 (head!11413 (t!374467 lt!2172704))))))

(declare-fun b!5324865 () Bool)

(declare-fun e!3307828 () Bool)

(assert (=> b!5324865 (= e!3307828 (isEmpty!33099 (t!374467 (t!374467 lt!2172704))))))

(declare-fun b!5324866 () Bool)

(declare-fun e!3307825 () Bool)

(assert (=> b!5324866 (= e!3307825 (isEmptyExpr!882 lt!2172921))))

(declare-fun b!5324867 () Bool)

(declare-fun e!3307826 () Bool)

(assert (=> b!5324867 (= e!3307826 e!3307825)))

(declare-fun c!925715 () Bool)

(assert (=> b!5324867 (= c!925715 (isEmpty!33099 (t!374467 lt!2172704)))))

(assert (=> d!1710146 e!3307826))

(declare-fun res!2258567 () Bool)

(assert (=> d!1710146 (=> (not res!2258567) (not e!3307826))))

(assert (=> d!1710146 (= res!2258567 (validRegex!6721 lt!2172921))))

(declare-fun e!3307829 () Regex!14985)

(assert (=> d!1710146 (= lt!2172921 e!3307829)))

(declare-fun c!925713 () Bool)

(assert (=> d!1710146 (= c!925713 e!3307828)))

(declare-fun res!2258566 () Bool)

(assert (=> d!1710146 (=> (not res!2258566) (not e!3307828))))

(assert (=> d!1710146 (= res!2258566 ((_ is Cons!61130) (t!374467 lt!2172704)))))

(assert (=> d!1710146 (forall!14403 (t!374467 lt!2172704) lambda!271795)))

(assert (=> d!1710146 (= (generalisedConcat!654 (t!374467 lt!2172704)) lt!2172921)))

(declare-fun b!5324868 () Bool)

(declare-fun e!3307824 () Regex!14985)

(assert (=> b!5324868 (= e!3307824 EmptyExpr!14985)))

(declare-fun b!5324869 () Bool)

(assert (=> b!5324869 (= e!3307829 e!3307824)))

(declare-fun c!925716 () Bool)

(assert (=> b!5324869 (= c!925716 ((_ is Cons!61130) (t!374467 lt!2172704)))))

(declare-fun b!5324870 () Bool)

(assert (=> b!5324870 (= e!3307825 e!3307827)))

(declare-fun c!925714 () Bool)

(assert (=> b!5324870 (= c!925714 (isEmpty!33099 (tail!10510 (t!374467 lt!2172704))))))

(declare-fun b!5324871 () Bool)

(assert (=> b!5324871 (= e!3307824 (Concat!23830 (h!67578 (t!374467 lt!2172704)) (generalisedConcat!654 (t!374467 (t!374467 lt!2172704)))))))

(declare-fun b!5324872 () Bool)

(assert (=> b!5324872 (= e!3307829 (h!67578 (t!374467 lt!2172704)))))

(assert (= (and d!1710146 res!2258566) b!5324865))

(assert (= (and d!1710146 c!925713) b!5324872))

(assert (= (and d!1710146 (not c!925713)) b!5324869))

(assert (= (and b!5324869 c!925716) b!5324871))

(assert (= (and b!5324869 (not c!925716)) b!5324868))

(assert (= (and d!1710146 res!2258567) b!5324867))

(assert (= (and b!5324867 c!925715) b!5324866))

(assert (= (and b!5324867 (not c!925715)) b!5324870))

(assert (= (and b!5324870 c!925714) b!5324864))

(assert (= (and b!5324870 (not c!925714)) b!5324863))

(assert (=> b!5324867 m!6358782))

(declare-fun m!6359164 () Bool)

(assert (=> b!5324865 m!6359164))

(declare-fun m!6359168 () Bool)

(assert (=> b!5324863 m!6359168))

(declare-fun m!6359170 () Bool)

(assert (=> d!1710146 m!6359170))

(declare-fun m!6359172 () Bool)

(assert (=> d!1710146 m!6359172))

(declare-fun m!6359176 () Bool)

(assert (=> b!5324871 m!6359176))

(declare-fun m!6359178 () Bool)

(assert (=> b!5324870 m!6359178))

(assert (=> b!5324870 m!6359178))

(declare-fun m!6359180 () Bool)

(assert (=> b!5324870 m!6359180))

(declare-fun m!6359182 () Bool)

(assert (=> b!5324864 m!6359182))

(declare-fun m!6359184 () Bool)

(assert (=> b!5324866 m!6359184))

(assert (=> b!5324464 d!1710146))

(declare-fun d!1710154 () Bool)

(assert (=> d!1710154 (= (nullable!5154 (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))) (nullableFct!1500 (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))))))

(declare-fun bs!1233999 () Bool)

(assert (= bs!1233999 d!1710154))

(declare-fun m!6359188 () Bool)

(assert (=> bs!1233999 m!6359188))

(assert (=> b!5324268 d!1710154))

(declare-fun b!5324875 () Bool)

(declare-fun e!3307831 () (InoxSet Context!8738))

(assert (=> b!5324875 (= e!3307831 ((as const (Array Context!8738 Bool)) false))))

(declare-fun b!5324876 () Bool)

(declare-fun call!380313 () (InoxSet Context!8738))

(assert (=> b!5324876 (= e!3307831 call!380313)))

(declare-fun d!1710156 () Bool)

(declare-fun c!925719 () Bool)

(declare-fun e!3307832 () Bool)

(assert (=> d!1710156 (= c!925719 e!3307832)))

(declare-fun res!2258568 () Bool)

(assert (=> d!1710156 (=> (not res!2258568) (not e!3307832))))

(assert (=> d!1710156 (= res!2258568 ((_ is Cons!61130) (exprs!4869 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343)))))))))

(declare-fun e!3307833 () (InoxSet Context!8738))

(assert (=> d!1710156 (= (derivationStepZipperUp!357 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343)))) (h!67579 s!2326)) e!3307833)))

(declare-fun b!5324877 () Bool)

(assert (=> b!5324877 (= e!3307833 e!3307831)))

(declare-fun c!925718 () Bool)

(assert (=> b!5324877 (= c!925718 ((_ is Cons!61130) (exprs!4869 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343)))))))))

(declare-fun b!5324878 () Bool)

(assert (=> b!5324878 (= e!3307833 ((_ map or) call!380313 (derivationStepZipperUp!357 (Context!8739 (t!374467 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343))))))) (h!67579 s!2326))))))

(declare-fun bm!380308 () Bool)

(assert (=> bm!380308 (= call!380313 (derivationStepZipperDown!433 (h!67578 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343)))))) (Context!8739 (t!374467 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343))))))) (h!67579 s!2326)))))

(declare-fun b!5324879 () Bool)

(assert (=> b!5324879 (= e!3307832 (nullable!5154 (h!67578 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343))))))))))

(assert (= (and d!1710156 res!2258568) b!5324879))

(assert (= (and d!1710156 c!925719) b!5324878))

(assert (= (and d!1710156 (not c!925719)) b!5324877))

(assert (= (and b!5324877 c!925718) b!5324876))

(assert (= (and b!5324877 (not c!925718)) b!5324875))

(assert (= (or b!5324878 b!5324876) bm!380308))

(declare-fun m!6359190 () Bool)

(assert (=> b!5324878 m!6359190))

(declare-fun m!6359192 () Bool)

(assert (=> bm!380308 m!6359192))

(declare-fun m!6359194 () Bool)

(assert (=> b!5324879 m!6359194))

(assert (=> b!5324257 d!1710156))

(declare-fun d!1710158 () Bool)

(assert (=> d!1710158 (= (isEmpty!33103 (tail!10511 s!2326)) ((_ is Nil!61131) (tail!10511 s!2326)))))

(assert (=> b!5324482 d!1710158))

(declare-fun d!1710164 () Bool)

(assert (=> d!1710164 (= (tail!10511 s!2326) (t!374468 s!2326))))

(assert (=> b!5324482 d!1710164))

(declare-fun d!1710166 () Bool)

(assert (=> d!1710166 (= (nullable!5154 (h!67578 (exprs!4869 lt!2172716))) (nullableFct!1500 (h!67578 (exprs!4869 lt!2172716))))))

(declare-fun bs!1234013 () Bool)

(assert (= bs!1234013 d!1710166))

(declare-fun m!6359198 () Bool)

(assert (=> bs!1234013 m!6359198))

(assert (=> b!5324263 d!1710166))

(declare-fun b!5324880 () Bool)

(declare-fun e!3307837 () Bool)

(declare-fun call!380314 () Bool)

(assert (=> b!5324880 (= e!3307837 call!380314)))

(declare-fun b!5324881 () Bool)

(declare-fun e!3307835 () Bool)

(declare-fun e!3307834 () Bool)

(assert (=> b!5324881 (= e!3307835 e!3307834)))

(declare-fun res!2258573 () Bool)

(assert (=> b!5324881 (=> (not res!2258573) (not e!3307834))))

(declare-fun call!380316 () Bool)

(assert (=> b!5324881 (= res!2258573 call!380316)))

(declare-fun b!5324882 () Bool)

(declare-fun res!2258571 () Bool)

(assert (=> b!5324882 (=> res!2258571 e!3307835)))

(assert (=> b!5324882 (= res!2258571 (not ((_ is Concat!23830) (h!67578 lt!2172697))))))

(declare-fun e!3307839 () Bool)

(assert (=> b!5324882 (= e!3307839 e!3307835)))

(declare-fun c!925720 () Bool)

(declare-fun bm!380309 () Bool)

(declare-fun c!925721 () Bool)

(assert (=> bm!380309 (= call!380314 (validRegex!6721 (ite c!925721 (reg!15314 (h!67578 lt!2172697)) (ite c!925720 (regTwo!30483 (h!67578 lt!2172697)) (regTwo!30482 (h!67578 lt!2172697))))))))

(declare-fun b!5324883 () Bool)

(declare-fun e!3307838 () Bool)

(assert (=> b!5324883 (= e!3307838 e!3307839)))

(assert (=> b!5324883 (= c!925720 ((_ is Union!14985) (h!67578 lt!2172697)))))

(declare-fun d!1710168 () Bool)

(declare-fun res!2258570 () Bool)

(declare-fun e!3307836 () Bool)

(assert (=> d!1710168 (=> res!2258570 e!3307836)))

(assert (=> d!1710168 (= res!2258570 ((_ is ElementMatch!14985) (h!67578 lt!2172697)))))

(assert (=> d!1710168 (= (validRegex!6721 (h!67578 lt!2172697)) e!3307836)))

(declare-fun b!5324884 () Bool)

(declare-fun res!2258572 () Bool)

(declare-fun e!3307840 () Bool)

(assert (=> b!5324884 (=> (not res!2258572) (not e!3307840))))

(assert (=> b!5324884 (= res!2258572 call!380316)))

(assert (=> b!5324884 (= e!3307839 e!3307840)))

(declare-fun bm!380310 () Bool)

(assert (=> bm!380310 (= call!380316 (validRegex!6721 (ite c!925720 (regOne!30483 (h!67578 lt!2172697)) (regOne!30482 (h!67578 lt!2172697)))))))

(declare-fun b!5324885 () Bool)

(declare-fun call!380315 () Bool)

(assert (=> b!5324885 (= e!3307840 call!380315)))

(declare-fun b!5324886 () Bool)

(assert (=> b!5324886 (= e!3307834 call!380315)))

(declare-fun b!5324887 () Bool)

(assert (=> b!5324887 (= e!3307838 e!3307837)))

(declare-fun res!2258569 () Bool)

(assert (=> b!5324887 (= res!2258569 (not (nullable!5154 (reg!15314 (h!67578 lt!2172697)))))))

(assert (=> b!5324887 (=> (not res!2258569) (not e!3307837))))

(declare-fun bm!380311 () Bool)

(assert (=> bm!380311 (= call!380315 call!380314)))

(declare-fun b!5324888 () Bool)

(assert (=> b!5324888 (= e!3307836 e!3307838)))

(assert (=> b!5324888 (= c!925721 ((_ is Star!14985) (h!67578 lt!2172697)))))

(assert (= (and d!1710168 (not res!2258570)) b!5324888))

(assert (= (and b!5324888 c!925721) b!5324887))

(assert (= (and b!5324888 (not c!925721)) b!5324883))

(assert (= (and b!5324887 res!2258569) b!5324880))

(assert (= (and b!5324883 c!925720) b!5324884))

(assert (= (and b!5324883 (not c!925720)) b!5324882))

(assert (= (and b!5324884 res!2258572) b!5324885))

(assert (= (and b!5324882 (not res!2258571)) b!5324881))

(assert (= (and b!5324881 res!2258573) b!5324886))

(assert (= (or b!5324885 b!5324886) bm!380311))

(assert (= (or b!5324884 b!5324881) bm!380310))

(assert (= (or b!5324880 bm!380311) bm!380309))

(declare-fun m!6359202 () Bool)

(assert (=> bm!380309 m!6359202))

(declare-fun m!6359204 () Bool)

(assert (=> bm!380310 m!6359204))

(declare-fun m!6359206 () Bool)

(assert (=> b!5324887 m!6359206))

(assert (=> bs!1233830 d!1710168))

(declare-fun b!5324921 () Bool)

(declare-fun e!3307869 () Bool)

(declare-fun e!3307871 () Bool)

(assert (=> b!5324921 (= e!3307869 e!3307871)))

(declare-fun c!925728 () Bool)

(assert (=> b!5324921 (= c!925728 ((_ is Union!14985) (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun bm!380322 () Bool)

(declare-fun call!380328 () Bool)

(assert (=> bm!380322 (= call!380328 (nullable!5154 (ite c!925728 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))))))))

(declare-fun bm!380323 () Bool)

(declare-fun call!380327 () Bool)

(assert (=> bm!380323 (= call!380327 (nullable!5154 (ite c!925728 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))))))))

(declare-fun d!1710172 () Bool)

(declare-fun res!2258597 () Bool)

(declare-fun e!3307867 () Bool)

(assert (=> d!1710172 (=> res!2258597 e!3307867)))

(assert (=> d!1710172 (= res!2258597 ((_ is EmptyExpr!14985) (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(assert (=> d!1710172 (= (nullableFct!1500 (h!67578 (exprs!4869 (h!67580 zl!343)))) e!3307867)))

(declare-fun b!5324922 () Bool)

(declare-fun e!3307870 () Bool)

(assert (=> b!5324922 (= e!3307867 e!3307870)))

(declare-fun res!2258595 () Bool)

(assert (=> b!5324922 (=> (not res!2258595) (not e!3307870))))

(assert (=> b!5324922 (= res!2258595 (and (not ((_ is EmptyLang!14985) (h!67578 (exprs!4869 (h!67580 zl!343))))) (not ((_ is ElementMatch!14985) (h!67578 (exprs!4869 (h!67580 zl!343)))))))))

(declare-fun b!5324923 () Bool)

(declare-fun e!3307872 () Bool)

(assert (=> b!5324923 (= e!3307872 call!380327)))

(declare-fun b!5324924 () Bool)

(declare-fun e!3307868 () Bool)

(assert (=> b!5324924 (= e!3307871 e!3307868)))

(declare-fun res!2258596 () Bool)

(assert (=> b!5324924 (= res!2258596 call!380328)))

(assert (=> b!5324924 (=> (not res!2258596) (not e!3307868))))

(declare-fun b!5324925 () Bool)

(assert (=> b!5324925 (= e!3307870 e!3307869)))

(declare-fun res!2258598 () Bool)

(assert (=> b!5324925 (=> res!2258598 e!3307869)))

(assert (=> b!5324925 (= res!2258598 ((_ is Star!14985) (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun b!5324926 () Bool)

(assert (=> b!5324926 (= e!3307871 e!3307872)))

(declare-fun res!2258594 () Bool)

(assert (=> b!5324926 (= res!2258594 call!380328)))

(assert (=> b!5324926 (=> res!2258594 e!3307872)))

(declare-fun b!5324927 () Bool)

(assert (=> b!5324927 (= e!3307868 call!380327)))

(assert (= (and d!1710172 (not res!2258597)) b!5324922))

(assert (= (and b!5324922 res!2258595) b!5324925))

(assert (= (and b!5324925 (not res!2258598)) b!5324921))

(assert (= (and b!5324921 c!925728) b!5324926))

(assert (= (and b!5324921 (not c!925728)) b!5324924))

(assert (= (and b!5324926 (not res!2258594)) b!5324923))

(assert (= (and b!5324924 res!2258596) b!5324927))

(assert (= (or b!5324923 b!5324927) bm!380323))

(assert (= (or b!5324926 b!5324924) bm!380322))

(declare-fun m!6359224 () Bool)

(assert (=> bm!380322 m!6359224))

(declare-fun m!6359226 () Bool)

(assert (=> bm!380323 m!6359226))

(assert (=> d!1709906 d!1710172))

(declare-fun d!1710186 () Bool)

(assert (=> d!1710186 (= (flatMap!712 lt!2172707 lambda!271749) (choose!39861 lt!2172707 lambda!271749))))

(declare-fun bs!1234034 () Bool)

(assert (= bs!1234034 d!1710186))

(declare-fun m!6359228 () Bool)

(assert (=> bs!1234034 m!6359228))

(assert (=> d!1709960 d!1710186))

(declare-fun d!1710188 () Bool)

(assert (=> d!1710188 (= (isEmpty!33099 (tail!10510 (exprs!4869 (h!67580 zl!343)))) ((_ is Nil!61130) (tail!10510 (exprs!4869 (h!67580 zl!343)))))))

(assert (=> b!5323865 d!1710188))

(declare-fun d!1710190 () Bool)

(assert (=> d!1710190 (= (tail!10510 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343))))))

(assert (=> b!5323865 d!1710190))

(declare-fun b!5324928 () Bool)

(declare-fun e!3307876 () Bool)

(declare-fun call!380329 () Bool)

(assert (=> b!5324928 (= e!3307876 call!380329)))

(declare-fun b!5324929 () Bool)

(declare-fun e!3307874 () Bool)

(declare-fun e!3307873 () Bool)

(assert (=> b!5324929 (= e!3307874 e!3307873)))

(declare-fun res!2258603 () Bool)

(assert (=> b!5324929 (=> (not res!2258603) (not e!3307873))))

(declare-fun call!380331 () Bool)

(assert (=> b!5324929 (= res!2258603 call!380331)))

(declare-fun b!5324930 () Bool)

(declare-fun res!2258601 () Bool)

(assert (=> b!5324930 (=> res!2258601 e!3307874)))

(assert (=> b!5324930 (= res!2258601 (not ((_ is Concat!23830) (ite c!925618 (regOne!30483 r!7292) (regOne!30482 r!7292)))))))

(declare-fun e!3307878 () Bool)

(assert (=> b!5324930 (= e!3307878 e!3307874)))

(declare-fun c!925729 () Bool)

(declare-fun bm!380324 () Bool)

(declare-fun c!925730 () Bool)

(assert (=> bm!380324 (= call!380329 (validRegex!6721 (ite c!925730 (reg!15314 (ite c!925618 (regOne!30483 r!7292) (regOne!30482 r!7292))) (ite c!925729 (regTwo!30483 (ite c!925618 (regOne!30483 r!7292) (regOne!30482 r!7292))) (regTwo!30482 (ite c!925618 (regOne!30483 r!7292) (regOne!30482 r!7292)))))))))

(declare-fun b!5324931 () Bool)

(declare-fun e!3307877 () Bool)

(assert (=> b!5324931 (= e!3307877 e!3307878)))

(assert (=> b!5324931 (= c!925729 ((_ is Union!14985) (ite c!925618 (regOne!30483 r!7292) (regOne!30482 r!7292))))))

(declare-fun d!1710196 () Bool)

(declare-fun res!2258600 () Bool)

(declare-fun e!3307875 () Bool)

(assert (=> d!1710196 (=> res!2258600 e!3307875)))

(assert (=> d!1710196 (= res!2258600 ((_ is ElementMatch!14985) (ite c!925618 (regOne!30483 r!7292) (regOne!30482 r!7292))))))

(assert (=> d!1710196 (= (validRegex!6721 (ite c!925618 (regOne!30483 r!7292) (regOne!30482 r!7292))) e!3307875)))

(declare-fun b!5324932 () Bool)

(declare-fun res!2258602 () Bool)

(declare-fun e!3307879 () Bool)

(assert (=> b!5324932 (=> (not res!2258602) (not e!3307879))))

(assert (=> b!5324932 (= res!2258602 call!380331)))

(assert (=> b!5324932 (= e!3307878 e!3307879)))

(declare-fun bm!380325 () Bool)

(assert (=> bm!380325 (= call!380331 (validRegex!6721 (ite c!925729 (regOne!30483 (ite c!925618 (regOne!30483 r!7292) (regOne!30482 r!7292))) (regOne!30482 (ite c!925618 (regOne!30483 r!7292) (regOne!30482 r!7292))))))))

(declare-fun b!5324933 () Bool)

(declare-fun call!380330 () Bool)

(assert (=> b!5324933 (= e!3307879 call!380330)))

(declare-fun b!5324934 () Bool)

(assert (=> b!5324934 (= e!3307873 call!380330)))

(declare-fun b!5324935 () Bool)

(assert (=> b!5324935 (= e!3307877 e!3307876)))

(declare-fun res!2258599 () Bool)

(assert (=> b!5324935 (= res!2258599 (not (nullable!5154 (reg!15314 (ite c!925618 (regOne!30483 r!7292) (regOne!30482 r!7292))))))))

(assert (=> b!5324935 (=> (not res!2258599) (not e!3307876))))

(declare-fun bm!380326 () Bool)

(assert (=> bm!380326 (= call!380330 call!380329)))

(declare-fun b!5324936 () Bool)

(assert (=> b!5324936 (= e!3307875 e!3307877)))

(assert (=> b!5324936 (= c!925730 ((_ is Star!14985) (ite c!925618 (regOne!30483 r!7292) (regOne!30482 r!7292))))))

(assert (= (and d!1710196 (not res!2258600)) b!5324936))

(assert (= (and b!5324936 c!925730) b!5324935))

(assert (= (and b!5324936 (not c!925730)) b!5324931))

(assert (= (and b!5324935 res!2258599) b!5324928))

(assert (= (and b!5324931 c!925729) b!5324932))

(assert (= (and b!5324931 (not c!925729)) b!5324930))

(assert (= (and b!5324932 res!2258602) b!5324933))

(assert (= (and b!5324930 (not res!2258601)) b!5324929))

(assert (= (and b!5324929 res!2258603) b!5324934))

(assert (= (or b!5324933 b!5324934) bm!380326))

(assert (= (or b!5324932 b!5324929) bm!380325))

(assert (= (or b!5324928 bm!380326) bm!380324))

(declare-fun m!6359232 () Bool)

(assert (=> bm!380324 m!6359232))

(declare-fun m!6359234 () Bool)

(assert (=> bm!380325 m!6359234))

(declare-fun m!6359236 () Bool)

(assert (=> b!5324935 m!6359236))

(assert (=> bm!380254 d!1710196))

(declare-fun d!1710198 () Bool)

(assert (=> d!1710198 (= (isEmpty!33103 s!2326) ((_ is Nil!61131) s!2326))))

(assert (=> bm!380246 d!1710198))

(declare-fun d!1710200 () Bool)

(declare-fun res!2258606 () Bool)

(declare-fun e!3307882 () Bool)

(assert (=> d!1710200 (=> res!2258606 e!3307882)))

(assert (=> d!1710200 (= res!2258606 ((_ is Nil!61130) lt!2172850))))

(assert (=> d!1710200 (= (forall!14403 lt!2172850 lambda!271755) e!3307882)))

(declare-fun b!5324939 () Bool)

(declare-fun e!3307883 () Bool)

(assert (=> b!5324939 (= e!3307882 e!3307883)))

(declare-fun res!2258607 () Bool)

(assert (=> b!5324939 (=> (not res!2258607) (not e!3307883))))

(assert (=> b!5324939 (= res!2258607 (dynLambda!24169 lambda!271755 (h!67578 lt!2172850)))))

(declare-fun b!5324940 () Bool)

(assert (=> b!5324940 (= e!3307883 (forall!14403 (t!374467 lt!2172850) lambda!271755))))

(assert (= (and d!1710200 (not res!2258606)) b!5324939))

(assert (= (and b!5324939 res!2258607) b!5324940))

(declare-fun b_lambda!204817 () Bool)

(assert (=> (not b_lambda!204817) (not b!5324939)))

(declare-fun m!6359238 () Bool)

(assert (=> b!5324939 m!6359238))

(declare-fun m!6359240 () Bool)

(assert (=> b!5324940 m!6359240))

(assert (=> d!1709972 d!1710200))

(declare-fun d!1710202 () Bool)

(assert (=> d!1710202 (= (head!11413 (unfocusZipperList!427 zl!343)) (h!67578 (unfocusZipperList!427 zl!343)))))

(assert (=> b!5324349 d!1710202))

(assert (=> bm!380239 d!1710198))

(declare-fun bs!1234038 () Bool)

(declare-fun d!1710204 () Bool)

(assert (= bs!1234038 (and d!1710204 b!5323976)))

(declare-fun lambda!271801 () Int)

(assert (=> bs!1234038 (not (= lambda!271801 lambda!271714))))

(declare-fun bs!1234039 () Bool)

(assert (= bs!1234039 (and d!1710204 b!5323978)))

(assert (=> bs!1234039 (not (= lambda!271801 lambda!271715))))

(declare-fun bs!1234040 () Bool)

(assert (= bs!1234040 (and d!1710204 b!5323992)))

(assert (=> bs!1234040 (not (= lambda!271801 lambda!271717))))

(declare-fun bs!1234041 () Bool)

(assert (= bs!1234041 (and d!1710204 b!5323994)))

(assert (=> bs!1234041 (not (= lambda!271801 lambda!271718))))

(declare-fun exists!2013 ((InoxSet Context!8738) Int) Bool)

(assert (=> d!1710204 (= (nullableZipper!1348 lt!2172713) (exists!2013 lt!2172713 lambda!271801))))

(declare-fun bs!1234042 () Bool)

(assert (= bs!1234042 d!1710204))

(declare-fun m!6359264 () Bool)

(assert (=> bs!1234042 m!6359264))

(assert (=> b!5324269 d!1710204))

(declare-fun b!5324973 () Bool)

(declare-fun e!3307906 () Bool)

(assert (=> b!5324973 (= e!3307906 (nullable!5154 (regOne!30482 r!7292)))))

(declare-fun b!5324974 () Bool)

(declare-fun e!3307907 () Bool)

(assert (=> b!5324974 (= e!3307907 (not (= (head!11414 (_1!35487 (get!21026 lt!2172830))) (c!925355 (regOne!30482 r!7292)))))))

(declare-fun b!5324975 () Bool)

(declare-fun e!3307911 () Bool)

(declare-fun lt!2172923 () Bool)

(assert (=> b!5324975 (= e!3307911 (not lt!2172923))))

(declare-fun b!5324976 () Bool)

(declare-fun e!3307909 () Bool)

(declare-fun e!3307905 () Bool)

(assert (=> b!5324976 (= e!3307909 e!3307905)))

(declare-fun res!2258632 () Bool)

(assert (=> b!5324976 (=> (not res!2258632) (not e!3307905))))

(assert (=> b!5324976 (= res!2258632 (not lt!2172923))))

(declare-fun b!5324977 () Bool)

(declare-fun res!2258631 () Bool)

(declare-fun e!3307908 () Bool)

(assert (=> b!5324977 (=> (not res!2258631) (not e!3307908))))

(assert (=> b!5324977 (= res!2258631 (isEmpty!33103 (tail!10511 (_1!35487 (get!21026 lt!2172830)))))))

(declare-fun b!5324978 () Bool)

(declare-fun res!2258633 () Bool)

(assert (=> b!5324978 (=> res!2258633 e!3307909)))

(assert (=> b!5324978 (= res!2258633 (not ((_ is ElementMatch!14985) (regOne!30482 r!7292))))))

(assert (=> b!5324978 (= e!3307911 e!3307909)))

(declare-fun b!5324979 () Bool)

(assert (=> b!5324979 (= e!3307908 (= (head!11414 (_1!35487 (get!21026 lt!2172830))) (c!925355 (regOne!30482 r!7292))))))

(declare-fun b!5324980 () Bool)

(assert (=> b!5324980 (= e!3307905 e!3307907)))

(declare-fun res!2258634 () Bool)

(assert (=> b!5324980 (=> res!2258634 e!3307907)))

(declare-fun call!380338 () Bool)

(assert (=> b!5324980 (= res!2258634 call!380338)))

(declare-fun bm!380333 () Bool)

(assert (=> bm!380333 (= call!380338 (isEmpty!33103 (_1!35487 (get!21026 lt!2172830))))))

(declare-fun b!5324981 () Bool)

(declare-fun res!2258629 () Bool)

(assert (=> b!5324981 (=> res!2258629 e!3307907)))

(assert (=> b!5324981 (= res!2258629 (not (isEmpty!33103 (tail!10511 (_1!35487 (get!21026 lt!2172830))))))))

(declare-fun d!1710214 () Bool)

(declare-fun e!3307910 () Bool)

(assert (=> d!1710214 e!3307910))

(declare-fun c!925741 () Bool)

(assert (=> d!1710214 (= c!925741 ((_ is EmptyExpr!14985) (regOne!30482 r!7292)))))

(assert (=> d!1710214 (= lt!2172923 e!3307906)))

(declare-fun c!925740 () Bool)

(assert (=> d!1710214 (= c!925740 (isEmpty!33103 (_1!35487 (get!21026 lt!2172830))))))

(assert (=> d!1710214 (validRegex!6721 (regOne!30482 r!7292))))

(assert (=> d!1710214 (= (matchR!7170 (regOne!30482 r!7292) (_1!35487 (get!21026 lt!2172830))) lt!2172923)))

(declare-fun b!5324972 () Bool)

(declare-fun res!2258630 () Bool)

(assert (=> b!5324972 (=> (not res!2258630) (not e!3307908))))

(assert (=> b!5324972 (= res!2258630 (not call!380338))))

(declare-fun b!5324982 () Bool)

(assert (=> b!5324982 (= e!3307910 e!3307911)))

(declare-fun c!925739 () Bool)

(assert (=> b!5324982 (= c!925739 ((_ is EmptyLang!14985) (regOne!30482 r!7292)))))

(declare-fun b!5324983 () Bool)

(assert (=> b!5324983 (= e!3307910 (= lt!2172923 call!380338))))

(declare-fun b!5324984 () Bool)

(declare-fun res!2258628 () Bool)

(assert (=> b!5324984 (=> res!2258628 e!3307909)))

(assert (=> b!5324984 (= res!2258628 e!3307908)))

(declare-fun res!2258627 () Bool)

(assert (=> b!5324984 (=> (not res!2258627) (not e!3307908))))

(assert (=> b!5324984 (= res!2258627 lt!2172923)))

(declare-fun b!5324985 () Bool)

(assert (=> b!5324985 (= e!3307906 (matchR!7170 (derivativeStep!4169 (regOne!30482 r!7292) (head!11414 (_1!35487 (get!21026 lt!2172830)))) (tail!10511 (_1!35487 (get!21026 lt!2172830)))))))

(assert (= (and d!1710214 c!925740) b!5324973))

(assert (= (and d!1710214 (not c!925740)) b!5324985))

(assert (= (and d!1710214 c!925741) b!5324983))

(assert (= (and d!1710214 (not c!925741)) b!5324982))

(assert (= (and b!5324982 c!925739) b!5324975))

(assert (= (and b!5324982 (not c!925739)) b!5324978))

(assert (= (and b!5324978 (not res!2258633)) b!5324984))

(assert (= (and b!5324984 res!2258627) b!5324972))

(assert (= (and b!5324972 res!2258630) b!5324977))

(assert (= (and b!5324977 res!2258631) b!5324979))

(assert (= (and b!5324984 (not res!2258628)) b!5324976))

(assert (= (and b!5324976 res!2258632) b!5324980))

(assert (= (and b!5324980 (not res!2258634)) b!5324981))

(assert (= (and b!5324981 (not res!2258629)) b!5324974))

(assert (= (or b!5324983 b!5324972 b!5324980) bm!380333))

(declare-fun m!6359278 () Bool)

(assert (=> bm!380333 m!6359278))

(declare-fun m!6359280 () Bool)

(assert (=> b!5324974 m!6359280))

(assert (=> d!1710214 m!6359278))

(assert (=> d!1710214 m!6358656))

(assert (=> b!5324979 m!6359280))

(declare-fun m!6359282 () Bool)

(assert (=> b!5324977 m!6359282))

(assert (=> b!5324977 m!6359282))

(declare-fun m!6359284 () Bool)

(assert (=> b!5324977 m!6359284))

(declare-fun m!6359286 () Bool)

(assert (=> b!5324973 m!6359286))

(assert (=> b!5324981 m!6359282))

(assert (=> b!5324981 m!6359282))

(assert (=> b!5324981 m!6359284))

(assert (=> b!5324985 m!6359280))

(assert (=> b!5324985 m!6359280))

(declare-fun m!6359288 () Bool)

(assert (=> b!5324985 m!6359288))

(assert (=> b!5324985 m!6359282))

(assert (=> b!5324985 m!6359288))

(assert (=> b!5324985 m!6359282))

(declare-fun m!6359290 () Bool)

(assert (=> b!5324985 m!6359290))

(assert (=> b!5324290 d!1710214))

(declare-fun d!1710222 () Bool)

(assert (=> d!1710222 (= (get!21026 lt!2172830) (v!51124 lt!2172830))))

(assert (=> b!5324290 d!1710222))

(assert (=> d!1709984 d!1710198))

(declare-fun d!1710228 () Bool)

(assert (=> d!1710228 (= (isEmptyExpr!882 lt!2172860) ((_ is EmptyExpr!14985) lt!2172860))))

(assert (=> b!5324459 d!1710228))

(assert (=> b!5324325 d!1709996))

(declare-fun d!1710230 () Bool)

(declare-fun lt!2172925 () Int)

(assert (=> d!1710230 (>= lt!2172925 0)))

(declare-fun e!3307921 () Int)

(assert (=> d!1710230 (= lt!2172925 e!3307921)))

(declare-fun c!925748 () Bool)

(assert (=> d!1710230 (= c!925748 ((_ is Cons!61132) (t!374469 zl!343)))))

(assert (=> d!1710230 (= (zipperDepthTotal!138 (t!374469 zl!343)) lt!2172925)))

(declare-fun b!5325001 () Bool)

(assert (=> b!5325001 (= e!3307921 (+ (contextDepthTotal!118 (h!67580 (t!374469 zl!343))) (zipperDepthTotal!138 (t!374469 (t!374469 zl!343)))))))

(declare-fun b!5325002 () Bool)

(assert (=> b!5325002 (= e!3307921 0)))

(assert (= (and d!1710230 c!925748) b!5325001))

(assert (= (and d!1710230 (not c!925748)) b!5325002))

(declare-fun m!6359294 () Bool)

(assert (=> b!5325001 m!6359294))

(declare-fun m!6359296 () Bool)

(assert (=> b!5325001 m!6359296))

(assert (=> b!5324325 d!1710230))

(assert (=> d!1709990 d!1710198))

(assert (=> d!1709990 d!1710000))

(declare-fun bs!1234044 () Bool)

(declare-fun b!5325006 () Bool)

(assert (= bs!1234044 (and b!5325006 d!1709938)))

(declare-fun lambda!271802 () Int)

(assert (=> bs!1234044 (not (= lambda!271802 lambda!271737))))

(declare-fun bs!1234045 () Bool)

(assert (= bs!1234045 (and b!5325006 b!5324398)))

(assert (=> bs!1234045 (= (and (= (reg!15314 (regTwo!30483 r!7292)) (reg!15314 lt!2172700)) (= (regTwo!30483 r!7292) lt!2172700)) (= lambda!271802 lambda!271760))))

(declare-fun bs!1234046 () Bool)

(assert (= bs!1234046 (and b!5325006 b!5324471)))

(assert (=> bs!1234046 (not (= lambda!271802 lambda!271764))))

(declare-fun bs!1234047 () Bool)

(assert (= bs!1234047 (and b!5325006 b!5324469)))

(assert (=> bs!1234047 (= (and (= (reg!15314 (regTwo!30483 r!7292)) (reg!15314 r!7292)) (= (regTwo!30483 r!7292) r!7292)) (= lambda!271802 lambda!271763))))

(declare-fun bs!1234048 () Bool)

(assert (= bs!1234048 (and b!5325006 b!5323677)))

(assert (=> bs!1234048 (not (= lambda!271802 lambda!271670))))

(declare-fun bs!1234049 () Bool)

(assert (= bs!1234049 (and b!5325006 d!1709942)))

(assert (=> bs!1234049 (not (= lambda!271802 lambda!271743))))

(assert (=> bs!1234048 (not (= lambda!271802 lambda!271671))))

(declare-fun bs!1234050 () Bool)

(assert (= bs!1234050 (and b!5325006 b!5324400)))

(assert (=> bs!1234050 (not (= lambda!271802 lambda!271761))))

(assert (=> bs!1234049 (not (= lambda!271802 lambda!271742))))

(assert (=> b!5325006 true))

(assert (=> b!5325006 true))

(declare-fun bs!1234055 () Bool)

(declare-fun b!5325008 () Bool)

(assert (= bs!1234055 (and b!5325008 d!1709938)))

(declare-fun lambda!271804 () Int)

(assert (=> bs!1234055 (not (= lambda!271804 lambda!271737))))

(declare-fun bs!1234057 () Bool)

(assert (= bs!1234057 (and b!5325008 b!5324398)))

(assert (=> bs!1234057 (not (= lambda!271804 lambda!271760))))

(declare-fun bs!1234060 () Bool)

(assert (= bs!1234060 (and b!5325008 b!5324471)))

(assert (=> bs!1234060 (= (and (= (regOne!30482 (regTwo!30483 r!7292)) (regOne!30482 r!7292)) (= (regTwo!30482 (regTwo!30483 r!7292)) (regTwo!30482 r!7292))) (= lambda!271804 lambda!271764))))

(declare-fun bs!1234062 () Bool)

(assert (= bs!1234062 (and b!5325008 b!5325006)))

(assert (=> bs!1234062 (not (= lambda!271804 lambda!271802))))

(declare-fun bs!1234065 () Bool)

(assert (= bs!1234065 (and b!5325008 b!5324469)))

(assert (=> bs!1234065 (not (= lambda!271804 lambda!271763))))

(declare-fun bs!1234067 () Bool)

(assert (= bs!1234067 (and b!5325008 b!5323677)))

(assert (=> bs!1234067 (not (= lambda!271804 lambda!271670))))

(declare-fun bs!1234069 () Bool)

(assert (= bs!1234069 (and b!5325008 d!1709942)))

(assert (=> bs!1234069 (= (and (= (regOne!30482 (regTwo!30483 r!7292)) (regOne!30482 r!7292)) (= (regTwo!30482 (regTwo!30483 r!7292)) (regTwo!30482 r!7292))) (= lambda!271804 lambda!271743))))

(assert (=> bs!1234067 (= (and (= (regOne!30482 (regTwo!30483 r!7292)) (regOne!30482 r!7292)) (= (regTwo!30482 (regTwo!30483 r!7292)) (regTwo!30482 r!7292))) (= lambda!271804 lambda!271671))))

(declare-fun bs!1234071 () Bool)

(assert (= bs!1234071 (and b!5325008 b!5324400)))

(assert (=> bs!1234071 (= (and (= (regOne!30482 (regTwo!30483 r!7292)) (regOne!30482 lt!2172700)) (= (regTwo!30482 (regTwo!30483 r!7292)) (regTwo!30482 lt!2172700))) (= lambda!271804 lambda!271761))))

(assert (=> bs!1234069 (not (= lambda!271804 lambda!271742))))

(assert (=> b!5325008 true))

(assert (=> b!5325008 true))

(declare-fun b!5325003 () Bool)

(declare-fun e!3307923 () Bool)

(declare-fun e!3307926 () Bool)

(assert (=> b!5325003 (= e!3307923 e!3307926)))

(declare-fun c!925752 () Bool)

(assert (=> b!5325003 (= c!925752 ((_ is Star!14985) (regTwo!30483 r!7292)))))

(declare-fun b!5325004 () Bool)

(declare-fun e!3307928 () Bool)

(assert (=> b!5325004 (= e!3307928 (= s!2326 (Cons!61131 (c!925355 (regTwo!30483 r!7292)) Nil!61131)))))

(declare-fun b!5325005 () Bool)

(declare-fun e!3307925 () Bool)

(declare-fun call!380346 () Bool)

(assert (=> b!5325005 (= e!3307925 call!380346)))

(declare-fun e!3307924 () Bool)

(declare-fun call!380345 () Bool)

(assert (=> b!5325006 (= e!3307924 call!380345)))

(declare-fun b!5325007 () Bool)

(declare-fun res!2258643 () Bool)

(assert (=> b!5325007 (=> res!2258643 e!3307924)))

(assert (=> b!5325007 (= res!2258643 call!380346)))

(assert (=> b!5325007 (= e!3307926 e!3307924)))

(assert (=> b!5325008 (= e!3307926 call!380345)))

(declare-fun d!1710232 () Bool)

(declare-fun c!925749 () Bool)

(assert (=> d!1710232 (= c!925749 ((_ is EmptyExpr!14985) (regTwo!30483 r!7292)))))

(assert (=> d!1710232 (= (matchRSpec!2088 (regTwo!30483 r!7292) s!2326) e!3307925)))

(declare-fun bm!380340 () Bool)

(assert (=> bm!380340 (= call!380346 (isEmpty!33103 s!2326))))

(declare-fun b!5325009 () Bool)

(declare-fun e!3307927 () Bool)

(assert (=> b!5325009 (= e!3307923 e!3307927)))

(declare-fun res!2258642 () Bool)

(assert (=> b!5325009 (= res!2258642 (matchRSpec!2088 (regOne!30483 (regTwo!30483 r!7292)) s!2326))))

(assert (=> b!5325009 (=> res!2258642 e!3307927)))

(declare-fun b!5325010 () Bool)

(declare-fun c!925751 () Bool)

(assert (=> b!5325010 (= c!925751 ((_ is Union!14985) (regTwo!30483 r!7292)))))

(assert (=> b!5325010 (= e!3307928 e!3307923)))

(declare-fun b!5325011 () Bool)

(declare-fun e!3307922 () Bool)

(assert (=> b!5325011 (= e!3307925 e!3307922)))

(declare-fun res!2258641 () Bool)

(assert (=> b!5325011 (= res!2258641 (not ((_ is EmptyLang!14985) (regTwo!30483 r!7292))))))

(assert (=> b!5325011 (=> (not res!2258641) (not e!3307922))))

(declare-fun bm!380341 () Bool)

(assert (=> bm!380341 (= call!380345 (Exists!2166 (ite c!925752 lambda!271802 lambda!271804)))))

(declare-fun b!5325012 () Bool)

(declare-fun c!925750 () Bool)

(assert (=> b!5325012 (= c!925750 ((_ is ElementMatch!14985) (regTwo!30483 r!7292)))))

(assert (=> b!5325012 (= e!3307922 e!3307928)))

(declare-fun b!5325013 () Bool)

(assert (=> b!5325013 (= e!3307927 (matchRSpec!2088 (regTwo!30483 (regTwo!30483 r!7292)) s!2326))))

(assert (= (and d!1710232 c!925749) b!5325005))

(assert (= (and d!1710232 (not c!925749)) b!5325011))

(assert (= (and b!5325011 res!2258641) b!5325012))

(assert (= (and b!5325012 c!925750) b!5325004))

(assert (= (and b!5325012 (not c!925750)) b!5325010))

(assert (= (and b!5325010 c!925751) b!5325009))

(assert (= (and b!5325010 (not c!925751)) b!5325003))

(assert (= (and b!5325009 (not res!2258642)) b!5325013))

(assert (= (and b!5325003 c!925752) b!5325007))

(assert (= (and b!5325003 (not c!925752)) b!5325008))

(assert (= (and b!5325007 (not res!2258643)) b!5325006))

(assert (= (or b!5325006 b!5325008) bm!380341))

(assert (= (or b!5325005 b!5325007) bm!380340))

(assert (=> bm!380340 m!6358744))

(declare-fun m!6359330 () Bool)

(assert (=> b!5325009 m!6359330))

(declare-fun m!6359332 () Bool)

(assert (=> bm!380341 m!6359332))

(declare-fun m!6359334 () Bool)

(assert (=> b!5325013 m!6359334))

(assert (=> b!5324476 d!1710232))

(declare-fun d!1710246 () Bool)

(assert (=> d!1710246 (= (isConcat!405 lt!2172760) ((_ is Concat!23830) lt!2172760))))

(assert (=> b!5323858 d!1710246))

(declare-fun d!1710248 () Bool)

(assert (=> d!1710248 (= (Exists!2166 (ite c!925587 lambda!271760 lambda!271761)) (choose!39862 (ite c!925587 lambda!271760 lambda!271761)))))

(declare-fun bs!1234078 () Bool)

(assert (= bs!1234078 d!1710248))

(declare-fun m!6359336 () Bool)

(assert (=> bs!1234078 m!6359336))

(assert (=> bm!380240 d!1710248))

(declare-fun d!1710250 () Bool)

(declare-fun res!2258654 () Bool)

(declare-fun e!3307945 () Bool)

(assert (=> d!1710250 (=> res!2258654 e!3307945)))

(assert (=> d!1710250 (= res!2258654 ((_ is Nil!61130) (exprs!4869 setElem!34289)))))

(assert (=> d!1710250 (= (forall!14403 (exprs!4869 setElem!34289) lambda!271765) e!3307945)))

(declare-fun b!5325038 () Bool)

(declare-fun e!3307946 () Bool)

(assert (=> b!5325038 (= e!3307945 e!3307946)))

(declare-fun res!2258655 () Bool)

(assert (=> b!5325038 (=> (not res!2258655) (not e!3307946))))

(assert (=> b!5325038 (= res!2258655 (dynLambda!24169 lambda!271765 (h!67578 (exprs!4869 setElem!34289))))))

(declare-fun b!5325039 () Bool)

(assert (=> b!5325039 (= e!3307946 (forall!14403 (t!374467 (exprs!4869 setElem!34289)) lambda!271765))))

(assert (= (and d!1710250 (not res!2258654)) b!5325038))

(assert (= (and b!5325038 res!2258655) b!5325039))

(declare-fun b_lambda!204821 () Bool)

(assert (=> (not b_lambda!204821) (not b!5325038)))

(declare-fun m!6359338 () Bool)

(assert (=> b!5325038 m!6359338))

(declare-fun m!6359340 () Bool)

(assert (=> b!5325039 m!6359340))

(assert (=> d!1709998 d!1710250))

(declare-fun b!5325063 () Bool)

(declare-fun res!2258664 () Bool)

(declare-fun e!3307960 () Bool)

(assert (=> b!5325063 (=> (not res!2258664) (not e!3307960))))

(declare-fun lt!2172929 () List!61255)

(declare-fun size!39769 (List!61255) Int)

(assert (=> b!5325063 (= res!2258664 (= (size!39769 lt!2172929) (+ (size!39769 (_1!35487 (get!21026 lt!2172830))) (size!39769 (_2!35487 (get!21026 lt!2172830))))))))

(declare-fun b!5325062 () Bool)

(declare-fun e!3307959 () List!61255)

(assert (=> b!5325062 (= e!3307959 (Cons!61131 (h!67579 (_1!35487 (get!21026 lt!2172830))) (++!13328 (t!374468 (_1!35487 (get!21026 lt!2172830))) (_2!35487 (get!21026 lt!2172830)))))))

(declare-fun d!1710252 () Bool)

(assert (=> d!1710252 e!3307960))

(declare-fun res!2258663 () Bool)

(assert (=> d!1710252 (=> (not res!2258663) (not e!3307960))))

(declare-fun content!10903 (List!61255) (InoxSet C!30240))

(assert (=> d!1710252 (= res!2258663 (= (content!10903 lt!2172929) ((_ map or) (content!10903 (_1!35487 (get!21026 lt!2172830))) (content!10903 (_2!35487 (get!21026 lt!2172830))))))))

(assert (=> d!1710252 (= lt!2172929 e!3307959)))

(declare-fun c!925767 () Bool)

(assert (=> d!1710252 (= c!925767 ((_ is Nil!61131) (_1!35487 (get!21026 lt!2172830))))))

(assert (=> d!1710252 (= (++!13328 (_1!35487 (get!21026 lt!2172830)) (_2!35487 (get!21026 lt!2172830))) lt!2172929)))

(declare-fun b!5325061 () Bool)

(assert (=> b!5325061 (= e!3307959 (_2!35487 (get!21026 lt!2172830)))))

(declare-fun b!5325064 () Bool)

(assert (=> b!5325064 (= e!3307960 (or (not (= (_2!35487 (get!21026 lt!2172830)) Nil!61131)) (= lt!2172929 (_1!35487 (get!21026 lt!2172830)))))))

(assert (= (and d!1710252 c!925767) b!5325061))

(assert (= (and d!1710252 (not c!925767)) b!5325062))

(assert (= (and d!1710252 res!2258663) b!5325063))

(assert (= (and b!5325063 res!2258664) b!5325064))

(declare-fun m!6359352 () Bool)

(assert (=> b!5325063 m!6359352))

(declare-fun m!6359356 () Bool)

(assert (=> b!5325063 m!6359356))

(declare-fun m!6359360 () Bool)

(assert (=> b!5325063 m!6359360))

(declare-fun m!6359364 () Bool)

(assert (=> b!5325062 m!6359364))

(declare-fun m!6359366 () Bool)

(assert (=> d!1710252 m!6359366))

(declare-fun m!6359368 () Bool)

(assert (=> d!1710252 m!6359368))

(declare-fun m!6359372 () Bool)

(assert (=> d!1710252 m!6359372))

(assert (=> b!5324294 d!1710252))

(assert (=> b!5324294 d!1710222))

(declare-fun d!1710258 () Bool)

(declare-fun c!925768 () Bool)

(assert (=> d!1710258 (= c!925768 (isEmpty!33103 (tail!10511 s!2326)))))

(declare-fun e!3307961 () Bool)

(assert (=> d!1710258 (= (matchZipper!1229 (derivationStepZipper!1226 lt!2172707 (head!11414 s!2326)) (tail!10511 s!2326)) e!3307961)))

(declare-fun b!5325065 () Bool)

(assert (=> b!5325065 (= e!3307961 (nullableZipper!1348 (derivationStepZipper!1226 lt!2172707 (head!11414 s!2326))))))

(declare-fun b!5325066 () Bool)

(assert (=> b!5325066 (= e!3307961 (matchZipper!1229 (derivationStepZipper!1226 (derivationStepZipper!1226 lt!2172707 (head!11414 s!2326)) (head!11414 (tail!10511 s!2326))) (tail!10511 (tail!10511 s!2326))))))

(assert (= (and d!1710258 c!925768) b!5325065))

(assert (= (and d!1710258 (not c!925768)) b!5325066))

(assert (=> d!1710258 m!6358758))

(assert (=> d!1710258 m!6358760))

(assert (=> b!5325065 m!6358776))

(declare-fun m!6359376 () Bool)

(assert (=> b!5325065 m!6359376))

(assert (=> b!5325066 m!6358758))

(declare-fun m!6359378 () Bool)

(assert (=> b!5325066 m!6359378))

(assert (=> b!5325066 m!6358776))

(assert (=> b!5325066 m!6359378))

(declare-fun m!6359380 () Bool)

(assert (=> b!5325066 m!6359380))

(assert (=> b!5325066 m!6358758))

(declare-fun m!6359382 () Bool)

(assert (=> b!5325066 m!6359382))

(assert (=> b!5325066 m!6359380))

(assert (=> b!5325066 m!6359382))

(declare-fun m!6359384 () Bool)

(assert (=> b!5325066 m!6359384))

(assert (=> b!5324455 d!1710258))

(declare-fun bs!1234093 () Bool)

(declare-fun d!1710266 () Bool)

(assert (= bs!1234093 (and d!1710266 b!5323675)))

(declare-fun lambda!271807 () Int)

(assert (=> bs!1234093 (= (= (head!11414 s!2326) (h!67579 s!2326)) (= lambda!271807 lambda!271672))))

(declare-fun bs!1234094 () Bool)

(assert (= bs!1234094 (and d!1710266 d!1709960)))

(assert (=> bs!1234094 (= (= (head!11414 s!2326) (h!67579 s!2326)) (= lambda!271807 lambda!271749))))

(assert (=> d!1710266 true))

(assert (=> d!1710266 (= (derivationStepZipper!1226 lt!2172707 (head!11414 s!2326)) (flatMap!712 lt!2172707 lambda!271807))))

(declare-fun bs!1234095 () Bool)

(assert (= bs!1234095 d!1710266))

(declare-fun m!6359392 () Bool)

(assert (=> bs!1234095 m!6359392))

(assert (=> b!5324455 d!1710266))

(declare-fun d!1710270 () Bool)

(assert (=> d!1710270 (= (head!11414 s!2326) (h!67579 s!2326))))

(assert (=> b!5324455 d!1710270))

(assert (=> b!5324455 d!1710164))

(declare-fun b!5325077 () Bool)

(declare-fun e!3307971 () Bool)

(declare-fun call!380360 () Bool)

(assert (=> b!5325077 (= e!3307971 call!380360)))

(declare-fun b!5325078 () Bool)

(declare-fun e!3307969 () Bool)

(declare-fun e!3307968 () Bool)

(assert (=> b!5325078 (= e!3307969 e!3307968)))

(declare-fun res!2258671 () Bool)

(assert (=> b!5325078 (=> (not res!2258671) (not e!3307968))))

(declare-fun call!380362 () Bool)

(assert (=> b!5325078 (= res!2258671 call!380362)))

(declare-fun b!5325079 () Bool)

(declare-fun res!2258669 () Bool)

(assert (=> b!5325079 (=> res!2258669 e!3307969)))

(assert (=> b!5325079 (= res!2258669 (not ((_ is Concat!23830) (ite c!925619 (reg!15314 r!7292) (ite c!925618 (regTwo!30483 r!7292) (regTwo!30482 r!7292))))))))

(declare-fun e!3307973 () Bool)

(assert (=> b!5325079 (= e!3307973 e!3307969)))

(declare-fun c!925774 () Bool)

(declare-fun bm!380355 () Bool)

(declare-fun c!925773 () Bool)

(assert (=> bm!380355 (= call!380360 (validRegex!6721 (ite c!925774 (reg!15314 (ite c!925619 (reg!15314 r!7292) (ite c!925618 (regTwo!30483 r!7292) (regTwo!30482 r!7292)))) (ite c!925773 (regTwo!30483 (ite c!925619 (reg!15314 r!7292) (ite c!925618 (regTwo!30483 r!7292) (regTwo!30482 r!7292)))) (regTwo!30482 (ite c!925619 (reg!15314 r!7292) (ite c!925618 (regTwo!30483 r!7292) (regTwo!30482 r!7292))))))))))

(declare-fun b!5325080 () Bool)

(declare-fun e!3307972 () Bool)

(assert (=> b!5325080 (= e!3307972 e!3307973)))

(assert (=> b!5325080 (= c!925773 ((_ is Union!14985) (ite c!925619 (reg!15314 r!7292) (ite c!925618 (regTwo!30483 r!7292) (regTwo!30482 r!7292)))))))

(declare-fun d!1710276 () Bool)

(declare-fun res!2258668 () Bool)

(declare-fun e!3307970 () Bool)

(assert (=> d!1710276 (=> res!2258668 e!3307970)))

(assert (=> d!1710276 (= res!2258668 ((_ is ElementMatch!14985) (ite c!925619 (reg!15314 r!7292) (ite c!925618 (regTwo!30483 r!7292) (regTwo!30482 r!7292)))))))

(assert (=> d!1710276 (= (validRegex!6721 (ite c!925619 (reg!15314 r!7292) (ite c!925618 (regTwo!30483 r!7292) (regTwo!30482 r!7292)))) e!3307970)))

(declare-fun b!5325081 () Bool)

(declare-fun res!2258670 () Bool)

(declare-fun e!3307974 () Bool)

(assert (=> b!5325081 (=> (not res!2258670) (not e!3307974))))

(assert (=> b!5325081 (= res!2258670 call!380362)))

(assert (=> b!5325081 (= e!3307973 e!3307974)))

(declare-fun bm!380356 () Bool)

(assert (=> bm!380356 (= call!380362 (validRegex!6721 (ite c!925773 (regOne!30483 (ite c!925619 (reg!15314 r!7292) (ite c!925618 (regTwo!30483 r!7292) (regTwo!30482 r!7292)))) (regOne!30482 (ite c!925619 (reg!15314 r!7292) (ite c!925618 (regTwo!30483 r!7292) (regTwo!30482 r!7292)))))))))

(declare-fun b!5325082 () Bool)

(declare-fun call!380361 () Bool)

(assert (=> b!5325082 (= e!3307974 call!380361)))

(declare-fun b!5325083 () Bool)

(assert (=> b!5325083 (= e!3307968 call!380361)))

(declare-fun b!5325084 () Bool)

(assert (=> b!5325084 (= e!3307972 e!3307971)))

(declare-fun res!2258667 () Bool)

(assert (=> b!5325084 (= res!2258667 (not (nullable!5154 (reg!15314 (ite c!925619 (reg!15314 r!7292) (ite c!925618 (regTwo!30483 r!7292) (regTwo!30482 r!7292)))))))))

(assert (=> b!5325084 (=> (not res!2258667) (not e!3307971))))

(declare-fun bm!380357 () Bool)

(assert (=> bm!380357 (= call!380361 call!380360)))

(declare-fun b!5325085 () Bool)

(assert (=> b!5325085 (= e!3307970 e!3307972)))

(assert (=> b!5325085 (= c!925774 ((_ is Star!14985) (ite c!925619 (reg!15314 r!7292) (ite c!925618 (regTwo!30483 r!7292) (regTwo!30482 r!7292)))))))

(assert (= (and d!1710276 (not res!2258668)) b!5325085))

(assert (= (and b!5325085 c!925774) b!5325084))

(assert (= (and b!5325085 (not c!925774)) b!5325080))

(assert (= (and b!5325084 res!2258667) b!5325077))

(assert (= (and b!5325080 c!925773) b!5325081))

(assert (= (and b!5325080 (not c!925773)) b!5325079))

(assert (= (and b!5325081 res!2258670) b!5325082))

(assert (= (and b!5325079 (not res!2258669)) b!5325078))

(assert (= (and b!5325078 res!2258671) b!5325083))

(assert (= (or b!5325082 b!5325083) bm!380357))

(assert (= (or b!5325081 b!5325078) bm!380356))

(assert (= (or b!5325077 bm!380357) bm!380355))

(declare-fun m!6359406 () Bool)

(assert (=> bm!380355 m!6359406))

(declare-fun m!6359408 () Bool)

(assert (=> bm!380356 m!6359408))

(declare-fun m!6359410 () Bool)

(assert (=> b!5325084 m!6359410))

(assert (=> bm!380253 d!1710276))

(declare-fun b!5325102 () Bool)

(declare-fun e!3307987 () (InoxSet Context!8738))

(declare-fun call!380366 () (InoxSet Context!8738))

(declare-fun call!380368 () (InoxSet Context!8738))

(assert (=> b!5325102 (= e!3307987 ((_ map or) call!380366 call!380368))))

(declare-fun b!5325103 () Bool)

(declare-fun e!3307990 () (InoxSet Context!8738))

(declare-fun call!380370 () (InoxSet Context!8738))

(assert (=> b!5325103 (= e!3307990 call!380370)))

(declare-fun b!5325104 () Bool)

(declare-fun c!925781 () Bool)

(assert (=> b!5325104 (= c!925781 ((_ is Star!14985) (ite c!925510 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292))))))))

(declare-fun e!3307985 () (InoxSet Context!8738))

(assert (=> b!5325104 (= e!3307985 e!3307990)))

(declare-fun b!5325105 () Bool)

(declare-fun e!3307986 () (InoxSet Context!8738))

(assert (=> b!5325105 (= e!3307986 (store ((as const (Array Context!8738 Bool)) false) (ite c!925510 (Context!8739 lt!2172697) (Context!8739 call!380223)) true))))

(declare-fun bm!380361 () Bool)

(declare-fun call!380371 () List!61254)

(declare-fun call!380367 () List!61254)

(assert (=> bm!380361 (= call!380371 call!380367)))

(declare-fun c!925784 () Bool)

(declare-fun c!925783 () Bool)

(declare-fun bm!380362 () Bool)

(assert (=> bm!380362 (= call!380367 ($colon$colon!1398 (exprs!4869 (ite c!925510 (Context!8739 lt!2172697) (Context!8739 call!380223))) (ite (or c!925784 c!925783) (regTwo!30482 (ite c!925510 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292))))) (ite c!925510 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292)))))))))

(declare-fun bm!380363 () Bool)

(declare-fun c!925785 () Bool)

(assert (=> bm!380363 (= call!380366 (derivationStepZipperDown!433 (ite c!925785 (regOne!30483 (ite c!925510 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292))))) (regOne!30482 (ite c!925510 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292)))))) (ite c!925785 (ite c!925510 (Context!8739 lt!2172697) (Context!8739 call!380223)) (Context!8739 call!380367)) (h!67579 s!2326)))))

(declare-fun bm!380364 () Bool)

(declare-fun call!380369 () (InoxSet Context!8738))

(assert (=> bm!380364 (= call!380370 call!380369)))

(declare-fun b!5325106 () Bool)

(declare-fun e!3307988 () Bool)

(assert (=> b!5325106 (= c!925784 e!3307988)))

(declare-fun res!2258676 () Bool)

(assert (=> b!5325106 (=> (not res!2258676) (not e!3307988))))

(assert (=> b!5325106 (= res!2258676 ((_ is Concat!23830) (ite c!925510 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292))))))))

(declare-fun e!3307989 () (InoxSet Context!8738))

(assert (=> b!5325106 (= e!3307987 e!3307989)))

(declare-fun b!5325107 () Bool)

(assert (=> b!5325107 (= e!3307985 call!380370)))

(declare-fun d!1710284 () Bool)

(declare-fun c!925782 () Bool)

(assert (=> d!1710284 (= c!925782 (and ((_ is ElementMatch!14985) (ite c!925510 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292))))) (= (c!925355 (ite c!925510 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292))))) (h!67579 s!2326))))))

(assert (=> d!1710284 (= (derivationStepZipperDown!433 (ite c!925510 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292)))) (ite c!925510 (Context!8739 lt!2172697) (Context!8739 call!380223)) (h!67579 s!2326)) e!3307986)))

(declare-fun b!5325108 () Bool)

(assert (=> b!5325108 (= e!3307988 (nullable!5154 (regOne!30482 (ite c!925510 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292)))))))))

(declare-fun b!5325109 () Bool)

(assert (=> b!5325109 (= e!3307989 ((_ map or) call!380366 call!380369))))

(declare-fun bm!380365 () Bool)

(assert (=> bm!380365 (= call!380369 call!380368)))

(declare-fun b!5325110 () Bool)

(assert (=> b!5325110 (= e!3307989 e!3307985)))

(assert (=> b!5325110 (= c!925783 ((_ is Concat!23830) (ite c!925510 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292))))))))

(declare-fun b!5325111 () Bool)

(assert (=> b!5325111 (= e!3307986 e!3307987)))

(assert (=> b!5325111 (= c!925785 ((_ is Union!14985) (ite c!925510 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292))))))))

(declare-fun b!5325112 () Bool)

(assert (=> b!5325112 (= e!3307990 ((as const (Array Context!8738 Bool)) false))))

(declare-fun bm!380366 () Bool)

(assert (=> bm!380366 (= call!380368 (derivationStepZipperDown!433 (ite c!925785 (regTwo!30483 (ite c!925510 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292))))) (ite c!925784 (regTwo!30482 (ite c!925510 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292))))) (ite c!925783 (regOne!30482 (ite c!925510 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292))))) (reg!15314 (ite c!925510 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292)))))))) (ite (or c!925785 c!925784) (ite c!925510 (Context!8739 lt!2172697) (Context!8739 call!380223)) (Context!8739 call!380371)) (h!67579 s!2326)))))

(assert (= (and d!1710284 c!925782) b!5325105))

(assert (= (and d!1710284 (not c!925782)) b!5325111))

(assert (= (and b!5325111 c!925785) b!5325102))

(assert (= (and b!5325111 (not c!925785)) b!5325106))

(assert (= (and b!5325106 res!2258676) b!5325108))

(assert (= (and b!5325106 c!925784) b!5325109))

(assert (= (and b!5325106 (not c!925784)) b!5325110))

(assert (= (and b!5325110 c!925783) b!5325107))

(assert (= (and b!5325110 (not c!925783)) b!5325104))

(assert (= (and b!5325104 c!925781) b!5325103))

(assert (= (and b!5325104 (not c!925781)) b!5325112))

(assert (= (or b!5325107 b!5325103) bm!380361))

(assert (= (or b!5325107 b!5325103) bm!380364))

(assert (= (or b!5325109 bm!380361) bm!380362))

(assert (= (or b!5325109 bm!380364) bm!380365))

(assert (= (or b!5325102 bm!380365) bm!380366))

(assert (= (or b!5325102 b!5325109) bm!380363))

(declare-fun m!6359414 () Bool)

(assert (=> bm!380366 m!6359414))

(declare-fun m!6359416 () Bool)

(assert (=> bm!380363 m!6359416))

(declare-fun m!6359418 () Bool)

(assert (=> b!5325108 m!6359418))

(declare-fun m!6359420 () Bool)

(assert (=> b!5325105 m!6359420))

(declare-fun m!6359422 () Bool)

(assert (=> bm!380362 m!6359422))

(assert (=> bm!380219 d!1710284))

(declare-fun b!5325113 () Bool)

(declare-fun e!3307993 () (InoxSet Context!8738))

(declare-fun call!380372 () (InoxSet Context!8738))

(declare-fun call!380374 () (InoxSet Context!8738))

(assert (=> b!5325113 (= e!3307993 ((_ map or) call!380372 call!380374))))

(declare-fun b!5325114 () Bool)

(declare-fun e!3307996 () (InoxSet Context!8738))

(declare-fun call!380376 () (InoxSet Context!8738))

(assert (=> b!5325114 (= e!3307996 call!380376)))

(declare-fun b!5325115 () Bool)

(declare-fun c!925786 () Bool)

(assert (=> b!5325115 (= c!925786 ((_ is Star!14985) (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun e!3307991 () (InoxSet Context!8738))

(assert (=> b!5325115 (= e!3307991 e!3307996)))

(declare-fun b!5325116 () Bool)

(declare-fun e!3307992 () (InoxSet Context!8738))

(assert (=> b!5325116 (= e!3307992 (store ((as const (Array Context!8738 Bool)) false) (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343)))) true))))

(declare-fun bm!380367 () Bool)

(declare-fun call!380377 () List!61254)

(declare-fun call!380373 () List!61254)

(assert (=> bm!380367 (= call!380377 call!380373)))

(declare-fun c!925788 () Bool)

(declare-fun bm!380368 () Bool)

(declare-fun c!925789 () Bool)

(assert (=> bm!380368 (= call!380373 ($colon$colon!1398 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343))))) (ite (or c!925789 c!925788) (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (h!67578 (exprs!4869 (h!67580 zl!343))))))))

(declare-fun c!925790 () Bool)

(declare-fun bm!380369 () Bool)

(assert (=> bm!380369 (= call!380372 (derivationStepZipperDown!433 (ite c!925790 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343))))) (ite c!925790 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343)))) (Context!8739 call!380373)) (h!67579 s!2326)))))

(declare-fun bm!380370 () Bool)

(declare-fun call!380375 () (InoxSet Context!8738))

(assert (=> bm!380370 (= call!380376 call!380375)))

(declare-fun b!5325117 () Bool)

(declare-fun e!3307994 () Bool)

(assert (=> b!5325117 (= c!925789 e!3307994)))

(declare-fun res!2258677 () Bool)

(assert (=> b!5325117 (=> (not res!2258677) (not e!3307994))))

(assert (=> b!5325117 (= res!2258677 ((_ is Concat!23830) (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun e!3307995 () (InoxSet Context!8738))

(assert (=> b!5325117 (= e!3307993 e!3307995)))

(declare-fun b!5325118 () Bool)

(assert (=> b!5325118 (= e!3307991 call!380376)))

(declare-fun d!1710288 () Bool)

(declare-fun c!925787 () Bool)

(assert (=> d!1710288 (= c!925787 (and ((_ is ElementMatch!14985) (h!67578 (exprs!4869 (h!67580 zl!343)))) (= (c!925355 (h!67578 (exprs!4869 (h!67580 zl!343)))) (h!67579 s!2326))))))

(assert (=> d!1710288 (= (derivationStepZipperDown!433 (h!67578 (exprs!4869 (h!67580 zl!343))) (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343)))) (h!67579 s!2326)) e!3307992)))

(declare-fun b!5325119 () Bool)

(assert (=> b!5325119 (= e!3307994 (nullable!5154 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343))))))))

(declare-fun b!5325120 () Bool)

(assert (=> b!5325120 (= e!3307995 ((_ map or) call!380372 call!380375))))

(declare-fun bm!380371 () Bool)

(assert (=> bm!380371 (= call!380375 call!380374)))

(declare-fun b!5325121 () Bool)

(assert (=> b!5325121 (= e!3307995 e!3307991)))

(assert (=> b!5325121 (= c!925788 ((_ is Concat!23830) (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun b!5325122 () Bool)

(assert (=> b!5325122 (= e!3307992 e!3307993)))

(assert (=> b!5325122 (= c!925790 ((_ is Union!14985) (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun b!5325123 () Bool)

(assert (=> b!5325123 (= e!3307996 ((as const (Array Context!8738 Bool)) false))))

(declare-fun bm!380372 () Bool)

(assert (=> bm!380372 (= call!380374 (derivationStepZipperDown!433 (ite c!925790 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925789 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925788 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343))))))) (ite (or c!925790 c!925789) (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343)))) (Context!8739 call!380377)) (h!67579 s!2326)))))

(assert (= (and d!1710288 c!925787) b!5325116))

(assert (= (and d!1710288 (not c!925787)) b!5325122))

(assert (= (and b!5325122 c!925790) b!5325113))

(assert (= (and b!5325122 (not c!925790)) b!5325117))

(assert (= (and b!5325117 res!2258677) b!5325119))

(assert (= (and b!5325117 c!925789) b!5325120))

(assert (= (and b!5325117 (not c!925789)) b!5325121))

(assert (= (and b!5325121 c!925788) b!5325118))

(assert (= (and b!5325121 (not c!925788)) b!5325115))

(assert (= (and b!5325115 c!925786) b!5325114))

(assert (= (and b!5325115 (not c!925786)) b!5325123))

(assert (= (or b!5325118 b!5325114) bm!380367))

(assert (= (or b!5325118 b!5325114) bm!380370))

(assert (= (or b!5325120 bm!380367) bm!380368))

(assert (= (or b!5325120 bm!380370) bm!380371))

(assert (= (or b!5325113 bm!380371) bm!380372))

(assert (= (or b!5325113 b!5325120) bm!380369))

(declare-fun m!6359424 () Bool)

(assert (=> bm!380372 m!6359424))

(declare-fun m!6359426 () Bool)

(assert (=> bm!380369 m!6359426))

(assert (=> b!5325119 m!6358604))

(declare-fun m!6359428 () Bool)

(assert (=> b!5325116 m!6359428))

(declare-fun m!6359430 () Bool)

(assert (=> bm!380368 m!6359430))

(assert (=> bm!380231 d!1710288))

(declare-fun b!5325124 () Bool)

(declare-fun e!3308000 () Bool)

(declare-fun call!380378 () Bool)

(assert (=> b!5325124 (= e!3308000 call!380378)))

(declare-fun b!5325125 () Bool)

(declare-fun e!3307998 () Bool)

(declare-fun e!3307997 () Bool)

(assert (=> b!5325125 (= e!3307998 e!3307997)))

(declare-fun res!2258682 () Bool)

(assert (=> b!5325125 (=> (not res!2258682) (not e!3307997))))

(declare-fun call!380380 () Bool)

(assert (=> b!5325125 (= res!2258682 call!380380)))

(declare-fun b!5325126 () Bool)

(declare-fun res!2258680 () Bool)

(assert (=> b!5325126 (=> res!2258680 e!3307998)))

(assert (=> b!5325126 (= res!2258680 (not ((_ is Concat!23830) lt!2172840)))))

(declare-fun e!3308002 () Bool)

(assert (=> b!5325126 (= e!3308002 e!3307998)))

(declare-fun bm!380373 () Bool)

(declare-fun c!925792 () Bool)

(declare-fun c!925791 () Bool)

(assert (=> bm!380373 (= call!380378 (validRegex!6721 (ite c!925792 (reg!15314 lt!2172840) (ite c!925791 (regTwo!30483 lt!2172840) (regTwo!30482 lt!2172840)))))))

(declare-fun b!5325127 () Bool)

(declare-fun e!3308001 () Bool)

(assert (=> b!5325127 (= e!3308001 e!3308002)))

(assert (=> b!5325127 (= c!925791 ((_ is Union!14985) lt!2172840))))

(declare-fun d!1710290 () Bool)

(declare-fun res!2258679 () Bool)

(declare-fun e!3307999 () Bool)

(assert (=> d!1710290 (=> res!2258679 e!3307999)))

(assert (=> d!1710290 (= res!2258679 ((_ is ElementMatch!14985) lt!2172840))))

(assert (=> d!1710290 (= (validRegex!6721 lt!2172840) e!3307999)))

(declare-fun b!5325128 () Bool)

(declare-fun res!2258681 () Bool)

(declare-fun e!3308003 () Bool)

(assert (=> b!5325128 (=> (not res!2258681) (not e!3308003))))

(assert (=> b!5325128 (= res!2258681 call!380380)))

(assert (=> b!5325128 (= e!3308002 e!3308003)))

(declare-fun bm!380374 () Bool)

(assert (=> bm!380374 (= call!380380 (validRegex!6721 (ite c!925791 (regOne!30483 lt!2172840) (regOne!30482 lt!2172840))))))

(declare-fun b!5325129 () Bool)

(declare-fun call!380379 () Bool)

(assert (=> b!5325129 (= e!3308003 call!380379)))

(declare-fun b!5325130 () Bool)

(assert (=> b!5325130 (= e!3307997 call!380379)))

(declare-fun b!5325131 () Bool)

(assert (=> b!5325131 (= e!3308001 e!3308000)))

(declare-fun res!2258678 () Bool)

(assert (=> b!5325131 (= res!2258678 (not (nullable!5154 (reg!15314 lt!2172840))))))

(assert (=> b!5325131 (=> (not res!2258678) (not e!3308000))))

(declare-fun bm!380375 () Bool)

(assert (=> bm!380375 (= call!380379 call!380378)))

(declare-fun b!5325132 () Bool)

(assert (=> b!5325132 (= e!3307999 e!3308001)))

(assert (=> b!5325132 (= c!925792 ((_ is Star!14985) lt!2172840))))

(assert (= (and d!1710290 (not res!2258679)) b!5325132))

(assert (= (and b!5325132 c!925792) b!5325131))

(assert (= (and b!5325132 (not c!925792)) b!5325127))

(assert (= (and b!5325131 res!2258678) b!5325124))

(assert (= (and b!5325127 c!925791) b!5325128))

(assert (= (and b!5325127 (not c!925791)) b!5325126))

(assert (= (and b!5325128 res!2258681) b!5325129))

(assert (= (and b!5325126 (not res!2258680)) b!5325125))

(assert (= (and b!5325125 res!2258682) b!5325130))

(assert (= (or b!5325129 b!5325130) bm!380375))

(assert (= (or b!5325128 b!5325125) bm!380374))

(assert (= (or b!5325124 bm!380375) bm!380373))

(declare-fun m!6359432 () Bool)

(assert (=> bm!380373 m!6359432))

(declare-fun m!6359434 () Bool)

(assert (=> bm!380374 m!6359434))

(declare-fun m!6359436 () Bool)

(assert (=> b!5325131 m!6359436))

(assert (=> d!1709962 d!1710290))

(assert (=> d!1709962 d!1709970))

(assert (=> d!1709962 d!1709972))

(declare-fun d!1710292 () Bool)

(assert (=> d!1710292 (= (isDefined!11799 lt!2172830) (not (isEmpty!33104 lt!2172830)))))

(declare-fun bs!1234108 () Bool)

(assert (= bs!1234108 d!1710292))

(declare-fun m!6359438 () Bool)

(assert (=> bs!1234108 m!6359438))

(assert (=> d!1709934 d!1710292))

(declare-fun b!5325134 () Bool)

(declare-fun e!3308005 () Bool)

(assert (=> b!5325134 (= e!3308005 (nullable!5154 (regOne!30482 r!7292)))))

(declare-fun b!5325135 () Bool)

(declare-fun e!3308006 () Bool)

(assert (=> b!5325135 (= e!3308006 (not (= (head!11414 Nil!61131) (c!925355 (regOne!30482 r!7292)))))))

(declare-fun b!5325136 () Bool)

(declare-fun e!3308010 () Bool)

(declare-fun lt!2172930 () Bool)

(assert (=> b!5325136 (= e!3308010 (not lt!2172930))))

(declare-fun b!5325137 () Bool)

(declare-fun e!3308008 () Bool)

(declare-fun e!3308004 () Bool)

(assert (=> b!5325137 (= e!3308008 e!3308004)))

(declare-fun res!2258688 () Bool)

(assert (=> b!5325137 (=> (not res!2258688) (not e!3308004))))

(assert (=> b!5325137 (= res!2258688 (not lt!2172930))))

(declare-fun b!5325138 () Bool)

(declare-fun res!2258687 () Bool)

(declare-fun e!3308007 () Bool)

(assert (=> b!5325138 (=> (not res!2258687) (not e!3308007))))

(assert (=> b!5325138 (= res!2258687 (isEmpty!33103 (tail!10511 Nil!61131)))))

(declare-fun b!5325139 () Bool)

(declare-fun res!2258689 () Bool)

(assert (=> b!5325139 (=> res!2258689 e!3308008)))

(assert (=> b!5325139 (= res!2258689 (not ((_ is ElementMatch!14985) (regOne!30482 r!7292))))))

(assert (=> b!5325139 (= e!3308010 e!3308008)))

(declare-fun b!5325140 () Bool)

(assert (=> b!5325140 (= e!3308007 (= (head!11414 Nil!61131) (c!925355 (regOne!30482 r!7292))))))

(declare-fun b!5325141 () Bool)

(assert (=> b!5325141 (= e!3308004 e!3308006)))

(declare-fun res!2258690 () Bool)

(assert (=> b!5325141 (=> res!2258690 e!3308006)))

(declare-fun call!380381 () Bool)

(assert (=> b!5325141 (= res!2258690 call!380381)))

(declare-fun bm!380376 () Bool)

(assert (=> bm!380376 (= call!380381 (isEmpty!33103 Nil!61131))))

(declare-fun b!5325142 () Bool)

(declare-fun res!2258685 () Bool)

(assert (=> b!5325142 (=> res!2258685 e!3308006)))

(assert (=> b!5325142 (= res!2258685 (not (isEmpty!33103 (tail!10511 Nil!61131))))))

(declare-fun d!1710294 () Bool)

(declare-fun e!3308009 () Bool)

(assert (=> d!1710294 e!3308009))

(declare-fun c!925795 () Bool)

(assert (=> d!1710294 (= c!925795 ((_ is EmptyExpr!14985) (regOne!30482 r!7292)))))

(assert (=> d!1710294 (= lt!2172930 e!3308005)))

(declare-fun c!925794 () Bool)

(assert (=> d!1710294 (= c!925794 (isEmpty!33103 Nil!61131))))

(assert (=> d!1710294 (validRegex!6721 (regOne!30482 r!7292))))

(assert (=> d!1710294 (= (matchR!7170 (regOne!30482 r!7292) Nil!61131) lt!2172930)))

(declare-fun b!5325133 () Bool)

(declare-fun res!2258686 () Bool)

(assert (=> b!5325133 (=> (not res!2258686) (not e!3308007))))

(assert (=> b!5325133 (= res!2258686 (not call!380381))))

(declare-fun b!5325143 () Bool)

(assert (=> b!5325143 (= e!3308009 e!3308010)))

(declare-fun c!925793 () Bool)

(assert (=> b!5325143 (= c!925793 ((_ is EmptyLang!14985) (regOne!30482 r!7292)))))

(declare-fun b!5325144 () Bool)

(assert (=> b!5325144 (= e!3308009 (= lt!2172930 call!380381))))

(declare-fun b!5325145 () Bool)

(declare-fun res!2258684 () Bool)

(assert (=> b!5325145 (=> res!2258684 e!3308008)))

(assert (=> b!5325145 (= res!2258684 e!3308007)))

(declare-fun res!2258683 () Bool)

(assert (=> b!5325145 (=> (not res!2258683) (not e!3308007))))

(assert (=> b!5325145 (= res!2258683 lt!2172930)))

(declare-fun b!5325146 () Bool)

(assert (=> b!5325146 (= e!3308005 (matchR!7170 (derivativeStep!4169 (regOne!30482 r!7292) (head!11414 Nil!61131)) (tail!10511 Nil!61131)))))

(assert (= (and d!1710294 c!925794) b!5325134))

(assert (= (and d!1710294 (not c!925794)) b!5325146))

(assert (= (and d!1710294 c!925795) b!5325144))

(assert (= (and d!1710294 (not c!925795)) b!5325143))

(assert (= (and b!5325143 c!925793) b!5325136))

(assert (= (and b!5325143 (not c!925793)) b!5325139))

(assert (= (and b!5325139 (not res!2258689)) b!5325145))

(assert (= (and b!5325145 res!2258683) b!5325133))

(assert (= (and b!5325133 res!2258686) b!5325138))

(assert (= (and b!5325138 res!2258687) b!5325140))

(assert (= (and b!5325145 (not res!2258684)) b!5325137))

(assert (= (and b!5325137 res!2258688) b!5325141))

(assert (= (and b!5325141 (not res!2258690)) b!5325142))

(assert (= (and b!5325142 (not res!2258685)) b!5325135))

(assert (= (or b!5325144 b!5325133 b!5325141) bm!380376))

(declare-fun m!6359440 () Bool)

(assert (=> bm!380376 m!6359440))

(declare-fun m!6359442 () Bool)

(assert (=> b!5325135 m!6359442))

(assert (=> d!1710294 m!6359440))

(assert (=> d!1710294 m!6358656))

(assert (=> b!5325140 m!6359442))

(declare-fun m!6359444 () Bool)

(assert (=> b!5325138 m!6359444))

(assert (=> b!5325138 m!6359444))

(declare-fun m!6359446 () Bool)

(assert (=> b!5325138 m!6359446))

(assert (=> b!5325134 m!6359286))

(assert (=> b!5325142 m!6359444))

(assert (=> b!5325142 m!6359444))

(assert (=> b!5325142 m!6359446))

(assert (=> b!5325146 m!6359442))

(assert (=> b!5325146 m!6359442))

(declare-fun m!6359448 () Bool)

(assert (=> b!5325146 m!6359448))

(assert (=> b!5325146 m!6359444))

(assert (=> b!5325146 m!6359448))

(assert (=> b!5325146 m!6359444))

(declare-fun m!6359450 () Bool)

(assert (=> b!5325146 m!6359450))

(assert (=> d!1709934 d!1710294))

(declare-fun b!5325147 () Bool)

(declare-fun e!3308014 () Bool)

(declare-fun call!380382 () Bool)

(assert (=> b!5325147 (= e!3308014 call!380382)))

(declare-fun b!5325148 () Bool)

(declare-fun e!3308012 () Bool)

(declare-fun e!3308011 () Bool)

(assert (=> b!5325148 (= e!3308012 e!3308011)))

(declare-fun res!2258695 () Bool)

(assert (=> b!5325148 (=> (not res!2258695) (not e!3308011))))

(declare-fun call!380384 () Bool)

(assert (=> b!5325148 (= res!2258695 call!380384)))

(declare-fun b!5325149 () Bool)

(declare-fun res!2258693 () Bool)

(assert (=> b!5325149 (=> res!2258693 e!3308012)))

(assert (=> b!5325149 (= res!2258693 (not ((_ is Concat!23830) (regOne!30482 r!7292))))))

(declare-fun e!3308016 () Bool)

(assert (=> b!5325149 (= e!3308016 e!3308012)))

(declare-fun c!925797 () Bool)

(declare-fun c!925796 () Bool)

(declare-fun bm!380377 () Bool)

(assert (=> bm!380377 (= call!380382 (validRegex!6721 (ite c!925797 (reg!15314 (regOne!30482 r!7292)) (ite c!925796 (regTwo!30483 (regOne!30482 r!7292)) (regTwo!30482 (regOne!30482 r!7292))))))))

(declare-fun b!5325150 () Bool)

(declare-fun e!3308015 () Bool)

(assert (=> b!5325150 (= e!3308015 e!3308016)))

(assert (=> b!5325150 (= c!925796 ((_ is Union!14985) (regOne!30482 r!7292)))))

(declare-fun d!1710296 () Bool)

(declare-fun res!2258692 () Bool)

(declare-fun e!3308013 () Bool)

(assert (=> d!1710296 (=> res!2258692 e!3308013)))

(assert (=> d!1710296 (= res!2258692 ((_ is ElementMatch!14985) (regOne!30482 r!7292)))))

(assert (=> d!1710296 (= (validRegex!6721 (regOne!30482 r!7292)) e!3308013)))

(declare-fun b!5325151 () Bool)

(declare-fun res!2258694 () Bool)

(declare-fun e!3308017 () Bool)

(assert (=> b!5325151 (=> (not res!2258694) (not e!3308017))))

(assert (=> b!5325151 (= res!2258694 call!380384)))

(assert (=> b!5325151 (= e!3308016 e!3308017)))

(declare-fun bm!380378 () Bool)

(assert (=> bm!380378 (= call!380384 (validRegex!6721 (ite c!925796 (regOne!30483 (regOne!30482 r!7292)) (regOne!30482 (regOne!30482 r!7292)))))))

(declare-fun b!5325152 () Bool)

(declare-fun call!380383 () Bool)

(assert (=> b!5325152 (= e!3308017 call!380383)))

(declare-fun b!5325153 () Bool)

(assert (=> b!5325153 (= e!3308011 call!380383)))

(declare-fun b!5325154 () Bool)

(assert (=> b!5325154 (= e!3308015 e!3308014)))

(declare-fun res!2258691 () Bool)

(assert (=> b!5325154 (= res!2258691 (not (nullable!5154 (reg!15314 (regOne!30482 r!7292)))))))

(assert (=> b!5325154 (=> (not res!2258691) (not e!3308014))))

(declare-fun bm!380379 () Bool)

(assert (=> bm!380379 (= call!380383 call!380382)))

(declare-fun b!5325155 () Bool)

(assert (=> b!5325155 (= e!3308013 e!3308015)))

(assert (=> b!5325155 (= c!925797 ((_ is Star!14985) (regOne!30482 r!7292)))))

(assert (= (and d!1710296 (not res!2258692)) b!5325155))

(assert (= (and b!5325155 c!925797) b!5325154))

(assert (= (and b!5325155 (not c!925797)) b!5325150))

(assert (= (and b!5325154 res!2258691) b!5325147))

(assert (= (and b!5325150 c!925796) b!5325151))

(assert (= (and b!5325150 (not c!925796)) b!5325149))

(assert (= (and b!5325151 res!2258694) b!5325152))

(assert (= (and b!5325149 (not res!2258693)) b!5325148))

(assert (= (and b!5325148 res!2258695) b!5325153))

(assert (= (or b!5325152 b!5325153) bm!380379))

(assert (= (or b!5325151 b!5325148) bm!380378))

(assert (= (or b!5325147 bm!380379) bm!380377))

(declare-fun m!6359452 () Bool)

(assert (=> bm!380377 m!6359452))

(declare-fun m!6359454 () Bool)

(assert (=> bm!380378 m!6359454))

(declare-fun m!6359456 () Bool)

(assert (=> b!5325154 m!6359456))

(assert (=> d!1709934 d!1710296))

(declare-fun b!5325156 () Bool)

(declare-fun e!3308018 () (InoxSet Context!8738))

(assert (=> b!5325156 (= e!3308018 ((as const (Array Context!8738 Bool)) false))))

(declare-fun b!5325157 () Bool)

(declare-fun call!380385 () (InoxSet Context!8738))

(assert (=> b!5325157 (= e!3308018 call!380385)))

(declare-fun d!1710298 () Bool)

(declare-fun c!925799 () Bool)

(declare-fun e!3308019 () Bool)

(assert (=> d!1710298 (= c!925799 e!3308019)))

(declare-fun res!2258696 () Bool)

(assert (=> d!1710298 (=> (not res!2258696) (not e!3308019))))

(assert (=> d!1710298 (= res!2258696 ((_ is Cons!61130) (exprs!4869 (Context!8739 (t!374467 (exprs!4869 lt!2172701))))))))

(declare-fun e!3308020 () (InoxSet Context!8738))

(assert (=> d!1710298 (= (derivationStepZipperUp!357 (Context!8739 (t!374467 (exprs!4869 lt!2172701))) (h!67579 s!2326)) e!3308020)))

(declare-fun b!5325158 () Bool)

(assert (=> b!5325158 (= e!3308020 e!3308018)))

(declare-fun c!925798 () Bool)

(assert (=> b!5325158 (= c!925798 ((_ is Cons!61130) (exprs!4869 (Context!8739 (t!374467 (exprs!4869 lt!2172701))))))))

(declare-fun b!5325159 () Bool)

(assert (=> b!5325159 (= e!3308020 ((_ map or) call!380385 (derivationStepZipperUp!357 (Context!8739 (t!374467 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 lt!2172701)))))) (h!67579 s!2326))))))

(declare-fun bm!380380 () Bool)

(assert (=> bm!380380 (= call!380385 (derivationStepZipperDown!433 (h!67578 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 lt!2172701))))) (Context!8739 (t!374467 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 lt!2172701)))))) (h!67579 s!2326)))))

(declare-fun b!5325160 () Bool)

(assert (=> b!5325160 (= e!3308019 (nullable!5154 (h!67578 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 lt!2172701)))))))))

(assert (= (and d!1710298 res!2258696) b!5325160))

(assert (= (and d!1710298 c!925799) b!5325159))

(assert (= (and d!1710298 (not c!925799)) b!5325158))

(assert (= (and b!5325158 c!925798) b!5325157))

(assert (= (and b!5325158 (not c!925798)) b!5325156))

(assert (= (or b!5325159 b!5325157) bm!380380))

(declare-fun m!6359458 () Bool)

(assert (=> b!5325159 m!6359458))

(declare-fun m!6359460 () Bool)

(assert (=> bm!380380 m!6359460))

(declare-fun m!6359462 () Bool)

(assert (=> b!5325160 m!6359462))

(assert (=> b!5324315 d!1710298))

(assert (=> d!1709976 d!1709978))

(assert (=> d!1709976 d!1709984))

(declare-fun d!1710300 () Bool)

(assert (=> d!1710300 (= (matchR!7170 lt!2172700 s!2326) (matchZipper!1229 lt!2172707 s!2326))))

(assert (=> d!1710300 true))

(declare-fun _$44!1399 () Unit!153458)

(assert (=> d!1710300 (= (choose!39866 lt!2172707 lt!2172714 lt!2172700 s!2326) _$44!1399)))

(declare-fun bs!1234121 () Bool)

(assert (= bs!1234121 d!1710300))

(assert (=> bs!1234121 m!6358118))

(assert (=> bs!1234121 m!6358114))

(assert (=> d!1709976 d!1710300))

(declare-fun b!5325161 () Bool)

(declare-fun e!3308024 () Bool)

(declare-fun call!380386 () Bool)

(assert (=> b!5325161 (= e!3308024 call!380386)))

(declare-fun b!5325162 () Bool)

(declare-fun e!3308022 () Bool)

(declare-fun e!3308021 () Bool)

(assert (=> b!5325162 (= e!3308022 e!3308021)))

(declare-fun res!2258701 () Bool)

(assert (=> b!5325162 (=> (not res!2258701) (not e!3308021))))

(declare-fun call!380388 () Bool)

(assert (=> b!5325162 (= res!2258701 call!380388)))

(declare-fun b!5325163 () Bool)

(declare-fun res!2258699 () Bool)

(assert (=> b!5325163 (=> res!2258699 e!3308022)))

(assert (=> b!5325163 (= res!2258699 (not ((_ is Concat!23830) lt!2172700)))))

(declare-fun e!3308026 () Bool)

(assert (=> b!5325163 (= e!3308026 e!3308022)))

(declare-fun bm!380381 () Bool)

(declare-fun c!925800 () Bool)

(declare-fun c!925801 () Bool)

(assert (=> bm!380381 (= call!380386 (validRegex!6721 (ite c!925801 (reg!15314 lt!2172700) (ite c!925800 (regTwo!30483 lt!2172700) (regTwo!30482 lt!2172700)))))))

(declare-fun b!5325164 () Bool)

(declare-fun e!3308025 () Bool)

(assert (=> b!5325164 (= e!3308025 e!3308026)))

(assert (=> b!5325164 (= c!925800 ((_ is Union!14985) lt!2172700))))

(declare-fun d!1710304 () Bool)

(declare-fun res!2258698 () Bool)

(declare-fun e!3308023 () Bool)

(assert (=> d!1710304 (=> res!2258698 e!3308023)))

(assert (=> d!1710304 (= res!2258698 ((_ is ElementMatch!14985) lt!2172700))))

(assert (=> d!1710304 (= (validRegex!6721 lt!2172700) e!3308023)))

(declare-fun b!5325165 () Bool)

(declare-fun res!2258700 () Bool)

(declare-fun e!3308027 () Bool)

(assert (=> b!5325165 (=> (not res!2258700) (not e!3308027))))

(assert (=> b!5325165 (= res!2258700 call!380388)))

(assert (=> b!5325165 (= e!3308026 e!3308027)))

(declare-fun bm!380382 () Bool)

(assert (=> bm!380382 (= call!380388 (validRegex!6721 (ite c!925800 (regOne!30483 lt!2172700) (regOne!30482 lt!2172700))))))

(declare-fun b!5325166 () Bool)

(declare-fun call!380387 () Bool)

(assert (=> b!5325166 (= e!3308027 call!380387)))

(declare-fun b!5325167 () Bool)

(assert (=> b!5325167 (= e!3308021 call!380387)))

(declare-fun b!5325168 () Bool)

(assert (=> b!5325168 (= e!3308025 e!3308024)))

(declare-fun res!2258697 () Bool)

(assert (=> b!5325168 (= res!2258697 (not (nullable!5154 (reg!15314 lt!2172700))))))

(assert (=> b!5325168 (=> (not res!2258697) (not e!3308024))))

(declare-fun bm!380383 () Bool)

(assert (=> bm!380383 (= call!380387 call!380386)))

(declare-fun b!5325169 () Bool)

(assert (=> b!5325169 (= e!3308023 e!3308025)))

(assert (=> b!5325169 (= c!925801 ((_ is Star!14985) lt!2172700))))

(assert (= (and d!1710304 (not res!2258698)) b!5325169))

(assert (= (and b!5325169 c!925801) b!5325168))

(assert (= (and b!5325169 (not c!925801)) b!5325164))

(assert (= (and b!5325168 res!2258697) b!5325161))

(assert (= (and b!5325164 c!925800) b!5325165))

(assert (= (and b!5325164 (not c!925800)) b!5325163))

(assert (= (and b!5325165 res!2258700) b!5325166))

(assert (= (and b!5325163 (not res!2258699)) b!5325162))

(assert (= (and b!5325162 res!2258701) b!5325167))

(assert (= (or b!5325166 b!5325167) bm!380383))

(assert (= (or b!5325165 b!5325162) bm!380382))

(assert (= (or b!5325161 bm!380383) bm!380381))

(declare-fun m!6359470 () Bool)

(assert (=> bm!380381 m!6359470))

(declare-fun m!6359472 () Bool)

(assert (=> bm!380382 m!6359472))

(declare-fun m!6359474 () Bool)

(assert (=> b!5325168 m!6359474))

(assert (=> d!1709976 d!1710304))

(declare-fun d!1710308 () Bool)

(declare-fun c!925805 () Bool)

(assert (=> d!1710308 (= c!925805 ((_ is Nil!61132) lt!2172801))))

(declare-fun e!3308031 () (InoxSet Context!8738))

(assert (=> d!1710308 (= (content!10901 lt!2172801) e!3308031)))

(declare-fun b!5325176 () Bool)

(assert (=> b!5325176 (= e!3308031 ((as const (Array Context!8738 Bool)) false))))

(declare-fun b!5325177 () Bool)

(assert (=> b!5325177 (= e!3308031 ((_ map or) (store ((as const (Array Context!8738 Bool)) false) (h!67580 lt!2172801) true) (content!10901 (t!374469 lt!2172801))))))

(assert (= (and d!1710308 c!925805) b!5325176))

(assert (= (and d!1710308 (not c!925805)) b!5325177))

(declare-fun m!6359484 () Bool)

(assert (=> b!5325177 m!6359484))

(declare-fun m!6359486 () Bool)

(assert (=> b!5325177 m!6359486))

(assert (=> b!5324043 d!1710308))

(declare-fun bs!1234140 () Bool)

(declare-fun b!5325181 () Bool)

(assert (= bs!1234140 (and b!5325181 d!1709938)))

(declare-fun lambda!271812 () Int)

(assert (=> bs!1234140 (not (= lambda!271812 lambda!271737))))

(declare-fun bs!1234143 () Bool)

(assert (= bs!1234143 (and b!5325181 b!5324398)))

(assert (=> bs!1234143 (= (and (= (reg!15314 (regTwo!30483 lt!2172700)) (reg!15314 lt!2172700)) (= (regTwo!30483 lt!2172700) lt!2172700)) (= lambda!271812 lambda!271760))))

(declare-fun bs!1234145 () Bool)

(assert (= bs!1234145 (and b!5325181 b!5324471)))

(assert (=> bs!1234145 (not (= lambda!271812 lambda!271764))))

(declare-fun bs!1234146 () Bool)

(assert (= bs!1234146 (and b!5325181 b!5325006)))

(assert (=> bs!1234146 (= (and (= (reg!15314 (regTwo!30483 lt!2172700)) (reg!15314 (regTwo!30483 r!7292))) (= (regTwo!30483 lt!2172700) (regTwo!30483 r!7292))) (= lambda!271812 lambda!271802))))

(declare-fun bs!1234147 () Bool)

(assert (= bs!1234147 (and b!5325181 b!5324469)))

(assert (=> bs!1234147 (= (and (= (reg!15314 (regTwo!30483 lt!2172700)) (reg!15314 r!7292)) (= (regTwo!30483 lt!2172700) r!7292)) (= lambda!271812 lambda!271763))))

(declare-fun bs!1234148 () Bool)

(assert (= bs!1234148 (and b!5325181 b!5323677)))

(assert (=> bs!1234148 (not (= lambda!271812 lambda!271670))))

(declare-fun bs!1234149 () Bool)

(assert (= bs!1234149 (and b!5325181 b!5325008)))

(assert (=> bs!1234149 (not (= lambda!271812 lambda!271804))))

(declare-fun bs!1234150 () Bool)

(assert (= bs!1234150 (and b!5325181 d!1709942)))

(assert (=> bs!1234150 (not (= lambda!271812 lambda!271743))))

(assert (=> bs!1234148 (not (= lambda!271812 lambda!271671))))

(declare-fun bs!1234151 () Bool)

(assert (= bs!1234151 (and b!5325181 b!5324400)))

(assert (=> bs!1234151 (not (= lambda!271812 lambda!271761))))

(assert (=> bs!1234150 (not (= lambda!271812 lambda!271742))))

(assert (=> b!5325181 true))

(assert (=> b!5325181 true))

(declare-fun bs!1234152 () Bool)

(declare-fun b!5325183 () Bool)

(assert (= bs!1234152 (and b!5325183 d!1709938)))

(declare-fun lambda!271813 () Int)

(assert (=> bs!1234152 (not (= lambda!271813 lambda!271737))))

(declare-fun bs!1234154 () Bool)

(assert (= bs!1234154 (and b!5325183 b!5325181)))

(assert (=> bs!1234154 (not (= lambda!271813 lambda!271812))))

(declare-fun bs!1234157 () Bool)

(assert (= bs!1234157 (and b!5325183 b!5324398)))

(assert (=> bs!1234157 (not (= lambda!271813 lambda!271760))))

(declare-fun bs!1234159 () Bool)

(assert (= bs!1234159 (and b!5325183 b!5324471)))

(assert (=> bs!1234159 (= (and (= (regOne!30482 (regTwo!30483 lt!2172700)) (regOne!30482 r!7292)) (= (regTwo!30482 (regTwo!30483 lt!2172700)) (regTwo!30482 r!7292))) (= lambda!271813 lambda!271764))))

(declare-fun bs!1234162 () Bool)

(assert (= bs!1234162 (and b!5325183 b!5325006)))

(assert (=> bs!1234162 (not (= lambda!271813 lambda!271802))))

(declare-fun bs!1234164 () Bool)

(assert (= bs!1234164 (and b!5325183 b!5324469)))

(assert (=> bs!1234164 (not (= lambda!271813 lambda!271763))))

(declare-fun bs!1234165 () Bool)

(assert (= bs!1234165 (and b!5325183 b!5323677)))

(assert (=> bs!1234165 (not (= lambda!271813 lambda!271670))))

(declare-fun bs!1234166 () Bool)

(assert (= bs!1234166 (and b!5325183 b!5325008)))

(assert (=> bs!1234166 (= (and (= (regOne!30482 (regTwo!30483 lt!2172700)) (regOne!30482 (regTwo!30483 r!7292))) (= (regTwo!30482 (regTwo!30483 lt!2172700)) (regTwo!30482 (regTwo!30483 r!7292)))) (= lambda!271813 lambda!271804))))

(declare-fun bs!1234167 () Bool)

(assert (= bs!1234167 (and b!5325183 d!1709942)))

(assert (=> bs!1234167 (= (and (= (regOne!30482 (regTwo!30483 lt!2172700)) (regOne!30482 r!7292)) (= (regTwo!30482 (regTwo!30483 lt!2172700)) (regTwo!30482 r!7292))) (= lambda!271813 lambda!271743))))

(assert (=> bs!1234165 (= (and (= (regOne!30482 (regTwo!30483 lt!2172700)) (regOne!30482 r!7292)) (= (regTwo!30482 (regTwo!30483 lt!2172700)) (regTwo!30482 r!7292))) (= lambda!271813 lambda!271671))))

(declare-fun bs!1234168 () Bool)

(assert (= bs!1234168 (and b!5325183 b!5324400)))

(assert (=> bs!1234168 (= (and (= (regOne!30482 (regTwo!30483 lt!2172700)) (regOne!30482 lt!2172700)) (= (regTwo!30482 (regTwo!30483 lt!2172700)) (regTwo!30482 lt!2172700))) (= lambda!271813 lambda!271761))))

(assert (=> bs!1234167 (not (= lambda!271813 lambda!271742))))

(assert (=> b!5325183 true))

(assert (=> b!5325183 true))

(declare-fun b!5325178 () Bool)

(declare-fun e!3308033 () Bool)

(declare-fun e!3308036 () Bool)

(assert (=> b!5325178 (= e!3308033 e!3308036)))

(declare-fun c!925809 () Bool)

(assert (=> b!5325178 (= c!925809 ((_ is Star!14985) (regTwo!30483 lt!2172700)))))

(declare-fun b!5325179 () Bool)

(declare-fun e!3308038 () Bool)

(assert (=> b!5325179 (= e!3308038 (= s!2326 (Cons!61131 (c!925355 (regTwo!30483 lt!2172700)) Nil!61131)))))

(declare-fun b!5325180 () Bool)

(declare-fun e!3308035 () Bool)

(declare-fun call!380390 () Bool)

(assert (=> b!5325180 (= e!3308035 call!380390)))

(declare-fun e!3308034 () Bool)

(declare-fun call!380389 () Bool)

(assert (=> b!5325181 (= e!3308034 call!380389)))

(declare-fun b!5325182 () Bool)

(declare-fun res!2258704 () Bool)

(assert (=> b!5325182 (=> res!2258704 e!3308034)))

(assert (=> b!5325182 (= res!2258704 call!380390)))

(assert (=> b!5325182 (= e!3308036 e!3308034)))

(assert (=> b!5325183 (= e!3308036 call!380389)))

(declare-fun d!1710314 () Bool)

(declare-fun c!925806 () Bool)

(assert (=> d!1710314 (= c!925806 ((_ is EmptyExpr!14985) (regTwo!30483 lt!2172700)))))

(assert (=> d!1710314 (= (matchRSpec!2088 (regTwo!30483 lt!2172700) s!2326) e!3308035)))

(declare-fun bm!380384 () Bool)

(assert (=> bm!380384 (= call!380390 (isEmpty!33103 s!2326))))

(declare-fun b!5325184 () Bool)

(declare-fun e!3308037 () Bool)

(assert (=> b!5325184 (= e!3308033 e!3308037)))

(declare-fun res!2258703 () Bool)

(assert (=> b!5325184 (= res!2258703 (matchRSpec!2088 (regOne!30483 (regTwo!30483 lt!2172700)) s!2326))))

(assert (=> b!5325184 (=> res!2258703 e!3308037)))

(declare-fun b!5325185 () Bool)

(declare-fun c!925808 () Bool)

(assert (=> b!5325185 (= c!925808 ((_ is Union!14985) (regTwo!30483 lt!2172700)))))

(assert (=> b!5325185 (= e!3308038 e!3308033)))

(declare-fun b!5325186 () Bool)

(declare-fun e!3308032 () Bool)

(assert (=> b!5325186 (= e!3308035 e!3308032)))

(declare-fun res!2258702 () Bool)

(assert (=> b!5325186 (= res!2258702 (not ((_ is EmptyLang!14985) (regTwo!30483 lt!2172700))))))

(assert (=> b!5325186 (=> (not res!2258702) (not e!3308032))))

(declare-fun bm!380385 () Bool)

(assert (=> bm!380385 (= call!380389 (Exists!2166 (ite c!925809 lambda!271812 lambda!271813)))))

(declare-fun b!5325187 () Bool)

(declare-fun c!925807 () Bool)

(assert (=> b!5325187 (= c!925807 ((_ is ElementMatch!14985) (regTwo!30483 lt!2172700)))))

(assert (=> b!5325187 (= e!3308032 e!3308038)))

(declare-fun b!5325188 () Bool)

(assert (=> b!5325188 (= e!3308037 (matchRSpec!2088 (regTwo!30483 (regTwo!30483 lt!2172700)) s!2326))))

(assert (= (and d!1710314 c!925806) b!5325180))

(assert (= (and d!1710314 (not c!925806)) b!5325186))

(assert (= (and b!5325186 res!2258702) b!5325187))

(assert (= (and b!5325187 c!925807) b!5325179))

(assert (= (and b!5325187 (not c!925807)) b!5325185))

(assert (= (and b!5325185 c!925808) b!5325184))

(assert (= (and b!5325185 (not c!925808)) b!5325178))

(assert (= (and b!5325184 (not res!2258703)) b!5325188))

(assert (= (and b!5325178 c!925809) b!5325182))

(assert (= (and b!5325178 (not c!925809)) b!5325183))

(assert (= (and b!5325182 (not res!2258704)) b!5325181))

(assert (= (or b!5325181 b!5325183) bm!380385))

(assert (= (or b!5325180 b!5325182) bm!380384))

(assert (=> bm!380384 m!6358744))

(declare-fun m!6359516 () Bool)

(assert (=> b!5325184 m!6359516))

(declare-fun m!6359518 () Bool)

(assert (=> bm!380385 m!6359518))

(declare-fun m!6359520 () Bool)

(assert (=> b!5325188 m!6359520))

(assert (=> b!5324405 d!1710314))

(declare-fun b!5325244 () Bool)

(declare-fun e!3308072 () Int)

(declare-fun call!380405 () Int)

(assert (=> b!5325244 (= e!3308072 (+ 1 call!380405))))

(declare-fun b!5325245 () Bool)

(declare-fun e!3308074 () Int)

(assert (=> b!5325245 (= e!3308074 1)))

(declare-fun b!5325246 () Bool)

(declare-fun e!3308073 () Int)

(declare-fun e!3308075 () Int)

(assert (=> b!5325246 (= e!3308073 e!3308075)))

(declare-fun c!925830 () Bool)

(assert (=> b!5325246 (= c!925830 ((_ is Concat!23830) (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun bm!380399 () Bool)

(declare-fun call!380403 () Int)

(assert (=> bm!380399 (= call!380403 call!380405)))

(declare-fun b!5325247 () Bool)

(declare-fun c!925831 () Bool)

(assert (=> b!5325247 (= c!925831 ((_ is Union!14985) (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(assert (=> b!5325247 (= e!3308072 e!3308073)))

(declare-fun b!5325248 () Bool)

(assert (=> b!5325248 (= e!3308074 e!3308072)))

(declare-fun c!925829 () Bool)

(assert (=> b!5325248 (= c!925829 ((_ is Star!14985) (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun b!5325249 () Bool)

(declare-fun call!380404 () Int)

(assert (=> b!5325249 (= e!3308073 (+ 1 call!380403 call!380404))))

(declare-fun b!5325250 () Bool)

(assert (=> b!5325250 (= e!3308075 (+ 1 call!380403 call!380404))))

(declare-fun b!5325251 () Bool)

(assert (=> b!5325251 (= e!3308075 1)))

(declare-fun bm!380400 () Bool)

(assert (=> bm!380400 (= call!380404 (regexDepthTotal!53 (ite c!925831 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))))))))

(declare-fun d!1710332 () Bool)

(declare-fun lt!2172934 () Int)

(assert (=> d!1710332 (> lt!2172934 0)))

(assert (=> d!1710332 (= lt!2172934 e!3308074)))

(declare-fun c!925828 () Bool)

(assert (=> d!1710332 (= c!925828 ((_ is ElementMatch!14985) (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(assert (=> d!1710332 (= (regexDepthTotal!53 (h!67578 (exprs!4869 (h!67580 zl!343)))) lt!2172934)))

(declare-fun bm!380398 () Bool)

(assert (=> bm!380398 (= call!380405 (regexDepthTotal!53 (ite c!925829 (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925831 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343))))))))))

(assert (= (and d!1710332 c!925828) b!5325245))

(assert (= (and d!1710332 (not c!925828)) b!5325248))

(assert (= (and b!5325248 c!925829) b!5325244))

(assert (= (and b!5325248 (not c!925829)) b!5325247))

(assert (= (and b!5325247 c!925831) b!5325249))

(assert (= (and b!5325247 (not c!925831)) b!5325246))

(assert (= (and b!5325246 c!925830) b!5325250))

(assert (= (and b!5325246 (not c!925830)) b!5325251))

(assert (= (or b!5325249 b!5325250) bm!380400))

(assert (= (or b!5325249 b!5325250) bm!380399))

(assert (= (or b!5325244 bm!380399) bm!380398))

(declare-fun m!6359522 () Bool)

(assert (=> bm!380400 m!6359522))

(declare-fun m!6359524 () Bool)

(assert (=> bm!380398 m!6359524))

(assert (=> b!5324497 d!1710332))

(declare-fun d!1710334 () Bool)

(declare-fun lt!2172935 () Int)

(assert (=> d!1710334 (>= lt!2172935 0)))

(declare-fun e!3308076 () Int)

(assert (=> d!1710334 (= lt!2172935 e!3308076)))

(declare-fun c!925832 () Bool)

(assert (=> d!1710334 (= c!925832 ((_ is Cons!61130) (exprs!4869 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343)))))))))

(assert (=> d!1710334 (= (contextDepthTotal!118 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343))))) lt!2172935)))

(declare-fun b!5325252 () Bool)

(assert (=> b!5325252 (= e!3308076 (+ (regexDepthTotal!53 (h!67578 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343))))))) (contextDepthTotal!118 (Context!8739 (t!374467 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343))))))))))))

(declare-fun b!5325253 () Bool)

(assert (=> b!5325253 (= e!3308076 1)))

(assert (= (and d!1710334 c!925832) b!5325252))

(assert (= (and d!1710334 (not c!925832)) b!5325253))

(declare-fun m!6359532 () Bool)

(assert (=> b!5325252 m!6359532))

(declare-fun m!6359536 () Bool)

(assert (=> b!5325252 m!6359536))

(assert (=> b!5324497 d!1710334))

(assert (=> b!5324439 d!1710158))

(assert (=> b!5324439 d!1710164))

(assert (=> d!1709860 d!1709882))

(assert (=> d!1709860 d!1709880))

(declare-fun e!3308079 () Bool)

(declare-fun d!1710340 () Bool)

(assert (=> d!1710340 (= (matchZipper!1229 ((_ map or) lt!2172711 lt!2172719) (t!374468 s!2326)) e!3308079)))

(declare-fun res!2258726 () Bool)

(assert (=> d!1710340 (=> res!2258726 e!3308079)))

(assert (=> d!1710340 (= res!2258726 (matchZipper!1229 lt!2172711 (t!374468 s!2326)))))

(assert (=> d!1710340 true))

(declare-fun _$48!1006 () Unit!153458)

(assert (=> d!1710340 (= (choose!39857 lt!2172711 lt!2172719 (t!374468 s!2326)) _$48!1006)))

(declare-fun b!5325256 () Bool)

(assert (=> b!5325256 (= e!3308079 (matchZipper!1229 lt!2172719 (t!374468 s!2326)))))

(assert (= (and d!1710340 (not res!2258726)) b!5325256))

(assert (=> d!1710340 m!6358186))

(assert (=> d!1710340 m!6358158))

(assert (=> b!5325256 m!6358166))

(assert (=> d!1709860 d!1710340))

(declare-fun d!1710344 () Bool)

(declare-fun lt!2172936 () Int)

(assert (=> d!1710344 (>= lt!2172936 0)))

(declare-fun e!3308080 () Int)

(assert (=> d!1710344 (= lt!2172936 e!3308080)))

(declare-fun c!925833 () Bool)

(assert (=> d!1710344 (= c!925833 ((_ is Cons!61130) (exprs!4869 (h!67580 lt!2172714))))))

(assert (=> d!1710344 (= (contextDepthTotal!118 (h!67580 lt!2172714)) lt!2172936)))

(declare-fun b!5325257 () Bool)

(assert (=> b!5325257 (= e!3308080 (+ (regexDepthTotal!53 (h!67578 (exprs!4869 (h!67580 lt!2172714)))) (contextDepthTotal!118 (Context!8739 (t!374467 (exprs!4869 (h!67580 lt!2172714)))))))))

(declare-fun b!5325258 () Bool)

(assert (=> b!5325258 (= e!3308080 1)))

(assert (= (and d!1710344 c!925833) b!5325257))

(assert (= (and d!1710344 (not c!925833)) b!5325258))

(declare-fun m!6359540 () Bool)

(assert (=> b!5325257 m!6359540))

(declare-fun m!6359542 () Bool)

(assert (=> b!5325257 m!6359542))

(assert (=> b!5324323 d!1710344))

(declare-fun d!1710346 () Bool)

(declare-fun lt!2172937 () Int)

(assert (=> d!1710346 (>= lt!2172937 0)))

(declare-fun e!3308081 () Int)

(assert (=> d!1710346 (= lt!2172937 e!3308081)))

(declare-fun c!925834 () Bool)

(assert (=> d!1710346 (= c!925834 ((_ is Cons!61132) (t!374469 lt!2172714)))))

(assert (=> d!1710346 (= (zipperDepthTotal!138 (t!374469 lt!2172714)) lt!2172937)))

(declare-fun b!5325259 () Bool)

(assert (=> b!5325259 (= e!3308081 (+ (contextDepthTotal!118 (h!67580 (t!374469 lt!2172714))) (zipperDepthTotal!138 (t!374469 (t!374469 lt!2172714)))))))

(declare-fun b!5325260 () Bool)

(assert (=> b!5325260 (= e!3308081 0)))

(assert (= (and d!1710346 c!925834) b!5325259))

(assert (= (and d!1710346 (not c!925834)) b!5325260))

(declare-fun m!6359544 () Bool)

(assert (=> b!5325259 m!6359544))

(declare-fun m!6359546 () Bool)

(assert (=> b!5325259 m!6359546))

(assert (=> b!5324323 d!1710346))

(declare-fun b!5325265 () Bool)

(declare-fun e!3308087 () Bool)

(declare-fun call!380406 () Bool)

(assert (=> b!5325265 (= e!3308087 call!380406)))

(declare-fun b!5325266 () Bool)

(declare-fun e!3308085 () Bool)

(declare-fun e!3308084 () Bool)

(assert (=> b!5325266 (= e!3308085 e!3308084)))

(declare-fun res!2258735 () Bool)

(assert (=> b!5325266 (=> (not res!2258735) (not e!3308084))))

(declare-fun call!380408 () Bool)

(assert (=> b!5325266 (= res!2258735 call!380408)))

(declare-fun b!5325267 () Bool)

(declare-fun res!2258731 () Bool)

(assert (=> b!5325267 (=> res!2258731 e!3308085)))

(assert (=> b!5325267 (= res!2258731 (not ((_ is Concat!23830) lt!2172847)))))

(declare-fun e!3308089 () Bool)

(assert (=> b!5325267 (= e!3308089 e!3308085)))

(declare-fun c!925836 () Bool)

(declare-fun c!925835 () Bool)

(declare-fun bm!380401 () Bool)

(assert (=> bm!380401 (= call!380406 (validRegex!6721 (ite c!925836 (reg!15314 lt!2172847) (ite c!925835 (regTwo!30483 lt!2172847) (regTwo!30482 lt!2172847)))))))

(declare-fun b!5325268 () Bool)

(declare-fun e!3308088 () Bool)

(assert (=> b!5325268 (= e!3308088 e!3308089)))

(assert (=> b!5325268 (= c!925835 ((_ is Union!14985) lt!2172847))))

(declare-fun d!1710348 () Bool)

(declare-fun res!2258730 () Bool)

(declare-fun e!3308086 () Bool)

(assert (=> d!1710348 (=> res!2258730 e!3308086)))

(assert (=> d!1710348 (= res!2258730 ((_ is ElementMatch!14985) lt!2172847))))

(assert (=> d!1710348 (= (validRegex!6721 lt!2172847) e!3308086)))

(declare-fun b!5325269 () Bool)

(declare-fun res!2258734 () Bool)

(declare-fun e!3308090 () Bool)

(assert (=> b!5325269 (=> (not res!2258734) (not e!3308090))))

(assert (=> b!5325269 (= res!2258734 call!380408)))

(assert (=> b!5325269 (= e!3308089 e!3308090)))

(declare-fun bm!380402 () Bool)

(assert (=> bm!380402 (= call!380408 (validRegex!6721 (ite c!925835 (regOne!30483 lt!2172847) (regOne!30482 lt!2172847))))))

(declare-fun b!5325270 () Bool)

(declare-fun call!380407 () Bool)

(assert (=> b!5325270 (= e!3308090 call!380407)))

(declare-fun b!5325271 () Bool)

(assert (=> b!5325271 (= e!3308084 call!380407)))

(declare-fun b!5325272 () Bool)

(assert (=> b!5325272 (= e!3308088 e!3308087)))

(declare-fun res!2258729 () Bool)

(assert (=> b!5325272 (= res!2258729 (not (nullable!5154 (reg!15314 lt!2172847))))))

(assert (=> b!5325272 (=> (not res!2258729) (not e!3308087))))

(declare-fun bm!380403 () Bool)

(assert (=> bm!380403 (= call!380407 call!380406)))

(declare-fun b!5325273 () Bool)

(assert (=> b!5325273 (= e!3308086 e!3308088)))

(assert (=> b!5325273 (= c!925836 ((_ is Star!14985) lt!2172847))))

(assert (= (and d!1710348 (not res!2258730)) b!5325273))

(assert (= (and b!5325273 c!925836) b!5325272))

(assert (= (and b!5325273 (not c!925836)) b!5325268))

(assert (= (and b!5325272 res!2258729) b!5325265))

(assert (= (and b!5325268 c!925835) b!5325269))

(assert (= (and b!5325268 (not c!925835)) b!5325267))

(assert (= (and b!5325269 res!2258734) b!5325270))

(assert (= (and b!5325267 (not res!2258731)) b!5325266))

(assert (= (and b!5325266 res!2258735) b!5325271))

(assert (= (or b!5325270 b!5325271) bm!380403))

(assert (= (or b!5325269 b!5325266) bm!380402))

(assert (= (or b!5325265 bm!380403) bm!380401))

(declare-fun m!6359548 () Bool)

(assert (=> bm!380401 m!6359548))

(declare-fun m!6359550 () Bool)

(assert (=> bm!380402 m!6359550))

(declare-fun m!6359552 () Bool)

(assert (=> b!5325272 m!6359552))

(assert (=> d!1709970 d!1710348))

(declare-fun d!1710350 () Bool)

(declare-fun res!2258736 () Bool)

(declare-fun e!3308091 () Bool)

(assert (=> d!1710350 (=> res!2258736 e!3308091)))

(assert (=> d!1710350 (= res!2258736 ((_ is Nil!61130) (unfocusZipperList!427 zl!343)))))

(assert (=> d!1710350 (= (forall!14403 (unfocusZipperList!427 zl!343) lambda!271752) e!3308091)))

(declare-fun b!5325274 () Bool)

(declare-fun e!3308092 () Bool)

(assert (=> b!5325274 (= e!3308091 e!3308092)))

(declare-fun res!2258737 () Bool)

(assert (=> b!5325274 (=> (not res!2258737) (not e!3308092))))

(assert (=> b!5325274 (= res!2258737 (dynLambda!24169 lambda!271752 (h!67578 (unfocusZipperList!427 zl!343))))))

(declare-fun b!5325275 () Bool)

(assert (=> b!5325275 (= e!3308092 (forall!14403 (t!374467 (unfocusZipperList!427 zl!343)) lambda!271752))))

(assert (= (and d!1710350 (not res!2258736)) b!5325274))

(assert (= (and b!5325274 res!2258737) b!5325275))

(declare-fun b_lambda!204827 () Bool)

(assert (=> (not b_lambda!204827) (not b!5325274)))

(declare-fun m!6359554 () Bool)

(assert (=> b!5325274 m!6359554))

(declare-fun m!6359556 () Bool)

(assert (=> b!5325275 m!6359556))

(assert (=> d!1709970 d!1710350))

(declare-fun bs!1234199 () Bool)

(declare-fun d!1710352 () Bool)

(assert (= bs!1234199 (and d!1710352 d!1709946)))

(declare-fun lambda!271819 () Int)

(assert (=> bs!1234199 (= lambda!271819 lambda!271746)))

(declare-fun bs!1234200 () Bool)

(assert (= bs!1234200 (and d!1710352 d!1709972)))

(assert (=> bs!1234200 (= lambda!271819 lambda!271755)))

(declare-fun bs!1234201 () Bool)

(assert (= bs!1234201 (and d!1710352 d!1709970)))

(assert (=> bs!1234201 (= lambda!271819 lambda!271752)))

(declare-fun bs!1234202 () Bool)

(assert (= bs!1234202 (and d!1710352 d!1710146)))

(assert (=> bs!1234202 (= lambda!271819 lambda!271795)))

(declare-fun bs!1234203 () Bool)

(assert (= bs!1234203 (and d!1710352 d!1709986)))

(assert (=> bs!1234203 (= lambda!271819 lambda!271762)))

(declare-fun bs!1234204 () Bool)

(assert (= bs!1234204 (and d!1710352 d!1710130)))

(assert (=> bs!1234204 (= lambda!271819 lambda!271794)))

(declare-fun bs!1234205 () Bool)

(assert (= bs!1234205 (and d!1710352 d!1709998)))

(assert (=> bs!1234205 (= lambda!271819 lambda!271765)))

(declare-fun bs!1234206 () Bool)

(assert (= bs!1234206 (and d!1710352 d!1709812)))

(assert (=> bs!1234206 (= lambda!271819 lambda!271706)))

(declare-fun bs!1234207 () Bool)

(assert (= bs!1234207 (and d!1710352 b!5323686)))

(assert (=> bs!1234207 (= lambda!271819 lambda!271673)))

(declare-fun b!5325276 () Bool)

(declare-fun e!3308096 () Bool)

(declare-fun lt!2172938 () Regex!14985)

(assert (=> b!5325276 (= e!3308096 (isConcat!405 lt!2172938))))

(declare-fun b!5325277 () Bool)

(assert (=> b!5325277 (= e!3308096 (= lt!2172938 (head!11413 (t!374467 (exprs!4869 (h!67580 zl!343))))))))

(declare-fun b!5325278 () Bool)

(declare-fun e!3308097 () Bool)

(assert (=> b!5325278 (= e!3308097 (isEmpty!33099 (t!374467 (t!374467 (exprs!4869 (h!67580 zl!343))))))))

(declare-fun b!5325279 () Bool)

(declare-fun e!3308094 () Bool)

(assert (=> b!5325279 (= e!3308094 (isEmptyExpr!882 lt!2172938))))

(declare-fun b!5325280 () Bool)

(declare-fun e!3308095 () Bool)

(assert (=> b!5325280 (= e!3308095 e!3308094)))

(declare-fun c!925839 () Bool)

(assert (=> b!5325280 (= c!925839 (isEmpty!33099 (t!374467 (exprs!4869 (h!67580 zl!343)))))))

(assert (=> d!1710352 e!3308095))

(declare-fun res!2258739 () Bool)

(assert (=> d!1710352 (=> (not res!2258739) (not e!3308095))))

(assert (=> d!1710352 (= res!2258739 (validRegex!6721 lt!2172938))))

(declare-fun e!3308098 () Regex!14985)

(assert (=> d!1710352 (= lt!2172938 e!3308098)))

(declare-fun c!925837 () Bool)

(assert (=> d!1710352 (= c!925837 e!3308097)))

(declare-fun res!2258738 () Bool)

(assert (=> d!1710352 (=> (not res!2258738) (not e!3308097))))

(assert (=> d!1710352 (= res!2258738 ((_ is Cons!61130) (t!374467 (exprs!4869 (h!67580 zl!343)))))))

(assert (=> d!1710352 (forall!14403 (t!374467 (exprs!4869 (h!67580 zl!343))) lambda!271819)))

(assert (=> d!1710352 (= (generalisedConcat!654 (t!374467 (exprs!4869 (h!67580 zl!343)))) lt!2172938)))

(declare-fun b!5325281 () Bool)

(declare-fun e!3308093 () Regex!14985)

(assert (=> b!5325281 (= e!3308093 EmptyExpr!14985)))

(declare-fun b!5325282 () Bool)

(assert (=> b!5325282 (= e!3308098 e!3308093)))

(declare-fun c!925840 () Bool)

(assert (=> b!5325282 (= c!925840 ((_ is Cons!61130) (t!374467 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun b!5325283 () Bool)

(assert (=> b!5325283 (= e!3308094 e!3308096)))

(declare-fun c!925838 () Bool)

(assert (=> b!5325283 (= c!925838 (isEmpty!33099 (tail!10510 (t!374467 (exprs!4869 (h!67580 zl!343))))))))

(declare-fun b!5325284 () Bool)

(assert (=> b!5325284 (= e!3308093 (Concat!23830 (h!67578 (t!374467 (exprs!4869 (h!67580 zl!343)))) (generalisedConcat!654 (t!374467 (t!374467 (exprs!4869 (h!67580 zl!343)))))))))

(declare-fun b!5325285 () Bool)

(assert (=> b!5325285 (= e!3308098 (h!67578 (t!374467 (exprs!4869 (h!67580 zl!343)))))))

(assert (= (and d!1710352 res!2258738) b!5325278))

(assert (= (and d!1710352 c!925837) b!5325285))

(assert (= (and d!1710352 (not c!925837)) b!5325282))

(assert (= (and b!5325282 c!925840) b!5325284))

(assert (= (and b!5325282 (not c!925840)) b!5325281))

(assert (= (and d!1710352 res!2258739) b!5325280))

(assert (= (and b!5325280 c!925839) b!5325279))

(assert (= (and b!5325280 (not c!925839)) b!5325283))

(assert (= (and b!5325283 c!925838) b!5325277))

(assert (= (and b!5325283 (not c!925838)) b!5325276))

(assert (=> b!5325280 m!6358130))

(declare-fun m!6359558 () Bool)

(assert (=> b!5325278 m!6359558))

(declare-fun m!6359560 () Bool)

(assert (=> b!5325276 m!6359560))

(declare-fun m!6359562 () Bool)

(assert (=> d!1710352 m!6359562))

(declare-fun m!6359564 () Bool)

(assert (=> d!1710352 m!6359564))

(declare-fun m!6359566 () Bool)

(assert (=> b!5325284 m!6359566))

(declare-fun m!6359568 () Bool)

(assert (=> b!5325283 m!6359568))

(assert (=> b!5325283 m!6359568))

(declare-fun m!6359570 () Bool)

(assert (=> b!5325283 m!6359570))

(declare-fun m!6359572 () Bool)

(assert (=> b!5325277 m!6359572))

(declare-fun m!6359574 () Bool)

(assert (=> b!5325279 m!6359574))

(assert (=> b!5323866 d!1710352))

(declare-fun b!5325290 () Bool)

(declare-fun e!3308103 () Bool)

(declare-fun e!3308105 () Bool)

(assert (=> b!5325290 (= e!3308103 e!3308105)))

(declare-fun c!925841 () Bool)

(assert (=> b!5325290 (= c!925841 ((_ is Union!14985) (regOne!30482 (regOne!30482 r!7292))))))

(declare-fun bm!380404 () Bool)

(declare-fun call!380410 () Bool)

(assert (=> bm!380404 (= call!380410 (nullable!5154 (ite c!925841 (regOne!30483 (regOne!30482 (regOne!30482 r!7292))) (regOne!30482 (regOne!30482 (regOne!30482 r!7292))))))))

(declare-fun bm!380405 () Bool)

(declare-fun call!380409 () Bool)

(assert (=> bm!380405 (= call!380409 (nullable!5154 (ite c!925841 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))))))))

(declare-fun d!1710354 () Bool)

(declare-fun res!2258747 () Bool)

(declare-fun e!3308101 () Bool)

(assert (=> d!1710354 (=> res!2258747 e!3308101)))

(assert (=> d!1710354 (= res!2258747 ((_ is EmptyExpr!14985) (regOne!30482 (regOne!30482 r!7292))))))

(assert (=> d!1710354 (= (nullableFct!1500 (regOne!30482 (regOne!30482 r!7292))) e!3308101)))

(declare-fun b!5325291 () Bool)

(declare-fun e!3308104 () Bool)

(assert (=> b!5325291 (= e!3308101 e!3308104)))

(declare-fun res!2258745 () Bool)

(assert (=> b!5325291 (=> (not res!2258745) (not e!3308104))))

(assert (=> b!5325291 (= res!2258745 (and (not ((_ is EmptyLang!14985) (regOne!30482 (regOne!30482 r!7292)))) (not ((_ is ElementMatch!14985) (regOne!30482 (regOne!30482 r!7292))))))))

(declare-fun b!5325292 () Bool)

(declare-fun e!3308106 () Bool)

(assert (=> b!5325292 (= e!3308106 call!380409)))

(declare-fun b!5325293 () Bool)

(declare-fun e!3308102 () Bool)

(assert (=> b!5325293 (= e!3308105 e!3308102)))

(declare-fun res!2258746 () Bool)

(assert (=> b!5325293 (= res!2258746 call!380410)))

(assert (=> b!5325293 (=> (not res!2258746) (not e!3308102))))

(declare-fun b!5325294 () Bool)

(assert (=> b!5325294 (= e!3308104 e!3308103)))

(declare-fun res!2258748 () Bool)

(assert (=> b!5325294 (=> res!2258748 e!3308103)))

(assert (=> b!5325294 (= res!2258748 ((_ is Star!14985) (regOne!30482 (regOne!30482 r!7292))))))

(declare-fun b!5325295 () Bool)

(assert (=> b!5325295 (= e!3308105 e!3308106)))

(declare-fun res!2258744 () Bool)

(assert (=> b!5325295 (= res!2258744 call!380410)))

(assert (=> b!5325295 (=> res!2258744 e!3308106)))

(declare-fun b!5325296 () Bool)

(assert (=> b!5325296 (= e!3308102 call!380409)))

(assert (= (and d!1710354 (not res!2258747)) b!5325291))

(assert (= (and b!5325291 res!2258745) b!5325294))

(assert (= (and b!5325294 (not res!2258748)) b!5325290))

(assert (= (and b!5325290 c!925841) b!5325295))

(assert (= (and b!5325290 (not c!925841)) b!5325293))

(assert (= (and b!5325295 (not res!2258744)) b!5325292))

(assert (= (and b!5325293 res!2258746) b!5325296))

(assert (= (or b!5325292 b!5325296) bm!380405))

(assert (= (or b!5325295 b!5325293) bm!380404))

(declare-fun m!6359576 () Bool)

(assert (=> bm!380404 m!6359576))

(declare-fun m!6359578 () Bool)

(assert (=> bm!380405 m!6359578))

(assert (=> d!1709948 d!1710354))

(assert (=> b!5324486 d!1710158))

(assert (=> b!5324486 d!1710164))

(declare-fun bs!1234208 () Bool)

(declare-fun d!1710356 () Bool)

(assert (= bs!1234208 (and d!1710356 b!5323994)))

(declare-fun lambda!271822 () Int)

(assert (=> bs!1234208 (not (= lambda!271822 lambda!271718))))

(declare-fun bs!1234209 () Bool)

(assert (= bs!1234209 (and d!1710356 b!5323978)))

(assert (=> bs!1234209 (not (= lambda!271822 lambda!271715))))

(declare-fun bs!1234210 () Bool)

(assert (= bs!1234210 (and d!1710356 d!1710204)))

(assert (=> bs!1234210 (= lambda!271822 lambda!271801)))

(declare-fun bs!1234211 () Bool)

(assert (= bs!1234211 (and d!1710356 b!5323976)))

(assert (=> bs!1234211 (not (= lambda!271822 lambda!271714))))

(declare-fun bs!1234212 () Bool)

(assert (= bs!1234212 (and d!1710356 b!5323992)))

(assert (=> bs!1234212 (not (= lambda!271822 lambda!271717))))

(assert (=> d!1710356 (= (nullableZipper!1348 ((_ map or) lt!2172711 lt!2172719)) (exists!2013 ((_ map or) lt!2172711 lt!2172719) lambda!271822))))

(declare-fun bs!1234213 () Bool)

(assert (= bs!1234213 d!1710356))

(declare-fun m!6359580 () Bool)

(assert (=> bs!1234213 m!6359580))

(assert (=> b!5324039 d!1710356))

(declare-fun d!1710358 () Bool)

(assert (=> d!1710358 (= (nullable!5154 lt!2172700) (nullableFct!1500 lt!2172700))))

(declare-fun bs!1234214 () Bool)

(assert (= bs!1234214 d!1710358))

(declare-fun m!6359582 () Bool)

(assert (=> bs!1234214 m!6359582))

(assert (=> b!5324435 d!1710358))

(declare-fun bs!1234247 () Bool)

(declare-fun b!5325335 () Bool)

(assert (= bs!1234247 (and b!5325335 d!1709946)))

(declare-fun lambda!271830 () Int)

(assert (=> bs!1234247 (not (= lambda!271830 lambda!271746))))

(declare-fun bs!1234248 () Bool)

(assert (= bs!1234248 (and b!5325335 d!1709972)))

(assert (=> bs!1234248 (not (= lambda!271830 lambda!271755))))

(declare-fun bs!1234249 () Bool)

(assert (= bs!1234249 (and b!5325335 d!1709970)))

(assert (=> bs!1234249 (not (= lambda!271830 lambda!271752))))

(declare-fun bs!1234250 () Bool)

(assert (= bs!1234250 (and b!5325335 d!1710146)))

(assert (=> bs!1234250 (not (= lambda!271830 lambda!271795))))

(declare-fun bs!1234252 () Bool)

(assert (= bs!1234252 (and b!5325335 d!1710352)))

(assert (=> bs!1234252 (not (= lambda!271830 lambda!271819))))

(declare-fun bs!1234254 () Bool)

(assert (= bs!1234254 (and b!5325335 d!1709986)))

(assert (=> bs!1234254 (not (= lambda!271830 lambda!271762))))

(declare-fun bs!1234257 () Bool)

(assert (= bs!1234257 (and b!5325335 d!1710130)))

(assert (=> bs!1234257 (not (= lambda!271830 lambda!271794))))

(declare-fun bs!1234259 () Bool)

(assert (= bs!1234259 (and b!5325335 d!1709998)))

(assert (=> bs!1234259 (not (= lambda!271830 lambda!271765))))

(declare-fun bs!1234261 () Bool)

(assert (= bs!1234261 (and b!5325335 d!1709812)))

(assert (=> bs!1234261 (not (= lambda!271830 lambda!271706))))

(declare-fun bs!1234263 () Bool)

(assert (= bs!1234263 (and b!5325335 b!5323686)))

(assert (=> bs!1234263 (not (= lambda!271830 lambda!271673))))

(assert (=> b!5325335 true))

(declare-fun bs!1234266 () Bool)

(declare-fun b!5325337 () Bool)

(assert (= bs!1234266 (and b!5325337 d!1709946)))

(declare-fun lambda!271832 () Int)

(assert (=> bs!1234266 (not (= lambda!271832 lambda!271746))))

(declare-fun bs!1234268 () Bool)

(assert (= bs!1234268 (and b!5325337 d!1709972)))

(assert (=> bs!1234268 (not (= lambda!271832 lambda!271755))))

(declare-fun bs!1234270 () Bool)

(assert (= bs!1234270 (and b!5325337 d!1709970)))

(assert (=> bs!1234270 (not (= lambda!271832 lambda!271752))))

(declare-fun bs!1234272 () Bool)

(assert (= bs!1234272 (and b!5325337 d!1710146)))

(assert (=> bs!1234272 (not (= lambda!271832 lambda!271795))))

(declare-fun bs!1234274 () Bool)

(assert (= bs!1234274 (and b!5325337 d!1710352)))

(assert (=> bs!1234274 (not (= lambda!271832 lambda!271819))))

(declare-fun bs!1234276 () Bool)

(assert (= bs!1234276 (and b!5325337 d!1709986)))

(assert (=> bs!1234276 (not (= lambda!271832 lambda!271762))))

(declare-fun bs!1234278 () Bool)

(assert (= bs!1234278 (and b!5325337 b!5325335)))

(declare-fun lt!2172951 () Int)

(declare-fun lt!2172950 () Int)

(assert (=> bs!1234278 (= (= lt!2172951 lt!2172950) (= lambda!271832 lambda!271830))))

(declare-fun bs!1234280 () Bool)

(assert (= bs!1234280 (and b!5325337 d!1710130)))

(assert (=> bs!1234280 (not (= lambda!271832 lambda!271794))))

(declare-fun bs!1234282 () Bool)

(assert (= bs!1234282 (and b!5325337 d!1709998)))

(assert (=> bs!1234282 (not (= lambda!271832 lambda!271765))))

(declare-fun bs!1234283 () Bool)

(assert (= bs!1234283 (and b!5325337 d!1709812)))

(assert (=> bs!1234283 (not (= lambda!271832 lambda!271706))))

(declare-fun bs!1234284 () Bool)

(assert (= bs!1234284 (and b!5325337 b!5323686)))

(assert (=> bs!1234284 (not (= lambda!271832 lambda!271673))))

(assert (=> b!5325337 true))

(declare-fun d!1710360 () Bool)

(declare-fun e!3308132 () Bool)

(assert (=> d!1710360 e!3308132))

(declare-fun res!2258761 () Bool)

(assert (=> d!1710360 (=> (not res!2258761) (not e!3308132))))

(assert (=> d!1710360 (= res!2258761 (>= lt!2172951 0))))

(declare-fun e!3308133 () Int)

(assert (=> d!1710360 (= lt!2172951 e!3308133)))

(declare-fun c!925856 () Bool)

(assert (=> d!1710360 (= c!925856 ((_ is Cons!61130) (exprs!4869 (h!67580 lt!2172714))))))

(assert (=> d!1710360 (= (contextDepth!54 (h!67580 lt!2172714)) lt!2172951)))

(assert (=> b!5325335 (= e!3308133 lt!2172950)))

(declare-fun regexDepth!161 (Regex!14985) Int)

(assert (=> b!5325335 (= lt!2172950 (maxBigInt!0 (regexDepth!161 (h!67578 (exprs!4869 (h!67580 lt!2172714)))) (contextDepth!54 (Context!8739 (t!374467 (exprs!4869 (h!67580 lt!2172714)))))))))

(declare-fun lt!2172948 () Unit!153458)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!10 (List!61254 Int Int) Unit!153458)

(assert (=> b!5325335 (= lt!2172948 (lemmaForallRegexDepthBiggerThanTransitive!10 (t!374467 (exprs!4869 (h!67580 lt!2172714))) lt!2172950 (contextDepth!54 (Context!8739 (t!374467 (exprs!4869 (h!67580 lt!2172714)))))))))

(assert (=> b!5325335 (forall!14403 (t!374467 (exprs!4869 (h!67580 lt!2172714))) lambda!271830)))

(declare-fun lt!2172949 () Unit!153458)

(assert (=> b!5325335 (= lt!2172949 lt!2172948)))

(declare-fun b!5325336 () Bool)

(assert (=> b!5325336 (= e!3308133 0)))

(assert (=> b!5325337 (= e!3308132 (forall!14403 (exprs!4869 (h!67580 lt!2172714)) lambda!271832))))

(assert (= (and d!1710360 c!925856) b!5325335))

(assert (= (and d!1710360 (not c!925856)) b!5325336))

(assert (= (and d!1710360 res!2258761) b!5325337))

(declare-fun m!6359632 () Bool)

(assert (=> b!5325335 m!6359632))

(declare-fun m!6359634 () Bool)

(assert (=> b!5325335 m!6359634))

(declare-fun m!6359636 () Bool)

(assert (=> b!5325335 m!6359636))

(assert (=> b!5325335 m!6359632))

(assert (=> b!5325335 m!6359634))

(declare-fun m!6359638 () Bool)

(assert (=> b!5325335 m!6359638))

(declare-fun m!6359640 () Bool)

(assert (=> b!5325335 m!6359640))

(assert (=> b!5325335 m!6359634))

(declare-fun m!6359644 () Bool)

(assert (=> b!5325337 m!6359644))

(assert (=> b!5323976 d!1710360))

(declare-fun d!1710382 () Bool)

(declare-fun res!2258776 () Bool)

(declare-fun e!3308147 () Bool)

(assert (=> d!1710382 (=> res!2258776 e!3308147)))

(assert (=> d!1710382 (= res!2258776 ((_ is Nil!61132) (t!374469 lt!2172714)))))

(assert (=> d!1710382 (= (forall!14405 (t!374469 lt!2172714) lambda!271714) e!3308147)))

(declare-fun b!5325360 () Bool)

(declare-fun e!3308148 () Bool)

(assert (=> b!5325360 (= e!3308147 e!3308148)))

(declare-fun res!2258777 () Bool)

(assert (=> b!5325360 (=> (not res!2258777) (not e!3308148))))

(declare-fun dynLambda!24173 (Int Context!8738) Bool)

(assert (=> b!5325360 (= res!2258777 (dynLambda!24173 lambda!271714 (h!67580 (t!374469 lt!2172714))))))

(declare-fun b!5325361 () Bool)

(assert (=> b!5325361 (= e!3308148 (forall!14405 (t!374469 (t!374469 lt!2172714)) lambda!271714))))

(assert (= (and d!1710382 (not res!2258776)) b!5325360))

(assert (= (and b!5325360 res!2258777) b!5325361))

(declare-fun b_lambda!204835 () Bool)

(assert (=> (not b_lambda!204835) (not b!5325360)))

(declare-fun m!6359656 () Bool)

(assert (=> b!5325360 m!6359656))

(declare-fun m!6359658 () Bool)

(assert (=> b!5325361 m!6359658))

(assert (=> b!5323976 d!1710382))

(declare-fun d!1710386 () Bool)

(assert (=> d!1710386 (= (maxBigInt!0 (contextDepth!54 (h!67580 lt!2172714)) (zipperDepth!94 (t!374469 lt!2172714))) (ite (>= (contextDepth!54 (h!67580 lt!2172714)) (zipperDepth!94 (t!374469 lt!2172714))) (contextDepth!54 (h!67580 lt!2172714)) (zipperDepth!94 (t!374469 lt!2172714))))))

(assert (=> b!5323976 d!1710386))

(declare-fun bs!1234285 () Bool)

(declare-fun d!1710388 () Bool)

(assert (= bs!1234285 (and d!1710388 b!5323994)))

(declare-fun lambda!271837 () Int)

(assert (=> bs!1234285 (not (= lambda!271837 lambda!271718))))

(declare-fun bs!1234286 () Bool)

(assert (= bs!1234286 (and d!1710388 d!1710356)))

(assert (=> bs!1234286 (not (= lambda!271837 lambda!271822))))

(declare-fun bs!1234288 () Bool)

(assert (= bs!1234288 (and d!1710388 b!5323978)))

(assert (=> bs!1234288 (not (= lambda!271837 lambda!271715))))

(declare-fun bs!1234289 () Bool)

(assert (= bs!1234289 (and d!1710388 d!1710204)))

(assert (=> bs!1234289 (not (= lambda!271837 lambda!271801))))

(declare-fun bs!1234291 () Bool)

(assert (= bs!1234291 (and d!1710388 b!5323976)))

(assert (=> bs!1234291 (not (= lambda!271837 lambda!271714))))

(declare-fun bs!1234293 () Bool)

(assert (= bs!1234293 (and d!1710388 b!5323992)))

(assert (=> bs!1234293 (not (= lambda!271837 lambda!271717))))

(assert (=> d!1710388 true))

(assert (=> d!1710388 true))

(declare-fun order!27087 () Int)

(declare-fun order!27089 () Int)

(declare-fun dynLambda!24174 (Int Int) Int)

(declare-fun dynLambda!24175 (Int Int) Int)

(assert (=> d!1710388 (< (dynLambda!24174 order!27087 lambda!271713) (dynLambda!24175 order!27089 lambda!271837))))

(assert (=> d!1710388 (forall!14405 (t!374469 lt!2172714) lambda!271837)))

(declare-fun lt!2172955 () Unit!153458)

(declare-fun choose!39870 (List!61256 Int Int Int) Unit!153458)

(assert (=> d!1710388 (= lt!2172955 (choose!39870 (t!374469 lt!2172714) lt!2172778 (zipperDepth!94 (t!374469 lt!2172714)) lambda!271713))))

(assert (=> d!1710388 (>= lt!2172778 (zipperDepth!94 (t!374469 lt!2172714)))))

(assert (=> d!1710388 (= (lemmaForallContextDepthBiggerThanTransitive!48 (t!374469 lt!2172714) lt!2172778 (zipperDepth!94 (t!374469 lt!2172714)) lambda!271713) lt!2172955)))

(declare-fun bs!1234295 () Bool)

(assert (= bs!1234295 d!1710388))

(declare-fun m!6359660 () Bool)

(assert (=> bs!1234295 m!6359660))

(assert (=> bs!1234295 m!6358408))

(declare-fun m!6359662 () Bool)

(assert (=> bs!1234295 m!6359662))

(assert (=> b!5323976 d!1710388))

(declare-fun bs!1234299 () Bool)

(declare-fun b!5325370 () Bool)

(assert (= bs!1234299 (and b!5325370 b!5323976)))

(declare-fun lambda!271839 () Int)

(assert (=> bs!1234299 (= lambda!271839 lambda!271713)))

(declare-fun bs!1234300 () Bool)

(assert (= bs!1234300 (and b!5325370 b!5323992)))

(assert (=> bs!1234300 (= lambda!271839 lambda!271716)))

(declare-fun bs!1234303 () Bool)

(assert (= bs!1234303 (and b!5325370 d!1710388)))

(declare-fun lambda!271840 () Int)

(assert (=> bs!1234303 (not (= lambda!271840 lambda!271837))))

(declare-fun bs!1234304 () Bool)

(assert (= bs!1234304 (and b!5325370 b!5323994)))

(declare-fun lt!2172959 () Int)

(assert (=> bs!1234304 (= (= lt!2172959 lt!2172779) (= lambda!271840 lambda!271718))))

(declare-fun bs!1234305 () Bool)

(assert (= bs!1234305 (and b!5325370 d!1710356)))

(assert (=> bs!1234305 (not (= lambda!271840 lambda!271822))))

(declare-fun bs!1234306 () Bool)

(assert (= bs!1234306 (and b!5325370 b!5323978)))

(assert (=> bs!1234306 (= (= lt!2172959 lt!2172775) (= lambda!271840 lambda!271715))))

(declare-fun bs!1234308 () Bool)

(assert (= bs!1234308 (and b!5325370 d!1710204)))

(assert (=> bs!1234308 (not (= lambda!271840 lambda!271801))))

(assert (=> bs!1234299 (= (= lt!2172959 lt!2172778) (= lambda!271840 lambda!271714))))

(assert (=> bs!1234300 (= (= lt!2172959 lt!2172782) (= lambda!271840 lambda!271717))))

(assert (=> b!5325370 true))

(declare-fun bs!1234312 () Bool)

(declare-fun b!5325372 () Bool)

(assert (= bs!1234312 (and b!5325372 d!1710388)))

(declare-fun lambda!271841 () Int)

(assert (=> bs!1234312 (not (= lambda!271841 lambda!271837))))

(declare-fun bs!1234313 () Bool)

(assert (= bs!1234313 (and b!5325372 b!5323994)))

(declare-fun lt!2172956 () Int)

(assert (=> bs!1234313 (= (= lt!2172956 lt!2172779) (= lambda!271841 lambda!271718))))

(declare-fun bs!1234315 () Bool)

(assert (= bs!1234315 (and b!5325372 d!1710356)))

(assert (=> bs!1234315 (not (= lambda!271841 lambda!271822))))

(declare-fun bs!1234317 () Bool)

(assert (= bs!1234317 (and b!5325372 d!1710204)))

(assert (=> bs!1234317 (not (= lambda!271841 lambda!271801))))

(declare-fun bs!1234318 () Bool)

(assert (= bs!1234318 (and b!5325372 b!5323976)))

(assert (=> bs!1234318 (= (= lt!2172956 lt!2172778) (= lambda!271841 lambda!271714))))

(declare-fun bs!1234320 () Bool)

(assert (= bs!1234320 (and b!5325372 b!5323992)))

(assert (=> bs!1234320 (= (= lt!2172956 lt!2172782) (= lambda!271841 lambda!271717))))

(declare-fun bs!1234321 () Bool)

(assert (= bs!1234321 (and b!5325372 b!5325370)))

(assert (=> bs!1234321 (= (= lt!2172956 lt!2172959) (= lambda!271841 lambda!271840))))

(declare-fun bs!1234322 () Bool)

(assert (= bs!1234322 (and b!5325372 b!5323978)))

(assert (=> bs!1234322 (= (= lt!2172956 lt!2172775) (= lambda!271841 lambda!271715))))

(assert (=> b!5325372 true))

(declare-fun d!1710390 () Bool)

(declare-fun e!3308151 () Bool)

(assert (=> d!1710390 e!3308151))

(declare-fun res!2258782 () Bool)

(assert (=> d!1710390 (=> (not res!2258782) (not e!3308151))))

(assert (=> d!1710390 (= res!2258782 (>= lt!2172956 0))))

(declare-fun e!3308152 () Int)

(assert (=> d!1710390 (= lt!2172956 e!3308152)))

(declare-fun c!925862 () Bool)

(assert (=> d!1710390 (= c!925862 ((_ is Cons!61132) (t!374469 lt!2172714)))))

(assert (=> d!1710390 (= (zipperDepth!94 (t!374469 lt!2172714)) lt!2172956)))

(assert (=> b!5325370 (= e!3308152 lt!2172959)))

(assert (=> b!5325370 (= lt!2172959 (maxBigInt!0 (contextDepth!54 (h!67580 (t!374469 lt!2172714))) (zipperDepth!94 (t!374469 (t!374469 lt!2172714)))))))

(declare-fun lt!2172957 () Unit!153458)

(assert (=> b!5325370 (= lt!2172957 (lemmaForallContextDepthBiggerThanTransitive!48 (t!374469 (t!374469 lt!2172714)) lt!2172959 (zipperDepth!94 (t!374469 (t!374469 lt!2172714))) lambda!271839))))

(assert (=> b!5325370 (forall!14405 (t!374469 (t!374469 lt!2172714)) lambda!271840)))

(declare-fun lt!2172958 () Unit!153458)

(assert (=> b!5325370 (= lt!2172958 lt!2172957)))

(declare-fun b!5325371 () Bool)

(assert (=> b!5325371 (= e!3308152 0)))

(assert (=> b!5325372 (= e!3308151 (forall!14405 (t!374469 lt!2172714) lambda!271841))))

(assert (= (and d!1710390 c!925862) b!5325370))

(assert (= (and d!1710390 (not c!925862)) b!5325371))

(assert (= (and d!1710390 res!2258782) b!5325372))

(declare-fun m!6359668 () Bool)

(assert (=> b!5325370 m!6359668))

(declare-fun m!6359670 () Bool)

(assert (=> b!5325370 m!6359670))

(assert (=> b!5325370 m!6359668))

(declare-fun m!6359672 () Bool)

(assert (=> b!5325370 m!6359672))

(declare-fun m!6359674 () Bool)

(assert (=> b!5325370 m!6359674))

(assert (=> b!5325370 m!6359672))

(assert (=> b!5325370 m!6359672))

(declare-fun m!6359676 () Bool)

(assert (=> b!5325370 m!6359676))

(declare-fun m!6359678 () Bool)

(assert (=> b!5325372 m!6359678))

(assert (=> b!5323976 d!1710390))

(declare-fun b!5325382 () Bool)

(declare-fun e!3308162 () (InoxSet Context!8738))

(declare-fun call!380424 () (InoxSet Context!8738))

(declare-fun call!380426 () (InoxSet Context!8738))

(assert (=> b!5325382 (= e!3308162 ((_ map or) call!380424 call!380426))))

(declare-fun b!5325383 () Bool)

(declare-fun e!3308165 () (InoxSet Context!8738))

(declare-fun call!380428 () (InoxSet Context!8738))

(assert (=> b!5325383 (= e!3308165 call!380428)))

(declare-fun b!5325384 () Bool)

(declare-fun c!925865 () Bool)

(assert (=> b!5325384 (= c!925865 ((_ is Star!14985) (ite c!925510 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (ite c!925509 (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (ite c!925508 (regOne!30482 (regOne!30482 (regOne!30482 r!7292))) (reg!15314 (regOne!30482 (regOne!30482 r!7292))))))))))

(declare-fun e!3308160 () (InoxSet Context!8738))

(assert (=> b!5325384 (= e!3308160 e!3308165)))

(declare-fun b!5325385 () Bool)

(declare-fun e!3308161 () (InoxSet Context!8738))

(assert (=> b!5325385 (= e!3308161 (store ((as const (Array Context!8738 Bool)) false) (ite (or c!925510 c!925509) (Context!8739 lt!2172697) (Context!8739 call!380227)) true))))

(declare-fun bm!380419 () Bool)

(declare-fun call!380429 () List!61254)

(declare-fun call!380425 () List!61254)

(assert (=> bm!380419 (= call!380429 call!380425)))

(declare-fun c!925867 () Bool)

(declare-fun c!925868 () Bool)

(declare-fun bm!380420 () Bool)

(assert (=> bm!380420 (= call!380425 ($colon$colon!1398 (exprs!4869 (ite (or c!925510 c!925509) (Context!8739 lt!2172697) (Context!8739 call!380227))) (ite (or c!925868 c!925867) (regTwo!30482 (ite c!925510 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (ite c!925509 (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (ite c!925508 (regOne!30482 (regOne!30482 (regOne!30482 r!7292))) (reg!15314 (regOne!30482 (regOne!30482 r!7292))))))) (ite c!925510 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (ite c!925509 (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (ite c!925508 (regOne!30482 (regOne!30482 (regOne!30482 r!7292))) (reg!15314 (regOne!30482 (regOne!30482 r!7292)))))))))))

(declare-fun bm!380421 () Bool)

(declare-fun c!925869 () Bool)

(assert (=> bm!380421 (= call!380424 (derivationStepZipperDown!433 (ite c!925869 (regOne!30483 (ite c!925510 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (ite c!925509 (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (ite c!925508 (regOne!30482 (regOne!30482 (regOne!30482 r!7292))) (reg!15314 (regOne!30482 (regOne!30482 r!7292))))))) (regOne!30482 (ite c!925510 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (ite c!925509 (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (ite c!925508 (regOne!30482 (regOne!30482 (regOne!30482 r!7292))) (reg!15314 (regOne!30482 (regOne!30482 r!7292)))))))) (ite c!925869 (ite (or c!925510 c!925509) (Context!8739 lt!2172697) (Context!8739 call!380227)) (Context!8739 call!380425)) (h!67579 s!2326)))))

(declare-fun bm!380422 () Bool)

(declare-fun call!380427 () (InoxSet Context!8738))

(assert (=> bm!380422 (= call!380428 call!380427)))

(declare-fun b!5325386 () Bool)

(declare-fun e!3308163 () Bool)

(assert (=> b!5325386 (= c!925868 e!3308163)))

(declare-fun res!2258788 () Bool)

(assert (=> b!5325386 (=> (not res!2258788) (not e!3308163))))

(assert (=> b!5325386 (= res!2258788 ((_ is Concat!23830) (ite c!925510 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (ite c!925509 (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (ite c!925508 (regOne!30482 (regOne!30482 (regOne!30482 r!7292))) (reg!15314 (regOne!30482 (regOne!30482 r!7292))))))))))

(declare-fun e!3308164 () (InoxSet Context!8738))

(assert (=> b!5325386 (= e!3308162 e!3308164)))

(declare-fun b!5325387 () Bool)

(assert (=> b!5325387 (= e!3308160 call!380428)))

(declare-fun d!1710396 () Bool)

(declare-fun c!925866 () Bool)

(assert (=> d!1710396 (= c!925866 (and ((_ is ElementMatch!14985) (ite c!925510 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (ite c!925509 (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (ite c!925508 (regOne!30482 (regOne!30482 (regOne!30482 r!7292))) (reg!15314 (regOne!30482 (regOne!30482 r!7292))))))) (= (c!925355 (ite c!925510 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (ite c!925509 (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (ite c!925508 (regOne!30482 (regOne!30482 (regOne!30482 r!7292))) (reg!15314 (regOne!30482 (regOne!30482 r!7292))))))) (h!67579 s!2326))))))

(assert (=> d!1710396 (= (derivationStepZipperDown!433 (ite c!925510 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (ite c!925509 (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (ite c!925508 (regOne!30482 (regOne!30482 (regOne!30482 r!7292))) (reg!15314 (regOne!30482 (regOne!30482 r!7292)))))) (ite (or c!925510 c!925509) (Context!8739 lt!2172697) (Context!8739 call!380227)) (h!67579 s!2326)) e!3308161)))

(declare-fun b!5325388 () Bool)

(assert (=> b!5325388 (= e!3308163 (nullable!5154 (regOne!30482 (ite c!925510 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (ite c!925509 (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (ite c!925508 (regOne!30482 (regOne!30482 (regOne!30482 r!7292))) (reg!15314 (regOne!30482 (regOne!30482 r!7292)))))))))))

(declare-fun b!5325389 () Bool)

(assert (=> b!5325389 (= e!3308164 ((_ map or) call!380424 call!380427))))

(declare-fun bm!380423 () Bool)

(assert (=> bm!380423 (= call!380427 call!380426)))

(declare-fun b!5325390 () Bool)

(assert (=> b!5325390 (= e!3308164 e!3308160)))

(assert (=> b!5325390 (= c!925867 ((_ is Concat!23830) (ite c!925510 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (ite c!925509 (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (ite c!925508 (regOne!30482 (regOne!30482 (regOne!30482 r!7292))) (reg!15314 (regOne!30482 (regOne!30482 r!7292))))))))))

(declare-fun b!5325391 () Bool)

(assert (=> b!5325391 (= e!3308161 e!3308162)))

(assert (=> b!5325391 (= c!925869 ((_ is Union!14985) (ite c!925510 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (ite c!925509 (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (ite c!925508 (regOne!30482 (regOne!30482 (regOne!30482 r!7292))) (reg!15314 (regOne!30482 (regOne!30482 r!7292))))))))))

(declare-fun b!5325392 () Bool)

(assert (=> b!5325392 (= e!3308165 ((as const (Array Context!8738 Bool)) false))))

(declare-fun bm!380424 () Bool)

(assert (=> bm!380424 (= call!380426 (derivationStepZipperDown!433 (ite c!925869 (regTwo!30483 (ite c!925510 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (ite c!925509 (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (ite c!925508 (regOne!30482 (regOne!30482 (regOne!30482 r!7292))) (reg!15314 (regOne!30482 (regOne!30482 r!7292))))))) (ite c!925868 (regTwo!30482 (ite c!925510 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (ite c!925509 (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (ite c!925508 (regOne!30482 (regOne!30482 (regOne!30482 r!7292))) (reg!15314 (regOne!30482 (regOne!30482 r!7292))))))) (ite c!925867 (regOne!30482 (ite c!925510 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (ite c!925509 (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (ite c!925508 (regOne!30482 (regOne!30482 (regOne!30482 r!7292))) (reg!15314 (regOne!30482 (regOne!30482 r!7292))))))) (reg!15314 (ite c!925510 (regTwo!30483 (regOne!30482 (regOne!30482 r!7292))) (ite c!925509 (regTwo!30482 (regOne!30482 (regOne!30482 r!7292))) (ite c!925508 (regOne!30482 (regOne!30482 (regOne!30482 r!7292))) (reg!15314 (regOne!30482 (regOne!30482 r!7292)))))))))) (ite (or c!925869 c!925868) (ite (or c!925510 c!925509) (Context!8739 lt!2172697) (Context!8739 call!380227)) (Context!8739 call!380429)) (h!67579 s!2326)))))

(assert (= (and d!1710396 c!925866) b!5325385))

(assert (= (and d!1710396 (not c!925866)) b!5325391))

(assert (= (and b!5325391 c!925869) b!5325382))

(assert (= (and b!5325391 (not c!925869)) b!5325386))

(assert (= (and b!5325386 res!2258788) b!5325388))

(assert (= (and b!5325386 c!925868) b!5325389))

(assert (= (and b!5325386 (not c!925868)) b!5325390))

(assert (= (and b!5325390 c!925867) b!5325387))

(assert (= (and b!5325390 (not c!925867)) b!5325384))

(assert (= (and b!5325384 c!925865) b!5325383))

(assert (= (and b!5325384 (not c!925865)) b!5325392))

(assert (= (or b!5325387 b!5325383) bm!380419))

(assert (= (or b!5325387 b!5325383) bm!380422))

(assert (= (or b!5325389 bm!380419) bm!380420))

(assert (= (or b!5325389 bm!380422) bm!380423))

(assert (= (or b!5325382 bm!380423) bm!380424))

(assert (= (or b!5325382 b!5325389) bm!380421))

(declare-fun m!6359690 () Bool)

(assert (=> bm!380424 m!6359690))

(declare-fun m!6359692 () Bool)

(assert (=> bm!380421 m!6359692))

(declare-fun m!6359694 () Bool)

(assert (=> b!5325388 m!6359694))

(declare-fun m!6359696 () Bool)

(assert (=> b!5325385 m!6359696))

(declare-fun m!6359698 () Bool)

(assert (=> bm!380420 m!6359698))

(assert (=> bm!380222 d!1710396))

(declare-fun d!1710402 () Bool)

(declare-fun c!925870 () Bool)

(assert (=> d!1710402 (= c!925870 (isEmpty!33103 (tail!10511 (t!374468 s!2326))))))

(declare-fun e!3308168 () Bool)

(assert (=> d!1710402 (= (matchZipper!1229 (derivationStepZipper!1226 lt!2172713 (head!11414 (t!374468 s!2326))) (tail!10511 (t!374468 s!2326))) e!3308168)))

(declare-fun b!5325395 () Bool)

(assert (=> b!5325395 (= e!3308168 (nullableZipper!1348 (derivationStepZipper!1226 lt!2172713 (head!11414 (t!374468 s!2326)))))))

(declare-fun b!5325396 () Bool)

(assert (=> b!5325396 (= e!3308168 (matchZipper!1229 (derivationStepZipper!1226 (derivationStepZipper!1226 lt!2172713 (head!11414 (t!374468 s!2326))) (head!11414 (tail!10511 (t!374468 s!2326)))) (tail!10511 (tail!10511 (t!374468 s!2326)))))))

(assert (= (and d!1710402 c!925870) b!5325395))

(assert (= (and d!1710402 (not c!925870)) b!5325396))

(assert (=> d!1710402 m!6358324))

(declare-fun m!6359700 () Bool)

(assert (=> d!1710402 m!6359700))

(assert (=> b!5325395 m!6358644))

(declare-fun m!6359702 () Bool)

(assert (=> b!5325395 m!6359702))

(assert (=> b!5325396 m!6358324))

(declare-fun m!6359704 () Bool)

(assert (=> b!5325396 m!6359704))

(assert (=> b!5325396 m!6358644))

(assert (=> b!5325396 m!6359704))

(declare-fun m!6359706 () Bool)

(assert (=> b!5325396 m!6359706))

(assert (=> b!5325396 m!6358324))

(declare-fun m!6359708 () Bool)

(assert (=> b!5325396 m!6359708))

(assert (=> b!5325396 m!6359706))

(assert (=> b!5325396 m!6359708))

(declare-fun m!6359710 () Bool)

(assert (=> b!5325396 m!6359710))

(assert (=> b!5324270 d!1710402))

(declare-fun bs!1234337 () Bool)

(declare-fun d!1710404 () Bool)

(assert (= bs!1234337 (and d!1710404 b!5323675)))

(declare-fun lambda!271843 () Int)

(assert (=> bs!1234337 (= (= (head!11414 (t!374468 s!2326)) (h!67579 s!2326)) (= lambda!271843 lambda!271672))))

(declare-fun bs!1234339 () Bool)

(assert (= bs!1234339 (and d!1710404 d!1709960)))

(assert (=> bs!1234339 (= (= (head!11414 (t!374468 s!2326)) (h!67579 s!2326)) (= lambda!271843 lambda!271749))))

(declare-fun bs!1234341 () Bool)

(assert (= bs!1234341 (and d!1710404 d!1710266)))

(assert (=> bs!1234341 (= (= (head!11414 (t!374468 s!2326)) (head!11414 s!2326)) (= lambda!271843 lambda!271807))))

(assert (=> d!1710404 true))

(assert (=> d!1710404 (= (derivationStepZipper!1226 lt!2172713 (head!11414 (t!374468 s!2326))) (flatMap!712 lt!2172713 lambda!271843))))

(declare-fun bs!1234343 () Bool)

(assert (= bs!1234343 d!1710404))

(declare-fun m!6359714 () Bool)

(assert (=> bs!1234343 m!6359714))

(assert (=> b!5324270 d!1710404))

(declare-fun d!1710408 () Bool)

(assert (=> d!1710408 (= (head!11414 (t!374468 s!2326)) (h!67579 (t!374468 s!2326)))))

(assert (=> b!5324270 d!1710408))

(declare-fun d!1710410 () Bool)

(assert (=> d!1710410 (= (tail!10511 (t!374468 s!2326)) (t!374468 (t!374468 s!2326)))))

(assert (=> b!5324270 d!1710410))

(declare-fun bs!1234344 () Bool)

(declare-fun d!1710412 () Bool)

(assert (= bs!1234344 (and d!1710412 d!1710388)))

(declare-fun lambda!271844 () Int)

(assert (=> bs!1234344 (not (= lambda!271844 lambda!271837))))

(declare-fun bs!1234345 () Bool)

(assert (= bs!1234345 (and d!1710412 b!5323994)))

(assert (=> bs!1234345 (not (= lambda!271844 lambda!271718))))

(declare-fun bs!1234346 () Bool)

(assert (= bs!1234346 (and d!1710412 d!1710356)))

(assert (=> bs!1234346 (= lambda!271844 lambda!271822)))

(declare-fun bs!1234347 () Bool)

(assert (= bs!1234347 (and d!1710412 d!1710204)))

(assert (=> bs!1234347 (= lambda!271844 lambda!271801)))

(declare-fun bs!1234349 () Bool)

(assert (= bs!1234349 (and d!1710412 b!5323976)))

(assert (=> bs!1234349 (not (= lambda!271844 lambda!271714))))

(declare-fun bs!1234351 () Bool)

(assert (= bs!1234351 (and d!1710412 b!5325372)))

(assert (=> bs!1234351 (not (= lambda!271844 lambda!271841))))

(declare-fun bs!1234353 () Bool)

(assert (= bs!1234353 (and d!1710412 b!5323992)))

(assert (=> bs!1234353 (not (= lambda!271844 lambda!271717))))

(declare-fun bs!1234355 () Bool)

(assert (= bs!1234355 (and d!1710412 b!5325370)))

(assert (=> bs!1234355 (not (= lambda!271844 lambda!271840))))

(declare-fun bs!1234357 () Bool)

(assert (= bs!1234357 (and d!1710412 b!5323978)))

(assert (=> bs!1234357 (not (= lambda!271844 lambda!271715))))

(assert (=> d!1710412 (= (nullableZipper!1348 lt!2172717) (exists!2013 lt!2172717 lambda!271844))))

(declare-fun bs!1234359 () Bool)

(assert (= bs!1234359 d!1710412))

(declare-fun m!6359722 () Bool)

(assert (=> bs!1234359 m!6359722))

(assert (=> b!5324310 d!1710412))

(declare-fun d!1710416 () Bool)

(assert (=> d!1710416 (= (isEmpty!33099 (unfocusZipperList!427 zl!343)) ((_ is Nil!61130) (unfocusZipperList!427 zl!343)))))

(assert (=> b!5324350 d!1710416))

(declare-fun b!5325399 () Bool)

(declare-fun e!3308173 () Bool)

(declare-fun call!380430 () Bool)

(assert (=> b!5325399 (= e!3308173 call!380430)))

(declare-fun b!5325400 () Bool)

(declare-fun e!3308171 () Bool)

(declare-fun e!3308170 () Bool)

(assert (=> b!5325400 (= e!3308171 e!3308170)))

(declare-fun res!2258795 () Bool)

(assert (=> b!5325400 (=> (not res!2258795) (not e!3308170))))

(declare-fun call!380432 () Bool)

(assert (=> b!5325400 (= res!2258795 call!380432)))

(declare-fun b!5325401 () Bool)

(declare-fun res!2258793 () Bool)

(assert (=> b!5325401 (=> res!2258793 e!3308171)))

(assert (=> b!5325401 (= res!2258793 (not ((_ is Concat!23830) lt!2172760)))))

(declare-fun e!3308175 () Bool)

(assert (=> b!5325401 (= e!3308175 e!3308171)))

(declare-fun bm!380425 () Bool)

(declare-fun c!925872 () Bool)

(declare-fun c!925873 () Bool)

(assert (=> bm!380425 (= call!380430 (validRegex!6721 (ite c!925873 (reg!15314 lt!2172760) (ite c!925872 (regTwo!30483 lt!2172760) (regTwo!30482 lt!2172760)))))))

(declare-fun b!5325402 () Bool)

(declare-fun e!3308174 () Bool)

(assert (=> b!5325402 (= e!3308174 e!3308175)))

(assert (=> b!5325402 (= c!925872 ((_ is Union!14985) lt!2172760))))

(declare-fun d!1710418 () Bool)

(declare-fun res!2258792 () Bool)

(declare-fun e!3308172 () Bool)

(assert (=> d!1710418 (=> res!2258792 e!3308172)))

(assert (=> d!1710418 (= res!2258792 ((_ is ElementMatch!14985) lt!2172760))))

(assert (=> d!1710418 (= (validRegex!6721 lt!2172760) e!3308172)))

(declare-fun b!5325403 () Bool)

(declare-fun res!2258794 () Bool)

(declare-fun e!3308176 () Bool)

(assert (=> b!5325403 (=> (not res!2258794) (not e!3308176))))

(assert (=> b!5325403 (= res!2258794 call!380432)))

(assert (=> b!5325403 (= e!3308175 e!3308176)))

(declare-fun bm!380426 () Bool)

(assert (=> bm!380426 (= call!380432 (validRegex!6721 (ite c!925872 (regOne!30483 lt!2172760) (regOne!30482 lt!2172760))))))

(declare-fun b!5325404 () Bool)

(declare-fun call!380431 () Bool)

(assert (=> b!5325404 (= e!3308176 call!380431)))

(declare-fun b!5325405 () Bool)

(assert (=> b!5325405 (= e!3308170 call!380431)))

(declare-fun b!5325406 () Bool)

(assert (=> b!5325406 (= e!3308174 e!3308173)))

(declare-fun res!2258791 () Bool)

(assert (=> b!5325406 (= res!2258791 (not (nullable!5154 (reg!15314 lt!2172760))))))

(assert (=> b!5325406 (=> (not res!2258791) (not e!3308173))))

(declare-fun bm!380427 () Bool)

(assert (=> bm!380427 (= call!380431 call!380430)))

(declare-fun b!5325407 () Bool)

(assert (=> b!5325407 (= e!3308172 e!3308174)))

(assert (=> b!5325407 (= c!925873 ((_ is Star!14985) lt!2172760))))

(assert (= (and d!1710418 (not res!2258792)) b!5325407))

(assert (= (and b!5325407 c!925873) b!5325406))

(assert (= (and b!5325407 (not c!925873)) b!5325402))

(assert (= (and b!5325406 res!2258791) b!5325399))

(assert (= (and b!5325402 c!925872) b!5325403))

(assert (= (and b!5325402 (not c!925872)) b!5325401))

(assert (= (and b!5325403 res!2258794) b!5325404))

(assert (= (and b!5325401 (not res!2258793)) b!5325400))

(assert (= (and b!5325400 res!2258795) b!5325405))

(assert (= (or b!5325404 b!5325405) bm!380427))

(assert (= (or b!5325403 b!5325400) bm!380426))

(assert (= (or b!5325399 bm!380427) bm!380425))

(declare-fun m!6359726 () Bool)

(assert (=> bm!380425 m!6359726))

(declare-fun m!6359728 () Bool)

(assert (=> bm!380426 m!6359728))

(declare-fun m!6359730 () Bool)

(assert (=> b!5325406 m!6359730))

(assert (=> d!1709812 d!1710418))

(declare-fun d!1710426 () Bool)

(declare-fun res!2258797 () Bool)

(declare-fun e!3308177 () Bool)

(assert (=> d!1710426 (=> res!2258797 e!3308177)))

(assert (=> d!1710426 (= res!2258797 ((_ is Nil!61130) (exprs!4869 (h!67580 zl!343))))))

(assert (=> d!1710426 (= (forall!14403 (exprs!4869 (h!67580 zl!343)) lambda!271706) e!3308177)))

(declare-fun b!5325408 () Bool)

(declare-fun e!3308178 () Bool)

(assert (=> b!5325408 (= e!3308177 e!3308178)))

(declare-fun res!2258798 () Bool)

(assert (=> b!5325408 (=> (not res!2258798) (not e!3308178))))

(assert (=> b!5325408 (= res!2258798 (dynLambda!24169 lambda!271706 (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun b!5325409 () Bool)

(assert (=> b!5325409 (= e!3308178 (forall!14403 (t!374467 (exprs!4869 (h!67580 zl!343))) lambda!271706))))

(assert (= (and d!1710426 (not res!2258797)) b!5325408))

(assert (= (and b!5325408 res!2258798) b!5325409))

(declare-fun b_lambda!204839 () Bool)

(assert (=> (not b_lambda!204839) (not b!5325408)))

(declare-fun m!6359732 () Bool)

(assert (=> b!5325408 m!6359732))

(declare-fun m!6359734 () Bool)

(assert (=> b!5325409 m!6359734))

(assert (=> d!1709812 d!1710426))

(declare-fun bs!1234370 () Bool)

(declare-fun b!5325410 () Bool)

(assert (= bs!1234370 (and b!5325410 d!1709946)))

(declare-fun lambda!271847 () Int)

(assert (=> bs!1234370 (not (= lambda!271847 lambda!271746))))

(declare-fun bs!1234372 () Bool)

(assert (= bs!1234372 (and b!5325410 b!5325337)))

(declare-fun lt!2172962 () Int)

(assert (=> bs!1234372 (= (= lt!2172962 lt!2172951) (= lambda!271847 lambda!271832))))

(declare-fun bs!1234374 () Bool)

(assert (= bs!1234374 (and b!5325410 d!1709972)))

(assert (=> bs!1234374 (not (= lambda!271847 lambda!271755))))

(declare-fun bs!1234377 () Bool)

(assert (= bs!1234377 (and b!5325410 d!1709970)))

(assert (=> bs!1234377 (not (= lambda!271847 lambda!271752))))

(declare-fun bs!1234379 () Bool)

(assert (= bs!1234379 (and b!5325410 d!1710146)))

(assert (=> bs!1234379 (not (= lambda!271847 lambda!271795))))

(declare-fun bs!1234381 () Bool)

(assert (= bs!1234381 (and b!5325410 d!1710352)))

(assert (=> bs!1234381 (not (= lambda!271847 lambda!271819))))

(declare-fun bs!1234383 () Bool)

(assert (= bs!1234383 (and b!5325410 d!1709986)))

(assert (=> bs!1234383 (not (= lambda!271847 lambda!271762))))

(declare-fun bs!1234384 () Bool)

(assert (= bs!1234384 (and b!5325410 b!5325335)))

(assert (=> bs!1234384 (= (= lt!2172962 lt!2172950) (= lambda!271847 lambda!271830))))

(declare-fun bs!1234386 () Bool)

(assert (= bs!1234386 (and b!5325410 d!1710130)))

(assert (=> bs!1234386 (not (= lambda!271847 lambda!271794))))

(declare-fun bs!1234387 () Bool)

(assert (= bs!1234387 (and b!5325410 d!1709998)))

(assert (=> bs!1234387 (not (= lambda!271847 lambda!271765))))

(declare-fun bs!1234388 () Bool)

(assert (= bs!1234388 (and b!5325410 d!1709812)))

(assert (=> bs!1234388 (not (= lambda!271847 lambda!271706))))

(declare-fun bs!1234389 () Bool)

(assert (= bs!1234389 (and b!5325410 b!5323686)))

(assert (=> bs!1234389 (not (= lambda!271847 lambda!271673))))

(assert (=> b!5325410 true))

(declare-fun bs!1234390 () Bool)

(declare-fun b!5325412 () Bool)

(assert (= bs!1234390 (and b!5325412 d!1709946)))

(declare-fun lambda!271848 () Int)

(assert (=> bs!1234390 (not (= lambda!271848 lambda!271746))))

(declare-fun bs!1234391 () Bool)

(assert (= bs!1234391 (and b!5325412 b!5325337)))

(declare-fun lt!2172963 () Int)

(assert (=> bs!1234391 (= (= lt!2172963 lt!2172951) (= lambda!271848 lambda!271832))))

(declare-fun bs!1234392 () Bool)

(assert (= bs!1234392 (and b!5325412 b!5325410)))

(assert (=> bs!1234392 (= (= lt!2172963 lt!2172962) (= lambda!271848 lambda!271847))))

(declare-fun bs!1234393 () Bool)

(assert (= bs!1234393 (and b!5325412 d!1709972)))

(assert (=> bs!1234393 (not (= lambda!271848 lambda!271755))))

(declare-fun bs!1234394 () Bool)

(assert (= bs!1234394 (and b!5325412 d!1709970)))

(assert (=> bs!1234394 (not (= lambda!271848 lambda!271752))))

(declare-fun bs!1234395 () Bool)

(assert (= bs!1234395 (and b!5325412 d!1710146)))

(assert (=> bs!1234395 (not (= lambda!271848 lambda!271795))))

(declare-fun bs!1234396 () Bool)

(assert (= bs!1234396 (and b!5325412 d!1710352)))

(assert (=> bs!1234396 (not (= lambda!271848 lambda!271819))))

(declare-fun bs!1234397 () Bool)

(assert (= bs!1234397 (and b!5325412 d!1709986)))

(assert (=> bs!1234397 (not (= lambda!271848 lambda!271762))))

(declare-fun bs!1234398 () Bool)

(assert (= bs!1234398 (and b!5325412 b!5325335)))

(assert (=> bs!1234398 (= (= lt!2172963 lt!2172950) (= lambda!271848 lambda!271830))))

(declare-fun bs!1234399 () Bool)

(assert (= bs!1234399 (and b!5325412 d!1710130)))

(assert (=> bs!1234399 (not (= lambda!271848 lambda!271794))))

(declare-fun bs!1234400 () Bool)

(assert (= bs!1234400 (and b!5325412 d!1709998)))

(assert (=> bs!1234400 (not (= lambda!271848 lambda!271765))))

(declare-fun bs!1234401 () Bool)

(assert (= bs!1234401 (and b!5325412 d!1709812)))

(assert (=> bs!1234401 (not (= lambda!271848 lambda!271706))))

(declare-fun bs!1234402 () Bool)

(assert (= bs!1234402 (and b!5325412 b!5323686)))

(assert (=> bs!1234402 (not (= lambda!271848 lambda!271673))))

(assert (=> b!5325412 true))

(declare-fun d!1710428 () Bool)

(declare-fun e!3308179 () Bool)

(assert (=> d!1710428 e!3308179))

(declare-fun res!2258799 () Bool)

(assert (=> d!1710428 (=> (not res!2258799) (not e!3308179))))

(assert (=> d!1710428 (= res!2258799 (>= lt!2172963 0))))

(declare-fun e!3308180 () Int)

(assert (=> d!1710428 (= lt!2172963 e!3308180)))

(declare-fun c!925874 () Bool)

(assert (=> d!1710428 (= c!925874 ((_ is Cons!61130) (exprs!4869 (h!67580 zl!343))))))

(assert (=> d!1710428 (= (contextDepth!54 (h!67580 zl!343)) lt!2172963)))

(assert (=> b!5325410 (= e!3308180 lt!2172962)))

(assert (=> b!5325410 (= lt!2172962 (maxBigInt!0 (regexDepth!161 (h!67578 (exprs!4869 (h!67580 zl!343)))) (contextDepth!54 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343)))))))))

(declare-fun lt!2172960 () Unit!153458)

(assert (=> b!5325410 (= lt!2172960 (lemmaForallRegexDepthBiggerThanTransitive!10 (t!374467 (exprs!4869 (h!67580 zl!343))) lt!2172962 (contextDepth!54 (Context!8739 (t!374467 (exprs!4869 (h!67580 zl!343)))))))))

(assert (=> b!5325410 (forall!14403 (t!374467 (exprs!4869 (h!67580 zl!343))) lambda!271847)))

(declare-fun lt!2172961 () Unit!153458)

(assert (=> b!5325410 (= lt!2172961 lt!2172960)))

(declare-fun b!5325411 () Bool)

(assert (=> b!5325411 (= e!3308180 0)))

(assert (=> b!5325412 (= e!3308179 (forall!14403 (exprs!4869 (h!67580 zl!343)) lambda!271848))))

(assert (= (and d!1710428 c!925874) b!5325410))

(assert (= (and d!1710428 (not c!925874)) b!5325411))

(assert (= (and d!1710428 res!2258799) b!5325412))

(declare-fun m!6359754 () Bool)

(assert (=> b!5325410 m!6359754))

(declare-fun m!6359756 () Bool)

(assert (=> b!5325410 m!6359756))

(declare-fun m!6359758 () Bool)

(assert (=> b!5325410 m!6359758))

(assert (=> b!5325410 m!6359754))

(assert (=> b!5325410 m!6359756))

(declare-fun m!6359760 () Bool)

(assert (=> b!5325410 m!6359760))

(declare-fun m!6359762 () Bool)

(assert (=> b!5325410 m!6359762))

(assert (=> b!5325410 m!6359756))

(declare-fun m!6359764 () Bool)

(assert (=> b!5325412 m!6359764))

(assert (=> b!5323992 d!1710428))

(declare-fun bs!1234403 () Bool)

(declare-fun b!5325443 () Bool)

(assert (= bs!1234403 (and b!5325443 b!5323976)))

(declare-fun lambda!271849 () Int)

(assert (=> bs!1234403 (= lambda!271849 lambda!271713)))

(declare-fun bs!1234404 () Bool)

(assert (= bs!1234404 (and b!5325443 b!5323992)))

(assert (=> bs!1234404 (= lambda!271849 lambda!271716)))

(declare-fun bs!1234405 () Bool)

(assert (= bs!1234405 (and b!5325443 b!5325370)))

(assert (=> bs!1234405 (= lambda!271849 lambda!271839)))

(declare-fun bs!1234406 () Bool)

(assert (= bs!1234406 (and b!5325443 d!1710388)))

(declare-fun lambda!271850 () Int)

(assert (=> bs!1234406 (not (= lambda!271850 lambda!271837))))

(declare-fun bs!1234407 () Bool)

(assert (= bs!1234407 (and b!5325443 b!5323994)))

(declare-fun lt!2172968 () Int)

(assert (=> bs!1234407 (= (= lt!2172968 lt!2172779) (= lambda!271850 lambda!271718))))

(declare-fun bs!1234408 () Bool)

(assert (= bs!1234408 (and b!5325443 d!1710356)))

(assert (=> bs!1234408 (not (= lambda!271850 lambda!271822))))

(declare-fun bs!1234409 () Bool)

(assert (= bs!1234409 (and b!5325443 d!1710204)))

(assert (=> bs!1234409 (not (= lambda!271850 lambda!271801))))

(declare-fun bs!1234410 () Bool)

(assert (= bs!1234410 (and b!5325443 b!5325372)))

(assert (=> bs!1234410 (= (= lt!2172968 lt!2172956) (= lambda!271850 lambda!271841))))

(assert (=> bs!1234404 (= (= lt!2172968 lt!2172782) (= lambda!271850 lambda!271717))))

(assert (=> bs!1234405 (= (= lt!2172968 lt!2172959) (= lambda!271850 lambda!271840))))

(declare-fun bs!1234411 () Bool)

(assert (= bs!1234411 (and b!5325443 b!5323978)))

(assert (=> bs!1234411 (= (= lt!2172968 lt!2172775) (= lambda!271850 lambda!271715))))

(assert (=> bs!1234403 (= (= lt!2172968 lt!2172778) (= lambda!271850 lambda!271714))))

(declare-fun bs!1234412 () Bool)

(assert (= bs!1234412 (and b!5325443 d!1710412)))

(assert (=> bs!1234412 (not (= lambda!271850 lambda!271844))))

(assert (=> b!5325443 true))

(declare-fun bs!1234413 () Bool)

(declare-fun b!5325445 () Bool)

(assert (= bs!1234413 (and b!5325445 d!1710388)))

(declare-fun lambda!271851 () Int)

(assert (=> bs!1234413 (not (= lambda!271851 lambda!271837))))

(declare-fun bs!1234414 () Bool)

(assert (= bs!1234414 (and b!5325445 b!5323994)))

(declare-fun lt!2172965 () Int)

(assert (=> bs!1234414 (= (= lt!2172965 lt!2172779) (= lambda!271851 lambda!271718))))

(declare-fun bs!1234415 () Bool)

(assert (= bs!1234415 (and b!5325445 d!1710356)))

(assert (=> bs!1234415 (not (= lambda!271851 lambda!271822))))

(declare-fun bs!1234416 () Bool)

(assert (= bs!1234416 (and b!5325445 b!5325443)))

(assert (=> bs!1234416 (= (= lt!2172965 lt!2172968) (= lambda!271851 lambda!271850))))

(declare-fun bs!1234417 () Bool)

(assert (= bs!1234417 (and b!5325445 d!1710204)))

(assert (=> bs!1234417 (not (= lambda!271851 lambda!271801))))

(declare-fun bs!1234418 () Bool)

(assert (= bs!1234418 (and b!5325445 b!5325372)))

(assert (=> bs!1234418 (= (= lt!2172965 lt!2172956) (= lambda!271851 lambda!271841))))

(declare-fun bs!1234419 () Bool)

(assert (= bs!1234419 (and b!5325445 b!5323992)))

(assert (=> bs!1234419 (= (= lt!2172965 lt!2172782) (= lambda!271851 lambda!271717))))

(declare-fun bs!1234420 () Bool)

(assert (= bs!1234420 (and b!5325445 b!5325370)))

(assert (=> bs!1234420 (= (= lt!2172965 lt!2172959) (= lambda!271851 lambda!271840))))

(declare-fun bs!1234421 () Bool)

(assert (= bs!1234421 (and b!5325445 b!5323978)))

(assert (=> bs!1234421 (= (= lt!2172965 lt!2172775) (= lambda!271851 lambda!271715))))

(declare-fun bs!1234422 () Bool)

(assert (= bs!1234422 (and b!5325445 b!5323976)))

(assert (=> bs!1234422 (= (= lt!2172965 lt!2172778) (= lambda!271851 lambda!271714))))

(declare-fun bs!1234423 () Bool)

(assert (= bs!1234423 (and b!5325445 d!1710412)))

(assert (=> bs!1234423 (not (= lambda!271851 lambda!271844))))

(assert (=> b!5325445 true))

(declare-fun d!1710438 () Bool)

(declare-fun e!3308197 () Bool)

(assert (=> d!1710438 e!3308197))

(declare-fun res!2258810 () Bool)

(assert (=> d!1710438 (=> (not res!2258810) (not e!3308197))))

(assert (=> d!1710438 (= res!2258810 (>= lt!2172965 0))))

(declare-fun e!3308198 () Int)

(assert (=> d!1710438 (= lt!2172965 e!3308198)))

(declare-fun c!925885 () Bool)

(assert (=> d!1710438 (= c!925885 ((_ is Cons!61132) (t!374469 zl!343)))))

(assert (=> d!1710438 (= (zipperDepth!94 (t!374469 zl!343)) lt!2172965)))

(assert (=> b!5325443 (= e!3308198 lt!2172968)))

(assert (=> b!5325443 (= lt!2172968 (maxBigInt!0 (contextDepth!54 (h!67580 (t!374469 zl!343))) (zipperDepth!94 (t!374469 (t!374469 zl!343)))))))

(declare-fun lt!2172966 () Unit!153458)

(assert (=> b!5325443 (= lt!2172966 (lemmaForallContextDepthBiggerThanTransitive!48 (t!374469 (t!374469 zl!343)) lt!2172968 (zipperDepth!94 (t!374469 (t!374469 zl!343))) lambda!271849))))

(assert (=> b!5325443 (forall!14405 (t!374469 (t!374469 zl!343)) lambda!271850)))

(declare-fun lt!2172967 () Unit!153458)

(assert (=> b!5325443 (= lt!2172967 lt!2172966)))

(declare-fun b!5325444 () Bool)

(assert (=> b!5325444 (= e!3308198 0)))

(assert (=> b!5325445 (= e!3308197 (forall!14405 (t!374469 zl!343) lambda!271851))))

(assert (= (and d!1710438 c!925885) b!5325443))

(assert (= (and d!1710438 (not c!925885)) b!5325444))

(assert (= (and d!1710438 res!2258810) b!5325445))

(declare-fun m!6359792 () Bool)

(assert (=> b!5325443 m!6359792))

(declare-fun m!6359794 () Bool)

(assert (=> b!5325443 m!6359794))

(assert (=> b!5325443 m!6359792))

(declare-fun m!6359796 () Bool)

(assert (=> b!5325443 m!6359796))

(declare-fun m!6359798 () Bool)

(assert (=> b!5325443 m!6359798))

(assert (=> b!5325443 m!6359796))

(assert (=> b!5325443 m!6359796))

(declare-fun m!6359800 () Bool)

(assert (=> b!5325443 m!6359800))

(declare-fun m!6359802 () Bool)

(assert (=> b!5325445 m!6359802))

(assert (=> b!5323992 d!1710438))

(declare-fun bs!1234424 () Bool)

(declare-fun d!1710446 () Bool)

(assert (= bs!1234424 (and d!1710446 d!1710388)))

(declare-fun lambda!271852 () Int)

(assert (=> bs!1234424 (= (and (= lt!2172782 lt!2172778) (= lambda!271716 lambda!271713)) (= lambda!271852 lambda!271837))))

(declare-fun bs!1234425 () Bool)

(assert (= bs!1234425 (and d!1710446 b!5323994)))

(assert (=> bs!1234425 (not (= lambda!271852 lambda!271718))))

(declare-fun bs!1234426 () Bool)

(assert (= bs!1234426 (and d!1710446 b!5325445)))

(assert (=> bs!1234426 (not (= lambda!271852 lambda!271851))))

(declare-fun bs!1234427 () Bool)

(assert (= bs!1234427 (and d!1710446 d!1710356)))

(assert (=> bs!1234427 (not (= lambda!271852 lambda!271822))))

(declare-fun bs!1234428 () Bool)

(assert (= bs!1234428 (and d!1710446 b!5325443)))

(assert (=> bs!1234428 (not (= lambda!271852 lambda!271850))))

(declare-fun bs!1234429 () Bool)

(assert (= bs!1234429 (and d!1710446 d!1710204)))

(assert (=> bs!1234429 (not (= lambda!271852 lambda!271801))))

(declare-fun bs!1234430 () Bool)

(assert (= bs!1234430 (and d!1710446 b!5325372)))

(assert (=> bs!1234430 (not (= lambda!271852 lambda!271841))))

(declare-fun bs!1234431 () Bool)

(assert (= bs!1234431 (and d!1710446 b!5323992)))

(assert (=> bs!1234431 (not (= lambda!271852 lambda!271717))))

(declare-fun bs!1234432 () Bool)

(assert (= bs!1234432 (and d!1710446 b!5325370)))

(assert (=> bs!1234432 (not (= lambda!271852 lambda!271840))))

(declare-fun bs!1234433 () Bool)

(assert (= bs!1234433 (and d!1710446 b!5323978)))

(assert (=> bs!1234433 (not (= lambda!271852 lambda!271715))))

(declare-fun bs!1234434 () Bool)

(assert (= bs!1234434 (and d!1710446 b!5323976)))

(assert (=> bs!1234434 (not (= lambda!271852 lambda!271714))))

(declare-fun bs!1234435 () Bool)

(assert (= bs!1234435 (and d!1710446 d!1710412)))

(assert (=> bs!1234435 (not (= lambda!271852 lambda!271844))))

(assert (=> d!1710446 true))

(assert (=> d!1710446 true))

(assert (=> d!1710446 (< (dynLambda!24174 order!27087 lambda!271716) (dynLambda!24175 order!27089 lambda!271852))))

(assert (=> d!1710446 (forall!14405 (t!374469 zl!343) lambda!271852)))

(declare-fun lt!2172970 () Unit!153458)

(assert (=> d!1710446 (= lt!2172970 (choose!39870 (t!374469 zl!343) lt!2172782 (zipperDepth!94 (t!374469 zl!343)) lambda!271716))))

(assert (=> d!1710446 (>= lt!2172782 (zipperDepth!94 (t!374469 zl!343)))))

(assert (=> d!1710446 (= (lemmaForallContextDepthBiggerThanTransitive!48 (t!374469 zl!343) lt!2172782 (zipperDepth!94 (t!374469 zl!343)) lambda!271716) lt!2172970)))

(declare-fun bs!1234436 () Bool)

(assert (= bs!1234436 d!1710446))

(declare-fun m!6359812 () Bool)

(assert (=> bs!1234436 m!6359812))

(assert (=> bs!1234436 m!6358434))

(declare-fun m!6359814 () Bool)

(assert (=> bs!1234436 m!6359814))

(assert (=> b!5323992 d!1710446))

(declare-fun d!1710450 () Bool)

(assert (=> d!1710450 (= (maxBigInt!0 (contextDepth!54 (h!67580 zl!343)) (zipperDepth!94 (t!374469 zl!343))) (ite (>= (contextDepth!54 (h!67580 zl!343)) (zipperDepth!94 (t!374469 zl!343))) (contextDepth!54 (h!67580 zl!343)) (zipperDepth!94 (t!374469 zl!343))))))

(assert (=> b!5323992 d!1710450))

(declare-fun d!1710452 () Bool)

(declare-fun res!2258813 () Bool)

(declare-fun e!3308223 () Bool)

(assert (=> d!1710452 (=> res!2258813 e!3308223)))

(assert (=> d!1710452 (= res!2258813 ((_ is Nil!61132) (t!374469 zl!343)))))

(assert (=> d!1710452 (= (forall!14405 (t!374469 zl!343) lambda!271717) e!3308223)))

(declare-fun b!5325503 () Bool)

(declare-fun e!3308224 () Bool)

(assert (=> b!5325503 (= e!3308223 e!3308224)))

(declare-fun res!2258814 () Bool)

(assert (=> b!5325503 (=> (not res!2258814) (not e!3308224))))

(assert (=> b!5325503 (= res!2258814 (dynLambda!24173 lambda!271717 (h!67580 (t!374469 zl!343))))))

(declare-fun b!5325504 () Bool)

(assert (=> b!5325504 (= e!3308224 (forall!14405 (t!374469 (t!374469 zl!343)) lambda!271717))))

(assert (= (and d!1710452 (not res!2258813)) b!5325503))

(assert (= (and b!5325503 res!2258814) b!5325504))

(declare-fun b_lambda!204841 () Bool)

(assert (=> (not b_lambda!204841) (not b!5325503)))

(declare-fun m!6359816 () Bool)

(assert (=> b!5325503 m!6359816))

(declare-fun m!6359818 () Bool)

(assert (=> b!5325504 m!6359818))

(assert (=> b!5323992 d!1710452))

(assert (=> b!5324291 d!1710292))

(declare-fun bs!1234437 () Bool)

(declare-fun d!1710454 () Bool)

(assert (= bs!1234437 (and d!1710454 d!1710388)))

(declare-fun lambda!271853 () Int)

(assert (=> bs!1234437 (not (= lambda!271853 lambda!271837))))

(declare-fun bs!1234438 () Bool)

(assert (= bs!1234438 (and d!1710454 b!5323994)))

(assert (=> bs!1234438 (not (= lambda!271853 lambda!271718))))

(declare-fun bs!1234439 () Bool)

(assert (= bs!1234439 (and d!1710454 b!5325445)))

(assert (=> bs!1234439 (not (= lambda!271853 lambda!271851))))

(declare-fun bs!1234440 () Bool)

(assert (= bs!1234440 (and d!1710454 d!1710356)))

(assert (=> bs!1234440 (= lambda!271853 lambda!271822)))

(declare-fun bs!1234441 () Bool)

(assert (= bs!1234441 (and d!1710454 b!5325443)))

(assert (=> bs!1234441 (not (= lambda!271853 lambda!271850))))

(declare-fun bs!1234442 () Bool)

(assert (= bs!1234442 (and d!1710454 b!5325372)))

(assert (=> bs!1234442 (not (= lambda!271853 lambda!271841))))

(declare-fun bs!1234443 () Bool)

(assert (= bs!1234443 (and d!1710454 b!5323992)))

(assert (=> bs!1234443 (not (= lambda!271853 lambda!271717))))

(declare-fun bs!1234444 () Bool)

(assert (= bs!1234444 (and d!1710454 b!5325370)))

(assert (=> bs!1234444 (not (= lambda!271853 lambda!271840))))

(declare-fun bs!1234445 () Bool)

(assert (= bs!1234445 (and d!1710454 b!5323978)))

(assert (=> bs!1234445 (not (= lambda!271853 lambda!271715))))

(declare-fun bs!1234446 () Bool)

(assert (= bs!1234446 (and d!1710454 d!1710204)))

(assert (=> bs!1234446 (= lambda!271853 lambda!271801)))

(declare-fun bs!1234447 () Bool)

(assert (= bs!1234447 (and d!1710454 d!1710446)))

(assert (=> bs!1234447 (not (= lambda!271853 lambda!271852))))

(declare-fun bs!1234448 () Bool)

(assert (= bs!1234448 (and d!1710454 b!5323976)))

(assert (=> bs!1234448 (not (= lambda!271853 lambda!271714))))

(declare-fun bs!1234449 () Bool)

(assert (= bs!1234449 (and d!1710454 d!1710412)))

(assert (=> bs!1234449 (= lambda!271853 lambda!271844)))

(assert (=> d!1710454 (= (nullableZipper!1348 lt!2172719) (exists!2013 lt!2172719 lambda!271853))))

(declare-fun bs!1234450 () Bool)

(assert (= bs!1234450 d!1710454))

(declare-fun m!6359820 () Bool)

(assert (=> bs!1234450 m!6359820))

(assert (=> b!5323894 d!1710454))

(assert (=> bm!380243 d!1710198))

(declare-fun d!1710456 () Bool)

(assert (=> d!1710456 (= (isEmpty!33103 (t!374468 s!2326)) ((_ is Nil!61131) (t!374468 s!2326)))))

(assert (=> d!1709932 d!1710456))

(declare-fun b!5325551 () Bool)

(declare-fun e!3308238 () Bool)

(assert (=> b!5325551 (= e!3308238 (nullable!5154 (derivativeStep!4169 r!7292 (head!11414 s!2326))))))

(declare-fun b!5325552 () Bool)

(declare-fun e!3308239 () Bool)

(assert (=> b!5325552 (= e!3308239 (not (= (head!11414 (tail!10511 s!2326)) (c!925355 (derivativeStep!4169 r!7292 (head!11414 s!2326))))))))

(declare-fun b!5325553 () Bool)

(declare-fun e!3308243 () Bool)

(declare-fun lt!2172971 () Bool)

(assert (=> b!5325553 (= e!3308243 (not lt!2172971))))

(declare-fun b!5325554 () Bool)

(declare-fun e!3308241 () Bool)

(declare-fun e!3308237 () Bool)

(assert (=> b!5325554 (= e!3308241 e!3308237)))

(declare-fun res!2258820 () Bool)

(assert (=> b!5325554 (=> (not res!2258820) (not e!3308237))))

(assert (=> b!5325554 (= res!2258820 (not lt!2172971))))

(declare-fun b!5325555 () Bool)

(declare-fun res!2258819 () Bool)

(declare-fun e!3308240 () Bool)

(assert (=> b!5325555 (=> (not res!2258819) (not e!3308240))))

(assert (=> b!5325555 (= res!2258819 (isEmpty!33103 (tail!10511 (tail!10511 s!2326))))))

(declare-fun b!5325556 () Bool)

(declare-fun res!2258821 () Bool)

(assert (=> b!5325556 (=> res!2258821 e!3308241)))

(assert (=> b!5325556 (= res!2258821 (not ((_ is ElementMatch!14985) (derivativeStep!4169 r!7292 (head!11414 s!2326)))))))

(assert (=> b!5325556 (= e!3308243 e!3308241)))

(declare-fun b!5325557 () Bool)

(assert (=> b!5325557 (= e!3308240 (= (head!11414 (tail!10511 s!2326)) (c!925355 (derivativeStep!4169 r!7292 (head!11414 s!2326)))))))

(declare-fun b!5325558 () Bool)

(assert (=> b!5325558 (= e!3308237 e!3308239)))

(declare-fun res!2258822 () Bool)

(assert (=> b!5325558 (=> res!2258822 e!3308239)))

(declare-fun call!380457 () Bool)

(assert (=> b!5325558 (= res!2258822 call!380457)))

(declare-fun bm!380452 () Bool)

(assert (=> bm!380452 (= call!380457 (isEmpty!33103 (tail!10511 s!2326)))))

(declare-fun b!5325559 () Bool)

(declare-fun res!2258817 () Bool)

(assert (=> b!5325559 (=> res!2258817 e!3308239)))

(assert (=> b!5325559 (= res!2258817 (not (isEmpty!33103 (tail!10511 (tail!10511 s!2326)))))))

(declare-fun d!1710458 () Bool)

(declare-fun e!3308242 () Bool)

(assert (=> d!1710458 e!3308242))

(declare-fun c!925903 () Bool)

(assert (=> d!1710458 (= c!925903 ((_ is EmptyExpr!14985) (derivativeStep!4169 r!7292 (head!11414 s!2326))))))

(assert (=> d!1710458 (= lt!2172971 e!3308238)))

(declare-fun c!925902 () Bool)

(assert (=> d!1710458 (= c!925902 (isEmpty!33103 (tail!10511 s!2326)))))

(assert (=> d!1710458 (validRegex!6721 (derivativeStep!4169 r!7292 (head!11414 s!2326)))))

(assert (=> d!1710458 (= (matchR!7170 (derivativeStep!4169 r!7292 (head!11414 s!2326)) (tail!10511 s!2326)) lt!2172971)))

(declare-fun b!5325550 () Bool)

(declare-fun res!2258818 () Bool)

(assert (=> b!5325550 (=> (not res!2258818) (not e!3308240))))

(assert (=> b!5325550 (= res!2258818 (not call!380457))))

(declare-fun b!5325560 () Bool)

(assert (=> b!5325560 (= e!3308242 e!3308243)))

(declare-fun c!925901 () Bool)

(assert (=> b!5325560 (= c!925901 ((_ is EmptyLang!14985) (derivativeStep!4169 r!7292 (head!11414 s!2326))))))

(declare-fun b!5325561 () Bool)

(assert (=> b!5325561 (= e!3308242 (= lt!2172971 call!380457))))

(declare-fun b!5325562 () Bool)

(declare-fun res!2258816 () Bool)

(assert (=> b!5325562 (=> res!2258816 e!3308241)))

(assert (=> b!5325562 (= res!2258816 e!3308240)))

(declare-fun res!2258815 () Bool)

(assert (=> b!5325562 (=> (not res!2258815) (not e!3308240))))

(assert (=> b!5325562 (= res!2258815 lt!2172971)))

(declare-fun b!5325563 () Bool)

(assert (=> b!5325563 (= e!3308238 (matchR!7170 (derivativeStep!4169 (derivativeStep!4169 r!7292 (head!11414 s!2326)) (head!11414 (tail!10511 s!2326))) (tail!10511 (tail!10511 s!2326))))))

(assert (= (and d!1710458 c!925902) b!5325551))

(assert (= (and d!1710458 (not c!925902)) b!5325563))

(assert (= (and d!1710458 c!925903) b!5325561))

(assert (= (and d!1710458 (not c!925903)) b!5325560))

(assert (= (and b!5325560 c!925901) b!5325553))

(assert (= (and b!5325560 (not c!925901)) b!5325556))

(assert (= (and b!5325556 (not res!2258821)) b!5325562))

(assert (= (and b!5325562 res!2258815) b!5325550))

(assert (= (and b!5325550 res!2258818) b!5325555))

(assert (= (and b!5325555 res!2258819) b!5325557))

(assert (= (and b!5325562 (not res!2258816)) b!5325554))

(assert (= (and b!5325554 res!2258820) b!5325558))

(assert (= (and b!5325558 (not res!2258822)) b!5325559))

(assert (= (and b!5325559 (not res!2258817)) b!5325552))

(assert (= (or b!5325561 b!5325550 b!5325558) bm!380452))

(assert (=> bm!380452 m!6358758))

(assert (=> bm!380452 m!6358760))

(assert (=> b!5325552 m!6358758))

(assert (=> b!5325552 m!6359378))

(assert (=> d!1710458 m!6358758))

(assert (=> d!1710458 m!6358760))

(assert (=> d!1710458 m!6358808))

(declare-fun m!6359824 () Bool)

(assert (=> d!1710458 m!6359824))

(assert (=> b!5325557 m!6358758))

(assert (=> b!5325557 m!6359378))

(assert (=> b!5325555 m!6358758))

(assert (=> b!5325555 m!6359382))

(assert (=> b!5325555 m!6359382))

(declare-fun m!6359826 () Bool)

(assert (=> b!5325555 m!6359826))

(assert (=> b!5325551 m!6358808))

(declare-fun m!6359828 () Bool)

(assert (=> b!5325551 m!6359828))

(assert (=> b!5325559 m!6358758))

(assert (=> b!5325559 m!6359382))

(assert (=> b!5325559 m!6359382))

(assert (=> b!5325559 m!6359826))

(assert (=> b!5325563 m!6358758))

(assert (=> b!5325563 m!6359378))

(assert (=> b!5325563 m!6358808))

(assert (=> b!5325563 m!6359378))

(declare-fun m!6359830 () Bool)

(assert (=> b!5325563 m!6359830))

(assert (=> b!5325563 m!6358758))

(assert (=> b!5325563 m!6359382))

(assert (=> b!5325563 m!6359830))

(assert (=> b!5325563 m!6359382))

(declare-fun m!6359832 () Bool)

(assert (=> b!5325563 m!6359832))

(assert (=> b!5324490 d!1710458))

(declare-fun b!5325630 () Bool)

(declare-fun e!3308274 () Regex!14985)

(declare-fun call!380467 () Regex!14985)

(assert (=> b!5325630 (= e!3308274 (Concat!23830 call!380467 r!7292))))

(declare-fun b!5325631 () Bool)

(declare-fun e!3308272 () Regex!14985)

(assert (=> b!5325631 (= e!3308272 EmptyLang!14985)))

(declare-fun bm!380461 () Bool)

(declare-fun call!380466 () Regex!14985)

(declare-fun call!380468 () Regex!14985)

(assert (=> bm!380461 (= call!380466 call!380468)))

(declare-fun b!5325632 () Bool)

(declare-fun e!3308270 () Regex!14985)

(assert (=> b!5325632 (= e!3308272 e!3308270)))

(declare-fun c!925916 () Bool)

(assert (=> b!5325632 (= c!925916 ((_ is ElementMatch!14985) r!7292))))

(declare-fun b!5325633 () Bool)

(declare-fun e!3308273 () Regex!14985)

(declare-fun call!380469 () Regex!14985)

(assert (=> b!5325633 (= e!3308273 (Union!14985 call!380468 call!380469))))

(declare-fun b!5325634 () Bool)

(declare-fun c!925915 () Bool)

(assert (=> b!5325634 (= c!925915 (nullable!5154 (regOne!30482 r!7292)))))

(declare-fun e!3308271 () Regex!14985)

(assert (=> b!5325634 (= e!3308274 e!3308271)))

(declare-fun b!5325635 () Bool)

(assert (=> b!5325635 (= e!3308273 e!3308274)))

(declare-fun c!925918 () Bool)

(assert (=> b!5325635 (= c!925918 ((_ is Star!14985) r!7292))))

(declare-fun b!5325636 () Bool)

(declare-fun c!925917 () Bool)

(assert (=> b!5325636 (= c!925917 ((_ is Union!14985) r!7292))))

(assert (=> b!5325636 (= e!3308270 e!3308273)))

(declare-fun bm!380463 () Bool)

(assert (=> bm!380463 (= call!380469 (derivativeStep!4169 (ite c!925917 (regTwo!30483 r!7292) (ite c!925918 (reg!15314 r!7292) (regOne!30482 r!7292))) (head!11414 s!2326)))))

(declare-fun bm!380464 () Bool)

(assert (=> bm!380464 (= call!380468 (derivativeStep!4169 (ite c!925917 (regOne!30483 r!7292) (ite c!925915 (regTwo!30482 r!7292) (regOne!30482 r!7292))) (head!11414 s!2326)))))

(declare-fun b!5325637 () Bool)

(assert (=> b!5325637 (= e!3308270 (ite (= (head!11414 s!2326) (c!925355 r!7292)) EmptyExpr!14985 EmptyLang!14985))))

(declare-fun b!5325638 () Bool)

(assert (=> b!5325638 (= e!3308271 (Union!14985 (Concat!23830 call!380466 (regTwo!30482 r!7292)) EmptyLang!14985))))

(declare-fun b!5325639 () Bool)

(assert (=> b!5325639 (= e!3308271 (Union!14985 (Concat!23830 call!380467 (regTwo!30482 r!7292)) call!380466))))

(declare-fun d!1710460 () Bool)

(declare-fun lt!2172974 () Regex!14985)

(assert (=> d!1710460 (validRegex!6721 lt!2172974)))

(assert (=> d!1710460 (= lt!2172974 e!3308272)))

(declare-fun c!925914 () Bool)

(assert (=> d!1710460 (= c!925914 (or ((_ is EmptyExpr!14985) r!7292) ((_ is EmptyLang!14985) r!7292)))))

(assert (=> d!1710460 (validRegex!6721 r!7292)))

(assert (=> d!1710460 (= (derivativeStep!4169 r!7292 (head!11414 s!2326)) lt!2172974)))

(declare-fun bm!380462 () Bool)

(assert (=> bm!380462 (= call!380467 call!380469)))

(assert (= (and d!1710460 c!925914) b!5325631))

(assert (= (and d!1710460 (not c!925914)) b!5325632))

(assert (= (and b!5325632 c!925916) b!5325637))

(assert (= (and b!5325632 (not c!925916)) b!5325636))

(assert (= (and b!5325636 c!925917) b!5325633))

(assert (= (and b!5325636 (not c!925917)) b!5325635))

(assert (= (and b!5325635 c!925918) b!5325630))

(assert (= (and b!5325635 (not c!925918)) b!5325634))

(assert (= (and b!5325634 c!925915) b!5325639))

(assert (= (and b!5325634 (not c!925915)) b!5325638))

(assert (= (or b!5325639 b!5325638) bm!380461))

(assert (= (or b!5325630 b!5325639) bm!380462))

(assert (= (or b!5325633 bm!380462) bm!380463))

(assert (= (or b!5325633 bm!380461) bm!380464))

(assert (=> b!5325634 m!6359286))

(assert (=> bm!380463 m!6358756))

(declare-fun m!6359848 () Bool)

(assert (=> bm!380463 m!6359848))

(assert (=> bm!380464 m!6358756))

(declare-fun m!6359850 () Bool)

(assert (=> bm!380464 m!6359850))

(declare-fun m!6359852 () Bool)

(assert (=> d!1710460 m!6359852))

(assert (=> d!1710460 m!6358204))

(assert (=> b!5324490 d!1710460))

(assert (=> b!5324490 d!1710270))

(assert (=> b!5324490 d!1710164))

(declare-fun d!1710484 () Bool)

(assert (=> d!1710484 (= ($colon$colon!1398 (exprs!4869 lt!2172716) (ite (or c!925525 c!925524) (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (h!67578 (exprs!4869 (h!67580 zl!343))))) (Cons!61130 (ite (or c!925525 c!925524) (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (h!67578 (exprs!4869 (h!67580 zl!343)))) (exprs!4869 lt!2172716)))))

(assert (=> bm!380224 d!1710484))

(declare-fun d!1710486 () Bool)

(assert (=> d!1710486 (= (head!11413 (exprs!4869 (h!67580 zl!343))) (h!67578 (exprs!4869 (h!67580 zl!343))))))

(assert (=> b!5323859 d!1710486))

(declare-fun d!1710488 () Bool)

(assert (=> d!1710488 (= (isEmpty!33099 lt!2172704) ((_ is Nil!61130) lt!2172704))))

(assert (=> b!5324460 d!1710488))

(assert (=> d!1709992 d!1709990))

(assert (=> d!1709992 d!1709988))

(declare-fun d!1710490 () Bool)

(assert (=> d!1710490 (= (matchR!7170 r!7292 s!2326) (matchRSpec!2088 r!7292 s!2326))))

(assert (=> d!1710490 true))

(declare-fun _$88!3627 () Unit!153458)

(assert (=> d!1710490 (= (choose!39867 r!7292 s!2326) _$88!3627)))

(declare-fun bs!1234462 () Bool)

(assert (= bs!1234462 d!1710490))

(assert (=> bs!1234462 m!6358162))

(assert (=> bs!1234462 m!6358160))

(assert (=> d!1709992 d!1710490))

(assert (=> d!1709992 d!1710000))

(declare-fun d!1710492 () Bool)

(assert (=> d!1710492 (= (nullable!5154 r!7292) (nullableFct!1500 r!7292))))

(declare-fun bs!1234463 () Bool)

(assert (= bs!1234463 d!1710492))

(declare-fun m!6359854 () Bool)

(assert (=> bs!1234463 m!6359854))

(assert (=> b!5324478 d!1710492))

(declare-fun bs!1234464 () Bool)

(declare-fun b!5325643 () Bool)

(assert (= bs!1234464 (and b!5325643 d!1709938)))

(declare-fun lambda!271854 () Int)

(assert (=> bs!1234464 (not (= lambda!271854 lambda!271737))))

(declare-fun bs!1234465 () Bool)

(assert (= bs!1234465 (and b!5325643 b!5325181)))

(assert (=> bs!1234465 (= (and (= (reg!15314 (regOne!30483 lt!2172700)) (reg!15314 (regTwo!30483 lt!2172700))) (= (regOne!30483 lt!2172700) (regTwo!30483 lt!2172700))) (= lambda!271854 lambda!271812))))

(declare-fun bs!1234466 () Bool)

(assert (= bs!1234466 (and b!5325643 b!5324398)))

(assert (=> bs!1234466 (= (and (= (reg!15314 (regOne!30483 lt!2172700)) (reg!15314 lt!2172700)) (= (regOne!30483 lt!2172700) lt!2172700)) (= lambda!271854 lambda!271760))))

(declare-fun bs!1234467 () Bool)

(assert (= bs!1234467 (and b!5325643 b!5324471)))

(assert (=> bs!1234467 (not (= lambda!271854 lambda!271764))))

(declare-fun bs!1234468 () Bool)

(assert (= bs!1234468 (and b!5325643 b!5325006)))

(assert (=> bs!1234468 (= (and (= (reg!15314 (regOne!30483 lt!2172700)) (reg!15314 (regTwo!30483 r!7292))) (= (regOne!30483 lt!2172700) (regTwo!30483 r!7292))) (= lambda!271854 lambda!271802))))

(declare-fun bs!1234469 () Bool)

(assert (= bs!1234469 (and b!5325643 b!5324469)))

(assert (=> bs!1234469 (= (and (= (reg!15314 (regOne!30483 lt!2172700)) (reg!15314 r!7292)) (= (regOne!30483 lt!2172700) r!7292)) (= lambda!271854 lambda!271763))))

(declare-fun bs!1234470 () Bool)

(assert (= bs!1234470 (and b!5325643 b!5323677)))

(assert (=> bs!1234470 (not (= lambda!271854 lambda!271670))))

(declare-fun bs!1234471 () Bool)

(assert (= bs!1234471 (and b!5325643 b!5325008)))

(assert (=> bs!1234471 (not (= lambda!271854 lambda!271804))))

(declare-fun bs!1234472 () Bool)

(assert (= bs!1234472 (and b!5325643 d!1709942)))

(assert (=> bs!1234472 (not (= lambda!271854 lambda!271743))))

(assert (=> bs!1234470 (not (= lambda!271854 lambda!271671))))

(declare-fun bs!1234473 () Bool)

(assert (= bs!1234473 (and b!5325643 b!5324400)))

(assert (=> bs!1234473 (not (= lambda!271854 lambda!271761))))

(declare-fun bs!1234474 () Bool)

(assert (= bs!1234474 (and b!5325643 b!5325183)))

(assert (=> bs!1234474 (not (= lambda!271854 lambda!271813))))

(assert (=> bs!1234472 (not (= lambda!271854 lambda!271742))))

(assert (=> b!5325643 true))

(assert (=> b!5325643 true))

(declare-fun bs!1234475 () Bool)

(declare-fun b!5325645 () Bool)

(assert (= bs!1234475 (and b!5325645 d!1709938)))

(declare-fun lambda!271855 () Int)

(assert (=> bs!1234475 (not (= lambda!271855 lambda!271737))))

(declare-fun bs!1234476 () Bool)

(assert (= bs!1234476 (and b!5325645 b!5325181)))

(assert (=> bs!1234476 (not (= lambda!271855 lambda!271812))))

(declare-fun bs!1234477 () Bool)

(assert (= bs!1234477 (and b!5325645 b!5325643)))

(assert (=> bs!1234477 (not (= lambda!271855 lambda!271854))))

(declare-fun bs!1234478 () Bool)

(assert (= bs!1234478 (and b!5325645 b!5324398)))

(assert (=> bs!1234478 (not (= lambda!271855 lambda!271760))))

(declare-fun bs!1234479 () Bool)

(assert (= bs!1234479 (and b!5325645 b!5324471)))

(assert (=> bs!1234479 (= (and (= (regOne!30482 (regOne!30483 lt!2172700)) (regOne!30482 r!7292)) (= (regTwo!30482 (regOne!30483 lt!2172700)) (regTwo!30482 r!7292))) (= lambda!271855 lambda!271764))))

(declare-fun bs!1234480 () Bool)

(assert (= bs!1234480 (and b!5325645 b!5325006)))

(assert (=> bs!1234480 (not (= lambda!271855 lambda!271802))))

(declare-fun bs!1234481 () Bool)

(assert (= bs!1234481 (and b!5325645 b!5324469)))

(assert (=> bs!1234481 (not (= lambda!271855 lambda!271763))))

(declare-fun bs!1234482 () Bool)

(assert (= bs!1234482 (and b!5325645 b!5323677)))

(assert (=> bs!1234482 (not (= lambda!271855 lambda!271670))))

(declare-fun bs!1234483 () Bool)

(assert (= bs!1234483 (and b!5325645 b!5325008)))

(assert (=> bs!1234483 (= (and (= (regOne!30482 (regOne!30483 lt!2172700)) (regOne!30482 (regTwo!30483 r!7292))) (= (regTwo!30482 (regOne!30483 lt!2172700)) (regTwo!30482 (regTwo!30483 r!7292)))) (= lambda!271855 lambda!271804))))

(declare-fun bs!1234484 () Bool)

(assert (= bs!1234484 (and b!5325645 d!1709942)))

(assert (=> bs!1234484 (= (and (= (regOne!30482 (regOne!30483 lt!2172700)) (regOne!30482 r!7292)) (= (regTwo!30482 (regOne!30483 lt!2172700)) (regTwo!30482 r!7292))) (= lambda!271855 lambda!271743))))

(assert (=> bs!1234482 (= (and (= (regOne!30482 (regOne!30483 lt!2172700)) (regOne!30482 r!7292)) (= (regTwo!30482 (regOne!30483 lt!2172700)) (regTwo!30482 r!7292))) (= lambda!271855 lambda!271671))))

(declare-fun bs!1234485 () Bool)

(assert (= bs!1234485 (and b!5325645 b!5324400)))

(assert (=> bs!1234485 (= (and (= (regOne!30482 (regOne!30483 lt!2172700)) (regOne!30482 lt!2172700)) (= (regTwo!30482 (regOne!30483 lt!2172700)) (regTwo!30482 lt!2172700))) (= lambda!271855 lambda!271761))))

(declare-fun bs!1234486 () Bool)

(assert (= bs!1234486 (and b!5325645 b!5325183)))

(assert (=> bs!1234486 (= (and (= (regOne!30482 (regOne!30483 lt!2172700)) (regOne!30482 (regTwo!30483 lt!2172700))) (= (regTwo!30482 (regOne!30483 lt!2172700)) (regTwo!30482 (regTwo!30483 lt!2172700)))) (= lambda!271855 lambda!271813))))

(assert (=> bs!1234484 (not (= lambda!271855 lambda!271742))))

(assert (=> b!5325645 true))

(assert (=> b!5325645 true))

(declare-fun b!5325640 () Bool)

(declare-fun e!3308276 () Bool)

(declare-fun e!3308279 () Bool)

(assert (=> b!5325640 (= e!3308276 e!3308279)))

(declare-fun c!925922 () Bool)

(assert (=> b!5325640 (= c!925922 ((_ is Star!14985) (regOne!30483 lt!2172700)))))

(declare-fun b!5325641 () Bool)

(declare-fun e!3308281 () Bool)

(assert (=> b!5325641 (= e!3308281 (= s!2326 (Cons!61131 (c!925355 (regOne!30483 lt!2172700)) Nil!61131)))))

(declare-fun b!5325642 () Bool)

(declare-fun e!3308278 () Bool)

(declare-fun call!380471 () Bool)

(assert (=> b!5325642 (= e!3308278 call!380471)))

(declare-fun e!3308277 () Bool)

(declare-fun call!380470 () Bool)

(assert (=> b!5325643 (= e!3308277 call!380470)))

(declare-fun b!5325644 () Bool)

(declare-fun res!2258825 () Bool)

(assert (=> b!5325644 (=> res!2258825 e!3308277)))

(assert (=> b!5325644 (= res!2258825 call!380471)))

(assert (=> b!5325644 (= e!3308279 e!3308277)))

(assert (=> b!5325645 (= e!3308279 call!380470)))

(declare-fun d!1710494 () Bool)

(declare-fun c!925919 () Bool)

(assert (=> d!1710494 (= c!925919 ((_ is EmptyExpr!14985) (regOne!30483 lt!2172700)))))

(assert (=> d!1710494 (= (matchRSpec!2088 (regOne!30483 lt!2172700) s!2326) e!3308278)))

(declare-fun bm!380465 () Bool)

(assert (=> bm!380465 (= call!380471 (isEmpty!33103 s!2326))))

(declare-fun b!5325646 () Bool)

(declare-fun e!3308280 () Bool)

(assert (=> b!5325646 (= e!3308276 e!3308280)))

(declare-fun res!2258824 () Bool)

(assert (=> b!5325646 (= res!2258824 (matchRSpec!2088 (regOne!30483 (regOne!30483 lt!2172700)) s!2326))))

(assert (=> b!5325646 (=> res!2258824 e!3308280)))

(declare-fun b!5325647 () Bool)

(declare-fun c!925921 () Bool)

(assert (=> b!5325647 (= c!925921 ((_ is Union!14985) (regOne!30483 lt!2172700)))))

(assert (=> b!5325647 (= e!3308281 e!3308276)))

(declare-fun b!5325648 () Bool)

(declare-fun e!3308275 () Bool)

(assert (=> b!5325648 (= e!3308278 e!3308275)))

(declare-fun res!2258823 () Bool)

(assert (=> b!5325648 (= res!2258823 (not ((_ is EmptyLang!14985) (regOne!30483 lt!2172700))))))

(assert (=> b!5325648 (=> (not res!2258823) (not e!3308275))))

(declare-fun bm!380466 () Bool)

(assert (=> bm!380466 (= call!380470 (Exists!2166 (ite c!925922 lambda!271854 lambda!271855)))))

(declare-fun b!5325649 () Bool)

(declare-fun c!925920 () Bool)

(assert (=> b!5325649 (= c!925920 ((_ is ElementMatch!14985) (regOne!30483 lt!2172700)))))

(assert (=> b!5325649 (= e!3308275 e!3308281)))

(declare-fun b!5325650 () Bool)

(assert (=> b!5325650 (= e!3308280 (matchRSpec!2088 (regTwo!30483 (regOne!30483 lt!2172700)) s!2326))))

(assert (= (and d!1710494 c!925919) b!5325642))

(assert (= (and d!1710494 (not c!925919)) b!5325648))

(assert (= (and b!5325648 res!2258823) b!5325649))

(assert (= (and b!5325649 c!925920) b!5325641))

(assert (= (and b!5325649 (not c!925920)) b!5325647))

(assert (= (and b!5325647 c!925921) b!5325646))

(assert (= (and b!5325647 (not c!925921)) b!5325640))

(assert (= (and b!5325646 (not res!2258824)) b!5325650))

(assert (= (and b!5325640 c!925922) b!5325644))

(assert (= (and b!5325640 (not c!925922)) b!5325645))

(assert (= (and b!5325644 (not res!2258825)) b!5325643))

(assert (= (or b!5325643 b!5325645) bm!380466))

(assert (= (or b!5325642 b!5325644) bm!380465))

(assert (=> bm!380465 m!6358744))

(declare-fun m!6359856 () Bool)

(assert (=> b!5325646 m!6359856))

(declare-fun m!6359858 () Bool)

(assert (=> bm!380466 m!6359858))

(declare-fun m!6359860 () Bool)

(assert (=> b!5325650 m!6359860))

(assert (=> b!5324401 d!1710494))

(declare-fun d!1710496 () Bool)

(assert (=> d!1710496 (= (isConcat!405 lt!2172860) ((_ is Concat!23830) lt!2172860))))

(assert (=> b!5324456 d!1710496))

(assert (=> b!5324258 d!1709906))

(assert (=> b!5324484 d!1710270))

(declare-fun d!1710498 () Bool)

(assert (=> d!1710498 (= (isEmpty!33104 (findConcatSeparation!1510 (regOne!30482 r!7292) (regTwo!30482 r!7292) Nil!61131 s!2326 s!2326)) (not ((_ is Some!15095) (findConcatSeparation!1510 (regOne!30482 r!7292) (regTwo!30482 r!7292) Nil!61131 s!2326 s!2326))))))

(assert (=> d!1709944 d!1710498))

(declare-fun d!1710500 () Bool)

(assert (=> d!1710500 true))

(assert (=> d!1710500 true))

(declare-fun res!2258828 () Bool)

(assert (=> d!1710500 (= (choose!39862 lambda!271670) res!2258828)))

(assert (=> d!1709940 d!1710500))

(declare-fun b!5325651 () Bool)

(declare-fun e!3308284 () (InoxSet Context!8738))

(declare-fun call!380472 () (InoxSet Context!8738))

(declare-fun call!380474 () (InoxSet Context!8738))

(assert (=> b!5325651 (= e!3308284 ((_ map or) call!380472 call!380474))))

(declare-fun b!5325652 () Bool)

(declare-fun e!3308287 () (InoxSet Context!8738))

(declare-fun call!380476 () (InoxSet Context!8738))

(assert (=> b!5325652 (= e!3308287 call!380476)))

(declare-fun b!5325653 () Bool)

(declare-fun c!925923 () Bool)

(assert (=> b!5325653 (= c!925923 ((_ is Star!14985) (h!67578 (exprs!4869 lt!2172701))))))

(declare-fun e!3308282 () (InoxSet Context!8738))

(assert (=> b!5325653 (= e!3308282 e!3308287)))

(declare-fun b!5325654 () Bool)

(declare-fun e!3308283 () (InoxSet Context!8738))

(assert (=> b!5325654 (= e!3308283 (store ((as const (Array Context!8738 Bool)) false) (Context!8739 (t!374467 (exprs!4869 lt!2172701))) true))))

(declare-fun bm!380467 () Bool)

(declare-fun call!380477 () List!61254)

(declare-fun call!380473 () List!61254)

(assert (=> bm!380467 (= call!380477 call!380473)))

(declare-fun c!925925 () Bool)

(declare-fun c!925926 () Bool)

(declare-fun bm!380468 () Bool)

(assert (=> bm!380468 (= call!380473 ($colon$colon!1398 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 lt!2172701)))) (ite (or c!925926 c!925925) (regTwo!30482 (h!67578 (exprs!4869 lt!2172701))) (h!67578 (exprs!4869 lt!2172701)))))))

(declare-fun c!925927 () Bool)

(declare-fun bm!380469 () Bool)

(assert (=> bm!380469 (= call!380472 (derivationStepZipperDown!433 (ite c!925927 (regOne!30483 (h!67578 (exprs!4869 lt!2172701))) (regOne!30482 (h!67578 (exprs!4869 lt!2172701)))) (ite c!925927 (Context!8739 (t!374467 (exprs!4869 lt!2172701))) (Context!8739 call!380473)) (h!67579 s!2326)))))

(declare-fun bm!380470 () Bool)

(declare-fun call!380475 () (InoxSet Context!8738))

(assert (=> bm!380470 (= call!380476 call!380475)))

(declare-fun b!5325655 () Bool)

(declare-fun e!3308285 () Bool)

(assert (=> b!5325655 (= c!925926 e!3308285)))

(declare-fun res!2258829 () Bool)

(assert (=> b!5325655 (=> (not res!2258829) (not e!3308285))))

(assert (=> b!5325655 (= res!2258829 ((_ is Concat!23830) (h!67578 (exprs!4869 lt!2172701))))))

(declare-fun e!3308286 () (InoxSet Context!8738))

(assert (=> b!5325655 (= e!3308284 e!3308286)))

(declare-fun b!5325656 () Bool)

(assert (=> b!5325656 (= e!3308282 call!380476)))

(declare-fun d!1710502 () Bool)

(declare-fun c!925924 () Bool)

(assert (=> d!1710502 (= c!925924 (and ((_ is ElementMatch!14985) (h!67578 (exprs!4869 lt!2172701))) (= (c!925355 (h!67578 (exprs!4869 lt!2172701))) (h!67579 s!2326))))))

(assert (=> d!1710502 (= (derivationStepZipperDown!433 (h!67578 (exprs!4869 lt!2172701)) (Context!8739 (t!374467 (exprs!4869 lt!2172701))) (h!67579 s!2326)) e!3308283)))

(declare-fun b!5325657 () Bool)

(assert (=> b!5325657 (= e!3308285 (nullable!5154 (regOne!30482 (h!67578 (exprs!4869 lt!2172701)))))))

(declare-fun b!5325658 () Bool)

(assert (=> b!5325658 (= e!3308286 ((_ map or) call!380472 call!380475))))

(declare-fun bm!380471 () Bool)

(assert (=> bm!380471 (= call!380475 call!380474)))

(declare-fun b!5325659 () Bool)

(assert (=> b!5325659 (= e!3308286 e!3308282)))

(assert (=> b!5325659 (= c!925925 ((_ is Concat!23830) (h!67578 (exprs!4869 lt!2172701))))))

(declare-fun b!5325660 () Bool)

(assert (=> b!5325660 (= e!3308283 e!3308284)))

(assert (=> b!5325660 (= c!925927 ((_ is Union!14985) (h!67578 (exprs!4869 lt!2172701))))))

(declare-fun b!5325661 () Bool)

(assert (=> b!5325661 (= e!3308287 ((as const (Array Context!8738 Bool)) false))))

(declare-fun bm!380472 () Bool)

(assert (=> bm!380472 (= call!380474 (derivationStepZipperDown!433 (ite c!925927 (regTwo!30483 (h!67578 (exprs!4869 lt!2172701))) (ite c!925926 (regTwo!30482 (h!67578 (exprs!4869 lt!2172701))) (ite c!925925 (regOne!30482 (h!67578 (exprs!4869 lt!2172701))) (reg!15314 (h!67578 (exprs!4869 lt!2172701)))))) (ite (or c!925927 c!925926) (Context!8739 (t!374467 (exprs!4869 lt!2172701))) (Context!8739 call!380477)) (h!67579 s!2326)))))

(assert (= (and d!1710502 c!925924) b!5325654))

(assert (= (and d!1710502 (not c!925924)) b!5325660))

(assert (= (and b!5325660 c!925927) b!5325651))

(assert (= (and b!5325660 (not c!925927)) b!5325655))

(assert (= (and b!5325655 res!2258829) b!5325657))

(assert (= (and b!5325655 c!925926) b!5325658))

(assert (= (and b!5325655 (not c!925926)) b!5325659))

(assert (= (and b!5325659 c!925925) b!5325656))

(assert (= (and b!5325659 (not c!925925)) b!5325653))

(assert (= (and b!5325653 c!925923) b!5325652))

(assert (= (and b!5325653 (not c!925923)) b!5325661))

(assert (= (or b!5325656 b!5325652) bm!380467))

(assert (= (or b!5325656 b!5325652) bm!380470))

(assert (= (or b!5325658 bm!380467) bm!380468))

(assert (= (or b!5325658 bm!380470) bm!380471))

(assert (= (or b!5325651 bm!380471) bm!380472))

(assert (= (or b!5325651 b!5325658) bm!380469))

(declare-fun m!6359862 () Bool)

(assert (=> bm!380472 m!6359862))

(declare-fun m!6359864 () Bool)

(assert (=> bm!380469 m!6359864))

(declare-fun m!6359866 () Bool)

(assert (=> b!5325657 m!6359866))

(declare-fun m!6359868 () Bool)

(assert (=> b!5325654 m!6359868))

(declare-fun m!6359870 () Bool)

(assert (=> bm!380468 m!6359870))

(assert (=> bm!380234 d!1710502))

(assert (=> d!1709882 d!1710456))

(declare-fun b!5325662 () Bool)

(declare-fun e!3308290 () (InoxSet Context!8738))

(declare-fun call!380478 () (InoxSet Context!8738))

(declare-fun call!380480 () (InoxSet Context!8738))

(assert (=> b!5325662 (= e!3308290 ((_ map or) call!380478 call!380480))))

(declare-fun b!5325663 () Bool)

(declare-fun e!3308293 () (InoxSet Context!8738))

(declare-fun call!380482 () (InoxSet Context!8738))

(assert (=> b!5325663 (= e!3308293 call!380482)))

(declare-fun b!5325664 () Bool)

(declare-fun c!925928 () Bool)

(assert (=> b!5325664 (= c!925928 ((_ is Star!14985) (ite c!925526 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))))))))

(declare-fun e!3308288 () (InoxSet Context!8738))

(assert (=> b!5325664 (= e!3308288 e!3308293)))

(declare-fun e!3308289 () (InoxSet Context!8738))

(declare-fun b!5325665 () Bool)

(assert (=> b!5325665 (= e!3308289 (store ((as const (Array Context!8738 Bool)) false) (ite c!925526 lt!2172716 (Context!8739 call!380229)) true))))

(declare-fun bm!380473 () Bool)

(declare-fun call!380483 () List!61254)

(declare-fun call!380479 () List!61254)

(assert (=> bm!380473 (= call!380483 call!380479)))

(declare-fun c!925931 () Bool)

(declare-fun bm!380474 () Bool)

(declare-fun c!925930 () Bool)

(assert (=> bm!380474 (= call!380479 ($colon$colon!1398 (exprs!4869 (ite c!925526 lt!2172716 (Context!8739 call!380229))) (ite (or c!925931 c!925930) (regTwo!30482 (ite c!925526 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))))) (ite c!925526 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343))))))))))

(declare-fun bm!380475 () Bool)

(declare-fun c!925932 () Bool)

(assert (=> bm!380475 (= call!380478 (derivationStepZipperDown!433 (ite c!925932 (regOne!30483 (ite c!925526 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))))) (regOne!30482 (ite c!925526 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343))))))) (ite c!925932 (ite c!925526 lt!2172716 (Context!8739 call!380229)) (Context!8739 call!380479)) (h!67579 s!2326)))))

(declare-fun bm!380476 () Bool)

(declare-fun call!380481 () (InoxSet Context!8738))

(assert (=> bm!380476 (= call!380482 call!380481)))

(declare-fun b!5325666 () Bool)

(declare-fun e!3308291 () Bool)

(assert (=> b!5325666 (= c!925931 e!3308291)))

(declare-fun res!2258830 () Bool)

(assert (=> b!5325666 (=> (not res!2258830) (not e!3308291))))

(assert (=> b!5325666 (= res!2258830 ((_ is Concat!23830) (ite c!925526 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))))))))

(declare-fun e!3308292 () (InoxSet Context!8738))

(assert (=> b!5325666 (= e!3308290 e!3308292)))

(declare-fun b!5325667 () Bool)

(assert (=> b!5325667 (= e!3308288 call!380482)))

(declare-fun d!1710504 () Bool)

(declare-fun c!925929 () Bool)

(assert (=> d!1710504 (= c!925929 (and ((_ is ElementMatch!14985) (ite c!925526 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))))) (= (c!925355 (ite c!925526 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))))) (h!67579 s!2326))))))

(assert (=> d!1710504 (= (derivationStepZipperDown!433 (ite c!925526 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343))))) (ite c!925526 lt!2172716 (Context!8739 call!380229)) (h!67579 s!2326)) e!3308289)))

(declare-fun b!5325668 () Bool)

(assert (=> b!5325668 (= e!3308291 (nullable!5154 (regOne!30482 (ite c!925526 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343))))))))))

(declare-fun b!5325669 () Bool)

(assert (=> b!5325669 (= e!3308292 ((_ map or) call!380478 call!380481))))

(declare-fun bm!380477 () Bool)

(assert (=> bm!380477 (= call!380481 call!380480)))

(declare-fun b!5325670 () Bool)

(assert (=> b!5325670 (= e!3308292 e!3308288)))

(assert (=> b!5325670 (= c!925930 ((_ is Concat!23830) (ite c!925526 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))))))))

(declare-fun b!5325671 () Bool)

(assert (=> b!5325671 (= e!3308289 e!3308290)))

(assert (=> b!5325671 (= c!925932 ((_ is Union!14985) (ite c!925526 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))))))))

(declare-fun b!5325672 () Bool)

(assert (=> b!5325672 (= e!3308293 ((as const (Array Context!8738 Bool)) false))))

(declare-fun bm!380478 () Bool)

(assert (=> bm!380478 (= call!380480 (derivationStepZipperDown!433 (ite c!925932 (regTwo!30483 (ite c!925526 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))))) (ite c!925931 (regTwo!30482 (ite c!925526 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))))) (ite c!925930 (regOne!30482 (ite c!925526 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))))) (reg!15314 (ite c!925526 (regOne!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343))))))))) (ite (or c!925932 c!925931) (ite c!925526 lt!2172716 (Context!8739 call!380229)) (Context!8739 call!380483)) (h!67579 s!2326)))))

(assert (= (and d!1710504 c!925929) b!5325665))

(assert (= (and d!1710504 (not c!925929)) b!5325671))

(assert (= (and b!5325671 c!925932) b!5325662))

(assert (= (and b!5325671 (not c!925932)) b!5325666))

(assert (= (and b!5325666 res!2258830) b!5325668))

(assert (= (and b!5325666 c!925931) b!5325669))

(assert (= (and b!5325666 (not c!925931)) b!5325670))

(assert (= (and b!5325670 c!925930) b!5325667))

(assert (= (and b!5325670 (not c!925930)) b!5325664))

(assert (= (and b!5325664 c!925928) b!5325663))

(assert (= (and b!5325664 (not c!925928)) b!5325672))

(assert (= (or b!5325667 b!5325663) bm!380473))

(assert (= (or b!5325667 b!5325663) bm!380476))

(assert (= (or b!5325669 bm!380473) bm!380474))

(assert (= (or b!5325669 bm!380476) bm!380477))

(assert (= (or b!5325662 bm!380477) bm!380478))

(assert (= (or b!5325662 b!5325669) bm!380475))

(declare-fun m!6359872 () Bool)

(assert (=> bm!380478 m!6359872))

(declare-fun m!6359874 () Bool)

(assert (=> bm!380475 m!6359874))

(declare-fun m!6359876 () Bool)

(assert (=> b!5325668 m!6359876))

(declare-fun m!6359878 () Bool)

(assert (=> b!5325665 m!6359878))

(declare-fun m!6359880 () Bool)

(assert (=> bm!380474 m!6359880))

(assert (=> bm!380225 d!1710504))

(declare-fun d!1710506 () Bool)

(assert (=> d!1710506 (= (isEmptyExpr!882 lt!2172760) ((_ is EmptyExpr!14985) lt!2172760))))

(assert (=> b!5323861 d!1710506))

(declare-fun b!5325673 () Bool)

(declare-fun e!3308294 () (InoxSet Context!8738))

(assert (=> b!5325673 (= e!3308294 ((as const (Array Context!8738 Bool)) false))))

(declare-fun b!5325674 () Bool)

(declare-fun call!380484 () (InoxSet Context!8738))

(assert (=> b!5325674 (= e!3308294 call!380484)))

(declare-fun d!1710508 () Bool)

(declare-fun c!925934 () Bool)

(declare-fun e!3308295 () Bool)

(assert (=> d!1710508 (= c!925934 e!3308295)))

(declare-fun res!2258831 () Bool)

(assert (=> d!1710508 (=> (not res!2258831) (not e!3308295))))

(assert (=> d!1710508 (= res!2258831 ((_ is Cons!61130) (exprs!4869 (Context!8739 (t!374467 (exprs!4869 lt!2172716))))))))

(declare-fun e!3308296 () (InoxSet Context!8738))

(assert (=> d!1710508 (= (derivationStepZipperUp!357 (Context!8739 (t!374467 (exprs!4869 lt!2172716))) (h!67579 s!2326)) e!3308296)))

(declare-fun b!5325675 () Bool)

(assert (=> b!5325675 (= e!3308296 e!3308294)))

(declare-fun c!925933 () Bool)

(assert (=> b!5325675 (= c!925933 ((_ is Cons!61130) (exprs!4869 (Context!8739 (t!374467 (exprs!4869 lt!2172716))))))))

(declare-fun b!5325676 () Bool)

(assert (=> b!5325676 (= e!3308296 ((_ map or) call!380484 (derivationStepZipperUp!357 (Context!8739 (t!374467 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 lt!2172716)))))) (h!67579 s!2326))))))

(declare-fun bm!380479 () Bool)

(assert (=> bm!380479 (= call!380484 (derivationStepZipperDown!433 (h!67578 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 lt!2172716))))) (Context!8739 (t!374467 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 lt!2172716)))))) (h!67579 s!2326)))))

(declare-fun b!5325677 () Bool)

(assert (=> b!5325677 (= e!3308295 (nullable!5154 (h!67578 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 lt!2172716)))))))))

(assert (= (and d!1710508 res!2258831) b!5325677))

(assert (= (and d!1710508 c!925934) b!5325676))

(assert (= (and d!1710508 (not c!925934)) b!5325675))

(assert (= (and b!5325675 c!925933) b!5325674))

(assert (= (and b!5325675 (not c!925933)) b!5325673))

(assert (= (or b!5325676 b!5325674) bm!380479))

(declare-fun m!6359882 () Bool)

(assert (=> b!5325676 m!6359882))

(declare-fun m!6359884 () Bool)

(assert (=> bm!380479 m!6359884))

(declare-fun m!6359886 () Bool)

(assert (=> b!5325677 m!6359886))

(assert (=> b!5324262 d!1710508))

(declare-fun d!1710510 () Bool)

(assert (=> d!1710510 (= (nullable!5154 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343))))) (nullableFct!1500 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343))))))))

(declare-fun bs!1234487 () Bool)

(assert (= bs!1234487 d!1710510))

(declare-fun m!6359888 () Bool)

(assert (=> bs!1234487 m!6359888))

(assert (=> b!5324174 d!1710510))

(declare-fun d!1710512 () Bool)

(declare-fun c!925935 () Bool)

(assert (=> d!1710512 (= c!925935 (isEmpty!33103 (tail!10511 (t!374468 s!2326))))))

(declare-fun e!3308297 () Bool)

(assert (=> d!1710512 (= (matchZipper!1229 (derivationStepZipper!1226 ((_ map or) lt!2172711 lt!2172719) (head!11414 (t!374468 s!2326))) (tail!10511 (t!374468 s!2326))) e!3308297)))

(declare-fun b!5325678 () Bool)

(assert (=> b!5325678 (= e!3308297 (nullableZipper!1348 (derivationStepZipper!1226 ((_ map or) lt!2172711 lt!2172719) (head!11414 (t!374468 s!2326)))))))

(declare-fun b!5325679 () Bool)

(assert (=> b!5325679 (= e!3308297 (matchZipper!1229 (derivationStepZipper!1226 (derivationStepZipper!1226 ((_ map or) lt!2172711 lt!2172719) (head!11414 (t!374468 s!2326))) (head!11414 (tail!10511 (t!374468 s!2326)))) (tail!10511 (tail!10511 (t!374468 s!2326)))))))

(assert (= (and d!1710512 c!925935) b!5325678))

(assert (= (and d!1710512 (not c!925935)) b!5325679))

(assert (=> d!1710512 m!6358324))

(assert (=> d!1710512 m!6359700))

(assert (=> b!5325678 m!6358488))

(declare-fun m!6359890 () Bool)

(assert (=> b!5325678 m!6359890))

(assert (=> b!5325679 m!6358324))

(assert (=> b!5325679 m!6359704))

(assert (=> b!5325679 m!6358488))

(assert (=> b!5325679 m!6359704))

(declare-fun m!6359892 () Bool)

(assert (=> b!5325679 m!6359892))

(assert (=> b!5325679 m!6358324))

(assert (=> b!5325679 m!6359708))

(assert (=> b!5325679 m!6359892))

(assert (=> b!5325679 m!6359708))

(declare-fun m!6359894 () Bool)

(assert (=> b!5325679 m!6359894))

(assert (=> b!5324040 d!1710512))

(declare-fun bs!1234488 () Bool)

(declare-fun d!1710514 () Bool)

(assert (= bs!1234488 (and d!1710514 b!5323675)))

(declare-fun lambda!271856 () Int)

(assert (=> bs!1234488 (= (= (head!11414 (t!374468 s!2326)) (h!67579 s!2326)) (= lambda!271856 lambda!271672))))

(declare-fun bs!1234489 () Bool)

(assert (= bs!1234489 (and d!1710514 d!1709960)))

(assert (=> bs!1234489 (= (= (head!11414 (t!374468 s!2326)) (h!67579 s!2326)) (= lambda!271856 lambda!271749))))

(declare-fun bs!1234490 () Bool)

(assert (= bs!1234490 (and d!1710514 d!1710266)))

(assert (=> bs!1234490 (= (= (head!11414 (t!374468 s!2326)) (head!11414 s!2326)) (= lambda!271856 lambda!271807))))

(declare-fun bs!1234491 () Bool)

(assert (= bs!1234491 (and d!1710514 d!1710404)))

(assert (=> bs!1234491 (= lambda!271856 lambda!271843)))

(assert (=> d!1710514 true))

(assert (=> d!1710514 (= (derivationStepZipper!1226 ((_ map or) lt!2172711 lt!2172719) (head!11414 (t!374468 s!2326))) (flatMap!712 ((_ map or) lt!2172711 lt!2172719) lambda!271856))))

(declare-fun bs!1234492 () Bool)

(assert (= bs!1234492 d!1710514))

(declare-fun m!6359896 () Bool)

(assert (=> bs!1234492 m!6359896))

(assert (=> b!5324040 d!1710514))

(assert (=> b!5324040 d!1710408))

(assert (=> b!5324040 d!1710410))

(assert (=> b!5324361 d!1709812))

(declare-fun bs!1234493 () Bool)

(declare-fun d!1710516 () Bool)

(assert (= bs!1234493 (and d!1710516 d!1709946)))

(declare-fun lambda!271857 () Int)

(assert (=> bs!1234493 (= lambda!271857 lambda!271746)))

(declare-fun bs!1234494 () Bool)

(assert (= bs!1234494 (and d!1710516 b!5325337)))

(assert (=> bs!1234494 (not (= lambda!271857 lambda!271832))))

(declare-fun bs!1234495 () Bool)

(assert (= bs!1234495 (and d!1710516 b!5325410)))

(assert (=> bs!1234495 (not (= lambda!271857 lambda!271847))))

(declare-fun bs!1234496 () Bool)

(assert (= bs!1234496 (and d!1710516 d!1709972)))

(assert (=> bs!1234496 (= lambda!271857 lambda!271755)))

(declare-fun bs!1234497 () Bool)

(assert (= bs!1234497 (and d!1710516 d!1709970)))

(assert (=> bs!1234497 (= lambda!271857 lambda!271752)))

(declare-fun bs!1234498 () Bool)

(assert (= bs!1234498 (and d!1710516 d!1710352)))

(assert (=> bs!1234498 (= lambda!271857 lambda!271819)))

(declare-fun bs!1234499 () Bool)

(assert (= bs!1234499 (and d!1710516 d!1709986)))

(assert (=> bs!1234499 (= lambda!271857 lambda!271762)))

(declare-fun bs!1234500 () Bool)

(assert (= bs!1234500 (and d!1710516 b!5325335)))

(assert (=> bs!1234500 (not (= lambda!271857 lambda!271830))))

(declare-fun bs!1234501 () Bool)

(assert (= bs!1234501 (and d!1710516 d!1710130)))

(assert (=> bs!1234501 (= lambda!271857 lambda!271794)))

(declare-fun bs!1234502 () Bool)

(assert (= bs!1234502 (and d!1710516 d!1709998)))

(assert (=> bs!1234502 (= lambda!271857 lambda!271765)))

(declare-fun bs!1234503 () Bool)

(assert (= bs!1234503 (and d!1710516 d!1709812)))

(assert (=> bs!1234503 (= lambda!271857 lambda!271706)))

(declare-fun bs!1234504 () Bool)

(assert (= bs!1234504 (and d!1710516 b!5323686)))

(assert (=> bs!1234504 (= lambda!271857 lambda!271673)))

(declare-fun bs!1234505 () Bool)

(assert (= bs!1234505 (and d!1710516 b!5325412)))

(assert (=> bs!1234505 (not (= lambda!271857 lambda!271848))))

(declare-fun bs!1234506 () Bool)

(assert (= bs!1234506 (and d!1710516 d!1710146)))

(assert (=> bs!1234506 (= lambda!271857 lambda!271795)))

(declare-fun lt!2172975 () List!61254)

(assert (=> d!1710516 (forall!14403 lt!2172975 lambda!271857)))

(declare-fun e!3308298 () List!61254)

(assert (=> d!1710516 (= lt!2172975 e!3308298)))

(declare-fun c!925936 () Bool)

(assert (=> d!1710516 (= c!925936 ((_ is Cons!61132) (t!374469 zl!343)))))

(assert (=> d!1710516 (= (unfocusZipperList!427 (t!374469 zl!343)) lt!2172975)))

(declare-fun b!5325680 () Bool)

(assert (=> b!5325680 (= e!3308298 (Cons!61130 (generalisedConcat!654 (exprs!4869 (h!67580 (t!374469 zl!343)))) (unfocusZipperList!427 (t!374469 (t!374469 zl!343)))))))

(declare-fun b!5325681 () Bool)

(assert (=> b!5325681 (= e!3308298 Nil!61130)))

(assert (= (and d!1710516 c!925936) b!5325680))

(assert (= (and d!1710516 (not c!925936)) b!5325681))

(declare-fun m!6359898 () Bool)

(assert (=> d!1710516 m!6359898))

(declare-fun m!6359900 () Bool)

(assert (=> b!5325680 m!6359900))

(declare-fun m!6359902 () Bool)

(assert (=> b!5325680 m!6359902))

(assert (=> b!5324361 d!1710516))

(assert (=> b!5324436 d!1710270))

(declare-fun d!1710518 () Bool)

(assert (=> d!1710518 true))

(declare-fun setRes!34303 () Bool)

(assert (=> d!1710518 setRes!34303))

(declare-fun condSetEmpty!34303 () Bool)

(declare-fun res!2258834 () (InoxSet Context!8738))

(assert (=> d!1710518 (= condSetEmpty!34303 (= res!2258834 ((as const (Array Context!8738 Bool)) false)))))

(assert (=> d!1710518 (= (choose!39861 lt!2172707 lambda!271672) res!2258834)))

(declare-fun setIsEmpty!34303 () Bool)

(assert (=> setIsEmpty!34303 setRes!34303))

(declare-fun e!3308301 () Bool)

(declare-fun setElem!34303 () Context!8738)

(declare-fun tp!1482561 () Bool)

(declare-fun setNonEmpty!34303 () Bool)

(assert (=> setNonEmpty!34303 (= setRes!34303 (and tp!1482561 (inv!80709 setElem!34303) e!3308301))))

(declare-fun setRest!34303 () (InoxSet Context!8738))

(assert (=> setNonEmpty!34303 (= res!2258834 ((_ map or) (store ((as const (Array Context!8738 Bool)) false) setElem!34303 true) setRest!34303))))

(declare-fun b!5325684 () Bool)

(declare-fun tp!1482560 () Bool)

(assert (=> b!5325684 (= e!3308301 tp!1482560)))

(assert (= (and d!1710518 condSetEmpty!34303) setIsEmpty!34303))

(assert (= (and d!1710518 (not condSetEmpty!34303)) setNonEmpty!34303))

(assert (= setNonEmpty!34303 b!5325684))

(declare-fun m!6359904 () Bool)

(assert (=> setNonEmpty!34303 m!6359904))

(assert (=> d!1709954 d!1710518))

(declare-fun d!1710520 () Bool)

(assert (=> d!1710520 true))

(assert (=> d!1710520 true))

(declare-fun res!2258835 () Bool)

(assert (=> d!1710520 (= (choose!39862 lambda!271671) res!2258835)))

(assert (=> d!1709936 d!1710520))

(declare-fun d!1710522 () Bool)

(declare-fun res!2258840 () Bool)

(declare-fun e!3308306 () Bool)

(assert (=> d!1710522 (=> res!2258840 e!3308306)))

(assert (=> d!1710522 (= res!2258840 ((_ is Nil!61132) lt!2172801))))

(assert (=> d!1710522 (= (noDuplicate!1303 lt!2172801) e!3308306)))

(declare-fun b!5325689 () Bool)

(declare-fun e!3308307 () Bool)

(assert (=> b!5325689 (= e!3308306 e!3308307)))

(declare-fun res!2258841 () Bool)

(assert (=> b!5325689 (=> (not res!2258841) (not e!3308307))))

(declare-fun contains!19712 (List!61256 Context!8738) Bool)

(assert (=> b!5325689 (= res!2258841 (not (contains!19712 (t!374469 lt!2172801) (h!67580 lt!2172801))))))

(declare-fun b!5325690 () Bool)

(assert (=> b!5325690 (= e!3308307 (noDuplicate!1303 (t!374469 lt!2172801)))))

(assert (= (and d!1710522 (not res!2258840)) b!5325689))

(assert (= (and b!5325689 res!2258841) b!5325690))

(declare-fun m!6359906 () Bool)

(assert (=> b!5325689 m!6359906))

(declare-fun m!6359908 () Bool)

(assert (=> b!5325690 m!6359908))

(assert (=> d!1709884 d!1710522))

(declare-fun d!1710524 () Bool)

(declare-fun e!3308314 () Bool)

(assert (=> d!1710524 e!3308314))

(declare-fun res!2258847 () Bool)

(assert (=> d!1710524 (=> (not res!2258847) (not e!3308314))))

(declare-fun res!2258846 () List!61256)

(assert (=> d!1710524 (= res!2258847 (noDuplicate!1303 res!2258846))))

(declare-fun e!3308315 () Bool)

(assert (=> d!1710524 e!3308315))

(assert (=> d!1710524 (= (choose!39858 z!1189) res!2258846)))

(declare-fun b!5325698 () Bool)

(declare-fun e!3308316 () Bool)

(declare-fun tp!1482567 () Bool)

(assert (=> b!5325698 (= e!3308316 tp!1482567)))

(declare-fun b!5325697 () Bool)

(declare-fun tp!1482566 () Bool)

(assert (=> b!5325697 (= e!3308315 (and (inv!80709 (h!67580 res!2258846)) e!3308316 tp!1482566))))

(declare-fun b!5325699 () Bool)

(assert (=> b!5325699 (= e!3308314 (= (content!10901 res!2258846) z!1189))))

(assert (= b!5325697 b!5325698))

(assert (= (and d!1710524 ((_ is Cons!61132) res!2258846)) b!5325697))

(assert (= (and d!1710524 res!2258847) b!5325699))

(declare-fun m!6359910 () Bool)

(assert (=> d!1710524 m!6359910))

(declare-fun m!6359912 () Bool)

(assert (=> b!5325697 m!6359912))

(declare-fun m!6359914 () Bool)

(assert (=> b!5325699 m!6359914))

(assert (=> d!1709884 d!1710524))

(declare-fun d!1710526 () Bool)

(declare-fun c!925937 () Bool)

(assert (=> d!1710526 (= c!925937 (isEmpty!33103 (tail!10511 (t!374468 s!2326))))))

(declare-fun e!3308317 () Bool)

(assert (=> d!1710526 (= (matchZipper!1229 (derivationStepZipper!1226 lt!2172717 (head!11414 (t!374468 s!2326))) (tail!10511 (t!374468 s!2326))) e!3308317)))

(declare-fun b!5325700 () Bool)

(assert (=> b!5325700 (= e!3308317 (nullableZipper!1348 (derivationStepZipper!1226 lt!2172717 (head!11414 (t!374468 s!2326)))))))

(declare-fun b!5325701 () Bool)

(assert (=> b!5325701 (= e!3308317 (matchZipper!1229 (derivationStepZipper!1226 (derivationStepZipper!1226 lt!2172717 (head!11414 (t!374468 s!2326))) (head!11414 (tail!10511 (t!374468 s!2326)))) (tail!10511 (tail!10511 (t!374468 s!2326)))))))

(assert (= (and d!1710526 c!925937) b!5325700))

(assert (= (and d!1710526 (not c!925937)) b!5325701))

(assert (=> d!1710526 m!6358324))

(assert (=> d!1710526 m!6359700))

(assert (=> b!5325700 m!6358694))

(declare-fun m!6359916 () Bool)

(assert (=> b!5325700 m!6359916))

(assert (=> b!5325701 m!6358324))

(assert (=> b!5325701 m!6359704))

(assert (=> b!5325701 m!6358694))

(assert (=> b!5325701 m!6359704))

(declare-fun m!6359918 () Bool)

(assert (=> b!5325701 m!6359918))

(assert (=> b!5325701 m!6358324))

(assert (=> b!5325701 m!6359708))

(assert (=> b!5325701 m!6359918))

(assert (=> b!5325701 m!6359708))

(declare-fun m!6359920 () Bool)

(assert (=> b!5325701 m!6359920))

(assert (=> b!5324311 d!1710526))

(declare-fun bs!1234507 () Bool)

(declare-fun d!1710528 () Bool)

(assert (= bs!1234507 (and d!1710528 d!1710514)))

(declare-fun lambda!271858 () Int)

(assert (=> bs!1234507 (= lambda!271858 lambda!271856)))

(declare-fun bs!1234508 () Bool)

(assert (= bs!1234508 (and d!1710528 d!1710266)))

(assert (=> bs!1234508 (= (= (head!11414 (t!374468 s!2326)) (head!11414 s!2326)) (= lambda!271858 lambda!271807))))

(declare-fun bs!1234509 () Bool)

(assert (= bs!1234509 (and d!1710528 d!1709960)))

(assert (=> bs!1234509 (= (= (head!11414 (t!374468 s!2326)) (h!67579 s!2326)) (= lambda!271858 lambda!271749))))

(declare-fun bs!1234510 () Bool)

(assert (= bs!1234510 (and d!1710528 b!5323675)))

(assert (=> bs!1234510 (= (= (head!11414 (t!374468 s!2326)) (h!67579 s!2326)) (= lambda!271858 lambda!271672))))

(declare-fun bs!1234511 () Bool)

(assert (= bs!1234511 (and d!1710528 d!1710404)))

(assert (=> bs!1234511 (= lambda!271858 lambda!271843)))

(assert (=> d!1710528 true))

(assert (=> d!1710528 (= (derivationStepZipper!1226 lt!2172717 (head!11414 (t!374468 s!2326))) (flatMap!712 lt!2172717 lambda!271858))))

(declare-fun bs!1234512 () Bool)

(assert (= bs!1234512 d!1710528))

(declare-fun m!6359922 () Bool)

(assert (=> bs!1234512 m!6359922))

(assert (=> b!5324311 d!1710528))

(assert (=> b!5324311 d!1710408))

(assert (=> b!5324311 d!1710410))

(assert (=> b!5324443 d!1710158))

(assert (=> b!5324443 d!1710164))

(declare-fun d!1710530 () Bool)

(declare-fun c!925938 () Bool)

(assert (=> d!1710530 (= c!925938 (isEmpty!33103 (tail!10511 (t!374468 s!2326))))))

(declare-fun e!3308318 () Bool)

(assert (=> d!1710530 (= (matchZipper!1229 (derivationStepZipper!1226 lt!2172719 (head!11414 (t!374468 s!2326))) (tail!10511 (t!374468 s!2326))) e!3308318)))

(declare-fun b!5325702 () Bool)

(assert (=> b!5325702 (= e!3308318 (nullableZipper!1348 (derivationStepZipper!1226 lt!2172719 (head!11414 (t!374468 s!2326)))))))

(declare-fun b!5325703 () Bool)

(assert (=> b!5325703 (= e!3308318 (matchZipper!1229 (derivationStepZipper!1226 (derivationStepZipper!1226 lt!2172719 (head!11414 (t!374468 s!2326))) (head!11414 (tail!10511 (t!374468 s!2326)))) (tail!10511 (tail!10511 (t!374468 s!2326)))))))

(assert (= (and d!1710530 c!925938) b!5325702))

(assert (= (and d!1710530 (not c!925938)) b!5325703))

(assert (=> d!1710530 m!6358324))

(assert (=> d!1710530 m!6359700))

(assert (=> b!5325702 m!6358322))

(declare-fun m!6359924 () Bool)

(assert (=> b!5325702 m!6359924))

(assert (=> b!5325703 m!6358324))

(assert (=> b!5325703 m!6359704))

(assert (=> b!5325703 m!6358322))

(assert (=> b!5325703 m!6359704))

(declare-fun m!6359926 () Bool)

(assert (=> b!5325703 m!6359926))

(assert (=> b!5325703 m!6358324))

(assert (=> b!5325703 m!6359708))

(assert (=> b!5325703 m!6359926))

(assert (=> b!5325703 m!6359708))

(declare-fun m!6359928 () Bool)

(assert (=> b!5325703 m!6359928))

(assert (=> b!5323895 d!1710530))

(declare-fun bs!1234513 () Bool)

(declare-fun d!1710532 () Bool)

(assert (= bs!1234513 (and d!1710532 d!1710514)))

(declare-fun lambda!271859 () Int)

(assert (=> bs!1234513 (= lambda!271859 lambda!271856)))

(declare-fun bs!1234514 () Bool)

(assert (= bs!1234514 (and d!1710532 d!1710266)))

(assert (=> bs!1234514 (= (= (head!11414 (t!374468 s!2326)) (head!11414 s!2326)) (= lambda!271859 lambda!271807))))

(declare-fun bs!1234515 () Bool)

(assert (= bs!1234515 (and d!1710532 d!1709960)))

(assert (=> bs!1234515 (= (= (head!11414 (t!374468 s!2326)) (h!67579 s!2326)) (= lambda!271859 lambda!271749))))

(declare-fun bs!1234516 () Bool)

(assert (= bs!1234516 (and d!1710532 b!5323675)))

(assert (=> bs!1234516 (= (= (head!11414 (t!374468 s!2326)) (h!67579 s!2326)) (= lambda!271859 lambda!271672))))

(declare-fun bs!1234517 () Bool)

(assert (= bs!1234517 (and d!1710532 d!1710528)))

(assert (=> bs!1234517 (= lambda!271859 lambda!271858)))

(declare-fun bs!1234518 () Bool)

(assert (= bs!1234518 (and d!1710532 d!1710404)))

(assert (=> bs!1234518 (= lambda!271859 lambda!271843)))

(assert (=> d!1710532 true))

(assert (=> d!1710532 (= (derivationStepZipper!1226 lt!2172719 (head!11414 (t!374468 s!2326))) (flatMap!712 lt!2172719 lambda!271859))))

(declare-fun bs!1234519 () Bool)

(assert (= bs!1234519 d!1710532))

(declare-fun m!6359930 () Bool)

(assert (=> bs!1234519 m!6359930))

(assert (=> b!5323895 d!1710532))

(assert (=> b!5323895 d!1710408))

(assert (=> b!5323895 d!1710410))

(declare-fun bs!1234520 () Bool)

(declare-fun d!1710534 () Bool)

(assert (= bs!1234520 (and d!1710534 d!1710388)))

(declare-fun lambda!271860 () Int)

(assert (=> bs!1234520 (not (= lambda!271860 lambda!271837))))

(declare-fun bs!1234521 () Bool)

(assert (= bs!1234521 (and d!1710534 b!5323994)))

(assert (=> bs!1234521 (not (= lambda!271860 lambda!271718))))

(declare-fun bs!1234522 () Bool)

(assert (= bs!1234522 (and d!1710534 b!5325445)))

(assert (=> bs!1234522 (not (= lambda!271860 lambda!271851))))

(declare-fun bs!1234523 () Bool)

(assert (= bs!1234523 (and d!1710534 b!5325443)))

(assert (=> bs!1234523 (not (= lambda!271860 lambda!271850))))

(declare-fun bs!1234524 () Bool)

(assert (= bs!1234524 (and d!1710534 b!5325372)))

(assert (=> bs!1234524 (not (= lambda!271860 lambda!271841))))

(declare-fun bs!1234525 () Bool)

(assert (= bs!1234525 (and d!1710534 b!5323992)))

(assert (=> bs!1234525 (not (= lambda!271860 lambda!271717))))

(declare-fun bs!1234526 () Bool)

(assert (= bs!1234526 (and d!1710534 d!1710356)))

(assert (=> bs!1234526 (= lambda!271860 lambda!271822)))

(declare-fun bs!1234527 () Bool)

(assert (= bs!1234527 (and d!1710534 d!1710454)))

(assert (=> bs!1234527 (= lambda!271860 lambda!271853)))

(declare-fun bs!1234528 () Bool)

(assert (= bs!1234528 (and d!1710534 b!5325370)))

(assert (=> bs!1234528 (not (= lambda!271860 lambda!271840))))

(declare-fun bs!1234529 () Bool)

(assert (= bs!1234529 (and d!1710534 b!5323978)))

(assert (=> bs!1234529 (not (= lambda!271860 lambda!271715))))

(declare-fun bs!1234530 () Bool)

(assert (= bs!1234530 (and d!1710534 d!1710204)))

(assert (=> bs!1234530 (= lambda!271860 lambda!271801)))

(declare-fun bs!1234531 () Bool)

(assert (= bs!1234531 (and d!1710534 d!1710446)))

(assert (=> bs!1234531 (not (= lambda!271860 lambda!271852))))

(declare-fun bs!1234532 () Bool)

(assert (= bs!1234532 (and d!1710534 b!5323976)))

(assert (=> bs!1234532 (not (= lambda!271860 lambda!271714))))

(declare-fun bs!1234533 () Bool)

(assert (= bs!1234533 (and d!1710534 d!1710412)))

(assert (=> bs!1234533 (= lambda!271860 lambda!271844)))

(assert (=> d!1710534 (= (nullableZipper!1348 lt!2172711) (exists!2013 lt!2172711 lambda!271860))))

(declare-fun bs!1234534 () Bool)

(assert (= bs!1234534 d!1710534))

(declare-fun m!6359932 () Bool)

(assert (=> bs!1234534 m!6359932))

(assert (=> b!5324037 d!1710534))

(assert (=> d!1709938 d!1709934))

(assert (=> d!1709938 d!1710296))

(assert (=> d!1709938 d!1709944))

(declare-fun d!1710536 () Bool)

(assert (=> d!1710536 (= (Exists!2166 lambda!271737) (choose!39862 lambda!271737))))

(declare-fun bs!1234535 () Bool)

(assert (= bs!1234535 d!1710536))

(declare-fun m!6359934 () Bool)

(assert (=> bs!1234535 m!6359934))

(assert (=> d!1709938 d!1710536))

(declare-fun bs!1234536 () Bool)

(declare-fun d!1710538 () Bool)

(assert (= bs!1234536 (and d!1710538 d!1709938)))

(declare-fun lambda!271863 () Int)

(assert (=> bs!1234536 (= lambda!271863 lambda!271737)))

(declare-fun bs!1234537 () Bool)

(assert (= bs!1234537 (and d!1710538 b!5325181)))

(assert (=> bs!1234537 (not (= lambda!271863 lambda!271812))))

(declare-fun bs!1234538 () Bool)

(assert (= bs!1234538 (and d!1710538 b!5325643)))

(assert (=> bs!1234538 (not (= lambda!271863 lambda!271854))))

(declare-fun bs!1234539 () Bool)

(assert (= bs!1234539 (and d!1710538 b!5324398)))

(assert (=> bs!1234539 (not (= lambda!271863 lambda!271760))))

(declare-fun bs!1234540 () Bool)

(assert (= bs!1234540 (and d!1710538 b!5324471)))

(assert (=> bs!1234540 (not (= lambda!271863 lambda!271764))))

(declare-fun bs!1234541 () Bool)

(assert (= bs!1234541 (and d!1710538 b!5325006)))

(assert (=> bs!1234541 (not (= lambda!271863 lambda!271802))))

(declare-fun bs!1234542 () Bool)

(assert (= bs!1234542 (and d!1710538 b!5325645)))

(assert (=> bs!1234542 (not (= lambda!271863 lambda!271855))))

(declare-fun bs!1234543 () Bool)

(assert (= bs!1234543 (and d!1710538 b!5324469)))

(assert (=> bs!1234543 (not (= lambda!271863 lambda!271763))))

(declare-fun bs!1234544 () Bool)

(assert (= bs!1234544 (and d!1710538 b!5323677)))

(assert (=> bs!1234544 (= lambda!271863 lambda!271670)))

(declare-fun bs!1234545 () Bool)

(assert (= bs!1234545 (and d!1710538 b!5325008)))

(assert (=> bs!1234545 (not (= lambda!271863 lambda!271804))))

(declare-fun bs!1234546 () Bool)

(assert (= bs!1234546 (and d!1710538 d!1709942)))

(assert (=> bs!1234546 (not (= lambda!271863 lambda!271743))))

(assert (=> bs!1234544 (not (= lambda!271863 lambda!271671))))

(declare-fun bs!1234547 () Bool)

(assert (= bs!1234547 (and d!1710538 b!5324400)))

(assert (=> bs!1234547 (not (= lambda!271863 lambda!271761))))

(declare-fun bs!1234548 () Bool)

(assert (= bs!1234548 (and d!1710538 b!5325183)))

(assert (=> bs!1234548 (not (= lambda!271863 lambda!271813))))

(assert (=> bs!1234546 (= lambda!271863 lambda!271742)))

(assert (=> d!1710538 true))

(assert (=> d!1710538 true))

(assert (=> d!1710538 true))

(assert (=> d!1710538 (= (isDefined!11799 (findConcatSeparation!1510 (regOne!30482 r!7292) (regTwo!30482 r!7292) Nil!61131 s!2326 s!2326)) (Exists!2166 lambda!271863))))

(assert (=> d!1710538 true))

(declare-fun _$89!1528 () Unit!153458)

(assert (=> d!1710538 (= (choose!39863 (regOne!30482 r!7292) (regTwo!30482 r!7292) s!2326) _$89!1528)))

(declare-fun bs!1234549 () Bool)

(assert (= bs!1234549 d!1710538))

(assert (=> bs!1234549 m!6358142))

(assert (=> bs!1234549 m!6358142))

(assert (=> bs!1234549 m!6358144))

(declare-fun m!6359936 () Bool)

(assert (=> bs!1234549 m!6359936))

(assert (=> d!1709938 d!1710538))

(declare-fun b!5325710 () Bool)

(declare-fun res!2258853 () Bool)

(declare-fun e!3308322 () Bool)

(assert (=> b!5325710 (=> (not res!2258853) (not e!3308322))))

(declare-fun lt!2172976 () List!61255)

(assert (=> b!5325710 (= res!2258853 (= (size!39769 lt!2172976) (+ (size!39769 (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) Nil!61131))) (size!39769 (t!374468 s!2326)))))))

(declare-fun b!5325709 () Bool)

(declare-fun e!3308321 () List!61255)

(assert (=> b!5325709 (= e!3308321 (Cons!61131 (h!67579 (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) Nil!61131))) (++!13328 (t!374468 (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) Nil!61131))) (t!374468 s!2326))))))

(declare-fun d!1710540 () Bool)

(assert (=> d!1710540 e!3308322))

(declare-fun res!2258852 () Bool)

(assert (=> d!1710540 (=> (not res!2258852) (not e!3308322))))

(assert (=> d!1710540 (= res!2258852 (= (content!10903 lt!2172976) ((_ map or) (content!10903 (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) Nil!61131))) (content!10903 (t!374468 s!2326)))))))

(assert (=> d!1710540 (= lt!2172976 e!3308321)))

(declare-fun c!925939 () Bool)

(assert (=> d!1710540 (= c!925939 ((_ is Nil!61131) (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) Nil!61131))))))

(assert (=> d!1710540 (= (++!13328 (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) Nil!61131)) (t!374468 s!2326)) lt!2172976)))

(declare-fun b!5325708 () Bool)

(assert (=> b!5325708 (= e!3308321 (t!374468 s!2326))))

(declare-fun b!5325711 () Bool)

(assert (=> b!5325711 (= e!3308322 (or (not (= (t!374468 s!2326) Nil!61131)) (= lt!2172976 (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) Nil!61131)))))))

(assert (= (and d!1710540 c!925939) b!5325708))

(assert (= (and d!1710540 (not c!925939)) b!5325709))

(assert (= (and d!1710540 res!2258852) b!5325710))

(assert (= (and b!5325710 res!2258853) b!5325711))

(declare-fun m!6359938 () Bool)

(assert (=> b!5325710 m!6359938))

(assert (=> b!5325710 m!6358662))

(declare-fun m!6359940 () Bool)

(assert (=> b!5325710 m!6359940))

(declare-fun m!6359942 () Bool)

(assert (=> b!5325710 m!6359942))

(declare-fun m!6359944 () Bool)

(assert (=> b!5325709 m!6359944))

(declare-fun m!6359946 () Bool)

(assert (=> d!1710540 m!6359946))

(assert (=> d!1710540 m!6358662))

(declare-fun m!6359948 () Bool)

(assert (=> d!1710540 m!6359948))

(declare-fun m!6359950 () Bool)

(assert (=> d!1710540 m!6359950))

(assert (=> b!5324292 d!1710540))

(declare-fun b!5325714 () Bool)

(declare-fun res!2258855 () Bool)

(declare-fun e!3308324 () Bool)

(assert (=> b!5325714 (=> (not res!2258855) (not e!3308324))))

(declare-fun lt!2172977 () List!61255)

(assert (=> b!5325714 (= res!2258855 (= (size!39769 lt!2172977) (+ (size!39769 Nil!61131) (size!39769 (Cons!61131 (h!67579 s!2326) Nil!61131)))))))

(declare-fun b!5325713 () Bool)

(declare-fun e!3308323 () List!61255)

(assert (=> b!5325713 (= e!3308323 (Cons!61131 (h!67579 Nil!61131) (++!13328 (t!374468 Nil!61131) (Cons!61131 (h!67579 s!2326) Nil!61131))))))

(declare-fun d!1710542 () Bool)

(assert (=> d!1710542 e!3308324))

(declare-fun res!2258854 () Bool)

(assert (=> d!1710542 (=> (not res!2258854) (not e!3308324))))

(assert (=> d!1710542 (= res!2258854 (= (content!10903 lt!2172977) ((_ map or) (content!10903 Nil!61131) (content!10903 (Cons!61131 (h!67579 s!2326) Nil!61131)))))))

(assert (=> d!1710542 (= lt!2172977 e!3308323)))

(declare-fun c!925940 () Bool)

(assert (=> d!1710542 (= c!925940 ((_ is Nil!61131) Nil!61131))))

(assert (=> d!1710542 (= (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) Nil!61131)) lt!2172977)))

(declare-fun b!5325712 () Bool)

(assert (=> b!5325712 (= e!3308323 (Cons!61131 (h!67579 s!2326) Nil!61131))))

(declare-fun b!5325715 () Bool)

(assert (=> b!5325715 (= e!3308324 (or (not (= (Cons!61131 (h!67579 s!2326) Nil!61131) Nil!61131)) (= lt!2172977 Nil!61131)))))

(assert (= (and d!1710542 c!925940) b!5325712))

(assert (= (and d!1710542 (not c!925940)) b!5325713))

(assert (= (and d!1710542 res!2258854) b!5325714))

(assert (= (and b!5325714 res!2258855) b!5325715))

(declare-fun m!6359952 () Bool)

(assert (=> b!5325714 m!6359952))

(declare-fun m!6359954 () Bool)

(assert (=> b!5325714 m!6359954))

(declare-fun m!6359956 () Bool)

(assert (=> b!5325714 m!6359956))

(declare-fun m!6359958 () Bool)

(assert (=> b!5325713 m!6359958))

(declare-fun m!6359960 () Bool)

(assert (=> d!1710542 m!6359960))

(declare-fun m!6359962 () Bool)

(assert (=> d!1710542 m!6359962))

(declare-fun m!6359964 () Bool)

(assert (=> d!1710542 m!6359964))

(assert (=> b!5324292 d!1710542))

(declare-fun d!1710544 () Bool)

(assert (=> d!1710544 (= (++!13328 (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) Nil!61131)) (t!374468 s!2326)) s!2326)))

(declare-fun lt!2172980 () Unit!153458)

(declare-fun choose!39871 (List!61255 C!30240 List!61255 List!61255) Unit!153458)

(assert (=> d!1710544 (= lt!2172980 (choose!39871 Nil!61131 (h!67579 s!2326) (t!374468 s!2326) s!2326))))

(assert (=> d!1710544 (= (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) (t!374468 s!2326))) s!2326)))

(assert (=> d!1710544 (= (lemmaMoveElementToOtherListKeepsConcatEq!1743 Nil!61131 (h!67579 s!2326) (t!374468 s!2326) s!2326) lt!2172980)))

(declare-fun bs!1234550 () Bool)

(assert (= bs!1234550 d!1710544))

(assert (=> bs!1234550 m!6358662))

(assert (=> bs!1234550 m!6358662))

(assert (=> bs!1234550 m!6358664))

(declare-fun m!6359966 () Bool)

(assert (=> bs!1234550 m!6359966))

(declare-fun m!6359968 () Bool)

(assert (=> bs!1234550 m!6359968))

(assert (=> b!5324292 d!1710544))

(declare-fun b!5325716 () Bool)

(declare-fun res!2258856 () Bool)

(declare-fun e!3308327 () Bool)

(assert (=> b!5325716 (=> (not res!2258856) (not e!3308327))))

(declare-fun lt!2172983 () Option!15096)

(assert (=> b!5325716 (= res!2258856 (matchR!7170 (regTwo!30482 r!7292) (_2!35487 (get!21026 lt!2172983))))))

(declare-fun b!5325717 () Bool)

(declare-fun res!2258859 () Bool)

(assert (=> b!5325717 (=> (not res!2258859) (not e!3308327))))

(assert (=> b!5325717 (= res!2258859 (matchR!7170 (regOne!30482 r!7292) (_1!35487 (get!21026 lt!2172983))))))

(declare-fun d!1710546 () Bool)

(declare-fun e!3308328 () Bool)

(assert (=> d!1710546 e!3308328))

(declare-fun res!2258858 () Bool)

(assert (=> d!1710546 (=> res!2258858 e!3308328)))

(assert (=> d!1710546 (= res!2258858 e!3308327)))

(declare-fun res!2258860 () Bool)

(assert (=> d!1710546 (=> (not res!2258860) (not e!3308327))))

(assert (=> d!1710546 (= res!2258860 (isDefined!11799 lt!2172983))))

(declare-fun e!3308326 () Option!15096)

(assert (=> d!1710546 (= lt!2172983 e!3308326)))

(declare-fun c!925942 () Bool)

(declare-fun e!3308329 () Bool)

(assert (=> d!1710546 (= c!925942 e!3308329)))

(declare-fun res!2258857 () Bool)

(assert (=> d!1710546 (=> (not res!2258857) (not e!3308329))))

(assert (=> d!1710546 (= res!2258857 (matchR!7170 (regOne!30482 r!7292) (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) Nil!61131))))))

(assert (=> d!1710546 (validRegex!6721 (regOne!30482 r!7292))))

(assert (=> d!1710546 (= (findConcatSeparation!1510 (regOne!30482 r!7292) (regTwo!30482 r!7292) (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) Nil!61131)) (t!374468 s!2326) s!2326) lt!2172983)))

(declare-fun b!5325718 () Bool)

(assert (=> b!5325718 (= e!3308328 (not (isDefined!11799 lt!2172983)))))

(declare-fun b!5325719 () Bool)

(declare-fun lt!2172982 () Unit!153458)

(declare-fun lt!2172981 () Unit!153458)

(assert (=> b!5325719 (= lt!2172982 lt!2172981)))

(assert (=> b!5325719 (= (++!13328 (++!13328 (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) Nil!61131)) (Cons!61131 (h!67579 (t!374468 s!2326)) Nil!61131)) (t!374468 (t!374468 s!2326))) s!2326)))

(assert (=> b!5325719 (= lt!2172981 (lemmaMoveElementToOtherListKeepsConcatEq!1743 (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) Nil!61131)) (h!67579 (t!374468 s!2326)) (t!374468 (t!374468 s!2326)) s!2326))))

(declare-fun e!3308325 () Option!15096)

(assert (=> b!5325719 (= e!3308325 (findConcatSeparation!1510 (regOne!30482 r!7292) (regTwo!30482 r!7292) (++!13328 (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) Nil!61131)) (Cons!61131 (h!67579 (t!374468 s!2326)) Nil!61131)) (t!374468 (t!374468 s!2326)) s!2326))))

(declare-fun b!5325720 () Bool)

(assert (=> b!5325720 (= e!3308326 (Some!15095 (tuple2!64369 (++!13328 Nil!61131 (Cons!61131 (h!67579 s!2326) Nil!61131)) (t!374468 s!2326))))))

(declare-fun b!5325721 () Bool)

(assert (=> b!5325721 (= e!3308327 (= (++!13328 (_1!35487 (get!21026 lt!2172983)) (_2!35487 (get!21026 lt!2172983))) s!2326))))

(declare-fun b!5325722 () Bool)

(assert (=> b!5325722 (= e!3308326 e!3308325)))

(declare-fun c!925941 () Bool)

(assert (=> b!5325722 (= c!925941 ((_ is Nil!61131) (t!374468 s!2326)))))

(declare-fun b!5325723 () Bool)

(assert (=> b!5325723 (= e!3308325 None!15095)))

(declare-fun b!5325724 () Bool)

(assert (=> b!5325724 (= e!3308329 (matchR!7170 (regTwo!30482 r!7292) (t!374468 s!2326)))))

(assert (= (and d!1710546 res!2258857) b!5325724))

(assert (= (and d!1710546 c!925942) b!5325720))

(assert (= (and d!1710546 (not c!925942)) b!5325722))

(assert (= (and b!5325722 c!925941) b!5325723))

(assert (= (and b!5325722 (not c!925941)) b!5325719))

(assert (= (and d!1710546 res!2258860) b!5325717))

(assert (= (and b!5325717 res!2258859) b!5325716))

(assert (= (and b!5325716 res!2258856) b!5325721))

(assert (= (and d!1710546 (not res!2258858)) b!5325718))

(declare-fun m!6359970 () Bool)

(assert (=> b!5325721 m!6359970))

(declare-fun m!6359972 () Bool)

(assert (=> b!5325721 m!6359972))

(declare-fun m!6359974 () Bool)

(assert (=> b!5325718 m!6359974))

(assert (=> d!1710546 m!6359974))

(assert (=> d!1710546 m!6358662))

(declare-fun m!6359976 () Bool)

(assert (=> d!1710546 m!6359976))

(assert (=> d!1710546 m!6358656))

(assert (=> b!5325717 m!6359970))

(declare-fun m!6359978 () Bool)

(assert (=> b!5325717 m!6359978))

(declare-fun m!6359980 () Bool)

(assert (=> b!5325724 m!6359980))

(assert (=> b!5325719 m!6358662))

(declare-fun m!6359982 () Bool)

(assert (=> b!5325719 m!6359982))

(assert (=> b!5325719 m!6359982))

(declare-fun m!6359984 () Bool)

(assert (=> b!5325719 m!6359984))

(assert (=> b!5325719 m!6358662))

(declare-fun m!6359986 () Bool)

(assert (=> b!5325719 m!6359986))

(assert (=> b!5325719 m!6359982))

(declare-fun m!6359988 () Bool)

(assert (=> b!5325719 m!6359988))

(assert (=> b!5325716 m!6359970))

(declare-fun m!6359990 () Bool)

(assert (=> b!5325716 m!6359990))

(assert (=> b!5324292 d!1710546))

(declare-fun d!1710548 () Bool)

(assert (=> d!1710548 (= (isUnion!323 lt!2172847) ((_ is Union!14985) lt!2172847))))

(assert (=> b!5324347 d!1710548))

(assert (=> bm!380244 d!1710198))

(assert (=> d!1709950 d!1710456))

(declare-fun bs!1234551 () Bool)

(declare-fun d!1710550 () Bool)

(assert (= bs!1234551 (and d!1710550 d!1709946)))

(declare-fun lambda!271864 () Int)

(assert (=> bs!1234551 (= lambda!271864 lambda!271746)))

(declare-fun bs!1234552 () Bool)

(assert (= bs!1234552 (and d!1710550 b!5325337)))

(assert (=> bs!1234552 (not (= lambda!271864 lambda!271832))))

(declare-fun bs!1234553 () Bool)

(assert (= bs!1234553 (and d!1710550 b!5325410)))

(assert (=> bs!1234553 (not (= lambda!271864 lambda!271847))))

(declare-fun bs!1234554 () Bool)

(assert (= bs!1234554 (and d!1710550 d!1709972)))

(assert (=> bs!1234554 (= lambda!271864 lambda!271755)))

(declare-fun bs!1234555 () Bool)

(assert (= bs!1234555 (and d!1710550 d!1709970)))

(assert (=> bs!1234555 (= lambda!271864 lambda!271752)))

(declare-fun bs!1234556 () Bool)

(assert (= bs!1234556 (and d!1710550 d!1710352)))

(assert (=> bs!1234556 (= lambda!271864 lambda!271819)))

(declare-fun bs!1234557 () Bool)

(assert (= bs!1234557 (and d!1710550 d!1709986)))

(assert (=> bs!1234557 (= lambda!271864 lambda!271762)))

(declare-fun bs!1234558 () Bool)

(assert (= bs!1234558 (and d!1710550 b!5325335)))

(assert (=> bs!1234558 (not (= lambda!271864 lambda!271830))))

(declare-fun bs!1234559 () Bool)

(assert (= bs!1234559 (and d!1710550 d!1709998)))

(assert (=> bs!1234559 (= lambda!271864 lambda!271765)))

(declare-fun bs!1234560 () Bool)

(assert (= bs!1234560 (and d!1710550 d!1709812)))

(assert (=> bs!1234560 (= lambda!271864 lambda!271706)))

(declare-fun bs!1234561 () Bool)

(assert (= bs!1234561 (and d!1710550 b!5323686)))

(assert (=> bs!1234561 (= lambda!271864 lambda!271673)))

(declare-fun bs!1234562 () Bool)

(assert (= bs!1234562 (and d!1710550 b!5325412)))

(assert (=> bs!1234562 (not (= lambda!271864 lambda!271848))))

(declare-fun bs!1234563 () Bool)

(assert (= bs!1234563 (and d!1710550 d!1710146)))

(assert (=> bs!1234563 (= lambda!271864 lambda!271795)))

(declare-fun bs!1234564 () Bool)

(assert (= bs!1234564 (and d!1710550 d!1710130)))

(assert (=> bs!1234564 (= lambda!271864 lambda!271794)))

(declare-fun bs!1234565 () Bool)

(assert (= bs!1234565 (and d!1710550 d!1710516)))

(assert (=> bs!1234565 (= lambda!271864 lambda!271857)))

(assert (=> d!1710550 (= (inv!80709 setElem!34295) (forall!14403 (exprs!4869 setElem!34295) lambda!271864))))

(declare-fun bs!1234566 () Bool)

(assert (= bs!1234566 d!1710550))

(declare-fun m!6359992 () Bool)

(assert (=> bs!1234566 m!6359992))

(assert (=> setNonEmpty!34295 d!1710550))

(assert (=> b!5323860 d!1709952))

(assert (=> b!5324479 d!1710270))

(declare-fun d!1710552 () Bool)

(assert (=> d!1710552 (= (isEmpty!33099 (t!374467 (unfocusZipperList!427 zl!343))) ((_ is Nil!61130) (t!374467 (unfocusZipperList!427 zl!343))))))

(assert (=> b!5324355 d!1710552))

(assert (=> bs!1233829 d!1709916))

(declare-fun b!5325726 () Bool)

(declare-fun e!3308331 () Bool)

(assert (=> b!5325726 (= e!3308331 (nullable!5154 (derivativeStep!4169 lt!2172700 (head!11414 s!2326))))))

(declare-fun b!5325727 () Bool)

(declare-fun e!3308332 () Bool)

(assert (=> b!5325727 (= e!3308332 (not (= (head!11414 (tail!10511 s!2326)) (c!925355 (derivativeStep!4169 lt!2172700 (head!11414 s!2326))))))))

(declare-fun b!5325728 () Bool)

(declare-fun e!3308336 () Bool)

(declare-fun lt!2172984 () Bool)

(assert (=> b!5325728 (= e!3308336 (not lt!2172984))))

(declare-fun b!5325729 () Bool)

(declare-fun e!3308334 () Bool)

(declare-fun e!3308330 () Bool)

(assert (=> b!5325729 (= e!3308334 e!3308330)))

(declare-fun res!2258866 () Bool)

(assert (=> b!5325729 (=> (not res!2258866) (not e!3308330))))

(assert (=> b!5325729 (= res!2258866 (not lt!2172984))))

(declare-fun b!5325730 () Bool)

(declare-fun res!2258865 () Bool)

(declare-fun e!3308333 () Bool)

(assert (=> b!5325730 (=> (not res!2258865) (not e!3308333))))

(assert (=> b!5325730 (= res!2258865 (isEmpty!33103 (tail!10511 (tail!10511 s!2326))))))

(declare-fun b!5325731 () Bool)

(declare-fun res!2258867 () Bool)

(assert (=> b!5325731 (=> res!2258867 e!3308334)))

(assert (=> b!5325731 (= res!2258867 (not ((_ is ElementMatch!14985) (derivativeStep!4169 lt!2172700 (head!11414 s!2326)))))))

(assert (=> b!5325731 (= e!3308336 e!3308334)))

(declare-fun b!5325732 () Bool)

(assert (=> b!5325732 (= e!3308333 (= (head!11414 (tail!10511 s!2326)) (c!925355 (derivativeStep!4169 lt!2172700 (head!11414 s!2326)))))))

(declare-fun b!5325733 () Bool)

(assert (=> b!5325733 (= e!3308330 e!3308332)))

(declare-fun res!2258868 () Bool)

(assert (=> b!5325733 (=> res!2258868 e!3308332)))

(declare-fun call!380485 () Bool)

(assert (=> b!5325733 (= res!2258868 call!380485)))

(declare-fun bm!380480 () Bool)

(assert (=> bm!380480 (= call!380485 (isEmpty!33103 (tail!10511 s!2326)))))

(declare-fun b!5325734 () Bool)

(declare-fun res!2258863 () Bool)

(assert (=> b!5325734 (=> res!2258863 e!3308332)))

(assert (=> b!5325734 (= res!2258863 (not (isEmpty!33103 (tail!10511 (tail!10511 s!2326)))))))

(declare-fun d!1710554 () Bool)

(declare-fun e!3308335 () Bool)

(assert (=> d!1710554 e!3308335))

(declare-fun c!925945 () Bool)

(assert (=> d!1710554 (= c!925945 ((_ is EmptyExpr!14985) (derivativeStep!4169 lt!2172700 (head!11414 s!2326))))))

(assert (=> d!1710554 (= lt!2172984 e!3308331)))

(declare-fun c!925944 () Bool)

(assert (=> d!1710554 (= c!925944 (isEmpty!33103 (tail!10511 s!2326)))))

(assert (=> d!1710554 (validRegex!6721 (derivativeStep!4169 lt!2172700 (head!11414 s!2326)))))

(assert (=> d!1710554 (= (matchR!7170 (derivativeStep!4169 lt!2172700 (head!11414 s!2326)) (tail!10511 s!2326)) lt!2172984)))

(declare-fun b!5325725 () Bool)

(declare-fun res!2258864 () Bool)

(assert (=> b!5325725 (=> (not res!2258864) (not e!3308333))))

(assert (=> b!5325725 (= res!2258864 (not call!380485))))

(declare-fun b!5325735 () Bool)

(assert (=> b!5325735 (= e!3308335 e!3308336)))

(declare-fun c!925943 () Bool)

(assert (=> b!5325735 (= c!925943 ((_ is EmptyLang!14985) (derivativeStep!4169 lt!2172700 (head!11414 s!2326))))))

(declare-fun b!5325736 () Bool)

(assert (=> b!5325736 (= e!3308335 (= lt!2172984 call!380485))))

(declare-fun b!5325737 () Bool)

(declare-fun res!2258862 () Bool)

(assert (=> b!5325737 (=> res!2258862 e!3308334)))

(assert (=> b!5325737 (= res!2258862 e!3308333)))

(declare-fun res!2258861 () Bool)

(assert (=> b!5325737 (=> (not res!2258861) (not e!3308333))))

(assert (=> b!5325737 (= res!2258861 lt!2172984)))

(declare-fun b!5325738 () Bool)

(assert (=> b!5325738 (= e!3308331 (matchR!7170 (derivativeStep!4169 (derivativeStep!4169 lt!2172700 (head!11414 s!2326)) (head!11414 (tail!10511 s!2326))) (tail!10511 (tail!10511 s!2326))))))

(assert (= (and d!1710554 c!925944) b!5325726))

(assert (= (and d!1710554 (not c!925944)) b!5325738))

(assert (= (and d!1710554 c!925945) b!5325736))

(assert (= (and d!1710554 (not c!925945)) b!5325735))

(assert (= (and b!5325735 c!925943) b!5325728))

(assert (= (and b!5325735 (not c!925943)) b!5325731))

(assert (= (and b!5325731 (not res!2258867)) b!5325737))

(assert (= (and b!5325737 res!2258861) b!5325725))

(assert (= (and b!5325725 res!2258864) b!5325730))

(assert (= (and b!5325730 res!2258865) b!5325732))

(assert (= (and b!5325737 (not res!2258862)) b!5325729))

(assert (= (and b!5325729 res!2258866) b!5325733))

(assert (= (and b!5325733 (not res!2258868)) b!5325734))

(assert (= (and b!5325734 (not res!2258863)) b!5325727))

(assert (= (or b!5325736 b!5325725 b!5325733) bm!380480))

(assert (=> bm!380480 m!6358758))

(assert (=> bm!380480 m!6358760))

(assert (=> b!5325727 m!6358758))

(assert (=> b!5325727 m!6359378))

(assert (=> d!1710554 m!6358758))

(assert (=> d!1710554 m!6358760))

(assert (=> d!1710554 m!6358764))

(declare-fun m!6359994 () Bool)

(assert (=> d!1710554 m!6359994))

(assert (=> b!5325732 m!6358758))

(assert (=> b!5325732 m!6359378))

(assert (=> b!5325730 m!6358758))

(assert (=> b!5325730 m!6359382))

(assert (=> b!5325730 m!6359382))

(assert (=> b!5325730 m!6359826))

(assert (=> b!5325726 m!6358764))

(declare-fun m!6359996 () Bool)

(assert (=> b!5325726 m!6359996))

(assert (=> b!5325734 m!6358758))

(assert (=> b!5325734 m!6359382))

(assert (=> b!5325734 m!6359382))

(assert (=> b!5325734 m!6359826))

(assert (=> b!5325738 m!6358758))

(assert (=> b!5325738 m!6359378))

(assert (=> b!5325738 m!6358764))

(assert (=> b!5325738 m!6359378))

(declare-fun m!6359998 () Bool)

(assert (=> b!5325738 m!6359998))

(assert (=> b!5325738 m!6358758))

(assert (=> b!5325738 m!6359382))

(assert (=> b!5325738 m!6359998))

(assert (=> b!5325738 m!6359382))

(declare-fun m!6360000 () Bool)

(assert (=> b!5325738 m!6360000))

(assert (=> b!5324447 d!1710554))

(declare-fun b!5325739 () Bool)

(declare-fun e!3308341 () Regex!14985)

(declare-fun call!380487 () Regex!14985)

(assert (=> b!5325739 (= e!3308341 (Concat!23830 call!380487 lt!2172700))))

(declare-fun b!5325740 () Bool)

(declare-fun e!3308339 () Regex!14985)

(assert (=> b!5325740 (= e!3308339 EmptyLang!14985)))

(declare-fun bm!380481 () Bool)

(declare-fun call!380486 () Regex!14985)

(declare-fun call!380488 () Regex!14985)

(assert (=> bm!380481 (= call!380486 call!380488)))

(declare-fun b!5325741 () Bool)

(declare-fun e!3308337 () Regex!14985)

(assert (=> b!5325741 (= e!3308339 e!3308337)))

(declare-fun c!925948 () Bool)

(assert (=> b!5325741 (= c!925948 ((_ is ElementMatch!14985) lt!2172700))))

(declare-fun b!5325742 () Bool)

(declare-fun e!3308340 () Regex!14985)

(declare-fun call!380489 () Regex!14985)

(assert (=> b!5325742 (= e!3308340 (Union!14985 call!380488 call!380489))))

(declare-fun b!5325743 () Bool)

(declare-fun c!925947 () Bool)

(assert (=> b!5325743 (= c!925947 (nullable!5154 (regOne!30482 lt!2172700)))))

(declare-fun e!3308338 () Regex!14985)

(assert (=> b!5325743 (= e!3308341 e!3308338)))

(declare-fun b!5325744 () Bool)

(assert (=> b!5325744 (= e!3308340 e!3308341)))

(declare-fun c!925950 () Bool)

(assert (=> b!5325744 (= c!925950 ((_ is Star!14985) lt!2172700))))

(declare-fun b!5325745 () Bool)

(declare-fun c!925949 () Bool)

(assert (=> b!5325745 (= c!925949 ((_ is Union!14985) lt!2172700))))

(assert (=> b!5325745 (= e!3308337 e!3308340)))

(declare-fun bm!380483 () Bool)

(assert (=> bm!380483 (= call!380489 (derivativeStep!4169 (ite c!925949 (regTwo!30483 lt!2172700) (ite c!925950 (reg!15314 lt!2172700) (regOne!30482 lt!2172700))) (head!11414 s!2326)))))

(declare-fun bm!380484 () Bool)

(assert (=> bm!380484 (= call!380488 (derivativeStep!4169 (ite c!925949 (regOne!30483 lt!2172700) (ite c!925947 (regTwo!30482 lt!2172700) (regOne!30482 lt!2172700))) (head!11414 s!2326)))))

(declare-fun b!5325746 () Bool)

(assert (=> b!5325746 (= e!3308337 (ite (= (head!11414 s!2326) (c!925355 lt!2172700)) EmptyExpr!14985 EmptyLang!14985))))

(declare-fun b!5325747 () Bool)

(assert (=> b!5325747 (= e!3308338 (Union!14985 (Concat!23830 call!380486 (regTwo!30482 lt!2172700)) EmptyLang!14985))))

(declare-fun b!5325748 () Bool)

(assert (=> b!5325748 (= e!3308338 (Union!14985 (Concat!23830 call!380487 (regTwo!30482 lt!2172700)) call!380486))))

(declare-fun d!1710556 () Bool)

(declare-fun lt!2172985 () Regex!14985)

(assert (=> d!1710556 (validRegex!6721 lt!2172985)))

(assert (=> d!1710556 (= lt!2172985 e!3308339)))

(declare-fun c!925946 () Bool)

(assert (=> d!1710556 (= c!925946 (or ((_ is EmptyExpr!14985) lt!2172700) ((_ is EmptyLang!14985) lt!2172700)))))

(assert (=> d!1710556 (validRegex!6721 lt!2172700)))

(assert (=> d!1710556 (= (derivativeStep!4169 lt!2172700 (head!11414 s!2326)) lt!2172985)))

(declare-fun bm!380482 () Bool)

(assert (=> bm!380482 (= call!380487 call!380489)))

(assert (= (and d!1710556 c!925946) b!5325740))

(assert (= (and d!1710556 (not c!925946)) b!5325741))

(assert (= (and b!5325741 c!925948) b!5325746))

(assert (= (and b!5325741 (not c!925948)) b!5325745))

(assert (= (and b!5325745 c!925949) b!5325742))

(assert (= (and b!5325745 (not c!925949)) b!5325744))

(assert (= (and b!5325744 c!925950) b!5325739))

(assert (= (and b!5325744 (not c!925950)) b!5325743))

(assert (= (and b!5325743 c!925947) b!5325748))

(assert (= (and b!5325743 (not c!925947)) b!5325747))

(assert (= (or b!5325748 b!5325747) bm!380481))

(assert (= (or b!5325739 b!5325748) bm!380482))

(assert (= (or b!5325742 bm!380482) bm!380483))

(assert (= (or b!5325742 bm!380481) bm!380484))

(declare-fun m!6360002 () Bool)

(assert (=> b!5325743 m!6360002))

(assert (=> bm!380483 m!6358756))

(declare-fun m!6360004 () Bool)

(assert (=> bm!380483 m!6360004))

(assert (=> bm!380484 m!6358756))

(declare-fun m!6360006 () Bool)

(assert (=> bm!380484 m!6360006))

(declare-fun m!6360008 () Bool)

(assert (=> d!1710556 m!6360008))

(assert (=> d!1710556 m!6358754))

(assert (=> b!5324447 d!1710556))

(assert (=> b!5324447 d!1710270))

(assert (=> b!5324447 d!1710164))

(declare-fun d!1710558 () Bool)

(assert (=> d!1710558 (= (head!11413 lt!2172704) (h!67578 lt!2172704))))

(assert (=> b!5324457 d!1710558))

(declare-fun d!1710560 () Bool)

(assert (=> d!1710560 (= (isEmpty!33099 (tail!10510 (unfocusZipperList!427 zl!343))) ((_ is Nil!61130) (tail!10510 (unfocusZipperList!427 zl!343))))))

(assert (=> b!5324351 d!1710560))

(declare-fun d!1710562 () Bool)

(assert (=> d!1710562 (= (tail!10510 (unfocusZipperList!427 zl!343)) (t!374467 (unfocusZipperList!427 zl!343)))))

(assert (=> b!5324351 d!1710562))

(declare-fun d!1710564 () Bool)

(assert (=> d!1710564 (= (Exists!2166 (ite c!925605 lambda!271763 lambda!271764)) (choose!39862 (ite c!925605 lambda!271763 lambda!271764)))))

(declare-fun bs!1234567 () Bool)

(assert (= bs!1234567 d!1710564))

(declare-fun m!6360010 () Bool)

(assert (=> bs!1234567 m!6360010))

(assert (=> bm!380245 d!1710564))

(assert (=> d!1709978 d!1710198))

(assert (=> d!1709978 d!1710304))

(declare-fun d!1710566 () Bool)

(assert (=> d!1710566 (= (nullable!5154 (h!67578 (exprs!4869 lt!2172701))) (nullableFct!1500 (h!67578 (exprs!4869 lt!2172701))))))

(declare-fun bs!1234568 () Bool)

(assert (= bs!1234568 d!1710566))

(declare-fun m!6360012 () Bool)

(assert (=> bs!1234568 m!6360012))

(assert (=> b!5324316 d!1710566))

(declare-fun d!1710568 () Bool)

(assert (=> d!1710568 (= (isEmpty!33099 (tail!10510 lt!2172704)) ((_ is Nil!61130) (tail!10510 lt!2172704)))))

(assert (=> b!5324463 d!1710568))

(declare-fun d!1710570 () Bool)

(assert (=> d!1710570 (= (tail!10510 lt!2172704) (t!374467 lt!2172704))))

(assert (=> b!5324463 d!1710570))

(declare-fun b!5325749 () Bool)

(declare-fun e!3308345 () Bool)

(declare-fun call!380490 () Bool)

(assert (=> b!5325749 (= e!3308345 call!380490)))

(declare-fun b!5325750 () Bool)

(declare-fun e!3308343 () Bool)

(declare-fun e!3308342 () Bool)

(assert (=> b!5325750 (= e!3308343 e!3308342)))

(declare-fun res!2258873 () Bool)

(assert (=> b!5325750 (=> (not res!2258873) (not e!3308342))))

(declare-fun call!380492 () Bool)

(assert (=> b!5325750 (= res!2258873 call!380492)))

(declare-fun b!5325751 () Bool)

(declare-fun res!2258871 () Bool)

(assert (=> b!5325751 (=> res!2258871 e!3308343)))

(assert (=> b!5325751 (= res!2258871 (not ((_ is Concat!23830) lt!2172860)))))

(declare-fun e!3308347 () Bool)

(assert (=> b!5325751 (= e!3308347 e!3308343)))

(declare-fun c!925952 () Bool)

(declare-fun bm!380485 () Bool)

(declare-fun c!925951 () Bool)

(assert (=> bm!380485 (= call!380490 (validRegex!6721 (ite c!925952 (reg!15314 lt!2172860) (ite c!925951 (regTwo!30483 lt!2172860) (regTwo!30482 lt!2172860)))))))

(declare-fun b!5325752 () Bool)

(declare-fun e!3308346 () Bool)

(assert (=> b!5325752 (= e!3308346 e!3308347)))

(assert (=> b!5325752 (= c!925951 ((_ is Union!14985) lt!2172860))))

(declare-fun d!1710572 () Bool)

(declare-fun res!2258870 () Bool)

(declare-fun e!3308344 () Bool)

(assert (=> d!1710572 (=> res!2258870 e!3308344)))

(assert (=> d!1710572 (= res!2258870 ((_ is ElementMatch!14985) lt!2172860))))

(assert (=> d!1710572 (= (validRegex!6721 lt!2172860) e!3308344)))

(declare-fun b!5325753 () Bool)

(declare-fun res!2258872 () Bool)

(declare-fun e!3308348 () Bool)

(assert (=> b!5325753 (=> (not res!2258872) (not e!3308348))))

(assert (=> b!5325753 (= res!2258872 call!380492)))

(assert (=> b!5325753 (= e!3308347 e!3308348)))

(declare-fun bm!380486 () Bool)

(assert (=> bm!380486 (= call!380492 (validRegex!6721 (ite c!925951 (regOne!30483 lt!2172860) (regOne!30482 lt!2172860))))))

(declare-fun b!5325754 () Bool)

(declare-fun call!380491 () Bool)

(assert (=> b!5325754 (= e!3308348 call!380491)))

(declare-fun b!5325755 () Bool)

(assert (=> b!5325755 (= e!3308342 call!380491)))

(declare-fun b!5325756 () Bool)

(assert (=> b!5325756 (= e!3308346 e!3308345)))

(declare-fun res!2258869 () Bool)

(assert (=> b!5325756 (= res!2258869 (not (nullable!5154 (reg!15314 lt!2172860))))))

(assert (=> b!5325756 (=> (not res!2258869) (not e!3308345))))

(declare-fun bm!380487 () Bool)

(assert (=> bm!380487 (= call!380491 call!380490)))

(declare-fun b!5325757 () Bool)

(assert (=> b!5325757 (= e!3308344 e!3308346)))

(assert (=> b!5325757 (= c!925952 ((_ is Star!14985) lt!2172860))))

(assert (= (and d!1710572 (not res!2258870)) b!5325757))

(assert (= (and b!5325757 c!925952) b!5325756))

(assert (= (and b!5325757 (not c!925952)) b!5325752))

(assert (= (and b!5325756 res!2258869) b!5325749))

(assert (= (and b!5325752 c!925951) b!5325753))

(assert (= (and b!5325752 (not c!925951)) b!5325751))

(assert (= (and b!5325753 res!2258872) b!5325754))

(assert (= (and b!5325751 (not res!2258871)) b!5325750))

(assert (= (and b!5325750 res!2258873) b!5325755))

(assert (= (or b!5325754 b!5325755) bm!380487))

(assert (= (or b!5325753 b!5325750) bm!380486))

(assert (= (or b!5325749 bm!380487) bm!380485))

(declare-fun m!6360014 () Bool)

(assert (=> bm!380485 m!6360014))

(declare-fun m!6360016 () Bool)

(assert (=> bm!380486 m!6360016))

(declare-fun m!6360018 () Bool)

(assert (=> b!5325756 m!6360018))

(assert (=> d!1709986 d!1710572))

(declare-fun d!1710574 () Bool)

(declare-fun res!2258874 () Bool)

(declare-fun e!3308349 () Bool)

(assert (=> d!1710574 (=> res!2258874 e!3308349)))

(assert (=> d!1710574 (= res!2258874 ((_ is Nil!61130) lt!2172704))))

(assert (=> d!1710574 (= (forall!14403 lt!2172704 lambda!271762) e!3308349)))

(declare-fun b!5325758 () Bool)

(declare-fun e!3308350 () Bool)

(assert (=> b!5325758 (= e!3308349 e!3308350)))

(declare-fun res!2258875 () Bool)

(assert (=> b!5325758 (=> (not res!2258875) (not e!3308350))))

(assert (=> b!5325758 (= res!2258875 (dynLambda!24169 lambda!271762 (h!67578 lt!2172704)))))

(declare-fun b!5325759 () Bool)

(assert (=> b!5325759 (= e!3308350 (forall!14403 (t!374467 lt!2172704) lambda!271762))))

(assert (= (and d!1710574 (not res!2258874)) b!5325758))

(assert (= (and b!5325758 res!2258875) b!5325759))

(declare-fun b_lambda!204869 () Bool)

(assert (=> (not b_lambda!204869) (not b!5325758)))

(declare-fun m!6360020 () Bool)

(assert (=> b!5325758 m!6360020))

(declare-fun m!6360022 () Bool)

(assert (=> b!5325759 m!6360022))

(assert (=> d!1709986 d!1710574))

(declare-fun d!1710576 () Bool)

(declare-fun res!2258876 () Bool)

(declare-fun e!3308351 () Bool)

(assert (=> d!1710576 (=> res!2258876 e!3308351)))

(assert (=> d!1710576 (= res!2258876 ((_ is Nil!61130) (t!374467 lt!2172697)))))

(assert (=> d!1710576 (= (forall!14403 (t!374467 lt!2172697) lambda!271673) e!3308351)))

(declare-fun b!5325760 () Bool)

(declare-fun e!3308352 () Bool)

(assert (=> b!5325760 (= e!3308351 e!3308352)))

(declare-fun res!2258877 () Bool)

(assert (=> b!5325760 (=> (not res!2258877) (not e!3308352))))

(assert (=> b!5325760 (= res!2258877 (dynLambda!24169 lambda!271673 (h!67578 (t!374467 lt!2172697))))))

(declare-fun b!5325761 () Bool)

(assert (=> b!5325761 (= e!3308352 (forall!14403 (t!374467 (t!374467 lt!2172697)) lambda!271673))))

(assert (= (and d!1710576 (not res!2258876)) b!5325760))

(assert (= (and b!5325760 res!2258877) b!5325761))

(declare-fun b_lambda!204871 () Bool)

(assert (=> (not b_lambda!204871) (not b!5325760)))

(declare-fun m!6360024 () Bool)

(assert (=> b!5325760 m!6360024))

(declare-fun m!6360026 () Bool)

(assert (=> b!5325761 m!6360026))

(assert (=> b!5324453 d!1710576))

(declare-fun d!1710578 () Bool)

(assert (=> d!1710578 (= (isEmpty!33099 (exprs!4869 (h!67580 zl!343))) ((_ is Nil!61130) (exprs!4869 (h!67580 zl!343))))))

(assert (=> b!5323862 d!1710578))

(assert (=> d!1709902 d!1709914))

(declare-fun d!1710580 () Bool)

(assert (=> d!1710580 (= (flatMap!712 z!1189 lambda!271672) (dynLambda!24167 lambda!271672 (h!67580 zl!343)))))

(assert (=> d!1710580 true))

(declare-fun _$13!1905 () Unit!153458)

(assert (=> d!1710580 (= (choose!39859 z!1189 (h!67580 zl!343) lambda!271672) _$13!1905)))

(declare-fun b_lambda!204873 () Bool)

(assert (=> (not b_lambda!204873) (not d!1710580)))

(declare-fun bs!1234569 () Bool)

(assert (= bs!1234569 d!1710580))

(assert (=> bs!1234569 m!6358178))

(assert (=> bs!1234569 m!6358570))

(assert (=> d!1709902 d!1710580))

(declare-fun b!5325762 () Bool)

(declare-fun e!3308355 () (InoxSet Context!8738))

(declare-fun call!380493 () (InoxSet Context!8738))

(declare-fun call!380495 () (InoxSet Context!8738))

(assert (=> b!5325762 (= e!3308355 ((_ map or) call!380493 call!380495))))

(declare-fun b!5325763 () Bool)

(declare-fun e!3308358 () (InoxSet Context!8738))

(declare-fun call!380497 () (InoxSet Context!8738))

(assert (=> b!5325763 (= e!3308358 call!380497)))

(declare-fun b!5325764 () Bool)

(declare-fun c!925953 () Bool)

(assert (=> b!5325764 (= c!925953 ((_ is Star!14985) (h!67578 (exprs!4869 lt!2172716))))))

(declare-fun e!3308353 () (InoxSet Context!8738))

(assert (=> b!5325764 (= e!3308353 e!3308358)))

(declare-fun b!5325765 () Bool)

(declare-fun e!3308354 () (InoxSet Context!8738))

(assert (=> b!5325765 (= e!3308354 (store ((as const (Array Context!8738 Bool)) false) (Context!8739 (t!374467 (exprs!4869 lt!2172716))) true))))

(declare-fun bm!380488 () Bool)

(declare-fun call!380498 () List!61254)

(declare-fun call!380494 () List!61254)

(assert (=> bm!380488 (= call!380498 call!380494)))

(declare-fun bm!380489 () Bool)

(declare-fun c!925955 () Bool)

(declare-fun c!925956 () Bool)

(assert (=> bm!380489 (= call!380494 ($colon$colon!1398 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 lt!2172716)))) (ite (or c!925956 c!925955) (regTwo!30482 (h!67578 (exprs!4869 lt!2172716))) (h!67578 (exprs!4869 lt!2172716)))))))

(declare-fun bm!380490 () Bool)

(declare-fun c!925957 () Bool)

(assert (=> bm!380490 (= call!380493 (derivationStepZipperDown!433 (ite c!925957 (regOne!30483 (h!67578 (exprs!4869 lt!2172716))) (regOne!30482 (h!67578 (exprs!4869 lt!2172716)))) (ite c!925957 (Context!8739 (t!374467 (exprs!4869 lt!2172716))) (Context!8739 call!380494)) (h!67579 s!2326)))))

(declare-fun bm!380491 () Bool)

(declare-fun call!380496 () (InoxSet Context!8738))

(assert (=> bm!380491 (= call!380497 call!380496)))

(declare-fun b!5325766 () Bool)

(declare-fun e!3308356 () Bool)

(assert (=> b!5325766 (= c!925956 e!3308356)))

(declare-fun res!2258878 () Bool)

(assert (=> b!5325766 (=> (not res!2258878) (not e!3308356))))

(assert (=> b!5325766 (= res!2258878 ((_ is Concat!23830) (h!67578 (exprs!4869 lt!2172716))))))

(declare-fun e!3308357 () (InoxSet Context!8738))

(assert (=> b!5325766 (= e!3308355 e!3308357)))

(declare-fun b!5325767 () Bool)

(assert (=> b!5325767 (= e!3308353 call!380497)))

(declare-fun d!1710582 () Bool)

(declare-fun c!925954 () Bool)

(assert (=> d!1710582 (= c!925954 (and ((_ is ElementMatch!14985) (h!67578 (exprs!4869 lt!2172716))) (= (c!925355 (h!67578 (exprs!4869 lt!2172716))) (h!67579 s!2326))))))

(assert (=> d!1710582 (= (derivationStepZipperDown!433 (h!67578 (exprs!4869 lt!2172716)) (Context!8739 (t!374467 (exprs!4869 lt!2172716))) (h!67579 s!2326)) e!3308354)))

(declare-fun b!5325768 () Bool)

(assert (=> b!5325768 (= e!3308356 (nullable!5154 (regOne!30482 (h!67578 (exprs!4869 lt!2172716)))))))

(declare-fun b!5325769 () Bool)

(assert (=> b!5325769 (= e!3308357 ((_ map or) call!380493 call!380496))))

(declare-fun bm!380492 () Bool)

(assert (=> bm!380492 (= call!380496 call!380495)))

(declare-fun b!5325770 () Bool)

(assert (=> b!5325770 (= e!3308357 e!3308353)))

(assert (=> b!5325770 (= c!925955 ((_ is Concat!23830) (h!67578 (exprs!4869 lt!2172716))))))

(declare-fun b!5325771 () Bool)

(assert (=> b!5325771 (= e!3308354 e!3308355)))

(assert (=> b!5325771 (= c!925957 ((_ is Union!14985) (h!67578 (exprs!4869 lt!2172716))))))

(declare-fun b!5325772 () Bool)

(assert (=> b!5325772 (= e!3308358 ((as const (Array Context!8738 Bool)) false))))

(declare-fun bm!380493 () Bool)

(assert (=> bm!380493 (= call!380495 (derivationStepZipperDown!433 (ite c!925957 (regTwo!30483 (h!67578 (exprs!4869 lt!2172716))) (ite c!925956 (regTwo!30482 (h!67578 (exprs!4869 lt!2172716))) (ite c!925955 (regOne!30482 (h!67578 (exprs!4869 lt!2172716))) (reg!15314 (h!67578 (exprs!4869 lt!2172716)))))) (ite (or c!925957 c!925956) (Context!8739 (t!374467 (exprs!4869 lt!2172716))) (Context!8739 call!380498)) (h!67579 s!2326)))))

(assert (= (and d!1710582 c!925954) b!5325765))

(assert (= (and d!1710582 (not c!925954)) b!5325771))

(assert (= (and b!5325771 c!925957) b!5325762))

(assert (= (and b!5325771 (not c!925957)) b!5325766))

(assert (= (and b!5325766 res!2258878) b!5325768))

(assert (= (and b!5325766 c!925956) b!5325769))

(assert (= (and b!5325766 (not c!925956)) b!5325770))

(assert (= (and b!5325770 c!925955) b!5325767))

(assert (= (and b!5325770 (not c!925955)) b!5325764))

(assert (= (and b!5325764 c!925953) b!5325763))

(assert (= (and b!5325764 (not c!925953)) b!5325772))

(assert (= (or b!5325767 b!5325763) bm!380488))

(assert (= (or b!5325767 b!5325763) bm!380491))

(assert (= (or b!5325769 bm!380488) bm!380489))

(assert (= (or b!5325769 bm!380491) bm!380492))

(assert (= (or b!5325762 bm!380492) bm!380493))

(assert (= (or b!5325762 b!5325769) bm!380490))

(declare-fun m!6360028 () Bool)

(assert (=> bm!380493 m!6360028))

(declare-fun m!6360030 () Bool)

(assert (=> bm!380490 m!6360030))

(declare-fun m!6360032 () Bool)

(assert (=> b!5325768 m!6360032))

(declare-fun m!6360034 () Bool)

(assert (=> b!5325765 m!6360034))

(declare-fun m!6360036 () Bool)

(assert (=> bm!380489 m!6360036))

(assert (=> bm!380232 d!1710582))

(declare-fun b!5325773 () Bool)

(declare-fun e!3308361 () (InoxSet Context!8738))

(declare-fun call!380499 () (InoxSet Context!8738))

(declare-fun call!380501 () (InoxSet Context!8738))

(assert (=> b!5325773 (= e!3308361 ((_ map or) call!380499 call!380501))))

(declare-fun b!5325774 () Bool)

(declare-fun e!3308364 () (InoxSet Context!8738))

(declare-fun call!380503 () (InoxSet Context!8738))

(assert (=> b!5325774 (= e!3308364 call!380503)))

(declare-fun b!5325775 () Bool)

(declare-fun c!925958 () Bool)

(assert (=> b!5325775 (= c!925958 ((_ is Star!14985) (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))))))

(declare-fun e!3308359 () (InoxSet Context!8738))

(assert (=> b!5325775 (= e!3308359 e!3308364)))

(declare-fun b!5325776 () Bool)

(declare-fun e!3308360 () (InoxSet Context!8738))

(assert (=> b!5325776 (= e!3308360 (store ((as const (Array Context!8738 Bool)) false) (Context!8739 (t!374467 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))) true))))

(declare-fun bm!380494 () Bool)

(declare-fun call!380504 () List!61254)

(declare-fun call!380500 () List!61254)

(assert (=> bm!380494 (= call!380504 call!380500)))

(declare-fun c!925961 () Bool)

(declare-fun c!925960 () Bool)

(declare-fun bm!380495 () Bool)

(assert (=> bm!380495 (= call!380500 ($colon$colon!1398 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343))))))))) (ite (or c!925961 c!925960) (regTwo!30482 (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))) (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343))))))))))))

(declare-fun c!925962 () Bool)

(declare-fun bm!380496 () Bool)

(assert (=> bm!380496 (= call!380499 (derivationStepZipperDown!433 (ite c!925962 (regOne!30483 (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))) (regOne!30482 (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343))))))))) (ite c!925962 (Context!8739 (t!374467 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))) (Context!8739 call!380500)) (h!67579 s!2326)))))

(declare-fun bm!380497 () Bool)

(declare-fun call!380502 () (InoxSet Context!8738))

(assert (=> bm!380497 (= call!380503 call!380502)))

(declare-fun b!5325777 () Bool)

(declare-fun e!3308362 () Bool)

(assert (=> b!5325777 (= c!925961 e!3308362)))

(declare-fun res!2258879 () Bool)

(assert (=> b!5325777 (=> (not res!2258879) (not e!3308362))))

(assert (=> b!5325777 (= res!2258879 ((_ is Concat!23830) (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))))))

(declare-fun e!3308363 () (InoxSet Context!8738))

(assert (=> b!5325777 (= e!3308361 e!3308363)))

(declare-fun b!5325778 () Bool)

(assert (=> b!5325778 (= e!3308359 call!380503)))

(declare-fun d!1710584 () Bool)

(declare-fun c!925959 () Bool)

(assert (=> d!1710584 (= c!925959 (and ((_ is ElementMatch!14985) (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))) (= (c!925355 (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))) (h!67579 s!2326))))))

(assert (=> d!1710584 (= (derivationStepZipperDown!433 (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343))))))) (Context!8739 (t!374467 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))) (h!67579 s!2326)) e!3308360)))

(declare-fun b!5325779 () Bool)

(assert (=> b!5325779 (= e!3308362 (nullable!5154 (regOne!30482 (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343))))))))))))

(declare-fun b!5325780 () Bool)

(assert (=> b!5325780 (= e!3308363 ((_ map or) call!380499 call!380502))))

(declare-fun bm!380498 () Bool)

(assert (=> bm!380498 (= call!380502 call!380501)))

(declare-fun b!5325781 () Bool)

(assert (=> b!5325781 (= e!3308363 e!3308359)))

(assert (=> b!5325781 (= c!925960 ((_ is Concat!23830) (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))))))

(declare-fun b!5325782 () Bool)

(assert (=> b!5325782 (= e!3308360 e!3308361)))

(assert (=> b!5325782 (= c!925962 ((_ is Union!14985) (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))))))

(declare-fun b!5325783 () Bool)

(assert (=> b!5325783 (= e!3308364 ((as const (Array Context!8738 Bool)) false))))

(declare-fun bm!380499 () Bool)

(assert (=> bm!380499 (= call!380501 (derivationStepZipperDown!433 (ite c!925962 (regTwo!30483 (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))) (ite c!925961 (regTwo!30482 (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))) (ite c!925960 (regOne!30482 (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))) (reg!15314 (h!67578 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343))))))))))) (ite (or c!925962 c!925961) (Context!8739 (t!374467 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))) (Context!8739 call!380504)) (h!67579 s!2326)))))

(assert (= (and d!1710584 c!925959) b!5325776))

(assert (= (and d!1710584 (not c!925959)) b!5325782))

(assert (= (and b!5325782 c!925962) b!5325773))

(assert (= (and b!5325782 (not c!925962)) b!5325777))

(assert (= (and b!5325777 res!2258879) b!5325779))

(assert (= (and b!5325777 c!925961) b!5325780))

(assert (= (and b!5325777 (not c!925961)) b!5325781))

(assert (= (and b!5325781 c!925960) b!5325778))

(assert (= (and b!5325781 (not c!925960)) b!5325775))

(assert (= (and b!5325775 c!925958) b!5325774))

(assert (= (and b!5325775 (not c!925958)) b!5325783))

(assert (= (or b!5325778 b!5325774) bm!380494))

(assert (= (or b!5325778 b!5325774) bm!380497))

(assert (= (or b!5325780 bm!380494) bm!380495))

(assert (= (or b!5325780 bm!380497) bm!380498))

(assert (= (or b!5325773 bm!380498) bm!380499))

(assert (= (or b!5325773 b!5325780) bm!380496))

(declare-fun m!6360038 () Bool)

(assert (=> bm!380499 m!6360038))

(declare-fun m!6360040 () Bool)

(assert (=> bm!380496 m!6360040))

(declare-fun m!6360042 () Bool)

(assert (=> b!5325779 m!6360042))

(declare-fun m!6360044 () Bool)

(assert (=> b!5325776 m!6360044))

(declare-fun m!6360046 () Bool)

(assert (=> bm!380495 m!6360046))

(assert (=> bm!380233 d!1710584))

(declare-fun d!1710586 () Bool)

(assert (=> d!1710586 (= (nullable!5154 (regOne!30482 (regOne!30482 (regOne!30482 r!7292)))) (nullableFct!1500 (regOne!30482 (regOne!30482 (regOne!30482 r!7292)))))))

(declare-fun bs!1234570 () Bool)

(assert (= bs!1234570 d!1710586))

(declare-fun m!6360048 () Bool)

(assert (=> bs!1234570 m!6360048))

(assert (=> b!5324132 d!1710586))

(declare-fun d!1710588 () Bool)

(assert (=> d!1710588 (= (Exists!2166 lambda!271742) (choose!39862 lambda!271742))))

(declare-fun bs!1234571 () Bool)

(assert (= bs!1234571 d!1710588))

(declare-fun m!6360050 () Bool)

(assert (=> bs!1234571 m!6360050))

(assert (=> d!1709942 d!1710588))

(declare-fun d!1710590 () Bool)

(assert (=> d!1710590 (= (Exists!2166 lambda!271743) (choose!39862 lambda!271743))))

(declare-fun bs!1234572 () Bool)

(assert (= bs!1234572 d!1710590))

(declare-fun m!6360052 () Bool)

(assert (=> bs!1234572 m!6360052))

(assert (=> d!1709942 d!1710590))

(declare-fun bs!1234573 () Bool)

(declare-fun d!1710592 () Bool)

(assert (= bs!1234573 (and d!1710592 d!1710538)))

(declare-fun lambda!271869 () Int)

(assert (=> bs!1234573 (= lambda!271869 lambda!271863)))

(declare-fun bs!1234574 () Bool)

(assert (= bs!1234574 (and d!1710592 d!1709938)))

(assert (=> bs!1234574 (= lambda!271869 lambda!271737)))

(declare-fun bs!1234575 () Bool)

(assert (= bs!1234575 (and d!1710592 b!5325181)))

(assert (=> bs!1234575 (not (= lambda!271869 lambda!271812))))

(declare-fun bs!1234576 () Bool)

(assert (= bs!1234576 (and d!1710592 b!5325643)))

(assert (=> bs!1234576 (not (= lambda!271869 lambda!271854))))

(declare-fun bs!1234577 () Bool)

(assert (= bs!1234577 (and d!1710592 b!5324398)))

(assert (=> bs!1234577 (not (= lambda!271869 lambda!271760))))

(declare-fun bs!1234578 () Bool)

(assert (= bs!1234578 (and d!1710592 b!5324471)))

(assert (=> bs!1234578 (not (= lambda!271869 lambda!271764))))

(declare-fun bs!1234579 () Bool)

(assert (= bs!1234579 (and d!1710592 b!5325006)))

(assert (=> bs!1234579 (not (= lambda!271869 lambda!271802))))

(declare-fun bs!1234580 () Bool)

(assert (= bs!1234580 (and d!1710592 b!5325645)))

(assert (=> bs!1234580 (not (= lambda!271869 lambda!271855))))

(declare-fun bs!1234581 () Bool)

(assert (= bs!1234581 (and d!1710592 b!5324469)))

(assert (=> bs!1234581 (not (= lambda!271869 lambda!271763))))

(declare-fun bs!1234582 () Bool)

(assert (= bs!1234582 (and d!1710592 b!5323677)))

(assert (=> bs!1234582 (= lambda!271869 lambda!271670)))

(declare-fun bs!1234583 () Bool)

(assert (= bs!1234583 (and d!1710592 b!5325008)))

(assert (=> bs!1234583 (not (= lambda!271869 lambda!271804))))

(declare-fun bs!1234584 () Bool)

(assert (= bs!1234584 (and d!1710592 d!1709942)))

(assert (=> bs!1234584 (not (= lambda!271869 lambda!271743))))

(assert (=> bs!1234582 (not (= lambda!271869 lambda!271671))))

(declare-fun bs!1234585 () Bool)

(assert (= bs!1234585 (and d!1710592 b!5324400)))

(assert (=> bs!1234585 (not (= lambda!271869 lambda!271761))))

(declare-fun bs!1234586 () Bool)

(assert (= bs!1234586 (and d!1710592 b!5325183)))

(assert (=> bs!1234586 (not (= lambda!271869 lambda!271813))))

(assert (=> bs!1234584 (= lambda!271869 lambda!271742)))

(assert (=> d!1710592 true))

(assert (=> d!1710592 true))

(assert (=> d!1710592 true))

(declare-fun lambda!271870 () Int)

(assert (=> bs!1234573 (not (= lambda!271870 lambda!271863))))

(assert (=> bs!1234574 (not (= lambda!271870 lambda!271737))))

(assert (=> bs!1234575 (not (= lambda!271870 lambda!271812))))

(assert (=> bs!1234576 (not (= lambda!271870 lambda!271854))))

(assert (=> bs!1234577 (not (= lambda!271870 lambda!271760))))

(declare-fun bs!1234587 () Bool)

(assert (= bs!1234587 d!1710592))

(assert (=> bs!1234587 (not (= lambda!271870 lambda!271869))))

(assert (=> bs!1234578 (= lambda!271870 lambda!271764)))

(assert (=> bs!1234579 (not (= lambda!271870 lambda!271802))))

(assert (=> bs!1234580 (= (and (= (regOne!30482 r!7292) (regOne!30482 (regOne!30483 lt!2172700))) (= (regTwo!30482 r!7292) (regTwo!30482 (regOne!30483 lt!2172700)))) (= lambda!271870 lambda!271855))))

(assert (=> bs!1234581 (not (= lambda!271870 lambda!271763))))

(assert (=> bs!1234582 (not (= lambda!271870 lambda!271670))))

(assert (=> bs!1234583 (= (and (= (regOne!30482 r!7292) (regOne!30482 (regTwo!30483 r!7292))) (= (regTwo!30482 r!7292) (regTwo!30482 (regTwo!30483 r!7292)))) (= lambda!271870 lambda!271804))))

(assert (=> bs!1234584 (= lambda!271870 lambda!271743)))

(assert (=> bs!1234582 (= lambda!271870 lambda!271671)))

(assert (=> bs!1234585 (= (and (= (regOne!30482 r!7292) (regOne!30482 lt!2172700)) (= (regTwo!30482 r!7292) (regTwo!30482 lt!2172700))) (= lambda!271870 lambda!271761))))

(assert (=> bs!1234586 (= (and (= (regOne!30482 r!7292) (regOne!30482 (regTwo!30483 lt!2172700))) (= (regTwo!30482 r!7292) (regTwo!30482 (regTwo!30483 lt!2172700)))) (= lambda!271870 lambda!271813))))

(assert (=> bs!1234584 (not (= lambda!271870 lambda!271742))))

(assert (=> d!1710592 true))

(assert (=> d!1710592 true))

(assert (=> d!1710592 true))

(assert (=> d!1710592 (= (Exists!2166 lambda!271869) (Exists!2166 lambda!271870))))

(assert (=> d!1710592 true))

(declare-fun _$90!1152 () Unit!153458)

(assert (=> d!1710592 (= (choose!39864 (regOne!30482 r!7292) (regTwo!30482 r!7292) s!2326) _$90!1152)))

(declare-fun m!6360054 () Bool)

(assert (=> bs!1234587 m!6360054))

(declare-fun m!6360056 () Bool)

(assert (=> bs!1234587 m!6360056))

(assert (=> d!1709942 d!1710592))

(assert (=> d!1709942 d!1710296))

(assert (=> d!1709822 d!1710456))

(assert (=> b!5324036 d!1709822))

(declare-fun bs!1234588 () Bool)

(declare-fun d!1710594 () Bool)

(assert (= bs!1234588 (and d!1710594 d!1710388)))

(declare-fun lambda!271871 () Int)

(assert (=> bs!1234588 (not (= lambda!271871 lambda!271837))))

(declare-fun bs!1234589 () Bool)

(assert (= bs!1234589 (and d!1710594 b!5323994)))

(assert (=> bs!1234589 (not (= lambda!271871 lambda!271718))))

(declare-fun bs!1234590 () Bool)

(assert (= bs!1234590 (and d!1710594 b!5325445)))

(assert (=> bs!1234590 (not (= lambda!271871 lambda!271851))))

(declare-fun bs!1234591 () Bool)

(assert (= bs!1234591 (and d!1710594 b!5325443)))

(assert (=> bs!1234591 (not (= lambda!271871 lambda!271850))))

(declare-fun bs!1234592 () Bool)

(assert (= bs!1234592 (and d!1710594 d!1710534)))

(assert (=> bs!1234592 (= lambda!271871 lambda!271860)))

(declare-fun bs!1234593 () Bool)

(assert (= bs!1234593 (and d!1710594 b!5325372)))

(assert (=> bs!1234593 (not (= lambda!271871 lambda!271841))))

(declare-fun bs!1234594 () Bool)

(assert (= bs!1234594 (and d!1710594 b!5323992)))

(assert (=> bs!1234594 (not (= lambda!271871 lambda!271717))))

(declare-fun bs!1234595 () Bool)

(assert (= bs!1234595 (and d!1710594 d!1710356)))

(assert (=> bs!1234595 (= lambda!271871 lambda!271822)))

(declare-fun bs!1234596 () Bool)

(assert (= bs!1234596 (and d!1710594 d!1710454)))

(assert (=> bs!1234596 (= lambda!271871 lambda!271853)))

(declare-fun bs!1234597 () Bool)

(assert (= bs!1234597 (and d!1710594 b!5325370)))

(assert (=> bs!1234597 (not (= lambda!271871 lambda!271840))))

(declare-fun bs!1234598 () Bool)

(assert (= bs!1234598 (and d!1710594 b!5323978)))

(assert (=> bs!1234598 (not (= lambda!271871 lambda!271715))))

(declare-fun bs!1234599 () Bool)

(assert (= bs!1234599 (and d!1710594 d!1710204)))

(assert (=> bs!1234599 (= lambda!271871 lambda!271801)))

(declare-fun bs!1234600 () Bool)

(assert (= bs!1234600 (and d!1710594 d!1710446)))

(assert (=> bs!1234600 (not (= lambda!271871 lambda!271852))))

(declare-fun bs!1234601 () Bool)

(assert (= bs!1234601 (and d!1710594 b!5323976)))

(assert (=> bs!1234601 (not (= lambda!271871 lambda!271714))))

(declare-fun bs!1234602 () Bool)

(assert (= bs!1234602 (and d!1710594 d!1710412)))

(assert (=> bs!1234602 (= lambda!271871 lambda!271844)))

(assert (=> d!1710594 (= (nullableZipper!1348 lt!2172707) (exists!2013 lt!2172707 lambda!271871))))

(declare-fun bs!1234603 () Bool)

(assert (= bs!1234603 d!1710594))

(declare-fun m!6360058 () Bool)

(assert (=> bs!1234603 m!6360058))

(assert (=> b!5324454 d!1710594))

(assert (=> bs!1233828 d!1709956))

(declare-fun d!1710596 () Bool)

(assert (=> d!1710596 (= (isEmptyLang!891 lt!2172847) ((_ is EmptyLang!14985) lt!2172847))))

(assert (=> b!5324348 d!1710596))

(declare-fun bs!1234604 () Bool)

(declare-fun b!5325795 () Bool)

(assert (= bs!1234604 (and b!5325795 d!1710538)))

(declare-fun lambda!271872 () Int)

(assert (=> bs!1234604 (not (= lambda!271872 lambda!271863))))

(declare-fun bs!1234605 () Bool)

(assert (= bs!1234605 (and b!5325795 d!1709938)))

(assert (=> bs!1234605 (not (= lambda!271872 lambda!271737))))

(declare-fun bs!1234606 () Bool)

(assert (= bs!1234606 (and b!5325795 b!5325643)))

(assert (=> bs!1234606 (= (and (= (reg!15314 (regOne!30483 r!7292)) (reg!15314 (regOne!30483 lt!2172700))) (= (regOne!30483 r!7292) (regOne!30483 lt!2172700))) (= lambda!271872 lambda!271854))))

(declare-fun bs!1234607 () Bool)

(assert (= bs!1234607 (and b!5325795 b!5324398)))

(assert (=> bs!1234607 (= (and (= (reg!15314 (regOne!30483 r!7292)) (reg!15314 lt!2172700)) (= (regOne!30483 r!7292) lt!2172700)) (= lambda!271872 lambda!271760))))

(declare-fun bs!1234608 () Bool)

(assert (= bs!1234608 (and b!5325795 d!1710592)))

(assert (=> bs!1234608 (not (= lambda!271872 lambda!271869))))

(declare-fun bs!1234609 () Bool)

(assert (= bs!1234609 (and b!5325795 b!5324471)))

(assert (=> bs!1234609 (not (= lambda!271872 lambda!271764))))

(declare-fun bs!1234610 () Bool)

(assert (= bs!1234610 (and b!5325795 b!5325006)))

(assert (=> bs!1234610 (= (and (= (reg!15314 (regOne!30483 r!7292)) (reg!15314 (regTwo!30483 r!7292))) (= (regOne!30483 r!7292) (regTwo!30483 r!7292))) (= lambda!271872 lambda!271802))))

(declare-fun bs!1234611 () Bool)

(assert (= bs!1234611 (and b!5325795 b!5325645)))

(assert (=> bs!1234611 (not (= lambda!271872 lambda!271855))))

(declare-fun bs!1234612 () Bool)

(assert (= bs!1234612 (and b!5325795 b!5324469)))

(assert (=> bs!1234612 (= (and (= (reg!15314 (regOne!30483 r!7292)) (reg!15314 r!7292)) (= (regOne!30483 r!7292) r!7292)) (= lambda!271872 lambda!271763))))

(declare-fun bs!1234613 () Bool)

(assert (= bs!1234613 (and b!5325795 b!5323677)))

(assert (=> bs!1234613 (not (= lambda!271872 lambda!271670))))

(declare-fun bs!1234614 () Bool)

(assert (= bs!1234614 (and b!5325795 b!5325008)))

(assert (=> bs!1234614 (not (= lambda!271872 lambda!271804))))

(declare-fun bs!1234615 () Bool)

(assert (= bs!1234615 (and b!5325795 b!5325181)))

(assert (=> bs!1234615 (= (and (= (reg!15314 (regOne!30483 r!7292)) (reg!15314 (regTwo!30483 lt!2172700))) (= (regOne!30483 r!7292) (regTwo!30483 lt!2172700))) (= lambda!271872 lambda!271812))))

(assert (=> bs!1234608 (not (= lambda!271872 lambda!271870))))

(declare-fun bs!1234616 () Bool)

(assert (= bs!1234616 (and b!5325795 d!1709942)))

(assert (=> bs!1234616 (not (= lambda!271872 lambda!271743))))

(assert (=> bs!1234613 (not (= lambda!271872 lambda!271671))))

(declare-fun bs!1234617 () Bool)

(assert (= bs!1234617 (and b!5325795 b!5324400)))

(assert (=> bs!1234617 (not (= lambda!271872 lambda!271761))))

(declare-fun bs!1234618 () Bool)

(assert (= bs!1234618 (and b!5325795 b!5325183)))

(assert (=> bs!1234618 (not (= lambda!271872 lambda!271813))))

(assert (=> bs!1234616 (not (= lambda!271872 lambda!271742))))

(assert (=> b!5325795 true))

(assert (=> b!5325795 true))

(declare-fun bs!1234619 () Bool)

(declare-fun b!5325797 () Bool)

(assert (= bs!1234619 (and b!5325797 d!1710538)))

(declare-fun lambda!271873 () Int)

(assert (=> bs!1234619 (not (= lambda!271873 lambda!271863))))

(declare-fun bs!1234620 () Bool)

(assert (= bs!1234620 (and b!5325797 d!1709938)))

(assert (=> bs!1234620 (not (= lambda!271873 lambda!271737))))

(declare-fun bs!1234621 () Bool)

(assert (= bs!1234621 (and b!5325797 b!5325643)))

(assert (=> bs!1234621 (not (= lambda!271873 lambda!271854))))

(declare-fun bs!1234622 () Bool)

(assert (= bs!1234622 (and b!5325797 b!5324398)))

(assert (=> bs!1234622 (not (= lambda!271873 lambda!271760))))

(declare-fun bs!1234623 () Bool)

(assert (= bs!1234623 (and b!5325797 d!1710592)))

(assert (=> bs!1234623 (not (= lambda!271873 lambda!271869))))

(declare-fun bs!1234624 () Bool)

(assert (= bs!1234624 (and b!5325797 b!5324471)))

(assert (=> bs!1234624 (= (and (= (regOne!30482 (regOne!30483 r!7292)) (regOne!30482 r!7292)) (= (regTwo!30482 (regOne!30483 r!7292)) (regTwo!30482 r!7292))) (= lambda!271873 lambda!271764))))

(declare-fun bs!1234625 () Bool)

(assert (= bs!1234625 (and b!5325797 b!5325795)))

(assert (=> bs!1234625 (not (= lambda!271873 lambda!271872))))

(declare-fun bs!1234626 () Bool)

(assert (= bs!1234626 (and b!5325797 b!5325006)))

(assert (=> bs!1234626 (not (= lambda!271873 lambda!271802))))

(declare-fun bs!1234627 () Bool)

(assert (= bs!1234627 (and b!5325797 b!5325645)))

(assert (=> bs!1234627 (= (and (= (regOne!30482 (regOne!30483 r!7292)) (regOne!30482 (regOne!30483 lt!2172700))) (= (regTwo!30482 (regOne!30483 r!7292)) (regTwo!30482 (regOne!30483 lt!2172700)))) (= lambda!271873 lambda!271855))))

(declare-fun bs!1234628 () Bool)

(assert (= bs!1234628 (and b!5325797 b!5324469)))

(assert (=> bs!1234628 (not (= lambda!271873 lambda!271763))))

(declare-fun bs!1234629 () Bool)

(assert (= bs!1234629 (and b!5325797 b!5323677)))

(assert (=> bs!1234629 (not (= lambda!271873 lambda!271670))))

(declare-fun bs!1234630 () Bool)

(assert (= bs!1234630 (and b!5325797 b!5325008)))

(assert (=> bs!1234630 (= (and (= (regOne!30482 (regOne!30483 r!7292)) (regOne!30482 (regTwo!30483 r!7292))) (= (regTwo!30482 (regOne!30483 r!7292)) (regTwo!30482 (regTwo!30483 r!7292)))) (= lambda!271873 lambda!271804))))

(declare-fun bs!1234631 () Bool)

(assert (= bs!1234631 (and b!5325797 b!5325181)))

(assert (=> bs!1234631 (not (= lambda!271873 lambda!271812))))

(assert (=> bs!1234623 (= (and (= (regOne!30482 (regOne!30483 r!7292)) (regOne!30482 r!7292)) (= (regTwo!30482 (regOne!30483 r!7292)) (regTwo!30482 r!7292))) (= lambda!271873 lambda!271870))))

(declare-fun bs!1234632 () Bool)

(assert (= bs!1234632 (and b!5325797 d!1709942)))

(assert (=> bs!1234632 (= (and (= (regOne!30482 (regOne!30483 r!7292)) (regOne!30482 r!7292)) (= (regTwo!30482 (regOne!30483 r!7292)) (regTwo!30482 r!7292))) (= lambda!271873 lambda!271743))))

(assert (=> bs!1234629 (= (and (= (regOne!30482 (regOne!30483 r!7292)) (regOne!30482 r!7292)) (= (regTwo!30482 (regOne!30483 r!7292)) (regTwo!30482 r!7292))) (= lambda!271873 lambda!271671))))

(declare-fun bs!1234633 () Bool)

(assert (= bs!1234633 (and b!5325797 b!5324400)))

(assert (=> bs!1234633 (= (and (= (regOne!30482 (regOne!30483 r!7292)) (regOne!30482 lt!2172700)) (= (regTwo!30482 (regOne!30483 r!7292)) (regTwo!30482 lt!2172700))) (= lambda!271873 lambda!271761))))

(declare-fun bs!1234634 () Bool)

(assert (= bs!1234634 (and b!5325797 b!5325183)))

(assert (=> bs!1234634 (= (and (= (regOne!30482 (regOne!30483 r!7292)) (regOne!30482 (regTwo!30483 lt!2172700))) (= (regTwo!30482 (regOne!30483 r!7292)) (regTwo!30482 (regTwo!30483 lt!2172700)))) (= lambda!271873 lambda!271813))))

(assert (=> bs!1234632 (not (= lambda!271873 lambda!271742))))

(assert (=> b!5325797 true))

(assert (=> b!5325797 true))

(declare-fun b!5325792 () Bool)

(declare-fun e!3308370 () Bool)

(declare-fun e!3308373 () Bool)

(assert (=> b!5325792 (= e!3308370 e!3308373)))

(declare-fun c!925966 () Bool)

(assert (=> b!5325792 (= c!925966 ((_ is Star!14985) (regOne!30483 r!7292)))))

(declare-fun b!5325793 () Bool)

(declare-fun e!3308375 () Bool)

(assert (=> b!5325793 (= e!3308375 (= s!2326 (Cons!61131 (c!925355 (regOne!30483 r!7292)) Nil!61131)))))

(declare-fun b!5325794 () Bool)

(declare-fun e!3308372 () Bool)

(declare-fun call!380506 () Bool)

(assert (=> b!5325794 (= e!3308372 call!380506)))

(declare-fun e!3308371 () Bool)

(declare-fun call!380505 () Bool)

(assert (=> b!5325795 (= e!3308371 call!380505)))

(declare-fun b!5325796 () Bool)

(declare-fun res!2258890 () Bool)

(assert (=> b!5325796 (=> res!2258890 e!3308371)))

(assert (=> b!5325796 (= res!2258890 call!380506)))

(assert (=> b!5325796 (= e!3308373 e!3308371)))

(assert (=> b!5325797 (= e!3308373 call!380505)))

(declare-fun d!1710598 () Bool)

(declare-fun c!925963 () Bool)

(assert (=> d!1710598 (= c!925963 ((_ is EmptyExpr!14985) (regOne!30483 r!7292)))))

(assert (=> d!1710598 (= (matchRSpec!2088 (regOne!30483 r!7292) s!2326) e!3308372)))

(declare-fun bm!380500 () Bool)

(assert (=> bm!380500 (= call!380506 (isEmpty!33103 s!2326))))

(declare-fun b!5325798 () Bool)

(declare-fun e!3308374 () Bool)

(assert (=> b!5325798 (= e!3308370 e!3308374)))

(declare-fun res!2258889 () Bool)

(assert (=> b!5325798 (= res!2258889 (matchRSpec!2088 (regOne!30483 (regOne!30483 r!7292)) s!2326))))

(assert (=> b!5325798 (=> res!2258889 e!3308374)))

(declare-fun b!5325799 () Bool)

(declare-fun c!925965 () Bool)

(assert (=> b!5325799 (= c!925965 ((_ is Union!14985) (regOne!30483 r!7292)))))

(assert (=> b!5325799 (= e!3308375 e!3308370)))

(declare-fun b!5325800 () Bool)

(declare-fun e!3308369 () Bool)

(assert (=> b!5325800 (= e!3308372 e!3308369)))

(declare-fun res!2258888 () Bool)

(assert (=> b!5325800 (= res!2258888 (not ((_ is EmptyLang!14985) (regOne!30483 r!7292))))))

(assert (=> b!5325800 (=> (not res!2258888) (not e!3308369))))

(declare-fun bm!380501 () Bool)

(assert (=> bm!380501 (= call!380505 (Exists!2166 (ite c!925966 lambda!271872 lambda!271873)))))

(declare-fun b!5325801 () Bool)

(declare-fun c!925964 () Bool)

(assert (=> b!5325801 (= c!925964 ((_ is ElementMatch!14985) (regOne!30483 r!7292)))))

(assert (=> b!5325801 (= e!3308369 e!3308375)))

(declare-fun b!5325802 () Bool)

(assert (=> b!5325802 (= e!3308374 (matchRSpec!2088 (regTwo!30483 (regOne!30483 r!7292)) s!2326))))

(assert (= (and d!1710598 c!925963) b!5325794))

(assert (= (and d!1710598 (not c!925963)) b!5325800))

(assert (= (and b!5325800 res!2258888) b!5325801))

(assert (= (and b!5325801 c!925964) b!5325793))

(assert (= (and b!5325801 (not c!925964)) b!5325799))

(assert (= (and b!5325799 c!925965) b!5325798))

(assert (= (and b!5325799 (not c!925965)) b!5325792))

(assert (= (and b!5325798 (not res!2258889)) b!5325802))

(assert (= (and b!5325792 c!925966) b!5325796))

(assert (= (and b!5325792 (not c!925966)) b!5325797))

(assert (= (and b!5325796 (not res!2258890)) b!5325795))

(assert (= (or b!5325795 b!5325797) bm!380501))

(assert (= (or b!5325794 b!5325796) bm!380500))

(assert (=> bm!380500 m!6358744))

(declare-fun m!6360060 () Bool)

(assert (=> b!5325798 m!6360060))

(declare-fun m!6360062 () Bool)

(assert (=> bm!380501 m!6360062))

(declare-fun m!6360064 () Bool)

(assert (=> b!5325802 m!6360064))

(assert (=> b!5324472 d!1710598))

(declare-fun d!1710600 () Bool)

(assert (=> d!1710600 true))

(declare-fun setRes!34304 () Bool)

(assert (=> d!1710600 setRes!34304))

(declare-fun condSetEmpty!34304 () Bool)

(declare-fun res!2258891 () (InoxSet Context!8738))

(assert (=> d!1710600 (= condSetEmpty!34304 (= res!2258891 ((as const (Array Context!8738 Bool)) false)))))

(assert (=> d!1710600 (= (choose!39861 z!1189 lambda!271672) res!2258891)))

(declare-fun setIsEmpty!34304 () Bool)

(assert (=> setIsEmpty!34304 setRes!34304))

(declare-fun tp!1482569 () Bool)

(declare-fun setNonEmpty!34304 () Bool)

(declare-fun setElem!34304 () Context!8738)

(declare-fun e!3308376 () Bool)

(assert (=> setNonEmpty!34304 (= setRes!34304 (and tp!1482569 (inv!80709 setElem!34304) e!3308376))))

(declare-fun setRest!34304 () (InoxSet Context!8738))

(assert (=> setNonEmpty!34304 (= res!2258891 ((_ map or) (store ((as const (Array Context!8738 Bool)) false) setElem!34304 true) setRest!34304))))

(declare-fun b!5325803 () Bool)

(declare-fun tp!1482568 () Bool)

(assert (=> b!5325803 (= e!3308376 tp!1482568)))

(assert (= (and d!1710600 condSetEmpty!34304) setIsEmpty!34304))

(assert (= (and d!1710600 (not condSetEmpty!34304)) setNonEmpty!34304))

(assert (= setNonEmpty!34304 b!5325803))

(declare-fun m!6360066 () Bool)

(assert (=> setNonEmpty!34304 m!6360066))

(assert (=> d!1709914 d!1710600))

(assert (=> d!1709980 d!1709978))

(assert (=> d!1709980 d!1709974))

(declare-fun d!1710602 () Bool)

(assert (=> d!1710602 (= (matchR!7170 lt!2172700 s!2326) (matchRSpec!2088 lt!2172700 s!2326))))

(assert (=> d!1710602 true))

(declare-fun _$88!3628 () Unit!153458)

(assert (=> d!1710602 (= (choose!39867 lt!2172700 s!2326) _$88!3628)))

(declare-fun bs!1234635 () Bool)

(assert (= bs!1234635 d!1710602))

(assert (=> bs!1234635 m!6358118))

(assert (=> bs!1234635 m!6358112))

(assert (=> d!1709980 d!1710602))

(assert (=> d!1709980 d!1710304))

(assert (=> d!1709958 d!1709954))

(declare-fun d!1710604 () Bool)

(assert (=> d!1710604 (= (flatMap!712 lt!2172707 lambda!271672) (dynLambda!24167 lambda!271672 lt!2172701))))

(assert (=> d!1710604 true))

(declare-fun _$13!1906 () Unit!153458)

(assert (=> d!1710604 (= (choose!39859 lt!2172707 lt!2172701 lambda!271672) _$13!1906)))

(declare-fun b_lambda!204875 () Bool)

(assert (=> (not b_lambda!204875) (not d!1710604)))

(declare-fun bs!1234636 () Bool)

(assert (= bs!1234636 d!1710604))

(assert (=> bs!1234636 m!6358126))

(assert (=> bs!1234636 m!6358706))

(assert (=> d!1709958 d!1710604))

(assert (=> b!5324441 d!1710270))

(assert (=> d!1709880 d!1710456))

(declare-fun d!1710606 () Bool)

(declare-fun res!2258892 () Bool)

(declare-fun e!3308377 () Bool)

(assert (=> d!1710606 (=> res!2258892 e!3308377)))

(assert (=> d!1710606 (= res!2258892 ((_ is Nil!61130) (exprs!4869 (h!67580 zl!343))))))

(assert (=> d!1710606 (= (forall!14403 (exprs!4869 (h!67580 zl!343)) lambda!271746) e!3308377)))

(declare-fun b!5325804 () Bool)

(declare-fun e!3308378 () Bool)

(assert (=> b!5325804 (= e!3308377 e!3308378)))

(declare-fun res!2258893 () Bool)

(assert (=> b!5325804 (=> (not res!2258893) (not e!3308378))))

(assert (=> b!5325804 (= res!2258893 (dynLambda!24169 lambda!271746 (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun b!5325805 () Bool)

(assert (=> b!5325805 (= e!3308378 (forall!14403 (t!374467 (exprs!4869 (h!67580 zl!343))) lambda!271746))))

(assert (= (and d!1710606 (not res!2258892)) b!5325804))

(assert (= (and b!5325804 res!2258893) b!5325805))

(declare-fun b_lambda!204877 () Bool)

(assert (=> (not b_lambda!204877) (not b!5325804)))

(declare-fun m!6360068 () Bool)

(assert (=> b!5325804 m!6360068))

(declare-fun m!6360070 () Bool)

(assert (=> b!5325805 m!6360070))

(assert (=> d!1709946 d!1710606))

(declare-fun d!1710608 () Bool)

(assert (=> d!1710608 (= (nullable!5154 (reg!15314 r!7292)) (nullableFct!1500 (reg!15314 r!7292)))))

(declare-fun bs!1234637 () Bool)

(assert (= bs!1234637 d!1710608))

(declare-fun m!6360072 () Bool)

(assert (=> bs!1234637 m!6360072))

(assert (=> b!5324524 d!1710608))

(declare-fun b!5325807 () Bool)

(declare-fun e!3308380 () Bool)

(assert (=> b!5325807 (= e!3308380 (nullable!5154 (regTwo!30482 r!7292)))))

(declare-fun b!5325808 () Bool)

(declare-fun e!3308381 () Bool)

(assert (=> b!5325808 (= e!3308381 (not (= (head!11414 (_2!35487 (get!21026 lt!2172830))) (c!925355 (regTwo!30482 r!7292)))))))

(declare-fun b!5325809 () Bool)

(declare-fun e!3308385 () Bool)

(declare-fun lt!2172986 () Bool)

(assert (=> b!5325809 (= e!3308385 (not lt!2172986))))

(declare-fun b!5325810 () Bool)

(declare-fun e!3308383 () Bool)

(declare-fun e!3308379 () Bool)

(assert (=> b!5325810 (= e!3308383 e!3308379)))

(declare-fun res!2258899 () Bool)

(assert (=> b!5325810 (=> (not res!2258899) (not e!3308379))))

(assert (=> b!5325810 (= res!2258899 (not lt!2172986))))

(declare-fun b!5325811 () Bool)

(declare-fun res!2258898 () Bool)

(declare-fun e!3308382 () Bool)

(assert (=> b!5325811 (=> (not res!2258898) (not e!3308382))))

(assert (=> b!5325811 (= res!2258898 (isEmpty!33103 (tail!10511 (_2!35487 (get!21026 lt!2172830)))))))

(declare-fun b!5325812 () Bool)

(declare-fun res!2258900 () Bool)

(assert (=> b!5325812 (=> res!2258900 e!3308383)))

(assert (=> b!5325812 (= res!2258900 (not ((_ is ElementMatch!14985) (regTwo!30482 r!7292))))))

(assert (=> b!5325812 (= e!3308385 e!3308383)))

(declare-fun b!5325813 () Bool)

(assert (=> b!5325813 (= e!3308382 (= (head!11414 (_2!35487 (get!21026 lt!2172830))) (c!925355 (regTwo!30482 r!7292))))))

(declare-fun b!5325814 () Bool)

(assert (=> b!5325814 (= e!3308379 e!3308381)))

(declare-fun res!2258901 () Bool)

(assert (=> b!5325814 (=> res!2258901 e!3308381)))

(declare-fun call!380507 () Bool)

(assert (=> b!5325814 (= res!2258901 call!380507)))

(declare-fun bm!380502 () Bool)

(assert (=> bm!380502 (= call!380507 (isEmpty!33103 (_2!35487 (get!21026 lt!2172830))))))

(declare-fun b!5325815 () Bool)

(declare-fun res!2258896 () Bool)

(assert (=> b!5325815 (=> res!2258896 e!3308381)))

(assert (=> b!5325815 (= res!2258896 (not (isEmpty!33103 (tail!10511 (_2!35487 (get!21026 lt!2172830))))))))

(declare-fun d!1710610 () Bool)

(declare-fun e!3308384 () Bool)

(assert (=> d!1710610 e!3308384))

(declare-fun c!925969 () Bool)

(assert (=> d!1710610 (= c!925969 ((_ is EmptyExpr!14985) (regTwo!30482 r!7292)))))

(assert (=> d!1710610 (= lt!2172986 e!3308380)))

(declare-fun c!925968 () Bool)

(assert (=> d!1710610 (= c!925968 (isEmpty!33103 (_2!35487 (get!21026 lt!2172830))))))

(assert (=> d!1710610 (validRegex!6721 (regTwo!30482 r!7292))))

(assert (=> d!1710610 (= (matchR!7170 (regTwo!30482 r!7292) (_2!35487 (get!21026 lt!2172830))) lt!2172986)))

(declare-fun b!5325806 () Bool)

(declare-fun res!2258897 () Bool)

(assert (=> b!5325806 (=> (not res!2258897) (not e!3308382))))

(assert (=> b!5325806 (= res!2258897 (not call!380507))))

(declare-fun b!5325816 () Bool)

(assert (=> b!5325816 (= e!3308384 e!3308385)))

(declare-fun c!925967 () Bool)

(assert (=> b!5325816 (= c!925967 ((_ is EmptyLang!14985) (regTwo!30482 r!7292)))))

(declare-fun b!5325817 () Bool)

(assert (=> b!5325817 (= e!3308384 (= lt!2172986 call!380507))))

(declare-fun b!5325818 () Bool)

(declare-fun res!2258895 () Bool)

(assert (=> b!5325818 (=> res!2258895 e!3308383)))

(assert (=> b!5325818 (= res!2258895 e!3308382)))

(declare-fun res!2258894 () Bool)

(assert (=> b!5325818 (=> (not res!2258894) (not e!3308382))))

(assert (=> b!5325818 (= res!2258894 lt!2172986)))

(declare-fun b!5325819 () Bool)

(assert (=> b!5325819 (= e!3308380 (matchR!7170 (derivativeStep!4169 (regTwo!30482 r!7292) (head!11414 (_2!35487 (get!21026 lt!2172830)))) (tail!10511 (_2!35487 (get!21026 lt!2172830)))))))

(assert (= (and d!1710610 c!925968) b!5325807))

(assert (= (and d!1710610 (not c!925968)) b!5325819))

(assert (= (and d!1710610 c!925969) b!5325817))

(assert (= (and d!1710610 (not c!925969)) b!5325816))

(assert (= (and b!5325816 c!925967) b!5325809))

(assert (= (and b!5325816 (not c!925967)) b!5325812))

(assert (= (and b!5325812 (not res!2258900)) b!5325818))

(assert (= (and b!5325818 res!2258894) b!5325806))

(assert (= (and b!5325806 res!2258897) b!5325811))

(assert (= (and b!5325811 res!2258898) b!5325813))

(assert (= (and b!5325818 (not res!2258895)) b!5325810))

(assert (= (and b!5325810 res!2258899) b!5325814))

(assert (= (and b!5325814 (not res!2258901)) b!5325815))

(assert (= (and b!5325815 (not res!2258896)) b!5325808))

(assert (= (or b!5325817 b!5325806 b!5325814) bm!380502))

(declare-fun m!6360074 () Bool)

(assert (=> bm!380502 m!6360074))

(declare-fun m!6360076 () Bool)

(assert (=> b!5325808 m!6360076))

(assert (=> d!1710610 m!6360074))

(declare-fun m!6360078 () Bool)

(assert (=> d!1710610 m!6360078))

(assert (=> b!5325813 m!6360076))

(declare-fun m!6360080 () Bool)

(assert (=> b!5325811 m!6360080))

(assert (=> b!5325811 m!6360080))

(declare-fun m!6360082 () Bool)

(assert (=> b!5325811 m!6360082))

(declare-fun m!6360084 () Bool)

(assert (=> b!5325807 m!6360084))

(assert (=> b!5325815 m!6360080))

(assert (=> b!5325815 m!6360080))

(assert (=> b!5325815 m!6360082))

(assert (=> b!5325819 m!6360076))

(assert (=> b!5325819 m!6360076))

(declare-fun m!6360086 () Bool)

(assert (=> b!5325819 m!6360086))

(assert (=> b!5325819 m!6360080))

(assert (=> b!5325819 m!6360086))

(assert (=> b!5325819 m!6360080))

(declare-fun m!6360088 () Bool)

(assert (=> b!5325819 m!6360088))

(assert (=> b!5324289 d!1710610))

(assert (=> b!5324289 d!1710222))

(declare-fun b!5325820 () Bool)

(declare-fun e!3308386 () (InoxSet Context!8738))

(assert (=> b!5325820 (= e!3308386 ((as const (Array Context!8738 Bool)) false))))

(declare-fun b!5325821 () Bool)

(declare-fun call!380508 () (InoxSet Context!8738))

(assert (=> b!5325821 (= e!3308386 call!380508)))

(declare-fun d!1710612 () Bool)

(declare-fun c!925971 () Bool)

(declare-fun e!3308387 () Bool)

(assert (=> d!1710612 (= c!925971 e!3308387)))

(declare-fun res!2258902 () Bool)

(assert (=> d!1710612 (=> (not res!2258902) (not e!3308387))))

(assert (=> d!1710612 (= res!2258902 ((_ is Cons!61130) (exprs!4869 (Context!8739 (t!374467 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))))))))

(declare-fun e!3308388 () (InoxSet Context!8738))

(assert (=> d!1710612 (= (derivationStepZipperUp!357 (Context!8739 (t!374467 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))) (h!67579 s!2326)) e!3308388)))

(declare-fun b!5325822 () Bool)

(assert (=> b!5325822 (= e!3308388 e!3308386)))

(declare-fun c!925970 () Bool)

(assert (=> b!5325822 (= c!925970 ((_ is Cons!61130) (exprs!4869 (Context!8739 (t!374467 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))))))))

(declare-fun b!5325823 () Bool)

(assert (=> b!5325823 (= e!3308388 ((_ map or) call!380508 (derivationStepZipperUp!357 (Context!8739 (t!374467 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343))))))))))) (h!67579 s!2326))))))

(declare-fun bm!380503 () Bool)

(assert (=> bm!380503 (= call!380508 (derivationStepZipperDown!433 (h!67578 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343)))))))))) (Context!8739 (t!374467 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343))))))))))) (h!67579 s!2326)))))

(declare-fun b!5325824 () Bool)

(assert (=> b!5325824 (= e!3308387 (nullable!5154 (h!67578 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 (Context!8739 (Cons!61130 (h!67578 (exprs!4869 (h!67580 zl!343))) (t!374467 (exprs!4869 (h!67580 zl!343))))))))))))))

(assert (= (and d!1710612 res!2258902) b!5325824))

(assert (= (and d!1710612 c!925971) b!5325823))

(assert (= (and d!1710612 (not c!925971)) b!5325822))

(assert (= (and b!5325822 c!925970) b!5325821))

(assert (= (and b!5325822 (not c!925970)) b!5325820))

(assert (= (or b!5325823 b!5325821) bm!380503))

(declare-fun m!6360090 () Bool)

(assert (=> b!5325823 m!6360090))

(declare-fun m!6360092 () Bool)

(assert (=> bm!380503 m!6360092))

(declare-fun m!6360094 () Bool)

(assert (=> b!5325824 m!6360094))

(assert (=> b!5324267 d!1710612))

(declare-fun b!5325825 () Bool)

(declare-fun e!3308389 () Int)

(declare-fun call!380511 () Int)

(assert (=> b!5325825 (= e!3308389 (+ 1 call!380511))))

(declare-fun b!5325826 () Bool)

(declare-fun e!3308391 () Int)

(assert (=> b!5325826 (= e!3308391 1)))

(declare-fun b!5325827 () Bool)

(declare-fun e!3308390 () Int)

(declare-fun e!3308392 () Int)

(assert (=> b!5325827 (= e!3308390 e!3308392)))

(declare-fun c!925974 () Bool)

(assert (=> b!5325827 (= c!925974 ((_ is Concat!23830) (h!67578 (exprs!4869 lt!2172701))))))

(declare-fun bm!380505 () Bool)

(declare-fun call!380509 () Int)

(assert (=> bm!380505 (= call!380509 call!380511)))

(declare-fun b!5325828 () Bool)

(declare-fun c!925975 () Bool)

(assert (=> b!5325828 (= c!925975 ((_ is Union!14985) (h!67578 (exprs!4869 lt!2172701))))))

(assert (=> b!5325828 (= e!3308389 e!3308390)))

(declare-fun b!5325829 () Bool)

(assert (=> b!5325829 (= e!3308391 e!3308389)))

(declare-fun c!925973 () Bool)

(assert (=> b!5325829 (= c!925973 ((_ is Star!14985) (h!67578 (exprs!4869 lt!2172701))))))

(declare-fun b!5325830 () Bool)

(declare-fun call!380510 () Int)

(assert (=> b!5325830 (= e!3308390 (+ 1 call!380509 call!380510))))

(declare-fun b!5325831 () Bool)

(assert (=> b!5325831 (= e!3308392 (+ 1 call!380509 call!380510))))

(declare-fun b!5325832 () Bool)

(assert (=> b!5325832 (= e!3308392 1)))

(declare-fun bm!380506 () Bool)

(assert (=> bm!380506 (= call!380510 (regexDepthTotal!53 (ite c!925975 (regTwo!30483 (h!67578 (exprs!4869 lt!2172701))) (regTwo!30482 (h!67578 (exprs!4869 lt!2172701))))))))

(declare-fun d!1710614 () Bool)

(declare-fun lt!2172987 () Int)

(assert (=> d!1710614 (> lt!2172987 0)))

(assert (=> d!1710614 (= lt!2172987 e!3308391)))

(declare-fun c!925972 () Bool)

(assert (=> d!1710614 (= c!925972 ((_ is ElementMatch!14985) (h!67578 (exprs!4869 lt!2172701))))))

(assert (=> d!1710614 (= (regexDepthTotal!53 (h!67578 (exprs!4869 lt!2172701))) lt!2172987)))

(declare-fun bm!380504 () Bool)

(assert (=> bm!380504 (= call!380511 (regexDepthTotal!53 (ite c!925973 (reg!15314 (h!67578 (exprs!4869 lt!2172701))) (ite c!925975 (regOne!30483 (h!67578 (exprs!4869 lt!2172701))) (regOne!30482 (h!67578 (exprs!4869 lt!2172701)))))))))

(assert (= (and d!1710614 c!925972) b!5325826))

(assert (= (and d!1710614 (not c!925972)) b!5325829))

(assert (= (and b!5325829 c!925973) b!5325825))

(assert (= (and b!5325829 (not c!925973)) b!5325828))

(assert (= (and b!5325828 c!925975) b!5325830))

(assert (= (and b!5325828 (not c!925975)) b!5325827))

(assert (= (and b!5325827 c!925974) b!5325831))

(assert (= (and b!5325827 (not c!925974)) b!5325832))

(assert (= (or b!5325830 b!5325831) bm!380506))

(assert (= (or b!5325830 b!5325831) bm!380505))

(assert (= (or b!5325825 bm!380505) bm!380504))

(declare-fun m!6360096 () Bool)

(assert (=> bm!380506 m!6360096))

(declare-fun m!6360098 () Bool)

(assert (=> bm!380504 m!6360098))

(assert (=> b!5324495 d!1710614))

(declare-fun d!1710616 () Bool)

(declare-fun lt!2172988 () Int)

(assert (=> d!1710616 (>= lt!2172988 0)))

(declare-fun e!3308393 () Int)

(assert (=> d!1710616 (= lt!2172988 e!3308393)))

(declare-fun c!925976 () Bool)

(assert (=> d!1710616 (= c!925976 ((_ is Cons!61130) (exprs!4869 (Context!8739 (t!374467 (exprs!4869 lt!2172701))))))))

(assert (=> d!1710616 (= (contextDepthTotal!118 (Context!8739 (t!374467 (exprs!4869 lt!2172701)))) lt!2172988)))

(declare-fun b!5325833 () Bool)

(assert (=> b!5325833 (= e!3308393 (+ (regexDepthTotal!53 (h!67578 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 lt!2172701)))))) (contextDepthTotal!118 (Context!8739 (t!374467 (exprs!4869 (Context!8739 (t!374467 (exprs!4869 lt!2172701)))))))))))

(declare-fun b!5325834 () Bool)

(assert (=> b!5325834 (= e!3308393 1)))

(assert (= (and d!1710616 c!925976) b!5325833))

(assert (= (and d!1710616 (not c!925976)) b!5325834))

(declare-fun m!6360100 () Bool)

(assert (=> b!5325833 m!6360100))

(declare-fun m!6360102 () Bool)

(assert (=> b!5325833 m!6360102))

(assert (=> b!5324495 d!1710616))

(declare-fun b!5325835 () Bool)

(declare-fun e!3308396 () (InoxSet Context!8738))

(declare-fun call!380512 () (InoxSet Context!8738))

(declare-fun call!380514 () (InoxSet Context!8738))

(assert (=> b!5325835 (= e!3308396 ((_ map or) call!380512 call!380514))))

(declare-fun b!5325836 () Bool)

(declare-fun e!3308399 () (InoxSet Context!8738))

(declare-fun call!380516 () (InoxSet Context!8738))

(assert (=> b!5325836 (= e!3308399 call!380516)))

(declare-fun c!925977 () Bool)

(declare-fun b!5325837 () Bool)

(assert (=> b!5325837 (= c!925977 ((_ is Star!14985) (ite c!925526 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925525 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925524 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343)))))))))))

(declare-fun e!3308394 () (InoxSet Context!8738))

(assert (=> b!5325837 (= e!3308394 e!3308399)))

(declare-fun b!5325838 () Bool)

(declare-fun e!3308395 () (InoxSet Context!8738))

(assert (=> b!5325838 (= e!3308395 (store ((as const (Array Context!8738 Bool)) false) (ite (or c!925526 c!925525) lt!2172716 (Context!8739 call!380233)) true))))

(declare-fun bm!380507 () Bool)

(declare-fun call!380517 () List!61254)

(declare-fun call!380513 () List!61254)

(assert (=> bm!380507 (= call!380517 call!380513)))

(declare-fun bm!380508 () Bool)

(declare-fun c!925979 () Bool)

(declare-fun c!925980 () Bool)

(assert (=> bm!380508 (= call!380513 ($colon$colon!1398 (exprs!4869 (ite (or c!925526 c!925525) lt!2172716 (Context!8739 call!380233))) (ite (or c!925980 c!925979) (regTwo!30482 (ite c!925526 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925525 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925524 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343)))))))) (ite c!925526 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925525 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925524 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343))))))))))))

(declare-fun c!925981 () Bool)

(declare-fun bm!380509 () Bool)

(assert (=> bm!380509 (= call!380512 (derivationStepZipperDown!433 (ite c!925981 (regOne!30483 (ite c!925526 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925525 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925524 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343)))))))) (regOne!30482 (ite c!925526 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925525 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925524 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343))))))))) (ite c!925981 (ite (or c!925526 c!925525) lt!2172716 (Context!8739 call!380233)) (Context!8739 call!380513)) (h!67579 s!2326)))))

(declare-fun bm!380510 () Bool)

(declare-fun call!380515 () (InoxSet Context!8738))

(assert (=> bm!380510 (= call!380516 call!380515)))

(declare-fun b!5325839 () Bool)

(declare-fun e!3308397 () Bool)

(assert (=> b!5325839 (= c!925980 e!3308397)))

(declare-fun res!2258903 () Bool)

(assert (=> b!5325839 (=> (not res!2258903) (not e!3308397))))

(assert (=> b!5325839 (= res!2258903 ((_ is Concat!23830) (ite c!925526 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925525 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925524 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343)))))))))))

(declare-fun e!3308398 () (InoxSet Context!8738))

(assert (=> b!5325839 (= e!3308396 e!3308398)))

(declare-fun b!5325840 () Bool)

(assert (=> b!5325840 (= e!3308394 call!380516)))

(declare-fun c!925978 () Bool)

(declare-fun d!1710618 () Bool)

(assert (=> d!1710618 (= c!925978 (and ((_ is ElementMatch!14985) (ite c!925526 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925525 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925524 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343)))))))) (= (c!925355 (ite c!925526 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925525 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925524 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343)))))))) (h!67579 s!2326))))))

(assert (=> d!1710618 (= (derivationStepZipperDown!433 (ite c!925526 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925525 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925524 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343))))))) (ite (or c!925526 c!925525) lt!2172716 (Context!8739 call!380233)) (h!67579 s!2326)) e!3308395)))

(declare-fun b!5325841 () Bool)

(assert (=> b!5325841 (= e!3308397 (nullable!5154 (regOne!30482 (ite c!925526 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925525 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925524 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343))))))))))))

(declare-fun b!5325842 () Bool)

(assert (=> b!5325842 (= e!3308398 ((_ map or) call!380512 call!380515))))

(declare-fun bm!380511 () Bool)

(assert (=> bm!380511 (= call!380515 call!380514)))

(declare-fun b!5325843 () Bool)

(assert (=> b!5325843 (= e!3308398 e!3308394)))

(assert (=> b!5325843 (= c!925979 ((_ is Concat!23830) (ite c!925526 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925525 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925524 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343)))))))))))

(declare-fun b!5325844 () Bool)

(assert (=> b!5325844 (= e!3308395 e!3308396)))

(assert (=> b!5325844 (= c!925981 ((_ is Union!14985) (ite c!925526 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925525 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925524 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343)))))))))))

(declare-fun b!5325845 () Bool)

(assert (=> b!5325845 (= e!3308399 ((as const (Array Context!8738 Bool)) false))))

(declare-fun bm!380512 () Bool)

(assert (=> bm!380512 (= call!380514 (derivationStepZipperDown!433 (ite c!925981 (regTwo!30483 (ite c!925526 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925525 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925524 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343)))))))) (ite c!925980 (regTwo!30482 (ite c!925526 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925525 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925524 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343)))))))) (ite c!925979 (regOne!30482 (ite c!925526 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925525 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925524 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343)))))))) (reg!15314 (ite c!925526 (regTwo!30483 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925525 (regTwo!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (ite c!925524 (regOne!30482 (h!67578 (exprs!4869 (h!67580 zl!343)))) (reg!15314 (h!67578 (exprs!4869 (h!67580 zl!343))))))))))) (ite (or c!925981 c!925980) (ite (or c!925526 c!925525) lt!2172716 (Context!8739 call!380233)) (Context!8739 call!380517)) (h!67579 s!2326)))))

(assert (= (and d!1710618 c!925978) b!5325838))

(assert (= (and d!1710618 (not c!925978)) b!5325844))

(assert (= (and b!5325844 c!925981) b!5325835))

(assert (= (and b!5325844 (not c!925981)) b!5325839))

(assert (= (and b!5325839 res!2258903) b!5325841))

(assert (= (and b!5325839 c!925980) b!5325842))

(assert (= (and b!5325839 (not c!925980)) b!5325843))

(assert (= (and b!5325843 c!925979) b!5325840))

(assert (= (and b!5325843 (not c!925979)) b!5325837))

(assert (= (and b!5325837 c!925977) b!5325836))

(assert (= (and b!5325837 (not c!925977)) b!5325845))

(assert (= (or b!5325840 b!5325836) bm!380507))

(assert (= (or b!5325840 b!5325836) bm!380510))

(assert (= (or b!5325842 bm!380507) bm!380508))

(assert (= (or b!5325842 bm!380510) bm!380511))

(assert (= (or b!5325835 bm!380511) bm!380512))

(assert (= (or b!5325835 b!5325842) bm!380509))

(declare-fun m!6360104 () Bool)

(assert (=> bm!380512 m!6360104))

(declare-fun m!6360106 () Bool)

(assert (=> bm!380509 m!6360106))

(declare-fun m!6360108 () Bool)

(assert (=> b!5325841 m!6360108))

(declare-fun m!6360110 () Bool)

(assert (=> b!5325838 m!6360110))

(declare-fun m!6360112 () Bool)

(assert (=> bm!380508 m!6360112))

(assert (=> bm!380228 d!1710618))

(declare-fun d!1710620 () Bool)

(assert (=> d!1710620 (= (isEmpty!33099 (t!374467 lt!2172704)) ((_ is Nil!61130) (t!374467 lt!2172704)))))

(assert (=> b!5324458 d!1710620))

(declare-fun b!5325847 () Bool)

(declare-fun e!3308401 () Bool)

(assert (=> b!5325847 (= e!3308401 (nullable!5154 (regTwo!30482 r!7292)))))

(declare-fun b!5325848 () Bool)

(declare-fun e!3308402 () Bool)

(assert (=> b!5325848 (= e!3308402 (not (= (head!11414 s!2326) (c!925355 (regTwo!30482 r!7292)))))))

(declare-fun b!5325849 () Bool)

(declare-fun e!3308406 () Bool)

(declare-fun lt!2172989 () Bool)

(assert (=> b!5325849 (= e!3308406 (not lt!2172989))))

(declare-fun b!5325850 () Bool)

(declare-fun e!3308404 () Bool)

(declare-fun e!3308400 () Bool)

(assert (=> b!5325850 (= e!3308404 e!3308400)))

(declare-fun res!2258909 () Bool)

(assert (=> b!5325850 (=> (not res!2258909) (not e!3308400))))

(assert (=> b!5325850 (= res!2258909 (not lt!2172989))))

(declare-fun b!5325851 () Bool)

(declare-fun res!2258908 () Bool)

(declare-fun e!3308403 () Bool)

(assert (=> b!5325851 (=> (not res!2258908) (not e!3308403))))

(assert (=> b!5325851 (= res!2258908 (isEmpty!33103 (tail!10511 s!2326)))))

(declare-fun b!5325852 () Bool)

(declare-fun res!2258910 () Bool)

(assert (=> b!5325852 (=> res!2258910 e!3308404)))

(assert (=> b!5325852 (= res!2258910 (not ((_ is ElementMatch!14985) (regTwo!30482 r!7292))))))

(assert (=> b!5325852 (= e!3308406 e!3308404)))

(declare-fun b!5325853 () Bool)

(assert (=> b!5325853 (= e!3308403 (= (head!11414 s!2326) (c!925355 (regTwo!30482 r!7292))))))

(declare-fun b!5325854 () Bool)

(assert (=> b!5325854 (= e!3308400 e!3308402)))

(declare-fun res!2258911 () Bool)

(assert (=> b!5325854 (=> res!2258911 e!3308402)))

(declare-fun call!380518 () Bool)

(assert (=> b!5325854 (= res!2258911 call!380518)))

(declare-fun bm!380513 () Bool)

(assert (=> bm!380513 (= call!380518 (isEmpty!33103 s!2326))))

(declare-fun b!5325855 () Bool)

(declare-fun res!2258906 () Bool)

(assert (=> b!5325855 (=> res!2258906 e!3308402)))

(assert (=> b!5325855 (= res!2258906 (not (isEmpty!33103 (tail!10511 s!2326))))))

(declare-fun d!1710622 () Bool)

(declare-fun e!3308405 () Bool)

(assert (=> d!1710622 e!3308405))

(declare-fun c!925984 () Bool)

(assert (=> d!1710622 (= c!925984 ((_ is EmptyExpr!14985) (regTwo!30482 r!7292)))))

(assert (=> d!1710622 (= lt!2172989 e!3308401)))

(declare-fun c!925983 () Bool)

(assert (=> d!1710622 (= c!925983 (isEmpty!33103 s!2326))))

(assert (=> d!1710622 (validRegex!6721 (regTwo!30482 r!7292))))

(assert (=> d!1710622 (= (matchR!7170 (regTwo!30482 r!7292) s!2326) lt!2172989)))

(declare-fun b!5325846 () Bool)

(declare-fun res!2258907 () Bool)

(assert (=> b!5325846 (=> (not res!2258907) (not e!3308403))))

(assert (=> b!5325846 (= res!2258907 (not call!380518))))

(declare-fun b!5325856 () Bool)

(assert (=> b!5325856 (= e!3308405 e!3308406)))

(declare-fun c!925982 () Bool)

(assert (=> b!5325856 (= c!925982 ((_ is EmptyLang!14985) (regTwo!30482 r!7292)))))

(declare-fun b!5325857 () Bool)

(assert (=> b!5325857 (= e!3308405 (= lt!2172989 call!380518))))

(declare-fun b!5325858 () Bool)

(declare-fun res!2258905 () Bool)

(assert (=> b!5325858 (=> res!2258905 e!3308404)))

(assert (=> b!5325858 (= res!2258905 e!3308403)))

(declare-fun res!2258904 () Bool)

(assert (=> b!5325858 (=> (not res!2258904) (not e!3308403))))

(assert (=> b!5325858 (= res!2258904 lt!2172989)))

(declare-fun b!5325859 () Bool)

(assert (=> b!5325859 (= e!3308401 (matchR!7170 (derivativeStep!4169 (regTwo!30482 r!7292) (head!11414 s!2326)) (tail!10511 s!2326)))))

(assert (= (and d!1710622 c!925983) b!5325847))

(assert (= (and d!1710622 (not c!925983)) b!5325859))

(assert (= (and d!1710622 c!925984) b!5325857))

(assert (= (and d!1710622 (not c!925984)) b!5325856))

(assert (= (and b!5325856 c!925982) b!5325849))

(assert (= (and b!5325856 (not c!925982)) b!5325852))

(assert (= (and b!5325852 (not res!2258910)) b!5325858))

(assert (= (and b!5325858 res!2258904) b!5325846))

(assert (= (and b!5325846 res!2258907) b!5325851))

(assert (= (and b!5325851 res!2258908) b!5325853))

(assert (= (and b!5325858 (not res!2258905)) b!5325850))

(assert (= (and b!5325850 res!2258909) b!5325854))

(assert (= (and b!5325854 (not res!2258911)) b!5325855))

(assert (= (and b!5325855 (not res!2258906)) b!5325848))

(assert (= (or b!5325857 b!5325846 b!5325854) bm!380513))

(assert (=> bm!380513 m!6358744))

(assert (=> b!5325848 m!6358756))

(assert (=> d!1710622 m!6358744))

(assert (=> d!1710622 m!6360078))

(assert (=> b!5325853 m!6358756))

(assert (=> b!5325851 m!6358758))

(assert (=> b!5325851 m!6358758))

(assert (=> b!5325851 m!6358760))

(assert (=> b!5325847 m!6360084))

(assert (=> b!5325855 m!6358758))

(assert (=> b!5325855 m!6358758))

(assert (=> b!5325855 m!6358760))

(assert (=> b!5325859 m!6358756))

(assert (=> b!5325859 m!6358756))

(declare-fun m!6360114 () Bool)

(assert (=> b!5325859 m!6360114))

(assert (=> b!5325859 m!6358758))

(assert (=> b!5325859 m!6360114))

(assert (=> b!5325859 m!6358758))

(declare-fun m!6360116 () Bool)

(assert (=> b!5325859 m!6360116))

(assert (=> b!5324297 d!1710622))

(declare-fun bs!1234638 () Bool)

(declare-fun d!1710624 () Bool)

(assert (= bs!1234638 (and d!1710624 d!1709946)))

(declare-fun lambda!271874 () Int)

(assert (=> bs!1234638 (= lambda!271874 lambda!271746)))

(declare-fun bs!1234639 () Bool)

(assert (= bs!1234639 (and d!1710624 b!5325337)))

(assert (=> bs!1234639 (not (= lambda!271874 lambda!271832))))

(declare-fun bs!1234640 () Bool)

(assert (= bs!1234640 (and d!1710624 b!5325410)))

(assert (=> bs!1234640 (not (= lambda!271874 lambda!271847))))

(declare-fun bs!1234641 () Bool)

(assert (= bs!1234641 (and d!1710624 d!1709972)))

(assert (=> bs!1234641 (= lambda!271874 lambda!271755)))

(declare-fun bs!1234642 () Bool)

(assert (= bs!1234642 (and d!1710624 d!1710352)))

(assert (=> bs!1234642 (= lambda!271874 lambda!271819)))

(declare-fun bs!1234643 () Bool)

(assert (= bs!1234643 (and d!1710624 d!1709986)))

(assert (=> bs!1234643 (= lambda!271874 lambda!271762)))

(declare-fun bs!1234644 () Bool)

(assert (= bs!1234644 (and d!1710624 b!5325335)))

(assert (=> bs!1234644 (not (= lambda!271874 lambda!271830))))

(declare-fun bs!1234645 () Bool)

(assert (= bs!1234645 (and d!1710624 d!1709998)))

(assert (=> bs!1234645 (= lambda!271874 lambda!271765)))

(declare-fun bs!1234646 () Bool)

(assert (= bs!1234646 (and d!1710624 d!1709812)))

(assert (=> bs!1234646 (= lambda!271874 lambda!271706)))

(declare-fun bs!1234647 () Bool)

(assert (= bs!1234647 (and d!1710624 b!5323686)))

(assert (=> bs!1234647 (= lambda!271874 lambda!271673)))

(declare-fun bs!1234648 () Bool)

(assert (= bs!1234648 (and d!1710624 d!1709970)))

(assert (=> bs!1234648 (= lambda!271874 lambda!271752)))

(declare-fun bs!1234649 () Bool)

(assert (= bs!1234649 (and d!1710624 d!1710550)))

(assert (=> bs!1234649 (= lambda!271874 lambda!271864)))

(declare-fun bs!1234650 () Bool)

(assert (= bs!1234650 (and d!1710624 b!5325412)))

(assert (=> bs!1234650 (not (= lambda!271874 lambda!271848))))

(declare-fun bs!1234651 () Bool)

(assert (= bs!1234651 (and d!1710624 d!1710146)))

(assert (=> bs!1234651 (= lambda!271874 lambda!271795)))

(declare-fun bs!1234652 () Bool)

(assert (= bs!1234652 (and d!1710624 d!1710130)))

(assert (=> bs!1234652 (= lambda!271874 lambda!271794)))

(declare-fun bs!1234653 () Bool)

(assert (= bs!1234653 (and d!1710624 d!1710516)))

(assert (=> bs!1234653 (= lambda!271874 lambda!271857)))

(declare-fun b!5325860 () Bool)

(declare-fun e!3308407 () Bool)

(declare-fun lt!2172990 () Regex!14985)

(assert (=> b!5325860 (= e!3308407 (isUnion!323 lt!2172990))))

(declare-fun b!5325861 () Bool)

(declare-fun e!3308411 () Bool)

(assert (=> b!5325861 (= e!3308411 (isEmptyLang!891 lt!2172990))))

(declare-fun e!3308412 () Bool)

(assert (=> d!1710624 e!3308412))

(declare-fun res!2258913 () Bool)

(assert (=> d!1710624 (=> (not res!2258913) (not e!3308412))))

(assert (=> d!1710624 (= res!2258913 (validRegex!6721 lt!2172990))))

(declare-fun e!3308408 () Regex!14985)

(assert (=> d!1710624 (= lt!2172990 e!3308408)))

(declare-fun c!925985 () Bool)

(declare-fun e!3308410 () Bool)

(assert (=> d!1710624 (= c!925985 e!3308410)))

(declare-fun res!2258912 () Bool)

(assert (=> d!1710624 (=> (not res!2258912) (not e!3308410))))

(assert (=> d!1710624 (= res!2258912 ((_ is Cons!61130) (t!374467 (unfocusZipperList!427 zl!343))))))

(assert (=> d!1710624 (forall!14403 (t!374467 (unfocusZipperList!427 zl!343)) lambda!271874)))

(assert (=> d!1710624 (= (generalisedUnion!914 (t!374467 (unfocusZipperList!427 zl!343))) lt!2172990)))

(declare-fun b!5325862 () Bool)

(assert (=> b!5325862 (= e!3308407 (= lt!2172990 (head!11413 (t!374467 (unfocusZipperList!427 zl!343)))))))

(declare-fun b!5325863 () Bool)

(assert (=> b!5325863 (= e!3308412 e!3308411)))

(declare-fun c!925986 () Bool)

(assert (=> b!5325863 (= c!925986 (isEmpty!33099 (t!374467 (unfocusZipperList!427 zl!343))))))

(declare-fun b!5325864 () Bool)

(assert (=> b!5325864 (= e!3308411 e!3308407)))

(declare-fun c!925987 () Bool)

(assert (=> b!5325864 (= c!925987 (isEmpty!33099 (tail!10510 (t!374467 (unfocusZipperList!427 zl!343)))))))

(declare-fun b!5325865 () Bool)

(declare-fun e!3308409 () Regex!14985)

(assert (=> b!5325865 (= e!3308409 (Union!14985 (h!67578 (t!374467 (unfocusZipperList!427 zl!343))) (generalisedUnion!914 (t!374467 (t!374467 (unfocusZipperList!427 zl!343))))))))

(declare-fun b!5325866 () Bool)

(assert (=> b!5325866 (= e!3308409 EmptyLang!14985)))

(declare-fun b!5325867 () Bool)

(assert (=> b!5325867 (= e!3308408 e!3308409)))

(declare-fun c!925988 () Bool)

(assert (=> b!5325867 (= c!925988 ((_ is Cons!61130) (t!374467 (unfocusZipperList!427 zl!343))))))

(declare-fun b!5325868 () Bool)

(assert (=> b!5325868 (= e!3308410 (isEmpty!33099 (t!374467 (t!374467 (unfocusZipperList!427 zl!343)))))))

(declare-fun b!5325869 () Bool)

(assert (=> b!5325869 (= e!3308408 (h!67578 (t!374467 (unfocusZipperList!427 zl!343))))))

(assert (= (and d!1710624 res!2258912) b!5325868))

(assert (= (and d!1710624 c!925985) b!5325869))

(assert (= (and d!1710624 (not c!925985)) b!5325867))

(assert (= (and b!5325867 c!925988) b!5325865))

(assert (= (and b!5325867 (not c!925988)) b!5325866))

(assert (= (and d!1710624 res!2258913) b!5325863))

(assert (= (and b!5325863 c!925986) b!5325861))

(assert (= (and b!5325863 (not c!925986)) b!5325864))

(assert (= (and b!5325864 c!925987) b!5325862))

(assert (= (and b!5325864 (not c!925987)) b!5325860))

(declare-fun m!6360118 () Bool)

(assert (=> d!1710624 m!6360118))

(declare-fun m!6360120 () Bool)

(assert (=> d!1710624 m!6360120))

(declare-fun m!6360122 () Bool)

(assert (=> b!5325861 m!6360122))

(declare-fun m!6360124 () Bool)

(assert (=> b!5325860 m!6360124))

(declare-fun m!6360126 () Bool)

(assert (=> b!5325868 m!6360126))

(declare-fun m!6360128 () Bool)

(assert (=> b!5325865 m!6360128))

(assert (=> b!5325863 m!6358728))

(declare-fun m!6360130 () Bool)

(assert (=> b!5325862 m!6360130))

(declare-fun m!6360132 () Bool)

(assert (=> b!5325864 m!6360132))

(assert (=> b!5325864 m!6360132))

(declare-fun m!6360134 () Bool)

(assert (=> b!5325864 m!6360134))

(assert (=> b!5324352 d!1710624))

(declare-fun d!1710626 () Bool)

(declare-fun res!2258914 () Bool)

(declare-fun e!3308413 () Bool)

(assert (=> d!1710626 (=> res!2258914 e!3308413)))

(assert (=> d!1710626 (= res!2258914 ((_ is Nil!61132) lt!2172714))))

(assert (=> d!1710626 (= (forall!14405 lt!2172714 lambda!271715) e!3308413)))

(declare-fun b!5325870 () Bool)

(declare-fun e!3308414 () Bool)

(assert (=> b!5325870 (= e!3308413 e!3308414)))

(declare-fun res!2258915 () Bool)

(assert (=> b!5325870 (=> (not res!2258915) (not e!3308414))))

(assert (=> b!5325870 (= res!2258915 (dynLambda!24173 lambda!271715 (h!67580 lt!2172714)))))

(declare-fun b!5325871 () Bool)

(assert (=> b!5325871 (= e!3308414 (forall!14405 (t!374469 lt!2172714) lambda!271715))))

(assert (= (and d!1710626 (not res!2258914)) b!5325870))

(assert (= (and b!5325870 res!2258915) b!5325871))

(declare-fun b_lambda!204879 () Bool)

(assert (=> (not b_lambda!204879) (not b!5325870)))

(declare-fun m!6360136 () Bool)

(assert (=> b!5325870 m!6360136))

(declare-fun m!6360138 () Bool)

(assert (=> b!5325871 m!6360138))

(assert (=> b!5323978 d!1710626))

(declare-fun d!1710628 () Bool)

(declare-fun res!2258916 () Bool)

(declare-fun e!3308415 () Bool)

(assert (=> d!1710628 (=> res!2258916 e!3308415)))

(assert (=> d!1710628 (= res!2258916 ((_ is Nil!61132) zl!343))))

(assert (=> d!1710628 (= (forall!14405 zl!343 lambda!271718) e!3308415)))

(declare-fun b!5325872 () Bool)

(declare-fun e!3308416 () Bool)

(assert (=> b!5325872 (= e!3308415 e!3308416)))

(declare-fun res!2258917 () Bool)

(assert (=> b!5325872 (=> (not res!2258917) (not e!3308416))))

(assert (=> b!5325872 (= res!2258917 (dynLambda!24173 lambda!271718 (h!67580 zl!343)))))

(declare-fun b!5325873 () Bool)

(assert (=> b!5325873 (= e!3308416 (forall!14405 (t!374469 zl!343) lambda!271718))))

(assert (= (and d!1710628 (not res!2258916)) b!5325872))

(assert (= (and b!5325872 res!2258917) b!5325873))

(declare-fun b_lambda!204881 () Bool)

(assert (=> (not b_lambda!204881) (not b!5325872)))

(declare-fun m!6360140 () Bool)

(assert (=> b!5325872 m!6360140))

(declare-fun m!6360142 () Bool)

(assert (=> b!5325873 m!6360142))

(assert (=> b!5323994 d!1710628))

(declare-fun d!1710630 () Bool)

(declare-fun c!925989 () Bool)

(assert (=> d!1710630 (= c!925989 (isEmpty!33103 (tail!10511 (t!374468 s!2326))))))

(declare-fun e!3308417 () Bool)

(assert (=> d!1710630 (= (matchZipper!1229 (derivationStepZipper!1226 lt!2172711 (head!11414 (t!374468 s!2326))) (tail!10511 (t!374468 s!2326))) e!3308417)))

(declare-fun b!5325874 () Bool)

(assert (=> b!5325874 (= e!3308417 (nullableZipper!1348 (derivationStepZipper!1226 lt!2172711 (head!11414 (t!374468 s!2326)))))))

(declare-fun b!5325875 () Bool)

(assert (=> b!5325875 (= e!3308417 (matchZipper!1229 (derivationStepZipper!1226 (derivationStepZipper!1226 lt!2172711 (head!11414 (t!374468 s!2326))) (head!11414 (tail!10511 (t!374468 s!2326)))) (tail!10511 (tail!10511 (t!374468 s!2326)))))))

(assert (= (and d!1710630 c!925989) b!5325874))

(assert (= (and d!1710630 (not c!925989)) b!5325875))

(assert (=> d!1710630 m!6358324))

(assert (=> d!1710630 m!6359700))

(assert (=> b!5325874 m!6358482))

(declare-fun m!6360144 () Bool)

(assert (=> b!5325874 m!6360144))

(assert (=> b!5325875 m!6358324))

(assert (=> b!5325875 m!6359704))

(assert (=> b!5325875 m!6358482))

(assert (=> b!5325875 m!6359704))

(declare-fun m!6360146 () Bool)

(assert (=> b!5325875 m!6360146))

(assert (=> b!5325875 m!6358324))

(assert (=> b!5325875 m!6359708))

(assert (=> b!5325875 m!6360146))

(assert (=> b!5325875 m!6359708))

(declare-fun m!6360148 () Bool)

(assert (=> b!5325875 m!6360148))

(assert (=> b!5324038 d!1710630))

(declare-fun bs!1234654 () Bool)

(declare-fun d!1710632 () Bool)

(assert (= bs!1234654 (and d!1710632 d!1710532)))

(declare-fun lambda!271875 () Int)

(assert (=> bs!1234654 (= lambda!271875 lambda!271859)))

(declare-fun bs!1234655 () Bool)

(assert (= bs!1234655 (and d!1710632 d!1710514)))

(assert (=> bs!1234655 (= lambda!271875 lambda!271856)))

(declare-fun bs!1234656 () Bool)

(assert (= bs!1234656 (and d!1710632 d!1710266)))

(assert (=> bs!1234656 (= (= (head!11414 (t!374468 s!2326)) (head!11414 s!2326)) (= lambda!271875 lambda!271807))))

(declare-fun bs!1234657 () Bool)

(assert (= bs!1234657 (and d!1710632 d!1709960)))

(assert (=> bs!1234657 (= (= (head!11414 (t!374468 s!2326)) (h!67579 s!2326)) (= lambda!271875 lambda!271749))))

(declare-fun bs!1234658 () Bool)

(assert (= bs!1234658 (and d!1710632 b!5323675)))

(assert (=> bs!1234658 (= (= (head!11414 (t!374468 s!2326)) (h!67579 s!2326)) (= lambda!271875 lambda!271672))))

(declare-fun bs!1234659 () Bool)

(assert (= bs!1234659 (and d!1710632 d!1710528)))

(assert (=> bs!1234659 (= lambda!271875 lambda!271858)))

(declare-fun bs!1234660 () Bool)

(assert (= bs!1234660 (and d!1710632 d!1710404)))

(assert (=> bs!1234660 (= lambda!271875 lambda!271843)))

(assert (=> d!1710632 true))

(assert (=> d!1710632 (= (derivationStepZipper!1226 lt!2172711 (head!11414 (t!374468 s!2326))) (flatMap!712 lt!2172711 lambda!271875))))

(declare-fun bs!1234661 () Bool)

(assert (= bs!1234661 d!1710632))

(declare-fun m!6360150 () Bool)

(assert (=> bs!1234661 m!6360150))

(assert (=> b!5324038 d!1710632))

(assert (=> b!5324038 d!1710408))

(assert (=> b!5324038 d!1710410))

(declare-fun b!5325878 () Bool)

(declare-fun e!3308418 () Bool)

(declare-fun tp!1482573 () Bool)

(assert (=> b!5325878 (= e!3308418 tp!1482573)))

(assert (=> b!5324549 (= tp!1482362 e!3308418)))

(declare-fun b!5325877 () Bool)

(declare-fun tp!1482574 () Bool)

(declare-fun tp!1482572 () Bool)

(assert (=> b!5325877 (= e!3308418 (and tp!1482574 tp!1482572))))

(declare-fun b!5325876 () Bool)

(assert (=> b!5325876 (= e!3308418 tp_is_empty!39223)))

(declare-fun b!5325879 () Bool)

(declare-fun tp!1482570 () Bool)

(declare-fun tp!1482571 () Bool)

(assert (=> b!5325879 (= e!3308418 (and tp!1482570 tp!1482571))))

(assert (= (and b!5324549 ((_ is ElementMatch!14985) (h!67578 (exprs!4869 (h!67580 zl!343))))) b!5325876))

(assert (= (and b!5324549 ((_ is Concat!23830) (h!67578 (exprs!4869 (h!67580 zl!343))))) b!5325877))

(assert (= (and b!5324549 ((_ is Star!14985) (h!67578 (exprs!4869 (h!67580 zl!343))))) b!5325878))

(assert (= (and b!5324549 ((_ is Union!14985) (h!67578 (exprs!4869 (h!67580 zl!343))))) b!5325879))

(declare-fun b!5325880 () Bool)

(declare-fun e!3308419 () Bool)

(declare-fun tp!1482575 () Bool)

(declare-fun tp!1482576 () Bool)

(assert (=> b!5325880 (= e!3308419 (and tp!1482575 tp!1482576))))

(assert (=> b!5324549 (= tp!1482363 e!3308419)))

(assert (= (and b!5324549 ((_ is Cons!61130) (t!374467 (exprs!4869 (h!67580 zl!343))))) b!5325880))

(declare-fun b!5325883 () Bool)

(declare-fun e!3308420 () Bool)

(declare-fun tp!1482580 () Bool)

(assert (=> b!5325883 (= e!3308420 tp!1482580)))

(assert (=> b!5324577 (= tp!1482393 e!3308420)))

(declare-fun b!5325882 () Bool)

(declare-fun tp!1482581 () Bool)

(declare-fun tp!1482579 () Bool)

(assert (=> b!5325882 (= e!3308420 (and tp!1482581 tp!1482579))))

(declare-fun b!5325881 () Bool)

(assert (=> b!5325881 (= e!3308420 tp_is_empty!39223)))

(declare-fun b!5325884 () Bool)

(declare-fun tp!1482577 () Bool)

(declare-fun tp!1482578 () Bool)

(assert (=> b!5325884 (= e!3308420 (and tp!1482577 tp!1482578))))

(assert (= (and b!5324577 ((_ is ElementMatch!14985) (regOne!30482 (regTwo!30482 r!7292)))) b!5325881))

(assert (= (and b!5324577 ((_ is Concat!23830) (regOne!30482 (regTwo!30482 r!7292)))) b!5325882))

(assert (= (and b!5324577 ((_ is Star!14985) (regOne!30482 (regTwo!30482 r!7292)))) b!5325883))

(assert (= (and b!5324577 ((_ is Union!14985) (regOne!30482 (regTwo!30482 r!7292)))) b!5325884))

(declare-fun b!5325887 () Bool)

(declare-fun e!3308421 () Bool)

(declare-fun tp!1482585 () Bool)

(assert (=> b!5325887 (= e!3308421 tp!1482585)))

(assert (=> b!5324577 (= tp!1482391 e!3308421)))

(declare-fun b!5325886 () Bool)

(declare-fun tp!1482586 () Bool)

(declare-fun tp!1482584 () Bool)

(assert (=> b!5325886 (= e!3308421 (and tp!1482586 tp!1482584))))

(declare-fun b!5325885 () Bool)

(assert (=> b!5325885 (= e!3308421 tp_is_empty!39223)))

(declare-fun b!5325888 () Bool)

(declare-fun tp!1482582 () Bool)

(declare-fun tp!1482583 () Bool)

(assert (=> b!5325888 (= e!3308421 (and tp!1482582 tp!1482583))))

(assert (= (and b!5324577 ((_ is ElementMatch!14985) (regTwo!30482 (regTwo!30482 r!7292)))) b!5325885))

(assert (= (and b!5324577 ((_ is Concat!23830) (regTwo!30482 (regTwo!30482 r!7292)))) b!5325886))

(assert (= (and b!5324577 ((_ is Star!14985) (regTwo!30482 (regTwo!30482 r!7292)))) b!5325887))

(assert (= (and b!5324577 ((_ is Union!14985) (regTwo!30482 (regTwo!30482 r!7292)))) b!5325888))

(declare-fun b!5325890 () Bool)

(declare-fun e!3308423 () Bool)

(declare-fun tp!1482587 () Bool)

(assert (=> b!5325890 (= e!3308423 tp!1482587)))

(declare-fun e!3308422 () Bool)

(declare-fun b!5325889 () Bool)

(declare-fun tp!1482588 () Bool)

(assert (=> b!5325889 (= e!3308422 (and (inv!80709 (h!67580 (t!374469 (t!374469 zl!343)))) e!3308423 tp!1482588))))

(assert (=> b!5324570 (= tp!1482383 e!3308422)))

(assert (= b!5325889 b!5325890))

(assert (= (and b!5324570 ((_ is Cons!61132) (t!374469 (t!374469 zl!343)))) b!5325889))

(declare-fun m!6360152 () Bool)

(assert (=> b!5325889 m!6360152))

(declare-fun b!5325893 () Bool)

(declare-fun e!3308424 () Bool)

(declare-fun tp!1482592 () Bool)

(assert (=> b!5325893 (= e!3308424 tp!1482592)))

(assert (=> b!5324563 (= tp!1482373 e!3308424)))

(declare-fun b!5325892 () Bool)

(declare-fun tp!1482593 () Bool)

(declare-fun tp!1482591 () Bool)

(assert (=> b!5325892 (= e!3308424 (and tp!1482593 tp!1482591))))

(declare-fun b!5325891 () Bool)

(assert (=> b!5325891 (= e!3308424 tp_is_empty!39223)))

(declare-fun b!5325894 () Bool)

(declare-fun tp!1482589 () Bool)

(declare-fun tp!1482590 () Bool)

(assert (=> b!5325894 (= e!3308424 (and tp!1482589 tp!1482590))))

(assert (= (and b!5324563 ((_ is ElementMatch!14985) (regOne!30483 (reg!15314 r!7292)))) b!5325891))

(assert (= (and b!5324563 ((_ is Concat!23830) (regOne!30483 (reg!15314 r!7292)))) b!5325892))

(assert (= (and b!5324563 ((_ is Star!14985) (regOne!30483 (reg!15314 r!7292)))) b!5325893))

(assert (= (and b!5324563 ((_ is Union!14985) (regOne!30483 (reg!15314 r!7292)))) b!5325894))

(declare-fun b!5325897 () Bool)

(declare-fun e!3308425 () Bool)

(declare-fun tp!1482597 () Bool)

(assert (=> b!5325897 (= e!3308425 tp!1482597)))

(assert (=> b!5324563 (= tp!1482374 e!3308425)))

(declare-fun b!5325896 () Bool)

(declare-fun tp!1482598 () Bool)

(declare-fun tp!1482596 () Bool)

(assert (=> b!5325896 (= e!3308425 (and tp!1482598 tp!1482596))))

(declare-fun b!5325895 () Bool)

(assert (=> b!5325895 (= e!3308425 tp_is_empty!39223)))

(declare-fun b!5325898 () Bool)

(declare-fun tp!1482594 () Bool)

(declare-fun tp!1482595 () Bool)

(assert (=> b!5325898 (= e!3308425 (and tp!1482594 tp!1482595))))

(assert (= (and b!5324563 ((_ is ElementMatch!14985) (regTwo!30483 (reg!15314 r!7292)))) b!5325895))

(assert (= (and b!5324563 ((_ is Concat!23830) (regTwo!30483 (reg!15314 r!7292)))) b!5325896))

(assert (= (and b!5324563 ((_ is Star!14985) (regTwo!30483 (reg!15314 r!7292)))) b!5325897))

(assert (= (and b!5324563 ((_ is Union!14985) (regTwo!30483 (reg!15314 r!7292)))) b!5325898))

(declare-fun b!5325901 () Bool)

(declare-fun e!3308426 () Bool)

(declare-fun tp!1482602 () Bool)

(assert (=> b!5325901 (= e!3308426 tp!1482602)))

(assert (=> b!5324561 (= tp!1482377 e!3308426)))

(declare-fun b!5325900 () Bool)

(declare-fun tp!1482603 () Bool)

(declare-fun tp!1482601 () Bool)

(assert (=> b!5325900 (= e!3308426 (and tp!1482603 tp!1482601))))

(declare-fun b!5325899 () Bool)

(assert (=> b!5325899 (= e!3308426 tp_is_empty!39223)))

(declare-fun b!5325902 () Bool)

(declare-fun tp!1482599 () Bool)

(declare-fun tp!1482600 () Bool)

(assert (=> b!5325902 (= e!3308426 (and tp!1482599 tp!1482600))))

(assert (= (and b!5324561 ((_ is ElementMatch!14985) (regOne!30482 (reg!15314 r!7292)))) b!5325899))

(assert (= (and b!5324561 ((_ is Concat!23830) (regOne!30482 (reg!15314 r!7292)))) b!5325900))

(assert (= (and b!5324561 ((_ is Star!14985) (regOne!30482 (reg!15314 r!7292)))) b!5325901))

(assert (= (and b!5324561 ((_ is Union!14985) (regOne!30482 (reg!15314 r!7292)))) b!5325902))

(declare-fun b!5325905 () Bool)

(declare-fun e!3308427 () Bool)

(declare-fun tp!1482607 () Bool)

(assert (=> b!5325905 (= e!3308427 tp!1482607)))

(assert (=> b!5324561 (= tp!1482375 e!3308427)))

(declare-fun b!5325904 () Bool)

(declare-fun tp!1482608 () Bool)

(declare-fun tp!1482606 () Bool)

(assert (=> b!5325904 (= e!3308427 (and tp!1482608 tp!1482606))))

(declare-fun b!5325903 () Bool)

(assert (=> b!5325903 (= e!3308427 tp_is_empty!39223)))

(declare-fun b!5325906 () Bool)

(declare-fun tp!1482604 () Bool)

(declare-fun tp!1482605 () Bool)

(assert (=> b!5325906 (= e!3308427 (and tp!1482604 tp!1482605))))

(assert (= (and b!5324561 ((_ is ElementMatch!14985) (regTwo!30482 (reg!15314 r!7292)))) b!5325903))

(assert (= (and b!5324561 ((_ is Concat!23830) (regTwo!30482 (reg!15314 r!7292)))) b!5325904))

(assert (= (and b!5324561 ((_ is Star!14985) (regTwo!30482 (reg!15314 r!7292)))) b!5325905))

(assert (= (and b!5324561 ((_ is Union!14985) (regTwo!30482 (reg!15314 r!7292)))) b!5325906))

(declare-fun b!5325909 () Bool)

(declare-fun e!3308428 () Bool)

(declare-fun tp!1482612 () Bool)

(assert (=> b!5325909 (= e!3308428 tp!1482612)))

(assert (=> b!5324562 (= tp!1482376 e!3308428)))

(declare-fun b!5325908 () Bool)

(declare-fun tp!1482613 () Bool)

(declare-fun tp!1482611 () Bool)

(assert (=> b!5325908 (= e!3308428 (and tp!1482613 tp!1482611))))

(declare-fun b!5325907 () Bool)

(assert (=> b!5325907 (= e!3308428 tp_is_empty!39223)))

(declare-fun b!5325910 () Bool)

(declare-fun tp!1482609 () Bool)

(declare-fun tp!1482610 () Bool)

(assert (=> b!5325910 (= e!3308428 (and tp!1482609 tp!1482610))))

(assert (= (and b!5324562 ((_ is ElementMatch!14985) (reg!15314 (reg!15314 r!7292)))) b!5325907))

(assert (= (and b!5324562 ((_ is Concat!23830) (reg!15314 (reg!15314 r!7292)))) b!5325908))

(assert (= (and b!5324562 ((_ is Star!14985) (reg!15314 (reg!15314 r!7292)))) b!5325909))

(assert (= (and b!5324562 ((_ is Union!14985) (reg!15314 (reg!15314 r!7292)))) b!5325910))

(declare-fun b!5325913 () Bool)

(declare-fun e!3308429 () Bool)

(declare-fun tp!1482617 () Bool)

(assert (=> b!5325913 (= e!3308429 tp!1482617)))

(assert (=> b!5324548 (= tp!1482357 e!3308429)))

(declare-fun b!5325912 () Bool)

(declare-fun tp!1482618 () Bool)

(declare-fun tp!1482616 () Bool)

(assert (=> b!5325912 (= e!3308429 (and tp!1482618 tp!1482616))))

(declare-fun b!5325911 () Bool)

(assert (=> b!5325911 (= e!3308429 tp_is_empty!39223)))

(declare-fun b!5325914 () Bool)

(declare-fun tp!1482614 () Bool)

(declare-fun tp!1482615 () Bool)

(assert (=> b!5325914 (= e!3308429 (and tp!1482614 tp!1482615))))

(assert (= (and b!5324548 ((_ is ElementMatch!14985) (regOne!30483 (regTwo!30483 r!7292)))) b!5325911))

(assert (= (and b!5324548 ((_ is Concat!23830) (regOne!30483 (regTwo!30483 r!7292)))) b!5325912))

(assert (= (and b!5324548 ((_ is Star!14985) (regOne!30483 (regTwo!30483 r!7292)))) b!5325913))

(assert (= (and b!5324548 ((_ is Union!14985) (regOne!30483 (regTwo!30483 r!7292)))) b!5325914))

(declare-fun b!5325917 () Bool)

(declare-fun e!3308430 () Bool)

(declare-fun tp!1482622 () Bool)

(assert (=> b!5325917 (= e!3308430 tp!1482622)))

(assert (=> b!5324548 (= tp!1482358 e!3308430)))

(declare-fun b!5325916 () Bool)

(declare-fun tp!1482623 () Bool)

(declare-fun tp!1482621 () Bool)

(assert (=> b!5325916 (= e!3308430 (and tp!1482623 tp!1482621))))

(declare-fun b!5325915 () Bool)

(assert (=> b!5325915 (= e!3308430 tp_is_empty!39223)))

(declare-fun b!5325918 () Bool)

(declare-fun tp!1482619 () Bool)

(declare-fun tp!1482620 () Bool)

(assert (=> b!5325918 (= e!3308430 (and tp!1482619 tp!1482620))))

(assert (= (and b!5324548 ((_ is ElementMatch!14985) (regTwo!30483 (regTwo!30483 r!7292)))) b!5325915))

(assert (= (and b!5324548 ((_ is Concat!23830) (regTwo!30483 (regTwo!30483 r!7292)))) b!5325916))

(assert (= (and b!5324548 ((_ is Star!14985) (regTwo!30483 (regTwo!30483 r!7292)))) b!5325917))

(assert (= (and b!5324548 ((_ is Union!14985) (regTwo!30483 (regTwo!30483 r!7292)))) b!5325918))

(declare-fun b!5325921 () Bool)

(declare-fun e!3308431 () Bool)

(declare-fun tp!1482627 () Bool)

(assert (=> b!5325921 (= e!3308431 tp!1482627)))

(assert (=> b!5324542 (= tp!1482356 e!3308431)))

(declare-fun b!5325920 () Bool)

(declare-fun tp!1482628 () Bool)

(declare-fun tp!1482626 () Bool)

(assert (=> b!5325920 (= e!3308431 (and tp!1482628 tp!1482626))))

(declare-fun b!5325919 () Bool)

(assert (=> b!5325919 (= e!3308431 tp_is_empty!39223)))

(declare-fun b!5325922 () Bool)

(declare-fun tp!1482624 () Bool)

(declare-fun tp!1482625 () Bool)

(assert (=> b!5325922 (= e!3308431 (and tp!1482624 tp!1482625))))

(assert (= (and b!5324542 ((_ is ElementMatch!14985) (regOne!30482 (regOne!30483 r!7292)))) b!5325919))

(assert (= (and b!5324542 ((_ is Concat!23830) (regOne!30482 (regOne!30483 r!7292)))) b!5325920))

(assert (= (and b!5324542 ((_ is Star!14985) (regOne!30482 (regOne!30483 r!7292)))) b!5325921))

(assert (= (and b!5324542 ((_ is Union!14985) (regOne!30482 (regOne!30483 r!7292)))) b!5325922))

(declare-fun b!5325925 () Bool)

(declare-fun e!3308432 () Bool)

(declare-fun tp!1482632 () Bool)

(assert (=> b!5325925 (= e!3308432 tp!1482632)))

(assert (=> b!5324542 (= tp!1482354 e!3308432)))

(declare-fun b!5325924 () Bool)

(declare-fun tp!1482633 () Bool)

(declare-fun tp!1482631 () Bool)

(assert (=> b!5325924 (= e!3308432 (and tp!1482633 tp!1482631))))

(declare-fun b!5325923 () Bool)

(assert (=> b!5325923 (= e!3308432 tp_is_empty!39223)))

(declare-fun b!5325926 () Bool)

(declare-fun tp!1482629 () Bool)

(declare-fun tp!1482630 () Bool)

(assert (=> b!5325926 (= e!3308432 (and tp!1482629 tp!1482630))))

(assert (= (and b!5324542 ((_ is ElementMatch!14985) (regTwo!30482 (regOne!30483 r!7292)))) b!5325923))

(assert (= (and b!5324542 ((_ is Concat!23830) (regTwo!30482 (regOne!30483 r!7292)))) b!5325924))

(assert (= (and b!5324542 ((_ is Star!14985) (regTwo!30482 (regOne!30483 r!7292)))) b!5325925))

(assert (= (and b!5324542 ((_ is Union!14985) (regTwo!30482 (regOne!30483 r!7292)))) b!5325926))

(declare-fun b!5325929 () Bool)

(declare-fun e!3308433 () Bool)

(declare-fun tp!1482637 () Bool)

(assert (=> b!5325929 (= e!3308433 tp!1482637)))

(assert (=> b!5324579 (= tp!1482389 e!3308433)))

(declare-fun b!5325928 () Bool)

(declare-fun tp!1482638 () Bool)

(declare-fun tp!1482636 () Bool)

(assert (=> b!5325928 (= e!3308433 (and tp!1482638 tp!1482636))))

(declare-fun b!5325927 () Bool)

(assert (=> b!5325927 (= e!3308433 tp_is_empty!39223)))

(declare-fun b!5325930 () Bool)

(declare-fun tp!1482634 () Bool)

(declare-fun tp!1482635 () Bool)

(assert (=> b!5325930 (= e!3308433 (and tp!1482634 tp!1482635))))

(assert (= (and b!5324579 ((_ is ElementMatch!14985) (regOne!30483 (regTwo!30482 r!7292)))) b!5325927))

(assert (= (and b!5324579 ((_ is Concat!23830) (regOne!30483 (regTwo!30482 r!7292)))) b!5325928))

(assert (= (and b!5324579 ((_ is Star!14985) (regOne!30483 (regTwo!30482 r!7292)))) b!5325929))

(assert (= (and b!5324579 ((_ is Union!14985) (regOne!30483 (regTwo!30482 r!7292)))) b!5325930))

(declare-fun b!5325933 () Bool)

(declare-fun e!3308434 () Bool)

(declare-fun tp!1482642 () Bool)

(assert (=> b!5325933 (= e!3308434 tp!1482642)))

(assert (=> b!5324579 (= tp!1482390 e!3308434)))

(declare-fun b!5325932 () Bool)

(declare-fun tp!1482643 () Bool)

(declare-fun tp!1482641 () Bool)

(assert (=> b!5325932 (= e!3308434 (and tp!1482643 tp!1482641))))

(declare-fun b!5325931 () Bool)

(assert (=> b!5325931 (= e!3308434 tp_is_empty!39223)))

(declare-fun b!5325934 () Bool)

(declare-fun tp!1482639 () Bool)

(declare-fun tp!1482640 () Bool)

(assert (=> b!5325934 (= e!3308434 (and tp!1482639 tp!1482640))))

(assert (= (and b!5324579 ((_ is ElementMatch!14985) (regTwo!30483 (regTwo!30482 r!7292)))) b!5325931))

(assert (= (and b!5324579 ((_ is Concat!23830) (regTwo!30483 (regTwo!30482 r!7292)))) b!5325932))

(assert (= (and b!5324579 ((_ is Star!14985) (regTwo!30483 (regTwo!30482 r!7292)))) b!5325933))

(assert (= (and b!5324579 ((_ is Union!14985) (regTwo!30483 (regTwo!30482 r!7292)))) b!5325934))

(declare-fun b!5325937 () Bool)

(declare-fun e!3308435 () Bool)

(declare-fun tp!1482647 () Bool)

(assert (=> b!5325937 (= e!3308435 tp!1482647)))

(assert (=> b!5324578 (= tp!1482392 e!3308435)))

(declare-fun b!5325936 () Bool)

(declare-fun tp!1482648 () Bool)

(declare-fun tp!1482646 () Bool)

(assert (=> b!5325936 (= e!3308435 (and tp!1482648 tp!1482646))))

(declare-fun b!5325935 () Bool)

(assert (=> b!5325935 (= e!3308435 tp_is_empty!39223)))

(declare-fun b!5325938 () Bool)

(declare-fun tp!1482644 () Bool)

(declare-fun tp!1482645 () Bool)

(assert (=> b!5325938 (= e!3308435 (and tp!1482644 tp!1482645))))

(assert (= (and b!5324578 ((_ is ElementMatch!14985) (reg!15314 (regTwo!30482 r!7292)))) b!5325935))

(assert (= (and b!5324578 ((_ is Concat!23830) (reg!15314 (regTwo!30482 r!7292)))) b!5325936))

(assert (= (and b!5324578 ((_ is Star!14985) (reg!15314 (regTwo!30482 r!7292)))) b!5325937))

(assert (= (and b!5324578 ((_ is Union!14985) (reg!15314 (regTwo!30482 r!7292)))) b!5325938))

(declare-fun b!5325939 () Bool)

(declare-fun e!3308436 () Bool)

(declare-fun tp!1482649 () Bool)

(declare-fun tp!1482650 () Bool)

(assert (=> b!5325939 (= e!3308436 (and tp!1482649 tp!1482650))))

(assert (=> b!5324571 (= tp!1482382 e!3308436)))

(assert (= (and b!5324571 ((_ is Cons!61130) (exprs!4869 (h!67580 (t!374469 zl!343))))) b!5325939))

(declare-fun b!5325940 () Bool)

(declare-fun e!3308437 () Bool)

(declare-fun tp!1482651 () Bool)

(declare-fun tp!1482652 () Bool)

(assert (=> b!5325940 (= e!3308437 (and tp!1482651 tp!1482652))))

(assert (=> b!5324559 (= tp!1482372 e!3308437)))

(assert (= (and b!5324559 ((_ is Cons!61130) (exprs!4869 setElem!34295))) b!5325940))

(declare-fun b!5325943 () Bool)

(declare-fun e!3308438 () Bool)

(declare-fun tp!1482656 () Bool)

(assert (=> b!5325943 (= e!3308438 tp!1482656)))

(assert (=> b!5324543 (= tp!1482355 e!3308438)))

(declare-fun b!5325942 () Bool)

(declare-fun tp!1482657 () Bool)

(declare-fun tp!1482655 () Bool)

(assert (=> b!5325942 (= e!3308438 (and tp!1482657 tp!1482655))))

(declare-fun b!5325941 () Bool)

(assert (=> b!5325941 (= e!3308438 tp_is_empty!39223)))

(declare-fun b!5325944 () Bool)

(declare-fun tp!1482653 () Bool)

(declare-fun tp!1482654 () Bool)

(assert (=> b!5325944 (= e!3308438 (and tp!1482653 tp!1482654))))

(assert (= (and b!5324543 ((_ is ElementMatch!14985) (reg!15314 (regOne!30483 r!7292)))) b!5325941))

(assert (= (and b!5324543 ((_ is Concat!23830) (reg!15314 (regOne!30483 r!7292)))) b!5325942))

(assert (= (and b!5324543 ((_ is Star!14985) (reg!15314 (regOne!30483 r!7292)))) b!5325943))

(assert (= (and b!5324543 ((_ is Union!14985) (reg!15314 (regOne!30483 r!7292)))) b!5325944))

(declare-fun condSetEmpty!34305 () Bool)

(assert (=> setNonEmpty!34295 (= condSetEmpty!34305 (= setRest!34295 ((as const (Array Context!8738 Bool)) false)))))

(declare-fun setRes!34305 () Bool)

(assert (=> setNonEmpty!34295 (= tp!1482371 setRes!34305)))

(declare-fun setIsEmpty!34305 () Bool)

(assert (=> setIsEmpty!34305 setRes!34305))

(declare-fun tp!1482658 () Bool)

(declare-fun e!3308439 () Bool)

(declare-fun setElem!34305 () Context!8738)

(declare-fun setNonEmpty!34305 () Bool)

(assert (=> setNonEmpty!34305 (= setRes!34305 (and tp!1482658 (inv!80709 setElem!34305) e!3308439))))

(declare-fun setRest!34305 () (InoxSet Context!8738))

(assert (=> setNonEmpty!34305 (= setRest!34295 ((_ map or) (store ((as const (Array Context!8738 Bool)) false) setElem!34305 true) setRest!34305))))

(declare-fun b!5325945 () Bool)

(declare-fun tp!1482659 () Bool)

(assert (=> b!5325945 (= e!3308439 tp!1482659)))

(assert (= (and setNonEmpty!34295 condSetEmpty!34305) setIsEmpty!34305))

(assert (= (and setNonEmpty!34295 (not condSetEmpty!34305)) setNonEmpty!34305))

(assert (= setNonEmpty!34305 b!5325945))

(declare-fun m!6360154 () Bool)

(assert (=> setNonEmpty!34305 m!6360154))

(declare-fun b!5325948 () Bool)

(declare-fun e!3308440 () Bool)

(declare-fun tp!1482663 () Bool)

(assert (=> b!5325948 (= e!3308440 tp!1482663)))

(assert (=> b!5324544 (= tp!1482352 e!3308440)))

(declare-fun b!5325947 () Bool)

(declare-fun tp!1482664 () Bool)

(declare-fun tp!1482662 () Bool)

(assert (=> b!5325947 (= e!3308440 (and tp!1482664 tp!1482662))))

(declare-fun b!5325946 () Bool)

(assert (=> b!5325946 (= e!3308440 tp_is_empty!39223)))

(declare-fun b!5325949 () Bool)

(declare-fun tp!1482660 () Bool)

(declare-fun tp!1482661 () Bool)

(assert (=> b!5325949 (= e!3308440 (and tp!1482660 tp!1482661))))

(assert (= (and b!5324544 ((_ is ElementMatch!14985) (regOne!30483 (regOne!30483 r!7292)))) b!5325946))

(assert (= (and b!5324544 ((_ is Concat!23830) (regOne!30483 (regOne!30483 r!7292)))) b!5325947))

(assert (= (and b!5324544 ((_ is Star!14985) (regOne!30483 (regOne!30483 r!7292)))) b!5325948))

(assert (= (and b!5324544 ((_ is Union!14985) (regOne!30483 (regOne!30483 r!7292)))) b!5325949))

(declare-fun b!5325952 () Bool)

(declare-fun e!3308441 () Bool)

(declare-fun tp!1482668 () Bool)

(assert (=> b!5325952 (= e!3308441 tp!1482668)))

(assert (=> b!5324544 (= tp!1482353 e!3308441)))

(declare-fun b!5325951 () Bool)

(declare-fun tp!1482669 () Bool)

(declare-fun tp!1482667 () Bool)

(assert (=> b!5325951 (= e!3308441 (and tp!1482669 tp!1482667))))

(declare-fun b!5325950 () Bool)

(assert (=> b!5325950 (= e!3308441 tp_is_empty!39223)))

(declare-fun b!5325953 () Bool)

(declare-fun tp!1482665 () Bool)

(declare-fun tp!1482666 () Bool)

(assert (=> b!5325953 (= e!3308441 (and tp!1482665 tp!1482666))))

(assert (= (and b!5324544 ((_ is ElementMatch!14985) (regTwo!30483 (regOne!30483 r!7292)))) b!5325950))

(assert (= (and b!5324544 ((_ is Concat!23830) (regTwo!30483 (regOne!30483 r!7292)))) b!5325951))

(assert (= (and b!5324544 ((_ is Star!14985) (regTwo!30483 (regOne!30483 r!7292)))) b!5325952))

(assert (= (and b!5324544 ((_ is Union!14985) (regTwo!30483 (regOne!30483 r!7292)))) b!5325953))

(declare-fun b!5325956 () Bool)

(declare-fun e!3308442 () Bool)

(declare-fun tp!1482673 () Bool)

(assert (=> b!5325956 (= e!3308442 tp!1482673)))

(assert (=> b!5324547 (= tp!1482360 e!3308442)))

(declare-fun b!5325955 () Bool)

(declare-fun tp!1482674 () Bool)

(declare-fun tp!1482672 () Bool)

(assert (=> b!5325955 (= e!3308442 (and tp!1482674 tp!1482672))))

(declare-fun b!5325954 () Bool)

(assert (=> b!5325954 (= e!3308442 tp_is_empty!39223)))

(declare-fun b!5325957 () Bool)

(declare-fun tp!1482670 () Bool)

(declare-fun tp!1482671 () Bool)

(assert (=> b!5325957 (= e!3308442 (and tp!1482670 tp!1482671))))

(assert (= (and b!5324547 ((_ is ElementMatch!14985) (reg!15314 (regTwo!30483 r!7292)))) b!5325954))

(assert (= (and b!5324547 ((_ is Concat!23830) (reg!15314 (regTwo!30483 r!7292)))) b!5325955))

(assert (= (and b!5324547 ((_ is Star!14985) (reg!15314 (regTwo!30483 r!7292)))) b!5325956))

(assert (= (and b!5324547 ((_ is Union!14985) (reg!15314 (regTwo!30483 r!7292)))) b!5325957))

(declare-fun b!5325958 () Bool)

(declare-fun e!3308443 () Bool)

(declare-fun tp!1482675 () Bool)

(assert (=> b!5325958 (= e!3308443 (and tp_is_empty!39223 tp!1482675))))

(assert (=> b!5324554 (= tp!1482366 e!3308443)))

(assert (= (and b!5324554 ((_ is Cons!61131) (t!374468 (t!374468 s!2326)))) b!5325958))

(declare-fun b!5325961 () Bool)

(declare-fun e!3308444 () Bool)

(declare-fun tp!1482679 () Bool)

(assert (=> b!5325961 (= e!3308444 tp!1482679)))

(assert (=> b!5324546 (= tp!1482361 e!3308444)))

(declare-fun b!5325960 () Bool)

(declare-fun tp!1482680 () Bool)

(declare-fun tp!1482678 () Bool)

(assert (=> b!5325960 (= e!3308444 (and tp!1482680 tp!1482678))))

(declare-fun b!5325959 () Bool)

(assert (=> b!5325959 (= e!3308444 tp_is_empty!39223)))

(declare-fun b!5325962 () Bool)

(declare-fun tp!1482676 () Bool)

(declare-fun tp!1482677 () Bool)

(assert (=> b!5325962 (= e!3308444 (and tp!1482676 tp!1482677))))

(assert (= (and b!5324546 ((_ is ElementMatch!14985) (regOne!30482 (regTwo!30483 r!7292)))) b!5325959))

(assert (= (and b!5324546 ((_ is Concat!23830) (regOne!30482 (regTwo!30483 r!7292)))) b!5325960))

(assert (= (and b!5324546 ((_ is Star!14985) (regOne!30482 (regTwo!30483 r!7292)))) b!5325961))

(assert (= (and b!5324546 ((_ is Union!14985) (regOne!30482 (regTwo!30483 r!7292)))) b!5325962))

(declare-fun b!5325965 () Bool)

(declare-fun e!3308445 () Bool)

(declare-fun tp!1482684 () Bool)

(assert (=> b!5325965 (= e!3308445 tp!1482684)))

(assert (=> b!5324546 (= tp!1482359 e!3308445)))

(declare-fun b!5325964 () Bool)

(declare-fun tp!1482685 () Bool)

(declare-fun tp!1482683 () Bool)

(assert (=> b!5325964 (= e!3308445 (and tp!1482685 tp!1482683))))

(declare-fun b!5325963 () Bool)

(assert (=> b!5325963 (= e!3308445 tp_is_empty!39223)))

(declare-fun b!5325966 () Bool)

(declare-fun tp!1482681 () Bool)

(declare-fun tp!1482682 () Bool)

(assert (=> b!5325966 (= e!3308445 (and tp!1482681 tp!1482682))))

(assert (= (and b!5324546 ((_ is ElementMatch!14985) (regTwo!30482 (regTwo!30483 r!7292)))) b!5325963))

(assert (= (and b!5324546 ((_ is Concat!23830) (regTwo!30482 (regTwo!30483 r!7292)))) b!5325964))

(assert (= (and b!5324546 ((_ is Star!14985) (regTwo!30482 (regTwo!30483 r!7292)))) b!5325965))

(assert (= (and b!5324546 ((_ is Union!14985) (regTwo!30482 (regTwo!30483 r!7292)))) b!5325966))

(declare-fun b!5325969 () Bool)

(declare-fun e!3308446 () Bool)

(declare-fun tp!1482689 () Bool)

(assert (=> b!5325969 (= e!3308446 tp!1482689)))

(assert (=> b!5324575 (= tp!1482384 e!3308446)))

(declare-fun b!5325968 () Bool)

(declare-fun tp!1482690 () Bool)

(declare-fun tp!1482688 () Bool)

(assert (=> b!5325968 (= e!3308446 (and tp!1482690 tp!1482688))))

(declare-fun b!5325967 () Bool)

(assert (=> b!5325967 (= e!3308446 tp_is_empty!39223)))

(declare-fun b!5325970 () Bool)

(declare-fun tp!1482686 () Bool)

(declare-fun tp!1482687 () Bool)

(assert (=> b!5325970 (= e!3308446 (and tp!1482686 tp!1482687))))

(assert (= (and b!5324575 ((_ is ElementMatch!14985) (regOne!30483 (regOne!30482 r!7292)))) b!5325967))

(assert (= (and b!5324575 ((_ is Concat!23830) (regOne!30483 (regOne!30482 r!7292)))) b!5325968))

(assert (= (and b!5324575 ((_ is Star!14985) (regOne!30483 (regOne!30482 r!7292)))) b!5325969))

(assert (= (and b!5324575 ((_ is Union!14985) (regOne!30483 (regOne!30482 r!7292)))) b!5325970))

(declare-fun b!5325973 () Bool)

(declare-fun e!3308447 () Bool)

(declare-fun tp!1482694 () Bool)

(assert (=> b!5325973 (= e!3308447 tp!1482694)))

(assert (=> b!5324575 (= tp!1482385 e!3308447)))

(declare-fun b!5325972 () Bool)

(declare-fun tp!1482695 () Bool)

(declare-fun tp!1482693 () Bool)

(assert (=> b!5325972 (= e!3308447 (and tp!1482695 tp!1482693))))

(declare-fun b!5325971 () Bool)

(assert (=> b!5325971 (= e!3308447 tp_is_empty!39223)))

(declare-fun b!5325974 () Bool)

(declare-fun tp!1482691 () Bool)

(declare-fun tp!1482692 () Bool)

(assert (=> b!5325974 (= e!3308447 (and tp!1482691 tp!1482692))))

(assert (= (and b!5324575 ((_ is ElementMatch!14985) (regTwo!30483 (regOne!30482 r!7292)))) b!5325971))

(assert (= (and b!5324575 ((_ is Concat!23830) (regTwo!30483 (regOne!30482 r!7292)))) b!5325972))

(assert (= (and b!5324575 ((_ is Star!14985) (regTwo!30483 (regOne!30482 r!7292)))) b!5325973))

(assert (= (and b!5324575 ((_ is Union!14985) (regTwo!30483 (regOne!30482 r!7292)))) b!5325974))

(declare-fun b!5325977 () Bool)

(declare-fun e!3308448 () Bool)

(declare-fun tp!1482699 () Bool)

(assert (=> b!5325977 (= e!3308448 tp!1482699)))

(assert (=> b!5324530 (= tp!1482340 e!3308448)))

(declare-fun b!5325976 () Bool)

(declare-fun tp!1482700 () Bool)

(declare-fun tp!1482698 () Bool)

(assert (=> b!5325976 (= e!3308448 (and tp!1482700 tp!1482698))))

(declare-fun b!5325975 () Bool)

(assert (=> b!5325975 (= e!3308448 tp_is_empty!39223)))

(declare-fun b!5325978 () Bool)

(declare-fun tp!1482696 () Bool)

(declare-fun tp!1482697 () Bool)

(assert (=> b!5325978 (= e!3308448 (and tp!1482696 tp!1482697))))

(assert (= (and b!5324530 ((_ is ElementMatch!14985) (h!67578 (exprs!4869 setElem!34289)))) b!5325975))

(assert (= (and b!5324530 ((_ is Concat!23830) (h!67578 (exprs!4869 setElem!34289)))) b!5325976))

(assert (= (and b!5324530 ((_ is Star!14985) (h!67578 (exprs!4869 setElem!34289)))) b!5325977))

(assert (= (and b!5324530 ((_ is Union!14985) (h!67578 (exprs!4869 setElem!34289)))) b!5325978))

(declare-fun b!5325979 () Bool)

(declare-fun e!3308449 () Bool)

(declare-fun tp!1482701 () Bool)

(declare-fun tp!1482702 () Bool)

(assert (=> b!5325979 (= e!3308449 (and tp!1482701 tp!1482702))))

(assert (=> b!5324530 (= tp!1482341 e!3308449)))

(assert (= (and b!5324530 ((_ is Cons!61130) (t!374467 (exprs!4869 setElem!34289)))) b!5325979))

(declare-fun b!5325982 () Bool)

(declare-fun e!3308450 () Bool)

(declare-fun tp!1482706 () Bool)

(assert (=> b!5325982 (= e!3308450 tp!1482706)))

(assert (=> b!5324573 (= tp!1482388 e!3308450)))

(declare-fun b!5325981 () Bool)

(declare-fun tp!1482707 () Bool)

(declare-fun tp!1482705 () Bool)

(assert (=> b!5325981 (= e!3308450 (and tp!1482707 tp!1482705))))

(declare-fun b!5325980 () Bool)

(assert (=> b!5325980 (= e!3308450 tp_is_empty!39223)))

(declare-fun b!5325983 () Bool)

(declare-fun tp!1482703 () Bool)

(declare-fun tp!1482704 () Bool)

(assert (=> b!5325983 (= e!3308450 (and tp!1482703 tp!1482704))))

(assert (= (and b!5324573 ((_ is ElementMatch!14985) (regOne!30482 (regOne!30482 r!7292)))) b!5325980))

(assert (= (and b!5324573 ((_ is Concat!23830) (regOne!30482 (regOne!30482 r!7292)))) b!5325981))

(assert (= (and b!5324573 ((_ is Star!14985) (regOne!30482 (regOne!30482 r!7292)))) b!5325982))

(assert (= (and b!5324573 ((_ is Union!14985) (regOne!30482 (regOne!30482 r!7292)))) b!5325983))

(declare-fun b!5325986 () Bool)

(declare-fun e!3308451 () Bool)

(declare-fun tp!1482711 () Bool)

(assert (=> b!5325986 (= e!3308451 tp!1482711)))

(assert (=> b!5324573 (= tp!1482386 e!3308451)))

(declare-fun b!5325985 () Bool)

(declare-fun tp!1482712 () Bool)

(declare-fun tp!1482710 () Bool)

(assert (=> b!5325985 (= e!3308451 (and tp!1482712 tp!1482710))))

(declare-fun b!5325984 () Bool)

(assert (=> b!5325984 (= e!3308451 tp_is_empty!39223)))

(declare-fun b!5325987 () Bool)

(declare-fun tp!1482708 () Bool)

(declare-fun tp!1482709 () Bool)

(assert (=> b!5325987 (= e!3308451 (and tp!1482708 tp!1482709))))

(assert (= (and b!5324573 ((_ is ElementMatch!14985) (regTwo!30482 (regOne!30482 r!7292)))) b!5325984))

(assert (= (and b!5324573 ((_ is Concat!23830) (regTwo!30482 (regOne!30482 r!7292)))) b!5325985))

(assert (= (and b!5324573 ((_ is Star!14985) (regTwo!30482 (regOne!30482 r!7292)))) b!5325986))

(assert (= (and b!5324573 ((_ is Union!14985) (regTwo!30482 (regOne!30482 r!7292)))) b!5325987))

(declare-fun b!5325990 () Bool)

(declare-fun e!3308452 () Bool)

(declare-fun tp!1482716 () Bool)

(assert (=> b!5325990 (= e!3308452 tp!1482716)))

(assert (=> b!5324574 (= tp!1482387 e!3308452)))

(declare-fun b!5325989 () Bool)

(declare-fun tp!1482717 () Bool)

(declare-fun tp!1482715 () Bool)

(assert (=> b!5325989 (= e!3308452 (and tp!1482717 tp!1482715))))

(declare-fun b!5325988 () Bool)

(assert (=> b!5325988 (= e!3308452 tp_is_empty!39223)))

(declare-fun b!5325991 () Bool)

(declare-fun tp!1482713 () Bool)

(declare-fun tp!1482714 () Bool)

(assert (=> b!5325991 (= e!3308452 (and tp!1482713 tp!1482714))))

(assert (= (and b!5324574 ((_ is ElementMatch!14985) (reg!15314 (regOne!30482 r!7292)))) b!5325988))

(assert (= (and b!5324574 ((_ is Concat!23830) (reg!15314 (regOne!30482 r!7292)))) b!5325989))

(assert (= (and b!5324574 ((_ is Star!14985) (reg!15314 (regOne!30482 r!7292)))) b!5325990))

(assert (= (and b!5324574 ((_ is Union!14985) (reg!15314 (regOne!30482 r!7292)))) b!5325991))

(declare-fun b_lambda!204883 () Bool)

(assert (= b_lambda!204817 (or d!1709972 b_lambda!204883)))

(declare-fun bs!1234662 () Bool)

(declare-fun d!1710634 () Bool)

(assert (= bs!1234662 (and d!1710634 d!1709972)))

(assert (=> bs!1234662 (= (dynLambda!24169 lambda!271755 (h!67578 lt!2172850)) (validRegex!6721 (h!67578 lt!2172850)))))

(declare-fun m!6360156 () Bool)

(assert (=> bs!1234662 m!6360156))

(assert (=> b!5324939 d!1710634))

(declare-fun b_lambda!204885 () Bool)

(assert (= b_lambda!204879 (or b!5323978 b_lambda!204885)))

(declare-fun bs!1234663 () Bool)

(declare-fun d!1710636 () Bool)

(assert (= bs!1234663 (and d!1710636 b!5323978)))

(assert (=> bs!1234663 (= (dynLambda!24173 lambda!271715 (h!67580 lt!2172714)) (>= lt!2172775 (contextDepth!54 (h!67580 lt!2172714))))))

(assert (=> bs!1234663 m!6358404))

(assert (=> b!5325870 d!1710636))

(declare-fun b_lambda!204887 () Bool)

(assert (= b_lambda!204827 (or d!1709970 b_lambda!204887)))

(declare-fun bs!1234664 () Bool)

(declare-fun d!1710638 () Bool)

(assert (= bs!1234664 (and d!1710638 d!1709970)))

(assert (=> bs!1234664 (= (dynLambda!24169 lambda!271752 (h!67578 (unfocusZipperList!427 zl!343))) (validRegex!6721 (h!67578 (unfocusZipperList!427 zl!343))))))

(declare-fun m!6360158 () Bool)

(assert (=> bs!1234664 m!6360158))

(assert (=> b!5325274 d!1710638))

(declare-fun b_lambda!204889 () Bool)

(assert (= b_lambda!204875 (or b!5323675 b_lambda!204889)))

(assert (=> d!1710604 d!1710002))

(declare-fun b_lambda!204891 () Bool)

(assert (= b_lambda!204871 (or b!5323686 b_lambda!204891)))

(declare-fun bs!1234665 () Bool)

(declare-fun d!1710640 () Bool)

(assert (= bs!1234665 (and d!1710640 b!5323686)))

(assert (=> bs!1234665 (= (dynLambda!24169 lambda!271673 (h!67578 (t!374467 lt!2172697))) (validRegex!6721 (h!67578 (t!374467 lt!2172697))))))

(declare-fun m!6360160 () Bool)

(assert (=> bs!1234665 m!6360160))

(assert (=> b!5325760 d!1710640))

(declare-fun b_lambda!204893 () Bool)

(assert (= b_lambda!204839 (or d!1709812 b_lambda!204893)))

(declare-fun bs!1234666 () Bool)

(declare-fun d!1710642 () Bool)

(assert (= bs!1234666 (and d!1710642 d!1709812)))

(assert (=> bs!1234666 (= (dynLambda!24169 lambda!271706 (h!67578 (exprs!4869 (h!67580 zl!343)))) (validRegex!6721 (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(declare-fun m!6360162 () Bool)

(assert (=> bs!1234666 m!6360162))

(assert (=> b!5325408 d!1710642))

(declare-fun b_lambda!204895 () Bool)

(assert (= b_lambda!204873 (or b!5323675 b_lambda!204895)))

(assert (=> d!1710580 d!1710004))

(declare-fun b_lambda!204897 () Bool)

(assert (= b_lambda!204869 (or d!1709986 b_lambda!204897)))

(declare-fun bs!1234667 () Bool)

(declare-fun d!1710644 () Bool)

(assert (= bs!1234667 (and d!1710644 d!1709986)))

(assert (=> bs!1234667 (= (dynLambda!24169 lambda!271762 (h!67578 lt!2172704)) (validRegex!6721 (h!67578 lt!2172704)))))

(declare-fun m!6360164 () Bool)

(assert (=> bs!1234667 m!6360164))

(assert (=> b!5325758 d!1710644))

(declare-fun b_lambda!204899 () Bool)

(assert (= b_lambda!204841 (or b!5323992 b_lambda!204899)))

(declare-fun bs!1234668 () Bool)

(declare-fun d!1710646 () Bool)

(assert (= bs!1234668 (and d!1710646 b!5323992)))

(assert (=> bs!1234668 (= (dynLambda!24173 lambda!271717 (h!67580 (t!374469 zl!343))) (>= lt!2172782 (contextDepth!54 (h!67580 (t!374469 zl!343)))))))

(assert (=> bs!1234668 m!6359792))

(assert (=> b!5325503 d!1710646))

(declare-fun b_lambda!204901 () Bool)

(assert (= b_lambda!204835 (or b!5323976 b_lambda!204901)))

(declare-fun bs!1234669 () Bool)

(declare-fun d!1710648 () Bool)

(assert (= bs!1234669 (and d!1710648 b!5323976)))

(assert (=> bs!1234669 (= (dynLambda!24173 lambda!271714 (h!67580 (t!374469 lt!2172714))) (>= lt!2172778 (contextDepth!54 (h!67580 (t!374469 lt!2172714)))))))

(assert (=> bs!1234669 m!6359668))

(assert (=> b!5325360 d!1710648))

(declare-fun b_lambda!204903 () Bool)

(assert (= b_lambda!204821 (or d!1709998 b_lambda!204903)))

(declare-fun bs!1234670 () Bool)

(declare-fun d!1710650 () Bool)

(assert (= bs!1234670 (and d!1710650 d!1709998)))

(assert (=> bs!1234670 (= (dynLambda!24169 lambda!271765 (h!67578 (exprs!4869 setElem!34289))) (validRegex!6721 (h!67578 (exprs!4869 setElem!34289))))))

(declare-fun m!6360166 () Bool)

(assert (=> bs!1234670 m!6360166))

(assert (=> b!5325038 d!1710650))

(declare-fun b_lambda!204905 () Bool)

(assert (= b_lambda!204881 (or b!5323994 b_lambda!204905)))

(declare-fun bs!1234671 () Bool)

(declare-fun d!1710652 () Bool)

(assert (= bs!1234671 (and d!1710652 b!5323994)))

(assert (=> bs!1234671 (= (dynLambda!24173 lambda!271718 (h!67580 zl!343)) (>= lt!2172779 (contextDepth!54 (h!67580 zl!343))))))

(assert (=> bs!1234671 m!6358430))

(assert (=> b!5325872 d!1710652))

(declare-fun b_lambda!204907 () Bool)

(assert (= b_lambda!204877 (or d!1709946 b_lambda!204907)))

(declare-fun bs!1234672 () Bool)

(declare-fun d!1710654 () Bool)

(assert (= bs!1234672 (and d!1710654 d!1709946)))

(assert (=> bs!1234672 (= (dynLambda!24169 lambda!271746 (h!67578 (exprs!4869 (h!67580 zl!343)))) (validRegex!6721 (h!67578 (exprs!4869 (h!67580 zl!343)))))))

(assert (=> bs!1234672 m!6360162))

(assert (=> b!5325804 d!1710654))

(check-sat (not d!1710524) (not b!5325445) (not b!5325138) (not d!1710602) (not b!5325865) (not b!5325914) (not b!5325168) (not b!5325983) (not bm!380452) (not bm!380310) (not b!5325679) (not bm!380502) (not b!5324985) (not bm!380309) (not b!5325146) (not b!5325964) (not b!5325928) (not b!5325887) (not b!5325277) (not b!5325968) (not b!5325337) (not bm!380405) (not b!5325280) (not b!5325819) (not b!5324887) (not b!5325879) (not b!5325140) (not b!5325976) (not b!5325951) (not b_lambda!204901) (not b!5325650) (not bs!1234666) (not bm!380325) (not b!5325897) (not b!5325875) (not d!1710248) (not b!5325009) tp_is_empty!39223 (not bm!380372) (not b!5325864) (not bm!380469) (not b!5325388) (not bm!380489) (not b!5325861) (not bm!380426) (not bm!380465) (not b!5325557) (not d!1710404) (not b!5325874) (not b!5325991) (not bm!380479) (not bm!380376) (not b!5325676) (not b!5325802) (not d!1710402) (not bm!380400) (not b!5325989) (not b!5325134) (not d!1710292) (not bm!380480) (not d!1710586) (not b!5324935) (not b_lambda!204899) (not bm!380464) (not bm!380474) (not b!5325727) (not b!5325813) (not bm!380509) (not b!5325701) (not b!5325917) (not b!5325063) (not b!5325278) (not b!5325930) (not bs!1234664) (not bs!1234668) (not b!5325805) (not bm!380341) (not bm!380381) (not bm!380385) (not setNonEmpty!34305) (not d!1710530) (not d!1710526) (not b!5325948) (not d!1710542) (not d!1710632) (not bm!380478) (not bm!380508) (not b!5324979) (not b!5325257) (not bm!380463) (not b!5325160) (not b!5325862) (not b!5325823) (not b_lambda!204801) (not bs!1234671) (not b!5325657) (not b!5325924) (not d!1710536) (not b!5325718) (not b_lambda!204903) (not d!1710544) (not bm!380506) (not b!5325882) (not b!5325108) (not b_lambda!204887) (not d!1710300) (not d!1710610) (not d!1710622) (not b!5325256) (not setNonEmpty!34304) (not b!5325851) (not b!5325001) (not bm!380322) (not d!1710388) (not d!1710458) (not d!1710534) (not b!5325361) (not b!5325956) (not d!1710358) (not bm!380484) (not bs!1234672) (not d!1710590) (not b!5325252) (not b!5325871) (not b!5325734) (not b!5325065) (not d!1710604) (not b!5325944) (not bm!380398) (not d!1710186) (not b!5324974) (not b!5325938) (not b!5325690) (not bm!380377) (not bm!380485) (not b!5325873) (not b!5324981) (not b_lambda!204907) (not bm!380490) (not b!5325680) (not bm!380382) (not bm!380501) (not b!5325921) (not b!5325916) (not b!5325807) (not b!5325684) (not d!1710204) (not bm!380362) (not b!5325939) (not b!5325726) (not b!5324973) (not b!5325559) (not d!1710446) (not b!5325634) (not b!5325811) (not d!1710294) (not b!5325841) (not b!5325972) (not b!5325922) (not bs!1234662) (not bm!380374) (not b!5325965) (not d!1710356) (not b!5325978) (not b!5325552) (not b!5325678) (not b!5325853) (not b!5325714) (not b!5325896) (not d!1710554) (not b!5325913) (not b!5325646) (not b!5325910) (not b!5325962) (not b!5325847) (not d!1710516) (not b!5325062) (not bm!380340) (not d!1710546) (not d!1710630) (not b!5325877) (not b!5325901) (not b!5325716) (not b!5325135) (not d!1710492) (not bm!380504) (not d!1710624) (not b_lambda!204885) (not b!5325142) (not bs!1234669) (not bm!380363) (not b!5325698) (not b!5325894) (not d!1710154) (not b!5325188) (not b!5325768) (not b!5324865) (not b!5325985) (not b!5325279) (not b!5324879) (not b!5325955) (not b!5325942) (not b!5325947) (not b!5325730) (not b!5325284) (not b_lambda!204905) (not b!5325272) (not b!5325184) (not b!5325833) (not b!5325276) (not d!1710146) (not b!5325551) (not b!5325713) (not b!5325977) (not bm!380366) (not b_lambda!204803) (not d!1710566) (not b!5325177) (not bs!1234667) (not b!5325555) (not b!5324977) (not b!5325960) (not b!5325958) (not b!5325936) (not bm!380368) (not d!1710528) (not b!5325909) (not bm!380513) (not setNonEmpty!34303) (not b_lambda!204883) (not b!5325987) (not b_lambda!204897) (not bm!380355) (not d!1710214) (not b!5325900) (not b!5325969) (not b!5325966) (not b!5325929) (not b!5325815) (not d!1710490) (not b!5325803) (not b!5325717) (not bm!380308) (not b_lambda!204891) (not b!5325979) (not b!5325395) (not bm!380495) (not bm!380500) (not bm!380380) (not b!5325986) (not b!5325859) (not bm!380369) (not b!5325721) (not b!5325759) (not b!5325925) (not b!5325918) (not bm!380512) (not b!5325738) (not b!5325039) (not b!5325932) (not b!5325808) (not bm!380404) (not b!5325981) (not b!5324863) (not b!5325878) (not b!5325898) (not b!5325689) (not bm!380496) (not bm!380425) (not b!5324866) (not b!5325883) (not bm!380424) (not b!5325406) (not b!5325066) (not d!1710608) (not b!5325719) (not d!1710266) (not b!5325702) (not b!5324871) (not b!5325890) (not d!1710352) (not bm!380421) (not bm!380373) (not d!1710564) (not b!5325904) (not b_lambda!204799) (not b!5325412) (not d!1710258) (not b!5325743) (not b!5325888) (not d!1710340) (not b!5325892) (not b!5325709) (not b!5325974) (not b!5325396) (not bm!380493) (not b!5325886) (not b!5325761) (not bm!380499) (not b!5325990) (not b!5325908) (not b!5325860) (not d!1710454) (not bm!380468) (not b!5325668) (not bs!1234665) (not b!5325952) (not b!5325940) (not b!5325700) (not b!5324867) (not b!5325699) (not b!5325880) (not b!5325131) (not b!5325824) (not bm!380333) (not b!5325259) (not b!5325798) (not b!5325410) (not b!5325154) (not b!5325703) (not b!5325884) (not b!5325563) (not b!5325982) (not b!5325937) (not b_lambda!204895) (not b!5325920) (not bm!380323) (not b_lambda!204889) (not b!5325779) (not b!5325283) (not d!1710166) (not bm!380486) (not b!5324870) (not b!5324940) (not d!1710550) (not b!5325710) (not b!5324878) (not b!5325863) (not b!5325934) (not bm!380324) (not b!5325933) (not b!5325905) (not b!5325961) (not b!5325409) (not d!1710540) (not d!1710592) (not bm!380402) (not b!5325697) (not b!5325848) (not b!5325902) (not b!5325335) (not d!1710514) (not bm!380503) (not b!5325949) (not b!5325084) (not b!5325889) (not d!1710556) (not b!5325855) (not bm!380475) (not d!1710412) (not b!5325372) (not d!1710538) (not d!1710460) (not b!5325677) (not b!5325159) (not b!5325926) (not b!5325912) (not d!1710588) (not d!1710580) (not b!5325945) (not bm!380483) (not b!5325868) (not b!5325906) (not d!1710252) (not b!5325504) (not b!5325275) (not b!5325957) (not b!5324864) (not b_lambda!204893) (not b!5325756) (not bs!1234663) (not d!1710594) (not d!1710532) (not b!5325119) (not d!1710512) (not b!5325732) (not bs!1234670) (not b!5325953) (not b!5325970) (not b!5325943) (not b!5325724) (not bm!380420) (not b!5325443) (not bm!380401) (not bm!380384) (not d!1710130) (not b!5325370) (not b!5325013) (not bm!380378) (not d!1710510) (not b!5325893) (not b!5325973) (not bm!380466) (not bm!380356) (not bm!380472))
(check-sat)
