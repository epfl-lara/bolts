; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!554022 () Bool)

(assert start!554022)

(declare-fun b!5241210 () Bool)

(assert (=> b!5241210 true))

(assert (=> b!5241210 true))

(declare-fun lambda!263624 () Int)

(declare-fun lambda!263623 () Int)

(assert (=> b!5241210 (not (= lambda!263624 lambda!263623))))

(assert (=> b!5241210 true))

(assert (=> b!5241210 true))

(declare-fun b!5241201 () Bool)

(assert (=> b!5241201 true))

(declare-fun b!5241199 () Bool)

(declare-fun res!2224553 () Bool)

(declare-fun e!3261206 () Bool)

(assert (=> b!5241199 (=> res!2224553 e!3261206)))

(declare-datatypes ((C!29956 0))(
  ( (C!29957 (val!24680 Int)) )
))
(declare-datatypes ((Regex!14843 0))(
  ( (ElementMatch!14843 (c!905889 C!29956)) (Concat!23688 (regOne!30198 Regex!14843) (regTwo!30198 Regex!14843)) (EmptyExpr!14843) (Star!14843 (reg!15172 Regex!14843)) (EmptyLang!14843) (Union!14843 (regOne!30199 Regex!14843) (regTwo!30199 Regex!14843)) )
))
(declare-fun r!7292 () Regex!14843)

(declare-datatypes ((List!60828 0))(
  ( (Nil!60704) (Cons!60704 (h!67152 Regex!14843) (t!374009 List!60828)) )
))
(declare-datatypes ((Context!8454 0))(
  ( (Context!8455 (exprs!4727 List!60828)) )
))
(declare-datatypes ((List!60829 0))(
  ( (Nil!60705) (Cons!60705 (h!67153 Context!8454) (t!374010 List!60829)) )
))
(declare-fun zl!343 () List!60829)

(declare-fun generalisedUnion!772 (List!60828) Regex!14843)

(declare-fun unfocusZipperList!285 (List!60829) List!60828)

(assert (=> b!5241199 (= res!2224553 (not (= r!7292 (generalisedUnion!772 (unfocusZipperList!285 zl!343)))))))

(declare-fun b!5241200 () Bool)

(declare-datatypes ((Unit!152758 0))(
  ( (Unit!152759) )
))
(declare-fun e!3261201 () Unit!152758)

(declare-fun Unit!152760 () Unit!152758)

(assert (=> b!5241200 (= e!3261201 Unit!152760)))

(declare-fun e!3261189 () Bool)

(declare-fun e!3261202 () Bool)

(assert (=> b!5241201 (= e!3261189 e!3261202)))

(declare-fun res!2224551 () Bool)

(assert (=> b!5241201 (=> res!2224551 e!3261202)))

(declare-datatypes ((List!60830 0))(
  ( (Nil!60706) (Cons!60706 (h!67154 C!29956) (t!374011 List!60830)) )
))
(declare-fun s!2326 () List!60830)

(get-info :version)

(assert (=> b!5241201 (= res!2224551 (or (and ((_ is ElementMatch!14843) (regOne!30198 r!7292)) (= (c!905889 (regOne!30198 r!7292)) (h!67154 s!2326))) (not ((_ is Union!14843) (regOne!30198 r!7292)))))))

(declare-fun lt!2148704 () Unit!152758)

(assert (=> b!5241201 (= lt!2148704 e!3261201)))

(declare-fun c!905888 () Bool)

(declare-fun nullable!5012 (Regex!14843) Bool)

