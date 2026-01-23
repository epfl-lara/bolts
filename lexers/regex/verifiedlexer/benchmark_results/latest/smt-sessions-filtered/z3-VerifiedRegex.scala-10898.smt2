; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!563706 () Bool)

(assert start!563706)

(declare-fun b!5353164 () Bool)

(assert (=> b!5353164 true))

(assert (=> b!5353164 true))

(declare-fun lambda!275242 () Int)

(declare-fun lambda!275241 () Int)

(assert (=> b!5353164 (not (= lambda!275242 lambda!275241))))

(assert (=> b!5353164 true))

(assert (=> b!5353164 true))

(declare-fun b!5353166 () Bool)

(assert (=> b!5353166 true))

(declare-fun b!5353163 () Bool)

(declare-fun e!3322953 () Bool)

(declare-fun tp!1486949 () Bool)

(assert (=> b!5353163 (= e!3322953 tp!1486949)))

(declare-fun e!3322954 () Bool)

(declare-fun e!3322959 () Bool)

(assert (=> b!5353164 (= e!3322954 e!3322959)))

(declare-fun res!2271278 () Bool)

(assert (=> b!5353164 (=> res!2271278 e!3322959)))

(declare-datatypes ((C!30356 0))(
  ( (C!30357 (val!24880 Int)) )
))
(declare-datatypes ((List!61428 0))(
  ( (Nil!61304) (Cons!61304 (h!67752 C!30356) (t!374647 List!61428)) )
))
(declare-fun s!2326 () List!61428)

(declare-fun lt!2181521 () Bool)

(declare-fun lt!2181524 () Bool)

(get-info :version)

(assert (=> b!5353164 (= res!2271278 (or (not (= lt!2181524 lt!2181521)) ((_ is Nil!61304) s!2326)))))

(declare-fun Exists!2224 (Int) Bool)

(assert (=> b!5353164 (= (Exists!2224 lambda!275241) (Exists!2224 lambda!275242))))

(declare-datatypes ((Unit!153690 0))(
  ( (Unit!153691) )
))
(declare-fun lt!2181527 () Unit!153690)

(declare-datatypes ((Regex!15043 0))(
  ( (ElementMatch!15043 (c!932007 C!30356)) (Concat!23888 (regOne!30598 Regex!15043) (regTwo!30598 Regex!15043)) (EmptyExpr!15043) (Star!15043 (reg!15372 Regex!15043)) (EmptyLang!15043) (Union!15043 (regOne!30599 Regex!15043) (regTwo!30599 Regex!15043)) )
))
(declare-fun r!7292 () Regex!15043)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!878 (Regex!15043 Regex!15043 List!61428) Unit!153690)

(assert (=> b!5353164 (= lt!2181527 (lemmaExistCutMatchRandMatchRSpecEquivalent!878 (regOne!30598 r!7292) (regTwo!30598 r!7292) s!2326))))

(assert (=> b!5353164 (= lt!2181521 (Exists!2224 lambda!275241))))

(declare-datatypes ((tuple2!64484 0))(
  ( (tuple2!64485 (_1!35545 List!61428) (_2!35545 List!61428)) )
))
(declare-datatypes ((Option!15154 0))(
  ( (None!15153) (Some!15153 (v!51182 tuple2!64484)) )
))
(declare-fun isDefined!11857 (Option!15154) Bool)

(declare-fun findConcatSeparation!1568 (Regex!15043 Regex!15043 List!61428 List!61428 List!61428) Option!15154)

(assert (=> b!5353164 (= lt!2181521 (isDefined!11857 (findConcatSeparation!1568 (regOne!30598 r!7292) (regTwo!30598 r!7292) Nil!61304 s!2326 s!2326)))))

(declare-fun lt!2181532 () Unit!153690)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1332 (Regex!15043 Regex!15043 List!61428) Unit!153690)

(assert (=> b!5353164 (= lt!2181532 (lemmaFindConcatSeparationEquivalentToExists!1332 (regOne!30598 r!7292) (regTwo!30598 r!7292) s!2326))))

