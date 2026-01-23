; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572162 () Bool)

(assert start!572162)

(declare-fun b!5465140 () Bool)

(assert (=> b!5465140 true))

(assert (=> b!5465140 true))

(declare-fun lambda!290310 () Int)

(declare-fun lambda!290309 () Int)

(assert (=> b!5465140 (not (= lambda!290310 lambda!290309))))

(assert (=> b!5465140 true))

(assert (=> b!5465140 true))

(declare-fun lambda!290311 () Int)

(assert (=> b!5465140 (not (= lambda!290311 lambda!290309))))

(assert (=> b!5465140 (not (= lambda!290311 lambda!290310))))

(assert (=> b!5465140 true))

(assert (=> b!5465140 true))

(declare-fun b!5465122 () Bool)

(declare-fun e!3383723 () Bool)

(declare-fun lt!2233162 () Bool)

(assert (=> b!5465122 (= e!3383723 lt!2233162)))

(declare-fun b!5465123 () Bool)

(declare-fun e!3383728 () Bool)

(declare-fun tp!1503184 () Bool)

(declare-fun tp!1503181 () Bool)

(assert (=> b!5465123 (= e!3383728 (and tp!1503184 tp!1503181))))

(declare-fun b!5465124 () Bool)

(declare-fun tp!1503179 () Bool)

(declare-fun tp!1503176 () Bool)

(assert (=> b!5465124 (= e!3383728 (and tp!1503179 tp!1503176))))

(declare-fun b!5465125 () Bool)

(declare-fun res!2328315 () Bool)

(declare-fun e!3383730 () Bool)

(assert (=> b!5465125 (=> res!2328315 e!3383730)))

(declare-datatypes ((C!30892 0))(
  ( (C!30893 (val!25148 Int)) )
))
(declare-datatypes ((Regex!15311 0))(
  ( (ElementMatch!15311 (c!954851 C!30892)) (Concat!24156 (regOne!31134 Regex!15311) (regTwo!31134 Regex!15311)) (EmptyExpr!15311) (Star!15311 (reg!15640 Regex!15311)) (EmptyLang!15311) (Union!15311 (regOne!31135 Regex!15311) (regTwo!31135 Regex!15311)) )
))
(declare-fun r!7292 () Regex!15311)

(declare-datatypes ((List!62232 0))(
  ( (Nil!62108) (Cons!62108 (h!68556 Regex!15311) (t!375461 List!62232)) )
))
(declare-datatypes ((Context!9390 0))(
  ( (Context!9391 (exprs!5195 List!62232)) )
))
(declare-datatypes ((List!62233 0))(
  ( (Nil!62109) (Cons!62109 (h!68557 Context!9390) (t!375462 List!62233)) )
))
(declare-fun zl!343 () List!62233)

(declare-fun generalisedConcat!980 (List!62232) Regex!15311)

(assert (=> b!5465125 (= res!2328315 (not (= r!7292 (generalisedConcat!980 (exprs!5195 (h!68557 zl!343))))))))

(declare-fun b!5465126 () Bool)

(declare-fun res!2328322 () Bool)

(assert (=> b!5465126 (=> res!2328322 e!3383730)))

(declare-fun isEmpty!34078 (List!62233) Bool)

(assert (=> b!5465126 (= res!2328322 (not (isEmpty!34078 (t!375462 zl!343))))))

(declare-fun b!5465127 () Bool)

(declare-fun res!2328319 () Bool)

(declare-fun e!3383732 () Bool)

(assert (=> b!5465127 (=> (not res!2328319) (not e!3383732))))

(declare-fun unfocusZipper!1053 (List!62233) Regex!15311)

(assert (=> b!5465127 (= res!2328319 (= r!7292 (unfocusZipper!1053 zl!343)))))

(declare-fun setIsEmpty!35809 () Bool)

(declare-fun setRes!35809 () Bool)

(assert (=> setIsEmpty!35809 setRes!35809))

(declare-fun b!5465128 () Bool)

(declare-fun tp_is_empty!39875 () Bool)

(assert (=> b!5465128 (= e!3383728 tp_is_empty!39875)))

(declare-fun b!5465129 () Bool)

(declare-fun res!2328316 () Bool)

(assert (=> b!5465129 (=> res!2328316 e!3383730)))

(get-info :version)

(assert (=> b!5465129 (= res!2328316 (not ((_ is Cons!62108) (exprs!5195 (h!68557 zl!343)))))))

(declare-fun e!3383726 () Bool)

(declare-fun tp!1503182 () Bool)

(declare-fun b!5465130 () Bool)

(declare-fun e!3383727 () Bool)

(declare-fun inv!81524 (Context!9390) Bool)

