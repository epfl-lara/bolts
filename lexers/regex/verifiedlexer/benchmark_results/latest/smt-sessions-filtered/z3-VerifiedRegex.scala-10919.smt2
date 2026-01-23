; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!565234 () Bool)

(assert start!565234)

(declare-fun b!5372062 () Bool)

(assert (=> b!5372062 true))

(assert (=> b!5372062 true))

(declare-fun lambda!277222 () Int)

(declare-fun lambda!277221 () Int)

(assert (=> b!5372062 (not (= lambda!277222 lambda!277221))))

(assert (=> b!5372062 true))

(assert (=> b!5372062 true))

(declare-fun b!5372084 () Bool)

(assert (=> b!5372084 true))

(declare-fun bs!1243978 () Bool)

(declare-fun b!5372060 () Bool)

(assert (= bs!1243978 (and b!5372060 b!5372062)))

(declare-datatypes ((C!30440 0))(
  ( (C!30441 (val!24922 Int)) )
))
(declare-datatypes ((Regex!15085 0))(
  ( (ElementMatch!15085 (c!936165 C!30440)) (Concat!23930 (regOne!30682 Regex!15085) (regTwo!30682 Regex!15085)) (EmptyExpr!15085) (Star!15085 (reg!15414 Regex!15085)) (EmptyLang!15085) (Union!15085 (regOne!30683 Regex!15085) (regTwo!30683 Regex!15085)) )
))
(declare-fun r!7292 () Regex!15085)

(declare-fun lt!2187470 () Regex!15085)

(declare-fun lambda!277224 () Int)

(assert (=> bs!1243978 (= (= lt!2187470 (regOne!30682 r!7292)) (= lambda!277224 lambda!277221))))

(assert (=> bs!1243978 (not (= lambda!277224 lambda!277222))))

(assert (=> b!5372060 true))

(assert (=> b!5372060 true))

(assert (=> b!5372060 true))

(declare-fun lambda!277225 () Int)

(assert (=> bs!1243978 (not (= lambda!277225 lambda!277221))))

(assert (=> bs!1243978 (= (= lt!2187470 (regOne!30682 r!7292)) (= lambda!277225 lambda!277222))))

(assert (=> b!5372060 (not (= lambda!277225 lambda!277224))))

(assert (=> b!5372060 true))

(assert (=> b!5372060 true))

(assert (=> b!5372060 true))

(declare-fun b!5372047 () Bool)

(declare-fun e!3333294 () Bool)

(declare-fun e!3333312 () Bool)

(assert (=> b!5372047 (= e!3333294 e!3333312)))

(declare-fun res!2279936 () Bool)

(assert (=> b!5372047 (=> res!2279936 e!3333312)))

(declare-fun lt!2187456 () Bool)

(assert (=> b!5372047 (= res!2279936 (not lt!2187456))))

(declare-fun e!3333293 () Bool)

(assert (=> b!5372047 e!3333293))

(declare-fun res!2279916 () Bool)

(assert (=> b!5372047 (=> (not res!2279916) (not e!3333293))))

(declare-fun lt!2187490 () Regex!15085)

(declare-datatypes ((List!61554 0))(
  ( (Nil!61430) (Cons!61430 (h!67878 C!30440) (t!374777 List!61554)) )
))
(declare-fun s!2326 () List!61554)

(declare-fun matchR!7270 (Regex!15085 List!61554) Bool)

(declare-fun matchRSpec!2188 (Regex!15085 List!61554) Bool)

(assert (=> b!5372047 (= res!2279916 (= (matchR!7270 lt!2187490 s!2326) (matchRSpec!2188 lt!2187490 s!2326)))))

(declare-datatypes ((Unit!153858 0))(
  ( (Unit!153859) )
))
(declare-fun lt!2187471 () Unit!153858)

(declare-fun mainMatchTheorem!2188 (Regex!15085 List!61554) Unit!153858)

(assert (=> b!5372047 (= lt!2187471 (mainMatchTheorem!2188 lt!2187490 s!2326))))

(declare-fun b!5372048 () Bool)

(declare-fun res!2279920 () Bool)

(declare-fun e!3333297 () Bool)

(assert (=> b!5372048 (=> res!2279920 e!3333297)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61555 0))(
  ( (Nil!61431) (Cons!61431 (h!67879 Regex!15085) (t!374778 List!61555)) )
))
(declare-datatypes ((Context!8938 0))(
  ( (Context!8939 (exprs!4969 List!61555)) )
))
(declare-fun lt!2187489 () (InoxSet Context!8938))

(declare-fun lt!2187460 () (InoxSet Context!8938))

(declare-fun matchZipper!1329 ((InoxSet Context!8938) List!61554) Bool)

(assert (=> b!5372048 (= res!2279920 (not (= (matchZipper!1329 lt!2187460 s!2326) (matchZipper!1329 lt!2187489 (t!374777 s!2326)))))))

(declare-fun b!5372049 () Bool)

(declare-fun e!3333308 () Unit!153858)

(declare-fun Unit!153860 () Unit!153858)

(assert (=> b!5372049 (= e!3333308 Unit!153860)))

(declare-fun lt!2187488 () Unit!153858)

(declare-fun lt!2187482 () (InoxSet Context!8938))

(declare-fun lt!2187496 () (InoxSet Context!8938))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!322 ((InoxSet Context!8938) (InoxSet Context!8938) List!61554) Unit!153858)

(assert (=> b!5372049 (= lt!2187488 (lemmaZipperConcatMatchesSameAsBothZippers!322 lt!2187496 lt!2187482 (t!374777 s!2326)))))

