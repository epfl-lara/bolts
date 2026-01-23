; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!565986 () Bool)

(assert start!565986)

(declare-fun b!5382165 () Bool)

(assert (=> b!5382165 true))

(assert (=> b!5382165 true))

(declare-fun lambda!278613 () Int)

(declare-fun lambda!278612 () Int)

(assert (=> b!5382165 (not (= lambda!278613 lambda!278612))))

(assert (=> b!5382165 true))

(assert (=> b!5382165 true))

(declare-fun b!5382185 () Bool)

(assert (=> b!5382185 true))

(declare-fun bs!1246096 () Bool)

(declare-fun b!5382172 () Bool)

(assert (= bs!1246096 (and b!5382172 b!5382165)))

(declare-datatypes ((C!30488 0))(
  ( (C!30489 (val!24946 Int)) )
))
(declare-datatypes ((Regex!15109 0))(
  ( (ElementMatch!15109 (c!938077 C!30488)) (Concat!23954 (regOne!30730 Regex!15109) (regTwo!30730 Regex!15109)) (EmptyExpr!15109) (Star!15109 (reg!15438 Regex!15109)) (EmptyLang!15109) (Union!15109 (regOne!30731 Regex!15109) (regTwo!30731 Regex!15109)) )
))
(declare-fun r!7292 () Regex!15109)

(declare-fun lambda!278615 () Int)

(declare-fun lt!2191365 () Regex!15109)

(assert (=> bs!1246096 (= (= lt!2191365 (regOne!30730 r!7292)) (= lambda!278615 lambda!278612))))

(assert (=> bs!1246096 (not (= lambda!278615 lambda!278613))))

(assert (=> b!5382172 true))

(assert (=> b!5382172 true))

(assert (=> b!5382172 true))

(declare-fun lambda!278616 () Int)

(assert (=> bs!1246096 (not (= lambda!278616 lambda!278612))))

(assert (=> bs!1246096 (= (= lt!2191365 (regOne!30730 r!7292)) (= lambda!278616 lambda!278613))))

(assert (=> b!5382172 (not (= lambda!278616 lambda!278615))))

(assert (=> b!5382172 true))

(assert (=> b!5382172 true))

(assert (=> b!5382172 true))

(declare-fun bs!1246097 () Bool)

(declare-fun b!5382199 () Bool)

(assert (= bs!1246097 (and b!5382199 b!5382165)))

(declare-datatypes ((List!61626 0))(
  ( (Nil!61502) (Cons!61502 (h!67950 C!30488) (t!374849 List!61626)) )
))
(declare-fun s!2326 () List!61626)

(declare-fun lambda!278617 () Int)

(declare-datatypes ((tuple2!64616 0))(
  ( (tuple2!64617 (_1!35611 List!61626) (_2!35611 List!61626)) )
))
(declare-fun lt!2191403 () tuple2!64616)

(assert (=> bs!1246097 (= (and (= (_1!35611 lt!2191403) s!2326) (= (reg!15438 (regOne!30730 r!7292)) (regOne!30730 r!7292)) (= lt!2191365 (regTwo!30730 r!7292))) (= lambda!278617 lambda!278612))))

(assert (=> bs!1246097 (not (= lambda!278617 lambda!278613))))

(declare-fun bs!1246098 () Bool)

(assert (= bs!1246098 (and b!5382199 b!5382172)))

(assert (=> bs!1246098 (= (and (= (_1!35611 lt!2191403) s!2326) (= (reg!15438 (regOne!30730 r!7292)) lt!2191365) (= lt!2191365 (regTwo!30730 r!7292))) (= lambda!278617 lambda!278615))))

(assert (=> bs!1246098 (not (= lambda!278617 lambda!278616))))

(assert (=> b!5382199 true))

(assert (=> b!5382199 true))

(assert (=> b!5382199 true))

(declare-fun lambda!278618 () Int)

(assert (=> bs!1246097 (not (= lambda!278618 lambda!278613))))

(assert (=> b!5382199 (not (= lambda!278618 lambda!278617))))

(assert (=> bs!1246098 (not (= lambda!278618 lambda!278615))))

(assert (=> bs!1246098 (not (= lambda!278618 lambda!278616))))

(assert (=> bs!1246097 (not (= lambda!278618 lambda!278612))))

(assert (=> b!5382199 true))

(assert (=> b!5382199 true))

(assert (=> b!5382199 true))

(declare-fun lambda!278619 () Int)

(assert (=> bs!1246097 (= (and (= (_1!35611 lt!2191403) s!2326) (= (reg!15438 (regOne!30730 r!7292)) (regOne!30730 r!7292)) (= lt!2191365 (regTwo!30730 r!7292))) (= lambda!278619 lambda!278613))))

(assert (=> b!5382199 (not (= lambda!278619 lambda!278617))))

(assert (=> bs!1246098 (not (= lambda!278619 lambda!278615))))

(assert (=> bs!1246098 (= (and (= (_1!35611 lt!2191403) s!2326) (= (reg!15438 (regOne!30730 r!7292)) lt!2191365) (= lt!2191365 (regTwo!30730 r!7292))) (= lambda!278619 lambda!278616))))

(assert (=> bs!1246097 (not (= lambda!278619 lambda!278612))))

(assert (=> b!5382199 (not (= lambda!278619 lambda!278618))))

(assert (=> b!5382199 true))

(assert (=> b!5382199 true))

(assert (=> b!5382199 true))

(declare-fun b!5382160 () Bool)

(declare-fun e!3338682 () Bool)

(declare-fun tp_is_empty!39471 () Bool)

(declare-fun tp!1491564 () Bool)

(assert (=> b!5382160 (= e!3338682 (and tp_is_empty!39471 tp!1491564))))

(declare-fun tp!1491568 () Bool)

(declare-fun setNonEmpty!34919 () Bool)

(declare-fun e!3338678 () Bool)

(declare-fun setRes!34919 () Bool)

(declare-datatypes ((List!61627 0))(
  ( (Nil!61503) (Cons!61503 (h!67951 Regex!15109) (t!374850 List!61627)) )
))
(declare-datatypes ((Context!8986 0))(
  ( (Context!8987 (exprs!4993 List!61627)) )
))
(declare-fun setElem!34919 () Context!8986)

