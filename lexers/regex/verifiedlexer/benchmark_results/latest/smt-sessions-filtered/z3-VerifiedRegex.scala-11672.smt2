; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!655316 () Bool)

(assert start!655316)

(declare-fun b!6765357 () Bool)

(assert (=> b!6765357 true))

(assert (=> b!6765357 true))

(declare-fun lambda!380521 () Int)

(declare-fun lambda!380520 () Int)

(assert (=> b!6765357 (not (= lambda!380521 lambda!380520))))

(assert (=> b!6765357 true))

(assert (=> b!6765357 true))

(declare-fun lambda!380522 () Int)

(assert (=> b!6765357 (not (= lambda!380522 lambda!380520))))

(assert (=> b!6765357 (not (= lambda!380522 lambda!380521))))

(assert (=> b!6765357 true))

(assert (=> b!6765357 true))

(declare-fun b!6765361 () Bool)

(assert (=> b!6765361 true))

(declare-fun b!6765336 () Bool)

(declare-fun e!4084887 () Bool)

(declare-fun e!4084896 () Bool)

(assert (=> b!6765336 (= e!4084887 e!4084896)))

(declare-fun res!2766189 () Bool)

(assert (=> b!6765336 (=> res!2766189 e!4084896)))

(declare-fun lt!2442620 () Bool)

(assert (=> b!6765336 (= res!2766189 (not lt!2442620))))

(declare-fun b!6765337 () Bool)

(declare-fun res!2766206 () Bool)

(declare-fun e!4084905 () Bool)

(assert (=> b!6765337 (=> res!2766206 e!4084905)))

(declare-datatypes ((C!33452 0))(
  ( (C!33453 (val!26428 Int)) )
))
(declare-datatypes ((Regex!16591 0))(
  ( (ElementMatch!16591 (c!1256003 C!33452)) (Concat!25436 (regOne!33694 Regex!16591) (regTwo!33694 Regex!16591)) (EmptyExpr!16591) (Star!16591 (reg!16920 Regex!16591)) (EmptyLang!16591) (Union!16591 (regOne!33695 Regex!16591) (regTwo!33695 Regex!16591)) )
))
(declare-fun r!7292 () Regex!16591)

(declare-datatypes ((List!66072 0))(
  ( (Nil!65948) (Cons!65948 (h!72396 Regex!16591) (t!379779 List!66072)) )
))
(declare-datatypes ((Context!11950 0))(
  ( (Context!11951 (exprs!6475 List!66072)) )
))
(declare-datatypes ((List!66073 0))(
  ( (Nil!65949) (Cons!65949 (h!72397 Context!11950) (t!379780 List!66073)) )
))
(declare-fun zl!343 () List!66073)

(declare-fun generalisedUnion!2435 (List!66072) Regex!16591)

(declare-fun unfocusZipperList!2012 (List!66073) List!66072)

(assert (=> b!6765337 (= res!2766206 (not (= r!7292 (generalisedUnion!2435 (unfocusZipperList!2012 zl!343)))))))

(declare-fun b!6765338 () Bool)

(declare-fun res!2766194 () Bool)

(declare-fun e!4084891 () Bool)

(assert (=> b!6765338 (=> res!2766194 e!4084891)))

(declare-fun lt!2442639 () Context!11950)

(declare-fun unfocusZipper!2333 (List!66073) Regex!16591)

(assert (=> b!6765338 (= res!2766194 (not (= (unfocusZipper!2333 (Cons!65949 lt!2442639 Nil!65949)) r!7292)))))

(declare-fun setIsEmpty!46245 () Bool)

(declare-fun setRes!46245 () Bool)

(assert (=> setIsEmpty!46245 setRes!46245))

(declare-fun b!6765339 () Bool)

(declare-fun res!2766203 () Bool)

(declare-fun e!4084899 () Bool)

(assert (=> b!6765339 (=> (not res!2766203) (not e!4084899))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11950))

(declare-fun toList!10375 ((InoxSet Context!11950)) List!66073)

(assert (=> b!6765339 (= res!2766203 (= (toList!10375 z!1189) zl!343))))

(declare-fun b!6765340 () Bool)

(declare-fun e!4084894 () Bool)

(declare-fun tp!1854165 () Bool)

(declare-fun tp!1854170 () Bool)

(assert (=> b!6765340 (= e!4084894 (and tp!1854165 tp!1854170))))

(declare-fun b!6765341 () Bool)

(declare-fun res!2766195 () Bool)

(assert (=> b!6765341 (=> res!2766195 e!4084905)))

(get-info :version)

(assert (=> b!6765341 (= res!2766195 (or ((_ is EmptyExpr!16591) r!7292) ((_ is EmptyLang!16591) r!7292) ((_ is ElementMatch!16591) r!7292) ((_ is Union!16591) r!7292) ((_ is Concat!25436) r!7292)))))

(declare-fun e!4084886 () Bool)

(declare-fun tp!1854167 () Bool)

(declare-fun b!6765342 () Bool)

(declare-fun e!4084892 () Bool)

(declare-fun inv!84724 (Context!11950) Bool)

(assert (=> b!6765342 (= e!4084886 (and (inv!84724 (h!72397 zl!343)) e!4084892 tp!1854167))))

(declare-fun b!6765343 () Bool)

(declare-fun tp!1854164 () Bool)

(declare-fun tp!1854168 () Bool)

(assert (=> b!6765343 (= e!4084894 (and tp!1854164 tp!1854168))))

(declare-fun b!6765344 () Bool)

(declare-fun res!2766205 () Bool)

(declare-fun e!4084897 () Bool)

(assert (=> b!6765344 (=> res!2766205 e!4084897)))

(declare-fun lt!2442640 () (InoxSet Context!11950))

(declare-datatypes ((List!66074 0))(
  ( (Nil!65950) (Cons!65950 (h!72398 C!33452) (t!379781 List!66074)) )
))
(declare-fun s!2326 () List!66074)

(declare-fun matchZipper!2577 ((InoxSet Context!11950) List!66074) Bool)

(declare-fun derivationStepZipper!2535 ((InoxSet Context!11950) C!33452) (InoxSet Context!11950))

(assert (=> b!6765344 (= res!2766205 (not (= (matchZipper!2577 lt!2442640 s!2326) (matchZipper!2577 (derivationStepZipper!2535 lt!2442640 (h!72398 s!2326)) (t!379781 s!2326)))))))

(declare-fun b!6765345 () Bool)

(declare-fun e!4084902 () Bool)

(declare-fun e!4084903 () Bool)

(assert (=> b!6765345 (= e!4084902 e!4084903)))

(declare-fun res!2766214 () Bool)

(assert (=> b!6765345 (=> res!2766214 e!4084903)))

(declare-fun lt!2442616 () (InoxSet Context!11950))

(declare-fun lt!2442638 () (InoxSet Context!11950))

(assert (=> b!6765345 (= res!2766214 (not (= lt!2442616 (derivationStepZipper!2535 lt!2442638 (h!72398 s!2326)))))))

(declare-fun lambda!380523 () Int)

(declare-fun flatMap!2072 ((InoxSet Context!11950) Int) (InoxSet Context!11950))

(declare-fun derivationStepZipperUp!1745 (Context!11950 C!33452) (InoxSet Context!11950))

(assert (=> b!6765345 (= (flatMap!2072 lt!2442638 lambda!380523) (derivationStepZipperUp!1745 lt!2442639 (h!72398 s!2326)))))

(declare-datatypes ((Unit!159873 0))(
  ( (Unit!159874) )
))
(declare-fun lt!2442628 () Unit!159873)

(declare-fun lemmaFlatMapOnSingletonSet!1598 ((InoxSet Context!11950) Context!11950 Int) Unit!159873)

(assert (=> b!6765345 (= lt!2442628 (lemmaFlatMapOnSingletonSet!1598 lt!2442638 lt!2442639 lambda!380523))))

(declare-fun lt!2442630 () Context!11950)

(declare-fun lt!2442622 () (InoxSet Context!11950))

(assert (=> b!6765345 (= (flatMap!2072 lt!2442622 lambda!380523) (derivationStepZipperUp!1745 lt!2442630 (h!72398 s!2326)))))

(declare-fun lt!2442641 () Unit!159873)

(assert (=> b!6765345 (= lt!2442641 (lemmaFlatMapOnSingletonSet!1598 lt!2442622 lt!2442630 lambda!380523))))

(declare-fun lt!2442612 () (InoxSet Context!11950))

(assert (=> b!6765345 (= lt!2442612 (derivationStepZipperUp!1745 lt!2442639 (h!72398 s!2326)))))

(declare-fun lt!2442614 () (InoxSet Context!11950))

(assert (=> b!6765345 (= lt!2442614 (derivationStepZipperUp!1745 lt!2442630 (h!72398 s!2326)))))

(assert (=> b!6765345 (= lt!2442638 (store ((as const (Array Context!11950 Bool)) false) lt!2442639 true))))

(assert (=> b!6765345 (= lt!2442622 (store ((as const (Array Context!11950 Bool)) false) lt!2442630 true))))

(assert (=> b!6765345 (= lt!2442630 (Context!11951 (Cons!65948 (reg!16920 r!7292) Nil!65948)))))

(declare-fun b!6765346 () Bool)

(declare-fun res!2766196 () Bool)

(declare-fun e!4084900 () Bool)

(assert (=> b!6765346 (=> res!2766196 e!4084900)))

(assert (=> b!6765346 (= res!2766196 ((_ is Nil!65950) s!2326))))

(declare-fun b!6765347 () Bool)

(declare-fun tp!1854172 () Bool)

(assert (=> b!6765347 (= e!4084894 tp!1854172)))

(declare-fun b!6765348 () Bool)

(declare-fun e!4084890 () Bool)

(declare-fun lt!2442627 () Bool)

(declare-fun Exists!3659 (Int) Bool)

(assert (=> b!6765348 (= e!4084890 (= lt!2442627 (Exists!3659 lambda!380520)))))

(declare-fun b!6765349 () Bool)

(declare-fun e!4084888 () Bool)

(declare-fun tp!1854173 () Bool)

(assert (=> b!6765349 (= e!4084888 tp!1854173)))

(declare-fun b!6765350 () Bool)

(declare-fun res!2766199 () Bool)

(declare-fun e!4084898 () Bool)

(assert (=> b!6765350 (=> res!2766199 e!4084898)))

(declare-datatypes ((tuple2!67132 0))(
  ( (tuple2!67133 (_1!36869 List!66074) (_2!36869 List!66074)) )
))
(declare-fun lt!2442636 () tuple2!67132)

(declare-fun matchR!8774 (Regex!16591 List!66074) Bool)

(assert (=> b!6765350 (= res!2766199 (not (matchR!8774 (reg!16920 r!7292) (_1!36869 lt!2442636))))))

(declare-fun b!6765351 () Bool)

(declare-fun tp!1854171 () Bool)

(assert (=> b!6765351 (= e!4084892 tp!1854171)))

(declare-fun b!6765352 () Bool)

(declare-fun res!2766191 () Bool)

(assert (=> b!6765352 (=> res!2766191 e!4084905)))

(declare-fun isEmpty!38305 (List!66073) Bool)

(assert (=> b!6765352 (= res!2766191 (not (isEmpty!38305 (t!379780 zl!343))))))

(declare-fun b!6765353 () Bool)

(declare-fun e!4084893 () Bool)

(assert (=> b!6765353 (= e!4084893 (not e!4084905))))

(declare-fun res!2766190 () Bool)

(assert (=> b!6765353 (=> res!2766190 e!4084905)))

(assert (=> b!6765353 (= res!2766190 (not ((_ is Cons!65949) zl!343)))))

(declare-fun lt!2442618 () Bool)

(declare-fun matchRSpec!3692 (Regex!16591 List!66074) Bool)

(assert (=> b!6765353 (= lt!2442618 (matchRSpec!3692 r!7292 s!2326))))

(assert (=> b!6765353 (= lt!2442618 (matchR!8774 r!7292 s!2326))))

(declare-fun lt!2442621 () Unit!159873)

(declare-fun mainMatchTheorem!3692 (Regex!16591 List!66074) Unit!159873)

(assert (=> b!6765353 (= lt!2442621 (mainMatchTheorem!3692 r!7292 s!2326))))

(declare-fun b!6765354 () Bool)

(declare-fun res!2766198 () Bool)

(assert (=> b!6765354 (=> res!2766198 e!4084905)))

(declare-fun generalisedConcat!2188 (List!66072) Regex!16591)

(assert (=> b!6765354 (= res!2766198 (not (= r!7292 (generalisedConcat!2188 (exprs!6475 (h!72397 zl!343))))))))

(declare-fun b!6765355 () Bool)

(declare-fun e!4084895 () Bool)

(assert (=> b!6765355 (= e!4084895 e!4084898)))

(declare-fun res!2766212 () Bool)

(assert (=> b!6765355 (=> res!2766212 e!4084898)))

(declare-fun ++!14745 (List!66074 List!66074) List!66074)

(assert (=> b!6765355 (= res!2766212 (not (= s!2326 (++!14745 (_1!36869 lt!2442636) (_2!36869 lt!2442636)))))))

(declare-datatypes ((Option!16478 0))(
  ( (None!16477) (Some!16477 (v!52681 tuple2!67132)) )
))
(declare-fun lt!2442631 () Option!16478)

(declare-fun get!22956 (Option!16478) tuple2!67132)

(assert (=> b!6765355 (= lt!2442636 (get!22956 lt!2442631))))

(declare-fun b!6765356 () Bool)

(assert (=> b!6765356 (= e!4084897 e!4084902)))

(declare-fun res!2766210 () Bool)

(assert (=> b!6765356 (=> res!2766210 e!4084902)))

(declare-fun lt!2442623 () Context!11950)

(declare-fun lt!2442635 () Regex!16591)

(assert (=> b!6765356 (= res!2766210 (not (= (unfocusZipper!2333 (Cons!65949 lt!2442623 Nil!65949)) lt!2442635)))))

(assert (=> b!6765356 (= lt!2442635 (Concat!25436 (reg!16920 r!7292) r!7292))))

(assert (=> b!6765357 (= e!4084905 e!4084900)))

(declare-fun res!2766201 () Bool)

(assert (=> b!6765357 (=> res!2766201 e!4084900)))

(declare-fun e!4084901 () Bool)

(assert (=> b!6765357 (= res!2766201 (not (= lt!2442618 e!4084901)))))

(declare-fun res!2766216 () Bool)

(assert (=> b!6765357 (=> res!2766216 e!4084901)))

(declare-fun isEmpty!38306 (List!66074) Bool)

(assert (=> b!6765357 (= res!2766216 (isEmpty!38306 s!2326))))

(assert (=> b!6765357 (= (Exists!3659 lambda!380520) (Exists!3659 lambda!380522))))

(declare-fun lt!2442619 () Unit!159873)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2186 (Regex!16591 Regex!16591 List!66074) Unit!159873)

(assert (=> b!6765357 (= lt!2442619 (lemmaExistCutMatchRandMatchRSpecEquivalent!2186 (reg!16920 r!7292) r!7292 s!2326))))

(assert (=> b!6765357 (= (Exists!3659 lambda!380520) (Exists!3659 lambda!380521))))

(declare-fun lt!2442637 () Unit!159873)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!750 (Regex!16591 List!66074) Unit!159873)

(assert (=> b!6765357 (= lt!2442637 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!750 (reg!16920 r!7292) s!2326))))

(assert (=> b!6765357 (= lt!2442627 (Exists!3659 lambda!380520))))

(declare-fun isDefined!13181 (Option!16478) Bool)

(assert (=> b!6765357 (= lt!2442627 (isDefined!13181 lt!2442631))))

(declare-fun findConcatSeparation!2892 (Regex!16591 Regex!16591 List!66074 List!66074 List!66074) Option!16478)

(assert (=> b!6765357 (= lt!2442631 (findConcatSeparation!2892 (reg!16920 r!7292) r!7292 Nil!65950 s!2326 s!2326))))

(declare-fun lt!2442625 () Unit!159873)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2656 (Regex!16591 Regex!16591 List!66074) Unit!159873)

(assert (=> b!6765357 (= lt!2442625 (lemmaFindConcatSeparationEquivalentToExists!2656 (reg!16920 r!7292) r!7292 s!2326))))

(declare-fun b!6765358 () Bool)

(assert (=> b!6765358 (= e!4084901 lt!2442627)))

(declare-fun b!6765359 () Bool)

(assert (=> b!6765359 (= e!4084891 e!4084895)))

(declare-fun res!2766208 () Bool)

(assert (=> b!6765359 (=> res!2766208 e!4084895)))

(assert (=> b!6765359 (= res!2766208 (not lt!2442620))))

(assert (=> b!6765359 e!4084887))

(declare-fun res!2766202 () Bool)

(assert (=> b!6765359 (=> (not res!2766202) (not e!4084887))))

(assert (=> b!6765359 (= res!2766202 (= lt!2442620 (matchRSpec!3692 lt!2442635 s!2326)))))

(assert (=> b!6765359 (= lt!2442620 (matchR!8774 lt!2442635 s!2326))))

(declare-fun lt!2442642 () Unit!159873)

(assert (=> b!6765359 (= lt!2442642 (mainMatchTheorem!3692 lt!2442635 s!2326))))

(declare-fun res!2766204 () Bool)

(assert (=> start!655316 (=> (not res!2766204) (not e!4084899))))

(declare-fun validRegex!8327 (Regex!16591) Bool)

(assert (=> start!655316 (= res!2766204 (validRegex!8327 r!7292))))

(assert (=> start!655316 e!4084899))

(assert (=> start!655316 e!4084894))

(declare-fun condSetEmpty!46245 () Bool)

(assert (=> start!655316 (= condSetEmpty!46245 (= z!1189 ((as const (Array Context!11950 Bool)) false)))))

(assert (=> start!655316 setRes!46245))

(assert (=> start!655316 e!4084886))

(declare-fun e!4084906 () Bool)

(assert (=> start!655316 e!4084906))

(declare-fun b!6765360 () Bool)

(assert (=> b!6765360 (= e!4084899 e!4084893)))

(declare-fun res!2766213 () Bool)

(assert (=> b!6765360 (=> (not res!2766213) (not e!4084893))))

(declare-fun lt!2442626 () Regex!16591)

(assert (=> b!6765360 (= res!2766213 (= r!7292 lt!2442626))))

(assert (=> b!6765360 (= lt!2442626 (unfocusZipper!2333 zl!343))))

(declare-fun e!4084904 () Bool)

(declare-fun e!4084889 () Bool)

(assert (=> b!6765361 (= e!4084904 e!4084889)))

(declare-fun res!2766207 () Bool)

(assert (=> b!6765361 (=> res!2766207 e!4084889)))

(declare-fun lt!2442615 () (InoxSet Context!11950))

(assert (=> b!6765361 (= res!2766207 (not (= lt!2442616 lt!2442615)))))

(assert (=> b!6765361 (= (flatMap!2072 z!1189 lambda!380523) (derivationStepZipperUp!1745 (h!72397 zl!343) (h!72398 s!2326)))))

(declare-fun lt!2442629 () Unit!159873)

(assert (=> b!6765361 (= lt!2442629 (lemmaFlatMapOnSingletonSet!1598 z!1189 (h!72397 zl!343) lambda!380523))))

(declare-fun b!6765362 () Bool)

(assert (=> b!6765362 (= e!4084889 e!4084897)))

(declare-fun res!2766193 () Bool)

(assert (=> b!6765362 (=> res!2766193 e!4084897)))

(declare-fun derivationStepZipperDown!1819 (Regex!16591 Context!11950 C!33452) (InoxSet Context!11950))

(assert (=> b!6765362 (= res!2766193 (not (= lt!2442616 (derivationStepZipperDown!1819 (reg!16920 r!7292) lt!2442639 (h!72398 s!2326)))))))

(declare-fun lt!2442632 () List!66072)

(assert (=> b!6765362 (= lt!2442639 (Context!11951 lt!2442632))))

(assert (=> b!6765362 (= (flatMap!2072 lt!2442640 lambda!380523) (derivationStepZipperUp!1745 lt!2442623 (h!72398 s!2326)))))

(declare-fun lt!2442633 () Unit!159873)

(assert (=> b!6765362 (= lt!2442633 (lemmaFlatMapOnSingletonSet!1598 lt!2442640 lt!2442623 lambda!380523))))

(declare-fun lt!2442624 () (InoxSet Context!11950))

(assert (=> b!6765362 (= lt!2442624 (derivationStepZipperUp!1745 lt!2442623 (h!72398 s!2326)))))

(assert (=> b!6765362 (= lt!2442640 (store ((as const (Array Context!11950 Bool)) false) lt!2442623 true))))

(assert (=> b!6765362 (= lt!2442623 (Context!11951 (Cons!65948 (reg!16920 r!7292) lt!2442632)))))

(assert (=> b!6765362 (= lt!2442632 (Cons!65948 r!7292 Nil!65948))))

(declare-fun b!6765363 () Bool)

(declare-fun tp_is_empty!42435 () Bool)

(declare-fun tp!1854166 () Bool)

(assert (=> b!6765363 (= e!4084906 (and tp_is_empty!42435 tp!1854166))))

(declare-fun b!6765364 () Bool)

(declare-fun res!2766211 () Bool)

(assert (=> b!6765364 (=> res!2766211 e!4084898)))

(assert (=> b!6765364 (= res!2766211 (not (matchR!8774 r!7292 (_2!36869 lt!2442636))))))

(declare-fun b!6765365 () Bool)

(declare-fun res!2766197 () Bool)

(assert (=> b!6765365 (=> res!2766197 e!4084905)))

(assert (=> b!6765365 (= res!2766197 (not ((_ is Cons!65948) (exprs!6475 (h!72397 zl!343)))))))

(declare-fun setNonEmpty!46245 () Bool)

(declare-fun setElem!46245 () Context!11950)

(declare-fun tp!1854169 () Bool)

(assert (=> setNonEmpty!46245 (= setRes!46245 (and tp!1854169 (inv!84724 setElem!46245) e!4084888))))

(declare-fun setRest!46245 () (InoxSet Context!11950))

(assert (=> setNonEmpty!46245 (= z!1189 ((_ map or) (store ((as const (Array Context!11950 Bool)) false) setElem!46245 true) setRest!46245))))

(declare-fun b!6765366 () Bool)

(assert (=> b!6765366 (= e!4084896 e!4084890)))

(declare-fun res!2766209 () Bool)

(assert (=> b!6765366 (=> (not res!2766209) (not e!4084890))))

(assert (=> b!6765366 (= res!2766209 (= (Exists!3659 lambda!380520) (Exists!3659 lambda!380521)))))

(declare-fun b!6765367 () Bool)

(assert (=> b!6765367 (= e!4084894 tp_is_empty!42435)))

(declare-fun b!6765368 () Bool)

(assert (=> b!6765368 (= e!4084900 e!4084904)))

(declare-fun res!2766192 () Bool)

(assert (=> b!6765368 (=> res!2766192 e!4084904)))

(declare-fun lt!2442617 () (InoxSet Context!11950))

(assert (=> b!6765368 (= res!2766192 (not (= lt!2442617 lt!2442615)))))

(assert (=> b!6765368 (= lt!2442615 (derivationStepZipperDown!1819 r!7292 (Context!11951 Nil!65948) (h!72398 s!2326)))))

(assert (=> b!6765368 (= lt!2442617 (derivationStepZipperUp!1745 (Context!11951 (Cons!65948 r!7292 Nil!65948)) (h!72398 s!2326)))))

(assert (=> b!6765368 (= lt!2442616 (derivationStepZipper!2535 z!1189 (h!72398 s!2326)))))

(declare-fun b!6765369 () Bool)

(assert (=> b!6765369 (= e!4084903 e!4084891)))

(declare-fun res!2766215 () Bool)

(assert (=> b!6765369 (=> res!2766215 e!4084891)))

(declare-fun lt!2442634 () List!66073)

(assert (=> b!6765369 (= res!2766215 (not (= (unfocusZipper!2333 lt!2442634) (reg!16920 r!7292))))))

(assert (=> b!6765369 (= lt!2442634 (Cons!65949 lt!2442630 Nil!65949))))

(declare-fun b!6765370 () Bool)

(assert (=> b!6765370 (= e!4084898 (inv!84724 lt!2442639))))

(assert (=> b!6765370 (matchZipper!2577 lt!2442622 (_1!36869 lt!2442636))))

(declare-fun lt!2442613 () Unit!159873)

(declare-fun theoremZipperRegexEquiv!921 ((InoxSet Context!11950) List!66073 Regex!16591 List!66074) Unit!159873)

(assert (=> b!6765370 (= lt!2442613 (theoremZipperRegexEquiv!921 lt!2442622 lt!2442634 (reg!16920 r!7292) (_1!36869 lt!2442636)))))

(declare-fun b!6765371 () Bool)

(declare-fun res!2766200 () Bool)

(assert (=> b!6765371 (=> res!2766200 e!4084897)))

(assert (=> b!6765371 (= res!2766200 (or (not (= lt!2442626 r!7292)) (not (= r!7292 r!7292))))))

(assert (= (and start!655316 res!2766204) b!6765339))

(assert (= (and b!6765339 res!2766203) b!6765360))

(assert (= (and b!6765360 res!2766213) b!6765353))

(assert (= (and b!6765353 (not res!2766190)) b!6765352))

(assert (= (and b!6765352 (not res!2766191)) b!6765354))

(assert (= (and b!6765354 (not res!2766198)) b!6765365))

(assert (= (and b!6765365 (not res!2766197)) b!6765337))

(assert (= (and b!6765337 (not res!2766206)) b!6765341))

(assert (= (and b!6765341 (not res!2766195)) b!6765357))

(assert (= (and b!6765357 (not res!2766216)) b!6765358))

(assert (= (and b!6765357 (not res!2766201)) b!6765346))

(assert (= (and b!6765346 (not res!2766196)) b!6765368))

(assert (= (and b!6765368 (not res!2766192)) b!6765361))

(assert (= (and b!6765361 (not res!2766207)) b!6765362))

(assert (= (and b!6765362 (not res!2766193)) b!6765344))

(assert (= (and b!6765344 (not res!2766205)) b!6765371))

(assert (= (and b!6765371 (not res!2766200)) b!6765356))

(assert (= (and b!6765356 (not res!2766210)) b!6765345))

(assert (= (and b!6765345 (not res!2766214)) b!6765369))

(assert (= (and b!6765369 (not res!2766215)) b!6765338))

(assert (= (and b!6765338 (not res!2766194)) b!6765359))

(assert (= (and b!6765359 res!2766202) b!6765336))

(assert (= (and b!6765336 (not res!2766189)) b!6765366))

(assert (= (and b!6765366 res!2766209) b!6765348))

(assert (= (and b!6765359 (not res!2766208)) b!6765355))

(assert (= (and b!6765355 (not res!2766212)) b!6765350))

(assert (= (and b!6765350 (not res!2766199)) b!6765364))

(assert (= (and b!6765364 (not res!2766211)) b!6765370))

(assert (= (and start!655316 ((_ is ElementMatch!16591) r!7292)) b!6765367))

(assert (= (and start!655316 ((_ is Concat!25436) r!7292)) b!6765343))

(assert (= (and start!655316 ((_ is Star!16591) r!7292)) b!6765347))

(assert (= (and start!655316 ((_ is Union!16591) r!7292)) b!6765340))

(assert (= (and start!655316 condSetEmpty!46245) setIsEmpty!46245))

(assert (= (and start!655316 (not condSetEmpty!46245)) setNonEmpty!46245))

(assert (= setNonEmpty!46245 b!6765349))

(assert (= b!6765342 b!6765351))

(assert (= (and start!655316 ((_ is Cons!65949) zl!343)) b!6765342))

(assert (= (and start!655316 ((_ is Cons!65950) s!2326)) b!6765363))

(declare-fun m!7516538 () Bool)

(assert (=> b!6765364 m!7516538))

(declare-fun m!7516540 () Bool)

(assert (=> b!6765369 m!7516540))

(declare-fun m!7516542 () Bool)

(assert (=> b!6765357 m!7516542))

(declare-fun m!7516544 () Bool)

(assert (=> b!6765357 m!7516544))

(declare-fun m!7516546 () Bool)

(assert (=> b!6765357 m!7516546))

(assert (=> b!6765357 m!7516542))

(declare-fun m!7516548 () Bool)

(assert (=> b!6765357 m!7516548))

(declare-fun m!7516550 () Bool)

(assert (=> b!6765357 m!7516550))

(declare-fun m!7516552 () Bool)

(assert (=> b!6765357 m!7516552))

(declare-fun m!7516554 () Bool)

(assert (=> b!6765357 m!7516554))

(assert (=> b!6765357 m!7516542))

(declare-fun m!7516556 () Bool)

(assert (=> b!6765357 m!7516556))

(declare-fun m!7516558 () Bool)

(assert (=> b!6765357 m!7516558))

(declare-fun m!7516560 () Bool)

(assert (=> b!6765353 m!7516560))

(declare-fun m!7516562 () Bool)

(assert (=> b!6765353 m!7516562))

(declare-fun m!7516564 () Bool)

(assert (=> b!6765353 m!7516564))

(declare-fun m!7516566 () Bool)

(assert (=> b!6765342 m!7516566))

(declare-fun m!7516568 () Bool)

(assert (=> b!6765356 m!7516568))

(declare-fun m!7516570 () Bool)

(assert (=> b!6765355 m!7516570))

(declare-fun m!7516572 () Bool)

(assert (=> b!6765355 m!7516572))

(declare-fun m!7516574 () Bool)

(assert (=> b!6765338 m!7516574))

(assert (=> b!6765348 m!7516542))

(declare-fun m!7516576 () Bool)

(assert (=> b!6765359 m!7516576))

(declare-fun m!7516578 () Bool)

(assert (=> b!6765359 m!7516578))

(declare-fun m!7516580 () Bool)

(assert (=> b!6765359 m!7516580))

(declare-fun m!7516582 () Bool)

(assert (=> b!6765344 m!7516582))

(declare-fun m!7516584 () Bool)

(assert (=> b!6765344 m!7516584))

(assert (=> b!6765344 m!7516584))

(declare-fun m!7516586 () Bool)

(assert (=> b!6765344 m!7516586))

(declare-fun m!7516588 () Bool)

(assert (=> b!6765339 m!7516588))

(declare-fun m!7516590 () Bool)

(assert (=> b!6765368 m!7516590))

(declare-fun m!7516592 () Bool)

(assert (=> b!6765368 m!7516592))

(declare-fun m!7516594 () Bool)

(assert (=> b!6765368 m!7516594))

(declare-fun m!7516596 () Bool)

(assert (=> b!6765350 m!7516596))

(declare-fun m!7516598 () Bool)

(assert (=> setNonEmpty!46245 m!7516598))

(declare-fun m!7516600 () Bool)

(assert (=> b!6765337 m!7516600))

(assert (=> b!6765337 m!7516600))

(declare-fun m!7516602 () Bool)

(assert (=> b!6765337 m!7516602))

(declare-fun m!7516604 () Bool)

(assert (=> b!6765362 m!7516604))

(declare-fun m!7516606 () Bool)

(assert (=> b!6765362 m!7516606))

(declare-fun m!7516608 () Bool)

(assert (=> b!6765362 m!7516608))

(declare-fun m!7516610 () Bool)

(assert (=> b!6765362 m!7516610))

(declare-fun m!7516612 () Bool)

(assert (=> b!6765362 m!7516612))

(declare-fun m!7516614 () Bool)

(assert (=> b!6765345 m!7516614))

(declare-fun m!7516616 () Bool)

(assert (=> b!6765345 m!7516616))

(declare-fun m!7516618 () Bool)

(assert (=> b!6765345 m!7516618))

(declare-fun m!7516620 () Bool)

(assert (=> b!6765345 m!7516620))

(declare-fun m!7516622 () Bool)

(assert (=> b!6765345 m!7516622))

(declare-fun m!7516624 () Bool)

(assert (=> b!6765345 m!7516624))

(declare-fun m!7516626 () Bool)

(assert (=> b!6765345 m!7516626))

(declare-fun m!7516628 () Bool)

(assert (=> b!6765345 m!7516628))

(declare-fun m!7516630 () Bool)

(assert (=> b!6765345 m!7516630))

(declare-fun m!7516632 () Bool)

(assert (=> start!655316 m!7516632))

(declare-fun m!7516634 () Bool)

(assert (=> b!6765370 m!7516634))

(declare-fun m!7516636 () Bool)

(assert (=> b!6765370 m!7516636))

(declare-fun m!7516638 () Bool)

(assert (=> b!6765370 m!7516638))

(declare-fun m!7516640 () Bool)

(assert (=> b!6765361 m!7516640))

(declare-fun m!7516642 () Bool)

(assert (=> b!6765361 m!7516642))

(declare-fun m!7516644 () Bool)

(assert (=> b!6765361 m!7516644))

(declare-fun m!7516646 () Bool)

(assert (=> b!6765352 m!7516646))

(assert (=> b!6765366 m!7516542))

(assert (=> b!6765366 m!7516550))

(declare-fun m!7516648 () Bool)

(assert (=> b!6765360 m!7516648))

(declare-fun m!7516650 () Bool)

(assert (=> b!6765354 m!7516650))

(check-sat (not b!6765348) (not b!6765370) (not b!6765360) (not start!655316) (not b!6765351) (not b!6765343) (not setNonEmpty!46245) (not b!6765344) (not b!6765363) (not b!6765342) tp_is_empty!42435 (not b!6765366) (not b!6765339) (not b!6765355) (not b!6765368) (not b!6765359) (not b!6765345) (not b!6765352) (not b!6765362) (not b!6765361) (not b!6765338) (not b!6765347) (not b!6765357) (not b!6765340) (not b!6765350) (not b!6765369) (not b!6765364) (not b!6765353) (not b!6765356) (not b!6765354) (not b!6765349) (not b!6765337))
(check-sat)
(get-model)

(declare-fun b!6765406 () Bool)

(declare-fun e!4084923 () Bool)

(declare-fun nullable!6574 (Regex!16591) Bool)

(assert (=> b!6765406 (= e!4084923 (nullable!6574 r!7292))))

(declare-fun b!6765407 () Bool)

(declare-fun e!4084924 () Bool)

(declare-fun e!4084925 () Bool)

(assert (=> b!6765407 (= e!4084924 e!4084925)))

(declare-fun c!1256010 () Bool)

(assert (=> b!6765407 (= c!1256010 ((_ is EmptyLang!16591) r!7292))))

(declare-fun b!6765408 () Bool)

(declare-fun derivativeStep!5258 (Regex!16591 C!33452) Regex!16591)

(declare-fun head!13599 (List!66074) C!33452)

(declare-fun tail!12684 (List!66074) List!66074)

(assert (=> b!6765408 (= e!4084923 (matchR!8774 (derivativeStep!5258 r!7292 (head!13599 (_2!36869 lt!2442636))) (tail!12684 (_2!36869 lt!2442636))))))

(declare-fun b!6765409 () Bool)

(declare-fun e!4084927 () Bool)

(assert (=> b!6765409 (= e!4084927 (= (head!13599 (_2!36869 lt!2442636)) (c!1256003 r!7292)))))

(declare-fun b!6765411 () Bool)

(declare-fun res!2766237 () Bool)

(declare-fun e!4084921 () Bool)

(assert (=> b!6765411 (=> res!2766237 e!4084921)))

(assert (=> b!6765411 (= res!2766237 (not (isEmpty!38306 (tail!12684 (_2!36869 lt!2442636)))))))

(declare-fun b!6765412 () Bool)

(declare-fun e!4084926 () Bool)

(assert (=> b!6765412 (= e!4084926 e!4084921)))

(declare-fun res!2766233 () Bool)

(assert (=> b!6765412 (=> res!2766233 e!4084921)))

(declare-fun call!612904 () Bool)

(assert (=> b!6765412 (= res!2766233 call!612904)))

(declare-fun b!6765413 () Bool)

(assert (=> b!6765413 (= e!4084921 (not (= (head!13599 (_2!36869 lt!2442636)) (c!1256003 r!7292))))))

(declare-fun b!6765414 () Bool)

(declare-fun res!2766240 () Bool)

(declare-fun e!4084922 () Bool)

(assert (=> b!6765414 (=> res!2766240 e!4084922)))

(assert (=> b!6765414 (= res!2766240 e!4084927)))

(declare-fun res!2766238 () Bool)

(assert (=> b!6765414 (=> (not res!2766238) (not e!4084927))))

(declare-fun lt!2442645 () Bool)

(assert (=> b!6765414 (= res!2766238 lt!2442645)))

(declare-fun b!6765415 () Bool)

(declare-fun res!2766235 () Bool)

(assert (=> b!6765415 (=> (not res!2766235) (not e!4084927))))

(assert (=> b!6765415 (= res!2766235 (not call!612904))))

(declare-fun b!6765410 () Bool)

(assert (=> b!6765410 (= e!4084922 e!4084926)))

(declare-fun res!2766234 () Bool)

(assert (=> b!6765410 (=> (not res!2766234) (not e!4084926))))

(assert (=> b!6765410 (= res!2766234 (not lt!2442645))))

(declare-fun d!2125237 () Bool)

(assert (=> d!2125237 e!4084924))

(declare-fun c!1256012 () Bool)

(assert (=> d!2125237 (= c!1256012 ((_ is EmptyExpr!16591) r!7292))))

(assert (=> d!2125237 (= lt!2442645 e!4084923)))

(declare-fun c!1256011 () Bool)

(assert (=> d!2125237 (= c!1256011 (isEmpty!38306 (_2!36869 lt!2442636)))))

(assert (=> d!2125237 (validRegex!8327 r!7292)))

(assert (=> d!2125237 (= (matchR!8774 r!7292 (_2!36869 lt!2442636)) lt!2442645)))

(declare-fun bm!612899 () Bool)

(assert (=> bm!612899 (= call!612904 (isEmpty!38306 (_2!36869 lt!2442636)))))

(declare-fun b!6765416 () Bool)

(declare-fun res!2766239 () Bool)

(assert (=> b!6765416 (=> res!2766239 e!4084922)))

(assert (=> b!6765416 (= res!2766239 (not ((_ is ElementMatch!16591) r!7292)))))

(assert (=> b!6765416 (= e!4084925 e!4084922)))

(declare-fun b!6765417 () Bool)

(assert (=> b!6765417 (= e!4084924 (= lt!2442645 call!612904))))

(declare-fun b!6765418 () Bool)

(declare-fun res!2766236 () Bool)

(assert (=> b!6765418 (=> (not res!2766236) (not e!4084927))))

(assert (=> b!6765418 (= res!2766236 (isEmpty!38306 (tail!12684 (_2!36869 lt!2442636))))))

(declare-fun b!6765419 () Bool)

(assert (=> b!6765419 (= e!4084925 (not lt!2442645))))

(assert (= (and d!2125237 c!1256011) b!6765406))

(assert (= (and d!2125237 (not c!1256011)) b!6765408))

(assert (= (and d!2125237 c!1256012) b!6765417))

(assert (= (and d!2125237 (not c!1256012)) b!6765407))

(assert (= (and b!6765407 c!1256010) b!6765419))

(assert (= (and b!6765407 (not c!1256010)) b!6765416))

(assert (= (and b!6765416 (not res!2766239)) b!6765414))

(assert (= (and b!6765414 res!2766238) b!6765415))

(assert (= (and b!6765415 res!2766235) b!6765418))

(assert (= (and b!6765418 res!2766236) b!6765409))

(assert (= (and b!6765414 (not res!2766240)) b!6765410))

(assert (= (and b!6765410 res!2766234) b!6765412))

(assert (= (and b!6765412 (not res!2766233)) b!6765411))

(assert (= (and b!6765411 (not res!2766237)) b!6765413))

(assert (= (or b!6765417 b!6765412 b!6765415) bm!612899))

(declare-fun m!7516652 () Bool)

(assert (=> b!6765408 m!7516652))

(assert (=> b!6765408 m!7516652))

(declare-fun m!7516654 () Bool)

(assert (=> b!6765408 m!7516654))

(declare-fun m!7516656 () Bool)

(assert (=> b!6765408 m!7516656))

(assert (=> b!6765408 m!7516654))

(assert (=> b!6765408 m!7516656))

(declare-fun m!7516658 () Bool)

(assert (=> b!6765408 m!7516658))

(declare-fun m!7516660 () Bool)

(assert (=> d!2125237 m!7516660))

(assert (=> d!2125237 m!7516632))

(assert (=> b!6765409 m!7516652))

(assert (=> bm!612899 m!7516660))

(assert (=> b!6765413 m!7516652))

(declare-fun m!7516662 () Bool)

(assert (=> b!6765406 m!7516662))

(assert (=> b!6765418 m!7516656))

(assert (=> b!6765418 m!7516656))

(declare-fun m!7516664 () Bool)

(assert (=> b!6765418 m!7516664))

(assert (=> b!6765411 m!7516656))

(assert (=> b!6765411 m!7516656))

(assert (=> b!6765411 m!7516664))

(assert (=> b!6765364 d!2125237))

(declare-fun d!2125239 () Bool)

(declare-fun lambda!380526 () Int)

(declare-fun forall!15787 (List!66072 Int) Bool)

(assert (=> d!2125239 (= (inv!84724 setElem!46245) (forall!15787 (exprs!6475 setElem!46245) lambda!380526))))

(declare-fun bs!1800357 () Bool)

(assert (= bs!1800357 d!2125239))

(declare-fun m!7516668 () Bool)

(assert (=> bs!1800357 m!7516668))

(assert (=> setNonEmpty!46245 d!2125239))

(declare-fun call!612907 () (InoxSet Context!11950))

(declare-fun b!6765438 () Bool)

(declare-fun e!4084940 () (InoxSet Context!11950))

(assert (=> b!6765438 (= e!4084940 ((_ map or) call!612907 (derivationStepZipperUp!1745 (Context!11951 (t!379779 (exprs!6475 lt!2442630))) (h!72398 s!2326))))))

(declare-fun bm!612902 () Bool)

(assert (=> bm!612902 (= call!612907 (derivationStepZipperDown!1819 (h!72396 (exprs!6475 lt!2442630)) (Context!11951 (t!379779 (exprs!6475 lt!2442630))) (h!72398 s!2326)))))

(declare-fun b!6765439 () Bool)

(declare-fun e!4084938 () (InoxSet Context!11950))

(assert (=> b!6765439 (= e!4084938 ((as const (Array Context!11950 Bool)) false))))

(declare-fun b!6765440 () Bool)

(assert (=> b!6765440 (= e!4084938 call!612907)))

(declare-fun b!6765441 () Bool)

(assert (=> b!6765441 (= e!4084940 e!4084938)))

(declare-fun c!1256018 () Bool)

(assert (=> b!6765441 (= c!1256018 ((_ is Cons!65948) (exprs!6475 lt!2442630)))))

(declare-fun b!6765442 () Bool)

(declare-fun e!4084939 () Bool)

(assert (=> b!6765442 (= e!4084939 (nullable!6574 (h!72396 (exprs!6475 lt!2442630))))))

(declare-fun d!2125245 () Bool)

(declare-fun c!1256017 () Bool)

(assert (=> d!2125245 (= c!1256017 e!4084939)))

(declare-fun res!2766251 () Bool)

(assert (=> d!2125245 (=> (not res!2766251) (not e!4084939))))

(assert (=> d!2125245 (= res!2766251 ((_ is Cons!65948) (exprs!6475 lt!2442630)))))

(assert (=> d!2125245 (= (derivationStepZipperUp!1745 lt!2442630 (h!72398 s!2326)) e!4084940)))

(assert (= (and d!2125245 res!2766251) b!6765442))

(assert (= (and d!2125245 c!1256017) b!6765438))

(assert (= (and d!2125245 (not c!1256017)) b!6765441))

(assert (= (and b!6765441 c!1256018) b!6765440))

(assert (= (and b!6765441 (not c!1256018)) b!6765439))

(assert (= (or b!6765438 b!6765440) bm!612902))

(declare-fun m!7516670 () Bool)

(assert (=> b!6765438 m!7516670))

(declare-fun m!7516672 () Bool)

(assert (=> bm!612902 m!7516672))

(declare-fun m!7516674 () Bool)

(assert (=> b!6765442 m!7516674))

(assert (=> b!6765345 d!2125245))

(declare-fun d!2125247 () Bool)

(declare-fun dynLambda!26314 (Int Context!11950) (InoxSet Context!11950))

(assert (=> d!2125247 (= (flatMap!2072 lt!2442638 lambda!380523) (dynLambda!26314 lambda!380523 lt!2442639))))

(declare-fun lt!2442651 () Unit!159873)

(declare-fun choose!50415 ((InoxSet Context!11950) Context!11950 Int) Unit!159873)

(assert (=> d!2125247 (= lt!2442651 (choose!50415 lt!2442638 lt!2442639 lambda!380523))))

(assert (=> d!2125247 (= lt!2442638 (store ((as const (Array Context!11950 Bool)) false) lt!2442639 true))))

(assert (=> d!2125247 (= (lemmaFlatMapOnSingletonSet!1598 lt!2442638 lt!2442639 lambda!380523) lt!2442651)))

(declare-fun b_lambda!254747 () Bool)

(assert (=> (not b_lambda!254747) (not d!2125247)))

(declare-fun bs!1800360 () Bool)

(assert (= bs!1800360 d!2125247))

(assert (=> bs!1800360 m!7516614))

(declare-fun m!7516684 () Bool)

(assert (=> bs!1800360 m!7516684))

(declare-fun m!7516686 () Bool)

(assert (=> bs!1800360 m!7516686))

(assert (=> bs!1800360 m!7516618))

(assert (=> b!6765345 d!2125247))

(declare-fun call!612908 () (InoxSet Context!11950))

(declare-fun e!4084943 () (InoxSet Context!11950))

(declare-fun b!6765443 () Bool)

(assert (=> b!6765443 (= e!4084943 ((_ map or) call!612908 (derivationStepZipperUp!1745 (Context!11951 (t!379779 (exprs!6475 lt!2442639))) (h!72398 s!2326))))))

(declare-fun bm!612903 () Bool)

(assert (=> bm!612903 (= call!612908 (derivationStepZipperDown!1819 (h!72396 (exprs!6475 lt!2442639)) (Context!11951 (t!379779 (exprs!6475 lt!2442639))) (h!72398 s!2326)))))

(declare-fun b!6765444 () Bool)

(declare-fun e!4084941 () (InoxSet Context!11950))

(assert (=> b!6765444 (= e!4084941 ((as const (Array Context!11950 Bool)) false))))

(declare-fun b!6765445 () Bool)

(assert (=> b!6765445 (= e!4084941 call!612908)))

(declare-fun b!6765446 () Bool)

(assert (=> b!6765446 (= e!4084943 e!4084941)))

(declare-fun c!1256020 () Bool)

(assert (=> b!6765446 (= c!1256020 ((_ is Cons!65948) (exprs!6475 lt!2442639)))))

(declare-fun b!6765447 () Bool)

(declare-fun e!4084942 () Bool)

(assert (=> b!6765447 (= e!4084942 (nullable!6574 (h!72396 (exprs!6475 lt!2442639))))))

(declare-fun d!2125251 () Bool)

(declare-fun c!1256019 () Bool)

(assert (=> d!2125251 (= c!1256019 e!4084942)))

(declare-fun res!2766252 () Bool)

(assert (=> d!2125251 (=> (not res!2766252) (not e!4084942))))

(assert (=> d!2125251 (= res!2766252 ((_ is Cons!65948) (exprs!6475 lt!2442639)))))

(assert (=> d!2125251 (= (derivationStepZipperUp!1745 lt!2442639 (h!72398 s!2326)) e!4084943)))

(assert (= (and d!2125251 res!2766252) b!6765447))

(assert (= (and d!2125251 c!1256019) b!6765443))

(assert (= (and d!2125251 (not c!1256019)) b!6765446))

(assert (= (and b!6765446 c!1256020) b!6765445))

(assert (= (and b!6765446 (not c!1256020)) b!6765444))

(assert (= (or b!6765443 b!6765445) bm!612903))

(declare-fun m!7516688 () Bool)

(assert (=> b!6765443 m!7516688))

(declare-fun m!7516690 () Bool)

(assert (=> bm!612903 m!7516690))

(declare-fun m!7516692 () Bool)

(assert (=> b!6765447 m!7516692))

(assert (=> b!6765345 d!2125251))

(declare-fun bs!1800363 () Bool)

(declare-fun d!2125253 () Bool)

(assert (= bs!1800363 (and d!2125253 b!6765361)))

(declare-fun lambda!380540 () Int)

(assert (=> bs!1800363 (= lambda!380540 lambda!380523)))

(assert (=> d!2125253 true))

(assert (=> d!2125253 (= (derivationStepZipper!2535 lt!2442638 (h!72398 s!2326)) (flatMap!2072 lt!2442638 lambda!380540))))

(declare-fun bs!1800364 () Bool)

(assert (= bs!1800364 d!2125253))

(declare-fun m!7516694 () Bool)

(assert (=> bs!1800364 m!7516694))

(assert (=> b!6765345 d!2125253))

(declare-fun d!2125255 () Bool)

(declare-fun choose!50416 ((InoxSet Context!11950) Int) (InoxSet Context!11950))

(assert (=> d!2125255 (= (flatMap!2072 lt!2442622 lambda!380523) (choose!50416 lt!2442622 lambda!380523))))

(declare-fun bs!1800366 () Bool)

(assert (= bs!1800366 d!2125255))

(declare-fun m!7516696 () Bool)

(assert (=> bs!1800366 m!7516696))

(assert (=> b!6765345 d!2125255))

(declare-fun d!2125257 () Bool)

(assert (=> d!2125257 (= (flatMap!2072 lt!2442638 lambda!380523) (choose!50416 lt!2442638 lambda!380523))))

(declare-fun bs!1800367 () Bool)

(assert (= bs!1800367 d!2125257))

(declare-fun m!7516704 () Bool)

(assert (=> bs!1800367 m!7516704))

(assert (=> b!6765345 d!2125257))

(declare-fun d!2125261 () Bool)

(assert (=> d!2125261 (= (flatMap!2072 lt!2442622 lambda!380523) (dynLambda!26314 lambda!380523 lt!2442630))))

(declare-fun lt!2442655 () Unit!159873)

(assert (=> d!2125261 (= lt!2442655 (choose!50415 lt!2442622 lt!2442630 lambda!380523))))

(assert (=> d!2125261 (= lt!2442622 (store ((as const (Array Context!11950 Bool)) false) lt!2442630 true))))

(assert (=> d!2125261 (= (lemmaFlatMapOnSingletonSet!1598 lt!2442622 lt!2442630 lambda!380523) lt!2442655)))

(declare-fun b_lambda!254749 () Bool)

(assert (=> (not b_lambda!254749) (not d!2125261)))

(declare-fun bs!1800369 () Bool)

(assert (= bs!1800369 d!2125261))

(assert (=> bs!1800369 m!7516620))

(declare-fun m!7516708 () Bool)

(assert (=> bs!1800369 m!7516708))

(declare-fun m!7516710 () Bool)

(assert (=> bs!1800369 m!7516710))

(assert (=> bs!1800369 m!7516622))

(assert (=> b!6765345 d!2125261))

(declare-fun d!2125267 () Bool)

(declare-fun c!1256025 () Bool)

(assert (=> d!2125267 (= c!1256025 (isEmpty!38306 s!2326))))

(declare-fun e!4084950 () Bool)

(assert (=> d!2125267 (= (matchZipper!2577 lt!2442640 s!2326) e!4084950)))

(declare-fun b!6765464 () Bool)

(declare-fun nullableZipper!2301 ((InoxSet Context!11950)) Bool)

(assert (=> b!6765464 (= e!4084950 (nullableZipper!2301 lt!2442640))))

(declare-fun b!6765465 () Bool)

(assert (=> b!6765465 (= e!4084950 (matchZipper!2577 (derivationStepZipper!2535 lt!2442640 (head!13599 s!2326)) (tail!12684 s!2326)))))

(assert (= (and d!2125267 c!1256025) b!6765464))

(assert (= (and d!2125267 (not c!1256025)) b!6765465))

(assert (=> d!2125267 m!7516556))

(declare-fun m!7516712 () Bool)

(assert (=> b!6765464 m!7516712))

(declare-fun m!7516714 () Bool)

(assert (=> b!6765465 m!7516714))

(assert (=> b!6765465 m!7516714))

(declare-fun m!7516716 () Bool)

(assert (=> b!6765465 m!7516716))

(declare-fun m!7516718 () Bool)

(assert (=> b!6765465 m!7516718))

(assert (=> b!6765465 m!7516716))

(assert (=> b!6765465 m!7516718))

(declare-fun m!7516720 () Bool)

(assert (=> b!6765465 m!7516720))

(assert (=> b!6765344 d!2125267))

(declare-fun d!2125269 () Bool)

(declare-fun c!1256028 () Bool)

(assert (=> d!2125269 (= c!1256028 (isEmpty!38306 (t!379781 s!2326)))))

(declare-fun e!4084953 () Bool)

(assert (=> d!2125269 (= (matchZipper!2577 (derivationStepZipper!2535 lt!2442640 (h!72398 s!2326)) (t!379781 s!2326)) e!4084953)))

(declare-fun b!6765470 () Bool)

(assert (=> b!6765470 (= e!4084953 (nullableZipper!2301 (derivationStepZipper!2535 lt!2442640 (h!72398 s!2326))))))

(declare-fun b!6765471 () Bool)

(assert (=> b!6765471 (= e!4084953 (matchZipper!2577 (derivationStepZipper!2535 (derivationStepZipper!2535 lt!2442640 (h!72398 s!2326)) (head!13599 (t!379781 s!2326))) (tail!12684 (t!379781 s!2326))))))

(assert (= (and d!2125269 c!1256028) b!6765470))

(assert (= (and d!2125269 (not c!1256028)) b!6765471))

(declare-fun m!7516722 () Bool)

(assert (=> d!2125269 m!7516722))

(assert (=> b!6765470 m!7516584))

(declare-fun m!7516724 () Bool)

(assert (=> b!6765470 m!7516724))

(declare-fun m!7516726 () Bool)

(assert (=> b!6765471 m!7516726))

(assert (=> b!6765471 m!7516584))

(assert (=> b!6765471 m!7516726))

(declare-fun m!7516728 () Bool)

(assert (=> b!6765471 m!7516728))

(declare-fun m!7516730 () Bool)

(assert (=> b!6765471 m!7516730))

(assert (=> b!6765471 m!7516728))

(assert (=> b!6765471 m!7516730))

(declare-fun m!7516732 () Bool)

(assert (=> b!6765471 m!7516732))

(assert (=> b!6765344 d!2125269))

(declare-fun bs!1800370 () Bool)

(declare-fun d!2125271 () Bool)

(assert (= bs!1800370 (and d!2125271 b!6765361)))

(declare-fun lambda!380542 () Int)

(assert (=> bs!1800370 (= lambda!380542 lambda!380523)))

(declare-fun bs!1800371 () Bool)

(assert (= bs!1800371 (and d!2125271 d!2125253)))

(assert (=> bs!1800371 (= lambda!380542 lambda!380540)))

(assert (=> d!2125271 true))

(assert (=> d!2125271 (= (derivationStepZipper!2535 lt!2442640 (h!72398 s!2326)) (flatMap!2072 lt!2442640 lambda!380542))))

(declare-fun bs!1800372 () Bool)

(assert (= bs!1800372 d!2125271))

(declare-fun m!7516734 () Bool)

(assert (=> bs!1800372 m!7516734))

(assert (=> b!6765344 d!2125271))

(declare-fun d!2125273 () Bool)

(declare-fun choose!50417 (Int) Bool)

(assert (=> d!2125273 (= (Exists!3659 lambda!380520) (choose!50417 lambda!380520))))

(declare-fun bs!1800373 () Bool)

(assert (= bs!1800373 d!2125273))

(declare-fun m!7516736 () Bool)

(assert (=> bs!1800373 m!7516736))

(assert (=> b!6765366 d!2125273))

(declare-fun d!2125275 () Bool)

(assert (=> d!2125275 (= (Exists!3659 lambda!380521) (choose!50417 lambda!380521))))

(declare-fun bs!1800374 () Bool)

(assert (= bs!1800374 d!2125275))

(declare-fun m!7516738 () Bool)

(assert (=> bs!1800374 m!7516738))

(assert (=> b!6765366 d!2125275))

(declare-fun call!612927 () (InoxSet Context!11950))

(declare-fun c!1256057 () Bool)

(declare-fun call!612928 () List!66072)

(declare-fun bm!612920 () Bool)

(declare-fun c!1256053 () Bool)

(declare-fun c!1256056 () Bool)

(assert (=> bm!612920 (= call!612927 (derivationStepZipperDown!1819 (ite c!1256057 (regTwo!33695 r!7292) (ite c!1256053 (regTwo!33694 r!7292) (ite c!1256056 (regOne!33694 r!7292) (reg!16920 r!7292)))) (ite (or c!1256057 c!1256053) (Context!11951 Nil!65948) (Context!11951 call!612928)) (h!72398 s!2326)))))

(declare-fun bm!612921 () Bool)

(declare-fun call!612926 () List!66072)

(assert (=> bm!612921 (= call!612928 call!612926)))

(declare-fun bm!612922 () Bool)

(declare-fun call!612930 () (InoxSet Context!11950))

(assert (=> bm!612922 (= call!612930 call!612927)))

(declare-fun call!612929 () (InoxSet Context!11950))

(declare-fun bm!612924 () Bool)

(assert (=> bm!612924 (= call!612929 (derivationStepZipperDown!1819 (ite c!1256057 (regOne!33695 r!7292) (regOne!33694 r!7292)) (ite c!1256057 (Context!11951 Nil!65948) (Context!11951 call!612926)) (h!72398 s!2326)))))

(declare-fun b!6765546 () Bool)

(declare-fun e!4084997 () (InoxSet Context!11950))

(declare-fun call!612925 () (InoxSet Context!11950))

(assert (=> b!6765546 (= e!4084997 call!612925)))

(declare-fun b!6765547 () Bool)

(declare-fun e!4085000 () (InoxSet Context!11950))

(assert (=> b!6765547 (= e!4085000 (store ((as const (Array Context!11950 Bool)) false) (Context!11951 Nil!65948) true))))

(declare-fun b!6765548 () Bool)

(declare-fun e!4085001 () (InoxSet Context!11950))

(assert (=> b!6765548 (= e!4085001 ((_ map or) call!612929 call!612930))))

(declare-fun b!6765549 () Bool)

(declare-fun e!4084999 () Bool)

(assert (=> b!6765549 (= c!1256053 e!4084999)))

(declare-fun res!2766291 () Bool)

(assert (=> b!6765549 (=> (not res!2766291) (not e!4084999))))

(assert (=> b!6765549 (= res!2766291 ((_ is Concat!25436) r!7292))))

(declare-fun e!4084996 () (InoxSet Context!11950))

(assert (=> b!6765549 (= e!4084996 e!4085001)))

(declare-fun b!6765550 () Bool)

(declare-fun e!4084998 () (InoxSet Context!11950))

(assert (=> b!6765550 (= e!4085001 e!4084998)))

(assert (=> b!6765550 (= c!1256056 ((_ is Concat!25436) r!7292))))

(declare-fun bm!612925 () Bool)

(assert (=> bm!612925 (= call!612925 call!612930)))

(declare-fun b!6765551 () Bool)

(declare-fun c!1256054 () Bool)

(assert (=> b!6765551 (= c!1256054 ((_ is Star!16591) r!7292))))

(assert (=> b!6765551 (= e!4084998 e!4084997)))

(declare-fun b!6765552 () Bool)

(assert (=> b!6765552 (= e!4084999 (nullable!6574 (regOne!33694 r!7292)))))

(declare-fun b!6765553 () Bool)

(assert (=> b!6765553 (= e!4084996 ((_ map or) call!612929 call!612927))))

(declare-fun b!6765554 () Bool)

(assert (=> b!6765554 (= e!4084998 call!612925)))

(declare-fun d!2125277 () Bool)

(declare-fun c!1256055 () Bool)

(assert (=> d!2125277 (= c!1256055 (and ((_ is ElementMatch!16591) r!7292) (= (c!1256003 r!7292) (h!72398 s!2326))))))

(assert (=> d!2125277 (= (derivationStepZipperDown!1819 r!7292 (Context!11951 Nil!65948) (h!72398 s!2326)) e!4085000)))

(declare-fun bm!612923 () Bool)

(declare-fun $colon$colon!2404 (List!66072 Regex!16591) List!66072)

(assert (=> bm!612923 (= call!612926 ($colon$colon!2404 (exprs!6475 (Context!11951 Nil!65948)) (ite (or c!1256053 c!1256056) (regTwo!33694 r!7292) r!7292)))))

(declare-fun b!6765555 () Bool)

(assert (=> b!6765555 (= e!4085000 e!4084996)))

(assert (=> b!6765555 (= c!1256057 ((_ is Union!16591) r!7292))))

(declare-fun b!6765556 () Bool)

(assert (=> b!6765556 (= e!4084997 ((as const (Array Context!11950 Bool)) false))))

(assert (= (and d!2125277 c!1256055) b!6765547))

(assert (= (and d!2125277 (not c!1256055)) b!6765555))

(assert (= (and b!6765555 c!1256057) b!6765553))

(assert (= (and b!6765555 (not c!1256057)) b!6765549))

(assert (= (and b!6765549 res!2766291) b!6765552))

(assert (= (and b!6765549 c!1256053) b!6765548))

(assert (= (and b!6765549 (not c!1256053)) b!6765550))

(assert (= (and b!6765550 c!1256056) b!6765554))

(assert (= (and b!6765550 (not c!1256056)) b!6765551))

(assert (= (and b!6765551 c!1256054) b!6765546))

(assert (= (and b!6765551 (not c!1256054)) b!6765556))

(assert (= (or b!6765554 b!6765546) bm!612921))

(assert (= (or b!6765554 b!6765546) bm!612925))

(assert (= (or b!6765548 bm!612921) bm!612923))

(assert (= (or b!6765548 bm!612925) bm!612922))

(assert (= (or b!6765553 bm!612922) bm!612920))

(assert (= (or b!6765553 b!6765548) bm!612924))

(declare-fun m!7516804 () Bool)

(assert (=> bm!612923 m!7516804))

(declare-fun m!7516806 () Bool)

(assert (=> bm!612924 m!7516806))

(declare-fun m!7516808 () Bool)

(assert (=> b!6765547 m!7516808))

(declare-fun m!7516810 () Bool)

(assert (=> bm!612920 m!7516810))

(declare-fun m!7516812 () Bool)

(assert (=> b!6765552 m!7516812))

(assert (=> b!6765368 d!2125277))

(declare-fun call!612931 () (InoxSet Context!11950))

(declare-fun b!6765557 () Bool)

(declare-fun e!4085004 () (InoxSet Context!11950))

(assert (=> b!6765557 (= e!4085004 ((_ map or) call!612931 (derivationStepZipperUp!1745 (Context!11951 (t!379779 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))) (h!72398 s!2326))))))

(declare-fun bm!612926 () Bool)

(assert (=> bm!612926 (= call!612931 (derivationStepZipperDown!1819 (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948)))) (Context!11951 (t!379779 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))) (h!72398 s!2326)))))

(declare-fun b!6765558 () Bool)

(declare-fun e!4085002 () (InoxSet Context!11950))

(assert (=> b!6765558 (= e!4085002 ((as const (Array Context!11950 Bool)) false))))

(declare-fun b!6765559 () Bool)

(assert (=> b!6765559 (= e!4085002 call!612931)))

(declare-fun b!6765560 () Bool)

(assert (=> b!6765560 (= e!4085004 e!4085002)))

(declare-fun c!1256059 () Bool)

(assert (=> b!6765560 (= c!1256059 ((_ is Cons!65948) (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948)))))))

(declare-fun b!6765561 () Bool)

(declare-fun e!4085003 () Bool)

(assert (=> b!6765561 (= e!4085003 (nullable!6574 (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))))))

(declare-fun d!2125305 () Bool)

(declare-fun c!1256058 () Bool)

(assert (=> d!2125305 (= c!1256058 e!4085003)))

(declare-fun res!2766292 () Bool)

(assert (=> d!2125305 (=> (not res!2766292) (not e!4085003))))

(assert (=> d!2125305 (= res!2766292 ((_ is Cons!65948) (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948)))))))

(assert (=> d!2125305 (= (derivationStepZipperUp!1745 (Context!11951 (Cons!65948 r!7292 Nil!65948)) (h!72398 s!2326)) e!4085004)))

(assert (= (and d!2125305 res!2766292) b!6765561))

(assert (= (and d!2125305 c!1256058) b!6765557))

(assert (= (and d!2125305 (not c!1256058)) b!6765560))

(assert (= (and b!6765560 c!1256059) b!6765559))

(assert (= (and b!6765560 (not c!1256059)) b!6765558))

(assert (= (or b!6765557 b!6765559) bm!612926))

(declare-fun m!7516814 () Bool)

(assert (=> b!6765557 m!7516814))

(declare-fun m!7516816 () Bool)

(assert (=> bm!612926 m!7516816))

(declare-fun m!7516818 () Bool)

(assert (=> b!6765561 m!7516818))

(assert (=> b!6765368 d!2125305))

(declare-fun bs!1800388 () Bool)

(declare-fun d!2125307 () Bool)

(assert (= bs!1800388 (and d!2125307 b!6765361)))

(declare-fun lambda!380552 () Int)

(assert (=> bs!1800388 (= lambda!380552 lambda!380523)))

(declare-fun bs!1800389 () Bool)

(assert (= bs!1800389 (and d!2125307 d!2125253)))

(assert (=> bs!1800389 (= lambda!380552 lambda!380540)))

(declare-fun bs!1800390 () Bool)

(assert (= bs!1800390 (and d!2125307 d!2125271)))

(assert (=> bs!1800390 (= lambda!380552 lambda!380542)))

(assert (=> d!2125307 true))

(assert (=> d!2125307 (= (derivationStepZipper!2535 z!1189 (h!72398 s!2326)) (flatMap!2072 z!1189 lambda!380552))))

(declare-fun bs!1800391 () Bool)

(assert (= bs!1800391 d!2125307))

(declare-fun m!7516820 () Bool)

(assert (=> bs!1800391 m!7516820))

(assert (=> b!6765368 d!2125307))

(declare-fun d!2125309 () Bool)

(declare-fun lt!2442677 () Regex!16591)

(assert (=> d!2125309 (validRegex!8327 lt!2442677)))

(assert (=> d!2125309 (= lt!2442677 (generalisedUnion!2435 (unfocusZipperList!2012 lt!2442634)))))

(assert (=> d!2125309 (= (unfocusZipper!2333 lt!2442634) lt!2442677)))

(declare-fun bs!1800392 () Bool)

(assert (= bs!1800392 d!2125309))

(declare-fun m!7516822 () Bool)

(assert (=> bs!1800392 m!7516822))

(declare-fun m!7516824 () Bool)

(assert (=> bs!1800392 m!7516824))

(assert (=> bs!1800392 m!7516824))

(declare-fun m!7516826 () Bool)

(assert (=> bs!1800392 m!7516826))

(assert (=> b!6765369 d!2125309))

(assert (=> b!6765348 d!2125273))

(declare-fun b!6765584 () Bool)

(declare-fun e!4085019 () Bool)

(assert (=> b!6765584 (= e!4085019 (nullable!6574 (reg!16920 r!7292)))))

(declare-fun b!6765585 () Bool)

(declare-fun e!4085020 () Bool)

(declare-fun e!4085021 () Bool)

(assert (=> b!6765585 (= e!4085020 e!4085021)))

(declare-fun c!1256070 () Bool)

(assert (=> b!6765585 (= c!1256070 ((_ is EmptyLang!16591) (reg!16920 r!7292)))))

(declare-fun b!6765586 () Bool)

(assert (=> b!6765586 (= e!4085019 (matchR!8774 (derivativeStep!5258 (reg!16920 r!7292) (head!13599 (_1!36869 lt!2442636))) (tail!12684 (_1!36869 lt!2442636))))))

(declare-fun b!6765587 () Bool)

(declare-fun e!4085023 () Bool)

(assert (=> b!6765587 (= e!4085023 (= (head!13599 (_1!36869 lt!2442636)) (c!1256003 (reg!16920 r!7292))))))

(declare-fun b!6765589 () Bool)

(declare-fun res!2766299 () Bool)

(declare-fun e!4085017 () Bool)

(assert (=> b!6765589 (=> res!2766299 e!4085017)))

(assert (=> b!6765589 (= res!2766299 (not (isEmpty!38306 (tail!12684 (_1!36869 lt!2442636)))))))

(declare-fun b!6765590 () Bool)

(declare-fun e!4085022 () Bool)

(assert (=> b!6765590 (= e!4085022 e!4085017)))

(declare-fun res!2766295 () Bool)

(assert (=> b!6765590 (=> res!2766295 e!4085017)))

(declare-fun call!612944 () Bool)

(assert (=> b!6765590 (= res!2766295 call!612944)))

(declare-fun b!6765591 () Bool)

(assert (=> b!6765591 (= e!4085017 (not (= (head!13599 (_1!36869 lt!2442636)) (c!1256003 (reg!16920 r!7292)))))))

(declare-fun b!6765592 () Bool)

(declare-fun res!2766302 () Bool)

(declare-fun e!4085018 () Bool)

(assert (=> b!6765592 (=> res!2766302 e!4085018)))

(assert (=> b!6765592 (= res!2766302 e!4085023)))

(declare-fun res!2766300 () Bool)

(assert (=> b!6765592 (=> (not res!2766300) (not e!4085023))))

(declare-fun lt!2442678 () Bool)

(assert (=> b!6765592 (= res!2766300 lt!2442678)))

(declare-fun b!6765593 () Bool)

(declare-fun res!2766297 () Bool)

(assert (=> b!6765593 (=> (not res!2766297) (not e!4085023))))

(assert (=> b!6765593 (= res!2766297 (not call!612944))))

(declare-fun b!6765588 () Bool)

(assert (=> b!6765588 (= e!4085018 e!4085022)))

(declare-fun res!2766296 () Bool)

(assert (=> b!6765588 (=> (not res!2766296) (not e!4085022))))

(assert (=> b!6765588 (= res!2766296 (not lt!2442678))))

(declare-fun d!2125311 () Bool)

(assert (=> d!2125311 e!4085020))

(declare-fun c!1256072 () Bool)

(assert (=> d!2125311 (= c!1256072 ((_ is EmptyExpr!16591) (reg!16920 r!7292)))))

(assert (=> d!2125311 (= lt!2442678 e!4085019)))

(declare-fun c!1256071 () Bool)

(assert (=> d!2125311 (= c!1256071 (isEmpty!38306 (_1!36869 lt!2442636)))))

(assert (=> d!2125311 (validRegex!8327 (reg!16920 r!7292))))

(assert (=> d!2125311 (= (matchR!8774 (reg!16920 r!7292) (_1!36869 lt!2442636)) lt!2442678)))

(declare-fun bm!612939 () Bool)

(assert (=> bm!612939 (= call!612944 (isEmpty!38306 (_1!36869 lt!2442636)))))

(declare-fun b!6765594 () Bool)

(declare-fun res!2766301 () Bool)

(assert (=> b!6765594 (=> res!2766301 e!4085018)))

(assert (=> b!6765594 (= res!2766301 (not ((_ is ElementMatch!16591) (reg!16920 r!7292))))))

(assert (=> b!6765594 (= e!4085021 e!4085018)))

(declare-fun b!6765595 () Bool)

(assert (=> b!6765595 (= e!4085020 (= lt!2442678 call!612944))))

(declare-fun b!6765596 () Bool)

(declare-fun res!2766298 () Bool)

(assert (=> b!6765596 (=> (not res!2766298) (not e!4085023))))

(assert (=> b!6765596 (= res!2766298 (isEmpty!38306 (tail!12684 (_1!36869 lt!2442636))))))

(declare-fun b!6765597 () Bool)

(assert (=> b!6765597 (= e!4085021 (not lt!2442678))))

(assert (= (and d!2125311 c!1256071) b!6765584))

(assert (= (and d!2125311 (not c!1256071)) b!6765586))

(assert (= (and d!2125311 c!1256072) b!6765595))

(assert (= (and d!2125311 (not c!1256072)) b!6765585))

(assert (= (and b!6765585 c!1256070) b!6765597))

(assert (= (and b!6765585 (not c!1256070)) b!6765594))

(assert (= (and b!6765594 (not res!2766301)) b!6765592))

(assert (= (and b!6765592 res!2766300) b!6765593))

(assert (= (and b!6765593 res!2766297) b!6765596))

(assert (= (and b!6765596 res!2766298) b!6765587))

(assert (= (and b!6765592 (not res!2766302)) b!6765588))

(assert (= (and b!6765588 res!2766296) b!6765590))

(assert (= (and b!6765590 (not res!2766295)) b!6765589))

(assert (= (and b!6765589 (not res!2766299)) b!6765591))

(assert (= (or b!6765595 b!6765590 b!6765593) bm!612939))

(declare-fun m!7516828 () Bool)

(assert (=> b!6765586 m!7516828))

(assert (=> b!6765586 m!7516828))

(declare-fun m!7516830 () Bool)

(assert (=> b!6765586 m!7516830))

(declare-fun m!7516832 () Bool)

(assert (=> b!6765586 m!7516832))

(assert (=> b!6765586 m!7516830))

(assert (=> b!6765586 m!7516832))

(declare-fun m!7516834 () Bool)

(assert (=> b!6765586 m!7516834))

(declare-fun m!7516836 () Bool)

(assert (=> d!2125311 m!7516836))

(declare-fun m!7516838 () Bool)

(assert (=> d!2125311 m!7516838))

(assert (=> b!6765587 m!7516828))

(assert (=> bm!612939 m!7516836))

(assert (=> b!6765591 m!7516828))

(declare-fun m!7516840 () Bool)

(assert (=> b!6765584 m!7516840))

(assert (=> b!6765596 m!7516832))

(assert (=> b!6765596 m!7516832))

(declare-fun m!7516842 () Bool)

(assert (=> b!6765596 m!7516842))

(assert (=> b!6765589 m!7516832))

(assert (=> b!6765589 m!7516832))

(assert (=> b!6765589 m!7516842))

(assert (=> b!6765350 d!2125311))

(declare-fun bs!1800393 () Bool)

(declare-fun d!2125313 () Bool)

(assert (= bs!1800393 (and d!2125313 d!2125239)))

(declare-fun lambda!380553 () Int)

(assert (=> bs!1800393 (= lambda!380553 lambda!380526)))

(assert (=> d!2125313 (= (inv!84724 lt!2442639) (forall!15787 (exprs!6475 lt!2442639) lambda!380553))))

(declare-fun bs!1800394 () Bool)

(assert (= bs!1800394 d!2125313))

(declare-fun m!7516844 () Bool)

(assert (=> bs!1800394 m!7516844))

(assert (=> b!6765370 d!2125313))

(declare-fun d!2125315 () Bool)

(declare-fun c!1256078 () Bool)

(assert (=> d!2125315 (= c!1256078 (isEmpty!38306 (_1!36869 lt!2442636)))))

(declare-fun e!4085030 () Bool)

(assert (=> d!2125315 (= (matchZipper!2577 lt!2442622 (_1!36869 lt!2442636)) e!4085030)))

(declare-fun b!6765609 () Bool)

(assert (=> b!6765609 (= e!4085030 (nullableZipper!2301 lt!2442622))))

(declare-fun b!6765610 () Bool)

(assert (=> b!6765610 (= e!4085030 (matchZipper!2577 (derivationStepZipper!2535 lt!2442622 (head!13599 (_1!36869 lt!2442636))) (tail!12684 (_1!36869 lt!2442636))))))

(assert (= (and d!2125315 c!1256078) b!6765609))

(assert (= (and d!2125315 (not c!1256078)) b!6765610))

(assert (=> d!2125315 m!7516836))

(declare-fun m!7516846 () Bool)

(assert (=> b!6765609 m!7516846))

(assert (=> b!6765610 m!7516828))

(assert (=> b!6765610 m!7516828))

(declare-fun m!7516848 () Bool)

(assert (=> b!6765610 m!7516848))

(assert (=> b!6765610 m!7516832))

(assert (=> b!6765610 m!7516848))

(assert (=> b!6765610 m!7516832))

(declare-fun m!7516854 () Bool)

(assert (=> b!6765610 m!7516854))

(assert (=> b!6765370 d!2125315))

(declare-fun d!2125317 () Bool)

(assert (=> d!2125317 (= (matchR!8774 (reg!16920 r!7292) (_1!36869 lt!2442636)) (matchZipper!2577 lt!2442622 (_1!36869 lt!2442636)))))

(declare-fun lt!2442685 () Unit!159873)

(declare-fun choose!50419 ((InoxSet Context!11950) List!66073 Regex!16591 List!66074) Unit!159873)

(assert (=> d!2125317 (= lt!2442685 (choose!50419 lt!2442622 lt!2442634 (reg!16920 r!7292) (_1!36869 lt!2442636)))))

(assert (=> d!2125317 (validRegex!8327 (reg!16920 r!7292))))

(assert (=> d!2125317 (= (theoremZipperRegexEquiv!921 lt!2442622 lt!2442634 (reg!16920 r!7292) (_1!36869 lt!2442636)) lt!2442685)))

(declare-fun bs!1800401 () Bool)

(assert (= bs!1800401 d!2125317))

(assert (=> bs!1800401 m!7516596))

(assert (=> bs!1800401 m!7516636))

(declare-fun m!7516896 () Bool)

(assert (=> bs!1800401 m!7516896))

(assert (=> bs!1800401 m!7516838))

(assert (=> b!6765370 d!2125317))

(declare-fun b!6765693 () Bool)

(declare-fun e!4085083 () Bool)

(declare-fun call!612972 () Bool)

(assert (=> b!6765693 (= e!4085083 call!612972)))

(declare-fun b!6765694 () Bool)

(declare-fun res!2766340 () Bool)

(declare-fun e!4085086 () Bool)

(assert (=> b!6765694 (=> res!2766340 e!4085086)))

(assert (=> b!6765694 (= res!2766340 (not ((_ is Concat!25436) r!7292)))))

(declare-fun e!4085088 () Bool)

(assert (=> b!6765694 (= e!4085088 e!4085086)))

(declare-fun c!1256104 () Bool)

(declare-fun bm!612966 () Bool)

(declare-fun c!1256105 () Bool)

(assert (=> bm!612966 (= call!612972 (validRegex!8327 (ite c!1256104 (reg!16920 r!7292) (ite c!1256105 (regOne!33695 r!7292) (regOne!33694 r!7292)))))))

(declare-fun b!6765695 () Bool)

(declare-fun res!2766336 () Bool)

(declare-fun e!4085087 () Bool)

(assert (=> b!6765695 (=> (not res!2766336) (not e!4085087))))

(declare-fun call!612971 () Bool)

(assert (=> b!6765695 (= res!2766336 call!612971)))

(assert (=> b!6765695 (= e!4085088 e!4085087)))

(declare-fun d!2125335 () Bool)

(declare-fun res!2766338 () Bool)

(declare-fun e!4085085 () Bool)

(assert (=> d!2125335 (=> res!2766338 e!4085085)))

(assert (=> d!2125335 (= res!2766338 ((_ is ElementMatch!16591) r!7292))))

(assert (=> d!2125335 (= (validRegex!8327 r!7292) e!4085085)))

(declare-fun b!6765696 () Bool)

(declare-fun e!4085084 () Bool)

(assert (=> b!6765696 (= e!4085084 e!4085088)))

(assert (=> b!6765696 (= c!1256105 ((_ is Union!16591) r!7292))))

(declare-fun b!6765697 () Bool)

(declare-fun e!4085082 () Bool)

(declare-fun call!612973 () Bool)

(assert (=> b!6765697 (= e!4085082 call!612973)))

(declare-fun b!6765698 () Bool)

(assert (=> b!6765698 (= e!4085084 e!4085083)))

(declare-fun res!2766339 () Bool)

(assert (=> b!6765698 (= res!2766339 (not (nullable!6574 (reg!16920 r!7292))))))

(assert (=> b!6765698 (=> (not res!2766339) (not e!4085083))))

(declare-fun b!6765699 () Bool)

(assert (=> b!6765699 (= e!4085087 call!612973)))

(declare-fun bm!612967 () Bool)

(assert (=> bm!612967 (= call!612973 (validRegex!8327 (ite c!1256105 (regTwo!33695 r!7292) (regTwo!33694 r!7292))))))

(declare-fun b!6765700 () Bool)

(assert (=> b!6765700 (= e!4085086 e!4085082)))

(declare-fun res!2766337 () Bool)

(assert (=> b!6765700 (=> (not res!2766337) (not e!4085082))))

(assert (=> b!6765700 (= res!2766337 call!612971)))

(declare-fun bm!612968 () Bool)

(assert (=> bm!612968 (= call!612971 call!612972)))

(declare-fun b!6765701 () Bool)

(assert (=> b!6765701 (= e!4085085 e!4085084)))

(assert (=> b!6765701 (= c!1256104 ((_ is Star!16591) r!7292))))

(assert (= (and d!2125335 (not res!2766338)) b!6765701))

(assert (= (and b!6765701 c!1256104) b!6765698))

(assert (= (and b!6765701 (not c!1256104)) b!6765696))

(assert (= (and b!6765698 res!2766339) b!6765693))

(assert (= (and b!6765696 c!1256105) b!6765695))

(assert (= (and b!6765696 (not c!1256105)) b!6765694))

(assert (= (and b!6765695 res!2766336) b!6765699))

(assert (= (and b!6765694 (not res!2766340)) b!6765700))

(assert (= (and b!6765700 res!2766337) b!6765697))

(assert (= (or b!6765699 b!6765697) bm!612967))

(assert (= (or b!6765695 b!6765700) bm!612968))

(assert (= (or b!6765693 bm!612968) bm!612966))

(declare-fun m!7516898 () Bool)

(assert (=> bm!612966 m!7516898))

(assert (=> b!6765698 m!7516840))

(declare-fun m!7516900 () Bool)

(assert (=> bm!612967 m!7516900))

(assert (=> start!655316 d!2125335))

(declare-fun bs!1800413 () Bool)

(declare-fun b!6765805 () Bool)

(assert (= bs!1800413 (and b!6765805 b!6765357)))

(declare-fun lambda!380565 () Int)

(assert (=> bs!1800413 (not (= lambda!380565 lambda!380520))))

(assert (=> bs!1800413 (= lambda!380565 lambda!380521)))

(assert (=> bs!1800413 (not (= lambda!380565 lambda!380522))))

(assert (=> b!6765805 true))

(assert (=> b!6765805 true))

(declare-fun bs!1800414 () Bool)

(declare-fun b!6765810 () Bool)

(assert (= bs!1800414 (and b!6765810 b!6765357)))

(declare-fun lambda!380568 () Int)

(assert (=> bs!1800414 (not (= lambda!380568 lambda!380520))))

(assert (=> bs!1800414 (not (= lambda!380568 lambda!380521))))

(assert (=> bs!1800414 (= (and (= (regOne!33694 r!7292) (reg!16920 r!7292)) (= (regTwo!33694 r!7292) r!7292)) (= lambda!380568 lambda!380522))))

(declare-fun bs!1800415 () Bool)

(assert (= bs!1800415 (and b!6765810 b!6765805)))

(assert (=> bs!1800415 (not (= lambda!380568 lambda!380565))))

(assert (=> b!6765810 true))

(assert (=> b!6765810 true))

(declare-fun b!6765803 () Bool)

(declare-fun e!4085152 () Bool)

(declare-fun call!612990 () Bool)

(assert (=> b!6765803 (= e!4085152 call!612990)))

(declare-fun c!1256129 () Bool)

(declare-fun call!612991 () Bool)

(declare-fun bm!612985 () Bool)

(assert (=> bm!612985 (= call!612991 (Exists!3659 (ite c!1256129 lambda!380565 lambda!380568)))))

(declare-fun b!6765804 () Bool)

(declare-fun e!4085150 () Bool)

(declare-fun e!4085155 () Bool)

(assert (=> b!6765804 (= e!4085150 e!4085155)))

(declare-fun res!2766397 () Bool)

(assert (=> b!6765804 (= res!2766397 (matchRSpec!3692 (regOne!33695 r!7292) s!2326))))

(assert (=> b!6765804 (=> res!2766397 e!4085155)))

(declare-fun e!4085149 () Bool)

(assert (=> b!6765805 (= e!4085149 call!612991)))

(declare-fun b!6765806 () Bool)

(declare-fun e!4085154 () Bool)

(assert (=> b!6765806 (= e!4085152 e!4085154)))

(declare-fun res!2766396 () Bool)

(assert (=> b!6765806 (= res!2766396 (not ((_ is EmptyLang!16591) r!7292)))))

(assert (=> b!6765806 (=> (not res!2766396) (not e!4085154))))

(declare-fun b!6765807 () Bool)

(declare-fun e!4085151 () Bool)

(assert (=> b!6765807 (= e!4085151 (= s!2326 (Cons!65950 (c!1256003 r!7292) Nil!65950)))))

(declare-fun b!6765808 () Bool)

(assert (=> b!6765808 (= e!4085155 (matchRSpec!3692 (regTwo!33695 r!7292) s!2326))))

(declare-fun d!2125337 () Bool)

(declare-fun c!1256131 () Bool)

(assert (=> d!2125337 (= c!1256131 ((_ is EmptyExpr!16591) r!7292))))

(assert (=> d!2125337 (= (matchRSpec!3692 r!7292 s!2326) e!4085152)))

(declare-fun bm!612986 () Bool)

(assert (=> bm!612986 (= call!612990 (isEmpty!38306 s!2326))))

(declare-fun b!6765809 () Bool)

(declare-fun c!1256130 () Bool)

(assert (=> b!6765809 (= c!1256130 ((_ is Union!16591) r!7292))))

(assert (=> b!6765809 (= e!4085151 e!4085150)))

(declare-fun e!4085153 () Bool)

(assert (=> b!6765810 (= e!4085153 call!612991)))

(declare-fun b!6765811 () Bool)

(declare-fun res!2766398 () Bool)

(assert (=> b!6765811 (=> res!2766398 e!4085149)))

(assert (=> b!6765811 (= res!2766398 call!612990)))

(assert (=> b!6765811 (= e!4085153 e!4085149)))

(declare-fun b!6765812 () Bool)

(declare-fun c!1256132 () Bool)

(assert (=> b!6765812 (= c!1256132 ((_ is ElementMatch!16591) r!7292))))

(assert (=> b!6765812 (= e!4085154 e!4085151)))

(declare-fun b!6765813 () Bool)

(assert (=> b!6765813 (= e!4085150 e!4085153)))

(assert (=> b!6765813 (= c!1256129 ((_ is Star!16591) r!7292))))

(assert (= (and d!2125337 c!1256131) b!6765803))

(assert (= (and d!2125337 (not c!1256131)) b!6765806))

(assert (= (and b!6765806 res!2766396) b!6765812))

(assert (= (and b!6765812 c!1256132) b!6765807))

(assert (= (and b!6765812 (not c!1256132)) b!6765809))

(assert (= (and b!6765809 c!1256130) b!6765804))

(assert (= (and b!6765809 (not c!1256130)) b!6765813))

(assert (= (and b!6765804 (not res!2766397)) b!6765808))

(assert (= (and b!6765813 c!1256129) b!6765811))

(assert (= (and b!6765813 (not c!1256129)) b!6765810))

(assert (= (and b!6765811 (not res!2766398)) b!6765805))

(assert (= (or b!6765805 b!6765810) bm!612985))

(assert (= (or b!6765803 b!6765811) bm!612986))

(declare-fun m!7516934 () Bool)

(assert (=> bm!612985 m!7516934))

(declare-fun m!7516936 () Bool)

(assert (=> b!6765804 m!7516936))

(declare-fun m!7516938 () Bool)

(assert (=> b!6765808 m!7516938))

(assert (=> bm!612986 m!7516556))

(assert (=> b!6765353 d!2125337))

(declare-fun b!6765844 () Bool)

(declare-fun e!4085176 () Bool)

(assert (=> b!6765844 (= e!4085176 (nullable!6574 r!7292))))

(declare-fun b!6765845 () Bool)

(declare-fun e!4085177 () Bool)

(declare-fun e!4085178 () Bool)

(assert (=> b!6765845 (= e!4085177 e!4085178)))

(declare-fun c!1256145 () Bool)

(assert (=> b!6765845 (= c!1256145 ((_ is EmptyLang!16591) r!7292))))

(declare-fun b!6765846 () Bool)

(assert (=> b!6765846 (= e!4085176 (matchR!8774 (derivativeStep!5258 r!7292 (head!13599 s!2326)) (tail!12684 s!2326)))))

(declare-fun b!6765847 () Bool)

(declare-fun e!4085180 () Bool)

(assert (=> b!6765847 (= e!4085180 (= (head!13599 s!2326) (c!1256003 r!7292)))))

(declare-fun b!6765849 () Bool)

(declare-fun res!2766409 () Bool)

(declare-fun e!4085174 () Bool)

(assert (=> b!6765849 (=> res!2766409 e!4085174)))

(assert (=> b!6765849 (= res!2766409 (not (isEmpty!38306 (tail!12684 s!2326))))))

(declare-fun b!6765850 () Bool)

(declare-fun e!4085179 () Bool)

(assert (=> b!6765850 (= e!4085179 e!4085174)))

(declare-fun res!2766405 () Bool)

(assert (=> b!6765850 (=> res!2766405 e!4085174)))

(declare-fun call!612992 () Bool)

(assert (=> b!6765850 (= res!2766405 call!612992)))

(declare-fun b!6765851 () Bool)

(assert (=> b!6765851 (= e!4085174 (not (= (head!13599 s!2326) (c!1256003 r!7292))))))

(declare-fun b!6765852 () Bool)

(declare-fun res!2766412 () Bool)

(declare-fun e!4085175 () Bool)

(assert (=> b!6765852 (=> res!2766412 e!4085175)))

(assert (=> b!6765852 (= res!2766412 e!4085180)))

(declare-fun res!2766410 () Bool)

(assert (=> b!6765852 (=> (not res!2766410) (not e!4085180))))

(declare-fun lt!2442696 () Bool)

(assert (=> b!6765852 (= res!2766410 lt!2442696)))

(declare-fun b!6765853 () Bool)

(declare-fun res!2766407 () Bool)

(assert (=> b!6765853 (=> (not res!2766407) (not e!4085180))))

(assert (=> b!6765853 (= res!2766407 (not call!612992))))

(declare-fun b!6765848 () Bool)

(assert (=> b!6765848 (= e!4085175 e!4085179)))

(declare-fun res!2766406 () Bool)

(assert (=> b!6765848 (=> (not res!2766406) (not e!4085179))))

(assert (=> b!6765848 (= res!2766406 (not lt!2442696))))

(declare-fun d!2125349 () Bool)

(assert (=> d!2125349 e!4085177))

(declare-fun c!1256147 () Bool)

(assert (=> d!2125349 (= c!1256147 ((_ is EmptyExpr!16591) r!7292))))

(assert (=> d!2125349 (= lt!2442696 e!4085176)))

(declare-fun c!1256146 () Bool)

(assert (=> d!2125349 (= c!1256146 (isEmpty!38306 s!2326))))

(assert (=> d!2125349 (validRegex!8327 r!7292)))

(assert (=> d!2125349 (= (matchR!8774 r!7292 s!2326) lt!2442696)))

(declare-fun bm!612987 () Bool)

(assert (=> bm!612987 (= call!612992 (isEmpty!38306 s!2326))))

(declare-fun b!6765854 () Bool)

(declare-fun res!2766411 () Bool)

(assert (=> b!6765854 (=> res!2766411 e!4085175)))

(assert (=> b!6765854 (= res!2766411 (not ((_ is ElementMatch!16591) r!7292)))))

(assert (=> b!6765854 (= e!4085178 e!4085175)))

(declare-fun b!6765855 () Bool)

(assert (=> b!6765855 (= e!4085177 (= lt!2442696 call!612992))))

(declare-fun b!6765856 () Bool)

(declare-fun res!2766408 () Bool)

(assert (=> b!6765856 (=> (not res!2766408) (not e!4085180))))

(assert (=> b!6765856 (= res!2766408 (isEmpty!38306 (tail!12684 s!2326)))))

(declare-fun b!6765857 () Bool)

(assert (=> b!6765857 (= e!4085178 (not lt!2442696))))

(assert (= (and d!2125349 c!1256146) b!6765844))

(assert (= (and d!2125349 (not c!1256146)) b!6765846))

(assert (= (and d!2125349 c!1256147) b!6765855))

(assert (= (and d!2125349 (not c!1256147)) b!6765845))

(assert (= (and b!6765845 c!1256145) b!6765857))

(assert (= (and b!6765845 (not c!1256145)) b!6765854))

(assert (= (and b!6765854 (not res!2766411)) b!6765852))

(assert (= (and b!6765852 res!2766410) b!6765853))

(assert (= (and b!6765853 res!2766407) b!6765856))

(assert (= (and b!6765856 res!2766408) b!6765847))

(assert (= (and b!6765852 (not res!2766412)) b!6765848))

(assert (= (and b!6765848 res!2766406) b!6765850))

(assert (= (and b!6765850 (not res!2766405)) b!6765849))

(assert (= (and b!6765849 (not res!2766409)) b!6765851))

(assert (= (or b!6765855 b!6765850 b!6765853) bm!612987))

(assert (=> b!6765846 m!7516714))

(assert (=> b!6765846 m!7516714))

(declare-fun m!7516962 () Bool)

(assert (=> b!6765846 m!7516962))

(assert (=> b!6765846 m!7516718))

(assert (=> b!6765846 m!7516962))

(assert (=> b!6765846 m!7516718))

(declare-fun m!7516964 () Bool)

(assert (=> b!6765846 m!7516964))

(assert (=> d!2125349 m!7516556))

(assert (=> d!2125349 m!7516632))

(assert (=> b!6765847 m!7516714))

(assert (=> bm!612987 m!7516556))

(assert (=> b!6765851 m!7516714))

(assert (=> b!6765844 m!7516662))

(assert (=> b!6765856 m!7516718))

(assert (=> b!6765856 m!7516718))

(declare-fun m!7516966 () Bool)

(assert (=> b!6765856 m!7516966))

(assert (=> b!6765849 m!7516718))

(assert (=> b!6765849 m!7516718))

(assert (=> b!6765849 m!7516966))

(assert (=> b!6765353 d!2125349))

(declare-fun d!2125355 () Bool)

(assert (=> d!2125355 (= (matchR!8774 r!7292 s!2326) (matchRSpec!3692 r!7292 s!2326))))

(declare-fun lt!2442699 () Unit!159873)

(declare-fun choose!50421 (Regex!16591 List!66074) Unit!159873)

(assert (=> d!2125355 (= lt!2442699 (choose!50421 r!7292 s!2326))))

(assert (=> d!2125355 (validRegex!8327 r!7292)))

(assert (=> d!2125355 (= (mainMatchTheorem!3692 r!7292 s!2326) lt!2442699)))

(declare-fun bs!1800420 () Bool)

(assert (= bs!1800420 d!2125355))

(assert (=> bs!1800420 m!7516562))

(assert (=> bs!1800420 m!7516560))

(declare-fun m!7516980 () Bool)

(assert (=> bs!1800420 m!7516980))

(assert (=> bs!1800420 m!7516632))

(assert (=> b!6765353 d!2125355))

(declare-fun d!2125359 () Bool)

(assert (=> d!2125359 (= (isEmpty!38305 (t!379780 zl!343)) ((_ is Nil!65949) (t!379780 zl!343)))))

(assert (=> b!6765352 d!2125359))

(declare-fun bs!1800427 () Bool)

(declare-fun d!2125361 () Bool)

(assert (= bs!1800427 (and d!2125361 d!2125239)))

(declare-fun lambda!380574 () Int)

(assert (=> bs!1800427 (= lambda!380574 lambda!380526)))

(declare-fun bs!1800428 () Bool)

(assert (= bs!1800428 (and d!2125361 d!2125313)))

(assert (=> bs!1800428 (= lambda!380574 lambda!380553)))

(declare-fun b!6765916 () Bool)

(declare-fun e!4085214 () Regex!16591)

(assert (=> b!6765916 (= e!4085214 (h!72396 (exprs!6475 (h!72397 zl!343))))))

(declare-fun b!6765917 () Bool)

(declare-fun e!4085215 () Bool)

(declare-fun lt!2442708 () Regex!16591)

(declare-fun head!13602 (List!66072) Regex!16591)

(assert (=> b!6765917 (= e!4085215 (= lt!2442708 (head!13602 (exprs!6475 (h!72397 zl!343)))))))

(declare-fun b!6765918 () Bool)

(declare-fun e!4085212 () Bool)

(declare-fun e!4085217 () Bool)

(assert (=> b!6765918 (= e!4085212 e!4085217)))

(declare-fun c!1256167 () Bool)

(declare-fun isEmpty!38309 (List!66072) Bool)

(assert (=> b!6765918 (= c!1256167 (isEmpty!38309 (exprs!6475 (h!72397 zl!343))))))

(declare-fun b!6765919 () Bool)

(declare-fun e!4085216 () Regex!16591)

(assert (=> b!6765919 (= e!4085214 e!4085216)))

(declare-fun c!1256170 () Bool)

(assert (=> b!6765919 (= c!1256170 ((_ is Cons!65948) (exprs!6475 (h!72397 zl!343))))))

(declare-fun b!6765920 () Bool)

(assert (=> b!6765920 (= e!4085217 e!4085215)))

(declare-fun c!1256169 () Bool)

(declare-fun tail!12687 (List!66072) List!66072)

(assert (=> b!6765920 (= c!1256169 (isEmpty!38309 (tail!12687 (exprs!6475 (h!72397 zl!343)))))))

(declare-fun b!6765921 () Bool)

(assert (=> b!6765921 (= e!4085216 (Concat!25436 (h!72396 (exprs!6475 (h!72397 zl!343))) (generalisedConcat!2188 (t!379779 (exprs!6475 (h!72397 zl!343))))))))

(declare-fun b!6765922 () Bool)

(declare-fun isConcat!1476 (Regex!16591) Bool)

(assert (=> b!6765922 (= e!4085215 (isConcat!1476 lt!2442708))))

(declare-fun b!6765923 () Bool)

(declare-fun isEmptyExpr!1953 (Regex!16591) Bool)

(assert (=> b!6765923 (= e!4085217 (isEmptyExpr!1953 lt!2442708))))

(declare-fun b!6765924 () Bool)

(declare-fun e!4085213 () Bool)

(assert (=> b!6765924 (= e!4085213 (isEmpty!38309 (t!379779 (exprs!6475 (h!72397 zl!343)))))))

(assert (=> d!2125361 e!4085212))

(declare-fun res!2766434 () Bool)

(assert (=> d!2125361 (=> (not res!2766434) (not e!4085212))))

(assert (=> d!2125361 (= res!2766434 (validRegex!8327 lt!2442708))))

(assert (=> d!2125361 (= lt!2442708 e!4085214)))

(declare-fun c!1256168 () Bool)

(assert (=> d!2125361 (= c!1256168 e!4085213)))

(declare-fun res!2766433 () Bool)

(assert (=> d!2125361 (=> (not res!2766433) (not e!4085213))))

(assert (=> d!2125361 (= res!2766433 ((_ is Cons!65948) (exprs!6475 (h!72397 zl!343))))))

(assert (=> d!2125361 (forall!15787 (exprs!6475 (h!72397 zl!343)) lambda!380574)))

(assert (=> d!2125361 (= (generalisedConcat!2188 (exprs!6475 (h!72397 zl!343))) lt!2442708)))

(declare-fun b!6765925 () Bool)

(assert (=> b!6765925 (= e!4085216 EmptyExpr!16591)))

(assert (= (and d!2125361 res!2766433) b!6765924))

(assert (= (and d!2125361 c!1256168) b!6765916))

(assert (= (and d!2125361 (not c!1256168)) b!6765919))

(assert (= (and b!6765919 c!1256170) b!6765921))

(assert (= (and b!6765919 (not c!1256170)) b!6765925))

(assert (= (and d!2125361 res!2766434) b!6765918))

(assert (= (and b!6765918 c!1256167) b!6765923))

(assert (= (and b!6765918 (not c!1256167)) b!6765920))

(assert (= (and b!6765920 c!1256169) b!6765917))

(assert (= (and b!6765920 (not c!1256169)) b!6765922))

(declare-fun m!7517032 () Bool)

(assert (=> b!6765922 m!7517032))

(declare-fun m!7517034 () Bool)

(assert (=> b!6765923 m!7517034))

(declare-fun m!7517036 () Bool)

(assert (=> b!6765918 m!7517036))

(declare-fun m!7517038 () Bool)

(assert (=> b!6765920 m!7517038))

(assert (=> b!6765920 m!7517038))

(declare-fun m!7517040 () Bool)

(assert (=> b!6765920 m!7517040))

(declare-fun m!7517042 () Bool)

(assert (=> b!6765917 m!7517042))

(declare-fun m!7517044 () Bool)

(assert (=> b!6765924 m!7517044))

(declare-fun m!7517046 () Bool)

(assert (=> d!2125361 m!7517046))

(declare-fun m!7517048 () Bool)

(assert (=> d!2125361 m!7517048))

(declare-fun m!7517050 () Bool)

(assert (=> b!6765921 m!7517050))

(assert (=> b!6765354 d!2125361))

(declare-fun b!6765946 () Bool)

(declare-fun e!4085229 () List!66074)

(assert (=> b!6765946 (= e!4085229 (_2!36869 lt!2442636))))

(declare-fun b!6765949 () Bool)

(declare-fun e!4085228 () Bool)

(declare-fun lt!2442715 () List!66074)

(assert (=> b!6765949 (= e!4085228 (or (not (= (_2!36869 lt!2442636) Nil!65950)) (= lt!2442715 (_1!36869 lt!2442636))))))

(declare-fun b!6765947 () Bool)

(assert (=> b!6765947 (= e!4085229 (Cons!65950 (h!72398 (_1!36869 lt!2442636)) (++!14745 (t!379781 (_1!36869 lt!2442636)) (_2!36869 lt!2442636))))))

(declare-fun b!6765948 () Bool)

(declare-fun res!2766446 () Bool)

(assert (=> b!6765948 (=> (not res!2766446) (not e!4085228))))

(declare-fun size!40628 (List!66074) Int)

(assert (=> b!6765948 (= res!2766446 (= (size!40628 lt!2442715) (+ (size!40628 (_1!36869 lt!2442636)) (size!40628 (_2!36869 lt!2442636)))))))

(declare-fun d!2125383 () Bool)

(assert (=> d!2125383 e!4085228))

(declare-fun res!2766445 () Bool)

(assert (=> d!2125383 (=> (not res!2766445) (not e!4085228))))

(declare-fun content!12835 (List!66074) (InoxSet C!33452))

(assert (=> d!2125383 (= res!2766445 (= (content!12835 lt!2442715) ((_ map or) (content!12835 (_1!36869 lt!2442636)) (content!12835 (_2!36869 lt!2442636)))))))

(assert (=> d!2125383 (= lt!2442715 e!4085229)))

(declare-fun c!1256176 () Bool)

(assert (=> d!2125383 (= c!1256176 ((_ is Nil!65950) (_1!36869 lt!2442636)))))

(assert (=> d!2125383 (= (++!14745 (_1!36869 lt!2442636) (_2!36869 lt!2442636)) lt!2442715)))

(assert (= (and d!2125383 c!1256176) b!6765946))

(assert (= (and d!2125383 (not c!1256176)) b!6765947))

(assert (= (and d!2125383 res!2766445) b!6765948))

(assert (= (and b!6765948 res!2766446) b!6765949))

(declare-fun m!7517066 () Bool)

(assert (=> b!6765947 m!7517066))

(declare-fun m!7517068 () Bool)

(assert (=> b!6765948 m!7517068))

(declare-fun m!7517070 () Bool)

(assert (=> b!6765948 m!7517070))

(declare-fun m!7517072 () Bool)

(assert (=> b!6765948 m!7517072))

(declare-fun m!7517074 () Bool)

(assert (=> d!2125383 m!7517074))

(declare-fun m!7517076 () Bool)

(assert (=> d!2125383 m!7517076))

(declare-fun m!7517078 () Bool)

(assert (=> d!2125383 m!7517078))

(assert (=> b!6765355 d!2125383))

(declare-fun d!2125387 () Bool)

(assert (=> d!2125387 (= (get!22956 lt!2442631) (v!52681 lt!2442631))))

(assert (=> b!6765355 d!2125387))

(declare-fun d!2125391 () Bool)

(assert (=> d!2125391 (= (Exists!3659 lambda!380522) (choose!50417 lambda!380522))))

(declare-fun bs!1800434 () Bool)

(assert (= bs!1800434 d!2125391))

(declare-fun m!7517080 () Bool)

(assert (=> bs!1800434 m!7517080))

(assert (=> b!6765357 d!2125391))

(assert (=> b!6765357 d!2125275))

(declare-fun bs!1800439 () Bool)

(declare-fun d!2125393 () Bool)

(assert (= bs!1800439 (and d!2125393 b!6765810)))

(declare-fun lambda!380583 () Int)

(assert (=> bs!1800439 (not (= lambda!380583 lambda!380568))))

(declare-fun bs!1800440 () Bool)

(assert (= bs!1800440 (and d!2125393 b!6765357)))

(assert (=> bs!1800440 (not (= lambda!380583 lambda!380522))))

(declare-fun bs!1800441 () Bool)

(assert (= bs!1800441 (and d!2125393 b!6765805)))

(assert (=> bs!1800441 (not (= lambda!380583 lambda!380565))))

(assert (=> bs!1800440 (not (= lambda!380583 lambda!380521))))

(assert (=> bs!1800440 (= (= (Star!16591 (reg!16920 r!7292)) r!7292) (= lambda!380583 lambda!380520))))

(assert (=> d!2125393 true))

(assert (=> d!2125393 true))

(declare-fun bs!1800442 () Bool)

(assert (= bs!1800442 d!2125393))

(declare-fun lambda!380586 () Int)

(assert (=> bs!1800442 (not (= lambda!380586 lambda!380583))))

(assert (=> bs!1800439 (not (= lambda!380586 lambda!380568))))

(assert (=> bs!1800440 (not (= lambda!380586 lambda!380522))))

(assert (=> bs!1800441 (= (= (Star!16591 (reg!16920 r!7292)) r!7292) (= lambda!380586 lambda!380565))))

(assert (=> bs!1800440 (= (= (Star!16591 (reg!16920 r!7292)) r!7292) (= lambda!380586 lambda!380521))))

(assert (=> bs!1800440 (not (= lambda!380586 lambda!380520))))

(assert (=> d!2125393 true))

(assert (=> d!2125393 true))

(assert (=> d!2125393 (= (Exists!3659 lambda!380583) (Exists!3659 lambda!380586))))

(declare-fun lt!2442721 () Unit!159873)

(declare-fun choose!50422 (Regex!16591 List!66074) Unit!159873)

(assert (=> d!2125393 (= lt!2442721 (choose!50422 (reg!16920 r!7292) s!2326))))

(assert (=> d!2125393 (validRegex!8327 (reg!16920 r!7292))))

(assert (=> d!2125393 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!750 (reg!16920 r!7292) s!2326) lt!2442721)))

(declare-fun m!7517102 () Bool)

(assert (=> bs!1800442 m!7517102))

(declare-fun m!7517104 () Bool)

(assert (=> bs!1800442 m!7517104))

(declare-fun m!7517106 () Bool)

(assert (=> bs!1800442 m!7517106))

(assert (=> bs!1800442 m!7516838))

(assert (=> b!6765357 d!2125393))

(assert (=> b!6765357 d!2125273))

(declare-fun d!2125397 () Bool)

(assert (=> d!2125397 (= (isEmpty!38306 s!2326) ((_ is Nil!65950) s!2326))))

(assert (=> b!6765357 d!2125397))

(declare-fun bs!1800464 () Bool)

(declare-fun d!2125401 () Bool)

(assert (= bs!1800464 (and d!2125401 d!2125393)))

(declare-fun lambda!380594 () Int)

(assert (=> bs!1800464 (= (= r!7292 (Star!16591 (reg!16920 r!7292))) (= lambda!380594 lambda!380583))))

(declare-fun bs!1800465 () Bool)

(assert (= bs!1800465 (and d!2125401 b!6765810)))

(assert (=> bs!1800465 (not (= lambda!380594 lambda!380568))))

(assert (=> bs!1800464 (not (= lambda!380594 lambda!380586))))

(declare-fun bs!1800466 () Bool)

(assert (= bs!1800466 (and d!2125401 b!6765357)))

(assert (=> bs!1800466 (not (= lambda!380594 lambda!380522))))

(declare-fun bs!1800467 () Bool)

(assert (= bs!1800467 (and d!2125401 b!6765805)))

(assert (=> bs!1800467 (not (= lambda!380594 lambda!380565))))

(assert (=> bs!1800466 (not (= lambda!380594 lambda!380521))))

(assert (=> bs!1800466 (= lambda!380594 lambda!380520)))

(assert (=> d!2125401 true))

(assert (=> d!2125401 true))

(assert (=> d!2125401 true))

(declare-fun lambda!380595 () Int)

(assert (=> bs!1800464 (not (= lambda!380595 lambda!380583))))

(declare-fun bs!1800468 () Bool)

(assert (= bs!1800468 d!2125401))

(assert (=> bs!1800468 (not (= lambda!380595 lambda!380594))))

(assert (=> bs!1800465 (= (and (= (reg!16920 r!7292) (regOne!33694 r!7292)) (= r!7292 (regTwo!33694 r!7292))) (= lambda!380595 lambda!380568))))

(assert (=> bs!1800464 (not (= lambda!380595 lambda!380586))))

(assert (=> bs!1800466 (= lambda!380595 lambda!380522)))

(assert (=> bs!1800467 (not (= lambda!380595 lambda!380565))))

(assert (=> bs!1800466 (not (= lambda!380595 lambda!380521))))

(assert (=> bs!1800466 (not (= lambda!380595 lambda!380520))))

(assert (=> d!2125401 true))

(assert (=> d!2125401 true))

(assert (=> d!2125401 true))

(assert (=> d!2125401 (= (Exists!3659 lambda!380594) (Exists!3659 lambda!380595))))

(declare-fun lt!2442730 () Unit!159873)

(declare-fun choose!50423 (Regex!16591 Regex!16591 List!66074) Unit!159873)

(assert (=> d!2125401 (= lt!2442730 (choose!50423 (reg!16920 r!7292) r!7292 s!2326))))

(assert (=> d!2125401 (validRegex!8327 (reg!16920 r!7292))))

(assert (=> d!2125401 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2186 (reg!16920 r!7292) r!7292 s!2326) lt!2442730)))

(declare-fun m!7517146 () Bool)

(assert (=> bs!1800468 m!7517146))

(declare-fun m!7517148 () Bool)

(assert (=> bs!1800468 m!7517148))

(declare-fun m!7517150 () Bool)

(assert (=> bs!1800468 m!7517150))

(assert (=> bs!1800468 m!7516838))

(assert (=> b!6765357 d!2125401))

(declare-fun d!2125421 () Bool)

(declare-fun isEmpty!38310 (Option!16478) Bool)

(assert (=> d!2125421 (= (isDefined!13181 lt!2442631) (not (isEmpty!38310 lt!2442631)))))

(declare-fun bs!1800473 () Bool)

(assert (= bs!1800473 d!2125421))

(declare-fun m!7517152 () Bool)

(assert (=> bs!1800473 m!7517152))

(assert (=> b!6765357 d!2125421))

(declare-fun b!6766106 () Bool)

(declare-fun e!4085309 () Bool)

(assert (=> b!6766106 (= e!4085309 (matchR!8774 r!7292 s!2326))))

(declare-fun b!6766107 () Bool)

(declare-fun res!2766494 () Bool)

(declare-fun e!4085313 () Bool)

(assert (=> b!6766107 (=> (not res!2766494) (not e!4085313))))

(declare-fun lt!2442739 () Option!16478)

(assert (=> b!6766107 (= res!2766494 (matchR!8774 r!7292 (_2!36869 (get!22956 lt!2442739))))))

(declare-fun b!6766108 () Bool)

(declare-fun res!2766493 () Bool)

(assert (=> b!6766108 (=> (not res!2766493) (not e!4085313))))

(assert (=> b!6766108 (= res!2766493 (matchR!8774 (reg!16920 r!7292) (_1!36869 (get!22956 lt!2442739))))))

(declare-fun d!2125423 () Bool)

(declare-fun e!4085311 () Bool)

(assert (=> d!2125423 e!4085311))

(declare-fun res!2766495 () Bool)

(assert (=> d!2125423 (=> res!2766495 e!4085311)))

(assert (=> d!2125423 (= res!2766495 e!4085313)))

(declare-fun res!2766497 () Bool)

(assert (=> d!2125423 (=> (not res!2766497) (not e!4085313))))

(assert (=> d!2125423 (= res!2766497 (isDefined!13181 lt!2442739))))

(declare-fun e!4085312 () Option!16478)

(assert (=> d!2125423 (= lt!2442739 e!4085312)))

(declare-fun c!1256206 () Bool)

(assert (=> d!2125423 (= c!1256206 e!4085309)))

(declare-fun res!2766496 () Bool)

(assert (=> d!2125423 (=> (not res!2766496) (not e!4085309))))

(assert (=> d!2125423 (= res!2766496 (matchR!8774 (reg!16920 r!7292) Nil!65950))))

(assert (=> d!2125423 (validRegex!8327 (reg!16920 r!7292))))

(assert (=> d!2125423 (= (findConcatSeparation!2892 (reg!16920 r!7292) r!7292 Nil!65950 s!2326 s!2326) lt!2442739)))

(declare-fun b!6766109 () Bool)

(assert (=> b!6766109 (= e!4085311 (not (isDefined!13181 lt!2442739)))))

(declare-fun b!6766110 () Bool)

(assert (=> b!6766110 (= e!4085313 (= (++!14745 (_1!36869 (get!22956 lt!2442739)) (_2!36869 (get!22956 lt!2442739))) s!2326))))

(declare-fun b!6766111 () Bool)

(declare-fun lt!2442738 () Unit!159873)

(declare-fun lt!2442737 () Unit!159873)

(assert (=> b!6766111 (= lt!2442738 lt!2442737)))

(assert (=> b!6766111 (= (++!14745 (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) Nil!65950)) (t!379781 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2716 (List!66074 C!33452 List!66074 List!66074) Unit!159873)

(assert (=> b!6766111 (= lt!2442737 (lemmaMoveElementToOtherListKeepsConcatEq!2716 Nil!65950 (h!72398 s!2326) (t!379781 s!2326) s!2326))))

(declare-fun e!4085310 () Option!16478)

(assert (=> b!6766111 (= e!4085310 (findConcatSeparation!2892 (reg!16920 r!7292) r!7292 (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) Nil!65950)) (t!379781 s!2326) s!2326))))

(declare-fun b!6766112 () Bool)

(assert (=> b!6766112 (= e!4085312 e!4085310)))

(declare-fun c!1256205 () Bool)

(assert (=> b!6766112 (= c!1256205 ((_ is Nil!65950) s!2326))))

(declare-fun b!6766113 () Bool)

(assert (=> b!6766113 (= e!4085310 None!16477)))

(declare-fun b!6766114 () Bool)

(assert (=> b!6766114 (= e!4085312 (Some!16477 (tuple2!67133 Nil!65950 s!2326)))))

(assert (= (and d!2125423 res!2766496) b!6766106))

(assert (= (and d!2125423 c!1256206) b!6766114))

(assert (= (and d!2125423 (not c!1256206)) b!6766112))

(assert (= (and b!6766112 c!1256205) b!6766113))

(assert (= (and b!6766112 (not c!1256205)) b!6766111))

(assert (= (and d!2125423 res!2766497) b!6766108))

(assert (= (and b!6766108 res!2766493) b!6766107))

(assert (= (and b!6766107 res!2766494) b!6766110))

(assert (= (and d!2125423 (not res!2766495)) b!6766109))

(declare-fun m!7517154 () Bool)

(assert (=> d!2125423 m!7517154))

(declare-fun m!7517156 () Bool)

(assert (=> d!2125423 m!7517156))

(assert (=> d!2125423 m!7516838))

(declare-fun m!7517158 () Bool)

(assert (=> b!6766108 m!7517158))

(declare-fun m!7517160 () Bool)

(assert (=> b!6766108 m!7517160))

(assert (=> b!6766107 m!7517158))

(declare-fun m!7517162 () Bool)

(assert (=> b!6766107 m!7517162))

(assert (=> b!6766106 m!7516562))

(declare-fun m!7517164 () Bool)

(assert (=> b!6766111 m!7517164))

(assert (=> b!6766111 m!7517164))

(declare-fun m!7517166 () Bool)

(assert (=> b!6766111 m!7517166))

(declare-fun m!7517168 () Bool)

(assert (=> b!6766111 m!7517168))

(assert (=> b!6766111 m!7517164))

(declare-fun m!7517170 () Bool)

(assert (=> b!6766111 m!7517170))

(assert (=> b!6766109 m!7517154))

(assert (=> b!6766110 m!7517158))

(declare-fun m!7517172 () Bool)

(assert (=> b!6766110 m!7517172))

(assert (=> b!6765357 d!2125423))

(declare-fun bs!1800474 () Bool)

(declare-fun d!2125425 () Bool)

(assert (= bs!1800474 (and d!2125425 d!2125393)))

(declare-fun lambda!380598 () Int)

(assert (=> bs!1800474 (= (= r!7292 (Star!16591 (reg!16920 r!7292))) (= lambda!380598 lambda!380583))))

(declare-fun bs!1800475 () Bool)

(assert (= bs!1800475 (and d!2125425 d!2125401)))

(assert (=> bs!1800475 (= lambda!380598 lambda!380594)))

(declare-fun bs!1800476 () Bool)

(assert (= bs!1800476 (and d!2125425 b!6765810)))

(assert (=> bs!1800476 (not (= lambda!380598 lambda!380568))))

(assert (=> bs!1800474 (not (= lambda!380598 lambda!380586))))

(declare-fun bs!1800477 () Bool)

(assert (= bs!1800477 (and d!2125425 b!6765357)))

(assert (=> bs!1800477 (not (= lambda!380598 lambda!380522))))

(declare-fun bs!1800478 () Bool)

(assert (= bs!1800478 (and d!2125425 b!6765805)))

(assert (=> bs!1800478 (not (= lambda!380598 lambda!380565))))

(assert (=> bs!1800475 (not (= lambda!380598 lambda!380595))))

(assert (=> bs!1800477 (not (= lambda!380598 lambda!380521))))

(assert (=> bs!1800477 (= lambda!380598 lambda!380520)))

(assert (=> d!2125425 true))

(assert (=> d!2125425 true))

(assert (=> d!2125425 true))

(assert (=> d!2125425 (= (isDefined!13181 (findConcatSeparation!2892 (reg!16920 r!7292) r!7292 Nil!65950 s!2326 s!2326)) (Exists!3659 lambda!380598))))

(declare-fun lt!2442742 () Unit!159873)

(declare-fun choose!50424 (Regex!16591 Regex!16591 List!66074) Unit!159873)

(assert (=> d!2125425 (= lt!2442742 (choose!50424 (reg!16920 r!7292) r!7292 s!2326))))

(assert (=> d!2125425 (validRegex!8327 (reg!16920 r!7292))))

(assert (=> d!2125425 (= (lemmaFindConcatSeparationEquivalentToExists!2656 (reg!16920 r!7292) r!7292 s!2326) lt!2442742)))

(declare-fun bs!1800479 () Bool)

(assert (= bs!1800479 d!2125425))

(declare-fun m!7517174 () Bool)

(assert (=> bs!1800479 m!7517174))

(assert (=> bs!1800479 m!7516552))

(declare-fun m!7517176 () Bool)

(assert (=> bs!1800479 m!7517176))

(assert (=> bs!1800479 m!7516552))

(declare-fun m!7517178 () Bool)

(assert (=> bs!1800479 m!7517178))

(assert (=> bs!1800479 m!7516838))

(assert (=> b!6765357 d!2125425))

(declare-fun d!2125427 () Bool)

(declare-fun lt!2442743 () Regex!16591)

(assert (=> d!2125427 (validRegex!8327 lt!2442743)))

(assert (=> d!2125427 (= lt!2442743 (generalisedUnion!2435 (unfocusZipperList!2012 (Cons!65949 lt!2442623 Nil!65949))))))

(assert (=> d!2125427 (= (unfocusZipper!2333 (Cons!65949 lt!2442623 Nil!65949)) lt!2442743)))

(declare-fun bs!1800480 () Bool)

(assert (= bs!1800480 d!2125427))

(declare-fun m!7517180 () Bool)

(assert (=> bs!1800480 m!7517180))

(declare-fun m!7517182 () Bool)

(assert (=> bs!1800480 m!7517182))

(assert (=> bs!1800480 m!7517182))

(declare-fun m!7517184 () Bool)

(assert (=> bs!1800480 m!7517184))

(assert (=> b!6765356 d!2125427))

(declare-fun d!2125429 () Bool)

(declare-fun lt!2442744 () Regex!16591)

(assert (=> d!2125429 (validRegex!8327 lt!2442744)))

(assert (=> d!2125429 (= lt!2442744 (generalisedUnion!2435 (unfocusZipperList!2012 (Cons!65949 lt!2442639 Nil!65949))))))

(assert (=> d!2125429 (= (unfocusZipper!2333 (Cons!65949 lt!2442639 Nil!65949)) lt!2442744)))

(declare-fun bs!1800481 () Bool)

(assert (= bs!1800481 d!2125429))

(declare-fun m!7517186 () Bool)

(assert (=> bs!1800481 m!7517186))

(declare-fun m!7517188 () Bool)

(assert (=> bs!1800481 m!7517188))

(assert (=> bs!1800481 m!7517188))

(declare-fun m!7517190 () Bool)

(assert (=> bs!1800481 m!7517190))

(assert (=> b!6765338 d!2125429))

(declare-fun bs!1800482 () Bool)

(declare-fun d!2125431 () Bool)

(assert (= bs!1800482 (and d!2125431 d!2125239)))

(declare-fun lambda!380601 () Int)

(assert (=> bs!1800482 (= lambda!380601 lambda!380526)))

(declare-fun bs!1800483 () Bool)

(assert (= bs!1800483 (and d!2125431 d!2125313)))

(assert (=> bs!1800483 (= lambda!380601 lambda!380553)))

(declare-fun bs!1800484 () Bool)

(assert (= bs!1800484 (and d!2125431 d!2125361)))

(assert (=> bs!1800484 (= lambda!380601 lambda!380574)))

(declare-fun b!6766139 () Bool)

(declare-fun e!4085330 () Bool)

(assert (=> b!6766139 (= e!4085330 (isEmpty!38309 (t!379779 (unfocusZipperList!2012 zl!343))))))

(declare-fun b!6766140 () Bool)

(declare-fun e!4085328 () Bool)

(declare-fun lt!2442747 () Regex!16591)

(assert (=> b!6766140 (= e!4085328 (= lt!2442747 (head!13602 (unfocusZipperList!2012 zl!343))))))

(declare-fun b!6766141 () Bool)

(declare-fun e!4085332 () Bool)

(declare-fun e!4085331 () Bool)

(assert (=> b!6766141 (= e!4085332 e!4085331)))

(declare-fun c!1256216 () Bool)

(assert (=> b!6766141 (= c!1256216 (isEmpty!38309 (unfocusZipperList!2012 zl!343)))))

(declare-fun b!6766142 () Bool)

(declare-fun e!4085329 () Regex!16591)

(assert (=> b!6766142 (= e!4085329 (Union!16591 (h!72396 (unfocusZipperList!2012 zl!343)) (generalisedUnion!2435 (t!379779 (unfocusZipperList!2012 zl!343)))))))

(declare-fun b!6766143 () Bool)

(declare-fun e!4085333 () Regex!16591)

(assert (=> b!6766143 (= e!4085333 e!4085329)))

(declare-fun c!1256215 () Bool)

(assert (=> b!6766143 (= c!1256215 ((_ is Cons!65948) (unfocusZipperList!2012 zl!343)))))

(declare-fun b!6766144 () Bool)

(assert (=> b!6766144 (= e!4085331 e!4085328)))

(declare-fun c!1256218 () Bool)

(assert (=> b!6766144 (= c!1256218 (isEmpty!38309 (tail!12687 (unfocusZipperList!2012 zl!343))))))

(assert (=> d!2125431 e!4085332))

(declare-fun res!2766507 () Bool)

(assert (=> d!2125431 (=> (not res!2766507) (not e!4085332))))

(assert (=> d!2125431 (= res!2766507 (validRegex!8327 lt!2442747))))

(assert (=> d!2125431 (= lt!2442747 e!4085333)))

(declare-fun c!1256217 () Bool)

(assert (=> d!2125431 (= c!1256217 e!4085330)))

(declare-fun res!2766506 () Bool)

(assert (=> d!2125431 (=> (not res!2766506) (not e!4085330))))

(assert (=> d!2125431 (= res!2766506 ((_ is Cons!65948) (unfocusZipperList!2012 zl!343)))))

(assert (=> d!2125431 (forall!15787 (unfocusZipperList!2012 zl!343) lambda!380601)))

(assert (=> d!2125431 (= (generalisedUnion!2435 (unfocusZipperList!2012 zl!343)) lt!2442747)))

(declare-fun b!6766145 () Bool)

(assert (=> b!6766145 (= e!4085329 EmptyLang!16591)))

(declare-fun b!6766146 () Bool)

(declare-fun isEmptyLang!1961 (Regex!16591) Bool)

(assert (=> b!6766146 (= e!4085331 (isEmptyLang!1961 lt!2442747))))

(declare-fun b!6766147 () Bool)

(declare-fun isUnion!1391 (Regex!16591) Bool)

(assert (=> b!6766147 (= e!4085328 (isUnion!1391 lt!2442747))))

(declare-fun b!6766148 () Bool)

(assert (=> b!6766148 (= e!4085333 (h!72396 (unfocusZipperList!2012 zl!343)))))

(assert (= (and d!2125431 res!2766506) b!6766139))

(assert (= (and d!2125431 c!1256217) b!6766148))

(assert (= (and d!2125431 (not c!1256217)) b!6766143))

(assert (= (and b!6766143 c!1256215) b!6766142))

(assert (= (and b!6766143 (not c!1256215)) b!6766145))

(assert (= (and d!2125431 res!2766507) b!6766141))

(assert (= (and b!6766141 c!1256216) b!6766146))

(assert (= (and b!6766141 (not c!1256216)) b!6766144))

(assert (= (and b!6766144 c!1256218) b!6766140))

(assert (= (and b!6766144 (not c!1256218)) b!6766147))

(declare-fun m!7517192 () Bool)

(assert (=> b!6766142 m!7517192))

(assert (=> b!6766140 m!7516600))

(declare-fun m!7517194 () Bool)

(assert (=> b!6766140 m!7517194))

(declare-fun m!7517196 () Bool)

(assert (=> b!6766147 m!7517196))

(declare-fun m!7517198 () Bool)

(assert (=> b!6766139 m!7517198))

(declare-fun m!7517200 () Bool)

(assert (=> d!2125431 m!7517200))

(assert (=> d!2125431 m!7516600))

(declare-fun m!7517202 () Bool)

(assert (=> d!2125431 m!7517202))

(declare-fun m!7517204 () Bool)

(assert (=> b!6766146 m!7517204))

(assert (=> b!6766141 m!7516600))

(declare-fun m!7517206 () Bool)

(assert (=> b!6766141 m!7517206))

(assert (=> b!6766144 m!7516600))

(declare-fun m!7517208 () Bool)

(assert (=> b!6766144 m!7517208))

(assert (=> b!6766144 m!7517208))

(declare-fun m!7517210 () Bool)

(assert (=> b!6766144 m!7517210))

(assert (=> b!6765337 d!2125431))

(declare-fun bs!1800485 () Bool)

(declare-fun d!2125433 () Bool)

(assert (= bs!1800485 (and d!2125433 d!2125239)))

(declare-fun lambda!380604 () Int)

(assert (=> bs!1800485 (= lambda!380604 lambda!380526)))

(declare-fun bs!1800486 () Bool)

(assert (= bs!1800486 (and d!2125433 d!2125313)))

(assert (=> bs!1800486 (= lambda!380604 lambda!380553)))

(declare-fun bs!1800487 () Bool)

(assert (= bs!1800487 (and d!2125433 d!2125361)))

(assert (=> bs!1800487 (= lambda!380604 lambda!380574)))

(declare-fun bs!1800488 () Bool)

(assert (= bs!1800488 (and d!2125433 d!2125431)))

(assert (=> bs!1800488 (= lambda!380604 lambda!380601)))

(declare-fun lt!2442750 () List!66072)

(assert (=> d!2125433 (forall!15787 lt!2442750 lambda!380604)))

(declare-fun e!4085336 () List!66072)

(assert (=> d!2125433 (= lt!2442750 e!4085336)))

(declare-fun c!1256221 () Bool)

(assert (=> d!2125433 (= c!1256221 ((_ is Cons!65949) zl!343))))

(assert (=> d!2125433 (= (unfocusZipperList!2012 zl!343) lt!2442750)))

(declare-fun b!6766153 () Bool)

(assert (=> b!6766153 (= e!4085336 (Cons!65948 (generalisedConcat!2188 (exprs!6475 (h!72397 zl!343))) (unfocusZipperList!2012 (t!379780 zl!343))))))

(declare-fun b!6766154 () Bool)

(assert (=> b!6766154 (= e!4085336 Nil!65948)))

(assert (= (and d!2125433 c!1256221) b!6766153))

(assert (= (and d!2125433 (not c!1256221)) b!6766154))

(declare-fun m!7517212 () Bool)

(assert (=> d!2125433 m!7517212))

(assert (=> b!6766153 m!7516650))

(declare-fun m!7517214 () Bool)

(assert (=> b!6766153 m!7517214))

(assert (=> b!6765337 d!2125433))

(declare-fun bs!1800489 () Bool)

(declare-fun b!6766157 () Bool)

(assert (= bs!1800489 (and b!6766157 d!2125393)))

(declare-fun lambda!380605 () Int)

(assert (=> bs!1800489 (not (= lambda!380605 lambda!380583))))

(declare-fun bs!1800490 () Bool)

(assert (= bs!1800490 (and b!6766157 d!2125401)))

(assert (=> bs!1800490 (not (= lambda!380605 lambda!380594))))

(declare-fun bs!1800491 () Bool)

(assert (= bs!1800491 (and b!6766157 b!6765810)))

(assert (=> bs!1800491 (not (= lambda!380605 lambda!380568))))

(assert (=> bs!1800489 (= (and (= (reg!16920 lt!2442635) (reg!16920 r!7292)) (= lt!2442635 (Star!16591 (reg!16920 r!7292)))) (= lambda!380605 lambda!380586))))

(declare-fun bs!1800492 () Bool)

(assert (= bs!1800492 (and b!6766157 b!6765357)))

(assert (=> bs!1800492 (not (= lambda!380605 lambda!380522))))

(declare-fun bs!1800493 () Bool)

(assert (= bs!1800493 (and b!6766157 b!6765805)))

(assert (=> bs!1800493 (= (and (= (reg!16920 lt!2442635) (reg!16920 r!7292)) (= lt!2442635 r!7292)) (= lambda!380605 lambda!380565))))

(declare-fun bs!1800494 () Bool)

(assert (= bs!1800494 (and b!6766157 d!2125425)))

(assert (=> bs!1800494 (not (= lambda!380605 lambda!380598))))

(assert (=> bs!1800490 (not (= lambda!380605 lambda!380595))))

(assert (=> bs!1800492 (= (and (= (reg!16920 lt!2442635) (reg!16920 r!7292)) (= lt!2442635 r!7292)) (= lambda!380605 lambda!380521))))

(assert (=> bs!1800492 (not (= lambda!380605 lambda!380520))))

(assert (=> b!6766157 true))

(assert (=> b!6766157 true))

(declare-fun bs!1800495 () Bool)

(declare-fun b!6766162 () Bool)

(assert (= bs!1800495 (and b!6766162 d!2125393)))

(declare-fun lambda!380606 () Int)

(assert (=> bs!1800495 (not (= lambda!380606 lambda!380583))))

(declare-fun bs!1800496 () Bool)

(assert (= bs!1800496 (and b!6766162 b!6765810)))

(assert (=> bs!1800496 (= (and (= (regOne!33694 lt!2442635) (regOne!33694 r!7292)) (= (regTwo!33694 lt!2442635) (regTwo!33694 r!7292))) (= lambda!380606 lambda!380568))))

(assert (=> bs!1800495 (not (= lambda!380606 lambda!380586))))

(declare-fun bs!1800497 () Bool)

(assert (= bs!1800497 (and b!6766162 b!6765357)))

(assert (=> bs!1800497 (= (and (= (regOne!33694 lt!2442635) (reg!16920 r!7292)) (= (regTwo!33694 lt!2442635) r!7292)) (= lambda!380606 lambda!380522))))

(declare-fun bs!1800498 () Bool)

(assert (= bs!1800498 (and b!6766162 b!6765805)))

(assert (=> bs!1800498 (not (= lambda!380606 lambda!380565))))

(declare-fun bs!1800499 () Bool)

(assert (= bs!1800499 (and b!6766162 d!2125425)))

(assert (=> bs!1800499 (not (= lambda!380606 lambda!380598))))

(declare-fun bs!1800500 () Bool)

(assert (= bs!1800500 (and b!6766162 d!2125401)))

(assert (=> bs!1800500 (= (and (= (regOne!33694 lt!2442635) (reg!16920 r!7292)) (= (regTwo!33694 lt!2442635) r!7292)) (= lambda!380606 lambda!380595))))

(declare-fun bs!1800501 () Bool)

(assert (= bs!1800501 (and b!6766162 b!6766157)))

(assert (=> bs!1800501 (not (= lambda!380606 lambda!380605))))

(assert (=> bs!1800500 (not (= lambda!380606 lambda!380594))))

(assert (=> bs!1800497 (not (= lambda!380606 lambda!380521))))

(assert (=> bs!1800497 (not (= lambda!380606 lambda!380520))))

(assert (=> b!6766162 true))

(assert (=> b!6766162 true))

(declare-fun b!6766155 () Bool)

(declare-fun e!4085340 () Bool)

(declare-fun call!612999 () Bool)

(assert (=> b!6766155 (= e!4085340 call!612999)))

(declare-fun call!613000 () Bool)

(declare-fun bm!612994 () Bool)

(declare-fun c!1256222 () Bool)

(assert (=> bm!612994 (= call!613000 (Exists!3659 (ite c!1256222 lambda!380605 lambda!380606)))))

(declare-fun b!6766156 () Bool)

(declare-fun e!4085338 () Bool)

(declare-fun e!4085343 () Bool)

(assert (=> b!6766156 (= e!4085338 e!4085343)))

(declare-fun res!2766509 () Bool)

(assert (=> b!6766156 (= res!2766509 (matchRSpec!3692 (regOne!33695 lt!2442635) s!2326))))

(assert (=> b!6766156 (=> res!2766509 e!4085343)))

(declare-fun e!4085337 () Bool)

(assert (=> b!6766157 (= e!4085337 call!613000)))

(declare-fun b!6766158 () Bool)

(declare-fun e!4085342 () Bool)

(assert (=> b!6766158 (= e!4085340 e!4085342)))

(declare-fun res!2766508 () Bool)

(assert (=> b!6766158 (= res!2766508 (not ((_ is EmptyLang!16591) lt!2442635)))))

(assert (=> b!6766158 (=> (not res!2766508) (not e!4085342))))

(declare-fun b!6766159 () Bool)

(declare-fun e!4085339 () Bool)

(assert (=> b!6766159 (= e!4085339 (= s!2326 (Cons!65950 (c!1256003 lt!2442635) Nil!65950)))))

(declare-fun b!6766160 () Bool)

(assert (=> b!6766160 (= e!4085343 (matchRSpec!3692 (regTwo!33695 lt!2442635) s!2326))))

(declare-fun d!2125435 () Bool)

(declare-fun c!1256224 () Bool)

(assert (=> d!2125435 (= c!1256224 ((_ is EmptyExpr!16591) lt!2442635))))

(assert (=> d!2125435 (= (matchRSpec!3692 lt!2442635 s!2326) e!4085340)))

(declare-fun bm!612995 () Bool)

(assert (=> bm!612995 (= call!612999 (isEmpty!38306 s!2326))))

(declare-fun b!6766161 () Bool)

(declare-fun c!1256223 () Bool)

(assert (=> b!6766161 (= c!1256223 ((_ is Union!16591) lt!2442635))))

(assert (=> b!6766161 (= e!4085339 e!4085338)))

(declare-fun e!4085341 () Bool)

(assert (=> b!6766162 (= e!4085341 call!613000)))

(declare-fun b!6766163 () Bool)

(declare-fun res!2766510 () Bool)

(assert (=> b!6766163 (=> res!2766510 e!4085337)))

(assert (=> b!6766163 (= res!2766510 call!612999)))

(assert (=> b!6766163 (= e!4085341 e!4085337)))

(declare-fun b!6766164 () Bool)

(declare-fun c!1256225 () Bool)

(assert (=> b!6766164 (= c!1256225 ((_ is ElementMatch!16591) lt!2442635))))

(assert (=> b!6766164 (= e!4085342 e!4085339)))

(declare-fun b!6766165 () Bool)

(assert (=> b!6766165 (= e!4085338 e!4085341)))

(assert (=> b!6766165 (= c!1256222 ((_ is Star!16591) lt!2442635))))

(assert (= (and d!2125435 c!1256224) b!6766155))

(assert (= (and d!2125435 (not c!1256224)) b!6766158))

(assert (= (and b!6766158 res!2766508) b!6766164))

(assert (= (and b!6766164 c!1256225) b!6766159))

(assert (= (and b!6766164 (not c!1256225)) b!6766161))

(assert (= (and b!6766161 c!1256223) b!6766156))

(assert (= (and b!6766161 (not c!1256223)) b!6766165))

(assert (= (and b!6766156 (not res!2766509)) b!6766160))

(assert (= (and b!6766165 c!1256222) b!6766163))

(assert (= (and b!6766165 (not c!1256222)) b!6766162))

(assert (= (and b!6766163 (not res!2766510)) b!6766157))

(assert (= (or b!6766157 b!6766162) bm!612994))

(assert (= (or b!6766155 b!6766163) bm!612995))

(declare-fun m!7517216 () Bool)

(assert (=> bm!612994 m!7517216))

(declare-fun m!7517218 () Bool)

(assert (=> b!6766156 m!7517218))

(declare-fun m!7517220 () Bool)

(assert (=> b!6766160 m!7517220))

(assert (=> bm!612995 m!7516556))

(assert (=> b!6765359 d!2125435))

(declare-fun b!6766166 () Bool)

(declare-fun e!4085346 () Bool)

(assert (=> b!6766166 (= e!4085346 (nullable!6574 lt!2442635))))

(declare-fun b!6766167 () Bool)

(declare-fun e!4085347 () Bool)

(declare-fun e!4085348 () Bool)

(assert (=> b!6766167 (= e!4085347 e!4085348)))

(declare-fun c!1256226 () Bool)

(assert (=> b!6766167 (= c!1256226 ((_ is EmptyLang!16591) lt!2442635))))

(declare-fun b!6766168 () Bool)

(assert (=> b!6766168 (= e!4085346 (matchR!8774 (derivativeStep!5258 lt!2442635 (head!13599 s!2326)) (tail!12684 s!2326)))))

(declare-fun b!6766169 () Bool)

(declare-fun e!4085350 () Bool)

(assert (=> b!6766169 (= e!4085350 (= (head!13599 s!2326) (c!1256003 lt!2442635)))))

(declare-fun b!6766171 () Bool)

(declare-fun res!2766515 () Bool)

(declare-fun e!4085344 () Bool)

(assert (=> b!6766171 (=> res!2766515 e!4085344)))

(assert (=> b!6766171 (= res!2766515 (not (isEmpty!38306 (tail!12684 s!2326))))))

(declare-fun b!6766172 () Bool)

(declare-fun e!4085349 () Bool)

(assert (=> b!6766172 (= e!4085349 e!4085344)))

(declare-fun res!2766511 () Bool)

(assert (=> b!6766172 (=> res!2766511 e!4085344)))

(declare-fun call!613001 () Bool)

(assert (=> b!6766172 (= res!2766511 call!613001)))

(declare-fun b!6766173 () Bool)

(assert (=> b!6766173 (= e!4085344 (not (= (head!13599 s!2326) (c!1256003 lt!2442635))))))

(declare-fun b!6766174 () Bool)

(declare-fun res!2766518 () Bool)

(declare-fun e!4085345 () Bool)

(assert (=> b!6766174 (=> res!2766518 e!4085345)))

(assert (=> b!6766174 (= res!2766518 e!4085350)))

(declare-fun res!2766516 () Bool)

(assert (=> b!6766174 (=> (not res!2766516) (not e!4085350))))

(declare-fun lt!2442751 () Bool)

(assert (=> b!6766174 (= res!2766516 lt!2442751)))

(declare-fun b!6766175 () Bool)

(declare-fun res!2766513 () Bool)

(assert (=> b!6766175 (=> (not res!2766513) (not e!4085350))))

(assert (=> b!6766175 (= res!2766513 (not call!613001))))

(declare-fun b!6766170 () Bool)

(assert (=> b!6766170 (= e!4085345 e!4085349)))

(declare-fun res!2766512 () Bool)

(assert (=> b!6766170 (=> (not res!2766512) (not e!4085349))))

(assert (=> b!6766170 (= res!2766512 (not lt!2442751))))

(declare-fun d!2125437 () Bool)

(assert (=> d!2125437 e!4085347))

(declare-fun c!1256228 () Bool)

(assert (=> d!2125437 (= c!1256228 ((_ is EmptyExpr!16591) lt!2442635))))

(assert (=> d!2125437 (= lt!2442751 e!4085346)))

(declare-fun c!1256227 () Bool)

(assert (=> d!2125437 (= c!1256227 (isEmpty!38306 s!2326))))

(assert (=> d!2125437 (validRegex!8327 lt!2442635)))

(assert (=> d!2125437 (= (matchR!8774 lt!2442635 s!2326) lt!2442751)))

(declare-fun bm!612996 () Bool)

(assert (=> bm!612996 (= call!613001 (isEmpty!38306 s!2326))))

(declare-fun b!6766176 () Bool)

(declare-fun res!2766517 () Bool)

(assert (=> b!6766176 (=> res!2766517 e!4085345)))

(assert (=> b!6766176 (= res!2766517 (not ((_ is ElementMatch!16591) lt!2442635)))))

(assert (=> b!6766176 (= e!4085348 e!4085345)))

(declare-fun b!6766177 () Bool)

(assert (=> b!6766177 (= e!4085347 (= lt!2442751 call!613001))))

(declare-fun b!6766178 () Bool)

(declare-fun res!2766514 () Bool)

(assert (=> b!6766178 (=> (not res!2766514) (not e!4085350))))

(assert (=> b!6766178 (= res!2766514 (isEmpty!38306 (tail!12684 s!2326)))))

(declare-fun b!6766179 () Bool)

(assert (=> b!6766179 (= e!4085348 (not lt!2442751))))

(assert (= (and d!2125437 c!1256227) b!6766166))

(assert (= (and d!2125437 (not c!1256227)) b!6766168))

(assert (= (and d!2125437 c!1256228) b!6766177))

(assert (= (and d!2125437 (not c!1256228)) b!6766167))

(assert (= (and b!6766167 c!1256226) b!6766179))

(assert (= (and b!6766167 (not c!1256226)) b!6766176))

(assert (= (and b!6766176 (not res!2766517)) b!6766174))

(assert (= (and b!6766174 res!2766516) b!6766175))

(assert (= (and b!6766175 res!2766513) b!6766178))

(assert (= (and b!6766178 res!2766514) b!6766169))

(assert (= (and b!6766174 (not res!2766518)) b!6766170))

(assert (= (and b!6766170 res!2766512) b!6766172))

(assert (= (and b!6766172 (not res!2766511)) b!6766171))

(assert (= (and b!6766171 (not res!2766515)) b!6766173))

(assert (= (or b!6766177 b!6766172 b!6766175) bm!612996))

(assert (=> b!6766168 m!7516714))

(assert (=> b!6766168 m!7516714))

(declare-fun m!7517222 () Bool)

(assert (=> b!6766168 m!7517222))

(assert (=> b!6766168 m!7516718))

(assert (=> b!6766168 m!7517222))

(assert (=> b!6766168 m!7516718))

(declare-fun m!7517224 () Bool)

(assert (=> b!6766168 m!7517224))

(assert (=> d!2125437 m!7516556))

(declare-fun m!7517226 () Bool)

(assert (=> d!2125437 m!7517226))

(assert (=> b!6766169 m!7516714))

(assert (=> bm!612996 m!7516556))

(assert (=> b!6766173 m!7516714))

(declare-fun m!7517228 () Bool)

(assert (=> b!6766166 m!7517228))

(assert (=> b!6766178 m!7516718))

(assert (=> b!6766178 m!7516718))

(assert (=> b!6766178 m!7516966))

(assert (=> b!6766171 m!7516718))

(assert (=> b!6766171 m!7516718))

(assert (=> b!6766171 m!7516966))

(assert (=> b!6765359 d!2125437))

(declare-fun d!2125439 () Bool)

(assert (=> d!2125439 (= (matchR!8774 lt!2442635 s!2326) (matchRSpec!3692 lt!2442635 s!2326))))

(declare-fun lt!2442752 () Unit!159873)

(assert (=> d!2125439 (= lt!2442752 (choose!50421 lt!2442635 s!2326))))

(assert (=> d!2125439 (validRegex!8327 lt!2442635)))

(assert (=> d!2125439 (= (mainMatchTheorem!3692 lt!2442635 s!2326) lt!2442752)))

(declare-fun bs!1800502 () Bool)

(assert (= bs!1800502 d!2125439))

(assert (=> bs!1800502 m!7516578))

(assert (=> bs!1800502 m!7516576))

(declare-fun m!7517230 () Bool)

(assert (=> bs!1800502 m!7517230))

(assert (=> bs!1800502 m!7517226))

(assert (=> b!6765359 d!2125439))

(declare-fun d!2125441 () Bool)

(assert (=> d!2125441 (= (flatMap!2072 z!1189 lambda!380523) (choose!50416 z!1189 lambda!380523))))

(declare-fun bs!1800503 () Bool)

(assert (= bs!1800503 d!2125441))

(declare-fun m!7517232 () Bool)

(assert (=> bs!1800503 m!7517232))

(assert (=> b!6765361 d!2125441))

(declare-fun b!6766180 () Bool)

(declare-fun e!4085353 () (InoxSet Context!11950))

(declare-fun call!613002 () (InoxSet Context!11950))

(assert (=> b!6766180 (= e!4085353 ((_ map or) call!613002 (derivationStepZipperUp!1745 (Context!11951 (t!379779 (exprs!6475 (h!72397 zl!343)))) (h!72398 s!2326))))))

(declare-fun bm!612997 () Bool)

(assert (=> bm!612997 (= call!613002 (derivationStepZipperDown!1819 (h!72396 (exprs!6475 (h!72397 zl!343))) (Context!11951 (t!379779 (exprs!6475 (h!72397 zl!343)))) (h!72398 s!2326)))))

(declare-fun b!6766181 () Bool)

(declare-fun e!4085351 () (InoxSet Context!11950))

(assert (=> b!6766181 (= e!4085351 ((as const (Array Context!11950 Bool)) false))))

(declare-fun b!6766182 () Bool)

(assert (=> b!6766182 (= e!4085351 call!613002)))

(declare-fun b!6766183 () Bool)

(assert (=> b!6766183 (= e!4085353 e!4085351)))

(declare-fun c!1256230 () Bool)

(assert (=> b!6766183 (= c!1256230 ((_ is Cons!65948) (exprs!6475 (h!72397 zl!343))))))

(declare-fun b!6766184 () Bool)

(declare-fun e!4085352 () Bool)

(assert (=> b!6766184 (= e!4085352 (nullable!6574 (h!72396 (exprs!6475 (h!72397 zl!343)))))))

(declare-fun d!2125443 () Bool)

(declare-fun c!1256229 () Bool)

(assert (=> d!2125443 (= c!1256229 e!4085352)))

(declare-fun res!2766519 () Bool)

(assert (=> d!2125443 (=> (not res!2766519) (not e!4085352))))

(assert (=> d!2125443 (= res!2766519 ((_ is Cons!65948) (exprs!6475 (h!72397 zl!343))))))

(assert (=> d!2125443 (= (derivationStepZipperUp!1745 (h!72397 zl!343) (h!72398 s!2326)) e!4085353)))

(assert (= (and d!2125443 res!2766519) b!6766184))

(assert (= (and d!2125443 c!1256229) b!6766180))

(assert (= (and d!2125443 (not c!1256229)) b!6766183))

(assert (= (and b!6766183 c!1256230) b!6766182))

(assert (= (and b!6766183 (not c!1256230)) b!6766181))

(assert (= (or b!6766180 b!6766182) bm!612997))

(declare-fun m!7517234 () Bool)

(assert (=> b!6766180 m!7517234))

(declare-fun m!7517236 () Bool)

(assert (=> bm!612997 m!7517236))

(declare-fun m!7517238 () Bool)

(assert (=> b!6766184 m!7517238))

(assert (=> b!6765361 d!2125443))

(declare-fun d!2125445 () Bool)

(assert (=> d!2125445 (= (flatMap!2072 z!1189 lambda!380523) (dynLambda!26314 lambda!380523 (h!72397 zl!343)))))

(declare-fun lt!2442753 () Unit!159873)

(assert (=> d!2125445 (= lt!2442753 (choose!50415 z!1189 (h!72397 zl!343) lambda!380523))))

(assert (=> d!2125445 (= z!1189 (store ((as const (Array Context!11950 Bool)) false) (h!72397 zl!343) true))))

(assert (=> d!2125445 (= (lemmaFlatMapOnSingletonSet!1598 z!1189 (h!72397 zl!343) lambda!380523) lt!2442753)))

(declare-fun b_lambda!254767 () Bool)

(assert (=> (not b_lambda!254767) (not d!2125445)))

(declare-fun bs!1800504 () Bool)

(assert (= bs!1800504 d!2125445))

(assert (=> bs!1800504 m!7516640))

(declare-fun m!7517240 () Bool)

(assert (=> bs!1800504 m!7517240))

(declare-fun m!7517242 () Bool)

(assert (=> bs!1800504 m!7517242))

(declare-fun m!7517244 () Bool)

(assert (=> bs!1800504 m!7517244))

(assert (=> b!6765361 d!2125445))

(declare-fun d!2125447 () Bool)

(declare-fun lt!2442754 () Regex!16591)

(assert (=> d!2125447 (validRegex!8327 lt!2442754)))

(assert (=> d!2125447 (= lt!2442754 (generalisedUnion!2435 (unfocusZipperList!2012 zl!343)))))

(assert (=> d!2125447 (= (unfocusZipper!2333 zl!343) lt!2442754)))

(declare-fun bs!1800505 () Bool)

(assert (= bs!1800505 d!2125447))

(declare-fun m!7517246 () Bool)

(assert (=> bs!1800505 m!7517246))

(assert (=> bs!1800505 m!7516600))

(assert (=> bs!1800505 m!7516600))

(assert (=> bs!1800505 m!7516602))

(assert (=> b!6765360 d!2125447))

(declare-fun d!2125449 () Bool)

(declare-fun e!4085356 () Bool)

(assert (=> d!2125449 e!4085356))

(declare-fun res!2766522 () Bool)

(assert (=> d!2125449 (=> (not res!2766522) (not e!4085356))))

(declare-fun lt!2442757 () List!66073)

(declare-fun noDuplicate!2380 (List!66073) Bool)

(assert (=> d!2125449 (= res!2766522 (noDuplicate!2380 lt!2442757))))

(declare-fun choose!50425 ((InoxSet Context!11950)) List!66073)

(assert (=> d!2125449 (= lt!2442757 (choose!50425 z!1189))))

(assert (=> d!2125449 (= (toList!10375 z!1189) lt!2442757)))

(declare-fun b!6766187 () Bool)

(declare-fun content!12837 (List!66073) (InoxSet Context!11950))

(assert (=> b!6766187 (= e!4085356 (= (content!12837 lt!2442757) z!1189))))

(assert (= (and d!2125449 res!2766522) b!6766187))

(declare-fun m!7517248 () Bool)

(assert (=> d!2125449 m!7517248))

(declare-fun m!7517250 () Bool)

(assert (=> d!2125449 m!7517250))

(declare-fun m!7517252 () Bool)

(assert (=> b!6766187 m!7517252))

(assert (=> b!6765339 d!2125449))

(declare-fun call!613006 () List!66072)

(declare-fun c!1256234 () Bool)

(declare-fun call!613005 () (InoxSet Context!11950))

(declare-fun c!1256231 () Bool)

(declare-fun bm!612998 () Bool)

(declare-fun c!1256235 () Bool)

(assert (=> bm!612998 (= call!613005 (derivationStepZipperDown!1819 (ite c!1256235 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256231 (regTwo!33694 (reg!16920 r!7292)) (ite c!1256234 (regOne!33694 (reg!16920 r!7292)) (reg!16920 (reg!16920 r!7292))))) (ite (or c!1256235 c!1256231) lt!2442639 (Context!11951 call!613006)) (h!72398 s!2326)))))

(declare-fun bm!612999 () Bool)

(declare-fun call!613004 () List!66072)

(assert (=> bm!612999 (= call!613006 call!613004)))

(declare-fun bm!613000 () Bool)

(declare-fun call!613008 () (InoxSet Context!11950))

(assert (=> bm!613000 (= call!613008 call!613005)))

(declare-fun bm!613002 () Bool)

(declare-fun call!613007 () (InoxSet Context!11950))

(assert (=> bm!613002 (= call!613007 (derivationStepZipperDown!1819 (ite c!1256235 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292))) (ite c!1256235 lt!2442639 (Context!11951 call!613004)) (h!72398 s!2326)))))

(declare-fun b!6766188 () Bool)

(declare-fun e!4085358 () (InoxSet Context!11950))

(declare-fun call!613003 () (InoxSet Context!11950))

(assert (=> b!6766188 (= e!4085358 call!613003)))

(declare-fun b!6766189 () Bool)

(declare-fun e!4085361 () (InoxSet Context!11950))

(assert (=> b!6766189 (= e!4085361 (store ((as const (Array Context!11950 Bool)) false) lt!2442639 true))))

(declare-fun b!6766190 () Bool)

(declare-fun e!4085362 () (InoxSet Context!11950))

(assert (=> b!6766190 (= e!4085362 ((_ map or) call!613007 call!613008))))

(declare-fun b!6766191 () Bool)

(declare-fun e!4085360 () Bool)

(assert (=> b!6766191 (= c!1256231 e!4085360)))

(declare-fun res!2766523 () Bool)

(assert (=> b!6766191 (=> (not res!2766523) (not e!4085360))))

(assert (=> b!6766191 (= res!2766523 ((_ is Concat!25436) (reg!16920 r!7292)))))

(declare-fun e!4085357 () (InoxSet Context!11950))

(assert (=> b!6766191 (= e!4085357 e!4085362)))

(declare-fun b!6766192 () Bool)

(declare-fun e!4085359 () (InoxSet Context!11950))

(assert (=> b!6766192 (= e!4085362 e!4085359)))

(assert (=> b!6766192 (= c!1256234 ((_ is Concat!25436) (reg!16920 r!7292)))))

(declare-fun bm!613003 () Bool)

(assert (=> bm!613003 (= call!613003 call!613008)))

(declare-fun b!6766193 () Bool)

(declare-fun c!1256232 () Bool)

(assert (=> b!6766193 (= c!1256232 ((_ is Star!16591) (reg!16920 r!7292)))))

(assert (=> b!6766193 (= e!4085359 e!4085358)))

(declare-fun b!6766194 () Bool)

(assert (=> b!6766194 (= e!4085360 (nullable!6574 (regOne!33694 (reg!16920 r!7292))))))

(declare-fun b!6766195 () Bool)

(assert (=> b!6766195 (= e!4085357 ((_ map or) call!613007 call!613005))))

(declare-fun b!6766196 () Bool)

(assert (=> b!6766196 (= e!4085359 call!613003)))

(declare-fun d!2125451 () Bool)

(declare-fun c!1256233 () Bool)

(assert (=> d!2125451 (= c!1256233 (and ((_ is ElementMatch!16591) (reg!16920 r!7292)) (= (c!1256003 (reg!16920 r!7292)) (h!72398 s!2326))))))

(assert (=> d!2125451 (= (derivationStepZipperDown!1819 (reg!16920 r!7292) lt!2442639 (h!72398 s!2326)) e!4085361)))

(declare-fun bm!613001 () Bool)

(assert (=> bm!613001 (= call!613004 ($colon$colon!2404 (exprs!6475 lt!2442639) (ite (or c!1256231 c!1256234) (regTwo!33694 (reg!16920 r!7292)) (reg!16920 r!7292))))))

(declare-fun b!6766197 () Bool)

(assert (=> b!6766197 (= e!4085361 e!4085357)))

(assert (=> b!6766197 (= c!1256235 ((_ is Union!16591) (reg!16920 r!7292)))))

(declare-fun b!6766198 () Bool)

(assert (=> b!6766198 (= e!4085358 ((as const (Array Context!11950 Bool)) false))))

(assert (= (and d!2125451 c!1256233) b!6766189))

(assert (= (and d!2125451 (not c!1256233)) b!6766197))

(assert (= (and b!6766197 c!1256235) b!6766195))

(assert (= (and b!6766197 (not c!1256235)) b!6766191))

(assert (= (and b!6766191 res!2766523) b!6766194))

(assert (= (and b!6766191 c!1256231) b!6766190))

(assert (= (and b!6766191 (not c!1256231)) b!6766192))

(assert (= (and b!6766192 c!1256234) b!6766196))

(assert (= (and b!6766192 (not c!1256234)) b!6766193))

(assert (= (and b!6766193 c!1256232) b!6766188))

(assert (= (and b!6766193 (not c!1256232)) b!6766198))

(assert (= (or b!6766196 b!6766188) bm!612999))

(assert (= (or b!6766196 b!6766188) bm!613003))

(assert (= (or b!6766190 bm!612999) bm!613001))

(assert (= (or b!6766190 bm!613003) bm!613000))

(assert (= (or b!6766195 bm!613000) bm!612998))

(assert (= (or b!6766195 b!6766190) bm!613002))

(declare-fun m!7517254 () Bool)

(assert (=> bm!613001 m!7517254))

(declare-fun m!7517256 () Bool)

(assert (=> bm!613002 m!7517256))

(assert (=> b!6766189 m!7516618))

(declare-fun m!7517258 () Bool)

(assert (=> bm!612998 m!7517258))

(declare-fun m!7517260 () Bool)

(assert (=> b!6766194 m!7517260))

(assert (=> b!6765362 d!2125451))

(declare-fun d!2125453 () Bool)

(assert (=> d!2125453 (= (flatMap!2072 lt!2442640 lambda!380523) (choose!50416 lt!2442640 lambda!380523))))

(declare-fun bs!1800506 () Bool)

(assert (= bs!1800506 d!2125453))

(declare-fun m!7517262 () Bool)

(assert (=> bs!1800506 m!7517262))

(assert (=> b!6765362 d!2125453))

(declare-fun b!6766199 () Bool)

(declare-fun call!613009 () (InoxSet Context!11950))

(declare-fun e!4085365 () (InoxSet Context!11950))

(assert (=> b!6766199 (= e!4085365 ((_ map or) call!613009 (derivationStepZipperUp!1745 (Context!11951 (t!379779 (exprs!6475 lt!2442623))) (h!72398 s!2326))))))

(declare-fun bm!613004 () Bool)

(assert (=> bm!613004 (= call!613009 (derivationStepZipperDown!1819 (h!72396 (exprs!6475 lt!2442623)) (Context!11951 (t!379779 (exprs!6475 lt!2442623))) (h!72398 s!2326)))))

(declare-fun b!6766200 () Bool)

(declare-fun e!4085363 () (InoxSet Context!11950))

(assert (=> b!6766200 (= e!4085363 ((as const (Array Context!11950 Bool)) false))))

(declare-fun b!6766201 () Bool)

(assert (=> b!6766201 (= e!4085363 call!613009)))

(declare-fun b!6766202 () Bool)

(assert (=> b!6766202 (= e!4085365 e!4085363)))

(declare-fun c!1256237 () Bool)

(assert (=> b!6766202 (= c!1256237 ((_ is Cons!65948) (exprs!6475 lt!2442623)))))

(declare-fun b!6766203 () Bool)

(declare-fun e!4085364 () Bool)

(assert (=> b!6766203 (= e!4085364 (nullable!6574 (h!72396 (exprs!6475 lt!2442623))))))

(declare-fun d!2125455 () Bool)

(declare-fun c!1256236 () Bool)

(assert (=> d!2125455 (= c!1256236 e!4085364)))

(declare-fun res!2766524 () Bool)

(assert (=> d!2125455 (=> (not res!2766524) (not e!4085364))))

(assert (=> d!2125455 (= res!2766524 ((_ is Cons!65948) (exprs!6475 lt!2442623)))))

(assert (=> d!2125455 (= (derivationStepZipperUp!1745 lt!2442623 (h!72398 s!2326)) e!4085365)))

(assert (= (and d!2125455 res!2766524) b!6766203))

(assert (= (and d!2125455 c!1256236) b!6766199))

(assert (= (and d!2125455 (not c!1256236)) b!6766202))

(assert (= (and b!6766202 c!1256237) b!6766201))

(assert (= (and b!6766202 (not c!1256237)) b!6766200))

(assert (= (or b!6766199 b!6766201) bm!613004))

(declare-fun m!7517264 () Bool)

(assert (=> b!6766199 m!7517264))

(declare-fun m!7517266 () Bool)

(assert (=> bm!613004 m!7517266))

(declare-fun m!7517268 () Bool)

(assert (=> b!6766203 m!7517268))

(assert (=> b!6765362 d!2125455))

(declare-fun d!2125457 () Bool)

(assert (=> d!2125457 (= (flatMap!2072 lt!2442640 lambda!380523) (dynLambda!26314 lambda!380523 lt!2442623))))

(declare-fun lt!2442758 () Unit!159873)

(assert (=> d!2125457 (= lt!2442758 (choose!50415 lt!2442640 lt!2442623 lambda!380523))))

(assert (=> d!2125457 (= lt!2442640 (store ((as const (Array Context!11950 Bool)) false) lt!2442623 true))))

(assert (=> d!2125457 (= (lemmaFlatMapOnSingletonSet!1598 lt!2442640 lt!2442623 lambda!380523) lt!2442758)))

(declare-fun b_lambda!254769 () Bool)

(assert (=> (not b_lambda!254769) (not d!2125457)))

(declare-fun bs!1800507 () Bool)

(assert (= bs!1800507 d!2125457))

(assert (=> bs!1800507 m!7516604))

(declare-fun m!7517270 () Bool)

(assert (=> bs!1800507 m!7517270))

(declare-fun m!7517272 () Bool)

(assert (=> bs!1800507 m!7517272))

(assert (=> bs!1800507 m!7516606))

(assert (=> b!6765362 d!2125457))

(declare-fun bs!1800508 () Bool)

(declare-fun d!2125459 () Bool)

(assert (= bs!1800508 (and d!2125459 d!2125431)))

(declare-fun lambda!380607 () Int)

(assert (=> bs!1800508 (= lambda!380607 lambda!380601)))

(declare-fun bs!1800509 () Bool)

(assert (= bs!1800509 (and d!2125459 d!2125361)))

(assert (=> bs!1800509 (= lambda!380607 lambda!380574)))

(declare-fun bs!1800510 () Bool)

(assert (= bs!1800510 (and d!2125459 d!2125433)))

(assert (=> bs!1800510 (= lambda!380607 lambda!380604)))

(declare-fun bs!1800511 () Bool)

(assert (= bs!1800511 (and d!2125459 d!2125239)))

(assert (=> bs!1800511 (= lambda!380607 lambda!380526)))

(declare-fun bs!1800512 () Bool)

(assert (= bs!1800512 (and d!2125459 d!2125313)))

(assert (=> bs!1800512 (= lambda!380607 lambda!380553)))

(assert (=> d!2125459 (= (inv!84724 (h!72397 zl!343)) (forall!15787 (exprs!6475 (h!72397 zl!343)) lambda!380607))))

(declare-fun bs!1800513 () Bool)

(assert (= bs!1800513 d!2125459))

(declare-fun m!7517274 () Bool)

(assert (=> bs!1800513 m!7517274))

(assert (=> b!6765342 d!2125459))

(declare-fun b!6766208 () Bool)

(declare-fun e!4085368 () Bool)

(declare-fun tp!1854236 () Bool)

(declare-fun tp!1854237 () Bool)

(assert (=> b!6766208 (= e!4085368 (and tp!1854236 tp!1854237))))

(assert (=> b!6765349 (= tp!1854173 e!4085368)))

(assert (= (and b!6765349 ((_ is Cons!65948) (exprs!6475 setElem!46245))) b!6766208))

(declare-fun b!6766219 () Bool)

(declare-fun e!4085371 () Bool)

(assert (=> b!6766219 (= e!4085371 tp_is_empty!42435)))

(declare-fun b!6766222 () Bool)

(declare-fun tp!1854250 () Bool)

(declare-fun tp!1854251 () Bool)

(assert (=> b!6766222 (= e!4085371 (and tp!1854250 tp!1854251))))

(assert (=> b!6765343 (= tp!1854164 e!4085371)))

(declare-fun b!6766221 () Bool)

(declare-fun tp!1854252 () Bool)

(assert (=> b!6766221 (= e!4085371 tp!1854252)))

(declare-fun b!6766220 () Bool)

(declare-fun tp!1854248 () Bool)

(declare-fun tp!1854249 () Bool)

(assert (=> b!6766220 (= e!4085371 (and tp!1854248 tp!1854249))))

(assert (= (and b!6765343 ((_ is ElementMatch!16591) (regOne!33694 r!7292))) b!6766219))

(assert (= (and b!6765343 ((_ is Concat!25436) (regOne!33694 r!7292))) b!6766220))

(assert (= (and b!6765343 ((_ is Star!16591) (regOne!33694 r!7292))) b!6766221))

(assert (= (and b!6765343 ((_ is Union!16591) (regOne!33694 r!7292))) b!6766222))

(declare-fun b!6766223 () Bool)

(declare-fun e!4085372 () Bool)

(assert (=> b!6766223 (= e!4085372 tp_is_empty!42435)))

(declare-fun b!6766226 () Bool)

(declare-fun tp!1854255 () Bool)

(declare-fun tp!1854256 () Bool)

(assert (=> b!6766226 (= e!4085372 (and tp!1854255 tp!1854256))))

(assert (=> b!6765343 (= tp!1854168 e!4085372)))

(declare-fun b!6766225 () Bool)

(declare-fun tp!1854257 () Bool)

(assert (=> b!6766225 (= e!4085372 tp!1854257)))

(declare-fun b!6766224 () Bool)

(declare-fun tp!1854253 () Bool)

(declare-fun tp!1854254 () Bool)

(assert (=> b!6766224 (= e!4085372 (and tp!1854253 tp!1854254))))

(assert (= (and b!6765343 ((_ is ElementMatch!16591) (regTwo!33694 r!7292))) b!6766223))

(assert (= (and b!6765343 ((_ is Concat!25436) (regTwo!33694 r!7292))) b!6766224))

(assert (= (and b!6765343 ((_ is Star!16591) (regTwo!33694 r!7292))) b!6766225))

(assert (= (and b!6765343 ((_ is Union!16591) (regTwo!33694 r!7292))) b!6766226))

(declare-fun condSetEmpty!46251 () Bool)

(assert (=> setNonEmpty!46245 (= condSetEmpty!46251 (= setRest!46245 ((as const (Array Context!11950 Bool)) false)))))

(declare-fun setRes!46251 () Bool)

(assert (=> setNonEmpty!46245 (= tp!1854169 setRes!46251)))

(declare-fun setIsEmpty!46251 () Bool)

(assert (=> setIsEmpty!46251 setRes!46251))

(declare-fun tp!1854262 () Bool)

(declare-fun setElem!46251 () Context!11950)

(declare-fun setNonEmpty!46251 () Bool)

(declare-fun e!4085375 () Bool)

(assert (=> setNonEmpty!46251 (= setRes!46251 (and tp!1854262 (inv!84724 setElem!46251) e!4085375))))

(declare-fun setRest!46251 () (InoxSet Context!11950))

(assert (=> setNonEmpty!46251 (= setRest!46245 ((_ map or) (store ((as const (Array Context!11950 Bool)) false) setElem!46251 true) setRest!46251))))

(declare-fun b!6766231 () Bool)

(declare-fun tp!1854263 () Bool)

(assert (=> b!6766231 (= e!4085375 tp!1854263)))

(assert (= (and setNonEmpty!46245 condSetEmpty!46251) setIsEmpty!46251))

(assert (= (and setNonEmpty!46245 (not condSetEmpty!46251)) setNonEmpty!46251))

(assert (= setNonEmpty!46251 b!6766231))

(declare-fun m!7517276 () Bool)

(assert (=> setNonEmpty!46251 m!7517276))

(declare-fun b!6766232 () Bool)

(declare-fun e!4085376 () Bool)

(assert (=> b!6766232 (= e!4085376 tp_is_empty!42435)))

(declare-fun b!6766235 () Bool)

(declare-fun tp!1854266 () Bool)

(declare-fun tp!1854267 () Bool)

(assert (=> b!6766235 (= e!4085376 (and tp!1854266 tp!1854267))))

(assert (=> b!6765340 (= tp!1854165 e!4085376)))

(declare-fun b!6766234 () Bool)

(declare-fun tp!1854268 () Bool)

(assert (=> b!6766234 (= e!4085376 tp!1854268)))

(declare-fun b!6766233 () Bool)

(declare-fun tp!1854264 () Bool)

(declare-fun tp!1854265 () Bool)

(assert (=> b!6766233 (= e!4085376 (and tp!1854264 tp!1854265))))

(assert (= (and b!6765340 ((_ is ElementMatch!16591) (regOne!33695 r!7292))) b!6766232))

(assert (= (and b!6765340 ((_ is Concat!25436) (regOne!33695 r!7292))) b!6766233))

(assert (= (and b!6765340 ((_ is Star!16591) (regOne!33695 r!7292))) b!6766234))

(assert (= (and b!6765340 ((_ is Union!16591) (regOne!33695 r!7292))) b!6766235))

(declare-fun b!6766236 () Bool)

(declare-fun e!4085377 () Bool)

(assert (=> b!6766236 (= e!4085377 tp_is_empty!42435)))

(declare-fun b!6766239 () Bool)

(declare-fun tp!1854271 () Bool)

(declare-fun tp!1854272 () Bool)

(assert (=> b!6766239 (= e!4085377 (and tp!1854271 tp!1854272))))

(assert (=> b!6765340 (= tp!1854170 e!4085377)))

(declare-fun b!6766238 () Bool)

(declare-fun tp!1854273 () Bool)

(assert (=> b!6766238 (= e!4085377 tp!1854273)))

(declare-fun b!6766237 () Bool)

(declare-fun tp!1854269 () Bool)

(declare-fun tp!1854270 () Bool)

(assert (=> b!6766237 (= e!4085377 (and tp!1854269 tp!1854270))))

(assert (= (and b!6765340 ((_ is ElementMatch!16591) (regTwo!33695 r!7292))) b!6766236))

(assert (= (and b!6765340 ((_ is Concat!25436) (regTwo!33695 r!7292))) b!6766237))

(assert (= (and b!6765340 ((_ is Star!16591) (regTwo!33695 r!7292))) b!6766238))

(assert (= (and b!6765340 ((_ is Union!16591) (regTwo!33695 r!7292))) b!6766239))

(declare-fun b!6766240 () Bool)

(declare-fun e!4085378 () Bool)

(declare-fun tp!1854274 () Bool)

(declare-fun tp!1854275 () Bool)

(assert (=> b!6766240 (= e!4085378 (and tp!1854274 tp!1854275))))

(assert (=> b!6765351 (= tp!1854171 e!4085378)))

(assert (= (and b!6765351 ((_ is Cons!65948) (exprs!6475 (h!72397 zl!343)))) b!6766240))

(declare-fun b!6766248 () Bool)

(declare-fun e!4085384 () Bool)

(declare-fun tp!1854280 () Bool)

(assert (=> b!6766248 (= e!4085384 tp!1854280)))

(declare-fun b!6766247 () Bool)

(declare-fun tp!1854281 () Bool)

(declare-fun e!4085383 () Bool)

(assert (=> b!6766247 (= e!4085383 (and (inv!84724 (h!72397 (t!379780 zl!343))) e!4085384 tp!1854281))))

(assert (=> b!6765342 (= tp!1854167 e!4085383)))

(assert (= b!6766247 b!6766248))

(assert (= (and b!6765342 ((_ is Cons!65949) (t!379780 zl!343))) b!6766247))

(declare-fun m!7517278 () Bool)

(assert (=> b!6766247 m!7517278))

(declare-fun b!6766249 () Bool)

(declare-fun e!4085385 () Bool)

(assert (=> b!6766249 (= e!4085385 tp_is_empty!42435)))

(declare-fun b!6766252 () Bool)

(declare-fun tp!1854284 () Bool)

(declare-fun tp!1854285 () Bool)

(assert (=> b!6766252 (= e!4085385 (and tp!1854284 tp!1854285))))

(assert (=> b!6765347 (= tp!1854172 e!4085385)))

(declare-fun b!6766251 () Bool)

(declare-fun tp!1854286 () Bool)

(assert (=> b!6766251 (= e!4085385 tp!1854286)))

(declare-fun b!6766250 () Bool)

(declare-fun tp!1854282 () Bool)

(declare-fun tp!1854283 () Bool)

(assert (=> b!6766250 (= e!4085385 (and tp!1854282 tp!1854283))))

(assert (= (and b!6765347 ((_ is ElementMatch!16591) (reg!16920 r!7292))) b!6766249))

(assert (= (and b!6765347 ((_ is Concat!25436) (reg!16920 r!7292))) b!6766250))

(assert (= (and b!6765347 ((_ is Star!16591) (reg!16920 r!7292))) b!6766251))

(assert (= (and b!6765347 ((_ is Union!16591) (reg!16920 r!7292))) b!6766252))

(declare-fun b!6766257 () Bool)

(declare-fun e!4085388 () Bool)

(declare-fun tp!1854289 () Bool)

(assert (=> b!6766257 (= e!4085388 (and tp_is_empty!42435 tp!1854289))))

(assert (=> b!6765363 (= tp!1854166 e!4085388)))

(assert (= (and b!6765363 ((_ is Cons!65950) (t!379781 s!2326))) b!6766257))

(declare-fun b_lambda!254771 () Bool)

(assert (= b_lambda!254747 (or b!6765361 b_lambda!254771)))

(declare-fun bs!1800514 () Bool)

(declare-fun d!2125461 () Bool)

(assert (= bs!1800514 (and d!2125461 b!6765361)))

(assert (=> bs!1800514 (= (dynLambda!26314 lambda!380523 lt!2442639) (derivationStepZipperUp!1745 lt!2442639 (h!72398 s!2326)))))

(assert (=> bs!1800514 m!7516624))

(assert (=> d!2125247 d!2125461))

(declare-fun b_lambda!254773 () Bool)

(assert (= b_lambda!254769 (or b!6765361 b_lambda!254773)))

(declare-fun bs!1800515 () Bool)

(declare-fun d!2125463 () Bool)

(assert (= bs!1800515 (and d!2125463 b!6765361)))

(assert (=> bs!1800515 (= (dynLambda!26314 lambda!380523 lt!2442623) (derivationStepZipperUp!1745 lt!2442623 (h!72398 s!2326)))))

(assert (=> bs!1800515 m!7516612))

(assert (=> d!2125457 d!2125463))

(declare-fun b_lambda!254775 () Bool)

(assert (= b_lambda!254767 (or b!6765361 b_lambda!254775)))

(declare-fun bs!1800516 () Bool)

(declare-fun d!2125465 () Bool)

(assert (= bs!1800516 (and d!2125465 b!6765361)))

(assert (=> bs!1800516 (= (dynLambda!26314 lambda!380523 (h!72397 zl!343)) (derivationStepZipperUp!1745 (h!72397 zl!343) (h!72398 s!2326)))))

(assert (=> bs!1800516 m!7516642))

(assert (=> d!2125445 d!2125465))

(declare-fun b_lambda!254777 () Bool)

(assert (= b_lambda!254749 (or b!6765361 b_lambda!254777)))

(declare-fun bs!1800517 () Bool)

(declare-fun d!2125467 () Bool)

(assert (= bs!1800517 (and d!2125467 b!6765361)))

(assert (=> bs!1800517 (= (dynLambda!26314 lambda!380523 lt!2442630) (derivationStepZipperUp!1745 lt!2442630 (h!72398 s!2326)))))

(assert (=> bs!1800517 m!7516616))

(assert (=> d!2125261 d!2125467))

(check-sat (not b!6765596) (not b!6766222) (not b!6766111) (not bm!612997) (not b!6766110) (not d!2125311) (not bs!1800517) (not b!6766248) (not d!2125447) (not b!6765851) (not b!6766235) (not b!6765413) (not b!6766208) (not b!6766226) (not bm!612987) (not b!6765924) (not d!2125247) (not b!6766221) (not d!2125349) (not d!2125453) (not b!6765917) (not b!6765609) (not setNonEmpty!46251) (not bm!612967) (not b!6766169) (not b!6765409) (not b!6765846) (not b!6766147) (not b!6765465) (not d!2125401) (not b!6766139) (not b!6766153) (not b!6766142) (not b!6766194) (not bm!613002) (not b!6765804) (not b!6766187) (not b!6765408) (not d!2125275) (not d!2125237) (not bm!612966) (not b!6765918) (not bm!612903) (not b!6765557) (not b_lambda!254773) (not b!6766231) (not b_lambda!254775) (not b!6765586) (not b!6766178) (not d!2125431) (not bm!612995) (not b_lambda!254777) (not d!2125457) (not b!6765411) (not b!6766166) (not b!6765920) (not b!6766252) (not bm!612920) (not d!2125255) (not bm!613001) (not b!6765418) (not b!6765464) (not b!6765849) (not d!2125257) (not bm!613004) (not b!6766160) (not b!6766108) (not b!6766144) (not bs!1800516) (not b!6765847) (not d!2125383) (not b!6765552) (not b!6766109) (not d!2125423) (not b!6766199) (not b!6766220) (not d!2125261) (not b!6766237) (not b!6766156) (not d!2125239) (not b!6765591) (not b!6766140) (not b!6766141) (not bm!612926) (not d!2125437) (not d!2125309) (not b!6765856) (not bm!612899) (not d!2125427) (not b!6765922) (not b!6765844) (not d!2125449) (not b!6765470) (not d!2125425) (not b!6766168) (not b!6766233) (not b!6766203) (not b!6766146) (not d!2125391) (not b!6766173) (not b!6765947) (not bm!612939) (not b!6766171) (not b!6766180) (not b!6766247) (not b!6765587) (not d!2125307) (not b!6765923) (not d!2125317) (not bm!612902) (not d!2125421) (not b!6766257) (not d!2125273) (not b!6766238) (not b!6765584) (not b!6766250) (not b!6766239) (not b!6766225) (not d!2125313) (not d!2125445) (not d!2125361) (not b!6765610) (not bm!612923) (not b!6765698) (not d!2125355) (not bm!612985) (not bs!1800515) (not b!6766251) (not bm!612924) (not b!6765921) (not b!6766240) (not bm!612986) (not b_lambda!254771) (not d!2125441) (not b!6765948) (not b!6765438) (not b!6766224) (not d!2125439) (not d!2125269) tp_is_empty!42435 (not b!6765561) (not b!6765589) (not b!6765443) (not d!2125253) (not d!2125393) (not bm!612996) (not bm!612998) (not b!6766106) (not b!6766107) (not bm!612994) (not d!2125459) (not b!6765808) (not b!6765447) (not d!2125271) (not b!6765471) (not d!2125429) (not b!6765406) (not b!6766234) (not bs!1800514) (not d!2125315) (not d!2125433) (not d!2125267) (not b!6765442) (not b!6766184))
(check-sat)
(get-model)

(declare-fun b!6766379 () Bool)

(declare-fun e!4085467 () Bool)

(declare-fun call!613034 () Bool)

(assert (=> b!6766379 (= e!4085467 call!613034)))

(declare-fun b!6766380 () Bool)

(declare-fun res!2766575 () Bool)

(declare-fun e!4085470 () Bool)

(assert (=> b!6766380 (=> res!2766575 e!4085470)))

(assert (=> b!6766380 (= res!2766575 (not ((_ is Concat!25436) (ite c!1256104 (reg!16920 r!7292) (ite c!1256105 (regOne!33695 r!7292) (regOne!33694 r!7292))))))))

(declare-fun e!4085472 () Bool)

(assert (=> b!6766380 (= e!4085472 e!4085470)))

(declare-fun bm!613028 () Bool)

(declare-fun c!1256276 () Bool)

(declare-fun c!1256277 () Bool)

(assert (=> bm!613028 (= call!613034 (validRegex!8327 (ite c!1256276 (reg!16920 (ite c!1256104 (reg!16920 r!7292) (ite c!1256105 (regOne!33695 r!7292) (regOne!33694 r!7292)))) (ite c!1256277 (regOne!33695 (ite c!1256104 (reg!16920 r!7292) (ite c!1256105 (regOne!33695 r!7292) (regOne!33694 r!7292)))) (regOne!33694 (ite c!1256104 (reg!16920 r!7292) (ite c!1256105 (regOne!33695 r!7292) (regOne!33694 r!7292))))))))))

(declare-fun b!6766381 () Bool)

(declare-fun res!2766571 () Bool)

(declare-fun e!4085471 () Bool)

(assert (=> b!6766381 (=> (not res!2766571) (not e!4085471))))

(declare-fun call!613033 () Bool)

(assert (=> b!6766381 (= res!2766571 call!613033)))

(assert (=> b!6766381 (= e!4085472 e!4085471)))

(declare-fun d!2125521 () Bool)

(declare-fun res!2766573 () Bool)

(declare-fun e!4085469 () Bool)

(assert (=> d!2125521 (=> res!2766573 e!4085469)))

(assert (=> d!2125521 (= res!2766573 ((_ is ElementMatch!16591) (ite c!1256104 (reg!16920 r!7292) (ite c!1256105 (regOne!33695 r!7292) (regOne!33694 r!7292)))))))

(assert (=> d!2125521 (= (validRegex!8327 (ite c!1256104 (reg!16920 r!7292) (ite c!1256105 (regOne!33695 r!7292) (regOne!33694 r!7292)))) e!4085469)))

(declare-fun b!6766382 () Bool)

(declare-fun e!4085468 () Bool)

(assert (=> b!6766382 (= e!4085468 e!4085472)))

(assert (=> b!6766382 (= c!1256277 ((_ is Union!16591) (ite c!1256104 (reg!16920 r!7292) (ite c!1256105 (regOne!33695 r!7292) (regOne!33694 r!7292)))))))

(declare-fun b!6766383 () Bool)

(declare-fun e!4085466 () Bool)

(declare-fun call!613035 () Bool)

(assert (=> b!6766383 (= e!4085466 call!613035)))

(declare-fun b!6766384 () Bool)

(assert (=> b!6766384 (= e!4085468 e!4085467)))

(declare-fun res!2766574 () Bool)

(assert (=> b!6766384 (= res!2766574 (not (nullable!6574 (reg!16920 (ite c!1256104 (reg!16920 r!7292) (ite c!1256105 (regOne!33695 r!7292) (regOne!33694 r!7292)))))))))

(assert (=> b!6766384 (=> (not res!2766574) (not e!4085467))))

(declare-fun b!6766385 () Bool)

(assert (=> b!6766385 (= e!4085471 call!613035)))

(declare-fun bm!613029 () Bool)

(assert (=> bm!613029 (= call!613035 (validRegex!8327 (ite c!1256277 (regTwo!33695 (ite c!1256104 (reg!16920 r!7292) (ite c!1256105 (regOne!33695 r!7292) (regOne!33694 r!7292)))) (regTwo!33694 (ite c!1256104 (reg!16920 r!7292) (ite c!1256105 (regOne!33695 r!7292) (regOne!33694 r!7292)))))))))

(declare-fun b!6766386 () Bool)

(assert (=> b!6766386 (= e!4085470 e!4085466)))

(declare-fun res!2766572 () Bool)

(assert (=> b!6766386 (=> (not res!2766572) (not e!4085466))))

(assert (=> b!6766386 (= res!2766572 call!613033)))

(declare-fun bm!613030 () Bool)

(assert (=> bm!613030 (= call!613033 call!613034)))

(declare-fun b!6766387 () Bool)

(assert (=> b!6766387 (= e!4085469 e!4085468)))

(assert (=> b!6766387 (= c!1256276 ((_ is Star!16591) (ite c!1256104 (reg!16920 r!7292) (ite c!1256105 (regOne!33695 r!7292) (regOne!33694 r!7292)))))))

(assert (= (and d!2125521 (not res!2766573)) b!6766387))

(assert (= (and b!6766387 c!1256276) b!6766384))

(assert (= (and b!6766387 (not c!1256276)) b!6766382))

(assert (= (and b!6766384 res!2766574) b!6766379))

(assert (= (and b!6766382 c!1256277) b!6766381))

(assert (= (and b!6766382 (not c!1256277)) b!6766380))

(assert (= (and b!6766381 res!2766571) b!6766385))

(assert (= (and b!6766380 (not res!2766575)) b!6766386))

(assert (= (and b!6766386 res!2766572) b!6766383))

(assert (= (or b!6766385 b!6766383) bm!613029))

(assert (= (or b!6766381 b!6766386) bm!613030))

(assert (= (or b!6766379 bm!613030) bm!613028))

(declare-fun m!7517374 () Bool)

(assert (=> bm!613028 m!7517374))

(declare-fun m!7517376 () Bool)

(assert (=> b!6766384 m!7517376))

(declare-fun m!7517378 () Bool)

(assert (=> bm!613029 m!7517378))

(assert (=> bm!612966 d!2125521))

(declare-fun bs!1800543 () Bool)

(declare-fun d!2125525 () Bool)

(assert (= bs!1800543 (and d!2125525 d!2125431)))

(declare-fun lambda!380614 () Int)

(assert (=> bs!1800543 (= lambda!380614 lambda!380601)))

(declare-fun bs!1800544 () Bool)

(assert (= bs!1800544 (and d!2125525 d!2125361)))

(assert (=> bs!1800544 (= lambda!380614 lambda!380574)))

(declare-fun bs!1800545 () Bool)

(assert (= bs!1800545 (and d!2125525 d!2125433)))

(assert (=> bs!1800545 (= lambda!380614 lambda!380604)))

(declare-fun bs!1800546 () Bool)

(assert (= bs!1800546 (and d!2125525 d!2125239)))

(assert (=> bs!1800546 (= lambda!380614 lambda!380526)))

(declare-fun bs!1800547 () Bool)

(assert (= bs!1800547 (and d!2125525 d!2125459)))

(assert (=> bs!1800547 (= lambda!380614 lambda!380607)))

(declare-fun bs!1800548 () Bool)

(assert (= bs!1800548 (and d!2125525 d!2125313)))

(assert (=> bs!1800548 (= lambda!380614 lambda!380553)))

(declare-fun b!6766398 () Bool)

(declare-fun e!4085480 () Regex!16591)

(assert (=> b!6766398 (= e!4085480 (h!72396 (t!379779 (exprs!6475 (h!72397 zl!343)))))))

(declare-fun b!6766399 () Bool)

(declare-fun e!4085481 () Bool)

(declare-fun lt!2442765 () Regex!16591)

(assert (=> b!6766399 (= e!4085481 (= lt!2442765 (head!13602 (t!379779 (exprs!6475 (h!72397 zl!343))))))))

(declare-fun b!6766400 () Bool)

(declare-fun e!4085478 () Bool)

(declare-fun e!4085483 () Bool)

(assert (=> b!6766400 (= e!4085478 e!4085483)))

(declare-fun c!1256283 () Bool)

(assert (=> b!6766400 (= c!1256283 (isEmpty!38309 (t!379779 (exprs!6475 (h!72397 zl!343)))))))

(declare-fun b!6766401 () Bool)

(declare-fun e!4085482 () Regex!16591)

(assert (=> b!6766401 (= e!4085480 e!4085482)))

(declare-fun c!1256286 () Bool)

(assert (=> b!6766401 (= c!1256286 ((_ is Cons!65948) (t!379779 (exprs!6475 (h!72397 zl!343)))))))

(declare-fun b!6766402 () Bool)

(assert (=> b!6766402 (= e!4085483 e!4085481)))

(declare-fun c!1256285 () Bool)

(assert (=> b!6766402 (= c!1256285 (isEmpty!38309 (tail!12687 (t!379779 (exprs!6475 (h!72397 zl!343))))))))

(declare-fun b!6766403 () Bool)

(assert (=> b!6766403 (= e!4085482 (Concat!25436 (h!72396 (t!379779 (exprs!6475 (h!72397 zl!343)))) (generalisedConcat!2188 (t!379779 (t!379779 (exprs!6475 (h!72397 zl!343)))))))))

(declare-fun b!6766404 () Bool)

(assert (=> b!6766404 (= e!4085481 (isConcat!1476 lt!2442765))))

(declare-fun b!6766405 () Bool)

(assert (=> b!6766405 (= e!4085483 (isEmptyExpr!1953 lt!2442765))))

(declare-fun b!6766406 () Bool)

(declare-fun e!4085479 () Bool)

(assert (=> b!6766406 (= e!4085479 (isEmpty!38309 (t!379779 (t!379779 (exprs!6475 (h!72397 zl!343))))))))

(assert (=> d!2125525 e!4085478))

(declare-fun res!2766577 () Bool)

(assert (=> d!2125525 (=> (not res!2766577) (not e!4085478))))

(assert (=> d!2125525 (= res!2766577 (validRegex!8327 lt!2442765))))

(assert (=> d!2125525 (= lt!2442765 e!4085480)))

(declare-fun c!1256284 () Bool)

(assert (=> d!2125525 (= c!1256284 e!4085479)))

(declare-fun res!2766576 () Bool)

(assert (=> d!2125525 (=> (not res!2766576) (not e!4085479))))

(assert (=> d!2125525 (= res!2766576 ((_ is Cons!65948) (t!379779 (exprs!6475 (h!72397 zl!343)))))))

(assert (=> d!2125525 (forall!15787 (t!379779 (exprs!6475 (h!72397 zl!343))) lambda!380614)))

(assert (=> d!2125525 (= (generalisedConcat!2188 (t!379779 (exprs!6475 (h!72397 zl!343)))) lt!2442765)))

(declare-fun b!6766407 () Bool)

(assert (=> b!6766407 (= e!4085482 EmptyExpr!16591)))

(assert (= (and d!2125525 res!2766576) b!6766406))

(assert (= (and d!2125525 c!1256284) b!6766398))

(assert (= (and d!2125525 (not c!1256284)) b!6766401))

(assert (= (and b!6766401 c!1256286) b!6766403))

(assert (= (and b!6766401 (not c!1256286)) b!6766407))

(assert (= (and d!2125525 res!2766577) b!6766400))

(assert (= (and b!6766400 c!1256283) b!6766405))

(assert (= (and b!6766400 (not c!1256283)) b!6766402))

(assert (= (and b!6766402 c!1256285) b!6766399))

(assert (= (and b!6766402 (not c!1256285)) b!6766404))

(declare-fun m!7517388 () Bool)

(assert (=> b!6766404 m!7517388))

(declare-fun m!7517390 () Bool)

(assert (=> b!6766405 m!7517390))

(assert (=> b!6766400 m!7517044))

(declare-fun m!7517392 () Bool)

(assert (=> b!6766402 m!7517392))

(assert (=> b!6766402 m!7517392))

(declare-fun m!7517394 () Bool)

(assert (=> b!6766402 m!7517394))

(declare-fun m!7517396 () Bool)

(assert (=> b!6766399 m!7517396))

(declare-fun m!7517398 () Bool)

(assert (=> b!6766406 m!7517398))

(declare-fun m!7517400 () Bool)

(assert (=> d!2125525 m!7517400))

(declare-fun m!7517402 () Bool)

(assert (=> d!2125525 m!7517402))

(declare-fun m!7517404 () Bool)

(assert (=> b!6766403 m!7517404))

(assert (=> b!6765921 d!2125525))

(declare-fun b!6766408 () Bool)

(declare-fun e!4085486 () Bool)

(assert (=> b!6766408 (= e!4085486 (nullable!6574 r!7292))))

(declare-fun b!6766409 () Bool)

(declare-fun e!4085487 () Bool)

(declare-fun e!4085488 () Bool)

(assert (=> b!6766409 (= e!4085487 e!4085488)))

(declare-fun c!1256287 () Bool)

(assert (=> b!6766409 (= c!1256287 ((_ is EmptyLang!16591) r!7292))))

(declare-fun b!6766410 () Bool)

(assert (=> b!6766410 (= e!4085486 (matchR!8774 (derivativeStep!5258 r!7292 (head!13599 (_2!36869 (get!22956 lt!2442739)))) (tail!12684 (_2!36869 (get!22956 lt!2442739)))))))

(declare-fun b!6766411 () Bool)

(declare-fun e!4085490 () Bool)

(assert (=> b!6766411 (= e!4085490 (= (head!13599 (_2!36869 (get!22956 lt!2442739))) (c!1256003 r!7292)))))

(declare-fun b!6766413 () Bool)

(declare-fun res!2766582 () Bool)

(declare-fun e!4085484 () Bool)

(assert (=> b!6766413 (=> res!2766582 e!4085484)))

(assert (=> b!6766413 (= res!2766582 (not (isEmpty!38306 (tail!12684 (_2!36869 (get!22956 lt!2442739))))))))

(declare-fun b!6766414 () Bool)

(declare-fun e!4085489 () Bool)

(assert (=> b!6766414 (= e!4085489 e!4085484)))

(declare-fun res!2766578 () Bool)

(assert (=> b!6766414 (=> res!2766578 e!4085484)))

(declare-fun call!613040 () Bool)

(assert (=> b!6766414 (= res!2766578 call!613040)))

(declare-fun b!6766415 () Bool)

(assert (=> b!6766415 (= e!4085484 (not (= (head!13599 (_2!36869 (get!22956 lt!2442739))) (c!1256003 r!7292))))))

(declare-fun b!6766416 () Bool)

(declare-fun res!2766585 () Bool)

(declare-fun e!4085485 () Bool)

(assert (=> b!6766416 (=> res!2766585 e!4085485)))

(assert (=> b!6766416 (= res!2766585 e!4085490)))

(declare-fun res!2766583 () Bool)

(assert (=> b!6766416 (=> (not res!2766583) (not e!4085490))))

(declare-fun lt!2442766 () Bool)

(assert (=> b!6766416 (= res!2766583 lt!2442766)))

(declare-fun b!6766417 () Bool)

(declare-fun res!2766580 () Bool)

(assert (=> b!6766417 (=> (not res!2766580) (not e!4085490))))

(assert (=> b!6766417 (= res!2766580 (not call!613040))))

(declare-fun b!6766412 () Bool)

(assert (=> b!6766412 (= e!4085485 e!4085489)))

(declare-fun res!2766579 () Bool)

(assert (=> b!6766412 (=> (not res!2766579) (not e!4085489))))

(assert (=> b!6766412 (= res!2766579 (not lt!2442766))))

(declare-fun d!2125533 () Bool)

(assert (=> d!2125533 e!4085487))

(declare-fun c!1256289 () Bool)

(assert (=> d!2125533 (= c!1256289 ((_ is EmptyExpr!16591) r!7292))))

(assert (=> d!2125533 (= lt!2442766 e!4085486)))

(declare-fun c!1256288 () Bool)

(assert (=> d!2125533 (= c!1256288 (isEmpty!38306 (_2!36869 (get!22956 lt!2442739))))))

(assert (=> d!2125533 (validRegex!8327 r!7292)))

(assert (=> d!2125533 (= (matchR!8774 r!7292 (_2!36869 (get!22956 lt!2442739))) lt!2442766)))

(declare-fun bm!613035 () Bool)

(assert (=> bm!613035 (= call!613040 (isEmpty!38306 (_2!36869 (get!22956 lt!2442739))))))

(declare-fun b!6766418 () Bool)

(declare-fun res!2766584 () Bool)

(assert (=> b!6766418 (=> res!2766584 e!4085485)))

(assert (=> b!6766418 (= res!2766584 (not ((_ is ElementMatch!16591) r!7292)))))

(assert (=> b!6766418 (= e!4085488 e!4085485)))

(declare-fun b!6766419 () Bool)

(assert (=> b!6766419 (= e!4085487 (= lt!2442766 call!613040))))

(declare-fun b!6766420 () Bool)

(declare-fun res!2766581 () Bool)

(assert (=> b!6766420 (=> (not res!2766581) (not e!4085490))))

(assert (=> b!6766420 (= res!2766581 (isEmpty!38306 (tail!12684 (_2!36869 (get!22956 lt!2442739)))))))

(declare-fun b!6766421 () Bool)

(assert (=> b!6766421 (= e!4085488 (not lt!2442766))))

(assert (= (and d!2125533 c!1256288) b!6766408))

(assert (= (and d!2125533 (not c!1256288)) b!6766410))

(assert (= (and d!2125533 c!1256289) b!6766419))

(assert (= (and d!2125533 (not c!1256289)) b!6766409))

(assert (= (and b!6766409 c!1256287) b!6766421))

(assert (= (and b!6766409 (not c!1256287)) b!6766418))

(assert (= (and b!6766418 (not res!2766584)) b!6766416))

(assert (= (and b!6766416 res!2766583) b!6766417))

(assert (= (and b!6766417 res!2766580) b!6766420))

(assert (= (and b!6766420 res!2766581) b!6766411))

(assert (= (and b!6766416 (not res!2766585)) b!6766412))

(assert (= (and b!6766412 res!2766579) b!6766414))

(assert (= (and b!6766414 (not res!2766578)) b!6766413))

(assert (= (and b!6766413 (not res!2766582)) b!6766415))

(assert (= (or b!6766419 b!6766414 b!6766417) bm!613035))

(declare-fun m!7517408 () Bool)

(assert (=> b!6766410 m!7517408))

(assert (=> b!6766410 m!7517408))

(declare-fun m!7517410 () Bool)

(assert (=> b!6766410 m!7517410))

(declare-fun m!7517412 () Bool)

(assert (=> b!6766410 m!7517412))

(assert (=> b!6766410 m!7517410))

(assert (=> b!6766410 m!7517412))

(declare-fun m!7517414 () Bool)

(assert (=> b!6766410 m!7517414))

(declare-fun m!7517416 () Bool)

(assert (=> d!2125533 m!7517416))

(assert (=> d!2125533 m!7516632))

(assert (=> b!6766411 m!7517408))

(assert (=> bm!613035 m!7517416))

(assert (=> b!6766415 m!7517408))

(assert (=> b!6766408 m!7516662))

(assert (=> b!6766420 m!7517412))

(assert (=> b!6766420 m!7517412))

(declare-fun m!7517418 () Bool)

(assert (=> b!6766420 m!7517418))

(assert (=> b!6766413 m!7517412))

(assert (=> b!6766413 m!7517412))

(assert (=> b!6766413 m!7517418))

(assert (=> b!6766107 d!2125533))

(declare-fun d!2125539 () Bool)

(assert (=> d!2125539 (= (get!22956 lt!2442739) (v!52681 lt!2442739))))

(assert (=> b!6766107 d!2125539))

(declare-fun b!6766433 () Bool)

(declare-fun e!4085499 () List!66074)

(assert (=> b!6766433 (= e!4085499 (_2!36869 lt!2442636))))

(declare-fun b!6766436 () Bool)

(declare-fun e!4085498 () Bool)

(declare-fun lt!2442767 () List!66074)

(assert (=> b!6766436 (= e!4085498 (or (not (= (_2!36869 lt!2442636) Nil!65950)) (= lt!2442767 (t!379781 (_1!36869 lt!2442636)))))))

(declare-fun b!6766434 () Bool)

(assert (=> b!6766434 (= e!4085499 (Cons!65950 (h!72398 (t!379781 (_1!36869 lt!2442636))) (++!14745 (t!379781 (t!379781 (_1!36869 lt!2442636))) (_2!36869 lt!2442636))))))

(declare-fun b!6766435 () Bool)

(declare-fun res!2766590 () Bool)

(assert (=> b!6766435 (=> (not res!2766590) (not e!4085498))))

(assert (=> b!6766435 (= res!2766590 (= (size!40628 lt!2442767) (+ (size!40628 (t!379781 (_1!36869 lt!2442636))) (size!40628 (_2!36869 lt!2442636)))))))

(declare-fun d!2125541 () Bool)

(assert (=> d!2125541 e!4085498))

(declare-fun res!2766589 () Bool)

(assert (=> d!2125541 (=> (not res!2766589) (not e!4085498))))

(assert (=> d!2125541 (= res!2766589 (= (content!12835 lt!2442767) ((_ map or) (content!12835 (t!379781 (_1!36869 lt!2442636))) (content!12835 (_2!36869 lt!2442636)))))))

(assert (=> d!2125541 (= lt!2442767 e!4085499)))

(declare-fun c!1256294 () Bool)

(assert (=> d!2125541 (= c!1256294 ((_ is Nil!65950) (t!379781 (_1!36869 lt!2442636))))))

(assert (=> d!2125541 (= (++!14745 (t!379781 (_1!36869 lt!2442636)) (_2!36869 lt!2442636)) lt!2442767)))

(assert (= (and d!2125541 c!1256294) b!6766433))

(assert (= (and d!2125541 (not c!1256294)) b!6766434))

(assert (= (and d!2125541 res!2766589) b!6766435))

(assert (= (and b!6766435 res!2766590) b!6766436))

(declare-fun m!7517420 () Bool)

(assert (=> b!6766434 m!7517420))

(declare-fun m!7517422 () Bool)

(assert (=> b!6766435 m!7517422))

(declare-fun m!7517424 () Bool)

(assert (=> b!6766435 m!7517424))

(assert (=> b!6766435 m!7517072))

(declare-fun m!7517426 () Bool)

(assert (=> d!2125541 m!7517426))

(declare-fun m!7517428 () Bool)

(assert (=> d!2125541 m!7517428))

(assert (=> d!2125541 m!7517078))

(assert (=> b!6765947 d!2125541))

(declare-fun d!2125543 () Bool)

(declare-fun nullableFct!2480 (Regex!16591) Bool)

(assert (=> d!2125543 (= (nullable!6574 r!7292) (nullableFct!2480 r!7292))))

(declare-fun bs!1800556 () Bool)

(assert (= bs!1800556 d!2125543))

(declare-fun m!7517430 () Bool)

(assert (=> bs!1800556 m!7517430))

(assert (=> b!6765844 d!2125543))

(declare-fun d!2125545 () Bool)

(assert (=> d!2125545 (= (nullable!6574 (reg!16920 r!7292)) (nullableFct!2480 (reg!16920 r!7292)))))

(declare-fun bs!1800558 () Bool)

(assert (= bs!1800558 d!2125545))

(declare-fun m!7517432 () Bool)

(assert (=> bs!1800558 m!7517432))

(assert (=> b!6765698 d!2125545))

(assert (=> d!2125349 d!2125397))

(assert (=> d!2125349 d!2125335))

(declare-fun d!2125547 () Bool)

(assert (=> d!2125547 (= (head!13602 (exprs!6475 (h!72397 zl!343))) (h!72396 (exprs!6475 (h!72397 zl!343))))))

(assert (=> b!6765917 d!2125547))

(declare-fun call!613045 () (InoxSet Context!11950))

(declare-fun c!1256295 () Bool)

(declare-fun c!1256299 () Bool)

(declare-fun bm!613038 () Bool)

(declare-fun c!1256298 () Bool)

(declare-fun call!613046 () List!66072)

(assert (=> bm!613038 (= call!613045 (derivationStepZipperDown!1819 (ite c!1256299 (regTwo!33695 (ite c!1256235 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292)))) (ite c!1256295 (regTwo!33694 (ite c!1256235 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292)))) (ite c!1256298 (regOne!33694 (ite c!1256235 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292)))) (reg!16920 (ite c!1256235 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292))))))) (ite (or c!1256299 c!1256295) (ite c!1256235 lt!2442639 (Context!11951 call!613004)) (Context!11951 call!613046)) (h!72398 s!2326)))))

(declare-fun bm!613039 () Bool)

(declare-fun call!613044 () List!66072)

(assert (=> bm!613039 (= call!613046 call!613044)))

(declare-fun bm!613040 () Bool)

(declare-fun call!613048 () (InoxSet Context!11950))

(assert (=> bm!613040 (= call!613048 call!613045)))

(declare-fun bm!613042 () Bool)

(declare-fun call!613047 () (InoxSet Context!11950))

(assert (=> bm!613042 (= call!613047 (derivationStepZipperDown!1819 (ite c!1256299 (regOne!33695 (ite c!1256235 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292)))) (regOne!33694 (ite c!1256235 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292))))) (ite c!1256299 (ite c!1256235 lt!2442639 (Context!11951 call!613004)) (Context!11951 call!613044)) (h!72398 s!2326)))))

(declare-fun b!6766437 () Bool)

(declare-fun e!4085501 () (InoxSet Context!11950))

(declare-fun call!613043 () (InoxSet Context!11950))

(assert (=> b!6766437 (= e!4085501 call!613043)))

(declare-fun e!4085504 () (InoxSet Context!11950))

(declare-fun b!6766438 () Bool)

(assert (=> b!6766438 (= e!4085504 (store ((as const (Array Context!11950 Bool)) false) (ite c!1256235 lt!2442639 (Context!11951 call!613004)) true))))

(declare-fun b!6766439 () Bool)

(declare-fun e!4085505 () (InoxSet Context!11950))

(assert (=> b!6766439 (= e!4085505 ((_ map or) call!613047 call!613048))))

(declare-fun b!6766440 () Bool)

(declare-fun e!4085503 () Bool)

(assert (=> b!6766440 (= c!1256295 e!4085503)))

(declare-fun res!2766591 () Bool)

(assert (=> b!6766440 (=> (not res!2766591) (not e!4085503))))

(assert (=> b!6766440 (= res!2766591 ((_ is Concat!25436) (ite c!1256235 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292)))))))

(declare-fun e!4085500 () (InoxSet Context!11950))

(assert (=> b!6766440 (= e!4085500 e!4085505)))

(declare-fun b!6766441 () Bool)

(declare-fun e!4085502 () (InoxSet Context!11950))

(assert (=> b!6766441 (= e!4085505 e!4085502)))

(assert (=> b!6766441 (= c!1256298 ((_ is Concat!25436) (ite c!1256235 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292)))))))

(declare-fun bm!613043 () Bool)

(assert (=> bm!613043 (= call!613043 call!613048)))

(declare-fun b!6766442 () Bool)

(declare-fun c!1256296 () Bool)

(assert (=> b!6766442 (= c!1256296 ((_ is Star!16591) (ite c!1256235 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292)))))))

(assert (=> b!6766442 (= e!4085502 e!4085501)))

(declare-fun b!6766443 () Bool)

(assert (=> b!6766443 (= e!4085503 (nullable!6574 (regOne!33694 (ite c!1256235 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292))))))))

(declare-fun b!6766444 () Bool)

(assert (=> b!6766444 (= e!4085500 ((_ map or) call!613047 call!613045))))

(declare-fun b!6766445 () Bool)

(assert (=> b!6766445 (= e!4085502 call!613043)))

(declare-fun c!1256297 () Bool)

(declare-fun d!2125549 () Bool)

(assert (=> d!2125549 (= c!1256297 (and ((_ is ElementMatch!16591) (ite c!1256235 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292)))) (= (c!1256003 (ite c!1256235 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292)))) (h!72398 s!2326))))))

(assert (=> d!2125549 (= (derivationStepZipperDown!1819 (ite c!1256235 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292))) (ite c!1256235 lt!2442639 (Context!11951 call!613004)) (h!72398 s!2326)) e!4085504)))

(declare-fun bm!613041 () Bool)

(assert (=> bm!613041 (= call!613044 ($colon$colon!2404 (exprs!6475 (ite c!1256235 lt!2442639 (Context!11951 call!613004))) (ite (or c!1256295 c!1256298) (regTwo!33694 (ite c!1256235 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292)))) (ite c!1256235 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292))))))))

(declare-fun b!6766446 () Bool)

(assert (=> b!6766446 (= e!4085504 e!4085500)))

(assert (=> b!6766446 (= c!1256299 ((_ is Union!16591) (ite c!1256235 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292)))))))

(declare-fun b!6766447 () Bool)

(assert (=> b!6766447 (= e!4085501 ((as const (Array Context!11950 Bool)) false))))

(assert (= (and d!2125549 c!1256297) b!6766438))

(assert (= (and d!2125549 (not c!1256297)) b!6766446))

(assert (= (and b!6766446 c!1256299) b!6766444))

(assert (= (and b!6766446 (not c!1256299)) b!6766440))

(assert (= (and b!6766440 res!2766591) b!6766443))

(assert (= (and b!6766440 c!1256295) b!6766439))

(assert (= (and b!6766440 (not c!1256295)) b!6766441))

(assert (= (and b!6766441 c!1256298) b!6766445))

(assert (= (and b!6766441 (not c!1256298)) b!6766442))

(assert (= (and b!6766442 c!1256296) b!6766437))

(assert (= (and b!6766442 (not c!1256296)) b!6766447))

(assert (= (or b!6766445 b!6766437) bm!613039))

(assert (= (or b!6766445 b!6766437) bm!613043))

(assert (= (or b!6766439 bm!613039) bm!613041))

(assert (= (or b!6766439 bm!613043) bm!613040))

(assert (= (or b!6766444 bm!613040) bm!613038))

(assert (= (or b!6766444 b!6766439) bm!613042))

(declare-fun m!7517434 () Bool)

(assert (=> bm!613041 m!7517434))

(declare-fun m!7517436 () Bool)

(assert (=> bm!613042 m!7517436))

(declare-fun m!7517438 () Bool)

(assert (=> b!6766438 m!7517438))

(declare-fun m!7517440 () Bool)

(assert (=> bm!613038 m!7517440))

(declare-fun m!7517442 () Bool)

(assert (=> b!6766443 m!7517442))

(assert (=> bm!613002 d!2125549))

(assert (=> d!2125317 d!2125311))

(assert (=> d!2125317 d!2125315))

(declare-fun d!2125551 () Bool)

(assert (=> d!2125551 (= (matchR!8774 (reg!16920 r!7292) (_1!36869 lt!2442636)) (matchZipper!2577 lt!2442622 (_1!36869 lt!2442636)))))

(assert (=> d!2125551 true))

(declare-fun _$44!1745 () Unit!159873)

(assert (=> d!2125551 (= (choose!50419 lt!2442622 lt!2442634 (reg!16920 r!7292) (_1!36869 lt!2442636)) _$44!1745)))

(declare-fun bs!1800573 () Bool)

(assert (= bs!1800573 d!2125551))

(assert (=> bs!1800573 m!7516596))

(assert (=> bs!1800573 m!7516636))

(assert (=> d!2125317 d!2125551))

(declare-fun b!6766448 () Bool)

(declare-fun e!4085507 () Bool)

(declare-fun call!613050 () Bool)

(assert (=> b!6766448 (= e!4085507 call!613050)))

(declare-fun b!6766449 () Bool)

(declare-fun res!2766596 () Bool)

(declare-fun e!4085510 () Bool)

(assert (=> b!6766449 (=> res!2766596 e!4085510)))

(assert (=> b!6766449 (= res!2766596 (not ((_ is Concat!25436) (reg!16920 r!7292))))))

(declare-fun e!4085512 () Bool)

(assert (=> b!6766449 (= e!4085512 e!4085510)))

(declare-fun c!1256301 () Bool)

(declare-fun bm!613044 () Bool)

(declare-fun c!1256300 () Bool)

(assert (=> bm!613044 (= call!613050 (validRegex!8327 (ite c!1256300 (reg!16920 (reg!16920 r!7292)) (ite c!1256301 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292))))))))

(declare-fun b!6766450 () Bool)

(declare-fun res!2766592 () Bool)

(declare-fun e!4085511 () Bool)

(assert (=> b!6766450 (=> (not res!2766592) (not e!4085511))))

(declare-fun call!613049 () Bool)

(assert (=> b!6766450 (= res!2766592 call!613049)))

(assert (=> b!6766450 (= e!4085512 e!4085511)))

(declare-fun d!2125553 () Bool)

(declare-fun res!2766594 () Bool)

(declare-fun e!4085509 () Bool)

(assert (=> d!2125553 (=> res!2766594 e!4085509)))

(assert (=> d!2125553 (= res!2766594 ((_ is ElementMatch!16591) (reg!16920 r!7292)))))

(assert (=> d!2125553 (= (validRegex!8327 (reg!16920 r!7292)) e!4085509)))

(declare-fun b!6766451 () Bool)

(declare-fun e!4085508 () Bool)

(assert (=> b!6766451 (= e!4085508 e!4085512)))

(assert (=> b!6766451 (= c!1256301 ((_ is Union!16591) (reg!16920 r!7292)))))

(declare-fun b!6766452 () Bool)

(declare-fun e!4085506 () Bool)

(declare-fun call!613051 () Bool)

(assert (=> b!6766452 (= e!4085506 call!613051)))

(declare-fun b!6766453 () Bool)

(assert (=> b!6766453 (= e!4085508 e!4085507)))

(declare-fun res!2766595 () Bool)

(assert (=> b!6766453 (= res!2766595 (not (nullable!6574 (reg!16920 (reg!16920 r!7292)))))))

(assert (=> b!6766453 (=> (not res!2766595) (not e!4085507))))

(declare-fun b!6766454 () Bool)

(assert (=> b!6766454 (= e!4085511 call!613051)))

(declare-fun bm!613045 () Bool)

(assert (=> bm!613045 (= call!613051 (validRegex!8327 (ite c!1256301 (regTwo!33695 (reg!16920 r!7292)) (regTwo!33694 (reg!16920 r!7292)))))))

(declare-fun b!6766455 () Bool)

(assert (=> b!6766455 (= e!4085510 e!4085506)))

(declare-fun res!2766593 () Bool)

(assert (=> b!6766455 (=> (not res!2766593) (not e!4085506))))

(assert (=> b!6766455 (= res!2766593 call!613049)))

(declare-fun bm!613046 () Bool)

(assert (=> bm!613046 (= call!613049 call!613050)))

(declare-fun b!6766456 () Bool)

(assert (=> b!6766456 (= e!4085509 e!4085508)))

(assert (=> b!6766456 (= c!1256300 ((_ is Star!16591) (reg!16920 r!7292)))))

(assert (= (and d!2125553 (not res!2766594)) b!6766456))

(assert (= (and b!6766456 c!1256300) b!6766453))

(assert (= (and b!6766456 (not c!1256300)) b!6766451))

(assert (= (and b!6766453 res!2766595) b!6766448))

(assert (= (and b!6766451 c!1256301) b!6766450))

(assert (= (and b!6766451 (not c!1256301)) b!6766449))

(assert (= (and b!6766450 res!2766592) b!6766454))

(assert (= (and b!6766449 (not res!2766596)) b!6766455))

(assert (= (and b!6766455 res!2766593) b!6766452))

(assert (= (or b!6766454 b!6766452) bm!613045))

(assert (= (or b!6766450 b!6766455) bm!613046))

(assert (= (or b!6766448 bm!613046) bm!613044))

(declare-fun m!7517450 () Bool)

(assert (=> bm!613044 m!7517450))

(declare-fun m!7517452 () Bool)

(assert (=> b!6766453 m!7517452))

(declare-fun m!7517454 () Bool)

(assert (=> bm!613045 m!7517454))

(assert (=> d!2125317 d!2125553))

(declare-fun d!2125557 () Bool)

(assert (=> d!2125557 (= (isEmpty!38306 (tail!12684 (_2!36869 lt!2442636))) ((_ is Nil!65950) (tail!12684 (_2!36869 lt!2442636))))))

(assert (=> b!6765411 d!2125557))

(declare-fun d!2125559 () Bool)

(assert (=> d!2125559 (= (tail!12684 (_2!36869 lt!2442636)) (t!379781 (_2!36869 lt!2442636)))))

(assert (=> b!6765411 d!2125559))

(declare-fun bs!1800574 () Bool)

(declare-fun b!6766459 () Bool)

(assert (= bs!1800574 (and b!6766459 d!2125393)))

(declare-fun lambda!380617 () Int)

(assert (=> bs!1800574 (not (= lambda!380617 lambda!380583))))

(declare-fun bs!1800575 () Bool)

(assert (= bs!1800575 (and b!6766459 b!6765810)))

(assert (=> bs!1800575 (not (= lambda!380617 lambda!380568))))

(assert (=> bs!1800574 (= (and (= (reg!16920 (regTwo!33695 lt!2442635)) (reg!16920 r!7292)) (= (regTwo!33695 lt!2442635) (Star!16591 (reg!16920 r!7292)))) (= lambda!380617 lambda!380586))))

(declare-fun bs!1800576 () Bool)

(assert (= bs!1800576 (and b!6766459 b!6765357)))

(assert (=> bs!1800576 (not (= lambda!380617 lambda!380522))))

(declare-fun bs!1800577 () Bool)

(assert (= bs!1800577 (and b!6766459 b!6765805)))

(assert (=> bs!1800577 (= (and (= (reg!16920 (regTwo!33695 lt!2442635)) (reg!16920 r!7292)) (= (regTwo!33695 lt!2442635) r!7292)) (= lambda!380617 lambda!380565))))

(declare-fun bs!1800578 () Bool)

(assert (= bs!1800578 (and b!6766459 b!6766162)))

(assert (=> bs!1800578 (not (= lambda!380617 lambda!380606))))

(declare-fun bs!1800579 () Bool)

(assert (= bs!1800579 (and b!6766459 d!2125425)))

(assert (=> bs!1800579 (not (= lambda!380617 lambda!380598))))

(declare-fun bs!1800580 () Bool)

(assert (= bs!1800580 (and b!6766459 d!2125401)))

(assert (=> bs!1800580 (not (= lambda!380617 lambda!380595))))

(declare-fun bs!1800581 () Bool)

(assert (= bs!1800581 (and b!6766459 b!6766157)))

(assert (=> bs!1800581 (= (and (= (reg!16920 (regTwo!33695 lt!2442635)) (reg!16920 lt!2442635)) (= (regTwo!33695 lt!2442635) lt!2442635)) (= lambda!380617 lambda!380605))))

(assert (=> bs!1800580 (not (= lambda!380617 lambda!380594))))

(assert (=> bs!1800576 (= (and (= (reg!16920 (regTwo!33695 lt!2442635)) (reg!16920 r!7292)) (= (regTwo!33695 lt!2442635) r!7292)) (= lambda!380617 lambda!380521))))

(assert (=> bs!1800576 (not (= lambda!380617 lambda!380520))))

(assert (=> b!6766459 true))

(assert (=> b!6766459 true))

(declare-fun bs!1800584 () Bool)

(declare-fun b!6766464 () Bool)

(assert (= bs!1800584 (and b!6766464 d!2125393)))

(declare-fun lambda!380618 () Int)

(assert (=> bs!1800584 (not (= lambda!380618 lambda!380583))))

(declare-fun bs!1800585 () Bool)

(assert (= bs!1800585 (and b!6766464 b!6765810)))

(assert (=> bs!1800585 (= (and (= (regOne!33694 (regTwo!33695 lt!2442635)) (regOne!33694 r!7292)) (= (regTwo!33694 (regTwo!33695 lt!2442635)) (regTwo!33694 r!7292))) (= lambda!380618 lambda!380568))))

(assert (=> bs!1800584 (not (= lambda!380618 lambda!380586))))

(declare-fun bs!1800586 () Bool)

(assert (= bs!1800586 (and b!6766464 b!6765357)))

(assert (=> bs!1800586 (= (and (= (regOne!33694 (regTwo!33695 lt!2442635)) (reg!16920 r!7292)) (= (regTwo!33694 (regTwo!33695 lt!2442635)) r!7292)) (= lambda!380618 lambda!380522))))

(declare-fun bs!1800587 () Bool)

(assert (= bs!1800587 (and b!6766464 b!6766162)))

(assert (=> bs!1800587 (= (and (= (regOne!33694 (regTwo!33695 lt!2442635)) (regOne!33694 lt!2442635)) (= (regTwo!33694 (regTwo!33695 lt!2442635)) (regTwo!33694 lt!2442635))) (= lambda!380618 lambda!380606))))

(declare-fun bs!1800588 () Bool)

(assert (= bs!1800588 (and b!6766464 d!2125425)))

(assert (=> bs!1800588 (not (= lambda!380618 lambda!380598))))

(declare-fun bs!1800589 () Bool)

(assert (= bs!1800589 (and b!6766464 d!2125401)))

(assert (=> bs!1800589 (= (and (= (regOne!33694 (regTwo!33695 lt!2442635)) (reg!16920 r!7292)) (= (regTwo!33694 (regTwo!33695 lt!2442635)) r!7292)) (= lambda!380618 lambda!380595))))

(declare-fun bs!1800590 () Bool)

(assert (= bs!1800590 (and b!6766464 b!6766157)))

(assert (=> bs!1800590 (not (= lambda!380618 lambda!380605))))

(assert (=> bs!1800589 (not (= lambda!380618 lambda!380594))))

(declare-fun bs!1800591 () Bool)

(assert (= bs!1800591 (and b!6766464 b!6765805)))

(assert (=> bs!1800591 (not (= lambda!380618 lambda!380565))))

(declare-fun bs!1800592 () Bool)

(assert (= bs!1800592 (and b!6766464 b!6766459)))

(assert (=> bs!1800592 (not (= lambda!380618 lambda!380617))))

(assert (=> bs!1800586 (not (= lambda!380618 lambda!380521))))

(assert (=> bs!1800586 (not (= lambda!380618 lambda!380520))))

(assert (=> b!6766464 true))

(assert (=> b!6766464 true))

(declare-fun b!6766457 () Bool)

(declare-fun e!4085516 () Bool)

(declare-fun call!613052 () Bool)

(assert (=> b!6766457 (= e!4085516 call!613052)))

(declare-fun bm!613047 () Bool)

(declare-fun call!613053 () Bool)

(declare-fun c!1256302 () Bool)

(assert (=> bm!613047 (= call!613053 (Exists!3659 (ite c!1256302 lambda!380617 lambda!380618)))))

(declare-fun b!6766458 () Bool)

(declare-fun e!4085514 () Bool)

(declare-fun e!4085519 () Bool)

(assert (=> b!6766458 (= e!4085514 e!4085519)))

(declare-fun res!2766598 () Bool)

(assert (=> b!6766458 (= res!2766598 (matchRSpec!3692 (regOne!33695 (regTwo!33695 lt!2442635)) s!2326))))

(assert (=> b!6766458 (=> res!2766598 e!4085519)))

(declare-fun e!4085513 () Bool)

(assert (=> b!6766459 (= e!4085513 call!613053)))

(declare-fun b!6766460 () Bool)

(declare-fun e!4085518 () Bool)

(assert (=> b!6766460 (= e!4085516 e!4085518)))

(declare-fun res!2766597 () Bool)

(assert (=> b!6766460 (= res!2766597 (not ((_ is EmptyLang!16591) (regTwo!33695 lt!2442635))))))

(assert (=> b!6766460 (=> (not res!2766597) (not e!4085518))))

(declare-fun b!6766461 () Bool)

(declare-fun e!4085515 () Bool)

(assert (=> b!6766461 (= e!4085515 (= s!2326 (Cons!65950 (c!1256003 (regTwo!33695 lt!2442635)) Nil!65950)))))

(declare-fun b!6766462 () Bool)

(assert (=> b!6766462 (= e!4085519 (matchRSpec!3692 (regTwo!33695 (regTwo!33695 lt!2442635)) s!2326))))

(declare-fun d!2125563 () Bool)

(declare-fun c!1256304 () Bool)

(assert (=> d!2125563 (= c!1256304 ((_ is EmptyExpr!16591) (regTwo!33695 lt!2442635)))))

(assert (=> d!2125563 (= (matchRSpec!3692 (regTwo!33695 lt!2442635) s!2326) e!4085516)))

(declare-fun bm!613048 () Bool)

(assert (=> bm!613048 (= call!613052 (isEmpty!38306 s!2326))))

(declare-fun b!6766463 () Bool)

(declare-fun c!1256303 () Bool)

(assert (=> b!6766463 (= c!1256303 ((_ is Union!16591) (regTwo!33695 lt!2442635)))))

(assert (=> b!6766463 (= e!4085515 e!4085514)))

(declare-fun e!4085517 () Bool)

(assert (=> b!6766464 (= e!4085517 call!613053)))

(declare-fun b!6766465 () Bool)

(declare-fun res!2766599 () Bool)

(assert (=> b!6766465 (=> res!2766599 e!4085513)))

(assert (=> b!6766465 (= res!2766599 call!613052)))

(assert (=> b!6766465 (= e!4085517 e!4085513)))

(declare-fun b!6766466 () Bool)

(declare-fun c!1256305 () Bool)

(assert (=> b!6766466 (= c!1256305 ((_ is ElementMatch!16591) (regTwo!33695 lt!2442635)))))

(assert (=> b!6766466 (= e!4085518 e!4085515)))

(declare-fun b!6766467 () Bool)

(assert (=> b!6766467 (= e!4085514 e!4085517)))

(assert (=> b!6766467 (= c!1256302 ((_ is Star!16591) (regTwo!33695 lt!2442635)))))

(assert (= (and d!2125563 c!1256304) b!6766457))

(assert (= (and d!2125563 (not c!1256304)) b!6766460))

(assert (= (and b!6766460 res!2766597) b!6766466))

(assert (= (and b!6766466 c!1256305) b!6766461))

(assert (= (and b!6766466 (not c!1256305)) b!6766463))

(assert (= (and b!6766463 c!1256303) b!6766458))

(assert (= (and b!6766463 (not c!1256303)) b!6766467))

(assert (= (and b!6766458 (not res!2766598)) b!6766462))

(assert (= (and b!6766467 c!1256302) b!6766465))

(assert (= (and b!6766467 (not c!1256302)) b!6766464))

(assert (= (and b!6766465 (not res!2766599)) b!6766459))

(assert (= (or b!6766459 b!6766464) bm!613047))

(assert (= (or b!6766457 b!6766465) bm!613048))

(declare-fun m!7517470 () Bool)

(assert (=> bm!613047 m!7517470))

(declare-fun m!7517472 () Bool)

(assert (=> b!6766458 m!7517472))

(declare-fun m!7517474 () Bool)

(assert (=> b!6766462 m!7517474))

(assert (=> bm!613048 m!7516556))

(assert (=> b!6766160 d!2125563))

(declare-fun d!2125571 () Bool)

(assert (=> d!2125571 true))

(assert (=> d!2125571 true))

(declare-fun res!2766603 () Bool)

(assert (=> d!2125571 (= (choose!50417 lambda!380521) res!2766603)))

(assert (=> d!2125275 d!2125571))

(declare-fun b!6766479 () Bool)

(declare-fun e!4085527 () Bool)

(declare-fun call!613061 () Bool)

(assert (=> b!6766479 (= e!4085527 call!613061)))

(declare-fun b!6766480 () Bool)

(declare-fun res!2766608 () Bool)

(declare-fun e!4085530 () Bool)

(assert (=> b!6766480 (=> res!2766608 e!4085530)))

(assert (=> b!6766480 (= res!2766608 (not ((_ is Concat!25436) lt!2442744)))))

(declare-fun e!4085532 () Bool)

(assert (=> b!6766480 (= e!4085532 e!4085530)))

(declare-fun bm!613055 () Bool)

(declare-fun c!1256311 () Bool)

(declare-fun c!1256312 () Bool)

(assert (=> bm!613055 (= call!613061 (validRegex!8327 (ite c!1256311 (reg!16920 lt!2442744) (ite c!1256312 (regOne!33695 lt!2442744) (regOne!33694 lt!2442744)))))))

(declare-fun b!6766481 () Bool)

(declare-fun res!2766604 () Bool)

(declare-fun e!4085531 () Bool)

(assert (=> b!6766481 (=> (not res!2766604) (not e!4085531))))

(declare-fun call!613060 () Bool)

(assert (=> b!6766481 (= res!2766604 call!613060)))

(assert (=> b!6766481 (= e!4085532 e!4085531)))

(declare-fun d!2125573 () Bool)

(declare-fun res!2766606 () Bool)

(declare-fun e!4085529 () Bool)

(assert (=> d!2125573 (=> res!2766606 e!4085529)))

(assert (=> d!2125573 (= res!2766606 ((_ is ElementMatch!16591) lt!2442744))))

(assert (=> d!2125573 (= (validRegex!8327 lt!2442744) e!4085529)))

(declare-fun b!6766482 () Bool)

(declare-fun e!4085528 () Bool)

(assert (=> b!6766482 (= e!4085528 e!4085532)))

(assert (=> b!6766482 (= c!1256312 ((_ is Union!16591) lt!2442744))))

(declare-fun b!6766483 () Bool)

(declare-fun e!4085526 () Bool)

(declare-fun call!613062 () Bool)

(assert (=> b!6766483 (= e!4085526 call!613062)))

(declare-fun b!6766484 () Bool)

(assert (=> b!6766484 (= e!4085528 e!4085527)))

(declare-fun res!2766607 () Bool)

(assert (=> b!6766484 (= res!2766607 (not (nullable!6574 (reg!16920 lt!2442744))))))

(assert (=> b!6766484 (=> (not res!2766607) (not e!4085527))))

(declare-fun b!6766485 () Bool)

(assert (=> b!6766485 (= e!4085531 call!613062)))

(declare-fun bm!613056 () Bool)

(assert (=> bm!613056 (= call!613062 (validRegex!8327 (ite c!1256312 (regTwo!33695 lt!2442744) (regTwo!33694 lt!2442744))))))

(declare-fun b!6766486 () Bool)

(assert (=> b!6766486 (= e!4085530 e!4085526)))

(declare-fun res!2766605 () Bool)

(assert (=> b!6766486 (=> (not res!2766605) (not e!4085526))))

(assert (=> b!6766486 (= res!2766605 call!613060)))

(declare-fun bm!613057 () Bool)

(assert (=> bm!613057 (= call!613060 call!613061)))

(declare-fun b!6766487 () Bool)

(assert (=> b!6766487 (= e!4085529 e!4085528)))

(assert (=> b!6766487 (= c!1256311 ((_ is Star!16591) lt!2442744))))

(assert (= (and d!2125573 (not res!2766606)) b!6766487))

(assert (= (and b!6766487 c!1256311) b!6766484))

(assert (= (and b!6766487 (not c!1256311)) b!6766482))

(assert (= (and b!6766484 res!2766607) b!6766479))

(assert (= (and b!6766482 c!1256312) b!6766481))

(assert (= (and b!6766482 (not c!1256312)) b!6766480))

(assert (= (and b!6766481 res!2766604) b!6766485))

(assert (= (and b!6766480 (not res!2766608)) b!6766486))

(assert (= (and b!6766486 res!2766605) b!6766483))

(assert (= (or b!6766485 b!6766483) bm!613056))

(assert (= (or b!6766481 b!6766486) bm!613057))

(assert (= (or b!6766479 bm!613057) bm!613055))

(declare-fun m!7517476 () Bool)

(assert (=> bm!613055 m!7517476))

(declare-fun m!7517478 () Bool)

(assert (=> b!6766484 m!7517478))

(declare-fun m!7517480 () Bool)

(assert (=> bm!613056 m!7517480))

(assert (=> d!2125429 d!2125573))

(declare-fun bs!1800593 () Bool)

(declare-fun d!2125575 () Bool)

(assert (= bs!1800593 (and d!2125575 d!2125431)))

(declare-fun lambda!380619 () Int)

(assert (=> bs!1800593 (= lambda!380619 lambda!380601)))

(declare-fun bs!1800594 () Bool)

(assert (= bs!1800594 (and d!2125575 d!2125525)))

(assert (=> bs!1800594 (= lambda!380619 lambda!380614)))

(declare-fun bs!1800595 () Bool)

(assert (= bs!1800595 (and d!2125575 d!2125361)))

(assert (=> bs!1800595 (= lambda!380619 lambda!380574)))

(declare-fun bs!1800596 () Bool)

(assert (= bs!1800596 (and d!2125575 d!2125433)))

(assert (=> bs!1800596 (= lambda!380619 lambda!380604)))

(declare-fun bs!1800597 () Bool)

(assert (= bs!1800597 (and d!2125575 d!2125239)))

(assert (=> bs!1800597 (= lambda!380619 lambda!380526)))

(declare-fun bs!1800598 () Bool)

(assert (= bs!1800598 (and d!2125575 d!2125459)))

(assert (=> bs!1800598 (= lambda!380619 lambda!380607)))

(declare-fun bs!1800599 () Bool)

(assert (= bs!1800599 (and d!2125575 d!2125313)))

(assert (=> bs!1800599 (= lambda!380619 lambda!380553)))

(declare-fun b!6766488 () Bool)

(declare-fun e!4085535 () Bool)

(assert (=> b!6766488 (= e!4085535 (isEmpty!38309 (t!379779 (unfocusZipperList!2012 (Cons!65949 lt!2442639 Nil!65949)))))))

(declare-fun b!6766489 () Bool)

(declare-fun e!4085533 () Bool)

(declare-fun lt!2442768 () Regex!16591)

(assert (=> b!6766489 (= e!4085533 (= lt!2442768 (head!13602 (unfocusZipperList!2012 (Cons!65949 lt!2442639 Nil!65949)))))))

(declare-fun b!6766490 () Bool)

(declare-fun e!4085537 () Bool)

(declare-fun e!4085536 () Bool)

(assert (=> b!6766490 (= e!4085537 e!4085536)))

(declare-fun c!1256314 () Bool)

(assert (=> b!6766490 (= c!1256314 (isEmpty!38309 (unfocusZipperList!2012 (Cons!65949 lt!2442639 Nil!65949))))))

(declare-fun b!6766491 () Bool)

(declare-fun e!4085534 () Regex!16591)

(assert (=> b!6766491 (= e!4085534 (Union!16591 (h!72396 (unfocusZipperList!2012 (Cons!65949 lt!2442639 Nil!65949))) (generalisedUnion!2435 (t!379779 (unfocusZipperList!2012 (Cons!65949 lt!2442639 Nil!65949))))))))

(declare-fun b!6766492 () Bool)

(declare-fun e!4085538 () Regex!16591)

(assert (=> b!6766492 (= e!4085538 e!4085534)))

(declare-fun c!1256313 () Bool)

(assert (=> b!6766492 (= c!1256313 ((_ is Cons!65948) (unfocusZipperList!2012 (Cons!65949 lt!2442639 Nil!65949))))))

(declare-fun b!6766493 () Bool)

(assert (=> b!6766493 (= e!4085536 e!4085533)))

(declare-fun c!1256316 () Bool)

(assert (=> b!6766493 (= c!1256316 (isEmpty!38309 (tail!12687 (unfocusZipperList!2012 (Cons!65949 lt!2442639 Nil!65949)))))))

(assert (=> d!2125575 e!4085537))

(declare-fun res!2766610 () Bool)

(assert (=> d!2125575 (=> (not res!2766610) (not e!4085537))))

(assert (=> d!2125575 (= res!2766610 (validRegex!8327 lt!2442768))))

(assert (=> d!2125575 (= lt!2442768 e!4085538)))

(declare-fun c!1256315 () Bool)

(assert (=> d!2125575 (= c!1256315 e!4085535)))

(declare-fun res!2766609 () Bool)

(assert (=> d!2125575 (=> (not res!2766609) (not e!4085535))))

(assert (=> d!2125575 (= res!2766609 ((_ is Cons!65948) (unfocusZipperList!2012 (Cons!65949 lt!2442639 Nil!65949))))))

(assert (=> d!2125575 (forall!15787 (unfocusZipperList!2012 (Cons!65949 lt!2442639 Nil!65949)) lambda!380619)))

(assert (=> d!2125575 (= (generalisedUnion!2435 (unfocusZipperList!2012 (Cons!65949 lt!2442639 Nil!65949))) lt!2442768)))

(declare-fun b!6766494 () Bool)

(assert (=> b!6766494 (= e!4085534 EmptyLang!16591)))

(declare-fun b!6766495 () Bool)

(assert (=> b!6766495 (= e!4085536 (isEmptyLang!1961 lt!2442768))))

(declare-fun b!6766496 () Bool)

(assert (=> b!6766496 (= e!4085533 (isUnion!1391 lt!2442768))))

(declare-fun b!6766497 () Bool)

(assert (=> b!6766497 (= e!4085538 (h!72396 (unfocusZipperList!2012 (Cons!65949 lt!2442639 Nil!65949))))))

(assert (= (and d!2125575 res!2766609) b!6766488))

(assert (= (and d!2125575 c!1256315) b!6766497))

(assert (= (and d!2125575 (not c!1256315)) b!6766492))

(assert (= (and b!6766492 c!1256313) b!6766491))

(assert (= (and b!6766492 (not c!1256313)) b!6766494))

(assert (= (and d!2125575 res!2766610) b!6766490))

(assert (= (and b!6766490 c!1256314) b!6766495))

(assert (= (and b!6766490 (not c!1256314)) b!6766493))

(assert (= (and b!6766493 c!1256316) b!6766489))

(assert (= (and b!6766493 (not c!1256316)) b!6766496))

(declare-fun m!7517482 () Bool)

(assert (=> b!6766491 m!7517482))

(assert (=> b!6766489 m!7517188))

(declare-fun m!7517484 () Bool)

(assert (=> b!6766489 m!7517484))

(declare-fun m!7517486 () Bool)

(assert (=> b!6766496 m!7517486))

(declare-fun m!7517488 () Bool)

(assert (=> b!6766488 m!7517488))

(declare-fun m!7517490 () Bool)

(assert (=> d!2125575 m!7517490))

(assert (=> d!2125575 m!7517188))

(declare-fun m!7517492 () Bool)

(assert (=> d!2125575 m!7517492))

(declare-fun m!7517494 () Bool)

(assert (=> b!6766495 m!7517494))

(assert (=> b!6766490 m!7517188))

(declare-fun m!7517496 () Bool)

(assert (=> b!6766490 m!7517496))

(assert (=> b!6766493 m!7517188))

(declare-fun m!7517498 () Bool)

(assert (=> b!6766493 m!7517498))

(assert (=> b!6766493 m!7517498))

(declare-fun m!7517500 () Bool)

(assert (=> b!6766493 m!7517500))

(assert (=> d!2125429 d!2125575))

(declare-fun bs!1800600 () Bool)

(declare-fun d!2125577 () Bool)

(assert (= bs!1800600 (and d!2125577 d!2125431)))

(declare-fun lambda!380622 () Int)

(assert (=> bs!1800600 (= lambda!380622 lambda!380601)))

(declare-fun bs!1800601 () Bool)

(assert (= bs!1800601 (and d!2125577 d!2125525)))

(assert (=> bs!1800601 (= lambda!380622 lambda!380614)))

(declare-fun bs!1800602 () Bool)

(assert (= bs!1800602 (and d!2125577 d!2125575)))

(assert (=> bs!1800602 (= lambda!380622 lambda!380619)))

(declare-fun bs!1800603 () Bool)

(assert (= bs!1800603 (and d!2125577 d!2125361)))

(assert (=> bs!1800603 (= lambda!380622 lambda!380574)))

(declare-fun bs!1800604 () Bool)

(assert (= bs!1800604 (and d!2125577 d!2125433)))

(assert (=> bs!1800604 (= lambda!380622 lambda!380604)))

(declare-fun bs!1800605 () Bool)

(assert (= bs!1800605 (and d!2125577 d!2125239)))

(assert (=> bs!1800605 (= lambda!380622 lambda!380526)))

(declare-fun bs!1800606 () Bool)

(assert (= bs!1800606 (and d!2125577 d!2125459)))

(assert (=> bs!1800606 (= lambda!380622 lambda!380607)))

(declare-fun bs!1800607 () Bool)

(assert (= bs!1800607 (and d!2125577 d!2125313)))

(assert (=> bs!1800607 (= lambda!380622 lambda!380553)))

(declare-fun lt!2442769 () List!66072)

(assert (=> d!2125577 (forall!15787 lt!2442769 lambda!380622)))

(declare-fun e!4085541 () List!66072)

(assert (=> d!2125577 (= lt!2442769 e!4085541)))

(declare-fun c!1256317 () Bool)

(assert (=> d!2125577 (= c!1256317 ((_ is Cons!65949) (Cons!65949 lt!2442639 Nil!65949)))))

(assert (=> d!2125577 (= (unfocusZipperList!2012 (Cons!65949 lt!2442639 Nil!65949)) lt!2442769)))

(declare-fun b!6766502 () Bool)

(assert (=> b!6766502 (= e!4085541 (Cons!65948 (generalisedConcat!2188 (exprs!6475 (h!72397 (Cons!65949 lt!2442639 Nil!65949)))) (unfocusZipperList!2012 (t!379780 (Cons!65949 lt!2442639 Nil!65949)))))))

(declare-fun b!6766503 () Bool)

(assert (=> b!6766503 (= e!4085541 Nil!65948)))

(assert (= (and d!2125577 c!1256317) b!6766502))

(assert (= (and d!2125577 (not c!1256317)) b!6766503))

(declare-fun m!7517502 () Bool)

(assert (=> d!2125577 m!7517502))

(declare-fun m!7517504 () Bool)

(assert (=> b!6766502 m!7517504))

(declare-fun m!7517506 () Bool)

(assert (=> b!6766502 m!7517506))

(assert (=> d!2125429 d!2125577))

(declare-fun c!1256318 () Bool)

(declare-fun c!1256321 () Bool)

(declare-fun bm!613058 () Bool)

(declare-fun call!613065 () (InoxSet Context!11950))

(declare-fun call!613066 () List!66072)

(declare-fun c!1256322 () Bool)

(assert (=> bm!613058 (= call!613065 (derivationStepZipperDown!1819 (ite c!1256322 (regTwo!33695 (h!72396 (exprs!6475 lt!2442639))) (ite c!1256318 (regTwo!33694 (h!72396 (exprs!6475 lt!2442639))) (ite c!1256321 (regOne!33694 (h!72396 (exprs!6475 lt!2442639))) (reg!16920 (h!72396 (exprs!6475 lt!2442639)))))) (ite (or c!1256322 c!1256318) (Context!11951 (t!379779 (exprs!6475 lt!2442639))) (Context!11951 call!613066)) (h!72398 s!2326)))))

(declare-fun bm!613059 () Bool)

(declare-fun call!613064 () List!66072)

(assert (=> bm!613059 (= call!613066 call!613064)))

(declare-fun bm!613060 () Bool)

(declare-fun call!613068 () (InoxSet Context!11950))

(assert (=> bm!613060 (= call!613068 call!613065)))

(declare-fun call!613067 () (InoxSet Context!11950))

(declare-fun bm!613062 () Bool)

(assert (=> bm!613062 (= call!613067 (derivationStepZipperDown!1819 (ite c!1256322 (regOne!33695 (h!72396 (exprs!6475 lt!2442639))) (regOne!33694 (h!72396 (exprs!6475 lt!2442639)))) (ite c!1256322 (Context!11951 (t!379779 (exprs!6475 lt!2442639))) (Context!11951 call!613064)) (h!72398 s!2326)))))

(declare-fun b!6766504 () Bool)

(declare-fun e!4085543 () (InoxSet Context!11950))

(declare-fun call!613063 () (InoxSet Context!11950))

(assert (=> b!6766504 (= e!4085543 call!613063)))

(declare-fun b!6766505 () Bool)

(declare-fun e!4085546 () (InoxSet Context!11950))

(assert (=> b!6766505 (= e!4085546 (store ((as const (Array Context!11950 Bool)) false) (Context!11951 (t!379779 (exprs!6475 lt!2442639))) true))))

(declare-fun b!6766506 () Bool)

(declare-fun e!4085547 () (InoxSet Context!11950))

(assert (=> b!6766506 (= e!4085547 ((_ map or) call!613067 call!613068))))

(declare-fun b!6766507 () Bool)

(declare-fun e!4085545 () Bool)

(assert (=> b!6766507 (= c!1256318 e!4085545)))

(declare-fun res!2766615 () Bool)

(assert (=> b!6766507 (=> (not res!2766615) (not e!4085545))))

(assert (=> b!6766507 (= res!2766615 ((_ is Concat!25436) (h!72396 (exprs!6475 lt!2442639))))))

(declare-fun e!4085542 () (InoxSet Context!11950))

(assert (=> b!6766507 (= e!4085542 e!4085547)))

(declare-fun b!6766508 () Bool)

(declare-fun e!4085544 () (InoxSet Context!11950))

(assert (=> b!6766508 (= e!4085547 e!4085544)))

(assert (=> b!6766508 (= c!1256321 ((_ is Concat!25436) (h!72396 (exprs!6475 lt!2442639))))))

(declare-fun bm!613063 () Bool)

(assert (=> bm!613063 (= call!613063 call!613068)))

(declare-fun b!6766509 () Bool)

(declare-fun c!1256319 () Bool)

(assert (=> b!6766509 (= c!1256319 ((_ is Star!16591) (h!72396 (exprs!6475 lt!2442639))))))

(assert (=> b!6766509 (= e!4085544 e!4085543)))

(declare-fun b!6766510 () Bool)

(assert (=> b!6766510 (= e!4085545 (nullable!6574 (regOne!33694 (h!72396 (exprs!6475 lt!2442639)))))))

(declare-fun b!6766511 () Bool)

(assert (=> b!6766511 (= e!4085542 ((_ map or) call!613067 call!613065))))

(declare-fun b!6766512 () Bool)

(assert (=> b!6766512 (= e!4085544 call!613063)))

(declare-fun d!2125579 () Bool)

(declare-fun c!1256320 () Bool)

(assert (=> d!2125579 (= c!1256320 (and ((_ is ElementMatch!16591) (h!72396 (exprs!6475 lt!2442639))) (= (c!1256003 (h!72396 (exprs!6475 lt!2442639))) (h!72398 s!2326))))))

(assert (=> d!2125579 (= (derivationStepZipperDown!1819 (h!72396 (exprs!6475 lt!2442639)) (Context!11951 (t!379779 (exprs!6475 lt!2442639))) (h!72398 s!2326)) e!4085546)))

(declare-fun bm!613061 () Bool)

(assert (=> bm!613061 (= call!613064 ($colon$colon!2404 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442639)))) (ite (or c!1256318 c!1256321) (regTwo!33694 (h!72396 (exprs!6475 lt!2442639))) (h!72396 (exprs!6475 lt!2442639)))))))

(declare-fun b!6766513 () Bool)

(assert (=> b!6766513 (= e!4085546 e!4085542)))

(assert (=> b!6766513 (= c!1256322 ((_ is Union!16591) (h!72396 (exprs!6475 lt!2442639))))))

(declare-fun b!6766514 () Bool)

(assert (=> b!6766514 (= e!4085543 ((as const (Array Context!11950 Bool)) false))))

(assert (= (and d!2125579 c!1256320) b!6766505))

(assert (= (and d!2125579 (not c!1256320)) b!6766513))

(assert (= (and b!6766513 c!1256322) b!6766511))

(assert (= (and b!6766513 (not c!1256322)) b!6766507))

(assert (= (and b!6766507 res!2766615) b!6766510))

(assert (= (and b!6766507 c!1256318) b!6766506))

(assert (= (and b!6766507 (not c!1256318)) b!6766508))

(assert (= (and b!6766508 c!1256321) b!6766512))

(assert (= (and b!6766508 (not c!1256321)) b!6766509))

(assert (= (and b!6766509 c!1256319) b!6766504))

(assert (= (and b!6766509 (not c!1256319)) b!6766514))

(assert (= (or b!6766512 b!6766504) bm!613059))

(assert (= (or b!6766512 b!6766504) bm!613063))

(assert (= (or b!6766506 bm!613059) bm!613061))

(assert (= (or b!6766506 bm!613063) bm!613060))

(assert (= (or b!6766511 bm!613060) bm!613058))

(assert (= (or b!6766511 b!6766506) bm!613062))

(declare-fun m!7517508 () Bool)

(assert (=> bm!613061 m!7517508))

(declare-fun m!7517510 () Bool)

(assert (=> bm!613062 m!7517510))

(declare-fun m!7517512 () Bool)

(assert (=> b!6766505 m!7517512))

(declare-fun m!7517514 () Bool)

(assert (=> bm!613058 m!7517514))

(declare-fun m!7517516 () Bool)

(assert (=> b!6766510 m!7517516))

(assert (=> bm!612903 d!2125579))

(declare-fun c!1256326 () Bool)

(declare-fun c!1256327 () Bool)

(declare-fun call!613072 () List!66072)

(declare-fun call!613071 () (InoxSet Context!11950))

(declare-fun c!1256323 () Bool)

(declare-fun bm!613064 () Bool)

(assert (=> bm!613064 (= call!613071 (derivationStepZipperDown!1819 (ite c!1256327 (regTwo!33695 (ite c!1256235 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256231 (regTwo!33694 (reg!16920 r!7292)) (ite c!1256234 (regOne!33694 (reg!16920 r!7292)) (reg!16920 (reg!16920 r!7292)))))) (ite c!1256323 (regTwo!33694 (ite c!1256235 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256231 (regTwo!33694 (reg!16920 r!7292)) (ite c!1256234 (regOne!33694 (reg!16920 r!7292)) (reg!16920 (reg!16920 r!7292)))))) (ite c!1256326 (regOne!33694 (ite c!1256235 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256231 (regTwo!33694 (reg!16920 r!7292)) (ite c!1256234 (regOne!33694 (reg!16920 r!7292)) (reg!16920 (reg!16920 r!7292)))))) (reg!16920 (ite c!1256235 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256231 (regTwo!33694 (reg!16920 r!7292)) (ite c!1256234 (regOne!33694 (reg!16920 r!7292)) (reg!16920 (reg!16920 r!7292))))))))) (ite (or c!1256327 c!1256323) (ite (or c!1256235 c!1256231) lt!2442639 (Context!11951 call!613006)) (Context!11951 call!613072)) (h!72398 s!2326)))))

(declare-fun bm!613065 () Bool)

(declare-fun call!613070 () List!66072)

(assert (=> bm!613065 (= call!613072 call!613070)))

(declare-fun bm!613066 () Bool)

(declare-fun call!613074 () (InoxSet Context!11950))

(assert (=> bm!613066 (= call!613074 call!613071)))

(declare-fun call!613073 () (InoxSet Context!11950))

(declare-fun bm!613068 () Bool)

(assert (=> bm!613068 (= call!613073 (derivationStepZipperDown!1819 (ite c!1256327 (regOne!33695 (ite c!1256235 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256231 (regTwo!33694 (reg!16920 r!7292)) (ite c!1256234 (regOne!33694 (reg!16920 r!7292)) (reg!16920 (reg!16920 r!7292)))))) (regOne!33694 (ite c!1256235 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256231 (regTwo!33694 (reg!16920 r!7292)) (ite c!1256234 (regOne!33694 (reg!16920 r!7292)) (reg!16920 (reg!16920 r!7292))))))) (ite c!1256327 (ite (or c!1256235 c!1256231) lt!2442639 (Context!11951 call!613006)) (Context!11951 call!613070)) (h!72398 s!2326)))))

(declare-fun b!6766519 () Bool)

(declare-fun e!4085551 () (InoxSet Context!11950))

(declare-fun call!613069 () (InoxSet Context!11950))

(assert (=> b!6766519 (= e!4085551 call!613069)))

(declare-fun b!6766520 () Bool)

(declare-fun e!4085554 () (InoxSet Context!11950))

(assert (=> b!6766520 (= e!4085554 (store ((as const (Array Context!11950 Bool)) false) (ite (or c!1256235 c!1256231) lt!2442639 (Context!11951 call!613006)) true))))

(declare-fun b!6766521 () Bool)

(declare-fun e!4085555 () (InoxSet Context!11950))

(assert (=> b!6766521 (= e!4085555 ((_ map or) call!613073 call!613074))))

(declare-fun b!6766522 () Bool)

(declare-fun e!4085553 () Bool)

(assert (=> b!6766522 (= c!1256323 e!4085553)))

(declare-fun res!2766620 () Bool)

(assert (=> b!6766522 (=> (not res!2766620) (not e!4085553))))

(assert (=> b!6766522 (= res!2766620 ((_ is Concat!25436) (ite c!1256235 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256231 (regTwo!33694 (reg!16920 r!7292)) (ite c!1256234 (regOne!33694 (reg!16920 r!7292)) (reg!16920 (reg!16920 r!7292)))))))))

(declare-fun e!4085550 () (InoxSet Context!11950))

(assert (=> b!6766522 (= e!4085550 e!4085555)))

(declare-fun b!6766523 () Bool)

(declare-fun e!4085552 () (InoxSet Context!11950))

(assert (=> b!6766523 (= e!4085555 e!4085552)))

(assert (=> b!6766523 (= c!1256326 ((_ is Concat!25436) (ite c!1256235 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256231 (regTwo!33694 (reg!16920 r!7292)) (ite c!1256234 (regOne!33694 (reg!16920 r!7292)) (reg!16920 (reg!16920 r!7292)))))))))

(declare-fun bm!613069 () Bool)

(assert (=> bm!613069 (= call!613069 call!613074)))

(declare-fun b!6766524 () Bool)

(declare-fun c!1256324 () Bool)

(assert (=> b!6766524 (= c!1256324 ((_ is Star!16591) (ite c!1256235 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256231 (regTwo!33694 (reg!16920 r!7292)) (ite c!1256234 (regOne!33694 (reg!16920 r!7292)) (reg!16920 (reg!16920 r!7292)))))))))

(assert (=> b!6766524 (= e!4085552 e!4085551)))

(declare-fun b!6766525 () Bool)

(assert (=> b!6766525 (= e!4085553 (nullable!6574 (regOne!33694 (ite c!1256235 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256231 (regTwo!33694 (reg!16920 r!7292)) (ite c!1256234 (regOne!33694 (reg!16920 r!7292)) (reg!16920 (reg!16920 r!7292))))))))))

(declare-fun b!6766526 () Bool)

(assert (=> b!6766526 (= e!4085550 ((_ map or) call!613073 call!613071))))

(declare-fun b!6766527 () Bool)

(assert (=> b!6766527 (= e!4085552 call!613069)))

(declare-fun d!2125581 () Bool)

(declare-fun c!1256325 () Bool)

(assert (=> d!2125581 (= c!1256325 (and ((_ is ElementMatch!16591) (ite c!1256235 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256231 (regTwo!33694 (reg!16920 r!7292)) (ite c!1256234 (regOne!33694 (reg!16920 r!7292)) (reg!16920 (reg!16920 r!7292)))))) (= (c!1256003 (ite c!1256235 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256231 (regTwo!33694 (reg!16920 r!7292)) (ite c!1256234 (regOne!33694 (reg!16920 r!7292)) (reg!16920 (reg!16920 r!7292)))))) (h!72398 s!2326))))))

(assert (=> d!2125581 (= (derivationStepZipperDown!1819 (ite c!1256235 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256231 (regTwo!33694 (reg!16920 r!7292)) (ite c!1256234 (regOne!33694 (reg!16920 r!7292)) (reg!16920 (reg!16920 r!7292))))) (ite (or c!1256235 c!1256231) lt!2442639 (Context!11951 call!613006)) (h!72398 s!2326)) e!4085554)))

(declare-fun bm!613067 () Bool)

(assert (=> bm!613067 (= call!613070 ($colon$colon!2404 (exprs!6475 (ite (or c!1256235 c!1256231) lt!2442639 (Context!11951 call!613006))) (ite (or c!1256323 c!1256326) (regTwo!33694 (ite c!1256235 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256231 (regTwo!33694 (reg!16920 r!7292)) (ite c!1256234 (regOne!33694 (reg!16920 r!7292)) (reg!16920 (reg!16920 r!7292)))))) (ite c!1256235 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256231 (regTwo!33694 (reg!16920 r!7292)) (ite c!1256234 (regOne!33694 (reg!16920 r!7292)) (reg!16920 (reg!16920 r!7292))))))))))

(declare-fun b!6766528 () Bool)

(assert (=> b!6766528 (= e!4085554 e!4085550)))

(assert (=> b!6766528 (= c!1256327 ((_ is Union!16591) (ite c!1256235 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256231 (regTwo!33694 (reg!16920 r!7292)) (ite c!1256234 (regOne!33694 (reg!16920 r!7292)) (reg!16920 (reg!16920 r!7292)))))))))

(declare-fun b!6766529 () Bool)

(assert (=> b!6766529 (= e!4085551 ((as const (Array Context!11950 Bool)) false))))

(assert (= (and d!2125581 c!1256325) b!6766520))

(assert (= (and d!2125581 (not c!1256325)) b!6766528))

(assert (= (and b!6766528 c!1256327) b!6766526))

(assert (= (and b!6766528 (not c!1256327)) b!6766522))

(assert (= (and b!6766522 res!2766620) b!6766525))

(assert (= (and b!6766522 c!1256323) b!6766521))

(assert (= (and b!6766522 (not c!1256323)) b!6766523))

(assert (= (and b!6766523 c!1256326) b!6766527))

(assert (= (and b!6766523 (not c!1256326)) b!6766524))

(assert (= (and b!6766524 c!1256324) b!6766519))

(assert (= (and b!6766524 (not c!1256324)) b!6766529))

(assert (= (or b!6766527 b!6766519) bm!613065))

(assert (= (or b!6766527 b!6766519) bm!613069))

(assert (= (or b!6766521 bm!613065) bm!613067))

(assert (= (or b!6766521 bm!613069) bm!613066))

(assert (= (or b!6766526 bm!613066) bm!613064))

(assert (= (or b!6766526 b!6766521) bm!613068))

(declare-fun m!7517518 () Bool)

(assert (=> bm!613067 m!7517518))

(declare-fun m!7517520 () Bool)

(assert (=> bm!613068 m!7517520))

(declare-fun m!7517522 () Bool)

(assert (=> b!6766520 m!7517522))

(declare-fun m!7517524 () Bool)

(assert (=> bm!613064 m!7517524))

(declare-fun m!7517526 () Bool)

(assert (=> b!6766525 m!7517526))

(assert (=> bm!612998 d!2125581))

(declare-fun d!2125583 () Bool)

(declare-fun res!2766625 () Bool)

(declare-fun e!4085560 () Bool)

(assert (=> d!2125583 (=> res!2766625 e!4085560)))

(assert (=> d!2125583 (= res!2766625 ((_ is Nil!65948) (exprs!6475 setElem!46245)))))

(assert (=> d!2125583 (= (forall!15787 (exprs!6475 setElem!46245) lambda!380526) e!4085560)))

(declare-fun b!6766534 () Bool)

(declare-fun e!4085561 () Bool)

(assert (=> b!6766534 (= e!4085560 e!4085561)))

(declare-fun res!2766626 () Bool)

(assert (=> b!6766534 (=> (not res!2766626) (not e!4085561))))

(declare-fun dynLambda!26315 (Int Regex!16591) Bool)

(assert (=> b!6766534 (= res!2766626 (dynLambda!26315 lambda!380526 (h!72396 (exprs!6475 setElem!46245))))))

(declare-fun b!6766535 () Bool)

(assert (=> b!6766535 (= e!4085561 (forall!15787 (t!379779 (exprs!6475 setElem!46245)) lambda!380526))))

(assert (= (and d!2125583 (not res!2766625)) b!6766534))

(assert (= (and b!6766534 res!2766626) b!6766535))

(declare-fun b_lambda!254783 () Bool)

(assert (=> (not b_lambda!254783) (not b!6766534)))

(declare-fun m!7517528 () Bool)

(assert (=> b!6766534 m!7517528))

(declare-fun m!7517530 () Bool)

(assert (=> b!6766535 m!7517530))

(assert (=> d!2125239 d!2125583))

(declare-fun bs!1800621 () Bool)

(declare-fun b!6766538 () Bool)

(assert (= bs!1800621 (and b!6766538 d!2125393)))

(declare-fun lambda!380627 () Int)

(assert (=> bs!1800621 (not (= lambda!380627 lambda!380583))))

(declare-fun bs!1800622 () Bool)

(assert (= bs!1800622 (and b!6766538 b!6765810)))

(assert (=> bs!1800622 (not (= lambda!380627 lambda!380568))))

(declare-fun bs!1800623 () Bool)

(assert (= bs!1800623 (and b!6766538 b!6766464)))

(assert (=> bs!1800623 (not (= lambda!380627 lambda!380618))))

(assert (=> bs!1800621 (= (and (= (reg!16920 (regOne!33695 r!7292)) (reg!16920 r!7292)) (= (regOne!33695 r!7292) (Star!16591 (reg!16920 r!7292)))) (= lambda!380627 lambda!380586))))

(declare-fun bs!1800624 () Bool)

(assert (= bs!1800624 (and b!6766538 b!6765357)))

(assert (=> bs!1800624 (not (= lambda!380627 lambda!380522))))

(declare-fun bs!1800625 () Bool)

(assert (= bs!1800625 (and b!6766538 b!6766162)))

(assert (=> bs!1800625 (not (= lambda!380627 lambda!380606))))

(declare-fun bs!1800626 () Bool)

(assert (= bs!1800626 (and b!6766538 d!2125425)))

(assert (=> bs!1800626 (not (= lambda!380627 lambda!380598))))

(declare-fun bs!1800627 () Bool)

(assert (= bs!1800627 (and b!6766538 d!2125401)))

(assert (=> bs!1800627 (not (= lambda!380627 lambda!380595))))

(declare-fun bs!1800628 () Bool)

(assert (= bs!1800628 (and b!6766538 b!6766157)))

(assert (=> bs!1800628 (= (and (= (reg!16920 (regOne!33695 r!7292)) (reg!16920 lt!2442635)) (= (regOne!33695 r!7292) lt!2442635)) (= lambda!380627 lambda!380605))))

(assert (=> bs!1800627 (not (= lambda!380627 lambda!380594))))

(declare-fun bs!1800629 () Bool)

(assert (= bs!1800629 (and b!6766538 b!6765805)))

(assert (=> bs!1800629 (= (and (= (reg!16920 (regOne!33695 r!7292)) (reg!16920 r!7292)) (= (regOne!33695 r!7292) r!7292)) (= lambda!380627 lambda!380565))))

(declare-fun bs!1800630 () Bool)

(assert (= bs!1800630 (and b!6766538 b!6766459)))

(assert (=> bs!1800630 (= (and (= (reg!16920 (regOne!33695 r!7292)) (reg!16920 (regTwo!33695 lt!2442635))) (= (regOne!33695 r!7292) (regTwo!33695 lt!2442635))) (= lambda!380627 lambda!380617))))

(assert (=> bs!1800624 (= (and (= (reg!16920 (regOne!33695 r!7292)) (reg!16920 r!7292)) (= (regOne!33695 r!7292) r!7292)) (= lambda!380627 lambda!380521))))

(assert (=> bs!1800624 (not (= lambda!380627 lambda!380520))))

(assert (=> b!6766538 true))

(assert (=> b!6766538 true))

(declare-fun bs!1800631 () Bool)

(declare-fun b!6766543 () Bool)

(assert (= bs!1800631 (and b!6766543 d!2125393)))

(declare-fun lambda!380628 () Int)

(assert (=> bs!1800631 (not (= lambda!380628 lambda!380583))))

(declare-fun bs!1800632 () Bool)

(assert (= bs!1800632 (and b!6766543 b!6765810)))

(assert (=> bs!1800632 (= (and (= (regOne!33694 (regOne!33695 r!7292)) (regOne!33694 r!7292)) (= (regTwo!33694 (regOne!33695 r!7292)) (regTwo!33694 r!7292))) (= lambda!380628 lambda!380568))))

(declare-fun bs!1800633 () Bool)

(assert (= bs!1800633 (and b!6766543 b!6766464)))

(assert (=> bs!1800633 (= (and (= (regOne!33694 (regOne!33695 r!7292)) (regOne!33694 (regTwo!33695 lt!2442635))) (= (regTwo!33694 (regOne!33695 r!7292)) (regTwo!33694 (regTwo!33695 lt!2442635)))) (= lambda!380628 lambda!380618))))

(assert (=> bs!1800631 (not (= lambda!380628 lambda!380586))))

(declare-fun bs!1800634 () Bool)

(assert (= bs!1800634 (and b!6766543 b!6765357)))

(assert (=> bs!1800634 (= (and (= (regOne!33694 (regOne!33695 r!7292)) (reg!16920 r!7292)) (= (regTwo!33694 (regOne!33695 r!7292)) r!7292)) (= lambda!380628 lambda!380522))))

(declare-fun bs!1800635 () Bool)

(assert (= bs!1800635 (and b!6766543 b!6766162)))

(assert (=> bs!1800635 (= (and (= (regOne!33694 (regOne!33695 r!7292)) (regOne!33694 lt!2442635)) (= (regTwo!33694 (regOne!33695 r!7292)) (regTwo!33694 lt!2442635))) (= lambda!380628 lambda!380606))))

(declare-fun bs!1800636 () Bool)

(assert (= bs!1800636 (and b!6766543 d!2125425)))

(assert (=> bs!1800636 (not (= lambda!380628 lambda!380598))))

(declare-fun bs!1800637 () Bool)

(assert (= bs!1800637 (and b!6766543 b!6766157)))

(assert (=> bs!1800637 (not (= lambda!380628 lambda!380605))))

(declare-fun bs!1800639 () Bool)

(assert (= bs!1800639 (and b!6766543 d!2125401)))

(assert (=> bs!1800639 (not (= lambda!380628 lambda!380594))))

(declare-fun bs!1800640 () Bool)

(assert (= bs!1800640 (and b!6766543 b!6765805)))

(assert (=> bs!1800640 (not (= lambda!380628 lambda!380565))))

(declare-fun bs!1800641 () Bool)

(assert (= bs!1800641 (and b!6766543 b!6766459)))

(assert (=> bs!1800641 (not (= lambda!380628 lambda!380617))))

(assert (=> bs!1800639 (= (and (= (regOne!33694 (regOne!33695 r!7292)) (reg!16920 r!7292)) (= (regTwo!33694 (regOne!33695 r!7292)) r!7292)) (= lambda!380628 lambda!380595))))

(declare-fun bs!1800642 () Bool)

(assert (= bs!1800642 (and b!6766543 b!6766538)))

(assert (=> bs!1800642 (not (= lambda!380628 lambda!380627))))

(assert (=> bs!1800634 (not (= lambda!380628 lambda!380521))))

(assert (=> bs!1800634 (not (= lambda!380628 lambda!380520))))

(assert (=> b!6766543 true))

(assert (=> b!6766543 true))

(declare-fun b!6766536 () Bool)

(declare-fun e!4085565 () Bool)

(declare-fun call!613075 () Bool)

(assert (=> b!6766536 (= e!4085565 call!613075)))

(declare-fun bm!613070 () Bool)

(declare-fun call!613076 () Bool)

(declare-fun c!1256328 () Bool)

(assert (=> bm!613070 (= call!613076 (Exists!3659 (ite c!1256328 lambda!380627 lambda!380628)))))

(declare-fun b!6766537 () Bool)

(declare-fun e!4085563 () Bool)

(declare-fun e!4085568 () Bool)

(assert (=> b!6766537 (= e!4085563 e!4085568)))

(declare-fun res!2766628 () Bool)

(assert (=> b!6766537 (= res!2766628 (matchRSpec!3692 (regOne!33695 (regOne!33695 r!7292)) s!2326))))

(assert (=> b!6766537 (=> res!2766628 e!4085568)))

(declare-fun e!4085562 () Bool)

(assert (=> b!6766538 (= e!4085562 call!613076)))

(declare-fun b!6766539 () Bool)

(declare-fun e!4085567 () Bool)

(assert (=> b!6766539 (= e!4085565 e!4085567)))

(declare-fun res!2766627 () Bool)

(assert (=> b!6766539 (= res!2766627 (not ((_ is EmptyLang!16591) (regOne!33695 r!7292))))))

(assert (=> b!6766539 (=> (not res!2766627) (not e!4085567))))

(declare-fun b!6766540 () Bool)

(declare-fun e!4085564 () Bool)

(assert (=> b!6766540 (= e!4085564 (= s!2326 (Cons!65950 (c!1256003 (regOne!33695 r!7292)) Nil!65950)))))

(declare-fun b!6766541 () Bool)

(assert (=> b!6766541 (= e!4085568 (matchRSpec!3692 (regTwo!33695 (regOne!33695 r!7292)) s!2326))))

(declare-fun d!2125585 () Bool)

(declare-fun c!1256330 () Bool)

(assert (=> d!2125585 (= c!1256330 ((_ is EmptyExpr!16591) (regOne!33695 r!7292)))))

(assert (=> d!2125585 (= (matchRSpec!3692 (regOne!33695 r!7292) s!2326) e!4085565)))

(declare-fun bm!613071 () Bool)

(assert (=> bm!613071 (= call!613075 (isEmpty!38306 s!2326))))

(declare-fun b!6766542 () Bool)

(declare-fun c!1256329 () Bool)

(assert (=> b!6766542 (= c!1256329 ((_ is Union!16591) (regOne!33695 r!7292)))))

(assert (=> b!6766542 (= e!4085564 e!4085563)))

(declare-fun e!4085566 () Bool)

(assert (=> b!6766543 (= e!4085566 call!613076)))

(declare-fun b!6766544 () Bool)

(declare-fun res!2766629 () Bool)

(assert (=> b!6766544 (=> res!2766629 e!4085562)))

(assert (=> b!6766544 (= res!2766629 call!613075)))

(assert (=> b!6766544 (= e!4085566 e!4085562)))

(declare-fun b!6766545 () Bool)

(declare-fun c!1256331 () Bool)

(assert (=> b!6766545 (= c!1256331 ((_ is ElementMatch!16591) (regOne!33695 r!7292)))))

(assert (=> b!6766545 (= e!4085567 e!4085564)))

(declare-fun b!6766546 () Bool)

(assert (=> b!6766546 (= e!4085563 e!4085566)))

(assert (=> b!6766546 (= c!1256328 ((_ is Star!16591) (regOne!33695 r!7292)))))

(assert (= (and d!2125585 c!1256330) b!6766536))

(assert (= (and d!2125585 (not c!1256330)) b!6766539))

(assert (= (and b!6766539 res!2766627) b!6766545))

(assert (= (and b!6766545 c!1256331) b!6766540))

(assert (= (and b!6766545 (not c!1256331)) b!6766542))

(assert (= (and b!6766542 c!1256329) b!6766537))

(assert (= (and b!6766542 (not c!1256329)) b!6766546))

(assert (= (and b!6766537 (not res!2766628)) b!6766541))

(assert (= (and b!6766546 c!1256328) b!6766544))

(assert (= (and b!6766546 (not c!1256328)) b!6766543))

(assert (= (and b!6766544 (not res!2766629)) b!6766538))

(assert (= (or b!6766538 b!6766543) bm!613070))

(assert (= (or b!6766536 b!6766544) bm!613071))

(declare-fun m!7517556 () Bool)

(assert (=> bm!613070 m!7517556))

(declare-fun m!7517562 () Bool)

(assert (=> b!6766537 m!7517562))

(declare-fun m!7517568 () Bool)

(assert (=> b!6766541 m!7517568))

(assert (=> bm!613071 m!7516556))

(assert (=> b!6765804 d!2125585))

(declare-fun bs!1800643 () Bool)

(declare-fun b!6766563 () Bool)

(assert (= bs!1800643 (and b!6766563 d!2125393)))

(declare-fun lambda!380629 () Int)

(assert (=> bs!1800643 (not (= lambda!380629 lambda!380583))))

(declare-fun bs!1800644 () Bool)

(assert (= bs!1800644 (and b!6766563 b!6765810)))

(assert (=> bs!1800644 (not (= lambda!380629 lambda!380568))))

(declare-fun bs!1800645 () Bool)

(assert (= bs!1800645 (and b!6766563 b!6766464)))

(assert (=> bs!1800645 (not (= lambda!380629 lambda!380618))))

(assert (=> bs!1800643 (= (and (= (reg!16920 (regOne!33695 lt!2442635)) (reg!16920 r!7292)) (= (regOne!33695 lt!2442635) (Star!16591 (reg!16920 r!7292)))) (= lambda!380629 lambda!380586))))

(declare-fun bs!1800646 () Bool)

(assert (= bs!1800646 (and b!6766563 b!6765357)))

(assert (=> bs!1800646 (not (= lambda!380629 lambda!380522))))

(declare-fun bs!1800647 () Bool)

(assert (= bs!1800647 (and b!6766563 b!6766543)))

(assert (=> bs!1800647 (not (= lambda!380629 lambda!380628))))

(declare-fun bs!1800648 () Bool)

(assert (= bs!1800648 (and b!6766563 b!6766162)))

(assert (=> bs!1800648 (not (= lambda!380629 lambda!380606))))

(declare-fun bs!1800649 () Bool)

(assert (= bs!1800649 (and b!6766563 d!2125425)))

(assert (=> bs!1800649 (not (= lambda!380629 lambda!380598))))

(declare-fun bs!1800650 () Bool)

(assert (= bs!1800650 (and b!6766563 b!6766157)))

(assert (=> bs!1800650 (= (and (= (reg!16920 (regOne!33695 lt!2442635)) (reg!16920 lt!2442635)) (= (regOne!33695 lt!2442635) lt!2442635)) (= lambda!380629 lambda!380605))))

(declare-fun bs!1800651 () Bool)

(assert (= bs!1800651 (and b!6766563 d!2125401)))

(assert (=> bs!1800651 (not (= lambda!380629 lambda!380594))))

(declare-fun bs!1800652 () Bool)

(assert (= bs!1800652 (and b!6766563 b!6765805)))

(assert (=> bs!1800652 (= (and (= (reg!16920 (regOne!33695 lt!2442635)) (reg!16920 r!7292)) (= (regOne!33695 lt!2442635) r!7292)) (= lambda!380629 lambda!380565))))

(declare-fun bs!1800653 () Bool)

(assert (= bs!1800653 (and b!6766563 b!6766459)))

(assert (=> bs!1800653 (= (and (= (reg!16920 (regOne!33695 lt!2442635)) (reg!16920 (regTwo!33695 lt!2442635))) (= (regOne!33695 lt!2442635) (regTwo!33695 lt!2442635))) (= lambda!380629 lambda!380617))))

(assert (=> bs!1800651 (not (= lambda!380629 lambda!380595))))

(declare-fun bs!1800654 () Bool)

(assert (= bs!1800654 (and b!6766563 b!6766538)))

(assert (=> bs!1800654 (= (and (= (reg!16920 (regOne!33695 lt!2442635)) (reg!16920 (regOne!33695 r!7292))) (= (regOne!33695 lt!2442635) (regOne!33695 r!7292))) (= lambda!380629 lambda!380627))))

(assert (=> bs!1800646 (= (and (= (reg!16920 (regOne!33695 lt!2442635)) (reg!16920 r!7292)) (= (regOne!33695 lt!2442635) r!7292)) (= lambda!380629 lambda!380521))))

(assert (=> bs!1800646 (not (= lambda!380629 lambda!380520))))

(assert (=> b!6766563 true))

(assert (=> b!6766563 true))

(declare-fun bs!1800656 () Bool)

(declare-fun b!6766568 () Bool)

(assert (= bs!1800656 (and b!6766568 d!2125393)))

(declare-fun lambda!380630 () Int)

(assert (=> bs!1800656 (not (= lambda!380630 lambda!380583))))

(declare-fun bs!1800657 () Bool)

(assert (= bs!1800657 (and b!6766568 b!6765810)))

(assert (=> bs!1800657 (= (and (= (regOne!33694 (regOne!33695 lt!2442635)) (regOne!33694 r!7292)) (= (regTwo!33694 (regOne!33695 lt!2442635)) (regTwo!33694 r!7292))) (= lambda!380630 lambda!380568))))

(declare-fun bs!1800658 () Bool)

(assert (= bs!1800658 (and b!6766568 b!6766464)))

(assert (=> bs!1800658 (= (and (= (regOne!33694 (regOne!33695 lt!2442635)) (regOne!33694 (regTwo!33695 lt!2442635))) (= (regTwo!33694 (regOne!33695 lt!2442635)) (regTwo!33694 (regTwo!33695 lt!2442635)))) (= lambda!380630 lambda!380618))))

(assert (=> bs!1800656 (not (= lambda!380630 lambda!380586))))

(declare-fun bs!1800659 () Bool)

(assert (= bs!1800659 (and b!6766568 b!6765357)))

(assert (=> bs!1800659 (= (and (= (regOne!33694 (regOne!33695 lt!2442635)) (reg!16920 r!7292)) (= (regTwo!33694 (regOne!33695 lt!2442635)) r!7292)) (= lambda!380630 lambda!380522))))

(declare-fun bs!1800660 () Bool)

(assert (= bs!1800660 (and b!6766568 b!6766543)))

(assert (=> bs!1800660 (= (and (= (regOne!33694 (regOne!33695 lt!2442635)) (regOne!33694 (regOne!33695 r!7292))) (= (regTwo!33694 (regOne!33695 lt!2442635)) (regTwo!33694 (regOne!33695 r!7292)))) (= lambda!380630 lambda!380628))))

(declare-fun bs!1800661 () Bool)

(assert (= bs!1800661 (and b!6766568 b!6766563)))

(assert (=> bs!1800661 (not (= lambda!380630 lambda!380629))))

(declare-fun bs!1800662 () Bool)

(assert (= bs!1800662 (and b!6766568 b!6766162)))

(assert (=> bs!1800662 (= (and (= (regOne!33694 (regOne!33695 lt!2442635)) (regOne!33694 lt!2442635)) (= (regTwo!33694 (regOne!33695 lt!2442635)) (regTwo!33694 lt!2442635))) (= lambda!380630 lambda!380606))))

(declare-fun bs!1800663 () Bool)

(assert (= bs!1800663 (and b!6766568 d!2125425)))

(assert (=> bs!1800663 (not (= lambda!380630 lambda!380598))))

(declare-fun bs!1800664 () Bool)

(assert (= bs!1800664 (and b!6766568 b!6766157)))

(assert (=> bs!1800664 (not (= lambda!380630 lambda!380605))))

(declare-fun bs!1800665 () Bool)

(assert (= bs!1800665 (and b!6766568 d!2125401)))

(assert (=> bs!1800665 (not (= lambda!380630 lambda!380594))))

(declare-fun bs!1800666 () Bool)

(assert (= bs!1800666 (and b!6766568 b!6765805)))

(assert (=> bs!1800666 (not (= lambda!380630 lambda!380565))))

(declare-fun bs!1800667 () Bool)

(assert (= bs!1800667 (and b!6766568 b!6766459)))

(assert (=> bs!1800667 (not (= lambda!380630 lambda!380617))))

(assert (=> bs!1800665 (= (and (= (regOne!33694 (regOne!33695 lt!2442635)) (reg!16920 r!7292)) (= (regTwo!33694 (regOne!33695 lt!2442635)) r!7292)) (= lambda!380630 lambda!380595))))

(declare-fun bs!1800668 () Bool)

(assert (= bs!1800668 (and b!6766568 b!6766538)))

(assert (=> bs!1800668 (not (= lambda!380630 lambda!380627))))

(assert (=> bs!1800659 (not (= lambda!380630 lambda!380521))))

(assert (=> bs!1800659 (not (= lambda!380630 lambda!380520))))

(assert (=> b!6766568 true))

(assert (=> b!6766568 true))

(declare-fun b!6766561 () Bool)

(declare-fun e!4085582 () Bool)

(declare-fun call!613077 () Bool)

(assert (=> b!6766561 (= e!4085582 call!613077)))

(declare-fun call!613078 () Bool)

(declare-fun c!1256334 () Bool)

(declare-fun bm!613072 () Bool)

(assert (=> bm!613072 (= call!613078 (Exists!3659 (ite c!1256334 lambda!380629 lambda!380630)))))

(declare-fun b!6766562 () Bool)

(declare-fun e!4085580 () Bool)

(declare-fun e!4085585 () Bool)

(assert (=> b!6766562 (= e!4085580 e!4085585)))

(declare-fun res!2766641 () Bool)

(assert (=> b!6766562 (= res!2766641 (matchRSpec!3692 (regOne!33695 (regOne!33695 lt!2442635)) s!2326))))

(assert (=> b!6766562 (=> res!2766641 e!4085585)))

(declare-fun e!4085579 () Bool)

(assert (=> b!6766563 (= e!4085579 call!613078)))

(declare-fun b!6766564 () Bool)

(declare-fun e!4085584 () Bool)

(assert (=> b!6766564 (= e!4085582 e!4085584)))

(declare-fun res!2766640 () Bool)

(assert (=> b!6766564 (= res!2766640 (not ((_ is EmptyLang!16591) (regOne!33695 lt!2442635))))))

(assert (=> b!6766564 (=> (not res!2766640) (not e!4085584))))

(declare-fun b!6766565 () Bool)

(declare-fun e!4085581 () Bool)

(assert (=> b!6766565 (= e!4085581 (= s!2326 (Cons!65950 (c!1256003 (regOne!33695 lt!2442635)) Nil!65950)))))

(declare-fun b!6766566 () Bool)

(assert (=> b!6766566 (= e!4085585 (matchRSpec!3692 (regTwo!33695 (regOne!33695 lt!2442635)) s!2326))))

(declare-fun d!2125597 () Bool)

(declare-fun c!1256336 () Bool)

(assert (=> d!2125597 (= c!1256336 ((_ is EmptyExpr!16591) (regOne!33695 lt!2442635)))))

(assert (=> d!2125597 (= (matchRSpec!3692 (regOne!33695 lt!2442635) s!2326) e!4085582)))

(declare-fun bm!613073 () Bool)

(assert (=> bm!613073 (= call!613077 (isEmpty!38306 s!2326))))

(declare-fun b!6766567 () Bool)

(declare-fun c!1256335 () Bool)

(assert (=> b!6766567 (= c!1256335 ((_ is Union!16591) (regOne!33695 lt!2442635)))))

(assert (=> b!6766567 (= e!4085581 e!4085580)))

(declare-fun e!4085583 () Bool)

(assert (=> b!6766568 (= e!4085583 call!613078)))

(declare-fun b!6766569 () Bool)

(declare-fun res!2766642 () Bool)

(assert (=> b!6766569 (=> res!2766642 e!4085579)))

(assert (=> b!6766569 (= res!2766642 call!613077)))

(assert (=> b!6766569 (= e!4085583 e!4085579)))

(declare-fun b!6766570 () Bool)

(declare-fun c!1256337 () Bool)

(assert (=> b!6766570 (= c!1256337 ((_ is ElementMatch!16591) (regOne!33695 lt!2442635)))))

(assert (=> b!6766570 (= e!4085584 e!4085581)))

(declare-fun b!6766571 () Bool)

(assert (=> b!6766571 (= e!4085580 e!4085583)))

(assert (=> b!6766571 (= c!1256334 ((_ is Star!16591) (regOne!33695 lt!2442635)))))

(assert (= (and d!2125597 c!1256336) b!6766561))

(assert (= (and d!2125597 (not c!1256336)) b!6766564))

(assert (= (and b!6766564 res!2766640) b!6766570))

(assert (= (and b!6766570 c!1256337) b!6766565))

(assert (= (and b!6766570 (not c!1256337)) b!6766567))

(assert (= (and b!6766567 c!1256335) b!6766562))

(assert (= (and b!6766567 (not c!1256335)) b!6766571))

(assert (= (and b!6766562 (not res!2766641)) b!6766566))

(assert (= (and b!6766571 c!1256334) b!6766569))

(assert (= (and b!6766571 (not c!1256334)) b!6766568))

(assert (= (and b!6766569 (not res!2766642)) b!6766563))

(assert (= (or b!6766563 b!6766568) bm!613072))

(assert (= (or b!6766561 b!6766569) bm!613073))

(declare-fun m!7517602 () Bool)

(assert (=> bm!613072 m!7517602))

(declare-fun m!7517604 () Bool)

(assert (=> b!6766562 m!7517604))

(declare-fun m!7517606 () Bool)

(assert (=> b!6766566 m!7517606))

(assert (=> bm!613073 m!7516556))

(assert (=> b!6766156 d!2125597))

(declare-fun d!2125607 () Bool)

(assert (=> d!2125607 (= (nullable!6574 (h!72396 (exprs!6475 lt!2442639))) (nullableFct!2480 (h!72396 (exprs!6475 lt!2442639))))))

(declare-fun bs!1800669 () Bool)

(assert (= bs!1800669 d!2125607))

(declare-fun m!7517608 () Bool)

(assert (=> bs!1800669 m!7517608))

(assert (=> b!6765447 d!2125607))

(declare-fun b!6766590 () Bool)

(declare-fun e!4085600 () (InoxSet Context!11950))

(declare-fun call!613082 () (InoxSet Context!11950))

(assert (=> b!6766590 (= e!4085600 ((_ map or) call!613082 (derivationStepZipperUp!1745 (Context!11951 (t!379779 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442630)))))) (h!72398 s!2326))))))

(declare-fun bm!613077 () Bool)

(assert (=> bm!613077 (= call!613082 (derivationStepZipperDown!1819 (h!72396 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442630))))) (Context!11951 (t!379779 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442630)))))) (h!72398 s!2326)))))

(declare-fun b!6766591 () Bool)

(declare-fun e!4085598 () (InoxSet Context!11950))

(assert (=> b!6766591 (= e!4085598 ((as const (Array Context!11950 Bool)) false))))

(declare-fun b!6766592 () Bool)

(assert (=> b!6766592 (= e!4085598 call!613082)))

(declare-fun b!6766593 () Bool)

(assert (=> b!6766593 (= e!4085600 e!4085598)))

(declare-fun c!1256343 () Bool)

(assert (=> b!6766593 (= c!1256343 ((_ is Cons!65948) (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442630))))))))

(declare-fun b!6766594 () Bool)

(declare-fun e!4085599 () Bool)

(assert (=> b!6766594 (= e!4085599 (nullable!6574 (h!72396 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442630)))))))))

(declare-fun d!2125609 () Bool)

(declare-fun c!1256342 () Bool)

(assert (=> d!2125609 (= c!1256342 e!4085599)))

(declare-fun res!2766653 () Bool)

(assert (=> d!2125609 (=> (not res!2766653) (not e!4085599))))

(assert (=> d!2125609 (= res!2766653 ((_ is Cons!65948) (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442630))))))))

(assert (=> d!2125609 (= (derivationStepZipperUp!1745 (Context!11951 (t!379779 (exprs!6475 lt!2442630))) (h!72398 s!2326)) e!4085600)))

(assert (= (and d!2125609 res!2766653) b!6766594))

(assert (= (and d!2125609 c!1256342) b!6766590))

(assert (= (and d!2125609 (not c!1256342)) b!6766593))

(assert (= (and b!6766593 c!1256343) b!6766592))

(assert (= (and b!6766593 (not c!1256343)) b!6766591))

(assert (= (or b!6766590 b!6766592) bm!613077))

(declare-fun m!7517620 () Bool)

(assert (=> b!6766590 m!7517620))

(declare-fun m!7517622 () Bool)

(assert (=> bm!613077 m!7517622))

(declare-fun m!7517626 () Bool)

(assert (=> b!6766594 m!7517626))

(assert (=> b!6765438 d!2125609))

(assert (=> d!2125247 d!2125257))

(declare-fun d!2125619 () Bool)

(assert (=> d!2125619 (= (flatMap!2072 lt!2442638 lambda!380523) (dynLambda!26314 lambda!380523 lt!2442639))))

(assert (=> d!2125619 true))

(declare-fun _$13!4140 () Unit!159873)

(assert (=> d!2125619 (= (choose!50415 lt!2442638 lt!2442639 lambda!380523) _$13!4140)))

(declare-fun b_lambda!254787 () Bool)

(assert (=> (not b_lambda!254787) (not d!2125619)))

(declare-fun bs!1800674 () Bool)

(assert (= bs!1800674 d!2125619))

(assert (=> bs!1800674 m!7516614))

(assert (=> bs!1800674 m!7516684))

(assert (=> d!2125247 d!2125619))

(declare-fun d!2125623 () Bool)

(assert (=> d!2125623 (= (isEmpty!38306 (t!379781 s!2326)) ((_ is Nil!65950) (t!379781 s!2326)))))

(assert (=> d!2125269 d!2125623))

(declare-fun d!2125625 () Bool)

(assert (=> d!2125625 (= (isEmpty!38309 (unfocusZipperList!2012 zl!343)) ((_ is Nil!65948) (unfocusZipperList!2012 zl!343)))))

(assert (=> b!6766141 d!2125625))

(declare-fun d!2125627 () Bool)

(assert (=> d!2125627 (= (isDefined!13181 lt!2442739) (not (isEmpty!38310 lt!2442739)))))

(declare-fun bs!1800675 () Bool)

(assert (= bs!1800675 d!2125627))

(declare-fun m!7517630 () Bool)

(assert (=> bs!1800675 m!7517630))

(assert (=> d!2125423 d!2125627))

(declare-fun b!6766595 () Bool)

(declare-fun e!4085603 () Bool)

(assert (=> b!6766595 (= e!4085603 (nullable!6574 (reg!16920 r!7292)))))

(declare-fun b!6766596 () Bool)

(declare-fun e!4085604 () Bool)

(declare-fun e!4085605 () Bool)

(assert (=> b!6766596 (= e!4085604 e!4085605)))

(declare-fun c!1256344 () Bool)

(assert (=> b!6766596 (= c!1256344 ((_ is EmptyLang!16591) (reg!16920 r!7292)))))

(declare-fun b!6766597 () Bool)

(assert (=> b!6766597 (= e!4085603 (matchR!8774 (derivativeStep!5258 (reg!16920 r!7292) (head!13599 Nil!65950)) (tail!12684 Nil!65950)))))

(declare-fun b!6766598 () Bool)

(declare-fun e!4085607 () Bool)

(assert (=> b!6766598 (= e!4085607 (= (head!13599 Nil!65950) (c!1256003 (reg!16920 r!7292))))))

(declare-fun b!6766600 () Bool)

(declare-fun res!2766658 () Bool)

(declare-fun e!4085601 () Bool)

(assert (=> b!6766600 (=> res!2766658 e!4085601)))

(assert (=> b!6766600 (= res!2766658 (not (isEmpty!38306 (tail!12684 Nil!65950))))))

(declare-fun b!6766601 () Bool)

(declare-fun e!4085606 () Bool)

(assert (=> b!6766601 (= e!4085606 e!4085601)))

(declare-fun res!2766654 () Bool)

(assert (=> b!6766601 (=> res!2766654 e!4085601)))

(declare-fun call!613083 () Bool)

(assert (=> b!6766601 (= res!2766654 call!613083)))

(declare-fun b!6766602 () Bool)

(assert (=> b!6766602 (= e!4085601 (not (= (head!13599 Nil!65950) (c!1256003 (reg!16920 r!7292)))))))

(declare-fun b!6766603 () Bool)

(declare-fun res!2766661 () Bool)

(declare-fun e!4085602 () Bool)

(assert (=> b!6766603 (=> res!2766661 e!4085602)))

(assert (=> b!6766603 (= res!2766661 e!4085607)))

(declare-fun res!2766659 () Bool)

(assert (=> b!6766603 (=> (not res!2766659) (not e!4085607))))

(declare-fun lt!2442778 () Bool)

(assert (=> b!6766603 (= res!2766659 lt!2442778)))

(declare-fun b!6766604 () Bool)

(declare-fun res!2766656 () Bool)

(assert (=> b!6766604 (=> (not res!2766656) (not e!4085607))))

(assert (=> b!6766604 (= res!2766656 (not call!613083))))

(declare-fun b!6766599 () Bool)

(assert (=> b!6766599 (= e!4085602 e!4085606)))

(declare-fun res!2766655 () Bool)

(assert (=> b!6766599 (=> (not res!2766655) (not e!4085606))))

(assert (=> b!6766599 (= res!2766655 (not lt!2442778))))

(declare-fun d!2125629 () Bool)

(assert (=> d!2125629 e!4085604))

(declare-fun c!1256346 () Bool)

(assert (=> d!2125629 (= c!1256346 ((_ is EmptyExpr!16591) (reg!16920 r!7292)))))

(assert (=> d!2125629 (= lt!2442778 e!4085603)))

(declare-fun c!1256345 () Bool)

(assert (=> d!2125629 (= c!1256345 (isEmpty!38306 Nil!65950))))

(assert (=> d!2125629 (validRegex!8327 (reg!16920 r!7292))))

(assert (=> d!2125629 (= (matchR!8774 (reg!16920 r!7292) Nil!65950) lt!2442778)))

(declare-fun bm!613078 () Bool)

(assert (=> bm!613078 (= call!613083 (isEmpty!38306 Nil!65950))))

(declare-fun b!6766605 () Bool)

(declare-fun res!2766660 () Bool)

(assert (=> b!6766605 (=> res!2766660 e!4085602)))

(assert (=> b!6766605 (= res!2766660 (not ((_ is ElementMatch!16591) (reg!16920 r!7292))))))

(assert (=> b!6766605 (= e!4085605 e!4085602)))

(declare-fun b!6766606 () Bool)

(assert (=> b!6766606 (= e!4085604 (= lt!2442778 call!613083))))

(declare-fun b!6766607 () Bool)

(declare-fun res!2766657 () Bool)

(assert (=> b!6766607 (=> (not res!2766657) (not e!4085607))))

(assert (=> b!6766607 (= res!2766657 (isEmpty!38306 (tail!12684 Nil!65950)))))

(declare-fun b!6766608 () Bool)

(assert (=> b!6766608 (= e!4085605 (not lt!2442778))))

(assert (= (and d!2125629 c!1256345) b!6766595))

(assert (= (and d!2125629 (not c!1256345)) b!6766597))

(assert (= (and d!2125629 c!1256346) b!6766606))

(assert (= (and d!2125629 (not c!1256346)) b!6766596))

(assert (= (and b!6766596 c!1256344) b!6766608))

(assert (= (and b!6766596 (not c!1256344)) b!6766605))

(assert (= (and b!6766605 (not res!2766660)) b!6766603))

(assert (= (and b!6766603 res!2766659) b!6766604))

(assert (= (and b!6766604 res!2766656) b!6766607))

(assert (= (and b!6766607 res!2766657) b!6766598))

(assert (= (and b!6766603 (not res!2766661)) b!6766599))

(assert (= (and b!6766599 res!2766655) b!6766601))

(assert (= (and b!6766601 (not res!2766654)) b!6766600))

(assert (= (and b!6766600 (not res!2766658)) b!6766602))

(assert (= (or b!6766606 b!6766601 b!6766604) bm!613078))

(declare-fun m!7517632 () Bool)

(assert (=> b!6766597 m!7517632))

(assert (=> b!6766597 m!7517632))

(declare-fun m!7517634 () Bool)

(assert (=> b!6766597 m!7517634))

(declare-fun m!7517636 () Bool)

(assert (=> b!6766597 m!7517636))

(assert (=> b!6766597 m!7517634))

(assert (=> b!6766597 m!7517636))

(declare-fun m!7517638 () Bool)

(assert (=> b!6766597 m!7517638))

(declare-fun m!7517640 () Bool)

(assert (=> d!2125629 m!7517640))

(assert (=> d!2125629 m!7516838))

(assert (=> b!6766598 m!7517632))

(assert (=> bm!613078 m!7517640))

(assert (=> b!6766602 m!7517632))

(assert (=> b!6766595 m!7516840))

(assert (=> b!6766607 m!7517636))

(assert (=> b!6766607 m!7517636))

(declare-fun m!7517642 () Bool)

(assert (=> b!6766607 m!7517642))

(assert (=> b!6766600 m!7517636))

(assert (=> b!6766600 m!7517636))

(assert (=> b!6766600 m!7517642))

(assert (=> d!2125423 d!2125629))

(assert (=> d!2125423 d!2125553))

(assert (=> b!6765418 d!2125557))

(assert (=> b!6765418 d!2125559))

(declare-fun d!2125631 () Bool)

(declare-fun c!1256347 () Bool)

(assert (=> d!2125631 (= c!1256347 (isEmpty!38306 (tail!12684 s!2326)))))

(declare-fun e!4085608 () Bool)

(assert (=> d!2125631 (= (matchZipper!2577 (derivationStepZipper!2535 lt!2442640 (head!13599 s!2326)) (tail!12684 s!2326)) e!4085608)))

(declare-fun b!6766609 () Bool)

(assert (=> b!6766609 (= e!4085608 (nullableZipper!2301 (derivationStepZipper!2535 lt!2442640 (head!13599 s!2326))))))

(declare-fun b!6766610 () Bool)

(assert (=> b!6766610 (= e!4085608 (matchZipper!2577 (derivationStepZipper!2535 (derivationStepZipper!2535 lt!2442640 (head!13599 s!2326)) (head!13599 (tail!12684 s!2326))) (tail!12684 (tail!12684 s!2326))))))

(assert (= (and d!2125631 c!1256347) b!6766609))

(assert (= (and d!2125631 (not c!1256347)) b!6766610))

(assert (=> d!2125631 m!7516718))

(assert (=> d!2125631 m!7516966))

(assert (=> b!6766609 m!7516716))

(declare-fun m!7517644 () Bool)

(assert (=> b!6766609 m!7517644))

(assert (=> b!6766610 m!7516718))

(declare-fun m!7517646 () Bool)

(assert (=> b!6766610 m!7517646))

(assert (=> b!6766610 m!7516716))

(assert (=> b!6766610 m!7517646))

(declare-fun m!7517648 () Bool)

(assert (=> b!6766610 m!7517648))

(assert (=> b!6766610 m!7516718))

(declare-fun m!7517650 () Bool)

(assert (=> b!6766610 m!7517650))

(assert (=> b!6766610 m!7517648))

(assert (=> b!6766610 m!7517650))

(declare-fun m!7517652 () Bool)

(assert (=> b!6766610 m!7517652))

(assert (=> b!6765465 d!2125631))

(declare-fun bs!1800676 () Bool)

(declare-fun d!2125633 () Bool)

(assert (= bs!1800676 (and d!2125633 b!6765361)))

(declare-fun lambda!380631 () Int)

(assert (=> bs!1800676 (= (= (head!13599 s!2326) (h!72398 s!2326)) (= lambda!380631 lambda!380523))))

(declare-fun bs!1800677 () Bool)

(assert (= bs!1800677 (and d!2125633 d!2125253)))

(assert (=> bs!1800677 (= (= (head!13599 s!2326) (h!72398 s!2326)) (= lambda!380631 lambda!380540))))

(declare-fun bs!1800678 () Bool)

(assert (= bs!1800678 (and d!2125633 d!2125271)))

(assert (=> bs!1800678 (= (= (head!13599 s!2326) (h!72398 s!2326)) (= lambda!380631 lambda!380542))))

(declare-fun bs!1800679 () Bool)

(assert (= bs!1800679 (and d!2125633 d!2125307)))

(assert (=> bs!1800679 (= (= (head!13599 s!2326) (h!72398 s!2326)) (= lambda!380631 lambda!380552))))

(assert (=> d!2125633 true))

(assert (=> d!2125633 (= (derivationStepZipper!2535 lt!2442640 (head!13599 s!2326)) (flatMap!2072 lt!2442640 lambda!380631))))

(declare-fun bs!1800680 () Bool)

(assert (= bs!1800680 d!2125633))

(declare-fun m!7517654 () Bool)

(assert (=> bs!1800680 m!7517654))

(assert (=> b!6765465 d!2125633))

(declare-fun d!2125635 () Bool)

(assert (=> d!2125635 (= (head!13599 s!2326) (h!72398 s!2326))))

(assert (=> b!6765465 d!2125635))

(declare-fun d!2125637 () Bool)

(assert (=> d!2125637 (= (tail!12684 s!2326) (t!379781 s!2326))))

(assert (=> b!6765465 d!2125637))

(declare-fun bs!1800681 () Bool)

(declare-fun b!6766617 () Bool)

(assert (= bs!1800681 (and b!6766617 b!6766568)))

(declare-fun lambda!380634 () Int)

(assert (=> bs!1800681 (not (= lambda!380634 lambda!380630))))

(declare-fun bs!1800682 () Bool)

(assert (= bs!1800682 (and b!6766617 d!2125393)))

(assert (=> bs!1800682 (not (= lambda!380634 lambda!380583))))

(declare-fun bs!1800683 () Bool)

(assert (= bs!1800683 (and b!6766617 b!6765810)))

(assert (=> bs!1800683 (not (= lambda!380634 lambda!380568))))

(declare-fun bs!1800684 () Bool)

(assert (= bs!1800684 (and b!6766617 b!6766464)))

(assert (=> bs!1800684 (not (= lambda!380634 lambda!380618))))

(assert (=> bs!1800682 (= (and (= (reg!16920 (regTwo!33695 r!7292)) (reg!16920 r!7292)) (= (regTwo!33695 r!7292) (Star!16591 (reg!16920 r!7292)))) (= lambda!380634 lambda!380586))))

(declare-fun bs!1800685 () Bool)

(assert (= bs!1800685 (and b!6766617 b!6765357)))

(assert (=> bs!1800685 (not (= lambda!380634 lambda!380522))))

(declare-fun bs!1800686 () Bool)

(assert (= bs!1800686 (and b!6766617 b!6766543)))

(assert (=> bs!1800686 (not (= lambda!380634 lambda!380628))))

(declare-fun bs!1800687 () Bool)

(assert (= bs!1800687 (and b!6766617 b!6766563)))

(assert (=> bs!1800687 (= (and (= (reg!16920 (regTwo!33695 r!7292)) (reg!16920 (regOne!33695 lt!2442635))) (= (regTwo!33695 r!7292) (regOne!33695 lt!2442635))) (= lambda!380634 lambda!380629))))

(declare-fun bs!1800688 () Bool)

(assert (= bs!1800688 (and b!6766617 b!6766162)))

(assert (=> bs!1800688 (not (= lambda!380634 lambda!380606))))

(declare-fun bs!1800689 () Bool)

(assert (= bs!1800689 (and b!6766617 d!2125425)))

(assert (=> bs!1800689 (not (= lambda!380634 lambda!380598))))

(declare-fun bs!1800690 () Bool)

(assert (= bs!1800690 (and b!6766617 b!6766157)))

(assert (=> bs!1800690 (= (and (= (reg!16920 (regTwo!33695 r!7292)) (reg!16920 lt!2442635)) (= (regTwo!33695 r!7292) lt!2442635)) (= lambda!380634 lambda!380605))))

(declare-fun bs!1800691 () Bool)

(assert (= bs!1800691 (and b!6766617 d!2125401)))

(assert (=> bs!1800691 (not (= lambda!380634 lambda!380594))))

(declare-fun bs!1800692 () Bool)

(assert (= bs!1800692 (and b!6766617 b!6765805)))

(assert (=> bs!1800692 (= (and (= (reg!16920 (regTwo!33695 r!7292)) (reg!16920 r!7292)) (= (regTwo!33695 r!7292) r!7292)) (= lambda!380634 lambda!380565))))

(declare-fun bs!1800693 () Bool)

(assert (= bs!1800693 (and b!6766617 b!6766459)))

(assert (=> bs!1800693 (= (and (= (reg!16920 (regTwo!33695 r!7292)) (reg!16920 (regTwo!33695 lt!2442635))) (= (regTwo!33695 r!7292) (regTwo!33695 lt!2442635))) (= lambda!380634 lambda!380617))))

(assert (=> bs!1800691 (not (= lambda!380634 lambda!380595))))

(declare-fun bs!1800694 () Bool)

(assert (= bs!1800694 (and b!6766617 b!6766538)))

(assert (=> bs!1800694 (= (and (= (reg!16920 (regTwo!33695 r!7292)) (reg!16920 (regOne!33695 r!7292))) (= (regTwo!33695 r!7292) (regOne!33695 r!7292))) (= lambda!380634 lambda!380627))))

(assert (=> bs!1800685 (= (and (= (reg!16920 (regTwo!33695 r!7292)) (reg!16920 r!7292)) (= (regTwo!33695 r!7292) r!7292)) (= lambda!380634 lambda!380521))))

(assert (=> bs!1800685 (not (= lambda!380634 lambda!380520))))

(assert (=> b!6766617 true))

(assert (=> b!6766617 true))

(declare-fun bs!1800696 () Bool)

(declare-fun b!6766622 () Bool)

(assert (= bs!1800696 (and b!6766622 b!6766568)))

(declare-fun lambda!380638 () Int)

(assert (=> bs!1800696 (= (and (= (regOne!33694 (regTwo!33695 r!7292)) (regOne!33694 (regOne!33695 lt!2442635))) (= (regTwo!33694 (regTwo!33695 r!7292)) (regTwo!33694 (regOne!33695 lt!2442635)))) (= lambda!380638 lambda!380630))))

(declare-fun bs!1800698 () Bool)

(assert (= bs!1800698 (and b!6766622 d!2125393)))

(assert (=> bs!1800698 (not (= lambda!380638 lambda!380583))))

(declare-fun bs!1800701 () Bool)

(assert (= bs!1800701 (and b!6766622 b!6765810)))

(assert (=> bs!1800701 (= (and (= (regOne!33694 (regTwo!33695 r!7292)) (regOne!33694 r!7292)) (= (regTwo!33694 (regTwo!33695 r!7292)) (regTwo!33694 r!7292))) (= lambda!380638 lambda!380568))))

(declare-fun bs!1800703 () Bool)

(assert (= bs!1800703 (and b!6766622 b!6766464)))

(assert (=> bs!1800703 (= (and (= (regOne!33694 (regTwo!33695 r!7292)) (regOne!33694 (regTwo!33695 lt!2442635))) (= (regTwo!33694 (regTwo!33695 r!7292)) (regTwo!33694 (regTwo!33695 lt!2442635)))) (= lambda!380638 lambda!380618))))

(assert (=> bs!1800698 (not (= lambda!380638 lambda!380586))))

(declare-fun bs!1800705 () Bool)

(assert (= bs!1800705 (and b!6766622 b!6765357)))

(assert (=> bs!1800705 (= (and (= (regOne!33694 (regTwo!33695 r!7292)) (reg!16920 r!7292)) (= (regTwo!33694 (regTwo!33695 r!7292)) r!7292)) (= lambda!380638 lambda!380522))))

(declare-fun bs!1800707 () Bool)

(assert (= bs!1800707 (and b!6766622 b!6766543)))

(assert (=> bs!1800707 (= (and (= (regOne!33694 (regTwo!33695 r!7292)) (regOne!33694 (regOne!33695 r!7292))) (= (regTwo!33694 (regTwo!33695 r!7292)) (regTwo!33694 (regOne!33695 r!7292)))) (= lambda!380638 lambda!380628))))

(declare-fun bs!1800709 () Bool)

(assert (= bs!1800709 (and b!6766622 b!6766563)))

(assert (=> bs!1800709 (not (= lambda!380638 lambda!380629))))

(declare-fun bs!1800710 () Bool)

(assert (= bs!1800710 (and b!6766622 b!6766617)))

(assert (=> bs!1800710 (not (= lambda!380638 lambda!380634))))

(declare-fun bs!1800712 () Bool)

(assert (= bs!1800712 (and b!6766622 b!6766162)))

(assert (=> bs!1800712 (= (and (= (regOne!33694 (regTwo!33695 r!7292)) (regOne!33694 lt!2442635)) (= (regTwo!33694 (regTwo!33695 r!7292)) (regTwo!33694 lt!2442635))) (= lambda!380638 lambda!380606))))

(declare-fun bs!1800714 () Bool)

(assert (= bs!1800714 (and b!6766622 d!2125425)))

(assert (=> bs!1800714 (not (= lambda!380638 lambda!380598))))

(declare-fun bs!1800715 () Bool)

(assert (= bs!1800715 (and b!6766622 b!6766157)))

(assert (=> bs!1800715 (not (= lambda!380638 lambda!380605))))

(declare-fun bs!1800717 () Bool)

(assert (= bs!1800717 (and b!6766622 d!2125401)))

(assert (=> bs!1800717 (not (= lambda!380638 lambda!380594))))

(declare-fun bs!1800718 () Bool)

(assert (= bs!1800718 (and b!6766622 b!6765805)))

(assert (=> bs!1800718 (not (= lambda!380638 lambda!380565))))

(declare-fun bs!1800720 () Bool)

(assert (= bs!1800720 (and b!6766622 b!6766459)))

(assert (=> bs!1800720 (not (= lambda!380638 lambda!380617))))

(assert (=> bs!1800717 (= (and (= (regOne!33694 (regTwo!33695 r!7292)) (reg!16920 r!7292)) (= (regTwo!33694 (regTwo!33695 r!7292)) r!7292)) (= lambda!380638 lambda!380595))))

(declare-fun bs!1800722 () Bool)

(assert (= bs!1800722 (and b!6766622 b!6766538)))

(assert (=> bs!1800722 (not (= lambda!380638 lambda!380627))))

(assert (=> bs!1800705 (not (= lambda!380638 lambda!380521))))

(assert (=> bs!1800705 (not (= lambda!380638 lambda!380520))))

(assert (=> b!6766622 true))

(assert (=> b!6766622 true))

(declare-fun b!6766615 () Bool)

(declare-fun e!4085614 () Bool)

(declare-fun call!613084 () Bool)

(assert (=> b!6766615 (= e!4085614 call!613084)))

(declare-fun c!1256348 () Bool)

(declare-fun call!613085 () Bool)

(declare-fun bm!613079 () Bool)

(assert (=> bm!613079 (= call!613085 (Exists!3659 (ite c!1256348 lambda!380634 lambda!380638)))))

(declare-fun b!6766616 () Bool)

(declare-fun e!4085612 () Bool)

(declare-fun e!4085617 () Bool)

(assert (=> b!6766616 (= e!4085612 e!4085617)))

(declare-fun res!2766667 () Bool)

(assert (=> b!6766616 (= res!2766667 (matchRSpec!3692 (regOne!33695 (regTwo!33695 r!7292)) s!2326))))

(assert (=> b!6766616 (=> res!2766667 e!4085617)))

(declare-fun e!4085611 () Bool)

(assert (=> b!6766617 (= e!4085611 call!613085)))

(declare-fun b!6766618 () Bool)

(declare-fun e!4085616 () Bool)

(assert (=> b!6766618 (= e!4085614 e!4085616)))

(declare-fun res!2766666 () Bool)

(assert (=> b!6766618 (= res!2766666 (not ((_ is EmptyLang!16591) (regTwo!33695 r!7292))))))

(assert (=> b!6766618 (=> (not res!2766666) (not e!4085616))))

(declare-fun b!6766619 () Bool)

(declare-fun e!4085613 () Bool)

(assert (=> b!6766619 (= e!4085613 (= s!2326 (Cons!65950 (c!1256003 (regTwo!33695 r!7292)) Nil!65950)))))

(declare-fun b!6766620 () Bool)

(assert (=> b!6766620 (= e!4085617 (matchRSpec!3692 (regTwo!33695 (regTwo!33695 r!7292)) s!2326))))

(declare-fun d!2125639 () Bool)

(declare-fun c!1256350 () Bool)

(assert (=> d!2125639 (= c!1256350 ((_ is EmptyExpr!16591) (regTwo!33695 r!7292)))))

(assert (=> d!2125639 (= (matchRSpec!3692 (regTwo!33695 r!7292) s!2326) e!4085614)))

(declare-fun bm!613080 () Bool)

(assert (=> bm!613080 (= call!613084 (isEmpty!38306 s!2326))))

(declare-fun b!6766621 () Bool)

(declare-fun c!1256349 () Bool)

(assert (=> b!6766621 (= c!1256349 ((_ is Union!16591) (regTwo!33695 r!7292)))))

(assert (=> b!6766621 (= e!4085613 e!4085612)))

(declare-fun e!4085615 () Bool)

(assert (=> b!6766622 (= e!4085615 call!613085)))

(declare-fun b!6766623 () Bool)

(declare-fun res!2766668 () Bool)

(assert (=> b!6766623 (=> res!2766668 e!4085611)))

(assert (=> b!6766623 (= res!2766668 call!613084)))

(assert (=> b!6766623 (= e!4085615 e!4085611)))

(declare-fun b!6766624 () Bool)

(declare-fun c!1256351 () Bool)

(assert (=> b!6766624 (= c!1256351 ((_ is ElementMatch!16591) (regTwo!33695 r!7292)))))

(assert (=> b!6766624 (= e!4085616 e!4085613)))

(declare-fun b!6766625 () Bool)

(assert (=> b!6766625 (= e!4085612 e!4085615)))

(assert (=> b!6766625 (= c!1256348 ((_ is Star!16591) (regTwo!33695 r!7292)))))

(assert (= (and d!2125639 c!1256350) b!6766615))

(assert (= (and d!2125639 (not c!1256350)) b!6766618))

(assert (= (and b!6766618 res!2766666) b!6766624))

(assert (= (and b!6766624 c!1256351) b!6766619))

(assert (= (and b!6766624 (not c!1256351)) b!6766621))

(assert (= (and b!6766621 c!1256349) b!6766616))

(assert (= (and b!6766621 (not c!1256349)) b!6766625))

(assert (= (and b!6766616 (not res!2766667)) b!6766620))

(assert (= (and b!6766625 c!1256348) b!6766623))

(assert (= (and b!6766625 (not c!1256348)) b!6766622))

(assert (= (and b!6766623 (not res!2766668)) b!6766617))

(assert (= (or b!6766617 b!6766622) bm!613079))

(assert (= (or b!6766615 b!6766623) bm!613080))

(declare-fun m!7517656 () Bool)

(assert (=> bm!613079 m!7517656))

(declare-fun m!7517658 () Bool)

(assert (=> b!6766616 m!7517658))

(declare-fun m!7517660 () Bool)

(assert (=> b!6766620 m!7517660))

(assert (=> bm!613080 m!7516556))

(assert (=> b!6765808 d!2125639))

(declare-fun d!2125641 () Bool)

(assert (=> d!2125641 (= (nullable!6574 (regOne!33694 r!7292)) (nullableFct!2480 (regOne!33694 r!7292)))))

(declare-fun bs!1800723 () Bool)

(assert (= bs!1800723 d!2125641))

(declare-fun m!7517662 () Bool)

(assert (=> bs!1800723 m!7517662))

(assert (=> b!6765552 d!2125641))

(declare-fun b!6766632 () Bool)

(declare-fun e!4085621 () Bool)

(declare-fun call!613087 () Bool)

(assert (=> b!6766632 (= e!4085621 call!613087)))

(declare-fun b!6766633 () Bool)

(declare-fun res!2766679 () Bool)

(declare-fun e!4085624 () Bool)

(assert (=> b!6766633 (=> res!2766679 e!4085624)))

(assert (=> b!6766633 (= res!2766679 (not ((_ is Concat!25436) lt!2442677)))))

(declare-fun e!4085626 () Bool)

(assert (=> b!6766633 (= e!4085626 e!4085624)))

(declare-fun c!1256352 () Bool)

(declare-fun bm!613081 () Bool)

(declare-fun c!1256353 () Bool)

(assert (=> bm!613081 (= call!613087 (validRegex!8327 (ite c!1256352 (reg!16920 lt!2442677) (ite c!1256353 (regOne!33695 lt!2442677) (regOne!33694 lt!2442677)))))))

(declare-fun b!6766634 () Bool)

(declare-fun res!2766675 () Bool)

(declare-fun e!4085625 () Bool)

(assert (=> b!6766634 (=> (not res!2766675) (not e!4085625))))

(declare-fun call!613086 () Bool)

(assert (=> b!6766634 (= res!2766675 call!613086)))

(assert (=> b!6766634 (= e!4085626 e!4085625)))

(declare-fun d!2125643 () Bool)

(declare-fun res!2766677 () Bool)

(declare-fun e!4085623 () Bool)

(assert (=> d!2125643 (=> res!2766677 e!4085623)))

(assert (=> d!2125643 (= res!2766677 ((_ is ElementMatch!16591) lt!2442677))))

(assert (=> d!2125643 (= (validRegex!8327 lt!2442677) e!4085623)))

(declare-fun b!6766635 () Bool)

(declare-fun e!4085622 () Bool)

(assert (=> b!6766635 (= e!4085622 e!4085626)))

(assert (=> b!6766635 (= c!1256353 ((_ is Union!16591) lt!2442677))))

(declare-fun b!6766636 () Bool)

(declare-fun e!4085620 () Bool)

(declare-fun call!613088 () Bool)

(assert (=> b!6766636 (= e!4085620 call!613088)))

(declare-fun b!6766637 () Bool)

(assert (=> b!6766637 (= e!4085622 e!4085621)))

(declare-fun res!2766678 () Bool)

(assert (=> b!6766637 (= res!2766678 (not (nullable!6574 (reg!16920 lt!2442677))))))

(assert (=> b!6766637 (=> (not res!2766678) (not e!4085621))))

(declare-fun b!6766638 () Bool)

(assert (=> b!6766638 (= e!4085625 call!613088)))

(declare-fun bm!613082 () Bool)

(assert (=> bm!613082 (= call!613088 (validRegex!8327 (ite c!1256353 (regTwo!33695 lt!2442677) (regTwo!33694 lt!2442677))))))

(declare-fun b!6766639 () Bool)

(assert (=> b!6766639 (= e!4085624 e!4085620)))

(declare-fun res!2766676 () Bool)

(assert (=> b!6766639 (=> (not res!2766676) (not e!4085620))))

(assert (=> b!6766639 (= res!2766676 call!613086)))

(declare-fun bm!613083 () Bool)

(assert (=> bm!613083 (= call!613086 call!613087)))

(declare-fun b!6766640 () Bool)

(assert (=> b!6766640 (= e!4085623 e!4085622)))

(assert (=> b!6766640 (= c!1256352 ((_ is Star!16591) lt!2442677))))

(assert (= (and d!2125643 (not res!2766677)) b!6766640))

(assert (= (and b!6766640 c!1256352) b!6766637))

(assert (= (and b!6766640 (not c!1256352)) b!6766635))

(assert (= (and b!6766637 res!2766678) b!6766632))

(assert (= (and b!6766635 c!1256353) b!6766634))

(assert (= (and b!6766635 (not c!1256353)) b!6766633))

(assert (= (and b!6766634 res!2766675) b!6766638))

(assert (= (and b!6766633 (not res!2766679)) b!6766639))

(assert (= (and b!6766639 res!2766676) b!6766636))

(assert (= (or b!6766638 b!6766636) bm!613082))

(assert (= (or b!6766634 b!6766639) bm!613083))

(assert (= (or b!6766632 bm!613083) bm!613081))

(declare-fun m!7517664 () Bool)

(assert (=> bm!613081 m!7517664))

(declare-fun m!7517666 () Bool)

(assert (=> b!6766637 m!7517666))

(declare-fun m!7517668 () Bool)

(assert (=> bm!613082 m!7517668))

(assert (=> d!2125309 d!2125643))

(declare-fun bs!1800724 () Bool)

(declare-fun d!2125645 () Bool)

(assert (= bs!1800724 (and d!2125645 d!2125431)))

(declare-fun lambda!380640 () Int)

(assert (=> bs!1800724 (= lambda!380640 lambda!380601)))

(declare-fun bs!1800725 () Bool)

(assert (= bs!1800725 (and d!2125645 d!2125525)))

(assert (=> bs!1800725 (= lambda!380640 lambda!380614)))

(declare-fun bs!1800726 () Bool)

(assert (= bs!1800726 (and d!2125645 d!2125575)))

(assert (=> bs!1800726 (= lambda!380640 lambda!380619)))

(declare-fun bs!1800727 () Bool)

(assert (= bs!1800727 (and d!2125645 d!2125361)))

(assert (=> bs!1800727 (= lambda!380640 lambda!380574)))

(declare-fun bs!1800729 () Bool)

(assert (= bs!1800729 (and d!2125645 d!2125433)))

(assert (=> bs!1800729 (= lambda!380640 lambda!380604)))

(declare-fun bs!1800730 () Bool)

(assert (= bs!1800730 (and d!2125645 d!2125239)))

(assert (=> bs!1800730 (= lambda!380640 lambda!380526)))

(declare-fun bs!1800731 () Bool)

(assert (= bs!1800731 (and d!2125645 d!2125577)))

(assert (=> bs!1800731 (= lambda!380640 lambda!380622)))

(declare-fun bs!1800732 () Bool)

(assert (= bs!1800732 (and d!2125645 d!2125459)))

(assert (=> bs!1800732 (= lambda!380640 lambda!380607)))

(declare-fun bs!1800733 () Bool)

(assert (= bs!1800733 (and d!2125645 d!2125313)))

(assert (=> bs!1800733 (= lambda!380640 lambda!380553)))

(declare-fun b!6766641 () Bool)

(declare-fun e!4085629 () Bool)

(assert (=> b!6766641 (= e!4085629 (isEmpty!38309 (t!379779 (unfocusZipperList!2012 lt!2442634))))))

(declare-fun b!6766642 () Bool)

(declare-fun e!4085627 () Bool)

(declare-fun lt!2442779 () Regex!16591)

(assert (=> b!6766642 (= e!4085627 (= lt!2442779 (head!13602 (unfocusZipperList!2012 lt!2442634))))))

(declare-fun b!6766643 () Bool)

(declare-fun e!4085631 () Bool)

(declare-fun e!4085630 () Bool)

(assert (=> b!6766643 (= e!4085631 e!4085630)))

(declare-fun c!1256355 () Bool)

(assert (=> b!6766643 (= c!1256355 (isEmpty!38309 (unfocusZipperList!2012 lt!2442634)))))

(declare-fun b!6766644 () Bool)

(declare-fun e!4085628 () Regex!16591)

(assert (=> b!6766644 (= e!4085628 (Union!16591 (h!72396 (unfocusZipperList!2012 lt!2442634)) (generalisedUnion!2435 (t!379779 (unfocusZipperList!2012 lt!2442634)))))))

(declare-fun b!6766645 () Bool)

(declare-fun e!4085632 () Regex!16591)

(assert (=> b!6766645 (= e!4085632 e!4085628)))

(declare-fun c!1256354 () Bool)

(assert (=> b!6766645 (= c!1256354 ((_ is Cons!65948) (unfocusZipperList!2012 lt!2442634)))))

(declare-fun b!6766646 () Bool)

(assert (=> b!6766646 (= e!4085630 e!4085627)))

(declare-fun c!1256357 () Bool)

(assert (=> b!6766646 (= c!1256357 (isEmpty!38309 (tail!12687 (unfocusZipperList!2012 lt!2442634))))))

(assert (=> d!2125645 e!4085631))

(declare-fun res!2766681 () Bool)

(assert (=> d!2125645 (=> (not res!2766681) (not e!4085631))))

(assert (=> d!2125645 (= res!2766681 (validRegex!8327 lt!2442779))))

(assert (=> d!2125645 (= lt!2442779 e!4085632)))

(declare-fun c!1256356 () Bool)

(assert (=> d!2125645 (= c!1256356 e!4085629)))

(declare-fun res!2766680 () Bool)

(assert (=> d!2125645 (=> (not res!2766680) (not e!4085629))))

(assert (=> d!2125645 (= res!2766680 ((_ is Cons!65948) (unfocusZipperList!2012 lt!2442634)))))

(assert (=> d!2125645 (forall!15787 (unfocusZipperList!2012 lt!2442634) lambda!380640)))

(assert (=> d!2125645 (= (generalisedUnion!2435 (unfocusZipperList!2012 lt!2442634)) lt!2442779)))

(declare-fun b!6766647 () Bool)

(assert (=> b!6766647 (= e!4085628 EmptyLang!16591)))

(declare-fun b!6766648 () Bool)

(assert (=> b!6766648 (= e!4085630 (isEmptyLang!1961 lt!2442779))))

(declare-fun b!6766649 () Bool)

(assert (=> b!6766649 (= e!4085627 (isUnion!1391 lt!2442779))))

(declare-fun b!6766650 () Bool)

(assert (=> b!6766650 (= e!4085632 (h!72396 (unfocusZipperList!2012 lt!2442634)))))

(assert (= (and d!2125645 res!2766680) b!6766641))

(assert (= (and d!2125645 c!1256356) b!6766650))

(assert (= (and d!2125645 (not c!1256356)) b!6766645))

(assert (= (and b!6766645 c!1256354) b!6766644))

(assert (= (and b!6766645 (not c!1256354)) b!6766647))

(assert (= (and d!2125645 res!2766681) b!6766643))

(assert (= (and b!6766643 c!1256355) b!6766648))

(assert (= (and b!6766643 (not c!1256355)) b!6766646))

(assert (= (and b!6766646 c!1256357) b!6766642))

(assert (= (and b!6766646 (not c!1256357)) b!6766649))

(declare-fun m!7517674 () Bool)

(assert (=> b!6766644 m!7517674))

(assert (=> b!6766642 m!7516824))

(declare-fun m!7517676 () Bool)

(assert (=> b!6766642 m!7517676))

(declare-fun m!7517678 () Bool)

(assert (=> b!6766649 m!7517678))

(declare-fun m!7517680 () Bool)

(assert (=> b!6766641 m!7517680))

(declare-fun m!7517682 () Bool)

(assert (=> d!2125645 m!7517682))

(assert (=> d!2125645 m!7516824))

(declare-fun m!7517684 () Bool)

(assert (=> d!2125645 m!7517684))

(declare-fun m!7517686 () Bool)

(assert (=> b!6766648 m!7517686))

(assert (=> b!6766643 m!7516824))

(declare-fun m!7517688 () Bool)

(assert (=> b!6766643 m!7517688))

(assert (=> b!6766646 m!7516824))

(declare-fun m!7517690 () Bool)

(assert (=> b!6766646 m!7517690))

(assert (=> b!6766646 m!7517690))

(declare-fun m!7517692 () Bool)

(assert (=> b!6766646 m!7517692))

(assert (=> d!2125309 d!2125645))

(declare-fun bs!1800734 () Bool)

(declare-fun d!2125649 () Bool)

(assert (= bs!1800734 (and d!2125649 d!2125431)))

(declare-fun lambda!380641 () Int)

(assert (=> bs!1800734 (= lambda!380641 lambda!380601)))

(declare-fun bs!1800735 () Bool)

(assert (= bs!1800735 (and d!2125649 d!2125525)))

(assert (=> bs!1800735 (= lambda!380641 lambda!380614)))

(declare-fun bs!1800736 () Bool)

(assert (= bs!1800736 (and d!2125649 d!2125575)))

(assert (=> bs!1800736 (= lambda!380641 lambda!380619)))

(declare-fun bs!1800737 () Bool)

(assert (= bs!1800737 (and d!2125649 d!2125361)))

(assert (=> bs!1800737 (= lambda!380641 lambda!380574)))

(declare-fun bs!1800738 () Bool)

(assert (= bs!1800738 (and d!2125649 d!2125433)))

(assert (=> bs!1800738 (= lambda!380641 lambda!380604)))

(declare-fun bs!1800739 () Bool)

(assert (= bs!1800739 (and d!2125649 d!2125577)))

(assert (=> bs!1800739 (= lambda!380641 lambda!380622)))

(declare-fun bs!1800740 () Bool)

(assert (= bs!1800740 (and d!2125649 d!2125459)))

(assert (=> bs!1800740 (= lambda!380641 lambda!380607)))

(declare-fun bs!1800741 () Bool)

(assert (= bs!1800741 (and d!2125649 d!2125313)))

(assert (=> bs!1800741 (= lambda!380641 lambda!380553)))

(declare-fun bs!1800742 () Bool)

(assert (= bs!1800742 (and d!2125649 d!2125645)))

(assert (=> bs!1800742 (= lambda!380641 lambda!380640)))

(declare-fun bs!1800743 () Bool)

(assert (= bs!1800743 (and d!2125649 d!2125239)))

(assert (=> bs!1800743 (= lambda!380641 lambda!380526)))

(declare-fun lt!2442780 () List!66072)

(assert (=> d!2125649 (forall!15787 lt!2442780 lambda!380641)))

(declare-fun e!4085633 () List!66072)

(assert (=> d!2125649 (= lt!2442780 e!4085633)))

(declare-fun c!1256358 () Bool)

(assert (=> d!2125649 (= c!1256358 ((_ is Cons!65949) lt!2442634))))

(assert (=> d!2125649 (= (unfocusZipperList!2012 lt!2442634) lt!2442780)))

(declare-fun b!6766651 () Bool)

(assert (=> b!6766651 (= e!4085633 (Cons!65948 (generalisedConcat!2188 (exprs!6475 (h!72397 lt!2442634))) (unfocusZipperList!2012 (t!379780 lt!2442634))))))

(declare-fun b!6766652 () Bool)

(assert (=> b!6766652 (= e!4085633 Nil!65948)))

(assert (= (and d!2125649 c!1256358) b!6766651))

(assert (= (and d!2125649 (not c!1256358)) b!6766652))

(declare-fun m!7517694 () Bool)

(assert (=> d!2125649 m!7517694))

(declare-fun m!7517696 () Bool)

(assert (=> b!6766651 m!7517696))

(declare-fun m!7517698 () Bool)

(assert (=> b!6766651 m!7517698))

(assert (=> d!2125309 d!2125649))

(declare-fun d!2125651 () Bool)

(assert (=> d!2125651 (= (nullable!6574 lt!2442635) (nullableFct!2480 lt!2442635))))

(declare-fun bs!1800744 () Bool)

(assert (= bs!1800744 d!2125651))

(declare-fun m!7517700 () Bool)

(assert (=> bs!1800744 m!7517700))

(assert (=> b!6766166 d!2125651))

(assert (=> d!2125437 d!2125397))

(declare-fun b!6766653 () Bool)

(declare-fun e!4085635 () Bool)

(declare-fun call!613090 () Bool)

(assert (=> b!6766653 (= e!4085635 call!613090)))

(declare-fun b!6766654 () Bool)

(declare-fun res!2766686 () Bool)

(declare-fun e!4085638 () Bool)

(assert (=> b!6766654 (=> res!2766686 e!4085638)))

(assert (=> b!6766654 (= res!2766686 (not ((_ is Concat!25436) lt!2442635)))))

(declare-fun e!4085640 () Bool)

(assert (=> b!6766654 (= e!4085640 e!4085638)))

(declare-fun c!1256360 () Bool)

(declare-fun bm!613084 () Bool)

(declare-fun c!1256359 () Bool)

(assert (=> bm!613084 (= call!613090 (validRegex!8327 (ite c!1256359 (reg!16920 lt!2442635) (ite c!1256360 (regOne!33695 lt!2442635) (regOne!33694 lt!2442635)))))))

(declare-fun b!6766655 () Bool)

(declare-fun res!2766682 () Bool)

(declare-fun e!4085639 () Bool)

(assert (=> b!6766655 (=> (not res!2766682) (not e!4085639))))

(declare-fun call!613089 () Bool)

(assert (=> b!6766655 (= res!2766682 call!613089)))

(assert (=> b!6766655 (= e!4085640 e!4085639)))

(declare-fun d!2125653 () Bool)

(declare-fun res!2766684 () Bool)

(declare-fun e!4085637 () Bool)

(assert (=> d!2125653 (=> res!2766684 e!4085637)))

(assert (=> d!2125653 (= res!2766684 ((_ is ElementMatch!16591) lt!2442635))))

(assert (=> d!2125653 (= (validRegex!8327 lt!2442635) e!4085637)))

(declare-fun b!6766656 () Bool)

(declare-fun e!4085636 () Bool)

(assert (=> b!6766656 (= e!4085636 e!4085640)))

(assert (=> b!6766656 (= c!1256360 ((_ is Union!16591) lt!2442635))))

(declare-fun b!6766657 () Bool)

(declare-fun e!4085634 () Bool)

(declare-fun call!613091 () Bool)

(assert (=> b!6766657 (= e!4085634 call!613091)))

(declare-fun b!6766658 () Bool)

(assert (=> b!6766658 (= e!4085636 e!4085635)))

(declare-fun res!2766685 () Bool)

(assert (=> b!6766658 (= res!2766685 (not (nullable!6574 (reg!16920 lt!2442635))))))

(assert (=> b!6766658 (=> (not res!2766685) (not e!4085635))))

(declare-fun b!6766659 () Bool)

(assert (=> b!6766659 (= e!4085639 call!613091)))

(declare-fun bm!613085 () Bool)

(assert (=> bm!613085 (= call!613091 (validRegex!8327 (ite c!1256360 (regTwo!33695 lt!2442635) (regTwo!33694 lt!2442635))))))

(declare-fun b!6766660 () Bool)

(assert (=> b!6766660 (= e!4085638 e!4085634)))

(declare-fun res!2766683 () Bool)

(assert (=> b!6766660 (=> (not res!2766683) (not e!4085634))))

(assert (=> b!6766660 (= res!2766683 call!613089)))

(declare-fun bm!613086 () Bool)

(assert (=> bm!613086 (= call!613089 call!613090)))

(declare-fun b!6766661 () Bool)

(assert (=> b!6766661 (= e!4085637 e!4085636)))

(assert (=> b!6766661 (= c!1256359 ((_ is Star!16591) lt!2442635))))

(assert (= (and d!2125653 (not res!2766684)) b!6766661))

(assert (= (and b!6766661 c!1256359) b!6766658))

(assert (= (and b!6766661 (not c!1256359)) b!6766656))

(assert (= (and b!6766658 res!2766685) b!6766653))

(assert (= (and b!6766656 c!1256360) b!6766655))

(assert (= (and b!6766656 (not c!1256360)) b!6766654))

(assert (= (and b!6766655 res!2766682) b!6766659))

(assert (= (and b!6766654 (not res!2766686)) b!6766660))

(assert (= (and b!6766660 res!2766683) b!6766657))

(assert (= (or b!6766659 b!6766657) bm!613085))

(assert (= (or b!6766655 b!6766660) bm!613086))

(assert (= (or b!6766653 bm!613086) bm!613084))

(declare-fun m!7517702 () Bool)

(assert (=> bm!613084 m!7517702))

(declare-fun m!7517704 () Bool)

(assert (=> b!6766658 m!7517704))

(declare-fun m!7517706 () Bool)

(assert (=> bm!613085 m!7517706))

(assert (=> d!2125437 d!2125653))

(assert (=> bs!1800515 d!2125455))

(declare-fun d!2125657 () Bool)

(assert (=> d!2125657 (= (isEmpty!38310 lt!2442631) (not ((_ is Some!16477) lt!2442631)))))

(assert (=> d!2125421 d!2125657))

(declare-fun d!2125659 () Bool)

(assert (=> d!2125659 (= (isConcat!1476 lt!2442708) ((_ is Concat!25436) lt!2442708))))

(assert (=> b!6765922 d!2125659))

(declare-fun d!2125663 () Bool)

(declare-fun res!2766691 () Bool)

(declare-fun e!4085642 () Bool)

(assert (=> d!2125663 (=> res!2766691 e!4085642)))

(assert (=> d!2125663 (= res!2766691 ((_ is Nil!65948) lt!2442750))))

(assert (=> d!2125663 (= (forall!15787 lt!2442750 lambda!380604) e!4085642)))

(declare-fun b!6766663 () Bool)

(declare-fun e!4085643 () Bool)

(assert (=> b!6766663 (= e!4085642 e!4085643)))

(declare-fun res!2766692 () Bool)

(assert (=> b!6766663 (=> (not res!2766692) (not e!4085643))))

(assert (=> b!6766663 (= res!2766692 (dynLambda!26315 lambda!380604 (h!72396 lt!2442750)))))

(declare-fun b!6766664 () Bool)

(assert (=> b!6766664 (= e!4085643 (forall!15787 (t!379779 lt!2442750) lambda!380604))))

(assert (= (and d!2125663 (not res!2766691)) b!6766663))

(assert (= (and b!6766663 res!2766692) b!6766664))

(declare-fun b_lambda!254789 () Bool)

(assert (=> (not b_lambda!254789) (not b!6766663)))

(declare-fun m!7517712 () Bool)

(assert (=> b!6766663 m!7517712))

(declare-fun m!7517714 () Bool)

(assert (=> b!6766664 m!7517714))

(assert (=> d!2125433 d!2125663))

(declare-fun b!6766665 () Bool)

(declare-fun e!4085646 () Bool)

(assert (=> b!6766665 (= e!4085646 (nullable!6574 (reg!16920 r!7292)))))

(declare-fun b!6766666 () Bool)

(declare-fun e!4085647 () Bool)

(declare-fun e!4085648 () Bool)

(assert (=> b!6766666 (= e!4085647 e!4085648)))

(declare-fun c!1256361 () Bool)

(assert (=> b!6766666 (= c!1256361 ((_ is EmptyLang!16591) (reg!16920 r!7292)))))

(declare-fun b!6766667 () Bool)

(assert (=> b!6766667 (= e!4085646 (matchR!8774 (derivativeStep!5258 (reg!16920 r!7292) (head!13599 (_1!36869 (get!22956 lt!2442739)))) (tail!12684 (_1!36869 (get!22956 lt!2442739)))))))

(declare-fun b!6766668 () Bool)

(declare-fun e!4085650 () Bool)

(assert (=> b!6766668 (= e!4085650 (= (head!13599 (_1!36869 (get!22956 lt!2442739))) (c!1256003 (reg!16920 r!7292))))))

(declare-fun b!6766670 () Bool)

(declare-fun res!2766697 () Bool)

(declare-fun e!4085644 () Bool)

(assert (=> b!6766670 (=> res!2766697 e!4085644)))

(assert (=> b!6766670 (= res!2766697 (not (isEmpty!38306 (tail!12684 (_1!36869 (get!22956 lt!2442739))))))))

(declare-fun b!6766671 () Bool)

(declare-fun e!4085649 () Bool)

(assert (=> b!6766671 (= e!4085649 e!4085644)))

(declare-fun res!2766693 () Bool)

(assert (=> b!6766671 (=> res!2766693 e!4085644)))

(declare-fun call!613092 () Bool)

(assert (=> b!6766671 (= res!2766693 call!613092)))

(declare-fun b!6766672 () Bool)

(assert (=> b!6766672 (= e!4085644 (not (= (head!13599 (_1!36869 (get!22956 lt!2442739))) (c!1256003 (reg!16920 r!7292)))))))

(declare-fun b!6766673 () Bool)

(declare-fun res!2766700 () Bool)

(declare-fun e!4085645 () Bool)

(assert (=> b!6766673 (=> res!2766700 e!4085645)))

(assert (=> b!6766673 (= res!2766700 e!4085650)))

(declare-fun res!2766698 () Bool)

(assert (=> b!6766673 (=> (not res!2766698) (not e!4085650))))

(declare-fun lt!2442781 () Bool)

(assert (=> b!6766673 (= res!2766698 lt!2442781)))

(declare-fun b!6766674 () Bool)

(declare-fun res!2766695 () Bool)

(assert (=> b!6766674 (=> (not res!2766695) (not e!4085650))))

(assert (=> b!6766674 (= res!2766695 (not call!613092))))

(declare-fun b!6766669 () Bool)

(assert (=> b!6766669 (= e!4085645 e!4085649)))

(declare-fun res!2766694 () Bool)

(assert (=> b!6766669 (=> (not res!2766694) (not e!4085649))))

(assert (=> b!6766669 (= res!2766694 (not lt!2442781))))

(declare-fun d!2125669 () Bool)

(assert (=> d!2125669 e!4085647))

(declare-fun c!1256363 () Bool)

(assert (=> d!2125669 (= c!1256363 ((_ is EmptyExpr!16591) (reg!16920 r!7292)))))

(assert (=> d!2125669 (= lt!2442781 e!4085646)))

(declare-fun c!1256362 () Bool)

(assert (=> d!2125669 (= c!1256362 (isEmpty!38306 (_1!36869 (get!22956 lt!2442739))))))

(assert (=> d!2125669 (validRegex!8327 (reg!16920 r!7292))))

(assert (=> d!2125669 (= (matchR!8774 (reg!16920 r!7292) (_1!36869 (get!22956 lt!2442739))) lt!2442781)))

(declare-fun bm!613087 () Bool)

(assert (=> bm!613087 (= call!613092 (isEmpty!38306 (_1!36869 (get!22956 lt!2442739))))))

(declare-fun b!6766675 () Bool)

(declare-fun res!2766699 () Bool)

(assert (=> b!6766675 (=> res!2766699 e!4085645)))

(assert (=> b!6766675 (= res!2766699 (not ((_ is ElementMatch!16591) (reg!16920 r!7292))))))

(assert (=> b!6766675 (= e!4085648 e!4085645)))

(declare-fun b!6766676 () Bool)

(assert (=> b!6766676 (= e!4085647 (= lt!2442781 call!613092))))

(declare-fun b!6766677 () Bool)

(declare-fun res!2766696 () Bool)

(assert (=> b!6766677 (=> (not res!2766696) (not e!4085650))))

(assert (=> b!6766677 (= res!2766696 (isEmpty!38306 (tail!12684 (_1!36869 (get!22956 lt!2442739)))))))

(declare-fun b!6766678 () Bool)

(assert (=> b!6766678 (= e!4085648 (not lt!2442781))))

(assert (= (and d!2125669 c!1256362) b!6766665))

(assert (= (and d!2125669 (not c!1256362)) b!6766667))

(assert (= (and d!2125669 c!1256363) b!6766676))

(assert (= (and d!2125669 (not c!1256363)) b!6766666))

(assert (= (and b!6766666 c!1256361) b!6766678))

(assert (= (and b!6766666 (not c!1256361)) b!6766675))

(assert (= (and b!6766675 (not res!2766699)) b!6766673))

(assert (= (and b!6766673 res!2766698) b!6766674))

(assert (= (and b!6766674 res!2766695) b!6766677))

(assert (= (and b!6766677 res!2766696) b!6766668))

(assert (= (and b!6766673 (not res!2766700)) b!6766669))

(assert (= (and b!6766669 res!2766694) b!6766671))

(assert (= (and b!6766671 (not res!2766693)) b!6766670))

(assert (= (and b!6766670 (not res!2766697)) b!6766672))

(assert (= (or b!6766676 b!6766671 b!6766674) bm!613087))

(declare-fun m!7517716 () Bool)

(assert (=> b!6766667 m!7517716))

(assert (=> b!6766667 m!7517716))

(declare-fun m!7517718 () Bool)

(assert (=> b!6766667 m!7517718))

(declare-fun m!7517720 () Bool)

(assert (=> b!6766667 m!7517720))

(assert (=> b!6766667 m!7517718))

(assert (=> b!6766667 m!7517720))

(declare-fun m!7517722 () Bool)

(assert (=> b!6766667 m!7517722))

(declare-fun m!7517724 () Bool)

(assert (=> d!2125669 m!7517724))

(assert (=> d!2125669 m!7516838))

(assert (=> b!6766668 m!7517716))

(assert (=> bm!613087 m!7517724))

(assert (=> b!6766672 m!7517716))

(assert (=> b!6766665 m!7516840))

(assert (=> b!6766677 m!7517720))

(assert (=> b!6766677 m!7517720))

(declare-fun m!7517726 () Bool)

(assert (=> b!6766677 m!7517726))

(assert (=> b!6766670 m!7517720))

(assert (=> b!6766670 m!7517720))

(assert (=> b!6766670 m!7517726))

(assert (=> b!6766108 d!2125669))

(assert (=> b!6766108 d!2125539))

(declare-fun d!2125671 () Bool)

(declare-fun lt!2442784 () Int)

(assert (=> d!2125671 (>= lt!2442784 0)))

(declare-fun e!4085653 () Int)

(assert (=> d!2125671 (= lt!2442784 e!4085653)))

(declare-fun c!1256366 () Bool)

(assert (=> d!2125671 (= c!1256366 ((_ is Nil!65950) lt!2442715))))

(assert (=> d!2125671 (= (size!40628 lt!2442715) lt!2442784)))

(declare-fun b!6766683 () Bool)

(assert (=> b!6766683 (= e!4085653 0)))

(declare-fun b!6766684 () Bool)

(assert (=> b!6766684 (= e!4085653 (+ 1 (size!40628 (t!379781 lt!2442715))))))

(assert (= (and d!2125671 c!1256366) b!6766683))

(assert (= (and d!2125671 (not c!1256366)) b!6766684))

(declare-fun m!7517728 () Bool)

(assert (=> b!6766684 m!7517728))

(assert (=> b!6765948 d!2125671))

(declare-fun d!2125673 () Bool)

(declare-fun lt!2442785 () Int)

(assert (=> d!2125673 (>= lt!2442785 0)))

(declare-fun e!4085654 () Int)

(assert (=> d!2125673 (= lt!2442785 e!4085654)))

(declare-fun c!1256367 () Bool)

(assert (=> d!2125673 (= c!1256367 ((_ is Nil!65950) (_1!36869 lt!2442636)))))

(assert (=> d!2125673 (= (size!40628 (_1!36869 lt!2442636)) lt!2442785)))

(declare-fun b!6766685 () Bool)

(assert (=> b!6766685 (= e!4085654 0)))

(declare-fun b!6766686 () Bool)

(assert (=> b!6766686 (= e!4085654 (+ 1 (size!40628 (t!379781 (_1!36869 lt!2442636)))))))

(assert (= (and d!2125673 c!1256367) b!6766685))

(assert (= (and d!2125673 (not c!1256367)) b!6766686))

(assert (=> b!6766686 m!7517424))

(assert (=> b!6765948 d!2125673))

(declare-fun d!2125675 () Bool)

(declare-fun lt!2442786 () Int)

(assert (=> d!2125675 (>= lt!2442786 0)))

(declare-fun e!4085657 () Int)

(assert (=> d!2125675 (= lt!2442786 e!4085657)))

(declare-fun c!1256368 () Bool)

(assert (=> d!2125675 (= c!1256368 ((_ is Nil!65950) (_2!36869 lt!2442636)))))

(assert (=> d!2125675 (= (size!40628 (_2!36869 lt!2442636)) lt!2442786)))

(declare-fun b!6766689 () Bool)

(assert (=> b!6766689 (= e!4085657 0)))

(declare-fun b!6766690 () Bool)

(assert (=> b!6766690 (= e!4085657 (+ 1 (size!40628 (t!379781 (_2!36869 lt!2442636)))))))

(assert (= (and d!2125675 c!1256368) b!6766689))

(assert (= (and d!2125675 (not c!1256368)) b!6766690))

(declare-fun m!7517730 () Bool)

(assert (=> b!6766690 m!7517730))

(assert (=> b!6765948 d!2125675))

(assert (=> b!6765406 d!2125543))

(declare-fun d!2125677 () Bool)

(assert (=> d!2125677 (= (head!13599 (_1!36869 lt!2442636)) (h!72398 (_1!36869 lt!2442636)))))

(assert (=> b!6765587 d!2125677))

(declare-fun d!2125679 () Bool)

(declare-fun c!1256369 () Bool)

(assert (=> d!2125679 (= c!1256369 (isEmpty!38306 (tail!12684 (t!379781 s!2326))))))

(declare-fun e!4085658 () Bool)

(assert (=> d!2125679 (= (matchZipper!2577 (derivationStepZipper!2535 (derivationStepZipper!2535 lt!2442640 (h!72398 s!2326)) (head!13599 (t!379781 s!2326))) (tail!12684 (t!379781 s!2326))) e!4085658)))

(declare-fun b!6766693 () Bool)

(assert (=> b!6766693 (= e!4085658 (nullableZipper!2301 (derivationStepZipper!2535 (derivationStepZipper!2535 lt!2442640 (h!72398 s!2326)) (head!13599 (t!379781 s!2326)))))))

(declare-fun b!6766694 () Bool)

(assert (=> b!6766694 (= e!4085658 (matchZipper!2577 (derivationStepZipper!2535 (derivationStepZipper!2535 (derivationStepZipper!2535 lt!2442640 (h!72398 s!2326)) (head!13599 (t!379781 s!2326))) (head!13599 (tail!12684 (t!379781 s!2326)))) (tail!12684 (tail!12684 (t!379781 s!2326)))))))

(assert (= (and d!2125679 c!1256369) b!6766693))

(assert (= (and d!2125679 (not c!1256369)) b!6766694))

(assert (=> d!2125679 m!7516730))

(declare-fun m!7517732 () Bool)

(assert (=> d!2125679 m!7517732))

(assert (=> b!6766693 m!7516728))

(declare-fun m!7517734 () Bool)

(assert (=> b!6766693 m!7517734))

(assert (=> b!6766694 m!7516730))

(declare-fun m!7517736 () Bool)

(assert (=> b!6766694 m!7517736))

(assert (=> b!6766694 m!7516728))

(assert (=> b!6766694 m!7517736))

(declare-fun m!7517738 () Bool)

(assert (=> b!6766694 m!7517738))

(assert (=> b!6766694 m!7516730))

(declare-fun m!7517740 () Bool)

(assert (=> b!6766694 m!7517740))

(assert (=> b!6766694 m!7517738))

(assert (=> b!6766694 m!7517740))

(declare-fun m!7517742 () Bool)

(assert (=> b!6766694 m!7517742))

(assert (=> b!6765471 d!2125679))

(declare-fun bs!1800747 () Bool)

(declare-fun d!2125681 () Bool)

(assert (= bs!1800747 (and d!2125681 d!2125633)))

(declare-fun lambda!380644 () Int)

(assert (=> bs!1800747 (= (= (head!13599 (t!379781 s!2326)) (head!13599 s!2326)) (= lambda!380644 lambda!380631))))

(declare-fun bs!1800748 () Bool)

(assert (= bs!1800748 (and d!2125681 d!2125253)))

(assert (=> bs!1800748 (= (= (head!13599 (t!379781 s!2326)) (h!72398 s!2326)) (= lambda!380644 lambda!380540))))

(declare-fun bs!1800749 () Bool)

(assert (= bs!1800749 (and d!2125681 d!2125271)))

(assert (=> bs!1800749 (= (= (head!13599 (t!379781 s!2326)) (h!72398 s!2326)) (= lambda!380644 lambda!380542))))

(declare-fun bs!1800750 () Bool)

(assert (= bs!1800750 (and d!2125681 b!6765361)))

(assert (=> bs!1800750 (= (= (head!13599 (t!379781 s!2326)) (h!72398 s!2326)) (= lambda!380644 lambda!380523))))

(declare-fun bs!1800751 () Bool)

(assert (= bs!1800751 (and d!2125681 d!2125307)))

(assert (=> bs!1800751 (= (= (head!13599 (t!379781 s!2326)) (h!72398 s!2326)) (= lambda!380644 lambda!380552))))

(assert (=> d!2125681 true))

(assert (=> d!2125681 (= (derivationStepZipper!2535 (derivationStepZipper!2535 lt!2442640 (h!72398 s!2326)) (head!13599 (t!379781 s!2326))) (flatMap!2072 (derivationStepZipper!2535 lt!2442640 (h!72398 s!2326)) lambda!380644))))

(declare-fun bs!1800752 () Bool)

(assert (= bs!1800752 d!2125681))

(assert (=> bs!1800752 m!7516584))

(declare-fun m!7517744 () Bool)

(assert (=> bs!1800752 m!7517744))

(assert (=> b!6765471 d!2125681))

(declare-fun d!2125683 () Bool)

(assert (=> d!2125683 (= (head!13599 (t!379781 s!2326)) (h!72398 (t!379781 s!2326)))))

(assert (=> b!6765471 d!2125683))

(declare-fun d!2125685 () Bool)

(assert (=> d!2125685 (= (tail!12684 (t!379781 s!2326)) (t!379781 (t!379781 s!2326)))))

(assert (=> b!6765471 d!2125685))

(assert (=> bs!1800514 d!2125251))

(declare-fun d!2125687 () Bool)

(assert (=> d!2125687 (= (isEmpty!38309 (exprs!6475 (h!72397 zl!343))) ((_ is Nil!65948) (exprs!6475 (h!72397 zl!343))))))

(assert (=> b!6765918 d!2125687))

(declare-fun d!2125689 () Bool)

(assert (=> d!2125689 true))

(declare-fun setRes!46259 () Bool)

(assert (=> d!2125689 setRes!46259))

(declare-fun condSetEmpty!46259 () Bool)

(declare-fun res!2766707 () (InoxSet Context!11950))

(assert (=> d!2125689 (= condSetEmpty!46259 (= res!2766707 ((as const (Array Context!11950 Bool)) false)))))

(assert (=> d!2125689 (= (choose!50416 lt!2442640 lambda!380523) res!2766707)))

(declare-fun setIsEmpty!46259 () Bool)

(assert (=> setIsEmpty!46259 setRes!46259))

(declare-fun tp!1854311 () Bool)

(declare-fun setElem!46259 () Context!11950)

(declare-fun setNonEmpty!46259 () Bool)

(declare-fun e!4085661 () Bool)

(assert (=> setNonEmpty!46259 (= setRes!46259 (and tp!1854311 (inv!84724 setElem!46259) e!4085661))))

(declare-fun setRest!46259 () (InoxSet Context!11950))

(assert (=> setNonEmpty!46259 (= res!2766707 ((_ map or) (store ((as const (Array Context!11950 Bool)) false) setElem!46259 true) setRest!46259))))

(declare-fun b!6766697 () Bool)

(declare-fun tp!1854310 () Bool)

(assert (=> b!6766697 (= e!4085661 tp!1854310)))

(assert (= (and d!2125689 condSetEmpty!46259) setIsEmpty!46259))

(assert (= (and d!2125689 (not condSetEmpty!46259)) setNonEmpty!46259))

(assert (= setNonEmpty!46259 b!6766697))

(declare-fun m!7517746 () Bool)

(assert (=> setNonEmpty!46259 m!7517746))

(assert (=> d!2125453 d!2125689))

(declare-fun d!2125691 () Bool)

(declare-fun c!1256372 () Bool)

(assert (=> d!2125691 (= c!1256372 ((_ is Nil!65950) lt!2442715))))

(declare-fun e!4085664 () (InoxSet C!33452))

(assert (=> d!2125691 (= (content!12835 lt!2442715) e!4085664)))

(declare-fun b!6766702 () Bool)

(assert (=> b!6766702 (= e!4085664 ((as const (Array C!33452 Bool)) false))))

(declare-fun b!6766703 () Bool)

(assert (=> b!6766703 (= e!4085664 ((_ map or) (store ((as const (Array C!33452 Bool)) false) (h!72398 lt!2442715) true) (content!12835 (t!379781 lt!2442715))))))

(assert (= (and d!2125691 c!1256372) b!6766702))

(assert (= (and d!2125691 (not c!1256372)) b!6766703))

(declare-fun m!7517754 () Bool)

(assert (=> b!6766703 m!7517754))

(declare-fun m!7517756 () Bool)

(assert (=> b!6766703 m!7517756))

(assert (=> d!2125383 d!2125691))

(declare-fun d!2125699 () Bool)

(declare-fun c!1256373 () Bool)

(assert (=> d!2125699 (= c!1256373 ((_ is Nil!65950) (_1!36869 lt!2442636)))))

(declare-fun e!4085665 () (InoxSet C!33452))

(assert (=> d!2125699 (= (content!12835 (_1!36869 lt!2442636)) e!4085665)))

(declare-fun b!6766704 () Bool)

(assert (=> b!6766704 (= e!4085665 ((as const (Array C!33452 Bool)) false))))

(declare-fun b!6766705 () Bool)

(assert (=> b!6766705 (= e!4085665 ((_ map or) (store ((as const (Array C!33452 Bool)) false) (h!72398 (_1!36869 lt!2442636)) true) (content!12835 (t!379781 (_1!36869 lt!2442636)))))))

(assert (= (and d!2125699 c!1256373) b!6766704))

(assert (= (and d!2125699 (not c!1256373)) b!6766705))

(declare-fun m!7517758 () Bool)

(assert (=> b!6766705 m!7517758))

(assert (=> b!6766705 m!7517428))

(assert (=> d!2125383 d!2125699))

(declare-fun d!2125701 () Bool)

(declare-fun c!1256374 () Bool)

(assert (=> d!2125701 (= c!1256374 ((_ is Nil!65950) (_2!36869 lt!2442636)))))

(declare-fun e!4085666 () (InoxSet C!33452))

(assert (=> d!2125701 (= (content!12835 (_2!36869 lt!2442636)) e!4085666)))

(declare-fun b!6766706 () Bool)

(assert (=> b!6766706 (= e!4085666 ((as const (Array C!33452 Bool)) false))))

(declare-fun b!6766707 () Bool)

(assert (=> b!6766707 (= e!4085666 ((_ map or) (store ((as const (Array C!33452 Bool)) false) (h!72398 (_2!36869 lt!2442636)) true) (content!12835 (t!379781 (_2!36869 lt!2442636)))))))

(assert (= (and d!2125701 c!1256374) b!6766706))

(assert (= (and d!2125701 (not c!1256374)) b!6766707))

(declare-fun m!7517760 () Bool)

(assert (=> b!6766707 m!7517760))

(declare-fun m!7517762 () Bool)

(assert (=> b!6766707 m!7517762))

(assert (=> d!2125383 d!2125701))

(assert (=> bm!612995 d!2125397))

(declare-fun call!613093 () (InoxSet Context!11950))

(declare-fun e!4085669 () (InoxSet Context!11950))

(declare-fun b!6766708 () Bool)

(assert (=> b!6766708 (= e!4085669 ((_ map or) call!613093 (derivationStepZipperUp!1745 (Context!11951 (t!379779 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442639)))))) (h!72398 s!2326))))))

(declare-fun bm!613088 () Bool)

(assert (=> bm!613088 (= call!613093 (derivationStepZipperDown!1819 (h!72396 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442639))))) (Context!11951 (t!379779 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442639)))))) (h!72398 s!2326)))))

(declare-fun b!6766709 () Bool)

(declare-fun e!4085667 () (InoxSet Context!11950))

(assert (=> b!6766709 (= e!4085667 ((as const (Array Context!11950 Bool)) false))))

(declare-fun b!6766710 () Bool)

(assert (=> b!6766710 (= e!4085667 call!613093)))

(declare-fun b!6766711 () Bool)

(assert (=> b!6766711 (= e!4085669 e!4085667)))

(declare-fun c!1256376 () Bool)

(assert (=> b!6766711 (= c!1256376 ((_ is Cons!65948) (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442639))))))))

(declare-fun b!6766712 () Bool)

(declare-fun e!4085668 () Bool)

(assert (=> b!6766712 (= e!4085668 (nullable!6574 (h!72396 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442639)))))))))

(declare-fun d!2125705 () Bool)

(declare-fun c!1256375 () Bool)

(assert (=> d!2125705 (= c!1256375 e!4085668)))

(declare-fun res!2766709 () Bool)

(assert (=> d!2125705 (=> (not res!2766709) (not e!4085668))))

(assert (=> d!2125705 (= res!2766709 ((_ is Cons!65948) (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442639))))))))

(assert (=> d!2125705 (= (derivationStepZipperUp!1745 (Context!11951 (t!379779 (exprs!6475 lt!2442639))) (h!72398 s!2326)) e!4085669)))

(assert (= (and d!2125705 res!2766709) b!6766712))

(assert (= (and d!2125705 c!1256375) b!6766708))

(assert (= (and d!2125705 (not c!1256375)) b!6766711))

(assert (= (and b!6766711 c!1256376) b!6766710))

(assert (= (and b!6766711 (not c!1256376)) b!6766709))

(assert (= (or b!6766708 b!6766710) bm!613088))

(declare-fun m!7517764 () Bool)

(assert (=> b!6766708 m!7517764))

(declare-fun m!7517766 () Bool)

(assert (=> bm!613088 m!7517766))

(declare-fun m!7517768 () Bool)

(assert (=> b!6766712 m!7517768))

(assert (=> b!6765443 d!2125705))

(assert (=> b!6765591 d!2125677))

(declare-fun d!2125709 () Bool)

(assert (=> d!2125709 (= (isEmpty!38306 (tail!12684 s!2326)) ((_ is Nil!65950) (tail!12684 s!2326)))))

(assert (=> b!6766178 d!2125709))

(assert (=> b!6766178 d!2125637))

(assert (=> b!6765847 d!2125635))

(declare-fun d!2125711 () Bool)

(assert (=> d!2125711 (= (isEmptyLang!1961 lt!2442747) ((_ is EmptyLang!16591) lt!2442747))))

(assert (=> b!6766146 d!2125711))

(declare-fun d!2125713 () Bool)

(assert (=> d!2125713 (= (isEmpty!38306 (_1!36869 lt!2442636)) ((_ is Nil!65950) (_1!36869 lt!2442636)))))

(assert (=> d!2125315 d!2125713))

(declare-fun d!2125715 () Bool)

(assert (=> d!2125715 (= (Exists!3659 (ite c!1256129 lambda!380565 lambda!380568)) (choose!50417 (ite c!1256129 lambda!380565 lambda!380568)))))

(declare-fun bs!1800772 () Bool)

(assert (= bs!1800772 d!2125715))

(declare-fun m!7517780 () Bool)

(assert (=> bs!1800772 m!7517780))

(assert (=> bm!612985 d!2125715))

(declare-fun d!2125719 () Bool)

(declare-fun res!2766716 () Bool)

(declare-fun e!4085683 () Bool)

(assert (=> d!2125719 (=> res!2766716 e!4085683)))

(assert (=> d!2125719 (= res!2766716 ((_ is Nil!65948) (exprs!6475 lt!2442639)))))

(assert (=> d!2125719 (= (forall!15787 (exprs!6475 lt!2442639) lambda!380553) e!4085683)))

(declare-fun b!6766733 () Bool)

(declare-fun e!4085684 () Bool)

(assert (=> b!6766733 (= e!4085683 e!4085684)))

(declare-fun res!2766717 () Bool)

(assert (=> b!6766733 (=> (not res!2766717) (not e!4085684))))

(assert (=> b!6766733 (= res!2766717 (dynLambda!26315 lambda!380553 (h!72396 (exprs!6475 lt!2442639))))))

(declare-fun b!6766734 () Bool)

(assert (=> b!6766734 (= e!4085684 (forall!15787 (t!379779 (exprs!6475 lt!2442639)) lambda!380553))))

(assert (= (and d!2125719 (not res!2766716)) b!6766733))

(assert (= (and b!6766733 res!2766717) b!6766734))

(declare-fun b_lambda!254791 () Bool)

(assert (=> (not b_lambda!254791) (not b!6766733)))

(declare-fun m!7517782 () Bool)

(assert (=> b!6766733 m!7517782))

(declare-fun m!7517784 () Bool)

(assert (=> b!6766734 m!7517784))

(assert (=> d!2125313 d!2125719))

(declare-fun d!2125721 () Bool)

(assert (=> d!2125721 true))

(declare-fun setRes!46260 () Bool)

(assert (=> d!2125721 setRes!46260))

(declare-fun condSetEmpty!46260 () Bool)

(declare-fun res!2766718 () (InoxSet Context!11950))

(assert (=> d!2125721 (= condSetEmpty!46260 (= res!2766718 ((as const (Array Context!11950 Bool)) false)))))

(assert (=> d!2125721 (= (choose!50416 z!1189 lambda!380523) res!2766718)))

(declare-fun setIsEmpty!46260 () Bool)

(assert (=> setIsEmpty!46260 setRes!46260))

(declare-fun setElem!46260 () Context!11950)

(declare-fun setNonEmpty!46260 () Bool)

(declare-fun tp!1854313 () Bool)

(declare-fun e!4085685 () Bool)

(assert (=> setNonEmpty!46260 (= setRes!46260 (and tp!1854313 (inv!84724 setElem!46260) e!4085685))))

(declare-fun setRest!46260 () (InoxSet Context!11950))

(assert (=> setNonEmpty!46260 (= res!2766718 ((_ map or) (store ((as const (Array Context!11950 Bool)) false) setElem!46260 true) setRest!46260))))

(declare-fun b!6766735 () Bool)

(declare-fun tp!1854312 () Bool)

(assert (=> b!6766735 (= e!4085685 tp!1854312)))

(assert (= (and d!2125721 condSetEmpty!46260) setIsEmpty!46260))

(assert (= (and d!2125721 (not condSetEmpty!46260)) setNonEmpty!46260))

(assert (= setNonEmpty!46260 b!6766735))

(declare-fun m!7517792 () Bool)

(assert (=> setNonEmpty!46260 m!7517792))

(assert (=> d!2125441 d!2125721))

(assert (=> b!6765851 d!2125635))

(declare-fun bs!1800773 () Bool)

(declare-fun d!2125725 () Bool)

(assert (= bs!1800773 (and d!2125725 d!2125431)))

(declare-fun lambda!380647 () Int)

(assert (=> bs!1800773 (= lambda!380647 lambda!380601)))

(declare-fun bs!1800774 () Bool)

(assert (= bs!1800774 (and d!2125725 d!2125525)))

(assert (=> bs!1800774 (= lambda!380647 lambda!380614)))

(declare-fun bs!1800775 () Bool)

(assert (= bs!1800775 (and d!2125725 d!2125575)))

(assert (=> bs!1800775 (= lambda!380647 lambda!380619)))

(declare-fun bs!1800776 () Bool)

(assert (= bs!1800776 (and d!2125725 d!2125361)))

(assert (=> bs!1800776 (= lambda!380647 lambda!380574)))

(declare-fun bs!1800777 () Bool)

(assert (= bs!1800777 (and d!2125725 d!2125433)))

(assert (=> bs!1800777 (= lambda!380647 lambda!380604)))

(declare-fun bs!1800778 () Bool)

(assert (= bs!1800778 (and d!2125725 d!2125649)))

(assert (=> bs!1800778 (= lambda!380647 lambda!380641)))

(declare-fun bs!1800780 () Bool)

(assert (= bs!1800780 (and d!2125725 d!2125577)))

(assert (=> bs!1800780 (= lambda!380647 lambda!380622)))

(declare-fun bs!1800781 () Bool)

(assert (= bs!1800781 (and d!2125725 d!2125459)))

(assert (=> bs!1800781 (= lambda!380647 lambda!380607)))

(declare-fun bs!1800783 () Bool)

(assert (= bs!1800783 (and d!2125725 d!2125313)))

(assert (=> bs!1800783 (= lambda!380647 lambda!380553)))

(declare-fun bs!1800785 () Bool)

(assert (= bs!1800785 (and d!2125725 d!2125645)))

(assert (=> bs!1800785 (= lambda!380647 lambda!380640)))

(declare-fun bs!1800787 () Bool)

(assert (= bs!1800787 (and d!2125725 d!2125239)))

(assert (=> bs!1800787 (= lambda!380647 lambda!380526)))

(declare-fun b!6766738 () Bool)

(declare-fun e!4085690 () Bool)

(assert (=> b!6766738 (= e!4085690 (isEmpty!38309 (t!379779 (t!379779 (unfocusZipperList!2012 zl!343)))))))

(declare-fun b!6766739 () Bool)

(declare-fun e!4085688 () Bool)

(declare-fun lt!2442787 () Regex!16591)

(assert (=> b!6766739 (= e!4085688 (= lt!2442787 (head!13602 (t!379779 (unfocusZipperList!2012 zl!343)))))))

(declare-fun b!6766740 () Bool)

(declare-fun e!4085692 () Bool)

(declare-fun e!4085691 () Bool)

(assert (=> b!6766740 (= e!4085692 e!4085691)))

(declare-fun c!1256385 () Bool)

(assert (=> b!6766740 (= c!1256385 (isEmpty!38309 (t!379779 (unfocusZipperList!2012 zl!343))))))

(declare-fun b!6766741 () Bool)

(declare-fun e!4085689 () Regex!16591)

(assert (=> b!6766741 (= e!4085689 (Union!16591 (h!72396 (t!379779 (unfocusZipperList!2012 zl!343))) (generalisedUnion!2435 (t!379779 (t!379779 (unfocusZipperList!2012 zl!343))))))))

(declare-fun b!6766742 () Bool)

(declare-fun e!4085693 () Regex!16591)

(assert (=> b!6766742 (= e!4085693 e!4085689)))

(declare-fun c!1256384 () Bool)

(assert (=> b!6766742 (= c!1256384 ((_ is Cons!65948) (t!379779 (unfocusZipperList!2012 zl!343))))))

(declare-fun b!6766743 () Bool)

(assert (=> b!6766743 (= e!4085691 e!4085688)))

(declare-fun c!1256387 () Bool)

(assert (=> b!6766743 (= c!1256387 (isEmpty!38309 (tail!12687 (t!379779 (unfocusZipperList!2012 zl!343)))))))

(assert (=> d!2125725 e!4085692))

(declare-fun res!2766722 () Bool)

(assert (=> d!2125725 (=> (not res!2766722) (not e!4085692))))

(assert (=> d!2125725 (= res!2766722 (validRegex!8327 lt!2442787))))

(assert (=> d!2125725 (= lt!2442787 e!4085693)))

(declare-fun c!1256386 () Bool)

(assert (=> d!2125725 (= c!1256386 e!4085690)))

(declare-fun res!2766721 () Bool)

(assert (=> d!2125725 (=> (not res!2766721) (not e!4085690))))

(assert (=> d!2125725 (= res!2766721 ((_ is Cons!65948) (t!379779 (unfocusZipperList!2012 zl!343))))))

(assert (=> d!2125725 (forall!15787 (t!379779 (unfocusZipperList!2012 zl!343)) lambda!380647)))

(assert (=> d!2125725 (= (generalisedUnion!2435 (t!379779 (unfocusZipperList!2012 zl!343))) lt!2442787)))

(declare-fun b!6766744 () Bool)

(assert (=> b!6766744 (= e!4085689 EmptyLang!16591)))

(declare-fun b!6766745 () Bool)

(assert (=> b!6766745 (= e!4085691 (isEmptyLang!1961 lt!2442787))))

(declare-fun b!6766746 () Bool)

(assert (=> b!6766746 (= e!4085688 (isUnion!1391 lt!2442787))))

(declare-fun b!6766747 () Bool)

(assert (=> b!6766747 (= e!4085693 (h!72396 (t!379779 (unfocusZipperList!2012 zl!343))))))

(assert (= (and d!2125725 res!2766721) b!6766738))

(assert (= (and d!2125725 c!1256386) b!6766747))

(assert (= (and d!2125725 (not c!1256386)) b!6766742))

(assert (= (and b!6766742 c!1256384) b!6766741))

(assert (= (and b!6766742 (not c!1256384)) b!6766744))

(assert (= (and d!2125725 res!2766722) b!6766740))

(assert (= (and b!6766740 c!1256385) b!6766745))

(assert (= (and b!6766740 (not c!1256385)) b!6766743))

(assert (= (and b!6766743 c!1256387) b!6766739))

(assert (= (and b!6766743 (not c!1256387)) b!6766746))

(declare-fun m!7517798 () Bool)

(assert (=> b!6766741 m!7517798))

(declare-fun m!7517800 () Bool)

(assert (=> b!6766739 m!7517800))

(declare-fun m!7517802 () Bool)

(assert (=> b!6766746 m!7517802))

(declare-fun m!7517804 () Bool)

(assert (=> b!6766738 m!7517804))

(declare-fun m!7517806 () Bool)

(assert (=> d!2125725 m!7517806))

(declare-fun m!7517808 () Bool)

(assert (=> d!2125725 m!7517808))

(declare-fun m!7517810 () Bool)

(assert (=> b!6766745 m!7517810))

(assert (=> b!6766740 m!7517198))

(declare-fun m!7517812 () Bool)

(assert (=> b!6766743 m!7517812))

(assert (=> b!6766743 m!7517812))

(declare-fun m!7517818 () Bool)

(assert (=> b!6766743 m!7517818))

(assert (=> b!6766142 d!2125725))

(declare-fun d!2125729 () Bool)

(declare-fun lambda!380651 () Int)

(declare-fun exists!2715 ((InoxSet Context!11950) Int) Bool)

(assert (=> d!2125729 (= (nullableZipper!2301 lt!2442640) (exists!2715 lt!2442640 lambda!380651))))

(declare-fun bs!1800790 () Bool)

(assert (= bs!1800790 d!2125729))

(declare-fun m!7517844 () Bool)

(assert (=> bs!1800790 m!7517844))

(assert (=> b!6765464 d!2125729))

(declare-fun b!6766773 () Bool)

(declare-fun call!613104 () (InoxSet Context!11950))

(declare-fun e!4085710 () (InoxSet Context!11950))

(assert (=> b!6766773 (= e!4085710 ((_ map or) call!613104 (derivationStepZipperUp!1745 (Context!11951 (t!379779 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442623)))))) (h!72398 s!2326))))))

(declare-fun bm!613099 () Bool)

(assert (=> bm!613099 (= call!613104 (derivationStepZipperDown!1819 (h!72396 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442623))))) (Context!11951 (t!379779 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442623)))))) (h!72398 s!2326)))))

(declare-fun b!6766774 () Bool)

(declare-fun e!4085708 () (InoxSet Context!11950))

(assert (=> b!6766774 (= e!4085708 ((as const (Array Context!11950 Bool)) false))))

(declare-fun b!6766775 () Bool)

(assert (=> b!6766775 (= e!4085708 call!613104)))

(declare-fun b!6766776 () Bool)

(assert (=> b!6766776 (= e!4085710 e!4085708)))

(declare-fun c!1256398 () Bool)

(assert (=> b!6766776 (= c!1256398 ((_ is Cons!65948) (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442623))))))))

(declare-fun b!6766777 () Bool)

(declare-fun e!4085709 () Bool)

(assert (=> b!6766777 (= e!4085709 (nullable!6574 (h!72396 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442623)))))))))

(declare-fun d!2125739 () Bool)

(declare-fun c!1256397 () Bool)

(assert (=> d!2125739 (= c!1256397 e!4085709)))

(declare-fun res!2766734 () Bool)

(assert (=> d!2125739 (=> (not res!2766734) (not e!4085709))))

(assert (=> d!2125739 (= res!2766734 ((_ is Cons!65948) (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442623))))))))

(assert (=> d!2125739 (= (derivationStepZipperUp!1745 (Context!11951 (t!379779 (exprs!6475 lt!2442623))) (h!72398 s!2326)) e!4085710)))

(assert (= (and d!2125739 res!2766734) b!6766777))

(assert (= (and d!2125739 c!1256397) b!6766773))

(assert (= (and d!2125739 (not c!1256397)) b!6766776))

(assert (= (and b!6766776 c!1256398) b!6766775))

(assert (= (and b!6766776 (not c!1256398)) b!6766774))

(assert (= (or b!6766773 b!6766775) bm!613099))

(declare-fun m!7517850 () Bool)

(assert (=> b!6766773 m!7517850))

(declare-fun m!7517852 () Bool)

(assert (=> bm!613099 m!7517852))

(declare-fun m!7517854 () Bool)

(assert (=> b!6766777 m!7517854))

(assert (=> b!6766199 d!2125739))

(declare-fun d!2125745 () Bool)

(declare-fun c!1256399 () Bool)

(assert (=> d!2125745 (= c!1256399 (isEmpty!38306 (tail!12684 (_1!36869 lt!2442636))))))

(declare-fun e!4085711 () Bool)

(assert (=> d!2125745 (= (matchZipper!2577 (derivationStepZipper!2535 lt!2442622 (head!13599 (_1!36869 lt!2442636))) (tail!12684 (_1!36869 lt!2442636))) e!4085711)))

(declare-fun b!6766778 () Bool)

(assert (=> b!6766778 (= e!4085711 (nullableZipper!2301 (derivationStepZipper!2535 lt!2442622 (head!13599 (_1!36869 lt!2442636)))))))

(declare-fun b!6766779 () Bool)

(assert (=> b!6766779 (= e!4085711 (matchZipper!2577 (derivationStepZipper!2535 (derivationStepZipper!2535 lt!2442622 (head!13599 (_1!36869 lt!2442636))) (head!13599 (tail!12684 (_1!36869 lt!2442636)))) (tail!12684 (tail!12684 (_1!36869 lt!2442636)))))))

(assert (= (and d!2125745 c!1256399) b!6766778))

(assert (= (and d!2125745 (not c!1256399)) b!6766779))

(assert (=> d!2125745 m!7516832))

(assert (=> d!2125745 m!7516842))

(assert (=> b!6766778 m!7516848))

(declare-fun m!7517856 () Bool)

(assert (=> b!6766778 m!7517856))

(assert (=> b!6766779 m!7516832))

(declare-fun m!7517858 () Bool)

(assert (=> b!6766779 m!7517858))

(assert (=> b!6766779 m!7516848))

(assert (=> b!6766779 m!7517858))

(declare-fun m!7517860 () Bool)

(assert (=> b!6766779 m!7517860))

(assert (=> b!6766779 m!7516832))

(declare-fun m!7517864 () Bool)

(assert (=> b!6766779 m!7517864))

(assert (=> b!6766779 m!7517860))

(assert (=> b!6766779 m!7517864))

(declare-fun m!7517866 () Bool)

(assert (=> b!6766779 m!7517866))

(assert (=> b!6765610 d!2125745))

(declare-fun bs!1800800 () Bool)

(declare-fun d!2125749 () Bool)

(assert (= bs!1800800 (and d!2125749 d!2125633)))

(declare-fun lambda!380653 () Int)

(assert (=> bs!1800800 (= (= (head!13599 (_1!36869 lt!2442636)) (head!13599 s!2326)) (= lambda!380653 lambda!380631))))

(declare-fun bs!1800803 () Bool)

(assert (= bs!1800803 (and d!2125749 d!2125681)))

(assert (=> bs!1800803 (= (= (head!13599 (_1!36869 lt!2442636)) (head!13599 (t!379781 s!2326))) (= lambda!380653 lambda!380644))))

(declare-fun bs!1800805 () Bool)

(assert (= bs!1800805 (and d!2125749 d!2125253)))

(assert (=> bs!1800805 (= (= (head!13599 (_1!36869 lt!2442636)) (h!72398 s!2326)) (= lambda!380653 lambda!380540))))

(declare-fun bs!1800807 () Bool)

(assert (= bs!1800807 (and d!2125749 d!2125271)))

(assert (=> bs!1800807 (= (= (head!13599 (_1!36869 lt!2442636)) (h!72398 s!2326)) (= lambda!380653 lambda!380542))))

(declare-fun bs!1800809 () Bool)

(assert (= bs!1800809 (and d!2125749 b!6765361)))

(assert (=> bs!1800809 (= (= (head!13599 (_1!36869 lt!2442636)) (h!72398 s!2326)) (= lambda!380653 lambda!380523))))

(declare-fun bs!1800811 () Bool)

(assert (= bs!1800811 (and d!2125749 d!2125307)))

(assert (=> bs!1800811 (= (= (head!13599 (_1!36869 lt!2442636)) (h!72398 s!2326)) (= lambda!380653 lambda!380552))))

(assert (=> d!2125749 true))

(assert (=> d!2125749 (= (derivationStepZipper!2535 lt!2442622 (head!13599 (_1!36869 lt!2442636))) (flatMap!2072 lt!2442622 lambda!380653))))

(declare-fun bs!1800813 () Bool)

(assert (= bs!1800813 d!2125749))

(declare-fun m!7517868 () Bool)

(assert (=> bs!1800813 m!7517868))

(assert (=> b!6765610 d!2125749))

(assert (=> b!6765610 d!2125677))

(declare-fun d!2125751 () Bool)

(assert (=> d!2125751 (= (tail!12684 (_1!36869 lt!2442636)) (t!379781 (_1!36869 lt!2442636)))))

(assert (=> b!6765610 d!2125751))

(declare-fun d!2125753 () Bool)

(assert (=> d!2125753 true))

(declare-fun setRes!46262 () Bool)

(assert (=> d!2125753 setRes!46262))

(declare-fun condSetEmpty!46262 () Bool)

(declare-fun res!2766735 () (InoxSet Context!11950))

(assert (=> d!2125753 (= condSetEmpty!46262 (= res!2766735 ((as const (Array Context!11950 Bool)) false)))))

(assert (=> d!2125753 (= (choose!50416 lt!2442638 lambda!380523) res!2766735)))

(declare-fun setIsEmpty!46262 () Bool)

(assert (=> setIsEmpty!46262 setRes!46262))

(declare-fun tp!1854317 () Bool)

(declare-fun e!4085713 () Bool)

(declare-fun setElem!46262 () Context!11950)

(declare-fun setNonEmpty!46262 () Bool)

(assert (=> setNonEmpty!46262 (= setRes!46262 (and tp!1854317 (inv!84724 setElem!46262) e!4085713))))

(declare-fun setRest!46262 () (InoxSet Context!11950))

(assert (=> setNonEmpty!46262 (= res!2766735 ((_ map or) (store ((as const (Array Context!11950 Bool)) false) setElem!46262 true) setRest!46262))))

(declare-fun b!6766782 () Bool)

(declare-fun tp!1854316 () Bool)

(assert (=> b!6766782 (= e!4085713 tp!1854316)))

(assert (= (and d!2125753 condSetEmpty!46262) setIsEmpty!46262))

(assert (= (and d!2125753 (not condSetEmpty!46262)) setNonEmpty!46262))

(assert (= setNonEmpty!46262 b!6766782))

(declare-fun m!7517876 () Bool)

(assert (=> setNonEmpty!46262 m!7517876))

(assert (=> d!2125257 d!2125753))

(assert (=> b!6766171 d!2125709))

(assert (=> b!6766171 d!2125637))

(declare-fun b!6766797 () Bool)

(declare-fun e!4085722 () Bool)

(declare-fun call!613107 () Bool)

(assert (=> b!6766797 (= e!4085722 call!613107)))

(declare-fun b!6766798 () Bool)

(declare-fun res!2766748 () Bool)

(declare-fun e!4085725 () Bool)

(assert (=> b!6766798 (=> res!2766748 e!4085725)))

(assert (=> b!6766798 (= res!2766748 (not ((_ is Concat!25436) lt!2442754)))))

(declare-fun e!4085727 () Bool)

(assert (=> b!6766798 (= e!4085727 e!4085725)))

(declare-fun bm!613101 () Bool)

(declare-fun c!1256405 () Bool)

(declare-fun c!1256404 () Bool)

(assert (=> bm!613101 (= call!613107 (validRegex!8327 (ite c!1256404 (reg!16920 lt!2442754) (ite c!1256405 (regOne!33695 lt!2442754) (regOne!33694 lt!2442754)))))))

(declare-fun b!6766799 () Bool)

(declare-fun res!2766744 () Bool)

(declare-fun e!4085726 () Bool)

(assert (=> b!6766799 (=> (not res!2766744) (not e!4085726))))

(declare-fun call!613106 () Bool)

(assert (=> b!6766799 (= res!2766744 call!613106)))

(assert (=> b!6766799 (= e!4085727 e!4085726)))

(declare-fun d!2125757 () Bool)

(declare-fun res!2766746 () Bool)

(declare-fun e!4085724 () Bool)

(assert (=> d!2125757 (=> res!2766746 e!4085724)))

(assert (=> d!2125757 (= res!2766746 ((_ is ElementMatch!16591) lt!2442754))))

(assert (=> d!2125757 (= (validRegex!8327 lt!2442754) e!4085724)))

(declare-fun b!6766800 () Bool)

(declare-fun e!4085723 () Bool)

(assert (=> b!6766800 (= e!4085723 e!4085727)))

(assert (=> b!6766800 (= c!1256405 ((_ is Union!16591) lt!2442754))))

(declare-fun b!6766801 () Bool)

(declare-fun e!4085721 () Bool)

(declare-fun call!613108 () Bool)

(assert (=> b!6766801 (= e!4085721 call!613108)))

(declare-fun b!6766802 () Bool)

(assert (=> b!6766802 (= e!4085723 e!4085722)))

(declare-fun res!2766747 () Bool)

(assert (=> b!6766802 (= res!2766747 (not (nullable!6574 (reg!16920 lt!2442754))))))

(assert (=> b!6766802 (=> (not res!2766747) (not e!4085722))))

(declare-fun b!6766803 () Bool)

(assert (=> b!6766803 (= e!4085726 call!613108)))

(declare-fun bm!613102 () Bool)

(assert (=> bm!613102 (= call!613108 (validRegex!8327 (ite c!1256405 (regTwo!33695 lt!2442754) (regTwo!33694 lt!2442754))))))

(declare-fun b!6766804 () Bool)

(assert (=> b!6766804 (= e!4085725 e!4085721)))

(declare-fun res!2766745 () Bool)

(assert (=> b!6766804 (=> (not res!2766745) (not e!4085721))))

(assert (=> b!6766804 (= res!2766745 call!613106)))

(declare-fun bm!613103 () Bool)

(assert (=> bm!613103 (= call!613106 call!613107)))

(declare-fun b!6766805 () Bool)

(assert (=> b!6766805 (= e!4085724 e!4085723)))

(assert (=> b!6766805 (= c!1256404 ((_ is Star!16591) lt!2442754))))

(assert (= (and d!2125757 (not res!2766746)) b!6766805))

(assert (= (and b!6766805 c!1256404) b!6766802))

(assert (= (and b!6766805 (not c!1256404)) b!6766800))

(assert (= (and b!6766802 res!2766747) b!6766797))

(assert (= (and b!6766800 c!1256405) b!6766799))

(assert (= (and b!6766800 (not c!1256405)) b!6766798))

(assert (= (and b!6766799 res!2766744) b!6766803))

(assert (= (and b!6766798 (not res!2766748)) b!6766804))

(assert (= (and b!6766804 res!2766745) b!6766801))

(assert (= (or b!6766803 b!6766801) bm!613102))

(assert (= (or b!6766799 b!6766804) bm!613103))

(assert (= (or b!6766797 bm!613103) bm!613101))

(declare-fun m!7517878 () Bool)

(assert (=> bm!613101 m!7517878))

(declare-fun m!7517880 () Bool)

(assert (=> b!6766802 m!7517880))

(declare-fun m!7517884 () Bool)

(assert (=> bm!613102 m!7517884))

(assert (=> d!2125447 d!2125757))

(assert (=> d!2125447 d!2125431))

(assert (=> d!2125447 d!2125433))

(declare-fun c!1256410 () Bool)

(declare-fun c!1256406 () Bool)

(declare-fun bm!613104 () Bool)

(declare-fun call!613111 () (InoxSet Context!11950))

(declare-fun c!1256409 () Bool)

(declare-fun call!613112 () List!66072)

(assert (=> bm!613104 (= call!613111 (derivationStepZipperDown!1819 (ite c!1256410 (regTwo!33695 (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))) (ite c!1256406 (regTwo!33694 (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))) (ite c!1256409 (regOne!33694 (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))) (reg!16920 (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948)))))))) (ite (or c!1256410 c!1256406) (Context!11951 (t!379779 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))) (Context!11951 call!613112)) (h!72398 s!2326)))))

(declare-fun bm!613105 () Bool)

(declare-fun call!613110 () List!66072)

(assert (=> bm!613105 (= call!613112 call!613110)))

(declare-fun bm!613106 () Bool)

(declare-fun call!613114 () (InoxSet Context!11950))

(assert (=> bm!613106 (= call!613114 call!613111)))

(declare-fun call!613113 () (InoxSet Context!11950))

(declare-fun bm!613108 () Bool)

(assert (=> bm!613108 (= call!613113 (derivationStepZipperDown!1819 (ite c!1256410 (regOne!33695 (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))) (regOne!33694 (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948)))))) (ite c!1256410 (Context!11951 (t!379779 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))) (Context!11951 call!613110)) (h!72398 s!2326)))))

(declare-fun b!6766806 () Bool)

(declare-fun e!4085729 () (InoxSet Context!11950))

(declare-fun call!613109 () (InoxSet Context!11950))

(assert (=> b!6766806 (= e!4085729 call!613109)))

(declare-fun b!6766807 () Bool)

(declare-fun e!4085732 () (InoxSet Context!11950))

(assert (=> b!6766807 (= e!4085732 (store ((as const (Array Context!11950 Bool)) false) (Context!11951 (t!379779 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))) true))))

(declare-fun b!6766808 () Bool)

(declare-fun e!4085733 () (InoxSet Context!11950))

(assert (=> b!6766808 (= e!4085733 ((_ map or) call!613113 call!613114))))

(declare-fun b!6766809 () Bool)

(declare-fun e!4085731 () Bool)

(assert (=> b!6766809 (= c!1256406 e!4085731)))

(declare-fun res!2766749 () Bool)

(assert (=> b!6766809 (=> (not res!2766749) (not e!4085731))))

(assert (=> b!6766809 (= res!2766749 ((_ is Concat!25436) (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))))))

(declare-fun e!4085728 () (InoxSet Context!11950))

(assert (=> b!6766809 (= e!4085728 e!4085733)))

(declare-fun b!6766810 () Bool)

(declare-fun e!4085730 () (InoxSet Context!11950))

(assert (=> b!6766810 (= e!4085733 e!4085730)))

(assert (=> b!6766810 (= c!1256409 ((_ is Concat!25436) (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))))))

(declare-fun bm!613109 () Bool)

(assert (=> bm!613109 (= call!613109 call!613114)))

(declare-fun b!6766811 () Bool)

(declare-fun c!1256407 () Bool)

(assert (=> b!6766811 (= c!1256407 ((_ is Star!16591) (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))))))

(assert (=> b!6766811 (= e!4085730 e!4085729)))

(declare-fun b!6766812 () Bool)

(assert (=> b!6766812 (= e!4085731 (nullable!6574 (regOne!33694 (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948)))))))))

(declare-fun b!6766813 () Bool)

(assert (=> b!6766813 (= e!4085728 ((_ map or) call!613113 call!613111))))

(declare-fun b!6766814 () Bool)

(assert (=> b!6766814 (= e!4085730 call!613109)))

(declare-fun d!2125759 () Bool)

(declare-fun c!1256408 () Bool)

(assert (=> d!2125759 (= c!1256408 (and ((_ is ElementMatch!16591) (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))) (= (c!1256003 (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))) (h!72398 s!2326))))))

(assert (=> d!2125759 (= (derivationStepZipperDown!1819 (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948)))) (Context!11951 (t!379779 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))) (h!72398 s!2326)) e!4085732)))

(declare-fun bm!613107 () Bool)

(assert (=> bm!613107 (= call!613110 ($colon$colon!2404 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948)))))) (ite (or c!1256406 c!1256409) (regTwo!33694 (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))) (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948)))))))))

(declare-fun b!6766815 () Bool)

(assert (=> b!6766815 (= e!4085732 e!4085728)))

(assert (=> b!6766815 (= c!1256410 ((_ is Union!16591) (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))))))

(declare-fun b!6766816 () Bool)

(assert (=> b!6766816 (= e!4085729 ((as const (Array Context!11950 Bool)) false))))

(assert (= (and d!2125759 c!1256408) b!6766807))

(assert (= (and d!2125759 (not c!1256408)) b!6766815))

(assert (= (and b!6766815 c!1256410) b!6766813))

(assert (= (and b!6766815 (not c!1256410)) b!6766809))

(assert (= (and b!6766809 res!2766749) b!6766812))

(assert (= (and b!6766809 c!1256406) b!6766808))

(assert (= (and b!6766809 (not c!1256406)) b!6766810))

(assert (= (and b!6766810 c!1256409) b!6766814))

(assert (= (and b!6766810 (not c!1256409)) b!6766811))

(assert (= (and b!6766811 c!1256407) b!6766806))

(assert (= (and b!6766811 (not c!1256407)) b!6766816))

(assert (= (or b!6766814 b!6766806) bm!613105))

(assert (= (or b!6766814 b!6766806) bm!613109))

(assert (= (or b!6766808 bm!613105) bm!613107))

(assert (= (or b!6766808 bm!613109) bm!613106))

(assert (= (or b!6766813 bm!613106) bm!613104))

(assert (= (or b!6766813 b!6766808) bm!613108))

(declare-fun m!7517902 () Bool)

(assert (=> bm!613107 m!7517902))

(declare-fun m!7517904 () Bool)

(assert (=> bm!613108 m!7517904))

(declare-fun m!7517906 () Bool)

(assert (=> b!6766807 m!7517906))

(declare-fun m!7517908 () Bool)

(assert (=> bm!613104 m!7517908))

(declare-fun m!7517910 () Bool)

(assert (=> b!6766812 m!7517910))

(assert (=> bm!612926 d!2125759))

(declare-fun d!2125765 () Bool)

(assert (=> d!2125765 true))

(declare-fun setRes!46263 () Bool)

(assert (=> d!2125765 setRes!46263))

(declare-fun condSetEmpty!46263 () Bool)

(declare-fun res!2766760 () (InoxSet Context!11950))

(assert (=> d!2125765 (= condSetEmpty!46263 (= res!2766760 ((as const (Array Context!11950 Bool)) false)))))

(assert (=> d!2125765 (= (choose!50416 lt!2442622 lambda!380523) res!2766760)))

(declare-fun setIsEmpty!46263 () Bool)

(assert (=> setIsEmpty!46263 setRes!46263))

(declare-fun e!4085748 () Bool)

(declare-fun setElem!46263 () Context!11950)

(declare-fun tp!1854319 () Bool)

(declare-fun setNonEmpty!46263 () Bool)

(assert (=> setNonEmpty!46263 (= setRes!46263 (and tp!1854319 (inv!84724 setElem!46263) e!4085748))))

(declare-fun setRest!46263 () (InoxSet Context!11950))

(assert (=> setNonEmpty!46263 (= res!2766760 ((_ map or) (store ((as const (Array Context!11950 Bool)) false) setElem!46263 true) setRest!46263))))

(declare-fun b!6766835 () Bool)

(declare-fun tp!1854318 () Bool)

(assert (=> b!6766835 (= e!4085748 tp!1854318)))

(assert (= (and d!2125765 condSetEmpty!46263) setIsEmpty!46263))

(assert (= (and d!2125765 (not condSetEmpty!46263)) setNonEmpty!46263))

(assert (= setNonEmpty!46263 b!6766835))

(declare-fun m!7517918 () Bool)

(assert (=> setNonEmpty!46263 m!7517918))

(assert (=> d!2125255 d!2125765))

(declare-fun b!6766846 () Bool)

(declare-fun e!4085756 () Bool)

(declare-fun call!613122 () Bool)

(assert (=> b!6766846 (= e!4085756 call!613122)))

(declare-fun b!6766847 () Bool)

(declare-fun res!2766767 () Bool)

(declare-fun e!4085759 () Bool)

(assert (=> b!6766847 (=> res!2766767 e!4085759)))

(assert (=> b!6766847 (= res!2766767 (not ((_ is Concat!25436) lt!2442708)))))

(declare-fun e!4085761 () Bool)

(assert (=> b!6766847 (= e!4085761 e!4085759)))

(declare-fun c!1256419 () Bool)

(declare-fun c!1256420 () Bool)

(declare-fun bm!613116 () Bool)

(assert (=> bm!613116 (= call!613122 (validRegex!8327 (ite c!1256419 (reg!16920 lt!2442708) (ite c!1256420 (regOne!33695 lt!2442708) (regOne!33694 lt!2442708)))))))

(declare-fun b!6766848 () Bool)

(declare-fun res!2766763 () Bool)

(declare-fun e!4085760 () Bool)

(assert (=> b!6766848 (=> (not res!2766763) (not e!4085760))))

(declare-fun call!613121 () Bool)

(assert (=> b!6766848 (= res!2766763 call!613121)))

(assert (=> b!6766848 (= e!4085761 e!4085760)))

(declare-fun d!2125769 () Bool)

(declare-fun res!2766765 () Bool)

(declare-fun e!4085758 () Bool)

(assert (=> d!2125769 (=> res!2766765 e!4085758)))

(assert (=> d!2125769 (= res!2766765 ((_ is ElementMatch!16591) lt!2442708))))

(assert (=> d!2125769 (= (validRegex!8327 lt!2442708) e!4085758)))

(declare-fun b!6766849 () Bool)

(declare-fun e!4085757 () Bool)

(assert (=> b!6766849 (= e!4085757 e!4085761)))

(assert (=> b!6766849 (= c!1256420 ((_ is Union!16591) lt!2442708))))

(declare-fun b!6766850 () Bool)

(declare-fun e!4085755 () Bool)

(declare-fun call!613123 () Bool)

(assert (=> b!6766850 (= e!4085755 call!613123)))

(declare-fun b!6766851 () Bool)

(assert (=> b!6766851 (= e!4085757 e!4085756)))

(declare-fun res!2766766 () Bool)

(assert (=> b!6766851 (= res!2766766 (not (nullable!6574 (reg!16920 lt!2442708))))))

(assert (=> b!6766851 (=> (not res!2766766) (not e!4085756))))

(declare-fun b!6766852 () Bool)

(assert (=> b!6766852 (= e!4085760 call!613123)))

(declare-fun bm!613117 () Bool)

(assert (=> bm!613117 (= call!613123 (validRegex!8327 (ite c!1256420 (regTwo!33695 lt!2442708) (regTwo!33694 lt!2442708))))))

(declare-fun b!6766853 () Bool)

(assert (=> b!6766853 (= e!4085759 e!4085755)))

(declare-fun res!2766764 () Bool)

(assert (=> b!6766853 (=> (not res!2766764) (not e!4085755))))

(assert (=> b!6766853 (= res!2766764 call!613121)))

(declare-fun bm!613118 () Bool)

(assert (=> bm!613118 (= call!613121 call!613122)))

(declare-fun b!6766854 () Bool)

(assert (=> b!6766854 (= e!4085758 e!4085757)))

(assert (=> b!6766854 (= c!1256419 ((_ is Star!16591) lt!2442708))))

(assert (= (and d!2125769 (not res!2766765)) b!6766854))

(assert (= (and b!6766854 c!1256419) b!6766851))

(assert (= (and b!6766854 (not c!1256419)) b!6766849))

(assert (= (and b!6766851 res!2766766) b!6766846))

(assert (= (and b!6766849 c!1256420) b!6766848))

(assert (= (and b!6766849 (not c!1256420)) b!6766847))

(assert (= (and b!6766848 res!2766763) b!6766852))

(assert (= (and b!6766847 (not res!2766767)) b!6766853))

(assert (= (and b!6766853 res!2766764) b!6766850))

(assert (= (or b!6766852 b!6766850) bm!613117))

(assert (= (or b!6766848 b!6766853) bm!613118))

(assert (= (or b!6766846 bm!613118) bm!613116))

(declare-fun m!7517920 () Bool)

(assert (=> bm!613116 m!7517920))

(declare-fun m!7517922 () Bool)

(assert (=> b!6766851 m!7517922))

(declare-fun m!7517924 () Bool)

(assert (=> bm!613117 m!7517924))

(assert (=> d!2125361 d!2125769))

(declare-fun d!2125771 () Bool)

(declare-fun res!2766768 () Bool)

(declare-fun e!4085762 () Bool)

(assert (=> d!2125771 (=> res!2766768 e!4085762)))

(assert (=> d!2125771 (= res!2766768 ((_ is Nil!65948) (exprs!6475 (h!72397 zl!343))))))

(assert (=> d!2125771 (= (forall!15787 (exprs!6475 (h!72397 zl!343)) lambda!380574) e!4085762)))

(declare-fun b!6766855 () Bool)

(declare-fun e!4085763 () Bool)

(assert (=> b!6766855 (= e!4085762 e!4085763)))

(declare-fun res!2766769 () Bool)

(assert (=> b!6766855 (=> (not res!2766769) (not e!4085763))))

(assert (=> b!6766855 (= res!2766769 (dynLambda!26315 lambda!380574 (h!72396 (exprs!6475 (h!72397 zl!343)))))))

(declare-fun b!6766856 () Bool)

(assert (=> b!6766856 (= e!4085763 (forall!15787 (t!379779 (exprs!6475 (h!72397 zl!343))) lambda!380574))))

(assert (= (and d!2125771 (not res!2766768)) b!6766855))

(assert (= (and b!6766855 res!2766769) b!6766856))

(declare-fun b_lambda!254795 () Bool)

(assert (=> (not b_lambda!254795) (not b!6766855)))

(declare-fun m!7517926 () Bool)

(assert (=> b!6766855 m!7517926))

(declare-fun m!7517928 () Bool)

(assert (=> b!6766856 m!7517928))

(assert (=> d!2125361 d!2125771))

(declare-fun b!6766857 () Bool)

(declare-fun e!4085765 () Bool)

(declare-fun call!613125 () Bool)

(assert (=> b!6766857 (= e!4085765 call!613125)))

(declare-fun b!6766858 () Bool)

(declare-fun res!2766774 () Bool)

(declare-fun e!4085768 () Bool)

(assert (=> b!6766858 (=> res!2766774 e!4085768)))

(assert (=> b!6766858 (= res!2766774 (not ((_ is Concat!25436) lt!2442747)))))

(declare-fun e!4085770 () Bool)

(assert (=> b!6766858 (= e!4085770 e!4085768)))

(declare-fun bm!613119 () Bool)

(declare-fun c!1256422 () Bool)

(declare-fun c!1256421 () Bool)

(assert (=> bm!613119 (= call!613125 (validRegex!8327 (ite c!1256421 (reg!16920 lt!2442747) (ite c!1256422 (regOne!33695 lt!2442747) (regOne!33694 lt!2442747)))))))

(declare-fun b!6766859 () Bool)

(declare-fun res!2766770 () Bool)

(declare-fun e!4085769 () Bool)

(assert (=> b!6766859 (=> (not res!2766770) (not e!4085769))))

(declare-fun call!613124 () Bool)

(assert (=> b!6766859 (= res!2766770 call!613124)))

(assert (=> b!6766859 (= e!4085770 e!4085769)))

(declare-fun d!2125773 () Bool)

(declare-fun res!2766772 () Bool)

(declare-fun e!4085767 () Bool)

(assert (=> d!2125773 (=> res!2766772 e!4085767)))

(assert (=> d!2125773 (= res!2766772 ((_ is ElementMatch!16591) lt!2442747))))

(assert (=> d!2125773 (= (validRegex!8327 lt!2442747) e!4085767)))

(declare-fun b!6766860 () Bool)

(declare-fun e!4085766 () Bool)

(assert (=> b!6766860 (= e!4085766 e!4085770)))

(assert (=> b!6766860 (= c!1256422 ((_ is Union!16591) lt!2442747))))

(declare-fun b!6766861 () Bool)

(declare-fun e!4085764 () Bool)

(declare-fun call!613126 () Bool)

(assert (=> b!6766861 (= e!4085764 call!613126)))

(declare-fun b!6766862 () Bool)

(assert (=> b!6766862 (= e!4085766 e!4085765)))

(declare-fun res!2766773 () Bool)

(assert (=> b!6766862 (= res!2766773 (not (nullable!6574 (reg!16920 lt!2442747))))))

(assert (=> b!6766862 (=> (not res!2766773) (not e!4085765))))

(declare-fun b!6766863 () Bool)

(assert (=> b!6766863 (= e!4085769 call!613126)))

(declare-fun bm!613120 () Bool)

(assert (=> bm!613120 (= call!613126 (validRegex!8327 (ite c!1256422 (regTwo!33695 lt!2442747) (regTwo!33694 lt!2442747))))))

(declare-fun b!6766864 () Bool)

(assert (=> b!6766864 (= e!4085768 e!4085764)))

(declare-fun res!2766771 () Bool)

(assert (=> b!6766864 (=> (not res!2766771) (not e!4085764))))

(assert (=> b!6766864 (= res!2766771 call!613124)))

(declare-fun bm!613121 () Bool)

(assert (=> bm!613121 (= call!613124 call!613125)))

(declare-fun b!6766865 () Bool)

(assert (=> b!6766865 (= e!4085767 e!4085766)))

(assert (=> b!6766865 (= c!1256421 ((_ is Star!16591) lt!2442747))))

(assert (= (and d!2125773 (not res!2766772)) b!6766865))

(assert (= (and b!6766865 c!1256421) b!6766862))

(assert (= (and b!6766865 (not c!1256421)) b!6766860))

(assert (= (and b!6766862 res!2766773) b!6766857))

(assert (= (and b!6766860 c!1256422) b!6766859))

(assert (= (and b!6766860 (not c!1256422)) b!6766858))

(assert (= (and b!6766859 res!2766770) b!6766863))

(assert (= (and b!6766858 (not res!2766774)) b!6766864))

(assert (= (and b!6766864 res!2766771) b!6766861))

(assert (= (or b!6766863 b!6766861) bm!613120))

(assert (= (or b!6766859 b!6766864) bm!613121))

(assert (= (or b!6766857 bm!613121) bm!613119))

(declare-fun m!7517948 () Bool)

(assert (=> bm!613119 m!7517948))

(declare-fun m!7517952 () Bool)

(assert (=> b!6766862 m!7517952))

(declare-fun m!7517954 () Bool)

(assert (=> bm!613120 m!7517954))

(assert (=> d!2125431 d!2125773))

(declare-fun d!2125777 () Bool)

(declare-fun res!2766775 () Bool)

(declare-fun e!4085772 () Bool)

(assert (=> d!2125777 (=> res!2766775 e!4085772)))

(assert (=> d!2125777 (= res!2766775 ((_ is Nil!65948) (unfocusZipperList!2012 zl!343)))))

(assert (=> d!2125777 (= (forall!15787 (unfocusZipperList!2012 zl!343) lambda!380601) e!4085772)))

(declare-fun b!6766868 () Bool)

(declare-fun e!4085773 () Bool)

(assert (=> b!6766868 (= e!4085772 e!4085773)))

(declare-fun res!2766776 () Bool)

(assert (=> b!6766868 (=> (not res!2766776) (not e!4085773))))

(assert (=> b!6766868 (= res!2766776 (dynLambda!26315 lambda!380601 (h!72396 (unfocusZipperList!2012 zl!343))))))

(declare-fun b!6766869 () Bool)

(assert (=> b!6766869 (= e!4085773 (forall!15787 (t!379779 (unfocusZipperList!2012 zl!343)) lambda!380601))))

(assert (= (and d!2125777 (not res!2766775)) b!6766868))

(assert (= (and b!6766868 res!2766776) b!6766869))

(declare-fun b_lambda!254797 () Bool)

(assert (=> (not b_lambda!254797) (not b!6766868)))

(declare-fun m!7517956 () Bool)

(assert (=> b!6766868 m!7517956))

(declare-fun m!7517958 () Bool)

(assert (=> b!6766869 m!7517958))

(assert (=> d!2125431 d!2125777))

(declare-fun b!6766870 () Bool)

(declare-fun e!4085776 () (InoxSet Context!11950))

(declare-fun call!613127 () (InoxSet Context!11950))

(assert (=> b!6766870 (= e!4085776 ((_ map or) call!613127 (derivationStepZipperUp!1745 (Context!11951 (t!379779 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 (h!72397 zl!343))))))) (h!72398 s!2326))))))

(declare-fun bm!613122 () Bool)

(assert (=> bm!613122 (= call!613127 (derivationStepZipperDown!1819 (h!72396 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 (h!72397 zl!343)))))) (Context!11951 (t!379779 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 (h!72397 zl!343))))))) (h!72398 s!2326)))))

(declare-fun b!6766871 () Bool)

(declare-fun e!4085774 () (InoxSet Context!11950))

(assert (=> b!6766871 (= e!4085774 ((as const (Array Context!11950 Bool)) false))))

(declare-fun b!6766872 () Bool)

(assert (=> b!6766872 (= e!4085774 call!613127)))

(declare-fun b!6766873 () Bool)

(assert (=> b!6766873 (= e!4085776 e!4085774)))

(declare-fun c!1256425 () Bool)

(assert (=> b!6766873 (= c!1256425 ((_ is Cons!65948) (exprs!6475 (Context!11951 (t!379779 (exprs!6475 (h!72397 zl!343)))))))))

(declare-fun b!6766874 () Bool)

(declare-fun e!4085775 () Bool)

(assert (=> b!6766874 (= e!4085775 (nullable!6574 (h!72396 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 (h!72397 zl!343))))))))))

(declare-fun d!2125779 () Bool)

(declare-fun c!1256424 () Bool)

(assert (=> d!2125779 (= c!1256424 e!4085775)))

(declare-fun res!2766777 () Bool)

(assert (=> d!2125779 (=> (not res!2766777) (not e!4085775))))

(assert (=> d!2125779 (= res!2766777 ((_ is Cons!65948) (exprs!6475 (Context!11951 (t!379779 (exprs!6475 (h!72397 zl!343)))))))))

(assert (=> d!2125779 (= (derivationStepZipperUp!1745 (Context!11951 (t!379779 (exprs!6475 (h!72397 zl!343)))) (h!72398 s!2326)) e!4085776)))

(assert (= (and d!2125779 res!2766777) b!6766874))

(assert (= (and d!2125779 c!1256424) b!6766870))

(assert (= (and d!2125779 (not c!1256424)) b!6766873))

(assert (= (and b!6766873 c!1256425) b!6766872))

(assert (= (and b!6766873 (not c!1256425)) b!6766871))

(assert (= (or b!6766870 b!6766872) bm!613122))

(declare-fun m!7517960 () Bool)

(assert (=> b!6766870 m!7517960))

(declare-fun m!7517962 () Bool)

(assert (=> bm!613122 m!7517962))

(declare-fun m!7517964 () Bool)

(assert (=> b!6766874 m!7517964))

(assert (=> b!6766180 d!2125779))

(declare-fun d!2125781 () Bool)

(assert (=> d!2125781 (= (nullable!6574 (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))) (nullableFct!2480 (h!72396 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))))))

(declare-fun bs!1800833 () Bool)

(assert (= bs!1800833 d!2125781))

(declare-fun m!7517966 () Bool)

(assert (=> bs!1800833 m!7517966))

(assert (=> b!6765561 d!2125781))

(declare-fun d!2125783 () Bool)

(assert (=> d!2125783 (= (isEmptyExpr!1953 lt!2442708) ((_ is EmptyExpr!16591) lt!2442708))))

(assert (=> b!6765923 d!2125783))

(assert (=> d!2125457 d!2125453))

(declare-fun d!2125793 () Bool)

(assert (=> d!2125793 (= (flatMap!2072 lt!2442640 lambda!380523) (dynLambda!26314 lambda!380523 lt!2442623))))

(assert (=> d!2125793 true))

(declare-fun _$13!4141 () Unit!159873)

(assert (=> d!2125793 (= (choose!50415 lt!2442640 lt!2442623 lambda!380523) _$13!4141)))

(declare-fun b_lambda!254799 () Bool)

(assert (=> (not b_lambda!254799) (not d!2125793)))

(declare-fun bs!1800835 () Bool)

(assert (= bs!1800835 d!2125793))

(assert (=> bs!1800835 m!7516604))

(assert (=> bs!1800835 m!7517270))

(assert (=> d!2125457 d!2125793))

(assert (=> b!6766109 d!2125627))

(declare-fun b!6766875 () Bool)

(declare-fun e!4085779 () Bool)

(assert (=> b!6766875 (= e!4085779 (nullable!6574 (derivativeStep!5258 (reg!16920 r!7292) (head!13599 (_1!36869 lt!2442636)))))))

(declare-fun b!6766876 () Bool)

(declare-fun e!4085780 () Bool)

(declare-fun e!4085781 () Bool)

(assert (=> b!6766876 (= e!4085780 e!4085781)))

(declare-fun c!1256426 () Bool)

(assert (=> b!6766876 (= c!1256426 ((_ is EmptyLang!16591) (derivativeStep!5258 (reg!16920 r!7292) (head!13599 (_1!36869 lt!2442636)))))))

(declare-fun b!6766877 () Bool)

(assert (=> b!6766877 (= e!4085779 (matchR!8774 (derivativeStep!5258 (derivativeStep!5258 (reg!16920 r!7292) (head!13599 (_1!36869 lt!2442636))) (head!13599 (tail!12684 (_1!36869 lt!2442636)))) (tail!12684 (tail!12684 (_1!36869 lt!2442636)))))))

(declare-fun b!6766878 () Bool)

(declare-fun e!4085783 () Bool)

(assert (=> b!6766878 (= e!4085783 (= (head!13599 (tail!12684 (_1!36869 lt!2442636))) (c!1256003 (derivativeStep!5258 (reg!16920 r!7292) (head!13599 (_1!36869 lt!2442636))))))))

(declare-fun b!6766880 () Bool)

(declare-fun res!2766783 () Bool)

(declare-fun e!4085777 () Bool)

(assert (=> b!6766880 (=> res!2766783 e!4085777)))

(assert (=> b!6766880 (= res!2766783 (not (isEmpty!38306 (tail!12684 (tail!12684 (_1!36869 lt!2442636))))))))

(declare-fun b!6766881 () Bool)

(declare-fun e!4085782 () Bool)

(assert (=> b!6766881 (= e!4085782 e!4085777)))

(declare-fun res!2766779 () Bool)

(assert (=> b!6766881 (=> res!2766779 e!4085777)))

(declare-fun call!613128 () Bool)

(assert (=> b!6766881 (= res!2766779 call!613128)))

(declare-fun b!6766882 () Bool)

(assert (=> b!6766882 (= e!4085777 (not (= (head!13599 (tail!12684 (_1!36869 lt!2442636))) (c!1256003 (derivativeStep!5258 (reg!16920 r!7292) (head!13599 (_1!36869 lt!2442636)))))))))

(declare-fun b!6766883 () Bool)

(declare-fun res!2766786 () Bool)

(declare-fun e!4085778 () Bool)

(assert (=> b!6766883 (=> res!2766786 e!4085778)))

(assert (=> b!6766883 (= res!2766786 e!4085783)))

(declare-fun res!2766784 () Bool)

(assert (=> b!6766883 (=> (not res!2766784) (not e!4085783))))

(declare-fun lt!2442794 () Bool)

(assert (=> b!6766883 (= res!2766784 lt!2442794)))

(declare-fun b!6766884 () Bool)

(declare-fun res!2766781 () Bool)

(assert (=> b!6766884 (=> (not res!2766781) (not e!4085783))))

(assert (=> b!6766884 (= res!2766781 (not call!613128))))

(declare-fun b!6766879 () Bool)

(assert (=> b!6766879 (= e!4085778 e!4085782)))

(declare-fun res!2766780 () Bool)

(assert (=> b!6766879 (=> (not res!2766780) (not e!4085782))))

(assert (=> b!6766879 (= res!2766780 (not lt!2442794))))

(declare-fun d!2125795 () Bool)

(assert (=> d!2125795 e!4085780))

(declare-fun c!1256428 () Bool)

(assert (=> d!2125795 (= c!1256428 ((_ is EmptyExpr!16591) (derivativeStep!5258 (reg!16920 r!7292) (head!13599 (_1!36869 lt!2442636)))))))

(assert (=> d!2125795 (= lt!2442794 e!4085779)))

(declare-fun c!1256427 () Bool)

(assert (=> d!2125795 (= c!1256427 (isEmpty!38306 (tail!12684 (_1!36869 lt!2442636))))))

(assert (=> d!2125795 (validRegex!8327 (derivativeStep!5258 (reg!16920 r!7292) (head!13599 (_1!36869 lt!2442636))))))

(assert (=> d!2125795 (= (matchR!8774 (derivativeStep!5258 (reg!16920 r!7292) (head!13599 (_1!36869 lt!2442636))) (tail!12684 (_1!36869 lt!2442636))) lt!2442794)))

(declare-fun bm!613123 () Bool)

(assert (=> bm!613123 (= call!613128 (isEmpty!38306 (tail!12684 (_1!36869 lt!2442636))))))

(declare-fun b!6766885 () Bool)

(declare-fun res!2766785 () Bool)

(assert (=> b!6766885 (=> res!2766785 e!4085778)))

(assert (=> b!6766885 (= res!2766785 (not ((_ is ElementMatch!16591) (derivativeStep!5258 (reg!16920 r!7292) (head!13599 (_1!36869 lt!2442636))))))))

(assert (=> b!6766885 (= e!4085781 e!4085778)))

(declare-fun b!6766886 () Bool)

(assert (=> b!6766886 (= e!4085780 (= lt!2442794 call!613128))))

(declare-fun b!6766887 () Bool)

(declare-fun res!2766782 () Bool)

(assert (=> b!6766887 (=> (not res!2766782) (not e!4085783))))

(assert (=> b!6766887 (= res!2766782 (isEmpty!38306 (tail!12684 (tail!12684 (_1!36869 lt!2442636)))))))

(declare-fun b!6766888 () Bool)

(assert (=> b!6766888 (= e!4085781 (not lt!2442794))))

(assert (= (and d!2125795 c!1256427) b!6766875))

(assert (= (and d!2125795 (not c!1256427)) b!6766877))

(assert (= (and d!2125795 c!1256428) b!6766886))

(assert (= (and d!2125795 (not c!1256428)) b!6766876))

(assert (= (and b!6766876 c!1256426) b!6766888))

(assert (= (and b!6766876 (not c!1256426)) b!6766885))

(assert (= (and b!6766885 (not res!2766785)) b!6766883))

(assert (= (and b!6766883 res!2766784) b!6766884))

(assert (= (and b!6766884 res!2766781) b!6766887))

(assert (= (and b!6766887 res!2766782) b!6766878))

(assert (= (and b!6766883 (not res!2766786)) b!6766879))

(assert (= (and b!6766879 res!2766780) b!6766881))

(assert (= (and b!6766881 (not res!2766779)) b!6766880))

(assert (= (and b!6766880 (not res!2766783)) b!6766882))

(assert (= (or b!6766886 b!6766881 b!6766884) bm!613123))

(assert (=> b!6766877 m!7516832))

(assert (=> b!6766877 m!7517858))

(assert (=> b!6766877 m!7516830))

(assert (=> b!6766877 m!7517858))

(declare-fun m!7517976 () Bool)

(assert (=> b!6766877 m!7517976))

(assert (=> b!6766877 m!7516832))

(assert (=> b!6766877 m!7517864))

(assert (=> b!6766877 m!7517976))

(assert (=> b!6766877 m!7517864))

(declare-fun m!7517978 () Bool)

(assert (=> b!6766877 m!7517978))

(assert (=> d!2125795 m!7516832))

(assert (=> d!2125795 m!7516842))

(assert (=> d!2125795 m!7516830))

(declare-fun m!7517980 () Bool)

(assert (=> d!2125795 m!7517980))

(assert (=> b!6766878 m!7516832))

(assert (=> b!6766878 m!7517858))

(assert (=> bm!613123 m!7516832))

(assert (=> bm!613123 m!7516842))

(assert (=> b!6766882 m!7516832))

(assert (=> b!6766882 m!7517858))

(assert (=> b!6766875 m!7516830))

(declare-fun m!7517982 () Bool)

(assert (=> b!6766875 m!7517982))

(assert (=> b!6766887 m!7516832))

(assert (=> b!6766887 m!7517864))

(assert (=> b!6766887 m!7517864))

(declare-fun m!7517986 () Bool)

(assert (=> b!6766887 m!7517986))

(assert (=> b!6766880 m!7516832))

(assert (=> b!6766880 m!7517864))

(assert (=> b!6766880 m!7517864))

(assert (=> b!6766880 m!7517986))

(assert (=> b!6765586 d!2125795))

(declare-fun b!6766943 () Bool)

(declare-fun e!4085817 () Regex!16591)

(declare-fun call!613144 () Regex!16591)

(declare-fun call!613142 () Regex!16591)

(assert (=> b!6766943 (= e!4085817 (Union!16591 call!613144 call!613142))))

(declare-fun b!6766944 () Bool)

(declare-fun c!1256451 () Bool)

(assert (=> b!6766944 (= c!1256451 ((_ is Union!16591) (reg!16920 r!7292)))))

(declare-fun e!4085818 () Regex!16591)

(assert (=> b!6766944 (= e!4085818 e!4085817)))

(declare-fun b!6766945 () Bool)

(assert (=> b!6766945 (= e!4085818 (ite (= (head!13599 (_1!36869 lt!2442636)) (c!1256003 (reg!16920 r!7292))) EmptyExpr!16591 EmptyLang!16591))))

(declare-fun bm!613137 () Bool)

(assert (=> bm!613137 (= call!613144 (derivativeStep!5258 (ite c!1256451 (regOne!33695 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292))) (head!13599 (_1!36869 lt!2442636))))))

(declare-fun bm!613138 () Bool)

(declare-fun call!613141 () Regex!16591)

(declare-fun call!613143 () Regex!16591)

(assert (=> bm!613138 (= call!613141 call!613143)))

(declare-fun b!6766946 () Bool)

(declare-fun e!4085816 () Regex!16591)

(assert (=> b!6766946 (= e!4085816 e!4085818)))

(declare-fun c!1256454 () Bool)

(assert (=> b!6766946 (= c!1256454 ((_ is ElementMatch!16591) (reg!16920 r!7292)))))

(declare-fun b!6766947 () Bool)

(declare-fun c!1256453 () Bool)

(assert (=> b!6766947 (= c!1256453 (nullable!6574 (regOne!33694 (reg!16920 r!7292))))))

(declare-fun e!4085819 () Regex!16591)

(declare-fun e!4085815 () Regex!16591)

(assert (=> b!6766947 (= e!4085819 e!4085815)))

(declare-fun b!6766948 () Bool)

(assert (=> b!6766948 (= e!4085815 (Union!16591 (Concat!25436 call!613144 (regTwo!33694 (reg!16920 r!7292))) call!613141))))

(declare-fun c!1256455 () Bool)

(declare-fun bm!613139 () Bool)

(assert (=> bm!613139 (= call!613142 (derivativeStep!5258 (ite c!1256451 (regTwo!33695 (reg!16920 r!7292)) (ite c!1256455 (reg!16920 (reg!16920 r!7292)) (ite c!1256453 (regTwo!33694 (reg!16920 r!7292)) (regOne!33694 (reg!16920 r!7292))))) (head!13599 (_1!36869 lt!2442636))))))

(declare-fun d!2125799 () Bool)

(declare-fun lt!2442798 () Regex!16591)

(assert (=> d!2125799 (validRegex!8327 lt!2442798)))

(assert (=> d!2125799 (= lt!2442798 e!4085816)))

(declare-fun c!1256452 () Bool)

(assert (=> d!2125799 (= c!1256452 (or ((_ is EmptyExpr!16591) (reg!16920 r!7292)) ((_ is EmptyLang!16591) (reg!16920 r!7292))))))

(assert (=> d!2125799 (validRegex!8327 (reg!16920 r!7292))))

(assert (=> d!2125799 (= (derivativeStep!5258 (reg!16920 r!7292) (head!13599 (_1!36869 lt!2442636))) lt!2442798)))

(declare-fun bm!613136 () Bool)

(assert (=> bm!613136 (= call!613143 call!613142)))

(declare-fun b!6766949 () Bool)

(assert (=> b!6766949 (= e!4085816 EmptyLang!16591)))

(declare-fun b!6766950 () Bool)

(assert (=> b!6766950 (= e!4085815 (Union!16591 (Concat!25436 call!613141 (regTwo!33694 (reg!16920 r!7292))) EmptyLang!16591))))

(declare-fun b!6766951 () Bool)

(assert (=> b!6766951 (= e!4085819 (Concat!25436 call!613143 (reg!16920 r!7292)))))

(declare-fun b!6766952 () Bool)

(assert (=> b!6766952 (= e!4085817 e!4085819)))

(assert (=> b!6766952 (= c!1256455 ((_ is Star!16591) (reg!16920 r!7292)))))

(assert (= (and d!2125799 c!1256452) b!6766949))

(assert (= (and d!2125799 (not c!1256452)) b!6766946))

(assert (= (and b!6766946 c!1256454) b!6766945))

(assert (= (and b!6766946 (not c!1256454)) b!6766944))

(assert (= (and b!6766944 c!1256451) b!6766943))

(assert (= (and b!6766944 (not c!1256451)) b!6766952))

(assert (= (and b!6766952 c!1256455) b!6766951))

(assert (= (and b!6766952 (not c!1256455)) b!6766947))

(assert (= (and b!6766947 c!1256453) b!6766948))

(assert (= (and b!6766947 (not c!1256453)) b!6766950))

(assert (= (or b!6766948 b!6766950) bm!613138))

(assert (= (or b!6766951 bm!613138) bm!613136))

(assert (= (or b!6766943 bm!613136) bm!613139))

(assert (= (or b!6766943 b!6766948) bm!613137))

(assert (=> bm!613137 m!7516828))

(declare-fun m!7518014 () Bool)

(assert (=> bm!613137 m!7518014))

(assert (=> b!6766947 m!7517260))

(assert (=> bm!613139 m!7516828))

(declare-fun m!7518016 () Bool)

(assert (=> bm!613139 m!7518016))

(declare-fun m!7518018 () Bool)

(assert (=> d!2125799 m!7518018))

(assert (=> d!2125799 m!7516838))

(assert (=> b!6765586 d!2125799))

(assert (=> b!6765586 d!2125677))

(assert (=> b!6765586 d!2125751))

(declare-fun d!2125807 () Bool)

(assert (=> d!2125807 (= (Exists!3659 lambda!380594) (choose!50417 lambda!380594))))

(declare-fun bs!1800882 () Bool)

(assert (= bs!1800882 d!2125807))

(declare-fun m!7518020 () Bool)

(assert (=> bs!1800882 m!7518020))

(assert (=> d!2125401 d!2125807))

(declare-fun d!2125809 () Bool)

(assert (=> d!2125809 (= (Exists!3659 lambda!380595) (choose!50417 lambda!380595))))

(declare-fun bs!1800884 () Bool)

(assert (= bs!1800884 d!2125809))

(declare-fun m!7518022 () Bool)

(assert (=> bs!1800884 m!7518022))

(assert (=> d!2125401 d!2125809))

(declare-fun bs!1800904 () Bool)

(declare-fun d!2125811 () Bool)

(assert (= bs!1800904 (and d!2125811 b!6766568)))

(declare-fun lambda!380665 () Int)

(assert (=> bs!1800904 (not (= lambda!380665 lambda!380630))))

(declare-fun bs!1800905 () Bool)

(assert (= bs!1800905 (and d!2125811 d!2125393)))

(assert (=> bs!1800905 (= (= r!7292 (Star!16591 (reg!16920 r!7292))) (= lambda!380665 lambda!380583))))

(declare-fun bs!1800906 () Bool)

(assert (= bs!1800906 (and d!2125811 b!6765810)))

(assert (=> bs!1800906 (not (= lambda!380665 lambda!380568))))

(declare-fun bs!1800907 () Bool)

(assert (= bs!1800907 (and d!2125811 b!6766464)))

(assert (=> bs!1800907 (not (= lambda!380665 lambda!380618))))

(declare-fun bs!1800908 () Bool)

(assert (= bs!1800908 (and d!2125811 b!6766622)))

(assert (=> bs!1800908 (not (= lambda!380665 lambda!380638))))

(assert (=> bs!1800905 (not (= lambda!380665 lambda!380586))))

(declare-fun bs!1800909 () Bool)

(assert (= bs!1800909 (and d!2125811 b!6765357)))

(assert (=> bs!1800909 (not (= lambda!380665 lambda!380522))))

(declare-fun bs!1800910 () Bool)

(assert (= bs!1800910 (and d!2125811 b!6766543)))

(assert (=> bs!1800910 (not (= lambda!380665 lambda!380628))))

(declare-fun bs!1800911 () Bool)

(assert (= bs!1800911 (and d!2125811 b!6766563)))

(assert (=> bs!1800911 (not (= lambda!380665 lambda!380629))))

(declare-fun bs!1800913 () Bool)

(assert (= bs!1800913 (and d!2125811 b!6766617)))

(assert (=> bs!1800913 (not (= lambda!380665 lambda!380634))))

(declare-fun bs!1800914 () Bool)

(assert (= bs!1800914 (and d!2125811 b!6766162)))

(assert (=> bs!1800914 (not (= lambda!380665 lambda!380606))))

(declare-fun bs!1800915 () Bool)

(assert (= bs!1800915 (and d!2125811 d!2125425)))

(assert (=> bs!1800915 (= lambda!380665 lambda!380598)))

(declare-fun bs!1800916 () Bool)

(assert (= bs!1800916 (and d!2125811 b!6766157)))

(assert (=> bs!1800916 (not (= lambda!380665 lambda!380605))))

(declare-fun bs!1800917 () Bool)

(assert (= bs!1800917 (and d!2125811 d!2125401)))

(assert (=> bs!1800917 (= lambda!380665 lambda!380594)))

(declare-fun bs!1800918 () Bool)

(assert (= bs!1800918 (and d!2125811 b!6765805)))

(assert (=> bs!1800918 (not (= lambda!380665 lambda!380565))))

(declare-fun bs!1800919 () Bool)

(assert (= bs!1800919 (and d!2125811 b!6766459)))

(assert (=> bs!1800919 (not (= lambda!380665 lambda!380617))))

(assert (=> bs!1800917 (not (= lambda!380665 lambda!380595))))

(declare-fun bs!1800920 () Bool)

(assert (= bs!1800920 (and d!2125811 b!6766538)))

(assert (=> bs!1800920 (not (= lambda!380665 lambda!380627))))

(assert (=> bs!1800909 (not (= lambda!380665 lambda!380521))))

(assert (=> bs!1800909 (= lambda!380665 lambda!380520)))

(assert (=> d!2125811 true))

(assert (=> d!2125811 true))

(assert (=> d!2125811 true))

(declare-fun lambda!380666 () Int)

(assert (=> bs!1800904 (= (and (= (reg!16920 r!7292) (regOne!33694 (regOne!33695 lt!2442635))) (= r!7292 (regTwo!33694 (regOne!33695 lt!2442635)))) (= lambda!380666 lambda!380630))))

(assert (=> bs!1800905 (not (= lambda!380666 lambda!380583))))

(assert (=> bs!1800906 (= (and (= (reg!16920 r!7292) (regOne!33694 r!7292)) (= r!7292 (regTwo!33694 r!7292))) (= lambda!380666 lambda!380568))))

(assert (=> bs!1800907 (= (and (= (reg!16920 r!7292) (regOne!33694 (regTwo!33695 lt!2442635))) (= r!7292 (regTwo!33694 (regTwo!33695 lt!2442635)))) (= lambda!380666 lambda!380618))))

(assert (=> bs!1800908 (= (and (= (reg!16920 r!7292) (regOne!33694 (regTwo!33695 r!7292))) (= r!7292 (regTwo!33694 (regTwo!33695 r!7292)))) (= lambda!380666 lambda!380638))))

(assert (=> bs!1800905 (not (= lambda!380666 lambda!380586))))

(assert (=> bs!1800909 (= lambda!380666 lambda!380522)))

(declare-fun bs!1800921 () Bool)

(assert (= bs!1800921 d!2125811))

(assert (=> bs!1800921 (not (= lambda!380666 lambda!380665))))

(assert (=> bs!1800910 (= (and (= (reg!16920 r!7292) (regOne!33694 (regOne!33695 r!7292))) (= r!7292 (regTwo!33694 (regOne!33695 r!7292)))) (= lambda!380666 lambda!380628))))

(assert (=> bs!1800911 (not (= lambda!380666 lambda!380629))))

(assert (=> bs!1800913 (not (= lambda!380666 lambda!380634))))

(assert (=> bs!1800914 (= (and (= (reg!16920 r!7292) (regOne!33694 lt!2442635)) (= r!7292 (regTwo!33694 lt!2442635))) (= lambda!380666 lambda!380606))))

(assert (=> bs!1800915 (not (= lambda!380666 lambda!380598))))

(assert (=> bs!1800916 (not (= lambda!380666 lambda!380605))))

(assert (=> bs!1800917 (not (= lambda!380666 lambda!380594))))

(assert (=> bs!1800918 (not (= lambda!380666 lambda!380565))))

(assert (=> bs!1800919 (not (= lambda!380666 lambda!380617))))

(assert (=> bs!1800917 (= lambda!380666 lambda!380595)))

(assert (=> bs!1800920 (not (= lambda!380666 lambda!380627))))

(assert (=> bs!1800909 (not (= lambda!380666 lambda!380521))))

(assert (=> bs!1800909 (not (= lambda!380666 lambda!380520))))

(assert (=> d!2125811 true))

(assert (=> d!2125811 true))

(assert (=> d!2125811 true))

(assert (=> d!2125811 (= (Exists!3659 lambda!380665) (Exists!3659 lambda!380666))))

(assert (=> d!2125811 true))

(declare-fun _$90!2632 () Unit!159873)

(assert (=> d!2125811 (= (choose!50423 (reg!16920 r!7292) r!7292 s!2326) _$90!2632)))

(declare-fun m!7518052 () Bool)

(assert (=> bs!1800921 m!7518052))

(declare-fun m!7518054 () Bool)

(assert (=> bs!1800921 m!7518054))

(assert (=> d!2125401 d!2125811))

(assert (=> d!2125401 d!2125553))

(declare-fun d!2125833 () Bool)

(assert (=> d!2125833 true))

(assert (=> d!2125833 true))

(declare-fun res!2766810 () Bool)

(assert (=> d!2125833 (= (choose!50417 lambda!380522) res!2766810)))

(assert (=> d!2125391 d!2125833))

(declare-fun bs!1800923 () Bool)

(declare-fun d!2125839 () Bool)

(assert (= bs!1800923 (and d!2125839 d!2125431)))

(declare-fun lambda!380667 () Int)

(assert (=> bs!1800923 (= lambda!380667 lambda!380601)))

(declare-fun bs!1800924 () Bool)

(assert (= bs!1800924 (and d!2125839 d!2125525)))

(assert (=> bs!1800924 (= lambda!380667 lambda!380614)))

(declare-fun bs!1800925 () Bool)

(assert (= bs!1800925 (and d!2125839 d!2125575)))

(assert (=> bs!1800925 (= lambda!380667 lambda!380619)))

(declare-fun bs!1800926 () Bool)

(assert (= bs!1800926 (and d!2125839 d!2125361)))

(assert (=> bs!1800926 (= lambda!380667 lambda!380574)))

(declare-fun bs!1800927 () Bool)

(assert (= bs!1800927 (and d!2125839 d!2125433)))

(assert (=> bs!1800927 (= lambda!380667 lambda!380604)))

(declare-fun bs!1800928 () Bool)

(assert (= bs!1800928 (and d!2125839 d!2125649)))

(assert (=> bs!1800928 (= lambda!380667 lambda!380641)))

(declare-fun bs!1800929 () Bool)

(assert (= bs!1800929 (and d!2125839 d!2125577)))

(assert (=> bs!1800929 (= lambda!380667 lambda!380622)))

(declare-fun bs!1800930 () Bool)

(assert (= bs!1800930 (and d!2125839 d!2125459)))

(assert (=> bs!1800930 (= lambda!380667 lambda!380607)))

(declare-fun bs!1800931 () Bool)

(assert (= bs!1800931 (and d!2125839 d!2125725)))

(assert (=> bs!1800931 (= lambda!380667 lambda!380647)))

(declare-fun bs!1800932 () Bool)

(assert (= bs!1800932 (and d!2125839 d!2125313)))

(assert (=> bs!1800932 (= lambda!380667 lambda!380553)))

(declare-fun bs!1800933 () Bool)

(assert (= bs!1800933 (and d!2125839 d!2125645)))

(assert (=> bs!1800933 (= lambda!380667 lambda!380640)))

(declare-fun bs!1800934 () Bool)

(assert (= bs!1800934 (and d!2125839 d!2125239)))

(assert (=> bs!1800934 (= lambda!380667 lambda!380526)))

(assert (=> d!2125839 (= (inv!84724 (h!72397 (t!379780 zl!343))) (forall!15787 (exprs!6475 (h!72397 (t!379780 zl!343))) lambda!380667))))

(declare-fun bs!1800935 () Bool)

(assert (= bs!1800935 d!2125839))

(declare-fun m!7518074 () Bool)

(assert (=> bs!1800935 m!7518074))

(assert (=> b!6766247 d!2125839))

(declare-fun bs!1800937 () Bool)

(declare-fun d!2125841 () Bool)

(assert (= bs!1800937 (and d!2125841 d!2125729)))

(declare-fun lambda!380668 () Int)

(assert (=> bs!1800937 (= lambda!380668 lambda!380651)))

(assert (=> d!2125841 (= (nullableZipper!2301 (derivationStepZipper!2535 lt!2442640 (h!72398 s!2326))) (exists!2715 (derivationStepZipper!2535 lt!2442640 (h!72398 s!2326)) lambda!380668))))

(declare-fun bs!1800938 () Bool)

(assert (= bs!1800938 d!2125841))

(assert (=> bs!1800938 m!7516584))

(declare-fun m!7518078 () Bool)

(assert (=> bs!1800938 m!7518078))

(assert (=> b!6765470 d!2125841))

(declare-fun c!1256470 () Bool)

(declare-fun call!613160 () List!66072)

(declare-fun c!1256474 () Bool)

(declare-fun call!613159 () (InoxSet Context!11950))

(declare-fun bm!613152 () Bool)

(declare-fun c!1256473 () Bool)

(assert (=> bm!613152 (= call!613159 (derivationStepZipperDown!1819 (ite c!1256474 (regTwo!33695 (ite c!1256057 (regOne!33695 r!7292) (regOne!33694 r!7292))) (ite c!1256470 (regTwo!33694 (ite c!1256057 (regOne!33695 r!7292) (regOne!33694 r!7292))) (ite c!1256473 (regOne!33694 (ite c!1256057 (regOne!33695 r!7292) (regOne!33694 r!7292))) (reg!16920 (ite c!1256057 (regOne!33695 r!7292) (regOne!33694 r!7292)))))) (ite (or c!1256474 c!1256470) (ite c!1256057 (Context!11951 Nil!65948) (Context!11951 call!612926)) (Context!11951 call!613160)) (h!72398 s!2326)))))

(declare-fun bm!613153 () Bool)

(declare-fun call!613158 () List!66072)

(assert (=> bm!613153 (= call!613160 call!613158)))

(declare-fun bm!613154 () Bool)

(declare-fun call!613162 () (InoxSet Context!11950))

(assert (=> bm!613154 (= call!613162 call!613159)))

(declare-fun call!613161 () (InoxSet Context!11950))

(declare-fun bm!613156 () Bool)

(assert (=> bm!613156 (= call!613161 (derivationStepZipperDown!1819 (ite c!1256474 (regOne!33695 (ite c!1256057 (regOne!33695 r!7292) (regOne!33694 r!7292))) (regOne!33694 (ite c!1256057 (regOne!33695 r!7292) (regOne!33694 r!7292)))) (ite c!1256474 (ite c!1256057 (Context!11951 Nil!65948) (Context!11951 call!612926)) (Context!11951 call!613158)) (h!72398 s!2326)))))

(declare-fun b!6767007 () Bool)

(declare-fun e!4085853 () (InoxSet Context!11950))

(declare-fun call!613157 () (InoxSet Context!11950))

(assert (=> b!6767007 (= e!4085853 call!613157)))

(declare-fun b!6767008 () Bool)

(declare-fun e!4085856 () (InoxSet Context!11950))

(assert (=> b!6767008 (= e!4085856 (store ((as const (Array Context!11950 Bool)) false) (ite c!1256057 (Context!11951 Nil!65948) (Context!11951 call!612926)) true))))

(declare-fun b!6767009 () Bool)

(declare-fun e!4085857 () (InoxSet Context!11950))

(assert (=> b!6767009 (= e!4085857 ((_ map or) call!613161 call!613162))))

(declare-fun b!6767010 () Bool)

(declare-fun e!4085855 () Bool)

(assert (=> b!6767010 (= c!1256470 e!4085855)))

(declare-fun res!2766824 () Bool)

(assert (=> b!6767010 (=> (not res!2766824) (not e!4085855))))

(assert (=> b!6767010 (= res!2766824 ((_ is Concat!25436) (ite c!1256057 (regOne!33695 r!7292) (regOne!33694 r!7292))))))

(declare-fun e!4085852 () (InoxSet Context!11950))

(assert (=> b!6767010 (= e!4085852 e!4085857)))

(declare-fun b!6767011 () Bool)

(declare-fun e!4085854 () (InoxSet Context!11950))

(assert (=> b!6767011 (= e!4085857 e!4085854)))

(assert (=> b!6767011 (= c!1256473 ((_ is Concat!25436) (ite c!1256057 (regOne!33695 r!7292) (regOne!33694 r!7292))))))

(declare-fun bm!613157 () Bool)

(assert (=> bm!613157 (= call!613157 call!613162)))

(declare-fun b!6767012 () Bool)

(declare-fun c!1256471 () Bool)

(assert (=> b!6767012 (= c!1256471 ((_ is Star!16591) (ite c!1256057 (regOne!33695 r!7292) (regOne!33694 r!7292))))))

(assert (=> b!6767012 (= e!4085854 e!4085853)))

(declare-fun b!6767013 () Bool)

(assert (=> b!6767013 (= e!4085855 (nullable!6574 (regOne!33694 (ite c!1256057 (regOne!33695 r!7292) (regOne!33694 r!7292)))))))

(declare-fun b!6767014 () Bool)

(assert (=> b!6767014 (= e!4085852 ((_ map or) call!613161 call!613159))))

(declare-fun b!6767015 () Bool)

(assert (=> b!6767015 (= e!4085854 call!613157)))

(declare-fun c!1256472 () Bool)

(declare-fun d!2125847 () Bool)

(assert (=> d!2125847 (= c!1256472 (and ((_ is ElementMatch!16591) (ite c!1256057 (regOne!33695 r!7292) (regOne!33694 r!7292))) (= (c!1256003 (ite c!1256057 (regOne!33695 r!7292) (regOne!33694 r!7292))) (h!72398 s!2326))))))

(assert (=> d!2125847 (= (derivationStepZipperDown!1819 (ite c!1256057 (regOne!33695 r!7292) (regOne!33694 r!7292)) (ite c!1256057 (Context!11951 Nil!65948) (Context!11951 call!612926)) (h!72398 s!2326)) e!4085856)))

(declare-fun bm!613155 () Bool)

(assert (=> bm!613155 (= call!613158 ($colon$colon!2404 (exprs!6475 (ite c!1256057 (Context!11951 Nil!65948) (Context!11951 call!612926))) (ite (or c!1256470 c!1256473) (regTwo!33694 (ite c!1256057 (regOne!33695 r!7292) (regOne!33694 r!7292))) (ite c!1256057 (regOne!33695 r!7292) (regOne!33694 r!7292)))))))

(declare-fun b!6767016 () Bool)

(assert (=> b!6767016 (= e!4085856 e!4085852)))

(assert (=> b!6767016 (= c!1256474 ((_ is Union!16591) (ite c!1256057 (regOne!33695 r!7292) (regOne!33694 r!7292))))))

(declare-fun b!6767017 () Bool)

(assert (=> b!6767017 (= e!4085853 ((as const (Array Context!11950 Bool)) false))))

(assert (= (and d!2125847 c!1256472) b!6767008))

(assert (= (and d!2125847 (not c!1256472)) b!6767016))

(assert (= (and b!6767016 c!1256474) b!6767014))

(assert (= (and b!6767016 (not c!1256474)) b!6767010))

(assert (= (and b!6767010 res!2766824) b!6767013))

(assert (= (and b!6767010 c!1256470) b!6767009))

(assert (= (and b!6767010 (not c!1256470)) b!6767011))

(assert (= (and b!6767011 c!1256473) b!6767015))

(assert (= (and b!6767011 (not c!1256473)) b!6767012))

(assert (= (and b!6767012 c!1256471) b!6767007))

(assert (= (and b!6767012 (not c!1256471)) b!6767017))

(assert (= (or b!6767015 b!6767007) bm!613153))

(assert (= (or b!6767015 b!6767007) bm!613157))

(assert (= (or b!6767009 bm!613153) bm!613155))

(assert (= (or b!6767009 bm!613157) bm!613154))

(assert (= (or b!6767014 bm!613154) bm!613152))

(assert (= (or b!6767014 b!6767009) bm!613156))

(declare-fun m!7518090 () Bool)

(assert (=> bm!613155 m!7518090))

(declare-fun m!7518092 () Bool)

(assert (=> bm!613156 m!7518092))

(declare-fun m!7518094 () Bool)

(assert (=> b!6767008 m!7518094))

(declare-fun m!7518096 () Bool)

(assert (=> bm!613152 m!7518096))

(declare-fun m!7518106 () Bool)

(assert (=> b!6767013 m!7518106))

(assert (=> bm!612924 d!2125847))

(declare-fun d!2125855 () Bool)

(assert (=> d!2125855 (= (head!13599 (_2!36869 lt!2442636)) (h!72398 (_2!36869 lt!2442636)))))

(assert (=> b!6765409 d!2125855))

(assert (=> d!2125445 d!2125441))

(declare-fun d!2125857 () Bool)

(assert (=> d!2125857 (= (flatMap!2072 z!1189 lambda!380523) (dynLambda!26314 lambda!380523 (h!72397 zl!343)))))

(assert (=> d!2125857 true))

(declare-fun _$13!4142 () Unit!159873)

(assert (=> d!2125857 (= (choose!50415 z!1189 (h!72397 zl!343) lambda!380523) _$13!4142)))

(declare-fun b_lambda!254807 () Bool)

(assert (=> (not b_lambda!254807) (not d!2125857)))

(declare-fun bs!1800940 () Bool)

(assert (= bs!1800940 d!2125857))

(assert (=> bs!1800940 m!7516640))

(assert (=> bs!1800940 m!7517240))

(assert (=> d!2125445 d!2125857))

(declare-fun b!6767029 () Bool)

(declare-fun e!4085867 () Bool)

(assert (=> b!6767029 (= e!4085867 (nullable!6574 (derivativeStep!5258 r!7292 (head!13599 s!2326))))))

(declare-fun b!6767030 () Bool)

(declare-fun e!4085868 () Bool)

(declare-fun e!4085869 () Bool)

(assert (=> b!6767030 (= e!4085868 e!4085869)))

(declare-fun c!1256478 () Bool)

(assert (=> b!6767030 (= c!1256478 ((_ is EmptyLang!16591) (derivativeStep!5258 r!7292 (head!13599 s!2326))))))

(declare-fun b!6767031 () Bool)

(assert (=> b!6767031 (= e!4085867 (matchR!8774 (derivativeStep!5258 (derivativeStep!5258 r!7292 (head!13599 s!2326)) (head!13599 (tail!12684 s!2326))) (tail!12684 (tail!12684 s!2326))))))

(declare-fun b!6767032 () Bool)

(declare-fun e!4085871 () Bool)

(assert (=> b!6767032 (= e!4085871 (= (head!13599 (tail!12684 s!2326)) (c!1256003 (derivativeStep!5258 r!7292 (head!13599 s!2326)))))))

(declare-fun b!6767034 () Bool)

(declare-fun res!2766834 () Bool)

(declare-fun e!4085865 () Bool)

(assert (=> b!6767034 (=> res!2766834 e!4085865)))

(assert (=> b!6767034 (= res!2766834 (not (isEmpty!38306 (tail!12684 (tail!12684 s!2326)))))))

(declare-fun b!6767035 () Bool)

(declare-fun e!4085870 () Bool)

(assert (=> b!6767035 (= e!4085870 e!4085865)))

(declare-fun res!2766830 () Bool)

(assert (=> b!6767035 (=> res!2766830 e!4085865)))

(declare-fun call!613164 () Bool)

(assert (=> b!6767035 (= res!2766830 call!613164)))

(declare-fun b!6767036 () Bool)

(assert (=> b!6767036 (= e!4085865 (not (= (head!13599 (tail!12684 s!2326)) (c!1256003 (derivativeStep!5258 r!7292 (head!13599 s!2326))))))))

(declare-fun b!6767037 () Bool)

(declare-fun res!2766837 () Bool)

(declare-fun e!4085866 () Bool)

(assert (=> b!6767037 (=> res!2766837 e!4085866)))

(assert (=> b!6767037 (= res!2766837 e!4085871)))

(declare-fun res!2766835 () Bool)

(assert (=> b!6767037 (=> (not res!2766835) (not e!4085871))))

(declare-fun lt!2442801 () Bool)

(assert (=> b!6767037 (= res!2766835 lt!2442801)))

(declare-fun b!6767038 () Bool)

(declare-fun res!2766832 () Bool)

(assert (=> b!6767038 (=> (not res!2766832) (not e!4085871))))

(assert (=> b!6767038 (= res!2766832 (not call!613164))))

(declare-fun b!6767033 () Bool)

(assert (=> b!6767033 (= e!4085866 e!4085870)))

(declare-fun res!2766831 () Bool)

(assert (=> b!6767033 (=> (not res!2766831) (not e!4085870))))

(assert (=> b!6767033 (= res!2766831 (not lt!2442801))))

(declare-fun d!2125861 () Bool)

(assert (=> d!2125861 e!4085868))

(declare-fun c!1256480 () Bool)

(assert (=> d!2125861 (= c!1256480 ((_ is EmptyExpr!16591) (derivativeStep!5258 r!7292 (head!13599 s!2326))))))

(assert (=> d!2125861 (= lt!2442801 e!4085867)))

(declare-fun c!1256479 () Bool)

(assert (=> d!2125861 (= c!1256479 (isEmpty!38306 (tail!12684 s!2326)))))

(assert (=> d!2125861 (validRegex!8327 (derivativeStep!5258 r!7292 (head!13599 s!2326)))))

(assert (=> d!2125861 (= (matchR!8774 (derivativeStep!5258 r!7292 (head!13599 s!2326)) (tail!12684 s!2326)) lt!2442801)))

(declare-fun bm!613159 () Bool)

(assert (=> bm!613159 (= call!613164 (isEmpty!38306 (tail!12684 s!2326)))))

(declare-fun b!6767039 () Bool)

(declare-fun res!2766836 () Bool)

(assert (=> b!6767039 (=> res!2766836 e!4085866)))

(assert (=> b!6767039 (= res!2766836 (not ((_ is ElementMatch!16591) (derivativeStep!5258 r!7292 (head!13599 s!2326)))))))

(assert (=> b!6767039 (= e!4085869 e!4085866)))

(declare-fun b!6767040 () Bool)

(assert (=> b!6767040 (= e!4085868 (= lt!2442801 call!613164))))

(declare-fun b!6767041 () Bool)

(declare-fun res!2766833 () Bool)

(assert (=> b!6767041 (=> (not res!2766833) (not e!4085871))))

(assert (=> b!6767041 (= res!2766833 (isEmpty!38306 (tail!12684 (tail!12684 s!2326))))))

(declare-fun b!6767042 () Bool)

(assert (=> b!6767042 (= e!4085869 (not lt!2442801))))

(assert (= (and d!2125861 c!1256479) b!6767029))

(assert (= (and d!2125861 (not c!1256479)) b!6767031))

(assert (= (and d!2125861 c!1256480) b!6767040))

(assert (= (and d!2125861 (not c!1256480)) b!6767030))

(assert (= (and b!6767030 c!1256478) b!6767042))

(assert (= (and b!6767030 (not c!1256478)) b!6767039))

(assert (= (and b!6767039 (not res!2766836)) b!6767037))

(assert (= (and b!6767037 res!2766835) b!6767038))

(assert (= (and b!6767038 res!2766832) b!6767041))

(assert (= (and b!6767041 res!2766833) b!6767032))

(assert (= (and b!6767037 (not res!2766837)) b!6767033))

(assert (= (and b!6767033 res!2766831) b!6767035))

(assert (= (and b!6767035 (not res!2766830)) b!6767034))

(assert (= (and b!6767034 (not res!2766834)) b!6767036))

(assert (= (or b!6767040 b!6767035 b!6767038) bm!613159))

(assert (=> b!6767031 m!7516718))

(assert (=> b!6767031 m!7517646))

(assert (=> b!6767031 m!7516962))

(assert (=> b!6767031 m!7517646))

(declare-fun m!7518122 () Bool)

(assert (=> b!6767031 m!7518122))

(assert (=> b!6767031 m!7516718))

(assert (=> b!6767031 m!7517650))

(assert (=> b!6767031 m!7518122))

(assert (=> b!6767031 m!7517650))

(declare-fun m!7518124 () Bool)

(assert (=> b!6767031 m!7518124))

(assert (=> d!2125861 m!7516718))

(assert (=> d!2125861 m!7516966))

(assert (=> d!2125861 m!7516962))

(declare-fun m!7518126 () Bool)

(assert (=> d!2125861 m!7518126))

(assert (=> b!6767032 m!7516718))

(assert (=> b!6767032 m!7517646))

(assert (=> bm!613159 m!7516718))

(assert (=> bm!613159 m!7516966))

(assert (=> b!6767036 m!7516718))

(assert (=> b!6767036 m!7517646))

(assert (=> b!6767029 m!7516962))

(declare-fun m!7518128 () Bool)

(assert (=> b!6767029 m!7518128))

(assert (=> b!6767041 m!7516718))

(assert (=> b!6767041 m!7517650))

(assert (=> b!6767041 m!7517650))

(declare-fun m!7518130 () Bool)

(assert (=> b!6767041 m!7518130))

(assert (=> b!6767034 m!7516718))

(assert (=> b!6767034 m!7517650))

(assert (=> b!6767034 m!7517650))

(assert (=> b!6767034 m!7518130))

(assert (=> b!6765846 d!2125861))

(declare-fun b!6767062 () Bool)

(declare-fun e!4085887 () Regex!16591)

(declare-fun call!613171 () Regex!16591)

(declare-fun call!613169 () Regex!16591)

(assert (=> b!6767062 (= e!4085887 (Union!16591 call!613171 call!613169))))

(declare-fun b!6767063 () Bool)

(declare-fun c!1256487 () Bool)

(assert (=> b!6767063 (= c!1256487 ((_ is Union!16591) r!7292))))

(declare-fun e!4085888 () Regex!16591)

(assert (=> b!6767063 (= e!4085888 e!4085887)))

(declare-fun b!6767064 () Bool)

(assert (=> b!6767064 (= e!4085888 (ite (= (head!13599 s!2326) (c!1256003 r!7292)) EmptyExpr!16591 EmptyLang!16591))))

(declare-fun bm!613164 () Bool)

(assert (=> bm!613164 (= call!613171 (derivativeStep!5258 (ite c!1256487 (regOne!33695 r!7292) (regOne!33694 r!7292)) (head!13599 s!2326)))))

(declare-fun bm!613165 () Bool)

(declare-fun call!613168 () Regex!16591)

(declare-fun call!613170 () Regex!16591)

(assert (=> bm!613165 (= call!613168 call!613170)))

(declare-fun b!6767065 () Bool)

(declare-fun e!4085886 () Regex!16591)

(assert (=> b!6767065 (= e!4085886 e!4085888)))

(declare-fun c!1256490 () Bool)

(assert (=> b!6767065 (= c!1256490 ((_ is ElementMatch!16591) r!7292))))

(declare-fun b!6767066 () Bool)

(declare-fun c!1256489 () Bool)

(assert (=> b!6767066 (= c!1256489 (nullable!6574 (regOne!33694 r!7292)))))

(declare-fun e!4085889 () Regex!16591)

(declare-fun e!4085885 () Regex!16591)

(assert (=> b!6767066 (= e!4085889 e!4085885)))

(declare-fun b!6767067 () Bool)

(assert (=> b!6767067 (= e!4085885 (Union!16591 (Concat!25436 call!613171 (regTwo!33694 r!7292)) call!613168))))

(declare-fun bm!613166 () Bool)

(declare-fun c!1256491 () Bool)

(assert (=> bm!613166 (= call!613169 (derivativeStep!5258 (ite c!1256487 (regTwo!33695 r!7292) (ite c!1256491 (reg!16920 r!7292) (ite c!1256489 (regTwo!33694 r!7292) (regOne!33694 r!7292)))) (head!13599 s!2326)))))

(declare-fun d!2125867 () Bool)

(declare-fun lt!2442803 () Regex!16591)

(assert (=> d!2125867 (validRegex!8327 lt!2442803)))

(assert (=> d!2125867 (= lt!2442803 e!4085886)))

(declare-fun c!1256488 () Bool)

(assert (=> d!2125867 (= c!1256488 (or ((_ is EmptyExpr!16591) r!7292) ((_ is EmptyLang!16591) r!7292)))))

(assert (=> d!2125867 (validRegex!8327 r!7292)))

(assert (=> d!2125867 (= (derivativeStep!5258 r!7292 (head!13599 s!2326)) lt!2442803)))

(declare-fun bm!613163 () Bool)

(assert (=> bm!613163 (= call!613170 call!613169)))

(declare-fun b!6767068 () Bool)

(assert (=> b!6767068 (= e!4085886 EmptyLang!16591)))

(declare-fun b!6767069 () Bool)

(assert (=> b!6767069 (= e!4085885 (Union!16591 (Concat!25436 call!613168 (regTwo!33694 r!7292)) EmptyLang!16591))))

(declare-fun b!6767070 () Bool)

(assert (=> b!6767070 (= e!4085889 (Concat!25436 call!613170 r!7292))))

(declare-fun b!6767071 () Bool)

(assert (=> b!6767071 (= e!4085887 e!4085889)))

(assert (=> b!6767071 (= c!1256491 ((_ is Star!16591) r!7292))))

(assert (= (and d!2125867 c!1256488) b!6767068))

(assert (= (and d!2125867 (not c!1256488)) b!6767065))

(assert (= (and b!6767065 c!1256490) b!6767064))

(assert (= (and b!6767065 (not c!1256490)) b!6767063))

(assert (= (and b!6767063 c!1256487) b!6767062))

(assert (= (and b!6767063 (not c!1256487)) b!6767071))

(assert (= (and b!6767071 c!1256491) b!6767070))

(assert (= (and b!6767071 (not c!1256491)) b!6767066))

(assert (= (and b!6767066 c!1256489) b!6767067))

(assert (= (and b!6767066 (not c!1256489)) b!6767069))

(assert (= (or b!6767067 b!6767069) bm!613165))

(assert (= (or b!6767070 bm!613165) bm!613163))

(assert (= (or b!6767062 bm!613163) bm!613166))

(assert (= (or b!6767062 b!6767067) bm!613164))

(assert (=> bm!613164 m!7516714))

(declare-fun m!7518132 () Bool)

(assert (=> bm!613164 m!7518132))

(assert (=> b!6767066 m!7516812))

(assert (=> bm!613166 m!7516714))

(declare-fun m!7518134 () Bool)

(assert (=> bm!613166 m!7518134))

(declare-fun m!7518136 () Bool)

(assert (=> d!2125867 m!7518136))

(assert (=> d!2125867 m!7516632))

(assert (=> b!6765846 d!2125867))

(assert (=> b!6765846 d!2125635))

(assert (=> b!6765846 d!2125637))

(declare-fun b!6767072 () Bool)

(declare-fun e!4085891 () Bool)

(declare-fun call!613173 () Bool)

(assert (=> b!6767072 (= e!4085891 call!613173)))

(declare-fun b!6767073 () Bool)

(declare-fun res!2766849 () Bool)

(declare-fun e!4085894 () Bool)

(assert (=> b!6767073 (=> res!2766849 e!4085894)))

(assert (=> b!6767073 (= res!2766849 (not ((_ is Concat!25436) (ite c!1256105 (regTwo!33695 r!7292) (regTwo!33694 r!7292)))))))

(declare-fun e!4085896 () Bool)

(assert (=> b!6767073 (= e!4085896 e!4085894)))

(declare-fun bm!613167 () Bool)

(declare-fun c!1256492 () Bool)

(declare-fun c!1256493 () Bool)

(assert (=> bm!613167 (= call!613173 (validRegex!8327 (ite c!1256492 (reg!16920 (ite c!1256105 (regTwo!33695 r!7292) (regTwo!33694 r!7292))) (ite c!1256493 (regOne!33695 (ite c!1256105 (regTwo!33695 r!7292) (regTwo!33694 r!7292))) (regOne!33694 (ite c!1256105 (regTwo!33695 r!7292) (regTwo!33694 r!7292)))))))))

(declare-fun b!6767074 () Bool)

(declare-fun res!2766845 () Bool)

(declare-fun e!4085895 () Bool)

(assert (=> b!6767074 (=> (not res!2766845) (not e!4085895))))

(declare-fun call!613172 () Bool)

(assert (=> b!6767074 (= res!2766845 call!613172)))

(assert (=> b!6767074 (= e!4085896 e!4085895)))

(declare-fun d!2125869 () Bool)

(declare-fun res!2766847 () Bool)

(declare-fun e!4085893 () Bool)

(assert (=> d!2125869 (=> res!2766847 e!4085893)))

(assert (=> d!2125869 (= res!2766847 ((_ is ElementMatch!16591) (ite c!1256105 (regTwo!33695 r!7292) (regTwo!33694 r!7292))))))

(assert (=> d!2125869 (= (validRegex!8327 (ite c!1256105 (regTwo!33695 r!7292) (regTwo!33694 r!7292))) e!4085893)))

(declare-fun b!6767075 () Bool)

(declare-fun e!4085892 () Bool)

(assert (=> b!6767075 (= e!4085892 e!4085896)))

(assert (=> b!6767075 (= c!1256493 ((_ is Union!16591) (ite c!1256105 (regTwo!33695 r!7292) (regTwo!33694 r!7292))))))

(declare-fun b!6767076 () Bool)

(declare-fun e!4085890 () Bool)

(declare-fun call!613174 () Bool)

(assert (=> b!6767076 (= e!4085890 call!613174)))

(declare-fun b!6767077 () Bool)

(assert (=> b!6767077 (= e!4085892 e!4085891)))

(declare-fun res!2766848 () Bool)

(assert (=> b!6767077 (= res!2766848 (not (nullable!6574 (reg!16920 (ite c!1256105 (regTwo!33695 r!7292) (regTwo!33694 r!7292))))))))

(assert (=> b!6767077 (=> (not res!2766848) (not e!4085891))))

(declare-fun b!6767078 () Bool)

(assert (=> b!6767078 (= e!4085895 call!613174)))

(declare-fun bm!613168 () Bool)

(assert (=> bm!613168 (= call!613174 (validRegex!8327 (ite c!1256493 (regTwo!33695 (ite c!1256105 (regTwo!33695 r!7292) (regTwo!33694 r!7292))) (regTwo!33694 (ite c!1256105 (regTwo!33695 r!7292) (regTwo!33694 r!7292))))))))

(declare-fun b!6767079 () Bool)

(assert (=> b!6767079 (= e!4085894 e!4085890)))

(declare-fun res!2766846 () Bool)

(assert (=> b!6767079 (=> (not res!2766846) (not e!4085890))))

(assert (=> b!6767079 (= res!2766846 call!613172)))

(declare-fun bm!613169 () Bool)

(assert (=> bm!613169 (= call!613172 call!613173)))

(declare-fun b!6767080 () Bool)

(assert (=> b!6767080 (= e!4085893 e!4085892)))

(assert (=> b!6767080 (= c!1256492 ((_ is Star!16591) (ite c!1256105 (regTwo!33695 r!7292) (regTwo!33694 r!7292))))))

(assert (= (and d!2125869 (not res!2766847)) b!6767080))

(assert (= (and b!6767080 c!1256492) b!6767077))

(assert (= (and b!6767080 (not c!1256492)) b!6767075))

(assert (= (and b!6767077 res!2766848) b!6767072))

(assert (= (and b!6767075 c!1256493) b!6767074))

(assert (= (and b!6767075 (not c!1256493)) b!6767073))

(assert (= (and b!6767074 res!2766845) b!6767078))

(assert (= (and b!6767073 (not res!2766849)) b!6767079))

(assert (= (and b!6767079 res!2766846) b!6767076))

(assert (= (or b!6767078 b!6767076) bm!613168))

(assert (= (or b!6767074 b!6767079) bm!613169))

(assert (= (or b!6767072 bm!613169) bm!613167))

(declare-fun m!7518158 () Bool)

(assert (=> bm!613167 m!7518158))

(declare-fun m!7518160 () Bool)

(assert (=> b!6767077 m!7518160))

(declare-fun m!7518162 () Bool)

(assert (=> bm!613168 m!7518162))

(assert (=> bm!612967 d!2125869))

(declare-fun d!2125873 () Bool)

(assert (=> d!2125873 (= (flatMap!2072 z!1189 lambda!380552) (choose!50416 z!1189 lambda!380552))))

(declare-fun bs!1800957 () Bool)

(assert (= bs!1800957 d!2125873))

(declare-fun m!7518164 () Bool)

(assert (=> bs!1800957 m!7518164))

(assert (=> d!2125307 d!2125873))

(declare-fun d!2125875 () Bool)

(assert (=> d!2125875 (= (isUnion!1391 lt!2442747) ((_ is Union!16591) lt!2442747))))

(assert (=> b!6766147 d!2125875))

(declare-fun d!2125877 () Bool)

(assert (=> d!2125877 (= (nullable!6574 (h!72396 (exprs!6475 lt!2442623))) (nullableFct!2480 (h!72396 (exprs!6475 lt!2442623))))))

(declare-fun bs!1800965 () Bool)

(assert (= bs!1800965 d!2125877))

(declare-fun m!7518170 () Bool)

(assert (=> bs!1800965 m!7518170))

(assert (=> b!6766203 d!2125877))

(assert (=> bm!612939 d!2125713))

(assert (=> bm!612996 d!2125397))

(assert (=> b!6765413 d!2125855))

(declare-fun bs!1800966 () Bool)

(declare-fun d!2125881 () Bool)

(assert (= bs!1800966 (and d!2125881 d!2125431)))

(declare-fun lambda!380671 () Int)

(assert (=> bs!1800966 (= lambda!380671 lambda!380601)))

(declare-fun bs!1800967 () Bool)

(assert (= bs!1800967 (and d!2125881 d!2125525)))

(assert (=> bs!1800967 (= lambda!380671 lambda!380614)))

(declare-fun bs!1800968 () Bool)

(assert (= bs!1800968 (and d!2125881 d!2125575)))

(assert (=> bs!1800968 (= lambda!380671 lambda!380619)))

(declare-fun bs!1800969 () Bool)

(assert (= bs!1800969 (and d!2125881 d!2125361)))

(assert (=> bs!1800969 (= lambda!380671 lambda!380574)))

(declare-fun bs!1800970 () Bool)

(assert (= bs!1800970 (and d!2125881 d!2125433)))

(assert (=> bs!1800970 (= lambda!380671 lambda!380604)))

(declare-fun bs!1800971 () Bool)

(assert (= bs!1800971 (and d!2125881 d!2125649)))

(assert (=> bs!1800971 (= lambda!380671 lambda!380641)))

(declare-fun bs!1800972 () Bool)

(assert (= bs!1800972 (and d!2125881 d!2125577)))

(assert (=> bs!1800972 (= lambda!380671 lambda!380622)))

(declare-fun bs!1800973 () Bool)

(assert (= bs!1800973 (and d!2125881 d!2125459)))

(assert (=> bs!1800973 (= lambda!380671 lambda!380607)))

(declare-fun bs!1800974 () Bool)

(assert (= bs!1800974 (and d!2125881 d!2125725)))

(assert (=> bs!1800974 (= lambda!380671 lambda!380647)))

(declare-fun bs!1800975 () Bool)

(assert (= bs!1800975 (and d!2125881 d!2125313)))

(assert (=> bs!1800975 (= lambda!380671 lambda!380553)))

(declare-fun bs!1800976 () Bool)

(assert (= bs!1800976 (and d!2125881 d!2125839)))

(assert (=> bs!1800976 (= lambda!380671 lambda!380667)))

(declare-fun bs!1800977 () Bool)

(assert (= bs!1800977 (and d!2125881 d!2125645)))

(assert (=> bs!1800977 (= lambda!380671 lambda!380640)))

(declare-fun bs!1800978 () Bool)

(assert (= bs!1800978 (and d!2125881 d!2125239)))

(assert (=> bs!1800978 (= lambda!380671 lambda!380526)))

(assert (=> d!2125881 (= (inv!84724 setElem!46251) (forall!15787 (exprs!6475 setElem!46251) lambda!380671))))

(declare-fun bs!1800979 () Bool)

(assert (= bs!1800979 d!2125881))

(declare-fun m!7518174 () Bool)

(assert (=> bs!1800979 m!7518174))

(assert (=> setNonEmpty!46251 d!2125881))

(declare-fun c!1256503 () Bool)

(declare-fun bm!613176 () Bool)

(declare-fun call!613183 () (InoxSet Context!11950))

(declare-fun c!1256500 () Bool)

(declare-fun c!1256504 () Bool)

(declare-fun call!613184 () List!66072)

(assert (=> bm!613176 (= call!613183 (derivationStepZipperDown!1819 (ite c!1256504 (regTwo!33695 (h!72396 (exprs!6475 lt!2442623))) (ite c!1256500 (regTwo!33694 (h!72396 (exprs!6475 lt!2442623))) (ite c!1256503 (regOne!33694 (h!72396 (exprs!6475 lt!2442623))) (reg!16920 (h!72396 (exprs!6475 lt!2442623)))))) (ite (or c!1256504 c!1256500) (Context!11951 (t!379779 (exprs!6475 lt!2442623))) (Context!11951 call!613184)) (h!72398 s!2326)))))

(declare-fun bm!613177 () Bool)

(declare-fun call!613182 () List!66072)

(assert (=> bm!613177 (= call!613184 call!613182)))

(declare-fun bm!613178 () Bool)

(declare-fun call!613186 () (InoxSet Context!11950))

(assert (=> bm!613178 (= call!613186 call!613183)))

(declare-fun bm!613180 () Bool)

(declare-fun call!613185 () (InoxSet Context!11950))

(assert (=> bm!613180 (= call!613185 (derivationStepZipperDown!1819 (ite c!1256504 (regOne!33695 (h!72396 (exprs!6475 lt!2442623))) (regOne!33694 (h!72396 (exprs!6475 lt!2442623)))) (ite c!1256504 (Context!11951 (t!379779 (exprs!6475 lt!2442623))) (Context!11951 call!613182)) (h!72398 s!2326)))))

(declare-fun b!6767094 () Bool)

(declare-fun e!4085905 () (InoxSet Context!11950))

(declare-fun call!613181 () (InoxSet Context!11950))

(assert (=> b!6767094 (= e!4085905 call!613181)))

(declare-fun b!6767095 () Bool)

(declare-fun e!4085908 () (InoxSet Context!11950))

(assert (=> b!6767095 (= e!4085908 (store ((as const (Array Context!11950 Bool)) false) (Context!11951 (t!379779 (exprs!6475 lt!2442623))) true))))

(declare-fun b!6767096 () Bool)

(declare-fun e!4085909 () (InoxSet Context!11950))

(assert (=> b!6767096 (= e!4085909 ((_ map or) call!613185 call!613186))))

(declare-fun b!6767097 () Bool)

(declare-fun e!4085907 () Bool)

(assert (=> b!6767097 (= c!1256500 e!4085907)))

(declare-fun res!2766851 () Bool)

(assert (=> b!6767097 (=> (not res!2766851) (not e!4085907))))

(assert (=> b!6767097 (= res!2766851 ((_ is Concat!25436) (h!72396 (exprs!6475 lt!2442623))))))

(declare-fun e!4085904 () (InoxSet Context!11950))

(assert (=> b!6767097 (= e!4085904 e!4085909)))

(declare-fun b!6767098 () Bool)

(declare-fun e!4085906 () (InoxSet Context!11950))

(assert (=> b!6767098 (= e!4085909 e!4085906)))

(assert (=> b!6767098 (= c!1256503 ((_ is Concat!25436) (h!72396 (exprs!6475 lt!2442623))))))

(declare-fun bm!613181 () Bool)

(assert (=> bm!613181 (= call!613181 call!613186)))

(declare-fun b!6767099 () Bool)

(declare-fun c!1256501 () Bool)

(assert (=> b!6767099 (= c!1256501 ((_ is Star!16591) (h!72396 (exprs!6475 lt!2442623))))))

(assert (=> b!6767099 (= e!4085906 e!4085905)))

(declare-fun b!6767100 () Bool)

(assert (=> b!6767100 (= e!4085907 (nullable!6574 (regOne!33694 (h!72396 (exprs!6475 lt!2442623)))))))

(declare-fun b!6767101 () Bool)

(assert (=> b!6767101 (= e!4085904 ((_ map or) call!613185 call!613183))))

(declare-fun b!6767102 () Bool)

(assert (=> b!6767102 (= e!4085906 call!613181)))

(declare-fun d!2125883 () Bool)

(declare-fun c!1256502 () Bool)

(assert (=> d!2125883 (= c!1256502 (and ((_ is ElementMatch!16591) (h!72396 (exprs!6475 lt!2442623))) (= (c!1256003 (h!72396 (exprs!6475 lt!2442623))) (h!72398 s!2326))))))

(assert (=> d!2125883 (= (derivationStepZipperDown!1819 (h!72396 (exprs!6475 lt!2442623)) (Context!11951 (t!379779 (exprs!6475 lt!2442623))) (h!72398 s!2326)) e!4085908)))

(declare-fun bm!613179 () Bool)

(assert (=> bm!613179 (= call!613182 ($colon$colon!2404 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442623)))) (ite (or c!1256500 c!1256503) (regTwo!33694 (h!72396 (exprs!6475 lt!2442623))) (h!72396 (exprs!6475 lt!2442623)))))))

(declare-fun b!6767103 () Bool)

(assert (=> b!6767103 (= e!4085908 e!4085904)))

(assert (=> b!6767103 (= c!1256504 ((_ is Union!16591) (h!72396 (exprs!6475 lt!2442623))))))

(declare-fun b!6767104 () Bool)

(assert (=> b!6767104 (= e!4085905 ((as const (Array Context!11950 Bool)) false))))

(assert (= (and d!2125883 c!1256502) b!6767095))

(assert (= (and d!2125883 (not c!1256502)) b!6767103))

(assert (= (and b!6767103 c!1256504) b!6767101))

(assert (= (and b!6767103 (not c!1256504)) b!6767097))

(assert (= (and b!6767097 res!2766851) b!6767100))

(assert (= (and b!6767097 c!1256500) b!6767096))

(assert (= (and b!6767097 (not c!1256500)) b!6767098))

(assert (= (and b!6767098 c!1256503) b!6767102))

(assert (= (and b!6767098 (not c!1256503)) b!6767099))

(assert (= (and b!6767099 c!1256501) b!6767094))

(assert (= (and b!6767099 (not c!1256501)) b!6767104))

(assert (= (or b!6767102 b!6767094) bm!613177))

(assert (= (or b!6767102 b!6767094) bm!613181))

(assert (= (or b!6767096 bm!613177) bm!613179))

(assert (= (or b!6767096 bm!613181) bm!613178))

(assert (= (or b!6767101 bm!613178) bm!613176))

(assert (= (or b!6767101 b!6767096) bm!613180))

(declare-fun m!7518188 () Bool)

(assert (=> bm!613179 m!7518188))

(declare-fun m!7518190 () Bool)

(assert (=> bm!613180 m!7518190))

(declare-fun m!7518192 () Bool)

(assert (=> b!6767095 m!7518192))

(declare-fun m!7518194 () Bool)

(assert (=> bm!613176 m!7518194))

(declare-fun m!7518196 () Bool)

(assert (=> b!6767100 m!7518196))

(assert (=> bm!613004 d!2125883))

(declare-fun bs!1800981 () Bool)

(declare-fun d!2125893 () Bool)

(assert (= bs!1800981 (and d!2125893 d!2125729)))

(declare-fun lambda!380672 () Int)

(assert (=> bs!1800981 (= lambda!380672 lambda!380651)))

(declare-fun bs!1800982 () Bool)

(assert (= bs!1800982 (and d!2125893 d!2125841)))

(assert (=> bs!1800982 (= lambda!380672 lambda!380668)))

(assert (=> d!2125893 (= (nullableZipper!2301 lt!2442622) (exists!2715 lt!2442622 lambda!380672))))

(declare-fun bs!1800983 () Bool)

(assert (= bs!1800983 d!2125893))

(declare-fun m!7518198 () Bool)

(assert (=> bs!1800983 m!7518198))

(assert (=> b!6765609 d!2125893))

(declare-fun d!2125895 () Bool)

(assert (=> d!2125895 (= (flatMap!2072 lt!2442638 lambda!380540) (choose!50416 lt!2442638 lambda!380540))))

(declare-fun bs!1800984 () Bool)

(assert (= bs!1800984 d!2125895))

(declare-fun m!7518204 () Bool)

(assert (=> bs!1800984 m!7518204))

(assert (=> d!2125253 d!2125895))

(assert (=> d!2125355 d!2125349))

(assert (=> d!2125355 d!2125337))

(declare-fun d!2125897 () Bool)

(assert (=> d!2125897 (= (matchR!8774 r!7292 s!2326) (matchRSpec!3692 r!7292 s!2326))))

(assert (=> d!2125897 true))

(declare-fun _$88!5540 () Unit!159873)

(assert (=> d!2125897 (= (choose!50421 r!7292 s!2326) _$88!5540)))

(declare-fun bs!1800985 () Bool)

(assert (= bs!1800985 d!2125897))

(assert (=> bs!1800985 m!7516562))

(assert (=> bs!1800985 m!7516560))

(assert (=> d!2125355 d!2125897))

(assert (=> d!2125355 d!2125335))

(declare-fun d!2125903 () Bool)

(assert (=> d!2125903 (= (nullable!6574 (h!72396 (exprs!6475 (h!72397 zl!343)))) (nullableFct!2480 (h!72396 (exprs!6475 (h!72397 zl!343)))))))

(declare-fun bs!1800986 () Bool)

(assert (= bs!1800986 d!2125903))

(declare-fun m!7518222 () Bool)

(assert (=> bs!1800986 m!7518222))

(assert (=> b!6766184 d!2125903))

(declare-fun d!2125905 () Bool)

(assert (=> d!2125905 (= (flatMap!2072 lt!2442640 lambda!380542) (choose!50416 lt!2442640 lambda!380542))))

(declare-fun bs!1800987 () Bool)

(assert (= bs!1800987 d!2125905))

(declare-fun m!7518224 () Bool)

(assert (=> bs!1800987 m!7518224))

(assert (=> d!2125271 d!2125905))

(assert (=> bm!612987 d!2125397))

(declare-fun d!2125909 () Bool)

(declare-fun c!1256518 () Bool)

(assert (=> d!2125909 (= c!1256518 ((_ is Nil!65949) lt!2442757))))

(declare-fun e!4085927 () (InoxSet Context!11950))

(assert (=> d!2125909 (= (content!12837 lt!2442757) e!4085927)))

(declare-fun b!6767135 () Bool)

(assert (=> b!6767135 (= e!4085927 ((as const (Array Context!11950 Bool)) false))))

(declare-fun b!6767136 () Bool)

(assert (=> b!6767136 (= e!4085927 ((_ map or) (store ((as const (Array Context!11950 Bool)) false) (h!72397 lt!2442757) true) (content!12837 (t!379780 lt!2442757))))))

(assert (= (and d!2125909 c!1256518) b!6767135))

(assert (= (and d!2125909 (not c!1256518)) b!6767136))

(declare-fun m!7518240 () Bool)

(assert (=> b!6767136 m!7518240))

(declare-fun m!7518242 () Bool)

(assert (=> b!6767136 m!7518242))

(assert (=> b!6766187 d!2125909))

(declare-fun d!2125923 () Bool)

(assert (=> d!2125923 (= (isEmpty!38309 (t!379779 (unfocusZipperList!2012 zl!343))) ((_ is Nil!65948) (t!379779 (unfocusZipperList!2012 zl!343))))))

(assert (=> b!6766139 d!2125923))

(assert (=> bs!1800517 d!2125245))

(declare-fun call!613199 () (InoxSet Context!11950))

(declare-fun b!6767137 () Bool)

(declare-fun e!4085930 () (InoxSet Context!11950))

(assert (=> b!6767137 (= e!4085930 ((_ map or) call!613199 (derivationStepZipperUp!1745 (Context!11951 (t!379779 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948)))))))) (h!72398 s!2326))))))

(declare-fun bm!613194 () Bool)

(assert (=> bm!613194 (= call!613199 (derivationStepZipperDown!1819 (h!72396 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))))) (Context!11951 (t!379779 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948)))))))) (h!72398 s!2326)))))

(declare-fun b!6767138 () Bool)

(declare-fun e!4085928 () (InoxSet Context!11950))

(assert (=> b!6767138 (= e!4085928 ((as const (Array Context!11950 Bool)) false))))

(declare-fun b!6767139 () Bool)

(assert (=> b!6767139 (= e!4085928 call!613199)))

(declare-fun b!6767140 () Bool)

(assert (=> b!6767140 (= e!4085930 e!4085928)))

(declare-fun c!1256520 () Bool)

(assert (=> b!6767140 (= c!1256520 ((_ is Cons!65948) (exprs!6475 (Context!11951 (t!379779 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))))))))

(declare-fun b!6767141 () Bool)

(declare-fun e!4085929 () Bool)

(assert (=> b!6767141 (= e!4085929 (nullable!6574 (h!72396 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948)))))))))))

(declare-fun d!2125927 () Bool)

(declare-fun c!1256519 () Bool)

(assert (=> d!2125927 (= c!1256519 e!4085929)))

(declare-fun res!2766856 () Bool)

(assert (=> d!2125927 (=> (not res!2766856) (not e!4085929))))

(assert (=> d!2125927 (= res!2766856 ((_ is Cons!65948) (exprs!6475 (Context!11951 (t!379779 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))))))))

(assert (=> d!2125927 (= (derivationStepZipperUp!1745 (Context!11951 (t!379779 (exprs!6475 (Context!11951 (Cons!65948 r!7292 Nil!65948))))) (h!72398 s!2326)) e!4085930)))

(assert (= (and d!2125927 res!2766856) b!6767141))

(assert (= (and d!2125927 c!1256519) b!6767137))

(assert (= (and d!2125927 (not c!1256519)) b!6767140))

(assert (= (and b!6767140 c!1256520) b!6767139))

(assert (= (and b!6767140 (not c!1256520)) b!6767138))

(assert (= (or b!6767137 b!6767139) bm!613194))

(declare-fun m!7518246 () Bool)

(assert (=> b!6767137 m!7518246))

(declare-fun m!7518250 () Bool)

(assert (=> bm!613194 m!7518250))

(declare-fun m!7518252 () Bool)

(assert (=> b!6767141 m!7518252))

(assert (=> b!6765557 d!2125927))

(declare-fun b!6767144 () Bool)

(declare-fun e!4085934 () Bool)

(assert (=> b!6767144 (= e!4085934 (nullable!6574 (derivativeStep!5258 lt!2442635 (head!13599 s!2326))))))

(declare-fun b!6767145 () Bool)

(declare-fun e!4085935 () Bool)

(declare-fun e!4085936 () Bool)

(assert (=> b!6767145 (= e!4085935 e!4085936)))

(declare-fun c!1256522 () Bool)

(assert (=> b!6767145 (= c!1256522 ((_ is EmptyLang!16591) (derivativeStep!5258 lt!2442635 (head!13599 s!2326))))))

(declare-fun b!6767146 () Bool)

(assert (=> b!6767146 (= e!4085934 (matchR!8774 (derivativeStep!5258 (derivativeStep!5258 lt!2442635 (head!13599 s!2326)) (head!13599 (tail!12684 s!2326))) (tail!12684 (tail!12684 s!2326))))))

(declare-fun b!6767147 () Bool)

(declare-fun e!4085938 () Bool)

(assert (=> b!6767147 (= e!4085938 (= (head!13599 (tail!12684 s!2326)) (c!1256003 (derivativeStep!5258 lt!2442635 (head!13599 s!2326)))))))

(declare-fun b!6767149 () Bool)

(declare-fun res!2766861 () Bool)

(declare-fun e!4085932 () Bool)

(assert (=> b!6767149 (=> res!2766861 e!4085932)))

(assert (=> b!6767149 (= res!2766861 (not (isEmpty!38306 (tail!12684 (tail!12684 s!2326)))))))

(declare-fun b!6767150 () Bool)

(declare-fun e!4085937 () Bool)

(assert (=> b!6767150 (= e!4085937 e!4085932)))

(declare-fun res!2766857 () Bool)

(assert (=> b!6767150 (=> res!2766857 e!4085932)))

(declare-fun call!613200 () Bool)

(assert (=> b!6767150 (= res!2766857 call!613200)))

(declare-fun b!6767151 () Bool)

(assert (=> b!6767151 (= e!4085932 (not (= (head!13599 (tail!12684 s!2326)) (c!1256003 (derivativeStep!5258 lt!2442635 (head!13599 s!2326))))))))

(declare-fun b!6767152 () Bool)

(declare-fun res!2766864 () Bool)

(declare-fun e!4085933 () Bool)

(assert (=> b!6767152 (=> res!2766864 e!4085933)))

(assert (=> b!6767152 (= res!2766864 e!4085938)))

(declare-fun res!2766862 () Bool)

(assert (=> b!6767152 (=> (not res!2766862) (not e!4085938))))

(declare-fun lt!2442805 () Bool)

(assert (=> b!6767152 (= res!2766862 lt!2442805)))

(declare-fun b!6767153 () Bool)

(declare-fun res!2766859 () Bool)

(assert (=> b!6767153 (=> (not res!2766859) (not e!4085938))))

(assert (=> b!6767153 (= res!2766859 (not call!613200))))

(declare-fun b!6767148 () Bool)

(assert (=> b!6767148 (= e!4085933 e!4085937)))

(declare-fun res!2766858 () Bool)

(assert (=> b!6767148 (=> (not res!2766858) (not e!4085937))))

(assert (=> b!6767148 (= res!2766858 (not lt!2442805))))

(declare-fun d!2125931 () Bool)

(assert (=> d!2125931 e!4085935))

(declare-fun c!1256524 () Bool)

(assert (=> d!2125931 (= c!1256524 ((_ is EmptyExpr!16591) (derivativeStep!5258 lt!2442635 (head!13599 s!2326))))))

(assert (=> d!2125931 (= lt!2442805 e!4085934)))

(declare-fun c!1256523 () Bool)

(assert (=> d!2125931 (= c!1256523 (isEmpty!38306 (tail!12684 s!2326)))))

(assert (=> d!2125931 (validRegex!8327 (derivativeStep!5258 lt!2442635 (head!13599 s!2326)))))

(assert (=> d!2125931 (= (matchR!8774 (derivativeStep!5258 lt!2442635 (head!13599 s!2326)) (tail!12684 s!2326)) lt!2442805)))

(declare-fun bm!613195 () Bool)

(assert (=> bm!613195 (= call!613200 (isEmpty!38306 (tail!12684 s!2326)))))

(declare-fun b!6767154 () Bool)

(declare-fun res!2766863 () Bool)

(assert (=> b!6767154 (=> res!2766863 e!4085933)))

(assert (=> b!6767154 (= res!2766863 (not ((_ is ElementMatch!16591) (derivativeStep!5258 lt!2442635 (head!13599 s!2326)))))))

(assert (=> b!6767154 (= e!4085936 e!4085933)))

(declare-fun b!6767155 () Bool)

(assert (=> b!6767155 (= e!4085935 (= lt!2442805 call!613200))))

(declare-fun b!6767156 () Bool)

(declare-fun res!2766860 () Bool)

(assert (=> b!6767156 (=> (not res!2766860) (not e!4085938))))

(assert (=> b!6767156 (= res!2766860 (isEmpty!38306 (tail!12684 (tail!12684 s!2326))))))

(declare-fun b!6767157 () Bool)

(assert (=> b!6767157 (= e!4085936 (not lt!2442805))))

(assert (= (and d!2125931 c!1256523) b!6767144))

(assert (= (and d!2125931 (not c!1256523)) b!6767146))

(assert (= (and d!2125931 c!1256524) b!6767155))

(assert (= (and d!2125931 (not c!1256524)) b!6767145))

(assert (= (and b!6767145 c!1256522) b!6767157))

(assert (= (and b!6767145 (not c!1256522)) b!6767154))

(assert (= (and b!6767154 (not res!2766863)) b!6767152))

(assert (= (and b!6767152 res!2766862) b!6767153))

(assert (= (and b!6767153 res!2766859) b!6767156))

(assert (= (and b!6767156 res!2766860) b!6767147))

(assert (= (and b!6767152 (not res!2766864)) b!6767148))

(assert (= (and b!6767148 res!2766858) b!6767150))

(assert (= (and b!6767150 (not res!2766857)) b!6767149))

(assert (= (and b!6767149 (not res!2766861)) b!6767151))

(assert (= (or b!6767155 b!6767150 b!6767153) bm!613195))

(assert (=> b!6767146 m!7516718))

(assert (=> b!6767146 m!7517646))

(assert (=> b!6767146 m!7517222))

(assert (=> b!6767146 m!7517646))

(declare-fun m!7518260 () Bool)

(assert (=> b!6767146 m!7518260))

(assert (=> b!6767146 m!7516718))

(assert (=> b!6767146 m!7517650))

(assert (=> b!6767146 m!7518260))

(assert (=> b!6767146 m!7517650))

(declare-fun m!7518264 () Bool)

(assert (=> b!6767146 m!7518264))

(assert (=> d!2125931 m!7516718))

(assert (=> d!2125931 m!7516966))

(assert (=> d!2125931 m!7517222))

(declare-fun m!7518266 () Bool)

(assert (=> d!2125931 m!7518266))

(assert (=> b!6767147 m!7516718))

(assert (=> b!6767147 m!7517646))

(assert (=> bm!613195 m!7516718))

(assert (=> bm!613195 m!7516966))

(assert (=> b!6767151 m!7516718))

(assert (=> b!6767151 m!7517646))

(assert (=> b!6767144 m!7517222))

(declare-fun m!7518268 () Bool)

(assert (=> b!6767144 m!7518268))

(assert (=> b!6767156 m!7516718))

(assert (=> b!6767156 m!7517650))

(assert (=> b!6767156 m!7517650))

(assert (=> b!6767156 m!7518130))

(assert (=> b!6767149 m!7516718))

(assert (=> b!6767149 m!7517650))

(assert (=> b!6767149 m!7517650))

(assert (=> b!6767149 m!7518130))

(assert (=> b!6766168 d!2125931))

(declare-fun b!6767169 () Bool)

(declare-fun e!4085947 () Regex!16591)

(declare-fun call!613210 () Regex!16591)

(declare-fun call!613208 () Regex!16591)

(assert (=> b!6767169 (= e!4085947 (Union!16591 call!613210 call!613208))))

(declare-fun b!6767170 () Bool)

(declare-fun c!1256530 () Bool)

(assert (=> b!6767170 (= c!1256530 ((_ is Union!16591) lt!2442635))))

(declare-fun e!4085948 () Regex!16591)

(assert (=> b!6767170 (= e!4085948 e!4085947)))

(declare-fun b!6767171 () Bool)

(assert (=> b!6767171 (= e!4085948 (ite (= (head!13599 s!2326) (c!1256003 lt!2442635)) EmptyExpr!16591 EmptyLang!16591))))

(declare-fun bm!613203 () Bool)

(assert (=> bm!613203 (= call!613210 (derivativeStep!5258 (ite c!1256530 (regOne!33695 lt!2442635) (regOne!33694 lt!2442635)) (head!13599 s!2326)))))

(declare-fun bm!613204 () Bool)

(declare-fun call!613207 () Regex!16591)

(declare-fun call!613209 () Regex!16591)

(assert (=> bm!613204 (= call!613207 call!613209)))

(declare-fun b!6767172 () Bool)

(declare-fun e!4085946 () Regex!16591)

(assert (=> b!6767172 (= e!4085946 e!4085948)))

(declare-fun c!1256533 () Bool)

(assert (=> b!6767172 (= c!1256533 ((_ is ElementMatch!16591) lt!2442635))))

(declare-fun b!6767173 () Bool)

(declare-fun c!1256532 () Bool)

(assert (=> b!6767173 (= c!1256532 (nullable!6574 (regOne!33694 lt!2442635)))))

(declare-fun e!4085949 () Regex!16591)

(declare-fun e!4085945 () Regex!16591)

(assert (=> b!6767173 (= e!4085949 e!4085945)))

(declare-fun b!6767174 () Bool)

(assert (=> b!6767174 (= e!4085945 (Union!16591 (Concat!25436 call!613210 (regTwo!33694 lt!2442635)) call!613207))))

(declare-fun c!1256534 () Bool)

(declare-fun bm!613205 () Bool)

(assert (=> bm!613205 (= call!613208 (derivativeStep!5258 (ite c!1256530 (regTwo!33695 lt!2442635) (ite c!1256534 (reg!16920 lt!2442635) (ite c!1256532 (regTwo!33694 lt!2442635) (regOne!33694 lt!2442635)))) (head!13599 s!2326)))))

(declare-fun d!2125937 () Bool)

(declare-fun lt!2442806 () Regex!16591)

(assert (=> d!2125937 (validRegex!8327 lt!2442806)))

(assert (=> d!2125937 (= lt!2442806 e!4085946)))

(declare-fun c!1256531 () Bool)

(assert (=> d!2125937 (= c!1256531 (or ((_ is EmptyExpr!16591) lt!2442635) ((_ is EmptyLang!16591) lt!2442635)))))

(assert (=> d!2125937 (validRegex!8327 lt!2442635)))

(assert (=> d!2125937 (= (derivativeStep!5258 lt!2442635 (head!13599 s!2326)) lt!2442806)))

(declare-fun bm!613202 () Bool)

(assert (=> bm!613202 (= call!613209 call!613208)))

(declare-fun b!6767175 () Bool)

(assert (=> b!6767175 (= e!4085946 EmptyLang!16591)))

(declare-fun b!6767176 () Bool)

(assert (=> b!6767176 (= e!4085945 (Union!16591 (Concat!25436 call!613207 (regTwo!33694 lt!2442635)) EmptyLang!16591))))

(declare-fun b!6767177 () Bool)

(assert (=> b!6767177 (= e!4085949 (Concat!25436 call!613209 lt!2442635))))

(declare-fun b!6767178 () Bool)

(assert (=> b!6767178 (= e!4085947 e!4085949)))

(assert (=> b!6767178 (= c!1256534 ((_ is Star!16591) lt!2442635))))

(assert (= (and d!2125937 c!1256531) b!6767175))

(assert (= (and d!2125937 (not c!1256531)) b!6767172))

(assert (= (and b!6767172 c!1256533) b!6767171))

(assert (= (and b!6767172 (not c!1256533)) b!6767170))

(assert (= (and b!6767170 c!1256530) b!6767169))

(assert (= (and b!6767170 (not c!1256530)) b!6767178))

(assert (= (and b!6767178 c!1256534) b!6767177))

(assert (= (and b!6767178 (not c!1256534)) b!6767173))

(assert (= (and b!6767173 c!1256532) b!6767174))

(assert (= (and b!6767173 (not c!1256532)) b!6767176))

(assert (= (or b!6767174 b!6767176) bm!613204))

(assert (= (or b!6767177 bm!613204) bm!613202))

(assert (= (or b!6767169 bm!613202) bm!613205))

(assert (= (or b!6767169 b!6767174) bm!613203))

(assert (=> bm!613203 m!7516714))

(declare-fun m!7518270 () Bool)

(assert (=> bm!613203 m!7518270))

(declare-fun m!7518272 () Bool)

(assert (=> b!6767173 m!7518272))

(assert (=> bm!613205 m!7516714))

(declare-fun m!7518278 () Bool)

(assert (=> bm!613205 m!7518278))

(declare-fun m!7518280 () Bool)

(assert (=> d!2125937 m!7518280))

(assert (=> d!2125937 m!7517226))

(assert (=> b!6766168 d!2125937))

(assert (=> b!6766168 d!2125635))

(assert (=> b!6766168 d!2125637))

(declare-fun b!6767179 () Bool)

(declare-fun e!4085951 () Bool)

(declare-fun call!613212 () Bool)

(assert (=> b!6767179 (= e!4085951 call!613212)))

(declare-fun b!6767180 () Bool)

(declare-fun res!2766870 () Bool)

(declare-fun e!4085954 () Bool)

(assert (=> b!6767180 (=> res!2766870 e!4085954)))

(assert (=> b!6767180 (= res!2766870 (not ((_ is Concat!25436) lt!2442743)))))

(declare-fun e!4085956 () Bool)

(assert (=> b!6767180 (= e!4085956 e!4085954)))

(declare-fun bm!613206 () Bool)

(declare-fun c!1256535 () Bool)

(declare-fun c!1256536 () Bool)

(assert (=> bm!613206 (= call!613212 (validRegex!8327 (ite c!1256535 (reg!16920 lt!2442743) (ite c!1256536 (regOne!33695 lt!2442743) (regOne!33694 lt!2442743)))))))

(declare-fun b!6767181 () Bool)

(declare-fun res!2766866 () Bool)

(declare-fun e!4085955 () Bool)

(assert (=> b!6767181 (=> (not res!2766866) (not e!4085955))))

(declare-fun call!613211 () Bool)

(assert (=> b!6767181 (= res!2766866 call!613211)))

(assert (=> b!6767181 (= e!4085956 e!4085955)))

(declare-fun d!2125939 () Bool)

(declare-fun res!2766868 () Bool)

(declare-fun e!4085953 () Bool)

(assert (=> d!2125939 (=> res!2766868 e!4085953)))

(assert (=> d!2125939 (= res!2766868 ((_ is ElementMatch!16591) lt!2442743))))

(assert (=> d!2125939 (= (validRegex!8327 lt!2442743) e!4085953)))

(declare-fun b!6767182 () Bool)

(declare-fun e!4085952 () Bool)

(assert (=> b!6767182 (= e!4085952 e!4085956)))

(assert (=> b!6767182 (= c!1256536 ((_ is Union!16591) lt!2442743))))

(declare-fun b!6767183 () Bool)

(declare-fun e!4085950 () Bool)

(declare-fun call!613213 () Bool)

(assert (=> b!6767183 (= e!4085950 call!613213)))

(declare-fun b!6767184 () Bool)

(assert (=> b!6767184 (= e!4085952 e!4085951)))

(declare-fun res!2766869 () Bool)

(assert (=> b!6767184 (= res!2766869 (not (nullable!6574 (reg!16920 lt!2442743))))))

(assert (=> b!6767184 (=> (not res!2766869) (not e!4085951))))

(declare-fun b!6767185 () Bool)

(assert (=> b!6767185 (= e!4085955 call!613213)))

(declare-fun bm!613207 () Bool)

(assert (=> bm!613207 (= call!613213 (validRegex!8327 (ite c!1256536 (regTwo!33695 lt!2442743) (regTwo!33694 lt!2442743))))))

(declare-fun b!6767186 () Bool)

(assert (=> b!6767186 (= e!4085954 e!4085950)))

(declare-fun res!2766867 () Bool)

(assert (=> b!6767186 (=> (not res!2766867) (not e!4085950))))

(assert (=> b!6767186 (= res!2766867 call!613211)))

(declare-fun bm!613208 () Bool)

(assert (=> bm!613208 (= call!613211 call!613212)))

(declare-fun b!6767187 () Bool)

(assert (=> b!6767187 (= e!4085953 e!4085952)))

(assert (=> b!6767187 (= c!1256535 ((_ is Star!16591) lt!2442743))))

(assert (= (and d!2125939 (not res!2766868)) b!6767187))

(assert (= (and b!6767187 c!1256535) b!6767184))

(assert (= (and b!6767187 (not c!1256535)) b!6767182))

(assert (= (and b!6767184 res!2766869) b!6767179))

(assert (= (and b!6767182 c!1256536) b!6767181))

(assert (= (and b!6767182 (not c!1256536)) b!6767180))

(assert (= (and b!6767181 res!2766866) b!6767185))

(assert (= (and b!6767180 (not res!2766870)) b!6767186))

(assert (= (and b!6767186 res!2766867) b!6767183))

(assert (= (or b!6767185 b!6767183) bm!613207))

(assert (= (or b!6767181 b!6767186) bm!613208))

(assert (= (or b!6767179 bm!613208) bm!613206))

(declare-fun m!7518288 () Bool)

(assert (=> bm!613206 m!7518288))

(declare-fun m!7518290 () Bool)

(assert (=> b!6767184 m!7518290))

(declare-fun m!7518292 () Bool)

(assert (=> bm!613207 m!7518292))

(assert (=> d!2125427 d!2125939))

(declare-fun bs!1801003 () Bool)

(declare-fun d!2125945 () Bool)

(assert (= bs!1801003 (and d!2125945 d!2125431)))

(declare-fun lambda!380675 () Int)

(assert (=> bs!1801003 (= lambda!380675 lambda!380601)))

(declare-fun bs!1801004 () Bool)

(assert (= bs!1801004 (and d!2125945 d!2125525)))

(assert (=> bs!1801004 (= lambda!380675 lambda!380614)))

(declare-fun bs!1801005 () Bool)

(assert (= bs!1801005 (and d!2125945 d!2125575)))

(assert (=> bs!1801005 (= lambda!380675 lambda!380619)))

(declare-fun bs!1801006 () Bool)

(assert (= bs!1801006 (and d!2125945 d!2125361)))

(assert (=> bs!1801006 (= lambda!380675 lambda!380574)))

(declare-fun bs!1801007 () Bool)

(assert (= bs!1801007 (and d!2125945 d!2125881)))

(assert (=> bs!1801007 (= lambda!380675 lambda!380671)))

(declare-fun bs!1801008 () Bool)

(assert (= bs!1801008 (and d!2125945 d!2125433)))

(assert (=> bs!1801008 (= lambda!380675 lambda!380604)))

(declare-fun bs!1801009 () Bool)

(assert (= bs!1801009 (and d!2125945 d!2125649)))

(assert (=> bs!1801009 (= lambda!380675 lambda!380641)))

(declare-fun bs!1801010 () Bool)

(assert (= bs!1801010 (and d!2125945 d!2125577)))

(assert (=> bs!1801010 (= lambda!380675 lambda!380622)))

(declare-fun bs!1801011 () Bool)

(assert (= bs!1801011 (and d!2125945 d!2125459)))

(assert (=> bs!1801011 (= lambda!380675 lambda!380607)))

(declare-fun bs!1801013 () Bool)

(assert (= bs!1801013 (and d!2125945 d!2125725)))

(assert (=> bs!1801013 (= lambda!380675 lambda!380647)))

(declare-fun bs!1801015 () Bool)

(assert (= bs!1801015 (and d!2125945 d!2125313)))

(assert (=> bs!1801015 (= lambda!380675 lambda!380553)))

(declare-fun bs!1801017 () Bool)

(assert (= bs!1801017 (and d!2125945 d!2125839)))

(assert (=> bs!1801017 (= lambda!380675 lambda!380667)))

(declare-fun bs!1801019 () Bool)

(assert (= bs!1801019 (and d!2125945 d!2125645)))

(assert (=> bs!1801019 (= lambda!380675 lambda!380640)))

(declare-fun bs!1801021 () Bool)

(assert (= bs!1801021 (and d!2125945 d!2125239)))

(assert (=> bs!1801021 (= lambda!380675 lambda!380526)))

(declare-fun b!6767197 () Bool)

(declare-fun e!4085966 () Bool)

(assert (=> b!6767197 (= e!4085966 (isEmpty!38309 (t!379779 (unfocusZipperList!2012 (Cons!65949 lt!2442623 Nil!65949)))))))

(declare-fun b!6767198 () Bool)

(declare-fun e!4085964 () Bool)

(declare-fun lt!2442807 () Regex!16591)

(assert (=> b!6767198 (= e!4085964 (= lt!2442807 (head!13602 (unfocusZipperList!2012 (Cons!65949 lt!2442623 Nil!65949)))))))

(declare-fun b!6767199 () Bool)

(declare-fun e!4085968 () Bool)

(declare-fun e!4085967 () Bool)

(assert (=> b!6767199 (= e!4085968 e!4085967)))

(declare-fun c!1256540 () Bool)

(assert (=> b!6767199 (= c!1256540 (isEmpty!38309 (unfocusZipperList!2012 (Cons!65949 lt!2442623 Nil!65949))))))

(declare-fun b!6767200 () Bool)

(declare-fun e!4085965 () Regex!16591)

(assert (=> b!6767200 (= e!4085965 (Union!16591 (h!72396 (unfocusZipperList!2012 (Cons!65949 lt!2442623 Nil!65949))) (generalisedUnion!2435 (t!379779 (unfocusZipperList!2012 (Cons!65949 lt!2442623 Nil!65949))))))))

(declare-fun b!6767201 () Bool)

(declare-fun e!4085969 () Regex!16591)

(assert (=> b!6767201 (= e!4085969 e!4085965)))

(declare-fun c!1256539 () Bool)

(assert (=> b!6767201 (= c!1256539 ((_ is Cons!65948) (unfocusZipperList!2012 (Cons!65949 lt!2442623 Nil!65949))))))

(declare-fun b!6767202 () Bool)

(assert (=> b!6767202 (= e!4085967 e!4085964)))

(declare-fun c!1256542 () Bool)

(assert (=> b!6767202 (= c!1256542 (isEmpty!38309 (tail!12687 (unfocusZipperList!2012 (Cons!65949 lt!2442623 Nil!65949)))))))

(assert (=> d!2125945 e!4085968))

(declare-fun res!2766877 () Bool)

(assert (=> d!2125945 (=> (not res!2766877) (not e!4085968))))

(assert (=> d!2125945 (= res!2766877 (validRegex!8327 lt!2442807))))

(assert (=> d!2125945 (= lt!2442807 e!4085969)))

(declare-fun c!1256541 () Bool)

(assert (=> d!2125945 (= c!1256541 e!4085966)))

(declare-fun res!2766876 () Bool)

(assert (=> d!2125945 (=> (not res!2766876) (not e!4085966))))

(assert (=> d!2125945 (= res!2766876 ((_ is Cons!65948) (unfocusZipperList!2012 (Cons!65949 lt!2442623 Nil!65949))))))

(assert (=> d!2125945 (forall!15787 (unfocusZipperList!2012 (Cons!65949 lt!2442623 Nil!65949)) lambda!380675)))

(assert (=> d!2125945 (= (generalisedUnion!2435 (unfocusZipperList!2012 (Cons!65949 lt!2442623 Nil!65949))) lt!2442807)))

(declare-fun b!6767203 () Bool)

(assert (=> b!6767203 (= e!4085965 EmptyLang!16591)))

(declare-fun b!6767204 () Bool)

(assert (=> b!6767204 (= e!4085967 (isEmptyLang!1961 lt!2442807))))

(declare-fun b!6767205 () Bool)

(assert (=> b!6767205 (= e!4085964 (isUnion!1391 lt!2442807))))

(declare-fun b!6767206 () Bool)

(assert (=> b!6767206 (= e!4085969 (h!72396 (unfocusZipperList!2012 (Cons!65949 lt!2442623 Nil!65949))))))

(assert (= (and d!2125945 res!2766876) b!6767197))

(assert (= (and d!2125945 c!1256541) b!6767206))

(assert (= (and d!2125945 (not c!1256541)) b!6767201))

(assert (= (and b!6767201 c!1256539) b!6767200))

(assert (= (and b!6767201 (not c!1256539)) b!6767203))

(assert (= (and d!2125945 res!2766877) b!6767199))

(assert (= (and b!6767199 c!1256540) b!6767204))

(assert (= (and b!6767199 (not c!1256540)) b!6767202))

(assert (= (and b!6767202 c!1256542) b!6767198))

(assert (= (and b!6767202 (not c!1256542)) b!6767205))

(declare-fun m!7518300 () Bool)

(assert (=> b!6767200 m!7518300))

(assert (=> b!6767198 m!7517182))

(declare-fun m!7518302 () Bool)

(assert (=> b!6767198 m!7518302))

(declare-fun m!7518304 () Bool)

(assert (=> b!6767205 m!7518304))

(declare-fun m!7518306 () Bool)

(assert (=> b!6767197 m!7518306))

(declare-fun m!7518308 () Bool)

(assert (=> d!2125945 m!7518308))

(assert (=> d!2125945 m!7517182))

(declare-fun m!7518310 () Bool)

(assert (=> d!2125945 m!7518310))

(declare-fun m!7518312 () Bool)

(assert (=> b!6767204 m!7518312))

(assert (=> b!6767199 m!7517182))

(declare-fun m!7518314 () Bool)

(assert (=> b!6767199 m!7518314))

(assert (=> b!6767202 m!7517182))

(declare-fun m!7518316 () Bool)

(assert (=> b!6767202 m!7518316))

(assert (=> b!6767202 m!7518316))

(declare-fun m!7518318 () Bool)

(assert (=> b!6767202 m!7518318))

(assert (=> d!2125427 d!2125945))

(declare-fun bs!1801030 () Bool)

(declare-fun d!2125953 () Bool)

(assert (= bs!1801030 (and d!2125953 d!2125431)))

(declare-fun lambda!380677 () Int)

(assert (=> bs!1801030 (= lambda!380677 lambda!380601)))

(declare-fun bs!1801031 () Bool)

(assert (= bs!1801031 (and d!2125953 d!2125525)))

(assert (=> bs!1801031 (= lambda!380677 lambda!380614)))

(declare-fun bs!1801032 () Bool)

(assert (= bs!1801032 (and d!2125953 d!2125575)))

(assert (=> bs!1801032 (= lambda!380677 lambda!380619)))

(declare-fun bs!1801033 () Bool)

(assert (= bs!1801033 (and d!2125953 d!2125361)))

(assert (=> bs!1801033 (= lambda!380677 lambda!380574)))

(declare-fun bs!1801035 () Bool)

(assert (= bs!1801035 (and d!2125953 d!2125881)))

(assert (=> bs!1801035 (= lambda!380677 lambda!380671)))

(declare-fun bs!1801036 () Bool)

(assert (= bs!1801036 (and d!2125953 d!2125433)))

(assert (=> bs!1801036 (= lambda!380677 lambda!380604)))

(declare-fun bs!1801037 () Bool)

(assert (= bs!1801037 (and d!2125953 d!2125649)))

(assert (=> bs!1801037 (= lambda!380677 lambda!380641)))

(declare-fun bs!1801038 () Bool)

(assert (= bs!1801038 (and d!2125953 d!2125459)))

(assert (=> bs!1801038 (= lambda!380677 lambda!380607)))

(declare-fun bs!1801039 () Bool)

(assert (= bs!1801039 (and d!2125953 d!2125725)))

(assert (=> bs!1801039 (= lambda!380677 lambda!380647)))

(declare-fun bs!1801040 () Bool)

(assert (= bs!1801040 (and d!2125953 d!2125313)))

(assert (=> bs!1801040 (= lambda!380677 lambda!380553)))

(declare-fun bs!1801041 () Bool)

(assert (= bs!1801041 (and d!2125953 d!2125839)))

(assert (=> bs!1801041 (= lambda!380677 lambda!380667)))

(declare-fun bs!1801042 () Bool)

(assert (= bs!1801042 (and d!2125953 d!2125645)))

(assert (=> bs!1801042 (= lambda!380677 lambda!380640)))

(declare-fun bs!1801043 () Bool)

(assert (= bs!1801043 (and d!2125953 d!2125239)))

(assert (=> bs!1801043 (= lambda!380677 lambda!380526)))

(declare-fun bs!1801044 () Bool)

(assert (= bs!1801044 (and d!2125953 d!2125577)))

(assert (=> bs!1801044 (= lambda!380677 lambda!380622)))

(declare-fun bs!1801045 () Bool)

(assert (= bs!1801045 (and d!2125953 d!2125945)))

(assert (=> bs!1801045 (= lambda!380677 lambda!380675)))

(declare-fun lt!2442809 () List!66072)

(assert (=> d!2125953 (forall!15787 lt!2442809 lambda!380677)))

(declare-fun e!4085976 () List!66072)

(assert (=> d!2125953 (= lt!2442809 e!4085976)))

(declare-fun c!1256547 () Bool)

(assert (=> d!2125953 (= c!1256547 ((_ is Cons!65949) (Cons!65949 lt!2442623 Nil!65949)))))

(assert (=> d!2125953 (= (unfocusZipperList!2012 (Cons!65949 lt!2442623 Nil!65949)) lt!2442809)))

(declare-fun b!6767217 () Bool)

(assert (=> b!6767217 (= e!4085976 (Cons!65948 (generalisedConcat!2188 (exprs!6475 (h!72397 (Cons!65949 lt!2442623 Nil!65949)))) (unfocusZipperList!2012 (t!379780 (Cons!65949 lt!2442623 Nil!65949)))))))

(declare-fun b!6767218 () Bool)

(assert (=> b!6767218 (= e!4085976 Nil!65948)))

(assert (= (and d!2125953 c!1256547) b!6767217))

(assert (= (and d!2125953 (not c!1256547)) b!6767218))

(declare-fun m!7518340 () Bool)

(assert (=> d!2125953 m!7518340))

(declare-fun m!7518342 () Bool)

(assert (=> b!6767217 m!7518342))

(declare-fun m!7518344 () Bool)

(assert (=> b!6767217 m!7518344))

(assert (=> d!2125427 d!2125953))

(declare-fun c!1256554 () Bool)

(declare-fun c!1256550 () Bool)

(declare-fun call!613220 () List!66072)

(declare-fun bm!613212 () Bool)

(declare-fun c!1256553 () Bool)

(declare-fun call!613219 () (InoxSet Context!11950))

(assert (=> bm!613212 (= call!613219 (derivationStepZipperDown!1819 (ite c!1256554 (regTwo!33695 (h!72396 (exprs!6475 (h!72397 zl!343)))) (ite c!1256550 (regTwo!33694 (h!72396 (exprs!6475 (h!72397 zl!343)))) (ite c!1256553 (regOne!33694 (h!72396 (exprs!6475 (h!72397 zl!343)))) (reg!16920 (h!72396 (exprs!6475 (h!72397 zl!343))))))) (ite (or c!1256554 c!1256550) (Context!11951 (t!379779 (exprs!6475 (h!72397 zl!343)))) (Context!11951 call!613220)) (h!72398 s!2326)))))

(declare-fun bm!613213 () Bool)

(declare-fun call!613218 () List!66072)

(assert (=> bm!613213 (= call!613220 call!613218)))

(declare-fun bm!613214 () Bool)

(declare-fun call!613222 () (InoxSet Context!11950))

(assert (=> bm!613214 (= call!613222 call!613219)))

(declare-fun call!613221 () (InoxSet Context!11950))

(declare-fun bm!613216 () Bool)

(assert (=> bm!613216 (= call!613221 (derivationStepZipperDown!1819 (ite c!1256554 (regOne!33695 (h!72396 (exprs!6475 (h!72397 zl!343)))) (regOne!33694 (h!72396 (exprs!6475 (h!72397 zl!343))))) (ite c!1256554 (Context!11951 (t!379779 (exprs!6475 (h!72397 zl!343)))) (Context!11951 call!613218)) (h!72398 s!2326)))))

(declare-fun b!6767223 () Bool)

(declare-fun e!4085980 () (InoxSet Context!11950))

(declare-fun call!613217 () (InoxSet Context!11950))

(assert (=> b!6767223 (= e!4085980 call!613217)))

(declare-fun b!6767224 () Bool)

(declare-fun e!4085983 () (InoxSet Context!11950))

(assert (=> b!6767224 (= e!4085983 (store ((as const (Array Context!11950 Bool)) false) (Context!11951 (t!379779 (exprs!6475 (h!72397 zl!343)))) true))))

(declare-fun b!6767225 () Bool)

(declare-fun e!4085984 () (InoxSet Context!11950))

(assert (=> b!6767225 (= e!4085984 ((_ map or) call!613221 call!613222))))

(declare-fun b!6767226 () Bool)

(declare-fun e!4085982 () Bool)

(assert (=> b!6767226 (= c!1256550 e!4085982)))

(declare-fun res!2766880 () Bool)

(assert (=> b!6767226 (=> (not res!2766880) (not e!4085982))))

(assert (=> b!6767226 (= res!2766880 ((_ is Concat!25436) (h!72396 (exprs!6475 (h!72397 zl!343)))))))

(declare-fun e!4085979 () (InoxSet Context!11950))

(assert (=> b!6767226 (= e!4085979 e!4085984)))

(declare-fun b!6767227 () Bool)

(declare-fun e!4085981 () (InoxSet Context!11950))

(assert (=> b!6767227 (= e!4085984 e!4085981)))

(assert (=> b!6767227 (= c!1256553 ((_ is Concat!25436) (h!72396 (exprs!6475 (h!72397 zl!343)))))))

(declare-fun bm!613217 () Bool)

(assert (=> bm!613217 (= call!613217 call!613222)))

(declare-fun b!6767228 () Bool)

(declare-fun c!1256551 () Bool)

(assert (=> b!6767228 (= c!1256551 ((_ is Star!16591) (h!72396 (exprs!6475 (h!72397 zl!343)))))))

(assert (=> b!6767228 (= e!4085981 e!4085980)))

(declare-fun b!6767229 () Bool)

(assert (=> b!6767229 (= e!4085982 (nullable!6574 (regOne!33694 (h!72396 (exprs!6475 (h!72397 zl!343))))))))

(declare-fun b!6767230 () Bool)

(assert (=> b!6767230 (= e!4085979 ((_ map or) call!613221 call!613219))))

(declare-fun b!6767231 () Bool)

(assert (=> b!6767231 (= e!4085981 call!613217)))

(declare-fun d!2125959 () Bool)

(declare-fun c!1256552 () Bool)

(assert (=> d!2125959 (= c!1256552 (and ((_ is ElementMatch!16591) (h!72396 (exprs!6475 (h!72397 zl!343)))) (= (c!1256003 (h!72396 (exprs!6475 (h!72397 zl!343)))) (h!72398 s!2326))))))

(assert (=> d!2125959 (= (derivationStepZipperDown!1819 (h!72396 (exprs!6475 (h!72397 zl!343))) (Context!11951 (t!379779 (exprs!6475 (h!72397 zl!343)))) (h!72398 s!2326)) e!4085983)))

(declare-fun bm!613215 () Bool)

(assert (=> bm!613215 (= call!613218 ($colon$colon!2404 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 (h!72397 zl!343))))) (ite (or c!1256550 c!1256553) (regTwo!33694 (h!72396 (exprs!6475 (h!72397 zl!343)))) (h!72396 (exprs!6475 (h!72397 zl!343))))))))

(declare-fun b!6767232 () Bool)

(assert (=> b!6767232 (= e!4085983 e!4085979)))

(assert (=> b!6767232 (= c!1256554 ((_ is Union!16591) (h!72396 (exprs!6475 (h!72397 zl!343)))))))

(declare-fun b!6767233 () Bool)

(assert (=> b!6767233 (= e!4085980 ((as const (Array Context!11950 Bool)) false))))

(assert (= (and d!2125959 c!1256552) b!6767224))

(assert (= (and d!2125959 (not c!1256552)) b!6767232))

(assert (= (and b!6767232 c!1256554) b!6767230))

(assert (= (and b!6767232 (not c!1256554)) b!6767226))

(assert (= (and b!6767226 res!2766880) b!6767229))

(assert (= (and b!6767226 c!1256550) b!6767225))

(assert (= (and b!6767226 (not c!1256550)) b!6767227))

(assert (= (and b!6767227 c!1256553) b!6767231))

(assert (= (and b!6767227 (not c!1256553)) b!6767228))

(assert (= (and b!6767228 c!1256551) b!6767223))

(assert (= (and b!6767228 (not c!1256551)) b!6767233))

(assert (= (or b!6767231 b!6767223) bm!613213))

(assert (= (or b!6767231 b!6767223) bm!613217))

(assert (= (or b!6767225 bm!613213) bm!613215))

(assert (= (or b!6767225 bm!613217) bm!613214))

(assert (= (or b!6767230 bm!613214) bm!613212))

(assert (= (or b!6767230 b!6767225) bm!613216))

(declare-fun m!7518346 () Bool)

(assert (=> bm!613215 m!7518346))

(declare-fun m!7518348 () Bool)

(assert (=> bm!613216 m!7518348))

(declare-fun m!7518352 () Bool)

(assert (=> b!6767224 m!7518352))

(declare-fun m!7518354 () Bool)

(assert (=> bm!613212 m!7518354))

(declare-fun m!7518356 () Bool)

(assert (=> b!6767229 m!7518356))

(assert (=> bm!612997 d!2125959))

(declare-fun d!2125963 () Bool)

(assert (=> d!2125963 (= (isEmpty!38306 (_2!36869 lt!2442636)) ((_ is Nil!65950) (_2!36869 lt!2442636)))))

(assert (=> d!2125237 d!2125963))

(assert (=> d!2125237 d!2125335))

(declare-fun d!2125967 () Bool)

(assert (=> d!2125967 (= (Exists!3659 lambda!380583) (choose!50417 lambda!380583))))

(declare-fun bs!1801046 () Bool)

(assert (= bs!1801046 d!2125967))

(declare-fun m!7518358 () Bool)

(assert (=> bs!1801046 m!7518358))

(assert (=> d!2125393 d!2125967))

(declare-fun d!2125969 () Bool)

(assert (=> d!2125969 (= (Exists!3659 lambda!380586) (choose!50417 lambda!380586))))

(declare-fun bs!1801047 () Bool)

(assert (= bs!1801047 d!2125969))

(declare-fun m!7518362 () Bool)

(assert (=> bs!1801047 m!7518362))

(assert (=> d!2125393 d!2125969))

(declare-fun bs!1801095 () Bool)

(declare-fun d!2125973 () Bool)

(assert (= bs!1801095 (and d!2125973 b!6766568)))

(declare-fun lambda!380685 () Int)

(assert (=> bs!1801095 (not (= lambda!380685 lambda!380630))))

(declare-fun bs!1801096 () Bool)

(assert (= bs!1801096 (and d!2125973 d!2125393)))

(assert (=> bs!1801096 (= lambda!380685 lambda!380583)))

(declare-fun bs!1801097 () Bool)

(assert (= bs!1801097 (and d!2125973 b!6765810)))

(assert (=> bs!1801097 (not (= lambda!380685 lambda!380568))))

(declare-fun bs!1801098 () Bool)

(assert (= bs!1801098 (and d!2125973 b!6766464)))

(assert (=> bs!1801098 (not (= lambda!380685 lambda!380618))))

(declare-fun bs!1801099 () Bool)

(assert (= bs!1801099 (and d!2125973 b!6766622)))

(assert (=> bs!1801099 (not (= lambda!380685 lambda!380638))))

(declare-fun bs!1801100 () Bool)

(assert (= bs!1801100 (and d!2125973 b!6765357)))

(assert (=> bs!1801100 (not (= lambda!380685 lambda!380522))))

(declare-fun bs!1801101 () Bool)

(assert (= bs!1801101 (and d!2125973 d!2125811)))

(assert (=> bs!1801101 (= (= (Star!16591 (reg!16920 r!7292)) r!7292) (= lambda!380685 lambda!380665))))

(declare-fun bs!1801102 () Bool)

(assert (= bs!1801102 (and d!2125973 b!6766543)))

(assert (=> bs!1801102 (not (= lambda!380685 lambda!380628))))

(declare-fun bs!1801103 () Bool)

(assert (= bs!1801103 (and d!2125973 b!6766563)))

(assert (=> bs!1801103 (not (= lambda!380685 lambda!380629))))

(declare-fun bs!1801104 () Bool)

(assert (= bs!1801104 (and d!2125973 b!6766617)))

(assert (=> bs!1801104 (not (= lambda!380685 lambda!380634))))

(declare-fun bs!1801106 () Bool)

(assert (= bs!1801106 (and d!2125973 b!6766162)))

(assert (=> bs!1801106 (not (= lambda!380685 lambda!380606))))

(declare-fun bs!1801107 () Bool)

(assert (= bs!1801107 (and d!2125973 d!2125425)))

(assert (=> bs!1801107 (= (= (Star!16591 (reg!16920 r!7292)) r!7292) (= lambda!380685 lambda!380598))))

(declare-fun bs!1801108 () Bool)

(assert (= bs!1801108 (and d!2125973 b!6766157)))

(assert (=> bs!1801108 (not (= lambda!380685 lambda!380605))))

(declare-fun bs!1801109 () Bool)

(assert (= bs!1801109 (and d!2125973 d!2125401)))

(assert (=> bs!1801109 (= (= (Star!16591 (reg!16920 r!7292)) r!7292) (= lambda!380685 lambda!380594))))

(assert (=> bs!1801096 (not (= lambda!380685 lambda!380586))))

(assert (=> bs!1801101 (not (= lambda!380685 lambda!380666))))

(declare-fun bs!1801110 () Bool)

(assert (= bs!1801110 (and d!2125973 b!6765805)))

(assert (=> bs!1801110 (not (= lambda!380685 lambda!380565))))

(declare-fun bs!1801111 () Bool)

(assert (= bs!1801111 (and d!2125973 b!6766459)))

(assert (=> bs!1801111 (not (= lambda!380685 lambda!380617))))

(assert (=> bs!1801109 (not (= lambda!380685 lambda!380595))))

(declare-fun bs!1801112 () Bool)

(assert (= bs!1801112 (and d!2125973 b!6766538)))

(assert (=> bs!1801112 (not (= lambda!380685 lambda!380627))))

(assert (=> bs!1801100 (not (= lambda!380685 lambda!380521))))

(assert (=> bs!1801100 (= (= (Star!16591 (reg!16920 r!7292)) r!7292) (= lambda!380685 lambda!380520))))

(assert (=> d!2125973 true))

(assert (=> d!2125973 true))

(declare-fun lambda!380686 () Int)

(assert (=> bs!1801095 (not (= lambda!380686 lambda!380630))))

(assert (=> bs!1801096 (not (= lambda!380686 lambda!380583))))

(assert (=> bs!1801097 (not (= lambda!380686 lambda!380568))))

(assert (=> bs!1801098 (not (= lambda!380686 lambda!380618))))

(assert (=> bs!1801099 (not (= lambda!380686 lambda!380638))))

(assert (=> bs!1801100 (not (= lambda!380686 lambda!380522))))

(assert (=> bs!1801101 (not (= lambda!380686 lambda!380665))))

(assert (=> bs!1801102 (not (= lambda!380686 lambda!380628))))

(declare-fun bs!1801113 () Bool)

(assert (= bs!1801113 d!2125973))

(assert (=> bs!1801113 (not (= lambda!380686 lambda!380685))))

(assert (=> bs!1801103 (= (and (= (reg!16920 r!7292) (reg!16920 (regOne!33695 lt!2442635))) (= (Star!16591 (reg!16920 r!7292)) (regOne!33695 lt!2442635))) (= lambda!380686 lambda!380629))))

(assert (=> bs!1801104 (= (and (= (reg!16920 r!7292) (reg!16920 (regTwo!33695 r!7292))) (= (Star!16591 (reg!16920 r!7292)) (regTwo!33695 r!7292))) (= lambda!380686 lambda!380634))))

(assert (=> bs!1801106 (not (= lambda!380686 lambda!380606))))

(assert (=> bs!1801107 (not (= lambda!380686 lambda!380598))))

(assert (=> bs!1801108 (= (and (= (reg!16920 r!7292) (reg!16920 lt!2442635)) (= (Star!16591 (reg!16920 r!7292)) lt!2442635)) (= lambda!380686 lambda!380605))))

(assert (=> bs!1801109 (not (= lambda!380686 lambda!380594))))

(assert (=> bs!1801096 (= lambda!380686 lambda!380586)))

(assert (=> bs!1801101 (not (= lambda!380686 lambda!380666))))

(assert (=> bs!1801110 (= (= (Star!16591 (reg!16920 r!7292)) r!7292) (= lambda!380686 lambda!380565))))

(assert (=> bs!1801111 (= (and (= (reg!16920 r!7292) (reg!16920 (regTwo!33695 lt!2442635))) (= (Star!16591 (reg!16920 r!7292)) (regTwo!33695 lt!2442635))) (= lambda!380686 lambda!380617))))

(assert (=> bs!1801109 (not (= lambda!380686 lambda!380595))))

(assert (=> bs!1801112 (= (and (= (reg!16920 r!7292) (reg!16920 (regOne!33695 r!7292))) (= (Star!16591 (reg!16920 r!7292)) (regOne!33695 r!7292))) (= lambda!380686 lambda!380627))))

(assert (=> bs!1801100 (= (= (Star!16591 (reg!16920 r!7292)) r!7292) (= lambda!380686 lambda!380521))))

(assert (=> bs!1801100 (not (= lambda!380686 lambda!380520))))

(assert (=> d!2125973 true))

(assert (=> d!2125973 true))

(assert (=> d!2125973 (= (Exists!3659 lambda!380685) (Exists!3659 lambda!380686))))

(assert (=> d!2125973 true))

(declare-fun _$91!752 () Unit!159873)

(assert (=> d!2125973 (= (choose!50422 (reg!16920 r!7292) s!2326) _$91!752)))

(declare-fun m!7518470 () Bool)

(assert (=> bs!1801113 m!7518470))

(declare-fun m!7518472 () Bool)

(assert (=> bs!1801113 m!7518472))

(assert (=> d!2125393 d!2125973))

(assert (=> d!2125393 d!2125553))

(declare-fun d!2126007 () Bool)

(assert (=> d!2126007 (= (isEmpty!38309 (t!379779 (exprs!6475 (h!72397 zl!343)))) ((_ is Nil!65948) (t!379779 (exprs!6475 (h!72397 zl!343)))))))

(assert (=> b!6765924 d!2126007))

(assert (=> b!6766153 d!2125361))

(declare-fun bs!1801119 () Bool)

(declare-fun d!2126009 () Bool)

(assert (= bs!1801119 (and d!2126009 d!2125431)))

(declare-fun lambda!380688 () Int)

(assert (=> bs!1801119 (= lambda!380688 lambda!380601)))

(declare-fun bs!1801121 () Bool)

(assert (= bs!1801121 (and d!2126009 d!2125525)))

(assert (=> bs!1801121 (= lambda!380688 lambda!380614)))

(declare-fun bs!1801122 () Bool)

(assert (= bs!1801122 (and d!2126009 d!2125575)))

(assert (=> bs!1801122 (= lambda!380688 lambda!380619)))

(declare-fun bs!1801124 () Bool)

(assert (= bs!1801124 (and d!2126009 d!2125361)))

(assert (=> bs!1801124 (= lambda!380688 lambda!380574)))

(declare-fun bs!1801125 () Bool)

(assert (= bs!1801125 (and d!2126009 d!2125433)))

(assert (=> bs!1801125 (= lambda!380688 lambda!380604)))

(declare-fun bs!1801126 () Bool)

(assert (= bs!1801126 (and d!2126009 d!2125649)))

(assert (=> bs!1801126 (= lambda!380688 lambda!380641)))

(declare-fun bs!1801127 () Bool)

(assert (= bs!1801127 (and d!2126009 d!2125459)))

(assert (=> bs!1801127 (= lambda!380688 lambda!380607)))

(declare-fun bs!1801128 () Bool)

(assert (= bs!1801128 (and d!2126009 d!2125725)))

(assert (=> bs!1801128 (= lambda!380688 lambda!380647)))

(declare-fun bs!1801129 () Bool)

(assert (= bs!1801129 (and d!2126009 d!2125313)))

(assert (=> bs!1801129 (= lambda!380688 lambda!380553)))

(declare-fun bs!1801130 () Bool)

(assert (= bs!1801130 (and d!2126009 d!2125839)))

(assert (=> bs!1801130 (= lambda!380688 lambda!380667)))

(declare-fun bs!1801131 () Bool)

(assert (= bs!1801131 (and d!2126009 d!2125881)))

(assert (=> bs!1801131 (= lambda!380688 lambda!380671)))

(declare-fun bs!1801132 () Bool)

(assert (= bs!1801132 (and d!2126009 d!2125953)))

(assert (=> bs!1801132 (= lambda!380688 lambda!380677)))

(declare-fun bs!1801133 () Bool)

(assert (= bs!1801133 (and d!2126009 d!2125645)))

(assert (=> bs!1801133 (= lambda!380688 lambda!380640)))

(declare-fun bs!1801134 () Bool)

(assert (= bs!1801134 (and d!2126009 d!2125239)))

(assert (=> bs!1801134 (= lambda!380688 lambda!380526)))

(declare-fun bs!1801135 () Bool)

(assert (= bs!1801135 (and d!2126009 d!2125577)))

(assert (=> bs!1801135 (= lambda!380688 lambda!380622)))

(declare-fun bs!1801136 () Bool)

(assert (= bs!1801136 (and d!2126009 d!2125945)))

(assert (=> bs!1801136 (= lambda!380688 lambda!380675)))

(declare-fun lt!2442821 () List!66072)

(assert (=> d!2126009 (forall!15787 lt!2442821 lambda!380688)))

(declare-fun e!4086046 () List!66072)

(assert (=> d!2126009 (= lt!2442821 e!4086046)))

(declare-fun c!1256594 () Bool)

(assert (=> d!2126009 (= c!1256594 ((_ is Cons!65949) (t!379780 zl!343)))))

(assert (=> d!2126009 (= (unfocusZipperList!2012 (t!379780 zl!343)) lt!2442821)))

(declare-fun b!6767348 () Bool)

(assert (=> b!6767348 (= e!4086046 (Cons!65948 (generalisedConcat!2188 (exprs!6475 (h!72397 (t!379780 zl!343)))) (unfocusZipperList!2012 (t!379780 (t!379780 zl!343)))))))

(declare-fun b!6767349 () Bool)

(assert (=> b!6767349 (= e!4086046 Nil!65948)))

(assert (= (and d!2126009 c!1256594) b!6767348))

(assert (= (and d!2126009 (not c!1256594)) b!6767349))

(declare-fun m!7518476 () Bool)

(assert (=> d!2126009 m!7518476))

(declare-fun m!7518478 () Bool)

(assert (=> b!6767348 m!7518478))

(declare-fun m!7518480 () Bool)

(assert (=> b!6767348 m!7518480))

(assert (=> b!6766153 d!2126009))

(assert (=> d!2125261 d!2125255))

(declare-fun d!2126015 () Bool)

(assert (=> d!2126015 (= (flatMap!2072 lt!2442622 lambda!380523) (dynLambda!26314 lambda!380523 lt!2442630))))

(assert (=> d!2126015 true))

(declare-fun _$13!4145 () Unit!159873)

(assert (=> d!2126015 (= (choose!50415 lt!2442622 lt!2442630 lambda!380523) _$13!4145)))

(declare-fun b_lambda!254815 () Bool)

(assert (=> (not b_lambda!254815) (not d!2126015)))

(declare-fun bs!1801137 () Bool)

(assert (= bs!1801137 d!2126015))

(assert (=> bs!1801137 m!7516620))

(assert (=> bs!1801137 m!7516708))

(assert (=> d!2125261 d!2126015))

(declare-fun b!6767368 () Bool)

(declare-fun e!4086054 () List!66074)

(assert (=> b!6767368 (= e!4086054 (_2!36869 (get!22956 lt!2442739)))))

(declare-fun b!6767371 () Bool)

(declare-fun e!4086053 () Bool)

(declare-fun lt!2442822 () List!66074)

(assert (=> b!6767371 (= e!4086053 (or (not (= (_2!36869 (get!22956 lt!2442739)) Nil!65950)) (= lt!2442822 (_1!36869 (get!22956 lt!2442739)))))))

(declare-fun b!6767369 () Bool)

(assert (=> b!6767369 (= e!4086054 (Cons!65950 (h!72398 (_1!36869 (get!22956 lt!2442739))) (++!14745 (t!379781 (_1!36869 (get!22956 lt!2442739))) (_2!36869 (get!22956 lt!2442739)))))))

(declare-fun b!6767370 () Bool)

(declare-fun res!2766918 () Bool)

(assert (=> b!6767370 (=> (not res!2766918) (not e!4086053))))

(assert (=> b!6767370 (= res!2766918 (= (size!40628 lt!2442822) (+ (size!40628 (_1!36869 (get!22956 lt!2442739))) (size!40628 (_2!36869 (get!22956 lt!2442739))))))))

(declare-fun d!2126017 () Bool)

(assert (=> d!2126017 e!4086053))

(declare-fun res!2766917 () Bool)

(assert (=> d!2126017 (=> (not res!2766917) (not e!4086053))))

(assert (=> d!2126017 (= res!2766917 (= (content!12835 lt!2442822) ((_ map or) (content!12835 (_1!36869 (get!22956 lt!2442739))) (content!12835 (_2!36869 (get!22956 lt!2442739))))))))

(assert (=> d!2126017 (= lt!2442822 e!4086054)))

(declare-fun c!1256595 () Bool)

(assert (=> d!2126017 (= c!1256595 ((_ is Nil!65950) (_1!36869 (get!22956 lt!2442739))))))

(assert (=> d!2126017 (= (++!14745 (_1!36869 (get!22956 lt!2442739)) (_2!36869 (get!22956 lt!2442739))) lt!2442822)))

(assert (= (and d!2126017 c!1256595) b!6767368))

(assert (= (and d!2126017 (not c!1256595)) b!6767369))

(assert (= (and d!2126017 res!2766917) b!6767370))

(assert (= (and b!6767370 res!2766918) b!6767371))

(declare-fun m!7518482 () Bool)

(assert (=> b!6767369 m!7518482))

(declare-fun m!7518484 () Bool)

(assert (=> b!6767370 m!7518484))

(declare-fun m!7518486 () Bool)

(assert (=> b!6767370 m!7518486))

(declare-fun m!7518488 () Bool)

(assert (=> b!6767370 m!7518488))

(declare-fun m!7518490 () Bool)

(assert (=> d!2126017 m!7518490))

(declare-fun m!7518492 () Bool)

(assert (=> d!2126017 m!7518492))

(declare-fun m!7518494 () Bool)

(assert (=> d!2126017 m!7518494))

(assert (=> b!6766110 d!2126017))

(assert (=> b!6766110 d!2125539))

(declare-fun d!2126019 () Bool)

(assert (=> d!2126019 (= (isEmpty!38309 (tail!12687 (exprs!6475 (h!72397 zl!343)))) ((_ is Nil!65948) (tail!12687 (exprs!6475 (h!72397 zl!343)))))))

(assert (=> b!6765920 d!2126019))

(declare-fun d!2126021 () Bool)

(assert (=> d!2126021 (= (tail!12687 (exprs!6475 (h!72397 zl!343))) (t!379779 (exprs!6475 (h!72397 zl!343))))))

(assert (=> b!6765920 d!2126021))

(declare-fun b!6767405 () Bool)

(declare-fun e!4086066 () Bool)

(assert (=> b!6767405 (= e!4086066 (nullable!6574 (derivativeStep!5258 r!7292 (head!13599 (_2!36869 lt!2442636)))))))

(declare-fun b!6767406 () Bool)

(declare-fun e!4086067 () Bool)

(declare-fun e!4086068 () Bool)

(assert (=> b!6767406 (= e!4086067 e!4086068)))

(declare-fun c!1256596 () Bool)

(assert (=> b!6767406 (= c!1256596 ((_ is EmptyLang!16591) (derivativeStep!5258 r!7292 (head!13599 (_2!36869 lt!2442636)))))))

(declare-fun b!6767407 () Bool)

(assert (=> b!6767407 (= e!4086066 (matchR!8774 (derivativeStep!5258 (derivativeStep!5258 r!7292 (head!13599 (_2!36869 lt!2442636))) (head!13599 (tail!12684 (_2!36869 lt!2442636)))) (tail!12684 (tail!12684 (_2!36869 lt!2442636)))))))

(declare-fun b!6767408 () Bool)

(declare-fun e!4086070 () Bool)

(assert (=> b!6767408 (= e!4086070 (= (head!13599 (tail!12684 (_2!36869 lt!2442636))) (c!1256003 (derivativeStep!5258 r!7292 (head!13599 (_2!36869 lt!2442636))))))))

(declare-fun b!6767410 () Bool)

(declare-fun res!2766923 () Bool)

(declare-fun e!4086063 () Bool)

(assert (=> b!6767410 (=> res!2766923 e!4086063)))

(assert (=> b!6767410 (= res!2766923 (not (isEmpty!38306 (tail!12684 (tail!12684 (_2!36869 lt!2442636))))))))

(declare-fun b!6767411 () Bool)

(declare-fun e!4086069 () Bool)

(assert (=> b!6767411 (= e!4086069 e!4086063)))

(declare-fun res!2766919 () Bool)

(assert (=> b!6767411 (=> res!2766919 e!4086063)))

(declare-fun call!613249 () Bool)

(assert (=> b!6767411 (= res!2766919 call!613249)))

(declare-fun b!6767412 () Bool)

(assert (=> b!6767412 (= e!4086063 (not (= (head!13599 (tail!12684 (_2!36869 lt!2442636))) (c!1256003 (derivativeStep!5258 r!7292 (head!13599 (_2!36869 lt!2442636)))))))))

(declare-fun b!6767413 () Bool)

(declare-fun res!2766926 () Bool)

(declare-fun e!4086064 () Bool)

(assert (=> b!6767413 (=> res!2766926 e!4086064)))

(assert (=> b!6767413 (= res!2766926 e!4086070)))

(declare-fun res!2766924 () Bool)

(assert (=> b!6767413 (=> (not res!2766924) (not e!4086070))))

(declare-fun lt!2442823 () Bool)

(assert (=> b!6767413 (= res!2766924 lt!2442823)))

(declare-fun b!6767414 () Bool)

(declare-fun res!2766921 () Bool)

(assert (=> b!6767414 (=> (not res!2766921) (not e!4086070))))

(assert (=> b!6767414 (= res!2766921 (not call!613249))))

(declare-fun b!6767409 () Bool)

(assert (=> b!6767409 (= e!4086064 e!4086069)))

(declare-fun res!2766920 () Bool)

(assert (=> b!6767409 (=> (not res!2766920) (not e!4086069))))

(assert (=> b!6767409 (= res!2766920 (not lt!2442823))))

(declare-fun d!2126023 () Bool)

(assert (=> d!2126023 e!4086067))

(declare-fun c!1256598 () Bool)

(assert (=> d!2126023 (= c!1256598 ((_ is EmptyExpr!16591) (derivativeStep!5258 r!7292 (head!13599 (_2!36869 lt!2442636)))))))

(assert (=> d!2126023 (= lt!2442823 e!4086066)))

(declare-fun c!1256597 () Bool)

(assert (=> d!2126023 (= c!1256597 (isEmpty!38306 (tail!12684 (_2!36869 lt!2442636))))))

(assert (=> d!2126023 (validRegex!8327 (derivativeStep!5258 r!7292 (head!13599 (_2!36869 lt!2442636))))))

(assert (=> d!2126023 (= (matchR!8774 (derivativeStep!5258 r!7292 (head!13599 (_2!36869 lt!2442636))) (tail!12684 (_2!36869 lt!2442636))) lt!2442823)))

(declare-fun bm!613244 () Bool)

(assert (=> bm!613244 (= call!613249 (isEmpty!38306 (tail!12684 (_2!36869 lt!2442636))))))

(declare-fun b!6767415 () Bool)

(declare-fun res!2766925 () Bool)

(assert (=> b!6767415 (=> res!2766925 e!4086064)))

(assert (=> b!6767415 (= res!2766925 (not ((_ is ElementMatch!16591) (derivativeStep!5258 r!7292 (head!13599 (_2!36869 lt!2442636))))))))

(assert (=> b!6767415 (= e!4086068 e!4086064)))

(declare-fun b!6767416 () Bool)

(assert (=> b!6767416 (= e!4086067 (= lt!2442823 call!613249))))

(declare-fun b!6767417 () Bool)

(declare-fun res!2766922 () Bool)

(assert (=> b!6767417 (=> (not res!2766922) (not e!4086070))))

(assert (=> b!6767417 (= res!2766922 (isEmpty!38306 (tail!12684 (tail!12684 (_2!36869 lt!2442636)))))))

(declare-fun b!6767418 () Bool)

(assert (=> b!6767418 (= e!4086068 (not lt!2442823))))

(assert (= (and d!2126023 c!1256597) b!6767405))

(assert (= (and d!2126023 (not c!1256597)) b!6767407))

(assert (= (and d!2126023 c!1256598) b!6767416))

(assert (= (and d!2126023 (not c!1256598)) b!6767406))

(assert (= (and b!6767406 c!1256596) b!6767418))

(assert (= (and b!6767406 (not c!1256596)) b!6767415))

(assert (= (and b!6767415 (not res!2766925)) b!6767413))

(assert (= (and b!6767413 res!2766924) b!6767414))

(assert (= (and b!6767414 res!2766921) b!6767417))

(assert (= (and b!6767417 res!2766922) b!6767408))

(assert (= (and b!6767413 (not res!2766926)) b!6767409))

(assert (= (and b!6767409 res!2766920) b!6767411))

(assert (= (and b!6767411 (not res!2766919)) b!6767410))

(assert (= (and b!6767410 (not res!2766923)) b!6767412))

(assert (= (or b!6767416 b!6767411 b!6767414) bm!613244))

(assert (=> b!6767407 m!7516656))

(declare-fun m!7518500 () Bool)

(assert (=> b!6767407 m!7518500))

(assert (=> b!6767407 m!7516654))

(assert (=> b!6767407 m!7518500))

(declare-fun m!7518502 () Bool)

(assert (=> b!6767407 m!7518502))

(assert (=> b!6767407 m!7516656))

(declare-fun m!7518504 () Bool)

(assert (=> b!6767407 m!7518504))

(assert (=> b!6767407 m!7518502))

(assert (=> b!6767407 m!7518504))

(declare-fun m!7518506 () Bool)

(assert (=> b!6767407 m!7518506))

(assert (=> d!2126023 m!7516656))

(assert (=> d!2126023 m!7516664))

(assert (=> d!2126023 m!7516654))

(declare-fun m!7518508 () Bool)

(assert (=> d!2126023 m!7518508))

(assert (=> b!6767408 m!7516656))

(assert (=> b!6767408 m!7518500))

(assert (=> bm!613244 m!7516656))

(assert (=> bm!613244 m!7516664))

(assert (=> b!6767412 m!7516656))

(assert (=> b!6767412 m!7518500))

(assert (=> b!6767405 m!7516654))

(declare-fun m!7518510 () Bool)

(assert (=> b!6767405 m!7518510))

(assert (=> b!6767417 m!7516656))

(assert (=> b!6767417 m!7518504))

(assert (=> b!6767417 m!7518504))

(declare-fun m!7518512 () Bool)

(assert (=> b!6767417 m!7518512))

(assert (=> b!6767410 m!7516656))

(assert (=> b!6767410 m!7518504))

(assert (=> b!6767410 m!7518504))

(assert (=> b!6767410 m!7518512))

(assert (=> b!6765408 d!2126023))

(declare-fun b!6767440 () Bool)

(declare-fun e!4086082 () Regex!16591)

(declare-fun call!613253 () Regex!16591)

(declare-fun call!613251 () Regex!16591)

(assert (=> b!6767440 (= e!4086082 (Union!16591 call!613253 call!613251))))

(declare-fun b!6767441 () Bool)

(declare-fun c!1256599 () Bool)

(assert (=> b!6767441 (= c!1256599 ((_ is Union!16591) r!7292))))

(declare-fun e!4086083 () Regex!16591)

(assert (=> b!6767441 (= e!4086083 e!4086082)))

(declare-fun b!6767442 () Bool)

(assert (=> b!6767442 (= e!4086083 (ite (= (head!13599 (_2!36869 lt!2442636)) (c!1256003 r!7292)) EmptyExpr!16591 EmptyLang!16591))))

(declare-fun bm!613246 () Bool)

(assert (=> bm!613246 (= call!613253 (derivativeStep!5258 (ite c!1256599 (regOne!33695 r!7292) (regOne!33694 r!7292)) (head!13599 (_2!36869 lt!2442636))))))

(declare-fun bm!613247 () Bool)

(declare-fun call!613250 () Regex!16591)

(declare-fun call!613252 () Regex!16591)

(assert (=> bm!613247 (= call!613250 call!613252)))

(declare-fun b!6767443 () Bool)

(declare-fun e!4086081 () Regex!16591)

(assert (=> b!6767443 (= e!4086081 e!4086083)))

(declare-fun c!1256602 () Bool)

(assert (=> b!6767443 (= c!1256602 ((_ is ElementMatch!16591) r!7292))))

(declare-fun b!6767448 () Bool)

(declare-fun c!1256601 () Bool)

(assert (=> b!6767448 (= c!1256601 (nullable!6574 (regOne!33694 r!7292)))))

(declare-fun e!4086084 () Regex!16591)

(declare-fun e!4086080 () Regex!16591)

(assert (=> b!6767448 (= e!4086084 e!4086080)))

(declare-fun b!6767449 () Bool)

(assert (=> b!6767449 (= e!4086080 (Union!16591 (Concat!25436 call!613253 (regTwo!33694 r!7292)) call!613250))))

(declare-fun c!1256603 () Bool)

(declare-fun bm!613248 () Bool)

(assert (=> bm!613248 (= call!613251 (derivativeStep!5258 (ite c!1256599 (regTwo!33695 r!7292) (ite c!1256603 (reg!16920 r!7292) (ite c!1256601 (regTwo!33694 r!7292) (regOne!33694 r!7292)))) (head!13599 (_2!36869 lt!2442636))))))

(declare-fun d!2126025 () Bool)

(declare-fun lt!2442824 () Regex!16591)

(assert (=> d!2126025 (validRegex!8327 lt!2442824)))

(assert (=> d!2126025 (= lt!2442824 e!4086081)))

(declare-fun c!1256600 () Bool)

(assert (=> d!2126025 (= c!1256600 (or ((_ is EmptyExpr!16591) r!7292) ((_ is EmptyLang!16591) r!7292)))))

(assert (=> d!2126025 (validRegex!8327 r!7292)))

(assert (=> d!2126025 (= (derivativeStep!5258 r!7292 (head!13599 (_2!36869 lt!2442636))) lt!2442824)))

(declare-fun bm!613245 () Bool)

(assert (=> bm!613245 (= call!613252 call!613251)))

(declare-fun b!6767450 () Bool)

(assert (=> b!6767450 (= e!4086081 EmptyLang!16591)))

(declare-fun b!6767451 () Bool)

(assert (=> b!6767451 (= e!4086080 (Union!16591 (Concat!25436 call!613250 (regTwo!33694 r!7292)) EmptyLang!16591))))

(declare-fun b!6767452 () Bool)

(assert (=> b!6767452 (= e!4086084 (Concat!25436 call!613252 r!7292))))

(declare-fun b!6767453 () Bool)

(assert (=> b!6767453 (= e!4086082 e!4086084)))

(assert (=> b!6767453 (= c!1256603 ((_ is Star!16591) r!7292))))

(assert (= (and d!2126025 c!1256600) b!6767450))

(assert (= (and d!2126025 (not c!1256600)) b!6767443))

(assert (= (and b!6767443 c!1256602) b!6767442))

(assert (= (and b!6767443 (not c!1256602)) b!6767441))

(assert (= (and b!6767441 c!1256599) b!6767440))

(assert (= (and b!6767441 (not c!1256599)) b!6767453))

(assert (= (and b!6767453 c!1256603) b!6767452))

(assert (= (and b!6767453 (not c!1256603)) b!6767448))

(assert (= (and b!6767448 c!1256601) b!6767449))

(assert (= (and b!6767448 (not c!1256601)) b!6767451))

(assert (= (or b!6767449 b!6767451) bm!613247))

(assert (= (or b!6767452 bm!613247) bm!613245))

(assert (= (or b!6767440 bm!613245) bm!613248))

(assert (= (or b!6767440 b!6767449) bm!613246))

(assert (=> bm!613246 m!7516652))

(declare-fun m!7518514 () Bool)

(assert (=> bm!613246 m!7518514))

(assert (=> b!6767448 m!7516812))

(assert (=> bm!613248 m!7516652))

(declare-fun m!7518516 () Bool)

(assert (=> bm!613248 m!7518516))

(declare-fun m!7518518 () Bool)

(assert (=> d!2126025 m!7518518))

(assert (=> d!2126025 m!7516632))

(assert (=> b!6765408 d!2126025))

(assert (=> b!6765408 d!2125855))

(assert (=> b!6765408 d!2125559))

(declare-fun d!2126027 () Bool)

(assert (=> d!2126027 (= ($colon$colon!2404 (exprs!6475 (Context!11951 Nil!65948)) (ite (or c!1256053 c!1256056) (regTwo!33694 r!7292) r!7292)) (Cons!65948 (ite (or c!1256053 c!1256056) (regTwo!33694 r!7292) r!7292) (exprs!6475 (Context!11951 Nil!65948))))))

(assert (=> bm!612923 d!2126027))

(assert (=> b!6766106 d!2125349))

(declare-fun d!2126029 () Bool)

(assert (=> d!2126029 (= (isEmpty!38306 (tail!12684 (_1!36869 lt!2442636))) ((_ is Nil!65950) (tail!12684 (_1!36869 lt!2442636))))))

(assert (=> b!6765589 d!2126029))

(assert (=> b!6765589 d!2125751))

(declare-fun d!2126031 () Bool)

(assert (=> d!2126031 (= ($colon$colon!2404 (exprs!6475 lt!2442639) (ite (or c!1256231 c!1256234) (regTwo!33694 (reg!16920 r!7292)) (reg!16920 r!7292))) (Cons!65948 (ite (or c!1256231 c!1256234) (regTwo!33694 (reg!16920 r!7292)) (reg!16920 r!7292)) (exprs!6475 lt!2442639)))))

(assert (=> bm!613001 d!2126031))

(declare-fun d!2126033 () Bool)

(declare-fun res!2766931 () Bool)

(declare-fun e!4086100 () Bool)

(assert (=> d!2126033 (=> res!2766931 e!4086100)))

(assert (=> d!2126033 (= res!2766931 ((_ is Nil!65949) lt!2442757))))

(assert (=> d!2126033 (= (noDuplicate!2380 lt!2442757) e!4086100)))

(declare-fun b!6767498 () Bool)

(declare-fun e!4086101 () Bool)

(assert (=> b!6767498 (= e!4086100 e!4086101)))

(declare-fun res!2766932 () Bool)

(assert (=> b!6767498 (=> (not res!2766932) (not e!4086101))))

(declare-fun contains!20275 (List!66073 Context!11950) Bool)

(assert (=> b!6767498 (= res!2766932 (not (contains!20275 (t!379780 lt!2442757) (h!72397 lt!2442757))))))

(declare-fun b!6767499 () Bool)

(assert (=> b!6767499 (= e!4086101 (noDuplicate!2380 (t!379780 lt!2442757)))))

(assert (= (and d!2126033 (not res!2766931)) b!6767498))

(assert (= (and b!6767498 res!2766932) b!6767499))

(declare-fun m!7518530 () Bool)

(assert (=> b!6767498 m!7518530))

(declare-fun m!7518532 () Bool)

(assert (=> b!6767499 m!7518532))

(assert (=> d!2125449 d!2126033))

(declare-fun d!2126047 () Bool)

(declare-fun e!4086108 () Bool)

(assert (=> d!2126047 e!4086108))

(declare-fun res!2766938 () Bool)

(assert (=> d!2126047 (=> (not res!2766938) (not e!4086108))))

(declare-fun res!2766937 () List!66073)

(assert (=> d!2126047 (= res!2766938 (noDuplicate!2380 res!2766937))))

(declare-fun e!4086109 () Bool)

(assert (=> d!2126047 e!4086109))

(assert (=> d!2126047 (= (choose!50425 z!1189) res!2766937)))

(declare-fun b!6767507 () Bool)

(declare-fun e!4086110 () Bool)

(declare-fun tp!1854473 () Bool)

(assert (=> b!6767507 (= e!4086110 tp!1854473)))

(declare-fun tp!1854472 () Bool)

(declare-fun b!6767506 () Bool)

(assert (=> b!6767506 (= e!4086109 (and (inv!84724 (h!72397 res!2766937)) e!4086110 tp!1854472))))

(declare-fun b!6767508 () Bool)

(assert (=> b!6767508 (= e!4086108 (= (content!12837 res!2766937) z!1189))))

(assert (= b!6767506 b!6767507))

(assert (= (and d!2126047 ((_ is Cons!65949) res!2766937)) b!6767506))

(assert (= (and d!2126047 res!2766938) b!6767508))

(declare-fun m!7518534 () Bool)

(assert (=> d!2126047 m!7518534))

(declare-fun m!7518536 () Bool)

(assert (=> b!6767506 m!7518536))

(declare-fun m!7518538 () Bool)

(assert (=> b!6767508 m!7518538))

(assert (=> d!2125449 d!2126047))

(assert (=> b!6765849 d!2125709))

(assert (=> b!6765849 d!2125637))

(declare-fun d!2126049 () Bool)

(assert (=> d!2126049 (= (isEmpty!38309 (tail!12687 (unfocusZipperList!2012 zl!343))) ((_ is Nil!65948) (tail!12687 (unfocusZipperList!2012 zl!343))))))

(assert (=> b!6766144 d!2126049))

(declare-fun d!2126051 () Bool)

(assert (=> d!2126051 (= (tail!12687 (unfocusZipperList!2012 zl!343)) (t!379779 (unfocusZipperList!2012 zl!343)))))

(assert (=> b!6766144 d!2126051))

(assert (=> bm!612899 d!2125963))

(declare-fun d!2126053 () Bool)

(assert (=> d!2126053 (= (Exists!3659 (ite c!1256222 lambda!380605 lambda!380606)) (choose!50417 (ite c!1256222 lambda!380605 lambda!380606)))))

(declare-fun bs!1801144 () Bool)

(assert (= bs!1801144 d!2126053))

(declare-fun m!7518540 () Bool)

(assert (=> bs!1801144 m!7518540))

(assert (=> bm!612994 d!2126053))

(declare-fun d!2126055 () Bool)

(declare-fun res!2766939 () Bool)

(declare-fun e!4086111 () Bool)

(assert (=> d!2126055 (=> res!2766939 e!4086111)))

(assert (=> d!2126055 (= res!2766939 ((_ is Nil!65948) (exprs!6475 (h!72397 zl!343))))))

(assert (=> d!2126055 (= (forall!15787 (exprs!6475 (h!72397 zl!343)) lambda!380607) e!4086111)))

(declare-fun b!6767509 () Bool)

(declare-fun e!4086112 () Bool)

(assert (=> b!6767509 (= e!4086111 e!4086112)))

(declare-fun res!2766940 () Bool)

(assert (=> b!6767509 (=> (not res!2766940) (not e!4086112))))

(assert (=> b!6767509 (= res!2766940 (dynLambda!26315 lambda!380607 (h!72396 (exprs!6475 (h!72397 zl!343)))))))

(declare-fun b!6767510 () Bool)

(assert (=> b!6767510 (= e!4086112 (forall!15787 (t!379779 (exprs!6475 (h!72397 zl!343))) lambda!380607))))

(assert (= (and d!2126055 (not res!2766939)) b!6767509))

(assert (= (and b!6767509 res!2766940) b!6767510))

(declare-fun b_lambda!254837 () Bool)

(assert (=> (not b_lambda!254837) (not b!6767509)))

(declare-fun m!7518542 () Bool)

(assert (=> b!6767509 m!7518542))

(declare-fun m!7518544 () Bool)

(assert (=> b!6767510 m!7518544))

(assert (=> d!2125459 d!2126055))

(assert (=> b!6765596 d!2126029))

(assert (=> b!6765596 d!2125751))

(assert (=> b!6766173 d!2125635))

(declare-fun bm!613249 () Bool)

(declare-fun call!613257 () List!66072)

(declare-fun c!1256607 () Bool)

(declare-fun call!613256 () (InoxSet Context!11950))

(declare-fun c!1256608 () Bool)

(declare-fun c!1256604 () Bool)

(assert (=> bm!613249 (= call!613256 (derivationStepZipperDown!1819 (ite c!1256608 (regTwo!33695 (h!72396 (exprs!6475 lt!2442630))) (ite c!1256604 (regTwo!33694 (h!72396 (exprs!6475 lt!2442630))) (ite c!1256607 (regOne!33694 (h!72396 (exprs!6475 lt!2442630))) (reg!16920 (h!72396 (exprs!6475 lt!2442630)))))) (ite (or c!1256608 c!1256604) (Context!11951 (t!379779 (exprs!6475 lt!2442630))) (Context!11951 call!613257)) (h!72398 s!2326)))))

(declare-fun bm!613250 () Bool)

(declare-fun call!613255 () List!66072)

(assert (=> bm!613250 (= call!613257 call!613255)))

(declare-fun bm!613251 () Bool)

(declare-fun call!613259 () (InoxSet Context!11950))

(assert (=> bm!613251 (= call!613259 call!613256)))

(declare-fun bm!613253 () Bool)

(declare-fun call!613258 () (InoxSet Context!11950))

(assert (=> bm!613253 (= call!613258 (derivationStepZipperDown!1819 (ite c!1256608 (regOne!33695 (h!72396 (exprs!6475 lt!2442630))) (regOne!33694 (h!72396 (exprs!6475 lt!2442630)))) (ite c!1256608 (Context!11951 (t!379779 (exprs!6475 lt!2442630))) (Context!11951 call!613255)) (h!72398 s!2326)))))

(declare-fun b!6767511 () Bool)

(declare-fun e!4086114 () (InoxSet Context!11950))

(declare-fun call!613254 () (InoxSet Context!11950))

(assert (=> b!6767511 (= e!4086114 call!613254)))

(declare-fun b!6767512 () Bool)

(declare-fun e!4086117 () (InoxSet Context!11950))

(assert (=> b!6767512 (= e!4086117 (store ((as const (Array Context!11950 Bool)) false) (Context!11951 (t!379779 (exprs!6475 lt!2442630))) true))))

(declare-fun b!6767513 () Bool)

(declare-fun e!4086118 () (InoxSet Context!11950))

(assert (=> b!6767513 (= e!4086118 ((_ map or) call!613258 call!613259))))

(declare-fun b!6767514 () Bool)

(declare-fun e!4086116 () Bool)

(assert (=> b!6767514 (= c!1256604 e!4086116)))

(declare-fun res!2766941 () Bool)

(assert (=> b!6767514 (=> (not res!2766941) (not e!4086116))))

(assert (=> b!6767514 (= res!2766941 ((_ is Concat!25436) (h!72396 (exprs!6475 lt!2442630))))))

(declare-fun e!4086113 () (InoxSet Context!11950))

(assert (=> b!6767514 (= e!4086113 e!4086118)))

(declare-fun b!6767515 () Bool)

(declare-fun e!4086115 () (InoxSet Context!11950))

(assert (=> b!6767515 (= e!4086118 e!4086115)))

(assert (=> b!6767515 (= c!1256607 ((_ is Concat!25436) (h!72396 (exprs!6475 lt!2442630))))))

(declare-fun bm!613254 () Bool)

(assert (=> bm!613254 (= call!613254 call!613259)))

(declare-fun b!6767516 () Bool)

(declare-fun c!1256605 () Bool)

(assert (=> b!6767516 (= c!1256605 ((_ is Star!16591) (h!72396 (exprs!6475 lt!2442630))))))

(assert (=> b!6767516 (= e!4086115 e!4086114)))

(declare-fun b!6767517 () Bool)

(assert (=> b!6767517 (= e!4086116 (nullable!6574 (regOne!33694 (h!72396 (exprs!6475 lt!2442630)))))))

(declare-fun b!6767518 () Bool)

(assert (=> b!6767518 (= e!4086113 ((_ map or) call!613258 call!613256))))

(declare-fun b!6767519 () Bool)

(assert (=> b!6767519 (= e!4086115 call!613254)))

(declare-fun d!2126057 () Bool)

(declare-fun c!1256606 () Bool)

(assert (=> d!2126057 (= c!1256606 (and ((_ is ElementMatch!16591) (h!72396 (exprs!6475 lt!2442630))) (= (c!1256003 (h!72396 (exprs!6475 lt!2442630))) (h!72398 s!2326))))))

(assert (=> d!2126057 (= (derivationStepZipperDown!1819 (h!72396 (exprs!6475 lt!2442630)) (Context!11951 (t!379779 (exprs!6475 lt!2442630))) (h!72398 s!2326)) e!4086117)))

(declare-fun bm!613252 () Bool)

(assert (=> bm!613252 (= call!613255 ($colon$colon!2404 (exprs!6475 (Context!11951 (t!379779 (exprs!6475 lt!2442630)))) (ite (or c!1256604 c!1256607) (regTwo!33694 (h!72396 (exprs!6475 lt!2442630))) (h!72396 (exprs!6475 lt!2442630)))))))

(declare-fun b!6767520 () Bool)

(assert (=> b!6767520 (= e!4086117 e!4086113)))

(assert (=> b!6767520 (= c!1256608 ((_ is Union!16591) (h!72396 (exprs!6475 lt!2442630))))))

(declare-fun b!6767521 () Bool)

(assert (=> b!6767521 (= e!4086114 ((as const (Array Context!11950 Bool)) false))))

(assert (= (and d!2126057 c!1256606) b!6767512))

(assert (= (and d!2126057 (not c!1256606)) b!6767520))

(assert (= (and b!6767520 c!1256608) b!6767518))

(assert (= (and b!6767520 (not c!1256608)) b!6767514))

(assert (= (and b!6767514 res!2766941) b!6767517))

(assert (= (and b!6767514 c!1256604) b!6767513))

(assert (= (and b!6767514 (not c!1256604)) b!6767515))

(assert (= (and b!6767515 c!1256607) b!6767519))

(assert (= (and b!6767515 (not c!1256607)) b!6767516))

(assert (= (and b!6767516 c!1256605) b!6767511))

(assert (= (and b!6767516 (not c!1256605)) b!6767521))

(assert (= (or b!6767519 b!6767511) bm!613250))

(assert (= (or b!6767519 b!6767511) bm!613254))

(assert (= (or b!6767513 bm!613250) bm!613252))

(assert (= (or b!6767513 bm!613254) bm!613251))

(assert (= (or b!6767518 bm!613251) bm!613249))

(assert (= (or b!6767518 b!6767513) bm!613253))

(declare-fun m!7518546 () Bool)

(assert (=> bm!613252 m!7518546))

(declare-fun m!7518548 () Bool)

(assert (=> bm!613253 m!7518548))

(declare-fun m!7518550 () Bool)

(assert (=> b!6767512 m!7518550))

(declare-fun m!7518552 () Bool)

(assert (=> bm!613249 m!7518552))

(declare-fun m!7518554 () Bool)

(assert (=> b!6767517 m!7518554))

(assert (=> bm!612902 d!2126057))

(declare-fun d!2126059 () Bool)

(assert (=> d!2126059 (= (head!13602 (unfocusZipperList!2012 zl!343)) (h!72396 (unfocusZipperList!2012 zl!343)))))

(assert (=> b!6766140 d!2126059))

(assert (=> bm!612986 d!2125397))

(declare-fun d!2126061 () Bool)

(assert (=> d!2126061 (= (isDefined!13181 (findConcatSeparation!2892 (reg!16920 r!7292) r!7292 Nil!65950 s!2326 s!2326)) (not (isEmpty!38310 (findConcatSeparation!2892 (reg!16920 r!7292) r!7292 Nil!65950 s!2326 s!2326))))))

(declare-fun bs!1801145 () Bool)

(assert (= bs!1801145 d!2126061))

(assert (=> bs!1801145 m!7516552))

(declare-fun m!7518556 () Bool)

(assert (=> bs!1801145 m!7518556))

(assert (=> d!2125425 d!2126061))

(declare-fun bs!1801146 () Bool)

(declare-fun d!2126063 () Bool)

(assert (= bs!1801146 (and d!2126063 b!6766568)))

(declare-fun lambda!380691 () Int)

(assert (=> bs!1801146 (not (= lambda!380691 lambda!380630))))

(declare-fun bs!1801147 () Bool)

(assert (= bs!1801147 (and d!2126063 d!2125393)))

(assert (=> bs!1801147 (= (= r!7292 (Star!16591 (reg!16920 r!7292))) (= lambda!380691 lambda!380583))))

(declare-fun bs!1801148 () Bool)

(assert (= bs!1801148 (and d!2126063 b!6765810)))

(assert (=> bs!1801148 (not (= lambda!380691 lambda!380568))))

(declare-fun bs!1801149 () Bool)

(assert (= bs!1801149 (and d!2126063 b!6766464)))

(assert (=> bs!1801149 (not (= lambda!380691 lambda!380618))))

(declare-fun bs!1801150 () Bool)

(assert (= bs!1801150 (and d!2126063 b!6766622)))

(assert (=> bs!1801150 (not (= lambda!380691 lambda!380638))))

(declare-fun bs!1801151 () Bool)

(assert (= bs!1801151 (and d!2126063 b!6765357)))

(assert (=> bs!1801151 (not (= lambda!380691 lambda!380522))))

(declare-fun bs!1801152 () Bool)

(assert (= bs!1801152 (and d!2126063 d!2125811)))

(assert (=> bs!1801152 (= lambda!380691 lambda!380665)))

(declare-fun bs!1801153 () Bool)

(assert (= bs!1801153 (and d!2126063 b!6766543)))

(assert (=> bs!1801153 (not (= lambda!380691 lambda!380628))))

(declare-fun bs!1801154 () Bool)

(assert (= bs!1801154 (and d!2126063 b!6766563)))

(assert (=> bs!1801154 (not (= lambda!380691 lambda!380629))))

(declare-fun bs!1801155 () Bool)

(assert (= bs!1801155 (and d!2126063 b!6766617)))

(assert (=> bs!1801155 (not (= lambda!380691 lambda!380634))))

(declare-fun bs!1801156 () Bool)

(assert (= bs!1801156 (and d!2126063 b!6766162)))

(assert (=> bs!1801156 (not (= lambda!380691 lambda!380606))))

(declare-fun bs!1801157 () Bool)

(assert (= bs!1801157 (and d!2126063 d!2125425)))

(assert (=> bs!1801157 (= lambda!380691 lambda!380598)))

(declare-fun bs!1801158 () Bool)

(assert (= bs!1801158 (and d!2126063 b!6766157)))

(assert (=> bs!1801158 (not (= lambda!380691 lambda!380605))))

(declare-fun bs!1801159 () Bool)

(assert (= bs!1801159 (and d!2126063 d!2125401)))

(assert (=> bs!1801159 (= lambda!380691 lambda!380594)))

(assert (=> bs!1801147 (not (= lambda!380691 lambda!380586))))

(assert (=> bs!1801152 (not (= lambda!380691 lambda!380666))))

(declare-fun bs!1801160 () Bool)

(assert (= bs!1801160 (and d!2126063 d!2125973)))

(assert (=> bs!1801160 (not (= lambda!380691 lambda!380686))))

(assert (=> bs!1801160 (= (= r!7292 (Star!16591 (reg!16920 r!7292))) (= lambda!380691 lambda!380685))))

(declare-fun bs!1801161 () Bool)

(assert (= bs!1801161 (and d!2126063 b!6765805)))

(assert (=> bs!1801161 (not (= lambda!380691 lambda!380565))))

(declare-fun bs!1801162 () Bool)

(assert (= bs!1801162 (and d!2126063 b!6766459)))

(assert (=> bs!1801162 (not (= lambda!380691 lambda!380617))))

(assert (=> bs!1801159 (not (= lambda!380691 lambda!380595))))

(declare-fun bs!1801163 () Bool)

(assert (= bs!1801163 (and d!2126063 b!6766538)))

(assert (=> bs!1801163 (not (= lambda!380691 lambda!380627))))

(assert (=> bs!1801151 (not (= lambda!380691 lambda!380521))))

(assert (=> bs!1801151 (= lambda!380691 lambda!380520)))

(assert (=> d!2126063 true))

(assert (=> d!2126063 true))

(assert (=> d!2126063 true))

(assert (=> d!2126063 (= (isDefined!13181 (findConcatSeparation!2892 (reg!16920 r!7292) r!7292 Nil!65950 s!2326 s!2326)) (Exists!3659 lambda!380691))))

(assert (=> d!2126063 true))

(declare-fun _$89!3010 () Unit!159873)

(assert (=> d!2126063 (= (choose!50424 (reg!16920 r!7292) r!7292 s!2326) _$89!3010)))

(declare-fun bs!1801164 () Bool)

(assert (= bs!1801164 d!2126063))

(assert (=> bs!1801164 m!7516552))

(assert (=> bs!1801164 m!7516552))

(assert (=> bs!1801164 m!7517178))

(declare-fun m!7518558 () Bool)

(assert (=> bs!1801164 m!7518558))

(assert (=> d!2125425 d!2126063))

(assert (=> d!2125425 d!2125423))

(assert (=> d!2125425 d!2125553))

(declare-fun d!2126065 () Bool)

(assert (=> d!2126065 (= (Exists!3659 lambda!380598) (choose!50417 lambda!380598))))

(declare-fun bs!1801165 () Bool)

(assert (= bs!1801165 d!2126065))

(declare-fun m!7518560 () Bool)

(assert (=> bs!1801165 m!7518560))

(assert (=> d!2125425 d!2126065))

(assert (=> d!2125439 d!2125437))

(assert (=> d!2125439 d!2125435))

(declare-fun d!2126067 () Bool)

(assert (=> d!2126067 (= (matchR!8774 lt!2442635 s!2326) (matchRSpec!3692 lt!2442635 s!2326))))

(assert (=> d!2126067 true))

(declare-fun _$88!5542 () Unit!159873)

(assert (=> d!2126067 (= (choose!50421 lt!2442635 s!2326) _$88!5542)))

(declare-fun bs!1801166 () Bool)

(assert (= bs!1801166 d!2126067))

(assert (=> bs!1801166 m!7516578))

(assert (=> bs!1801166 m!7516576))

(assert (=> d!2125439 d!2126067))

(assert (=> d!2125439 d!2125653))

(assert (=> b!6766169 d!2125635))

(assert (=> b!6765856 d!2125709))

(assert (=> b!6765856 d!2125637))

(declare-fun d!2126069 () Bool)

(assert (=> d!2126069 (= (nullable!6574 (h!72396 (exprs!6475 lt!2442630))) (nullableFct!2480 (h!72396 (exprs!6475 lt!2442630))))))

(declare-fun bs!1801167 () Bool)

(assert (= bs!1801167 d!2126069))

(declare-fun m!7518562 () Bool)

(assert (=> bs!1801167 m!7518562))

(assert (=> b!6765442 d!2126069))

(declare-fun d!2126071 () Bool)

(assert (=> d!2126071 (= (nullable!6574 (regOne!33694 (reg!16920 r!7292))) (nullableFct!2480 (regOne!33694 (reg!16920 r!7292))))))

(declare-fun bs!1801168 () Bool)

(assert (= bs!1801168 d!2126071))

(declare-fun m!7518564 () Bool)

(assert (=> bs!1801168 m!7518564))

(assert (=> b!6766194 d!2126071))

(assert (=> bs!1800516 d!2125443))

(assert (=> d!2125267 d!2125397))

(declare-fun b!6767526 () Bool)

(declare-fun e!4086122 () List!66074)

(assert (=> b!6767526 (= e!4086122 (t!379781 s!2326))))

(declare-fun b!6767529 () Bool)

(declare-fun e!4086121 () Bool)

(declare-fun lt!2442825 () List!66074)

(assert (=> b!6767529 (= e!4086121 (or (not (= (t!379781 s!2326) Nil!65950)) (= lt!2442825 (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) Nil!65950)))))))

(declare-fun b!6767527 () Bool)

(assert (=> b!6767527 (= e!4086122 (Cons!65950 (h!72398 (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) Nil!65950))) (++!14745 (t!379781 (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) Nil!65950))) (t!379781 s!2326))))))

(declare-fun b!6767528 () Bool)

(declare-fun res!2766947 () Bool)

(assert (=> b!6767528 (=> (not res!2766947) (not e!4086121))))

(assert (=> b!6767528 (= res!2766947 (= (size!40628 lt!2442825) (+ (size!40628 (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) Nil!65950))) (size!40628 (t!379781 s!2326)))))))

(declare-fun d!2126073 () Bool)

(assert (=> d!2126073 e!4086121))

(declare-fun res!2766946 () Bool)

(assert (=> d!2126073 (=> (not res!2766946) (not e!4086121))))

(assert (=> d!2126073 (= res!2766946 (= (content!12835 lt!2442825) ((_ map or) (content!12835 (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) Nil!65950))) (content!12835 (t!379781 s!2326)))))))

(assert (=> d!2126073 (= lt!2442825 e!4086122)))

(declare-fun c!1256609 () Bool)

(assert (=> d!2126073 (= c!1256609 ((_ is Nil!65950) (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) Nil!65950))))))

(assert (=> d!2126073 (= (++!14745 (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) Nil!65950)) (t!379781 s!2326)) lt!2442825)))

(assert (= (and d!2126073 c!1256609) b!6767526))

(assert (= (and d!2126073 (not c!1256609)) b!6767527))

(assert (= (and d!2126073 res!2766946) b!6767528))

(assert (= (and b!6767528 res!2766947) b!6767529))

(declare-fun m!7518566 () Bool)

(assert (=> b!6767527 m!7518566))

(declare-fun m!7518568 () Bool)

(assert (=> b!6767528 m!7518568))

(assert (=> b!6767528 m!7517164))

(declare-fun m!7518570 () Bool)

(assert (=> b!6767528 m!7518570))

(declare-fun m!7518572 () Bool)

(assert (=> b!6767528 m!7518572))

(declare-fun m!7518574 () Bool)

(assert (=> d!2126073 m!7518574))

(assert (=> d!2126073 m!7517164))

(declare-fun m!7518576 () Bool)

(assert (=> d!2126073 m!7518576))

(declare-fun m!7518578 () Bool)

(assert (=> d!2126073 m!7518578))

(assert (=> b!6766111 d!2126073))

(declare-fun b!6767530 () Bool)

(declare-fun e!4086124 () List!66074)

(assert (=> b!6767530 (= e!4086124 (Cons!65950 (h!72398 s!2326) Nil!65950))))

(declare-fun b!6767533 () Bool)

(declare-fun e!4086123 () Bool)

(declare-fun lt!2442826 () List!66074)

(assert (=> b!6767533 (= e!4086123 (or (not (= (Cons!65950 (h!72398 s!2326) Nil!65950) Nil!65950)) (= lt!2442826 Nil!65950)))))

(declare-fun b!6767531 () Bool)

(assert (=> b!6767531 (= e!4086124 (Cons!65950 (h!72398 Nil!65950) (++!14745 (t!379781 Nil!65950) (Cons!65950 (h!72398 s!2326) Nil!65950))))))

(declare-fun b!6767532 () Bool)

(declare-fun res!2766949 () Bool)

(assert (=> b!6767532 (=> (not res!2766949) (not e!4086123))))

(assert (=> b!6767532 (= res!2766949 (= (size!40628 lt!2442826) (+ (size!40628 Nil!65950) (size!40628 (Cons!65950 (h!72398 s!2326) Nil!65950)))))))

(declare-fun d!2126075 () Bool)

(assert (=> d!2126075 e!4086123))

(declare-fun res!2766948 () Bool)

(assert (=> d!2126075 (=> (not res!2766948) (not e!4086123))))

(assert (=> d!2126075 (= res!2766948 (= (content!12835 lt!2442826) ((_ map or) (content!12835 Nil!65950) (content!12835 (Cons!65950 (h!72398 s!2326) Nil!65950)))))))

(assert (=> d!2126075 (= lt!2442826 e!4086124)))

(declare-fun c!1256610 () Bool)

(assert (=> d!2126075 (= c!1256610 ((_ is Nil!65950) Nil!65950))))

(assert (=> d!2126075 (= (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) Nil!65950)) lt!2442826)))

(assert (= (and d!2126075 c!1256610) b!6767530))

(assert (= (and d!2126075 (not c!1256610)) b!6767531))

(assert (= (and d!2126075 res!2766948) b!6767532))

(assert (= (and b!6767532 res!2766949) b!6767533))

(declare-fun m!7518580 () Bool)

(assert (=> b!6767531 m!7518580))

(declare-fun m!7518582 () Bool)

(assert (=> b!6767532 m!7518582))

(declare-fun m!7518584 () Bool)

(assert (=> b!6767532 m!7518584))

(declare-fun m!7518586 () Bool)

(assert (=> b!6767532 m!7518586))

(declare-fun m!7518588 () Bool)

(assert (=> d!2126075 m!7518588))

(declare-fun m!7518590 () Bool)

(assert (=> d!2126075 m!7518590))

(declare-fun m!7518592 () Bool)

(assert (=> d!2126075 m!7518592))

(assert (=> b!6766111 d!2126075))

(declare-fun d!2126077 () Bool)

(assert (=> d!2126077 (= (++!14745 (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) Nil!65950)) (t!379781 s!2326)) s!2326)))

(declare-fun lt!2442829 () Unit!159873)

(declare-fun choose!50427 (List!66074 C!33452 List!66074 List!66074) Unit!159873)

(assert (=> d!2126077 (= lt!2442829 (choose!50427 Nil!65950 (h!72398 s!2326) (t!379781 s!2326) s!2326))))

(assert (=> d!2126077 (= (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) (t!379781 s!2326))) s!2326)))

(assert (=> d!2126077 (= (lemmaMoveElementToOtherListKeepsConcatEq!2716 Nil!65950 (h!72398 s!2326) (t!379781 s!2326) s!2326) lt!2442829)))

(declare-fun bs!1801169 () Bool)

(assert (= bs!1801169 d!2126077))

(assert (=> bs!1801169 m!7517164))

(assert (=> bs!1801169 m!7517164))

(assert (=> bs!1801169 m!7517166))

(declare-fun m!7518594 () Bool)

(assert (=> bs!1801169 m!7518594))

(declare-fun m!7518596 () Bool)

(assert (=> bs!1801169 m!7518596))

(assert (=> b!6766111 d!2126077))

(declare-fun b!6767534 () Bool)

(declare-fun e!4086125 () Bool)

(assert (=> b!6767534 (= e!4086125 (matchR!8774 r!7292 (t!379781 s!2326)))))

(declare-fun b!6767535 () Bool)

(declare-fun res!2766951 () Bool)

(declare-fun e!4086129 () Bool)

(assert (=> b!6767535 (=> (not res!2766951) (not e!4086129))))

(declare-fun lt!2442832 () Option!16478)

(assert (=> b!6767535 (= res!2766951 (matchR!8774 r!7292 (_2!36869 (get!22956 lt!2442832))))))

(declare-fun b!6767536 () Bool)

(declare-fun res!2766950 () Bool)

(assert (=> b!6767536 (=> (not res!2766950) (not e!4086129))))

(assert (=> b!6767536 (= res!2766950 (matchR!8774 (reg!16920 r!7292) (_1!36869 (get!22956 lt!2442832))))))

(declare-fun d!2126079 () Bool)

(declare-fun e!4086127 () Bool)

(assert (=> d!2126079 e!4086127))

(declare-fun res!2766952 () Bool)

(assert (=> d!2126079 (=> res!2766952 e!4086127)))

(assert (=> d!2126079 (= res!2766952 e!4086129)))

(declare-fun res!2766954 () Bool)

(assert (=> d!2126079 (=> (not res!2766954) (not e!4086129))))

(assert (=> d!2126079 (= res!2766954 (isDefined!13181 lt!2442832))))

(declare-fun e!4086128 () Option!16478)

(assert (=> d!2126079 (= lt!2442832 e!4086128)))

(declare-fun c!1256612 () Bool)

(assert (=> d!2126079 (= c!1256612 e!4086125)))

(declare-fun res!2766953 () Bool)

(assert (=> d!2126079 (=> (not res!2766953) (not e!4086125))))

(assert (=> d!2126079 (= res!2766953 (matchR!8774 (reg!16920 r!7292) (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) Nil!65950))))))

(assert (=> d!2126079 (validRegex!8327 (reg!16920 r!7292))))

(assert (=> d!2126079 (= (findConcatSeparation!2892 (reg!16920 r!7292) r!7292 (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) Nil!65950)) (t!379781 s!2326) s!2326) lt!2442832)))

(declare-fun b!6767537 () Bool)

(assert (=> b!6767537 (= e!4086127 (not (isDefined!13181 lt!2442832)))))

(declare-fun b!6767538 () Bool)

(assert (=> b!6767538 (= e!4086129 (= (++!14745 (_1!36869 (get!22956 lt!2442832)) (_2!36869 (get!22956 lt!2442832))) s!2326))))

(declare-fun b!6767539 () Bool)

(declare-fun lt!2442831 () Unit!159873)

(declare-fun lt!2442830 () Unit!159873)

(assert (=> b!6767539 (= lt!2442831 lt!2442830)))

(assert (=> b!6767539 (= (++!14745 (++!14745 (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) Nil!65950)) (Cons!65950 (h!72398 (t!379781 s!2326)) Nil!65950)) (t!379781 (t!379781 s!2326))) s!2326)))

(assert (=> b!6767539 (= lt!2442830 (lemmaMoveElementToOtherListKeepsConcatEq!2716 (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) Nil!65950)) (h!72398 (t!379781 s!2326)) (t!379781 (t!379781 s!2326)) s!2326))))

(declare-fun e!4086126 () Option!16478)

(assert (=> b!6767539 (= e!4086126 (findConcatSeparation!2892 (reg!16920 r!7292) r!7292 (++!14745 (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) Nil!65950)) (Cons!65950 (h!72398 (t!379781 s!2326)) Nil!65950)) (t!379781 (t!379781 s!2326)) s!2326))))

(declare-fun b!6767540 () Bool)

(assert (=> b!6767540 (= e!4086128 e!4086126)))

(declare-fun c!1256611 () Bool)

(assert (=> b!6767540 (= c!1256611 ((_ is Nil!65950) (t!379781 s!2326)))))

(declare-fun b!6767541 () Bool)

(assert (=> b!6767541 (= e!4086126 None!16477)))

(declare-fun b!6767542 () Bool)

(assert (=> b!6767542 (= e!4086128 (Some!16477 (tuple2!67133 (++!14745 Nil!65950 (Cons!65950 (h!72398 s!2326) Nil!65950)) (t!379781 s!2326))))))

(assert (= (and d!2126079 res!2766953) b!6767534))

(assert (= (and d!2126079 c!1256612) b!6767542))

(assert (= (and d!2126079 (not c!1256612)) b!6767540))

(assert (= (and b!6767540 c!1256611) b!6767541))

(assert (= (and b!6767540 (not c!1256611)) b!6767539))

(assert (= (and d!2126079 res!2766954) b!6767536))

(assert (= (and b!6767536 res!2766950) b!6767535))

(assert (= (and b!6767535 res!2766951) b!6767538))

(assert (= (and d!2126079 (not res!2766952)) b!6767537))

(declare-fun m!7518598 () Bool)

(assert (=> d!2126079 m!7518598))

(assert (=> d!2126079 m!7517164))

(declare-fun m!7518600 () Bool)

(assert (=> d!2126079 m!7518600))

(assert (=> d!2126079 m!7516838))

(declare-fun m!7518602 () Bool)

(assert (=> b!6767536 m!7518602))

(declare-fun m!7518604 () Bool)

(assert (=> b!6767536 m!7518604))

(assert (=> b!6767535 m!7518602))

(declare-fun m!7518606 () Bool)

(assert (=> b!6767535 m!7518606))

(declare-fun m!7518608 () Bool)

(assert (=> b!6767534 m!7518608))

(assert (=> b!6767539 m!7517164))

(declare-fun m!7518610 () Bool)

(assert (=> b!6767539 m!7518610))

(assert (=> b!6767539 m!7518610))

(declare-fun m!7518612 () Bool)

(assert (=> b!6767539 m!7518612))

(assert (=> b!6767539 m!7517164))

(declare-fun m!7518614 () Bool)

(assert (=> b!6767539 m!7518614))

(assert (=> b!6767539 m!7518610))

(declare-fun m!7518616 () Bool)

(assert (=> b!6767539 m!7518616))

(assert (=> b!6767537 m!7518598))

(assert (=> b!6767538 m!7518602))

(declare-fun m!7518618 () Bool)

(assert (=> b!6767538 m!7518618))

(assert (=> b!6766111 d!2126079))

(declare-fun c!1256617 () Bool)

(declare-fun call!613262 () (InoxSet Context!11950))

(declare-fun c!1256613 () Bool)

(declare-fun call!613263 () List!66072)

(declare-fun c!1256616 () Bool)

(declare-fun bm!613255 () Bool)

(assert (=> bm!613255 (= call!613262 (derivationStepZipperDown!1819 (ite c!1256617 (regTwo!33695 (ite c!1256057 (regTwo!33695 r!7292) (ite c!1256053 (regTwo!33694 r!7292) (ite c!1256056 (regOne!33694 r!7292) (reg!16920 r!7292))))) (ite c!1256613 (regTwo!33694 (ite c!1256057 (regTwo!33695 r!7292) (ite c!1256053 (regTwo!33694 r!7292) (ite c!1256056 (regOne!33694 r!7292) (reg!16920 r!7292))))) (ite c!1256616 (regOne!33694 (ite c!1256057 (regTwo!33695 r!7292) (ite c!1256053 (regTwo!33694 r!7292) (ite c!1256056 (regOne!33694 r!7292) (reg!16920 r!7292))))) (reg!16920 (ite c!1256057 (regTwo!33695 r!7292) (ite c!1256053 (regTwo!33694 r!7292) (ite c!1256056 (regOne!33694 r!7292) (reg!16920 r!7292)))))))) (ite (or c!1256617 c!1256613) (ite (or c!1256057 c!1256053) (Context!11951 Nil!65948) (Context!11951 call!612928)) (Context!11951 call!613263)) (h!72398 s!2326)))))

(declare-fun bm!613256 () Bool)

(declare-fun call!613261 () List!66072)

(assert (=> bm!613256 (= call!613263 call!613261)))

(declare-fun bm!613257 () Bool)

(declare-fun call!613265 () (InoxSet Context!11950))

(assert (=> bm!613257 (= call!613265 call!613262)))

(declare-fun bm!613259 () Bool)

(declare-fun call!613264 () (InoxSet Context!11950))

(assert (=> bm!613259 (= call!613264 (derivationStepZipperDown!1819 (ite c!1256617 (regOne!33695 (ite c!1256057 (regTwo!33695 r!7292) (ite c!1256053 (regTwo!33694 r!7292) (ite c!1256056 (regOne!33694 r!7292) (reg!16920 r!7292))))) (regOne!33694 (ite c!1256057 (regTwo!33695 r!7292) (ite c!1256053 (regTwo!33694 r!7292) (ite c!1256056 (regOne!33694 r!7292) (reg!16920 r!7292)))))) (ite c!1256617 (ite (or c!1256057 c!1256053) (Context!11951 Nil!65948) (Context!11951 call!612928)) (Context!11951 call!613261)) (h!72398 s!2326)))))

(declare-fun b!6767543 () Bool)

(declare-fun e!4086131 () (InoxSet Context!11950))

(declare-fun call!613260 () (InoxSet Context!11950))

(assert (=> b!6767543 (= e!4086131 call!613260)))

(declare-fun e!4086134 () (InoxSet Context!11950))

(declare-fun b!6767544 () Bool)

(assert (=> b!6767544 (= e!4086134 (store ((as const (Array Context!11950 Bool)) false) (ite (or c!1256057 c!1256053) (Context!11951 Nil!65948) (Context!11951 call!612928)) true))))

(declare-fun b!6767545 () Bool)

(declare-fun e!4086135 () (InoxSet Context!11950))

(assert (=> b!6767545 (= e!4086135 ((_ map or) call!613264 call!613265))))

(declare-fun b!6767546 () Bool)

(declare-fun e!4086133 () Bool)

(assert (=> b!6767546 (= c!1256613 e!4086133)))

(declare-fun res!2766955 () Bool)

(assert (=> b!6767546 (=> (not res!2766955) (not e!4086133))))

(assert (=> b!6767546 (= res!2766955 ((_ is Concat!25436) (ite c!1256057 (regTwo!33695 r!7292) (ite c!1256053 (regTwo!33694 r!7292) (ite c!1256056 (regOne!33694 r!7292) (reg!16920 r!7292))))))))

(declare-fun e!4086130 () (InoxSet Context!11950))

(assert (=> b!6767546 (= e!4086130 e!4086135)))

(declare-fun b!6767547 () Bool)

(declare-fun e!4086132 () (InoxSet Context!11950))

(assert (=> b!6767547 (= e!4086135 e!4086132)))

(assert (=> b!6767547 (= c!1256616 ((_ is Concat!25436) (ite c!1256057 (regTwo!33695 r!7292) (ite c!1256053 (regTwo!33694 r!7292) (ite c!1256056 (regOne!33694 r!7292) (reg!16920 r!7292))))))))

(declare-fun bm!613260 () Bool)

(assert (=> bm!613260 (= call!613260 call!613265)))

(declare-fun b!6767548 () Bool)

(declare-fun c!1256614 () Bool)

(assert (=> b!6767548 (= c!1256614 ((_ is Star!16591) (ite c!1256057 (regTwo!33695 r!7292) (ite c!1256053 (regTwo!33694 r!7292) (ite c!1256056 (regOne!33694 r!7292) (reg!16920 r!7292))))))))

(assert (=> b!6767548 (= e!4086132 e!4086131)))

(declare-fun b!6767549 () Bool)

(assert (=> b!6767549 (= e!4086133 (nullable!6574 (regOne!33694 (ite c!1256057 (regTwo!33695 r!7292) (ite c!1256053 (regTwo!33694 r!7292) (ite c!1256056 (regOne!33694 r!7292) (reg!16920 r!7292)))))))))

(declare-fun b!6767550 () Bool)

(assert (=> b!6767550 (= e!4086130 ((_ map or) call!613264 call!613262))))

(declare-fun b!6767551 () Bool)

(assert (=> b!6767551 (= e!4086132 call!613260)))

(declare-fun d!2126081 () Bool)

(declare-fun c!1256615 () Bool)

(assert (=> d!2126081 (= c!1256615 (and ((_ is ElementMatch!16591) (ite c!1256057 (regTwo!33695 r!7292) (ite c!1256053 (regTwo!33694 r!7292) (ite c!1256056 (regOne!33694 r!7292) (reg!16920 r!7292))))) (= (c!1256003 (ite c!1256057 (regTwo!33695 r!7292) (ite c!1256053 (regTwo!33694 r!7292) (ite c!1256056 (regOne!33694 r!7292) (reg!16920 r!7292))))) (h!72398 s!2326))))))

(assert (=> d!2126081 (= (derivationStepZipperDown!1819 (ite c!1256057 (regTwo!33695 r!7292) (ite c!1256053 (regTwo!33694 r!7292) (ite c!1256056 (regOne!33694 r!7292) (reg!16920 r!7292)))) (ite (or c!1256057 c!1256053) (Context!11951 Nil!65948) (Context!11951 call!612928)) (h!72398 s!2326)) e!4086134)))

(declare-fun bm!613258 () Bool)

(assert (=> bm!613258 (= call!613261 ($colon$colon!2404 (exprs!6475 (ite (or c!1256057 c!1256053) (Context!11951 Nil!65948) (Context!11951 call!612928))) (ite (or c!1256613 c!1256616) (regTwo!33694 (ite c!1256057 (regTwo!33695 r!7292) (ite c!1256053 (regTwo!33694 r!7292) (ite c!1256056 (regOne!33694 r!7292) (reg!16920 r!7292))))) (ite c!1256057 (regTwo!33695 r!7292) (ite c!1256053 (regTwo!33694 r!7292) (ite c!1256056 (regOne!33694 r!7292) (reg!16920 r!7292)))))))))

(declare-fun b!6767552 () Bool)

(assert (=> b!6767552 (= e!4086134 e!4086130)))

(assert (=> b!6767552 (= c!1256617 ((_ is Union!16591) (ite c!1256057 (regTwo!33695 r!7292) (ite c!1256053 (regTwo!33694 r!7292) (ite c!1256056 (regOne!33694 r!7292) (reg!16920 r!7292))))))))

(declare-fun b!6767553 () Bool)

(assert (=> b!6767553 (= e!4086131 ((as const (Array Context!11950 Bool)) false))))

(assert (= (and d!2126081 c!1256615) b!6767544))

(assert (= (and d!2126081 (not c!1256615)) b!6767552))

(assert (= (and b!6767552 c!1256617) b!6767550))

(assert (= (and b!6767552 (not c!1256617)) b!6767546))

(assert (= (and b!6767546 res!2766955) b!6767549))

(assert (= (and b!6767546 c!1256613) b!6767545))

(assert (= (and b!6767546 (not c!1256613)) b!6767547))

(assert (= (and b!6767547 c!1256616) b!6767551))

(assert (= (and b!6767547 (not c!1256616)) b!6767548))

(assert (= (and b!6767548 c!1256614) b!6767543))

(assert (= (and b!6767548 (not c!1256614)) b!6767553))

(assert (= (or b!6767551 b!6767543) bm!613256))

(assert (= (or b!6767551 b!6767543) bm!613260))

(assert (= (or b!6767545 bm!613256) bm!613258))

(assert (= (or b!6767545 bm!613260) bm!613257))

(assert (= (or b!6767550 bm!613257) bm!613255))

(assert (= (or b!6767550 b!6767545) bm!613259))

(declare-fun m!7518620 () Bool)

(assert (=> bm!613258 m!7518620))

(declare-fun m!7518622 () Bool)

(assert (=> bm!613259 m!7518622))

(declare-fun m!7518624 () Bool)

(assert (=> b!6767544 m!7518624))

(declare-fun m!7518626 () Bool)

(assert (=> bm!613255 m!7518626))

(declare-fun m!7518628 () Bool)

(assert (=> b!6767549 m!7518628))

(assert (=> bm!612920 d!2126081))

(assert (=> b!6765584 d!2125545))

(declare-fun d!2126083 () Bool)

(assert (=> d!2126083 true))

(assert (=> d!2126083 true))

(declare-fun res!2766956 () Bool)

(assert (=> d!2126083 (= (choose!50417 lambda!380520) res!2766956)))

(assert (=> d!2125273 d!2126083))

(assert (=> d!2125311 d!2125713))

(assert (=> d!2125311 d!2125553))

(declare-fun b!6767554 () Bool)

(declare-fun e!4086136 () Bool)

(declare-fun tp!1854474 () Bool)

(declare-fun tp!1854475 () Bool)

(assert (=> b!6767554 (= e!4086136 (and tp!1854474 tp!1854475))))

(assert (=> b!6766248 (= tp!1854280 e!4086136)))

(assert (= (and b!6766248 ((_ is Cons!65948) (exprs!6475 (h!72397 (t!379780 zl!343))))) b!6767554))

(declare-fun b!6767555 () Bool)

(declare-fun e!4086137 () Bool)

(assert (=> b!6767555 (= e!4086137 tp_is_empty!42435)))

(declare-fun b!6767558 () Bool)

(declare-fun tp!1854478 () Bool)

(declare-fun tp!1854479 () Bool)

(assert (=> b!6767558 (= e!4086137 (and tp!1854478 tp!1854479))))

(assert (=> b!6766226 (= tp!1854255 e!4086137)))

(declare-fun b!6767557 () Bool)

(declare-fun tp!1854480 () Bool)

(assert (=> b!6767557 (= e!4086137 tp!1854480)))

(declare-fun b!6767556 () Bool)

(declare-fun tp!1854476 () Bool)

(declare-fun tp!1854477 () Bool)

(assert (=> b!6767556 (= e!4086137 (and tp!1854476 tp!1854477))))

(assert (= (and b!6766226 ((_ is ElementMatch!16591) (regOne!33695 (regTwo!33694 r!7292)))) b!6767555))

(assert (= (and b!6766226 ((_ is Concat!25436) (regOne!33695 (regTwo!33694 r!7292)))) b!6767556))

(assert (= (and b!6766226 ((_ is Star!16591) (regOne!33695 (regTwo!33694 r!7292)))) b!6767557))

(assert (= (and b!6766226 ((_ is Union!16591) (regOne!33695 (regTwo!33694 r!7292)))) b!6767558))

(declare-fun b!6767559 () Bool)

(declare-fun e!4086138 () Bool)

(assert (=> b!6767559 (= e!4086138 tp_is_empty!42435)))

(declare-fun b!6767562 () Bool)

(declare-fun tp!1854483 () Bool)

(declare-fun tp!1854484 () Bool)

(assert (=> b!6767562 (= e!4086138 (and tp!1854483 tp!1854484))))

(assert (=> b!6766226 (= tp!1854256 e!4086138)))

(declare-fun b!6767561 () Bool)

(declare-fun tp!1854485 () Bool)

(assert (=> b!6767561 (= e!4086138 tp!1854485)))

(declare-fun b!6767560 () Bool)

(declare-fun tp!1854481 () Bool)

(declare-fun tp!1854482 () Bool)

(assert (=> b!6767560 (= e!4086138 (and tp!1854481 tp!1854482))))

(assert (= (and b!6766226 ((_ is ElementMatch!16591) (regTwo!33695 (regTwo!33694 r!7292)))) b!6767559))

(assert (= (and b!6766226 ((_ is Concat!25436) (regTwo!33695 (regTwo!33694 r!7292)))) b!6767560))

(assert (= (and b!6766226 ((_ is Star!16591) (regTwo!33695 (regTwo!33694 r!7292)))) b!6767561))

(assert (= (and b!6766226 ((_ is Union!16591) (regTwo!33695 (regTwo!33694 r!7292)))) b!6767562))

(declare-fun b!6767564 () Bool)

(declare-fun e!4086140 () Bool)

(declare-fun tp!1854486 () Bool)

(assert (=> b!6767564 (= e!4086140 tp!1854486)))

(declare-fun tp!1854487 () Bool)

(declare-fun b!6767563 () Bool)

(declare-fun e!4086139 () Bool)

(assert (=> b!6767563 (= e!4086139 (and (inv!84724 (h!72397 (t!379780 (t!379780 zl!343)))) e!4086140 tp!1854487))))

(assert (=> b!6766247 (= tp!1854281 e!4086139)))

(assert (= b!6767563 b!6767564))

(assert (= (and b!6766247 ((_ is Cons!65949) (t!379780 (t!379780 zl!343)))) b!6767563))

(declare-fun m!7518630 () Bool)

(assert (=> b!6767563 m!7518630))

(declare-fun b!6767565 () Bool)

(declare-fun e!4086141 () Bool)

(assert (=> b!6767565 (= e!4086141 tp_is_empty!42435)))

(declare-fun b!6767568 () Bool)

(declare-fun tp!1854490 () Bool)

(declare-fun tp!1854491 () Bool)

(assert (=> b!6767568 (= e!4086141 (and tp!1854490 tp!1854491))))

(assert (=> b!6766225 (= tp!1854257 e!4086141)))

(declare-fun b!6767567 () Bool)

(declare-fun tp!1854492 () Bool)

(assert (=> b!6767567 (= e!4086141 tp!1854492)))

(declare-fun b!6767566 () Bool)

(declare-fun tp!1854488 () Bool)

(declare-fun tp!1854489 () Bool)

(assert (=> b!6767566 (= e!4086141 (and tp!1854488 tp!1854489))))

(assert (= (and b!6766225 ((_ is ElementMatch!16591) (reg!16920 (regTwo!33694 r!7292)))) b!6767565))

(assert (= (and b!6766225 ((_ is Concat!25436) (reg!16920 (regTwo!33694 r!7292)))) b!6767566))

(assert (= (and b!6766225 ((_ is Star!16591) (reg!16920 (regTwo!33694 r!7292)))) b!6767567))

(assert (= (and b!6766225 ((_ is Union!16591) (reg!16920 (regTwo!33694 r!7292)))) b!6767568))

(declare-fun b!6767569 () Bool)

(declare-fun e!4086142 () Bool)

(assert (=> b!6767569 (= e!4086142 tp_is_empty!42435)))

(declare-fun b!6767572 () Bool)

(declare-fun tp!1854495 () Bool)

(declare-fun tp!1854496 () Bool)

(assert (=> b!6767572 (= e!4086142 (and tp!1854495 tp!1854496))))

(assert (=> b!6766224 (= tp!1854253 e!4086142)))

(declare-fun b!6767571 () Bool)

(declare-fun tp!1854497 () Bool)

(assert (=> b!6767571 (= e!4086142 tp!1854497)))

(declare-fun b!6767570 () Bool)

(declare-fun tp!1854493 () Bool)

(declare-fun tp!1854494 () Bool)

(assert (=> b!6767570 (= e!4086142 (and tp!1854493 tp!1854494))))

(assert (= (and b!6766224 ((_ is ElementMatch!16591) (regOne!33694 (regTwo!33694 r!7292)))) b!6767569))

(assert (= (and b!6766224 ((_ is Concat!25436) (regOne!33694 (regTwo!33694 r!7292)))) b!6767570))

(assert (= (and b!6766224 ((_ is Star!16591) (regOne!33694 (regTwo!33694 r!7292)))) b!6767571))

(assert (= (and b!6766224 ((_ is Union!16591) (regOne!33694 (regTwo!33694 r!7292)))) b!6767572))

(declare-fun b!6767573 () Bool)

(declare-fun e!4086143 () Bool)

(assert (=> b!6767573 (= e!4086143 tp_is_empty!42435)))

(declare-fun b!6767576 () Bool)

(declare-fun tp!1854500 () Bool)

(declare-fun tp!1854501 () Bool)

(assert (=> b!6767576 (= e!4086143 (and tp!1854500 tp!1854501))))

(assert (=> b!6766224 (= tp!1854254 e!4086143)))

(declare-fun b!6767575 () Bool)

(declare-fun tp!1854502 () Bool)

(assert (=> b!6767575 (= e!4086143 tp!1854502)))

(declare-fun b!6767574 () Bool)

(declare-fun tp!1854498 () Bool)

(declare-fun tp!1854499 () Bool)

(assert (=> b!6767574 (= e!4086143 (and tp!1854498 tp!1854499))))

(assert (= (and b!6766224 ((_ is ElementMatch!16591) (regTwo!33694 (regTwo!33694 r!7292)))) b!6767573))

(assert (= (and b!6766224 ((_ is Concat!25436) (regTwo!33694 (regTwo!33694 r!7292)))) b!6767574))

(assert (= (and b!6766224 ((_ is Star!16591) (regTwo!33694 (regTwo!33694 r!7292)))) b!6767575))

(assert (= (and b!6766224 ((_ is Union!16591) (regTwo!33694 (regTwo!33694 r!7292)))) b!6767576))

(declare-fun b!6767577 () Bool)

(declare-fun e!4086144 () Bool)

(assert (=> b!6767577 (= e!4086144 tp_is_empty!42435)))

(declare-fun b!6767580 () Bool)

(declare-fun tp!1854505 () Bool)

(declare-fun tp!1854506 () Bool)

(assert (=> b!6767580 (= e!4086144 (and tp!1854505 tp!1854506))))

(assert (=> b!6766240 (= tp!1854274 e!4086144)))

(declare-fun b!6767579 () Bool)

(declare-fun tp!1854507 () Bool)

(assert (=> b!6767579 (= e!4086144 tp!1854507)))

(declare-fun b!6767578 () Bool)

(declare-fun tp!1854503 () Bool)

(declare-fun tp!1854504 () Bool)

(assert (=> b!6767578 (= e!4086144 (and tp!1854503 tp!1854504))))

(assert (= (and b!6766240 ((_ is ElementMatch!16591) (h!72396 (exprs!6475 (h!72397 zl!343))))) b!6767577))

(assert (= (and b!6766240 ((_ is Concat!25436) (h!72396 (exprs!6475 (h!72397 zl!343))))) b!6767578))

(assert (= (and b!6766240 ((_ is Star!16591) (h!72396 (exprs!6475 (h!72397 zl!343))))) b!6767579))

(assert (= (and b!6766240 ((_ is Union!16591) (h!72396 (exprs!6475 (h!72397 zl!343))))) b!6767580))

(declare-fun b!6767581 () Bool)

(declare-fun e!4086145 () Bool)

(declare-fun tp!1854508 () Bool)

(declare-fun tp!1854509 () Bool)

(assert (=> b!6767581 (= e!4086145 (and tp!1854508 tp!1854509))))

(assert (=> b!6766240 (= tp!1854275 e!4086145)))

(assert (= (and b!6766240 ((_ is Cons!65948) (t!379779 (exprs!6475 (h!72397 zl!343))))) b!6767581))

(declare-fun b!6767582 () Bool)

(declare-fun e!4086146 () Bool)

(assert (=> b!6767582 (= e!4086146 tp_is_empty!42435)))

(declare-fun b!6767585 () Bool)

(declare-fun tp!1854512 () Bool)

(declare-fun tp!1854513 () Bool)

(assert (=> b!6767585 (= e!4086146 (and tp!1854512 tp!1854513))))

(assert (=> b!6766208 (= tp!1854236 e!4086146)))

(declare-fun b!6767584 () Bool)

(declare-fun tp!1854514 () Bool)

(assert (=> b!6767584 (= e!4086146 tp!1854514)))

(declare-fun b!6767583 () Bool)

(declare-fun tp!1854510 () Bool)

(declare-fun tp!1854511 () Bool)

(assert (=> b!6767583 (= e!4086146 (and tp!1854510 tp!1854511))))

(assert (= (and b!6766208 ((_ is ElementMatch!16591) (h!72396 (exprs!6475 setElem!46245)))) b!6767582))

(assert (= (and b!6766208 ((_ is Concat!25436) (h!72396 (exprs!6475 setElem!46245)))) b!6767583))

(assert (= (and b!6766208 ((_ is Star!16591) (h!72396 (exprs!6475 setElem!46245)))) b!6767584))

(assert (= (and b!6766208 ((_ is Union!16591) (h!72396 (exprs!6475 setElem!46245)))) b!6767585))

(declare-fun b!6767586 () Bool)

(declare-fun e!4086147 () Bool)

(declare-fun tp!1854515 () Bool)

(declare-fun tp!1854516 () Bool)

(assert (=> b!6767586 (= e!4086147 (and tp!1854515 tp!1854516))))

(assert (=> b!6766208 (= tp!1854237 e!4086147)))

(assert (= (and b!6766208 ((_ is Cons!65948) (t!379779 (exprs!6475 setElem!46245)))) b!6767586))

(declare-fun b!6767587 () Bool)

(declare-fun e!4086148 () Bool)

(assert (=> b!6767587 (= e!4086148 tp_is_empty!42435)))

(declare-fun b!6767590 () Bool)

(declare-fun tp!1854519 () Bool)

(declare-fun tp!1854520 () Bool)

(assert (=> b!6767590 (= e!4086148 (and tp!1854519 tp!1854520))))

(assert (=> b!6766239 (= tp!1854271 e!4086148)))

(declare-fun b!6767589 () Bool)

(declare-fun tp!1854521 () Bool)

(assert (=> b!6767589 (= e!4086148 tp!1854521)))

(declare-fun b!6767588 () Bool)

(declare-fun tp!1854517 () Bool)

(declare-fun tp!1854518 () Bool)

(assert (=> b!6767588 (= e!4086148 (and tp!1854517 tp!1854518))))

(assert (= (and b!6766239 ((_ is ElementMatch!16591) (regOne!33695 (regTwo!33695 r!7292)))) b!6767587))

(assert (= (and b!6766239 ((_ is Concat!25436) (regOne!33695 (regTwo!33695 r!7292)))) b!6767588))

(assert (= (and b!6766239 ((_ is Star!16591) (regOne!33695 (regTwo!33695 r!7292)))) b!6767589))

(assert (= (and b!6766239 ((_ is Union!16591) (regOne!33695 (regTwo!33695 r!7292)))) b!6767590))

(declare-fun b!6767591 () Bool)

(declare-fun e!4086149 () Bool)

(assert (=> b!6767591 (= e!4086149 tp_is_empty!42435)))

(declare-fun b!6767594 () Bool)

(declare-fun tp!1854524 () Bool)

(declare-fun tp!1854525 () Bool)

(assert (=> b!6767594 (= e!4086149 (and tp!1854524 tp!1854525))))

(assert (=> b!6766239 (= tp!1854272 e!4086149)))

(declare-fun b!6767593 () Bool)

(declare-fun tp!1854526 () Bool)

(assert (=> b!6767593 (= e!4086149 tp!1854526)))

(declare-fun b!6767592 () Bool)

(declare-fun tp!1854522 () Bool)

(declare-fun tp!1854523 () Bool)

(assert (=> b!6767592 (= e!4086149 (and tp!1854522 tp!1854523))))

(assert (= (and b!6766239 ((_ is ElementMatch!16591) (regTwo!33695 (regTwo!33695 r!7292)))) b!6767591))

(assert (= (and b!6766239 ((_ is Concat!25436) (regTwo!33695 (regTwo!33695 r!7292)))) b!6767592))

(assert (= (and b!6766239 ((_ is Star!16591) (regTwo!33695 (regTwo!33695 r!7292)))) b!6767593))

(assert (= (and b!6766239 ((_ is Union!16591) (regTwo!33695 (regTwo!33695 r!7292)))) b!6767594))

(declare-fun b!6767595 () Bool)

(declare-fun e!4086150 () Bool)

(declare-fun tp!1854527 () Bool)

(declare-fun tp!1854528 () Bool)

(assert (=> b!6767595 (= e!4086150 (and tp!1854527 tp!1854528))))

(assert (=> b!6766231 (= tp!1854263 e!4086150)))

(assert (= (and b!6766231 ((_ is Cons!65948) (exprs!6475 setElem!46251))) b!6767595))

(declare-fun b!6767596 () Bool)

(declare-fun e!4086151 () Bool)

(assert (=> b!6767596 (= e!4086151 tp_is_empty!42435)))

(declare-fun b!6767599 () Bool)

(declare-fun tp!1854531 () Bool)

(declare-fun tp!1854532 () Bool)

(assert (=> b!6767599 (= e!4086151 (and tp!1854531 tp!1854532))))

(assert (=> b!6766238 (= tp!1854273 e!4086151)))

(declare-fun b!6767598 () Bool)

(declare-fun tp!1854533 () Bool)

(assert (=> b!6767598 (= e!4086151 tp!1854533)))

(declare-fun b!6767597 () Bool)

(declare-fun tp!1854529 () Bool)

(declare-fun tp!1854530 () Bool)

(assert (=> b!6767597 (= e!4086151 (and tp!1854529 tp!1854530))))

(assert (= (and b!6766238 ((_ is ElementMatch!16591) (reg!16920 (regTwo!33695 r!7292)))) b!6767596))

(assert (= (and b!6766238 ((_ is Concat!25436) (reg!16920 (regTwo!33695 r!7292)))) b!6767597))

(assert (= (and b!6766238 ((_ is Star!16591) (reg!16920 (regTwo!33695 r!7292)))) b!6767598))

(assert (= (and b!6766238 ((_ is Union!16591) (reg!16920 (regTwo!33695 r!7292)))) b!6767599))

(declare-fun b!6767600 () Bool)

(declare-fun e!4086152 () Bool)

(assert (=> b!6767600 (= e!4086152 tp_is_empty!42435)))

(declare-fun b!6767603 () Bool)

(declare-fun tp!1854536 () Bool)

(declare-fun tp!1854537 () Bool)

(assert (=> b!6767603 (= e!4086152 (and tp!1854536 tp!1854537))))

(assert (=> b!6766237 (= tp!1854269 e!4086152)))

(declare-fun b!6767602 () Bool)

(declare-fun tp!1854538 () Bool)

(assert (=> b!6767602 (= e!4086152 tp!1854538)))

(declare-fun b!6767601 () Bool)

(declare-fun tp!1854534 () Bool)

(declare-fun tp!1854535 () Bool)

(assert (=> b!6767601 (= e!4086152 (and tp!1854534 tp!1854535))))

(assert (= (and b!6766237 ((_ is ElementMatch!16591) (regOne!33694 (regTwo!33695 r!7292)))) b!6767600))

(assert (= (and b!6766237 ((_ is Concat!25436) (regOne!33694 (regTwo!33695 r!7292)))) b!6767601))

(assert (= (and b!6766237 ((_ is Star!16591) (regOne!33694 (regTwo!33695 r!7292)))) b!6767602))

(assert (= (and b!6766237 ((_ is Union!16591) (regOne!33694 (regTwo!33695 r!7292)))) b!6767603))

(declare-fun b!6767604 () Bool)

(declare-fun e!4086153 () Bool)

(assert (=> b!6767604 (= e!4086153 tp_is_empty!42435)))

(declare-fun b!6767607 () Bool)

(declare-fun tp!1854541 () Bool)

(declare-fun tp!1854542 () Bool)

(assert (=> b!6767607 (= e!4086153 (and tp!1854541 tp!1854542))))

(assert (=> b!6766237 (= tp!1854270 e!4086153)))

(declare-fun b!6767606 () Bool)

(declare-fun tp!1854543 () Bool)

(assert (=> b!6767606 (= e!4086153 tp!1854543)))

(declare-fun b!6767605 () Bool)

(declare-fun tp!1854539 () Bool)

(declare-fun tp!1854540 () Bool)

(assert (=> b!6767605 (= e!4086153 (and tp!1854539 tp!1854540))))

(assert (= (and b!6766237 ((_ is ElementMatch!16591) (regTwo!33694 (regTwo!33695 r!7292)))) b!6767604))

(assert (= (and b!6766237 ((_ is Concat!25436) (regTwo!33694 (regTwo!33695 r!7292)))) b!6767605))

(assert (= (and b!6766237 ((_ is Star!16591) (regTwo!33694 (regTwo!33695 r!7292)))) b!6767606))

(assert (= (and b!6766237 ((_ is Union!16591) (regTwo!33694 (regTwo!33695 r!7292)))) b!6767607))

(declare-fun condSetEmpty!46265 () Bool)

(assert (=> setNonEmpty!46251 (= condSetEmpty!46265 (= setRest!46251 ((as const (Array Context!11950 Bool)) false)))))

(declare-fun setRes!46265 () Bool)

(assert (=> setNonEmpty!46251 (= tp!1854262 setRes!46265)))

(declare-fun setIsEmpty!46265 () Bool)

(assert (=> setIsEmpty!46265 setRes!46265))

(declare-fun setElem!46265 () Context!11950)

(declare-fun e!4086154 () Bool)

(declare-fun setNonEmpty!46265 () Bool)

(declare-fun tp!1854544 () Bool)

(assert (=> setNonEmpty!46265 (= setRes!46265 (and tp!1854544 (inv!84724 setElem!46265) e!4086154))))

(declare-fun setRest!46265 () (InoxSet Context!11950))

(assert (=> setNonEmpty!46265 (= setRest!46251 ((_ map or) (store ((as const (Array Context!11950 Bool)) false) setElem!46265 true) setRest!46265))))

(declare-fun b!6767608 () Bool)

(declare-fun tp!1854545 () Bool)

(assert (=> b!6767608 (= e!4086154 tp!1854545)))

(assert (= (and setNonEmpty!46251 condSetEmpty!46265) setIsEmpty!46265))

(assert (= (and setNonEmpty!46251 (not condSetEmpty!46265)) setNonEmpty!46265))

(assert (= setNonEmpty!46265 b!6767608))

(declare-fun m!7518632 () Bool)

(assert (=> setNonEmpty!46265 m!7518632))

(declare-fun b!6767609 () Bool)

(declare-fun e!4086155 () Bool)

(assert (=> b!6767609 (= e!4086155 tp_is_empty!42435)))

(declare-fun b!6767612 () Bool)

(declare-fun tp!1854548 () Bool)

(declare-fun tp!1854549 () Bool)

(assert (=> b!6767612 (= e!4086155 (and tp!1854548 tp!1854549))))

(assert (=> b!6766252 (= tp!1854284 e!4086155)))

(declare-fun b!6767611 () Bool)

(declare-fun tp!1854550 () Bool)

(assert (=> b!6767611 (= e!4086155 tp!1854550)))

(declare-fun b!6767610 () Bool)

(declare-fun tp!1854546 () Bool)

(declare-fun tp!1854547 () Bool)

(assert (=> b!6767610 (= e!4086155 (and tp!1854546 tp!1854547))))

(assert (= (and b!6766252 ((_ is ElementMatch!16591) (regOne!33695 (reg!16920 r!7292)))) b!6767609))

(assert (= (and b!6766252 ((_ is Concat!25436) (regOne!33695 (reg!16920 r!7292)))) b!6767610))

(assert (= (and b!6766252 ((_ is Star!16591) (regOne!33695 (reg!16920 r!7292)))) b!6767611))

(assert (= (and b!6766252 ((_ is Union!16591) (regOne!33695 (reg!16920 r!7292)))) b!6767612))

(declare-fun b!6767613 () Bool)

(declare-fun e!4086156 () Bool)

(assert (=> b!6767613 (= e!4086156 tp_is_empty!42435)))

(declare-fun b!6767616 () Bool)

(declare-fun tp!1854553 () Bool)

(declare-fun tp!1854554 () Bool)

(assert (=> b!6767616 (= e!4086156 (and tp!1854553 tp!1854554))))

(assert (=> b!6766252 (= tp!1854285 e!4086156)))

(declare-fun b!6767615 () Bool)

(declare-fun tp!1854555 () Bool)

(assert (=> b!6767615 (= e!4086156 tp!1854555)))

(declare-fun b!6767614 () Bool)

(declare-fun tp!1854551 () Bool)

(declare-fun tp!1854552 () Bool)

(assert (=> b!6767614 (= e!4086156 (and tp!1854551 tp!1854552))))

(assert (= (and b!6766252 ((_ is ElementMatch!16591) (regTwo!33695 (reg!16920 r!7292)))) b!6767613))

(assert (= (and b!6766252 ((_ is Concat!25436) (regTwo!33695 (reg!16920 r!7292)))) b!6767614))

(assert (= (and b!6766252 ((_ is Star!16591) (regTwo!33695 (reg!16920 r!7292)))) b!6767615))

(assert (= (and b!6766252 ((_ is Union!16591) (regTwo!33695 (reg!16920 r!7292)))) b!6767616))

(declare-fun b!6767617 () Bool)

(declare-fun e!4086157 () Bool)

(assert (=> b!6767617 (= e!4086157 tp_is_empty!42435)))

(declare-fun b!6767620 () Bool)

(declare-fun tp!1854558 () Bool)

(declare-fun tp!1854559 () Bool)

(assert (=> b!6767620 (= e!4086157 (and tp!1854558 tp!1854559))))

(assert (=> b!6766251 (= tp!1854286 e!4086157)))

(declare-fun b!6767619 () Bool)

(declare-fun tp!1854560 () Bool)

(assert (=> b!6767619 (= e!4086157 tp!1854560)))

(declare-fun b!6767618 () Bool)

(declare-fun tp!1854556 () Bool)

(declare-fun tp!1854557 () Bool)

(assert (=> b!6767618 (= e!4086157 (and tp!1854556 tp!1854557))))

(assert (= (and b!6766251 ((_ is ElementMatch!16591) (reg!16920 (reg!16920 r!7292)))) b!6767617))

(assert (= (and b!6766251 ((_ is Concat!25436) (reg!16920 (reg!16920 r!7292)))) b!6767618))

(assert (= (and b!6766251 ((_ is Star!16591) (reg!16920 (reg!16920 r!7292)))) b!6767619))

(assert (= (and b!6766251 ((_ is Union!16591) (reg!16920 (reg!16920 r!7292)))) b!6767620))

(declare-fun b!6767621 () Bool)

(declare-fun e!4086158 () Bool)

(assert (=> b!6767621 (= e!4086158 tp_is_empty!42435)))

(declare-fun b!6767624 () Bool)

(declare-fun tp!1854563 () Bool)

(declare-fun tp!1854564 () Bool)

(assert (=> b!6767624 (= e!4086158 (and tp!1854563 tp!1854564))))

(assert (=> b!6766222 (= tp!1854250 e!4086158)))

(declare-fun b!6767623 () Bool)

(declare-fun tp!1854565 () Bool)

(assert (=> b!6767623 (= e!4086158 tp!1854565)))

(declare-fun b!6767622 () Bool)

(declare-fun tp!1854561 () Bool)

(declare-fun tp!1854562 () Bool)

(assert (=> b!6767622 (= e!4086158 (and tp!1854561 tp!1854562))))

(assert (= (and b!6766222 ((_ is ElementMatch!16591) (regOne!33695 (regOne!33694 r!7292)))) b!6767621))

(assert (= (and b!6766222 ((_ is Concat!25436) (regOne!33695 (regOne!33694 r!7292)))) b!6767622))

(assert (= (and b!6766222 ((_ is Star!16591) (regOne!33695 (regOne!33694 r!7292)))) b!6767623))

(assert (= (and b!6766222 ((_ is Union!16591) (regOne!33695 (regOne!33694 r!7292)))) b!6767624))

(declare-fun b!6767625 () Bool)

(declare-fun e!4086159 () Bool)

(assert (=> b!6767625 (= e!4086159 tp_is_empty!42435)))

(declare-fun b!6767628 () Bool)

(declare-fun tp!1854568 () Bool)

(declare-fun tp!1854569 () Bool)

(assert (=> b!6767628 (= e!4086159 (and tp!1854568 tp!1854569))))

(assert (=> b!6766222 (= tp!1854251 e!4086159)))

(declare-fun b!6767627 () Bool)

(declare-fun tp!1854570 () Bool)

(assert (=> b!6767627 (= e!4086159 tp!1854570)))

(declare-fun b!6767626 () Bool)

(declare-fun tp!1854566 () Bool)

(declare-fun tp!1854567 () Bool)

(assert (=> b!6767626 (= e!4086159 (and tp!1854566 tp!1854567))))

(assert (= (and b!6766222 ((_ is ElementMatch!16591) (regTwo!33695 (regOne!33694 r!7292)))) b!6767625))

(assert (= (and b!6766222 ((_ is Concat!25436) (regTwo!33695 (regOne!33694 r!7292)))) b!6767626))

(assert (= (and b!6766222 ((_ is Star!16591) (regTwo!33695 (regOne!33694 r!7292)))) b!6767627))

(assert (= (and b!6766222 ((_ is Union!16591) (regTwo!33695 (regOne!33694 r!7292)))) b!6767628))

(declare-fun b!6767629 () Bool)

(declare-fun e!4086160 () Bool)

(assert (=> b!6767629 (= e!4086160 tp_is_empty!42435)))

(declare-fun b!6767632 () Bool)

(declare-fun tp!1854573 () Bool)

(declare-fun tp!1854574 () Bool)

(assert (=> b!6767632 (= e!4086160 (and tp!1854573 tp!1854574))))

(assert (=> b!6766250 (= tp!1854282 e!4086160)))

(declare-fun b!6767631 () Bool)

(declare-fun tp!1854575 () Bool)

(assert (=> b!6767631 (= e!4086160 tp!1854575)))

(declare-fun b!6767630 () Bool)

(declare-fun tp!1854571 () Bool)

(declare-fun tp!1854572 () Bool)

(assert (=> b!6767630 (= e!4086160 (and tp!1854571 tp!1854572))))

(assert (= (and b!6766250 ((_ is ElementMatch!16591) (regOne!33694 (reg!16920 r!7292)))) b!6767629))

(assert (= (and b!6766250 ((_ is Concat!25436) (regOne!33694 (reg!16920 r!7292)))) b!6767630))

(assert (= (and b!6766250 ((_ is Star!16591) (regOne!33694 (reg!16920 r!7292)))) b!6767631))

(assert (= (and b!6766250 ((_ is Union!16591) (regOne!33694 (reg!16920 r!7292)))) b!6767632))

(declare-fun b!6767633 () Bool)

(declare-fun e!4086161 () Bool)

(assert (=> b!6767633 (= e!4086161 tp_is_empty!42435)))

(declare-fun b!6767636 () Bool)

(declare-fun tp!1854578 () Bool)

(declare-fun tp!1854579 () Bool)

(assert (=> b!6767636 (= e!4086161 (and tp!1854578 tp!1854579))))

(assert (=> b!6766250 (= tp!1854283 e!4086161)))

(declare-fun b!6767635 () Bool)

(declare-fun tp!1854580 () Bool)

(assert (=> b!6767635 (= e!4086161 tp!1854580)))

(declare-fun b!6767634 () Bool)

(declare-fun tp!1854576 () Bool)

(declare-fun tp!1854577 () Bool)

(assert (=> b!6767634 (= e!4086161 (and tp!1854576 tp!1854577))))

(assert (= (and b!6766250 ((_ is ElementMatch!16591) (regTwo!33694 (reg!16920 r!7292)))) b!6767633))

(assert (= (and b!6766250 ((_ is Concat!25436) (regTwo!33694 (reg!16920 r!7292)))) b!6767634))

(assert (= (and b!6766250 ((_ is Star!16591) (regTwo!33694 (reg!16920 r!7292)))) b!6767635))

(assert (= (and b!6766250 ((_ is Union!16591) (regTwo!33694 (reg!16920 r!7292)))) b!6767636))

(declare-fun b!6767637 () Bool)

(declare-fun e!4086162 () Bool)

(assert (=> b!6767637 (= e!4086162 tp_is_empty!42435)))

(declare-fun b!6767640 () Bool)

(declare-fun tp!1854583 () Bool)

(declare-fun tp!1854584 () Bool)

(assert (=> b!6767640 (= e!4086162 (and tp!1854583 tp!1854584))))

(assert (=> b!6766221 (= tp!1854252 e!4086162)))

(declare-fun b!6767639 () Bool)

(declare-fun tp!1854585 () Bool)

(assert (=> b!6767639 (= e!4086162 tp!1854585)))

(declare-fun b!6767638 () Bool)

(declare-fun tp!1854581 () Bool)

(declare-fun tp!1854582 () Bool)

(assert (=> b!6767638 (= e!4086162 (and tp!1854581 tp!1854582))))

(assert (= (and b!6766221 ((_ is ElementMatch!16591) (reg!16920 (regOne!33694 r!7292)))) b!6767637))

(assert (= (and b!6766221 ((_ is Concat!25436) (reg!16920 (regOne!33694 r!7292)))) b!6767638))

(assert (= (and b!6766221 ((_ is Star!16591) (reg!16920 (regOne!33694 r!7292)))) b!6767639))

(assert (= (and b!6766221 ((_ is Union!16591) (reg!16920 (regOne!33694 r!7292)))) b!6767640))

(declare-fun b!6767641 () Bool)

(declare-fun e!4086163 () Bool)

(assert (=> b!6767641 (= e!4086163 tp_is_empty!42435)))

(declare-fun b!6767644 () Bool)

(declare-fun tp!1854588 () Bool)

(declare-fun tp!1854589 () Bool)

(assert (=> b!6767644 (= e!4086163 (and tp!1854588 tp!1854589))))

(assert (=> b!6766220 (= tp!1854248 e!4086163)))

(declare-fun b!6767643 () Bool)

(declare-fun tp!1854590 () Bool)

(assert (=> b!6767643 (= e!4086163 tp!1854590)))

(declare-fun b!6767642 () Bool)

(declare-fun tp!1854586 () Bool)

(declare-fun tp!1854587 () Bool)

(assert (=> b!6767642 (= e!4086163 (and tp!1854586 tp!1854587))))

(assert (= (and b!6766220 ((_ is ElementMatch!16591) (regOne!33694 (regOne!33694 r!7292)))) b!6767641))

(assert (= (and b!6766220 ((_ is Concat!25436) (regOne!33694 (regOne!33694 r!7292)))) b!6767642))

(assert (= (and b!6766220 ((_ is Star!16591) (regOne!33694 (regOne!33694 r!7292)))) b!6767643))

(assert (= (and b!6766220 ((_ is Union!16591) (regOne!33694 (regOne!33694 r!7292)))) b!6767644))

(declare-fun b!6767645 () Bool)

(declare-fun e!4086164 () Bool)

(assert (=> b!6767645 (= e!4086164 tp_is_empty!42435)))

(declare-fun b!6767648 () Bool)

(declare-fun tp!1854593 () Bool)

(declare-fun tp!1854594 () Bool)

(assert (=> b!6767648 (= e!4086164 (and tp!1854593 tp!1854594))))

(assert (=> b!6766220 (= tp!1854249 e!4086164)))

(declare-fun b!6767647 () Bool)

(declare-fun tp!1854595 () Bool)

(assert (=> b!6767647 (= e!4086164 tp!1854595)))

(declare-fun b!6767646 () Bool)

(declare-fun tp!1854591 () Bool)

(declare-fun tp!1854592 () Bool)

(assert (=> b!6767646 (= e!4086164 (and tp!1854591 tp!1854592))))

(assert (= (and b!6766220 ((_ is ElementMatch!16591) (regTwo!33694 (regOne!33694 r!7292)))) b!6767645))

(assert (= (and b!6766220 ((_ is Concat!25436) (regTwo!33694 (regOne!33694 r!7292)))) b!6767646))

(assert (= (and b!6766220 ((_ is Star!16591) (regTwo!33694 (regOne!33694 r!7292)))) b!6767647))

(assert (= (and b!6766220 ((_ is Union!16591) (regTwo!33694 (regOne!33694 r!7292)))) b!6767648))

(declare-fun b!6767649 () Bool)

(declare-fun e!4086165 () Bool)

(declare-fun tp!1854596 () Bool)

(assert (=> b!6767649 (= e!4086165 (and tp_is_empty!42435 tp!1854596))))

(assert (=> b!6766257 (= tp!1854289 e!4086165)))

(assert (= (and b!6766257 ((_ is Cons!65950) (t!379781 (t!379781 s!2326)))) b!6767649))

(declare-fun b!6767650 () Bool)

(declare-fun e!4086166 () Bool)

(assert (=> b!6767650 (= e!4086166 tp_is_empty!42435)))

(declare-fun b!6767653 () Bool)

(declare-fun tp!1854599 () Bool)

(declare-fun tp!1854600 () Bool)

(assert (=> b!6767653 (= e!4086166 (and tp!1854599 tp!1854600))))

(assert (=> b!6766235 (= tp!1854266 e!4086166)))

(declare-fun b!6767652 () Bool)

(declare-fun tp!1854601 () Bool)

(assert (=> b!6767652 (= e!4086166 tp!1854601)))

(declare-fun b!6767651 () Bool)

(declare-fun tp!1854597 () Bool)

(declare-fun tp!1854598 () Bool)

(assert (=> b!6767651 (= e!4086166 (and tp!1854597 tp!1854598))))

(assert (= (and b!6766235 ((_ is ElementMatch!16591) (regOne!33695 (regOne!33695 r!7292)))) b!6767650))

(assert (= (and b!6766235 ((_ is Concat!25436) (regOne!33695 (regOne!33695 r!7292)))) b!6767651))

(assert (= (and b!6766235 ((_ is Star!16591) (regOne!33695 (regOne!33695 r!7292)))) b!6767652))

(assert (= (and b!6766235 ((_ is Union!16591) (regOne!33695 (regOne!33695 r!7292)))) b!6767653))

(declare-fun b!6767654 () Bool)

(declare-fun e!4086167 () Bool)

(assert (=> b!6767654 (= e!4086167 tp_is_empty!42435)))

(declare-fun b!6767657 () Bool)

(declare-fun tp!1854604 () Bool)

(declare-fun tp!1854605 () Bool)

(assert (=> b!6767657 (= e!4086167 (and tp!1854604 tp!1854605))))

(assert (=> b!6766235 (= tp!1854267 e!4086167)))

(declare-fun b!6767656 () Bool)

(declare-fun tp!1854606 () Bool)

(assert (=> b!6767656 (= e!4086167 tp!1854606)))

(declare-fun b!6767655 () Bool)

(declare-fun tp!1854602 () Bool)

(declare-fun tp!1854603 () Bool)

(assert (=> b!6767655 (= e!4086167 (and tp!1854602 tp!1854603))))

(assert (= (and b!6766235 ((_ is ElementMatch!16591) (regTwo!33695 (regOne!33695 r!7292)))) b!6767654))

(assert (= (and b!6766235 ((_ is Concat!25436) (regTwo!33695 (regOne!33695 r!7292)))) b!6767655))

(assert (= (and b!6766235 ((_ is Star!16591) (regTwo!33695 (regOne!33695 r!7292)))) b!6767656))

(assert (= (and b!6766235 ((_ is Union!16591) (regTwo!33695 (regOne!33695 r!7292)))) b!6767657))

(declare-fun b!6767658 () Bool)

(declare-fun e!4086168 () Bool)

(assert (=> b!6767658 (= e!4086168 tp_is_empty!42435)))

(declare-fun b!6767661 () Bool)

(declare-fun tp!1854609 () Bool)

(declare-fun tp!1854610 () Bool)

(assert (=> b!6767661 (= e!4086168 (and tp!1854609 tp!1854610))))

(assert (=> b!6766234 (= tp!1854268 e!4086168)))

(declare-fun b!6767660 () Bool)

(declare-fun tp!1854611 () Bool)

(assert (=> b!6767660 (= e!4086168 tp!1854611)))

(declare-fun b!6767659 () Bool)

(declare-fun tp!1854607 () Bool)

(declare-fun tp!1854608 () Bool)

(assert (=> b!6767659 (= e!4086168 (and tp!1854607 tp!1854608))))

(assert (= (and b!6766234 ((_ is ElementMatch!16591) (reg!16920 (regOne!33695 r!7292)))) b!6767658))

(assert (= (and b!6766234 ((_ is Concat!25436) (reg!16920 (regOne!33695 r!7292)))) b!6767659))

(assert (= (and b!6766234 ((_ is Star!16591) (reg!16920 (regOne!33695 r!7292)))) b!6767660))

(assert (= (and b!6766234 ((_ is Union!16591) (reg!16920 (regOne!33695 r!7292)))) b!6767661))

(declare-fun b!6767662 () Bool)

(declare-fun e!4086169 () Bool)

(assert (=> b!6767662 (= e!4086169 tp_is_empty!42435)))

(declare-fun b!6767665 () Bool)

(declare-fun tp!1854614 () Bool)

(declare-fun tp!1854615 () Bool)

(assert (=> b!6767665 (= e!4086169 (and tp!1854614 tp!1854615))))

(assert (=> b!6766233 (= tp!1854264 e!4086169)))

(declare-fun b!6767664 () Bool)

(declare-fun tp!1854616 () Bool)

(assert (=> b!6767664 (= e!4086169 tp!1854616)))

(declare-fun b!6767663 () Bool)

(declare-fun tp!1854612 () Bool)

(declare-fun tp!1854613 () Bool)

(assert (=> b!6767663 (= e!4086169 (and tp!1854612 tp!1854613))))

(assert (= (and b!6766233 ((_ is ElementMatch!16591) (regOne!33694 (regOne!33695 r!7292)))) b!6767662))

(assert (= (and b!6766233 ((_ is Concat!25436) (regOne!33694 (regOne!33695 r!7292)))) b!6767663))

(assert (= (and b!6766233 ((_ is Star!16591) (regOne!33694 (regOne!33695 r!7292)))) b!6767664))

(assert (= (and b!6766233 ((_ is Union!16591) (regOne!33694 (regOne!33695 r!7292)))) b!6767665))

(declare-fun b!6767666 () Bool)

(declare-fun e!4086170 () Bool)

(assert (=> b!6767666 (= e!4086170 tp_is_empty!42435)))

(declare-fun b!6767669 () Bool)

(declare-fun tp!1854619 () Bool)

(declare-fun tp!1854620 () Bool)

(assert (=> b!6767669 (= e!4086170 (and tp!1854619 tp!1854620))))

(assert (=> b!6766233 (= tp!1854265 e!4086170)))

(declare-fun b!6767668 () Bool)

(declare-fun tp!1854621 () Bool)

(assert (=> b!6767668 (= e!4086170 tp!1854621)))

(declare-fun b!6767667 () Bool)

(declare-fun tp!1854617 () Bool)

(declare-fun tp!1854618 () Bool)

(assert (=> b!6767667 (= e!4086170 (and tp!1854617 tp!1854618))))

(assert (= (and b!6766233 ((_ is ElementMatch!16591) (regTwo!33694 (regOne!33695 r!7292)))) b!6767666))

(assert (= (and b!6766233 ((_ is Concat!25436) (regTwo!33694 (regOne!33695 r!7292)))) b!6767667))

(assert (= (and b!6766233 ((_ is Star!16591) (regTwo!33694 (regOne!33695 r!7292)))) b!6767668))

(assert (= (and b!6766233 ((_ is Union!16591) (regTwo!33694 (regOne!33695 r!7292)))) b!6767669))

(declare-fun b_lambda!254839 () Bool)

(assert (= b_lambda!254795 (or d!2125361 b_lambda!254839)))

(declare-fun bs!1801170 () Bool)

(declare-fun d!2126085 () Bool)

(assert (= bs!1801170 (and d!2126085 d!2125361)))

(assert (=> bs!1801170 (= (dynLambda!26315 lambda!380574 (h!72396 (exprs!6475 (h!72397 zl!343)))) (validRegex!8327 (h!72396 (exprs!6475 (h!72397 zl!343)))))))

(declare-fun m!7518634 () Bool)

(assert (=> bs!1801170 m!7518634))

(assert (=> b!6766855 d!2126085))

(declare-fun b_lambda!254841 () Bool)

(assert (= b_lambda!254797 (or d!2125431 b_lambda!254841)))

(declare-fun bs!1801171 () Bool)

(declare-fun d!2126087 () Bool)

(assert (= bs!1801171 (and d!2126087 d!2125431)))

(assert (=> bs!1801171 (= (dynLambda!26315 lambda!380601 (h!72396 (unfocusZipperList!2012 zl!343))) (validRegex!8327 (h!72396 (unfocusZipperList!2012 zl!343))))))

(declare-fun m!7518636 () Bool)

(assert (=> bs!1801171 m!7518636))

(assert (=> b!6766868 d!2126087))

(declare-fun b_lambda!254843 () Bool)

(assert (= b_lambda!254799 (or b!6765361 b_lambda!254843)))

(assert (=> d!2125793 d!2125463))

(declare-fun b_lambda!254845 () Bool)

(assert (= b_lambda!254815 (or b!6765361 b_lambda!254845)))

(assert (=> d!2126015 d!2125467))

(declare-fun b_lambda!254847 () Bool)

(assert (= b_lambda!254837 (or d!2125459 b_lambda!254847)))

(declare-fun bs!1801172 () Bool)

(declare-fun d!2126089 () Bool)

(assert (= bs!1801172 (and d!2126089 d!2125459)))

(assert (=> bs!1801172 (= (dynLambda!26315 lambda!380607 (h!72396 (exprs!6475 (h!72397 zl!343)))) (validRegex!8327 (h!72396 (exprs!6475 (h!72397 zl!343)))))))

(assert (=> bs!1801172 m!7518634))

(assert (=> b!6767509 d!2126089))

(declare-fun b_lambda!254849 () Bool)

(assert (= b_lambda!254807 (or b!6765361 b_lambda!254849)))

(assert (=> d!2125857 d!2125465))

(declare-fun b_lambda!254851 () Bool)

(assert (= b_lambda!254783 (or d!2125239 b_lambda!254851)))

(declare-fun bs!1801173 () Bool)

(declare-fun d!2126091 () Bool)

(assert (= bs!1801173 (and d!2126091 d!2125239)))

(assert (=> bs!1801173 (= (dynLambda!26315 lambda!380526 (h!72396 (exprs!6475 setElem!46245))) (validRegex!8327 (h!72396 (exprs!6475 setElem!46245))))))

(declare-fun m!7518638 () Bool)

(assert (=> bs!1801173 m!7518638))

(assert (=> b!6766534 d!2126091))

(declare-fun b_lambda!254853 () Bool)

(assert (= b_lambda!254787 (or b!6765361 b_lambda!254853)))

(assert (=> d!2125619 d!2125461))

(declare-fun b_lambda!254855 () Bool)

(assert (= b_lambda!254791 (or d!2125313 b_lambda!254855)))

(declare-fun bs!1801174 () Bool)

(declare-fun d!2126093 () Bool)

(assert (= bs!1801174 (and d!2126093 d!2125313)))

(assert (=> bs!1801174 (= (dynLambda!26315 lambda!380553 (h!72396 (exprs!6475 lt!2442639))) (validRegex!8327 (h!72396 (exprs!6475 lt!2442639))))))

(declare-fun m!7518640 () Bool)

(assert (=> bs!1801174 m!7518640))

(assert (=> b!6766733 d!2126093))

(declare-fun b_lambda!254857 () Bool)

(assert (= b_lambda!254789 (or d!2125433 b_lambda!254857)))

(declare-fun bs!1801175 () Bool)

(declare-fun d!2126095 () Bool)

(assert (= bs!1801175 (and d!2126095 d!2125433)))

(assert (=> bs!1801175 (= (dynLambda!26315 lambda!380604 (h!72396 lt!2442750)) (validRegex!8327 (h!72396 lt!2442750)))))

(declare-fun m!7518642 () Bool)

(assert (=> bs!1801175 m!7518642))

(assert (=> b!6766663 d!2126095))

(check-sat (not d!2125725) (not b!6766620) (not b!6767623) (not b!6766643) (not d!2126077) (not b!6767651) (not bs!1801171) (not b!6766413) (not bm!613072) (not b!6767576) (not b!6766667) (not d!2125627) (not b!6766870) (not b!6767369) (not b!6767554) (not b!6766705) (not b!6767146) (not b!6767567) (not b!6767632) (not d!2126071) (not bm!613102) (not bm!613080) (not b!6766616) (not b!6767558) (not d!2125541) (not b!6766739) (not b!6767013) (not b!6766641) (not d!2125841) (not b!6767580) (not b!6766399) (not b!6766743) (not bm!613137) (not b!6767147) (not b!6767660) (not b!6766658) (not b!6767141) (not d!2125903) (not b!6767628) (not b!6767620) (not bm!613155) (not b!6767594) (not b!6767144) (not bm!613045) (not b!6766590) (not b!6767570) (not bm!613055) (not bm!613035) (not b!6766404) (not bm!613246) (not b!6767652) (not b!6767561) (not b!6766434) (not d!2125867) (not b!6766415) (not b!6766541) (not b!6766734) (not bm!613164) (not d!2125897) (not bm!613070) (not b!6767598) (not b!6766862) (not bm!613207) (not b!6767589) (not b!6767615) (not b!6767574) (not b!6766609) (not bm!613252) (not d!2125745) (not b!6767616) (not b!6767532) (not b!6767571) (not b!6766782) (not d!2125577) (not b!6766735) (not b!6766410) (not bm!613101) (not d!2125973) (not b!6766878) (not b!6767626) (not d!2126069) (not b!6766488) (not b!6766562) (not b!6767592) (not bm!613215) (not bm!613248) (not d!2126047) (not d!2125525) (not b!6767034) (not d!2125839) (not bm!613061) (not d!2126017) (not b!6766525) (not bm!613203) (not bm!613048) (not b!6766489) (not b!6766812) (not b!6767031) (not b!6767517) (not bm!613194) (not b!6766856) (not b!6767556) (not bs!1801172) (not bm!613082) (not bm!613078) (not d!2125645) (not b_lambda!254773) (not b!6766637) (not b_lambda!254855) (not b!6767370) (not b!6766649) (not bm!613099) (not b_lambda!254775) (not bm!613081) (not b!6767173) (not b!6767508) (not b!6767601) (not d!2126053) (not b_lambda!254777) (not bm!613258) (not b!6766665) (not d!2125649) (not setNonEmpty!46265) (not b!6767614) (not b!6767036) (not bm!613139) (not d!2125575) (not b!6767602) (not b!6767572) (not d!2126073) (not bs!1801173) (not b!6767605) (not b!6767599) (not b!6767510) (not b!6766712) (not b!6766458) (not b!6766420) (not b!6767198) (not bm!613195) (not b!6766703) (not b!6767664) (not b!6767197) (not bm!613058) (not b_lambda!254849) (not d!2125669) (not bm!613259) (not b!6767593) (not b!6767407) (not b!6767668) (not b!6767653) (not b!6767566) (not b!6767644) (not d!2126063) (not b!6767417) (not d!2125793) (not b!6767636) (not b!6767549) (not b!6766491) (not b!6767498) (not d!2125937) (not b!6766664) (not b!6766535) (not d!2126067) (not b!6766887) (not bs!1801174) (not d!2125533) (not b!6766648) (not b!6767659) (not bm!613206) (not b!6767229) (not b!6766708) (not bm!613029) (not b!6766600) (not bm!613087) (not b!6767557) (not b!6766802) (not bm!613116) (not bm!613042) (not b!6766651) (not bm!613108) (not d!2125811) (not b!6766566) (not b!6767606) (not b!6766677) (not b!6767200) (not b!6767578) (not b!6767635) (not b!6766595) (not b!6766400) (not b!6766745) (not b!6767202) (not b!6767563) (not b!6767586) (not b!6767607) (not b!6767448) (not b!6767663) (not b!6767539) (not b!6767405) (not d!2125857) (not b!6767137) (not b!6767408) (not bm!613044) (not bm!613212) (not d!2125543) (not b!6767648) (not d!2125795) (not b!6766778) (not b!6766408) (not d!2125629) (not bm!613062) (not b!6766779) (not bm!613079) (not b!6767575) (not b!6767205) (not b!6767657) (not b_lambda!254845) (not b!6767669) (not d!2125931) (not b!6767612) (not b!6767527) (not b!6767634) (not d!2125715) (not b!6766686) (not d!2125545) (not b!6767618) (not b!6767642) (not d!2125877) (not b!6767665) (not b!6767656) (not b!6766668) (not d!2125799) (not b!6767610) (not bm!613166) (not b!6766510) (not b!6767647) (not d!2125729) (not bm!613085) (not bm!613122) (not b!6767564) (not b_lambda!254853) (not b!6767646) (not b!6767538) (not b!6767029) (not b!6766697) (not bm!613249) (not bm!613120) (not b_lambda!254843) (not bs!1801170) (not setNonEmpty!46263) (not b!6766869) (not b!6766877) (not b!6767608) (not bm!613179) (not bm!613073) (not bm!613028) (not b!6767619) (not b!6767667) (not b!6767597) (not b!6767638) (not b!6767595) (not b!6766646) (not b!6767631) (not bm!613077) (not d!2125967) (not b!6767624) (not d!2125861) (not b!6767535) (not b!6766690) (not d!2125945) (not b_lambda!254841) (not d!2125969) (not d!2125631) (not b!6767156) (not d!2125551) (not b!6766851) (not b!6766746) (not bm!613176) (not b!6767531) (not b!6767184) (not b!6767536) (not b!6766642) (not b!6767611) (not d!2125809) (not d!2125881) (not b!6767032) (not d!2126061) (not bm!613253) (not b!6767217) (not b!6767499) (not bm!613216) (not b!6766693) (not d!2125873) (not d!2125619) (not d!2125895) (not d!2125749) (not b!6767410) (not b!6766773) (not b!6766835) (not b!6766738) (not b!6766607) (not b!6767639) (not b!6767077) (not b!6766598) (not d!2125651) (not b!6766405) (not bm!613056) (not b!6766597) (not b!6766740) (not b!6767622) (not b!6766537) (not b!6766684) (not b_lambda!254771) (not d!2125905) (not b!6766403) (not d!2125641) (not b!6767627) (not b_lambda!254847) (not b!6766384) (not bm!613104) (not setNonEmpty!46262) (not bm!613119) (not b!6766947) (not b!6766644) (not bm!613156) (not d!2125953) (not b!6766453) (not bm!613088) (not b!6766610) (not b!6766880) (not b!6767583) (not b!6767579) (not bm!613038) (not b!6766484) (not bs!1801175) (not b!6767585) (not setNonEmpty!46259) (not bm!613084) tp_is_empty!42435 (not b_lambda!254851) (not bm!613205) (not b!6767655) (not b!6767560) (not b!6766707) (not bm!613159) (not b!6767603) (not d!2125807) (not b!6767630) (not b!6766694) (not b!6766602) (not b!6766435) (not d!2126009) (not bm!613071) (not b!6766874) (not b!6767562) (not d!2125781) (not b!6767412) (not b!6767507) (not d!2125607) (not b!6767528) (not bm!613041) (not b!6767590) (not b!6767534) (not b!6767588) (not b!6766411) (not b!6767584) (not b_lambda!254839) (not b!6767041) (not b!6767348) (not b!6767149) (not b_lambda!254857) (not bm!613068) (not b!6766882) (not bm!613107) (not b!6767066) (not b!6767640) (not b!6767100) (not d!2126015) (not b!6767506) (not bm!613123) (not b!6767643) (not b!6766672) (not d!2126065) (not b!6766462) (not d!2125893) (not b!6767204) (not b!6767537) (not b!6767581) (not b!6767151) (not b!6766402) (not bm!613255) (not bm!613064) (not bm!613047) (not b!6766594) (not b!6766490) (not d!2126075) (not d!2126025) (not b!6766493) (not bm!613067) (not bm!613180) (not b!6767199) (not b!6766502) (not b!6766777) (not b!6766741) (not b!6766496) (not b!6766406) (not bm!613244) (not b!6767649) (not bm!613168) (not d!2126079) (not b!6767136) (not setNonEmpty!46260) (not d!2125633) (not bm!613117) (not b!6766495) (not d!2125681) (not b!6766875) (not b!6767568) (not b!6766443) (not d!2126023) (not b!6767661) (not b!6766670) (not bm!613152) (not bm!613167) (not d!2125679))
(check-sat)
