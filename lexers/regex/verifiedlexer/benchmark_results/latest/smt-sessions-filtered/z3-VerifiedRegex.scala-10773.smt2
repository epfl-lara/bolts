; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!550634 () Bool)

(assert start!550634)

(declare-fun b!5205364 () Bool)

(assert (=> b!5205364 true))

(assert (=> b!5205364 true))

(declare-fun lambda!260916 () Int)

(declare-fun lambda!260915 () Int)

(assert (=> b!5205364 (not (= lambda!260916 lambda!260915))))

(assert (=> b!5205364 true))

(assert (=> b!5205364 true))

(declare-fun b!5205360 () Bool)

(assert (=> b!5205360 true))

(declare-fun b!5205347 () Bool)

(declare-fun e!3241000 () Bool)

(declare-fun tp_is_empty!38839 () Bool)

(declare-fun tp!1460009 () Bool)

(assert (=> b!5205347 (= e!3241000 (and tp_is_empty!38839 tp!1460009))))

(declare-fun b!5205348 () Bool)

(declare-fun e!3240998 () Bool)

(declare-fun tp!1460013 () Bool)

(declare-fun tp!1460011 () Bool)

(assert (=> b!5205348 (= e!3240998 (and tp!1460013 tp!1460011))))

(declare-fun b!5205349 () Bool)

(declare-fun res!2211340 () Bool)

(declare-fun e!3241003 () Bool)

(assert (=> b!5205349 (=> (not res!2211340) (not e!3241003))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29856 0))(
  ( (C!29857 (val!24630 Int)) )
))
(declare-datatypes ((Regex!14793 0))(
  ( (ElementMatch!14793 (c!897284 C!29856)) (Concat!23638 (regOne!30098 Regex!14793) (regTwo!30098 Regex!14793)) (EmptyExpr!14793) (Star!14793 (reg!15122 Regex!14793)) (EmptyLang!14793) (Union!14793 (regOne!30099 Regex!14793) (regTwo!30099 Regex!14793)) )
))
(declare-datatypes ((List!60678 0))(
  ( (Nil!60554) (Cons!60554 (h!67002 Regex!14793) (t!373835 List!60678)) )
))
(declare-datatypes ((Context!8354 0))(
  ( (Context!8355 (exprs!4677 List!60678)) )
))
(declare-fun z!1189 () (InoxSet Context!8354))

(declare-datatypes ((List!60679 0))(
  ( (Nil!60555) (Cons!60555 (h!67003 Context!8354) (t!373836 List!60679)) )
))
(declare-fun zl!343 () List!60679)

(declare-fun toList!8577 ((InoxSet Context!8354)) List!60679)

(assert (=> b!5205349 (= res!2211340 (= (toList!8577 z!1189) zl!343))))

(declare-fun b!5205350 () Bool)

(declare-fun e!3241001 () Bool)

(declare-fun tp!1460010 () Bool)

(assert (=> b!5205350 (= e!3241001 tp!1460010)))

(declare-fun b!5205351 () Bool)

(declare-fun e!3241002 () Bool)

(declare-fun r!7292 () Regex!14793)

(declare-fun validRegex!6529 (Regex!14793) Bool)

(assert (=> b!5205351 (= e!3241002 (validRegex!6529 (regTwo!30099 (regOne!30098 r!7292))))))

(declare-fun e!3240994 () Bool)

(declare-fun setElem!33044 () Context!8354)

(declare-fun tp!1460015 () Bool)

(declare-fun setNonEmpty!33044 () Bool)

(declare-fun setRes!33044 () Bool)

(declare-fun inv!80229 (Context!8354) Bool)

(assert (=> setNonEmpty!33044 (= setRes!33044 (and tp!1460015 (inv!80229 setElem!33044) e!3240994))))

(declare-fun setRest!33044 () (InoxSet Context!8354))

(assert (=> setNonEmpty!33044 (= z!1189 ((_ map or) (store ((as const (Array Context!8354 Bool)) false) setElem!33044 true) setRest!33044))))

(declare-fun b!5205353 () Bool)

(declare-datatypes ((Unit!152438 0))(
  ( (Unit!152439) )
))
(declare-fun e!3240999 () Unit!152438)

(declare-fun Unit!152440 () Unit!152438)

(assert (=> b!5205353 (= e!3240999 Unit!152440)))

(declare-datatypes ((List!60680 0))(
  ( (Nil!60556) (Cons!60556 (h!67004 C!29856) (t!373837 List!60680)) )
))
(declare-fun s!2326 () List!60680)

(declare-fun lt!2141541 () (InoxSet Context!8354))

(declare-fun lt!2141536 () (InoxSet Context!8354))

(declare-fun lt!2141538 () Unit!152438)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!30 ((InoxSet Context!8354) (InoxSet Context!8354) List!60680) Unit!152438)

(assert (=> b!5205353 (= lt!2141538 (lemmaZipperConcatMatchesSameAsBothZippers!30 lt!2141536 lt!2141541 (t!373837 s!2326)))))

(declare-fun res!2211345 () Bool)

(declare-fun matchZipper!1037 ((InoxSet Context!8354) List!60680) Bool)

(assert (=> b!5205353 (= res!2211345 (matchZipper!1037 lt!2141536 (t!373837 s!2326)))))

(declare-fun e!3240996 () Bool)

(assert (=> b!5205353 (=> res!2211345 e!3240996)))

(assert (=> b!5205353 (= (matchZipper!1037 ((_ map or) lt!2141536 lt!2141541) (t!373837 s!2326)) e!3240996)))

(declare-fun b!5205354 () Bool)

(assert (=> b!5205354 (= e!3240996 (matchZipper!1037 lt!2141541 (t!373837 s!2326)))))

(declare-fun b!5205355 () Bool)

(declare-fun res!2211342 () Bool)

(declare-fun e!3240993 () Bool)

(assert (=> b!5205355 (=> res!2211342 e!3240993)))

(declare-fun isEmpty!32461 (List!60678) Bool)

(assert (=> b!5205355 (= res!2211342 (isEmpty!32461 (t!373835 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun b!5205356 () Bool)

(assert (=> b!5205356 (= e!3240998 tp_is_empty!38839)))

(declare-fun b!5205357 () Bool)

(declare-fun e!3240995 () Bool)

(assert (=> b!5205357 (= e!3241003 (not e!3240995))))

(declare-fun res!2211336 () Bool)

(assert (=> b!5205357 (=> res!2211336 e!3240995)))

(get-info :version)

(assert (=> b!5205357 (= res!2211336 (not ((_ is Cons!60555) zl!343)))))

(declare-fun lt!2141534 () Bool)

(declare-fun matchRSpec!1896 (Regex!14793 List!60680) Bool)

(assert (=> b!5205357 (= lt!2141534 (matchRSpec!1896 r!7292 s!2326))))

(declare-fun matchR!6978 (Regex!14793 List!60680) Bool)

(assert (=> b!5205357 (= lt!2141534 (matchR!6978 r!7292 s!2326))))

(declare-fun lt!2141542 () Unit!152438)

(declare-fun mainMatchTheorem!1896 (Regex!14793 List!60680) Unit!152438)

(assert (=> b!5205357 (= lt!2141542 (mainMatchTheorem!1896 r!7292 s!2326))))

(declare-fun b!5205358 () Bool)

(declare-fun tp!1460014 () Bool)

(assert (=> b!5205358 (= e!3240998 tp!1460014)))

(declare-fun b!5205359 () Bool)

(declare-fun Unit!152441 () Unit!152438)

(assert (=> b!5205359 (= e!3240999 Unit!152441)))

(assert (=> b!5205360 (= e!3240993 e!3241002)))

(declare-fun res!2211348 () Bool)

(assert (=> b!5205360 (=> res!2211348 e!3241002)))

(assert (=> b!5205360 (= res!2211348 (or (and ((_ is ElementMatch!14793) (regOne!30098 r!7292)) (= (c!897284 (regOne!30098 r!7292)) (h!67004 s!2326))) (not ((_ is Union!14793) (regOne!30098 r!7292)))))))

(declare-fun lt!2141539 () Unit!152438)

(assert (=> b!5205360 (= lt!2141539 e!3240999)))

(declare-fun c!897283 () Bool)

(declare-fun nullable!4962 (Regex!14793) Bool)

(assert (=> b!5205360 (= c!897283 (nullable!4962 (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun lambda!260917 () Int)

(declare-fun flatMap!520 ((InoxSet Context!8354) Int) (InoxSet Context!8354))

(declare-fun derivationStepZipperUp!165 (Context!8354 C!29856) (InoxSet Context!8354))

(assert (=> b!5205360 (= (flatMap!520 z!1189 lambda!260917) (derivationStepZipperUp!165 (h!67003 zl!343) (h!67004 s!2326)))))

(declare-fun lt!2141532 () Unit!152438)

(declare-fun lemmaFlatMapOnSingletonSet!52 ((InoxSet Context!8354) Context!8354 Int) Unit!152438)

(assert (=> b!5205360 (= lt!2141532 (lemmaFlatMapOnSingletonSet!52 z!1189 (h!67003 zl!343) lambda!260917))))

(declare-fun lt!2141533 () Context!8354)

(assert (=> b!5205360 (= lt!2141541 (derivationStepZipperUp!165 lt!2141533 (h!67004 s!2326)))))

(declare-fun derivationStepZipperDown!241 (Regex!14793 Context!8354 C!29856) (InoxSet Context!8354))

(assert (=> b!5205360 (= lt!2141536 (derivationStepZipperDown!241 (h!67002 (exprs!4677 (h!67003 zl!343))) lt!2141533 (h!67004 s!2326)))))

(assert (=> b!5205360 (= lt!2141533 (Context!8355 (t!373835 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun lt!2141537 () (InoxSet Context!8354))

(assert (=> b!5205360 (= lt!2141537 (derivationStepZipperUp!165 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343))))) (h!67004 s!2326)))))

(declare-fun b!5205361 () Bool)

(declare-fun res!2211339 () Bool)

(assert (=> b!5205361 (=> res!2211339 e!3240995)))

(declare-fun generalisedConcat!462 (List!60678) Regex!14793)

(assert (=> b!5205361 (= res!2211339 (not (= r!7292 (generalisedConcat!462 (exprs!4677 (h!67003 zl!343))))))))

(declare-fun b!5205362 () Bool)

(declare-fun res!2211347 () Bool)

(assert (=> b!5205362 (=> res!2211347 e!3240995)))

(assert (=> b!5205362 (= res!2211347 (or ((_ is EmptyExpr!14793) r!7292) ((_ is EmptyLang!14793) r!7292) ((_ is ElementMatch!14793) r!7292) ((_ is Union!14793) r!7292) (not ((_ is Concat!23638) r!7292))))))

(declare-fun b!5205363 () Bool)

(declare-fun tp!1460008 () Bool)

(assert (=> b!5205363 (= e!3240994 tp!1460008)))

(declare-fun setIsEmpty!33044 () Bool)

(assert (=> setIsEmpty!33044 setRes!33044))

(assert (=> b!5205364 (= e!3240995 e!3240993)))

(declare-fun res!2211338 () Bool)

(assert (=> b!5205364 (=> res!2211338 e!3240993)))

(declare-fun lt!2141535 () Bool)

(assert (=> b!5205364 (= res!2211338 (or (not (= lt!2141534 lt!2141535)) ((_ is Nil!60556) s!2326)))))

(declare-fun Exists!1974 (Int) Bool)

(assert (=> b!5205364 (= (Exists!1974 lambda!260915) (Exists!1974 lambda!260916))))

(declare-fun lt!2141543 () Unit!152438)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!628 (Regex!14793 Regex!14793 List!60680) Unit!152438)

(assert (=> b!5205364 (= lt!2141543 (lemmaExistCutMatchRandMatchRSpecEquivalent!628 (regOne!30098 r!7292) (regTwo!30098 r!7292) s!2326))))

(assert (=> b!5205364 (= lt!2141535 (Exists!1974 lambda!260915))))

(declare-datatypes ((tuple2!63984 0))(
  ( (tuple2!63985 (_1!35295 List!60680) (_2!35295 List!60680)) )
))
(declare-datatypes ((Option!14904 0))(
  ( (None!14903) (Some!14903 (v!50932 tuple2!63984)) )
))
(declare-fun isDefined!11607 (Option!14904) Bool)

(declare-fun findConcatSeparation!1318 (Regex!14793 Regex!14793 List!60680 List!60680 List!60680) Option!14904)

(assert (=> b!5205364 (= lt!2141535 (isDefined!11607 (findConcatSeparation!1318 (regOne!30098 r!7292) (regTwo!30098 r!7292) Nil!60556 s!2326 s!2326)))))

(declare-fun lt!2141540 () Unit!152438)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1082 (Regex!14793 Regex!14793 List!60680) Unit!152438)

(assert (=> b!5205364 (= lt!2141540 (lemmaFindConcatSeparationEquivalentToExists!1082 (regOne!30098 r!7292) (regTwo!30098 r!7292) s!2326))))

(declare-fun b!5205365 () Bool)

(declare-fun res!2211337 () Bool)

(assert (=> b!5205365 (=> res!2211337 e!3240995)))

(declare-fun generalisedUnion!722 (List!60678) Regex!14793)

(declare-fun unfocusZipperList!235 (List!60679) List!60678)

(assert (=> b!5205365 (= res!2211337 (not (= r!7292 (generalisedUnion!722 (unfocusZipperList!235 zl!343)))))))

(declare-fun b!5205352 () Bool)

(declare-fun res!2211343 () Bool)

(assert (=> b!5205352 (=> res!2211343 e!3240995)))

(declare-fun isEmpty!32462 (List!60679) Bool)

(assert (=> b!5205352 (= res!2211343 (not (isEmpty!32462 (t!373836 zl!343))))))

(declare-fun res!2211341 () Bool)

(assert (=> start!550634 (=> (not res!2211341) (not e!3241003))))

(assert (=> start!550634 (= res!2211341 (validRegex!6529 r!7292))))

(assert (=> start!550634 e!3241003))

(assert (=> start!550634 e!3240998))

(declare-fun condSetEmpty!33044 () Bool)

(assert (=> start!550634 (= condSetEmpty!33044 (= z!1189 ((as const (Array Context!8354 Bool)) false)))))

(assert (=> start!550634 setRes!33044))

(declare-fun e!3240997 () Bool)

(assert (=> start!550634 e!3240997))

(assert (=> start!550634 e!3241000))

(declare-fun b!5205366 () Bool)

(declare-fun tp!1460016 () Bool)

(declare-fun tp!1460017 () Bool)

(assert (=> b!5205366 (= e!3240998 (and tp!1460016 tp!1460017))))

(declare-fun b!5205367 () Bool)

(declare-fun res!2211344 () Bool)

(assert (=> b!5205367 (=> (not res!2211344) (not e!3241003))))

(declare-fun unfocusZipper!535 (List!60679) Regex!14793)

(assert (=> b!5205367 (= res!2211344 (= r!7292 (unfocusZipper!535 zl!343)))))

(declare-fun tp!1460012 () Bool)

(declare-fun b!5205368 () Bool)

(assert (=> b!5205368 (= e!3240997 (and (inv!80229 (h!67003 zl!343)) e!3241001 tp!1460012))))

(declare-fun b!5205369 () Bool)

(declare-fun res!2211346 () Bool)

(assert (=> b!5205369 (=> res!2211346 e!3240995)))

(assert (=> b!5205369 (= res!2211346 (not ((_ is Cons!60554) (exprs!4677 (h!67003 zl!343)))))))

(assert (= (and start!550634 res!2211341) b!5205349))

(assert (= (and b!5205349 res!2211340) b!5205367))

(assert (= (and b!5205367 res!2211344) b!5205357))

(assert (= (and b!5205357 (not res!2211336)) b!5205352))

(assert (= (and b!5205352 (not res!2211343)) b!5205361))

(assert (= (and b!5205361 (not res!2211339)) b!5205369))

(assert (= (and b!5205369 (not res!2211346)) b!5205365))

(assert (= (and b!5205365 (not res!2211337)) b!5205362))

(assert (= (and b!5205362 (not res!2211347)) b!5205364))

(assert (= (and b!5205364 (not res!2211338)) b!5205355))

(assert (= (and b!5205355 (not res!2211342)) b!5205360))

(assert (= (and b!5205360 c!897283) b!5205353))

(assert (= (and b!5205360 (not c!897283)) b!5205359))

(assert (= (and b!5205353 (not res!2211345)) b!5205354))

(assert (= (and b!5205360 (not res!2211348)) b!5205351))

(assert (= (and start!550634 ((_ is ElementMatch!14793) r!7292)) b!5205356))

(assert (= (and start!550634 ((_ is Concat!23638) r!7292)) b!5205348))

(assert (= (and start!550634 ((_ is Star!14793) r!7292)) b!5205358))

(assert (= (and start!550634 ((_ is Union!14793) r!7292)) b!5205366))

(assert (= (and start!550634 condSetEmpty!33044) setIsEmpty!33044))

(assert (= (and start!550634 (not condSetEmpty!33044)) setNonEmpty!33044))

(assert (= setNonEmpty!33044 b!5205363))

(assert (= b!5205368 b!5205350))

(assert (= (and start!550634 ((_ is Cons!60555) zl!343)) b!5205368))

(assert (= (and start!550634 ((_ is Cons!60556) s!2326)) b!5205347))

(declare-fun m!6256604 () Bool)

(assert (=> b!5205353 m!6256604))

(declare-fun m!6256606 () Bool)

(assert (=> b!5205353 m!6256606))

(declare-fun m!6256608 () Bool)

(assert (=> b!5205353 m!6256608))

(declare-fun m!6256610 () Bool)

(assert (=> start!550634 m!6256610))

(declare-fun m!6256612 () Bool)

(assert (=> b!5205355 m!6256612))

(declare-fun m!6256614 () Bool)

(assert (=> setNonEmpty!33044 m!6256614))

(declare-fun m!6256616 () Bool)

(assert (=> b!5205349 m!6256616))

(declare-fun m!6256618 () Bool)

(assert (=> b!5205367 m!6256618))

(declare-fun m!6256620 () Bool)

(assert (=> b!5205360 m!6256620))

(declare-fun m!6256622 () Bool)

(assert (=> b!5205360 m!6256622))

(declare-fun m!6256624 () Bool)

(assert (=> b!5205360 m!6256624))

(declare-fun m!6256626 () Bool)

(assert (=> b!5205360 m!6256626))

(declare-fun m!6256628 () Bool)

(assert (=> b!5205360 m!6256628))

(declare-fun m!6256630 () Bool)

(assert (=> b!5205360 m!6256630))

(declare-fun m!6256632 () Bool)

(assert (=> b!5205360 m!6256632))

(declare-fun m!6256634 () Bool)

(assert (=> b!5205364 m!6256634))

(declare-fun m!6256636 () Bool)

(assert (=> b!5205364 m!6256636))

(declare-fun m!6256638 () Bool)

(assert (=> b!5205364 m!6256638))

(declare-fun m!6256640 () Bool)

(assert (=> b!5205364 m!6256640))

(declare-fun m!6256642 () Bool)

(assert (=> b!5205364 m!6256642))

(assert (=> b!5205364 m!6256634))

(assert (=> b!5205364 m!6256636))

(declare-fun m!6256644 () Bool)

(assert (=> b!5205364 m!6256644))

(declare-fun m!6256646 () Bool)

(assert (=> b!5205368 m!6256646))

(declare-fun m!6256648 () Bool)

(assert (=> b!5205354 m!6256648))

(declare-fun m!6256650 () Bool)

(assert (=> b!5205351 m!6256650))

(declare-fun m!6256652 () Bool)

(assert (=> b!5205352 m!6256652))

(declare-fun m!6256654 () Bool)

(assert (=> b!5205357 m!6256654))

(declare-fun m!6256656 () Bool)

(assert (=> b!5205357 m!6256656))

(declare-fun m!6256658 () Bool)

(assert (=> b!5205357 m!6256658))

(declare-fun m!6256660 () Bool)

(assert (=> b!5205361 m!6256660))

(declare-fun m!6256662 () Bool)

(assert (=> b!5205365 m!6256662))

(assert (=> b!5205365 m!6256662))

(declare-fun m!6256664 () Bool)

(assert (=> b!5205365 m!6256664))

(check-sat (not b!5205347) (not b!5205361) tp_is_empty!38839 (not b!5205368) (not b!5205364) (not b!5205353) (not b!5205355) (not b!5205357) (not b!5205354) (not b!5205349) (not b!5205351) (not b!5205363) (not b!5205348) (not start!550634) (not b!5205358) (not b!5205365) (not b!5205366) (not b!5205352) (not b!5205367) (not b!5205360) (not b!5205350) (not setNonEmpty!33044))
(check-sat)
(get-model)

(declare-fun d!1678776 () Bool)

(declare-fun lambda!260920 () Int)

(declare-fun forall!14229 (List!60678 Int) Bool)

(assert (=> d!1678776 (= (inv!80229 (h!67003 zl!343)) (forall!14229 (exprs!4677 (h!67003 zl!343)) lambda!260920))))

(declare-fun bs!1209894 () Bool)

(assert (= bs!1209894 d!1678776))

(declare-fun m!6256694 () Bool)

(assert (=> bs!1209894 m!6256694))

(assert (=> b!5205368 d!1678776))

(declare-fun d!1678778 () Bool)

(declare-fun lt!2141558 () Regex!14793)

(assert (=> d!1678778 (validRegex!6529 lt!2141558)))

(assert (=> d!1678778 (= lt!2141558 (generalisedUnion!722 (unfocusZipperList!235 zl!343)))))

(assert (=> d!1678778 (= (unfocusZipper!535 zl!343) lt!2141558)))

(declare-fun bs!1209897 () Bool)

(assert (= bs!1209897 d!1678778))

(declare-fun m!6256700 () Bool)

(assert (=> bs!1209897 m!6256700))

(assert (=> bs!1209897 m!6256662))

(assert (=> bs!1209897 m!6256662))

(assert (=> bs!1209897 m!6256664))

(assert (=> b!5205367 d!1678778))

(declare-fun d!1678782 () Bool)

(declare-fun e!3241023 () Bool)

(assert (=> d!1678782 e!3241023))

(declare-fun res!2211370 () Bool)

(assert (=> d!1678782 (=> (not res!2211370) (not e!3241023))))

(declare-fun lt!2141563 () List!60679)

(declare-fun noDuplicate!1176 (List!60679) Bool)

(assert (=> d!1678782 (= res!2211370 (noDuplicate!1176 lt!2141563))))

(declare-fun choose!38692 ((InoxSet Context!8354)) List!60679)

(assert (=> d!1678782 (= lt!2141563 (choose!38692 z!1189))))

(assert (=> d!1678782 (= (toList!8577 z!1189) lt!2141563)))

(declare-fun b!5205409 () Bool)

(declare-fun content!10718 (List!60679) (InoxSet Context!8354))

(assert (=> b!5205409 (= e!3241023 (= (content!10718 lt!2141563) z!1189))))

(assert (= (and d!1678782 res!2211370) b!5205409))

(declare-fun m!6256702 () Bool)

(assert (=> d!1678782 m!6256702))

(declare-fun m!6256704 () Bool)

(assert (=> d!1678782 m!6256704))

(declare-fun m!6256706 () Bool)

(assert (=> b!5205409 m!6256706))

(assert (=> b!5205349 d!1678782))

(declare-fun bs!1209902 () Bool)

(declare-fun d!1678784 () Bool)

(assert (= bs!1209902 (and d!1678784 d!1678776)))

(declare-fun lambda!260932 () Int)

(assert (=> bs!1209902 (= lambda!260932 lambda!260920)))

(declare-fun b!5205462 () Bool)

(declare-fun e!3241058 () Bool)

(declare-fun e!3241057 () Bool)

(assert (=> b!5205462 (= e!3241058 e!3241057)))

(declare-fun c!897308 () Bool)

(declare-fun tail!10258 (List!60678) List!60678)

(assert (=> b!5205462 (= c!897308 (isEmpty!32461 (tail!10258 (unfocusZipperList!235 zl!343))))))

(declare-fun e!3241060 () Bool)

(assert (=> d!1678784 e!3241060))

(declare-fun res!2211394 () Bool)

(assert (=> d!1678784 (=> (not res!2211394) (not e!3241060))))

(declare-fun lt!2141567 () Regex!14793)

(assert (=> d!1678784 (= res!2211394 (validRegex!6529 lt!2141567))))

(declare-fun e!3241062 () Regex!14793)

(assert (=> d!1678784 (= lt!2141567 e!3241062)))

(declare-fun c!897309 () Bool)

(declare-fun e!3241059 () Bool)

(assert (=> d!1678784 (= c!897309 e!3241059)))

(declare-fun res!2211393 () Bool)

(assert (=> d!1678784 (=> (not res!2211393) (not e!3241059))))

(assert (=> d!1678784 (= res!2211393 ((_ is Cons!60554) (unfocusZipperList!235 zl!343)))))

(assert (=> d!1678784 (forall!14229 (unfocusZipperList!235 zl!343) lambda!260932)))

(assert (=> d!1678784 (= (generalisedUnion!722 (unfocusZipperList!235 zl!343)) lt!2141567)))

(declare-fun b!5205463 () Bool)

(declare-fun head!11161 (List!60678) Regex!14793)

(assert (=> b!5205463 (= e!3241057 (= lt!2141567 (head!11161 (unfocusZipperList!235 zl!343))))))

(declare-fun b!5205464 () Bool)

(declare-fun isEmptyLang!766 (Regex!14793) Bool)

(assert (=> b!5205464 (= e!3241058 (isEmptyLang!766 lt!2141567))))

(declare-fun b!5205465 () Bool)

(declare-fun e!3241061 () Regex!14793)

(assert (=> b!5205465 (= e!3241061 (Union!14793 (h!67002 (unfocusZipperList!235 zl!343)) (generalisedUnion!722 (t!373835 (unfocusZipperList!235 zl!343)))))))

(declare-fun b!5205466 () Bool)

(assert (=> b!5205466 (= e!3241060 e!3241058)))

(declare-fun c!897307 () Bool)

(assert (=> b!5205466 (= c!897307 (isEmpty!32461 (unfocusZipperList!235 zl!343)))))

(declare-fun b!5205467 () Bool)

(declare-fun isUnion!198 (Regex!14793) Bool)

(assert (=> b!5205467 (= e!3241057 (isUnion!198 lt!2141567))))

(declare-fun b!5205468 () Bool)

(assert (=> b!5205468 (= e!3241061 EmptyLang!14793)))

(declare-fun b!5205469 () Bool)

(assert (=> b!5205469 (= e!3241062 e!3241061)))

(declare-fun c!897306 () Bool)

(assert (=> b!5205469 (= c!897306 ((_ is Cons!60554) (unfocusZipperList!235 zl!343)))))

(declare-fun b!5205470 () Bool)

(assert (=> b!5205470 (= e!3241059 (isEmpty!32461 (t!373835 (unfocusZipperList!235 zl!343))))))

(declare-fun b!5205471 () Bool)

(assert (=> b!5205471 (= e!3241062 (h!67002 (unfocusZipperList!235 zl!343)))))

(assert (= (and d!1678784 res!2211393) b!5205470))

(assert (= (and d!1678784 c!897309) b!5205471))

(assert (= (and d!1678784 (not c!897309)) b!5205469))

(assert (= (and b!5205469 c!897306) b!5205465))

(assert (= (and b!5205469 (not c!897306)) b!5205468))

(assert (= (and d!1678784 res!2211394) b!5205466))

(assert (= (and b!5205466 c!897307) b!5205464))

(assert (= (and b!5205466 (not c!897307)) b!5205462))

(assert (= (and b!5205462 c!897308) b!5205463))

(assert (= (and b!5205462 (not c!897308)) b!5205467))

(assert (=> b!5205463 m!6256662))

(declare-fun m!6256728 () Bool)

(assert (=> b!5205463 m!6256728))

(assert (=> b!5205466 m!6256662))

(declare-fun m!6256730 () Bool)

(assert (=> b!5205466 m!6256730))

(declare-fun m!6256732 () Bool)

(assert (=> b!5205470 m!6256732))

(assert (=> b!5205462 m!6256662))

(declare-fun m!6256734 () Bool)

(assert (=> b!5205462 m!6256734))

(assert (=> b!5205462 m!6256734))

(declare-fun m!6256736 () Bool)

(assert (=> b!5205462 m!6256736))

(declare-fun m!6256738 () Bool)

(assert (=> b!5205465 m!6256738))

(declare-fun m!6256742 () Bool)

(assert (=> b!5205467 m!6256742))

(declare-fun m!6256746 () Bool)

(assert (=> b!5205464 m!6256746))

(declare-fun m!6256748 () Bool)

(assert (=> d!1678784 m!6256748))

(assert (=> d!1678784 m!6256662))

(declare-fun m!6256752 () Bool)

(assert (=> d!1678784 m!6256752))

(assert (=> b!5205365 d!1678784))

(declare-fun bs!1209903 () Bool)

(declare-fun d!1678796 () Bool)

(assert (= bs!1209903 (and d!1678796 d!1678776)))

(declare-fun lambda!260937 () Int)

(assert (=> bs!1209903 (= lambda!260937 lambda!260920)))

(declare-fun bs!1209904 () Bool)

(assert (= bs!1209904 (and d!1678796 d!1678784)))

(assert (=> bs!1209904 (= lambda!260937 lambda!260932)))

(declare-fun lt!2141570 () List!60678)

(assert (=> d!1678796 (forall!14229 lt!2141570 lambda!260937)))

(declare-fun e!3241088 () List!60678)

(assert (=> d!1678796 (= lt!2141570 e!3241088)))

(declare-fun c!897322 () Bool)

(assert (=> d!1678796 (= c!897322 ((_ is Cons!60555) zl!343))))

(assert (=> d!1678796 (= (unfocusZipperList!235 zl!343) lt!2141570)))

(declare-fun b!5205513 () Bool)

(assert (=> b!5205513 (= e!3241088 (Cons!60554 (generalisedConcat!462 (exprs!4677 (h!67003 zl!343))) (unfocusZipperList!235 (t!373836 zl!343))))))

(declare-fun b!5205514 () Bool)

(assert (=> b!5205514 (= e!3241088 Nil!60554)))

(assert (= (and d!1678796 c!897322) b!5205513))

(assert (= (and d!1678796 (not c!897322)) b!5205514))

(declare-fun m!6256754 () Bool)

(assert (=> d!1678796 m!6256754))

(assert (=> b!5205513 m!6256660))

(declare-fun m!6256756 () Bool)

(assert (=> b!5205513 m!6256756))

(assert (=> b!5205365 d!1678796))

(declare-fun d!1678798 () Bool)

(assert (=> d!1678798 (= (isEmpty!32461 (t!373835 (exprs!4677 (h!67003 zl!343)))) ((_ is Nil!60554) (t!373835 (exprs!4677 (h!67003 zl!343)))))))

(assert (=> b!5205355 d!1678798))

(declare-fun bs!1209913 () Bool)

(declare-fun b!5205613 () Bool)

(assert (= bs!1209913 (and b!5205613 b!5205364)))

(declare-fun lambda!260946 () Int)

(assert (=> bs!1209913 (not (= lambda!260946 lambda!260915))))

(assert (=> bs!1209913 (not (= lambda!260946 lambda!260916))))

(assert (=> b!5205613 true))

(assert (=> b!5205613 true))

(declare-fun bs!1209914 () Bool)

(declare-fun b!5205610 () Bool)

(assert (= bs!1209914 (and b!5205610 b!5205364)))

(declare-fun lambda!260949 () Int)

(assert (=> bs!1209914 (not (= lambda!260949 lambda!260915))))

(assert (=> bs!1209914 (= lambda!260949 lambda!260916)))

(declare-fun bs!1209915 () Bool)

(assert (= bs!1209915 (and b!5205610 b!5205613)))

(assert (=> bs!1209915 (not (= lambda!260949 lambda!260946))))

(assert (=> b!5205610 true))

(assert (=> b!5205610 true))

(declare-fun b!5205604 () Bool)

(declare-fun e!3241138 () Bool)

(assert (=> b!5205604 (= e!3241138 (= s!2326 (Cons!60556 (c!897284 r!7292) Nil!60556)))))

(declare-fun b!5205605 () Bool)

(declare-fun e!3241140 () Bool)

(declare-fun e!3241139 () Bool)

(assert (=> b!5205605 (= e!3241140 e!3241139)))

(declare-fun res!2211459 () Bool)

(assert (=> b!5205605 (= res!2211459 (matchRSpec!1896 (regOne!30099 r!7292) s!2326))))

(assert (=> b!5205605 (=> res!2211459 e!3241139)))

(declare-fun bm!366103 () Bool)

(declare-fun c!897346 () Bool)

(declare-fun call!366109 () Bool)

(assert (=> bm!366103 (= call!366109 (Exists!1974 (ite c!897346 lambda!260946 lambda!260949)))))

(declare-fun b!5205606 () Bool)

(declare-fun e!3241143 () Bool)

(declare-fun e!3241141 () Bool)

(assert (=> b!5205606 (= e!3241143 e!3241141)))

(declare-fun res!2211461 () Bool)

(assert (=> b!5205606 (= res!2211461 (not ((_ is EmptyLang!14793) r!7292)))))

(assert (=> b!5205606 (=> (not res!2211461) (not e!3241141))))

(declare-fun b!5205607 () Bool)

(declare-fun res!2211460 () Bool)

(declare-fun e!3241142 () Bool)

(assert (=> b!5205607 (=> res!2211460 e!3241142)))

(declare-fun call!366108 () Bool)

(assert (=> b!5205607 (= res!2211460 call!366108)))

(declare-fun e!3241137 () Bool)

(assert (=> b!5205607 (= e!3241137 e!3241142)))

(declare-fun b!5205608 () Bool)

(declare-fun c!897345 () Bool)

(assert (=> b!5205608 (= c!897345 ((_ is Union!14793) r!7292))))

(assert (=> b!5205608 (= e!3241138 e!3241140)))

(assert (=> b!5205610 (= e!3241137 call!366109)))

(declare-fun b!5205611 () Bool)

(assert (=> b!5205611 (= e!3241139 (matchRSpec!1896 (regTwo!30099 r!7292) s!2326))))

(declare-fun b!5205612 () Bool)

(assert (=> b!5205612 (= e!3241140 e!3241137)))

(assert (=> b!5205612 (= c!897346 ((_ is Star!14793) r!7292))))

(assert (=> b!5205613 (= e!3241142 call!366109)))

(declare-fun bm!366104 () Bool)

(declare-fun isEmpty!32465 (List!60680) Bool)

(assert (=> bm!366104 (= call!366108 (isEmpty!32465 s!2326))))

(declare-fun b!5205614 () Bool)

(assert (=> b!5205614 (= e!3241143 call!366108)))

(declare-fun b!5205609 () Bool)

(declare-fun c!897344 () Bool)

(assert (=> b!5205609 (= c!897344 ((_ is ElementMatch!14793) r!7292))))

(assert (=> b!5205609 (= e!3241141 e!3241138)))

(declare-fun d!1678800 () Bool)

(declare-fun c!897347 () Bool)

(assert (=> d!1678800 (= c!897347 ((_ is EmptyExpr!14793) r!7292))))

(assert (=> d!1678800 (= (matchRSpec!1896 r!7292 s!2326) e!3241143)))

(assert (= (and d!1678800 c!897347) b!5205614))

(assert (= (and d!1678800 (not c!897347)) b!5205606))

(assert (= (and b!5205606 res!2211461) b!5205609))

(assert (= (and b!5205609 c!897344) b!5205604))

(assert (= (and b!5205609 (not c!897344)) b!5205608))

(assert (= (and b!5205608 c!897345) b!5205605))

(assert (= (and b!5205608 (not c!897345)) b!5205612))

(assert (= (and b!5205605 (not res!2211459)) b!5205611))

(assert (= (and b!5205612 c!897346) b!5205607))

(assert (= (and b!5205612 (not c!897346)) b!5205610))

(assert (= (and b!5205607 (not res!2211460)) b!5205613))

(assert (= (or b!5205613 b!5205610) bm!366103))

(assert (= (or b!5205614 b!5205607) bm!366104))

(declare-fun m!6256780 () Bool)

(assert (=> b!5205605 m!6256780))

(declare-fun m!6256782 () Bool)

(assert (=> bm!366103 m!6256782))

(declare-fun m!6256784 () Bool)

(assert (=> b!5205611 m!6256784))

(declare-fun m!6256786 () Bool)

(assert (=> bm!366104 m!6256786))

(assert (=> b!5205357 d!1678800))

(declare-fun b!5205716 () Bool)

(declare-fun res!2211496 () Bool)

(declare-fun e!3241204 () Bool)

(assert (=> b!5205716 (=> (not res!2211496) (not e!3241204))))

(declare-fun call!366112 () Bool)

(assert (=> b!5205716 (= res!2211496 (not call!366112))))

(declare-fun b!5205717 () Bool)

(declare-fun res!2211500 () Bool)

(declare-fun e!3241206 () Bool)

(assert (=> b!5205717 (=> res!2211500 e!3241206)))

(declare-fun tail!10259 (List!60680) List!60680)

(assert (=> b!5205717 (= res!2211500 (not (isEmpty!32465 (tail!10259 s!2326))))))

(declare-fun b!5205719 () Bool)

(declare-fun res!2211499 () Bool)

(declare-fun e!3241202 () Bool)

(assert (=> b!5205719 (=> res!2211499 e!3241202)))

(assert (=> b!5205719 (= res!2211499 (not ((_ is ElementMatch!14793) r!7292)))))

(declare-fun e!3241203 () Bool)

(assert (=> b!5205719 (= e!3241203 e!3241202)))

(declare-fun b!5205720 () Bool)

(declare-fun e!3241205 () Bool)

(declare-fun lt!2141591 () Bool)

(assert (=> b!5205720 (= e!3241205 (= lt!2141591 call!366112))))

(declare-fun b!5205721 () Bool)

(declare-fun res!2211498 () Bool)

(assert (=> b!5205721 (=> (not res!2211498) (not e!3241204))))

(assert (=> b!5205721 (= res!2211498 (isEmpty!32465 (tail!10259 s!2326)))))

(declare-fun b!5205722 () Bool)

(declare-fun res!2211497 () Bool)

(assert (=> b!5205722 (=> res!2211497 e!3241202)))

(assert (=> b!5205722 (= res!2211497 e!3241204)))

(declare-fun res!2211495 () Bool)

(assert (=> b!5205722 (=> (not res!2211495) (not e!3241204))))

(assert (=> b!5205722 (= res!2211495 lt!2141591)))

(declare-fun b!5205723 () Bool)

(assert (=> b!5205723 (= e!3241203 (not lt!2141591))))

(declare-fun bm!366107 () Bool)

(assert (=> bm!366107 (= call!366112 (isEmpty!32465 s!2326))))

(declare-fun b!5205724 () Bool)

(declare-fun e!3241207 () Bool)

(declare-fun derivativeStep!4043 (Regex!14793 C!29856) Regex!14793)

(declare-fun head!11162 (List!60680) C!29856)

(assert (=> b!5205724 (= e!3241207 (matchR!6978 (derivativeStep!4043 r!7292 (head!11162 s!2326)) (tail!10259 s!2326)))))

(declare-fun b!5205725 () Bool)

(assert (=> b!5205725 (= e!3241205 e!3241203)))

(declare-fun c!897385 () Bool)

(assert (=> b!5205725 (= c!897385 ((_ is EmptyLang!14793) r!7292))))

(declare-fun d!1678808 () Bool)

(assert (=> d!1678808 e!3241205))

(declare-fun c!897383 () Bool)

(assert (=> d!1678808 (= c!897383 ((_ is EmptyExpr!14793) r!7292))))

(assert (=> d!1678808 (= lt!2141591 e!3241207)))

(declare-fun c!897384 () Bool)

(assert (=> d!1678808 (= c!897384 (isEmpty!32465 s!2326))))

(assert (=> d!1678808 (validRegex!6529 r!7292)))

(assert (=> d!1678808 (= (matchR!6978 r!7292 s!2326) lt!2141591)))

(declare-fun b!5205718 () Bool)

(assert (=> b!5205718 (= e!3241204 (= (head!11162 s!2326) (c!897284 r!7292)))))

(declare-fun b!5205726 () Bool)

(declare-fun e!3241208 () Bool)

(assert (=> b!5205726 (= e!3241208 e!3241206)))

(declare-fun res!2211493 () Bool)

(assert (=> b!5205726 (=> res!2211493 e!3241206)))

(assert (=> b!5205726 (= res!2211493 call!366112)))

(declare-fun b!5205727 () Bool)

(assert (=> b!5205727 (= e!3241207 (nullable!4962 r!7292))))

(declare-fun b!5205728 () Bool)

(assert (=> b!5205728 (= e!3241206 (not (= (head!11162 s!2326) (c!897284 r!7292))))))

(declare-fun b!5205729 () Bool)

(assert (=> b!5205729 (= e!3241202 e!3241208)))

(declare-fun res!2211494 () Bool)

(assert (=> b!5205729 (=> (not res!2211494) (not e!3241208))))

(assert (=> b!5205729 (= res!2211494 (not lt!2141591))))

(assert (= (and d!1678808 c!897384) b!5205727))

(assert (= (and d!1678808 (not c!897384)) b!5205724))

(assert (= (and d!1678808 c!897383) b!5205720))

(assert (= (and d!1678808 (not c!897383)) b!5205725))

(assert (= (and b!5205725 c!897385) b!5205723))

(assert (= (and b!5205725 (not c!897385)) b!5205719))

(assert (= (and b!5205719 (not res!2211499)) b!5205722))

(assert (= (and b!5205722 res!2211495) b!5205716))

(assert (= (and b!5205716 res!2211496) b!5205721))

(assert (= (and b!5205721 res!2211498) b!5205718))

(assert (= (and b!5205722 (not res!2211497)) b!5205729))

(assert (= (and b!5205729 res!2211494) b!5205726))

(assert (= (and b!5205726 (not res!2211493)) b!5205717))

(assert (= (and b!5205717 (not res!2211500)) b!5205728))

(assert (= (or b!5205720 b!5205716 b!5205726) bm!366107))

(declare-fun m!6256844 () Bool)

(assert (=> b!5205724 m!6256844))

(assert (=> b!5205724 m!6256844))

(declare-fun m!6256846 () Bool)

(assert (=> b!5205724 m!6256846))

(declare-fun m!6256848 () Bool)

(assert (=> b!5205724 m!6256848))

(assert (=> b!5205724 m!6256846))

(assert (=> b!5205724 m!6256848))

(declare-fun m!6256850 () Bool)

(assert (=> b!5205724 m!6256850))

(declare-fun m!6256852 () Bool)

(assert (=> b!5205727 m!6256852))

(assert (=> b!5205717 m!6256848))

(assert (=> b!5205717 m!6256848))

(declare-fun m!6256854 () Bool)

(assert (=> b!5205717 m!6256854))

(assert (=> b!5205728 m!6256844))

(assert (=> b!5205721 m!6256848))

(assert (=> b!5205721 m!6256848))

(assert (=> b!5205721 m!6256854))

(assert (=> bm!366107 m!6256786))

(assert (=> b!5205718 m!6256844))

(assert (=> d!1678808 m!6256786))

(assert (=> d!1678808 m!6256610))

(assert (=> b!5205357 d!1678808))

(declare-fun d!1678824 () Bool)

(assert (=> d!1678824 (= (matchR!6978 r!7292 s!2326) (matchRSpec!1896 r!7292 s!2326))))

(declare-fun lt!2141597 () Unit!152438)

(declare-fun choose!38695 (Regex!14793 List!60680) Unit!152438)

(assert (=> d!1678824 (= lt!2141597 (choose!38695 r!7292 s!2326))))

(assert (=> d!1678824 (validRegex!6529 r!7292)))

(assert (=> d!1678824 (= (mainMatchTheorem!1896 r!7292 s!2326) lt!2141597)))

(declare-fun bs!1209920 () Bool)

(assert (= bs!1209920 d!1678824))

(assert (=> bs!1209920 m!6256656))

(assert (=> bs!1209920 m!6256654))

(declare-fun m!6256872 () Bool)

(assert (=> bs!1209920 m!6256872))

(assert (=> bs!1209920 m!6256610))

(assert (=> b!5205357 d!1678824))

(declare-fun e!3241235 () Bool)

(declare-fun d!1678832 () Bool)

(assert (=> d!1678832 (= (matchZipper!1037 ((_ map or) lt!2141536 lt!2141541) (t!373837 s!2326)) e!3241235)))

(declare-fun res!2211509 () Bool)

(assert (=> d!1678832 (=> res!2211509 e!3241235)))

(assert (=> d!1678832 (= res!2211509 (matchZipper!1037 lt!2141536 (t!373837 s!2326)))))

(declare-fun lt!2141600 () Unit!152438)

(declare-fun choose!38696 ((InoxSet Context!8354) (InoxSet Context!8354) List!60680) Unit!152438)

(assert (=> d!1678832 (= lt!2141600 (choose!38696 lt!2141536 lt!2141541 (t!373837 s!2326)))))

(assert (=> d!1678832 (= (lemmaZipperConcatMatchesSameAsBothZippers!30 lt!2141536 lt!2141541 (t!373837 s!2326)) lt!2141600)))

(declare-fun b!5205774 () Bool)

(assert (=> b!5205774 (= e!3241235 (matchZipper!1037 lt!2141541 (t!373837 s!2326)))))

(assert (= (and d!1678832 (not res!2211509)) b!5205774))

(assert (=> d!1678832 m!6256608))

(assert (=> d!1678832 m!6256606))

(declare-fun m!6256876 () Bool)

(assert (=> d!1678832 m!6256876))

(assert (=> b!5205774 m!6256648))

(assert (=> b!5205353 d!1678832))

(declare-fun d!1678836 () Bool)

(declare-fun c!897413 () Bool)

(assert (=> d!1678836 (= c!897413 (isEmpty!32465 (t!373837 s!2326)))))

(declare-fun e!3241247 () Bool)

(assert (=> d!1678836 (= (matchZipper!1037 lt!2141536 (t!373837 s!2326)) e!3241247)))

(declare-fun b!5205795 () Bool)

(declare-fun nullableZipper!1221 ((InoxSet Context!8354)) Bool)

(assert (=> b!5205795 (= e!3241247 (nullableZipper!1221 lt!2141536))))

(declare-fun b!5205796 () Bool)

(declare-fun derivationStepZipper!1065 ((InoxSet Context!8354) C!29856) (InoxSet Context!8354))

(assert (=> b!5205796 (= e!3241247 (matchZipper!1037 (derivationStepZipper!1065 lt!2141536 (head!11162 (t!373837 s!2326))) (tail!10259 (t!373837 s!2326))))))

(assert (= (and d!1678836 c!897413) b!5205795))

(assert (= (and d!1678836 (not c!897413)) b!5205796))

(declare-fun m!6256896 () Bool)

(assert (=> d!1678836 m!6256896))

(declare-fun m!6256898 () Bool)

(assert (=> b!5205795 m!6256898))

(declare-fun m!6256900 () Bool)

(assert (=> b!5205796 m!6256900))

(assert (=> b!5205796 m!6256900))

(declare-fun m!6256902 () Bool)

(assert (=> b!5205796 m!6256902))

(declare-fun m!6256904 () Bool)

(assert (=> b!5205796 m!6256904))

(assert (=> b!5205796 m!6256902))

(assert (=> b!5205796 m!6256904))

(declare-fun m!6256906 () Bool)

(assert (=> b!5205796 m!6256906))

(assert (=> b!5205353 d!1678836))

(declare-fun d!1678844 () Bool)

(declare-fun c!897414 () Bool)

(assert (=> d!1678844 (= c!897414 (isEmpty!32465 (t!373837 s!2326)))))

(declare-fun e!3241248 () Bool)

(assert (=> d!1678844 (= (matchZipper!1037 ((_ map or) lt!2141536 lt!2141541) (t!373837 s!2326)) e!3241248)))

(declare-fun b!5205797 () Bool)

(assert (=> b!5205797 (= e!3241248 (nullableZipper!1221 ((_ map or) lt!2141536 lt!2141541)))))

(declare-fun b!5205798 () Bool)

(assert (=> b!5205798 (= e!3241248 (matchZipper!1037 (derivationStepZipper!1065 ((_ map or) lt!2141536 lt!2141541) (head!11162 (t!373837 s!2326))) (tail!10259 (t!373837 s!2326))))))

(assert (= (and d!1678844 c!897414) b!5205797))

(assert (= (and d!1678844 (not c!897414)) b!5205798))

(assert (=> d!1678844 m!6256896))

(declare-fun m!6256910 () Bool)

(assert (=> b!5205797 m!6256910))

(assert (=> b!5205798 m!6256900))

(assert (=> b!5205798 m!6256900))

(declare-fun m!6256912 () Bool)

(assert (=> b!5205798 m!6256912))

(assert (=> b!5205798 m!6256904))

(assert (=> b!5205798 m!6256912))

(assert (=> b!5205798 m!6256904))

(declare-fun m!6256914 () Bool)

(assert (=> b!5205798 m!6256914))

(assert (=> b!5205353 d!1678844))

(declare-fun bs!1209927 () Bool)

(declare-fun d!1678848 () Bool)

(assert (= bs!1209927 (and d!1678848 d!1678776)))

(declare-fun lambda!260960 () Int)

(assert (=> bs!1209927 (= lambda!260960 lambda!260920)))

(declare-fun bs!1209928 () Bool)

(assert (= bs!1209928 (and d!1678848 d!1678784)))

(assert (=> bs!1209928 (= lambda!260960 lambda!260932)))

(declare-fun bs!1209930 () Bool)

(assert (= bs!1209930 (and d!1678848 d!1678796)))

(assert (=> bs!1209930 (= lambda!260960 lambda!260937)))

(assert (=> d!1678848 (= (inv!80229 setElem!33044) (forall!14229 (exprs!4677 setElem!33044) lambda!260960))))

(declare-fun bs!1209934 () Bool)

(assert (= bs!1209934 d!1678848))

(declare-fun m!6256922 () Bool)

(assert (=> bs!1209934 m!6256922))

(assert (=> setNonEmpty!33044 d!1678848))

(declare-fun d!1678854 () Bool)

(declare-fun res!2211532 () Bool)

(declare-fun e!3241302 () Bool)

(assert (=> d!1678854 (=> res!2211532 e!3241302)))

(assert (=> d!1678854 (= res!2211532 ((_ is ElementMatch!14793) r!7292))))

(assert (=> d!1678854 (= (validRegex!6529 r!7292) e!3241302)))

(declare-fun b!5205883 () Bool)

(declare-fun e!3241298 () Bool)

(declare-fun e!3241297 () Bool)

(assert (=> b!5205883 (= e!3241298 e!3241297)))

(declare-fun c!897421 () Bool)

(assert (=> b!5205883 (= c!897421 ((_ is Union!14793) r!7292))))

(declare-fun b!5205884 () Bool)

(declare-fun res!2211534 () Bool)

(declare-fun e!3241299 () Bool)

(assert (=> b!5205884 (=> (not res!2211534) (not e!3241299))))

(declare-fun call!366147 () Bool)

(assert (=> b!5205884 (= res!2211534 call!366147)))

(assert (=> b!5205884 (= e!3241297 e!3241299)))

(declare-fun b!5205885 () Bool)

(declare-fun res!2211533 () Bool)

(declare-fun e!3241301 () Bool)

(assert (=> b!5205885 (=> res!2211533 e!3241301)))

(assert (=> b!5205885 (= res!2211533 (not ((_ is Concat!23638) r!7292)))))

(assert (=> b!5205885 (= e!3241297 e!3241301)))

(declare-fun b!5205886 () Bool)

(declare-fun e!3241300 () Bool)

(assert (=> b!5205886 (= e!3241298 e!3241300)))

(declare-fun res!2211531 () Bool)

(assert (=> b!5205886 (= res!2211531 (not (nullable!4962 (reg!15122 r!7292))))))

(assert (=> b!5205886 (=> (not res!2211531) (not e!3241300))))

(declare-fun b!5205887 () Bool)

(declare-fun e!3241296 () Bool)

(assert (=> b!5205887 (= e!3241301 e!3241296)))

(declare-fun res!2211530 () Bool)

(assert (=> b!5205887 (=> (not res!2211530) (not e!3241296))))

(assert (=> b!5205887 (= res!2211530 call!366147)))

(declare-fun b!5205888 () Bool)

(declare-fun call!366146 () Bool)

(assert (=> b!5205888 (= e!3241296 call!366146)))

(declare-fun bm!366140 () Bool)

(declare-fun call!366145 () Bool)

(assert (=> bm!366140 (= call!366146 call!366145)))

(declare-fun b!5205889 () Bool)

(assert (=> b!5205889 (= e!3241302 e!3241298)))

(declare-fun c!897422 () Bool)

(assert (=> b!5205889 (= c!897422 ((_ is Star!14793) r!7292))))

(declare-fun bm!366141 () Bool)

(assert (=> bm!366141 (= call!366145 (validRegex!6529 (ite c!897422 (reg!15122 r!7292) (ite c!897421 (regTwo!30099 r!7292) (regTwo!30098 r!7292)))))))

(declare-fun bm!366142 () Bool)

(assert (=> bm!366142 (= call!366147 (validRegex!6529 (ite c!897421 (regOne!30099 r!7292) (regOne!30098 r!7292))))))

(declare-fun b!5205890 () Bool)

(assert (=> b!5205890 (= e!3241300 call!366145)))

(declare-fun b!5205891 () Bool)

(assert (=> b!5205891 (= e!3241299 call!366146)))

(assert (= (and d!1678854 (not res!2211532)) b!5205889))

(assert (= (and b!5205889 c!897422) b!5205886))

(assert (= (and b!5205889 (not c!897422)) b!5205883))

(assert (= (and b!5205886 res!2211531) b!5205890))

(assert (= (and b!5205883 c!897421) b!5205884))

(assert (= (and b!5205883 (not c!897421)) b!5205885))

(assert (= (and b!5205884 res!2211534) b!5205891))

(assert (= (and b!5205885 (not res!2211533)) b!5205887))

(assert (= (and b!5205887 res!2211530) b!5205888))

(assert (= (or b!5205891 b!5205888) bm!366140))

(assert (= (or b!5205884 b!5205887) bm!366142))

(assert (= (or b!5205890 bm!366140) bm!366141))

(declare-fun m!6256938 () Bool)

(assert (=> b!5205886 m!6256938))

(declare-fun m!6256940 () Bool)

(assert (=> bm!366141 m!6256940))

(declare-fun m!6256942 () Bool)

(assert (=> bm!366142 m!6256942))

(assert (=> start!550634 d!1678854))

(declare-fun d!1678860 () Bool)

(declare-fun c!897423 () Bool)

(assert (=> d!1678860 (= c!897423 (isEmpty!32465 (t!373837 s!2326)))))

(declare-fun e!3241303 () Bool)

(assert (=> d!1678860 (= (matchZipper!1037 lt!2141541 (t!373837 s!2326)) e!3241303)))

(declare-fun b!5205892 () Bool)

(assert (=> b!5205892 (= e!3241303 (nullableZipper!1221 lt!2141541))))

(declare-fun b!5205893 () Bool)

(assert (=> b!5205893 (= e!3241303 (matchZipper!1037 (derivationStepZipper!1065 lt!2141541 (head!11162 (t!373837 s!2326))) (tail!10259 (t!373837 s!2326))))))

(assert (= (and d!1678860 c!897423) b!5205892))

(assert (= (and d!1678860 (not c!897423)) b!5205893))

(assert (=> d!1678860 m!6256896))

(declare-fun m!6256944 () Bool)

(assert (=> b!5205892 m!6256944))

(assert (=> b!5205893 m!6256900))

(assert (=> b!5205893 m!6256900))

(declare-fun m!6256946 () Bool)

(assert (=> b!5205893 m!6256946))

(assert (=> b!5205893 m!6256904))

(assert (=> b!5205893 m!6256946))

(assert (=> b!5205893 m!6256904))

(declare-fun m!6256948 () Bool)

(assert (=> b!5205893 m!6256948))

(assert (=> b!5205354 d!1678860))

(declare-fun b!5205912 () Bool)

(declare-fun res!2211547 () Bool)

(declare-fun e!3241316 () Bool)

(assert (=> b!5205912 (=> (not res!2211547) (not e!3241316))))

(declare-fun lt!2141614 () Option!14904)

(declare-fun get!20803 (Option!14904) tuple2!63984)

(assert (=> b!5205912 (= res!2211547 (matchR!6978 (regOne!30098 r!7292) (_1!35295 (get!20803 lt!2141614))))))

(declare-fun b!5205913 () Bool)

(declare-fun lt!2141613 () Unit!152438)

(declare-fun lt!2141615 () Unit!152438)

(assert (=> b!5205913 (= lt!2141613 lt!2141615)))

(declare-fun ++!13201 (List!60680 List!60680) List!60680)

(assert (=> b!5205913 (= (++!13201 (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) Nil!60556)) (t!373837 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1616 (List!60680 C!29856 List!60680 List!60680) Unit!152438)

(assert (=> b!5205913 (= lt!2141615 (lemmaMoveElementToOtherListKeepsConcatEq!1616 Nil!60556 (h!67004 s!2326) (t!373837 s!2326) s!2326))))

(declare-fun e!3241314 () Option!14904)

(assert (=> b!5205913 (= e!3241314 (findConcatSeparation!1318 (regOne!30098 r!7292) (regTwo!30098 r!7292) (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) Nil!60556)) (t!373837 s!2326) s!2326))))

(declare-fun b!5205914 () Bool)

(declare-fun e!3241318 () Option!14904)

(assert (=> b!5205914 (= e!3241318 e!3241314)))

(declare-fun c!897428 () Bool)

(assert (=> b!5205914 (= c!897428 ((_ is Nil!60556) s!2326))))

(declare-fun d!1678862 () Bool)

(declare-fun e!3241315 () Bool)

(assert (=> d!1678862 e!3241315))

(declare-fun res!2211549 () Bool)

(assert (=> d!1678862 (=> res!2211549 e!3241315)))

(assert (=> d!1678862 (= res!2211549 e!3241316)))

(declare-fun res!2211546 () Bool)

(assert (=> d!1678862 (=> (not res!2211546) (not e!3241316))))

(assert (=> d!1678862 (= res!2211546 (isDefined!11607 lt!2141614))))

(assert (=> d!1678862 (= lt!2141614 e!3241318)))

(declare-fun c!897429 () Bool)

(declare-fun e!3241317 () Bool)

(assert (=> d!1678862 (= c!897429 e!3241317)))

(declare-fun res!2211548 () Bool)

(assert (=> d!1678862 (=> (not res!2211548) (not e!3241317))))

(assert (=> d!1678862 (= res!2211548 (matchR!6978 (regOne!30098 r!7292) Nil!60556))))

(assert (=> d!1678862 (validRegex!6529 (regOne!30098 r!7292))))

(assert (=> d!1678862 (= (findConcatSeparation!1318 (regOne!30098 r!7292) (regTwo!30098 r!7292) Nil!60556 s!2326 s!2326) lt!2141614)))

(declare-fun b!5205915 () Bool)

(assert (=> b!5205915 (= e!3241317 (matchR!6978 (regTwo!30098 r!7292) s!2326))))

(declare-fun b!5205916 () Bool)

(assert (=> b!5205916 (= e!3241318 (Some!14903 (tuple2!63985 Nil!60556 s!2326)))))

(declare-fun b!5205917 () Bool)

(assert (=> b!5205917 (= e!3241315 (not (isDefined!11607 lt!2141614)))))

(declare-fun b!5205918 () Bool)

(declare-fun res!2211545 () Bool)

(assert (=> b!5205918 (=> (not res!2211545) (not e!3241316))))

(assert (=> b!5205918 (= res!2211545 (matchR!6978 (regTwo!30098 r!7292) (_2!35295 (get!20803 lt!2141614))))))

(declare-fun b!5205919 () Bool)

(assert (=> b!5205919 (= e!3241314 None!14903)))

(declare-fun b!5205920 () Bool)

(assert (=> b!5205920 (= e!3241316 (= (++!13201 (_1!35295 (get!20803 lt!2141614)) (_2!35295 (get!20803 lt!2141614))) s!2326))))

(assert (= (and d!1678862 res!2211548) b!5205915))

(assert (= (and d!1678862 c!897429) b!5205916))

(assert (= (and d!1678862 (not c!897429)) b!5205914))

(assert (= (and b!5205914 c!897428) b!5205919))

(assert (= (and b!5205914 (not c!897428)) b!5205913))

(assert (= (and d!1678862 res!2211546) b!5205912))

(assert (= (and b!5205912 res!2211547) b!5205918))

(assert (= (and b!5205918 res!2211545) b!5205920))

(assert (= (and d!1678862 (not res!2211549)) b!5205917))

(declare-fun m!6256950 () Bool)

(assert (=> b!5205913 m!6256950))

(assert (=> b!5205913 m!6256950))

(declare-fun m!6256952 () Bool)

(assert (=> b!5205913 m!6256952))

(declare-fun m!6256954 () Bool)

(assert (=> b!5205913 m!6256954))

(assert (=> b!5205913 m!6256950))

(declare-fun m!6256956 () Bool)

(assert (=> b!5205913 m!6256956))

(declare-fun m!6256958 () Bool)

(assert (=> b!5205920 m!6256958))

(declare-fun m!6256960 () Bool)

(assert (=> b!5205920 m!6256960))

(declare-fun m!6256962 () Bool)

(assert (=> b!5205915 m!6256962))

(assert (=> b!5205918 m!6256958))

(declare-fun m!6256964 () Bool)

(assert (=> b!5205918 m!6256964))

(declare-fun m!6256966 () Bool)

(assert (=> b!5205917 m!6256966))

(assert (=> d!1678862 m!6256966))

(declare-fun m!6256968 () Bool)

(assert (=> d!1678862 m!6256968))

(declare-fun m!6256970 () Bool)

(assert (=> d!1678862 m!6256970))

(assert (=> b!5205912 m!6256958))

(declare-fun m!6256972 () Bool)

(assert (=> b!5205912 m!6256972))

(assert (=> b!5205364 d!1678862))

(declare-fun d!1678864 () Bool)

(declare-fun choose!38698 (Int) Bool)

(assert (=> d!1678864 (= (Exists!1974 lambda!260916) (choose!38698 lambda!260916))))

(declare-fun bs!1209938 () Bool)

(assert (= bs!1209938 d!1678864))

(declare-fun m!6256974 () Bool)

(assert (=> bs!1209938 m!6256974))

(assert (=> b!5205364 d!1678864))

(declare-fun d!1678866 () Bool)

(assert (=> d!1678866 (= (Exists!1974 lambda!260915) (choose!38698 lambda!260915))))

(declare-fun bs!1209939 () Bool)

(assert (= bs!1209939 d!1678866))

(declare-fun m!6256976 () Bool)

(assert (=> bs!1209939 m!6256976))

(assert (=> b!5205364 d!1678866))

(declare-fun bs!1209940 () Bool)

(declare-fun d!1678868 () Bool)

(assert (= bs!1209940 (and d!1678868 b!5205364)))

(declare-fun lambda!260964 () Int)

(assert (=> bs!1209940 (= lambda!260964 lambda!260915)))

(assert (=> bs!1209940 (not (= lambda!260964 lambda!260916))))

(declare-fun bs!1209941 () Bool)

(assert (= bs!1209941 (and d!1678868 b!5205613)))

(assert (=> bs!1209941 (not (= lambda!260964 lambda!260946))))

(declare-fun bs!1209942 () Bool)

(assert (= bs!1209942 (and d!1678868 b!5205610)))

(assert (=> bs!1209942 (not (= lambda!260964 lambda!260949))))

(assert (=> d!1678868 true))

(assert (=> d!1678868 true))

(assert (=> d!1678868 true))

(assert (=> d!1678868 (= (isDefined!11607 (findConcatSeparation!1318 (regOne!30098 r!7292) (regTwo!30098 r!7292) Nil!60556 s!2326 s!2326)) (Exists!1974 lambda!260964))))

(declare-fun lt!2141618 () Unit!152438)

(declare-fun choose!38699 (Regex!14793 Regex!14793 List!60680) Unit!152438)

(assert (=> d!1678868 (= lt!2141618 (choose!38699 (regOne!30098 r!7292) (regTwo!30098 r!7292) s!2326))))

(assert (=> d!1678868 (validRegex!6529 (regOne!30098 r!7292))))

(assert (=> d!1678868 (= (lemmaFindConcatSeparationEquivalentToExists!1082 (regOne!30098 r!7292) (regTwo!30098 r!7292) s!2326) lt!2141618)))

(declare-fun bs!1209943 () Bool)

(assert (= bs!1209943 d!1678868))

(assert (=> bs!1209943 m!6256970))

(declare-fun m!6256978 () Bool)

(assert (=> bs!1209943 m!6256978))

(assert (=> bs!1209943 m!6256636))

(declare-fun m!6256980 () Bool)

(assert (=> bs!1209943 m!6256980))

(assert (=> bs!1209943 m!6256636))

(assert (=> bs!1209943 m!6256638))

(assert (=> b!5205364 d!1678868))

(declare-fun bs!1209944 () Bool)

(declare-fun d!1678870 () Bool)

(assert (= bs!1209944 (and d!1678870 b!5205364)))

(declare-fun lambda!260969 () Int)

(assert (=> bs!1209944 (not (= lambda!260969 lambda!260916))))

(assert (=> bs!1209944 (= lambda!260969 lambda!260915)))

(declare-fun bs!1209945 () Bool)

(assert (= bs!1209945 (and d!1678870 b!5205613)))

(assert (=> bs!1209945 (not (= lambda!260969 lambda!260946))))

(declare-fun bs!1209946 () Bool)

(assert (= bs!1209946 (and d!1678870 b!5205610)))

(assert (=> bs!1209946 (not (= lambda!260969 lambda!260949))))

(declare-fun bs!1209947 () Bool)

(assert (= bs!1209947 (and d!1678870 d!1678868)))

(assert (=> bs!1209947 (= lambda!260969 lambda!260964)))

(assert (=> d!1678870 true))

(assert (=> d!1678870 true))

(assert (=> d!1678870 true))

(declare-fun lambda!260970 () Int)

(assert (=> bs!1209944 (= lambda!260970 lambda!260916)))

(assert (=> bs!1209944 (not (= lambda!260970 lambda!260915))))

(assert (=> bs!1209945 (not (= lambda!260970 lambda!260946))))

(assert (=> bs!1209946 (= lambda!260970 lambda!260949)))

(declare-fun bs!1209948 () Bool)

(assert (= bs!1209948 d!1678870))

(assert (=> bs!1209948 (not (= lambda!260970 lambda!260969))))

(assert (=> bs!1209947 (not (= lambda!260970 lambda!260964))))

(assert (=> d!1678870 true))

(assert (=> d!1678870 true))

(assert (=> d!1678870 true))

(assert (=> d!1678870 (= (Exists!1974 lambda!260969) (Exists!1974 lambda!260970))))

(declare-fun lt!2141621 () Unit!152438)

(declare-fun choose!38700 (Regex!14793 Regex!14793 List!60680) Unit!152438)

(assert (=> d!1678870 (= lt!2141621 (choose!38700 (regOne!30098 r!7292) (regTwo!30098 r!7292) s!2326))))

(assert (=> d!1678870 (validRegex!6529 (regOne!30098 r!7292))))

(assert (=> d!1678870 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!628 (regOne!30098 r!7292) (regTwo!30098 r!7292) s!2326) lt!2141621)))

(declare-fun m!6256982 () Bool)

(assert (=> bs!1209948 m!6256982))

(declare-fun m!6256984 () Bool)

(assert (=> bs!1209948 m!6256984))

(declare-fun m!6256986 () Bool)

(assert (=> bs!1209948 m!6256986))

(assert (=> bs!1209948 m!6256970))

(assert (=> b!5205364 d!1678870))

(declare-fun d!1678872 () Bool)

(declare-fun isEmpty!32466 (Option!14904) Bool)

(assert (=> d!1678872 (= (isDefined!11607 (findConcatSeparation!1318 (regOne!30098 r!7292) (regTwo!30098 r!7292) Nil!60556 s!2326 s!2326)) (not (isEmpty!32466 (findConcatSeparation!1318 (regOne!30098 r!7292) (regTwo!30098 r!7292) Nil!60556 s!2326 s!2326))))))

(declare-fun bs!1209949 () Bool)

(assert (= bs!1209949 d!1678872))

(assert (=> bs!1209949 m!6256636))

(declare-fun m!6256988 () Bool)

(assert (=> bs!1209949 m!6256988))

(assert (=> b!5205364 d!1678872))

(declare-fun d!1678874 () Bool)

(declare-fun res!2211564 () Bool)

(declare-fun e!3241331 () Bool)

(assert (=> d!1678874 (=> res!2211564 e!3241331)))

(assert (=> d!1678874 (= res!2211564 ((_ is ElementMatch!14793) (regTwo!30099 (regOne!30098 r!7292))))))

(assert (=> d!1678874 (= (validRegex!6529 (regTwo!30099 (regOne!30098 r!7292))) e!3241331)))

(declare-fun b!5205933 () Bool)

(declare-fun e!3241327 () Bool)

(declare-fun e!3241326 () Bool)

(assert (=> b!5205933 (= e!3241327 e!3241326)))

(declare-fun c!897430 () Bool)

(assert (=> b!5205933 (= c!897430 ((_ is Union!14793) (regTwo!30099 (regOne!30098 r!7292))))))

(declare-fun b!5205934 () Bool)

(declare-fun res!2211566 () Bool)

(declare-fun e!3241328 () Bool)

(assert (=> b!5205934 (=> (not res!2211566) (not e!3241328))))

(declare-fun call!366150 () Bool)

(assert (=> b!5205934 (= res!2211566 call!366150)))

(assert (=> b!5205934 (= e!3241326 e!3241328)))

(declare-fun b!5205935 () Bool)

(declare-fun res!2211565 () Bool)

(declare-fun e!3241330 () Bool)

(assert (=> b!5205935 (=> res!2211565 e!3241330)))

(assert (=> b!5205935 (= res!2211565 (not ((_ is Concat!23638) (regTwo!30099 (regOne!30098 r!7292)))))))

(assert (=> b!5205935 (= e!3241326 e!3241330)))

(declare-fun b!5205936 () Bool)

(declare-fun e!3241329 () Bool)

(assert (=> b!5205936 (= e!3241327 e!3241329)))

(declare-fun res!2211563 () Bool)

(assert (=> b!5205936 (= res!2211563 (not (nullable!4962 (reg!15122 (regTwo!30099 (regOne!30098 r!7292))))))))

(assert (=> b!5205936 (=> (not res!2211563) (not e!3241329))))

(declare-fun b!5205937 () Bool)

(declare-fun e!3241325 () Bool)

(assert (=> b!5205937 (= e!3241330 e!3241325)))

(declare-fun res!2211562 () Bool)

(assert (=> b!5205937 (=> (not res!2211562) (not e!3241325))))

(assert (=> b!5205937 (= res!2211562 call!366150)))

(declare-fun b!5205938 () Bool)

(declare-fun call!366149 () Bool)

(assert (=> b!5205938 (= e!3241325 call!366149)))

(declare-fun bm!366143 () Bool)

(declare-fun call!366148 () Bool)

(assert (=> bm!366143 (= call!366149 call!366148)))

(declare-fun b!5205939 () Bool)

(assert (=> b!5205939 (= e!3241331 e!3241327)))

(declare-fun c!897431 () Bool)

(assert (=> b!5205939 (= c!897431 ((_ is Star!14793) (regTwo!30099 (regOne!30098 r!7292))))))

(declare-fun bm!366144 () Bool)

(assert (=> bm!366144 (= call!366148 (validRegex!6529 (ite c!897431 (reg!15122 (regTwo!30099 (regOne!30098 r!7292))) (ite c!897430 (regTwo!30099 (regTwo!30099 (regOne!30098 r!7292))) (regTwo!30098 (regTwo!30099 (regOne!30098 r!7292)))))))))

(declare-fun bm!366145 () Bool)

(assert (=> bm!366145 (= call!366150 (validRegex!6529 (ite c!897430 (regOne!30099 (regTwo!30099 (regOne!30098 r!7292))) (regOne!30098 (regTwo!30099 (regOne!30098 r!7292))))))))

(declare-fun b!5205940 () Bool)

(assert (=> b!5205940 (= e!3241329 call!366148)))

(declare-fun b!5205941 () Bool)

(assert (=> b!5205941 (= e!3241328 call!366149)))

(assert (= (and d!1678874 (not res!2211564)) b!5205939))

(assert (= (and b!5205939 c!897431) b!5205936))

(assert (= (and b!5205939 (not c!897431)) b!5205933))

(assert (= (and b!5205936 res!2211563) b!5205940))

(assert (= (and b!5205933 c!897430) b!5205934))

(assert (= (and b!5205933 (not c!897430)) b!5205935))

(assert (= (and b!5205934 res!2211566) b!5205941))

(assert (= (and b!5205935 (not res!2211565)) b!5205937))

(assert (= (and b!5205937 res!2211562) b!5205938))

(assert (= (or b!5205941 b!5205938) bm!366143))

(assert (= (or b!5205934 b!5205937) bm!366145))

(assert (= (or b!5205940 bm!366143) bm!366144))

(declare-fun m!6256990 () Bool)

(assert (=> b!5205936 m!6256990))

(declare-fun m!6256992 () Bool)

(assert (=> bm!366144 m!6256992))

(declare-fun m!6256994 () Bool)

(assert (=> bm!366145 m!6256994))

(assert (=> b!5205351 d!1678874))

(declare-fun bs!1209950 () Bool)

(declare-fun d!1678876 () Bool)

(assert (= bs!1209950 (and d!1678876 d!1678776)))

(declare-fun lambda!260973 () Int)

(assert (=> bs!1209950 (= lambda!260973 lambda!260920)))

(declare-fun bs!1209951 () Bool)

(assert (= bs!1209951 (and d!1678876 d!1678784)))

(assert (=> bs!1209951 (= lambda!260973 lambda!260932)))

(declare-fun bs!1209952 () Bool)

(assert (= bs!1209952 (and d!1678876 d!1678796)))

(assert (=> bs!1209952 (= lambda!260973 lambda!260937)))

(declare-fun bs!1209953 () Bool)

(assert (= bs!1209953 (and d!1678876 d!1678848)))

(assert (=> bs!1209953 (= lambda!260973 lambda!260960)))

(declare-fun b!5205962 () Bool)

(declare-fun e!3241346 () Bool)

(declare-fun lt!2141624 () Regex!14793)

(declare-fun isEmptyExpr!757 (Regex!14793) Bool)

(assert (=> b!5205962 (= e!3241346 (isEmptyExpr!757 lt!2141624))))

(declare-fun e!3241344 () Bool)

(assert (=> d!1678876 e!3241344))

(declare-fun res!2211572 () Bool)

(assert (=> d!1678876 (=> (not res!2211572) (not e!3241344))))

(assert (=> d!1678876 (= res!2211572 (validRegex!6529 lt!2141624))))

(declare-fun e!3241348 () Regex!14793)

(assert (=> d!1678876 (= lt!2141624 e!3241348)))

(declare-fun c!897441 () Bool)

(declare-fun e!3241349 () Bool)

(assert (=> d!1678876 (= c!897441 e!3241349)))

(declare-fun res!2211571 () Bool)

(assert (=> d!1678876 (=> (not res!2211571) (not e!3241349))))

(assert (=> d!1678876 (= res!2211571 ((_ is Cons!60554) (exprs!4677 (h!67003 zl!343))))))

(assert (=> d!1678876 (forall!14229 (exprs!4677 (h!67003 zl!343)) lambda!260973)))

(assert (=> d!1678876 (= (generalisedConcat!462 (exprs!4677 (h!67003 zl!343))) lt!2141624)))

(declare-fun b!5205963 () Bool)

(declare-fun e!3241345 () Regex!14793)

(assert (=> b!5205963 (= e!3241345 EmptyExpr!14793)))

(declare-fun b!5205964 () Bool)

(assert (=> b!5205964 (= e!3241349 (isEmpty!32461 (t!373835 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun b!5205965 () Bool)

(assert (=> b!5205965 (= e!3241348 e!3241345)))

(declare-fun c!897443 () Bool)

(assert (=> b!5205965 (= c!897443 ((_ is Cons!60554) (exprs!4677 (h!67003 zl!343))))))

(declare-fun b!5205966 () Bool)

(assert (=> b!5205966 (= e!3241348 (h!67002 (exprs!4677 (h!67003 zl!343))))))

(declare-fun b!5205967 () Bool)

(declare-fun e!3241347 () Bool)

(assert (=> b!5205967 (= e!3241347 (= lt!2141624 (head!11161 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun b!5205968 () Bool)

(assert (=> b!5205968 (= e!3241344 e!3241346)))

(declare-fun c!897442 () Bool)

(assert (=> b!5205968 (= c!897442 (isEmpty!32461 (exprs!4677 (h!67003 zl!343))))))

(declare-fun b!5205969 () Bool)

(assert (=> b!5205969 (= e!3241346 e!3241347)))

(declare-fun c!897440 () Bool)

(assert (=> b!5205969 (= c!897440 (isEmpty!32461 (tail!10258 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun b!5205970 () Bool)

(declare-fun isConcat!280 (Regex!14793) Bool)

(assert (=> b!5205970 (= e!3241347 (isConcat!280 lt!2141624))))

(declare-fun b!5205971 () Bool)

(assert (=> b!5205971 (= e!3241345 (Concat!23638 (h!67002 (exprs!4677 (h!67003 zl!343))) (generalisedConcat!462 (t!373835 (exprs!4677 (h!67003 zl!343))))))))

(assert (= (and d!1678876 res!2211571) b!5205964))

(assert (= (and d!1678876 c!897441) b!5205966))

(assert (= (and d!1678876 (not c!897441)) b!5205965))

(assert (= (and b!5205965 c!897443) b!5205971))

(assert (= (and b!5205965 (not c!897443)) b!5205963))

(assert (= (and d!1678876 res!2211572) b!5205968))

(assert (= (and b!5205968 c!897442) b!5205962))

(assert (= (and b!5205968 (not c!897442)) b!5205969))

(assert (= (and b!5205969 c!897440) b!5205967))

(assert (= (and b!5205969 (not c!897440)) b!5205970))

(declare-fun m!6256996 () Bool)

(assert (=> b!5205971 m!6256996))

(declare-fun m!6256998 () Bool)

(assert (=> b!5205967 m!6256998))

(declare-fun m!6257000 () Bool)

(assert (=> b!5205962 m!6257000))

(declare-fun m!6257002 () Bool)

(assert (=> b!5205968 m!6257002))

(declare-fun m!6257004 () Bool)

(assert (=> d!1678876 m!6257004))

(declare-fun m!6257006 () Bool)

(assert (=> d!1678876 m!6257006))

(declare-fun m!6257008 () Bool)

(assert (=> b!5205970 m!6257008))

(assert (=> b!5205964 m!6256612))

(declare-fun m!6257010 () Bool)

(assert (=> b!5205969 m!6257010))

(assert (=> b!5205969 m!6257010))

(declare-fun m!6257012 () Bool)

(assert (=> b!5205969 m!6257012))

(assert (=> b!5205361 d!1678876))

(declare-fun d!1678878 () Bool)

(declare-fun choose!38701 ((InoxSet Context!8354) Int) (InoxSet Context!8354))

(assert (=> d!1678878 (= (flatMap!520 z!1189 lambda!260917) (choose!38701 z!1189 lambda!260917))))

(declare-fun bs!1209954 () Bool)

(assert (= bs!1209954 d!1678878))

(declare-fun m!6257014 () Bool)

(assert (=> bs!1209954 m!6257014))

(assert (=> b!5205360 d!1678878))

(declare-fun d!1678880 () Bool)

(declare-fun c!897448 () Bool)

(declare-fun e!3241357 () Bool)

(assert (=> d!1678880 (= c!897448 e!3241357)))

(declare-fun res!2211575 () Bool)

(assert (=> d!1678880 (=> (not res!2211575) (not e!3241357))))

(assert (=> d!1678880 (= res!2211575 ((_ is Cons!60554) (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343))))))))))

(declare-fun e!3241358 () (InoxSet Context!8354))

(assert (=> d!1678880 (= (derivationStepZipperUp!165 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343))))) (h!67004 s!2326)) e!3241358)))

(declare-fun b!5205982 () Bool)

(declare-fun e!3241356 () (InoxSet Context!8354))

(assert (=> b!5205982 (= e!3241356 ((as const (Array Context!8354 Bool)) false))))

(declare-fun b!5205983 () Bool)

(assert (=> b!5205983 (= e!3241357 (nullable!4962 (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))))))

(declare-fun call!366153 () (InoxSet Context!8354))

(declare-fun b!5205984 () Bool)

(assert (=> b!5205984 (= e!3241358 ((_ map or) call!366153 (derivationStepZipperUp!165 (Context!8355 (t!373835 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))) (h!67004 s!2326))))))

(declare-fun bm!366148 () Bool)

(assert (=> bm!366148 (= call!366153 (derivationStepZipperDown!241 (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343))))))) (Context!8355 (t!373835 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))) (h!67004 s!2326)))))

(declare-fun b!5205985 () Bool)

(assert (=> b!5205985 (= e!3241356 call!366153)))

(declare-fun b!5205986 () Bool)

(assert (=> b!5205986 (= e!3241358 e!3241356)))

(declare-fun c!897449 () Bool)

(assert (=> b!5205986 (= c!897449 ((_ is Cons!60554) (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343))))))))))

(assert (= (and d!1678880 res!2211575) b!5205983))

(assert (= (and d!1678880 c!897448) b!5205984))

(assert (= (and d!1678880 (not c!897448)) b!5205986))

(assert (= (and b!5205986 c!897449) b!5205985))

(assert (= (and b!5205986 (not c!897449)) b!5205982))

(assert (= (or b!5205984 b!5205985) bm!366148))

(declare-fun m!6257016 () Bool)

(assert (=> b!5205983 m!6257016))

(declare-fun m!6257018 () Bool)

(assert (=> b!5205984 m!6257018))

(declare-fun m!6257020 () Bool)

(assert (=> bm!366148 m!6257020))

(assert (=> b!5205360 d!1678880))

(declare-fun d!1678882 () Bool)

(declare-fun dynLambda!23919 (Int Context!8354) (InoxSet Context!8354))

(assert (=> d!1678882 (= (flatMap!520 z!1189 lambda!260917) (dynLambda!23919 lambda!260917 (h!67003 zl!343)))))

(declare-fun lt!2141627 () Unit!152438)

(declare-fun choose!38702 ((InoxSet Context!8354) Context!8354 Int) Unit!152438)

(assert (=> d!1678882 (= lt!2141627 (choose!38702 z!1189 (h!67003 zl!343) lambda!260917))))

(assert (=> d!1678882 (= z!1189 (store ((as const (Array Context!8354 Bool)) false) (h!67003 zl!343) true))))

(assert (=> d!1678882 (= (lemmaFlatMapOnSingletonSet!52 z!1189 (h!67003 zl!343) lambda!260917) lt!2141627)))

(declare-fun b_lambda!201417 () Bool)

(assert (=> (not b_lambda!201417) (not d!1678882)))

(declare-fun bs!1209955 () Bool)

(assert (= bs!1209955 d!1678882))

(assert (=> bs!1209955 m!6256626))

(declare-fun m!6257022 () Bool)

(assert (=> bs!1209955 m!6257022))

(declare-fun m!6257024 () Bool)

(assert (=> bs!1209955 m!6257024))

(declare-fun m!6257026 () Bool)

(assert (=> bs!1209955 m!6257026))

(assert (=> b!5205360 d!1678882))

(declare-fun d!1678884 () Bool)

(declare-fun nullableFct!1373 (Regex!14793) Bool)

(assert (=> d!1678884 (= (nullable!4962 (h!67002 (exprs!4677 (h!67003 zl!343)))) (nullableFct!1373 (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun bs!1209956 () Bool)

(assert (= bs!1209956 d!1678884))

(declare-fun m!6257028 () Bool)

(assert (=> bs!1209956 m!6257028))

(assert (=> b!5205360 d!1678884))

(declare-fun d!1678886 () Bool)

(declare-fun c!897450 () Bool)

(declare-fun e!3241360 () Bool)

(assert (=> d!1678886 (= c!897450 e!3241360)))

(declare-fun res!2211576 () Bool)

(assert (=> d!1678886 (=> (not res!2211576) (not e!3241360))))

(assert (=> d!1678886 (= res!2211576 ((_ is Cons!60554) (exprs!4677 lt!2141533)))))

(declare-fun e!3241361 () (InoxSet Context!8354))

(assert (=> d!1678886 (= (derivationStepZipperUp!165 lt!2141533 (h!67004 s!2326)) e!3241361)))

(declare-fun b!5205987 () Bool)

(declare-fun e!3241359 () (InoxSet Context!8354))

(assert (=> b!5205987 (= e!3241359 ((as const (Array Context!8354 Bool)) false))))

(declare-fun b!5205988 () Bool)

(assert (=> b!5205988 (= e!3241360 (nullable!4962 (h!67002 (exprs!4677 lt!2141533))))))

(declare-fun call!366154 () (InoxSet Context!8354))

(declare-fun b!5205989 () Bool)

(assert (=> b!5205989 (= e!3241361 ((_ map or) call!366154 (derivationStepZipperUp!165 (Context!8355 (t!373835 (exprs!4677 lt!2141533))) (h!67004 s!2326))))))

(declare-fun bm!366149 () Bool)

(assert (=> bm!366149 (= call!366154 (derivationStepZipperDown!241 (h!67002 (exprs!4677 lt!2141533)) (Context!8355 (t!373835 (exprs!4677 lt!2141533))) (h!67004 s!2326)))))

(declare-fun b!5205990 () Bool)

(assert (=> b!5205990 (= e!3241359 call!366154)))

(declare-fun b!5205991 () Bool)

(assert (=> b!5205991 (= e!3241361 e!3241359)))

(declare-fun c!897451 () Bool)

(assert (=> b!5205991 (= c!897451 ((_ is Cons!60554) (exprs!4677 lt!2141533)))))

(assert (= (and d!1678886 res!2211576) b!5205988))

(assert (= (and d!1678886 c!897450) b!5205989))

(assert (= (and d!1678886 (not c!897450)) b!5205991))

(assert (= (and b!5205991 c!897451) b!5205990))

(assert (= (and b!5205991 (not c!897451)) b!5205987))

(assert (= (or b!5205989 b!5205990) bm!366149))

(declare-fun m!6257030 () Bool)

(assert (=> b!5205988 m!6257030))

(declare-fun m!6257032 () Bool)

(assert (=> b!5205989 m!6257032))

(declare-fun m!6257034 () Bool)

(assert (=> bm!366149 m!6257034))

(assert (=> b!5205360 d!1678886))

(declare-fun b!5206015 () Bool)

(declare-fun c!897465 () Bool)

(assert (=> b!5206015 (= c!897465 ((_ is Star!14793) (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun e!3241378 () (InoxSet Context!8354))

(declare-fun e!3241375 () (InoxSet Context!8354))

(assert (=> b!5206015 (= e!3241378 e!3241375)))

(declare-fun bm!366162 () Bool)

(declare-fun call!366172 () List!60678)

(declare-fun call!366169 () List!60678)

(assert (=> bm!366162 (= call!366172 call!366169)))

(declare-fun c!897466 () Bool)

(declare-fun c!897463 () Bool)

(declare-fun bm!366163 () Bool)

(declare-fun $colon$colon!1271 (List!60678 Regex!14793) List!60678)

(assert (=> bm!366163 (= call!366169 ($colon$colon!1271 (exprs!4677 lt!2141533) (ite (or c!897466 c!897463) (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (h!67002 (exprs!4677 (h!67003 zl!343))))))))

(declare-fun b!5206016 () Bool)

(declare-fun e!3241376 () Bool)

(assert (=> b!5206016 (= e!3241376 (nullable!4962 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343))))))))

(declare-fun b!5206017 () Bool)

(assert (=> b!5206017 (= c!897466 e!3241376)))

(declare-fun res!2211579 () Bool)

(assert (=> b!5206017 (=> (not res!2211579) (not e!3241376))))

(assert (=> b!5206017 (= res!2211579 ((_ is Concat!23638) (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun e!3241377 () (InoxSet Context!8354))

(declare-fun e!3241374 () (InoxSet Context!8354))

(assert (=> b!5206017 (= e!3241377 e!3241374)))

(declare-fun b!5206018 () Bool)

(declare-fun e!3241379 () (InoxSet Context!8354))

(assert (=> b!5206018 (= e!3241379 (store ((as const (Array Context!8354 Bool)) false) lt!2141533 true))))

(declare-fun b!5206019 () Bool)

(assert (=> b!5206019 (= e!3241375 ((as const (Array Context!8354 Bool)) false))))

(declare-fun b!5206020 () Bool)

(declare-fun call!366170 () (InoxSet Context!8354))

(assert (=> b!5206020 (= e!3241375 call!366170)))

(declare-fun call!366171 () (InoxSet Context!8354))

(declare-fun c!897464 () Bool)

(declare-fun bm!366164 () Bool)

(assert (=> bm!366164 (= call!366171 (derivationStepZipperDown!241 (ite c!897464 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897466 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897463 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343))))))) (ite (or c!897464 c!897466) lt!2141533 (Context!8355 call!366172)) (h!67004 s!2326)))))

(declare-fun bm!366165 () Bool)

(declare-fun call!366168 () (InoxSet Context!8354))

(assert (=> bm!366165 (= call!366168 call!366171)))

(declare-fun b!5206021 () Bool)

(assert (=> b!5206021 (= e!3241379 e!3241377)))

(assert (=> b!5206021 (= c!897464 ((_ is Union!14793) (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun d!1678888 () Bool)

(declare-fun c!897462 () Bool)

(assert (=> d!1678888 (= c!897462 (and ((_ is ElementMatch!14793) (h!67002 (exprs!4677 (h!67003 zl!343)))) (= (c!897284 (h!67002 (exprs!4677 (h!67003 zl!343)))) (h!67004 s!2326))))))

(assert (=> d!1678888 (= (derivationStepZipperDown!241 (h!67002 (exprs!4677 (h!67003 zl!343))) lt!2141533 (h!67004 s!2326)) e!3241379)))

(declare-fun b!5206014 () Bool)

(declare-fun call!366167 () (InoxSet Context!8354))

(assert (=> b!5206014 (= e!3241374 ((_ map or) call!366167 call!366168))))

(declare-fun b!5206022 () Bool)

(assert (=> b!5206022 (= e!3241378 call!366170)))

(declare-fun bm!366166 () Bool)

(assert (=> bm!366166 (= call!366167 (derivationStepZipperDown!241 (ite c!897464 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343))))) (ite c!897464 lt!2141533 (Context!8355 call!366169)) (h!67004 s!2326)))))

(declare-fun bm!366167 () Bool)

(assert (=> bm!366167 (= call!366170 call!366168)))

(declare-fun b!5206023 () Bool)

(assert (=> b!5206023 (= e!3241377 ((_ map or) call!366171 call!366167))))

(declare-fun b!5206024 () Bool)

(assert (=> b!5206024 (= e!3241374 e!3241378)))

(assert (=> b!5206024 (= c!897463 ((_ is Concat!23638) (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(assert (= (and d!1678888 c!897462) b!5206018))

(assert (= (and d!1678888 (not c!897462)) b!5206021))

(assert (= (and b!5206021 c!897464) b!5206023))

(assert (= (and b!5206021 (not c!897464)) b!5206017))

(assert (= (and b!5206017 res!2211579) b!5206016))

(assert (= (and b!5206017 c!897466) b!5206014))

(assert (= (and b!5206017 (not c!897466)) b!5206024))

(assert (= (and b!5206024 c!897463) b!5206022))

(assert (= (and b!5206024 (not c!897463)) b!5206015))

(assert (= (and b!5206015 c!897465) b!5206020))

(assert (= (and b!5206015 (not c!897465)) b!5206019))

(assert (= (or b!5206022 b!5206020) bm!366162))

(assert (= (or b!5206022 b!5206020) bm!366167))

(assert (= (or b!5206014 bm!366162) bm!366163))

(assert (= (or b!5206014 bm!366167) bm!366165))

(assert (= (or b!5206023 b!5206014) bm!366166))

(assert (= (or b!5206023 bm!366165) bm!366164))

(declare-fun m!6257036 () Bool)

(assert (=> bm!366164 m!6257036))

(declare-fun m!6257038 () Bool)

(assert (=> b!5206018 m!6257038))

(declare-fun m!6257040 () Bool)

(assert (=> bm!366166 m!6257040))

(declare-fun m!6257042 () Bool)

(assert (=> bm!366163 m!6257042))

(declare-fun m!6257044 () Bool)

(assert (=> b!5206016 m!6257044))

(assert (=> b!5205360 d!1678888))

(declare-fun d!1678890 () Bool)

(declare-fun c!897467 () Bool)

(declare-fun e!3241381 () Bool)

(assert (=> d!1678890 (= c!897467 e!3241381)))

(declare-fun res!2211580 () Bool)

(assert (=> d!1678890 (=> (not res!2211580) (not e!3241381))))

(assert (=> d!1678890 (= res!2211580 ((_ is Cons!60554) (exprs!4677 (h!67003 zl!343))))))

(declare-fun e!3241382 () (InoxSet Context!8354))

(assert (=> d!1678890 (= (derivationStepZipperUp!165 (h!67003 zl!343) (h!67004 s!2326)) e!3241382)))

(declare-fun b!5206025 () Bool)

(declare-fun e!3241380 () (InoxSet Context!8354))

(assert (=> b!5206025 (= e!3241380 ((as const (Array Context!8354 Bool)) false))))

(declare-fun b!5206026 () Bool)

(assert (=> b!5206026 (= e!3241381 (nullable!4962 (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun call!366173 () (InoxSet Context!8354))

(declare-fun b!5206027 () Bool)

(assert (=> b!5206027 (= e!3241382 ((_ map or) call!366173 (derivationStepZipperUp!165 (Context!8355 (t!373835 (exprs!4677 (h!67003 zl!343)))) (h!67004 s!2326))))))

(declare-fun bm!366168 () Bool)

(assert (=> bm!366168 (= call!366173 (derivationStepZipperDown!241 (h!67002 (exprs!4677 (h!67003 zl!343))) (Context!8355 (t!373835 (exprs!4677 (h!67003 zl!343)))) (h!67004 s!2326)))))

(declare-fun b!5206028 () Bool)

(assert (=> b!5206028 (= e!3241380 call!366173)))

(declare-fun b!5206029 () Bool)

(assert (=> b!5206029 (= e!3241382 e!3241380)))

(declare-fun c!897468 () Bool)

(assert (=> b!5206029 (= c!897468 ((_ is Cons!60554) (exprs!4677 (h!67003 zl!343))))))

(assert (= (and d!1678890 res!2211580) b!5206026))

(assert (= (and d!1678890 c!897467) b!5206027))

(assert (= (and d!1678890 (not c!897467)) b!5206029))

(assert (= (and b!5206029 c!897468) b!5206028))

(assert (= (and b!5206029 (not c!897468)) b!5206025))

(assert (= (or b!5206027 b!5206028) bm!366168))

(assert (=> b!5206026 m!6256628))

(declare-fun m!6257046 () Bool)

(assert (=> b!5206027 m!6257046))

(declare-fun m!6257048 () Bool)

(assert (=> bm!366168 m!6257048))

(assert (=> b!5205360 d!1678890))

(declare-fun d!1678892 () Bool)

(assert (=> d!1678892 (= (isEmpty!32462 (t!373836 zl!343)) ((_ is Nil!60555) (t!373836 zl!343)))))

(assert (=> b!5205352 d!1678892))

(declare-fun b!5206042 () Bool)

(declare-fun e!3241385 () Bool)

(declare-fun tp!1460090 () Bool)

(assert (=> b!5206042 (= e!3241385 tp!1460090)))

(declare-fun b!5206041 () Bool)

(declare-fun tp!1460087 () Bool)

(declare-fun tp!1460088 () Bool)

(assert (=> b!5206041 (= e!3241385 (and tp!1460087 tp!1460088))))

(assert (=> b!5205358 (= tp!1460014 e!3241385)))

(declare-fun b!5206043 () Bool)

(declare-fun tp!1460086 () Bool)

(declare-fun tp!1460089 () Bool)

(assert (=> b!5206043 (= e!3241385 (and tp!1460086 tp!1460089))))

(declare-fun b!5206040 () Bool)

(assert (=> b!5206040 (= e!3241385 tp_is_empty!38839)))

(assert (= (and b!5205358 ((_ is ElementMatch!14793) (reg!15122 r!7292))) b!5206040))

(assert (= (and b!5205358 ((_ is Concat!23638) (reg!15122 r!7292))) b!5206041))

(assert (= (and b!5205358 ((_ is Star!14793) (reg!15122 r!7292))) b!5206042))

(assert (= (and b!5205358 ((_ is Union!14793) (reg!15122 r!7292))) b!5206043))

(declare-fun b!5206051 () Bool)

(declare-fun e!3241391 () Bool)

(declare-fun tp!1460095 () Bool)

(assert (=> b!5206051 (= e!3241391 tp!1460095)))

(declare-fun tp!1460096 () Bool)

(declare-fun b!5206050 () Bool)

(declare-fun e!3241390 () Bool)

(assert (=> b!5206050 (= e!3241390 (and (inv!80229 (h!67003 (t!373836 zl!343))) e!3241391 tp!1460096))))

(assert (=> b!5205368 (= tp!1460012 e!3241390)))

(assert (= b!5206050 b!5206051))

(assert (= (and b!5205368 ((_ is Cons!60555) (t!373836 zl!343))) b!5206050))

(declare-fun m!6257050 () Bool)

(assert (=> b!5206050 m!6257050))

(declare-fun condSetEmpty!33050 () Bool)

(assert (=> setNonEmpty!33044 (= condSetEmpty!33050 (= setRest!33044 ((as const (Array Context!8354 Bool)) false)))))

(declare-fun setRes!33050 () Bool)

(assert (=> setNonEmpty!33044 (= tp!1460015 setRes!33050)))

(declare-fun setIsEmpty!33050 () Bool)

(assert (=> setIsEmpty!33050 setRes!33050))

(declare-fun tp!1460102 () Bool)

(declare-fun setNonEmpty!33050 () Bool)

(declare-fun setElem!33050 () Context!8354)

(declare-fun e!3241394 () Bool)

(assert (=> setNonEmpty!33050 (= setRes!33050 (and tp!1460102 (inv!80229 setElem!33050) e!3241394))))

(declare-fun setRest!33050 () (InoxSet Context!8354))

(assert (=> setNonEmpty!33050 (= setRest!33044 ((_ map or) (store ((as const (Array Context!8354 Bool)) false) setElem!33050 true) setRest!33050))))

(declare-fun b!5206056 () Bool)

(declare-fun tp!1460101 () Bool)

(assert (=> b!5206056 (= e!3241394 tp!1460101)))

(assert (= (and setNonEmpty!33044 condSetEmpty!33050) setIsEmpty!33050))

(assert (= (and setNonEmpty!33044 (not condSetEmpty!33050)) setNonEmpty!33050))

(assert (= setNonEmpty!33050 b!5206056))

(declare-fun m!6257052 () Bool)

(assert (=> setNonEmpty!33050 m!6257052))

(declare-fun b!5206061 () Bool)

(declare-fun e!3241397 () Bool)

(declare-fun tp!1460107 () Bool)

(declare-fun tp!1460108 () Bool)

(assert (=> b!5206061 (= e!3241397 (and tp!1460107 tp!1460108))))

(assert (=> b!5205363 (= tp!1460008 e!3241397)))

(assert (= (and b!5205363 ((_ is Cons!60554) (exprs!4677 setElem!33044))) b!5206061))

(declare-fun b!5206064 () Bool)

(declare-fun e!3241398 () Bool)

(declare-fun tp!1460113 () Bool)

(assert (=> b!5206064 (= e!3241398 tp!1460113)))

(declare-fun b!5206063 () Bool)

(declare-fun tp!1460110 () Bool)

(declare-fun tp!1460111 () Bool)

(assert (=> b!5206063 (= e!3241398 (and tp!1460110 tp!1460111))))

(assert (=> b!5205348 (= tp!1460013 e!3241398)))

(declare-fun b!5206065 () Bool)

(declare-fun tp!1460109 () Bool)

(declare-fun tp!1460112 () Bool)

(assert (=> b!5206065 (= e!3241398 (and tp!1460109 tp!1460112))))

(declare-fun b!5206062 () Bool)

(assert (=> b!5206062 (= e!3241398 tp_is_empty!38839)))

(assert (= (and b!5205348 ((_ is ElementMatch!14793) (regOne!30098 r!7292))) b!5206062))

(assert (= (and b!5205348 ((_ is Concat!23638) (regOne!30098 r!7292))) b!5206063))

(assert (= (and b!5205348 ((_ is Star!14793) (regOne!30098 r!7292))) b!5206064))

(assert (= (and b!5205348 ((_ is Union!14793) (regOne!30098 r!7292))) b!5206065))

(declare-fun b!5206068 () Bool)

(declare-fun e!3241399 () Bool)

(declare-fun tp!1460118 () Bool)

(assert (=> b!5206068 (= e!3241399 tp!1460118)))

(declare-fun b!5206067 () Bool)

(declare-fun tp!1460115 () Bool)

(declare-fun tp!1460116 () Bool)

(assert (=> b!5206067 (= e!3241399 (and tp!1460115 tp!1460116))))

(assert (=> b!5205348 (= tp!1460011 e!3241399)))

(declare-fun b!5206069 () Bool)

(declare-fun tp!1460114 () Bool)

(declare-fun tp!1460117 () Bool)

(assert (=> b!5206069 (= e!3241399 (and tp!1460114 tp!1460117))))

(declare-fun b!5206066 () Bool)

(assert (=> b!5206066 (= e!3241399 tp_is_empty!38839)))

(assert (= (and b!5205348 ((_ is ElementMatch!14793) (regTwo!30098 r!7292))) b!5206066))

(assert (= (and b!5205348 ((_ is Concat!23638) (regTwo!30098 r!7292))) b!5206067))

(assert (= (and b!5205348 ((_ is Star!14793) (regTwo!30098 r!7292))) b!5206068))

(assert (= (and b!5205348 ((_ is Union!14793) (regTwo!30098 r!7292))) b!5206069))

(declare-fun b!5206070 () Bool)

(declare-fun e!3241400 () Bool)

(declare-fun tp!1460119 () Bool)

(declare-fun tp!1460120 () Bool)

(assert (=> b!5206070 (= e!3241400 (and tp!1460119 tp!1460120))))

(assert (=> b!5205350 (= tp!1460010 e!3241400)))

(assert (= (and b!5205350 ((_ is Cons!60554) (exprs!4677 (h!67003 zl!343)))) b!5206070))

(declare-fun b!5206075 () Bool)

(declare-fun e!3241403 () Bool)

(declare-fun tp!1460123 () Bool)

(assert (=> b!5206075 (= e!3241403 (and tp_is_empty!38839 tp!1460123))))

(assert (=> b!5205347 (= tp!1460009 e!3241403)))

(assert (= (and b!5205347 ((_ is Cons!60556) (t!373837 s!2326))) b!5206075))

(declare-fun b!5206078 () Bool)

(declare-fun e!3241404 () Bool)

(declare-fun tp!1460128 () Bool)

(assert (=> b!5206078 (= e!3241404 tp!1460128)))

(declare-fun b!5206077 () Bool)

(declare-fun tp!1460125 () Bool)

(declare-fun tp!1460126 () Bool)

(assert (=> b!5206077 (= e!3241404 (and tp!1460125 tp!1460126))))

(assert (=> b!5205366 (= tp!1460016 e!3241404)))

(declare-fun b!5206079 () Bool)

(declare-fun tp!1460124 () Bool)

(declare-fun tp!1460127 () Bool)

(assert (=> b!5206079 (= e!3241404 (and tp!1460124 tp!1460127))))

(declare-fun b!5206076 () Bool)

(assert (=> b!5206076 (= e!3241404 tp_is_empty!38839)))

(assert (= (and b!5205366 ((_ is ElementMatch!14793) (regOne!30099 r!7292))) b!5206076))

(assert (= (and b!5205366 ((_ is Concat!23638) (regOne!30099 r!7292))) b!5206077))

(assert (= (and b!5205366 ((_ is Star!14793) (regOne!30099 r!7292))) b!5206078))

(assert (= (and b!5205366 ((_ is Union!14793) (regOne!30099 r!7292))) b!5206079))

(declare-fun b!5206082 () Bool)

(declare-fun e!3241405 () Bool)

(declare-fun tp!1460133 () Bool)

(assert (=> b!5206082 (= e!3241405 tp!1460133)))

(declare-fun b!5206081 () Bool)

(declare-fun tp!1460130 () Bool)

(declare-fun tp!1460131 () Bool)

(assert (=> b!5206081 (= e!3241405 (and tp!1460130 tp!1460131))))

(assert (=> b!5205366 (= tp!1460017 e!3241405)))

(declare-fun b!5206083 () Bool)

(declare-fun tp!1460129 () Bool)

(declare-fun tp!1460132 () Bool)

(assert (=> b!5206083 (= e!3241405 (and tp!1460129 tp!1460132))))

(declare-fun b!5206080 () Bool)

(assert (=> b!5206080 (= e!3241405 tp_is_empty!38839)))

(assert (= (and b!5205366 ((_ is ElementMatch!14793) (regTwo!30099 r!7292))) b!5206080))

(assert (= (and b!5205366 ((_ is Concat!23638) (regTwo!30099 r!7292))) b!5206081))

(assert (= (and b!5205366 ((_ is Star!14793) (regTwo!30099 r!7292))) b!5206082))

(assert (= (and b!5205366 ((_ is Union!14793) (regTwo!30099 r!7292))) b!5206083))

(declare-fun b_lambda!201419 () Bool)

(assert (= b_lambda!201417 (or b!5205360 b_lambda!201419)))

(declare-fun bs!1209957 () Bool)

(declare-fun d!1678894 () Bool)

(assert (= bs!1209957 (and d!1678894 b!5205360)))

(assert (=> bs!1209957 (= (dynLambda!23919 lambda!260917 (h!67003 zl!343)) (derivationStepZipperUp!165 (h!67003 zl!343) (h!67004 s!2326)))))

(assert (=> bs!1209957 m!6256624))

(assert (=> d!1678882 d!1678894))

(check-sat (not b!5206068) (not b!5205466) (not b!5206056) (not b!5205917) (not d!1678872) (not bm!366144) (not b!5205724) (not b!5205798) (not b!5205611) (not b!5205913) (not b!5205467) (not b!5205968) (not d!1678848) (not b!5206077) (not bm!366166) (not b!5206016) tp_is_empty!38839 (not b!5205971) (not d!1678836) (not b!5206070) (not d!1678868) (not b!5206081) (not bm!366148) (not b!5206051) (not b!5205462) (not bm!366103) (not bm!366141) (not d!1678784) (not bm!366163) (not b!5206064) (not b!5206026) (not b!5205970) (not b!5206078) (not d!1678884) (not b!5205721) (not b!5205774) (not b!5206079) (not bm!366142) (not d!1678870) (not b!5205605) (not d!1678832) (not setNonEmpty!33050) (not bm!366104) (not b!5205988) (not d!1678796) (not d!1678824) (not b!5206027) (not b!5206042) (not d!1678782) (not b!5205464) (not b!5206069) (not b!5205717) (not d!1678808) (not b!5205465) (not b!5205728) (not b!5205727) (not d!1678864) (not d!1678778) (not b!5206065) (not b!5205984) (not b!5206067) (not d!1678866) (not b!5205797) (not b!5205718) (not b!5206083) (not b!5206082) (not b!5205409) (not b!5205795) (not b!5205470) (not bm!366164) (not b!5205936) (not b!5205983) (not b!5205918) (not b!5205967) (not bs!1209957) (not bm!366149) (not b!5205915) (not b!5206050) (not b!5206061) (not d!1678776) (not b!5206075) (not b!5205989) (not b!5205964) (not b!5205892) (not b!5205513) (not b!5206043) (not d!1678860) (not b!5205969) (not d!1678862) (not b!5205796) (not bm!366168) (not bm!366145) (not d!1678882) (not b!5205962) (not b!5205912) (not d!1678878) (not bm!366107) (not b!5206041) (not b!5205886) (not d!1678876) (not b!5205463) (not b!5205920) (not b!5205893) (not b!5206063) (not d!1678844) (not b_lambda!201419))
(check-sat)
(get-model)

(declare-fun d!1679044 () Bool)

(assert (=> d!1679044 (= (isDefined!11607 lt!2141614) (not (isEmpty!32466 lt!2141614)))))

(declare-fun bs!1210039 () Bool)

(assert (= bs!1210039 d!1679044))

(declare-fun m!6257368 () Bool)

(assert (=> bs!1210039 m!6257368))

(assert (=> b!5205917 d!1679044))

(declare-fun d!1679046 () Bool)

(declare-fun c!897566 () Bool)

(declare-fun e!3241623 () Bool)

(assert (=> d!1679046 (= c!897566 e!3241623)))

(declare-fun res!2211733 () Bool)

(assert (=> d!1679046 (=> (not res!2211733) (not e!3241623))))

(assert (=> d!1679046 (= res!2211733 ((_ is Cons!60554) (exprs!4677 (Context!8355 (t!373835 (exprs!4677 (h!67003 zl!343)))))))))

(declare-fun e!3241624 () (InoxSet Context!8354))

(assert (=> d!1679046 (= (derivationStepZipperUp!165 (Context!8355 (t!373835 (exprs!4677 (h!67003 zl!343)))) (h!67004 s!2326)) e!3241624)))

(declare-fun b!5206423 () Bool)

(declare-fun e!3241622 () (InoxSet Context!8354))

(assert (=> b!5206423 (= e!3241622 ((as const (Array Context!8354 Bool)) false))))

(declare-fun b!5206424 () Bool)

(assert (=> b!5206424 (= e!3241623 (nullable!4962 (h!67002 (exprs!4677 (Context!8355 (t!373835 (exprs!4677 (h!67003 zl!343))))))))))

(declare-fun call!366242 () (InoxSet Context!8354))

(declare-fun b!5206425 () Bool)

(assert (=> b!5206425 (= e!3241624 ((_ map or) call!366242 (derivationStepZipperUp!165 (Context!8355 (t!373835 (exprs!4677 (Context!8355 (t!373835 (exprs!4677 (h!67003 zl!343))))))) (h!67004 s!2326))))))

(declare-fun bm!366237 () Bool)

(assert (=> bm!366237 (= call!366242 (derivationStepZipperDown!241 (h!67002 (exprs!4677 (Context!8355 (t!373835 (exprs!4677 (h!67003 zl!343)))))) (Context!8355 (t!373835 (exprs!4677 (Context!8355 (t!373835 (exprs!4677 (h!67003 zl!343))))))) (h!67004 s!2326)))))

(declare-fun b!5206426 () Bool)

(assert (=> b!5206426 (= e!3241622 call!366242)))

(declare-fun b!5206427 () Bool)

(assert (=> b!5206427 (= e!3241624 e!3241622)))

(declare-fun c!897567 () Bool)

(assert (=> b!5206427 (= c!897567 ((_ is Cons!60554) (exprs!4677 (Context!8355 (t!373835 (exprs!4677 (h!67003 zl!343)))))))))

(assert (= (and d!1679046 res!2211733) b!5206424))

(assert (= (and d!1679046 c!897566) b!5206425))

(assert (= (and d!1679046 (not c!897566)) b!5206427))

(assert (= (and b!5206427 c!897567) b!5206426))

(assert (= (and b!5206427 (not c!897567)) b!5206423))

(assert (= (or b!5206425 b!5206426) bm!366237))

(declare-fun m!6257382 () Bool)

(assert (=> b!5206424 m!6257382))

(declare-fun m!6257384 () Bool)

(assert (=> b!5206425 m!6257384))

(declare-fun m!6257386 () Bool)

(assert (=> bm!366237 m!6257386))

(assert (=> b!5206027 d!1679046))

(declare-fun d!1679052 () Bool)

(assert (=> d!1679052 (= (nullable!4962 (reg!15122 (regTwo!30099 (regOne!30098 r!7292)))) (nullableFct!1373 (reg!15122 (regTwo!30099 (regOne!30098 r!7292)))))))

(declare-fun bs!1210041 () Bool)

(assert (= bs!1210041 d!1679052))

(declare-fun m!6257396 () Bool)

(assert (=> bs!1210041 m!6257396))

(assert (=> b!5205936 d!1679052))

(declare-fun d!1679054 () Bool)

(assert (=> d!1679054 (= (Exists!1974 lambda!260969) (choose!38698 lambda!260969))))

(declare-fun bs!1210042 () Bool)

(assert (= bs!1210042 d!1679054))

(declare-fun m!6257404 () Bool)

(assert (=> bs!1210042 m!6257404))

(assert (=> d!1678870 d!1679054))

(declare-fun d!1679060 () Bool)

(assert (=> d!1679060 (= (Exists!1974 lambda!260970) (choose!38698 lambda!260970))))

(declare-fun bs!1210043 () Bool)

(assert (= bs!1210043 d!1679060))

(declare-fun m!6257406 () Bool)

(assert (=> bs!1210043 m!6257406))

(assert (=> d!1678870 d!1679060))

(declare-fun bs!1210052 () Bool)

(declare-fun d!1679064 () Bool)

(assert (= bs!1210052 (and d!1679064 b!5205364)))

(declare-fun lambda!261002 () Int)

(assert (=> bs!1210052 (not (= lambda!261002 lambda!260916))))

(assert (=> bs!1210052 (= lambda!261002 lambda!260915)))

(declare-fun bs!1210055 () Bool)

(assert (= bs!1210055 (and d!1679064 d!1678870)))

(assert (=> bs!1210055 (not (= lambda!261002 lambda!260970))))

(declare-fun bs!1210057 () Bool)

(assert (= bs!1210057 (and d!1679064 b!5205613)))

(assert (=> bs!1210057 (not (= lambda!261002 lambda!260946))))

(declare-fun bs!1210058 () Bool)

(assert (= bs!1210058 (and d!1679064 b!5205610)))

(assert (=> bs!1210058 (not (= lambda!261002 lambda!260949))))

(assert (=> bs!1210055 (= lambda!261002 lambda!260969)))

(declare-fun bs!1210060 () Bool)

(assert (= bs!1210060 (and d!1679064 d!1678868)))

(assert (=> bs!1210060 (= lambda!261002 lambda!260964)))

(assert (=> d!1679064 true))

(assert (=> d!1679064 true))

(assert (=> d!1679064 true))

(declare-fun lambda!261004 () Int)

(assert (=> bs!1210052 (= lambda!261004 lambda!260916)))

(declare-fun bs!1210061 () Bool)

(assert (= bs!1210061 d!1679064))

(assert (=> bs!1210061 (not (= lambda!261004 lambda!261002))))

(assert (=> bs!1210052 (not (= lambda!261004 lambda!260915))))

(assert (=> bs!1210055 (= lambda!261004 lambda!260970)))

(assert (=> bs!1210057 (not (= lambda!261004 lambda!260946))))

(assert (=> bs!1210058 (= lambda!261004 lambda!260949)))

(assert (=> bs!1210055 (not (= lambda!261004 lambda!260969))))

(assert (=> bs!1210060 (not (= lambda!261004 lambda!260964))))

(assert (=> d!1679064 true))

(assert (=> d!1679064 true))

(assert (=> d!1679064 true))

(assert (=> d!1679064 (= (Exists!1974 lambda!261002) (Exists!1974 lambda!261004))))

(assert (=> d!1679064 true))

(declare-fun _$90!982 () Unit!152438)

(assert (=> d!1679064 (= (choose!38700 (regOne!30098 r!7292) (regTwo!30098 r!7292) s!2326) _$90!982)))

(declare-fun m!6257412 () Bool)

(assert (=> bs!1210061 m!6257412))

(declare-fun m!6257414 () Bool)

(assert (=> bs!1210061 m!6257414))

(assert (=> d!1678870 d!1679064))

(declare-fun d!1679070 () Bool)

(declare-fun res!2211754 () Bool)

(declare-fun e!3241641 () Bool)

(assert (=> d!1679070 (=> res!2211754 e!3241641)))

(assert (=> d!1679070 (= res!2211754 ((_ is ElementMatch!14793) (regOne!30098 r!7292)))))

(assert (=> d!1679070 (= (validRegex!6529 (regOne!30098 r!7292)) e!3241641)))

(declare-fun b!5206448 () Bool)

(declare-fun e!3241637 () Bool)

(declare-fun e!3241636 () Bool)

(assert (=> b!5206448 (= e!3241637 e!3241636)))

(declare-fun c!897569 () Bool)

(assert (=> b!5206448 (= c!897569 ((_ is Union!14793) (regOne!30098 r!7292)))))

(declare-fun b!5206449 () Bool)

(declare-fun res!2211756 () Bool)

(declare-fun e!3241638 () Bool)

(assert (=> b!5206449 (=> (not res!2211756) (not e!3241638))))

(declare-fun call!366245 () Bool)

(assert (=> b!5206449 (= res!2211756 call!366245)))

(assert (=> b!5206449 (= e!3241636 e!3241638)))

(declare-fun b!5206450 () Bool)

(declare-fun res!2211755 () Bool)

(declare-fun e!3241640 () Bool)

(assert (=> b!5206450 (=> res!2211755 e!3241640)))

(assert (=> b!5206450 (= res!2211755 (not ((_ is Concat!23638) (regOne!30098 r!7292))))))

(assert (=> b!5206450 (= e!3241636 e!3241640)))

(declare-fun b!5206451 () Bool)

(declare-fun e!3241639 () Bool)

(assert (=> b!5206451 (= e!3241637 e!3241639)))

(declare-fun res!2211753 () Bool)

(assert (=> b!5206451 (= res!2211753 (not (nullable!4962 (reg!15122 (regOne!30098 r!7292)))))))

(assert (=> b!5206451 (=> (not res!2211753) (not e!3241639))))

(declare-fun b!5206452 () Bool)

(declare-fun e!3241635 () Bool)

(assert (=> b!5206452 (= e!3241640 e!3241635)))

(declare-fun res!2211752 () Bool)

(assert (=> b!5206452 (=> (not res!2211752) (not e!3241635))))

(assert (=> b!5206452 (= res!2211752 call!366245)))

(declare-fun b!5206453 () Bool)

(declare-fun call!366244 () Bool)

(assert (=> b!5206453 (= e!3241635 call!366244)))

(declare-fun bm!366238 () Bool)

(declare-fun call!366243 () Bool)

(assert (=> bm!366238 (= call!366244 call!366243)))

(declare-fun b!5206454 () Bool)

(assert (=> b!5206454 (= e!3241641 e!3241637)))

(declare-fun c!897570 () Bool)

(assert (=> b!5206454 (= c!897570 ((_ is Star!14793) (regOne!30098 r!7292)))))

(declare-fun bm!366239 () Bool)

(assert (=> bm!366239 (= call!366243 (validRegex!6529 (ite c!897570 (reg!15122 (regOne!30098 r!7292)) (ite c!897569 (regTwo!30099 (regOne!30098 r!7292)) (regTwo!30098 (regOne!30098 r!7292))))))))

(declare-fun bm!366240 () Bool)

(assert (=> bm!366240 (= call!366245 (validRegex!6529 (ite c!897569 (regOne!30099 (regOne!30098 r!7292)) (regOne!30098 (regOne!30098 r!7292)))))))

(declare-fun b!5206455 () Bool)

(assert (=> b!5206455 (= e!3241639 call!366243)))

(declare-fun b!5206456 () Bool)

(assert (=> b!5206456 (= e!3241638 call!366244)))

(assert (= (and d!1679070 (not res!2211754)) b!5206454))

(assert (= (and b!5206454 c!897570) b!5206451))

(assert (= (and b!5206454 (not c!897570)) b!5206448))

(assert (= (and b!5206451 res!2211753) b!5206455))

(assert (= (and b!5206448 c!897569) b!5206449))

(assert (= (and b!5206448 (not c!897569)) b!5206450))

(assert (= (and b!5206449 res!2211756) b!5206456))

(assert (= (and b!5206450 (not res!2211755)) b!5206452))

(assert (= (and b!5206452 res!2211752) b!5206453))

(assert (= (or b!5206456 b!5206453) bm!366238))

(assert (= (or b!5206449 b!5206452) bm!366240))

(assert (= (or b!5206455 bm!366238) bm!366239))

(declare-fun m!6257420 () Bool)

(assert (=> b!5206451 m!6257420))

(declare-fun m!6257422 () Bool)

(assert (=> bm!366239 m!6257422))

(declare-fun m!6257428 () Bool)

(assert (=> bm!366240 m!6257428))

(assert (=> d!1678870 d!1679070))

(declare-fun d!1679076 () Bool)

(assert (=> d!1679076 (= (isEmpty!32465 (t!373837 s!2326)) ((_ is Nil!60556) (t!373837 s!2326)))))

(assert (=> d!1678836 d!1679076))

(declare-fun d!1679078 () Bool)

(declare-fun res!2211762 () Bool)

(declare-fun e!3241653 () Bool)

(assert (=> d!1679078 (=> res!2211762 e!3241653)))

(assert (=> d!1679078 (= res!2211762 ((_ is ElementMatch!14793) (ite c!897422 (reg!15122 r!7292) (ite c!897421 (regTwo!30099 r!7292) (regTwo!30098 r!7292)))))))

(assert (=> d!1679078 (= (validRegex!6529 (ite c!897422 (reg!15122 r!7292) (ite c!897421 (regTwo!30099 r!7292) (regTwo!30098 r!7292)))) e!3241653)))

(declare-fun b!5206464 () Bool)

(declare-fun e!3241649 () Bool)

(declare-fun e!3241648 () Bool)

(assert (=> b!5206464 (= e!3241649 e!3241648)))

(declare-fun c!897573 () Bool)

(assert (=> b!5206464 (= c!897573 ((_ is Union!14793) (ite c!897422 (reg!15122 r!7292) (ite c!897421 (regTwo!30099 r!7292) (regTwo!30098 r!7292)))))))

(declare-fun b!5206465 () Bool)

(declare-fun res!2211764 () Bool)

(declare-fun e!3241650 () Bool)

(assert (=> b!5206465 (=> (not res!2211764) (not e!3241650))))

(declare-fun call!366249 () Bool)

(assert (=> b!5206465 (= res!2211764 call!366249)))

(assert (=> b!5206465 (= e!3241648 e!3241650)))

(declare-fun b!5206466 () Bool)

(declare-fun res!2211763 () Bool)

(declare-fun e!3241652 () Bool)

(assert (=> b!5206466 (=> res!2211763 e!3241652)))

(assert (=> b!5206466 (= res!2211763 (not ((_ is Concat!23638) (ite c!897422 (reg!15122 r!7292) (ite c!897421 (regTwo!30099 r!7292) (regTwo!30098 r!7292))))))))

(assert (=> b!5206466 (= e!3241648 e!3241652)))

(declare-fun b!5206467 () Bool)

(declare-fun e!3241651 () Bool)

(assert (=> b!5206467 (= e!3241649 e!3241651)))

(declare-fun res!2211761 () Bool)

(assert (=> b!5206467 (= res!2211761 (not (nullable!4962 (reg!15122 (ite c!897422 (reg!15122 r!7292) (ite c!897421 (regTwo!30099 r!7292) (regTwo!30098 r!7292)))))))))

(assert (=> b!5206467 (=> (not res!2211761) (not e!3241651))))

(declare-fun b!5206468 () Bool)

(declare-fun e!3241647 () Bool)

(assert (=> b!5206468 (= e!3241652 e!3241647)))

(declare-fun res!2211760 () Bool)

(assert (=> b!5206468 (=> (not res!2211760) (not e!3241647))))

(assert (=> b!5206468 (= res!2211760 call!366249)))

(declare-fun b!5206469 () Bool)

(declare-fun call!366248 () Bool)

(assert (=> b!5206469 (= e!3241647 call!366248)))

(declare-fun bm!366242 () Bool)

(declare-fun call!366247 () Bool)

(assert (=> bm!366242 (= call!366248 call!366247)))

(declare-fun b!5206470 () Bool)

(assert (=> b!5206470 (= e!3241653 e!3241649)))

(declare-fun c!897574 () Bool)

(assert (=> b!5206470 (= c!897574 ((_ is Star!14793) (ite c!897422 (reg!15122 r!7292) (ite c!897421 (regTwo!30099 r!7292) (regTwo!30098 r!7292)))))))

(declare-fun bm!366243 () Bool)

(assert (=> bm!366243 (= call!366247 (validRegex!6529 (ite c!897574 (reg!15122 (ite c!897422 (reg!15122 r!7292) (ite c!897421 (regTwo!30099 r!7292) (regTwo!30098 r!7292)))) (ite c!897573 (regTwo!30099 (ite c!897422 (reg!15122 r!7292) (ite c!897421 (regTwo!30099 r!7292) (regTwo!30098 r!7292)))) (regTwo!30098 (ite c!897422 (reg!15122 r!7292) (ite c!897421 (regTwo!30099 r!7292) (regTwo!30098 r!7292))))))))))

(declare-fun bm!366244 () Bool)

(assert (=> bm!366244 (= call!366249 (validRegex!6529 (ite c!897573 (regOne!30099 (ite c!897422 (reg!15122 r!7292) (ite c!897421 (regTwo!30099 r!7292) (regTwo!30098 r!7292)))) (regOne!30098 (ite c!897422 (reg!15122 r!7292) (ite c!897421 (regTwo!30099 r!7292) (regTwo!30098 r!7292)))))))))

(declare-fun b!5206471 () Bool)

(assert (=> b!5206471 (= e!3241651 call!366247)))

(declare-fun b!5206472 () Bool)

(assert (=> b!5206472 (= e!3241650 call!366248)))

(assert (= (and d!1679078 (not res!2211762)) b!5206470))

(assert (= (and b!5206470 c!897574) b!5206467))

(assert (= (and b!5206470 (not c!897574)) b!5206464))

(assert (= (and b!5206467 res!2211761) b!5206471))

(assert (= (and b!5206464 c!897573) b!5206465))

(assert (= (and b!5206464 (not c!897573)) b!5206466))

(assert (= (and b!5206465 res!2211764) b!5206472))

(assert (= (and b!5206466 (not res!2211763)) b!5206468))

(assert (= (and b!5206468 res!2211760) b!5206469))

(assert (= (or b!5206472 b!5206469) bm!366242))

(assert (= (or b!5206465 b!5206468) bm!366244))

(assert (= (or b!5206471 bm!366242) bm!366243))

(declare-fun m!6257440 () Bool)

(assert (=> b!5206467 m!6257440))

(declare-fun m!6257444 () Bool)

(assert (=> bm!366243 m!6257444))

(declare-fun m!6257446 () Bool)

(assert (=> bm!366244 m!6257446))

(assert (=> bm!366141 d!1679078))

(assert (=> b!5205774 d!1678860))

(declare-fun d!1679084 () Bool)

(declare-fun c!897576 () Bool)

(assert (=> d!1679084 (= c!897576 (isEmpty!32465 (tail!10259 (t!373837 s!2326))))))

(declare-fun e!3241655 () Bool)

(assert (=> d!1679084 (= (matchZipper!1037 (derivationStepZipper!1065 lt!2141541 (head!11162 (t!373837 s!2326))) (tail!10259 (t!373837 s!2326))) e!3241655)))

(declare-fun b!5206475 () Bool)

(assert (=> b!5206475 (= e!3241655 (nullableZipper!1221 (derivationStepZipper!1065 lt!2141541 (head!11162 (t!373837 s!2326)))))))

(declare-fun b!5206476 () Bool)

(assert (=> b!5206476 (= e!3241655 (matchZipper!1037 (derivationStepZipper!1065 (derivationStepZipper!1065 lt!2141541 (head!11162 (t!373837 s!2326))) (head!11162 (tail!10259 (t!373837 s!2326)))) (tail!10259 (tail!10259 (t!373837 s!2326)))))))

(assert (= (and d!1679084 c!897576) b!5206475))

(assert (= (and d!1679084 (not c!897576)) b!5206476))

(assert (=> d!1679084 m!6256904))

(declare-fun m!6257448 () Bool)

(assert (=> d!1679084 m!6257448))

(assert (=> b!5206475 m!6256946))

(declare-fun m!6257450 () Bool)

(assert (=> b!5206475 m!6257450))

(assert (=> b!5206476 m!6256904))

(declare-fun m!6257452 () Bool)

(assert (=> b!5206476 m!6257452))

(assert (=> b!5206476 m!6256946))

(assert (=> b!5206476 m!6257452))

(declare-fun m!6257456 () Bool)

(assert (=> b!5206476 m!6257456))

(assert (=> b!5206476 m!6256904))

(declare-fun m!6257458 () Bool)

(assert (=> b!5206476 m!6257458))

(assert (=> b!5206476 m!6257456))

(assert (=> b!5206476 m!6257458))

(declare-fun m!6257460 () Bool)

(assert (=> b!5206476 m!6257460))

(assert (=> b!5205893 d!1679084))

(declare-fun bs!1210067 () Bool)

(declare-fun d!1679088 () Bool)

(assert (= bs!1210067 (and d!1679088 b!5205360)))

(declare-fun lambda!261008 () Int)

(assert (=> bs!1210067 (= (= (head!11162 (t!373837 s!2326)) (h!67004 s!2326)) (= lambda!261008 lambda!260917))))

(assert (=> d!1679088 true))

(assert (=> d!1679088 (= (derivationStepZipper!1065 lt!2141541 (head!11162 (t!373837 s!2326))) (flatMap!520 lt!2141541 lambda!261008))))

(declare-fun bs!1210068 () Bool)

(assert (= bs!1210068 d!1679088))

(declare-fun m!6257476 () Bool)

(assert (=> bs!1210068 m!6257476))

(assert (=> b!5205893 d!1679088))

(declare-fun d!1679094 () Bool)

(assert (=> d!1679094 (= (head!11162 (t!373837 s!2326)) (h!67004 (t!373837 s!2326)))))

(assert (=> b!5205893 d!1679094))

(declare-fun d!1679098 () Bool)

(assert (=> d!1679098 (= (tail!10259 (t!373837 s!2326)) (t!373837 (t!373837 s!2326)))))

(assert (=> b!5205893 d!1679098))

(declare-fun b!5206513 () Bool)

(declare-fun c!897594 () Bool)

(assert (=> b!5206513 (= c!897594 ((_ is Star!14793) (h!67002 (exprs!4677 lt!2141533))))))

(declare-fun e!3241681 () (InoxSet Context!8354))

(declare-fun e!3241678 () (InoxSet Context!8354))

(assert (=> b!5206513 (= e!3241681 e!3241678)))

(declare-fun bm!366260 () Bool)

(declare-fun call!366270 () List!60678)

(declare-fun call!366267 () List!60678)

(assert (=> bm!366260 (= call!366270 call!366267)))

(declare-fun c!897592 () Bool)

(declare-fun c!897595 () Bool)

(declare-fun bm!366261 () Bool)

(assert (=> bm!366261 (= call!366267 ($colon$colon!1271 (exprs!4677 (Context!8355 (t!373835 (exprs!4677 lt!2141533)))) (ite (or c!897595 c!897592) (regTwo!30098 (h!67002 (exprs!4677 lt!2141533))) (h!67002 (exprs!4677 lt!2141533)))))))

(declare-fun b!5206514 () Bool)

(declare-fun e!3241679 () Bool)

(assert (=> b!5206514 (= e!3241679 (nullable!4962 (regOne!30098 (h!67002 (exprs!4677 lt!2141533)))))))

(declare-fun b!5206515 () Bool)

(assert (=> b!5206515 (= c!897595 e!3241679)))

(declare-fun res!2211774 () Bool)

(assert (=> b!5206515 (=> (not res!2211774) (not e!3241679))))

(assert (=> b!5206515 (= res!2211774 ((_ is Concat!23638) (h!67002 (exprs!4677 lt!2141533))))))

(declare-fun e!3241680 () (InoxSet Context!8354))

(declare-fun e!3241677 () (InoxSet Context!8354))

(assert (=> b!5206515 (= e!3241680 e!3241677)))

(declare-fun b!5206516 () Bool)

(declare-fun e!3241682 () (InoxSet Context!8354))

(assert (=> b!5206516 (= e!3241682 (store ((as const (Array Context!8354 Bool)) false) (Context!8355 (t!373835 (exprs!4677 lt!2141533))) true))))

(declare-fun b!5206517 () Bool)

(assert (=> b!5206517 (= e!3241678 ((as const (Array Context!8354 Bool)) false))))

(declare-fun b!5206518 () Bool)

(declare-fun call!366268 () (InoxSet Context!8354))

(assert (=> b!5206518 (= e!3241678 call!366268)))

(declare-fun bm!366262 () Bool)

(declare-fun c!897593 () Bool)

(declare-fun call!366269 () (InoxSet Context!8354))

(assert (=> bm!366262 (= call!366269 (derivationStepZipperDown!241 (ite c!897593 (regOne!30099 (h!67002 (exprs!4677 lt!2141533))) (ite c!897595 (regTwo!30098 (h!67002 (exprs!4677 lt!2141533))) (ite c!897592 (regOne!30098 (h!67002 (exprs!4677 lt!2141533))) (reg!15122 (h!67002 (exprs!4677 lt!2141533)))))) (ite (or c!897593 c!897595) (Context!8355 (t!373835 (exprs!4677 lt!2141533))) (Context!8355 call!366270)) (h!67004 s!2326)))))

(declare-fun bm!366263 () Bool)

(declare-fun call!366266 () (InoxSet Context!8354))

(assert (=> bm!366263 (= call!366266 call!366269)))

(declare-fun b!5206519 () Bool)

(assert (=> b!5206519 (= e!3241682 e!3241680)))

(assert (=> b!5206519 (= c!897593 ((_ is Union!14793) (h!67002 (exprs!4677 lt!2141533))))))

(declare-fun d!1679100 () Bool)

(declare-fun c!897591 () Bool)

(assert (=> d!1679100 (= c!897591 (and ((_ is ElementMatch!14793) (h!67002 (exprs!4677 lt!2141533))) (= (c!897284 (h!67002 (exprs!4677 lt!2141533))) (h!67004 s!2326))))))

(assert (=> d!1679100 (= (derivationStepZipperDown!241 (h!67002 (exprs!4677 lt!2141533)) (Context!8355 (t!373835 (exprs!4677 lt!2141533))) (h!67004 s!2326)) e!3241682)))

(declare-fun b!5206512 () Bool)

(declare-fun call!366265 () (InoxSet Context!8354))

(assert (=> b!5206512 (= e!3241677 ((_ map or) call!366265 call!366266))))

(declare-fun b!5206520 () Bool)

(assert (=> b!5206520 (= e!3241681 call!366268)))

(declare-fun bm!366264 () Bool)

(assert (=> bm!366264 (= call!366265 (derivationStepZipperDown!241 (ite c!897593 (regTwo!30099 (h!67002 (exprs!4677 lt!2141533))) (regOne!30098 (h!67002 (exprs!4677 lt!2141533)))) (ite c!897593 (Context!8355 (t!373835 (exprs!4677 lt!2141533))) (Context!8355 call!366267)) (h!67004 s!2326)))))

(declare-fun bm!366265 () Bool)

(assert (=> bm!366265 (= call!366268 call!366266)))

(declare-fun b!5206521 () Bool)

(assert (=> b!5206521 (= e!3241680 ((_ map or) call!366269 call!366265))))

(declare-fun b!5206522 () Bool)

(assert (=> b!5206522 (= e!3241677 e!3241681)))

(assert (=> b!5206522 (= c!897592 ((_ is Concat!23638) (h!67002 (exprs!4677 lt!2141533))))))

(assert (= (and d!1679100 c!897591) b!5206516))

(assert (= (and d!1679100 (not c!897591)) b!5206519))

(assert (= (and b!5206519 c!897593) b!5206521))

(assert (= (and b!5206519 (not c!897593)) b!5206515))

(assert (= (and b!5206515 res!2211774) b!5206514))

(assert (= (and b!5206515 c!897595) b!5206512))

(assert (= (and b!5206515 (not c!897595)) b!5206522))

(assert (= (and b!5206522 c!897592) b!5206520))

(assert (= (and b!5206522 (not c!897592)) b!5206513))

(assert (= (and b!5206513 c!897594) b!5206518))

(assert (= (and b!5206513 (not c!897594)) b!5206517))

(assert (= (or b!5206520 b!5206518) bm!366260))

(assert (= (or b!5206520 b!5206518) bm!366265))

(assert (= (or b!5206512 bm!366260) bm!366261))

(assert (= (or b!5206512 bm!366265) bm!366263))

(assert (= (or b!5206521 b!5206512) bm!366264))

(assert (= (or b!5206521 bm!366263) bm!366262))

(declare-fun m!6257496 () Bool)

(assert (=> bm!366262 m!6257496))

(declare-fun m!6257498 () Bool)

(assert (=> b!5206516 m!6257498))

(declare-fun m!6257500 () Bool)

(assert (=> bm!366264 m!6257500))

(declare-fun m!6257506 () Bool)

(assert (=> bm!366261 m!6257506))

(declare-fun m!6257508 () Bool)

(assert (=> b!5206514 m!6257508))

(assert (=> bm!366149 d!1679100))

(declare-fun d!1679110 () Bool)

(assert (=> d!1679110 (= (head!11161 (exprs!4677 (h!67003 zl!343))) (h!67002 (exprs!4677 (h!67003 zl!343))))))

(assert (=> b!5205967 d!1679110))

(declare-fun b!5206527 () Bool)

(declare-fun res!2211780 () Bool)

(declare-fun e!3241688 () Bool)

(assert (=> b!5206527 (=> (not res!2211780) (not e!3241688))))

(declare-fun call!366271 () Bool)

(assert (=> b!5206527 (= res!2211780 (not call!366271))))

(declare-fun b!5206528 () Bool)

(declare-fun res!2211784 () Bool)

(declare-fun e!3241690 () Bool)

(assert (=> b!5206528 (=> res!2211784 e!3241690)))

(assert (=> b!5206528 (= res!2211784 (not (isEmpty!32465 (tail!10259 s!2326))))))

(declare-fun b!5206530 () Bool)

(declare-fun res!2211783 () Bool)

(declare-fun e!3241686 () Bool)

(assert (=> b!5206530 (=> res!2211783 e!3241686)))

(assert (=> b!5206530 (= res!2211783 (not ((_ is ElementMatch!14793) (regTwo!30098 r!7292))))))

(declare-fun e!3241687 () Bool)

(assert (=> b!5206530 (= e!3241687 e!3241686)))

(declare-fun b!5206531 () Bool)

(declare-fun e!3241689 () Bool)

(declare-fun lt!2141650 () Bool)

(assert (=> b!5206531 (= e!3241689 (= lt!2141650 call!366271))))

(declare-fun b!5206532 () Bool)

(declare-fun res!2211782 () Bool)

(assert (=> b!5206532 (=> (not res!2211782) (not e!3241688))))

(assert (=> b!5206532 (= res!2211782 (isEmpty!32465 (tail!10259 s!2326)))))

(declare-fun b!5206533 () Bool)

(declare-fun res!2211781 () Bool)

(assert (=> b!5206533 (=> res!2211781 e!3241686)))

(assert (=> b!5206533 (= res!2211781 e!3241688)))

(declare-fun res!2211779 () Bool)

(assert (=> b!5206533 (=> (not res!2211779) (not e!3241688))))

(assert (=> b!5206533 (= res!2211779 lt!2141650)))

(declare-fun b!5206534 () Bool)

(assert (=> b!5206534 (= e!3241687 (not lt!2141650))))

(declare-fun bm!366266 () Bool)

(assert (=> bm!366266 (= call!366271 (isEmpty!32465 s!2326))))

(declare-fun b!5206535 () Bool)

(declare-fun e!3241691 () Bool)

(assert (=> b!5206535 (= e!3241691 (matchR!6978 (derivativeStep!4043 (regTwo!30098 r!7292) (head!11162 s!2326)) (tail!10259 s!2326)))))

(declare-fun b!5206536 () Bool)

(assert (=> b!5206536 (= e!3241689 e!3241687)))

(declare-fun c!897599 () Bool)

(assert (=> b!5206536 (= c!897599 ((_ is EmptyLang!14793) (regTwo!30098 r!7292)))))

(declare-fun d!1679112 () Bool)

(assert (=> d!1679112 e!3241689))

(declare-fun c!897597 () Bool)

(assert (=> d!1679112 (= c!897597 ((_ is EmptyExpr!14793) (regTwo!30098 r!7292)))))

(assert (=> d!1679112 (= lt!2141650 e!3241691)))

(declare-fun c!897598 () Bool)

(assert (=> d!1679112 (= c!897598 (isEmpty!32465 s!2326))))

(assert (=> d!1679112 (validRegex!6529 (regTwo!30098 r!7292))))

(assert (=> d!1679112 (= (matchR!6978 (regTwo!30098 r!7292) s!2326) lt!2141650)))

(declare-fun b!5206529 () Bool)

(assert (=> b!5206529 (= e!3241688 (= (head!11162 s!2326) (c!897284 (regTwo!30098 r!7292))))))

(declare-fun b!5206537 () Bool)

(declare-fun e!3241692 () Bool)

(assert (=> b!5206537 (= e!3241692 e!3241690)))

(declare-fun res!2211777 () Bool)

(assert (=> b!5206537 (=> res!2211777 e!3241690)))

(assert (=> b!5206537 (= res!2211777 call!366271)))

(declare-fun b!5206538 () Bool)

(assert (=> b!5206538 (= e!3241691 (nullable!4962 (regTwo!30098 r!7292)))))

(declare-fun b!5206539 () Bool)

(assert (=> b!5206539 (= e!3241690 (not (= (head!11162 s!2326) (c!897284 (regTwo!30098 r!7292)))))))

(declare-fun b!5206540 () Bool)

(assert (=> b!5206540 (= e!3241686 e!3241692)))

(declare-fun res!2211778 () Bool)

(assert (=> b!5206540 (=> (not res!2211778) (not e!3241692))))

(assert (=> b!5206540 (= res!2211778 (not lt!2141650))))

(assert (= (and d!1679112 c!897598) b!5206538))

(assert (= (and d!1679112 (not c!897598)) b!5206535))

(assert (= (and d!1679112 c!897597) b!5206531))

(assert (= (and d!1679112 (not c!897597)) b!5206536))

(assert (= (and b!5206536 c!897599) b!5206534))

(assert (= (and b!5206536 (not c!897599)) b!5206530))

(assert (= (and b!5206530 (not res!2211783)) b!5206533))

(assert (= (and b!5206533 res!2211779) b!5206527))

(assert (= (and b!5206527 res!2211780) b!5206532))

(assert (= (and b!5206532 res!2211782) b!5206529))

(assert (= (and b!5206533 (not res!2211781)) b!5206540))

(assert (= (and b!5206540 res!2211778) b!5206537))

(assert (= (and b!5206537 (not res!2211777)) b!5206528))

(assert (= (and b!5206528 (not res!2211784)) b!5206539))

(assert (= (or b!5206531 b!5206527 b!5206537) bm!366266))

(assert (=> b!5206535 m!6256844))

(assert (=> b!5206535 m!6256844))

(declare-fun m!6257518 () Bool)

(assert (=> b!5206535 m!6257518))

(assert (=> b!5206535 m!6256848))

(assert (=> b!5206535 m!6257518))

(assert (=> b!5206535 m!6256848))

(declare-fun m!6257520 () Bool)

(assert (=> b!5206535 m!6257520))

(declare-fun m!6257522 () Bool)

(assert (=> b!5206538 m!6257522))

(assert (=> b!5206528 m!6256848))

(assert (=> b!5206528 m!6256848))

(assert (=> b!5206528 m!6256854))

(assert (=> b!5206539 m!6256844))

(assert (=> b!5206532 m!6256848))

(assert (=> b!5206532 m!6256848))

(assert (=> b!5206532 m!6256854))

(assert (=> bm!366266 m!6256786))

(assert (=> b!5206529 m!6256844))

(assert (=> d!1679112 m!6256786))

(declare-fun m!6257524 () Bool)

(assert (=> d!1679112 m!6257524))

(assert (=> b!5205915 d!1679112))

(declare-fun d!1679116 () Bool)

(assert (=> d!1679116 (= (nullable!4962 (h!67002 (exprs!4677 lt!2141533))) (nullableFct!1373 (h!67002 (exprs!4677 lt!2141533))))))

(declare-fun bs!1210083 () Bool)

(assert (= bs!1210083 d!1679116))

(declare-fun m!6257526 () Bool)

(assert (=> bs!1210083 m!6257526))

(assert (=> b!5205988 d!1679116))

(declare-fun d!1679118 () Bool)

(declare-fun res!2211789 () Bool)

(declare-fun e!3241710 () Bool)

(assert (=> d!1679118 (=> res!2211789 e!3241710)))

(assert (=> d!1679118 (= res!2211789 ((_ is Nil!60555) lt!2141563))))

(assert (=> d!1679118 (= (noDuplicate!1176 lt!2141563) e!3241710)))

(declare-fun b!5206591 () Bool)

(declare-fun e!3241711 () Bool)

(assert (=> b!5206591 (= e!3241710 e!3241711)))

(declare-fun res!2211790 () Bool)

(assert (=> b!5206591 (=> (not res!2211790) (not e!3241711))))

(declare-fun contains!19659 (List!60679 Context!8354) Bool)

(assert (=> b!5206591 (= res!2211790 (not (contains!19659 (t!373836 lt!2141563) (h!67003 lt!2141563))))))

(declare-fun b!5206592 () Bool)

(assert (=> b!5206592 (= e!3241711 (noDuplicate!1176 (t!373836 lt!2141563)))))

(assert (= (and d!1679118 (not res!2211789)) b!5206591))

(assert (= (and b!5206591 res!2211790) b!5206592))

(declare-fun m!6257528 () Bool)

(assert (=> b!5206591 m!6257528))

(declare-fun m!6257530 () Bool)

(assert (=> b!5206592 m!6257530))

(assert (=> d!1678782 d!1679118))

(declare-fun d!1679120 () Bool)

(declare-fun e!3241734 () Bool)

(assert (=> d!1679120 e!3241734))

(declare-fun res!2211796 () Bool)

(assert (=> d!1679120 (=> (not res!2211796) (not e!3241734))))

(declare-fun res!2211795 () List!60679)

(assert (=> d!1679120 (= res!2211796 (noDuplicate!1176 res!2211795))))

(declare-fun e!3241733 () Bool)

(assert (=> d!1679120 e!3241733))

(assert (=> d!1679120 (= (choose!38692 z!1189) res!2211795)))

(declare-fun b!5206644 () Bool)

(declare-fun e!3241732 () Bool)

(declare-fun tp!1460266 () Bool)

(assert (=> b!5206644 (= e!3241732 tp!1460266)))

(declare-fun b!5206643 () Bool)

(declare-fun tp!1460267 () Bool)

(assert (=> b!5206643 (= e!3241733 (and (inv!80229 (h!67003 res!2211795)) e!3241732 tp!1460267))))

(declare-fun b!5206645 () Bool)

(assert (=> b!5206645 (= e!3241734 (= (content!10718 res!2211795) z!1189))))

(assert (= b!5206643 b!5206644))

(assert (= (and d!1679120 ((_ is Cons!60555) res!2211795)) b!5206643))

(assert (= (and d!1679120 res!2211796) b!5206645))

(declare-fun m!6257534 () Bool)

(assert (=> d!1679120 m!6257534))

(declare-fun m!6257536 () Bool)

(assert (=> b!5206643 m!6257536))

(declare-fun m!6257538 () Bool)

(assert (=> b!5206645 m!6257538))

(assert (=> d!1678782 d!1679120))

(declare-fun d!1679122 () Bool)

(assert (=> d!1679122 true))

(assert (=> d!1679122 true))

(declare-fun res!2211799 () Bool)

(assert (=> d!1679122 (= (choose!38698 lambda!260915) res!2211799)))

(assert (=> d!1678866 d!1679122))

(declare-fun d!1679124 () Bool)

(declare-fun res!2211802 () Bool)

(declare-fun e!3241749 () Bool)

(assert (=> d!1679124 (=> res!2211802 e!3241749)))

(assert (=> d!1679124 (= res!2211802 ((_ is ElementMatch!14793) lt!2141558))))

(assert (=> d!1679124 (= (validRegex!6529 lt!2141558) e!3241749)))

(declare-fun b!5206672 () Bool)

(declare-fun e!3241745 () Bool)

(declare-fun e!3241744 () Bool)

(assert (=> b!5206672 (= e!3241745 e!3241744)))

(declare-fun c!897600 () Bool)

(assert (=> b!5206672 (= c!897600 ((_ is Union!14793) lt!2141558))))

(declare-fun b!5206673 () Bool)

(declare-fun res!2211804 () Bool)

(declare-fun e!3241746 () Bool)

(assert (=> b!5206673 (=> (not res!2211804) (not e!3241746))))

(declare-fun call!366274 () Bool)

(assert (=> b!5206673 (= res!2211804 call!366274)))

(assert (=> b!5206673 (= e!3241744 e!3241746)))

(declare-fun b!5206674 () Bool)

(declare-fun res!2211803 () Bool)

(declare-fun e!3241748 () Bool)

(assert (=> b!5206674 (=> res!2211803 e!3241748)))

(assert (=> b!5206674 (= res!2211803 (not ((_ is Concat!23638) lt!2141558)))))

(assert (=> b!5206674 (= e!3241744 e!3241748)))

(declare-fun b!5206675 () Bool)

(declare-fun e!3241747 () Bool)

(assert (=> b!5206675 (= e!3241745 e!3241747)))

(declare-fun res!2211801 () Bool)

(assert (=> b!5206675 (= res!2211801 (not (nullable!4962 (reg!15122 lt!2141558))))))

(assert (=> b!5206675 (=> (not res!2211801) (not e!3241747))))

(declare-fun b!5206676 () Bool)

(declare-fun e!3241743 () Bool)

(assert (=> b!5206676 (= e!3241748 e!3241743)))

(declare-fun res!2211800 () Bool)

(assert (=> b!5206676 (=> (not res!2211800) (not e!3241743))))

(assert (=> b!5206676 (= res!2211800 call!366274)))

(declare-fun b!5206677 () Bool)

(declare-fun call!366273 () Bool)

(assert (=> b!5206677 (= e!3241743 call!366273)))

(declare-fun bm!366267 () Bool)

(declare-fun call!366272 () Bool)

(assert (=> bm!366267 (= call!366273 call!366272)))

(declare-fun b!5206678 () Bool)

(assert (=> b!5206678 (= e!3241749 e!3241745)))

(declare-fun c!897601 () Bool)

(assert (=> b!5206678 (= c!897601 ((_ is Star!14793) lt!2141558))))

(declare-fun bm!366268 () Bool)

(assert (=> bm!366268 (= call!366272 (validRegex!6529 (ite c!897601 (reg!15122 lt!2141558) (ite c!897600 (regTwo!30099 lt!2141558) (regTwo!30098 lt!2141558)))))))

(declare-fun bm!366269 () Bool)

(assert (=> bm!366269 (= call!366274 (validRegex!6529 (ite c!897600 (regOne!30099 lt!2141558) (regOne!30098 lt!2141558))))))

(declare-fun b!5206679 () Bool)

(assert (=> b!5206679 (= e!3241747 call!366272)))

(declare-fun b!5206680 () Bool)

(assert (=> b!5206680 (= e!3241746 call!366273)))

(assert (= (and d!1679124 (not res!2211802)) b!5206678))

(assert (= (and b!5206678 c!897601) b!5206675))

(assert (= (and b!5206678 (not c!897601)) b!5206672))

(assert (= (and b!5206675 res!2211801) b!5206679))

(assert (= (and b!5206672 c!897600) b!5206673))

(assert (= (and b!5206672 (not c!897600)) b!5206674))

(assert (= (and b!5206673 res!2211804) b!5206680))

(assert (= (and b!5206674 (not res!2211803)) b!5206676))

(assert (= (and b!5206676 res!2211800) b!5206677))

(assert (= (or b!5206680 b!5206677) bm!366267))

(assert (= (or b!5206673 b!5206676) bm!366269))

(assert (= (or b!5206679 bm!366267) bm!366268))

(declare-fun m!6257544 () Bool)

(assert (=> b!5206675 m!6257544))

(declare-fun m!6257548 () Bool)

(assert (=> bm!366268 m!6257548))

(declare-fun m!6257550 () Bool)

(assert (=> bm!366269 m!6257550))

(assert (=> d!1678778 d!1679124))

(assert (=> d!1678778 d!1678784))

(assert (=> d!1678778 d!1678796))

(declare-fun b!5206690 () Bool)

(declare-fun e!3241755 () List!60680)

(assert (=> b!5206690 (= e!3241755 (Cons!60556 (h!67004 (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) Nil!60556))) (++!13201 (t!373837 (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) Nil!60556))) (t!373837 s!2326))))))

(declare-fun b!5206691 () Bool)

(declare-fun res!2211809 () Bool)

(declare-fun e!3241754 () Bool)

(assert (=> b!5206691 (=> (not res!2211809) (not e!3241754))))

(declare-fun lt!2141653 () List!60680)

(declare-fun size!39713 (List!60680) Int)

(assert (=> b!5206691 (= res!2211809 (= (size!39713 lt!2141653) (+ (size!39713 (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) Nil!60556))) (size!39713 (t!373837 s!2326)))))))

(declare-fun b!5206689 () Bool)

(assert (=> b!5206689 (= e!3241755 (t!373837 s!2326))))

(declare-fun d!1679134 () Bool)

(assert (=> d!1679134 e!3241754))

(declare-fun res!2211810 () Bool)

(assert (=> d!1679134 (=> (not res!2211810) (not e!3241754))))

(declare-fun content!10721 (List!60680) (InoxSet C!29856))

(assert (=> d!1679134 (= res!2211810 (= (content!10721 lt!2141653) ((_ map or) (content!10721 (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) Nil!60556))) (content!10721 (t!373837 s!2326)))))))

(assert (=> d!1679134 (= lt!2141653 e!3241755)))

(declare-fun c!897604 () Bool)

(assert (=> d!1679134 (= c!897604 ((_ is Nil!60556) (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) Nil!60556))))))

(assert (=> d!1679134 (= (++!13201 (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) Nil!60556)) (t!373837 s!2326)) lt!2141653)))

(declare-fun b!5206692 () Bool)

(assert (=> b!5206692 (= e!3241754 (or (not (= (t!373837 s!2326) Nil!60556)) (= lt!2141653 (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) Nil!60556)))))))

(assert (= (and d!1679134 c!897604) b!5206689))

(assert (= (and d!1679134 (not c!897604)) b!5206690))

(assert (= (and d!1679134 res!2211810) b!5206691))

(assert (= (and b!5206691 res!2211809) b!5206692))

(declare-fun m!6257556 () Bool)

(assert (=> b!5206690 m!6257556))

(declare-fun m!6257558 () Bool)

(assert (=> b!5206691 m!6257558))

(assert (=> b!5206691 m!6256950))

(declare-fun m!6257560 () Bool)

(assert (=> b!5206691 m!6257560))

(declare-fun m!6257562 () Bool)

(assert (=> b!5206691 m!6257562))

(declare-fun m!6257564 () Bool)

(assert (=> d!1679134 m!6257564))

(assert (=> d!1679134 m!6256950))

(declare-fun m!6257566 () Bool)

(assert (=> d!1679134 m!6257566))

(declare-fun m!6257568 () Bool)

(assert (=> d!1679134 m!6257568))

(assert (=> b!5205913 d!1679134))

(declare-fun b!5206694 () Bool)

(declare-fun e!3241757 () List!60680)

(assert (=> b!5206694 (= e!3241757 (Cons!60556 (h!67004 Nil!60556) (++!13201 (t!373837 Nil!60556) (Cons!60556 (h!67004 s!2326) Nil!60556))))))

(declare-fun b!5206695 () Bool)

(declare-fun res!2211811 () Bool)

(declare-fun e!3241756 () Bool)

(assert (=> b!5206695 (=> (not res!2211811) (not e!3241756))))

(declare-fun lt!2141654 () List!60680)

(assert (=> b!5206695 (= res!2211811 (= (size!39713 lt!2141654) (+ (size!39713 Nil!60556) (size!39713 (Cons!60556 (h!67004 s!2326) Nil!60556)))))))

(declare-fun b!5206693 () Bool)

(assert (=> b!5206693 (= e!3241757 (Cons!60556 (h!67004 s!2326) Nil!60556))))

(declare-fun d!1679138 () Bool)

(assert (=> d!1679138 e!3241756))

(declare-fun res!2211812 () Bool)

(assert (=> d!1679138 (=> (not res!2211812) (not e!3241756))))

(assert (=> d!1679138 (= res!2211812 (= (content!10721 lt!2141654) ((_ map or) (content!10721 Nil!60556) (content!10721 (Cons!60556 (h!67004 s!2326) Nil!60556)))))))

(assert (=> d!1679138 (= lt!2141654 e!3241757)))

(declare-fun c!897605 () Bool)

(assert (=> d!1679138 (= c!897605 ((_ is Nil!60556) Nil!60556))))

(assert (=> d!1679138 (= (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) Nil!60556)) lt!2141654)))

(declare-fun b!5206696 () Bool)

(assert (=> b!5206696 (= e!3241756 (or (not (= (Cons!60556 (h!67004 s!2326) Nil!60556) Nil!60556)) (= lt!2141654 Nil!60556)))))

(assert (= (and d!1679138 c!897605) b!5206693))

(assert (= (and d!1679138 (not c!897605)) b!5206694))

(assert (= (and d!1679138 res!2211812) b!5206695))

(assert (= (and b!5206695 res!2211811) b!5206696))

(declare-fun m!6257570 () Bool)

(assert (=> b!5206694 m!6257570))

(declare-fun m!6257572 () Bool)

(assert (=> b!5206695 m!6257572))

(declare-fun m!6257574 () Bool)

(assert (=> b!5206695 m!6257574))

(declare-fun m!6257576 () Bool)

(assert (=> b!5206695 m!6257576))

(declare-fun m!6257578 () Bool)

(assert (=> d!1679138 m!6257578))

(declare-fun m!6257580 () Bool)

(assert (=> d!1679138 m!6257580))

(declare-fun m!6257582 () Bool)

(assert (=> d!1679138 m!6257582))

(assert (=> b!5205913 d!1679138))

(declare-fun d!1679140 () Bool)

(assert (=> d!1679140 (= (++!13201 (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) Nil!60556)) (t!373837 s!2326)) s!2326)))

(declare-fun lt!2141657 () Unit!152438)

(declare-fun choose!38704 (List!60680 C!29856 List!60680 List!60680) Unit!152438)

(assert (=> d!1679140 (= lt!2141657 (choose!38704 Nil!60556 (h!67004 s!2326) (t!373837 s!2326) s!2326))))

(assert (=> d!1679140 (= (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) (t!373837 s!2326))) s!2326)))

(assert (=> d!1679140 (= (lemmaMoveElementToOtherListKeepsConcatEq!1616 Nil!60556 (h!67004 s!2326) (t!373837 s!2326) s!2326) lt!2141657)))

(declare-fun bs!1210089 () Bool)

(assert (= bs!1210089 d!1679140))

(assert (=> bs!1210089 m!6256950))

(assert (=> bs!1210089 m!6256950))

(assert (=> bs!1210089 m!6256952))

(declare-fun m!6257584 () Bool)

(assert (=> bs!1210089 m!6257584))

(declare-fun m!6257586 () Bool)

(assert (=> bs!1210089 m!6257586))

(assert (=> b!5205913 d!1679140))

(declare-fun b!5206697 () Bool)

(declare-fun res!2211815 () Bool)

(declare-fun e!3241760 () Bool)

(assert (=> b!5206697 (=> (not res!2211815) (not e!3241760))))

(declare-fun lt!2141659 () Option!14904)

(assert (=> b!5206697 (= res!2211815 (matchR!6978 (regOne!30098 r!7292) (_1!35295 (get!20803 lt!2141659))))))

(declare-fun b!5206698 () Bool)

(declare-fun lt!2141658 () Unit!152438)

(declare-fun lt!2141660 () Unit!152438)

(assert (=> b!5206698 (= lt!2141658 lt!2141660)))

(assert (=> b!5206698 (= (++!13201 (++!13201 (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) Nil!60556)) (Cons!60556 (h!67004 (t!373837 s!2326)) Nil!60556)) (t!373837 (t!373837 s!2326))) s!2326)))

(assert (=> b!5206698 (= lt!2141660 (lemmaMoveElementToOtherListKeepsConcatEq!1616 (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) Nil!60556)) (h!67004 (t!373837 s!2326)) (t!373837 (t!373837 s!2326)) s!2326))))

(declare-fun e!3241758 () Option!14904)

(assert (=> b!5206698 (= e!3241758 (findConcatSeparation!1318 (regOne!30098 r!7292) (regTwo!30098 r!7292) (++!13201 (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) Nil!60556)) (Cons!60556 (h!67004 (t!373837 s!2326)) Nil!60556)) (t!373837 (t!373837 s!2326)) s!2326))))

(declare-fun b!5206699 () Bool)

(declare-fun e!3241762 () Option!14904)

(assert (=> b!5206699 (= e!3241762 e!3241758)))

(declare-fun c!897606 () Bool)

(assert (=> b!5206699 (= c!897606 ((_ is Nil!60556) (t!373837 s!2326)))))

(declare-fun d!1679142 () Bool)

(declare-fun e!3241759 () Bool)

(assert (=> d!1679142 e!3241759))

(declare-fun res!2211817 () Bool)

(assert (=> d!1679142 (=> res!2211817 e!3241759)))

(assert (=> d!1679142 (= res!2211817 e!3241760)))

(declare-fun res!2211814 () Bool)

(assert (=> d!1679142 (=> (not res!2211814) (not e!3241760))))

(assert (=> d!1679142 (= res!2211814 (isDefined!11607 lt!2141659))))

(assert (=> d!1679142 (= lt!2141659 e!3241762)))

(declare-fun c!897607 () Bool)

(declare-fun e!3241761 () Bool)

(assert (=> d!1679142 (= c!897607 e!3241761)))

(declare-fun res!2211816 () Bool)

(assert (=> d!1679142 (=> (not res!2211816) (not e!3241761))))

(assert (=> d!1679142 (= res!2211816 (matchR!6978 (regOne!30098 r!7292) (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) Nil!60556))))))

(assert (=> d!1679142 (validRegex!6529 (regOne!30098 r!7292))))

(assert (=> d!1679142 (= (findConcatSeparation!1318 (regOne!30098 r!7292) (regTwo!30098 r!7292) (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) Nil!60556)) (t!373837 s!2326) s!2326) lt!2141659)))

(declare-fun b!5206700 () Bool)

(assert (=> b!5206700 (= e!3241761 (matchR!6978 (regTwo!30098 r!7292) (t!373837 s!2326)))))

(declare-fun b!5206701 () Bool)

(assert (=> b!5206701 (= e!3241762 (Some!14903 (tuple2!63985 (++!13201 Nil!60556 (Cons!60556 (h!67004 s!2326) Nil!60556)) (t!373837 s!2326))))))

(declare-fun b!5206702 () Bool)

(assert (=> b!5206702 (= e!3241759 (not (isDefined!11607 lt!2141659)))))

(declare-fun b!5206703 () Bool)

(declare-fun res!2211813 () Bool)

(assert (=> b!5206703 (=> (not res!2211813) (not e!3241760))))

(assert (=> b!5206703 (= res!2211813 (matchR!6978 (regTwo!30098 r!7292) (_2!35295 (get!20803 lt!2141659))))))

(declare-fun b!5206704 () Bool)

(assert (=> b!5206704 (= e!3241758 None!14903)))

(declare-fun b!5206705 () Bool)

(assert (=> b!5206705 (= e!3241760 (= (++!13201 (_1!35295 (get!20803 lt!2141659)) (_2!35295 (get!20803 lt!2141659))) s!2326))))

(assert (= (and d!1679142 res!2211816) b!5206700))

(assert (= (and d!1679142 c!897607) b!5206701))

(assert (= (and d!1679142 (not c!897607)) b!5206699))

(assert (= (and b!5206699 c!897606) b!5206704))

(assert (= (and b!5206699 (not c!897606)) b!5206698))

(assert (= (and d!1679142 res!2211814) b!5206697))

(assert (= (and b!5206697 res!2211815) b!5206703))

(assert (= (and b!5206703 res!2211813) b!5206705))

(assert (= (and d!1679142 (not res!2211817)) b!5206702))

(assert (=> b!5206698 m!6256950))

(declare-fun m!6257588 () Bool)

(assert (=> b!5206698 m!6257588))

(assert (=> b!5206698 m!6257588))

(declare-fun m!6257590 () Bool)

(assert (=> b!5206698 m!6257590))

(assert (=> b!5206698 m!6256950))

(declare-fun m!6257592 () Bool)

(assert (=> b!5206698 m!6257592))

(assert (=> b!5206698 m!6257588))

(declare-fun m!6257594 () Bool)

(assert (=> b!5206698 m!6257594))

(declare-fun m!6257596 () Bool)

(assert (=> b!5206705 m!6257596))

(declare-fun m!6257598 () Bool)

(assert (=> b!5206705 m!6257598))

(declare-fun m!6257600 () Bool)

(assert (=> b!5206700 m!6257600))

(assert (=> b!5206703 m!6257596))

(declare-fun m!6257602 () Bool)

(assert (=> b!5206703 m!6257602))

(declare-fun m!6257604 () Bool)

(assert (=> b!5206702 m!6257604))

(assert (=> d!1679142 m!6257604))

(assert (=> d!1679142 m!6256950))

(declare-fun m!6257606 () Bool)

(assert (=> d!1679142 m!6257606))

(assert (=> d!1679142 m!6256970))

(assert (=> b!5206697 m!6257596))

(declare-fun m!6257608 () Bool)

(assert (=> b!5206697 m!6257608))

(assert (=> b!5205913 d!1679142))

(declare-fun d!1679144 () Bool)

(assert (=> d!1679144 (= (isUnion!198 lt!2141567) ((_ is Union!14793) lt!2141567))))

(assert (=> b!5205467 d!1679144))

(declare-fun d!1679146 () Bool)

(assert (=> d!1679146 (= (isEmpty!32465 s!2326) ((_ is Nil!60556) s!2326))))

(assert (=> bm!366104 d!1679146))

(declare-fun d!1679148 () Bool)

(assert (=> d!1679148 (= (nullable!4962 r!7292) (nullableFct!1373 r!7292))))

(declare-fun bs!1210090 () Bool)

(assert (= bs!1210090 d!1679148))

(declare-fun m!6257610 () Bool)

(assert (=> bs!1210090 m!6257610))

(assert (=> b!5205727 d!1679148))

(declare-fun d!1679150 () Bool)

(declare-fun c!897608 () Bool)

(assert (=> d!1679150 (= c!897608 (isEmpty!32465 (tail!10259 (t!373837 s!2326))))))

(declare-fun e!3241763 () Bool)

(assert (=> d!1679150 (= (matchZipper!1037 (derivationStepZipper!1065 ((_ map or) lt!2141536 lt!2141541) (head!11162 (t!373837 s!2326))) (tail!10259 (t!373837 s!2326))) e!3241763)))

(declare-fun b!5206706 () Bool)

(assert (=> b!5206706 (= e!3241763 (nullableZipper!1221 (derivationStepZipper!1065 ((_ map or) lt!2141536 lt!2141541) (head!11162 (t!373837 s!2326)))))))

(declare-fun b!5206707 () Bool)

(assert (=> b!5206707 (= e!3241763 (matchZipper!1037 (derivationStepZipper!1065 (derivationStepZipper!1065 ((_ map or) lt!2141536 lt!2141541) (head!11162 (t!373837 s!2326))) (head!11162 (tail!10259 (t!373837 s!2326)))) (tail!10259 (tail!10259 (t!373837 s!2326)))))))

(assert (= (and d!1679150 c!897608) b!5206706))

(assert (= (and d!1679150 (not c!897608)) b!5206707))

(assert (=> d!1679150 m!6256904))

(assert (=> d!1679150 m!6257448))

(assert (=> b!5206706 m!6256912))

(declare-fun m!6257612 () Bool)

(assert (=> b!5206706 m!6257612))

(assert (=> b!5206707 m!6256904))

(assert (=> b!5206707 m!6257452))

(assert (=> b!5206707 m!6256912))

(assert (=> b!5206707 m!6257452))

(declare-fun m!6257614 () Bool)

(assert (=> b!5206707 m!6257614))

(assert (=> b!5206707 m!6256904))

(assert (=> b!5206707 m!6257458))

(assert (=> b!5206707 m!6257614))

(assert (=> b!5206707 m!6257458))

(declare-fun m!6257616 () Bool)

(assert (=> b!5206707 m!6257616))

(assert (=> b!5205798 d!1679150))

(declare-fun bs!1210091 () Bool)

(declare-fun d!1679152 () Bool)

(assert (= bs!1210091 (and d!1679152 b!5205360)))

(declare-fun lambda!261011 () Int)

(assert (=> bs!1210091 (= (= (head!11162 (t!373837 s!2326)) (h!67004 s!2326)) (= lambda!261011 lambda!260917))))

(declare-fun bs!1210092 () Bool)

(assert (= bs!1210092 (and d!1679152 d!1679088)))

(assert (=> bs!1210092 (= lambda!261011 lambda!261008)))

(assert (=> d!1679152 true))

(assert (=> d!1679152 (= (derivationStepZipper!1065 ((_ map or) lt!2141536 lt!2141541) (head!11162 (t!373837 s!2326))) (flatMap!520 ((_ map or) lt!2141536 lt!2141541) lambda!261011))))

(declare-fun bs!1210093 () Bool)

(assert (= bs!1210093 d!1679152))

(declare-fun m!6257618 () Bool)

(assert (=> bs!1210093 m!6257618))

(assert (=> b!5205798 d!1679152))

(assert (=> b!5205798 d!1679094))

(assert (=> b!5205798 d!1679098))

(assert (=> d!1678860 d!1679076))

(declare-fun d!1679154 () Bool)

(declare-fun res!2211822 () Bool)

(declare-fun e!3241768 () Bool)

(assert (=> d!1679154 (=> res!2211822 e!3241768)))

(assert (=> d!1679154 (= res!2211822 ((_ is Nil!60554) lt!2141570))))

(assert (=> d!1679154 (= (forall!14229 lt!2141570 lambda!260937) e!3241768)))

(declare-fun b!5206712 () Bool)

(declare-fun e!3241769 () Bool)

(assert (=> b!5206712 (= e!3241768 e!3241769)))

(declare-fun res!2211823 () Bool)

(assert (=> b!5206712 (=> (not res!2211823) (not e!3241769))))

(declare-fun dynLambda!23921 (Int Regex!14793) Bool)

(assert (=> b!5206712 (= res!2211823 (dynLambda!23921 lambda!260937 (h!67002 lt!2141570)))))

(declare-fun b!5206713 () Bool)

(assert (=> b!5206713 (= e!3241769 (forall!14229 (t!373835 lt!2141570) lambda!260937))))

(assert (= (and d!1679154 (not res!2211822)) b!5206712))

(assert (= (and b!5206712 res!2211823) b!5206713))

(declare-fun b_lambda!201445 () Bool)

(assert (=> (not b_lambda!201445) (not b!5206712)))

(declare-fun m!6257620 () Bool)

(assert (=> b!5206712 m!6257620))

(declare-fun m!6257622 () Bool)

(assert (=> b!5206713 m!6257622))

(assert (=> d!1678796 d!1679154))

(declare-fun d!1679156 () Bool)

(declare-fun c!897609 () Bool)

(declare-fun e!3241771 () Bool)

(assert (=> d!1679156 (= c!897609 e!3241771)))

(declare-fun res!2211824 () Bool)

(assert (=> d!1679156 (=> (not res!2211824) (not e!3241771))))

(assert (=> d!1679156 (= res!2211824 ((_ is Cons!60554) (exprs!4677 (Context!8355 (t!373835 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))))))))

(declare-fun e!3241772 () (InoxSet Context!8354))

(assert (=> d!1679156 (= (derivationStepZipperUp!165 (Context!8355 (t!373835 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))) (h!67004 s!2326)) e!3241772)))

(declare-fun b!5206714 () Bool)

(declare-fun e!3241770 () (InoxSet Context!8354))

(assert (=> b!5206714 (= e!3241770 ((as const (Array Context!8354 Bool)) false))))

(declare-fun b!5206715 () Bool)

(assert (=> b!5206715 (= e!3241771 (nullable!4962 (h!67002 (exprs!4677 (Context!8355 (t!373835 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343))))))))))))))

(declare-fun call!366275 () (InoxSet Context!8354))

(declare-fun b!5206716 () Bool)

(assert (=> b!5206716 (= e!3241772 ((_ map or) call!366275 (derivationStepZipperUp!165 (Context!8355 (t!373835 (exprs!4677 (Context!8355 (t!373835 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343))))))))))) (h!67004 s!2326))))))

(declare-fun bm!366270 () Bool)

(assert (=> bm!366270 (= call!366275 (derivationStepZipperDown!241 (h!67002 (exprs!4677 (Context!8355 (t!373835 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))))) (Context!8355 (t!373835 (exprs!4677 (Context!8355 (t!373835 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343))))))))))) (h!67004 s!2326)))))

(declare-fun b!5206717 () Bool)

(assert (=> b!5206717 (= e!3241770 call!366275)))

(declare-fun b!5206718 () Bool)

(assert (=> b!5206718 (= e!3241772 e!3241770)))

(declare-fun c!897610 () Bool)

(assert (=> b!5206718 (= c!897610 ((_ is Cons!60554) (exprs!4677 (Context!8355 (t!373835 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))))))))

(assert (= (and d!1679156 res!2211824) b!5206715))

(assert (= (and d!1679156 c!897609) b!5206716))

(assert (= (and d!1679156 (not c!897609)) b!5206718))

(assert (= (and b!5206718 c!897610) b!5206717))

(assert (= (and b!5206718 (not c!897610)) b!5206714))

(assert (= (or b!5206716 b!5206717) bm!366270))

(declare-fun m!6257624 () Bool)

(assert (=> b!5206715 m!6257624))

(declare-fun m!6257626 () Bool)

(assert (=> b!5206716 m!6257626))

(declare-fun m!6257628 () Bool)

(assert (=> bm!366270 m!6257628))

(assert (=> b!5205984 d!1679156))

(declare-fun bs!1210094 () Bool)

(declare-fun d!1679158 () Bool)

(assert (= bs!1210094 (and d!1679158 d!1678848)))

(declare-fun lambda!261012 () Int)

(assert (=> bs!1210094 (= lambda!261012 lambda!260960)))

(declare-fun bs!1210095 () Bool)

(assert (= bs!1210095 (and d!1679158 d!1678776)))

(assert (=> bs!1210095 (= lambda!261012 lambda!260920)))

(declare-fun bs!1210096 () Bool)

(assert (= bs!1210096 (and d!1679158 d!1678876)))

(assert (=> bs!1210096 (= lambda!261012 lambda!260973)))

(declare-fun bs!1210097 () Bool)

(assert (= bs!1210097 (and d!1679158 d!1678784)))

(assert (=> bs!1210097 (= lambda!261012 lambda!260932)))

(declare-fun bs!1210098 () Bool)

(assert (= bs!1210098 (and d!1679158 d!1678796)))

(assert (=> bs!1210098 (= lambda!261012 lambda!260937)))

(declare-fun b!5206719 () Bool)

(declare-fun e!3241774 () Bool)

(declare-fun e!3241773 () Bool)

(assert (=> b!5206719 (= e!3241774 e!3241773)))

(declare-fun c!897613 () Bool)

(assert (=> b!5206719 (= c!897613 (isEmpty!32461 (tail!10258 (t!373835 (unfocusZipperList!235 zl!343)))))))

(declare-fun e!3241776 () Bool)

(assert (=> d!1679158 e!3241776))

(declare-fun res!2211826 () Bool)

(assert (=> d!1679158 (=> (not res!2211826) (not e!3241776))))

(declare-fun lt!2141661 () Regex!14793)

(assert (=> d!1679158 (= res!2211826 (validRegex!6529 lt!2141661))))

(declare-fun e!3241778 () Regex!14793)

(assert (=> d!1679158 (= lt!2141661 e!3241778)))

(declare-fun c!897614 () Bool)

(declare-fun e!3241775 () Bool)

(assert (=> d!1679158 (= c!897614 e!3241775)))

(declare-fun res!2211825 () Bool)

(assert (=> d!1679158 (=> (not res!2211825) (not e!3241775))))

(assert (=> d!1679158 (= res!2211825 ((_ is Cons!60554) (t!373835 (unfocusZipperList!235 zl!343))))))

(assert (=> d!1679158 (forall!14229 (t!373835 (unfocusZipperList!235 zl!343)) lambda!261012)))

(assert (=> d!1679158 (= (generalisedUnion!722 (t!373835 (unfocusZipperList!235 zl!343))) lt!2141661)))

(declare-fun b!5206720 () Bool)

(assert (=> b!5206720 (= e!3241773 (= lt!2141661 (head!11161 (t!373835 (unfocusZipperList!235 zl!343)))))))

(declare-fun b!5206721 () Bool)

(assert (=> b!5206721 (= e!3241774 (isEmptyLang!766 lt!2141661))))

(declare-fun b!5206722 () Bool)

(declare-fun e!3241777 () Regex!14793)

(assert (=> b!5206722 (= e!3241777 (Union!14793 (h!67002 (t!373835 (unfocusZipperList!235 zl!343))) (generalisedUnion!722 (t!373835 (t!373835 (unfocusZipperList!235 zl!343))))))))

(declare-fun b!5206723 () Bool)

(assert (=> b!5206723 (= e!3241776 e!3241774)))

(declare-fun c!897612 () Bool)

(assert (=> b!5206723 (= c!897612 (isEmpty!32461 (t!373835 (unfocusZipperList!235 zl!343))))))

(declare-fun b!5206724 () Bool)

(assert (=> b!5206724 (= e!3241773 (isUnion!198 lt!2141661))))

(declare-fun b!5206725 () Bool)

(assert (=> b!5206725 (= e!3241777 EmptyLang!14793)))

(declare-fun b!5206726 () Bool)

(assert (=> b!5206726 (= e!3241778 e!3241777)))

(declare-fun c!897611 () Bool)

(assert (=> b!5206726 (= c!897611 ((_ is Cons!60554) (t!373835 (unfocusZipperList!235 zl!343))))))

(declare-fun b!5206727 () Bool)

(assert (=> b!5206727 (= e!3241775 (isEmpty!32461 (t!373835 (t!373835 (unfocusZipperList!235 zl!343)))))))

(declare-fun b!5206728 () Bool)

(assert (=> b!5206728 (= e!3241778 (h!67002 (t!373835 (unfocusZipperList!235 zl!343))))))

(assert (= (and d!1679158 res!2211825) b!5206727))

(assert (= (and d!1679158 c!897614) b!5206728))

(assert (= (and d!1679158 (not c!897614)) b!5206726))

(assert (= (and b!5206726 c!897611) b!5206722))

(assert (= (and b!5206726 (not c!897611)) b!5206725))

(assert (= (and d!1679158 res!2211826) b!5206723))

(assert (= (and b!5206723 c!897612) b!5206721))

(assert (= (and b!5206723 (not c!897612)) b!5206719))

(assert (= (and b!5206719 c!897613) b!5206720))

(assert (= (and b!5206719 (not c!897613)) b!5206724))

(declare-fun m!6257630 () Bool)

(assert (=> b!5206720 m!6257630))

(assert (=> b!5206723 m!6256732))

(declare-fun m!6257632 () Bool)

(assert (=> b!5206727 m!6257632))

(declare-fun m!6257634 () Bool)

(assert (=> b!5206719 m!6257634))

(assert (=> b!5206719 m!6257634))

(declare-fun m!6257636 () Bool)

(assert (=> b!5206719 m!6257636))

(declare-fun m!6257638 () Bool)

(assert (=> b!5206722 m!6257638))

(declare-fun m!6257640 () Bool)

(assert (=> b!5206724 m!6257640))

(declare-fun m!6257642 () Bool)

(assert (=> b!5206721 m!6257642))

(declare-fun m!6257644 () Bool)

(assert (=> d!1679158 m!6257644))

(declare-fun m!6257646 () Bool)

(assert (=> d!1679158 m!6257646))

(assert (=> b!5205465 d!1679158))

(declare-fun d!1679160 () Bool)

(declare-fun c!897615 () Bool)

(assert (=> d!1679160 (= c!897615 (isEmpty!32465 (tail!10259 (t!373837 s!2326))))))

(declare-fun e!3241779 () Bool)

(assert (=> d!1679160 (= (matchZipper!1037 (derivationStepZipper!1065 lt!2141536 (head!11162 (t!373837 s!2326))) (tail!10259 (t!373837 s!2326))) e!3241779)))

(declare-fun b!5206729 () Bool)

(assert (=> b!5206729 (= e!3241779 (nullableZipper!1221 (derivationStepZipper!1065 lt!2141536 (head!11162 (t!373837 s!2326)))))))

(declare-fun b!5206730 () Bool)

(assert (=> b!5206730 (= e!3241779 (matchZipper!1037 (derivationStepZipper!1065 (derivationStepZipper!1065 lt!2141536 (head!11162 (t!373837 s!2326))) (head!11162 (tail!10259 (t!373837 s!2326)))) (tail!10259 (tail!10259 (t!373837 s!2326)))))))

(assert (= (and d!1679160 c!897615) b!5206729))

(assert (= (and d!1679160 (not c!897615)) b!5206730))

(assert (=> d!1679160 m!6256904))

(assert (=> d!1679160 m!6257448))

(assert (=> b!5206729 m!6256902))

(declare-fun m!6257648 () Bool)

(assert (=> b!5206729 m!6257648))

(assert (=> b!5206730 m!6256904))

(assert (=> b!5206730 m!6257452))

(assert (=> b!5206730 m!6256902))

(assert (=> b!5206730 m!6257452))

(declare-fun m!6257650 () Bool)

(assert (=> b!5206730 m!6257650))

(assert (=> b!5206730 m!6256904))

(assert (=> b!5206730 m!6257458))

(assert (=> b!5206730 m!6257650))

(assert (=> b!5206730 m!6257458))

(declare-fun m!6257652 () Bool)

(assert (=> b!5206730 m!6257652))

(assert (=> b!5205796 d!1679160))

(declare-fun bs!1210099 () Bool)

(declare-fun d!1679162 () Bool)

(assert (= bs!1210099 (and d!1679162 b!5205360)))

(declare-fun lambda!261013 () Int)

(assert (=> bs!1210099 (= (= (head!11162 (t!373837 s!2326)) (h!67004 s!2326)) (= lambda!261013 lambda!260917))))

(declare-fun bs!1210100 () Bool)

(assert (= bs!1210100 (and d!1679162 d!1679088)))

(assert (=> bs!1210100 (= lambda!261013 lambda!261008)))

(declare-fun bs!1210101 () Bool)

(assert (= bs!1210101 (and d!1679162 d!1679152)))

(assert (=> bs!1210101 (= lambda!261013 lambda!261011)))

(assert (=> d!1679162 true))

(assert (=> d!1679162 (= (derivationStepZipper!1065 lt!2141536 (head!11162 (t!373837 s!2326))) (flatMap!520 lt!2141536 lambda!261013))))

(declare-fun bs!1210102 () Bool)

(assert (= bs!1210102 d!1679162))

(declare-fun m!6257654 () Bool)

(assert (=> bs!1210102 m!6257654))

(assert (=> b!5205796 d!1679162))

(assert (=> b!5205796 d!1679094))

(assert (=> b!5205796 d!1679098))

(declare-fun d!1679164 () Bool)

(assert (=> d!1679164 (= (isEmpty!32466 (findConcatSeparation!1318 (regOne!30098 r!7292) (regTwo!30098 r!7292) Nil!60556 s!2326 s!2326)) (not ((_ is Some!14903) (findConcatSeparation!1318 (regOne!30098 r!7292) (regTwo!30098 r!7292) Nil!60556 s!2326 s!2326))))))

(assert (=> d!1678872 d!1679164))

(declare-fun d!1679166 () Bool)

(assert (=> d!1679166 true))

(assert (=> d!1679166 true))

(declare-fun res!2211827 () Bool)

(assert (=> d!1679166 (= (choose!38698 lambda!260916) res!2211827)))

(assert (=> d!1678864 d!1679166))

(declare-fun d!1679168 () Bool)

(declare-fun res!2211830 () Bool)

(declare-fun e!3241786 () Bool)

(assert (=> d!1679168 (=> res!2211830 e!3241786)))

(assert (=> d!1679168 (= res!2211830 ((_ is ElementMatch!14793) lt!2141567))))

(assert (=> d!1679168 (= (validRegex!6529 lt!2141567) e!3241786)))

(declare-fun b!5206731 () Bool)

(declare-fun e!3241782 () Bool)

(declare-fun e!3241781 () Bool)

(assert (=> b!5206731 (= e!3241782 e!3241781)))

(declare-fun c!897616 () Bool)

(assert (=> b!5206731 (= c!897616 ((_ is Union!14793) lt!2141567))))

(declare-fun b!5206732 () Bool)

(declare-fun res!2211832 () Bool)

(declare-fun e!3241783 () Bool)

(assert (=> b!5206732 (=> (not res!2211832) (not e!3241783))))

(declare-fun call!366278 () Bool)

(assert (=> b!5206732 (= res!2211832 call!366278)))

(assert (=> b!5206732 (= e!3241781 e!3241783)))

(declare-fun b!5206733 () Bool)

(declare-fun res!2211831 () Bool)

(declare-fun e!3241785 () Bool)

(assert (=> b!5206733 (=> res!2211831 e!3241785)))

(assert (=> b!5206733 (= res!2211831 (not ((_ is Concat!23638) lt!2141567)))))

(assert (=> b!5206733 (= e!3241781 e!3241785)))

(declare-fun b!5206734 () Bool)

(declare-fun e!3241784 () Bool)

(assert (=> b!5206734 (= e!3241782 e!3241784)))

(declare-fun res!2211829 () Bool)

(assert (=> b!5206734 (= res!2211829 (not (nullable!4962 (reg!15122 lt!2141567))))))

(assert (=> b!5206734 (=> (not res!2211829) (not e!3241784))))

(declare-fun b!5206735 () Bool)

(declare-fun e!3241780 () Bool)

(assert (=> b!5206735 (= e!3241785 e!3241780)))

(declare-fun res!2211828 () Bool)

(assert (=> b!5206735 (=> (not res!2211828) (not e!3241780))))

(assert (=> b!5206735 (= res!2211828 call!366278)))

(declare-fun b!5206736 () Bool)

(declare-fun call!366277 () Bool)

(assert (=> b!5206736 (= e!3241780 call!366277)))

(declare-fun bm!366271 () Bool)

(declare-fun call!366276 () Bool)

(assert (=> bm!366271 (= call!366277 call!366276)))

(declare-fun b!5206737 () Bool)

(assert (=> b!5206737 (= e!3241786 e!3241782)))

(declare-fun c!897617 () Bool)

(assert (=> b!5206737 (= c!897617 ((_ is Star!14793) lt!2141567))))

(declare-fun bm!366272 () Bool)

(assert (=> bm!366272 (= call!366276 (validRegex!6529 (ite c!897617 (reg!15122 lt!2141567) (ite c!897616 (regTwo!30099 lt!2141567) (regTwo!30098 lt!2141567)))))))

(declare-fun bm!366273 () Bool)

(assert (=> bm!366273 (= call!366278 (validRegex!6529 (ite c!897616 (regOne!30099 lt!2141567) (regOne!30098 lt!2141567))))))

(declare-fun b!5206738 () Bool)

(assert (=> b!5206738 (= e!3241784 call!366276)))

(declare-fun b!5206739 () Bool)

(assert (=> b!5206739 (= e!3241783 call!366277)))

(assert (= (and d!1679168 (not res!2211830)) b!5206737))

(assert (= (and b!5206737 c!897617) b!5206734))

(assert (= (and b!5206737 (not c!897617)) b!5206731))

(assert (= (and b!5206734 res!2211829) b!5206738))

(assert (= (and b!5206731 c!897616) b!5206732))

(assert (= (and b!5206731 (not c!897616)) b!5206733))

(assert (= (and b!5206732 res!2211832) b!5206739))

(assert (= (and b!5206733 (not res!2211831)) b!5206735))

(assert (= (and b!5206735 res!2211828) b!5206736))

(assert (= (or b!5206739 b!5206736) bm!366271))

(assert (= (or b!5206732 b!5206735) bm!366273))

(assert (= (or b!5206738 bm!366271) bm!366272))

(declare-fun m!6257656 () Bool)

(assert (=> b!5206734 m!6257656))

(declare-fun m!6257658 () Bool)

(assert (=> bm!366272 m!6257658))

(declare-fun m!6257660 () Bool)

(assert (=> bm!366273 m!6257660))

(assert (=> d!1678784 d!1679168))

(declare-fun d!1679170 () Bool)

(declare-fun res!2211833 () Bool)

(declare-fun e!3241787 () Bool)

(assert (=> d!1679170 (=> res!2211833 e!3241787)))

(assert (=> d!1679170 (= res!2211833 ((_ is Nil!60554) (unfocusZipperList!235 zl!343)))))

(assert (=> d!1679170 (= (forall!14229 (unfocusZipperList!235 zl!343) lambda!260932) e!3241787)))

(declare-fun b!5206740 () Bool)

(declare-fun e!3241788 () Bool)

(assert (=> b!5206740 (= e!3241787 e!3241788)))

(declare-fun res!2211834 () Bool)

(assert (=> b!5206740 (=> (not res!2211834) (not e!3241788))))

(assert (=> b!5206740 (= res!2211834 (dynLambda!23921 lambda!260932 (h!67002 (unfocusZipperList!235 zl!343))))))

(declare-fun b!5206741 () Bool)

(assert (=> b!5206741 (= e!3241788 (forall!14229 (t!373835 (unfocusZipperList!235 zl!343)) lambda!260932))))

(assert (= (and d!1679170 (not res!2211833)) b!5206740))

(assert (= (and b!5206740 res!2211834) b!5206741))

(declare-fun b_lambda!201447 () Bool)

(assert (=> (not b_lambda!201447) (not b!5206740)))

(declare-fun m!6257662 () Bool)

(assert (=> b!5206740 m!6257662))

(declare-fun m!6257664 () Bool)

(assert (=> b!5206741 m!6257664))

(assert (=> d!1678784 d!1679170))

(declare-fun d!1679172 () Bool)

(assert (=> d!1679172 (= (head!11161 (unfocusZipperList!235 zl!343)) (h!67002 (unfocusZipperList!235 zl!343)))))

(assert (=> b!5205463 d!1679172))

(assert (=> bm!366107 d!1679146))

(declare-fun d!1679174 () Bool)

(assert (=> d!1679174 (= (isConcat!280 lt!2141624) ((_ is Concat!23638) lt!2141624))))

(assert (=> b!5205970 d!1679174))

(declare-fun d!1679176 () Bool)

(declare-fun res!2211837 () Bool)

(declare-fun e!3241795 () Bool)

(assert (=> d!1679176 (=> res!2211837 e!3241795)))

(assert (=> d!1679176 (= res!2211837 ((_ is ElementMatch!14793) (ite c!897431 (reg!15122 (regTwo!30099 (regOne!30098 r!7292))) (ite c!897430 (regTwo!30099 (regTwo!30099 (regOne!30098 r!7292))) (regTwo!30098 (regTwo!30099 (regOne!30098 r!7292)))))))))

(assert (=> d!1679176 (= (validRegex!6529 (ite c!897431 (reg!15122 (regTwo!30099 (regOne!30098 r!7292))) (ite c!897430 (regTwo!30099 (regTwo!30099 (regOne!30098 r!7292))) (regTwo!30098 (regTwo!30099 (regOne!30098 r!7292)))))) e!3241795)))

(declare-fun b!5206742 () Bool)

(declare-fun e!3241791 () Bool)

(declare-fun e!3241790 () Bool)

(assert (=> b!5206742 (= e!3241791 e!3241790)))

(declare-fun c!897618 () Bool)

(assert (=> b!5206742 (= c!897618 ((_ is Union!14793) (ite c!897431 (reg!15122 (regTwo!30099 (regOne!30098 r!7292))) (ite c!897430 (regTwo!30099 (regTwo!30099 (regOne!30098 r!7292))) (regTwo!30098 (regTwo!30099 (regOne!30098 r!7292)))))))))

(declare-fun b!5206743 () Bool)

(declare-fun res!2211839 () Bool)

(declare-fun e!3241792 () Bool)

(assert (=> b!5206743 (=> (not res!2211839) (not e!3241792))))

(declare-fun call!366281 () Bool)

(assert (=> b!5206743 (= res!2211839 call!366281)))

(assert (=> b!5206743 (= e!3241790 e!3241792)))

(declare-fun b!5206744 () Bool)

(declare-fun res!2211838 () Bool)

(declare-fun e!3241794 () Bool)

(assert (=> b!5206744 (=> res!2211838 e!3241794)))

(assert (=> b!5206744 (= res!2211838 (not ((_ is Concat!23638) (ite c!897431 (reg!15122 (regTwo!30099 (regOne!30098 r!7292))) (ite c!897430 (regTwo!30099 (regTwo!30099 (regOne!30098 r!7292))) (regTwo!30098 (regTwo!30099 (regOne!30098 r!7292))))))))))

(assert (=> b!5206744 (= e!3241790 e!3241794)))

(declare-fun b!5206745 () Bool)

(declare-fun e!3241793 () Bool)

(assert (=> b!5206745 (= e!3241791 e!3241793)))

(declare-fun res!2211836 () Bool)

(assert (=> b!5206745 (= res!2211836 (not (nullable!4962 (reg!15122 (ite c!897431 (reg!15122 (regTwo!30099 (regOne!30098 r!7292))) (ite c!897430 (regTwo!30099 (regTwo!30099 (regOne!30098 r!7292))) (regTwo!30098 (regTwo!30099 (regOne!30098 r!7292)))))))))))

(assert (=> b!5206745 (=> (not res!2211836) (not e!3241793))))

(declare-fun b!5206746 () Bool)

(declare-fun e!3241789 () Bool)

(assert (=> b!5206746 (= e!3241794 e!3241789)))

(declare-fun res!2211835 () Bool)

(assert (=> b!5206746 (=> (not res!2211835) (not e!3241789))))

(assert (=> b!5206746 (= res!2211835 call!366281)))

(declare-fun b!5206747 () Bool)

(declare-fun call!366280 () Bool)

(assert (=> b!5206747 (= e!3241789 call!366280)))

(declare-fun bm!366274 () Bool)

(declare-fun call!366279 () Bool)

(assert (=> bm!366274 (= call!366280 call!366279)))

(declare-fun b!5206748 () Bool)

(assert (=> b!5206748 (= e!3241795 e!3241791)))

(declare-fun c!897619 () Bool)

(assert (=> b!5206748 (= c!897619 ((_ is Star!14793) (ite c!897431 (reg!15122 (regTwo!30099 (regOne!30098 r!7292))) (ite c!897430 (regTwo!30099 (regTwo!30099 (regOne!30098 r!7292))) (regTwo!30098 (regTwo!30099 (regOne!30098 r!7292)))))))))

(declare-fun bm!366275 () Bool)

(assert (=> bm!366275 (= call!366279 (validRegex!6529 (ite c!897619 (reg!15122 (ite c!897431 (reg!15122 (regTwo!30099 (regOne!30098 r!7292))) (ite c!897430 (regTwo!30099 (regTwo!30099 (regOne!30098 r!7292))) (regTwo!30098 (regTwo!30099 (regOne!30098 r!7292)))))) (ite c!897618 (regTwo!30099 (ite c!897431 (reg!15122 (regTwo!30099 (regOne!30098 r!7292))) (ite c!897430 (regTwo!30099 (regTwo!30099 (regOne!30098 r!7292))) (regTwo!30098 (regTwo!30099 (regOne!30098 r!7292)))))) (regTwo!30098 (ite c!897431 (reg!15122 (regTwo!30099 (regOne!30098 r!7292))) (ite c!897430 (regTwo!30099 (regTwo!30099 (regOne!30098 r!7292))) (regTwo!30098 (regTwo!30099 (regOne!30098 r!7292))))))))))))

(declare-fun bm!366276 () Bool)

(assert (=> bm!366276 (= call!366281 (validRegex!6529 (ite c!897618 (regOne!30099 (ite c!897431 (reg!15122 (regTwo!30099 (regOne!30098 r!7292))) (ite c!897430 (regTwo!30099 (regTwo!30099 (regOne!30098 r!7292))) (regTwo!30098 (regTwo!30099 (regOne!30098 r!7292)))))) (regOne!30098 (ite c!897431 (reg!15122 (regTwo!30099 (regOne!30098 r!7292))) (ite c!897430 (regTwo!30099 (regTwo!30099 (regOne!30098 r!7292))) (regTwo!30098 (regTwo!30099 (regOne!30098 r!7292)))))))))))

(declare-fun b!5206749 () Bool)

(assert (=> b!5206749 (= e!3241793 call!366279)))

(declare-fun b!5206750 () Bool)

(assert (=> b!5206750 (= e!3241792 call!366280)))

(assert (= (and d!1679176 (not res!2211837)) b!5206748))

(assert (= (and b!5206748 c!897619) b!5206745))

(assert (= (and b!5206748 (not c!897619)) b!5206742))

(assert (= (and b!5206745 res!2211836) b!5206749))

(assert (= (and b!5206742 c!897618) b!5206743))

(assert (= (and b!5206742 (not c!897618)) b!5206744))

(assert (= (and b!5206743 res!2211839) b!5206750))

(assert (= (and b!5206744 (not res!2211838)) b!5206746))

(assert (= (and b!5206746 res!2211835) b!5206747))

(assert (= (or b!5206750 b!5206747) bm!366274))

(assert (= (or b!5206743 b!5206746) bm!366276))

(assert (= (or b!5206749 bm!366274) bm!366275))

(declare-fun m!6257666 () Bool)

(assert (=> b!5206745 m!6257666))

(declare-fun m!6257668 () Bool)

(assert (=> bm!366275 m!6257668))

(declare-fun m!6257670 () Bool)

(assert (=> bm!366276 m!6257670))

(assert (=> bm!366144 d!1679176))

(declare-fun d!1679178 () Bool)

(assert (=> d!1679178 (= (isEmpty!32461 (exprs!4677 (h!67003 zl!343))) ((_ is Nil!60554) (exprs!4677 (h!67003 zl!343))))))

(assert (=> b!5205968 d!1679178))

(declare-fun bs!1210103 () Bool)

(declare-fun d!1679180 () Bool)

(assert (= bs!1210103 (and d!1679180 d!1678848)))

(declare-fun lambda!261014 () Int)

(assert (=> bs!1210103 (= lambda!261014 lambda!260960)))

(declare-fun bs!1210104 () Bool)

(assert (= bs!1210104 (and d!1679180 d!1678776)))

(assert (=> bs!1210104 (= lambda!261014 lambda!260920)))

(declare-fun bs!1210105 () Bool)

(assert (= bs!1210105 (and d!1679180 d!1679158)))

(assert (=> bs!1210105 (= lambda!261014 lambda!261012)))

(declare-fun bs!1210106 () Bool)

(assert (= bs!1210106 (and d!1679180 d!1678876)))

(assert (=> bs!1210106 (= lambda!261014 lambda!260973)))

(declare-fun bs!1210107 () Bool)

(assert (= bs!1210107 (and d!1679180 d!1678784)))

(assert (=> bs!1210107 (= lambda!261014 lambda!260932)))

(declare-fun bs!1210108 () Bool)

(assert (= bs!1210108 (and d!1679180 d!1678796)))

(assert (=> bs!1210108 (= lambda!261014 lambda!260937)))

(assert (=> d!1679180 (= (inv!80229 setElem!33050) (forall!14229 (exprs!4677 setElem!33050) lambda!261014))))

(declare-fun bs!1210109 () Bool)

(assert (= bs!1210109 d!1679180))

(declare-fun m!6257672 () Bool)

(assert (=> bs!1210109 m!6257672))

(assert (=> setNonEmpty!33050 d!1679180))

(declare-fun d!1679182 () Bool)

(declare-fun res!2211842 () Bool)

(declare-fun e!3241802 () Bool)

(assert (=> d!1679182 (=> res!2211842 e!3241802)))

(assert (=> d!1679182 (= res!2211842 ((_ is ElementMatch!14793) (ite c!897421 (regOne!30099 r!7292) (regOne!30098 r!7292))))))

(assert (=> d!1679182 (= (validRegex!6529 (ite c!897421 (regOne!30099 r!7292) (regOne!30098 r!7292))) e!3241802)))

(declare-fun b!5206751 () Bool)

(declare-fun e!3241798 () Bool)

(declare-fun e!3241797 () Bool)

(assert (=> b!5206751 (= e!3241798 e!3241797)))

(declare-fun c!897620 () Bool)

(assert (=> b!5206751 (= c!897620 ((_ is Union!14793) (ite c!897421 (regOne!30099 r!7292) (regOne!30098 r!7292))))))

(declare-fun b!5206752 () Bool)

(declare-fun res!2211844 () Bool)

(declare-fun e!3241799 () Bool)

(assert (=> b!5206752 (=> (not res!2211844) (not e!3241799))))

(declare-fun call!366284 () Bool)

(assert (=> b!5206752 (= res!2211844 call!366284)))

(assert (=> b!5206752 (= e!3241797 e!3241799)))

(declare-fun b!5206753 () Bool)

(declare-fun res!2211843 () Bool)

(declare-fun e!3241801 () Bool)

(assert (=> b!5206753 (=> res!2211843 e!3241801)))

(assert (=> b!5206753 (= res!2211843 (not ((_ is Concat!23638) (ite c!897421 (regOne!30099 r!7292) (regOne!30098 r!7292)))))))

(assert (=> b!5206753 (= e!3241797 e!3241801)))

(declare-fun b!5206754 () Bool)

(declare-fun e!3241800 () Bool)

(assert (=> b!5206754 (= e!3241798 e!3241800)))

(declare-fun res!2211841 () Bool)

(assert (=> b!5206754 (= res!2211841 (not (nullable!4962 (reg!15122 (ite c!897421 (regOne!30099 r!7292) (regOne!30098 r!7292))))))))

(assert (=> b!5206754 (=> (not res!2211841) (not e!3241800))))

(declare-fun b!5206755 () Bool)

(declare-fun e!3241796 () Bool)

(assert (=> b!5206755 (= e!3241801 e!3241796)))

(declare-fun res!2211840 () Bool)

(assert (=> b!5206755 (=> (not res!2211840) (not e!3241796))))

(assert (=> b!5206755 (= res!2211840 call!366284)))

(declare-fun b!5206756 () Bool)

(declare-fun call!366283 () Bool)

(assert (=> b!5206756 (= e!3241796 call!366283)))

(declare-fun bm!366277 () Bool)

(declare-fun call!366282 () Bool)

(assert (=> bm!366277 (= call!366283 call!366282)))

(declare-fun b!5206757 () Bool)

(assert (=> b!5206757 (= e!3241802 e!3241798)))

(declare-fun c!897621 () Bool)

(assert (=> b!5206757 (= c!897621 ((_ is Star!14793) (ite c!897421 (regOne!30099 r!7292) (regOne!30098 r!7292))))))

(declare-fun bm!366278 () Bool)

(assert (=> bm!366278 (= call!366282 (validRegex!6529 (ite c!897621 (reg!15122 (ite c!897421 (regOne!30099 r!7292) (regOne!30098 r!7292))) (ite c!897620 (regTwo!30099 (ite c!897421 (regOne!30099 r!7292) (regOne!30098 r!7292))) (regTwo!30098 (ite c!897421 (regOne!30099 r!7292) (regOne!30098 r!7292)))))))))

(declare-fun bm!366279 () Bool)

(assert (=> bm!366279 (= call!366284 (validRegex!6529 (ite c!897620 (regOne!30099 (ite c!897421 (regOne!30099 r!7292) (regOne!30098 r!7292))) (regOne!30098 (ite c!897421 (regOne!30099 r!7292) (regOne!30098 r!7292))))))))

(declare-fun b!5206758 () Bool)

(assert (=> b!5206758 (= e!3241800 call!366282)))

(declare-fun b!5206759 () Bool)

(assert (=> b!5206759 (= e!3241799 call!366283)))

(assert (= (and d!1679182 (not res!2211842)) b!5206757))

(assert (= (and b!5206757 c!897621) b!5206754))

(assert (= (and b!5206757 (not c!897621)) b!5206751))

(assert (= (and b!5206754 res!2211841) b!5206758))

(assert (= (and b!5206751 c!897620) b!5206752))

(assert (= (and b!5206751 (not c!897620)) b!5206753))

(assert (= (and b!5206752 res!2211844) b!5206759))

(assert (= (and b!5206753 (not res!2211843)) b!5206755))

(assert (= (and b!5206755 res!2211840) b!5206756))

(assert (= (or b!5206759 b!5206756) bm!366277))

(assert (= (or b!5206752 b!5206755) bm!366279))

(assert (= (or b!5206758 bm!366277) bm!366278))

(declare-fun m!6257674 () Bool)

(assert (=> b!5206754 m!6257674))

(declare-fun m!6257676 () Bool)

(assert (=> bm!366278 m!6257676))

(declare-fun m!6257678 () Bool)

(assert (=> bm!366279 m!6257678))

(assert (=> bm!366142 d!1679182))

(declare-fun bs!1210110 () Bool)

(declare-fun d!1679184 () Bool)

(assert (= bs!1210110 (and d!1679184 d!1678848)))

(declare-fun lambda!261015 () Int)

(assert (=> bs!1210110 (= lambda!261015 lambda!260960)))

(declare-fun bs!1210111 () Bool)

(assert (= bs!1210111 (and d!1679184 d!1678776)))

(assert (=> bs!1210111 (= lambda!261015 lambda!260920)))

(declare-fun bs!1210112 () Bool)

(assert (= bs!1210112 (and d!1679184 d!1679158)))

(assert (=> bs!1210112 (= lambda!261015 lambda!261012)))

(declare-fun bs!1210113 () Bool)

(assert (= bs!1210113 (and d!1679184 d!1678784)))

(assert (=> bs!1210113 (= lambda!261015 lambda!260932)))

(declare-fun bs!1210114 () Bool)

(assert (= bs!1210114 (and d!1679184 d!1678796)))

(assert (=> bs!1210114 (= lambda!261015 lambda!260937)))

(declare-fun bs!1210115 () Bool)

(assert (= bs!1210115 (and d!1679184 d!1679180)))

(assert (=> bs!1210115 (= lambda!261015 lambda!261014)))

(declare-fun bs!1210116 () Bool)

(assert (= bs!1210116 (and d!1679184 d!1678876)))

(assert (=> bs!1210116 (= lambda!261015 lambda!260973)))

(assert (=> d!1679184 (= (inv!80229 (h!67003 (t!373836 zl!343))) (forall!14229 (exprs!4677 (h!67003 (t!373836 zl!343))) lambda!261015))))

(declare-fun bs!1210117 () Bool)

(assert (= bs!1210117 d!1679184))

(declare-fun m!6257680 () Bool)

(assert (=> bs!1210117 m!6257680))

(assert (=> b!5206050 d!1679184))

(declare-fun b!5206761 () Bool)

(declare-fun e!3241804 () List!60680)

(assert (=> b!5206761 (= e!3241804 (Cons!60556 (h!67004 (_1!35295 (get!20803 lt!2141614))) (++!13201 (t!373837 (_1!35295 (get!20803 lt!2141614))) (_2!35295 (get!20803 lt!2141614)))))))

(declare-fun b!5206762 () Bool)

(declare-fun res!2211845 () Bool)

(declare-fun e!3241803 () Bool)

(assert (=> b!5206762 (=> (not res!2211845) (not e!3241803))))

(declare-fun lt!2141662 () List!60680)

(assert (=> b!5206762 (= res!2211845 (= (size!39713 lt!2141662) (+ (size!39713 (_1!35295 (get!20803 lt!2141614))) (size!39713 (_2!35295 (get!20803 lt!2141614))))))))

(declare-fun b!5206760 () Bool)

(assert (=> b!5206760 (= e!3241804 (_2!35295 (get!20803 lt!2141614)))))

(declare-fun d!1679186 () Bool)

(assert (=> d!1679186 e!3241803))

(declare-fun res!2211846 () Bool)

(assert (=> d!1679186 (=> (not res!2211846) (not e!3241803))))

(assert (=> d!1679186 (= res!2211846 (= (content!10721 lt!2141662) ((_ map or) (content!10721 (_1!35295 (get!20803 lt!2141614))) (content!10721 (_2!35295 (get!20803 lt!2141614))))))))

(assert (=> d!1679186 (= lt!2141662 e!3241804)))

(declare-fun c!897622 () Bool)

(assert (=> d!1679186 (= c!897622 ((_ is Nil!60556) (_1!35295 (get!20803 lt!2141614))))))

(assert (=> d!1679186 (= (++!13201 (_1!35295 (get!20803 lt!2141614)) (_2!35295 (get!20803 lt!2141614))) lt!2141662)))

(declare-fun b!5206763 () Bool)

(assert (=> b!5206763 (= e!3241803 (or (not (= (_2!35295 (get!20803 lt!2141614)) Nil!60556)) (= lt!2141662 (_1!35295 (get!20803 lt!2141614)))))))

(assert (= (and d!1679186 c!897622) b!5206760))

(assert (= (and d!1679186 (not c!897622)) b!5206761))

(assert (= (and d!1679186 res!2211846) b!5206762))

(assert (= (and b!5206762 res!2211845) b!5206763))

(declare-fun m!6257682 () Bool)

(assert (=> b!5206761 m!6257682))

(declare-fun m!6257684 () Bool)

(assert (=> b!5206762 m!6257684))

(declare-fun m!6257686 () Bool)

(assert (=> b!5206762 m!6257686))

(declare-fun m!6257688 () Bool)

(assert (=> b!5206762 m!6257688))

(declare-fun m!6257690 () Bool)

(assert (=> d!1679186 m!6257690))

(declare-fun m!6257692 () Bool)

(assert (=> d!1679186 m!6257692))

(declare-fun m!6257694 () Bool)

(assert (=> d!1679186 m!6257694))

(assert (=> b!5205920 d!1679186))

(declare-fun d!1679188 () Bool)

(assert (=> d!1679188 (= (get!20803 lt!2141614) (v!50932 lt!2141614))))

(assert (=> b!5205920 d!1679188))

(declare-fun d!1679190 () Bool)

(assert (=> d!1679190 (= (nullable!4962 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343))))) (nullableFct!1373 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343))))))))

(declare-fun bs!1210118 () Bool)

(assert (= bs!1210118 d!1679190))

(declare-fun m!6257696 () Bool)

(assert (=> bs!1210118 m!6257696))

(assert (=> b!5206016 d!1679190))

(declare-fun bs!1210119 () Bool)

(declare-fun b!5206773 () Bool)

(assert (= bs!1210119 (and b!5206773 b!5205364)))

(declare-fun lambda!261016 () Int)

(assert (=> bs!1210119 (not (= lambda!261016 lambda!260916))))

(assert (=> bs!1210119 (not (= lambda!261016 lambda!260915))))

(declare-fun bs!1210120 () Bool)

(assert (= bs!1210120 (and b!5206773 d!1678870)))

(assert (=> bs!1210120 (not (= lambda!261016 lambda!260970))))

(declare-fun bs!1210121 () Bool)

(assert (= bs!1210121 (and b!5206773 b!5205613)))

(assert (=> bs!1210121 (= (and (= (reg!15122 (regOne!30099 r!7292)) (reg!15122 r!7292)) (= (regOne!30099 r!7292) r!7292)) (= lambda!261016 lambda!260946))))

(declare-fun bs!1210122 () Bool)

(assert (= bs!1210122 (and b!5206773 b!5205610)))

(assert (=> bs!1210122 (not (= lambda!261016 lambda!260949))))

(assert (=> bs!1210120 (not (= lambda!261016 lambda!260969))))

(declare-fun bs!1210123 () Bool)

(assert (= bs!1210123 (and b!5206773 d!1678868)))

(assert (=> bs!1210123 (not (= lambda!261016 lambda!260964))))

(declare-fun bs!1210124 () Bool)

(assert (= bs!1210124 (and b!5206773 d!1679064)))

(assert (=> bs!1210124 (not (= lambda!261016 lambda!261002))))

(assert (=> bs!1210124 (not (= lambda!261016 lambda!261004))))

(assert (=> b!5206773 true))

(assert (=> b!5206773 true))

(declare-fun bs!1210125 () Bool)

(declare-fun b!5206770 () Bool)

(assert (= bs!1210125 (and b!5206770 b!5206773)))

(declare-fun lambda!261017 () Int)

(assert (=> bs!1210125 (not (= lambda!261017 lambda!261016))))

(declare-fun bs!1210126 () Bool)

(assert (= bs!1210126 (and b!5206770 b!5205364)))

(assert (=> bs!1210126 (= (and (= (regOne!30098 (regOne!30099 r!7292)) (regOne!30098 r!7292)) (= (regTwo!30098 (regOne!30099 r!7292)) (regTwo!30098 r!7292))) (= lambda!261017 lambda!260916))))

(assert (=> bs!1210126 (not (= lambda!261017 lambda!260915))))

(declare-fun bs!1210127 () Bool)

(assert (= bs!1210127 (and b!5206770 d!1678870)))

(assert (=> bs!1210127 (= (and (= (regOne!30098 (regOne!30099 r!7292)) (regOne!30098 r!7292)) (= (regTwo!30098 (regOne!30099 r!7292)) (regTwo!30098 r!7292))) (= lambda!261017 lambda!260970))))

(declare-fun bs!1210128 () Bool)

(assert (= bs!1210128 (and b!5206770 b!5205613)))

(assert (=> bs!1210128 (not (= lambda!261017 lambda!260946))))

(declare-fun bs!1210129 () Bool)

(assert (= bs!1210129 (and b!5206770 b!5205610)))

(assert (=> bs!1210129 (= (and (= (regOne!30098 (regOne!30099 r!7292)) (regOne!30098 r!7292)) (= (regTwo!30098 (regOne!30099 r!7292)) (regTwo!30098 r!7292))) (= lambda!261017 lambda!260949))))

(assert (=> bs!1210127 (not (= lambda!261017 lambda!260969))))

(declare-fun bs!1210130 () Bool)

(assert (= bs!1210130 (and b!5206770 d!1678868)))

(assert (=> bs!1210130 (not (= lambda!261017 lambda!260964))))

(declare-fun bs!1210131 () Bool)

(assert (= bs!1210131 (and b!5206770 d!1679064)))

(assert (=> bs!1210131 (not (= lambda!261017 lambda!261002))))

(assert (=> bs!1210131 (= (and (= (regOne!30098 (regOne!30099 r!7292)) (regOne!30098 r!7292)) (= (regTwo!30098 (regOne!30099 r!7292)) (regTwo!30098 r!7292))) (= lambda!261017 lambda!261004))))

(assert (=> b!5206770 true))

(assert (=> b!5206770 true))

(declare-fun b!5206764 () Bool)

(declare-fun e!3241806 () Bool)

(assert (=> b!5206764 (= e!3241806 (= s!2326 (Cons!60556 (c!897284 (regOne!30099 r!7292)) Nil!60556)))))

(declare-fun b!5206765 () Bool)

(declare-fun e!3241808 () Bool)

(declare-fun e!3241807 () Bool)

(assert (=> b!5206765 (= e!3241808 e!3241807)))

(declare-fun res!2211847 () Bool)

(assert (=> b!5206765 (= res!2211847 (matchRSpec!1896 (regOne!30099 (regOne!30099 r!7292)) s!2326))))

(assert (=> b!5206765 (=> res!2211847 e!3241807)))

(declare-fun call!366286 () Bool)

(declare-fun c!897625 () Bool)

(declare-fun bm!366280 () Bool)

(assert (=> bm!366280 (= call!366286 (Exists!1974 (ite c!897625 lambda!261016 lambda!261017)))))

(declare-fun b!5206766 () Bool)

(declare-fun e!3241811 () Bool)

(declare-fun e!3241809 () Bool)

(assert (=> b!5206766 (= e!3241811 e!3241809)))

(declare-fun res!2211849 () Bool)

(assert (=> b!5206766 (= res!2211849 (not ((_ is EmptyLang!14793) (regOne!30099 r!7292))))))

(assert (=> b!5206766 (=> (not res!2211849) (not e!3241809))))

(declare-fun b!5206767 () Bool)

(declare-fun res!2211848 () Bool)

(declare-fun e!3241810 () Bool)

(assert (=> b!5206767 (=> res!2211848 e!3241810)))

(declare-fun call!366285 () Bool)

(assert (=> b!5206767 (= res!2211848 call!366285)))

(declare-fun e!3241805 () Bool)

(assert (=> b!5206767 (= e!3241805 e!3241810)))

(declare-fun b!5206768 () Bool)

(declare-fun c!897624 () Bool)

(assert (=> b!5206768 (= c!897624 ((_ is Union!14793) (regOne!30099 r!7292)))))

(assert (=> b!5206768 (= e!3241806 e!3241808)))

(assert (=> b!5206770 (= e!3241805 call!366286)))

(declare-fun b!5206771 () Bool)

(assert (=> b!5206771 (= e!3241807 (matchRSpec!1896 (regTwo!30099 (regOne!30099 r!7292)) s!2326))))

(declare-fun b!5206772 () Bool)

(assert (=> b!5206772 (= e!3241808 e!3241805)))

(assert (=> b!5206772 (= c!897625 ((_ is Star!14793) (regOne!30099 r!7292)))))

(assert (=> b!5206773 (= e!3241810 call!366286)))

(declare-fun bm!366281 () Bool)

(assert (=> bm!366281 (= call!366285 (isEmpty!32465 s!2326))))

(declare-fun b!5206774 () Bool)

(assert (=> b!5206774 (= e!3241811 call!366285)))

(declare-fun b!5206769 () Bool)

(declare-fun c!897623 () Bool)

(assert (=> b!5206769 (= c!897623 ((_ is ElementMatch!14793) (regOne!30099 r!7292)))))

(assert (=> b!5206769 (= e!3241809 e!3241806)))

(declare-fun d!1679192 () Bool)

(declare-fun c!897626 () Bool)

(assert (=> d!1679192 (= c!897626 ((_ is EmptyExpr!14793) (regOne!30099 r!7292)))))

(assert (=> d!1679192 (= (matchRSpec!1896 (regOne!30099 r!7292) s!2326) e!3241811)))

(assert (= (and d!1679192 c!897626) b!5206774))

(assert (= (and d!1679192 (not c!897626)) b!5206766))

(assert (= (and b!5206766 res!2211849) b!5206769))

(assert (= (and b!5206769 c!897623) b!5206764))

(assert (= (and b!5206769 (not c!897623)) b!5206768))

(assert (= (and b!5206768 c!897624) b!5206765))

(assert (= (and b!5206768 (not c!897624)) b!5206772))

(assert (= (and b!5206765 (not res!2211847)) b!5206771))

(assert (= (and b!5206772 c!897625) b!5206767))

(assert (= (and b!5206772 (not c!897625)) b!5206770))

(assert (= (and b!5206767 (not res!2211848)) b!5206773))

(assert (= (or b!5206773 b!5206770) bm!366280))

(assert (= (or b!5206774 b!5206767) bm!366281))

(declare-fun m!6257698 () Bool)

(assert (=> b!5206765 m!6257698))

(declare-fun m!6257700 () Bool)

(assert (=> bm!366280 m!6257700))

(declare-fun m!6257702 () Bool)

(assert (=> b!5206771 m!6257702))

(assert (=> bm!366281 m!6256786))

(assert (=> b!5205605 d!1679192))

(declare-fun d!1679194 () Bool)

(assert (=> d!1679194 (= (head!11162 s!2326) (h!67004 s!2326))))

(assert (=> b!5205718 d!1679194))

(assert (=> d!1678808 d!1679146))

(assert (=> d!1678808 d!1678854))

(assert (=> d!1678868 d!1678862))

(assert (=> d!1678868 d!1679070))

(assert (=> d!1678868 d!1678872))

(declare-fun d!1679196 () Bool)

(assert (=> d!1679196 (= (Exists!1974 lambda!260964) (choose!38698 lambda!260964))))

(declare-fun bs!1210132 () Bool)

(assert (= bs!1210132 d!1679196))

(declare-fun m!6257704 () Bool)

(assert (=> bs!1210132 m!6257704))

(assert (=> d!1678868 d!1679196))

(declare-fun bs!1210133 () Bool)

(declare-fun d!1679198 () Bool)

(assert (= bs!1210133 (and d!1679198 b!5206773)))

(declare-fun lambda!261020 () Int)

(assert (=> bs!1210133 (not (= lambda!261020 lambda!261016))))

(declare-fun bs!1210134 () Bool)

(assert (= bs!1210134 (and d!1679198 b!5205364)))

(assert (=> bs!1210134 (not (= lambda!261020 lambda!260916))))

(assert (=> bs!1210134 (= lambda!261020 lambda!260915)))

(declare-fun bs!1210135 () Bool)

(assert (= bs!1210135 (and d!1679198 d!1678870)))

(assert (=> bs!1210135 (not (= lambda!261020 lambda!260970))))

(declare-fun bs!1210136 () Bool)

(assert (= bs!1210136 (and d!1679198 b!5205613)))

(assert (=> bs!1210136 (not (= lambda!261020 lambda!260946))))

(declare-fun bs!1210137 () Bool)

(assert (= bs!1210137 (and d!1679198 b!5205610)))

(assert (=> bs!1210137 (not (= lambda!261020 lambda!260949))))

(assert (=> bs!1210135 (= lambda!261020 lambda!260969)))

(declare-fun bs!1210138 () Bool)

(assert (= bs!1210138 (and d!1679198 b!5206770)))

(assert (=> bs!1210138 (not (= lambda!261020 lambda!261017))))

(declare-fun bs!1210139 () Bool)

(assert (= bs!1210139 (and d!1679198 d!1678868)))

(assert (=> bs!1210139 (= lambda!261020 lambda!260964)))

(declare-fun bs!1210140 () Bool)

(assert (= bs!1210140 (and d!1679198 d!1679064)))

(assert (=> bs!1210140 (= lambda!261020 lambda!261002)))

(assert (=> bs!1210140 (not (= lambda!261020 lambda!261004))))

(assert (=> d!1679198 true))

(assert (=> d!1679198 true))

(assert (=> d!1679198 true))

(assert (=> d!1679198 (= (isDefined!11607 (findConcatSeparation!1318 (regOne!30098 r!7292) (regTwo!30098 r!7292) Nil!60556 s!2326 s!2326)) (Exists!1974 lambda!261020))))

(assert (=> d!1679198 true))

(declare-fun _$89!1358 () Unit!152438)

(assert (=> d!1679198 (= (choose!38699 (regOne!30098 r!7292) (regTwo!30098 r!7292) s!2326) _$89!1358)))

(declare-fun bs!1210141 () Bool)

(assert (= bs!1210141 d!1679198))

(assert (=> bs!1210141 m!6256636))

(assert (=> bs!1210141 m!6256636))

(assert (=> bs!1210141 m!6256638))

(declare-fun m!6257706 () Bool)

(assert (=> bs!1210141 m!6257706))

(assert (=> d!1678868 d!1679198))

(assert (=> b!5205964 d!1678798))

(declare-fun b!5206779 () Bool)

(declare-fun res!2211857 () Bool)

(declare-fun e!3241816 () Bool)

(assert (=> b!5206779 (=> (not res!2211857) (not e!3241816))))

(declare-fun call!366287 () Bool)

(assert (=> b!5206779 (= res!2211857 (not call!366287))))

(declare-fun b!5206780 () Bool)

(declare-fun res!2211861 () Bool)

(declare-fun e!3241818 () Bool)

(assert (=> b!5206780 (=> res!2211861 e!3241818)))

(assert (=> b!5206780 (= res!2211861 (not (isEmpty!32465 (tail!10259 (_2!35295 (get!20803 lt!2141614))))))))

(declare-fun b!5206782 () Bool)

(declare-fun res!2211860 () Bool)

(declare-fun e!3241814 () Bool)

(assert (=> b!5206782 (=> res!2211860 e!3241814)))

(assert (=> b!5206782 (= res!2211860 (not ((_ is ElementMatch!14793) (regTwo!30098 r!7292))))))

(declare-fun e!3241815 () Bool)

(assert (=> b!5206782 (= e!3241815 e!3241814)))

(declare-fun b!5206783 () Bool)

(declare-fun e!3241817 () Bool)

(declare-fun lt!2141663 () Bool)

(assert (=> b!5206783 (= e!3241817 (= lt!2141663 call!366287))))

(declare-fun b!5206784 () Bool)

(declare-fun res!2211859 () Bool)

(assert (=> b!5206784 (=> (not res!2211859) (not e!3241816))))

(assert (=> b!5206784 (= res!2211859 (isEmpty!32465 (tail!10259 (_2!35295 (get!20803 lt!2141614)))))))

(declare-fun b!5206785 () Bool)

(declare-fun res!2211858 () Bool)

(assert (=> b!5206785 (=> res!2211858 e!3241814)))

(assert (=> b!5206785 (= res!2211858 e!3241816)))

(declare-fun res!2211856 () Bool)

(assert (=> b!5206785 (=> (not res!2211856) (not e!3241816))))

(assert (=> b!5206785 (= res!2211856 lt!2141663)))

(declare-fun b!5206786 () Bool)

(assert (=> b!5206786 (= e!3241815 (not lt!2141663))))

(declare-fun bm!366282 () Bool)

(assert (=> bm!366282 (= call!366287 (isEmpty!32465 (_2!35295 (get!20803 lt!2141614))))))

(declare-fun b!5206787 () Bool)

(declare-fun e!3241819 () Bool)

(assert (=> b!5206787 (= e!3241819 (matchR!6978 (derivativeStep!4043 (regTwo!30098 r!7292) (head!11162 (_2!35295 (get!20803 lt!2141614)))) (tail!10259 (_2!35295 (get!20803 lt!2141614)))))))

(declare-fun b!5206788 () Bool)

(assert (=> b!5206788 (= e!3241817 e!3241815)))

(declare-fun c!897629 () Bool)

(assert (=> b!5206788 (= c!897629 ((_ is EmptyLang!14793) (regTwo!30098 r!7292)))))

(declare-fun d!1679200 () Bool)

(assert (=> d!1679200 e!3241817))

(declare-fun c!897627 () Bool)

(assert (=> d!1679200 (= c!897627 ((_ is EmptyExpr!14793) (regTwo!30098 r!7292)))))

(assert (=> d!1679200 (= lt!2141663 e!3241819)))

(declare-fun c!897628 () Bool)

(assert (=> d!1679200 (= c!897628 (isEmpty!32465 (_2!35295 (get!20803 lt!2141614))))))

(assert (=> d!1679200 (validRegex!6529 (regTwo!30098 r!7292))))

(assert (=> d!1679200 (= (matchR!6978 (regTwo!30098 r!7292) (_2!35295 (get!20803 lt!2141614))) lt!2141663)))

(declare-fun b!5206781 () Bool)

(assert (=> b!5206781 (= e!3241816 (= (head!11162 (_2!35295 (get!20803 lt!2141614))) (c!897284 (regTwo!30098 r!7292))))))

(declare-fun b!5206789 () Bool)

(declare-fun e!3241820 () Bool)

(assert (=> b!5206789 (= e!3241820 e!3241818)))

(declare-fun res!2211854 () Bool)

(assert (=> b!5206789 (=> res!2211854 e!3241818)))

(assert (=> b!5206789 (= res!2211854 call!366287)))

(declare-fun b!5206790 () Bool)

(assert (=> b!5206790 (= e!3241819 (nullable!4962 (regTwo!30098 r!7292)))))

(declare-fun b!5206791 () Bool)

(assert (=> b!5206791 (= e!3241818 (not (= (head!11162 (_2!35295 (get!20803 lt!2141614))) (c!897284 (regTwo!30098 r!7292)))))))

(declare-fun b!5206792 () Bool)

(assert (=> b!5206792 (= e!3241814 e!3241820)))

(declare-fun res!2211855 () Bool)

(assert (=> b!5206792 (=> (not res!2211855) (not e!3241820))))

(assert (=> b!5206792 (= res!2211855 (not lt!2141663))))

(assert (= (and d!1679200 c!897628) b!5206790))

(assert (= (and d!1679200 (not c!897628)) b!5206787))

(assert (= (and d!1679200 c!897627) b!5206783))

(assert (= (and d!1679200 (not c!897627)) b!5206788))

(assert (= (and b!5206788 c!897629) b!5206786))

(assert (= (and b!5206788 (not c!897629)) b!5206782))

(assert (= (and b!5206782 (not res!2211860)) b!5206785))

(assert (= (and b!5206785 res!2211856) b!5206779))

(assert (= (and b!5206779 res!2211857) b!5206784))

(assert (= (and b!5206784 res!2211859) b!5206781))

(assert (= (and b!5206785 (not res!2211858)) b!5206792))

(assert (= (and b!5206792 res!2211855) b!5206789))

(assert (= (and b!5206789 (not res!2211854)) b!5206780))

(assert (= (and b!5206780 (not res!2211861)) b!5206791))

(assert (= (or b!5206783 b!5206779 b!5206789) bm!366282))

(declare-fun m!6257708 () Bool)

(assert (=> b!5206787 m!6257708))

(assert (=> b!5206787 m!6257708))

(declare-fun m!6257710 () Bool)

(assert (=> b!5206787 m!6257710))

(declare-fun m!6257712 () Bool)

(assert (=> b!5206787 m!6257712))

(assert (=> b!5206787 m!6257710))

(assert (=> b!5206787 m!6257712))

(declare-fun m!6257714 () Bool)

(assert (=> b!5206787 m!6257714))

(assert (=> b!5206790 m!6257522))

(assert (=> b!5206780 m!6257712))

(assert (=> b!5206780 m!6257712))

(declare-fun m!6257716 () Bool)

(assert (=> b!5206780 m!6257716))

(assert (=> b!5206791 m!6257708))

(assert (=> b!5206784 m!6257712))

(assert (=> b!5206784 m!6257712))

(assert (=> b!5206784 m!6257716))

(declare-fun m!6257718 () Bool)

(assert (=> bm!366282 m!6257718))

(assert (=> b!5206781 m!6257708))

(assert (=> d!1679200 m!6257718))

(assert (=> d!1679200 m!6257524))

(assert (=> b!5205918 d!1679200))

(assert (=> b!5205918 d!1679188))

(assert (=> b!5206026 d!1678884))

(declare-fun d!1679202 () Bool)

(declare-fun c!897632 () Bool)

(assert (=> d!1679202 (= c!897632 ((_ is Nil!60555) lt!2141563))))

(declare-fun e!3241823 () (InoxSet Context!8354))

(assert (=> d!1679202 (= (content!10718 lt!2141563) e!3241823)))

(declare-fun b!5206797 () Bool)

(assert (=> b!5206797 (= e!3241823 ((as const (Array Context!8354 Bool)) false))))

(declare-fun b!5206798 () Bool)

(assert (=> b!5206798 (= e!3241823 ((_ map or) (store ((as const (Array Context!8354 Bool)) false) (h!67003 lt!2141563) true) (content!10718 (t!373836 lt!2141563))))))

(assert (= (and d!1679202 c!897632) b!5206797))

(assert (= (and d!1679202 (not c!897632)) b!5206798))

(declare-fun m!6257720 () Bool)

(assert (=> b!5206798 m!6257720))

(declare-fun m!6257722 () Bool)

(assert (=> b!5206798 m!6257722))

(assert (=> b!5205409 d!1679202))

(declare-fun d!1679204 () Bool)

(declare-fun c!897633 () Bool)

(declare-fun e!3241825 () Bool)

(assert (=> d!1679204 (= c!897633 e!3241825)))

(declare-fun res!2211862 () Bool)

(assert (=> d!1679204 (=> (not res!2211862) (not e!3241825))))

(assert (=> d!1679204 (= res!2211862 ((_ is Cons!60554) (exprs!4677 (Context!8355 (t!373835 (exprs!4677 lt!2141533))))))))

(declare-fun e!3241826 () (InoxSet Context!8354))

(assert (=> d!1679204 (= (derivationStepZipperUp!165 (Context!8355 (t!373835 (exprs!4677 lt!2141533))) (h!67004 s!2326)) e!3241826)))

(declare-fun b!5206799 () Bool)

(declare-fun e!3241824 () (InoxSet Context!8354))

(assert (=> b!5206799 (= e!3241824 ((as const (Array Context!8354 Bool)) false))))

(declare-fun b!5206800 () Bool)

(assert (=> b!5206800 (= e!3241825 (nullable!4962 (h!67002 (exprs!4677 (Context!8355 (t!373835 (exprs!4677 lt!2141533)))))))))

(declare-fun call!366288 () (InoxSet Context!8354))

(declare-fun b!5206801 () Bool)

(assert (=> b!5206801 (= e!3241826 ((_ map or) call!366288 (derivationStepZipperUp!165 (Context!8355 (t!373835 (exprs!4677 (Context!8355 (t!373835 (exprs!4677 lt!2141533)))))) (h!67004 s!2326))))))

(declare-fun bm!366283 () Bool)

(assert (=> bm!366283 (= call!366288 (derivationStepZipperDown!241 (h!67002 (exprs!4677 (Context!8355 (t!373835 (exprs!4677 lt!2141533))))) (Context!8355 (t!373835 (exprs!4677 (Context!8355 (t!373835 (exprs!4677 lt!2141533)))))) (h!67004 s!2326)))))

(declare-fun b!5206802 () Bool)

(assert (=> b!5206802 (= e!3241824 call!366288)))

(declare-fun b!5206803 () Bool)

(assert (=> b!5206803 (= e!3241826 e!3241824)))

(declare-fun c!897634 () Bool)

(assert (=> b!5206803 (= c!897634 ((_ is Cons!60554) (exprs!4677 (Context!8355 (t!373835 (exprs!4677 lt!2141533))))))))

(assert (= (and d!1679204 res!2211862) b!5206800))

(assert (= (and d!1679204 c!897633) b!5206801))

(assert (= (and d!1679204 (not c!897633)) b!5206803))

(assert (= (and b!5206803 c!897634) b!5206802))

(assert (= (and b!5206803 (not c!897634)) b!5206799))

(assert (= (or b!5206801 b!5206802) bm!366283))

(declare-fun m!6257724 () Bool)

(assert (=> b!5206800 m!6257724))

(declare-fun m!6257726 () Bool)

(assert (=> b!5206801 m!6257726))

(declare-fun m!6257728 () Bool)

(assert (=> bm!366283 m!6257728))

(assert (=> b!5205989 d!1679204))

(declare-fun b!5206805 () Bool)

(declare-fun c!897638 () Bool)

(assert (=> b!5206805 (= c!897638 ((_ is Star!14793) (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun e!3241831 () (InoxSet Context!8354))

(declare-fun e!3241828 () (InoxSet Context!8354))

(assert (=> b!5206805 (= e!3241831 e!3241828)))

(declare-fun bm!366284 () Bool)

(declare-fun call!366294 () List!60678)

(declare-fun call!366291 () List!60678)

(assert (=> bm!366284 (= call!366294 call!366291)))

(declare-fun c!897639 () Bool)

(declare-fun c!897636 () Bool)

(declare-fun bm!366285 () Bool)

(assert (=> bm!366285 (= call!366291 ($colon$colon!1271 (exprs!4677 (Context!8355 (t!373835 (exprs!4677 (h!67003 zl!343))))) (ite (or c!897639 c!897636) (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (h!67002 (exprs!4677 (h!67003 zl!343))))))))

(declare-fun b!5206806 () Bool)

(declare-fun e!3241829 () Bool)

(assert (=> b!5206806 (= e!3241829 (nullable!4962 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343))))))))

(declare-fun b!5206807 () Bool)

(assert (=> b!5206807 (= c!897639 e!3241829)))

(declare-fun res!2211863 () Bool)

(assert (=> b!5206807 (=> (not res!2211863) (not e!3241829))))

(assert (=> b!5206807 (= res!2211863 ((_ is Concat!23638) (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun e!3241830 () (InoxSet Context!8354))

(declare-fun e!3241827 () (InoxSet Context!8354))

(assert (=> b!5206807 (= e!3241830 e!3241827)))

(declare-fun b!5206808 () Bool)

(declare-fun e!3241832 () (InoxSet Context!8354))

(assert (=> b!5206808 (= e!3241832 (store ((as const (Array Context!8354 Bool)) false) (Context!8355 (t!373835 (exprs!4677 (h!67003 zl!343)))) true))))

(declare-fun b!5206809 () Bool)

(assert (=> b!5206809 (= e!3241828 ((as const (Array Context!8354 Bool)) false))))

(declare-fun b!5206810 () Bool)

(declare-fun call!366292 () (InoxSet Context!8354))

(assert (=> b!5206810 (= e!3241828 call!366292)))

(declare-fun c!897637 () Bool)

(declare-fun call!366293 () (InoxSet Context!8354))

(declare-fun bm!366286 () Bool)

(assert (=> bm!366286 (= call!366293 (derivationStepZipperDown!241 (ite c!897637 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897639 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897636 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343))))))) (ite (or c!897637 c!897639) (Context!8355 (t!373835 (exprs!4677 (h!67003 zl!343)))) (Context!8355 call!366294)) (h!67004 s!2326)))))

(declare-fun bm!366287 () Bool)

(declare-fun call!366290 () (InoxSet Context!8354))

(assert (=> bm!366287 (= call!366290 call!366293)))

(declare-fun b!5206811 () Bool)

(assert (=> b!5206811 (= e!3241832 e!3241830)))

(assert (=> b!5206811 (= c!897637 ((_ is Union!14793) (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun d!1679206 () Bool)

(declare-fun c!897635 () Bool)

(assert (=> d!1679206 (= c!897635 (and ((_ is ElementMatch!14793) (h!67002 (exprs!4677 (h!67003 zl!343)))) (= (c!897284 (h!67002 (exprs!4677 (h!67003 zl!343)))) (h!67004 s!2326))))))

(assert (=> d!1679206 (= (derivationStepZipperDown!241 (h!67002 (exprs!4677 (h!67003 zl!343))) (Context!8355 (t!373835 (exprs!4677 (h!67003 zl!343)))) (h!67004 s!2326)) e!3241832)))

(declare-fun b!5206804 () Bool)

(declare-fun call!366289 () (InoxSet Context!8354))

(assert (=> b!5206804 (= e!3241827 ((_ map or) call!366289 call!366290))))

(declare-fun b!5206812 () Bool)

(assert (=> b!5206812 (= e!3241831 call!366292)))

(declare-fun bm!366288 () Bool)

(assert (=> bm!366288 (= call!366289 (derivationStepZipperDown!241 (ite c!897637 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343))))) (ite c!897637 (Context!8355 (t!373835 (exprs!4677 (h!67003 zl!343)))) (Context!8355 call!366291)) (h!67004 s!2326)))))

(declare-fun bm!366289 () Bool)

(assert (=> bm!366289 (= call!366292 call!366290)))

(declare-fun b!5206813 () Bool)

(assert (=> b!5206813 (= e!3241830 ((_ map or) call!366293 call!366289))))

(declare-fun b!5206814 () Bool)

(assert (=> b!5206814 (= e!3241827 e!3241831)))

(assert (=> b!5206814 (= c!897636 ((_ is Concat!23638) (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(assert (= (and d!1679206 c!897635) b!5206808))

(assert (= (and d!1679206 (not c!897635)) b!5206811))

(assert (= (and b!5206811 c!897637) b!5206813))

(assert (= (and b!5206811 (not c!897637)) b!5206807))

(assert (= (and b!5206807 res!2211863) b!5206806))

(assert (= (and b!5206807 c!897639) b!5206804))

(assert (= (and b!5206807 (not c!897639)) b!5206814))

(assert (= (and b!5206814 c!897636) b!5206812))

(assert (= (and b!5206814 (not c!897636)) b!5206805))

(assert (= (and b!5206805 c!897638) b!5206810))

(assert (= (and b!5206805 (not c!897638)) b!5206809))

(assert (= (or b!5206812 b!5206810) bm!366284))

(assert (= (or b!5206812 b!5206810) bm!366289))

(assert (= (or b!5206804 bm!366284) bm!366285))

(assert (= (or b!5206804 bm!366289) bm!366287))

(assert (= (or b!5206813 b!5206804) bm!366288))

(assert (= (or b!5206813 bm!366287) bm!366286))

(declare-fun m!6257730 () Bool)

(assert (=> bm!366286 m!6257730))

(declare-fun m!6257732 () Bool)

(assert (=> b!5206808 m!6257732))

(declare-fun m!6257734 () Bool)

(assert (=> bm!366288 m!6257734))

(declare-fun m!6257736 () Bool)

(assert (=> bm!366285 m!6257736))

(assert (=> b!5206806 m!6257044))

(assert (=> bm!366168 d!1679206))

(declare-fun b!5206815 () Bool)

(declare-fun res!2211867 () Bool)

(declare-fun e!3241835 () Bool)

(assert (=> b!5206815 (=> (not res!2211867) (not e!3241835))))

(declare-fun call!366295 () Bool)

(assert (=> b!5206815 (= res!2211867 (not call!366295))))

(declare-fun b!5206816 () Bool)

(declare-fun res!2211871 () Bool)

(declare-fun e!3241837 () Bool)

(assert (=> b!5206816 (=> res!2211871 e!3241837)))

(assert (=> b!5206816 (= res!2211871 (not (isEmpty!32465 (tail!10259 (_1!35295 (get!20803 lt!2141614))))))))

(declare-fun b!5206818 () Bool)

(declare-fun res!2211870 () Bool)

(declare-fun e!3241833 () Bool)

(assert (=> b!5206818 (=> res!2211870 e!3241833)))

(assert (=> b!5206818 (= res!2211870 (not ((_ is ElementMatch!14793) (regOne!30098 r!7292))))))

(declare-fun e!3241834 () Bool)

(assert (=> b!5206818 (= e!3241834 e!3241833)))

(declare-fun b!5206819 () Bool)

(declare-fun e!3241836 () Bool)

(declare-fun lt!2141664 () Bool)

(assert (=> b!5206819 (= e!3241836 (= lt!2141664 call!366295))))

(declare-fun b!5206820 () Bool)

(declare-fun res!2211869 () Bool)

(assert (=> b!5206820 (=> (not res!2211869) (not e!3241835))))

(assert (=> b!5206820 (= res!2211869 (isEmpty!32465 (tail!10259 (_1!35295 (get!20803 lt!2141614)))))))

(declare-fun b!5206821 () Bool)

(declare-fun res!2211868 () Bool)

(assert (=> b!5206821 (=> res!2211868 e!3241833)))

(assert (=> b!5206821 (= res!2211868 e!3241835)))

(declare-fun res!2211866 () Bool)

(assert (=> b!5206821 (=> (not res!2211866) (not e!3241835))))

(assert (=> b!5206821 (= res!2211866 lt!2141664)))

(declare-fun b!5206822 () Bool)

(assert (=> b!5206822 (= e!3241834 (not lt!2141664))))

(declare-fun bm!366290 () Bool)

(assert (=> bm!366290 (= call!366295 (isEmpty!32465 (_1!35295 (get!20803 lt!2141614))))))

(declare-fun b!5206823 () Bool)

(declare-fun e!3241838 () Bool)

(assert (=> b!5206823 (= e!3241838 (matchR!6978 (derivativeStep!4043 (regOne!30098 r!7292) (head!11162 (_1!35295 (get!20803 lt!2141614)))) (tail!10259 (_1!35295 (get!20803 lt!2141614)))))))

(declare-fun b!5206824 () Bool)

(assert (=> b!5206824 (= e!3241836 e!3241834)))

(declare-fun c!897642 () Bool)

(assert (=> b!5206824 (= c!897642 ((_ is EmptyLang!14793) (regOne!30098 r!7292)))))

(declare-fun d!1679208 () Bool)

(assert (=> d!1679208 e!3241836))

(declare-fun c!897640 () Bool)

(assert (=> d!1679208 (= c!897640 ((_ is EmptyExpr!14793) (regOne!30098 r!7292)))))

(assert (=> d!1679208 (= lt!2141664 e!3241838)))

(declare-fun c!897641 () Bool)

(assert (=> d!1679208 (= c!897641 (isEmpty!32465 (_1!35295 (get!20803 lt!2141614))))))

(assert (=> d!1679208 (validRegex!6529 (regOne!30098 r!7292))))

(assert (=> d!1679208 (= (matchR!6978 (regOne!30098 r!7292) (_1!35295 (get!20803 lt!2141614))) lt!2141664)))

(declare-fun b!5206817 () Bool)

(assert (=> b!5206817 (= e!3241835 (= (head!11162 (_1!35295 (get!20803 lt!2141614))) (c!897284 (regOne!30098 r!7292))))))

(declare-fun b!5206825 () Bool)

(declare-fun e!3241839 () Bool)

(assert (=> b!5206825 (= e!3241839 e!3241837)))

(declare-fun res!2211864 () Bool)

(assert (=> b!5206825 (=> res!2211864 e!3241837)))

(assert (=> b!5206825 (= res!2211864 call!366295)))

(declare-fun b!5206826 () Bool)

(assert (=> b!5206826 (= e!3241838 (nullable!4962 (regOne!30098 r!7292)))))

(declare-fun b!5206827 () Bool)

(assert (=> b!5206827 (= e!3241837 (not (= (head!11162 (_1!35295 (get!20803 lt!2141614))) (c!897284 (regOne!30098 r!7292)))))))

(declare-fun b!5206828 () Bool)

(assert (=> b!5206828 (= e!3241833 e!3241839)))

(declare-fun res!2211865 () Bool)

(assert (=> b!5206828 (=> (not res!2211865) (not e!3241839))))

(assert (=> b!5206828 (= res!2211865 (not lt!2141664))))

(assert (= (and d!1679208 c!897641) b!5206826))

(assert (= (and d!1679208 (not c!897641)) b!5206823))

(assert (= (and d!1679208 c!897640) b!5206819))

(assert (= (and d!1679208 (not c!897640)) b!5206824))

(assert (= (and b!5206824 c!897642) b!5206822))

(assert (= (and b!5206824 (not c!897642)) b!5206818))

(assert (= (and b!5206818 (not res!2211870)) b!5206821))

(assert (= (and b!5206821 res!2211866) b!5206815))

(assert (= (and b!5206815 res!2211867) b!5206820))

(assert (= (and b!5206820 res!2211869) b!5206817))

(assert (= (and b!5206821 (not res!2211868)) b!5206828))

(assert (= (and b!5206828 res!2211865) b!5206825))

(assert (= (and b!5206825 (not res!2211864)) b!5206816))

(assert (= (and b!5206816 (not res!2211871)) b!5206827))

(assert (= (or b!5206819 b!5206815 b!5206825) bm!366290))

(declare-fun m!6257738 () Bool)

(assert (=> b!5206823 m!6257738))

(assert (=> b!5206823 m!6257738))

(declare-fun m!6257740 () Bool)

(assert (=> b!5206823 m!6257740))

(declare-fun m!6257742 () Bool)

(assert (=> b!5206823 m!6257742))

(assert (=> b!5206823 m!6257740))

(assert (=> b!5206823 m!6257742))

(declare-fun m!6257744 () Bool)

(assert (=> b!5206823 m!6257744))

(declare-fun m!6257746 () Bool)

(assert (=> b!5206826 m!6257746))

(assert (=> b!5206816 m!6257742))

(assert (=> b!5206816 m!6257742))

(declare-fun m!6257748 () Bool)

(assert (=> b!5206816 m!6257748))

(assert (=> b!5206827 m!6257738))

(assert (=> b!5206820 m!6257742))

(assert (=> b!5206820 m!6257742))

(assert (=> b!5206820 m!6257748))

(declare-fun m!6257750 () Bool)

(assert (=> bm!366290 m!6257750))

(assert (=> b!5206817 m!6257738))

(assert (=> d!1679208 m!6257750))

(assert (=> d!1679208 m!6256970))

(assert (=> b!5205912 d!1679208))

(assert (=> b!5205912 d!1679188))

(declare-fun d!1679210 () Bool)

(declare-fun res!2211874 () Bool)

(declare-fun e!3241846 () Bool)

(assert (=> d!1679210 (=> res!2211874 e!3241846)))

(assert (=> d!1679210 (= res!2211874 ((_ is ElementMatch!14793) lt!2141624))))

(assert (=> d!1679210 (= (validRegex!6529 lt!2141624) e!3241846)))

(declare-fun b!5206829 () Bool)

(declare-fun e!3241842 () Bool)

(declare-fun e!3241841 () Bool)

(assert (=> b!5206829 (= e!3241842 e!3241841)))

(declare-fun c!897643 () Bool)

(assert (=> b!5206829 (= c!897643 ((_ is Union!14793) lt!2141624))))

(declare-fun b!5206830 () Bool)

(declare-fun res!2211876 () Bool)

(declare-fun e!3241843 () Bool)

(assert (=> b!5206830 (=> (not res!2211876) (not e!3241843))))

(declare-fun call!366298 () Bool)

(assert (=> b!5206830 (= res!2211876 call!366298)))

(assert (=> b!5206830 (= e!3241841 e!3241843)))

(declare-fun b!5206831 () Bool)

(declare-fun res!2211875 () Bool)

(declare-fun e!3241845 () Bool)

(assert (=> b!5206831 (=> res!2211875 e!3241845)))

(assert (=> b!5206831 (= res!2211875 (not ((_ is Concat!23638) lt!2141624)))))

(assert (=> b!5206831 (= e!3241841 e!3241845)))

(declare-fun b!5206832 () Bool)

(declare-fun e!3241844 () Bool)

(assert (=> b!5206832 (= e!3241842 e!3241844)))

(declare-fun res!2211873 () Bool)

(assert (=> b!5206832 (= res!2211873 (not (nullable!4962 (reg!15122 lt!2141624))))))

(assert (=> b!5206832 (=> (not res!2211873) (not e!3241844))))

(declare-fun b!5206833 () Bool)

(declare-fun e!3241840 () Bool)

(assert (=> b!5206833 (= e!3241845 e!3241840)))

(declare-fun res!2211872 () Bool)

(assert (=> b!5206833 (=> (not res!2211872) (not e!3241840))))

(assert (=> b!5206833 (= res!2211872 call!366298)))

(declare-fun b!5206834 () Bool)

(declare-fun call!366297 () Bool)

(assert (=> b!5206834 (= e!3241840 call!366297)))

(declare-fun bm!366291 () Bool)

(declare-fun call!366296 () Bool)

(assert (=> bm!366291 (= call!366297 call!366296)))

(declare-fun b!5206835 () Bool)

(assert (=> b!5206835 (= e!3241846 e!3241842)))

(declare-fun c!897644 () Bool)

(assert (=> b!5206835 (= c!897644 ((_ is Star!14793) lt!2141624))))

(declare-fun bm!366292 () Bool)

(assert (=> bm!366292 (= call!366296 (validRegex!6529 (ite c!897644 (reg!15122 lt!2141624) (ite c!897643 (regTwo!30099 lt!2141624) (regTwo!30098 lt!2141624)))))))

(declare-fun bm!366293 () Bool)

(assert (=> bm!366293 (= call!366298 (validRegex!6529 (ite c!897643 (regOne!30099 lt!2141624) (regOne!30098 lt!2141624))))))

(declare-fun b!5206836 () Bool)

(assert (=> b!5206836 (= e!3241844 call!366296)))

(declare-fun b!5206837 () Bool)

(assert (=> b!5206837 (= e!3241843 call!366297)))

(assert (= (and d!1679210 (not res!2211874)) b!5206835))

(assert (= (and b!5206835 c!897644) b!5206832))

(assert (= (and b!5206835 (not c!897644)) b!5206829))

(assert (= (and b!5206832 res!2211873) b!5206836))

(assert (= (and b!5206829 c!897643) b!5206830))

(assert (= (and b!5206829 (not c!897643)) b!5206831))

(assert (= (and b!5206830 res!2211876) b!5206837))

(assert (= (and b!5206831 (not res!2211875)) b!5206833))

(assert (= (and b!5206833 res!2211872) b!5206834))

(assert (= (or b!5206837 b!5206834) bm!366291))

(assert (= (or b!5206830 b!5206833) bm!366293))

(assert (= (or b!5206836 bm!366291) bm!366292))

(declare-fun m!6257752 () Bool)

(assert (=> b!5206832 m!6257752))

(declare-fun m!6257754 () Bool)

(assert (=> bm!366292 m!6257754))

(declare-fun m!6257756 () Bool)

(assert (=> bm!366293 m!6257756))

(assert (=> d!1678876 d!1679210))

(declare-fun d!1679212 () Bool)

(declare-fun res!2211877 () Bool)

(declare-fun e!3241847 () Bool)

(assert (=> d!1679212 (=> res!2211877 e!3241847)))

(assert (=> d!1679212 (= res!2211877 ((_ is Nil!60554) (exprs!4677 (h!67003 zl!343))))))

(assert (=> d!1679212 (= (forall!14229 (exprs!4677 (h!67003 zl!343)) lambda!260973) e!3241847)))

(declare-fun b!5206838 () Bool)

(declare-fun e!3241848 () Bool)

(assert (=> b!5206838 (= e!3241847 e!3241848)))

(declare-fun res!2211878 () Bool)

(assert (=> b!5206838 (=> (not res!2211878) (not e!3241848))))

(assert (=> b!5206838 (= res!2211878 (dynLambda!23921 lambda!260973 (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun b!5206839 () Bool)

(assert (=> b!5206839 (= e!3241848 (forall!14229 (t!373835 (exprs!4677 (h!67003 zl!343))) lambda!260973))))

(assert (= (and d!1679212 (not res!2211877)) b!5206838))

(assert (= (and b!5206838 res!2211878) b!5206839))

(declare-fun b_lambda!201449 () Bool)

(assert (=> (not b_lambda!201449) (not b!5206838)))

(declare-fun m!6257758 () Bool)

(assert (=> b!5206838 m!6257758))

(declare-fun m!6257760 () Bool)

(assert (=> b!5206839 m!6257760))

(assert (=> d!1678876 d!1679212))

(assert (=> d!1678824 d!1678808))

(assert (=> d!1678824 d!1678800))

(declare-fun d!1679214 () Bool)

(assert (=> d!1679214 (= (matchR!6978 r!7292 s!2326) (matchRSpec!1896 r!7292 s!2326))))

(assert (=> d!1679214 true))

(declare-fun _$88!3450 () Unit!152438)

(assert (=> d!1679214 (= (choose!38695 r!7292 s!2326) _$88!3450)))

(declare-fun bs!1210142 () Bool)

(assert (= bs!1210142 d!1679214))

(assert (=> bs!1210142 m!6256656))

(assert (=> bs!1210142 m!6256654))

(assert (=> d!1678824 d!1679214))

(assert (=> d!1678824 d!1678854))

(declare-fun d!1679216 () Bool)

(assert (=> d!1679216 (= (nullable!4962 (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))) (nullableFct!1373 (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))))))

(declare-fun bs!1210143 () Bool)

(assert (= bs!1210143 d!1679216))

(declare-fun m!6257762 () Bool)

(assert (=> bs!1210143 m!6257762))

(assert (=> b!5205983 d!1679216))

(declare-fun d!1679218 () Bool)

(assert (=> d!1679218 (= (isEmpty!32461 (t!373835 (unfocusZipperList!235 zl!343))) ((_ is Nil!60554) (t!373835 (unfocusZipperList!235 zl!343))))))

(assert (=> b!5205470 d!1679218))

(declare-fun d!1679220 () Bool)

(declare-fun lambda!261023 () Int)

(declare-fun exists!1958 ((InoxSet Context!8354) Int) Bool)

(assert (=> d!1679220 (= (nullableZipper!1221 lt!2141541) (exists!1958 lt!2141541 lambda!261023))))

(declare-fun bs!1210144 () Bool)

(assert (= bs!1210144 d!1679220))

(declare-fun m!6257764 () Bool)

(assert (=> bs!1210144 m!6257764))

(assert (=> b!5205892 d!1679220))

(declare-fun d!1679222 () Bool)

(declare-fun res!2211879 () Bool)

(declare-fun e!3241849 () Bool)

(assert (=> d!1679222 (=> res!2211879 e!3241849)))

(assert (=> d!1679222 (= res!2211879 ((_ is Nil!60554) (exprs!4677 (h!67003 zl!343))))))

(assert (=> d!1679222 (= (forall!14229 (exprs!4677 (h!67003 zl!343)) lambda!260920) e!3241849)))

(declare-fun b!5206840 () Bool)

(declare-fun e!3241850 () Bool)

(assert (=> b!5206840 (= e!3241849 e!3241850)))

(declare-fun res!2211880 () Bool)

(assert (=> b!5206840 (=> (not res!2211880) (not e!3241850))))

(assert (=> b!5206840 (= res!2211880 (dynLambda!23921 lambda!260920 (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun b!5206841 () Bool)

(assert (=> b!5206841 (= e!3241850 (forall!14229 (t!373835 (exprs!4677 (h!67003 zl!343))) lambda!260920))))

(assert (= (and d!1679222 (not res!2211879)) b!5206840))

(assert (= (and b!5206840 res!2211880) b!5206841))

(declare-fun b_lambda!201451 () Bool)

(assert (=> (not b_lambda!201451) (not b!5206840)))

(declare-fun m!6257766 () Bool)

(assert (=> b!5206840 m!6257766))

(declare-fun m!6257768 () Bool)

(assert (=> b!5206841 m!6257768))

(assert (=> d!1678776 d!1679222))

(declare-fun d!1679224 () Bool)

(assert (=> d!1679224 (= (nullable!4962 (reg!15122 r!7292)) (nullableFct!1373 (reg!15122 r!7292)))))

(declare-fun bs!1210145 () Bool)

(assert (= bs!1210145 d!1679224))

(declare-fun m!6257770 () Bool)

(assert (=> bs!1210145 m!6257770))

(assert (=> b!5205886 d!1679224))

(declare-fun d!1679226 () Bool)

(assert (=> d!1679226 (= (isEmptyExpr!757 lt!2141624) ((_ is EmptyExpr!14793) lt!2141624))))

(assert (=> b!5205962 d!1679226))

(declare-fun d!1679228 () Bool)

(assert (=> d!1679228 (= (isEmpty!32461 (unfocusZipperList!235 zl!343)) ((_ is Nil!60554) (unfocusZipperList!235 zl!343)))))

(assert (=> b!5205466 d!1679228))

(declare-fun bs!1210146 () Bool)

(declare-fun d!1679230 () Bool)

(assert (= bs!1210146 (and d!1679230 d!1679220)))

(declare-fun lambda!261024 () Int)

(assert (=> bs!1210146 (= lambda!261024 lambda!261023)))

(assert (=> d!1679230 (= (nullableZipper!1221 ((_ map or) lt!2141536 lt!2141541)) (exists!1958 ((_ map or) lt!2141536 lt!2141541) lambda!261024))))

(declare-fun bs!1210147 () Bool)

(assert (= bs!1210147 d!1679230))

(declare-fun m!6257772 () Bool)

(assert (=> bs!1210147 m!6257772))

(assert (=> b!5205797 d!1679230))

(declare-fun b!5206843 () Bool)

(declare-fun c!897650 () Bool)

(assert (=> b!5206843 (= c!897650 ((_ is Star!14793) (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))))))

(declare-fun e!3241855 () (InoxSet Context!8354))

(declare-fun e!3241852 () (InoxSet Context!8354))

(assert (=> b!5206843 (= e!3241855 e!3241852)))

(declare-fun bm!366294 () Bool)

(declare-fun call!366304 () List!60678)

(declare-fun call!366301 () List!60678)

(assert (=> bm!366294 (= call!366304 call!366301)))

(declare-fun bm!366295 () Bool)

(declare-fun c!897648 () Bool)

(declare-fun c!897651 () Bool)

(assert (=> bm!366295 (= call!366301 ($colon$colon!1271 (exprs!4677 (Context!8355 (t!373835 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343))))))))) (ite (or c!897651 c!897648) (regTwo!30098 (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))) (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343))))))))))))

(declare-fun b!5206844 () Bool)

(declare-fun e!3241853 () Bool)

(assert (=> b!5206844 (= e!3241853 (nullable!4962 (regOne!30098 (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343))))))))))))

(declare-fun b!5206845 () Bool)

(assert (=> b!5206845 (= c!897651 e!3241853)))

(declare-fun res!2211881 () Bool)

(assert (=> b!5206845 (=> (not res!2211881) (not e!3241853))))

(assert (=> b!5206845 (= res!2211881 ((_ is Concat!23638) (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))))))

(declare-fun e!3241854 () (InoxSet Context!8354))

(declare-fun e!3241851 () (InoxSet Context!8354))

(assert (=> b!5206845 (= e!3241854 e!3241851)))

(declare-fun b!5206846 () Bool)

(declare-fun e!3241856 () (InoxSet Context!8354))

(assert (=> b!5206846 (= e!3241856 (store ((as const (Array Context!8354 Bool)) false) (Context!8355 (t!373835 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))) true))))

(declare-fun b!5206847 () Bool)

(assert (=> b!5206847 (= e!3241852 ((as const (Array Context!8354 Bool)) false))))

(declare-fun b!5206848 () Bool)

(declare-fun call!366302 () (InoxSet Context!8354))

(assert (=> b!5206848 (= e!3241852 call!366302)))

(declare-fun c!897649 () Bool)

(declare-fun bm!366296 () Bool)

(declare-fun call!366303 () (InoxSet Context!8354))

(assert (=> bm!366296 (= call!366303 (derivationStepZipperDown!241 (ite c!897649 (regOne!30099 (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))) (ite c!897651 (regTwo!30098 (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))) (ite c!897648 (regOne!30098 (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))) (reg!15122 (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343))))))))))) (ite (or c!897649 c!897651) (Context!8355 (t!373835 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))) (Context!8355 call!366304)) (h!67004 s!2326)))))

(declare-fun bm!366297 () Bool)

(declare-fun call!366300 () (InoxSet Context!8354))

(assert (=> bm!366297 (= call!366300 call!366303)))

(declare-fun b!5206849 () Bool)

(assert (=> b!5206849 (= e!3241856 e!3241854)))

(assert (=> b!5206849 (= c!897649 ((_ is Union!14793) (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))))))

(declare-fun d!1679232 () Bool)

(declare-fun c!897647 () Bool)

(assert (=> d!1679232 (= c!897647 (and ((_ is ElementMatch!14793) (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))) (= (c!897284 (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))) (h!67004 s!2326))))))

(assert (=> d!1679232 (= (derivationStepZipperDown!241 (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343))))))) (Context!8355 (t!373835 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))) (h!67004 s!2326)) e!3241856)))

(declare-fun b!5206842 () Bool)

(declare-fun call!366299 () (InoxSet Context!8354))

(assert (=> b!5206842 (= e!3241851 ((_ map or) call!366299 call!366300))))

(declare-fun b!5206850 () Bool)

(assert (=> b!5206850 (= e!3241855 call!366302)))

(declare-fun bm!366298 () Bool)

(assert (=> bm!366298 (= call!366299 (derivationStepZipperDown!241 (ite c!897649 (regTwo!30099 (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))) (regOne!30098 (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343))))))))) (ite c!897649 (Context!8355 (t!373835 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))) (Context!8355 call!366301)) (h!67004 s!2326)))))

(declare-fun bm!366299 () Bool)

(assert (=> bm!366299 (= call!366302 call!366300)))

(declare-fun b!5206851 () Bool)

(assert (=> b!5206851 (= e!3241854 ((_ map or) call!366303 call!366299))))

(declare-fun b!5206852 () Bool)

(assert (=> b!5206852 (= e!3241851 e!3241855)))

(assert (=> b!5206852 (= c!897648 ((_ is Concat!23638) (h!67002 (exprs!4677 (Context!8355 (Cons!60554 (h!67002 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343)))))))))))

(assert (= (and d!1679232 c!897647) b!5206846))

(assert (= (and d!1679232 (not c!897647)) b!5206849))

(assert (= (and b!5206849 c!897649) b!5206851))

(assert (= (and b!5206849 (not c!897649)) b!5206845))

(assert (= (and b!5206845 res!2211881) b!5206844))

(assert (= (and b!5206845 c!897651) b!5206842))

(assert (= (and b!5206845 (not c!897651)) b!5206852))

(assert (= (and b!5206852 c!897648) b!5206850))

(assert (= (and b!5206852 (not c!897648)) b!5206843))

(assert (= (and b!5206843 c!897650) b!5206848))

(assert (= (and b!5206843 (not c!897650)) b!5206847))

(assert (= (or b!5206850 b!5206848) bm!366294))

(assert (= (or b!5206850 b!5206848) bm!366299))

(assert (= (or b!5206842 bm!366294) bm!366295))

(assert (= (or b!5206842 bm!366299) bm!366297))

(assert (= (or b!5206851 b!5206842) bm!366298))

(assert (= (or b!5206851 bm!366297) bm!366296))

(declare-fun m!6257774 () Bool)

(assert (=> bm!366296 m!6257774))

(declare-fun m!6257776 () Bool)

(assert (=> b!5206846 m!6257776))

(declare-fun m!6257778 () Bool)

(assert (=> bm!366298 m!6257778))

(declare-fun m!6257780 () Bool)

(assert (=> bm!366295 m!6257780))

(declare-fun m!6257782 () Bool)

(assert (=> b!5206844 m!6257782))

(assert (=> bm!366148 d!1679232))

(assert (=> b!5205728 d!1679194))

(declare-fun d!1679234 () Bool)

(declare-fun res!2211882 () Bool)

(declare-fun e!3241857 () Bool)

(assert (=> d!1679234 (=> res!2211882 e!3241857)))

(assert (=> d!1679234 (= res!2211882 ((_ is Nil!60554) (exprs!4677 setElem!33044)))))

(assert (=> d!1679234 (= (forall!14229 (exprs!4677 setElem!33044) lambda!260960) e!3241857)))

(declare-fun b!5206853 () Bool)

(declare-fun e!3241858 () Bool)

(assert (=> b!5206853 (= e!3241857 e!3241858)))

(declare-fun res!2211883 () Bool)

(assert (=> b!5206853 (=> (not res!2211883) (not e!3241858))))

(assert (=> b!5206853 (= res!2211883 (dynLambda!23921 lambda!260960 (h!67002 (exprs!4677 setElem!33044))))))

(declare-fun b!5206854 () Bool)

(assert (=> b!5206854 (= e!3241858 (forall!14229 (t!373835 (exprs!4677 setElem!33044)) lambda!260960))))

(assert (= (and d!1679234 (not res!2211882)) b!5206853))

(assert (= (and b!5206853 res!2211883) b!5206854))

(declare-fun b_lambda!201453 () Bool)

(assert (=> (not b_lambda!201453) (not b!5206853)))

(declare-fun m!6257784 () Bool)

(assert (=> b!5206853 m!6257784))

(declare-fun m!6257786 () Bool)

(assert (=> b!5206854 m!6257786))

(assert (=> d!1678848 d!1679234))

(declare-fun b!5206856 () Bool)

(declare-fun c!897655 () Bool)

(assert (=> b!5206856 (= c!897655 ((_ is Star!14793) (ite c!897464 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))))))))

(declare-fun e!3241863 () (InoxSet Context!8354))

(declare-fun e!3241860 () (InoxSet Context!8354))

(assert (=> b!5206856 (= e!3241863 e!3241860)))

(declare-fun bm!366300 () Bool)

(declare-fun call!366310 () List!60678)

(declare-fun call!366307 () List!60678)

(assert (=> bm!366300 (= call!366310 call!366307)))

(declare-fun c!897656 () Bool)

(declare-fun c!897653 () Bool)

(declare-fun bm!366301 () Bool)

(assert (=> bm!366301 (= call!366307 ($colon$colon!1271 (exprs!4677 (ite c!897464 lt!2141533 (Context!8355 call!366169))) (ite (or c!897656 c!897653) (regTwo!30098 (ite c!897464 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))))) (ite c!897464 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343))))))))))

(declare-fun b!5206857 () Bool)

(declare-fun e!3241861 () Bool)

(assert (=> b!5206857 (= e!3241861 (nullable!4962 (regOne!30098 (ite c!897464 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343))))))))))

(declare-fun b!5206858 () Bool)

(assert (=> b!5206858 (= c!897656 e!3241861)))

(declare-fun res!2211884 () Bool)

(assert (=> b!5206858 (=> (not res!2211884) (not e!3241861))))

(assert (=> b!5206858 (= res!2211884 ((_ is Concat!23638) (ite c!897464 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))))))))

(declare-fun e!3241862 () (InoxSet Context!8354))

(declare-fun e!3241859 () (InoxSet Context!8354))

(assert (=> b!5206858 (= e!3241862 e!3241859)))

(declare-fun b!5206859 () Bool)

(declare-fun e!3241864 () (InoxSet Context!8354))

(assert (=> b!5206859 (= e!3241864 (store ((as const (Array Context!8354 Bool)) false) (ite c!897464 lt!2141533 (Context!8355 call!366169)) true))))

(declare-fun b!5206860 () Bool)

(assert (=> b!5206860 (= e!3241860 ((as const (Array Context!8354 Bool)) false))))

(declare-fun b!5206861 () Bool)

(declare-fun call!366308 () (InoxSet Context!8354))

(assert (=> b!5206861 (= e!3241860 call!366308)))

(declare-fun call!366309 () (InoxSet Context!8354))

(declare-fun bm!366302 () Bool)

(declare-fun c!897654 () Bool)

(assert (=> bm!366302 (= call!366309 (derivationStepZipperDown!241 (ite c!897654 (regOne!30099 (ite c!897464 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))))) (ite c!897656 (regTwo!30098 (ite c!897464 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))))) (ite c!897653 (regOne!30098 (ite c!897464 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))))) (reg!15122 (ite c!897464 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343))))))))) (ite (or c!897654 c!897656) (ite c!897464 lt!2141533 (Context!8355 call!366169)) (Context!8355 call!366310)) (h!67004 s!2326)))))

(declare-fun bm!366303 () Bool)

(declare-fun call!366306 () (InoxSet Context!8354))

(assert (=> bm!366303 (= call!366306 call!366309)))

(declare-fun b!5206862 () Bool)

(assert (=> b!5206862 (= e!3241864 e!3241862)))

(assert (=> b!5206862 (= c!897654 ((_ is Union!14793) (ite c!897464 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))))))))

(declare-fun d!1679236 () Bool)

(declare-fun c!897652 () Bool)

(assert (=> d!1679236 (= c!897652 (and ((_ is ElementMatch!14793) (ite c!897464 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))))) (= (c!897284 (ite c!897464 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))))) (h!67004 s!2326))))))

(assert (=> d!1679236 (= (derivationStepZipperDown!241 (ite c!897464 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343))))) (ite c!897464 lt!2141533 (Context!8355 call!366169)) (h!67004 s!2326)) e!3241864)))

(declare-fun b!5206855 () Bool)

(declare-fun call!366305 () (InoxSet Context!8354))

(assert (=> b!5206855 (= e!3241859 ((_ map or) call!366305 call!366306))))

(declare-fun b!5206863 () Bool)

(assert (=> b!5206863 (= e!3241863 call!366308)))

(declare-fun bm!366304 () Bool)

(assert (=> bm!366304 (= call!366305 (derivationStepZipperDown!241 (ite c!897654 (regTwo!30099 (ite c!897464 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))))) (regOne!30098 (ite c!897464 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343))))))) (ite c!897654 (ite c!897464 lt!2141533 (Context!8355 call!366169)) (Context!8355 call!366307)) (h!67004 s!2326)))))

(declare-fun bm!366305 () Bool)

(assert (=> bm!366305 (= call!366308 call!366306)))

(declare-fun b!5206864 () Bool)

(assert (=> b!5206864 (= e!3241862 ((_ map or) call!366309 call!366305))))

(declare-fun b!5206865 () Bool)

(assert (=> b!5206865 (= e!3241859 e!3241863)))

(assert (=> b!5206865 (= c!897653 ((_ is Concat!23638) (ite c!897464 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))))))))

(assert (= (and d!1679236 c!897652) b!5206859))

(assert (= (and d!1679236 (not c!897652)) b!5206862))

(assert (= (and b!5206862 c!897654) b!5206864))

(assert (= (and b!5206862 (not c!897654)) b!5206858))

(assert (= (and b!5206858 res!2211884) b!5206857))

(assert (= (and b!5206858 c!897656) b!5206855))

(assert (= (and b!5206858 (not c!897656)) b!5206865))

(assert (= (and b!5206865 c!897653) b!5206863))

(assert (= (and b!5206865 (not c!897653)) b!5206856))

(assert (= (and b!5206856 c!897655) b!5206861))

(assert (= (and b!5206856 (not c!897655)) b!5206860))

(assert (= (or b!5206863 b!5206861) bm!366300))

(assert (= (or b!5206863 b!5206861) bm!366305))

(assert (= (or b!5206855 bm!366300) bm!366301))

(assert (= (or b!5206855 bm!366305) bm!366303))

(assert (= (or b!5206864 b!5206855) bm!366304))

(assert (= (or b!5206864 bm!366303) bm!366302))

(declare-fun m!6257788 () Bool)

(assert (=> bm!366302 m!6257788))

(declare-fun m!6257790 () Bool)

(assert (=> b!5206859 m!6257790))

(declare-fun m!6257792 () Bool)

(assert (=> bm!366304 m!6257792))

(declare-fun m!6257794 () Bool)

(assert (=> bm!366301 m!6257794))

(declare-fun m!6257796 () Bool)

(assert (=> b!5206857 m!6257796))

(assert (=> bm!366166 d!1679236))

(declare-fun b!5206866 () Bool)

(declare-fun res!2211888 () Bool)

(declare-fun e!3241867 () Bool)

(assert (=> b!5206866 (=> (not res!2211888) (not e!3241867))))

(declare-fun call!366311 () Bool)

(assert (=> b!5206866 (= res!2211888 (not call!366311))))

(declare-fun b!5206867 () Bool)

(declare-fun res!2211892 () Bool)

(declare-fun e!3241869 () Bool)

(assert (=> b!5206867 (=> res!2211892 e!3241869)))

(assert (=> b!5206867 (= res!2211892 (not (isEmpty!32465 (tail!10259 (tail!10259 s!2326)))))))

(declare-fun b!5206869 () Bool)

(declare-fun res!2211891 () Bool)

(declare-fun e!3241865 () Bool)

(assert (=> b!5206869 (=> res!2211891 e!3241865)))

(assert (=> b!5206869 (= res!2211891 (not ((_ is ElementMatch!14793) (derivativeStep!4043 r!7292 (head!11162 s!2326)))))))

(declare-fun e!3241866 () Bool)

(assert (=> b!5206869 (= e!3241866 e!3241865)))

(declare-fun b!5206870 () Bool)

(declare-fun e!3241868 () Bool)

(declare-fun lt!2141665 () Bool)

(assert (=> b!5206870 (= e!3241868 (= lt!2141665 call!366311))))

(declare-fun b!5206871 () Bool)

(declare-fun res!2211890 () Bool)

(assert (=> b!5206871 (=> (not res!2211890) (not e!3241867))))

(assert (=> b!5206871 (= res!2211890 (isEmpty!32465 (tail!10259 (tail!10259 s!2326))))))

(declare-fun b!5206872 () Bool)

(declare-fun res!2211889 () Bool)

(assert (=> b!5206872 (=> res!2211889 e!3241865)))

(assert (=> b!5206872 (= res!2211889 e!3241867)))

(declare-fun res!2211887 () Bool)

(assert (=> b!5206872 (=> (not res!2211887) (not e!3241867))))

(assert (=> b!5206872 (= res!2211887 lt!2141665)))

(declare-fun b!5206873 () Bool)

(assert (=> b!5206873 (= e!3241866 (not lt!2141665))))

(declare-fun bm!366306 () Bool)

(assert (=> bm!366306 (= call!366311 (isEmpty!32465 (tail!10259 s!2326)))))

(declare-fun b!5206874 () Bool)

(declare-fun e!3241870 () Bool)

(assert (=> b!5206874 (= e!3241870 (matchR!6978 (derivativeStep!4043 (derivativeStep!4043 r!7292 (head!11162 s!2326)) (head!11162 (tail!10259 s!2326))) (tail!10259 (tail!10259 s!2326))))))

(declare-fun b!5206875 () Bool)

(assert (=> b!5206875 (= e!3241868 e!3241866)))

(declare-fun c!897659 () Bool)

(assert (=> b!5206875 (= c!897659 ((_ is EmptyLang!14793) (derivativeStep!4043 r!7292 (head!11162 s!2326))))))

(declare-fun d!1679238 () Bool)

(assert (=> d!1679238 e!3241868))

(declare-fun c!897657 () Bool)

(assert (=> d!1679238 (= c!897657 ((_ is EmptyExpr!14793) (derivativeStep!4043 r!7292 (head!11162 s!2326))))))

(assert (=> d!1679238 (= lt!2141665 e!3241870)))

(declare-fun c!897658 () Bool)

(assert (=> d!1679238 (= c!897658 (isEmpty!32465 (tail!10259 s!2326)))))

(assert (=> d!1679238 (validRegex!6529 (derivativeStep!4043 r!7292 (head!11162 s!2326)))))

(assert (=> d!1679238 (= (matchR!6978 (derivativeStep!4043 r!7292 (head!11162 s!2326)) (tail!10259 s!2326)) lt!2141665)))

(declare-fun b!5206868 () Bool)

(assert (=> b!5206868 (= e!3241867 (= (head!11162 (tail!10259 s!2326)) (c!897284 (derivativeStep!4043 r!7292 (head!11162 s!2326)))))))

(declare-fun b!5206876 () Bool)

(declare-fun e!3241871 () Bool)

(assert (=> b!5206876 (= e!3241871 e!3241869)))

(declare-fun res!2211885 () Bool)

(assert (=> b!5206876 (=> res!2211885 e!3241869)))

(assert (=> b!5206876 (= res!2211885 call!366311)))

(declare-fun b!5206877 () Bool)

(assert (=> b!5206877 (= e!3241870 (nullable!4962 (derivativeStep!4043 r!7292 (head!11162 s!2326))))))

(declare-fun b!5206878 () Bool)

(assert (=> b!5206878 (= e!3241869 (not (= (head!11162 (tail!10259 s!2326)) (c!897284 (derivativeStep!4043 r!7292 (head!11162 s!2326))))))))

(declare-fun b!5206879 () Bool)

(assert (=> b!5206879 (= e!3241865 e!3241871)))

(declare-fun res!2211886 () Bool)

(assert (=> b!5206879 (=> (not res!2211886) (not e!3241871))))

(assert (=> b!5206879 (= res!2211886 (not lt!2141665))))

(assert (= (and d!1679238 c!897658) b!5206877))

(assert (= (and d!1679238 (not c!897658)) b!5206874))

(assert (= (and d!1679238 c!897657) b!5206870))

(assert (= (and d!1679238 (not c!897657)) b!5206875))

(assert (= (and b!5206875 c!897659) b!5206873))

(assert (= (and b!5206875 (not c!897659)) b!5206869))

(assert (= (and b!5206869 (not res!2211891)) b!5206872))

(assert (= (and b!5206872 res!2211887) b!5206866))

(assert (= (and b!5206866 res!2211888) b!5206871))

(assert (= (and b!5206871 res!2211890) b!5206868))

(assert (= (and b!5206872 (not res!2211889)) b!5206879))

(assert (= (and b!5206879 res!2211886) b!5206876))

(assert (= (and b!5206876 (not res!2211885)) b!5206867))

(assert (= (and b!5206867 (not res!2211892)) b!5206878))

(assert (= (or b!5206870 b!5206866 b!5206876) bm!366306))

(assert (=> b!5206874 m!6256848))

(declare-fun m!6257798 () Bool)

(assert (=> b!5206874 m!6257798))

(assert (=> b!5206874 m!6256846))

(assert (=> b!5206874 m!6257798))

(declare-fun m!6257800 () Bool)

(assert (=> b!5206874 m!6257800))

(assert (=> b!5206874 m!6256848))

(declare-fun m!6257802 () Bool)

(assert (=> b!5206874 m!6257802))

(assert (=> b!5206874 m!6257800))

(assert (=> b!5206874 m!6257802))

(declare-fun m!6257804 () Bool)

(assert (=> b!5206874 m!6257804))

(assert (=> b!5206877 m!6256846))

(declare-fun m!6257806 () Bool)

(assert (=> b!5206877 m!6257806))

(assert (=> b!5206867 m!6256848))

(assert (=> b!5206867 m!6257802))

(assert (=> b!5206867 m!6257802))

(declare-fun m!6257808 () Bool)

(assert (=> b!5206867 m!6257808))

(assert (=> b!5206878 m!6256848))

(assert (=> b!5206878 m!6257798))

(assert (=> b!5206871 m!6256848))

(assert (=> b!5206871 m!6257802))

(assert (=> b!5206871 m!6257802))

(assert (=> b!5206871 m!6257808))

(assert (=> bm!366306 m!6256848))

(assert (=> bm!366306 m!6256854))

(assert (=> b!5206868 m!6256848))

(assert (=> b!5206868 m!6257798))

(assert (=> d!1679238 m!6256848))

(assert (=> d!1679238 m!6256854))

(assert (=> d!1679238 m!6256846))

(declare-fun m!6257810 () Bool)

(assert (=> d!1679238 m!6257810))

(assert (=> b!5205724 d!1679238))

(declare-fun b!5206900 () Bool)

(declare-fun e!3241882 () Regex!14793)

(assert (=> b!5206900 (= e!3241882 EmptyLang!14793)))

(declare-fun b!5206901 () Bool)

(declare-fun c!897670 () Bool)

(assert (=> b!5206901 (= c!897670 (nullable!4962 (regOne!30098 r!7292)))))

(declare-fun e!3241884 () Regex!14793)

(declare-fun e!3241883 () Regex!14793)

(assert (=> b!5206901 (= e!3241884 e!3241883)))

(declare-fun bm!366315 () Bool)

(declare-fun call!366322 () Regex!14793)

(declare-fun call!366321 () Regex!14793)

(assert (=> bm!366315 (= call!366322 call!366321)))

(declare-fun b!5206902 () Bool)

(declare-fun e!3241886 () Regex!14793)

(assert (=> b!5206902 (= e!3241882 e!3241886)))

(declare-fun c!897671 () Bool)

(assert (=> b!5206902 (= c!897671 ((_ is ElementMatch!14793) r!7292))))

(declare-fun bm!366316 () Bool)

(declare-fun c!897673 () Bool)

(assert (=> bm!366316 (= call!366321 (derivativeStep!4043 (ite c!897673 (regOne!30099 r!7292) (ite c!897670 (regTwo!30098 r!7292) (regOne!30098 r!7292))) (head!11162 s!2326)))))

(declare-fun call!366320 () Regex!14793)

(declare-fun c!897674 () Bool)

(declare-fun bm!366317 () Bool)

(assert (=> bm!366317 (= call!366320 (derivativeStep!4043 (ite c!897673 (regTwo!30099 r!7292) (ite c!897674 (reg!15122 r!7292) (regOne!30098 r!7292))) (head!11162 s!2326)))))

(declare-fun call!366323 () Regex!14793)

(declare-fun b!5206903 () Bool)

(assert (=> b!5206903 (= e!3241883 (Union!14793 (Concat!23638 call!366323 (regTwo!30098 r!7292)) call!366322))))

(declare-fun b!5206904 () Bool)

(declare-fun e!3241885 () Regex!14793)

(assert (=> b!5206904 (= e!3241885 e!3241884)))

(assert (=> b!5206904 (= c!897674 ((_ is Star!14793) r!7292))))

(declare-fun b!5206905 () Bool)

(assert (=> b!5206905 (= e!3241886 (ite (= (head!11162 s!2326) (c!897284 r!7292)) EmptyExpr!14793 EmptyLang!14793))))

(declare-fun b!5206906 () Bool)

(assert (=> b!5206906 (= e!3241884 (Concat!23638 call!366323 r!7292))))

(declare-fun b!5206907 () Bool)

(assert (=> b!5206907 (= e!3241883 (Union!14793 (Concat!23638 call!366322 (regTwo!30098 r!7292)) EmptyLang!14793))))

(declare-fun bm!366318 () Bool)

(assert (=> bm!366318 (= call!366323 call!366320)))

(declare-fun b!5206909 () Bool)

(assert (=> b!5206909 (= c!897673 ((_ is Union!14793) r!7292))))

(assert (=> b!5206909 (= e!3241886 e!3241885)))

(declare-fun b!5206908 () Bool)

(assert (=> b!5206908 (= e!3241885 (Union!14793 call!366321 call!366320))))

(declare-fun d!1679240 () Bool)

(declare-fun lt!2141668 () Regex!14793)

(assert (=> d!1679240 (validRegex!6529 lt!2141668)))

(assert (=> d!1679240 (= lt!2141668 e!3241882)))

(declare-fun c!897672 () Bool)

(assert (=> d!1679240 (= c!897672 (or ((_ is EmptyExpr!14793) r!7292) ((_ is EmptyLang!14793) r!7292)))))

(assert (=> d!1679240 (validRegex!6529 r!7292)))

(assert (=> d!1679240 (= (derivativeStep!4043 r!7292 (head!11162 s!2326)) lt!2141668)))

(assert (= (and d!1679240 c!897672) b!5206900))

(assert (= (and d!1679240 (not c!897672)) b!5206902))

(assert (= (and b!5206902 c!897671) b!5206905))

(assert (= (and b!5206902 (not c!897671)) b!5206909))

(assert (= (and b!5206909 c!897673) b!5206908))

(assert (= (and b!5206909 (not c!897673)) b!5206904))

(assert (= (and b!5206904 c!897674) b!5206906))

(assert (= (and b!5206904 (not c!897674)) b!5206901))

(assert (= (and b!5206901 c!897670) b!5206903))

(assert (= (and b!5206901 (not c!897670)) b!5206907))

(assert (= (or b!5206903 b!5206907) bm!366315))

(assert (= (or b!5206906 b!5206903) bm!366318))

(assert (= (or b!5206908 bm!366318) bm!366317))

(assert (= (or b!5206908 bm!366315) bm!366316))

(assert (=> b!5206901 m!6257746))

(assert (=> bm!366316 m!6256844))

(declare-fun m!6257812 () Bool)

(assert (=> bm!366316 m!6257812))

(assert (=> bm!366317 m!6256844))

(declare-fun m!6257814 () Bool)

(assert (=> bm!366317 m!6257814))

(declare-fun m!6257816 () Bool)

(assert (=> d!1679240 m!6257816))

(assert (=> d!1679240 m!6256610))

(assert (=> b!5205724 d!1679240))

(assert (=> b!5205724 d!1679194))

(declare-fun d!1679242 () Bool)

(assert (=> d!1679242 (= (tail!10259 s!2326) (t!373837 s!2326))))

(assert (=> b!5205724 d!1679242))

(declare-fun d!1679244 () Bool)

(assert (=> d!1679244 true))

(declare-fun setRes!33057 () Bool)

(assert (=> d!1679244 setRes!33057))

(declare-fun condSetEmpty!33057 () Bool)

(declare-fun res!2211895 () (InoxSet Context!8354))

(assert (=> d!1679244 (= condSetEmpty!33057 (= res!2211895 ((as const (Array Context!8354 Bool)) false)))))

(assert (=> d!1679244 (= (choose!38701 z!1189 lambda!260917) res!2211895)))

(declare-fun setIsEmpty!33057 () Bool)

(assert (=> setIsEmpty!33057 setRes!33057))

(declare-fun tp!1460304 () Bool)

(declare-fun setNonEmpty!33057 () Bool)

(declare-fun e!3241889 () Bool)

(declare-fun setElem!33057 () Context!8354)

(assert (=> setNonEmpty!33057 (= setRes!33057 (and tp!1460304 (inv!80229 setElem!33057) e!3241889))))

(declare-fun setRest!33057 () (InoxSet Context!8354))

(assert (=> setNonEmpty!33057 (= res!2211895 ((_ map or) (store ((as const (Array Context!8354 Bool)) false) setElem!33057 true) setRest!33057))))

(declare-fun b!5206912 () Bool)

(declare-fun tp!1460305 () Bool)

(assert (=> b!5206912 (= e!3241889 tp!1460305)))

(assert (= (and d!1679244 condSetEmpty!33057) setIsEmpty!33057))

(assert (= (and d!1679244 (not condSetEmpty!33057)) setNonEmpty!33057))

(assert (= setNonEmpty!33057 b!5206912))

(declare-fun m!6257818 () Bool)

(assert (=> setNonEmpty!33057 m!6257818))

(assert (=> d!1678878 d!1679244))

(declare-fun d!1679246 () Bool)

(assert (=> d!1679246 (= (isEmptyLang!766 lt!2141567) ((_ is EmptyLang!14793) lt!2141567))))

(assert (=> b!5205464 d!1679246))

(declare-fun bs!1210148 () Bool)

(declare-fun b!5206922 () Bool)

(assert (= bs!1210148 (and b!5206922 b!5206773)))

(declare-fun lambda!261025 () Int)

(assert (=> bs!1210148 (= (and (= (reg!15122 (regTwo!30099 r!7292)) (reg!15122 (regOne!30099 r!7292))) (= (regTwo!30099 r!7292) (regOne!30099 r!7292))) (= lambda!261025 lambda!261016))))

(declare-fun bs!1210149 () Bool)

(assert (= bs!1210149 (and b!5206922 b!5205364)))

(assert (=> bs!1210149 (not (= lambda!261025 lambda!260916))))

(assert (=> bs!1210149 (not (= lambda!261025 lambda!260915))))

(declare-fun bs!1210150 () Bool)

(assert (= bs!1210150 (and b!5206922 d!1678870)))

(assert (=> bs!1210150 (not (= lambda!261025 lambda!260970))))

(declare-fun bs!1210151 () Bool)

(assert (= bs!1210151 (and b!5206922 b!5205613)))

(assert (=> bs!1210151 (= (and (= (reg!15122 (regTwo!30099 r!7292)) (reg!15122 r!7292)) (= (regTwo!30099 r!7292) r!7292)) (= lambda!261025 lambda!260946))))

(declare-fun bs!1210152 () Bool)

(assert (= bs!1210152 (and b!5206922 b!5205610)))

(assert (=> bs!1210152 (not (= lambda!261025 lambda!260949))))

(declare-fun bs!1210153 () Bool)

(assert (= bs!1210153 (and b!5206922 b!5206770)))

(assert (=> bs!1210153 (not (= lambda!261025 lambda!261017))))

(declare-fun bs!1210154 () Bool)

(assert (= bs!1210154 (and b!5206922 d!1678868)))

(assert (=> bs!1210154 (not (= lambda!261025 lambda!260964))))

(declare-fun bs!1210155 () Bool)

(assert (= bs!1210155 (and b!5206922 d!1679064)))

(assert (=> bs!1210155 (not (= lambda!261025 lambda!261002))))

(assert (=> bs!1210155 (not (= lambda!261025 lambda!261004))))

(assert (=> bs!1210150 (not (= lambda!261025 lambda!260969))))

(declare-fun bs!1210156 () Bool)

(assert (= bs!1210156 (and b!5206922 d!1679198)))

(assert (=> bs!1210156 (not (= lambda!261025 lambda!261020))))

(assert (=> b!5206922 true))

(assert (=> b!5206922 true))

(declare-fun bs!1210157 () Bool)

(declare-fun b!5206919 () Bool)

(assert (= bs!1210157 (and b!5206919 b!5206773)))

(declare-fun lambda!261026 () Int)

(assert (=> bs!1210157 (not (= lambda!261026 lambda!261016))))

(declare-fun bs!1210158 () Bool)

(assert (= bs!1210158 (and b!5206919 b!5205364)))

(assert (=> bs!1210158 (= (and (= (regOne!30098 (regTwo!30099 r!7292)) (regOne!30098 r!7292)) (= (regTwo!30098 (regTwo!30099 r!7292)) (regTwo!30098 r!7292))) (= lambda!261026 lambda!260916))))

(assert (=> bs!1210158 (not (= lambda!261026 lambda!260915))))

(declare-fun bs!1210159 () Bool)

(assert (= bs!1210159 (and b!5206919 d!1678870)))

(assert (=> bs!1210159 (= (and (= (regOne!30098 (regTwo!30099 r!7292)) (regOne!30098 r!7292)) (= (regTwo!30098 (regTwo!30099 r!7292)) (regTwo!30098 r!7292))) (= lambda!261026 lambda!260970))))

(declare-fun bs!1210160 () Bool)

(assert (= bs!1210160 (and b!5206919 b!5205613)))

(assert (=> bs!1210160 (not (= lambda!261026 lambda!260946))))

(declare-fun bs!1210161 () Bool)

(assert (= bs!1210161 (and b!5206919 b!5205610)))

(assert (=> bs!1210161 (= (and (= (regOne!30098 (regTwo!30099 r!7292)) (regOne!30098 r!7292)) (= (regTwo!30098 (regTwo!30099 r!7292)) (regTwo!30098 r!7292))) (= lambda!261026 lambda!260949))))

(declare-fun bs!1210162 () Bool)

(assert (= bs!1210162 (and b!5206919 b!5206770)))

(assert (=> bs!1210162 (= (and (= (regOne!30098 (regTwo!30099 r!7292)) (regOne!30098 (regOne!30099 r!7292))) (= (regTwo!30098 (regTwo!30099 r!7292)) (regTwo!30098 (regOne!30099 r!7292)))) (= lambda!261026 lambda!261017))))

(declare-fun bs!1210163 () Bool)

(assert (= bs!1210163 (and b!5206919 b!5206922)))

(assert (=> bs!1210163 (not (= lambda!261026 lambda!261025))))

(declare-fun bs!1210164 () Bool)

(assert (= bs!1210164 (and b!5206919 d!1678868)))

(assert (=> bs!1210164 (not (= lambda!261026 lambda!260964))))

(declare-fun bs!1210165 () Bool)

(assert (= bs!1210165 (and b!5206919 d!1679064)))

(assert (=> bs!1210165 (not (= lambda!261026 lambda!261002))))

(assert (=> bs!1210165 (= (and (= (regOne!30098 (regTwo!30099 r!7292)) (regOne!30098 r!7292)) (= (regTwo!30098 (regTwo!30099 r!7292)) (regTwo!30098 r!7292))) (= lambda!261026 lambda!261004))))

(assert (=> bs!1210159 (not (= lambda!261026 lambda!260969))))

(declare-fun bs!1210166 () Bool)

(assert (= bs!1210166 (and b!5206919 d!1679198)))

(assert (=> bs!1210166 (not (= lambda!261026 lambda!261020))))

(assert (=> b!5206919 true))

(assert (=> b!5206919 true))

(declare-fun b!5206913 () Bool)

(declare-fun e!3241891 () Bool)

(assert (=> b!5206913 (= e!3241891 (= s!2326 (Cons!60556 (c!897284 (regTwo!30099 r!7292)) Nil!60556)))))

(declare-fun b!5206914 () Bool)

(declare-fun e!3241893 () Bool)

(declare-fun e!3241892 () Bool)

(assert (=> b!5206914 (= e!3241893 e!3241892)))

(declare-fun res!2211896 () Bool)

(assert (=> b!5206914 (= res!2211896 (matchRSpec!1896 (regOne!30099 (regTwo!30099 r!7292)) s!2326))))

(assert (=> b!5206914 (=> res!2211896 e!3241892)))

(declare-fun bm!366319 () Bool)

(declare-fun c!897677 () Bool)

(declare-fun call!366325 () Bool)

(assert (=> bm!366319 (= call!366325 (Exists!1974 (ite c!897677 lambda!261025 lambda!261026)))))

(declare-fun b!5206915 () Bool)

(declare-fun e!3241896 () Bool)

(declare-fun e!3241894 () Bool)

(assert (=> b!5206915 (= e!3241896 e!3241894)))

(declare-fun res!2211898 () Bool)

(assert (=> b!5206915 (= res!2211898 (not ((_ is EmptyLang!14793) (regTwo!30099 r!7292))))))

(assert (=> b!5206915 (=> (not res!2211898) (not e!3241894))))

(declare-fun b!5206916 () Bool)

(declare-fun res!2211897 () Bool)

(declare-fun e!3241895 () Bool)

(assert (=> b!5206916 (=> res!2211897 e!3241895)))

(declare-fun call!366324 () Bool)

(assert (=> b!5206916 (= res!2211897 call!366324)))

(declare-fun e!3241890 () Bool)

(assert (=> b!5206916 (= e!3241890 e!3241895)))

(declare-fun b!5206917 () Bool)

(declare-fun c!897676 () Bool)

(assert (=> b!5206917 (= c!897676 ((_ is Union!14793) (regTwo!30099 r!7292)))))

(assert (=> b!5206917 (= e!3241891 e!3241893)))

(assert (=> b!5206919 (= e!3241890 call!366325)))

(declare-fun b!5206920 () Bool)

(assert (=> b!5206920 (= e!3241892 (matchRSpec!1896 (regTwo!30099 (regTwo!30099 r!7292)) s!2326))))

(declare-fun b!5206921 () Bool)

(assert (=> b!5206921 (= e!3241893 e!3241890)))

(assert (=> b!5206921 (= c!897677 ((_ is Star!14793) (regTwo!30099 r!7292)))))

(assert (=> b!5206922 (= e!3241895 call!366325)))

(declare-fun bm!366320 () Bool)

(assert (=> bm!366320 (= call!366324 (isEmpty!32465 s!2326))))

(declare-fun b!5206923 () Bool)

(assert (=> b!5206923 (= e!3241896 call!366324)))

(declare-fun b!5206918 () Bool)

(declare-fun c!897675 () Bool)

(assert (=> b!5206918 (= c!897675 ((_ is ElementMatch!14793) (regTwo!30099 r!7292)))))

(assert (=> b!5206918 (= e!3241894 e!3241891)))

(declare-fun d!1679248 () Bool)

(declare-fun c!897678 () Bool)

(assert (=> d!1679248 (= c!897678 ((_ is EmptyExpr!14793) (regTwo!30099 r!7292)))))

(assert (=> d!1679248 (= (matchRSpec!1896 (regTwo!30099 r!7292) s!2326) e!3241896)))

(assert (= (and d!1679248 c!897678) b!5206923))

(assert (= (and d!1679248 (not c!897678)) b!5206915))

(assert (= (and b!5206915 res!2211898) b!5206918))

(assert (= (and b!5206918 c!897675) b!5206913))

(assert (= (and b!5206918 (not c!897675)) b!5206917))

(assert (= (and b!5206917 c!897676) b!5206914))

(assert (= (and b!5206917 (not c!897676)) b!5206921))

(assert (= (and b!5206914 (not res!2211896)) b!5206920))

(assert (= (and b!5206921 c!897677) b!5206916))

(assert (= (and b!5206921 (not c!897677)) b!5206919))

(assert (= (and b!5206916 (not res!2211897)) b!5206922))

(assert (= (or b!5206922 b!5206919) bm!366319))

(assert (= (or b!5206923 b!5206916) bm!366320))

(declare-fun m!6257820 () Bool)

(assert (=> b!5206914 m!6257820))

(declare-fun m!6257822 () Bool)

(assert (=> bm!366319 m!6257822))

(declare-fun m!6257824 () Bool)

(assert (=> b!5206920 m!6257824))

(assert (=> bm!366320 m!6256786))

(assert (=> b!5205611 d!1679248))

(declare-fun bs!1210167 () Bool)

(declare-fun d!1679250 () Bool)

(assert (= bs!1210167 (and d!1679250 d!1679220)))

(declare-fun lambda!261027 () Int)

(assert (=> bs!1210167 (= lambda!261027 lambda!261023)))

(declare-fun bs!1210168 () Bool)

(assert (= bs!1210168 (and d!1679250 d!1679230)))

(assert (=> bs!1210168 (= lambda!261027 lambda!261024)))

(assert (=> d!1679250 (= (nullableZipper!1221 lt!2141536) (exists!1958 lt!2141536 lambda!261027))))

(declare-fun bs!1210169 () Bool)

(assert (= bs!1210169 d!1679250))

(declare-fun m!6257826 () Bool)

(assert (=> bs!1210169 m!6257826))

(assert (=> b!5205795 d!1679250))

(declare-fun c!897682 () Bool)

(declare-fun b!5206925 () Bool)

(assert (=> b!5206925 (= c!897682 ((_ is Star!14793) (ite c!897464 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897466 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897463 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343)))))))))))

(declare-fun e!3241901 () (InoxSet Context!8354))

(declare-fun e!3241898 () (InoxSet Context!8354))

(assert (=> b!5206925 (= e!3241901 e!3241898)))

(declare-fun bm!366321 () Bool)

(declare-fun call!366331 () List!60678)

(declare-fun call!366328 () List!60678)

(assert (=> bm!366321 (= call!366331 call!366328)))

(declare-fun c!897680 () Bool)

(declare-fun c!897683 () Bool)

(declare-fun bm!366322 () Bool)

(assert (=> bm!366322 (= call!366328 ($colon$colon!1271 (exprs!4677 (ite (or c!897464 c!897466) lt!2141533 (Context!8355 call!366172))) (ite (or c!897683 c!897680) (regTwo!30098 (ite c!897464 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897466 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897463 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343)))))))) (ite c!897464 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897466 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897463 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343))))))))))))

(declare-fun b!5206926 () Bool)

(declare-fun e!3241899 () Bool)

(assert (=> b!5206926 (= e!3241899 (nullable!4962 (regOne!30098 (ite c!897464 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897466 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897463 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343))))))))))))

(declare-fun b!5206927 () Bool)

(assert (=> b!5206927 (= c!897683 e!3241899)))

(declare-fun res!2211899 () Bool)

(assert (=> b!5206927 (=> (not res!2211899) (not e!3241899))))

(assert (=> b!5206927 (= res!2211899 ((_ is Concat!23638) (ite c!897464 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897466 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897463 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343)))))))))))

(declare-fun e!3241900 () (InoxSet Context!8354))

(declare-fun e!3241897 () (InoxSet Context!8354))

(assert (=> b!5206927 (= e!3241900 e!3241897)))

(declare-fun e!3241902 () (InoxSet Context!8354))

(declare-fun b!5206928 () Bool)

(assert (=> b!5206928 (= e!3241902 (store ((as const (Array Context!8354 Bool)) false) (ite (or c!897464 c!897466) lt!2141533 (Context!8355 call!366172)) true))))

(declare-fun b!5206929 () Bool)

(assert (=> b!5206929 (= e!3241898 ((as const (Array Context!8354 Bool)) false))))

(declare-fun b!5206930 () Bool)

(declare-fun call!366329 () (InoxSet Context!8354))

(assert (=> b!5206930 (= e!3241898 call!366329)))

(declare-fun call!366330 () (InoxSet Context!8354))

(declare-fun bm!366323 () Bool)

(declare-fun c!897681 () Bool)

(assert (=> bm!366323 (= call!366330 (derivationStepZipperDown!241 (ite c!897681 (regOne!30099 (ite c!897464 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897466 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897463 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343)))))))) (ite c!897683 (regTwo!30098 (ite c!897464 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897466 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897463 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343)))))))) (ite c!897680 (regOne!30098 (ite c!897464 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897466 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897463 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343)))))))) (reg!15122 (ite c!897464 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897466 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897463 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343))))))))))) (ite (or c!897681 c!897683) (ite (or c!897464 c!897466) lt!2141533 (Context!8355 call!366172)) (Context!8355 call!366331)) (h!67004 s!2326)))))

(declare-fun bm!366324 () Bool)

(declare-fun call!366327 () (InoxSet Context!8354))

(assert (=> bm!366324 (= call!366327 call!366330)))

(declare-fun b!5206931 () Bool)

(assert (=> b!5206931 (= e!3241902 e!3241900)))

(assert (=> b!5206931 (= c!897681 ((_ is Union!14793) (ite c!897464 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897466 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897463 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343)))))))))))

(declare-fun d!1679252 () Bool)

(declare-fun c!897679 () Bool)

(assert (=> d!1679252 (= c!897679 (and ((_ is ElementMatch!14793) (ite c!897464 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897466 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897463 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343)))))))) (= (c!897284 (ite c!897464 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897466 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897463 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343)))))))) (h!67004 s!2326))))))

(assert (=> d!1679252 (= (derivationStepZipperDown!241 (ite c!897464 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897466 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897463 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343))))))) (ite (or c!897464 c!897466) lt!2141533 (Context!8355 call!366172)) (h!67004 s!2326)) e!3241902)))

(declare-fun b!5206924 () Bool)

(declare-fun call!366326 () (InoxSet Context!8354))

(assert (=> b!5206924 (= e!3241897 ((_ map or) call!366326 call!366327))))

(declare-fun b!5206932 () Bool)

(assert (=> b!5206932 (= e!3241901 call!366329)))

(declare-fun bm!366325 () Bool)

(assert (=> bm!366325 (= call!366326 (derivationStepZipperDown!241 (ite c!897681 (regTwo!30099 (ite c!897464 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897466 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897463 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343)))))))) (regOne!30098 (ite c!897464 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897466 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897463 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343))))))))) (ite c!897681 (ite (or c!897464 c!897466) lt!2141533 (Context!8355 call!366172)) (Context!8355 call!366328)) (h!67004 s!2326)))))

(declare-fun bm!366326 () Bool)

(assert (=> bm!366326 (= call!366329 call!366327)))

(declare-fun b!5206933 () Bool)

(assert (=> b!5206933 (= e!3241900 ((_ map or) call!366330 call!366326))))

(declare-fun b!5206934 () Bool)

(assert (=> b!5206934 (= e!3241897 e!3241901)))

(assert (=> b!5206934 (= c!897680 ((_ is Concat!23638) (ite c!897464 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897466 (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (ite c!897463 (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (reg!15122 (h!67002 (exprs!4677 (h!67003 zl!343)))))))))))

(assert (= (and d!1679252 c!897679) b!5206928))

(assert (= (and d!1679252 (not c!897679)) b!5206931))

(assert (= (and b!5206931 c!897681) b!5206933))

(assert (= (and b!5206931 (not c!897681)) b!5206927))

(assert (= (and b!5206927 res!2211899) b!5206926))

(assert (= (and b!5206927 c!897683) b!5206924))

(assert (= (and b!5206927 (not c!897683)) b!5206934))

(assert (= (and b!5206934 c!897680) b!5206932))

(assert (= (and b!5206934 (not c!897680)) b!5206925))

(assert (= (and b!5206925 c!897682) b!5206930))

(assert (= (and b!5206925 (not c!897682)) b!5206929))

(assert (= (or b!5206932 b!5206930) bm!366321))

(assert (= (or b!5206932 b!5206930) bm!366326))

(assert (= (or b!5206924 bm!366321) bm!366322))

(assert (= (or b!5206924 bm!366326) bm!366324))

(assert (= (or b!5206933 b!5206924) bm!366325))

(assert (= (or b!5206933 bm!366324) bm!366323))

(declare-fun m!6257828 () Bool)

(assert (=> bm!366323 m!6257828))

(declare-fun m!6257830 () Bool)

(assert (=> b!5206928 m!6257830))

(declare-fun m!6257832 () Bool)

(assert (=> bm!366325 m!6257832))

(declare-fun m!6257834 () Bool)

(assert (=> bm!366322 m!6257834))

(declare-fun m!6257836 () Bool)

(assert (=> b!5206926 m!6257836))

(assert (=> bm!366164 d!1679252))

(declare-fun d!1679254 () Bool)

(assert (=> d!1679254 (= (isEmpty!32461 (tail!10258 (unfocusZipperList!235 zl!343))) ((_ is Nil!60554) (tail!10258 (unfocusZipperList!235 zl!343))))))

(assert (=> b!5205462 d!1679254))

(declare-fun d!1679256 () Bool)

(assert (=> d!1679256 (= (tail!10258 (unfocusZipperList!235 zl!343)) (t!373835 (unfocusZipperList!235 zl!343)))))

(assert (=> b!5205462 d!1679256))

(assert (=> d!1678844 d!1679076))

(assert (=> d!1678862 d!1679044))

(declare-fun b!5206935 () Bool)

(declare-fun res!2211903 () Bool)

(declare-fun e!3241905 () Bool)

(assert (=> b!5206935 (=> (not res!2211903) (not e!3241905))))

(declare-fun call!366332 () Bool)

(assert (=> b!5206935 (= res!2211903 (not call!366332))))

(declare-fun b!5206936 () Bool)

(declare-fun res!2211907 () Bool)

(declare-fun e!3241907 () Bool)

(assert (=> b!5206936 (=> res!2211907 e!3241907)))

(assert (=> b!5206936 (= res!2211907 (not (isEmpty!32465 (tail!10259 Nil!60556))))))

(declare-fun b!5206938 () Bool)

(declare-fun res!2211906 () Bool)

(declare-fun e!3241903 () Bool)

(assert (=> b!5206938 (=> res!2211906 e!3241903)))

(assert (=> b!5206938 (= res!2211906 (not ((_ is ElementMatch!14793) (regOne!30098 r!7292))))))

(declare-fun e!3241904 () Bool)

(assert (=> b!5206938 (= e!3241904 e!3241903)))

(declare-fun b!5206939 () Bool)

(declare-fun e!3241906 () Bool)

(declare-fun lt!2141669 () Bool)

(assert (=> b!5206939 (= e!3241906 (= lt!2141669 call!366332))))

(declare-fun b!5206940 () Bool)

(declare-fun res!2211905 () Bool)

(assert (=> b!5206940 (=> (not res!2211905) (not e!3241905))))

(assert (=> b!5206940 (= res!2211905 (isEmpty!32465 (tail!10259 Nil!60556)))))

(declare-fun b!5206941 () Bool)

(declare-fun res!2211904 () Bool)

(assert (=> b!5206941 (=> res!2211904 e!3241903)))

(assert (=> b!5206941 (= res!2211904 e!3241905)))

(declare-fun res!2211902 () Bool)

(assert (=> b!5206941 (=> (not res!2211902) (not e!3241905))))

(assert (=> b!5206941 (= res!2211902 lt!2141669)))

(declare-fun b!5206942 () Bool)

(assert (=> b!5206942 (= e!3241904 (not lt!2141669))))

(declare-fun bm!366327 () Bool)

(assert (=> bm!366327 (= call!366332 (isEmpty!32465 Nil!60556))))

(declare-fun b!5206943 () Bool)

(declare-fun e!3241908 () Bool)

(assert (=> b!5206943 (= e!3241908 (matchR!6978 (derivativeStep!4043 (regOne!30098 r!7292) (head!11162 Nil!60556)) (tail!10259 Nil!60556)))))

(declare-fun b!5206944 () Bool)

(assert (=> b!5206944 (= e!3241906 e!3241904)))

(declare-fun c!897686 () Bool)

(assert (=> b!5206944 (= c!897686 ((_ is EmptyLang!14793) (regOne!30098 r!7292)))))

(declare-fun d!1679258 () Bool)

(assert (=> d!1679258 e!3241906))

(declare-fun c!897684 () Bool)

(assert (=> d!1679258 (= c!897684 ((_ is EmptyExpr!14793) (regOne!30098 r!7292)))))

(assert (=> d!1679258 (= lt!2141669 e!3241908)))

(declare-fun c!897685 () Bool)

(assert (=> d!1679258 (= c!897685 (isEmpty!32465 Nil!60556))))

(assert (=> d!1679258 (validRegex!6529 (regOne!30098 r!7292))))

(assert (=> d!1679258 (= (matchR!6978 (regOne!30098 r!7292) Nil!60556) lt!2141669)))

(declare-fun b!5206937 () Bool)

(assert (=> b!5206937 (= e!3241905 (= (head!11162 Nil!60556) (c!897284 (regOne!30098 r!7292))))))

(declare-fun b!5206945 () Bool)

(declare-fun e!3241909 () Bool)

(assert (=> b!5206945 (= e!3241909 e!3241907)))

(declare-fun res!2211900 () Bool)

(assert (=> b!5206945 (=> res!2211900 e!3241907)))

(assert (=> b!5206945 (= res!2211900 call!366332)))

(declare-fun b!5206946 () Bool)

(assert (=> b!5206946 (= e!3241908 (nullable!4962 (regOne!30098 r!7292)))))

(declare-fun b!5206947 () Bool)

(assert (=> b!5206947 (= e!3241907 (not (= (head!11162 Nil!60556) (c!897284 (regOne!30098 r!7292)))))))

(declare-fun b!5206948 () Bool)

(assert (=> b!5206948 (= e!3241903 e!3241909)))

(declare-fun res!2211901 () Bool)

(assert (=> b!5206948 (=> (not res!2211901) (not e!3241909))))

(assert (=> b!5206948 (= res!2211901 (not lt!2141669))))

(assert (= (and d!1679258 c!897685) b!5206946))

(assert (= (and d!1679258 (not c!897685)) b!5206943))

(assert (= (and d!1679258 c!897684) b!5206939))

(assert (= (and d!1679258 (not c!897684)) b!5206944))

(assert (= (and b!5206944 c!897686) b!5206942))

(assert (= (and b!5206944 (not c!897686)) b!5206938))

(assert (= (and b!5206938 (not res!2211906)) b!5206941))

(assert (= (and b!5206941 res!2211902) b!5206935))

(assert (= (and b!5206935 res!2211903) b!5206940))

(assert (= (and b!5206940 res!2211905) b!5206937))

(assert (= (and b!5206941 (not res!2211904)) b!5206948))

(assert (= (and b!5206948 res!2211901) b!5206945))

(assert (= (and b!5206945 (not res!2211900)) b!5206936))

(assert (= (and b!5206936 (not res!2211907)) b!5206947))

(assert (= (or b!5206939 b!5206935 b!5206945) bm!366327))

(declare-fun m!6257838 () Bool)

(assert (=> b!5206943 m!6257838))

(assert (=> b!5206943 m!6257838))

(declare-fun m!6257840 () Bool)

(assert (=> b!5206943 m!6257840))

(declare-fun m!6257842 () Bool)

(assert (=> b!5206943 m!6257842))

(assert (=> b!5206943 m!6257840))

(assert (=> b!5206943 m!6257842))

(declare-fun m!6257844 () Bool)

(assert (=> b!5206943 m!6257844))

(assert (=> b!5206946 m!6257746))

(assert (=> b!5206936 m!6257842))

(assert (=> b!5206936 m!6257842))

(declare-fun m!6257846 () Bool)

(assert (=> b!5206936 m!6257846))

(assert (=> b!5206947 m!6257838))

(assert (=> b!5206940 m!6257842))

(assert (=> b!5206940 m!6257842))

(assert (=> b!5206940 m!6257846))

(declare-fun m!6257848 () Bool)

(assert (=> bm!366327 m!6257848))

(assert (=> b!5206937 m!6257838))

(assert (=> d!1679258 m!6257848))

(assert (=> d!1679258 m!6256970))

(assert (=> d!1678862 d!1679258))

(assert (=> d!1678862 d!1679070))

(declare-fun d!1679260 () Bool)

(assert (=> d!1679260 (= (Exists!1974 (ite c!897346 lambda!260946 lambda!260949)) (choose!38698 (ite c!897346 lambda!260946 lambda!260949)))))

(declare-fun bs!1210170 () Bool)

(assert (= bs!1210170 d!1679260))

(declare-fun m!6257850 () Bool)

(assert (=> bs!1210170 m!6257850))

(assert (=> bm!366103 d!1679260))

(declare-fun bm!366332 () Bool)

(declare-fun call!366337 () Bool)

(declare-fun c!897689 () Bool)

(assert (=> bm!366332 (= call!366337 (nullable!4962 (ite c!897689 (regTwo!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))))))))

(declare-fun b!5206963 () Bool)

(declare-fun e!3241926 () Bool)

(declare-fun e!3241922 () Bool)

(assert (=> b!5206963 (= e!3241926 e!3241922)))

(declare-fun res!2211919 () Bool)

(declare-fun call!366338 () Bool)

(assert (=> b!5206963 (= res!2211919 call!366338)))

(assert (=> b!5206963 (=> (not res!2211919) (not e!3241922))))

(declare-fun d!1679262 () Bool)

(declare-fun res!2211922 () Bool)

(declare-fun e!3241925 () Bool)

(assert (=> d!1679262 (=> res!2211922 e!3241925)))

(assert (=> d!1679262 (= res!2211922 ((_ is EmptyExpr!14793) (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(assert (=> d!1679262 (= (nullableFct!1373 (h!67002 (exprs!4677 (h!67003 zl!343)))) e!3241925)))

(declare-fun b!5206964 () Bool)

(declare-fun e!3241923 () Bool)

(declare-fun e!3241927 () Bool)

(assert (=> b!5206964 (= e!3241923 e!3241927)))

(declare-fun res!2211921 () Bool)

(assert (=> b!5206964 (=> res!2211921 e!3241927)))

(assert (=> b!5206964 (= res!2211921 ((_ is Star!14793) (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun b!5206965 () Bool)

(declare-fun e!3241924 () Bool)

(assert (=> b!5206965 (= e!3241926 e!3241924)))

(declare-fun res!2211920 () Bool)

(assert (=> b!5206965 (= res!2211920 call!366338)))

(assert (=> b!5206965 (=> res!2211920 e!3241924)))

(declare-fun b!5206966 () Bool)

(assert (=> b!5206966 (= e!3241925 e!3241923)))

(declare-fun res!2211918 () Bool)

(assert (=> b!5206966 (=> (not res!2211918) (not e!3241923))))

(assert (=> b!5206966 (= res!2211918 (and (not ((_ is EmptyLang!14793) (h!67002 (exprs!4677 (h!67003 zl!343))))) (not ((_ is ElementMatch!14793) (h!67002 (exprs!4677 (h!67003 zl!343)))))))))

(declare-fun b!5206967 () Bool)

(assert (=> b!5206967 (= e!3241922 call!366337)))

(declare-fun bm!366333 () Bool)

(assert (=> bm!366333 (= call!366338 (nullable!4962 (ite c!897689 (regOne!30099 (h!67002 (exprs!4677 (h!67003 zl!343)))) (regOne!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))))))))

(declare-fun b!5206968 () Bool)

(assert (=> b!5206968 (= e!3241924 call!366337)))

(declare-fun b!5206969 () Bool)

(assert (=> b!5206969 (= e!3241927 e!3241926)))

(assert (=> b!5206969 (= c!897689 ((_ is Union!14793) (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(assert (= (and d!1679262 (not res!2211922)) b!5206966))

(assert (= (and b!5206966 res!2211918) b!5206964))

(assert (= (and b!5206964 (not res!2211921)) b!5206969))

(assert (= (and b!5206969 c!897689) b!5206965))

(assert (= (and b!5206969 (not c!897689)) b!5206963))

(assert (= (and b!5206965 (not res!2211920)) b!5206968))

(assert (= (and b!5206963 res!2211919) b!5206967))

(assert (= (or b!5206968 b!5206967) bm!366332))

(assert (= (or b!5206965 b!5206963) bm!366333))

(declare-fun m!6257852 () Bool)

(assert (=> bm!366332 m!6257852))

(declare-fun m!6257854 () Bool)

(assert (=> bm!366333 m!6257854))

(assert (=> d!1678884 d!1679262))

(declare-fun d!1679264 () Bool)

(assert (=> d!1679264 (= (isEmpty!32461 (tail!10258 (exprs!4677 (h!67003 zl!343)))) ((_ is Nil!60554) (tail!10258 (exprs!4677 (h!67003 zl!343)))))))

(assert (=> b!5205969 d!1679264))

(declare-fun d!1679266 () Bool)

(assert (=> d!1679266 (= (tail!10258 (exprs!4677 (h!67003 zl!343))) (t!373835 (exprs!4677 (h!67003 zl!343))))))

(assert (=> b!5205969 d!1679266))

(assert (=> d!1678832 d!1678844))

(assert (=> d!1678832 d!1678836))

(declare-fun d!1679268 () Bool)

(declare-fun e!3241930 () Bool)

(assert (=> d!1679268 (= (matchZipper!1037 ((_ map or) lt!2141536 lt!2141541) (t!373837 s!2326)) e!3241930)))

(declare-fun res!2211925 () Bool)

(assert (=> d!1679268 (=> res!2211925 e!3241930)))

(assert (=> d!1679268 (= res!2211925 (matchZipper!1037 lt!2141536 (t!373837 s!2326)))))

(assert (=> d!1679268 true))

(declare-fun _$48!784 () Unit!152438)

(assert (=> d!1679268 (= (choose!38696 lt!2141536 lt!2141541 (t!373837 s!2326)) _$48!784)))

(declare-fun b!5206972 () Bool)

(assert (=> b!5206972 (= e!3241930 (matchZipper!1037 lt!2141541 (t!373837 s!2326)))))

(assert (= (and d!1679268 (not res!2211925)) b!5206972))

(assert (=> d!1679268 m!6256608))

(assert (=> d!1679268 m!6256606))

(assert (=> b!5206972 m!6256648))

(assert (=> d!1678832 d!1679268))

(declare-fun d!1679270 () Bool)

(assert (=> d!1679270 (= (isEmpty!32465 (tail!10259 s!2326)) ((_ is Nil!60556) (tail!10259 s!2326)))))

(assert (=> b!5205721 d!1679270))

(assert (=> b!5205721 d!1679242))

(assert (=> bs!1209957 d!1678890))

(assert (=> b!5205717 d!1679270))

(assert (=> b!5205717 d!1679242))

(assert (=> d!1678882 d!1678878))

(declare-fun d!1679272 () Bool)

(assert (=> d!1679272 (= (flatMap!520 z!1189 lambda!260917) (dynLambda!23919 lambda!260917 (h!67003 zl!343)))))

(assert (=> d!1679272 true))

(declare-fun _$13!1675 () Unit!152438)

(assert (=> d!1679272 (= (choose!38702 z!1189 (h!67003 zl!343) lambda!260917) _$13!1675)))

(declare-fun b_lambda!201455 () Bool)

(assert (=> (not b_lambda!201455) (not d!1679272)))

(declare-fun bs!1210171 () Bool)

(assert (= bs!1210171 d!1679272))

(assert (=> bs!1210171 m!6256626))

(assert (=> bs!1210171 m!6257022))

(assert (=> d!1678882 d!1679272))

(declare-fun d!1679274 () Bool)

(assert (=> d!1679274 (= ($colon$colon!1271 (exprs!4677 lt!2141533) (ite (or c!897466 c!897463) (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (h!67002 (exprs!4677 (h!67003 zl!343))))) (Cons!60554 (ite (or c!897466 c!897463) (regTwo!30098 (h!67002 (exprs!4677 (h!67003 zl!343)))) (h!67002 (exprs!4677 (h!67003 zl!343)))) (exprs!4677 lt!2141533)))))

(assert (=> bm!366163 d!1679274))

(declare-fun bs!1210172 () Bool)

(declare-fun d!1679276 () Bool)

(assert (= bs!1210172 (and d!1679276 d!1678848)))

(declare-fun lambda!261028 () Int)

(assert (=> bs!1210172 (= lambda!261028 lambda!260960)))

(declare-fun bs!1210173 () Bool)

(assert (= bs!1210173 (and d!1679276 d!1679184)))

(assert (=> bs!1210173 (= lambda!261028 lambda!261015)))

(declare-fun bs!1210174 () Bool)

(assert (= bs!1210174 (and d!1679276 d!1678776)))

(assert (=> bs!1210174 (= lambda!261028 lambda!260920)))

(declare-fun bs!1210175 () Bool)

(assert (= bs!1210175 (and d!1679276 d!1679158)))

(assert (=> bs!1210175 (= lambda!261028 lambda!261012)))

(declare-fun bs!1210176 () Bool)

(assert (= bs!1210176 (and d!1679276 d!1678784)))

(assert (=> bs!1210176 (= lambda!261028 lambda!260932)))

(declare-fun bs!1210177 () Bool)

(assert (= bs!1210177 (and d!1679276 d!1678796)))

(assert (=> bs!1210177 (= lambda!261028 lambda!260937)))

(declare-fun bs!1210178 () Bool)

(assert (= bs!1210178 (and d!1679276 d!1679180)))

(assert (=> bs!1210178 (= lambda!261028 lambda!261014)))

(declare-fun bs!1210179 () Bool)

(assert (= bs!1210179 (and d!1679276 d!1678876)))

(assert (=> bs!1210179 (= lambda!261028 lambda!260973)))

(declare-fun b!5206973 () Bool)

(declare-fun e!3241933 () Bool)

(declare-fun lt!2141670 () Regex!14793)

(assert (=> b!5206973 (= e!3241933 (isEmptyExpr!757 lt!2141670))))

(declare-fun e!3241931 () Bool)

(assert (=> d!1679276 e!3241931))

(declare-fun res!2211927 () Bool)

(assert (=> d!1679276 (=> (not res!2211927) (not e!3241931))))

(assert (=> d!1679276 (= res!2211927 (validRegex!6529 lt!2141670))))

(declare-fun e!3241935 () Regex!14793)

(assert (=> d!1679276 (= lt!2141670 e!3241935)))

(declare-fun c!897691 () Bool)

(declare-fun e!3241936 () Bool)

(assert (=> d!1679276 (= c!897691 e!3241936)))

(declare-fun res!2211926 () Bool)

(assert (=> d!1679276 (=> (not res!2211926) (not e!3241936))))

(assert (=> d!1679276 (= res!2211926 ((_ is Cons!60554) (t!373835 (exprs!4677 (h!67003 zl!343)))))))

(assert (=> d!1679276 (forall!14229 (t!373835 (exprs!4677 (h!67003 zl!343))) lambda!261028)))

(assert (=> d!1679276 (= (generalisedConcat!462 (t!373835 (exprs!4677 (h!67003 zl!343)))) lt!2141670)))

(declare-fun b!5206974 () Bool)

(declare-fun e!3241932 () Regex!14793)

(assert (=> b!5206974 (= e!3241932 EmptyExpr!14793)))

(declare-fun b!5206975 () Bool)

(assert (=> b!5206975 (= e!3241936 (isEmpty!32461 (t!373835 (t!373835 (exprs!4677 (h!67003 zl!343))))))))

(declare-fun b!5206976 () Bool)

(assert (=> b!5206976 (= e!3241935 e!3241932)))

(declare-fun c!897693 () Bool)

(assert (=> b!5206976 (= c!897693 ((_ is Cons!60554) (t!373835 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun b!5206977 () Bool)

(assert (=> b!5206977 (= e!3241935 (h!67002 (t!373835 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun b!5206978 () Bool)

(declare-fun e!3241934 () Bool)

(assert (=> b!5206978 (= e!3241934 (= lt!2141670 (head!11161 (t!373835 (exprs!4677 (h!67003 zl!343))))))))

(declare-fun b!5206979 () Bool)

(assert (=> b!5206979 (= e!3241931 e!3241933)))

(declare-fun c!897692 () Bool)

(assert (=> b!5206979 (= c!897692 (isEmpty!32461 (t!373835 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun b!5206980 () Bool)

(assert (=> b!5206980 (= e!3241933 e!3241934)))

(declare-fun c!897690 () Bool)

(assert (=> b!5206980 (= c!897690 (isEmpty!32461 (tail!10258 (t!373835 (exprs!4677 (h!67003 zl!343))))))))

(declare-fun b!5206981 () Bool)

(assert (=> b!5206981 (= e!3241934 (isConcat!280 lt!2141670))))

(declare-fun b!5206982 () Bool)

(assert (=> b!5206982 (= e!3241932 (Concat!23638 (h!67002 (t!373835 (exprs!4677 (h!67003 zl!343)))) (generalisedConcat!462 (t!373835 (t!373835 (exprs!4677 (h!67003 zl!343)))))))))

(assert (= (and d!1679276 res!2211926) b!5206975))

(assert (= (and d!1679276 c!897691) b!5206977))

(assert (= (and d!1679276 (not c!897691)) b!5206976))

(assert (= (and b!5206976 c!897693) b!5206982))

(assert (= (and b!5206976 (not c!897693)) b!5206974))

(assert (= (and d!1679276 res!2211927) b!5206979))

(assert (= (and b!5206979 c!897692) b!5206973))

(assert (= (and b!5206979 (not c!897692)) b!5206980))

(assert (= (and b!5206980 c!897690) b!5206978))

(assert (= (and b!5206980 (not c!897690)) b!5206981))

(declare-fun m!6257856 () Bool)

(assert (=> b!5206982 m!6257856))

(declare-fun m!6257858 () Bool)

(assert (=> b!5206978 m!6257858))

(declare-fun m!6257860 () Bool)

(assert (=> b!5206973 m!6257860))

(assert (=> b!5206979 m!6256612))

(declare-fun m!6257862 () Bool)

(assert (=> d!1679276 m!6257862))

(declare-fun m!6257864 () Bool)

(assert (=> d!1679276 m!6257864))

(declare-fun m!6257866 () Bool)

(assert (=> b!5206981 m!6257866))

(declare-fun m!6257868 () Bool)

(assert (=> b!5206975 m!6257868))

(declare-fun m!6257870 () Bool)

(assert (=> b!5206980 m!6257870))

(assert (=> b!5206980 m!6257870))

(declare-fun m!6257872 () Bool)

(assert (=> b!5206980 m!6257872))

(assert (=> b!5205971 d!1679276))

(assert (=> b!5205513 d!1678876))

(declare-fun bs!1210180 () Bool)

(declare-fun d!1679278 () Bool)

(assert (= bs!1210180 (and d!1679278 d!1678848)))

(declare-fun lambda!261029 () Int)

(assert (=> bs!1210180 (= lambda!261029 lambda!260960)))

(declare-fun bs!1210181 () Bool)

(assert (= bs!1210181 (and d!1679278 d!1679184)))

(assert (=> bs!1210181 (= lambda!261029 lambda!261015)))

(declare-fun bs!1210182 () Bool)

(assert (= bs!1210182 (and d!1679278 d!1678776)))

(assert (=> bs!1210182 (= lambda!261029 lambda!260920)))

(declare-fun bs!1210183 () Bool)

(assert (= bs!1210183 (and d!1679278 d!1679158)))

(assert (=> bs!1210183 (= lambda!261029 lambda!261012)))

(declare-fun bs!1210184 () Bool)

(assert (= bs!1210184 (and d!1679278 d!1679276)))

(assert (=> bs!1210184 (= lambda!261029 lambda!261028)))

(declare-fun bs!1210185 () Bool)

(assert (= bs!1210185 (and d!1679278 d!1678784)))

(assert (=> bs!1210185 (= lambda!261029 lambda!260932)))

(declare-fun bs!1210186 () Bool)

(assert (= bs!1210186 (and d!1679278 d!1678796)))

(assert (=> bs!1210186 (= lambda!261029 lambda!260937)))

(declare-fun bs!1210187 () Bool)

(assert (= bs!1210187 (and d!1679278 d!1679180)))

(assert (=> bs!1210187 (= lambda!261029 lambda!261014)))

(declare-fun bs!1210188 () Bool)

(assert (= bs!1210188 (and d!1679278 d!1678876)))

(assert (=> bs!1210188 (= lambda!261029 lambda!260973)))

(declare-fun lt!2141671 () List!60678)

(assert (=> d!1679278 (forall!14229 lt!2141671 lambda!261029)))

(declare-fun e!3241937 () List!60678)

(assert (=> d!1679278 (= lt!2141671 e!3241937)))

(declare-fun c!897694 () Bool)

(assert (=> d!1679278 (= c!897694 ((_ is Cons!60555) (t!373836 zl!343)))))

(assert (=> d!1679278 (= (unfocusZipperList!235 (t!373836 zl!343)) lt!2141671)))

(declare-fun b!5206983 () Bool)

(assert (=> b!5206983 (= e!3241937 (Cons!60554 (generalisedConcat!462 (exprs!4677 (h!67003 (t!373836 zl!343)))) (unfocusZipperList!235 (t!373836 (t!373836 zl!343)))))))

(declare-fun b!5206984 () Bool)

(assert (=> b!5206984 (= e!3241937 Nil!60554)))

(assert (= (and d!1679278 c!897694) b!5206983))

(assert (= (and d!1679278 (not c!897694)) b!5206984))

(declare-fun m!6257874 () Bool)

(assert (=> d!1679278 m!6257874))

(declare-fun m!6257876 () Bool)

(assert (=> b!5206983 m!6257876))

(declare-fun m!6257878 () Bool)

(assert (=> b!5206983 m!6257878))

(assert (=> b!5205513 d!1679278))

(declare-fun d!1679280 () Bool)

(declare-fun res!2211930 () Bool)

(declare-fun e!3241944 () Bool)

(assert (=> d!1679280 (=> res!2211930 e!3241944)))

(assert (=> d!1679280 (= res!2211930 ((_ is ElementMatch!14793) (ite c!897430 (regOne!30099 (regTwo!30099 (regOne!30098 r!7292))) (regOne!30098 (regTwo!30099 (regOne!30098 r!7292))))))))

(assert (=> d!1679280 (= (validRegex!6529 (ite c!897430 (regOne!30099 (regTwo!30099 (regOne!30098 r!7292))) (regOne!30098 (regTwo!30099 (regOne!30098 r!7292))))) e!3241944)))

(declare-fun b!5206985 () Bool)

(declare-fun e!3241940 () Bool)

(declare-fun e!3241939 () Bool)

(assert (=> b!5206985 (= e!3241940 e!3241939)))

(declare-fun c!897695 () Bool)

(assert (=> b!5206985 (= c!897695 ((_ is Union!14793) (ite c!897430 (regOne!30099 (regTwo!30099 (regOne!30098 r!7292))) (regOne!30098 (regTwo!30099 (regOne!30098 r!7292))))))))

(declare-fun b!5206986 () Bool)

(declare-fun res!2211932 () Bool)

(declare-fun e!3241941 () Bool)

(assert (=> b!5206986 (=> (not res!2211932) (not e!3241941))))

(declare-fun call!366341 () Bool)

(assert (=> b!5206986 (= res!2211932 call!366341)))

(assert (=> b!5206986 (= e!3241939 e!3241941)))

(declare-fun b!5206987 () Bool)

(declare-fun res!2211931 () Bool)

(declare-fun e!3241943 () Bool)

(assert (=> b!5206987 (=> res!2211931 e!3241943)))

(assert (=> b!5206987 (= res!2211931 (not ((_ is Concat!23638) (ite c!897430 (regOne!30099 (regTwo!30099 (regOne!30098 r!7292))) (regOne!30098 (regTwo!30099 (regOne!30098 r!7292)))))))))

(assert (=> b!5206987 (= e!3241939 e!3241943)))

(declare-fun b!5206988 () Bool)

(declare-fun e!3241942 () Bool)

(assert (=> b!5206988 (= e!3241940 e!3241942)))

(declare-fun res!2211929 () Bool)

(assert (=> b!5206988 (= res!2211929 (not (nullable!4962 (reg!15122 (ite c!897430 (regOne!30099 (regTwo!30099 (regOne!30098 r!7292))) (regOne!30098 (regTwo!30099 (regOne!30098 r!7292))))))))))

(assert (=> b!5206988 (=> (not res!2211929) (not e!3241942))))

(declare-fun b!5206989 () Bool)

(declare-fun e!3241938 () Bool)

(assert (=> b!5206989 (= e!3241943 e!3241938)))

(declare-fun res!2211928 () Bool)

(assert (=> b!5206989 (=> (not res!2211928) (not e!3241938))))

(assert (=> b!5206989 (= res!2211928 call!366341)))

(declare-fun b!5206990 () Bool)

(declare-fun call!366340 () Bool)

(assert (=> b!5206990 (= e!3241938 call!366340)))

(declare-fun bm!366334 () Bool)

(declare-fun call!366339 () Bool)

(assert (=> bm!366334 (= call!366340 call!366339)))

(declare-fun b!5206991 () Bool)

(assert (=> b!5206991 (= e!3241944 e!3241940)))

(declare-fun c!897696 () Bool)

(assert (=> b!5206991 (= c!897696 ((_ is Star!14793) (ite c!897430 (regOne!30099 (regTwo!30099 (regOne!30098 r!7292))) (regOne!30098 (regTwo!30099 (regOne!30098 r!7292))))))))

(declare-fun bm!366335 () Bool)

(assert (=> bm!366335 (= call!366339 (validRegex!6529 (ite c!897696 (reg!15122 (ite c!897430 (regOne!30099 (regTwo!30099 (regOne!30098 r!7292))) (regOne!30098 (regTwo!30099 (regOne!30098 r!7292))))) (ite c!897695 (regTwo!30099 (ite c!897430 (regOne!30099 (regTwo!30099 (regOne!30098 r!7292))) (regOne!30098 (regTwo!30099 (regOne!30098 r!7292))))) (regTwo!30098 (ite c!897430 (regOne!30099 (regTwo!30099 (regOne!30098 r!7292))) (regOne!30098 (regTwo!30099 (regOne!30098 r!7292)))))))))))

(declare-fun bm!366336 () Bool)

(assert (=> bm!366336 (= call!366341 (validRegex!6529 (ite c!897695 (regOne!30099 (ite c!897430 (regOne!30099 (regTwo!30099 (regOne!30098 r!7292))) (regOne!30098 (regTwo!30099 (regOne!30098 r!7292))))) (regOne!30098 (ite c!897430 (regOne!30099 (regTwo!30099 (regOne!30098 r!7292))) (regOne!30098 (regTwo!30099 (regOne!30098 r!7292))))))))))

(declare-fun b!5206992 () Bool)

(assert (=> b!5206992 (= e!3241942 call!366339)))

(declare-fun b!5206993 () Bool)

(assert (=> b!5206993 (= e!3241941 call!366340)))

(assert (= (and d!1679280 (not res!2211930)) b!5206991))

(assert (= (and b!5206991 c!897696) b!5206988))

(assert (= (and b!5206991 (not c!897696)) b!5206985))

(assert (= (and b!5206988 res!2211929) b!5206992))

(assert (= (and b!5206985 c!897695) b!5206986))

(assert (= (and b!5206985 (not c!897695)) b!5206987))

(assert (= (and b!5206986 res!2211932) b!5206993))

(assert (= (and b!5206987 (not res!2211931)) b!5206989))

(assert (= (and b!5206989 res!2211928) b!5206990))

(assert (= (or b!5206993 b!5206990) bm!366334))

(assert (= (or b!5206986 b!5206989) bm!366336))

(assert (= (or b!5206992 bm!366334) bm!366335))

(declare-fun m!6257880 () Bool)

(assert (=> b!5206988 m!6257880))

(declare-fun m!6257882 () Bool)

(assert (=> bm!366335 m!6257882))

(declare-fun m!6257884 () Bool)

(assert (=> bm!366336 m!6257884))

(assert (=> bm!366145 d!1679280))

(declare-fun b!5206996 () Bool)

(declare-fun e!3241945 () Bool)

(declare-fun tp!1460310 () Bool)

(assert (=> b!5206996 (= e!3241945 tp!1460310)))

(declare-fun b!5206995 () Bool)

(declare-fun tp!1460307 () Bool)

(declare-fun tp!1460308 () Bool)

(assert (=> b!5206995 (= e!3241945 (and tp!1460307 tp!1460308))))

(assert (=> b!5206067 (= tp!1460115 e!3241945)))

(declare-fun b!5206997 () Bool)

(declare-fun tp!1460306 () Bool)

(declare-fun tp!1460309 () Bool)

(assert (=> b!5206997 (= e!3241945 (and tp!1460306 tp!1460309))))

(declare-fun b!5206994 () Bool)

(assert (=> b!5206994 (= e!3241945 tp_is_empty!38839)))

(assert (= (and b!5206067 ((_ is ElementMatch!14793) (regOne!30098 (regTwo!30098 r!7292)))) b!5206994))

(assert (= (and b!5206067 ((_ is Concat!23638) (regOne!30098 (regTwo!30098 r!7292)))) b!5206995))

(assert (= (and b!5206067 ((_ is Star!14793) (regOne!30098 (regTwo!30098 r!7292)))) b!5206996))

(assert (= (and b!5206067 ((_ is Union!14793) (regOne!30098 (regTwo!30098 r!7292)))) b!5206997))

(declare-fun b!5207000 () Bool)

(declare-fun e!3241946 () Bool)

(declare-fun tp!1460315 () Bool)

(assert (=> b!5207000 (= e!3241946 tp!1460315)))

(declare-fun b!5206999 () Bool)

(declare-fun tp!1460312 () Bool)

(declare-fun tp!1460313 () Bool)

(assert (=> b!5206999 (= e!3241946 (and tp!1460312 tp!1460313))))

(assert (=> b!5206067 (= tp!1460116 e!3241946)))

(declare-fun b!5207001 () Bool)

(declare-fun tp!1460311 () Bool)

(declare-fun tp!1460314 () Bool)

(assert (=> b!5207001 (= e!3241946 (and tp!1460311 tp!1460314))))

(declare-fun b!5206998 () Bool)

(assert (=> b!5206998 (= e!3241946 tp_is_empty!38839)))

(assert (= (and b!5206067 ((_ is ElementMatch!14793) (regTwo!30098 (regTwo!30098 r!7292)))) b!5206998))

(assert (= (and b!5206067 ((_ is Concat!23638) (regTwo!30098 (regTwo!30098 r!7292)))) b!5206999))

(assert (= (and b!5206067 ((_ is Star!14793) (regTwo!30098 (regTwo!30098 r!7292)))) b!5207000))

(assert (= (and b!5206067 ((_ is Union!14793) (regTwo!30098 (regTwo!30098 r!7292)))) b!5207001))

(declare-fun b!5207002 () Bool)

(declare-fun e!3241947 () Bool)

(declare-fun tp!1460316 () Bool)

(assert (=> b!5207002 (= e!3241947 (and tp_is_empty!38839 tp!1460316))))

(assert (=> b!5206075 (= tp!1460123 e!3241947)))

(assert (= (and b!5206075 ((_ is Cons!60556) (t!373837 (t!373837 s!2326)))) b!5207002))

(declare-fun b!5207005 () Bool)

(declare-fun e!3241948 () Bool)

(declare-fun tp!1460321 () Bool)

(assert (=> b!5207005 (= e!3241948 tp!1460321)))

(declare-fun b!5207004 () Bool)

(declare-fun tp!1460318 () Bool)

(declare-fun tp!1460319 () Bool)

(assert (=> b!5207004 (= e!3241948 (and tp!1460318 tp!1460319))))

(assert (=> b!5206083 (= tp!1460129 e!3241948)))

(declare-fun b!5207006 () Bool)

(declare-fun tp!1460317 () Bool)

(declare-fun tp!1460320 () Bool)

(assert (=> b!5207006 (= e!3241948 (and tp!1460317 tp!1460320))))

(declare-fun b!5207003 () Bool)

(assert (=> b!5207003 (= e!3241948 tp_is_empty!38839)))

(assert (= (and b!5206083 ((_ is ElementMatch!14793) (regOne!30099 (regTwo!30099 r!7292)))) b!5207003))

(assert (= (and b!5206083 ((_ is Concat!23638) (regOne!30099 (regTwo!30099 r!7292)))) b!5207004))

(assert (= (and b!5206083 ((_ is Star!14793) (regOne!30099 (regTwo!30099 r!7292)))) b!5207005))

(assert (= (and b!5206083 ((_ is Union!14793) (regOne!30099 (regTwo!30099 r!7292)))) b!5207006))

(declare-fun b!5207009 () Bool)

(declare-fun e!3241949 () Bool)

(declare-fun tp!1460326 () Bool)

(assert (=> b!5207009 (= e!3241949 tp!1460326)))

(declare-fun b!5207008 () Bool)

(declare-fun tp!1460323 () Bool)

(declare-fun tp!1460324 () Bool)

(assert (=> b!5207008 (= e!3241949 (and tp!1460323 tp!1460324))))

(assert (=> b!5206083 (= tp!1460132 e!3241949)))

(declare-fun b!5207010 () Bool)

(declare-fun tp!1460322 () Bool)

(declare-fun tp!1460325 () Bool)

(assert (=> b!5207010 (= e!3241949 (and tp!1460322 tp!1460325))))

(declare-fun b!5207007 () Bool)

(assert (=> b!5207007 (= e!3241949 tp_is_empty!38839)))

(assert (= (and b!5206083 ((_ is ElementMatch!14793) (regTwo!30099 (regTwo!30099 r!7292)))) b!5207007))

(assert (= (and b!5206083 ((_ is Concat!23638) (regTwo!30099 (regTwo!30099 r!7292)))) b!5207008))

(assert (= (and b!5206083 ((_ is Star!14793) (regTwo!30099 (regTwo!30099 r!7292)))) b!5207009))

(assert (= (and b!5206083 ((_ is Union!14793) (regTwo!30099 (regTwo!30099 r!7292)))) b!5207010))

(declare-fun b!5207013 () Bool)

(declare-fun e!3241950 () Bool)

(declare-fun tp!1460331 () Bool)

(assert (=> b!5207013 (= e!3241950 tp!1460331)))

(declare-fun b!5207012 () Bool)

(declare-fun tp!1460328 () Bool)

(declare-fun tp!1460329 () Bool)

(assert (=> b!5207012 (= e!3241950 (and tp!1460328 tp!1460329))))

(assert (=> b!5206069 (= tp!1460114 e!3241950)))

(declare-fun b!5207014 () Bool)

(declare-fun tp!1460327 () Bool)

(declare-fun tp!1460330 () Bool)

(assert (=> b!5207014 (= e!3241950 (and tp!1460327 tp!1460330))))

(declare-fun b!5207011 () Bool)

(assert (=> b!5207011 (= e!3241950 tp_is_empty!38839)))

(assert (= (and b!5206069 ((_ is ElementMatch!14793) (regOne!30099 (regTwo!30098 r!7292)))) b!5207011))

(assert (= (and b!5206069 ((_ is Concat!23638) (regOne!30099 (regTwo!30098 r!7292)))) b!5207012))

(assert (= (and b!5206069 ((_ is Star!14793) (regOne!30099 (regTwo!30098 r!7292)))) b!5207013))

(assert (= (and b!5206069 ((_ is Union!14793) (regOne!30099 (regTwo!30098 r!7292)))) b!5207014))

(declare-fun b!5207017 () Bool)

(declare-fun e!3241951 () Bool)

(declare-fun tp!1460336 () Bool)

(assert (=> b!5207017 (= e!3241951 tp!1460336)))

(declare-fun b!5207016 () Bool)

(declare-fun tp!1460333 () Bool)

(declare-fun tp!1460334 () Bool)

(assert (=> b!5207016 (= e!3241951 (and tp!1460333 tp!1460334))))

(assert (=> b!5206069 (= tp!1460117 e!3241951)))

(declare-fun b!5207018 () Bool)

(declare-fun tp!1460332 () Bool)

(declare-fun tp!1460335 () Bool)

(assert (=> b!5207018 (= e!3241951 (and tp!1460332 tp!1460335))))

(declare-fun b!5207015 () Bool)

(assert (=> b!5207015 (= e!3241951 tp_is_empty!38839)))

(assert (= (and b!5206069 ((_ is ElementMatch!14793) (regTwo!30099 (regTwo!30098 r!7292)))) b!5207015))

(assert (= (and b!5206069 ((_ is Concat!23638) (regTwo!30099 (regTwo!30098 r!7292)))) b!5207016))

(assert (= (and b!5206069 ((_ is Star!14793) (regTwo!30099 (regTwo!30098 r!7292)))) b!5207017))

(assert (= (and b!5206069 ((_ is Union!14793) (regTwo!30099 (regTwo!30098 r!7292)))) b!5207018))

(declare-fun b!5207021 () Bool)

(declare-fun e!3241952 () Bool)

(declare-fun tp!1460341 () Bool)

(assert (=> b!5207021 (= e!3241952 tp!1460341)))

(declare-fun b!5207020 () Bool)

(declare-fun tp!1460338 () Bool)

(declare-fun tp!1460339 () Bool)

(assert (=> b!5207020 (= e!3241952 (and tp!1460338 tp!1460339))))

(assert (=> b!5206068 (= tp!1460118 e!3241952)))

(declare-fun b!5207022 () Bool)

(declare-fun tp!1460337 () Bool)

(declare-fun tp!1460340 () Bool)

(assert (=> b!5207022 (= e!3241952 (and tp!1460337 tp!1460340))))

(declare-fun b!5207019 () Bool)

(assert (=> b!5207019 (= e!3241952 tp_is_empty!38839)))

(assert (= (and b!5206068 ((_ is ElementMatch!14793) (reg!15122 (regTwo!30098 r!7292)))) b!5207019))

(assert (= (and b!5206068 ((_ is Concat!23638) (reg!15122 (regTwo!30098 r!7292)))) b!5207020))

(assert (= (and b!5206068 ((_ is Star!14793) (reg!15122 (regTwo!30098 r!7292)))) b!5207021))

(assert (= (and b!5206068 ((_ is Union!14793) (reg!15122 (regTwo!30098 r!7292)))) b!5207022))

(declare-fun b!5207025 () Bool)

(declare-fun e!3241953 () Bool)

(declare-fun tp!1460346 () Bool)

(assert (=> b!5207025 (= e!3241953 tp!1460346)))

(declare-fun b!5207024 () Bool)

(declare-fun tp!1460343 () Bool)

(declare-fun tp!1460344 () Bool)

(assert (=> b!5207024 (= e!3241953 (and tp!1460343 tp!1460344))))

(assert (=> b!5206082 (= tp!1460133 e!3241953)))

(declare-fun b!5207026 () Bool)

(declare-fun tp!1460342 () Bool)

(declare-fun tp!1460345 () Bool)

(assert (=> b!5207026 (= e!3241953 (and tp!1460342 tp!1460345))))

(declare-fun b!5207023 () Bool)

(assert (=> b!5207023 (= e!3241953 tp_is_empty!38839)))

(assert (= (and b!5206082 ((_ is ElementMatch!14793) (reg!15122 (regTwo!30099 r!7292)))) b!5207023))

(assert (= (and b!5206082 ((_ is Concat!23638) (reg!15122 (regTwo!30099 r!7292)))) b!5207024))

(assert (= (and b!5206082 ((_ is Star!14793) (reg!15122 (regTwo!30099 r!7292)))) b!5207025))

(assert (= (and b!5206082 ((_ is Union!14793) (reg!15122 (regTwo!30099 r!7292)))) b!5207026))

(declare-fun b!5207029 () Bool)

(declare-fun e!3241954 () Bool)

(declare-fun tp!1460351 () Bool)

(assert (=> b!5207029 (= e!3241954 tp!1460351)))

(declare-fun b!5207028 () Bool)

(declare-fun tp!1460348 () Bool)

(declare-fun tp!1460349 () Bool)

(assert (=> b!5207028 (= e!3241954 (and tp!1460348 tp!1460349))))

(assert (=> b!5206081 (= tp!1460130 e!3241954)))

(declare-fun b!5207030 () Bool)

(declare-fun tp!1460347 () Bool)

(declare-fun tp!1460350 () Bool)

(assert (=> b!5207030 (= e!3241954 (and tp!1460347 tp!1460350))))

(declare-fun b!5207027 () Bool)

(assert (=> b!5207027 (= e!3241954 tp_is_empty!38839)))

(assert (= (and b!5206081 ((_ is ElementMatch!14793) (regOne!30098 (regTwo!30099 r!7292)))) b!5207027))

(assert (= (and b!5206081 ((_ is Concat!23638) (regOne!30098 (regTwo!30099 r!7292)))) b!5207028))

(assert (= (and b!5206081 ((_ is Star!14793) (regOne!30098 (regTwo!30099 r!7292)))) b!5207029))

(assert (= (and b!5206081 ((_ is Union!14793) (regOne!30098 (regTwo!30099 r!7292)))) b!5207030))

(declare-fun b!5207033 () Bool)

(declare-fun e!3241955 () Bool)

(declare-fun tp!1460356 () Bool)

(assert (=> b!5207033 (= e!3241955 tp!1460356)))

(declare-fun b!5207032 () Bool)

(declare-fun tp!1460353 () Bool)

(declare-fun tp!1460354 () Bool)

(assert (=> b!5207032 (= e!3241955 (and tp!1460353 tp!1460354))))

(assert (=> b!5206081 (= tp!1460131 e!3241955)))

(declare-fun b!5207034 () Bool)

(declare-fun tp!1460352 () Bool)

(declare-fun tp!1460355 () Bool)

(assert (=> b!5207034 (= e!3241955 (and tp!1460352 tp!1460355))))

(declare-fun b!5207031 () Bool)

(assert (=> b!5207031 (= e!3241955 tp_is_empty!38839)))

(assert (= (and b!5206081 ((_ is ElementMatch!14793) (regTwo!30098 (regTwo!30099 r!7292)))) b!5207031))

(assert (= (and b!5206081 ((_ is Concat!23638) (regTwo!30098 (regTwo!30099 r!7292)))) b!5207032))

(assert (= (and b!5206081 ((_ is Star!14793) (regTwo!30098 (regTwo!30099 r!7292)))) b!5207033))

(assert (= (and b!5206081 ((_ is Union!14793) (regTwo!30098 (regTwo!30099 r!7292)))) b!5207034))

(declare-fun b!5207037 () Bool)

(declare-fun e!3241956 () Bool)

(declare-fun tp!1460361 () Bool)

(assert (=> b!5207037 (= e!3241956 tp!1460361)))

(declare-fun b!5207036 () Bool)

(declare-fun tp!1460358 () Bool)

(declare-fun tp!1460359 () Bool)

(assert (=> b!5207036 (= e!3241956 (and tp!1460358 tp!1460359))))

(assert (=> b!5206079 (= tp!1460124 e!3241956)))

(declare-fun b!5207038 () Bool)

(declare-fun tp!1460357 () Bool)

(declare-fun tp!1460360 () Bool)

(assert (=> b!5207038 (= e!3241956 (and tp!1460357 tp!1460360))))

(declare-fun b!5207035 () Bool)

(assert (=> b!5207035 (= e!3241956 tp_is_empty!38839)))

(assert (= (and b!5206079 ((_ is ElementMatch!14793) (regOne!30099 (regOne!30099 r!7292)))) b!5207035))

(assert (= (and b!5206079 ((_ is Concat!23638) (regOne!30099 (regOne!30099 r!7292)))) b!5207036))

(assert (= (and b!5206079 ((_ is Star!14793) (regOne!30099 (regOne!30099 r!7292)))) b!5207037))

(assert (= (and b!5206079 ((_ is Union!14793) (regOne!30099 (regOne!30099 r!7292)))) b!5207038))

(declare-fun b!5207041 () Bool)

(declare-fun e!3241957 () Bool)

(declare-fun tp!1460366 () Bool)

(assert (=> b!5207041 (= e!3241957 tp!1460366)))

(declare-fun b!5207040 () Bool)

(declare-fun tp!1460363 () Bool)

(declare-fun tp!1460364 () Bool)

(assert (=> b!5207040 (= e!3241957 (and tp!1460363 tp!1460364))))

(assert (=> b!5206079 (= tp!1460127 e!3241957)))

(declare-fun b!5207042 () Bool)

(declare-fun tp!1460362 () Bool)

(declare-fun tp!1460365 () Bool)

(assert (=> b!5207042 (= e!3241957 (and tp!1460362 tp!1460365))))

(declare-fun b!5207039 () Bool)

(assert (=> b!5207039 (= e!3241957 tp_is_empty!38839)))

(assert (= (and b!5206079 ((_ is ElementMatch!14793) (regTwo!30099 (regOne!30099 r!7292)))) b!5207039))

(assert (= (and b!5206079 ((_ is Concat!23638) (regTwo!30099 (regOne!30099 r!7292)))) b!5207040))

(assert (= (and b!5206079 ((_ is Star!14793) (regTwo!30099 (regOne!30099 r!7292)))) b!5207041))

(assert (= (and b!5206079 ((_ is Union!14793) (regTwo!30099 (regOne!30099 r!7292)))) b!5207042))

(declare-fun b!5207043 () Bool)

(declare-fun e!3241958 () Bool)

(declare-fun tp!1460367 () Bool)

(declare-fun tp!1460368 () Bool)

(assert (=> b!5207043 (= e!3241958 (and tp!1460367 tp!1460368))))

(assert (=> b!5206051 (= tp!1460095 e!3241958)))

(assert (= (and b!5206051 ((_ is Cons!60554) (exprs!4677 (h!67003 (t!373836 zl!343))))) b!5207043))

(declare-fun b!5207046 () Bool)

(declare-fun e!3241959 () Bool)

(declare-fun tp!1460373 () Bool)

(assert (=> b!5207046 (= e!3241959 tp!1460373)))

(declare-fun b!5207045 () Bool)

(declare-fun tp!1460370 () Bool)

(declare-fun tp!1460371 () Bool)

(assert (=> b!5207045 (= e!3241959 (and tp!1460370 tp!1460371))))

(assert (=> b!5206078 (= tp!1460128 e!3241959)))

(declare-fun b!5207047 () Bool)

(declare-fun tp!1460369 () Bool)

(declare-fun tp!1460372 () Bool)

(assert (=> b!5207047 (= e!3241959 (and tp!1460369 tp!1460372))))

(declare-fun b!5207044 () Bool)

(assert (=> b!5207044 (= e!3241959 tp_is_empty!38839)))

(assert (= (and b!5206078 ((_ is ElementMatch!14793) (reg!15122 (regOne!30099 r!7292)))) b!5207044))

(assert (= (and b!5206078 ((_ is Concat!23638) (reg!15122 (regOne!30099 r!7292)))) b!5207045))

(assert (= (and b!5206078 ((_ is Star!14793) (reg!15122 (regOne!30099 r!7292)))) b!5207046))

(assert (= (and b!5206078 ((_ is Union!14793) (reg!15122 (regOne!30099 r!7292)))) b!5207047))

(declare-fun b!5207050 () Bool)

(declare-fun e!3241960 () Bool)

(declare-fun tp!1460378 () Bool)

(assert (=> b!5207050 (= e!3241960 tp!1460378)))

(declare-fun b!5207049 () Bool)

(declare-fun tp!1460375 () Bool)

(declare-fun tp!1460376 () Bool)

(assert (=> b!5207049 (= e!3241960 (and tp!1460375 tp!1460376))))

(assert (=> b!5206065 (= tp!1460109 e!3241960)))

(declare-fun b!5207051 () Bool)

(declare-fun tp!1460374 () Bool)

(declare-fun tp!1460377 () Bool)

(assert (=> b!5207051 (= e!3241960 (and tp!1460374 tp!1460377))))

(declare-fun b!5207048 () Bool)

(assert (=> b!5207048 (= e!3241960 tp_is_empty!38839)))

(assert (= (and b!5206065 ((_ is ElementMatch!14793) (regOne!30099 (regOne!30098 r!7292)))) b!5207048))

(assert (= (and b!5206065 ((_ is Concat!23638) (regOne!30099 (regOne!30098 r!7292)))) b!5207049))

(assert (= (and b!5206065 ((_ is Star!14793) (regOne!30099 (regOne!30098 r!7292)))) b!5207050))

(assert (= (and b!5206065 ((_ is Union!14793) (regOne!30099 (regOne!30098 r!7292)))) b!5207051))

(declare-fun b!5207054 () Bool)

(declare-fun e!3241961 () Bool)

(declare-fun tp!1460383 () Bool)

(assert (=> b!5207054 (= e!3241961 tp!1460383)))

(declare-fun b!5207053 () Bool)

(declare-fun tp!1460380 () Bool)

(declare-fun tp!1460381 () Bool)

(assert (=> b!5207053 (= e!3241961 (and tp!1460380 tp!1460381))))

(assert (=> b!5206065 (= tp!1460112 e!3241961)))

(declare-fun b!5207055 () Bool)

(declare-fun tp!1460379 () Bool)

(declare-fun tp!1460382 () Bool)

(assert (=> b!5207055 (= e!3241961 (and tp!1460379 tp!1460382))))

(declare-fun b!5207052 () Bool)

(assert (=> b!5207052 (= e!3241961 tp_is_empty!38839)))

(assert (= (and b!5206065 ((_ is ElementMatch!14793) (regTwo!30099 (regOne!30098 r!7292)))) b!5207052))

(assert (= (and b!5206065 ((_ is Concat!23638) (regTwo!30099 (regOne!30098 r!7292)))) b!5207053))

(assert (= (and b!5206065 ((_ is Star!14793) (regTwo!30099 (regOne!30098 r!7292)))) b!5207054))

(assert (= (and b!5206065 ((_ is Union!14793) (regTwo!30099 (regOne!30098 r!7292)))) b!5207055))

(declare-fun b!5207058 () Bool)

(declare-fun e!3241962 () Bool)

(declare-fun tp!1460388 () Bool)

(assert (=> b!5207058 (= e!3241962 tp!1460388)))

(declare-fun b!5207057 () Bool)

(declare-fun tp!1460385 () Bool)

(declare-fun tp!1460386 () Bool)

(assert (=> b!5207057 (= e!3241962 (and tp!1460385 tp!1460386))))

(assert (=> b!5206064 (= tp!1460113 e!3241962)))

(declare-fun b!5207059 () Bool)

(declare-fun tp!1460384 () Bool)

(declare-fun tp!1460387 () Bool)

(assert (=> b!5207059 (= e!3241962 (and tp!1460384 tp!1460387))))

(declare-fun b!5207056 () Bool)

(assert (=> b!5207056 (= e!3241962 tp_is_empty!38839)))

(assert (= (and b!5206064 ((_ is ElementMatch!14793) (reg!15122 (regOne!30098 r!7292)))) b!5207056))

(assert (= (and b!5206064 ((_ is Concat!23638) (reg!15122 (regOne!30098 r!7292)))) b!5207057))

(assert (= (and b!5206064 ((_ is Star!14793) (reg!15122 (regOne!30098 r!7292)))) b!5207058))

(assert (= (and b!5206064 ((_ is Union!14793) (reg!15122 (regOne!30098 r!7292)))) b!5207059))

(declare-fun b!5207062 () Bool)

(declare-fun e!3241963 () Bool)

(declare-fun tp!1460393 () Bool)

(assert (=> b!5207062 (= e!3241963 tp!1460393)))

(declare-fun b!5207061 () Bool)

(declare-fun tp!1460390 () Bool)

(declare-fun tp!1460391 () Bool)

(assert (=> b!5207061 (= e!3241963 (and tp!1460390 tp!1460391))))

(assert (=> b!5206063 (= tp!1460110 e!3241963)))

(declare-fun b!5207063 () Bool)

(declare-fun tp!1460389 () Bool)

(declare-fun tp!1460392 () Bool)

(assert (=> b!5207063 (= e!3241963 (and tp!1460389 tp!1460392))))

(declare-fun b!5207060 () Bool)

(assert (=> b!5207060 (= e!3241963 tp_is_empty!38839)))

(assert (= (and b!5206063 ((_ is ElementMatch!14793) (regOne!30098 (regOne!30098 r!7292)))) b!5207060))

(assert (= (and b!5206063 ((_ is Concat!23638) (regOne!30098 (regOne!30098 r!7292)))) b!5207061))

(assert (= (and b!5206063 ((_ is Star!14793) (regOne!30098 (regOne!30098 r!7292)))) b!5207062))

(assert (= (and b!5206063 ((_ is Union!14793) (regOne!30098 (regOne!30098 r!7292)))) b!5207063))

(declare-fun b!5207066 () Bool)

(declare-fun e!3241964 () Bool)

(declare-fun tp!1460398 () Bool)

(assert (=> b!5207066 (= e!3241964 tp!1460398)))

(declare-fun b!5207065 () Bool)

(declare-fun tp!1460395 () Bool)

(declare-fun tp!1460396 () Bool)

(assert (=> b!5207065 (= e!3241964 (and tp!1460395 tp!1460396))))

(assert (=> b!5206063 (= tp!1460111 e!3241964)))

(declare-fun b!5207067 () Bool)

(declare-fun tp!1460394 () Bool)

(declare-fun tp!1460397 () Bool)

(assert (=> b!5207067 (= e!3241964 (and tp!1460394 tp!1460397))))

(declare-fun b!5207064 () Bool)

(assert (=> b!5207064 (= e!3241964 tp_is_empty!38839)))

(assert (= (and b!5206063 ((_ is ElementMatch!14793) (regTwo!30098 (regOne!30098 r!7292)))) b!5207064))

(assert (= (and b!5206063 ((_ is Concat!23638) (regTwo!30098 (regOne!30098 r!7292)))) b!5207065))

(assert (= (and b!5206063 ((_ is Star!14793) (regTwo!30098 (regOne!30098 r!7292)))) b!5207066))

(assert (= (and b!5206063 ((_ is Union!14793) (regTwo!30098 (regOne!30098 r!7292)))) b!5207067))

(declare-fun b!5207070 () Bool)

(declare-fun e!3241965 () Bool)

(declare-fun tp!1460403 () Bool)

(assert (=> b!5207070 (= e!3241965 tp!1460403)))

(declare-fun b!5207069 () Bool)

(declare-fun tp!1460400 () Bool)

(declare-fun tp!1460401 () Bool)

(assert (=> b!5207069 (= e!3241965 (and tp!1460400 tp!1460401))))

(assert (=> b!5206042 (= tp!1460090 e!3241965)))

(declare-fun b!5207071 () Bool)

(declare-fun tp!1460399 () Bool)

(declare-fun tp!1460402 () Bool)

(assert (=> b!5207071 (= e!3241965 (and tp!1460399 tp!1460402))))

(declare-fun b!5207068 () Bool)

(assert (=> b!5207068 (= e!3241965 tp_is_empty!38839)))

(assert (= (and b!5206042 ((_ is ElementMatch!14793) (reg!15122 (reg!15122 r!7292)))) b!5207068))

(assert (= (and b!5206042 ((_ is Concat!23638) (reg!15122 (reg!15122 r!7292)))) b!5207069))

(assert (= (and b!5206042 ((_ is Star!14793) (reg!15122 (reg!15122 r!7292)))) b!5207070))

(assert (= (and b!5206042 ((_ is Union!14793) (reg!15122 (reg!15122 r!7292)))) b!5207071))

(declare-fun b!5207074 () Bool)

(declare-fun e!3241966 () Bool)

(declare-fun tp!1460408 () Bool)

(assert (=> b!5207074 (= e!3241966 tp!1460408)))

(declare-fun b!5207073 () Bool)

(declare-fun tp!1460405 () Bool)

(declare-fun tp!1460406 () Bool)

(assert (=> b!5207073 (= e!3241966 (and tp!1460405 tp!1460406))))

(assert (=> b!5206041 (= tp!1460087 e!3241966)))

(declare-fun b!5207075 () Bool)

(declare-fun tp!1460404 () Bool)

(declare-fun tp!1460407 () Bool)

(assert (=> b!5207075 (= e!3241966 (and tp!1460404 tp!1460407))))

(declare-fun b!5207072 () Bool)

(assert (=> b!5207072 (= e!3241966 tp_is_empty!38839)))

(assert (= (and b!5206041 ((_ is ElementMatch!14793) (regOne!30098 (reg!15122 r!7292)))) b!5207072))

(assert (= (and b!5206041 ((_ is Concat!23638) (regOne!30098 (reg!15122 r!7292)))) b!5207073))

(assert (= (and b!5206041 ((_ is Star!14793) (regOne!30098 (reg!15122 r!7292)))) b!5207074))

(assert (= (and b!5206041 ((_ is Union!14793) (regOne!30098 (reg!15122 r!7292)))) b!5207075))

(declare-fun b!5207078 () Bool)

(declare-fun e!3241967 () Bool)

(declare-fun tp!1460413 () Bool)

(assert (=> b!5207078 (= e!3241967 tp!1460413)))

(declare-fun b!5207077 () Bool)

(declare-fun tp!1460410 () Bool)

(declare-fun tp!1460411 () Bool)

(assert (=> b!5207077 (= e!3241967 (and tp!1460410 tp!1460411))))

(assert (=> b!5206041 (= tp!1460088 e!3241967)))

(declare-fun b!5207079 () Bool)

(declare-fun tp!1460409 () Bool)

(declare-fun tp!1460412 () Bool)

(assert (=> b!5207079 (= e!3241967 (and tp!1460409 tp!1460412))))

(declare-fun b!5207076 () Bool)

(assert (=> b!5207076 (= e!3241967 tp_is_empty!38839)))

(assert (= (and b!5206041 ((_ is ElementMatch!14793) (regTwo!30098 (reg!15122 r!7292)))) b!5207076))

(assert (= (and b!5206041 ((_ is Concat!23638) (regTwo!30098 (reg!15122 r!7292)))) b!5207077))

(assert (= (and b!5206041 ((_ is Star!14793) (regTwo!30098 (reg!15122 r!7292)))) b!5207078))

(assert (= (and b!5206041 ((_ is Union!14793) (regTwo!30098 (reg!15122 r!7292)))) b!5207079))

(declare-fun b!5207080 () Bool)

(declare-fun e!3241968 () Bool)

(declare-fun tp!1460414 () Bool)

(declare-fun tp!1460415 () Bool)

(assert (=> b!5207080 (= e!3241968 (and tp!1460414 tp!1460415))))

(assert (=> b!5206056 (= tp!1460101 e!3241968)))

(assert (= (and b!5206056 ((_ is Cons!60554) (exprs!4677 setElem!33050))) b!5207080))

(declare-fun condSetEmpty!33058 () Bool)

(assert (=> setNonEmpty!33050 (= condSetEmpty!33058 (= setRest!33050 ((as const (Array Context!8354 Bool)) false)))))

(declare-fun setRes!33058 () Bool)

(assert (=> setNonEmpty!33050 (= tp!1460102 setRes!33058)))

(declare-fun setIsEmpty!33058 () Bool)

(assert (=> setIsEmpty!33058 setRes!33058))

(declare-fun setElem!33058 () Context!8354)

(declare-fun tp!1460417 () Bool)

(declare-fun e!3241969 () Bool)

(declare-fun setNonEmpty!33058 () Bool)

(assert (=> setNonEmpty!33058 (= setRes!33058 (and tp!1460417 (inv!80229 setElem!33058) e!3241969))))

(declare-fun setRest!33058 () (InoxSet Context!8354))

(assert (=> setNonEmpty!33058 (= setRest!33050 ((_ map or) (store ((as const (Array Context!8354 Bool)) false) setElem!33058 true) setRest!33058))))

(declare-fun b!5207081 () Bool)

(declare-fun tp!1460416 () Bool)

(assert (=> b!5207081 (= e!3241969 tp!1460416)))

(assert (= (and setNonEmpty!33050 condSetEmpty!33058) setIsEmpty!33058))

(assert (= (and setNonEmpty!33050 (not condSetEmpty!33058)) setNonEmpty!33058))

(assert (= setNonEmpty!33058 b!5207081))

(declare-fun m!6257886 () Bool)

(assert (=> setNonEmpty!33058 m!6257886))

(declare-fun b!5207084 () Bool)

(declare-fun e!3241970 () Bool)

(declare-fun tp!1460422 () Bool)

(assert (=> b!5207084 (= e!3241970 tp!1460422)))

(declare-fun b!5207083 () Bool)

(declare-fun tp!1460419 () Bool)

(declare-fun tp!1460420 () Bool)

(assert (=> b!5207083 (= e!3241970 (and tp!1460419 tp!1460420))))

(assert (=> b!5206061 (= tp!1460107 e!3241970)))

(declare-fun b!5207085 () Bool)

(declare-fun tp!1460418 () Bool)

(declare-fun tp!1460421 () Bool)

(assert (=> b!5207085 (= e!3241970 (and tp!1460418 tp!1460421))))

(declare-fun b!5207082 () Bool)

(assert (=> b!5207082 (= e!3241970 tp_is_empty!38839)))

(assert (= (and b!5206061 ((_ is ElementMatch!14793) (h!67002 (exprs!4677 setElem!33044)))) b!5207082))

(assert (= (and b!5206061 ((_ is Concat!23638) (h!67002 (exprs!4677 setElem!33044)))) b!5207083))

(assert (= (and b!5206061 ((_ is Star!14793) (h!67002 (exprs!4677 setElem!33044)))) b!5207084))

(assert (= (and b!5206061 ((_ is Union!14793) (h!67002 (exprs!4677 setElem!33044)))) b!5207085))

(declare-fun b!5207086 () Bool)

(declare-fun e!3241971 () Bool)

(declare-fun tp!1460423 () Bool)

(declare-fun tp!1460424 () Bool)

(assert (=> b!5207086 (= e!3241971 (and tp!1460423 tp!1460424))))

(assert (=> b!5206061 (= tp!1460108 e!3241971)))

(assert (= (and b!5206061 ((_ is Cons!60554) (t!373835 (exprs!4677 setElem!33044)))) b!5207086))

(declare-fun b!5207088 () Bool)

(declare-fun e!3241973 () Bool)

(declare-fun tp!1460425 () Bool)

(assert (=> b!5207088 (= e!3241973 tp!1460425)))

(declare-fun e!3241972 () Bool)

(declare-fun tp!1460426 () Bool)

(declare-fun b!5207087 () Bool)

(assert (=> b!5207087 (= e!3241972 (and (inv!80229 (h!67003 (t!373836 (t!373836 zl!343)))) e!3241973 tp!1460426))))

(assert (=> b!5206050 (= tp!1460096 e!3241972)))

(assert (= b!5207087 b!5207088))

(assert (= (and b!5206050 ((_ is Cons!60555) (t!373836 (t!373836 zl!343)))) b!5207087))

(declare-fun m!6257888 () Bool)

(assert (=> b!5207087 m!6257888))

(declare-fun b!5207091 () Bool)

(declare-fun e!3241974 () Bool)

(declare-fun tp!1460431 () Bool)

(assert (=> b!5207091 (= e!3241974 tp!1460431)))

(declare-fun b!5207090 () Bool)

(declare-fun tp!1460428 () Bool)

(declare-fun tp!1460429 () Bool)

(assert (=> b!5207090 (= e!3241974 (and tp!1460428 tp!1460429))))

(assert (=> b!5206077 (= tp!1460125 e!3241974)))

(declare-fun b!5207092 () Bool)

(declare-fun tp!1460427 () Bool)

(declare-fun tp!1460430 () Bool)

(assert (=> b!5207092 (= e!3241974 (and tp!1460427 tp!1460430))))

(declare-fun b!5207089 () Bool)

(assert (=> b!5207089 (= e!3241974 tp_is_empty!38839)))

(assert (= (and b!5206077 ((_ is ElementMatch!14793) (regOne!30098 (regOne!30099 r!7292)))) b!5207089))

(assert (= (and b!5206077 ((_ is Concat!23638) (regOne!30098 (regOne!30099 r!7292)))) b!5207090))

(assert (= (and b!5206077 ((_ is Star!14793) (regOne!30098 (regOne!30099 r!7292)))) b!5207091))

(assert (= (and b!5206077 ((_ is Union!14793) (regOne!30098 (regOne!30099 r!7292)))) b!5207092))

(declare-fun b!5207095 () Bool)

(declare-fun e!3241975 () Bool)

(declare-fun tp!1460436 () Bool)

(assert (=> b!5207095 (= e!3241975 tp!1460436)))

(declare-fun b!5207094 () Bool)

(declare-fun tp!1460433 () Bool)

(declare-fun tp!1460434 () Bool)

(assert (=> b!5207094 (= e!3241975 (and tp!1460433 tp!1460434))))

(assert (=> b!5206077 (= tp!1460126 e!3241975)))

(declare-fun b!5207096 () Bool)

(declare-fun tp!1460432 () Bool)

(declare-fun tp!1460435 () Bool)

(assert (=> b!5207096 (= e!3241975 (and tp!1460432 tp!1460435))))

(declare-fun b!5207093 () Bool)

(assert (=> b!5207093 (= e!3241975 tp_is_empty!38839)))

(assert (= (and b!5206077 ((_ is ElementMatch!14793) (regTwo!30098 (regOne!30099 r!7292)))) b!5207093))

(assert (= (and b!5206077 ((_ is Concat!23638) (regTwo!30098 (regOne!30099 r!7292)))) b!5207094))

(assert (= (and b!5206077 ((_ is Star!14793) (regTwo!30098 (regOne!30099 r!7292)))) b!5207095))

(assert (= (and b!5206077 ((_ is Union!14793) (regTwo!30098 (regOne!30099 r!7292)))) b!5207096))

(declare-fun b!5207099 () Bool)

(declare-fun e!3241976 () Bool)

(declare-fun tp!1460441 () Bool)

(assert (=> b!5207099 (= e!3241976 tp!1460441)))

(declare-fun b!5207098 () Bool)

(declare-fun tp!1460438 () Bool)

(declare-fun tp!1460439 () Bool)

(assert (=> b!5207098 (= e!3241976 (and tp!1460438 tp!1460439))))

(assert (=> b!5206043 (= tp!1460086 e!3241976)))

(declare-fun b!5207100 () Bool)

(declare-fun tp!1460437 () Bool)

(declare-fun tp!1460440 () Bool)

(assert (=> b!5207100 (= e!3241976 (and tp!1460437 tp!1460440))))

(declare-fun b!5207097 () Bool)

(assert (=> b!5207097 (= e!3241976 tp_is_empty!38839)))

(assert (= (and b!5206043 ((_ is ElementMatch!14793) (regOne!30099 (reg!15122 r!7292)))) b!5207097))

(assert (= (and b!5206043 ((_ is Concat!23638) (regOne!30099 (reg!15122 r!7292)))) b!5207098))

(assert (= (and b!5206043 ((_ is Star!14793) (regOne!30099 (reg!15122 r!7292)))) b!5207099))

(assert (= (and b!5206043 ((_ is Union!14793) (regOne!30099 (reg!15122 r!7292)))) b!5207100))

(declare-fun b!5207103 () Bool)

(declare-fun e!3241977 () Bool)

(declare-fun tp!1460446 () Bool)

(assert (=> b!5207103 (= e!3241977 tp!1460446)))

(declare-fun b!5207102 () Bool)

(declare-fun tp!1460443 () Bool)

(declare-fun tp!1460444 () Bool)

(assert (=> b!5207102 (= e!3241977 (and tp!1460443 tp!1460444))))

(assert (=> b!5206043 (= tp!1460089 e!3241977)))

(declare-fun b!5207104 () Bool)

(declare-fun tp!1460442 () Bool)

(declare-fun tp!1460445 () Bool)

(assert (=> b!5207104 (= e!3241977 (and tp!1460442 tp!1460445))))

(declare-fun b!5207101 () Bool)

(assert (=> b!5207101 (= e!3241977 tp_is_empty!38839)))

(assert (= (and b!5206043 ((_ is ElementMatch!14793) (regTwo!30099 (reg!15122 r!7292)))) b!5207101))

(assert (= (and b!5206043 ((_ is Concat!23638) (regTwo!30099 (reg!15122 r!7292)))) b!5207102))

(assert (= (and b!5206043 ((_ is Star!14793) (regTwo!30099 (reg!15122 r!7292)))) b!5207103))

(assert (= (and b!5206043 ((_ is Union!14793) (regTwo!30099 (reg!15122 r!7292)))) b!5207104))

(declare-fun b!5207107 () Bool)

(declare-fun e!3241978 () Bool)

(declare-fun tp!1460451 () Bool)

(assert (=> b!5207107 (= e!3241978 tp!1460451)))

(declare-fun b!5207106 () Bool)

(declare-fun tp!1460448 () Bool)

(declare-fun tp!1460449 () Bool)

(assert (=> b!5207106 (= e!3241978 (and tp!1460448 tp!1460449))))

(assert (=> b!5206070 (= tp!1460119 e!3241978)))

(declare-fun b!5207108 () Bool)

(declare-fun tp!1460447 () Bool)

(declare-fun tp!1460450 () Bool)

(assert (=> b!5207108 (= e!3241978 (and tp!1460447 tp!1460450))))

(declare-fun b!5207105 () Bool)

(assert (=> b!5207105 (= e!3241978 tp_is_empty!38839)))

(assert (= (and b!5206070 ((_ is ElementMatch!14793) (h!67002 (exprs!4677 (h!67003 zl!343))))) b!5207105))

(assert (= (and b!5206070 ((_ is Concat!23638) (h!67002 (exprs!4677 (h!67003 zl!343))))) b!5207106))

(assert (= (and b!5206070 ((_ is Star!14793) (h!67002 (exprs!4677 (h!67003 zl!343))))) b!5207107))

(assert (= (and b!5206070 ((_ is Union!14793) (h!67002 (exprs!4677 (h!67003 zl!343))))) b!5207108))

(declare-fun b!5207109 () Bool)

(declare-fun e!3241979 () Bool)

(declare-fun tp!1460452 () Bool)

(declare-fun tp!1460453 () Bool)

(assert (=> b!5207109 (= e!3241979 (and tp!1460452 tp!1460453))))

(assert (=> b!5206070 (= tp!1460120 e!3241979)))

(assert (= (and b!5206070 ((_ is Cons!60554) (t!373835 (exprs!4677 (h!67003 zl!343))))) b!5207109))

(declare-fun b_lambda!201457 () Bool)

(assert (= b_lambda!201445 (or d!1678796 b_lambda!201457)))

(declare-fun bs!1210189 () Bool)

(declare-fun d!1679282 () Bool)

(assert (= bs!1210189 (and d!1679282 d!1678796)))

(assert (=> bs!1210189 (= (dynLambda!23921 lambda!260937 (h!67002 lt!2141570)) (validRegex!6529 (h!67002 lt!2141570)))))

(declare-fun m!6257890 () Bool)

(assert (=> bs!1210189 m!6257890))

(assert (=> b!5206712 d!1679282))

(declare-fun b_lambda!201459 () Bool)

(assert (= b_lambda!201451 (or d!1678776 b_lambda!201459)))

(declare-fun bs!1210190 () Bool)

(declare-fun d!1679284 () Bool)

(assert (= bs!1210190 (and d!1679284 d!1678776)))

(assert (=> bs!1210190 (= (dynLambda!23921 lambda!260920 (h!67002 (exprs!4677 (h!67003 zl!343)))) (validRegex!6529 (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(declare-fun m!6257892 () Bool)

(assert (=> bs!1210190 m!6257892))

(assert (=> b!5206840 d!1679284))

(declare-fun b_lambda!201461 () Bool)

(assert (= b_lambda!201455 (or b!5205360 b_lambda!201461)))

(assert (=> d!1679272 d!1678894))

(declare-fun b_lambda!201463 () Bool)

(assert (= b_lambda!201447 (or d!1678784 b_lambda!201463)))

(declare-fun bs!1210191 () Bool)

(declare-fun d!1679286 () Bool)

(assert (= bs!1210191 (and d!1679286 d!1678784)))

(assert (=> bs!1210191 (= (dynLambda!23921 lambda!260932 (h!67002 (unfocusZipperList!235 zl!343))) (validRegex!6529 (h!67002 (unfocusZipperList!235 zl!343))))))

(declare-fun m!6257894 () Bool)

(assert (=> bs!1210191 m!6257894))

(assert (=> b!5206740 d!1679286))

(declare-fun b_lambda!201465 () Bool)

(assert (= b_lambda!201453 (or d!1678848 b_lambda!201465)))

(declare-fun bs!1210192 () Bool)

(declare-fun d!1679288 () Bool)

(assert (= bs!1210192 (and d!1679288 d!1678848)))

(assert (=> bs!1210192 (= (dynLambda!23921 lambda!260960 (h!67002 (exprs!4677 setElem!33044))) (validRegex!6529 (h!67002 (exprs!4677 setElem!33044))))))

(declare-fun m!6257896 () Bool)

(assert (=> bs!1210192 m!6257896))

(assert (=> b!5206853 d!1679288))

(declare-fun b_lambda!201467 () Bool)

(assert (= b_lambda!201449 (or d!1678876 b_lambda!201467)))

(declare-fun bs!1210193 () Bool)

(declare-fun d!1679290 () Bool)

(assert (= bs!1210193 (and d!1679290 d!1678876)))

(assert (=> bs!1210193 (= (dynLambda!23921 lambda!260973 (h!67002 (exprs!4677 (h!67003 zl!343)))) (validRegex!6529 (h!67002 (exprs!4677 (h!67003 zl!343)))))))

(assert (=> bs!1210193 m!6257892))

(assert (=> b!5206838 d!1679290))

(check-sat (not d!1679250) (not bm!366317) (not b!5207010) (not b!5206820) (not b!5207103) (not bm!366295) (not b!5207053) (not bm!366279) (not d!1679116) (not bm!366240) (not b_lambda!201467) (not bm!366316) (not b!5206901) (not b!5207050) (not b!5206826) (not d!1679150) (not b!5206762) (not b!5206724) (not d!1679258) (not b!5206529) (not b!5206995) (not bm!366269) (not b!5207061) (not bm!366286) (not b!5207090) (not d!1679060) (not b!5207040) (not b!5206716) (not b!5207080) (not b!5207017) (not b!5206871) (not b!5206761) (not b!5206975) (not b!5206787) (not b_lambda!201459) (not b_lambda!201465) (not b!5206868) tp_is_empty!38839 (not b!5206937) (not bm!366304) (not b!5207091) (not b!5207094) (not b!5207028) (not b!5207086) (not b!5206817) (not bm!366261) (not b!5207000) (not b!5207098) (not bm!366280) (not bs!1210190) (not bm!366325) (not b!5207018) (not b!5207109) (not b!5206539) (not b!5207107) (not bm!366288) (not b!5206719) (not b!5206841) (not b!5206698) (not b!5206745) (not b!5206979) (not b!5206874) (not bs!1210189) (not b!5207088) (not setNonEmpty!33058) (not bs!1210192) (not b!5207067) (not d!1679200) (not b!5206839) (not b!5206528) (not b!5206675) (not b!5206981) (not d!1679162) (not bm!366306) (not b!5206800) (not b!5206784) (not b!5207083) (not b!5206695) (not bm!366285) (not d!1679084) (not b!5207037) (not b_lambda!201461) (not bm!366290) (not d!1679198) (not b!5206914) (not b!5206940) (not b!5207045) (not b!5206997) (not bm!366270) (not b!5207036) (not b!5206943) (not b!5207013) (not d!1679278) (not b!5206476) (not bm!366332) (not b!5206591) (not d!1679230) (not d!1679148) (not b!5206754) (not bs!1210191) (not b!5206946) (not b!5206983) (not b!5207034) (not b!5207070) (not b!5206867) (not b!5206643) (not b!5207065) (not d!1679186) (not b!5206798) (not b!5207104) (not b!5206467) (not bm!366319) (not b!5206857) (not b!5207016) (not d!1679134) (not b!5207075) (not d!1679224) (not b!5206771) (not b!5207020) (not b!5206854) (not b!5207079) (not bm!366264) (not b!5206877) (not b!5207085) (not d!1679160) (not d!1679260) (not b!5207062) (not b!5206781) (not b!5206535) (not b!5206720) (not b!5206697) (not b!5206734) (not d!1679220) (not b!5206425) (not b!5207071) (not b!5206694) (not bm!366281) (not d!1679158) (not b!5206645) (not bm!366282) (not d!1679140) (not b!5207032) (not bs!1210193) (not d!1679088) (not b!5206730) (not bm!366296) (not b!5206936) (not b!5207002) (not b!5206982) (not b!5206514) (not b!5206706) (not bm!366322) (not b!5207095) (not b!5206980) (not d!1679272) (not bm!366266) (not d!1679214) (not bm!366239) (not b!5207009) (not bm!366262) (not b!5207025) (not b!5206999) (not b!5207058) (not b!5206722) (not b!5206690) (not b!5207087) (not b!5207106) (not b!5207099) (not b!5207041) (not b!5207008) (not b!5206920) (not b!5206790) (not b!5206729) (not b!5207033) (not b!5206424) (not b!5207030) (not b!5207004) (not b!5206703) (not d!1679238) (not b!5206741) (not b!5206996) (not b!5207014) (not b!5207081) (not b_lambda!201463) (not bm!366273) (not b!5206451) (not b!5206691) (not b!5207001) (not b!5206823) (not b!5207046) (not b!5207063) (not d!1679152) (not b!5206973) (not d!1679276) (not bm!366298) (not b!5207069) (not b!5206972) (not bm!366283) (not b!5207074) (not d!1679240) (not b!5207108) (not b!5206705) (not bm!366268) (not d!1679216) (not b!5206644) (not b!5207051) (not bm!366278) (not b!5206723) (not bm!366293) (not bm!366335) (not b!5206806) (not b!5207096) (not bm!366244) (not bm!366272) (not d!1679064) (not d!1679196) (not b!5207012) (not b!5207038) (not b!5207057) (not d!1679208) (not b!5207005) (not d!1679044) (not b!5207006) (not b!5206878) (not b!5206947) (not b!5207042) (not b!5206702) (not b_lambda!201457) (not bm!366333) (not b!5207100) (not d!1679112) (not b!5207054) (not bm!366323) (not b!5206532) (not bm!366327) (not bm!366292) (not bm!366320) (not b!5206765) (not bm!366275) (not bm!366243) (not b!5206475) (not b!5207022) (not b!5207049) (not b!5206827) (not d!1679268) (not d!1679138) (not b!5206713) (not b!5206721) (not b!5206926) (not b!5207078) (not b!5206707) (not b!5206538) (not d!1679142) (not b!5207092) (not b!5207047) (not d!1679180) (not bm!366237) (not b!5207059) (not b!5206832) (not d!1679184) (not d!1679052) (not b!5206912) (not setNonEmpty!33057) (not bm!366336) (not bm!366302) (not b!5206844) (not b!5206727) (not b!5206592) (not b!5207084) (not b!5207066) (not d!1679054) (not b!5206700) (not b!5207026) (not b!5207029) (not b!5207021) (not b!5206988) (not b!5206791) (not b!5206801) (not b!5207102) (not b!5207043) (not b!5207024) (not d!1679190) (not d!1679120) (not b!5206816) (not b!5206978) (not bm!366301) (not b_lambda!201419) (not b!5207055) (not bm!366276) (not b!5206780) (not b!5207073) (not b!5207077) (not b!5206715))
(check-sat)