(declare-fun res!2279922 () Bool)

(assert (=> b!5372049 (= res!2279922 (matchZipper!1329 lt!2187496 (t!374777 s!2326)))))

(declare-fun e!3333316 () Bool)

(assert (=> b!5372049 (=> res!2279922 e!3333316)))

(assert (=> b!5372049 (= (matchZipper!1329 ((_ map or) lt!2187496 lt!2187482) (t!374777 s!2326)) e!3333316)))

(declare-fun b!5372050 () Bool)

(declare-fun e!3333306 () Bool)

(assert (=> b!5372050 (= e!3333306 e!3333294)))

(declare-fun res!2279929 () Bool)

(assert (=> b!5372050 (=> res!2279929 e!3333294)))

(declare-fun lt!2187492 () Context!8938)

(declare-datatypes ((List!61556 0))(
  ( (Nil!61432) (Cons!61432 (h!67880 Context!8938) (t!374779 List!61556)) )
))
(declare-fun unfocusZipper!827 (List!61556) Regex!15085)

(assert (=> b!5372050 (= res!2279929 (not (= (unfocusZipper!827 (Cons!61432 lt!2187492 Nil!61432)) (reg!15414 (regOne!30682 r!7292)))))))

(declare-fun lt!2187481 () Context!8938)

(declare-fun lambda!277223 () Int)

(declare-fun lt!2187478 () (InoxSet Context!8938))

(declare-fun flatMap!812 ((InoxSet Context!8938) Int) (InoxSet Context!8938))

(declare-fun derivationStepZipperUp!457 (Context!8938 C!30440) (InoxSet Context!8938))

(assert (=> b!5372050 (= (flatMap!812 lt!2187478 lambda!277223) (derivationStepZipperUp!457 lt!2187481 (h!67878 s!2326)))))

(declare-fun lt!2187468 () Unit!153858)

(declare-fun lemmaFlatMapOnSingletonSet!344 ((InoxSet Context!8938) Context!8938 Int) Unit!153858)

(assert (=> b!5372050 (= lt!2187468 (lemmaFlatMapOnSingletonSet!344 lt!2187478 lt!2187481 lambda!277223))))

(declare-fun lt!2187491 () (InoxSet Context!8938))

(assert (=> b!5372050 (= (flatMap!812 lt!2187491 lambda!277223) (derivationStepZipperUp!457 lt!2187492 (h!67878 s!2326)))))

(declare-fun lt!2187480 () Unit!153858)

(assert (=> b!5372050 (= lt!2187480 (lemmaFlatMapOnSingletonSet!344 lt!2187491 lt!2187492 lambda!277223))))

(declare-fun lt!2187495 () (InoxSet Context!8938))

(assert (=> b!5372050 (= lt!2187495 (derivationStepZipperUp!457 lt!2187481 (h!67878 s!2326)))))

(declare-fun lt!2187466 () (InoxSet Context!8938))

(assert (=> b!5372050 (= lt!2187466 (derivationStepZipperUp!457 lt!2187492 (h!67878 s!2326)))))

(assert (=> b!5372050 (= lt!2187478 (store ((as const (Array Context!8938 Bool)) false) lt!2187481 true))))

(assert (=> b!5372050 (= lt!2187491 (store ((as const (Array Context!8938 Bool)) false) lt!2187492 true))))

(assert (=> b!5372050 (= lt!2187492 (Context!8939 (Cons!61431 (reg!15414 (regOne!30682 r!7292)) Nil!61431)))))

(declare-fun b!5372051 () Bool)

(declare-fun e!3333300 () Bool)

(declare-fun e!3333298 () Bool)

(assert (=> b!5372051 (= e!3333300 (not e!3333298))))

(declare-fun res!2279927 () Bool)

(assert (=> b!5372051 (=> res!2279927 e!3333298)))

(declare-fun zl!343 () List!61556)

(get-info :version)

(assert (=> b!5372051 (= res!2279927 (not ((_ is Cons!61432) zl!343)))))

(declare-fun lt!2187487 () Bool)

(assert (=> b!5372051 (= lt!2187456 lt!2187487)))

(assert (=> b!5372051 (= lt!2187487 (matchRSpec!2188 r!7292 s!2326))))

(assert (=> b!5372051 (= lt!2187456 (matchR!7270 r!7292 s!2326))))

(declare-fun lt!2187483 () Unit!153858)

(assert (=> b!5372051 (= lt!2187483 (mainMatchTheorem!2188 r!7292 s!2326))))

(declare-fun b!5372052 () Bool)

(declare-fun Unit!153861 () Unit!153858)

(assert (=> b!5372052 (= e!3333308 Unit!153861)))

(declare-fun b!5372053 () Bool)

(assert (=> b!5372053 (= e!3333316 (matchZipper!1329 lt!2187482 (t!374777 s!2326)))))

(declare-fun b!5372054 () Bool)

(declare-fun e!3333310 () Bool)

(declare-fun tp!1490146 () Bool)

(declare-fun tp!1490144 () Bool)

(assert (=> b!5372054 (= e!3333310 (and tp!1490146 tp!1490144))))

(declare-fun b!5372055 () Bool)

(declare-fun res!2279911 () Bool)

(declare-fun e!3333301 () Bool)

(assert (=> b!5372055 (=> res!2279911 e!3333301)))

(declare-fun isEmpty!33414 (List!61555) Bool)