(declare-fun b!5353165 () Bool)

(declare-fun e!3322957 () Bool)

(declare-fun tp_is_empty!39339 () Bool)

(assert (=> b!5353165 (= e!3322957 tp_is_empty!39339)))

(declare-fun e!3322955 () Bool)

(assert (=> b!5353166 (= e!3322959 e!3322955)))

(declare-fun res!2271270 () Bool)

(assert (=> b!5353166 (=> res!2271270 e!3322955)))

(assert (=> b!5353166 (= res!2271270 (or (and ((_ is ElementMatch!15043) (regOne!30598 r!7292)) (= (c!932007 (regOne!30598 r!7292)) (h!67752 s!2326))) ((_ is Union!15043) (regOne!30598 r!7292))))))

(declare-fun lt!2181526 () Unit!153690)

(declare-fun e!3322961 () Unit!153690)

(assert (=> b!5353166 (= lt!2181526 e!3322961)))

(declare-fun c!932006 () Bool)

(declare-datatypes ((List!61429 0))(
  ( (Nil!61305) (Cons!61305 (h!67753 Regex!15043) (t!374648 List!61429)) )
))
(declare-datatypes ((Context!8854 0))(
  ( (Context!8855 (exprs!4927 List!61429)) )
))
(declare-datatypes ((List!61430 0))(
  ( (Nil!61306) (Cons!61306 (h!67754 Context!8854) (t!374649 List!61430)) )
))
(declare-fun zl!343 () List!61430)

(declare-fun nullable!5212 (Regex!15043) Bool)