(assert (=> b!5465130 (= e!3383726 (and (inv!81524 (h!68557 zl!343)) e!3383727 tp!1503182))))

(declare-fun b!5465131 () Bool)

(declare-fun tp!1503177 () Bool)

(assert (=> b!5465131 (= e!3383727 tp!1503177)))

(declare-fun b!5465132 () Bool)

(declare-fun e!3383724 () Bool)

(declare-fun tp!1503183 () Bool)

(assert (=> b!5465132 (= e!3383724 (and tp_is_empty!39875 tp!1503183))))

(declare-fun b!5465133 () Bool)

(declare-fun res!2328311 () Bool)

(declare-fun e!3383729 () Bool)

(assert (=> b!5465133 (=> res!2328311 e!3383729)))

(declare-datatypes ((List!62234 0))(
  ( (Nil!62110) (Cons!62110 (h!68558 C!30892) (t!375463 List!62234)) )
))
(declare-fun s!2326 () List!62234)

(assert (=> b!5465133 (= res!2328311 (not ((_ is Nil!62110) s!2326)))))

(declare-fun b!5465134 () Bool)

(assert (=> b!5465134 (= e!3383732 (not e!3383730))))

(declare-fun res!2328314 () Bool)

(assert (=> b!5465134 (=> res!2328314 e!3383730)))

(assert (=> b!5465134 (= res!2328314 (not ((_ is Cons!62109) zl!343)))))

(declare-fun lt!2233163 () Bool)

(declare-fun matchRSpec!2414 (Regex!15311 List!62234) Bool)

(assert (=> b!5465134 (= lt!2233163 (matchRSpec!2414 r!7292 s!2326))))

(declare-fun matchR!7496 (Regex!15311 List!62234) Bool)

(assert (=> b!5465134 (= lt!2233163 (matchR!7496 r!7292 s!2326))))

(declare-datatypes ((Unit!155072 0))(
  ( (Unit!155073) )
))
(declare-fun lt!2233161 () Unit!155072)

(declare-fun mainMatchTheorem!2414 (Regex!15311 List!62234) Unit!155072)

(assert (=> b!5465134 (= lt!2233161 (mainMatchTheorem!2414 r!7292 s!2326))))

(declare-fun b!5465135 () Bool)

(declare-fun e!3383731 () Bool)

(assert (=> b!5465135 (= e!3383729 e!3383731)))

(declare-fun res!2328312 () Bool)

(assert (=> b!5465135 (=> res!2328312 e!3383731)))

(declare-fun lt!2233165 () Bool)

(declare-fun lt!2233160 () Bool)

(assert (=> b!5465135 (= res!2328312 (not (= lt!2233165 lt!2233160)))))

(assert (=> b!5465135 (= lt!2233160 lt!2233165)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9390))

(declare-fun nullableZipper!1492 ((InoxSet Context!9390)) Bool)

(assert (=> b!5465135 (= lt!2233165 (nullableZipper!1492 z!1189))))

(declare-fun nullable!5468 (Regex!15311) Bool)

(assert (=> b!5465135 (= lt!2233160 (nullable!5468 r!7292))))

(declare-fun lt!2233168 () Unit!155072)

(declare-fun lemmaUnfocusPreservesNullability!12 (Regex!15311 (InoxSet Context!9390)) Unit!155072)

(assert (=> b!5465135 (= lt!2233168 (lemmaUnfocusPreservesNullability!12 r!7292 z!1189))))

(declare-fun b!5465136 () Bool)

(declare-fun res!2328321 () Bool)

(assert (=> b!5465136 (=> (not res!2328321) (not e!3383732))))

(declare-fun toList!9095 ((InoxSet Context!9390)) List!62233)

(assert (=> b!5465136 (= res!2328321 (= (toList!9095 z!1189) zl!343))))

(declare-fun b!5465137 () Bool)

(assert (=> b!5465137 (= e!3383731 true)))

(declare-fun lt!2233169 () Bool)

(declare-fun matchZipper!1537 ((InoxSet Context!9390) List!62234) Bool)

(assert (=> b!5465137 (= lt!2233169 (matchZipper!1537 z!1189 s!2326))))

(declare-fun b!5465138 () Bool)

(declare-fun e!3383725 () Bool)

(declare-fun tp!1503185 () Bool)

(assert (=> b!5465138 (= e!3383725 tp!1503185)))

(declare-fun b!5465139 () Bool)

(declare-fun res!2328320 () Bool)

(assert (=> b!5465139 (=> res!2328320 e!3383730)))

(declare-fun generalisedUnion!1240 (List!62232) Regex!15311)