(assert (=> b!5241201 (= c!905888 (nullable!5012 (h!67152 (exprs!4727 (h!67153 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8454))

(declare-fun lambda!263625 () Int)

(declare-fun flatMap!570 ((InoxSet Context!8454) Int) (InoxSet Context!8454))

(declare-fun derivationStepZipperUp!215 (Context!8454 C!29956) (InoxSet Context!8454))

(assert (=> b!5241201 (= (flatMap!570 z!1189 lambda!263625) (derivationStepZipperUp!215 (h!67153 zl!343) (h!67154 s!2326)))))

(declare-fun lt!2148703 () Unit!152758)

(declare-fun lemmaFlatMapOnSingletonSet!102 ((InoxSet Context!8454) Context!8454 Int) Unit!152758)

(assert (=> b!5241201 (= lt!2148703 (lemmaFlatMapOnSingletonSet!102 z!1189 (h!67153 zl!343) lambda!263625))))

(declare-fun lt!2148691 () (InoxSet Context!8454))

(declare-fun lt!2148720 () Context!8454)

(assert (=> b!5241201 (= lt!2148691 (derivationStepZipperUp!215 lt!2148720 (h!67154 s!2326)))))

(declare-fun lt!2148721 () (InoxSet Context!8454))

(declare-fun derivationStepZipperDown!291 (Regex!14843 Context!8454 C!29956) (InoxSet Context!8454))

(assert (=> b!5241201 (= lt!2148721 (derivationStepZipperDown!291 (h!67152 (exprs!4727 (h!67153 zl!343))) lt!2148720 (h!67154 s!2326)))))

(assert (=> b!5241201 (= lt!2148720 (Context!8455 (t!374009 (exprs!4727 (h!67153 zl!343)))))))

(declare-fun lt!2148689 () (InoxSet Context!8454))

(assert (=> b!5241201 (= lt!2148689 (derivationStepZipperUp!215 (Context!8455 (Cons!60704 (h!67152 (exprs!4727 (h!67153 zl!343))) (t!374009 (exprs!4727 (h!67153 zl!343))))) (h!67154 s!2326)))))

(declare-fun b!5241202 () Bool)

(declare-fun e!3261198 () Bool)

(declare-fun e!3261184 () Bool)

(assert (=> b!5241202 (= e!3261198 e!3261184)))

(declare-fun res!2224552 () Bool)

(assert (=> b!5241202 (=> (not res!2224552) (not e!3261184))))

(declare-fun lt!2148724 () Regex!14843)

(assert (=> b!5241202 (= res!2224552 (= r!7292 lt!2148724))))

(declare-fun unfocusZipper!585 (List!60829) Regex!14843)

(assert (=> b!5241202 (= lt!2148724 (unfocusZipper!585 zl!343))))

(declare-fun b!5241203 () Bool)

(declare-fun res!2224555 () Bool)

(assert (=> b!5241203 (=> (not res!2224555) (not e!3261198))))

(declare-fun toList!8627 ((InoxSet Context!8454)) List!60829)

(assert (=> b!5241203 (= res!2224555 (= (toList!8627 z!1189) zl!343))))

(declare-fun b!5241204 () Bool)

(declare-fun e!3261205 () Bool)

(declare-fun lt!2148716 () Regex!14843)

(declare-fun validRegex!6579 (Regex!14843) Bool)

(assert (=> b!5241204 (= e!3261205 (validRegex!6579 lt!2148716))))

(declare-fun b!5241205 () Bool)

(declare-fun e!3261186 () Bool)

(declare-fun matchZipper!1087 ((InoxSet Context!8454) List!60830) Bool)

(assert (=> b!5241205 (= e!3261186 (matchZipper!1087 lt!2148691 (t!374011 s!2326)))))

(declare-fun b!5241206 () Bool)

(declare-fun e!3261183 () Bool)

(declare-fun lt!2148692 () (InoxSet Context!8454))

(assert (=> b!5241206 (= e!3261183 (matchZipper!1087 lt!2148692 s!2326))))

(declare-fun b!5241207 () Bool)

(declare-fun e!3261192 () Unit!152758)

(declare-fun Unit!152761 () Unit!152758)

(assert (=> b!5241207 (= e!3261192 Unit!152761)))

(declare-fun b!5241208 () Bool)

(declare-fun e!3261182 () Bool)

(declare-fun e!3261204 () Bool)

(assert (=> b!5241208 (= e!3261182 e!3261204)))

(declare-fun res!2224554 () Bool)

(assert (=> b!5241208 (=> res!2224554 e!3261204)))

(declare-fun lt!2148696 () Bool)

(assert (=> b!5241208 (= res!2224554 (not (= lt!2148696 e!3261183)))))

(declare-fun res!2224545 () Bool)

(assert (=> b!5241208 (=> res!2224545 e!3261183)))

(declare-fun lt!2148694 () Bool)

(assert (=> b!5241208 (= res!2224545 lt!2148694)))

(assert (=> b!5241208 (= lt!2148696 (matchZipper!1087 z!1189 s!2326))))

(declare-fun lt!2148706 () (InoxSet Context!8454))

(assert (=> b!5241208 (= lt!2148694 (matchZipper!1087 lt!2148706 s!2326))))

(declare-fun lt!2148700 () Unit!152758)

(declare-fun e!3261188 () Unit!152758)

(assert (=> b!5241208 (= lt!2148700 e!3261188)))

(declare-fun c!905886 () Bool)

(assert (=> b!5241208 (= c!905886 (nullable!5012 (regTwo!30199 (regOne!30198 r!7292))))))

(declare-fun lt!2148713 () Context!8454)

(assert (=> b!5241208 (= (flatMap!570 lt!2148692 lambda!263625) (derivationStepZipperUp!215 lt!2148713 (h!67154 s!2326)))))

(declare-fun lt!2148709 () Unit!152758)

(assert (=> b!5241208 (= lt!2148709 (lemmaFlatMapOnSingletonSet!102 lt!2148692 lt!2148713 lambda!263625))))

(declare-fun lt!2148710 () (InoxSet Context!8454))

(assert (=> b!5241208 (= lt!2148710 (derivationStepZipperUp!215 lt!2148713 (h!67154 s!2326)))))

(declare-fun lt!2148722 () Unit!152758)

(assert (=> b!5241208 (= lt!2148722 e!3261192)))

(declare-fun c!905887 () Bool)

(assert (=> b!5241208 (= c!905887 (nullable!5012 (regOne!30199 (regOne!30198 r!7292))))))

(declare-fun lt!2148725 () Context!8454)

(assert (=> b!5241208 (= (flatMap!570 lt!2148706 lambda!263625) (derivationStepZipperUp!215 lt!2148725 (h!67154 s!2326)))))

(declare-fun lt!2148707 () Unit!152758)

(assert (=> b!5241208 (= lt!2148707 (lemmaFlatMapOnSingletonSet!102 lt!2148706 lt!2148725 lambda!263625))))

(declare-fun lt!2148717 () (InoxSet Context!8454))

(assert (=> b!5241208 (= lt!2148717 (derivationStepZipperUp!215 lt!2148725 (h!67154 s!2326)))))

(assert (=> b!5241208 (= lt!2148692 (store ((as const (Array Context!8454 Bool)) false) lt!2148713 true))))

(declare-fun lt!2148719 () List!60828)

(assert (=> b!5241208 (= lt!2148713 (Context!8455 lt!2148719))))

(assert (=> b!5241208 (= lt!2148719 (Cons!60704 (regTwo!30199 (regOne!30198 r!7292)) (t!374009 (exprs!4727 (h!67153 zl!343)))))))

(assert (=> b!5241208 (= lt!2148706 (store ((as const (Array Context!8454 Bool)) false) lt!2148725 true))))

(declare-fun lt!2148729 () List!60828)

(assert (=> b!5241208 (= lt!2148725 (Context!8455 lt!2148729))))

(assert (=> b!5241208 (= lt!2148729 (Cons!60704 (regOne!30199 (regOne!30198 r!7292)) (t!374009 (exprs!4727 (h!67153 zl!343)))))))

(declare-fun b!5241209 () Bool)

(declare-fun e!3261200 () Bool)

(declare-fun e!3261195 () Bool)

(assert (=> b!5241209 (= e!3261200 e!3261195)))

(declare-fun res!2224559 () Bool)

(assert (=> b!5241209 (=> res!2224559 e!3261195)))

(declare-fun lt!2148688 () List!60829)

(declare-fun lt!2148693 () Int)

(declare-fun zipperDepthTotal!24 (List!60829) Int)

(assert (=> b!5241209 (= res!2224559 (>= (zipperDepthTotal!24 lt!2148688) lt!2148693))))

(assert (=> b!5241209 (= lt!2148688 (Cons!60705 lt!2148713 Nil!60705))))

(assert (=> b!5241210 (= e!3261206 e!3261189)))

(declare-fun res!2224562 () Bool)

(assert (=> b!5241210 (=> res!2224562 e!3261189)))

(declare-fun lt!2148701 () Bool)

(declare-fun lt!2148728 () Bool)

(assert (=> b!5241210 (= res!2224562 (or (not (= lt!2148701 lt!2148728)) ((_ is Nil!60706) s!2326)))))

(declare-fun Exists!2024 (Int) Bool)

(assert (=> b!5241210 (= (Exists!2024 lambda!263623) (Exists!2024 lambda!263624))))

(declare-fun lt!2148698 () Unit!152758)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!678 (Regex!14843 Regex!14843 List!60830) Unit!152758)

(assert (=> b!5241210 (= lt!2148698 (lemmaExistCutMatchRandMatchRSpecEquivalent!678 (regOne!30198 r!7292) (regTwo!30198 r!7292) s!2326))))

(assert (=> b!5241210 (= lt!2148728 (Exists!2024 lambda!263623))))

(declare-datatypes ((tuple2!64084 0))(
  ( (tuple2!64085 (_1!35345 List!60830) (_2!35345 List!60830)) )
))
(declare-datatypes ((Option!14954 0))(
  ( (None!14953) (Some!14953 (v!50982 tuple2!64084)) )
))
(declare-fun isDefined!11657 (Option!14954) Bool)

(declare-fun findConcatSeparation!1368 (Regex!14843 Regex!14843 List!60830 List!60830 List!60830) Option!14954)

(assert (=> b!5241210 (= lt!2148728 (isDefined!11657 (findConcatSeparation!1368 (regOne!30198 r!7292) (regTwo!30198 r!7292) Nil!60706 s!2326 s!2326)))))

(declare-fun lt!2148695 () Unit!152758)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1132 (Regex!14843 Regex!14843 List!60830) Unit!152758)

(assert (=> b!5241210 (= lt!2148695 (lemmaFindConcatSeparationEquivalentToExists!1132 (regOne!30198 r!7292) (regTwo!30198 r!7292) s!2326))))

(declare-fun setIsEmpty!33431 () Bool)

(declare-fun setRes!33431 () Bool)

(assert (=> setIsEmpty!33431 setRes!33431))

(declare-fun res!2224558 () Bool)

(assert (=> start!554022 (=> (not res!2224558) (not e!3261198))))

(assert (=> start!554022 (= res!2224558 (validRegex!6579 r!7292))))

(assert (=> start!554022 e!3261198))

(declare-fun e!3261194 () Bool)

(assert (=> start!554022 e!3261194))

(declare-fun condSetEmpty!33431 () Bool)

(assert (=> start!554022 (= condSetEmpty!33431 (= z!1189 ((as const (Array Context!8454 Bool)) false)))))

(assert (=> start!554022 setRes!33431))

(declare-fun e!3261203 () Bool)

(assert (=> start!554022 e!3261203))

(declare-fun e!3261199 () Bool)

(assert (=> start!554022 e!3261199))

(declare-fun b!5241211 () Bool)

(declare-fun res!2224540 () Bool)

(assert (=> b!5241211 (=> res!2224540 e!3261204)))

(assert (=> b!5241211 (= res!2224540 (or (not (= lt!2148724 r!7292)) (not (= (exprs!4727 (h!67153 zl!343)) (Cons!60704 (regOne!30198 r!7292) (t!374009 (exprs!4727 (h!67153 zl!343))))))))))

(declare-fun b!5241212 () Bool)

(declare-fun res!2224549 () Bool)

(assert (=> b!5241212 (=> res!2224549 e!3261206)))

(declare-fun isEmpty!32635 (List!60829) Bool)

(assert (=> b!5241212 (= res!2224549 (not (isEmpty!32635 (t!374010 zl!343))))))

(declare-fun b!5241213 () Bool)

(declare-fun Unit!152762 () Unit!152758)

(assert (=> b!5241213 (= e!3261192 Unit!152762)))

(declare-fun lt!2148718 () (InoxSet Context!8454))

(declare-fun lt!2148727 () Unit!152758)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!80 ((InoxSet Context!8454) (InoxSet Context!8454) List!60830) Unit!152758)

(assert (=> b!5241213 (= lt!2148727 (lemmaZipperConcatMatchesSameAsBothZippers!80 lt!2148718 lt!2148691 (t!374011 s!2326)))))

(declare-fun res!2224548 () Bool)

(declare-fun lt!2148690 () Bool)

(assert (=> b!5241213 (= res!2224548 lt!2148690)))

(assert (=> b!5241213 (=> res!2224548 e!3261186)))

(assert (=> b!5241213 (= (matchZipper!1087 ((_ map or) lt!2148718 lt!2148691) (t!374011 s!2326)) e!3261186)))

(declare-fun b!5241214 () Bool)

(declare-fun e!3261196 () Bool)

(declare-fun tp!1467607 () Bool)

(assert (=> b!5241214 (= e!3261196 tp!1467607)))

(declare-fun b!5241215 () Bool)

(declare-fun tp_is_empty!38939 () Bool)

(assert (=> b!5241215 (= e!3261194 tp_is_empty!38939)))

(declare-fun b!5241216 () Bool)

(declare-fun e!3261191 () Bool)

(declare-fun lt!2148687 () (InoxSet Context!8454))

(assert (=> b!5241216 (= e!3261191 (not (matchZipper!1087 lt!2148687 (t!374011 s!2326))))))

(declare-fun b!5241217 () Bool)

(declare-fun Unit!152763 () Unit!152758)

(assert (=> b!5241217 (= e!3261201 Unit!152763)))

(declare-fun lt!2148711 () Unit!152758)

(assert (=> b!5241217 (= lt!2148711 (lemmaZipperConcatMatchesSameAsBothZippers!80 lt!2148721 lt!2148691 (t!374011 s!2326)))))

(declare-fun res!2224539 () Bool)

(assert (=> b!5241217 (= res!2224539 (matchZipper!1087 lt!2148721 (t!374011 s!2326)))))

(declare-fun e!3261185 () Bool)

(assert (=> b!5241217 (=> res!2224539 e!3261185)))

(assert (=> b!5241217 (= (matchZipper!1087 ((_ map or) lt!2148721 lt!2148691) (t!374011 s!2326)) e!3261185)))

(declare-fun b!5241218 () Bool)

(declare-fun e!3261193 () Bool)

(assert (=> b!5241218 (= e!3261193 (matchZipper!1087 lt!2148691 (t!374011 s!2326)))))

(declare-fun b!5241219 () Bool)

(declare-fun tp!1467600 () Bool)

(assert (=> b!5241219 (= e!3261199 (and tp_is_empty!38939 tp!1467600))))

(declare-fun b!5241220 () Bool)

(assert (=> b!5241220 (= e!3261204 e!3261200)))

(declare-fun res!2224546 () Bool)

(assert (=> b!5241220 (=> res!2224546 e!3261200)))

(declare-fun lt!2148699 () Int)

(assert (=> b!5241220 (= res!2224546 (>= lt!2148699 lt!2148693))))

(assert (=> b!5241220 (= lt!2148693 (zipperDepthTotal!24 zl!343))))

(declare-fun lt!2148712 () List!60829)

(assert (=> b!5241220 (= lt!2148699 (zipperDepthTotal!24 lt!2148712))))

(assert (=> b!5241220 (= lt!2148712 (Cons!60705 lt!2148725 Nil!60705))))

(declare-fun tp!1467605 () Bool)

(declare-fun b!5241221 () Bool)

(declare-fun inv!80354 (Context!8454) Bool)

(assert (=> b!5241221 (= e!3261203 (and (inv!80354 (h!67153 zl!343)) e!3261196 tp!1467605))))

(declare-fun b!5241222 () Bool)

(assert (=> b!5241222 (= e!3261184 (not e!3261206))))

(declare-fun res!2224560 () Bool)

(assert (=> b!5241222 (=> res!2224560 e!3261206)))

(assert (=> b!5241222 (= res!2224560 (not ((_ is Cons!60705) zl!343)))))

(declare-fun matchRSpec!1946 (Regex!14843 List!60830) Bool)

(assert (=> b!5241222 (= lt!2148701 (matchRSpec!1946 r!7292 s!2326))))

(declare-fun matchR!7028 (Regex!14843 List!60830) Bool)

(assert (=> b!5241222 (= lt!2148701 (matchR!7028 r!7292 s!2326))))

(declare-fun lt!2148715 () Unit!152758)

(declare-fun mainMatchTheorem!1946 (Regex!14843 List!60830) Unit!152758)

(assert (=> b!5241222 (= lt!2148715 (mainMatchTheorem!1946 r!7292 s!2326))))

(declare-fun b!5241223 () Bool)

(assert (=> b!5241223 (= e!3261195 e!3261205)))

(declare-fun res!2224561 () Bool)

(assert (=> b!5241223 (=> res!2224561 e!3261205)))

(declare-fun lt!2148708 () Bool)

(assert (=> b!5241223 (= res!2224561 (= lt!2148696 lt!2148708))))

(declare-fun lt!2148685 () Bool)

(assert (=> b!5241223 (= lt!2148685 (matchRSpec!1946 lt!2148716 s!2326))))

(declare-fun lt!2148705 () Unit!152758)

(assert (=> b!5241223 (= lt!2148705 (mainMatchTheorem!1946 lt!2148716 s!2326))))

(declare-fun lt!2148686 () Regex!14843)

(assert (=> b!5241223 (= lt!2148708 (matchRSpec!1946 lt!2148686 s!2326))))

(declare-fun lt!2148714 () Unit!152758)

(assert (=> b!5241223 (= lt!2148714 (mainMatchTheorem!1946 lt!2148686 s!2326))))

(assert (=> b!5241223 (= lt!2148685 (matchZipper!1087 lt!2148692 s!2326))))

(assert (=> b!5241223 (= lt!2148685 (matchR!7028 lt!2148716 s!2326))))

(declare-fun lt!2148723 () Unit!152758)

(declare-fun theoremZipperRegexEquiv!277 ((InoxSet Context!8454) List!60829 Regex!14843 List!60830) Unit!152758)

(assert (=> b!5241223 (= lt!2148723 (theoremZipperRegexEquiv!277 lt!2148692 lt!2148688 lt!2148716 s!2326))))

(declare-fun generalisedConcat!512 (List!60828) Regex!14843)

(assert (=> b!5241223 (= lt!2148716 (generalisedConcat!512 lt!2148719))))

(assert (=> b!5241223 (= lt!2148708 lt!2148694)))

(assert (=> b!5241223 (= lt!2148708 (matchR!7028 lt!2148686 s!2326))))

(declare-fun lt!2148697 () Unit!152758)

(assert (=> b!5241223 (= lt!2148697 (theoremZipperRegexEquiv!277 lt!2148706 lt!2148712 lt!2148686 s!2326))))

(assert (=> b!5241223 (= lt!2148686 (generalisedConcat!512 lt!2148729))))

(declare-fun setNonEmpty!33431 () Bool)

(declare-fun e!3261197 () Bool)

(declare-fun setElem!33431 () Context!8454)

(declare-fun tp!1467609 () Bool)

(assert (=> setNonEmpty!33431 (= setRes!33431 (and tp!1467609 (inv!80354 setElem!33431) e!3261197))))

(declare-fun setRest!33431 () (InoxSet Context!8454))

(assert (=> setNonEmpty!33431 (= z!1189 ((_ map or) (store ((as const (Array Context!8454 Bool)) false) setElem!33431 true) setRest!33431))))

(declare-fun b!5241224 () Bool)

(assert (=> b!5241224 (= e!3261185 (matchZipper!1087 lt!2148691 (t!374011 s!2326)))))

(declare-fun b!5241225 () Bool)

(declare-fun e!3261190 () Bool)

(assert (=> b!5241225 (= e!3261190 e!3261182)))

(declare-fun res!2224541 () Bool)

(assert (=> b!5241225 (=> res!2224541 e!3261182)))

(assert (=> b!5241225 (= res!2224541 e!3261191)))

(declare-fun res!2224557 () Bool)

(assert (=> b!5241225 (=> (not res!2224557) (not e!3261191))))

(assert (=> b!5241225 (= res!2224557 (not (= (matchZipper!1087 lt!2148721 (t!374011 s!2326)) lt!2148690)))))

(declare-fun lt!2148726 () (InoxSet Context!8454))

(declare-fun e!3261187 () Bool)

(assert (=> b!5241225 (= (matchZipper!1087 lt!2148726 (t!374011 s!2326)) e!3261187)))

(declare-fun res!2224563 () Bool)

(assert (=> b!5241225 (=> res!2224563 e!3261187)))

(assert (=> b!5241225 (= res!2224563 lt!2148690)))

(assert (=> b!5241225 (= lt!2148690 (matchZipper!1087 lt!2148718 (t!374011 s!2326)))))

(declare-fun lt!2148702 () Unit!152758)

(assert (=> b!5241225 (= lt!2148702 (lemmaZipperConcatMatchesSameAsBothZippers!80 lt!2148718 lt!2148687 (t!374011 s!2326)))))

(declare-fun b!5241226 () Bool)

(declare-fun Unit!152764 () Unit!152758)

(assert (=> b!5241226 (= e!3261188 Unit!152764)))

(declare-fun lt!2148730 () Unit!152758)

(assert (=> b!5241226 (= lt!2148730 (lemmaZipperConcatMatchesSameAsBothZippers!80 lt!2148687 lt!2148691 (t!374011 s!2326)))))

(declare-fun res!2224544 () Bool)

(assert (=> b!5241226 (= res!2224544 (matchZipper!1087 lt!2148687 (t!374011 s!2326)))))

(assert (=> b!5241226 (=> res!2224544 e!3261193)))

(assert (=> b!5241226 (= (matchZipper!1087 ((_ map or) lt!2148687 lt!2148691) (t!374011 s!2326)) e!3261193)))

(declare-fun b!5241227 () Bool)

(declare-fun tp!1467606 () Bool)

(declare-fun tp!1467608 () Bool)

(assert (=> b!5241227 (= e!3261194 (and tp!1467606 tp!1467608))))

(declare-fun b!5241228 () Bool)

(declare-fun res!2224542 () Bool)

(assert (=> b!5241228 (=> res!2224542 e!3261189)))

(declare-fun isEmpty!32636 (List!60828) Bool)

(assert (=> b!5241228 (= res!2224542 (isEmpty!32636 (t!374009 (exprs!4727 (h!67153 zl!343)))))))

(declare-fun b!5241229 () Bool)

(declare-fun res!2224556 () Bool)

(assert (=> b!5241229 (=> res!2224556 e!3261206)))

(assert (=> b!5241229 (= res!2224556 (not (= r!7292 (generalisedConcat!512 (exprs!4727 (h!67153 zl!343))))))))

(declare-fun b!5241230 () Bool)

(declare-fun tp!1467603 () Bool)

(declare-fun tp!1467602 () Bool)

(assert (=> b!5241230 (= e!3261194 (and tp!1467603 tp!1467602))))

(declare-fun b!5241231 () Bool)

(declare-fun res!2224543 () Bool)

(assert (=> b!5241231 (=> res!2224543 e!3261206)))

(assert (=> b!5241231 (= res!2224543 (not ((_ is Cons!60704) (exprs!4727 (h!67153 zl!343)))))))

(declare-fun b!5241232 () Bool)

(declare-fun res!2224550 () Bool)

(assert (=> b!5241232 (=> res!2224550 e!3261206)))

(assert (=> b!5241232 (= res!2224550 (or ((_ is EmptyExpr!14843) r!7292) ((_ is EmptyLang!14843) r!7292) ((_ is ElementMatch!14843) r!7292) ((_ is Union!14843) r!7292) (not ((_ is Concat!23688) r!7292))))))

(declare-fun b!5241233 () Bool)

(assert (=> b!5241233 (= e!3261202 e!3261190)))

(declare-fun res!2224547 () Bool)

(assert (=> b!5241233 (=> res!2224547 e!3261190)))

(assert (=> b!5241233 (= res!2224547 (not (= lt!2148721 lt!2148726)))))

(assert (=> b!5241233 (= lt!2148726 ((_ map or) lt!2148718 lt!2148687))))

(assert (=> b!5241233 (= lt!2148687 (derivationStepZipperDown!291 (regTwo!30199 (regOne!30198 r!7292)) lt!2148720 (h!67154 s!2326)))))

(assert (=> b!5241233 (= lt!2148718 (derivationStepZipperDown!291 (regOne!30199 (regOne!30198 r!7292)) lt!2148720 (h!67154 s!2326)))))

(declare-fun b!5241234 () Bool)

(assert (=> b!5241234 (= e!3261187 (matchZipper!1087 lt!2148687 (t!374011 s!2326)))))

(declare-fun b!5241235 () Bool)

(declare-fun tp!1467601 () Bool)

(assert (=> b!5241235 (= e!3261197 tp!1467601)))

(declare-fun b!5241236 () Bool)

(declare-fun Unit!152765 () Unit!152758)

(assert (=> b!5241236 (= e!3261188 Unit!152765)))

(declare-fun b!5241237 () Bool)

(declare-fun tp!1467604 () Bool)

(assert (=> b!5241237 (= e!3261194 tp!1467604)))

(assert (= (and start!554022 res!2224558) b!5241203))

(assert (= (and b!5241203 res!2224555) b!5241202))

(assert (= (and b!5241202 res!2224552) b!5241222))

(assert (= (and b!5241222 (not res!2224560)) b!5241212))

(assert (= (and b!5241212 (not res!2224549)) b!5241229))

(assert (= (and b!5241229 (not res!2224556)) b!5241231))

(assert (= (and b!5241231 (not res!2224543)) b!5241199))

(assert (= (and b!5241199 (not res!2224553)) b!5241232))

(assert (= (and b!5241232 (not res!2224550)) b!5241210))

(assert (= (and b!5241210 (not res!2224562)) b!5241228))

(assert (= (and b!5241228 (not res!2224542)) b!5241201))

(assert (= (and b!5241201 c!905888) b!5241217))

(assert (= (and b!5241201 (not c!905888)) b!5241200))

(assert (= (and b!5241217 (not res!2224539)) b!5241224))

(assert (= (and b!5241201 (not res!2224551)) b!5241233))

(assert (= (and b!5241233 (not res!2224547)) b!5241225))

(assert (= (and b!5241225 (not res!2224563)) b!5241234))

(assert (= (and b!5241225 res!2224557) b!5241216))

(assert (= (and b!5241225 (not res!2224541)) b!5241208))

(assert (= (and b!5241208 c!905887) b!5241213))

(assert (= (and b!5241208 (not c!905887)) b!5241207))

(assert (= (and b!5241213 (not res!2224548)) b!5241205))

(assert (= (and b!5241208 c!905886) b!5241226))

(assert (= (and b!5241208 (not c!905886)) b!5241236))

(assert (= (and b!5241226 (not res!2224544)) b!5241218))

(assert (= (and b!5241208 (not res!2224545)) b!5241206))

(assert (= (and b!5241208 (not res!2224554)) b!5241211))

(assert (= (and b!5241211 (not res!2224540)) b!5241220))

(assert (= (and b!5241220 (not res!2224546)) b!5241209))

(assert (= (and b!5241209 (not res!2224559)) b!5241223))

(assert (= (and b!5241223 (not res!2224561)) b!5241204))

(assert (= (and start!554022 ((_ is ElementMatch!14843) r!7292)) b!5241215))

(assert (= (and start!554022 ((_ is Concat!23688) r!7292)) b!5241230))

(assert (= (and start!554022 ((_ is Star!14843) r!7292)) b!5241237))

(assert (= (and start!554022 ((_ is Union!14843) r!7292)) b!5241227))

(assert (= (and start!554022 condSetEmpty!33431) setIsEmpty!33431))

(assert (= (and start!554022 (not condSetEmpty!33431)) setNonEmpty!33431))

(assert (= setNonEmpty!33431 b!5241235))

(assert (= b!5241221 b!5241214))

(assert (= (and start!554022 ((_ is Cons!60705) zl!343)) b!5241221))

(assert (= (and start!554022 ((_ is Cons!60706) s!2326)) b!5241219))

(declare-fun m!6285642 () Bool)

(assert (=> b!5241216 m!6285642))

(declare-fun m!6285644 () Bool)

(assert (=> b!5241217 m!6285644))

(declare-fun m!6285646 () Bool)

(assert (=> b!5241217 m!6285646))

(declare-fun m!6285648 () Bool)

(assert (=> b!5241217 m!6285648))

(declare-fun m!6285650 () Bool)

(assert (=> b!5241222 m!6285650))

(declare-fun m!6285652 () Bool)

(assert (=> b!5241222 m!6285652))

(declare-fun m!6285654 () Bool)

(assert (=> b!5241222 m!6285654))

(declare-fun m!6285656 () Bool)

(assert (=> b!5241204 m!6285656))

(declare-fun m!6285658 () Bool)

(assert (=> b!5241203 m!6285658))

(declare-fun m!6285660 () Bool)

(assert (=> b!5241210 m!6285660))

(declare-fun m!6285662 () Bool)

(assert (=> b!5241210 m!6285662))

(declare-fun m!6285664 () Bool)

(assert (=> b!5241210 m!6285664))

(declare-fun m!6285666 () Bool)

(assert (=> b!5241210 m!6285666))

(declare-fun m!6285668 () Bool)

(assert (=> b!5241210 m!6285668))

(assert (=> b!5241210 m!6285662))

(assert (=> b!5241210 m!6285666))

(declare-fun m!6285670 () Bool)

(assert (=> b!5241210 m!6285670))

(assert (=> b!5241234 m!6285642))

(assert (=> b!5241225 m!6285646))

(declare-fun m!6285672 () Bool)

(assert (=> b!5241225 m!6285672))

(declare-fun m!6285674 () Bool)

(assert (=> b!5241225 m!6285674))

(declare-fun m!6285676 () Bool)

(assert (=> b!5241225 m!6285676))

(declare-fun m!6285678 () Bool)

(assert (=> b!5241220 m!6285678))

(declare-fun m!6285680 () Bool)

(assert (=> b!5241220 m!6285680))

(declare-fun m!6285682 () Bool)

(assert (=> b!5241208 m!6285682))

(declare-fun m!6285684 () Bool)

(assert (=> b!5241208 m!6285684))

(declare-fun m!6285686 () Bool)

(assert (=> b!5241208 m!6285686))

(declare-fun m!6285688 () Bool)

(assert (=> b!5241208 m!6285688))

(declare-fun m!6285690 () Bool)

(assert (=> b!5241208 m!6285690))

(declare-fun m!6285692 () Bool)

(assert (=> b!5241208 m!6285692))

(declare-fun m!6285694 () Bool)

(assert (=> b!5241208 m!6285694))

(declare-fun m!6285696 () Bool)

(assert (=> b!5241208 m!6285696))

(declare-fun m!6285698 () Bool)

(assert (=> b!5241208 m!6285698))

(declare-fun m!6285700 () Bool)

(assert (=> b!5241208 m!6285700))

(declare-fun m!6285702 () Bool)

(assert (=> b!5241208 m!6285702))

(declare-fun m!6285704 () Bool)

(assert (=> b!5241208 m!6285704))

(declare-fun m!6285706 () Bool)

(assert (=> b!5241223 m!6285706))

(declare-fun m!6285708 () Bool)

(assert (=> b!5241223 m!6285708))

(declare-fun m!6285710 () Bool)

(assert (=> b!5241223 m!6285710))

(declare-fun m!6285712 () Bool)

(assert (=> b!5241223 m!6285712))

(declare-fun m!6285714 () Bool)

(assert (=> b!5241223 m!6285714))

(declare-fun m!6285716 () Bool)

(assert (=> b!5241223 m!6285716))

(declare-fun m!6285718 () Bool)

(assert (=> b!5241223 m!6285718))

(declare-fun m!6285720 () Bool)

(assert (=> b!5241223 m!6285720))

(declare-fun m!6285722 () Bool)

(assert (=> b!5241223 m!6285722))

(declare-fun m!6285724 () Bool)

(assert (=> b!5241223 m!6285724))

(declare-fun m!6285726 () Bool)

(assert (=> b!5241223 m!6285726))

(declare-fun m!6285728 () Bool)

(assert (=> b!5241213 m!6285728))

(declare-fun m!6285730 () Bool)

(assert (=> b!5241213 m!6285730))

(declare-fun m!6285732 () Bool)

(assert (=> start!554022 m!6285732))

(declare-fun m!6285734 () Bool)

(assert (=> b!5241221 m!6285734))

(declare-fun m!6285736 () Bool)

(assert (=> b!5241202 m!6285736))

(declare-fun m!6285738 () Bool)

(assert (=> b!5241229 m!6285738))

(declare-fun m!6285740 () Bool)

(assert (=> b!5241224 m!6285740))

(declare-fun m!6285742 () Bool)

(assert (=> b!5241228 m!6285742))

(declare-fun m!6285744 () Bool)

(assert (=> b!5241199 m!6285744))

(assert (=> b!5241199 m!6285744))

(declare-fun m!6285746 () Bool)

(assert (=> b!5241199 m!6285746))

(declare-fun m!6285748 () Bool)

(assert (=> b!5241209 m!6285748))

(assert (=> b!5241218 m!6285740))

(declare-fun m!6285750 () Bool)

(assert (=> b!5241201 m!6285750))

(declare-fun m!6285752 () Bool)

(assert (=> b!5241201 m!6285752))

(declare-fun m!6285754 () Bool)

(assert (=> b!5241201 m!6285754))

(declare-fun m!6285756 () Bool)

(assert (=> b!5241201 m!6285756))

(declare-fun m!6285758 () Bool)

(assert (=> b!5241201 m!6285758))

(declare-fun m!6285760 () Bool)

(assert (=> b!5241201 m!6285760))

(declare-fun m!6285762 () Bool)

(assert (=> b!5241201 m!6285762))

(declare-fun m!6285764 () Bool)

(assert (=> b!5241212 m!6285764))

(declare-fun m!6285766 () Bool)

(assert (=> b!5241233 m!6285766))

(declare-fun m!6285768 () Bool)

(assert (=> b!5241233 m!6285768))

(declare-fun m!6285770 () Bool)

(assert (=> b!5241226 m!6285770))

(assert (=> b!5241226 m!6285642))

(declare-fun m!6285772 () Bool)

(assert (=> b!5241226 m!6285772))

(assert (=> b!5241205 m!6285740))

(assert (=> b!5241206 m!6285712))

(declare-fun m!6285774 () Bool)

(assert (=> setNonEmpty!33431 m!6285774))

(check-sat (not b!5241233) (not b!5241227) (not b!5241201) (not b!5241237) (not b!5241213) (not b!5241204) (not b!5241216) tp_is_empty!38939 (not b!5241209) (not b!5241224) (not setNonEmpty!33431) (not b!5241217) (not b!5241219) (not start!554022) (not b!5241203) (not b!5241206) (not b!5241221) (not b!5241229) (not b!5241199) (not b!5241234) (not b!5241202) (not b!5241225) (not b!5241205) (not b!5241210) (not b!5241222) (not b!5241223) (not b!5241230) (not b!5241220) (not b!5241212) (not b!5241208) (not b!5241214) (not b!5241228) (not b!5241226) (not b!5241235) (not b!5241218))
(check-sat)
(get-model)

(declare-fun d!1688849 () Bool)

(declare-fun c!905918 () Bool)

(declare-fun e!3261274 () Bool)

(assert (=> d!1688849 (= c!905918 e!3261274)))

(declare-fun res!2224616 () Bool)

(assert (=> d!1688849 (=> (not res!2224616) (not e!3261274))))

(assert (=> d!1688849 (= res!2224616 ((_ is Cons!60704) (exprs!4727 lt!2148713)))))

(declare-fun e!3261275 () (InoxSet Context!8454))

(assert (=> d!1688849 (= (derivationStepZipperUp!215 lt!2148713 (h!67154 s!2326)) e!3261275)))

(declare-fun bm!371017 () Bool)

(declare-fun call!371022 () (InoxSet Context!8454))

(assert (=> bm!371017 (= call!371022 (derivationStepZipperDown!291 (h!67152 (exprs!4727 lt!2148713)) (Context!8455 (t!374009 (exprs!4727 lt!2148713))) (h!67154 s!2326)))))

(declare-fun b!5241352 () Bool)

(assert (=> b!5241352 (= e!3261274 (nullable!5012 (h!67152 (exprs!4727 lt!2148713))))))

(declare-fun b!5241353 () Bool)

(declare-fun e!3261273 () (InoxSet Context!8454))

(assert (=> b!5241353 (= e!3261273 ((as const (Array Context!8454 Bool)) false))))

(declare-fun b!5241354 () Bool)

(assert (=> b!5241354 (= e!3261275 e!3261273)))

(declare-fun c!905919 () Bool)

(assert (=> b!5241354 (= c!905919 ((_ is Cons!60704) (exprs!4727 lt!2148713)))))

(declare-fun b!5241355 () Bool)

(assert (=> b!5241355 (= e!3261273 call!371022)))

(declare-fun b!5241356 () Bool)

(assert (=> b!5241356 (= e!3261275 ((_ map or) call!371022 (derivationStepZipperUp!215 (Context!8455 (t!374009 (exprs!4727 lt!2148713))) (h!67154 s!2326))))))

(assert (= (and d!1688849 res!2224616) b!5241352))

(assert (= (and d!1688849 c!905918) b!5241356))

(assert (= (and d!1688849 (not c!905918)) b!5241354))

(assert (= (and b!5241354 c!905919) b!5241355))

(assert (= (and b!5241354 (not c!905919)) b!5241353))

(assert (= (or b!5241356 b!5241355) bm!371017))

(declare-fun m!6285790 () Bool)

(assert (=> bm!371017 m!6285790))

(declare-fun m!6285792 () Bool)

(assert (=> b!5241352 m!6285792))

(declare-fun m!6285794 () Bool)

(assert (=> b!5241356 m!6285794))

(assert (=> b!5241208 d!1688849))

(declare-fun d!1688853 () Bool)

(declare-fun choose!39018 ((InoxSet Context!8454) Int) (InoxSet Context!8454))

(assert (=> d!1688853 (= (flatMap!570 lt!2148706 lambda!263625) (choose!39018 lt!2148706 lambda!263625))))

(declare-fun bs!1216002 () Bool)

(assert (= bs!1216002 d!1688853))

(declare-fun m!6285808 () Bool)

(assert (=> bs!1216002 m!6285808))

(assert (=> b!5241208 d!1688853))

(declare-fun d!1688857 () Bool)

(declare-fun nullableFct!1409 (Regex!14843) Bool)

(assert (=> d!1688857 (= (nullable!5012 (regTwo!30199 (regOne!30198 r!7292))) (nullableFct!1409 (regTwo!30199 (regOne!30198 r!7292))))))

(declare-fun bs!1216003 () Bool)

(assert (= bs!1216003 d!1688857))

(declare-fun m!6285810 () Bool)

(assert (=> bs!1216003 m!6285810))

(assert (=> b!5241208 d!1688857))

(declare-fun d!1688859 () Bool)

(declare-fun c!905923 () Bool)

(declare-fun e!3261284 () Bool)

(assert (=> d!1688859 (= c!905923 e!3261284)))

(declare-fun res!2224625 () Bool)

(assert (=> d!1688859 (=> (not res!2224625) (not e!3261284))))

(assert (=> d!1688859 (= res!2224625 ((_ is Cons!60704) (exprs!4727 lt!2148725)))))

(declare-fun e!3261285 () (InoxSet Context!8454))

(assert (=> d!1688859 (= (derivationStepZipperUp!215 lt!2148725 (h!67154 s!2326)) e!3261285)))

(declare-fun bm!371019 () Bool)

(declare-fun call!371024 () (InoxSet Context!8454))

(assert (=> bm!371019 (= call!371024 (derivationStepZipperDown!291 (h!67152 (exprs!4727 lt!2148725)) (Context!8455 (t!374009 (exprs!4727 lt!2148725))) (h!67154 s!2326)))))

(declare-fun b!5241371 () Bool)

(assert (=> b!5241371 (= e!3261284 (nullable!5012 (h!67152 (exprs!4727 lt!2148725))))))

(declare-fun b!5241372 () Bool)

(declare-fun e!3261283 () (InoxSet Context!8454))

(assert (=> b!5241372 (= e!3261283 ((as const (Array Context!8454 Bool)) false))))

(declare-fun b!5241373 () Bool)

(assert (=> b!5241373 (= e!3261285 e!3261283)))

(declare-fun c!905924 () Bool)

(assert (=> b!5241373 (= c!905924 ((_ is Cons!60704) (exprs!4727 lt!2148725)))))

(declare-fun b!5241374 () Bool)

(assert (=> b!5241374 (= e!3261283 call!371024)))

(declare-fun b!5241375 () Bool)

(assert (=> b!5241375 (= e!3261285 ((_ map or) call!371024 (derivationStepZipperUp!215 (Context!8455 (t!374009 (exprs!4727 lt!2148725))) (h!67154 s!2326))))))

(assert (= (and d!1688859 res!2224625) b!5241371))

(assert (= (and d!1688859 c!905923) b!5241375))

(assert (= (and d!1688859 (not c!905923)) b!5241373))

(assert (= (and b!5241373 c!905924) b!5241374))

(assert (= (and b!5241373 (not c!905924)) b!5241372))

(assert (= (or b!5241375 b!5241374) bm!371019))

(declare-fun m!6285814 () Bool)

(assert (=> bm!371019 m!6285814))

(declare-fun m!6285816 () Bool)

(assert (=> b!5241371 m!6285816))

(declare-fun m!6285818 () Bool)

(assert (=> b!5241375 m!6285818))

(assert (=> b!5241208 d!1688859))

(declare-fun d!1688863 () Bool)

(declare-fun c!905930 () Bool)

(declare-fun isEmpty!32639 (List!60830) Bool)

(assert (=> d!1688863 (= c!905930 (isEmpty!32639 s!2326))))

(declare-fun e!3261291 () Bool)

(assert (=> d!1688863 (= (matchZipper!1087 z!1189 s!2326) e!3261291)))

(declare-fun b!5241386 () Bool)

(declare-fun nullableZipper!1258 ((InoxSet Context!8454)) Bool)

(assert (=> b!5241386 (= e!3261291 (nullableZipper!1258 z!1189))))

(declare-fun b!5241387 () Bool)

(declare-fun derivationStepZipper!1102 ((InoxSet Context!8454) C!29956) (InoxSet Context!8454))

(declare-fun head!11233 (List!60830) C!29956)

(declare-fun tail!10330 (List!60830) List!60830)

(assert (=> b!5241387 (= e!3261291 (matchZipper!1087 (derivationStepZipper!1102 z!1189 (head!11233 s!2326)) (tail!10330 s!2326)))))

(assert (= (and d!1688863 c!905930) b!5241386))

(assert (= (and d!1688863 (not c!905930)) b!5241387))

(declare-fun m!6285834 () Bool)

(assert (=> d!1688863 m!6285834))

(declare-fun m!6285836 () Bool)

(assert (=> b!5241386 m!6285836))

(declare-fun m!6285838 () Bool)

(assert (=> b!5241387 m!6285838))

(assert (=> b!5241387 m!6285838))

(declare-fun m!6285840 () Bool)

(assert (=> b!5241387 m!6285840))

(declare-fun m!6285842 () Bool)

(assert (=> b!5241387 m!6285842))

(assert (=> b!5241387 m!6285840))

(assert (=> b!5241387 m!6285842))

(declare-fun m!6285844 () Bool)

(assert (=> b!5241387 m!6285844))

(assert (=> b!5241208 d!1688863))

(declare-fun d!1688869 () Bool)

(declare-fun dynLambda!23986 (Int Context!8454) (InoxSet Context!8454))

(assert (=> d!1688869 (= (flatMap!570 lt!2148692 lambda!263625) (dynLambda!23986 lambda!263625 lt!2148713))))

(declare-fun lt!2148741 () Unit!152758)

(declare-fun choose!39019 ((InoxSet Context!8454) Context!8454 Int) Unit!152758)

(assert (=> d!1688869 (= lt!2148741 (choose!39019 lt!2148692 lt!2148713 lambda!263625))))

(assert (=> d!1688869 (= lt!2148692 (store ((as const (Array Context!8454 Bool)) false) lt!2148713 true))))

(assert (=> d!1688869 (= (lemmaFlatMapOnSingletonSet!102 lt!2148692 lt!2148713 lambda!263625) lt!2148741)))

(declare-fun b_lambda!202541 () Bool)

(assert (=> (not b_lambda!202541) (not d!1688869)))

(declare-fun bs!1216006 () Bool)

(assert (= bs!1216006 d!1688869))

(assert (=> bs!1216006 m!6285690))

(declare-fun m!6285846 () Bool)

(assert (=> bs!1216006 m!6285846))

(declare-fun m!6285848 () Bool)

(assert (=> bs!1216006 m!6285848))

(assert (=> bs!1216006 m!6285682))

(assert (=> b!5241208 d!1688869))

(declare-fun d!1688871 () Bool)

(assert (=> d!1688871 (= (nullable!5012 (regOne!30199 (regOne!30198 r!7292))) (nullableFct!1409 (regOne!30199 (regOne!30198 r!7292))))))

(declare-fun bs!1216007 () Bool)

(assert (= bs!1216007 d!1688871))

(declare-fun m!6285850 () Bool)

(assert (=> bs!1216007 m!6285850))

(assert (=> b!5241208 d!1688871))

(declare-fun d!1688873 () Bool)

(assert (=> d!1688873 (= (flatMap!570 lt!2148706 lambda!263625) (dynLambda!23986 lambda!263625 lt!2148725))))

(declare-fun lt!2148746 () Unit!152758)

(assert (=> d!1688873 (= lt!2148746 (choose!39019 lt!2148706 lt!2148725 lambda!263625))))

(assert (=> d!1688873 (= lt!2148706 (store ((as const (Array Context!8454 Bool)) false) lt!2148725 true))))

(assert (=> d!1688873 (= (lemmaFlatMapOnSingletonSet!102 lt!2148706 lt!2148725 lambda!263625) lt!2148746)))

(declare-fun b_lambda!202543 () Bool)

(assert (=> (not b_lambda!202543) (not d!1688873)))

(declare-fun bs!1216008 () Bool)

(assert (= bs!1216008 d!1688873))

(assert (=> bs!1216008 m!6285694))

(declare-fun m!6285852 () Bool)

(assert (=> bs!1216008 m!6285852))

(declare-fun m!6285854 () Bool)

(assert (=> bs!1216008 m!6285854))

(assert (=> bs!1216008 m!6285688))

(assert (=> b!5241208 d!1688873))

(declare-fun d!1688875 () Bool)

(assert (=> d!1688875 (= (flatMap!570 lt!2148692 lambda!263625) (choose!39018 lt!2148692 lambda!263625))))

(declare-fun bs!1216009 () Bool)

(assert (= bs!1216009 d!1688875))

(declare-fun m!6285856 () Bool)

(assert (=> bs!1216009 m!6285856))

(assert (=> b!5241208 d!1688875))

(declare-fun d!1688877 () Bool)

(declare-fun c!905935 () Bool)

(assert (=> d!1688877 (= c!905935 (isEmpty!32639 s!2326))))

(declare-fun e!3261302 () Bool)

(assert (=> d!1688877 (= (matchZipper!1087 lt!2148706 s!2326) e!3261302)))

(declare-fun b!5241406 () Bool)

(assert (=> b!5241406 (= e!3261302 (nullableZipper!1258 lt!2148706))))

(declare-fun b!5241407 () Bool)

(assert (=> b!5241407 (= e!3261302 (matchZipper!1087 (derivationStepZipper!1102 lt!2148706 (head!11233 s!2326)) (tail!10330 s!2326)))))

(assert (= (and d!1688877 c!905935) b!5241406))

(assert (= (and d!1688877 (not c!905935)) b!5241407))

(assert (=> d!1688877 m!6285834))

(declare-fun m!6285858 () Bool)

(assert (=> b!5241406 m!6285858))

(assert (=> b!5241407 m!6285838))

(assert (=> b!5241407 m!6285838))

(declare-fun m!6285860 () Bool)

(assert (=> b!5241407 m!6285860))

(assert (=> b!5241407 m!6285842))

(assert (=> b!5241407 m!6285860))

(assert (=> b!5241407 m!6285842))

(declare-fun m!6285862 () Bool)

(assert (=> b!5241407 m!6285862))

(assert (=> b!5241208 d!1688877))

(declare-fun e!3261312 () Bool)

(declare-fun d!1688879 () Bool)

(assert (=> d!1688879 (= (matchZipper!1087 ((_ map or) lt!2148687 lt!2148691) (t!374011 s!2326)) e!3261312)))

(declare-fun res!2224647 () Bool)

(assert (=> d!1688879 (=> res!2224647 e!3261312)))

(assert (=> d!1688879 (= res!2224647 (matchZipper!1087 lt!2148687 (t!374011 s!2326)))))

(declare-fun lt!2148754 () Unit!152758)

(declare-fun choose!39020 ((InoxSet Context!8454) (InoxSet Context!8454) List!60830) Unit!152758)

(assert (=> d!1688879 (= lt!2148754 (choose!39020 lt!2148687 lt!2148691 (t!374011 s!2326)))))

(assert (=> d!1688879 (= (lemmaZipperConcatMatchesSameAsBothZippers!80 lt!2148687 lt!2148691 (t!374011 s!2326)) lt!2148754)))

(declare-fun b!5241423 () Bool)

(assert (=> b!5241423 (= e!3261312 (matchZipper!1087 lt!2148691 (t!374011 s!2326)))))

(assert (= (and d!1688879 (not res!2224647)) b!5241423))

(assert (=> d!1688879 m!6285772))

(assert (=> d!1688879 m!6285642))

(declare-fun m!6285892 () Bool)

(assert (=> d!1688879 m!6285892))

(assert (=> b!5241423 m!6285740))

(assert (=> b!5241226 d!1688879))

(declare-fun d!1688887 () Bool)

(declare-fun c!905938 () Bool)

(assert (=> d!1688887 (= c!905938 (isEmpty!32639 (t!374011 s!2326)))))

(declare-fun e!3261313 () Bool)

(assert (=> d!1688887 (= (matchZipper!1087 lt!2148687 (t!374011 s!2326)) e!3261313)))

(declare-fun b!5241424 () Bool)

(assert (=> b!5241424 (= e!3261313 (nullableZipper!1258 lt!2148687))))

(declare-fun b!5241425 () Bool)

(assert (=> b!5241425 (= e!3261313 (matchZipper!1087 (derivationStepZipper!1102 lt!2148687 (head!11233 (t!374011 s!2326))) (tail!10330 (t!374011 s!2326))))))

(assert (= (and d!1688887 c!905938) b!5241424))

(assert (= (and d!1688887 (not c!905938)) b!5241425))

(declare-fun m!6285894 () Bool)

(assert (=> d!1688887 m!6285894))

(declare-fun m!6285896 () Bool)

(assert (=> b!5241424 m!6285896))

(declare-fun m!6285898 () Bool)

(assert (=> b!5241425 m!6285898))

(assert (=> b!5241425 m!6285898))

(declare-fun m!6285900 () Bool)

(assert (=> b!5241425 m!6285900))

(declare-fun m!6285902 () Bool)

(assert (=> b!5241425 m!6285902))

(assert (=> b!5241425 m!6285900))

(assert (=> b!5241425 m!6285902))

(declare-fun m!6285904 () Bool)

(assert (=> b!5241425 m!6285904))

(assert (=> b!5241226 d!1688887))

(declare-fun d!1688889 () Bool)

(declare-fun c!905939 () Bool)

(assert (=> d!1688889 (= c!905939 (isEmpty!32639 (t!374011 s!2326)))))

(declare-fun e!3261314 () Bool)

(assert (=> d!1688889 (= (matchZipper!1087 ((_ map or) lt!2148687 lt!2148691) (t!374011 s!2326)) e!3261314)))

(declare-fun b!5241426 () Bool)

(assert (=> b!5241426 (= e!3261314 (nullableZipper!1258 ((_ map or) lt!2148687 lt!2148691)))))

(declare-fun b!5241427 () Bool)

(assert (=> b!5241427 (= e!3261314 (matchZipper!1087 (derivationStepZipper!1102 ((_ map or) lt!2148687 lt!2148691) (head!11233 (t!374011 s!2326))) (tail!10330 (t!374011 s!2326))))))

(assert (= (and d!1688889 c!905939) b!5241426))

(assert (= (and d!1688889 (not c!905939)) b!5241427))

(assert (=> d!1688889 m!6285894))

(declare-fun m!6285906 () Bool)

(assert (=> b!5241426 m!6285906))

(assert (=> b!5241427 m!6285898))

(assert (=> b!5241427 m!6285898))

(declare-fun m!6285908 () Bool)

(assert (=> b!5241427 m!6285908))

(assert (=> b!5241427 m!6285902))

(assert (=> b!5241427 m!6285908))

(assert (=> b!5241427 m!6285902))

(declare-fun m!6285910 () Bool)

(assert (=> b!5241427 m!6285910))

(assert (=> b!5241226 d!1688889))

(declare-fun d!1688891 () Bool)

(declare-fun c!905940 () Bool)

(assert (=> d!1688891 (= c!905940 (isEmpty!32639 s!2326))))

(declare-fun e!3261315 () Bool)

(assert (=> d!1688891 (= (matchZipper!1087 lt!2148692 s!2326) e!3261315)))

(declare-fun b!5241428 () Bool)

(assert (=> b!5241428 (= e!3261315 (nullableZipper!1258 lt!2148692))))

(declare-fun b!5241429 () Bool)

(assert (=> b!5241429 (= e!3261315 (matchZipper!1087 (derivationStepZipper!1102 lt!2148692 (head!11233 s!2326)) (tail!10330 s!2326)))))

(assert (= (and d!1688891 c!905940) b!5241428))

(assert (= (and d!1688891 (not c!905940)) b!5241429))

(assert (=> d!1688891 m!6285834))

(declare-fun m!6285916 () Bool)

(assert (=> b!5241428 m!6285916))

(assert (=> b!5241429 m!6285838))

(assert (=> b!5241429 m!6285838))

(declare-fun m!6285918 () Bool)

(assert (=> b!5241429 m!6285918))

(assert (=> b!5241429 m!6285842))

(assert (=> b!5241429 m!6285918))

(assert (=> b!5241429 m!6285842))

(declare-fun m!6285920 () Bool)

(assert (=> b!5241429 m!6285920))

(assert (=> b!5241206 d!1688891))

(declare-fun d!1688895 () Bool)

(declare-fun c!905941 () Bool)

(assert (=> d!1688895 (= c!905941 (isEmpty!32639 (t!374011 s!2326)))))

(declare-fun e!3261316 () Bool)

(assert (=> d!1688895 (= (matchZipper!1087 lt!2148721 (t!374011 s!2326)) e!3261316)))

(declare-fun b!5241430 () Bool)

(assert (=> b!5241430 (= e!3261316 (nullableZipper!1258 lt!2148721))))

(declare-fun b!5241431 () Bool)

(assert (=> b!5241431 (= e!3261316 (matchZipper!1087 (derivationStepZipper!1102 lt!2148721 (head!11233 (t!374011 s!2326))) (tail!10330 (t!374011 s!2326))))))

(assert (= (and d!1688895 c!905941) b!5241430))

(assert (= (and d!1688895 (not c!905941)) b!5241431))

(assert (=> d!1688895 m!6285894))

(declare-fun m!6285922 () Bool)

(assert (=> b!5241430 m!6285922))

(assert (=> b!5241431 m!6285898))

(assert (=> b!5241431 m!6285898))

(declare-fun m!6285924 () Bool)

(assert (=> b!5241431 m!6285924))

(assert (=> b!5241431 m!6285902))

(assert (=> b!5241431 m!6285924))

(assert (=> b!5241431 m!6285902))

(declare-fun m!6285926 () Bool)

(assert (=> b!5241431 m!6285926))

(assert (=> b!5241225 d!1688895))

(declare-fun d!1688897 () Bool)

(declare-fun c!905942 () Bool)

(assert (=> d!1688897 (= c!905942 (isEmpty!32639 (t!374011 s!2326)))))

(declare-fun e!3261317 () Bool)

(assert (=> d!1688897 (= (matchZipper!1087 lt!2148726 (t!374011 s!2326)) e!3261317)))

(declare-fun b!5241432 () Bool)

(assert (=> b!5241432 (= e!3261317 (nullableZipper!1258 lt!2148726))))

(declare-fun b!5241433 () Bool)

(assert (=> b!5241433 (= e!3261317 (matchZipper!1087 (derivationStepZipper!1102 lt!2148726 (head!11233 (t!374011 s!2326))) (tail!10330 (t!374011 s!2326))))))

(assert (= (and d!1688897 c!905942) b!5241432))

(assert (= (and d!1688897 (not c!905942)) b!5241433))

(assert (=> d!1688897 m!6285894))

(declare-fun m!6285928 () Bool)

(assert (=> b!5241432 m!6285928))

(assert (=> b!5241433 m!6285898))

(assert (=> b!5241433 m!6285898))

(declare-fun m!6285930 () Bool)

(assert (=> b!5241433 m!6285930))

(assert (=> b!5241433 m!6285902))

(assert (=> b!5241433 m!6285930))

(assert (=> b!5241433 m!6285902))

(declare-fun m!6285932 () Bool)

(assert (=> b!5241433 m!6285932))

(assert (=> b!5241225 d!1688897))

(declare-fun d!1688899 () Bool)

(declare-fun c!905943 () Bool)

(assert (=> d!1688899 (= c!905943 (isEmpty!32639 (t!374011 s!2326)))))

(declare-fun e!3261318 () Bool)

(assert (=> d!1688899 (= (matchZipper!1087 lt!2148718 (t!374011 s!2326)) e!3261318)))

(declare-fun b!5241434 () Bool)

(assert (=> b!5241434 (= e!3261318 (nullableZipper!1258 lt!2148718))))

(declare-fun b!5241435 () Bool)

(assert (=> b!5241435 (= e!3261318 (matchZipper!1087 (derivationStepZipper!1102 lt!2148718 (head!11233 (t!374011 s!2326))) (tail!10330 (t!374011 s!2326))))))

(assert (= (and d!1688899 c!905943) b!5241434))

(assert (= (and d!1688899 (not c!905943)) b!5241435))

(assert (=> d!1688899 m!6285894))

(declare-fun m!6285934 () Bool)

(assert (=> b!5241434 m!6285934))

(assert (=> b!5241435 m!6285898))

(assert (=> b!5241435 m!6285898))

(declare-fun m!6285936 () Bool)

(assert (=> b!5241435 m!6285936))

(assert (=> b!5241435 m!6285902))

(assert (=> b!5241435 m!6285936))

(assert (=> b!5241435 m!6285902))

(declare-fun m!6285938 () Bool)

(assert (=> b!5241435 m!6285938))

(assert (=> b!5241225 d!1688899))

(declare-fun e!3261319 () Bool)

(declare-fun d!1688901 () Bool)

(assert (=> d!1688901 (= (matchZipper!1087 ((_ map or) lt!2148718 lt!2148687) (t!374011 s!2326)) e!3261319)))

(declare-fun res!2224648 () Bool)

(assert (=> d!1688901 (=> res!2224648 e!3261319)))

(assert (=> d!1688901 (= res!2224648 (matchZipper!1087 lt!2148718 (t!374011 s!2326)))))

(declare-fun lt!2148756 () Unit!152758)

(assert (=> d!1688901 (= lt!2148756 (choose!39020 lt!2148718 lt!2148687 (t!374011 s!2326)))))

(assert (=> d!1688901 (= (lemmaZipperConcatMatchesSameAsBothZippers!80 lt!2148718 lt!2148687 (t!374011 s!2326)) lt!2148756)))

(declare-fun b!5241436 () Bool)

(assert (=> b!5241436 (= e!3261319 (matchZipper!1087 lt!2148687 (t!374011 s!2326)))))

(assert (= (and d!1688901 (not res!2224648)) b!5241436))

(declare-fun m!6285940 () Bool)

(assert (=> d!1688901 m!6285940))

(assert (=> d!1688901 m!6285674))

(declare-fun m!6285942 () Bool)

(assert (=> d!1688901 m!6285942))

(assert (=> b!5241436 m!6285642))

(assert (=> b!5241225 d!1688901))

(declare-fun b!5241507 () Bool)

(declare-fun e!3261365 () Option!14954)

(assert (=> b!5241507 (= e!3261365 (Some!14953 (tuple2!64085 Nil!60706 s!2326)))))

(declare-fun d!1688903 () Bool)

(declare-fun e!3261361 () Bool)

(assert (=> d!1688903 e!3261361))

(declare-fun res!2224677 () Bool)

(assert (=> d!1688903 (=> res!2224677 e!3261361)))

(declare-fun e!3261363 () Bool)

(assert (=> d!1688903 (= res!2224677 e!3261363)))

(declare-fun res!2224679 () Bool)

(assert (=> d!1688903 (=> (not res!2224679) (not e!3261363))))

(declare-fun lt!2148773 () Option!14954)

(assert (=> d!1688903 (= res!2224679 (isDefined!11657 lt!2148773))))

(assert (=> d!1688903 (= lt!2148773 e!3261365)))

(declare-fun c!905966 () Bool)

(declare-fun e!3261364 () Bool)

(assert (=> d!1688903 (= c!905966 e!3261364)))

(declare-fun res!2224678 () Bool)

(assert (=> d!1688903 (=> (not res!2224678) (not e!3261364))))

(assert (=> d!1688903 (= res!2224678 (matchR!7028 (regOne!30198 r!7292) Nil!60706))))

(assert (=> d!1688903 (validRegex!6579 (regOne!30198 r!7292))))

(assert (=> d!1688903 (= (findConcatSeparation!1368 (regOne!30198 r!7292) (regTwo!30198 r!7292) Nil!60706 s!2326 s!2326) lt!2148773)))

(declare-fun b!5241508 () Bool)

(declare-fun e!3261362 () Option!14954)

(assert (=> b!5241508 (= e!3261365 e!3261362)))

(declare-fun c!905965 () Bool)

(assert (=> b!5241508 (= c!905965 ((_ is Nil!60706) s!2326))))

(declare-fun b!5241509 () Bool)

(declare-fun res!2224681 () Bool)

(assert (=> b!5241509 (=> (not res!2224681) (not e!3261363))))

(declare-fun get!20865 (Option!14954) tuple2!64084)

(assert (=> b!5241509 (= res!2224681 (matchR!7028 (regOne!30198 r!7292) (_1!35345 (get!20865 lt!2148773))))))

(declare-fun b!5241510 () Bool)

(assert (=> b!5241510 (= e!3261361 (not (isDefined!11657 lt!2148773)))))

(declare-fun b!5241511 () Bool)

(declare-fun res!2224680 () Bool)

(assert (=> b!5241511 (=> (not res!2224680) (not e!3261363))))

(assert (=> b!5241511 (= res!2224680 (matchR!7028 (regTwo!30198 r!7292) (_2!35345 (get!20865 lt!2148773))))))

(declare-fun b!5241512 () Bool)

(assert (=> b!5241512 (= e!3261364 (matchR!7028 (regTwo!30198 r!7292) s!2326))))

(declare-fun b!5241513 () Bool)

(assert (=> b!5241513 (= e!3261362 None!14953)))

(declare-fun b!5241514 () Bool)

(declare-fun ++!13238 (List!60830 List!60830) List!60830)

(assert (=> b!5241514 (= e!3261363 (= (++!13238 (_1!35345 (get!20865 lt!2148773)) (_2!35345 (get!20865 lt!2148773))) s!2326))))

(declare-fun b!5241515 () Bool)

(declare-fun lt!2148772 () Unit!152758)

(declare-fun lt!2148771 () Unit!152758)

(assert (=> b!5241515 (= lt!2148772 lt!2148771)))

(assert (=> b!5241515 (= (++!13238 (++!13238 Nil!60706 (Cons!60706 (h!67154 s!2326) Nil!60706)) (t!374011 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1653 (List!60830 C!29956 List!60830 List!60830) Unit!152758)

(assert (=> b!5241515 (= lt!2148771 (lemmaMoveElementToOtherListKeepsConcatEq!1653 Nil!60706 (h!67154 s!2326) (t!374011 s!2326) s!2326))))

(assert (=> b!5241515 (= e!3261362 (findConcatSeparation!1368 (regOne!30198 r!7292) (regTwo!30198 r!7292) (++!13238 Nil!60706 (Cons!60706 (h!67154 s!2326) Nil!60706)) (t!374011 s!2326) s!2326))))

(assert (= (and d!1688903 res!2224678) b!5241512))

(assert (= (and d!1688903 c!905966) b!5241507))

(assert (= (and d!1688903 (not c!905966)) b!5241508))

(assert (= (and b!5241508 c!905965) b!5241513))

(assert (= (and b!5241508 (not c!905965)) b!5241515))

(assert (= (and d!1688903 res!2224679) b!5241509))

(assert (= (and b!5241509 res!2224681) b!5241511))

(assert (= (and b!5241511 res!2224680) b!5241514))

(assert (= (and d!1688903 (not res!2224677)) b!5241510))

(declare-fun m!6285976 () Bool)

(assert (=> b!5241512 m!6285976))

(declare-fun m!6285978 () Bool)

(assert (=> b!5241515 m!6285978))

(assert (=> b!5241515 m!6285978))

(declare-fun m!6285980 () Bool)

(assert (=> b!5241515 m!6285980))

(declare-fun m!6285982 () Bool)

(assert (=> b!5241515 m!6285982))

(assert (=> b!5241515 m!6285978))

(declare-fun m!6285984 () Bool)

(assert (=> b!5241515 m!6285984))

(declare-fun m!6285986 () Bool)

(assert (=> b!5241510 m!6285986))

(declare-fun m!6285988 () Bool)

(assert (=> b!5241514 m!6285988))

(declare-fun m!6285990 () Bool)

(assert (=> b!5241514 m!6285990))

(assert (=> d!1688903 m!6285986))

(declare-fun m!6285992 () Bool)

(assert (=> d!1688903 m!6285992))

(declare-fun m!6285994 () Bool)

(assert (=> d!1688903 m!6285994))

(assert (=> b!5241509 m!6285988))

(declare-fun m!6285996 () Bool)

(assert (=> b!5241509 m!6285996))

(assert (=> b!5241511 m!6285988))

(declare-fun m!6285998 () Bool)

(assert (=> b!5241511 m!6285998))

(assert (=> b!5241210 d!1688903))

(declare-fun d!1688919 () Bool)

(declare-fun choose!39021 (Int) Bool)

(assert (=> d!1688919 (= (Exists!2024 lambda!263624) (choose!39021 lambda!263624))))

(declare-fun bs!1216053 () Bool)

(assert (= bs!1216053 d!1688919))

(declare-fun m!6286020 () Bool)

(assert (=> bs!1216053 m!6286020))

(assert (=> b!5241210 d!1688919))

(declare-fun d!1688923 () Bool)

(assert (=> d!1688923 (= (Exists!2024 lambda!263623) (choose!39021 lambda!263623))))

(declare-fun bs!1216054 () Bool)

(assert (= bs!1216054 d!1688923))

(declare-fun m!6286024 () Bool)

(assert (=> bs!1216054 m!6286024))

(assert (=> b!5241210 d!1688923))

(declare-fun bs!1216068 () Bool)

(declare-fun d!1688925 () Bool)

(assert (= bs!1216068 (and d!1688925 b!5241210)))

(declare-fun lambda!263656 () Int)

(assert (=> bs!1216068 (= lambda!263656 lambda!263623)))

(assert (=> bs!1216068 (not (= lambda!263656 lambda!263624))))

(assert (=> d!1688925 true))

(assert (=> d!1688925 true))

(assert (=> d!1688925 true))

(assert (=> d!1688925 (= (isDefined!11657 (findConcatSeparation!1368 (regOne!30198 r!7292) (regTwo!30198 r!7292) Nil!60706 s!2326 s!2326)) (Exists!2024 lambda!263656))))

(declare-fun lt!2148793 () Unit!152758)

(declare-fun choose!39022 (Regex!14843 Regex!14843 List!60830) Unit!152758)

(assert (=> d!1688925 (= lt!2148793 (choose!39022 (regOne!30198 r!7292) (regTwo!30198 r!7292) s!2326))))

(assert (=> d!1688925 (validRegex!6579 (regOne!30198 r!7292))))

(assert (=> d!1688925 (= (lemmaFindConcatSeparationEquivalentToExists!1132 (regOne!30198 r!7292) (regTwo!30198 r!7292) s!2326) lt!2148793)))

(declare-fun bs!1216069 () Bool)

(assert (= bs!1216069 d!1688925))

(assert (=> bs!1216069 m!6285994))

(assert (=> bs!1216069 m!6285666))

(assert (=> bs!1216069 m!6285666))

(assert (=> bs!1216069 m!6285668))

(declare-fun m!6286108 () Bool)

(assert (=> bs!1216069 m!6286108))

(declare-fun m!6286110 () Bool)

(assert (=> bs!1216069 m!6286110))

(assert (=> b!5241210 d!1688925))

(declare-fun bs!1216071 () Bool)

(declare-fun d!1688953 () Bool)

(assert (= bs!1216071 (and d!1688953 b!5241210)))

(declare-fun lambda!263661 () Int)

(assert (=> bs!1216071 (= lambda!263661 lambda!263623)))

(assert (=> bs!1216071 (not (= lambda!263661 lambda!263624))))

(declare-fun bs!1216072 () Bool)

(assert (= bs!1216072 (and d!1688953 d!1688925)))

(assert (=> bs!1216072 (= lambda!263661 lambda!263656)))

(assert (=> d!1688953 true))

(assert (=> d!1688953 true))

(assert (=> d!1688953 true))

(declare-fun lambda!263662 () Int)

(assert (=> bs!1216071 (not (= lambda!263662 lambda!263623))))

(assert (=> bs!1216071 (= lambda!263662 lambda!263624)))

(assert (=> bs!1216072 (not (= lambda!263662 lambda!263656))))

(declare-fun bs!1216073 () Bool)

(assert (= bs!1216073 d!1688953))

(assert (=> bs!1216073 (not (= lambda!263662 lambda!263661))))

(assert (=> d!1688953 true))

(assert (=> d!1688953 true))

(assert (=> d!1688953 true))

(assert (=> d!1688953 (= (Exists!2024 lambda!263661) (Exists!2024 lambda!263662))))

(declare-fun lt!2148798 () Unit!152758)

(declare-fun choose!39023 (Regex!14843 Regex!14843 List!60830) Unit!152758)

(assert (=> d!1688953 (= lt!2148798 (choose!39023 (regOne!30198 r!7292) (regTwo!30198 r!7292) s!2326))))

(assert (=> d!1688953 (validRegex!6579 (regOne!30198 r!7292))))

(assert (=> d!1688953 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!678 (regOne!30198 r!7292) (regTwo!30198 r!7292) s!2326) lt!2148798)))

(declare-fun m!6286148 () Bool)

(assert (=> bs!1216073 m!6286148))

(declare-fun m!6286150 () Bool)

(assert (=> bs!1216073 m!6286150))

(declare-fun m!6286152 () Bool)

(assert (=> bs!1216073 m!6286152))

(assert (=> bs!1216073 m!6285994))

(assert (=> b!5241210 d!1688953))

(declare-fun d!1688971 () Bool)

(declare-fun isEmpty!32640 (Option!14954) Bool)

(assert (=> d!1688971 (= (isDefined!11657 (findConcatSeparation!1368 (regOne!30198 r!7292) (regTwo!30198 r!7292) Nil!60706 s!2326 s!2326)) (not (isEmpty!32640 (findConcatSeparation!1368 (regOne!30198 r!7292) (regTwo!30198 r!7292) Nil!60706 s!2326 s!2326))))))

(declare-fun bs!1216074 () Bool)

(assert (= bs!1216074 d!1688971))

(assert (=> bs!1216074 m!6285666))

(declare-fun m!6286154 () Bool)

(assert (=> bs!1216074 m!6286154))

(assert (=> b!5241210 d!1688971))

(declare-fun b!5241742 () Bool)

(declare-fun e!3261499 () Bool)

(declare-fun lt!2148812 () Regex!14843)

(declare-fun head!11235 (List!60828) Regex!14843)

(assert (=> b!5241742 (= e!3261499 (= lt!2148812 (head!11235 (exprs!4727 (h!67153 zl!343)))))))

(declare-fun b!5241743 () Bool)

(declare-fun e!3261501 () Bool)

(assert (=> b!5241743 (= e!3261501 e!3261499)))

(declare-fun c!906051 () Bool)

(declare-fun tail!10332 (List!60828) List!60828)

(assert (=> b!5241743 (= c!906051 (isEmpty!32636 (tail!10332 (exprs!4727 (h!67153 zl!343)))))))

(declare-fun d!1688973 () Bool)

(declare-fun e!3261502 () Bool)

(assert (=> d!1688973 e!3261502))

(declare-fun res!2224747 () Bool)

(assert (=> d!1688973 (=> (not res!2224747) (not e!3261502))))

(assert (=> d!1688973 (= res!2224747 (validRegex!6579 lt!2148812))))

(declare-fun e!3261497 () Regex!14843)

(assert (=> d!1688973 (= lt!2148812 e!3261497)))

(declare-fun c!906049 () Bool)

(declare-fun e!3261498 () Bool)

(assert (=> d!1688973 (= c!906049 e!3261498)))

(declare-fun res!2224746 () Bool)

(assert (=> d!1688973 (=> (not res!2224746) (not e!3261498))))

(assert (=> d!1688973 (= res!2224746 ((_ is Cons!60704) (exprs!4727 (h!67153 zl!343))))))

(declare-fun lambda!263667 () Int)

(declare-fun forall!14267 (List!60828 Int) Bool)

(assert (=> d!1688973 (forall!14267 (exprs!4727 (h!67153 zl!343)) lambda!263667)))

(assert (=> d!1688973 (= (generalisedConcat!512 (exprs!4727 (h!67153 zl!343))) lt!2148812)))

(declare-fun b!5241744 () Bool)

(declare-fun isEmptyExpr!793 (Regex!14843) Bool)

(assert (=> b!5241744 (= e!3261501 (isEmptyExpr!793 lt!2148812))))

(declare-fun b!5241745 () Bool)

(declare-fun e!3261500 () Regex!14843)

(assert (=> b!5241745 (= e!3261500 (Concat!23688 (h!67152 (exprs!4727 (h!67153 zl!343))) (generalisedConcat!512 (t!374009 (exprs!4727 (h!67153 zl!343))))))))

(declare-fun b!5241746 () Bool)

(assert (=> b!5241746 (= e!3261500 EmptyExpr!14843)))

(declare-fun b!5241747 () Bool)

(assert (=> b!5241747 (= e!3261498 (isEmpty!32636 (t!374009 (exprs!4727 (h!67153 zl!343)))))))

(declare-fun b!5241748 () Bool)

(assert (=> b!5241748 (= e!3261497 (h!67152 (exprs!4727 (h!67153 zl!343))))))

(declare-fun b!5241749 () Bool)

(assert (=> b!5241749 (= e!3261497 e!3261500)))

(declare-fun c!906048 () Bool)

(assert (=> b!5241749 (= c!906048 ((_ is Cons!60704) (exprs!4727 (h!67153 zl!343))))))

(declare-fun b!5241750 () Bool)

(declare-fun isConcat!316 (Regex!14843) Bool)

(assert (=> b!5241750 (= e!3261499 (isConcat!316 lt!2148812))))

(declare-fun b!5241751 () Bool)

(assert (=> b!5241751 (= e!3261502 e!3261501)))

(declare-fun c!906050 () Bool)

(assert (=> b!5241751 (= c!906050 (isEmpty!32636 (exprs!4727 (h!67153 zl!343))))))

(assert (= (and d!1688973 res!2224746) b!5241747))

(assert (= (and d!1688973 c!906049) b!5241748))

(assert (= (and d!1688973 (not c!906049)) b!5241749))

(assert (= (and b!5241749 c!906048) b!5241745))

(assert (= (and b!5241749 (not c!906048)) b!5241746))

(assert (= (and d!1688973 res!2224747) b!5241751))

(assert (= (and b!5241751 c!906050) b!5241744))

(assert (= (and b!5241751 (not c!906050)) b!5241743))

(assert (= (and b!5241743 c!906051) b!5241742))

(assert (= (and b!5241743 (not c!906051)) b!5241750))

(declare-fun m!6286262 () Bool)

(assert (=> b!5241744 m!6286262))

(declare-fun m!6286264 () Bool)

(assert (=> b!5241751 m!6286264))

(assert (=> b!5241747 m!6285742))

(declare-fun m!6286266 () Bool)

(assert (=> d!1688973 m!6286266))

(declare-fun m!6286268 () Bool)

(assert (=> d!1688973 m!6286268))

(declare-fun m!6286270 () Bool)

(assert (=> b!5241750 m!6286270))

(declare-fun m!6286272 () Bool)

(assert (=> b!5241745 m!6286272))

(declare-fun m!6286274 () Bool)

(assert (=> b!5241743 m!6286274))

(assert (=> b!5241743 m!6286274))

(declare-fun m!6286276 () Bool)

(assert (=> b!5241743 m!6286276))

(declare-fun m!6286278 () Bool)

(assert (=> b!5241742 m!6286278))

(assert (=> b!5241229 d!1688973))

(declare-fun d!1689023 () Bool)

(declare-fun lt!2148817 () Int)

(assert (=> d!1689023 (>= lt!2148817 0)))

(declare-fun e!3261517 () Int)

(assert (=> d!1689023 (= lt!2148817 e!3261517)))

(declare-fun c!906062 () Bool)

(assert (=> d!1689023 (= c!906062 ((_ is Cons!60705) lt!2148688))))

(assert (=> d!1689023 (= (zipperDepthTotal!24 lt!2148688) lt!2148817)))

(declare-fun b!5241776 () Bool)

(declare-fun contextDepthTotal!15 (Context!8454) Int)

(assert (=> b!5241776 (= e!3261517 (+ (contextDepthTotal!15 (h!67153 lt!2148688)) (zipperDepthTotal!24 (t!374010 lt!2148688))))))

(declare-fun b!5241777 () Bool)

(assert (=> b!5241777 (= e!3261517 0)))

(assert (= (and d!1689023 c!906062) b!5241776))

(assert (= (and d!1689023 (not c!906062)) b!5241777))

(declare-fun m!6286280 () Bool)

(assert (=> b!5241776 m!6286280))

(declare-fun m!6286282 () Bool)

(assert (=> b!5241776 m!6286282))

(assert (=> b!5241209 d!1689023))

(declare-fun d!1689025 () Bool)

(assert (=> d!1689025 (= (isEmpty!32636 (t!374009 (exprs!4727 (h!67153 zl!343)))) ((_ is Nil!60704) (t!374009 (exprs!4727 (h!67153 zl!343)))))))

(assert (=> b!5241228 d!1689025))

(declare-fun bs!1216086 () Bool)

(declare-fun d!1689027 () Bool)

(assert (= bs!1216086 (and d!1689027 d!1688973)))

(declare-fun lambda!263669 () Int)

(assert (=> bs!1216086 (= lambda!263669 lambda!263667)))

(declare-fun b!5241788 () Bool)

(declare-fun e!3261526 () Bool)

(declare-fun lt!2148819 () Regex!14843)

(assert (=> b!5241788 (= e!3261526 (= lt!2148819 (head!11235 lt!2148719)))))

(declare-fun b!5241789 () Bool)

(declare-fun e!3261528 () Bool)

(assert (=> b!5241789 (= e!3261528 e!3261526)))

(declare-fun c!906070 () Bool)

(assert (=> b!5241789 (= c!906070 (isEmpty!32636 (tail!10332 lt!2148719)))))

(declare-fun e!3261529 () Bool)

(assert (=> d!1689027 e!3261529))

(declare-fun res!2224755 () Bool)

(assert (=> d!1689027 (=> (not res!2224755) (not e!3261529))))

(assert (=> d!1689027 (= res!2224755 (validRegex!6579 lt!2148819))))

(declare-fun e!3261524 () Regex!14843)

(assert (=> d!1689027 (= lt!2148819 e!3261524)))

(declare-fun c!906068 () Bool)

(declare-fun e!3261525 () Bool)

(assert (=> d!1689027 (= c!906068 e!3261525)))

(declare-fun res!2224754 () Bool)

(assert (=> d!1689027 (=> (not res!2224754) (not e!3261525))))

(assert (=> d!1689027 (= res!2224754 ((_ is Cons!60704) lt!2148719))))

(assert (=> d!1689027 (forall!14267 lt!2148719 lambda!263669)))

(assert (=> d!1689027 (= (generalisedConcat!512 lt!2148719) lt!2148819)))

(declare-fun b!5241790 () Bool)

(assert (=> b!5241790 (= e!3261528 (isEmptyExpr!793 lt!2148819))))

(declare-fun b!5241791 () Bool)

(declare-fun e!3261527 () Regex!14843)

(assert (=> b!5241791 (= e!3261527 (Concat!23688 (h!67152 lt!2148719) (generalisedConcat!512 (t!374009 lt!2148719))))))

(declare-fun b!5241792 () Bool)

(assert (=> b!5241792 (= e!3261527 EmptyExpr!14843)))

(declare-fun b!5241793 () Bool)

(assert (=> b!5241793 (= e!3261525 (isEmpty!32636 (t!374009 lt!2148719)))))

(declare-fun b!5241794 () Bool)

(assert (=> b!5241794 (= e!3261524 (h!67152 lt!2148719))))

(declare-fun b!5241795 () Bool)

(assert (=> b!5241795 (= e!3261524 e!3261527)))

(declare-fun c!906067 () Bool)

(assert (=> b!5241795 (= c!906067 ((_ is Cons!60704) lt!2148719))))

(declare-fun b!5241796 () Bool)

(assert (=> b!5241796 (= e!3261526 (isConcat!316 lt!2148819))))

(declare-fun b!5241797 () Bool)

(assert (=> b!5241797 (= e!3261529 e!3261528)))

(declare-fun c!906069 () Bool)

(assert (=> b!5241797 (= c!906069 (isEmpty!32636 lt!2148719))))

(assert (= (and d!1689027 res!2224754) b!5241793))

(assert (= (and d!1689027 c!906068) b!5241794))

(assert (= (and d!1689027 (not c!906068)) b!5241795))

(assert (= (and b!5241795 c!906067) b!5241791))

(assert (= (and b!5241795 (not c!906067)) b!5241792))

(assert (= (and d!1689027 res!2224755) b!5241797))

(assert (= (and b!5241797 c!906069) b!5241790))

(assert (= (and b!5241797 (not c!906069)) b!5241789))

(assert (= (and b!5241789 c!906070) b!5241788))

(assert (= (and b!5241789 (not c!906070)) b!5241796))

(declare-fun m!6286304 () Bool)

(assert (=> b!5241790 m!6286304))

(declare-fun m!6286306 () Bool)

(assert (=> b!5241797 m!6286306))

(declare-fun m!6286308 () Bool)

(assert (=> b!5241793 m!6286308))

(declare-fun m!6286310 () Bool)

(assert (=> d!1689027 m!6286310))

(declare-fun m!6286312 () Bool)

(assert (=> d!1689027 m!6286312))

(declare-fun m!6286314 () Bool)

(assert (=> b!5241796 m!6286314))

(declare-fun m!6286316 () Bool)

(assert (=> b!5241791 m!6286316))

(declare-fun m!6286318 () Bool)

(assert (=> b!5241789 m!6286318))

(assert (=> b!5241789 m!6286318))

(declare-fun m!6286320 () Bool)

(assert (=> b!5241789 m!6286320))

(declare-fun m!6286322 () Bool)

(assert (=> b!5241788 m!6286322))

(assert (=> b!5241223 d!1689027))

(declare-fun bs!1216096 () Bool)

(declare-fun b!5241896 () Bool)

(assert (= bs!1216096 (and b!5241896 b!5241210)))

(declare-fun lambda!263677 () Int)

(assert (=> bs!1216096 (not (= lambda!263677 lambda!263624))))

(declare-fun bs!1216097 () Bool)

(assert (= bs!1216097 (and b!5241896 d!1688953)))

(assert (=> bs!1216097 (not (= lambda!263677 lambda!263662))))

(assert (=> bs!1216096 (not (= lambda!263677 lambda!263623))))

(assert (=> bs!1216097 (not (= lambda!263677 lambda!263661))))

(declare-fun bs!1216098 () Bool)

(assert (= bs!1216098 (and b!5241896 d!1688925)))

(assert (=> bs!1216098 (not (= lambda!263677 lambda!263656))))

(assert (=> b!5241896 true))

(assert (=> b!5241896 true))

(declare-fun bs!1216099 () Bool)

(declare-fun b!5241895 () Bool)

(assert (= bs!1216099 (and b!5241895 b!5241210)))

(declare-fun lambda!263678 () Int)

(assert (=> bs!1216099 (= (and (= (regOne!30198 lt!2148686) (regOne!30198 r!7292)) (= (regTwo!30198 lt!2148686) (regTwo!30198 r!7292))) (= lambda!263678 lambda!263624))))

(declare-fun bs!1216100 () Bool)

(assert (= bs!1216100 (and b!5241895 b!5241896)))

(assert (=> bs!1216100 (not (= lambda!263678 lambda!263677))))

(declare-fun bs!1216101 () Bool)

(assert (= bs!1216101 (and b!5241895 d!1688953)))

(assert (=> bs!1216101 (= (and (= (regOne!30198 lt!2148686) (regOne!30198 r!7292)) (= (regTwo!30198 lt!2148686) (regTwo!30198 r!7292))) (= lambda!263678 lambda!263662))))

(assert (=> bs!1216099 (not (= lambda!263678 lambda!263623))))

(assert (=> bs!1216101 (not (= lambda!263678 lambda!263661))))

(declare-fun bs!1216102 () Bool)

(assert (= bs!1216102 (and b!5241895 d!1688925)))

(assert (=> bs!1216102 (not (= lambda!263678 lambda!263656))))

(assert (=> b!5241895 true))

(assert (=> b!5241895 true))

(declare-fun b!5241890 () Bool)

(declare-fun e!3261576 () Bool)

(declare-fun e!3261574 () Bool)

(assert (=> b!5241890 (= e!3261576 e!3261574)))

(declare-fun c!906082 () Bool)

(assert (=> b!5241890 (= c!906082 ((_ is Star!14843) lt!2148686))))

(declare-fun b!5241891 () Bool)

(declare-fun e!3261580 () Bool)

(assert (=> b!5241891 (= e!3261576 e!3261580)))

(declare-fun res!2224773 () Bool)

(assert (=> b!5241891 (= res!2224773 (matchRSpec!1946 (regOne!30199 lt!2148686) s!2326))))

(assert (=> b!5241891 (=> res!2224773 e!3261580)))

(declare-fun b!5241892 () Bool)

(declare-fun c!906085 () Bool)

(assert (=> b!5241892 (= c!906085 ((_ is Union!14843) lt!2148686))))

(declare-fun e!3261578 () Bool)

(assert (=> b!5241892 (= e!3261578 e!3261576)))

(declare-fun b!5241894 () Bool)

(declare-fun e!3261579 () Bool)

(declare-fun call!371075 () Bool)

(assert (=> b!5241894 (= e!3261579 call!371075)))

(declare-fun call!371076 () Bool)

(assert (=> b!5241895 (= e!3261574 call!371076)))

(declare-fun e!3261577 () Bool)

(assert (=> b!5241896 (= e!3261577 call!371076)))

(declare-fun b!5241897 () Bool)

(assert (=> b!5241897 (= e!3261578 (= s!2326 (Cons!60706 (c!905889 lt!2148686) Nil!60706)))))

(declare-fun b!5241898 () Bool)

(declare-fun res!2224772 () Bool)

(assert (=> b!5241898 (=> res!2224772 e!3261577)))

(assert (=> b!5241898 (= res!2224772 call!371075)))

(assert (=> b!5241898 (= e!3261574 e!3261577)))

(declare-fun bm!371070 () Bool)

(assert (=> bm!371070 (= call!371076 (Exists!2024 (ite c!906082 lambda!263677 lambda!263678)))))

(declare-fun b!5241899 () Bool)

(declare-fun c!906083 () Bool)

(assert (=> b!5241899 (= c!906083 ((_ is ElementMatch!14843) lt!2148686))))

(declare-fun e!3261575 () Bool)

(assert (=> b!5241899 (= e!3261575 e!3261578)))

(declare-fun b!5241900 () Bool)

(assert (=> b!5241900 (= e!3261580 (matchRSpec!1946 (regTwo!30199 lt!2148686) s!2326))))

(declare-fun bm!371071 () Bool)

(assert (=> bm!371071 (= call!371075 (isEmpty!32639 s!2326))))

(declare-fun b!5241893 () Bool)

(assert (=> b!5241893 (= e!3261579 e!3261575)))

(declare-fun res!2224774 () Bool)

(assert (=> b!5241893 (= res!2224774 (not ((_ is EmptyLang!14843) lt!2148686)))))

(assert (=> b!5241893 (=> (not res!2224774) (not e!3261575))))

(declare-fun d!1689031 () Bool)

(declare-fun c!906084 () Bool)

(assert (=> d!1689031 (= c!906084 ((_ is EmptyExpr!14843) lt!2148686))))

(assert (=> d!1689031 (= (matchRSpec!1946 lt!2148686 s!2326) e!3261579)))

(assert (= (and d!1689031 c!906084) b!5241894))

(assert (= (and d!1689031 (not c!906084)) b!5241893))

(assert (= (and b!5241893 res!2224774) b!5241899))

(assert (= (and b!5241899 c!906083) b!5241897))

(assert (= (and b!5241899 (not c!906083)) b!5241892))

(assert (= (and b!5241892 c!906085) b!5241891))

(assert (= (and b!5241892 (not c!906085)) b!5241890))

(assert (= (and b!5241891 (not res!2224773)) b!5241900))

(assert (= (and b!5241890 c!906082) b!5241898))

(assert (= (and b!5241890 (not c!906082)) b!5241895))

(assert (= (and b!5241898 (not res!2224772)) b!5241896))

(assert (= (or b!5241896 b!5241895) bm!371070))

(assert (= (or b!5241894 b!5241898) bm!371071))

(declare-fun m!6286332 () Bool)

(assert (=> b!5241891 m!6286332))

(declare-fun m!6286334 () Bool)

(assert (=> bm!371070 m!6286334))

(declare-fun m!6286336 () Bool)

(assert (=> b!5241900 m!6286336))

(assert (=> bm!371071 m!6285834))

(assert (=> b!5241223 d!1689031))

(assert (=> b!5241223 d!1688891))

(declare-fun d!1689039 () Bool)

(assert (=> d!1689039 (= (matchR!7028 lt!2148716 s!2326) (matchRSpec!1946 lt!2148716 s!2326))))

(declare-fun lt!2148825 () Unit!152758)

(declare-fun choose!39024 (Regex!14843 List!60830) Unit!152758)

(assert (=> d!1689039 (= lt!2148825 (choose!39024 lt!2148716 s!2326))))

(assert (=> d!1689039 (validRegex!6579 lt!2148716)))

(assert (=> d!1689039 (= (mainMatchTheorem!1946 lt!2148716 s!2326) lt!2148825)))

(declare-fun bs!1216103 () Bool)

(assert (= bs!1216103 d!1689039))

(assert (=> bs!1216103 m!6285710))

(assert (=> bs!1216103 m!6285714))

(declare-fun m!6286338 () Bool)

(assert (=> bs!1216103 m!6286338))

(assert (=> bs!1216103 m!6285656))

(assert (=> b!5241223 d!1689039))

(declare-fun b!5241929 () Bool)

(declare-fun e!3261596 () Bool)

(declare-fun e!3261601 () Bool)

(assert (=> b!5241929 (= e!3261596 e!3261601)))

(declare-fun c!906092 () Bool)

(assert (=> b!5241929 (= c!906092 ((_ is EmptyLang!14843) lt!2148686))))

(declare-fun b!5241930 () Bool)

(declare-fun e!3261598 () Bool)

(assert (=> b!5241930 (= e!3261598 (not (= (head!11233 s!2326) (c!905889 lt!2148686))))))

(declare-fun b!5241931 () Bool)

(declare-fun res!2224792 () Bool)

(declare-fun e!3261600 () Bool)

(assert (=> b!5241931 (=> res!2224792 e!3261600)))

(declare-fun e!3261597 () Bool)

(assert (=> b!5241931 (= res!2224792 e!3261597)))

(declare-fun res!2224791 () Bool)

(assert (=> b!5241931 (=> (not res!2224791) (not e!3261597))))

(declare-fun lt!2148828 () Bool)

(assert (=> b!5241931 (= res!2224791 lt!2148828)))

(declare-fun d!1689041 () Bool)

(assert (=> d!1689041 e!3261596))

(declare-fun c!906093 () Bool)

(assert (=> d!1689041 (= c!906093 ((_ is EmptyExpr!14843) lt!2148686))))

(declare-fun e!3261595 () Bool)

(assert (=> d!1689041 (= lt!2148828 e!3261595)))

(declare-fun c!906094 () Bool)

(assert (=> d!1689041 (= c!906094 (isEmpty!32639 s!2326))))

(assert (=> d!1689041 (validRegex!6579 lt!2148686)))

(assert (=> d!1689041 (= (matchR!7028 lt!2148686 s!2326) lt!2148828)))

(declare-fun b!5241932 () Bool)

(declare-fun e!3261599 () Bool)

(assert (=> b!5241932 (= e!3261599 e!3261598)))

(declare-fun res!2224798 () Bool)

(assert (=> b!5241932 (=> res!2224798 e!3261598)))

(declare-fun call!371079 () Bool)

(assert (=> b!5241932 (= res!2224798 call!371079)))

(declare-fun b!5241933 () Bool)

(assert (=> b!5241933 (= e!3261597 (= (head!11233 s!2326) (c!905889 lt!2148686)))))

(declare-fun b!5241934 () Bool)

(declare-fun derivativeStep!4079 (Regex!14843 C!29956) Regex!14843)

(assert (=> b!5241934 (= e!3261595 (matchR!7028 (derivativeStep!4079 lt!2148686 (head!11233 s!2326)) (tail!10330 s!2326)))))

(declare-fun b!5241935 () Bool)

(declare-fun res!2224797 () Bool)

(assert (=> b!5241935 (=> (not res!2224797) (not e!3261597))))

(assert (=> b!5241935 (= res!2224797 (not call!371079))))

(declare-fun b!5241936 () Bool)

(assert (=> b!5241936 (= e!3261595 (nullable!5012 lt!2148686))))

(declare-fun b!5241937 () Bool)

(assert (=> b!5241937 (= e!3261600 e!3261599)))

(declare-fun res!2224794 () Bool)

(assert (=> b!5241937 (=> (not res!2224794) (not e!3261599))))

(assert (=> b!5241937 (= res!2224794 (not lt!2148828))))

(declare-fun b!5241938 () Bool)

(declare-fun res!2224796 () Bool)

(assert (=> b!5241938 (=> res!2224796 e!3261598)))

(assert (=> b!5241938 (= res!2224796 (not (isEmpty!32639 (tail!10330 s!2326))))))

(declare-fun b!5241939 () Bool)

(assert (=> b!5241939 (= e!3261601 (not lt!2148828))))

(declare-fun bm!371074 () Bool)

(assert (=> bm!371074 (= call!371079 (isEmpty!32639 s!2326))))

(declare-fun b!5241940 () Bool)

(assert (=> b!5241940 (= e!3261596 (= lt!2148828 call!371079))))

(declare-fun b!5241941 () Bool)

(declare-fun res!2224795 () Bool)

(assert (=> b!5241941 (=> (not res!2224795) (not e!3261597))))

(assert (=> b!5241941 (= res!2224795 (isEmpty!32639 (tail!10330 s!2326)))))

(declare-fun b!5241942 () Bool)

(declare-fun res!2224793 () Bool)

(assert (=> b!5241942 (=> res!2224793 e!3261600)))

(assert (=> b!5241942 (= res!2224793 (not ((_ is ElementMatch!14843) lt!2148686)))))

(assert (=> b!5241942 (= e!3261601 e!3261600)))

(assert (= (and d!1689041 c!906094) b!5241936))

(assert (= (and d!1689041 (not c!906094)) b!5241934))

(assert (= (and d!1689041 c!906093) b!5241940))

(assert (= (and d!1689041 (not c!906093)) b!5241929))

(assert (= (and b!5241929 c!906092) b!5241939))

(assert (= (and b!5241929 (not c!906092)) b!5241942))

(assert (= (and b!5241942 (not res!2224793)) b!5241931))

(assert (= (and b!5241931 res!2224791) b!5241935))

(assert (= (and b!5241935 res!2224797) b!5241941))

(assert (= (and b!5241941 res!2224795) b!5241933))

(assert (= (and b!5241931 (not res!2224792)) b!5241937))

(assert (= (and b!5241937 res!2224794) b!5241932))

(assert (= (and b!5241932 (not res!2224798)) b!5241938))

(assert (= (and b!5241938 (not res!2224796)) b!5241930))

(assert (= (or b!5241940 b!5241932 b!5241935) bm!371074))

(assert (=> b!5241938 m!6285842))

(assert (=> b!5241938 m!6285842))

(declare-fun m!6286340 () Bool)

(assert (=> b!5241938 m!6286340))

(assert (=> d!1689041 m!6285834))

(declare-fun m!6286342 () Bool)

(assert (=> d!1689041 m!6286342))

(assert (=> b!5241941 m!6285842))

(assert (=> b!5241941 m!6285842))

(assert (=> b!5241941 m!6286340))

(declare-fun m!6286344 () Bool)

(assert (=> b!5241936 m!6286344))

(assert (=> b!5241934 m!6285838))

(assert (=> b!5241934 m!6285838))

(declare-fun m!6286346 () Bool)

(assert (=> b!5241934 m!6286346))

(assert (=> b!5241934 m!6285842))

(assert (=> b!5241934 m!6286346))

(assert (=> b!5241934 m!6285842))

(declare-fun m!6286348 () Bool)

(assert (=> b!5241934 m!6286348))

(assert (=> bm!371074 m!6285834))

(assert (=> b!5241933 m!6285838))

(assert (=> b!5241930 m!6285838))

(assert (=> b!5241223 d!1689041))

(declare-fun d!1689043 () Bool)

(assert (=> d!1689043 (= (matchR!7028 lt!2148716 s!2326) (matchZipper!1087 lt!2148692 s!2326))))

(declare-fun lt!2148831 () Unit!152758)

(declare-fun choose!39026 ((InoxSet Context!8454) List!60829 Regex!14843 List!60830) Unit!152758)

(assert (=> d!1689043 (= lt!2148831 (choose!39026 lt!2148692 lt!2148688 lt!2148716 s!2326))))

(assert (=> d!1689043 (validRegex!6579 lt!2148716)))

(assert (=> d!1689043 (= (theoremZipperRegexEquiv!277 lt!2148692 lt!2148688 lt!2148716 s!2326) lt!2148831)))

(declare-fun bs!1216104 () Bool)

(assert (= bs!1216104 d!1689043))

(assert (=> bs!1216104 m!6285710))

(assert (=> bs!1216104 m!6285712))

(declare-fun m!6286350 () Bool)

(assert (=> bs!1216104 m!6286350))

(assert (=> bs!1216104 m!6285656))

(assert (=> b!5241223 d!1689043))

(declare-fun d!1689045 () Bool)

(assert (=> d!1689045 (= (matchR!7028 lt!2148686 s!2326) (matchZipper!1087 lt!2148706 s!2326))))

(declare-fun lt!2148832 () Unit!152758)

(assert (=> d!1689045 (= lt!2148832 (choose!39026 lt!2148706 lt!2148712 lt!2148686 s!2326))))

(assert (=> d!1689045 (validRegex!6579 lt!2148686)))

(assert (=> d!1689045 (= (theoremZipperRegexEquiv!277 lt!2148706 lt!2148712 lt!2148686 s!2326) lt!2148832)))

(declare-fun bs!1216105 () Bool)

(assert (= bs!1216105 d!1689045))

(assert (=> bs!1216105 m!6285716))

(assert (=> bs!1216105 m!6285698))

(declare-fun m!6286352 () Bool)

(assert (=> bs!1216105 m!6286352))

(assert (=> bs!1216105 m!6286342))

(assert (=> b!5241223 d!1689045))

(declare-fun b!5241943 () Bool)

(declare-fun e!3261603 () Bool)

(declare-fun e!3261608 () Bool)

(assert (=> b!5241943 (= e!3261603 e!3261608)))

(declare-fun c!906095 () Bool)

(assert (=> b!5241943 (= c!906095 ((_ is EmptyLang!14843) lt!2148716))))

(declare-fun b!5241944 () Bool)

(declare-fun e!3261605 () Bool)

(assert (=> b!5241944 (= e!3261605 (not (= (head!11233 s!2326) (c!905889 lt!2148716))))))

(declare-fun b!5241945 () Bool)

(declare-fun res!2224800 () Bool)

(declare-fun e!3261607 () Bool)

(assert (=> b!5241945 (=> res!2224800 e!3261607)))

(declare-fun e!3261604 () Bool)

(assert (=> b!5241945 (= res!2224800 e!3261604)))

(declare-fun res!2224799 () Bool)

(assert (=> b!5241945 (=> (not res!2224799) (not e!3261604))))

(declare-fun lt!2148833 () Bool)

(assert (=> b!5241945 (= res!2224799 lt!2148833)))

(declare-fun d!1689047 () Bool)

(assert (=> d!1689047 e!3261603))

(declare-fun c!906096 () Bool)

(assert (=> d!1689047 (= c!906096 ((_ is EmptyExpr!14843) lt!2148716))))

(declare-fun e!3261602 () Bool)

(assert (=> d!1689047 (= lt!2148833 e!3261602)))

(declare-fun c!906097 () Bool)

(assert (=> d!1689047 (= c!906097 (isEmpty!32639 s!2326))))

(assert (=> d!1689047 (validRegex!6579 lt!2148716)))

(assert (=> d!1689047 (= (matchR!7028 lt!2148716 s!2326) lt!2148833)))

(declare-fun b!5241946 () Bool)

(declare-fun e!3261606 () Bool)

(assert (=> b!5241946 (= e!3261606 e!3261605)))

(declare-fun res!2224806 () Bool)

(assert (=> b!5241946 (=> res!2224806 e!3261605)))

(declare-fun call!371080 () Bool)

(assert (=> b!5241946 (= res!2224806 call!371080)))

(declare-fun b!5241947 () Bool)

(assert (=> b!5241947 (= e!3261604 (= (head!11233 s!2326) (c!905889 lt!2148716)))))

(declare-fun b!5241948 () Bool)

(assert (=> b!5241948 (= e!3261602 (matchR!7028 (derivativeStep!4079 lt!2148716 (head!11233 s!2326)) (tail!10330 s!2326)))))

(declare-fun b!5241949 () Bool)

(declare-fun res!2224805 () Bool)

(assert (=> b!5241949 (=> (not res!2224805) (not e!3261604))))

(assert (=> b!5241949 (= res!2224805 (not call!371080))))

(declare-fun b!5241950 () Bool)

(assert (=> b!5241950 (= e!3261602 (nullable!5012 lt!2148716))))

(declare-fun b!5241951 () Bool)

(assert (=> b!5241951 (= e!3261607 e!3261606)))

(declare-fun res!2224802 () Bool)

(assert (=> b!5241951 (=> (not res!2224802) (not e!3261606))))

(assert (=> b!5241951 (= res!2224802 (not lt!2148833))))

(declare-fun b!5241952 () Bool)

(declare-fun res!2224804 () Bool)

(assert (=> b!5241952 (=> res!2224804 e!3261605)))

(assert (=> b!5241952 (= res!2224804 (not (isEmpty!32639 (tail!10330 s!2326))))))

(declare-fun b!5241953 () Bool)

(assert (=> b!5241953 (= e!3261608 (not lt!2148833))))

(declare-fun bm!371075 () Bool)

(assert (=> bm!371075 (= call!371080 (isEmpty!32639 s!2326))))

(declare-fun b!5241954 () Bool)

(assert (=> b!5241954 (= e!3261603 (= lt!2148833 call!371080))))

(declare-fun b!5241955 () Bool)

(declare-fun res!2224803 () Bool)

(assert (=> b!5241955 (=> (not res!2224803) (not e!3261604))))

(assert (=> b!5241955 (= res!2224803 (isEmpty!32639 (tail!10330 s!2326)))))

(declare-fun b!5241956 () Bool)

(declare-fun res!2224801 () Bool)

(assert (=> b!5241956 (=> res!2224801 e!3261607)))

(assert (=> b!5241956 (= res!2224801 (not ((_ is ElementMatch!14843) lt!2148716)))))

(assert (=> b!5241956 (= e!3261608 e!3261607)))

(assert (= (and d!1689047 c!906097) b!5241950))

(assert (= (and d!1689047 (not c!906097)) b!5241948))

(assert (= (and d!1689047 c!906096) b!5241954))

(assert (= (and d!1689047 (not c!906096)) b!5241943))

(assert (= (and b!5241943 c!906095) b!5241953))

(assert (= (and b!5241943 (not c!906095)) b!5241956))

(assert (= (and b!5241956 (not res!2224801)) b!5241945))

(assert (= (and b!5241945 res!2224799) b!5241949))

(assert (= (and b!5241949 res!2224805) b!5241955))

(assert (= (and b!5241955 res!2224803) b!5241947))

(assert (= (and b!5241945 (not res!2224800)) b!5241951))

(assert (= (and b!5241951 res!2224802) b!5241946))

(assert (= (and b!5241946 (not res!2224806)) b!5241952))

(assert (= (and b!5241952 (not res!2224804)) b!5241944))

(assert (= (or b!5241954 b!5241946 b!5241949) bm!371075))

(assert (=> b!5241952 m!6285842))

(assert (=> b!5241952 m!6285842))

(assert (=> b!5241952 m!6286340))

(assert (=> d!1689047 m!6285834))

(assert (=> d!1689047 m!6285656))

(assert (=> b!5241955 m!6285842))

(assert (=> b!5241955 m!6285842))

(assert (=> b!5241955 m!6286340))

(declare-fun m!6286354 () Bool)

(assert (=> b!5241950 m!6286354))

(assert (=> b!5241948 m!6285838))

(assert (=> b!5241948 m!6285838))

(declare-fun m!6286356 () Bool)

(assert (=> b!5241948 m!6286356))

(assert (=> b!5241948 m!6285842))

(assert (=> b!5241948 m!6286356))

(assert (=> b!5241948 m!6285842))

(declare-fun m!6286358 () Bool)

(assert (=> b!5241948 m!6286358))

(assert (=> bm!371075 m!6285834))

(assert (=> b!5241947 m!6285838))

(assert (=> b!5241944 m!6285838))

(assert (=> b!5241223 d!1689047))

(declare-fun bs!1216106 () Bool)

(declare-fun d!1689049 () Bool)

(assert (= bs!1216106 (and d!1689049 d!1688973)))

(declare-fun lambda!263679 () Int)

(assert (=> bs!1216106 (= lambda!263679 lambda!263667)))

(declare-fun bs!1216107 () Bool)

(assert (= bs!1216107 (and d!1689049 d!1689027)))

(assert (=> bs!1216107 (= lambda!263679 lambda!263669)))

(declare-fun b!5241957 () Bool)

(declare-fun e!3261611 () Bool)

(declare-fun lt!2148834 () Regex!14843)

(assert (=> b!5241957 (= e!3261611 (= lt!2148834 (head!11235 lt!2148729)))))

(declare-fun b!5241958 () Bool)

(declare-fun e!3261613 () Bool)

(assert (=> b!5241958 (= e!3261613 e!3261611)))

(declare-fun c!906101 () Bool)

(assert (=> b!5241958 (= c!906101 (isEmpty!32636 (tail!10332 lt!2148729)))))

(declare-fun e!3261614 () Bool)

(assert (=> d!1689049 e!3261614))

(declare-fun res!2224808 () Bool)

(assert (=> d!1689049 (=> (not res!2224808) (not e!3261614))))

(assert (=> d!1689049 (= res!2224808 (validRegex!6579 lt!2148834))))

(declare-fun e!3261609 () Regex!14843)

(assert (=> d!1689049 (= lt!2148834 e!3261609)))

(declare-fun c!906099 () Bool)

(declare-fun e!3261610 () Bool)

(assert (=> d!1689049 (= c!906099 e!3261610)))

(declare-fun res!2224807 () Bool)

(assert (=> d!1689049 (=> (not res!2224807) (not e!3261610))))

(assert (=> d!1689049 (= res!2224807 ((_ is Cons!60704) lt!2148729))))

(assert (=> d!1689049 (forall!14267 lt!2148729 lambda!263679)))

(assert (=> d!1689049 (= (generalisedConcat!512 lt!2148729) lt!2148834)))

(declare-fun b!5241959 () Bool)

(assert (=> b!5241959 (= e!3261613 (isEmptyExpr!793 lt!2148834))))

(declare-fun b!5241960 () Bool)

(declare-fun e!3261612 () Regex!14843)

(assert (=> b!5241960 (= e!3261612 (Concat!23688 (h!67152 lt!2148729) (generalisedConcat!512 (t!374009 lt!2148729))))))

(declare-fun b!5241961 () Bool)

(assert (=> b!5241961 (= e!3261612 EmptyExpr!14843)))

(declare-fun b!5241962 () Bool)

(assert (=> b!5241962 (= e!3261610 (isEmpty!32636 (t!374009 lt!2148729)))))

(declare-fun b!5241963 () Bool)

(assert (=> b!5241963 (= e!3261609 (h!67152 lt!2148729))))

(declare-fun b!5241964 () Bool)

(assert (=> b!5241964 (= e!3261609 e!3261612)))

(declare-fun c!906098 () Bool)

(assert (=> b!5241964 (= c!906098 ((_ is Cons!60704) lt!2148729))))

(declare-fun b!5241965 () Bool)

(assert (=> b!5241965 (= e!3261611 (isConcat!316 lt!2148834))))

(declare-fun b!5241966 () Bool)

(assert (=> b!5241966 (= e!3261614 e!3261613)))

(declare-fun c!906100 () Bool)

(assert (=> b!5241966 (= c!906100 (isEmpty!32636 lt!2148729))))

(assert (= (and d!1689049 res!2224807) b!5241962))

(assert (= (and d!1689049 c!906099) b!5241963))

(assert (= (and d!1689049 (not c!906099)) b!5241964))

(assert (= (and b!5241964 c!906098) b!5241960))

(assert (= (and b!5241964 (not c!906098)) b!5241961))

(assert (= (and d!1689049 res!2224808) b!5241966))

(assert (= (and b!5241966 c!906100) b!5241959))

(assert (= (and b!5241966 (not c!906100)) b!5241958))

(assert (= (and b!5241958 c!906101) b!5241957))

(assert (= (and b!5241958 (not c!906101)) b!5241965))

(declare-fun m!6286360 () Bool)

(assert (=> b!5241959 m!6286360))

(declare-fun m!6286362 () Bool)

(assert (=> b!5241966 m!6286362))

(declare-fun m!6286364 () Bool)

(assert (=> b!5241962 m!6286364))

(declare-fun m!6286366 () Bool)

(assert (=> d!1689049 m!6286366))

(declare-fun m!6286368 () Bool)

(assert (=> d!1689049 m!6286368))

(declare-fun m!6286370 () Bool)

(assert (=> b!5241965 m!6286370))

(declare-fun m!6286372 () Bool)

(assert (=> b!5241960 m!6286372))

(declare-fun m!6286374 () Bool)

(assert (=> b!5241958 m!6286374))

(assert (=> b!5241958 m!6286374))

(declare-fun m!6286376 () Bool)

(assert (=> b!5241958 m!6286376))

(declare-fun m!6286378 () Bool)

(assert (=> b!5241957 m!6286378))

(assert (=> b!5241223 d!1689049))

(declare-fun bs!1216108 () Bool)

(declare-fun b!5241973 () Bool)

(assert (= bs!1216108 (and b!5241973 b!5241210)))

(declare-fun lambda!263680 () Int)

(assert (=> bs!1216108 (not (= lambda!263680 lambda!263624))))

(declare-fun bs!1216109 () Bool)

(assert (= bs!1216109 (and b!5241973 b!5241896)))

(assert (=> bs!1216109 (= (and (= (reg!15172 lt!2148716) (reg!15172 lt!2148686)) (= lt!2148716 lt!2148686)) (= lambda!263680 lambda!263677))))

(declare-fun bs!1216110 () Bool)

(assert (= bs!1216110 (and b!5241973 d!1688953)))

(assert (=> bs!1216110 (not (= lambda!263680 lambda!263662))))

(assert (=> bs!1216108 (not (= lambda!263680 lambda!263623))))

(assert (=> bs!1216110 (not (= lambda!263680 lambda!263661))))

(declare-fun bs!1216111 () Bool)

(assert (= bs!1216111 (and b!5241973 b!5241895)))

(assert (=> bs!1216111 (not (= lambda!263680 lambda!263678))))

(declare-fun bs!1216112 () Bool)

(assert (= bs!1216112 (and b!5241973 d!1688925)))

(assert (=> bs!1216112 (not (= lambda!263680 lambda!263656))))

(assert (=> b!5241973 true))

(assert (=> b!5241973 true))

(declare-fun bs!1216113 () Bool)

(declare-fun b!5241972 () Bool)

(assert (= bs!1216113 (and b!5241972 b!5241973)))

(declare-fun lambda!263681 () Int)

(assert (=> bs!1216113 (not (= lambda!263681 lambda!263680))))

(declare-fun bs!1216114 () Bool)

(assert (= bs!1216114 (and b!5241972 b!5241210)))

(assert (=> bs!1216114 (= (and (= (regOne!30198 lt!2148716) (regOne!30198 r!7292)) (= (regTwo!30198 lt!2148716) (regTwo!30198 r!7292))) (= lambda!263681 lambda!263624))))

(declare-fun bs!1216115 () Bool)

(assert (= bs!1216115 (and b!5241972 b!5241896)))

(assert (=> bs!1216115 (not (= lambda!263681 lambda!263677))))

(declare-fun bs!1216116 () Bool)

(assert (= bs!1216116 (and b!5241972 d!1688953)))

(assert (=> bs!1216116 (= (and (= (regOne!30198 lt!2148716) (regOne!30198 r!7292)) (= (regTwo!30198 lt!2148716) (regTwo!30198 r!7292))) (= lambda!263681 lambda!263662))))

(assert (=> bs!1216114 (not (= lambda!263681 lambda!263623))))

(assert (=> bs!1216116 (not (= lambda!263681 lambda!263661))))

(declare-fun bs!1216117 () Bool)

(assert (= bs!1216117 (and b!5241972 b!5241895)))

(assert (=> bs!1216117 (= (and (= (regOne!30198 lt!2148716) (regOne!30198 lt!2148686)) (= (regTwo!30198 lt!2148716) (regTwo!30198 lt!2148686))) (= lambda!263681 lambda!263678))))

(declare-fun bs!1216118 () Bool)

(assert (= bs!1216118 (and b!5241972 d!1688925)))

(assert (=> bs!1216118 (not (= lambda!263681 lambda!263656))))

(assert (=> b!5241972 true))

(assert (=> b!5241972 true))

(declare-fun b!5241967 () Bool)

(declare-fun e!3261617 () Bool)

(declare-fun e!3261615 () Bool)

(assert (=> b!5241967 (= e!3261617 e!3261615)))

(declare-fun c!906102 () Bool)

(assert (=> b!5241967 (= c!906102 ((_ is Star!14843) lt!2148716))))

(declare-fun b!5241968 () Bool)

(declare-fun e!3261621 () Bool)

(assert (=> b!5241968 (= e!3261617 e!3261621)))

(declare-fun res!2224810 () Bool)

(assert (=> b!5241968 (= res!2224810 (matchRSpec!1946 (regOne!30199 lt!2148716) s!2326))))

(assert (=> b!5241968 (=> res!2224810 e!3261621)))

(declare-fun b!5241969 () Bool)

(declare-fun c!906105 () Bool)

(assert (=> b!5241969 (= c!906105 ((_ is Union!14843) lt!2148716))))

(declare-fun e!3261619 () Bool)

(assert (=> b!5241969 (= e!3261619 e!3261617)))

(declare-fun b!5241971 () Bool)

(declare-fun e!3261620 () Bool)

(declare-fun call!371081 () Bool)

(assert (=> b!5241971 (= e!3261620 call!371081)))

(declare-fun call!371082 () Bool)

(assert (=> b!5241972 (= e!3261615 call!371082)))

(declare-fun e!3261618 () Bool)

(assert (=> b!5241973 (= e!3261618 call!371082)))

(declare-fun b!5241974 () Bool)

(assert (=> b!5241974 (= e!3261619 (= s!2326 (Cons!60706 (c!905889 lt!2148716) Nil!60706)))))

(declare-fun b!5241975 () Bool)

(declare-fun res!2224809 () Bool)

(assert (=> b!5241975 (=> res!2224809 e!3261618)))

(assert (=> b!5241975 (= res!2224809 call!371081)))

(assert (=> b!5241975 (= e!3261615 e!3261618)))

(declare-fun bm!371076 () Bool)

(assert (=> bm!371076 (= call!371082 (Exists!2024 (ite c!906102 lambda!263680 lambda!263681)))))

(declare-fun b!5241976 () Bool)

(declare-fun c!906103 () Bool)

(assert (=> b!5241976 (= c!906103 ((_ is ElementMatch!14843) lt!2148716))))

(declare-fun e!3261616 () Bool)

(assert (=> b!5241976 (= e!3261616 e!3261619)))

(declare-fun b!5241977 () Bool)

(assert (=> b!5241977 (= e!3261621 (matchRSpec!1946 (regTwo!30199 lt!2148716) s!2326))))

(declare-fun bm!371077 () Bool)

(assert (=> bm!371077 (= call!371081 (isEmpty!32639 s!2326))))

(declare-fun b!5241970 () Bool)

(assert (=> b!5241970 (= e!3261620 e!3261616)))

(declare-fun res!2224811 () Bool)

(assert (=> b!5241970 (= res!2224811 (not ((_ is EmptyLang!14843) lt!2148716)))))

(assert (=> b!5241970 (=> (not res!2224811) (not e!3261616))))

(declare-fun d!1689051 () Bool)

(declare-fun c!906104 () Bool)

(assert (=> d!1689051 (= c!906104 ((_ is EmptyExpr!14843) lt!2148716))))

(assert (=> d!1689051 (= (matchRSpec!1946 lt!2148716 s!2326) e!3261620)))

(assert (= (and d!1689051 c!906104) b!5241971))

(assert (= (and d!1689051 (not c!906104)) b!5241970))

(assert (= (and b!5241970 res!2224811) b!5241976))

(assert (= (and b!5241976 c!906103) b!5241974))

(assert (= (and b!5241976 (not c!906103)) b!5241969))

(assert (= (and b!5241969 c!906105) b!5241968))

(assert (= (and b!5241969 (not c!906105)) b!5241967))

(assert (= (and b!5241968 (not res!2224810)) b!5241977))

(assert (= (and b!5241967 c!906102) b!5241975))

(assert (= (and b!5241967 (not c!906102)) b!5241972))

(assert (= (and b!5241975 (not res!2224809)) b!5241973))

(assert (= (or b!5241973 b!5241972) bm!371076))

(assert (= (or b!5241971 b!5241975) bm!371077))

(declare-fun m!6286380 () Bool)

(assert (=> b!5241968 m!6286380))

(declare-fun m!6286382 () Bool)

(assert (=> bm!371076 m!6286382))

(declare-fun m!6286384 () Bool)

(assert (=> b!5241977 m!6286384))

(assert (=> bm!371077 m!6285834))

(assert (=> b!5241223 d!1689051))

(declare-fun d!1689053 () Bool)

(assert (=> d!1689053 (= (matchR!7028 lt!2148686 s!2326) (matchRSpec!1946 lt!2148686 s!2326))))

(declare-fun lt!2148835 () Unit!152758)

(assert (=> d!1689053 (= lt!2148835 (choose!39024 lt!2148686 s!2326))))

(assert (=> d!1689053 (validRegex!6579 lt!2148686)))

(assert (=> d!1689053 (= (mainMatchTheorem!1946 lt!2148686 s!2326) lt!2148835)))

(declare-fun bs!1216119 () Bool)

(assert (= bs!1216119 d!1689053))

(assert (=> bs!1216119 m!6285716))

(assert (=> bs!1216119 m!6285722))

(declare-fun m!6286386 () Bool)

(assert (=> bs!1216119 m!6286386))

(assert (=> bs!1216119 m!6286342))

(assert (=> b!5241223 d!1689053))

(declare-fun d!1689055 () Bool)

(declare-fun lt!2148838 () Regex!14843)

(assert (=> d!1689055 (validRegex!6579 lt!2148838)))

(assert (=> d!1689055 (= lt!2148838 (generalisedUnion!772 (unfocusZipperList!285 zl!343)))))

(assert (=> d!1689055 (= (unfocusZipper!585 zl!343) lt!2148838)))

(declare-fun bs!1216120 () Bool)

(assert (= bs!1216120 d!1689055))

(declare-fun m!6286388 () Bool)

(assert (=> bs!1216120 m!6286388))

(assert (=> bs!1216120 m!6285744))

(assert (=> bs!1216120 m!6285744))

(assert (=> bs!1216120 m!6285746))

(assert (=> b!5241202 d!1689055))

(declare-fun bs!1216121 () Bool)

(declare-fun b!5241984 () Bool)

(assert (= bs!1216121 (and b!5241984 b!5241973)))

(declare-fun lambda!263682 () Int)

(assert (=> bs!1216121 (= (and (= (reg!15172 r!7292) (reg!15172 lt!2148716)) (= r!7292 lt!2148716)) (= lambda!263682 lambda!263680))))

(declare-fun bs!1216122 () Bool)

(assert (= bs!1216122 (and b!5241984 b!5241210)))

(assert (=> bs!1216122 (not (= lambda!263682 lambda!263624))))

(declare-fun bs!1216123 () Bool)

(assert (= bs!1216123 (and b!5241984 b!5241896)))

(assert (=> bs!1216123 (= (and (= (reg!15172 r!7292) (reg!15172 lt!2148686)) (= r!7292 lt!2148686)) (= lambda!263682 lambda!263677))))

(declare-fun bs!1216124 () Bool)

(assert (= bs!1216124 (and b!5241984 d!1688953)))

(assert (=> bs!1216124 (not (= lambda!263682 lambda!263662))))

(assert (=> bs!1216122 (not (= lambda!263682 lambda!263623))))

(declare-fun bs!1216125 () Bool)

(assert (= bs!1216125 (and b!5241984 b!5241972)))

(assert (=> bs!1216125 (not (= lambda!263682 lambda!263681))))

(assert (=> bs!1216124 (not (= lambda!263682 lambda!263661))))

(declare-fun bs!1216126 () Bool)

(assert (= bs!1216126 (and b!5241984 b!5241895)))

(assert (=> bs!1216126 (not (= lambda!263682 lambda!263678))))

(declare-fun bs!1216127 () Bool)

(assert (= bs!1216127 (and b!5241984 d!1688925)))

(assert (=> bs!1216127 (not (= lambda!263682 lambda!263656))))

(assert (=> b!5241984 true))

(assert (=> b!5241984 true))

(declare-fun bs!1216128 () Bool)

(declare-fun b!5241983 () Bool)

(assert (= bs!1216128 (and b!5241983 b!5241973)))

(declare-fun lambda!263683 () Int)

(assert (=> bs!1216128 (not (= lambda!263683 lambda!263680))))

(declare-fun bs!1216129 () Bool)

(assert (= bs!1216129 (and b!5241983 b!5241210)))

(assert (=> bs!1216129 (= lambda!263683 lambda!263624)))

(declare-fun bs!1216130 () Bool)

(assert (= bs!1216130 (and b!5241983 b!5241896)))

(assert (=> bs!1216130 (not (= lambda!263683 lambda!263677))))

(declare-fun bs!1216131 () Bool)

(assert (= bs!1216131 (and b!5241983 d!1688953)))

(assert (=> bs!1216131 (= lambda!263683 lambda!263662)))

(declare-fun bs!1216132 () Bool)

(assert (= bs!1216132 (and b!5241983 b!5241984)))

(assert (=> bs!1216132 (not (= lambda!263683 lambda!263682))))

(assert (=> bs!1216129 (not (= lambda!263683 lambda!263623))))

(declare-fun bs!1216133 () Bool)

(assert (= bs!1216133 (and b!5241983 b!5241972)))

(assert (=> bs!1216133 (= (and (= (regOne!30198 r!7292) (regOne!30198 lt!2148716)) (= (regTwo!30198 r!7292) (regTwo!30198 lt!2148716))) (= lambda!263683 lambda!263681))))

(assert (=> bs!1216131 (not (= lambda!263683 lambda!263661))))

(declare-fun bs!1216134 () Bool)

(assert (= bs!1216134 (and b!5241983 b!5241895)))

(assert (=> bs!1216134 (= (and (= (regOne!30198 r!7292) (regOne!30198 lt!2148686)) (= (regTwo!30198 r!7292) (regTwo!30198 lt!2148686))) (= lambda!263683 lambda!263678))))

(declare-fun bs!1216135 () Bool)

(assert (= bs!1216135 (and b!5241983 d!1688925)))

(assert (=> bs!1216135 (not (= lambda!263683 lambda!263656))))

(assert (=> b!5241983 true))

(assert (=> b!5241983 true))

(declare-fun b!5241978 () Bool)

(declare-fun e!3261624 () Bool)

(declare-fun e!3261622 () Bool)

(assert (=> b!5241978 (= e!3261624 e!3261622)))

(declare-fun c!906106 () Bool)

(assert (=> b!5241978 (= c!906106 ((_ is Star!14843) r!7292))))

(declare-fun b!5241979 () Bool)

(declare-fun e!3261628 () Bool)

(assert (=> b!5241979 (= e!3261624 e!3261628)))

(declare-fun res!2224813 () Bool)

(assert (=> b!5241979 (= res!2224813 (matchRSpec!1946 (regOne!30199 r!7292) s!2326))))

(assert (=> b!5241979 (=> res!2224813 e!3261628)))

(declare-fun b!5241980 () Bool)

(declare-fun c!906109 () Bool)

(assert (=> b!5241980 (= c!906109 ((_ is Union!14843) r!7292))))

(declare-fun e!3261626 () Bool)

(assert (=> b!5241980 (= e!3261626 e!3261624)))

(declare-fun b!5241982 () Bool)

(declare-fun e!3261627 () Bool)

(declare-fun call!371083 () Bool)

(assert (=> b!5241982 (= e!3261627 call!371083)))

(declare-fun call!371084 () Bool)

(assert (=> b!5241983 (= e!3261622 call!371084)))

(declare-fun e!3261625 () Bool)

(assert (=> b!5241984 (= e!3261625 call!371084)))

(declare-fun b!5241985 () Bool)

(assert (=> b!5241985 (= e!3261626 (= s!2326 (Cons!60706 (c!905889 r!7292) Nil!60706)))))

(declare-fun b!5241986 () Bool)

(declare-fun res!2224812 () Bool)

(assert (=> b!5241986 (=> res!2224812 e!3261625)))

(assert (=> b!5241986 (= res!2224812 call!371083)))

(assert (=> b!5241986 (= e!3261622 e!3261625)))

(declare-fun bm!371078 () Bool)

(assert (=> bm!371078 (= call!371084 (Exists!2024 (ite c!906106 lambda!263682 lambda!263683)))))

(declare-fun b!5241987 () Bool)

(declare-fun c!906107 () Bool)

(assert (=> b!5241987 (= c!906107 ((_ is ElementMatch!14843) r!7292))))

(declare-fun e!3261623 () Bool)

(assert (=> b!5241987 (= e!3261623 e!3261626)))

(declare-fun b!5241988 () Bool)

(assert (=> b!5241988 (= e!3261628 (matchRSpec!1946 (regTwo!30199 r!7292) s!2326))))

(declare-fun bm!371079 () Bool)

(assert (=> bm!371079 (= call!371083 (isEmpty!32639 s!2326))))

(declare-fun b!5241981 () Bool)

(assert (=> b!5241981 (= e!3261627 e!3261623)))

(declare-fun res!2224814 () Bool)

(assert (=> b!5241981 (= res!2224814 (not ((_ is EmptyLang!14843) r!7292)))))

(assert (=> b!5241981 (=> (not res!2224814) (not e!3261623))))

(declare-fun d!1689057 () Bool)

(declare-fun c!906108 () Bool)

(assert (=> d!1689057 (= c!906108 ((_ is EmptyExpr!14843) r!7292))))

(assert (=> d!1689057 (= (matchRSpec!1946 r!7292 s!2326) e!3261627)))

(assert (= (and d!1689057 c!906108) b!5241982))

(assert (= (and d!1689057 (not c!906108)) b!5241981))

(assert (= (and b!5241981 res!2224814) b!5241987))

(assert (= (and b!5241987 c!906107) b!5241985))

(assert (= (and b!5241987 (not c!906107)) b!5241980))

(assert (= (and b!5241980 c!906109) b!5241979))

(assert (= (and b!5241980 (not c!906109)) b!5241978))

(assert (= (and b!5241979 (not res!2224813)) b!5241988))

(assert (= (and b!5241978 c!906106) b!5241986))

(assert (= (and b!5241978 (not c!906106)) b!5241983))

(assert (= (and b!5241986 (not res!2224812)) b!5241984))

(assert (= (or b!5241984 b!5241983) bm!371078))

(assert (= (or b!5241982 b!5241986) bm!371079))

(declare-fun m!6286390 () Bool)

(assert (=> b!5241979 m!6286390))

(declare-fun m!6286392 () Bool)

(assert (=> bm!371078 m!6286392))

(declare-fun m!6286394 () Bool)

(assert (=> b!5241988 m!6286394))

(assert (=> bm!371079 m!6285834))

(assert (=> b!5241222 d!1689057))

(declare-fun b!5241989 () Bool)

(declare-fun e!3261630 () Bool)

(declare-fun e!3261635 () Bool)

(assert (=> b!5241989 (= e!3261630 e!3261635)))

(declare-fun c!906110 () Bool)

(assert (=> b!5241989 (= c!906110 ((_ is EmptyLang!14843) r!7292))))

(declare-fun b!5241990 () Bool)

(declare-fun e!3261632 () Bool)

(assert (=> b!5241990 (= e!3261632 (not (= (head!11233 s!2326) (c!905889 r!7292))))))

(declare-fun b!5241991 () Bool)

(declare-fun res!2224816 () Bool)

(declare-fun e!3261634 () Bool)

(assert (=> b!5241991 (=> res!2224816 e!3261634)))

(declare-fun e!3261631 () Bool)

(assert (=> b!5241991 (= res!2224816 e!3261631)))

(declare-fun res!2224815 () Bool)

(assert (=> b!5241991 (=> (not res!2224815) (not e!3261631))))

(declare-fun lt!2148839 () Bool)

(assert (=> b!5241991 (= res!2224815 lt!2148839)))

(declare-fun d!1689059 () Bool)

(assert (=> d!1689059 e!3261630))

(declare-fun c!906111 () Bool)

(assert (=> d!1689059 (= c!906111 ((_ is EmptyExpr!14843) r!7292))))

(declare-fun e!3261629 () Bool)

(assert (=> d!1689059 (= lt!2148839 e!3261629)))

(declare-fun c!906112 () Bool)

(assert (=> d!1689059 (= c!906112 (isEmpty!32639 s!2326))))

(assert (=> d!1689059 (validRegex!6579 r!7292)))

(assert (=> d!1689059 (= (matchR!7028 r!7292 s!2326) lt!2148839)))

(declare-fun b!5241992 () Bool)

(declare-fun e!3261633 () Bool)

(assert (=> b!5241992 (= e!3261633 e!3261632)))

(declare-fun res!2224822 () Bool)

(assert (=> b!5241992 (=> res!2224822 e!3261632)))

(declare-fun call!371085 () Bool)

(assert (=> b!5241992 (= res!2224822 call!371085)))

(declare-fun b!5241993 () Bool)

(assert (=> b!5241993 (= e!3261631 (= (head!11233 s!2326) (c!905889 r!7292)))))

(declare-fun b!5241994 () Bool)

(assert (=> b!5241994 (= e!3261629 (matchR!7028 (derivativeStep!4079 r!7292 (head!11233 s!2326)) (tail!10330 s!2326)))))

(declare-fun b!5241995 () Bool)

(declare-fun res!2224821 () Bool)

(assert (=> b!5241995 (=> (not res!2224821) (not e!3261631))))

(assert (=> b!5241995 (= res!2224821 (not call!371085))))

(declare-fun b!5241996 () Bool)

(assert (=> b!5241996 (= e!3261629 (nullable!5012 r!7292))))

(declare-fun b!5241997 () Bool)

(assert (=> b!5241997 (= e!3261634 e!3261633)))

(declare-fun res!2224818 () Bool)

(assert (=> b!5241997 (=> (not res!2224818) (not e!3261633))))

(assert (=> b!5241997 (= res!2224818 (not lt!2148839))))

(declare-fun b!5241998 () Bool)

(declare-fun res!2224820 () Bool)

(assert (=> b!5241998 (=> res!2224820 e!3261632)))

(assert (=> b!5241998 (= res!2224820 (not (isEmpty!32639 (tail!10330 s!2326))))))

(declare-fun b!5241999 () Bool)

(assert (=> b!5241999 (= e!3261635 (not lt!2148839))))

(declare-fun bm!371080 () Bool)

(assert (=> bm!371080 (= call!371085 (isEmpty!32639 s!2326))))

(declare-fun b!5242000 () Bool)

(assert (=> b!5242000 (= e!3261630 (= lt!2148839 call!371085))))

(declare-fun b!5242001 () Bool)

(declare-fun res!2224819 () Bool)

(assert (=> b!5242001 (=> (not res!2224819) (not e!3261631))))

(assert (=> b!5242001 (= res!2224819 (isEmpty!32639 (tail!10330 s!2326)))))

(declare-fun b!5242002 () Bool)

(declare-fun res!2224817 () Bool)

(assert (=> b!5242002 (=> res!2224817 e!3261634)))

(assert (=> b!5242002 (= res!2224817 (not ((_ is ElementMatch!14843) r!7292)))))

(assert (=> b!5242002 (= e!3261635 e!3261634)))

(assert (= (and d!1689059 c!906112) b!5241996))

(assert (= (and d!1689059 (not c!906112)) b!5241994))

(assert (= (and d!1689059 c!906111) b!5242000))

(assert (= (and d!1689059 (not c!906111)) b!5241989))

(assert (= (and b!5241989 c!906110) b!5241999))

(assert (= (and b!5241989 (not c!906110)) b!5242002))

(assert (= (and b!5242002 (not res!2224817)) b!5241991))

(assert (= (and b!5241991 res!2224815) b!5241995))

(assert (= (and b!5241995 res!2224821) b!5242001))

(assert (= (and b!5242001 res!2224819) b!5241993))

(assert (= (and b!5241991 (not res!2224816)) b!5241997))

(assert (= (and b!5241997 res!2224818) b!5241992))

(assert (= (and b!5241992 (not res!2224822)) b!5241998))

(assert (= (and b!5241998 (not res!2224820)) b!5241990))

(assert (= (or b!5242000 b!5241992 b!5241995) bm!371080))

(assert (=> b!5241998 m!6285842))

(assert (=> b!5241998 m!6285842))

(assert (=> b!5241998 m!6286340))

(assert (=> d!1689059 m!6285834))

(assert (=> d!1689059 m!6285732))

(assert (=> b!5242001 m!6285842))

(assert (=> b!5242001 m!6285842))

(assert (=> b!5242001 m!6286340))

(declare-fun m!6286396 () Bool)

(assert (=> b!5241996 m!6286396))

(assert (=> b!5241994 m!6285838))

(assert (=> b!5241994 m!6285838))

(declare-fun m!6286398 () Bool)

(assert (=> b!5241994 m!6286398))

(assert (=> b!5241994 m!6285842))

(assert (=> b!5241994 m!6286398))

(assert (=> b!5241994 m!6285842))

(declare-fun m!6286400 () Bool)

(assert (=> b!5241994 m!6286400))

(assert (=> bm!371080 m!6285834))

(assert (=> b!5241993 m!6285838))

(assert (=> b!5241990 m!6285838))

(assert (=> b!5241222 d!1689059))

(declare-fun d!1689061 () Bool)

(assert (=> d!1689061 (= (matchR!7028 r!7292 s!2326) (matchRSpec!1946 r!7292 s!2326))))

(declare-fun lt!2148840 () Unit!152758)

(assert (=> d!1689061 (= lt!2148840 (choose!39024 r!7292 s!2326))))

(assert (=> d!1689061 (validRegex!6579 r!7292)))

(assert (=> d!1689061 (= (mainMatchTheorem!1946 r!7292 s!2326) lt!2148840)))

(declare-fun bs!1216136 () Bool)

(assert (= bs!1216136 d!1689061))

(assert (=> bs!1216136 m!6285652))

(assert (=> bs!1216136 m!6285650))

(declare-fun m!6286402 () Bool)

(assert (=> bs!1216136 m!6286402))

(assert (=> bs!1216136 m!6285732))

(assert (=> b!5241222 d!1689061))

(declare-fun b!5242025 () Bool)

(declare-fun e!3261652 () (InoxSet Context!8454))

(declare-fun call!371102 () (InoxSet Context!8454))

(assert (=> b!5242025 (= e!3261652 call!371102)))

(declare-fun bm!371093 () Bool)

(declare-fun call!371100 () (InoxSet Context!8454))

(declare-fun call!371099 () (InoxSet Context!8454))

(assert (=> bm!371093 (= call!371100 call!371099)))

(declare-fun b!5242026 () Bool)

(declare-fun c!906124 () Bool)

(declare-fun e!3261650 () Bool)

(assert (=> b!5242026 (= c!906124 e!3261650)))

(declare-fun res!2224825 () Bool)

(assert (=> b!5242026 (=> (not res!2224825) (not e!3261650))))

(assert (=> b!5242026 (= res!2224825 ((_ is Concat!23688) (h!67152 (exprs!4727 (h!67153 zl!343)))))))

(declare-fun e!3261648 () (InoxSet Context!8454))

(declare-fun e!3261649 () (InoxSet Context!8454))

(assert (=> b!5242026 (= e!3261648 e!3261649)))

(declare-fun b!5242027 () Bool)

(declare-fun e!3261653 () (InoxSet Context!8454))

(assert (=> b!5242027 (= e!3261653 e!3261648)))

(declare-fun c!906125 () Bool)

(assert (=> b!5242027 (= c!906125 ((_ is Union!14843) (h!67152 (exprs!4727 (h!67153 zl!343)))))))

(declare-fun b!5242028 () Bool)

(assert (=> b!5242028 (= e!3261652 ((as const (Array Context!8454 Bool)) false))))

(declare-fun b!5242029 () Bool)

(assert (=> b!5242029 (= e!3261653 (store ((as const (Array Context!8454 Bool)) false) lt!2148720 true))))

(declare-fun b!5242030 () Bool)

(declare-fun call!371098 () (InoxSet Context!8454))

(assert (=> b!5242030 (= e!3261648 ((_ map or) call!371099 call!371098))))

(declare-fun b!5242032 () Bool)

(declare-fun e!3261651 () (InoxSet Context!8454))

(assert (=> b!5242032 (= e!3261649 e!3261651)))

(declare-fun c!906127 () Bool)

(assert (=> b!5242032 (= c!906127 ((_ is Concat!23688) (h!67152 (exprs!4727 (h!67153 zl!343)))))))

(declare-fun b!5242033 () Bool)

(assert (=> b!5242033 (= e!3261649 ((_ map or) call!371098 call!371100))))

(declare-fun bm!371094 () Bool)

(assert (=> bm!371094 (= call!371102 call!371100)))

(declare-fun call!371103 () List!60828)

(declare-fun bm!371095 () Bool)

(declare-fun $colon$colon!1308 (List!60828 Regex!14843) List!60828)

(assert (=> bm!371095 (= call!371103 ($colon$colon!1308 (exprs!4727 lt!2148720) (ite (or c!906124 c!906127) (regTwo!30198 (h!67152 (exprs!4727 (h!67153 zl!343)))) (h!67152 (exprs!4727 (h!67153 zl!343))))))))

(declare-fun b!5242034 () Bool)

(assert (=> b!5242034 (= e!3261650 (nullable!5012 (regOne!30198 (h!67152 (exprs!4727 (h!67153 zl!343))))))))

(declare-fun bm!371096 () Bool)

(declare-fun call!371101 () List!60828)

(assert (=> bm!371096 (= call!371101 call!371103)))

(declare-fun bm!371097 () Bool)

(assert (=> bm!371097 (= call!371098 (derivationStepZipperDown!291 (ite c!906125 (regTwo!30199 (h!67152 (exprs!4727 (h!67153 zl!343)))) (regOne!30198 (h!67152 (exprs!4727 (h!67153 zl!343))))) (ite c!906125 lt!2148720 (Context!8455 call!371103)) (h!67154 s!2326)))))

(declare-fun b!5242035 () Bool)

(declare-fun c!906126 () Bool)

(assert (=> b!5242035 (= c!906126 ((_ is Star!14843) (h!67152 (exprs!4727 (h!67153 zl!343)))))))

(assert (=> b!5242035 (= e!3261651 e!3261652)))

(declare-fun bm!371098 () Bool)

(assert (=> bm!371098 (= call!371099 (derivationStepZipperDown!291 (ite c!906125 (regOne!30199 (h!67152 (exprs!4727 (h!67153 zl!343)))) (ite c!906124 (regTwo!30198 (h!67152 (exprs!4727 (h!67153 zl!343)))) (ite c!906127 (regOne!30198 (h!67152 (exprs!4727 (h!67153 zl!343)))) (reg!15172 (h!67152 (exprs!4727 (h!67153 zl!343))))))) (ite (or c!906125 c!906124) lt!2148720 (Context!8455 call!371101)) (h!67154 s!2326)))))

(declare-fun b!5242031 () Bool)

(assert (=> b!5242031 (= e!3261651 call!371102)))

(declare-fun d!1689063 () Bool)

(declare-fun c!906123 () Bool)

(assert (=> d!1689063 (= c!906123 (and ((_ is ElementMatch!14843) (h!67152 (exprs!4727 (h!67153 zl!343)))) (= (c!905889 (h!67152 (exprs!4727 (h!67153 zl!343)))) (h!67154 s!2326))))))

(assert (=> d!1689063 (= (derivationStepZipperDown!291 (h!67152 (exprs!4727 (h!67153 zl!343))) lt!2148720 (h!67154 s!2326)) e!3261653)))

(assert (= (and d!1689063 c!906123) b!5242029))

(assert (= (and d!1689063 (not c!906123)) b!5242027))

(assert (= (and b!5242027 c!906125) b!5242030))

(assert (= (and b!5242027 (not c!906125)) b!5242026))

(assert (= (and b!5242026 res!2224825) b!5242034))

(assert (= (and b!5242026 c!906124) b!5242033))

(assert (= (and b!5242026 (not c!906124)) b!5242032))

(assert (= (and b!5242032 c!906127) b!5242031))

(assert (= (and b!5242032 (not c!906127)) b!5242035))

(assert (= (and b!5242035 c!906126) b!5242025))

(assert (= (and b!5242035 (not c!906126)) b!5242028))

(assert (= (or b!5242031 b!5242025) bm!371096))

(assert (= (or b!5242031 b!5242025) bm!371094))

(assert (= (or b!5242033 bm!371096) bm!371095))

(assert (= (or b!5242033 bm!371094) bm!371093))

(assert (= (or b!5242030 b!5242033) bm!371097))

(assert (= (or b!5242030 bm!371093) bm!371098))

(declare-fun m!6286404 () Bool)

(assert (=> bm!371098 m!6286404))

(declare-fun m!6286406 () Bool)

(assert (=> bm!371095 m!6286406))

(declare-fun m!6286408 () Bool)

(assert (=> bm!371097 m!6286408))

(declare-fun m!6286410 () Bool)

(assert (=> b!5242029 m!6286410))

(declare-fun m!6286412 () Bool)

(assert (=> b!5242034 m!6286412))

(assert (=> b!5241201 d!1689063))

(declare-fun d!1689065 () Bool)

(declare-fun c!906128 () Bool)

(declare-fun e!3261655 () Bool)

(assert (=> d!1689065 (= c!906128 e!3261655)))

(declare-fun res!2224826 () Bool)

(assert (=> d!1689065 (=> (not res!2224826) (not e!3261655))))

(assert (=> d!1689065 (= res!2224826 ((_ is Cons!60704) (exprs!4727 lt!2148720)))))

(declare-fun e!3261656 () (InoxSet Context!8454))

(assert (=> d!1689065 (= (derivationStepZipperUp!215 lt!2148720 (h!67154 s!2326)) e!3261656)))

(declare-fun bm!371099 () Bool)

(declare-fun call!371104 () (InoxSet Context!8454))

(assert (=> bm!371099 (= call!371104 (derivationStepZipperDown!291 (h!67152 (exprs!4727 lt!2148720)) (Context!8455 (t!374009 (exprs!4727 lt!2148720))) (h!67154 s!2326)))))

(declare-fun b!5242036 () Bool)

(assert (=> b!5242036 (= e!3261655 (nullable!5012 (h!67152 (exprs!4727 lt!2148720))))))

(declare-fun b!5242037 () Bool)

(declare-fun e!3261654 () (InoxSet Context!8454))

(assert (=> b!5242037 (= e!3261654 ((as const (Array Context!8454 Bool)) false))))

(declare-fun b!5242038 () Bool)

(assert (=> b!5242038 (= e!3261656 e!3261654)))

(declare-fun c!906129 () Bool)

(assert (=> b!5242038 (= c!906129 ((_ is Cons!60704) (exprs!4727 lt!2148720)))))

(declare-fun b!5242039 () Bool)

(assert (=> b!5242039 (= e!3261654 call!371104)))

(declare-fun b!5242040 () Bool)

(assert (=> b!5242040 (= e!3261656 ((_ map or) call!371104 (derivationStepZipperUp!215 (Context!8455 (t!374009 (exprs!4727 lt!2148720))) (h!67154 s!2326))))))

(assert (= (and d!1689065 res!2224826) b!5242036))

(assert (= (and d!1689065 c!906128) b!5242040))

(assert (= (and d!1689065 (not c!906128)) b!5242038))

(assert (= (and b!5242038 c!906129) b!5242039))

(assert (= (and b!5242038 (not c!906129)) b!5242037))

(assert (= (or b!5242040 b!5242039) bm!371099))

(declare-fun m!6286414 () Bool)

(assert (=> bm!371099 m!6286414))

(declare-fun m!6286416 () Bool)

(assert (=> b!5242036 m!6286416))

(declare-fun m!6286418 () Bool)

(assert (=> b!5242040 m!6286418))

(assert (=> b!5241201 d!1689065))

(declare-fun d!1689067 () Bool)

(assert (=> d!1689067 (= (nullable!5012 (h!67152 (exprs!4727 (h!67153 zl!343)))) (nullableFct!1409 (h!67152 (exprs!4727 (h!67153 zl!343)))))))

(declare-fun bs!1216137 () Bool)

(assert (= bs!1216137 d!1689067))

(declare-fun m!6286420 () Bool)

(assert (=> bs!1216137 m!6286420))

(assert (=> b!5241201 d!1689067))

(declare-fun d!1689069 () Bool)

(declare-fun c!906130 () Bool)

(declare-fun e!3261658 () Bool)

(assert (=> d!1689069 (= c!906130 e!3261658)))

(declare-fun res!2224827 () Bool)

(assert (=> d!1689069 (=> (not res!2224827) (not e!3261658))))

(assert (=> d!1689069 (= res!2224827 ((_ is Cons!60704) (exprs!4727 (Context!8455 (Cons!60704 (h!67152 (exprs!4727 (h!67153 zl!343))) (t!374009 (exprs!4727 (h!67153 zl!343))))))))))

(declare-fun e!3261659 () (InoxSet Context!8454))

(assert (=> d!1689069 (= (derivationStepZipperUp!215 (Context!8455 (Cons!60704 (h!67152 (exprs!4727 (h!67153 zl!343))) (t!374009 (exprs!4727 (h!67153 zl!343))))) (h!67154 s!2326)) e!3261659)))

(declare-fun bm!371100 () Bool)

(declare-fun call!371105 () (InoxSet Context!8454))

(assert (=> bm!371100 (= call!371105 (derivationStepZipperDown!291 (h!67152 (exprs!4727 (Context!8455 (Cons!60704 (h!67152 (exprs!4727 (h!67153 zl!343))) (t!374009 (exprs!4727 (h!67153 zl!343))))))) (Context!8455 (t!374009 (exprs!4727 (Context!8455 (Cons!60704 (h!67152 (exprs!4727 (h!67153 zl!343))) (t!374009 (exprs!4727 (h!67153 zl!343)))))))) (h!67154 s!2326)))))

(declare-fun b!5242041 () Bool)

(assert (=> b!5242041 (= e!3261658 (nullable!5012 (h!67152 (exprs!4727 (Context!8455 (Cons!60704 (h!67152 (exprs!4727 (h!67153 zl!343))) (t!374009 (exprs!4727 (h!67153 zl!343)))))))))))

(declare-fun b!5242042 () Bool)

(declare-fun e!3261657 () (InoxSet Context!8454))

(assert (=> b!5242042 (= e!3261657 ((as const (Array Context!8454 Bool)) false))))

(declare-fun b!5242043 () Bool)

(assert (=> b!5242043 (= e!3261659 e!3261657)))

(declare-fun c!906131 () Bool)

(assert (=> b!5242043 (= c!906131 ((_ is Cons!60704) (exprs!4727 (Context!8455 (Cons!60704 (h!67152 (exprs!4727 (h!67153 zl!343))) (t!374009 (exprs!4727 (h!67153 zl!343))))))))))

(declare-fun b!5242044 () Bool)

(assert (=> b!5242044 (= e!3261657 call!371105)))

(declare-fun b!5242045 () Bool)

(assert (=> b!5242045 (= e!3261659 ((_ map or) call!371105 (derivationStepZipperUp!215 (Context!8455 (t!374009 (exprs!4727 (Context!8455 (Cons!60704 (h!67152 (exprs!4727 (h!67153 zl!343))) (t!374009 (exprs!4727 (h!67153 zl!343)))))))) (h!67154 s!2326))))))

(assert (= (and d!1689069 res!2224827) b!5242041))

(assert (= (and d!1689069 c!906130) b!5242045))

(assert (= (and d!1689069 (not c!906130)) b!5242043))

(assert (= (and b!5242043 c!906131) b!5242044))

(assert (= (and b!5242043 (not c!906131)) b!5242042))

(assert (= (or b!5242045 b!5242044) bm!371100))

(declare-fun m!6286422 () Bool)

(assert (=> bm!371100 m!6286422))

(declare-fun m!6286424 () Bool)

(assert (=> b!5242041 m!6286424))

(declare-fun m!6286426 () Bool)

(assert (=> b!5242045 m!6286426))

(assert (=> b!5241201 d!1689069))

(declare-fun d!1689071 () Bool)

(assert (=> d!1689071 (= (flatMap!570 z!1189 lambda!263625) (choose!39018 z!1189 lambda!263625))))

(declare-fun bs!1216138 () Bool)

(assert (= bs!1216138 d!1689071))

(declare-fun m!6286428 () Bool)

(assert (=> bs!1216138 m!6286428))

(assert (=> b!5241201 d!1689071))

(declare-fun d!1689073 () Bool)

(declare-fun c!906132 () Bool)

(declare-fun e!3261661 () Bool)

(assert (=> d!1689073 (= c!906132 e!3261661)))

(declare-fun res!2224828 () Bool)

(assert (=> d!1689073 (=> (not res!2224828) (not e!3261661))))

(assert (=> d!1689073 (= res!2224828 ((_ is Cons!60704) (exprs!4727 (h!67153 zl!343))))))

(declare-fun e!3261662 () (InoxSet Context!8454))

(assert (=> d!1689073 (= (derivationStepZipperUp!215 (h!67153 zl!343) (h!67154 s!2326)) e!3261662)))

(declare-fun bm!371101 () Bool)

(declare-fun call!371106 () (InoxSet Context!8454))

(assert (=> bm!371101 (= call!371106 (derivationStepZipperDown!291 (h!67152 (exprs!4727 (h!67153 zl!343))) (Context!8455 (t!374009 (exprs!4727 (h!67153 zl!343)))) (h!67154 s!2326)))))

(declare-fun b!5242046 () Bool)

(assert (=> b!5242046 (= e!3261661 (nullable!5012 (h!67152 (exprs!4727 (h!67153 zl!343)))))))

(declare-fun b!5242047 () Bool)

(declare-fun e!3261660 () (InoxSet Context!8454))

(assert (=> b!5242047 (= e!3261660 ((as const (Array Context!8454 Bool)) false))))

(declare-fun b!5242048 () Bool)

(assert (=> b!5242048 (= e!3261662 e!3261660)))

(declare-fun c!906133 () Bool)

(assert (=> b!5242048 (= c!906133 ((_ is Cons!60704) (exprs!4727 (h!67153 zl!343))))))

(declare-fun b!5242049 () Bool)

(assert (=> b!5242049 (= e!3261660 call!371106)))

(declare-fun b!5242050 () Bool)

(assert (=> b!5242050 (= e!3261662 ((_ map or) call!371106 (derivationStepZipperUp!215 (Context!8455 (t!374009 (exprs!4727 (h!67153 zl!343)))) (h!67154 s!2326))))))

(assert (= (and d!1689073 res!2224828) b!5242046))

(assert (= (and d!1689073 c!906132) b!5242050))

(assert (= (and d!1689073 (not c!906132)) b!5242048))

(assert (= (and b!5242048 c!906133) b!5242049))

(assert (= (and b!5242048 (not c!906133)) b!5242047))

(assert (= (or b!5242050 b!5242049) bm!371101))

(declare-fun m!6286430 () Bool)

(assert (=> bm!371101 m!6286430))

(assert (=> b!5242046 m!6285758))

(declare-fun m!6286432 () Bool)

(assert (=> b!5242050 m!6286432))

(assert (=> b!5241201 d!1689073))

(declare-fun d!1689075 () Bool)

(assert (=> d!1689075 (= (flatMap!570 z!1189 lambda!263625) (dynLambda!23986 lambda!263625 (h!67153 zl!343)))))

(declare-fun lt!2148841 () Unit!152758)

(assert (=> d!1689075 (= lt!2148841 (choose!39019 z!1189 (h!67153 zl!343) lambda!263625))))

(assert (=> d!1689075 (= z!1189 (store ((as const (Array Context!8454 Bool)) false) (h!67153 zl!343) true))))

(assert (=> d!1689075 (= (lemmaFlatMapOnSingletonSet!102 z!1189 (h!67153 zl!343) lambda!263625) lt!2148841)))

(declare-fun b_lambda!202557 () Bool)

(assert (=> (not b_lambda!202557) (not d!1689075)))

(declare-fun bs!1216139 () Bool)

(assert (= bs!1216139 d!1689075))

(assert (=> bs!1216139 m!6285760))

(declare-fun m!6286434 () Bool)

(assert (=> bs!1216139 m!6286434))

(declare-fun m!6286436 () Bool)

(assert (=> bs!1216139 m!6286436))

(declare-fun m!6286438 () Bool)

(assert (=> bs!1216139 m!6286438))

(assert (=> b!5241201 d!1689075))

(declare-fun bs!1216140 () Bool)

(declare-fun d!1689077 () Bool)

(assert (= bs!1216140 (and d!1689077 d!1688973)))

(declare-fun lambda!263686 () Int)

(assert (=> bs!1216140 (= lambda!263686 lambda!263667)))

(declare-fun bs!1216141 () Bool)

(assert (= bs!1216141 (and d!1689077 d!1689027)))

(assert (=> bs!1216141 (= lambda!263686 lambda!263669)))

(declare-fun bs!1216142 () Bool)

(assert (= bs!1216142 (and d!1689077 d!1689049)))

(assert (=> bs!1216142 (= lambda!263686 lambda!263679)))

(assert (=> d!1689077 (= (inv!80354 (h!67153 zl!343)) (forall!14267 (exprs!4727 (h!67153 zl!343)) lambda!263686))))

(declare-fun bs!1216143 () Bool)

(assert (= bs!1216143 d!1689077))

(declare-fun m!6286440 () Bool)

(assert (=> bs!1216143 m!6286440))

(assert (=> b!5241221 d!1689077))

(declare-fun d!1689079 () Bool)

(declare-fun c!906134 () Bool)

(assert (=> d!1689079 (= c!906134 (isEmpty!32639 (t!374011 s!2326)))))

(declare-fun e!3261663 () Bool)

(assert (=> d!1689079 (= (matchZipper!1087 lt!2148691 (t!374011 s!2326)) e!3261663)))

(declare-fun b!5242051 () Bool)

(assert (=> b!5242051 (= e!3261663 (nullableZipper!1258 lt!2148691))))

(declare-fun b!5242052 () Bool)

(assert (=> b!5242052 (= e!3261663 (matchZipper!1087 (derivationStepZipper!1102 lt!2148691 (head!11233 (t!374011 s!2326))) (tail!10330 (t!374011 s!2326))))))

(assert (= (and d!1689079 c!906134) b!5242051))

(assert (= (and d!1689079 (not c!906134)) b!5242052))

(assert (=> d!1689079 m!6285894))

(declare-fun m!6286442 () Bool)

(assert (=> b!5242051 m!6286442))

(assert (=> b!5242052 m!6285898))

(assert (=> b!5242052 m!6285898))

(declare-fun m!6286444 () Bool)

(assert (=> b!5242052 m!6286444))

(assert (=> b!5242052 m!6285902))

(assert (=> b!5242052 m!6286444))

(assert (=> b!5242052 m!6285902))

(declare-fun m!6286446 () Bool)

(assert (=> b!5242052 m!6286446))

(assert (=> b!5241205 d!1689079))

(assert (=> b!5241224 d!1689079))

(declare-fun b!5242071 () Bool)

(declare-fun e!3261679 () Bool)

(declare-fun call!371113 () Bool)

(assert (=> b!5242071 (= e!3261679 call!371113)))

(declare-fun b!5242072 () Bool)

(declare-fun e!3261684 () Bool)

(declare-fun e!3261678 () Bool)

(assert (=> b!5242072 (= e!3261684 e!3261678)))

(declare-fun c!906140 () Bool)

(assert (=> b!5242072 (= c!906140 ((_ is Star!14843) lt!2148716))))

(declare-fun b!5242073 () Bool)

(declare-fun res!2224839 () Bool)

(declare-fun e!3261681 () Bool)

(assert (=> b!5242073 (=> (not res!2224839) (not e!3261681))))

(declare-fun call!371114 () Bool)

(assert (=> b!5242073 (= res!2224839 call!371114)))

(declare-fun e!3261683 () Bool)

(assert (=> b!5242073 (= e!3261683 e!3261681)))

(declare-fun b!5242074 () Bool)

(declare-fun e!3261682 () Bool)

(declare-fun call!371115 () Bool)

(assert (=> b!5242074 (= e!3261682 call!371115)))

(declare-fun d!1689081 () Bool)

(declare-fun res!2224842 () Bool)

(assert (=> d!1689081 (=> res!2224842 e!3261684)))

(assert (=> d!1689081 (= res!2224842 ((_ is ElementMatch!14843) lt!2148716))))

(assert (=> d!1689081 (= (validRegex!6579 lt!2148716) e!3261684)))

(declare-fun c!906139 () Bool)

(declare-fun bm!371108 () Bool)

(assert (=> bm!371108 (= call!371113 (validRegex!6579 (ite c!906140 (reg!15172 lt!2148716) (ite c!906139 (regTwo!30199 lt!2148716) (regTwo!30198 lt!2148716)))))))

(declare-fun b!5242075 () Bool)

(assert (=> b!5242075 (= e!3261678 e!3261679)))

(declare-fun res!2224840 () Bool)

(assert (=> b!5242075 (= res!2224840 (not (nullable!5012 (reg!15172 lt!2148716))))))

(assert (=> b!5242075 (=> (not res!2224840) (not e!3261679))))

(declare-fun b!5242076 () Bool)

(declare-fun e!3261680 () Bool)

(assert (=> b!5242076 (= e!3261680 e!3261682)))

(declare-fun res!2224843 () Bool)

(assert (=> b!5242076 (=> (not res!2224843) (not e!3261682))))

(assert (=> b!5242076 (= res!2224843 call!371114)))

(declare-fun b!5242077 () Bool)

(assert (=> b!5242077 (= e!3261681 call!371115)))

(declare-fun b!5242078 () Bool)

(assert (=> b!5242078 (= e!3261678 e!3261683)))

(assert (=> b!5242078 (= c!906139 ((_ is Union!14843) lt!2148716))))

(declare-fun b!5242079 () Bool)

(declare-fun res!2224841 () Bool)

(assert (=> b!5242079 (=> res!2224841 e!3261680)))

(assert (=> b!5242079 (= res!2224841 (not ((_ is Concat!23688) lt!2148716)))))

(assert (=> b!5242079 (= e!3261683 e!3261680)))

(declare-fun bm!371109 () Bool)

(assert (=> bm!371109 (= call!371115 call!371113)))

(declare-fun bm!371110 () Bool)

(assert (=> bm!371110 (= call!371114 (validRegex!6579 (ite c!906139 (regOne!30199 lt!2148716) (regOne!30198 lt!2148716))))))

(assert (= (and d!1689081 (not res!2224842)) b!5242072))

(assert (= (and b!5242072 c!906140) b!5242075))

(assert (= (and b!5242072 (not c!906140)) b!5242078))

(assert (= (and b!5242075 res!2224840) b!5242071))

(assert (= (and b!5242078 c!906139) b!5242073))

(assert (= (and b!5242078 (not c!906139)) b!5242079))

(assert (= (and b!5242073 res!2224839) b!5242077))

(assert (= (and b!5242079 (not res!2224841)) b!5242076))

(assert (= (and b!5242076 res!2224843) b!5242074))

(assert (= (or b!5242077 b!5242074) bm!371109))

(assert (= (or b!5242073 b!5242076) bm!371110))

(assert (= (or b!5242071 bm!371109) bm!371108))

(declare-fun m!6286448 () Bool)

(assert (=> bm!371108 m!6286448))

(declare-fun m!6286450 () Bool)

(assert (=> b!5242075 m!6286450))

(declare-fun m!6286452 () Bool)

(assert (=> bm!371110 m!6286452))

(assert (=> b!5241204 d!1689081))

(declare-fun bs!1216144 () Bool)

(declare-fun d!1689083 () Bool)

(assert (= bs!1216144 (and d!1689083 d!1688973)))

(declare-fun lambda!263687 () Int)

(assert (=> bs!1216144 (= lambda!263687 lambda!263667)))

(declare-fun bs!1216145 () Bool)

(assert (= bs!1216145 (and d!1689083 d!1689027)))

(assert (=> bs!1216145 (= lambda!263687 lambda!263669)))

(declare-fun bs!1216146 () Bool)

(assert (= bs!1216146 (and d!1689083 d!1689049)))

(assert (=> bs!1216146 (= lambda!263687 lambda!263679)))

(declare-fun bs!1216147 () Bool)

(assert (= bs!1216147 (and d!1689083 d!1689077)))

(assert (=> bs!1216147 (= lambda!263687 lambda!263686)))

(assert (=> d!1689083 (= (inv!80354 setElem!33431) (forall!14267 (exprs!4727 setElem!33431) lambda!263687))))

(declare-fun bs!1216148 () Bool)

(assert (= bs!1216148 d!1689083))

(declare-fun m!6286454 () Bool)

(assert (=> bs!1216148 m!6286454))

(assert (=> setNonEmpty!33431 d!1689083))

(declare-fun d!1689085 () Bool)

(declare-fun e!3261687 () Bool)

(assert (=> d!1689085 e!3261687))

(declare-fun res!2224846 () Bool)

(assert (=> d!1689085 (=> (not res!2224846) (not e!3261687))))

(declare-fun lt!2148844 () List!60829)

(declare-fun noDuplicate!1214 (List!60829) Bool)

(assert (=> d!1689085 (= res!2224846 (noDuplicate!1214 lt!2148844))))

(declare-fun choose!39030 ((InoxSet Context!8454)) List!60829)

(assert (=> d!1689085 (= lt!2148844 (choose!39030 z!1189))))

(assert (=> d!1689085 (= (toList!8627 z!1189) lt!2148844)))

(declare-fun b!5242082 () Bool)

(declare-fun content!10779 (List!60829) (InoxSet Context!8454))

(assert (=> b!5242082 (= e!3261687 (= (content!10779 lt!2148844) z!1189))))

(assert (= (and d!1689085 res!2224846) b!5242082))

(declare-fun m!6286456 () Bool)

(assert (=> d!1689085 m!6286456))

(declare-fun m!6286458 () Bool)

(assert (=> d!1689085 m!6286458))

(declare-fun m!6286460 () Bool)

(assert (=> b!5242082 m!6286460))

(assert (=> b!5241203 d!1689085))

(declare-fun d!1689087 () Bool)

(declare-fun e!3261688 () Bool)

(assert (=> d!1689087 (= (matchZipper!1087 ((_ map or) lt!2148721 lt!2148691) (t!374011 s!2326)) e!3261688)))

(declare-fun res!2224847 () Bool)

(assert (=> d!1689087 (=> res!2224847 e!3261688)))

(assert (=> d!1689087 (= res!2224847 (matchZipper!1087 lt!2148721 (t!374011 s!2326)))))

(declare-fun lt!2148845 () Unit!152758)

(assert (=> d!1689087 (= lt!2148845 (choose!39020 lt!2148721 lt!2148691 (t!374011 s!2326)))))

(assert (=> d!1689087 (= (lemmaZipperConcatMatchesSameAsBothZippers!80 lt!2148721 lt!2148691 (t!374011 s!2326)) lt!2148845)))

(declare-fun b!5242083 () Bool)

(assert (=> b!5242083 (= e!3261688 (matchZipper!1087 lt!2148691 (t!374011 s!2326)))))

(assert (= (and d!1689087 (not res!2224847)) b!5242083))

(assert (=> d!1689087 m!6285648))

(assert (=> d!1689087 m!6285646))

(declare-fun m!6286462 () Bool)

(assert (=> d!1689087 m!6286462))

(assert (=> b!5242083 m!6285740))

(assert (=> b!5241217 d!1689087))

(assert (=> b!5241217 d!1688895))

(declare-fun d!1689089 () Bool)

(declare-fun c!906141 () Bool)

(assert (=> d!1689089 (= c!906141 (isEmpty!32639 (t!374011 s!2326)))))

(declare-fun e!3261689 () Bool)

(assert (=> d!1689089 (= (matchZipper!1087 ((_ map or) lt!2148721 lt!2148691) (t!374011 s!2326)) e!3261689)))

(declare-fun b!5242084 () Bool)

(assert (=> b!5242084 (= e!3261689 (nullableZipper!1258 ((_ map or) lt!2148721 lt!2148691)))))

(declare-fun b!5242085 () Bool)

(assert (=> b!5242085 (= e!3261689 (matchZipper!1087 (derivationStepZipper!1102 ((_ map or) lt!2148721 lt!2148691) (head!11233 (t!374011 s!2326))) (tail!10330 (t!374011 s!2326))))))

(assert (= (and d!1689089 c!906141) b!5242084))

(assert (= (and d!1689089 (not c!906141)) b!5242085))

(assert (=> d!1689089 m!6285894))

(declare-fun m!6286464 () Bool)

(assert (=> b!5242084 m!6286464))

(assert (=> b!5242085 m!6285898))

(assert (=> b!5242085 m!6285898))

(declare-fun m!6286466 () Bool)

(assert (=> b!5242085 m!6286466))

(assert (=> b!5242085 m!6285902))

(assert (=> b!5242085 m!6286466))

(assert (=> b!5242085 m!6285902))

(declare-fun m!6286468 () Bool)

(assert (=> b!5242085 m!6286468))

(assert (=> b!5241217 d!1689089))

(assert (=> b!5241216 d!1688887))

(declare-fun d!1689091 () Bool)

(declare-fun lt!2148846 () Int)

(assert (=> d!1689091 (>= lt!2148846 0)))

(declare-fun e!3261690 () Int)

(assert (=> d!1689091 (= lt!2148846 e!3261690)))

(declare-fun c!906142 () Bool)

(assert (=> d!1689091 (= c!906142 ((_ is Cons!60705) zl!343))))

(assert (=> d!1689091 (= (zipperDepthTotal!24 zl!343) lt!2148846)))

(declare-fun b!5242086 () Bool)

(assert (=> b!5242086 (= e!3261690 (+ (contextDepthTotal!15 (h!67153 zl!343)) (zipperDepthTotal!24 (t!374010 zl!343))))))

(declare-fun b!5242087 () Bool)

(assert (=> b!5242087 (= e!3261690 0)))

(assert (= (and d!1689091 c!906142) b!5242086))

(assert (= (and d!1689091 (not c!906142)) b!5242087))

(declare-fun m!6286470 () Bool)

(assert (=> b!5242086 m!6286470))

(declare-fun m!6286472 () Bool)

(assert (=> b!5242086 m!6286472))

(assert (=> b!5241220 d!1689091))

(declare-fun d!1689093 () Bool)

(declare-fun lt!2148847 () Int)

(assert (=> d!1689093 (>= lt!2148847 0)))

(declare-fun e!3261691 () Int)

(assert (=> d!1689093 (= lt!2148847 e!3261691)))

(declare-fun c!906143 () Bool)

(assert (=> d!1689093 (= c!906143 ((_ is Cons!60705) lt!2148712))))

(assert (=> d!1689093 (= (zipperDepthTotal!24 lt!2148712) lt!2148847)))

(declare-fun b!5242088 () Bool)

(assert (=> b!5242088 (= e!3261691 (+ (contextDepthTotal!15 (h!67153 lt!2148712)) (zipperDepthTotal!24 (t!374010 lt!2148712))))))

(declare-fun b!5242089 () Bool)

(assert (=> b!5242089 (= e!3261691 0)))

(assert (= (and d!1689093 c!906143) b!5242088))

(assert (= (and d!1689093 (not c!906143)) b!5242089))

(declare-fun m!6286474 () Bool)

(assert (=> b!5242088 m!6286474))

(declare-fun m!6286476 () Bool)

(assert (=> b!5242088 m!6286476))

(assert (=> b!5241220 d!1689093))

(declare-fun bs!1216149 () Bool)

(declare-fun d!1689095 () Bool)

(assert (= bs!1216149 (and d!1689095 d!1689049)))

(declare-fun lambda!263690 () Int)

(assert (=> bs!1216149 (= lambda!263690 lambda!263679)))

(declare-fun bs!1216150 () Bool)

(assert (= bs!1216150 (and d!1689095 d!1689083)))

(assert (=> bs!1216150 (= lambda!263690 lambda!263687)))

(declare-fun bs!1216151 () Bool)

(assert (= bs!1216151 (and d!1689095 d!1688973)))

(assert (=> bs!1216151 (= lambda!263690 lambda!263667)))

(declare-fun bs!1216152 () Bool)

(assert (= bs!1216152 (and d!1689095 d!1689027)))

(assert (=> bs!1216152 (= lambda!263690 lambda!263669)))

(declare-fun bs!1216153 () Bool)

(assert (= bs!1216153 (and d!1689095 d!1689077)))

(assert (=> bs!1216153 (= lambda!263690 lambda!263686)))

(declare-fun b!5242110 () Bool)

(declare-fun e!3261705 () Bool)

(assert (=> b!5242110 (= e!3261705 (isEmpty!32636 (t!374009 (unfocusZipperList!285 zl!343))))))

(declare-fun b!5242111 () Bool)

(declare-fun e!3261709 () Regex!14843)

(declare-fun e!3261706 () Regex!14843)

(assert (=> b!5242111 (= e!3261709 e!3261706)))

(declare-fun c!906153 () Bool)

(assert (=> b!5242111 (= c!906153 ((_ is Cons!60704) (unfocusZipperList!285 zl!343)))))

(declare-fun b!5242113 () Bool)

(declare-fun e!3261704 () Bool)

(declare-fun e!3261708 () Bool)

(assert (=> b!5242113 (= e!3261704 e!3261708)))

(declare-fun c!906155 () Bool)

(assert (=> b!5242113 (= c!906155 (isEmpty!32636 (unfocusZipperList!285 zl!343)))))

(declare-fun b!5242114 () Bool)

(declare-fun lt!2148850 () Regex!14843)

(declare-fun isEmptyLang!801 (Regex!14843) Bool)

(assert (=> b!5242114 (= e!3261708 (isEmptyLang!801 lt!2148850))))

(declare-fun b!5242115 () Bool)

(declare-fun e!3261707 () Bool)

(declare-fun isUnion!233 (Regex!14843) Bool)

(assert (=> b!5242115 (= e!3261707 (isUnion!233 lt!2148850))))

(declare-fun b!5242116 () Bool)

(assert (=> b!5242116 (= e!3261709 (h!67152 (unfocusZipperList!285 zl!343)))))

(declare-fun b!5242117 () Bool)

(assert (=> b!5242117 (= e!3261706 EmptyLang!14843)))

(declare-fun b!5242118 () Bool)

(assert (=> b!5242118 (= e!3261706 (Union!14843 (h!67152 (unfocusZipperList!285 zl!343)) (generalisedUnion!772 (t!374009 (unfocusZipperList!285 zl!343)))))))

(declare-fun b!5242119 () Bool)

(assert (=> b!5242119 (= e!3261707 (= lt!2148850 (head!11235 (unfocusZipperList!285 zl!343))))))

(declare-fun b!5242112 () Bool)

(assert (=> b!5242112 (= e!3261708 e!3261707)))

(declare-fun c!906154 () Bool)

(assert (=> b!5242112 (= c!906154 (isEmpty!32636 (tail!10332 (unfocusZipperList!285 zl!343))))))

(assert (=> d!1689095 e!3261704))

(declare-fun res!2224852 () Bool)

(assert (=> d!1689095 (=> (not res!2224852) (not e!3261704))))

(assert (=> d!1689095 (= res!2224852 (validRegex!6579 lt!2148850))))

(assert (=> d!1689095 (= lt!2148850 e!3261709)))

(declare-fun c!906152 () Bool)

(assert (=> d!1689095 (= c!906152 e!3261705)))

(declare-fun res!2224853 () Bool)

(assert (=> d!1689095 (=> (not res!2224853) (not e!3261705))))

(assert (=> d!1689095 (= res!2224853 ((_ is Cons!60704) (unfocusZipperList!285 zl!343)))))

(assert (=> d!1689095 (forall!14267 (unfocusZipperList!285 zl!343) lambda!263690)))

(assert (=> d!1689095 (= (generalisedUnion!772 (unfocusZipperList!285 zl!343)) lt!2148850)))

(assert (= (and d!1689095 res!2224853) b!5242110))

(assert (= (and d!1689095 c!906152) b!5242116))

(assert (= (and d!1689095 (not c!906152)) b!5242111))

(assert (= (and b!5242111 c!906153) b!5242118))

(assert (= (and b!5242111 (not c!906153)) b!5242117))

(assert (= (and d!1689095 res!2224852) b!5242113))

(assert (= (and b!5242113 c!906155) b!5242114))

(assert (= (and b!5242113 (not c!906155)) b!5242112))

(assert (= (and b!5242112 c!906154) b!5242119))

(assert (= (and b!5242112 (not c!906154)) b!5242115))

(declare-fun m!6286478 () Bool)

(assert (=> d!1689095 m!6286478))

(assert (=> d!1689095 m!6285744))

(declare-fun m!6286480 () Bool)

(assert (=> d!1689095 m!6286480))

(declare-fun m!6286482 () Bool)

(assert (=> b!5242114 m!6286482))

(declare-fun m!6286484 () Bool)

(assert (=> b!5242118 m!6286484))

(assert (=> b!5242112 m!6285744))

(declare-fun m!6286486 () Bool)

(assert (=> b!5242112 m!6286486))

(assert (=> b!5242112 m!6286486))

(declare-fun m!6286488 () Bool)

(assert (=> b!5242112 m!6286488))

(assert (=> b!5242113 m!6285744))

(declare-fun m!6286490 () Bool)

(assert (=> b!5242113 m!6286490))

(assert (=> b!5242119 m!6285744))

(declare-fun m!6286492 () Bool)

(assert (=> b!5242119 m!6286492))

(declare-fun m!6286494 () Bool)

(assert (=> b!5242115 m!6286494))

(declare-fun m!6286496 () Bool)

(assert (=> b!5242110 m!6286496))

(assert (=> b!5241199 d!1689095))

(declare-fun bs!1216154 () Bool)

(declare-fun d!1689097 () Bool)

(assert (= bs!1216154 (and d!1689097 d!1689049)))

(declare-fun lambda!263693 () Int)

(assert (=> bs!1216154 (= lambda!263693 lambda!263679)))

(declare-fun bs!1216155 () Bool)

(assert (= bs!1216155 (and d!1689097 d!1689083)))

(assert (=> bs!1216155 (= lambda!263693 lambda!263687)))

(declare-fun bs!1216156 () Bool)

(assert (= bs!1216156 (and d!1689097 d!1688973)))

(assert (=> bs!1216156 (= lambda!263693 lambda!263667)))

(declare-fun bs!1216157 () Bool)

(assert (= bs!1216157 (and d!1689097 d!1689027)))

(assert (=> bs!1216157 (= lambda!263693 lambda!263669)))

(declare-fun bs!1216158 () Bool)

(assert (= bs!1216158 (and d!1689097 d!1689077)))

(assert (=> bs!1216158 (= lambda!263693 lambda!263686)))

(declare-fun bs!1216159 () Bool)

(assert (= bs!1216159 (and d!1689097 d!1689095)))

(assert (=> bs!1216159 (= lambda!263693 lambda!263690)))

(declare-fun lt!2148853 () List!60828)

(assert (=> d!1689097 (forall!14267 lt!2148853 lambda!263693)))

(declare-fun e!3261712 () List!60828)

(assert (=> d!1689097 (= lt!2148853 e!3261712)))

(declare-fun c!906158 () Bool)

(assert (=> d!1689097 (= c!906158 ((_ is Cons!60705) zl!343))))

(assert (=> d!1689097 (= (unfocusZipperList!285 zl!343) lt!2148853)))

(declare-fun b!5242124 () Bool)

(assert (=> b!5242124 (= e!3261712 (Cons!60704 (generalisedConcat!512 (exprs!4727 (h!67153 zl!343))) (unfocusZipperList!285 (t!374010 zl!343))))))

(declare-fun b!5242125 () Bool)

(assert (=> b!5242125 (= e!3261712 Nil!60704)))

(assert (= (and d!1689097 c!906158) b!5242124))

(assert (= (and d!1689097 (not c!906158)) b!5242125))

(declare-fun m!6286498 () Bool)

(assert (=> d!1689097 m!6286498))

(assert (=> b!5242124 m!6285738))

(declare-fun m!6286500 () Bool)

(assert (=> b!5242124 m!6286500))

(assert (=> b!5241199 d!1689097))

(assert (=> b!5241218 d!1689079))

(declare-fun d!1689099 () Bool)

(assert (=> d!1689099 (= (isEmpty!32635 (t!374010 zl!343)) ((_ is Nil!60705) (t!374010 zl!343)))))

(assert (=> b!5241212 d!1689099))

(declare-fun b!5242126 () Bool)

(declare-fun e!3261714 () Bool)

(declare-fun call!371116 () Bool)

(assert (=> b!5242126 (= e!3261714 call!371116)))

(declare-fun b!5242127 () Bool)

(declare-fun e!3261719 () Bool)

(declare-fun e!3261713 () Bool)

(assert (=> b!5242127 (= e!3261719 e!3261713)))

(declare-fun c!906160 () Bool)

(assert (=> b!5242127 (= c!906160 ((_ is Star!14843) r!7292))))

(declare-fun b!5242128 () Bool)

(declare-fun res!2224854 () Bool)

(declare-fun e!3261716 () Bool)

(assert (=> b!5242128 (=> (not res!2224854) (not e!3261716))))

(declare-fun call!371117 () Bool)

(assert (=> b!5242128 (= res!2224854 call!371117)))

(declare-fun e!3261718 () Bool)

(assert (=> b!5242128 (= e!3261718 e!3261716)))

(declare-fun b!5242129 () Bool)

(declare-fun e!3261717 () Bool)

(declare-fun call!371118 () Bool)

(assert (=> b!5242129 (= e!3261717 call!371118)))

(declare-fun d!1689101 () Bool)

(declare-fun res!2224857 () Bool)

(assert (=> d!1689101 (=> res!2224857 e!3261719)))

(assert (=> d!1689101 (= res!2224857 ((_ is ElementMatch!14843) r!7292))))

(assert (=> d!1689101 (= (validRegex!6579 r!7292) e!3261719)))

(declare-fun c!906159 () Bool)

(declare-fun bm!371111 () Bool)

(assert (=> bm!371111 (= call!371116 (validRegex!6579 (ite c!906160 (reg!15172 r!7292) (ite c!906159 (regTwo!30199 r!7292) (regTwo!30198 r!7292)))))))

(declare-fun b!5242130 () Bool)

(assert (=> b!5242130 (= e!3261713 e!3261714)))

(declare-fun res!2224855 () Bool)

(assert (=> b!5242130 (= res!2224855 (not (nullable!5012 (reg!15172 r!7292))))))

(assert (=> b!5242130 (=> (not res!2224855) (not e!3261714))))

(declare-fun b!5242131 () Bool)

(declare-fun e!3261715 () Bool)

(assert (=> b!5242131 (= e!3261715 e!3261717)))

(declare-fun res!2224858 () Bool)

(assert (=> b!5242131 (=> (not res!2224858) (not e!3261717))))

(assert (=> b!5242131 (= res!2224858 call!371117)))

(declare-fun b!5242132 () Bool)

(assert (=> b!5242132 (= e!3261716 call!371118)))

(declare-fun b!5242133 () Bool)

(assert (=> b!5242133 (= e!3261713 e!3261718)))

(assert (=> b!5242133 (= c!906159 ((_ is Union!14843) r!7292))))

(declare-fun b!5242134 () Bool)

(declare-fun res!2224856 () Bool)

(assert (=> b!5242134 (=> res!2224856 e!3261715)))

(assert (=> b!5242134 (= res!2224856 (not ((_ is Concat!23688) r!7292)))))

(assert (=> b!5242134 (= e!3261718 e!3261715)))

(declare-fun bm!371112 () Bool)

(assert (=> bm!371112 (= call!371118 call!371116)))

(declare-fun bm!371113 () Bool)

(assert (=> bm!371113 (= call!371117 (validRegex!6579 (ite c!906159 (regOne!30199 r!7292) (regOne!30198 r!7292))))))

(assert (= (and d!1689101 (not res!2224857)) b!5242127))

(assert (= (and b!5242127 c!906160) b!5242130))

(assert (= (and b!5242127 (not c!906160)) b!5242133))

(assert (= (and b!5242130 res!2224855) b!5242126))

(assert (= (and b!5242133 c!906159) b!5242128))

(assert (= (and b!5242133 (not c!906159)) b!5242134))

(assert (= (and b!5242128 res!2224854) b!5242132))

(assert (= (and b!5242134 (not res!2224856)) b!5242131))

(assert (= (and b!5242131 res!2224858) b!5242129))

(assert (= (or b!5242132 b!5242129) bm!371112))

(assert (= (or b!5242128 b!5242131) bm!371113))

(assert (= (or b!5242126 bm!371112) bm!371111))

(declare-fun m!6286502 () Bool)

(assert (=> bm!371111 m!6286502))

(declare-fun m!6286504 () Bool)

(assert (=> b!5242130 m!6286504))

(declare-fun m!6286506 () Bool)

(assert (=> bm!371113 m!6286506))

(assert (=> start!554022 d!1689101))

(assert (=> b!5241234 d!1688887))

(declare-fun d!1689103 () Bool)

(declare-fun e!3261720 () Bool)

(assert (=> d!1689103 (= (matchZipper!1087 ((_ map or) lt!2148718 lt!2148691) (t!374011 s!2326)) e!3261720)))

(declare-fun res!2224859 () Bool)

(assert (=> d!1689103 (=> res!2224859 e!3261720)))

(assert (=> d!1689103 (= res!2224859 (matchZipper!1087 lt!2148718 (t!374011 s!2326)))))

(declare-fun lt!2148854 () Unit!152758)

(assert (=> d!1689103 (= lt!2148854 (choose!39020 lt!2148718 lt!2148691 (t!374011 s!2326)))))

(assert (=> d!1689103 (= (lemmaZipperConcatMatchesSameAsBothZippers!80 lt!2148718 lt!2148691 (t!374011 s!2326)) lt!2148854)))

(declare-fun b!5242135 () Bool)

(assert (=> b!5242135 (= e!3261720 (matchZipper!1087 lt!2148691 (t!374011 s!2326)))))

(assert (= (and d!1689103 (not res!2224859)) b!5242135))

(assert (=> d!1689103 m!6285730))

(assert (=> d!1689103 m!6285674))

(declare-fun m!6286508 () Bool)

(assert (=> d!1689103 m!6286508))

(assert (=> b!5242135 m!6285740))

(assert (=> b!5241213 d!1689103))

(declare-fun d!1689105 () Bool)

(declare-fun c!906161 () Bool)

(assert (=> d!1689105 (= c!906161 (isEmpty!32639 (t!374011 s!2326)))))

(declare-fun e!3261721 () Bool)

(assert (=> d!1689105 (= (matchZipper!1087 ((_ map or) lt!2148718 lt!2148691) (t!374011 s!2326)) e!3261721)))

(declare-fun b!5242136 () Bool)

(assert (=> b!5242136 (= e!3261721 (nullableZipper!1258 ((_ map or) lt!2148718 lt!2148691)))))

(declare-fun b!5242137 () Bool)

(assert (=> b!5242137 (= e!3261721 (matchZipper!1087 (derivationStepZipper!1102 ((_ map or) lt!2148718 lt!2148691) (head!11233 (t!374011 s!2326))) (tail!10330 (t!374011 s!2326))))))

(assert (= (and d!1689105 c!906161) b!5242136))

(assert (= (and d!1689105 (not c!906161)) b!5242137))

(assert (=> d!1689105 m!6285894))

(declare-fun m!6286510 () Bool)

(assert (=> b!5242136 m!6286510))

(assert (=> b!5242137 m!6285898))

(assert (=> b!5242137 m!6285898))

(declare-fun m!6286512 () Bool)

(assert (=> b!5242137 m!6286512))

(assert (=> b!5242137 m!6285902))

(assert (=> b!5242137 m!6286512))

(assert (=> b!5242137 m!6285902))

(declare-fun m!6286514 () Bool)

(assert (=> b!5242137 m!6286514))

(assert (=> b!5241213 d!1689105))

(declare-fun b!5242138 () Bool)

(declare-fun e!3261726 () (InoxSet Context!8454))

(declare-fun call!371123 () (InoxSet Context!8454))

(assert (=> b!5242138 (= e!3261726 call!371123)))

(declare-fun bm!371114 () Bool)

(declare-fun call!371121 () (InoxSet Context!8454))

(declare-fun call!371120 () (InoxSet Context!8454))

(assert (=> bm!371114 (= call!371121 call!371120)))

(declare-fun b!5242139 () Bool)

(declare-fun c!906163 () Bool)

(declare-fun e!3261724 () Bool)

(assert (=> b!5242139 (= c!906163 e!3261724)))

(declare-fun res!2224860 () Bool)

(assert (=> b!5242139 (=> (not res!2224860) (not e!3261724))))

(assert (=> b!5242139 (= res!2224860 ((_ is Concat!23688) (regTwo!30199 (regOne!30198 r!7292))))))

(declare-fun e!3261722 () (InoxSet Context!8454))

(declare-fun e!3261723 () (InoxSet Context!8454))

(assert (=> b!5242139 (= e!3261722 e!3261723)))

(declare-fun b!5242140 () Bool)

(declare-fun e!3261727 () (InoxSet Context!8454))

(assert (=> b!5242140 (= e!3261727 e!3261722)))

(declare-fun c!906164 () Bool)

(assert (=> b!5242140 (= c!906164 ((_ is Union!14843) (regTwo!30199 (regOne!30198 r!7292))))))

(declare-fun b!5242141 () Bool)

(assert (=> b!5242141 (= e!3261726 ((as const (Array Context!8454 Bool)) false))))

(declare-fun b!5242142 () Bool)

(assert (=> b!5242142 (= e!3261727 (store ((as const (Array Context!8454 Bool)) false) lt!2148720 true))))

(declare-fun b!5242143 () Bool)

(declare-fun call!371119 () (InoxSet Context!8454))

(assert (=> b!5242143 (= e!3261722 ((_ map or) call!371120 call!371119))))

(declare-fun b!5242145 () Bool)

(declare-fun e!3261725 () (InoxSet Context!8454))

(assert (=> b!5242145 (= e!3261723 e!3261725)))

(declare-fun c!906166 () Bool)

(assert (=> b!5242145 (= c!906166 ((_ is Concat!23688) (regTwo!30199 (regOne!30198 r!7292))))))

(declare-fun b!5242146 () Bool)

(assert (=> b!5242146 (= e!3261723 ((_ map or) call!371119 call!371121))))

(declare-fun bm!371115 () Bool)

(assert (=> bm!371115 (= call!371123 call!371121)))

(declare-fun bm!371116 () Bool)

(declare-fun call!371124 () List!60828)

(assert (=> bm!371116 (= call!371124 ($colon$colon!1308 (exprs!4727 lt!2148720) (ite (or c!906163 c!906166) (regTwo!30198 (regTwo!30199 (regOne!30198 r!7292))) (regTwo!30199 (regOne!30198 r!7292)))))))

(declare-fun b!5242147 () Bool)

(assert (=> b!5242147 (= e!3261724 (nullable!5012 (regOne!30198 (regTwo!30199 (regOne!30198 r!7292)))))))

(declare-fun bm!371117 () Bool)

(declare-fun call!371122 () List!60828)

(assert (=> bm!371117 (= call!371122 call!371124)))

(declare-fun bm!371118 () Bool)

(assert (=> bm!371118 (= call!371119 (derivationStepZipperDown!291 (ite c!906164 (regTwo!30199 (regTwo!30199 (regOne!30198 r!7292))) (regOne!30198 (regTwo!30199 (regOne!30198 r!7292)))) (ite c!906164 lt!2148720 (Context!8455 call!371124)) (h!67154 s!2326)))))

(declare-fun b!5242148 () Bool)

(declare-fun c!906165 () Bool)

(assert (=> b!5242148 (= c!906165 ((_ is Star!14843) (regTwo!30199 (regOne!30198 r!7292))))))

(assert (=> b!5242148 (= e!3261725 e!3261726)))

(declare-fun bm!371119 () Bool)

(assert (=> bm!371119 (= call!371120 (derivationStepZipperDown!291 (ite c!906164 (regOne!30199 (regTwo!30199 (regOne!30198 r!7292))) (ite c!906163 (regTwo!30198 (regTwo!30199 (regOne!30198 r!7292))) (ite c!906166 (regOne!30198 (regTwo!30199 (regOne!30198 r!7292))) (reg!15172 (regTwo!30199 (regOne!30198 r!7292)))))) (ite (or c!906164 c!906163) lt!2148720 (Context!8455 call!371122)) (h!67154 s!2326)))))

(declare-fun b!5242144 () Bool)

(assert (=> b!5242144 (= e!3261725 call!371123)))

(declare-fun d!1689107 () Bool)

(declare-fun c!906162 () Bool)

(assert (=> d!1689107 (= c!906162 (and ((_ is ElementMatch!14843) (regTwo!30199 (regOne!30198 r!7292))) (= (c!905889 (regTwo!30199 (regOne!30198 r!7292))) (h!67154 s!2326))))))

(assert (=> d!1689107 (= (derivationStepZipperDown!291 (regTwo!30199 (regOne!30198 r!7292)) lt!2148720 (h!67154 s!2326)) e!3261727)))

(assert (= (and d!1689107 c!906162) b!5242142))

(assert (= (and d!1689107 (not c!906162)) b!5242140))

(assert (= (and b!5242140 c!906164) b!5242143))

(assert (= (and b!5242140 (not c!906164)) b!5242139))

(assert (= (and b!5242139 res!2224860) b!5242147))

(assert (= (and b!5242139 c!906163) b!5242146))

(assert (= (and b!5242139 (not c!906163)) b!5242145))

(assert (= (and b!5242145 c!906166) b!5242144))

(assert (= (and b!5242145 (not c!906166)) b!5242148))

(assert (= (and b!5242148 c!906165) b!5242138))

(assert (= (and b!5242148 (not c!906165)) b!5242141))

(assert (= (or b!5242144 b!5242138) bm!371117))

(assert (= (or b!5242144 b!5242138) bm!371115))

(assert (= (or b!5242146 bm!371117) bm!371116))

(assert (= (or b!5242146 bm!371115) bm!371114))

(assert (= (or b!5242143 b!5242146) bm!371118))

(assert (= (or b!5242143 bm!371114) bm!371119))

(declare-fun m!6286516 () Bool)

(assert (=> bm!371119 m!6286516))

(declare-fun m!6286518 () Bool)

(assert (=> bm!371116 m!6286518))

(declare-fun m!6286520 () Bool)

(assert (=> bm!371118 m!6286520))

(assert (=> b!5242142 m!6286410))

(declare-fun m!6286522 () Bool)

(assert (=> b!5242147 m!6286522))

(assert (=> b!5241233 d!1689107))

(declare-fun b!5242149 () Bool)

(declare-fun e!3261732 () (InoxSet Context!8454))

(declare-fun call!371129 () (InoxSet Context!8454))

(assert (=> b!5242149 (= e!3261732 call!371129)))

(declare-fun bm!371120 () Bool)

(declare-fun call!371127 () (InoxSet Context!8454))

(declare-fun call!371126 () (InoxSet Context!8454))

(assert (=> bm!371120 (= call!371127 call!371126)))

(declare-fun b!5242150 () Bool)

(declare-fun c!906168 () Bool)

(declare-fun e!3261730 () Bool)

(assert (=> b!5242150 (= c!906168 e!3261730)))

(declare-fun res!2224861 () Bool)

(assert (=> b!5242150 (=> (not res!2224861) (not e!3261730))))

(assert (=> b!5242150 (= res!2224861 ((_ is Concat!23688) (regOne!30199 (regOne!30198 r!7292))))))

(declare-fun e!3261728 () (InoxSet Context!8454))

(declare-fun e!3261729 () (InoxSet Context!8454))

(assert (=> b!5242150 (= e!3261728 e!3261729)))

(declare-fun b!5242151 () Bool)

(declare-fun e!3261733 () (InoxSet Context!8454))

(assert (=> b!5242151 (= e!3261733 e!3261728)))

(declare-fun c!906169 () Bool)

(assert (=> b!5242151 (= c!906169 ((_ is Union!14843) (regOne!30199 (regOne!30198 r!7292))))))

(declare-fun b!5242152 () Bool)

(assert (=> b!5242152 (= e!3261732 ((as const (Array Context!8454 Bool)) false))))

(declare-fun b!5242153 () Bool)

(assert (=> b!5242153 (= e!3261733 (store ((as const (Array Context!8454 Bool)) false) lt!2148720 true))))

(declare-fun b!5242154 () Bool)

(declare-fun call!371125 () (InoxSet Context!8454))

(assert (=> b!5242154 (= e!3261728 ((_ map or) call!371126 call!371125))))

(declare-fun b!5242156 () Bool)

(declare-fun e!3261731 () (InoxSet Context!8454))

(assert (=> b!5242156 (= e!3261729 e!3261731)))

(declare-fun c!906171 () Bool)

(assert (=> b!5242156 (= c!906171 ((_ is Concat!23688) (regOne!30199 (regOne!30198 r!7292))))))

(declare-fun b!5242157 () Bool)

(assert (=> b!5242157 (= e!3261729 ((_ map or) call!371125 call!371127))))

(declare-fun bm!371121 () Bool)

(assert (=> bm!371121 (= call!371129 call!371127)))

(declare-fun call!371130 () List!60828)

(declare-fun bm!371122 () Bool)

(assert (=> bm!371122 (= call!371130 ($colon$colon!1308 (exprs!4727 lt!2148720) (ite (or c!906168 c!906171) (regTwo!30198 (regOne!30199 (regOne!30198 r!7292))) (regOne!30199 (regOne!30198 r!7292)))))))

(declare-fun b!5242158 () Bool)

(assert (=> b!5242158 (= e!3261730 (nullable!5012 (regOne!30198 (regOne!30199 (regOne!30198 r!7292)))))))

(declare-fun bm!371123 () Bool)

(declare-fun call!371128 () List!60828)

(assert (=> bm!371123 (= call!371128 call!371130)))

(declare-fun bm!371124 () Bool)

(assert (=> bm!371124 (= call!371125 (derivationStepZipperDown!291 (ite c!906169 (regTwo!30199 (regOne!30199 (regOne!30198 r!7292))) (regOne!30198 (regOne!30199 (regOne!30198 r!7292)))) (ite c!906169 lt!2148720 (Context!8455 call!371130)) (h!67154 s!2326)))))

(declare-fun b!5242159 () Bool)

(declare-fun c!906170 () Bool)

(assert (=> b!5242159 (= c!906170 ((_ is Star!14843) (regOne!30199 (regOne!30198 r!7292))))))

(assert (=> b!5242159 (= e!3261731 e!3261732)))

(declare-fun bm!371125 () Bool)

(assert (=> bm!371125 (= call!371126 (derivationStepZipperDown!291 (ite c!906169 (regOne!30199 (regOne!30199 (regOne!30198 r!7292))) (ite c!906168 (regTwo!30198 (regOne!30199 (regOne!30198 r!7292))) (ite c!906171 (regOne!30198 (regOne!30199 (regOne!30198 r!7292))) (reg!15172 (regOne!30199 (regOne!30198 r!7292)))))) (ite (or c!906169 c!906168) lt!2148720 (Context!8455 call!371128)) (h!67154 s!2326)))))

(declare-fun b!5242155 () Bool)

(assert (=> b!5242155 (= e!3261731 call!371129)))

(declare-fun d!1689109 () Bool)

(declare-fun c!906167 () Bool)

(assert (=> d!1689109 (= c!906167 (and ((_ is ElementMatch!14843) (regOne!30199 (regOne!30198 r!7292))) (= (c!905889 (regOne!30199 (regOne!30198 r!7292))) (h!67154 s!2326))))))

(assert (=> d!1689109 (= (derivationStepZipperDown!291 (regOne!30199 (regOne!30198 r!7292)) lt!2148720 (h!67154 s!2326)) e!3261733)))

(assert (= (and d!1689109 c!906167) b!5242153))

(assert (= (and d!1689109 (not c!906167)) b!5242151))

(assert (= (and b!5242151 c!906169) b!5242154))

(assert (= (and b!5242151 (not c!906169)) b!5242150))

(assert (= (and b!5242150 res!2224861) b!5242158))

(assert (= (and b!5242150 c!906168) b!5242157))

(assert (= (and b!5242150 (not c!906168)) b!5242156))

(assert (= (and b!5242156 c!906171) b!5242155))

(assert (= (and b!5242156 (not c!906171)) b!5242159))

(assert (= (and b!5242159 c!906170) b!5242149))

(assert (= (and b!5242159 (not c!906170)) b!5242152))

(assert (= (or b!5242155 b!5242149) bm!371123))

(assert (= (or b!5242155 b!5242149) bm!371121))

(assert (= (or b!5242157 bm!371123) bm!371122))

(assert (= (or b!5242157 bm!371121) bm!371120))

(assert (= (or b!5242154 b!5242157) bm!371124))

(assert (= (or b!5242154 bm!371120) bm!371125))

(declare-fun m!6286524 () Bool)

(assert (=> bm!371125 m!6286524))

(declare-fun m!6286526 () Bool)

(assert (=> bm!371122 m!6286526))

(declare-fun m!6286528 () Bool)

(assert (=> bm!371124 m!6286528))

(assert (=> b!5242153 m!6286410))

(declare-fun m!6286530 () Bool)

(assert (=> b!5242158 m!6286530))

(assert (=> b!5241233 d!1689109))

(declare-fun b!5242170 () Bool)

(declare-fun e!3261736 () Bool)

(assert (=> b!5242170 (= e!3261736 tp_is_empty!38939)))

(declare-fun b!5242172 () Bool)

(declare-fun tp!1467681 () Bool)

(assert (=> b!5242172 (= e!3261736 tp!1467681)))

(declare-fun b!5242173 () Bool)

(declare-fun tp!1467680 () Bool)

(declare-fun tp!1467682 () Bool)

(assert (=> b!5242173 (= e!3261736 (and tp!1467680 tp!1467682))))

(declare-fun b!5242171 () Bool)

(declare-fun tp!1467678 () Bool)

(declare-fun tp!1467679 () Bool)

(assert (=> b!5242171 (= e!3261736 (and tp!1467678 tp!1467679))))

(assert (=> b!5241227 (= tp!1467606 e!3261736)))

(assert (= (and b!5241227 ((_ is ElementMatch!14843) (regOne!30199 r!7292))) b!5242170))

(assert (= (and b!5241227 ((_ is Concat!23688) (regOne!30199 r!7292))) b!5242171))

(assert (= (and b!5241227 ((_ is Star!14843) (regOne!30199 r!7292))) b!5242172))

(assert (= (and b!5241227 ((_ is Union!14843) (regOne!30199 r!7292))) b!5242173))

(declare-fun b!5242174 () Bool)

(declare-fun e!3261737 () Bool)

(assert (=> b!5242174 (= e!3261737 tp_is_empty!38939)))

(declare-fun b!5242176 () Bool)

(declare-fun tp!1467686 () Bool)

(assert (=> b!5242176 (= e!3261737 tp!1467686)))

(declare-fun b!5242177 () Bool)

(declare-fun tp!1467685 () Bool)

(declare-fun tp!1467687 () Bool)

(assert (=> b!5242177 (= e!3261737 (and tp!1467685 tp!1467687))))

(declare-fun b!5242175 () Bool)

(declare-fun tp!1467683 () Bool)

(declare-fun tp!1467684 () Bool)

(assert (=> b!5242175 (= e!3261737 (and tp!1467683 tp!1467684))))

(assert (=> b!5241227 (= tp!1467608 e!3261737)))

(assert (= (and b!5241227 ((_ is ElementMatch!14843) (regTwo!30199 r!7292))) b!5242174))

(assert (= (and b!5241227 ((_ is Concat!23688) (regTwo!30199 r!7292))) b!5242175))

(assert (= (and b!5241227 ((_ is Star!14843) (regTwo!30199 r!7292))) b!5242176))

(assert (= (and b!5241227 ((_ is Union!14843) (regTwo!30199 r!7292))) b!5242177))

(declare-fun b!5242178 () Bool)

(declare-fun e!3261738 () Bool)

(assert (=> b!5242178 (= e!3261738 tp_is_empty!38939)))

(declare-fun b!5242180 () Bool)

(declare-fun tp!1467691 () Bool)

(assert (=> b!5242180 (= e!3261738 tp!1467691)))

(declare-fun b!5242181 () Bool)

(declare-fun tp!1467690 () Bool)

(declare-fun tp!1467692 () Bool)

(assert (=> b!5242181 (= e!3261738 (and tp!1467690 tp!1467692))))

(declare-fun b!5242179 () Bool)

(declare-fun tp!1467688 () Bool)

(declare-fun tp!1467689 () Bool)

(assert (=> b!5242179 (= e!3261738 (and tp!1467688 tp!1467689))))

(assert (=> b!5241237 (= tp!1467604 e!3261738)))

(assert (= (and b!5241237 ((_ is ElementMatch!14843) (reg!15172 r!7292))) b!5242178))

(assert (= (and b!5241237 ((_ is Concat!23688) (reg!15172 r!7292))) b!5242179))

(assert (= (and b!5241237 ((_ is Star!14843) (reg!15172 r!7292))) b!5242180))

(assert (= (and b!5241237 ((_ is Union!14843) (reg!15172 r!7292))) b!5242181))

(declare-fun b!5242189 () Bool)

(declare-fun e!3261744 () Bool)

(declare-fun tp!1467697 () Bool)

(assert (=> b!5242189 (= e!3261744 tp!1467697)))

(declare-fun b!5242188 () Bool)

(declare-fun e!3261743 () Bool)

(declare-fun tp!1467698 () Bool)

(assert (=> b!5242188 (= e!3261743 (and (inv!80354 (h!67153 (t!374010 zl!343))) e!3261744 tp!1467698))))

(assert (=> b!5241221 (= tp!1467605 e!3261743)))

(assert (= b!5242188 b!5242189))

(assert (= (and b!5241221 ((_ is Cons!60705) (t!374010 zl!343))) b!5242188))

(declare-fun m!6286532 () Bool)

(assert (=> b!5242188 m!6286532))

(declare-fun b!5242190 () Bool)

(declare-fun e!3261745 () Bool)

(assert (=> b!5242190 (= e!3261745 tp_is_empty!38939)))

(declare-fun b!5242192 () Bool)

(declare-fun tp!1467702 () Bool)

(assert (=> b!5242192 (= e!3261745 tp!1467702)))

(declare-fun b!5242193 () Bool)

(declare-fun tp!1467701 () Bool)

(declare-fun tp!1467703 () Bool)

(assert (=> b!5242193 (= e!3261745 (and tp!1467701 tp!1467703))))

(declare-fun b!5242191 () Bool)

(declare-fun tp!1467699 () Bool)

(declare-fun tp!1467700 () Bool)

(assert (=> b!5242191 (= e!3261745 (and tp!1467699 tp!1467700))))

(assert (=> b!5241230 (= tp!1467603 e!3261745)))

(assert (= (and b!5241230 ((_ is ElementMatch!14843) (regOne!30198 r!7292))) b!5242190))

(assert (= (and b!5241230 ((_ is Concat!23688) (regOne!30198 r!7292))) b!5242191))

(assert (= (and b!5241230 ((_ is Star!14843) (regOne!30198 r!7292))) b!5242192))

(assert (= (and b!5241230 ((_ is Union!14843) (regOne!30198 r!7292))) b!5242193))

(declare-fun b!5242194 () Bool)

(declare-fun e!3261746 () Bool)

(assert (=> b!5242194 (= e!3261746 tp_is_empty!38939)))

(declare-fun b!5242196 () Bool)

(declare-fun tp!1467707 () Bool)

(assert (=> b!5242196 (= e!3261746 tp!1467707)))

(declare-fun b!5242197 () Bool)

(declare-fun tp!1467706 () Bool)

(declare-fun tp!1467708 () Bool)

(assert (=> b!5242197 (= e!3261746 (and tp!1467706 tp!1467708))))

(declare-fun b!5242195 () Bool)

(declare-fun tp!1467704 () Bool)

(declare-fun tp!1467705 () Bool)

(assert (=> b!5242195 (= e!3261746 (and tp!1467704 tp!1467705))))

(assert (=> b!5241230 (= tp!1467602 e!3261746)))

(assert (= (and b!5241230 ((_ is ElementMatch!14843) (regTwo!30198 r!7292))) b!5242194))

(assert (= (and b!5241230 ((_ is Concat!23688) (regTwo!30198 r!7292))) b!5242195))

(assert (= (and b!5241230 ((_ is Star!14843) (regTwo!30198 r!7292))) b!5242196))

(assert (= (and b!5241230 ((_ is Union!14843) (regTwo!30198 r!7292))) b!5242197))

(declare-fun b!5242202 () Bool)

(declare-fun e!3261749 () Bool)

(declare-fun tp!1467713 () Bool)

(declare-fun tp!1467714 () Bool)

(assert (=> b!5242202 (= e!3261749 (and tp!1467713 tp!1467714))))

(assert (=> b!5241235 (= tp!1467601 e!3261749)))

(assert (= (and b!5241235 ((_ is Cons!60704) (exprs!4727 setElem!33431))) b!5242202))

(declare-fun b!5242203 () Bool)

(declare-fun e!3261750 () Bool)

(declare-fun tp!1467715 () Bool)

(declare-fun tp!1467716 () Bool)

(assert (=> b!5242203 (= e!3261750 (and tp!1467715 tp!1467716))))

(assert (=> b!5241214 (= tp!1467607 e!3261750)))

(assert (= (and b!5241214 ((_ is Cons!60704) (exprs!4727 (h!67153 zl!343)))) b!5242203))

(declare-fun b!5242208 () Bool)

(declare-fun e!3261753 () Bool)

(declare-fun tp!1467719 () Bool)

(assert (=> b!5242208 (= e!3261753 (and tp_is_empty!38939 tp!1467719))))

(assert (=> b!5241219 (= tp!1467600 e!3261753)))

(assert (= (and b!5241219 ((_ is Cons!60706) (t!374011 s!2326))) b!5242208))

(declare-fun condSetEmpty!33437 () Bool)

(assert (=> setNonEmpty!33431 (= condSetEmpty!33437 (= setRest!33431 ((as const (Array Context!8454 Bool)) false)))))

(declare-fun setRes!33437 () Bool)

(assert (=> setNonEmpty!33431 (= tp!1467609 setRes!33437)))

(declare-fun setIsEmpty!33437 () Bool)

(assert (=> setIsEmpty!33437 setRes!33437))

(declare-fun tp!1467724 () Bool)

(declare-fun e!3261756 () Bool)

(declare-fun setNonEmpty!33437 () Bool)

(declare-fun setElem!33437 () Context!8454)

(assert (=> setNonEmpty!33437 (= setRes!33437 (and tp!1467724 (inv!80354 setElem!33437) e!3261756))))

(declare-fun setRest!33437 () (InoxSet Context!8454))

(assert (=> setNonEmpty!33437 (= setRest!33431 ((_ map or) (store ((as const (Array Context!8454 Bool)) false) setElem!33437 true) setRest!33437))))

(declare-fun b!5242213 () Bool)

(declare-fun tp!1467725 () Bool)

(assert (=> b!5242213 (= e!3261756 tp!1467725)))

(assert (= (and setNonEmpty!33431 condSetEmpty!33437) setIsEmpty!33437))

(assert (= (and setNonEmpty!33431 (not condSetEmpty!33437)) setNonEmpty!33437))

(assert (= setNonEmpty!33437 b!5242213))

(declare-fun m!6286534 () Bool)

(assert (=> setNonEmpty!33437 m!6286534))

(declare-fun b_lambda!202559 () Bool)

(assert (= b_lambda!202541 (or b!5241201 b_lambda!202559)))

(declare-fun bs!1216160 () Bool)

(declare-fun d!1689111 () Bool)

(assert (= bs!1216160 (and d!1689111 b!5241201)))

(assert (=> bs!1216160 (= (dynLambda!23986 lambda!263625 lt!2148713) (derivationStepZipperUp!215 lt!2148713 (h!67154 s!2326)))))

(assert (=> bs!1216160 m!6285686))

(assert (=> d!1688869 d!1689111))

(declare-fun b_lambda!202561 () Bool)

(assert (= b_lambda!202543 (or b!5241201 b_lambda!202561)))

(declare-fun bs!1216161 () Bool)

(declare-fun d!1689113 () Bool)

(assert (= bs!1216161 (and d!1689113 b!5241201)))

(assert (=> bs!1216161 (= (dynLambda!23986 lambda!263625 lt!2148725) (derivationStepZipperUp!215 lt!2148725 (h!67154 s!2326)))))

(assert (=> bs!1216161 m!6285702))

(assert (=> d!1688873 d!1689113))

(declare-fun b_lambda!202563 () Bool)

(assert (= b_lambda!202557 (or b!5241201 b_lambda!202563)))

(declare-fun bs!1216162 () Bool)

(declare-fun d!1689115 () Bool)

(assert (= bs!1216162 (and d!1689115 b!5241201)))

(assert (=> bs!1216162 (= (dynLambda!23986 lambda!263625 (h!67153 zl!343)) (derivationStepZipperUp!215 (h!67153 zl!343) (h!67154 s!2326)))))

(assert (=> bs!1216162 m!6285754))

(assert (=> d!1689075 d!1689115))

(check-sat (not b!5242113) (not d!1689053) (not b!5242046) (not d!1688901) (not setNonEmpty!33437) (not b!5241426) (not b!5241947) (not b!5242001) (not b!5242040) (not bm!371119) (not b!5242192) (not d!1688887) (not b!5241511) (not b!5242050) (not bm!371116) (not b!5241998) (not b!5241509) (not b!5241996) (not b!5242177) (not bm!371077) (not b!5241979) (not b!5241791) (not b!5241790) (not b!5241425) (not b!5241745) (not d!1689085) (not b!5241934) (not b!5241950) (not b!5241429) (not b!5242086) (not d!1689067) (not b!5242191) (not b!5242088) (not b!5242202) (not b!5241776) (not d!1689045) (not b!5242130) (not b!5241988) (not b!5241938) (not bm!371017) (not b!5242175) (not b!5242171) (not b!5242193) (not b!5241423) (not bs!1216162) (not b!5241966) (not b!5241789) (not d!1689103) (not b!5241431) (not b!5242147) (not b!5241432) (not b!5241510) (not b!5241375) (not d!1689083) (not b!5242083) (not b!5241407) (not b!5242082) (not b!5242179) (not d!1689039) (not b!5242034) (not b!5241930) (not d!1688853) (not b_lambda!202563) (not b!5241952) (not b!5241356) (not bm!371101) (not bm!371079) (not b!5242118) (not d!1688879) (not bm!371095) (not b!5242052) (not bm!371075) (not bm!371108) (not b!5241977) (not bs!1216161) (not b!5241990) (not b!5242051) (not d!1688869) (not d!1688857) (not d!1689095) (not bm!371078) (not b!5242119) (not b!5242189) (not d!1688923) (not b!5242195) (not d!1688863) (not bm!371019) (not b!5242158) (not b!5241386) (not d!1689075) (not b!5241955) (not d!1689043) (not b!5241891) (not d!1688971) (not bm!371074) (not b!5241515) (not b!5242213) (not b!5241435) (not d!1689087) (not b!5241993) (not b!5242173) (not d!1688925) (not b!5241743) (not d!1689079) (not b!5242114) (not b!5241797) (not b!5241514) (not bm!371125) (not b!5242112) (not b!5242135) (not b!5241427) (not b!5242196) (not b!5241436) (not b!5242137) (not d!1688919) (not bm!371113) (not b!5242172) (not b!5241747) (not b!5241424) (not bm!371071) (not b!5242045) (not d!1689041) (not b!5241428) (not d!1689061) (not d!1689089) (not b!5241512) (not d!1689049) (not d!1688899) (not bm!371080) (not d!1688953) (not d!1688903) (not b!5242136) (not bm!371070) (not b!5241936) tp_is_empty!38939 (not d!1688895) (not d!1688973) (not bm!371122) (not d!1689059) (not d!1688897) (not d!1688891) (not b!5241406) (not b!5242181) (not d!1689097) (not b!5241434) (not b!5241944) (not d!1688875) (not b!5242110) (not bm!371111) (not b!5241742) (not b!5241788) (not bm!371098) (not bm!371097) (not b!5241962) (not d!1689047) (not b!5242197) (not b!5241430) (not d!1689071) (not b!5241960) (not b_lambda!202561) (not bm!371118) (not b!5241750) (not bm!371110) (not b!5241751) (not b!5242208) (not b!5242124) (not d!1689105) (not d!1688871) (not d!1688877) (not b_lambda!202559) (not b!5242085) (not b!5242036) (not d!1688873) (not b!5241433) (not b!5241744) (not b!5241941) (not b!5241900) (not d!1689055) (not b!5241968) (not b!5242180) (not bm!371124) (not bs!1216160) (not b!5241933) (not b!5242188) (not d!1688889) (not b!5242075) (not b!5242115) (not b!5241959) (not b!5242203) (not b!5241948) (not b!5242041) (not b!5241994) (not bm!371076) (not b!5242176) (not b!5241371) (not b!5241793) (not b!5241957) (not d!1689077) (not bm!371100) (not d!1689027) (not b!5241387) (not b!5242084) (not b!5241796) (not b!5241352) (not b!5241965) (not bm!371099) (not b!5241958))
(check-sat)