(declare-fun inv!81019 (Context!8986) Bool)

(assert (=> setNonEmpty!34919 (= setRes!34919 (and tp!1491568 (inv!81019 setElem!34919) e!3338678))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8986))

(declare-fun setRest!34919 () (InoxSet Context!8986))

(assert (=> setNonEmpty!34919 (= z!1189 ((_ map or) (store ((as const (Array Context!8986 Bool)) false) setElem!34919 true) setRest!34919))))

(declare-fun b!5382161 () Bool)

(declare-fun e!3338674 () Bool)

(declare-fun tp!1491565 () Bool)

(declare-fun tp!1491569 () Bool)

(assert (=> b!5382161 (= e!3338674 (and tp!1491565 tp!1491569))))

(declare-fun b!5382162 () Bool)

(declare-fun tp!1491566 () Bool)

(assert (=> b!5382162 (= e!3338674 tp!1491566)))

(declare-fun b!5382163 () Bool)

(declare-fun e!3338688 () Bool)

(declare-fun lt!2191394 () Bool)

(declare-fun lt!2191384 () Bool)

(assert (=> b!5382163 (= e!3338688 (or (not lt!2191394) lt!2191384))))

(declare-fun b!5382164 () Bool)

(declare-datatypes ((Unit!153954 0))(
  ( (Unit!153955) )
))
(declare-fun e!3338684 () Unit!153954)

(declare-fun Unit!153956 () Unit!153954)

(assert (=> b!5382164 (= e!3338684 Unit!153956)))

(declare-fun b!5382166 () Bool)

(declare-fun res!2285292 () Bool)

(declare-fun e!3338676 () Bool)

(assert (=> b!5382166 (=> res!2285292 e!3338676)))

(declare-datatypes ((List!61628 0))(
  ( (Nil!61504) (Cons!61504 (h!67952 Context!8986) (t!374851 List!61628)) )
))
(declare-fun zl!343 () List!61628)

(declare-fun isEmpty!33496 (List!61627) Bool)

(assert (=> b!5382166 (= res!2285292 (isEmpty!33496 (t!374850 (exprs!4993 (h!67952 zl!343)))))))

(declare-fun b!5382167 () Bool)

(declare-fun res!2285297 () Bool)

(declare-fun e!3338690 () Bool)

(assert (=> b!5382167 (=> res!2285297 e!3338690)))

(declare-fun generalisedUnion!1038 (List!61627) Regex!15109)

(declare-fun unfocusZipperList!551 (List!61628) List!61627)

(assert (=> b!5382167 (= res!2285297 (not (= r!7292 (generalisedUnion!1038 (unfocusZipperList!551 zl!343)))))))

(declare-fun b!5382168 () Bool)

(declare-fun res!2285315 () Bool)

(assert (=> b!5382168 (=> res!2285315 e!3338690)))

(get-info :version)

(assert (=> b!5382168 (= res!2285315 (not ((_ is Cons!61503) (exprs!4993 (h!67952 zl!343)))))))

(declare-fun b!5382169 () Bool)

(assert (=> b!5382169 (= e!3338674 tp_is_empty!39471)))

(declare-fun b!5382170 () Bool)

(declare-fun res!2285319 () Bool)

(declare-fun e!3338673 () Bool)

(assert (=> b!5382170 (=> res!2285319 e!3338673)))

(declare-fun lt!2191376 () tuple2!64616)

(declare-fun matchR!7294 (Regex!15109 List!61626) Bool)

(assert (=> b!5382170 (= res!2285319 (not (matchR!7294 lt!2191365 (_2!35611 lt!2191376))))))

(declare-fun b!5382171 () Bool)

(declare-fun e!3338691 () Bool)

(declare-fun e!3338686 () Bool)

(assert (=> b!5382171 (= e!3338691 e!3338686)))

(declare-fun res!2285298 () Bool)

(assert (=> b!5382171 (=> res!2285298 e!3338686)))

(declare-fun lt!2191375 () Regex!15109)

(assert (=> b!5382171 (= res!2285298 (not (= r!7292 lt!2191375)))))

(assert (=> b!5382171 (= lt!2191375 (Concat!23954 lt!2191365 (regTwo!30730 r!7292)))))

(declare-fun e!3338675 () Bool)

(declare-fun e!3338692 () Bool)

(assert (=> b!5382172 (= e!3338675 e!3338692)))

(declare-fun res!2285324 () Bool)

(assert (=> b!5382172 (=> res!2285324 e!3338692)))

(declare-fun ++!13412 (List!61626 List!61626) List!61626)

(assert (=> b!5382172 (= res!2285324 (not (= (++!13412 (_1!35611 lt!2191403) (_2!35611 lt!2191403)) s!2326)))))

(declare-datatypes ((Option!15220 0))(
  ( (None!15219) (Some!15219 (v!51248 tuple2!64616)) )
))
(declare-fun lt!2191378 () Option!15220)

(declare-fun get!21172 (Option!15220) tuple2!64616)

(assert (=> b!5382172 (= lt!2191403 (get!21172 lt!2191378))))

(declare-fun Exists!2290 (Int) Bool)

(assert (=> b!5382172 (= (Exists!2290 lambda!278615) (Exists!2290 lambda!278616))))

(declare-fun lt!2191402 () Unit!153954)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!944 (Regex!15109 Regex!15109 List!61626) Unit!153954)

(assert (=> b!5382172 (= lt!2191402 (lemmaExistCutMatchRandMatchRSpecEquivalent!944 lt!2191365 (regTwo!30730 r!7292) s!2326))))

(declare-fun isDefined!11923 (Option!15220) Bool)

(assert (=> b!5382172 (= (isDefined!11923 lt!2191378) (Exists!2290 lambda!278615))))

(declare-fun findConcatSeparation!1634 (Regex!15109 Regex!15109 List!61626 List!61626 List!61626) Option!15220)

(assert (=> b!5382172 (= lt!2191378 (findConcatSeparation!1634 lt!2191365 (regTwo!30730 r!7292) Nil!61502 s!2326 s!2326))))