(assert (=> b!5353166 (= c!932006 (nullable!5212 (h!67753 (exprs!4927 (h!67754 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8854))

(declare-fun lambda!275243 () Int)

(declare-fun flatMap!770 ((InoxSet Context!8854) Int) (InoxSet Context!8854))

(declare-fun derivationStepZipperUp!415 (Context!8854 C!30356) (InoxSet Context!8854))

(assert (=> b!5353166 (= (flatMap!770 z!1189 lambda!275243) (derivationStepZipperUp!415 (h!67754 zl!343) (h!67752 s!2326)))))

(declare-fun lt!2181519 () Unit!153690)

(declare-fun lemmaFlatMapOnSingletonSet!302 ((InoxSet Context!8854) Context!8854 Int) Unit!153690)

(assert (=> b!5353166 (= lt!2181519 (lemmaFlatMapOnSingletonSet!302 z!1189 (h!67754 zl!343) lambda!275243))))

(declare-fun lt!2181531 () (InoxSet Context!8854))

(declare-fun lt!2181528 () Context!8854)

(assert (=> b!5353166 (= lt!2181531 (derivationStepZipperUp!415 lt!2181528 (h!67752 s!2326)))))

(declare-fun lt!2181522 () (InoxSet Context!8854))

(declare-fun derivationStepZipperDown!491 (Regex!15043 Context!8854 C!30356) (InoxSet Context!8854))

(assert (=> b!5353166 (= lt!2181522 (derivationStepZipperDown!491 (h!67753 (exprs!4927 (h!67754 zl!343))) lt!2181528 (h!67752 s!2326)))))

(assert (=> b!5353166 (= lt!2181528 (Context!8855 (t!374648 (exprs!4927 (h!67754 zl!343)))))))

(declare-fun lt!2181529 () (InoxSet Context!8854))

(assert (=> b!5353166 (= lt!2181529 (derivationStepZipperUp!415 (Context!8855 (Cons!61305 (h!67753 (exprs!4927 (h!67754 zl!343))) (t!374648 (exprs!4927 (h!67754 zl!343))))) (h!67752 s!2326)))))

(declare-fun b!5353167 () Bool)

(declare-fun res!2271280 () Bool)

(assert (=> b!5353167 (=> res!2271280 e!3322955)))

(declare-fun e!3322960 () Bool)

(assert (=> b!5353167 (= res!2271280 e!3322960)))

(declare-fun res!2271266 () Bool)

(assert (=> b!5353167 (=> (not res!2271266) (not e!3322960))))

(assert (=> b!5353167 (= res!2271266 ((_ is Concat!23888) (regOne!30598 r!7292)))))

(declare-fun b!5353168 () Bool)

(declare-fun res!2271277 () Bool)

(assert (=> b!5353168 (=> res!2271277 e!3322954)))

(declare-fun isEmpty!33283 (List!61430) Bool)

(assert (=> b!5353168 (= res!2271277 (not (isEmpty!33283 (t!374649 zl!343))))))

(declare-fun b!5353169 () Bool)

(declare-fun res!2271272 () Bool)

(assert (=> b!5353169 (=> res!2271272 e!3322954)))

(assert (=> b!5353169 (= res!2271272 (or ((_ is EmptyExpr!15043) r!7292) ((_ is EmptyLang!15043) r!7292) ((_ is ElementMatch!15043) r!7292) ((_ is Union!15043) r!7292) (not ((_ is Concat!23888) r!7292))))))

(declare-fun b!5353170 () Bool)

(declare-fun e!3322962 () Bool)

(declare-fun matchZipper!1287 ((InoxSet Context!8854) List!61428) Bool)

(assert (=> b!5353170 (= e!3322962 (matchZipper!1287 lt!2181531 (t!374647 s!2326)))))

(declare-fun setIsEmpty!34593 () Bool)

(declare-fun setRes!34593 () Bool)

(assert (=> setIsEmpty!34593 setRes!34593))

(declare-fun b!5353171 () Bool)

(assert (=> b!5353171 (= e!3322960 (nullable!5212 (regOne!30598 (regOne!30598 r!7292))))))

(declare-fun b!5353172 () Bool)

(declare-fun res!2271276 () Bool)

(assert (=> b!5353172 (=> res!2271276 e!3322954)))

(declare-fun generalisedConcat!712 (List!61429) Regex!15043)

(assert (=> b!5353172 (= res!2271276 (not (= r!7292 (generalisedConcat!712 (exprs!4927 (h!67754 zl!343))))))))

(declare-fun b!5353173 () Bool)

(declare-fun res!2271274 () Bool)

(assert (=> b!5353173 (=> res!2271274 e!3322955)))

(assert (=> b!5353173 (= res!2271274 (or ((_ is Concat!23888) (regOne!30598 r!7292)) (not ((_ is Star!15043) (regOne!30598 r!7292)))))))

(declare-fun b!5353174 () Bool)

(declare-fun res!2271268 () Bool)

(assert (=> b!5353174 (=> res!2271268 e!3322959)))

(declare-fun isEmpty!33284 (List!61429) Bool)

(assert (=> b!5353174 (= res!2271268 (isEmpty!33284 (t!374648 (exprs!4927 (h!67754 zl!343)))))))

(declare-fun res!2271265 () Bool)

(declare-fun e!3322956 () Bool)

(assert (=> start!563706 (=> (not res!2271265) (not e!3322956))))

(declare-fun validRegex!6779 (Regex!15043) Bool)

(assert (=> start!563706 (= res!2271265 (validRegex!6779 r!7292))))

(assert (=> start!563706 e!3322956))

(assert (=> start!563706 e!3322957))

(declare-fun condSetEmpty!34593 () Bool)

(assert (=> start!563706 (= condSetEmpty!34593 (= z!1189 ((as const (Array Context!8854 Bool)) false)))))

(assert (=> start!563706 setRes!34593))

(declare-fun e!3322952 () Bool)

(assert (=> start!563706 e!3322952))

(declare-fun e!3322964 () Bool)

(assert (=> start!563706 e!3322964))

(declare-fun b!5353175 () Bool)

(assert (=> b!5353175 (= e!3322956 (not e!3322954))))

(declare-fun res!2271279 () Bool)

(assert (=> b!5353175 (=> res!2271279 e!3322954)))

(assert (=> b!5353175 (= res!2271279 (not ((_ is Cons!61306) zl!343)))))

(declare-fun matchRSpec!2146 (Regex!15043 List!61428) Bool)

(assert (=> b!5353175 (= lt!2181524 (matchRSpec!2146 r!7292 s!2326))))

(declare-fun matchR!7228 (Regex!15043 List!61428) Bool)

(assert (=> b!5353175 (= lt!2181524 (matchR!7228 r!7292 s!2326))))

(declare-fun lt!2181523 () Unit!153690)

(declare-fun mainMatchTheorem!2146 (Regex!15043 List!61428) Unit!153690)

(assert (=> b!5353175 (= lt!2181523 (mainMatchTheorem!2146 r!7292 s!2326))))

(declare-fun b!5353176 () Bool)

(declare-fun e!3322958 () Bool)

(assert (=> b!5353176 (= e!3322955 e!3322958)))

(declare-fun res!2271267 () Bool)

(assert (=> b!5353176 (=> res!2271267 e!3322958)))

(declare-fun lt!2181525 () List!61429)

(assert (=> b!5353176 (= res!2271267 (not (= lt!2181522 (derivationStepZipperDown!491 (reg!15372 (regOne!30598 r!7292)) (Context!8855 lt!2181525) (h!67752 s!2326)))))))

(assert (=> b!5353176 (= lt!2181525 (Cons!61305 (Star!15043 (reg!15372 (regOne!30598 r!7292))) (t!374648 (exprs!4927 (h!67754 zl!343)))))))

(declare-fun b!5353177 () Bool)

(declare-fun res!2271275 () Bool)

(assert (=> b!5353177 (=> (not res!2271275) (not e!3322956))))

(declare-fun toList!8827 ((InoxSet Context!8854)) List!61430)

(assert (=> b!5353177 (= res!2271275 (= (toList!8827 z!1189) zl!343))))

(declare-fun b!5353178 () Bool)

(declare-fun res!2271269 () Bool)

(assert (=> b!5353178 (=> res!2271269 e!3322954)))

(assert (=> b!5353178 (= res!2271269 (not ((_ is Cons!61305) (exprs!4927 (h!67754 zl!343)))))))

(declare-fun b!5353179 () Bool)

(declare-fun e!3322963 () Bool)

(declare-fun tp!1486957 () Bool)

(assert (=> b!5353179 (= e!3322963 tp!1486957)))

(declare-fun setElem!34593 () Context!8854)

(declare-fun setNonEmpty!34593 () Bool)

(declare-fun tp!1486956 () Bool)

(declare-fun inv!80854 (Context!8854) Bool)

(assert (=> setNonEmpty!34593 (= setRes!34593 (and tp!1486956 (inv!80854 setElem!34593) e!3322953))))

(declare-fun setRest!34593 () (InoxSet Context!8854))

(assert (=> setNonEmpty!34593 (= z!1189 ((_ map or) (store ((as const (Array Context!8854 Bool)) false) setElem!34593 true) setRest!34593))))

(declare-fun b!5353180 () Bool)

(declare-fun res!2271273 () Bool)

(assert (=> b!5353180 (=> res!2271273 e!3322954)))

(declare-fun generalisedUnion!972 (List!61429) Regex!15043)

(declare-fun unfocusZipperList!485 (List!61430) List!61429)

(assert (=> b!5353180 (= res!2271273 (not (= r!7292 (generalisedUnion!972 (unfocusZipperList!485 zl!343)))))))

(declare-fun b!5353181 () Bool)

(declare-fun res!2271271 () Bool)

(assert (=> b!5353181 (=> (not res!2271271) (not e!3322956))))

(declare-fun unfocusZipper!785 (List!61430) Regex!15043)

(assert (=> b!5353181 (= res!2271271 (= r!7292 (unfocusZipper!785 zl!343)))))

(declare-fun b!5353182 () Bool)

(declare-fun tp!1486953 () Bool)

(assert (=> b!5353182 (= e!3322964 (and tp_is_empty!39339 tp!1486953))))

(declare-fun b!5353183 () Bool)

(declare-fun tp!1486955 () Bool)

(declare-fun tp!1486948 () Bool)

(assert (=> b!5353183 (= e!3322957 (and tp!1486955 tp!1486948))))

(declare-fun b!5353184 () Bool)

(declare-fun tp!1486954 () Bool)

(declare-fun tp!1486951 () Bool)

(assert (=> b!5353184 (= e!3322957 (and tp!1486954 tp!1486951))))

(declare-fun b!5353185 () Bool)

(declare-fun Unit!153692 () Unit!153690)

(assert (=> b!5353185 (= e!3322961 Unit!153692)))

(declare-fun b!5353186 () Bool)

(declare-fun tp!1486952 () Bool)

(assert (=> b!5353186 (= e!3322957 tp!1486952)))

(declare-fun b!5353187 () Bool)

(assert (=> b!5353187 (= e!3322958 true)))

(declare-fun lt!2181530 () (InoxSet Context!8854))

(assert (=> b!5353187 (= lt!2181530 (derivationStepZipperUp!415 (Context!8855 (Cons!61305 (reg!15372 (regOne!30598 r!7292)) lt!2181525)) (h!67752 s!2326)))))

(declare-fun tp!1486950 () Bool)

(declare-fun b!5353188 () Bool)

(assert (=> b!5353188 (= e!3322952 (and (inv!80854 (h!67754 zl!343)) e!3322963 tp!1486950))))

(declare-fun b!5353189 () Bool)

(declare-fun Unit!153693 () Unit!153690)

(assert (=> b!5353189 (= e!3322961 Unit!153693)))

(declare-fun lt!2181520 () Unit!153690)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!280 ((InoxSet Context!8854) (InoxSet Context!8854) List!61428) Unit!153690)

(assert (=> b!5353189 (= lt!2181520 (lemmaZipperConcatMatchesSameAsBothZippers!280 lt!2181522 lt!2181531 (t!374647 s!2326)))))

(declare-fun res!2271281 () Bool)

(assert (=> b!5353189 (= res!2271281 (matchZipper!1287 lt!2181522 (t!374647 s!2326)))))

(assert (=> b!5353189 (=> res!2271281 e!3322962)))

(assert (=> b!5353189 (= (matchZipper!1287 ((_ map or) lt!2181522 lt!2181531) (t!374647 s!2326)) e!3322962)))

(assert (= (and start!563706 res!2271265) b!5353177))

(assert (= (and b!5353177 res!2271275) b!5353181))

(assert (= (and b!5353181 res!2271271) b!5353175))

(assert (= (and b!5353175 (not res!2271279)) b!5353168))

(assert (= (and b!5353168 (not res!2271277)) b!5353172))

(assert (= (and b!5353172 (not res!2271276)) b!5353178))

(assert (= (and b!5353178 (not res!2271269)) b!5353180))

(assert (= (and b!5353180 (not res!2271273)) b!5353169))

(assert (= (and b!5353169 (not res!2271272)) b!5353164))

(assert (= (and b!5353164 (not res!2271278)) b!5353174))

(assert (= (and b!5353174 (not res!2271268)) b!5353166))

(assert (= (and b!5353166 c!932006) b!5353189))

(assert (= (and b!5353166 (not c!932006)) b!5353185))

(assert (= (and b!5353189 (not res!2271281)) b!5353170))

(assert (= (and b!5353166 (not res!2271270)) b!5353167))

(assert (= (and b!5353167 res!2271266) b!5353171))

(assert (= (and b!5353167 (not res!2271280)) b!5353173))

(assert (= (and b!5353173 (not res!2271274)) b!5353176))

(assert (= (and b!5353176 (not res!2271267)) b!5353187))

(assert (= (and start!563706 ((_ is ElementMatch!15043) r!7292)) b!5353165))

(assert (= (and start!563706 ((_ is Concat!23888) r!7292)) b!5353183))

(assert (= (and start!563706 ((_ is Star!15043) r!7292)) b!5353186))

(assert (= (and start!563706 ((_ is Union!15043) r!7292)) b!5353184))

(assert (= (and start!563706 condSetEmpty!34593) setIsEmpty!34593))

(assert (= (and start!563706 (not condSetEmpty!34593)) setNonEmpty!34593))

(assert (= setNonEmpty!34593 b!5353163))

(assert (= b!5353188 b!5353179))

(assert (= (and start!563706 ((_ is Cons!61306) zl!343)) b!5353188))

(assert (= (and start!563706 ((_ is Cons!61304) s!2326)) b!5353182))

(declare-fun m!6383630 () Bool)

(assert (=> b!5353175 m!6383630))

(declare-fun m!6383632 () Bool)

(assert (=> b!5353175 m!6383632))

(declare-fun m!6383634 () Bool)

(assert (=> b!5353175 m!6383634))

(declare-fun m!6383636 () Bool)

(assert (=> b!5353164 m!6383636))

(declare-fun m!6383638 () Bool)

(assert (=> b!5353164 m!6383638))

(declare-fun m!6383640 () Bool)

(assert (=> b!5353164 m!6383640))

(declare-fun m!6383642 () Bool)

(assert (=> b!5353164 m!6383642))

(assert (=> b!5353164 m!6383636))

(declare-fun m!6383644 () Bool)

(assert (=> b!5353164 m!6383644))

(assert (=> b!5353164 m!6383638))

(declare-fun m!6383646 () Bool)

(assert (=> b!5353164 m!6383646))

(declare-fun m!6383648 () Bool)

(assert (=> setNonEmpty!34593 m!6383648))

(declare-fun m!6383650 () Bool)

(assert (=> b!5353177 m!6383650))

(declare-fun m!6383652 () Bool)

(assert (=> b!5353176 m!6383652))

(declare-fun m!6383654 () Bool)

(assert (=> b!5353189 m!6383654))

(declare-fun m!6383656 () Bool)

(assert (=> b!5353189 m!6383656))

(declare-fun m!6383658 () Bool)

(assert (=> b!5353189 m!6383658))

(declare-fun m!6383660 () Bool)

(assert (=> b!5353168 m!6383660))

(declare-fun m!6383662 () Bool)

(assert (=> b!5353180 m!6383662))

(assert (=> b!5353180 m!6383662))

(declare-fun m!6383664 () Bool)

(assert (=> b!5353180 m!6383664))

(declare-fun m!6383666 () Bool)

(assert (=> b!5353171 m!6383666))

(declare-fun m!6383668 () Bool)

(assert (=> start!563706 m!6383668))

(declare-fun m!6383670 () Bool)

(assert (=> b!5353181 m!6383670))

(declare-fun m!6383672 () Bool)

(assert (=> b!5353188 m!6383672))

(declare-fun m!6383674 () Bool)

(assert (=> b!5353172 m!6383674))

(declare-fun m!6383676 () Bool)

(assert (=> b!5353170 m!6383676))

(declare-fun m!6383678 () Bool)

(assert (=> b!5353187 m!6383678))

(declare-fun m!6383680 () Bool)

(assert (=> b!5353166 m!6383680))

(declare-fun m!6383682 () Bool)

(assert (=> b!5353166 m!6383682))

(declare-fun m!6383684 () Bool)

(assert (=> b!5353166 m!6383684))

(declare-fun m!6383686 () Bool)

(assert (=> b!5353166 m!6383686))

(declare-fun m!6383688 () Bool)

(assert (=> b!5353166 m!6383688))

(declare-fun m!6383690 () Bool)

(assert (=> b!5353166 m!6383690))

(declare-fun m!6383692 () Bool)

(assert (=> b!5353166 m!6383692))

(declare-fun m!6383694 () Bool)

(assert (=> b!5353174 m!6383694))

(check-sat (not b!5353181) (not b!5353186) (not b!5353189) (not b!5353174) (not b!5353177) (not b!5353180) (not b!5353170) (not b!5353176) (not b!5353172) (not b!5353184) (not b!5353168) (not setNonEmpty!34593) tp_is_empty!39339 (not b!5353182) (not b!5353175) (not b!5353187) (not b!5353163) (not b!5353171) (not b!5353179) (not b!5353164) (not start!563706) (not b!5353188) (not b!5353166) (not b!5353183))
(check-sat)