(assert (=> b!5372055 (= res!2279911 (isEmpty!33414 (t!374778 (exprs!4969 (h!67880 zl!343)))))))

(declare-fun b!5372056 () Bool)

(declare-fun res!2279931 () Bool)

(declare-fun e!3333305 () Bool)

(assert (=> b!5372056 (=> res!2279931 e!3333305)))

(declare-datatypes ((tuple2!64568 0))(
  ( (tuple2!64569 (_1!35587 List!61554) (_2!35587 List!61554)) )
))
(declare-fun lt!2187465 () tuple2!64568)

(assert (=> b!5372056 (= res!2279931 (not (matchR!7270 (regTwo!30682 r!7292) (_2!35587 lt!2187465))))))

(declare-fun res!2279912 () Bool)

(declare-fun e!3333309 () Bool)

(assert (=> start!565234 (=> (not res!2279912) (not e!3333309))))

(declare-fun validRegex!6821 (Regex!15085) Bool)

(assert (=> start!565234 (= res!2279912 (validRegex!6821 r!7292))))

(assert (=> start!565234 e!3333309))

(assert (=> start!565234 e!3333310))

(declare-fun condSetEmpty!34811 () Bool)

(declare-fun z!1189 () (InoxSet Context!8938))

(assert (=> start!565234 (= condSetEmpty!34811 (= z!1189 ((as const (Array Context!8938 Bool)) false)))))

(declare-fun setRes!34811 () Bool)

(assert (=> start!565234 setRes!34811))

(declare-fun e!3333296 () Bool)

(assert (=> start!565234 e!3333296))

(declare-fun e!3333307 () Bool)

(assert (=> start!565234 e!3333307))

(declare-fun b!5372057 () Bool)

(declare-fun res!2279921 () Bool)

(assert (=> b!5372057 (=> (not res!2279921) (not e!3333309))))

(declare-fun toList!8869 ((InoxSet Context!8938)) List!61556)

(assert (=> b!5372057 (= res!2279921 (= (toList!8869 z!1189) zl!343))))

(declare-fun b!5372058 () Bool)

(assert (=> b!5372058 (= e!3333309 e!3333300)))

(declare-fun res!2279928 () Bool)

(assert (=> b!5372058 (=> (not res!2279928) (not e!3333300))))

(declare-fun lt!2187484 () Regex!15085)

(assert (=> b!5372058 (= res!2279928 (= r!7292 lt!2187484))))

(assert (=> b!5372058 (= lt!2187484 (unfocusZipper!827 zl!343))))

(declare-fun e!3333311 () Bool)

(declare-fun b!5372059 () Bool)

(declare-fun tp!1490150 () Bool)

(declare-fun inv!80959 (Context!8938) Bool)

(assert (=> b!5372059 (= e!3333296 (and (inv!80959 (h!67880 zl!343)) e!3333311 tp!1490150))))

(assert (=> b!5372060 (= e!3333312 e!3333305)))

(declare-fun res!2279932 () Bool)

(assert (=> b!5372060 (=> res!2279932 e!3333305)))

(declare-fun ++!13388 (List!61554 List!61554) List!61554)

(assert (=> b!5372060 (= res!2279932 (not (= (++!13388 (_1!35587 lt!2187465) (_2!35587 lt!2187465)) s!2326)))))

(declare-datatypes ((Option!15196 0))(
  ( (None!15195) (Some!15195 (v!51224 tuple2!64568)) )
))
(declare-fun lt!2187462 () Option!15196)

(declare-fun get!21136 (Option!15196) tuple2!64568)

(assert (=> b!5372060 (= lt!2187465 (get!21136 lt!2187462))))

(declare-fun Exists!2266 (Int) Bool)

(assert (=> b!5372060 (= (Exists!2266 lambda!277224) (Exists!2266 lambda!277225))))

(declare-fun lt!2187457 () Unit!153858)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!920 (Regex!15085 Regex!15085 List!61554) Unit!153858)

(assert (=> b!5372060 (= lt!2187457 (lemmaExistCutMatchRandMatchRSpecEquivalent!920 lt!2187470 (regTwo!30682 r!7292) s!2326))))

(declare-fun isDefined!11899 (Option!15196) Bool)

(assert (=> b!5372060 (= (isDefined!11899 lt!2187462) (Exists!2266 lambda!277224))))

(declare-fun findConcatSeparation!1610 (Regex!15085 Regex!15085 List!61554 List!61554 List!61554) Option!15196)

(assert (=> b!5372060 (= lt!2187462 (findConcatSeparation!1610 lt!2187470 (regTwo!30682 r!7292) Nil!61430 s!2326 s!2326))))

(declare-fun lt!2187455 () Unit!153858)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1374 (Regex!15085 Regex!15085 List!61554) Unit!153858)

(assert (=> b!5372060 (= lt!2187455 (lemmaFindConcatSeparationEquivalentToExists!1374 lt!2187470 (regTwo!30682 r!7292) s!2326))))

(declare-fun b!5372061 () Bool)

(declare-fun e!3333302 () Bool)

(assert (=> b!5372061 (= e!3333305 e!3333302)))

(declare-fun res!2279908 () Bool)

(assert (=> b!5372061 (=> res!2279908 e!3333302)))

(declare-fun lt!2187458 () (InoxSet Context!8938))

(declare-fun derivationStepZipper!1324 ((InoxSet Context!8938) C!30440) (InoxSet Context!8938))

(assert (=> b!5372061 (= res!2279908 (not (= lt!2187482 (derivationStepZipper!1324 lt!2187458 (h!67878 s!2326)))))))