(declare-fun lt!2191388 () Unit!153954)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1398 (Regex!15109 Regex!15109 List!61626) Unit!153954)

(assert (=> b!5382172 (= lt!2191388 (lemmaFindConcatSeparationEquivalentToExists!1398 lt!2191365 (regTwo!30730 r!7292) s!2326))))

(declare-fun b!5382173 () Bool)

(declare-fun e!3338671 () Bool)

(assert (=> b!5382173 (= e!3338686 e!3338671)))

(declare-fun res!2285299 () Bool)

(assert (=> b!5382173 (=> res!2285299 e!3338671)))

(declare-fun lt!2191395 () Context!8986)

(declare-fun lt!2191371 () Regex!15109)

(declare-fun unfocusZipper!851 (List!61628) Regex!15109)

(assert (=> b!5382173 (= res!2285299 (not (= (unfocusZipper!851 (Cons!61504 lt!2191395 Nil!61504)) lt!2191371)))))

(assert (=> b!5382173 (= lt!2191371 (Concat!23954 (reg!15438 (regOne!30730 r!7292)) lt!2191375))))

(declare-fun b!5382174 () Bool)

(declare-fun res!2285305 () Bool)

(assert (=> b!5382174 (=> res!2285305 e!3338692)))

(assert (=> b!5382174 (= res!2285305 (not (matchR!7294 (regTwo!30730 r!7292) (_2!35611 lt!2191403))))))

(declare-fun b!5382175 () Bool)

(declare-fun e!3338681 () Bool)

(declare-fun tp!1491567 () Bool)

(assert (=> b!5382175 (= e!3338681 tp!1491567)))

(declare-fun b!5382176 () Bool)

(declare-fun e!3338677 () Bool)

(assert (=> b!5382176 (= e!3338677 e!3338691)))

(declare-fun res!2285322 () Bool)

(assert (=> b!5382176 (=> res!2285322 e!3338691)))

(declare-fun lt!2191380 () (InoxSet Context!8986))

(declare-fun lt!2191390 () (InoxSet Context!8986))

(assert (=> b!5382176 (= res!2285322 (not (= lt!2191380 lt!2191390)))))

(declare-fun lambda!278614 () Int)

(declare-fun lt!2191362 () (InoxSet Context!8986))

(declare-fun flatMap!836 ((InoxSet Context!8986) Int) (InoxSet Context!8986))

(declare-fun derivationStepZipperUp!481 (Context!8986 C!30488) (InoxSet Context!8986))

(assert (=> b!5382176 (= (flatMap!836 lt!2191362 lambda!278614) (derivationStepZipperUp!481 lt!2191395 (h!67950 s!2326)))))

(declare-fun lt!2191359 () Unit!153954)

(declare-fun lemmaFlatMapOnSingletonSet!368 ((InoxSet Context!8986) Context!8986 Int) Unit!153954)

(assert (=> b!5382176 (= lt!2191359 (lemmaFlatMapOnSingletonSet!368 lt!2191362 lt!2191395 lambda!278614))))

(declare-fun lt!2191386 () (InoxSet Context!8986))

(assert (=> b!5382176 (= lt!2191386 (derivationStepZipperUp!481 lt!2191395 (h!67950 s!2326)))))

(declare-fun derivationStepZipper!1348 ((InoxSet Context!8986) C!30488) (InoxSet Context!8986))

(assert (=> b!5382176 (= lt!2191380 (derivationStepZipper!1348 lt!2191362 (h!67950 s!2326)))))

(assert (=> b!5382176 (= lt!2191362 (store ((as const (Array Context!8986 Bool)) false) lt!2191395 true))))

(declare-fun lt!2191368 () List!61627)

(assert (=> b!5382176 (= lt!2191395 (Context!8987 (Cons!61503 (reg!15438 (regOne!30730 r!7292)) lt!2191368)))))

(declare-fun b!5382177 () Bool)

(declare-fun res!2285313 () Bool)

(assert (=> b!5382177 (=> res!2285313 e!3338690)))

(declare-fun generalisedConcat!778 (List!61627) Regex!15109)

(assert (=> b!5382177 (= res!2285313 (not (= r!7292 (generalisedConcat!778 (exprs!4993 (h!67952 zl!343))))))))

(declare-fun b!5382178 () Bool)

(declare-fun e!3338685 () Bool)

(assert (=> b!5382178 (= e!3338685 e!3338675)))

(declare-fun res!2285314 () Bool)

(assert (=> b!5382178 (=> res!2285314 e!3338675)))

(assert (=> b!5382178 (= res!2285314 (not lt!2191394))))

(assert (=> b!5382178 e!3338688))

(declare-fun res!2285325 () Bool)

(assert (=> b!5382178 (=> (not res!2285325) (not e!3338688))))

(declare-fun matchRSpec!2212 (Regex!15109 List!61626) Bool)

(assert (=> b!5382178 (= res!2285325 (= (matchR!7294 lt!2191371 s!2326) (matchRSpec!2212 lt!2191371 s!2326)))))

(declare-fun lt!2191358 () Unit!153954)

(declare-fun mainMatchTheorem!2212 (Regex!15109 List!61626) Unit!153954)

(assert (=> b!5382178 (= lt!2191358 (mainMatchTheorem!2212 lt!2191371 s!2326))))

(declare-fun b!5382179 () Bool)

(declare-fun res!2285318 () Bool)

(assert (=> b!5382179 (=> res!2285318 e!3338673)))

(assert (=> b!5382179 (= res!2285318 (not (matchR!7294 (reg!15438 (regOne!30730 r!7292)) (_1!35611 lt!2191376))))))

(declare-fun setIsEmpty!34919 () Bool)

(assert (=> setIsEmpty!34919 setRes!34919))

(declare-fun b!5382180 () Bool)

(declare-fun res!2285301 () Bool)

(declare-fun e!3338679 () Bool)

(assert (=> b!5382180 (=> (not res!2285301) (not e!3338679))))

(declare-fun toList!8893 ((InoxSet Context!8986)) List!61628)

(assert (=> b!5382180 (= res!2285301 (= (toList!8893 z!1189) zl!343))))

(declare-fun b!5382181 () Bool)

(assert (=> b!5382181 (= e!3338671 e!3338685)))