(declare-fun unfocusZipperList!753 (List!62233) List!62232)

(assert (=> b!5465139 (= res!2328320 (not (= r!7292 (generalisedUnion!1240 (unfocusZipperList!753 zl!343)))))))

(assert (=> b!5465140 (= e!3383730 e!3383729)))

(declare-fun res!2328313 () Bool)

(assert (=> b!5465140 (=> res!2328313 e!3383729)))

(assert (=> b!5465140 (= res!2328313 (not (= lt!2233163 e!3383723)))))

(declare-fun res!2328310 () Bool)

(assert (=> b!5465140 (=> res!2328310 e!3383723)))

(declare-fun isEmpty!34079 (List!62234) Bool)

(assert (=> b!5465140 (= res!2328310 (isEmpty!34079 s!2326))))

(declare-fun Exists!2490 (Int) Bool)

(assert (=> b!5465140 (= (Exists!2490 lambda!290309) (Exists!2490 lambda!290311))))

(declare-fun lt!2233166 () Unit!155072)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1140 (Regex!15311 Regex!15311 List!62234) Unit!155072)

(assert (=> b!5465140 (= lt!2233166 (lemmaExistCutMatchRandMatchRSpecEquivalent!1140 (reg!15640 r!7292) r!7292 s!2326))))

(assert (=> b!5465140 (= (Exists!2490 lambda!290309) (Exists!2490 lambda!290310))))

(declare-fun lt!2233164 () Unit!155072)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!464 (Regex!15311 List!62234) Unit!155072)

(assert (=> b!5465140 (= lt!2233164 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!464 (reg!15640 r!7292) s!2326))))

(assert (=> b!5465140 (= lt!2233162 (Exists!2490 lambda!290309))))

(declare-datatypes ((tuple2!65016 0))(
  ( (tuple2!65017 (_1!35811 List!62234) (_2!35811 List!62234)) )
))
(declare-datatypes ((Option!15420 0))(
  ( (None!15419) (Some!15419 (v!51448 tuple2!65016)) )
))
(declare-fun isDefined!12123 (Option!15420) Bool)

(declare-fun findConcatSeparation!1834 (Regex!15311 Regex!15311 List!62234 List!62234 List!62234) Option!15420)

(assert (=> b!5465140 (= lt!2233162 (isDefined!12123 (findConcatSeparation!1834 (reg!15640 r!7292) r!7292 Nil!62110 s!2326 s!2326)))))

(declare-fun lt!2233167 () Unit!155072)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1598 (Regex!15311 Regex!15311 List!62234) Unit!155072)

(assert (=> b!5465140 (= lt!2233167 (lemmaFindConcatSeparationEquivalentToExists!1598 (reg!15640 r!7292) r!7292 s!2326))))

(declare-fun res!2328317 () Bool)

(assert (=> start!572162 (=> (not res!2328317) (not e!3383732))))

(declare-fun validRegex!7047 (Regex!15311) Bool)

(assert (=> start!572162 (= res!2328317 (validRegex!7047 r!7292))))

(assert (=> start!572162 e!3383732))

(assert (=> start!572162 e!3383728))

(declare-fun condSetEmpty!35809 () Bool)

(assert (=> start!572162 (= condSetEmpty!35809 (= z!1189 ((as const (Array Context!9390 Bool)) false)))))

(assert (=> start!572162 setRes!35809))

(assert (=> start!572162 e!3383726))

(assert (=> start!572162 e!3383724))

(declare-fun b!5465141 () Bool)

(declare-fun tp!1503178 () Bool)

(assert (=> b!5465141 (= e!3383728 tp!1503178)))

(declare-fun b!5465142 () Bool)

(declare-fun res!2328318 () Bool)

(assert (=> b!5465142 (=> res!2328318 e!3383730)))

(assert (=> b!5465142 (= res!2328318 (or ((_ is EmptyExpr!15311) r!7292) ((_ is EmptyLang!15311) r!7292) ((_ is ElementMatch!15311) r!7292) ((_ is Union!15311) r!7292) ((_ is Concat!24156) r!7292)))))

(declare-fun setNonEmpty!35809 () Bool)

(declare-fun tp!1503180 () Bool)

(declare-fun setElem!35809 () Context!9390)

(assert (=> setNonEmpty!35809 (= setRes!35809 (and tp!1503180 (inv!81524 setElem!35809) e!3383725))))

(declare-fun setRest!35809 () (InoxSet Context!9390))

(assert (=> setNonEmpty!35809 (= z!1189 ((_ map or) (store ((as const (Array Context!9390 Bool)) false) setElem!35809 true) setRest!35809))))

(assert (= (and start!572162 res!2328317) b!5465136))