(declare-fun lt!2187461 () Context!8938)

(assert (=> b!5372061 (= (flatMap!812 lt!2187458 lambda!277223) (derivationStepZipperUp!457 lt!2187461 (h!67878 s!2326)))))

(declare-fun lt!2187476 () Unit!153858)

(assert (=> b!5372061 (= lt!2187476 (lemmaFlatMapOnSingletonSet!344 lt!2187458 lt!2187461 lambda!277223))))

(assert (=> b!5372061 (= lt!2187458 (store ((as const (Array Context!8938 Bool)) false) lt!2187461 true))))

(assert (=> b!5372062 (= e!3333298 e!3333301)))

(declare-fun res!2279919 () Bool)

(assert (=> b!5372062 (=> res!2279919 e!3333301)))

(declare-fun lt!2187486 () Bool)

(assert (=> b!5372062 (= res!2279919 (or (not (= lt!2187456 lt!2187486)) ((_ is Nil!61430) s!2326)))))

(assert (=> b!5372062 (= (Exists!2266 lambda!277221) (Exists!2266 lambda!277222))))

(declare-fun lt!2187473 () Unit!153858)

(assert (=> b!5372062 (= lt!2187473 (lemmaExistCutMatchRandMatchRSpecEquivalent!920 (regOne!30682 r!7292) (regTwo!30682 r!7292) s!2326))))

(assert (=> b!5372062 (= lt!2187486 (Exists!2266 lambda!277221))))

(assert (=> b!5372062 (= lt!2187486 (isDefined!11899 (findConcatSeparation!1610 (regOne!30682 r!7292) (regTwo!30682 r!7292) Nil!61430 s!2326 s!2326)))))

(declare-fun lt!2187475 () Unit!153858)

(assert (=> b!5372062 (= lt!2187475 (lemmaFindConcatSeparationEquivalentToExists!1374 (regOne!30682 r!7292) (regTwo!30682 r!7292) s!2326))))

(declare-fun b!5372063 () Bool)

(declare-fun res!2279915 () Bool)

(assert (=> b!5372063 (=> res!2279915 e!3333294)))

(declare-fun lt!2187479 () Regex!15085)

(assert (=> b!5372063 (= res!2279915 (not (= (unfocusZipper!827 (Cons!61432 lt!2187481 Nil!61432)) lt!2187479)))))

(declare-fun b!5372064 () Bool)

(declare-fun tp!1490147 () Bool)

(assert (=> b!5372064 (= e!3333311 tp!1490147)))

(declare-fun b!5372065 () Bool)

(declare-fun res!2279913 () Bool)

(assert (=> b!5372065 (=> res!2279913 e!3333298)))

(declare-fun generalisedUnion!1014 (List!61555) Regex!15085)

(declare-fun unfocusZipperList!527 (List!61556) List!61555)

(assert (=> b!5372065 (= res!2279913 (not (= r!7292 (generalisedUnion!1014 (unfocusZipperList!527 zl!343)))))))

(declare-fun b!5372066 () Bool)

(declare-fun res!2279909 () Bool)

(assert (=> b!5372066 (=> res!2279909 e!3333298)))

(declare-fun isEmpty!33415 (List!61556) Bool)

(assert (=> b!5372066 (= res!2279909 (not (isEmpty!33415 (t!374779 zl!343))))))

(declare-fun b!5372067 () Bool)

(declare-fun tp_is_empty!39423 () Bool)

(assert (=> b!5372067 (= e!3333310 tp_is_empty!39423)))

(declare-fun b!5372068 () Bool)

(declare-fun e!3333314 () Bool)

(declare-fun e!3333303 () Bool)

(assert (=> b!5372068 (= e!3333314 e!3333303)))

(declare-fun res!2279906 () Bool)

(assert (=> b!5372068 (=> res!2279906 e!3333303)))

(declare-fun lt!2187474 () (InoxSet Context!8938))

(assert (=> b!5372068 (= res!2279906 (not (= lt!2187496 lt!2187474)))))

(declare-fun derivationStepZipperDown!533 (Regex!15085 Context!8938 C!30440) (InoxSet Context!8938))

(assert (=> b!5372068 (= lt!2187474 (derivationStepZipperDown!533 (reg!15414 (regOne!30682 r!7292)) lt!2187481 (h!67878 s!2326)))))

(declare-fun lt!2187472 () List!61555)

(assert (=> b!5372068 (= lt!2187481 (Context!8939 lt!2187472))))

(assert (=> b!5372068 (= lt!2187472 (Cons!61431 lt!2187470 (t!374778 (exprs!4969 (h!67880 zl!343)))))))

(assert (=> b!5372068 (= lt!2187470 (Star!15085 (reg!15414 (regOne!30682 r!7292))))))

(declare-fun setIsEmpty!34811 () Bool)

(assert (=> setIsEmpty!34811 setRes!34811))

(declare-fun b!5372069 () Bool)

(declare-fun e!3333313 () Bool)

(declare-fun tp!1490149 () Bool)

(assert (=> b!5372069 (= e!3333313 tp!1490149)))

(declare-fun setElem!34811 () Context!8938)

(declare-fun tp!1490152 () Bool)

(declare-fun setNonEmpty!34811 () Bool)

(assert (=> setNonEmpty!34811 (= setRes!34811 (and tp!1490152 (inv!80959 setElem!34811) e!3333313))))

(declare-fun setRest!34811 () (InoxSet Context!8938))