(declare-fun res!2285296 () Bool)

(assert (=> b!5382181 (=> res!2285296 e!3338685)))

(declare-fun lt!2191369 () Context!8986)

(assert (=> b!5382181 (= res!2285296 (not (= (unfocusZipper!851 (Cons!61504 lt!2191369 Nil!61504)) (reg!15438 (regOne!30730 r!7292)))))))

(declare-fun lt!2191361 () Context!8986)

(declare-fun lt!2191360 () (InoxSet Context!8986))

(assert (=> b!5382181 (= (flatMap!836 lt!2191360 lambda!278614) (derivationStepZipperUp!481 lt!2191361 (h!67950 s!2326)))))

(declare-fun lt!2191377 () Unit!153954)

(assert (=> b!5382181 (= lt!2191377 (lemmaFlatMapOnSingletonSet!368 lt!2191360 lt!2191361 lambda!278614))))

(declare-fun lt!2191367 () (InoxSet Context!8986))

(assert (=> b!5382181 (= (flatMap!836 lt!2191367 lambda!278614) (derivationStepZipperUp!481 lt!2191369 (h!67950 s!2326)))))

(declare-fun lt!2191400 () Unit!153954)

(assert (=> b!5382181 (= lt!2191400 (lemmaFlatMapOnSingletonSet!368 lt!2191367 lt!2191369 lambda!278614))))

(declare-fun lt!2191396 () (InoxSet Context!8986))

(assert (=> b!5382181 (= lt!2191396 (derivationStepZipperUp!481 lt!2191361 (h!67950 s!2326)))))

(declare-fun lt!2191370 () (InoxSet Context!8986))

(assert (=> b!5382181 (= lt!2191370 (derivationStepZipperUp!481 lt!2191369 (h!67950 s!2326)))))

(assert (=> b!5382181 (= lt!2191360 (store ((as const (Array Context!8986 Bool)) false) lt!2191361 true))))

(assert (=> b!5382181 (= lt!2191367 (store ((as const (Array Context!8986 Bool)) false) lt!2191369 true))))

(assert (=> b!5382181 (= lt!2191369 (Context!8987 (Cons!61503 (reg!15438 (regOne!30730 r!7292)) Nil!61503)))))

(declare-fun b!5382182 () Bool)

(declare-fun res!2285310 () Bool)

(assert (=> b!5382182 (=> res!2285310 e!3338692)))

(assert (=> b!5382182 (= res!2285310 (not (matchR!7294 lt!2191365 (_1!35611 lt!2191403))))))

(declare-fun b!5382183 () Bool)

(declare-fun res!2285306 () Bool)

(assert (=> b!5382183 (=> res!2285306 e!3338691)))

(declare-fun lt!2191391 () Regex!15109)

(assert (=> b!5382183 (= res!2285306 (not (= lt!2191391 r!7292)))))

(declare-fun b!5382184 () Bool)

(declare-fun e!3338689 () Bool)

(assert (=> b!5382184 (= e!3338689 e!3338677)))

(declare-fun res!2285323 () Bool)

(assert (=> b!5382184 (=> res!2285323 e!3338677)))

(declare-fun lt!2191366 () (InoxSet Context!8986))

(assert (=> b!5382184 (= res!2285323 (not (= lt!2191366 lt!2191390)))))

(declare-fun derivationStepZipperDown!557 (Regex!15109 Context!8986 C!30488) (InoxSet Context!8986))

(assert (=> b!5382184 (= lt!2191390 (derivationStepZipperDown!557 (reg!15438 (regOne!30730 r!7292)) lt!2191361 (h!67950 s!2326)))))

(assert (=> b!5382184 (= lt!2191361 (Context!8987 lt!2191368))))

(assert (=> b!5382184 (= lt!2191368 (Cons!61503 lt!2191365 (t!374850 (exprs!4993 (h!67952 zl!343)))))))

(assert (=> b!5382184 (= lt!2191365 (Star!15109 (reg!15438 (regOne!30730 r!7292))))))

(assert (=> b!5382185 (= e!3338676 e!3338689)))

(declare-fun res!2285308 () Bool)

(assert (=> b!5382185 (=> res!2285308 e!3338689)))

(assert (=> b!5382185 (= res!2285308 (or (and ((_ is ElementMatch!15109) (regOne!30730 r!7292)) (= (c!938077 (regOne!30730 r!7292)) (h!67950 s!2326))) ((_ is Union!15109) (regOne!30730 r!7292))))))

(declare-fun lt!2191392 () Unit!153954)

(assert (=> b!5382185 (= lt!2191392 e!3338684)))

(declare-fun c!938076 () Bool)

(declare-fun nullable!5278 (Regex!15109) Bool)

(assert (=> b!5382185 (= c!938076 (nullable!5278 (h!67951 (exprs!4993 (h!67952 zl!343)))))))

(assert (=> b!5382185 (= (flatMap!836 z!1189 lambda!278614) (derivationStepZipperUp!481 (h!67952 zl!343) (h!67950 s!2326)))))

(declare-fun lt!2191404 () Unit!153954)

(assert (=> b!5382185 (= lt!2191404 (lemmaFlatMapOnSingletonSet!368 z!1189 (h!67952 zl!343) lambda!278614))))

(declare-fun lt!2191373 () (InoxSet Context!8986))

(declare-fun lt!2191389 () Context!8986)

(assert (=> b!5382185 (= lt!2191373 (derivationStepZipperUp!481 lt!2191389 (h!67950 s!2326)))))

(assert (=> b!5382185 (= lt!2191366 (derivationStepZipperDown!557 (h!67951 (exprs!4993 (h!67952 zl!343))) lt!2191389 (h!67950 s!2326)))))

(assert (=> b!5382185 (= lt!2191389 (Context!8987 (t!374850 (exprs!4993 (h!67952 zl!343)))))))

(declare-fun lt!2191399 () (InoxSet Context!8986))

(assert (=> b!5382185 (= lt!2191399 (derivationStepZipperUp!481 (Context!8987 (Cons!61503 (h!67951 (exprs!4993 (h!67952 zl!343))) (t!374850 (exprs!4993 (h!67952 zl!343))))) (h!67950 s!2326)))))

