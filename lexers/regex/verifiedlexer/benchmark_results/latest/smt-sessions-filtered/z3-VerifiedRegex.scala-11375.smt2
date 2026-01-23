; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!604522 () Bool)

(assert start!604522)

(declare-fun b!5953157 () Bool)

(assert (=> b!5953157 true))

(assert (=> b!5953157 true))

(declare-fun lambda!324999 () Int)

(declare-fun lambda!324998 () Int)

(assert (=> b!5953157 (not (= lambda!324999 lambda!324998))))

(assert (=> b!5953157 true))

(assert (=> b!5953157 true))

(declare-fun b!5953147 () Bool)

(assert (=> b!5953147 true))

(declare-fun e!3641723 () Bool)

(declare-fun e!3641717 () Bool)

(assert (=> b!5953147 (= e!3641723 e!3641717)))

(declare-fun res!2491963 () Bool)

(assert (=> b!5953147 (=> res!2491963 e!3641717)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32264 0))(
  ( (C!32265 (val!25834 Int)) )
))
(declare-datatypes ((Regex!15997 0))(
  ( (ElementMatch!15997 (c!1059438 C!32264)) (Concat!24842 (regOne!32506 Regex!15997) (regTwo!32506 Regex!15997)) (EmptyExpr!15997) (Star!15997 (reg!16326 Regex!15997)) (EmptyLang!15997) (Union!15997 (regOne!32507 Regex!15997) (regTwo!32507 Regex!15997)) )
))
(declare-datatypes ((List!64290 0))(
  ( (Nil!64166) (Cons!64166 (h!70614 Regex!15997) (t!377701 List!64290)) )
))
(declare-datatypes ((Context!10762 0))(
  ( (Context!10763 (exprs!5881 List!64290)) )
))
(declare-fun lt!2313734 () (InoxSet Context!10762))

(declare-fun lt!2313736 () (InoxSet Context!10762))

(assert (=> b!5953147 (= res!2491963 (not (= lt!2313734 lt!2313736)))))

(declare-datatypes ((List!64291 0))(
  ( (Nil!64167) (Cons!64167 (h!70615 C!32264) (t!377702 List!64291)) )
))
(declare-fun s!2326 () List!64291)

(declare-fun z!1189 () (InoxSet Context!10762))

(declare-fun lambda!325000 () Int)

(declare-datatypes ((List!64292 0))(
  ( (Nil!64168) (Cons!64168 (h!70616 Context!10762) (t!377703 List!64292)) )
))
(declare-fun zl!343 () List!64292)

(declare-fun flatMap!1510 ((InoxSet Context!10762) Int) (InoxSet Context!10762))

(declare-fun derivationStepZipperUp!1173 (Context!10762 C!32264) (InoxSet Context!10762))

(assert (=> b!5953147 (= (flatMap!1510 z!1189 lambda!325000) (derivationStepZipperUp!1173 (h!70616 zl!343) (h!70615 s!2326)))))

(declare-datatypes ((Unit!157265 0))(
  ( (Unit!157266) )
))
(declare-fun lt!2313748 () Unit!157265)

(declare-fun lemmaFlatMapOnSingletonSet!1036 ((InoxSet Context!10762) Context!10762 Int) Unit!157265)

(assert (=> b!5953147 (= lt!2313748 (lemmaFlatMapOnSingletonSet!1036 z!1189 (h!70616 zl!343) lambda!325000))))

(declare-fun e!3641719 () Bool)

(declare-fun e!3641727 () Bool)

(declare-fun tp!1656404 () Bool)

(declare-fun b!5953148 () Bool)

(declare-fun inv!83239 (Context!10762) Bool)

(assert (=> b!5953148 (= e!3641719 (and (inv!83239 (h!70616 zl!343)) e!3641727 tp!1656404))))

(declare-fun b!5953149 () Bool)

(declare-fun e!3641721 () Bool)

(assert (=> b!5953149 (= e!3641717 e!3641721)))

(declare-fun res!2491975 () Bool)

(assert (=> b!5953149 (=> res!2491975 e!3641721)))

(declare-fun r!7292 () Regex!15997)

(declare-fun nullable!5992 (Regex!15997) Bool)

(assert (=> b!5953149 (= res!2491975 (not (nullable!5992 (regOne!32506 r!7292))))))

(declare-fun lt!2313757 () (InoxSet Context!10762))

(declare-fun lt!2313735 () Context!10762)

(declare-fun derivationStepZipperDown!1247 (Regex!15997 Context!10762 C!32264) (InoxSet Context!10762))

(assert (=> b!5953149 (= lt!2313757 (derivationStepZipperDown!1247 (regTwo!32506 r!7292) lt!2313735 (h!70615 s!2326)))))

(declare-fun lt!2313745 () (InoxSet Context!10762))

(declare-fun lt!2313746 () Context!10762)

(assert (=> b!5953149 (= lt!2313745 (derivationStepZipperDown!1247 (regOne!32506 r!7292) lt!2313746 (h!70615 s!2326)))))

(declare-fun lt!2313752 () (InoxSet Context!10762))

(assert (=> b!5953149 (= (flatMap!1510 lt!2313752 lambda!325000) (derivationStepZipperUp!1173 lt!2313746 (h!70615 s!2326)))))

(declare-fun lt!2313739 () Unit!157265)

(assert (=> b!5953149 (= lt!2313739 (lemmaFlatMapOnSingletonSet!1036 lt!2313752 lt!2313746 lambda!325000))))

(declare-fun lt!2313741 () (InoxSet Context!10762))

(declare-fun lt!2313738 () Context!10762)

(assert (=> b!5953149 (= (flatMap!1510 lt!2313741 lambda!325000) (derivationStepZipperUp!1173 lt!2313738 (h!70615 s!2326)))))

(declare-fun lt!2313742 () Unit!157265)

(assert (=> b!5953149 (= lt!2313742 (lemmaFlatMapOnSingletonSet!1036 lt!2313741 lt!2313738 lambda!325000))))

(declare-fun lt!2313737 () (InoxSet Context!10762))

(assert (=> b!5953149 (= lt!2313737 (derivationStepZipperUp!1173 lt!2313746 (h!70615 s!2326)))))

(declare-fun lt!2313733 () (InoxSet Context!10762))

(assert (=> b!5953149 (= lt!2313733 (derivationStepZipperUp!1173 lt!2313738 (h!70615 s!2326)))))

(assert (=> b!5953149 (= lt!2313752 (store ((as const (Array Context!10762 Bool)) false) lt!2313746 true))))

(declare-fun lt!2313756 () List!64290)

(assert (=> b!5953149 (= lt!2313746 (Context!10763 lt!2313756))))

(assert (=> b!5953149 (= lt!2313741 (store ((as const (Array Context!10762 Bool)) false) lt!2313738 true))))

(assert (=> b!5953149 (= lt!2313738 (Context!10763 (Cons!64166 (regOne!32506 r!7292) lt!2313756)))))

(assert (=> b!5953149 (= lt!2313756 (Cons!64166 (regTwo!32506 r!7292) Nil!64166))))

(declare-fun b!5953150 () Bool)

(declare-fun res!2491972 () Bool)

(declare-fun e!3641726 () Bool)

(assert (=> b!5953150 (=> res!2491972 e!3641726)))

(declare-fun isEmpty!36049 (List!64290) Bool)

(assert (=> b!5953150 (= res!2491972 (not (isEmpty!36049 (t!377701 (exprs!5881 (h!70616 zl!343))))))))

(declare-fun b!5953151 () Bool)

(declare-fun res!2491960 () Bool)

(declare-fun e!3641730 () Bool)

(assert (=> b!5953151 (=> res!2491960 e!3641730)))

(declare-fun generalisedConcat!1594 (List!64290) Regex!15997)

(assert (=> b!5953151 (= res!2491960 (not (= r!7292 (generalisedConcat!1594 (exprs!5881 (h!70616 zl!343))))))))

(declare-fun b!5953152 () Bool)

(declare-fun e!3641722 () Bool)

(declare-fun tp!1656398 () Bool)

(assert (=> b!5953152 (= e!3641722 tp!1656398)))

(declare-fun b!5953153 () Bool)

(declare-fun res!2491980 () Bool)

(assert (=> b!5953153 (=> res!2491980 e!3641730)))

(declare-fun isEmpty!36050 (List!64292) Bool)

(assert (=> b!5953153 (= res!2491980 (not (isEmpty!36050 (t!377703 zl!343))))))

(declare-fun b!5953154 () Bool)

(declare-fun res!2491974 () Bool)

(assert (=> b!5953154 (=> res!2491974 e!3641730)))

(get-info :version)

(assert (=> b!5953154 (= res!2491974 (not ((_ is Cons!64166) (exprs!5881 (h!70616 zl!343)))))))

(declare-fun b!5953155 () Bool)

(declare-fun e!3641718 () Bool)

(assert (=> b!5953155 (= e!3641718 (inv!83239 lt!2313746))))

(declare-fun b!5953156 () Bool)

(declare-fun e!3641720 () Bool)

(declare-fun matchZipper!2033 ((InoxSet Context!10762) List!64291) Bool)

(assert (=> b!5953156 (= e!3641720 (matchZipper!2033 lt!2313757 (t!377702 s!2326)))))

(assert (=> b!5953157 (= e!3641730 e!3641726)))

(declare-fun res!2491967 () Bool)

(assert (=> b!5953157 (=> res!2491967 e!3641726)))

(declare-fun lt!2313744 () Bool)

(declare-fun lt!2313760 () Bool)

(assert (=> b!5953157 (= res!2491967 (or (not (= lt!2313760 lt!2313744)) ((_ is Nil!64167) s!2326)))))

(declare-fun Exists!3067 (Int) Bool)

(assert (=> b!5953157 (= (Exists!3067 lambda!324998) (Exists!3067 lambda!324999))))

(declare-fun lt!2313732 () Unit!157265)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1604 (Regex!15997 Regex!15997 List!64291) Unit!157265)

(assert (=> b!5953157 (= lt!2313732 (lemmaExistCutMatchRandMatchRSpecEquivalent!1604 (regOne!32506 r!7292) (regTwo!32506 r!7292) s!2326))))

(assert (=> b!5953157 (= lt!2313744 (Exists!3067 lambda!324998))))

(declare-datatypes ((tuple2!65952 0))(
  ( (tuple2!65953 (_1!36279 List!64291) (_2!36279 List!64291)) )
))
(declare-datatypes ((Option!15888 0))(
  ( (None!15887) (Some!15887 (v!51990 tuple2!65952)) )
))
(declare-fun isDefined!12591 (Option!15888) Bool)

(declare-fun findConcatSeparation!2302 (Regex!15997 Regex!15997 List!64291 List!64291 List!64291) Option!15888)

(assert (=> b!5953157 (= lt!2313744 (isDefined!12591 (findConcatSeparation!2302 (regOne!32506 r!7292) (regTwo!32506 r!7292) Nil!64167 s!2326 s!2326)))))

(declare-fun lt!2313759 () Unit!157265)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2066 (Regex!15997 Regex!15997 List!64291) Unit!157265)

(assert (=> b!5953157 (= lt!2313759 (lemmaFindConcatSeparationEquivalentToExists!2066 (regOne!32506 r!7292) (regTwo!32506 r!7292) s!2326))))

(declare-fun b!5953158 () Bool)

(declare-fun e!3641728 () Bool)

(declare-fun tp_is_empty!41247 () Bool)

(assert (=> b!5953158 (= e!3641728 tp_is_empty!41247)))

(declare-fun setIsEmpty!40467 () Bool)

(declare-fun setRes!40467 () Bool)

(assert (=> setIsEmpty!40467 setRes!40467))

(declare-fun b!5953159 () Bool)

(declare-fun tp!1656395 () Bool)

(assert (=> b!5953159 (= e!3641727 tp!1656395)))

(declare-fun b!5953160 () Bool)

(declare-fun tp!1656397 () Bool)

(declare-fun tp!1656396 () Bool)

(assert (=> b!5953160 (= e!3641728 (and tp!1656397 tp!1656396))))

(declare-fun b!5953161 () Bool)

(declare-fun res!2491964 () Bool)

(assert (=> b!5953161 (=> res!2491964 e!3641718)))

(declare-fun lt!2313743 () Context!10762)

(declare-fun zipperDepth!246 (List!64292) Int)

(assert (=> b!5953161 (= res!2491964 (>= (zipperDepth!246 (Cons!64168 lt!2313738 Nil!64168)) (zipperDepth!246 (Cons!64168 lt!2313743 Nil!64168))))))

(declare-fun b!5953162 () Bool)

(assert (=> b!5953162 (= e!3641726 e!3641723)))

(declare-fun res!2491965 () Bool)

(assert (=> b!5953162 (=> res!2491965 e!3641723)))

(declare-fun lt!2313740 () (InoxSet Context!10762))

(assert (=> b!5953162 (= res!2491965 (not (= lt!2313740 lt!2313736)))))

(assert (=> b!5953162 (= lt!2313736 (derivationStepZipperDown!1247 r!7292 lt!2313735 (h!70615 s!2326)))))

(assert (=> b!5953162 (= lt!2313735 (Context!10763 Nil!64166))))

(assert (=> b!5953162 (= lt!2313740 (derivationStepZipperUp!1173 lt!2313743 (h!70615 s!2326)))))

(assert (=> b!5953162 (= lt!2313743 (Context!10763 (Cons!64166 r!7292 Nil!64166)))))

(declare-fun derivationStepZipper!1978 ((InoxSet Context!10762) C!32264) (InoxSet Context!10762))

(assert (=> b!5953162 (= lt!2313734 (derivationStepZipper!1978 z!1189 (h!70615 s!2326)))))

(declare-fun b!5953163 () Bool)

(declare-fun e!3641725 () Bool)

(assert (=> b!5953163 (= e!3641725 e!3641718)))

(declare-fun res!2491961 () Bool)

(assert (=> b!5953163 (=> res!2491961 e!3641718)))

(declare-fun lt!2313749 () Int)

(declare-fun lt!2313751 () Int)

(assert (=> b!5953163 (= res!2491961 (>= lt!2313749 lt!2313751))))

(declare-fun contextDepth!145 (Context!10762) Int)

(assert (=> b!5953163 (= lt!2313751 (contextDepth!145 lt!2313743))))

(assert (=> b!5953163 (= lt!2313749 (contextDepth!145 lt!2313738))))

(declare-fun b!5953164 () Bool)

(declare-fun e!3641729 () Bool)

(assert (=> b!5953164 (= e!3641729 (not e!3641730))))

(declare-fun res!2491968 () Bool)

(assert (=> b!5953164 (=> res!2491968 e!3641730)))

(assert (=> b!5953164 (= res!2491968 (not ((_ is Cons!64168) zl!343)))))

(declare-fun matchRSpec!3098 (Regex!15997 List!64291) Bool)

(assert (=> b!5953164 (= lt!2313760 (matchRSpec!3098 r!7292 s!2326))))

(declare-fun matchR!8180 (Regex!15997 List!64291) Bool)

(assert (=> b!5953164 (= lt!2313760 (matchR!8180 r!7292 s!2326))))

(declare-fun lt!2313755 () Unit!157265)

(declare-fun mainMatchTheorem!3098 (Regex!15997 List!64291) Unit!157265)

(assert (=> b!5953164 (= lt!2313755 (mainMatchTheorem!3098 r!7292 s!2326))))

(declare-fun b!5953165 () Bool)

(declare-fun res!2491978 () Bool)

(assert (=> b!5953165 (=> res!2491978 e!3641725)))

(assert (=> b!5953165 (= res!2491978 (not (= (matchZipper!2033 lt!2313741 s!2326) (matchZipper!2033 (derivationStepZipper!1978 lt!2313741 (h!70615 s!2326)) (t!377702 s!2326)))))))

(declare-fun b!5953166 () Bool)

(declare-fun res!2491966 () Bool)

(assert (=> b!5953166 (=> (not res!2491966) (not e!3641729))))

(declare-fun toList!9781 ((InoxSet Context!10762)) List!64292)

(assert (=> b!5953166 (= res!2491966 (= (toList!9781 z!1189) zl!343))))

(declare-fun b!5953167 () Bool)

(declare-fun res!2491979 () Bool)

(assert (=> b!5953167 (=> res!2491979 e!3641730)))

(declare-fun generalisedUnion!1841 (List!64290) Regex!15997)

(declare-fun unfocusZipperList!1418 (List!64292) List!64290)

(assert (=> b!5953167 (= res!2491979 (not (= r!7292 (generalisedUnion!1841 (unfocusZipperList!1418 zl!343)))))))

(declare-fun b!5953168 () Bool)

(declare-fun res!2491958 () Bool)

(assert (=> b!5953168 (=> res!2491958 e!3641730)))

(assert (=> b!5953168 (= res!2491958 (or ((_ is EmptyExpr!15997) r!7292) ((_ is EmptyLang!15997) r!7292) ((_ is ElementMatch!15997) r!7292) ((_ is Union!15997) r!7292) (not ((_ is Concat!24842) r!7292))))))

(declare-fun b!5953169 () Bool)

(declare-fun res!2491962 () Bool)

(assert (=> b!5953169 (=> res!2491962 e!3641725)))

(declare-fun lt!2313758 () (InoxSet Context!10762))

(assert (=> b!5953169 (= res!2491962 (or (not (= lt!2313733 ((_ map or) lt!2313745 lt!2313737))) (not (= lt!2313733 lt!2313758)) (not (= lt!2313733 lt!2313734))))))

(declare-fun b!5953170 () Bool)

(declare-fun res!2491959 () Bool)

(assert (=> b!5953170 (=> res!2491959 e!3641725)))

(assert (=> b!5953170 (= res!2491959 (not (= (matchZipper!2033 lt!2313752 s!2326) (matchZipper!2033 (derivationStepZipper!1978 lt!2313752 (h!70615 s!2326)) (t!377702 s!2326)))))))

(declare-fun b!5953171 () Bool)

(declare-fun e!3641724 () Bool)

(declare-fun tp!1656402 () Bool)

(assert (=> b!5953171 (= e!3641724 (and tp_is_empty!41247 tp!1656402))))

(declare-fun b!5953172 () Bool)

(declare-fun res!2491973 () Bool)

(assert (=> b!5953172 (=> (not res!2491973) (not e!3641729))))

(declare-fun unfocusZipper!1739 (List!64292) Regex!15997)

(assert (=> b!5953172 (= res!2491973 (= r!7292 (unfocusZipper!1739 zl!343)))))

(declare-fun setNonEmpty!40467 () Bool)

(declare-fun setElem!40467 () Context!10762)

(declare-fun tp!1656401 () Bool)

(assert (=> setNonEmpty!40467 (= setRes!40467 (and tp!1656401 (inv!83239 setElem!40467) e!3641722))))

(declare-fun setRest!40467 () (InoxSet Context!10762))

(assert (=> setNonEmpty!40467 (= z!1189 ((_ map or) (store ((as const (Array Context!10762 Bool)) false) setElem!40467 true) setRest!40467))))

(declare-fun res!2491971 () Bool)

(assert (=> start!604522 (=> (not res!2491971) (not e!3641729))))

(declare-fun validRegex!7733 (Regex!15997) Bool)

(assert (=> start!604522 (= res!2491971 (validRegex!7733 r!7292))))

(assert (=> start!604522 e!3641729))

(assert (=> start!604522 e!3641728))

(declare-fun condSetEmpty!40467 () Bool)

(assert (=> start!604522 (= condSetEmpty!40467 (= z!1189 ((as const (Array Context!10762 Bool)) false)))))

(assert (=> start!604522 setRes!40467))

(assert (=> start!604522 e!3641719))

(assert (=> start!604522 e!3641724))

(declare-fun b!5953173 () Bool)

(declare-fun e!3641716 () Bool)

(assert (=> b!5953173 (= e!3641721 e!3641716)))

(declare-fun res!2491977 () Bool)

(assert (=> b!5953173 (=> res!2491977 e!3641716)))

(assert (=> b!5953173 (= res!2491977 (not (= lt!2313734 lt!2313758)))))

(assert (=> b!5953173 (= lt!2313758 ((_ map or) lt!2313745 lt!2313757))))

(declare-fun b!5953174 () Bool)

(declare-fun tp!1656399 () Bool)

(assert (=> b!5953174 (= e!3641728 tp!1656399)))

(declare-fun b!5953175 () Bool)

(declare-fun tp!1656400 () Bool)

(declare-fun tp!1656403 () Bool)

(assert (=> b!5953175 (= e!3641728 (and tp!1656400 tp!1656403))))

(declare-fun b!5953176 () Bool)

(assert (=> b!5953176 (= e!3641716 e!3641725)))

(declare-fun res!2491976 () Bool)

(assert (=> b!5953176 (=> res!2491976 e!3641725)))

(declare-fun lt!2313754 () Bool)

(assert (=> b!5953176 (= res!2491976 (not (= lt!2313754 (matchZipper!2033 lt!2313734 (t!377702 s!2326)))))))

(declare-fun lt!2313747 () Bool)

(assert (=> b!5953176 (= lt!2313747 lt!2313754)))

(assert (=> b!5953176 (= lt!2313754 e!3641720)))

(declare-fun res!2491969 () Bool)

(assert (=> b!5953176 (=> res!2491969 e!3641720)))

(declare-fun lt!2313753 () Bool)

(assert (=> b!5953176 (= res!2491969 lt!2313753)))

(assert (=> b!5953176 (= lt!2313747 (matchZipper!2033 lt!2313758 (t!377702 s!2326)))))

(assert (=> b!5953176 (= lt!2313753 (matchZipper!2033 lt!2313745 (t!377702 s!2326)))))

(declare-fun lt!2313750 () Unit!157265)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!864 ((InoxSet Context!10762) (InoxSet Context!10762) List!64291) Unit!157265)

(assert (=> b!5953176 (= lt!2313750 (lemmaZipperConcatMatchesSameAsBothZippers!864 lt!2313745 lt!2313757 (t!377702 s!2326)))))

(declare-fun b!5953177 () Bool)

(declare-fun res!2491970 () Bool)

(assert (=> b!5953177 (=> res!2491970 e!3641718)))

(assert (=> b!5953177 (= res!2491970 (>= (contextDepth!145 lt!2313746) lt!2313751))))

(assert (= (and start!604522 res!2491971) b!5953166))

(assert (= (and b!5953166 res!2491966) b!5953172))

(assert (= (and b!5953172 res!2491973) b!5953164))

(assert (= (and b!5953164 (not res!2491968)) b!5953153))

(assert (= (and b!5953153 (not res!2491980)) b!5953151))

(assert (= (and b!5953151 (not res!2491960)) b!5953154))

(assert (= (and b!5953154 (not res!2491974)) b!5953167))

(assert (= (and b!5953167 (not res!2491979)) b!5953168))

(assert (= (and b!5953168 (not res!2491958)) b!5953157))

(assert (= (and b!5953157 (not res!2491967)) b!5953150))

(assert (= (and b!5953150 (not res!2491972)) b!5953162))

(assert (= (and b!5953162 (not res!2491965)) b!5953147))

(assert (= (and b!5953147 (not res!2491963)) b!5953149))

(assert (= (and b!5953149 (not res!2491975)) b!5953173))

(assert (= (and b!5953173 (not res!2491977)) b!5953176))

(assert (= (and b!5953176 (not res!2491969)) b!5953156))

(assert (= (and b!5953176 (not res!2491976)) b!5953169))

(assert (= (and b!5953169 (not res!2491962)) b!5953165))

(assert (= (and b!5953165 (not res!2491978)) b!5953170))

(assert (= (and b!5953170 (not res!2491959)) b!5953163))

(assert (= (and b!5953163 (not res!2491961)) b!5953161))

(assert (= (and b!5953161 (not res!2491964)) b!5953177))

(assert (= (and b!5953177 (not res!2491970)) b!5953155))

(assert (= (and start!604522 ((_ is ElementMatch!15997) r!7292)) b!5953158))

(assert (= (and start!604522 ((_ is Concat!24842) r!7292)) b!5953160))

(assert (= (and start!604522 ((_ is Star!15997) r!7292)) b!5953174))

(assert (= (and start!604522 ((_ is Union!15997) r!7292)) b!5953175))

(assert (= (and start!604522 condSetEmpty!40467) setIsEmpty!40467))

(assert (= (and start!604522 (not condSetEmpty!40467)) setNonEmpty!40467))

(assert (= setNonEmpty!40467 b!5953152))

(assert (= b!5953148 b!5953159))

(assert (= (and start!604522 ((_ is Cons!64168) zl!343)) b!5953148))

(assert (= (and start!604522 ((_ is Cons!64167) s!2326)) b!5953171))

(declare-fun m!6840598 () Bool)

(assert (=> b!5953153 m!6840598))

(declare-fun m!6840600 () Bool)

(assert (=> b!5953166 m!6840600))

(declare-fun m!6840602 () Bool)

(assert (=> b!5953147 m!6840602))

(declare-fun m!6840604 () Bool)

(assert (=> b!5953147 m!6840604))

(declare-fun m!6840606 () Bool)

(assert (=> b!5953147 m!6840606))

(declare-fun m!6840608 () Bool)

(assert (=> b!5953157 m!6840608))

(declare-fun m!6840610 () Bool)

(assert (=> b!5953157 m!6840610))

(declare-fun m!6840612 () Bool)

(assert (=> b!5953157 m!6840612))

(declare-fun m!6840614 () Bool)

(assert (=> b!5953157 m!6840614))

(assert (=> b!5953157 m!6840614))

(declare-fun m!6840616 () Bool)

(assert (=> b!5953157 m!6840616))

(assert (=> b!5953157 m!6840610))

(declare-fun m!6840618 () Bool)

(assert (=> b!5953157 m!6840618))

(declare-fun m!6840620 () Bool)

(assert (=> b!5953151 m!6840620))

(declare-fun m!6840622 () Bool)

(assert (=> setNonEmpty!40467 m!6840622))

(declare-fun m!6840624 () Bool)

(assert (=> b!5953155 m!6840624))

(declare-fun m!6840626 () Bool)

(assert (=> b!5953149 m!6840626))

(declare-fun m!6840628 () Bool)

(assert (=> b!5953149 m!6840628))

(declare-fun m!6840630 () Bool)

(assert (=> b!5953149 m!6840630))

(declare-fun m!6840632 () Bool)

(assert (=> b!5953149 m!6840632))

(declare-fun m!6840634 () Bool)

(assert (=> b!5953149 m!6840634))

(declare-fun m!6840636 () Bool)

(assert (=> b!5953149 m!6840636))

(declare-fun m!6840638 () Bool)

(assert (=> b!5953149 m!6840638))

(declare-fun m!6840640 () Bool)

(assert (=> b!5953149 m!6840640))

(declare-fun m!6840642 () Bool)

(assert (=> b!5953149 m!6840642))

(declare-fun m!6840644 () Bool)

(assert (=> b!5953149 m!6840644))

(declare-fun m!6840646 () Bool)

(assert (=> b!5953149 m!6840646))

(declare-fun m!6840648 () Bool)

(assert (=> b!5953172 m!6840648))

(declare-fun m!6840650 () Bool)

(assert (=> b!5953163 m!6840650))

(declare-fun m!6840652 () Bool)

(assert (=> b!5953163 m!6840652))

(declare-fun m!6840654 () Bool)

(assert (=> b!5953148 m!6840654))

(declare-fun m!6840656 () Bool)

(assert (=> b!5953150 m!6840656))

(declare-fun m!6840658 () Bool)

(assert (=> b!5953167 m!6840658))

(assert (=> b!5953167 m!6840658))

(declare-fun m!6840660 () Bool)

(assert (=> b!5953167 m!6840660))

(declare-fun m!6840662 () Bool)

(assert (=> b!5953156 m!6840662))

(declare-fun m!6840664 () Bool)

(assert (=> b!5953164 m!6840664))

(declare-fun m!6840666 () Bool)

(assert (=> b!5953164 m!6840666))

(declare-fun m!6840668 () Bool)

(assert (=> b!5953164 m!6840668))

(declare-fun m!6840670 () Bool)

(assert (=> b!5953170 m!6840670))

(declare-fun m!6840672 () Bool)

(assert (=> b!5953170 m!6840672))

(assert (=> b!5953170 m!6840672))

(declare-fun m!6840674 () Bool)

(assert (=> b!5953170 m!6840674))

(declare-fun m!6840676 () Bool)

(assert (=> b!5953176 m!6840676))

(declare-fun m!6840678 () Bool)

(assert (=> b!5953176 m!6840678))

(declare-fun m!6840680 () Bool)

(assert (=> b!5953176 m!6840680))

(declare-fun m!6840682 () Bool)

(assert (=> b!5953176 m!6840682))

(declare-fun m!6840684 () Bool)

(assert (=> b!5953165 m!6840684))

(declare-fun m!6840686 () Bool)

(assert (=> b!5953165 m!6840686))

(assert (=> b!5953165 m!6840686))

(declare-fun m!6840688 () Bool)

(assert (=> b!5953165 m!6840688))

(declare-fun m!6840690 () Bool)

(assert (=> b!5953162 m!6840690))

(declare-fun m!6840692 () Bool)

(assert (=> b!5953162 m!6840692))

(declare-fun m!6840694 () Bool)

(assert (=> b!5953162 m!6840694))

(declare-fun m!6840696 () Bool)

(assert (=> b!5953177 m!6840696))

(declare-fun m!6840698 () Bool)

(assert (=> b!5953161 m!6840698))

(declare-fun m!6840700 () Bool)

(assert (=> b!5953161 m!6840700))

(declare-fun m!6840702 () Bool)

(assert (=> start!604522 m!6840702))

(check-sat (not b!5953170) (not b!5953174) (not b!5953164) (not b!5953177) (not b!5953160) (not b!5953163) (not b!5953167) (not b!5953161) (not b!5953172) (not b!5953155) (not setNonEmpty!40467) (not b!5953162) (not b!5953147) (not b!5953171) (not b!5953159) (not b!5953166) (not b!5953149) (not b!5953152) (not b!5953150) (not b!5953176) (not b!5953175) (not b!5953157) (not start!604522) (not b!5953151) (not b!5953148) tp_is_empty!41247 (not b!5953153) (not b!5953156) (not b!5953165))
(check-sat)
(get-model)

(declare-fun b!5953241 () Bool)

(declare-fun e!3641768 () (InoxSet Context!10762))

(assert (=> b!5953241 (= e!3641768 ((as const (Array Context!10762 Bool)) false))))

(declare-fun d!1866272 () Bool)

(declare-fun c!1059465 () Bool)

(declare-fun e!3641767 () Bool)

(assert (=> d!1866272 (= c!1059465 e!3641767)))

(declare-fun res!2491998 () Bool)

(assert (=> d!1866272 (=> (not res!2491998) (not e!3641767))))

(assert (=> d!1866272 (= res!2491998 ((_ is Cons!64166) (exprs!5881 lt!2313746)))))

(declare-fun e!3641766 () (InoxSet Context!10762))

(assert (=> d!1866272 (= (derivationStepZipperUp!1173 lt!2313746 (h!70615 s!2326)) e!3641766)))

(declare-fun b!5953242 () Bool)

(declare-fun call!474251 () (InoxSet Context!10762))

(assert (=> b!5953242 (= e!3641768 call!474251)))

(declare-fun b!5953243 () Bool)

(assert (=> b!5953243 (= e!3641767 (nullable!5992 (h!70614 (exprs!5881 lt!2313746))))))

(declare-fun b!5953244 () Bool)

(assert (=> b!5953244 (= e!3641766 e!3641768)))

(declare-fun c!1059464 () Bool)

(assert (=> b!5953244 (= c!1059464 ((_ is Cons!64166) (exprs!5881 lt!2313746)))))

(declare-fun b!5953245 () Bool)

(assert (=> b!5953245 (= e!3641766 ((_ map or) call!474251 (derivationStepZipperUp!1173 (Context!10763 (t!377701 (exprs!5881 lt!2313746))) (h!70615 s!2326))))))

(declare-fun bm!474246 () Bool)

(assert (=> bm!474246 (= call!474251 (derivationStepZipperDown!1247 (h!70614 (exprs!5881 lt!2313746)) (Context!10763 (t!377701 (exprs!5881 lt!2313746))) (h!70615 s!2326)))))

(assert (= (and d!1866272 res!2491998) b!5953243))

(assert (= (and d!1866272 c!1059465) b!5953245))

(assert (= (and d!1866272 (not c!1059465)) b!5953244))

(assert (= (and b!5953244 c!1059464) b!5953242))

(assert (= (and b!5953244 (not c!1059464)) b!5953241))

(assert (= (or b!5953245 b!5953242) bm!474246))

(declare-fun m!6840800 () Bool)

(assert (=> b!5953243 m!6840800))

(declare-fun m!6840802 () Bool)

(assert (=> b!5953245 m!6840802))

(declare-fun m!6840804 () Bool)

(assert (=> bm!474246 m!6840804))

(assert (=> b!5953149 d!1866272))

(declare-fun b!5953286 () Bool)

(declare-fun e!3641795 () (InoxSet Context!10762))

(declare-fun call!474269 () (InoxSet Context!10762))

(assert (=> b!5953286 (= e!3641795 call!474269)))

(declare-fun bm!474259 () Bool)

(declare-fun call!474266 () (InoxSet Context!10762))

(declare-fun call!474268 () (InoxSet Context!10762))

(assert (=> bm!474259 (= call!474266 call!474268)))

(declare-fun b!5953287 () Bool)

(declare-fun e!3641793 () (InoxSet Context!10762))

(declare-fun e!3641796 () (InoxSet Context!10762))

(assert (=> b!5953287 (= e!3641793 e!3641796)))

(declare-fun c!1059480 () Bool)

(assert (=> b!5953287 (= c!1059480 ((_ is Union!15997) (regTwo!32506 r!7292)))))

(declare-fun c!1059483 () Bool)

(declare-fun bm!474260 () Bool)

(declare-fun call!474267 () List!64290)

(declare-fun c!1059482 () Bool)

(assert (=> bm!474260 (= call!474268 (derivationStepZipperDown!1247 (ite c!1059480 (regOne!32507 (regTwo!32506 r!7292)) (ite c!1059483 (regTwo!32506 (regTwo!32506 r!7292)) (ite c!1059482 (regOne!32506 (regTwo!32506 r!7292)) (reg!16326 (regTwo!32506 r!7292))))) (ite (or c!1059480 c!1059483) lt!2313735 (Context!10763 call!474267)) (h!70615 s!2326)))))

(declare-fun bm!474261 () Bool)

(assert (=> bm!474261 (= call!474269 call!474266)))

(declare-fun b!5953288 () Bool)

(declare-fun e!3641792 () (InoxSet Context!10762))

(assert (=> b!5953288 (= e!3641792 call!474269)))

(declare-fun b!5953289 () Bool)

(declare-fun e!3641791 () Bool)

(assert (=> b!5953289 (= e!3641791 (nullable!5992 (regOne!32506 (regTwo!32506 r!7292))))))

(declare-fun b!5953290 () Bool)

(declare-fun e!3641794 () (InoxSet Context!10762))

(declare-fun call!474265 () (InoxSet Context!10762))

(assert (=> b!5953290 (= e!3641794 ((_ map or) call!474265 call!474266))))

(declare-fun d!1866278 () Bool)

(declare-fun c!1059481 () Bool)

(assert (=> d!1866278 (= c!1059481 (and ((_ is ElementMatch!15997) (regTwo!32506 r!7292)) (= (c!1059438 (regTwo!32506 r!7292)) (h!70615 s!2326))))))

(assert (=> d!1866278 (= (derivationStepZipperDown!1247 (regTwo!32506 r!7292) lt!2313735 (h!70615 s!2326)) e!3641793)))

(declare-fun b!5953291 () Bool)

(assert (=> b!5953291 (= e!3641793 (store ((as const (Array Context!10762 Bool)) false) lt!2313735 true))))

(declare-fun call!474264 () List!64290)

(declare-fun bm!474262 () Bool)

(declare-fun $colon$colon!1883 (List!64290 Regex!15997) List!64290)

(assert (=> bm!474262 (= call!474264 ($colon$colon!1883 (exprs!5881 lt!2313735) (ite (or c!1059483 c!1059482) (regTwo!32506 (regTwo!32506 r!7292)) (regTwo!32506 r!7292))))))

(declare-fun b!5953292 () Bool)

(declare-fun c!1059484 () Bool)

(assert (=> b!5953292 (= c!1059484 ((_ is Star!15997) (regTwo!32506 r!7292)))))

(assert (=> b!5953292 (= e!3641795 e!3641792)))

(declare-fun b!5953293 () Bool)

(assert (=> b!5953293 (= e!3641792 ((as const (Array Context!10762 Bool)) false))))

(declare-fun b!5953294 () Bool)

(assert (=> b!5953294 (= e!3641794 e!3641795)))

(assert (=> b!5953294 (= c!1059482 ((_ is Concat!24842) (regTwo!32506 r!7292)))))

(declare-fun bm!474263 () Bool)

(assert (=> bm!474263 (= call!474267 call!474264)))

(declare-fun bm!474264 () Bool)

(assert (=> bm!474264 (= call!474265 (derivationStepZipperDown!1247 (ite c!1059480 (regTwo!32507 (regTwo!32506 r!7292)) (regOne!32506 (regTwo!32506 r!7292))) (ite c!1059480 lt!2313735 (Context!10763 call!474264)) (h!70615 s!2326)))))

(declare-fun b!5953295 () Bool)

(assert (=> b!5953295 (= c!1059483 e!3641791)))

(declare-fun res!2492011 () Bool)

(assert (=> b!5953295 (=> (not res!2492011) (not e!3641791))))

(assert (=> b!5953295 (= res!2492011 ((_ is Concat!24842) (regTwo!32506 r!7292)))))

(assert (=> b!5953295 (= e!3641796 e!3641794)))

(declare-fun b!5953296 () Bool)

(assert (=> b!5953296 (= e!3641796 ((_ map or) call!474268 call!474265))))

(assert (= (and d!1866278 c!1059481) b!5953291))

(assert (= (and d!1866278 (not c!1059481)) b!5953287))

(assert (= (and b!5953287 c!1059480) b!5953296))

(assert (= (and b!5953287 (not c!1059480)) b!5953295))

(assert (= (and b!5953295 res!2492011) b!5953289))

(assert (= (and b!5953295 c!1059483) b!5953290))

(assert (= (and b!5953295 (not c!1059483)) b!5953294))

(assert (= (and b!5953294 c!1059482) b!5953286))

(assert (= (and b!5953294 (not c!1059482)) b!5953292))

(assert (= (and b!5953292 c!1059484) b!5953288))

(assert (= (and b!5953292 (not c!1059484)) b!5953293))

(assert (= (or b!5953286 b!5953288) bm!474263))

(assert (= (or b!5953286 b!5953288) bm!474261))

(assert (= (or b!5953290 bm!474263) bm!474262))

(assert (= (or b!5953290 bm!474261) bm!474259))

(assert (= (or b!5953296 b!5953290) bm!474264))

(assert (= (or b!5953296 bm!474259) bm!474260))

(declare-fun m!6840806 () Bool)

(assert (=> b!5953289 m!6840806))

(declare-fun m!6840808 () Bool)

(assert (=> bm!474260 m!6840808))

(declare-fun m!6840810 () Bool)

(assert (=> bm!474262 m!6840810))

(declare-fun m!6840812 () Bool)

(assert (=> bm!474264 m!6840812))

(declare-fun m!6840814 () Bool)

(assert (=> b!5953291 m!6840814))

(assert (=> b!5953149 d!1866278))

(declare-fun b!5953297 () Bool)

(declare-fun e!3641801 () (InoxSet Context!10762))

(declare-fun call!474275 () (InoxSet Context!10762))

(assert (=> b!5953297 (= e!3641801 call!474275)))

(declare-fun bm!474265 () Bool)

(declare-fun call!474272 () (InoxSet Context!10762))

(declare-fun call!474274 () (InoxSet Context!10762))

(assert (=> bm!474265 (= call!474272 call!474274)))

(declare-fun b!5953298 () Bool)

(declare-fun e!3641799 () (InoxSet Context!10762))

(declare-fun e!3641802 () (InoxSet Context!10762))

(assert (=> b!5953298 (= e!3641799 e!3641802)))

(declare-fun c!1059485 () Bool)

(assert (=> b!5953298 (= c!1059485 ((_ is Union!15997) (regOne!32506 r!7292)))))

(declare-fun call!474273 () List!64290)

(declare-fun c!1059488 () Bool)

(declare-fun c!1059487 () Bool)

(declare-fun bm!474266 () Bool)

(assert (=> bm!474266 (= call!474274 (derivationStepZipperDown!1247 (ite c!1059485 (regOne!32507 (regOne!32506 r!7292)) (ite c!1059488 (regTwo!32506 (regOne!32506 r!7292)) (ite c!1059487 (regOne!32506 (regOne!32506 r!7292)) (reg!16326 (regOne!32506 r!7292))))) (ite (or c!1059485 c!1059488) lt!2313746 (Context!10763 call!474273)) (h!70615 s!2326)))))

(declare-fun bm!474267 () Bool)

(assert (=> bm!474267 (= call!474275 call!474272)))

(declare-fun b!5953299 () Bool)

(declare-fun e!3641798 () (InoxSet Context!10762))

(assert (=> b!5953299 (= e!3641798 call!474275)))

(declare-fun b!5953300 () Bool)

(declare-fun e!3641797 () Bool)

(assert (=> b!5953300 (= e!3641797 (nullable!5992 (regOne!32506 (regOne!32506 r!7292))))))

(declare-fun b!5953301 () Bool)

(declare-fun e!3641800 () (InoxSet Context!10762))

(declare-fun call!474271 () (InoxSet Context!10762))

(assert (=> b!5953301 (= e!3641800 ((_ map or) call!474271 call!474272))))

(declare-fun d!1866280 () Bool)

(declare-fun c!1059486 () Bool)

(assert (=> d!1866280 (= c!1059486 (and ((_ is ElementMatch!15997) (regOne!32506 r!7292)) (= (c!1059438 (regOne!32506 r!7292)) (h!70615 s!2326))))))

(assert (=> d!1866280 (= (derivationStepZipperDown!1247 (regOne!32506 r!7292) lt!2313746 (h!70615 s!2326)) e!3641799)))

(declare-fun b!5953302 () Bool)

(assert (=> b!5953302 (= e!3641799 (store ((as const (Array Context!10762 Bool)) false) lt!2313746 true))))

(declare-fun call!474270 () List!64290)

(declare-fun bm!474268 () Bool)

(assert (=> bm!474268 (= call!474270 ($colon$colon!1883 (exprs!5881 lt!2313746) (ite (or c!1059488 c!1059487) (regTwo!32506 (regOne!32506 r!7292)) (regOne!32506 r!7292))))))

(declare-fun b!5953303 () Bool)

(declare-fun c!1059489 () Bool)

(assert (=> b!5953303 (= c!1059489 ((_ is Star!15997) (regOne!32506 r!7292)))))

(assert (=> b!5953303 (= e!3641801 e!3641798)))

(declare-fun b!5953304 () Bool)

(assert (=> b!5953304 (= e!3641798 ((as const (Array Context!10762 Bool)) false))))

(declare-fun b!5953305 () Bool)

(assert (=> b!5953305 (= e!3641800 e!3641801)))

(assert (=> b!5953305 (= c!1059487 ((_ is Concat!24842) (regOne!32506 r!7292)))))

(declare-fun bm!474269 () Bool)

(assert (=> bm!474269 (= call!474273 call!474270)))

(declare-fun bm!474270 () Bool)

(assert (=> bm!474270 (= call!474271 (derivationStepZipperDown!1247 (ite c!1059485 (regTwo!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292))) (ite c!1059485 lt!2313746 (Context!10763 call!474270)) (h!70615 s!2326)))))

(declare-fun b!5953306 () Bool)

(assert (=> b!5953306 (= c!1059488 e!3641797)))

(declare-fun res!2492012 () Bool)

(assert (=> b!5953306 (=> (not res!2492012) (not e!3641797))))

(assert (=> b!5953306 (= res!2492012 ((_ is Concat!24842) (regOne!32506 r!7292)))))

(assert (=> b!5953306 (= e!3641802 e!3641800)))

(declare-fun b!5953307 () Bool)

(assert (=> b!5953307 (= e!3641802 ((_ map or) call!474274 call!474271))))

(assert (= (and d!1866280 c!1059486) b!5953302))

(assert (= (and d!1866280 (not c!1059486)) b!5953298))

(assert (= (and b!5953298 c!1059485) b!5953307))

(assert (= (and b!5953298 (not c!1059485)) b!5953306))

(assert (= (and b!5953306 res!2492012) b!5953300))

(assert (= (and b!5953306 c!1059488) b!5953301))

(assert (= (and b!5953306 (not c!1059488)) b!5953305))

(assert (= (and b!5953305 c!1059487) b!5953297))

(assert (= (and b!5953305 (not c!1059487)) b!5953303))

(assert (= (and b!5953303 c!1059489) b!5953299))

(assert (= (and b!5953303 (not c!1059489)) b!5953304))

(assert (= (or b!5953297 b!5953299) bm!474269))

(assert (= (or b!5953297 b!5953299) bm!474267))

(assert (= (or b!5953301 bm!474269) bm!474268))

(assert (= (or b!5953301 bm!474267) bm!474265))

(assert (= (or b!5953307 b!5953301) bm!474270))

(assert (= (or b!5953307 bm!474265) bm!474266))

(declare-fun m!6840816 () Bool)

(assert (=> b!5953300 m!6840816))

(declare-fun m!6840818 () Bool)

(assert (=> bm!474266 m!6840818))

(declare-fun m!6840820 () Bool)

(assert (=> bm!474268 m!6840820))

(declare-fun m!6840822 () Bool)

(assert (=> bm!474270 m!6840822))

(assert (=> b!5953302 m!6840638))

(assert (=> b!5953149 d!1866280))

(declare-fun d!1866282 () Bool)

(declare-fun nullableFct!1963 (Regex!15997) Bool)

(assert (=> d!1866282 (= (nullable!5992 (regOne!32506 r!7292)) (nullableFct!1963 (regOne!32506 r!7292)))))

(declare-fun bs!1410432 () Bool)

(assert (= bs!1410432 d!1866282))

(declare-fun m!6840846 () Bool)

(assert (=> bs!1410432 m!6840846))

(assert (=> b!5953149 d!1866282))

(declare-fun d!1866286 () Bool)

(declare-fun dynLambda!25107 (Int Context!10762) (InoxSet Context!10762))

(assert (=> d!1866286 (= (flatMap!1510 lt!2313741 lambda!325000) (dynLambda!25107 lambda!325000 lt!2313738))))

(declare-fun lt!2313814 () Unit!157265)

(declare-fun choose!44870 ((InoxSet Context!10762) Context!10762 Int) Unit!157265)

(assert (=> d!1866286 (= lt!2313814 (choose!44870 lt!2313741 lt!2313738 lambda!325000))))

(assert (=> d!1866286 (= lt!2313741 (store ((as const (Array Context!10762 Bool)) false) lt!2313738 true))))

(assert (=> d!1866286 (= (lemmaFlatMapOnSingletonSet!1036 lt!2313741 lt!2313738 lambda!325000) lt!2313814)))

(declare-fun b_lambda!223753 () Bool)

(assert (=> (not b_lambda!223753) (not d!1866286)))

(declare-fun bs!1410435 () Bool)

(assert (= bs!1410435 d!1866286))

(assert (=> bs!1410435 m!6840640))

(declare-fun m!6840854 () Bool)

(assert (=> bs!1410435 m!6840854))

(declare-fun m!6840856 () Bool)

(assert (=> bs!1410435 m!6840856))

(assert (=> bs!1410435 m!6840628))

(assert (=> b!5953149 d!1866286))

(declare-fun d!1866292 () Bool)

(declare-fun choose!44871 ((InoxSet Context!10762) Int) (InoxSet Context!10762))

(assert (=> d!1866292 (= (flatMap!1510 lt!2313741 lambda!325000) (choose!44871 lt!2313741 lambda!325000))))

(declare-fun bs!1410436 () Bool)

(assert (= bs!1410436 d!1866292))

(declare-fun m!6840858 () Bool)

(assert (=> bs!1410436 m!6840858))

(assert (=> b!5953149 d!1866292))

(declare-fun d!1866294 () Bool)

(assert (=> d!1866294 (= (flatMap!1510 lt!2313752 lambda!325000) (dynLambda!25107 lambda!325000 lt!2313746))))

(declare-fun lt!2313815 () Unit!157265)

(assert (=> d!1866294 (= lt!2313815 (choose!44870 lt!2313752 lt!2313746 lambda!325000))))

(assert (=> d!1866294 (= lt!2313752 (store ((as const (Array Context!10762 Bool)) false) lt!2313746 true))))

(assert (=> d!1866294 (= (lemmaFlatMapOnSingletonSet!1036 lt!2313752 lt!2313746 lambda!325000) lt!2313815)))

(declare-fun b_lambda!223755 () Bool)

(assert (=> (not b_lambda!223755) (not d!1866294)))

(declare-fun bs!1410437 () Bool)

(assert (= bs!1410437 d!1866294))

(assert (=> bs!1410437 m!6840630))

(declare-fun m!6840860 () Bool)

(assert (=> bs!1410437 m!6840860))

(declare-fun m!6840862 () Bool)

(assert (=> bs!1410437 m!6840862))

(assert (=> bs!1410437 m!6840638))

(assert (=> b!5953149 d!1866294))

(declare-fun d!1866296 () Bool)

(assert (=> d!1866296 (= (flatMap!1510 lt!2313752 lambda!325000) (choose!44871 lt!2313752 lambda!325000))))

(declare-fun bs!1410438 () Bool)

(assert (= bs!1410438 d!1866296))

(declare-fun m!6840864 () Bool)

(assert (=> bs!1410438 m!6840864))

(assert (=> b!5953149 d!1866296))

(declare-fun b!5953317 () Bool)

(declare-fun e!3641810 () (InoxSet Context!10762))

(assert (=> b!5953317 (= e!3641810 ((as const (Array Context!10762 Bool)) false))))

(declare-fun d!1866298 () Bool)

(declare-fun c!1059493 () Bool)

(declare-fun e!3641809 () Bool)

(assert (=> d!1866298 (= c!1059493 e!3641809)))

(declare-fun res!2492018 () Bool)

(assert (=> d!1866298 (=> (not res!2492018) (not e!3641809))))

(assert (=> d!1866298 (= res!2492018 ((_ is Cons!64166) (exprs!5881 lt!2313738)))))

(declare-fun e!3641808 () (InoxSet Context!10762))

(assert (=> d!1866298 (= (derivationStepZipperUp!1173 lt!2313738 (h!70615 s!2326)) e!3641808)))

(declare-fun b!5953318 () Bool)

(declare-fun call!474276 () (InoxSet Context!10762))

(assert (=> b!5953318 (= e!3641810 call!474276)))

(declare-fun b!5953319 () Bool)

(assert (=> b!5953319 (= e!3641809 (nullable!5992 (h!70614 (exprs!5881 lt!2313738))))))

(declare-fun b!5953320 () Bool)

(assert (=> b!5953320 (= e!3641808 e!3641810)))

(declare-fun c!1059492 () Bool)

(assert (=> b!5953320 (= c!1059492 ((_ is Cons!64166) (exprs!5881 lt!2313738)))))

(declare-fun b!5953321 () Bool)

(assert (=> b!5953321 (= e!3641808 ((_ map or) call!474276 (derivationStepZipperUp!1173 (Context!10763 (t!377701 (exprs!5881 lt!2313738))) (h!70615 s!2326))))))

(declare-fun bm!474271 () Bool)

(assert (=> bm!474271 (= call!474276 (derivationStepZipperDown!1247 (h!70614 (exprs!5881 lt!2313738)) (Context!10763 (t!377701 (exprs!5881 lt!2313738))) (h!70615 s!2326)))))

(assert (= (and d!1866298 res!2492018) b!5953319))

(assert (= (and d!1866298 c!1059493) b!5953321))

(assert (= (and d!1866298 (not c!1059493)) b!5953320))

(assert (= (and b!5953320 c!1059492) b!5953318))

(assert (= (and b!5953320 (not c!1059492)) b!5953317))

(assert (= (or b!5953321 b!5953318) bm!474271))

(declare-fun m!6840866 () Bool)

(assert (=> b!5953319 m!6840866))

(declare-fun m!6840868 () Bool)

(assert (=> b!5953321 m!6840868))

(declare-fun m!6840870 () Bool)

(assert (=> bm!474271 m!6840870))

(assert (=> b!5953149 d!1866298))

(declare-fun d!1866300 () Bool)

(declare-fun lambda!325028 () Int)

(declare-fun forall!15085 (List!64290 Int) Bool)

(assert (=> d!1866300 (= (inv!83239 (h!70616 zl!343)) (forall!15085 (exprs!5881 (h!70616 zl!343)) lambda!325028))))

(declare-fun bs!1410439 () Bool)

(assert (= bs!1410439 d!1866300))

(declare-fun m!6840872 () Bool)

(assert (=> bs!1410439 m!6840872))

(assert (=> b!5953148 d!1866300))

(declare-fun bs!1410440 () Bool)

(declare-fun d!1866302 () Bool)

(assert (= bs!1410440 (and d!1866302 d!1866300)))

(declare-fun lambda!325029 () Int)

(assert (=> bs!1410440 (= lambda!325029 lambda!325028)))

(assert (=> d!1866302 (= (inv!83239 setElem!40467) (forall!15085 (exprs!5881 setElem!40467) lambda!325029))))

(declare-fun bs!1410441 () Bool)

(assert (= bs!1410441 d!1866302))

(declare-fun m!6840874 () Bool)

(assert (=> bs!1410441 m!6840874))

(assert (=> setNonEmpty!40467 d!1866302))

(declare-fun bs!1410444 () Bool)

(declare-fun d!1866304 () Bool)

(assert (= bs!1410444 (and d!1866304 d!1866300)))

(declare-fun lambda!325035 () Int)

(assert (=> bs!1410444 (= lambda!325035 lambda!325028)))

(declare-fun bs!1410445 () Bool)

(assert (= bs!1410445 (and d!1866304 d!1866302)))

(assert (=> bs!1410445 (= lambda!325035 lambda!325029)))

(declare-fun b!5953346 () Bool)

(declare-fun e!3641827 () Regex!15997)

(assert (=> b!5953346 (= e!3641827 (Union!15997 (h!70614 (unfocusZipperList!1418 zl!343)) (generalisedUnion!1841 (t!377701 (unfocusZipperList!1418 zl!343)))))))

(declare-fun b!5953347 () Bool)

(declare-fun e!3641825 () Regex!15997)

(assert (=> b!5953347 (= e!3641825 e!3641827)))

(declare-fun c!1059502 () Bool)

(assert (=> b!5953347 (= c!1059502 ((_ is Cons!64166) (unfocusZipperList!1418 zl!343)))))

(declare-fun b!5953348 () Bool)

(declare-fun e!3641826 () Bool)

(declare-fun e!3641830 () Bool)

(assert (=> b!5953348 (= e!3641826 e!3641830)))

(declare-fun c!1059503 () Bool)

(assert (=> b!5953348 (= c!1059503 (isEmpty!36049 (unfocusZipperList!1418 zl!343)))))

(declare-fun b!5953350 () Bool)

(declare-fun e!3641828 () Bool)

(assert (=> b!5953350 (= e!3641828 (isEmpty!36049 (t!377701 (unfocusZipperList!1418 zl!343))))))

(declare-fun b!5953351 () Bool)

(assert (=> b!5953351 (= e!3641825 (h!70614 (unfocusZipperList!1418 zl!343)))))

(declare-fun b!5953352 () Bool)

(declare-fun e!3641829 () Bool)

(declare-fun lt!2313823 () Regex!15997)

(declare-fun head!12535 (List!64290) Regex!15997)

(assert (=> b!5953352 (= e!3641829 (= lt!2313823 (head!12535 (unfocusZipperList!1418 zl!343))))))

(declare-fun b!5953353 () Bool)

(assert (=> b!5953353 (= e!3641827 EmptyLang!15997)))

(declare-fun b!5953354 () Bool)

(declare-fun isUnion!864 (Regex!15997) Bool)

(assert (=> b!5953354 (= e!3641829 (isUnion!864 lt!2313823))))

(declare-fun b!5953355 () Bool)

(declare-fun isEmptyLang!1434 (Regex!15997) Bool)

(assert (=> b!5953355 (= e!3641830 (isEmptyLang!1434 lt!2313823))))

(declare-fun b!5953349 () Bool)

(assert (=> b!5953349 (= e!3641830 e!3641829)))

(declare-fun c!1059504 () Bool)

(declare-fun tail!11620 (List!64290) List!64290)

(assert (=> b!5953349 (= c!1059504 (isEmpty!36049 (tail!11620 (unfocusZipperList!1418 zl!343))))))

(assert (=> d!1866304 e!3641826))

(declare-fun res!2492028 () Bool)

(assert (=> d!1866304 (=> (not res!2492028) (not e!3641826))))

(assert (=> d!1866304 (= res!2492028 (validRegex!7733 lt!2313823))))

(assert (=> d!1866304 (= lt!2313823 e!3641825)))

(declare-fun c!1059505 () Bool)

(assert (=> d!1866304 (= c!1059505 e!3641828)))

(declare-fun res!2492027 () Bool)

(assert (=> d!1866304 (=> (not res!2492027) (not e!3641828))))

(assert (=> d!1866304 (= res!2492027 ((_ is Cons!64166) (unfocusZipperList!1418 zl!343)))))

(assert (=> d!1866304 (forall!15085 (unfocusZipperList!1418 zl!343) lambda!325035)))

(assert (=> d!1866304 (= (generalisedUnion!1841 (unfocusZipperList!1418 zl!343)) lt!2313823)))

(assert (= (and d!1866304 res!2492027) b!5953350))

(assert (= (and d!1866304 c!1059505) b!5953351))

(assert (= (and d!1866304 (not c!1059505)) b!5953347))

(assert (= (and b!5953347 c!1059502) b!5953346))

(assert (= (and b!5953347 (not c!1059502)) b!5953353))

(assert (= (and d!1866304 res!2492028) b!5953348))

(assert (= (and b!5953348 c!1059503) b!5953355))

(assert (= (and b!5953348 (not c!1059503)) b!5953349))

(assert (= (and b!5953349 c!1059504) b!5953352))

(assert (= (and b!5953349 (not c!1059504)) b!5953354))

(declare-fun m!6840880 () Bool)

(assert (=> b!5953346 m!6840880))

(assert (=> b!5953348 m!6840658))

(declare-fun m!6840882 () Bool)

(assert (=> b!5953348 m!6840882))

(assert (=> b!5953352 m!6840658))

(declare-fun m!6840884 () Bool)

(assert (=> b!5953352 m!6840884))

(declare-fun m!6840886 () Bool)

(assert (=> b!5953350 m!6840886))

(declare-fun m!6840888 () Bool)

(assert (=> b!5953354 m!6840888))

(assert (=> b!5953349 m!6840658))

(declare-fun m!6840890 () Bool)

(assert (=> b!5953349 m!6840890))

(assert (=> b!5953349 m!6840890))

(declare-fun m!6840892 () Bool)

(assert (=> b!5953349 m!6840892))

(declare-fun m!6840894 () Bool)

(assert (=> d!1866304 m!6840894))

(assert (=> d!1866304 m!6840658))

(declare-fun m!6840896 () Bool)

(assert (=> d!1866304 m!6840896))

(declare-fun m!6840898 () Bool)

(assert (=> b!5953355 m!6840898))

(assert (=> b!5953167 d!1866304))

(declare-fun bs!1410448 () Bool)

(declare-fun d!1866308 () Bool)

(assert (= bs!1410448 (and d!1866308 d!1866300)))

(declare-fun lambda!325043 () Int)

(assert (=> bs!1410448 (= lambda!325043 lambda!325028)))

(declare-fun bs!1410449 () Bool)

(assert (= bs!1410449 (and d!1866308 d!1866302)))

(assert (=> bs!1410449 (= lambda!325043 lambda!325029)))

(declare-fun bs!1410450 () Bool)

(assert (= bs!1410450 (and d!1866308 d!1866304)))

(assert (=> bs!1410450 (= lambda!325043 lambda!325035)))

(declare-fun lt!2313827 () List!64290)

(assert (=> d!1866308 (forall!15085 lt!2313827 lambda!325043)))

(declare-fun e!3641837 () List!64290)

(assert (=> d!1866308 (= lt!2313827 e!3641837)))

(declare-fun c!1059508 () Bool)

(assert (=> d!1866308 (= c!1059508 ((_ is Cons!64168) zl!343))))

(assert (=> d!1866308 (= (unfocusZipperList!1418 zl!343) lt!2313827)))

(declare-fun b!5953368 () Bool)

(assert (=> b!5953368 (= e!3641837 (Cons!64166 (generalisedConcat!1594 (exprs!5881 (h!70616 zl!343))) (unfocusZipperList!1418 (t!377703 zl!343))))))

(declare-fun b!5953369 () Bool)

(assert (=> b!5953369 (= e!3641837 Nil!64166)))

(assert (= (and d!1866308 c!1059508) b!5953368))

(assert (= (and d!1866308 (not c!1059508)) b!5953369))

(declare-fun m!6840900 () Bool)

(assert (=> d!1866308 m!6840900))

(assert (=> b!5953368 m!6840620))

(declare-fun m!6840902 () Bool)

(assert (=> b!5953368 m!6840902))

(assert (=> b!5953167 d!1866308))

(declare-fun b!5953406 () Bool)

(assert (=> b!5953406 true))

(declare-fun bs!1410460 () Bool)

(declare-fun b!5953408 () Bool)

(assert (= bs!1410460 (and b!5953408 b!5953406)))

(declare-fun lambda!325056 () Int)

(declare-fun lt!2313840 () Int)

(declare-fun lambda!325055 () Int)

(declare-fun lt!2313839 () Int)

(assert (=> bs!1410460 (= (= lt!2313839 lt!2313840) (= lambda!325056 lambda!325055))))

(assert (=> b!5953408 true))

(declare-fun d!1866310 () Bool)

(declare-fun e!3641861 () Bool)

(assert (=> d!1866310 e!3641861))

(declare-fun res!2492045 () Bool)

(assert (=> d!1866310 (=> (not res!2492045) (not e!3641861))))

(assert (=> d!1866310 (= res!2492045 (>= lt!2313839 0))))

(declare-fun e!3641860 () Int)

(assert (=> d!1866310 (= lt!2313839 e!3641860)))

(declare-fun c!1059529 () Bool)

(assert (=> d!1866310 (= c!1059529 ((_ is Cons!64168) (Cons!64168 lt!2313738 Nil!64168)))))

(assert (=> d!1866310 (= (zipperDepth!246 (Cons!64168 lt!2313738 Nil!64168)) lt!2313839)))

(assert (=> b!5953406 (= e!3641860 lt!2313840)))

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> b!5953406 (= lt!2313840 (maxBigInt!0 (contextDepth!145 (h!70616 (Cons!64168 lt!2313738 Nil!64168))) (zipperDepth!246 (t!377703 (Cons!64168 lt!2313738 Nil!64168)))))))

(declare-fun lt!2313842 () Unit!157265)

(declare-fun lambda!325054 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!131 (List!64292 Int Int Int) Unit!157265)

(assert (=> b!5953406 (= lt!2313842 (lemmaForallContextDepthBiggerThanTransitive!131 (t!377703 (Cons!64168 lt!2313738 Nil!64168)) lt!2313840 (zipperDepth!246 (t!377703 (Cons!64168 lt!2313738 Nil!64168))) lambda!325054))))

(declare-fun forall!15086 (List!64292 Int) Bool)

(assert (=> b!5953406 (forall!15086 (t!377703 (Cons!64168 lt!2313738 Nil!64168)) lambda!325055)))

(declare-fun lt!2313841 () Unit!157265)

(assert (=> b!5953406 (= lt!2313841 lt!2313842)))

(declare-fun b!5953407 () Bool)

(assert (=> b!5953407 (= e!3641860 0)))

(assert (=> b!5953408 (= e!3641861 (forall!15086 (Cons!64168 lt!2313738 Nil!64168) lambda!325056))))

(assert (= (and d!1866310 c!1059529) b!5953406))

(assert (= (and d!1866310 (not c!1059529)) b!5953407))

(assert (= (and d!1866310 res!2492045) b!5953408))

(declare-fun m!6840932 () Bool)

(assert (=> b!5953406 m!6840932))

(declare-fun m!6840934 () Bool)

(assert (=> b!5953406 m!6840934))

(assert (=> b!5953406 m!6840934))

(declare-fun m!6840936 () Bool)

(assert (=> b!5953406 m!6840936))

(declare-fun m!6840938 () Bool)

(assert (=> b!5953406 m!6840938))

(assert (=> b!5953406 m!6840932))

(assert (=> b!5953406 m!6840934))

(declare-fun m!6840940 () Bool)

(assert (=> b!5953406 m!6840940))

(declare-fun m!6840942 () Bool)

(assert (=> b!5953408 m!6840942))

(assert (=> b!5953161 d!1866310))

(declare-fun bs!1410461 () Bool)

(declare-fun b!5953411 () Bool)

(assert (= bs!1410461 (and b!5953411 b!5953406)))

(declare-fun lambda!325057 () Int)

(assert (=> bs!1410461 (= lambda!325057 lambda!325054)))

(declare-fun lambda!325058 () Int)

(declare-fun lt!2313844 () Int)

(assert (=> bs!1410461 (= (= lt!2313844 lt!2313840) (= lambda!325058 lambda!325055))))

(declare-fun bs!1410462 () Bool)

(assert (= bs!1410462 (and b!5953411 b!5953408)))

(assert (=> bs!1410462 (= (= lt!2313844 lt!2313839) (= lambda!325058 lambda!325056))))

(assert (=> b!5953411 true))

(declare-fun bs!1410463 () Bool)

(declare-fun b!5953413 () Bool)

(assert (= bs!1410463 (and b!5953413 b!5953406)))

(declare-fun lambda!325059 () Int)

(declare-fun lt!2313843 () Int)

(assert (=> bs!1410463 (= (= lt!2313843 lt!2313840) (= lambda!325059 lambda!325055))))

(declare-fun bs!1410464 () Bool)

(assert (= bs!1410464 (and b!5953413 b!5953408)))

(assert (=> bs!1410464 (= (= lt!2313843 lt!2313839) (= lambda!325059 lambda!325056))))

(declare-fun bs!1410465 () Bool)

(assert (= bs!1410465 (and b!5953413 b!5953411)))

(assert (=> bs!1410465 (= (= lt!2313843 lt!2313844) (= lambda!325059 lambda!325058))))

(assert (=> b!5953413 true))

(declare-fun d!1866318 () Bool)

(declare-fun e!3641863 () Bool)

(assert (=> d!1866318 e!3641863))

(declare-fun res!2492046 () Bool)

(assert (=> d!1866318 (=> (not res!2492046) (not e!3641863))))

(assert (=> d!1866318 (= res!2492046 (>= lt!2313843 0))))

(declare-fun e!3641862 () Int)

(assert (=> d!1866318 (= lt!2313843 e!3641862)))

(declare-fun c!1059530 () Bool)

(assert (=> d!1866318 (= c!1059530 ((_ is Cons!64168) (Cons!64168 lt!2313743 Nil!64168)))))

(assert (=> d!1866318 (= (zipperDepth!246 (Cons!64168 lt!2313743 Nil!64168)) lt!2313843)))

(assert (=> b!5953411 (= e!3641862 lt!2313844)))

(assert (=> b!5953411 (= lt!2313844 (maxBigInt!0 (contextDepth!145 (h!70616 (Cons!64168 lt!2313743 Nil!64168))) (zipperDepth!246 (t!377703 (Cons!64168 lt!2313743 Nil!64168)))))))

(declare-fun lt!2313846 () Unit!157265)

(assert (=> b!5953411 (= lt!2313846 (lemmaForallContextDepthBiggerThanTransitive!131 (t!377703 (Cons!64168 lt!2313743 Nil!64168)) lt!2313844 (zipperDepth!246 (t!377703 (Cons!64168 lt!2313743 Nil!64168))) lambda!325057))))

(assert (=> b!5953411 (forall!15086 (t!377703 (Cons!64168 lt!2313743 Nil!64168)) lambda!325058)))

(declare-fun lt!2313845 () Unit!157265)

(assert (=> b!5953411 (= lt!2313845 lt!2313846)))

(declare-fun b!5953412 () Bool)

(assert (=> b!5953412 (= e!3641862 0)))

(assert (=> b!5953413 (= e!3641863 (forall!15086 (Cons!64168 lt!2313743 Nil!64168) lambda!325059))))

(assert (= (and d!1866318 c!1059530) b!5953411))

(assert (= (and d!1866318 (not c!1059530)) b!5953412))

(assert (= (and d!1866318 res!2492046) b!5953413))

(declare-fun m!6840944 () Bool)

(assert (=> b!5953411 m!6840944))

(declare-fun m!6840946 () Bool)

(assert (=> b!5953411 m!6840946))

(assert (=> b!5953411 m!6840946))

(declare-fun m!6840948 () Bool)

(assert (=> b!5953411 m!6840948))

(declare-fun m!6840950 () Bool)

(assert (=> b!5953411 m!6840950))

(assert (=> b!5953411 m!6840944))

(assert (=> b!5953411 m!6840946))

(declare-fun m!6840952 () Bool)

(assert (=> b!5953411 m!6840952))

(declare-fun m!6840954 () Bool)

(assert (=> b!5953413 m!6840954))

(assert (=> b!5953161 d!1866318))

(declare-fun d!1866320 () Bool)

(declare-fun c!1059536 () Bool)

(declare-fun isEmpty!36053 (List!64291) Bool)

(assert (=> d!1866320 (= c!1059536 (isEmpty!36053 s!2326))))

(declare-fun e!3641869 () Bool)

(assert (=> d!1866320 (= (matchZipper!2033 lt!2313752 s!2326) e!3641869)))

(declare-fun b!5953424 () Bool)

(declare-fun nullableZipper!1804 ((InoxSet Context!10762)) Bool)

(assert (=> b!5953424 (= e!3641869 (nullableZipper!1804 lt!2313752))))

(declare-fun b!5953425 () Bool)

(declare-fun head!12536 (List!64291) C!32264)

(declare-fun tail!11621 (List!64291) List!64291)

(assert (=> b!5953425 (= e!3641869 (matchZipper!2033 (derivationStepZipper!1978 lt!2313752 (head!12536 s!2326)) (tail!11621 s!2326)))))

(assert (= (and d!1866320 c!1059536) b!5953424))

(assert (= (and d!1866320 (not c!1059536)) b!5953425))

(declare-fun m!6840960 () Bool)

(assert (=> d!1866320 m!6840960))

(declare-fun m!6840962 () Bool)

(assert (=> b!5953424 m!6840962))

(declare-fun m!6840964 () Bool)

(assert (=> b!5953425 m!6840964))

(assert (=> b!5953425 m!6840964))

(declare-fun m!6840966 () Bool)

(assert (=> b!5953425 m!6840966))

(declare-fun m!6840968 () Bool)

(assert (=> b!5953425 m!6840968))

(assert (=> b!5953425 m!6840966))

(assert (=> b!5953425 m!6840968))

(declare-fun m!6840970 () Bool)

(assert (=> b!5953425 m!6840970))

(assert (=> b!5953170 d!1866320))

(declare-fun d!1866324 () Bool)

(declare-fun c!1059537 () Bool)

(assert (=> d!1866324 (= c!1059537 (isEmpty!36053 (t!377702 s!2326)))))

(declare-fun e!3641870 () Bool)

(assert (=> d!1866324 (= (matchZipper!2033 (derivationStepZipper!1978 lt!2313752 (h!70615 s!2326)) (t!377702 s!2326)) e!3641870)))

(declare-fun b!5953426 () Bool)

(assert (=> b!5953426 (= e!3641870 (nullableZipper!1804 (derivationStepZipper!1978 lt!2313752 (h!70615 s!2326))))))

(declare-fun b!5953427 () Bool)

(assert (=> b!5953427 (= e!3641870 (matchZipper!2033 (derivationStepZipper!1978 (derivationStepZipper!1978 lt!2313752 (h!70615 s!2326)) (head!12536 (t!377702 s!2326))) (tail!11621 (t!377702 s!2326))))))

(assert (= (and d!1866324 c!1059537) b!5953426))

(assert (= (and d!1866324 (not c!1059537)) b!5953427))

(declare-fun m!6840972 () Bool)

(assert (=> d!1866324 m!6840972))

(assert (=> b!5953426 m!6840672))

(declare-fun m!6840974 () Bool)

(assert (=> b!5953426 m!6840974))

(declare-fun m!6840976 () Bool)

(assert (=> b!5953427 m!6840976))

(assert (=> b!5953427 m!6840672))

(assert (=> b!5953427 m!6840976))

(declare-fun m!6840978 () Bool)

(assert (=> b!5953427 m!6840978))

(declare-fun m!6840980 () Bool)

(assert (=> b!5953427 m!6840980))

(assert (=> b!5953427 m!6840978))

(assert (=> b!5953427 m!6840980))

(declare-fun m!6840982 () Bool)

(assert (=> b!5953427 m!6840982))

(assert (=> b!5953170 d!1866324))

(declare-fun bs!1410474 () Bool)

(declare-fun d!1866326 () Bool)

(assert (= bs!1410474 (and d!1866326 b!5953147)))

(declare-fun lambda!325065 () Int)

(assert (=> bs!1410474 (= lambda!325065 lambda!325000)))

(assert (=> d!1866326 true))

(assert (=> d!1866326 (= (derivationStepZipper!1978 lt!2313752 (h!70615 s!2326)) (flatMap!1510 lt!2313752 lambda!325065))))

(declare-fun bs!1410475 () Bool)

(assert (= bs!1410475 d!1866326))

(declare-fun m!6840984 () Bool)

(assert (=> bs!1410475 m!6840984))

(assert (=> b!5953170 d!1866326))

(declare-fun bs!1410476 () Bool)

(declare-fun d!1866328 () Bool)

(assert (= bs!1410476 (and d!1866328 d!1866300)))

(declare-fun lambda!325068 () Int)

(assert (=> bs!1410476 (= lambda!325068 lambda!325028)))

(declare-fun bs!1410477 () Bool)

(assert (= bs!1410477 (and d!1866328 d!1866302)))

(assert (=> bs!1410477 (= lambda!325068 lambda!325029)))

(declare-fun bs!1410478 () Bool)

(assert (= bs!1410478 (and d!1866328 d!1866304)))

(assert (=> bs!1410478 (= lambda!325068 lambda!325035)))

(declare-fun bs!1410479 () Bool)

(assert (= bs!1410479 (and d!1866328 d!1866308)))

(assert (=> bs!1410479 (= lambda!325068 lambda!325043)))

(declare-fun b!5953483 () Bool)

(declare-fun e!3641904 () Bool)

(declare-fun lt!2313852 () Regex!15997)

(declare-fun isEmptyExpr!1424 (Regex!15997) Bool)

(assert (=> b!5953483 (= e!3641904 (isEmptyExpr!1424 lt!2313852))))

(declare-fun b!5953484 () Bool)

(declare-fun e!3641901 () Bool)

(assert (=> b!5953484 (= e!3641901 e!3641904)))

(declare-fun c!1059566 () Bool)

(assert (=> b!5953484 (= c!1059566 (isEmpty!36049 (exprs!5881 (h!70616 zl!343))))))

(declare-fun b!5953485 () Bool)

(declare-fun e!3641905 () Regex!15997)

(declare-fun e!3641902 () Regex!15997)

(assert (=> b!5953485 (= e!3641905 e!3641902)))

(declare-fun c!1059564 () Bool)

(assert (=> b!5953485 (= c!1059564 ((_ is Cons!64166) (exprs!5881 (h!70616 zl!343))))))

(declare-fun b!5953486 () Bool)

(declare-fun e!3641903 () Bool)

(assert (=> b!5953486 (= e!3641903 (= lt!2313852 (head!12535 (exprs!5881 (h!70616 zl!343)))))))

(declare-fun b!5953487 () Bool)

(assert (=> b!5953487 (= e!3641904 e!3641903)))

(declare-fun c!1059565 () Bool)

(assert (=> b!5953487 (= c!1059565 (isEmpty!36049 (tail!11620 (exprs!5881 (h!70616 zl!343)))))))

(declare-fun b!5953488 () Bool)

(assert (=> b!5953488 (= e!3641905 (h!70614 (exprs!5881 (h!70616 zl!343))))))

(assert (=> d!1866328 e!3641901))

(declare-fun res!2492055 () Bool)

(assert (=> d!1866328 (=> (not res!2492055) (not e!3641901))))

(assert (=> d!1866328 (= res!2492055 (validRegex!7733 lt!2313852))))

(assert (=> d!1866328 (= lt!2313852 e!3641905)))

(declare-fun c!1059563 () Bool)

(declare-fun e!3641906 () Bool)

(assert (=> d!1866328 (= c!1059563 e!3641906)))

(declare-fun res!2492054 () Bool)

(assert (=> d!1866328 (=> (not res!2492054) (not e!3641906))))

(assert (=> d!1866328 (= res!2492054 ((_ is Cons!64166) (exprs!5881 (h!70616 zl!343))))))

(assert (=> d!1866328 (forall!15085 (exprs!5881 (h!70616 zl!343)) lambda!325068)))

(assert (=> d!1866328 (= (generalisedConcat!1594 (exprs!5881 (h!70616 zl!343))) lt!2313852)))

(declare-fun b!5953489 () Bool)

(assert (=> b!5953489 (= e!3641902 EmptyExpr!15997)))

(declare-fun b!5953490 () Bool)

(assert (=> b!5953490 (= e!3641902 (Concat!24842 (h!70614 (exprs!5881 (h!70616 zl!343))) (generalisedConcat!1594 (t!377701 (exprs!5881 (h!70616 zl!343))))))))

(declare-fun b!5953491 () Bool)

(assert (=> b!5953491 (= e!3641906 (isEmpty!36049 (t!377701 (exprs!5881 (h!70616 zl!343)))))))

(declare-fun b!5953492 () Bool)

(declare-fun isConcat!947 (Regex!15997) Bool)

(assert (=> b!5953492 (= e!3641903 (isConcat!947 lt!2313852))))

(assert (= (and d!1866328 res!2492054) b!5953491))

(assert (= (and d!1866328 c!1059563) b!5953488))

(assert (= (and d!1866328 (not c!1059563)) b!5953485))

(assert (= (and b!5953485 c!1059564) b!5953490))

(assert (= (and b!5953485 (not c!1059564)) b!5953489))

(assert (= (and d!1866328 res!2492055) b!5953484))

(assert (= (and b!5953484 c!1059566) b!5953483))

(assert (= (and b!5953484 (not c!1059566)) b!5953487))

(assert (= (and b!5953487 c!1059565) b!5953486))

(assert (= (and b!5953487 (not c!1059565)) b!5953492))

(declare-fun m!6840994 () Bool)

(assert (=> b!5953487 m!6840994))

(assert (=> b!5953487 m!6840994))

(declare-fun m!6840996 () Bool)

(assert (=> b!5953487 m!6840996))

(declare-fun m!6840998 () Bool)

(assert (=> b!5953492 m!6840998))

(assert (=> b!5953491 m!6840656))

(declare-fun m!6841000 () Bool)

(assert (=> b!5953484 m!6841000))

(declare-fun m!6841002 () Bool)

(assert (=> b!5953490 m!6841002))

(declare-fun m!6841004 () Bool)

(assert (=> d!1866328 m!6841004))

(declare-fun m!6841006 () Bool)

(assert (=> d!1866328 m!6841006))

(declare-fun m!6841008 () Bool)

(assert (=> b!5953483 m!6841008))

(declare-fun m!6841010 () Bool)

(assert (=> b!5953486 m!6841010))

(assert (=> b!5953151 d!1866328))

(declare-fun d!1866332 () Bool)

(assert (=> d!1866332 (= (isEmpty!36049 (t!377701 (exprs!5881 (h!70616 zl!343)))) ((_ is Nil!64166) (t!377701 (exprs!5881 (h!70616 zl!343)))))))

(assert (=> b!5953150 d!1866332))

(declare-fun bm!474299 () Bool)

(declare-fun call!474305 () Bool)

(declare-fun call!474304 () Bool)

(assert (=> bm!474299 (= call!474305 call!474304)))

(declare-fun bm!474300 () Bool)

(declare-fun call!474306 () Bool)

(declare-fun c!1059582 () Bool)

(assert (=> bm!474300 (= call!474306 (validRegex!7733 (ite c!1059582 (regTwo!32507 r!7292) (regTwo!32506 r!7292))))))

(declare-fun b!5953532 () Bool)

(declare-fun res!2492070 () Bool)

(declare-fun e!3641935 () Bool)

(assert (=> b!5953532 (=> res!2492070 e!3641935)))

(assert (=> b!5953532 (= res!2492070 (not ((_ is Concat!24842) r!7292)))))

(declare-fun e!3641937 () Bool)

(assert (=> b!5953532 (= e!3641937 e!3641935)))

(declare-fun c!1059581 () Bool)

(declare-fun bm!474301 () Bool)

(assert (=> bm!474301 (= call!474304 (validRegex!7733 (ite c!1059581 (reg!16326 r!7292) (ite c!1059582 (regOne!32507 r!7292) (regOne!32506 r!7292)))))))

(declare-fun b!5953534 () Bool)

(declare-fun e!3641936 () Bool)

(declare-fun e!3641933 () Bool)

(assert (=> b!5953534 (= e!3641936 e!3641933)))

(declare-fun res!2492072 () Bool)

(assert (=> b!5953534 (= res!2492072 (not (nullable!5992 (reg!16326 r!7292))))))

(assert (=> b!5953534 (=> (not res!2492072) (not e!3641933))))

(declare-fun b!5953535 () Bool)

(declare-fun e!3641934 () Bool)

(assert (=> b!5953535 (= e!3641934 call!474306)))

(declare-fun b!5953536 () Bool)

(assert (=> b!5953536 (= e!3641936 e!3641937)))

(assert (=> b!5953536 (= c!1059582 ((_ is Union!15997) r!7292))))

(declare-fun b!5953537 () Bool)

(assert (=> b!5953537 (= e!3641933 call!474304)))

(declare-fun b!5953538 () Bool)

(declare-fun e!3641938 () Bool)

(assert (=> b!5953538 (= e!3641938 e!3641936)))

(assert (=> b!5953538 (= c!1059581 ((_ is Star!15997) r!7292))))

(declare-fun b!5953539 () Bool)

(declare-fun e!3641932 () Bool)

(assert (=> b!5953539 (= e!3641935 e!3641932)))

(declare-fun res!2492071 () Bool)

(assert (=> b!5953539 (=> (not res!2492071) (not e!3641932))))

(assert (=> b!5953539 (= res!2492071 call!474305)))

(declare-fun b!5953540 () Bool)

(declare-fun res!2492069 () Bool)

(assert (=> b!5953540 (=> (not res!2492069) (not e!3641934))))

(assert (=> b!5953540 (= res!2492069 call!474305)))

(assert (=> b!5953540 (= e!3641937 e!3641934)))

(declare-fun b!5953533 () Bool)

(assert (=> b!5953533 (= e!3641932 call!474306)))

(declare-fun d!1866334 () Bool)

(declare-fun res!2492073 () Bool)

(assert (=> d!1866334 (=> res!2492073 e!3641938)))

(assert (=> d!1866334 (= res!2492073 ((_ is ElementMatch!15997) r!7292))))

(assert (=> d!1866334 (= (validRegex!7733 r!7292) e!3641938)))

(assert (= (and d!1866334 (not res!2492073)) b!5953538))

(assert (= (and b!5953538 c!1059581) b!5953534))

(assert (= (and b!5953538 (not c!1059581)) b!5953536))

(assert (= (and b!5953534 res!2492072) b!5953537))

(assert (= (and b!5953536 c!1059582) b!5953540))

(assert (= (and b!5953536 (not c!1059582)) b!5953532))

(assert (= (and b!5953540 res!2492069) b!5953535))

(assert (= (and b!5953532 (not res!2492070)) b!5953539))

(assert (= (and b!5953539 res!2492071) b!5953533))

(assert (= (or b!5953535 b!5953533) bm!474300))

(assert (= (or b!5953540 b!5953539) bm!474299))

(assert (= (or b!5953537 bm!474299) bm!474301))

(declare-fun m!6841038 () Bool)

(assert (=> bm!474300 m!6841038))

(declare-fun m!6841040 () Bool)

(assert (=> bm!474301 m!6841040))

(declare-fun m!6841042 () Bool)

(assert (=> b!5953534 m!6841042))

(assert (=> start!604522 d!1866334))

(declare-fun bs!1410485 () Bool)

(declare-fun d!1866344 () Bool)

(assert (= bs!1410485 (and d!1866344 d!1866308)))

(declare-fun lambda!325073 () Int)

(assert (=> bs!1410485 (= lambda!325073 lambda!325043)))

(declare-fun bs!1410486 () Bool)

(assert (= bs!1410486 (and d!1866344 d!1866300)))

(assert (=> bs!1410486 (= lambda!325073 lambda!325028)))

(declare-fun bs!1410487 () Bool)

(assert (= bs!1410487 (and d!1866344 d!1866304)))

(assert (=> bs!1410487 (= lambda!325073 lambda!325035)))

(declare-fun bs!1410488 () Bool)

(assert (= bs!1410488 (and d!1866344 d!1866302)))

(assert (=> bs!1410488 (= lambda!325073 lambda!325029)))

(declare-fun bs!1410489 () Bool)

(assert (= bs!1410489 (and d!1866344 d!1866328)))

(assert (=> bs!1410489 (= lambda!325073 lambda!325068)))

(assert (=> d!1866344 (= (inv!83239 lt!2313746) (forall!15085 (exprs!5881 lt!2313746) lambda!325073))))

(declare-fun bs!1410490 () Bool)

(assert (= bs!1410490 d!1866344))

(declare-fun m!6841046 () Bool)

(assert (=> bs!1410490 m!6841046))

(assert (=> b!5953155 d!1866344))

(declare-fun bs!1410506 () Bool)

(declare-fun b!5953580 () Bool)

(assert (= bs!1410506 (and b!5953580 d!1866344)))

(declare-fun lambda!325080 () Int)

(assert (=> bs!1410506 (not (= lambda!325080 lambda!325073))))

(declare-fun bs!1410507 () Bool)

(assert (= bs!1410507 (and b!5953580 d!1866308)))

(assert (=> bs!1410507 (not (= lambda!325080 lambda!325043))))

(declare-fun bs!1410508 () Bool)

(assert (= bs!1410508 (and b!5953580 d!1866300)))

(assert (=> bs!1410508 (not (= lambda!325080 lambda!325028))))

(declare-fun bs!1410509 () Bool)

(assert (= bs!1410509 (and b!5953580 d!1866304)))

(assert (=> bs!1410509 (not (= lambda!325080 lambda!325035))))

(declare-fun bs!1410511 () Bool)

(assert (= bs!1410511 (and b!5953580 d!1866302)))

(assert (=> bs!1410511 (not (= lambda!325080 lambda!325029))))

(declare-fun bs!1410512 () Bool)

(assert (= bs!1410512 (and b!5953580 d!1866328)))

(assert (=> bs!1410512 (not (= lambda!325080 lambda!325068))))

(assert (=> b!5953580 true))

(declare-fun bs!1410513 () Bool)

(declare-fun b!5953582 () Bool)

(assert (= bs!1410513 (and b!5953582 d!1866344)))

(declare-fun lambda!325081 () Int)

(assert (=> bs!1410513 (not (= lambda!325081 lambda!325073))))

(declare-fun bs!1410514 () Bool)

(assert (= bs!1410514 (and b!5953582 d!1866308)))

(assert (=> bs!1410514 (not (= lambda!325081 lambda!325043))))

(declare-fun bs!1410515 () Bool)

(assert (= bs!1410515 (and b!5953582 d!1866300)))

(assert (=> bs!1410515 (not (= lambda!325081 lambda!325028))))

(declare-fun bs!1410516 () Bool)

(assert (= bs!1410516 (and b!5953582 d!1866304)))

(assert (=> bs!1410516 (not (= lambda!325081 lambda!325035))))

(declare-fun bs!1410517 () Bool)

(assert (= bs!1410517 (and b!5953582 d!1866302)))

(assert (=> bs!1410517 (not (= lambda!325081 lambda!325029))))

(declare-fun bs!1410518 () Bool)

(assert (= bs!1410518 (and b!5953582 d!1866328)))

(assert (=> bs!1410518 (not (= lambda!325081 lambda!325068))))

(declare-fun bs!1410519 () Bool)

(assert (= bs!1410519 (and b!5953582 b!5953580)))

(declare-fun lt!2313867 () Int)

(declare-fun lt!2313865 () Int)

(assert (=> bs!1410519 (= (= lt!2313865 lt!2313867) (= lambda!325081 lambda!325080))))

(assert (=> b!5953582 true))

(declare-fun d!1866348 () Bool)

(declare-fun e!3641968 () Bool)

(assert (=> d!1866348 e!3641968))

(declare-fun res!2492091 () Bool)

(assert (=> d!1866348 (=> (not res!2492091) (not e!3641968))))

(assert (=> d!1866348 (= res!2492091 (>= lt!2313865 0))))

(declare-fun e!3641967 () Int)

(assert (=> d!1866348 (= lt!2313865 e!3641967)))

(declare-fun c!1059595 () Bool)

(assert (=> d!1866348 (= c!1059595 ((_ is Cons!64166) (exprs!5881 lt!2313743)))))

(assert (=> d!1866348 (= (contextDepth!145 lt!2313743) lt!2313865)))

(assert (=> b!5953580 (= e!3641967 lt!2313867)))

(declare-fun regexDepth!254 (Regex!15997) Int)

(assert (=> b!5953580 (= lt!2313867 (maxBigInt!0 (regexDepth!254 (h!70614 (exprs!5881 lt!2313743))) (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313743))))))))

(declare-fun lt!2313866 () Unit!157265)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!46 (List!64290 Int Int) Unit!157265)

(assert (=> b!5953580 (= lt!2313866 (lemmaForallRegexDepthBiggerThanTransitive!46 (t!377701 (exprs!5881 lt!2313743)) lt!2313867 (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313743))))))))

(assert (=> b!5953580 (forall!15085 (t!377701 (exprs!5881 lt!2313743)) lambda!325080)))

(declare-fun lt!2313864 () Unit!157265)

(assert (=> b!5953580 (= lt!2313864 lt!2313866)))

(declare-fun b!5953581 () Bool)

(assert (=> b!5953581 (= e!3641967 0)))

(assert (=> b!5953582 (= e!3641968 (forall!15085 (exprs!5881 lt!2313743) lambda!325081))))

(assert (= (and d!1866348 c!1059595) b!5953580))

(assert (= (and d!1866348 (not c!1059595)) b!5953581))

(assert (= (and d!1866348 res!2492091) b!5953582))

(declare-fun m!6841086 () Bool)

(assert (=> b!5953580 m!6841086))

(declare-fun m!6841088 () Bool)

(assert (=> b!5953580 m!6841088))

(declare-fun m!6841090 () Bool)

(assert (=> b!5953580 m!6841090))

(assert (=> b!5953580 m!6841088))

(declare-fun m!6841092 () Bool)

(assert (=> b!5953580 m!6841092))

(assert (=> b!5953580 m!6841086))

(assert (=> b!5953580 m!6841088))

(declare-fun m!6841094 () Bool)

(assert (=> b!5953580 m!6841094))

(declare-fun m!6841096 () Bool)

(assert (=> b!5953582 m!6841096))

(assert (=> b!5953163 d!1866348))

(declare-fun bs!1410520 () Bool)

(declare-fun b!5953590 () Bool)

(assert (= bs!1410520 (and b!5953590 d!1866344)))

(declare-fun lambda!325082 () Int)

(assert (=> bs!1410520 (not (= lambda!325082 lambda!325073))))

(declare-fun bs!1410521 () Bool)

(assert (= bs!1410521 (and b!5953590 d!1866308)))

(assert (=> bs!1410521 (not (= lambda!325082 lambda!325043))))

(declare-fun bs!1410522 () Bool)

(assert (= bs!1410522 (and b!5953590 b!5953582)))

(declare-fun lt!2313871 () Int)

(assert (=> bs!1410522 (= (= lt!2313871 lt!2313865) (= lambda!325082 lambda!325081))))

(declare-fun bs!1410523 () Bool)

(assert (= bs!1410523 (and b!5953590 d!1866300)))

(assert (=> bs!1410523 (not (= lambda!325082 lambda!325028))))

(declare-fun bs!1410524 () Bool)

(assert (= bs!1410524 (and b!5953590 d!1866304)))

(assert (=> bs!1410524 (not (= lambda!325082 lambda!325035))))

(declare-fun bs!1410525 () Bool)

(assert (= bs!1410525 (and b!5953590 d!1866302)))

(assert (=> bs!1410525 (not (= lambda!325082 lambda!325029))))

(declare-fun bs!1410526 () Bool)

(assert (= bs!1410526 (and b!5953590 d!1866328)))

(assert (=> bs!1410526 (not (= lambda!325082 lambda!325068))))

(declare-fun bs!1410527 () Bool)

(assert (= bs!1410527 (and b!5953590 b!5953580)))

(assert (=> bs!1410527 (= (= lt!2313871 lt!2313867) (= lambda!325082 lambda!325080))))

(assert (=> b!5953590 true))

(declare-fun bs!1410528 () Bool)

(declare-fun b!5953592 () Bool)

(assert (= bs!1410528 (and b!5953592 d!1866344)))

(declare-fun lambda!325083 () Int)

(assert (=> bs!1410528 (not (= lambda!325083 lambda!325073))))

(declare-fun bs!1410529 () Bool)

(assert (= bs!1410529 (and b!5953592 d!1866308)))

(assert (=> bs!1410529 (not (= lambda!325083 lambda!325043))))

(declare-fun bs!1410530 () Bool)

(assert (= bs!1410530 (and b!5953592 b!5953590)))

(declare-fun lt!2313869 () Int)

(assert (=> bs!1410530 (= (= lt!2313869 lt!2313871) (= lambda!325083 lambda!325082))))

(declare-fun bs!1410531 () Bool)

(assert (= bs!1410531 (and b!5953592 b!5953582)))

(assert (=> bs!1410531 (= (= lt!2313869 lt!2313865) (= lambda!325083 lambda!325081))))

(declare-fun bs!1410532 () Bool)

(assert (= bs!1410532 (and b!5953592 d!1866300)))

(assert (=> bs!1410532 (not (= lambda!325083 lambda!325028))))

(declare-fun bs!1410533 () Bool)

(assert (= bs!1410533 (and b!5953592 d!1866304)))

(assert (=> bs!1410533 (not (= lambda!325083 lambda!325035))))

(declare-fun bs!1410535 () Bool)

(assert (= bs!1410535 (and b!5953592 d!1866302)))

(assert (=> bs!1410535 (not (= lambda!325083 lambda!325029))))

(declare-fun bs!1410536 () Bool)

(assert (= bs!1410536 (and b!5953592 d!1866328)))

(assert (=> bs!1410536 (not (= lambda!325083 lambda!325068))))

(declare-fun bs!1410537 () Bool)

(assert (= bs!1410537 (and b!5953592 b!5953580)))

(assert (=> bs!1410537 (= (= lt!2313869 lt!2313867) (= lambda!325083 lambda!325080))))

(assert (=> b!5953592 true))

(declare-fun d!1866372 () Bool)

(declare-fun e!3641973 () Bool)

(assert (=> d!1866372 e!3641973))

(declare-fun res!2492093 () Bool)

(assert (=> d!1866372 (=> (not res!2492093) (not e!3641973))))

(assert (=> d!1866372 (= res!2492093 (>= lt!2313869 0))))

(declare-fun e!3641972 () Int)

(assert (=> d!1866372 (= lt!2313869 e!3641972)))

(declare-fun c!1059598 () Bool)

(assert (=> d!1866372 (= c!1059598 ((_ is Cons!64166) (exprs!5881 lt!2313738)))))

(assert (=> d!1866372 (= (contextDepth!145 lt!2313738) lt!2313869)))

(assert (=> b!5953590 (= e!3641972 lt!2313871)))

(assert (=> b!5953590 (= lt!2313871 (maxBigInt!0 (regexDepth!254 (h!70614 (exprs!5881 lt!2313738))) (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313738))))))))

(declare-fun lt!2313870 () Unit!157265)

(assert (=> b!5953590 (= lt!2313870 (lemmaForallRegexDepthBiggerThanTransitive!46 (t!377701 (exprs!5881 lt!2313738)) lt!2313871 (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313738))))))))

(assert (=> b!5953590 (forall!15085 (t!377701 (exprs!5881 lt!2313738)) lambda!325082)))

(declare-fun lt!2313868 () Unit!157265)

(assert (=> b!5953590 (= lt!2313868 lt!2313870)))

(declare-fun b!5953591 () Bool)

(assert (=> b!5953591 (= e!3641972 0)))

(assert (=> b!5953592 (= e!3641973 (forall!15085 (exprs!5881 lt!2313738) lambda!325083))))

(assert (= (and d!1866372 c!1059598) b!5953590))

(assert (= (and d!1866372 (not c!1059598)) b!5953591))

(assert (= (and d!1866372 res!2492093) b!5953592))

(declare-fun m!6841104 () Bool)

(assert (=> b!5953590 m!6841104))

(declare-fun m!6841106 () Bool)

(assert (=> b!5953590 m!6841106))

(declare-fun m!6841108 () Bool)

(assert (=> b!5953590 m!6841108))

(assert (=> b!5953590 m!6841106))

(declare-fun m!6841112 () Bool)

(assert (=> b!5953590 m!6841112))

(assert (=> b!5953590 m!6841104))

(assert (=> b!5953590 m!6841106))

(declare-fun m!6841114 () Bool)

(assert (=> b!5953590 m!6841114))

(declare-fun m!6841116 () Bool)

(assert (=> b!5953592 m!6841116))

(assert (=> b!5953163 d!1866372))

(declare-fun b!5953598 () Bool)

(declare-fun e!3641981 () (InoxSet Context!10762))

(declare-fun call!474323 () (InoxSet Context!10762))

(assert (=> b!5953598 (= e!3641981 call!474323)))

(declare-fun bm!474313 () Bool)

(declare-fun call!474320 () (InoxSet Context!10762))

(declare-fun call!474322 () (InoxSet Context!10762))

(assert (=> bm!474313 (= call!474320 call!474322)))

(declare-fun b!5953599 () Bool)

(declare-fun e!3641979 () (InoxSet Context!10762))

(declare-fun e!3641982 () (InoxSet Context!10762))

(assert (=> b!5953599 (= e!3641979 e!3641982)))

(declare-fun c!1059601 () Bool)

(assert (=> b!5953599 (= c!1059601 ((_ is Union!15997) r!7292))))

(declare-fun bm!474314 () Bool)

(declare-fun c!1059604 () Bool)

(declare-fun c!1059603 () Bool)

(declare-fun call!474321 () List!64290)

(assert (=> bm!474314 (= call!474322 (derivationStepZipperDown!1247 (ite c!1059601 (regOne!32507 r!7292) (ite c!1059604 (regTwo!32506 r!7292) (ite c!1059603 (regOne!32506 r!7292) (reg!16326 r!7292)))) (ite (or c!1059601 c!1059604) lt!2313735 (Context!10763 call!474321)) (h!70615 s!2326)))))

(declare-fun bm!474315 () Bool)

(assert (=> bm!474315 (= call!474323 call!474320)))

(declare-fun b!5953600 () Bool)

(declare-fun e!3641978 () (InoxSet Context!10762))

(assert (=> b!5953600 (= e!3641978 call!474323)))

(declare-fun b!5953601 () Bool)

(declare-fun e!3641977 () Bool)

(assert (=> b!5953601 (= e!3641977 (nullable!5992 (regOne!32506 r!7292)))))

(declare-fun b!5953602 () Bool)

(declare-fun e!3641980 () (InoxSet Context!10762))

(declare-fun call!474319 () (InoxSet Context!10762))

(assert (=> b!5953602 (= e!3641980 ((_ map or) call!474319 call!474320))))

(declare-fun d!1866378 () Bool)

(declare-fun c!1059602 () Bool)

(assert (=> d!1866378 (= c!1059602 (and ((_ is ElementMatch!15997) r!7292) (= (c!1059438 r!7292) (h!70615 s!2326))))))

(assert (=> d!1866378 (= (derivationStepZipperDown!1247 r!7292 lt!2313735 (h!70615 s!2326)) e!3641979)))

(declare-fun b!5953603 () Bool)

(assert (=> b!5953603 (= e!3641979 (store ((as const (Array Context!10762 Bool)) false) lt!2313735 true))))

(declare-fun bm!474316 () Bool)

(declare-fun call!474318 () List!64290)

(assert (=> bm!474316 (= call!474318 ($colon$colon!1883 (exprs!5881 lt!2313735) (ite (or c!1059604 c!1059603) (regTwo!32506 r!7292) r!7292)))))

(declare-fun b!5953604 () Bool)

(declare-fun c!1059605 () Bool)

(assert (=> b!5953604 (= c!1059605 ((_ is Star!15997) r!7292))))

(assert (=> b!5953604 (= e!3641981 e!3641978)))

(declare-fun b!5953605 () Bool)

(assert (=> b!5953605 (= e!3641978 ((as const (Array Context!10762 Bool)) false))))

(declare-fun b!5953606 () Bool)

(assert (=> b!5953606 (= e!3641980 e!3641981)))

(assert (=> b!5953606 (= c!1059603 ((_ is Concat!24842) r!7292))))

(declare-fun bm!474317 () Bool)

(assert (=> bm!474317 (= call!474321 call!474318)))

(declare-fun bm!474318 () Bool)

(assert (=> bm!474318 (= call!474319 (derivationStepZipperDown!1247 (ite c!1059601 (regTwo!32507 r!7292) (regOne!32506 r!7292)) (ite c!1059601 lt!2313735 (Context!10763 call!474318)) (h!70615 s!2326)))))

(declare-fun b!5953607 () Bool)

(assert (=> b!5953607 (= c!1059604 e!3641977)))

(declare-fun res!2492095 () Bool)

(assert (=> b!5953607 (=> (not res!2492095) (not e!3641977))))

(assert (=> b!5953607 (= res!2492095 ((_ is Concat!24842) r!7292))))

(assert (=> b!5953607 (= e!3641982 e!3641980)))

(declare-fun b!5953608 () Bool)

(assert (=> b!5953608 (= e!3641982 ((_ map or) call!474322 call!474319))))

(assert (= (and d!1866378 c!1059602) b!5953603))

(assert (= (and d!1866378 (not c!1059602)) b!5953599))

(assert (= (and b!5953599 c!1059601) b!5953608))

(assert (= (and b!5953599 (not c!1059601)) b!5953607))

(assert (= (and b!5953607 res!2492095) b!5953601))

(assert (= (and b!5953607 c!1059604) b!5953602))

(assert (= (and b!5953607 (not c!1059604)) b!5953606))

(assert (= (and b!5953606 c!1059603) b!5953598))

(assert (= (and b!5953606 (not c!1059603)) b!5953604))

(assert (= (and b!5953604 c!1059605) b!5953600))

(assert (= (and b!5953604 (not c!1059605)) b!5953605))

(assert (= (or b!5953598 b!5953600) bm!474317))

(assert (= (or b!5953598 b!5953600) bm!474315))

(assert (= (or b!5953602 bm!474317) bm!474316))

(assert (= (or b!5953602 bm!474315) bm!474313))

(assert (= (or b!5953608 b!5953602) bm!474318))

(assert (= (or b!5953608 bm!474313) bm!474314))

(assert (=> b!5953601 m!6840634))

(declare-fun m!6841130 () Bool)

(assert (=> bm!474314 m!6841130))

(declare-fun m!6841132 () Bool)

(assert (=> bm!474316 m!6841132))

(declare-fun m!6841134 () Bool)

(assert (=> bm!474318 m!6841134))

(assert (=> b!5953603 m!6840814))

(assert (=> b!5953162 d!1866378))

(declare-fun b!5953625 () Bool)

(declare-fun e!3641994 () (InoxSet Context!10762))

(assert (=> b!5953625 (= e!3641994 ((as const (Array Context!10762 Bool)) false))))

(declare-fun d!1866384 () Bool)

(declare-fun c!1059614 () Bool)

(declare-fun e!3641993 () Bool)

(assert (=> d!1866384 (= c!1059614 e!3641993)))

(declare-fun res!2492098 () Bool)

(assert (=> d!1866384 (=> (not res!2492098) (not e!3641993))))

(assert (=> d!1866384 (= res!2492098 ((_ is Cons!64166) (exprs!5881 lt!2313743)))))

(declare-fun e!3641992 () (InoxSet Context!10762))

(assert (=> d!1866384 (= (derivationStepZipperUp!1173 lt!2313743 (h!70615 s!2326)) e!3641992)))

(declare-fun b!5953626 () Bool)

(declare-fun call!474331 () (InoxSet Context!10762))

(assert (=> b!5953626 (= e!3641994 call!474331)))

(declare-fun b!5953627 () Bool)

(assert (=> b!5953627 (= e!3641993 (nullable!5992 (h!70614 (exprs!5881 lt!2313743))))))

(declare-fun b!5953628 () Bool)

(assert (=> b!5953628 (= e!3641992 e!3641994)))

(declare-fun c!1059613 () Bool)

(assert (=> b!5953628 (= c!1059613 ((_ is Cons!64166) (exprs!5881 lt!2313743)))))

(declare-fun b!5953629 () Bool)

(assert (=> b!5953629 (= e!3641992 ((_ map or) call!474331 (derivationStepZipperUp!1173 (Context!10763 (t!377701 (exprs!5881 lt!2313743))) (h!70615 s!2326))))))

(declare-fun bm!474326 () Bool)

(assert (=> bm!474326 (= call!474331 (derivationStepZipperDown!1247 (h!70614 (exprs!5881 lt!2313743)) (Context!10763 (t!377701 (exprs!5881 lt!2313743))) (h!70615 s!2326)))))

(assert (= (and d!1866384 res!2492098) b!5953627))

(assert (= (and d!1866384 c!1059614) b!5953629))

(assert (= (and d!1866384 (not c!1059614)) b!5953628))

(assert (= (and b!5953628 c!1059613) b!5953626))

(assert (= (and b!5953628 (not c!1059613)) b!5953625))

(assert (= (or b!5953629 b!5953626) bm!474326))

(declare-fun m!6841136 () Bool)

(assert (=> b!5953627 m!6841136))

(declare-fun m!6841138 () Bool)

(assert (=> b!5953629 m!6841138))

(declare-fun m!6841140 () Bool)

(assert (=> bm!474326 m!6841140))

(assert (=> b!5953162 d!1866384))

(declare-fun bs!1410539 () Bool)

(declare-fun d!1866386 () Bool)

(assert (= bs!1410539 (and d!1866386 b!5953147)))

(declare-fun lambda!325084 () Int)

(assert (=> bs!1410539 (= lambda!325084 lambda!325000)))

(declare-fun bs!1410540 () Bool)

(assert (= bs!1410540 (and d!1866386 d!1866326)))

(assert (=> bs!1410540 (= lambda!325084 lambda!325065)))

(assert (=> d!1866386 true))

(assert (=> d!1866386 (= (derivationStepZipper!1978 z!1189 (h!70615 s!2326)) (flatMap!1510 z!1189 lambda!325084))))

(declare-fun bs!1410541 () Bool)

(assert (= bs!1410541 d!1866386))

(declare-fun m!6841150 () Bool)

(assert (=> bs!1410541 m!6841150))

(assert (=> b!5953162 d!1866386))

(declare-fun d!1866390 () Bool)

(declare-fun lt!2313879 () Regex!15997)

(assert (=> d!1866390 (validRegex!7733 lt!2313879)))

(assert (=> d!1866390 (= lt!2313879 (generalisedUnion!1841 (unfocusZipperList!1418 zl!343)))))

(assert (=> d!1866390 (= (unfocusZipper!1739 zl!343) lt!2313879)))

(declare-fun bs!1410546 () Bool)

(assert (= bs!1410546 d!1866390))

(declare-fun m!6841172 () Bool)

(assert (=> bs!1410546 m!6841172))

(assert (=> bs!1410546 m!6840658))

(assert (=> bs!1410546 m!6840658))

(assert (=> bs!1410546 m!6840660))

(assert (=> b!5953172 d!1866390))

(declare-fun d!1866402 () Bool)

(assert (=> d!1866402 (= (isEmpty!36050 (t!377703 zl!343)) ((_ is Nil!64168) (t!377703 zl!343)))))

(assert (=> b!5953153 d!1866402))

(declare-fun d!1866404 () Bool)

(declare-fun e!3642003 () Bool)

(assert (=> d!1866404 e!3642003))

(declare-fun res!2492102 () Bool)

(assert (=> d!1866404 (=> (not res!2492102) (not e!3642003))))

(declare-fun lt!2313882 () List!64292)

(declare-fun noDuplicate!1854 (List!64292) Bool)

(assert (=> d!1866404 (= res!2492102 (noDuplicate!1854 lt!2313882))))

(declare-fun choose!44874 ((InoxSet Context!10762)) List!64292)

(assert (=> d!1866404 (= lt!2313882 (choose!44874 z!1189))))

(assert (=> d!1866404 (= (toList!9781 z!1189) lt!2313882)))

(declare-fun b!5953643 () Bool)

(declare-fun content!11845 (List!64292) (InoxSet Context!10762))

(assert (=> b!5953643 (= e!3642003 (= (content!11845 lt!2313882) z!1189))))

(assert (= (and d!1866404 res!2492102) b!5953643))

(declare-fun m!6841174 () Bool)

(assert (=> d!1866404 m!6841174))

(declare-fun m!6841176 () Bool)

(assert (=> d!1866404 m!6841176))

(declare-fun m!6841178 () Bool)

(assert (=> b!5953643 m!6841178))

(assert (=> b!5953166 d!1866404))

(declare-fun bs!1410547 () Bool)

(declare-fun b!5953644 () Bool)

(assert (= bs!1410547 (and b!5953644 d!1866308)))

(declare-fun lambda!325085 () Int)

(assert (=> bs!1410547 (not (= lambda!325085 lambda!325043))))

(declare-fun bs!1410548 () Bool)

(assert (= bs!1410548 (and b!5953644 b!5953590)))

(declare-fun lt!2313886 () Int)

(assert (=> bs!1410548 (= (= lt!2313886 lt!2313871) (= lambda!325085 lambda!325082))))

(declare-fun bs!1410549 () Bool)

(assert (= bs!1410549 (and b!5953644 b!5953582)))

(assert (=> bs!1410549 (= (= lt!2313886 lt!2313865) (= lambda!325085 lambda!325081))))

(declare-fun bs!1410550 () Bool)

(assert (= bs!1410550 (and b!5953644 d!1866300)))

(assert (=> bs!1410550 (not (= lambda!325085 lambda!325028))))

(declare-fun bs!1410551 () Bool)

(assert (= bs!1410551 (and b!5953644 d!1866304)))

(assert (=> bs!1410551 (not (= lambda!325085 lambda!325035))))

(declare-fun bs!1410552 () Bool)

(assert (= bs!1410552 (and b!5953644 d!1866302)))

(assert (=> bs!1410552 (not (= lambda!325085 lambda!325029))))

(declare-fun bs!1410553 () Bool)

(assert (= bs!1410553 (and b!5953644 b!5953592)))

(assert (=> bs!1410553 (= (= lt!2313886 lt!2313869) (= lambda!325085 lambda!325083))))

(declare-fun bs!1410554 () Bool)

(assert (= bs!1410554 (and b!5953644 d!1866344)))

(assert (=> bs!1410554 (not (= lambda!325085 lambda!325073))))

(declare-fun bs!1410555 () Bool)

(assert (= bs!1410555 (and b!5953644 d!1866328)))

(assert (=> bs!1410555 (not (= lambda!325085 lambda!325068))))

(declare-fun bs!1410556 () Bool)

(assert (= bs!1410556 (and b!5953644 b!5953580)))

(assert (=> bs!1410556 (= (= lt!2313886 lt!2313867) (= lambda!325085 lambda!325080))))

(assert (=> b!5953644 true))

(declare-fun bs!1410557 () Bool)

(declare-fun b!5953646 () Bool)

(assert (= bs!1410557 (and b!5953646 d!1866308)))

(declare-fun lambda!325086 () Int)

(assert (=> bs!1410557 (not (= lambda!325086 lambda!325043))))

(declare-fun bs!1410558 () Bool)

(assert (= bs!1410558 (and b!5953646 b!5953582)))

(declare-fun lt!2313884 () Int)

(assert (=> bs!1410558 (= (= lt!2313884 lt!2313865) (= lambda!325086 lambda!325081))))

(declare-fun bs!1410559 () Bool)

(assert (= bs!1410559 (and b!5953646 d!1866300)))

(assert (=> bs!1410559 (not (= lambda!325086 lambda!325028))))

(declare-fun bs!1410560 () Bool)

(assert (= bs!1410560 (and b!5953646 d!1866304)))

(assert (=> bs!1410560 (not (= lambda!325086 lambda!325035))))

(declare-fun bs!1410561 () Bool)

(assert (= bs!1410561 (and b!5953646 d!1866302)))

(assert (=> bs!1410561 (not (= lambda!325086 lambda!325029))))

(declare-fun bs!1410562 () Bool)

(assert (= bs!1410562 (and b!5953646 b!5953592)))

(assert (=> bs!1410562 (= (= lt!2313884 lt!2313869) (= lambda!325086 lambda!325083))))

(declare-fun bs!1410563 () Bool)

(assert (= bs!1410563 (and b!5953646 d!1866344)))

(assert (=> bs!1410563 (not (= lambda!325086 lambda!325073))))

(declare-fun bs!1410564 () Bool)

(assert (= bs!1410564 (and b!5953646 b!5953644)))

(assert (=> bs!1410564 (= (= lt!2313884 lt!2313886) (= lambda!325086 lambda!325085))))

(declare-fun bs!1410565 () Bool)

(assert (= bs!1410565 (and b!5953646 b!5953590)))

(assert (=> bs!1410565 (= (= lt!2313884 lt!2313871) (= lambda!325086 lambda!325082))))

(declare-fun bs!1410566 () Bool)

(assert (= bs!1410566 (and b!5953646 d!1866328)))

(assert (=> bs!1410566 (not (= lambda!325086 lambda!325068))))

(declare-fun bs!1410567 () Bool)

(assert (= bs!1410567 (and b!5953646 b!5953580)))

(assert (=> bs!1410567 (= (= lt!2313884 lt!2313867) (= lambda!325086 lambda!325080))))

(assert (=> b!5953646 true))

(declare-fun d!1866406 () Bool)

(declare-fun e!3642005 () Bool)

(assert (=> d!1866406 e!3642005))

(declare-fun res!2492103 () Bool)

(assert (=> d!1866406 (=> (not res!2492103) (not e!3642005))))

(assert (=> d!1866406 (= res!2492103 (>= lt!2313884 0))))

(declare-fun e!3642004 () Int)

(assert (=> d!1866406 (= lt!2313884 e!3642004)))

(declare-fun c!1059620 () Bool)

(assert (=> d!1866406 (= c!1059620 ((_ is Cons!64166) (exprs!5881 lt!2313746)))))

(assert (=> d!1866406 (= (contextDepth!145 lt!2313746) lt!2313884)))

(assert (=> b!5953644 (= e!3642004 lt!2313886)))

(assert (=> b!5953644 (= lt!2313886 (maxBigInt!0 (regexDepth!254 (h!70614 (exprs!5881 lt!2313746))) (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313746))))))))

(declare-fun lt!2313885 () Unit!157265)

(assert (=> b!5953644 (= lt!2313885 (lemmaForallRegexDepthBiggerThanTransitive!46 (t!377701 (exprs!5881 lt!2313746)) lt!2313886 (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313746))))))))

(assert (=> b!5953644 (forall!15085 (t!377701 (exprs!5881 lt!2313746)) lambda!325085)))

(declare-fun lt!2313883 () Unit!157265)

(assert (=> b!5953644 (= lt!2313883 lt!2313885)))

(declare-fun b!5953645 () Bool)

(assert (=> b!5953645 (= e!3642004 0)))

(assert (=> b!5953646 (= e!3642005 (forall!15085 (exprs!5881 lt!2313746) lambda!325086))))

(assert (= (and d!1866406 c!1059620) b!5953644))

(assert (= (and d!1866406 (not c!1059620)) b!5953645))

(assert (= (and d!1866406 res!2492103) b!5953646))

(declare-fun m!6841180 () Bool)

(assert (=> b!5953644 m!6841180))

(declare-fun m!6841182 () Bool)

(assert (=> b!5953644 m!6841182))

(declare-fun m!6841184 () Bool)

(assert (=> b!5953644 m!6841184))

(assert (=> b!5953644 m!6841182))

(declare-fun m!6841186 () Bool)

(assert (=> b!5953644 m!6841186))

(assert (=> b!5953644 m!6841180))

(assert (=> b!5953644 m!6841182))

(declare-fun m!6841188 () Bool)

(assert (=> b!5953644 m!6841188))

(declare-fun m!6841190 () Bool)

(assert (=> b!5953646 m!6841190))

(assert (=> b!5953177 d!1866406))

(declare-fun d!1866408 () Bool)

(assert (=> d!1866408 (= (flatMap!1510 z!1189 lambda!325000) (choose!44871 z!1189 lambda!325000))))

(declare-fun bs!1410568 () Bool)

(assert (= bs!1410568 d!1866408))

(declare-fun m!6841192 () Bool)

(assert (=> bs!1410568 m!6841192))

(assert (=> b!5953147 d!1866408))

(declare-fun b!5953667 () Bool)

(declare-fun e!3642020 () (InoxSet Context!10762))

(assert (=> b!5953667 (= e!3642020 ((as const (Array Context!10762 Bool)) false))))

(declare-fun d!1866410 () Bool)

(declare-fun c!1059630 () Bool)

(declare-fun e!3642019 () Bool)

(assert (=> d!1866410 (= c!1059630 e!3642019)))

(declare-fun res!2492108 () Bool)

(assert (=> d!1866410 (=> (not res!2492108) (not e!3642019))))

(assert (=> d!1866410 (= res!2492108 ((_ is Cons!64166) (exprs!5881 (h!70616 zl!343))))))

(declare-fun e!3642018 () (InoxSet Context!10762))

(assert (=> d!1866410 (= (derivationStepZipperUp!1173 (h!70616 zl!343) (h!70615 s!2326)) e!3642018)))

(declare-fun b!5953668 () Bool)

(declare-fun call!474338 () (InoxSet Context!10762))

(assert (=> b!5953668 (= e!3642020 call!474338)))

(declare-fun b!5953669 () Bool)

(assert (=> b!5953669 (= e!3642019 (nullable!5992 (h!70614 (exprs!5881 (h!70616 zl!343)))))))

(declare-fun b!5953670 () Bool)

(assert (=> b!5953670 (= e!3642018 e!3642020)))

(declare-fun c!1059629 () Bool)

(assert (=> b!5953670 (= c!1059629 ((_ is Cons!64166) (exprs!5881 (h!70616 zl!343))))))

(declare-fun b!5953671 () Bool)

(assert (=> b!5953671 (= e!3642018 ((_ map or) call!474338 (derivationStepZipperUp!1173 (Context!10763 (t!377701 (exprs!5881 (h!70616 zl!343)))) (h!70615 s!2326))))))

(declare-fun bm!474333 () Bool)

(assert (=> bm!474333 (= call!474338 (derivationStepZipperDown!1247 (h!70614 (exprs!5881 (h!70616 zl!343))) (Context!10763 (t!377701 (exprs!5881 (h!70616 zl!343)))) (h!70615 s!2326)))))

(assert (= (and d!1866410 res!2492108) b!5953669))

(assert (= (and d!1866410 c!1059630) b!5953671))

(assert (= (and d!1866410 (not c!1059630)) b!5953670))

(assert (= (and b!5953670 c!1059629) b!5953668))

(assert (= (and b!5953670 (not c!1059629)) b!5953667))

(assert (= (or b!5953671 b!5953668) bm!474333))

(declare-fun m!6841194 () Bool)

(assert (=> b!5953669 m!6841194))

(declare-fun m!6841196 () Bool)

(assert (=> b!5953671 m!6841196))

(declare-fun m!6841198 () Bool)

(assert (=> bm!474333 m!6841198))

(assert (=> b!5953147 d!1866410))

(declare-fun d!1866412 () Bool)

(assert (=> d!1866412 (= (flatMap!1510 z!1189 lambda!325000) (dynLambda!25107 lambda!325000 (h!70616 zl!343)))))

(declare-fun lt!2313889 () Unit!157265)

(assert (=> d!1866412 (= lt!2313889 (choose!44870 z!1189 (h!70616 zl!343) lambda!325000))))

(assert (=> d!1866412 (= z!1189 (store ((as const (Array Context!10762 Bool)) false) (h!70616 zl!343) true))))

(assert (=> d!1866412 (= (lemmaFlatMapOnSingletonSet!1036 z!1189 (h!70616 zl!343) lambda!325000) lt!2313889)))

(declare-fun b_lambda!223763 () Bool)

(assert (=> (not b_lambda!223763) (not d!1866412)))

(declare-fun bs!1410569 () Bool)

(assert (= bs!1410569 d!1866412))

(assert (=> bs!1410569 m!6840602))

(declare-fun m!6841200 () Bool)

(assert (=> bs!1410569 m!6841200))

(declare-fun m!6841202 () Bool)

(assert (=> bs!1410569 m!6841202))

(declare-fun m!6841204 () Bool)

(assert (=> bs!1410569 m!6841204))

(assert (=> b!5953147 d!1866412))

(declare-fun d!1866414 () Bool)

(declare-fun c!1059631 () Bool)

(assert (=> d!1866414 (= c!1059631 (isEmpty!36053 (t!377702 s!2326)))))

(declare-fun e!3642021 () Bool)

(assert (=> d!1866414 (= (matchZipper!2033 lt!2313734 (t!377702 s!2326)) e!3642021)))

(declare-fun b!5953672 () Bool)

(assert (=> b!5953672 (= e!3642021 (nullableZipper!1804 lt!2313734))))

(declare-fun b!5953673 () Bool)

(assert (=> b!5953673 (= e!3642021 (matchZipper!2033 (derivationStepZipper!1978 lt!2313734 (head!12536 (t!377702 s!2326))) (tail!11621 (t!377702 s!2326))))))

(assert (= (and d!1866414 c!1059631) b!5953672))

(assert (= (and d!1866414 (not c!1059631)) b!5953673))

(assert (=> d!1866414 m!6840972))

(declare-fun m!6841206 () Bool)

(assert (=> b!5953672 m!6841206))

(assert (=> b!5953673 m!6840976))

(assert (=> b!5953673 m!6840976))

(declare-fun m!6841208 () Bool)

(assert (=> b!5953673 m!6841208))

(assert (=> b!5953673 m!6840980))

(assert (=> b!5953673 m!6841208))

(assert (=> b!5953673 m!6840980))

(declare-fun m!6841210 () Bool)

(assert (=> b!5953673 m!6841210))

(assert (=> b!5953176 d!1866414))

(declare-fun d!1866416 () Bool)

(declare-fun c!1059632 () Bool)

(assert (=> d!1866416 (= c!1059632 (isEmpty!36053 (t!377702 s!2326)))))

(declare-fun e!3642022 () Bool)

(assert (=> d!1866416 (= (matchZipper!2033 lt!2313758 (t!377702 s!2326)) e!3642022)))

(declare-fun b!5953674 () Bool)

(assert (=> b!5953674 (= e!3642022 (nullableZipper!1804 lt!2313758))))

(declare-fun b!5953675 () Bool)

(assert (=> b!5953675 (= e!3642022 (matchZipper!2033 (derivationStepZipper!1978 lt!2313758 (head!12536 (t!377702 s!2326))) (tail!11621 (t!377702 s!2326))))))

(assert (= (and d!1866416 c!1059632) b!5953674))

(assert (= (and d!1866416 (not c!1059632)) b!5953675))

(assert (=> d!1866416 m!6840972))

(declare-fun m!6841212 () Bool)

(assert (=> b!5953674 m!6841212))

(assert (=> b!5953675 m!6840976))

(assert (=> b!5953675 m!6840976))

(declare-fun m!6841214 () Bool)

(assert (=> b!5953675 m!6841214))

(assert (=> b!5953675 m!6840980))

(assert (=> b!5953675 m!6841214))

(assert (=> b!5953675 m!6840980))

(declare-fun m!6841216 () Bool)

(assert (=> b!5953675 m!6841216))

(assert (=> b!5953176 d!1866416))

(declare-fun d!1866418 () Bool)

(declare-fun c!1059633 () Bool)

(assert (=> d!1866418 (= c!1059633 (isEmpty!36053 (t!377702 s!2326)))))

(declare-fun e!3642023 () Bool)

(assert (=> d!1866418 (= (matchZipper!2033 lt!2313745 (t!377702 s!2326)) e!3642023)))

(declare-fun b!5953676 () Bool)

(assert (=> b!5953676 (= e!3642023 (nullableZipper!1804 lt!2313745))))

(declare-fun b!5953677 () Bool)

(assert (=> b!5953677 (= e!3642023 (matchZipper!2033 (derivationStepZipper!1978 lt!2313745 (head!12536 (t!377702 s!2326))) (tail!11621 (t!377702 s!2326))))))

(assert (= (and d!1866418 c!1059633) b!5953676))

(assert (= (and d!1866418 (not c!1059633)) b!5953677))

(assert (=> d!1866418 m!6840972))

(declare-fun m!6841218 () Bool)

(assert (=> b!5953676 m!6841218))

(assert (=> b!5953677 m!6840976))

(assert (=> b!5953677 m!6840976))

(declare-fun m!6841220 () Bool)

(assert (=> b!5953677 m!6841220))

(assert (=> b!5953677 m!6840980))

(assert (=> b!5953677 m!6841220))

(assert (=> b!5953677 m!6840980))

(declare-fun m!6841222 () Bool)

(assert (=> b!5953677 m!6841222))

(assert (=> b!5953176 d!1866418))

(declare-fun e!3642032 () Bool)

(declare-fun d!1866420 () Bool)

(assert (=> d!1866420 (= (matchZipper!2033 ((_ map or) lt!2313745 lt!2313757) (t!377702 s!2326)) e!3642032)))

(declare-fun res!2492113 () Bool)

(assert (=> d!1866420 (=> res!2492113 e!3642032)))

(assert (=> d!1866420 (= res!2492113 (matchZipper!2033 lt!2313745 (t!377702 s!2326)))))

(declare-fun lt!2313893 () Unit!157265)

(declare-fun choose!44876 ((InoxSet Context!10762) (InoxSet Context!10762) List!64291) Unit!157265)

(assert (=> d!1866420 (= lt!2313893 (choose!44876 lt!2313745 lt!2313757 (t!377702 s!2326)))))

(assert (=> d!1866420 (= (lemmaZipperConcatMatchesSameAsBothZippers!864 lt!2313745 lt!2313757 (t!377702 s!2326)) lt!2313893)))

(declare-fun b!5953690 () Bool)

(assert (=> b!5953690 (= e!3642032 (matchZipper!2033 lt!2313757 (t!377702 s!2326)))))

(assert (= (and d!1866420 (not res!2492113)) b!5953690))

(declare-fun m!6841244 () Bool)

(assert (=> d!1866420 m!6841244))

(assert (=> d!1866420 m!6840680))

(declare-fun m!6841246 () Bool)

(assert (=> d!1866420 m!6841246))

(assert (=> b!5953690 m!6840662))

(assert (=> b!5953176 d!1866420))

(declare-fun b!5953848 () Bool)

(declare-fun res!2492168 () Bool)

(declare-fun e!3642113 () Bool)

(assert (=> b!5953848 (=> (not res!2492168) (not e!3642113))))

(declare-fun lt!2313907 () Option!15888)

(declare-fun get!22108 (Option!15888) tuple2!65952)

(assert (=> b!5953848 (= res!2492168 (matchR!8180 (regTwo!32506 r!7292) (_2!36279 (get!22108 lt!2313907))))))

(declare-fun d!1866426 () Bool)

(declare-fun e!3642114 () Bool)

(assert (=> d!1866426 e!3642114))

(declare-fun res!2492170 () Bool)

(assert (=> d!1866426 (=> res!2492170 e!3642114)))

(assert (=> d!1866426 (= res!2492170 e!3642113)))

(declare-fun res!2492167 () Bool)

(assert (=> d!1866426 (=> (not res!2492167) (not e!3642113))))

(assert (=> d!1866426 (= res!2492167 (isDefined!12591 lt!2313907))))

(declare-fun e!3642112 () Option!15888)

(assert (=> d!1866426 (= lt!2313907 e!3642112)))

(declare-fun c!1059664 () Bool)

(declare-fun e!3642116 () Bool)

(assert (=> d!1866426 (= c!1059664 e!3642116)))

(declare-fun res!2492171 () Bool)

(assert (=> d!1866426 (=> (not res!2492171) (not e!3642116))))

(assert (=> d!1866426 (= res!2492171 (matchR!8180 (regOne!32506 r!7292) Nil!64167))))

(assert (=> d!1866426 (validRegex!7733 (regOne!32506 r!7292))))

(assert (=> d!1866426 (= (findConcatSeparation!2302 (regOne!32506 r!7292) (regTwo!32506 r!7292) Nil!64167 s!2326 s!2326) lt!2313907)))

(declare-fun b!5953849 () Bool)

(assert (=> b!5953849 (= e!3642116 (matchR!8180 (regTwo!32506 r!7292) s!2326))))

(declare-fun b!5953850 () Bool)

(declare-fun ++!14094 (List!64291 List!64291) List!64291)

(assert (=> b!5953850 (= e!3642113 (= (++!14094 (_1!36279 (get!22108 lt!2313907)) (_2!36279 (get!22108 lt!2313907))) s!2326))))

(declare-fun b!5953851 () Bool)

(assert (=> b!5953851 (= e!3642112 (Some!15887 (tuple2!65953 Nil!64167 s!2326)))))

(declare-fun b!5953852 () Bool)

(declare-fun e!3642115 () Option!15888)

(assert (=> b!5953852 (= e!3642112 e!3642115)))

(declare-fun c!1059663 () Bool)

(assert (=> b!5953852 (= c!1059663 ((_ is Nil!64167) s!2326))))

(declare-fun b!5953853 () Bool)

(declare-fun lt!2313906 () Unit!157265)

(declare-fun lt!2313908 () Unit!157265)

(assert (=> b!5953853 (= lt!2313906 lt!2313908)))

(assert (=> b!5953853 (= (++!14094 (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) Nil!64167)) (t!377702 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2189 (List!64291 C!32264 List!64291 List!64291) Unit!157265)

(assert (=> b!5953853 (= lt!2313908 (lemmaMoveElementToOtherListKeepsConcatEq!2189 Nil!64167 (h!70615 s!2326) (t!377702 s!2326) s!2326))))

(assert (=> b!5953853 (= e!3642115 (findConcatSeparation!2302 (regOne!32506 r!7292) (regTwo!32506 r!7292) (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) Nil!64167)) (t!377702 s!2326) s!2326))))

(declare-fun b!5953854 () Bool)

(assert (=> b!5953854 (= e!3642115 None!15887)))

(declare-fun b!5953855 () Bool)

(declare-fun res!2492169 () Bool)

(assert (=> b!5953855 (=> (not res!2492169) (not e!3642113))))

(assert (=> b!5953855 (= res!2492169 (matchR!8180 (regOne!32506 r!7292) (_1!36279 (get!22108 lt!2313907))))))

(declare-fun b!5953856 () Bool)

(assert (=> b!5953856 (= e!3642114 (not (isDefined!12591 lt!2313907)))))

(assert (= (and d!1866426 res!2492171) b!5953849))

(assert (= (and d!1866426 c!1059664) b!5953851))

(assert (= (and d!1866426 (not c!1059664)) b!5953852))

(assert (= (and b!5953852 c!1059663) b!5953854))

(assert (= (and b!5953852 (not c!1059663)) b!5953853))

(assert (= (and d!1866426 res!2492167) b!5953855))

(assert (= (and b!5953855 res!2492169) b!5953848))

(assert (= (and b!5953848 res!2492168) b!5953850))

(assert (= (and d!1866426 (not res!2492170)) b!5953856))

(declare-fun m!6841268 () Bool)

(assert (=> b!5953848 m!6841268))

(declare-fun m!6841270 () Bool)

(assert (=> b!5953848 m!6841270))

(declare-fun m!6841272 () Bool)

(assert (=> b!5953853 m!6841272))

(assert (=> b!5953853 m!6841272))

(declare-fun m!6841274 () Bool)

(assert (=> b!5953853 m!6841274))

(declare-fun m!6841276 () Bool)

(assert (=> b!5953853 m!6841276))

(assert (=> b!5953853 m!6841272))

(declare-fun m!6841278 () Bool)

(assert (=> b!5953853 m!6841278))

(declare-fun m!6841280 () Bool)

(assert (=> d!1866426 m!6841280))

(declare-fun m!6841282 () Bool)

(assert (=> d!1866426 m!6841282))

(declare-fun m!6841284 () Bool)

(assert (=> d!1866426 m!6841284))

(assert (=> b!5953856 m!6841280))

(assert (=> b!5953855 m!6841268))

(declare-fun m!6841286 () Bool)

(assert (=> b!5953855 m!6841286))

(declare-fun m!6841288 () Bool)

(assert (=> b!5953849 m!6841288))

(assert (=> b!5953850 m!6841268))

(declare-fun m!6841290 () Bool)

(assert (=> b!5953850 m!6841290))

(assert (=> b!5953157 d!1866426))

(declare-fun d!1866438 () Bool)

(declare-fun choose!44877 (Int) Bool)

(assert (=> d!1866438 (= (Exists!3067 lambda!324998) (choose!44877 lambda!324998))))

(declare-fun bs!1410603 () Bool)

(assert (= bs!1410603 d!1866438))

(declare-fun m!6841292 () Bool)

(assert (=> bs!1410603 m!6841292))

(assert (=> b!5953157 d!1866438))

(declare-fun bs!1410604 () Bool)

(declare-fun d!1866440 () Bool)

(assert (= bs!1410604 (and d!1866440 b!5953157)))

(declare-fun lambda!325099 () Int)

(assert (=> bs!1410604 (= lambda!325099 lambda!324998)))

(assert (=> bs!1410604 (not (= lambda!325099 lambda!324999))))

(assert (=> d!1866440 true))

(assert (=> d!1866440 true))

(assert (=> d!1866440 true))

(assert (=> d!1866440 (= (isDefined!12591 (findConcatSeparation!2302 (regOne!32506 r!7292) (regTwo!32506 r!7292) Nil!64167 s!2326 s!2326)) (Exists!3067 lambda!325099))))

(declare-fun lt!2313911 () Unit!157265)

(declare-fun choose!44878 (Regex!15997 Regex!15997 List!64291) Unit!157265)

(assert (=> d!1866440 (= lt!2313911 (choose!44878 (regOne!32506 r!7292) (regTwo!32506 r!7292) s!2326))))

(assert (=> d!1866440 (validRegex!7733 (regOne!32506 r!7292))))

(assert (=> d!1866440 (= (lemmaFindConcatSeparationEquivalentToExists!2066 (regOne!32506 r!7292) (regTwo!32506 r!7292) s!2326) lt!2313911)))

(declare-fun bs!1410605 () Bool)

(assert (= bs!1410605 d!1866440))

(assert (=> bs!1410605 m!6840610))

(assert (=> bs!1410605 m!6840612))

(assert (=> bs!1410605 m!6841284))

(declare-fun m!6841294 () Bool)

(assert (=> bs!1410605 m!6841294))

(assert (=> bs!1410605 m!6840610))

(declare-fun m!6841296 () Bool)

(assert (=> bs!1410605 m!6841296))

(assert (=> b!5953157 d!1866440))

(declare-fun bs!1410606 () Bool)

(declare-fun d!1866442 () Bool)

(assert (= bs!1410606 (and d!1866442 b!5953157)))

(declare-fun lambda!325104 () Int)

(assert (=> bs!1410606 (= lambda!325104 lambda!324998)))

(assert (=> bs!1410606 (not (= lambda!325104 lambda!324999))))

(declare-fun bs!1410607 () Bool)

(assert (= bs!1410607 (and d!1866442 d!1866440)))

(assert (=> bs!1410607 (= lambda!325104 lambda!325099)))

(assert (=> d!1866442 true))

(assert (=> d!1866442 true))

(assert (=> d!1866442 true))

(declare-fun lambda!325105 () Int)

(assert (=> bs!1410606 (not (= lambda!325105 lambda!324998))))

(assert (=> bs!1410606 (= lambda!325105 lambda!324999)))

(assert (=> bs!1410607 (not (= lambda!325105 lambda!325099))))

(declare-fun bs!1410608 () Bool)

(assert (= bs!1410608 d!1866442))

(assert (=> bs!1410608 (not (= lambda!325105 lambda!325104))))

(assert (=> d!1866442 true))

(assert (=> d!1866442 true))

(assert (=> d!1866442 true))

(assert (=> d!1866442 (= (Exists!3067 lambda!325104) (Exists!3067 lambda!325105))))

(declare-fun lt!2313914 () Unit!157265)

(declare-fun choose!44879 (Regex!15997 Regex!15997 List!64291) Unit!157265)

(assert (=> d!1866442 (= lt!2313914 (choose!44879 (regOne!32506 r!7292) (regTwo!32506 r!7292) s!2326))))

(assert (=> d!1866442 (validRegex!7733 (regOne!32506 r!7292))))

(assert (=> d!1866442 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1604 (regOne!32506 r!7292) (regTwo!32506 r!7292) s!2326) lt!2313914)))

(declare-fun m!6841298 () Bool)

(assert (=> bs!1410608 m!6841298))

(declare-fun m!6841300 () Bool)

(assert (=> bs!1410608 m!6841300))

(declare-fun m!6841302 () Bool)

(assert (=> bs!1410608 m!6841302))

(assert (=> bs!1410608 m!6841284))

(assert (=> b!5953157 d!1866442))

(declare-fun d!1866444 () Bool)

(assert (=> d!1866444 (= (Exists!3067 lambda!324999) (choose!44877 lambda!324999))))

(declare-fun bs!1410609 () Bool)

(assert (= bs!1410609 d!1866444))

(declare-fun m!6841304 () Bool)

(assert (=> bs!1410609 m!6841304))

(assert (=> b!5953157 d!1866444))

(declare-fun d!1866446 () Bool)

(declare-fun isEmpty!36054 (Option!15888) Bool)

(assert (=> d!1866446 (= (isDefined!12591 (findConcatSeparation!2302 (regOne!32506 r!7292) (regTwo!32506 r!7292) Nil!64167 s!2326 s!2326)) (not (isEmpty!36054 (findConcatSeparation!2302 (regOne!32506 r!7292) (regTwo!32506 r!7292) Nil!64167 s!2326 s!2326))))))

(declare-fun bs!1410610 () Bool)

(assert (= bs!1410610 d!1866446))

(assert (=> bs!1410610 m!6840610))

(declare-fun m!6841306 () Bool)

(assert (=> bs!1410610 m!6841306))

(assert (=> b!5953157 d!1866446))

(declare-fun d!1866448 () Bool)

(declare-fun c!1059665 () Bool)

(assert (=> d!1866448 (= c!1059665 (isEmpty!36053 (t!377702 s!2326)))))

(declare-fun e!3642123 () Bool)

(assert (=> d!1866448 (= (matchZipper!2033 lt!2313757 (t!377702 s!2326)) e!3642123)))

(declare-fun b!5953869 () Bool)

(assert (=> b!5953869 (= e!3642123 (nullableZipper!1804 lt!2313757))))

(declare-fun b!5953870 () Bool)

(assert (=> b!5953870 (= e!3642123 (matchZipper!2033 (derivationStepZipper!1978 lt!2313757 (head!12536 (t!377702 s!2326))) (tail!11621 (t!377702 s!2326))))))

(assert (= (and d!1866448 c!1059665) b!5953869))

(assert (= (and d!1866448 (not c!1059665)) b!5953870))

(assert (=> d!1866448 m!6840972))

(declare-fun m!6841308 () Bool)

(assert (=> b!5953869 m!6841308))

(assert (=> b!5953870 m!6840976))

(assert (=> b!5953870 m!6840976))

(declare-fun m!6841310 () Bool)

(assert (=> b!5953870 m!6841310))

(assert (=> b!5953870 m!6840980))

(assert (=> b!5953870 m!6841310))

(assert (=> b!5953870 m!6840980))

(declare-fun m!6841312 () Bool)

(assert (=> b!5953870 m!6841312))

(assert (=> b!5953156 d!1866448))

(declare-fun d!1866450 () Bool)

(declare-fun c!1059666 () Bool)

(assert (=> d!1866450 (= c!1059666 (isEmpty!36053 s!2326))))

(declare-fun e!3642124 () Bool)

(assert (=> d!1866450 (= (matchZipper!2033 lt!2313741 s!2326) e!3642124)))

(declare-fun b!5953871 () Bool)

(assert (=> b!5953871 (= e!3642124 (nullableZipper!1804 lt!2313741))))

(declare-fun b!5953872 () Bool)

(assert (=> b!5953872 (= e!3642124 (matchZipper!2033 (derivationStepZipper!1978 lt!2313741 (head!12536 s!2326)) (tail!11621 s!2326)))))

(assert (= (and d!1866450 c!1059666) b!5953871))

(assert (= (and d!1866450 (not c!1059666)) b!5953872))

(assert (=> d!1866450 m!6840960))

(declare-fun m!6841314 () Bool)

(assert (=> b!5953871 m!6841314))

(assert (=> b!5953872 m!6840964))

(assert (=> b!5953872 m!6840964))

(declare-fun m!6841316 () Bool)

(assert (=> b!5953872 m!6841316))

(assert (=> b!5953872 m!6840968))

(assert (=> b!5953872 m!6841316))

(assert (=> b!5953872 m!6840968))

(declare-fun m!6841318 () Bool)

(assert (=> b!5953872 m!6841318))

(assert (=> b!5953165 d!1866450))

(declare-fun d!1866452 () Bool)

(declare-fun c!1059667 () Bool)

(assert (=> d!1866452 (= c!1059667 (isEmpty!36053 (t!377702 s!2326)))))

(declare-fun e!3642125 () Bool)

(assert (=> d!1866452 (= (matchZipper!2033 (derivationStepZipper!1978 lt!2313741 (h!70615 s!2326)) (t!377702 s!2326)) e!3642125)))

(declare-fun b!5953873 () Bool)

(assert (=> b!5953873 (= e!3642125 (nullableZipper!1804 (derivationStepZipper!1978 lt!2313741 (h!70615 s!2326))))))

(declare-fun b!5953874 () Bool)

(assert (=> b!5953874 (= e!3642125 (matchZipper!2033 (derivationStepZipper!1978 (derivationStepZipper!1978 lt!2313741 (h!70615 s!2326)) (head!12536 (t!377702 s!2326))) (tail!11621 (t!377702 s!2326))))))

(assert (= (and d!1866452 c!1059667) b!5953873))

(assert (= (and d!1866452 (not c!1059667)) b!5953874))

(assert (=> d!1866452 m!6840972))

(assert (=> b!5953873 m!6840686))

(declare-fun m!6841320 () Bool)

(assert (=> b!5953873 m!6841320))

(assert (=> b!5953874 m!6840976))

(assert (=> b!5953874 m!6840686))

(assert (=> b!5953874 m!6840976))

(declare-fun m!6841322 () Bool)

(assert (=> b!5953874 m!6841322))

(assert (=> b!5953874 m!6840980))

(assert (=> b!5953874 m!6841322))

(assert (=> b!5953874 m!6840980))

(declare-fun m!6841324 () Bool)

(assert (=> b!5953874 m!6841324))

(assert (=> b!5953165 d!1866452))

(declare-fun bs!1410611 () Bool)

(declare-fun d!1866454 () Bool)

(assert (= bs!1410611 (and d!1866454 b!5953147)))

(declare-fun lambda!325106 () Int)

(assert (=> bs!1410611 (= lambda!325106 lambda!325000)))

(declare-fun bs!1410612 () Bool)

(assert (= bs!1410612 (and d!1866454 d!1866326)))

(assert (=> bs!1410612 (= lambda!325106 lambda!325065)))

(declare-fun bs!1410613 () Bool)

(assert (= bs!1410613 (and d!1866454 d!1866386)))

(assert (=> bs!1410613 (= lambda!325106 lambda!325084)))

(assert (=> d!1866454 true))

(assert (=> d!1866454 (= (derivationStepZipper!1978 lt!2313741 (h!70615 s!2326)) (flatMap!1510 lt!2313741 lambda!325106))))

(declare-fun bs!1410614 () Bool)

(assert (= bs!1410614 d!1866454))

(declare-fun m!6841326 () Bool)

(assert (=> bs!1410614 m!6841326))

(assert (=> b!5953165 d!1866454))

(declare-fun bs!1410615 () Bool)

(declare-fun b!5953915 () Bool)

(assert (= bs!1410615 (and b!5953915 b!5953157)))

(declare-fun lambda!325111 () Int)

(assert (=> bs!1410615 (not (= lambda!325111 lambda!324999))))

(assert (=> bs!1410615 (not (= lambda!325111 lambda!324998))))

(declare-fun bs!1410616 () Bool)

(assert (= bs!1410616 (and b!5953915 d!1866440)))

(assert (=> bs!1410616 (not (= lambda!325111 lambda!325099))))

(declare-fun bs!1410617 () Bool)

(assert (= bs!1410617 (and b!5953915 d!1866442)))

(assert (=> bs!1410617 (not (= lambda!325111 lambda!325104))))

(assert (=> bs!1410617 (not (= lambda!325111 lambda!325105))))

(assert (=> b!5953915 true))

(assert (=> b!5953915 true))

(declare-fun bs!1410618 () Bool)

(declare-fun b!5953909 () Bool)

(assert (= bs!1410618 (and b!5953909 b!5953915)))

(declare-fun lambda!325112 () Int)

(assert (=> bs!1410618 (not (= lambda!325112 lambda!325111))))

(declare-fun bs!1410619 () Bool)

(assert (= bs!1410619 (and b!5953909 b!5953157)))

(assert (=> bs!1410619 (= lambda!325112 lambda!324999)))

(assert (=> bs!1410619 (not (= lambda!325112 lambda!324998))))

(declare-fun bs!1410620 () Bool)

(assert (= bs!1410620 (and b!5953909 d!1866440)))

(assert (=> bs!1410620 (not (= lambda!325112 lambda!325099))))

(declare-fun bs!1410621 () Bool)

(assert (= bs!1410621 (and b!5953909 d!1866442)))

(assert (=> bs!1410621 (not (= lambda!325112 lambda!325104))))

(assert (=> bs!1410621 (= lambda!325112 lambda!325105)))

(assert (=> b!5953909 true))

(assert (=> b!5953909 true))

(declare-fun bm!474347 () Bool)

(declare-fun call!474352 () Bool)

(assert (=> bm!474347 (= call!474352 (isEmpty!36053 s!2326))))

(declare-fun bm!474348 () Bool)

(declare-fun call!474353 () Bool)

(declare-fun c!1059679 () Bool)

(assert (=> bm!474348 (= call!474353 (Exists!3067 (ite c!1059679 lambda!325111 lambda!325112)))))

(declare-fun d!1866456 () Bool)

(declare-fun c!1059678 () Bool)

(assert (=> d!1866456 (= c!1059678 ((_ is EmptyExpr!15997) r!7292))))

(declare-fun e!3642150 () Bool)

(assert (=> d!1866456 (= (matchRSpec!3098 r!7292 s!2326) e!3642150)))

(declare-fun b!5953907 () Bool)

(declare-fun c!1059677 () Bool)

(assert (=> b!5953907 (= c!1059677 ((_ is Union!15997) r!7292))))

(declare-fun e!3642148 () Bool)

(declare-fun e!3642149 () Bool)

(assert (=> b!5953907 (= e!3642148 e!3642149)))

(declare-fun b!5953908 () Bool)

(declare-fun res!2492202 () Bool)

(declare-fun e!3642147 () Bool)

(assert (=> b!5953908 (=> res!2492202 e!3642147)))

(assert (=> b!5953908 (= res!2492202 call!474352)))

(declare-fun e!3642146 () Bool)

(assert (=> b!5953908 (= e!3642146 e!3642147)))

(assert (=> b!5953909 (= e!3642146 call!474353)))

(declare-fun b!5953910 () Bool)

(declare-fun e!3642145 () Bool)

(assert (=> b!5953910 (= e!3642145 (matchRSpec!3098 (regTwo!32507 r!7292) s!2326))))

(declare-fun b!5953911 () Bool)

(declare-fun e!3642144 () Bool)

(assert (=> b!5953911 (= e!3642150 e!3642144)))

(declare-fun res!2492200 () Bool)

(assert (=> b!5953911 (= res!2492200 (not ((_ is EmptyLang!15997) r!7292)))))

(assert (=> b!5953911 (=> (not res!2492200) (not e!3642144))))

(declare-fun b!5953912 () Bool)

(assert (=> b!5953912 (= e!3642149 e!3642145)))

(declare-fun res!2492201 () Bool)

(assert (=> b!5953912 (= res!2492201 (matchRSpec!3098 (regOne!32507 r!7292) s!2326))))

(assert (=> b!5953912 (=> res!2492201 e!3642145)))

(declare-fun b!5953913 () Bool)

(assert (=> b!5953913 (= e!3642149 e!3642146)))

(assert (=> b!5953913 (= c!1059679 ((_ is Star!15997) r!7292))))

(declare-fun b!5953914 () Bool)

(assert (=> b!5953914 (= e!3642148 (= s!2326 (Cons!64167 (c!1059438 r!7292) Nil!64167)))))

(assert (=> b!5953915 (= e!3642147 call!474353)))

(declare-fun b!5953916 () Bool)

(assert (=> b!5953916 (= e!3642150 call!474352)))

(declare-fun b!5953917 () Bool)

(declare-fun c!1059676 () Bool)

(assert (=> b!5953917 (= c!1059676 ((_ is ElementMatch!15997) r!7292))))

(assert (=> b!5953917 (= e!3642144 e!3642148)))

(assert (= (and d!1866456 c!1059678) b!5953916))

(assert (= (and d!1866456 (not c!1059678)) b!5953911))

(assert (= (and b!5953911 res!2492200) b!5953917))

(assert (= (and b!5953917 c!1059676) b!5953914))

(assert (= (and b!5953917 (not c!1059676)) b!5953907))

(assert (= (and b!5953907 c!1059677) b!5953912))

(assert (= (and b!5953907 (not c!1059677)) b!5953913))

(assert (= (and b!5953912 (not res!2492201)) b!5953910))

(assert (= (and b!5953913 c!1059679) b!5953908))

(assert (= (and b!5953913 (not c!1059679)) b!5953909))

(assert (= (and b!5953908 (not res!2492202)) b!5953915))

(assert (= (or b!5953915 b!5953909) bm!474348))

(assert (= (or b!5953916 b!5953908) bm!474347))

(assert (=> bm!474347 m!6840960))

(declare-fun m!6841328 () Bool)

(assert (=> bm!474348 m!6841328))

(declare-fun m!6841330 () Bool)

(assert (=> b!5953910 m!6841330))

(declare-fun m!6841332 () Bool)

(assert (=> b!5953912 m!6841332))

(assert (=> b!5953164 d!1866456))

(declare-fun b!5953946 () Bool)

(declare-fun e!3642166 () Bool)

(declare-fun e!3642171 () Bool)

(assert (=> b!5953946 (= e!3642166 e!3642171)))

(declare-fun res!2492226 () Bool)

(assert (=> b!5953946 (=> res!2492226 e!3642171)))

(declare-fun call!474356 () Bool)

(assert (=> b!5953946 (= res!2492226 call!474356)))

(declare-fun d!1866458 () Bool)

(declare-fun e!3642167 () Bool)

(assert (=> d!1866458 e!3642167))

(declare-fun c!1059688 () Bool)

(assert (=> d!1866458 (= c!1059688 ((_ is EmptyExpr!15997) r!7292))))

(declare-fun lt!2313917 () Bool)

(declare-fun e!3642170 () Bool)

(assert (=> d!1866458 (= lt!2313917 e!3642170)))

(declare-fun c!1059686 () Bool)

(assert (=> d!1866458 (= c!1059686 (isEmpty!36053 s!2326))))

(assert (=> d!1866458 (validRegex!7733 r!7292)))

(assert (=> d!1866458 (= (matchR!8180 r!7292 s!2326) lt!2313917)))

(declare-fun bm!474351 () Bool)

(assert (=> bm!474351 (= call!474356 (isEmpty!36053 s!2326))))

(declare-fun b!5953947 () Bool)

(declare-fun res!2492224 () Bool)

(declare-fun e!3642168 () Bool)

(assert (=> b!5953947 (=> (not res!2492224) (not e!3642168))))

(assert (=> b!5953947 (= res!2492224 (not call!474356))))

(declare-fun b!5953948 () Bool)

(declare-fun res!2492220 () Bool)

(declare-fun e!3642169 () Bool)

(assert (=> b!5953948 (=> res!2492220 e!3642169)))

(assert (=> b!5953948 (= res!2492220 (not ((_ is ElementMatch!15997) r!7292)))))

(declare-fun e!3642165 () Bool)

(assert (=> b!5953948 (= e!3642165 e!3642169)))

(declare-fun b!5953949 () Bool)

(assert (=> b!5953949 (= e!3642167 (= lt!2313917 call!474356))))

(declare-fun b!5953950 () Bool)

(assert (=> b!5953950 (= e!3642165 (not lt!2313917))))

(declare-fun b!5953951 () Bool)

(declare-fun res!2492223 () Bool)

(assert (=> b!5953951 (=> (not res!2492223) (not e!3642168))))

(assert (=> b!5953951 (= res!2492223 (isEmpty!36053 (tail!11621 s!2326)))))

(declare-fun b!5953952 () Bool)

(assert (=> b!5953952 (= e!3642170 (nullable!5992 r!7292))))

(declare-fun b!5953953 () Bool)

(assert (=> b!5953953 (= e!3642167 e!3642165)))

(declare-fun c!1059687 () Bool)

(assert (=> b!5953953 (= c!1059687 ((_ is EmptyLang!15997) r!7292))))

(declare-fun b!5953954 () Bool)

(assert (=> b!5953954 (= e!3642168 (= (head!12536 s!2326) (c!1059438 r!7292)))))

(declare-fun b!5953955 () Bool)

(assert (=> b!5953955 (= e!3642171 (not (= (head!12536 s!2326) (c!1059438 r!7292))))))

(declare-fun b!5953956 () Bool)

(declare-fun derivativeStep!4728 (Regex!15997 C!32264) Regex!15997)

(assert (=> b!5953956 (= e!3642170 (matchR!8180 (derivativeStep!4728 r!7292 (head!12536 s!2326)) (tail!11621 s!2326)))))

(declare-fun b!5953957 () Bool)

(assert (=> b!5953957 (= e!3642169 e!3642166)))

(declare-fun res!2492221 () Bool)

(assert (=> b!5953957 (=> (not res!2492221) (not e!3642166))))

(assert (=> b!5953957 (= res!2492221 (not lt!2313917))))

(declare-fun b!5953958 () Bool)

(declare-fun res!2492225 () Bool)

(assert (=> b!5953958 (=> res!2492225 e!3642171)))

(assert (=> b!5953958 (= res!2492225 (not (isEmpty!36053 (tail!11621 s!2326))))))

(declare-fun b!5953959 () Bool)

(declare-fun res!2492222 () Bool)

(assert (=> b!5953959 (=> res!2492222 e!3642169)))

(assert (=> b!5953959 (= res!2492222 e!3642168)))

(declare-fun res!2492219 () Bool)

(assert (=> b!5953959 (=> (not res!2492219) (not e!3642168))))

(assert (=> b!5953959 (= res!2492219 lt!2313917)))

(assert (= (and d!1866458 c!1059686) b!5953952))

(assert (= (and d!1866458 (not c!1059686)) b!5953956))

(assert (= (and d!1866458 c!1059688) b!5953949))

(assert (= (and d!1866458 (not c!1059688)) b!5953953))

(assert (= (and b!5953953 c!1059687) b!5953950))

(assert (= (and b!5953953 (not c!1059687)) b!5953948))

(assert (= (and b!5953948 (not res!2492220)) b!5953959))

(assert (= (and b!5953959 res!2492219) b!5953947))

(assert (= (and b!5953947 res!2492224) b!5953951))

(assert (= (and b!5953951 res!2492223) b!5953954))

(assert (= (and b!5953959 (not res!2492222)) b!5953957))

(assert (= (and b!5953957 res!2492221) b!5953946))

(assert (= (and b!5953946 (not res!2492226)) b!5953958))

(assert (= (and b!5953958 (not res!2492225)) b!5953955))

(assert (= (or b!5953949 b!5953946 b!5953947) bm!474351))

(assert (=> b!5953956 m!6840964))

(assert (=> b!5953956 m!6840964))

(declare-fun m!6841334 () Bool)

(assert (=> b!5953956 m!6841334))

(assert (=> b!5953956 m!6840968))

(assert (=> b!5953956 m!6841334))

(assert (=> b!5953956 m!6840968))

(declare-fun m!6841336 () Bool)

(assert (=> b!5953956 m!6841336))

(assert (=> bm!474351 m!6840960))

(assert (=> b!5953951 m!6840968))

(assert (=> b!5953951 m!6840968))

(declare-fun m!6841338 () Bool)

(assert (=> b!5953951 m!6841338))

(assert (=> d!1866458 m!6840960))

(assert (=> d!1866458 m!6840702))

(assert (=> b!5953954 m!6840964))

(assert (=> b!5953958 m!6840968))

(assert (=> b!5953958 m!6840968))

(assert (=> b!5953958 m!6841338))

(declare-fun m!6841340 () Bool)

(assert (=> b!5953952 m!6841340))

(assert (=> b!5953955 m!6840964))

(assert (=> b!5953164 d!1866458))

(declare-fun d!1866460 () Bool)

(assert (=> d!1866460 (= (matchR!8180 r!7292 s!2326) (matchRSpec!3098 r!7292 s!2326))))

(declare-fun lt!2313920 () Unit!157265)

(declare-fun choose!44880 (Regex!15997 List!64291) Unit!157265)

(assert (=> d!1866460 (= lt!2313920 (choose!44880 r!7292 s!2326))))

(assert (=> d!1866460 (validRegex!7733 r!7292)))

(assert (=> d!1866460 (= (mainMatchTheorem!3098 r!7292 s!2326) lt!2313920)))

(declare-fun bs!1410622 () Bool)

(assert (= bs!1410622 d!1866460))

(assert (=> bs!1410622 m!6840666))

(assert (=> bs!1410622 m!6840664))

(declare-fun m!6841342 () Bool)

(assert (=> bs!1410622 m!6841342))

(assert (=> bs!1410622 m!6840702))

(assert (=> b!5953164 d!1866460))

(declare-fun b!5953972 () Bool)

(declare-fun e!3642174 () Bool)

(declare-fun tp!1656473 () Bool)

(assert (=> b!5953972 (= e!3642174 tp!1656473)))

(assert (=> b!5953174 (= tp!1656399 e!3642174)))

(declare-fun b!5953970 () Bool)

(assert (=> b!5953970 (= e!3642174 tp_is_empty!41247)))

(declare-fun b!5953971 () Bool)

(declare-fun tp!1656476 () Bool)

(declare-fun tp!1656474 () Bool)

(assert (=> b!5953971 (= e!3642174 (and tp!1656476 tp!1656474))))

(declare-fun b!5953973 () Bool)

(declare-fun tp!1656475 () Bool)

(declare-fun tp!1656477 () Bool)

(assert (=> b!5953973 (= e!3642174 (and tp!1656475 tp!1656477))))

(assert (= (and b!5953174 ((_ is ElementMatch!15997) (reg!16326 r!7292))) b!5953970))

(assert (= (and b!5953174 ((_ is Concat!24842) (reg!16326 r!7292))) b!5953971))

(assert (= (and b!5953174 ((_ is Star!15997) (reg!16326 r!7292))) b!5953972))

(assert (= (and b!5953174 ((_ is Union!15997) (reg!16326 r!7292))) b!5953973))

(declare-fun b!5953981 () Bool)

(declare-fun e!3642180 () Bool)

(declare-fun tp!1656482 () Bool)

(assert (=> b!5953981 (= e!3642180 tp!1656482)))

(declare-fun b!5953980 () Bool)

(declare-fun tp!1656483 () Bool)

(declare-fun e!3642179 () Bool)

(assert (=> b!5953980 (= e!3642179 (and (inv!83239 (h!70616 (t!377703 zl!343))) e!3642180 tp!1656483))))

(assert (=> b!5953148 (= tp!1656404 e!3642179)))

(assert (= b!5953980 b!5953981))

(assert (= (and b!5953148 ((_ is Cons!64168) (t!377703 zl!343))) b!5953980))

(declare-fun m!6841344 () Bool)

(assert (=> b!5953980 m!6841344))

(declare-fun condSetEmpty!40473 () Bool)

(assert (=> setNonEmpty!40467 (= condSetEmpty!40473 (= setRest!40467 ((as const (Array Context!10762 Bool)) false)))))

(declare-fun setRes!40473 () Bool)

(assert (=> setNonEmpty!40467 (= tp!1656401 setRes!40473)))

(declare-fun setIsEmpty!40473 () Bool)

(assert (=> setIsEmpty!40473 setRes!40473))

(declare-fun e!3642183 () Bool)

(declare-fun setNonEmpty!40473 () Bool)

(declare-fun tp!1656488 () Bool)

(declare-fun setElem!40473 () Context!10762)

(assert (=> setNonEmpty!40473 (= setRes!40473 (and tp!1656488 (inv!83239 setElem!40473) e!3642183))))

(declare-fun setRest!40473 () (InoxSet Context!10762))

(assert (=> setNonEmpty!40473 (= setRest!40467 ((_ map or) (store ((as const (Array Context!10762 Bool)) false) setElem!40473 true) setRest!40473))))

(declare-fun b!5953986 () Bool)

(declare-fun tp!1656489 () Bool)

(assert (=> b!5953986 (= e!3642183 tp!1656489)))

(assert (= (and setNonEmpty!40467 condSetEmpty!40473) setIsEmpty!40473))

(assert (= (and setNonEmpty!40467 (not condSetEmpty!40473)) setNonEmpty!40473))

(assert (= setNonEmpty!40473 b!5953986))

(declare-fun m!6841346 () Bool)

(assert (=> setNonEmpty!40473 m!6841346))

(declare-fun b!5953991 () Bool)

(declare-fun e!3642186 () Bool)

(declare-fun tp!1656494 () Bool)

(declare-fun tp!1656495 () Bool)

(assert (=> b!5953991 (= e!3642186 (and tp!1656494 tp!1656495))))

(assert (=> b!5953152 (= tp!1656398 e!3642186)))

(assert (= (and b!5953152 ((_ is Cons!64166) (exprs!5881 setElem!40467))) b!5953991))

(declare-fun b!5953994 () Bool)

(declare-fun e!3642187 () Bool)

(declare-fun tp!1656496 () Bool)

(assert (=> b!5953994 (= e!3642187 tp!1656496)))

(assert (=> b!5953160 (= tp!1656397 e!3642187)))

(declare-fun b!5953992 () Bool)

(assert (=> b!5953992 (= e!3642187 tp_is_empty!41247)))

(declare-fun b!5953993 () Bool)

(declare-fun tp!1656499 () Bool)

(declare-fun tp!1656497 () Bool)

(assert (=> b!5953993 (= e!3642187 (and tp!1656499 tp!1656497))))

(declare-fun b!5953995 () Bool)

(declare-fun tp!1656498 () Bool)

(declare-fun tp!1656500 () Bool)

(assert (=> b!5953995 (= e!3642187 (and tp!1656498 tp!1656500))))

(assert (= (and b!5953160 ((_ is ElementMatch!15997) (regOne!32506 r!7292))) b!5953992))

(assert (= (and b!5953160 ((_ is Concat!24842) (regOne!32506 r!7292))) b!5953993))

(assert (= (and b!5953160 ((_ is Star!15997) (regOne!32506 r!7292))) b!5953994))

(assert (= (and b!5953160 ((_ is Union!15997) (regOne!32506 r!7292))) b!5953995))

(declare-fun b!5953998 () Bool)

(declare-fun e!3642188 () Bool)

(declare-fun tp!1656501 () Bool)

(assert (=> b!5953998 (= e!3642188 tp!1656501)))

(assert (=> b!5953160 (= tp!1656396 e!3642188)))

(declare-fun b!5953996 () Bool)

(assert (=> b!5953996 (= e!3642188 tp_is_empty!41247)))

(declare-fun b!5953997 () Bool)

(declare-fun tp!1656504 () Bool)

(declare-fun tp!1656502 () Bool)

(assert (=> b!5953997 (= e!3642188 (and tp!1656504 tp!1656502))))

(declare-fun b!5953999 () Bool)

(declare-fun tp!1656503 () Bool)

(declare-fun tp!1656505 () Bool)

(assert (=> b!5953999 (= e!3642188 (and tp!1656503 tp!1656505))))

(assert (= (and b!5953160 ((_ is ElementMatch!15997) (regTwo!32506 r!7292))) b!5953996))

(assert (= (and b!5953160 ((_ is Concat!24842) (regTwo!32506 r!7292))) b!5953997))

(assert (= (and b!5953160 ((_ is Star!15997) (regTwo!32506 r!7292))) b!5953998))

(assert (= (and b!5953160 ((_ is Union!15997) (regTwo!32506 r!7292))) b!5953999))

(declare-fun b!5954004 () Bool)

(declare-fun e!3642191 () Bool)

(declare-fun tp!1656508 () Bool)

(assert (=> b!5954004 (= e!3642191 (and tp_is_empty!41247 tp!1656508))))

(assert (=> b!5953171 (= tp!1656402 e!3642191)))

(assert (= (and b!5953171 ((_ is Cons!64167) (t!377702 s!2326))) b!5954004))

(declare-fun b!5954007 () Bool)

(declare-fun e!3642192 () Bool)

(declare-fun tp!1656509 () Bool)

(assert (=> b!5954007 (= e!3642192 tp!1656509)))

(assert (=> b!5953175 (= tp!1656400 e!3642192)))

(declare-fun b!5954005 () Bool)

(assert (=> b!5954005 (= e!3642192 tp_is_empty!41247)))

(declare-fun b!5954006 () Bool)

(declare-fun tp!1656512 () Bool)

(declare-fun tp!1656510 () Bool)

(assert (=> b!5954006 (= e!3642192 (and tp!1656512 tp!1656510))))

(declare-fun b!5954008 () Bool)

(declare-fun tp!1656511 () Bool)

(declare-fun tp!1656513 () Bool)

(assert (=> b!5954008 (= e!3642192 (and tp!1656511 tp!1656513))))

(assert (= (and b!5953175 ((_ is ElementMatch!15997) (regOne!32507 r!7292))) b!5954005))

(assert (= (and b!5953175 ((_ is Concat!24842) (regOne!32507 r!7292))) b!5954006))

(assert (= (and b!5953175 ((_ is Star!15997) (regOne!32507 r!7292))) b!5954007))

(assert (= (and b!5953175 ((_ is Union!15997) (regOne!32507 r!7292))) b!5954008))

(declare-fun b!5954011 () Bool)

(declare-fun e!3642193 () Bool)

(declare-fun tp!1656514 () Bool)

(assert (=> b!5954011 (= e!3642193 tp!1656514)))

(assert (=> b!5953175 (= tp!1656403 e!3642193)))

(declare-fun b!5954009 () Bool)

(assert (=> b!5954009 (= e!3642193 tp_is_empty!41247)))

(declare-fun b!5954010 () Bool)

(declare-fun tp!1656517 () Bool)

(declare-fun tp!1656515 () Bool)

(assert (=> b!5954010 (= e!3642193 (and tp!1656517 tp!1656515))))

(declare-fun b!5954012 () Bool)

(declare-fun tp!1656516 () Bool)

(declare-fun tp!1656518 () Bool)

(assert (=> b!5954012 (= e!3642193 (and tp!1656516 tp!1656518))))

(assert (= (and b!5953175 ((_ is ElementMatch!15997) (regTwo!32507 r!7292))) b!5954009))

(assert (= (and b!5953175 ((_ is Concat!24842) (regTwo!32507 r!7292))) b!5954010))

(assert (= (and b!5953175 ((_ is Star!15997) (regTwo!32507 r!7292))) b!5954011))

(assert (= (and b!5953175 ((_ is Union!15997) (regTwo!32507 r!7292))) b!5954012))

(declare-fun b!5954013 () Bool)

(declare-fun e!3642194 () Bool)

(declare-fun tp!1656519 () Bool)

(declare-fun tp!1656520 () Bool)

(assert (=> b!5954013 (= e!3642194 (and tp!1656519 tp!1656520))))

(assert (=> b!5953159 (= tp!1656395 e!3642194)))

(assert (= (and b!5953159 ((_ is Cons!64166) (exprs!5881 (h!70616 zl!343)))) b!5954013))

(declare-fun b_lambda!223771 () Bool)

(assert (= b_lambda!223753 (or b!5953147 b_lambda!223771)))

(declare-fun bs!1410623 () Bool)

(declare-fun d!1866462 () Bool)

(assert (= bs!1410623 (and d!1866462 b!5953147)))

(assert (=> bs!1410623 (= (dynLambda!25107 lambda!325000 lt!2313738) (derivationStepZipperUp!1173 lt!2313738 (h!70615 s!2326)))))

(assert (=> bs!1410623 m!6840646))

(assert (=> d!1866286 d!1866462))

(declare-fun b_lambda!223773 () Bool)

(assert (= b_lambda!223755 (or b!5953147 b_lambda!223773)))

(declare-fun bs!1410624 () Bool)

(declare-fun d!1866464 () Bool)

(assert (= bs!1410624 (and d!1866464 b!5953147)))

(assert (=> bs!1410624 (= (dynLambda!25107 lambda!325000 lt!2313746) (derivationStepZipperUp!1173 lt!2313746 (h!70615 s!2326)))))

(assert (=> bs!1410624 m!6840642))

(assert (=> d!1866294 d!1866464))

(declare-fun b_lambda!223775 () Bool)

(assert (= b_lambda!223763 (or b!5953147 b_lambda!223775)))

(declare-fun bs!1410625 () Bool)

(declare-fun d!1866466 () Bool)

(assert (= bs!1410625 (and d!1866466 b!5953147)))

(assert (=> bs!1410625 (= (dynLambda!25107 lambda!325000 (h!70616 zl!343)) (derivationStepZipperUp!1173 (h!70616 zl!343) (h!70615 s!2326)))))

(assert (=> bs!1410625 m!6840604))

(assert (=> d!1866412 d!1866466))

(check-sat (not b!5953601) (not b!5953910) (not d!1866304) (not bm!474271) (not d!1866344) (not b!5953856) (not bm!474314) (not bs!1410625) (not b!5953995) (not b!5953853) (not d!1866296) (not d!1866324) (not bm!474348) (not b!5953487) (not bm!474260) (not b!5953674) (not b!5953848) (not b!5953408) (not b!5953411) (not bm!474351) (not d!1866408) (not d!1866326) (not b!5953354) (not d!1866446) (not d!1866418) (not b!5953644) (not b!5953952) (not b!5953352) (not bm!474270) (not b!5953993) (not b!5953994) (not b!5953690) (not d!1866286) (not b!5953483) (not d!1866328) (not b!5953981) (not b!5953958) (not b!5953672) (not bm!474264) (not b!5954004) (not b!5953972) (not bm!474268) (not b!5953873) (not bm!474262) (not b!5953643) (not b!5954013) (not bm!474246) (not b!5953991) (not bm!474301) (not b!5954007) (not b!5953348) (not b!5953673) (not d!1866452) (not d!1866450) (not d!1866414) (not b!5953245) (not b!5953484) (not setNonEmpty!40473) (not d!1866308) (not b!5954012) (not d!1866386) (not b_lambda!223775) (not b!5953350) (not d!1866320) (not bm!474347) (not b!5953850) (not b!5953874) (not d!1866438) (not b!5953669) (not b!5953346) (not b!5953872) (not d!1866390) (not b!5953425) (not b!5953486) (not d!1866426) (not bs!1410623) (not bm!474316) (not d!1866416) (not b!5953590) (not b!5954006) (not b!5954008) (not b!5953355) (not b!5953426) (not b!5953954) (not b!5953321) (not d!1866404) (not b!5953406) (not d!1866302) (not b!5953675) (not b!5953998) (not b!5953855) (not d!1866442) (not b!5953955) (not d!1866300) (not b!5953869) (not b!5953580) (not b!5953582) (not b!5953424) (not d!1866458) (not d!1866420) (not bs!1410624) (not b!5953671) (not b!5953243) (not bm!474266) (not b!5953951) (not b!5953956) (not b!5953997) (not b!5954010) (not b!5953676) (not b!5953368) (not b!5953492) (not b!5953627) (not b!5953349) (not b!5953491) (not b!5953319) (not d!1866444) (not b!5953999) (not d!1866412) (not bm!474318) (not b!5953871) (not bm!474300) (not d!1866282) (not b!5953427) (not b!5953973) tp_is_empty!41247 (not b!5953592) (not b!5953289) (not b!5953986) (not b!5953912) (not b!5953534) (not d!1866440) (not b!5953677) (not d!1866454) (not b!5953870) (not b!5953971) (not bm!474333) (not b!5953629) (not b!5953490) (not b!5953413) (not d!1866460) (not b!5953300) (not b_lambda!223771) (not b!5953646) (not b!5953849) (not b!5953980) (not d!1866294) (not d!1866292) (not b!5954011) (not d!1866448) (not b_lambda!223773) (not bm!474326))
(check-sat)
(get-model)

(declare-fun d!1866468 () Bool)

(declare-fun res!2492231 () Bool)

(declare-fun e!3642199 () Bool)

(assert (=> d!1866468 (=> res!2492231 e!3642199)))

(assert (=> d!1866468 (= res!2492231 ((_ is Nil!64166) lt!2313827))))

(assert (=> d!1866468 (= (forall!15085 lt!2313827 lambda!325043) e!3642199)))

(declare-fun b!5954018 () Bool)

(declare-fun e!3642200 () Bool)

(assert (=> b!5954018 (= e!3642199 e!3642200)))

(declare-fun res!2492232 () Bool)

(assert (=> b!5954018 (=> (not res!2492232) (not e!3642200))))

(declare-fun dynLambda!25109 (Int Regex!15997) Bool)

(assert (=> b!5954018 (= res!2492232 (dynLambda!25109 lambda!325043 (h!70614 lt!2313827)))))

(declare-fun b!5954019 () Bool)

(assert (=> b!5954019 (= e!3642200 (forall!15085 (t!377701 lt!2313827) lambda!325043))))

(assert (= (and d!1866468 (not res!2492231)) b!5954018))

(assert (= (and b!5954018 res!2492232) b!5954019))

(declare-fun b_lambda!223777 () Bool)

(assert (=> (not b_lambda!223777) (not b!5954018)))

(declare-fun m!6841348 () Bool)

(assert (=> b!5954018 m!6841348))

(declare-fun m!6841350 () Bool)

(assert (=> b!5954019 m!6841350))

(assert (=> d!1866308 d!1866468))

(assert (=> d!1866460 d!1866458))

(assert (=> d!1866460 d!1866456))

(declare-fun d!1866470 () Bool)

(assert (=> d!1866470 (= (matchR!8180 r!7292 s!2326) (matchRSpec!3098 r!7292 s!2326))))

(assert (=> d!1866470 true))

(declare-fun _$88!4461 () Unit!157265)

(assert (=> d!1866470 (= (choose!44880 r!7292 s!2326) _$88!4461)))

(declare-fun bs!1410626 () Bool)

(assert (= bs!1410626 d!1866470))

(assert (=> bs!1410626 m!6840666))

(assert (=> bs!1410626 m!6840664))

(assert (=> d!1866460 d!1866470))

(assert (=> d!1866460 d!1866334))

(declare-fun d!1866472 () Bool)

(assert (=> d!1866472 (= (flatMap!1510 z!1189 lambda!325084) (choose!44871 z!1189 lambda!325084))))

(declare-fun bs!1410627 () Bool)

(assert (= bs!1410627 d!1866472))

(declare-fun m!6841352 () Bool)

(assert (=> bs!1410627 m!6841352))

(assert (=> d!1866386 d!1866472))

(declare-fun bs!1410628 () Bool)

(declare-fun d!1866474 () Bool)

(assert (= bs!1410628 (and d!1866474 b!5953406)))

(declare-fun lambda!325115 () Int)

(assert (=> bs!1410628 (not (= lambda!325115 lambda!325055))))

(declare-fun bs!1410629 () Bool)

(assert (= bs!1410629 (and d!1866474 b!5953408)))

(assert (=> bs!1410629 (not (= lambda!325115 lambda!325056))))

(declare-fun bs!1410630 () Bool)

(assert (= bs!1410630 (and d!1866474 b!5953411)))

(assert (=> bs!1410630 (not (= lambda!325115 lambda!325058))))

(declare-fun bs!1410631 () Bool)

(assert (= bs!1410631 (and d!1866474 b!5953413)))

(assert (=> bs!1410631 (not (= lambda!325115 lambda!325059))))

(declare-fun exists!2353 ((InoxSet Context!10762) Int) Bool)

(assert (=> d!1866474 (= (nullableZipper!1804 lt!2313745) (exists!2353 lt!2313745 lambda!325115))))

(declare-fun bs!1410632 () Bool)

(assert (= bs!1410632 d!1866474))

(declare-fun m!6841354 () Bool)

(assert (=> bs!1410632 m!6841354))

(assert (=> b!5953676 d!1866474))

(declare-fun bs!1410633 () Bool)

(declare-fun d!1866476 () Bool)

(assert (= bs!1410633 (and d!1866476 b!5953406)))

(declare-fun lambda!325116 () Int)

(assert (=> bs!1410633 (not (= lambda!325116 lambda!325055))))

(declare-fun bs!1410634 () Bool)

(assert (= bs!1410634 (and d!1866476 b!5953408)))

(assert (=> bs!1410634 (not (= lambda!325116 lambda!325056))))

(declare-fun bs!1410635 () Bool)

(assert (= bs!1410635 (and d!1866476 d!1866474)))

(assert (=> bs!1410635 (= lambda!325116 lambda!325115)))

(declare-fun bs!1410636 () Bool)

(assert (= bs!1410636 (and d!1866476 b!5953411)))

(assert (=> bs!1410636 (not (= lambda!325116 lambda!325058))))

(declare-fun bs!1410637 () Bool)

(assert (= bs!1410637 (and d!1866476 b!5953413)))

(assert (=> bs!1410637 (not (= lambda!325116 lambda!325059))))

(assert (=> d!1866476 (= (nullableZipper!1804 lt!2313752) (exists!2353 lt!2313752 lambda!325116))))

(declare-fun bs!1410638 () Bool)

(assert (= bs!1410638 d!1866476))

(declare-fun m!6841356 () Bool)

(assert (=> bs!1410638 m!6841356))

(assert (=> b!5953424 d!1866476))

(declare-fun d!1866478 () Bool)

(assert (=> d!1866478 (= (isEmpty!36049 (exprs!5881 (h!70616 zl!343))) ((_ is Nil!64166) (exprs!5881 (h!70616 zl!343))))))

(assert (=> b!5953484 d!1866478))

(declare-fun d!1866480 () Bool)

(assert (=> d!1866480 (= (nullable!5992 (h!70614 (exprs!5881 (h!70616 zl!343)))) (nullableFct!1963 (h!70614 (exprs!5881 (h!70616 zl!343)))))))

(declare-fun bs!1410639 () Bool)

(assert (= bs!1410639 d!1866480))

(declare-fun m!6841358 () Bool)

(assert (=> bs!1410639 m!6841358))

(assert (=> b!5953669 d!1866480))

(declare-fun b!5954020 () Bool)

(declare-fun e!3642205 () (InoxSet Context!10762))

(declare-fun call!474362 () (InoxSet Context!10762))

(assert (=> b!5954020 (= e!3642205 call!474362)))

(declare-fun bm!474352 () Bool)

(declare-fun call!474359 () (InoxSet Context!10762))

(declare-fun call!474361 () (InoxSet Context!10762))

(assert (=> bm!474352 (= call!474359 call!474361)))

(declare-fun b!5954021 () Bool)

(declare-fun e!3642203 () (InoxSet Context!10762))

(declare-fun e!3642206 () (InoxSet Context!10762))

(assert (=> b!5954021 (= e!3642203 e!3642206)))

(declare-fun c!1059691 () Bool)

(assert (=> b!5954021 (= c!1059691 ((_ is Union!15997) (h!70614 (exprs!5881 lt!2313743))))))

(declare-fun c!1059694 () Bool)

(declare-fun call!474360 () List!64290)

(declare-fun bm!474353 () Bool)

(declare-fun c!1059693 () Bool)

(assert (=> bm!474353 (= call!474361 (derivationStepZipperDown!1247 (ite c!1059691 (regOne!32507 (h!70614 (exprs!5881 lt!2313743))) (ite c!1059694 (regTwo!32506 (h!70614 (exprs!5881 lt!2313743))) (ite c!1059693 (regOne!32506 (h!70614 (exprs!5881 lt!2313743))) (reg!16326 (h!70614 (exprs!5881 lt!2313743)))))) (ite (or c!1059691 c!1059694) (Context!10763 (t!377701 (exprs!5881 lt!2313743))) (Context!10763 call!474360)) (h!70615 s!2326)))))

(declare-fun bm!474354 () Bool)

(assert (=> bm!474354 (= call!474362 call!474359)))

(declare-fun b!5954022 () Bool)

(declare-fun e!3642202 () (InoxSet Context!10762))

(assert (=> b!5954022 (= e!3642202 call!474362)))

(declare-fun b!5954023 () Bool)

(declare-fun e!3642201 () Bool)

(assert (=> b!5954023 (= e!3642201 (nullable!5992 (regOne!32506 (h!70614 (exprs!5881 lt!2313743)))))))

(declare-fun b!5954024 () Bool)

(declare-fun e!3642204 () (InoxSet Context!10762))

(declare-fun call!474358 () (InoxSet Context!10762))

(assert (=> b!5954024 (= e!3642204 ((_ map or) call!474358 call!474359))))

(declare-fun d!1866482 () Bool)

(declare-fun c!1059692 () Bool)

(assert (=> d!1866482 (= c!1059692 (and ((_ is ElementMatch!15997) (h!70614 (exprs!5881 lt!2313743))) (= (c!1059438 (h!70614 (exprs!5881 lt!2313743))) (h!70615 s!2326))))))

(assert (=> d!1866482 (= (derivationStepZipperDown!1247 (h!70614 (exprs!5881 lt!2313743)) (Context!10763 (t!377701 (exprs!5881 lt!2313743))) (h!70615 s!2326)) e!3642203)))

(declare-fun b!5954025 () Bool)

(assert (=> b!5954025 (= e!3642203 (store ((as const (Array Context!10762 Bool)) false) (Context!10763 (t!377701 (exprs!5881 lt!2313743))) true))))

(declare-fun bm!474355 () Bool)

(declare-fun call!474357 () List!64290)

(assert (=> bm!474355 (= call!474357 ($colon$colon!1883 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313743)))) (ite (or c!1059694 c!1059693) (regTwo!32506 (h!70614 (exprs!5881 lt!2313743))) (h!70614 (exprs!5881 lt!2313743)))))))

(declare-fun b!5954026 () Bool)

(declare-fun c!1059695 () Bool)

(assert (=> b!5954026 (= c!1059695 ((_ is Star!15997) (h!70614 (exprs!5881 lt!2313743))))))

(assert (=> b!5954026 (= e!3642205 e!3642202)))

(declare-fun b!5954027 () Bool)

(assert (=> b!5954027 (= e!3642202 ((as const (Array Context!10762 Bool)) false))))

(declare-fun b!5954028 () Bool)

(assert (=> b!5954028 (= e!3642204 e!3642205)))

(assert (=> b!5954028 (= c!1059693 ((_ is Concat!24842) (h!70614 (exprs!5881 lt!2313743))))))

(declare-fun bm!474356 () Bool)

(assert (=> bm!474356 (= call!474360 call!474357)))

(declare-fun bm!474357 () Bool)

(assert (=> bm!474357 (= call!474358 (derivationStepZipperDown!1247 (ite c!1059691 (regTwo!32507 (h!70614 (exprs!5881 lt!2313743))) (regOne!32506 (h!70614 (exprs!5881 lt!2313743)))) (ite c!1059691 (Context!10763 (t!377701 (exprs!5881 lt!2313743))) (Context!10763 call!474357)) (h!70615 s!2326)))))

(declare-fun b!5954029 () Bool)

(assert (=> b!5954029 (= c!1059694 e!3642201)))

(declare-fun res!2492233 () Bool)

(assert (=> b!5954029 (=> (not res!2492233) (not e!3642201))))

(assert (=> b!5954029 (= res!2492233 ((_ is Concat!24842) (h!70614 (exprs!5881 lt!2313743))))))

(assert (=> b!5954029 (= e!3642206 e!3642204)))

(declare-fun b!5954030 () Bool)

(assert (=> b!5954030 (= e!3642206 ((_ map or) call!474361 call!474358))))

(assert (= (and d!1866482 c!1059692) b!5954025))

(assert (= (and d!1866482 (not c!1059692)) b!5954021))

(assert (= (and b!5954021 c!1059691) b!5954030))

(assert (= (and b!5954021 (not c!1059691)) b!5954029))

(assert (= (and b!5954029 res!2492233) b!5954023))

(assert (= (and b!5954029 c!1059694) b!5954024))

(assert (= (and b!5954029 (not c!1059694)) b!5954028))

(assert (= (and b!5954028 c!1059693) b!5954020))

(assert (= (and b!5954028 (not c!1059693)) b!5954026))

(assert (= (and b!5954026 c!1059695) b!5954022))

(assert (= (and b!5954026 (not c!1059695)) b!5954027))

(assert (= (or b!5954020 b!5954022) bm!474356))

(assert (= (or b!5954020 b!5954022) bm!474354))

(assert (= (or b!5954024 bm!474356) bm!474355))

(assert (= (or b!5954024 bm!474354) bm!474352))

(assert (= (or b!5954030 b!5954024) bm!474357))

(assert (= (or b!5954030 bm!474352) bm!474353))

(declare-fun m!6841360 () Bool)

(assert (=> b!5954023 m!6841360))

(declare-fun m!6841362 () Bool)

(assert (=> bm!474353 m!6841362))

(declare-fun m!6841364 () Bool)

(assert (=> bm!474355 m!6841364))

(declare-fun m!6841366 () Bool)

(assert (=> bm!474357 m!6841366))

(declare-fun m!6841368 () Bool)

(assert (=> b!5954025 m!6841368))

(assert (=> bm!474326 d!1866482))

(declare-fun d!1866484 () Bool)

(assert (=> d!1866484 (= (isEmpty!36049 (tail!11620 (unfocusZipperList!1418 zl!343))) ((_ is Nil!64166) (tail!11620 (unfocusZipperList!1418 zl!343))))))

(assert (=> b!5953349 d!1866484))

(declare-fun d!1866486 () Bool)

(assert (=> d!1866486 (= (tail!11620 (unfocusZipperList!1418 zl!343)) (t!377701 (unfocusZipperList!1418 zl!343)))))

(assert (=> b!5953349 d!1866486))

(declare-fun d!1866488 () Bool)

(declare-fun res!2492234 () Bool)

(declare-fun e!3642207 () Bool)

(assert (=> d!1866488 (=> res!2492234 e!3642207)))

(assert (=> d!1866488 (= res!2492234 ((_ is Nil!64166) (exprs!5881 lt!2313746)))))

(assert (=> d!1866488 (= (forall!15085 (exprs!5881 lt!2313746) lambda!325086) e!3642207)))

(declare-fun b!5954031 () Bool)

(declare-fun e!3642208 () Bool)

(assert (=> b!5954031 (= e!3642207 e!3642208)))

(declare-fun res!2492235 () Bool)

(assert (=> b!5954031 (=> (not res!2492235) (not e!3642208))))

(assert (=> b!5954031 (= res!2492235 (dynLambda!25109 lambda!325086 (h!70614 (exprs!5881 lt!2313746))))))

(declare-fun b!5954032 () Bool)

(assert (=> b!5954032 (= e!3642208 (forall!15085 (t!377701 (exprs!5881 lt!2313746)) lambda!325086))))

(assert (= (and d!1866488 (not res!2492234)) b!5954031))

(assert (= (and b!5954031 res!2492235) b!5954032))

(declare-fun b_lambda!223779 () Bool)

(assert (=> (not b_lambda!223779) (not b!5954031)))

(declare-fun m!6841370 () Bool)

(assert (=> b!5954031 m!6841370))

(declare-fun m!6841372 () Bool)

(assert (=> b!5954032 m!6841372))

(assert (=> b!5953646 d!1866488))

(declare-fun d!1866490 () Bool)

(assert (=> d!1866490 (= (isEmpty!36054 (findConcatSeparation!2302 (regOne!32506 r!7292) (regTwo!32506 r!7292) Nil!64167 s!2326 s!2326)) (not ((_ is Some!15887) (findConcatSeparation!2302 (regOne!32506 r!7292) (regTwo!32506 r!7292) Nil!64167 s!2326 s!2326))))))

(assert (=> d!1866446 d!1866490))

(assert (=> b!5953368 d!1866328))

(declare-fun bs!1410640 () Bool)

(declare-fun d!1866492 () Bool)

(assert (= bs!1410640 (and d!1866492 d!1866308)))

(declare-fun lambda!325117 () Int)

(assert (=> bs!1410640 (= lambda!325117 lambda!325043)))

(declare-fun bs!1410641 () Bool)

(assert (= bs!1410641 (and d!1866492 b!5953582)))

(assert (=> bs!1410641 (not (= lambda!325117 lambda!325081))))

(declare-fun bs!1410642 () Bool)

(assert (= bs!1410642 (and d!1866492 d!1866300)))

(assert (=> bs!1410642 (= lambda!325117 lambda!325028)))

(declare-fun bs!1410643 () Bool)

(assert (= bs!1410643 (and d!1866492 d!1866304)))

(assert (=> bs!1410643 (= lambda!325117 lambda!325035)))

(declare-fun bs!1410644 () Bool)

(assert (= bs!1410644 (and d!1866492 d!1866302)))

(assert (=> bs!1410644 (= lambda!325117 lambda!325029)))

(declare-fun bs!1410645 () Bool)

(assert (= bs!1410645 (and d!1866492 b!5953592)))

(assert (=> bs!1410645 (not (= lambda!325117 lambda!325083))))

(declare-fun bs!1410646 () Bool)

(assert (= bs!1410646 (and d!1866492 d!1866344)))

(assert (=> bs!1410646 (= lambda!325117 lambda!325073)))

(declare-fun bs!1410647 () Bool)

(assert (= bs!1410647 (and d!1866492 b!5953646)))

(assert (=> bs!1410647 (not (= lambda!325117 lambda!325086))))

(declare-fun bs!1410648 () Bool)

(assert (= bs!1410648 (and d!1866492 b!5953644)))

(assert (=> bs!1410648 (not (= lambda!325117 lambda!325085))))

(declare-fun bs!1410649 () Bool)

(assert (= bs!1410649 (and d!1866492 b!5953590)))

(assert (=> bs!1410649 (not (= lambda!325117 lambda!325082))))

(declare-fun bs!1410650 () Bool)

(assert (= bs!1410650 (and d!1866492 d!1866328)))

(assert (=> bs!1410650 (= lambda!325117 lambda!325068)))

(declare-fun bs!1410651 () Bool)

(assert (= bs!1410651 (and d!1866492 b!5953580)))

(assert (=> bs!1410651 (not (= lambda!325117 lambda!325080))))

(declare-fun lt!2313921 () List!64290)

(assert (=> d!1866492 (forall!15085 lt!2313921 lambda!325117)))

(declare-fun e!3642209 () List!64290)

(assert (=> d!1866492 (= lt!2313921 e!3642209)))

(declare-fun c!1059696 () Bool)

(assert (=> d!1866492 (= c!1059696 ((_ is Cons!64168) (t!377703 zl!343)))))

(assert (=> d!1866492 (= (unfocusZipperList!1418 (t!377703 zl!343)) lt!2313921)))

(declare-fun b!5954033 () Bool)

(assert (=> b!5954033 (= e!3642209 (Cons!64166 (generalisedConcat!1594 (exprs!5881 (h!70616 (t!377703 zl!343)))) (unfocusZipperList!1418 (t!377703 (t!377703 zl!343)))))))

(declare-fun b!5954034 () Bool)

(assert (=> b!5954034 (= e!3642209 Nil!64166)))

(assert (= (and d!1866492 c!1059696) b!5954033))

(assert (= (and d!1866492 (not c!1059696)) b!5954034))

(declare-fun m!6841374 () Bool)

(assert (=> d!1866492 m!6841374))

(declare-fun m!6841376 () Bool)

(assert (=> b!5954033 m!6841376))

(declare-fun m!6841378 () Bool)

(assert (=> b!5954033 m!6841378))

(assert (=> b!5953368 d!1866492))

(declare-fun d!1866494 () Bool)

(declare-fun res!2492236 () Bool)

(declare-fun e!3642210 () Bool)

(assert (=> d!1866494 (=> res!2492236 e!3642210)))

(assert (=> d!1866494 (= res!2492236 ((_ is Nil!64166) (exprs!5881 lt!2313746)))))

(assert (=> d!1866494 (= (forall!15085 (exprs!5881 lt!2313746) lambda!325073) e!3642210)))

(declare-fun b!5954035 () Bool)

(declare-fun e!3642211 () Bool)

(assert (=> b!5954035 (= e!3642210 e!3642211)))

(declare-fun res!2492237 () Bool)

(assert (=> b!5954035 (=> (not res!2492237) (not e!3642211))))

(assert (=> b!5954035 (= res!2492237 (dynLambda!25109 lambda!325073 (h!70614 (exprs!5881 lt!2313746))))))

(declare-fun b!5954036 () Bool)

(assert (=> b!5954036 (= e!3642211 (forall!15085 (t!377701 (exprs!5881 lt!2313746)) lambda!325073))))

(assert (= (and d!1866494 (not res!2492236)) b!5954035))

(assert (= (and b!5954035 res!2492237) b!5954036))

(declare-fun b_lambda!223781 () Bool)

(assert (=> (not b_lambda!223781) (not b!5954035)))

(declare-fun m!6841380 () Bool)

(assert (=> b!5954035 m!6841380))

(declare-fun m!6841382 () Bool)

(assert (=> b!5954036 m!6841382))

(assert (=> d!1866344 d!1866494))

(declare-fun b!5954071 () Bool)

(declare-fun e!3642236 () Bool)

(declare-fun lt!2313924 () Int)

(declare-fun call!474380 () Int)

(assert (=> b!5954071 (= e!3642236 (> lt!2313924 call!474380))))

(declare-fun bm!474372 () Bool)

(declare-fun call!474383 () Int)

(declare-fun c!1059712 () Bool)

(assert (=> bm!474372 (= call!474383 (regexDepth!254 (ite c!1059712 (regTwo!32507 (h!70614 (exprs!5881 lt!2313743))) (regOne!32506 (h!70614 (exprs!5881 lt!2313743))))))))

(declare-fun bm!474373 () Bool)

(declare-fun call!474381 () Int)

(declare-fun call!474379 () Int)

(assert (=> bm!474373 (= call!474381 (maxBigInt!0 (ite c!1059712 call!474379 call!474383) (ite c!1059712 call!474383 call!474379)))))

(declare-fun b!5954072 () Bool)

(declare-fun e!3642237 () Int)

(declare-fun e!3642234 () Int)

(assert (=> b!5954072 (= e!3642237 e!3642234)))

(declare-fun c!1059716 () Bool)

(assert (=> b!5954072 (= c!1059716 ((_ is Star!15997) (h!70614 (exprs!5881 lt!2313743))))))

(declare-fun b!5954073 () Bool)

(assert (=> b!5954073 (= c!1059712 ((_ is Union!15997) (h!70614 (exprs!5881 lt!2313743))))))

(declare-fun e!3642233 () Int)

(assert (=> b!5954073 (= e!3642234 e!3642233)))

(declare-fun b!5954074 () Bool)

(declare-fun e!3642232 () Int)

(assert (=> b!5954074 (= e!3642233 e!3642232)))

(declare-fun c!1059717 () Bool)

(assert (=> b!5954074 (= c!1059717 ((_ is Concat!24842) (h!70614 (exprs!5881 lt!2313743))))))

(declare-fun b!5954075 () Bool)

(assert (=> b!5954075 (= e!3642233 (+ 1 call!474381))))

(declare-fun b!5954076 () Bool)

(declare-fun e!3642238 () Bool)

(declare-fun e!3642241 () Bool)

(assert (=> b!5954076 (= e!3642238 e!3642241)))

(declare-fun c!1059715 () Bool)

(assert (=> b!5954076 (= c!1059715 ((_ is Concat!24842) (h!70614 (exprs!5881 lt!2313743))))))

(declare-fun b!5954077 () Bool)

(declare-fun c!1059714 () Bool)

(assert (=> b!5954077 (= c!1059714 ((_ is Star!15997) (h!70614 (exprs!5881 lt!2313743))))))

(declare-fun e!3642240 () Bool)

(assert (=> b!5954077 (= e!3642241 e!3642240)))

(declare-fun b!5954078 () Bool)

(declare-fun e!3642235 () Bool)

(declare-fun call!474378 () Int)

(assert (=> b!5954078 (= e!3642235 (> lt!2313924 call!474378))))

(declare-fun b!5954079 () Bool)

(assert (=> b!5954079 (= e!3642237 1)))

(declare-fun bm!474375 () Bool)

(declare-fun call!474377 () Int)

(assert (=> bm!474375 (= call!474379 call!474377)))

(declare-fun b!5954080 () Bool)

(assert (=> b!5954080 (= e!3642232 1)))

(declare-fun b!5954081 () Bool)

(assert (=> b!5954081 (= e!3642238 e!3642236)))

(declare-fun res!2492246 () Bool)

(assert (=> b!5954081 (= res!2492246 (> lt!2313924 call!474378))))

(assert (=> b!5954081 (=> (not res!2492246) (not e!3642236))))

(declare-fun bm!474376 () Bool)

(declare-fun call!474382 () Int)

(assert (=> bm!474376 (= call!474382 call!474380)))

(declare-fun b!5954082 () Bool)

(declare-fun res!2492245 () Bool)

(assert (=> b!5954082 (=> (not res!2492245) (not e!3642235))))

(assert (=> b!5954082 (= res!2492245 (> lt!2313924 call!474382))))

(assert (=> b!5954082 (= e!3642241 e!3642235)))

(declare-fun b!5954083 () Bool)

(assert (=> b!5954083 (= e!3642232 (+ 1 call!474381))))

(declare-fun b!5954084 () Bool)

(assert (=> b!5954084 (= e!3642240 (= lt!2313924 1))))

(declare-fun c!1059713 () Bool)

(declare-fun bm!474377 () Bool)

(assert (=> bm!474377 (= call!474380 (regexDepth!254 (ite c!1059713 (regTwo!32507 (h!70614 (exprs!5881 lt!2313743))) (ite c!1059715 (regOne!32506 (h!70614 (exprs!5881 lt!2313743))) (reg!16326 (h!70614 (exprs!5881 lt!2313743)))))))))

(declare-fun bm!474374 () Bool)

(assert (=> bm!474374 (= call!474378 (regexDepth!254 (ite c!1059713 (regOne!32507 (h!70614 (exprs!5881 lt!2313743))) (regTwo!32506 (h!70614 (exprs!5881 lt!2313743))))))))

(declare-fun d!1866496 () Bool)

(declare-fun e!3642239 () Bool)

(assert (=> d!1866496 e!3642239))

(declare-fun res!2492244 () Bool)

(assert (=> d!1866496 (=> (not res!2492244) (not e!3642239))))

(assert (=> d!1866496 (= res!2492244 (> lt!2313924 0))))

(assert (=> d!1866496 (= lt!2313924 e!3642237)))

(declare-fun c!1059711 () Bool)

(assert (=> d!1866496 (= c!1059711 ((_ is ElementMatch!15997) (h!70614 (exprs!5881 lt!2313743))))))

(assert (=> d!1866496 (= (regexDepth!254 (h!70614 (exprs!5881 lt!2313743))) lt!2313924)))

(declare-fun b!5954085 () Bool)

(assert (=> b!5954085 (= e!3642239 e!3642238)))

(assert (=> b!5954085 (= c!1059713 ((_ is Union!15997) (h!70614 (exprs!5881 lt!2313743))))))

(declare-fun b!5954086 () Bool)

(assert (=> b!5954086 (= e!3642234 (+ 1 call!474377))))

(declare-fun b!5954087 () Bool)

(assert (=> b!5954087 (= e!3642240 (> lt!2313924 call!474382))))

(declare-fun bm!474378 () Bool)

(assert (=> bm!474378 (= call!474377 (regexDepth!254 (ite c!1059716 (reg!16326 (h!70614 (exprs!5881 lt!2313743))) (ite c!1059712 (regOne!32507 (h!70614 (exprs!5881 lt!2313743))) (regTwo!32506 (h!70614 (exprs!5881 lt!2313743)))))))))

(assert (= (and d!1866496 c!1059711) b!5954079))

(assert (= (and d!1866496 (not c!1059711)) b!5954072))

(assert (= (and b!5954072 c!1059716) b!5954086))

(assert (= (and b!5954072 (not c!1059716)) b!5954073))

(assert (= (and b!5954073 c!1059712) b!5954075))

(assert (= (and b!5954073 (not c!1059712)) b!5954074))

(assert (= (and b!5954074 c!1059717) b!5954083))

(assert (= (and b!5954074 (not c!1059717)) b!5954080))

(assert (= (or b!5954075 b!5954083) bm!474372))

(assert (= (or b!5954075 b!5954083) bm!474375))

(assert (= (or b!5954075 b!5954083) bm!474373))

(assert (= (or b!5954086 bm!474375) bm!474378))

(assert (= (and d!1866496 res!2492244) b!5954085))

(assert (= (and b!5954085 c!1059713) b!5954081))

(assert (= (and b!5954085 (not c!1059713)) b!5954076))

(assert (= (and b!5954081 res!2492246) b!5954071))

(assert (= (and b!5954076 c!1059715) b!5954082))

(assert (= (and b!5954076 (not c!1059715)) b!5954077))

(assert (= (and b!5954082 res!2492245) b!5954078))

(assert (= (and b!5954077 c!1059714) b!5954087))

(assert (= (and b!5954077 (not c!1059714)) b!5954084))

(assert (= (or b!5954082 b!5954087) bm!474376))

(assert (= (or b!5954071 bm!474376) bm!474377))

(assert (= (or b!5954081 b!5954078) bm!474374))

(declare-fun m!6841384 () Bool)

(assert (=> bm!474377 m!6841384))

(declare-fun m!6841386 () Bool)

(assert (=> bm!474378 m!6841386))

(declare-fun m!6841388 () Bool)

(assert (=> bm!474372 m!6841388))

(declare-fun m!6841390 () Bool)

(assert (=> bm!474374 m!6841390))

(declare-fun m!6841392 () Bool)

(assert (=> bm!474373 m!6841392))

(assert (=> b!5953580 d!1866496))

(declare-fun d!1866498 () Bool)

(declare-fun res!2492247 () Bool)

(declare-fun e!3642242 () Bool)

(assert (=> d!1866498 (=> res!2492247 e!3642242)))

(assert (=> d!1866498 (= res!2492247 ((_ is Nil!64166) (t!377701 (exprs!5881 lt!2313743))))))

(assert (=> d!1866498 (= (forall!15085 (t!377701 (exprs!5881 lt!2313743)) lambda!325080) e!3642242)))

(declare-fun b!5954088 () Bool)

(declare-fun e!3642243 () Bool)

(assert (=> b!5954088 (= e!3642242 e!3642243)))

(declare-fun res!2492248 () Bool)

(assert (=> b!5954088 (=> (not res!2492248) (not e!3642243))))

(assert (=> b!5954088 (= res!2492248 (dynLambda!25109 lambda!325080 (h!70614 (t!377701 (exprs!5881 lt!2313743)))))))

(declare-fun b!5954089 () Bool)

(assert (=> b!5954089 (= e!3642243 (forall!15085 (t!377701 (t!377701 (exprs!5881 lt!2313743))) lambda!325080))))

(assert (= (and d!1866498 (not res!2492247)) b!5954088))

(assert (= (and b!5954088 res!2492248) b!5954089))

(declare-fun b_lambda!223783 () Bool)

(assert (=> (not b_lambda!223783) (not b!5954088)))

(declare-fun m!6841394 () Bool)

(assert (=> b!5954088 m!6841394))

(declare-fun m!6841396 () Bool)

(assert (=> b!5954089 m!6841396))

(assert (=> b!5953580 d!1866498))

(declare-fun d!1866500 () Bool)

(assert (=> d!1866500 (= (maxBigInt!0 (regexDepth!254 (h!70614 (exprs!5881 lt!2313743))) (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313743))))) (ite (>= (regexDepth!254 (h!70614 (exprs!5881 lt!2313743))) (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313743))))) (regexDepth!254 (h!70614 (exprs!5881 lt!2313743))) (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313743))))))))

(assert (=> b!5953580 d!1866500))

(declare-fun bs!1410652 () Bool)

(declare-fun b!5954091 () Bool)

(assert (= bs!1410652 (and b!5954091 d!1866492)))

(declare-fun lambda!325118 () Int)

(assert (=> bs!1410652 (not (= lambda!325118 lambda!325117))))

(declare-fun bs!1410653 () Bool)

(assert (= bs!1410653 (and b!5954091 d!1866308)))

(assert (=> bs!1410653 (not (= lambda!325118 lambda!325043))))

(declare-fun bs!1410654 () Bool)

(assert (= bs!1410654 (and b!5954091 b!5953582)))

(declare-fun lt!2313928 () Int)

(assert (=> bs!1410654 (= (= lt!2313928 lt!2313865) (= lambda!325118 lambda!325081))))

(declare-fun bs!1410655 () Bool)

(assert (= bs!1410655 (and b!5954091 d!1866300)))

(assert (=> bs!1410655 (not (= lambda!325118 lambda!325028))))

(declare-fun bs!1410656 () Bool)

(assert (= bs!1410656 (and b!5954091 d!1866304)))

(assert (=> bs!1410656 (not (= lambda!325118 lambda!325035))))

(declare-fun bs!1410657 () Bool)

(assert (= bs!1410657 (and b!5954091 d!1866302)))

(assert (=> bs!1410657 (not (= lambda!325118 lambda!325029))))

(declare-fun bs!1410658 () Bool)

(assert (= bs!1410658 (and b!5954091 b!5953592)))

(assert (=> bs!1410658 (= (= lt!2313928 lt!2313869) (= lambda!325118 lambda!325083))))

(declare-fun bs!1410659 () Bool)

(assert (= bs!1410659 (and b!5954091 d!1866344)))

(assert (=> bs!1410659 (not (= lambda!325118 lambda!325073))))

(declare-fun bs!1410660 () Bool)

(assert (= bs!1410660 (and b!5954091 b!5953646)))

(assert (=> bs!1410660 (= (= lt!2313928 lt!2313884) (= lambda!325118 lambda!325086))))

(declare-fun bs!1410661 () Bool)

(assert (= bs!1410661 (and b!5954091 b!5953644)))

(assert (=> bs!1410661 (= (= lt!2313928 lt!2313886) (= lambda!325118 lambda!325085))))

(declare-fun bs!1410662 () Bool)

(assert (= bs!1410662 (and b!5954091 b!5953590)))

(assert (=> bs!1410662 (= (= lt!2313928 lt!2313871) (= lambda!325118 lambda!325082))))

(declare-fun bs!1410663 () Bool)

(assert (= bs!1410663 (and b!5954091 d!1866328)))

(assert (=> bs!1410663 (not (= lambda!325118 lambda!325068))))

(declare-fun bs!1410664 () Bool)

(assert (= bs!1410664 (and b!5954091 b!5953580)))

(assert (=> bs!1410664 (= (= lt!2313928 lt!2313867) (= lambda!325118 lambda!325080))))

(assert (=> b!5954091 true))

(declare-fun bs!1410665 () Bool)

(declare-fun b!5954093 () Bool)

(assert (= bs!1410665 (and b!5954093 d!1866492)))

(declare-fun lambda!325119 () Int)

(assert (=> bs!1410665 (not (= lambda!325119 lambda!325117))))

(declare-fun bs!1410666 () Bool)

(assert (= bs!1410666 (and b!5954093 d!1866308)))

(assert (=> bs!1410666 (not (= lambda!325119 lambda!325043))))

(declare-fun bs!1410667 () Bool)

(assert (= bs!1410667 (and b!5954093 b!5953582)))

(declare-fun lt!2313926 () Int)

(assert (=> bs!1410667 (= (= lt!2313926 lt!2313865) (= lambda!325119 lambda!325081))))

(declare-fun bs!1410668 () Bool)

(assert (= bs!1410668 (and b!5954093 d!1866304)))

(assert (=> bs!1410668 (not (= lambda!325119 lambda!325035))))

(declare-fun bs!1410669 () Bool)

(assert (= bs!1410669 (and b!5954093 d!1866302)))

(assert (=> bs!1410669 (not (= lambda!325119 lambda!325029))))

(declare-fun bs!1410670 () Bool)

(assert (= bs!1410670 (and b!5954093 b!5953592)))

(assert (=> bs!1410670 (= (= lt!2313926 lt!2313869) (= lambda!325119 lambda!325083))))

(declare-fun bs!1410671 () Bool)

(assert (= bs!1410671 (and b!5954093 d!1866344)))

(assert (=> bs!1410671 (not (= lambda!325119 lambda!325073))))

(declare-fun bs!1410672 () Bool)

(assert (= bs!1410672 (and b!5954093 b!5953646)))

(assert (=> bs!1410672 (= (= lt!2313926 lt!2313884) (= lambda!325119 lambda!325086))))

(declare-fun bs!1410673 () Bool)

(assert (= bs!1410673 (and b!5954093 b!5953644)))

(assert (=> bs!1410673 (= (= lt!2313926 lt!2313886) (= lambda!325119 lambda!325085))))

(declare-fun bs!1410674 () Bool)

(assert (= bs!1410674 (and b!5954093 b!5953590)))

(assert (=> bs!1410674 (= (= lt!2313926 lt!2313871) (= lambda!325119 lambda!325082))))

(declare-fun bs!1410675 () Bool)

(assert (= bs!1410675 (and b!5954093 d!1866300)))

(assert (=> bs!1410675 (not (= lambda!325119 lambda!325028))))

(declare-fun bs!1410676 () Bool)

(assert (= bs!1410676 (and b!5954093 b!5954091)))

(assert (=> bs!1410676 (= (= lt!2313926 lt!2313928) (= lambda!325119 lambda!325118))))

(declare-fun bs!1410677 () Bool)

(assert (= bs!1410677 (and b!5954093 d!1866328)))

(assert (=> bs!1410677 (not (= lambda!325119 lambda!325068))))

(declare-fun bs!1410678 () Bool)

(assert (= bs!1410678 (and b!5954093 b!5953580)))

(assert (=> bs!1410678 (= (= lt!2313926 lt!2313867) (= lambda!325119 lambda!325080))))

(assert (=> b!5954093 true))

(declare-fun d!1866502 () Bool)

(declare-fun e!3642245 () Bool)

(assert (=> d!1866502 e!3642245))

(declare-fun res!2492249 () Bool)

(assert (=> d!1866502 (=> (not res!2492249) (not e!3642245))))

(assert (=> d!1866502 (= res!2492249 (>= lt!2313926 0))))

(declare-fun e!3642244 () Int)

(assert (=> d!1866502 (= lt!2313926 e!3642244)))

(declare-fun c!1059718 () Bool)

(assert (=> d!1866502 (= c!1059718 ((_ is Cons!64166) (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313743))))))))

(assert (=> d!1866502 (= (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313743)))) lt!2313926)))

(assert (=> b!5954091 (= e!3642244 lt!2313928)))

(assert (=> b!5954091 (= lt!2313928 (maxBigInt!0 (regexDepth!254 (h!70614 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313743)))))) (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313743)))))))))))

(declare-fun lt!2313927 () Unit!157265)

(assert (=> b!5954091 (= lt!2313927 (lemmaForallRegexDepthBiggerThanTransitive!46 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313743))))) lt!2313928 (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313743)))))))))))

(assert (=> b!5954091 (forall!15085 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313743))))) lambda!325118)))

(declare-fun lt!2313925 () Unit!157265)

(assert (=> b!5954091 (= lt!2313925 lt!2313927)))

(declare-fun b!5954092 () Bool)

(assert (=> b!5954092 (= e!3642244 0)))

(assert (=> b!5954093 (= e!3642245 (forall!15085 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313743)))) lambda!325119))))

(assert (= (and d!1866502 c!1059718) b!5954091))

(assert (= (and d!1866502 (not c!1059718)) b!5954092))

(assert (= (and d!1866502 res!2492249) b!5954093))

(declare-fun m!6841398 () Bool)

(assert (=> b!5954091 m!6841398))

(declare-fun m!6841400 () Bool)

(assert (=> b!5954091 m!6841400))

(declare-fun m!6841402 () Bool)

(assert (=> b!5954091 m!6841402))

(assert (=> b!5954091 m!6841400))

(declare-fun m!6841404 () Bool)

(assert (=> b!5954091 m!6841404))

(assert (=> b!5954091 m!6841398))

(assert (=> b!5954091 m!6841400))

(declare-fun m!6841406 () Bool)

(assert (=> b!5954091 m!6841406))

(declare-fun m!6841408 () Bool)

(assert (=> b!5954093 m!6841408))

(assert (=> b!5953580 d!1866502))

(declare-fun bs!1410679 () Bool)

(declare-fun d!1866504 () Bool)

(assert (= bs!1410679 (and d!1866504 d!1866492)))

(declare-fun lambda!325122 () Int)

(assert (=> bs!1410679 (not (= lambda!325122 lambda!325117))))

(declare-fun bs!1410680 () Bool)

(assert (= bs!1410680 (and d!1866504 d!1866308)))

(assert (=> bs!1410680 (not (= lambda!325122 lambda!325043))))

(declare-fun bs!1410681 () Bool)

(assert (= bs!1410681 (and d!1866504 b!5953582)))

(assert (=> bs!1410681 (= (= lt!2313867 lt!2313865) (= lambda!325122 lambda!325081))))

(declare-fun bs!1410682 () Bool)

(assert (= bs!1410682 (and d!1866504 b!5954093)))

(assert (=> bs!1410682 (= (= lt!2313867 lt!2313926) (= lambda!325122 lambda!325119))))

(declare-fun bs!1410683 () Bool)

(assert (= bs!1410683 (and d!1866504 d!1866304)))

(assert (=> bs!1410683 (not (= lambda!325122 lambda!325035))))

(declare-fun bs!1410684 () Bool)

(assert (= bs!1410684 (and d!1866504 d!1866302)))

(assert (=> bs!1410684 (not (= lambda!325122 lambda!325029))))

(declare-fun bs!1410685 () Bool)

(assert (= bs!1410685 (and d!1866504 b!5953592)))

(assert (=> bs!1410685 (= (= lt!2313867 lt!2313869) (= lambda!325122 lambda!325083))))

(declare-fun bs!1410686 () Bool)

(assert (= bs!1410686 (and d!1866504 d!1866344)))

(assert (=> bs!1410686 (not (= lambda!325122 lambda!325073))))

(declare-fun bs!1410687 () Bool)

(assert (= bs!1410687 (and d!1866504 b!5953646)))

(assert (=> bs!1410687 (= (= lt!2313867 lt!2313884) (= lambda!325122 lambda!325086))))

(declare-fun bs!1410688 () Bool)

(assert (= bs!1410688 (and d!1866504 b!5953644)))

(assert (=> bs!1410688 (= (= lt!2313867 lt!2313886) (= lambda!325122 lambda!325085))))

(declare-fun bs!1410689 () Bool)

(assert (= bs!1410689 (and d!1866504 b!5953590)))

(assert (=> bs!1410689 (= (= lt!2313867 lt!2313871) (= lambda!325122 lambda!325082))))

(declare-fun bs!1410690 () Bool)

(assert (= bs!1410690 (and d!1866504 d!1866300)))

(assert (=> bs!1410690 (not (= lambda!325122 lambda!325028))))

(declare-fun bs!1410691 () Bool)

(assert (= bs!1410691 (and d!1866504 b!5954091)))

(assert (=> bs!1410691 (= (= lt!2313867 lt!2313928) (= lambda!325122 lambda!325118))))

(declare-fun bs!1410692 () Bool)

(assert (= bs!1410692 (and d!1866504 d!1866328)))

(assert (=> bs!1410692 (not (= lambda!325122 lambda!325068))))

(declare-fun bs!1410693 () Bool)

(assert (= bs!1410693 (and d!1866504 b!5953580)))

(assert (=> bs!1410693 (= lambda!325122 lambda!325080)))

(assert (=> d!1866504 true))

(assert (=> d!1866504 (forall!15085 (t!377701 (exprs!5881 lt!2313743)) lambda!325122)))

(declare-fun lt!2313931 () Unit!157265)

(declare-fun choose!44881 (List!64290 Int Int) Unit!157265)

(assert (=> d!1866504 (= lt!2313931 (choose!44881 (t!377701 (exprs!5881 lt!2313743)) lt!2313867 (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313743))))))))

(assert (=> d!1866504 (>= lt!2313867 (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313743)))))))

(assert (=> d!1866504 (= (lemmaForallRegexDepthBiggerThanTransitive!46 (t!377701 (exprs!5881 lt!2313743)) lt!2313867 (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313743))))) lt!2313931)))

(declare-fun bs!1410695 () Bool)

(assert (= bs!1410695 d!1866504))

(declare-fun m!6841412 () Bool)

(assert (=> bs!1410695 m!6841412))

(assert (=> bs!1410695 m!6841088))

(declare-fun m!6841414 () Bool)

(assert (=> bs!1410695 m!6841414))

(assert (=> b!5953580 d!1866504))

(declare-fun b!5954097 () Bool)

(declare-fun e!3642251 () (InoxSet Context!10762))

(declare-fun call!474389 () (InoxSet Context!10762))

(assert (=> b!5954097 (= e!3642251 call!474389)))

(declare-fun bm!474379 () Bool)

(declare-fun call!474386 () (InoxSet Context!10762))

(declare-fun call!474388 () (InoxSet Context!10762))

(assert (=> bm!474379 (= call!474386 call!474388)))

(declare-fun b!5954098 () Bool)

(declare-fun e!3642249 () (InoxSet Context!10762))

(declare-fun e!3642252 () (InoxSet Context!10762))

(assert (=> b!5954098 (= e!3642249 e!3642252)))

(declare-fun c!1059720 () Bool)

(assert (=> b!5954098 (= c!1059720 ((_ is Union!15997) (ite c!1059480 (regOne!32507 (regTwo!32506 r!7292)) (ite c!1059483 (regTwo!32506 (regTwo!32506 r!7292)) (ite c!1059482 (regOne!32506 (regTwo!32506 r!7292)) (reg!16326 (regTwo!32506 r!7292)))))))))

(declare-fun c!1059722 () Bool)

(declare-fun c!1059723 () Bool)

(declare-fun bm!474380 () Bool)

(declare-fun call!474387 () List!64290)

(assert (=> bm!474380 (= call!474388 (derivationStepZipperDown!1247 (ite c!1059720 (regOne!32507 (ite c!1059480 (regOne!32507 (regTwo!32506 r!7292)) (ite c!1059483 (regTwo!32506 (regTwo!32506 r!7292)) (ite c!1059482 (regOne!32506 (regTwo!32506 r!7292)) (reg!16326 (regTwo!32506 r!7292)))))) (ite c!1059723 (regTwo!32506 (ite c!1059480 (regOne!32507 (regTwo!32506 r!7292)) (ite c!1059483 (regTwo!32506 (regTwo!32506 r!7292)) (ite c!1059482 (regOne!32506 (regTwo!32506 r!7292)) (reg!16326 (regTwo!32506 r!7292)))))) (ite c!1059722 (regOne!32506 (ite c!1059480 (regOne!32507 (regTwo!32506 r!7292)) (ite c!1059483 (regTwo!32506 (regTwo!32506 r!7292)) (ite c!1059482 (regOne!32506 (regTwo!32506 r!7292)) (reg!16326 (regTwo!32506 r!7292)))))) (reg!16326 (ite c!1059480 (regOne!32507 (regTwo!32506 r!7292)) (ite c!1059483 (regTwo!32506 (regTwo!32506 r!7292)) (ite c!1059482 (regOne!32506 (regTwo!32506 r!7292)) (reg!16326 (regTwo!32506 r!7292))))))))) (ite (or c!1059720 c!1059723) (ite (or c!1059480 c!1059483) lt!2313735 (Context!10763 call!474267)) (Context!10763 call!474387)) (h!70615 s!2326)))))

(declare-fun bm!474381 () Bool)

(assert (=> bm!474381 (= call!474389 call!474386)))

(declare-fun b!5954099 () Bool)

(declare-fun e!3642248 () (InoxSet Context!10762))

(assert (=> b!5954099 (= e!3642248 call!474389)))

(declare-fun b!5954100 () Bool)

(declare-fun e!3642247 () Bool)

(assert (=> b!5954100 (= e!3642247 (nullable!5992 (regOne!32506 (ite c!1059480 (regOne!32507 (regTwo!32506 r!7292)) (ite c!1059483 (regTwo!32506 (regTwo!32506 r!7292)) (ite c!1059482 (regOne!32506 (regTwo!32506 r!7292)) (reg!16326 (regTwo!32506 r!7292))))))))))

(declare-fun b!5954101 () Bool)

(declare-fun e!3642250 () (InoxSet Context!10762))

(declare-fun call!474385 () (InoxSet Context!10762))

(assert (=> b!5954101 (= e!3642250 ((_ map or) call!474385 call!474386))))

(declare-fun c!1059721 () Bool)

(declare-fun d!1866510 () Bool)

(assert (=> d!1866510 (= c!1059721 (and ((_ is ElementMatch!15997) (ite c!1059480 (regOne!32507 (regTwo!32506 r!7292)) (ite c!1059483 (regTwo!32506 (regTwo!32506 r!7292)) (ite c!1059482 (regOne!32506 (regTwo!32506 r!7292)) (reg!16326 (regTwo!32506 r!7292)))))) (= (c!1059438 (ite c!1059480 (regOne!32507 (regTwo!32506 r!7292)) (ite c!1059483 (regTwo!32506 (regTwo!32506 r!7292)) (ite c!1059482 (regOne!32506 (regTwo!32506 r!7292)) (reg!16326 (regTwo!32506 r!7292)))))) (h!70615 s!2326))))))

(assert (=> d!1866510 (= (derivationStepZipperDown!1247 (ite c!1059480 (regOne!32507 (regTwo!32506 r!7292)) (ite c!1059483 (regTwo!32506 (regTwo!32506 r!7292)) (ite c!1059482 (regOne!32506 (regTwo!32506 r!7292)) (reg!16326 (regTwo!32506 r!7292))))) (ite (or c!1059480 c!1059483) lt!2313735 (Context!10763 call!474267)) (h!70615 s!2326)) e!3642249)))

(declare-fun b!5954102 () Bool)

(assert (=> b!5954102 (= e!3642249 (store ((as const (Array Context!10762 Bool)) false) (ite (or c!1059480 c!1059483) lt!2313735 (Context!10763 call!474267)) true))))

(declare-fun call!474384 () List!64290)

(declare-fun bm!474382 () Bool)

(assert (=> bm!474382 (= call!474384 ($colon$colon!1883 (exprs!5881 (ite (or c!1059480 c!1059483) lt!2313735 (Context!10763 call!474267))) (ite (or c!1059723 c!1059722) (regTwo!32506 (ite c!1059480 (regOne!32507 (regTwo!32506 r!7292)) (ite c!1059483 (regTwo!32506 (regTwo!32506 r!7292)) (ite c!1059482 (regOne!32506 (regTwo!32506 r!7292)) (reg!16326 (regTwo!32506 r!7292)))))) (ite c!1059480 (regOne!32507 (regTwo!32506 r!7292)) (ite c!1059483 (regTwo!32506 (regTwo!32506 r!7292)) (ite c!1059482 (regOne!32506 (regTwo!32506 r!7292)) (reg!16326 (regTwo!32506 r!7292))))))))))

(declare-fun c!1059724 () Bool)

(declare-fun b!5954103 () Bool)

(assert (=> b!5954103 (= c!1059724 ((_ is Star!15997) (ite c!1059480 (regOne!32507 (regTwo!32506 r!7292)) (ite c!1059483 (regTwo!32506 (regTwo!32506 r!7292)) (ite c!1059482 (regOne!32506 (regTwo!32506 r!7292)) (reg!16326 (regTwo!32506 r!7292)))))))))

(assert (=> b!5954103 (= e!3642251 e!3642248)))

(declare-fun b!5954104 () Bool)

(assert (=> b!5954104 (= e!3642248 ((as const (Array Context!10762 Bool)) false))))

(declare-fun b!5954105 () Bool)

(assert (=> b!5954105 (= e!3642250 e!3642251)))

(assert (=> b!5954105 (= c!1059722 ((_ is Concat!24842) (ite c!1059480 (regOne!32507 (regTwo!32506 r!7292)) (ite c!1059483 (regTwo!32506 (regTwo!32506 r!7292)) (ite c!1059482 (regOne!32506 (regTwo!32506 r!7292)) (reg!16326 (regTwo!32506 r!7292)))))))))

(declare-fun bm!474383 () Bool)

(assert (=> bm!474383 (= call!474387 call!474384)))

(declare-fun bm!474384 () Bool)

(assert (=> bm!474384 (= call!474385 (derivationStepZipperDown!1247 (ite c!1059720 (regTwo!32507 (ite c!1059480 (regOne!32507 (regTwo!32506 r!7292)) (ite c!1059483 (regTwo!32506 (regTwo!32506 r!7292)) (ite c!1059482 (regOne!32506 (regTwo!32506 r!7292)) (reg!16326 (regTwo!32506 r!7292)))))) (regOne!32506 (ite c!1059480 (regOne!32507 (regTwo!32506 r!7292)) (ite c!1059483 (regTwo!32506 (regTwo!32506 r!7292)) (ite c!1059482 (regOne!32506 (regTwo!32506 r!7292)) (reg!16326 (regTwo!32506 r!7292))))))) (ite c!1059720 (ite (or c!1059480 c!1059483) lt!2313735 (Context!10763 call!474267)) (Context!10763 call!474384)) (h!70615 s!2326)))))

(declare-fun b!5954106 () Bool)

(assert (=> b!5954106 (= c!1059723 e!3642247)))

(declare-fun res!2492250 () Bool)

(assert (=> b!5954106 (=> (not res!2492250) (not e!3642247))))

(assert (=> b!5954106 (= res!2492250 ((_ is Concat!24842) (ite c!1059480 (regOne!32507 (regTwo!32506 r!7292)) (ite c!1059483 (regTwo!32506 (regTwo!32506 r!7292)) (ite c!1059482 (regOne!32506 (regTwo!32506 r!7292)) (reg!16326 (regTwo!32506 r!7292)))))))))

(assert (=> b!5954106 (= e!3642252 e!3642250)))

(declare-fun b!5954107 () Bool)

(assert (=> b!5954107 (= e!3642252 ((_ map or) call!474388 call!474385))))

(assert (= (and d!1866510 c!1059721) b!5954102))

(assert (= (and d!1866510 (not c!1059721)) b!5954098))

(assert (= (and b!5954098 c!1059720) b!5954107))

(assert (= (and b!5954098 (not c!1059720)) b!5954106))

(assert (= (and b!5954106 res!2492250) b!5954100))

(assert (= (and b!5954106 c!1059723) b!5954101))

(assert (= (and b!5954106 (not c!1059723)) b!5954105))

(assert (= (and b!5954105 c!1059722) b!5954097))

(assert (= (and b!5954105 (not c!1059722)) b!5954103))

(assert (= (and b!5954103 c!1059724) b!5954099))

(assert (= (and b!5954103 (not c!1059724)) b!5954104))

(assert (= (or b!5954097 b!5954099) bm!474383))

(assert (= (or b!5954097 b!5954099) bm!474381))

(assert (= (or b!5954101 bm!474383) bm!474382))

(assert (= (or b!5954101 bm!474381) bm!474379))

(assert (= (or b!5954107 b!5954101) bm!474384))

(assert (= (or b!5954107 bm!474379) bm!474380))

(declare-fun m!6841428 () Bool)

(assert (=> b!5954100 m!6841428))

(declare-fun m!6841430 () Bool)

(assert (=> bm!474380 m!6841430))

(declare-fun m!6841432 () Bool)

(assert (=> bm!474382 m!6841432))

(declare-fun m!6841434 () Bool)

(assert (=> bm!474384 m!6841434))

(declare-fun m!6841436 () Bool)

(assert (=> b!5954102 m!6841436))

(assert (=> bm!474260 d!1866510))

(declare-fun d!1866514 () Bool)

(declare-fun c!1059725 () Bool)

(assert (=> d!1866514 (= c!1059725 (isEmpty!36053 (t!377702 s!2326)))))

(declare-fun e!3642253 () Bool)

(assert (=> d!1866514 (= (matchZipper!2033 ((_ map or) lt!2313745 lt!2313757) (t!377702 s!2326)) e!3642253)))

(declare-fun b!5954108 () Bool)

(assert (=> b!5954108 (= e!3642253 (nullableZipper!1804 ((_ map or) lt!2313745 lt!2313757)))))

(declare-fun b!5954109 () Bool)

(assert (=> b!5954109 (= e!3642253 (matchZipper!2033 (derivationStepZipper!1978 ((_ map or) lt!2313745 lt!2313757) (head!12536 (t!377702 s!2326))) (tail!11621 (t!377702 s!2326))))))

(assert (= (and d!1866514 c!1059725) b!5954108))

(assert (= (and d!1866514 (not c!1059725)) b!5954109))

(assert (=> d!1866514 m!6840972))

(declare-fun m!6841438 () Bool)

(assert (=> b!5954108 m!6841438))

(assert (=> b!5954109 m!6840976))

(assert (=> b!5954109 m!6840976))

(declare-fun m!6841440 () Bool)

(assert (=> b!5954109 m!6841440))

(assert (=> b!5954109 m!6840980))

(assert (=> b!5954109 m!6841440))

(assert (=> b!5954109 m!6840980))

(declare-fun m!6841442 () Bool)

(assert (=> b!5954109 m!6841442))

(assert (=> d!1866420 d!1866514))

(assert (=> d!1866420 d!1866418))

(declare-fun e!3642256 () Bool)

(declare-fun d!1866516 () Bool)

(assert (=> d!1866516 (= (matchZipper!2033 ((_ map or) lt!2313745 lt!2313757) (t!377702 s!2326)) e!3642256)))

(declare-fun res!2492253 () Bool)

(assert (=> d!1866516 (=> res!2492253 e!3642256)))

(assert (=> d!1866516 (= res!2492253 (matchZipper!2033 lt!2313745 (t!377702 s!2326)))))

(assert (=> d!1866516 true))

(declare-fun _$48!1506 () Unit!157265)

(assert (=> d!1866516 (= (choose!44876 lt!2313745 lt!2313757 (t!377702 s!2326)) _$48!1506)))

(declare-fun b!5954112 () Bool)

(assert (=> b!5954112 (= e!3642256 (matchZipper!2033 lt!2313757 (t!377702 s!2326)))))

(assert (= (and d!1866516 (not res!2492253)) b!5954112))

(assert (=> d!1866516 m!6841244))

(assert (=> d!1866516 m!6840680))

(assert (=> b!5954112 m!6840662))

(assert (=> d!1866420 d!1866516))

(assert (=> bs!1410624 d!1866272))

(declare-fun bm!474385 () Bool)

(declare-fun call!474391 () Bool)

(declare-fun call!474390 () Bool)

(assert (=> bm!474385 (= call!474391 call!474390)))

(declare-fun call!474392 () Bool)

(declare-fun bm!474386 () Bool)

(declare-fun c!1059727 () Bool)

(assert (=> bm!474386 (= call!474392 (validRegex!7733 (ite c!1059727 (regTwo!32507 (ite c!1059581 (reg!16326 r!7292) (ite c!1059582 (regOne!32507 r!7292) (regOne!32506 r!7292)))) (regTwo!32506 (ite c!1059581 (reg!16326 r!7292) (ite c!1059582 (regOne!32507 r!7292) (regOne!32506 r!7292)))))))))

(declare-fun b!5954113 () Bool)

(declare-fun res!2492255 () Bool)

(declare-fun e!3642260 () Bool)

(assert (=> b!5954113 (=> res!2492255 e!3642260)))

(assert (=> b!5954113 (= res!2492255 (not ((_ is Concat!24842) (ite c!1059581 (reg!16326 r!7292) (ite c!1059582 (regOne!32507 r!7292) (regOne!32506 r!7292))))))))

(declare-fun e!3642262 () Bool)

(assert (=> b!5954113 (= e!3642262 e!3642260)))

(declare-fun bm!474387 () Bool)

(declare-fun c!1059726 () Bool)

(assert (=> bm!474387 (= call!474390 (validRegex!7733 (ite c!1059726 (reg!16326 (ite c!1059581 (reg!16326 r!7292) (ite c!1059582 (regOne!32507 r!7292) (regOne!32506 r!7292)))) (ite c!1059727 (regOne!32507 (ite c!1059581 (reg!16326 r!7292) (ite c!1059582 (regOne!32507 r!7292) (regOne!32506 r!7292)))) (regOne!32506 (ite c!1059581 (reg!16326 r!7292) (ite c!1059582 (regOne!32507 r!7292) (regOne!32506 r!7292))))))))))

(declare-fun b!5954115 () Bool)

(declare-fun e!3642261 () Bool)

(declare-fun e!3642258 () Bool)

(assert (=> b!5954115 (= e!3642261 e!3642258)))

(declare-fun res!2492257 () Bool)

(assert (=> b!5954115 (= res!2492257 (not (nullable!5992 (reg!16326 (ite c!1059581 (reg!16326 r!7292) (ite c!1059582 (regOne!32507 r!7292) (regOne!32506 r!7292)))))))))

(assert (=> b!5954115 (=> (not res!2492257) (not e!3642258))))

(declare-fun b!5954116 () Bool)

(declare-fun e!3642259 () Bool)

(assert (=> b!5954116 (= e!3642259 call!474392)))

(declare-fun b!5954117 () Bool)

(assert (=> b!5954117 (= e!3642261 e!3642262)))

(assert (=> b!5954117 (= c!1059727 ((_ is Union!15997) (ite c!1059581 (reg!16326 r!7292) (ite c!1059582 (regOne!32507 r!7292) (regOne!32506 r!7292)))))))

(declare-fun b!5954118 () Bool)

(assert (=> b!5954118 (= e!3642258 call!474390)))

(declare-fun b!5954119 () Bool)

(declare-fun e!3642263 () Bool)

(assert (=> b!5954119 (= e!3642263 e!3642261)))

(assert (=> b!5954119 (= c!1059726 ((_ is Star!15997) (ite c!1059581 (reg!16326 r!7292) (ite c!1059582 (regOne!32507 r!7292) (regOne!32506 r!7292)))))))

(declare-fun b!5954120 () Bool)

(declare-fun e!3642257 () Bool)

(assert (=> b!5954120 (= e!3642260 e!3642257)))

(declare-fun res!2492256 () Bool)

(assert (=> b!5954120 (=> (not res!2492256) (not e!3642257))))

(assert (=> b!5954120 (= res!2492256 call!474391)))

(declare-fun b!5954121 () Bool)

(declare-fun res!2492254 () Bool)

(assert (=> b!5954121 (=> (not res!2492254) (not e!3642259))))

(assert (=> b!5954121 (= res!2492254 call!474391)))

(assert (=> b!5954121 (= e!3642262 e!3642259)))

(declare-fun b!5954114 () Bool)

(assert (=> b!5954114 (= e!3642257 call!474392)))

(declare-fun d!1866524 () Bool)

(declare-fun res!2492258 () Bool)

(assert (=> d!1866524 (=> res!2492258 e!3642263)))

(assert (=> d!1866524 (= res!2492258 ((_ is ElementMatch!15997) (ite c!1059581 (reg!16326 r!7292) (ite c!1059582 (regOne!32507 r!7292) (regOne!32506 r!7292)))))))

(assert (=> d!1866524 (= (validRegex!7733 (ite c!1059581 (reg!16326 r!7292) (ite c!1059582 (regOne!32507 r!7292) (regOne!32506 r!7292)))) e!3642263)))

(assert (= (and d!1866524 (not res!2492258)) b!5954119))

(assert (= (and b!5954119 c!1059726) b!5954115))

(assert (= (and b!5954119 (not c!1059726)) b!5954117))

(assert (= (and b!5954115 res!2492257) b!5954118))

(assert (= (and b!5954117 c!1059727) b!5954121))

(assert (= (and b!5954117 (not c!1059727)) b!5954113))

(assert (= (and b!5954121 res!2492254) b!5954116))

(assert (= (and b!5954113 (not res!2492255)) b!5954120))

(assert (= (and b!5954120 res!2492256) b!5954114))

(assert (= (or b!5954116 b!5954114) bm!474386))

(assert (= (or b!5954121 b!5954120) bm!474385))

(assert (= (or b!5954118 bm!474385) bm!474387))

(declare-fun m!6841446 () Bool)

(assert (=> bm!474386 m!6841446))

(declare-fun m!6841448 () Bool)

(assert (=> bm!474387 m!6841448))

(declare-fun m!6841450 () Bool)

(assert (=> b!5954115 m!6841450))

(assert (=> bm!474301 d!1866524))

(declare-fun bs!1410701 () Bool)

(declare-fun d!1866526 () Bool)

(assert (= bs!1410701 (and d!1866526 b!5953406)))

(declare-fun lambda!325124 () Int)

(assert (=> bs!1410701 (not (= lambda!325124 lambda!325055))))

(declare-fun bs!1410702 () Bool)

(assert (= bs!1410702 (and d!1866526 d!1866476)))

(assert (=> bs!1410702 (= lambda!325124 lambda!325116)))

(declare-fun bs!1410703 () Bool)

(assert (= bs!1410703 (and d!1866526 b!5953408)))

(assert (=> bs!1410703 (not (= lambda!325124 lambda!325056))))

(declare-fun bs!1410704 () Bool)

(assert (= bs!1410704 (and d!1866526 d!1866474)))

(assert (=> bs!1410704 (= lambda!325124 lambda!325115)))

(declare-fun bs!1410705 () Bool)

(assert (= bs!1410705 (and d!1866526 b!5953411)))

(assert (=> bs!1410705 (not (= lambda!325124 lambda!325058))))

(declare-fun bs!1410706 () Bool)

(assert (= bs!1410706 (and d!1866526 b!5953413)))

(assert (=> bs!1410706 (not (= lambda!325124 lambda!325059))))

(assert (=> d!1866526 (= (nullableZipper!1804 lt!2313758) (exists!2353 lt!2313758 lambda!325124))))

(declare-fun bs!1410707 () Bool)

(assert (= bs!1410707 d!1866526))

(declare-fun m!6841452 () Bool)

(assert (=> bs!1410707 m!6841452))

(assert (=> b!5953674 d!1866526))

(assert (=> b!5953690 d!1866448))

(declare-fun b!5954122 () Bool)

(declare-fun e!3642265 () Bool)

(declare-fun e!3642270 () Bool)

(assert (=> b!5954122 (= e!3642265 e!3642270)))

(declare-fun res!2492266 () Bool)

(assert (=> b!5954122 (=> res!2492266 e!3642270)))

(declare-fun call!474393 () Bool)

(assert (=> b!5954122 (= res!2492266 call!474393)))

(declare-fun d!1866528 () Bool)

(declare-fun e!3642266 () Bool)

(assert (=> d!1866528 e!3642266))

(declare-fun c!1059732 () Bool)

(assert (=> d!1866528 (= c!1059732 ((_ is EmptyExpr!15997) (regOne!32506 r!7292)))))

(declare-fun lt!2313932 () Bool)

(declare-fun e!3642269 () Bool)

(assert (=> d!1866528 (= lt!2313932 e!3642269)))

(declare-fun c!1059730 () Bool)

(assert (=> d!1866528 (= c!1059730 (isEmpty!36053 (_1!36279 (get!22108 lt!2313907))))))

(assert (=> d!1866528 (validRegex!7733 (regOne!32506 r!7292))))

(assert (=> d!1866528 (= (matchR!8180 (regOne!32506 r!7292) (_1!36279 (get!22108 lt!2313907))) lt!2313932)))

(declare-fun bm!474388 () Bool)

(assert (=> bm!474388 (= call!474393 (isEmpty!36053 (_1!36279 (get!22108 lt!2313907))))))

(declare-fun b!5954123 () Bool)

(declare-fun res!2492264 () Bool)

(declare-fun e!3642267 () Bool)

(assert (=> b!5954123 (=> (not res!2492264) (not e!3642267))))

(assert (=> b!5954123 (= res!2492264 (not call!474393))))

(declare-fun b!5954124 () Bool)

(declare-fun res!2492260 () Bool)

(declare-fun e!3642268 () Bool)

(assert (=> b!5954124 (=> res!2492260 e!3642268)))

(assert (=> b!5954124 (= res!2492260 (not ((_ is ElementMatch!15997) (regOne!32506 r!7292))))))

(declare-fun e!3642264 () Bool)

(assert (=> b!5954124 (= e!3642264 e!3642268)))

(declare-fun b!5954125 () Bool)

(assert (=> b!5954125 (= e!3642266 (= lt!2313932 call!474393))))

(declare-fun b!5954126 () Bool)

(assert (=> b!5954126 (= e!3642264 (not lt!2313932))))

(declare-fun b!5954127 () Bool)

(declare-fun res!2492263 () Bool)

(assert (=> b!5954127 (=> (not res!2492263) (not e!3642267))))

(assert (=> b!5954127 (= res!2492263 (isEmpty!36053 (tail!11621 (_1!36279 (get!22108 lt!2313907)))))))

(declare-fun b!5954128 () Bool)

(assert (=> b!5954128 (= e!3642269 (nullable!5992 (regOne!32506 r!7292)))))

(declare-fun b!5954129 () Bool)

(assert (=> b!5954129 (= e!3642266 e!3642264)))

(declare-fun c!1059731 () Bool)

(assert (=> b!5954129 (= c!1059731 ((_ is EmptyLang!15997) (regOne!32506 r!7292)))))

(declare-fun b!5954130 () Bool)

(assert (=> b!5954130 (= e!3642267 (= (head!12536 (_1!36279 (get!22108 lt!2313907))) (c!1059438 (regOne!32506 r!7292))))))

(declare-fun b!5954131 () Bool)

(assert (=> b!5954131 (= e!3642270 (not (= (head!12536 (_1!36279 (get!22108 lt!2313907))) (c!1059438 (regOne!32506 r!7292)))))))

(declare-fun b!5954132 () Bool)

(assert (=> b!5954132 (= e!3642269 (matchR!8180 (derivativeStep!4728 (regOne!32506 r!7292) (head!12536 (_1!36279 (get!22108 lt!2313907)))) (tail!11621 (_1!36279 (get!22108 lt!2313907)))))))

(declare-fun b!5954133 () Bool)

(assert (=> b!5954133 (= e!3642268 e!3642265)))

(declare-fun res!2492261 () Bool)

(assert (=> b!5954133 (=> (not res!2492261) (not e!3642265))))

(assert (=> b!5954133 (= res!2492261 (not lt!2313932))))

(declare-fun b!5954134 () Bool)

(declare-fun res!2492265 () Bool)

(assert (=> b!5954134 (=> res!2492265 e!3642270)))

(assert (=> b!5954134 (= res!2492265 (not (isEmpty!36053 (tail!11621 (_1!36279 (get!22108 lt!2313907))))))))

(declare-fun b!5954135 () Bool)

(declare-fun res!2492262 () Bool)

(assert (=> b!5954135 (=> res!2492262 e!3642268)))

(assert (=> b!5954135 (= res!2492262 e!3642267)))

(declare-fun res!2492259 () Bool)

(assert (=> b!5954135 (=> (not res!2492259) (not e!3642267))))

(assert (=> b!5954135 (= res!2492259 lt!2313932)))

(assert (= (and d!1866528 c!1059730) b!5954128))

(assert (= (and d!1866528 (not c!1059730)) b!5954132))

(assert (= (and d!1866528 c!1059732) b!5954125))

(assert (= (and d!1866528 (not c!1059732)) b!5954129))

(assert (= (and b!5954129 c!1059731) b!5954126))

(assert (= (and b!5954129 (not c!1059731)) b!5954124))

(assert (= (and b!5954124 (not res!2492260)) b!5954135))

(assert (= (and b!5954135 res!2492259) b!5954123))

(assert (= (and b!5954123 res!2492264) b!5954127))

(assert (= (and b!5954127 res!2492263) b!5954130))

(assert (= (and b!5954135 (not res!2492262)) b!5954133))

(assert (= (and b!5954133 res!2492261) b!5954122))

(assert (= (and b!5954122 (not res!2492266)) b!5954134))

(assert (= (and b!5954134 (not res!2492265)) b!5954131))

(assert (= (or b!5954125 b!5954122 b!5954123) bm!474388))

(declare-fun m!6841454 () Bool)

(assert (=> b!5954132 m!6841454))

(assert (=> b!5954132 m!6841454))

(declare-fun m!6841456 () Bool)

(assert (=> b!5954132 m!6841456))

(declare-fun m!6841458 () Bool)

(assert (=> b!5954132 m!6841458))

(assert (=> b!5954132 m!6841456))

(assert (=> b!5954132 m!6841458))

(declare-fun m!6841460 () Bool)

(assert (=> b!5954132 m!6841460))

(declare-fun m!6841462 () Bool)

(assert (=> bm!474388 m!6841462))

(assert (=> b!5954127 m!6841458))

(assert (=> b!5954127 m!6841458))

(declare-fun m!6841464 () Bool)

(assert (=> b!5954127 m!6841464))

(assert (=> d!1866528 m!6841462))

(assert (=> d!1866528 m!6841284))

(assert (=> b!5954130 m!6841454))

(assert (=> b!5954134 m!6841458))

(assert (=> b!5954134 m!6841458))

(assert (=> b!5954134 m!6841464))

(assert (=> b!5954128 m!6840634))

(assert (=> b!5954131 m!6841454))

(assert (=> b!5953855 d!1866528))

(declare-fun d!1866530 () Bool)

(assert (=> d!1866530 (= (get!22108 lt!2313907) (v!51990 lt!2313907))))

(assert (=> b!5953855 d!1866530))

(declare-fun d!1866534 () Bool)

(declare-fun res!2492267 () Bool)

(declare-fun e!3642271 () Bool)

(assert (=> d!1866534 (=> res!2492267 e!3642271)))

(assert (=> d!1866534 (= res!2492267 ((_ is Nil!64166) (exprs!5881 lt!2313738)))))

(assert (=> d!1866534 (= (forall!15085 (exprs!5881 lt!2313738) lambda!325083) e!3642271)))

(declare-fun b!5954136 () Bool)

(declare-fun e!3642272 () Bool)

(assert (=> b!5954136 (= e!3642271 e!3642272)))

(declare-fun res!2492268 () Bool)

(assert (=> b!5954136 (=> (not res!2492268) (not e!3642272))))

(assert (=> b!5954136 (= res!2492268 (dynLambda!25109 lambda!325083 (h!70614 (exprs!5881 lt!2313738))))))

(declare-fun b!5954137 () Bool)

(assert (=> b!5954137 (= e!3642272 (forall!15085 (t!377701 (exprs!5881 lt!2313738)) lambda!325083))))

(assert (= (and d!1866534 (not res!2492267)) b!5954136))

(assert (= (and b!5954136 res!2492268) b!5954137))

(declare-fun b_lambda!223785 () Bool)

(assert (=> (not b_lambda!223785) (not b!5954136)))

(declare-fun m!6841468 () Bool)

(assert (=> b!5954136 m!6841468))

(declare-fun m!6841470 () Bool)

(assert (=> b!5954137 m!6841470))

(assert (=> b!5953592 d!1866534))

(declare-fun bm!474389 () Bool)

(declare-fun call!474395 () Bool)

(declare-fun call!474394 () Bool)

(assert (=> bm!474389 (= call!474395 call!474394)))

(declare-fun bm!474390 () Bool)

(declare-fun call!474396 () Bool)

(declare-fun c!1059734 () Bool)

(assert (=> bm!474390 (= call!474396 (validRegex!7733 (ite c!1059734 (regTwo!32507 lt!2313852) (regTwo!32506 lt!2313852))))))

(declare-fun b!5954138 () Bool)

(declare-fun res!2492270 () Bool)

(declare-fun e!3642276 () Bool)

(assert (=> b!5954138 (=> res!2492270 e!3642276)))

(assert (=> b!5954138 (= res!2492270 (not ((_ is Concat!24842) lt!2313852)))))

(declare-fun e!3642278 () Bool)

(assert (=> b!5954138 (= e!3642278 e!3642276)))

(declare-fun c!1059733 () Bool)

(declare-fun bm!474391 () Bool)

(assert (=> bm!474391 (= call!474394 (validRegex!7733 (ite c!1059733 (reg!16326 lt!2313852) (ite c!1059734 (regOne!32507 lt!2313852) (regOne!32506 lt!2313852)))))))

(declare-fun b!5954140 () Bool)

(declare-fun e!3642277 () Bool)

(declare-fun e!3642274 () Bool)

(assert (=> b!5954140 (= e!3642277 e!3642274)))

(declare-fun res!2492272 () Bool)

(assert (=> b!5954140 (= res!2492272 (not (nullable!5992 (reg!16326 lt!2313852))))))

(assert (=> b!5954140 (=> (not res!2492272) (not e!3642274))))

(declare-fun b!5954141 () Bool)

(declare-fun e!3642275 () Bool)

(assert (=> b!5954141 (= e!3642275 call!474396)))

(declare-fun b!5954142 () Bool)

(assert (=> b!5954142 (= e!3642277 e!3642278)))

(assert (=> b!5954142 (= c!1059734 ((_ is Union!15997) lt!2313852))))

(declare-fun b!5954143 () Bool)

(assert (=> b!5954143 (= e!3642274 call!474394)))

(declare-fun b!5954144 () Bool)

(declare-fun e!3642279 () Bool)

(assert (=> b!5954144 (= e!3642279 e!3642277)))

(assert (=> b!5954144 (= c!1059733 ((_ is Star!15997) lt!2313852))))

(declare-fun b!5954145 () Bool)

(declare-fun e!3642273 () Bool)

(assert (=> b!5954145 (= e!3642276 e!3642273)))

(declare-fun res!2492271 () Bool)

(assert (=> b!5954145 (=> (not res!2492271) (not e!3642273))))

(assert (=> b!5954145 (= res!2492271 call!474395)))

(declare-fun b!5954146 () Bool)

(declare-fun res!2492269 () Bool)

(assert (=> b!5954146 (=> (not res!2492269) (not e!3642275))))

(assert (=> b!5954146 (= res!2492269 call!474395)))

(assert (=> b!5954146 (= e!3642278 e!3642275)))

(declare-fun b!5954139 () Bool)

(assert (=> b!5954139 (= e!3642273 call!474396)))

(declare-fun d!1866536 () Bool)

(declare-fun res!2492273 () Bool)

(assert (=> d!1866536 (=> res!2492273 e!3642279)))

(assert (=> d!1866536 (= res!2492273 ((_ is ElementMatch!15997) lt!2313852))))

(assert (=> d!1866536 (= (validRegex!7733 lt!2313852) e!3642279)))

(assert (= (and d!1866536 (not res!2492273)) b!5954144))

(assert (= (and b!5954144 c!1059733) b!5954140))

(assert (= (and b!5954144 (not c!1059733)) b!5954142))

(assert (= (and b!5954140 res!2492272) b!5954143))

(assert (= (and b!5954142 c!1059734) b!5954146))

(assert (= (and b!5954142 (not c!1059734)) b!5954138))

(assert (= (and b!5954146 res!2492269) b!5954141))

(assert (= (and b!5954138 (not res!2492270)) b!5954145))

(assert (= (and b!5954145 res!2492271) b!5954139))

(assert (= (or b!5954141 b!5954139) bm!474390))

(assert (= (or b!5954146 b!5954145) bm!474389))

(assert (= (or b!5954143 bm!474389) bm!474391))

(declare-fun m!6841472 () Bool)

(assert (=> bm!474390 m!6841472))

(declare-fun m!6841474 () Bool)

(assert (=> bm!474391 m!6841474))

(declare-fun m!6841476 () Bool)

(assert (=> b!5954140 m!6841476))

(assert (=> d!1866328 d!1866536))

(declare-fun d!1866538 () Bool)

(declare-fun res!2492274 () Bool)

(declare-fun e!3642280 () Bool)

(assert (=> d!1866538 (=> res!2492274 e!3642280)))

(assert (=> d!1866538 (= res!2492274 ((_ is Nil!64166) (exprs!5881 (h!70616 zl!343))))))

(assert (=> d!1866538 (= (forall!15085 (exprs!5881 (h!70616 zl!343)) lambda!325068) e!3642280)))

(declare-fun b!5954147 () Bool)

(declare-fun e!3642281 () Bool)

(assert (=> b!5954147 (= e!3642280 e!3642281)))

(declare-fun res!2492275 () Bool)

(assert (=> b!5954147 (=> (not res!2492275) (not e!3642281))))

(assert (=> b!5954147 (= res!2492275 (dynLambda!25109 lambda!325068 (h!70614 (exprs!5881 (h!70616 zl!343)))))))

(declare-fun b!5954148 () Bool)

(assert (=> b!5954148 (= e!3642281 (forall!15085 (t!377701 (exprs!5881 (h!70616 zl!343))) lambda!325068))))

(assert (= (and d!1866538 (not res!2492274)) b!5954147))

(assert (= (and b!5954147 res!2492275) b!5954148))

(declare-fun b_lambda!223787 () Bool)

(assert (=> (not b_lambda!223787) (not b!5954147)))

(declare-fun m!6841478 () Bool)

(assert (=> b!5954147 m!6841478))

(declare-fun m!6841480 () Bool)

(assert (=> b!5954148 m!6841480))

(assert (=> d!1866328 d!1866538))

(declare-fun d!1866540 () Bool)

(assert (=> d!1866540 (= (nullable!5992 (h!70614 (exprs!5881 lt!2313746))) (nullableFct!1963 (h!70614 (exprs!5881 lt!2313746))))))

(declare-fun bs!1410713 () Bool)

(assert (= bs!1410713 d!1866540))

(declare-fun m!6841482 () Bool)

(assert (=> bs!1410713 m!6841482))

(assert (=> b!5953243 d!1866540))

(declare-fun d!1866542 () Bool)

(assert (=> d!1866542 (= ($colon$colon!1883 (exprs!5881 lt!2313735) (ite (or c!1059604 c!1059603) (regTwo!32506 r!7292) r!7292)) (Cons!64166 (ite (or c!1059604 c!1059603) (regTwo!32506 r!7292) r!7292) (exprs!5881 lt!2313735)))))

(assert (=> bm!474316 d!1866542))

(declare-fun d!1866544 () Bool)

(assert (=> d!1866544 (= (isEmpty!36053 s!2326) ((_ is Nil!64167) s!2326))))

(assert (=> bm!474347 d!1866544))

(declare-fun d!1866548 () Bool)

(assert (=> d!1866548 (= (isUnion!864 lt!2313823) ((_ is Union!15997) lt!2313823))))

(assert (=> b!5953354 d!1866548))

(declare-fun bs!1410715 () Bool)

(declare-fun d!1866550 () Bool)

(assert (= bs!1410715 (and d!1866550 b!5953406)))

(declare-fun lambda!325128 () Int)

(assert (=> bs!1410715 (not (= lambda!325128 lambda!325055))))

(declare-fun bs!1410716 () Bool)

(assert (= bs!1410716 (and d!1866550 d!1866476)))

(assert (=> bs!1410716 (= lambda!325128 lambda!325116)))

(declare-fun bs!1410717 () Bool)

(assert (= bs!1410717 (and d!1866550 b!5953408)))

(assert (=> bs!1410717 (not (= lambda!325128 lambda!325056))))

(declare-fun bs!1410718 () Bool)

(assert (= bs!1410718 (and d!1866550 d!1866474)))

(assert (=> bs!1410718 (= lambda!325128 lambda!325115)))

(declare-fun bs!1410719 () Bool)

(assert (= bs!1410719 (and d!1866550 b!5953411)))

(assert (=> bs!1410719 (not (= lambda!325128 lambda!325058))))

(declare-fun bs!1410720 () Bool)

(assert (= bs!1410720 (and d!1866550 b!5953413)))

(assert (=> bs!1410720 (not (= lambda!325128 lambda!325059))))

(declare-fun bs!1410721 () Bool)

(assert (= bs!1410721 (and d!1866550 d!1866526)))

(assert (=> bs!1410721 (= lambda!325128 lambda!325124)))

(assert (=> d!1866550 (= (nullableZipper!1804 lt!2313734) (exists!2353 lt!2313734 lambda!325128))))

(declare-fun bs!1410722 () Bool)

(assert (= bs!1410722 d!1866550))

(declare-fun m!6841484 () Bool)

(assert (=> bs!1410722 m!6841484))

(assert (=> b!5953672 d!1866550))

(declare-fun b!5954149 () Bool)

(declare-fun e!3642284 () (InoxSet Context!10762))

(assert (=> b!5954149 (= e!3642284 ((as const (Array Context!10762 Bool)) false))))

(declare-fun d!1866552 () Bool)

(declare-fun c!1059736 () Bool)

(declare-fun e!3642283 () Bool)

(assert (=> d!1866552 (= c!1059736 e!3642283)))

(declare-fun res!2492276 () Bool)

(assert (=> d!1866552 (=> (not res!2492276) (not e!3642283))))

(assert (=> d!1866552 (= res!2492276 ((_ is Cons!64166) (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313738))))))))

(declare-fun e!3642282 () (InoxSet Context!10762))

(assert (=> d!1866552 (= (derivationStepZipperUp!1173 (Context!10763 (t!377701 (exprs!5881 lt!2313738))) (h!70615 s!2326)) e!3642282)))

(declare-fun b!5954150 () Bool)

(declare-fun call!474397 () (InoxSet Context!10762))

(assert (=> b!5954150 (= e!3642284 call!474397)))

(declare-fun b!5954151 () Bool)

(assert (=> b!5954151 (= e!3642283 (nullable!5992 (h!70614 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313738)))))))))

(declare-fun b!5954152 () Bool)

(assert (=> b!5954152 (= e!3642282 e!3642284)))

(declare-fun c!1059735 () Bool)

(assert (=> b!5954152 (= c!1059735 ((_ is Cons!64166) (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313738))))))))

(declare-fun b!5954153 () Bool)

(assert (=> b!5954153 (= e!3642282 ((_ map or) call!474397 (derivationStepZipperUp!1173 (Context!10763 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313738)))))) (h!70615 s!2326))))))

(declare-fun bm!474392 () Bool)

(assert (=> bm!474392 (= call!474397 (derivationStepZipperDown!1247 (h!70614 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313738))))) (Context!10763 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313738)))))) (h!70615 s!2326)))))

(assert (= (and d!1866552 res!2492276) b!5954151))

(assert (= (and d!1866552 c!1059736) b!5954153))

(assert (= (and d!1866552 (not c!1059736)) b!5954152))

(assert (= (and b!5954152 c!1059735) b!5954150))

(assert (= (and b!5954152 (not c!1059735)) b!5954149))

(assert (= (or b!5954153 b!5954150) bm!474392))

(declare-fun m!6841486 () Bool)

(assert (=> b!5954151 m!6841486))

(declare-fun m!6841488 () Bool)

(assert (=> b!5954153 m!6841488))

(declare-fun m!6841490 () Bool)

(assert (=> bm!474392 m!6841490))

(assert (=> b!5953321 d!1866552))

(declare-fun d!1866554 () Bool)

(declare-fun c!1059737 () Bool)

(assert (=> d!1866554 (= c!1059737 (isEmpty!36053 (tail!11621 s!2326)))))

(declare-fun e!3642289 () Bool)

(assert (=> d!1866554 (= (matchZipper!2033 (derivationStepZipper!1978 lt!2313752 (head!12536 s!2326)) (tail!11621 s!2326)) e!3642289)))

(declare-fun b!5954158 () Bool)

(assert (=> b!5954158 (= e!3642289 (nullableZipper!1804 (derivationStepZipper!1978 lt!2313752 (head!12536 s!2326))))))

(declare-fun b!5954159 () Bool)

(assert (=> b!5954159 (= e!3642289 (matchZipper!2033 (derivationStepZipper!1978 (derivationStepZipper!1978 lt!2313752 (head!12536 s!2326)) (head!12536 (tail!11621 s!2326))) (tail!11621 (tail!11621 s!2326))))))

(assert (= (and d!1866554 c!1059737) b!5954158))

(assert (= (and d!1866554 (not c!1059737)) b!5954159))

(assert (=> d!1866554 m!6840968))

(assert (=> d!1866554 m!6841338))

(assert (=> b!5954158 m!6840966))

(declare-fun m!6841492 () Bool)

(assert (=> b!5954158 m!6841492))

(assert (=> b!5954159 m!6840968))

(declare-fun m!6841494 () Bool)

(assert (=> b!5954159 m!6841494))

(assert (=> b!5954159 m!6840966))

(assert (=> b!5954159 m!6841494))

(declare-fun m!6841496 () Bool)

(assert (=> b!5954159 m!6841496))

(assert (=> b!5954159 m!6840968))

(declare-fun m!6841498 () Bool)

(assert (=> b!5954159 m!6841498))

(assert (=> b!5954159 m!6841496))

(assert (=> b!5954159 m!6841498))

(declare-fun m!6841500 () Bool)

(assert (=> b!5954159 m!6841500))

(assert (=> b!5953425 d!1866554))

(declare-fun bs!1410723 () Bool)

(declare-fun d!1866556 () Bool)

(assert (= bs!1410723 (and d!1866556 b!5953147)))

(declare-fun lambda!325129 () Int)

(assert (=> bs!1410723 (= (= (head!12536 s!2326) (h!70615 s!2326)) (= lambda!325129 lambda!325000))))

(declare-fun bs!1410724 () Bool)

(assert (= bs!1410724 (and d!1866556 d!1866326)))

(assert (=> bs!1410724 (= (= (head!12536 s!2326) (h!70615 s!2326)) (= lambda!325129 lambda!325065))))

(declare-fun bs!1410725 () Bool)

(assert (= bs!1410725 (and d!1866556 d!1866386)))

(assert (=> bs!1410725 (= (= (head!12536 s!2326) (h!70615 s!2326)) (= lambda!325129 lambda!325084))))

(declare-fun bs!1410726 () Bool)

(assert (= bs!1410726 (and d!1866556 d!1866454)))

(assert (=> bs!1410726 (= (= (head!12536 s!2326) (h!70615 s!2326)) (= lambda!325129 lambda!325106))))

(assert (=> d!1866556 true))

(assert (=> d!1866556 (= (derivationStepZipper!1978 lt!2313752 (head!12536 s!2326)) (flatMap!1510 lt!2313752 lambda!325129))))

(declare-fun bs!1410727 () Bool)

(assert (= bs!1410727 d!1866556))

(declare-fun m!6841502 () Bool)

(assert (=> bs!1410727 m!6841502))

(assert (=> b!5953425 d!1866556))

(declare-fun d!1866558 () Bool)

(assert (=> d!1866558 (= (head!12536 s!2326) (h!70615 s!2326))))

(assert (=> b!5953425 d!1866558))

(declare-fun d!1866560 () Bool)

(assert (=> d!1866560 (= (tail!11621 s!2326) (t!377702 s!2326))))

(assert (=> b!5953425 d!1866560))

(declare-fun d!1866562 () Bool)

(declare-fun c!1059738 () Bool)

(assert (=> d!1866562 (= c!1059738 (isEmpty!36053 (tail!11621 (t!377702 s!2326))))))

(declare-fun e!3642292 () Bool)

(assert (=> d!1866562 (= (matchZipper!2033 (derivationStepZipper!1978 lt!2313745 (head!12536 (t!377702 s!2326))) (tail!11621 (t!377702 s!2326))) e!3642292)))

(declare-fun b!5954162 () Bool)

(assert (=> b!5954162 (= e!3642292 (nullableZipper!1804 (derivationStepZipper!1978 lt!2313745 (head!12536 (t!377702 s!2326)))))))

(declare-fun b!5954163 () Bool)

(assert (=> b!5954163 (= e!3642292 (matchZipper!2033 (derivationStepZipper!1978 (derivationStepZipper!1978 lt!2313745 (head!12536 (t!377702 s!2326))) (head!12536 (tail!11621 (t!377702 s!2326)))) (tail!11621 (tail!11621 (t!377702 s!2326)))))))

(assert (= (and d!1866562 c!1059738) b!5954162))

(assert (= (and d!1866562 (not c!1059738)) b!5954163))

(assert (=> d!1866562 m!6840980))

(declare-fun m!6841508 () Bool)

(assert (=> d!1866562 m!6841508))

(assert (=> b!5954162 m!6841220))

(declare-fun m!6841510 () Bool)

(assert (=> b!5954162 m!6841510))

(assert (=> b!5954163 m!6840980))

(declare-fun m!6841512 () Bool)

(assert (=> b!5954163 m!6841512))

(assert (=> b!5954163 m!6841220))

(assert (=> b!5954163 m!6841512))

(declare-fun m!6841514 () Bool)

(assert (=> b!5954163 m!6841514))

(assert (=> b!5954163 m!6840980))

(declare-fun m!6841516 () Bool)

(assert (=> b!5954163 m!6841516))

(assert (=> b!5954163 m!6841514))

(assert (=> b!5954163 m!6841516))

(declare-fun m!6841518 () Bool)

(assert (=> b!5954163 m!6841518))

(assert (=> b!5953677 d!1866562))

(declare-fun bs!1410728 () Bool)

(declare-fun d!1866566 () Bool)

(assert (= bs!1410728 (and d!1866566 d!1866556)))

(declare-fun lambda!325130 () Int)

(assert (=> bs!1410728 (= (= (head!12536 (t!377702 s!2326)) (head!12536 s!2326)) (= lambda!325130 lambda!325129))))

(declare-fun bs!1410729 () Bool)

(assert (= bs!1410729 (and d!1866566 d!1866386)))

(assert (=> bs!1410729 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325130 lambda!325084))))

(declare-fun bs!1410730 () Bool)

(assert (= bs!1410730 (and d!1866566 d!1866326)))

(assert (=> bs!1410730 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325130 lambda!325065))))

(declare-fun bs!1410731 () Bool)

(assert (= bs!1410731 (and d!1866566 d!1866454)))

(assert (=> bs!1410731 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325130 lambda!325106))))

(declare-fun bs!1410732 () Bool)

(assert (= bs!1410732 (and d!1866566 b!5953147)))

(assert (=> bs!1410732 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325130 lambda!325000))))

(assert (=> d!1866566 true))

(assert (=> d!1866566 (= (derivationStepZipper!1978 lt!2313745 (head!12536 (t!377702 s!2326))) (flatMap!1510 lt!2313745 lambda!325130))))

(declare-fun bs!1410733 () Bool)

(assert (= bs!1410733 d!1866566))

(declare-fun m!6841520 () Bool)

(assert (=> bs!1410733 m!6841520))

(assert (=> b!5953677 d!1866566))

(declare-fun d!1866568 () Bool)

(assert (=> d!1866568 (= (head!12536 (t!377702 s!2326)) (h!70615 (t!377702 s!2326)))))

(assert (=> b!5953677 d!1866568))

(declare-fun d!1866570 () Bool)

(assert (=> d!1866570 (= (tail!11621 (t!377702 s!2326)) (t!377702 (t!377702 s!2326)))))

(assert (=> b!5953677 d!1866570))

(declare-fun d!1866572 () Bool)

(assert (=> d!1866572 true))

(declare-fun setRes!40476 () Bool)

(assert (=> d!1866572 setRes!40476))

(declare-fun condSetEmpty!40476 () Bool)

(declare-fun res!2492285 () (InoxSet Context!10762))

(assert (=> d!1866572 (= condSetEmpty!40476 (= res!2492285 ((as const (Array Context!10762 Bool)) false)))))

(assert (=> d!1866572 (= (choose!44871 lt!2313752 lambda!325000) res!2492285)))

(declare-fun setIsEmpty!40476 () Bool)

(assert (=> setIsEmpty!40476 setRes!40476))

(declare-fun setNonEmpty!40476 () Bool)

(declare-fun e!3642298 () Bool)

(declare-fun tp!1656526 () Bool)

(declare-fun setElem!40476 () Context!10762)

(assert (=> setNonEmpty!40476 (= setRes!40476 (and tp!1656526 (inv!83239 setElem!40476) e!3642298))))

(declare-fun setRest!40476 () (InoxSet Context!10762))

(assert (=> setNonEmpty!40476 (= res!2492285 ((_ map or) (store ((as const (Array Context!10762 Bool)) false) setElem!40476 true) setRest!40476))))

(declare-fun b!5954172 () Bool)

(declare-fun tp!1656525 () Bool)

(assert (=> b!5954172 (= e!3642298 tp!1656525)))

(assert (= (and d!1866572 condSetEmpty!40476) setIsEmpty!40476))

(assert (= (and d!1866572 (not condSetEmpty!40476)) setNonEmpty!40476))

(assert (= setNonEmpty!40476 b!5954172))

(declare-fun m!6841526 () Bool)

(assert (=> setNonEmpty!40476 m!6841526))

(assert (=> d!1866296 d!1866572))

(declare-fun bs!1410734 () Bool)

(declare-fun d!1866576 () Bool)

(assert (= bs!1410734 (and d!1866576 d!1866308)))

(declare-fun lambda!325131 () Int)

(assert (=> bs!1410734 (= lambda!325131 lambda!325043)))

(declare-fun bs!1410735 () Bool)

(assert (= bs!1410735 (and d!1866576 b!5953582)))

(assert (=> bs!1410735 (not (= lambda!325131 lambda!325081))))

(declare-fun bs!1410736 () Bool)

(assert (= bs!1410736 (and d!1866576 b!5954093)))

(assert (=> bs!1410736 (not (= lambda!325131 lambda!325119))))

(declare-fun bs!1410737 () Bool)

(assert (= bs!1410737 (and d!1866576 d!1866304)))

(assert (=> bs!1410737 (= lambda!325131 lambda!325035)))

(declare-fun bs!1410738 () Bool)

(assert (= bs!1410738 (and d!1866576 d!1866302)))

(assert (=> bs!1410738 (= lambda!325131 lambda!325029)))

(declare-fun bs!1410739 () Bool)

(assert (= bs!1410739 (and d!1866576 d!1866504)))

(assert (=> bs!1410739 (not (= lambda!325131 lambda!325122))))

(declare-fun bs!1410740 () Bool)

(assert (= bs!1410740 (and d!1866576 d!1866492)))

(assert (=> bs!1410740 (= lambda!325131 lambda!325117)))

(declare-fun bs!1410741 () Bool)

(assert (= bs!1410741 (and d!1866576 b!5953592)))

(assert (=> bs!1410741 (not (= lambda!325131 lambda!325083))))

(declare-fun bs!1410742 () Bool)

(assert (= bs!1410742 (and d!1866576 d!1866344)))

(assert (=> bs!1410742 (= lambda!325131 lambda!325073)))

(declare-fun bs!1410743 () Bool)

(assert (= bs!1410743 (and d!1866576 b!5953646)))

(assert (=> bs!1410743 (not (= lambda!325131 lambda!325086))))

(declare-fun bs!1410744 () Bool)

(assert (= bs!1410744 (and d!1866576 b!5953644)))

(assert (=> bs!1410744 (not (= lambda!325131 lambda!325085))))

(declare-fun bs!1410745 () Bool)

(assert (= bs!1410745 (and d!1866576 b!5953590)))

(assert (=> bs!1410745 (not (= lambda!325131 lambda!325082))))

(declare-fun bs!1410746 () Bool)

(assert (= bs!1410746 (and d!1866576 d!1866300)))

(assert (=> bs!1410746 (= lambda!325131 lambda!325028)))

(declare-fun bs!1410747 () Bool)

(assert (= bs!1410747 (and d!1866576 b!5954091)))

(assert (=> bs!1410747 (not (= lambda!325131 lambda!325118))))

(declare-fun bs!1410748 () Bool)

(assert (= bs!1410748 (and d!1866576 d!1866328)))

(assert (=> bs!1410748 (= lambda!325131 lambda!325068)))

(declare-fun bs!1410749 () Bool)

(assert (= bs!1410749 (and d!1866576 b!5953580)))

(assert (=> bs!1410749 (not (= lambda!325131 lambda!325080))))

(assert (=> d!1866576 (= (inv!83239 setElem!40473) (forall!15085 (exprs!5881 setElem!40473) lambda!325131))))

(declare-fun bs!1410750 () Bool)

(assert (= bs!1410750 d!1866576))

(declare-fun m!6841532 () Bool)

(assert (=> bs!1410750 m!6841532))

(assert (=> setNonEmpty!40473 d!1866576))

(declare-fun b!5954175 () Bool)

(declare-fun e!3642305 () (InoxSet Context!10762))

(declare-fun call!474403 () (InoxSet Context!10762))

(assert (=> b!5954175 (= e!3642305 call!474403)))

(declare-fun bm!474393 () Bool)

(declare-fun call!474400 () (InoxSet Context!10762))

(declare-fun call!474402 () (InoxSet Context!10762))

(assert (=> bm!474393 (= call!474400 call!474402)))

(declare-fun b!5954176 () Bool)

(declare-fun e!3642303 () (InoxSet Context!10762))

(declare-fun e!3642306 () (InoxSet Context!10762))

(assert (=> b!5954176 (= e!3642303 e!3642306)))

(declare-fun c!1059742 () Bool)

(assert (=> b!5954176 (= c!1059742 ((_ is Union!15997) (ite c!1059485 (regOne!32507 (regOne!32506 r!7292)) (ite c!1059488 (regTwo!32506 (regOne!32506 r!7292)) (ite c!1059487 (regOne!32506 (regOne!32506 r!7292)) (reg!16326 (regOne!32506 r!7292)))))))))

(declare-fun c!1059745 () Bool)

(declare-fun bm!474394 () Bool)

(declare-fun c!1059744 () Bool)

(declare-fun call!474401 () List!64290)

(assert (=> bm!474394 (= call!474402 (derivationStepZipperDown!1247 (ite c!1059742 (regOne!32507 (ite c!1059485 (regOne!32507 (regOne!32506 r!7292)) (ite c!1059488 (regTwo!32506 (regOne!32506 r!7292)) (ite c!1059487 (regOne!32506 (regOne!32506 r!7292)) (reg!16326 (regOne!32506 r!7292)))))) (ite c!1059745 (regTwo!32506 (ite c!1059485 (regOne!32507 (regOne!32506 r!7292)) (ite c!1059488 (regTwo!32506 (regOne!32506 r!7292)) (ite c!1059487 (regOne!32506 (regOne!32506 r!7292)) (reg!16326 (regOne!32506 r!7292)))))) (ite c!1059744 (regOne!32506 (ite c!1059485 (regOne!32507 (regOne!32506 r!7292)) (ite c!1059488 (regTwo!32506 (regOne!32506 r!7292)) (ite c!1059487 (regOne!32506 (regOne!32506 r!7292)) (reg!16326 (regOne!32506 r!7292)))))) (reg!16326 (ite c!1059485 (regOne!32507 (regOne!32506 r!7292)) (ite c!1059488 (regTwo!32506 (regOne!32506 r!7292)) (ite c!1059487 (regOne!32506 (regOne!32506 r!7292)) (reg!16326 (regOne!32506 r!7292))))))))) (ite (or c!1059742 c!1059745) (ite (or c!1059485 c!1059488) lt!2313746 (Context!10763 call!474273)) (Context!10763 call!474401)) (h!70615 s!2326)))))

(declare-fun bm!474395 () Bool)

(assert (=> bm!474395 (= call!474403 call!474400)))

(declare-fun b!5954177 () Bool)

(declare-fun e!3642302 () (InoxSet Context!10762))

(assert (=> b!5954177 (= e!3642302 call!474403)))

(declare-fun b!5954178 () Bool)

(declare-fun e!3642301 () Bool)

(assert (=> b!5954178 (= e!3642301 (nullable!5992 (regOne!32506 (ite c!1059485 (regOne!32507 (regOne!32506 r!7292)) (ite c!1059488 (regTwo!32506 (regOne!32506 r!7292)) (ite c!1059487 (regOne!32506 (regOne!32506 r!7292)) (reg!16326 (regOne!32506 r!7292))))))))))

(declare-fun b!5954179 () Bool)

(declare-fun e!3642304 () (InoxSet Context!10762))

(declare-fun call!474399 () (InoxSet Context!10762))

(assert (=> b!5954179 (= e!3642304 ((_ map or) call!474399 call!474400))))

(declare-fun d!1866580 () Bool)

(declare-fun c!1059743 () Bool)

(assert (=> d!1866580 (= c!1059743 (and ((_ is ElementMatch!15997) (ite c!1059485 (regOne!32507 (regOne!32506 r!7292)) (ite c!1059488 (regTwo!32506 (regOne!32506 r!7292)) (ite c!1059487 (regOne!32506 (regOne!32506 r!7292)) (reg!16326 (regOne!32506 r!7292)))))) (= (c!1059438 (ite c!1059485 (regOne!32507 (regOne!32506 r!7292)) (ite c!1059488 (regTwo!32506 (regOne!32506 r!7292)) (ite c!1059487 (regOne!32506 (regOne!32506 r!7292)) (reg!16326 (regOne!32506 r!7292)))))) (h!70615 s!2326))))))

(assert (=> d!1866580 (= (derivationStepZipperDown!1247 (ite c!1059485 (regOne!32507 (regOne!32506 r!7292)) (ite c!1059488 (regTwo!32506 (regOne!32506 r!7292)) (ite c!1059487 (regOne!32506 (regOne!32506 r!7292)) (reg!16326 (regOne!32506 r!7292))))) (ite (or c!1059485 c!1059488) lt!2313746 (Context!10763 call!474273)) (h!70615 s!2326)) e!3642303)))

(declare-fun b!5954180 () Bool)

(assert (=> b!5954180 (= e!3642303 (store ((as const (Array Context!10762 Bool)) false) (ite (or c!1059485 c!1059488) lt!2313746 (Context!10763 call!474273)) true))))

(declare-fun bm!474396 () Bool)

(declare-fun call!474398 () List!64290)

(assert (=> bm!474396 (= call!474398 ($colon$colon!1883 (exprs!5881 (ite (or c!1059485 c!1059488) lt!2313746 (Context!10763 call!474273))) (ite (or c!1059745 c!1059744) (regTwo!32506 (ite c!1059485 (regOne!32507 (regOne!32506 r!7292)) (ite c!1059488 (regTwo!32506 (regOne!32506 r!7292)) (ite c!1059487 (regOne!32506 (regOne!32506 r!7292)) (reg!16326 (regOne!32506 r!7292)))))) (ite c!1059485 (regOne!32507 (regOne!32506 r!7292)) (ite c!1059488 (regTwo!32506 (regOne!32506 r!7292)) (ite c!1059487 (regOne!32506 (regOne!32506 r!7292)) (reg!16326 (regOne!32506 r!7292))))))))))

(declare-fun b!5954181 () Bool)

(declare-fun c!1059746 () Bool)

(assert (=> b!5954181 (= c!1059746 ((_ is Star!15997) (ite c!1059485 (regOne!32507 (regOne!32506 r!7292)) (ite c!1059488 (regTwo!32506 (regOne!32506 r!7292)) (ite c!1059487 (regOne!32506 (regOne!32506 r!7292)) (reg!16326 (regOne!32506 r!7292)))))))))

(assert (=> b!5954181 (= e!3642305 e!3642302)))

(declare-fun b!5954182 () Bool)

(assert (=> b!5954182 (= e!3642302 ((as const (Array Context!10762 Bool)) false))))

(declare-fun b!5954183 () Bool)

(assert (=> b!5954183 (= e!3642304 e!3642305)))

(assert (=> b!5954183 (= c!1059744 ((_ is Concat!24842) (ite c!1059485 (regOne!32507 (regOne!32506 r!7292)) (ite c!1059488 (regTwo!32506 (regOne!32506 r!7292)) (ite c!1059487 (regOne!32506 (regOne!32506 r!7292)) (reg!16326 (regOne!32506 r!7292)))))))))

(declare-fun bm!474397 () Bool)

(assert (=> bm!474397 (= call!474401 call!474398)))

(declare-fun bm!474398 () Bool)

(assert (=> bm!474398 (= call!474399 (derivationStepZipperDown!1247 (ite c!1059742 (regTwo!32507 (ite c!1059485 (regOne!32507 (regOne!32506 r!7292)) (ite c!1059488 (regTwo!32506 (regOne!32506 r!7292)) (ite c!1059487 (regOne!32506 (regOne!32506 r!7292)) (reg!16326 (regOne!32506 r!7292)))))) (regOne!32506 (ite c!1059485 (regOne!32507 (regOne!32506 r!7292)) (ite c!1059488 (regTwo!32506 (regOne!32506 r!7292)) (ite c!1059487 (regOne!32506 (regOne!32506 r!7292)) (reg!16326 (regOne!32506 r!7292))))))) (ite c!1059742 (ite (or c!1059485 c!1059488) lt!2313746 (Context!10763 call!474273)) (Context!10763 call!474398)) (h!70615 s!2326)))))

(declare-fun b!5954184 () Bool)

(assert (=> b!5954184 (= c!1059745 e!3642301)))

(declare-fun res!2492290 () Bool)

(assert (=> b!5954184 (=> (not res!2492290) (not e!3642301))))

(assert (=> b!5954184 (= res!2492290 ((_ is Concat!24842) (ite c!1059485 (regOne!32507 (regOne!32506 r!7292)) (ite c!1059488 (regTwo!32506 (regOne!32506 r!7292)) (ite c!1059487 (regOne!32506 (regOne!32506 r!7292)) (reg!16326 (regOne!32506 r!7292)))))))))

(assert (=> b!5954184 (= e!3642306 e!3642304)))

(declare-fun b!5954185 () Bool)

(assert (=> b!5954185 (= e!3642306 ((_ map or) call!474402 call!474399))))

(assert (= (and d!1866580 c!1059743) b!5954180))

(assert (= (and d!1866580 (not c!1059743)) b!5954176))

(assert (= (and b!5954176 c!1059742) b!5954185))

(assert (= (and b!5954176 (not c!1059742)) b!5954184))

(assert (= (and b!5954184 res!2492290) b!5954178))

(assert (= (and b!5954184 c!1059745) b!5954179))

(assert (= (and b!5954184 (not c!1059745)) b!5954183))

(assert (= (and b!5954183 c!1059744) b!5954175))

(assert (= (and b!5954183 (not c!1059744)) b!5954181))

(assert (= (and b!5954181 c!1059746) b!5954177))

(assert (= (and b!5954181 (not c!1059746)) b!5954182))

(assert (= (or b!5954175 b!5954177) bm!474397))

(assert (= (or b!5954175 b!5954177) bm!474395))

(assert (= (or b!5954179 bm!474397) bm!474396))

(assert (= (or b!5954179 bm!474395) bm!474393))

(assert (= (or b!5954185 b!5954179) bm!474398))

(assert (= (or b!5954185 bm!474393) bm!474394))

(declare-fun m!6841534 () Bool)

(assert (=> b!5954178 m!6841534))

(declare-fun m!6841536 () Bool)

(assert (=> bm!474394 m!6841536))

(declare-fun m!6841538 () Bool)

(assert (=> bm!474396 m!6841538))

(declare-fun m!6841540 () Bool)

(assert (=> bm!474398 m!6841540))

(declare-fun m!6841542 () Bool)

(assert (=> b!5954180 m!6841542))

(assert (=> bm!474266 d!1866580))

(declare-fun d!1866582 () Bool)

(declare-fun res!2492291 () Bool)

(declare-fun e!3642309 () Bool)

(assert (=> d!1866582 (=> res!2492291 e!3642309)))

(assert (=> d!1866582 (= res!2492291 ((_ is Nil!64166) (exprs!5881 setElem!40467)))))

(assert (=> d!1866582 (= (forall!15085 (exprs!5881 setElem!40467) lambda!325029) e!3642309)))

(declare-fun b!5954188 () Bool)

(declare-fun e!3642310 () Bool)

(assert (=> b!5954188 (= e!3642309 e!3642310)))

(declare-fun res!2492292 () Bool)

(assert (=> b!5954188 (=> (not res!2492292) (not e!3642310))))

(assert (=> b!5954188 (= res!2492292 (dynLambda!25109 lambda!325029 (h!70614 (exprs!5881 setElem!40467))))))

(declare-fun b!5954189 () Bool)

(assert (=> b!5954189 (= e!3642310 (forall!15085 (t!377701 (exprs!5881 setElem!40467)) lambda!325029))))

(assert (= (and d!1866582 (not res!2492291)) b!5954188))

(assert (= (and b!5954188 res!2492292) b!5954189))

(declare-fun b_lambda!223795 () Bool)

(assert (=> (not b_lambda!223795) (not b!5954188)))

(declare-fun m!6841544 () Bool)

(assert (=> b!5954188 m!6841544))

(declare-fun m!6841546 () Bool)

(assert (=> b!5954189 m!6841546))

(assert (=> d!1866302 d!1866582))

(declare-fun bs!1410751 () Bool)

(declare-fun d!1866584 () Bool)

(assert (= bs!1410751 (and d!1866584 b!5953406)))

(declare-fun lambda!325132 () Int)

(assert (=> bs!1410751 (not (= lambda!325132 lambda!325055))))

(declare-fun bs!1410752 () Bool)

(assert (= bs!1410752 (and d!1866584 d!1866476)))

(assert (=> bs!1410752 (= lambda!325132 lambda!325116)))

(declare-fun bs!1410753 () Bool)

(assert (= bs!1410753 (and d!1866584 d!1866550)))

(assert (=> bs!1410753 (= lambda!325132 lambda!325128)))

(declare-fun bs!1410754 () Bool)

(assert (= bs!1410754 (and d!1866584 b!5953408)))

(assert (=> bs!1410754 (not (= lambda!325132 lambda!325056))))

(declare-fun bs!1410755 () Bool)

(assert (= bs!1410755 (and d!1866584 d!1866474)))

(assert (=> bs!1410755 (= lambda!325132 lambda!325115)))

(declare-fun bs!1410756 () Bool)

(assert (= bs!1410756 (and d!1866584 b!5953411)))

(assert (=> bs!1410756 (not (= lambda!325132 lambda!325058))))

(declare-fun bs!1410757 () Bool)

(assert (= bs!1410757 (and d!1866584 b!5953413)))

(assert (=> bs!1410757 (not (= lambda!325132 lambda!325059))))

(declare-fun bs!1410758 () Bool)

(assert (= bs!1410758 (and d!1866584 d!1866526)))

(assert (=> bs!1410758 (= lambda!325132 lambda!325124)))

(assert (=> d!1866584 (= (nullableZipper!1804 (derivationStepZipper!1978 lt!2313752 (h!70615 s!2326))) (exists!2353 (derivationStepZipper!1978 lt!2313752 (h!70615 s!2326)) lambda!325132))))

(declare-fun bs!1410759 () Bool)

(assert (= bs!1410759 d!1866584))

(assert (=> bs!1410759 m!6840672))

(declare-fun m!6841550 () Bool)

(assert (=> bs!1410759 m!6841550))

(assert (=> b!5953426 d!1866584))

(declare-fun d!1866588 () Bool)

(assert (=> d!1866588 (= (isEmpty!36053 (t!377702 s!2326)) ((_ is Nil!64167) (t!377702 s!2326)))))

(assert (=> d!1866418 d!1866588))

(declare-fun d!1866590 () Bool)

(assert (=> d!1866590 (= (isEmpty!36049 (t!377701 (unfocusZipperList!1418 zl!343))) ((_ is Nil!64166) (t!377701 (unfocusZipperList!1418 zl!343))))))

(assert (=> b!5953350 d!1866590))

(declare-fun d!1866592 () Bool)

(assert (=> d!1866592 (= (isEmpty!36053 (tail!11621 s!2326)) ((_ is Nil!64167) (tail!11621 s!2326)))))

(assert (=> b!5953958 d!1866592))

(assert (=> b!5953958 d!1866560))

(declare-fun d!1866594 () Bool)

(declare-fun c!1059747 () Bool)

(assert (=> d!1866594 (= c!1059747 (isEmpty!36053 (tail!11621 (t!377702 s!2326))))))

(declare-fun e!3642312 () Bool)

(assert (=> d!1866594 (= (matchZipper!2033 (derivationStepZipper!1978 lt!2313758 (head!12536 (t!377702 s!2326))) (tail!11621 (t!377702 s!2326))) e!3642312)))

(declare-fun b!5954191 () Bool)

(assert (=> b!5954191 (= e!3642312 (nullableZipper!1804 (derivationStepZipper!1978 lt!2313758 (head!12536 (t!377702 s!2326)))))))

(declare-fun b!5954192 () Bool)

(assert (=> b!5954192 (= e!3642312 (matchZipper!2033 (derivationStepZipper!1978 (derivationStepZipper!1978 lt!2313758 (head!12536 (t!377702 s!2326))) (head!12536 (tail!11621 (t!377702 s!2326)))) (tail!11621 (tail!11621 (t!377702 s!2326)))))))

(assert (= (and d!1866594 c!1059747) b!5954191))

(assert (= (and d!1866594 (not c!1059747)) b!5954192))

(assert (=> d!1866594 m!6840980))

(assert (=> d!1866594 m!6841508))

(assert (=> b!5954191 m!6841214))

(declare-fun m!6841552 () Bool)

(assert (=> b!5954191 m!6841552))

(assert (=> b!5954192 m!6840980))

(assert (=> b!5954192 m!6841512))

(assert (=> b!5954192 m!6841214))

(assert (=> b!5954192 m!6841512))

(declare-fun m!6841554 () Bool)

(assert (=> b!5954192 m!6841554))

(assert (=> b!5954192 m!6840980))

(assert (=> b!5954192 m!6841516))

(assert (=> b!5954192 m!6841554))

(assert (=> b!5954192 m!6841516))

(declare-fun m!6841556 () Bool)

(assert (=> b!5954192 m!6841556))

(assert (=> b!5953675 d!1866594))

(declare-fun bs!1410760 () Bool)

(declare-fun d!1866596 () Bool)

(assert (= bs!1410760 (and d!1866596 d!1866556)))

(declare-fun lambda!325133 () Int)

(assert (=> bs!1410760 (= (= (head!12536 (t!377702 s!2326)) (head!12536 s!2326)) (= lambda!325133 lambda!325129))))

(declare-fun bs!1410761 () Bool)

(assert (= bs!1410761 (and d!1866596 d!1866386)))

(assert (=> bs!1410761 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325133 lambda!325084))))

(declare-fun bs!1410762 () Bool)

(assert (= bs!1410762 (and d!1866596 d!1866326)))

(assert (=> bs!1410762 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325133 lambda!325065))))

(declare-fun bs!1410763 () Bool)

(assert (= bs!1410763 (and d!1866596 d!1866454)))

(assert (=> bs!1410763 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325133 lambda!325106))))

(declare-fun bs!1410764 () Bool)

(assert (= bs!1410764 (and d!1866596 d!1866566)))

(assert (=> bs!1410764 (= lambda!325133 lambda!325130)))

(declare-fun bs!1410765 () Bool)

(assert (= bs!1410765 (and d!1866596 b!5953147)))

(assert (=> bs!1410765 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325133 lambda!325000))))

(assert (=> d!1866596 true))

(assert (=> d!1866596 (= (derivationStepZipper!1978 lt!2313758 (head!12536 (t!377702 s!2326))) (flatMap!1510 lt!2313758 lambda!325133))))

(declare-fun bs!1410766 () Bool)

(assert (= bs!1410766 d!1866596))

(declare-fun m!6841558 () Bool)

(assert (=> bs!1410766 m!6841558))

(assert (=> b!5953675 d!1866596))

(assert (=> b!5953675 d!1866568))

(assert (=> b!5953675 d!1866570))

(declare-fun bs!1410767 () Bool)

(declare-fun d!1866600 () Bool)

(assert (= bs!1410767 (and d!1866600 b!5953406)))

(declare-fun lambda!325134 () Int)

(assert (=> bs!1410767 (not (= lambda!325134 lambda!325055))))

(declare-fun bs!1410768 () Bool)

(assert (= bs!1410768 (and d!1866600 d!1866476)))

(assert (=> bs!1410768 (= lambda!325134 lambda!325116)))

(declare-fun bs!1410769 () Bool)

(assert (= bs!1410769 (and d!1866600 d!1866550)))

(assert (=> bs!1410769 (= lambda!325134 lambda!325128)))

(declare-fun bs!1410770 () Bool)

(assert (= bs!1410770 (and d!1866600 b!5953408)))

(assert (=> bs!1410770 (not (= lambda!325134 lambda!325056))))

(declare-fun bs!1410771 () Bool)

(assert (= bs!1410771 (and d!1866600 d!1866474)))

(assert (=> bs!1410771 (= lambda!325134 lambda!325115)))

(declare-fun bs!1410772 () Bool)

(assert (= bs!1410772 (and d!1866600 b!5953411)))

(assert (=> bs!1410772 (not (= lambda!325134 lambda!325058))))

(declare-fun bs!1410773 () Bool)

(assert (= bs!1410773 (and d!1866600 d!1866584)))

(assert (=> bs!1410773 (= lambda!325134 lambda!325132)))

(declare-fun bs!1410774 () Bool)

(assert (= bs!1410774 (and d!1866600 b!5953413)))

(assert (=> bs!1410774 (not (= lambda!325134 lambda!325059))))

(declare-fun bs!1410775 () Bool)

(assert (= bs!1410775 (and d!1866600 d!1866526)))

(assert (=> bs!1410775 (= lambda!325134 lambda!325124)))

(assert (=> d!1866600 (= (nullableZipper!1804 (derivationStepZipper!1978 lt!2313741 (h!70615 s!2326))) (exists!2353 (derivationStepZipper!1978 lt!2313741 (h!70615 s!2326)) lambda!325134))))

(declare-fun bs!1410776 () Bool)

(assert (= bs!1410776 d!1866600))

(assert (=> bs!1410776 m!6840686))

(declare-fun m!6841560 () Bool)

(assert (=> bs!1410776 m!6841560))

(assert (=> b!5953873 d!1866600))

(declare-fun b!5954193 () Bool)

(declare-fun e!3642317 () (InoxSet Context!10762))

(declare-fun call!474409 () (InoxSet Context!10762))

(assert (=> b!5954193 (= e!3642317 call!474409)))

(declare-fun bm!474399 () Bool)

(declare-fun call!474406 () (InoxSet Context!10762))

(declare-fun call!474408 () (InoxSet Context!10762))

(assert (=> bm!474399 (= call!474406 call!474408)))

(declare-fun b!5954194 () Bool)

(declare-fun e!3642315 () (InoxSet Context!10762))

(declare-fun e!3642318 () (InoxSet Context!10762))

(assert (=> b!5954194 (= e!3642315 e!3642318)))

(declare-fun c!1059748 () Bool)

(assert (=> b!5954194 (= c!1059748 ((_ is Union!15997) (ite c!1059601 (regTwo!32507 r!7292) (regOne!32506 r!7292))))))

(declare-fun c!1059750 () Bool)

(declare-fun call!474407 () List!64290)

(declare-fun bm!474400 () Bool)

(declare-fun c!1059751 () Bool)

(assert (=> bm!474400 (= call!474408 (derivationStepZipperDown!1247 (ite c!1059748 (regOne!32507 (ite c!1059601 (regTwo!32507 r!7292) (regOne!32506 r!7292))) (ite c!1059751 (regTwo!32506 (ite c!1059601 (regTwo!32507 r!7292) (regOne!32506 r!7292))) (ite c!1059750 (regOne!32506 (ite c!1059601 (regTwo!32507 r!7292) (regOne!32506 r!7292))) (reg!16326 (ite c!1059601 (regTwo!32507 r!7292) (regOne!32506 r!7292)))))) (ite (or c!1059748 c!1059751) (ite c!1059601 lt!2313735 (Context!10763 call!474318)) (Context!10763 call!474407)) (h!70615 s!2326)))))

(declare-fun bm!474401 () Bool)

(assert (=> bm!474401 (= call!474409 call!474406)))

(declare-fun b!5954195 () Bool)

(declare-fun e!3642314 () (InoxSet Context!10762))

(assert (=> b!5954195 (= e!3642314 call!474409)))

(declare-fun b!5954196 () Bool)

(declare-fun e!3642313 () Bool)

(assert (=> b!5954196 (= e!3642313 (nullable!5992 (regOne!32506 (ite c!1059601 (regTwo!32507 r!7292) (regOne!32506 r!7292)))))))

(declare-fun b!5954197 () Bool)

(declare-fun e!3642316 () (InoxSet Context!10762))

(declare-fun call!474405 () (InoxSet Context!10762))

(assert (=> b!5954197 (= e!3642316 ((_ map or) call!474405 call!474406))))

(declare-fun d!1866604 () Bool)

(declare-fun c!1059749 () Bool)

(assert (=> d!1866604 (= c!1059749 (and ((_ is ElementMatch!15997) (ite c!1059601 (regTwo!32507 r!7292) (regOne!32506 r!7292))) (= (c!1059438 (ite c!1059601 (regTwo!32507 r!7292) (regOne!32506 r!7292))) (h!70615 s!2326))))))

(assert (=> d!1866604 (= (derivationStepZipperDown!1247 (ite c!1059601 (regTwo!32507 r!7292) (regOne!32506 r!7292)) (ite c!1059601 lt!2313735 (Context!10763 call!474318)) (h!70615 s!2326)) e!3642315)))

(declare-fun b!5954198 () Bool)

(assert (=> b!5954198 (= e!3642315 (store ((as const (Array Context!10762 Bool)) false) (ite c!1059601 lt!2313735 (Context!10763 call!474318)) true))))

(declare-fun bm!474402 () Bool)

(declare-fun call!474404 () List!64290)

(assert (=> bm!474402 (= call!474404 ($colon$colon!1883 (exprs!5881 (ite c!1059601 lt!2313735 (Context!10763 call!474318))) (ite (or c!1059751 c!1059750) (regTwo!32506 (ite c!1059601 (regTwo!32507 r!7292) (regOne!32506 r!7292))) (ite c!1059601 (regTwo!32507 r!7292) (regOne!32506 r!7292)))))))

(declare-fun b!5954199 () Bool)

(declare-fun c!1059752 () Bool)

(assert (=> b!5954199 (= c!1059752 ((_ is Star!15997) (ite c!1059601 (regTwo!32507 r!7292) (regOne!32506 r!7292))))))

(assert (=> b!5954199 (= e!3642317 e!3642314)))

(declare-fun b!5954200 () Bool)

(assert (=> b!5954200 (= e!3642314 ((as const (Array Context!10762 Bool)) false))))

(declare-fun b!5954201 () Bool)

(assert (=> b!5954201 (= e!3642316 e!3642317)))

(assert (=> b!5954201 (= c!1059750 ((_ is Concat!24842) (ite c!1059601 (regTwo!32507 r!7292) (regOne!32506 r!7292))))))

(declare-fun bm!474403 () Bool)

(assert (=> bm!474403 (= call!474407 call!474404)))

(declare-fun bm!474404 () Bool)

(assert (=> bm!474404 (= call!474405 (derivationStepZipperDown!1247 (ite c!1059748 (regTwo!32507 (ite c!1059601 (regTwo!32507 r!7292) (regOne!32506 r!7292))) (regOne!32506 (ite c!1059601 (regTwo!32507 r!7292) (regOne!32506 r!7292)))) (ite c!1059748 (ite c!1059601 lt!2313735 (Context!10763 call!474318)) (Context!10763 call!474404)) (h!70615 s!2326)))))

(declare-fun b!5954202 () Bool)

(assert (=> b!5954202 (= c!1059751 e!3642313)))

(declare-fun res!2492297 () Bool)

(assert (=> b!5954202 (=> (not res!2492297) (not e!3642313))))

(assert (=> b!5954202 (= res!2492297 ((_ is Concat!24842) (ite c!1059601 (regTwo!32507 r!7292) (regOne!32506 r!7292))))))

(assert (=> b!5954202 (= e!3642318 e!3642316)))

(declare-fun b!5954203 () Bool)

(assert (=> b!5954203 (= e!3642318 ((_ map or) call!474408 call!474405))))

(assert (= (and d!1866604 c!1059749) b!5954198))

(assert (= (and d!1866604 (not c!1059749)) b!5954194))

(assert (= (and b!5954194 c!1059748) b!5954203))

(assert (= (and b!5954194 (not c!1059748)) b!5954202))

(assert (= (and b!5954202 res!2492297) b!5954196))

(assert (= (and b!5954202 c!1059751) b!5954197))

(assert (= (and b!5954202 (not c!1059751)) b!5954201))

(assert (= (and b!5954201 c!1059750) b!5954193))

(assert (= (and b!5954201 (not c!1059750)) b!5954199))

(assert (= (and b!5954199 c!1059752) b!5954195))

(assert (= (and b!5954199 (not c!1059752)) b!5954200))

(assert (= (or b!5954193 b!5954195) bm!474403))

(assert (= (or b!5954193 b!5954195) bm!474401))

(assert (= (or b!5954197 bm!474403) bm!474402))

(assert (= (or b!5954197 bm!474401) bm!474399))

(assert (= (or b!5954203 b!5954197) bm!474404))

(assert (= (or b!5954203 bm!474399) bm!474400))

(declare-fun m!6841562 () Bool)

(assert (=> b!5954196 m!6841562))

(declare-fun m!6841564 () Bool)

(assert (=> bm!474400 m!6841564))

(declare-fun m!6841566 () Bool)

(assert (=> bm!474402 m!6841566))

(declare-fun m!6841568 () Bool)

(assert (=> bm!474404 m!6841568))

(declare-fun m!6841570 () Bool)

(assert (=> b!5954198 m!6841570))

(assert (=> bm!474318 d!1866604))

(declare-fun bs!1410777 () Bool)

(declare-fun b!5954204 () Bool)

(assert (= bs!1410777 (and b!5954204 d!1866308)))

(declare-fun lambda!325135 () Int)

(assert (=> bs!1410777 (not (= lambda!325135 lambda!325043))))

(declare-fun bs!1410778 () Bool)

(assert (= bs!1410778 (and b!5954204 b!5953582)))

(declare-fun lt!2313936 () Int)

(assert (=> bs!1410778 (= (= lt!2313936 lt!2313865) (= lambda!325135 lambda!325081))))

(declare-fun bs!1410779 () Bool)

(assert (= bs!1410779 (and b!5954204 d!1866576)))

(assert (=> bs!1410779 (not (= lambda!325135 lambda!325131))))

(declare-fun bs!1410780 () Bool)

(assert (= bs!1410780 (and b!5954204 b!5954093)))

(assert (=> bs!1410780 (= (= lt!2313936 lt!2313926) (= lambda!325135 lambda!325119))))

(declare-fun bs!1410781 () Bool)

(assert (= bs!1410781 (and b!5954204 d!1866304)))

(assert (=> bs!1410781 (not (= lambda!325135 lambda!325035))))

(declare-fun bs!1410782 () Bool)

(assert (= bs!1410782 (and b!5954204 d!1866302)))

(assert (=> bs!1410782 (not (= lambda!325135 lambda!325029))))

(declare-fun bs!1410783 () Bool)

(assert (= bs!1410783 (and b!5954204 d!1866504)))

(assert (=> bs!1410783 (= (= lt!2313936 lt!2313867) (= lambda!325135 lambda!325122))))

(declare-fun bs!1410784 () Bool)

(assert (= bs!1410784 (and b!5954204 d!1866492)))

(assert (=> bs!1410784 (not (= lambda!325135 lambda!325117))))

(declare-fun bs!1410785 () Bool)

(assert (= bs!1410785 (and b!5954204 b!5953592)))

(assert (=> bs!1410785 (= (= lt!2313936 lt!2313869) (= lambda!325135 lambda!325083))))

(declare-fun bs!1410786 () Bool)

(assert (= bs!1410786 (and b!5954204 d!1866344)))

(assert (=> bs!1410786 (not (= lambda!325135 lambda!325073))))

(declare-fun bs!1410787 () Bool)

(assert (= bs!1410787 (and b!5954204 b!5953646)))

(assert (=> bs!1410787 (= (= lt!2313936 lt!2313884) (= lambda!325135 lambda!325086))))

(declare-fun bs!1410788 () Bool)

(assert (= bs!1410788 (and b!5954204 b!5953644)))

(assert (=> bs!1410788 (= (= lt!2313936 lt!2313886) (= lambda!325135 lambda!325085))))

(declare-fun bs!1410789 () Bool)

(assert (= bs!1410789 (and b!5954204 b!5953590)))

(assert (=> bs!1410789 (= (= lt!2313936 lt!2313871) (= lambda!325135 lambda!325082))))

(declare-fun bs!1410790 () Bool)

(assert (= bs!1410790 (and b!5954204 d!1866300)))

(assert (=> bs!1410790 (not (= lambda!325135 lambda!325028))))

(declare-fun bs!1410791 () Bool)

(assert (= bs!1410791 (and b!5954204 b!5954091)))

(assert (=> bs!1410791 (= (= lt!2313936 lt!2313928) (= lambda!325135 lambda!325118))))

(declare-fun bs!1410792 () Bool)

(assert (= bs!1410792 (and b!5954204 d!1866328)))

(assert (=> bs!1410792 (not (= lambda!325135 lambda!325068))))

(declare-fun bs!1410793 () Bool)

(assert (= bs!1410793 (and b!5954204 b!5953580)))

(assert (=> bs!1410793 (= (= lt!2313936 lt!2313867) (= lambda!325135 lambda!325080))))

(assert (=> b!5954204 true))

(declare-fun bs!1410794 () Bool)

(declare-fun b!5954206 () Bool)

(assert (= bs!1410794 (and b!5954206 d!1866308)))

(declare-fun lambda!325136 () Int)

(assert (=> bs!1410794 (not (= lambda!325136 lambda!325043))))

(declare-fun bs!1410795 () Bool)

(assert (= bs!1410795 (and b!5954206 b!5953582)))

(declare-fun lt!2313934 () Int)

(assert (=> bs!1410795 (= (= lt!2313934 lt!2313865) (= lambda!325136 lambda!325081))))

(declare-fun bs!1410796 () Bool)

(assert (= bs!1410796 (and b!5954206 d!1866576)))

(assert (=> bs!1410796 (not (= lambda!325136 lambda!325131))))

(declare-fun bs!1410797 () Bool)

(assert (= bs!1410797 (and b!5954206 b!5954093)))

(assert (=> bs!1410797 (= (= lt!2313934 lt!2313926) (= lambda!325136 lambda!325119))))

(declare-fun bs!1410798 () Bool)

(assert (= bs!1410798 (and b!5954206 d!1866304)))

(assert (=> bs!1410798 (not (= lambda!325136 lambda!325035))))

(declare-fun bs!1410799 () Bool)

(assert (= bs!1410799 (and b!5954206 d!1866302)))

(assert (=> bs!1410799 (not (= lambda!325136 lambda!325029))))

(declare-fun bs!1410800 () Bool)

(assert (= bs!1410800 (and b!5954206 d!1866504)))

(assert (=> bs!1410800 (= (= lt!2313934 lt!2313867) (= lambda!325136 lambda!325122))))

(declare-fun bs!1410801 () Bool)

(assert (= bs!1410801 (and b!5954206 d!1866492)))

(assert (=> bs!1410801 (not (= lambda!325136 lambda!325117))))

(declare-fun bs!1410802 () Bool)

(assert (= bs!1410802 (and b!5954206 b!5953592)))

(assert (=> bs!1410802 (= (= lt!2313934 lt!2313869) (= lambda!325136 lambda!325083))))

(declare-fun bs!1410803 () Bool)

(assert (= bs!1410803 (and b!5954206 d!1866344)))

(assert (=> bs!1410803 (not (= lambda!325136 lambda!325073))))

(declare-fun bs!1410804 () Bool)

(assert (= bs!1410804 (and b!5954206 b!5953646)))

(assert (=> bs!1410804 (= (= lt!2313934 lt!2313884) (= lambda!325136 lambda!325086))))

(declare-fun bs!1410805 () Bool)

(assert (= bs!1410805 (and b!5954206 b!5953644)))

(assert (=> bs!1410805 (= (= lt!2313934 lt!2313886) (= lambda!325136 lambda!325085))))

(declare-fun bs!1410806 () Bool)

(assert (= bs!1410806 (and b!5954206 b!5953590)))

(assert (=> bs!1410806 (= (= lt!2313934 lt!2313871) (= lambda!325136 lambda!325082))))

(declare-fun bs!1410807 () Bool)

(assert (= bs!1410807 (and b!5954206 d!1866300)))

(assert (=> bs!1410807 (not (= lambda!325136 lambda!325028))))

(declare-fun bs!1410808 () Bool)

(assert (= bs!1410808 (and b!5954206 b!5954091)))

(assert (=> bs!1410808 (= (= lt!2313934 lt!2313928) (= lambda!325136 lambda!325118))))

(declare-fun bs!1410809 () Bool)

(assert (= bs!1410809 (and b!5954206 d!1866328)))

(assert (=> bs!1410809 (not (= lambda!325136 lambda!325068))))

(declare-fun bs!1410810 () Bool)

(assert (= bs!1410810 (and b!5954206 b!5954204)))

(assert (=> bs!1410810 (= (= lt!2313934 lt!2313936) (= lambda!325136 lambda!325135))))

(declare-fun bs!1410811 () Bool)

(assert (= bs!1410811 (and b!5954206 b!5953580)))

(assert (=> bs!1410811 (= (= lt!2313934 lt!2313867) (= lambda!325136 lambda!325080))))

(assert (=> b!5954206 true))

(declare-fun d!1866606 () Bool)

(declare-fun e!3642320 () Bool)

(assert (=> d!1866606 e!3642320))

(declare-fun res!2492298 () Bool)

(assert (=> d!1866606 (=> (not res!2492298) (not e!3642320))))

(assert (=> d!1866606 (= res!2492298 (>= lt!2313934 0))))

(declare-fun e!3642319 () Int)

(assert (=> d!1866606 (= lt!2313934 e!3642319)))

(declare-fun c!1059753 () Bool)

(assert (=> d!1866606 (= c!1059753 ((_ is Cons!64166) (exprs!5881 (h!70616 (Cons!64168 lt!2313738 Nil!64168)))))))

(assert (=> d!1866606 (= (contextDepth!145 (h!70616 (Cons!64168 lt!2313738 Nil!64168))) lt!2313934)))

(assert (=> b!5954204 (= e!3642319 lt!2313936)))

(assert (=> b!5954204 (= lt!2313936 (maxBigInt!0 (regexDepth!254 (h!70614 (exprs!5881 (h!70616 (Cons!64168 lt!2313738 Nil!64168))))) (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 (h!70616 (Cons!64168 lt!2313738 Nil!64168))))))))))

(declare-fun lt!2313935 () Unit!157265)

(assert (=> b!5954204 (= lt!2313935 (lemmaForallRegexDepthBiggerThanTransitive!46 (t!377701 (exprs!5881 (h!70616 (Cons!64168 lt!2313738 Nil!64168)))) lt!2313936 (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 (h!70616 (Cons!64168 lt!2313738 Nil!64168))))))))))

(assert (=> b!5954204 (forall!15085 (t!377701 (exprs!5881 (h!70616 (Cons!64168 lt!2313738 Nil!64168)))) lambda!325135)))

(declare-fun lt!2313933 () Unit!157265)

(assert (=> b!5954204 (= lt!2313933 lt!2313935)))

(declare-fun b!5954205 () Bool)

(assert (=> b!5954205 (= e!3642319 0)))

(assert (=> b!5954206 (= e!3642320 (forall!15085 (exprs!5881 (h!70616 (Cons!64168 lt!2313738 Nil!64168))) lambda!325136))))

(assert (= (and d!1866606 c!1059753) b!5954204))

(assert (= (and d!1866606 (not c!1059753)) b!5954205))

(assert (= (and d!1866606 res!2492298) b!5954206))

(declare-fun m!6841572 () Bool)

(assert (=> b!5954204 m!6841572))

(declare-fun m!6841574 () Bool)

(assert (=> b!5954204 m!6841574))

(declare-fun m!6841576 () Bool)

(assert (=> b!5954204 m!6841576))

(assert (=> b!5954204 m!6841574))

(declare-fun m!6841578 () Bool)

(assert (=> b!5954204 m!6841578))

(assert (=> b!5954204 m!6841572))

(assert (=> b!5954204 m!6841574))

(declare-fun m!6841580 () Bool)

(assert (=> b!5954204 m!6841580))

(declare-fun m!6841582 () Bool)

(assert (=> b!5954206 m!6841582))

(assert (=> b!5953406 d!1866606))

(declare-fun bs!1410812 () Bool)

(declare-fun b!5954215 () Bool)

(assert (= bs!1410812 (and b!5954215 b!5953406)))

(declare-fun lambda!325137 () Int)

(assert (=> bs!1410812 (= lambda!325137 lambda!325054)))

(declare-fun bs!1410813 () Bool)

(assert (= bs!1410813 (and b!5954215 b!5953411)))

(assert (=> bs!1410813 (= lambda!325137 lambda!325057)))

(declare-fun lambda!325138 () Int)

(declare-fun lt!2313940 () Int)

(assert (=> bs!1410812 (= (= lt!2313940 lt!2313840) (= lambda!325138 lambda!325055))))

(declare-fun bs!1410814 () Bool)

(assert (= bs!1410814 (and b!5954215 d!1866476)))

(assert (=> bs!1410814 (not (= lambda!325138 lambda!325116))))

(declare-fun bs!1410815 () Bool)

(assert (= bs!1410815 (and b!5954215 d!1866550)))

(assert (=> bs!1410815 (not (= lambda!325138 lambda!325128))))

(declare-fun bs!1410816 () Bool)

(assert (= bs!1410816 (and b!5954215 b!5953408)))

(assert (=> bs!1410816 (= (= lt!2313940 lt!2313839) (= lambda!325138 lambda!325056))))

(declare-fun bs!1410817 () Bool)

(assert (= bs!1410817 (and b!5954215 d!1866474)))

(assert (=> bs!1410817 (not (= lambda!325138 lambda!325115))))

(declare-fun bs!1410818 () Bool)

(assert (= bs!1410818 (and b!5954215 d!1866600)))

(assert (=> bs!1410818 (not (= lambda!325138 lambda!325134))))

(assert (=> bs!1410813 (= (= lt!2313940 lt!2313844) (= lambda!325138 lambda!325058))))

(declare-fun bs!1410819 () Bool)

(assert (= bs!1410819 (and b!5954215 d!1866584)))

(assert (=> bs!1410819 (not (= lambda!325138 lambda!325132))))

(declare-fun bs!1410820 () Bool)

(assert (= bs!1410820 (and b!5954215 b!5953413)))

(assert (=> bs!1410820 (= (= lt!2313940 lt!2313843) (= lambda!325138 lambda!325059))))

(declare-fun bs!1410821 () Bool)

(assert (= bs!1410821 (and b!5954215 d!1866526)))

(assert (=> bs!1410821 (not (= lambda!325138 lambda!325124))))

(assert (=> b!5954215 true))

(declare-fun bs!1410822 () Bool)

(declare-fun b!5954217 () Bool)

(assert (= bs!1410822 (and b!5954217 b!5953406)))

(declare-fun lt!2313939 () Int)

(declare-fun lambda!325139 () Int)

(assert (=> bs!1410822 (= (= lt!2313939 lt!2313840) (= lambda!325139 lambda!325055))))

(declare-fun bs!1410823 () Bool)

(assert (= bs!1410823 (and b!5954217 d!1866476)))

(assert (=> bs!1410823 (not (= lambda!325139 lambda!325116))))

(declare-fun bs!1410824 () Bool)

(assert (= bs!1410824 (and b!5954217 d!1866550)))

(assert (=> bs!1410824 (not (= lambda!325139 lambda!325128))))

(declare-fun bs!1410825 () Bool)

(assert (= bs!1410825 (and b!5954217 b!5954215)))

(assert (=> bs!1410825 (= (= lt!2313939 lt!2313940) (= lambda!325139 lambda!325138))))

(declare-fun bs!1410826 () Bool)

(assert (= bs!1410826 (and b!5954217 b!5953408)))

(assert (=> bs!1410826 (= (= lt!2313939 lt!2313839) (= lambda!325139 lambda!325056))))

(declare-fun bs!1410827 () Bool)

(assert (= bs!1410827 (and b!5954217 d!1866474)))

(assert (=> bs!1410827 (not (= lambda!325139 lambda!325115))))

(declare-fun bs!1410828 () Bool)

(assert (= bs!1410828 (and b!5954217 d!1866600)))

(assert (=> bs!1410828 (not (= lambda!325139 lambda!325134))))

(declare-fun bs!1410829 () Bool)

(assert (= bs!1410829 (and b!5954217 b!5953411)))

(assert (=> bs!1410829 (= (= lt!2313939 lt!2313844) (= lambda!325139 lambda!325058))))

(declare-fun bs!1410830 () Bool)

(assert (= bs!1410830 (and b!5954217 d!1866584)))

(assert (=> bs!1410830 (not (= lambda!325139 lambda!325132))))

(declare-fun bs!1410831 () Bool)

(assert (= bs!1410831 (and b!5954217 b!5953413)))

(assert (=> bs!1410831 (= (= lt!2313939 lt!2313843) (= lambda!325139 lambda!325059))))

(declare-fun bs!1410832 () Bool)

(assert (= bs!1410832 (and b!5954217 d!1866526)))

(assert (=> bs!1410832 (not (= lambda!325139 lambda!325124))))

(assert (=> b!5954217 true))

(declare-fun d!1866608 () Bool)

(declare-fun e!3642326 () Bool)

(assert (=> d!1866608 e!3642326))

(declare-fun res!2492303 () Bool)

(assert (=> d!1866608 (=> (not res!2492303) (not e!3642326))))

(assert (=> d!1866608 (= res!2492303 (>= lt!2313939 0))))

(declare-fun e!3642325 () Int)

(assert (=> d!1866608 (= lt!2313939 e!3642325)))

(declare-fun c!1059756 () Bool)

(assert (=> d!1866608 (= c!1059756 ((_ is Cons!64168) (t!377703 (Cons!64168 lt!2313738 Nil!64168))))))

(assert (=> d!1866608 (= (zipperDepth!246 (t!377703 (Cons!64168 lt!2313738 Nil!64168))) lt!2313939)))

(assert (=> b!5954215 (= e!3642325 lt!2313940)))

(assert (=> b!5954215 (= lt!2313940 (maxBigInt!0 (contextDepth!145 (h!70616 (t!377703 (Cons!64168 lt!2313738 Nil!64168)))) (zipperDepth!246 (t!377703 (t!377703 (Cons!64168 lt!2313738 Nil!64168))))))))

(declare-fun lt!2313942 () Unit!157265)

(assert (=> b!5954215 (= lt!2313942 (lemmaForallContextDepthBiggerThanTransitive!131 (t!377703 (t!377703 (Cons!64168 lt!2313738 Nil!64168))) lt!2313940 (zipperDepth!246 (t!377703 (t!377703 (Cons!64168 lt!2313738 Nil!64168)))) lambda!325137))))

(assert (=> b!5954215 (forall!15086 (t!377703 (t!377703 (Cons!64168 lt!2313738 Nil!64168))) lambda!325138)))

(declare-fun lt!2313941 () Unit!157265)

(assert (=> b!5954215 (= lt!2313941 lt!2313942)))

(declare-fun b!5954216 () Bool)

(assert (=> b!5954216 (= e!3642325 0)))

(assert (=> b!5954217 (= e!3642326 (forall!15086 (t!377703 (Cons!64168 lt!2313738 Nil!64168)) lambda!325139))))

(assert (= (and d!1866608 c!1059756) b!5954215))

(assert (= (and d!1866608 (not c!1059756)) b!5954216))

(assert (= (and d!1866608 res!2492303) b!5954217))

(declare-fun m!6841584 () Bool)

(assert (=> b!5954215 m!6841584))

(declare-fun m!6841586 () Bool)

(assert (=> b!5954215 m!6841586))

(assert (=> b!5954215 m!6841586))

(declare-fun m!6841588 () Bool)

(assert (=> b!5954215 m!6841588))

(declare-fun m!6841590 () Bool)

(assert (=> b!5954215 m!6841590))

(assert (=> b!5954215 m!6841584))

(assert (=> b!5954215 m!6841586))

(declare-fun m!6841592 () Bool)

(assert (=> b!5954215 m!6841592))

(declare-fun m!6841594 () Bool)

(assert (=> b!5954217 m!6841594))

(assert (=> b!5953406 d!1866608))

(declare-fun d!1866610 () Bool)

(declare-fun res!2492310 () Bool)

(declare-fun e!3642333 () Bool)

(assert (=> d!1866610 (=> res!2492310 e!3642333)))

(assert (=> d!1866610 (= res!2492310 ((_ is Nil!64168) (t!377703 (Cons!64168 lt!2313738 Nil!64168))))))

(assert (=> d!1866610 (= (forall!15086 (t!377703 (Cons!64168 lt!2313738 Nil!64168)) lambda!325055) e!3642333)))

(declare-fun b!5954226 () Bool)

(declare-fun e!3642334 () Bool)

(assert (=> b!5954226 (= e!3642333 e!3642334)))

(declare-fun res!2492311 () Bool)

(assert (=> b!5954226 (=> (not res!2492311) (not e!3642334))))

(declare-fun dynLambda!25114 (Int Context!10762) Bool)

(assert (=> b!5954226 (= res!2492311 (dynLambda!25114 lambda!325055 (h!70616 (t!377703 (Cons!64168 lt!2313738 Nil!64168)))))))

(declare-fun b!5954227 () Bool)

(assert (=> b!5954227 (= e!3642334 (forall!15086 (t!377703 (t!377703 (Cons!64168 lt!2313738 Nil!64168))) lambda!325055))))

(assert (= (and d!1866610 (not res!2492310)) b!5954226))

(assert (= (and b!5954226 res!2492311) b!5954227))

(declare-fun b_lambda!223797 () Bool)

(assert (=> (not b_lambda!223797) (not b!5954226)))

(declare-fun m!6841610 () Bool)

(assert (=> b!5954226 m!6841610))

(declare-fun m!6841612 () Bool)

(assert (=> b!5954227 m!6841612))

(assert (=> b!5953406 d!1866610))

(declare-fun d!1866616 () Bool)

(assert (=> d!1866616 (= (maxBigInt!0 (contextDepth!145 (h!70616 (Cons!64168 lt!2313738 Nil!64168))) (zipperDepth!246 (t!377703 (Cons!64168 lt!2313738 Nil!64168)))) (ite (>= (contextDepth!145 (h!70616 (Cons!64168 lt!2313738 Nil!64168))) (zipperDepth!246 (t!377703 (Cons!64168 lt!2313738 Nil!64168)))) (contextDepth!145 (h!70616 (Cons!64168 lt!2313738 Nil!64168))) (zipperDepth!246 (t!377703 (Cons!64168 lt!2313738 Nil!64168)))))))

(assert (=> b!5953406 d!1866616))

(declare-fun bs!1410833 () Bool)

(declare-fun d!1866618 () Bool)

(assert (= bs!1410833 (and d!1866618 b!5953406)))

(declare-fun lambda!325142 () Int)

(assert (=> bs!1410833 (not (= lambda!325142 lambda!325055))))

(declare-fun bs!1410834 () Bool)

(assert (= bs!1410834 (and d!1866618 d!1866476)))

(assert (=> bs!1410834 (not (= lambda!325142 lambda!325116))))

(declare-fun bs!1410835 () Bool)

(assert (= bs!1410835 (and d!1866618 d!1866550)))

(assert (=> bs!1410835 (not (= lambda!325142 lambda!325128))))

(declare-fun bs!1410836 () Bool)

(assert (= bs!1410836 (and d!1866618 b!5954215)))

(assert (=> bs!1410836 (not (= lambda!325142 lambda!325138))))

(declare-fun bs!1410837 () Bool)

(assert (= bs!1410837 (and d!1866618 b!5953408)))

(assert (=> bs!1410837 (not (= lambda!325142 lambda!325056))))

(declare-fun bs!1410838 () Bool)

(assert (= bs!1410838 (and d!1866618 d!1866600)))

(assert (=> bs!1410838 (not (= lambda!325142 lambda!325134))))

(declare-fun bs!1410839 () Bool)

(assert (= bs!1410839 (and d!1866618 b!5953411)))

(assert (=> bs!1410839 (not (= lambda!325142 lambda!325058))))

(declare-fun bs!1410840 () Bool)

(assert (= bs!1410840 (and d!1866618 b!5954217)))

(assert (=> bs!1410840 (not (= lambda!325142 lambda!325139))))

(declare-fun bs!1410841 () Bool)

(assert (= bs!1410841 (and d!1866618 d!1866474)))

(assert (=> bs!1410841 (not (= lambda!325142 lambda!325115))))

(declare-fun bs!1410842 () Bool)

(assert (= bs!1410842 (and d!1866618 d!1866584)))

(assert (=> bs!1410842 (not (= lambda!325142 lambda!325132))))

(declare-fun bs!1410843 () Bool)

(assert (= bs!1410843 (and d!1866618 b!5953413)))

(assert (=> bs!1410843 (not (= lambda!325142 lambda!325059))))

(declare-fun bs!1410844 () Bool)

(assert (= bs!1410844 (and d!1866618 d!1866526)))

(assert (=> bs!1410844 (not (= lambda!325142 lambda!325124))))

(assert (=> d!1866618 true))

(assert (=> d!1866618 true))

(declare-fun order!27253 () Int)

(declare-fun order!27255 () Int)

(declare-fun dynLambda!25115 (Int Int) Int)

(declare-fun dynLambda!25116 (Int Int) Int)

(assert (=> d!1866618 (< (dynLambda!25115 order!27253 lambda!325054) (dynLambda!25116 order!27255 lambda!325142))))

(assert (=> d!1866618 (forall!15086 (t!377703 (Cons!64168 lt!2313738 Nil!64168)) lambda!325142)))

(declare-fun lt!2313946 () Unit!157265)

(declare-fun choose!44883 (List!64292 Int Int Int) Unit!157265)

(assert (=> d!1866618 (= lt!2313946 (choose!44883 (t!377703 (Cons!64168 lt!2313738 Nil!64168)) lt!2313840 (zipperDepth!246 (t!377703 (Cons!64168 lt!2313738 Nil!64168))) lambda!325054))))

(assert (=> d!1866618 (>= lt!2313840 (zipperDepth!246 (t!377703 (Cons!64168 lt!2313738 Nil!64168))))))

(assert (=> d!1866618 (= (lemmaForallContextDepthBiggerThanTransitive!131 (t!377703 (Cons!64168 lt!2313738 Nil!64168)) lt!2313840 (zipperDepth!246 (t!377703 (Cons!64168 lt!2313738 Nil!64168))) lambda!325054) lt!2313946)))

(declare-fun bs!1410845 () Bool)

(assert (= bs!1410845 d!1866618))

(declare-fun m!6841628 () Bool)

(assert (=> bs!1410845 m!6841628))

(assert (=> bs!1410845 m!6840934))

(declare-fun m!6841630 () Bool)

(assert (=> bs!1410845 m!6841630))

(assert (=> b!5953406 d!1866618))

(declare-fun d!1866626 () Bool)

(assert (=> d!1866626 (= (nullable!5992 (h!70614 (exprs!5881 lt!2313743))) (nullableFct!1963 (h!70614 (exprs!5881 lt!2313743))))))

(declare-fun bs!1410846 () Bool)

(assert (= bs!1410846 d!1866626))

(declare-fun m!6841632 () Bool)

(assert (=> bs!1410846 m!6841632))

(assert (=> b!5953627 d!1866626))

(declare-fun bs!1410847 () Bool)

(declare-fun d!1866628 () Bool)

(assert (= bs!1410847 (and d!1866628 d!1866308)))

(declare-fun lambda!325143 () Int)

(assert (=> bs!1410847 (= lambda!325143 lambda!325043)))

(declare-fun bs!1410848 () Bool)

(assert (= bs!1410848 (and d!1866628 b!5954206)))

(assert (=> bs!1410848 (not (= lambda!325143 lambda!325136))))

(declare-fun bs!1410849 () Bool)

(assert (= bs!1410849 (and d!1866628 b!5953582)))

(assert (=> bs!1410849 (not (= lambda!325143 lambda!325081))))

(declare-fun bs!1410850 () Bool)

(assert (= bs!1410850 (and d!1866628 d!1866576)))

(assert (=> bs!1410850 (= lambda!325143 lambda!325131)))

(declare-fun bs!1410851 () Bool)

(assert (= bs!1410851 (and d!1866628 b!5954093)))

(assert (=> bs!1410851 (not (= lambda!325143 lambda!325119))))

(declare-fun bs!1410852 () Bool)

(assert (= bs!1410852 (and d!1866628 d!1866304)))

(assert (=> bs!1410852 (= lambda!325143 lambda!325035)))

(declare-fun bs!1410853 () Bool)

(assert (= bs!1410853 (and d!1866628 d!1866302)))

(assert (=> bs!1410853 (= lambda!325143 lambda!325029)))

(declare-fun bs!1410854 () Bool)

(assert (= bs!1410854 (and d!1866628 d!1866504)))

(assert (=> bs!1410854 (not (= lambda!325143 lambda!325122))))

(declare-fun bs!1410855 () Bool)

(assert (= bs!1410855 (and d!1866628 d!1866492)))

(assert (=> bs!1410855 (= lambda!325143 lambda!325117)))

(declare-fun bs!1410856 () Bool)

(assert (= bs!1410856 (and d!1866628 b!5953592)))

(assert (=> bs!1410856 (not (= lambda!325143 lambda!325083))))

(declare-fun bs!1410857 () Bool)

(assert (= bs!1410857 (and d!1866628 d!1866344)))

(assert (=> bs!1410857 (= lambda!325143 lambda!325073)))

(declare-fun bs!1410859 () Bool)

(assert (= bs!1410859 (and d!1866628 b!5953646)))

(assert (=> bs!1410859 (not (= lambda!325143 lambda!325086))))

(declare-fun bs!1410860 () Bool)

(assert (= bs!1410860 (and d!1866628 b!5953644)))

(assert (=> bs!1410860 (not (= lambda!325143 lambda!325085))))

(declare-fun bs!1410861 () Bool)

(assert (= bs!1410861 (and d!1866628 b!5953590)))

(assert (=> bs!1410861 (not (= lambda!325143 lambda!325082))))

(declare-fun bs!1410863 () Bool)

(assert (= bs!1410863 (and d!1866628 d!1866300)))

(assert (=> bs!1410863 (= lambda!325143 lambda!325028)))

(declare-fun bs!1410864 () Bool)

(assert (= bs!1410864 (and d!1866628 b!5954091)))

(assert (=> bs!1410864 (not (= lambda!325143 lambda!325118))))

(declare-fun bs!1410865 () Bool)

(assert (= bs!1410865 (and d!1866628 d!1866328)))

(assert (=> bs!1410865 (= lambda!325143 lambda!325068)))

(declare-fun bs!1410867 () Bool)

(assert (= bs!1410867 (and d!1866628 b!5954204)))

(assert (=> bs!1410867 (not (= lambda!325143 lambda!325135))))

(declare-fun bs!1410868 () Bool)

(assert (= bs!1410868 (and d!1866628 b!5953580)))

(assert (=> bs!1410868 (not (= lambda!325143 lambda!325080))))

(declare-fun b!5954244 () Bool)

(declare-fun e!3642345 () Regex!15997)

(assert (=> b!5954244 (= e!3642345 (Union!15997 (h!70614 (t!377701 (unfocusZipperList!1418 zl!343))) (generalisedUnion!1841 (t!377701 (t!377701 (unfocusZipperList!1418 zl!343))))))))

(declare-fun b!5954245 () Bool)

(declare-fun e!3642343 () Regex!15997)

(assert (=> b!5954245 (= e!3642343 e!3642345)))

(declare-fun c!1059765 () Bool)

(assert (=> b!5954245 (= c!1059765 ((_ is Cons!64166) (t!377701 (unfocusZipperList!1418 zl!343))))))

(declare-fun b!5954246 () Bool)

(declare-fun e!3642344 () Bool)

(declare-fun e!3642348 () Bool)

(assert (=> b!5954246 (= e!3642344 e!3642348)))

(declare-fun c!1059766 () Bool)

(assert (=> b!5954246 (= c!1059766 (isEmpty!36049 (t!377701 (unfocusZipperList!1418 zl!343))))))

(declare-fun b!5954248 () Bool)

(declare-fun e!3642346 () Bool)

(assert (=> b!5954248 (= e!3642346 (isEmpty!36049 (t!377701 (t!377701 (unfocusZipperList!1418 zl!343)))))))

(declare-fun b!5954249 () Bool)

(assert (=> b!5954249 (= e!3642343 (h!70614 (t!377701 (unfocusZipperList!1418 zl!343))))))

(declare-fun b!5954250 () Bool)

(declare-fun e!3642347 () Bool)

(declare-fun lt!2313947 () Regex!15997)

(assert (=> b!5954250 (= e!3642347 (= lt!2313947 (head!12535 (t!377701 (unfocusZipperList!1418 zl!343)))))))

(declare-fun b!5954251 () Bool)

(assert (=> b!5954251 (= e!3642345 EmptyLang!15997)))

(declare-fun b!5954252 () Bool)

(assert (=> b!5954252 (= e!3642347 (isUnion!864 lt!2313947))))

(declare-fun b!5954253 () Bool)

(assert (=> b!5954253 (= e!3642348 (isEmptyLang!1434 lt!2313947))))

(declare-fun b!5954247 () Bool)

(assert (=> b!5954247 (= e!3642348 e!3642347)))

(declare-fun c!1059767 () Bool)

(assert (=> b!5954247 (= c!1059767 (isEmpty!36049 (tail!11620 (t!377701 (unfocusZipperList!1418 zl!343)))))))

(assert (=> d!1866628 e!3642344))

(declare-fun res!2492316 () Bool)

(assert (=> d!1866628 (=> (not res!2492316) (not e!3642344))))

(assert (=> d!1866628 (= res!2492316 (validRegex!7733 lt!2313947))))

(assert (=> d!1866628 (= lt!2313947 e!3642343)))

(declare-fun c!1059768 () Bool)

(assert (=> d!1866628 (= c!1059768 e!3642346)))

(declare-fun res!2492315 () Bool)

(assert (=> d!1866628 (=> (not res!2492315) (not e!3642346))))

(assert (=> d!1866628 (= res!2492315 ((_ is Cons!64166) (t!377701 (unfocusZipperList!1418 zl!343))))))

(assert (=> d!1866628 (forall!15085 (t!377701 (unfocusZipperList!1418 zl!343)) lambda!325143)))

(assert (=> d!1866628 (= (generalisedUnion!1841 (t!377701 (unfocusZipperList!1418 zl!343))) lt!2313947)))

(assert (= (and d!1866628 res!2492315) b!5954248))

(assert (= (and d!1866628 c!1059768) b!5954249))

(assert (= (and d!1866628 (not c!1059768)) b!5954245))

(assert (= (and b!5954245 c!1059765) b!5954244))

(assert (= (and b!5954245 (not c!1059765)) b!5954251))

(assert (= (and d!1866628 res!2492316) b!5954246))

(assert (= (and b!5954246 c!1059766) b!5954253))

(assert (= (and b!5954246 (not c!1059766)) b!5954247))

(assert (= (and b!5954247 c!1059767) b!5954250))

(assert (= (and b!5954247 (not c!1059767)) b!5954252))

(declare-fun m!6841634 () Bool)

(assert (=> b!5954244 m!6841634))

(assert (=> b!5954246 m!6840886))

(declare-fun m!6841636 () Bool)

(assert (=> b!5954250 m!6841636))

(declare-fun m!6841638 () Bool)

(assert (=> b!5954248 m!6841638))

(declare-fun m!6841640 () Bool)

(assert (=> b!5954252 m!6841640))

(declare-fun m!6841642 () Bool)

(assert (=> b!5954247 m!6841642))

(assert (=> b!5954247 m!6841642))

(declare-fun m!6841644 () Bool)

(assert (=> b!5954247 m!6841644))

(declare-fun m!6841646 () Bool)

(assert (=> d!1866628 m!6841646))

(declare-fun m!6841648 () Bool)

(assert (=> d!1866628 m!6841648))

(declare-fun m!6841650 () Bool)

(assert (=> b!5954253 m!6841650))

(assert (=> b!5953346 d!1866628))

(declare-fun d!1866632 () Bool)

(declare-fun res!2492319 () Bool)

(declare-fun e!3642355 () Bool)

(assert (=> d!1866632 (=> res!2492319 e!3642355)))

(assert (=> d!1866632 (= res!2492319 ((_ is Nil!64168) (Cons!64168 lt!2313743 Nil!64168)))))

(assert (=> d!1866632 (= (forall!15086 (Cons!64168 lt!2313743 Nil!64168) lambda!325059) e!3642355)))

(declare-fun b!5954264 () Bool)

(declare-fun e!3642356 () Bool)

(assert (=> b!5954264 (= e!3642355 e!3642356)))

(declare-fun res!2492320 () Bool)

(assert (=> b!5954264 (=> (not res!2492320) (not e!3642356))))

(assert (=> b!5954264 (= res!2492320 (dynLambda!25114 lambda!325059 (h!70616 (Cons!64168 lt!2313743 Nil!64168))))))

(declare-fun b!5954265 () Bool)

(assert (=> b!5954265 (= e!3642356 (forall!15086 (t!377703 (Cons!64168 lt!2313743 Nil!64168)) lambda!325059))))

(assert (= (and d!1866632 (not res!2492319)) b!5954264))

(assert (= (and b!5954264 res!2492320) b!5954265))

(declare-fun b_lambda!223801 () Bool)

(assert (=> (not b_lambda!223801) (not b!5954264)))

(declare-fun m!6841652 () Bool)

(assert (=> b!5954264 m!6841652))

(declare-fun m!6841654 () Bool)

(assert (=> b!5954265 m!6841654))

(assert (=> b!5953413 d!1866632))

(declare-fun d!1866634 () Bool)

(assert (=> d!1866634 (= (isDefined!12591 lt!2313907) (not (isEmpty!36054 lt!2313907)))))

(declare-fun bs!1410878 () Bool)

(assert (= bs!1410878 d!1866634))

(declare-fun m!6841656 () Bool)

(assert (=> bs!1410878 m!6841656))

(assert (=> b!5953856 d!1866634))

(declare-fun b!5954291 () Bool)

(declare-fun e!3642375 () Bool)

(declare-fun call!474427 () Bool)

(assert (=> b!5954291 (= e!3642375 call!474427)))

(declare-fun b!5954292 () Bool)

(declare-fun e!3642377 () Bool)

(declare-fun e!3642380 () Bool)

(assert (=> b!5954292 (= e!3642377 e!3642380)))

(declare-fun res!2492336 () Bool)

(declare-fun call!474426 () Bool)

(assert (=> b!5954292 (= res!2492336 call!474426)))

(assert (=> b!5954292 (=> (not res!2492336) (not e!3642380))))

(declare-fun d!1866636 () Bool)

(declare-fun res!2492334 () Bool)

(declare-fun e!3642379 () Bool)

(assert (=> d!1866636 (=> res!2492334 e!3642379)))

(assert (=> d!1866636 (= res!2492334 ((_ is EmptyExpr!15997) (regOne!32506 r!7292)))))

(assert (=> d!1866636 (= (nullableFct!1963 (regOne!32506 r!7292)) e!3642379)))

(declare-fun b!5954293 () Bool)

(assert (=> b!5954293 (= e!3642380 call!474427)))

(declare-fun bm!474421 () Bool)

(declare-fun c!1059780 () Bool)

(assert (=> bm!474421 (= call!474427 (nullable!5992 (ite c!1059780 (regTwo!32507 (regOne!32506 r!7292)) (regTwo!32506 (regOne!32506 r!7292)))))))

(declare-fun b!5954294 () Bool)

(declare-fun e!3642378 () Bool)

(declare-fun e!3642376 () Bool)

(assert (=> b!5954294 (= e!3642378 e!3642376)))

(declare-fun res!2492332 () Bool)

(assert (=> b!5954294 (=> res!2492332 e!3642376)))

(assert (=> b!5954294 (= res!2492332 ((_ is Star!15997) (regOne!32506 r!7292)))))

(declare-fun b!5954295 () Bool)

(assert (=> b!5954295 (= e!3642377 e!3642375)))

(declare-fun res!2492335 () Bool)

(assert (=> b!5954295 (= res!2492335 call!474426)))

(assert (=> b!5954295 (=> res!2492335 e!3642375)))

(declare-fun b!5954296 () Bool)

(assert (=> b!5954296 (= e!3642379 e!3642378)))

(declare-fun res!2492333 () Bool)

(assert (=> b!5954296 (=> (not res!2492333) (not e!3642378))))

(assert (=> b!5954296 (= res!2492333 (and (not ((_ is EmptyLang!15997) (regOne!32506 r!7292))) (not ((_ is ElementMatch!15997) (regOne!32506 r!7292)))))))

(declare-fun b!5954297 () Bool)

(assert (=> b!5954297 (= e!3642376 e!3642377)))

(assert (=> b!5954297 (= c!1059780 ((_ is Union!15997) (regOne!32506 r!7292)))))

(declare-fun bm!474422 () Bool)

(assert (=> bm!474422 (= call!474426 (nullable!5992 (ite c!1059780 (regOne!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292)))))))

(assert (= (and d!1866636 (not res!2492334)) b!5954296))

(assert (= (and b!5954296 res!2492333) b!5954294))

(assert (= (and b!5954294 (not res!2492332)) b!5954297))

(assert (= (and b!5954297 c!1059780) b!5954295))

(assert (= (and b!5954297 (not c!1059780)) b!5954292))

(assert (= (and b!5954295 (not res!2492335)) b!5954291))

(assert (= (and b!5954292 res!2492336) b!5954293))

(assert (= (or b!5954291 b!5954293) bm!474421))

(assert (= (or b!5954295 b!5954292) bm!474422))

(declare-fun m!6841690 () Bool)

(assert (=> bm!474421 m!6841690))

(declare-fun m!6841692 () Bool)

(assert (=> bm!474422 m!6841692))

(assert (=> d!1866282 d!1866636))

(assert (=> b!5953601 d!1866282))

(assert (=> d!1866440 d!1866426))

(declare-fun bm!474423 () Bool)

(declare-fun call!474429 () Bool)

(declare-fun call!474428 () Bool)

(assert (=> bm!474423 (= call!474429 call!474428)))

(declare-fun bm!474424 () Bool)

(declare-fun call!474430 () Bool)

(declare-fun c!1059782 () Bool)

(assert (=> bm!474424 (= call!474430 (validRegex!7733 (ite c!1059782 (regTwo!32507 (regOne!32506 r!7292)) (regTwo!32506 (regOne!32506 r!7292)))))))

(declare-fun b!5954298 () Bool)

(declare-fun res!2492338 () Bool)

(declare-fun e!3642384 () Bool)

(assert (=> b!5954298 (=> res!2492338 e!3642384)))

(assert (=> b!5954298 (= res!2492338 (not ((_ is Concat!24842) (regOne!32506 r!7292))))))

(declare-fun e!3642386 () Bool)

(assert (=> b!5954298 (= e!3642386 e!3642384)))

(declare-fun c!1059781 () Bool)

(declare-fun bm!474425 () Bool)

(assert (=> bm!474425 (= call!474428 (validRegex!7733 (ite c!1059781 (reg!16326 (regOne!32506 r!7292)) (ite c!1059782 (regOne!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292))))))))

(declare-fun b!5954300 () Bool)

(declare-fun e!3642385 () Bool)

(declare-fun e!3642382 () Bool)

(assert (=> b!5954300 (= e!3642385 e!3642382)))

(declare-fun res!2492340 () Bool)

(assert (=> b!5954300 (= res!2492340 (not (nullable!5992 (reg!16326 (regOne!32506 r!7292)))))))

(assert (=> b!5954300 (=> (not res!2492340) (not e!3642382))))

(declare-fun b!5954301 () Bool)

(declare-fun e!3642383 () Bool)

(assert (=> b!5954301 (= e!3642383 call!474430)))

(declare-fun b!5954302 () Bool)

(assert (=> b!5954302 (= e!3642385 e!3642386)))

(assert (=> b!5954302 (= c!1059782 ((_ is Union!15997) (regOne!32506 r!7292)))))

(declare-fun b!5954303 () Bool)

(assert (=> b!5954303 (= e!3642382 call!474428)))

(declare-fun b!5954304 () Bool)

(declare-fun e!3642387 () Bool)

(assert (=> b!5954304 (= e!3642387 e!3642385)))

(assert (=> b!5954304 (= c!1059781 ((_ is Star!15997) (regOne!32506 r!7292)))))

(declare-fun b!5954305 () Bool)

(declare-fun e!3642381 () Bool)

(assert (=> b!5954305 (= e!3642384 e!3642381)))

(declare-fun res!2492339 () Bool)

(assert (=> b!5954305 (=> (not res!2492339) (not e!3642381))))

(assert (=> b!5954305 (= res!2492339 call!474429)))

(declare-fun b!5954306 () Bool)

(declare-fun res!2492337 () Bool)

(assert (=> b!5954306 (=> (not res!2492337) (not e!3642383))))

(assert (=> b!5954306 (= res!2492337 call!474429)))

(assert (=> b!5954306 (= e!3642386 e!3642383)))

(declare-fun b!5954299 () Bool)

(assert (=> b!5954299 (= e!3642381 call!474430)))

(declare-fun d!1866648 () Bool)

(declare-fun res!2492341 () Bool)

(assert (=> d!1866648 (=> res!2492341 e!3642387)))

(assert (=> d!1866648 (= res!2492341 ((_ is ElementMatch!15997) (regOne!32506 r!7292)))))

(assert (=> d!1866648 (= (validRegex!7733 (regOne!32506 r!7292)) e!3642387)))

(assert (= (and d!1866648 (not res!2492341)) b!5954304))

(assert (= (and b!5954304 c!1059781) b!5954300))

(assert (= (and b!5954304 (not c!1059781)) b!5954302))

(assert (= (and b!5954300 res!2492340) b!5954303))

(assert (= (and b!5954302 c!1059782) b!5954306))

(assert (= (and b!5954302 (not c!1059782)) b!5954298))

(assert (= (and b!5954306 res!2492337) b!5954301))

(assert (= (and b!5954298 (not res!2492338)) b!5954305))

(assert (= (and b!5954305 res!2492339) b!5954299))

(assert (= (or b!5954301 b!5954299) bm!474424))

(assert (= (or b!5954306 b!5954305) bm!474423))

(assert (= (or b!5954303 bm!474423) bm!474425))

(declare-fun m!6841694 () Bool)

(assert (=> bm!474424 m!6841694))

(declare-fun m!6841696 () Bool)

(assert (=> bm!474425 m!6841696))

(declare-fun m!6841698 () Bool)

(assert (=> b!5954300 m!6841698))

(assert (=> d!1866440 d!1866648))

(assert (=> d!1866440 d!1866446))

(declare-fun d!1866652 () Bool)

(assert (=> d!1866652 (= (Exists!3067 lambda!325099) (choose!44877 lambda!325099))))

(declare-fun bs!1410886 () Bool)

(assert (= bs!1410886 d!1866652))

(declare-fun m!6841700 () Bool)

(assert (=> bs!1410886 m!6841700))

(assert (=> d!1866440 d!1866652))

(declare-fun bs!1410901 () Bool)

(declare-fun d!1866654 () Bool)

(assert (= bs!1410901 (and d!1866654 b!5953915)))

(declare-fun lambda!325149 () Int)

(assert (=> bs!1410901 (not (= lambda!325149 lambda!325111))))

(declare-fun bs!1410902 () Bool)

(assert (= bs!1410902 (and d!1866654 b!5953157)))

(assert (=> bs!1410902 (not (= lambda!325149 lambda!324999))))

(assert (=> bs!1410902 (= lambda!325149 lambda!324998)))

(declare-fun bs!1410903 () Bool)

(assert (= bs!1410903 (and d!1866654 d!1866440)))

(assert (=> bs!1410903 (= lambda!325149 lambda!325099)))

(declare-fun bs!1410904 () Bool)

(assert (= bs!1410904 (and d!1866654 b!5953909)))

(assert (=> bs!1410904 (not (= lambda!325149 lambda!325112))))

(declare-fun bs!1410905 () Bool)

(assert (= bs!1410905 (and d!1866654 d!1866442)))

(assert (=> bs!1410905 (= lambda!325149 lambda!325104)))

(assert (=> bs!1410905 (not (= lambda!325149 lambda!325105))))

(assert (=> d!1866654 true))

(assert (=> d!1866654 true))

(assert (=> d!1866654 true))

(assert (=> d!1866654 (= (isDefined!12591 (findConcatSeparation!2302 (regOne!32506 r!7292) (regTwo!32506 r!7292) Nil!64167 s!2326 s!2326)) (Exists!3067 lambda!325149))))

(assert (=> d!1866654 true))

(declare-fun _$89!2023 () Unit!157265)

(assert (=> d!1866654 (= (choose!44878 (regOne!32506 r!7292) (regTwo!32506 r!7292) s!2326) _$89!2023)))

(declare-fun bs!1410906 () Bool)

(assert (= bs!1410906 d!1866654))

(assert (=> bs!1410906 m!6840610))

(assert (=> bs!1410906 m!6840610))

(assert (=> bs!1410906 m!6840612))

(declare-fun m!6841710 () Bool)

(assert (=> bs!1410906 m!6841710))

(assert (=> d!1866440 d!1866654))

(declare-fun bs!1410907 () Bool)

(declare-fun b!5954336 () Bool)

(assert (= bs!1410907 (and b!5954336 b!5953915)))

(declare-fun lambda!325150 () Int)

(assert (=> bs!1410907 (= (and (= (reg!16326 (regTwo!32507 r!7292)) (reg!16326 r!7292)) (= (regTwo!32507 r!7292) r!7292)) (= lambda!325150 lambda!325111))))

(declare-fun bs!1410908 () Bool)

(assert (= bs!1410908 (and b!5954336 b!5953157)))

(assert (=> bs!1410908 (not (= lambda!325150 lambda!324998))))

(declare-fun bs!1410909 () Bool)

(assert (= bs!1410909 (and b!5954336 d!1866440)))

(assert (=> bs!1410909 (not (= lambda!325150 lambda!325099))))

(declare-fun bs!1410910 () Bool)

(assert (= bs!1410910 (and b!5954336 b!5953909)))

(assert (=> bs!1410910 (not (= lambda!325150 lambda!325112))))

(declare-fun bs!1410911 () Bool)

(assert (= bs!1410911 (and b!5954336 d!1866442)))

(assert (=> bs!1410911 (not (= lambda!325150 lambda!325104))))

(assert (=> bs!1410911 (not (= lambda!325150 lambda!325105))))

(assert (=> bs!1410908 (not (= lambda!325150 lambda!324999))))

(declare-fun bs!1410912 () Bool)

(assert (= bs!1410912 (and b!5954336 d!1866654)))

(assert (=> bs!1410912 (not (= lambda!325150 lambda!325149))))

(assert (=> b!5954336 true))

(assert (=> b!5954336 true))

(declare-fun bs!1410913 () Bool)

(declare-fun b!5954330 () Bool)

(assert (= bs!1410913 (and b!5954330 b!5953915)))

(declare-fun lambda!325151 () Int)

(assert (=> bs!1410913 (not (= lambda!325151 lambda!325111))))

(declare-fun bs!1410914 () Bool)

(assert (= bs!1410914 (and b!5954330 b!5954336)))

(assert (=> bs!1410914 (not (= lambda!325151 lambda!325150))))

(declare-fun bs!1410915 () Bool)

(assert (= bs!1410915 (and b!5954330 b!5953157)))

(assert (=> bs!1410915 (not (= lambda!325151 lambda!324998))))

(declare-fun bs!1410916 () Bool)

(assert (= bs!1410916 (and b!5954330 d!1866440)))

(assert (=> bs!1410916 (not (= lambda!325151 lambda!325099))))

(declare-fun bs!1410917 () Bool)

(assert (= bs!1410917 (and b!5954330 b!5953909)))

(assert (=> bs!1410917 (= (and (= (regOne!32506 (regTwo!32507 r!7292)) (regOne!32506 r!7292)) (= (regTwo!32506 (regTwo!32507 r!7292)) (regTwo!32506 r!7292))) (= lambda!325151 lambda!325112))))

(declare-fun bs!1410918 () Bool)

(assert (= bs!1410918 (and b!5954330 d!1866442)))

(assert (=> bs!1410918 (not (= lambda!325151 lambda!325104))))

(assert (=> bs!1410918 (= (and (= (regOne!32506 (regTwo!32507 r!7292)) (regOne!32506 r!7292)) (= (regTwo!32506 (regTwo!32507 r!7292)) (regTwo!32506 r!7292))) (= lambda!325151 lambda!325105))))

(assert (=> bs!1410915 (= (and (= (regOne!32506 (regTwo!32507 r!7292)) (regOne!32506 r!7292)) (= (regTwo!32506 (regTwo!32507 r!7292)) (regTwo!32506 r!7292))) (= lambda!325151 lambda!324999))))

(declare-fun bs!1410919 () Bool)

(assert (= bs!1410919 (and b!5954330 d!1866654)))

(assert (=> bs!1410919 (not (= lambda!325151 lambda!325149))))

(assert (=> b!5954330 true))

(assert (=> b!5954330 true))

(declare-fun bm!474430 () Bool)

(declare-fun call!474435 () Bool)

(assert (=> bm!474430 (= call!474435 (isEmpty!36053 s!2326))))

(declare-fun bm!474431 () Bool)

(declare-fun call!474436 () Bool)

(declare-fun c!1059788 () Bool)

(assert (=> bm!474431 (= call!474436 (Exists!3067 (ite c!1059788 lambda!325150 lambda!325151)))))

(declare-fun d!1866662 () Bool)

(declare-fun c!1059787 () Bool)

(assert (=> d!1866662 (= c!1059787 ((_ is EmptyExpr!15997) (regTwo!32507 r!7292)))))

(declare-fun e!3642411 () Bool)

(assert (=> d!1866662 (= (matchRSpec!3098 (regTwo!32507 r!7292) s!2326) e!3642411)))

(declare-fun b!5954328 () Bool)

(declare-fun c!1059786 () Bool)

(assert (=> b!5954328 (= c!1059786 ((_ is Union!15997) (regTwo!32507 r!7292)))))

(declare-fun e!3642409 () Bool)

(declare-fun e!3642410 () Bool)

(assert (=> b!5954328 (= e!3642409 e!3642410)))

(declare-fun b!5954329 () Bool)

(declare-fun res!2492361 () Bool)

(declare-fun e!3642408 () Bool)

(assert (=> b!5954329 (=> res!2492361 e!3642408)))

(assert (=> b!5954329 (= res!2492361 call!474435)))

(declare-fun e!3642407 () Bool)

(assert (=> b!5954329 (= e!3642407 e!3642408)))

(assert (=> b!5954330 (= e!3642407 call!474436)))

(declare-fun b!5954331 () Bool)

(declare-fun e!3642406 () Bool)

(assert (=> b!5954331 (= e!3642406 (matchRSpec!3098 (regTwo!32507 (regTwo!32507 r!7292)) s!2326))))

(declare-fun b!5954332 () Bool)

(declare-fun e!3642405 () Bool)

(assert (=> b!5954332 (= e!3642411 e!3642405)))

(declare-fun res!2492359 () Bool)

(assert (=> b!5954332 (= res!2492359 (not ((_ is EmptyLang!15997) (regTwo!32507 r!7292))))))

(assert (=> b!5954332 (=> (not res!2492359) (not e!3642405))))

(declare-fun b!5954333 () Bool)

(assert (=> b!5954333 (= e!3642410 e!3642406)))

(declare-fun res!2492360 () Bool)

(assert (=> b!5954333 (= res!2492360 (matchRSpec!3098 (regOne!32507 (regTwo!32507 r!7292)) s!2326))))

(assert (=> b!5954333 (=> res!2492360 e!3642406)))

(declare-fun b!5954334 () Bool)

(assert (=> b!5954334 (= e!3642410 e!3642407)))

(assert (=> b!5954334 (= c!1059788 ((_ is Star!15997) (regTwo!32507 r!7292)))))

(declare-fun b!5954335 () Bool)

(assert (=> b!5954335 (= e!3642409 (= s!2326 (Cons!64167 (c!1059438 (regTwo!32507 r!7292)) Nil!64167)))))

(assert (=> b!5954336 (= e!3642408 call!474436)))

(declare-fun b!5954337 () Bool)

(assert (=> b!5954337 (= e!3642411 call!474435)))

(declare-fun b!5954338 () Bool)

(declare-fun c!1059785 () Bool)

(assert (=> b!5954338 (= c!1059785 ((_ is ElementMatch!15997) (regTwo!32507 r!7292)))))

(assert (=> b!5954338 (= e!3642405 e!3642409)))

(assert (= (and d!1866662 c!1059787) b!5954337))

(assert (= (and d!1866662 (not c!1059787)) b!5954332))

(assert (= (and b!5954332 res!2492359) b!5954338))

(assert (= (and b!5954338 c!1059785) b!5954335))

(assert (= (and b!5954338 (not c!1059785)) b!5954328))

(assert (= (and b!5954328 c!1059786) b!5954333))

(assert (= (and b!5954328 (not c!1059786)) b!5954334))

(assert (= (and b!5954333 (not res!2492360)) b!5954331))

(assert (= (and b!5954334 c!1059788) b!5954329))

(assert (= (and b!5954334 (not c!1059788)) b!5954330))

(assert (= (and b!5954329 (not res!2492361)) b!5954336))

(assert (= (or b!5954336 b!5954330) bm!474431))

(assert (= (or b!5954337 b!5954329) bm!474430))

(assert (=> bm!474430 m!6840960))

(declare-fun m!6841712 () Bool)

(assert (=> bm!474431 m!6841712))

(declare-fun m!6841714 () Bool)

(assert (=> b!5954331 m!6841714))

(declare-fun m!6841716 () Bool)

(assert (=> b!5954333 m!6841716))

(assert (=> b!5953910 d!1866662))

(declare-fun d!1866664 () Bool)

(assert (=> d!1866664 (= (head!12535 (exprs!5881 (h!70616 zl!343))) (h!70614 (exprs!5881 (h!70616 zl!343))))))

(assert (=> b!5953486 d!1866664))

(assert (=> b!5953954 d!1866558))

(declare-fun b!5954346 () Bool)

(declare-fun e!3642419 () Bool)

(declare-fun e!3642424 () Bool)

(assert (=> b!5954346 (= e!3642419 e!3642424)))

(declare-fun res!2492374 () Bool)

(assert (=> b!5954346 (=> res!2492374 e!3642424)))

(declare-fun call!474439 () Bool)

(assert (=> b!5954346 (= res!2492374 call!474439)))

(declare-fun d!1866666 () Bool)

(declare-fun e!3642420 () Bool)

(assert (=> d!1866666 e!3642420))

(declare-fun c!1059792 () Bool)

(assert (=> d!1866666 (= c!1059792 ((_ is EmptyExpr!15997) (regTwo!32506 r!7292)))))

(declare-fun lt!2313949 () Bool)

(declare-fun e!3642423 () Bool)

(assert (=> d!1866666 (= lt!2313949 e!3642423)))

(declare-fun c!1059790 () Bool)

(assert (=> d!1866666 (= c!1059790 (isEmpty!36053 (_2!36279 (get!22108 lt!2313907))))))

(assert (=> d!1866666 (validRegex!7733 (regTwo!32506 r!7292))))

(assert (=> d!1866666 (= (matchR!8180 (regTwo!32506 r!7292) (_2!36279 (get!22108 lt!2313907))) lt!2313949)))

(declare-fun bm!474434 () Bool)

(assert (=> bm!474434 (= call!474439 (isEmpty!36053 (_2!36279 (get!22108 lt!2313907))))))

(declare-fun b!5954347 () Bool)

(declare-fun res!2492372 () Bool)

(declare-fun e!3642421 () Bool)

(assert (=> b!5954347 (=> (not res!2492372) (not e!3642421))))

(assert (=> b!5954347 (= res!2492372 (not call!474439))))

(declare-fun b!5954348 () Bool)

(declare-fun res!2492368 () Bool)

(declare-fun e!3642422 () Bool)

(assert (=> b!5954348 (=> res!2492368 e!3642422)))

(assert (=> b!5954348 (= res!2492368 (not ((_ is ElementMatch!15997) (regTwo!32506 r!7292))))))

(declare-fun e!3642418 () Bool)

(assert (=> b!5954348 (= e!3642418 e!3642422)))

(declare-fun b!5954349 () Bool)

(assert (=> b!5954349 (= e!3642420 (= lt!2313949 call!474439))))

(declare-fun b!5954350 () Bool)

(assert (=> b!5954350 (= e!3642418 (not lt!2313949))))

(declare-fun b!5954351 () Bool)

(declare-fun res!2492371 () Bool)

(assert (=> b!5954351 (=> (not res!2492371) (not e!3642421))))

(assert (=> b!5954351 (= res!2492371 (isEmpty!36053 (tail!11621 (_2!36279 (get!22108 lt!2313907)))))))

(declare-fun b!5954352 () Bool)

(assert (=> b!5954352 (= e!3642423 (nullable!5992 (regTwo!32506 r!7292)))))

(declare-fun b!5954353 () Bool)

(assert (=> b!5954353 (= e!3642420 e!3642418)))

(declare-fun c!1059791 () Bool)

(assert (=> b!5954353 (= c!1059791 ((_ is EmptyLang!15997) (regTwo!32506 r!7292)))))

(declare-fun b!5954354 () Bool)

(assert (=> b!5954354 (= e!3642421 (= (head!12536 (_2!36279 (get!22108 lt!2313907))) (c!1059438 (regTwo!32506 r!7292))))))

(declare-fun b!5954355 () Bool)

(assert (=> b!5954355 (= e!3642424 (not (= (head!12536 (_2!36279 (get!22108 lt!2313907))) (c!1059438 (regTwo!32506 r!7292)))))))

(declare-fun b!5954356 () Bool)

(assert (=> b!5954356 (= e!3642423 (matchR!8180 (derivativeStep!4728 (regTwo!32506 r!7292) (head!12536 (_2!36279 (get!22108 lt!2313907)))) (tail!11621 (_2!36279 (get!22108 lt!2313907)))))))

(declare-fun b!5954357 () Bool)

(assert (=> b!5954357 (= e!3642422 e!3642419)))

(declare-fun res!2492369 () Bool)

(assert (=> b!5954357 (=> (not res!2492369) (not e!3642419))))

(assert (=> b!5954357 (= res!2492369 (not lt!2313949))))

(declare-fun b!5954358 () Bool)

(declare-fun res!2492373 () Bool)

(assert (=> b!5954358 (=> res!2492373 e!3642424)))

(assert (=> b!5954358 (= res!2492373 (not (isEmpty!36053 (tail!11621 (_2!36279 (get!22108 lt!2313907))))))))

(declare-fun b!5954359 () Bool)

(declare-fun res!2492370 () Bool)

(assert (=> b!5954359 (=> res!2492370 e!3642422)))

(assert (=> b!5954359 (= res!2492370 e!3642421)))

(declare-fun res!2492367 () Bool)

(assert (=> b!5954359 (=> (not res!2492367) (not e!3642421))))

(assert (=> b!5954359 (= res!2492367 lt!2313949)))

(assert (= (and d!1866666 c!1059790) b!5954352))

(assert (= (and d!1866666 (not c!1059790)) b!5954356))

(assert (= (and d!1866666 c!1059792) b!5954349))

(assert (= (and d!1866666 (not c!1059792)) b!5954353))

(assert (= (and b!5954353 c!1059791) b!5954350))

(assert (= (and b!5954353 (not c!1059791)) b!5954348))

(assert (= (and b!5954348 (not res!2492368)) b!5954359))

(assert (= (and b!5954359 res!2492367) b!5954347))

(assert (= (and b!5954347 res!2492372) b!5954351))

(assert (= (and b!5954351 res!2492371) b!5954354))

(assert (= (and b!5954359 (not res!2492370)) b!5954357))

(assert (= (and b!5954357 res!2492369) b!5954346))

(assert (= (and b!5954346 (not res!2492374)) b!5954358))

(assert (= (and b!5954358 (not res!2492373)) b!5954355))

(assert (= (or b!5954349 b!5954346 b!5954347) bm!474434))

(declare-fun m!6841722 () Bool)

(assert (=> b!5954356 m!6841722))

(assert (=> b!5954356 m!6841722))

(declare-fun m!6841724 () Bool)

(assert (=> b!5954356 m!6841724))

(declare-fun m!6841726 () Bool)

(assert (=> b!5954356 m!6841726))

(assert (=> b!5954356 m!6841724))

(assert (=> b!5954356 m!6841726))

(declare-fun m!6841728 () Bool)

(assert (=> b!5954356 m!6841728))

(declare-fun m!6841730 () Bool)

(assert (=> bm!474434 m!6841730))

(assert (=> b!5954351 m!6841726))

(assert (=> b!5954351 m!6841726))

(declare-fun m!6841732 () Bool)

(assert (=> b!5954351 m!6841732))

(assert (=> d!1866666 m!6841730))

(declare-fun m!6841734 () Bool)

(assert (=> d!1866666 m!6841734))

(assert (=> b!5954354 m!6841722))

(assert (=> b!5954358 m!6841726))

(assert (=> b!5954358 m!6841726))

(assert (=> b!5954358 m!6841732))

(declare-fun m!6841736 () Bool)

(assert (=> b!5954352 m!6841736))

(assert (=> b!5954355 m!6841722))

(assert (=> b!5953848 d!1866666))

(assert (=> b!5953848 d!1866530))

(declare-fun bs!1410920 () Bool)

(declare-fun d!1866676 () Bool)

(assert (= bs!1410920 (and d!1866676 d!1866308)))

(declare-fun lambda!325152 () Int)

(assert (=> bs!1410920 (= lambda!325152 lambda!325043)))

(declare-fun bs!1410921 () Bool)

(assert (= bs!1410921 (and d!1866676 b!5954206)))

(assert (=> bs!1410921 (not (= lambda!325152 lambda!325136))))

(declare-fun bs!1410922 () Bool)

(assert (= bs!1410922 (and d!1866676 d!1866576)))

(assert (=> bs!1410922 (= lambda!325152 lambda!325131)))

(declare-fun bs!1410923 () Bool)

(assert (= bs!1410923 (and d!1866676 b!5954093)))

(assert (=> bs!1410923 (not (= lambda!325152 lambda!325119))))

(declare-fun bs!1410924 () Bool)

(assert (= bs!1410924 (and d!1866676 d!1866304)))

(assert (=> bs!1410924 (= lambda!325152 lambda!325035)))

(declare-fun bs!1410925 () Bool)

(assert (= bs!1410925 (and d!1866676 d!1866302)))

(assert (=> bs!1410925 (= lambda!325152 lambda!325029)))

(declare-fun bs!1410926 () Bool)

(assert (= bs!1410926 (and d!1866676 d!1866504)))

(assert (=> bs!1410926 (not (= lambda!325152 lambda!325122))))

(declare-fun bs!1410927 () Bool)

(assert (= bs!1410927 (and d!1866676 d!1866492)))

(assert (=> bs!1410927 (= lambda!325152 lambda!325117)))

(declare-fun bs!1410928 () Bool)

(assert (= bs!1410928 (and d!1866676 b!5953592)))

(assert (=> bs!1410928 (not (= lambda!325152 lambda!325083))))

(declare-fun bs!1410929 () Bool)

(assert (= bs!1410929 (and d!1866676 d!1866344)))

(assert (=> bs!1410929 (= lambda!325152 lambda!325073)))

(declare-fun bs!1410930 () Bool)

(assert (= bs!1410930 (and d!1866676 b!5953646)))

(assert (=> bs!1410930 (not (= lambda!325152 lambda!325086))))

(declare-fun bs!1410931 () Bool)

(assert (= bs!1410931 (and d!1866676 b!5953644)))

(assert (=> bs!1410931 (not (= lambda!325152 lambda!325085))))

(declare-fun bs!1410932 () Bool)

(assert (= bs!1410932 (and d!1866676 b!5953590)))

(assert (=> bs!1410932 (not (= lambda!325152 lambda!325082))))

(declare-fun bs!1410933 () Bool)

(assert (= bs!1410933 (and d!1866676 b!5953582)))

(assert (=> bs!1410933 (not (= lambda!325152 lambda!325081))))

(declare-fun bs!1410934 () Bool)

(assert (= bs!1410934 (and d!1866676 d!1866628)))

(assert (=> bs!1410934 (= lambda!325152 lambda!325143)))

(declare-fun bs!1410935 () Bool)

(assert (= bs!1410935 (and d!1866676 d!1866300)))

(assert (=> bs!1410935 (= lambda!325152 lambda!325028)))

(declare-fun bs!1410936 () Bool)

(assert (= bs!1410936 (and d!1866676 b!5954091)))

(assert (=> bs!1410936 (not (= lambda!325152 lambda!325118))))

(declare-fun bs!1410937 () Bool)

(assert (= bs!1410937 (and d!1866676 d!1866328)))

(assert (=> bs!1410937 (= lambda!325152 lambda!325068)))

(declare-fun bs!1410938 () Bool)

(assert (= bs!1410938 (and d!1866676 b!5954204)))

(assert (=> bs!1410938 (not (= lambda!325152 lambda!325135))))

(declare-fun bs!1410939 () Bool)

(assert (= bs!1410939 (and d!1866676 b!5953580)))

(assert (=> bs!1410939 (not (= lambda!325152 lambda!325080))))

(declare-fun b!5954360 () Bool)

(declare-fun e!3642428 () Bool)

(declare-fun lt!2313950 () Regex!15997)

(assert (=> b!5954360 (= e!3642428 (isEmptyExpr!1424 lt!2313950))))

(declare-fun b!5954361 () Bool)

(declare-fun e!3642425 () Bool)

(assert (=> b!5954361 (= e!3642425 e!3642428)))

(declare-fun c!1059796 () Bool)

(assert (=> b!5954361 (= c!1059796 (isEmpty!36049 (t!377701 (exprs!5881 (h!70616 zl!343)))))))

(declare-fun b!5954362 () Bool)

(declare-fun e!3642429 () Regex!15997)

(declare-fun e!3642426 () Regex!15997)

(assert (=> b!5954362 (= e!3642429 e!3642426)))

(declare-fun c!1059794 () Bool)

(assert (=> b!5954362 (= c!1059794 ((_ is Cons!64166) (t!377701 (exprs!5881 (h!70616 zl!343)))))))

(declare-fun b!5954363 () Bool)

(declare-fun e!3642427 () Bool)

(assert (=> b!5954363 (= e!3642427 (= lt!2313950 (head!12535 (t!377701 (exprs!5881 (h!70616 zl!343))))))))

(declare-fun b!5954364 () Bool)

(assert (=> b!5954364 (= e!3642428 e!3642427)))

(declare-fun c!1059795 () Bool)

(assert (=> b!5954364 (= c!1059795 (isEmpty!36049 (tail!11620 (t!377701 (exprs!5881 (h!70616 zl!343))))))))

(declare-fun b!5954365 () Bool)

(assert (=> b!5954365 (= e!3642429 (h!70614 (t!377701 (exprs!5881 (h!70616 zl!343)))))))

(assert (=> d!1866676 e!3642425))

(declare-fun res!2492376 () Bool)

(assert (=> d!1866676 (=> (not res!2492376) (not e!3642425))))

(assert (=> d!1866676 (= res!2492376 (validRegex!7733 lt!2313950))))

(assert (=> d!1866676 (= lt!2313950 e!3642429)))

(declare-fun c!1059793 () Bool)

(declare-fun e!3642430 () Bool)

(assert (=> d!1866676 (= c!1059793 e!3642430)))

(declare-fun res!2492375 () Bool)

(assert (=> d!1866676 (=> (not res!2492375) (not e!3642430))))

(assert (=> d!1866676 (= res!2492375 ((_ is Cons!64166) (t!377701 (exprs!5881 (h!70616 zl!343)))))))

(assert (=> d!1866676 (forall!15085 (t!377701 (exprs!5881 (h!70616 zl!343))) lambda!325152)))

(assert (=> d!1866676 (= (generalisedConcat!1594 (t!377701 (exprs!5881 (h!70616 zl!343)))) lt!2313950)))

(declare-fun b!5954366 () Bool)

(assert (=> b!5954366 (= e!3642426 EmptyExpr!15997)))

(declare-fun b!5954367 () Bool)

(assert (=> b!5954367 (= e!3642426 (Concat!24842 (h!70614 (t!377701 (exprs!5881 (h!70616 zl!343)))) (generalisedConcat!1594 (t!377701 (t!377701 (exprs!5881 (h!70616 zl!343)))))))))

(declare-fun b!5954368 () Bool)

(assert (=> b!5954368 (= e!3642430 (isEmpty!36049 (t!377701 (t!377701 (exprs!5881 (h!70616 zl!343))))))))

(declare-fun b!5954369 () Bool)

(assert (=> b!5954369 (= e!3642427 (isConcat!947 lt!2313950))))

(assert (= (and d!1866676 res!2492375) b!5954368))

(assert (= (and d!1866676 c!1059793) b!5954365))

(assert (= (and d!1866676 (not c!1059793)) b!5954362))

(assert (= (and b!5954362 c!1059794) b!5954367))

(assert (= (and b!5954362 (not c!1059794)) b!5954366))

(assert (= (and d!1866676 res!2492376) b!5954361))

(assert (= (and b!5954361 c!1059796) b!5954360))

(assert (= (and b!5954361 (not c!1059796)) b!5954364))

(assert (= (and b!5954364 c!1059795) b!5954363))

(assert (= (and b!5954364 (not c!1059795)) b!5954369))

(declare-fun m!6841738 () Bool)

(assert (=> b!5954364 m!6841738))

(assert (=> b!5954364 m!6841738))

(declare-fun m!6841740 () Bool)

(assert (=> b!5954364 m!6841740))

(declare-fun m!6841742 () Bool)

(assert (=> b!5954369 m!6841742))

(declare-fun m!6841744 () Bool)

(assert (=> b!5954368 m!6841744))

(assert (=> b!5954361 m!6840656))

(declare-fun m!6841746 () Bool)

(assert (=> b!5954367 m!6841746))

(declare-fun m!6841748 () Bool)

(assert (=> d!1866676 m!6841748))

(declare-fun m!6841750 () Bool)

(assert (=> d!1866676 m!6841750))

(declare-fun m!6841752 () Bool)

(assert (=> b!5954360 m!6841752))

(declare-fun m!6841754 () Bool)

(assert (=> b!5954363 m!6841754))

(assert (=> b!5953490 d!1866676))

(assert (=> d!1866416 d!1866588))

(declare-fun d!1866678 () Bool)

(declare-fun res!2492383 () Bool)

(declare-fun e!3642437 () Bool)

(assert (=> d!1866678 (=> res!2492383 e!3642437)))

(assert (=> d!1866678 (= res!2492383 ((_ is Nil!64166) (exprs!5881 (h!70616 zl!343))))))

(assert (=> d!1866678 (= (forall!15085 (exprs!5881 (h!70616 zl!343)) lambda!325028) e!3642437)))

(declare-fun b!5954376 () Bool)

(declare-fun e!3642438 () Bool)

(assert (=> b!5954376 (= e!3642437 e!3642438)))

(declare-fun res!2492384 () Bool)

(assert (=> b!5954376 (=> (not res!2492384) (not e!3642438))))

(assert (=> b!5954376 (= res!2492384 (dynLambda!25109 lambda!325028 (h!70614 (exprs!5881 (h!70616 zl!343)))))))

(declare-fun b!5954377 () Bool)

(assert (=> b!5954377 (= e!3642438 (forall!15085 (t!377701 (exprs!5881 (h!70616 zl!343))) lambda!325028))))

(assert (= (and d!1866678 (not res!2492383)) b!5954376))

(assert (= (and b!5954376 res!2492384) b!5954377))

(declare-fun b_lambda!223805 () Bool)

(assert (=> (not b_lambda!223805) (not b!5954376)))

(declare-fun m!6841756 () Bool)

(assert (=> b!5954376 m!6841756))

(declare-fun m!6841758 () Bool)

(assert (=> b!5954377 m!6841758))

(assert (=> d!1866300 d!1866678))

(assert (=> bs!1410623 d!1866298))

(assert (=> d!1866458 d!1866544))

(assert (=> d!1866458 d!1866334))

(declare-fun d!1866680 () Bool)

(declare-fun c!1059797 () Bool)

(assert (=> d!1866680 (= c!1059797 (isEmpty!36053 (tail!11621 (t!377702 s!2326))))))

(declare-fun e!3642439 () Bool)

(assert (=> d!1866680 (= (matchZipper!2033 (derivationStepZipper!1978 lt!2313734 (head!12536 (t!377702 s!2326))) (tail!11621 (t!377702 s!2326))) e!3642439)))

(declare-fun b!5954378 () Bool)

(assert (=> b!5954378 (= e!3642439 (nullableZipper!1804 (derivationStepZipper!1978 lt!2313734 (head!12536 (t!377702 s!2326)))))))

(declare-fun b!5954379 () Bool)

(assert (=> b!5954379 (= e!3642439 (matchZipper!2033 (derivationStepZipper!1978 (derivationStepZipper!1978 lt!2313734 (head!12536 (t!377702 s!2326))) (head!12536 (tail!11621 (t!377702 s!2326)))) (tail!11621 (tail!11621 (t!377702 s!2326)))))))

(assert (= (and d!1866680 c!1059797) b!5954378))

(assert (= (and d!1866680 (not c!1059797)) b!5954379))

(assert (=> d!1866680 m!6840980))

(assert (=> d!1866680 m!6841508))

(assert (=> b!5954378 m!6841208))

(declare-fun m!6841764 () Bool)

(assert (=> b!5954378 m!6841764))

(assert (=> b!5954379 m!6840980))

(assert (=> b!5954379 m!6841512))

(assert (=> b!5954379 m!6841208))

(assert (=> b!5954379 m!6841512))

(declare-fun m!6841766 () Bool)

(assert (=> b!5954379 m!6841766))

(assert (=> b!5954379 m!6840980))

(assert (=> b!5954379 m!6841516))

(assert (=> b!5954379 m!6841766))

(assert (=> b!5954379 m!6841516))

(declare-fun m!6841768 () Bool)

(assert (=> b!5954379 m!6841768))

(assert (=> b!5953673 d!1866680))

(declare-fun bs!1410940 () Bool)

(declare-fun d!1866684 () Bool)

(assert (= bs!1410940 (and d!1866684 d!1866596)))

(declare-fun lambda!325153 () Int)

(assert (=> bs!1410940 (= lambda!325153 lambda!325133)))

(declare-fun bs!1410941 () Bool)

(assert (= bs!1410941 (and d!1866684 d!1866556)))

(assert (=> bs!1410941 (= (= (head!12536 (t!377702 s!2326)) (head!12536 s!2326)) (= lambda!325153 lambda!325129))))

(declare-fun bs!1410942 () Bool)

(assert (= bs!1410942 (and d!1866684 d!1866386)))

(assert (=> bs!1410942 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325153 lambda!325084))))

(declare-fun bs!1410943 () Bool)

(assert (= bs!1410943 (and d!1866684 d!1866326)))

(assert (=> bs!1410943 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325153 lambda!325065))))

(declare-fun bs!1410944 () Bool)

(assert (= bs!1410944 (and d!1866684 d!1866454)))

(assert (=> bs!1410944 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325153 lambda!325106))))

(declare-fun bs!1410945 () Bool)

(assert (= bs!1410945 (and d!1866684 d!1866566)))

(assert (=> bs!1410945 (= lambda!325153 lambda!325130)))

(declare-fun bs!1410946 () Bool)

(assert (= bs!1410946 (and d!1866684 b!5953147)))

(assert (=> bs!1410946 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325153 lambda!325000))))

(assert (=> d!1866684 true))

(assert (=> d!1866684 (= (derivationStepZipper!1978 lt!2313734 (head!12536 (t!377702 s!2326))) (flatMap!1510 lt!2313734 lambda!325153))))

(declare-fun bs!1410947 () Bool)

(assert (= bs!1410947 d!1866684))

(declare-fun m!6841776 () Bool)

(assert (=> bs!1410947 m!6841776))

(assert (=> b!5953673 d!1866684))

(assert (=> b!5953673 d!1866568))

(assert (=> b!5953673 d!1866570))

(declare-fun b!5954382 () Bool)

(declare-fun e!3642445 () (InoxSet Context!10762))

(declare-fun call!474445 () (InoxSet Context!10762))

(assert (=> b!5954382 (= e!3642445 call!474445)))

(declare-fun bm!474435 () Bool)

(declare-fun call!474442 () (InoxSet Context!10762))

(declare-fun call!474444 () (InoxSet Context!10762))

(assert (=> bm!474435 (= call!474442 call!474444)))

(declare-fun b!5954383 () Bool)

(declare-fun e!3642443 () (InoxSet Context!10762))

(declare-fun e!3642446 () (InoxSet Context!10762))

(assert (=> b!5954383 (= e!3642443 e!3642446)))

(declare-fun c!1059799 () Bool)

(assert (=> b!5954383 (= c!1059799 ((_ is Union!15997) (h!70614 (exprs!5881 lt!2313738))))))

(declare-fun bm!474436 () Bool)

(declare-fun call!474443 () List!64290)

(declare-fun c!1059801 () Bool)

(declare-fun c!1059802 () Bool)

(assert (=> bm!474436 (= call!474444 (derivationStepZipperDown!1247 (ite c!1059799 (regOne!32507 (h!70614 (exprs!5881 lt!2313738))) (ite c!1059802 (regTwo!32506 (h!70614 (exprs!5881 lt!2313738))) (ite c!1059801 (regOne!32506 (h!70614 (exprs!5881 lt!2313738))) (reg!16326 (h!70614 (exprs!5881 lt!2313738)))))) (ite (or c!1059799 c!1059802) (Context!10763 (t!377701 (exprs!5881 lt!2313738))) (Context!10763 call!474443)) (h!70615 s!2326)))))

(declare-fun bm!474437 () Bool)

(assert (=> bm!474437 (= call!474445 call!474442)))

(declare-fun b!5954384 () Bool)

(declare-fun e!3642442 () (InoxSet Context!10762))

(assert (=> b!5954384 (= e!3642442 call!474445)))

(declare-fun b!5954385 () Bool)

(declare-fun e!3642441 () Bool)

(assert (=> b!5954385 (= e!3642441 (nullable!5992 (regOne!32506 (h!70614 (exprs!5881 lt!2313738)))))))

(declare-fun b!5954386 () Bool)

(declare-fun e!3642444 () (InoxSet Context!10762))

(declare-fun call!474441 () (InoxSet Context!10762))

(assert (=> b!5954386 (= e!3642444 ((_ map or) call!474441 call!474442))))

(declare-fun d!1866688 () Bool)

(declare-fun c!1059800 () Bool)

(assert (=> d!1866688 (= c!1059800 (and ((_ is ElementMatch!15997) (h!70614 (exprs!5881 lt!2313738))) (= (c!1059438 (h!70614 (exprs!5881 lt!2313738))) (h!70615 s!2326))))))

(assert (=> d!1866688 (= (derivationStepZipperDown!1247 (h!70614 (exprs!5881 lt!2313738)) (Context!10763 (t!377701 (exprs!5881 lt!2313738))) (h!70615 s!2326)) e!3642443)))

(declare-fun b!5954387 () Bool)

(assert (=> b!5954387 (= e!3642443 (store ((as const (Array Context!10762 Bool)) false) (Context!10763 (t!377701 (exprs!5881 lt!2313738))) true))))

(declare-fun bm!474438 () Bool)

(declare-fun call!474440 () List!64290)

(assert (=> bm!474438 (= call!474440 ($colon$colon!1883 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313738)))) (ite (or c!1059802 c!1059801) (regTwo!32506 (h!70614 (exprs!5881 lt!2313738))) (h!70614 (exprs!5881 lt!2313738)))))))

(declare-fun b!5954388 () Bool)

(declare-fun c!1059803 () Bool)

(assert (=> b!5954388 (= c!1059803 ((_ is Star!15997) (h!70614 (exprs!5881 lt!2313738))))))

(assert (=> b!5954388 (= e!3642445 e!3642442)))

(declare-fun b!5954389 () Bool)

(assert (=> b!5954389 (= e!3642442 ((as const (Array Context!10762 Bool)) false))))

(declare-fun b!5954390 () Bool)

(assert (=> b!5954390 (= e!3642444 e!3642445)))

(assert (=> b!5954390 (= c!1059801 ((_ is Concat!24842) (h!70614 (exprs!5881 lt!2313738))))))

(declare-fun bm!474439 () Bool)

(assert (=> bm!474439 (= call!474443 call!474440)))

(declare-fun bm!474440 () Bool)

(assert (=> bm!474440 (= call!474441 (derivationStepZipperDown!1247 (ite c!1059799 (regTwo!32507 (h!70614 (exprs!5881 lt!2313738))) (regOne!32506 (h!70614 (exprs!5881 lt!2313738)))) (ite c!1059799 (Context!10763 (t!377701 (exprs!5881 lt!2313738))) (Context!10763 call!474440)) (h!70615 s!2326)))))

(declare-fun b!5954391 () Bool)

(assert (=> b!5954391 (= c!1059802 e!3642441)))

(declare-fun res!2492385 () Bool)

(assert (=> b!5954391 (=> (not res!2492385) (not e!3642441))))

(assert (=> b!5954391 (= res!2492385 ((_ is Concat!24842) (h!70614 (exprs!5881 lt!2313738))))))

(assert (=> b!5954391 (= e!3642446 e!3642444)))

(declare-fun b!5954392 () Bool)

(assert (=> b!5954392 (= e!3642446 ((_ map or) call!474444 call!474441))))

(assert (= (and d!1866688 c!1059800) b!5954387))

(assert (= (and d!1866688 (not c!1059800)) b!5954383))

(assert (= (and b!5954383 c!1059799) b!5954392))

(assert (= (and b!5954383 (not c!1059799)) b!5954391))

(assert (= (and b!5954391 res!2492385) b!5954385))

(assert (= (and b!5954391 c!1059802) b!5954386))

(assert (= (and b!5954391 (not c!1059802)) b!5954390))

(assert (= (and b!5954390 c!1059801) b!5954382))

(assert (= (and b!5954390 (not c!1059801)) b!5954388))

(assert (= (and b!5954388 c!1059803) b!5954384))

(assert (= (and b!5954388 (not c!1059803)) b!5954389))

(assert (= (or b!5954382 b!5954384) bm!474439))

(assert (= (or b!5954382 b!5954384) bm!474437))

(assert (= (or b!5954386 bm!474439) bm!474438))

(assert (= (or b!5954386 bm!474437) bm!474435))

(assert (= (or b!5954392 b!5954386) bm!474440))

(assert (= (or b!5954392 bm!474435) bm!474436))

(declare-fun m!6841778 () Bool)

(assert (=> b!5954385 m!6841778))

(declare-fun m!6841780 () Bool)

(assert (=> bm!474436 m!6841780))

(declare-fun m!6841782 () Bool)

(assert (=> bm!474438 m!6841782))

(declare-fun m!6841784 () Bool)

(assert (=> bm!474440 m!6841784))

(declare-fun m!6841786 () Bool)

(assert (=> b!5954387 m!6841786))

(assert (=> bm!474271 d!1866688))

(declare-fun d!1866690 () Bool)

(declare-fun res!2492386 () Bool)

(declare-fun e!3642447 () Bool)

(assert (=> d!1866690 (=> res!2492386 e!3642447)))

(assert (=> d!1866690 (= res!2492386 ((_ is Nil!64166) (exprs!5881 lt!2313743)))))

(assert (=> d!1866690 (= (forall!15085 (exprs!5881 lt!2313743) lambda!325081) e!3642447)))

(declare-fun b!5954393 () Bool)

(declare-fun e!3642448 () Bool)

(assert (=> b!5954393 (= e!3642447 e!3642448)))

(declare-fun res!2492387 () Bool)

(assert (=> b!5954393 (=> (not res!2492387) (not e!3642448))))

(assert (=> b!5954393 (= res!2492387 (dynLambda!25109 lambda!325081 (h!70614 (exprs!5881 lt!2313743))))))

(declare-fun b!5954394 () Bool)

(assert (=> b!5954394 (= e!3642448 (forall!15085 (t!377701 (exprs!5881 lt!2313743)) lambda!325081))))

(assert (= (and d!1866690 (not res!2492386)) b!5954393))

(assert (= (and b!5954393 res!2492387) b!5954394))

(declare-fun b_lambda!223809 () Bool)

(assert (=> (not b_lambda!223809) (not b!5954393)))

(declare-fun m!6841790 () Bool)

(assert (=> b!5954393 m!6841790))

(declare-fun m!6841792 () Bool)

(assert (=> b!5954394 m!6841792))

(assert (=> b!5953582 d!1866690))

(declare-fun bs!1410954 () Bool)

(declare-fun d!1866694 () Bool)

(assert (= bs!1410954 (and d!1866694 b!5953406)))

(declare-fun lambda!325155 () Int)

(assert (=> bs!1410954 (not (= lambda!325155 lambda!325055))))

(declare-fun bs!1410955 () Bool)

(assert (= bs!1410955 (and d!1866694 d!1866476)))

(assert (=> bs!1410955 (= lambda!325155 lambda!325116)))

(declare-fun bs!1410956 () Bool)

(assert (= bs!1410956 (and d!1866694 d!1866550)))

(assert (=> bs!1410956 (= lambda!325155 lambda!325128)))

(declare-fun bs!1410957 () Bool)

(assert (= bs!1410957 (and d!1866694 b!5954215)))

(assert (=> bs!1410957 (not (= lambda!325155 lambda!325138))))

(declare-fun bs!1410958 () Bool)

(assert (= bs!1410958 (and d!1866694 b!5953408)))

(assert (=> bs!1410958 (not (= lambda!325155 lambda!325056))))

(declare-fun bs!1410959 () Bool)

(assert (= bs!1410959 (and d!1866694 d!1866618)))

(assert (=> bs!1410959 (not (= lambda!325155 lambda!325142))))

(declare-fun bs!1410960 () Bool)

(assert (= bs!1410960 (and d!1866694 d!1866600)))

(assert (=> bs!1410960 (= lambda!325155 lambda!325134)))

(declare-fun bs!1410961 () Bool)

(assert (= bs!1410961 (and d!1866694 b!5953411)))

(assert (=> bs!1410961 (not (= lambda!325155 lambda!325058))))

(declare-fun bs!1410962 () Bool)

(assert (= bs!1410962 (and d!1866694 b!5954217)))

(assert (=> bs!1410962 (not (= lambda!325155 lambda!325139))))

(declare-fun bs!1410963 () Bool)

(assert (= bs!1410963 (and d!1866694 d!1866474)))

(assert (=> bs!1410963 (= lambda!325155 lambda!325115)))

(declare-fun bs!1410964 () Bool)

(assert (= bs!1410964 (and d!1866694 d!1866584)))

(assert (=> bs!1410964 (= lambda!325155 lambda!325132)))

(declare-fun bs!1410965 () Bool)

(assert (= bs!1410965 (and d!1866694 b!5953413)))

(assert (=> bs!1410965 (not (= lambda!325155 lambda!325059))))

(declare-fun bs!1410966 () Bool)

(assert (= bs!1410966 (and d!1866694 d!1866526)))

(assert (=> bs!1410966 (= lambda!325155 lambda!325124)))

(assert (=> d!1866694 (= (nullableZipper!1804 lt!2313741) (exists!2353 lt!2313741 lambda!325155))))

(declare-fun bs!1410967 () Bool)

(assert (= bs!1410967 d!1866694))

(declare-fun m!6841794 () Bool)

(assert (=> bs!1410967 m!6841794))

(assert (=> b!5953871 d!1866694))

(declare-fun d!1866696 () Bool)

(declare-fun c!1059807 () Bool)

(assert (=> d!1866696 (= c!1059807 (isEmpty!36053 (tail!11621 (t!377702 s!2326))))))

(declare-fun e!3642456 () Bool)

(assert (=> d!1866696 (= (matchZipper!2033 (derivationStepZipper!1978 (derivationStepZipper!1978 lt!2313752 (h!70615 s!2326)) (head!12536 (t!377702 s!2326))) (tail!11621 (t!377702 s!2326))) e!3642456)))

(declare-fun b!5954409 () Bool)

(assert (=> b!5954409 (= e!3642456 (nullableZipper!1804 (derivationStepZipper!1978 (derivationStepZipper!1978 lt!2313752 (h!70615 s!2326)) (head!12536 (t!377702 s!2326)))))))

(declare-fun b!5954410 () Bool)

(assert (=> b!5954410 (= e!3642456 (matchZipper!2033 (derivationStepZipper!1978 (derivationStepZipper!1978 (derivationStepZipper!1978 lt!2313752 (h!70615 s!2326)) (head!12536 (t!377702 s!2326))) (head!12536 (tail!11621 (t!377702 s!2326)))) (tail!11621 (tail!11621 (t!377702 s!2326)))))))

(assert (= (and d!1866696 c!1059807) b!5954409))

(assert (= (and d!1866696 (not c!1059807)) b!5954410))

(assert (=> d!1866696 m!6840980))

(assert (=> d!1866696 m!6841508))

(assert (=> b!5954409 m!6840978))

(declare-fun m!6841796 () Bool)

(assert (=> b!5954409 m!6841796))

(assert (=> b!5954410 m!6840980))

(assert (=> b!5954410 m!6841512))

(assert (=> b!5954410 m!6840978))

(assert (=> b!5954410 m!6841512))

(declare-fun m!6841798 () Bool)

(assert (=> b!5954410 m!6841798))

(assert (=> b!5954410 m!6840980))

(assert (=> b!5954410 m!6841516))

(assert (=> b!5954410 m!6841798))

(assert (=> b!5954410 m!6841516))

(declare-fun m!6841802 () Bool)

(assert (=> b!5954410 m!6841802))

(assert (=> b!5953427 d!1866696))

(declare-fun bs!1410968 () Bool)

(declare-fun d!1866698 () Bool)

(assert (= bs!1410968 (and d!1866698 d!1866596)))

(declare-fun lambda!325156 () Int)

(assert (=> bs!1410968 (= lambda!325156 lambda!325133)))

(declare-fun bs!1410969 () Bool)

(assert (= bs!1410969 (and d!1866698 d!1866556)))

(assert (=> bs!1410969 (= (= (head!12536 (t!377702 s!2326)) (head!12536 s!2326)) (= lambda!325156 lambda!325129))))

(declare-fun bs!1410970 () Bool)

(assert (= bs!1410970 (and d!1866698 d!1866386)))

(assert (=> bs!1410970 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325156 lambda!325084))))

(declare-fun bs!1410971 () Bool)

(assert (= bs!1410971 (and d!1866698 d!1866684)))

(assert (=> bs!1410971 (= lambda!325156 lambda!325153)))

(declare-fun bs!1410972 () Bool)

(assert (= bs!1410972 (and d!1866698 d!1866326)))

(assert (=> bs!1410972 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325156 lambda!325065))))

(declare-fun bs!1410973 () Bool)

(assert (= bs!1410973 (and d!1866698 d!1866454)))

(assert (=> bs!1410973 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325156 lambda!325106))))

(declare-fun bs!1410974 () Bool)

(assert (= bs!1410974 (and d!1866698 d!1866566)))

(assert (=> bs!1410974 (= lambda!325156 lambda!325130)))

(declare-fun bs!1410975 () Bool)

(assert (= bs!1410975 (and d!1866698 b!5953147)))

(assert (=> bs!1410975 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325156 lambda!325000))))

(assert (=> d!1866698 true))

(assert (=> d!1866698 (= (derivationStepZipper!1978 (derivationStepZipper!1978 lt!2313752 (h!70615 s!2326)) (head!12536 (t!377702 s!2326))) (flatMap!1510 (derivationStepZipper!1978 lt!2313752 (h!70615 s!2326)) lambda!325156))))

(declare-fun bs!1410976 () Bool)

(assert (= bs!1410976 d!1866698))

(assert (=> bs!1410976 m!6840672))

(declare-fun m!6841818 () Bool)

(assert (=> bs!1410976 m!6841818))

(assert (=> b!5953427 d!1866698))

(assert (=> b!5953427 d!1866568))

(assert (=> b!5953427 d!1866570))

(declare-fun d!1866702 () Bool)

(assert (=> d!1866702 true))

(declare-fun setRes!40481 () Bool)

(assert (=> d!1866702 setRes!40481))

(declare-fun condSetEmpty!40481 () Bool)

(declare-fun res!2492396 () (InoxSet Context!10762))

(assert (=> d!1866702 (= condSetEmpty!40481 (= res!2492396 ((as const (Array Context!10762 Bool)) false)))))

(assert (=> d!1866702 (= (choose!44871 z!1189 lambda!325000) res!2492396)))

(declare-fun setIsEmpty!40481 () Bool)

(assert (=> setIsEmpty!40481 setRes!40481))

(declare-fun tp!1656536 () Bool)

(declare-fun setElem!40481 () Context!10762)

(declare-fun e!3642458 () Bool)

(declare-fun setNonEmpty!40481 () Bool)

(assert (=> setNonEmpty!40481 (= setRes!40481 (and tp!1656536 (inv!83239 setElem!40481) e!3642458))))

(declare-fun setRest!40481 () (InoxSet Context!10762))

(assert (=> setNonEmpty!40481 (= res!2492396 ((_ map or) (store ((as const (Array Context!10762 Bool)) false) setElem!40481 true) setRest!40481))))

(declare-fun b!5954413 () Bool)

(declare-fun tp!1656535 () Bool)

(assert (=> b!5954413 (= e!3642458 tp!1656535)))

(assert (= (and d!1866702 condSetEmpty!40481) setIsEmpty!40481))

(assert (= (and d!1866702 (not condSetEmpty!40481)) setNonEmpty!40481))

(assert (= setNonEmpty!40481 b!5954413))

(declare-fun m!6841820 () Bool)

(assert (=> setNonEmpty!40481 m!6841820))

(assert (=> d!1866408 d!1866702))

(declare-fun d!1866704 () Bool)

(assert (=> d!1866704 (= (Exists!3067 (ite c!1059679 lambda!325111 lambda!325112)) (choose!44877 (ite c!1059679 lambda!325111 lambda!325112)))))

(declare-fun bs!1410977 () Bool)

(assert (= bs!1410977 d!1866704))

(declare-fun m!6841824 () Bool)

(assert (=> bs!1410977 m!6841824))

(assert (=> bm!474348 d!1866704))

(declare-fun d!1866706 () Bool)

(assert (=> d!1866706 (= ($colon$colon!1883 (exprs!5881 lt!2313735) (ite (or c!1059483 c!1059482) (regTwo!32506 (regTwo!32506 r!7292)) (regTwo!32506 r!7292))) (Cons!64166 (ite (or c!1059483 c!1059482) (regTwo!32506 (regTwo!32506 r!7292)) (regTwo!32506 r!7292)) (exprs!5881 lt!2313735)))))

(assert (=> bm!474262 d!1866706))

(declare-fun d!1866708 () Bool)

(assert (=> d!1866708 (= (isEmptyLang!1434 lt!2313823) ((_ is EmptyLang!15997) lt!2313823))))

(assert (=> b!5953355 d!1866708))

(assert (=> d!1866324 d!1866588))

(declare-fun bs!1410981 () Bool)

(declare-fun b!5954414 () Bool)

(assert (= bs!1410981 (and b!5954414 d!1866308)))

(declare-fun lambda!325158 () Int)

(assert (=> bs!1410981 (not (= lambda!325158 lambda!325043))))

(declare-fun bs!1410983 () Bool)

(assert (= bs!1410983 (and b!5954414 d!1866676)))

(assert (=> bs!1410983 (not (= lambda!325158 lambda!325152))))

(declare-fun bs!1410984 () Bool)

(assert (= bs!1410984 (and b!5954414 b!5954206)))

(declare-fun lt!2313955 () Int)

(assert (=> bs!1410984 (= (= lt!2313955 lt!2313934) (= lambda!325158 lambda!325136))))

(declare-fun bs!1410986 () Bool)

(assert (= bs!1410986 (and b!5954414 d!1866576)))

(assert (=> bs!1410986 (not (= lambda!325158 lambda!325131))))

(declare-fun bs!1410987 () Bool)

(assert (= bs!1410987 (and b!5954414 b!5954093)))

(assert (=> bs!1410987 (= (= lt!2313955 lt!2313926) (= lambda!325158 lambda!325119))))

(declare-fun bs!1410989 () Bool)

(assert (= bs!1410989 (and b!5954414 d!1866304)))

(assert (=> bs!1410989 (not (= lambda!325158 lambda!325035))))

(declare-fun bs!1410990 () Bool)

(assert (= bs!1410990 (and b!5954414 d!1866302)))

(assert (=> bs!1410990 (not (= lambda!325158 lambda!325029))))

(declare-fun bs!1410991 () Bool)

(assert (= bs!1410991 (and b!5954414 d!1866504)))

(assert (=> bs!1410991 (= (= lt!2313955 lt!2313867) (= lambda!325158 lambda!325122))))

(declare-fun bs!1410992 () Bool)

(assert (= bs!1410992 (and b!5954414 d!1866492)))

(assert (=> bs!1410992 (not (= lambda!325158 lambda!325117))))

(declare-fun bs!1410994 () Bool)

(assert (= bs!1410994 (and b!5954414 b!5953592)))

(assert (=> bs!1410994 (= (= lt!2313955 lt!2313869) (= lambda!325158 lambda!325083))))

(declare-fun bs!1410995 () Bool)

(assert (= bs!1410995 (and b!5954414 d!1866344)))

(assert (=> bs!1410995 (not (= lambda!325158 lambda!325073))))

(declare-fun bs!1410996 () Bool)

(assert (= bs!1410996 (and b!5954414 b!5953646)))

(assert (=> bs!1410996 (= (= lt!2313955 lt!2313884) (= lambda!325158 lambda!325086))))

(declare-fun bs!1410997 () Bool)

(assert (= bs!1410997 (and b!5954414 b!5953644)))

(assert (=> bs!1410997 (= (= lt!2313955 lt!2313886) (= lambda!325158 lambda!325085))))

(declare-fun bs!1410998 () Bool)

(assert (= bs!1410998 (and b!5954414 b!5953590)))

(assert (=> bs!1410998 (= (= lt!2313955 lt!2313871) (= lambda!325158 lambda!325082))))

(declare-fun bs!1410999 () Bool)

(assert (= bs!1410999 (and b!5954414 b!5953582)))

(assert (=> bs!1410999 (= (= lt!2313955 lt!2313865) (= lambda!325158 lambda!325081))))

(declare-fun bs!1411000 () Bool)

(assert (= bs!1411000 (and b!5954414 d!1866628)))

(assert (=> bs!1411000 (not (= lambda!325158 lambda!325143))))

(declare-fun bs!1411001 () Bool)

(assert (= bs!1411001 (and b!5954414 d!1866300)))

(assert (=> bs!1411001 (not (= lambda!325158 lambda!325028))))

(declare-fun bs!1411002 () Bool)

(assert (= bs!1411002 (and b!5954414 b!5954091)))

(assert (=> bs!1411002 (= (= lt!2313955 lt!2313928) (= lambda!325158 lambda!325118))))

(declare-fun bs!1411003 () Bool)

(assert (= bs!1411003 (and b!5954414 d!1866328)))

(assert (=> bs!1411003 (not (= lambda!325158 lambda!325068))))

(declare-fun bs!1411004 () Bool)

(assert (= bs!1411004 (and b!5954414 b!5954204)))

(assert (=> bs!1411004 (= (= lt!2313955 lt!2313936) (= lambda!325158 lambda!325135))))

(declare-fun bs!1411005 () Bool)

(assert (= bs!1411005 (and b!5954414 b!5953580)))

(assert (=> bs!1411005 (= (= lt!2313955 lt!2313867) (= lambda!325158 lambda!325080))))

(assert (=> b!5954414 true))

(declare-fun bs!1411006 () Bool)

(declare-fun b!5954416 () Bool)

(assert (= bs!1411006 (and b!5954416 d!1866308)))

(declare-fun lambda!325159 () Int)

(assert (=> bs!1411006 (not (= lambda!325159 lambda!325043))))

(declare-fun bs!1411007 () Bool)

(assert (= bs!1411007 (and b!5954416 d!1866676)))

(assert (=> bs!1411007 (not (= lambda!325159 lambda!325152))))

(declare-fun bs!1411008 () Bool)

(assert (= bs!1411008 (and b!5954416 d!1866576)))

(assert (=> bs!1411008 (not (= lambda!325159 lambda!325131))))

(declare-fun bs!1411009 () Bool)

(assert (= bs!1411009 (and b!5954416 b!5954093)))

(declare-fun lt!2313953 () Int)

(assert (=> bs!1411009 (= (= lt!2313953 lt!2313926) (= lambda!325159 lambda!325119))))

(declare-fun bs!1411010 () Bool)

(assert (= bs!1411010 (and b!5954416 d!1866304)))

(assert (=> bs!1411010 (not (= lambda!325159 lambda!325035))))

(declare-fun bs!1411011 () Bool)

(assert (= bs!1411011 (and b!5954416 d!1866302)))

(assert (=> bs!1411011 (not (= lambda!325159 lambda!325029))))

(declare-fun bs!1411012 () Bool)

(assert (= bs!1411012 (and b!5954416 d!1866504)))

(assert (=> bs!1411012 (= (= lt!2313953 lt!2313867) (= lambda!325159 lambda!325122))))

(declare-fun bs!1411013 () Bool)

(assert (= bs!1411013 (and b!5954416 d!1866492)))

(assert (=> bs!1411013 (not (= lambda!325159 lambda!325117))))

(declare-fun bs!1411014 () Bool)

(assert (= bs!1411014 (and b!5954416 b!5953592)))

(assert (=> bs!1411014 (= (= lt!2313953 lt!2313869) (= lambda!325159 lambda!325083))))

(declare-fun bs!1411015 () Bool)

(assert (= bs!1411015 (and b!5954416 d!1866344)))

(assert (=> bs!1411015 (not (= lambda!325159 lambda!325073))))

(declare-fun bs!1411016 () Bool)

(assert (= bs!1411016 (and b!5954416 b!5953646)))

(assert (=> bs!1411016 (= (= lt!2313953 lt!2313884) (= lambda!325159 lambda!325086))))

(declare-fun bs!1411017 () Bool)

(assert (= bs!1411017 (and b!5954416 b!5953644)))

(assert (=> bs!1411017 (= (= lt!2313953 lt!2313886) (= lambda!325159 lambda!325085))))

(declare-fun bs!1411018 () Bool)

(assert (= bs!1411018 (and b!5954416 b!5953590)))

(assert (=> bs!1411018 (= (= lt!2313953 lt!2313871) (= lambda!325159 lambda!325082))))

(declare-fun bs!1411019 () Bool)

(assert (= bs!1411019 (and b!5954416 b!5954206)))

(assert (=> bs!1411019 (= (= lt!2313953 lt!2313934) (= lambda!325159 lambda!325136))))

(declare-fun bs!1411020 () Bool)

(assert (= bs!1411020 (and b!5954416 b!5954414)))

(assert (=> bs!1411020 (= (= lt!2313953 lt!2313955) (= lambda!325159 lambda!325158))))

(declare-fun bs!1411021 () Bool)

(assert (= bs!1411021 (and b!5954416 b!5953582)))

(assert (=> bs!1411021 (= (= lt!2313953 lt!2313865) (= lambda!325159 lambda!325081))))

(declare-fun bs!1411022 () Bool)

(assert (= bs!1411022 (and b!5954416 d!1866628)))

(assert (=> bs!1411022 (not (= lambda!325159 lambda!325143))))

(declare-fun bs!1411023 () Bool)

(assert (= bs!1411023 (and b!5954416 d!1866300)))

(assert (=> bs!1411023 (not (= lambda!325159 lambda!325028))))

(declare-fun bs!1411024 () Bool)

(assert (= bs!1411024 (and b!5954416 b!5954091)))

(assert (=> bs!1411024 (= (= lt!2313953 lt!2313928) (= lambda!325159 lambda!325118))))

(declare-fun bs!1411025 () Bool)

(assert (= bs!1411025 (and b!5954416 d!1866328)))

(assert (=> bs!1411025 (not (= lambda!325159 lambda!325068))))

(declare-fun bs!1411026 () Bool)

(assert (= bs!1411026 (and b!5954416 b!5954204)))

(assert (=> bs!1411026 (= (= lt!2313953 lt!2313936) (= lambda!325159 lambda!325135))))

(declare-fun bs!1411027 () Bool)

(assert (= bs!1411027 (and b!5954416 b!5953580)))

(assert (=> bs!1411027 (= (= lt!2313953 lt!2313867) (= lambda!325159 lambda!325080))))

(assert (=> b!5954416 true))

(declare-fun d!1866712 () Bool)

(declare-fun e!3642460 () Bool)

(assert (=> d!1866712 e!3642460))

(declare-fun res!2492397 () Bool)

(assert (=> d!1866712 (=> (not res!2492397) (not e!3642460))))

(assert (=> d!1866712 (= res!2492397 (>= lt!2313953 0))))

(declare-fun e!3642459 () Int)

(assert (=> d!1866712 (= lt!2313953 e!3642459)))

(declare-fun c!1059809 () Bool)

(assert (=> d!1866712 (= c!1059809 ((_ is Cons!64166) (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313746))))))))

(assert (=> d!1866712 (= (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313746)))) lt!2313953)))

(assert (=> b!5954414 (= e!3642459 lt!2313955)))

(assert (=> b!5954414 (= lt!2313955 (maxBigInt!0 (regexDepth!254 (h!70614 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313746)))))) (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313746)))))))))))

(declare-fun lt!2313954 () Unit!157265)

(assert (=> b!5954414 (= lt!2313954 (lemmaForallRegexDepthBiggerThanTransitive!46 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313746))))) lt!2313955 (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313746)))))))))))

(assert (=> b!5954414 (forall!15085 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313746))))) lambda!325158)))

(declare-fun lt!2313952 () Unit!157265)

(assert (=> b!5954414 (= lt!2313952 lt!2313954)))

(declare-fun b!5954415 () Bool)

(assert (=> b!5954415 (= e!3642459 0)))

(assert (=> b!5954416 (= e!3642460 (forall!15085 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313746)))) lambda!325159))))

(assert (= (and d!1866712 c!1059809) b!5954414))

(assert (= (and d!1866712 (not c!1059809)) b!5954415))

(assert (= (and d!1866712 res!2492397) b!5954416))

(declare-fun m!6841840 () Bool)

(assert (=> b!5954414 m!6841840))

(declare-fun m!6841842 () Bool)

(assert (=> b!5954414 m!6841842))

(declare-fun m!6841844 () Bool)

(assert (=> b!5954414 m!6841844))

(assert (=> b!5954414 m!6841842))

(declare-fun m!6841848 () Bool)

(assert (=> b!5954414 m!6841848))

(assert (=> b!5954414 m!6841840))

(assert (=> b!5954414 m!6841842))

(declare-fun m!6841850 () Bool)

(assert (=> b!5954414 m!6841850))

(declare-fun m!6841852 () Bool)

(assert (=> b!5954416 m!6841852))

(assert (=> b!5953644 d!1866712))

(declare-fun b!5954433 () Bool)

(declare-fun e!3642473 () Bool)

(declare-fun lt!2313957 () Int)

(declare-fun call!474451 () Int)

(assert (=> b!5954433 (= e!3642473 (> lt!2313957 call!474451))))

(declare-fun bm!474443 () Bool)

(declare-fun call!474454 () Int)

(declare-fun c!1059815 () Bool)

(assert (=> bm!474443 (= call!474454 (regexDepth!254 (ite c!1059815 (regTwo!32507 (h!70614 (exprs!5881 lt!2313746))) (regOne!32506 (h!70614 (exprs!5881 lt!2313746))))))))

(declare-fun bm!474444 () Bool)

(declare-fun call!474450 () Int)

(declare-fun call!474452 () Int)

(assert (=> bm!474444 (= call!474452 (maxBigInt!0 (ite c!1059815 call!474450 call!474454) (ite c!1059815 call!474454 call!474450)))))

(declare-fun b!5954434 () Bool)

(declare-fun e!3642474 () Int)

(declare-fun e!3642471 () Int)

(assert (=> b!5954434 (= e!3642474 e!3642471)))

(declare-fun c!1059819 () Bool)

(assert (=> b!5954434 (= c!1059819 ((_ is Star!15997) (h!70614 (exprs!5881 lt!2313746))))))

(declare-fun b!5954435 () Bool)

(assert (=> b!5954435 (= c!1059815 ((_ is Union!15997) (h!70614 (exprs!5881 lt!2313746))))))

(declare-fun e!3642470 () Int)

(assert (=> b!5954435 (= e!3642471 e!3642470)))

(declare-fun b!5954436 () Bool)

(declare-fun e!3642469 () Int)

(assert (=> b!5954436 (= e!3642470 e!3642469)))

(declare-fun c!1059820 () Bool)

(assert (=> b!5954436 (= c!1059820 ((_ is Concat!24842) (h!70614 (exprs!5881 lt!2313746))))))

(declare-fun b!5954437 () Bool)

(assert (=> b!5954437 (= e!3642470 (+ 1 call!474452))))

(declare-fun b!5954438 () Bool)

(declare-fun e!3642475 () Bool)

(declare-fun e!3642478 () Bool)

(assert (=> b!5954438 (= e!3642475 e!3642478)))

(declare-fun c!1059818 () Bool)

(assert (=> b!5954438 (= c!1059818 ((_ is Concat!24842) (h!70614 (exprs!5881 lt!2313746))))))

(declare-fun b!5954439 () Bool)

(declare-fun c!1059817 () Bool)

(assert (=> b!5954439 (= c!1059817 ((_ is Star!15997) (h!70614 (exprs!5881 lt!2313746))))))

(declare-fun e!3642477 () Bool)

(assert (=> b!5954439 (= e!3642478 e!3642477)))

(declare-fun b!5954440 () Bool)

(declare-fun e!3642472 () Bool)

(declare-fun call!474449 () Int)

(assert (=> b!5954440 (= e!3642472 (> lt!2313957 call!474449))))

(declare-fun b!5954441 () Bool)

(assert (=> b!5954441 (= e!3642474 1)))

(declare-fun bm!474446 () Bool)

(declare-fun call!474448 () Int)

(assert (=> bm!474446 (= call!474450 call!474448)))

(declare-fun b!5954442 () Bool)

(assert (=> b!5954442 (= e!3642469 1)))

(declare-fun b!5954443 () Bool)

(assert (=> b!5954443 (= e!3642475 e!3642473)))

(declare-fun res!2492408 () Bool)

(assert (=> b!5954443 (= res!2492408 (> lt!2313957 call!474449))))

(assert (=> b!5954443 (=> (not res!2492408) (not e!3642473))))

(declare-fun bm!474447 () Bool)

(declare-fun call!474453 () Int)

(assert (=> bm!474447 (= call!474453 call!474451)))

(declare-fun b!5954444 () Bool)

(declare-fun res!2492407 () Bool)

(assert (=> b!5954444 (=> (not res!2492407) (not e!3642472))))

(assert (=> b!5954444 (= res!2492407 (> lt!2313957 call!474453))))

(assert (=> b!5954444 (= e!3642478 e!3642472)))

(declare-fun b!5954445 () Bool)

(assert (=> b!5954445 (= e!3642469 (+ 1 call!474452))))

(declare-fun b!5954446 () Bool)

(assert (=> b!5954446 (= e!3642477 (= lt!2313957 1))))

(declare-fun c!1059816 () Bool)

(declare-fun bm!474448 () Bool)

(assert (=> bm!474448 (= call!474451 (regexDepth!254 (ite c!1059816 (regTwo!32507 (h!70614 (exprs!5881 lt!2313746))) (ite c!1059818 (regOne!32506 (h!70614 (exprs!5881 lt!2313746))) (reg!16326 (h!70614 (exprs!5881 lt!2313746)))))))))

(declare-fun bm!474445 () Bool)

(assert (=> bm!474445 (= call!474449 (regexDepth!254 (ite c!1059816 (regOne!32507 (h!70614 (exprs!5881 lt!2313746))) (regTwo!32506 (h!70614 (exprs!5881 lt!2313746))))))))

(declare-fun d!1866720 () Bool)

(declare-fun e!3642476 () Bool)

(assert (=> d!1866720 e!3642476))

(declare-fun res!2492406 () Bool)

(assert (=> d!1866720 (=> (not res!2492406) (not e!3642476))))

(assert (=> d!1866720 (= res!2492406 (> lt!2313957 0))))

(assert (=> d!1866720 (= lt!2313957 e!3642474)))

(declare-fun c!1059814 () Bool)

(assert (=> d!1866720 (= c!1059814 ((_ is ElementMatch!15997) (h!70614 (exprs!5881 lt!2313746))))))

(assert (=> d!1866720 (= (regexDepth!254 (h!70614 (exprs!5881 lt!2313746))) lt!2313957)))

(declare-fun b!5954447 () Bool)

(assert (=> b!5954447 (= e!3642476 e!3642475)))

(assert (=> b!5954447 (= c!1059816 ((_ is Union!15997) (h!70614 (exprs!5881 lt!2313746))))))

(declare-fun b!5954448 () Bool)

(assert (=> b!5954448 (= e!3642471 (+ 1 call!474448))))

(declare-fun b!5954449 () Bool)

(assert (=> b!5954449 (= e!3642477 (> lt!2313957 call!474453))))

(declare-fun bm!474449 () Bool)

(assert (=> bm!474449 (= call!474448 (regexDepth!254 (ite c!1059819 (reg!16326 (h!70614 (exprs!5881 lt!2313746))) (ite c!1059815 (regOne!32507 (h!70614 (exprs!5881 lt!2313746))) (regTwo!32506 (h!70614 (exprs!5881 lt!2313746)))))))))

(assert (= (and d!1866720 c!1059814) b!5954441))

(assert (= (and d!1866720 (not c!1059814)) b!5954434))

(assert (= (and b!5954434 c!1059819) b!5954448))

(assert (= (and b!5954434 (not c!1059819)) b!5954435))

(assert (= (and b!5954435 c!1059815) b!5954437))

(assert (= (and b!5954435 (not c!1059815)) b!5954436))

(assert (= (and b!5954436 c!1059820) b!5954445))

(assert (= (and b!5954436 (not c!1059820)) b!5954442))

(assert (= (or b!5954437 b!5954445) bm!474443))

(assert (= (or b!5954437 b!5954445) bm!474446))

(assert (= (or b!5954437 b!5954445) bm!474444))

(assert (= (or b!5954448 bm!474446) bm!474449))

(assert (= (and d!1866720 res!2492406) b!5954447))

(assert (= (and b!5954447 c!1059816) b!5954443))

(assert (= (and b!5954447 (not c!1059816)) b!5954438))

(assert (= (and b!5954443 res!2492408) b!5954433))

(assert (= (and b!5954438 c!1059818) b!5954444))

(assert (= (and b!5954438 (not c!1059818)) b!5954439))

(assert (= (and b!5954444 res!2492407) b!5954440))

(assert (= (and b!5954439 c!1059817) b!5954449))

(assert (= (and b!5954439 (not c!1059817)) b!5954446))

(assert (= (or b!5954444 b!5954449) bm!474447))

(assert (= (or b!5954433 bm!474447) bm!474448))

(assert (= (or b!5954443 b!5954440) bm!474445))

(declare-fun m!6841854 () Bool)

(assert (=> bm!474448 m!6841854))

(declare-fun m!6841856 () Bool)

(assert (=> bm!474449 m!6841856))

(declare-fun m!6841858 () Bool)

(assert (=> bm!474443 m!6841858))

(declare-fun m!6841860 () Bool)

(assert (=> bm!474445 m!6841860))

(declare-fun m!6841862 () Bool)

(assert (=> bm!474444 m!6841862))

(assert (=> b!5953644 d!1866720))

(declare-fun bs!1411037 () Bool)

(declare-fun d!1866722 () Bool)

(assert (= bs!1411037 (and d!1866722 d!1866308)))

(declare-fun lambda!325161 () Int)

(assert (=> bs!1411037 (not (= lambda!325161 lambda!325043))))

(declare-fun bs!1411038 () Bool)

(assert (= bs!1411038 (and d!1866722 d!1866676)))

(assert (=> bs!1411038 (not (= lambda!325161 lambda!325152))))

(declare-fun bs!1411039 () Bool)

(assert (= bs!1411039 (and d!1866722 d!1866576)))

(assert (=> bs!1411039 (not (= lambda!325161 lambda!325131))))

(declare-fun bs!1411040 () Bool)

(assert (= bs!1411040 (and d!1866722 b!5954416)))

(assert (=> bs!1411040 (= (= lt!2313886 lt!2313953) (= lambda!325161 lambda!325159))))

(declare-fun bs!1411041 () Bool)

(assert (= bs!1411041 (and d!1866722 b!5954093)))

(assert (=> bs!1411041 (= (= lt!2313886 lt!2313926) (= lambda!325161 lambda!325119))))

(declare-fun bs!1411042 () Bool)

(assert (= bs!1411042 (and d!1866722 d!1866304)))

(assert (=> bs!1411042 (not (= lambda!325161 lambda!325035))))

(declare-fun bs!1411043 () Bool)

(assert (= bs!1411043 (and d!1866722 d!1866302)))

(assert (=> bs!1411043 (not (= lambda!325161 lambda!325029))))

(declare-fun bs!1411044 () Bool)

(assert (= bs!1411044 (and d!1866722 d!1866504)))

(assert (=> bs!1411044 (= (= lt!2313886 lt!2313867) (= lambda!325161 lambda!325122))))

(declare-fun bs!1411045 () Bool)

(assert (= bs!1411045 (and d!1866722 d!1866492)))

(assert (=> bs!1411045 (not (= lambda!325161 lambda!325117))))

(declare-fun bs!1411046 () Bool)

(assert (= bs!1411046 (and d!1866722 b!5953592)))

(assert (=> bs!1411046 (= (= lt!2313886 lt!2313869) (= lambda!325161 lambda!325083))))

(declare-fun bs!1411047 () Bool)

(assert (= bs!1411047 (and d!1866722 d!1866344)))

(assert (=> bs!1411047 (not (= lambda!325161 lambda!325073))))

(declare-fun bs!1411048 () Bool)

(assert (= bs!1411048 (and d!1866722 b!5953646)))

(assert (=> bs!1411048 (= (= lt!2313886 lt!2313884) (= lambda!325161 lambda!325086))))

(declare-fun bs!1411049 () Bool)

(assert (= bs!1411049 (and d!1866722 b!5953644)))

(assert (=> bs!1411049 (= lambda!325161 lambda!325085)))

(declare-fun bs!1411050 () Bool)

(assert (= bs!1411050 (and d!1866722 b!5953590)))

(assert (=> bs!1411050 (= (= lt!2313886 lt!2313871) (= lambda!325161 lambda!325082))))

(declare-fun bs!1411051 () Bool)

(assert (= bs!1411051 (and d!1866722 b!5954206)))

(assert (=> bs!1411051 (= (= lt!2313886 lt!2313934) (= lambda!325161 lambda!325136))))

(declare-fun bs!1411052 () Bool)

(assert (= bs!1411052 (and d!1866722 b!5954414)))

(assert (=> bs!1411052 (= (= lt!2313886 lt!2313955) (= lambda!325161 lambda!325158))))

(declare-fun bs!1411053 () Bool)

(assert (= bs!1411053 (and d!1866722 b!5953582)))

(assert (=> bs!1411053 (= (= lt!2313886 lt!2313865) (= lambda!325161 lambda!325081))))

(declare-fun bs!1411054 () Bool)

(assert (= bs!1411054 (and d!1866722 d!1866628)))

(assert (=> bs!1411054 (not (= lambda!325161 lambda!325143))))

(declare-fun bs!1411055 () Bool)

(assert (= bs!1411055 (and d!1866722 d!1866300)))

(assert (=> bs!1411055 (not (= lambda!325161 lambda!325028))))

(declare-fun bs!1411056 () Bool)

(assert (= bs!1411056 (and d!1866722 b!5954091)))

(assert (=> bs!1411056 (= (= lt!2313886 lt!2313928) (= lambda!325161 lambda!325118))))

(declare-fun bs!1411057 () Bool)

(assert (= bs!1411057 (and d!1866722 d!1866328)))

(assert (=> bs!1411057 (not (= lambda!325161 lambda!325068))))

(declare-fun bs!1411058 () Bool)

(assert (= bs!1411058 (and d!1866722 b!5954204)))

(assert (=> bs!1411058 (= (= lt!2313886 lt!2313936) (= lambda!325161 lambda!325135))))

(declare-fun bs!1411060 () Bool)

(assert (= bs!1411060 (and d!1866722 b!5953580)))

(assert (=> bs!1411060 (= (= lt!2313886 lt!2313867) (= lambda!325161 lambda!325080))))

(assert (=> d!1866722 true))

(assert (=> d!1866722 (forall!15085 (t!377701 (exprs!5881 lt!2313746)) lambda!325161)))

(declare-fun lt!2313958 () Unit!157265)

(assert (=> d!1866722 (= lt!2313958 (choose!44881 (t!377701 (exprs!5881 lt!2313746)) lt!2313886 (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313746))))))))

(assert (=> d!1866722 (>= lt!2313886 (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313746)))))))

(assert (=> d!1866722 (= (lemmaForallRegexDepthBiggerThanTransitive!46 (t!377701 (exprs!5881 lt!2313746)) lt!2313886 (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313746))))) lt!2313958)))

(declare-fun bs!1411062 () Bool)

(assert (= bs!1411062 d!1866722))

(declare-fun m!6841874 () Bool)

(assert (=> bs!1411062 m!6841874))

(assert (=> bs!1411062 m!6841182))

(declare-fun m!6841876 () Bool)

(assert (=> bs!1411062 m!6841876))

(assert (=> b!5953644 d!1866722))

(declare-fun d!1866732 () Bool)

(assert (=> d!1866732 (= (maxBigInt!0 (regexDepth!254 (h!70614 (exprs!5881 lt!2313746))) (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313746))))) (ite (>= (regexDepth!254 (h!70614 (exprs!5881 lt!2313746))) (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313746))))) (regexDepth!254 (h!70614 (exprs!5881 lt!2313746))) (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313746))))))))

(assert (=> b!5953644 d!1866732))

(declare-fun d!1866734 () Bool)

(declare-fun res!2492409 () Bool)

(declare-fun e!3642480 () Bool)

(assert (=> d!1866734 (=> res!2492409 e!3642480)))

(assert (=> d!1866734 (= res!2492409 ((_ is Nil!64166) (t!377701 (exprs!5881 lt!2313746))))))

(assert (=> d!1866734 (= (forall!15085 (t!377701 (exprs!5881 lt!2313746)) lambda!325085) e!3642480)))

(declare-fun b!5954452 () Bool)

(declare-fun e!3642481 () Bool)

(assert (=> b!5954452 (= e!3642480 e!3642481)))

(declare-fun res!2492410 () Bool)

(assert (=> b!5954452 (=> (not res!2492410) (not e!3642481))))

(assert (=> b!5954452 (= res!2492410 (dynLambda!25109 lambda!325085 (h!70614 (t!377701 (exprs!5881 lt!2313746)))))))

(declare-fun b!5954453 () Bool)

(assert (=> b!5954453 (= e!3642481 (forall!15085 (t!377701 (t!377701 (exprs!5881 lt!2313746))) lambda!325085))))

(assert (= (and d!1866734 (not res!2492409)) b!5954452))

(assert (= (and b!5954452 res!2492410) b!5954453))

(declare-fun b_lambda!223811 () Bool)

(assert (=> (not b_lambda!223811) (not b!5954452)))

(declare-fun m!6841878 () Bool)

(assert (=> b!5954452 m!6841878))

(declare-fun m!6841880 () Bool)

(assert (=> b!5954453 m!6841880))

(assert (=> b!5953644 d!1866734))

(assert (=> d!1866414 d!1866588))

(declare-fun d!1866736 () Bool)

(assert (=> d!1866736 true))

(assert (=> d!1866736 true))

(declare-fun res!2492414 () Bool)

(assert (=> d!1866736 (= (choose!44877 lambda!324998) res!2492414)))

(assert (=> d!1866438 d!1866736))

(declare-fun b!5954465 () Bool)

(declare-fun e!3642490 () (InoxSet Context!10762))

(assert (=> b!5954465 (= e!3642490 ((as const (Array Context!10762 Bool)) false))))

(declare-fun d!1866740 () Bool)

(declare-fun c!1059828 () Bool)

(declare-fun e!3642489 () Bool)

(assert (=> d!1866740 (= c!1059828 e!3642489)))

(declare-fun res!2492415 () Bool)

(assert (=> d!1866740 (=> (not res!2492415) (not e!3642489))))

(assert (=> d!1866740 (= res!2492415 ((_ is Cons!64166) (exprs!5881 (Context!10763 (t!377701 (exprs!5881 (h!70616 zl!343)))))))))

(declare-fun e!3642488 () (InoxSet Context!10762))

(assert (=> d!1866740 (= (derivationStepZipperUp!1173 (Context!10763 (t!377701 (exprs!5881 (h!70616 zl!343)))) (h!70615 s!2326)) e!3642488)))

(declare-fun b!5954466 () Bool)

(declare-fun call!474461 () (InoxSet Context!10762))

(assert (=> b!5954466 (= e!3642490 call!474461)))

(declare-fun b!5954467 () Bool)

(assert (=> b!5954467 (= e!3642489 (nullable!5992 (h!70614 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 (h!70616 zl!343))))))))))

(declare-fun b!5954468 () Bool)

(assert (=> b!5954468 (= e!3642488 e!3642490)))

(declare-fun c!1059827 () Bool)

(assert (=> b!5954468 (= c!1059827 ((_ is Cons!64166) (exprs!5881 (Context!10763 (t!377701 (exprs!5881 (h!70616 zl!343)))))))))

(declare-fun b!5954469 () Bool)

(assert (=> b!5954469 (= e!3642488 ((_ map or) call!474461 (derivationStepZipperUp!1173 (Context!10763 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 (h!70616 zl!343))))))) (h!70615 s!2326))))))

(declare-fun bm!474456 () Bool)

(assert (=> bm!474456 (= call!474461 (derivationStepZipperDown!1247 (h!70614 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 (h!70616 zl!343)))))) (Context!10763 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 (h!70616 zl!343))))))) (h!70615 s!2326)))))

(assert (= (and d!1866740 res!2492415) b!5954467))

(assert (= (and d!1866740 c!1059828) b!5954469))

(assert (= (and d!1866740 (not c!1059828)) b!5954468))

(assert (= (and b!5954468 c!1059827) b!5954466))

(assert (= (and b!5954468 (not c!1059827)) b!5954465))

(assert (= (or b!5954469 b!5954466) bm!474456))

(declare-fun m!6841884 () Bool)

(assert (=> b!5954467 m!6841884))

(declare-fun m!6841886 () Bool)

(assert (=> b!5954469 m!6841886))

(declare-fun m!6841888 () Bool)

(assert (=> bm!474456 m!6841888))

(assert (=> b!5953671 d!1866740))

(declare-fun d!1866742 () Bool)

(declare-fun c!1059831 () Bool)

(assert (=> d!1866742 (= c!1059831 ((_ is Nil!64168) lt!2313882))))

(declare-fun e!3642493 () (InoxSet Context!10762))

(assert (=> d!1866742 (= (content!11845 lt!2313882) e!3642493)))

(declare-fun b!5954474 () Bool)

(assert (=> b!5954474 (= e!3642493 ((as const (Array Context!10762 Bool)) false))))

(declare-fun b!5954475 () Bool)

(assert (=> b!5954475 (= e!3642493 ((_ map or) (store ((as const (Array Context!10762 Bool)) false) (h!70616 lt!2313882) true) (content!11845 (t!377703 lt!2313882))))))

(assert (= (and d!1866742 c!1059831) b!5954474))

(assert (= (and d!1866742 (not c!1059831)) b!5954475))

(declare-fun m!6841898 () Bool)

(assert (=> b!5954475 m!6841898))

(declare-fun m!6841900 () Bool)

(assert (=> b!5954475 m!6841900))

(assert (=> b!5953643 d!1866742))

(assert (=> bm!474351 d!1866544))

(declare-fun d!1866744 () Bool)

(assert (=> d!1866744 (= (flatMap!1510 lt!2313741 lambda!325106) (choose!44871 lt!2313741 lambda!325106))))

(declare-fun bs!1411070 () Bool)

(assert (= bs!1411070 d!1866744))

(declare-fun m!6841904 () Bool)

(assert (=> bs!1411070 m!6841904))

(assert (=> d!1866454 d!1866744))

(assert (=> d!1866286 d!1866292))

(declare-fun d!1866748 () Bool)

(assert (=> d!1866748 (= (flatMap!1510 lt!2313741 lambda!325000) (dynLambda!25107 lambda!325000 lt!2313738))))

(assert (=> d!1866748 true))

(declare-fun _$13!2757 () Unit!157265)

(assert (=> d!1866748 (= (choose!44870 lt!2313741 lt!2313738 lambda!325000) _$13!2757)))

(declare-fun b_lambda!223813 () Bool)

(assert (=> (not b_lambda!223813) (not d!1866748)))

(declare-fun bs!1411074 () Bool)

(assert (= bs!1411074 d!1866748))

(assert (=> bs!1411074 m!6840640))

(assert (=> bs!1411074 m!6840854))

(assert (=> d!1866286 d!1866748))

(assert (=> d!1866426 d!1866634))

(declare-fun b!5954479 () Bool)

(declare-fun e!3642497 () Bool)

(declare-fun e!3642502 () Bool)

(assert (=> b!5954479 (= e!3642497 e!3642502)))

(declare-fun res!2492424 () Bool)

(assert (=> b!5954479 (=> res!2492424 e!3642502)))

(declare-fun call!474462 () Bool)

(assert (=> b!5954479 (= res!2492424 call!474462)))

(declare-fun d!1866750 () Bool)

(declare-fun e!3642498 () Bool)

(assert (=> d!1866750 e!3642498))

(declare-fun c!1059835 () Bool)

(assert (=> d!1866750 (= c!1059835 ((_ is EmptyExpr!15997) (regOne!32506 r!7292)))))

(declare-fun lt!2313963 () Bool)

(declare-fun e!3642501 () Bool)

(assert (=> d!1866750 (= lt!2313963 e!3642501)))

(declare-fun c!1059833 () Bool)

(assert (=> d!1866750 (= c!1059833 (isEmpty!36053 Nil!64167))))

(assert (=> d!1866750 (validRegex!7733 (regOne!32506 r!7292))))

(assert (=> d!1866750 (= (matchR!8180 (regOne!32506 r!7292) Nil!64167) lt!2313963)))

(declare-fun bm!474457 () Bool)

(assert (=> bm!474457 (= call!474462 (isEmpty!36053 Nil!64167))))

(declare-fun b!5954480 () Bool)

(declare-fun res!2492422 () Bool)

(declare-fun e!3642499 () Bool)

(assert (=> b!5954480 (=> (not res!2492422) (not e!3642499))))

(assert (=> b!5954480 (= res!2492422 (not call!474462))))

(declare-fun b!5954481 () Bool)

(declare-fun res!2492418 () Bool)

(declare-fun e!3642500 () Bool)

(assert (=> b!5954481 (=> res!2492418 e!3642500)))

(assert (=> b!5954481 (= res!2492418 (not ((_ is ElementMatch!15997) (regOne!32506 r!7292))))))

(declare-fun e!3642496 () Bool)

(assert (=> b!5954481 (= e!3642496 e!3642500)))

(declare-fun b!5954482 () Bool)

(assert (=> b!5954482 (= e!3642498 (= lt!2313963 call!474462))))

(declare-fun b!5954483 () Bool)

(assert (=> b!5954483 (= e!3642496 (not lt!2313963))))

(declare-fun b!5954484 () Bool)

(declare-fun res!2492421 () Bool)

(assert (=> b!5954484 (=> (not res!2492421) (not e!3642499))))

(assert (=> b!5954484 (= res!2492421 (isEmpty!36053 (tail!11621 Nil!64167)))))

(declare-fun b!5954485 () Bool)

(assert (=> b!5954485 (= e!3642501 (nullable!5992 (regOne!32506 r!7292)))))

(declare-fun b!5954486 () Bool)

(assert (=> b!5954486 (= e!3642498 e!3642496)))

(declare-fun c!1059834 () Bool)

(assert (=> b!5954486 (= c!1059834 ((_ is EmptyLang!15997) (regOne!32506 r!7292)))))

(declare-fun b!5954487 () Bool)

(assert (=> b!5954487 (= e!3642499 (= (head!12536 Nil!64167) (c!1059438 (regOne!32506 r!7292))))))

(declare-fun b!5954488 () Bool)

(assert (=> b!5954488 (= e!3642502 (not (= (head!12536 Nil!64167) (c!1059438 (regOne!32506 r!7292)))))))

(declare-fun b!5954489 () Bool)

(assert (=> b!5954489 (= e!3642501 (matchR!8180 (derivativeStep!4728 (regOne!32506 r!7292) (head!12536 Nil!64167)) (tail!11621 Nil!64167)))))

(declare-fun b!5954490 () Bool)

(assert (=> b!5954490 (= e!3642500 e!3642497)))

(declare-fun res!2492419 () Bool)

(assert (=> b!5954490 (=> (not res!2492419) (not e!3642497))))

(assert (=> b!5954490 (= res!2492419 (not lt!2313963))))

(declare-fun b!5954491 () Bool)

(declare-fun res!2492423 () Bool)

(assert (=> b!5954491 (=> res!2492423 e!3642502)))

(assert (=> b!5954491 (= res!2492423 (not (isEmpty!36053 (tail!11621 Nil!64167))))))

(declare-fun b!5954492 () Bool)

(declare-fun res!2492420 () Bool)

(assert (=> b!5954492 (=> res!2492420 e!3642500)))

(assert (=> b!5954492 (= res!2492420 e!3642499)))

(declare-fun res!2492417 () Bool)

(assert (=> b!5954492 (=> (not res!2492417) (not e!3642499))))

(assert (=> b!5954492 (= res!2492417 lt!2313963)))

(assert (= (and d!1866750 c!1059833) b!5954485))

(assert (= (and d!1866750 (not c!1059833)) b!5954489))

(assert (= (and d!1866750 c!1059835) b!5954482))

(assert (= (and d!1866750 (not c!1059835)) b!5954486))

(assert (= (and b!5954486 c!1059834) b!5954483))

(assert (= (and b!5954486 (not c!1059834)) b!5954481))

(assert (= (and b!5954481 (not res!2492418)) b!5954492))

(assert (= (and b!5954492 res!2492417) b!5954480))

(assert (= (and b!5954480 res!2492422) b!5954484))

(assert (= (and b!5954484 res!2492421) b!5954487))

(assert (= (and b!5954492 (not res!2492420)) b!5954490))

(assert (= (and b!5954490 res!2492419) b!5954479))

(assert (= (and b!5954479 (not res!2492424)) b!5954491))

(assert (= (and b!5954491 (not res!2492423)) b!5954488))

(assert (= (or b!5954482 b!5954479 b!5954480) bm!474457))

(declare-fun m!6841906 () Bool)

(assert (=> b!5954489 m!6841906))

(assert (=> b!5954489 m!6841906))

(declare-fun m!6841908 () Bool)

(assert (=> b!5954489 m!6841908))

(declare-fun m!6841910 () Bool)

(assert (=> b!5954489 m!6841910))

(assert (=> b!5954489 m!6841908))

(assert (=> b!5954489 m!6841910))

(declare-fun m!6841912 () Bool)

(assert (=> b!5954489 m!6841912))

(declare-fun m!6841914 () Bool)

(assert (=> bm!474457 m!6841914))

(assert (=> b!5954484 m!6841910))

(assert (=> b!5954484 m!6841910))

(declare-fun m!6841916 () Bool)

(assert (=> b!5954484 m!6841916))

(assert (=> d!1866750 m!6841914))

(assert (=> d!1866750 m!6841284))

(assert (=> b!5954487 m!6841906))

(assert (=> b!5954491 m!6841910))

(assert (=> b!5954491 m!6841910))

(assert (=> b!5954491 m!6841916))

(assert (=> b!5954485 m!6840634))

(assert (=> b!5954488 m!6841906))

(assert (=> d!1866426 d!1866750))

(assert (=> d!1866426 d!1866648))

(declare-fun b!5954508 () Bool)

(declare-fun e!3642510 () Bool)

(declare-fun lt!2313970 () List!64291)

(assert (=> b!5954508 (= e!3642510 (or (not (= (t!377702 s!2326) Nil!64167)) (= lt!2313970 (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) Nil!64167)))))))

(declare-fun b!5954505 () Bool)

(declare-fun e!3642509 () List!64291)

(assert (=> b!5954505 (= e!3642509 (t!377702 s!2326))))

(declare-fun b!5954506 () Bool)

(assert (=> b!5954506 (= e!3642509 (Cons!64167 (h!70615 (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) Nil!64167))) (++!14094 (t!377702 (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) Nil!64167))) (t!377702 s!2326))))))

(declare-fun d!1866752 () Bool)

(assert (=> d!1866752 e!3642510))

(declare-fun res!2492430 () Bool)

(assert (=> d!1866752 (=> (not res!2492430) (not e!3642510))))

(declare-fun content!11847 (List!64291) (InoxSet C!32264))

(assert (=> d!1866752 (= res!2492430 (= (content!11847 lt!2313970) ((_ map or) (content!11847 (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) Nil!64167))) (content!11847 (t!377702 s!2326)))))))

(assert (=> d!1866752 (= lt!2313970 e!3642509)))

(declare-fun c!1059839 () Bool)

(assert (=> d!1866752 (= c!1059839 ((_ is Nil!64167) (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) Nil!64167))))))

(assert (=> d!1866752 (= (++!14094 (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) Nil!64167)) (t!377702 s!2326)) lt!2313970)))

(declare-fun b!5954507 () Bool)

(declare-fun res!2492431 () Bool)

(assert (=> b!5954507 (=> (not res!2492431) (not e!3642510))))

(declare-fun size!40158 (List!64291) Int)

(assert (=> b!5954507 (= res!2492431 (= (size!40158 lt!2313970) (+ (size!40158 (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) Nil!64167))) (size!40158 (t!377702 s!2326)))))))

(assert (= (and d!1866752 c!1059839) b!5954505))

(assert (= (and d!1866752 (not c!1059839)) b!5954506))

(assert (= (and d!1866752 res!2492430) b!5954507))

(assert (= (and b!5954507 res!2492431) b!5954508))

(declare-fun m!6841930 () Bool)

(assert (=> b!5954506 m!6841930))

(declare-fun m!6841932 () Bool)

(assert (=> d!1866752 m!6841932))

(assert (=> d!1866752 m!6841272))

(declare-fun m!6841934 () Bool)

(assert (=> d!1866752 m!6841934))

(declare-fun m!6841936 () Bool)

(assert (=> d!1866752 m!6841936))

(declare-fun m!6841938 () Bool)

(assert (=> b!5954507 m!6841938))

(assert (=> b!5954507 m!6841272))

(declare-fun m!6841940 () Bool)

(assert (=> b!5954507 m!6841940))

(declare-fun m!6841942 () Bool)

(assert (=> b!5954507 m!6841942))

(assert (=> b!5953853 d!1866752))

(declare-fun b!5954512 () Bool)

(declare-fun e!3642512 () Bool)

(declare-fun lt!2313971 () List!64291)

(assert (=> b!5954512 (= e!3642512 (or (not (= (Cons!64167 (h!70615 s!2326) Nil!64167) Nil!64167)) (= lt!2313971 Nil!64167)))))

(declare-fun b!5954509 () Bool)

(declare-fun e!3642511 () List!64291)

(assert (=> b!5954509 (= e!3642511 (Cons!64167 (h!70615 s!2326) Nil!64167))))

(declare-fun b!5954510 () Bool)

(assert (=> b!5954510 (= e!3642511 (Cons!64167 (h!70615 Nil!64167) (++!14094 (t!377702 Nil!64167) (Cons!64167 (h!70615 s!2326) Nil!64167))))))

(declare-fun d!1866758 () Bool)

(assert (=> d!1866758 e!3642512))

(declare-fun res!2492432 () Bool)

(assert (=> d!1866758 (=> (not res!2492432) (not e!3642512))))

(assert (=> d!1866758 (= res!2492432 (= (content!11847 lt!2313971) ((_ map or) (content!11847 Nil!64167) (content!11847 (Cons!64167 (h!70615 s!2326) Nil!64167)))))))

(assert (=> d!1866758 (= lt!2313971 e!3642511)))

(declare-fun c!1059840 () Bool)

(assert (=> d!1866758 (= c!1059840 ((_ is Nil!64167) Nil!64167))))

(assert (=> d!1866758 (= (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) Nil!64167)) lt!2313971)))

(declare-fun b!5954511 () Bool)

(declare-fun res!2492433 () Bool)

(assert (=> b!5954511 (=> (not res!2492433) (not e!3642512))))

(assert (=> b!5954511 (= res!2492433 (= (size!40158 lt!2313971) (+ (size!40158 Nil!64167) (size!40158 (Cons!64167 (h!70615 s!2326) Nil!64167)))))))

(assert (= (and d!1866758 c!1059840) b!5954509))

(assert (= (and d!1866758 (not c!1059840)) b!5954510))

(assert (= (and d!1866758 res!2492432) b!5954511))

(assert (= (and b!5954511 res!2492433) b!5954512))

(declare-fun m!6841944 () Bool)

(assert (=> b!5954510 m!6841944))

(declare-fun m!6841946 () Bool)

(assert (=> d!1866758 m!6841946))

(declare-fun m!6841948 () Bool)

(assert (=> d!1866758 m!6841948))

(declare-fun m!6841950 () Bool)

(assert (=> d!1866758 m!6841950))

(declare-fun m!6841952 () Bool)

(assert (=> b!5954511 m!6841952))

(declare-fun m!6841954 () Bool)

(assert (=> b!5954511 m!6841954))

(declare-fun m!6841956 () Bool)

(assert (=> b!5954511 m!6841956))

(assert (=> b!5953853 d!1866758))

(declare-fun d!1866760 () Bool)

(assert (=> d!1866760 (= (++!14094 (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) Nil!64167)) (t!377702 s!2326)) s!2326)))

(declare-fun lt!2313974 () Unit!157265)

(declare-fun choose!44885 (List!64291 C!32264 List!64291 List!64291) Unit!157265)

(assert (=> d!1866760 (= lt!2313974 (choose!44885 Nil!64167 (h!70615 s!2326) (t!377702 s!2326) s!2326))))

(assert (=> d!1866760 (= (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) (t!377702 s!2326))) s!2326)))

(assert (=> d!1866760 (= (lemmaMoveElementToOtherListKeepsConcatEq!2189 Nil!64167 (h!70615 s!2326) (t!377702 s!2326) s!2326) lt!2313974)))

(declare-fun bs!1411114 () Bool)

(assert (= bs!1411114 d!1866760))

(assert (=> bs!1411114 m!6841272))

(assert (=> bs!1411114 m!6841272))

(assert (=> bs!1411114 m!6841274))

(declare-fun m!6841970 () Bool)

(assert (=> bs!1411114 m!6841970))

(declare-fun m!6841972 () Bool)

(assert (=> bs!1411114 m!6841972))

(assert (=> b!5953853 d!1866760))

(declare-fun b!5954513 () Bool)

(declare-fun res!2492435 () Bool)

(declare-fun e!3642514 () Bool)

(assert (=> b!5954513 (=> (not res!2492435) (not e!3642514))))

(declare-fun lt!2313976 () Option!15888)

(assert (=> b!5954513 (= res!2492435 (matchR!8180 (regTwo!32506 r!7292) (_2!36279 (get!22108 lt!2313976))))))

(declare-fun d!1866764 () Bool)

(declare-fun e!3642515 () Bool)

(assert (=> d!1866764 e!3642515))

(declare-fun res!2492437 () Bool)

(assert (=> d!1866764 (=> res!2492437 e!3642515)))

(assert (=> d!1866764 (= res!2492437 e!3642514)))

(declare-fun res!2492434 () Bool)

(assert (=> d!1866764 (=> (not res!2492434) (not e!3642514))))

(assert (=> d!1866764 (= res!2492434 (isDefined!12591 lt!2313976))))

(declare-fun e!3642513 () Option!15888)

(assert (=> d!1866764 (= lt!2313976 e!3642513)))

(declare-fun c!1059842 () Bool)

(declare-fun e!3642517 () Bool)

(assert (=> d!1866764 (= c!1059842 e!3642517)))

(declare-fun res!2492438 () Bool)

(assert (=> d!1866764 (=> (not res!2492438) (not e!3642517))))

(assert (=> d!1866764 (= res!2492438 (matchR!8180 (regOne!32506 r!7292) (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) Nil!64167))))))

(assert (=> d!1866764 (validRegex!7733 (regOne!32506 r!7292))))

(assert (=> d!1866764 (= (findConcatSeparation!2302 (regOne!32506 r!7292) (regTwo!32506 r!7292) (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) Nil!64167)) (t!377702 s!2326) s!2326) lt!2313976)))

(declare-fun b!5954514 () Bool)

(assert (=> b!5954514 (= e!3642517 (matchR!8180 (regTwo!32506 r!7292) (t!377702 s!2326)))))

(declare-fun b!5954515 () Bool)

(assert (=> b!5954515 (= e!3642514 (= (++!14094 (_1!36279 (get!22108 lt!2313976)) (_2!36279 (get!22108 lt!2313976))) s!2326))))

(declare-fun b!5954516 () Bool)

(assert (=> b!5954516 (= e!3642513 (Some!15887 (tuple2!65953 (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) Nil!64167)) (t!377702 s!2326))))))

(declare-fun b!5954517 () Bool)

(declare-fun e!3642516 () Option!15888)

(assert (=> b!5954517 (= e!3642513 e!3642516)))

(declare-fun c!1059841 () Bool)

(assert (=> b!5954517 (= c!1059841 ((_ is Nil!64167) (t!377702 s!2326)))))

(declare-fun b!5954518 () Bool)

(declare-fun lt!2313975 () Unit!157265)

(declare-fun lt!2313977 () Unit!157265)

(assert (=> b!5954518 (= lt!2313975 lt!2313977)))

(assert (=> b!5954518 (= (++!14094 (++!14094 (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) Nil!64167)) (Cons!64167 (h!70615 (t!377702 s!2326)) Nil!64167)) (t!377702 (t!377702 s!2326))) s!2326)))

(assert (=> b!5954518 (= lt!2313977 (lemmaMoveElementToOtherListKeepsConcatEq!2189 (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) Nil!64167)) (h!70615 (t!377702 s!2326)) (t!377702 (t!377702 s!2326)) s!2326))))

(assert (=> b!5954518 (= e!3642516 (findConcatSeparation!2302 (regOne!32506 r!7292) (regTwo!32506 r!7292) (++!14094 (++!14094 Nil!64167 (Cons!64167 (h!70615 s!2326) Nil!64167)) (Cons!64167 (h!70615 (t!377702 s!2326)) Nil!64167)) (t!377702 (t!377702 s!2326)) s!2326))))

(declare-fun b!5954519 () Bool)

(assert (=> b!5954519 (= e!3642516 None!15887)))

(declare-fun b!5954520 () Bool)

(declare-fun res!2492436 () Bool)

(assert (=> b!5954520 (=> (not res!2492436) (not e!3642514))))

(assert (=> b!5954520 (= res!2492436 (matchR!8180 (regOne!32506 r!7292) (_1!36279 (get!22108 lt!2313976))))))

(declare-fun b!5954521 () Bool)

(assert (=> b!5954521 (= e!3642515 (not (isDefined!12591 lt!2313976)))))

(assert (= (and d!1866764 res!2492438) b!5954514))

(assert (= (and d!1866764 c!1059842) b!5954516))

(assert (= (and d!1866764 (not c!1059842)) b!5954517))

(assert (= (and b!5954517 c!1059841) b!5954519))

(assert (= (and b!5954517 (not c!1059841)) b!5954518))

(assert (= (and d!1866764 res!2492434) b!5954520))

(assert (= (and b!5954520 res!2492436) b!5954513))

(assert (= (and b!5954513 res!2492435) b!5954515))

(assert (= (and d!1866764 (not res!2492437)) b!5954521))

(declare-fun m!6841974 () Bool)

(assert (=> b!5954513 m!6841974))

(declare-fun m!6841976 () Bool)

(assert (=> b!5954513 m!6841976))

(assert (=> b!5954518 m!6841272))

(declare-fun m!6841978 () Bool)

(assert (=> b!5954518 m!6841978))

(assert (=> b!5954518 m!6841978))

(declare-fun m!6841980 () Bool)

(assert (=> b!5954518 m!6841980))

(assert (=> b!5954518 m!6841272))

(declare-fun m!6841982 () Bool)

(assert (=> b!5954518 m!6841982))

(assert (=> b!5954518 m!6841978))

(declare-fun m!6841984 () Bool)

(assert (=> b!5954518 m!6841984))

(declare-fun m!6841986 () Bool)

(assert (=> d!1866764 m!6841986))

(assert (=> d!1866764 m!6841272))

(declare-fun m!6841988 () Bool)

(assert (=> d!1866764 m!6841988))

(assert (=> d!1866764 m!6841284))

(assert (=> b!5954521 m!6841986))

(assert (=> b!5954520 m!6841974))

(declare-fun m!6841990 () Bool)

(assert (=> b!5954520 m!6841990))

(declare-fun m!6841992 () Bool)

(assert (=> b!5954514 m!6841992))

(assert (=> b!5954515 m!6841974))

(declare-fun m!6841994 () Bool)

(assert (=> b!5954515 m!6841994))

(assert (=> b!5953853 d!1866764))

(declare-fun bm!474458 () Bool)

(declare-fun call!474464 () Bool)

(declare-fun call!474463 () Bool)

(assert (=> bm!474458 (= call!474464 call!474463)))

(declare-fun call!474465 () Bool)

(declare-fun c!1059846 () Bool)

(declare-fun bm!474459 () Bool)

(assert (=> bm!474459 (= call!474465 (validRegex!7733 (ite c!1059846 (regTwo!32507 (ite c!1059582 (regTwo!32507 r!7292) (regTwo!32506 r!7292))) (regTwo!32506 (ite c!1059582 (regTwo!32507 r!7292) (regTwo!32506 r!7292))))))))

(declare-fun b!5954525 () Bool)

(declare-fun res!2492440 () Bool)

(declare-fun e!3642521 () Bool)

(assert (=> b!5954525 (=> res!2492440 e!3642521)))

(assert (=> b!5954525 (= res!2492440 (not ((_ is Concat!24842) (ite c!1059582 (regTwo!32507 r!7292) (regTwo!32506 r!7292)))))))

(declare-fun e!3642523 () Bool)

(assert (=> b!5954525 (= e!3642523 e!3642521)))

(declare-fun c!1059845 () Bool)

(declare-fun bm!474460 () Bool)

(assert (=> bm!474460 (= call!474463 (validRegex!7733 (ite c!1059845 (reg!16326 (ite c!1059582 (regTwo!32507 r!7292) (regTwo!32506 r!7292))) (ite c!1059846 (regOne!32507 (ite c!1059582 (regTwo!32507 r!7292) (regTwo!32506 r!7292))) (regOne!32506 (ite c!1059582 (regTwo!32507 r!7292) (regTwo!32506 r!7292)))))))))

(declare-fun b!5954527 () Bool)

(declare-fun e!3642522 () Bool)

(declare-fun e!3642519 () Bool)

(assert (=> b!5954527 (= e!3642522 e!3642519)))

(declare-fun res!2492442 () Bool)

(assert (=> b!5954527 (= res!2492442 (not (nullable!5992 (reg!16326 (ite c!1059582 (regTwo!32507 r!7292) (regTwo!32506 r!7292))))))))

(assert (=> b!5954527 (=> (not res!2492442) (not e!3642519))))

(declare-fun b!5954528 () Bool)

(declare-fun e!3642520 () Bool)

(assert (=> b!5954528 (= e!3642520 call!474465)))

(declare-fun b!5954529 () Bool)

(assert (=> b!5954529 (= e!3642522 e!3642523)))

(assert (=> b!5954529 (= c!1059846 ((_ is Union!15997) (ite c!1059582 (regTwo!32507 r!7292) (regTwo!32506 r!7292))))))

(declare-fun b!5954530 () Bool)

(assert (=> b!5954530 (= e!3642519 call!474463)))

(declare-fun b!5954531 () Bool)

(declare-fun e!3642524 () Bool)

(assert (=> b!5954531 (= e!3642524 e!3642522)))

(assert (=> b!5954531 (= c!1059845 ((_ is Star!15997) (ite c!1059582 (regTwo!32507 r!7292) (regTwo!32506 r!7292))))))

(declare-fun b!5954532 () Bool)

(declare-fun e!3642518 () Bool)

(assert (=> b!5954532 (= e!3642521 e!3642518)))

(declare-fun res!2492441 () Bool)

(assert (=> b!5954532 (=> (not res!2492441) (not e!3642518))))

(assert (=> b!5954532 (= res!2492441 call!474464)))

(declare-fun b!5954533 () Bool)

(declare-fun res!2492439 () Bool)

(assert (=> b!5954533 (=> (not res!2492439) (not e!3642520))))

(assert (=> b!5954533 (= res!2492439 call!474464)))

(assert (=> b!5954533 (= e!3642523 e!3642520)))

(declare-fun b!5954526 () Bool)

(assert (=> b!5954526 (= e!3642518 call!474465)))

(declare-fun d!1866766 () Bool)

(declare-fun res!2492443 () Bool)

(assert (=> d!1866766 (=> res!2492443 e!3642524)))

(assert (=> d!1866766 (= res!2492443 ((_ is ElementMatch!15997) (ite c!1059582 (regTwo!32507 r!7292) (regTwo!32506 r!7292))))))

(assert (=> d!1866766 (= (validRegex!7733 (ite c!1059582 (regTwo!32507 r!7292) (regTwo!32506 r!7292))) e!3642524)))

(assert (= (and d!1866766 (not res!2492443)) b!5954531))

(assert (= (and b!5954531 c!1059845) b!5954527))

(assert (= (and b!5954531 (not c!1059845)) b!5954529))

(assert (= (and b!5954527 res!2492442) b!5954530))

(assert (= (and b!5954529 c!1059846) b!5954533))

(assert (= (and b!5954529 (not c!1059846)) b!5954525))

(assert (= (and b!5954533 res!2492439) b!5954528))

(assert (= (and b!5954525 (not res!2492440)) b!5954532))

(assert (= (and b!5954532 res!2492441) b!5954526))

(assert (= (or b!5954528 b!5954526) bm!474459))

(assert (= (or b!5954533 b!5954532) bm!474458))

(assert (= (or b!5954530 bm!474458) bm!474460))

(declare-fun m!6841996 () Bool)

(assert (=> bm!474459 m!6841996))

(declare-fun m!6841998 () Bool)

(assert (=> bm!474460 m!6841998))

(declare-fun m!6842000 () Bool)

(assert (=> b!5954527 m!6842000))

(assert (=> bm!474300 d!1866766))

(declare-fun d!1866768 () Bool)

(declare-fun c!1059847 () Bool)

(assert (=> d!1866768 (= c!1059847 (isEmpty!36053 (tail!11621 (t!377702 s!2326))))))

(declare-fun e!3642525 () Bool)

(assert (=> d!1866768 (= (matchZipper!2033 (derivationStepZipper!1978 (derivationStepZipper!1978 lt!2313741 (h!70615 s!2326)) (head!12536 (t!377702 s!2326))) (tail!11621 (t!377702 s!2326))) e!3642525)))

(declare-fun b!5954534 () Bool)

(assert (=> b!5954534 (= e!3642525 (nullableZipper!1804 (derivationStepZipper!1978 (derivationStepZipper!1978 lt!2313741 (h!70615 s!2326)) (head!12536 (t!377702 s!2326)))))))

(declare-fun b!5954535 () Bool)

(assert (=> b!5954535 (= e!3642525 (matchZipper!2033 (derivationStepZipper!1978 (derivationStepZipper!1978 (derivationStepZipper!1978 lt!2313741 (h!70615 s!2326)) (head!12536 (t!377702 s!2326))) (head!12536 (tail!11621 (t!377702 s!2326)))) (tail!11621 (tail!11621 (t!377702 s!2326)))))))

(assert (= (and d!1866768 c!1059847) b!5954534))

(assert (= (and d!1866768 (not c!1059847)) b!5954535))

(assert (=> d!1866768 m!6840980))

(assert (=> d!1866768 m!6841508))

(assert (=> b!5954534 m!6841322))

(declare-fun m!6842006 () Bool)

(assert (=> b!5954534 m!6842006))

(assert (=> b!5954535 m!6840980))

(assert (=> b!5954535 m!6841512))

(assert (=> b!5954535 m!6841322))

(assert (=> b!5954535 m!6841512))

(declare-fun m!6842008 () Bool)

(assert (=> b!5954535 m!6842008))

(assert (=> b!5954535 m!6840980))

(assert (=> b!5954535 m!6841516))

(assert (=> b!5954535 m!6842008))

(assert (=> b!5954535 m!6841516))

(declare-fun m!6842010 () Bool)

(assert (=> b!5954535 m!6842010))

(assert (=> b!5953874 d!1866768))

(declare-fun bs!1411125 () Bool)

(declare-fun d!1866772 () Bool)

(assert (= bs!1411125 (and d!1866772 d!1866596)))

(declare-fun lambda!325171 () Int)

(assert (=> bs!1411125 (= lambda!325171 lambda!325133)))

(declare-fun bs!1411127 () Bool)

(assert (= bs!1411127 (and d!1866772 d!1866556)))

(assert (=> bs!1411127 (= (= (head!12536 (t!377702 s!2326)) (head!12536 s!2326)) (= lambda!325171 lambda!325129))))

(declare-fun bs!1411128 () Bool)

(assert (= bs!1411128 (and d!1866772 d!1866698)))

(assert (=> bs!1411128 (= lambda!325171 lambda!325156)))

(declare-fun bs!1411129 () Bool)

(assert (= bs!1411129 (and d!1866772 d!1866386)))

(assert (=> bs!1411129 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325171 lambda!325084))))

(declare-fun bs!1411130 () Bool)

(assert (= bs!1411130 (and d!1866772 d!1866684)))

(assert (=> bs!1411130 (= lambda!325171 lambda!325153)))

(declare-fun bs!1411131 () Bool)

(assert (= bs!1411131 (and d!1866772 d!1866326)))

(assert (=> bs!1411131 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325171 lambda!325065))))

(declare-fun bs!1411132 () Bool)

(assert (= bs!1411132 (and d!1866772 d!1866454)))

(assert (=> bs!1411132 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325171 lambda!325106))))

(declare-fun bs!1411133 () Bool)

(assert (= bs!1411133 (and d!1866772 d!1866566)))

(assert (=> bs!1411133 (= lambda!325171 lambda!325130)))

(declare-fun bs!1411134 () Bool)

(assert (= bs!1411134 (and d!1866772 b!5953147)))

(assert (=> bs!1411134 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325171 lambda!325000))))

(assert (=> d!1866772 true))

(assert (=> d!1866772 (= (derivationStepZipper!1978 (derivationStepZipper!1978 lt!2313741 (h!70615 s!2326)) (head!12536 (t!377702 s!2326))) (flatMap!1510 (derivationStepZipper!1978 lt!2313741 (h!70615 s!2326)) lambda!325171))))

(declare-fun bs!1411135 () Bool)

(assert (= bs!1411135 d!1866772))

(assert (=> bs!1411135 m!6840686))

(declare-fun m!6842020 () Bool)

(assert (=> bs!1411135 m!6842020))

(assert (=> b!5953874 d!1866772))

(assert (=> b!5953874 d!1866568))

(assert (=> b!5953874 d!1866570))

(declare-fun d!1866780 () Bool)

(assert (=> d!1866780 (= (nullable!5992 (reg!16326 r!7292)) (nullableFct!1963 (reg!16326 r!7292)))))

(declare-fun bs!1411136 () Bool)

(assert (= bs!1411136 d!1866780))

(declare-fun m!6842022 () Bool)

(assert (=> bs!1411136 m!6842022))

(assert (=> b!5953534 d!1866780))

(declare-fun bm!474461 () Bool)

(declare-fun call!474467 () Bool)

(declare-fun call!474466 () Bool)

(assert (=> bm!474461 (= call!474467 call!474466)))

(declare-fun bm!474462 () Bool)

(declare-fun call!474468 () Bool)

(declare-fun c!1059849 () Bool)

(assert (=> bm!474462 (= call!474468 (validRegex!7733 (ite c!1059849 (regTwo!32507 lt!2313879) (regTwo!32506 lt!2313879))))))

(declare-fun b!5954538 () Bool)

(declare-fun res!2492447 () Bool)

(declare-fun e!3642531 () Bool)

(assert (=> b!5954538 (=> res!2492447 e!3642531)))

(assert (=> b!5954538 (= res!2492447 (not ((_ is Concat!24842) lt!2313879)))))

(declare-fun e!3642533 () Bool)

(assert (=> b!5954538 (= e!3642533 e!3642531)))

(declare-fun bm!474463 () Bool)

(declare-fun c!1059848 () Bool)

(assert (=> bm!474463 (= call!474466 (validRegex!7733 (ite c!1059848 (reg!16326 lt!2313879) (ite c!1059849 (regOne!32507 lt!2313879) (regOne!32506 lt!2313879)))))))

(declare-fun b!5954540 () Bool)

(declare-fun e!3642532 () Bool)

(declare-fun e!3642529 () Bool)

(assert (=> b!5954540 (= e!3642532 e!3642529)))

(declare-fun res!2492449 () Bool)

(assert (=> b!5954540 (= res!2492449 (not (nullable!5992 (reg!16326 lt!2313879))))))

(assert (=> b!5954540 (=> (not res!2492449) (not e!3642529))))

(declare-fun b!5954541 () Bool)

(declare-fun e!3642530 () Bool)

(assert (=> b!5954541 (= e!3642530 call!474468)))

(declare-fun b!5954542 () Bool)

(assert (=> b!5954542 (= e!3642532 e!3642533)))

(assert (=> b!5954542 (= c!1059849 ((_ is Union!15997) lt!2313879))))

(declare-fun b!5954543 () Bool)

(assert (=> b!5954543 (= e!3642529 call!474466)))

(declare-fun b!5954544 () Bool)

(declare-fun e!3642534 () Bool)

(assert (=> b!5954544 (= e!3642534 e!3642532)))

(assert (=> b!5954544 (= c!1059848 ((_ is Star!15997) lt!2313879))))

(declare-fun b!5954545 () Bool)

(declare-fun e!3642528 () Bool)

(assert (=> b!5954545 (= e!3642531 e!3642528)))

(declare-fun res!2492448 () Bool)

(assert (=> b!5954545 (=> (not res!2492448) (not e!3642528))))

(assert (=> b!5954545 (= res!2492448 call!474467)))

(declare-fun b!5954546 () Bool)

(declare-fun res!2492446 () Bool)

(assert (=> b!5954546 (=> (not res!2492446) (not e!3642530))))

(assert (=> b!5954546 (= res!2492446 call!474467)))

(assert (=> b!5954546 (= e!3642533 e!3642530)))

(declare-fun b!5954539 () Bool)

(assert (=> b!5954539 (= e!3642528 call!474468)))

(declare-fun d!1866782 () Bool)

(declare-fun res!2492450 () Bool)

(assert (=> d!1866782 (=> res!2492450 e!3642534)))

(assert (=> d!1866782 (= res!2492450 ((_ is ElementMatch!15997) lt!2313879))))

(assert (=> d!1866782 (= (validRegex!7733 lt!2313879) e!3642534)))

(assert (= (and d!1866782 (not res!2492450)) b!5954544))

(assert (= (and b!5954544 c!1059848) b!5954540))

(assert (= (and b!5954544 (not c!1059848)) b!5954542))

(assert (= (and b!5954540 res!2492449) b!5954543))

(assert (= (and b!5954542 c!1059849) b!5954546))

(assert (= (and b!5954542 (not c!1059849)) b!5954538))

(assert (= (and b!5954546 res!2492446) b!5954541))

(assert (= (and b!5954538 (not res!2492447)) b!5954545))

(assert (= (and b!5954545 res!2492448) b!5954539))

(assert (= (or b!5954541 b!5954539) bm!474462))

(assert (= (or b!5954546 b!5954545) bm!474461))

(assert (= (or b!5954543 bm!474461) bm!474463))

(declare-fun m!6842024 () Bool)

(assert (=> bm!474462 m!6842024))

(declare-fun m!6842026 () Bool)

(assert (=> bm!474463 m!6842026))

(declare-fun m!6842028 () Bool)

(assert (=> b!5954540 m!6842028))

(assert (=> d!1866390 d!1866782))

(assert (=> d!1866390 d!1866304))

(assert (=> d!1866390 d!1866308))

(declare-fun bm!474464 () Bool)

(declare-fun call!474470 () Bool)

(declare-fun call!474469 () Bool)

(assert (=> bm!474464 (= call!474470 call!474469)))

(declare-fun bm!474465 () Bool)

(declare-fun call!474471 () Bool)

(declare-fun c!1059851 () Bool)

(assert (=> bm!474465 (= call!474471 (validRegex!7733 (ite c!1059851 (regTwo!32507 lt!2313823) (regTwo!32506 lt!2313823))))))

(declare-fun b!5954547 () Bool)

(declare-fun res!2492452 () Bool)

(declare-fun e!3642538 () Bool)

(assert (=> b!5954547 (=> res!2492452 e!3642538)))

(assert (=> b!5954547 (= res!2492452 (not ((_ is Concat!24842) lt!2313823)))))

(declare-fun e!3642540 () Bool)

(assert (=> b!5954547 (= e!3642540 e!3642538)))

(declare-fun bm!474466 () Bool)

(declare-fun c!1059850 () Bool)

(assert (=> bm!474466 (= call!474469 (validRegex!7733 (ite c!1059850 (reg!16326 lt!2313823) (ite c!1059851 (regOne!32507 lt!2313823) (regOne!32506 lt!2313823)))))))

(declare-fun b!5954549 () Bool)

(declare-fun e!3642539 () Bool)

(declare-fun e!3642536 () Bool)

(assert (=> b!5954549 (= e!3642539 e!3642536)))

(declare-fun res!2492454 () Bool)

(assert (=> b!5954549 (= res!2492454 (not (nullable!5992 (reg!16326 lt!2313823))))))

(assert (=> b!5954549 (=> (not res!2492454) (not e!3642536))))

(declare-fun b!5954550 () Bool)

(declare-fun e!3642537 () Bool)

(assert (=> b!5954550 (= e!3642537 call!474471)))

(declare-fun b!5954551 () Bool)

(assert (=> b!5954551 (= e!3642539 e!3642540)))

(assert (=> b!5954551 (= c!1059851 ((_ is Union!15997) lt!2313823))))

(declare-fun b!5954552 () Bool)

(assert (=> b!5954552 (= e!3642536 call!474469)))

(declare-fun b!5954553 () Bool)

(declare-fun e!3642541 () Bool)

(assert (=> b!5954553 (= e!3642541 e!3642539)))

(assert (=> b!5954553 (= c!1059850 ((_ is Star!15997) lt!2313823))))

(declare-fun b!5954554 () Bool)

(declare-fun e!3642535 () Bool)

(assert (=> b!5954554 (= e!3642538 e!3642535)))

(declare-fun res!2492453 () Bool)

(assert (=> b!5954554 (=> (not res!2492453) (not e!3642535))))

(assert (=> b!5954554 (= res!2492453 call!474470)))

(declare-fun b!5954555 () Bool)

(declare-fun res!2492451 () Bool)

(assert (=> b!5954555 (=> (not res!2492451) (not e!3642537))))

(assert (=> b!5954555 (= res!2492451 call!474470)))

(assert (=> b!5954555 (= e!3642540 e!3642537)))

(declare-fun b!5954548 () Bool)

(assert (=> b!5954548 (= e!3642535 call!474471)))

(declare-fun d!1866784 () Bool)

(declare-fun res!2492455 () Bool)

(assert (=> d!1866784 (=> res!2492455 e!3642541)))

(assert (=> d!1866784 (= res!2492455 ((_ is ElementMatch!15997) lt!2313823))))

(assert (=> d!1866784 (= (validRegex!7733 lt!2313823) e!3642541)))

(assert (= (and d!1866784 (not res!2492455)) b!5954553))

(assert (= (and b!5954553 c!1059850) b!5954549))

(assert (= (and b!5954553 (not c!1059850)) b!5954551))

(assert (= (and b!5954549 res!2492454) b!5954552))

(assert (= (and b!5954551 c!1059851) b!5954555))

(assert (= (and b!5954551 (not c!1059851)) b!5954547))

(assert (= (and b!5954555 res!2492451) b!5954550))

(assert (= (and b!5954547 (not res!2492452)) b!5954554))

(assert (= (and b!5954554 res!2492453) b!5954548))

(assert (= (or b!5954550 b!5954548) bm!474465))

(assert (= (or b!5954555 b!5954554) bm!474464))

(assert (= (or b!5954552 bm!474464) bm!474466))

(declare-fun m!6842030 () Bool)

(assert (=> bm!474465 m!6842030))

(declare-fun m!6842032 () Bool)

(assert (=> bm!474466 m!6842032))

(declare-fun m!6842034 () Bool)

(assert (=> b!5954549 m!6842034))

(assert (=> d!1866304 d!1866784))

(declare-fun d!1866786 () Bool)

(declare-fun res!2492456 () Bool)

(declare-fun e!3642542 () Bool)

(assert (=> d!1866786 (=> res!2492456 e!3642542)))

(assert (=> d!1866786 (= res!2492456 ((_ is Nil!64166) (unfocusZipperList!1418 zl!343)))))

(assert (=> d!1866786 (= (forall!15085 (unfocusZipperList!1418 zl!343) lambda!325035) e!3642542)))

(declare-fun b!5954556 () Bool)

(declare-fun e!3642543 () Bool)

(assert (=> b!5954556 (= e!3642542 e!3642543)))

(declare-fun res!2492457 () Bool)

(assert (=> b!5954556 (=> (not res!2492457) (not e!3642543))))

(assert (=> b!5954556 (= res!2492457 (dynLambda!25109 lambda!325035 (h!70614 (unfocusZipperList!1418 zl!343))))))

(declare-fun b!5954557 () Bool)

(assert (=> b!5954557 (= e!3642543 (forall!15085 (t!377701 (unfocusZipperList!1418 zl!343)) lambda!325035))))

(assert (= (and d!1866786 (not res!2492456)) b!5954556))

(assert (= (and b!5954556 res!2492457) b!5954557))

(declare-fun b_lambda!223817 () Bool)

(assert (=> (not b_lambda!223817) (not b!5954556)))

(declare-fun m!6842036 () Bool)

(assert (=> b!5954556 m!6842036))

(declare-fun m!6842038 () Bool)

(assert (=> b!5954557 m!6842038))

(assert (=> d!1866304 d!1866786))

(declare-fun d!1866788 () Bool)

(declare-fun res!2492458 () Bool)

(declare-fun e!3642544 () Bool)

(assert (=> d!1866788 (=> res!2492458 e!3642544)))

(assert (=> d!1866788 (= res!2492458 ((_ is Nil!64166) (t!377701 (exprs!5881 lt!2313738))))))

(assert (=> d!1866788 (= (forall!15085 (t!377701 (exprs!5881 lt!2313738)) lambda!325082) e!3642544)))

(declare-fun b!5954558 () Bool)

(declare-fun e!3642545 () Bool)

(assert (=> b!5954558 (= e!3642544 e!3642545)))

(declare-fun res!2492459 () Bool)

(assert (=> b!5954558 (=> (not res!2492459) (not e!3642545))))

(assert (=> b!5954558 (= res!2492459 (dynLambda!25109 lambda!325082 (h!70614 (t!377701 (exprs!5881 lt!2313738)))))))

(declare-fun b!5954559 () Bool)

(assert (=> b!5954559 (= e!3642545 (forall!15085 (t!377701 (t!377701 (exprs!5881 lt!2313738))) lambda!325082))))

(assert (= (and d!1866788 (not res!2492458)) b!5954558))

(assert (= (and b!5954558 res!2492459) b!5954559))

(declare-fun b_lambda!223819 () Bool)

(assert (=> (not b_lambda!223819) (not b!5954558)))

(declare-fun m!6842040 () Bool)

(assert (=> b!5954558 m!6842040))

(declare-fun m!6842042 () Bool)

(assert (=> b!5954559 m!6842042))

(assert (=> b!5953590 d!1866788))

(declare-fun bs!1411137 () Bool)

(declare-fun b!5954560 () Bool)

(assert (= bs!1411137 (and b!5954560 d!1866308)))

(declare-fun lambda!325172 () Int)

(assert (=> bs!1411137 (not (= lambda!325172 lambda!325043))))

(declare-fun bs!1411138 () Bool)

(assert (= bs!1411138 (and b!5954560 d!1866676)))

(assert (=> bs!1411138 (not (= lambda!325172 lambda!325152))))

(declare-fun bs!1411139 () Bool)

(assert (= bs!1411139 (and b!5954560 b!5954416)))

(declare-fun lt!2313984 () Int)

(assert (=> bs!1411139 (= (= lt!2313984 lt!2313953) (= lambda!325172 lambda!325159))))

(declare-fun bs!1411140 () Bool)

(assert (= bs!1411140 (and b!5954560 b!5954093)))

(assert (=> bs!1411140 (= (= lt!2313984 lt!2313926) (= lambda!325172 lambda!325119))))

(declare-fun bs!1411141 () Bool)

(assert (= bs!1411141 (and b!5954560 d!1866304)))

(assert (=> bs!1411141 (not (= lambda!325172 lambda!325035))))

(declare-fun bs!1411142 () Bool)

(assert (= bs!1411142 (and b!5954560 d!1866302)))

(assert (=> bs!1411142 (not (= lambda!325172 lambda!325029))))

(declare-fun bs!1411143 () Bool)

(assert (= bs!1411143 (and b!5954560 d!1866504)))

(assert (=> bs!1411143 (= (= lt!2313984 lt!2313867) (= lambda!325172 lambda!325122))))

(declare-fun bs!1411144 () Bool)

(assert (= bs!1411144 (and b!5954560 d!1866492)))

(assert (=> bs!1411144 (not (= lambda!325172 lambda!325117))))

(declare-fun bs!1411145 () Bool)

(assert (= bs!1411145 (and b!5954560 b!5953592)))

(assert (=> bs!1411145 (= (= lt!2313984 lt!2313869) (= lambda!325172 lambda!325083))))

(declare-fun bs!1411146 () Bool)

(assert (= bs!1411146 (and b!5954560 d!1866344)))

(assert (=> bs!1411146 (not (= lambda!325172 lambda!325073))))

(declare-fun bs!1411147 () Bool)

(assert (= bs!1411147 (and b!5954560 b!5953646)))

(assert (=> bs!1411147 (= (= lt!2313984 lt!2313884) (= lambda!325172 lambda!325086))))

(declare-fun bs!1411148 () Bool)

(assert (= bs!1411148 (and b!5954560 b!5953644)))

(assert (=> bs!1411148 (= (= lt!2313984 lt!2313886) (= lambda!325172 lambda!325085))))

(declare-fun bs!1411149 () Bool)

(assert (= bs!1411149 (and b!5954560 b!5953590)))

(assert (=> bs!1411149 (= (= lt!2313984 lt!2313871) (= lambda!325172 lambda!325082))))

(declare-fun bs!1411150 () Bool)

(assert (= bs!1411150 (and b!5954560 b!5954206)))

(assert (=> bs!1411150 (= (= lt!2313984 lt!2313934) (= lambda!325172 lambda!325136))))

(declare-fun bs!1411151 () Bool)

(assert (= bs!1411151 (and b!5954560 b!5954414)))

(assert (=> bs!1411151 (= (= lt!2313984 lt!2313955) (= lambda!325172 lambda!325158))))

(declare-fun bs!1411152 () Bool)

(assert (= bs!1411152 (and b!5954560 b!5953582)))

(assert (=> bs!1411152 (= (= lt!2313984 lt!2313865) (= lambda!325172 lambda!325081))))

(declare-fun bs!1411153 () Bool)

(assert (= bs!1411153 (and b!5954560 d!1866628)))

(assert (=> bs!1411153 (not (= lambda!325172 lambda!325143))))

(declare-fun bs!1411154 () Bool)

(assert (= bs!1411154 (and b!5954560 d!1866576)))

(assert (=> bs!1411154 (not (= lambda!325172 lambda!325131))))

(declare-fun bs!1411155 () Bool)

(assert (= bs!1411155 (and b!5954560 d!1866722)))

(assert (=> bs!1411155 (= (= lt!2313984 lt!2313886) (= lambda!325172 lambda!325161))))

(declare-fun bs!1411156 () Bool)

(assert (= bs!1411156 (and b!5954560 d!1866300)))

(assert (=> bs!1411156 (not (= lambda!325172 lambda!325028))))

(declare-fun bs!1411157 () Bool)

(assert (= bs!1411157 (and b!5954560 b!5954091)))

(assert (=> bs!1411157 (= (= lt!2313984 lt!2313928) (= lambda!325172 lambda!325118))))

(declare-fun bs!1411158 () Bool)

(assert (= bs!1411158 (and b!5954560 d!1866328)))

(assert (=> bs!1411158 (not (= lambda!325172 lambda!325068))))

(declare-fun bs!1411159 () Bool)

(assert (= bs!1411159 (and b!5954560 b!5954204)))

(assert (=> bs!1411159 (= (= lt!2313984 lt!2313936) (= lambda!325172 lambda!325135))))

(declare-fun bs!1411160 () Bool)

(assert (= bs!1411160 (and b!5954560 b!5953580)))

(assert (=> bs!1411160 (= (= lt!2313984 lt!2313867) (= lambda!325172 lambda!325080))))

(assert (=> b!5954560 true))

(declare-fun bs!1411161 () Bool)

(declare-fun b!5954562 () Bool)

(assert (= bs!1411161 (and b!5954562 d!1866308)))

(declare-fun lambda!325175 () Int)

(assert (=> bs!1411161 (not (= lambda!325175 lambda!325043))))

(declare-fun bs!1411162 () Bool)

(assert (= bs!1411162 (and b!5954562 b!5954560)))

(declare-fun lt!2313982 () Int)

(assert (=> bs!1411162 (= (= lt!2313982 lt!2313984) (= lambda!325175 lambda!325172))))

(declare-fun bs!1411163 () Bool)

(assert (= bs!1411163 (and b!5954562 d!1866676)))

(assert (=> bs!1411163 (not (= lambda!325175 lambda!325152))))

(declare-fun bs!1411164 () Bool)

(assert (= bs!1411164 (and b!5954562 b!5954416)))

(assert (=> bs!1411164 (= (= lt!2313982 lt!2313953) (= lambda!325175 lambda!325159))))

(declare-fun bs!1411165 () Bool)

(assert (= bs!1411165 (and b!5954562 b!5954093)))

(assert (=> bs!1411165 (= (= lt!2313982 lt!2313926) (= lambda!325175 lambda!325119))))

(declare-fun bs!1411166 () Bool)

(assert (= bs!1411166 (and b!5954562 d!1866304)))

(assert (=> bs!1411166 (not (= lambda!325175 lambda!325035))))

(declare-fun bs!1411167 () Bool)

(assert (= bs!1411167 (and b!5954562 d!1866302)))

(assert (=> bs!1411167 (not (= lambda!325175 lambda!325029))))

(declare-fun bs!1411168 () Bool)

(assert (= bs!1411168 (and b!5954562 d!1866504)))

(assert (=> bs!1411168 (= (= lt!2313982 lt!2313867) (= lambda!325175 lambda!325122))))

(declare-fun bs!1411169 () Bool)

(assert (= bs!1411169 (and b!5954562 d!1866492)))

(assert (=> bs!1411169 (not (= lambda!325175 lambda!325117))))

(declare-fun bs!1411170 () Bool)

(assert (= bs!1411170 (and b!5954562 b!5953592)))

(assert (=> bs!1411170 (= (= lt!2313982 lt!2313869) (= lambda!325175 lambda!325083))))

(declare-fun bs!1411171 () Bool)

(assert (= bs!1411171 (and b!5954562 d!1866344)))

(assert (=> bs!1411171 (not (= lambda!325175 lambda!325073))))

(declare-fun bs!1411172 () Bool)

(assert (= bs!1411172 (and b!5954562 b!5953646)))

(assert (=> bs!1411172 (= (= lt!2313982 lt!2313884) (= lambda!325175 lambda!325086))))

(declare-fun bs!1411173 () Bool)

(assert (= bs!1411173 (and b!5954562 b!5953644)))

(assert (=> bs!1411173 (= (= lt!2313982 lt!2313886) (= lambda!325175 lambda!325085))))

(declare-fun bs!1411174 () Bool)

(assert (= bs!1411174 (and b!5954562 b!5953590)))

(assert (=> bs!1411174 (= (= lt!2313982 lt!2313871) (= lambda!325175 lambda!325082))))

(declare-fun bs!1411175 () Bool)

(assert (= bs!1411175 (and b!5954562 b!5954206)))

(assert (=> bs!1411175 (= (= lt!2313982 lt!2313934) (= lambda!325175 lambda!325136))))

(declare-fun bs!1411176 () Bool)

(assert (= bs!1411176 (and b!5954562 b!5954414)))

(assert (=> bs!1411176 (= (= lt!2313982 lt!2313955) (= lambda!325175 lambda!325158))))

(declare-fun bs!1411177 () Bool)

(assert (= bs!1411177 (and b!5954562 b!5953582)))

(assert (=> bs!1411177 (= (= lt!2313982 lt!2313865) (= lambda!325175 lambda!325081))))

(declare-fun bs!1411178 () Bool)

(assert (= bs!1411178 (and b!5954562 d!1866628)))

(assert (=> bs!1411178 (not (= lambda!325175 lambda!325143))))

(declare-fun bs!1411179 () Bool)

(assert (= bs!1411179 (and b!5954562 d!1866576)))

(assert (=> bs!1411179 (not (= lambda!325175 lambda!325131))))

(declare-fun bs!1411180 () Bool)

(assert (= bs!1411180 (and b!5954562 d!1866722)))

(assert (=> bs!1411180 (= (= lt!2313982 lt!2313886) (= lambda!325175 lambda!325161))))

(declare-fun bs!1411181 () Bool)

(assert (= bs!1411181 (and b!5954562 d!1866300)))

(assert (=> bs!1411181 (not (= lambda!325175 lambda!325028))))

(declare-fun bs!1411182 () Bool)

(assert (= bs!1411182 (and b!5954562 b!5954091)))

(assert (=> bs!1411182 (= (= lt!2313982 lt!2313928) (= lambda!325175 lambda!325118))))

(declare-fun bs!1411183 () Bool)

(assert (= bs!1411183 (and b!5954562 d!1866328)))

(assert (=> bs!1411183 (not (= lambda!325175 lambda!325068))))

(declare-fun bs!1411184 () Bool)

(assert (= bs!1411184 (and b!5954562 b!5954204)))

(assert (=> bs!1411184 (= (= lt!2313982 lt!2313936) (= lambda!325175 lambda!325135))))

(declare-fun bs!1411185 () Bool)

(assert (= bs!1411185 (and b!5954562 b!5953580)))

(assert (=> bs!1411185 (= (= lt!2313982 lt!2313867) (= lambda!325175 lambda!325080))))

(assert (=> b!5954562 true))

(declare-fun d!1866790 () Bool)

(declare-fun e!3642547 () Bool)

(assert (=> d!1866790 e!3642547))

(declare-fun res!2492460 () Bool)

(assert (=> d!1866790 (=> (not res!2492460) (not e!3642547))))

(assert (=> d!1866790 (= res!2492460 (>= lt!2313982 0))))

(declare-fun e!3642546 () Int)

(assert (=> d!1866790 (= lt!2313982 e!3642546)))

(declare-fun c!1059852 () Bool)

(assert (=> d!1866790 (= c!1059852 ((_ is Cons!64166) (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313738))))))))

(assert (=> d!1866790 (= (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313738)))) lt!2313982)))

(assert (=> b!5954560 (= e!3642546 lt!2313984)))

(assert (=> b!5954560 (= lt!2313984 (maxBigInt!0 (regexDepth!254 (h!70614 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313738)))))) (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313738)))))))))))

(declare-fun lt!2313983 () Unit!157265)

(assert (=> b!5954560 (= lt!2313983 (lemmaForallRegexDepthBiggerThanTransitive!46 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313738))))) lt!2313984 (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313738)))))))))))

(assert (=> b!5954560 (forall!15085 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313738))))) lambda!325172)))

(declare-fun lt!2313981 () Unit!157265)

(assert (=> b!5954560 (= lt!2313981 lt!2313983)))

(declare-fun b!5954561 () Bool)

(assert (=> b!5954561 (= e!3642546 0)))

(assert (=> b!5954562 (= e!3642547 (forall!15085 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313738)))) lambda!325175))))

(assert (= (and d!1866790 c!1059852) b!5954560))

(assert (= (and d!1866790 (not c!1059852)) b!5954561))

(assert (= (and d!1866790 res!2492460) b!5954562))

(declare-fun m!6842044 () Bool)

(assert (=> b!5954560 m!6842044))

(declare-fun m!6842046 () Bool)

(assert (=> b!5954560 m!6842046))

(declare-fun m!6842048 () Bool)

(assert (=> b!5954560 m!6842048))

(assert (=> b!5954560 m!6842046))

(declare-fun m!6842050 () Bool)

(assert (=> b!5954560 m!6842050))

(assert (=> b!5954560 m!6842044))

(assert (=> b!5954560 m!6842046))

(declare-fun m!6842052 () Bool)

(assert (=> b!5954560 m!6842052))

(declare-fun m!6842054 () Bool)

(assert (=> b!5954562 m!6842054))

(assert (=> b!5953590 d!1866790))

(declare-fun bs!1411186 () Bool)

(declare-fun d!1866792 () Bool)

(assert (= bs!1411186 (and d!1866792 b!5954560)))

(declare-fun lambda!325178 () Int)

(assert (=> bs!1411186 (= (= lt!2313871 lt!2313984) (= lambda!325178 lambda!325172))))

(declare-fun bs!1411187 () Bool)

(assert (= bs!1411187 (and d!1866792 d!1866676)))

(assert (=> bs!1411187 (not (= lambda!325178 lambda!325152))))

(declare-fun bs!1411188 () Bool)

(assert (= bs!1411188 (and d!1866792 b!5954416)))

(assert (=> bs!1411188 (= (= lt!2313871 lt!2313953) (= lambda!325178 lambda!325159))))

(declare-fun bs!1411189 () Bool)

(assert (= bs!1411189 (and d!1866792 b!5954093)))

(assert (=> bs!1411189 (= (= lt!2313871 lt!2313926) (= lambda!325178 lambda!325119))))

(declare-fun bs!1411190 () Bool)

(assert (= bs!1411190 (and d!1866792 d!1866304)))

(assert (=> bs!1411190 (not (= lambda!325178 lambda!325035))))

(declare-fun bs!1411191 () Bool)

(assert (= bs!1411191 (and d!1866792 d!1866302)))

(assert (=> bs!1411191 (not (= lambda!325178 lambda!325029))))

(declare-fun bs!1411193 () Bool)

(assert (= bs!1411193 (and d!1866792 d!1866504)))

(assert (=> bs!1411193 (= (= lt!2313871 lt!2313867) (= lambda!325178 lambda!325122))))

(declare-fun bs!1411194 () Bool)

(assert (= bs!1411194 (and d!1866792 d!1866492)))

(assert (=> bs!1411194 (not (= lambda!325178 lambda!325117))))

(declare-fun bs!1411196 () Bool)

(assert (= bs!1411196 (and d!1866792 b!5953592)))

(assert (=> bs!1411196 (= (= lt!2313871 lt!2313869) (= lambda!325178 lambda!325083))))

(declare-fun bs!1411197 () Bool)

(assert (= bs!1411197 (and d!1866792 d!1866344)))

(assert (=> bs!1411197 (not (= lambda!325178 lambda!325073))))

(declare-fun bs!1411199 () Bool)

(assert (= bs!1411199 (and d!1866792 d!1866308)))

(assert (=> bs!1411199 (not (= lambda!325178 lambda!325043))))

(declare-fun bs!1411200 () Bool)

(assert (= bs!1411200 (and d!1866792 b!5954562)))

(assert (=> bs!1411200 (= (= lt!2313871 lt!2313982) (= lambda!325178 lambda!325175))))

(declare-fun bs!1411202 () Bool)

(assert (= bs!1411202 (and d!1866792 b!5953646)))

(assert (=> bs!1411202 (= (= lt!2313871 lt!2313884) (= lambda!325178 lambda!325086))))

(declare-fun bs!1411203 () Bool)

(assert (= bs!1411203 (and d!1866792 b!5953644)))

(assert (=> bs!1411203 (= (= lt!2313871 lt!2313886) (= lambda!325178 lambda!325085))))

(declare-fun bs!1411204 () Bool)

(assert (= bs!1411204 (and d!1866792 b!5953590)))

(assert (=> bs!1411204 (= lambda!325178 lambda!325082)))

(declare-fun bs!1411205 () Bool)

(assert (= bs!1411205 (and d!1866792 b!5954206)))

(assert (=> bs!1411205 (= (= lt!2313871 lt!2313934) (= lambda!325178 lambda!325136))))

(declare-fun bs!1411206 () Bool)

(assert (= bs!1411206 (and d!1866792 b!5954414)))

(assert (=> bs!1411206 (= (= lt!2313871 lt!2313955) (= lambda!325178 lambda!325158))))

(declare-fun bs!1411208 () Bool)

(assert (= bs!1411208 (and d!1866792 b!5953582)))

(assert (=> bs!1411208 (= (= lt!2313871 lt!2313865) (= lambda!325178 lambda!325081))))

(declare-fun bs!1411209 () Bool)

(assert (= bs!1411209 (and d!1866792 d!1866628)))

(assert (=> bs!1411209 (not (= lambda!325178 lambda!325143))))

(declare-fun bs!1411210 () Bool)

(assert (= bs!1411210 (and d!1866792 d!1866576)))

(assert (=> bs!1411210 (not (= lambda!325178 lambda!325131))))

(declare-fun bs!1411211 () Bool)

(assert (= bs!1411211 (and d!1866792 d!1866722)))

(assert (=> bs!1411211 (= (= lt!2313871 lt!2313886) (= lambda!325178 lambda!325161))))

(declare-fun bs!1411212 () Bool)

(assert (= bs!1411212 (and d!1866792 d!1866300)))

(assert (=> bs!1411212 (not (= lambda!325178 lambda!325028))))

(declare-fun bs!1411213 () Bool)

(assert (= bs!1411213 (and d!1866792 b!5954091)))

(assert (=> bs!1411213 (= (= lt!2313871 lt!2313928) (= lambda!325178 lambda!325118))))

(declare-fun bs!1411214 () Bool)

(assert (= bs!1411214 (and d!1866792 d!1866328)))

(assert (=> bs!1411214 (not (= lambda!325178 lambda!325068))))

(declare-fun bs!1411215 () Bool)

(assert (= bs!1411215 (and d!1866792 b!5954204)))

(assert (=> bs!1411215 (= (= lt!2313871 lt!2313936) (= lambda!325178 lambda!325135))))

(declare-fun bs!1411216 () Bool)

(assert (= bs!1411216 (and d!1866792 b!5953580)))

(assert (=> bs!1411216 (= (= lt!2313871 lt!2313867) (= lambda!325178 lambda!325080))))

(assert (=> d!1866792 true))

(assert (=> d!1866792 (forall!15085 (t!377701 (exprs!5881 lt!2313738)) lambda!325178)))

(declare-fun lt!2313985 () Unit!157265)

(assert (=> d!1866792 (= lt!2313985 (choose!44881 (t!377701 (exprs!5881 lt!2313738)) lt!2313871 (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313738))))))))

(assert (=> d!1866792 (>= lt!2313871 (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313738)))))))

(assert (=> d!1866792 (= (lemmaForallRegexDepthBiggerThanTransitive!46 (t!377701 (exprs!5881 lt!2313738)) lt!2313871 (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313738))))) lt!2313985)))

(declare-fun bs!1411217 () Bool)

(assert (= bs!1411217 d!1866792))

(declare-fun m!6842056 () Bool)

(assert (=> bs!1411217 m!6842056))

(assert (=> bs!1411217 m!6841106))

(declare-fun m!6842058 () Bool)

(assert (=> bs!1411217 m!6842058))

(assert (=> b!5953590 d!1866792))

(declare-fun b!5954571 () Bool)

(declare-fun e!3642556 () Bool)

(declare-fun lt!2313986 () Int)

(declare-fun call!474475 () Int)

(assert (=> b!5954571 (= e!3642556 (> lt!2313986 call!474475))))

(declare-fun bm!474467 () Bool)

(declare-fun call!474478 () Int)

(declare-fun c!1059854 () Bool)

(assert (=> bm!474467 (= call!474478 (regexDepth!254 (ite c!1059854 (regTwo!32507 (h!70614 (exprs!5881 lt!2313738))) (regOne!32506 (h!70614 (exprs!5881 lt!2313738))))))))

(declare-fun call!474476 () Int)

(declare-fun call!474474 () Int)

(declare-fun bm!474468 () Bool)

(assert (=> bm!474468 (= call!474476 (maxBigInt!0 (ite c!1059854 call!474474 call!474478) (ite c!1059854 call!474478 call!474474)))))

(declare-fun b!5954572 () Bool)

(declare-fun e!3642557 () Int)

(declare-fun e!3642554 () Int)

(assert (=> b!5954572 (= e!3642557 e!3642554)))

(declare-fun c!1059858 () Bool)

(assert (=> b!5954572 (= c!1059858 ((_ is Star!15997) (h!70614 (exprs!5881 lt!2313738))))))

(declare-fun b!5954573 () Bool)

(assert (=> b!5954573 (= c!1059854 ((_ is Union!15997) (h!70614 (exprs!5881 lt!2313738))))))

(declare-fun e!3642553 () Int)

(assert (=> b!5954573 (= e!3642554 e!3642553)))

(declare-fun b!5954574 () Bool)

(declare-fun e!3642552 () Int)

(assert (=> b!5954574 (= e!3642553 e!3642552)))

(declare-fun c!1059859 () Bool)

(assert (=> b!5954574 (= c!1059859 ((_ is Concat!24842) (h!70614 (exprs!5881 lt!2313738))))))

(declare-fun b!5954575 () Bool)

(assert (=> b!5954575 (= e!3642553 (+ 1 call!474476))))

(declare-fun b!5954576 () Bool)

(declare-fun e!3642558 () Bool)

(declare-fun e!3642561 () Bool)

(assert (=> b!5954576 (= e!3642558 e!3642561)))

(declare-fun c!1059857 () Bool)

(assert (=> b!5954576 (= c!1059857 ((_ is Concat!24842) (h!70614 (exprs!5881 lt!2313738))))))

(declare-fun b!5954577 () Bool)

(declare-fun c!1059856 () Bool)

(assert (=> b!5954577 (= c!1059856 ((_ is Star!15997) (h!70614 (exprs!5881 lt!2313738))))))

(declare-fun e!3642560 () Bool)

(assert (=> b!5954577 (= e!3642561 e!3642560)))

(declare-fun b!5954578 () Bool)

(declare-fun e!3642555 () Bool)

(declare-fun call!474473 () Int)

(assert (=> b!5954578 (= e!3642555 (> lt!2313986 call!474473))))

(declare-fun b!5954579 () Bool)

(assert (=> b!5954579 (= e!3642557 1)))

(declare-fun bm!474470 () Bool)

(declare-fun call!474472 () Int)

(assert (=> bm!474470 (= call!474474 call!474472)))

(declare-fun b!5954580 () Bool)

(assert (=> b!5954580 (= e!3642552 1)))

(declare-fun b!5954581 () Bool)

(assert (=> b!5954581 (= e!3642558 e!3642556)))

(declare-fun res!2492471 () Bool)

(assert (=> b!5954581 (= res!2492471 (> lt!2313986 call!474473))))

(assert (=> b!5954581 (=> (not res!2492471) (not e!3642556))))

(declare-fun bm!474471 () Bool)

(declare-fun call!474477 () Int)

(assert (=> bm!474471 (= call!474477 call!474475)))

(declare-fun b!5954582 () Bool)

(declare-fun res!2492470 () Bool)

(assert (=> b!5954582 (=> (not res!2492470) (not e!3642555))))

(assert (=> b!5954582 (= res!2492470 (> lt!2313986 call!474477))))

(assert (=> b!5954582 (= e!3642561 e!3642555)))

(declare-fun b!5954583 () Bool)

(assert (=> b!5954583 (= e!3642552 (+ 1 call!474476))))

(declare-fun b!5954584 () Bool)

(assert (=> b!5954584 (= e!3642560 (= lt!2313986 1))))

(declare-fun c!1059855 () Bool)

(declare-fun bm!474472 () Bool)

(assert (=> bm!474472 (= call!474475 (regexDepth!254 (ite c!1059855 (regTwo!32507 (h!70614 (exprs!5881 lt!2313738))) (ite c!1059857 (regOne!32506 (h!70614 (exprs!5881 lt!2313738))) (reg!16326 (h!70614 (exprs!5881 lt!2313738)))))))))

(declare-fun bm!474469 () Bool)

(assert (=> bm!474469 (= call!474473 (regexDepth!254 (ite c!1059855 (regOne!32507 (h!70614 (exprs!5881 lt!2313738))) (regTwo!32506 (h!70614 (exprs!5881 lt!2313738))))))))

(declare-fun d!1866794 () Bool)

(declare-fun e!3642559 () Bool)

(assert (=> d!1866794 e!3642559))

(declare-fun res!2492469 () Bool)

(assert (=> d!1866794 (=> (not res!2492469) (not e!3642559))))

(assert (=> d!1866794 (= res!2492469 (> lt!2313986 0))))

(assert (=> d!1866794 (= lt!2313986 e!3642557)))

(declare-fun c!1059853 () Bool)

(assert (=> d!1866794 (= c!1059853 ((_ is ElementMatch!15997) (h!70614 (exprs!5881 lt!2313738))))))

(assert (=> d!1866794 (= (regexDepth!254 (h!70614 (exprs!5881 lt!2313738))) lt!2313986)))

(declare-fun b!5954585 () Bool)

(assert (=> b!5954585 (= e!3642559 e!3642558)))

(assert (=> b!5954585 (= c!1059855 ((_ is Union!15997) (h!70614 (exprs!5881 lt!2313738))))))

(declare-fun b!5954586 () Bool)

(assert (=> b!5954586 (= e!3642554 (+ 1 call!474472))))

(declare-fun b!5954587 () Bool)

(assert (=> b!5954587 (= e!3642560 (> lt!2313986 call!474477))))

(declare-fun bm!474473 () Bool)

(assert (=> bm!474473 (= call!474472 (regexDepth!254 (ite c!1059858 (reg!16326 (h!70614 (exprs!5881 lt!2313738))) (ite c!1059854 (regOne!32507 (h!70614 (exprs!5881 lt!2313738))) (regTwo!32506 (h!70614 (exprs!5881 lt!2313738)))))))))

(assert (= (and d!1866794 c!1059853) b!5954579))

(assert (= (and d!1866794 (not c!1059853)) b!5954572))

(assert (= (and b!5954572 c!1059858) b!5954586))

(assert (= (and b!5954572 (not c!1059858)) b!5954573))

(assert (= (and b!5954573 c!1059854) b!5954575))

(assert (= (and b!5954573 (not c!1059854)) b!5954574))

(assert (= (and b!5954574 c!1059859) b!5954583))

(assert (= (and b!5954574 (not c!1059859)) b!5954580))

(assert (= (or b!5954575 b!5954583) bm!474467))

(assert (= (or b!5954575 b!5954583) bm!474470))

(assert (= (or b!5954575 b!5954583) bm!474468))

(assert (= (or b!5954586 bm!474470) bm!474473))

(assert (= (and d!1866794 res!2492469) b!5954585))

(assert (= (and b!5954585 c!1059855) b!5954581))

(assert (= (and b!5954585 (not c!1059855)) b!5954576))

(assert (= (and b!5954581 res!2492471) b!5954571))

(assert (= (and b!5954576 c!1059857) b!5954582))

(assert (= (and b!5954576 (not c!1059857)) b!5954577))

(assert (= (and b!5954582 res!2492470) b!5954578))

(assert (= (and b!5954577 c!1059856) b!5954587))

(assert (= (and b!5954577 (not c!1059856)) b!5954584))

(assert (= (or b!5954582 b!5954587) bm!474471))

(assert (= (or b!5954571 bm!474471) bm!474472))

(assert (= (or b!5954581 b!5954578) bm!474469))

(declare-fun m!6842064 () Bool)

(assert (=> bm!474472 m!6842064))

(declare-fun m!6842066 () Bool)

(assert (=> bm!474473 m!6842066))

(declare-fun m!6842068 () Bool)

(assert (=> bm!474467 m!6842068))

(declare-fun m!6842070 () Bool)

(assert (=> bm!474469 m!6842070))

(declare-fun m!6842072 () Bool)

(assert (=> bm!474468 m!6842072))

(assert (=> b!5953590 d!1866794))

(declare-fun d!1866798 () Bool)

(assert (=> d!1866798 (= (maxBigInt!0 (regexDepth!254 (h!70614 (exprs!5881 lt!2313738))) (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313738))))) (ite (>= (regexDepth!254 (h!70614 (exprs!5881 lt!2313738))) (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313738))))) (regexDepth!254 (h!70614 (exprs!5881 lt!2313738))) (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 lt!2313738))))))))

(assert (=> b!5953590 d!1866798))

(declare-fun d!1866800 () Bool)

(assert (=> d!1866800 true))

(declare-fun setRes!40482 () Bool)

(assert (=> d!1866800 setRes!40482))

(declare-fun condSetEmpty!40482 () Bool)

(declare-fun res!2492477 () (InoxSet Context!10762))

(assert (=> d!1866800 (= condSetEmpty!40482 (= res!2492477 ((as const (Array Context!10762 Bool)) false)))))

(assert (=> d!1866800 (= (choose!44871 lt!2313741 lambda!325000) res!2492477)))

(declare-fun setIsEmpty!40482 () Bool)

(assert (=> setIsEmpty!40482 setRes!40482))

(declare-fun tp!1656538 () Bool)

(declare-fun e!3642569 () Bool)

(declare-fun setElem!40482 () Context!10762)

(declare-fun setNonEmpty!40482 () Bool)

(assert (=> setNonEmpty!40482 (= setRes!40482 (and tp!1656538 (inv!83239 setElem!40482) e!3642569))))

(declare-fun setRest!40482 () (InoxSet Context!10762))

(assert (=> setNonEmpty!40482 (= res!2492477 ((_ map or) (store ((as const (Array Context!10762 Bool)) false) setElem!40482 true) setRest!40482))))

(declare-fun b!5954597 () Bool)

(declare-fun tp!1656537 () Bool)

(assert (=> b!5954597 (= e!3642569 tp!1656537)))

(assert (= (and d!1866800 condSetEmpty!40482) setIsEmpty!40482))

(assert (= (and d!1866800 (not condSetEmpty!40482)) setNonEmpty!40482))

(assert (= setNonEmpty!40482 b!5954597))

(declare-fun m!6842082 () Bool)

(assert (=> setNonEmpty!40482 m!6842082))

(assert (=> d!1866292 d!1866800))

(assert (=> d!1866320 d!1866544))

(assert (=> d!1866412 d!1866408))

(declare-fun d!1866806 () Bool)

(assert (=> d!1866806 (= (flatMap!1510 z!1189 lambda!325000) (dynLambda!25107 lambda!325000 (h!70616 zl!343)))))

(assert (=> d!1866806 true))

(declare-fun _$13!2758 () Unit!157265)

(assert (=> d!1866806 (= (choose!44870 z!1189 (h!70616 zl!343) lambda!325000) _$13!2758)))

(declare-fun b_lambda!223821 () Bool)

(assert (=> (not b_lambda!223821) (not d!1866806)))

(declare-fun bs!1411220 () Bool)

(assert (= bs!1411220 d!1866806))

(assert (=> bs!1411220 m!6840602))

(assert (=> bs!1411220 m!6841200))

(assert (=> d!1866412 d!1866806))

(declare-fun b!5954607 () Bool)

(declare-fun e!3642578 () Bool)

(declare-fun e!3642583 () Bool)

(assert (=> b!5954607 (= e!3642578 e!3642583)))

(declare-fun res!2492490 () Bool)

(assert (=> b!5954607 (=> res!2492490 e!3642583)))

(declare-fun call!474485 () Bool)

(assert (=> b!5954607 (= res!2492490 call!474485)))

(declare-fun d!1866808 () Bool)

(declare-fun e!3642579 () Bool)

(assert (=> d!1866808 e!3642579))

(declare-fun c!1059866 () Bool)

(assert (=> d!1866808 (= c!1059866 ((_ is EmptyExpr!15997) (regTwo!32506 r!7292)))))

(declare-fun lt!2313987 () Bool)

(declare-fun e!3642582 () Bool)

(assert (=> d!1866808 (= lt!2313987 e!3642582)))

(declare-fun c!1059864 () Bool)

(assert (=> d!1866808 (= c!1059864 (isEmpty!36053 s!2326))))

(assert (=> d!1866808 (validRegex!7733 (regTwo!32506 r!7292))))

(assert (=> d!1866808 (= (matchR!8180 (regTwo!32506 r!7292) s!2326) lt!2313987)))

(declare-fun bm!474480 () Bool)

(assert (=> bm!474480 (= call!474485 (isEmpty!36053 s!2326))))

(declare-fun b!5954608 () Bool)

(declare-fun res!2492488 () Bool)

(declare-fun e!3642580 () Bool)

(assert (=> b!5954608 (=> (not res!2492488) (not e!3642580))))

(assert (=> b!5954608 (= res!2492488 (not call!474485))))

(declare-fun b!5954609 () Bool)

(declare-fun res!2492484 () Bool)

(declare-fun e!3642581 () Bool)

(assert (=> b!5954609 (=> res!2492484 e!3642581)))

(assert (=> b!5954609 (= res!2492484 (not ((_ is ElementMatch!15997) (regTwo!32506 r!7292))))))

(declare-fun e!3642577 () Bool)

(assert (=> b!5954609 (= e!3642577 e!3642581)))

(declare-fun b!5954610 () Bool)

(assert (=> b!5954610 (= e!3642579 (= lt!2313987 call!474485))))

(declare-fun b!5954611 () Bool)

(assert (=> b!5954611 (= e!3642577 (not lt!2313987))))

(declare-fun b!5954612 () Bool)

(declare-fun res!2492487 () Bool)

(assert (=> b!5954612 (=> (not res!2492487) (not e!3642580))))

(assert (=> b!5954612 (= res!2492487 (isEmpty!36053 (tail!11621 s!2326)))))

(declare-fun b!5954613 () Bool)

(assert (=> b!5954613 (= e!3642582 (nullable!5992 (regTwo!32506 r!7292)))))

(declare-fun b!5954614 () Bool)

(assert (=> b!5954614 (= e!3642579 e!3642577)))

(declare-fun c!1059865 () Bool)

(assert (=> b!5954614 (= c!1059865 ((_ is EmptyLang!15997) (regTwo!32506 r!7292)))))

(declare-fun b!5954615 () Bool)

(assert (=> b!5954615 (= e!3642580 (= (head!12536 s!2326) (c!1059438 (regTwo!32506 r!7292))))))

(declare-fun b!5954616 () Bool)

(assert (=> b!5954616 (= e!3642583 (not (= (head!12536 s!2326) (c!1059438 (regTwo!32506 r!7292)))))))

(declare-fun b!5954617 () Bool)

(assert (=> b!5954617 (= e!3642582 (matchR!8180 (derivativeStep!4728 (regTwo!32506 r!7292) (head!12536 s!2326)) (tail!11621 s!2326)))))

(declare-fun b!5954618 () Bool)

(assert (=> b!5954618 (= e!3642581 e!3642578)))

(declare-fun res!2492485 () Bool)

(assert (=> b!5954618 (=> (not res!2492485) (not e!3642578))))

(assert (=> b!5954618 (= res!2492485 (not lt!2313987))))

(declare-fun b!5954619 () Bool)

(declare-fun res!2492489 () Bool)

(assert (=> b!5954619 (=> res!2492489 e!3642583)))

(assert (=> b!5954619 (= res!2492489 (not (isEmpty!36053 (tail!11621 s!2326))))))

(declare-fun b!5954620 () Bool)

(declare-fun res!2492486 () Bool)

(assert (=> b!5954620 (=> res!2492486 e!3642581)))

(assert (=> b!5954620 (= res!2492486 e!3642580)))

(declare-fun res!2492483 () Bool)

(assert (=> b!5954620 (=> (not res!2492483) (not e!3642580))))

(assert (=> b!5954620 (= res!2492483 lt!2313987)))

(assert (= (and d!1866808 c!1059864) b!5954613))

(assert (= (and d!1866808 (not c!1059864)) b!5954617))

(assert (= (and d!1866808 c!1059866) b!5954610))

(assert (= (and d!1866808 (not c!1059866)) b!5954614))

(assert (= (and b!5954614 c!1059865) b!5954611))

(assert (= (and b!5954614 (not c!1059865)) b!5954609))

(assert (= (and b!5954609 (not res!2492484)) b!5954620))

(assert (= (and b!5954620 res!2492483) b!5954608))

(assert (= (and b!5954608 res!2492488) b!5954612))

(assert (= (and b!5954612 res!2492487) b!5954615))

(assert (= (and b!5954620 (not res!2492486)) b!5954618))

(assert (= (and b!5954618 res!2492485) b!5954607))

(assert (= (and b!5954607 (not res!2492490)) b!5954619))

(assert (= (and b!5954619 (not res!2492489)) b!5954616))

(assert (= (or b!5954610 b!5954607 b!5954608) bm!474480))

(assert (=> b!5954617 m!6840964))

(assert (=> b!5954617 m!6840964))

(declare-fun m!6842094 () Bool)

(assert (=> b!5954617 m!6842094))

(assert (=> b!5954617 m!6840968))

(assert (=> b!5954617 m!6842094))

(assert (=> b!5954617 m!6840968))

(declare-fun m!6842096 () Bool)

(assert (=> b!5954617 m!6842096))

(assert (=> bm!474480 m!6840960))

(assert (=> b!5954612 m!6840968))

(assert (=> b!5954612 m!6840968))

(assert (=> b!5954612 m!6841338))

(assert (=> d!1866808 m!6840960))

(assert (=> d!1866808 m!6841734))

(assert (=> b!5954615 m!6840964))

(assert (=> b!5954619 m!6840968))

(assert (=> b!5954619 m!6840968))

(assert (=> b!5954619 m!6841338))

(assert (=> b!5954613 m!6841736))

(assert (=> b!5954616 m!6840964))

(assert (=> b!5953849 d!1866808))

(declare-fun bs!1411221 () Bool)

(declare-fun d!1866816 () Bool)

(assert (= bs!1411221 (and d!1866816 d!1866792)))

(declare-fun lambda!325181 () Int)

(assert (=> bs!1411221 (not (= lambda!325181 lambda!325178))))

(declare-fun bs!1411222 () Bool)

(assert (= bs!1411222 (and d!1866816 b!5954560)))

(assert (=> bs!1411222 (not (= lambda!325181 lambda!325172))))

(declare-fun bs!1411223 () Bool)

(assert (= bs!1411223 (and d!1866816 d!1866676)))

(assert (=> bs!1411223 (= lambda!325181 lambda!325152)))

(declare-fun bs!1411224 () Bool)

(assert (= bs!1411224 (and d!1866816 b!5954416)))

(assert (=> bs!1411224 (not (= lambda!325181 lambda!325159))))

(declare-fun bs!1411225 () Bool)

(assert (= bs!1411225 (and d!1866816 b!5954093)))

(assert (=> bs!1411225 (not (= lambda!325181 lambda!325119))))

(declare-fun bs!1411226 () Bool)

(assert (= bs!1411226 (and d!1866816 d!1866304)))

(assert (=> bs!1411226 (= lambda!325181 lambda!325035)))

(declare-fun bs!1411227 () Bool)

(assert (= bs!1411227 (and d!1866816 d!1866302)))

(assert (=> bs!1411227 (= lambda!325181 lambda!325029)))

(declare-fun bs!1411228 () Bool)

(assert (= bs!1411228 (and d!1866816 d!1866504)))

(assert (=> bs!1411228 (not (= lambda!325181 lambda!325122))))

(declare-fun bs!1411229 () Bool)

(assert (= bs!1411229 (and d!1866816 d!1866492)))

(assert (=> bs!1411229 (= lambda!325181 lambda!325117)))

(declare-fun bs!1411230 () Bool)

(assert (= bs!1411230 (and d!1866816 b!5953592)))

(assert (=> bs!1411230 (not (= lambda!325181 lambda!325083))))

(declare-fun bs!1411231 () Bool)

(assert (= bs!1411231 (and d!1866816 d!1866344)))

(assert (=> bs!1411231 (= lambda!325181 lambda!325073)))

(declare-fun bs!1411232 () Bool)

(assert (= bs!1411232 (and d!1866816 d!1866308)))

(assert (=> bs!1411232 (= lambda!325181 lambda!325043)))

(declare-fun bs!1411233 () Bool)

(assert (= bs!1411233 (and d!1866816 b!5954562)))

(assert (=> bs!1411233 (not (= lambda!325181 lambda!325175))))

(declare-fun bs!1411234 () Bool)

(assert (= bs!1411234 (and d!1866816 b!5953646)))

(assert (=> bs!1411234 (not (= lambda!325181 lambda!325086))))

(declare-fun bs!1411235 () Bool)

(assert (= bs!1411235 (and d!1866816 b!5953644)))

(assert (=> bs!1411235 (not (= lambda!325181 lambda!325085))))

(declare-fun bs!1411236 () Bool)

(assert (= bs!1411236 (and d!1866816 b!5953590)))

(assert (=> bs!1411236 (not (= lambda!325181 lambda!325082))))

(declare-fun bs!1411237 () Bool)

(assert (= bs!1411237 (and d!1866816 b!5954206)))

(assert (=> bs!1411237 (not (= lambda!325181 lambda!325136))))

(declare-fun bs!1411238 () Bool)

(assert (= bs!1411238 (and d!1866816 b!5954414)))

(assert (=> bs!1411238 (not (= lambda!325181 lambda!325158))))

(declare-fun bs!1411239 () Bool)

(assert (= bs!1411239 (and d!1866816 b!5953582)))

(assert (=> bs!1411239 (not (= lambda!325181 lambda!325081))))

(declare-fun bs!1411240 () Bool)

(assert (= bs!1411240 (and d!1866816 d!1866628)))

(assert (=> bs!1411240 (= lambda!325181 lambda!325143)))

(declare-fun bs!1411241 () Bool)

(assert (= bs!1411241 (and d!1866816 d!1866576)))

(assert (=> bs!1411241 (= lambda!325181 lambda!325131)))

(declare-fun bs!1411242 () Bool)

(assert (= bs!1411242 (and d!1866816 d!1866722)))

(assert (=> bs!1411242 (not (= lambda!325181 lambda!325161))))

(declare-fun bs!1411243 () Bool)

(assert (= bs!1411243 (and d!1866816 d!1866300)))

(assert (=> bs!1411243 (= lambda!325181 lambda!325028)))

(declare-fun bs!1411244 () Bool)

(assert (= bs!1411244 (and d!1866816 b!5954091)))

(assert (=> bs!1411244 (not (= lambda!325181 lambda!325118))))

(declare-fun bs!1411245 () Bool)

(assert (= bs!1411245 (and d!1866816 d!1866328)))

(assert (=> bs!1411245 (= lambda!325181 lambda!325068)))

(declare-fun bs!1411247 () Bool)

(assert (= bs!1411247 (and d!1866816 b!5954204)))

(assert (=> bs!1411247 (not (= lambda!325181 lambda!325135))))

(declare-fun bs!1411248 () Bool)

(assert (= bs!1411248 (and d!1866816 b!5953580)))

(assert (=> bs!1411248 (not (= lambda!325181 lambda!325080))))

(assert (=> d!1866816 (= (inv!83239 (h!70616 (t!377703 zl!343))) (forall!15085 (exprs!5881 (h!70616 (t!377703 zl!343))) lambda!325181))))

(declare-fun bs!1411251 () Bool)

(assert (= bs!1411251 d!1866816))

(declare-fun m!6842118 () Bool)

(assert (=> bs!1411251 m!6842118))

(assert (=> b!5953980 d!1866816))

(declare-fun d!1866822 () Bool)

(assert (=> d!1866822 (= (isEmpty!36049 (tail!11620 (exprs!5881 (h!70616 zl!343)))) ((_ is Nil!64166) (tail!11620 (exprs!5881 (h!70616 zl!343)))))))

(assert (=> b!5953487 d!1866822))

(declare-fun d!1866824 () Bool)

(assert (=> d!1866824 (= (tail!11620 (exprs!5881 (h!70616 zl!343))) (t!377701 (exprs!5881 (h!70616 zl!343))))))

(assert (=> b!5953487 d!1866824))

(assert (=> b!5953955 d!1866558))

(declare-fun b!5954636 () Bool)

(declare-fun e!3642597 () (InoxSet Context!10762))

(declare-fun call!474497 () (InoxSet Context!10762))

(assert (=> b!5954636 (= e!3642597 call!474497)))

(declare-fun bm!474487 () Bool)

(declare-fun call!474494 () (InoxSet Context!10762))

(declare-fun call!474496 () (InoxSet Context!10762))

(assert (=> bm!474487 (= call!474494 call!474496)))

(declare-fun b!5954637 () Bool)

(declare-fun e!3642595 () (InoxSet Context!10762))

(declare-fun e!3642598 () (InoxSet Context!10762))

(assert (=> b!5954637 (= e!3642595 e!3642598)))

(declare-fun c!1059873 () Bool)

(assert (=> b!5954637 (= c!1059873 ((_ is Union!15997) (ite c!1059480 (regTwo!32507 (regTwo!32506 r!7292)) (regOne!32506 (regTwo!32506 r!7292)))))))

(declare-fun call!474495 () List!64290)

(declare-fun c!1059875 () Bool)

(declare-fun c!1059876 () Bool)

(declare-fun bm!474488 () Bool)

(assert (=> bm!474488 (= call!474496 (derivationStepZipperDown!1247 (ite c!1059873 (regOne!32507 (ite c!1059480 (regTwo!32507 (regTwo!32506 r!7292)) (regOne!32506 (regTwo!32506 r!7292)))) (ite c!1059876 (regTwo!32506 (ite c!1059480 (regTwo!32507 (regTwo!32506 r!7292)) (regOne!32506 (regTwo!32506 r!7292)))) (ite c!1059875 (regOne!32506 (ite c!1059480 (regTwo!32507 (regTwo!32506 r!7292)) (regOne!32506 (regTwo!32506 r!7292)))) (reg!16326 (ite c!1059480 (regTwo!32507 (regTwo!32506 r!7292)) (regOne!32506 (regTwo!32506 r!7292))))))) (ite (or c!1059873 c!1059876) (ite c!1059480 lt!2313735 (Context!10763 call!474264)) (Context!10763 call!474495)) (h!70615 s!2326)))))

(declare-fun bm!474489 () Bool)

(assert (=> bm!474489 (= call!474497 call!474494)))

(declare-fun b!5954638 () Bool)

(declare-fun e!3642594 () (InoxSet Context!10762))

(assert (=> b!5954638 (= e!3642594 call!474497)))

(declare-fun b!5954639 () Bool)

(declare-fun e!3642593 () Bool)

(assert (=> b!5954639 (= e!3642593 (nullable!5992 (regOne!32506 (ite c!1059480 (regTwo!32507 (regTwo!32506 r!7292)) (regOne!32506 (regTwo!32506 r!7292))))))))

(declare-fun b!5954640 () Bool)

(declare-fun e!3642596 () (InoxSet Context!10762))

(declare-fun call!474493 () (InoxSet Context!10762))

(assert (=> b!5954640 (= e!3642596 ((_ map or) call!474493 call!474494))))

(declare-fun d!1866826 () Bool)

(declare-fun c!1059874 () Bool)

(assert (=> d!1866826 (= c!1059874 (and ((_ is ElementMatch!15997) (ite c!1059480 (regTwo!32507 (regTwo!32506 r!7292)) (regOne!32506 (regTwo!32506 r!7292)))) (= (c!1059438 (ite c!1059480 (regTwo!32507 (regTwo!32506 r!7292)) (regOne!32506 (regTwo!32506 r!7292)))) (h!70615 s!2326))))))

(assert (=> d!1866826 (= (derivationStepZipperDown!1247 (ite c!1059480 (regTwo!32507 (regTwo!32506 r!7292)) (regOne!32506 (regTwo!32506 r!7292))) (ite c!1059480 lt!2313735 (Context!10763 call!474264)) (h!70615 s!2326)) e!3642595)))

(declare-fun b!5954641 () Bool)

(assert (=> b!5954641 (= e!3642595 (store ((as const (Array Context!10762 Bool)) false) (ite c!1059480 lt!2313735 (Context!10763 call!474264)) true))))

(declare-fun bm!474490 () Bool)

(declare-fun call!474492 () List!64290)

(assert (=> bm!474490 (= call!474492 ($colon$colon!1883 (exprs!5881 (ite c!1059480 lt!2313735 (Context!10763 call!474264))) (ite (or c!1059876 c!1059875) (regTwo!32506 (ite c!1059480 (regTwo!32507 (regTwo!32506 r!7292)) (regOne!32506 (regTwo!32506 r!7292)))) (ite c!1059480 (regTwo!32507 (regTwo!32506 r!7292)) (regOne!32506 (regTwo!32506 r!7292))))))))

(declare-fun b!5954642 () Bool)

(declare-fun c!1059877 () Bool)

(assert (=> b!5954642 (= c!1059877 ((_ is Star!15997) (ite c!1059480 (regTwo!32507 (regTwo!32506 r!7292)) (regOne!32506 (regTwo!32506 r!7292)))))))

(assert (=> b!5954642 (= e!3642597 e!3642594)))

(declare-fun b!5954643 () Bool)

(assert (=> b!5954643 (= e!3642594 ((as const (Array Context!10762 Bool)) false))))

(declare-fun b!5954644 () Bool)

(assert (=> b!5954644 (= e!3642596 e!3642597)))

(assert (=> b!5954644 (= c!1059875 ((_ is Concat!24842) (ite c!1059480 (regTwo!32507 (regTwo!32506 r!7292)) (regOne!32506 (regTwo!32506 r!7292)))))))

(declare-fun bm!474491 () Bool)

(assert (=> bm!474491 (= call!474495 call!474492)))

(declare-fun bm!474492 () Bool)

(assert (=> bm!474492 (= call!474493 (derivationStepZipperDown!1247 (ite c!1059873 (regTwo!32507 (ite c!1059480 (regTwo!32507 (regTwo!32506 r!7292)) (regOne!32506 (regTwo!32506 r!7292)))) (regOne!32506 (ite c!1059480 (regTwo!32507 (regTwo!32506 r!7292)) (regOne!32506 (regTwo!32506 r!7292))))) (ite c!1059873 (ite c!1059480 lt!2313735 (Context!10763 call!474264)) (Context!10763 call!474492)) (h!70615 s!2326)))))

(declare-fun b!5954645 () Bool)

(assert (=> b!5954645 (= c!1059876 e!3642593)))

(declare-fun res!2492494 () Bool)

(assert (=> b!5954645 (=> (not res!2492494) (not e!3642593))))

(assert (=> b!5954645 (= res!2492494 ((_ is Concat!24842) (ite c!1059480 (regTwo!32507 (regTwo!32506 r!7292)) (regOne!32506 (regTwo!32506 r!7292)))))))

(assert (=> b!5954645 (= e!3642598 e!3642596)))

(declare-fun b!5954646 () Bool)

(assert (=> b!5954646 (= e!3642598 ((_ map or) call!474496 call!474493))))

(assert (= (and d!1866826 c!1059874) b!5954641))

(assert (= (and d!1866826 (not c!1059874)) b!5954637))

(assert (= (and b!5954637 c!1059873) b!5954646))

(assert (= (and b!5954637 (not c!1059873)) b!5954645))

(assert (= (and b!5954645 res!2492494) b!5954639))

(assert (= (and b!5954645 c!1059876) b!5954640))

(assert (= (and b!5954645 (not c!1059876)) b!5954644))

(assert (= (and b!5954644 c!1059875) b!5954636))

(assert (= (and b!5954644 (not c!1059875)) b!5954642))

(assert (= (and b!5954642 c!1059877) b!5954638))

(assert (= (and b!5954642 (not c!1059877)) b!5954643))

(assert (= (or b!5954636 b!5954638) bm!474491))

(assert (= (or b!5954636 b!5954638) bm!474489))

(assert (= (or b!5954640 bm!474491) bm!474490))

(assert (= (or b!5954640 bm!474489) bm!474487))

(assert (= (or b!5954646 b!5954640) bm!474492))

(assert (= (or b!5954646 bm!474487) bm!474488))

(declare-fun m!6842126 () Bool)

(assert (=> b!5954639 m!6842126))

(declare-fun m!6842128 () Bool)

(assert (=> bm!474488 m!6842128))

(declare-fun m!6842130 () Bool)

(assert (=> bm!474490 m!6842130))

(declare-fun m!6842132 () Bool)

(assert (=> bm!474492 m!6842132))

(declare-fun m!6842134 () Bool)

(assert (=> b!5954641 m!6842134))

(assert (=> bm!474264 d!1866826))

(assert (=> d!1866452 d!1866588))

(assert (=> b!5953491 d!1866332))

(declare-fun b!5954649 () Bool)

(declare-fun e!3642603 () (InoxSet Context!10762))

(assert (=> b!5954649 (= e!3642603 ((as const (Array Context!10762 Bool)) false))))

(declare-fun d!1866832 () Bool)

(declare-fun c!1059879 () Bool)

(declare-fun e!3642602 () Bool)

(assert (=> d!1866832 (= c!1059879 e!3642602)))

(declare-fun res!2492497 () Bool)

(assert (=> d!1866832 (=> (not res!2492497) (not e!3642602))))

(assert (=> d!1866832 (= res!2492497 ((_ is Cons!64166) (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313746))))))))

(declare-fun e!3642601 () (InoxSet Context!10762))

(assert (=> d!1866832 (= (derivationStepZipperUp!1173 (Context!10763 (t!377701 (exprs!5881 lt!2313746))) (h!70615 s!2326)) e!3642601)))

(declare-fun b!5954650 () Bool)

(declare-fun call!474498 () (InoxSet Context!10762))

(assert (=> b!5954650 (= e!3642603 call!474498)))

(declare-fun b!5954651 () Bool)

(assert (=> b!5954651 (= e!3642602 (nullable!5992 (h!70614 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313746)))))))))

(declare-fun b!5954652 () Bool)

(assert (=> b!5954652 (= e!3642601 e!3642603)))

(declare-fun c!1059878 () Bool)

(assert (=> b!5954652 (= c!1059878 ((_ is Cons!64166) (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313746))))))))

(declare-fun b!5954653 () Bool)

(assert (=> b!5954653 (= e!3642601 ((_ map or) call!474498 (derivationStepZipperUp!1173 (Context!10763 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313746)))))) (h!70615 s!2326))))))

(declare-fun bm!474493 () Bool)

(assert (=> bm!474493 (= call!474498 (derivationStepZipperDown!1247 (h!70614 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313746))))) (Context!10763 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313746)))))) (h!70615 s!2326)))))

(assert (= (and d!1866832 res!2492497) b!5954651))

(assert (= (and d!1866832 c!1059879) b!5954653))

(assert (= (and d!1866832 (not c!1059879)) b!5954652))

(assert (= (and b!5954652 c!1059878) b!5954650))

(assert (= (and b!5954652 (not c!1059878)) b!5954649))

(assert (= (or b!5954653 b!5954650) bm!474493))

(declare-fun m!6842136 () Bool)

(assert (=> b!5954651 m!6842136))

(declare-fun m!6842138 () Bool)

(assert (=> b!5954653 m!6842138))

(declare-fun m!6842140 () Bool)

(assert (=> bm!474493 m!6842140))

(assert (=> b!5953245 d!1866832))

(declare-fun bs!1411259 () Bool)

(declare-fun d!1866834 () Bool)

(assert (= bs!1411259 (and d!1866834 b!5953406)))

(declare-fun lambda!325183 () Int)

(assert (=> bs!1411259 (not (= lambda!325183 lambda!325055))))

(declare-fun bs!1411260 () Bool)

(assert (= bs!1411260 (and d!1866834 d!1866476)))

(assert (=> bs!1411260 (= lambda!325183 lambda!325116)))

(declare-fun bs!1411261 () Bool)

(assert (= bs!1411261 (and d!1866834 d!1866550)))

(assert (=> bs!1411261 (= lambda!325183 lambda!325128)))

(declare-fun bs!1411262 () Bool)

(assert (= bs!1411262 (and d!1866834 b!5954215)))

(assert (=> bs!1411262 (not (= lambda!325183 lambda!325138))))

(declare-fun bs!1411263 () Bool)

(assert (= bs!1411263 (and d!1866834 b!5953408)))

(assert (=> bs!1411263 (not (= lambda!325183 lambda!325056))))

(declare-fun bs!1411264 () Bool)

(assert (= bs!1411264 (and d!1866834 d!1866618)))

(assert (=> bs!1411264 (not (= lambda!325183 lambda!325142))))

(declare-fun bs!1411265 () Bool)

(assert (= bs!1411265 (and d!1866834 d!1866600)))

(assert (=> bs!1411265 (= lambda!325183 lambda!325134)))

(declare-fun bs!1411266 () Bool)

(assert (= bs!1411266 (and d!1866834 b!5953411)))

(assert (=> bs!1411266 (not (= lambda!325183 lambda!325058))))

(declare-fun bs!1411267 () Bool)

(assert (= bs!1411267 (and d!1866834 b!5954217)))

(assert (=> bs!1411267 (not (= lambda!325183 lambda!325139))))

(declare-fun bs!1411268 () Bool)

(assert (= bs!1411268 (and d!1866834 d!1866474)))

(assert (=> bs!1411268 (= lambda!325183 lambda!325115)))

(declare-fun bs!1411269 () Bool)

(assert (= bs!1411269 (and d!1866834 d!1866584)))

(assert (=> bs!1411269 (= lambda!325183 lambda!325132)))

(declare-fun bs!1411270 () Bool)

(assert (= bs!1411270 (and d!1866834 b!5953413)))

(assert (=> bs!1411270 (not (= lambda!325183 lambda!325059))))

(declare-fun bs!1411271 () Bool)

(assert (= bs!1411271 (and d!1866834 d!1866526)))

(assert (=> bs!1411271 (= lambda!325183 lambda!325124)))

(declare-fun bs!1411272 () Bool)

(assert (= bs!1411272 (and d!1866834 d!1866694)))

(assert (=> bs!1411272 (= lambda!325183 lambda!325155)))

(assert (=> d!1866834 (= (nullableZipper!1804 lt!2313757) (exists!2353 lt!2313757 lambda!325183))))

(declare-fun bs!1411273 () Bool)

(assert (= bs!1411273 d!1866834))

(declare-fun m!6842146 () Bool)

(assert (=> bs!1411273 m!6842146))

(assert (=> b!5953869 d!1866834))

(declare-fun d!1866838 () Bool)

(assert (=> d!1866838 (= ($colon$colon!1883 (exprs!5881 lt!2313746) (ite (or c!1059488 c!1059487) (regTwo!32506 (regOne!32506 r!7292)) (regOne!32506 r!7292))) (Cons!64166 (ite (or c!1059488 c!1059487) (regTwo!32506 (regOne!32506 r!7292)) (regOne!32506 r!7292)) (exprs!5881 lt!2313746)))))

(assert (=> bm!474268 d!1866838))

(declare-fun d!1866840 () Bool)

(assert (=> d!1866840 (= (nullable!5992 (regOne!32506 (regTwo!32506 r!7292))) (nullableFct!1963 (regOne!32506 (regTwo!32506 r!7292))))))

(declare-fun bs!1411274 () Bool)

(assert (= bs!1411274 d!1866840))

(declare-fun m!6842148 () Bool)

(assert (=> bs!1411274 m!6842148))

(assert (=> b!5953289 d!1866840))

(declare-fun d!1866842 () Bool)

(declare-fun c!1059880 () Bool)

(assert (=> d!1866842 (= c!1059880 (isEmpty!36053 (tail!11621 s!2326)))))

(declare-fun e!3642610 () Bool)

(assert (=> d!1866842 (= (matchZipper!2033 (derivationStepZipper!1978 lt!2313741 (head!12536 s!2326)) (tail!11621 s!2326)) e!3642610)))

(declare-fun b!5954660 () Bool)

(assert (=> b!5954660 (= e!3642610 (nullableZipper!1804 (derivationStepZipper!1978 lt!2313741 (head!12536 s!2326))))))

(declare-fun b!5954661 () Bool)

(assert (=> b!5954661 (= e!3642610 (matchZipper!2033 (derivationStepZipper!1978 (derivationStepZipper!1978 lt!2313741 (head!12536 s!2326)) (head!12536 (tail!11621 s!2326))) (tail!11621 (tail!11621 s!2326))))))

(assert (= (and d!1866842 c!1059880) b!5954660))

(assert (= (and d!1866842 (not c!1059880)) b!5954661))

(assert (=> d!1866842 m!6840968))

(assert (=> d!1866842 m!6841338))

(assert (=> b!5954660 m!6841316))

(declare-fun m!6842150 () Bool)

(assert (=> b!5954660 m!6842150))

(assert (=> b!5954661 m!6840968))

(assert (=> b!5954661 m!6841494))

(assert (=> b!5954661 m!6841316))

(assert (=> b!5954661 m!6841494))

(declare-fun m!6842152 () Bool)

(assert (=> b!5954661 m!6842152))

(assert (=> b!5954661 m!6840968))

(assert (=> b!5954661 m!6841498))

(assert (=> b!5954661 m!6842152))

(assert (=> b!5954661 m!6841498))

(declare-fun m!6842154 () Bool)

(assert (=> b!5954661 m!6842154))

(assert (=> b!5953872 d!1866842))

(declare-fun bs!1411275 () Bool)

(declare-fun d!1866844 () Bool)

(assert (= bs!1411275 (and d!1866844 d!1866596)))

(declare-fun lambda!325184 () Int)

(assert (=> bs!1411275 (= (= (head!12536 s!2326) (head!12536 (t!377702 s!2326))) (= lambda!325184 lambda!325133))))

(declare-fun bs!1411276 () Bool)

(assert (= bs!1411276 (and d!1866844 d!1866772)))

(assert (=> bs!1411276 (= (= (head!12536 s!2326) (head!12536 (t!377702 s!2326))) (= lambda!325184 lambda!325171))))

(declare-fun bs!1411277 () Bool)

(assert (= bs!1411277 (and d!1866844 d!1866556)))

(assert (=> bs!1411277 (= lambda!325184 lambda!325129)))

(declare-fun bs!1411278 () Bool)

(assert (= bs!1411278 (and d!1866844 d!1866698)))

(assert (=> bs!1411278 (= (= (head!12536 s!2326) (head!12536 (t!377702 s!2326))) (= lambda!325184 lambda!325156))))

(declare-fun bs!1411279 () Bool)

(assert (= bs!1411279 (and d!1866844 d!1866386)))

(assert (=> bs!1411279 (= (= (head!12536 s!2326) (h!70615 s!2326)) (= lambda!325184 lambda!325084))))

(declare-fun bs!1411280 () Bool)

(assert (= bs!1411280 (and d!1866844 d!1866684)))

(assert (=> bs!1411280 (= (= (head!12536 s!2326) (head!12536 (t!377702 s!2326))) (= lambda!325184 lambda!325153))))

(declare-fun bs!1411281 () Bool)

(assert (= bs!1411281 (and d!1866844 d!1866326)))

(assert (=> bs!1411281 (= (= (head!12536 s!2326) (h!70615 s!2326)) (= lambda!325184 lambda!325065))))

(declare-fun bs!1411282 () Bool)

(assert (= bs!1411282 (and d!1866844 d!1866454)))

(assert (=> bs!1411282 (= (= (head!12536 s!2326) (h!70615 s!2326)) (= lambda!325184 lambda!325106))))

(declare-fun bs!1411283 () Bool)

(assert (= bs!1411283 (and d!1866844 d!1866566)))

(assert (=> bs!1411283 (= (= (head!12536 s!2326) (head!12536 (t!377702 s!2326))) (= lambda!325184 lambda!325130))))

(declare-fun bs!1411284 () Bool)

(assert (= bs!1411284 (and d!1866844 b!5953147)))

(assert (=> bs!1411284 (= (= (head!12536 s!2326) (h!70615 s!2326)) (= lambda!325184 lambda!325000))))

(assert (=> d!1866844 true))

(assert (=> d!1866844 (= (derivationStepZipper!1978 lt!2313741 (head!12536 s!2326)) (flatMap!1510 lt!2313741 lambda!325184))))

(declare-fun bs!1411285 () Bool)

(assert (= bs!1411285 d!1866844))

(declare-fun m!6842156 () Bool)

(assert (=> bs!1411285 m!6842156))

(assert (=> b!5953872 d!1866844))

(assert (=> b!5953872 d!1866558))

(assert (=> b!5953872 d!1866560))

(declare-fun d!1866846 () Bool)

(assert (=> d!1866846 (= (isEmptyExpr!1424 lt!2313852) ((_ is EmptyExpr!15997) lt!2313852))))

(assert (=> b!5953483 d!1866846))

(declare-fun d!1866850 () Bool)

(assert (=> d!1866850 (= (head!12535 (unfocusZipperList!1418 zl!343)) (h!70614 (unfocusZipperList!1418 zl!343)))))

(assert (=> b!5953352 d!1866850))

(declare-fun b!5954671 () Bool)

(declare-fun e!3642624 () (InoxSet Context!10762))

(declare-fun call!474504 () (InoxSet Context!10762))

(assert (=> b!5954671 (= e!3642624 call!474504)))

(declare-fun bm!474494 () Bool)

(declare-fun call!474501 () (InoxSet Context!10762))

(declare-fun call!474503 () (InoxSet Context!10762))

(assert (=> bm!474494 (= call!474501 call!474503)))

(declare-fun b!5954672 () Bool)

(declare-fun e!3642622 () (InoxSet Context!10762))

(declare-fun e!3642625 () (InoxSet Context!10762))

(assert (=> b!5954672 (= e!3642622 e!3642625)))

(declare-fun c!1059881 () Bool)

(assert (=> b!5954672 (= c!1059881 ((_ is Union!15997) (ite c!1059601 (regOne!32507 r!7292) (ite c!1059604 (regTwo!32506 r!7292) (ite c!1059603 (regOne!32506 r!7292) (reg!16326 r!7292))))))))

(declare-fun bm!474495 () Bool)

(declare-fun c!1059884 () Bool)

(declare-fun call!474502 () List!64290)

(declare-fun c!1059883 () Bool)

(assert (=> bm!474495 (= call!474503 (derivationStepZipperDown!1247 (ite c!1059881 (regOne!32507 (ite c!1059601 (regOne!32507 r!7292) (ite c!1059604 (regTwo!32506 r!7292) (ite c!1059603 (regOne!32506 r!7292) (reg!16326 r!7292))))) (ite c!1059884 (regTwo!32506 (ite c!1059601 (regOne!32507 r!7292) (ite c!1059604 (regTwo!32506 r!7292) (ite c!1059603 (regOne!32506 r!7292) (reg!16326 r!7292))))) (ite c!1059883 (regOne!32506 (ite c!1059601 (regOne!32507 r!7292) (ite c!1059604 (regTwo!32506 r!7292) (ite c!1059603 (regOne!32506 r!7292) (reg!16326 r!7292))))) (reg!16326 (ite c!1059601 (regOne!32507 r!7292) (ite c!1059604 (regTwo!32506 r!7292) (ite c!1059603 (regOne!32506 r!7292) (reg!16326 r!7292)))))))) (ite (or c!1059881 c!1059884) (ite (or c!1059601 c!1059604) lt!2313735 (Context!10763 call!474321)) (Context!10763 call!474502)) (h!70615 s!2326)))))

(declare-fun bm!474496 () Bool)

(assert (=> bm!474496 (= call!474504 call!474501)))

(declare-fun b!5954673 () Bool)

(declare-fun e!3642621 () (InoxSet Context!10762))

(assert (=> b!5954673 (= e!3642621 call!474504)))

(declare-fun b!5954674 () Bool)

(declare-fun e!3642620 () Bool)

(assert (=> b!5954674 (= e!3642620 (nullable!5992 (regOne!32506 (ite c!1059601 (regOne!32507 r!7292) (ite c!1059604 (regTwo!32506 r!7292) (ite c!1059603 (regOne!32506 r!7292) (reg!16326 r!7292)))))))))

(declare-fun b!5954675 () Bool)

(declare-fun e!3642623 () (InoxSet Context!10762))

(declare-fun call!474500 () (InoxSet Context!10762))

(assert (=> b!5954675 (= e!3642623 ((_ map or) call!474500 call!474501))))

(declare-fun d!1866852 () Bool)

(declare-fun c!1059882 () Bool)

(assert (=> d!1866852 (= c!1059882 (and ((_ is ElementMatch!15997) (ite c!1059601 (regOne!32507 r!7292) (ite c!1059604 (regTwo!32506 r!7292) (ite c!1059603 (regOne!32506 r!7292) (reg!16326 r!7292))))) (= (c!1059438 (ite c!1059601 (regOne!32507 r!7292) (ite c!1059604 (regTwo!32506 r!7292) (ite c!1059603 (regOne!32506 r!7292) (reg!16326 r!7292))))) (h!70615 s!2326))))))

(assert (=> d!1866852 (= (derivationStepZipperDown!1247 (ite c!1059601 (regOne!32507 r!7292) (ite c!1059604 (regTwo!32506 r!7292) (ite c!1059603 (regOne!32506 r!7292) (reg!16326 r!7292)))) (ite (or c!1059601 c!1059604) lt!2313735 (Context!10763 call!474321)) (h!70615 s!2326)) e!3642622)))

(declare-fun b!5954676 () Bool)

(assert (=> b!5954676 (= e!3642622 (store ((as const (Array Context!10762 Bool)) false) (ite (or c!1059601 c!1059604) lt!2313735 (Context!10763 call!474321)) true))))

(declare-fun call!474499 () List!64290)

(declare-fun bm!474497 () Bool)

(assert (=> bm!474497 (= call!474499 ($colon$colon!1883 (exprs!5881 (ite (or c!1059601 c!1059604) lt!2313735 (Context!10763 call!474321))) (ite (or c!1059884 c!1059883) (regTwo!32506 (ite c!1059601 (regOne!32507 r!7292) (ite c!1059604 (regTwo!32506 r!7292) (ite c!1059603 (regOne!32506 r!7292) (reg!16326 r!7292))))) (ite c!1059601 (regOne!32507 r!7292) (ite c!1059604 (regTwo!32506 r!7292) (ite c!1059603 (regOne!32506 r!7292) (reg!16326 r!7292)))))))))

(declare-fun b!5954677 () Bool)

(declare-fun c!1059885 () Bool)

(assert (=> b!5954677 (= c!1059885 ((_ is Star!15997) (ite c!1059601 (regOne!32507 r!7292) (ite c!1059604 (regTwo!32506 r!7292) (ite c!1059603 (regOne!32506 r!7292) (reg!16326 r!7292))))))))

(assert (=> b!5954677 (= e!3642624 e!3642621)))

(declare-fun b!5954678 () Bool)

(assert (=> b!5954678 (= e!3642621 ((as const (Array Context!10762 Bool)) false))))

(declare-fun b!5954679 () Bool)

(assert (=> b!5954679 (= e!3642623 e!3642624)))

(assert (=> b!5954679 (= c!1059883 ((_ is Concat!24842) (ite c!1059601 (regOne!32507 r!7292) (ite c!1059604 (regTwo!32506 r!7292) (ite c!1059603 (regOne!32506 r!7292) (reg!16326 r!7292))))))))

(declare-fun bm!474498 () Bool)

(assert (=> bm!474498 (= call!474502 call!474499)))

(declare-fun bm!474499 () Bool)

(assert (=> bm!474499 (= call!474500 (derivationStepZipperDown!1247 (ite c!1059881 (regTwo!32507 (ite c!1059601 (regOne!32507 r!7292) (ite c!1059604 (regTwo!32506 r!7292) (ite c!1059603 (regOne!32506 r!7292) (reg!16326 r!7292))))) (regOne!32506 (ite c!1059601 (regOne!32507 r!7292) (ite c!1059604 (regTwo!32506 r!7292) (ite c!1059603 (regOne!32506 r!7292) (reg!16326 r!7292)))))) (ite c!1059881 (ite (or c!1059601 c!1059604) lt!2313735 (Context!10763 call!474321)) (Context!10763 call!474499)) (h!70615 s!2326)))))

(declare-fun b!5954680 () Bool)

(assert (=> b!5954680 (= c!1059884 e!3642620)))

(declare-fun res!2492510 () Bool)

(assert (=> b!5954680 (=> (not res!2492510) (not e!3642620))))

(assert (=> b!5954680 (= res!2492510 ((_ is Concat!24842) (ite c!1059601 (regOne!32507 r!7292) (ite c!1059604 (regTwo!32506 r!7292) (ite c!1059603 (regOne!32506 r!7292) (reg!16326 r!7292))))))))

(assert (=> b!5954680 (= e!3642625 e!3642623)))

(declare-fun b!5954681 () Bool)

(assert (=> b!5954681 (= e!3642625 ((_ map or) call!474503 call!474500))))

(assert (= (and d!1866852 c!1059882) b!5954676))

(assert (= (and d!1866852 (not c!1059882)) b!5954672))

(assert (= (and b!5954672 c!1059881) b!5954681))

(assert (= (and b!5954672 (not c!1059881)) b!5954680))

(assert (= (and b!5954680 res!2492510) b!5954674))

(assert (= (and b!5954680 c!1059884) b!5954675))

(assert (= (and b!5954680 (not c!1059884)) b!5954679))

(assert (= (and b!5954679 c!1059883) b!5954671))

(assert (= (and b!5954679 (not c!1059883)) b!5954677))

(assert (= (and b!5954677 c!1059885) b!5954673))

(assert (= (and b!5954677 (not c!1059885)) b!5954678))

(assert (= (or b!5954671 b!5954673) bm!474498))

(assert (= (or b!5954671 b!5954673) bm!474496))

(assert (= (or b!5954675 bm!474498) bm!474497))

(assert (= (or b!5954675 bm!474496) bm!474494))

(assert (= (or b!5954681 b!5954675) bm!474499))

(assert (= (or b!5954681 bm!474494) bm!474495))

(declare-fun m!6842168 () Bool)

(assert (=> b!5954674 m!6842168))

(declare-fun m!6842170 () Bool)

(assert (=> bm!474495 m!6842170))

(declare-fun m!6842172 () Bool)

(assert (=> bm!474497 m!6842172))

(declare-fun m!6842174 () Bool)

(assert (=> bm!474499 m!6842174))

(declare-fun m!6842176 () Bool)

(assert (=> b!5954676 m!6842176))

(assert (=> bm!474314 d!1866852))

(assert (=> b!5953951 d!1866592))

(assert (=> b!5953951 d!1866560))

(declare-fun d!1866860 () Bool)

(declare-fun res!2492514 () Bool)

(declare-fun e!3642634 () Bool)

(assert (=> d!1866860 (=> res!2492514 e!3642634)))

(assert (=> d!1866860 (= res!2492514 ((_ is Nil!64168) (Cons!64168 lt!2313738 Nil!64168)))))

(assert (=> d!1866860 (= (forall!15086 (Cons!64168 lt!2313738 Nil!64168) lambda!325056) e!3642634)))

(declare-fun b!5954695 () Bool)

(declare-fun e!3642635 () Bool)

(assert (=> b!5954695 (= e!3642634 e!3642635)))

(declare-fun res!2492515 () Bool)

(assert (=> b!5954695 (=> (not res!2492515) (not e!3642635))))

(assert (=> b!5954695 (= res!2492515 (dynLambda!25114 lambda!325056 (h!70616 (Cons!64168 lt!2313738 Nil!64168))))))

(declare-fun b!5954696 () Bool)

(assert (=> b!5954696 (= e!3642635 (forall!15086 (t!377703 (Cons!64168 lt!2313738 Nil!64168)) lambda!325056))))

(assert (= (and d!1866860 (not res!2492514)) b!5954695))

(assert (= (and b!5954695 res!2492515) b!5954696))

(declare-fun b_lambda!223831 () Bool)

(assert (=> (not b_lambda!223831) (not b!5954695)))

(declare-fun m!6842188 () Bool)

(assert (=> b!5954695 m!6842188))

(declare-fun m!6842190 () Bool)

(assert (=> b!5954696 m!6842190))

(assert (=> b!5953408 d!1866860))

(declare-fun d!1866864 () Bool)

(assert (=> d!1866864 (= (isEmpty!36049 (unfocusZipperList!1418 zl!343)) ((_ is Nil!64166) (unfocusZipperList!1418 zl!343)))))

(assert (=> b!5953348 d!1866864))

(assert (=> d!1866294 d!1866296))

(declare-fun d!1866866 () Bool)

(assert (=> d!1866866 (= (flatMap!1510 lt!2313752 lambda!325000) (dynLambda!25107 lambda!325000 lt!2313746))))

(assert (=> d!1866866 true))

(declare-fun _$13!2760 () Unit!157265)

(assert (=> d!1866866 (= (choose!44870 lt!2313752 lt!2313746 lambda!325000) _$13!2760)))

(declare-fun b_lambda!223833 () Bool)

(assert (=> (not b_lambda!223833) (not d!1866866)))

(declare-fun bs!1411287 () Bool)

(assert (= bs!1411287 d!1866866))

(assert (=> bs!1411287 m!6840630))

(assert (=> bs!1411287 m!6840860))

(assert (=> d!1866294 d!1866866))

(assert (=> d!1866450 d!1866544))

(declare-fun b!5954711 () Bool)

(declare-fun e!3642647 () (InoxSet Context!10762))

(declare-fun call!474517 () (InoxSet Context!10762))

(assert (=> b!5954711 (= e!3642647 call!474517)))

(declare-fun bm!474507 () Bool)

(declare-fun call!474514 () (InoxSet Context!10762))

(declare-fun call!474516 () (InoxSet Context!10762))

(assert (=> bm!474507 (= call!474514 call!474516)))

(declare-fun b!5954712 () Bool)

(declare-fun e!3642645 () (InoxSet Context!10762))

(declare-fun e!3642648 () (InoxSet Context!10762))

(assert (=> b!5954712 (= e!3642645 e!3642648)))

(declare-fun c!1059894 () Bool)

(assert (=> b!5954712 (= c!1059894 ((_ is Union!15997) (h!70614 (exprs!5881 (h!70616 zl!343)))))))

(declare-fun call!474515 () List!64290)

(declare-fun bm!474508 () Bool)

(declare-fun c!1059896 () Bool)

(declare-fun c!1059897 () Bool)

(assert (=> bm!474508 (= call!474516 (derivationStepZipperDown!1247 (ite c!1059894 (regOne!32507 (h!70614 (exprs!5881 (h!70616 zl!343)))) (ite c!1059897 (regTwo!32506 (h!70614 (exprs!5881 (h!70616 zl!343)))) (ite c!1059896 (regOne!32506 (h!70614 (exprs!5881 (h!70616 zl!343)))) (reg!16326 (h!70614 (exprs!5881 (h!70616 zl!343))))))) (ite (or c!1059894 c!1059897) (Context!10763 (t!377701 (exprs!5881 (h!70616 zl!343)))) (Context!10763 call!474515)) (h!70615 s!2326)))))

(declare-fun bm!474509 () Bool)

(assert (=> bm!474509 (= call!474517 call!474514)))

(declare-fun b!5954713 () Bool)

(declare-fun e!3642644 () (InoxSet Context!10762))

(assert (=> b!5954713 (= e!3642644 call!474517)))

(declare-fun b!5954714 () Bool)

(declare-fun e!3642643 () Bool)

(assert (=> b!5954714 (= e!3642643 (nullable!5992 (regOne!32506 (h!70614 (exprs!5881 (h!70616 zl!343))))))))

(declare-fun b!5954715 () Bool)

(declare-fun e!3642646 () (InoxSet Context!10762))

(declare-fun call!474513 () (InoxSet Context!10762))

(assert (=> b!5954715 (= e!3642646 ((_ map or) call!474513 call!474514))))

(declare-fun d!1866868 () Bool)

(declare-fun c!1059895 () Bool)

(assert (=> d!1866868 (= c!1059895 (and ((_ is ElementMatch!15997) (h!70614 (exprs!5881 (h!70616 zl!343)))) (= (c!1059438 (h!70614 (exprs!5881 (h!70616 zl!343)))) (h!70615 s!2326))))))

(assert (=> d!1866868 (= (derivationStepZipperDown!1247 (h!70614 (exprs!5881 (h!70616 zl!343))) (Context!10763 (t!377701 (exprs!5881 (h!70616 zl!343)))) (h!70615 s!2326)) e!3642645)))

(declare-fun b!5954716 () Bool)

(assert (=> b!5954716 (= e!3642645 (store ((as const (Array Context!10762 Bool)) false) (Context!10763 (t!377701 (exprs!5881 (h!70616 zl!343)))) true))))

(declare-fun call!474512 () List!64290)

(declare-fun bm!474510 () Bool)

(assert (=> bm!474510 (= call!474512 ($colon$colon!1883 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 (h!70616 zl!343))))) (ite (or c!1059897 c!1059896) (regTwo!32506 (h!70614 (exprs!5881 (h!70616 zl!343)))) (h!70614 (exprs!5881 (h!70616 zl!343))))))))

(declare-fun b!5954717 () Bool)

(declare-fun c!1059898 () Bool)

(assert (=> b!5954717 (= c!1059898 ((_ is Star!15997) (h!70614 (exprs!5881 (h!70616 zl!343)))))))

(assert (=> b!5954717 (= e!3642647 e!3642644)))

(declare-fun b!5954718 () Bool)

(assert (=> b!5954718 (= e!3642644 ((as const (Array Context!10762 Bool)) false))))

(declare-fun b!5954719 () Bool)

(assert (=> b!5954719 (= e!3642646 e!3642647)))

(assert (=> b!5954719 (= c!1059896 ((_ is Concat!24842) (h!70614 (exprs!5881 (h!70616 zl!343)))))))

(declare-fun bm!474511 () Bool)

(assert (=> bm!474511 (= call!474515 call!474512)))

(declare-fun bm!474512 () Bool)

(assert (=> bm!474512 (= call!474513 (derivationStepZipperDown!1247 (ite c!1059894 (regTwo!32507 (h!70614 (exprs!5881 (h!70616 zl!343)))) (regOne!32506 (h!70614 (exprs!5881 (h!70616 zl!343))))) (ite c!1059894 (Context!10763 (t!377701 (exprs!5881 (h!70616 zl!343)))) (Context!10763 call!474512)) (h!70615 s!2326)))))

(declare-fun b!5954720 () Bool)

(assert (=> b!5954720 (= c!1059897 e!3642643)))

(declare-fun res!2492524 () Bool)

(assert (=> b!5954720 (=> (not res!2492524) (not e!3642643))))

(assert (=> b!5954720 (= res!2492524 ((_ is Concat!24842) (h!70614 (exprs!5881 (h!70616 zl!343)))))))

(assert (=> b!5954720 (= e!3642648 e!3642646)))

(declare-fun b!5954721 () Bool)

(assert (=> b!5954721 (= e!3642648 ((_ map or) call!474516 call!474513))))

(assert (= (and d!1866868 c!1059895) b!5954716))

(assert (= (and d!1866868 (not c!1059895)) b!5954712))

(assert (= (and b!5954712 c!1059894) b!5954721))

(assert (= (and b!5954712 (not c!1059894)) b!5954720))

(assert (= (and b!5954720 res!2492524) b!5954714))

(assert (= (and b!5954720 c!1059897) b!5954715))

(assert (= (and b!5954720 (not c!1059897)) b!5954719))

(assert (= (and b!5954719 c!1059896) b!5954711))

(assert (= (and b!5954719 (not c!1059896)) b!5954717))

(assert (= (and b!5954717 c!1059898) b!5954713))

(assert (= (and b!5954717 (not c!1059898)) b!5954718))

(assert (= (or b!5954711 b!5954713) bm!474511))

(assert (= (or b!5954711 b!5954713) bm!474509))

(assert (= (or b!5954715 bm!474511) bm!474510))

(assert (= (or b!5954715 bm!474509) bm!474507))

(assert (= (or b!5954721 b!5954715) bm!474512))

(assert (= (or b!5954721 bm!474507) bm!474508))

(declare-fun m!6842204 () Bool)

(assert (=> b!5954714 m!6842204))

(declare-fun m!6842206 () Bool)

(assert (=> bm!474508 m!6842206))

(declare-fun m!6842208 () Bool)

(assert (=> bm!474510 m!6842208))

(declare-fun m!6842210 () Bool)

(assert (=> bm!474512 m!6842210))

(declare-fun m!6842212 () Bool)

(assert (=> b!5954716 m!6842212))

(assert (=> bm!474333 d!1866868))

(declare-fun d!1866874 () Bool)

(assert (=> d!1866874 (= (Exists!3067 lambda!325104) (choose!44877 lambda!325104))))

(declare-fun bs!1411288 () Bool)

(assert (= bs!1411288 d!1866874))

(declare-fun m!6842214 () Bool)

(assert (=> bs!1411288 m!6842214))

(assert (=> d!1866442 d!1866874))

(declare-fun d!1866876 () Bool)

(assert (=> d!1866876 (= (Exists!3067 lambda!325105) (choose!44877 lambda!325105))))

(declare-fun bs!1411289 () Bool)

(assert (= bs!1411289 d!1866876))

(declare-fun m!6842216 () Bool)

(assert (=> bs!1411289 m!6842216))

(assert (=> d!1866442 d!1866876))

(declare-fun bs!1411306 () Bool)

(declare-fun d!1866878 () Bool)

(assert (= bs!1411306 (and d!1866878 b!5954330)))

(declare-fun lambda!325192 () Int)

(assert (=> bs!1411306 (not (= lambda!325192 lambda!325151))))

(declare-fun bs!1411308 () Bool)

(assert (= bs!1411308 (and d!1866878 b!5953915)))

(assert (=> bs!1411308 (not (= lambda!325192 lambda!325111))))

(declare-fun bs!1411310 () Bool)

(assert (= bs!1411310 (and d!1866878 b!5954336)))

(assert (=> bs!1411310 (not (= lambda!325192 lambda!325150))))

(declare-fun bs!1411312 () Bool)

(assert (= bs!1411312 (and d!1866878 b!5953157)))

(assert (=> bs!1411312 (= lambda!325192 lambda!324998)))

(declare-fun bs!1411314 () Bool)

(assert (= bs!1411314 (and d!1866878 d!1866440)))

(assert (=> bs!1411314 (= lambda!325192 lambda!325099)))

(declare-fun bs!1411316 () Bool)

(assert (= bs!1411316 (and d!1866878 b!5953909)))

(assert (=> bs!1411316 (not (= lambda!325192 lambda!325112))))

(declare-fun bs!1411317 () Bool)

(assert (= bs!1411317 (and d!1866878 d!1866442)))

(assert (=> bs!1411317 (= lambda!325192 lambda!325104)))

(assert (=> bs!1411317 (not (= lambda!325192 lambda!325105))))

(assert (=> bs!1411312 (not (= lambda!325192 lambda!324999))))

(declare-fun bs!1411319 () Bool)

(assert (= bs!1411319 (and d!1866878 d!1866654)))

(assert (=> bs!1411319 (= lambda!325192 lambda!325149)))

(assert (=> d!1866878 true))

(assert (=> d!1866878 true))

(assert (=> d!1866878 true))

(declare-fun lambda!325194 () Int)

(assert (=> bs!1411306 (= (and (= (regOne!32506 r!7292) (regOne!32506 (regTwo!32507 r!7292))) (= (regTwo!32506 r!7292) (regTwo!32506 (regTwo!32507 r!7292)))) (= lambda!325194 lambda!325151))))

(assert (=> bs!1411308 (not (= lambda!325194 lambda!325111))))

(assert (=> bs!1411310 (not (= lambda!325194 lambda!325150))))

(assert (=> bs!1411312 (not (= lambda!325194 lambda!324998))))

(assert (=> bs!1411314 (not (= lambda!325194 lambda!325099))))

(assert (=> bs!1411316 (= lambda!325194 lambda!325112)))

(assert (=> bs!1411317 (not (= lambda!325194 lambda!325104))))

(assert (=> bs!1411317 (= lambda!325194 lambda!325105)))

(declare-fun bs!1411328 () Bool)

(assert (= bs!1411328 d!1866878))

(assert (=> bs!1411328 (not (= lambda!325194 lambda!325192))))

(assert (=> bs!1411312 (= lambda!325194 lambda!324999)))

(assert (=> bs!1411319 (not (= lambda!325194 lambda!325149))))

(assert (=> d!1866878 true))

(assert (=> d!1866878 true))

(assert (=> d!1866878 true))

(assert (=> d!1866878 (= (Exists!3067 lambda!325192) (Exists!3067 lambda!325194))))

(assert (=> d!1866878 true))

(declare-fun _$90!1650 () Unit!157265)

(assert (=> d!1866878 (= (choose!44879 (regOne!32506 r!7292) (regTwo!32506 r!7292) s!2326) _$90!1650)))

(declare-fun m!6842240 () Bool)

(assert (=> bs!1411328 m!6842240))

(declare-fun m!6842242 () Bool)

(assert (=> bs!1411328 m!6842242))

(assert (=> d!1866442 d!1866878))

(assert (=> d!1866442 d!1866648))

(declare-fun d!1866894 () Bool)

(assert (=> d!1866894 (= (nullable!5992 (h!70614 (exprs!5881 lt!2313738))) (nullableFct!1963 (h!70614 (exprs!5881 lt!2313738))))))

(declare-fun bs!1411330 () Bool)

(assert (= bs!1411330 d!1866894))

(declare-fun m!6842244 () Bool)

(assert (=> bs!1411330 m!6842244))

(assert (=> b!5953319 d!1866894))

(declare-fun d!1866896 () Bool)

(declare-fun res!2492542 () Bool)

(declare-fun e!3642676 () Bool)

(assert (=> d!1866896 (=> res!2492542 e!3642676)))

(assert (=> d!1866896 (= res!2492542 ((_ is Nil!64168) (t!377703 (Cons!64168 lt!2313743 Nil!64168))))))

(assert (=> d!1866896 (= (forall!15086 (t!377703 (Cons!64168 lt!2313743 Nil!64168)) lambda!325058) e!3642676)))

(declare-fun b!5954768 () Bool)

(declare-fun e!3642677 () Bool)

(assert (=> b!5954768 (= e!3642676 e!3642677)))

(declare-fun res!2492543 () Bool)

(assert (=> b!5954768 (=> (not res!2492543) (not e!3642677))))

(assert (=> b!5954768 (= res!2492543 (dynLambda!25114 lambda!325058 (h!70616 (t!377703 (Cons!64168 lt!2313743 Nil!64168)))))))

(declare-fun b!5954769 () Bool)

(assert (=> b!5954769 (= e!3642677 (forall!15086 (t!377703 (t!377703 (Cons!64168 lt!2313743 Nil!64168))) lambda!325058))))

(assert (= (and d!1866896 (not res!2492542)) b!5954768))

(assert (= (and b!5954768 res!2492543) b!5954769))

(declare-fun b_lambda!223837 () Bool)

(assert (=> (not b_lambda!223837) (not b!5954768)))

(declare-fun m!6842252 () Bool)

(assert (=> b!5954768 m!6842252))

(declare-fun m!6842254 () Bool)

(assert (=> b!5954769 m!6842254))

(assert (=> b!5953411 d!1866896))

(declare-fun d!1866900 () Bool)

(assert (=> d!1866900 (= (maxBigInt!0 (contextDepth!145 (h!70616 (Cons!64168 lt!2313743 Nil!64168))) (zipperDepth!246 (t!377703 (Cons!64168 lt!2313743 Nil!64168)))) (ite (>= (contextDepth!145 (h!70616 (Cons!64168 lt!2313743 Nil!64168))) (zipperDepth!246 (t!377703 (Cons!64168 lt!2313743 Nil!64168)))) (contextDepth!145 (h!70616 (Cons!64168 lt!2313743 Nil!64168))) (zipperDepth!246 (t!377703 (Cons!64168 lt!2313743 Nil!64168)))))))

(assert (=> b!5953411 d!1866900))

(declare-fun bs!1411331 () Bool)

(declare-fun b!5954770 () Bool)

(assert (= bs!1411331 (and b!5954770 d!1866792)))

(declare-fun lambda!325195 () Int)

(declare-fun lt!2313992 () Int)

(assert (=> bs!1411331 (= (= lt!2313992 lt!2313871) (= lambda!325195 lambda!325178))))

(declare-fun bs!1411332 () Bool)

(assert (= bs!1411332 (and b!5954770 b!5954560)))

(assert (=> bs!1411332 (= (= lt!2313992 lt!2313984) (= lambda!325195 lambda!325172))))

(declare-fun bs!1411333 () Bool)

(assert (= bs!1411333 (and b!5954770 d!1866676)))

(assert (=> bs!1411333 (not (= lambda!325195 lambda!325152))))

(declare-fun bs!1411334 () Bool)

(assert (= bs!1411334 (and b!5954770 b!5954416)))

(assert (=> bs!1411334 (= (= lt!2313992 lt!2313953) (= lambda!325195 lambda!325159))))

(declare-fun bs!1411335 () Bool)

(assert (= bs!1411335 (and b!5954770 b!5954093)))

(assert (=> bs!1411335 (= (= lt!2313992 lt!2313926) (= lambda!325195 lambda!325119))))

(declare-fun bs!1411336 () Bool)

(assert (= bs!1411336 (and b!5954770 d!1866304)))

(assert (=> bs!1411336 (not (= lambda!325195 lambda!325035))))

(declare-fun bs!1411337 () Bool)

(assert (= bs!1411337 (and b!5954770 d!1866302)))

(assert (=> bs!1411337 (not (= lambda!325195 lambda!325029))))

(declare-fun bs!1411338 () Bool)

(assert (= bs!1411338 (and b!5954770 d!1866504)))

(assert (=> bs!1411338 (= (= lt!2313992 lt!2313867) (= lambda!325195 lambda!325122))))

(declare-fun bs!1411339 () Bool)

(assert (= bs!1411339 (and b!5954770 d!1866492)))

(assert (=> bs!1411339 (not (= lambda!325195 lambda!325117))))

(declare-fun bs!1411340 () Bool)

(assert (= bs!1411340 (and b!5954770 b!5953592)))

(assert (=> bs!1411340 (= (= lt!2313992 lt!2313869) (= lambda!325195 lambda!325083))))

(declare-fun bs!1411341 () Bool)

(assert (= bs!1411341 (and b!5954770 d!1866344)))

(assert (=> bs!1411341 (not (= lambda!325195 lambda!325073))))

(declare-fun bs!1411342 () Bool)

(assert (= bs!1411342 (and b!5954770 d!1866308)))

(assert (=> bs!1411342 (not (= lambda!325195 lambda!325043))))

(declare-fun bs!1411343 () Bool)

(assert (= bs!1411343 (and b!5954770 b!5954562)))

(assert (=> bs!1411343 (= (= lt!2313992 lt!2313982) (= lambda!325195 lambda!325175))))

(declare-fun bs!1411344 () Bool)

(assert (= bs!1411344 (and b!5954770 b!5953646)))

(assert (=> bs!1411344 (= (= lt!2313992 lt!2313884) (= lambda!325195 lambda!325086))))

(declare-fun bs!1411345 () Bool)

(assert (= bs!1411345 (and b!5954770 b!5953644)))

(assert (=> bs!1411345 (= (= lt!2313992 lt!2313886) (= lambda!325195 lambda!325085))))

(declare-fun bs!1411346 () Bool)

(assert (= bs!1411346 (and b!5954770 b!5953590)))

(assert (=> bs!1411346 (= (= lt!2313992 lt!2313871) (= lambda!325195 lambda!325082))))

(declare-fun bs!1411347 () Bool)

(assert (= bs!1411347 (and b!5954770 b!5954206)))

(assert (=> bs!1411347 (= (= lt!2313992 lt!2313934) (= lambda!325195 lambda!325136))))

(declare-fun bs!1411348 () Bool)

(assert (= bs!1411348 (and b!5954770 b!5954414)))

(assert (=> bs!1411348 (= (= lt!2313992 lt!2313955) (= lambda!325195 lambda!325158))))

(declare-fun bs!1411349 () Bool)

(assert (= bs!1411349 (and b!5954770 b!5953582)))

(assert (=> bs!1411349 (= (= lt!2313992 lt!2313865) (= lambda!325195 lambda!325081))))

(declare-fun bs!1411350 () Bool)

(assert (= bs!1411350 (and b!5954770 d!1866628)))

(assert (=> bs!1411350 (not (= lambda!325195 lambda!325143))))

(declare-fun bs!1411351 () Bool)

(assert (= bs!1411351 (and b!5954770 d!1866576)))

(assert (=> bs!1411351 (not (= lambda!325195 lambda!325131))))

(declare-fun bs!1411352 () Bool)

(assert (= bs!1411352 (and b!5954770 d!1866722)))

(assert (=> bs!1411352 (= (= lt!2313992 lt!2313886) (= lambda!325195 lambda!325161))))

(declare-fun bs!1411353 () Bool)

(assert (= bs!1411353 (and b!5954770 d!1866816)))

(assert (=> bs!1411353 (not (= lambda!325195 lambda!325181))))

(declare-fun bs!1411354 () Bool)

(assert (= bs!1411354 (and b!5954770 d!1866300)))

(assert (=> bs!1411354 (not (= lambda!325195 lambda!325028))))

(declare-fun bs!1411355 () Bool)

(assert (= bs!1411355 (and b!5954770 b!5954091)))

(assert (=> bs!1411355 (= (= lt!2313992 lt!2313928) (= lambda!325195 lambda!325118))))

(declare-fun bs!1411356 () Bool)

(assert (= bs!1411356 (and b!5954770 d!1866328)))

(assert (=> bs!1411356 (not (= lambda!325195 lambda!325068))))

(declare-fun bs!1411357 () Bool)

(assert (= bs!1411357 (and b!5954770 b!5954204)))

(assert (=> bs!1411357 (= (= lt!2313992 lt!2313936) (= lambda!325195 lambda!325135))))

(declare-fun bs!1411358 () Bool)

(assert (= bs!1411358 (and b!5954770 b!5953580)))

(assert (=> bs!1411358 (= (= lt!2313992 lt!2313867) (= lambda!325195 lambda!325080))))

(assert (=> b!5954770 true))

(declare-fun bs!1411359 () Bool)

(declare-fun b!5954772 () Bool)

(assert (= bs!1411359 (and b!5954772 d!1866792)))

(declare-fun lt!2313990 () Int)

(declare-fun lambda!325198 () Int)

(assert (=> bs!1411359 (= (= lt!2313990 lt!2313871) (= lambda!325198 lambda!325178))))

(declare-fun bs!1411360 () Bool)

(assert (= bs!1411360 (and b!5954772 b!5954560)))

(assert (=> bs!1411360 (= (= lt!2313990 lt!2313984) (= lambda!325198 lambda!325172))))

(declare-fun bs!1411361 () Bool)

(assert (= bs!1411361 (and b!5954772 d!1866676)))

(assert (=> bs!1411361 (not (= lambda!325198 lambda!325152))))

(declare-fun bs!1411362 () Bool)

(assert (= bs!1411362 (and b!5954772 b!5954093)))

(assert (=> bs!1411362 (= (= lt!2313990 lt!2313926) (= lambda!325198 lambda!325119))))

(declare-fun bs!1411363 () Bool)

(assert (= bs!1411363 (and b!5954772 d!1866304)))

(assert (=> bs!1411363 (not (= lambda!325198 lambda!325035))))

(declare-fun bs!1411364 () Bool)

(assert (= bs!1411364 (and b!5954772 d!1866302)))

(assert (=> bs!1411364 (not (= lambda!325198 lambda!325029))))

(declare-fun bs!1411366 () Bool)

(assert (= bs!1411366 (and b!5954772 d!1866504)))

(assert (=> bs!1411366 (= (= lt!2313990 lt!2313867) (= lambda!325198 lambda!325122))))

(declare-fun bs!1411368 () Bool)

(assert (= bs!1411368 (and b!5954772 d!1866492)))

(assert (=> bs!1411368 (not (= lambda!325198 lambda!325117))))

(declare-fun bs!1411369 () Bool)

(assert (= bs!1411369 (and b!5954772 b!5953592)))

(assert (=> bs!1411369 (= (= lt!2313990 lt!2313869) (= lambda!325198 lambda!325083))))

(declare-fun bs!1411371 () Bool)

(assert (= bs!1411371 (and b!5954772 d!1866344)))

(assert (=> bs!1411371 (not (= lambda!325198 lambda!325073))))

(declare-fun bs!1411373 () Bool)

(assert (= bs!1411373 (and b!5954772 d!1866308)))

(assert (=> bs!1411373 (not (= lambda!325198 lambda!325043))))

(declare-fun bs!1411375 () Bool)

(assert (= bs!1411375 (and b!5954772 b!5954562)))

(assert (=> bs!1411375 (= (= lt!2313990 lt!2313982) (= lambda!325198 lambda!325175))))

(declare-fun bs!1411377 () Bool)

(assert (= bs!1411377 (and b!5954772 b!5953646)))

(assert (=> bs!1411377 (= (= lt!2313990 lt!2313884) (= lambda!325198 lambda!325086))))

(declare-fun bs!1411379 () Bool)

(assert (= bs!1411379 (and b!5954772 b!5953644)))

(assert (=> bs!1411379 (= (= lt!2313990 lt!2313886) (= lambda!325198 lambda!325085))))

(declare-fun bs!1411381 () Bool)

(assert (= bs!1411381 (and b!5954772 b!5953590)))

(assert (=> bs!1411381 (= (= lt!2313990 lt!2313871) (= lambda!325198 lambda!325082))))

(declare-fun bs!1411383 () Bool)

(assert (= bs!1411383 (and b!5954772 b!5954206)))

(assert (=> bs!1411383 (= (= lt!2313990 lt!2313934) (= lambda!325198 lambda!325136))))

(declare-fun bs!1411385 () Bool)

(assert (= bs!1411385 (and b!5954772 b!5954414)))

(assert (=> bs!1411385 (= (= lt!2313990 lt!2313955) (= lambda!325198 lambda!325158))))

(declare-fun bs!1411387 () Bool)

(assert (= bs!1411387 (and b!5954772 b!5953582)))

(assert (=> bs!1411387 (= (= lt!2313990 lt!2313865) (= lambda!325198 lambda!325081))))

(declare-fun bs!1411389 () Bool)

(assert (= bs!1411389 (and b!5954772 d!1866628)))

(assert (=> bs!1411389 (not (= lambda!325198 lambda!325143))))

(declare-fun bs!1411391 () Bool)

(assert (= bs!1411391 (and b!5954772 d!1866576)))

(assert (=> bs!1411391 (not (= lambda!325198 lambda!325131))))

(declare-fun bs!1411393 () Bool)

(assert (= bs!1411393 (and b!5954772 d!1866722)))

(assert (=> bs!1411393 (= (= lt!2313990 lt!2313886) (= lambda!325198 lambda!325161))))

(declare-fun bs!1411395 () Bool)

(assert (= bs!1411395 (and b!5954772 d!1866816)))

(assert (=> bs!1411395 (not (= lambda!325198 lambda!325181))))

(declare-fun bs!1411397 () Bool)

(assert (= bs!1411397 (and b!5954772 b!5954416)))

(assert (=> bs!1411397 (= (= lt!2313990 lt!2313953) (= lambda!325198 lambda!325159))))

(declare-fun bs!1411398 () Bool)

(assert (= bs!1411398 (and b!5954772 b!5954770)))

(assert (=> bs!1411398 (= (= lt!2313990 lt!2313992) (= lambda!325198 lambda!325195))))

(declare-fun bs!1411399 () Bool)

(assert (= bs!1411399 (and b!5954772 d!1866300)))

(assert (=> bs!1411399 (not (= lambda!325198 lambda!325028))))

(declare-fun bs!1411400 () Bool)

(assert (= bs!1411400 (and b!5954772 b!5954091)))

(assert (=> bs!1411400 (= (= lt!2313990 lt!2313928) (= lambda!325198 lambda!325118))))

(declare-fun bs!1411402 () Bool)

(assert (= bs!1411402 (and b!5954772 d!1866328)))

(assert (=> bs!1411402 (not (= lambda!325198 lambda!325068))))

(declare-fun bs!1411403 () Bool)

(assert (= bs!1411403 (and b!5954772 b!5954204)))

(assert (=> bs!1411403 (= (= lt!2313990 lt!2313936) (= lambda!325198 lambda!325135))))

(declare-fun bs!1411404 () Bool)

(assert (= bs!1411404 (and b!5954772 b!5953580)))

(assert (=> bs!1411404 (= (= lt!2313990 lt!2313867) (= lambda!325198 lambda!325080))))

(assert (=> b!5954772 true))

(declare-fun d!1866904 () Bool)

(declare-fun e!3642679 () Bool)

(assert (=> d!1866904 e!3642679))

(declare-fun res!2492544 () Bool)

(assert (=> d!1866904 (=> (not res!2492544) (not e!3642679))))

(assert (=> d!1866904 (= res!2492544 (>= lt!2313990 0))))

(declare-fun e!3642678 () Int)

(assert (=> d!1866904 (= lt!2313990 e!3642678)))

(declare-fun c!1059914 () Bool)

(assert (=> d!1866904 (= c!1059914 ((_ is Cons!64166) (exprs!5881 (h!70616 (Cons!64168 lt!2313743 Nil!64168)))))))

(assert (=> d!1866904 (= (contextDepth!145 (h!70616 (Cons!64168 lt!2313743 Nil!64168))) lt!2313990)))

(assert (=> b!5954770 (= e!3642678 lt!2313992)))

(assert (=> b!5954770 (= lt!2313992 (maxBigInt!0 (regexDepth!254 (h!70614 (exprs!5881 (h!70616 (Cons!64168 lt!2313743 Nil!64168))))) (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 (h!70616 (Cons!64168 lt!2313743 Nil!64168))))))))))

(declare-fun lt!2313991 () Unit!157265)

(assert (=> b!5954770 (= lt!2313991 (lemmaForallRegexDepthBiggerThanTransitive!46 (t!377701 (exprs!5881 (h!70616 (Cons!64168 lt!2313743 Nil!64168)))) lt!2313992 (contextDepth!145 (Context!10763 (t!377701 (exprs!5881 (h!70616 (Cons!64168 lt!2313743 Nil!64168))))))))))

(assert (=> b!5954770 (forall!15085 (t!377701 (exprs!5881 (h!70616 (Cons!64168 lt!2313743 Nil!64168)))) lambda!325195)))

(declare-fun lt!2313989 () Unit!157265)

(assert (=> b!5954770 (= lt!2313989 lt!2313991)))

(declare-fun b!5954771 () Bool)

(assert (=> b!5954771 (= e!3642678 0)))

(assert (=> b!5954772 (= e!3642679 (forall!15085 (exprs!5881 (h!70616 (Cons!64168 lt!2313743 Nil!64168))) lambda!325198))))

(assert (= (and d!1866904 c!1059914) b!5954770))

(assert (= (and d!1866904 (not c!1059914)) b!5954771))

(assert (= (and d!1866904 res!2492544) b!5954772))

(declare-fun m!6842260 () Bool)

(assert (=> b!5954770 m!6842260))

(declare-fun m!6842262 () Bool)

(assert (=> b!5954770 m!6842262))

(declare-fun m!6842264 () Bool)

(assert (=> b!5954770 m!6842264))

(assert (=> b!5954770 m!6842262))

(declare-fun m!6842266 () Bool)

(assert (=> b!5954770 m!6842266))

(assert (=> b!5954770 m!6842260))

(assert (=> b!5954770 m!6842262))

(declare-fun m!6842268 () Bool)

(assert (=> b!5954770 m!6842268))

(declare-fun m!6842270 () Bool)

(assert (=> b!5954772 m!6842270))

(assert (=> b!5953411 d!1866904))

(declare-fun bs!1411405 () Bool)

(declare-fun b!5954774 () Bool)

(assert (= bs!1411405 (and b!5954774 b!5953406)))

(declare-fun lambda!325200 () Int)

(assert (=> bs!1411405 (= lambda!325200 lambda!325054)))

(declare-fun bs!1411406 () Bool)

(assert (= bs!1411406 (and b!5954774 b!5953411)))

(assert (=> bs!1411406 (= lambda!325200 lambda!325057)))

(declare-fun bs!1411407 () Bool)

(assert (= bs!1411407 (and b!5954774 b!5954215)))

(assert (=> bs!1411407 (= lambda!325200 lambda!325137)))

(declare-fun lambda!325201 () Int)

(declare-fun lt!2313997 () Int)

(assert (=> bs!1411405 (= (= lt!2313997 lt!2313840) (= lambda!325201 lambda!325055))))

(declare-fun bs!1411408 () Bool)

(assert (= bs!1411408 (and b!5954774 d!1866476)))

(assert (=> bs!1411408 (not (= lambda!325201 lambda!325116))))

(declare-fun bs!1411409 () Bool)

(assert (= bs!1411409 (and b!5954774 d!1866550)))

(assert (=> bs!1411409 (not (= lambda!325201 lambda!325128))))

(assert (=> bs!1411407 (= (= lt!2313997 lt!2313940) (= lambda!325201 lambda!325138))))

(declare-fun bs!1411410 () Bool)

(assert (= bs!1411410 (and b!5954774 d!1866834)))

(assert (=> bs!1411410 (not (= lambda!325201 lambda!325183))))

(declare-fun bs!1411411 () Bool)

(assert (= bs!1411411 (and b!5954774 b!5953408)))

(assert (=> bs!1411411 (= (= lt!2313997 lt!2313839) (= lambda!325201 lambda!325056))))

(declare-fun bs!1411412 () Bool)

(assert (= bs!1411412 (and b!5954774 d!1866618)))

(assert (=> bs!1411412 (not (= lambda!325201 lambda!325142))))

(declare-fun bs!1411413 () Bool)

(assert (= bs!1411413 (and b!5954774 d!1866600)))

(assert (=> bs!1411413 (not (= lambda!325201 lambda!325134))))

(assert (=> bs!1411406 (= (= lt!2313997 lt!2313844) (= lambda!325201 lambda!325058))))

(declare-fun bs!1411414 () Bool)

(assert (= bs!1411414 (and b!5954774 b!5954217)))

(assert (=> bs!1411414 (= (= lt!2313997 lt!2313939) (= lambda!325201 lambda!325139))))

(declare-fun bs!1411415 () Bool)

(assert (= bs!1411415 (and b!5954774 d!1866474)))

(assert (=> bs!1411415 (not (= lambda!325201 lambda!325115))))

(declare-fun bs!1411416 () Bool)

(assert (= bs!1411416 (and b!5954774 d!1866584)))

(assert (=> bs!1411416 (not (= lambda!325201 lambda!325132))))

(declare-fun bs!1411417 () Bool)

(assert (= bs!1411417 (and b!5954774 b!5953413)))

(assert (=> bs!1411417 (= (= lt!2313997 lt!2313843) (= lambda!325201 lambda!325059))))

(declare-fun bs!1411418 () Bool)

(assert (= bs!1411418 (and b!5954774 d!1866526)))

(assert (=> bs!1411418 (not (= lambda!325201 lambda!325124))))

(declare-fun bs!1411419 () Bool)

(assert (= bs!1411419 (and b!5954774 d!1866694)))

(assert (=> bs!1411419 (not (= lambda!325201 lambda!325155))))

(assert (=> b!5954774 true))

(declare-fun bs!1411420 () Bool)

(declare-fun b!5954776 () Bool)

(assert (= bs!1411420 (and b!5954776 b!5953406)))

(declare-fun lt!2313996 () Int)

(declare-fun lambda!325202 () Int)

(assert (=> bs!1411420 (= (= lt!2313996 lt!2313840) (= lambda!325202 lambda!325055))))

(declare-fun bs!1411421 () Bool)

(assert (= bs!1411421 (and b!5954776 d!1866476)))

(assert (=> bs!1411421 (not (= lambda!325202 lambda!325116))))

(declare-fun bs!1411422 () Bool)

(assert (= bs!1411422 (and b!5954776 b!5954215)))

(assert (=> bs!1411422 (= (= lt!2313996 lt!2313940) (= lambda!325202 lambda!325138))))

(declare-fun bs!1411423 () Bool)

(assert (= bs!1411423 (and b!5954776 d!1866834)))

(assert (=> bs!1411423 (not (= lambda!325202 lambda!325183))))

(declare-fun bs!1411424 () Bool)

(assert (= bs!1411424 (and b!5954776 b!5953408)))

(assert (=> bs!1411424 (= (= lt!2313996 lt!2313839) (= lambda!325202 lambda!325056))))

(declare-fun bs!1411425 () Bool)

(assert (= bs!1411425 (and b!5954776 d!1866618)))

(assert (=> bs!1411425 (not (= lambda!325202 lambda!325142))))

(declare-fun bs!1411426 () Bool)

(assert (= bs!1411426 (and b!5954776 d!1866600)))

(assert (=> bs!1411426 (not (= lambda!325202 lambda!325134))))

(declare-fun bs!1411427 () Bool)

(assert (= bs!1411427 (and b!5954776 b!5953411)))

(assert (=> bs!1411427 (= (= lt!2313996 lt!2313844) (= lambda!325202 lambda!325058))))

(declare-fun bs!1411428 () Bool)

(assert (= bs!1411428 (and b!5954776 d!1866550)))

(assert (=> bs!1411428 (not (= lambda!325202 lambda!325128))))

(declare-fun bs!1411429 () Bool)

(assert (= bs!1411429 (and b!5954776 b!5954774)))

(assert (=> bs!1411429 (= (= lt!2313996 lt!2313997) (= lambda!325202 lambda!325201))))

(declare-fun bs!1411430 () Bool)

(assert (= bs!1411430 (and b!5954776 b!5954217)))

(assert (=> bs!1411430 (= (= lt!2313996 lt!2313939) (= lambda!325202 lambda!325139))))

(declare-fun bs!1411431 () Bool)

(assert (= bs!1411431 (and b!5954776 d!1866474)))

(assert (=> bs!1411431 (not (= lambda!325202 lambda!325115))))

(declare-fun bs!1411432 () Bool)

(assert (= bs!1411432 (and b!5954776 d!1866584)))

(assert (=> bs!1411432 (not (= lambda!325202 lambda!325132))))

(declare-fun bs!1411433 () Bool)

(assert (= bs!1411433 (and b!5954776 b!5953413)))

(assert (=> bs!1411433 (= (= lt!2313996 lt!2313843) (= lambda!325202 lambda!325059))))

(declare-fun bs!1411434 () Bool)

(assert (= bs!1411434 (and b!5954776 d!1866526)))

(assert (=> bs!1411434 (not (= lambda!325202 lambda!325124))))

(declare-fun bs!1411435 () Bool)

(assert (= bs!1411435 (and b!5954776 d!1866694)))

(assert (=> bs!1411435 (not (= lambda!325202 lambda!325155))))

(assert (=> b!5954776 true))

(declare-fun d!1866908 () Bool)

(declare-fun e!3642681 () Bool)

(assert (=> d!1866908 e!3642681))

(declare-fun res!2492545 () Bool)

(assert (=> d!1866908 (=> (not res!2492545) (not e!3642681))))

(assert (=> d!1866908 (= res!2492545 (>= lt!2313996 0))))

(declare-fun e!3642680 () Int)

(assert (=> d!1866908 (= lt!2313996 e!3642680)))

(declare-fun c!1059915 () Bool)

(assert (=> d!1866908 (= c!1059915 ((_ is Cons!64168) (t!377703 (Cons!64168 lt!2313743 Nil!64168))))))

(assert (=> d!1866908 (= (zipperDepth!246 (t!377703 (Cons!64168 lt!2313743 Nil!64168))) lt!2313996)))

(assert (=> b!5954774 (= e!3642680 lt!2313997)))

(assert (=> b!5954774 (= lt!2313997 (maxBigInt!0 (contextDepth!145 (h!70616 (t!377703 (Cons!64168 lt!2313743 Nil!64168)))) (zipperDepth!246 (t!377703 (t!377703 (Cons!64168 lt!2313743 Nil!64168))))))))

(declare-fun lt!2313999 () Unit!157265)

(assert (=> b!5954774 (= lt!2313999 (lemmaForallContextDepthBiggerThanTransitive!131 (t!377703 (t!377703 (Cons!64168 lt!2313743 Nil!64168))) lt!2313997 (zipperDepth!246 (t!377703 (t!377703 (Cons!64168 lt!2313743 Nil!64168)))) lambda!325200))))

(assert (=> b!5954774 (forall!15086 (t!377703 (t!377703 (Cons!64168 lt!2313743 Nil!64168))) lambda!325201)))

(declare-fun lt!2313998 () Unit!157265)

(assert (=> b!5954774 (= lt!2313998 lt!2313999)))

(declare-fun b!5954775 () Bool)

(assert (=> b!5954775 (= e!3642680 0)))

(assert (=> b!5954776 (= e!3642681 (forall!15086 (t!377703 (Cons!64168 lt!2313743 Nil!64168)) lambda!325202))))

(assert (= (and d!1866908 c!1059915) b!5954774))

(assert (= (and d!1866908 (not c!1059915)) b!5954775))

(assert (= (and d!1866908 res!2492545) b!5954776))

(declare-fun m!6842272 () Bool)

(assert (=> b!5954774 m!6842272))

(declare-fun m!6842274 () Bool)

(assert (=> b!5954774 m!6842274))

(assert (=> b!5954774 m!6842274))

(declare-fun m!6842276 () Bool)

(assert (=> b!5954774 m!6842276))

(declare-fun m!6842278 () Bool)

(assert (=> b!5954774 m!6842278))

(assert (=> b!5954774 m!6842272))

(assert (=> b!5954774 m!6842274))

(declare-fun m!6842280 () Bool)

(assert (=> b!5954774 m!6842280))

(declare-fun m!6842282 () Bool)

(assert (=> b!5954776 m!6842282))

(assert (=> b!5953411 d!1866908))

(declare-fun bs!1411436 () Bool)

(declare-fun d!1866910 () Bool)

(assert (= bs!1411436 (and d!1866910 b!5953406)))

(declare-fun lambda!325203 () Int)

(assert (=> bs!1411436 (not (= lambda!325203 lambda!325055))))

(declare-fun bs!1411437 () Bool)

(assert (= bs!1411437 (and d!1866910 b!5954776)))

(assert (=> bs!1411437 (not (= lambda!325203 lambda!325202))))

(declare-fun bs!1411438 () Bool)

(assert (= bs!1411438 (and d!1866910 d!1866476)))

(assert (=> bs!1411438 (not (= lambda!325203 lambda!325116))))

(declare-fun bs!1411439 () Bool)

(assert (= bs!1411439 (and d!1866910 b!5954215)))

(assert (=> bs!1411439 (not (= lambda!325203 lambda!325138))))

(declare-fun bs!1411440 () Bool)

(assert (= bs!1411440 (and d!1866910 d!1866834)))

(assert (=> bs!1411440 (not (= lambda!325203 lambda!325183))))

(declare-fun bs!1411441 () Bool)

(assert (= bs!1411441 (and d!1866910 b!5953408)))

(assert (=> bs!1411441 (not (= lambda!325203 lambda!325056))))

(declare-fun bs!1411442 () Bool)

(assert (= bs!1411442 (and d!1866910 d!1866618)))

(assert (=> bs!1411442 (= (and (= lt!2313844 lt!2313840) (= lambda!325057 lambda!325054)) (= lambda!325203 lambda!325142))))

(declare-fun bs!1411443 () Bool)

(assert (= bs!1411443 (and d!1866910 d!1866600)))

(assert (=> bs!1411443 (not (= lambda!325203 lambda!325134))))

(declare-fun bs!1411444 () Bool)

(assert (= bs!1411444 (and d!1866910 b!5953411)))

(assert (=> bs!1411444 (not (= lambda!325203 lambda!325058))))

(declare-fun bs!1411445 () Bool)

(assert (= bs!1411445 (and d!1866910 d!1866550)))

(assert (=> bs!1411445 (not (= lambda!325203 lambda!325128))))

(declare-fun bs!1411446 () Bool)

(assert (= bs!1411446 (and d!1866910 b!5954774)))

(assert (=> bs!1411446 (not (= lambda!325203 lambda!325201))))

(declare-fun bs!1411447 () Bool)

(assert (= bs!1411447 (and d!1866910 b!5954217)))

(assert (=> bs!1411447 (not (= lambda!325203 lambda!325139))))

(declare-fun bs!1411448 () Bool)

(assert (= bs!1411448 (and d!1866910 d!1866474)))

(assert (=> bs!1411448 (not (= lambda!325203 lambda!325115))))

(declare-fun bs!1411449 () Bool)

(assert (= bs!1411449 (and d!1866910 d!1866584)))

(assert (=> bs!1411449 (not (= lambda!325203 lambda!325132))))

(declare-fun bs!1411450 () Bool)

(assert (= bs!1411450 (and d!1866910 b!5953413)))

(assert (=> bs!1411450 (not (= lambda!325203 lambda!325059))))

(declare-fun bs!1411451 () Bool)

(assert (= bs!1411451 (and d!1866910 d!1866526)))

(assert (=> bs!1411451 (not (= lambda!325203 lambda!325124))))

(declare-fun bs!1411452 () Bool)

(assert (= bs!1411452 (and d!1866910 d!1866694)))

(assert (=> bs!1411452 (not (= lambda!325203 lambda!325155))))

(assert (=> d!1866910 true))

(assert (=> d!1866910 true))

(assert (=> d!1866910 (< (dynLambda!25115 order!27253 lambda!325057) (dynLambda!25116 order!27255 lambda!325203))))

(assert (=> d!1866910 (forall!15086 (t!377703 (Cons!64168 lt!2313743 Nil!64168)) lambda!325203)))

(declare-fun lt!2314002 () Unit!157265)

(assert (=> d!1866910 (= lt!2314002 (choose!44883 (t!377703 (Cons!64168 lt!2313743 Nil!64168)) lt!2313844 (zipperDepth!246 (t!377703 (Cons!64168 lt!2313743 Nil!64168))) lambda!325057))))

(assert (=> d!1866910 (>= lt!2313844 (zipperDepth!246 (t!377703 (Cons!64168 lt!2313743 Nil!64168))))))

(assert (=> d!1866910 (= (lemmaForallContextDepthBiggerThanTransitive!131 (t!377703 (Cons!64168 lt!2313743 Nil!64168)) lt!2313844 (zipperDepth!246 (t!377703 (Cons!64168 lt!2313743 Nil!64168))) lambda!325057) lt!2314002)))

(declare-fun bs!1411453 () Bool)

(assert (= bs!1411453 d!1866910))

(declare-fun m!6842284 () Bool)

(assert (=> bs!1411453 m!6842284))

(assert (=> bs!1411453 m!6840946))

(declare-fun m!6842286 () Bool)

(assert (=> bs!1411453 m!6842286))

(assert (=> b!5953411 d!1866910))

(declare-fun d!1866912 () Bool)

(assert (=> d!1866912 (= (isConcat!947 lt!2313852) ((_ is Concat!24842) lt!2313852))))

(assert (=> b!5953492 d!1866912))

(declare-fun d!1866914 () Bool)

(assert (=> d!1866914 (= (flatMap!1510 lt!2313752 lambda!325065) (choose!44871 lt!2313752 lambda!325065))))

(declare-fun bs!1411454 () Bool)

(assert (= bs!1411454 d!1866914))

(declare-fun m!6842288 () Bool)

(assert (=> bs!1411454 m!6842288))

(assert (=> d!1866326 d!1866914))

(assert (=> bs!1410625 d!1866410))

(declare-fun b!5954811 () Bool)

(declare-fun e!3642706 () (InoxSet Context!10762))

(declare-fun call!474548 () (InoxSet Context!10762))

(assert (=> b!5954811 (= e!3642706 call!474548)))

(declare-fun bm!474538 () Bool)

(declare-fun call!474545 () (InoxSet Context!10762))

(declare-fun call!474547 () (InoxSet Context!10762))

(assert (=> bm!474538 (= call!474545 call!474547)))

(declare-fun b!5954812 () Bool)

(declare-fun e!3642704 () (InoxSet Context!10762))

(declare-fun e!3642707 () (InoxSet Context!10762))

(assert (=> b!5954812 (= e!3642704 e!3642707)))

(declare-fun c!1059930 () Bool)

(assert (=> b!5954812 (= c!1059930 ((_ is Union!15997) (ite c!1059485 (regTwo!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292)))))))

(declare-fun call!474546 () List!64290)

(declare-fun bm!474539 () Bool)

(declare-fun c!1059932 () Bool)

(declare-fun c!1059933 () Bool)

(assert (=> bm!474539 (= call!474547 (derivationStepZipperDown!1247 (ite c!1059930 (regOne!32507 (ite c!1059485 (regTwo!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292)))) (ite c!1059933 (regTwo!32506 (ite c!1059485 (regTwo!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292)))) (ite c!1059932 (regOne!32506 (ite c!1059485 (regTwo!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292)))) (reg!16326 (ite c!1059485 (regTwo!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292))))))) (ite (or c!1059930 c!1059933) (ite c!1059485 lt!2313746 (Context!10763 call!474270)) (Context!10763 call!474546)) (h!70615 s!2326)))))

(declare-fun bm!474540 () Bool)

(assert (=> bm!474540 (= call!474548 call!474545)))

(declare-fun b!5954813 () Bool)

(declare-fun e!3642703 () (InoxSet Context!10762))

(assert (=> b!5954813 (= e!3642703 call!474548)))

(declare-fun b!5954814 () Bool)

(declare-fun e!3642702 () Bool)

(assert (=> b!5954814 (= e!3642702 (nullable!5992 (regOne!32506 (ite c!1059485 (regTwo!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292))))))))

(declare-fun b!5954815 () Bool)

(declare-fun e!3642705 () (InoxSet Context!10762))

(declare-fun call!474544 () (InoxSet Context!10762))

(assert (=> b!5954815 (= e!3642705 ((_ map or) call!474544 call!474545))))

(declare-fun d!1866916 () Bool)

(declare-fun c!1059931 () Bool)

(assert (=> d!1866916 (= c!1059931 (and ((_ is ElementMatch!15997) (ite c!1059485 (regTwo!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292)))) (= (c!1059438 (ite c!1059485 (regTwo!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292)))) (h!70615 s!2326))))))

(assert (=> d!1866916 (= (derivationStepZipperDown!1247 (ite c!1059485 (regTwo!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292))) (ite c!1059485 lt!2313746 (Context!10763 call!474270)) (h!70615 s!2326)) e!3642704)))

(declare-fun b!5954816 () Bool)

(assert (=> b!5954816 (= e!3642704 (store ((as const (Array Context!10762 Bool)) false) (ite c!1059485 lt!2313746 (Context!10763 call!474270)) true))))

(declare-fun call!474543 () List!64290)

(declare-fun bm!474541 () Bool)

(assert (=> bm!474541 (= call!474543 ($colon$colon!1883 (exprs!5881 (ite c!1059485 lt!2313746 (Context!10763 call!474270))) (ite (or c!1059933 c!1059932) (regTwo!32506 (ite c!1059485 (regTwo!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292)))) (ite c!1059485 (regTwo!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292))))))))

(declare-fun b!5954817 () Bool)

(declare-fun c!1059934 () Bool)

(assert (=> b!5954817 (= c!1059934 ((_ is Star!15997) (ite c!1059485 (regTwo!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292)))))))

(assert (=> b!5954817 (= e!3642706 e!3642703)))

(declare-fun b!5954818 () Bool)

(assert (=> b!5954818 (= e!3642703 ((as const (Array Context!10762 Bool)) false))))

(declare-fun b!5954819 () Bool)

(assert (=> b!5954819 (= e!3642705 e!3642706)))

(assert (=> b!5954819 (= c!1059932 ((_ is Concat!24842) (ite c!1059485 (regTwo!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292)))))))

(declare-fun bm!474542 () Bool)

(assert (=> bm!474542 (= call!474546 call!474543)))

(declare-fun bm!474543 () Bool)

(assert (=> bm!474543 (= call!474544 (derivationStepZipperDown!1247 (ite c!1059930 (regTwo!32507 (ite c!1059485 (regTwo!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292)))) (regOne!32506 (ite c!1059485 (regTwo!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292))))) (ite c!1059930 (ite c!1059485 lt!2313746 (Context!10763 call!474270)) (Context!10763 call!474543)) (h!70615 s!2326)))))

(declare-fun b!5954820 () Bool)

(assert (=> b!5954820 (= c!1059933 e!3642702)))

(declare-fun res!2492552 () Bool)

(assert (=> b!5954820 (=> (not res!2492552) (not e!3642702))))

(assert (=> b!5954820 (= res!2492552 ((_ is Concat!24842) (ite c!1059485 (regTwo!32507 (regOne!32506 r!7292)) (regOne!32506 (regOne!32506 r!7292)))))))

(assert (=> b!5954820 (= e!3642707 e!3642705)))

(declare-fun b!5954821 () Bool)

(assert (=> b!5954821 (= e!3642707 ((_ map or) call!474547 call!474544))))

(assert (= (and d!1866916 c!1059931) b!5954816))

(assert (= (and d!1866916 (not c!1059931)) b!5954812))

(assert (= (and b!5954812 c!1059930) b!5954821))

(assert (= (and b!5954812 (not c!1059930)) b!5954820))

(assert (= (and b!5954820 res!2492552) b!5954814))

(assert (= (and b!5954820 c!1059933) b!5954815))

(assert (= (and b!5954820 (not c!1059933)) b!5954819))

(assert (= (and b!5954819 c!1059932) b!5954811))

(assert (= (and b!5954819 (not c!1059932)) b!5954817))

(assert (= (and b!5954817 c!1059934) b!5954813))

(assert (= (and b!5954817 (not c!1059934)) b!5954818))

(assert (= (or b!5954811 b!5954813) bm!474542))

(assert (= (or b!5954811 b!5954813) bm!474540))

(assert (= (or b!5954815 bm!474542) bm!474541))

(assert (= (or b!5954815 bm!474540) bm!474538))

(assert (= (or b!5954821 b!5954815) bm!474543))

(assert (= (or b!5954821 bm!474538) bm!474539))

(declare-fun m!6842290 () Bool)

(assert (=> b!5954814 m!6842290))

(declare-fun m!6842292 () Bool)

(assert (=> bm!474539 m!6842292))

(declare-fun m!6842294 () Bool)

(assert (=> bm!474541 m!6842294))

(declare-fun m!6842296 () Bool)

(assert (=> bm!474543 m!6842296))

(declare-fun m!6842298 () Bool)

(assert (=> b!5954816 m!6842298))

(assert (=> bm!474270 d!1866916))

(declare-fun b!5954822 () Bool)

(declare-fun e!3642710 () (InoxSet Context!10762))

(assert (=> b!5954822 (= e!3642710 ((as const (Array Context!10762 Bool)) false))))

(declare-fun d!1866918 () Bool)

(declare-fun c!1059936 () Bool)

(declare-fun e!3642709 () Bool)

(assert (=> d!1866918 (= c!1059936 e!3642709)))

(declare-fun res!2492553 () Bool)

(assert (=> d!1866918 (=> (not res!2492553) (not e!3642709))))

(assert (=> d!1866918 (= res!2492553 ((_ is Cons!64166) (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313743))))))))

(declare-fun e!3642708 () (InoxSet Context!10762))

(assert (=> d!1866918 (= (derivationStepZipperUp!1173 (Context!10763 (t!377701 (exprs!5881 lt!2313743))) (h!70615 s!2326)) e!3642708)))

(declare-fun b!5954823 () Bool)

(declare-fun call!474549 () (InoxSet Context!10762))

(assert (=> b!5954823 (= e!3642710 call!474549)))

(declare-fun b!5954824 () Bool)

(assert (=> b!5954824 (= e!3642709 (nullable!5992 (h!70614 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313743)))))))))

(declare-fun b!5954825 () Bool)

(assert (=> b!5954825 (= e!3642708 e!3642710)))

(declare-fun c!1059935 () Bool)

(assert (=> b!5954825 (= c!1059935 ((_ is Cons!64166) (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313743))))))))

(declare-fun b!5954826 () Bool)

(assert (=> b!5954826 (= e!3642708 ((_ map or) call!474549 (derivationStepZipperUp!1173 (Context!10763 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313743)))))) (h!70615 s!2326))))))

(declare-fun bm!474544 () Bool)

(assert (=> bm!474544 (= call!474549 (derivationStepZipperDown!1247 (h!70614 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313743))))) (Context!10763 (t!377701 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313743)))))) (h!70615 s!2326)))))

(assert (= (and d!1866918 res!2492553) b!5954824))

(assert (= (and d!1866918 c!1059936) b!5954826))

(assert (= (and d!1866918 (not c!1059936)) b!5954825))

(assert (= (and b!5954825 c!1059935) b!5954823))

(assert (= (and b!5954825 (not c!1059935)) b!5954822))

(assert (= (or b!5954826 b!5954823) bm!474544))

(declare-fun m!6842300 () Bool)

(assert (=> b!5954824 m!6842300))

(declare-fun m!6842302 () Bool)

(assert (=> b!5954826 m!6842302))

(declare-fun m!6842304 () Bool)

(assert (=> bm!474544 m!6842304))

(assert (=> b!5953629 d!1866918))

(declare-fun d!1866920 () Bool)

(assert (=> d!1866920 true))

(assert (=> d!1866920 true))

(declare-fun res!2492554 () Bool)

(assert (=> d!1866920 (= (choose!44877 lambda!324999) res!2492554)))

(assert (=> d!1866444 d!1866920))

(assert (=> d!1866448 d!1866588))

(declare-fun d!1866922 () Bool)

(declare-fun res!2492559 () Bool)

(declare-fun e!3642715 () Bool)

(assert (=> d!1866922 (=> res!2492559 e!3642715)))

(assert (=> d!1866922 (= res!2492559 ((_ is Nil!64168) lt!2313882))))

(assert (=> d!1866922 (= (noDuplicate!1854 lt!2313882) e!3642715)))

(declare-fun b!5954831 () Bool)

(declare-fun e!3642716 () Bool)

(assert (=> b!5954831 (= e!3642715 e!3642716)))

(declare-fun res!2492560 () Bool)

(assert (=> b!5954831 (=> (not res!2492560) (not e!3642716))))

(declare-fun contains!19976 (List!64292 Context!10762) Bool)

(assert (=> b!5954831 (= res!2492560 (not (contains!19976 (t!377703 lt!2313882) (h!70616 lt!2313882))))))

(declare-fun b!5954832 () Bool)

(assert (=> b!5954832 (= e!3642716 (noDuplicate!1854 (t!377703 lt!2313882)))))

(assert (= (and d!1866922 (not res!2492559)) b!5954831))

(assert (= (and b!5954831 res!2492560) b!5954832))

(declare-fun m!6842306 () Bool)

(assert (=> b!5954831 m!6842306))

(declare-fun m!6842308 () Bool)

(assert (=> b!5954832 m!6842308))

(assert (=> d!1866404 d!1866922))

(declare-fun d!1866924 () Bool)

(declare-fun e!3642737 () Bool)

(assert (=> d!1866924 e!3642737))

(declare-fun res!2492570 () Bool)

(assert (=> d!1866924 (=> (not res!2492570) (not e!3642737))))

(declare-fun res!2492569 () List!64292)

(assert (=> d!1866924 (= res!2492570 (noDuplicate!1854 res!2492569))))

(declare-fun e!3642736 () Bool)

(assert (=> d!1866924 e!3642736))

(assert (=> d!1866924 (= (choose!44874 z!1189) res!2492569)))

(declare-fun b!5954860 () Bool)

(declare-fun e!3642735 () Bool)

(declare-fun tp!1656550 () Bool)

(assert (=> b!5954860 (= e!3642735 tp!1656550)))

(declare-fun b!5954859 () Bool)

(declare-fun tp!1656549 () Bool)

(assert (=> b!5954859 (= e!3642736 (and (inv!83239 (h!70616 res!2492569)) e!3642735 tp!1656549))))

(declare-fun b!5954861 () Bool)

(assert (=> b!5954861 (= e!3642737 (= (content!11845 res!2492569) z!1189))))

(assert (= b!5954859 b!5954860))

(assert (= (and d!1866924 ((_ is Cons!64168) res!2492569)) b!5954859))

(assert (= (and d!1866924 res!2492570) b!5954861))

(declare-fun m!6842320 () Bool)

(assert (=> d!1866924 m!6842320))

(declare-fun m!6842322 () Bool)

(assert (=> b!5954859 m!6842322))

(declare-fun m!6842324 () Bool)

(assert (=> b!5954861 m!6842324))

(assert (=> d!1866404 d!1866924))

(declare-fun d!1866928 () Bool)

(assert (=> d!1866928 (= (nullable!5992 r!7292) (nullableFct!1963 r!7292))))

(declare-fun bs!1411468 () Bool)

(assert (= bs!1411468 d!1866928))

(declare-fun m!6842326 () Bool)

(assert (=> bs!1411468 m!6842326))

(assert (=> b!5953952 d!1866928))

(declare-fun d!1866930 () Bool)

(assert (=> d!1866930 (= (nullable!5992 (regOne!32506 (regOne!32506 r!7292))) (nullableFct!1963 (regOne!32506 (regOne!32506 r!7292))))))

(declare-fun bs!1411470 () Bool)

(assert (= bs!1411470 d!1866930))

(declare-fun m!6842328 () Bool)

(assert (=> bs!1411470 m!6842328))

(assert (=> b!5953300 d!1866930))

(declare-fun bs!1411481 () Bool)

(declare-fun b!5954870 () Bool)

(assert (= bs!1411481 (and b!5954870 b!5954330)))

(declare-fun lambda!325206 () Int)

(assert (=> bs!1411481 (not (= lambda!325206 lambda!325151))))

(declare-fun bs!1411485 () Bool)

(assert (= bs!1411485 (and b!5954870 b!5953915)))

(assert (=> bs!1411485 (= (and (= (reg!16326 (regOne!32507 r!7292)) (reg!16326 r!7292)) (= (regOne!32507 r!7292) r!7292)) (= lambda!325206 lambda!325111))))

(declare-fun bs!1411488 () Bool)

(assert (= bs!1411488 (and b!5954870 b!5953157)))

(assert (=> bs!1411488 (not (= lambda!325206 lambda!324998))))

(declare-fun bs!1411490 () Bool)

(assert (= bs!1411490 (and b!5954870 d!1866440)))

(assert (=> bs!1411490 (not (= lambda!325206 lambda!325099))))

(declare-fun bs!1411493 () Bool)

(assert (= bs!1411493 (and b!5954870 b!5953909)))

(assert (=> bs!1411493 (not (= lambda!325206 lambda!325112))))

(declare-fun bs!1411496 () Bool)

(assert (= bs!1411496 (and b!5954870 d!1866442)))

(assert (=> bs!1411496 (not (= lambda!325206 lambda!325104))))

(assert (=> bs!1411496 (not (= lambda!325206 lambda!325105))))

(declare-fun bs!1411498 () Bool)

(assert (= bs!1411498 (and b!5954870 d!1866878)))

(assert (=> bs!1411498 (not (= lambda!325206 lambda!325192))))

(assert (=> bs!1411488 (not (= lambda!325206 lambda!324999))))

(declare-fun bs!1411499 () Bool)

(assert (= bs!1411499 (and b!5954870 d!1866654)))

(assert (=> bs!1411499 (not (= lambda!325206 lambda!325149))))

(assert (=> bs!1411498 (not (= lambda!325206 lambda!325194))))

(declare-fun bs!1411500 () Bool)

(assert (= bs!1411500 (and b!5954870 b!5954336)))

(assert (=> bs!1411500 (= (and (= (reg!16326 (regOne!32507 r!7292)) (reg!16326 (regTwo!32507 r!7292))) (= (regOne!32507 r!7292) (regTwo!32507 r!7292))) (= lambda!325206 lambda!325150))))

(assert (=> b!5954870 true))

(assert (=> b!5954870 true))

(declare-fun bs!1411501 () Bool)

(declare-fun b!5954864 () Bool)

(assert (= bs!1411501 (and b!5954864 b!5954870)))

(declare-fun lambda!325207 () Int)

(assert (=> bs!1411501 (not (= lambda!325207 lambda!325206))))

(declare-fun bs!1411502 () Bool)

(assert (= bs!1411502 (and b!5954864 b!5954330)))

(assert (=> bs!1411502 (= (and (= (regOne!32506 (regOne!32507 r!7292)) (regOne!32506 (regTwo!32507 r!7292))) (= (regTwo!32506 (regOne!32507 r!7292)) (regTwo!32506 (regTwo!32507 r!7292)))) (= lambda!325207 lambda!325151))))

(declare-fun bs!1411504 () Bool)

(assert (= bs!1411504 (and b!5954864 b!5953915)))

(assert (=> bs!1411504 (not (= lambda!325207 lambda!325111))))

(declare-fun bs!1411506 () Bool)

(assert (= bs!1411506 (and b!5954864 b!5953157)))

(assert (=> bs!1411506 (not (= lambda!325207 lambda!324998))))

(declare-fun bs!1411509 () Bool)

(assert (= bs!1411509 (and b!5954864 d!1866440)))

(assert (=> bs!1411509 (not (= lambda!325207 lambda!325099))))

(declare-fun bs!1411512 () Bool)

(assert (= bs!1411512 (and b!5954864 b!5953909)))

(assert (=> bs!1411512 (= (and (= (regOne!32506 (regOne!32507 r!7292)) (regOne!32506 r!7292)) (= (regTwo!32506 (regOne!32507 r!7292)) (regTwo!32506 r!7292))) (= lambda!325207 lambda!325112))))

(declare-fun bs!1411514 () Bool)

(assert (= bs!1411514 (and b!5954864 d!1866442)))

(assert (=> bs!1411514 (not (= lambda!325207 lambda!325104))))

(assert (=> bs!1411514 (= (and (= (regOne!32506 (regOne!32507 r!7292)) (regOne!32506 r!7292)) (= (regTwo!32506 (regOne!32507 r!7292)) (regTwo!32506 r!7292))) (= lambda!325207 lambda!325105))))

(declare-fun bs!1411519 () Bool)

(assert (= bs!1411519 (and b!5954864 d!1866878)))

(assert (=> bs!1411519 (not (= lambda!325207 lambda!325192))))

(assert (=> bs!1411506 (= (and (= (regOne!32506 (regOne!32507 r!7292)) (regOne!32506 r!7292)) (= (regTwo!32506 (regOne!32507 r!7292)) (regTwo!32506 r!7292))) (= lambda!325207 lambda!324999))))

(declare-fun bs!1411523 () Bool)

(assert (= bs!1411523 (and b!5954864 d!1866654)))

(assert (=> bs!1411523 (not (= lambda!325207 lambda!325149))))

(assert (=> bs!1411519 (= (and (= (regOne!32506 (regOne!32507 r!7292)) (regOne!32506 r!7292)) (= (regTwo!32506 (regOne!32507 r!7292)) (regTwo!32506 r!7292))) (= lambda!325207 lambda!325194))))

(declare-fun bs!1411527 () Bool)

(assert (= bs!1411527 (and b!5954864 b!5954336)))

(assert (=> bs!1411527 (not (= lambda!325207 lambda!325150))))

(assert (=> b!5954864 true))

(assert (=> b!5954864 true))

(declare-fun bm!474552 () Bool)

(declare-fun call!474557 () Bool)

(assert (=> bm!474552 (= call!474557 (isEmpty!36053 s!2326))))

(declare-fun c!1059948 () Bool)

(declare-fun call!474558 () Bool)

(declare-fun bm!474553 () Bool)

(assert (=> bm!474553 (= call!474558 (Exists!3067 (ite c!1059948 lambda!325206 lambda!325207)))))

(declare-fun d!1866932 () Bool)

(declare-fun c!1059947 () Bool)

(assert (=> d!1866932 (= c!1059947 ((_ is EmptyExpr!15997) (regOne!32507 r!7292)))))

(declare-fun e!3642744 () Bool)

(assert (=> d!1866932 (= (matchRSpec!3098 (regOne!32507 r!7292) s!2326) e!3642744)))

(declare-fun b!5954862 () Bool)

(declare-fun c!1059946 () Bool)

(assert (=> b!5954862 (= c!1059946 ((_ is Union!15997) (regOne!32507 r!7292)))))

(declare-fun e!3642742 () Bool)

(declare-fun e!3642743 () Bool)

(assert (=> b!5954862 (= e!3642742 e!3642743)))

(declare-fun b!5954863 () Bool)

(declare-fun res!2492573 () Bool)

(declare-fun e!3642741 () Bool)

(assert (=> b!5954863 (=> res!2492573 e!3642741)))

(assert (=> b!5954863 (= res!2492573 call!474557)))

(declare-fun e!3642740 () Bool)

(assert (=> b!5954863 (= e!3642740 e!3642741)))

(assert (=> b!5954864 (= e!3642740 call!474558)))

(declare-fun b!5954865 () Bool)

(declare-fun e!3642739 () Bool)

(assert (=> b!5954865 (= e!3642739 (matchRSpec!3098 (regTwo!32507 (regOne!32507 r!7292)) s!2326))))

(declare-fun b!5954866 () Bool)

(declare-fun e!3642738 () Bool)

(assert (=> b!5954866 (= e!3642744 e!3642738)))

(declare-fun res!2492571 () Bool)

(assert (=> b!5954866 (= res!2492571 (not ((_ is EmptyLang!15997) (regOne!32507 r!7292))))))

(assert (=> b!5954866 (=> (not res!2492571) (not e!3642738))))

(declare-fun b!5954867 () Bool)

(assert (=> b!5954867 (= e!3642743 e!3642739)))

(declare-fun res!2492572 () Bool)

(assert (=> b!5954867 (= res!2492572 (matchRSpec!3098 (regOne!32507 (regOne!32507 r!7292)) s!2326))))

(assert (=> b!5954867 (=> res!2492572 e!3642739)))

(declare-fun b!5954868 () Bool)

(assert (=> b!5954868 (= e!3642743 e!3642740)))

(assert (=> b!5954868 (= c!1059948 ((_ is Star!15997) (regOne!32507 r!7292)))))

(declare-fun b!5954869 () Bool)

(assert (=> b!5954869 (= e!3642742 (= s!2326 (Cons!64167 (c!1059438 (regOne!32507 r!7292)) Nil!64167)))))

(assert (=> b!5954870 (= e!3642741 call!474558)))

(declare-fun b!5954871 () Bool)

(assert (=> b!5954871 (= e!3642744 call!474557)))

(declare-fun b!5954872 () Bool)

(declare-fun c!1059945 () Bool)

(assert (=> b!5954872 (= c!1059945 ((_ is ElementMatch!15997) (regOne!32507 r!7292)))))

(assert (=> b!5954872 (= e!3642738 e!3642742)))

(assert (= (and d!1866932 c!1059947) b!5954871))

(assert (= (and d!1866932 (not c!1059947)) b!5954866))

(assert (= (and b!5954866 res!2492571) b!5954872))

(assert (= (and b!5954872 c!1059945) b!5954869))

(assert (= (and b!5954872 (not c!1059945)) b!5954862))

(assert (= (and b!5954862 c!1059946) b!5954867))

(assert (= (and b!5954862 (not c!1059946)) b!5954868))

(assert (= (and b!5954867 (not res!2492572)) b!5954865))

(assert (= (and b!5954868 c!1059948) b!5954863))

(assert (= (and b!5954868 (not c!1059948)) b!5954864))

(assert (= (and b!5954863 (not res!2492573)) b!5954870))

(assert (= (or b!5954870 b!5954864) bm!474553))

(assert (= (or b!5954871 b!5954863) bm!474552))

(assert (=> bm!474552 m!6840960))

(declare-fun m!6842350 () Bool)

(assert (=> bm!474553 m!6842350))

(declare-fun m!6842352 () Bool)

(assert (=> b!5954865 m!6842352))

(declare-fun m!6842356 () Bool)

(assert (=> b!5954867 m!6842356))

(assert (=> b!5953912 d!1866932))

(declare-fun b!5954880 () Bool)

(declare-fun e!3642750 () Bool)

(declare-fun lt!2314009 () List!64291)

(assert (=> b!5954880 (= e!3642750 (or (not (= (_2!36279 (get!22108 lt!2313907)) Nil!64167)) (= lt!2314009 (_1!36279 (get!22108 lt!2313907)))))))

(declare-fun b!5954877 () Bool)

(declare-fun e!3642749 () List!64291)

(assert (=> b!5954877 (= e!3642749 (_2!36279 (get!22108 lt!2313907)))))

(declare-fun b!5954878 () Bool)

(assert (=> b!5954878 (= e!3642749 (Cons!64167 (h!70615 (_1!36279 (get!22108 lt!2313907))) (++!14094 (t!377702 (_1!36279 (get!22108 lt!2313907))) (_2!36279 (get!22108 lt!2313907)))))))

(declare-fun d!1866942 () Bool)

(assert (=> d!1866942 e!3642750))

(declare-fun res!2492578 () Bool)

(assert (=> d!1866942 (=> (not res!2492578) (not e!3642750))))

(assert (=> d!1866942 (= res!2492578 (= (content!11847 lt!2314009) ((_ map or) (content!11847 (_1!36279 (get!22108 lt!2313907))) (content!11847 (_2!36279 (get!22108 lt!2313907))))))))

(assert (=> d!1866942 (= lt!2314009 e!3642749)))

(declare-fun c!1059949 () Bool)

(assert (=> d!1866942 (= c!1059949 ((_ is Nil!64167) (_1!36279 (get!22108 lt!2313907))))))

(assert (=> d!1866942 (= (++!14094 (_1!36279 (get!22108 lt!2313907)) (_2!36279 (get!22108 lt!2313907))) lt!2314009)))

(declare-fun b!5954879 () Bool)

(declare-fun res!2492579 () Bool)

(assert (=> b!5954879 (=> (not res!2492579) (not e!3642750))))

(assert (=> b!5954879 (= res!2492579 (= (size!40158 lt!2314009) (+ (size!40158 (_1!36279 (get!22108 lt!2313907))) (size!40158 (_2!36279 (get!22108 lt!2313907))))))))

(assert (= (and d!1866942 c!1059949) b!5954877))

(assert (= (and d!1866942 (not c!1059949)) b!5954878))

(assert (= (and d!1866942 res!2492578) b!5954879))

(assert (= (and b!5954879 res!2492579) b!5954880))

(declare-fun m!6842360 () Bool)

(assert (=> b!5954878 m!6842360))

(declare-fun m!6842362 () Bool)

(assert (=> d!1866942 m!6842362))

(declare-fun m!6842364 () Bool)

(assert (=> d!1866942 m!6842364))

(declare-fun m!6842366 () Bool)

(assert (=> d!1866942 m!6842366))

(declare-fun m!6842368 () Bool)

(assert (=> b!5954879 m!6842368))

(declare-fun m!6842370 () Bool)

(assert (=> b!5954879 m!6842370))

(declare-fun m!6842372 () Bool)

(assert (=> b!5954879 m!6842372))

(assert (=> b!5953850 d!1866942))

(assert (=> b!5953850 d!1866530))

(declare-fun d!1866946 () Bool)

(declare-fun c!1059950 () Bool)

(assert (=> d!1866946 (= c!1059950 (isEmpty!36053 (tail!11621 (t!377702 s!2326))))))

(declare-fun e!3642751 () Bool)

(assert (=> d!1866946 (= (matchZipper!2033 (derivationStepZipper!1978 lt!2313757 (head!12536 (t!377702 s!2326))) (tail!11621 (t!377702 s!2326))) e!3642751)))

(declare-fun b!5954881 () Bool)

(assert (=> b!5954881 (= e!3642751 (nullableZipper!1804 (derivationStepZipper!1978 lt!2313757 (head!12536 (t!377702 s!2326)))))))

(declare-fun b!5954882 () Bool)

(assert (=> b!5954882 (= e!3642751 (matchZipper!2033 (derivationStepZipper!1978 (derivationStepZipper!1978 lt!2313757 (head!12536 (t!377702 s!2326))) (head!12536 (tail!11621 (t!377702 s!2326)))) (tail!11621 (tail!11621 (t!377702 s!2326)))))))

(assert (= (and d!1866946 c!1059950) b!5954881))

(assert (= (and d!1866946 (not c!1059950)) b!5954882))

(assert (=> d!1866946 m!6840980))

(assert (=> d!1866946 m!6841508))

(assert (=> b!5954881 m!6841310))

(declare-fun m!6842374 () Bool)

(assert (=> b!5954881 m!6842374))

(assert (=> b!5954882 m!6840980))

(assert (=> b!5954882 m!6841512))

(assert (=> b!5954882 m!6841310))

(assert (=> b!5954882 m!6841512))

(declare-fun m!6842376 () Bool)

(assert (=> b!5954882 m!6842376))

(assert (=> b!5954882 m!6840980))

(assert (=> b!5954882 m!6841516))

(assert (=> b!5954882 m!6842376))

(assert (=> b!5954882 m!6841516))

(declare-fun m!6842378 () Bool)

(assert (=> b!5954882 m!6842378))

(assert (=> b!5953870 d!1866946))

(declare-fun bs!1411552 () Bool)

(declare-fun d!1866948 () Bool)

(assert (= bs!1411552 (and d!1866948 d!1866596)))

(declare-fun lambda!325210 () Int)

(assert (=> bs!1411552 (= lambda!325210 lambda!325133)))

(declare-fun bs!1411553 () Bool)

(assert (= bs!1411553 (and d!1866948 d!1866772)))

(assert (=> bs!1411553 (= lambda!325210 lambda!325171)))

(declare-fun bs!1411555 () Bool)

(assert (= bs!1411555 (and d!1866948 d!1866556)))

(assert (=> bs!1411555 (= (= (head!12536 (t!377702 s!2326)) (head!12536 s!2326)) (= lambda!325210 lambda!325129))))

(declare-fun bs!1411556 () Bool)

(assert (= bs!1411556 (and d!1866948 d!1866698)))

(assert (=> bs!1411556 (= lambda!325210 lambda!325156)))

(declare-fun bs!1411558 () Bool)

(assert (= bs!1411558 (and d!1866948 d!1866386)))

(assert (=> bs!1411558 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325210 lambda!325084))))

(declare-fun bs!1411559 () Bool)

(assert (= bs!1411559 (and d!1866948 d!1866684)))

(assert (=> bs!1411559 (= lambda!325210 lambda!325153)))

(declare-fun bs!1411560 () Bool)

(assert (= bs!1411560 (and d!1866948 d!1866326)))

(assert (=> bs!1411560 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325210 lambda!325065))))

(declare-fun bs!1411561 () Bool)

(assert (= bs!1411561 (and d!1866948 d!1866566)))

(assert (=> bs!1411561 (= lambda!325210 lambda!325130)))

(declare-fun bs!1411563 () Bool)

(assert (= bs!1411563 (and d!1866948 b!5953147)))

(assert (=> bs!1411563 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325210 lambda!325000))))

(declare-fun bs!1411565 () Bool)

(assert (= bs!1411565 (and d!1866948 d!1866844)))

(assert (=> bs!1411565 (= (= (head!12536 (t!377702 s!2326)) (head!12536 s!2326)) (= lambda!325210 lambda!325184))))

(declare-fun bs!1411567 () Bool)

(assert (= bs!1411567 (and d!1866948 d!1866454)))

(assert (=> bs!1411567 (= (= (head!12536 (t!377702 s!2326)) (h!70615 s!2326)) (= lambda!325210 lambda!325106))))

(assert (=> d!1866948 true))

(assert (=> d!1866948 (= (derivationStepZipper!1978 lt!2313757 (head!12536 (t!377702 s!2326))) (flatMap!1510 lt!2313757 lambda!325210))))

(declare-fun bs!1411571 () Bool)

(assert (= bs!1411571 d!1866948))

(declare-fun m!6842384 () Bool)

(assert (=> bs!1411571 m!6842384))

(assert (=> b!5953870 d!1866948))

(assert (=> b!5953870 d!1866568))

(assert (=> b!5953870 d!1866570))

(declare-fun b!5954886 () Bool)

(declare-fun e!3642758 () (InoxSet Context!10762))

(declare-fun call!474564 () (InoxSet Context!10762))

(assert (=> b!5954886 (= e!3642758 call!474564)))

(declare-fun bm!474554 () Bool)

(declare-fun call!474561 () (InoxSet Context!10762))

(declare-fun call!474563 () (InoxSet Context!10762))

(assert (=> bm!474554 (= call!474561 call!474563)))

(declare-fun b!5954887 () Bool)

(declare-fun e!3642756 () (InoxSet Context!10762))

(declare-fun e!3642759 () (InoxSet Context!10762))

(assert (=> b!5954887 (= e!3642756 e!3642759)))

(declare-fun c!1059952 () Bool)

(assert (=> b!5954887 (= c!1059952 ((_ is Union!15997) (h!70614 (exprs!5881 lt!2313746))))))

(declare-fun c!1059955 () Bool)

(declare-fun bm!474555 () Bool)

(declare-fun call!474562 () List!64290)

(declare-fun c!1059954 () Bool)

(assert (=> bm!474555 (= call!474563 (derivationStepZipperDown!1247 (ite c!1059952 (regOne!32507 (h!70614 (exprs!5881 lt!2313746))) (ite c!1059955 (regTwo!32506 (h!70614 (exprs!5881 lt!2313746))) (ite c!1059954 (regOne!32506 (h!70614 (exprs!5881 lt!2313746))) (reg!16326 (h!70614 (exprs!5881 lt!2313746)))))) (ite (or c!1059952 c!1059955) (Context!10763 (t!377701 (exprs!5881 lt!2313746))) (Context!10763 call!474562)) (h!70615 s!2326)))))

(declare-fun bm!474556 () Bool)

(assert (=> bm!474556 (= call!474564 call!474561)))

(declare-fun b!5954888 () Bool)

(declare-fun e!3642755 () (InoxSet Context!10762))

(assert (=> b!5954888 (= e!3642755 call!474564)))

(declare-fun b!5954889 () Bool)

(declare-fun e!3642754 () Bool)

(assert (=> b!5954889 (= e!3642754 (nullable!5992 (regOne!32506 (h!70614 (exprs!5881 lt!2313746)))))))

(declare-fun b!5954890 () Bool)

(declare-fun e!3642757 () (InoxSet Context!10762))

(declare-fun call!474560 () (InoxSet Context!10762))

(assert (=> b!5954890 (= e!3642757 ((_ map or) call!474560 call!474561))))

(declare-fun d!1866952 () Bool)

(declare-fun c!1059953 () Bool)

(assert (=> d!1866952 (= c!1059953 (and ((_ is ElementMatch!15997) (h!70614 (exprs!5881 lt!2313746))) (= (c!1059438 (h!70614 (exprs!5881 lt!2313746))) (h!70615 s!2326))))))

(assert (=> d!1866952 (= (derivationStepZipperDown!1247 (h!70614 (exprs!5881 lt!2313746)) (Context!10763 (t!377701 (exprs!5881 lt!2313746))) (h!70615 s!2326)) e!3642756)))

(declare-fun b!5954891 () Bool)

(assert (=> b!5954891 (= e!3642756 (store ((as const (Array Context!10762 Bool)) false) (Context!10763 (t!377701 (exprs!5881 lt!2313746))) true))))

(declare-fun call!474559 () List!64290)

(declare-fun bm!474557 () Bool)

(assert (=> bm!474557 (= call!474559 ($colon$colon!1883 (exprs!5881 (Context!10763 (t!377701 (exprs!5881 lt!2313746)))) (ite (or c!1059955 c!1059954) (regTwo!32506 (h!70614 (exprs!5881 lt!2313746))) (h!70614 (exprs!5881 lt!2313746)))))))

(declare-fun b!5954892 () Bool)

(declare-fun c!1059956 () Bool)

(assert (=> b!5954892 (= c!1059956 ((_ is Star!15997) (h!70614 (exprs!5881 lt!2313746))))))

(assert (=> b!5954892 (= e!3642758 e!3642755)))

(declare-fun b!5954893 () Bool)

(assert (=> b!5954893 (= e!3642755 ((as const (Array Context!10762 Bool)) false))))

(declare-fun b!5954894 () Bool)

(assert (=> b!5954894 (= e!3642757 e!3642758)))

(assert (=> b!5954894 (= c!1059954 ((_ is Concat!24842) (h!70614 (exprs!5881 lt!2313746))))))

(declare-fun bm!474558 () Bool)

(assert (=> bm!474558 (= call!474562 call!474559)))

(declare-fun bm!474559 () Bool)

(assert (=> bm!474559 (= call!474560 (derivationStepZipperDown!1247 (ite c!1059952 (regTwo!32507 (h!70614 (exprs!5881 lt!2313746))) (regOne!32506 (h!70614 (exprs!5881 lt!2313746)))) (ite c!1059952 (Context!10763 (t!377701 (exprs!5881 lt!2313746))) (Context!10763 call!474559)) (h!70615 s!2326)))))

(declare-fun b!5954895 () Bool)

(assert (=> b!5954895 (= c!1059955 e!3642754)))

(declare-fun res!2492581 () Bool)

(assert (=> b!5954895 (=> (not res!2492581) (not e!3642754))))

(assert (=> b!5954895 (= res!2492581 ((_ is Concat!24842) (h!70614 (exprs!5881 lt!2313746))))))

(assert (=> b!5954895 (= e!3642759 e!3642757)))

(declare-fun b!5954896 () Bool)

(assert (=> b!5954896 (= e!3642759 ((_ map or) call!474563 call!474560))))

(assert (= (and d!1866952 c!1059953) b!5954891))

(assert (= (and d!1866952 (not c!1059953)) b!5954887))

(assert (= (and b!5954887 c!1059952) b!5954896))

(assert (= (and b!5954887 (not c!1059952)) b!5954895))

(assert (= (and b!5954895 res!2492581) b!5954889))

(assert (= (and b!5954895 c!1059955) b!5954890))

(assert (= (and b!5954895 (not c!1059955)) b!5954894))

(assert (= (and b!5954894 c!1059954) b!5954886))

(assert (= (and b!5954894 (not c!1059954)) b!5954892))

(assert (= (and b!5954892 c!1059956) b!5954888))

(assert (= (and b!5954892 (not c!1059956)) b!5954893))

(assert (= (or b!5954886 b!5954888) bm!474558))

(assert (= (or b!5954886 b!5954888) bm!474556))

(assert (= (or b!5954890 bm!474558) bm!474557))

(assert (= (or b!5954890 bm!474556) bm!474554))

(assert (= (or b!5954896 b!5954890) bm!474559))

(assert (= (or b!5954896 bm!474554) bm!474555))

(declare-fun m!6842386 () Bool)

(assert (=> b!5954889 m!6842386))

(declare-fun m!6842388 () Bool)

(assert (=> bm!474555 m!6842388))

(declare-fun m!6842390 () Bool)

(assert (=> bm!474557 m!6842390))

(declare-fun m!6842392 () Bool)

(assert (=> bm!474559 m!6842392))

(declare-fun m!6842394 () Bool)

(assert (=> b!5954891 m!6842394))

(assert (=> bm!474246 d!1866952))

(declare-fun b!5954897 () Bool)

(declare-fun e!3642761 () Bool)

(declare-fun e!3642766 () Bool)

(assert (=> b!5954897 (= e!3642761 e!3642766)))

(declare-fun res!2492589 () Bool)

(assert (=> b!5954897 (=> res!2492589 e!3642766)))

(declare-fun call!474565 () Bool)

(assert (=> b!5954897 (= res!2492589 call!474565)))

(declare-fun d!1866954 () Bool)

(declare-fun e!3642762 () Bool)

(assert (=> d!1866954 e!3642762))

(declare-fun c!1059959 () Bool)

(assert (=> d!1866954 (= c!1059959 ((_ is EmptyExpr!15997) (derivativeStep!4728 r!7292 (head!12536 s!2326))))))

(declare-fun lt!2314014 () Bool)

(declare-fun e!3642765 () Bool)

(assert (=> d!1866954 (= lt!2314014 e!3642765)))

(declare-fun c!1059957 () Bool)

(assert (=> d!1866954 (= c!1059957 (isEmpty!36053 (tail!11621 s!2326)))))

(assert (=> d!1866954 (validRegex!7733 (derivativeStep!4728 r!7292 (head!12536 s!2326)))))

(assert (=> d!1866954 (= (matchR!8180 (derivativeStep!4728 r!7292 (head!12536 s!2326)) (tail!11621 s!2326)) lt!2314014)))

(declare-fun bm!474560 () Bool)

(assert (=> bm!474560 (= call!474565 (isEmpty!36053 (tail!11621 s!2326)))))

(declare-fun b!5954898 () Bool)

(declare-fun res!2492587 () Bool)

(declare-fun e!3642763 () Bool)

(assert (=> b!5954898 (=> (not res!2492587) (not e!3642763))))

(assert (=> b!5954898 (= res!2492587 (not call!474565))))

(declare-fun b!5954899 () Bool)

(declare-fun res!2492583 () Bool)

(declare-fun e!3642764 () Bool)

(assert (=> b!5954899 (=> res!2492583 e!3642764)))

(assert (=> b!5954899 (= res!2492583 (not ((_ is ElementMatch!15997) (derivativeStep!4728 r!7292 (head!12536 s!2326)))))))

(declare-fun e!3642760 () Bool)

(assert (=> b!5954899 (= e!3642760 e!3642764)))

(declare-fun b!5954900 () Bool)

(assert (=> b!5954900 (= e!3642762 (= lt!2314014 call!474565))))

(declare-fun b!5954901 () Bool)

(assert (=> b!5954901 (= e!3642760 (not lt!2314014))))

(declare-fun b!5954902 () Bool)

(declare-fun res!2492586 () Bool)

(assert (=> b!5954902 (=> (not res!2492586) (not e!3642763))))

(assert (=> b!5954902 (= res!2492586 (isEmpty!36053 (tail!11621 (tail!11621 s!2326))))))

(declare-fun b!5954903 () Bool)

(assert (=> b!5954903 (= e!3642765 (nullable!5992 (derivativeStep!4728 r!7292 (head!12536 s!2326))))))

(declare-fun b!5954904 () Bool)

(assert (=> b!5954904 (= e!3642762 e!3642760)))

(declare-fun c!1059958 () Bool)

(assert (=> b!5954904 (= c!1059958 ((_ is EmptyLang!15997) (derivativeStep!4728 r!7292 (head!12536 s!2326))))))

(declare-fun b!5954905 () Bool)

(assert (=> b!5954905 (= e!3642763 (= (head!12536 (tail!11621 s!2326)) (c!1059438 (derivativeStep!4728 r!7292 (head!12536 s!2326)))))))

(declare-fun b!5954906 () Bool)

(assert (=> b!5954906 (= e!3642766 (not (= (head!12536 (tail!11621 s!2326)) (c!1059438 (derivativeStep!4728 r!7292 (head!12536 s!2326))))))))

(declare-fun b!5954907 () Bool)

(assert (=> b!5954907 (= e!3642765 (matchR!8180 (derivativeStep!4728 (derivativeStep!4728 r!7292 (head!12536 s!2326)) (head!12536 (tail!11621 s!2326))) (tail!11621 (tail!11621 s!2326))))))

(declare-fun b!5954908 () Bool)

(assert (=> b!5954908 (= e!3642764 e!3642761)))

(declare-fun res!2492584 () Bool)

(assert (=> b!5954908 (=> (not res!2492584) (not e!3642761))))

(assert (=> b!5954908 (= res!2492584 (not lt!2314014))))

(declare-fun b!5954909 () Bool)

(declare-fun res!2492588 () Bool)

(assert (=> b!5954909 (=> res!2492588 e!3642766)))

(assert (=> b!5954909 (= res!2492588 (not (isEmpty!36053 (tail!11621 (tail!11621 s!2326)))))))

(declare-fun b!5954910 () Bool)

(declare-fun res!2492585 () Bool)

(assert (=> b!5954910 (=> res!2492585 e!3642764)))

(assert (=> b!5954910 (= res!2492585 e!3642763)))

(declare-fun res!2492582 () Bool)

(assert (=> b!5954910 (=> (not res!2492582) (not e!3642763))))

(assert (=> b!5954910 (= res!2492582 lt!2314014)))

(assert (= (and d!1866954 c!1059957) b!5954903))

(assert (= (and d!1866954 (not c!1059957)) b!5954907))

(assert (= (and d!1866954 c!1059959) b!5954900))

(assert (= (and d!1866954 (not c!1059959)) b!5954904))

(assert (= (and b!5954904 c!1059958) b!5954901))

(assert (= (and b!5954904 (not c!1059958)) b!5954899))

(assert (= (and b!5954899 (not res!2492583)) b!5954910))

(assert (= (and b!5954910 res!2492582) b!5954898))

(assert (= (and b!5954898 res!2492587) b!5954902))

(assert (= (and b!5954902 res!2492586) b!5954905))

(assert (= (and b!5954910 (not res!2492585)) b!5954908))

(assert (= (and b!5954908 res!2492584) b!5954897))

(assert (= (and b!5954897 (not res!2492589)) b!5954909))

(assert (= (and b!5954909 (not res!2492588)) b!5954906))

(assert (= (or b!5954900 b!5954897 b!5954898) bm!474560))

(assert (=> b!5954907 m!6840968))

(assert (=> b!5954907 m!6841494))

(assert (=> b!5954907 m!6841334))

(assert (=> b!5954907 m!6841494))

(declare-fun m!6842396 () Bool)

(assert (=> b!5954907 m!6842396))

(assert (=> b!5954907 m!6840968))

(assert (=> b!5954907 m!6841498))

(assert (=> b!5954907 m!6842396))

(assert (=> b!5954907 m!6841498))

(declare-fun m!6842398 () Bool)

(assert (=> b!5954907 m!6842398))

(assert (=> bm!474560 m!6840968))

(assert (=> bm!474560 m!6841338))

(assert (=> b!5954902 m!6840968))

(assert (=> b!5954902 m!6841498))

(assert (=> b!5954902 m!6841498))

(declare-fun m!6842400 () Bool)

(assert (=> b!5954902 m!6842400))

(assert (=> d!1866954 m!6840968))

(assert (=> d!1866954 m!6841338))

(assert (=> d!1866954 m!6841334))

(declare-fun m!6842402 () Bool)

(assert (=> d!1866954 m!6842402))

(assert (=> b!5954905 m!6840968))

(assert (=> b!5954905 m!6841494))

(assert (=> b!5954909 m!6840968))

(assert (=> b!5954909 m!6841498))

(assert (=> b!5954909 m!6841498))

(assert (=> b!5954909 m!6842400))

(assert (=> b!5954903 m!6841334))

(declare-fun m!6842404 () Bool)

(assert (=> b!5954903 m!6842404))

(assert (=> b!5954906 m!6840968))

(assert (=> b!5954906 m!6841494))

(assert (=> b!5953956 d!1866954))

(declare-fun bm!474582 () Bool)

(declare-fun call!474590 () Regex!15997)

(declare-fun call!474589 () Regex!15997)

(assert (=> bm!474582 (= call!474590 call!474589)))

(declare-fun b!5954976 () Bool)

(declare-fun e!3642804 () Regex!15997)

(declare-fun e!3642805 () Regex!15997)

(assert (=> b!5954976 (= e!3642804 e!3642805)))

(declare-fun c!1059990 () Bool)

(assert (=> b!5954976 (= c!1059990 ((_ is Star!15997) r!7292))))

(declare-fun bm!474583 () Bool)

(declare-fun call!474587 () Regex!15997)

(declare-fun c!1059986 () Bool)

(assert (=> bm!474583 (= call!474587 (derivativeStep!4728 (ite c!1059986 (regTwo!32507 r!7292) (ite c!1059990 (reg!16326 r!7292) (regOne!32506 r!7292))) (head!12536 s!2326)))))

(declare-fun bm!474584 () Bool)

(declare-fun call!474588 () Regex!15997)

(assert (=> bm!474584 (= call!474588 call!474587)))

(declare-fun b!5954977 () Bool)

(assert (=> b!5954977 (= e!3642805 (Concat!24842 call!474588 r!7292))))

(declare-fun b!5954978 () Bool)

(declare-fun e!3642806 () Regex!15997)

(assert (=> b!5954978 (= e!3642806 (Union!15997 (Concat!24842 call!474588 (regTwo!32506 r!7292)) call!474590))))

(declare-fun b!5954979 () Bool)

(assert (=> b!5954979 (= e!3642804 (Union!15997 call!474589 call!474587))))

(declare-fun b!5954980 () Bool)

(declare-fun e!3642802 () Regex!15997)

(declare-fun e!3642803 () Regex!15997)

(assert (=> b!5954980 (= e!3642802 e!3642803)))

(declare-fun c!1059987 () Bool)

(assert (=> b!5954980 (= c!1059987 ((_ is ElementMatch!15997) r!7292))))

(declare-fun b!5954981 () Bool)

(assert (=> b!5954981 (= e!3642802 EmptyLang!15997)))

(declare-fun b!5954982 () Bool)

(assert (=> b!5954982 (= c!1059986 ((_ is Union!15997) r!7292))))

(assert (=> b!5954982 (= e!3642803 e!3642804)))

(declare-fun b!5954983 () Bool)

(declare-fun c!1059988 () Bool)

(assert (=> b!5954983 (= c!1059988 (nullable!5992 (regOne!32506 r!7292)))))

(assert (=> b!5954983 (= e!3642805 e!3642806)))

(declare-fun bm!474585 () Bool)

(assert (=> bm!474585 (= call!474589 (derivativeStep!4728 (ite c!1059986 (regOne!32507 r!7292) (ite c!1059988 (regTwo!32506 r!7292) (regOne!32506 r!7292))) (head!12536 s!2326)))))

(declare-fun d!1866956 () Bool)

(declare-fun lt!2314026 () Regex!15997)

(assert (=> d!1866956 (validRegex!7733 lt!2314026)))

(assert (=> d!1866956 (= lt!2314026 e!3642802)))

(declare-fun c!1059989 () Bool)

(assert (=> d!1866956 (= c!1059989 (or ((_ is EmptyExpr!15997) r!7292) ((_ is EmptyLang!15997) r!7292)))))

(assert (=> d!1866956 (validRegex!7733 r!7292)))

(assert (=> d!1866956 (= (derivativeStep!4728 r!7292 (head!12536 s!2326)) lt!2314026)))

(declare-fun b!5954984 () Bool)

(assert (=> b!5954984 (= e!3642803 (ite (= (head!12536 s!2326) (c!1059438 r!7292)) EmptyExpr!15997 EmptyLang!15997))))

(declare-fun b!5954985 () Bool)

(assert (=> b!5954985 (= e!3642806 (Union!15997 (Concat!24842 call!474590 (regTwo!32506 r!7292)) EmptyLang!15997))))

(assert (= (and d!1866956 c!1059989) b!5954981))

(assert (= (and d!1866956 (not c!1059989)) b!5954980))

(assert (= (and b!5954980 c!1059987) b!5954984))

(assert (= (and b!5954980 (not c!1059987)) b!5954982))

(assert (= (and b!5954982 c!1059986) b!5954979))

(assert (= (and b!5954982 (not c!1059986)) b!5954976))

(assert (= (and b!5954976 c!1059990) b!5954977))

(assert (= (and b!5954976 (not c!1059990)) b!5954983))

(assert (= (and b!5954983 c!1059988) b!5954978))

(assert (= (and b!5954983 (not c!1059988)) b!5954985))

(assert (= (or b!5954978 b!5954985) bm!474582))

(assert (= (or b!5954977 b!5954978) bm!474584))

(assert (= (or b!5954979 bm!474584) bm!474583))

(assert (= (or b!5954979 bm!474582) bm!474585))

(assert (=> bm!474583 m!6840964))

(declare-fun m!6842492 () Bool)

(assert (=> bm!474583 m!6842492))

(assert (=> b!5954983 m!6840634))

(assert (=> bm!474585 m!6840964))

(declare-fun m!6842496 () Bool)

(assert (=> bm!474585 m!6842496))

(declare-fun m!6842500 () Bool)

(assert (=> d!1866956 m!6842500))

(assert (=> d!1866956 m!6840702))

(assert (=> b!5953956 d!1866956))

(assert (=> b!5953956 d!1866558))

(assert (=> b!5953956 d!1866560))

(declare-fun b!5955002 () Bool)

(declare-fun e!3642817 () Bool)

(declare-fun tp!1656551 () Bool)

(assert (=> b!5955002 (= e!3642817 tp!1656551)))

(assert (=> b!5953997 (= tp!1656504 e!3642817)))

(declare-fun b!5955000 () Bool)

(assert (=> b!5955000 (= e!3642817 tp_is_empty!41247)))

(declare-fun b!5955001 () Bool)

(declare-fun tp!1656554 () Bool)

(declare-fun tp!1656552 () Bool)

(assert (=> b!5955001 (= e!3642817 (and tp!1656554 tp!1656552))))

(declare-fun b!5955003 () Bool)

(declare-fun tp!1656553 () Bool)

(declare-fun tp!1656555 () Bool)

(assert (=> b!5955003 (= e!3642817 (and tp!1656553 tp!1656555))))

(assert (= (and b!5953997 ((_ is ElementMatch!15997) (regOne!32506 (regTwo!32506 r!7292)))) b!5955000))

(assert (= (and b!5953997 ((_ is Concat!24842) (regOne!32506 (regTwo!32506 r!7292)))) b!5955001))

(assert (= (and b!5953997 ((_ is Star!15997) (regOne!32506 (regTwo!32506 r!7292)))) b!5955002))

(assert (= (and b!5953997 ((_ is Union!15997) (regOne!32506 (regTwo!32506 r!7292)))) b!5955003))

(declare-fun b!5955006 () Bool)

(declare-fun e!3642818 () Bool)

(declare-fun tp!1656556 () Bool)

(assert (=> b!5955006 (= e!3642818 tp!1656556)))

(assert (=> b!5953997 (= tp!1656502 e!3642818)))

(declare-fun b!5955004 () Bool)

(assert (=> b!5955004 (= e!3642818 tp_is_empty!41247)))

(declare-fun b!5955005 () Bool)

(declare-fun tp!1656559 () Bool)

(declare-fun tp!1656557 () Bool)

(assert (=> b!5955005 (= e!3642818 (and tp!1656559 tp!1656557))))

(declare-fun b!5955007 () Bool)

(declare-fun tp!1656558 () Bool)

(declare-fun tp!1656560 () Bool)

(assert (=> b!5955007 (= e!3642818 (and tp!1656558 tp!1656560))))

(assert (= (and b!5953997 ((_ is ElementMatch!15997) (regTwo!32506 (regTwo!32506 r!7292)))) b!5955004))

(assert (= (and b!5953997 ((_ is Concat!24842) (regTwo!32506 (regTwo!32506 r!7292)))) b!5955005))

(assert (= (and b!5953997 ((_ is Star!15997) (regTwo!32506 (regTwo!32506 r!7292)))) b!5955006))

(assert (= (and b!5953997 ((_ is Union!15997) (regTwo!32506 (regTwo!32506 r!7292)))) b!5955007))

(declare-fun b!5955010 () Bool)

(declare-fun e!3642819 () Bool)

(declare-fun tp!1656561 () Bool)

(assert (=> b!5955010 (= e!3642819 tp!1656561)))

(assert (=> b!5953998 (= tp!1656501 e!3642819)))

(declare-fun b!5955008 () Bool)

(assert (=> b!5955008 (= e!3642819 tp_is_empty!41247)))

(declare-fun b!5955009 () Bool)

(declare-fun tp!1656564 () Bool)

(declare-fun tp!1656562 () Bool)

(assert (=> b!5955009 (= e!3642819 (and tp!1656564 tp!1656562))))

(declare-fun b!5955011 () Bool)

(declare-fun tp!1656563 () Bool)

(declare-fun tp!1656565 () Bool)

(assert (=> b!5955011 (= e!3642819 (and tp!1656563 tp!1656565))))

(assert (= (and b!5953998 ((_ is ElementMatch!15997) (reg!16326 (regTwo!32506 r!7292)))) b!5955008))

(assert (= (and b!5953998 ((_ is Concat!24842) (reg!16326 (regTwo!32506 r!7292)))) b!5955009))

(assert (= (and b!5953998 ((_ is Star!15997) (reg!16326 (regTwo!32506 r!7292)))) b!5955010))

(assert (= (and b!5953998 ((_ is Union!15997) (reg!16326 (regTwo!32506 r!7292)))) b!5955011))

(declare-fun b!5955014 () Bool)

(declare-fun e!3642820 () Bool)

(declare-fun tp!1656566 () Bool)

(assert (=> b!5955014 (= e!3642820 tp!1656566)))

(assert (=> b!5953971 (= tp!1656476 e!3642820)))

(declare-fun b!5955012 () Bool)

(assert (=> b!5955012 (= e!3642820 tp_is_empty!41247)))

(declare-fun b!5955013 () Bool)

(declare-fun tp!1656569 () Bool)

(declare-fun tp!1656567 () Bool)

(assert (=> b!5955013 (= e!3642820 (and tp!1656569 tp!1656567))))

(declare-fun b!5955015 () Bool)

(declare-fun tp!1656568 () Bool)

(declare-fun tp!1656570 () Bool)

(assert (=> b!5955015 (= e!3642820 (and tp!1656568 tp!1656570))))

(assert (= (and b!5953971 ((_ is ElementMatch!15997) (regOne!32506 (reg!16326 r!7292)))) b!5955012))

(assert (= (and b!5953971 ((_ is Concat!24842) (regOne!32506 (reg!16326 r!7292)))) b!5955013))

(assert (= (and b!5953971 ((_ is Star!15997) (regOne!32506 (reg!16326 r!7292)))) b!5955014))

(assert (= (and b!5953971 ((_ is Union!15997) (regOne!32506 (reg!16326 r!7292)))) b!5955015))

(declare-fun b!5955018 () Bool)

(declare-fun e!3642821 () Bool)

(declare-fun tp!1656571 () Bool)

(assert (=> b!5955018 (= e!3642821 tp!1656571)))

(assert (=> b!5953971 (= tp!1656474 e!3642821)))

(declare-fun b!5955016 () Bool)

(assert (=> b!5955016 (= e!3642821 tp_is_empty!41247)))

(declare-fun b!5955017 () Bool)

(declare-fun tp!1656574 () Bool)

(declare-fun tp!1656572 () Bool)

(assert (=> b!5955017 (= e!3642821 (and tp!1656574 tp!1656572))))

(declare-fun b!5955019 () Bool)

(declare-fun tp!1656573 () Bool)

(declare-fun tp!1656575 () Bool)

(assert (=> b!5955019 (= e!3642821 (and tp!1656573 tp!1656575))))

(assert (= (and b!5953971 ((_ is ElementMatch!15997) (regTwo!32506 (reg!16326 r!7292)))) b!5955016))

(assert (= (and b!5953971 ((_ is Concat!24842) (regTwo!32506 (reg!16326 r!7292)))) b!5955017))

(assert (= (and b!5953971 ((_ is Star!15997) (regTwo!32506 (reg!16326 r!7292)))) b!5955018))

(assert (= (and b!5953971 ((_ is Union!15997) (regTwo!32506 (reg!16326 r!7292)))) b!5955019))

(declare-fun b!5955022 () Bool)

(declare-fun e!3642822 () Bool)

(declare-fun tp!1656576 () Bool)

(assert (=> b!5955022 (= e!3642822 tp!1656576)))

(assert (=> b!5953999 (= tp!1656503 e!3642822)))

(declare-fun b!5955020 () Bool)

(assert (=> b!5955020 (= e!3642822 tp_is_empty!41247)))

(declare-fun b!5955021 () Bool)

(declare-fun tp!1656579 () Bool)

(declare-fun tp!1656577 () Bool)

(assert (=> b!5955021 (= e!3642822 (and tp!1656579 tp!1656577))))

(declare-fun b!5955023 () Bool)

(declare-fun tp!1656578 () Bool)

(declare-fun tp!1656580 () Bool)

(assert (=> b!5955023 (= e!3642822 (and tp!1656578 tp!1656580))))

(assert (= (and b!5953999 ((_ is ElementMatch!15997) (regOne!32507 (regTwo!32506 r!7292)))) b!5955020))

(assert (= (and b!5953999 ((_ is Concat!24842) (regOne!32507 (regTwo!32506 r!7292)))) b!5955021))

(assert (= (and b!5953999 ((_ is Star!15997) (regOne!32507 (regTwo!32506 r!7292)))) b!5955022))

(assert (= (and b!5953999 ((_ is Union!15997) (regOne!32507 (regTwo!32506 r!7292)))) b!5955023))

(declare-fun b!5955026 () Bool)

(declare-fun e!3642823 () Bool)

(declare-fun tp!1656581 () Bool)

(assert (=> b!5955026 (= e!3642823 tp!1656581)))

(assert (=> b!5953999 (= tp!1656505 e!3642823)))

(declare-fun b!5955024 () Bool)

(assert (=> b!5955024 (= e!3642823 tp_is_empty!41247)))

(declare-fun b!5955025 () Bool)

(declare-fun tp!1656584 () Bool)

(declare-fun tp!1656582 () Bool)

(assert (=> b!5955025 (= e!3642823 (and tp!1656584 tp!1656582))))

(declare-fun b!5955027 () Bool)

(declare-fun tp!1656583 () Bool)

(declare-fun tp!1656585 () Bool)

(assert (=> b!5955027 (= e!3642823 (and tp!1656583 tp!1656585))))

(assert (= (and b!5953999 ((_ is ElementMatch!15997) (regTwo!32507 (regTwo!32506 r!7292)))) b!5955024))

(assert (= (and b!5953999 ((_ is Concat!24842) (regTwo!32507 (regTwo!32506 r!7292)))) b!5955025))

(assert (= (and b!5953999 ((_ is Star!15997) (regTwo!32507 (regTwo!32506 r!7292)))) b!5955026))

(assert (= (and b!5953999 ((_ is Union!15997) (regTwo!32507 (regTwo!32506 r!7292)))) b!5955027))

(declare-fun condSetEmpty!40483 () Bool)

(assert (=> setNonEmpty!40473 (= condSetEmpty!40483 (= setRest!40473 ((as const (Array Context!10762 Bool)) false)))))

(declare-fun setRes!40483 () Bool)

(assert (=> setNonEmpty!40473 (= tp!1656488 setRes!40483)))

(declare-fun setIsEmpty!40483 () Bool)

(assert (=> setIsEmpty!40483 setRes!40483))

(declare-fun setNonEmpty!40483 () Bool)

(declare-fun tp!1656586 () Bool)

(declare-fun e!3642824 () Bool)

(declare-fun setElem!40483 () Context!10762)

(assert (=> setNonEmpty!40483 (= setRes!40483 (and tp!1656586 (inv!83239 setElem!40483) e!3642824))))

(declare-fun setRest!40483 () (InoxSet Context!10762))

(assert (=> setNonEmpty!40483 (= setRest!40473 ((_ map or) (store ((as const (Array Context!10762 Bool)) false) setElem!40483 true) setRest!40483))))

(declare-fun b!5955028 () Bool)

(declare-fun tp!1656587 () Bool)

(assert (=> b!5955028 (= e!3642824 tp!1656587)))

(assert (= (and setNonEmpty!40473 condSetEmpty!40483) setIsEmpty!40483))

(assert (= (and setNonEmpty!40473 (not condSetEmpty!40483)) setNonEmpty!40483))

(assert (= setNonEmpty!40483 b!5955028))

(declare-fun m!6842512 () Bool)

(assert (=> setNonEmpty!40483 m!6842512))

(declare-fun b!5955031 () Bool)

(declare-fun e!3642825 () Bool)

(declare-fun tp!1656588 () Bool)

(assert (=> b!5955031 (= e!3642825 tp!1656588)))

(assert (=> b!5953972 (= tp!1656473 e!3642825)))

(declare-fun b!5955029 () Bool)

(assert (=> b!5955029 (= e!3642825 tp_is_empty!41247)))

(declare-fun b!5955030 () Bool)

(declare-fun tp!1656591 () Bool)

(declare-fun tp!1656589 () Bool)

(assert (=> b!5955030 (= e!3642825 (and tp!1656591 tp!1656589))))

(declare-fun b!5955032 () Bool)

(declare-fun tp!1656590 () Bool)

(declare-fun tp!1656592 () Bool)

(assert (=> b!5955032 (= e!3642825 (and tp!1656590 tp!1656592))))

(assert (= (and b!5953972 ((_ is ElementMatch!15997) (reg!16326 (reg!16326 r!7292)))) b!5955029))

(assert (= (and b!5953972 ((_ is Concat!24842) (reg!16326 (reg!16326 r!7292)))) b!5955030))

(assert (= (and b!5953972 ((_ is Star!15997) (reg!16326 (reg!16326 r!7292)))) b!5955031))

(assert (= (and b!5953972 ((_ is Union!15997) (reg!16326 (reg!16326 r!7292)))) b!5955032))

(declare-fun b!5955035 () Bool)

(declare-fun e!3642826 () Bool)

(declare-fun tp!1656593 () Bool)

(assert (=> b!5955035 (= e!3642826 tp!1656593)))

(assert (=> b!5954006 (= tp!1656512 e!3642826)))

(declare-fun b!5955033 () Bool)

(assert (=> b!5955033 (= e!3642826 tp_is_empty!41247)))

(declare-fun b!5955034 () Bool)

(declare-fun tp!1656596 () Bool)

(declare-fun tp!1656594 () Bool)

(assert (=> b!5955034 (= e!3642826 (and tp!1656596 tp!1656594))))

(declare-fun b!5955036 () Bool)

(declare-fun tp!1656595 () Bool)

(declare-fun tp!1656597 () Bool)

(assert (=> b!5955036 (= e!3642826 (and tp!1656595 tp!1656597))))

(assert (= (and b!5954006 ((_ is ElementMatch!15997) (regOne!32506 (regOne!32507 r!7292)))) b!5955033))

(assert (= (and b!5954006 ((_ is Concat!24842) (regOne!32506 (regOne!32507 r!7292)))) b!5955034))

(assert (= (and b!5954006 ((_ is Star!15997) (regOne!32506 (regOne!32507 r!7292)))) b!5955035))

(assert (= (and b!5954006 ((_ is Union!15997) (regOne!32506 (regOne!32507 r!7292)))) b!5955036))

(declare-fun b!5955039 () Bool)

(declare-fun e!3642827 () Bool)

(declare-fun tp!1656598 () Bool)

(assert (=> b!5955039 (= e!3642827 tp!1656598)))

(assert (=> b!5954006 (= tp!1656510 e!3642827)))

(declare-fun b!5955037 () Bool)

(assert (=> b!5955037 (= e!3642827 tp_is_empty!41247)))

(declare-fun b!5955038 () Bool)

(declare-fun tp!1656601 () Bool)

(declare-fun tp!1656599 () Bool)

(assert (=> b!5955038 (= e!3642827 (and tp!1656601 tp!1656599))))

(declare-fun b!5955040 () Bool)

(declare-fun tp!1656600 () Bool)

(declare-fun tp!1656602 () Bool)

(assert (=> b!5955040 (= e!3642827 (and tp!1656600 tp!1656602))))

(assert (= (and b!5954006 ((_ is ElementMatch!15997) (regTwo!32506 (regOne!32507 r!7292)))) b!5955037))

(assert (= (and b!5954006 ((_ is Concat!24842) (regTwo!32506 (regOne!32507 r!7292)))) b!5955038))

(assert (= (and b!5954006 ((_ is Star!15997) (regTwo!32506 (regOne!32507 r!7292)))) b!5955039))

(assert (= (and b!5954006 ((_ is Union!15997) (regTwo!32506 (regOne!32507 r!7292)))) b!5955040))

(declare-fun b!5955043 () Bool)

(declare-fun e!3642828 () Bool)

(declare-fun tp!1656603 () Bool)

(assert (=> b!5955043 (= e!3642828 tp!1656603)))

(assert (=> b!5953991 (= tp!1656494 e!3642828)))

(declare-fun b!5955041 () Bool)

(assert (=> b!5955041 (= e!3642828 tp_is_empty!41247)))

(declare-fun b!5955042 () Bool)

(declare-fun tp!1656606 () Bool)

(declare-fun tp!1656604 () Bool)

(assert (=> b!5955042 (= e!3642828 (and tp!1656606 tp!1656604))))

(declare-fun b!5955044 () Bool)

(declare-fun tp!1656605 () Bool)

(declare-fun tp!1656607 () Bool)

(assert (=> b!5955044 (= e!3642828 (and tp!1656605 tp!1656607))))

(assert (= (and b!5953991 ((_ is ElementMatch!15997) (h!70614 (exprs!5881 setElem!40467)))) b!5955041))

(assert (= (and b!5953991 ((_ is Concat!24842) (h!70614 (exprs!5881 setElem!40467)))) b!5955042))

(assert (= (and b!5953991 ((_ is Star!15997) (h!70614 (exprs!5881 setElem!40467)))) b!5955043))

(assert (= (and b!5953991 ((_ is Union!15997) (h!70614 (exprs!5881 setElem!40467)))) b!5955044))

(declare-fun b!5955045 () Bool)

(declare-fun e!3642829 () Bool)

(declare-fun tp!1656608 () Bool)

(declare-fun tp!1656609 () Bool)

(assert (=> b!5955045 (= e!3642829 (and tp!1656608 tp!1656609))))

(assert (=> b!5953991 (= tp!1656495 e!3642829)))

(assert (= (and b!5953991 ((_ is Cons!64166) (t!377701 (exprs!5881 setElem!40467)))) b!5955045))

(declare-fun b!5955048 () Bool)

(declare-fun e!3642830 () Bool)

(declare-fun tp!1656610 () Bool)

(assert (=> b!5955048 (= e!3642830 tp!1656610)))

(assert (=> b!5954012 (= tp!1656516 e!3642830)))

(declare-fun b!5955046 () Bool)

(assert (=> b!5955046 (= e!3642830 tp_is_empty!41247)))

(declare-fun b!5955047 () Bool)

(declare-fun tp!1656613 () Bool)

(declare-fun tp!1656611 () Bool)

(assert (=> b!5955047 (= e!3642830 (and tp!1656613 tp!1656611))))

(declare-fun b!5955049 () Bool)

(declare-fun tp!1656612 () Bool)

(declare-fun tp!1656614 () Bool)

(assert (=> b!5955049 (= e!3642830 (and tp!1656612 tp!1656614))))

(assert (= (and b!5954012 ((_ is ElementMatch!15997) (regOne!32507 (regTwo!32507 r!7292)))) b!5955046))

(assert (= (and b!5954012 ((_ is Concat!24842) (regOne!32507 (regTwo!32507 r!7292)))) b!5955047))

(assert (= (and b!5954012 ((_ is Star!15997) (regOne!32507 (regTwo!32507 r!7292)))) b!5955048))

(assert (= (and b!5954012 ((_ is Union!15997) (regOne!32507 (regTwo!32507 r!7292)))) b!5955049))

(declare-fun b!5955052 () Bool)

(declare-fun e!3642831 () Bool)

(declare-fun tp!1656615 () Bool)

(assert (=> b!5955052 (= e!3642831 tp!1656615)))

(assert (=> b!5954012 (= tp!1656518 e!3642831)))

(declare-fun b!5955050 () Bool)

(assert (=> b!5955050 (= e!3642831 tp_is_empty!41247)))

(declare-fun b!5955051 () Bool)

(declare-fun tp!1656618 () Bool)

(declare-fun tp!1656616 () Bool)

(assert (=> b!5955051 (= e!3642831 (and tp!1656618 tp!1656616))))

(declare-fun b!5955053 () Bool)

(declare-fun tp!1656617 () Bool)

(declare-fun tp!1656619 () Bool)

(assert (=> b!5955053 (= e!3642831 (and tp!1656617 tp!1656619))))

(assert (= (and b!5954012 ((_ is ElementMatch!15997) (regTwo!32507 (regTwo!32507 r!7292)))) b!5955050))

(assert (= (and b!5954012 ((_ is Concat!24842) (regTwo!32507 (regTwo!32507 r!7292)))) b!5955051))

(assert (= (and b!5954012 ((_ is Star!15997) (regTwo!32507 (regTwo!32507 r!7292)))) b!5955052))

(assert (= (and b!5954012 ((_ is Union!15997) (regTwo!32507 (regTwo!32507 r!7292)))) b!5955053))

(declare-fun b!5955054 () Bool)

(declare-fun e!3642832 () Bool)

(declare-fun tp!1656620 () Bool)

(assert (=> b!5955054 (= e!3642832 (and tp_is_empty!41247 tp!1656620))))

(assert (=> b!5954004 (= tp!1656508 e!3642832)))

(assert (= (and b!5954004 ((_ is Cons!64167) (t!377702 (t!377702 s!2326)))) b!5955054))

(declare-fun b!5955057 () Bool)

(declare-fun e!3642833 () Bool)

(declare-fun tp!1656621 () Bool)

(assert (=> b!5955057 (= e!3642833 tp!1656621)))

(assert (=> b!5954013 (= tp!1656519 e!3642833)))

(declare-fun b!5955055 () Bool)

(assert (=> b!5955055 (= e!3642833 tp_is_empty!41247)))

(declare-fun b!5955056 () Bool)

(declare-fun tp!1656624 () Bool)

(declare-fun tp!1656622 () Bool)

(assert (=> b!5955056 (= e!3642833 (and tp!1656624 tp!1656622))))

(declare-fun b!5955058 () Bool)

(declare-fun tp!1656623 () Bool)

(declare-fun tp!1656625 () Bool)

(assert (=> b!5955058 (= e!3642833 (and tp!1656623 tp!1656625))))

(assert (= (and b!5954013 ((_ is ElementMatch!15997) (h!70614 (exprs!5881 (h!70616 zl!343))))) b!5955055))

(assert (= (and b!5954013 ((_ is Concat!24842) (h!70614 (exprs!5881 (h!70616 zl!343))))) b!5955056))

(assert (= (and b!5954013 ((_ is Star!15997) (h!70614 (exprs!5881 (h!70616 zl!343))))) b!5955057))

(assert (= (and b!5954013 ((_ is Union!15997) (h!70614 (exprs!5881 (h!70616 zl!343))))) b!5955058))

(declare-fun b!5955059 () Bool)

(declare-fun e!3642834 () Bool)

(declare-fun tp!1656626 () Bool)

(declare-fun tp!1656627 () Bool)

(assert (=> b!5955059 (= e!3642834 (and tp!1656626 tp!1656627))))

(assert (=> b!5954013 (= tp!1656520 e!3642834)))

(assert (= (and b!5954013 ((_ is Cons!64166) (t!377701 (exprs!5881 (h!70616 zl!343))))) b!5955059))

(declare-fun b!5955062 () Bool)

(declare-fun e!3642835 () Bool)

(declare-fun tp!1656628 () Bool)

(assert (=> b!5955062 (= e!3642835 tp!1656628)))

(assert (=> b!5953993 (= tp!1656499 e!3642835)))

(declare-fun b!5955060 () Bool)

(assert (=> b!5955060 (= e!3642835 tp_is_empty!41247)))

(declare-fun b!5955061 () Bool)

(declare-fun tp!1656631 () Bool)

(declare-fun tp!1656629 () Bool)

(assert (=> b!5955061 (= e!3642835 (and tp!1656631 tp!1656629))))

(declare-fun b!5955063 () Bool)

(declare-fun tp!1656630 () Bool)

(declare-fun tp!1656632 () Bool)

(assert (=> b!5955063 (= e!3642835 (and tp!1656630 tp!1656632))))

(assert (= (and b!5953993 ((_ is ElementMatch!15997) (regOne!32506 (regOne!32506 r!7292)))) b!5955060))

(assert (= (and b!5953993 ((_ is Concat!24842) (regOne!32506 (regOne!32506 r!7292)))) b!5955061))

(assert (= (and b!5953993 ((_ is Star!15997) (regOne!32506 (regOne!32506 r!7292)))) b!5955062))

(assert (= (and b!5953993 ((_ is Union!15997) (regOne!32506 (regOne!32506 r!7292)))) b!5955063))

(declare-fun b!5955066 () Bool)

(declare-fun e!3642836 () Bool)

(declare-fun tp!1656633 () Bool)

(assert (=> b!5955066 (= e!3642836 tp!1656633)))

(assert (=> b!5953993 (= tp!1656497 e!3642836)))

(declare-fun b!5955064 () Bool)

(assert (=> b!5955064 (= e!3642836 tp_is_empty!41247)))

(declare-fun b!5955065 () Bool)

(declare-fun tp!1656636 () Bool)

(declare-fun tp!1656634 () Bool)

(assert (=> b!5955065 (= e!3642836 (and tp!1656636 tp!1656634))))

(declare-fun b!5955067 () Bool)

(declare-fun tp!1656635 () Bool)

(declare-fun tp!1656637 () Bool)

(assert (=> b!5955067 (= e!3642836 (and tp!1656635 tp!1656637))))

(assert (= (and b!5953993 ((_ is ElementMatch!15997) (regTwo!32506 (regOne!32506 r!7292)))) b!5955064))

(assert (= (and b!5953993 ((_ is Concat!24842) (regTwo!32506 (regOne!32506 r!7292)))) b!5955065))

(assert (= (and b!5953993 ((_ is Star!15997) (regTwo!32506 (regOne!32506 r!7292)))) b!5955066))

(assert (= (and b!5953993 ((_ is Union!15997) (regTwo!32506 (regOne!32506 r!7292)))) b!5955067))

(declare-fun b!5955070 () Bool)

(declare-fun e!3642837 () Bool)

(declare-fun tp!1656638 () Bool)

(assert (=> b!5955070 (= e!3642837 tp!1656638)))

(assert (=> b!5953995 (= tp!1656498 e!3642837)))

(declare-fun b!5955068 () Bool)

(assert (=> b!5955068 (= e!3642837 tp_is_empty!41247)))

(declare-fun b!5955069 () Bool)

(declare-fun tp!1656641 () Bool)

(declare-fun tp!1656639 () Bool)

(assert (=> b!5955069 (= e!3642837 (and tp!1656641 tp!1656639))))

(declare-fun b!5955071 () Bool)

(declare-fun tp!1656640 () Bool)

(declare-fun tp!1656642 () Bool)

(assert (=> b!5955071 (= e!3642837 (and tp!1656640 tp!1656642))))

(assert (= (and b!5953995 ((_ is ElementMatch!15997) (regOne!32507 (regOne!32506 r!7292)))) b!5955068))

(assert (= (and b!5953995 ((_ is Concat!24842) (regOne!32507 (regOne!32506 r!7292)))) b!5955069))

(assert (= (and b!5953995 ((_ is Star!15997) (regOne!32507 (regOne!32506 r!7292)))) b!5955070))

(assert (= (and b!5953995 ((_ is Union!15997) (regOne!32507 (regOne!32506 r!7292)))) b!5955071))

(declare-fun b!5955074 () Bool)

(declare-fun e!3642838 () Bool)

(declare-fun tp!1656643 () Bool)

(assert (=> b!5955074 (= e!3642838 tp!1656643)))

(assert (=> b!5953995 (= tp!1656500 e!3642838)))

(declare-fun b!5955072 () Bool)

(assert (=> b!5955072 (= e!3642838 tp_is_empty!41247)))

(declare-fun b!5955073 () Bool)

(declare-fun tp!1656646 () Bool)

(declare-fun tp!1656644 () Bool)

(assert (=> b!5955073 (= e!3642838 (and tp!1656646 tp!1656644))))

(declare-fun b!5955075 () Bool)

(declare-fun tp!1656645 () Bool)

(declare-fun tp!1656647 () Bool)

(assert (=> b!5955075 (= e!3642838 (and tp!1656645 tp!1656647))))

(assert (= (and b!5953995 ((_ is ElementMatch!15997) (regTwo!32507 (regOne!32506 r!7292)))) b!5955072))

(assert (= (and b!5953995 ((_ is Concat!24842) (regTwo!32507 (regOne!32506 r!7292)))) b!5955073))

(assert (= (and b!5953995 ((_ is Star!15997) (regTwo!32507 (regOne!32506 r!7292)))) b!5955074))

(assert (= (and b!5953995 ((_ is Union!15997) (regTwo!32507 (regOne!32506 r!7292)))) b!5955075))

(declare-fun b!5955078 () Bool)

(declare-fun e!3642839 () Bool)

(declare-fun tp!1656648 () Bool)

(assert (=> b!5955078 (= e!3642839 tp!1656648)))

(assert (=> b!5953994 (= tp!1656496 e!3642839)))

(declare-fun b!5955076 () Bool)

(assert (=> b!5955076 (= e!3642839 tp_is_empty!41247)))

(declare-fun b!5955077 () Bool)

(declare-fun tp!1656651 () Bool)

(declare-fun tp!1656649 () Bool)

(assert (=> b!5955077 (= e!3642839 (and tp!1656651 tp!1656649))))

(declare-fun b!5955079 () Bool)

(declare-fun tp!1656650 () Bool)

(declare-fun tp!1656652 () Bool)

(assert (=> b!5955079 (= e!3642839 (and tp!1656650 tp!1656652))))

(assert (= (and b!5953994 ((_ is ElementMatch!15997) (reg!16326 (regOne!32506 r!7292)))) b!5955076))

(assert (= (and b!5953994 ((_ is Concat!24842) (reg!16326 (regOne!32506 r!7292)))) b!5955077))

(assert (= (and b!5953994 ((_ is Star!15997) (reg!16326 (regOne!32506 r!7292)))) b!5955078))

(assert (= (and b!5953994 ((_ is Union!15997) (reg!16326 (regOne!32506 r!7292)))) b!5955079))

(declare-fun b!5955082 () Bool)

(declare-fun e!3642840 () Bool)

(declare-fun tp!1656653 () Bool)

(assert (=> b!5955082 (= e!3642840 tp!1656653)))

(assert (=> b!5954011 (= tp!1656514 e!3642840)))

(declare-fun b!5955080 () Bool)

(assert (=> b!5955080 (= e!3642840 tp_is_empty!41247)))

(declare-fun b!5955081 () Bool)

(declare-fun tp!1656656 () Bool)

(declare-fun tp!1656654 () Bool)

(assert (=> b!5955081 (= e!3642840 (and tp!1656656 tp!1656654))))

(declare-fun b!5955083 () Bool)

(declare-fun tp!1656655 () Bool)

(declare-fun tp!1656657 () Bool)

(assert (=> b!5955083 (= e!3642840 (and tp!1656655 tp!1656657))))

(assert (= (and b!5954011 ((_ is ElementMatch!15997) (reg!16326 (regTwo!32507 r!7292)))) b!5955080))

(assert (= (and b!5954011 ((_ is Concat!24842) (reg!16326 (regTwo!32507 r!7292)))) b!5955081))

(assert (= (and b!5954011 ((_ is Star!15997) (reg!16326 (regTwo!32507 r!7292)))) b!5955082))

(assert (= (and b!5954011 ((_ is Union!15997) (reg!16326 (regTwo!32507 r!7292)))) b!5955083))

(declare-fun b!5955086 () Bool)

(declare-fun e!3642841 () Bool)

(declare-fun tp!1656658 () Bool)

(assert (=> b!5955086 (= e!3642841 tp!1656658)))

(assert (=> b!5954010 (= tp!1656517 e!3642841)))

(declare-fun b!5955084 () Bool)

(assert (=> b!5955084 (= e!3642841 tp_is_empty!41247)))

(declare-fun b!5955085 () Bool)

(declare-fun tp!1656661 () Bool)

(declare-fun tp!1656659 () Bool)

(assert (=> b!5955085 (= e!3642841 (and tp!1656661 tp!1656659))))

(declare-fun b!5955087 () Bool)

(declare-fun tp!1656660 () Bool)

(declare-fun tp!1656662 () Bool)

(assert (=> b!5955087 (= e!3642841 (and tp!1656660 tp!1656662))))

(assert (= (and b!5954010 ((_ is ElementMatch!15997) (regOne!32506 (regTwo!32507 r!7292)))) b!5955084))

(assert (= (and b!5954010 ((_ is Concat!24842) (regOne!32506 (regTwo!32507 r!7292)))) b!5955085))

(assert (= (and b!5954010 ((_ is Star!15997) (regOne!32506 (regTwo!32507 r!7292)))) b!5955086))

(assert (= (and b!5954010 ((_ is Union!15997) (regOne!32506 (regTwo!32507 r!7292)))) b!5955087))

(declare-fun b!5955090 () Bool)

(declare-fun e!3642842 () Bool)

(declare-fun tp!1656663 () Bool)

(assert (=> b!5955090 (= e!3642842 tp!1656663)))

(assert (=> b!5954010 (= tp!1656515 e!3642842)))

(declare-fun b!5955088 () Bool)

(assert (=> b!5955088 (= e!3642842 tp_is_empty!41247)))

(declare-fun b!5955089 () Bool)

(declare-fun tp!1656666 () Bool)

(declare-fun tp!1656664 () Bool)

(assert (=> b!5955089 (= e!3642842 (and tp!1656666 tp!1656664))))

(declare-fun b!5955091 () Bool)

(declare-fun tp!1656665 () Bool)

(declare-fun tp!1656667 () Bool)

(assert (=> b!5955091 (= e!3642842 (and tp!1656665 tp!1656667))))

(assert (= (and b!5954010 ((_ is ElementMatch!15997) (regTwo!32506 (regTwo!32507 r!7292)))) b!5955088))

(assert (= (and b!5954010 ((_ is Concat!24842) (regTwo!32506 (regTwo!32507 r!7292)))) b!5955089))

(assert (= (and b!5954010 ((_ is Star!15997) (regTwo!32506 (regTwo!32507 r!7292)))) b!5955090))

(assert (= (and b!5954010 ((_ is Union!15997) (regTwo!32506 (regTwo!32507 r!7292)))) b!5955091))

(declare-fun b!5955092 () Bool)

(declare-fun e!3642845 () Bool)

(declare-fun tp!1656668 () Bool)

(declare-fun tp!1656669 () Bool)

(assert (=> b!5955092 (= e!3642845 (and tp!1656668 tp!1656669))))

(assert (=> b!5953986 (= tp!1656489 e!3642845)))

(assert (= (and b!5953986 ((_ is Cons!64166) (exprs!5881 setElem!40473))) b!5955092))

(declare-fun b!5955099 () Bool)

(declare-fun e!3642846 () Bool)

(declare-fun tp!1656670 () Bool)

(assert (=> b!5955099 (= e!3642846 tp!1656670)))

(assert (=> b!5953973 (= tp!1656475 e!3642846)))

(declare-fun b!5955097 () Bool)

(assert (=> b!5955097 (= e!3642846 tp_is_empty!41247)))

(declare-fun b!5955098 () Bool)

(declare-fun tp!1656673 () Bool)

(declare-fun tp!1656671 () Bool)

(assert (=> b!5955098 (= e!3642846 (and tp!1656673 tp!1656671))))

(declare-fun b!5955100 () Bool)

(declare-fun tp!1656672 () Bool)

(declare-fun tp!1656674 () Bool)

(assert (=> b!5955100 (= e!3642846 (and tp!1656672 tp!1656674))))

(assert (= (and b!5953973 ((_ is ElementMatch!15997) (regOne!32507 (reg!16326 r!7292)))) b!5955097))

(assert (= (and b!5953973 ((_ is Concat!24842) (regOne!32507 (reg!16326 r!7292)))) b!5955098))

(assert (= (and b!5953973 ((_ is Star!15997) (regOne!32507 (reg!16326 r!7292)))) b!5955099))

(assert (= (and b!5953973 ((_ is Union!15997) (regOne!32507 (reg!16326 r!7292)))) b!5955100))

(declare-fun b!5955103 () Bool)

(declare-fun e!3642847 () Bool)

(declare-fun tp!1656675 () Bool)

(assert (=> b!5955103 (= e!3642847 tp!1656675)))

(assert (=> b!5953973 (= tp!1656477 e!3642847)))

(declare-fun b!5955101 () Bool)

(assert (=> b!5955101 (= e!3642847 tp_is_empty!41247)))

(declare-fun b!5955102 () Bool)

(declare-fun tp!1656678 () Bool)

(declare-fun tp!1656676 () Bool)

(assert (=> b!5955102 (= e!3642847 (and tp!1656678 tp!1656676))))

(declare-fun b!5955104 () Bool)

(declare-fun tp!1656677 () Bool)

(declare-fun tp!1656679 () Bool)

(assert (=> b!5955104 (= e!3642847 (and tp!1656677 tp!1656679))))

(assert (= (and b!5953973 ((_ is ElementMatch!15997) (regTwo!32507 (reg!16326 r!7292)))) b!5955101))

(assert (= (and b!5953973 ((_ is Concat!24842) (regTwo!32507 (reg!16326 r!7292)))) b!5955102))

(assert (= (and b!5953973 ((_ is Star!15997) (regTwo!32507 (reg!16326 r!7292)))) b!5955103))

(assert (= (and b!5953973 ((_ is Union!15997) (regTwo!32507 (reg!16326 r!7292)))) b!5955104))

(declare-fun b!5955107 () Bool)

(declare-fun e!3642848 () Bool)

(declare-fun tp!1656680 () Bool)

(assert (=> b!5955107 (= e!3642848 tp!1656680)))

(assert (=> b!5954007 (= tp!1656509 e!3642848)))

(declare-fun b!5955105 () Bool)

(assert (=> b!5955105 (= e!3642848 tp_is_empty!41247)))

(declare-fun b!5955106 () Bool)

(declare-fun tp!1656683 () Bool)

(declare-fun tp!1656681 () Bool)

(assert (=> b!5955106 (= e!3642848 (and tp!1656683 tp!1656681))))

(declare-fun b!5955108 () Bool)

(declare-fun tp!1656682 () Bool)

(declare-fun tp!1656684 () Bool)

(assert (=> b!5955108 (= e!3642848 (and tp!1656682 tp!1656684))))

(assert (= (and b!5954007 ((_ is ElementMatch!15997) (reg!16326 (regOne!32507 r!7292)))) b!5955105))

(assert (= (and b!5954007 ((_ is Concat!24842) (reg!16326 (regOne!32507 r!7292)))) b!5955106))

(assert (= (and b!5954007 ((_ is Star!15997) (reg!16326 (regOne!32507 r!7292)))) b!5955107))

(assert (= (and b!5954007 ((_ is Union!15997) (reg!16326 (regOne!32507 r!7292)))) b!5955108))

(declare-fun b!5955110 () Bool)

(declare-fun e!3642850 () Bool)

(declare-fun tp!1656685 () Bool)

(assert (=> b!5955110 (= e!3642850 tp!1656685)))

(declare-fun tp!1656686 () Bool)

(declare-fun e!3642849 () Bool)

(declare-fun b!5955109 () Bool)

(assert (=> b!5955109 (= e!3642849 (and (inv!83239 (h!70616 (t!377703 (t!377703 zl!343)))) e!3642850 tp!1656686))))

(assert (=> b!5953980 (= tp!1656483 e!3642849)))

(assert (= b!5955109 b!5955110))

(assert (= (and b!5953980 ((_ is Cons!64168) (t!377703 (t!377703 zl!343)))) b!5955109))

(declare-fun m!6842514 () Bool)

(assert (=> b!5955109 m!6842514))

(declare-fun b!5955113 () Bool)

(declare-fun e!3642851 () Bool)

(declare-fun tp!1656687 () Bool)

(assert (=> b!5955113 (= e!3642851 tp!1656687)))

(assert (=> b!5954008 (= tp!1656511 e!3642851)))

(declare-fun b!5955111 () Bool)

(assert (=> b!5955111 (= e!3642851 tp_is_empty!41247)))

(declare-fun b!5955112 () Bool)

(declare-fun tp!1656690 () Bool)

(declare-fun tp!1656688 () Bool)

(assert (=> b!5955112 (= e!3642851 (and tp!1656690 tp!1656688))))

(declare-fun b!5955114 () Bool)

(declare-fun tp!1656689 () Bool)

(declare-fun tp!1656691 () Bool)

(assert (=> b!5955114 (= e!3642851 (and tp!1656689 tp!1656691))))

(assert (= (and b!5954008 ((_ is ElementMatch!15997) (regOne!32507 (regOne!32507 r!7292)))) b!5955111))

(assert (= (and b!5954008 ((_ is Concat!24842) (regOne!32507 (regOne!32507 r!7292)))) b!5955112))

(assert (= (and b!5954008 ((_ is Star!15997) (regOne!32507 (regOne!32507 r!7292)))) b!5955113))

(assert (= (and b!5954008 ((_ is Union!15997) (regOne!32507 (regOne!32507 r!7292)))) b!5955114))

(declare-fun b!5955117 () Bool)

(declare-fun e!3642852 () Bool)

(declare-fun tp!1656692 () Bool)

(assert (=> b!5955117 (= e!3642852 tp!1656692)))

(assert (=> b!5954008 (= tp!1656513 e!3642852)))

(declare-fun b!5955115 () Bool)

(assert (=> b!5955115 (= e!3642852 tp_is_empty!41247)))

(declare-fun b!5955116 () Bool)

(declare-fun tp!1656695 () Bool)

(declare-fun tp!1656693 () Bool)

(assert (=> b!5955116 (= e!3642852 (and tp!1656695 tp!1656693))))

(declare-fun b!5955118 () Bool)

(declare-fun tp!1656694 () Bool)

(declare-fun tp!1656696 () Bool)

(assert (=> b!5955118 (= e!3642852 (and tp!1656694 tp!1656696))))

(assert (= (and b!5954008 ((_ is ElementMatch!15997) (regTwo!32507 (regOne!32507 r!7292)))) b!5955115))

(assert (= (and b!5954008 ((_ is Concat!24842) (regTwo!32507 (regOne!32507 r!7292)))) b!5955116))

(assert (= (and b!5954008 ((_ is Star!15997) (regTwo!32507 (regOne!32507 r!7292)))) b!5955117))

(assert (= (and b!5954008 ((_ is Union!15997) (regTwo!32507 (regOne!32507 r!7292)))) b!5955118))

(declare-fun b!5955119 () Bool)

(declare-fun e!3642853 () Bool)

(declare-fun tp!1656697 () Bool)

(declare-fun tp!1656698 () Bool)

(assert (=> b!5955119 (= e!3642853 (and tp!1656697 tp!1656698))))

(assert (=> b!5953981 (= tp!1656482 e!3642853)))

(assert (= (and b!5953981 ((_ is Cons!64166) (exprs!5881 (h!70616 (t!377703 zl!343))))) b!5955119))

(declare-fun b_lambda!223843 () Bool)

(assert (= b_lambda!223779 (or b!5953646 b_lambda!223843)))

(declare-fun bs!1411610 () Bool)

(declare-fun d!1866982 () Bool)

(assert (= bs!1411610 (and d!1866982 b!5953646)))

(assert (=> bs!1411610 (= (dynLambda!25109 lambda!325086 (h!70614 (exprs!5881 lt!2313746))) (>= lt!2313884 (regexDepth!254 (h!70614 (exprs!5881 lt!2313746)))))))

(assert (=> bs!1411610 m!6841180))

(assert (=> b!5954031 d!1866982))

(declare-fun b_lambda!223845 () Bool)

(assert (= b_lambda!223777 (or d!1866308 b_lambda!223845)))

(declare-fun bs!1411611 () Bool)

(declare-fun d!1866984 () Bool)

(assert (= bs!1411611 (and d!1866984 d!1866308)))

(assert (=> bs!1411611 (= (dynLambda!25109 lambda!325043 (h!70614 lt!2313827)) (validRegex!7733 (h!70614 lt!2313827)))))

(declare-fun m!6842516 () Bool)

(assert (=> bs!1411611 m!6842516))

(assert (=> b!5954018 d!1866984))

(declare-fun b_lambda!223847 () Bool)

(assert (= b_lambda!223795 (or d!1866302 b_lambda!223847)))

(declare-fun bs!1411613 () Bool)

(declare-fun d!1866986 () Bool)

(assert (= bs!1411613 (and d!1866986 d!1866302)))

(assert (=> bs!1411613 (= (dynLambda!25109 lambda!325029 (h!70614 (exprs!5881 setElem!40467))) (validRegex!7733 (h!70614 (exprs!5881 setElem!40467))))))

(declare-fun m!6842518 () Bool)

(assert (=> bs!1411613 m!6842518))

(assert (=> b!5954188 d!1866986))

(declare-fun b_lambda!223849 () Bool)

(assert (= b_lambda!223837 (or b!5953411 b_lambda!223849)))

(declare-fun bs!1411614 () Bool)

(declare-fun d!1866988 () Bool)

(assert (= bs!1411614 (and d!1866988 b!5953411)))

(assert (=> bs!1411614 (= (dynLambda!25114 lambda!325058 (h!70616 (t!377703 (Cons!64168 lt!2313743 Nil!64168)))) (>= lt!2313844 (contextDepth!145 (h!70616 (t!377703 (Cons!64168 lt!2313743 Nil!64168))))))))

(assert (=> bs!1411614 m!6842272))

(assert (=> b!5954768 d!1866988))

(declare-fun b_lambda!223851 () Bool)

(assert (= b_lambda!223785 (or b!5953592 b_lambda!223851)))

(declare-fun bs!1411616 () Bool)

(declare-fun d!1866990 () Bool)

(assert (= bs!1411616 (and d!1866990 b!5953592)))

(assert (=> bs!1411616 (= (dynLambda!25109 lambda!325083 (h!70614 (exprs!5881 lt!2313738))) (>= lt!2313869 (regexDepth!254 (h!70614 (exprs!5881 lt!2313738)))))))

(assert (=> bs!1411616 m!6841104))

(assert (=> b!5954136 d!1866990))

(declare-fun b_lambda!223853 () Bool)

(assert (= b_lambda!223811 (or b!5953644 b_lambda!223853)))

(declare-fun bs!1411618 () Bool)

(declare-fun d!1866992 () Bool)

(assert (= bs!1411618 (and d!1866992 b!5953644)))

(assert (=> bs!1411618 (= (dynLambda!25109 lambda!325085 (h!70614 (t!377701 (exprs!5881 lt!2313746)))) (>= lt!2313886 (regexDepth!254 (h!70614 (t!377701 (exprs!5881 lt!2313746))))))))

(declare-fun m!6842520 () Bool)

(assert (=> bs!1411618 m!6842520))

(assert (=> b!5954452 d!1866992))

(declare-fun b_lambda!223855 () Bool)

(assert (= b_lambda!223809 (or b!5953582 b_lambda!223855)))

(declare-fun bs!1411619 () Bool)

(declare-fun d!1866994 () Bool)

(assert (= bs!1411619 (and d!1866994 b!5953582)))

(assert (=> bs!1411619 (= (dynLambda!25109 lambda!325081 (h!70614 (exprs!5881 lt!2313743))) (>= lt!2313865 (regexDepth!254 (h!70614 (exprs!5881 lt!2313743)))))))

(assert (=> bs!1411619 m!6841086))

(assert (=> b!5954393 d!1866994))

(declare-fun b_lambda!223857 () Bool)

(assert (= b_lambda!223805 (or d!1866300 b_lambda!223857)))

(declare-fun bs!1411621 () Bool)

(declare-fun d!1866996 () Bool)

(assert (= bs!1411621 (and d!1866996 d!1866300)))

(assert (=> bs!1411621 (= (dynLambda!25109 lambda!325028 (h!70614 (exprs!5881 (h!70616 zl!343)))) (validRegex!7733 (h!70614 (exprs!5881 (h!70616 zl!343)))))))

(declare-fun m!6842522 () Bool)

(assert (=> bs!1411621 m!6842522))

(assert (=> b!5954376 d!1866996))

(declare-fun b_lambda!223859 () Bool)

(assert (= b_lambda!223833 (or b!5953147 b_lambda!223859)))

(assert (=> d!1866866 d!1866464))

(declare-fun b_lambda!223861 () Bool)

(assert (= b_lambda!223819 (or b!5953590 b_lambda!223861)))

(declare-fun bs!1411623 () Bool)

(declare-fun d!1866998 () Bool)

(assert (= bs!1411623 (and d!1866998 b!5953590)))

(assert (=> bs!1411623 (= (dynLambda!25109 lambda!325082 (h!70614 (t!377701 (exprs!5881 lt!2313738)))) (>= lt!2313871 (regexDepth!254 (h!70614 (t!377701 (exprs!5881 lt!2313738))))))))

(declare-fun m!6842524 () Bool)

(assert (=> bs!1411623 m!6842524))

(assert (=> b!5954558 d!1866998))

(declare-fun b_lambda!223863 () Bool)

(assert (= b_lambda!223831 (or b!5953408 b_lambda!223863)))

(declare-fun bs!1411624 () Bool)

(declare-fun d!1867000 () Bool)

(assert (= bs!1411624 (and d!1867000 b!5953408)))

(assert (=> bs!1411624 (= (dynLambda!25114 lambda!325056 (h!70616 (Cons!64168 lt!2313738 Nil!64168))) (>= lt!2313839 (contextDepth!145 (h!70616 (Cons!64168 lt!2313738 Nil!64168)))))))

(assert (=> bs!1411624 m!6840932))

(assert (=> b!5954695 d!1867000))

(declare-fun b_lambda!223865 () Bool)

(assert (= b_lambda!223813 (or b!5953147 b_lambda!223865)))

(assert (=> d!1866748 d!1866462))

(declare-fun b_lambda!223867 () Bool)

(assert (= b_lambda!223801 (or b!5953413 b_lambda!223867)))

(declare-fun bs!1411626 () Bool)

(declare-fun d!1867002 () Bool)

(assert (= bs!1411626 (and d!1867002 b!5953413)))

(assert (=> bs!1411626 (= (dynLambda!25114 lambda!325059 (h!70616 (Cons!64168 lt!2313743 Nil!64168))) (>= lt!2313843 (contextDepth!145 (h!70616 (Cons!64168 lt!2313743 Nil!64168)))))))

(assert (=> bs!1411626 m!6840944))

(assert (=> b!5954264 d!1867002))

(declare-fun b_lambda!223869 () Bool)

(assert (= b_lambda!223783 (or b!5953580 b_lambda!223869)))

(declare-fun bs!1411628 () Bool)

(declare-fun d!1867004 () Bool)

(assert (= bs!1411628 (and d!1867004 b!5953580)))

(assert (=> bs!1411628 (= (dynLambda!25109 lambda!325080 (h!70614 (t!377701 (exprs!5881 lt!2313743)))) (>= lt!2313867 (regexDepth!254 (h!70614 (t!377701 (exprs!5881 lt!2313743))))))))

(declare-fun m!6842526 () Bool)

(assert (=> bs!1411628 m!6842526))

(assert (=> b!5954088 d!1867004))

(declare-fun b_lambda!223871 () Bool)

(assert (= b_lambda!223781 (or d!1866344 b_lambda!223871)))

(declare-fun bs!1411630 () Bool)

(declare-fun d!1867006 () Bool)

(assert (= bs!1411630 (and d!1867006 d!1866344)))

(assert (=> bs!1411630 (= (dynLambda!25109 lambda!325073 (h!70614 (exprs!5881 lt!2313746))) (validRegex!7733 (h!70614 (exprs!5881 lt!2313746))))))

(declare-fun m!6842528 () Bool)

(assert (=> bs!1411630 m!6842528))

(assert (=> b!5954035 d!1867006))

(declare-fun b_lambda!223873 () Bool)

(assert (= b_lambda!223797 (or b!5953406 b_lambda!223873)))

(declare-fun bs!1411631 () Bool)

(declare-fun d!1867008 () Bool)

(assert (= bs!1411631 (and d!1867008 b!5953406)))

(assert (=> bs!1411631 (= (dynLambda!25114 lambda!325055 (h!70616 (t!377703 (Cons!64168 lt!2313738 Nil!64168)))) (>= lt!2313840 (contextDepth!145 (h!70616 (t!377703 (Cons!64168 lt!2313738 Nil!64168))))))))

(assert (=> bs!1411631 m!6841584))

(assert (=> b!5954226 d!1867008))

(declare-fun b_lambda!223875 () Bool)

(assert (= b_lambda!223817 (or d!1866304 b_lambda!223875)))

(declare-fun bs!1411633 () Bool)

(declare-fun d!1867010 () Bool)

(assert (= bs!1411633 (and d!1867010 d!1866304)))

(assert (=> bs!1411633 (= (dynLambda!25109 lambda!325035 (h!70614 (unfocusZipperList!1418 zl!343))) (validRegex!7733 (h!70614 (unfocusZipperList!1418 zl!343))))))

(declare-fun m!6842530 () Bool)

(assert (=> bs!1411633 m!6842530))

(assert (=> b!5954556 d!1867010))

(declare-fun b_lambda!223877 () Bool)

(assert (= b_lambda!223787 (or d!1866328 b_lambda!223877)))

(declare-fun bs!1411634 () Bool)

(declare-fun d!1867012 () Bool)

(assert (= bs!1411634 (and d!1867012 d!1866328)))

(assert (=> bs!1411634 (= (dynLambda!25109 lambda!325068 (h!70614 (exprs!5881 (h!70616 zl!343)))) (validRegex!7733 (h!70614 (exprs!5881 (h!70616 zl!343)))))))

(assert (=> bs!1411634 m!6842522))

(assert (=> b!5954147 d!1867012))

(declare-fun b_lambda!223879 () Bool)

(assert (= b_lambda!223821 (or b!5953147 b_lambda!223879)))

(assert (=> d!1866806 d!1866466))

(check-sat (not b!5954137) (not b!5954093) (not b!5954832) (not b!5954824) (not b!5954247) (not b!5954562) (not b!5955099) (not bm!474480) (not b_lambda!223879) (not b_lambda!223865) (not b!5954520) (not b!5955090) (not b!5954772) (not b!5955023) (not bm!474460) (not b!5954511) (not b_lambda!223857) (not b_lambda!223845) (not b!5954860) (not d!1866928) (not d!1866476) (not b!5954153) (not d!1866760) (not b!5955065) (not d!1866676) (not b_lambda!223849) (not bm!474462) (not b!5955045) (not bm!474543) (not d!1866808) (not d!1866914) (not b!5954616) (not b!5954196) (not bs!1411626) (not b!5954617) (not b!5954882) (not b!5954453) (not bm!474553) (not b!5954191) (not d!1866576) (not b_lambda!223855) (not b!5954560) (not b!5954351) (not b!5955019) (not b!5954413) (not b!5955049) (not b!5955117) (not b!5954769) (not bm!474459) (not b!5955070) (not b!5955009) (not b!5955013) (not d!1866652) (not b!5954109) (not b!5954358) (not bm!474492) (not b!5954019) (not b!5955114) (not d!1866526) (not bm!474434) (not b!5954714) (not bm!474463) (not d!1866744) (not bm!474424) (not d!1866874) (not b!5955098) (not b!5955038) (not b!5954032) (not b!5954377) (not b!5955005) (not b!5954246) (not b!5955102) (not d!1866792) (not b!5954521) (not b!5955059) (not b!5954889) (not b!5954902) (not b!5955083) (not d!1866758) (not bm!474493) (not bm!474390) (not b!5955040) (not d!1866866) (not d!1866930) (not b_lambda!223847) (not b!5954128) (not b!5954023) (not b!5954696) (not bm!474443) (not b!5955085) (not d!1866946) (not b!5955112) (not b!5955077) (not bm!474466) (not b!5954354) (not b!5954410) (not b!5955048) (not bs!1411631) (not b!5954534) (not bm!474380) (not b!5955044) (not b!5954540) (not b!5954360) (not b!5955032) (not bm!474430) (not d!1866942) (not b!5954378) (not d!1866816) (not b!5955078) (not d!1866528) (not bs!1411610) (not d!1866540) (not b!5954148) (not bm!474465) (not b!5954253) (not b!5955057) (not b!5954215) (not b!5954865) (not b!5955100) (not bm!474355) (not bm!474388) (not b!5954379) (not b!5955042) (not b!5955087) (not b!5955103) (not b!5955003) (not b!5954189) (not d!1866840) (not d!1866596) (not d!1866684) (not bm!474387) (not d!1866834) (not b!5954881) (not b!5954091) (not bm!474467) (not bm!474382) (not b!5955106) (not b_lambda!223875) (not b!5955089) (not b!5954907) (not bm!474490) (not bm!474469) (not b_lambda!223843) (not b!5954352) (not b!5954331) (not b!5954535) (not bs!1411611) (not b!5954489) (not b!5954826) (not d!1866704) (not bs!1411633) (not bs!1411623) (not b!5954674) (not bm!474373) (not bm!474557) (not bm!474497) (not bs!1411616) (not bm!474560) (not d!1866696) (not bs!1411619) (not b_lambda!223867) (not b!5955113) (not b!5955001) (not bm!474444) (not d!1866514) (not b!5955081) (not b!5954491) (not b!5954356) (not bm!474510) (not b!5955047) (not b!5954487) (not b!5954615) (not b!5955036) (not setNonEmpty!40482) (not b!5954333) (not b!5954859) (not b!5955002) (not d!1866554) (not b!5955110) (not bm!474353) (not b!5954557) (not b!5954414) (not b!5955107) (not b_lambda!223775) (not b!5955104) (not bm!474378) (not d!1866504) (not b!5954385) (not bm!474472) (not b!5955052) (not b!5954131) (not b!5955030) (not b!5954364) (not b!5954814) (not b!5954036) (not b_lambda!223873) (not b!5955021) (not b!5955063) (not bm!474377) (not d!1866910) (not d!1866768) (not d!1866844) (not bm!474445) (not b!5954250) (not b!5955058) (not bm!474386) (not b!5955092) (not b!5954033) (not b!5954867) (not d!1866948) (not b!5954206) (not b!5954905) (not bm!474495) (not b!5954159) (not b!5955075) (not b!5954639) (not b!5954252) (not b!5954244) (not b!5954559) (not b!5955108) (not b!5954776) (not b!5954485) (not d!1866562) (not b!5955010) (not b!5954475) (not d!1866750) (not b_lambda!223869) (not b!5955054) (not b!5954108) (not bm!474372) (not d!1866772) (not d!1866924) (not bm!474457) (not b!5954467) (not b_lambda!223851) (not b!5955062) (not b!5955014) (not b!5954651) (not b!5954367) (not bm!474392) (not bm!474400) (not d!1866806) (not bm!474384) (not bm!474559) (not bm!474431) (not bm!474585) (not b!5955091) (not b!5954192) (not bm!474539) (not bm!474468) (not b!5954394) (not b!5954089) (not b!5954619) (not d!1866666) (not b_lambda!223853) (not b!5954217) (not b!5954488) (not b!5954903) (not bm!474499) (not setNonEmpty!40481) (not d!1866698) (not b!5955018) (not d!1866474) (not b!5954527) (not d!1866654) (not d!1866634) (not bm!474396) (not b!5954513) (not bm!474440) (not b!5954112) (not b!5955022) (not d!1866954) (not b!5955006) (not b!5955043) (not d!1866480) (not d!1866694) (not d!1866470) (not d!1866764) (not d!1866492) (not b!5955007) (not d!1866748) (not b!5955066) (not bm!474422) (not b!5954469) (not bm!474555) (not setNonEmpty!40476) (not bs!1411621) (not b!5954660) (not bm!474436) (not bm!474398) (not b!5955116) (not d!1866550) (not b!5954507) (not d!1866556) (not d!1866618) (not b!5954158) (not b!5955051) (not b!5955011) (not b!5954878) (not bm!474421) (not d!1866956) (not b!5955069) (not setNonEmpty!40483) (not b!5955109) (not b!5954612) (not b!5955061) (not d!1866722) (not b!5954774) (not bm!474448) (not b!5954518) (not b!5955027) (not b!5954163) (not b!5955053) (not b!5955074) (not b!5955067) (not bm!474552) (not b!5955086) (not b!5954661) (not b!5954355) (not b!5954909) (not bs!1411634) (not bs!1411618) (not bs!1411614) (not b!5954115) (not b!5955025) (not bm!474488) (not b!5954227) (not b!5954506) (not b!5954613) (not b_lambda!223871) (not d!1866516) (not b!5954416) (not d!1866876) (not b!5954653) (not bm!474391) (not bm!474402) (not bm!474583) (not bm!474508) (not b!5954515) (not b!5955071) (not b!5955028) (not bm!474544) (not b!5955017) (not bm!474473) (not b!5954100) (not b!5954363) (not bs!1411613) (not bs!1411624) (not b!5955079) (not d!1866680) (not b!5955035) (not b_lambda!223877) (not b!5955031) (not b!5954510) (not b!5955119) (not b!5954134) (not b!5954132) (not b!5955026) (not bm!474541) (not bm!474404) (not b!5955073) (not b!5954130) (not d!1866780) (not bm!474438) (not b!5955039) (not bs!1411630) (not b!5954127) tp_is_empty!41247 (not bm!474425) (not bm!474449) (not bm!474357) (not d!1866842) (not b!5954162) (not b_lambda!223861) (not b!5954861) (not b!5955056) (not b!5954409) (not b!5954368) (not b!5954549) (not d!1866594) (not b!5955015) (not bs!1411628) (not d!1866584) (not b!5954204) (not d!1866878) (not b!5954879) (not b!5954151) (not d!1866752) (not b!5954597) (not b_lambda!223859) (not b!5954178) (not bm!474456) (not bm!474512) (not b!5954906) (not bm!474374) (not d!1866628) (not b!5954770) (not d!1866566) (not b!5955082) (not b!5954983) (not b_lambda!223771) (not b!5954484) (not b!5954140) (not b!5955118) (not b!5954831) (not d!1866626) (not b!5955034) (not d!1866600) (not b_lambda!223863) (not bm!474394) (not b!5954369) (not d!1866472) (not b!5954361) (not b!5954300) (not b_lambda!223773) (not d!1866894) (not b!5954172) (not b!5954265) (not b!5954514) (not b!5954248))
(check-sat)