(assert (=> setNonEmpty!34811 (= z!1189 ((_ map or) (store ((as const (Array Context!8938 Bool)) false) setElem!34811 true) setRest!34811))))

(declare-fun b!5372070 () Bool)

(declare-fun res!2279925 () Bool)

(assert (=> b!5372070 (=> res!2279925 e!3333314)))

(assert (=> b!5372070 (= res!2279925 (or ((_ is Concat!23930) (regOne!30682 r!7292)) (not ((_ is Star!15085) (regOne!30682 r!7292)))))))

(declare-fun b!5372071 () Bool)

(declare-fun res!2279924 () Bool)

(assert (=> b!5372071 (=> res!2279924 e!3333298)))

(declare-fun generalisedConcat!754 (List!61555) Regex!15085)

(assert (=> b!5372071 (= res!2279924 (not (= r!7292 (generalisedConcat!754 (exprs!4969 (h!67880 zl!343))))))))

(declare-fun b!5372072 () Bool)

(declare-fun res!2279930 () Bool)

(assert (=> b!5372072 (=> res!2279930 e!3333297)))

(assert (=> b!5372072 (= res!2279930 (not (= lt!2187484 r!7292)))))

(declare-fun b!5372073 () Bool)

(declare-fun e!3333295 () Bool)

(declare-fun nullable!5254 (Regex!15085) Bool)

(assert (=> b!5372073 (= e!3333295 (nullable!5254 (regOne!30682 (regOne!30682 r!7292))))))

(declare-fun b!5372074 () Bool)

(declare-fun res!2279917 () Bool)

(assert (=> b!5372074 (=> res!2279917 e!3333305)))

(assert (=> b!5372074 (= res!2279917 (not (matchR!7270 lt!2187470 (_1!35587 lt!2187465))))))

(declare-fun b!5372075 () Bool)

(declare-fun tp!1490148 () Bool)

(declare-fun tp!1490153 () Bool)

(assert (=> b!5372075 (= e!3333310 (and tp!1490148 tp!1490153))))

(declare-fun b!5372076 () Bool)

(declare-fun res!2279918 () Bool)

(assert (=> b!5372076 (=> res!2279918 e!3333298)))

(assert (=> b!5372076 (= res!2279918 (or ((_ is EmptyExpr!15085) r!7292) ((_ is EmptyLang!15085) r!7292) ((_ is ElementMatch!15085) r!7292) ((_ is Union!15085) r!7292) (not ((_ is Concat!23930) r!7292))))))

(declare-fun b!5372077 () Bool)

(declare-fun res!2279905 () Bool)

(assert (=> b!5372077 (=> res!2279905 e!3333298)))

(assert (=> b!5372077 (= res!2279905 (not ((_ is Cons!61431) (exprs!4969 (h!67880 zl!343)))))))

(declare-fun b!5372078 () Bool)

(declare-fun e!3333315 () Bool)

(assert (=> b!5372078 (= e!3333315 e!3333306)))

(declare-fun res!2279926 () Bool)

(assert (=> b!5372078 (=> res!2279926 e!3333306)))

(declare-fun lt!2187494 () Context!8938)

(assert (=> b!5372078 (= res!2279926 (not (= (unfocusZipper!827 (Cons!61432 lt!2187494 Nil!61432)) lt!2187490)))))

(assert (=> b!5372078 (= lt!2187490 (Concat!23930 (reg!15414 (regOne!30682 r!7292)) lt!2187479))))

(declare-fun b!5372079 () Bool)

(declare-fun e!3333304 () Bool)

(declare-fun e!3333299 () Bool)

(assert (=> b!5372079 (= e!3333304 e!3333299)))

(declare-fun res!2279933 () Bool)

(assert (=> b!5372079 (=> res!2279933 e!3333299)))

(declare-fun lt!2187469 () List!61556)

(declare-fun zipperDepth!158 (List!61556) Int)

(assert (=> b!5372079 (= res!2279933 (< (zipperDepth!158 zl!343) (zipperDepth!158 lt!2187469)))))

(assert (=> b!5372079 (= lt!2187469 (Cons!61432 lt!2187461 Nil!61432))))

(declare-fun b!5372080 () Bool)

(declare-fun tp!1490151 () Bool)

(assert (=> b!5372080 (= e!3333307 (and tp_is_empty!39423 tp!1490151))))

(declare-fun b!5372081 () Bool)

(assert (=> b!5372081 (= e!3333299 true)))

(declare-fun lt!2187493 () Regex!15085)

(assert (=> b!5372081 (= (matchR!7270 lt!2187493 s!2326) (matchZipper!1329 lt!2187458 s!2326))))

(declare-fun lt!2187459 () Unit!153858)

(declare-fun theoremZipperRegexEquiv!443 ((InoxSet Context!8938) List!61556 Regex!15085 List!61554) Unit!153858)

(assert (=> b!5372081 (= lt!2187459 (theoremZipperRegexEquiv!443 lt!2187458 lt!2187469 lt!2187493 s!2326))))

(declare-fun b!5372082 () Bool)

(assert (=> b!5372082 (= e!3333302 e!3333304)))

(declare-fun res!2279907 () Bool)

(assert (=> b!5372082 (=> res!2279907 e!3333304)))

(declare-fun regexDepth!173 (Regex!15085) Int)

(assert (=> b!5372082 (= res!2279907 (< (regexDepth!173 r!7292) (regexDepth!173 lt!2187493)))))

(assert (=> b!5372082 (= lt!2187493 (generalisedConcat!754 (t!374778 (exprs!4969 (h!67880 zl!343)))))))