(declare-fun b!5382186 () Bool)

(declare-fun tp!1491560 () Bool)

(declare-fun e!3338680 () Bool)

(assert (=> b!5382186 (= e!3338680 (and (inv!81019 (h!67952 zl!343)) e!3338681 tp!1491560))))

(declare-fun res!2285311 () Bool)

(assert (=> start!565986 (=> (not res!2285311) (not e!3338679))))

(declare-fun validRegex!6845 (Regex!15109) Bool)

(assert (=> start!565986 (= res!2285311 (validRegex!6845 r!7292))))

(assert (=> start!565986 e!3338679))

(assert (=> start!565986 e!3338674))

(declare-fun condSetEmpty!34919 () Bool)

(assert (=> start!565986 (= condSetEmpty!34919 (= z!1189 ((as const (Array Context!8986 Bool)) false)))))

(assert (=> start!565986 setRes!34919))

(assert (=> start!565986 e!3338680))

(assert (=> start!565986 e!3338682))

(assert (=> b!5382165 (= e!3338690 e!3338676)))

(declare-fun res!2285317 () Bool)

(assert (=> b!5382165 (=> res!2285317 e!3338676)))

(declare-fun lt!2191364 () Bool)

(assert (=> b!5382165 (= res!2285317 (or (not (= lt!2191394 lt!2191364)) ((_ is Nil!61502) s!2326)))))

(assert (=> b!5382165 (= (Exists!2290 lambda!278612) (Exists!2290 lambda!278613))))

(declare-fun lt!2191401 () Unit!153954)

(assert (=> b!5382165 (= lt!2191401 (lemmaExistCutMatchRandMatchRSpecEquivalent!944 (regOne!30730 r!7292) (regTwo!30730 r!7292) s!2326))))

(assert (=> b!5382165 (= lt!2191364 (Exists!2290 lambda!278612))))

(assert (=> b!5382165 (= lt!2191364 (isDefined!11923 (findConcatSeparation!1634 (regOne!30730 r!7292) (regTwo!30730 r!7292) Nil!61502 s!2326 s!2326)))))

(declare-fun lt!2191397 () Unit!153954)

(assert (=> b!5382165 (= lt!2191397 (lemmaFindConcatSeparationEquivalentToExists!1398 (regOne!30730 r!7292) (regTwo!30730 r!7292) s!2326))))

(declare-fun b!5382187 () Bool)

(declare-fun res!2285300 () Bool)

(assert (=> b!5382187 (=> res!2285300 e!3338689)))

(declare-fun e!3338672 () Bool)

(assert (=> b!5382187 (= res!2285300 e!3338672)))

(declare-fun res!2285307 () Bool)

(assert (=> b!5382187 (=> (not res!2285307) (not e!3338672))))

(assert (=> b!5382187 (= res!2285307 ((_ is Concat!23954) (regOne!30730 r!7292)))))

(declare-fun b!5382188 () Bool)

(declare-fun res!2285293 () Bool)

(assert (=> b!5382188 (=> res!2285293 e!3338690)))

(declare-fun isEmpty!33497 (List!61628) Bool)

(assert (=> b!5382188 (= res!2285293 (not (isEmpty!33497 (t!374851 zl!343))))))

(declare-fun b!5382189 () Bool)

(declare-fun tp!1491562 () Bool)

(assert (=> b!5382189 (= e!3338678 tp!1491562)))

(declare-fun b!5382190 () Bool)

(declare-fun tp!1491563 () Bool)

(declare-fun tp!1491561 () Bool)

(assert (=> b!5382190 (= e!3338674 (and tp!1491563 tp!1491561))))

(declare-fun b!5382191 () Bool)

(assert (=> b!5382191 (= e!3338672 (nullable!5278 (regOne!30730 (regOne!30730 r!7292))))))

(declare-fun b!5382192 () Bool)

(declare-fun e!3338683 () Bool)

(assert (=> b!5382192 (= e!3338683 e!3338673)))

(declare-fun res!2285321 () Bool)

(assert (=> b!5382192 (=> res!2285321 e!3338673)))

(declare-fun lt!2191374 () List!61626)

(assert (=> b!5382192 (= res!2285321 (not (= lt!2191374 s!2326)))))

(declare-fun lt!2191382 () List!61626)

(assert (=> b!5382192 (= lt!2191374 (++!13412 (_1!35611 lt!2191376) lt!2191382))))

(declare-fun lt!2191357 () List!61626)

(assert (=> b!5382192 (= lt!2191374 (++!13412 lt!2191357 (_2!35611 lt!2191403)))))

(assert (=> b!5382192 (= lt!2191382 (++!13412 (_2!35611 lt!2191376) (_2!35611 lt!2191403)))))

(declare-fun lt!2191385 () Unit!153954)

(declare-fun lemmaConcatAssociativity!2806 (List!61626 List!61626 List!61626) Unit!153954)

(assert (=> b!5382192 (= lt!2191385 (lemmaConcatAssociativity!2806 (_1!35611 lt!2191376) (_2!35611 lt!2191376) (_2!35611 lt!2191403)))))

(declare-fun b!5382193 () Bool)

(declare-fun res!2285312 () Bool)

(assert (=> b!5382193 (=> res!2285312 e!3338689)))

(assert (=> b!5382193 (= res!2285312 (or ((_ is Concat!23954) (regOne!30730 r!7292)) (not ((_ is Star!15109) (regOne!30730 r!7292)))))))

(declare-fun b!5382194 () Bool)

(declare-fun e!3338687 () Bool)

(assert (=> b!5382194 (= e!3338687 (not e!3338690))))

(declare-fun res!2285316 () Bool)

(assert (=> b!5382194 (=> res!2285316 e!3338690)))

(assert (=> b!5382194 (= res!2285316 (not ((_ is Cons!61504) zl!343)))))

(assert (=> b!5382194 (= lt!2191394 lt!2191384)))

(assert (=> b!5382194 (= lt!2191384 (matchRSpec!2212 r!7292 s!2326))))

(assert (=> b!5382194 (= lt!2191394 (matchR!7294 r!7292 s!2326))))

(declare-fun lt!2191379 () Unit!153954)