(assert (= (and b!5465136 res!2328321) b!5465127))

(assert (= (and b!5465127 res!2328319) b!5465134))

(assert (= (and b!5465134 (not res!2328314)) b!5465126))

(assert (= (and b!5465126 (not res!2328322)) b!5465125))

(assert (= (and b!5465125 (not res!2328315)) b!5465129))

(assert (= (and b!5465129 (not res!2328316)) b!5465139))

(assert (= (and b!5465139 (not res!2328320)) b!5465142))

(assert (= (and b!5465142 (not res!2328318)) b!5465140))

(assert (= (and b!5465140 (not res!2328310)) b!5465122))

(assert (= (and b!5465140 (not res!2328313)) b!5465133))

(assert (= (and b!5465133 (not res!2328311)) b!5465135))

(assert (= (and b!5465135 (not res!2328312)) b!5465137))

(assert (= (and start!572162 ((_ is ElementMatch!15311) r!7292)) b!5465128))

(assert (= (and start!572162 ((_ is Concat!24156) r!7292)) b!5465123))

(assert (= (and start!572162 ((_ is Star!15311) r!7292)) b!5465141))

(assert (= (and start!572162 ((_ is Union!15311) r!7292)) b!5465124))

(assert (= (and start!572162 condSetEmpty!35809) setIsEmpty!35809))

(assert (= (and start!572162 (not condSetEmpty!35809)) setNonEmpty!35809))

(assert (= setNonEmpty!35809 b!5465138))

(assert (= b!5465130 b!5465131))

(assert (= (and start!572162 ((_ is Cons!62109) zl!343)) b!5465130))

(assert (= (and start!572162 ((_ is Cons!62110) s!2326)) b!5465132))

(declare-fun m!6485114 () Bool)

(assert (=> b!5465126 m!6485114))

(declare-fun m!6485116 () Bool)

(assert (=> b!5465137 m!6485116))

(declare-fun m!6485118 () Bool)

(assert (=> b!5465127 m!6485118))

(declare-fun m!6485120 () Bool)

(assert (=> b!5465130 m!6485120))

(declare-fun m!6485122 () Bool)

(assert (=> b!5465134 m!6485122))

(declare-fun m!6485124 () Bool)

(assert (=> b!5465134 m!6485124))

(declare-fun m!6485126 () Bool)

(assert (=> b!5465134 m!6485126))

(declare-fun m!6485128 () Bool)

(assert (=> b!5465135 m!6485128))

(declare-fun m!6485130 () Bool)

(assert (=> b!5465135 m!6485130))

(declare-fun m!6485132 () Bool)

(assert (=> b!5465135 m!6485132))

(declare-fun m!6485134 () Bool)

(assert (=> b!5465140 m!6485134))

(declare-fun m!6485136 () Bool)

(assert (=> b!5465140 m!6485136))

(declare-fun m!6485138 () Bool)

(assert (=> b!5465140 m!6485138))

(declare-fun m!6485140 () Bool)

(assert (=> b!5465140 m!6485140))

(assert (=> b!5465140 m!6485140))

(declare-fun m!6485142 () Bool)

(assert (=> b!5465140 m!6485142))

(declare-fun m!6485144 () Bool)

(assert (=> b!5465140 m!6485144))

(declare-fun m!6485146 () Bool)

(assert (=> b!5465140 m!6485146))

(assert (=> b!5465140 m!6485140))

(assert (=> b!5465140 m!6485146))

(declare-fun m!6485148 () Bool)

(assert (=> b!5465140 m!6485148))

(declare-fun m!6485150 () Bool)

(assert (=> b!5465140 m!6485150))

(declare-fun m!6485152 () Bool)

(assert (=> b!5465125 m!6485152))

(declare-fun m!6485154 () Bool)

(assert (=> b!5465139 m!6485154))

(assert (=> b!5465139 m!6485154))

(declare-fun m!6485156 () Bool)

(assert (=> b!5465139 m!6485156))

(declare-fun m!6485158 () Bool)

(assert (=> setNonEmpty!35809 m!6485158))

(declare-fun m!6485160 () Bool)

(assert (=> b!5465136 m!6485160))

(declare-fun m!6485162 () Bool)

(assert (=> start!572162 m!6485162))

(check-sat (not b!5465124) (not b!5465126) (not b!5465137) (not b!5465141) (not b!5465138) (not b!5465134) (not b!5465140) (not b!5465125) (not start!572162) (not b!5465136) tp_is_empty!39875 (not setNonEmpty!35809) (not b!5465139) (not b!5465123) (not b!5465127) (not b!5465131) (not b!5465135) (not b!5465132) (not b!5465130))
(check-sat)