(declare-fun b!5372083 () Bool)

(declare-fun res!2279935 () Bool)

(assert (=> b!5372083 (=> res!2279935 e!3333305)))

(declare-fun isEmpty!33416 (List!61554) Bool)

(assert (=> b!5372083 (= res!2279935 (not (isEmpty!33416 (_1!35587 lt!2187465))))))

(assert (=> b!5372084 (= e!3333301 e!3333314)))

(declare-fun res!2279914 () Bool)

(assert (=> b!5372084 (=> res!2279914 e!3333314)))

(assert (=> b!5372084 (= res!2279914 (or (and ((_ is ElementMatch!15085) (regOne!30682 r!7292)) (= (c!936165 (regOne!30682 r!7292)) (h!67878 s!2326))) ((_ is Union!15085) (regOne!30682 r!7292))))))

(declare-fun lt!2187464 () Unit!153858)

(assert (=> b!5372084 (= lt!2187464 e!3333308)))

(declare-fun c!936164 () Bool)

(assert (=> b!5372084 (= c!936164 (nullable!5254 (h!67879 (exprs!4969 (h!67880 zl!343)))))))

(assert (=> b!5372084 (= (flatMap!812 z!1189 lambda!277223) (derivationStepZipperUp!457 (h!67880 zl!343) (h!67878 s!2326)))))

(declare-fun lt!2187463 () Unit!153858)

(assert (=> b!5372084 (= lt!2187463 (lemmaFlatMapOnSingletonSet!344 z!1189 (h!67880 zl!343) lambda!277223))))

(assert (=> b!5372084 (= lt!2187482 (derivationStepZipperUp!457 lt!2187461 (h!67878 s!2326)))))

(assert (=> b!5372084 (= lt!2187496 (derivationStepZipperDown!533 (h!67879 (exprs!4969 (h!67880 zl!343))) lt!2187461 (h!67878 s!2326)))))

(assert (=> b!5372084 (= lt!2187461 (Context!8939 (t!374778 (exprs!4969 (h!67880 zl!343)))))))

(declare-fun lt!2187467 () (InoxSet Context!8938))

(assert (=> b!5372084 (= lt!2187467 (derivationStepZipperUp!457 (Context!8939 (Cons!61431 (h!67879 (exprs!4969 (h!67880 zl!343))) (t!374778 (exprs!4969 (h!67880 zl!343))))) (h!67878 s!2326)))))

(declare-fun b!5372085 () Bool)

(declare-fun tp!1490145 () Bool)

(assert (=> b!5372085 (= e!3333310 tp!1490145)))

(declare-fun b!5372086 () Bool)

(assert (=> b!5372086 (= e!3333303 e!3333297)))

(declare-fun res!2279910 () Bool)

(assert (=> b!5372086 (=> res!2279910 e!3333297)))

(assert (=> b!5372086 (= res!2279910 (not (= lt!2187489 lt!2187474)))))

(assert (=> b!5372086 (= (flatMap!812 lt!2187460 lambda!277223) (derivationStepZipperUp!457 lt!2187494 (h!67878 s!2326)))))

(declare-fun lt!2187485 () Unit!153858)

(assert (=> b!5372086 (= lt!2187485 (lemmaFlatMapOnSingletonSet!344 lt!2187460 lt!2187494 lambda!277223))))

(declare-fun lt!2187477 () (InoxSet Context!8938))

(assert (=> b!5372086 (= lt!2187477 (derivationStepZipperUp!457 lt!2187494 (h!67878 s!2326)))))

(assert (=> b!5372086 (= lt!2187489 (derivationStepZipper!1324 lt!2187460 (h!67878 s!2326)))))

(assert (=> b!5372086 (= lt!2187460 (store ((as const (Array Context!8938 Bool)) false) lt!2187494 true))))

(assert (=> b!5372086 (= lt!2187494 (Context!8939 (Cons!61431 (reg!15414 (regOne!30682 r!7292)) lt!2187472)))))

(declare-fun b!5372087 () Bool)

(assert (=> b!5372087 (= e!3333297 e!3333315)))

(declare-fun res!2279934 () Bool)

(assert (=> b!5372087 (=> res!2279934 e!3333315)))

(assert (=> b!5372087 (= res!2279934 (not (= r!7292 lt!2187479)))))

(assert (=> b!5372087 (= lt!2187479 (Concat!23930 lt!2187470 (regTwo!30682 r!7292)))))

(declare-fun b!5372088 () Bool)

(declare-fun res!2279923 () Bool)

(assert (=> b!5372088 (=> res!2279923 e!3333314)))

(assert (=> b!5372088 (= res!2279923 e!3333295)))

(declare-fun res!2279937 () Bool)

(assert (=> b!5372088 (=> (not res!2279937) (not e!3333295))))

(assert (=> b!5372088 (= res!2279937 ((_ is Concat!23930) (regOne!30682 r!7292)))))

(declare-fun b!5372089 () Bool)

(assert (=> b!5372089 (= e!3333293 (or (not lt!2187456) lt!2187487))))

(assert (= (and start!565234 res!2279912) b!5372057))

(assert (= (and b!5372057 res!2279921) b!5372058))

(assert (= (and b!5372058 res!2279928) b!5372051))

(assert (= (and b!5372051 (not res!2279927)) b!5372066))

(assert (= (and b!5372066 (not res!2279909)) b!5372071))

(assert (= (and b!5372071 (not res!2279924)) b!5372077))