(assert (=> b!5382194 (= lt!2191379 (mainMatchTheorem!2212 r!7292 s!2326))))

(declare-fun b!5382195 () Bool)

(declare-fun res!2285320 () Bool)

(assert (=> b!5382195 (=> res!2285320 e!3338692)))

(declare-fun isEmpty!33498 (List!61626) Bool)

(assert (=> b!5382195 (= res!2285320 (isEmpty!33498 (_1!35611 lt!2191403)))))

(declare-fun b!5382196 () Bool)

(declare-fun Unit!153957 () Unit!153954)

(assert (=> b!5382196 (= e!3338684 Unit!153957)))

(declare-fun lt!2191383 () Unit!153954)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!346 ((InoxSet Context!8986) (InoxSet Context!8986) List!61626) Unit!153954)

(assert (=> b!5382196 (= lt!2191383 (lemmaZipperConcatMatchesSameAsBothZippers!346 lt!2191366 lt!2191373 (t!374849 s!2326)))))

(declare-fun res!2285294 () Bool)

(declare-fun matchZipper!1353 ((InoxSet Context!8986) List!61626) Bool)

(assert (=> b!5382196 (= res!2285294 (matchZipper!1353 lt!2191366 (t!374849 s!2326)))))

(declare-fun e!3338670 () Bool)

(assert (=> b!5382196 (=> res!2285294 e!3338670)))

(assert (=> b!5382196 (= (matchZipper!1353 ((_ map or) lt!2191366 lt!2191373) (t!374849 s!2326)) e!3338670)))

(declare-fun b!5382197 () Bool)

(declare-fun res!2285303 () Bool)

(assert (=> b!5382197 (=> res!2285303 e!3338685)))

(assert (=> b!5382197 (= res!2285303 (not (= (unfocusZipper!851 (Cons!61504 lt!2191361 Nil!61504)) lt!2191375)))))

(declare-fun b!5382198 () Bool)

(assert (=> b!5382198 (= e!3338679 e!3338687)))

(declare-fun res!2285302 () Bool)

(assert (=> b!5382198 (=> (not res!2285302) (not e!3338687))))

(assert (=> b!5382198 (= res!2285302 (= r!7292 lt!2191391))))

(assert (=> b!5382198 (= lt!2191391 (unfocusZipper!851 zl!343))))

(assert (=> b!5382199 (= e!3338692 e!3338683)))

(declare-fun res!2285309 () Bool)

(assert (=> b!5382199 (=> res!2285309 e!3338683)))

(assert (=> b!5382199 (= res!2285309 (not (= (_1!35611 lt!2191403) lt!2191357)))))

(assert (=> b!5382199 (= lt!2191357 (++!13412 (_1!35611 lt!2191376) (_2!35611 lt!2191376)))))

(declare-fun lt!2191372 () Option!15220)

(assert (=> b!5382199 (= lt!2191376 (get!21172 lt!2191372))))

(assert (=> b!5382199 (= (Exists!2290 lambda!278617) (Exists!2290 lambda!278619))))

(declare-fun lt!2191381 () Unit!153954)

(assert (=> b!5382199 (= lt!2191381 (lemmaExistCutMatchRandMatchRSpecEquivalent!944 (reg!15438 (regOne!30730 r!7292)) lt!2191365 (_1!35611 lt!2191403)))))

(assert (=> b!5382199 (= (Exists!2290 lambda!278617) (Exists!2290 lambda!278618))))

(declare-fun lt!2191398 () Unit!153954)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!374 (Regex!15109 List!61626) Unit!153954)

(assert (=> b!5382199 (= lt!2191398 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!374 (reg!15438 (regOne!30730 r!7292)) (_1!35611 lt!2191403)))))

(assert (=> b!5382199 (= (isDefined!11923 lt!2191372) (Exists!2290 lambda!278617))))

(assert (=> b!5382199 (= lt!2191372 (findConcatSeparation!1634 (reg!15438 (regOne!30730 r!7292)) lt!2191365 Nil!61502 (_1!35611 lt!2191403) (_1!35611 lt!2191403)))))

(declare-fun lt!2191363 () Unit!153954)

(assert (=> b!5382199 (= lt!2191363 (lemmaFindConcatSeparationEquivalentToExists!1398 (reg!15438 (regOne!30730 r!7292)) lt!2191365 (_1!35611 lt!2191403)))))

(assert (=> b!5382199 (matchRSpec!2212 lt!2191365 (_1!35611 lt!2191403))))

(declare-fun lt!2191387 () Unit!153954)

(assert (=> b!5382199 (= lt!2191387 (mainMatchTheorem!2212 lt!2191365 (_1!35611 lt!2191403)))))

(declare-fun b!5382200 () Bool)

(declare-fun res!2285304 () Bool)

(assert (=> b!5382200 (=> res!2285304 e!3338691)))

(assert (=> b!5382200 (= res!2285304 (not (= (matchZipper!1353 lt!2191362 s!2326) (matchZipper!1353 lt!2191380 (t!374849 s!2326)))))))

(declare-fun b!5382201 () Bool)

(assert (=> b!5382201 (= e!3338670 (matchZipper!1353 lt!2191373 (t!374849 s!2326)))))

(declare-fun b!5382202 () Bool)

(declare-fun res!2285295 () Bool)

(assert (=> b!5382202 (=> res!2285295 e!3338690)))

(assert (=> b!5382202 (= res!2285295 (or ((_ is EmptyExpr!15109) r!7292) ((_ is EmptyLang!15109) r!7292) ((_ is ElementMatch!15109) r!7292) ((_ is Union!15109) r!7292) (not ((_ is Concat!23954) r!7292))))))

(declare-fun b!5382203 () Bool)

(assert (=> b!5382203 (= e!3338673 true)))

(assert (=> b!5382203 (matchR!7294 lt!2191365 lt!2191357)))

(declare-fun lt!2191393 () Unit!153954)

(declare-fun lemmaStarApp!30 (Regex!15109 List!61626 List!61626) Unit!153954)

(assert (=> b!5382203 (= lt!2191393 (lemmaStarApp!30 (reg!15438 (regOne!30730 r!7292)) (_1!35611 lt!2191376) (_2!35611 lt!2191376)))))