(assert (= (and b!5372077 (not res!2279905)) b!5372065))

(assert (= (and b!5372065 (not res!2279913)) b!5372076))

(assert (= (and b!5372076 (not res!2279918)) b!5372062))

(assert (= (and b!5372062 (not res!2279919)) b!5372055))

(assert (= (and b!5372055 (not res!2279911)) b!5372084))

(assert (= (and b!5372084 c!936164) b!5372049))

(assert (= (and b!5372084 (not c!936164)) b!5372052))

(assert (= (and b!5372049 (not res!2279922)) b!5372053))

(assert (= (and b!5372084 (not res!2279914)) b!5372088))

(assert (= (and b!5372088 res!2279937) b!5372073))

(assert (= (and b!5372088 (not res!2279923)) b!5372070))

(assert (= (and b!5372070 (not res!2279925)) b!5372068))

(assert (= (and b!5372068 (not res!2279906)) b!5372086))

(assert (= (and b!5372086 (not res!2279910)) b!5372048))

(assert (= (and b!5372048 (not res!2279920)) b!5372072))

(assert (= (and b!5372072 (not res!2279930)) b!5372087))

(assert (= (and b!5372087 (not res!2279934)) b!5372078))

(assert (= (and b!5372078 (not res!2279926)) b!5372050))

(assert (= (and b!5372050 (not res!2279929)) b!5372063))

(assert (= (and b!5372063 (not res!2279915)) b!5372047))

(assert (= (and b!5372047 res!2279916) b!5372089))

(assert (= (and b!5372047 (not res!2279936)) b!5372060))

(assert (= (and b!5372060 (not res!2279932)) b!5372074))

(assert (= (and b!5372074 (not res!2279917)) b!5372056))

(assert (= (and b!5372056 (not res!2279931)) b!5372083))

(assert (= (and b!5372083 (not res!2279935)) b!5372061))

(assert (= (and b!5372061 (not res!2279908)) b!5372082))

(assert (= (and b!5372082 (not res!2279907)) b!5372079))

(assert (= (and b!5372079 (not res!2279933)) b!5372081))

(assert (= (and start!565234 ((_ is ElementMatch!15085) r!7292)) b!5372067))

(assert (= (and start!565234 ((_ is Concat!23930) r!7292)) b!5372054))

(assert (= (and start!565234 ((_ is Star!15085) r!7292)) b!5372085))

(assert (= (and start!565234 ((_ is Union!15085) r!7292)) b!5372075))

(assert (= (and start!565234 condSetEmpty!34811) setIsEmpty!34811))

(assert (= (and start!565234 (not condSetEmpty!34811)) setNonEmpty!34811))

(assert (= setNonEmpty!34811 b!5372069))

(assert (= b!5372059 b!5372064))

(assert (= (and start!565234 ((_ is Cons!61432) zl!343)) b!5372059))

(assert (= (and start!565234 ((_ is Cons!61430) s!2326)) b!5372080))

(declare-fun m!6399140 () Bool)

(assert (=> b!5372083 m!6399140))

(declare-fun m!6399142 () Bool)

(assert (=> b!5372068 m!6399142))

(declare-fun m!6399144 () Bool)

(assert (=> b!5372078 m!6399144))

(declare-fun m!6399146 () Bool)

(assert (=> b!5372056 m!6399146))

(declare-fun m!6399148 () Bool)

(assert (=> b!5372048 m!6399148))

(declare-fun m!6399150 () Bool)

(assert (=> b!5372048 m!6399150))

(declare-fun m!6399152 () Bool)

(assert (=> b!5372060 m!6399152))

(declare-fun m!6399154 () Bool)

(assert (=> b!5372060 m!6399154))

(declare-fun m!6399156 () Bool)

(assert (=> b!5372060 m!6399156))

(declare-fun m!6399158 () Bool)

(assert (=> b!5372060 m!6399158))

(assert (=> b!5372060 m!6399156))

(declare-fun m!6399160 () Bool)

(assert (=> b!5372060 m!6399160))

(declare-fun m!6399162 () Bool)

(assert (=> b!5372060 m!6399162))

(declare-fun m!6399164 () Bool)

(assert (=> b!5372060 m!6399164))

(declare-fun m!6399166 () Bool)

(assert (=> b!5372060 m!6399166))

(declare-fun m!6399168 () Bool)

(assert (=> b!5372058 m!6399168))

(declare-fun m!6399170 () Bool)

(assert (=> b!5372081 m!6399170))

(declare-fun m!6399172 () Bool)

(assert (=> b!5372081 m!6399172))

(declare-fun m!6399174 () Bool)

(assert (=> b!5372081 m!6399174))

(declare-fun m!6399176 () Bool)

(assert (=> start!565234 m!6399176))

(declare-fun m!6399178 () Bool)

(assert (=> setNonEmpty!34811 m!6399178))

(declare-fun m!6399180 () Bool)

(assert (=> b!5372057 m!6399180))

(declare-fun m!6399182 () Bool)

(assert (=> b!5372051 m!6399182))

(declare-fun m!6399184 () Bool)

(assert (=> b!5372051 m!6399184))

(declare-fun m!6399186 () Bool)

(assert (=> b!5372051 m!6399186))

(declare-fun m!6399188 () Bool)

(assert (=> b!5372063 m!6399188))

(declare-fun m!6399190 () Bool)

(assert (=> b!5372053 m!6399190))

(declare-fun m!6399192 () Bool)

(assert (=> b!5372084 m!6399192))

(declare-fun m!6399194 () Bool)

(assert (=> b!5372084 m!6399194))

(declare-fun m!6399196 () Bool)

(assert (=> b!5372084 m!6399196))

(declare-fun m!6399198 () Bool)

(assert (=> b!5372084 m!6399198))

(declare-fun m!6399200 () Bool)

(assert (=> b!5372084 m!6399200))

(declare-fun m!6399202 () Bool)

(assert (=> b!5372084 m!6399202))

(declare-fun m!6399204 () Bool)

(assert (=> b!5372084 m!6399204))

(declare-fun m!6399206 () Bool)

(assert (=> b!5372082 m!6399206))

(declare-fun m!6399208 () Bool)

(assert (=> b!5372082 m!6399208))

(declare-fun m!6399210 () Bool)

(assert (=> b!5372082 m!6399210))

(declare-fun m!6399212 () Bool)

(assert (=> b!5372074 m!6399212))

(declare-fun m!6399214 () Bool)

(assert (=> b!5372050 m!6399214))

(declare-fun m!6399216 () Bool)

(assert (=> b!5372050 m!6399216))

(declare-fun m!6399218 () Bool)

(assert (=> b!5372050 m!6399218))

(declare-fun m!6399220 () Bool)

(assert (=> b!5372050 m!6399220))

(declare-fun m!6399222 () Bool)

(assert (=> b!5372050 m!6399222))

(declare-fun m!6399224 () Bool)

(assert (=> b!5372050 m!6399224))

(declare-fun m!6399226 () Bool)

(assert (=> b!5372050 m!6399226))

(declare-fun m!6399228 () Bool)

(assert (=> b!5372050 m!6399228))

(declare-fun m!6399230 () Bool)

(assert (=> b!5372050 m!6399230))

(declare-fun m!6399232 () Bool)

(assert (=> b!5372059 m!6399232))

(declare-fun m!6399234 () Bool)

(assert (=> b!5372079 m!6399234))

(declare-fun m!6399236 () Bool)

(assert (=> b!5372079 m!6399236))

(declare-fun m!6399238 () Bool)

(assert (=> b!5372073 m!6399238))

(declare-fun m!6399240 () Bool)

(assert (=> b!5372086 m!6399240))

(declare-fun m!6399242 () Bool)

(assert (=> b!5372086 m!6399242))

(declare-fun m!6399244 () Bool)

(assert (=> b!5372086 m!6399244))

(declare-fun m!6399246 () Bool)

(assert (=> b!5372086 m!6399246))

(declare-fun m!6399248 () Bool)

(assert (=> b!5372086 m!6399248))

(declare-fun m!6399250 () Bool)

(assert (=> b!5372071 m!6399250))

(declare-fun m!6399252 () Bool)

(assert (=> b!5372047 m!6399252))

(declare-fun m!6399254 () Bool)

(assert (=> b!5372047 m!6399254))

(declare-fun m!6399256 () Bool)

(assert (=> b!5372047 m!6399256))

(declare-fun m!6399258 () Bool)

(assert (=> b!5372055 m!6399258))

(declare-fun m!6399260 () Bool)

(assert (=> b!5372061 m!6399260))

(declare-fun m!6399262 () Bool)

(assert (=> b!5372061 m!6399262))

(assert (=> b!5372061 m!6399198))

(declare-fun m!6399264 () Bool)

(assert (=> b!5372061 m!6399264))

(declare-fun m!6399266 () Bool)

(assert (=> b!5372061 m!6399266))

(declare-fun m!6399268 () Bool)

(assert (=> b!5372049 m!6399268))

(declare-fun m!6399270 () Bool)

(assert (=> b!5372049 m!6399270))

(declare-fun m!6399272 () Bool)

(assert (=> b!5372049 m!6399272))

(declare-fun m!6399274 () Bool)

(assert (=> b!5372066 m!6399274))

(declare-fun m!6399276 () Bool)

(assert (=> b!5372062 m!6399276))

(assert (=> b!5372062 m!6399276))

(declare-fun m!6399278 () Bool)

(assert (=> b!5372062 m!6399278))

(declare-fun m!6399280 () Bool)

(assert (=> b!5372062 m!6399280))

(declare-fun m!6399282 () Bool)

(assert (=> b!5372062 m!6399282))

(declare-fun m!6399284 () Bool)

(assert (=> b!5372062 m!6399284))

(assert (=> b!5372062 m!6399280))

(declare-fun m!6399286 () Bool)

(assert (=> b!5372062 m!6399286))

(declare-fun m!6399288 () Bool)

(assert (=> b!5372065 m!6399288))

(assert (=> b!5372065 m!6399288))

(declare-fun m!6399290 () Bool)

(assert (=> b!5372065 m!6399290))

(check-sat (not b!5372053) (not b!5372059) (not b!5372051) (not b!5372073) (not b!5372082) (not b!5372047) (not b!5372079) (not b!5372060) (not b!5372064) (not b!5372071) (not b!5372062) (not setNonEmpty!34811) (not b!5372078) tp_is_empty!39423 (not b!5372065) (not b!5372084) (not b!5372055) (not b!5372049) (not b!5372081) (not b!5372068) (not b!5372061) (not b!5372080) (not b!5372063) (not b!5372074) (not b!5372056) (not b!5372075) (not b!5372083) (not b!5372069) (not b!5372085) (not b!5372058) (not b!5372057) (not b!5372048) (not b!5372066) (not b!5372050) (not b!5372086) (not b!5372054) (not start!565234))
(check-sat)