(assert (= (and start!565986 res!2285311) b!5382180))

(assert (= (and b!5382180 res!2285301) b!5382198))

(assert (= (and b!5382198 res!2285302) b!5382194))

(assert (= (and b!5382194 (not res!2285316)) b!5382188))

(assert (= (and b!5382188 (not res!2285293)) b!5382177))

(assert (= (and b!5382177 (not res!2285313)) b!5382168))

(assert (= (and b!5382168 (not res!2285315)) b!5382167))

(assert (= (and b!5382167 (not res!2285297)) b!5382202))

(assert (= (and b!5382202 (not res!2285295)) b!5382165))

(assert (= (and b!5382165 (not res!2285317)) b!5382166))

(assert (= (and b!5382166 (not res!2285292)) b!5382185))

(assert (= (and b!5382185 c!938076) b!5382196))

(assert (= (and b!5382185 (not c!938076)) b!5382164))

(assert (= (and b!5382196 (not res!2285294)) b!5382201))

(assert (= (and b!5382185 (not res!2285308)) b!5382187))

(assert (= (and b!5382187 res!2285307) b!5382191))

(assert (= (and b!5382187 (not res!2285300)) b!5382193))

(assert (= (and b!5382193 (not res!2285312)) b!5382184))

(assert (= (and b!5382184 (not res!2285323)) b!5382176))

(assert (= (and b!5382176 (not res!2285322)) b!5382200))

(assert (= (and b!5382200 (not res!2285304)) b!5382183))

(assert (= (and b!5382183 (not res!2285306)) b!5382171))

(assert (= (and b!5382171 (not res!2285298)) b!5382173))

(assert (= (and b!5382173 (not res!2285299)) b!5382181))

(assert (= (and b!5382181 (not res!2285296)) b!5382197))

(assert (= (and b!5382197 (not res!2285303)) b!5382178))

(assert (= (and b!5382178 res!2285325) b!5382163))

(assert (= (and b!5382178 (not res!2285314)) b!5382172))

(assert (= (and b!5382172 (not res!2285324)) b!5382182))

(assert (= (and b!5382182 (not res!2285310)) b!5382174))

(assert (= (and b!5382174 (not res!2285305)) b!5382195))

(assert (= (and b!5382195 (not res!2285320)) b!5382199))

(assert (= (and b!5382199 (not res!2285309)) b!5382192))

(assert (= (and b!5382192 (not res!2285321)) b!5382179))

(assert (= (and b!5382179 (not res!2285318)) b!5382170))

(assert (= (and b!5382170 (not res!2285319)) b!5382203))

(assert (= (and start!565986 ((_ is ElementMatch!15109) r!7292)) b!5382169))

(assert (= (and start!565986 ((_ is Concat!23954) r!7292)) b!5382190))

(assert (= (and start!565986 ((_ is Star!15109) r!7292)) b!5382162))

(assert (= (and start!565986 ((_ is Union!15109) r!7292)) b!5382161))

(assert (= (and start!565986 condSetEmpty!34919) setIsEmpty!34919))

(assert (= (and start!565986 (not condSetEmpty!34919)) setNonEmpty!34919))

(assert (= setNonEmpty!34919 b!5382189))

(assert (= b!5382186 b!5382175))

(assert (= (and start!565986 ((_ is Cons!61504) zl!343)) b!5382186))

(assert (= (and start!565986 ((_ is Cons!61502) s!2326)) b!5382160))

(declare-fun m!6407972 () Bool)

(assert (=> b!5382198 m!6407972))

(declare-fun m!6407974 () Bool)

(assert (=> b!5382182 m!6407974))

(declare-fun m!6407976 () Bool)

(assert (=> b!5382180 m!6407976))

(declare-fun m!6407978 () Bool)

(assert (=> b!5382203 m!6407978))

(declare-fun m!6407980 () Bool)

(assert (=> b!5382203 m!6407980))

(declare-fun m!6407982 () Bool)

(assert (=> b!5382176 m!6407982))

(declare-fun m!6407984 () Bool)

(assert (=> b!5382176 m!6407984))

(declare-fun m!6407986 () Bool)

(assert (=> b!5382176 m!6407986))

(declare-fun m!6407988 () Bool)

(assert (=> b!5382176 m!6407988))

(declare-fun m!6407990 () Bool)

(assert (=> b!5382176 m!6407990))

(declare-fun m!6407992 () Bool)

(assert (=> b!5382178 m!6407992))

(declare-fun m!6407994 () Bool)

(assert (=> b!5382178 m!6407994))

(declare-fun m!6407996 () Bool)

(assert (=> b!5382178 m!6407996))

(declare-fun m!6407998 () Bool)

(assert (=> start!565986 m!6407998))

(declare-fun m!6408000 () Bool)

(assert (=> b!5382179 m!6408000))

(declare-fun m!6408002 () Bool)

(assert (=> b!5382201 m!6408002))

(declare-fun m!6408004 () Bool)

(assert (=> b!5382167 m!6408004))

(assert (=> b!5382167 m!6408004))

(declare-fun m!6408006 () Bool)

(assert (=> b!5382167 m!6408006))

(declare-fun m!6408008 () Bool)

(assert (=> b!5382174 m!6408008))

(declare-fun m!6408010 () Bool)

(assert (=> b!5382192 m!6408010))

(declare-fun m!6408012 () Bool)

(assert (=> b!5382192 m!6408012))

(declare-fun m!6408014 () Bool)

(assert (=> b!5382192 m!6408014))

(declare-fun m!6408016 () Bool)

(assert (=> b!5382192 m!6408016))

(declare-fun m!6408018 () Bool)

(assert (=> b!5382177 m!6408018))

(declare-fun m!6408020 () Bool)

(assert (=> b!5382185 m!6408020))

(declare-fun m!6408022 () Bool)

(assert (=> b!5382185 m!6408022))

(declare-fun m!6408024 () Bool)

(assert (=> b!5382185 m!6408024))

(declare-fun m!6408026 () Bool)

(assert (=> b!5382185 m!6408026))

(declare-fun m!6408028 () Bool)

(assert (=> b!5382185 m!6408028))

(declare-fun m!6408030 () Bool)

(assert (=> b!5382185 m!6408030))

(declare-fun m!6408032 () Bool)

(assert (=> b!5382185 m!6408032))

(declare-fun m!6408034 () Bool)

(assert (=> b!5382195 m!6408034))

(declare-fun m!6408036 () Bool)

(assert (=> b!5382170 m!6408036))

(declare-fun m!6408038 () Bool)

(assert (=> b!5382197 m!6408038))

(declare-fun m!6408040 () Bool)

(assert (=> b!5382191 m!6408040))

(declare-fun m!6408042 () Bool)

(assert (=> b!5382200 m!6408042))

(declare-fun m!6408044 () Bool)

(assert (=> b!5382200 m!6408044))

(declare-fun m!6408046 () Bool)

(assert (=> b!5382186 m!6408046))

(declare-fun m!6408048 () Bool)

(assert (=> b!5382194 m!6408048))

(declare-fun m!6408050 () Bool)

(assert (=> b!5382194 m!6408050))

(declare-fun m!6408052 () Bool)

(assert (=> b!5382194 m!6408052))

(declare-fun m!6408054 () Bool)

(assert (=> b!5382172 m!6408054))

(declare-fun m!6408056 () Bool)

(assert (=> b!5382172 m!6408056))

(declare-fun m!6408058 () Bool)

(assert (=> b!5382172 m!6408058))

(declare-fun m!6408060 () Bool)

(assert (=> b!5382172 m!6408060))

(declare-fun m!6408062 () Bool)

(assert (=> b!5382172 m!6408062))

(declare-fun m!6408064 () Bool)

(assert (=> b!5382172 m!6408064))

(assert (=> b!5382172 m!6408060))

(declare-fun m!6408066 () Bool)

(assert (=> b!5382172 m!6408066))

(declare-fun m!6408068 () Bool)

(assert (=> b!5382172 m!6408068))

(declare-fun m!6408070 () Bool)

(assert (=> b!5382173 m!6408070))

(declare-fun m!6408072 () Bool)

(assert (=> b!5382199 m!6408072))

(declare-fun m!6408074 () Bool)

(assert (=> b!5382199 m!6408074))

(declare-fun m!6408076 () Bool)

(assert (=> b!5382199 m!6408076))

(declare-fun m!6408078 () Bool)

(assert (=> b!5382199 m!6408078))

(assert (=> b!5382199 m!6408078))

(declare-fun m!6408080 () Bool)

(assert (=> b!5382199 m!6408080))

(declare-fun m!6408082 () Bool)

(assert (=> b!5382199 m!6408082))

(declare-fun m!6408084 () Bool)

(assert (=> b!5382199 m!6408084))

(declare-fun m!6408086 () Bool)

(assert (=> b!5382199 m!6408086))

(declare-fun m!6408088 () Bool)

(assert (=> b!5382199 m!6408088))

(declare-fun m!6408090 () Bool)

(assert (=> b!5382199 m!6408090))

(declare-fun m!6408092 () Bool)

(assert (=> b!5382199 m!6408092))

(assert (=> b!5382199 m!6408078))

(declare-fun m!6408094 () Bool)

(assert (=> b!5382199 m!6408094))

(declare-fun m!6408096 () Bool)

(assert (=> b!5382166 m!6408096))

(declare-fun m!6408098 () Bool)

(assert (=> b!5382188 m!6408098))

(declare-fun m!6408100 () Bool)

(assert (=> b!5382165 m!6408100))

(declare-fun m!6408102 () Bool)

(assert (=> b!5382165 m!6408102))

(declare-fun m!6408104 () Bool)

(assert (=> b!5382165 m!6408104))

(assert (=> b!5382165 m!6408100))

(declare-fun m!6408106 () Bool)

(assert (=> b!5382165 m!6408106))

(declare-fun m!6408108 () Bool)

(assert (=> b!5382165 m!6408108))

(assert (=> b!5382165 m!6408102))

(declare-fun m!6408110 () Bool)

(assert (=> b!5382165 m!6408110))

(declare-fun m!6408112 () Bool)

(assert (=> b!5382196 m!6408112))

(declare-fun m!6408114 () Bool)

(assert (=> b!5382196 m!6408114))

(declare-fun m!6408116 () Bool)

(assert (=> b!5382196 m!6408116))

(declare-fun m!6408118 () Bool)

(assert (=> setNonEmpty!34919 m!6408118))

(declare-fun m!6408120 () Bool)

(assert (=> b!5382181 m!6408120))

(declare-fun m!6408122 () Bool)

(assert (=> b!5382181 m!6408122))

(declare-fun m!6408124 () Bool)

(assert (=> b!5382181 m!6408124))

(declare-fun m!6408126 () Bool)

(assert (=> b!5382181 m!6408126))

(declare-fun m!6408128 () Bool)

(assert (=> b!5382181 m!6408128))

(declare-fun m!6408130 () Bool)

(assert (=> b!5382181 m!6408130))

(declare-fun m!6408132 () Bool)

(assert (=> b!5382181 m!6408132))

(declare-fun m!6408134 () Bool)

(assert (=> b!5382181 m!6408134))

(declare-fun m!6408136 () Bool)

(assert (=> b!5382181 m!6408136))

(declare-fun m!6408138 () Bool)

(assert (=> b!5382184 m!6408138))

(check-sat (not b!5382182) (not b!5382196) (not b!5382173) (not b!5382180) (not b!5382185) (not b!5382184) (not b!5382203) (not b!5382197) (not b!5382179) (not b!5382200) (not b!5382170) (not start!565986) (not b!5382195) (not b!5382178) (not b!5382161) (not b!5382186) (not b!5382174) (not b!5382177) (not b!5382190) (not b!5382192) (not b!5382166) (not b!5382165) (not b!5382189) (not b!5382199) (not setNonEmpty!34919) (not b!5382167) (not b!5382194) (not b!5382188) (not b!5382176) (not b!5382198) (not b!5382191) (not b!5382162) (not b!5382160) (not b!5382172) (not b!5382175) (not b!5382181) (not b!5382201) tp_is_empty!39471)
(check-sat)
