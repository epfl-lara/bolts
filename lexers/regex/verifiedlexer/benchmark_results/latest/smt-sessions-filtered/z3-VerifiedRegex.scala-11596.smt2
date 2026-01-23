; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!642986 () Bool)

(assert start!642986)

(declare-fun b!6561283 () Bool)

(assert (=> b!6561283 true))

(assert (=> b!6561283 true))

(declare-fun lambda!365042 () Int)

(declare-fun lambda!365041 () Int)

(assert (=> b!6561283 (not (= lambda!365042 lambda!365041))))

(assert (=> b!6561283 true))

(assert (=> b!6561283 true))

(declare-fun b!6561279 () Bool)

(assert (=> b!6561279 true))

(declare-fun b!6561265 () Bool)

(assert (=> b!6561265 true))

(declare-fun bs!1674605 () Bool)

(declare-fun b!6561287 () Bool)

(assert (= bs!1674605 (and b!6561287 b!6561283)))

(declare-fun lambda!365046 () Int)

(declare-datatypes ((C!33148 0))(
  ( (C!33149 (val!26276 Int)) )
))
(declare-datatypes ((Regex!16439 0))(
  ( (ElementMatch!16439 (c!1205620 C!33148)) (Concat!25284 (regOne!33390 Regex!16439) (regTwo!33390 Regex!16439)) (EmptyExpr!16439) (Star!16439 (reg!16768 Regex!16439)) (EmptyLang!16439) (Union!16439 (regOne!33391 Regex!16439) (regTwo!33391 Regex!16439)) )
))
(declare-fun r!7292 () Regex!16439)

(declare-fun lt!2406360 () Regex!16439)

(assert (=> bs!1674605 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365046 lambda!365041))))

(assert (=> bs!1674605 (not (= lambda!365046 lambda!365042))))

(assert (=> b!6561287 true))

(assert (=> b!6561287 true))

(assert (=> b!6561287 true))

(declare-fun lambda!365047 () Int)

(assert (=> bs!1674605 (not (= lambda!365047 lambda!365041))))

(assert (=> bs!1674605 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365047 lambda!365042))))

(assert (=> b!6561287 (not (= lambda!365047 lambda!365046))))

(assert (=> b!6561287 true))

(assert (=> b!6561287 true))

(assert (=> b!6561287 true))

(declare-fun bs!1674606 () Bool)

(declare-fun b!6561249 () Bool)

(assert (= bs!1674606 (and b!6561249 b!6561283)))

(declare-datatypes ((List!65616 0))(
  ( (Nil!65492) (Cons!65492 (h!71940 C!33148) (t!379258 List!65616)) )
))
(declare-fun s!2326 () List!65616)

(declare-fun lt!2406358 () Regex!16439)

(declare-datatypes ((tuple2!66836 0))(
  ( (tuple2!66837 (_1!36721 List!65616) (_2!36721 List!65616)) )
))
(declare-fun lt!2406397 () tuple2!66836)

(declare-fun lambda!365048 () Int)

(assert (=> bs!1674606 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 r!7292)) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365048 lambda!365041))))

(assert (=> bs!1674606 (not (= lambda!365048 lambda!365042))))

(declare-fun bs!1674607 () Bool)

(assert (= bs!1674607 (and b!6561249 b!6561287)))

(assert (=> bs!1674607 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) lt!2406360) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365048 lambda!365046))))

(assert (=> bs!1674607 (not (= lambda!365048 lambda!365047))))

(assert (=> b!6561249 true))

(assert (=> b!6561249 true))

(assert (=> b!6561249 true))

(declare-fun lambda!365049 () Int)

(assert (=> bs!1674607 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) lt!2406360) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365049 lambda!365047))))

(assert (=> b!6561249 (not (= lambda!365049 lambda!365048))))

(assert (=> bs!1674606 (not (= lambda!365049 lambda!365041))))

(assert (=> bs!1674606 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 r!7292)) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365049 lambda!365042))))

(assert (=> bs!1674607 (not (= lambda!365049 lambda!365046))))

(assert (=> b!6561249 true))

(assert (=> b!6561249 true))

(assert (=> b!6561249 true))

(declare-fun b!6561244 () Bool)

(declare-fun e!3971932 () Bool)

(declare-fun e!3971933 () Bool)

(assert (=> b!6561244 (= e!3971932 e!3971933)))

(declare-fun res!2692469 () Bool)

(assert (=> b!6561244 (=> res!2692469 e!3971933)))

(declare-fun lt!2406375 () List!65616)

(assert (=> b!6561244 (= res!2692469 (not (= s!2326 lt!2406375)))))

(declare-fun lt!2406377 () tuple2!66836)

(declare-fun ++!14580 (List!65616 List!65616) List!65616)

(assert (=> b!6561244 (= lt!2406375 (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377)))))

(declare-datatypes ((Option!16330 0))(
  ( (None!16329) (Some!16329 (v!52514 tuple2!66836)) )
))
(declare-fun lt!2406388 () Option!16330)

(declare-fun get!22740 (Option!16330) tuple2!66836)

(assert (=> b!6561244 (= lt!2406377 (get!22740 lt!2406388))))

(declare-fun isDefined!13033 (Option!16330) Bool)

(assert (=> b!6561244 (isDefined!13033 lt!2406388)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65617 0))(
  ( (Nil!65493) (Cons!65493 (h!71941 Regex!16439) (t!379259 List!65617)) )
))
(declare-datatypes ((Context!11646 0))(
  ( (Context!11647 (exprs!6323 List!65617)) )
))
(declare-fun lt!2406394 () (InoxSet Context!11646))

(declare-fun lt!2406365 () (InoxSet Context!11646))

(declare-fun findConcatSeparationZippers!204 ((InoxSet Context!11646) (InoxSet Context!11646) List!65616 List!65616 List!65616) Option!16330)

(assert (=> b!6561244 (= lt!2406388 (findConcatSeparationZippers!204 lt!2406365 lt!2406394 Nil!65492 s!2326 s!2326))))

(declare-datatypes ((Unit!159091 0))(
  ( (Unit!159092) )
))
(declare-fun lt!2406362 () Unit!159091)

(declare-fun lt!2406352 () Context!11646)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!204 ((InoxSet Context!11646) Context!11646 List!65616) Unit!159091)

(assert (=> b!6561244 (= lt!2406362 (lemmaConcatZipperMatchesStringThenFindConcatDefined!204 lt!2406365 lt!2406352 s!2326))))

(declare-fun b!6561245 () Bool)

(declare-fun e!3971940 () Bool)

(declare-fun tp!1812642 () Bool)

(assert (=> b!6561245 (= e!3971940 tp!1812642)))

(declare-fun b!6561246 () Bool)

(declare-fun e!3971926 () Unit!159091)

(declare-fun Unit!159093 () Unit!159091)

(assert (=> b!6561246 (= e!3971926 Unit!159093)))

(declare-fun lt!2406381 () (InoxSet Context!11646))

(declare-fun lt!2406398 () Unit!159091)

(declare-fun lt!2406348 () (InoxSet Context!11646))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1270 ((InoxSet Context!11646) (InoxSet Context!11646) List!65616) Unit!159091)

(assert (=> b!6561246 (= lt!2406398 (lemmaZipperConcatMatchesSameAsBothZippers!1270 lt!2406348 lt!2406381 (t!379258 s!2326)))))

(declare-fun res!2692468 () Bool)

(declare-fun matchZipper!2451 ((InoxSet Context!11646) List!65616) Bool)

(assert (=> b!6561246 (= res!2692468 (matchZipper!2451 lt!2406348 (t!379258 s!2326)))))

(declare-fun e!3971938 () Bool)

(assert (=> b!6561246 (=> res!2692468 e!3971938)))

(assert (=> b!6561246 (= (matchZipper!2451 ((_ map or) lt!2406348 lt!2406381) (t!379258 s!2326)) e!3971938)))

(declare-fun b!6561247 () Bool)

(declare-fun e!3971924 () Bool)

(declare-fun e!3971939 () Bool)

(assert (=> b!6561247 (= e!3971924 (not e!3971939))))

(declare-fun res!2692473 () Bool)

(assert (=> b!6561247 (=> res!2692473 e!3971939)))

(declare-datatypes ((List!65618 0))(
  ( (Nil!65494) (Cons!65494 (h!71942 Context!11646) (t!379260 List!65618)) )
))
(declare-fun zl!343 () List!65618)

(get-info :version)

(assert (=> b!6561247 (= res!2692473 (not ((_ is Cons!65494) zl!343)))))

(declare-fun lt!2406389 () Bool)

(declare-fun matchRSpec!3540 (Regex!16439 List!65616) Bool)

(assert (=> b!6561247 (= lt!2406389 (matchRSpec!3540 r!7292 s!2326))))

(declare-fun matchR!8622 (Regex!16439 List!65616) Bool)

(assert (=> b!6561247 (= lt!2406389 (matchR!8622 r!7292 s!2326))))

(declare-fun lt!2406343 () Unit!159091)

(declare-fun mainMatchTheorem!3540 (Regex!16439 List!65616) Unit!159091)

(assert (=> b!6561247 (= lt!2406343 (mainMatchTheorem!3540 r!7292 s!2326))))

(declare-fun b!6561248 () Bool)

(declare-fun e!3971930 () Bool)

(declare-fun e!3971927 () Bool)

(assert (=> b!6561248 (= e!3971930 e!3971927)))

(declare-fun res!2692483 () Bool)

(assert (=> b!6561248 (=> res!2692483 e!3971927)))

(declare-fun lt!2406393 () List!65618)

(declare-fun lt!2406341 () Regex!16439)

(declare-fun unfocusZipper!2181 (List!65618) Regex!16439)

(assert (=> b!6561248 (= res!2692483 (not (= (unfocusZipper!2181 lt!2406393) lt!2406341)))))

(assert (=> b!6561248 (= lt!2406393 (Cons!65494 lt!2406352 Nil!65494))))

(declare-fun e!3971928 () Bool)

(declare-fun e!3971950 () Bool)

(assert (=> b!6561249 (= e!3971928 e!3971950)))

(declare-fun res!2692490 () Bool)

(assert (=> b!6561249 (=> res!2692490 e!3971950)))

(declare-fun validRegex!8175 (Regex!16439) Bool)

(assert (=> b!6561249 (= res!2692490 (not (validRegex!8175 (reg!16768 (regOne!33390 r!7292)))))))

(declare-fun Exists!3509 (Int) Bool)

(assert (=> b!6561249 (= (Exists!3509 lambda!365048) (Exists!3509 lambda!365049))))

(declare-fun lt!2406391 () Unit!159091)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2046 (Regex!16439 Regex!16439 List!65616) Unit!159091)

(assert (=> b!6561249 (= lt!2406391 (lemmaExistCutMatchRandMatchRSpecEquivalent!2046 (reg!16768 (regOne!33390 r!7292)) lt!2406358 (_1!36721 lt!2406397)))))

(declare-fun findConcatSeparation!2744 (Regex!16439 Regex!16439 List!65616 List!65616 List!65616) Option!16330)

(assert (=> b!6561249 (= (isDefined!13033 (findConcatSeparation!2744 (reg!16768 (regOne!33390 r!7292)) lt!2406358 Nil!65492 (_1!36721 lt!2406397) (_1!36721 lt!2406397))) (Exists!3509 lambda!365048))))

(declare-fun lt!2406363 () Unit!159091)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2508 (Regex!16439 Regex!16439 List!65616) Unit!159091)

(assert (=> b!6561249 (= lt!2406363 (lemmaFindConcatSeparationEquivalentToExists!2508 (reg!16768 (regOne!33390 r!7292)) lt!2406358 (_1!36721 lt!2406397)))))

(assert (=> b!6561249 (matchRSpec!3540 lt!2406360 (_1!36721 lt!2406397))))

(declare-fun lt!2406371 () Unit!159091)

(assert (=> b!6561249 (= lt!2406371 (mainMatchTheorem!3540 lt!2406360 (_1!36721 lt!2406397)))))

(declare-fun b!6561250 () Bool)

(declare-fun e!3971937 () Bool)

(assert (=> b!6561250 (= e!3971937 e!3971924)))

(declare-fun res!2692494 () Bool)

(assert (=> b!6561250 (=> (not res!2692494) (not e!3971924))))

(declare-fun lt!2406384 () Regex!16439)

(assert (=> b!6561250 (= res!2692494 (= r!7292 lt!2406384))))

(assert (=> b!6561250 (= lt!2406384 (unfocusZipper!2181 zl!343))))

(declare-fun b!6561251 () Bool)

(declare-fun e!3971935 () Bool)

(declare-fun e!3971936 () Bool)

(assert (=> b!6561251 (= e!3971935 e!3971936)))

(declare-fun res!2692497 () Bool)

(assert (=> b!6561251 (=> res!2692497 e!3971936)))

(declare-fun lt!2406353 () (InoxSet Context!11646))

(assert (=> b!6561251 (= res!2692497 (not (= lt!2406348 lt!2406353)))))

(declare-fun derivationStepZipperDown!1687 (Regex!16439 Context!11646 C!33148) (InoxSet Context!11646))

(assert (=> b!6561251 (= lt!2406353 (derivationStepZipperDown!1687 (reg!16768 (regOne!33390 r!7292)) lt!2406352 (h!71940 s!2326)))))

(declare-fun lt!2406366 () List!65617)

(assert (=> b!6561251 (= lt!2406352 (Context!11647 lt!2406366))))

(assert (=> b!6561251 (= lt!2406366 (Cons!65493 lt!2406358 (t!379259 (exprs!6323 (h!71942 zl!343)))))))

(assert (=> b!6561251 (= lt!2406358 (Star!16439 (reg!16768 (regOne!33390 r!7292))))))

(declare-fun b!6561252 () Bool)

(declare-fun e!3971929 () Bool)

(declare-fun e!3971923 () Bool)

(assert (=> b!6561252 (= e!3971929 e!3971923)))

(declare-fun res!2692498 () Bool)

(assert (=> b!6561252 (=> res!2692498 e!3971923)))

(assert (=> b!6561252 (= res!2692498 (not (= r!7292 lt!2406341)))))

(assert (=> b!6561252 (= lt!2406341 (Concat!25284 lt!2406358 (regTwo!33390 r!7292)))))

(declare-fun b!6561253 () Bool)

(declare-fun e!3971946 () Bool)

(declare-fun lt!2406357 () Bool)

(assert (=> b!6561253 (= e!3971946 lt!2406357)))

(declare-fun b!6561254 () Bool)

(declare-fun e!3971942 () Bool)

(declare-fun tp!1812643 () Bool)

(assert (=> b!6561254 (= e!3971942 tp!1812643)))

(declare-fun b!6561255 () Bool)

(declare-fun e!3971944 () Bool)

(assert (=> b!6561255 (= e!3971944 (not (matchZipper!2451 lt!2406381 (t!379258 s!2326))))))

(declare-fun b!6561256 () Bool)

(declare-fun res!2692487 () Bool)

(assert (=> b!6561256 (=> res!2692487 e!3971933)))

(assert (=> b!6561256 (= res!2692487 (not (matchZipper!2451 lt!2406394 (_2!36721 lt!2406377))))))

(declare-fun b!6561257 () Bool)

(declare-fun e!3971931 () Bool)

(declare-fun tp_is_empty!42131 () Bool)

(declare-fun tp!1812646 () Bool)

(assert (=> b!6561257 (= e!3971931 (and tp_is_empty!42131 tp!1812646))))

(declare-fun b!6561258 () Bool)

(declare-fun Unit!159094 () Unit!159091)

(assert (=> b!6561258 (= e!3971926 Unit!159094)))

(declare-fun b!6561259 () Bool)

(declare-fun res!2692489 () Bool)

(declare-fun e!3971947 () Bool)

(assert (=> b!6561259 (=> res!2692489 e!3971947)))

(declare-fun isEmpty!37733 (List!65617) Bool)

(assert (=> b!6561259 (= res!2692489 (isEmpty!37733 (t!379259 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun b!6561260 () Bool)

(declare-fun e!3971949 () Bool)

(assert (=> b!6561260 (= e!3971927 e!3971949)))

(declare-fun res!2692462 () Bool)

(assert (=> b!6561260 (=> res!2692462 e!3971949)))

(assert (=> b!6561260 (= res!2692462 lt!2406389)))

(declare-fun lt!2406349 () Regex!16439)

(assert (=> b!6561260 (= lt!2406357 (matchRSpec!3540 lt!2406349 s!2326))))

(assert (=> b!6561260 (= lt!2406357 (matchR!8622 lt!2406349 s!2326))))

(declare-fun lt!2406392 () Unit!159091)

(assert (=> b!6561260 (= lt!2406392 (mainMatchTheorem!3540 lt!2406349 s!2326))))

(declare-fun b!6561261 () Bool)

(declare-fun res!2692470 () Bool)

(assert (=> b!6561261 (=> res!2692470 e!3971933)))

(assert (=> b!6561261 (= res!2692470 (not (matchZipper!2451 lt!2406365 (_1!36721 lt!2406377))))))

(declare-fun b!6561262 () Bool)

(declare-fun e!3971948 () Bool)

(assert (=> b!6561262 (= e!3971949 e!3971948)))

(declare-fun res!2692463 () Bool)

(assert (=> b!6561262 (=> res!2692463 e!3971948)))

(assert (=> b!6561262 (= res!2692463 e!3971944)))

(declare-fun res!2692475 () Bool)

(assert (=> b!6561262 (=> (not res!2692475) (not e!3971944))))

(declare-fun lt!2406369 () Bool)

(assert (=> b!6561262 (= res!2692475 (not lt!2406369))))

(assert (=> b!6561262 (= lt!2406369 (matchZipper!2451 lt!2406348 (t!379258 s!2326)))))

(declare-fun b!6561263 () Bool)

(declare-fun e!3971941 () Bool)

(declare-fun nullable!6432 (Regex!16439) Bool)

(assert (=> b!6561263 (= e!3971941 (nullable!6432 (regOne!33390 (regOne!33390 r!7292))))))

(declare-fun b!6561264 () Bool)

(declare-fun e!3971934 () Bool)

(assert (=> b!6561264 (= e!3971923 e!3971934)))

(declare-fun res!2692482 () Bool)

(assert (=> b!6561264 (=> res!2692482 e!3971934)))

(declare-fun lt!2406382 () Context!11646)

(assert (=> b!6561264 (= res!2692482 (not (= (unfocusZipper!2181 (Cons!65494 lt!2406382 Nil!65494)) lt!2406349)))))

(assert (=> b!6561264 (= lt!2406349 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406341))))

(assert (=> b!6561265 (= e!3971948 e!3971932)))

(declare-fun res!2692485 () Bool)

(assert (=> b!6561265 (=> res!2692485 e!3971932)))

(declare-fun lt!2406385 () (InoxSet Context!11646))

(declare-fun appendTo!200 ((InoxSet Context!11646) Context!11646) (InoxSet Context!11646))

(assert (=> b!6561265 (= res!2692485 (not (= (appendTo!200 lt!2406365 lt!2406352) lt!2406385)))))

(declare-fun lambda!365044 () Int)

(declare-fun lt!2406344 () List!65617)

(declare-fun map!14967 ((InoxSet Context!11646) Int) (InoxSet Context!11646))

(declare-fun ++!14581 (List!65617 List!65617) List!65617)

(assert (=> b!6561265 (= (map!14967 lt!2406365 lambda!365044) (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (++!14581 lt!2406344 lt!2406366)) true))))

(declare-fun lt!2406356 () Unit!159091)

(declare-fun lambda!365045 () Int)

(declare-fun lemmaConcatPreservesForall!412 (List!65617 List!65617 Int) Unit!159091)

(assert (=> b!6561265 (= lt!2406356 (lemmaConcatPreservesForall!412 lt!2406344 lt!2406366 lambda!365045))))

(declare-fun lt!2406347 () Context!11646)

(declare-fun lt!2406378 () Unit!159091)

(declare-fun lemmaMapOnSingletonSet!222 ((InoxSet Context!11646) Context!11646 Int) Unit!159091)

(assert (=> b!6561265 (= lt!2406378 (lemmaMapOnSingletonSet!222 lt!2406365 lt!2406347 lambda!365044))))

(declare-fun b!6561266 () Bool)

(declare-fun e!3971943 () Bool)

(assert (=> b!6561266 (= e!3971936 e!3971943)))

(declare-fun res!2692474 () Bool)

(assert (=> b!6561266 (=> res!2692474 e!3971943)))

(declare-fun lt!2406342 () (InoxSet Context!11646))

(assert (=> b!6561266 (= res!2692474 (not (= lt!2406342 lt!2406353)))))

(declare-fun lambda!365043 () Int)

(declare-fun flatMap!1944 ((InoxSet Context!11646) Int) (InoxSet Context!11646))

(declare-fun derivationStepZipperUp!1613 (Context!11646 C!33148) (InoxSet Context!11646))

(assert (=> b!6561266 (= (flatMap!1944 lt!2406385 lambda!365043) (derivationStepZipperUp!1613 lt!2406382 (h!71940 s!2326)))))

(declare-fun lt!2406339 () Unit!159091)

(declare-fun lemmaFlatMapOnSingletonSet!1470 ((InoxSet Context!11646) Context!11646 Int) Unit!159091)

(assert (=> b!6561266 (= lt!2406339 (lemmaFlatMapOnSingletonSet!1470 lt!2406385 lt!2406382 lambda!365043))))

(declare-fun lt!2406370 () (InoxSet Context!11646))

(assert (=> b!6561266 (= lt!2406370 (derivationStepZipperUp!1613 lt!2406382 (h!71940 s!2326)))))

(declare-fun derivationStepZipper!2405 ((InoxSet Context!11646) C!33148) (InoxSet Context!11646))

(assert (=> b!6561266 (= lt!2406342 (derivationStepZipper!2405 lt!2406385 (h!71940 s!2326)))))

(assert (=> b!6561266 (= lt!2406385 (store ((as const (Array Context!11646 Bool)) false) lt!2406382 true))))

(assert (=> b!6561266 (= lt!2406382 (Context!11647 (Cons!65493 (reg!16768 (regOne!33390 r!7292)) lt!2406366)))))

(declare-fun b!6561267 () Bool)

(declare-fun tp!1812644 () Bool)

(declare-fun tp!1812638 () Bool)

(assert (=> b!6561267 (= e!3971942 (and tp!1812644 tp!1812638))))

(declare-fun b!6561268 () Bool)

(declare-fun res!2692465 () Bool)

(assert (=> b!6561268 (=> res!2692465 e!3971939)))

(declare-fun generalisedUnion!2283 (List!65617) Regex!16439)

(declare-fun unfocusZipperList!1860 (List!65618) List!65617)

(assert (=> b!6561268 (= res!2692465 (not (= r!7292 (generalisedUnion!2283 (unfocusZipperList!1860 zl!343)))))))

(declare-fun b!6561269 () Bool)

(declare-fun res!2692464 () Bool)

(assert (=> b!6561269 (=> res!2692464 e!3971949)))

(declare-fun lt!2406379 () Bool)

(assert (=> b!6561269 (= res!2692464 (not lt!2406379))))

(declare-fun b!6561270 () Bool)

(declare-fun res!2692467 () Bool)

(assert (=> b!6561270 (=> res!2692467 e!3971948)))

(declare-fun lt!2406376 () Bool)

(assert (=> b!6561270 (= res!2692467 (or (not lt!2406369) (not lt!2406376)))))

(declare-fun b!6561271 () Bool)

(declare-fun res!2692486 () Bool)

(assert (=> b!6561271 (=> res!2692486 e!3971939)))

(assert (=> b!6561271 (= res!2692486 (or ((_ is EmptyExpr!16439) r!7292) ((_ is EmptyLang!16439) r!7292) ((_ is ElementMatch!16439) r!7292) ((_ is Union!16439) r!7292) (not ((_ is Concat!25284) r!7292))))))

(declare-fun b!6561272 () Bool)

(declare-fun tp!1812641 () Bool)

(declare-fun tp!1812647 () Bool)

(assert (=> b!6561272 (= e!3971942 (and tp!1812641 tp!1812647))))

(declare-fun e!3971925 () Bool)

(declare-fun e!3971945 () Bool)

(declare-fun b!6561273 () Bool)

(declare-fun tp!1812640 () Bool)

(declare-fun inv!84344 (Context!11646) Bool)

(assert (=> b!6561273 (= e!3971945 (and (inv!84344 (h!71942 zl!343)) e!3971925 tp!1812640))))

(declare-fun b!6561274 () Bool)

(declare-fun res!2692484 () Bool)

(assert (=> b!6561274 (=> res!2692484 e!3971939)))

(declare-fun generalisedConcat!2036 (List!65617) Regex!16439)

(assert (=> b!6561274 (= res!2692484 (not (= r!7292 (generalisedConcat!2036 (exprs!6323 (h!71942 zl!343))))))))

(declare-fun b!6561275 () Bool)

(assert (=> b!6561275 (= e!3971950 (not (nullable!6432 (reg!16768 (regOne!33390 r!7292)))))))

(declare-fun res!2692476 () Bool)

(assert (=> start!642986 (=> (not res!2692476) (not e!3971937))))

(assert (=> start!642986 (= res!2692476 (validRegex!8175 r!7292))))

(assert (=> start!642986 e!3971937))

(assert (=> start!642986 e!3971942))

(declare-fun condSetEmpty!44790 () Bool)

(declare-fun z!1189 () (InoxSet Context!11646))

(assert (=> start!642986 (= condSetEmpty!44790 (= z!1189 ((as const (Array Context!11646 Bool)) false)))))

(declare-fun setRes!44790 () Bool)

(assert (=> start!642986 setRes!44790))

(assert (=> start!642986 e!3971945))

(assert (=> start!642986 e!3971931))

(declare-fun setNonEmpty!44790 () Bool)

(declare-fun tp!1812645 () Bool)

(declare-fun setElem!44790 () Context!11646)

(assert (=> setNonEmpty!44790 (= setRes!44790 (and tp!1812645 (inv!84344 setElem!44790) e!3971940))))

(declare-fun setRest!44790 () (InoxSet Context!11646))

(assert (=> setNonEmpty!44790 (= z!1189 ((_ map or) (store ((as const (Array Context!11646 Bool)) false) setElem!44790 true) setRest!44790))))

(declare-fun b!6561276 () Bool)

(declare-fun res!2692479 () Bool)

(assert (=> b!6561276 (=> res!2692479 e!3971929)))

(assert (=> b!6561276 (= res!2692479 (not (= lt!2406384 r!7292)))))

(declare-fun b!6561277 () Bool)

(declare-fun tp!1812639 () Bool)

(assert (=> b!6561277 (= e!3971925 tp!1812639)))

(declare-fun b!6561278 () Bool)

(assert (=> b!6561278 (= e!3971943 e!3971929)))

(declare-fun res!2692488 () Bool)

(assert (=> b!6561278 (=> res!2692488 e!3971929)))

(assert (=> b!6561278 (= res!2692488 (not (= lt!2406376 (matchZipper!2451 lt!2406342 (t!379258 s!2326)))))))

(assert (=> b!6561278 (= lt!2406376 (matchZipper!2451 lt!2406385 s!2326))))

(assert (=> b!6561279 (= e!3971947 e!3971935)))

(declare-fun res!2692496 () Bool)

(assert (=> b!6561279 (=> res!2692496 e!3971935)))

(assert (=> b!6561279 (= res!2692496 (or (and ((_ is ElementMatch!16439) (regOne!33390 r!7292)) (= (c!1205620 (regOne!33390 r!7292)) (h!71940 s!2326))) ((_ is Union!16439) (regOne!33390 r!7292))))))

(declare-fun lt!2406359 () Unit!159091)

(assert (=> b!6561279 (= lt!2406359 e!3971926)))

(declare-fun c!1205619 () Bool)

(assert (=> b!6561279 (= c!1205619 lt!2406379)))

(assert (=> b!6561279 (= lt!2406379 (nullable!6432 (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(assert (=> b!6561279 (= (flatMap!1944 z!1189 lambda!365043) (derivationStepZipperUp!1613 (h!71942 zl!343) (h!71940 s!2326)))))

(declare-fun lt!2406372 () Unit!159091)

(assert (=> b!6561279 (= lt!2406372 (lemmaFlatMapOnSingletonSet!1470 z!1189 (h!71942 zl!343) lambda!365043))))

(declare-fun lt!2406386 () Context!11646)

(assert (=> b!6561279 (= lt!2406381 (derivationStepZipperUp!1613 lt!2406386 (h!71940 s!2326)))))

(assert (=> b!6561279 (= lt!2406348 (derivationStepZipperDown!1687 (h!71941 (exprs!6323 (h!71942 zl!343))) lt!2406386 (h!71940 s!2326)))))

(assert (=> b!6561279 (= lt!2406386 (Context!11647 (t!379259 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun lt!2406354 () (InoxSet Context!11646))

(assert (=> b!6561279 (= lt!2406354 (derivationStepZipperUp!1613 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343))))) (h!71940 s!2326)))))

(declare-fun b!6561280 () Bool)

(declare-fun res!2692493 () Bool)

(assert (=> b!6561280 (=> res!2692493 e!3971939)))

(declare-fun isEmpty!37734 (List!65618) Bool)

(assert (=> b!6561280 (= res!2692493 (not (isEmpty!37734 (t!379260 zl!343))))))

(declare-fun setIsEmpty!44790 () Bool)

(assert (=> setIsEmpty!44790 setRes!44790))

(declare-fun b!6561281 () Bool)

(assert (=> b!6561281 (= e!3971938 (matchZipper!2451 lt!2406381 (t!379258 s!2326)))))

(declare-fun b!6561282 () Bool)

(declare-fun res!2692481 () Bool)

(assert (=> b!6561282 (=> res!2692481 e!3971935)))

(assert (=> b!6561282 (= res!2692481 (or ((_ is Concat!25284) (regOne!33390 r!7292)) (not ((_ is Star!16439) (regOne!33390 r!7292)))))))

(assert (=> b!6561283 (= e!3971939 e!3971947)))

(declare-fun res!2692492 () Bool)

(assert (=> b!6561283 (=> res!2692492 e!3971947)))

(declare-fun lt!2406340 () Bool)

(assert (=> b!6561283 (= res!2692492 (or (not (= lt!2406389 lt!2406340)) ((_ is Nil!65492) s!2326)))))

(assert (=> b!6561283 (= (Exists!3509 lambda!365041) (Exists!3509 lambda!365042))))

(declare-fun lt!2406373 () Unit!159091)

(assert (=> b!6561283 (= lt!2406373 (lemmaExistCutMatchRandMatchRSpecEquivalent!2046 (regOne!33390 r!7292) (regTwo!33390 r!7292) s!2326))))

(assert (=> b!6561283 (= lt!2406340 (Exists!3509 lambda!365041))))

(assert (=> b!6561283 (= lt!2406340 (isDefined!13033 (findConcatSeparation!2744 (regOne!33390 r!7292) (regTwo!33390 r!7292) Nil!65492 s!2326 s!2326)))))

(declare-fun lt!2406346 () Unit!159091)

(assert (=> b!6561283 (= lt!2406346 (lemmaFindConcatSeparationEquivalentToExists!2508 (regOne!33390 r!7292) (regTwo!33390 r!7292) s!2326))))

(declare-fun b!6561284 () Bool)

(declare-fun res!2692472 () Bool)

(assert (=> b!6561284 (=> res!2692472 e!3971939)))

(assert (=> b!6561284 (= res!2692472 (not ((_ is Cons!65493) (exprs!6323 (h!71942 zl!343)))))))

(declare-fun b!6561285 () Bool)

(assert (=> b!6561285 (= e!3971942 tp_is_empty!42131)))

(declare-fun b!6561286 () Bool)

(declare-fun res!2692480 () Bool)

(assert (=> b!6561286 (=> (not res!2692480) (not e!3971937))))

(declare-fun toList!10223 ((InoxSet Context!11646)) List!65618)

(assert (=> b!6561286 (= res!2692480 (= (toList!10223 z!1189) zl!343))))

(assert (=> b!6561287 (= e!3971933 e!3971928)))

(declare-fun res!2692478 () Bool)

(assert (=> b!6561287 (=> res!2692478 e!3971928)))

(assert (=> b!6561287 (= res!2692478 (not (matchR!8622 lt!2406360 (_1!36721 lt!2406397))))))

(declare-fun lt!2406390 () Option!16330)

(assert (=> b!6561287 (= lt!2406397 (get!22740 lt!2406390))))

(assert (=> b!6561287 (= (Exists!3509 lambda!365046) (Exists!3509 lambda!365047))))

(declare-fun lt!2406395 () Unit!159091)

(assert (=> b!6561287 (= lt!2406395 (lemmaExistCutMatchRandMatchRSpecEquivalent!2046 lt!2406360 (regTwo!33390 r!7292) s!2326))))

(assert (=> b!6561287 (= (isDefined!13033 lt!2406390) (Exists!3509 lambda!365046))))

(assert (=> b!6561287 (= lt!2406390 (findConcatSeparation!2744 lt!2406360 (regTwo!33390 r!7292) Nil!65492 s!2326 s!2326))))

(declare-fun lt!2406383 () Unit!159091)

(assert (=> b!6561287 (= lt!2406383 (lemmaFindConcatSeparationEquivalentToExists!2508 lt!2406360 (regTwo!33390 r!7292) s!2326))))

(declare-fun lt!2406396 () Regex!16439)

(assert (=> b!6561287 (matchRSpec!3540 lt!2406396 s!2326)))

(declare-fun lt!2406351 () Unit!159091)

(assert (=> b!6561287 (= lt!2406351 (mainMatchTheorem!3540 lt!2406396 s!2326))))

(assert (=> b!6561287 (matchR!8622 lt!2406396 s!2326)))

(assert (=> b!6561287 (= lt!2406396 (Concat!25284 lt!2406360 (regTwo!33390 r!7292)))))

(assert (=> b!6561287 (= lt!2406360 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406358))))

(declare-fun lt!2406380 () Unit!159091)

(declare-fun lemmaConcatAssociative!136 (Regex!16439 Regex!16439 Regex!16439 List!65616) Unit!159091)

(assert (=> b!6561287 (= lt!2406380 (lemmaConcatAssociative!136 (reg!16768 (regOne!33390 r!7292)) lt!2406358 (regTwo!33390 r!7292) s!2326))))

(assert (=> b!6561287 e!3971946))

(declare-fun res!2692466 () Bool)

(assert (=> b!6561287 (=> (not res!2692466) (not e!3971946))))

(assert (=> b!6561287 (= res!2692466 (matchR!8622 lt!2406349 lt!2406375))))

(declare-fun lt!2406368 () Unit!159091)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!360 (Regex!16439 Regex!16439 List!65616 List!65616) Unit!159091)

(assert (=> b!6561287 (= lt!2406368 (lemmaTwoRegexMatchThenConcatMatchesConcatString!360 (reg!16768 (regOne!33390 r!7292)) lt!2406341 (_1!36721 lt!2406377) (_2!36721 lt!2406377)))))

(assert (=> b!6561287 (matchR!8622 lt!2406341 (_2!36721 lt!2406377))))

(declare-fun lt!2406355 () Unit!159091)

(declare-fun theoremZipperRegexEquiv!875 ((InoxSet Context!11646) List!65618 Regex!16439 List!65616) Unit!159091)

(assert (=> b!6561287 (= lt!2406355 (theoremZipperRegexEquiv!875 lt!2406394 lt!2406393 lt!2406341 (_2!36721 lt!2406377)))))

(assert (=> b!6561287 (matchR!8622 (reg!16768 (regOne!33390 r!7292)) (_1!36721 lt!2406377))))

(declare-fun lt!2406374 () Unit!159091)

(declare-fun lt!2406367 () List!65618)

(assert (=> b!6561287 (= lt!2406374 (theoremZipperRegexEquiv!875 lt!2406365 lt!2406367 (reg!16768 (regOne!33390 r!7292)) (_1!36721 lt!2406377)))))

(assert (=> b!6561287 (matchZipper!2451 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (++!14581 lt!2406344 lt!2406366)) true) lt!2406375)))

(declare-fun lt!2406387 () Unit!159091)

(assert (=> b!6561287 (= lt!2406387 (lemmaConcatPreservesForall!412 lt!2406344 lt!2406366 lambda!365045))))

(declare-fun lt!2406350 () Unit!159091)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!220 (Context!11646 Context!11646 List!65616 List!65616) Unit!159091)

(assert (=> b!6561287 (= lt!2406350 (lemmaConcatenateContextMatchesConcatOfStrings!220 lt!2406347 lt!2406352 (_1!36721 lt!2406377) (_2!36721 lt!2406377)))))

(declare-fun b!6561288 () Bool)

(assert (=> b!6561288 (= e!3971934 e!3971930)))

(declare-fun res!2692495 () Bool)

(assert (=> b!6561288 (=> res!2692495 e!3971930)))

(assert (=> b!6561288 (= res!2692495 (not (= (unfocusZipper!2181 lt!2406367) (reg!16768 (regOne!33390 r!7292)))))))

(assert (=> b!6561288 (= lt!2406367 (Cons!65494 lt!2406347 Nil!65494))))

(assert (=> b!6561288 (= (flatMap!1944 lt!2406394 lambda!365043) (derivationStepZipperUp!1613 lt!2406352 (h!71940 s!2326)))))

(declare-fun lt!2406338 () Unit!159091)

(assert (=> b!6561288 (= lt!2406338 (lemmaFlatMapOnSingletonSet!1470 lt!2406394 lt!2406352 lambda!365043))))

(assert (=> b!6561288 (= (flatMap!1944 lt!2406365 lambda!365043) (derivationStepZipperUp!1613 lt!2406347 (h!71940 s!2326)))))

(declare-fun lt!2406361 () Unit!159091)

(assert (=> b!6561288 (= lt!2406361 (lemmaFlatMapOnSingletonSet!1470 lt!2406365 lt!2406347 lambda!365043))))

(declare-fun lt!2406364 () (InoxSet Context!11646))

(assert (=> b!6561288 (= lt!2406364 (derivationStepZipperUp!1613 lt!2406352 (h!71940 s!2326)))))

(declare-fun lt!2406345 () (InoxSet Context!11646))

(assert (=> b!6561288 (= lt!2406345 (derivationStepZipperUp!1613 lt!2406347 (h!71940 s!2326)))))

(assert (=> b!6561288 (= lt!2406394 (store ((as const (Array Context!11646 Bool)) false) lt!2406352 true))))

(assert (=> b!6561288 (= lt!2406365 (store ((as const (Array Context!11646 Bool)) false) lt!2406347 true))))

(assert (=> b!6561288 (= lt!2406347 (Context!11647 lt!2406344))))

(assert (=> b!6561288 (= lt!2406344 (Cons!65493 (reg!16768 (regOne!33390 r!7292)) Nil!65493))))

(declare-fun b!6561289 () Bool)

(declare-fun res!2692491 () Bool)

(assert (=> b!6561289 (=> res!2692491 e!3971935)))

(assert (=> b!6561289 (= res!2692491 e!3971941)))

(declare-fun res!2692471 () Bool)

(assert (=> b!6561289 (=> (not res!2692471) (not e!3971941))))

(assert (=> b!6561289 (= res!2692471 ((_ is Concat!25284) (regOne!33390 r!7292)))))

(declare-fun b!6561290 () Bool)

(declare-fun res!2692477 () Bool)

(assert (=> b!6561290 (=> res!2692477 e!3971949)))

(assert (=> b!6561290 (= res!2692477 (not (matchZipper!2451 z!1189 s!2326)))))

(assert (= (and start!642986 res!2692476) b!6561286))

(assert (= (and b!6561286 res!2692480) b!6561250))

(assert (= (and b!6561250 res!2692494) b!6561247))

(assert (= (and b!6561247 (not res!2692473)) b!6561280))

(assert (= (and b!6561280 (not res!2692493)) b!6561274))

(assert (= (and b!6561274 (not res!2692484)) b!6561284))

(assert (= (and b!6561284 (not res!2692472)) b!6561268))

(assert (= (and b!6561268 (not res!2692465)) b!6561271))

(assert (= (and b!6561271 (not res!2692486)) b!6561283))

(assert (= (and b!6561283 (not res!2692492)) b!6561259))

(assert (= (and b!6561259 (not res!2692489)) b!6561279))

(assert (= (and b!6561279 c!1205619) b!6561246))

(assert (= (and b!6561279 (not c!1205619)) b!6561258))

(assert (= (and b!6561246 (not res!2692468)) b!6561281))

(assert (= (and b!6561279 (not res!2692496)) b!6561289))

(assert (= (and b!6561289 res!2692471) b!6561263))

(assert (= (and b!6561289 (not res!2692491)) b!6561282))

(assert (= (and b!6561282 (not res!2692481)) b!6561251))

(assert (= (and b!6561251 (not res!2692497)) b!6561266))

(assert (= (and b!6561266 (not res!2692474)) b!6561278))

(assert (= (and b!6561278 (not res!2692488)) b!6561276))

(assert (= (and b!6561276 (not res!2692479)) b!6561252))

(assert (= (and b!6561252 (not res!2692498)) b!6561264))

(assert (= (and b!6561264 (not res!2692482)) b!6561288))

(assert (= (and b!6561288 (not res!2692495)) b!6561248))

(assert (= (and b!6561248 (not res!2692483)) b!6561260))

(assert (= (and b!6561260 (not res!2692462)) b!6561290))

(assert (= (and b!6561290 (not res!2692477)) b!6561269))

(assert (= (and b!6561269 (not res!2692464)) b!6561262))

(assert (= (and b!6561262 res!2692475) b!6561255))

(assert (= (and b!6561262 (not res!2692463)) b!6561270))

(assert (= (and b!6561270 (not res!2692467)) b!6561265))

(assert (= (and b!6561265 (not res!2692485)) b!6561244))

(assert (= (and b!6561244 (not res!2692469)) b!6561261))

(assert (= (and b!6561261 (not res!2692470)) b!6561256))

(assert (= (and b!6561256 (not res!2692487)) b!6561287))

(assert (= (and b!6561287 res!2692466) b!6561253))

(assert (= (and b!6561287 (not res!2692478)) b!6561249))

(assert (= (and b!6561249 (not res!2692490)) b!6561275))

(assert (= (and start!642986 ((_ is ElementMatch!16439) r!7292)) b!6561285))

(assert (= (and start!642986 ((_ is Concat!25284) r!7292)) b!6561267))

(assert (= (and start!642986 ((_ is Star!16439) r!7292)) b!6561254))

(assert (= (and start!642986 ((_ is Union!16439) r!7292)) b!6561272))

(assert (= (and start!642986 condSetEmpty!44790) setIsEmpty!44790))

(assert (= (and start!642986 (not condSetEmpty!44790)) setNonEmpty!44790))

(assert (= setNonEmpty!44790 b!6561245))

(assert (= b!6561273 b!6561277))

(assert (= (and start!642986 ((_ is Cons!65494) zl!343)) b!6561273))

(assert (= (and start!642986 ((_ is Cons!65492) s!2326)) b!6561257))

(declare-fun m!7343186 () Bool)

(assert (=> b!6561247 m!7343186))

(declare-fun m!7343188 () Bool)

(assert (=> b!6561247 m!7343188))

(declare-fun m!7343190 () Bool)

(assert (=> b!6561247 m!7343190))

(declare-fun m!7343192 () Bool)

(assert (=> b!6561262 m!7343192))

(declare-fun m!7343194 () Bool)

(assert (=> b!6561264 m!7343194))

(declare-fun m!7343196 () Bool)

(assert (=> b!6561251 m!7343196))

(declare-fun m!7343198 () Bool)

(assert (=> setNonEmpty!44790 m!7343198))

(declare-fun m!7343200 () Bool)

(assert (=> b!6561259 m!7343200))

(declare-fun m!7343202 () Bool)

(assert (=> b!6561244 m!7343202))

(declare-fun m!7343204 () Bool)

(assert (=> b!6561244 m!7343204))

(declare-fun m!7343206 () Bool)

(assert (=> b!6561244 m!7343206))

(declare-fun m!7343208 () Bool)

(assert (=> b!6561244 m!7343208))

(declare-fun m!7343210 () Bool)

(assert (=> b!6561244 m!7343210))

(declare-fun m!7343212 () Bool)

(assert (=> b!6561249 m!7343212))

(declare-fun m!7343214 () Bool)

(assert (=> b!6561249 m!7343214))

(declare-fun m!7343216 () Bool)

(assert (=> b!6561249 m!7343216))

(declare-fun m!7343218 () Bool)

(assert (=> b!6561249 m!7343218))

(assert (=> b!6561249 m!7343214))

(declare-fun m!7343220 () Bool)

(assert (=> b!6561249 m!7343220))

(declare-fun m!7343222 () Bool)

(assert (=> b!6561249 m!7343222))

(declare-fun m!7343224 () Bool)

(assert (=> b!6561249 m!7343224))

(declare-fun m!7343226 () Bool)

(assert (=> b!6561249 m!7343226))

(declare-fun m!7343228 () Bool)

(assert (=> b!6561249 m!7343228))

(assert (=> b!6561249 m!7343218))

(declare-fun m!7343230 () Bool)

(assert (=> b!6561290 m!7343230))

(declare-fun m!7343232 () Bool)

(assert (=> b!6561255 m!7343232))

(declare-fun m!7343234 () Bool)

(assert (=> b!6561280 m!7343234))

(declare-fun m!7343236 () Bool)

(assert (=> b!6561279 m!7343236))

(declare-fun m!7343238 () Bool)

(assert (=> b!6561279 m!7343238))

(declare-fun m!7343240 () Bool)

(assert (=> b!6561279 m!7343240))

(declare-fun m!7343242 () Bool)

(assert (=> b!6561279 m!7343242))

(declare-fun m!7343244 () Bool)

(assert (=> b!6561279 m!7343244))

(declare-fun m!7343246 () Bool)

(assert (=> b!6561279 m!7343246))

(declare-fun m!7343248 () Bool)

(assert (=> b!6561279 m!7343248))

(declare-fun m!7343250 () Bool)

(assert (=> b!6561246 m!7343250))

(assert (=> b!6561246 m!7343192))

(declare-fun m!7343252 () Bool)

(assert (=> b!6561246 m!7343252))

(declare-fun m!7343254 () Bool)

(assert (=> b!6561256 m!7343254))

(declare-fun m!7343256 () Bool)

(assert (=> b!6561248 m!7343256))

(declare-fun m!7343258 () Bool)

(assert (=> b!6561263 m!7343258))

(declare-fun m!7343260 () Bool)

(assert (=> b!6561260 m!7343260))

(declare-fun m!7343262 () Bool)

(assert (=> b!6561260 m!7343262))

(declare-fun m!7343264 () Bool)

(assert (=> b!6561260 m!7343264))

(declare-fun m!7343266 () Bool)

(assert (=> b!6561268 m!7343266))

(assert (=> b!6561268 m!7343266))

(declare-fun m!7343268 () Bool)

(assert (=> b!6561268 m!7343268))

(declare-fun m!7343270 () Bool)

(assert (=> b!6561250 m!7343270))

(declare-fun m!7343272 () Bool)

(assert (=> b!6561274 m!7343272))

(declare-fun m!7343274 () Bool)

(assert (=> start!642986 m!7343274))

(declare-fun m!7343276 () Bool)

(assert (=> b!6561266 m!7343276))

(declare-fun m!7343278 () Bool)

(assert (=> b!6561266 m!7343278))

(declare-fun m!7343280 () Bool)

(assert (=> b!6561266 m!7343280))

(declare-fun m!7343282 () Bool)

(assert (=> b!6561266 m!7343282))

(declare-fun m!7343284 () Bool)

(assert (=> b!6561266 m!7343284))

(assert (=> b!6561281 m!7343232))

(declare-fun m!7343286 () Bool)

(assert (=> b!6561265 m!7343286))

(declare-fun m!7343288 () Bool)

(assert (=> b!6561265 m!7343288))

(declare-fun m!7343290 () Bool)

(assert (=> b!6561265 m!7343290))

(declare-fun m!7343292 () Bool)

(assert (=> b!6561265 m!7343292))

(declare-fun m!7343294 () Bool)

(assert (=> b!6561265 m!7343294))

(declare-fun m!7343296 () Bool)

(assert (=> b!6561265 m!7343296))

(declare-fun m!7343298 () Bool)

(assert (=> b!6561273 m!7343298))

(declare-fun m!7343300 () Bool)

(assert (=> b!6561287 m!7343300))

(declare-fun m!7343302 () Bool)

(assert (=> b!6561287 m!7343302))

(declare-fun m!7343304 () Bool)

(assert (=> b!6561287 m!7343304))

(declare-fun m!7343306 () Bool)

(assert (=> b!6561287 m!7343306))

(declare-fun m!7343308 () Bool)

(assert (=> b!6561287 m!7343308))

(declare-fun m!7343310 () Bool)

(assert (=> b!6561287 m!7343310))

(declare-fun m!7343312 () Bool)

(assert (=> b!6561287 m!7343312))

(declare-fun m!7343314 () Bool)

(assert (=> b!6561287 m!7343314))

(assert (=> b!6561287 m!7343294))

(assert (=> b!6561287 m!7343296))

(assert (=> b!6561287 m!7343286))

(assert (=> b!6561287 m!7343296))

(declare-fun m!7343316 () Bool)

(assert (=> b!6561287 m!7343316))

(declare-fun m!7343318 () Bool)

(assert (=> b!6561287 m!7343318))

(declare-fun m!7343320 () Bool)

(assert (=> b!6561287 m!7343320))

(declare-fun m!7343322 () Bool)

(assert (=> b!6561287 m!7343322))

(declare-fun m!7343324 () Bool)

(assert (=> b!6561287 m!7343324))

(declare-fun m!7343326 () Bool)

(assert (=> b!6561287 m!7343326))

(declare-fun m!7343328 () Bool)

(assert (=> b!6561287 m!7343328))

(declare-fun m!7343330 () Bool)

(assert (=> b!6561287 m!7343330))

(declare-fun m!7343332 () Bool)

(assert (=> b!6561287 m!7343332))

(declare-fun m!7343334 () Bool)

(assert (=> b!6561287 m!7343334))

(declare-fun m!7343336 () Bool)

(assert (=> b!6561287 m!7343336))

(declare-fun m!7343338 () Bool)

(assert (=> b!6561287 m!7343338))

(assert (=> b!6561287 m!7343336))

(declare-fun m!7343340 () Bool)

(assert (=> b!6561278 m!7343340))

(declare-fun m!7343342 () Bool)

(assert (=> b!6561278 m!7343342))

(declare-fun m!7343344 () Bool)

(assert (=> b!6561275 m!7343344))

(declare-fun m!7343346 () Bool)

(assert (=> b!6561288 m!7343346))

(declare-fun m!7343348 () Bool)

(assert (=> b!6561288 m!7343348))

(declare-fun m!7343350 () Bool)

(assert (=> b!6561288 m!7343350))

(declare-fun m!7343352 () Bool)

(assert (=> b!6561288 m!7343352))

(declare-fun m!7343354 () Bool)

(assert (=> b!6561288 m!7343354))

(declare-fun m!7343356 () Bool)

(assert (=> b!6561288 m!7343356))

(declare-fun m!7343358 () Bool)

(assert (=> b!6561288 m!7343358))

(declare-fun m!7343360 () Bool)

(assert (=> b!6561288 m!7343360))

(declare-fun m!7343362 () Bool)

(assert (=> b!6561288 m!7343362))

(declare-fun m!7343364 () Bool)

(assert (=> b!6561283 m!7343364))

(declare-fun m!7343366 () Bool)

(assert (=> b!6561283 m!7343366))

(declare-fun m!7343368 () Bool)

(assert (=> b!6561283 m!7343368))

(declare-fun m!7343370 () Bool)

(assert (=> b!6561283 m!7343370))

(assert (=> b!6561283 m!7343370))

(declare-fun m!7343372 () Bool)

(assert (=> b!6561283 m!7343372))

(assert (=> b!6561283 m!7343364))

(declare-fun m!7343374 () Bool)

(assert (=> b!6561283 m!7343374))

(declare-fun m!7343376 () Bool)

(assert (=> b!6561261 m!7343376))

(declare-fun m!7343378 () Bool)

(assert (=> b!6561286 m!7343378))

(check-sat (not b!6561247) (not b!6561278) (not b!6561260) tp_is_empty!42131 (not b!6561256) (not b!6561262) (not b!6561249) (not b!6561286) (not b!6561290) (not b!6561280) (not b!6561265) (not b!6561264) (not b!6561248) (not setNonEmpty!44790) (not b!6561288) (not b!6561259) (not b!6561254) (not b!6561275) (not b!6561251) (not b!6561257) (not b!6561287) (not b!6561261) (not b!6561267) (not b!6561255) (not b!6561272) (not b!6561244) (not b!6561281) (not b!6561283) (not b!6561245) (not b!6561273) (not b!6561263) (not b!6561277) (not b!6561246) (not b!6561274) (not b!6561268) (not start!642986) (not b!6561250) (not b!6561266) (not b!6561279))
(check-sat)
(get-model)

(declare-fun d!2058577 () Bool)

(declare-fun nullableFct!2358 (Regex!16439) Bool)

(assert (=> d!2058577 (= (nullable!6432 (reg!16768 (regOne!33390 r!7292))) (nullableFct!2358 (reg!16768 (regOne!33390 r!7292))))))

(declare-fun bs!1674668 () Bool)

(assert (= bs!1674668 d!2058577))

(declare-fun m!7343702 () Bool)

(assert (=> bs!1674668 m!7343702))

(assert (=> b!6561275 d!2058577))

(declare-fun b!6561671 () Bool)

(declare-fun e!3972164 () Bool)

(declare-fun call!570683 () Bool)

(assert (=> b!6561671 (= e!3972164 call!570683)))

(declare-fun b!6561672 () Bool)

(declare-fun res!2692689 () Bool)

(declare-fun e!3972163 () Bool)

(assert (=> b!6561672 (=> (not res!2692689) (not e!3972163))))

(declare-fun call!570685 () Bool)

(assert (=> b!6561672 (= res!2692689 call!570685)))

(declare-fun e!3972166 () Bool)

(assert (=> b!6561672 (= e!3972166 e!3972163)))

(declare-fun b!6561673 () Bool)

(declare-fun e!3972169 () Bool)

(assert (=> b!6561673 (= e!3972169 e!3972166)))

(declare-fun c!1205714 () Bool)

(assert (=> b!6561673 (= c!1205714 ((_ is Union!16439) r!7292))))

(declare-fun bm!570678 () Bool)

(assert (=> bm!570678 (= call!570685 (validRegex!8175 (ite c!1205714 (regOne!33391 r!7292) (regOne!33390 r!7292))))))

(declare-fun b!6561674 () Bool)

(assert (=> b!6561674 (= e!3972163 call!570683)))

(declare-fun b!6561675 () Bool)

(declare-fun e!3972167 () Bool)

(assert (=> b!6561675 (= e!3972167 e!3972164)))

(declare-fun res!2692691 () Bool)

(assert (=> b!6561675 (=> (not res!2692691) (not e!3972164))))

(assert (=> b!6561675 (= res!2692691 call!570685)))

(declare-fun b!6561676 () Bool)

(declare-fun res!2692687 () Bool)

(assert (=> b!6561676 (=> res!2692687 e!3972167)))

(assert (=> b!6561676 (= res!2692687 (not ((_ is Concat!25284) r!7292)))))

(assert (=> b!6561676 (= e!3972166 e!3972167)))

(declare-fun b!6561677 () Bool)

(declare-fun e!3972165 () Bool)

(assert (=> b!6561677 (= e!3972169 e!3972165)))

(declare-fun res!2692688 () Bool)

(assert (=> b!6561677 (= res!2692688 (not (nullable!6432 (reg!16768 r!7292))))))

(assert (=> b!6561677 (=> (not res!2692688) (not e!3972165))))

(declare-fun d!2058581 () Bool)

(declare-fun res!2692690 () Bool)

(declare-fun e!3972168 () Bool)

(assert (=> d!2058581 (=> res!2692690 e!3972168)))

(assert (=> d!2058581 (= res!2692690 ((_ is ElementMatch!16439) r!7292))))

(assert (=> d!2058581 (= (validRegex!8175 r!7292) e!3972168)))

(declare-fun b!6561678 () Bool)

(declare-fun call!570684 () Bool)

(assert (=> b!6561678 (= e!3972165 call!570684)))

(declare-fun bm!570679 () Bool)

(assert (=> bm!570679 (= call!570683 call!570684)))

(declare-fun b!6561679 () Bool)

(assert (=> b!6561679 (= e!3972168 e!3972169)))

(declare-fun c!1205713 () Bool)

(assert (=> b!6561679 (= c!1205713 ((_ is Star!16439) r!7292))))

(declare-fun bm!570680 () Bool)

(assert (=> bm!570680 (= call!570684 (validRegex!8175 (ite c!1205713 (reg!16768 r!7292) (ite c!1205714 (regTwo!33391 r!7292) (regTwo!33390 r!7292)))))))

(assert (= (and d!2058581 (not res!2692690)) b!6561679))

(assert (= (and b!6561679 c!1205713) b!6561677))

(assert (= (and b!6561679 (not c!1205713)) b!6561673))

(assert (= (and b!6561677 res!2692688) b!6561678))

(assert (= (and b!6561673 c!1205714) b!6561672))

(assert (= (and b!6561673 (not c!1205714)) b!6561676))

(assert (= (and b!6561672 res!2692689) b!6561674))

(assert (= (and b!6561676 (not res!2692687)) b!6561675))

(assert (= (and b!6561675 res!2692691) b!6561671))

(assert (= (or b!6561674 b!6561671) bm!570679))

(assert (= (or b!6561672 b!6561675) bm!570678))

(assert (= (or b!6561678 bm!570679) bm!570680))

(declare-fun m!7343706 () Bool)

(assert (=> bm!570678 m!7343706))

(declare-fun m!7343708 () Bool)

(assert (=> b!6561677 m!7343708))

(declare-fun m!7343710 () Bool)

(assert (=> bm!570680 m!7343710))

(assert (=> start!642986 d!2058581))

(declare-fun bs!1674674 () Bool)

(declare-fun d!2058587 () Bool)

(assert (= bs!1674674 (and d!2058587 b!6561265)))

(declare-fun lambda!365086 () Int)

(assert (=> bs!1674674 (= lambda!365086 lambda!365045)))

(declare-fun b!6561715 () Bool)

(declare-fun e!3972196 () Regex!16439)

(declare-fun e!3972191 () Regex!16439)

(assert (=> b!6561715 (= e!3972196 e!3972191)))

(declare-fun c!1205730 () Bool)

(assert (=> b!6561715 (= c!1205730 ((_ is Cons!65493) (exprs!6323 (h!71942 zl!343))))))

(declare-fun b!6561716 () Bool)

(declare-fun e!3972192 () Bool)

(declare-fun lt!2406487 () Regex!16439)

(declare-fun head!13328 (List!65617) Regex!16439)

(assert (=> b!6561716 (= e!3972192 (= lt!2406487 (head!13328 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun b!6561717 () Bool)

(assert (=> b!6561717 (= e!3972196 (h!71941 (exprs!6323 (h!71942 zl!343))))))

(declare-fun b!6561718 () Bool)

(declare-fun isConcat!1339 (Regex!16439) Bool)

(assert (=> b!6561718 (= e!3972192 (isConcat!1339 lt!2406487))))

(declare-fun b!6561719 () Bool)

(declare-fun e!3972195 () Bool)

(declare-fun isEmptyExpr!1816 (Regex!16439) Bool)

(assert (=> b!6561719 (= e!3972195 (isEmptyExpr!1816 lt!2406487))))

(declare-fun e!3972193 () Bool)

(assert (=> d!2058587 e!3972193))

(declare-fun res!2692700 () Bool)

(assert (=> d!2058587 (=> (not res!2692700) (not e!3972193))))

(assert (=> d!2058587 (= res!2692700 (validRegex!8175 lt!2406487))))

(assert (=> d!2058587 (= lt!2406487 e!3972196)))

(declare-fun c!1205732 () Bool)

(declare-fun e!3972194 () Bool)

(assert (=> d!2058587 (= c!1205732 e!3972194)))

(declare-fun res!2692699 () Bool)

(assert (=> d!2058587 (=> (not res!2692699) (not e!3972194))))

(assert (=> d!2058587 (= res!2692699 ((_ is Cons!65493) (exprs!6323 (h!71942 zl!343))))))

(declare-fun forall!15611 (List!65617 Int) Bool)

(assert (=> d!2058587 (forall!15611 (exprs!6323 (h!71942 zl!343)) lambda!365086)))

(assert (=> d!2058587 (= (generalisedConcat!2036 (exprs!6323 (h!71942 zl!343))) lt!2406487)))

(declare-fun b!6561720 () Bool)

(assert (=> b!6561720 (= e!3972193 e!3972195)))

(declare-fun c!1205729 () Bool)

(assert (=> b!6561720 (= c!1205729 (isEmpty!37733 (exprs!6323 (h!71942 zl!343))))))

(declare-fun b!6561721 () Bool)

(assert (=> b!6561721 (= e!3972191 (Concat!25284 (h!71941 (exprs!6323 (h!71942 zl!343))) (generalisedConcat!2036 (t!379259 (exprs!6323 (h!71942 zl!343))))))))

(declare-fun b!6561722 () Bool)

(assert (=> b!6561722 (= e!3972195 e!3972192)))

(declare-fun c!1205731 () Bool)

(declare-fun tail!12413 (List!65617) List!65617)

(assert (=> b!6561722 (= c!1205731 (isEmpty!37733 (tail!12413 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun b!6561723 () Bool)

(assert (=> b!6561723 (= e!3972194 (isEmpty!37733 (t!379259 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun b!6561724 () Bool)

(assert (=> b!6561724 (= e!3972191 EmptyExpr!16439)))

(assert (= (and d!2058587 res!2692699) b!6561723))

(assert (= (and d!2058587 c!1205732) b!6561717))

(assert (= (and d!2058587 (not c!1205732)) b!6561715))

(assert (= (and b!6561715 c!1205730) b!6561721))

(assert (= (and b!6561715 (not c!1205730)) b!6561724))

(assert (= (and d!2058587 res!2692700) b!6561720))

(assert (= (and b!6561720 c!1205729) b!6561719))

(assert (= (and b!6561720 (not c!1205729)) b!6561722))

(assert (= (and b!6561722 c!1205731) b!6561716))

(assert (= (and b!6561722 (not c!1205731)) b!6561718))

(declare-fun m!7343732 () Bool)

(assert (=> b!6561720 m!7343732))

(declare-fun m!7343734 () Bool)

(assert (=> b!6561718 m!7343734))

(declare-fun m!7343736 () Bool)

(assert (=> b!6561716 m!7343736))

(assert (=> b!6561723 m!7343200))

(declare-fun m!7343738 () Bool)

(assert (=> b!6561722 m!7343738))

(assert (=> b!6561722 m!7343738))

(declare-fun m!7343740 () Bool)

(assert (=> b!6561722 m!7343740))

(declare-fun m!7343742 () Bool)

(assert (=> b!6561719 m!7343742))

(declare-fun m!7343744 () Bool)

(assert (=> b!6561721 m!7343744))

(declare-fun m!7343746 () Bool)

(assert (=> d!2058587 m!7343746))

(declare-fun m!7343748 () Bool)

(assert (=> d!2058587 m!7343748))

(assert (=> b!6561274 d!2058587))

(declare-fun bs!1674677 () Bool)

(declare-fun d!2058599 () Bool)

(assert (= bs!1674677 (and d!2058599 b!6561265)))

(declare-fun lambda!365092 () Int)

(assert (=> bs!1674677 (= lambda!365092 lambda!365045)))

(declare-fun bs!1674679 () Bool)

(assert (= bs!1674679 (and d!2058599 d!2058587)))

(assert (=> bs!1674679 (= lambda!365092 lambda!365086)))

(assert (=> d!2058599 (= (inv!84344 (h!71942 zl!343)) (forall!15611 (exprs!6323 (h!71942 zl!343)) lambda!365092))))

(declare-fun bs!1674680 () Bool)

(assert (= bs!1674680 d!2058599))

(declare-fun m!7343752 () Bool)

(assert (=> bs!1674680 m!7343752))

(assert (=> b!6561273 d!2058599))

(declare-fun d!2058603 () Bool)

(declare-fun c!1205737 () Bool)

(declare-fun isEmpty!37737 (List!65616) Bool)

(assert (=> d!2058603 (= c!1205737 (isEmpty!37737 (t!379258 s!2326)))))

(declare-fun e!3972199 () Bool)

(assert (=> d!2058603 (= (matchZipper!2451 lt!2406342 (t!379258 s!2326)) e!3972199)))

(declare-fun b!6561733 () Bool)

(declare-fun nullableZipper!2184 ((InoxSet Context!11646)) Bool)

(assert (=> b!6561733 (= e!3972199 (nullableZipper!2184 lt!2406342))))

(declare-fun b!6561734 () Bool)

(declare-fun head!13329 (List!65616) C!33148)

(declare-fun tail!12414 (List!65616) List!65616)

(assert (=> b!6561734 (= e!3972199 (matchZipper!2451 (derivationStepZipper!2405 lt!2406342 (head!13329 (t!379258 s!2326))) (tail!12414 (t!379258 s!2326))))))

(assert (= (and d!2058603 c!1205737) b!6561733))

(assert (= (and d!2058603 (not c!1205737)) b!6561734))

(declare-fun m!7343754 () Bool)

(assert (=> d!2058603 m!7343754))

(declare-fun m!7343756 () Bool)

(assert (=> b!6561733 m!7343756))

(declare-fun m!7343758 () Bool)

(assert (=> b!6561734 m!7343758))

(assert (=> b!6561734 m!7343758))

(declare-fun m!7343760 () Bool)

(assert (=> b!6561734 m!7343760))

(declare-fun m!7343762 () Bool)

(assert (=> b!6561734 m!7343762))

(assert (=> b!6561734 m!7343760))

(assert (=> b!6561734 m!7343762))

(declare-fun m!7343764 () Bool)

(assert (=> b!6561734 m!7343764))

(assert (=> b!6561278 d!2058603))

(declare-fun d!2058605 () Bool)

(declare-fun c!1205748 () Bool)

(assert (=> d!2058605 (= c!1205748 (isEmpty!37737 s!2326))))

(declare-fun e!3972212 () Bool)

(assert (=> d!2058605 (= (matchZipper!2451 lt!2406385 s!2326) e!3972212)))

(declare-fun b!6561755 () Bool)

(assert (=> b!6561755 (= e!3972212 (nullableZipper!2184 lt!2406385))))

(declare-fun b!6561756 () Bool)

(assert (=> b!6561756 (= e!3972212 (matchZipper!2451 (derivationStepZipper!2405 lt!2406385 (head!13329 s!2326)) (tail!12414 s!2326)))))

(assert (= (and d!2058605 c!1205748) b!6561755))

(assert (= (and d!2058605 (not c!1205748)) b!6561756))

(declare-fun m!7343766 () Bool)

(assert (=> d!2058605 m!7343766))

(declare-fun m!7343768 () Bool)

(assert (=> b!6561755 m!7343768))

(declare-fun m!7343770 () Bool)

(assert (=> b!6561756 m!7343770))

(assert (=> b!6561756 m!7343770))

(declare-fun m!7343772 () Bool)

(assert (=> b!6561756 m!7343772))

(declare-fun m!7343774 () Bool)

(assert (=> b!6561756 m!7343774))

(assert (=> b!6561756 m!7343772))

(assert (=> b!6561756 m!7343774))

(declare-fun m!7343776 () Bool)

(assert (=> b!6561756 m!7343776))

(assert (=> b!6561278 d!2058605))

(declare-fun d!2058607 () Bool)

(declare-fun c!1205749 () Bool)

(assert (=> d!2058607 (= c!1205749 (isEmpty!37737 (_2!36721 lt!2406377)))))

(declare-fun e!3972213 () Bool)

(assert (=> d!2058607 (= (matchZipper!2451 lt!2406394 (_2!36721 lt!2406377)) e!3972213)))

(declare-fun b!6561757 () Bool)

(assert (=> b!6561757 (= e!3972213 (nullableZipper!2184 lt!2406394))))

(declare-fun b!6561758 () Bool)

(assert (=> b!6561758 (= e!3972213 (matchZipper!2451 (derivationStepZipper!2405 lt!2406394 (head!13329 (_2!36721 lt!2406377))) (tail!12414 (_2!36721 lt!2406377))))))

(assert (= (and d!2058607 c!1205749) b!6561757))

(assert (= (and d!2058607 (not c!1205749)) b!6561758))

(declare-fun m!7343778 () Bool)

(assert (=> d!2058607 m!7343778))

(declare-fun m!7343780 () Bool)

(assert (=> b!6561757 m!7343780))

(declare-fun m!7343782 () Bool)

(assert (=> b!6561758 m!7343782))

(assert (=> b!6561758 m!7343782))

(declare-fun m!7343784 () Bool)

(assert (=> b!6561758 m!7343784))

(declare-fun m!7343786 () Bool)

(assert (=> b!6561758 m!7343786))

(assert (=> b!6561758 m!7343784))

(assert (=> b!6561758 m!7343786))

(declare-fun m!7343788 () Bool)

(assert (=> b!6561758 m!7343788))

(assert (=> b!6561256 d!2058607))

(declare-fun d!2058609 () Bool)

(declare-fun c!1205750 () Bool)

(assert (=> d!2058609 (= c!1205750 (isEmpty!37737 (t!379258 s!2326)))))

(declare-fun e!3972214 () Bool)

(assert (=> d!2058609 (= (matchZipper!2451 lt!2406381 (t!379258 s!2326)) e!3972214)))

(declare-fun b!6561759 () Bool)

(assert (=> b!6561759 (= e!3972214 (nullableZipper!2184 lt!2406381))))

(declare-fun b!6561760 () Bool)

(assert (=> b!6561760 (= e!3972214 (matchZipper!2451 (derivationStepZipper!2405 lt!2406381 (head!13329 (t!379258 s!2326))) (tail!12414 (t!379258 s!2326))))))

(assert (= (and d!2058609 c!1205750) b!6561759))

(assert (= (and d!2058609 (not c!1205750)) b!6561760))

(assert (=> d!2058609 m!7343754))

(declare-fun m!7343790 () Bool)

(assert (=> b!6561759 m!7343790))

(assert (=> b!6561760 m!7343758))

(assert (=> b!6561760 m!7343758))

(declare-fun m!7343792 () Bool)

(assert (=> b!6561760 m!7343792))

(assert (=> b!6561760 m!7343762))

(assert (=> b!6561760 m!7343792))

(assert (=> b!6561760 m!7343762))

(declare-fun m!7343794 () Bool)

(assert (=> b!6561760 m!7343794))

(assert (=> b!6561255 d!2058609))

(declare-fun d!2058611 () Bool)

(declare-fun c!1205751 () Bool)

(assert (=> d!2058611 (= c!1205751 (isEmpty!37737 s!2326))))

(declare-fun e!3972215 () Bool)

(assert (=> d!2058611 (= (matchZipper!2451 z!1189 s!2326) e!3972215)))

(declare-fun b!6561761 () Bool)

(assert (=> b!6561761 (= e!3972215 (nullableZipper!2184 z!1189))))

(declare-fun b!6561762 () Bool)

(assert (=> b!6561762 (= e!3972215 (matchZipper!2451 (derivationStepZipper!2405 z!1189 (head!13329 s!2326)) (tail!12414 s!2326)))))

(assert (= (and d!2058611 c!1205751) b!6561761))

(assert (= (and d!2058611 (not c!1205751)) b!6561762))

(assert (=> d!2058611 m!7343766))

(declare-fun m!7343796 () Bool)

(assert (=> b!6561761 m!7343796))

(assert (=> b!6561762 m!7343770))

(assert (=> b!6561762 m!7343770))

(declare-fun m!7343798 () Bool)

(assert (=> b!6561762 m!7343798))

(assert (=> b!6561762 m!7343774))

(assert (=> b!6561762 m!7343798))

(assert (=> b!6561762 m!7343774))

(declare-fun m!7343800 () Bool)

(assert (=> b!6561762 m!7343800))

(assert (=> b!6561290 d!2058611))

(declare-fun d!2058613 () Bool)

(declare-fun choose!48962 (Int) Bool)

(assert (=> d!2058613 (= (Exists!3509 lambda!365049) (choose!48962 lambda!365049))))

(declare-fun bs!1674681 () Bool)

(assert (= bs!1674681 d!2058613))

(declare-fun m!7343802 () Bool)

(assert (=> bs!1674681 m!7343802))

(assert (=> b!6561249 d!2058613))

(declare-fun b!6561763 () Bool)

(declare-fun e!3972217 () Bool)

(declare-fun call!570697 () Bool)

(assert (=> b!6561763 (= e!3972217 call!570697)))

(declare-fun b!6561764 () Bool)

(declare-fun res!2692705 () Bool)

(declare-fun e!3972216 () Bool)

(assert (=> b!6561764 (=> (not res!2692705) (not e!3972216))))

(declare-fun call!570699 () Bool)

(assert (=> b!6561764 (= res!2692705 call!570699)))

(declare-fun e!3972219 () Bool)

(assert (=> b!6561764 (= e!3972219 e!3972216)))

(declare-fun b!6561765 () Bool)

(declare-fun e!3972222 () Bool)

(assert (=> b!6561765 (= e!3972222 e!3972219)))

(declare-fun c!1205753 () Bool)

(assert (=> b!6561765 (= c!1205753 ((_ is Union!16439) (reg!16768 (regOne!33390 r!7292))))))

(declare-fun bm!570692 () Bool)

(assert (=> bm!570692 (= call!570699 (validRegex!8175 (ite c!1205753 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))))))

(declare-fun b!6561766 () Bool)

(assert (=> b!6561766 (= e!3972216 call!570697)))

(declare-fun b!6561767 () Bool)

(declare-fun e!3972220 () Bool)

(assert (=> b!6561767 (= e!3972220 e!3972217)))

(declare-fun res!2692707 () Bool)

(assert (=> b!6561767 (=> (not res!2692707) (not e!3972217))))

(assert (=> b!6561767 (= res!2692707 call!570699)))

(declare-fun b!6561768 () Bool)

(declare-fun res!2692703 () Bool)

(assert (=> b!6561768 (=> res!2692703 e!3972220)))

(assert (=> b!6561768 (= res!2692703 (not ((_ is Concat!25284) (reg!16768 (regOne!33390 r!7292)))))))

(assert (=> b!6561768 (= e!3972219 e!3972220)))

(declare-fun b!6561769 () Bool)

(declare-fun e!3972218 () Bool)

(assert (=> b!6561769 (= e!3972222 e!3972218)))

(declare-fun res!2692704 () Bool)

(assert (=> b!6561769 (= res!2692704 (not (nullable!6432 (reg!16768 (reg!16768 (regOne!33390 r!7292))))))))

(assert (=> b!6561769 (=> (not res!2692704) (not e!3972218))))

(declare-fun d!2058615 () Bool)

(declare-fun res!2692706 () Bool)

(declare-fun e!3972221 () Bool)

(assert (=> d!2058615 (=> res!2692706 e!3972221)))

(assert (=> d!2058615 (= res!2692706 ((_ is ElementMatch!16439) (reg!16768 (regOne!33390 r!7292))))))

(assert (=> d!2058615 (= (validRegex!8175 (reg!16768 (regOne!33390 r!7292))) e!3972221)))

(declare-fun b!6561770 () Bool)

(declare-fun call!570698 () Bool)

(assert (=> b!6561770 (= e!3972218 call!570698)))

(declare-fun bm!570693 () Bool)

(assert (=> bm!570693 (= call!570697 call!570698)))

(declare-fun b!6561771 () Bool)

(assert (=> b!6561771 (= e!3972221 e!3972222)))

(declare-fun c!1205752 () Bool)

(assert (=> b!6561771 (= c!1205752 ((_ is Star!16439) (reg!16768 (regOne!33390 r!7292))))))

(declare-fun bm!570694 () Bool)

(assert (=> bm!570694 (= call!570698 (validRegex!8175 (ite c!1205752 (reg!16768 (reg!16768 (regOne!33390 r!7292))) (ite c!1205753 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (regTwo!33390 (reg!16768 (regOne!33390 r!7292)))))))))

(assert (= (and d!2058615 (not res!2692706)) b!6561771))

(assert (= (and b!6561771 c!1205752) b!6561769))

(assert (= (and b!6561771 (not c!1205752)) b!6561765))

(assert (= (and b!6561769 res!2692704) b!6561770))

(assert (= (and b!6561765 c!1205753) b!6561764))

(assert (= (and b!6561765 (not c!1205753)) b!6561768))

(assert (= (and b!6561764 res!2692705) b!6561766))

(assert (= (and b!6561768 (not res!2692703)) b!6561767))

(assert (= (and b!6561767 res!2692707) b!6561763))

(assert (= (or b!6561766 b!6561763) bm!570693))

(assert (= (or b!6561764 b!6561767) bm!570692))

(assert (= (or b!6561770 bm!570693) bm!570694))

(declare-fun m!7343804 () Bool)

(assert (=> bm!570692 m!7343804))

(declare-fun m!7343806 () Bool)

(assert (=> b!6561769 m!7343806))

(declare-fun m!7343808 () Bool)

(assert (=> bm!570694 m!7343808))

(assert (=> b!6561249 d!2058615))

(declare-fun bs!1674682 () Bool)

(declare-fun d!2058617 () Bool)

(assert (= bs!1674682 (and d!2058617 b!6561287)))

(declare-fun lambda!365097 () Int)

(assert (=> bs!1674682 (not (= lambda!365097 lambda!365047))))

(declare-fun bs!1674683 () Bool)

(assert (= bs!1674683 (and d!2058617 b!6561249)))

(assert (=> bs!1674683 (= lambda!365097 lambda!365048)))

(declare-fun bs!1674684 () Bool)

(assert (= bs!1674684 (and d!2058617 b!6561283)))

(assert (=> bs!1674684 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 r!7292)) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365097 lambda!365041))))

(assert (=> bs!1674684 (not (= lambda!365097 lambda!365042))))

(assert (=> bs!1674682 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) lt!2406360) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365097 lambda!365046))))

(assert (=> bs!1674683 (not (= lambda!365097 lambda!365049))))

(assert (=> d!2058617 true))

(assert (=> d!2058617 true))

(assert (=> d!2058617 true))

(declare-fun lambda!365100 () Int)

(assert (=> bs!1674682 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) lt!2406360) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365100 lambda!365047))))

(assert (=> bs!1674683 (not (= lambda!365100 lambda!365048))))

(assert (=> bs!1674684 (not (= lambda!365100 lambda!365041))))

(assert (=> bs!1674684 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 r!7292)) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365100 lambda!365042))))

(declare-fun bs!1674685 () Bool)

(assert (= bs!1674685 d!2058617))

(assert (=> bs!1674685 (not (= lambda!365100 lambda!365097))))

(assert (=> bs!1674682 (not (= lambda!365100 lambda!365046))))

(assert (=> bs!1674683 (= lambda!365100 lambda!365049)))

(assert (=> d!2058617 true))

(assert (=> d!2058617 true))

(assert (=> d!2058617 true))

(assert (=> d!2058617 (= (Exists!3509 lambda!365097) (Exists!3509 lambda!365100))))

(declare-fun lt!2406491 () Unit!159091)

(declare-fun choose!48963 (Regex!16439 Regex!16439 List!65616) Unit!159091)

(assert (=> d!2058617 (= lt!2406491 (choose!48963 (reg!16768 (regOne!33390 r!7292)) lt!2406358 (_1!36721 lt!2406397)))))

(assert (=> d!2058617 (validRegex!8175 (reg!16768 (regOne!33390 r!7292)))))

(assert (=> d!2058617 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2046 (reg!16768 (regOne!33390 r!7292)) lt!2406358 (_1!36721 lt!2406397)) lt!2406491)))

(declare-fun m!7343830 () Bool)

(assert (=> bs!1674685 m!7343830))

(declare-fun m!7343832 () Bool)

(assert (=> bs!1674685 m!7343832))

(declare-fun m!7343834 () Bool)

(assert (=> bs!1674685 m!7343834))

(assert (=> bs!1674685 m!7343212))

(assert (=> b!6561249 d!2058617))

(declare-fun d!2058625 () Bool)

(assert (=> d!2058625 (= (matchR!8622 lt!2406360 (_1!36721 lt!2406397)) (matchRSpec!3540 lt!2406360 (_1!36721 lt!2406397)))))

(declare-fun lt!2406497 () Unit!159091)

(declare-fun choose!48964 (Regex!16439 List!65616) Unit!159091)

(assert (=> d!2058625 (= lt!2406497 (choose!48964 lt!2406360 (_1!36721 lt!2406397)))))

(assert (=> d!2058625 (validRegex!8175 lt!2406360)))

(assert (=> d!2058625 (= (mainMatchTheorem!3540 lt!2406360 (_1!36721 lt!2406397)) lt!2406497)))

(declare-fun bs!1674691 () Bool)

(assert (= bs!1674691 d!2058625))

(assert (=> bs!1674691 m!7343328))

(assert (=> bs!1674691 m!7343226))

(declare-fun m!7343854 () Bool)

(assert (=> bs!1674691 m!7343854))

(declare-fun m!7343856 () Bool)

(assert (=> bs!1674691 m!7343856))

(assert (=> b!6561249 d!2058625))

(declare-fun d!2058629 () Bool)

(assert (=> d!2058629 (= (Exists!3509 lambda!365048) (choose!48962 lambda!365048))))

(declare-fun bs!1674692 () Bool)

(assert (= bs!1674692 d!2058629))

(declare-fun m!7343858 () Bool)

(assert (=> bs!1674692 m!7343858))

(assert (=> b!6561249 d!2058629))

(declare-fun bs!1674725 () Bool)

(declare-fun b!6561902 () Bool)

(assert (= bs!1674725 (and b!6561902 b!6561287)))

(declare-fun lambda!365109 () Int)

(assert (=> bs!1674725 (not (= lambda!365109 lambda!365047))))

(declare-fun bs!1674726 () Bool)

(assert (= bs!1674726 (and b!6561902 b!6561249)))

(assert (=> bs!1674726 (not (= lambda!365109 lambda!365048))))

(declare-fun bs!1674727 () Bool)

(assert (= bs!1674727 (and b!6561902 d!2058617)))

(assert (=> bs!1674727 (not (= lambda!365109 lambda!365100))))

(declare-fun bs!1674729 () Bool)

(assert (= bs!1674729 (and b!6561902 b!6561283)))

(assert (=> bs!1674729 (not (= lambda!365109 lambda!365041))))

(assert (=> bs!1674729 (not (= lambda!365109 lambda!365042))))

(assert (=> bs!1674727 (not (= lambda!365109 lambda!365097))))

(assert (=> bs!1674725 (not (= lambda!365109 lambda!365046))))

(assert (=> bs!1674726 (not (= lambda!365109 lambda!365049))))

(assert (=> b!6561902 true))

(assert (=> b!6561902 true))

(declare-fun bs!1674733 () Bool)

(declare-fun b!6561898 () Bool)

(assert (= bs!1674733 (and b!6561898 b!6561287)))

(declare-fun lambda!365111 () Int)

(assert (=> bs!1674733 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 lt!2406360) lt!2406360) (= (regTwo!33390 lt!2406360) (regTwo!33390 r!7292))) (= lambda!365111 lambda!365047))))

(declare-fun bs!1674735 () Bool)

(assert (= bs!1674735 (and b!6561898 b!6561249)))

(assert (=> bs!1674735 (not (= lambda!365111 lambda!365048))))

(declare-fun bs!1674737 () Bool)

(assert (= bs!1674737 (and b!6561898 d!2058617)))

(assert (=> bs!1674737 (= (and (= (regOne!33390 lt!2406360) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 lt!2406360) lt!2406358)) (= lambda!365111 lambda!365100))))

(declare-fun bs!1674738 () Bool)

(assert (= bs!1674738 (and b!6561898 b!6561283)))

(assert (=> bs!1674738 (not (= lambda!365111 lambda!365041))))

(assert (=> bs!1674738 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 lt!2406360) (regOne!33390 r!7292)) (= (regTwo!33390 lt!2406360) (regTwo!33390 r!7292))) (= lambda!365111 lambda!365042))))

(assert (=> bs!1674737 (not (= lambda!365111 lambda!365097))))

(declare-fun bs!1674741 () Bool)

(assert (= bs!1674741 (and b!6561898 b!6561902)))

(assert (=> bs!1674741 (not (= lambda!365111 lambda!365109))))

(assert (=> bs!1674733 (not (= lambda!365111 lambda!365046))))

(assert (=> bs!1674735 (= (and (= (regOne!33390 lt!2406360) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 lt!2406360) lt!2406358)) (= lambda!365111 lambda!365049))))

(assert (=> b!6561898 true))

(assert (=> b!6561898 true))

(declare-fun b!6561894 () Bool)

(declare-fun c!1205798 () Bool)

(assert (=> b!6561894 (= c!1205798 ((_ is ElementMatch!16439) lt!2406360))))

(declare-fun e!3972295 () Bool)

(declare-fun e!3972297 () Bool)

(assert (=> b!6561894 (= e!3972295 e!3972297)))

(declare-fun b!6561895 () Bool)

(declare-fun res!2692749 () Bool)

(declare-fun e!3972298 () Bool)

(assert (=> b!6561895 (=> res!2692749 e!3972298)))

(declare-fun call!570724 () Bool)

(assert (=> b!6561895 (= res!2692749 call!570724)))

(declare-fun e!3972294 () Bool)

(assert (=> b!6561895 (= e!3972294 e!3972298)))

(declare-fun b!6561896 () Bool)

(declare-fun e!3972292 () Bool)

(declare-fun e!3972293 () Bool)

(assert (=> b!6561896 (= e!3972292 e!3972293)))

(declare-fun res!2692750 () Bool)

(assert (=> b!6561896 (= res!2692750 (matchRSpec!3540 (regOne!33391 lt!2406360) (_1!36721 lt!2406397)))))

(assert (=> b!6561896 (=> res!2692750 e!3972293)))

(declare-fun b!6561897 () Bool)

(declare-fun e!3972296 () Bool)

(assert (=> b!6561897 (= e!3972296 call!570724)))

(declare-fun call!570723 () Bool)

(assert (=> b!6561898 (= e!3972294 call!570723)))

(declare-fun b!6561899 () Bool)

(assert (=> b!6561899 (= e!3972297 (= (_1!36721 lt!2406397) (Cons!65492 (c!1205620 lt!2406360) Nil!65492)))))

(declare-fun bm!570718 () Bool)

(assert (=> bm!570718 (= call!570724 (isEmpty!37737 (_1!36721 lt!2406397)))))

(declare-fun b!6561900 () Bool)

(declare-fun c!1205795 () Bool)

(assert (=> b!6561900 (= c!1205795 ((_ is Union!16439) lt!2406360))))

(assert (=> b!6561900 (= e!3972297 e!3972292)))

(declare-fun b!6561901 () Bool)

(assert (=> b!6561901 (= e!3972292 e!3972294)))

(declare-fun c!1205796 () Bool)

(assert (=> b!6561901 (= c!1205796 ((_ is Star!16439) lt!2406360))))

(declare-fun d!2058631 () Bool)

(declare-fun c!1205797 () Bool)

(assert (=> d!2058631 (= c!1205797 ((_ is EmptyExpr!16439) lt!2406360))))

(assert (=> d!2058631 (= (matchRSpec!3540 lt!2406360 (_1!36721 lt!2406397)) e!3972296)))

(assert (=> b!6561902 (= e!3972298 call!570723)))

(declare-fun b!6561903 () Bool)

(assert (=> b!6561903 (= e!3972296 e!3972295)))

(declare-fun res!2692748 () Bool)

(assert (=> b!6561903 (= res!2692748 (not ((_ is EmptyLang!16439) lt!2406360)))))

(assert (=> b!6561903 (=> (not res!2692748) (not e!3972295))))

(declare-fun b!6561904 () Bool)

(assert (=> b!6561904 (= e!3972293 (matchRSpec!3540 (regTwo!33391 lt!2406360) (_1!36721 lt!2406397)))))

(declare-fun bm!570719 () Bool)

(assert (=> bm!570719 (= call!570723 (Exists!3509 (ite c!1205796 lambda!365109 lambda!365111)))))

(assert (= (and d!2058631 c!1205797) b!6561897))

(assert (= (and d!2058631 (not c!1205797)) b!6561903))

(assert (= (and b!6561903 res!2692748) b!6561894))

(assert (= (and b!6561894 c!1205798) b!6561899))

(assert (= (and b!6561894 (not c!1205798)) b!6561900))

(assert (= (and b!6561900 c!1205795) b!6561896))

(assert (= (and b!6561900 (not c!1205795)) b!6561901))

(assert (= (and b!6561896 (not res!2692750)) b!6561904))

(assert (= (and b!6561901 c!1205796) b!6561895))

(assert (= (and b!6561901 (not c!1205796)) b!6561898))

(assert (= (and b!6561895 (not res!2692749)) b!6561902))

(assert (= (or b!6561902 b!6561898) bm!570719))

(assert (= (or b!6561897 b!6561895) bm!570718))

(declare-fun m!7343972 () Bool)

(assert (=> b!6561896 m!7343972))

(declare-fun m!7343974 () Bool)

(assert (=> bm!570718 m!7343974))

(declare-fun m!7343976 () Bool)

(assert (=> b!6561904 m!7343976))

(declare-fun m!7343978 () Bool)

(assert (=> bm!570719 m!7343978))

(assert (=> b!6561249 d!2058631))

(declare-fun d!2058679 () Bool)

(declare-fun isEmpty!37738 (Option!16330) Bool)

(assert (=> d!2058679 (= (isDefined!13033 (findConcatSeparation!2744 (reg!16768 (regOne!33390 r!7292)) lt!2406358 Nil!65492 (_1!36721 lt!2406397) (_1!36721 lt!2406397))) (not (isEmpty!37738 (findConcatSeparation!2744 (reg!16768 (regOne!33390 r!7292)) lt!2406358 Nil!65492 (_1!36721 lt!2406397) (_1!36721 lt!2406397)))))))

(declare-fun bs!1674749 () Bool)

(assert (= bs!1674749 d!2058679))

(assert (=> bs!1674749 m!7343214))

(declare-fun m!7343980 () Bool)

(assert (=> bs!1674749 m!7343980))

(assert (=> b!6561249 d!2058679))

(declare-fun bs!1674769 () Bool)

(declare-fun d!2058681 () Bool)

(assert (= bs!1674769 (and d!2058681 b!6561898)))

(declare-fun lambda!365116 () Int)

(assert (=> bs!1674769 (not (= lambda!365116 lambda!365111))))

(declare-fun bs!1674771 () Bool)

(assert (= bs!1674771 (and d!2058681 b!6561287)))

(assert (=> bs!1674771 (not (= lambda!365116 lambda!365047))))

(declare-fun bs!1674773 () Bool)

(assert (= bs!1674773 (and d!2058681 b!6561249)))

(assert (=> bs!1674773 (= lambda!365116 lambda!365048)))

(declare-fun bs!1674775 () Bool)

(assert (= bs!1674775 (and d!2058681 d!2058617)))

(assert (=> bs!1674775 (not (= lambda!365116 lambda!365100))))

(declare-fun bs!1674777 () Bool)

(assert (= bs!1674777 (and d!2058681 b!6561283)))

(assert (=> bs!1674777 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 r!7292)) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365116 lambda!365041))))

(assert (=> bs!1674777 (not (= lambda!365116 lambda!365042))))

(assert (=> bs!1674775 (= lambda!365116 lambda!365097)))

(declare-fun bs!1674780 () Bool)

(assert (= bs!1674780 (and d!2058681 b!6561902)))

(assert (=> bs!1674780 (not (= lambda!365116 lambda!365109))))

(assert (=> bs!1674771 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) lt!2406360) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365116 lambda!365046))))

(assert (=> bs!1674773 (not (= lambda!365116 lambda!365049))))

(assert (=> d!2058681 true))

(assert (=> d!2058681 true))

(assert (=> d!2058681 true))

(assert (=> d!2058681 (= (isDefined!13033 (findConcatSeparation!2744 (reg!16768 (regOne!33390 r!7292)) lt!2406358 Nil!65492 (_1!36721 lt!2406397) (_1!36721 lt!2406397))) (Exists!3509 lambda!365116))))

(declare-fun lt!2406516 () Unit!159091)

(declare-fun choose!48966 (Regex!16439 Regex!16439 List!65616) Unit!159091)

(assert (=> d!2058681 (= lt!2406516 (choose!48966 (reg!16768 (regOne!33390 r!7292)) lt!2406358 (_1!36721 lt!2406397)))))

(assert (=> d!2058681 (validRegex!8175 (reg!16768 (regOne!33390 r!7292)))))

(assert (=> d!2058681 (= (lemmaFindConcatSeparationEquivalentToExists!2508 (reg!16768 (regOne!33390 r!7292)) lt!2406358 (_1!36721 lt!2406397)) lt!2406516)))

(declare-fun bs!1674784 () Bool)

(assert (= bs!1674784 d!2058681))

(declare-fun m!7344026 () Bool)

(assert (=> bs!1674784 m!7344026))

(assert (=> bs!1674784 m!7343214))

(declare-fun m!7344028 () Bool)

(assert (=> bs!1674784 m!7344028))

(assert (=> bs!1674784 m!7343214))

(assert (=> bs!1674784 m!7343220))

(assert (=> bs!1674784 m!7343212))

(assert (=> b!6561249 d!2058681))

(declare-fun b!6561991 () Bool)

(declare-fun e!3972352 () Bool)

(declare-fun lt!2406527 () Option!16330)

(assert (=> b!6561991 (= e!3972352 (not (isDefined!13033 lt!2406527)))))

(declare-fun b!6561992 () Bool)

(declare-fun res!2692795 () Bool)

(declare-fun e!3972351 () Bool)

(assert (=> b!6561992 (=> (not res!2692795) (not e!3972351))))

(assert (=> b!6561992 (= res!2692795 (matchR!8622 (reg!16768 (regOne!33390 r!7292)) (_1!36721 (get!22740 lt!2406527))))))

(declare-fun b!6561993 () Bool)

(declare-fun lt!2406526 () Unit!159091)

(declare-fun lt!2406528 () Unit!159091)

(assert (=> b!6561993 (= lt!2406526 lt!2406528)))

(assert (=> b!6561993 (= (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492)) (t!379258 (_1!36721 lt!2406397))) (_1!36721 lt!2406397))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2582 (List!65616 C!33148 List!65616 List!65616) Unit!159091)

(assert (=> b!6561993 (= lt!2406528 (lemmaMoveElementToOtherListKeepsConcatEq!2582 Nil!65492 (h!71940 (_1!36721 lt!2406397)) (t!379258 (_1!36721 lt!2406397)) (_1!36721 lt!2406397)))))

(declare-fun e!3972353 () Option!16330)

(assert (=> b!6561993 (= e!3972353 (findConcatSeparation!2744 (reg!16768 (regOne!33390 r!7292)) lt!2406358 (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492)) (t!379258 (_1!36721 lt!2406397)) (_1!36721 lt!2406397)))))

(declare-fun b!6561994 () Bool)

(declare-fun e!3972350 () Option!16330)

(assert (=> b!6561994 (= e!3972350 e!3972353)))

(declare-fun c!1205823 () Bool)

(assert (=> b!6561994 (= c!1205823 ((_ is Nil!65492) (_1!36721 lt!2406397)))))

(declare-fun d!2058697 () Bool)

(assert (=> d!2058697 e!3972352))

(declare-fun res!2692794 () Bool)

(assert (=> d!2058697 (=> res!2692794 e!3972352)))

(assert (=> d!2058697 (= res!2692794 e!3972351)))

(declare-fun res!2692792 () Bool)

(assert (=> d!2058697 (=> (not res!2692792) (not e!3972351))))

(assert (=> d!2058697 (= res!2692792 (isDefined!13033 lt!2406527))))

(assert (=> d!2058697 (= lt!2406527 e!3972350)))

(declare-fun c!1205822 () Bool)

(declare-fun e!3972354 () Bool)

(assert (=> d!2058697 (= c!1205822 e!3972354)))

(declare-fun res!2692791 () Bool)

(assert (=> d!2058697 (=> (not res!2692791) (not e!3972354))))

(assert (=> d!2058697 (= res!2692791 (matchR!8622 (reg!16768 (regOne!33390 r!7292)) Nil!65492))))

(assert (=> d!2058697 (validRegex!8175 (reg!16768 (regOne!33390 r!7292)))))

(assert (=> d!2058697 (= (findConcatSeparation!2744 (reg!16768 (regOne!33390 r!7292)) lt!2406358 Nil!65492 (_1!36721 lt!2406397) (_1!36721 lt!2406397)) lt!2406527)))

(declare-fun b!6561995 () Bool)

(assert (=> b!6561995 (= e!3972353 None!16329)))

(declare-fun b!6561996 () Bool)

(assert (=> b!6561996 (= e!3972350 (Some!16329 (tuple2!66837 Nil!65492 (_1!36721 lt!2406397))))))

(declare-fun b!6561997 () Bool)

(declare-fun res!2692793 () Bool)

(assert (=> b!6561997 (=> (not res!2692793) (not e!3972351))))

(assert (=> b!6561997 (= res!2692793 (matchR!8622 lt!2406358 (_2!36721 (get!22740 lt!2406527))))))

(declare-fun b!6561998 () Bool)

(assert (=> b!6561998 (= e!3972351 (= (++!14580 (_1!36721 (get!22740 lt!2406527)) (_2!36721 (get!22740 lt!2406527))) (_1!36721 lt!2406397)))))

(declare-fun b!6561999 () Bool)

(assert (=> b!6561999 (= e!3972354 (matchR!8622 lt!2406358 (_1!36721 lt!2406397)))))

(assert (= (and d!2058697 res!2692791) b!6561999))

(assert (= (and d!2058697 c!1205822) b!6561996))

(assert (= (and d!2058697 (not c!1205822)) b!6561994))

(assert (= (and b!6561994 c!1205823) b!6561995))

(assert (= (and b!6561994 (not c!1205823)) b!6561993))

(assert (= (and d!2058697 res!2692792) b!6561992))

(assert (= (and b!6561992 res!2692795) b!6561997))

(assert (= (and b!6561997 res!2692793) b!6561998))

(assert (= (and d!2058697 (not res!2692794)) b!6561991))

(declare-fun m!7344052 () Bool)

(assert (=> d!2058697 m!7344052))

(declare-fun m!7344054 () Bool)

(assert (=> d!2058697 m!7344054))

(assert (=> d!2058697 m!7343212))

(declare-fun m!7344056 () Bool)

(assert (=> b!6561999 m!7344056))

(assert (=> b!6561991 m!7344052))

(declare-fun m!7344058 () Bool)

(assert (=> b!6561992 m!7344058))

(declare-fun m!7344060 () Bool)

(assert (=> b!6561992 m!7344060))

(assert (=> b!6561997 m!7344058))

(declare-fun m!7344062 () Bool)

(assert (=> b!6561997 m!7344062))

(declare-fun m!7344064 () Bool)

(assert (=> b!6561993 m!7344064))

(assert (=> b!6561993 m!7344064))

(declare-fun m!7344066 () Bool)

(assert (=> b!6561993 m!7344066))

(declare-fun m!7344068 () Bool)

(assert (=> b!6561993 m!7344068))

(assert (=> b!6561993 m!7344064))

(declare-fun m!7344070 () Bool)

(assert (=> b!6561993 m!7344070))

(assert (=> b!6561998 m!7344058))

(declare-fun m!7344072 () Bool)

(assert (=> b!6561998 m!7344072))

(assert (=> b!6561249 d!2058697))

(declare-fun d!2058709 () Bool)

(declare-fun lt!2406531 () Regex!16439)

(assert (=> d!2058709 (validRegex!8175 lt!2406531)))

(assert (=> d!2058709 (= lt!2406531 (generalisedUnion!2283 (unfocusZipperList!1860 lt!2406393)))))

(assert (=> d!2058709 (= (unfocusZipper!2181 lt!2406393) lt!2406531)))

(declare-fun bs!1674839 () Bool)

(assert (= bs!1674839 d!2058709))

(declare-fun m!7344074 () Bool)

(assert (=> bs!1674839 m!7344074))

(declare-fun m!7344076 () Bool)

(assert (=> bs!1674839 m!7344076))

(assert (=> bs!1674839 m!7344076))

(declare-fun m!7344078 () Bool)

(assert (=> bs!1674839 m!7344078))

(assert (=> b!6561248 d!2058709))

(declare-fun b!6562064 () Bool)

(declare-fun e!3972385 () Bool)

(assert (=> b!6562064 (= e!3972385 (nullable!6432 (h!71941 (exprs!6323 lt!2406347))))))

(declare-fun bm!570732 () Bool)

(declare-fun call!570737 () (InoxSet Context!11646))

(assert (=> bm!570732 (= call!570737 (derivationStepZipperDown!1687 (h!71941 (exprs!6323 lt!2406347)) (Context!11647 (t!379259 (exprs!6323 lt!2406347))) (h!71940 s!2326)))))

(declare-fun e!3972386 () (InoxSet Context!11646))

(declare-fun b!6562065 () Bool)

(assert (=> b!6562065 (= e!3972386 ((_ map or) call!570737 (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 lt!2406347))) (h!71940 s!2326))))))

(declare-fun d!2058711 () Bool)

(declare-fun c!1205829 () Bool)

(assert (=> d!2058711 (= c!1205829 e!3972385)))

(declare-fun res!2692798 () Bool)

(assert (=> d!2058711 (=> (not res!2692798) (not e!3972385))))

(assert (=> d!2058711 (= res!2692798 ((_ is Cons!65493) (exprs!6323 lt!2406347)))))

(assert (=> d!2058711 (= (derivationStepZipperUp!1613 lt!2406347 (h!71940 s!2326)) e!3972386)))

(declare-fun b!6562066 () Bool)

(declare-fun e!3972384 () (InoxSet Context!11646))

(assert (=> b!6562066 (= e!3972386 e!3972384)))

(declare-fun c!1205828 () Bool)

(assert (=> b!6562066 (= c!1205828 ((_ is Cons!65493) (exprs!6323 lt!2406347)))))

(declare-fun b!6562067 () Bool)

(assert (=> b!6562067 (= e!3972384 call!570737)))

(declare-fun b!6562068 () Bool)

(assert (=> b!6562068 (= e!3972384 ((as const (Array Context!11646 Bool)) false))))

(assert (= (and d!2058711 res!2692798) b!6562064))

(assert (= (and d!2058711 c!1205829) b!6562065))

(assert (= (and d!2058711 (not c!1205829)) b!6562066))

(assert (= (and b!6562066 c!1205828) b!6562067))

(assert (= (and b!6562066 (not c!1205828)) b!6562068))

(assert (= (or b!6562065 b!6562067) bm!570732))

(declare-fun m!7344088 () Bool)

(assert (=> b!6562064 m!7344088))

(declare-fun m!7344090 () Bool)

(assert (=> bm!570732 m!7344090))

(declare-fun m!7344092 () Bool)

(assert (=> b!6562065 m!7344092))

(assert (=> b!6561288 d!2058711))

(declare-fun d!2058723 () Bool)

(declare-fun dynLambda!26049 (Int Context!11646) (InoxSet Context!11646))

(assert (=> d!2058723 (= (flatMap!1944 lt!2406394 lambda!365043) (dynLambda!26049 lambda!365043 lt!2406352))))

(declare-fun lt!2406535 () Unit!159091)

(declare-fun choose!48969 ((InoxSet Context!11646) Context!11646 Int) Unit!159091)

(assert (=> d!2058723 (= lt!2406535 (choose!48969 lt!2406394 lt!2406352 lambda!365043))))

(assert (=> d!2058723 (= lt!2406394 (store ((as const (Array Context!11646 Bool)) false) lt!2406352 true))))

(assert (=> d!2058723 (= (lemmaFlatMapOnSingletonSet!1470 lt!2406394 lt!2406352 lambda!365043) lt!2406535)))

(declare-fun b_lambda!248221 () Bool)

(assert (=> (not b_lambda!248221) (not d!2058723)))

(declare-fun bs!1674845 () Bool)

(assert (= bs!1674845 d!2058723))

(assert (=> bs!1674845 m!7343350))

(declare-fun m!7344094 () Bool)

(assert (=> bs!1674845 m!7344094))

(declare-fun m!7344096 () Bool)

(assert (=> bs!1674845 m!7344096))

(assert (=> bs!1674845 m!7343358))

(assert (=> b!6561288 d!2058723))

(declare-fun d!2058725 () Bool)

(declare-fun lt!2406536 () Regex!16439)

(assert (=> d!2058725 (validRegex!8175 lt!2406536)))

(assert (=> d!2058725 (= lt!2406536 (generalisedUnion!2283 (unfocusZipperList!1860 lt!2406367)))))

(assert (=> d!2058725 (= (unfocusZipper!2181 lt!2406367) lt!2406536)))

(declare-fun bs!1674846 () Bool)

(assert (= bs!1674846 d!2058725))

(declare-fun m!7344098 () Bool)

(assert (=> bs!1674846 m!7344098))

(declare-fun m!7344100 () Bool)

(assert (=> bs!1674846 m!7344100))

(assert (=> bs!1674846 m!7344100))

(declare-fun m!7344102 () Bool)

(assert (=> bs!1674846 m!7344102))

(assert (=> b!6561288 d!2058725))

(declare-fun d!2058727 () Bool)

(declare-fun choose!48971 ((InoxSet Context!11646) Int) (InoxSet Context!11646))

(assert (=> d!2058727 (= (flatMap!1944 lt!2406365 lambda!365043) (choose!48971 lt!2406365 lambda!365043))))

(declare-fun bs!1674847 () Bool)

(assert (= bs!1674847 d!2058727))

(declare-fun m!7344104 () Bool)

(assert (=> bs!1674847 m!7344104))

(assert (=> b!6561288 d!2058727))

(declare-fun d!2058729 () Bool)

(assert (=> d!2058729 (= (flatMap!1944 lt!2406365 lambda!365043) (dynLambda!26049 lambda!365043 lt!2406347))))

(declare-fun lt!2406537 () Unit!159091)

(assert (=> d!2058729 (= lt!2406537 (choose!48969 lt!2406365 lt!2406347 lambda!365043))))

(assert (=> d!2058729 (= lt!2406365 (store ((as const (Array Context!11646 Bool)) false) lt!2406347 true))))

(assert (=> d!2058729 (= (lemmaFlatMapOnSingletonSet!1470 lt!2406365 lt!2406347 lambda!365043) lt!2406537)))

(declare-fun b_lambda!248223 () Bool)

(assert (=> (not b_lambda!248223) (not d!2058729)))

(declare-fun bs!1674848 () Bool)

(assert (= bs!1674848 d!2058729))

(assert (=> bs!1674848 m!7343354))

(declare-fun m!7344106 () Bool)

(assert (=> bs!1674848 m!7344106))

(declare-fun m!7344108 () Bool)

(assert (=> bs!1674848 m!7344108))

(assert (=> bs!1674848 m!7343360))

(assert (=> b!6561288 d!2058729))

(declare-fun b!6562069 () Bool)

(declare-fun e!3972388 () Bool)

(assert (=> b!6562069 (= e!3972388 (nullable!6432 (h!71941 (exprs!6323 lt!2406352))))))

(declare-fun bm!570733 () Bool)

(declare-fun call!570738 () (InoxSet Context!11646))

(assert (=> bm!570733 (= call!570738 (derivationStepZipperDown!1687 (h!71941 (exprs!6323 lt!2406352)) (Context!11647 (t!379259 (exprs!6323 lt!2406352))) (h!71940 s!2326)))))

(declare-fun e!3972389 () (InoxSet Context!11646))

(declare-fun b!6562070 () Bool)

(assert (=> b!6562070 (= e!3972389 ((_ map or) call!570738 (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 lt!2406352))) (h!71940 s!2326))))))

(declare-fun d!2058731 () Bool)

(declare-fun c!1205831 () Bool)

(assert (=> d!2058731 (= c!1205831 e!3972388)))

(declare-fun res!2692799 () Bool)

(assert (=> d!2058731 (=> (not res!2692799) (not e!3972388))))

(assert (=> d!2058731 (= res!2692799 ((_ is Cons!65493) (exprs!6323 lt!2406352)))))

(assert (=> d!2058731 (= (derivationStepZipperUp!1613 lt!2406352 (h!71940 s!2326)) e!3972389)))

(declare-fun b!6562071 () Bool)

(declare-fun e!3972387 () (InoxSet Context!11646))

(assert (=> b!6562071 (= e!3972389 e!3972387)))

(declare-fun c!1205830 () Bool)

(assert (=> b!6562071 (= c!1205830 ((_ is Cons!65493) (exprs!6323 lt!2406352)))))

(declare-fun b!6562072 () Bool)

(assert (=> b!6562072 (= e!3972387 call!570738)))

(declare-fun b!6562073 () Bool)

(assert (=> b!6562073 (= e!3972387 ((as const (Array Context!11646 Bool)) false))))

(assert (= (and d!2058731 res!2692799) b!6562069))

(assert (= (and d!2058731 c!1205831) b!6562070))

(assert (= (and d!2058731 (not c!1205831)) b!6562071))

(assert (= (and b!6562071 c!1205830) b!6562072))

(assert (= (and b!6562071 (not c!1205830)) b!6562073))

(assert (= (or b!6562070 b!6562072) bm!570733))

(declare-fun m!7344110 () Bool)

(assert (=> b!6562069 m!7344110))

(declare-fun m!7344112 () Bool)

(assert (=> bm!570733 m!7344112))

(declare-fun m!7344114 () Bool)

(assert (=> b!6562070 m!7344114))

(assert (=> b!6561288 d!2058731))

(declare-fun d!2058733 () Bool)

(assert (=> d!2058733 (= (flatMap!1944 lt!2406394 lambda!365043) (choose!48971 lt!2406394 lambda!365043))))

(declare-fun bs!1674849 () Bool)

(assert (= bs!1674849 d!2058733))

(declare-fun m!7344116 () Bool)

(assert (=> bs!1674849 m!7344116))

(assert (=> b!6561288 d!2058733))

(declare-fun bs!1674850 () Bool)

(declare-fun d!2058735 () Bool)

(assert (= bs!1674850 (and d!2058735 b!6561265)))

(declare-fun lambda!365124 () Int)

(assert (=> bs!1674850 (= lambda!365124 lambda!365045)))

(declare-fun bs!1674851 () Bool)

(assert (= bs!1674851 (and d!2058735 d!2058587)))

(assert (=> bs!1674851 (= lambda!365124 lambda!365086)))

(declare-fun bs!1674852 () Bool)

(assert (= bs!1674852 (and d!2058735 d!2058599)))

(assert (=> bs!1674852 (= lambda!365124 lambda!365092)))

(declare-fun b!6562094 () Bool)

(declare-fun e!3972407 () Regex!16439)

(assert (=> b!6562094 (= e!3972407 EmptyLang!16439)))

(declare-fun b!6562095 () Bool)

(declare-fun e!3972404 () Bool)

(declare-fun e!3972402 () Bool)

(assert (=> b!6562095 (= e!3972404 e!3972402)))

(declare-fun c!1205841 () Bool)

(assert (=> b!6562095 (= c!1205841 (isEmpty!37733 (unfocusZipperList!1860 zl!343)))))

(declare-fun b!6562097 () Bool)

(declare-fun lt!2406540 () Regex!16439)

(declare-fun isEmptyLang!1826 (Regex!16439) Bool)

(assert (=> b!6562097 (= e!3972402 (isEmptyLang!1826 lt!2406540))))

(declare-fun b!6562098 () Bool)

(assert (=> b!6562098 (= e!3972407 (Union!16439 (h!71941 (unfocusZipperList!1860 zl!343)) (generalisedUnion!2283 (t!379259 (unfocusZipperList!1860 zl!343)))))))

(declare-fun b!6562099 () Bool)

(declare-fun e!3972405 () Bool)

(assert (=> b!6562099 (= e!3972402 e!3972405)))

(declare-fun c!1205840 () Bool)

(assert (=> b!6562099 (= c!1205840 (isEmpty!37733 (tail!12413 (unfocusZipperList!1860 zl!343))))))

(declare-fun b!6562100 () Bool)

(declare-fun isUnion!1256 (Regex!16439) Bool)

(assert (=> b!6562100 (= e!3972405 (isUnion!1256 lt!2406540))))

(declare-fun b!6562101 () Bool)

(declare-fun e!3972403 () Regex!16439)

(assert (=> b!6562101 (= e!3972403 e!3972407)))

(declare-fun c!1205843 () Bool)

(assert (=> b!6562101 (= c!1205843 ((_ is Cons!65493) (unfocusZipperList!1860 zl!343)))))

(assert (=> d!2058735 e!3972404))

(declare-fun res!2692805 () Bool)

(assert (=> d!2058735 (=> (not res!2692805) (not e!3972404))))

(assert (=> d!2058735 (= res!2692805 (validRegex!8175 lt!2406540))))

(assert (=> d!2058735 (= lt!2406540 e!3972403)))

(declare-fun c!1205842 () Bool)

(declare-fun e!3972406 () Bool)

(assert (=> d!2058735 (= c!1205842 e!3972406)))

(declare-fun res!2692804 () Bool)

(assert (=> d!2058735 (=> (not res!2692804) (not e!3972406))))

(assert (=> d!2058735 (= res!2692804 ((_ is Cons!65493) (unfocusZipperList!1860 zl!343)))))

(assert (=> d!2058735 (forall!15611 (unfocusZipperList!1860 zl!343) lambda!365124)))

(assert (=> d!2058735 (= (generalisedUnion!2283 (unfocusZipperList!1860 zl!343)) lt!2406540)))

(declare-fun b!6562096 () Bool)

(assert (=> b!6562096 (= e!3972405 (= lt!2406540 (head!13328 (unfocusZipperList!1860 zl!343))))))

(declare-fun b!6562102 () Bool)

(assert (=> b!6562102 (= e!3972403 (h!71941 (unfocusZipperList!1860 zl!343)))))

(declare-fun b!6562103 () Bool)

(assert (=> b!6562103 (= e!3972406 (isEmpty!37733 (t!379259 (unfocusZipperList!1860 zl!343))))))

(assert (= (and d!2058735 res!2692804) b!6562103))

(assert (= (and d!2058735 c!1205842) b!6562102))

(assert (= (and d!2058735 (not c!1205842)) b!6562101))

(assert (= (and b!6562101 c!1205843) b!6562098))

(assert (= (and b!6562101 (not c!1205843)) b!6562094))

(assert (= (and d!2058735 res!2692805) b!6562095))

(assert (= (and b!6562095 c!1205841) b!6562097))

(assert (= (and b!6562095 (not c!1205841)) b!6562099))

(assert (= (and b!6562099 c!1205840) b!6562096))

(assert (= (and b!6562099 (not c!1205840)) b!6562100))

(declare-fun m!7344118 () Bool)

(assert (=> b!6562100 m!7344118))

(assert (=> b!6562095 m!7343266))

(declare-fun m!7344120 () Bool)

(assert (=> b!6562095 m!7344120))

(declare-fun m!7344122 () Bool)

(assert (=> b!6562098 m!7344122))

(declare-fun m!7344124 () Bool)

(assert (=> b!6562103 m!7344124))

(assert (=> b!6562096 m!7343266))

(declare-fun m!7344126 () Bool)

(assert (=> b!6562096 m!7344126))

(declare-fun m!7344128 () Bool)

(assert (=> d!2058735 m!7344128))

(assert (=> d!2058735 m!7343266))

(declare-fun m!7344130 () Bool)

(assert (=> d!2058735 m!7344130))

(assert (=> b!6562099 m!7343266))

(declare-fun m!7344132 () Bool)

(assert (=> b!6562099 m!7344132))

(assert (=> b!6562099 m!7344132))

(declare-fun m!7344134 () Bool)

(assert (=> b!6562099 m!7344134))

(declare-fun m!7344136 () Bool)

(assert (=> b!6562097 m!7344136))

(assert (=> b!6561268 d!2058735))

(declare-fun bs!1674853 () Bool)

(declare-fun d!2058737 () Bool)

(assert (= bs!1674853 (and d!2058737 b!6561265)))

(declare-fun lambda!365127 () Int)

(assert (=> bs!1674853 (= lambda!365127 lambda!365045)))

(declare-fun bs!1674854 () Bool)

(assert (= bs!1674854 (and d!2058737 d!2058587)))

(assert (=> bs!1674854 (= lambda!365127 lambda!365086)))

(declare-fun bs!1674855 () Bool)

(assert (= bs!1674855 (and d!2058737 d!2058599)))

(assert (=> bs!1674855 (= lambda!365127 lambda!365092)))

(declare-fun bs!1674856 () Bool)

(assert (= bs!1674856 (and d!2058737 d!2058735)))

(assert (=> bs!1674856 (= lambda!365127 lambda!365124)))

(declare-fun lt!2406543 () List!65617)

(assert (=> d!2058737 (forall!15611 lt!2406543 lambda!365127)))

(declare-fun e!3972410 () List!65617)

(assert (=> d!2058737 (= lt!2406543 e!3972410)))

(declare-fun c!1205846 () Bool)

(assert (=> d!2058737 (= c!1205846 ((_ is Cons!65494) zl!343))))

(assert (=> d!2058737 (= (unfocusZipperList!1860 zl!343) lt!2406543)))

(declare-fun b!6562108 () Bool)

(assert (=> b!6562108 (= e!3972410 (Cons!65493 (generalisedConcat!2036 (exprs!6323 (h!71942 zl!343))) (unfocusZipperList!1860 (t!379260 zl!343))))))

(declare-fun b!6562109 () Bool)

(assert (=> b!6562109 (= e!3972410 Nil!65493)))

(assert (= (and d!2058737 c!1205846) b!6562108))

(assert (= (and d!2058737 (not c!1205846)) b!6562109))

(declare-fun m!7344138 () Bool)

(assert (=> d!2058737 m!7344138))

(assert (=> b!6562108 m!7343272))

(declare-fun m!7344140 () Bool)

(assert (=> b!6562108 m!7344140))

(assert (=> b!6561268 d!2058737))

(declare-fun bs!1674857 () Bool)

(declare-fun d!2058739 () Bool)

(assert (= bs!1674857 (and d!2058739 b!6561265)))

(declare-fun lambda!365128 () Int)

(assert (=> bs!1674857 (= lambda!365128 lambda!365045)))

(declare-fun bs!1674858 () Bool)

(assert (= bs!1674858 (and d!2058739 d!2058735)))

(assert (=> bs!1674858 (= lambda!365128 lambda!365124)))

(declare-fun bs!1674859 () Bool)

(assert (= bs!1674859 (and d!2058739 d!2058599)))

(assert (=> bs!1674859 (= lambda!365128 lambda!365092)))

(declare-fun bs!1674860 () Bool)

(assert (= bs!1674860 (and d!2058739 d!2058587)))

(assert (=> bs!1674860 (= lambda!365128 lambda!365086)))

(declare-fun bs!1674861 () Bool)

(assert (= bs!1674861 (and d!2058739 d!2058737)))

(assert (=> bs!1674861 (= lambda!365128 lambda!365127)))

(assert (=> d!2058739 (= (inv!84344 setElem!44790) (forall!15611 (exprs!6323 setElem!44790) lambda!365128))))

(declare-fun bs!1674862 () Bool)

(assert (= bs!1674862 d!2058739))

(declare-fun m!7344142 () Bool)

(assert (=> bs!1674862 m!7344142))

(assert (=> setNonEmpty!44790 d!2058739))

(declare-fun bm!570746 () Bool)

(declare-fun call!570752 () List!65617)

(declare-fun call!570756 () List!65617)

(assert (=> bm!570746 (= call!570752 call!570756)))

(declare-fun b!6562132 () Bool)

(declare-fun e!3972425 () (InoxSet Context!11646))

(assert (=> b!6562132 (= e!3972425 (store ((as const (Array Context!11646 Bool)) false) lt!2406352 true))))

(declare-fun b!6562133 () Bool)

(declare-fun e!3972428 () (InoxSet Context!11646))

(declare-fun e!3972427 () (InoxSet Context!11646))

(assert (=> b!6562133 (= e!3972428 e!3972427)))

(declare-fun c!1205859 () Bool)

(assert (=> b!6562133 (= c!1205859 ((_ is Concat!25284) (reg!16768 (regOne!33390 r!7292))))))

(declare-fun b!6562134 () Bool)

(declare-fun e!3972426 () (InoxSet Context!11646))

(declare-fun call!570755 () (InoxSet Context!11646))

(assert (=> b!6562134 (= e!3972426 call!570755)))

(declare-fun b!6562135 () Bool)

(declare-fun call!570754 () (InoxSet Context!11646))

(declare-fun call!570751 () (InoxSet Context!11646))

(assert (=> b!6562135 (= e!3972428 ((_ map or) call!570754 call!570751))))

(declare-fun c!1205857 () Bool)

(declare-fun bm!570747 () Bool)

(assert (=> bm!570747 (= call!570754 (derivationStepZipperDown!1687 (ite c!1205857 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292)))) (ite c!1205857 lt!2406352 (Context!11647 call!570756)) (h!71940 s!2326)))))

(declare-fun b!6562136 () Bool)

(assert (=> b!6562136 (= e!3972427 call!570755)))

(declare-fun c!1205861 () Bool)

(declare-fun bm!570748 () Bool)

(declare-fun call!570753 () (InoxSet Context!11646))

(assert (=> bm!570748 (= call!570753 (derivationStepZipperDown!1687 (ite c!1205857 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1205861 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (ite c!1205859 (regOne!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (reg!16768 (regOne!33390 r!7292)))))) (ite (or c!1205857 c!1205861) lt!2406352 (Context!11647 call!570752)) (h!71940 s!2326)))))

(declare-fun b!6562137 () Bool)

(declare-fun e!3972423 () Bool)

(assert (=> b!6562137 (= e!3972423 (nullable!6432 (regOne!33390 (reg!16768 (regOne!33390 r!7292)))))))

(declare-fun bm!570749 () Bool)

(assert (=> bm!570749 (= call!570755 call!570751)))

(declare-fun bm!570750 () Bool)

(assert (=> bm!570750 (= call!570751 call!570753)))

(declare-fun b!6562138 () Bool)

(declare-fun c!1205860 () Bool)

(assert (=> b!6562138 (= c!1205860 ((_ is Star!16439) (reg!16768 (regOne!33390 r!7292))))))

(assert (=> b!6562138 (= e!3972427 e!3972426)))

(declare-fun b!6562139 () Bool)

(assert (=> b!6562139 (= e!3972426 ((as const (Array Context!11646 Bool)) false))))

(declare-fun b!6562140 () Bool)

(declare-fun e!3972424 () (InoxSet Context!11646))

(assert (=> b!6562140 (= e!3972425 e!3972424)))

(assert (=> b!6562140 (= c!1205857 ((_ is Union!16439) (reg!16768 (regOne!33390 r!7292))))))

(declare-fun bm!570751 () Bool)

(declare-fun $colon$colon!2280 (List!65617 Regex!16439) List!65617)

(assert (=> bm!570751 (= call!570756 ($colon$colon!2280 (exprs!6323 lt!2406352) (ite (or c!1205861 c!1205859) (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (regOne!33390 r!7292)))))))

(declare-fun b!6562141 () Bool)

(assert (=> b!6562141 (= e!3972424 ((_ map or) call!570754 call!570753))))

(declare-fun d!2058741 () Bool)

(declare-fun c!1205858 () Bool)

(assert (=> d!2058741 (= c!1205858 (and ((_ is ElementMatch!16439) (reg!16768 (regOne!33390 r!7292))) (= (c!1205620 (reg!16768 (regOne!33390 r!7292))) (h!71940 s!2326))))))

(assert (=> d!2058741 (= (derivationStepZipperDown!1687 (reg!16768 (regOne!33390 r!7292)) lt!2406352 (h!71940 s!2326)) e!3972425)))

(declare-fun b!6562142 () Bool)

(assert (=> b!6562142 (= c!1205861 e!3972423)))

(declare-fun res!2692808 () Bool)

(assert (=> b!6562142 (=> (not res!2692808) (not e!3972423))))

(assert (=> b!6562142 (= res!2692808 ((_ is Concat!25284) (reg!16768 (regOne!33390 r!7292))))))

(assert (=> b!6562142 (= e!3972424 e!3972428)))

(assert (= (and d!2058741 c!1205858) b!6562132))

(assert (= (and d!2058741 (not c!1205858)) b!6562140))

(assert (= (and b!6562140 c!1205857) b!6562141))

(assert (= (and b!6562140 (not c!1205857)) b!6562142))

(assert (= (and b!6562142 res!2692808) b!6562137))

(assert (= (and b!6562142 c!1205861) b!6562135))

(assert (= (and b!6562142 (not c!1205861)) b!6562133))

(assert (= (and b!6562133 c!1205859) b!6562136))

(assert (= (and b!6562133 (not c!1205859)) b!6562138))

(assert (= (and b!6562138 c!1205860) b!6562134))

(assert (= (and b!6562138 (not c!1205860)) b!6562139))

(assert (= (or b!6562136 b!6562134) bm!570746))

(assert (= (or b!6562136 b!6562134) bm!570749))

(assert (= (or b!6562135 bm!570746) bm!570751))

(assert (= (or b!6562135 bm!570749) bm!570750))

(assert (= (or b!6562141 bm!570750) bm!570748))

(assert (= (or b!6562141 b!6562135) bm!570747))

(declare-fun m!7344144 () Bool)

(assert (=> b!6562137 m!7344144))

(assert (=> b!6562132 m!7343358))

(declare-fun m!7344146 () Bool)

(assert (=> bm!570751 m!7344146))

(declare-fun m!7344148 () Bool)

(assert (=> bm!570747 m!7344148))

(declare-fun m!7344150 () Bool)

(assert (=> bm!570748 m!7344150))

(assert (=> b!6561251 d!2058741))

(declare-fun d!2058743 () Bool)

(declare-fun lt!2406544 () Regex!16439)

(assert (=> d!2058743 (validRegex!8175 lt!2406544)))

(assert (=> d!2058743 (= lt!2406544 (generalisedUnion!2283 (unfocusZipperList!1860 zl!343)))))

(assert (=> d!2058743 (= (unfocusZipper!2181 zl!343) lt!2406544)))

(declare-fun bs!1674863 () Bool)

(assert (= bs!1674863 d!2058743))

(declare-fun m!7344152 () Bool)

(assert (=> bs!1674863 m!7344152))

(assert (=> bs!1674863 m!7343266))

(assert (=> bs!1674863 m!7343266))

(assert (=> bs!1674863 m!7343268))

(assert (=> b!6561250 d!2058743))

(declare-fun d!2058745 () Bool)

(assert (=> d!2058745 (= (isDefined!13033 lt!2406388) (not (isEmpty!37738 lt!2406388)))))

(declare-fun bs!1674864 () Bool)

(assert (= bs!1674864 d!2058745))

(declare-fun m!7344154 () Bool)

(assert (=> bs!1674864 m!7344154))

(assert (=> b!6561244 d!2058745))

(declare-fun d!2058747 () Bool)

(assert (=> d!2058747 (= (get!22740 lt!2406388) (v!52514 lt!2406388))))

(assert (=> b!6561244 d!2058747))

(declare-fun d!2058749 () Bool)

(assert (=> d!2058749 (isDefined!13033 (findConcatSeparationZippers!204 lt!2406365 (store ((as const (Array Context!11646 Bool)) false) lt!2406352 true) Nil!65492 s!2326 s!2326))))

(declare-fun lt!2406547 () Unit!159091)

(declare-fun choose!48973 ((InoxSet Context!11646) Context!11646 List!65616) Unit!159091)

(assert (=> d!2058749 (= lt!2406547 (choose!48973 lt!2406365 lt!2406352 s!2326))))

(assert (=> d!2058749 (matchZipper!2451 (appendTo!200 lt!2406365 lt!2406352) s!2326)))

(assert (=> d!2058749 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!204 lt!2406365 lt!2406352 s!2326) lt!2406547)))

(declare-fun bs!1674865 () Bool)

(assert (= bs!1674865 d!2058749))

(declare-fun m!7344156 () Bool)

(assert (=> bs!1674865 m!7344156))

(declare-fun m!7344158 () Bool)

(assert (=> bs!1674865 m!7344158))

(declare-fun m!7344160 () Bool)

(assert (=> bs!1674865 m!7344160))

(assert (=> bs!1674865 m!7343358))

(assert (=> bs!1674865 m!7344158))

(assert (=> bs!1674865 m!7343358))

(assert (=> bs!1674865 m!7343292))

(declare-fun m!7344162 () Bool)

(assert (=> bs!1674865 m!7344162))

(assert (=> bs!1674865 m!7343292))

(assert (=> b!6561244 d!2058749))

(declare-fun b!6562151 () Bool)

(declare-fun e!3972434 () List!65616)

(assert (=> b!6562151 (= e!3972434 (_2!36721 lt!2406377))))

(declare-fun b!6562154 () Bool)

(declare-fun e!3972433 () Bool)

(declare-fun lt!2406550 () List!65616)

(assert (=> b!6562154 (= e!3972433 (or (not (= (_2!36721 lt!2406377) Nil!65492)) (= lt!2406550 (_1!36721 lt!2406377))))))

(declare-fun d!2058751 () Bool)

(assert (=> d!2058751 e!3972433))

(declare-fun res!2692813 () Bool)

(assert (=> d!2058751 (=> (not res!2692813) (not e!3972433))))

(declare-fun content!12598 (List!65616) (InoxSet C!33148))

(assert (=> d!2058751 (= res!2692813 (= (content!12598 lt!2406550) ((_ map or) (content!12598 (_1!36721 lt!2406377)) (content!12598 (_2!36721 lt!2406377)))))))

(assert (=> d!2058751 (= lt!2406550 e!3972434)))

(declare-fun c!1205864 () Bool)

(assert (=> d!2058751 (= c!1205864 ((_ is Nil!65492) (_1!36721 lt!2406377)))))

(assert (=> d!2058751 (= (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377)) lt!2406550)))

(declare-fun b!6562152 () Bool)

(assert (=> b!6562152 (= e!3972434 (Cons!65492 (h!71940 (_1!36721 lt!2406377)) (++!14580 (t!379258 (_1!36721 lt!2406377)) (_2!36721 lt!2406377))))))

(declare-fun b!6562153 () Bool)

(declare-fun res!2692814 () Bool)

(assert (=> b!6562153 (=> (not res!2692814) (not e!3972433))))

(declare-fun size!40527 (List!65616) Int)

(assert (=> b!6562153 (= res!2692814 (= (size!40527 lt!2406550) (+ (size!40527 (_1!36721 lt!2406377)) (size!40527 (_2!36721 lt!2406377)))))))

(assert (= (and d!2058751 c!1205864) b!6562151))

(assert (= (and d!2058751 (not c!1205864)) b!6562152))

(assert (= (and d!2058751 res!2692813) b!6562153))

(assert (= (and b!6562153 res!2692814) b!6562154))

(declare-fun m!7344164 () Bool)

(assert (=> d!2058751 m!7344164))

(declare-fun m!7344166 () Bool)

(assert (=> d!2058751 m!7344166))

(declare-fun m!7344168 () Bool)

(assert (=> d!2058751 m!7344168))

(declare-fun m!7344170 () Bool)

(assert (=> b!6562152 m!7344170))

(declare-fun m!7344172 () Bool)

(assert (=> b!6562153 m!7344172))

(declare-fun m!7344174 () Bool)

(assert (=> b!6562153 m!7344174))

(declare-fun m!7344176 () Bool)

(assert (=> b!6562153 m!7344176))

(assert (=> b!6561244 d!2058751))

(declare-fun b!6562173 () Bool)

(declare-fun e!3972446 () Bool)

(declare-fun lt!2406558 () Option!16330)

(assert (=> b!6562173 (= e!3972446 (not (isDefined!13033 lt!2406558)))))

(declare-fun b!6562174 () Bool)

(declare-fun res!2692826 () Bool)

(declare-fun e!3972447 () Bool)

(assert (=> b!6562174 (=> (not res!2692826) (not e!3972447))))

(assert (=> b!6562174 (= res!2692826 (matchZipper!2451 lt!2406365 (_1!36721 (get!22740 lt!2406558))))))

(declare-fun b!6562175 () Bool)

(declare-fun e!3972448 () Option!16330)

(assert (=> b!6562175 (= e!3972448 (Some!16329 (tuple2!66837 Nil!65492 s!2326)))))

(declare-fun b!6562176 () Bool)

(declare-fun lt!2406559 () Unit!159091)

(declare-fun lt!2406557 () Unit!159091)

(assert (=> b!6562176 (= lt!2406559 lt!2406557)))

(assert (=> b!6562176 (= (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (t!379258 s!2326)) s!2326)))

(assert (=> b!6562176 (= lt!2406557 (lemmaMoveElementToOtherListKeepsConcatEq!2582 Nil!65492 (h!71940 s!2326) (t!379258 s!2326) s!2326))))

(declare-fun e!3972449 () Option!16330)

(assert (=> b!6562176 (= e!3972449 (findConcatSeparationZippers!204 lt!2406365 lt!2406394 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (t!379258 s!2326) s!2326))))

(declare-fun b!6562177 () Bool)

(declare-fun e!3972445 () Bool)

(assert (=> b!6562177 (= e!3972445 (matchZipper!2451 lt!2406394 s!2326))))

(declare-fun d!2058753 () Bool)

(assert (=> d!2058753 e!3972446))

(declare-fun res!2692828 () Bool)

(assert (=> d!2058753 (=> res!2692828 e!3972446)))

(assert (=> d!2058753 (= res!2692828 e!3972447)))

(declare-fun res!2692829 () Bool)

(assert (=> d!2058753 (=> (not res!2692829) (not e!3972447))))

(assert (=> d!2058753 (= res!2692829 (isDefined!13033 lt!2406558))))

(assert (=> d!2058753 (= lt!2406558 e!3972448)))

(declare-fun c!1205869 () Bool)

(assert (=> d!2058753 (= c!1205869 e!3972445)))

(declare-fun res!2692825 () Bool)

(assert (=> d!2058753 (=> (not res!2692825) (not e!3972445))))

(assert (=> d!2058753 (= res!2692825 (matchZipper!2451 lt!2406365 Nil!65492))))

(assert (=> d!2058753 (= (++!14580 Nil!65492 s!2326) s!2326)))

(assert (=> d!2058753 (= (findConcatSeparationZippers!204 lt!2406365 lt!2406394 Nil!65492 s!2326 s!2326) lt!2406558)))

(declare-fun b!6562178 () Bool)

(assert (=> b!6562178 (= e!3972449 None!16329)))

(declare-fun b!6562179 () Bool)

(assert (=> b!6562179 (= e!3972447 (= (++!14580 (_1!36721 (get!22740 lt!2406558)) (_2!36721 (get!22740 lt!2406558))) s!2326))))

(declare-fun b!6562180 () Bool)

(declare-fun res!2692827 () Bool)

(assert (=> b!6562180 (=> (not res!2692827) (not e!3972447))))

(assert (=> b!6562180 (= res!2692827 (matchZipper!2451 lt!2406394 (_2!36721 (get!22740 lt!2406558))))))

(declare-fun b!6562181 () Bool)

(assert (=> b!6562181 (= e!3972448 e!3972449)))

(declare-fun c!1205870 () Bool)

(assert (=> b!6562181 (= c!1205870 ((_ is Nil!65492) s!2326))))

(assert (= (and d!2058753 res!2692825) b!6562177))

(assert (= (and d!2058753 c!1205869) b!6562175))

(assert (= (and d!2058753 (not c!1205869)) b!6562181))

(assert (= (and b!6562181 c!1205870) b!6562178))

(assert (= (and b!6562181 (not c!1205870)) b!6562176))

(assert (= (and d!2058753 res!2692829) b!6562174))

(assert (= (and b!6562174 res!2692826) b!6562180))

(assert (= (and b!6562180 res!2692827) b!6562179))

(assert (= (and d!2058753 (not res!2692828)) b!6562173))

(declare-fun m!7344178 () Bool)

(assert (=> b!6562180 m!7344178))

(declare-fun m!7344180 () Bool)

(assert (=> b!6562180 m!7344180))

(declare-fun m!7344182 () Bool)

(assert (=> b!6562177 m!7344182))

(declare-fun m!7344184 () Bool)

(assert (=> d!2058753 m!7344184))

(declare-fun m!7344186 () Bool)

(assert (=> d!2058753 m!7344186))

(declare-fun m!7344188 () Bool)

(assert (=> d!2058753 m!7344188))

(assert (=> b!6562179 m!7344178))

(declare-fun m!7344190 () Bool)

(assert (=> b!6562179 m!7344190))

(declare-fun m!7344192 () Bool)

(assert (=> b!6562176 m!7344192))

(assert (=> b!6562176 m!7344192))

(declare-fun m!7344194 () Bool)

(assert (=> b!6562176 m!7344194))

(declare-fun m!7344196 () Bool)

(assert (=> b!6562176 m!7344196))

(assert (=> b!6562176 m!7344192))

(declare-fun m!7344198 () Bool)

(assert (=> b!6562176 m!7344198))

(assert (=> b!6562173 m!7344184))

(assert (=> b!6562174 m!7344178))

(declare-fun m!7344200 () Bool)

(assert (=> b!6562174 m!7344200))

(assert (=> b!6561244 d!2058753))

(declare-fun d!2058755 () Bool)

(declare-fun lt!2406560 () Regex!16439)

(assert (=> d!2058755 (validRegex!8175 lt!2406560)))

(assert (=> d!2058755 (= lt!2406560 (generalisedUnion!2283 (unfocusZipperList!1860 (Cons!65494 lt!2406382 Nil!65494))))))

(assert (=> d!2058755 (= (unfocusZipper!2181 (Cons!65494 lt!2406382 Nil!65494)) lt!2406560)))

(declare-fun bs!1674866 () Bool)

(assert (= bs!1674866 d!2058755))

(declare-fun m!7344202 () Bool)

(assert (=> bs!1674866 m!7344202))

(declare-fun m!7344204 () Bool)

(assert (=> bs!1674866 m!7344204))

(assert (=> bs!1674866 m!7344204))

(declare-fun m!7344206 () Bool)

(assert (=> bs!1674866 m!7344206))

(assert (=> b!6561264 d!2058755))

(declare-fun d!2058757 () Bool)

(assert (=> d!2058757 (= (nullable!6432 (regOne!33390 (regOne!33390 r!7292))) (nullableFct!2358 (regOne!33390 (regOne!33390 r!7292))))))

(declare-fun bs!1674867 () Bool)

(assert (= bs!1674867 d!2058757))

(declare-fun m!7344208 () Bool)

(assert (=> bs!1674867 m!7344208))

(assert (=> b!6561263 d!2058757))

(declare-fun b!6562182 () Bool)

(declare-fun e!3972452 () Bool)

(declare-fun lt!2406562 () Option!16330)

(assert (=> b!6562182 (= e!3972452 (not (isDefined!13033 lt!2406562)))))

(declare-fun b!6562183 () Bool)

(declare-fun res!2692834 () Bool)

(declare-fun e!3972451 () Bool)

(assert (=> b!6562183 (=> (not res!2692834) (not e!3972451))))

(assert (=> b!6562183 (= res!2692834 (matchR!8622 (regOne!33390 r!7292) (_1!36721 (get!22740 lt!2406562))))))

(declare-fun b!6562184 () Bool)

(declare-fun lt!2406561 () Unit!159091)

(declare-fun lt!2406563 () Unit!159091)

(assert (=> b!6562184 (= lt!2406561 lt!2406563)))

(assert (=> b!6562184 (= (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (t!379258 s!2326)) s!2326)))

(assert (=> b!6562184 (= lt!2406563 (lemmaMoveElementToOtherListKeepsConcatEq!2582 Nil!65492 (h!71940 s!2326) (t!379258 s!2326) s!2326))))

(declare-fun e!3972453 () Option!16330)

(assert (=> b!6562184 (= e!3972453 (findConcatSeparation!2744 (regOne!33390 r!7292) (regTwo!33390 r!7292) (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (t!379258 s!2326) s!2326))))

(declare-fun b!6562185 () Bool)

(declare-fun e!3972450 () Option!16330)

(assert (=> b!6562185 (= e!3972450 e!3972453)))

(declare-fun c!1205872 () Bool)

(assert (=> b!6562185 (= c!1205872 ((_ is Nil!65492) s!2326))))

(declare-fun d!2058759 () Bool)

(assert (=> d!2058759 e!3972452))

(declare-fun res!2692833 () Bool)

(assert (=> d!2058759 (=> res!2692833 e!3972452)))

(assert (=> d!2058759 (= res!2692833 e!3972451)))

(declare-fun res!2692831 () Bool)

(assert (=> d!2058759 (=> (not res!2692831) (not e!3972451))))

(assert (=> d!2058759 (= res!2692831 (isDefined!13033 lt!2406562))))

(assert (=> d!2058759 (= lt!2406562 e!3972450)))

(declare-fun c!1205871 () Bool)

(declare-fun e!3972454 () Bool)

(assert (=> d!2058759 (= c!1205871 e!3972454)))

(declare-fun res!2692830 () Bool)

(assert (=> d!2058759 (=> (not res!2692830) (not e!3972454))))

(assert (=> d!2058759 (= res!2692830 (matchR!8622 (regOne!33390 r!7292) Nil!65492))))

(assert (=> d!2058759 (validRegex!8175 (regOne!33390 r!7292))))

(assert (=> d!2058759 (= (findConcatSeparation!2744 (regOne!33390 r!7292) (regTwo!33390 r!7292) Nil!65492 s!2326 s!2326) lt!2406562)))

(declare-fun b!6562186 () Bool)

(assert (=> b!6562186 (= e!3972453 None!16329)))

(declare-fun b!6562187 () Bool)

(assert (=> b!6562187 (= e!3972450 (Some!16329 (tuple2!66837 Nil!65492 s!2326)))))

(declare-fun b!6562188 () Bool)

(declare-fun res!2692832 () Bool)

(assert (=> b!6562188 (=> (not res!2692832) (not e!3972451))))

(assert (=> b!6562188 (= res!2692832 (matchR!8622 (regTwo!33390 r!7292) (_2!36721 (get!22740 lt!2406562))))))

(declare-fun b!6562189 () Bool)

(assert (=> b!6562189 (= e!3972451 (= (++!14580 (_1!36721 (get!22740 lt!2406562)) (_2!36721 (get!22740 lt!2406562))) s!2326))))

(declare-fun b!6562190 () Bool)

(assert (=> b!6562190 (= e!3972454 (matchR!8622 (regTwo!33390 r!7292) s!2326))))

(assert (= (and d!2058759 res!2692830) b!6562190))

(assert (= (and d!2058759 c!1205871) b!6562187))

(assert (= (and d!2058759 (not c!1205871)) b!6562185))

(assert (= (and b!6562185 c!1205872) b!6562186))

(assert (= (and b!6562185 (not c!1205872)) b!6562184))

(assert (= (and d!2058759 res!2692831) b!6562183))

(assert (= (and b!6562183 res!2692834) b!6562188))

(assert (= (and b!6562188 res!2692832) b!6562189))

(assert (= (and d!2058759 (not res!2692833)) b!6562182))

(declare-fun m!7344210 () Bool)

(assert (=> d!2058759 m!7344210))

(declare-fun m!7344212 () Bool)

(assert (=> d!2058759 m!7344212))

(declare-fun m!7344214 () Bool)

(assert (=> d!2058759 m!7344214))

(declare-fun m!7344216 () Bool)

(assert (=> b!6562190 m!7344216))

(assert (=> b!6562182 m!7344210))

(declare-fun m!7344218 () Bool)

(assert (=> b!6562183 m!7344218))

(declare-fun m!7344220 () Bool)

(assert (=> b!6562183 m!7344220))

(assert (=> b!6562188 m!7344218))

(declare-fun m!7344222 () Bool)

(assert (=> b!6562188 m!7344222))

(assert (=> b!6562184 m!7344192))

(assert (=> b!6562184 m!7344192))

(assert (=> b!6562184 m!7344194))

(assert (=> b!6562184 m!7344196))

(assert (=> b!6562184 m!7344192))

(declare-fun m!7344224 () Bool)

(assert (=> b!6562184 m!7344224))

(assert (=> b!6562189 m!7344218))

(declare-fun m!7344226 () Bool)

(assert (=> b!6562189 m!7344226))

(assert (=> b!6561283 d!2058759))

(declare-fun d!2058761 () Bool)

(assert (=> d!2058761 (= (Exists!3509 lambda!365042) (choose!48962 lambda!365042))))

(declare-fun bs!1674868 () Bool)

(assert (= bs!1674868 d!2058761))

(declare-fun m!7344228 () Bool)

(assert (=> bs!1674868 m!7344228))

(assert (=> b!6561283 d!2058761))

(declare-fun d!2058763 () Bool)

(assert (=> d!2058763 (= (Exists!3509 lambda!365041) (choose!48962 lambda!365041))))

(declare-fun bs!1674869 () Bool)

(assert (= bs!1674869 d!2058763))

(declare-fun m!7344230 () Bool)

(assert (=> bs!1674869 m!7344230))

(assert (=> b!6561283 d!2058763))

(declare-fun bs!1674870 () Bool)

(declare-fun d!2058765 () Bool)

(assert (= bs!1674870 (and d!2058765 b!6561898)))

(declare-fun lambda!365129 () Int)

(assert (=> bs!1674870 (not (= lambda!365129 lambda!365111))))

(declare-fun bs!1674871 () Bool)

(assert (= bs!1674871 (and d!2058765 d!2058681)))

(assert (=> bs!1674871 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365129 lambda!365116))))

(declare-fun bs!1674872 () Bool)

(assert (= bs!1674872 (and d!2058765 b!6561287)))

(assert (=> bs!1674872 (not (= lambda!365129 lambda!365047))))

(declare-fun bs!1674873 () Bool)

(assert (= bs!1674873 (and d!2058765 b!6561249)))

(assert (=> bs!1674873 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365129 lambda!365048))))

(declare-fun bs!1674874 () Bool)

(assert (= bs!1674874 (and d!2058765 d!2058617)))

(assert (=> bs!1674874 (not (= lambda!365129 lambda!365100))))

(declare-fun bs!1674875 () Bool)

(assert (= bs!1674875 (and d!2058765 b!6561283)))

(assert (=> bs!1674875 (= lambda!365129 lambda!365041)))

(assert (=> bs!1674875 (not (= lambda!365129 lambda!365042))))

(assert (=> bs!1674874 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365129 lambda!365097))))

(declare-fun bs!1674876 () Bool)

(assert (= bs!1674876 (and d!2058765 b!6561902)))

(assert (=> bs!1674876 (not (= lambda!365129 lambda!365109))))

(assert (=> bs!1674872 (= (= (regOne!33390 r!7292) lt!2406360) (= lambda!365129 lambda!365046))))

(assert (=> bs!1674873 (not (= lambda!365129 lambda!365049))))

(assert (=> d!2058765 true))

(assert (=> d!2058765 true))

(assert (=> d!2058765 true))

(assert (=> d!2058765 (= (isDefined!13033 (findConcatSeparation!2744 (regOne!33390 r!7292) (regTwo!33390 r!7292) Nil!65492 s!2326 s!2326)) (Exists!3509 lambda!365129))))

(declare-fun lt!2406564 () Unit!159091)

(assert (=> d!2058765 (= lt!2406564 (choose!48966 (regOne!33390 r!7292) (regTwo!33390 r!7292) s!2326))))

(assert (=> d!2058765 (validRegex!8175 (regOne!33390 r!7292))))

(assert (=> d!2058765 (= (lemmaFindConcatSeparationEquivalentToExists!2508 (regOne!33390 r!7292) (regTwo!33390 r!7292) s!2326) lt!2406564)))

(declare-fun bs!1674877 () Bool)

(assert (= bs!1674877 d!2058765))

(declare-fun m!7344232 () Bool)

(assert (=> bs!1674877 m!7344232))

(assert (=> bs!1674877 m!7343364))

(declare-fun m!7344234 () Bool)

(assert (=> bs!1674877 m!7344234))

(assert (=> bs!1674877 m!7343364))

(assert (=> bs!1674877 m!7343366))

(assert (=> bs!1674877 m!7344214))

(assert (=> b!6561283 d!2058765))

(declare-fun bs!1674878 () Bool)

(declare-fun d!2058767 () Bool)

(assert (= bs!1674878 (and d!2058767 b!6561898)))

(declare-fun lambda!365130 () Int)

(assert (=> bs!1674878 (not (= lambda!365130 lambda!365111))))

(declare-fun bs!1674879 () Bool)

(assert (= bs!1674879 (and d!2058767 d!2058681)))

(assert (=> bs!1674879 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365130 lambda!365116))))

(declare-fun bs!1674880 () Bool)

(assert (= bs!1674880 (and d!2058767 b!6561287)))

(assert (=> bs!1674880 (not (= lambda!365130 lambda!365047))))

(declare-fun bs!1674881 () Bool)

(assert (= bs!1674881 (and d!2058767 d!2058765)))

(assert (=> bs!1674881 (= lambda!365130 lambda!365129)))

(declare-fun bs!1674882 () Bool)

(assert (= bs!1674882 (and d!2058767 b!6561249)))

(assert (=> bs!1674882 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365130 lambda!365048))))

(declare-fun bs!1674883 () Bool)

(assert (= bs!1674883 (and d!2058767 d!2058617)))

(assert (=> bs!1674883 (not (= lambda!365130 lambda!365100))))

(declare-fun bs!1674884 () Bool)

(assert (= bs!1674884 (and d!2058767 b!6561283)))

(assert (=> bs!1674884 (= lambda!365130 lambda!365041)))

(assert (=> bs!1674884 (not (= lambda!365130 lambda!365042))))

(assert (=> bs!1674883 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365130 lambda!365097))))

(declare-fun bs!1674885 () Bool)

(assert (= bs!1674885 (and d!2058767 b!6561902)))

(assert (=> bs!1674885 (not (= lambda!365130 lambda!365109))))

(assert (=> bs!1674880 (= (= (regOne!33390 r!7292) lt!2406360) (= lambda!365130 lambda!365046))))

(assert (=> bs!1674882 (not (= lambda!365130 lambda!365049))))

(assert (=> d!2058767 true))

(assert (=> d!2058767 true))

(assert (=> d!2058767 true))

(declare-fun lambda!365131 () Int)

(assert (=> bs!1674878 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (regOne!33390 lt!2406360)) (= (regTwo!33390 r!7292) (regTwo!33390 lt!2406360))) (= lambda!365131 lambda!365111))))

(assert (=> bs!1674879 (not (= lambda!365131 lambda!365116))))

(assert (=> bs!1674880 (= (= (regOne!33390 r!7292) lt!2406360) (= lambda!365131 lambda!365047))))

(assert (=> bs!1674881 (not (= lambda!365131 lambda!365129))))

(assert (=> bs!1674882 (not (= lambda!365131 lambda!365048))))

(assert (=> bs!1674883 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365131 lambda!365100))))

(assert (=> bs!1674884 (not (= lambda!365131 lambda!365041))))

(assert (=> bs!1674884 (= lambda!365131 lambda!365042)))

(assert (=> bs!1674883 (not (= lambda!365131 lambda!365097))))

(declare-fun bs!1674886 () Bool)

(assert (= bs!1674886 d!2058767))

(assert (=> bs!1674886 (not (= lambda!365131 lambda!365130))))

(assert (=> bs!1674885 (not (= lambda!365131 lambda!365109))))

(assert (=> bs!1674880 (not (= lambda!365131 lambda!365046))))

(assert (=> bs!1674882 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365131 lambda!365049))))

(assert (=> d!2058767 true))

(assert (=> d!2058767 true))

(assert (=> d!2058767 true))

(assert (=> d!2058767 (= (Exists!3509 lambda!365130) (Exists!3509 lambda!365131))))

(declare-fun lt!2406565 () Unit!159091)

(assert (=> d!2058767 (= lt!2406565 (choose!48963 (regOne!33390 r!7292) (regTwo!33390 r!7292) s!2326))))

(assert (=> d!2058767 (validRegex!8175 (regOne!33390 r!7292))))

(assert (=> d!2058767 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2046 (regOne!33390 r!7292) (regTwo!33390 r!7292) s!2326) lt!2406565)))

(declare-fun m!7344236 () Bool)

(assert (=> bs!1674886 m!7344236))

(declare-fun m!7344238 () Bool)

(assert (=> bs!1674886 m!7344238))

(declare-fun m!7344240 () Bool)

(assert (=> bs!1674886 m!7344240))

(assert (=> bs!1674886 m!7344214))

(assert (=> b!6561283 d!2058767))

(declare-fun d!2058769 () Bool)

(assert (=> d!2058769 (= (isDefined!13033 (findConcatSeparation!2744 (regOne!33390 r!7292) (regTwo!33390 r!7292) Nil!65492 s!2326 s!2326)) (not (isEmpty!37738 (findConcatSeparation!2744 (regOne!33390 r!7292) (regTwo!33390 r!7292) Nil!65492 s!2326 s!2326))))))

(declare-fun bs!1674887 () Bool)

(assert (= bs!1674887 d!2058769))

(assert (=> bs!1674887 m!7343364))

(declare-fun m!7344242 () Bool)

(assert (=> bs!1674887 m!7344242))

(assert (=> b!6561283 d!2058769))

(declare-fun bs!1674888 () Bool)

(declare-fun b!6562199 () Bool)

(assert (= bs!1674888 (and b!6562199 b!6561898)))

(declare-fun lambda!365132 () Int)

(assert (=> bs!1674888 (not (= lambda!365132 lambda!365111))))

(declare-fun bs!1674889 () Bool)

(assert (= bs!1674889 (and b!6562199 d!2058681)))

(assert (=> bs!1674889 (not (= lambda!365132 lambda!365116))))

(declare-fun bs!1674890 () Bool)

(assert (= bs!1674890 (and b!6562199 b!6561287)))

(assert (=> bs!1674890 (not (= lambda!365132 lambda!365047))))

(declare-fun bs!1674891 () Bool)

(assert (= bs!1674891 (and b!6562199 d!2058765)))

(assert (=> bs!1674891 (not (= lambda!365132 lambda!365129))))

(declare-fun bs!1674892 () Bool)

(assert (= bs!1674892 (and b!6562199 d!2058767)))

(assert (=> bs!1674892 (not (= lambda!365132 lambda!365131))))

(declare-fun bs!1674893 () Bool)

(assert (= bs!1674893 (and b!6562199 b!6561249)))

(assert (=> bs!1674893 (not (= lambda!365132 lambda!365048))))

(declare-fun bs!1674894 () Bool)

(assert (= bs!1674894 (and b!6562199 d!2058617)))

(assert (=> bs!1674894 (not (= lambda!365132 lambda!365100))))

(declare-fun bs!1674895 () Bool)

(assert (= bs!1674895 (and b!6562199 b!6561283)))

(assert (=> bs!1674895 (not (= lambda!365132 lambda!365041))))

(assert (=> bs!1674895 (not (= lambda!365132 lambda!365042))))

(assert (=> bs!1674894 (not (= lambda!365132 lambda!365097))))

(assert (=> bs!1674892 (not (= lambda!365132 lambda!365130))))

(declare-fun bs!1674896 () Bool)

(assert (= bs!1674896 (and b!6562199 b!6561902)))

(assert (=> bs!1674896 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (reg!16768 r!7292) (reg!16768 lt!2406360)) (= r!7292 lt!2406360)) (= lambda!365132 lambda!365109))))

(assert (=> bs!1674890 (not (= lambda!365132 lambda!365046))))

(assert (=> bs!1674893 (not (= lambda!365132 lambda!365049))))

(assert (=> b!6562199 true))

(assert (=> b!6562199 true))

(declare-fun bs!1674897 () Bool)

(declare-fun b!6562195 () Bool)

(assert (= bs!1674897 (and b!6562195 b!6561898)))

(declare-fun lambda!365133 () Int)

(assert (=> bs!1674897 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (regOne!33390 lt!2406360)) (= (regTwo!33390 r!7292) (regTwo!33390 lt!2406360))) (= lambda!365133 lambda!365111))))

(declare-fun bs!1674898 () Bool)

(assert (= bs!1674898 (and b!6562195 d!2058681)))

(assert (=> bs!1674898 (not (= lambda!365133 lambda!365116))))

(declare-fun bs!1674899 () Bool)

(assert (= bs!1674899 (and b!6562195 b!6561287)))

(assert (=> bs!1674899 (= (= (regOne!33390 r!7292) lt!2406360) (= lambda!365133 lambda!365047))))

(declare-fun bs!1674900 () Bool)

(assert (= bs!1674900 (and b!6562195 d!2058765)))

(assert (=> bs!1674900 (not (= lambda!365133 lambda!365129))))

(declare-fun bs!1674901 () Bool)

(assert (= bs!1674901 (and b!6562195 d!2058767)))

(assert (=> bs!1674901 (= lambda!365133 lambda!365131)))

(declare-fun bs!1674902 () Bool)

(assert (= bs!1674902 (and b!6562195 b!6561249)))

(assert (=> bs!1674902 (not (= lambda!365133 lambda!365048))))

(declare-fun bs!1674903 () Bool)

(assert (= bs!1674903 (and b!6562195 d!2058617)))

(assert (=> bs!1674903 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365133 lambda!365100))))

(declare-fun bs!1674904 () Bool)

(assert (= bs!1674904 (and b!6562195 b!6561283)))

(assert (=> bs!1674904 (not (= lambda!365133 lambda!365041))))

(assert (=> bs!1674904 (= lambda!365133 lambda!365042)))

(assert (=> bs!1674903 (not (= lambda!365133 lambda!365097))))

(assert (=> bs!1674901 (not (= lambda!365133 lambda!365130))))

(declare-fun bs!1674905 () Bool)

(assert (= bs!1674905 (and b!6562195 b!6562199)))

(assert (=> bs!1674905 (not (= lambda!365133 lambda!365132))))

(declare-fun bs!1674906 () Bool)

(assert (= bs!1674906 (and b!6562195 b!6561902)))

(assert (=> bs!1674906 (not (= lambda!365133 lambda!365109))))

(assert (=> bs!1674899 (not (= lambda!365133 lambda!365046))))

(assert (=> bs!1674902 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365133 lambda!365049))))

(assert (=> b!6562195 true))

(assert (=> b!6562195 true))

(declare-fun b!6562191 () Bool)

(declare-fun c!1205876 () Bool)

(assert (=> b!6562191 (= c!1205876 ((_ is ElementMatch!16439) r!7292))))

(declare-fun e!3972458 () Bool)

(declare-fun e!3972460 () Bool)

(assert (=> b!6562191 (= e!3972458 e!3972460)))

(declare-fun b!6562192 () Bool)

(declare-fun res!2692836 () Bool)

(declare-fun e!3972461 () Bool)

(assert (=> b!6562192 (=> res!2692836 e!3972461)))

(declare-fun call!570758 () Bool)

(assert (=> b!6562192 (= res!2692836 call!570758)))

(declare-fun e!3972457 () Bool)

(assert (=> b!6562192 (= e!3972457 e!3972461)))

(declare-fun b!6562193 () Bool)

(declare-fun e!3972455 () Bool)

(declare-fun e!3972456 () Bool)

(assert (=> b!6562193 (= e!3972455 e!3972456)))

(declare-fun res!2692837 () Bool)

(assert (=> b!6562193 (= res!2692837 (matchRSpec!3540 (regOne!33391 r!7292) s!2326))))

(assert (=> b!6562193 (=> res!2692837 e!3972456)))

(declare-fun b!6562194 () Bool)

(declare-fun e!3972459 () Bool)

(assert (=> b!6562194 (= e!3972459 call!570758)))

(declare-fun call!570757 () Bool)

(assert (=> b!6562195 (= e!3972457 call!570757)))

(declare-fun b!6562196 () Bool)

(assert (=> b!6562196 (= e!3972460 (= s!2326 (Cons!65492 (c!1205620 r!7292) Nil!65492)))))

(declare-fun bm!570752 () Bool)

(assert (=> bm!570752 (= call!570758 (isEmpty!37737 s!2326))))

(declare-fun b!6562197 () Bool)

(declare-fun c!1205873 () Bool)

(assert (=> b!6562197 (= c!1205873 ((_ is Union!16439) r!7292))))

(assert (=> b!6562197 (= e!3972460 e!3972455)))

(declare-fun b!6562198 () Bool)

(assert (=> b!6562198 (= e!3972455 e!3972457)))

(declare-fun c!1205874 () Bool)

(assert (=> b!6562198 (= c!1205874 ((_ is Star!16439) r!7292))))

(declare-fun d!2058771 () Bool)

(declare-fun c!1205875 () Bool)

(assert (=> d!2058771 (= c!1205875 ((_ is EmptyExpr!16439) r!7292))))

(assert (=> d!2058771 (= (matchRSpec!3540 r!7292 s!2326) e!3972459)))

(assert (=> b!6562199 (= e!3972461 call!570757)))

(declare-fun b!6562200 () Bool)

(assert (=> b!6562200 (= e!3972459 e!3972458)))

(declare-fun res!2692835 () Bool)

(assert (=> b!6562200 (= res!2692835 (not ((_ is EmptyLang!16439) r!7292)))))

(assert (=> b!6562200 (=> (not res!2692835) (not e!3972458))))

(declare-fun b!6562201 () Bool)

(assert (=> b!6562201 (= e!3972456 (matchRSpec!3540 (regTwo!33391 r!7292) s!2326))))

(declare-fun bm!570753 () Bool)

(assert (=> bm!570753 (= call!570757 (Exists!3509 (ite c!1205874 lambda!365132 lambda!365133)))))

(assert (= (and d!2058771 c!1205875) b!6562194))

(assert (= (and d!2058771 (not c!1205875)) b!6562200))

(assert (= (and b!6562200 res!2692835) b!6562191))

(assert (= (and b!6562191 c!1205876) b!6562196))

(assert (= (and b!6562191 (not c!1205876)) b!6562197))

(assert (= (and b!6562197 c!1205873) b!6562193))

(assert (= (and b!6562197 (not c!1205873)) b!6562198))

(assert (= (and b!6562193 (not res!2692837)) b!6562201))

(assert (= (and b!6562198 c!1205874) b!6562192))

(assert (= (and b!6562198 (not c!1205874)) b!6562195))

(assert (= (and b!6562192 (not res!2692836)) b!6562199))

(assert (= (or b!6562199 b!6562195) bm!570753))

(assert (= (or b!6562194 b!6562192) bm!570752))

(declare-fun m!7344244 () Bool)

(assert (=> b!6562193 m!7344244))

(assert (=> bm!570752 m!7343766))

(declare-fun m!7344246 () Bool)

(assert (=> b!6562201 m!7344246))

(declare-fun m!7344248 () Bool)

(assert (=> bm!570753 m!7344248))

(assert (=> b!6561247 d!2058771))

(declare-fun b!6562230 () Bool)

(declare-fun e!3972478 () Bool)

(declare-fun e!3972481 () Bool)

(assert (=> b!6562230 (= e!3972478 e!3972481)))

(declare-fun res!2692860 () Bool)

(assert (=> b!6562230 (=> (not res!2692860) (not e!3972481))))

(declare-fun lt!2406568 () Bool)

(assert (=> b!6562230 (= res!2692860 (not lt!2406568))))

(declare-fun b!6562231 () Bool)

(declare-fun res!2692857 () Bool)

(declare-fun e!3972480 () Bool)

(assert (=> b!6562231 (=> res!2692857 e!3972480)))

(assert (=> b!6562231 (= res!2692857 (not (isEmpty!37737 (tail!12414 s!2326))))))

(declare-fun b!6562232 () Bool)

(declare-fun e!3972476 () Bool)

(declare-fun call!570761 () Bool)

(assert (=> b!6562232 (= e!3972476 (= lt!2406568 call!570761))))

(declare-fun b!6562234 () Bool)

(declare-fun res!2692856 () Bool)

(declare-fun e!3972479 () Bool)

(assert (=> b!6562234 (=> (not res!2692856) (not e!3972479))))

(assert (=> b!6562234 (= res!2692856 (isEmpty!37737 (tail!12414 s!2326)))))

(declare-fun b!6562235 () Bool)

(assert (=> b!6562235 (= e!3972479 (= (head!13329 s!2326) (c!1205620 r!7292)))))

(declare-fun b!6562236 () Bool)

(declare-fun res!2692858 () Bool)

(assert (=> b!6562236 (=> res!2692858 e!3972478)))

(assert (=> b!6562236 (= res!2692858 e!3972479)))

(declare-fun res!2692854 () Bool)

(assert (=> b!6562236 (=> (not res!2692854) (not e!3972479))))

(assert (=> b!6562236 (= res!2692854 lt!2406568)))

(declare-fun b!6562237 () Bool)

(declare-fun e!3972482 () Bool)

(assert (=> b!6562237 (= e!3972482 (not lt!2406568))))

(declare-fun b!6562238 () Bool)

(declare-fun res!2692861 () Bool)

(assert (=> b!6562238 (=> (not res!2692861) (not e!3972479))))

(assert (=> b!6562238 (= res!2692861 (not call!570761))))

(declare-fun b!6562239 () Bool)

(assert (=> b!6562239 (= e!3972481 e!3972480)))

(declare-fun res!2692855 () Bool)

(assert (=> b!6562239 (=> res!2692855 e!3972480)))

(assert (=> b!6562239 (= res!2692855 call!570761)))

(declare-fun b!6562240 () Bool)

(declare-fun e!3972477 () Bool)

(assert (=> b!6562240 (= e!3972477 (nullable!6432 r!7292))))

(declare-fun bm!570756 () Bool)

(assert (=> bm!570756 (= call!570761 (isEmpty!37737 s!2326))))

(declare-fun b!6562241 () Bool)

(assert (=> b!6562241 (= e!3972476 e!3972482)))

(declare-fun c!1205883 () Bool)

(assert (=> b!6562241 (= c!1205883 ((_ is EmptyLang!16439) r!7292))))

(declare-fun b!6562242 () Bool)

(declare-fun res!2692859 () Bool)

(assert (=> b!6562242 (=> res!2692859 e!3972478)))

(assert (=> b!6562242 (= res!2692859 (not ((_ is ElementMatch!16439) r!7292)))))

(assert (=> b!6562242 (= e!3972482 e!3972478)))

(declare-fun b!6562243 () Bool)

(declare-fun derivativeStep!5123 (Regex!16439 C!33148) Regex!16439)

(assert (=> b!6562243 (= e!3972477 (matchR!8622 (derivativeStep!5123 r!7292 (head!13329 s!2326)) (tail!12414 s!2326)))))

(declare-fun d!2058773 () Bool)

(assert (=> d!2058773 e!3972476))

(declare-fun c!1205885 () Bool)

(assert (=> d!2058773 (= c!1205885 ((_ is EmptyExpr!16439) r!7292))))

(assert (=> d!2058773 (= lt!2406568 e!3972477)))

(declare-fun c!1205884 () Bool)

(assert (=> d!2058773 (= c!1205884 (isEmpty!37737 s!2326))))

(assert (=> d!2058773 (validRegex!8175 r!7292)))

(assert (=> d!2058773 (= (matchR!8622 r!7292 s!2326) lt!2406568)))

(declare-fun b!6562233 () Bool)

(assert (=> b!6562233 (= e!3972480 (not (= (head!13329 s!2326) (c!1205620 r!7292))))))

(assert (= (and d!2058773 c!1205884) b!6562240))

(assert (= (and d!2058773 (not c!1205884)) b!6562243))

(assert (= (and d!2058773 c!1205885) b!6562232))

(assert (= (and d!2058773 (not c!1205885)) b!6562241))

(assert (= (and b!6562241 c!1205883) b!6562237))

(assert (= (and b!6562241 (not c!1205883)) b!6562242))

(assert (= (and b!6562242 (not res!2692859)) b!6562236))

(assert (= (and b!6562236 res!2692854) b!6562238))

(assert (= (and b!6562238 res!2692861) b!6562234))

(assert (= (and b!6562234 res!2692856) b!6562235))

(assert (= (and b!6562236 (not res!2692858)) b!6562230))

(assert (= (and b!6562230 res!2692860) b!6562239))

(assert (= (and b!6562239 (not res!2692855)) b!6562231))

(assert (= (and b!6562231 (not res!2692857)) b!6562233))

(assert (= (or b!6562232 b!6562238 b!6562239) bm!570756))

(assert (=> bm!570756 m!7343766))

(assert (=> d!2058773 m!7343766))

(assert (=> d!2058773 m!7343274))

(assert (=> b!6562234 m!7343774))

(assert (=> b!6562234 m!7343774))

(declare-fun m!7344250 () Bool)

(assert (=> b!6562234 m!7344250))

(assert (=> b!6562235 m!7343770))

(assert (=> b!6562233 m!7343770))

(assert (=> b!6562231 m!7343774))

(assert (=> b!6562231 m!7343774))

(assert (=> b!6562231 m!7344250))

(declare-fun m!7344252 () Bool)

(assert (=> b!6562240 m!7344252))

(assert (=> b!6562243 m!7343770))

(assert (=> b!6562243 m!7343770))

(declare-fun m!7344254 () Bool)

(assert (=> b!6562243 m!7344254))

(assert (=> b!6562243 m!7343774))

(assert (=> b!6562243 m!7344254))

(assert (=> b!6562243 m!7343774))

(declare-fun m!7344256 () Bool)

(assert (=> b!6562243 m!7344256))

(assert (=> b!6561247 d!2058773))

(declare-fun d!2058775 () Bool)

(assert (=> d!2058775 (= (matchR!8622 r!7292 s!2326) (matchRSpec!3540 r!7292 s!2326))))

(declare-fun lt!2406569 () Unit!159091)

(assert (=> d!2058775 (= lt!2406569 (choose!48964 r!7292 s!2326))))

(assert (=> d!2058775 (validRegex!8175 r!7292)))

(assert (=> d!2058775 (= (mainMatchTheorem!3540 r!7292 s!2326) lt!2406569)))

(declare-fun bs!1674907 () Bool)

(assert (= bs!1674907 d!2058775))

(assert (=> bs!1674907 m!7343188))

(assert (=> bs!1674907 m!7343186))

(declare-fun m!7344258 () Bool)

(assert (=> bs!1674907 m!7344258))

(assert (=> bs!1674907 m!7343274))

(assert (=> b!6561247 d!2058775))

(declare-fun e!3972485 () Bool)

(declare-fun d!2058777 () Bool)

(assert (=> d!2058777 (= (matchZipper!2451 ((_ map or) lt!2406348 lt!2406381) (t!379258 s!2326)) e!3972485)))

(declare-fun res!2692864 () Bool)

(assert (=> d!2058777 (=> res!2692864 e!3972485)))

(assert (=> d!2058777 (= res!2692864 (matchZipper!2451 lt!2406348 (t!379258 s!2326)))))

(declare-fun lt!2406572 () Unit!159091)

(declare-fun choose!48974 ((InoxSet Context!11646) (InoxSet Context!11646) List!65616) Unit!159091)

(assert (=> d!2058777 (= lt!2406572 (choose!48974 lt!2406348 lt!2406381 (t!379258 s!2326)))))

(assert (=> d!2058777 (= (lemmaZipperConcatMatchesSameAsBothZippers!1270 lt!2406348 lt!2406381 (t!379258 s!2326)) lt!2406572)))

(declare-fun b!6562246 () Bool)

(assert (=> b!6562246 (= e!3972485 (matchZipper!2451 lt!2406381 (t!379258 s!2326)))))

(assert (= (and d!2058777 (not res!2692864)) b!6562246))

(assert (=> d!2058777 m!7343252))

(assert (=> d!2058777 m!7343192))

(declare-fun m!7344260 () Bool)

(assert (=> d!2058777 m!7344260))

(assert (=> b!6562246 m!7343232))

(assert (=> b!6561246 d!2058777))

(declare-fun d!2058779 () Bool)

(declare-fun c!1205886 () Bool)

(assert (=> d!2058779 (= c!1205886 (isEmpty!37737 (t!379258 s!2326)))))

(declare-fun e!3972486 () Bool)

(assert (=> d!2058779 (= (matchZipper!2451 lt!2406348 (t!379258 s!2326)) e!3972486)))

(declare-fun b!6562247 () Bool)

(assert (=> b!6562247 (= e!3972486 (nullableZipper!2184 lt!2406348))))

(declare-fun b!6562248 () Bool)

(assert (=> b!6562248 (= e!3972486 (matchZipper!2451 (derivationStepZipper!2405 lt!2406348 (head!13329 (t!379258 s!2326))) (tail!12414 (t!379258 s!2326))))))

(assert (= (and d!2058779 c!1205886) b!6562247))

(assert (= (and d!2058779 (not c!1205886)) b!6562248))

(assert (=> d!2058779 m!7343754))

(declare-fun m!7344262 () Bool)

(assert (=> b!6562247 m!7344262))

(assert (=> b!6562248 m!7343758))

(assert (=> b!6562248 m!7343758))

(declare-fun m!7344264 () Bool)

(assert (=> b!6562248 m!7344264))

(assert (=> b!6562248 m!7343762))

(assert (=> b!6562248 m!7344264))

(assert (=> b!6562248 m!7343762))

(declare-fun m!7344266 () Bool)

(assert (=> b!6562248 m!7344266))

(assert (=> b!6561246 d!2058779))

(declare-fun d!2058781 () Bool)

(declare-fun c!1205887 () Bool)

(assert (=> d!2058781 (= c!1205887 (isEmpty!37737 (t!379258 s!2326)))))

(declare-fun e!3972487 () Bool)

(assert (=> d!2058781 (= (matchZipper!2451 ((_ map or) lt!2406348 lt!2406381) (t!379258 s!2326)) e!3972487)))

(declare-fun b!6562249 () Bool)

(assert (=> b!6562249 (= e!3972487 (nullableZipper!2184 ((_ map or) lt!2406348 lt!2406381)))))

(declare-fun b!6562250 () Bool)

(assert (=> b!6562250 (= e!3972487 (matchZipper!2451 (derivationStepZipper!2405 ((_ map or) lt!2406348 lt!2406381) (head!13329 (t!379258 s!2326))) (tail!12414 (t!379258 s!2326))))))

(assert (= (and d!2058781 c!1205887) b!6562249))

(assert (= (and d!2058781 (not c!1205887)) b!6562250))

(assert (=> d!2058781 m!7343754))

(declare-fun m!7344268 () Bool)

(assert (=> b!6562249 m!7344268))

(assert (=> b!6562250 m!7343758))

(assert (=> b!6562250 m!7343758))

(declare-fun m!7344270 () Bool)

(assert (=> b!6562250 m!7344270))

(assert (=> b!6562250 m!7343762))

(assert (=> b!6562250 m!7344270))

(assert (=> b!6562250 m!7343762))

(declare-fun m!7344272 () Bool)

(assert (=> b!6562250 m!7344272))

(assert (=> b!6561246 d!2058781))

(declare-fun d!2058783 () Bool)

(assert (=> d!2058783 (forall!15611 (++!14581 lt!2406344 lt!2406366) lambda!365045)))

(declare-fun lt!2406575 () Unit!159091)

(declare-fun choose!48975 (List!65617 List!65617 Int) Unit!159091)

(assert (=> d!2058783 (= lt!2406575 (choose!48975 lt!2406344 lt!2406366 lambda!365045))))

(assert (=> d!2058783 (forall!15611 lt!2406344 lambda!365045)))

(assert (=> d!2058783 (= (lemmaConcatPreservesForall!412 lt!2406344 lt!2406366 lambda!365045) lt!2406575)))

(declare-fun bs!1674908 () Bool)

(assert (= bs!1674908 d!2058783))

(assert (=> bs!1674908 m!7343294))

(assert (=> bs!1674908 m!7343294))

(declare-fun m!7344274 () Bool)

(assert (=> bs!1674908 m!7344274))

(declare-fun m!7344276 () Bool)

(assert (=> bs!1674908 m!7344276))

(declare-fun m!7344278 () Bool)

(assert (=> bs!1674908 m!7344278))

(assert (=> b!6561287 d!2058783))

(declare-fun b!6562251 () Bool)

(declare-fun e!3972490 () Bool)

(declare-fun e!3972493 () Bool)

(assert (=> b!6562251 (= e!3972490 e!3972493)))

(declare-fun res!2692871 () Bool)

(assert (=> b!6562251 (=> (not res!2692871) (not e!3972493))))

(declare-fun lt!2406576 () Bool)

(assert (=> b!6562251 (= res!2692871 (not lt!2406576))))

(declare-fun b!6562252 () Bool)

(declare-fun res!2692868 () Bool)

(declare-fun e!3972492 () Bool)

(assert (=> b!6562252 (=> res!2692868 e!3972492)))

(assert (=> b!6562252 (= res!2692868 (not (isEmpty!37737 (tail!12414 (_2!36721 lt!2406377)))))))

(declare-fun b!6562253 () Bool)

(declare-fun e!3972488 () Bool)

(declare-fun call!570762 () Bool)

(assert (=> b!6562253 (= e!3972488 (= lt!2406576 call!570762))))

(declare-fun b!6562255 () Bool)

(declare-fun res!2692867 () Bool)

(declare-fun e!3972491 () Bool)

(assert (=> b!6562255 (=> (not res!2692867) (not e!3972491))))

(assert (=> b!6562255 (= res!2692867 (isEmpty!37737 (tail!12414 (_2!36721 lt!2406377))))))

(declare-fun b!6562256 () Bool)

(assert (=> b!6562256 (= e!3972491 (= (head!13329 (_2!36721 lt!2406377)) (c!1205620 lt!2406341)))))

(declare-fun b!6562257 () Bool)

(declare-fun res!2692869 () Bool)

(assert (=> b!6562257 (=> res!2692869 e!3972490)))

(assert (=> b!6562257 (= res!2692869 e!3972491)))

(declare-fun res!2692865 () Bool)

(assert (=> b!6562257 (=> (not res!2692865) (not e!3972491))))

(assert (=> b!6562257 (= res!2692865 lt!2406576)))

(declare-fun b!6562258 () Bool)

(declare-fun e!3972494 () Bool)

(assert (=> b!6562258 (= e!3972494 (not lt!2406576))))

(declare-fun b!6562259 () Bool)

(declare-fun res!2692872 () Bool)

(assert (=> b!6562259 (=> (not res!2692872) (not e!3972491))))

(assert (=> b!6562259 (= res!2692872 (not call!570762))))

(declare-fun b!6562260 () Bool)

(assert (=> b!6562260 (= e!3972493 e!3972492)))

(declare-fun res!2692866 () Bool)

(assert (=> b!6562260 (=> res!2692866 e!3972492)))

(assert (=> b!6562260 (= res!2692866 call!570762)))

(declare-fun b!6562261 () Bool)

(declare-fun e!3972489 () Bool)

(assert (=> b!6562261 (= e!3972489 (nullable!6432 lt!2406341))))

(declare-fun bm!570757 () Bool)

(assert (=> bm!570757 (= call!570762 (isEmpty!37737 (_2!36721 lt!2406377)))))

(declare-fun b!6562262 () Bool)

(assert (=> b!6562262 (= e!3972488 e!3972494)))

(declare-fun c!1205888 () Bool)

(assert (=> b!6562262 (= c!1205888 ((_ is EmptyLang!16439) lt!2406341))))

(declare-fun b!6562263 () Bool)

(declare-fun res!2692870 () Bool)

(assert (=> b!6562263 (=> res!2692870 e!3972490)))

(assert (=> b!6562263 (= res!2692870 (not ((_ is ElementMatch!16439) lt!2406341)))))

(assert (=> b!6562263 (= e!3972494 e!3972490)))

(declare-fun b!6562264 () Bool)

(assert (=> b!6562264 (= e!3972489 (matchR!8622 (derivativeStep!5123 lt!2406341 (head!13329 (_2!36721 lt!2406377))) (tail!12414 (_2!36721 lt!2406377))))))

(declare-fun d!2058785 () Bool)

(assert (=> d!2058785 e!3972488))

(declare-fun c!1205890 () Bool)

(assert (=> d!2058785 (= c!1205890 ((_ is EmptyExpr!16439) lt!2406341))))

(assert (=> d!2058785 (= lt!2406576 e!3972489)))

(declare-fun c!1205889 () Bool)

(assert (=> d!2058785 (= c!1205889 (isEmpty!37737 (_2!36721 lt!2406377)))))

(assert (=> d!2058785 (validRegex!8175 lt!2406341)))

(assert (=> d!2058785 (= (matchR!8622 lt!2406341 (_2!36721 lt!2406377)) lt!2406576)))

(declare-fun b!6562254 () Bool)

(assert (=> b!6562254 (= e!3972492 (not (= (head!13329 (_2!36721 lt!2406377)) (c!1205620 lt!2406341))))))

(assert (= (and d!2058785 c!1205889) b!6562261))

(assert (= (and d!2058785 (not c!1205889)) b!6562264))

(assert (= (and d!2058785 c!1205890) b!6562253))

(assert (= (and d!2058785 (not c!1205890)) b!6562262))

(assert (= (and b!6562262 c!1205888) b!6562258))

(assert (= (and b!6562262 (not c!1205888)) b!6562263))

(assert (= (and b!6562263 (not res!2692870)) b!6562257))

(assert (= (and b!6562257 res!2692865) b!6562259))

(assert (= (and b!6562259 res!2692872) b!6562255))

(assert (= (and b!6562255 res!2692867) b!6562256))

(assert (= (and b!6562257 (not res!2692869)) b!6562251))

(assert (= (and b!6562251 res!2692871) b!6562260))

(assert (= (and b!6562260 (not res!2692866)) b!6562252))

(assert (= (and b!6562252 (not res!2692868)) b!6562254))

(assert (= (or b!6562253 b!6562259 b!6562260) bm!570757))

(assert (=> bm!570757 m!7343778))

(assert (=> d!2058785 m!7343778))

(declare-fun m!7344280 () Bool)

(assert (=> d!2058785 m!7344280))

(assert (=> b!6562255 m!7343786))

(assert (=> b!6562255 m!7343786))

(declare-fun m!7344282 () Bool)

(assert (=> b!6562255 m!7344282))

(assert (=> b!6562256 m!7343782))

(assert (=> b!6562254 m!7343782))

(assert (=> b!6562252 m!7343786))

(assert (=> b!6562252 m!7343786))

(assert (=> b!6562252 m!7344282))

(declare-fun m!7344284 () Bool)

(assert (=> b!6562261 m!7344284))

(assert (=> b!6562264 m!7343782))

(assert (=> b!6562264 m!7343782))

(declare-fun m!7344286 () Bool)

(assert (=> b!6562264 m!7344286))

(assert (=> b!6562264 m!7343786))

(assert (=> b!6562264 m!7344286))

(assert (=> b!6562264 m!7343786))

(declare-fun m!7344288 () Bool)

(assert (=> b!6562264 m!7344288))

(assert (=> b!6561287 d!2058785))

(declare-fun b!6562265 () Bool)

(declare-fun e!3972497 () Bool)

(declare-fun e!3972500 () Bool)

(assert (=> b!6562265 (= e!3972497 e!3972500)))

(declare-fun res!2692879 () Bool)

(assert (=> b!6562265 (=> (not res!2692879) (not e!3972500))))

(declare-fun lt!2406577 () Bool)

(assert (=> b!6562265 (= res!2692879 (not lt!2406577))))

(declare-fun b!6562266 () Bool)

(declare-fun res!2692876 () Bool)

(declare-fun e!3972499 () Bool)

(assert (=> b!6562266 (=> res!2692876 e!3972499)))

(assert (=> b!6562266 (= res!2692876 (not (isEmpty!37737 (tail!12414 s!2326))))))

(declare-fun b!6562267 () Bool)

(declare-fun e!3972495 () Bool)

(declare-fun call!570763 () Bool)

(assert (=> b!6562267 (= e!3972495 (= lt!2406577 call!570763))))

(declare-fun b!6562269 () Bool)

(declare-fun res!2692875 () Bool)

(declare-fun e!3972498 () Bool)

(assert (=> b!6562269 (=> (not res!2692875) (not e!3972498))))

(assert (=> b!6562269 (= res!2692875 (isEmpty!37737 (tail!12414 s!2326)))))

(declare-fun b!6562270 () Bool)

(assert (=> b!6562270 (= e!3972498 (= (head!13329 s!2326) (c!1205620 lt!2406396)))))

(declare-fun b!6562271 () Bool)

(declare-fun res!2692877 () Bool)

(assert (=> b!6562271 (=> res!2692877 e!3972497)))

(assert (=> b!6562271 (= res!2692877 e!3972498)))

(declare-fun res!2692873 () Bool)

(assert (=> b!6562271 (=> (not res!2692873) (not e!3972498))))

(assert (=> b!6562271 (= res!2692873 lt!2406577)))

(declare-fun b!6562272 () Bool)

(declare-fun e!3972501 () Bool)

(assert (=> b!6562272 (= e!3972501 (not lt!2406577))))

(declare-fun b!6562273 () Bool)

(declare-fun res!2692880 () Bool)

(assert (=> b!6562273 (=> (not res!2692880) (not e!3972498))))

(assert (=> b!6562273 (= res!2692880 (not call!570763))))

(declare-fun b!6562274 () Bool)

(assert (=> b!6562274 (= e!3972500 e!3972499)))

(declare-fun res!2692874 () Bool)

(assert (=> b!6562274 (=> res!2692874 e!3972499)))

(assert (=> b!6562274 (= res!2692874 call!570763)))

(declare-fun b!6562275 () Bool)

(declare-fun e!3972496 () Bool)

(assert (=> b!6562275 (= e!3972496 (nullable!6432 lt!2406396))))

(declare-fun bm!570758 () Bool)

(assert (=> bm!570758 (= call!570763 (isEmpty!37737 s!2326))))

(declare-fun b!6562276 () Bool)

(assert (=> b!6562276 (= e!3972495 e!3972501)))

(declare-fun c!1205891 () Bool)

(assert (=> b!6562276 (= c!1205891 ((_ is EmptyLang!16439) lt!2406396))))

(declare-fun b!6562277 () Bool)

(declare-fun res!2692878 () Bool)

(assert (=> b!6562277 (=> res!2692878 e!3972497)))

(assert (=> b!6562277 (= res!2692878 (not ((_ is ElementMatch!16439) lt!2406396)))))

(assert (=> b!6562277 (= e!3972501 e!3972497)))

(declare-fun b!6562278 () Bool)

(assert (=> b!6562278 (= e!3972496 (matchR!8622 (derivativeStep!5123 lt!2406396 (head!13329 s!2326)) (tail!12414 s!2326)))))

(declare-fun d!2058787 () Bool)

(assert (=> d!2058787 e!3972495))

(declare-fun c!1205893 () Bool)

(assert (=> d!2058787 (= c!1205893 ((_ is EmptyExpr!16439) lt!2406396))))

(assert (=> d!2058787 (= lt!2406577 e!3972496)))

(declare-fun c!1205892 () Bool)

(assert (=> d!2058787 (= c!1205892 (isEmpty!37737 s!2326))))

(assert (=> d!2058787 (validRegex!8175 lt!2406396)))

(assert (=> d!2058787 (= (matchR!8622 lt!2406396 s!2326) lt!2406577)))

(declare-fun b!6562268 () Bool)

(assert (=> b!6562268 (= e!3972499 (not (= (head!13329 s!2326) (c!1205620 lt!2406396))))))

(assert (= (and d!2058787 c!1205892) b!6562275))

(assert (= (and d!2058787 (not c!1205892)) b!6562278))

(assert (= (and d!2058787 c!1205893) b!6562267))

(assert (= (and d!2058787 (not c!1205893)) b!6562276))

(assert (= (and b!6562276 c!1205891) b!6562272))

(assert (= (and b!6562276 (not c!1205891)) b!6562277))

(assert (= (and b!6562277 (not res!2692878)) b!6562271))

(assert (= (and b!6562271 res!2692873) b!6562273))

(assert (= (and b!6562273 res!2692880) b!6562269))

(assert (= (and b!6562269 res!2692875) b!6562270))

(assert (= (and b!6562271 (not res!2692877)) b!6562265))

(assert (= (and b!6562265 res!2692879) b!6562274))

(assert (= (and b!6562274 (not res!2692874)) b!6562266))

(assert (= (and b!6562266 (not res!2692876)) b!6562268))

(assert (= (or b!6562267 b!6562273 b!6562274) bm!570758))

(assert (=> bm!570758 m!7343766))

(assert (=> d!2058787 m!7343766))

(declare-fun m!7344290 () Bool)

(assert (=> d!2058787 m!7344290))

(assert (=> b!6562269 m!7343774))

(assert (=> b!6562269 m!7343774))

(assert (=> b!6562269 m!7344250))

(assert (=> b!6562270 m!7343770))

(assert (=> b!6562268 m!7343770))

(assert (=> b!6562266 m!7343774))

(assert (=> b!6562266 m!7343774))

(assert (=> b!6562266 m!7344250))

(declare-fun m!7344292 () Bool)

(assert (=> b!6562275 m!7344292))

(assert (=> b!6562278 m!7343770))

(assert (=> b!6562278 m!7343770))

(declare-fun m!7344294 () Bool)

(assert (=> b!6562278 m!7344294))

(assert (=> b!6562278 m!7343774))

(assert (=> b!6562278 m!7344294))

(assert (=> b!6562278 m!7343774))

(declare-fun m!7344296 () Bool)

(assert (=> b!6562278 m!7344296))

(assert (=> b!6561287 d!2058787))

(declare-fun d!2058789 () Bool)

(assert (=> d!2058789 (= (matchR!8622 (reg!16768 (regOne!33390 r!7292)) (_1!36721 lt!2406377)) (matchZipper!2451 lt!2406365 (_1!36721 lt!2406377)))))

(declare-fun lt!2406580 () Unit!159091)

(declare-fun choose!48976 ((InoxSet Context!11646) List!65618 Regex!16439 List!65616) Unit!159091)

(assert (=> d!2058789 (= lt!2406580 (choose!48976 lt!2406365 lt!2406367 (reg!16768 (regOne!33390 r!7292)) (_1!36721 lt!2406377)))))

(assert (=> d!2058789 (validRegex!8175 (reg!16768 (regOne!33390 r!7292)))))

(assert (=> d!2058789 (= (theoremZipperRegexEquiv!875 lt!2406365 lt!2406367 (reg!16768 (regOne!33390 r!7292)) (_1!36721 lt!2406377)) lt!2406580)))

(declare-fun bs!1674909 () Bool)

(assert (= bs!1674909 d!2058789))

(assert (=> bs!1674909 m!7343308))

(assert (=> bs!1674909 m!7343376))

(declare-fun m!7344298 () Bool)

(assert (=> bs!1674909 m!7344298))

(assert (=> bs!1674909 m!7343212))

(assert (=> b!6561287 d!2058789))

(declare-fun b!6562279 () Bool)

(declare-fun e!3972504 () Bool)

(declare-fun lt!2406582 () Option!16330)

(assert (=> b!6562279 (= e!3972504 (not (isDefined!13033 lt!2406582)))))

(declare-fun b!6562280 () Bool)

(declare-fun res!2692885 () Bool)

(declare-fun e!3972503 () Bool)

(assert (=> b!6562280 (=> (not res!2692885) (not e!3972503))))

(assert (=> b!6562280 (= res!2692885 (matchR!8622 lt!2406360 (_1!36721 (get!22740 lt!2406582))))))

(declare-fun b!6562281 () Bool)

(declare-fun lt!2406581 () Unit!159091)

(declare-fun lt!2406583 () Unit!159091)

(assert (=> b!6562281 (= lt!2406581 lt!2406583)))

(assert (=> b!6562281 (= (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (t!379258 s!2326)) s!2326)))

(assert (=> b!6562281 (= lt!2406583 (lemmaMoveElementToOtherListKeepsConcatEq!2582 Nil!65492 (h!71940 s!2326) (t!379258 s!2326) s!2326))))

(declare-fun e!3972505 () Option!16330)

(assert (=> b!6562281 (= e!3972505 (findConcatSeparation!2744 lt!2406360 (regTwo!33390 r!7292) (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (t!379258 s!2326) s!2326))))

(declare-fun b!6562282 () Bool)

(declare-fun e!3972502 () Option!16330)

(assert (=> b!6562282 (= e!3972502 e!3972505)))

(declare-fun c!1205895 () Bool)

(assert (=> b!6562282 (= c!1205895 ((_ is Nil!65492) s!2326))))

(declare-fun d!2058791 () Bool)

(assert (=> d!2058791 e!3972504))

(declare-fun res!2692884 () Bool)

(assert (=> d!2058791 (=> res!2692884 e!3972504)))

(assert (=> d!2058791 (= res!2692884 e!3972503)))

(declare-fun res!2692882 () Bool)

(assert (=> d!2058791 (=> (not res!2692882) (not e!3972503))))

(assert (=> d!2058791 (= res!2692882 (isDefined!13033 lt!2406582))))

(assert (=> d!2058791 (= lt!2406582 e!3972502)))

(declare-fun c!1205894 () Bool)

(declare-fun e!3972506 () Bool)

(assert (=> d!2058791 (= c!1205894 e!3972506)))

(declare-fun res!2692881 () Bool)

(assert (=> d!2058791 (=> (not res!2692881) (not e!3972506))))

(assert (=> d!2058791 (= res!2692881 (matchR!8622 lt!2406360 Nil!65492))))

(assert (=> d!2058791 (validRegex!8175 lt!2406360)))

(assert (=> d!2058791 (= (findConcatSeparation!2744 lt!2406360 (regTwo!33390 r!7292) Nil!65492 s!2326 s!2326) lt!2406582)))

(declare-fun b!6562283 () Bool)

(assert (=> b!6562283 (= e!3972505 None!16329)))

(declare-fun b!6562284 () Bool)

(assert (=> b!6562284 (= e!3972502 (Some!16329 (tuple2!66837 Nil!65492 s!2326)))))

(declare-fun b!6562285 () Bool)

(declare-fun res!2692883 () Bool)

(assert (=> b!6562285 (=> (not res!2692883) (not e!3972503))))

(assert (=> b!6562285 (= res!2692883 (matchR!8622 (regTwo!33390 r!7292) (_2!36721 (get!22740 lt!2406582))))))

(declare-fun b!6562286 () Bool)

(assert (=> b!6562286 (= e!3972503 (= (++!14580 (_1!36721 (get!22740 lt!2406582)) (_2!36721 (get!22740 lt!2406582))) s!2326))))

(declare-fun b!6562287 () Bool)

(assert (=> b!6562287 (= e!3972506 (matchR!8622 (regTwo!33390 r!7292) s!2326))))

(assert (= (and d!2058791 res!2692881) b!6562287))

(assert (= (and d!2058791 c!1205894) b!6562284))

(assert (= (and d!2058791 (not c!1205894)) b!6562282))

(assert (= (and b!6562282 c!1205895) b!6562283))

(assert (= (and b!6562282 (not c!1205895)) b!6562281))

(assert (= (and d!2058791 res!2692882) b!6562280))

(assert (= (and b!6562280 res!2692885) b!6562285))

(assert (= (and b!6562285 res!2692883) b!6562286))

(assert (= (and d!2058791 (not res!2692884)) b!6562279))

(declare-fun m!7344300 () Bool)

(assert (=> d!2058791 m!7344300))

(declare-fun m!7344302 () Bool)

(assert (=> d!2058791 m!7344302))

(assert (=> d!2058791 m!7343856))

(assert (=> b!6562287 m!7344216))

(assert (=> b!6562279 m!7344300))

(declare-fun m!7344304 () Bool)

(assert (=> b!6562280 m!7344304))

(declare-fun m!7344306 () Bool)

(assert (=> b!6562280 m!7344306))

(assert (=> b!6562285 m!7344304))

(declare-fun m!7344308 () Bool)

(assert (=> b!6562285 m!7344308))

(assert (=> b!6562281 m!7344192))

(assert (=> b!6562281 m!7344192))

(assert (=> b!6562281 m!7344194))

(assert (=> b!6562281 m!7344196))

(assert (=> b!6562281 m!7344192))

(declare-fun m!7344310 () Bool)

(assert (=> b!6562281 m!7344310))

(assert (=> b!6562286 m!7344304))

(declare-fun m!7344312 () Bool)

(assert (=> b!6562286 m!7344312))

(assert (=> b!6561287 d!2058791))

(declare-fun bs!1674910 () Bool)

(declare-fun d!2058793 () Bool)

(assert (= bs!1674910 (and d!2058793 b!6561898)))

(declare-fun lambda!365134 () Int)

(assert (=> bs!1674910 (not (= lambda!365134 lambda!365111))))

(declare-fun bs!1674911 () Bool)

(assert (= bs!1674911 (and d!2058793 d!2058681)))

(assert (=> bs!1674911 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365134 lambda!365116))))

(declare-fun bs!1674912 () Bool)

(assert (= bs!1674912 (and d!2058793 b!6561287)))

(assert (=> bs!1674912 (not (= lambda!365134 lambda!365047))))

(declare-fun bs!1674913 () Bool)

(assert (= bs!1674913 (and d!2058793 d!2058767)))

(assert (=> bs!1674913 (not (= lambda!365134 lambda!365131))))

(declare-fun bs!1674914 () Bool)

(assert (= bs!1674914 (and d!2058793 b!6561249)))

(assert (=> bs!1674914 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365134 lambda!365048))))

(declare-fun bs!1674915 () Bool)

(assert (= bs!1674915 (and d!2058793 d!2058617)))

(assert (=> bs!1674915 (not (= lambda!365134 lambda!365100))))

(declare-fun bs!1674916 () Bool)

(assert (= bs!1674916 (and d!2058793 b!6561283)))

(assert (=> bs!1674916 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365134 lambda!365041))))

(assert (=> bs!1674916 (not (= lambda!365134 lambda!365042))))

(assert (=> bs!1674915 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365134 lambda!365097))))

(assert (=> bs!1674913 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365134 lambda!365130))))

(declare-fun bs!1674917 () Bool)

(assert (= bs!1674917 (and d!2058793 b!6562199)))

(assert (=> bs!1674917 (not (= lambda!365134 lambda!365132))))

(declare-fun bs!1674918 () Bool)

(assert (= bs!1674918 (and d!2058793 b!6561902)))

(assert (=> bs!1674918 (not (= lambda!365134 lambda!365109))))

(assert (=> bs!1674912 (= lambda!365134 lambda!365046)))

(assert (=> bs!1674914 (not (= lambda!365134 lambda!365049))))

(declare-fun bs!1674919 () Bool)

(assert (= bs!1674919 (and d!2058793 d!2058765)))

(assert (=> bs!1674919 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365134 lambda!365129))))

(declare-fun bs!1674920 () Bool)

(assert (= bs!1674920 (and d!2058793 b!6562195)))

(assert (=> bs!1674920 (not (= lambda!365134 lambda!365133))))

(assert (=> d!2058793 true))

(assert (=> d!2058793 true))

(assert (=> d!2058793 true))

(declare-fun lambda!365135 () Int)

(assert (=> bs!1674910 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (regOne!33390 lt!2406360)) (= (regTwo!33390 r!7292) (regTwo!33390 lt!2406360))) (= lambda!365135 lambda!365111))))

(assert (=> bs!1674911 (not (= lambda!365135 lambda!365116))))

(assert (=> bs!1674912 (= lambda!365135 lambda!365047)))

(assert (=> bs!1674913 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365135 lambda!365131))))

(assert (=> bs!1674914 (not (= lambda!365135 lambda!365048))))

(assert (=> bs!1674915 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365135 lambda!365100))))

(assert (=> bs!1674916 (not (= lambda!365135 lambda!365041))))

(assert (=> bs!1674916 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365135 lambda!365042))))

(assert (=> bs!1674913 (not (= lambda!365135 lambda!365130))))

(assert (=> bs!1674917 (not (= lambda!365135 lambda!365132))))

(assert (=> bs!1674918 (not (= lambda!365135 lambda!365109))))

(assert (=> bs!1674912 (not (= lambda!365135 lambda!365046))))

(assert (=> bs!1674914 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365135 lambda!365049))))

(assert (=> bs!1674919 (not (= lambda!365135 lambda!365129))))

(assert (=> bs!1674920 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365135 lambda!365133))))

(declare-fun bs!1674921 () Bool)

(assert (= bs!1674921 d!2058793))

(assert (=> bs!1674921 (not (= lambda!365135 lambda!365134))))

(assert (=> bs!1674915 (not (= lambda!365135 lambda!365097))))

(assert (=> d!2058793 true))

(assert (=> d!2058793 true))

(assert (=> d!2058793 true))

(assert (=> d!2058793 (= (Exists!3509 lambda!365134) (Exists!3509 lambda!365135))))

(declare-fun lt!2406584 () Unit!159091)

(assert (=> d!2058793 (= lt!2406584 (choose!48963 lt!2406360 (regTwo!33390 r!7292) s!2326))))

(assert (=> d!2058793 (validRegex!8175 lt!2406360)))

(assert (=> d!2058793 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2046 lt!2406360 (regTwo!33390 r!7292) s!2326) lt!2406584)))

(declare-fun m!7344314 () Bool)

(assert (=> bs!1674921 m!7344314))

(declare-fun m!7344316 () Bool)

(assert (=> bs!1674921 m!7344316))

(declare-fun m!7344318 () Bool)

(assert (=> bs!1674921 m!7344318))

(assert (=> bs!1674921 m!7343856))

(assert (=> b!6561287 d!2058793))

(declare-fun b!6562288 () Bool)

(declare-fun e!3972509 () Bool)

(declare-fun e!3972512 () Bool)

(assert (=> b!6562288 (= e!3972509 e!3972512)))

(declare-fun res!2692892 () Bool)

(assert (=> b!6562288 (=> (not res!2692892) (not e!3972512))))

(declare-fun lt!2406585 () Bool)

(assert (=> b!6562288 (= res!2692892 (not lt!2406585))))

(declare-fun b!6562289 () Bool)

(declare-fun res!2692889 () Bool)

(declare-fun e!3972511 () Bool)

(assert (=> b!6562289 (=> res!2692889 e!3972511)))

(assert (=> b!6562289 (= res!2692889 (not (isEmpty!37737 (tail!12414 (_1!36721 lt!2406377)))))))

(declare-fun b!6562290 () Bool)

(declare-fun e!3972507 () Bool)

(declare-fun call!570764 () Bool)

(assert (=> b!6562290 (= e!3972507 (= lt!2406585 call!570764))))

(declare-fun b!6562292 () Bool)

(declare-fun res!2692888 () Bool)

(declare-fun e!3972510 () Bool)

(assert (=> b!6562292 (=> (not res!2692888) (not e!3972510))))

(assert (=> b!6562292 (= res!2692888 (isEmpty!37737 (tail!12414 (_1!36721 lt!2406377))))))

(declare-fun b!6562293 () Bool)

(assert (=> b!6562293 (= e!3972510 (= (head!13329 (_1!36721 lt!2406377)) (c!1205620 (reg!16768 (regOne!33390 r!7292)))))))

(declare-fun b!6562294 () Bool)

(declare-fun res!2692890 () Bool)

(assert (=> b!6562294 (=> res!2692890 e!3972509)))

(assert (=> b!6562294 (= res!2692890 e!3972510)))

(declare-fun res!2692886 () Bool)

(assert (=> b!6562294 (=> (not res!2692886) (not e!3972510))))

(assert (=> b!6562294 (= res!2692886 lt!2406585)))

(declare-fun b!6562295 () Bool)

(declare-fun e!3972513 () Bool)

(assert (=> b!6562295 (= e!3972513 (not lt!2406585))))

(declare-fun b!6562296 () Bool)

(declare-fun res!2692893 () Bool)

(assert (=> b!6562296 (=> (not res!2692893) (not e!3972510))))

(assert (=> b!6562296 (= res!2692893 (not call!570764))))

(declare-fun b!6562297 () Bool)

(assert (=> b!6562297 (= e!3972512 e!3972511)))

(declare-fun res!2692887 () Bool)

(assert (=> b!6562297 (=> res!2692887 e!3972511)))

(assert (=> b!6562297 (= res!2692887 call!570764)))

(declare-fun b!6562298 () Bool)

(declare-fun e!3972508 () Bool)

(assert (=> b!6562298 (= e!3972508 (nullable!6432 (reg!16768 (regOne!33390 r!7292))))))

(declare-fun bm!570759 () Bool)

(assert (=> bm!570759 (= call!570764 (isEmpty!37737 (_1!36721 lt!2406377)))))

(declare-fun b!6562299 () Bool)

(assert (=> b!6562299 (= e!3972507 e!3972513)))

(declare-fun c!1205896 () Bool)

(assert (=> b!6562299 (= c!1205896 ((_ is EmptyLang!16439) (reg!16768 (regOne!33390 r!7292))))))

(declare-fun b!6562300 () Bool)

(declare-fun res!2692891 () Bool)

(assert (=> b!6562300 (=> res!2692891 e!3972509)))

(assert (=> b!6562300 (= res!2692891 (not ((_ is ElementMatch!16439) (reg!16768 (regOne!33390 r!7292)))))))

(assert (=> b!6562300 (= e!3972513 e!3972509)))

(declare-fun b!6562301 () Bool)

(assert (=> b!6562301 (= e!3972508 (matchR!8622 (derivativeStep!5123 (reg!16768 (regOne!33390 r!7292)) (head!13329 (_1!36721 lt!2406377))) (tail!12414 (_1!36721 lt!2406377))))))

(declare-fun d!2058795 () Bool)

(assert (=> d!2058795 e!3972507))

(declare-fun c!1205898 () Bool)

(assert (=> d!2058795 (= c!1205898 ((_ is EmptyExpr!16439) (reg!16768 (regOne!33390 r!7292))))))

(assert (=> d!2058795 (= lt!2406585 e!3972508)))

(declare-fun c!1205897 () Bool)

(assert (=> d!2058795 (= c!1205897 (isEmpty!37737 (_1!36721 lt!2406377)))))

(assert (=> d!2058795 (validRegex!8175 (reg!16768 (regOne!33390 r!7292)))))

(assert (=> d!2058795 (= (matchR!8622 (reg!16768 (regOne!33390 r!7292)) (_1!36721 lt!2406377)) lt!2406585)))

(declare-fun b!6562291 () Bool)

(assert (=> b!6562291 (= e!3972511 (not (= (head!13329 (_1!36721 lt!2406377)) (c!1205620 (reg!16768 (regOne!33390 r!7292))))))))

(assert (= (and d!2058795 c!1205897) b!6562298))

(assert (= (and d!2058795 (not c!1205897)) b!6562301))

(assert (= (and d!2058795 c!1205898) b!6562290))

(assert (= (and d!2058795 (not c!1205898)) b!6562299))

(assert (= (and b!6562299 c!1205896) b!6562295))

(assert (= (and b!6562299 (not c!1205896)) b!6562300))

(assert (= (and b!6562300 (not res!2692891)) b!6562294))

(assert (= (and b!6562294 res!2692886) b!6562296))

(assert (= (and b!6562296 res!2692893) b!6562292))

(assert (= (and b!6562292 res!2692888) b!6562293))

(assert (= (and b!6562294 (not res!2692890)) b!6562288))

(assert (= (and b!6562288 res!2692892) b!6562297))

(assert (= (and b!6562297 (not res!2692887)) b!6562289))

(assert (= (and b!6562289 (not res!2692889)) b!6562291))

(assert (= (or b!6562290 b!6562296 b!6562297) bm!570759))

(declare-fun m!7344320 () Bool)

(assert (=> bm!570759 m!7344320))

(assert (=> d!2058795 m!7344320))

(assert (=> d!2058795 m!7343212))

(declare-fun m!7344322 () Bool)

(assert (=> b!6562292 m!7344322))

(assert (=> b!6562292 m!7344322))

(declare-fun m!7344324 () Bool)

(assert (=> b!6562292 m!7344324))

(declare-fun m!7344326 () Bool)

(assert (=> b!6562293 m!7344326))

(assert (=> b!6562291 m!7344326))

(assert (=> b!6562289 m!7344322))

(assert (=> b!6562289 m!7344322))

(assert (=> b!6562289 m!7344324))

(assert (=> b!6562298 m!7343344))

(assert (=> b!6562301 m!7344326))

(assert (=> b!6562301 m!7344326))

(declare-fun m!7344328 () Bool)

(assert (=> b!6562301 m!7344328))

(assert (=> b!6562301 m!7344322))

(assert (=> b!6562301 m!7344328))

(assert (=> b!6562301 m!7344322))

(declare-fun m!7344330 () Bool)

(assert (=> b!6562301 m!7344330))

(assert (=> b!6561287 d!2058795))

(declare-fun bs!1674922 () Bool)

(declare-fun d!2058797 () Bool)

(assert (= bs!1674922 (and d!2058797 b!6561265)))

(declare-fun lambda!365138 () Int)

(assert (=> bs!1674922 (= lambda!365138 lambda!365045)))

(declare-fun bs!1674923 () Bool)

(assert (= bs!1674923 (and d!2058797 d!2058735)))

(assert (=> bs!1674923 (= lambda!365138 lambda!365124)))

(declare-fun bs!1674924 () Bool)

(assert (= bs!1674924 (and d!2058797 d!2058599)))

(assert (=> bs!1674924 (= lambda!365138 lambda!365092)))

(declare-fun bs!1674925 () Bool)

(assert (= bs!1674925 (and d!2058797 d!2058587)))

(assert (=> bs!1674925 (= lambda!365138 lambda!365086)))

(declare-fun bs!1674926 () Bool)

(assert (= bs!1674926 (and d!2058797 d!2058737)))

(assert (=> bs!1674926 (= lambda!365138 lambda!365127)))

(declare-fun bs!1674927 () Bool)

(assert (= bs!1674927 (and d!2058797 d!2058739)))

(assert (=> bs!1674927 (= lambda!365138 lambda!365128)))

(assert (=> d!2058797 (matchZipper!2451 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (++!14581 (exprs!6323 lt!2406347) (exprs!6323 lt!2406352))) true) (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377)))))

(declare-fun lt!2406591 () Unit!159091)

(assert (=> d!2058797 (= lt!2406591 (lemmaConcatPreservesForall!412 (exprs!6323 lt!2406347) (exprs!6323 lt!2406352) lambda!365138))))

(declare-fun lt!2406590 () Unit!159091)

(declare-fun choose!48977 (Context!11646 Context!11646 List!65616 List!65616) Unit!159091)

(assert (=> d!2058797 (= lt!2406590 (choose!48977 lt!2406347 lt!2406352 (_1!36721 lt!2406377) (_2!36721 lt!2406377)))))

(assert (=> d!2058797 (matchZipper!2451 (store ((as const (Array Context!11646 Bool)) false) lt!2406347 true) (_1!36721 lt!2406377))))

(assert (=> d!2058797 (= (lemmaConcatenateContextMatchesConcatOfStrings!220 lt!2406347 lt!2406352 (_1!36721 lt!2406377) (_2!36721 lt!2406377)) lt!2406590)))

(declare-fun bs!1674928 () Bool)

(assert (= bs!1674928 d!2058797))

(declare-fun m!7344332 () Bool)

(assert (=> bs!1674928 m!7344332))

(assert (=> bs!1674928 m!7343206))

(declare-fun m!7344334 () Bool)

(assert (=> bs!1674928 m!7344334))

(assert (=> bs!1674928 m!7343360))

(declare-fun m!7344336 () Bool)

(assert (=> bs!1674928 m!7344336))

(declare-fun m!7344338 () Bool)

(assert (=> bs!1674928 m!7344338))

(assert (=> bs!1674928 m!7343206))

(assert (=> bs!1674928 m!7344332))

(assert (=> bs!1674928 m!7343360))

(declare-fun m!7344340 () Bool)

(assert (=> bs!1674928 m!7344340))

(declare-fun m!7344342 () Bool)

(assert (=> bs!1674928 m!7344342))

(assert (=> b!6561287 d!2058797))

(declare-fun d!2058799 () Bool)

(assert (=> d!2058799 (= (get!22740 lt!2406390) (v!52514 lt!2406390))))

(assert (=> b!6561287 d!2058799))

(declare-fun d!2058801 () Bool)

(assert (=> d!2058801 (= (isDefined!13033 lt!2406390) (not (isEmpty!37738 lt!2406390)))))

(declare-fun bs!1674929 () Bool)

(assert (= bs!1674929 d!2058801))

(declare-fun m!7344344 () Bool)

(assert (=> bs!1674929 m!7344344))

(assert (=> b!6561287 d!2058801))

(declare-fun d!2058803 () Bool)

(assert (=> d!2058803 (= (matchR!8622 lt!2406396 s!2326) (matchRSpec!3540 lt!2406396 s!2326))))

(declare-fun lt!2406592 () Unit!159091)

(assert (=> d!2058803 (= lt!2406592 (choose!48964 lt!2406396 s!2326))))

(assert (=> d!2058803 (validRegex!8175 lt!2406396)))

(assert (=> d!2058803 (= (mainMatchTheorem!3540 lt!2406396 s!2326) lt!2406592)))

(declare-fun bs!1674930 () Bool)

(assert (= bs!1674930 d!2058803))

(assert (=> bs!1674930 m!7343304))

(assert (=> bs!1674930 m!7343330))

(declare-fun m!7344346 () Bool)

(assert (=> bs!1674930 m!7344346))

(assert (=> bs!1674930 m!7344290))

(assert (=> b!6561287 d!2058803))

(declare-fun d!2058805 () Bool)

(assert (=> d!2058805 (= (Exists!3509 lambda!365047) (choose!48962 lambda!365047))))

(declare-fun bs!1674931 () Bool)

(assert (= bs!1674931 d!2058805))

(declare-fun m!7344348 () Bool)

(assert (=> bs!1674931 m!7344348))

(assert (=> b!6561287 d!2058805))

(declare-fun b!6562302 () Bool)

(declare-fun e!3972516 () Bool)

(declare-fun e!3972519 () Bool)

(assert (=> b!6562302 (= e!3972516 e!3972519)))

(declare-fun res!2692900 () Bool)

(assert (=> b!6562302 (=> (not res!2692900) (not e!3972519))))

(declare-fun lt!2406593 () Bool)

(assert (=> b!6562302 (= res!2692900 (not lt!2406593))))

(declare-fun b!6562303 () Bool)

(declare-fun res!2692897 () Bool)

(declare-fun e!3972518 () Bool)

(assert (=> b!6562303 (=> res!2692897 e!3972518)))

(assert (=> b!6562303 (= res!2692897 (not (isEmpty!37737 (tail!12414 lt!2406375))))))

(declare-fun b!6562304 () Bool)

(declare-fun e!3972514 () Bool)

(declare-fun call!570765 () Bool)

(assert (=> b!6562304 (= e!3972514 (= lt!2406593 call!570765))))

(declare-fun b!6562306 () Bool)

(declare-fun res!2692896 () Bool)

(declare-fun e!3972517 () Bool)

(assert (=> b!6562306 (=> (not res!2692896) (not e!3972517))))

(assert (=> b!6562306 (= res!2692896 (isEmpty!37737 (tail!12414 lt!2406375)))))

(declare-fun b!6562307 () Bool)

(assert (=> b!6562307 (= e!3972517 (= (head!13329 lt!2406375) (c!1205620 lt!2406349)))))

(declare-fun b!6562308 () Bool)

(declare-fun res!2692898 () Bool)

(assert (=> b!6562308 (=> res!2692898 e!3972516)))

(assert (=> b!6562308 (= res!2692898 e!3972517)))

(declare-fun res!2692894 () Bool)

(assert (=> b!6562308 (=> (not res!2692894) (not e!3972517))))

(assert (=> b!6562308 (= res!2692894 lt!2406593)))

(declare-fun b!6562309 () Bool)

(declare-fun e!3972520 () Bool)

(assert (=> b!6562309 (= e!3972520 (not lt!2406593))))

(declare-fun b!6562310 () Bool)

(declare-fun res!2692901 () Bool)

(assert (=> b!6562310 (=> (not res!2692901) (not e!3972517))))

(assert (=> b!6562310 (= res!2692901 (not call!570765))))

(declare-fun b!6562311 () Bool)

(assert (=> b!6562311 (= e!3972519 e!3972518)))

(declare-fun res!2692895 () Bool)

(assert (=> b!6562311 (=> res!2692895 e!3972518)))

(assert (=> b!6562311 (= res!2692895 call!570765)))

(declare-fun b!6562312 () Bool)

(declare-fun e!3972515 () Bool)

(assert (=> b!6562312 (= e!3972515 (nullable!6432 lt!2406349))))

(declare-fun bm!570760 () Bool)

(assert (=> bm!570760 (= call!570765 (isEmpty!37737 lt!2406375))))

(declare-fun b!6562313 () Bool)

(assert (=> b!6562313 (= e!3972514 e!3972520)))

(declare-fun c!1205899 () Bool)

(assert (=> b!6562313 (= c!1205899 ((_ is EmptyLang!16439) lt!2406349))))

(declare-fun b!6562314 () Bool)

(declare-fun res!2692899 () Bool)

(assert (=> b!6562314 (=> res!2692899 e!3972516)))

(assert (=> b!6562314 (= res!2692899 (not ((_ is ElementMatch!16439) lt!2406349)))))

(assert (=> b!6562314 (= e!3972520 e!3972516)))

(declare-fun b!6562315 () Bool)

(assert (=> b!6562315 (= e!3972515 (matchR!8622 (derivativeStep!5123 lt!2406349 (head!13329 lt!2406375)) (tail!12414 lt!2406375)))))

(declare-fun d!2058807 () Bool)

(assert (=> d!2058807 e!3972514))

(declare-fun c!1205901 () Bool)

(assert (=> d!2058807 (= c!1205901 ((_ is EmptyExpr!16439) lt!2406349))))

(assert (=> d!2058807 (= lt!2406593 e!3972515)))

(declare-fun c!1205900 () Bool)

(assert (=> d!2058807 (= c!1205900 (isEmpty!37737 lt!2406375))))

(assert (=> d!2058807 (validRegex!8175 lt!2406349)))

(assert (=> d!2058807 (= (matchR!8622 lt!2406349 lt!2406375) lt!2406593)))

(declare-fun b!6562305 () Bool)

(assert (=> b!6562305 (= e!3972518 (not (= (head!13329 lt!2406375) (c!1205620 lt!2406349))))))

(assert (= (and d!2058807 c!1205900) b!6562312))

(assert (= (and d!2058807 (not c!1205900)) b!6562315))

(assert (= (and d!2058807 c!1205901) b!6562304))

(assert (= (and d!2058807 (not c!1205901)) b!6562313))

(assert (= (and b!6562313 c!1205899) b!6562309))

(assert (= (and b!6562313 (not c!1205899)) b!6562314))

(assert (= (and b!6562314 (not res!2692899)) b!6562308))

(assert (= (and b!6562308 res!2692894) b!6562310))

(assert (= (and b!6562310 res!2692901) b!6562306))

(assert (= (and b!6562306 res!2692896) b!6562307))

(assert (= (and b!6562308 (not res!2692898)) b!6562302))

(assert (= (and b!6562302 res!2692900) b!6562311))

(assert (= (and b!6562311 (not res!2692895)) b!6562303))

(assert (= (and b!6562303 (not res!2692897)) b!6562305))

(assert (= (or b!6562304 b!6562310 b!6562311) bm!570760))

(declare-fun m!7344350 () Bool)

(assert (=> bm!570760 m!7344350))

(assert (=> d!2058807 m!7344350))

(declare-fun m!7344352 () Bool)

(assert (=> d!2058807 m!7344352))

(declare-fun m!7344354 () Bool)

(assert (=> b!6562306 m!7344354))

(assert (=> b!6562306 m!7344354))

(declare-fun m!7344356 () Bool)

(assert (=> b!6562306 m!7344356))

(declare-fun m!7344358 () Bool)

(assert (=> b!6562307 m!7344358))

(assert (=> b!6562305 m!7344358))

(assert (=> b!6562303 m!7344354))

(assert (=> b!6562303 m!7344354))

(assert (=> b!6562303 m!7344356))

(declare-fun m!7344360 () Bool)

(assert (=> b!6562312 m!7344360))

(assert (=> b!6562315 m!7344358))

(assert (=> b!6562315 m!7344358))

(declare-fun m!7344362 () Bool)

(assert (=> b!6562315 m!7344362))

(assert (=> b!6562315 m!7344354))

(assert (=> b!6562315 m!7344362))

(assert (=> b!6562315 m!7344354))

(declare-fun m!7344364 () Bool)

(assert (=> b!6562315 m!7344364))

(assert (=> b!6561287 d!2058807))

(declare-fun d!2058809 () Bool)

(assert (=> d!2058809 (= (matchR!8622 lt!2406341 (_2!36721 lt!2406377)) (matchZipper!2451 lt!2406394 (_2!36721 lt!2406377)))))

(declare-fun lt!2406594 () Unit!159091)

(assert (=> d!2058809 (= lt!2406594 (choose!48976 lt!2406394 lt!2406393 lt!2406341 (_2!36721 lt!2406377)))))

(assert (=> d!2058809 (validRegex!8175 lt!2406341)))

(assert (=> d!2058809 (= (theoremZipperRegexEquiv!875 lt!2406394 lt!2406393 lt!2406341 (_2!36721 lt!2406377)) lt!2406594)))

(declare-fun bs!1674932 () Bool)

(assert (= bs!1674932 d!2058809))

(assert (=> bs!1674932 m!7343320))

(assert (=> bs!1674932 m!7343254))

(declare-fun m!7344366 () Bool)

(assert (=> bs!1674932 m!7344366))

(assert (=> bs!1674932 m!7344280))

(assert (=> b!6561287 d!2058809))

(declare-fun d!2058811 () Bool)

(assert (=> d!2058811 (matchR!8622 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406341) (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377)))))

(declare-fun lt!2406597 () Unit!159091)

(declare-fun choose!48978 (Regex!16439 Regex!16439 List!65616 List!65616) Unit!159091)

(assert (=> d!2058811 (= lt!2406597 (choose!48978 (reg!16768 (regOne!33390 r!7292)) lt!2406341 (_1!36721 lt!2406377) (_2!36721 lt!2406377)))))

(declare-fun e!3972523 () Bool)

(assert (=> d!2058811 e!3972523))

(declare-fun res!2692904 () Bool)

(assert (=> d!2058811 (=> (not res!2692904) (not e!3972523))))

(assert (=> d!2058811 (= res!2692904 (validRegex!8175 (reg!16768 (regOne!33390 r!7292))))))

(assert (=> d!2058811 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!360 (reg!16768 (regOne!33390 r!7292)) lt!2406341 (_1!36721 lt!2406377) (_2!36721 lt!2406377)) lt!2406597)))

(declare-fun b!6562318 () Bool)

(assert (=> b!6562318 (= e!3972523 (validRegex!8175 lt!2406341))))

(assert (= (and d!2058811 res!2692904) b!6562318))

(assert (=> d!2058811 m!7343206))

(assert (=> d!2058811 m!7343206))

(declare-fun m!7344368 () Bool)

(assert (=> d!2058811 m!7344368))

(declare-fun m!7344370 () Bool)

(assert (=> d!2058811 m!7344370))

(assert (=> d!2058811 m!7343212))

(assert (=> b!6562318 m!7344280))

(assert (=> b!6561287 d!2058811))

(declare-fun bs!1674933 () Bool)

(declare-fun b!6562327 () Bool)

(assert (= bs!1674933 (and b!6562327 b!6561898)))

(declare-fun lambda!365139 () Int)

(assert (=> bs!1674933 (not (= lambda!365139 lambda!365111))))

(declare-fun bs!1674934 () Bool)

(assert (= bs!1674934 (and b!6562327 d!2058681)))

(assert (=> bs!1674934 (not (= lambda!365139 lambda!365116))))

(declare-fun bs!1674935 () Bool)

(assert (= bs!1674935 (and b!6562327 b!6561287)))

(assert (=> bs!1674935 (not (= lambda!365139 lambda!365047))))

(declare-fun bs!1674936 () Bool)

(assert (= bs!1674936 (and b!6562327 d!2058767)))

(assert (=> bs!1674936 (not (= lambda!365139 lambda!365131))))

(declare-fun bs!1674937 () Bool)

(assert (= bs!1674937 (and b!6562327 b!6561249)))

(assert (=> bs!1674937 (not (= lambda!365139 lambda!365048))))

(declare-fun bs!1674938 () Bool)

(assert (= bs!1674938 (and b!6562327 d!2058617)))

(assert (=> bs!1674938 (not (= lambda!365139 lambda!365100))))

(declare-fun bs!1674939 () Bool)

(assert (= bs!1674939 (and b!6562327 b!6561283)))

(assert (=> bs!1674939 (not (= lambda!365139 lambda!365041))))

(assert (=> bs!1674939 (not (= lambda!365139 lambda!365042))))

(assert (=> bs!1674936 (not (= lambda!365139 lambda!365130))))

(declare-fun bs!1674940 () Bool)

(assert (= bs!1674940 (and b!6562327 b!6562199)))

(assert (=> bs!1674940 (= (and (= (reg!16768 lt!2406396) (reg!16768 r!7292)) (= lt!2406396 r!7292)) (= lambda!365139 lambda!365132))))

(declare-fun bs!1674941 () Bool)

(assert (= bs!1674941 (and b!6562327 d!2058793)))

(assert (=> bs!1674941 (not (= lambda!365139 lambda!365135))))

(declare-fun bs!1674942 () Bool)

(assert (= bs!1674942 (and b!6562327 b!6561902)))

(assert (=> bs!1674942 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (reg!16768 lt!2406396) (reg!16768 lt!2406360)) (= lt!2406396 lt!2406360)) (= lambda!365139 lambda!365109))))

(assert (=> bs!1674935 (not (= lambda!365139 lambda!365046))))

(assert (=> bs!1674937 (not (= lambda!365139 lambda!365049))))

(declare-fun bs!1674943 () Bool)

(assert (= bs!1674943 (and b!6562327 d!2058765)))

(assert (=> bs!1674943 (not (= lambda!365139 lambda!365129))))

(declare-fun bs!1674944 () Bool)

(assert (= bs!1674944 (and b!6562327 b!6562195)))

(assert (=> bs!1674944 (not (= lambda!365139 lambda!365133))))

(assert (=> bs!1674941 (not (= lambda!365139 lambda!365134))))

(assert (=> bs!1674938 (not (= lambda!365139 lambda!365097))))

(assert (=> b!6562327 true))

(assert (=> b!6562327 true))

(declare-fun bs!1674945 () Bool)

(declare-fun b!6562323 () Bool)

(assert (= bs!1674945 (and b!6562323 b!6561898)))

(declare-fun lambda!365140 () Int)

(assert (=> bs!1674945 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 lt!2406396) (regOne!33390 lt!2406360)) (= (regTwo!33390 lt!2406396) (regTwo!33390 lt!2406360))) (= lambda!365140 lambda!365111))))

(declare-fun bs!1674946 () Bool)

(assert (= bs!1674946 (and b!6562323 d!2058681)))

(assert (=> bs!1674946 (not (= lambda!365140 lambda!365116))))

(declare-fun bs!1674947 () Bool)

(assert (= bs!1674947 (and b!6562323 b!6561287)))

(assert (=> bs!1674947 (= (and (= (regOne!33390 lt!2406396) lt!2406360) (= (regTwo!33390 lt!2406396) (regTwo!33390 r!7292))) (= lambda!365140 lambda!365047))))

(declare-fun bs!1674948 () Bool)

(assert (= bs!1674948 (and b!6562323 d!2058767)))

(assert (=> bs!1674948 (= (and (= (regOne!33390 lt!2406396) (regOne!33390 r!7292)) (= (regTwo!33390 lt!2406396) (regTwo!33390 r!7292))) (= lambda!365140 lambda!365131))))

(declare-fun bs!1674949 () Bool)

(assert (= bs!1674949 (and b!6562323 b!6561249)))

(assert (=> bs!1674949 (not (= lambda!365140 lambda!365048))))

(declare-fun bs!1674950 () Bool)

(assert (= bs!1674950 (and b!6562323 d!2058617)))

(assert (=> bs!1674950 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 lt!2406396) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 lt!2406396) lt!2406358)) (= lambda!365140 lambda!365100))))

(declare-fun bs!1674951 () Bool)

(assert (= bs!1674951 (and b!6562323 b!6561283)))

(assert (=> bs!1674951 (not (= lambda!365140 lambda!365041))))

(assert (=> bs!1674951 (= (and (= (regOne!33390 lt!2406396) (regOne!33390 r!7292)) (= (regTwo!33390 lt!2406396) (regTwo!33390 r!7292))) (= lambda!365140 lambda!365042))))

(assert (=> bs!1674948 (not (= lambda!365140 lambda!365130))))

(declare-fun bs!1674952 () Bool)

(assert (= bs!1674952 (and b!6562323 b!6562199)))

(assert (=> bs!1674952 (not (= lambda!365140 lambda!365132))))

(declare-fun bs!1674953 () Bool)

(assert (= bs!1674953 (and b!6562323 d!2058793)))

(assert (=> bs!1674953 (= (and (= (regOne!33390 lt!2406396) lt!2406360) (= (regTwo!33390 lt!2406396) (regTwo!33390 r!7292))) (= lambda!365140 lambda!365135))))

(declare-fun bs!1674954 () Bool)

(assert (= bs!1674954 (and b!6562323 b!6561902)))

(assert (=> bs!1674954 (not (= lambda!365140 lambda!365109))))

(assert (=> bs!1674947 (not (= lambda!365140 lambda!365046))))

(assert (=> bs!1674949 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 lt!2406396) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 lt!2406396) lt!2406358)) (= lambda!365140 lambda!365049))))

(declare-fun bs!1674955 () Bool)

(assert (= bs!1674955 (and b!6562323 d!2058765)))

(assert (=> bs!1674955 (not (= lambda!365140 lambda!365129))))

(declare-fun bs!1674956 () Bool)

(assert (= bs!1674956 (and b!6562323 b!6562327)))

(assert (=> bs!1674956 (not (= lambda!365140 lambda!365139))))

(declare-fun bs!1674957 () Bool)

(assert (= bs!1674957 (and b!6562323 b!6562195)))

(assert (=> bs!1674957 (= (and (= (regOne!33390 lt!2406396) (regOne!33390 r!7292)) (= (regTwo!33390 lt!2406396) (regTwo!33390 r!7292))) (= lambda!365140 lambda!365133))))

(assert (=> bs!1674953 (not (= lambda!365140 lambda!365134))))

(assert (=> bs!1674950 (not (= lambda!365140 lambda!365097))))

(assert (=> b!6562323 true))

(assert (=> b!6562323 true))

(declare-fun b!6562319 () Bool)

(declare-fun c!1205905 () Bool)

(assert (=> b!6562319 (= c!1205905 ((_ is ElementMatch!16439) lt!2406396))))

(declare-fun e!3972527 () Bool)

(declare-fun e!3972529 () Bool)

(assert (=> b!6562319 (= e!3972527 e!3972529)))

(declare-fun b!6562320 () Bool)

(declare-fun res!2692906 () Bool)

(declare-fun e!3972530 () Bool)

(assert (=> b!6562320 (=> res!2692906 e!3972530)))

(declare-fun call!570767 () Bool)

(assert (=> b!6562320 (= res!2692906 call!570767)))

(declare-fun e!3972526 () Bool)

(assert (=> b!6562320 (= e!3972526 e!3972530)))

(declare-fun b!6562321 () Bool)

(declare-fun e!3972524 () Bool)

(declare-fun e!3972525 () Bool)

(assert (=> b!6562321 (= e!3972524 e!3972525)))

(declare-fun res!2692907 () Bool)

(assert (=> b!6562321 (= res!2692907 (matchRSpec!3540 (regOne!33391 lt!2406396) s!2326))))

(assert (=> b!6562321 (=> res!2692907 e!3972525)))

(declare-fun b!6562322 () Bool)

(declare-fun e!3972528 () Bool)

(assert (=> b!6562322 (= e!3972528 call!570767)))

(declare-fun call!570766 () Bool)

(assert (=> b!6562323 (= e!3972526 call!570766)))

(declare-fun b!6562324 () Bool)

(assert (=> b!6562324 (= e!3972529 (= s!2326 (Cons!65492 (c!1205620 lt!2406396) Nil!65492)))))

(declare-fun bm!570761 () Bool)

(assert (=> bm!570761 (= call!570767 (isEmpty!37737 s!2326))))

(declare-fun b!6562325 () Bool)

(declare-fun c!1205902 () Bool)

(assert (=> b!6562325 (= c!1205902 ((_ is Union!16439) lt!2406396))))

(assert (=> b!6562325 (= e!3972529 e!3972524)))

(declare-fun b!6562326 () Bool)

(assert (=> b!6562326 (= e!3972524 e!3972526)))

(declare-fun c!1205903 () Bool)

(assert (=> b!6562326 (= c!1205903 ((_ is Star!16439) lt!2406396))))

(declare-fun d!2058813 () Bool)

(declare-fun c!1205904 () Bool)

(assert (=> d!2058813 (= c!1205904 ((_ is EmptyExpr!16439) lt!2406396))))

(assert (=> d!2058813 (= (matchRSpec!3540 lt!2406396 s!2326) e!3972528)))

(assert (=> b!6562327 (= e!3972530 call!570766)))

(declare-fun b!6562328 () Bool)

(assert (=> b!6562328 (= e!3972528 e!3972527)))

(declare-fun res!2692905 () Bool)

(assert (=> b!6562328 (= res!2692905 (not ((_ is EmptyLang!16439) lt!2406396)))))

(assert (=> b!6562328 (=> (not res!2692905) (not e!3972527))))

(declare-fun b!6562329 () Bool)

(assert (=> b!6562329 (= e!3972525 (matchRSpec!3540 (regTwo!33391 lt!2406396) s!2326))))

(declare-fun bm!570762 () Bool)

(assert (=> bm!570762 (= call!570766 (Exists!3509 (ite c!1205903 lambda!365139 lambda!365140)))))

(assert (= (and d!2058813 c!1205904) b!6562322))

(assert (= (and d!2058813 (not c!1205904)) b!6562328))

(assert (= (and b!6562328 res!2692905) b!6562319))

(assert (= (and b!6562319 c!1205905) b!6562324))

(assert (= (and b!6562319 (not c!1205905)) b!6562325))

(assert (= (and b!6562325 c!1205902) b!6562321))

(assert (= (and b!6562325 (not c!1205902)) b!6562326))

(assert (= (and b!6562321 (not res!2692907)) b!6562329))

(assert (= (and b!6562326 c!1205903) b!6562320))

(assert (= (and b!6562326 (not c!1205903)) b!6562323))

(assert (= (and b!6562320 (not res!2692906)) b!6562327))

(assert (= (or b!6562327 b!6562323) bm!570762))

(assert (= (or b!6562322 b!6562320) bm!570761))

(declare-fun m!7344372 () Bool)

(assert (=> b!6562321 m!7344372))

(assert (=> bm!570761 m!7343766))

(declare-fun m!7344374 () Bool)

(assert (=> b!6562329 m!7344374))

(declare-fun m!7344376 () Bool)

(assert (=> bm!570762 m!7344376))

(assert (=> b!6561287 d!2058813))

(declare-fun d!2058815 () Bool)

(assert (=> d!2058815 (= (matchR!8622 (Concat!25284 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406358) (regTwo!33390 r!7292)) s!2326) (matchR!8622 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) (Concat!25284 lt!2406358 (regTwo!33390 r!7292))) s!2326))))

(declare-fun lt!2406600 () Unit!159091)

(declare-fun choose!48979 (Regex!16439 Regex!16439 Regex!16439 List!65616) Unit!159091)

(assert (=> d!2058815 (= lt!2406600 (choose!48979 (reg!16768 (regOne!33390 r!7292)) lt!2406358 (regTwo!33390 r!7292) s!2326))))

(declare-fun e!3972533 () Bool)

(assert (=> d!2058815 e!3972533))

(declare-fun res!2692912 () Bool)

(assert (=> d!2058815 (=> (not res!2692912) (not e!3972533))))

(assert (=> d!2058815 (= res!2692912 (validRegex!8175 (reg!16768 (regOne!33390 r!7292))))))

(assert (=> d!2058815 (= (lemmaConcatAssociative!136 (reg!16768 (regOne!33390 r!7292)) lt!2406358 (regTwo!33390 r!7292) s!2326) lt!2406600)))

(declare-fun b!6562334 () Bool)

(declare-fun res!2692913 () Bool)

(assert (=> b!6562334 (=> (not res!2692913) (not e!3972533))))

(assert (=> b!6562334 (= res!2692913 (validRegex!8175 lt!2406358))))

(declare-fun b!6562335 () Bool)

(assert (=> b!6562335 (= e!3972533 (validRegex!8175 (regTwo!33390 r!7292)))))

(assert (= (and d!2058815 res!2692912) b!6562334))

(assert (= (and b!6562334 res!2692913) b!6562335))

(declare-fun m!7344378 () Bool)

(assert (=> d!2058815 m!7344378))

(declare-fun m!7344380 () Bool)

(assert (=> d!2058815 m!7344380))

(declare-fun m!7344382 () Bool)

(assert (=> d!2058815 m!7344382))

(assert (=> d!2058815 m!7343212))

(declare-fun m!7344384 () Bool)

(assert (=> b!6562334 m!7344384))

(declare-fun m!7344386 () Bool)

(assert (=> b!6562335 m!7344386))

(assert (=> b!6561287 d!2058815))

(declare-fun bs!1674958 () Bool)

(declare-fun d!2058817 () Bool)

(assert (= bs!1674958 (and d!2058817 b!6561898)))

(declare-fun lambda!365141 () Int)

(assert (=> bs!1674958 (not (= lambda!365141 lambda!365111))))

(declare-fun bs!1674959 () Bool)

(assert (= bs!1674959 (and d!2058817 b!6561287)))

(assert (=> bs!1674959 (not (= lambda!365141 lambda!365047))))

(declare-fun bs!1674960 () Bool)

(assert (= bs!1674960 (and d!2058817 d!2058767)))

(assert (=> bs!1674960 (not (= lambda!365141 lambda!365131))))

(declare-fun bs!1674961 () Bool)

(assert (= bs!1674961 (and d!2058817 b!6561249)))

(assert (=> bs!1674961 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365141 lambda!365048))))

(declare-fun bs!1674962 () Bool)

(assert (= bs!1674962 (and d!2058817 d!2058617)))

(assert (=> bs!1674962 (not (= lambda!365141 lambda!365100))))

(declare-fun bs!1674963 () Bool)

(assert (= bs!1674963 (and d!2058817 b!6561283)))

(assert (=> bs!1674963 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365141 lambda!365041))))

(assert (=> bs!1674963 (not (= lambda!365141 lambda!365042))))

(assert (=> bs!1674960 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365141 lambda!365130))))

(declare-fun bs!1674964 () Bool)

(assert (= bs!1674964 (and d!2058817 b!6562199)))

(assert (=> bs!1674964 (not (= lambda!365141 lambda!365132))))

(declare-fun bs!1674965 () Bool)

(assert (= bs!1674965 (and d!2058817 d!2058793)))

(assert (=> bs!1674965 (not (= lambda!365141 lambda!365135))))

(declare-fun bs!1674966 () Bool)

(assert (= bs!1674966 (and d!2058817 b!6561902)))

(assert (=> bs!1674966 (not (= lambda!365141 lambda!365109))))

(assert (=> bs!1674959 (= lambda!365141 lambda!365046)))

(assert (=> bs!1674961 (not (= lambda!365141 lambda!365049))))

(declare-fun bs!1674967 () Bool)

(assert (= bs!1674967 (and d!2058817 d!2058681)))

(assert (=> bs!1674967 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365141 lambda!365116))))

(declare-fun bs!1674968 () Bool)

(assert (= bs!1674968 (and d!2058817 b!6562323)))

(assert (=> bs!1674968 (not (= lambda!365141 lambda!365140))))

(declare-fun bs!1674969 () Bool)

(assert (= bs!1674969 (and d!2058817 d!2058765)))

(assert (=> bs!1674969 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365141 lambda!365129))))

(declare-fun bs!1674970 () Bool)

(assert (= bs!1674970 (and d!2058817 b!6562327)))

(assert (=> bs!1674970 (not (= lambda!365141 lambda!365139))))

(declare-fun bs!1674971 () Bool)

(assert (= bs!1674971 (and d!2058817 b!6562195)))

(assert (=> bs!1674971 (not (= lambda!365141 lambda!365133))))

(assert (=> bs!1674965 (= lambda!365141 lambda!365134)))

(assert (=> bs!1674962 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365141 lambda!365097))))

(assert (=> d!2058817 true))

(assert (=> d!2058817 true))

(assert (=> d!2058817 true))

(assert (=> d!2058817 (= (isDefined!13033 (findConcatSeparation!2744 lt!2406360 (regTwo!33390 r!7292) Nil!65492 s!2326 s!2326)) (Exists!3509 lambda!365141))))

(declare-fun lt!2406601 () Unit!159091)

(assert (=> d!2058817 (= lt!2406601 (choose!48966 lt!2406360 (regTwo!33390 r!7292) s!2326))))

(assert (=> d!2058817 (validRegex!8175 lt!2406360)))

(assert (=> d!2058817 (= (lemmaFindConcatSeparationEquivalentToExists!2508 lt!2406360 (regTwo!33390 r!7292) s!2326) lt!2406601)))

(declare-fun bs!1674972 () Bool)

(assert (= bs!1674972 d!2058817))

(declare-fun m!7344388 () Bool)

(assert (=> bs!1674972 m!7344388))

(assert (=> bs!1674972 m!7343302))

(declare-fun m!7344390 () Bool)

(assert (=> bs!1674972 m!7344390))

(assert (=> bs!1674972 m!7343302))

(declare-fun m!7344392 () Bool)

(assert (=> bs!1674972 m!7344392))

(assert (=> bs!1674972 m!7343856))

(assert (=> b!6561287 d!2058817))

(declare-fun d!2058819 () Bool)

(declare-fun c!1205906 () Bool)

(assert (=> d!2058819 (= c!1205906 (isEmpty!37737 lt!2406375))))

(declare-fun e!3972534 () Bool)

(assert (=> d!2058819 (= (matchZipper!2451 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (++!14581 lt!2406344 lt!2406366)) true) lt!2406375) e!3972534)))

(declare-fun b!6562336 () Bool)

(assert (=> b!6562336 (= e!3972534 (nullableZipper!2184 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (++!14581 lt!2406344 lt!2406366)) true)))))

(declare-fun b!6562337 () Bool)

(assert (=> b!6562337 (= e!3972534 (matchZipper!2451 (derivationStepZipper!2405 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (++!14581 lt!2406344 lt!2406366)) true) (head!13329 lt!2406375)) (tail!12414 lt!2406375)))))

(assert (= (and d!2058819 c!1205906) b!6562336))

(assert (= (and d!2058819 (not c!1205906)) b!6562337))

(assert (=> d!2058819 m!7344350))

(assert (=> b!6562336 m!7343296))

(declare-fun m!7344394 () Bool)

(assert (=> b!6562336 m!7344394))

(assert (=> b!6562337 m!7344358))

(assert (=> b!6562337 m!7343296))

(assert (=> b!6562337 m!7344358))

(declare-fun m!7344396 () Bool)

(assert (=> b!6562337 m!7344396))

(assert (=> b!6562337 m!7344354))

(assert (=> b!6562337 m!7344396))

(assert (=> b!6562337 m!7344354))

(declare-fun m!7344398 () Bool)

(assert (=> b!6562337 m!7344398))

(assert (=> b!6561287 d!2058819))

(declare-fun b!6562347 () Bool)

(declare-fun e!3972540 () List!65617)

(assert (=> b!6562347 (= e!3972540 (Cons!65493 (h!71941 lt!2406344) (++!14581 (t!379259 lt!2406344) lt!2406366)))))

(declare-fun d!2058821 () Bool)

(declare-fun e!3972539 () Bool)

(assert (=> d!2058821 e!3972539))

(declare-fun res!2692918 () Bool)

(assert (=> d!2058821 (=> (not res!2692918) (not e!3972539))))

(declare-fun lt!2406604 () List!65617)

(declare-fun content!12599 (List!65617) (InoxSet Regex!16439))

(assert (=> d!2058821 (= res!2692918 (= (content!12599 lt!2406604) ((_ map or) (content!12599 lt!2406344) (content!12599 lt!2406366))))))

(assert (=> d!2058821 (= lt!2406604 e!3972540)))

(declare-fun c!1205909 () Bool)

(assert (=> d!2058821 (= c!1205909 ((_ is Nil!65493) lt!2406344))))

(assert (=> d!2058821 (= (++!14581 lt!2406344 lt!2406366) lt!2406604)))

(declare-fun b!6562349 () Bool)

(assert (=> b!6562349 (= e!3972539 (or (not (= lt!2406366 Nil!65493)) (= lt!2406604 lt!2406344)))))

(declare-fun b!6562346 () Bool)

(assert (=> b!6562346 (= e!3972540 lt!2406366)))

(declare-fun b!6562348 () Bool)

(declare-fun res!2692919 () Bool)

(assert (=> b!6562348 (=> (not res!2692919) (not e!3972539))))

(declare-fun size!40528 (List!65617) Int)

(assert (=> b!6562348 (= res!2692919 (= (size!40528 lt!2406604) (+ (size!40528 lt!2406344) (size!40528 lt!2406366))))))

(assert (= (and d!2058821 c!1205909) b!6562346))

(assert (= (and d!2058821 (not c!1205909)) b!6562347))

(assert (= (and d!2058821 res!2692918) b!6562348))

(assert (= (and b!6562348 res!2692919) b!6562349))

(declare-fun m!7344400 () Bool)

(assert (=> b!6562347 m!7344400))

(declare-fun m!7344402 () Bool)

(assert (=> d!2058821 m!7344402))

(declare-fun m!7344404 () Bool)

(assert (=> d!2058821 m!7344404))

(declare-fun m!7344406 () Bool)

(assert (=> d!2058821 m!7344406))

(declare-fun m!7344408 () Bool)

(assert (=> b!6562348 m!7344408))

(declare-fun m!7344410 () Bool)

(assert (=> b!6562348 m!7344410))

(declare-fun m!7344412 () Bool)

(assert (=> b!6562348 m!7344412))

(assert (=> b!6561287 d!2058821))

(declare-fun d!2058823 () Bool)

(assert (=> d!2058823 (= (Exists!3509 lambda!365046) (choose!48962 lambda!365046))))

(declare-fun bs!1674973 () Bool)

(assert (= bs!1674973 d!2058823))

(declare-fun m!7344414 () Bool)

(assert (=> bs!1674973 m!7344414))

(assert (=> b!6561287 d!2058823))

(declare-fun b!6562350 () Bool)

(declare-fun e!3972543 () Bool)

(declare-fun e!3972546 () Bool)

(assert (=> b!6562350 (= e!3972543 e!3972546)))

(declare-fun res!2692926 () Bool)

(assert (=> b!6562350 (=> (not res!2692926) (not e!3972546))))

(declare-fun lt!2406605 () Bool)

(assert (=> b!6562350 (= res!2692926 (not lt!2406605))))

(declare-fun b!6562351 () Bool)

(declare-fun res!2692923 () Bool)

(declare-fun e!3972545 () Bool)

(assert (=> b!6562351 (=> res!2692923 e!3972545)))

(assert (=> b!6562351 (= res!2692923 (not (isEmpty!37737 (tail!12414 (_1!36721 lt!2406397)))))))

(declare-fun b!6562352 () Bool)

(declare-fun e!3972541 () Bool)

(declare-fun call!570768 () Bool)

(assert (=> b!6562352 (= e!3972541 (= lt!2406605 call!570768))))

(declare-fun b!6562354 () Bool)

(declare-fun res!2692922 () Bool)

(declare-fun e!3972544 () Bool)

(assert (=> b!6562354 (=> (not res!2692922) (not e!3972544))))

(assert (=> b!6562354 (= res!2692922 (isEmpty!37737 (tail!12414 (_1!36721 lt!2406397))))))

(declare-fun b!6562355 () Bool)

(assert (=> b!6562355 (= e!3972544 (= (head!13329 (_1!36721 lt!2406397)) (c!1205620 lt!2406360)))))

(declare-fun b!6562356 () Bool)

(declare-fun res!2692924 () Bool)

(assert (=> b!6562356 (=> res!2692924 e!3972543)))

(assert (=> b!6562356 (= res!2692924 e!3972544)))

(declare-fun res!2692920 () Bool)

(assert (=> b!6562356 (=> (not res!2692920) (not e!3972544))))

(assert (=> b!6562356 (= res!2692920 lt!2406605)))

(declare-fun b!6562357 () Bool)

(declare-fun e!3972547 () Bool)

(assert (=> b!6562357 (= e!3972547 (not lt!2406605))))

(declare-fun b!6562358 () Bool)

(declare-fun res!2692927 () Bool)

(assert (=> b!6562358 (=> (not res!2692927) (not e!3972544))))

(assert (=> b!6562358 (= res!2692927 (not call!570768))))

(declare-fun b!6562359 () Bool)

(assert (=> b!6562359 (= e!3972546 e!3972545)))

(declare-fun res!2692921 () Bool)

(assert (=> b!6562359 (=> res!2692921 e!3972545)))

(assert (=> b!6562359 (= res!2692921 call!570768)))

(declare-fun b!6562360 () Bool)

(declare-fun e!3972542 () Bool)

(assert (=> b!6562360 (= e!3972542 (nullable!6432 lt!2406360))))

(declare-fun bm!570763 () Bool)

(assert (=> bm!570763 (= call!570768 (isEmpty!37737 (_1!36721 lt!2406397)))))

(declare-fun b!6562361 () Bool)

(assert (=> b!6562361 (= e!3972541 e!3972547)))

(declare-fun c!1205910 () Bool)

(assert (=> b!6562361 (= c!1205910 ((_ is EmptyLang!16439) lt!2406360))))

(declare-fun b!6562362 () Bool)

(declare-fun res!2692925 () Bool)

(assert (=> b!6562362 (=> res!2692925 e!3972543)))

(assert (=> b!6562362 (= res!2692925 (not ((_ is ElementMatch!16439) lt!2406360)))))

(assert (=> b!6562362 (= e!3972547 e!3972543)))

(declare-fun b!6562363 () Bool)

(assert (=> b!6562363 (= e!3972542 (matchR!8622 (derivativeStep!5123 lt!2406360 (head!13329 (_1!36721 lt!2406397))) (tail!12414 (_1!36721 lt!2406397))))))

(declare-fun d!2058825 () Bool)

(assert (=> d!2058825 e!3972541))

(declare-fun c!1205912 () Bool)

(assert (=> d!2058825 (= c!1205912 ((_ is EmptyExpr!16439) lt!2406360))))

(assert (=> d!2058825 (= lt!2406605 e!3972542)))

(declare-fun c!1205911 () Bool)

(assert (=> d!2058825 (= c!1205911 (isEmpty!37737 (_1!36721 lt!2406397)))))

(assert (=> d!2058825 (validRegex!8175 lt!2406360)))

(assert (=> d!2058825 (= (matchR!8622 lt!2406360 (_1!36721 lt!2406397)) lt!2406605)))

(declare-fun b!6562353 () Bool)

(assert (=> b!6562353 (= e!3972545 (not (= (head!13329 (_1!36721 lt!2406397)) (c!1205620 lt!2406360))))))

(assert (= (and d!2058825 c!1205911) b!6562360))

(assert (= (and d!2058825 (not c!1205911)) b!6562363))

(assert (= (and d!2058825 c!1205912) b!6562352))

(assert (= (and d!2058825 (not c!1205912)) b!6562361))

(assert (= (and b!6562361 c!1205910) b!6562357))

(assert (= (and b!6562361 (not c!1205910)) b!6562362))

(assert (= (and b!6562362 (not res!2692925)) b!6562356))

(assert (= (and b!6562356 res!2692920) b!6562358))

(assert (= (and b!6562358 res!2692927) b!6562354))

(assert (= (and b!6562354 res!2692922) b!6562355))

(assert (= (and b!6562356 (not res!2692924)) b!6562350))

(assert (= (and b!6562350 res!2692926) b!6562359))

(assert (= (and b!6562359 (not res!2692921)) b!6562351))

(assert (= (and b!6562351 (not res!2692923)) b!6562353))

(assert (= (or b!6562352 b!6562358 b!6562359) bm!570763))

(assert (=> bm!570763 m!7343974))

(assert (=> d!2058825 m!7343974))

(assert (=> d!2058825 m!7343856))

(declare-fun m!7344416 () Bool)

(assert (=> b!6562354 m!7344416))

(assert (=> b!6562354 m!7344416))

(declare-fun m!7344418 () Bool)

(assert (=> b!6562354 m!7344418))

(declare-fun m!7344420 () Bool)

(assert (=> b!6562355 m!7344420))

(assert (=> b!6562353 m!7344420))

(assert (=> b!6562351 m!7344416))

(assert (=> b!6562351 m!7344416))

(assert (=> b!6562351 m!7344418))

(declare-fun m!7344422 () Bool)

(assert (=> b!6562360 m!7344422))

(assert (=> b!6562363 m!7344420))

(assert (=> b!6562363 m!7344420))

(declare-fun m!7344424 () Bool)

(assert (=> b!6562363 m!7344424))

(assert (=> b!6562363 m!7344416))

(assert (=> b!6562363 m!7344424))

(assert (=> b!6562363 m!7344416))

(declare-fun m!7344426 () Bool)

(assert (=> b!6562363 m!7344426))

(assert (=> b!6561287 d!2058825))

(declare-fun d!2058827 () Bool)

(declare-fun e!3972550 () Bool)

(assert (=> d!2058827 e!3972550))

(declare-fun res!2692930 () Bool)

(assert (=> d!2058827 (=> (not res!2692930) (not e!3972550))))

(declare-fun lt!2406608 () List!65618)

(declare-fun noDuplicate!2244 (List!65618) Bool)

(assert (=> d!2058827 (= res!2692930 (noDuplicate!2244 lt!2406608))))

(declare-fun choose!48980 ((InoxSet Context!11646)) List!65618)

(assert (=> d!2058827 (= lt!2406608 (choose!48980 z!1189))))

(assert (=> d!2058827 (= (toList!10223 z!1189) lt!2406608)))

(declare-fun b!6562366 () Bool)

(declare-fun content!12600 (List!65618) (InoxSet Context!11646))

(assert (=> b!6562366 (= e!3972550 (= (content!12600 lt!2406608) z!1189))))

(assert (= (and d!2058827 res!2692930) b!6562366))

(declare-fun m!7344428 () Bool)

(assert (=> d!2058827 m!7344428))

(declare-fun m!7344430 () Bool)

(assert (=> d!2058827 m!7344430))

(declare-fun m!7344432 () Bool)

(assert (=> b!6562366 m!7344432))

(assert (=> b!6561286 d!2058827))

(declare-fun d!2058829 () Bool)

(assert (=> d!2058829 (= (flatMap!1944 lt!2406385 lambda!365043) (choose!48971 lt!2406385 lambda!365043))))

(declare-fun bs!1674974 () Bool)

(assert (= bs!1674974 d!2058829))

(declare-fun m!7344434 () Bool)

(assert (=> bs!1674974 m!7344434))

(assert (=> b!6561266 d!2058829))

(declare-fun b!6562367 () Bool)

(declare-fun e!3972552 () Bool)

(assert (=> b!6562367 (= e!3972552 (nullable!6432 (h!71941 (exprs!6323 lt!2406382))))))

(declare-fun bm!570764 () Bool)

(declare-fun call!570769 () (InoxSet Context!11646))

(assert (=> bm!570764 (= call!570769 (derivationStepZipperDown!1687 (h!71941 (exprs!6323 lt!2406382)) (Context!11647 (t!379259 (exprs!6323 lt!2406382))) (h!71940 s!2326)))))

(declare-fun b!6562368 () Bool)

(declare-fun e!3972553 () (InoxSet Context!11646))

(assert (=> b!6562368 (= e!3972553 ((_ map or) call!570769 (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 lt!2406382))) (h!71940 s!2326))))))

(declare-fun d!2058831 () Bool)

(declare-fun c!1205914 () Bool)

(assert (=> d!2058831 (= c!1205914 e!3972552)))

(declare-fun res!2692931 () Bool)

(assert (=> d!2058831 (=> (not res!2692931) (not e!3972552))))

(assert (=> d!2058831 (= res!2692931 ((_ is Cons!65493) (exprs!6323 lt!2406382)))))

(assert (=> d!2058831 (= (derivationStepZipperUp!1613 lt!2406382 (h!71940 s!2326)) e!3972553)))

(declare-fun b!6562369 () Bool)

(declare-fun e!3972551 () (InoxSet Context!11646))

(assert (=> b!6562369 (= e!3972553 e!3972551)))

(declare-fun c!1205913 () Bool)

(assert (=> b!6562369 (= c!1205913 ((_ is Cons!65493) (exprs!6323 lt!2406382)))))

(declare-fun b!6562370 () Bool)

(assert (=> b!6562370 (= e!3972551 call!570769)))

(declare-fun b!6562371 () Bool)

(assert (=> b!6562371 (= e!3972551 ((as const (Array Context!11646 Bool)) false))))

(assert (= (and d!2058831 res!2692931) b!6562367))

(assert (= (and d!2058831 c!1205914) b!6562368))

(assert (= (and d!2058831 (not c!1205914)) b!6562369))

(assert (= (and b!6562369 c!1205913) b!6562370))

(assert (= (and b!6562369 (not c!1205913)) b!6562371))

(assert (= (or b!6562368 b!6562370) bm!570764))

(declare-fun m!7344436 () Bool)

(assert (=> b!6562367 m!7344436))

(declare-fun m!7344438 () Bool)

(assert (=> bm!570764 m!7344438))

(declare-fun m!7344440 () Bool)

(assert (=> b!6562368 m!7344440))

(assert (=> b!6561266 d!2058831))

(declare-fun d!2058833 () Bool)

(assert (=> d!2058833 (= (flatMap!1944 lt!2406385 lambda!365043) (dynLambda!26049 lambda!365043 lt!2406382))))

(declare-fun lt!2406609 () Unit!159091)

(assert (=> d!2058833 (= lt!2406609 (choose!48969 lt!2406385 lt!2406382 lambda!365043))))

(assert (=> d!2058833 (= lt!2406385 (store ((as const (Array Context!11646 Bool)) false) lt!2406382 true))))

(assert (=> d!2058833 (= (lemmaFlatMapOnSingletonSet!1470 lt!2406385 lt!2406382 lambda!365043) lt!2406609)))

(declare-fun b_lambda!248225 () Bool)

(assert (=> (not b_lambda!248225) (not d!2058833)))

(declare-fun bs!1674975 () Bool)

(assert (= bs!1674975 d!2058833))

(assert (=> bs!1674975 m!7343282))

(declare-fun m!7344442 () Bool)

(assert (=> bs!1674975 m!7344442))

(declare-fun m!7344444 () Bool)

(assert (=> bs!1674975 m!7344444))

(assert (=> bs!1674975 m!7343276))

(assert (=> b!6561266 d!2058833))

(declare-fun bs!1674976 () Bool)

(declare-fun d!2058835 () Bool)

(assert (= bs!1674976 (and d!2058835 b!6561279)))

(declare-fun lambda!365144 () Int)

(assert (=> bs!1674976 (= lambda!365144 lambda!365043)))

(assert (=> d!2058835 true))

(assert (=> d!2058835 (= (derivationStepZipper!2405 lt!2406385 (h!71940 s!2326)) (flatMap!1944 lt!2406385 lambda!365144))))

(declare-fun bs!1674977 () Bool)

(assert (= bs!1674977 d!2058835))

(declare-fun m!7344446 () Bool)

(assert (=> bs!1674977 m!7344446))

(assert (=> b!6561266 d!2058835))

(assert (=> b!6561265 d!2058821))

(declare-fun d!2058837 () Bool)

(declare-fun dynLambda!26051 (Int Context!11646) Context!11646)

(assert (=> d!2058837 (= (map!14967 lt!2406365 lambda!365044) (store ((as const (Array Context!11646 Bool)) false) (dynLambda!26051 lambda!365044 lt!2406347) true))))

(declare-fun lt!2406612 () Unit!159091)

(declare-fun choose!48981 ((InoxSet Context!11646) Context!11646 Int) Unit!159091)

(assert (=> d!2058837 (= lt!2406612 (choose!48981 lt!2406365 lt!2406347 lambda!365044))))

(assert (=> d!2058837 (= lt!2406365 (store ((as const (Array Context!11646 Bool)) false) lt!2406347 true))))

(assert (=> d!2058837 (= (lemmaMapOnSingletonSet!222 lt!2406365 lt!2406347 lambda!365044) lt!2406612)))

(declare-fun b_lambda!248227 () Bool)

(assert (=> (not b_lambda!248227) (not d!2058837)))

(declare-fun bs!1674978 () Bool)

(assert (= bs!1674978 d!2058837))

(assert (=> bs!1674978 m!7343360))

(declare-fun m!7344448 () Bool)

(assert (=> bs!1674978 m!7344448))

(declare-fun m!7344450 () Bool)

(assert (=> bs!1674978 m!7344450))

(assert (=> bs!1674978 m!7344448))

(declare-fun m!7344452 () Bool)

(assert (=> bs!1674978 m!7344452))

(assert (=> bs!1674978 m!7343290))

(assert (=> b!6561265 d!2058837))

(assert (=> b!6561265 d!2058783))

(declare-fun bs!1674979 () Bool)

(declare-fun d!2058839 () Bool)

(assert (= bs!1674979 (and d!2058839 b!6561265)))

(declare-fun lambda!365149 () Int)

(assert (=> bs!1674979 (= (= (exprs!6323 lt!2406352) lt!2406366) (= lambda!365149 lambda!365044))))

(assert (=> d!2058839 true))

(assert (=> d!2058839 (= (appendTo!200 lt!2406365 lt!2406352) (map!14967 lt!2406365 lambda!365149))))

(declare-fun bs!1674980 () Bool)

(assert (= bs!1674980 d!2058839))

(declare-fun m!7344454 () Bool)

(assert (=> bs!1674980 m!7344454))

(assert (=> b!6561265 d!2058839))

(declare-fun d!2058841 () Bool)

(declare-fun choose!48982 ((InoxSet Context!11646) Int) (InoxSet Context!11646))

(assert (=> d!2058841 (= (map!14967 lt!2406365 lambda!365044) (choose!48982 lt!2406365 lambda!365044))))

(declare-fun bs!1674981 () Bool)

(assert (= bs!1674981 d!2058841))

(declare-fun m!7344456 () Bool)

(assert (=> bs!1674981 m!7344456))

(assert (=> b!6561265 d!2058841))

(declare-fun d!2058843 () Bool)

(assert (=> d!2058843 (= (isEmpty!37733 (t!379259 (exprs!6323 (h!71942 zl!343)))) ((_ is Nil!65493) (t!379259 (exprs!6323 (h!71942 zl!343)))))))

(assert (=> b!6561259 d!2058843))

(declare-fun d!2058845 () Bool)

(assert (=> d!2058845 (= (isEmpty!37734 (t!379260 zl!343)) ((_ is Nil!65494) (t!379260 zl!343)))))

(assert (=> b!6561280 d!2058845))

(declare-fun bm!570765 () Bool)

(declare-fun call!570771 () List!65617)

(declare-fun call!570775 () List!65617)

(assert (=> bm!570765 (= call!570771 call!570775)))

(declare-fun b!6562376 () Bool)

(declare-fun e!3972556 () (InoxSet Context!11646))

(assert (=> b!6562376 (= e!3972556 (store ((as const (Array Context!11646 Bool)) false) lt!2406386 true))))

(declare-fun b!6562377 () Bool)

(declare-fun e!3972559 () (InoxSet Context!11646))

(declare-fun e!3972558 () (InoxSet Context!11646))

(assert (=> b!6562377 (= e!3972559 e!3972558)))

(declare-fun c!1205920 () Bool)

(assert (=> b!6562377 (= c!1205920 ((_ is Concat!25284) (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun b!6562378 () Bool)

(declare-fun e!3972557 () (InoxSet Context!11646))

(declare-fun call!570774 () (InoxSet Context!11646))

(assert (=> b!6562378 (= e!3972557 call!570774)))

(declare-fun b!6562379 () Bool)

(declare-fun call!570773 () (InoxSet Context!11646))

(declare-fun call!570770 () (InoxSet Context!11646))

(assert (=> b!6562379 (= e!3972559 ((_ map or) call!570773 call!570770))))

(declare-fun c!1205918 () Bool)

(declare-fun bm!570766 () Bool)

(assert (=> bm!570766 (= call!570773 (derivationStepZipperDown!1687 (ite c!1205918 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343))))) (ite c!1205918 lt!2406386 (Context!11647 call!570775)) (h!71940 s!2326)))))

(declare-fun b!6562380 () Bool)

(assert (=> b!6562380 (= e!3972558 call!570774)))

(declare-fun bm!570767 () Bool)

(declare-fun call!570772 () (InoxSet Context!11646))

(declare-fun c!1205922 () Bool)

(assert (=> bm!570767 (= call!570772 (derivationStepZipperDown!1687 (ite c!1205918 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205922 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205920 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343))))))) (ite (or c!1205918 c!1205922) lt!2406386 (Context!11647 call!570771)) (h!71940 s!2326)))))

(declare-fun b!6562381 () Bool)

(declare-fun e!3972554 () Bool)

(assert (=> b!6562381 (= e!3972554 (nullable!6432 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343))))))))

(declare-fun bm!570768 () Bool)

(assert (=> bm!570768 (= call!570774 call!570770)))

(declare-fun bm!570769 () Bool)

(assert (=> bm!570769 (= call!570770 call!570772)))

(declare-fun b!6562382 () Bool)

(declare-fun c!1205921 () Bool)

(assert (=> b!6562382 (= c!1205921 ((_ is Star!16439) (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(assert (=> b!6562382 (= e!3972558 e!3972557)))

(declare-fun b!6562383 () Bool)

(assert (=> b!6562383 (= e!3972557 ((as const (Array Context!11646 Bool)) false))))

(declare-fun b!6562384 () Bool)

(declare-fun e!3972555 () (InoxSet Context!11646))

(assert (=> b!6562384 (= e!3972556 e!3972555)))

(assert (=> b!6562384 (= c!1205918 ((_ is Union!16439) (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun bm!570770 () Bool)

(assert (=> bm!570770 (= call!570775 ($colon$colon!2280 (exprs!6323 lt!2406386) (ite (or c!1205922 c!1205920) (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (h!71941 (exprs!6323 (h!71942 zl!343))))))))

(declare-fun b!6562385 () Bool)

(assert (=> b!6562385 (= e!3972555 ((_ map or) call!570773 call!570772))))

(declare-fun d!2058847 () Bool)

(declare-fun c!1205919 () Bool)

(assert (=> d!2058847 (= c!1205919 (and ((_ is ElementMatch!16439) (h!71941 (exprs!6323 (h!71942 zl!343)))) (= (c!1205620 (h!71941 (exprs!6323 (h!71942 zl!343)))) (h!71940 s!2326))))))

(assert (=> d!2058847 (= (derivationStepZipperDown!1687 (h!71941 (exprs!6323 (h!71942 zl!343))) lt!2406386 (h!71940 s!2326)) e!3972556)))

(declare-fun b!6562386 () Bool)

(assert (=> b!6562386 (= c!1205922 e!3972554)))

(declare-fun res!2692932 () Bool)

(assert (=> b!6562386 (=> (not res!2692932) (not e!3972554))))

(assert (=> b!6562386 (= res!2692932 ((_ is Concat!25284) (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(assert (=> b!6562386 (= e!3972555 e!3972559)))

(assert (= (and d!2058847 c!1205919) b!6562376))

(assert (= (and d!2058847 (not c!1205919)) b!6562384))

(assert (= (and b!6562384 c!1205918) b!6562385))

(assert (= (and b!6562384 (not c!1205918)) b!6562386))

(assert (= (and b!6562386 res!2692932) b!6562381))

(assert (= (and b!6562386 c!1205922) b!6562379))

(assert (= (and b!6562386 (not c!1205922)) b!6562377))

(assert (= (and b!6562377 c!1205920) b!6562380))

(assert (= (and b!6562377 (not c!1205920)) b!6562382))

(assert (= (and b!6562382 c!1205921) b!6562378))

(assert (= (and b!6562382 (not c!1205921)) b!6562383))

(assert (= (or b!6562380 b!6562378) bm!570765))

(assert (= (or b!6562380 b!6562378) bm!570768))

(assert (= (or b!6562379 bm!570765) bm!570770))

(assert (= (or b!6562379 bm!570768) bm!570769))

(assert (= (or b!6562385 bm!570769) bm!570767))

(assert (= (or b!6562385 b!6562379) bm!570766))

(declare-fun m!7344458 () Bool)

(assert (=> b!6562381 m!7344458))

(declare-fun m!7344460 () Bool)

(assert (=> b!6562376 m!7344460))

(declare-fun m!7344462 () Bool)

(assert (=> bm!570770 m!7344462))

(declare-fun m!7344464 () Bool)

(assert (=> bm!570766 m!7344464))

(declare-fun m!7344466 () Bool)

(assert (=> bm!570767 m!7344466))

(assert (=> b!6561279 d!2058847))

(declare-fun d!2058849 () Bool)

(assert (=> d!2058849 (= (flatMap!1944 z!1189 lambda!365043) (dynLambda!26049 lambda!365043 (h!71942 zl!343)))))

(declare-fun lt!2406615 () Unit!159091)

(assert (=> d!2058849 (= lt!2406615 (choose!48969 z!1189 (h!71942 zl!343) lambda!365043))))

(assert (=> d!2058849 (= z!1189 (store ((as const (Array Context!11646 Bool)) false) (h!71942 zl!343) true))))

(assert (=> d!2058849 (= (lemmaFlatMapOnSingletonSet!1470 z!1189 (h!71942 zl!343) lambda!365043) lt!2406615)))

(declare-fun b_lambda!248229 () Bool)

(assert (=> (not b_lambda!248229) (not d!2058849)))

(declare-fun bs!1674982 () Bool)

(assert (= bs!1674982 d!2058849))

(assert (=> bs!1674982 m!7343242))

(declare-fun m!7344468 () Bool)

(assert (=> bs!1674982 m!7344468))

(declare-fun m!7344470 () Bool)

(assert (=> bs!1674982 m!7344470))

(declare-fun m!7344472 () Bool)

(assert (=> bs!1674982 m!7344472))

(assert (=> b!6561279 d!2058849))

(declare-fun d!2058851 () Bool)

(assert (=> d!2058851 (= (nullable!6432 (h!71941 (exprs!6323 (h!71942 zl!343)))) (nullableFct!2358 (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun bs!1674983 () Bool)

(assert (= bs!1674983 d!2058851))

(declare-fun m!7344474 () Bool)

(assert (=> bs!1674983 m!7344474))

(assert (=> b!6561279 d!2058851))

(declare-fun b!6562387 () Bool)

(declare-fun e!3972561 () Bool)

(assert (=> b!6562387 (= e!3972561 (nullable!6432 (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))))))

(declare-fun bm!570771 () Bool)

(declare-fun call!570776 () (InoxSet Context!11646))

(assert (=> bm!570771 (= call!570776 (derivationStepZipperDown!1687 (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343))))))) (Context!11647 (t!379259 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))) (h!71940 s!2326)))))

(declare-fun b!6562388 () Bool)

(declare-fun e!3972562 () (InoxSet Context!11646))

(assert (=> b!6562388 (= e!3972562 ((_ map or) call!570776 (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))) (h!71940 s!2326))))))

(declare-fun d!2058853 () Bool)

(declare-fun c!1205924 () Bool)

(assert (=> d!2058853 (= c!1205924 e!3972561)))

(declare-fun res!2692933 () Bool)

(assert (=> d!2058853 (=> (not res!2692933) (not e!3972561))))

(assert (=> d!2058853 (= res!2692933 ((_ is Cons!65493) (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343))))))))))

(assert (=> d!2058853 (= (derivationStepZipperUp!1613 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343))))) (h!71940 s!2326)) e!3972562)))

(declare-fun b!6562389 () Bool)

(declare-fun e!3972560 () (InoxSet Context!11646))

(assert (=> b!6562389 (= e!3972562 e!3972560)))

(declare-fun c!1205923 () Bool)

(assert (=> b!6562389 (= c!1205923 ((_ is Cons!65493) (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343))))))))))

(declare-fun b!6562390 () Bool)

(assert (=> b!6562390 (= e!3972560 call!570776)))

(declare-fun b!6562391 () Bool)

(assert (=> b!6562391 (= e!3972560 ((as const (Array Context!11646 Bool)) false))))

(assert (= (and d!2058853 res!2692933) b!6562387))

(assert (= (and d!2058853 c!1205924) b!6562388))

(assert (= (and d!2058853 (not c!1205924)) b!6562389))

(assert (= (and b!6562389 c!1205923) b!6562390))

(assert (= (and b!6562389 (not c!1205923)) b!6562391))

(assert (= (or b!6562388 b!6562390) bm!570771))

(declare-fun m!7344476 () Bool)

(assert (=> b!6562387 m!7344476))

(declare-fun m!7344478 () Bool)

(assert (=> bm!570771 m!7344478))

(declare-fun m!7344480 () Bool)

(assert (=> b!6562388 m!7344480))

(assert (=> b!6561279 d!2058853))

(declare-fun b!6562392 () Bool)

(declare-fun e!3972564 () Bool)

(assert (=> b!6562392 (= e!3972564 (nullable!6432 (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun bm!570772 () Bool)

(declare-fun call!570777 () (InoxSet Context!11646))

(assert (=> bm!570772 (= call!570777 (derivationStepZipperDown!1687 (h!71941 (exprs!6323 (h!71942 zl!343))) (Context!11647 (t!379259 (exprs!6323 (h!71942 zl!343)))) (h!71940 s!2326)))))

(declare-fun b!6562393 () Bool)

(declare-fun e!3972565 () (InoxSet Context!11646))

(assert (=> b!6562393 (= e!3972565 ((_ map or) call!570777 (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 (h!71942 zl!343)))) (h!71940 s!2326))))))

(declare-fun d!2058855 () Bool)

(declare-fun c!1205926 () Bool)

(assert (=> d!2058855 (= c!1205926 e!3972564)))

(declare-fun res!2692934 () Bool)

(assert (=> d!2058855 (=> (not res!2692934) (not e!3972564))))

(assert (=> d!2058855 (= res!2692934 ((_ is Cons!65493) (exprs!6323 (h!71942 zl!343))))))

(assert (=> d!2058855 (= (derivationStepZipperUp!1613 (h!71942 zl!343) (h!71940 s!2326)) e!3972565)))

(declare-fun b!6562394 () Bool)

(declare-fun e!3972563 () (InoxSet Context!11646))

(assert (=> b!6562394 (= e!3972565 e!3972563)))

(declare-fun c!1205925 () Bool)

(assert (=> b!6562394 (= c!1205925 ((_ is Cons!65493) (exprs!6323 (h!71942 zl!343))))))

(declare-fun b!6562395 () Bool)

(assert (=> b!6562395 (= e!3972563 call!570777)))

(declare-fun b!6562396 () Bool)

(assert (=> b!6562396 (= e!3972563 ((as const (Array Context!11646 Bool)) false))))

(assert (= (and d!2058855 res!2692934) b!6562392))

(assert (= (and d!2058855 c!1205926) b!6562393))

(assert (= (and d!2058855 (not c!1205926)) b!6562394))

(assert (= (and b!6562394 c!1205925) b!6562395))

(assert (= (and b!6562394 (not c!1205925)) b!6562396))

(assert (= (or b!6562393 b!6562395) bm!570772))

(assert (=> b!6562392 m!7343240))

(declare-fun m!7344482 () Bool)

(assert (=> bm!570772 m!7344482))

(declare-fun m!7344484 () Bool)

(assert (=> b!6562393 m!7344484))

(assert (=> b!6561279 d!2058855))

(declare-fun b!6562397 () Bool)

(declare-fun e!3972567 () Bool)

(assert (=> b!6562397 (= e!3972567 (nullable!6432 (h!71941 (exprs!6323 lt!2406386))))))

(declare-fun bm!570773 () Bool)

(declare-fun call!570778 () (InoxSet Context!11646))

(assert (=> bm!570773 (= call!570778 (derivationStepZipperDown!1687 (h!71941 (exprs!6323 lt!2406386)) (Context!11647 (t!379259 (exprs!6323 lt!2406386))) (h!71940 s!2326)))))

(declare-fun b!6562398 () Bool)

(declare-fun e!3972568 () (InoxSet Context!11646))

(assert (=> b!6562398 (= e!3972568 ((_ map or) call!570778 (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 lt!2406386))) (h!71940 s!2326))))))

(declare-fun d!2058857 () Bool)

(declare-fun c!1205928 () Bool)

(assert (=> d!2058857 (= c!1205928 e!3972567)))

(declare-fun res!2692935 () Bool)

(assert (=> d!2058857 (=> (not res!2692935) (not e!3972567))))

(assert (=> d!2058857 (= res!2692935 ((_ is Cons!65493) (exprs!6323 lt!2406386)))))

(assert (=> d!2058857 (= (derivationStepZipperUp!1613 lt!2406386 (h!71940 s!2326)) e!3972568)))

(declare-fun b!6562399 () Bool)

(declare-fun e!3972566 () (InoxSet Context!11646))

(assert (=> b!6562399 (= e!3972568 e!3972566)))

(declare-fun c!1205927 () Bool)

(assert (=> b!6562399 (= c!1205927 ((_ is Cons!65493) (exprs!6323 lt!2406386)))))

(declare-fun b!6562400 () Bool)

(assert (=> b!6562400 (= e!3972566 call!570778)))

(declare-fun b!6562401 () Bool)

(assert (=> b!6562401 (= e!3972566 ((as const (Array Context!11646 Bool)) false))))

(assert (= (and d!2058857 res!2692935) b!6562397))

(assert (= (and d!2058857 c!1205928) b!6562398))

(assert (= (and d!2058857 (not c!1205928)) b!6562399))

(assert (= (and b!6562399 c!1205927) b!6562400))

(assert (= (and b!6562399 (not c!1205927)) b!6562401))

(assert (= (or b!6562398 b!6562400) bm!570773))

(declare-fun m!7344486 () Bool)

(assert (=> b!6562397 m!7344486))

(declare-fun m!7344488 () Bool)

(assert (=> bm!570773 m!7344488))

(declare-fun m!7344490 () Bool)

(assert (=> b!6562398 m!7344490))

(assert (=> b!6561279 d!2058857))

(declare-fun d!2058859 () Bool)

(assert (=> d!2058859 (= (flatMap!1944 z!1189 lambda!365043) (choose!48971 z!1189 lambda!365043))))

(declare-fun bs!1674984 () Bool)

(assert (= bs!1674984 d!2058859))

(declare-fun m!7344492 () Bool)

(assert (=> bs!1674984 m!7344492))

(assert (=> b!6561279 d!2058859))

(assert (=> b!6561262 d!2058779))

(declare-fun d!2058861 () Bool)

(declare-fun c!1205929 () Bool)

(assert (=> d!2058861 (= c!1205929 (isEmpty!37737 (_1!36721 lt!2406377)))))

(declare-fun e!3972569 () Bool)

(assert (=> d!2058861 (= (matchZipper!2451 lt!2406365 (_1!36721 lt!2406377)) e!3972569)))

(declare-fun b!6562402 () Bool)

(assert (=> b!6562402 (= e!3972569 (nullableZipper!2184 lt!2406365))))

(declare-fun b!6562403 () Bool)

(assert (=> b!6562403 (= e!3972569 (matchZipper!2451 (derivationStepZipper!2405 lt!2406365 (head!13329 (_1!36721 lt!2406377))) (tail!12414 (_1!36721 lt!2406377))))))

(assert (= (and d!2058861 c!1205929) b!6562402))

(assert (= (and d!2058861 (not c!1205929)) b!6562403))

(assert (=> d!2058861 m!7344320))

(declare-fun m!7344494 () Bool)

(assert (=> b!6562402 m!7344494))

(assert (=> b!6562403 m!7344326))

(assert (=> b!6562403 m!7344326))

(declare-fun m!7344496 () Bool)

(assert (=> b!6562403 m!7344496))

(assert (=> b!6562403 m!7344322))

(assert (=> b!6562403 m!7344496))

(assert (=> b!6562403 m!7344322))

(declare-fun m!7344498 () Bool)

(assert (=> b!6562403 m!7344498))

(assert (=> b!6561261 d!2058861))

(assert (=> b!6561281 d!2058609))

(declare-fun bs!1674985 () Bool)

(declare-fun b!6562412 () Bool)

(assert (= bs!1674985 (and b!6562412 b!6561898)))

(declare-fun lambda!365150 () Int)

(assert (=> bs!1674985 (not (= lambda!365150 lambda!365111))))

(declare-fun bs!1674986 () Bool)

(assert (= bs!1674986 (and b!6562412 d!2058817)))

(assert (=> bs!1674986 (not (= lambda!365150 lambda!365141))))

(declare-fun bs!1674987 () Bool)

(assert (= bs!1674987 (and b!6562412 b!6561287)))

(assert (=> bs!1674987 (not (= lambda!365150 lambda!365047))))

(declare-fun bs!1674988 () Bool)

(assert (= bs!1674988 (and b!6562412 d!2058767)))

(assert (=> bs!1674988 (not (= lambda!365150 lambda!365131))))

(declare-fun bs!1674989 () Bool)

(assert (= bs!1674989 (and b!6562412 b!6561249)))

(assert (=> bs!1674989 (not (= lambda!365150 lambda!365048))))

(declare-fun bs!1674990 () Bool)

(assert (= bs!1674990 (and b!6562412 d!2058617)))

(assert (=> bs!1674990 (not (= lambda!365150 lambda!365100))))

(declare-fun bs!1674991 () Bool)

(assert (= bs!1674991 (and b!6562412 b!6561283)))

(assert (=> bs!1674991 (not (= lambda!365150 lambda!365041))))

(assert (=> bs!1674991 (not (= lambda!365150 lambda!365042))))

(assert (=> bs!1674988 (not (= lambda!365150 lambda!365130))))

(declare-fun bs!1674992 () Bool)

(assert (= bs!1674992 (and b!6562412 b!6562199)))

(assert (=> bs!1674992 (= (and (= (reg!16768 lt!2406349) (reg!16768 r!7292)) (= lt!2406349 r!7292)) (= lambda!365150 lambda!365132))))

(declare-fun bs!1674993 () Bool)

(assert (= bs!1674993 (and b!6562412 d!2058793)))

(assert (=> bs!1674993 (not (= lambda!365150 lambda!365135))))

(declare-fun bs!1674994 () Bool)

(assert (= bs!1674994 (and b!6562412 b!6561902)))

(assert (=> bs!1674994 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (reg!16768 lt!2406349) (reg!16768 lt!2406360)) (= lt!2406349 lt!2406360)) (= lambda!365150 lambda!365109))))

(assert (=> bs!1674987 (not (= lambda!365150 lambda!365046))))

(assert (=> bs!1674989 (not (= lambda!365150 lambda!365049))))

(declare-fun bs!1674995 () Bool)

(assert (= bs!1674995 (and b!6562412 d!2058681)))

(assert (=> bs!1674995 (not (= lambda!365150 lambda!365116))))

(declare-fun bs!1674996 () Bool)

(assert (= bs!1674996 (and b!6562412 b!6562323)))

(assert (=> bs!1674996 (not (= lambda!365150 lambda!365140))))

(declare-fun bs!1674997 () Bool)

(assert (= bs!1674997 (and b!6562412 d!2058765)))

(assert (=> bs!1674997 (not (= lambda!365150 lambda!365129))))

(declare-fun bs!1674998 () Bool)

(assert (= bs!1674998 (and b!6562412 b!6562327)))

(assert (=> bs!1674998 (= (and (= (reg!16768 lt!2406349) (reg!16768 lt!2406396)) (= lt!2406349 lt!2406396)) (= lambda!365150 lambda!365139))))

(declare-fun bs!1674999 () Bool)

(assert (= bs!1674999 (and b!6562412 b!6562195)))

(assert (=> bs!1674999 (not (= lambda!365150 lambda!365133))))

(assert (=> bs!1674993 (not (= lambda!365150 lambda!365134))))

(assert (=> bs!1674990 (not (= lambda!365150 lambda!365097))))

(assert (=> b!6562412 true))

(assert (=> b!6562412 true))

(declare-fun bs!1675000 () Bool)

(declare-fun b!6562408 () Bool)

(assert (= bs!1675000 (and b!6562408 b!6561898)))

(declare-fun lambda!365151 () Int)

(assert (=> bs!1675000 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 lt!2406349) (regOne!33390 lt!2406360)) (= (regTwo!33390 lt!2406349) (regTwo!33390 lt!2406360))) (= lambda!365151 lambda!365111))))

(declare-fun bs!1675001 () Bool)

(assert (= bs!1675001 (and b!6562408 d!2058817)))

(assert (=> bs!1675001 (not (= lambda!365151 lambda!365141))))

(declare-fun bs!1675002 () Bool)

(assert (= bs!1675002 (and b!6562408 b!6561287)))

(assert (=> bs!1675002 (= (and (= (regOne!33390 lt!2406349) lt!2406360) (= (regTwo!33390 lt!2406349) (regTwo!33390 r!7292))) (= lambda!365151 lambda!365047))))

(declare-fun bs!1675003 () Bool)

(assert (= bs!1675003 (and b!6562408 d!2058767)))

(assert (=> bs!1675003 (= (and (= (regOne!33390 lt!2406349) (regOne!33390 r!7292)) (= (regTwo!33390 lt!2406349) (regTwo!33390 r!7292))) (= lambda!365151 lambda!365131))))

(declare-fun bs!1675004 () Bool)

(assert (= bs!1675004 (and b!6562408 b!6561249)))

(assert (=> bs!1675004 (not (= lambda!365151 lambda!365048))))

(declare-fun bs!1675005 () Bool)

(assert (= bs!1675005 (and b!6562408 d!2058617)))

(assert (=> bs!1675005 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 lt!2406349) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 lt!2406349) lt!2406358)) (= lambda!365151 lambda!365100))))

(declare-fun bs!1675006 () Bool)

(assert (= bs!1675006 (and b!6562408 b!6561283)))

(assert (=> bs!1675006 (not (= lambda!365151 lambda!365041))))

(assert (=> bs!1675006 (= (and (= (regOne!33390 lt!2406349) (regOne!33390 r!7292)) (= (regTwo!33390 lt!2406349) (regTwo!33390 r!7292))) (= lambda!365151 lambda!365042))))

(assert (=> bs!1675003 (not (= lambda!365151 lambda!365130))))

(declare-fun bs!1675007 () Bool)

(assert (= bs!1675007 (and b!6562408 b!6562199)))

(assert (=> bs!1675007 (not (= lambda!365151 lambda!365132))))

(declare-fun bs!1675008 () Bool)

(assert (= bs!1675008 (and b!6562408 d!2058793)))

(assert (=> bs!1675008 (= (and (= (regOne!33390 lt!2406349) lt!2406360) (= (regTwo!33390 lt!2406349) (regTwo!33390 r!7292))) (= lambda!365151 lambda!365135))))

(assert (=> bs!1675002 (not (= lambda!365151 lambda!365046))))

(assert (=> bs!1675004 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 lt!2406349) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 lt!2406349) lt!2406358)) (= lambda!365151 lambda!365049))))

(declare-fun bs!1675009 () Bool)

(assert (= bs!1675009 (and b!6562408 d!2058681)))

(assert (=> bs!1675009 (not (= lambda!365151 lambda!365116))))

(declare-fun bs!1675010 () Bool)

(assert (= bs!1675010 (and b!6562408 b!6562323)))

(assert (=> bs!1675010 (= (and (= (regOne!33390 lt!2406349) (regOne!33390 lt!2406396)) (= (regTwo!33390 lt!2406349) (regTwo!33390 lt!2406396))) (= lambda!365151 lambda!365140))))

(declare-fun bs!1675011 () Bool)

(assert (= bs!1675011 (and b!6562408 d!2058765)))

(assert (=> bs!1675011 (not (= lambda!365151 lambda!365129))))

(declare-fun bs!1675012 () Bool)

(assert (= bs!1675012 (and b!6562408 b!6562327)))

(assert (=> bs!1675012 (not (= lambda!365151 lambda!365139))))

(declare-fun bs!1675013 () Bool)

(assert (= bs!1675013 (and b!6562408 b!6562195)))

(assert (=> bs!1675013 (= (and (= (regOne!33390 lt!2406349) (regOne!33390 r!7292)) (= (regTwo!33390 lt!2406349) (regTwo!33390 r!7292))) (= lambda!365151 lambda!365133))))

(assert (=> bs!1675008 (not (= lambda!365151 lambda!365134))))

(assert (=> bs!1675005 (not (= lambda!365151 lambda!365097))))

(declare-fun bs!1675014 () Bool)

(assert (= bs!1675014 (and b!6562408 b!6561902)))

(assert (=> bs!1675014 (not (= lambda!365151 lambda!365109))))

(declare-fun bs!1675015 () Bool)

(assert (= bs!1675015 (and b!6562408 b!6562412)))

(assert (=> bs!1675015 (not (= lambda!365151 lambda!365150))))

(assert (=> b!6562408 true))

(assert (=> b!6562408 true))

(declare-fun b!6562404 () Bool)

(declare-fun c!1205933 () Bool)

(assert (=> b!6562404 (= c!1205933 ((_ is ElementMatch!16439) lt!2406349))))

(declare-fun e!3972573 () Bool)

(declare-fun e!3972575 () Bool)

(assert (=> b!6562404 (= e!3972573 e!3972575)))

(declare-fun b!6562405 () Bool)

(declare-fun res!2692937 () Bool)

(declare-fun e!3972576 () Bool)

(assert (=> b!6562405 (=> res!2692937 e!3972576)))

(declare-fun call!570780 () Bool)

(assert (=> b!6562405 (= res!2692937 call!570780)))

(declare-fun e!3972572 () Bool)

(assert (=> b!6562405 (= e!3972572 e!3972576)))

(declare-fun b!6562406 () Bool)

(declare-fun e!3972570 () Bool)

(declare-fun e!3972571 () Bool)

(assert (=> b!6562406 (= e!3972570 e!3972571)))

(declare-fun res!2692938 () Bool)

(assert (=> b!6562406 (= res!2692938 (matchRSpec!3540 (regOne!33391 lt!2406349) s!2326))))

(assert (=> b!6562406 (=> res!2692938 e!3972571)))

(declare-fun b!6562407 () Bool)

(declare-fun e!3972574 () Bool)

(assert (=> b!6562407 (= e!3972574 call!570780)))

(declare-fun call!570779 () Bool)

(assert (=> b!6562408 (= e!3972572 call!570779)))

(declare-fun b!6562409 () Bool)

(assert (=> b!6562409 (= e!3972575 (= s!2326 (Cons!65492 (c!1205620 lt!2406349) Nil!65492)))))

(declare-fun bm!570774 () Bool)

(assert (=> bm!570774 (= call!570780 (isEmpty!37737 s!2326))))

(declare-fun b!6562410 () Bool)

(declare-fun c!1205930 () Bool)

(assert (=> b!6562410 (= c!1205930 ((_ is Union!16439) lt!2406349))))

(assert (=> b!6562410 (= e!3972575 e!3972570)))

(declare-fun b!6562411 () Bool)

(assert (=> b!6562411 (= e!3972570 e!3972572)))

(declare-fun c!1205931 () Bool)

(assert (=> b!6562411 (= c!1205931 ((_ is Star!16439) lt!2406349))))

(declare-fun d!2058863 () Bool)

(declare-fun c!1205932 () Bool)

(assert (=> d!2058863 (= c!1205932 ((_ is EmptyExpr!16439) lt!2406349))))

(assert (=> d!2058863 (= (matchRSpec!3540 lt!2406349 s!2326) e!3972574)))

(assert (=> b!6562412 (= e!3972576 call!570779)))

(declare-fun b!6562413 () Bool)

(assert (=> b!6562413 (= e!3972574 e!3972573)))

(declare-fun res!2692936 () Bool)

(assert (=> b!6562413 (= res!2692936 (not ((_ is EmptyLang!16439) lt!2406349)))))

(assert (=> b!6562413 (=> (not res!2692936) (not e!3972573))))

(declare-fun b!6562414 () Bool)

(assert (=> b!6562414 (= e!3972571 (matchRSpec!3540 (regTwo!33391 lt!2406349) s!2326))))

(declare-fun bm!570775 () Bool)

(assert (=> bm!570775 (= call!570779 (Exists!3509 (ite c!1205931 lambda!365150 lambda!365151)))))

(assert (= (and d!2058863 c!1205932) b!6562407))

(assert (= (and d!2058863 (not c!1205932)) b!6562413))

(assert (= (and b!6562413 res!2692936) b!6562404))

(assert (= (and b!6562404 c!1205933) b!6562409))

(assert (= (and b!6562404 (not c!1205933)) b!6562410))

(assert (= (and b!6562410 c!1205930) b!6562406))

(assert (= (and b!6562410 (not c!1205930)) b!6562411))

(assert (= (and b!6562406 (not res!2692938)) b!6562414))

(assert (= (and b!6562411 c!1205931) b!6562405))

(assert (= (and b!6562411 (not c!1205931)) b!6562408))

(assert (= (and b!6562405 (not res!2692937)) b!6562412))

(assert (= (or b!6562412 b!6562408) bm!570775))

(assert (= (or b!6562407 b!6562405) bm!570774))

(declare-fun m!7344500 () Bool)

(assert (=> b!6562406 m!7344500))

(assert (=> bm!570774 m!7343766))

(declare-fun m!7344502 () Bool)

(assert (=> b!6562414 m!7344502))

(declare-fun m!7344504 () Bool)

(assert (=> bm!570775 m!7344504))

(assert (=> b!6561260 d!2058863))

(declare-fun b!6562415 () Bool)

(declare-fun e!3972579 () Bool)

(declare-fun e!3972582 () Bool)

(assert (=> b!6562415 (= e!3972579 e!3972582)))

(declare-fun res!2692945 () Bool)

(assert (=> b!6562415 (=> (not res!2692945) (not e!3972582))))

(declare-fun lt!2406616 () Bool)

(assert (=> b!6562415 (= res!2692945 (not lt!2406616))))

(declare-fun b!6562416 () Bool)

(declare-fun res!2692942 () Bool)

(declare-fun e!3972581 () Bool)

(assert (=> b!6562416 (=> res!2692942 e!3972581)))

(assert (=> b!6562416 (= res!2692942 (not (isEmpty!37737 (tail!12414 s!2326))))))

(declare-fun b!6562417 () Bool)

(declare-fun e!3972577 () Bool)

(declare-fun call!570781 () Bool)

(assert (=> b!6562417 (= e!3972577 (= lt!2406616 call!570781))))

(declare-fun b!6562419 () Bool)

(declare-fun res!2692941 () Bool)

(declare-fun e!3972580 () Bool)

(assert (=> b!6562419 (=> (not res!2692941) (not e!3972580))))

(assert (=> b!6562419 (= res!2692941 (isEmpty!37737 (tail!12414 s!2326)))))

(declare-fun b!6562420 () Bool)

(assert (=> b!6562420 (= e!3972580 (= (head!13329 s!2326) (c!1205620 lt!2406349)))))

(declare-fun b!6562421 () Bool)

(declare-fun res!2692943 () Bool)

(assert (=> b!6562421 (=> res!2692943 e!3972579)))

(assert (=> b!6562421 (= res!2692943 e!3972580)))

(declare-fun res!2692939 () Bool)

(assert (=> b!6562421 (=> (not res!2692939) (not e!3972580))))

(assert (=> b!6562421 (= res!2692939 lt!2406616)))

(declare-fun b!6562422 () Bool)

(declare-fun e!3972583 () Bool)

(assert (=> b!6562422 (= e!3972583 (not lt!2406616))))

(declare-fun b!6562423 () Bool)

(declare-fun res!2692946 () Bool)

(assert (=> b!6562423 (=> (not res!2692946) (not e!3972580))))

(assert (=> b!6562423 (= res!2692946 (not call!570781))))

(declare-fun b!6562424 () Bool)

(assert (=> b!6562424 (= e!3972582 e!3972581)))

(declare-fun res!2692940 () Bool)

(assert (=> b!6562424 (=> res!2692940 e!3972581)))

(assert (=> b!6562424 (= res!2692940 call!570781)))

(declare-fun b!6562425 () Bool)

(declare-fun e!3972578 () Bool)

(assert (=> b!6562425 (= e!3972578 (nullable!6432 lt!2406349))))

(declare-fun bm!570776 () Bool)

(assert (=> bm!570776 (= call!570781 (isEmpty!37737 s!2326))))

(declare-fun b!6562426 () Bool)

(assert (=> b!6562426 (= e!3972577 e!3972583)))

(declare-fun c!1205934 () Bool)

(assert (=> b!6562426 (= c!1205934 ((_ is EmptyLang!16439) lt!2406349))))

(declare-fun b!6562427 () Bool)

(declare-fun res!2692944 () Bool)

(assert (=> b!6562427 (=> res!2692944 e!3972579)))

(assert (=> b!6562427 (= res!2692944 (not ((_ is ElementMatch!16439) lt!2406349)))))

(assert (=> b!6562427 (= e!3972583 e!3972579)))

(declare-fun b!6562428 () Bool)

(assert (=> b!6562428 (= e!3972578 (matchR!8622 (derivativeStep!5123 lt!2406349 (head!13329 s!2326)) (tail!12414 s!2326)))))

(declare-fun d!2058865 () Bool)

(assert (=> d!2058865 e!3972577))

(declare-fun c!1205936 () Bool)

(assert (=> d!2058865 (= c!1205936 ((_ is EmptyExpr!16439) lt!2406349))))

(assert (=> d!2058865 (= lt!2406616 e!3972578)))

(declare-fun c!1205935 () Bool)

(assert (=> d!2058865 (= c!1205935 (isEmpty!37737 s!2326))))

(assert (=> d!2058865 (validRegex!8175 lt!2406349)))

(assert (=> d!2058865 (= (matchR!8622 lt!2406349 s!2326) lt!2406616)))

(declare-fun b!6562418 () Bool)

(assert (=> b!6562418 (= e!3972581 (not (= (head!13329 s!2326) (c!1205620 lt!2406349))))))

(assert (= (and d!2058865 c!1205935) b!6562425))

(assert (= (and d!2058865 (not c!1205935)) b!6562428))

(assert (= (and d!2058865 c!1205936) b!6562417))

(assert (= (and d!2058865 (not c!1205936)) b!6562426))

(assert (= (and b!6562426 c!1205934) b!6562422))

(assert (= (and b!6562426 (not c!1205934)) b!6562427))

(assert (= (and b!6562427 (not res!2692944)) b!6562421))

(assert (= (and b!6562421 res!2692939) b!6562423))

(assert (= (and b!6562423 res!2692946) b!6562419))

(assert (= (and b!6562419 res!2692941) b!6562420))

(assert (= (and b!6562421 (not res!2692943)) b!6562415))

(assert (= (and b!6562415 res!2692945) b!6562424))

(assert (= (and b!6562424 (not res!2692940)) b!6562416))

(assert (= (and b!6562416 (not res!2692942)) b!6562418))

(assert (= (or b!6562417 b!6562423 b!6562424) bm!570776))

(assert (=> bm!570776 m!7343766))

(assert (=> d!2058865 m!7343766))

(assert (=> d!2058865 m!7344352))

(assert (=> b!6562419 m!7343774))

(assert (=> b!6562419 m!7343774))

(assert (=> b!6562419 m!7344250))

(assert (=> b!6562420 m!7343770))

(assert (=> b!6562418 m!7343770))

(assert (=> b!6562416 m!7343774))

(assert (=> b!6562416 m!7343774))

(assert (=> b!6562416 m!7344250))

(assert (=> b!6562425 m!7344360))

(assert (=> b!6562428 m!7343770))

(assert (=> b!6562428 m!7343770))

(declare-fun m!7344506 () Bool)

(assert (=> b!6562428 m!7344506))

(assert (=> b!6562428 m!7343774))

(assert (=> b!6562428 m!7344506))

(assert (=> b!6562428 m!7343774))

(declare-fun m!7344508 () Bool)

(assert (=> b!6562428 m!7344508))

(assert (=> b!6561260 d!2058865))

(declare-fun d!2058867 () Bool)

(assert (=> d!2058867 (= (matchR!8622 lt!2406349 s!2326) (matchRSpec!3540 lt!2406349 s!2326))))

(declare-fun lt!2406617 () Unit!159091)

(assert (=> d!2058867 (= lt!2406617 (choose!48964 lt!2406349 s!2326))))

(assert (=> d!2058867 (validRegex!8175 lt!2406349)))

(assert (=> d!2058867 (= (mainMatchTheorem!3540 lt!2406349 s!2326) lt!2406617)))

(declare-fun bs!1675016 () Bool)

(assert (= bs!1675016 d!2058867))

(assert (=> bs!1675016 m!7343262))

(assert (=> bs!1675016 m!7343260))

(declare-fun m!7344510 () Bool)

(assert (=> bs!1675016 m!7344510))

(assert (=> bs!1675016 m!7344352))

(assert (=> b!6561260 d!2058867))

(declare-fun b!6562439 () Bool)

(declare-fun e!3972586 () Bool)

(assert (=> b!6562439 (= e!3972586 tp_is_empty!42131)))

(declare-fun b!6562441 () Bool)

(declare-fun tp!1812720 () Bool)

(assert (=> b!6562441 (= e!3972586 tp!1812720)))

(assert (=> b!6561254 (= tp!1812643 e!3972586)))

(declare-fun b!6562442 () Bool)

(declare-fun tp!1812716 () Bool)

(declare-fun tp!1812717 () Bool)

(assert (=> b!6562442 (= e!3972586 (and tp!1812716 tp!1812717))))

(declare-fun b!6562440 () Bool)

(declare-fun tp!1812719 () Bool)

(declare-fun tp!1812718 () Bool)

(assert (=> b!6562440 (= e!3972586 (and tp!1812719 tp!1812718))))

(assert (= (and b!6561254 ((_ is ElementMatch!16439) (reg!16768 r!7292))) b!6562439))

(assert (= (and b!6561254 ((_ is Concat!25284) (reg!16768 r!7292))) b!6562440))

(assert (= (and b!6561254 ((_ is Star!16439) (reg!16768 r!7292))) b!6562441))

(assert (= (and b!6561254 ((_ is Union!16439) (reg!16768 r!7292))) b!6562442))

(declare-fun b!6562450 () Bool)

(declare-fun e!3972592 () Bool)

(declare-fun tp!1812725 () Bool)

(assert (=> b!6562450 (= e!3972592 tp!1812725)))

(declare-fun b!6562449 () Bool)

(declare-fun e!3972591 () Bool)

(declare-fun tp!1812726 () Bool)

(assert (=> b!6562449 (= e!3972591 (and (inv!84344 (h!71942 (t!379260 zl!343))) e!3972592 tp!1812726))))

(assert (=> b!6561273 (= tp!1812640 e!3972591)))

(assert (= b!6562449 b!6562450))

(assert (= (and b!6561273 ((_ is Cons!65494) (t!379260 zl!343))) b!6562449))

(declare-fun m!7344512 () Bool)

(assert (=> b!6562449 m!7344512))

(declare-fun b!6562455 () Bool)

(declare-fun e!3972595 () Bool)

(declare-fun tp!1812729 () Bool)

(assert (=> b!6562455 (= e!3972595 (and tp_is_empty!42131 tp!1812729))))

(assert (=> b!6561257 (= tp!1812646 e!3972595)))

(assert (= (and b!6561257 ((_ is Cons!65492) (t!379258 s!2326))) b!6562455))

(declare-fun b!6562456 () Bool)

(declare-fun e!3972596 () Bool)

(assert (=> b!6562456 (= e!3972596 tp_is_empty!42131)))

(declare-fun b!6562458 () Bool)

(declare-fun tp!1812734 () Bool)

(assert (=> b!6562458 (= e!3972596 tp!1812734)))

(assert (=> b!6561267 (= tp!1812644 e!3972596)))

(declare-fun b!6562459 () Bool)

(declare-fun tp!1812730 () Bool)

(declare-fun tp!1812731 () Bool)

(assert (=> b!6562459 (= e!3972596 (and tp!1812730 tp!1812731))))

(declare-fun b!6562457 () Bool)

(declare-fun tp!1812733 () Bool)

(declare-fun tp!1812732 () Bool)

(assert (=> b!6562457 (= e!3972596 (and tp!1812733 tp!1812732))))

(assert (= (and b!6561267 ((_ is ElementMatch!16439) (regOne!33390 r!7292))) b!6562456))

(assert (= (and b!6561267 ((_ is Concat!25284) (regOne!33390 r!7292))) b!6562457))

(assert (= (and b!6561267 ((_ is Star!16439) (regOne!33390 r!7292))) b!6562458))

(assert (= (and b!6561267 ((_ is Union!16439) (regOne!33390 r!7292))) b!6562459))

(declare-fun b!6562460 () Bool)

(declare-fun e!3972597 () Bool)

(assert (=> b!6562460 (= e!3972597 tp_is_empty!42131)))

(declare-fun b!6562462 () Bool)

(declare-fun tp!1812739 () Bool)

(assert (=> b!6562462 (= e!3972597 tp!1812739)))

(assert (=> b!6561267 (= tp!1812638 e!3972597)))

(declare-fun b!6562463 () Bool)

(declare-fun tp!1812735 () Bool)

(declare-fun tp!1812736 () Bool)

(assert (=> b!6562463 (= e!3972597 (and tp!1812735 tp!1812736))))

(declare-fun b!6562461 () Bool)

(declare-fun tp!1812738 () Bool)

(declare-fun tp!1812737 () Bool)

(assert (=> b!6562461 (= e!3972597 (and tp!1812738 tp!1812737))))

(assert (= (and b!6561267 ((_ is ElementMatch!16439) (regTwo!33390 r!7292))) b!6562460))

(assert (= (and b!6561267 ((_ is Concat!25284) (regTwo!33390 r!7292))) b!6562461))

(assert (= (and b!6561267 ((_ is Star!16439) (regTwo!33390 r!7292))) b!6562462))

(assert (= (and b!6561267 ((_ is Union!16439) (regTwo!33390 r!7292))) b!6562463))

(declare-fun condSetEmpty!44796 () Bool)

(assert (=> setNonEmpty!44790 (= condSetEmpty!44796 (= setRest!44790 ((as const (Array Context!11646 Bool)) false)))))

(declare-fun setRes!44796 () Bool)

(assert (=> setNonEmpty!44790 (= tp!1812645 setRes!44796)))

(declare-fun setIsEmpty!44796 () Bool)

(assert (=> setIsEmpty!44796 setRes!44796))

(declare-fun setElem!44796 () Context!11646)

(declare-fun e!3972600 () Bool)

(declare-fun tp!1812745 () Bool)

(declare-fun setNonEmpty!44796 () Bool)

(assert (=> setNonEmpty!44796 (= setRes!44796 (and tp!1812745 (inv!84344 setElem!44796) e!3972600))))

(declare-fun setRest!44796 () (InoxSet Context!11646))

(assert (=> setNonEmpty!44796 (= setRest!44790 ((_ map or) (store ((as const (Array Context!11646 Bool)) false) setElem!44796 true) setRest!44796))))

(declare-fun b!6562468 () Bool)

(declare-fun tp!1812744 () Bool)

(assert (=> b!6562468 (= e!3972600 tp!1812744)))

(assert (= (and setNonEmpty!44790 condSetEmpty!44796) setIsEmpty!44796))

(assert (= (and setNonEmpty!44790 (not condSetEmpty!44796)) setNonEmpty!44796))

(assert (= setNonEmpty!44796 b!6562468))

(declare-fun m!7344514 () Bool)

(assert (=> setNonEmpty!44796 m!7344514))

(declare-fun b!6562473 () Bool)

(declare-fun e!3972603 () Bool)

(declare-fun tp!1812750 () Bool)

(declare-fun tp!1812751 () Bool)

(assert (=> b!6562473 (= e!3972603 (and tp!1812750 tp!1812751))))

(assert (=> b!6561277 (= tp!1812639 e!3972603)))

(assert (= (and b!6561277 ((_ is Cons!65493) (exprs!6323 (h!71942 zl!343)))) b!6562473))

(declare-fun b!6562474 () Bool)

(declare-fun e!3972604 () Bool)

(assert (=> b!6562474 (= e!3972604 tp_is_empty!42131)))

(declare-fun b!6562476 () Bool)

(declare-fun tp!1812756 () Bool)

(assert (=> b!6562476 (= e!3972604 tp!1812756)))

(assert (=> b!6561272 (= tp!1812641 e!3972604)))

(declare-fun b!6562477 () Bool)

(declare-fun tp!1812752 () Bool)

(declare-fun tp!1812753 () Bool)

(assert (=> b!6562477 (= e!3972604 (and tp!1812752 tp!1812753))))

(declare-fun b!6562475 () Bool)

(declare-fun tp!1812755 () Bool)

(declare-fun tp!1812754 () Bool)

(assert (=> b!6562475 (= e!3972604 (and tp!1812755 tp!1812754))))

(assert (= (and b!6561272 ((_ is ElementMatch!16439) (regOne!33391 r!7292))) b!6562474))

(assert (= (and b!6561272 ((_ is Concat!25284) (regOne!33391 r!7292))) b!6562475))

(assert (= (and b!6561272 ((_ is Star!16439) (regOne!33391 r!7292))) b!6562476))

(assert (= (and b!6561272 ((_ is Union!16439) (regOne!33391 r!7292))) b!6562477))

(declare-fun b!6562478 () Bool)

(declare-fun e!3972605 () Bool)

(assert (=> b!6562478 (= e!3972605 tp_is_empty!42131)))

(declare-fun b!6562480 () Bool)

(declare-fun tp!1812761 () Bool)

(assert (=> b!6562480 (= e!3972605 tp!1812761)))

(assert (=> b!6561272 (= tp!1812647 e!3972605)))

(declare-fun b!6562481 () Bool)

(declare-fun tp!1812757 () Bool)

(declare-fun tp!1812758 () Bool)

(assert (=> b!6562481 (= e!3972605 (and tp!1812757 tp!1812758))))

(declare-fun b!6562479 () Bool)

(declare-fun tp!1812760 () Bool)

(declare-fun tp!1812759 () Bool)

(assert (=> b!6562479 (= e!3972605 (and tp!1812760 tp!1812759))))

(assert (= (and b!6561272 ((_ is ElementMatch!16439) (regTwo!33391 r!7292))) b!6562478))

(assert (= (and b!6561272 ((_ is Concat!25284) (regTwo!33391 r!7292))) b!6562479))

(assert (= (and b!6561272 ((_ is Star!16439) (regTwo!33391 r!7292))) b!6562480))

(assert (= (and b!6561272 ((_ is Union!16439) (regTwo!33391 r!7292))) b!6562481))

(declare-fun b!6562482 () Bool)

(declare-fun e!3972606 () Bool)

(declare-fun tp!1812762 () Bool)

(declare-fun tp!1812763 () Bool)

(assert (=> b!6562482 (= e!3972606 (and tp!1812762 tp!1812763))))

(assert (=> b!6561245 (= tp!1812642 e!3972606)))

(assert (= (and b!6561245 ((_ is Cons!65493) (exprs!6323 setElem!44790))) b!6562482))

(declare-fun b_lambda!248231 () Bool)

(assert (= b_lambda!248225 (or b!6561279 b_lambda!248231)))

(declare-fun bs!1675017 () Bool)

(declare-fun d!2058869 () Bool)

(assert (= bs!1675017 (and d!2058869 b!6561279)))

(assert (=> bs!1675017 (= (dynLambda!26049 lambda!365043 lt!2406382) (derivationStepZipperUp!1613 lt!2406382 (h!71940 s!2326)))))

(assert (=> bs!1675017 m!7343284))

(assert (=> d!2058833 d!2058869))

(declare-fun b_lambda!248233 () Bool)

(assert (= b_lambda!248223 (or b!6561279 b_lambda!248233)))

(declare-fun bs!1675018 () Bool)

(declare-fun d!2058871 () Bool)

(assert (= bs!1675018 (and d!2058871 b!6561279)))

(assert (=> bs!1675018 (= (dynLambda!26049 lambda!365043 lt!2406347) (derivationStepZipperUp!1613 lt!2406347 (h!71940 s!2326)))))

(assert (=> bs!1675018 m!7343356))

(assert (=> d!2058729 d!2058871))

(declare-fun b_lambda!248235 () Bool)

(assert (= b_lambda!248227 (or b!6561265 b_lambda!248235)))

(declare-fun bs!1675019 () Bool)

(declare-fun d!2058873 () Bool)

(assert (= bs!1675019 (and d!2058873 b!6561265)))

(declare-fun lt!2406618 () Unit!159091)

(assert (=> bs!1675019 (= lt!2406618 (lemmaConcatPreservesForall!412 (exprs!6323 lt!2406347) lt!2406366 lambda!365045))))

(assert (=> bs!1675019 (= (dynLambda!26051 lambda!365044 lt!2406347) (Context!11647 (++!14581 (exprs!6323 lt!2406347) lt!2406366)))))

(declare-fun m!7344516 () Bool)

(assert (=> bs!1675019 m!7344516))

(declare-fun m!7344518 () Bool)

(assert (=> bs!1675019 m!7344518))

(assert (=> d!2058837 d!2058873))

(declare-fun b_lambda!248237 () Bool)

(assert (= b_lambda!248229 (or b!6561279 b_lambda!248237)))

(declare-fun bs!1675020 () Bool)

(declare-fun d!2058875 () Bool)

(assert (= bs!1675020 (and d!2058875 b!6561279)))

(assert (=> bs!1675020 (= (dynLambda!26049 lambda!365043 (h!71942 zl!343)) (derivationStepZipperUp!1613 (h!71942 zl!343) (h!71940 s!2326)))))

(assert (=> bs!1675020 m!7343238))

(assert (=> d!2058849 d!2058875))

(declare-fun b_lambda!248239 () Bool)

(assert (= b_lambda!248221 (or b!6561279 b_lambda!248239)))

(declare-fun bs!1675021 () Bool)

(declare-fun d!2058877 () Bool)

(assert (= bs!1675021 (and d!2058877 b!6561279)))

(assert (=> bs!1675021 (= (dynLambda!26049 lambda!365043 lt!2406352) (derivationStepZipperUp!1613 lt!2406352 (h!71940 s!2326)))))

(assert (=> bs!1675021 m!7343352))

(assert (=> d!2058723 d!2058877))

(check-sat (not b!6562406) (not d!2058823) (not b!6562099) (not b!6562329) (not b!6562416) (not b!6562234) (not b!6562249) (not b!6562392) (not d!2058825) (not b!6562355) (not b!6562098) (not b!6562266) (not b!6562188) (not d!2058625) (not b!6562270) (not b!6562252) (not b!6562476) (not b!6561755) (not setNonEmpty!44796) (not b!6562440) (not b!6562353) (not b!6562177) (not b!6562280) (not d!2058755) (not b_lambda!248239) (not d!2058865) (not b!6562462) (not b!6562337) (not d!2058745) (not b!6562183) (not d!2058743) (not b!6561758) (not d!2058859) (not b!6562096) (not b!6561720) (not d!2058783) (not d!2058681) (not d!2058753) (not b!6562250) (not b!6562097) (not d!2058787) (not b!6562233) (not b!6562201) (not d!2058861) (not b!6562065) (not b!6562261) (not d!2058801) (not b!6562193) (not b!6562069) (not bm!570774) (not bm!570759) (not b!6562287) tp_is_empty!42131 (not b!6562303) (not b!6562393) (not b!6562281) (not b!6562475) (not b!6561993) (not d!2058833) (not b!6561769) (not d!2058793) (not b!6562312) (not b!6562366) (not d!2058779) (not d!2058749) (not b!6562321) (not b!6562108) (not b!6562482) (not d!2058821) (not b!6561756) (not b!6562279) (not d!2058795) (not b!6562095) (not b!6562137) (not b!6562479) (not b!6562318) (not b!6562473) (not b!6561760) (not b!6561718) (not b!6562180) (not d!2058765) (not b!6561896) (not d!2058777) (not d!2058737) (not b!6561992) (not b!6562100) (not d!2058797) (not b!6562388) (not b!6562461) (not b!6562264) (not b!6561761) (not bm!570766) (not d!2058725) (not bm!570757) (not b!6562184) (not d!2058739) (not bm!570756) (not d!2058611) (not b!6562441) (not b!6562268) (not b!6562455) (not b!6562449) (not b!6562425) (not d!2058577) (not b!6562477) (not b!6562070) (not d!2058815) (not b!6562235) (not b!6562305) (not b!6561719) (not b!6562367) (not b!6562398) (not b!6562336) (not b!6562335) (not b!6562414) (not d!2058605) (not b!6562189) (not b!6561759) (not b!6562254) (not d!2058791) (not b!6562387) (not d!2058607) (not b!6562152) (not b!6562256) (not d!2058809) (not b!6562397) (not b!6562243) (not b!6562351) (not bm!570761) (not bm!570763) (not d!2058599) (not b!6562275) (not bm!570694) (not b!6562231) (not b!6562334) (not d!2058769) (not d!2058727) (not bm!570751) (not b!6561999) (not b!6562278) (not d!2058851) (not d!2058817) (not d!2058781) (not bm!570764) (not d!2058729) (not b!6561716) (not d!2058603) (not d!2058629) (not bs!1675018) (not b!6562354) (not b!6562174) (not b!6561997) (not bm!570680) (not b_lambda!248235) (not b!6562190) (not b!6562179) (not b!6561723) (not b!6562428) (not d!2058841) (not b!6562480) (not b!6562360) (not d!2058773) (not d!2058761) (not bm!570678) (not bs!1675017) (not b!6562255) (not b!6561762) (not b!6561733) (not bm!570718) (not b!6562368) (not b!6561757) (not d!2058767) (not b!6562458) (not d!2058679) (not d!2058697) (not b!6562419) (not b!6561734) (not d!2058733) (not bm!570752) (not bm!570692) (not d!2058819) (not b!6562176) (not b!6562403) (not d!2058827) (not b!6562292) (not d!2058759) (not b!6562381) (not b!6562301) (not bm!570770) (not b!6562442) (not b!6562348) (not bm!570748) (not bm!570773) (not b!6562293) (not b!6562103) (not b!6562402) (not b!6562363) (not d!2058775) (not d!2058735) (not b!6561722) (not b!6562481) (not b!6562269) (not b!6562418) (not bm!570747) (not b!6562450) (not b!6561904) (not d!2058613) (not b!6562298) (not d!2058829) (not bm!570719) (not bm!570753) (not b!6562064) (not bs!1675021) (not b!6562285) (not d!2058751) (not d!2058805) (not b!6562289) (not d!2058757) (not bm!570775) (not b_lambda!248231) (not d!2058807) (not bm!570760) (not b!6561721) (not b!6562173) (not b!6562240) (not d!2058867) (not d!2058837) (not bs!1675019) (not bm!570772) (not bm!570732) (not b!6562347) (not bm!570733) (not b!6562286) (not b_lambda!248237) (not bm!570776) (not b!6562291) (not bm!570771) (not b_lambda!248233) (not bs!1675020) (not b!6562153) (not bm!570762) (not d!2058609) (not b!6562315) (not b!6561677) (not b!6562457) (not b!6562420) (not d!2058785) (not d!2058849) (not d!2058587) (not d!2058835) (not b!6561998) (not bm!570767) (not d!2058803) (not b!6562182) (not b!6562459) (not d!2058811) (not d!2058789) (not b!6562463) (not d!2058723) (not d!2058709) (not b!6562307) (not b!6562246) (not d!2058763) (not b!6562306) (not b!6562248) (not d!2058617) (not b!6561991) (not b!6562247) (not b!6562468) (not bm!570758) (not d!2058839))
(check-sat)
(get-model)

(declare-fun d!2059445 () Bool)

(assert (=> d!2059445 (= (nullable!6432 lt!2406349) (nullableFct!2358 lt!2406349))))

(declare-fun bs!1675955 () Bool)

(assert (= bs!1675955 d!2059445))

(declare-fun m!7345806 () Bool)

(assert (=> bs!1675955 m!7345806))

(assert (=> b!6562312 d!2059445))

(declare-fun d!2059447 () Bool)

(assert (=> d!2059447 (= (isEmpty!37737 (_1!36721 lt!2406397)) ((_ is Nil!65492) (_1!36721 lt!2406397)))))

(assert (=> bm!570763 d!2059447))

(declare-fun d!2059449 () Bool)

(assert (=> d!2059449 (= (isEmpty!37737 (t!379258 s!2326)) ((_ is Nil!65492) (t!379258 s!2326)))))

(assert (=> d!2058603 d!2059449))

(declare-fun d!2059451 () Bool)

(assert (=> d!2059451 (= (isDefined!13033 lt!2406562) (not (isEmpty!37738 lt!2406562)))))

(declare-fun bs!1675956 () Bool)

(assert (= bs!1675956 d!2059451))

(declare-fun m!7345808 () Bool)

(assert (=> bs!1675956 m!7345808))

(assert (=> b!6562182 d!2059451))

(declare-fun d!2059453 () Bool)

(declare-fun lambda!365219 () Int)

(declare-fun exists!2639 ((InoxSet Context!11646) Int) Bool)

(assert (=> d!2059453 (= (nullableZipper!2184 lt!2406385) (exists!2639 lt!2406385 lambda!365219))))

(declare-fun bs!1675957 () Bool)

(assert (= bs!1675957 d!2059453))

(declare-fun m!7345810 () Bool)

(assert (=> bs!1675957 m!7345810))

(assert (=> b!6561755 d!2059453))

(declare-fun d!2059455 () Bool)

(assert (=> d!2059455 (forall!15611 (++!14581 (exprs!6323 lt!2406347) lt!2406366) lambda!365045)))

(declare-fun lt!2406705 () Unit!159091)

(assert (=> d!2059455 (= lt!2406705 (choose!48975 (exprs!6323 lt!2406347) lt!2406366 lambda!365045))))

(assert (=> d!2059455 (forall!15611 (exprs!6323 lt!2406347) lambda!365045)))

(assert (=> d!2059455 (= (lemmaConcatPreservesForall!412 (exprs!6323 lt!2406347) lt!2406366 lambda!365045) lt!2406705)))

(declare-fun bs!1675958 () Bool)

(assert (= bs!1675958 d!2059455))

(assert (=> bs!1675958 m!7344518))

(assert (=> bs!1675958 m!7344518))

(declare-fun m!7345812 () Bool)

(assert (=> bs!1675958 m!7345812))

(declare-fun m!7345814 () Bool)

(assert (=> bs!1675958 m!7345814))

(declare-fun m!7345816 () Bool)

(assert (=> bs!1675958 m!7345816))

(assert (=> bs!1675019 d!2059455))

(declare-fun b!6563690 () Bool)

(declare-fun e!3973293 () List!65617)

(assert (=> b!6563690 (= e!3973293 (Cons!65493 (h!71941 (exprs!6323 lt!2406347)) (++!14581 (t!379259 (exprs!6323 lt!2406347)) lt!2406366)))))

(declare-fun d!2059457 () Bool)

(declare-fun e!3973292 () Bool)

(assert (=> d!2059457 e!3973292))

(declare-fun res!2693388 () Bool)

(assert (=> d!2059457 (=> (not res!2693388) (not e!3973292))))

(declare-fun lt!2406706 () List!65617)

(assert (=> d!2059457 (= res!2693388 (= (content!12599 lt!2406706) ((_ map or) (content!12599 (exprs!6323 lt!2406347)) (content!12599 lt!2406366))))))

(assert (=> d!2059457 (= lt!2406706 e!3973293)))

(declare-fun c!1206268 () Bool)

(assert (=> d!2059457 (= c!1206268 ((_ is Nil!65493) (exprs!6323 lt!2406347)))))

(assert (=> d!2059457 (= (++!14581 (exprs!6323 lt!2406347) lt!2406366) lt!2406706)))

(declare-fun b!6563692 () Bool)

(assert (=> b!6563692 (= e!3973292 (or (not (= lt!2406366 Nil!65493)) (= lt!2406706 (exprs!6323 lt!2406347))))))

(declare-fun b!6563689 () Bool)

(assert (=> b!6563689 (= e!3973293 lt!2406366)))

(declare-fun b!6563691 () Bool)

(declare-fun res!2693389 () Bool)

(assert (=> b!6563691 (=> (not res!2693389) (not e!3973292))))

(assert (=> b!6563691 (= res!2693389 (= (size!40528 lt!2406706) (+ (size!40528 (exprs!6323 lt!2406347)) (size!40528 lt!2406366))))))

(assert (= (and d!2059457 c!1206268) b!6563689))

(assert (= (and d!2059457 (not c!1206268)) b!6563690))

(assert (= (and d!2059457 res!2693388) b!6563691))

(assert (= (and b!6563691 res!2693389) b!6563692))

(declare-fun m!7345818 () Bool)

(assert (=> b!6563690 m!7345818))

(declare-fun m!7345820 () Bool)

(assert (=> d!2059457 m!7345820))

(declare-fun m!7345822 () Bool)

(assert (=> d!2059457 m!7345822))

(assert (=> d!2059457 m!7344406))

(declare-fun m!7345824 () Bool)

(assert (=> b!6563691 m!7345824))

(declare-fun m!7345826 () Bool)

(assert (=> b!6563691 m!7345826))

(assert (=> b!6563691 m!7344412))

(assert (=> bs!1675019 d!2059457))

(assert (=> d!2058833 d!2058829))

(declare-fun d!2059459 () Bool)

(assert (=> d!2059459 (= (flatMap!1944 lt!2406385 lambda!365043) (dynLambda!26049 lambda!365043 lt!2406382))))

(assert (=> d!2059459 true))

(declare-fun _$13!3809 () Unit!159091)

(assert (=> d!2059459 (= (choose!48969 lt!2406385 lt!2406382 lambda!365043) _$13!3809)))

(declare-fun b_lambda!248289 () Bool)

(assert (=> (not b_lambda!248289) (not d!2059459)))

(declare-fun bs!1675959 () Bool)

(assert (= bs!1675959 d!2059459))

(assert (=> bs!1675959 m!7343282))

(assert (=> bs!1675959 m!7344442))

(assert (=> d!2058833 d!2059459))

(declare-fun d!2059461 () Bool)

(declare-fun c!1206269 () Bool)

(assert (=> d!2059461 (= c!1206269 (isEmpty!37737 (tail!12414 (_1!36721 lt!2406377))))))

(declare-fun e!3973294 () Bool)

(assert (=> d!2059461 (= (matchZipper!2451 (derivationStepZipper!2405 lt!2406365 (head!13329 (_1!36721 lt!2406377))) (tail!12414 (_1!36721 lt!2406377))) e!3973294)))

(declare-fun b!6563693 () Bool)

(assert (=> b!6563693 (= e!3973294 (nullableZipper!2184 (derivationStepZipper!2405 lt!2406365 (head!13329 (_1!36721 lt!2406377)))))))

(declare-fun b!6563694 () Bool)

(assert (=> b!6563694 (= e!3973294 (matchZipper!2451 (derivationStepZipper!2405 (derivationStepZipper!2405 lt!2406365 (head!13329 (_1!36721 lt!2406377))) (head!13329 (tail!12414 (_1!36721 lt!2406377)))) (tail!12414 (tail!12414 (_1!36721 lt!2406377)))))))

(assert (= (and d!2059461 c!1206269) b!6563693))

(assert (= (and d!2059461 (not c!1206269)) b!6563694))

(assert (=> d!2059461 m!7344322))

(assert (=> d!2059461 m!7344324))

(assert (=> b!6563693 m!7344496))

(declare-fun m!7345828 () Bool)

(assert (=> b!6563693 m!7345828))

(assert (=> b!6563694 m!7344322))

(declare-fun m!7345830 () Bool)

(assert (=> b!6563694 m!7345830))

(assert (=> b!6563694 m!7344496))

(assert (=> b!6563694 m!7345830))

(declare-fun m!7345832 () Bool)

(assert (=> b!6563694 m!7345832))

(assert (=> b!6563694 m!7344322))

(declare-fun m!7345834 () Bool)

(assert (=> b!6563694 m!7345834))

(assert (=> b!6563694 m!7345832))

(assert (=> b!6563694 m!7345834))

(declare-fun m!7345836 () Bool)

(assert (=> b!6563694 m!7345836))

(assert (=> b!6562403 d!2059461))

(declare-fun bs!1675960 () Bool)

(declare-fun d!2059463 () Bool)

(assert (= bs!1675960 (and d!2059463 b!6561279)))

(declare-fun lambda!365220 () Int)

(assert (=> bs!1675960 (= (= (head!13329 (_1!36721 lt!2406377)) (h!71940 s!2326)) (= lambda!365220 lambda!365043))))

(declare-fun bs!1675961 () Bool)

(assert (= bs!1675961 (and d!2059463 d!2058835)))

(assert (=> bs!1675961 (= (= (head!13329 (_1!36721 lt!2406377)) (h!71940 s!2326)) (= lambda!365220 lambda!365144))))

(assert (=> d!2059463 true))

(assert (=> d!2059463 (= (derivationStepZipper!2405 lt!2406365 (head!13329 (_1!36721 lt!2406377))) (flatMap!1944 lt!2406365 lambda!365220))))

(declare-fun bs!1675962 () Bool)

(assert (= bs!1675962 d!2059463))

(declare-fun m!7345838 () Bool)

(assert (=> bs!1675962 m!7345838))

(assert (=> b!6562403 d!2059463))

(declare-fun d!2059465 () Bool)

(assert (=> d!2059465 (= (head!13329 (_1!36721 lt!2406377)) (h!71940 (_1!36721 lt!2406377)))))

(assert (=> b!6562403 d!2059465))

(declare-fun d!2059467 () Bool)

(assert (=> d!2059467 (= (tail!12414 (_1!36721 lt!2406377)) (t!379258 (_1!36721 lt!2406377)))))

(assert (=> b!6562403 d!2059467))

(declare-fun d!2059469 () Bool)

(assert (=> d!2059469 (= (Exists!3509 (ite c!1205874 lambda!365132 lambda!365133)) (choose!48962 (ite c!1205874 lambda!365132 lambda!365133)))))

(declare-fun bs!1675963 () Bool)

(assert (= bs!1675963 d!2059469))

(declare-fun m!7345840 () Bool)

(assert (=> bs!1675963 m!7345840))

(assert (=> bm!570753 d!2059469))

(assert (=> d!2058789 d!2058795))

(assert (=> d!2058789 d!2058861))

(declare-fun d!2059471 () Bool)

(assert (=> d!2059471 (= (matchR!8622 (reg!16768 (regOne!33390 r!7292)) (_1!36721 lt!2406377)) (matchZipper!2451 lt!2406365 (_1!36721 lt!2406377)))))

(assert (=> d!2059471 true))

(declare-fun _$44!1691 () Unit!159091)

(assert (=> d!2059471 (= (choose!48976 lt!2406365 lt!2406367 (reg!16768 (regOne!33390 r!7292)) (_1!36721 lt!2406377)) _$44!1691)))

(declare-fun bs!1675964 () Bool)

(assert (= bs!1675964 d!2059471))

(assert (=> bs!1675964 m!7343308))

(assert (=> bs!1675964 m!7343376))

(assert (=> d!2058789 d!2059471))

(assert (=> d!2058789 d!2058615))

(declare-fun d!2059473 () Bool)

(assert (=> d!2059473 (= (Exists!3509 lambda!365097) (choose!48962 lambda!365097))))

(declare-fun bs!1675965 () Bool)

(assert (= bs!1675965 d!2059473))

(declare-fun m!7345842 () Bool)

(assert (=> bs!1675965 m!7345842))

(assert (=> d!2058617 d!2059473))

(declare-fun d!2059475 () Bool)

(assert (=> d!2059475 (= (Exists!3509 lambda!365100) (choose!48962 lambda!365100))))

(declare-fun bs!1675966 () Bool)

(assert (= bs!1675966 d!2059475))

(declare-fun m!7345844 () Bool)

(assert (=> bs!1675966 m!7345844))

(assert (=> d!2058617 d!2059475))

(declare-fun bs!1675967 () Bool)

(declare-fun d!2059477 () Bool)

(assert (= bs!1675967 (and d!2059477 b!6561898)))

(declare-fun lambda!365225 () Int)

(assert (=> bs!1675967 (not (= lambda!365225 lambda!365111))))

(declare-fun bs!1675968 () Bool)

(assert (= bs!1675968 (and d!2059477 d!2058817)))

(assert (=> bs!1675968 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) lt!2406360) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365225 lambda!365141))))

(declare-fun bs!1675969 () Bool)

(assert (= bs!1675969 (and d!2059477 b!6561287)))

(assert (=> bs!1675969 (not (= lambda!365225 lambda!365047))))

(declare-fun bs!1675970 () Bool)

(assert (= bs!1675970 (and d!2059477 d!2058767)))

(assert (=> bs!1675970 (not (= lambda!365225 lambda!365131))))

(declare-fun bs!1675971 () Bool)

(assert (= bs!1675971 (and d!2059477 b!6561249)))

(assert (=> bs!1675971 (= lambda!365225 lambda!365048)))

(declare-fun bs!1675972 () Bool)

(assert (= bs!1675972 (and d!2059477 d!2058617)))

(assert (=> bs!1675972 (not (= lambda!365225 lambda!365100))))

(declare-fun bs!1675973 () Bool)

(assert (= bs!1675973 (and d!2059477 b!6561283)))

(assert (=> bs!1675973 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 r!7292)) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365225 lambda!365041))))

(assert (=> bs!1675973 (not (= lambda!365225 lambda!365042))))

(assert (=> bs!1675970 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 r!7292)) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365225 lambda!365130))))

(declare-fun bs!1675974 () Bool)

(assert (= bs!1675974 (and d!2059477 b!6562199)))

(assert (=> bs!1675974 (not (= lambda!365225 lambda!365132))))

(declare-fun bs!1675975 () Bool)

(assert (= bs!1675975 (and d!2059477 d!2058793)))

(assert (=> bs!1675975 (not (= lambda!365225 lambda!365135))))

(assert (=> bs!1675969 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) lt!2406360) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365225 lambda!365046))))

(assert (=> bs!1675971 (not (= lambda!365225 lambda!365049))))

(declare-fun bs!1675976 () Bool)

(assert (= bs!1675976 (and d!2059477 d!2058681)))

(assert (=> bs!1675976 (= lambda!365225 lambda!365116)))

(declare-fun bs!1675977 () Bool)

(assert (= bs!1675977 (and d!2059477 b!6562323)))

(assert (=> bs!1675977 (not (= lambda!365225 lambda!365140))))

(declare-fun bs!1675978 () Bool)

(assert (= bs!1675978 (and d!2059477 d!2058765)))

(assert (=> bs!1675978 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 r!7292)) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365225 lambda!365129))))

(declare-fun bs!1675979 () Bool)

(assert (= bs!1675979 (and d!2059477 b!6562327)))

(assert (=> bs!1675979 (not (= lambda!365225 lambda!365139))))

(declare-fun bs!1675980 () Bool)

(assert (= bs!1675980 (and d!2059477 b!6562195)))

(assert (=> bs!1675980 (not (= lambda!365225 lambda!365133))))

(assert (=> bs!1675975 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) lt!2406360) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365225 lambda!365134))))

(assert (=> bs!1675972 (= lambda!365225 lambda!365097)))

(declare-fun bs!1675981 () Bool)

(assert (= bs!1675981 (and d!2059477 b!6561902)))

(assert (=> bs!1675981 (not (= lambda!365225 lambda!365109))))

(declare-fun bs!1675982 () Bool)

(assert (= bs!1675982 (and d!2059477 b!6562412)))

(assert (=> bs!1675982 (not (= lambda!365225 lambda!365150))))

(declare-fun bs!1675983 () Bool)

(assert (= bs!1675983 (and d!2059477 b!6562408)))

(assert (=> bs!1675983 (not (= lambda!365225 lambda!365151))))

(assert (=> d!2059477 true))

(assert (=> d!2059477 true))

(assert (=> d!2059477 true))

(declare-fun lambda!365226 () Int)

(assert (=> bs!1675967 (= (and (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 lt!2406360)) (= lt!2406358 (regTwo!33390 lt!2406360))) (= lambda!365226 lambda!365111))))

(assert (=> bs!1675968 (not (= lambda!365226 lambda!365141))))

(assert (=> bs!1675969 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) lt!2406360) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365226 lambda!365047))))

(assert (=> bs!1675970 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 r!7292)) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365226 lambda!365131))))

(declare-fun bs!1675984 () Bool)

(assert (= bs!1675984 d!2059477))

(assert (=> bs!1675984 (not (= lambda!365226 lambda!365225))))

(assert (=> bs!1675971 (not (= lambda!365226 lambda!365048))))

(assert (=> bs!1675972 (= lambda!365226 lambda!365100)))

(assert (=> bs!1675973 (not (= lambda!365226 lambda!365041))))

(assert (=> bs!1675973 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 r!7292)) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365226 lambda!365042))))

(assert (=> bs!1675970 (not (= lambda!365226 lambda!365130))))

(assert (=> bs!1675974 (not (= lambda!365226 lambda!365132))))

(assert (=> bs!1675975 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) lt!2406360) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365226 lambda!365135))))

(assert (=> bs!1675969 (not (= lambda!365226 lambda!365046))))

(assert (=> bs!1675971 (= lambda!365226 lambda!365049)))

(assert (=> bs!1675976 (not (= lambda!365226 lambda!365116))))

(assert (=> bs!1675977 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 lt!2406396)) (= lt!2406358 (regTwo!33390 lt!2406396))) (= lambda!365226 lambda!365140))))

(assert (=> bs!1675978 (not (= lambda!365226 lambda!365129))))

(assert (=> bs!1675979 (not (= lambda!365226 lambda!365139))))

(assert (=> bs!1675980 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 r!7292)) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365226 lambda!365133))))

(assert (=> bs!1675975 (not (= lambda!365226 lambda!365134))))

(assert (=> bs!1675972 (not (= lambda!365226 lambda!365097))))

(assert (=> bs!1675981 (not (= lambda!365226 lambda!365109))))

(assert (=> bs!1675982 (not (= lambda!365226 lambda!365150))))

(assert (=> bs!1675983 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 lt!2406349)) (= lt!2406358 (regTwo!33390 lt!2406349))) (= lambda!365226 lambda!365151))))

(assert (=> d!2059477 true))

(assert (=> d!2059477 true))

(assert (=> d!2059477 true))

(assert (=> d!2059477 (= (Exists!3509 lambda!365225) (Exists!3509 lambda!365226))))

(assert (=> d!2059477 true))

(declare-fun _$90!2403 () Unit!159091)

(assert (=> d!2059477 (= (choose!48963 (reg!16768 (regOne!33390 r!7292)) lt!2406358 (_1!36721 lt!2406397)) _$90!2403)))

(declare-fun m!7345846 () Bool)

(assert (=> bs!1675984 m!7345846))

(declare-fun m!7345848 () Bool)

(assert (=> bs!1675984 m!7345848))

(assert (=> d!2058617 d!2059477))

(assert (=> d!2058617 d!2058615))

(declare-fun d!2059479 () Bool)

(assert (=> d!2059479 (= (isConcat!1339 lt!2406487) ((_ is Concat!25284) lt!2406487))))

(assert (=> b!6561718 d!2059479))

(declare-fun d!2059481 () Bool)

(assert (=> d!2059481 (= (map!14967 lt!2406365 lambda!365149) (choose!48982 lt!2406365 lambda!365149))))

(declare-fun bs!1675985 () Bool)

(assert (= bs!1675985 d!2059481))

(declare-fun m!7345850 () Bool)

(assert (=> bs!1675985 m!7345850))

(assert (=> d!2058839 d!2059481))

(declare-fun d!2059483 () Bool)

(assert (=> d!2059483 (= (nullable!6432 (h!71941 (exprs!6323 lt!2406347))) (nullableFct!2358 (h!71941 (exprs!6323 lt!2406347))))))

(declare-fun bs!1675986 () Bool)

(assert (= bs!1675986 d!2059483))

(declare-fun m!7345852 () Bool)

(assert (=> bs!1675986 m!7345852))

(assert (=> b!6562064 d!2059483))

(declare-fun b!6563717 () Bool)

(declare-fun e!3973314 () Bool)

(declare-fun call!570987 () Bool)

(assert (=> b!6563717 (= e!3973314 call!570987)))

(declare-fun b!6563718 () Bool)

(declare-fun e!3973316 () Bool)

(declare-fun e!3973315 () Bool)

(assert (=> b!6563718 (= e!3973316 e!3973315)))

(declare-fun res!2693408 () Bool)

(assert (=> b!6563718 (=> res!2693408 e!3973315)))

(assert (=> b!6563718 (= res!2693408 ((_ is Star!16439) (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun bm!570982 () Bool)

(declare-fun c!1206272 () Bool)

(assert (=> bm!570982 (= call!570987 (nullable!6432 (ite c!1206272 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))))))))

(declare-fun b!6563719 () Bool)

(declare-fun e!3973313 () Bool)

(assert (=> b!6563719 (= e!3973313 call!570987)))

(declare-fun b!6563720 () Bool)

(declare-fun e!3973311 () Bool)

(assert (=> b!6563720 (= e!3973311 e!3973313)))

(declare-fun res!2693409 () Bool)

(declare-fun call!570986 () Bool)

(assert (=> b!6563720 (= res!2693409 call!570986)))

(assert (=> b!6563720 (=> res!2693409 e!3973313)))

(declare-fun b!6563721 () Bool)

(assert (=> b!6563721 (= e!3973311 e!3973314)))

(declare-fun res!2693412 () Bool)

(assert (=> b!6563721 (= res!2693412 call!570986)))

(assert (=> b!6563721 (=> (not res!2693412) (not e!3973314))))

(declare-fun b!6563722 () Bool)

(declare-fun e!3973312 () Bool)

(assert (=> b!6563722 (= e!3973312 e!3973316)))

(declare-fun res!2693410 () Bool)

(assert (=> b!6563722 (=> (not res!2693410) (not e!3973316))))

(assert (=> b!6563722 (= res!2693410 (and (not ((_ is EmptyLang!16439) (h!71941 (exprs!6323 (h!71942 zl!343))))) (not ((_ is ElementMatch!16439) (h!71941 (exprs!6323 (h!71942 zl!343)))))))))

(declare-fun b!6563723 () Bool)

(assert (=> b!6563723 (= e!3973315 e!3973311)))

(assert (=> b!6563723 (= c!1206272 ((_ is Union!16439) (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun bm!570981 () Bool)

(assert (=> bm!570981 (= call!570986 (nullable!6432 (ite c!1206272 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))))))))

(declare-fun d!2059485 () Bool)

(declare-fun res!2693411 () Bool)

(assert (=> d!2059485 (=> res!2693411 e!3973312)))

(assert (=> d!2059485 (= res!2693411 ((_ is EmptyExpr!16439) (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(assert (=> d!2059485 (= (nullableFct!2358 (h!71941 (exprs!6323 (h!71942 zl!343)))) e!3973312)))

(assert (= (and d!2059485 (not res!2693411)) b!6563722))

(assert (= (and b!6563722 res!2693410) b!6563718))

(assert (= (and b!6563718 (not res!2693408)) b!6563723))

(assert (= (and b!6563723 c!1206272) b!6563720))

(assert (= (and b!6563723 (not c!1206272)) b!6563721))

(assert (= (and b!6563720 (not res!2693409)) b!6563719))

(assert (= (and b!6563721 res!2693412) b!6563717))

(assert (= (or b!6563719 b!6563717) bm!570982))

(assert (= (or b!6563720 b!6563721) bm!570981))

(declare-fun m!7345854 () Bool)

(assert (=> bm!570982 m!7345854))

(declare-fun m!7345856 () Bool)

(assert (=> bm!570981 m!7345856))

(assert (=> d!2058851 d!2059485))

(declare-fun d!2059487 () Bool)

(assert (=> d!2059487 (= (head!13329 (_1!36721 lt!2406397)) (h!71940 (_1!36721 lt!2406397)))))

(assert (=> b!6562353 d!2059487))

(declare-fun d!2059489 () Bool)

(assert (=> d!2059489 (= (isEmpty!37737 (tail!12414 (_2!36721 lt!2406377))) ((_ is Nil!65492) (tail!12414 (_2!36721 lt!2406377))))))

(assert (=> b!6562255 d!2059489))

(declare-fun d!2059491 () Bool)

(assert (=> d!2059491 (= (tail!12414 (_2!36721 lt!2406377)) (t!379258 (_2!36721 lt!2406377)))))

(assert (=> b!6562255 d!2059491))

(declare-fun bm!570983 () Bool)

(declare-fun call!570989 () List!65617)

(declare-fun call!570993 () List!65617)

(assert (=> bm!570983 (= call!570989 call!570993)))

(declare-fun b!6563724 () Bool)

(declare-fun e!3973319 () (InoxSet Context!11646))

(assert (=> b!6563724 (= e!3973319 (store ((as const (Array Context!11646 Bool)) false) (ite (or c!1205857 c!1205861) lt!2406352 (Context!11647 call!570752)) true))))

(declare-fun b!6563725 () Bool)

(declare-fun e!3973322 () (InoxSet Context!11646))

(declare-fun e!3973321 () (InoxSet Context!11646))

(assert (=> b!6563725 (= e!3973322 e!3973321)))

(declare-fun c!1206275 () Bool)

(assert (=> b!6563725 (= c!1206275 ((_ is Concat!25284) (ite c!1205857 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1205861 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (ite c!1205859 (regOne!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (reg!16768 (regOne!33390 r!7292))))))))))

(declare-fun b!6563726 () Bool)

(declare-fun e!3973320 () (InoxSet Context!11646))

(declare-fun call!570992 () (InoxSet Context!11646))

(assert (=> b!6563726 (= e!3973320 call!570992)))

(declare-fun b!6563727 () Bool)

(declare-fun call!570991 () (InoxSet Context!11646))

(declare-fun call!570988 () (InoxSet Context!11646))

(assert (=> b!6563727 (= e!3973322 ((_ map or) call!570991 call!570988))))

(declare-fun bm!570984 () Bool)

(declare-fun c!1206273 () Bool)

(assert (=> bm!570984 (= call!570991 (derivationStepZipperDown!1687 (ite c!1206273 (regOne!33391 (ite c!1205857 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1205861 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (ite c!1205859 (regOne!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (reg!16768 (regOne!33390 r!7292))))))) (regOne!33390 (ite c!1205857 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1205861 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (ite c!1205859 (regOne!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (reg!16768 (regOne!33390 r!7292)))))))) (ite c!1206273 (ite (or c!1205857 c!1205861) lt!2406352 (Context!11647 call!570752)) (Context!11647 call!570993)) (h!71940 s!2326)))))

(declare-fun b!6563728 () Bool)

(assert (=> b!6563728 (= e!3973321 call!570992)))

(declare-fun call!570990 () (InoxSet Context!11646))

(declare-fun bm!570985 () Bool)

(declare-fun c!1206277 () Bool)

(assert (=> bm!570985 (= call!570990 (derivationStepZipperDown!1687 (ite c!1206273 (regTwo!33391 (ite c!1205857 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1205861 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (ite c!1205859 (regOne!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (reg!16768 (regOne!33390 r!7292))))))) (ite c!1206277 (regTwo!33390 (ite c!1205857 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1205861 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (ite c!1205859 (regOne!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (reg!16768 (regOne!33390 r!7292))))))) (ite c!1206275 (regOne!33390 (ite c!1205857 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1205861 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (ite c!1205859 (regOne!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (reg!16768 (regOne!33390 r!7292))))))) (reg!16768 (ite c!1205857 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1205861 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (ite c!1205859 (regOne!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (reg!16768 (regOne!33390 r!7292)))))))))) (ite (or c!1206273 c!1206277) (ite (or c!1205857 c!1205861) lt!2406352 (Context!11647 call!570752)) (Context!11647 call!570989)) (h!71940 s!2326)))))

(declare-fun b!6563729 () Bool)

(declare-fun e!3973317 () Bool)

(assert (=> b!6563729 (= e!3973317 (nullable!6432 (regOne!33390 (ite c!1205857 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1205861 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (ite c!1205859 (regOne!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (reg!16768 (regOne!33390 r!7292)))))))))))

(declare-fun bm!570986 () Bool)

(assert (=> bm!570986 (= call!570992 call!570988)))

(declare-fun bm!570987 () Bool)

(assert (=> bm!570987 (= call!570988 call!570990)))

(declare-fun c!1206276 () Bool)

(declare-fun b!6563730 () Bool)

(assert (=> b!6563730 (= c!1206276 ((_ is Star!16439) (ite c!1205857 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1205861 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (ite c!1205859 (regOne!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (reg!16768 (regOne!33390 r!7292))))))))))

(assert (=> b!6563730 (= e!3973321 e!3973320)))

(declare-fun b!6563731 () Bool)

(assert (=> b!6563731 (= e!3973320 ((as const (Array Context!11646 Bool)) false))))

(declare-fun b!6563732 () Bool)

(declare-fun e!3973318 () (InoxSet Context!11646))

(assert (=> b!6563732 (= e!3973319 e!3973318)))

(assert (=> b!6563732 (= c!1206273 ((_ is Union!16439) (ite c!1205857 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1205861 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (ite c!1205859 (regOne!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (reg!16768 (regOne!33390 r!7292))))))))))

(declare-fun bm!570988 () Bool)

(assert (=> bm!570988 (= call!570993 ($colon$colon!2280 (exprs!6323 (ite (or c!1205857 c!1205861) lt!2406352 (Context!11647 call!570752))) (ite (or c!1206277 c!1206275) (regTwo!33390 (ite c!1205857 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1205861 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (ite c!1205859 (regOne!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (reg!16768 (regOne!33390 r!7292))))))) (ite c!1205857 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1205861 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (ite c!1205859 (regOne!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (reg!16768 (regOne!33390 r!7292)))))))))))

(declare-fun b!6563733 () Bool)

(assert (=> b!6563733 (= e!3973318 ((_ map or) call!570991 call!570990))))

(declare-fun d!2059493 () Bool)

(declare-fun c!1206274 () Bool)

(assert (=> d!2059493 (= c!1206274 (and ((_ is ElementMatch!16439) (ite c!1205857 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1205861 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (ite c!1205859 (regOne!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (reg!16768 (regOne!33390 r!7292))))))) (= (c!1205620 (ite c!1205857 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1205861 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (ite c!1205859 (regOne!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (reg!16768 (regOne!33390 r!7292))))))) (h!71940 s!2326))))))

(assert (=> d!2059493 (= (derivationStepZipperDown!1687 (ite c!1205857 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1205861 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (ite c!1205859 (regOne!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (reg!16768 (regOne!33390 r!7292)))))) (ite (or c!1205857 c!1205861) lt!2406352 (Context!11647 call!570752)) (h!71940 s!2326)) e!3973319)))

(declare-fun b!6563734 () Bool)

(assert (=> b!6563734 (= c!1206277 e!3973317)))

(declare-fun res!2693413 () Bool)

(assert (=> b!6563734 (=> (not res!2693413) (not e!3973317))))

(assert (=> b!6563734 (= res!2693413 ((_ is Concat!25284) (ite c!1205857 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1205861 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (ite c!1205859 (regOne!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (reg!16768 (regOne!33390 r!7292))))))))))

(assert (=> b!6563734 (= e!3973318 e!3973322)))

(assert (= (and d!2059493 c!1206274) b!6563724))

(assert (= (and d!2059493 (not c!1206274)) b!6563732))

(assert (= (and b!6563732 c!1206273) b!6563733))

(assert (= (and b!6563732 (not c!1206273)) b!6563734))

(assert (= (and b!6563734 res!2693413) b!6563729))

(assert (= (and b!6563734 c!1206277) b!6563727))

(assert (= (and b!6563734 (not c!1206277)) b!6563725))

(assert (= (and b!6563725 c!1206275) b!6563728))

(assert (= (and b!6563725 (not c!1206275)) b!6563730))

(assert (= (and b!6563730 c!1206276) b!6563726))

(assert (= (and b!6563730 (not c!1206276)) b!6563731))

(assert (= (or b!6563728 b!6563726) bm!570983))

(assert (= (or b!6563728 b!6563726) bm!570986))

(assert (= (or b!6563727 bm!570983) bm!570988))

(assert (= (or b!6563727 bm!570986) bm!570987))

(assert (= (or b!6563733 bm!570987) bm!570985))

(assert (= (or b!6563733 b!6563727) bm!570984))

(declare-fun m!7345858 () Bool)

(assert (=> b!6563729 m!7345858))

(declare-fun m!7345860 () Bool)

(assert (=> b!6563724 m!7345860))

(declare-fun m!7345862 () Bool)

(assert (=> bm!570988 m!7345862))

(declare-fun m!7345864 () Bool)

(assert (=> bm!570984 m!7345864))

(declare-fun m!7345866 () Bool)

(assert (=> bm!570985 m!7345866))

(assert (=> bm!570748 d!2059493))

(declare-fun d!2059495 () Bool)

(declare-fun res!2693418 () Bool)

(declare-fun e!3973327 () Bool)

(assert (=> d!2059495 (=> res!2693418 e!3973327)))

(assert (=> d!2059495 (= res!2693418 ((_ is Nil!65493) (++!14581 lt!2406344 lt!2406366)))))

(assert (=> d!2059495 (= (forall!15611 (++!14581 lt!2406344 lt!2406366) lambda!365045) e!3973327)))

(declare-fun b!6563739 () Bool)

(declare-fun e!3973328 () Bool)

(assert (=> b!6563739 (= e!3973327 e!3973328)))

(declare-fun res!2693419 () Bool)

(assert (=> b!6563739 (=> (not res!2693419) (not e!3973328))))

(declare-fun dynLambda!26053 (Int Regex!16439) Bool)

(assert (=> b!6563739 (= res!2693419 (dynLambda!26053 lambda!365045 (h!71941 (++!14581 lt!2406344 lt!2406366))))))

(declare-fun b!6563740 () Bool)

(assert (=> b!6563740 (= e!3973328 (forall!15611 (t!379259 (++!14581 lt!2406344 lt!2406366)) lambda!365045))))

(assert (= (and d!2059495 (not res!2693418)) b!6563739))

(assert (= (and b!6563739 res!2693419) b!6563740))

(declare-fun b_lambda!248291 () Bool)

(assert (=> (not b_lambda!248291) (not b!6563739)))

(declare-fun m!7345868 () Bool)

(assert (=> b!6563739 m!7345868))

(declare-fun m!7345870 () Bool)

(assert (=> b!6563740 m!7345870))

(assert (=> d!2058783 d!2059495))

(assert (=> d!2058783 d!2058821))

(declare-fun d!2059497 () Bool)

(assert (=> d!2059497 (forall!15611 (++!14581 lt!2406344 lt!2406366) lambda!365045)))

(assert (=> d!2059497 true))

(declare-fun _$78!350 () Unit!159091)

(assert (=> d!2059497 (= (choose!48975 lt!2406344 lt!2406366 lambda!365045) _$78!350)))

(declare-fun bs!1675987 () Bool)

(assert (= bs!1675987 d!2059497))

(assert (=> bs!1675987 m!7343294))

(assert (=> bs!1675987 m!7343294))

(assert (=> bs!1675987 m!7344274))

(assert (=> d!2058783 d!2059497))

(declare-fun d!2059499 () Bool)

(declare-fun res!2693420 () Bool)

(declare-fun e!3973329 () Bool)

(assert (=> d!2059499 (=> res!2693420 e!3973329)))

(assert (=> d!2059499 (= res!2693420 ((_ is Nil!65493) lt!2406344))))

(assert (=> d!2059499 (= (forall!15611 lt!2406344 lambda!365045) e!3973329)))

(declare-fun b!6563741 () Bool)

(declare-fun e!3973330 () Bool)

(assert (=> b!6563741 (= e!3973329 e!3973330)))

(declare-fun res!2693421 () Bool)

(assert (=> b!6563741 (=> (not res!2693421) (not e!3973330))))

(assert (=> b!6563741 (= res!2693421 (dynLambda!26053 lambda!365045 (h!71941 lt!2406344)))))

(declare-fun b!6563742 () Bool)

(assert (=> b!6563742 (= e!3973330 (forall!15611 (t!379259 lt!2406344) lambda!365045))))

(assert (= (and d!2059499 (not res!2693420)) b!6563741))

(assert (= (and b!6563741 res!2693421) b!6563742))

(declare-fun b_lambda!248293 () Bool)

(assert (=> (not b_lambda!248293) (not b!6563741)))

(declare-fun m!7345872 () Bool)

(assert (=> b!6563741 m!7345872))

(declare-fun m!7345874 () Bool)

(assert (=> b!6563742 m!7345874))

(assert (=> d!2058783 d!2059499))

(declare-fun d!2059501 () Bool)

(assert (=> d!2059501 true))

(assert (=> d!2059501 true))

(declare-fun res!2693424 () Bool)

(assert (=> d!2059501 (= (choose!48962 lambda!365041) res!2693424)))

(assert (=> d!2058763 d!2059501))

(assert (=> bm!570718 d!2059447))

(declare-fun d!2059503 () Bool)

(assert (=> d!2059503 (= (isEmpty!37737 s!2326) ((_ is Nil!65492) s!2326))))

(assert (=> bm!570776 d!2059503))

(assert (=> d!2058759 d!2059451))

(declare-fun b!6563743 () Bool)

(declare-fun e!3973333 () Bool)

(declare-fun e!3973336 () Bool)

(assert (=> b!6563743 (= e!3973333 e!3973336)))

(declare-fun res!2693431 () Bool)

(assert (=> b!6563743 (=> (not res!2693431) (not e!3973336))))

(declare-fun lt!2406707 () Bool)

(assert (=> b!6563743 (= res!2693431 (not lt!2406707))))

(declare-fun b!6563744 () Bool)

(declare-fun res!2693428 () Bool)

(declare-fun e!3973335 () Bool)

(assert (=> b!6563744 (=> res!2693428 e!3973335)))

(assert (=> b!6563744 (= res!2693428 (not (isEmpty!37737 (tail!12414 Nil!65492))))))

(declare-fun b!6563745 () Bool)

(declare-fun e!3973331 () Bool)

(declare-fun call!570994 () Bool)

(assert (=> b!6563745 (= e!3973331 (= lt!2406707 call!570994))))

(declare-fun b!6563747 () Bool)

(declare-fun res!2693427 () Bool)

(declare-fun e!3973334 () Bool)

(assert (=> b!6563747 (=> (not res!2693427) (not e!3973334))))

(assert (=> b!6563747 (= res!2693427 (isEmpty!37737 (tail!12414 Nil!65492)))))

(declare-fun b!6563748 () Bool)

(assert (=> b!6563748 (= e!3973334 (= (head!13329 Nil!65492) (c!1205620 (regOne!33390 r!7292))))))

(declare-fun b!6563749 () Bool)

(declare-fun res!2693429 () Bool)

(assert (=> b!6563749 (=> res!2693429 e!3973333)))

(assert (=> b!6563749 (= res!2693429 e!3973334)))

(declare-fun res!2693425 () Bool)

(assert (=> b!6563749 (=> (not res!2693425) (not e!3973334))))

(assert (=> b!6563749 (= res!2693425 lt!2406707)))

(declare-fun b!6563750 () Bool)

(declare-fun e!3973337 () Bool)

(assert (=> b!6563750 (= e!3973337 (not lt!2406707))))

(declare-fun b!6563751 () Bool)

(declare-fun res!2693432 () Bool)

(assert (=> b!6563751 (=> (not res!2693432) (not e!3973334))))

(assert (=> b!6563751 (= res!2693432 (not call!570994))))

(declare-fun b!6563752 () Bool)

(assert (=> b!6563752 (= e!3973336 e!3973335)))

(declare-fun res!2693426 () Bool)

(assert (=> b!6563752 (=> res!2693426 e!3973335)))

(assert (=> b!6563752 (= res!2693426 call!570994)))

(declare-fun b!6563753 () Bool)

(declare-fun e!3973332 () Bool)

(assert (=> b!6563753 (= e!3973332 (nullable!6432 (regOne!33390 r!7292)))))

(declare-fun bm!570989 () Bool)

(assert (=> bm!570989 (= call!570994 (isEmpty!37737 Nil!65492))))

(declare-fun b!6563754 () Bool)

(assert (=> b!6563754 (= e!3973331 e!3973337)))

(declare-fun c!1206278 () Bool)

(assert (=> b!6563754 (= c!1206278 ((_ is EmptyLang!16439) (regOne!33390 r!7292)))))

(declare-fun b!6563755 () Bool)

(declare-fun res!2693430 () Bool)

(assert (=> b!6563755 (=> res!2693430 e!3973333)))

(assert (=> b!6563755 (= res!2693430 (not ((_ is ElementMatch!16439) (regOne!33390 r!7292))))))

(assert (=> b!6563755 (= e!3973337 e!3973333)))

(declare-fun b!6563756 () Bool)

(assert (=> b!6563756 (= e!3973332 (matchR!8622 (derivativeStep!5123 (regOne!33390 r!7292) (head!13329 Nil!65492)) (tail!12414 Nil!65492)))))

(declare-fun d!2059505 () Bool)

(assert (=> d!2059505 e!3973331))

(declare-fun c!1206280 () Bool)

(assert (=> d!2059505 (= c!1206280 ((_ is EmptyExpr!16439) (regOne!33390 r!7292)))))

(assert (=> d!2059505 (= lt!2406707 e!3973332)))

(declare-fun c!1206279 () Bool)

(assert (=> d!2059505 (= c!1206279 (isEmpty!37737 Nil!65492))))

(assert (=> d!2059505 (validRegex!8175 (regOne!33390 r!7292))))

(assert (=> d!2059505 (= (matchR!8622 (regOne!33390 r!7292) Nil!65492) lt!2406707)))

(declare-fun b!6563746 () Bool)

(assert (=> b!6563746 (= e!3973335 (not (= (head!13329 Nil!65492) (c!1205620 (regOne!33390 r!7292)))))))

(assert (= (and d!2059505 c!1206279) b!6563753))

(assert (= (and d!2059505 (not c!1206279)) b!6563756))

(assert (= (and d!2059505 c!1206280) b!6563745))

(assert (= (and d!2059505 (not c!1206280)) b!6563754))

(assert (= (and b!6563754 c!1206278) b!6563750))

(assert (= (and b!6563754 (not c!1206278)) b!6563755))

(assert (= (and b!6563755 (not res!2693430)) b!6563749))

(assert (= (and b!6563749 res!2693425) b!6563751))

(assert (= (and b!6563751 res!2693432) b!6563747))

(assert (= (and b!6563747 res!2693427) b!6563748))

(assert (= (and b!6563749 (not res!2693429)) b!6563743))

(assert (= (and b!6563743 res!2693431) b!6563752))

(assert (= (and b!6563752 (not res!2693426)) b!6563744))

(assert (= (and b!6563744 (not res!2693428)) b!6563746))

(assert (= (or b!6563745 b!6563751 b!6563752) bm!570989))

(declare-fun m!7345876 () Bool)

(assert (=> bm!570989 m!7345876))

(assert (=> d!2059505 m!7345876))

(assert (=> d!2059505 m!7344214))

(declare-fun m!7345878 () Bool)

(assert (=> b!6563747 m!7345878))

(assert (=> b!6563747 m!7345878))

(declare-fun m!7345880 () Bool)

(assert (=> b!6563747 m!7345880))

(declare-fun m!7345882 () Bool)

(assert (=> b!6563748 m!7345882))

(assert (=> b!6563746 m!7345882))

(assert (=> b!6563744 m!7345878))

(assert (=> b!6563744 m!7345878))

(assert (=> b!6563744 m!7345880))

(declare-fun m!7345884 () Bool)

(assert (=> b!6563753 m!7345884))

(assert (=> b!6563756 m!7345882))

(assert (=> b!6563756 m!7345882))

(declare-fun m!7345886 () Bool)

(assert (=> b!6563756 m!7345886))

(assert (=> b!6563756 m!7345878))

(assert (=> b!6563756 m!7345886))

(assert (=> b!6563756 m!7345878))

(declare-fun m!7345888 () Bool)

(assert (=> b!6563756 m!7345888))

(assert (=> d!2058759 d!2059505))

(declare-fun b!6563757 () Bool)

(declare-fun e!3973339 () Bool)

(declare-fun call!570995 () Bool)

(assert (=> b!6563757 (= e!3973339 call!570995)))

(declare-fun b!6563758 () Bool)

(declare-fun res!2693435 () Bool)

(declare-fun e!3973338 () Bool)

(assert (=> b!6563758 (=> (not res!2693435) (not e!3973338))))

(declare-fun call!570997 () Bool)

(assert (=> b!6563758 (= res!2693435 call!570997)))

(declare-fun e!3973341 () Bool)

(assert (=> b!6563758 (= e!3973341 e!3973338)))

(declare-fun b!6563759 () Bool)

(declare-fun e!3973344 () Bool)

(assert (=> b!6563759 (= e!3973344 e!3973341)))

(declare-fun c!1206282 () Bool)

(assert (=> b!6563759 (= c!1206282 ((_ is Union!16439) (regOne!33390 r!7292)))))

(declare-fun bm!570990 () Bool)

(assert (=> bm!570990 (= call!570997 (validRegex!8175 (ite c!1206282 (regOne!33391 (regOne!33390 r!7292)) (regOne!33390 (regOne!33390 r!7292)))))))

(declare-fun b!6563760 () Bool)

(assert (=> b!6563760 (= e!3973338 call!570995)))

(declare-fun b!6563761 () Bool)

(declare-fun e!3973342 () Bool)

(assert (=> b!6563761 (= e!3973342 e!3973339)))

(declare-fun res!2693437 () Bool)

(assert (=> b!6563761 (=> (not res!2693437) (not e!3973339))))

(assert (=> b!6563761 (= res!2693437 call!570997)))

(declare-fun b!6563762 () Bool)

(declare-fun res!2693433 () Bool)

(assert (=> b!6563762 (=> res!2693433 e!3973342)))

(assert (=> b!6563762 (= res!2693433 (not ((_ is Concat!25284) (regOne!33390 r!7292))))))

(assert (=> b!6563762 (= e!3973341 e!3973342)))

(declare-fun b!6563763 () Bool)

(declare-fun e!3973340 () Bool)

(assert (=> b!6563763 (= e!3973344 e!3973340)))

(declare-fun res!2693434 () Bool)

(assert (=> b!6563763 (= res!2693434 (not (nullable!6432 (reg!16768 (regOne!33390 r!7292)))))))

(assert (=> b!6563763 (=> (not res!2693434) (not e!3973340))))

(declare-fun d!2059507 () Bool)

(declare-fun res!2693436 () Bool)

(declare-fun e!3973343 () Bool)

(assert (=> d!2059507 (=> res!2693436 e!3973343)))

(assert (=> d!2059507 (= res!2693436 ((_ is ElementMatch!16439) (regOne!33390 r!7292)))))

(assert (=> d!2059507 (= (validRegex!8175 (regOne!33390 r!7292)) e!3973343)))

(declare-fun b!6563764 () Bool)

(declare-fun call!570996 () Bool)

(assert (=> b!6563764 (= e!3973340 call!570996)))

(declare-fun bm!570991 () Bool)

(assert (=> bm!570991 (= call!570995 call!570996)))

(declare-fun b!6563765 () Bool)

(assert (=> b!6563765 (= e!3973343 e!3973344)))

(declare-fun c!1206281 () Bool)

(assert (=> b!6563765 (= c!1206281 ((_ is Star!16439) (regOne!33390 r!7292)))))

(declare-fun bm!570992 () Bool)

(assert (=> bm!570992 (= call!570996 (validRegex!8175 (ite c!1206281 (reg!16768 (regOne!33390 r!7292)) (ite c!1206282 (regTwo!33391 (regOne!33390 r!7292)) (regTwo!33390 (regOne!33390 r!7292))))))))

(assert (= (and d!2059507 (not res!2693436)) b!6563765))

(assert (= (and b!6563765 c!1206281) b!6563763))

(assert (= (and b!6563765 (not c!1206281)) b!6563759))

(assert (= (and b!6563763 res!2693434) b!6563764))

(assert (= (and b!6563759 c!1206282) b!6563758))

(assert (= (and b!6563759 (not c!1206282)) b!6563762))

(assert (= (and b!6563758 res!2693435) b!6563760))

(assert (= (and b!6563762 (not res!2693433)) b!6563761))

(assert (= (and b!6563761 res!2693437) b!6563757))

(assert (= (or b!6563760 b!6563757) bm!570991))

(assert (= (or b!6563758 b!6563761) bm!570990))

(assert (= (or b!6563764 bm!570991) bm!570992))

(declare-fun m!7345890 () Bool)

(assert (=> bm!570990 m!7345890))

(assert (=> b!6563763 m!7343344))

(declare-fun m!7345892 () Bool)

(assert (=> bm!570992 m!7345892))

(assert (=> d!2058759 d!2059507))

(declare-fun d!2059509 () Bool)

(declare-fun c!1206283 () Bool)

(assert (=> d!2059509 (= c!1206283 (isEmpty!37737 (tail!12414 (t!379258 s!2326))))))

(declare-fun e!3973345 () Bool)

(assert (=> d!2059509 (= (matchZipper!2451 (derivationStepZipper!2405 ((_ map or) lt!2406348 lt!2406381) (head!13329 (t!379258 s!2326))) (tail!12414 (t!379258 s!2326))) e!3973345)))

(declare-fun b!6563766 () Bool)

(assert (=> b!6563766 (= e!3973345 (nullableZipper!2184 (derivationStepZipper!2405 ((_ map or) lt!2406348 lt!2406381) (head!13329 (t!379258 s!2326)))))))

(declare-fun b!6563767 () Bool)

(assert (=> b!6563767 (= e!3973345 (matchZipper!2451 (derivationStepZipper!2405 (derivationStepZipper!2405 ((_ map or) lt!2406348 lt!2406381) (head!13329 (t!379258 s!2326))) (head!13329 (tail!12414 (t!379258 s!2326)))) (tail!12414 (tail!12414 (t!379258 s!2326)))))))

(assert (= (and d!2059509 c!1206283) b!6563766))

(assert (= (and d!2059509 (not c!1206283)) b!6563767))

(assert (=> d!2059509 m!7343762))

(declare-fun m!7345894 () Bool)

(assert (=> d!2059509 m!7345894))

(assert (=> b!6563766 m!7344270))

(declare-fun m!7345896 () Bool)

(assert (=> b!6563766 m!7345896))

(assert (=> b!6563767 m!7343762))

(declare-fun m!7345898 () Bool)

(assert (=> b!6563767 m!7345898))

(assert (=> b!6563767 m!7344270))

(assert (=> b!6563767 m!7345898))

(declare-fun m!7345900 () Bool)

(assert (=> b!6563767 m!7345900))

(assert (=> b!6563767 m!7343762))

(declare-fun m!7345902 () Bool)

(assert (=> b!6563767 m!7345902))

(assert (=> b!6563767 m!7345900))

(assert (=> b!6563767 m!7345902))

(declare-fun m!7345904 () Bool)

(assert (=> b!6563767 m!7345904))

(assert (=> b!6562250 d!2059509))

(declare-fun bs!1675988 () Bool)

(declare-fun d!2059511 () Bool)

(assert (= bs!1675988 (and d!2059511 b!6561279)))

(declare-fun lambda!365227 () Int)

(assert (=> bs!1675988 (= (= (head!13329 (t!379258 s!2326)) (h!71940 s!2326)) (= lambda!365227 lambda!365043))))

(declare-fun bs!1675989 () Bool)

(assert (= bs!1675989 (and d!2059511 d!2058835)))

(assert (=> bs!1675989 (= (= (head!13329 (t!379258 s!2326)) (h!71940 s!2326)) (= lambda!365227 lambda!365144))))

(declare-fun bs!1675990 () Bool)

(assert (= bs!1675990 (and d!2059511 d!2059463)))

(assert (=> bs!1675990 (= (= (head!13329 (t!379258 s!2326)) (head!13329 (_1!36721 lt!2406377))) (= lambda!365227 lambda!365220))))

(assert (=> d!2059511 true))

(assert (=> d!2059511 (= (derivationStepZipper!2405 ((_ map or) lt!2406348 lt!2406381) (head!13329 (t!379258 s!2326))) (flatMap!1944 ((_ map or) lt!2406348 lt!2406381) lambda!365227))))

(declare-fun bs!1675991 () Bool)

(assert (= bs!1675991 d!2059511))

(declare-fun m!7345906 () Bool)

(assert (=> bs!1675991 m!7345906))

(assert (=> b!6562250 d!2059511))

(declare-fun d!2059513 () Bool)

(assert (=> d!2059513 (= (head!13329 (t!379258 s!2326)) (h!71940 (t!379258 s!2326)))))

(assert (=> b!6562250 d!2059513))

(declare-fun d!2059515 () Bool)

(assert (=> d!2059515 (= (tail!12414 (t!379258 s!2326)) (t!379258 (t!379258 s!2326)))))

(assert (=> b!6562250 d!2059515))

(declare-fun b!6563768 () Bool)

(declare-fun e!3973347 () List!65616)

(assert (=> b!6563768 (= e!3973347 (t!379258 s!2326))))

(declare-fun b!6563771 () Bool)

(declare-fun e!3973346 () Bool)

(declare-fun lt!2406708 () List!65616)

(assert (=> b!6563771 (= e!3973346 (or (not (= (t!379258 s!2326) Nil!65492)) (= lt!2406708 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)))))))

(declare-fun d!2059517 () Bool)

(assert (=> d!2059517 e!3973346))

(declare-fun res!2693438 () Bool)

(assert (=> d!2059517 (=> (not res!2693438) (not e!3973346))))

(assert (=> d!2059517 (= res!2693438 (= (content!12598 lt!2406708) ((_ map or) (content!12598 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492))) (content!12598 (t!379258 s!2326)))))))

(assert (=> d!2059517 (= lt!2406708 e!3973347)))

(declare-fun c!1206284 () Bool)

(assert (=> d!2059517 (= c!1206284 ((_ is Nil!65492) (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492))))))

(assert (=> d!2059517 (= (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (t!379258 s!2326)) lt!2406708)))

(declare-fun b!6563769 () Bool)

(assert (=> b!6563769 (= e!3973347 (Cons!65492 (h!71940 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492))) (++!14580 (t!379258 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492))) (t!379258 s!2326))))))

(declare-fun b!6563770 () Bool)

(declare-fun res!2693439 () Bool)

(assert (=> b!6563770 (=> (not res!2693439) (not e!3973346))))

(assert (=> b!6563770 (= res!2693439 (= (size!40527 lt!2406708) (+ (size!40527 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492))) (size!40527 (t!379258 s!2326)))))))

(assert (= (and d!2059517 c!1206284) b!6563768))

(assert (= (and d!2059517 (not c!1206284)) b!6563769))

(assert (= (and d!2059517 res!2693438) b!6563770))

(assert (= (and b!6563770 res!2693439) b!6563771))

(declare-fun m!7345908 () Bool)

(assert (=> d!2059517 m!7345908))

(assert (=> d!2059517 m!7344192))

(declare-fun m!7345910 () Bool)

(assert (=> d!2059517 m!7345910))

(declare-fun m!7345912 () Bool)

(assert (=> d!2059517 m!7345912))

(declare-fun m!7345914 () Bool)

(assert (=> b!6563769 m!7345914))

(declare-fun m!7345916 () Bool)

(assert (=> b!6563770 m!7345916))

(assert (=> b!6563770 m!7344192))

(declare-fun m!7345918 () Bool)

(assert (=> b!6563770 m!7345918))

(declare-fun m!7345920 () Bool)

(assert (=> b!6563770 m!7345920))

(assert (=> b!6562281 d!2059517))

(declare-fun b!6563772 () Bool)

(declare-fun e!3973349 () List!65616)

(assert (=> b!6563772 (= e!3973349 (Cons!65492 (h!71940 s!2326) Nil!65492))))

(declare-fun b!6563775 () Bool)

(declare-fun e!3973348 () Bool)

(declare-fun lt!2406709 () List!65616)

(assert (=> b!6563775 (= e!3973348 (or (not (= (Cons!65492 (h!71940 s!2326) Nil!65492) Nil!65492)) (= lt!2406709 Nil!65492)))))

(declare-fun d!2059519 () Bool)

(assert (=> d!2059519 e!3973348))

(declare-fun res!2693440 () Bool)

(assert (=> d!2059519 (=> (not res!2693440) (not e!3973348))))

(assert (=> d!2059519 (= res!2693440 (= (content!12598 lt!2406709) ((_ map or) (content!12598 Nil!65492) (content!12598 (Cons!65492 (h!71940 s!2326) Nil!65492)))))))

(assert (=> d!2059519 (= lt!2406709 e!3973349)))

(declare-fun c!1206285 () Bool)

(assert (=> d!2059519 (= c!1206285 ((_ is Nil!65492) Nil!65492))))

(assert (=> d!2059519 (= (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) lt!2406709)))

(declare-fun b!6563773 () Bool)

(assert (=> b!6563773 (= e!3973349 (Cons!65492 (h!71940 Nil!65492) (++!14580 (t!379258 Nil!65492) (Cons!65492 (h!71940 s!2326) Nil!65492))))))

(declare-fun b!6563774 () Bool)

(declare-fun res!2693441 () Bool)

(assert (=> b!6563774 (=> (not res!2693441) (not e!3973348))))

(assert (=> b!6563774 (= res!2693441 (= (size!40527 lt!2406709) (+ (size!40527 Nil!65492) (size!40527 (Cons!65492 (h!71940 s!2326) Nil!65492)))))))

(assert (= (and d!2059519 c!1206285) b!6563772))

(assert (= (and d!2059519 (not c!1206285)) b!6563773))

(assert (= (and d!2059519 res!2693440) b!6563774))

(assert (= (and b!6563774 res!2693441) b!6563775))

(declare-fun m!7345922 () Bool)

(assert (=> d!2059519 m!7345922))

(declare-fun m!7345924 () Bool)

(assert (=> d!2059519 m!7345924))

(declare-fun m!7345926 () Bool)

(assert (=> d!2059519 m!7345926))

(declare-fun m!7345928 () Bool)

(assert (=> b!6563773 m!7345928))

(declare-fun m!7345930 () Bool)

(assert (=> b!6563774 m!7345930))

(declare-fun m!7345932 () Bool)

(assert (=> b!6563774 m!7345932))

(declare-fun m!7345934 () Bool)

(assert (=> b!6563774 m!7345934))

(assert (=> b!6562281 d!2059519))

(declare-fun d!2059521 () Bool)

(assert (=> d!2059521 (= (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (t!379258 s!2326)) s!2326)))

(declare-fun lt!2406712 () Unit!159091)

(declare-fun choose!48984 (List!65616 C!33148 List!65616 List!65616) Unit!159091)

(assert (=> d!2059521 (= lt!2406712 (choose!48984 Nil!65492 (h!71940 s!2326) (t!379258 s!2326) s!2326))))

(assert (=> d!2059521 (= (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) (t!379258 s!2326))) s!2326)))

(assert (=> d!2059521 (= (lemmaMoveElementToOtherListKeepsConcatEq!2582 Nil!65492 (h!71940 s!2326) (t!379258 s!2326) s!2326) lt!2406712)))

(declare-fun bs!1675992 () Bool)

(assert (= bs!1675992 d!2059521))

(assert (=> bs!1675992 m!7344192))

(assert (=> bs!1675992 m!7344192))

(assert (=> bs!1675992 m!7344194))

(declare-fun m!7345936 () Bool)

(assert (=> bs!1675992 m!7345936))

(declare-fun m!7345938 () Bool)

(assert (=> bs!1675992 m!7345938))

(assert (=> b!6562281 d!2059521))

(declare-fun b!6563776 () Bool)

(declare-fun e!3973352 () Bool)

(declare-fun lt!2406714 () Option!16330)

(assert (=> b!6563776 (= e!3973352 (not (isDefined!13033 lt!2406714)))))

(declare-fun b!6563777 () Bool)

(declare-fun res!2693446 () Bool)

(declare-fun e!3973351 () Bool)

(assert (=> b!6563777 (=> (not res!2693446) (not e!3973351))))

(assert (=> b!6563777 (= res!2693446 (matchR!8622 lt!2406360 (_1!36721 (get!22740 lt!2406714))))))

(declare-fun b!6563778 () Bool)

(declare-fun lt!2406713 () Unit!159091)

(declare-fun lt!2406715 () Unit!159091)

(assert (=> b!6563778 (= lt!2406713 lt!2406715)))

(assert (=> b!6563778 (= (++!14580 (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (Cons!65492 (h!71940 (t!379258 s!2326)) Nil!65492)) (t!379258 (t!379258 s!2326))) s!2326)))

(assert (=> b!6563778 (= lt!2406715 (lemmaMoveElementToOtherListKeepsConcatEq!2582 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (h!71940 (t!379258 s!2326)) (t!379258 (t!379258 s!2326)) s!2326))))

(declare-fun e!3973353 () Option!16330)

(assert (=> b!6563778 (= e!3973353 (findConcatSeparation!2744 lt!2406360 (regTwo!33390 r!7292) (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (Cons!65492 (h!71940 (t!379258 s!2326)) Nil!65492)) (t!379258 (t!379258 s!2326)) s!2326))))

(declare-fun b!6563779 () Bool)

(declare-fun e!3973350 () Option!16330)

(assert (=> b!6563779 (= e!3973350 e!3973353)))

(declare-fun c!1206287 () Bool)

(assert (=> b!6563779 (= c!1206287 ((_ is Nil!65492) (t!379258 s!2326)))))

(declare-fun d!2059523 () Bool)

(assert (=> d!2059523 e!3973352))

(declare-fun res!2693445 () Bool)

(assert (=> d!2059523 (=> res!2693445 e!3973352)))

(assert (=> d!2059523 (= res!2693445 e!3973351)))

(declare-fun res!2693443 () Bool)

(assert (=> d!2059523 (=> (not res!2693443) (not e!3973351))))

(assert (=> d!2059523 (= res!2693443 (isDefined!13033 lt!2406714))))

(assert (=> d!2059523 (= lt!2406714 e!3973350)))

(declare-fun c!1206286 () Bool)

(declare-fun e!3973354 () Bool)

(assert (=> d!2059523 (= c!1206286 e!3973354)))

(declare-fun res!2693442 () Bool)

(assert (=> d!2059523 (=> (not res!2693442) (not e!3973354))))

(assert (=> d!2059523 (= res!2693442 (matchR!8622 lt!2406360 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492))))))

(assert (=> d!2059523 (validRegex!8175 lt!2406360)))

(assert (=> d!2059523 (= (findConcatSeparation!2744 lt!2406360 (regTwo!33390 r!7292) (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (t!379258 s!2326) s!2326) lt!2406714)))

(declare-fun b!6563780 () Bool)

(assert (=> b!6563780 (= e!3973353 None!16329)))

(declare-fun b!6563781 () Bool)

(assert (=> b!6563781 (= e!3973350 (Some!16329 (tuple2!66837 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (t!379258 s!2326))))))

(declare-fun b!6563782 () Bool)

(declare-fun res!2693444 () Bool)

(assert (=> b!6563782 (=> (not res!2693444) (not e!3973351))))

(assert (=> b!6563782 (= res!2693444 (matchR!8622 (regTwo!33390 r!7292) (_2!36721 (get!22740 lt!2406714))))))

(declare-fun b!6563783 () Bool)

(assert (=> b!6563783 (= e!3973351 (= (++!14580 (_1!36721 (get!22740 lt!2406714)) (_2!36721 (get!22740 lt!2406714))) s!2326))))

(declare-fun b!6563784 () Bool)

(assert (=> b!6563784 (= e!3973354 (matchR!8622 (regTwo!33390 r!7292) (t!379258 s!2326)))))

(assert (= (and d!2059523 res!2693442) b!6563784))

(assert (= (and d!2059523 c!1206286) b!6563781))

(assert (= (and d!2059523 (not c!1206286)) b!6563779))

(assert (= (and b!6563779 c!1206287) b!6563780))

(assert (= (and b!6563779 (not c!1206287)) b!6563778))

(assert (= (and d!2059523 res!2693443) b!6563777))

(assert (= (and b!6563777 res!2693446) b!6563782))

(assert (= (and b!6563782 res!2693444) b!6563783))

(assert (= (and d!2059523 (not res!2693445)) b!6563776))

(declare-fun m!7345940 () Bool)

(assert (=> d!2059523 m!7345940))

(assert (=> d!2059523 m!7344192))

(declare-fun m!7345942 () Bool)

(assert (=> d!2059523 m!7345942))

(assert (=> d!2059523 m!7343856))

(declare-fun m!7345944 () Bool)

(assert (=> b!6563784 m!7345944))

(assert (=> b!6563776 m!7345940))

(declare-fun m!7345946 () Bool)

(assert (=> b!6563777 m!7345946))

(declare-fun m!7345948 () Bool)

(assert (=> b!6563777 m!7345948))

(assert (=> b!6563782 m!7345946))

(declare-fun m!7345950 () Bool)

(assert (=> b!6563782 m!7345950))

(assert (=> b!6563778 m!7344192))

(declare-fun m!7345952 () Bool)

(assert (=> b!6563778 m!7345952))

(assert (=> b!6563778 m!7345952))

(declare-fun m!7345954 () Bool)

(assert (=> b!6563778 m!7345954))

(assert (=> b!6563778 m!7344192))

(declare-fun m!7345956 () Bool)

(assert (=> b!6563778 m!7345956))

(assert (=> b!6563778 m!7345952))

(declare-fun m!7345958 () Bool)

(assert (=> b!6563778 m!7345958))

(assert (=> b!6563783 m!7345946))

(declare-fun m!7345960 () Bool)

(assert (=> b!6563783 m!7345960))

(assert (=> b!6562281 d!2059523))

(declare-fun d!2059525 () Bool)

(declare-fun c!1206288 () Bool)

(assert (=> d!2059525 (= c!1206288 (isEmpty!37737 (_2!36721 (get!22740 lt!2406558))))))

(declare-fun e!3973355 () Bool)

(assert (=> d!2059525 (= (matchZipper!2451 lt!2406394 (_2!36721 (get!22740 lt!2406558))) e!3973355)))

(declare-fun b!6563785 () Bool)

(assert (=> b!6563785 (= e!3973355 (nullableZipper!2184 lt!2406394))))

(declare-fun b!6563786 () Bool)

(assert (=> b!6563786 (= e!3973355 (matchZipper!2451 (derivationStepZipper!2405 lt!2406394 (head!13329 (_2!36721 (get!22740 lt!2406558)))) (tail!12414 (_2!36721 (get!22740 lt!2406558)))))))

(assert (= (and d!2059525 c!1206288) b!6563785))

(assert (= (and d!2059525 (not c!1206288)) b!6563786))

(declare-fun m!7345962 () Bool)

(assert (=> d!2059525 m!7345962))

(assert (=> b!6563785 m!7343780))

(declare-fun m!7345964 () Bool)

(assert (=> b!6563786 m!7345964))

(assert (=> b!6563786 m!7345964))

(declare-fun m!7345966 () Bool)

(assert (=> b!6563786 m!7345966))

(declare-fun m!7345968 () Bool)

(assert (=> b!6563786 m!7345968))

(assert (=> b!6563786 m!7345966))

(assert (=> b!6563786 m!7345968))

(declare-fun m!7345970 () Bool)

(assert (=> b!6563786 m!7345970))

(assert (=> b!6562180 d!2059525))

(declare-fun d!2059527 () Bool)

(assert (=> d!2059527 (= (get!22740 lt!2406558) (v!52514 lt!2406558))))

(assert (=> b!6562180 d!2059527))

(declare-fun d!2059529 () Bool)

(assert (=> d!2059529 (= (isUnion!1256 lt!2406540) ((_ is Union!16439) lt!2406540))))

(assert (=> b!6562100 d!2059529))

(declare-fun d!2059531 () Bool)

(assert (=> d!2059531 (= (isEmpty!37737 (_2!36721 lt!2406377)) ((_ is Nil!65492) (_2!36721 lt!2406377)))))

(assert (=> d!2058785 d!2059531))

(declare-fun b!6563787 () Bool)

(declare-fun e!3973357 () Bool)

(declare-fun call!570998 () Bool)

(assert (=> b!6563787 (= e!3973357 call!570998)))

(declare-fun b!6563788 () Bool)

(declare-fun res!2693449 () Bool)

(declare-fun e!3973356 () Bool)

(assert (=> b!6563788 (=> (not res!2693449) (not e!3973356))))

(declare-fun call!571000 () Bool)

(assert (=> b!6563788 (= res!2693449 call!571000)))

(declare-fun e!3973359 () Bool)

(assert (=> b!6563788 (= e!3973359 e!3973356)))

(declare-fun b!6563789 () Bool)

(declare-fun e!3973362 () Bool)

(assert (=> b!6563789 (= e!3973362 e!3973359)))

(declare-fun c!1206290 () Bool)

(assert (=> b!6563789 (= c!1206290 ((_ is Union!16439) lt!2406341))))

(declare-fun bm!570993 () Bool)

(assert (=> bm!570993 (= call!571000 (validRegex!8175 (ite c!1206290 (regOne!33391 lt!2406341) (regOne!33390 lt!2406341))))))

(declare-fun b!6563790 () Bool)

(assert (=> b!6563790 (= e!3973356 call!570998)))

(declare-fun b!6563791 () Bool)

(declare-fun e!3973360 () Bool)

(assert (=> b!6563791 (= e!3973360 e!3973357)))

(declare-fun res!2693451 () Bool)

(assert (=> b!6563791 (=> (not res!2693451) (not e!3973357))))

(assert (=> b!6563791 (= res!2693451 call!571000)))

(declare-fun b!6563792 () Bool)

(declare-fun res!2693447 () Bool)

(assert (=> b!6563792 (=> res!2693447 e!3973360)))

(assert (=> b!6563792 (= res!2693447 (not ((_ is Concat!25284) lt!2406341)))))

(assert (=> b!6563792 (= e!3973359 e!3973360)))

(declare-fun b!6563793 () Bool)

(declare-fun e!3973358 () Bool)

(assert (=> b!6563793 (= e!3973362 e!3973358)))

(declare-fun res!2693448 () Bool)

(assert (=> b!6563793 (= res!2693448 (not (nullable!6432 (reg!16768 lt!2406341))))))

(assert (=> b!6563793 (=> (not res!2693448) (not e!3973358))))

(declare-fun d!2059533 () Bool)

(declare-fun res!2693450 () Bool)

(declare-fun e!3973361 () Bool)

(assert (=> d!2059533 (=> res!2693450 e!3973361)))

(assert (=> d!2059533 (= res!2693450 ((_ is ElementMatch!16439) lt!2406341))))

(assert (=> d!2059533 (= (validRegex!8175 lt!2406341) e!3973361)))

(declare-fun b!6563794 () Bool)

(declare-fun call!570999 () Bool)

(assert (=> b!6563794 (= e!3973358 call!570999)))

(declare-fun bm!570994 () Bool)

(assert (=> bm!570994 (= call!570998 call!570999)))

(declare-fun b!6563795 () Bool)

(assert (=> b!6563795 (= e!3973361 e!3973362)))

(declare-fun c!1206289 () Bool)

(assert (=> b!6563795 (= c!1206289 ((_ is Star!16439) lt!2406341))))

(declare-fun bm!570995 () Bool)

(assert (=> bm!570995 (= call!570999 (validRegex!8175 (ite c!1206289 (reg!16768 lt!2406341) (ite c!1206290 (regTwo!33391 lt!2406341) (regTwo!33390 lt!2406341)))))))

(assert (= (and d!2059533 (not res!2693450)) b!6563795))

(assert (= (and b!6563795 c!1206289) b!6563793))

(assert (= (and b!6563795 (not c!1206289)) b!6563789))

(assert (= (and b!6563793 res!2693448) b!6563794))

(assert (= (and b!6563789 c!1206290) b!6563788))

(assert (= (and b!6563789 (not c!1206290)) b!6563792))

(assert (= (and b!6563788 res!2693449) b!6563790))

(assert (= (and b!6563792 (not res!2693447)) b!6563791))

(assert (= (and b!6563791 res!2693451) b!6563787))

(assert (= (or b!6563790 b!6563787) bm!570994))

(assert (= (or b!6563788 b!6563791) bm!570993))

(assert (= (or b!6563794 bm!570994) bm!570995))

(declare-fun m!7345972 () Bool)

(assert (=> bm!570993 m!7345972))

(declare-fun m!7345974 () Bool)

(assert (=> b!6563793 m!7345974))

(declare-fun m!7345976 () Bool)

(assert (=> bm!570995 m!7345976))

(assert (=> d!2058785 d!2059533))

(declare-fun d!2059535 () Bool)

(declare-fun c!1206291 () Bool)

(assert (=> d!2059535 (= c!1206291 (isEmpty!37737 (tail!12414 s!2326)))))

(declare-fun e!3973363 () Bool)

(assert (=> d!2059535 (= (matchZipper!2451 (derivationStepZipper!2405 lt!2406385 (head!13329 s!2326)) (tail!12414 s!2326)) e!3973363)))

(declare-fun b!6563796 () Bool)

(assert (=> b!6563796 (= e!3973363 (nullableZipper!2184 (derivationStepZipper!2405 lt!2406385 (head!13329 s!2326))))))

(declare-fun b!6563797 () Bool)

(assert (=> b!6563797 (= e!3973363 (matchZipper!2451 (derivationStepZipper!2405 (derivationStepZipper!2405 lt!2406385 (head!13329 s!2326)) (head!13329 (tail!12414 s!2326))) (tail!12414 (tail!12414 s!2326))))))

(assert (= (and d!2059535 c!1206291) b!6563796))

(assert (= (and d!2059535 (not c!1206291)) b!6563797))

(assert (=> d!2059535 m!7343774))

(assert (=> d!2059535 m!7344250))

(assert (=> b!6563796 m!7343772))

(declare-fun m!7345978 () Bool)

(assert (=> b!6563796 m!7345978))

(assert (=> b!6563797 m!7343774))

(declare-fun m!7345980 () Bool)

(assert (=> b!6563797 m!7345980))

(assert (=> b!6563797 m!7343772))

(assert (=> b!6563797 m!7345980))

(declare-fun m!7345982 () Bool)

(assert (=> b!6563797 m!7345982))

(assert (=> b!6563797 m!7343774))

(declare-fun m!7345984 () Bool)

(assert (=> b!6563797 m!7345984))

(assert (=> b!6563797 m!7345982))

(assert (=> b!6563797 m!7345984))

(declare-fun m!7345986 () Bool)

(assert (=> b!6563797 m!7345986))

(assert (=> b!6561756 d!2059535))

(declare-fun bs!1675993 () Bool)

(declare-fun d!2059537 () Bool)

(assert (= bs!1675993 (and d!2059537 b!6561279)))

(declare-fun lambda!365228 () Int)

(assert (=> bs!1675993 (= (= (head!13329 s!2326) (h!71940 s!2326)) (= lambda!365228 lambda!365043))))

(declare-fun bs!1675994 () Bool)

(assert (= bs!1675994 (and d!2059537 d!2058835)))

(assert (=> bs!1675994 (= (= (head!13329 s!2326) (h!71940 s!2326)) (= lambda!365228 lambda!365144))))

(declare-fun bs!1675995 () Bool)

(assert (= bs!1675995 (and d!2059537 d!2059463)))

(assert (=> bs!1675995 (= (= (head!13329 s!2326) (head!13329 (_1!36721 lt!2406377))) (= lambda!365228 lambda!365220))))

(declare-fun bs!1675996 () Bool)

(assert (= bs!1675996 (and d!2059537 d!2059511)))

(assert (=> bs!1675996 (= (= (head!13329 s!2326) (head!13329 (t!379258 s!2326))) (= lambda!365228 lambda!365227))))

(assert (=> d!2059537 true))

(assert (=> d!2059537 (= (derivationStepZipper!2405 lt!2406385 (head!13329 s!2326)) (flatMap!1944 lt!2406385 lambda!365228))))

(declare-fun bs!1675997 () Bool)

(assert (= bs!1675997 d!2059537))

(declare-fun m!7345988 () Bool)

(assert (=> bs!1675997 m!7345988))

(assert (=> b!6561756 d!2059537))

(declare-fun d!2059539 () Bool)

(assert (=> d!2059539 (= (head!13329 s!2326) (h!71940 s!2326))))

(assert (=> b!6561756 d!2059539))

(declare-fun d!2059541 () Bool)

(assert (=> d!2059541 (= (tail!12414 s!2326) (t!379258 s!2326))))

(assert (=> b!6561756 d!2059541))

(declare-fun d!2059543 () Bool)

(assert (=> d!2059543 (= (isEmpty!37737 lt!2406375) ((_ is Nil!65492) lt!2406375))))

(assert (=> bm!570760 d!2059543))

(declare-fun bm!570996 () Bool)

(declare-fun call!571002 () List!65617)

(declare-fun call!571006 () List!65617)

(assert (=> bm!570996 (= call!571002 call!571006)))

(declare-fun b!6563798 () Bool)

(declare-fun e!3973366 () (InoxSet Context!11646))

(assert (=> b!6563798 (= e!3973366 (store ((as const (Array Context!11646 Bool)) false) (ite (or c!1205918 c!1205922) lt!2406386 (Context!11647 call!570771)) true))))

(declare-fun b!6563799 () Bool)

(declare-fun e!3973369 () (InoxSet Context!11646))

(declare-fun e!3973368 () (InoxSet Context!11646))

(assert (=> b!6563799 (= e!3973369 e!3973368)))

(declare-fun c!1206294 () Bool)

(assert (=> b!6563799 (= c!1206294 ((_ is Concat!25284) (ite c!1205918 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205922 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205920 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343)))))))))))

(declare-fun b!6563800 () Bool)

(declare-fun e!3973367 () (InoxSet Context!11646))

(declare-fun call!571005 () (InoxSet Context!11646))

(assert (=> b!6563800 (= e!3973367 call!571005)))

(declare-fun b!6563801 () Bool)

(declare-fun call!571004 () (InoxSet Context!11646))

(declare-fun call!571001 () (InoxSet Context!11646))

(assert (=> b!6563801 (= e!3973369 ((_ map or) call!571004 call!571001))))

(declare-fun bm!570997 () Bool)

(declare-fun c!1206292 () Bool)

(assert (=> bm!570997 (= call!571004 (derivationStepZipperDown!1687 (ite c!1206292 (regOne!33391 (ite c!1205918 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205922 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205920 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343)))))))) (regOne!33390 (ite c!1205918 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205922 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205920 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343))))))))) (ite c!1206292 (ite (or c!1205918 c!1205922) lt!2406386 (Context!11647 call!570771)) (Context!11647 call!571006)) (h!71940 s!2326)))))

(declare-fun b!6563802 () Bool)

(assert (=> b!6563802 (= e!3973368 call!571005)))

(declare-fun bm!570998 () Bool)

(declare-fun c!1206296 () Bool)

(declare-fun call!571003 () (InoxSet Context!11646))

(assert (=> bm!570998 (= call!571003 (derivationStepZipperDown!1687 (ite c!1206292 (regTwo!33391 (ite c!1205918 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205922 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205920 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343)))))))) (ite c!1206296 (regTwo!33390 (ite c!1205918 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205922 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205920 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343)))))))) (ite c!1206294 (regOne!33390 (ite c!1205918 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205922 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205920 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343)))))))) (reg!16768 (ite c!1205918 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205922 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205920 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343))))))))))) (ite (or c!1206292 c!1206296) (ite (or c!1205918 c!1205922) lt!2406386 (Context!11647 call!570771)) (Context!11647 call!571002)) (h!71940 s!2326)))))

(declare-fun b!6563803 () Bool)

(declare-fun e!3973364 () Bool)

(assert (=> b!6563803 (= e!3973364 (nullable!6432 (regOne!33390 (ite c!1205918 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205922 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205920 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343))))))))))))

(declare-fun bm!570999 () Bool)

(assert (=> bm!570999 (= call!571005 call!571001)))

(declare-fun bm!571000 () Bool)

(assert (=> bm!571000 (= call!571001 call!571003)))

(declare-fun b!6563804 () Bool)

(declare-fun c!1206295 () Bool)

(assert (=> b!6563804 (= c!1206295 ((_ is Star!16439) (ite c!1205918 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205922 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205920 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343)))))))))))

(assert (=> b!6563804 (= e!3973368 e!3973367)))

(declare-fun b!6563805 () Bool)

(assert (=> b!6563805 (= e!3973367 ((as const (Array Context!11646 Bool)) false))))

(declare-fun b!6563806 () Bool)

(declare-fun e!3973365 () (InoxSet Context!11646))

(assert (=> b!6563806 (= e!3973366 e!3973365)))

(assert (=> b!6563806 (= c!1206292 ((_ is Union!16439) (ite c!1205918 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205922 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205920 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343)))))))))))

(declare-fun bm!571001 () Bool)

(assert (=> bm!571001 (= call!571006 ($colon$colon!2280 (exprs!6323 (ite (or c!1205918 c!1205922) lt!2406386 (Context!11647 call!570771))) (ite (or c!1206296 c!1206294) (regTwo!33390 (ite c!1205918 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205922 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205920 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343)))))))) (ite c!1205918 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205922 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205920 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343))))))))))))

(declare-fun b!6563807 () Bool)

(assert (=> b!6563807 (= e!3973365 ((_ map or) call!571004 call!571003))))

(declare-fun c!1206293 () Bool)

(declare-fun d!2059545 () Bool)

(assert (=> d!2059545 (= c!1206293 (and ((_ is ElementMatch!16439) (ite c!1205918 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205922 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205920 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343)))))))) (= (c!1205620 (ite c!1205918 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205922 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205920 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343)))))))) (h!71940 s!2326))))))

(assert (=> d!2059545 (= (derivationStepZipperDown!1687 (ite c!1205918 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205922 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205920 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343))))))) (ite (or c!1205918 c!1205922) lt!2406386 (Context!11647 call!570771)) (h!71940 s!2326)) e!3973366)))

(declare-fun b!6563808 () Bool)

(assert (=> b!6563808 (= c!1206296 e!3973364)))

(declare-fun res!2693452 () Bool)

(assert (=> b!6563808 (=> (not res!2693452) (not e!3973364))))

(assert (=> b!6563808 (= res!2693452 ((_ is Concat!25284) (ite c!1205918 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205922 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1205920 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343)))))))))))

(assert (=> b!6563808 (= e!3973365 e!3973369)))

(assert (= (and d!2059545 c!1206293) b!6563798))

(assert (= (and d!2059545 (not c!1206293)) b!6563806))

(assert (= (and b!6563806 c!1206292) b!6563807))

(assert (= (and b!6563806 (not c!1206292)) b!6563808))

(assert (= (and b!6563808 res!2693452) b!6563803))

(assert (= (and b!6563808 c!1206296) b!6563801))

(assert (= (and b!6563808 (not c!1206296)) b!6563799))

(assert (= (and b!6563799 c!1206294) b!6563802))

(assert (= (and b!6563799 (not c!1206294)) b!6563804))

(assert (= (and b!6563804 c!1206295) b!6563800))

(assert (= (and b!6563804 (not c!1206295)) b!6563805))

(assert (= (or b!6563802 b!6563800) bm!570996))

(assert (= (or b!6563802 b!6563800) bm!570999))

(assert (= (or b!6563801 bm!570996) bm!571001))

(assert (= (or b!6563801 bm!570999) bm!571000))

(assert (= (or b!6563807 bm!571000) bm!570998))

(assert (= (or b!6563807 b!6563801) bm!570997))

(declare-fun m!7345990 () Bool)

(assert (=> b!6563803 m!7345990))

(declare-fun m!7345992 () Bool)

(assert (=> b!6563798 m!7345992))

(declare-fun m!7345994 () Bool)

(assert (=> bm!571001 m!7345994))

(declare-fun m!7345996 () Bool)

(assert (=> bm!570997 m!7345996))

(declare-fun m!7345998 () Bool)

(assert (=> bm!570998 m!7345998))

(assert (=> bm!570767 d!2059545))

(declare-fun b!6563809 () Bool)

(declare-fun e!3973371 () Bool)

(declare-fun call!571007 () Bool)

(assert (=> b!6563809 (= e!3973371 call!571007)))

(declare-fun b!6563810 () Bool)

(declare-fun res!2693455 () Bool)

(declare-fun e!3973370 () Bool)

(assert (=> b!6563810 (=> (not res!2693455) (not e!3973370))))

(declare-fun call!571009 () Bool)

(assert (=> b!6563810 (= res!2693455 call!571009)))

(declare-fun e!3973373 () Bool)

(assert (=> b!6563810 (= e!3973373 e!3973370)))

(declare-fun b!6563811 () Bool)

(declare-fun e!3973376 () Bool)

(assert (=> b!6563811 (= e!3973376 e!3973373)))

(declare-fun c!1206298 () Bool)

(assert (=> b!6563811 (= c!1206298 ((_ is Union!16439) (ite c!1205752 (reg!16768 (reg!16768 (regOne!33390 r!7292))) (ite c!1205753 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (regTwo!33390 (reg!16768 (regOne!33390 r!7292)))))))))

(declare-fun bm!571002 () Bool)

(assert (=> bm!571002 (= call!571009 (validRegex!8175 (ite c!1206298 (regOne!33391 (ite c!1205752 (reg!16768 (reg!16768 (regOne!33390 r!7292))) (ite c!1205753 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (regTwo!33390 (reg!16768 (regOne!33390 r!7292)))))) (regOne!33390 (ite c!1205752 (reg!16768 (reg!16768 (regOne!33390 r!7292))) (ite c!1205753 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (regTwo!33390 (reg!16768 (regOne!33390 r!7292)))))))))))

(declare-fun b!6563812 () Bool)

(assert (=> b!6563812 (= e!3973370 call!571007)))

(declare-fun b!6563813 () Bool)

(declare-fun e!3973374 () Bool)

(assert (=> b!6563813 (= e!3973374 e!3973371)))

(declare-fun res!2693457 () Bool)

(assert (=> b!6563813 (=> (not res!2693457) (not e!3973371))))

(assert (=> b!6563813 (= res!2693457 call!571009)))

(declare-fun b!6563814 () Bool)

(declare-fun res!2693453 () Bool)

(assert (=> b!6563814 (=> res!2693453 e!3973374)))

(assert (=> b!6563814 (= res!2693453 (not ((_ is Concat!25284) (ite c!1205752 (reg!16768 (reg!16768 (regOne!33390 r!7292))) (ite c!1205753 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (regTwo!33390 (reg!16768 (regOne!33390 r!7292))))))))))

(assert (=> b!6563814 (= e!3973373 e!3973374)))

(declare-fun b!6563815 () Bool)

(declare-fun e!3973372 () Bool)

(assert (=> b!6563815 (= e!3973376 e!3973372)))

(declare-fun res!2693454 () Bool)

(assert (=> b!6563815 (= res!2693454 (not (nullable!6432 (reg!16768 (ite c!1205752 (reg!16768 (reg!16768 (regOne!33390 r!7292))) (ite c!1205753 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (regTwo!33390 (reg!16768 (regOne!33390 r!7292)))))))))))

(assert (=> b!6563815 (=> (not res!2693454) (not e!3973372))))

(declare-fun d!2059547 () Bool)

(declare-fun res!2693456 () Bool)

(declare-fun e!3973375 () Bool)

(assert (=> d!2059547 (=> res!2693456 e!3973375)))

(assert (=> d!2059547 (= res!2693456 ((_ is ElementMatch!16439) (ite c!1205752 (reg!16768 (reg!16768 (regOne!33390 r!7292))) (ite c!1205753 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (regTwo!33390 (reg!16768 (regOne!33390 r!7292)))))))))

(assert (=> d!2059547 (= (validRegex!8175 (ite c!1205752 (reg!16768 (reg!16768 (regOne!33390 r!7292))) (ite c!1205753 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (regTwo!33390 (reg!16768 (regOne!33390 r!7292)))))) e!3973375)))

(declare-fun b!6563816 () Bool)

(declare-fun call!571008 () Bool)

(assert (=> b!6563816 (= e!3973372 call!571008)))

(declare-fun bm!571003 () Bool)

(assert (=> bm!571003 (= call!571007 call!571008)))

(declare-fun b!6563817 () Bool)

(assert (=> b!6563817 (= e!3973375 e!3973376)))

(declare-fun c!1206297 () Bool)

(assert (=> b!6563817 (= c!1206297 ((_ is Star!16439) (ite c!1205752 (reg!16768 (reg!16768 (regOne!33390 r!7292))) (ite c!1205753 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (regTwo!33390 (reg!16768 (regOne!33390 r!7292)))))))))

(declare-fun bm!571004 () Bool)

(assert (=> bm!571004 (= call!571008 (validRegex!8175 (ite c!1206297 (reg!16768 (ite c!1205752 (reg!16768 (reg!16768 (regOne!33390 r!7292))) (ite c!1205753 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (regTwo!33390 (reg!16768 (regOne!33390 r!7292)))))) (ite c!1206298 (regTwo!33391 (ite c!1205752 (reg!16768 (reg!16768 (regOne!33390 r!7292))) (ite c!1205753 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (regTwo!33390 (reg!16768 (regOne!33390 r!7292)))))) (regTwo!33390 (ite c!1205752 (reg!16768 (reg!16768 (regOne!33390 r!7292))) (ite c!1205753 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (regTwo!33390 (reg!16768 (regOne!33390 r!7292))))))))))))

(assert (= (and d!2059547 (not res!2693456)) b!6563817))

(assert (= (and b!6563817 c!1206297) b!6563815))

(assert (= (and b!6563817 (not c!1206297)) b!6563811))

(assert (= (and b!6563815 res!2693454) b!6563816))

(assert (= (and b!6563811 c!1206298) b!6563810))

(assert (= (and b!6563811 (not c!1206298)) b!6563814))

(assert (= (and b!6563810 res!2693455) b!6563812))

(assert (= (and b!6563814 (not res!2693453)) b!6563813))

(assert (= (and b!6563813 res!2693457) b!6563809))

(assert (= (or b!6563812 b!6563809) bm!571003))

(assert (= (or b!6563810 b!6563813) bm!571002))

(assert (= (or b!6563816 bm!571003) bm!571004))

(declare-fun m!7346000 () Bool)

(assert (=> bm!571002 m!7346000))

(declare-fun m!7346002 () Bool)

(assert (=> b!6563815 m!7346002))

(declare-fun m!7346004 () Bool)

(assert (=> bm!571004 m!7346004))

(assert (=> bm!570694 d!2059547))

(declare-fun b!6563818 () Bool)

(declare-fun e!3973379 () Bool)

(declare-fun e!3973382 () Bool)

(assert (=> b!6563818 (= e!3973379 e!3973382)))

(declare-fun res!2693464 () Bool)

(assert (=> b!6563818 (=> (not res!2693464) (not e!3973382))))

(declare-fun lt!2406716 () Bool)

(assert (=> b!6563818 (= res!2693464 (not lt!2406716))))

(declare-fun b!6563819 () Bool)

(declare-fun res!2693461 () Bool)

(declare-fun e!3973381 () Bool)

(assert (=> b!6563819 (=> res!2693461 e!3973381)))

(assert (=> b!6563819 (= res!2693461 (not (isEmpty!37737 (tail!12414 (_1!36721 (get!22740 lt!2406562))))))))

(declare-fun b!6563820 () Bool)

(declare-fun e!3973377 () Bool)

(declare-fun call!571010 () Bool)

(assert (=> b!6563820 (= e!3973377 (= lt!2406716 call!571010))))

(declare-fun b!6563822 () Bool)

(declare-fun res!2693460 () Bool)

(declare-fun e!3973380 () Bool)

(assert (=> b!6563822 (=> (not res!2693460) (not e!3973380))))

(assert (=> b!6563822 (= res!2693460 (isEmpty!37737 (tail!12414 (_1!36721 (get!22740 lt!2406562)))))))

(declare-fun b!6563823 () Bool)

(assert (=> b!6563823 (= e!3973380 (= (head!13329 (_1!36721 (get!22740 lt!2406562))) (c!1205620 (regOne!33390 r!7292))))))

(declare-fun b!6563824 () Bool)

(declare-fun res!2693462 () Bool)

(assert (=> b!6563824 (=> res!2693462 e!3973379)))

(assert (=> b!6563824 (= res!2693462 e!3973380)))

(declare-fun res!2693458 () Bool)

(assert (=> b!6563824 (=> (not res!2693458) (not e!3973380))))

(assert (=> b!6563824 (= res!2693458 lt!2406716)))

(declare-fun b!6563825 () Bool)

(declare-fun e!3973383 () Bool)

(assert (=> b!6563825 (= e!3973383 (not lt!2406716))))

(declare-fun b!6563826 () Bool)

(declare-fun res!2693465 () Bool)

(assert (=> b!6563826 (=> (not res!2693465) (not e!3973380))))

(assert (=> b!6563826 (= res!2693465 (not call!571010))))

(declare-fun b!6563827 () Bool)

(assert (=> b!6563827 (= e!3973382 e!3973381)))

(declare-fun res!2693459 () Bool)

(assert (=> b!6563827 (=> res!2693459 e!3973381)))

(assert (=> b!6563827 (= res!2693459 call!571010)))

(declare-fun b!6563828 () Bool)

(declare-fun e!3973378 () Bool)

(assert (=> b!6563828 (= e!3973378 (nullable!6432 (regOne!33390 r!7292)))))

(declare-fun bm!571005 () Bool)

(assert (=> bm!571005 (= call!571010 (isEmpty!37737 (_1!36721 (get!22740 lt!2406562))))))

(declare-fun b!6563829 () Bool)

(assert (=> b!6563829 (= e!3973377 e!3973383)))

(declare-fun c!1206299 () Bool)

(assert (=> b!6563829 (= c!1206299 ((_ is EmptyLang!16439) (regOne!33390 r!7292)))))

(declare-fun b!6563830 () Bool)

(declare-fun res!2693463 () Bool)

(assert (=> b!6563830 (=> res!2693463 e!3973379)))

(assert (=> b!6563830 (= res!2693463 (not ((_ is ElementMatch!16439) (regOne!33390 r!7292))))))

(assert (=> b!6563830 (= e!3973383 e!3973379)))

(declare-fun b!6563831 () Bool)

(assert (=> b!6563831 (= e!3973378 (matchR!8622 (derivativeStep!5123 (regOne!33390 r!7292) (head!13329 (_1!36721 (get!22740 lt!2406562)))) (tail!12414 (_1!36721 (get!22740 lt!2406562)))))))

(declare-fun d!2059549 () Bool)

(assert (=> d!2059549 e!3973377))

(declare-fun c!1206301 () Bool)

(assert (=> d!2059549 (= c!1206301 ((_ is EmptyExpr!16439) (regOne!33390 r!7292)))))

(assert (=> d!2059549 (= lt!2406716 e!3973378)))

(declare-fun c!1206300 () Bool)

(assert (=> d!2059549 (= c!1206300 (isEmpty!37737 (_1!36721 (get!22740 lt!2406562))))))

(assert (=> d!2059549 (validRegex!8175 (regOne!33390 r!7292))))

(assert (=> d!2059549 (= (matchR!8622 (regOne!33390 r!7292) (_1!36721 (get!22740 lt!2406562))) lt!2406716)))

(declare-fun b!6563821 () Bool)

(assert (=> b!6563821 (= e!3973381 (not (= (head!13329 (_1!36721 (get!22740 lt!2406562))) (c!1205620 (regOne!33390 r!7292)))))))

(assert (= (and d!2059549 c!1206300) b!6563828))

(assert (= (and d!2059549 (not c!1206300)) b!6563831))

(assert (= (and d!2059549 c!1206301) b!6563820))

(assert (= (and d!2059549 (not c!1206301)) b!6563829))

(assert (= (and b!6563829 c!1206299) b!6563825))

(assert (= (and b!6563829 (not c!1206299)) b!6563830))

(assert (= (and b!6563830 (not res!2693463)) b!6563824))

(assert (= (and b!6563824 res!2693458) b!6563826))

(assert (= (and b!6563826 res!2693465) b!6563822))

(assert (= (and b!6563822 res!2693460) b!6563823))

(assert (= (and b!6563824 (not res!2693462)) b!6563818))

(assert (= (and b!6563818 res!2693464) b!6563827))

(assert (= (and b!6563827 (not res!2693459)) b!6563819))

(assert (= (and b!6563819 (not res!2693461)) b!6563821))

(assert (= (or b!6563820 b!6563826 b!6563827) bm!571005))

(declare-fun m!7346006 () Bool)

(assert (=> bm!571005 m!7346006))

(assert (=> d!2059549 m!7346006))

(assert (=> d!2059549 m!7344214))

(declare-fun m!7346008 () Bool)

(assert (=> b!6563822 m!7346008))

(assert (=> b!6563822 m!7346008))

(declare-fun m!7346010 () Bool)

(assert (=> b!6563822 m!7346010))

(declare-fun m!7346012 () Bool)

(assert (=> b!6563823 m!7346012))

(assert (=> b!6563821 m!7346012))

(assert (=> b!6563819 m!7346008))

(assert (=> b!6563819 m!7346008))

(assert (=> b!6563819 m!7346010))

(assert (=> b!6563828 m!7345884))

(assert (=> b!6563831 m!7346012))

(assert (=> b!6563831 m!7346012))

(declare-fun m!7346014 () Bool)

(assert (=> b!6563831 m!7346014))

(assert (=> b!6563831 m!7346008))

(assert (=> b!6563831 m!7346014))

(assert (=> b!6563831 m!7346008))

(declare-fun m!7346016 () Bool)

(assert (=> b!6563831 m!7346016))

(assert (=> b!6562183 d!2059549))

(declare-fun d!2059551 () Bool)

(assert (=> d!2059551 (= (get!22740 lt!2406562) (v!52514 lt!2406562))))

(assert (=> b!6562183 d!2059551))

(declare-fun b!6563832 () Bool)

(declare-fun e!3973385 () Bool)

(declare-fun call!571011 () Bool)

(assert (=> b!6563832 (= e!3973385 call!571011)))

(declare-fun b!6563833 () Bool)

(declare-fun res!2693468 () Bool)

(declare-fun e!3973384 () Bool)

(assert (=> b!6563833 (=> (not res!2693468) (not e!3973384))))

(declare-fun call!571013 () Bool)

(assert (=> b!6563833 (= res!2693468 call!571013)))

(declare-fun e!3973387 () Bool)

(assert (=> b!6563833 (= e!3973387 e!3973384)))

(declare-fun b!6563834 () Bool)

(declare-fun e!3973390 () Bool)

(assert (=> b!6563834 (= e!3973390 e!3973387)))

(declare-fun c!1206303 () Bool)

(assert (=> b!6563834 (= c!1206303 ((_ is Union!16439) lt!2406536))))

(declare-fun bm!571006 () Bool)

(assert (=> bm!571006 (= call!571013 (validRegex!8175 (ite c!1206303 (regOne!33391 lt!2406536) (regOne!33390 lt!2406536))))))

(declare-fun b!6563835 () Bool)

(assert (=> b!6563835 (= e!3973384 call!571011)))

(declare-fun b!6563836 () Bool)

(declare-fun e!3973388 () Bool)

(assert (=> b!6563836 (= e!3973388 e!3973385)))

(declare-fun res!2693470 () Bool)

(assert (=> b!6563836 (=> (not res!2693470) (not e!3973385))))

(assert (=> b!6563836 (= res!2693470 call!571013)))

(declare-fun b!6563837 () Bool)

(declare-fun res!2693466 () Bool)

(assert (=> b!6563837 (=> res!2693466 e!3973388)))

(assert (=> b!6563837 (= res!2693466 (not ((_ is Concat!25284) lt!2406536)))))

(assert (=> b!6563837 (= e!3973387 e!3973388)))

(declare-fun b!6563838 () Bool)

(declare-fun e!3973386 () Bool)

(assert (=> b!6563838 (= e!3973390 e!3973386)))

(declare-fun res!2693467 () Bool)

(assert (=> b!6563838 (= res!2693467 (not (nullable!6432 (reg!16768 lt!2406536))))))

(assert (=> b!6563838 (=> (not res!2693467) (not e!3973386))))

(declare-fun d!2059553 () Bool)

(declare-fun res!2693469 () Bool)

(declare-fun e!3973389 () Bool)

(assert (=> d!2059553 (=> res!2693469 e!3973389)))

(assert (=> d!2059553 (= res!2693469 ((_ is ElementMatch!16439) lt!2406536))))

(assert (=> d!2059553 (= (validRegex!8175 lt!2406536) e!3973389)))

(declare-fun b!6563839 () Bool)

(declare-fun call!571012 () Bool)

(assert (=> b!6563839 (= e!3973386 call!571012)))

(declare-fun bm!571007 () Bool)

(assert (=> bm!571007 (= call!571011 call!571012)))

(declare-fun b!6563840 () Bool)

(assert (=> b!6563840 (= e!3973389 e!3973390)))

(declare-fun c!1206302 () Bool)

(assert (=> b!6563840 (= c!1206302 ((_ is Star!16439) lt!2406536))))

(declare-fun bm!571008 () Bool)

(assert (=> bm!571008 (= call!571012 (validRegex!8175 (ite c!1206302 (reg!16768 lt!2406536) (ite c!1206303 (regTwo!33391 lt!2406536) (regTwo!33390 lt!2406536)))))))

(assert (= (and d!2059553 (not res!2693469)) b!6563840))

(assert (= (and b!6563840 c!1206302) b!6563838))

(assert (= (and b!6563840 (not c!1206302)) b!6563834))

(assert (= (and b!6563838 res!2693467) b!6563839))

(assert (= (and b!6563834 c!1206303) b!6563833))

(assert (= (and b!6563834 (not c!1206303)) b!6563837))

(assert (= (and b!6563833 res!2693468) b!6563835))

(assert (= (and b!6563837 (not res!2693466)) b!6563836))

(assert (= (and b!6563836 res!2693470) b!6563832))

(assert (= (or b!6563835 b!6563832) bm!571007))

(assert (= (or b!6563833 b!6563836) bm!571006))

(assert (= (or b!6563839 bm!571007) bm!571008))

(declare-fun m!7346018 () Bool)

(assert (=> bm!571006 m!7346018))

(declare-fun m!7346020 () Bool)

(assert (=> b!6563838 m!7346020))

(declare-fun m!7346022 () Bool)

(assert (=> bm!571008 m!7346022))

(assert (=> d!2058725 d!2059553))

(declare-fun bs!1675998 () Bool)

(declare-fun d!2059555 () Bool)

(assert (= bs!1675998 (and d!2059555 b!6561265)))

(declare-fun lambda!365229 () Int)

(assert (=> bs!1675998 (= lambda!365229 lambda!365045)))

(declare-fun bs!1675999 () Bool)

(assert (= bs!1675999 (and d!2059555 d!2058735)))

(assert (=> bs!1675999 (= lambda!365229 lambda!365124)))

(declare-fun bs!1676000 () Bool)

(assert (= bs!1676000 (and d!2059555 d!2058599)))

(assert (=> bs!1676000 (= lambda!365229 lambda!365092)))

(declare-fun bs!1676001 () Bool)

(assert (= bs!1676001 (and d!2059555 d!2058587)))

(assert (=> bs!1676001 (= lambda!365229 lambda!365086)))

(declare-fun bs!1676002 () Bool)

(assert (= bs!1676002 (and d!2059555 d!2058797)))

(assert (=> bs!1676002 (= lambda!365229 lambda!365138)))

(declare-fun bs!1676003 () Bool)

(assert (= bs!1676003 (and d!2059555 d!2058737)))

(assert (=> bs!1676003 (= lambda!365229 lambda!365127)))

(declare-fun bs!1676004 () Bool)

(assert (= bs!1676004 (and d!2059555 d!2058739)))

(assert (=> bs!1676004 (= lambda!365229 lambda!365128)))

(declare-fun b!6563841 () Bool)

(declare-fun e!3973396 () Regex!16439)

(assert (=> b!6563841 (= e!3973396 EmptyLang!16439)))

(declare-fun b!6563842 () Bool)

(declare-fun e!3973393 () Bool)

(declare-fun e!3973391 () Bool)

(assert (=> b!6563842 (= e!3973393 e!3973391)))

(declare-fun c!1206305 () Bool)

(assert (=> b!6563842 (= c!1206305 (isEmpty!37733 (unfocusZipperList!1860 lt!2406367)))))

(declare-fun b!6563844 () Bool)

(declare-fun lt!2406717 () Regex!16439)

(assert (=> b!6563844 (= e!3973391 (isEmptyLang!1826 lt!2406717))))

(declare-fun b!6563845 () Bool)

(assert (=> b!6563845 (= e!3973396 (Union!16439 (h!71941 (unfocusZipperList!1860 lt!2406367)) (generalisedUnion!2283 (t!379259 (unfocusZipperList!1860 lt!2406367)))))))

(declare-fun b!6563846 () Bool)

(declare-fun e!3973394 () Bool)

(assert (=> b!6563846 (= e!3973391 e!3973394)))

(declare-fun c!1206304 () Bool)

(assert (=> b!6563846 (= c!1206304 (isEmpty!37733 (tail!12413 (unfocusZipperList!1860 lt!2406367))))))

(declare-fun b!6563847 () Bool)

(assert (=> b!6563847 (= e!3973394 (isUnion!1256 lt!2406717))))

(declare-fun b!6563848 () Bool)

(declare-fun e!3973392 () Regex!16439)

(assert (=> b!6563848 (= e!3973392 e!3973396)))

(declare-fun c!1206307 () Bool)

(assert (=> b!6563848 (= c!1206307 ((_ is Cons!65493) (unfocusZipperList!1860 lt!2406367)))))

(assert (=> d!2059555 e!3973393))

(declare-fun res!2693472 () Bool)

(assert (=> d!2059555 (=> (not res!2693472) (not e!3973393))))

(assert (=> d!2059555 (= res!2693472 (validRegex!8175 lt!2406717))))

(assert (=> d!2059555 (= lt!2406717 e!3973392)))

(declare-fun c!1206306 () Bool)

(declare-fun e!3973395 () Bool)

(assert (=> d!2059555 (= c!1206306 e!3973395)))

(declare-fun res!2693471 () Bool)

(assert (=> d!2059555 (=> (not res!2693471) (not e!3973395))))

(assert (=> d!2059555 (= res!2693471 ((_ is Cons!65493) (unfocusZipperList!1860 lt!2406367)))))

(assert (=> d!2059555 (forall!15611 (unfocusZipperList!1860 lt!2406367) lambda!365229)))

(assert (=> d!2059555 (= (generalisedUnion!2283 (unfocusZipperList!1860 lt!2406367)) lt!2406717)))

(declare-fun b!6563843 () Bool)

(assert (=> b!6563843 (= e!3973394 (= lt!2406717 (head!13328 (unfocusZipperList!1860 lt!2406367))))))

(declare-fun b!6563849 () Bool)

(assert (=> b!6563849 (= e!3973392 (h!71941 (unfocusZipperList!1860 lt!2406367)))))

(declare-fun b!6563850 () Bool)

(assert (=> b!6563850 (= e!3973395 (isEmpty!37733 (t!379259 (unfocusZipperList!1860 lt!2406367))))))

(assert (= (and d!2059555 res!2693471) b!6563850))

(assert (= (and d!2059555 c!1206306) b!6563849))

(assert (= (and d!2059555 (not c!1206306)) b!6563848))

(assert (= (and b!6563848 c!1206307) b!6563845))

(assert (= (and b!6563848 (not c!1206307)) b!6563841))

(assert (= (and d!2059555 res!2693472) b!6563842))

(assert (= (and b!6563842 c!1206305) b!6563844))

(assert (= (and b!6563842 (not c!1206305)) b!6563846))

(assert (= (and b!6563846 c!1206304) b!6563843))

(assert (= (and b!6563846 (not c!1206304)) b!6563847))

(declare-fun m!7346024 () Bool)

(assert (=> b!6563847 m!7346024))

(assert (=> b!6563842 m!7344100))

(declare-fun m!7346026 () Bool)

(assert (=> b!6563842 m!7346026))

(declare-fun m!7346028 () Bool)

(assert (=> b!6563845 m!7346028))

(declare-fun m!7346030 () Bool)

(assert (=> b!6563850 m!7346030))

(assert (=> b!6563843 m!7344100))

(declare-fun m!7346032 () Bool)

(assert (=> b!6563843 m!7346032))

(declare-fun m!7346034 () Bool)

(assert (=> d!2059555 m!7346034))

(assert (=> d!2059555 m!7344100))

(declare-fun m!7346036 () Bool)

(assert (=> d!2059555 m!7346036))

(assert (=> b!6563846 m!7344100))

(declare-fun m!7346038 () Bool)

(assert (=> b!6563846 m!7346038))

(assert (=> b!6563846 m!7346038))

(declare-fun m!7346040 () Bool)

(assert (=> b!6563846 m!7346040))

(declare-fun m!7346042 () Bool)

(assert (=> b!6563844 m!7346042))

(assert (=> d!2058725 d!2059555))

(declare-fun bs!1676005 () Bool)

(declare-fun d!2059557 () Bool)

(assert (= bs!1676005 (and d!2059557 b!6561265)))

(declare-fun lambda!365230 () Int)

(assert (=> bs!1676005 (= lambda!365230 lambda!365045)))

(declare-fun bs!1676006 () Bool)

(assert (= bs!1676006 (and d!2059557 d!2058735)))

(assert (=> bs!1676006 (= lambda!365230 lambda!365124)))

(declare-fun bs!1676007 () Bool)

(assert (= bs!1676007 (and d!2059557 d!2058599)))

(assert (=> bs!1676007 (= lambda!365230 lambda!365092)))

(declare-fun bs!1676008 () Bool)

(assert (= bs!1676008 (and d!2059557 d!2058587)))

(assert (=> bs!1676008 (= lambda!365230 lambda!365086)))

(declare-fun bs!1676009 () Bool)

(assert (= bs!1676009 (and d!2059557 d!2058797)))

(assert (=> bs!1676009 (= lambda!365230 lambda!365138)))

(declare-fun bs!1676010 () Bool)

(assert (= bs!1676010 (and d!2059557 d!2058737)))

(assert (=> bs!1676010 (= lambda!365230 lambda!365127)))

(declare-fun bs!1676011 () Bool)

(assert (= bs!1676011 (and d!2059557 d!2059555)))

(assert (=> bs!1676011 (= lambda!365230 lambda!365229)))

(declare-fun bs!1676012 () Bool)

(assert (= bs!1676012 (and d!2059557 d!2058739)))

(assert (=> bs!1676012 (= lambda!365230 lambda!365128)))

(declare-fun lt!2406718 () List!65617)

(assert (=> d!2059557 (forall!15611 lt!2406718 lambda!365230)))

(declare-fun e!3973397 () List!65617)

(assert (=> d!2059557 (= lt!2406718 e!3973397)))

(declare-fun c!1206308 () Bool)

(assert (=> d!2059557 (= c!1206308 ((_ is Cons!65494) lt!2406367))))

(assert (=> d!2059557 (= (unfocusZipperList!1860 lt!2406367) lt!2406718)))

(declare-fun b!6563851 () Bool)

(assert (=> b!6563851 (= e!3973397 (Cons!65493 (generalisedConcat!2036 (exprs!6323 (h!71942 lt!2406367))) (unfocusZipperList!1860 (t!379260 lt!2406367))))))

(declare-fun b!6563852 () Bool)

(assert (=> b!6563852 (= e!3973397 Nil!65493)))

(assert (= (and d!2059557 c!1206308) b!6563851))

(assert (= (and d!2059557 (not c!1206308)) b!6563852))

(declare-fun m!7346044 () Bool)

(assert (=> d!2059557 m!7346044))

(declare-fun m!7346046 () Bool)

(assert (=> b!6563851 m!7346046))

(declare-fun m!7346048 () Bool)

(assert (=> b!6563851 m!7346048))

(assert (=> d!2058725 d!2059557))

(assert (=> b!6562392 d!2058851))

(declare-fun b!6563853 () Bool)

(declare-fun e!3973399 () Bool)

(declare-fun call!571014 () Bool)

(assert (=> b!6563853 (= e!3973399 call!571014)))

(declare-fun b!6563854 () Bool)

(declare-fun res!2693475 () Bool)

(declare-fun e!3973398 () Bool)

(assert (=> b!6563854 (=> (not res!2693475) (not e!3973398))))

(declare-fun call!571016 () Bool)

(assert (=> b!6563854 (= res!2693475 call!571016)))

(declare-fun e!3973401 () Bool)

(assert (=> b!6563854 (= e!3973401 e!3973398)))

(declare-fun b!6563855 () Bool)

(declare-fun e!3973404 () Bool)

(assert (=> b!6563855 (= e!3973404 e!3973401)))

(declare-fun c!1206310 () Bool)

(assert (=> b!6563855 (= c!1206310 ((_ is Union!16439) (ite c!1205753 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))))))

(declare-fun bm!571009 () Bool)

(assert (=> bm!571009 (= call!571016 (validRegex!8175 (ite c!1206310 (regOne!33391 (ite c!1205753 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))) (regOne!33390 (ite c!1205753 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))))))))

(declare-fun b!6563856 () Bool)

(assert (=> b!6563856 (= e!3973398 call!571014)))

(declare-fun b!6563857 () Bool)

(declare-fun e!3973402 () Bool)

(assert (=> b!6563857 (= e!3973402 e!3973399)))

(declare-fun res!2693477 () Bool)

(assert (=> b!6563857 (=> (not res!2693477) (not e!3973399))))

(assert (=> b!6563857 (= res!2693477 call!571016)))

(declare-fun b!6563858 () Bool)

(declare-fun res!2693473 () Bool)

(assert (=> b!6563858 (=> res!2693473 e!3973402)))

(assert (=> b!6563858 (= res!2693473 (not ((_ is Concat!25284) (ite c!1205753 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292)))))))))

(assert (=> b!6563858 (= e!3973401 e!3973402)))

(declare-fun b!6563859 () Bool)

(declare-fun e!3973400 () Bool)

(assert (=> b!6563859 (= e!3973404 e!3973400)))

(declare-fun res!2693474 () Bool)

(assert (=> b!6563859 (= res!2693474 (not (nullable!6432 (reg!16768 (ite c!1205753 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))))))))

(assert (=> b!6563859 (=> (not res!2693474) (not e!3973400))))

(declare-fun d!2059559 () Bool)

(declare-fun res!2693476 () Bool)

(declare-fun e!3973403 () Bool)

(assert (=> d!2059559 (=> res!2693476 e!3973403)))

(assert (=> d!2059559 (= res!2693476 ((_ is ElementMatch!16439) (ite c!1205753 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))))))

(assert (=> d!2059559 (= (validRegex!8175 (ite c!1205753 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))) e!3973403)))

(declare-fun b!6563860 () Bool)

(declare-fun call!571015 () Bool)

(assert (=> b!6563860 (= e!3973400 call!571015)))

(declare-fun bm!571010 () Bool)

(assert (=> bm!571010 (= call!571014 call!571015)))

(declare-fun b!6563861 () Bool)

(assert (=> b!6563861 (= e!3973403 e!3973404)))

(declare-fun c!1206309 () Bool)

(assert (=> b!6563861 (= c!1206309 ((_ is Star!16439) (ite c!1205753 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))))))

(declare-fun bm!571011 () Bool)

(assert (=> bm!571011 (= call!571015 (validRegex!8175 (ite c!1206309 (reg!16768 (ite c!1205753 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))) (ite c!1206310 (regTwo!33391 (ite c!1205753 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))) (regTwo!33390 (ite c!1205753 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292)))))))))))

(assert (= (and d!2059559 (not res!2693476)) b!6563861))

(assert (= (and b!6563861 c!1206309) b!6563859))

(assert (= (and b!6563861 (not c!1206309)) b!6563855))

(assert (= (and b!6563859 res!2693474) b!6563860))

(assert (= (and b!6563855 c!1206310) b!6563854))

(assert (= (and b!6563855 (not c!1206310)) b!6563858))

(assert (= (and b!6563854 res!2693475) b!6563856))

(assert (= (and b!6563858 (not res!2693473)) b!6563857))

(assert (= (and b!6563857 res!2693477) b!6563853))

(assert (= (or b!6563856 b!6563853) bm!571010))

(assert (= (or b!6563854 b!6563857) bm!571009))

(assert (= (or b!6563860 bm!571010) bm!571011))

(declare-fun m!7346050 () Bool)

(assert (=> bm!571009 m!7346050))

(declare-fun m!7346052 () Bool)

(assert (=> b!6563859 m!7346052))

(declare-fun m!7346054 () Bool)

(assert (=> bm!571011 m!7346054))

(assert (=> bm!570692 d!2059559))

(declare-fun d!2059561 () Bool)

(assert (=> d!2059561 (= (nullable!6432 (regOne!33390 (reg!16768 (regOne!33390 r!7292)))) (nullableFct!2358 (regOne!33390 (reg!16768 (regOne!33390 r!7292)))))))

(declare-fun bs!1676013 () Bool)

(assert (= bs!1676013 d!2059561))

(declare-fun m!7346056 () Bool)

(assert (=> bs!1676013 m!7346056))

(assert (=> b!6562137 d!2059561))

(declare-fun d!2059563 () Bool)

(declare-fun res!2693482 () Bool)

(declare-fun e!3973409 () Bool)

(assert (=> d!2059563 (=> res!2693482 e!3973409)))

(assert (=> d!2059563 (= res!2693482 ((_ is Nil!65494) lt!2406608))))

(assert (=> d!2059563 (= (noDuplicate!2244 lt!2406608) e!3973409)))

(declare-fun b!6563866 () Bool)

(declare-fun e!3973410 () Bool)

(assert (=> b!6563866 (= e!3973409 e!3973410)))

(declare-fun res!2693483 () Bool)

(assert (=> b!6563866 (=> (not res!2693483) (not e!3973410))))

(declare-fun contains!20205 (List!65618 Context!11646) Bool)

(assert (=> b!6563866 (= res!2693483 (not (contains!20205 (t!379260 lt!2406608) (h!71942 lt!2406608))))))

(declare-fun b!6563867 () Bool)

(assert (=> b!6563867 (= e!3973410 (noDuplicate!2244 (t!379260 lt!2406608)))))

(assert (= (and d!2059563 (not res!2693482)) b!6563866))

(assert (= (and b!6563866 res!2693483) b!6563867))

(declare-fun m!7346058 () Bool)

(assert (=> b!6563866 m!7346058))

(declare-fun m!7346060 () Bool)

(assert (=> b!6563867 m!7346060))

(assert (=> d!2058827 d!2059563))

(declare-fun d!2059565 () Bool)

(declare-fun e!3973417 () Bool)

(assert (=> d!2059565 e!3973417))

(declare-fun res!2693489 () Bool)

(assert (=> d!2059565 (=> (not res!2693489) (not e!3973417))))

(declare-fun res!2693488 () List!65618)

(assert (=> d!2059565 (= res!2693489 (noDuplicate!2244 res!2693488))))

(declare-fun e!3973419 () Bool)

(assert (=> d!2059565 e!3973419))

(assert (=> d!2059565 (= (choose!48980 z!1189) res!2693488)))

(declare-fun b!6563875 () Bool)

(declare-fun e!3973418 () Bool)

(declare-fun tp!1812940 () Bool)

(assert (=> b!6563875 (= e!3973418 tp!1812940)))

(declare-fun tp!1812941 () Bool)

(declare-fun b!6563874 () Bool)

(assert (=> b!6563874 (= e!3973419 (and (inv!84344 (h!71942 res!2693488)) e!3973418 tp!1812941))))

(declare-fun b!6563876 () Bool)

(assert (=> b!6563876 (= e!3973417 (= (content!12600 res!2693488) z!1189))))

(assert (= b!6563874 b!6563875))

(assert (= (and d!2059565 ((_ is Cons!65494) res!2693488)) b!6563874))

(assert (= (and d!2059565 res!2693489) b!6563876))

(declare-fun m!7346062 () Bool)

(assert (=> d!2059565 m!7346062))

(declare-fun m!7346064 () Bool)

(assert (=> b!6563874 m!7346064))

(declare-fun m!7346066 () Bool)

(assert (=> b!6563876 m!7346066))

(assert (=> d!2058827 d!2059565))

(assert (=> b!6562418 d!2059539))

(declare-fun d!2059567 () Bool)

(assert (=> d!2059567 (= (isEmpty!37738 lt!2406388) (not ((_ is Some!16329) lt!2406388)))))

(assert (=> d!2058745 d!2059567))

(assert (=> d!2058825 d!2059447))

(declare-fun b!6563877 () Bool)

(declare-fun e!3973421 () Bool)

(declare-fun call!571017 () Bool)

(assert (=> b!6563877 (= e!3973421 call!571017)))

(declare-fun b!6563878 () Bool)

(declare-fun res!2693492 () Bool)

(declare-fun e!3973420 () Bool)

(assert (=> b!6563878 (=> (not res!2693492) (not e!3973420))))

(declare-fun call!571019 () Bool)

(assert (=> b!6563878 (= res!2693492 call!571019)))

(declare-fun e!3973423 () Bool)

(assert (=> b!6563878 (= e!3973423 e!3973420)))

(declare-fun b!6563879 () Bool)

(declare-fun e!3973426 () Bool)

(assert (=> b!6563879 (= e!3973426 e!3973423)))

(declare-fun c!1206312 () Bool)

(assert (=> b!6563879 (= c!1206312 ((_ is Union!16439) lt!2406360))))

(declare-fun bm!571012 () Bool)

(assert (=> bm!571012 (= call!571019 (validRegex!8175 (ite c!1206312 (regOne!33391 lt!2406360) (regOne!33390 lt!2406360))))))

(declare-fun b!6563880 () Bool)

(assert (=> b!6563880 (= e!3973420 call!571017)))

(declare-fun b!6563881 () Bool)

(declare-fun e!3973424 () Bool)

(assert (=> b!6563881 (= e!3973424 e!3973421)))

(declare-fun res!2693494 () Bool)

(assert (=> b!6563881 (=> (not res!2693494) (not e!3973421))))

(assert (=> b!6563881 (= res!2693494 call!571019)))

(declare-fun b!6563882 () Bool)

(declare-fun res!2693490 () Bool)

(assert (=> b!6563882 (=> res!2693490 e!3973424)))

(assert (=> b!6563882 (= res!2693490 (not ((_ is Concat!25284) lt!2406360)))))

(assert (=> b!6563882 (= e!3973423 e!3973424)))

(declare-fun b!6563883 () Bool)

(declare-fun e!3973422 () Bool)

(assert (=> b!6563883 (= e!3973426 e!3973422)))

(declare-fun res!2693491 () Bool)

(assert (=> b!6563883 (= res!2693491 (not (nullable!6432 (reg!16768 lt!2406360))))))

(assert (=> b!6563883 (=> (not res!2693491) (not e!3973422))))

(declare-fun d!2059569 () Bool)

(declare-fun res!2693493 () Bool)

(declare-fun e!3973425 () Bool)

(assert (=> d!2059569 (=> res!2693493 e!3973425)))

(assert (=> d!2059569 (= res!2693493 ((_ is ElementMatch!16439) lt!2406360))))

(assert (=> d!2059569 (= (validRegex!8175 lt!2406360) e!3973425)))

(declare-fun b!6563884 () Bool)

(declare-fun call!571018 () Bool)

(assert (=> b!6563884 (= e!3973422 call!571018)))

(declare-fun bm!571013 () Bool)

(assert (=> bm!571013 (= call!571017 call!571018)))

(declare-fun b!6563885 () Bool)

(assert (=> b!6563885 (= e!3973425 e!3973426)))

(declare-fun c!1206311 () Bool)

(assert (=> b!6563885 (= c!1206311 ((_ is Star!16439) lt!2406360))))

(declare-fun bm!571014 () Bool)

(assert (=> bm!571014 (= call!571018 (validRegex!8175 (ite c!1206311 (reg!16768 lt!2406360) (ite c!1206312 (regTwo!33391 lt!2406360) (regTwo!33390 lt!2406360)))))))

(assert (= (and d!2059569 (not res!2693493)) b!6563885))

(assert (= (and b!6563885 c!1206311) b!6563883))

(assert (= (and b!6563885 (not c!1206311)) b!6563879))

(assert (= (and b!6563883 res!2693491) b!6563884))

(assert (= (and b!6563879 c!1206312) b!6563878))

(assert (= (and b!6563879 (not c!1206312)) b!6563882))

(assert (= (and b!6563878 res!2693492) b!6563880))

(assert (= (and b!6563882 (not res!2693490)) b!6563881))

(assert (= (and b!6563881 res!2693494) b!6563877))

(assert (= (or b!6563880 b!6563877) bm!571013))

(assert (= (or b!6563878 b!6563881) bm!571012))

(assert (= (or b!6563884 bm!571013) bm!571014))

(declare-fun m!7346068 () Bool)

(assert (=> bm!571012 m!7346068))

(declare-fun m!7346070 () Bool)

(assert (=> b!6563883 m!7346070))

(declare-fun m!7346072 () Bool)

(assert (=> bm!571014 m!7346072))

(assert (=> d!2058825 d!2059569))

(assert (=> d!2058779 d!2059449))

(declare-fun d!2059571 () Bool)

(assert (=> d!2059571 (= (flatMap!1944 lt!2406385 lambda!365144) (choose!48971 lt!2406385 lambda!365144))))

(declare-fun bs!1676014 () Bool)

(assert (= bs!1676014 d!2059571))

(declare-fun m!7346074 () Bool)

(assert (=> bs!1676014 m!7346074))

(assert (=> d!2058835 d!2059571))

(declare-fun d!2059573 () Bool)

(assert (=> d!2059573 true))

(declare-fun setRes!44809 () Bool)

(assert (=> d!2059573 setRes!44809))

(declare-fun condSetEmpty!44809 () Bool)

(declare-fun res!2693497 () (InoxSet Context!11646))

(assert (=> d!2059573 (= condSetEmpty!44809 (= res!2693497 ((as const (Array Context!11646 Bool)) false)))))

(assert (=> d!2059573 (= (choose!48971 lt!2406394 lambda!365043) res!2693497)))

(declare-fun setIsEmpty!44809 () Bool)

(assert (=> setIsEmpty!44809 setRes!44809))

(declare-fun e!3973429 () Bool)

(declare-fun setElem!44809 () Context!11646)

(declare-fun tp!1812946 () Bool)

(declare-fun setNonEmpty!44809 () Bool)

(assert (=> setNonEmpty!44809 (= setRes!44809 (and tp!1812946 (inv!84344 setElem!44809) e!3973429))))

(declare-fun setRest!44809 () (InoxSet Context!11646))

(assert (=> setNonEmpty!44809 (= res!2693497 ((_ map or) (store ((as const (Array Context!11646 Bool)) false) setElem!44809 true) setRest!44809))))

(declare-fun b!6563888 () Bool)

(declare-fun tp!1812947 () Bool)

(assert (=> b!6563888 (= e!3973429 tp!1812947)))

(assert (= (and d!2059573 condSetEmpty!44809) setIsEmpty!44809))

(assert (= (and d!2059573 (not condSetEmpty!44809)) setNonEmpty!44809))

(assert (= setNonEmpty!44809 b!6563888))

(declare-fun m!7346076 () Bool)

(assert (=> setNonEmpty!44809 m!7346076))

(assert (=> d!2058733 d!2059573))

(declare-fun d!2059575 () Bool)

(assert (=> d!2059575 (= (isEmpty!37737 (tail!12414 (_1!36721 lt!2406397))) ((_ is Nil!65492) (tail!12414 (_1!36721 lt!2406397))))))

(assert (=> b!6562354 d!2059575))

(declare-fun d!2059577 () Bool)

(assert (=> d!2059577 (= (tail!12414 (_1!36721 lt!2406397)) (t!379258 (_1!36721 lt!2406397)))))

(assert (=> b!6562354 d!2059577))

(declare-fun bm!571015 () Bool)

(declare-fun call!571021 () List!65617)

(declare-fun call!571025 () List!65617)

(assert (=> bm!571015 (= call!571021 call!571025)))

(declare-fun b!6563889 () Bool)

(declare-fun e!3973432 () (InoxSet Context!11646))

(assert (=> b!6563889 (= e!3973432 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (t!379259 (exprs!6323 lt!2406347))) true))))

(declare-fun b!6563890 () Bool)

(declare-fun e!3973435 () (InoxSet Context!11646))

(declare-fun e!3973434 () (InoxSet Context!11646))

(assert (=> b!6563890 (= e!3973435 e!3973434)))

(declare-fun c!1206315 () Bool)

(assert (=> b!6563890 (= c!1206315 ((_ is Concat!25284) (h!71941 (exprs!6323 lt!2406347))))))

(declare-fun b!6563891 () Bool)

(declare-fun e!3973433 () (InoxSet Context!11646))

(declare-fun call!571024 () (InoxSet Context!11646))

(assert (=> b!6563891 (= e!3973433 call!571024)))

(declare-fun b!6563892 () Bool)

(declare-fun call!571023 () (InoxSet Context!11646))

(declare-fun call!571020 () (InoxSet Context!11646))

(assert (=> b!6563892 (= e!3973435 ((_ map or) call!571023 call!571020))))

(declare-fun bm!571016 () Bool)

(declare-fun c!1206313 () Bool)

(assert (=> bm!571016 (= call!571023 (derivationStepZipperDown!1687 (ite c!1206313 (regOne!33391 (h!71941 (exprs!6323 lt!2406347))) (regOne!33390 (h!71941 (exprs!6323 lt!2406347)))) (ite c!1206313 (Context!11647 (t!379259 (exprs!6323 lt!2406347))) (Context!11647 call!571025)) (h!71940 s!2326)))))

(declare-fun b!6563893 () Bool)

(assert (=> b!6563893 (= e!3973434 call!571024)))

(declare-fun c!1206317 () Bool)

(declare-fun bm!571017 () Bool)

(declare-fun call!571022 () (InoxSet Context!11646))

(assert (=> bm!571017 (= call!571022 (derivationStepZipperDown!1687 (ite c!1206313 (regTwo!33391 (h!71941 (exprs!6323 lt!2406347))) (ite c!1206317 (regTwo!33390 (h!71941 (exprs!6323 lt!2406347))) (ite c!1206315 (regOne!33390 (h!71941 (exprs!6323 lt!2406347))) (reg!16768 (h!71941 (exprs!6323 lt!2406347)))))) (ite (or c!1206313 c!1206317) (Context!11647 (t!379259 (exprs!6323 lt!2406347))) (Context!11647 call!571021)) (h!71940 s!2326)))))

(declare-fun b!6563894 () Bool)

(declare-fun e!3973430 () Bool)

(assert (=> b!6563894 (= e!3973430 (nullable!6432 (regOne!33390 (h!71941 (exprs!6323 lt!2406347)))))))

(declare-fun bm!571018 () Bool)

(assert (=> bm!571018 (= call!571024 call!571020)))

(declare-fun bm!571019 () Bool)

(assert (=> bm!571019 (= call!571020 call!571022)))

(declare-fun b!6563895 () Bool)

(declare-fun c!1206316 () Bool)

(assert (=> b!6563895 (= c!1206316 ((_ is Star!16439) (h!71941 (exprs!6323 lt!2406347))))))

(assert (=> b!6563895 (= e!3973434 e!3973433)))

(declare-fun b!6563896 () Bool)

(assert (=> b!6563896 (= e!3973433 ((as const (Array Context!11646 Bool)) false))))

(declare-fun b!6563897 () Bool)

(declare-fun e!3973431 () (InoxSet Context!11646))

(assert (=> b!6563897 (= e!3973432 e!3973431)))

(assert (=> b!6563897 (= c!1206313 ((_ is Union!16439) (h!71941 (exprs!6323 lt!2406347))))))

(declare-fun bm!571020 () Bool)

(assert (=> bm!571020 (= call!571025 ($colon$colon!2280 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406347)))) (ite (or c!1206317 c!1206315) (regTwo!33390 (h!71941 (exprs!6323 lt!2406347))) (h!71941 (exprs!6323 lt!2406347)))))))

(declare-fun b!6563898 () Bool)

(assert (=> b!6563898 (= e!3973431 ((_ map or) call!571023 call!571022))))

(declare-fun d!2059579 () Bool)

(declare-fun c!1206314 () Bool)

(assert (=> d!2059579 (= c!1206314 (and ((_ is ElementMatch!16439) (h!71941 (exprs!6323 lt!2406347))) (= (c!1205620 (h!71941 (exprs!6323 lt!2406347))) (h!71940 s!2326))))))

(assert (=> d!2059579 (= (derivationStepZipperDown!1687 (h!71941 (exprs!6323 lt!2406347)) (Context!11647 (t!379259 (exprs!6323 lt!2406347))) (h!71940 s!2326)) e!3973432)))

(declare-fun b!6563899 () Bool)

(assert (=> b!6563899 (= c!1206317 e!3973430)))

(declare-fun res!2693498 () Bool)

(assert (=> b!6563899 (=> (not res!2693498) (not e!3973430))))

(assert (=> b!6563899 (= res!2693498 ((_ is Concat!25284) (h!71941 (exprs!6323 lt!2406347))))))

(assert (=> b!6563899 (= e!3973431 e!3973435)))

(assert (= (and d!2059579 c!1206314) b!6563889))

(assert (= (and d!2059579 (not c!1206314)) b!6563897))

(assert (= (and b!6563897 c!1206313) b!6563898))

(assert (= (and b!6563897 (not c!1206313)) b!6563899))

(assert (= (and b!6563899 res!2693498) b!6563894))

(assert (= (and b!6563899 c!1206317) b!6563892))

(assert (= (and b!6563899 (not c!1206317)) b!6563890))

(assert (= (and b!6563890 c!1206315) b!6563893))

(assert (= (and b!6563890 (not c!1206315)) b!6563895))

(assert (= (and b!6563895 c!1206316) b!6563891))

(assert (= (and b!6563895 (not c!1206316)) b!6563896))

(assert (= (or b!6563893 b!6563891) bm!571015))

(assert (= (or b!6563893 b!6563891) bm!571018))

(assert (= (or b!6563892 bm!571015) bm!571020))

(assert (= (or b!6563892 bm!571018) bm!571019))

(assert (= (or b!6563898 bm!571019) bm!571017))

(assert (= (or b!6563898 b!6563892) bm!571016))

(declare-fun m!7346078 () Bool)

(assert (=> b!6563894 m!7346078))

(declare-fun m!7346080 () Bool)

(assert (=> b!6563889 m!7346080))

(declare-fun m!7346082 () Bool)

(assert (=> bm!571020 m!7346082))

(declare-fun m!7346084 () Bool)

(assert (=> bm!571016 m!7346084))

(declare-fun m!7346086 () Bool)

(assert (=> bm!571017 m!7346086))

(assert (=> bm!570732 d!2059579))

(declare-fun d!2059581 () Bool)

(assert (=> d!2059581 (= (isEmptyExpr!1816 lt!2406487) ((_ is EmptyExpr!16439) lt!2406487))))

(assert (=> b!6561719 d!2059581))

(declare-fun d!2059583 () Bool)

(assert (=> d!2059583 (= (head!13329 (_2!36721 lt!2406377)) (h!71940 (_2!36721 lt!2406377)))))

(assert (=> b!6562256 d!2059583))

(declare-fun d!2059585 () Bool)

(assert (=> d!2059585 (= (head!13329 lt!2406375) (h!71940 lt!2406375))))

(assert (=> b!6562305 d!2059585))

(assert (=> d!2058867 d!2058865))

(assert (=> d!2058867 d!2058863))

(declare-fun d!2059587 () Bool)

(assert (=> d!2059587 (= (matchR!8622 lt!2406349 s!2326) (matchRSpec!3540 lt!2406349 s!2326))))

(assert (=> d!2059587 true))

(declare-fun _$88!5248 () Unit!159091)

(assert (=> d!2059587 (= (choose!48964 lt!2406349 s!2326) _$88!5248)))

(declare-fun bs!1676015 () Bool)

(assert (= bs!1676015 d!2059587))

(assert (=> bs!1676015 m!7343262))

(assert (=> bs!1676015 m!7343260))

(assert (=> d!2058867 d!2059587))

(declare-fun b!6563900 () Bool)

(declare-fun e!3973437 () Bool)

(declare-fun call!571026 () Bool)

(assert (=> b!6563900 (= e!3973437 call!571026)))

(declare-fun b!6563901 () Bool)

(declare-fun res!2693501 () Bool)

(declare-fun e!3973436 () Bool)

(assert (=> b!6563901 (=> (not res!2693501) (not e!3973436))))

(declare-fun call!571028 () Bool)

(assert (=> b!6563901 (= res!2693501 call!571028)))

(declare-fun e!3973439 () Bool)

(assert (=> b!6563901 (= e!3973439 e!3973436)))

(declare-fun b!6563902 () Bool)

(declare-fun e!3973442 () Bool)

(assert (=> b!6563902 (= e!3973442 e!3973439)))

(declare-fun c!1206319 () Bool)

(assert (=> b!6563902 (= c!1206319 ((_ is Union!16439) lt!2406349))))

(declare-fun bm!571021 () Bool)

(assert (=> bm!571021 (= call!571028 (validRegex!8175 (ite c!1206319 (regOne!33391 lt!2406349) (regOne!33390 lt!2406349))))))

(declare-fun b!6563903 () Bool)

(assert (=> b!6563903 (= e!3973436 call!571026)))

(declare-fun b!6563904 () Bool)

(declare-fun e!3973440 () Bool)

(assert (=> b!6563904 (= e!3973440 e!3973437)))

(declare-fun res!2693503 () Bool)

(assert (=> b!6563904 (=> (not res!2693503) (not e!3973437))))

(assert (=> b!6563904 (= res!2693503 call!571028)))

(declare-fun b!6563905 () Bool)

(declare-fun res!2693499 () Bool)

(assert (=> b!6563905 (=> res!2693499 e!3973440)))

(assert (=> b!6563905 (= res!2693499 (not ((_ is Concat!25284) lt!2406349)))))

(assert (=> b!6563905 (= e!3973439 e!3973440)))

(declare-fun b!6563906 () Bool)

(declare-fun e!3973438 () Bool)

(assert (=> b!6563906 (= e!3973442 e!3973438)))

(declare-fun res!2693500 () Bool)

(assert (=> b!6563906 (= res!2693500 (not (nullable!6432 (reg!16768 lt!2406349))))))

(assert (=> b!6563906 (=> (not res!2693500) (not e!3973438))))

(declare-fun d!2059589 () Bool)

(declare-fun res!2693502 () Bool)

(declare-fun e!3973441 () Bool)

(assert (=> d!2059589 (=> res!2693502 e!3973441)))

(assert (=> d!2059589 (= res!2693502 ((_ is ElementMatch!16439) lt!2406349))))

(assert (=> d!2059589 (= (validRegex!8175 lt!2406349) e!3973441)))

(declare-fun b!6563907 () Bool)

(declare-fun call!571027 () Bool)

(assert (=> b!6563907 (= e!3973438 call!571027)))

(declare-fun bm!571022 () Bool)

(assert (=> bm!571022 (= call!571026 call!571027)))

(declare-fun b!6563908 () Bool)

(assert (=> b!6563908 (= e!3973441 e!3973442)))

(declare-fun c!1206318 () Bool)

(assert (=> b!6563908 (= c!1206318 ((_ is Star!16439) lt!2406349))))

(declare-fun bm!571023 () Bool)

(assert (=> bm!571023 (= call!571027 (validRegex!8175 (ite c!1206318 (reg!16768 lt!2406349) (ite c!1206319 (regTwo!33391 lt!2406349) (regTwo!33390 lt!2406349)))))))

(assert (= (and d!2059589 (not res!2693502)) b!6563908))

(assert (= (and b!6563908 c!1206318) b!6563906))

(assert (= (and b!6563908 (not c!1206318)) b!6563902))

(assert (= (and b!6563906 res!2693500) b!6563907))

(assert (= (and b!6563902 c!1206319) b!6563901))

(assert (= (and b!6563902 (not c!1206319)) b!6563905))

(assert (= (and b!6563901 res!2693501) b!6563903))

(assert (= (and b!6563905 (not res!2693499)) b!6563904))

(assert (= (and b!6563904 res!2693503) b!6563900))

(assert (= (or b!6563903 b!6563900) bm!571022))

(assert (= (or b!6563901 b!6563904) bm!571021))

(assert (= (or b!6563907 bm!571022) bm!571023))

(declare-fun m!7346088 () Bool)

(assert (=> bm!571021 m!7346088))

(declare-fun m!7346090 () Bool)

(assert (=> b!6563906 m!7346090))

(declare-fun m!7346092 () Bool)

(assert (=> bm!571023 m!7346092))

(assert (=> d!2058867 d!2059589))

(assert (=> d!2058625 d!2058825))

(assert (=> d!2058625 d!2058631))

(declare-fun d!2059591 () Bool)

(assert (=> d!2059591 (= (matchR!8622 lt!2406360 (_1!36721 lt!2406397)) (matchRSpec!3540 lt!2406360 (_1!36721 lt!2406397)))))

(assert (=> d!2059591 true))

(declare-fun _$88!5249 () Unit!159091)

(assert (=> d!2059591 (= (choose!48964 lt!2406360 (_1!36721 lt!2406397)) _$88!5249)))

(declare-fun bs!1676016 () Bool)

(assert (= bs!1676016 d!2059591))

(assert (=> bs!1676016 m!7343328))

(assert (=> bs!1676016 m!7343226))

(assert (=> d!2058625 d!2059591))

(assert (=> d!2058625 d!2059569))

(declare-fun bm!571024 () Bool)

(declare-fun call!571030 () List!65617)

(declare-fun call!571034 () List!65617)

(assert (=> bm!571024 (= call!571030 call!571034)))

(declare-fun b!6563909 () Bool)

(declare-fun e!3973445 () (InoxSet Context!11646))

(assert (=> b!6563909 (= e!3973445 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (t!379259 (exprs!6323 (h!71942 zl!343)))) true))))

(declare-fun b!6563910 () Bool)

(declare-fun e!3973448 () (InoxSet Context!11646))

(declare-fun e!3973447 () (InoxSet Context!11646))

(assert (=> b!6563910 (= e!3973448 e!3973447)))

(declare-fun c!1206322 () Bool)

(assert (=> b!6563910 (= c!1206322 ((_ is Concat!25284) (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun b!6563911 () Bool)

(declare-fun e!3973446 () (InoxSet Context!11646))

(declare-fun call!571033 () (InoxSet Context!11646))

(assert (=> b!6563911 (= e!3973446 call!571033)))

(declare-fun b!6563912 () Bool)

(declare-fun call!571032 () (InoxSet Context!11646))

(declare-fun call!571029 () (InoxSet Context!11646))

(assert (=> b!6563912 (= e!3973448 ((_ map or) call!571032 call!571029))))

(declare-fun bm!571025 () Bool)

(declare-fun c!1206320 () Bool)

(assert (=> bm!571025 (= call!571032 (derivationStepZipperDown!1687 (ite c!1206320 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343))))) (ite c!1206320 (Context!11647 (t!379259 (exprs!6323 (h!71942 zl!343)))) (Context!11647 call!571034)) (h!71940 s!2326)))))

(declare-fun b!6563913 () Bool)

(assert (=> b!6563913 (= e!3973447 call!571033)))

(declare-fun c!1206324 () Bool)

(declare-fun call!571031 () (InoxSet Context!11646))

(declare-fun bm!571026 () Bool)

(assert (=> bm!571026 (= call!571031 (derivationStepZipperDown!1687 (ite c!1206320 (regTwo!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1206324 (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (ite c!1206322 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (reg!16768 (h!71941 (exprs!6323 (h!71942 zl!343))))))) (ite (or c!1206320 c!1206324) (Context!11647 (t!379259 (exprs!6323 (h!71942 zl!343)))) (Context!11647 call!571030)) (h!71940 s!2326)))))

(declare-fun b!6563914 () Bool)

(declare-fun e!3973443 () Bool)

(assert (=> b!6563914 (= e!3973443 (nullable!6432 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343))))))))

(declare-fun bm!571027 () Bool)

(assert (=> bm!571027 (= call!571033 call!571029)))

(declare-fun bm!571028 () Bool)

(assert (=> bm!571028 (= call!571029 call!571031)))

(declare-fun b!6563915 () Bool)

(declare-fun c!1206323 () Bool)

(assert (=> b!6563915 (= c!1206323 ((_ is Star!16439) (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(assert (=> b!6563915 (= e!3973447 e!3973446)))

(declare-fun b!6563916 () Bool)

(assert (=> b!6563916 (= e!3973446 ((as const (Array Context!11646 Bool)) false))))

(declare-fun b!6563917 () Bool)

(declare-fun e!3973444 () (InoxSet Context!11646))

(assert (=> b!6563917 (= e!3973445 e!3973444)))

(assert (=> b!6563917 (= c!1206320 ((_ is Union!16439) (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun bm!571029 () Bool)

(assert (=> bm!571029 (= call!571034 ($colon$colon!2280 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 (h!71942 zl!343))))) (ite (or c!1206324 c!1206322) (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (h!71941 (exprs!6323 (h!71942 zl!343))))))))

(declare-fun b!6563918 () Bool)

(assert (=> b!6563918 (= e!3973444 ((_ map or) call!571032 call!571031))))

(declare-fun d!2059593 () Bool)

(declare-fun c!1206321 () Bool)

(assert (=> d!2059593 (= c!1206321 (and ((_ is ElementMatch!16439) (h!71941 (exprs!6323 (h!71942 zl!343)))) (= (c!1205620 (h!71941 (exprs!6323 (h!71942 zl!343)))) (h!71940 s!2326))))))

(assert (=> d!2059593 (= (derivationStepZipperDown!1687 (h!71941 (exprs!6323 (h!71942 zl!343))) (Context!11647 (t!379259 (exprs!6323 (h!71942 zl!343)))) (h!71940 s!2326)) e!3973445)))

(declare-fun b!6563919 () Bool)

(assert (=> b!6563919 (= c!1206324 e!3973443)))

(declare-fun res!2693504 () Bool)

(assert (=> b!6563919 (=> (not res!2693504) (not e!3973443))))

(assert (=> b!6563919 (= res!2693504 ((_ is Concat!25284) (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(assert (=> b!6563919 (= e!3973444 e!3973448)))

(assert (= (and d!2059593 c!1206321) b!6563909))

(assert (= (and d!2059593 (not c!1206321)) b!6563917))

(assert (= (and b!6563917 c!1206320) b!6563918))

(assert (= (and b!6563917 (not c!1206320)) b!6563919))

(assert (= (and b!6563919 res!2693504) b!6563914))

(assert (= (and b!6563919 c!1206324) b!6563912))

(assert (= (and b!6563919 (not c!1206324)) b!6563910))

(assert (= (and b!6563910 c!1206322) b!6563913))

(assert (= (and b!6563910 (not c!1206322)) b!6563915))

(assert (= (and b!6563915 c!1206323) b!6563911))

(assert (= (and b!6563915 (not c!1206323)) b!6563916))

(assert (= (or b!6563913 b!6563911) bm!571024))

(assert (= (or b!6563913 b!6563911) bm!571027))

(assert (= (or b!6563912 bm!571024) bm!571029))

(assert (= (or b!6563912 bm!571027) bm!571028))

(assert (= (or b!6563918 bm!571028) bm!571026))

(assert (= (or b!6563918 b!6563912) bm!571025))

(assert (=> b!6563914 m!7344458))

(declare-fun m!7346094 () Bool)

(assert (=> b!6563909 m!7346094))

(declare-fun m!7346096 () Bool)

(assert (=> bm!571029 m!7346096))

(declare-fun m!7346098 () Bool)

(assert (=> bm!571025 m!7346098))

(declare-fun m!7346100 () Bool)

(assert (=> bm!571026 m!7346100))

(assert (=> bm!570772 d!2059593))

(assert (=> d!2058819 d!2059543))

(declare-fun bs!1676017 () Bool)

(declare-fun b!6563928 () Bool)

(assert (= bs!1676017 (and b!6563928 b!6561898)))

(declare-fun lambda!365231 () Int)

(assert (=> bs!1676017 (not (= lambda!365231 lambda!365111))))

(declare-fun bs!1676018 () Bool)

(assert (= bs!1676018 (and b!6563928 d!2058817)))

(assert (=> bs!1676018 (not (= lambda!365231 lambda!365141))))

(declare-fun bs!1676019 () Bool)

(assert (= bs!1676019 (and b!6563928 b!6561287)))

(assert (=> bs!1676019 (not (= lambda!365231 lambda!365047))))

(declare-fun bs!1676020 () Bool)

(assert (= bs!1676020 (and b!6563928 d!2058767)))

(assert (=> bs!1676020 (not (= lambda!365231 lambda!365131))))

(declare-fun bs!1676021 () Bool)

(assert (= bs!1676021 (and b!6563928 d!2059477)))

(assert (=> bs!1676021 (not (= lambda!365231 lambda!365225))))

(declare-fun bs!1676022 () Bool)

(assert (= bs!1676022 (and b!6563928 b!6561249)))

(assert (=> bs!1676022 (not (= lambda!365231 lambda!365048))))

(declare-fun bs!1676023 () Bool)

(assert (= bs!1676023 (and b!6563928 d!2058617)))

(assert (=> bs!1676023 (not (= lambda!365231 lambda!365100))))

(declare-fun bs!1676024 () Bool)

(assert (= bs!1676024 (and b!6563928 b!6561283)))

(assert (=> bs!1676024 (not (= lambda!365231 lambda!365041))))

(assert (=> bs!1676024 (not (= lambda!365231 lambda!365042))))

(assert (=> bs!1676020 (not (= lambda!365231 lambda!365130))))

(declare-fun bs!1676025 () Bool)

(assert (= bs!1676025 (and b!6563928 b!6562199)))

(assert (=> bs!1676025 (= (and (= (reg!16768 (regOne!33391 lt!2406349)) (reg!16768 r!7292)) (= (regOne!33391 lt!2406349) r!7292)) (= lambda!365231 lambda!365132))))

(declare-fun bs!1676026 () Bool)

(assert (= bs!1676026 (and b!6563928 d!2058793)))

(assert (=> bs!1676026 (not (= lambda!365231 lambda!365135))))

(assert (=> bs!1676019 (not (= lambda!365231 lambda!365046))))

(assert (=> bs!1676022 (not (= lambda!365231 lambda!365049))))

(declare-fun bs!1676027 () Bool)

(assert (= bs!1676027 (and b!6563928 d!2058681)))

(assert (=> bs!1676027 (not (= lambda!365231 lambda!365116))))

(declare-fun bs!1676028 () Bool)

(assert (= bs!1676028 (and b!6563928 b!6562323)))

(assert (=> bs!1676028 (not (= lambda!365231 lambda!365140))))

(declare-fun bs!1676029 () Bool)

(assert (= bs!1676029 (and b!6563928 d!2058765)))

(assert (=> bs!1676029 (not (= lambda!365231 lambda!365129))))

(declare-fun bs!1676030 () Bool)

(assert (= bs!1676030 (and b!6563928 b!6562327)))

(assert (=> bs!1676030 (= (and (= (reg!16768 (regOne!33391 lt!2406349)) (reg!16768 lt!2406396)) (= (regOne!33391 lt!2406349) lt!2406396)) (= lambda!365231 lambda!365139))))

(declare-fun bs!1676031 () Bool)

(assert (= bs!1676031 (and b!6563928 b!6562195)))

(assert (=> bs!1676031 (not (= lambda!365231 lambda!365133))))

(assert (=> bs!1676026 (not (= lambda!365231 lambda!365134))))

(assert (=> bs!1676023 (not (= lambda!365231 lambda!365097))))

(declare-fun bs!1676032 () Bool)

(assert (= bs!1676032 (and b!6563928 b!6561902)))

(assert (=> bs!1676032 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (reg!16768 (regOne!33391 lt!2406349)) (reg!16768 lt!2406360)) (= (regOne!33391 lt!2406349) lt!2406360)) (= lambda!365231 lambda!365109))))

(assert (=> bs!1676021 (not (= lambda!365231 lambda!365226))))

(declare-fun bs!1676033 () Bool)

(assert (= bs!1676033 (and b!6563928 b!6562412)))

(assert (=> bs!1676033 (= (and (= (reg!16768 (regOne!33391 lt!2406349)) (reg!16768 lt!2406349)) (= (regOne!33391 lt!2406349) lt!2406349)) (= lambda!365231 lambda!365150))))

(declare-fun bs!1676034 () Bool)

(assert (= bs!1676034 (and b!6563928 b!6562408)))

(assert (=> bs!1676034 (not (= lambda!365231 lambda!365151))))

(assert (=> b!6563928 true))

(assert (=> b!6563928 true))

(declare-fun bs!1676035 () Bool)

(declare-fun b!6563924 () Bool)

(assert (= bs!1676035 (and b!6563924 b!6561898)))

(declare-fun lambda!365232 () Int)

(assert (=> bs!1676035 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regOne!33391 lt!2406349)) (regOne!33390 lt!2406360)) (= (regTwo!33390 (regOne!33391 lt!2406349)) (regTwo!33390 lt!2406360))) (= lambda!365232 lambda!365111))))

(declare-fun bs!1676036 () Bool)

(assert (= bs!1676036 (and b!6563924 d!2058817)))

(assert (=> bs!1676036 (not (= lambda!365232 lambda!365141))))

(declare-fun bs!1676037 () Bool)

(assert (= bs!1676037 (and b!6563924 b!6561287)))

(assert (=> bs!1676037 (= (and (= (regOne!33390 (regOne!33391 lt!2406349)) lt!2406360) (= (regTwo!33390 (regOne!33391 lt!2406349)) (regTwo!33390 r!7292))) (= lambda!365232 lambda!365047))))

(declare-fun bs!1676038 () Bool)

(assert (= bs!1676038 (and b!6563924 d!2058767)))

(assert (=> bs!1676038 (= (and (= (regOne!33390 (regOne!33391 lt!2406349)) (regOne!33390 r!7292)) (= (regTwo!33390 (regOne!33391 lt!2406349)) (regTwo!33390 r!7292))) (= lambda!365232 lambda!365131))))

(declare-fun bs!1676039 () Bool)

(assert (= bs!1676039 (and b!6563924 d!2059477)))

(assert (=> bs!1676039 (not (= lambda!365232 lambda!365225))))

(declare-fun bs!1676040 () Bool)

(assert (= bs!1676040 (and b!6563924 b!6561249)))

(assert (=> bs!1676040 (not (= lambda!365232 lambda!365048))))

(declare-fun bs!1676041 () Bool)

(assert (= bs!1676041 (and b!6563924 d!2058617)))

(assert (=> bs!1676041 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regOne!33391 lt!2406349)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regOne!33391 lt!2406349)) lt!2406358)) (= lambda!365232 lambda!365100))))

(declare-fun bs!1676042 () Bool)

(assert (= bs!1676042 (and b!6563924 b!6563928)))

(assert (=> bs!1676042 (not (= lambda!365232 lambda!365231))))

(declare-fun bs!1676043 () Bool)

(assert (= bs!1676043 (and b!6563924 b!6561283)))

(assert (=> bs!1676043 (not (= lambda!365232 lambda!365041))))

(assert (=> bs!1676043 (= (and (= (regOne!33390 (regOne!33391 lt!2406349)) (regOne!33390 r!7292)) (= (regTwo!33390 (regOne!33391 lt!2406349)) (regTwo!33390 r!7292))) (= lambda!365232 lambda!365042))))

(assert (=> bs!1676038 (not (= lambda!365232 lambda!365130))))

(declare-fun bs!1676044 () Bool)

(assert (= bs!1676044 (and b!6563924 b!6562199)))

(assert (=> bs!1676044 (not (= lambda!365232 lambda!365132))))

(declare-fun bs!1676045 () Bool)

(assert (= bs!1676045 (and b!6563924 d!2058793)))

(assert (=> bs!1676045 (= (and (= (regOne!33390 (regOne!33391 lt!2406349)) lt!2406360) (= (regTwo!33390 (regOne!33391 lt!2406349)) (regTwo!33390 r!7292))) (= lambda!365232 lambda!365135))))

(assert (=> bs!1676037 (not (= lambda!365232 lambda!365046))))

(assert (=> bs!1676040 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regOne!33391 lt!2406349)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regOne!33391 lt!2406349)) lt!2406358)) (= lambda!365232 lambda!365049))))

(declare-fun bs!1676046 () Bool)

(assert (= bs!1676046 (and b!6563924 d!2058681)))

(assert (=> bs!1676046 (not (= lambda!365232 lambda!365116))))

(declare-fun bs!1676047 () Bool)

(assert (= bs!1676047 (and b!6563924 b!6562323)))

(assert (=> bs!1676047 (= (and (= (regOne!33390 (regOne!33391 lt!2406349)) (regOne!33390 lt!2406396)) (= (regTwo!33390 (regOne!33391 lt!2406349)) (regTwo!33390 lt!2406396))) (= lambda!365232 lambda!365140))))

(declare-fun bs!1676048 () Bool)

(assert (= bs!1676048 (and b!6563924 d!2058765)))

(assert (=> bs!1676048 (not (= lambda!365232 lambda!365129))))

(declare-fun bs!1676049 () Bool)

(assert (= bs!1676049 (and b!6563924 b!6562327)))

(assert (=> bs!1676049 (not (= lambda!365232 lambda!365139))))

(declare-fun bs!1676050 () Bool)

(assert (= bs!1676050 (and b!6563924 b!6562195)))

(assert (=> bs!1676050 (= (and (= (regOne!33390 (regOne!33391 lt!2406349)) (regOne!33390 r!7292)) (= (regTwo!33390 (regOne!33391 lt!2406349)) (regTwo!33390 r!7292))) (= lambda!365232 lambda!365133))))

(assert (=> bs!1676045 (not (= lambda!365232 lambda!365134))))

(assert (=> bs!1676041 (not (= lambda!365232 lambda!365097))))

(declare-fun bs!1676051 () Bool)

(assert (= bs!1676051 (and b!6563924 b!6561902)))

(assert (=> bs!1676051 (not (= lambda!365232 lambda!365109))))

(assert (=> bs!1676039 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regOne!33391 lt!2406349)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regOne!33391 lt!2406349)) lt!2406358)) (= lambda!365232 lambda!365226))))

(declare-fun bs!1676052 () Bool)

(assert (= bs!1676052 (and b!6563924 b!6562412)))

(assert (=> bs!1676052 (not (= lambda!365232 lambda!365150))))

(declare-fun bs!1676053 () Bool)

(assert (= bs!1676053 (and b!6563924 b!6562408)))

(assert (=> bs!1676053 (= (and (= (regOne!33390 (regOne!33391 lt!2406349)) (regOne!33390 lt!2406349)) (= (regTwo!33390 (regOne!33391 lt!2406349)) (regTwo!33390 lt!2406349))) (= lambda!365232 lambda!365151))))

(assert (=> b!6563924 true))

(assert (=> b!6563924 true))

(declare-fun b!6563920 () Bool)

(declare-fun c!1206328 () Bool)

(assert (=> b!6563920 (= c!1206328 ((_ is ElementMatch!16439) (regOne!33391 lt!2406349)))))

(declare-fun e!3973452 () Bool)

(declare-fun e!3973454 () Bool)

(assert (=> b!6563920 (= e!3973452 e!3973454)))

(declare-fun b!6563921 () Bool)

(declare-fun res!2693506 () Bool)

(declare-fun e!3973455 () Bool)

(assert (=> b!6563921 (=> res!2693506 e!3973455)))

(declare-fun call!571036 () Bool)

(assert (=> b!6563921 (= res!2693506 call!571036)))

(declare-fun e!3973451 () Bool)

(assert (=> b!6563921 (= e!3973451 e!3973455)))

(declare-fun b!6563922 () Bool)

(declare-fun e!3973449 () Bool)

(declare-fun e!3973450 () Bool)

(assert (=> b!6563922 (= e!3973449 e!3973450)))

(declare-fun res!2693507 () Bool)

(assert (=> b!6563922 (= res!2693507 (matchRSpec!3540 (regOne!33391 (regOne!33391 lt!2406349)) s!2326))))

(assert (=> b!6563922 (=> res!2693507 e!3973450)))

(declare-fun b!6563923 () Bool)

(declare-fun e!3973453 () Bool)

(assert (=> b!6563923 (= e!3973453 call!571036)))

(declare-fun call!571035 () Bool)

(assert (=> b!6563924 (= e!3973451 call!571035)))

(declare-fun b!6563925 () Bool)

(assert (=> b!6563925 (= e!3973454 (= s!2326 (Cons!65492 (c!1205620 (regOne!33391 lt!2406349)) Nil!65492)))))

(declare-fun bm!571030 () Bool)

(assert (=> bm!571030 (= call!571036 (isEmpty!37737 s!2326))))

(declare-fun b!6563926 () Bool)

(declare-fun c!1206325 () Bool)

(assert (=> b!6563926 (= c!1206325 ((_ is Union!16439) (regOne!33391 lt!2406349)))))

(assert (=> b!6563926 (= e!3973454 e!3973449)))

(declare-fun b!6563927 () Bool)

(assert (=> b!6563927 (= e!3973449 e!3973451)))

(declare-fun c!1206326 () Bool)

(assert (=> b!6563927 (= c!1206326 ((_ is Star!16439) (regOne!33391 lt!2406349)))))

(declare-fun d!2059595 () Bool)

(declare-fun c!1206327 () Bool)

(assert (=> d!2059595 (= c!1206327 ((_ is EmptyExpr!16439) (regOne!33391 lt!2406349)))))

(assert (=> d!2059595 (= (matchRSpec!3540 (regOne!33391 lt!2406349) s!2326) e!3973453)))

(assert (=> b!6563928 (= e!3973455 call!571035)))

(declare-fun b!6563929 () Bool)

(assert (=> b!6563929 (= e!3973453 e!3973452)))

(declare-fun res!2693505 () Bool)

(assert (=> b!6563929 (= res!2693505 (not ((_ is EmptyLang!16439) (regOne!33391 lt!2406349))))))

(assert (=> b!6563929 (=> (not res!2693505) (not e!3973452))))

(declare-fun b!6563930 () Bool)

(assert (=> b!6563930 (= e!3973450 (matchRSpec!3540 (regTwo!33391 (regOne!33391 lt!2406349)) s!2326))))

(declare-fun bm!571031 () Bool)

(assert (=> bm!571031 (= call!571035 (Exists!3509 (ite c!1206326 lambda!365231 lambda!365232)))))

(assert (= (and d!2059595 c!1206327) b!6563923))

(assert (= (and d!2059595 (not c!1206327)) b!6563929))

(assert (= (and b!6563929 res!2693505) b!6563920))

(assert (= (and b!6563920 c!1206328) b!6563925))

(assert (= (and b!6563920 (not c!1206328)) b!6563926))

(assert (= (and b!6563926 c!1206325) b!6563922))

(assert (= (and b!6563926 (not c!1206325)) b!6563927))

(assert (= (and b!6563922 (not res!2693507)) b!6563930))

(assert (= (and b!6563927 c!1206326) b!6563921))

(assert (= (and b!6563927 (not c!1206326)) b!6563924))

(assert (= (and b!6563921 (not res!2693506)) b!6563928))

(assert (= (or b!6563928 b!6563924) bm!571031))

(assert (= (or b!6563923 b!6563921) bm!571030))

(declare-fun m!7346102 () Bool)

(assert (=> b!6563922 m!7346102))

(assert (=> bm!571030 m!7343766))

(declare-fun m!7346104 () Bool)

(assert (=> b!6563930 m!7346104))

(declare-fun m!7346106 () Bool)

(assert (=> bm!571031 m!7346106))

(assert (=> b!6562406 d!2059595))

(declare-fun bm!571032 () Bool)

(declare-fun call!571038 () List!65617)

(declare-fun call!571042 () List!65617)

(assert (=> bm!571032 (= call!571038 call!571042)))

(declare-fun b!6563931 () Bool)

(declare-fun e!3973458 () (InoxSet Context!11646))

(assert (=> b!6563931 (= e!3973458 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (t!379259 (exprs!6323 lt!2406352))) true))))

(declare-fun b!6563932 () Bool)

(declare-fun e!3973461 () (InoxSet Context!11646))

(declare-fun e!3973460 () (InoxSet Context!11646))

(assert (=> b!6563932 (= e!3973461 e!3973460)))

(declare-fun c!1206331 () Bool)

(assert (=> b!6563932 (= c!1206331 ((_ is Concat!25284) (h!71941 (exprs!6323 lt!2406352))))))

(declare-fun b!6563933 () Bool)

(declare-fun e!3973459 () (InoxSet Context!11646))

(declare-fun call!571041 () (InoxSet Context!11646))

(assert (=> b!6563933 (= e!3973459 call!571041)))

(declare-fun b!6563934 () Bool)

(declare-fun call!571040 () (InoxSet Context!11646))

(declare-fun call!571037 () (InoxSet Context!11646))

(assert (=> b!6563934 (= e!3973461 ((_ map or) call!571040 call!571037))))

(declare-fun c!1206329 () Bool)

(declare-fun bm!571033 () Bool)

(assert (=> bm!571033 (= call!571040 (derivationStepZipperDown!1687 (ite c!1206329 (regOne!33391 (h!71941 (exprs!6323 lt!2406352))) (regOne!33390 (h!71941 (exprs!6323 lt!2406352)))) (ite c!1206329 (Context!11647 (t!379259 (exprs!6323 lt!2406352))) (Context!11647 call!571042)) (h!71940 s!2326)))))

(declare-fun b!6563935 () Bool)

(assert (=> b!6563935 (= e!3973460 call!571041)))

(declare-fun c!1206333 () Bool)

(declare-fun call!571039 () (InoxSet Context!11646))

(declare-fun bm!571034 () Bool)

(assert (=> bm!571034 (= call!571039 (derivationStepZipperDown!1687 (ite c!1206329 (regTwo!33391 (h!71941 (exprs!6323 lt!2406352))) (ite c!1206333 (regTwo!33390 (h!71941 (exprs!6323 lt!2406352))) (ite c!1206331 (regOne!33390 (h!71941 (exprs!6323 lt!2406352))) (reg!16768 (h!71941 (exprs!6323 lt!2406352)))))) (ite (or c!1206329 c!1206333) (Context!11647 (t!379259 (exprs!6323 lt!2406352))) (Context!11647 call!571038)) (h!71940 s!2326)))))

(declare-fun b!6563936 () Bool)

(declare-fun e!3973456 () Bool)

(assert (=> b!6563936 (= e!3973456 (nullable!6432 (regOne!33390 (h!71941 (exprs!6323 lt!2406352)))))))

(declare-fun bm!571035 () Bool)

(assert (=> bm!571035 (= call!571041 call!571037)))

(declare-fun bm!571036 () Bool)

(assert (=> bm!571036 (= call!571037 call!571039)))

(declare-fun b!6563937 () Bool)

(declare-fun c!1206332 () Bool)

(assert (=> b!6563937 (= c!1206332 ((_ is Star!16439) (h!71941 (exprs!6323 lt!2406352))))))

(assert (=> b!6563937 (= e!3973460 e!3973459)))

(declare-fun b!6563938 () Bool)

(assert (=> b!6563938 (= e!3973459 ((as const (Array Context!11646 Bool)) false))))

(declare-fun b!6563939 () Bool)

(declare-fun e!3973457 () (InoxSet Context!11646))

(assert (=> b!6563939 (= e!3973458 e!3973457)))

(assert (=> b!6563939 (= c!1206329 ((_ is Union!16439) (h!71941 (exprs!6323 lt!2406352))))))

(declare-fun bm!571037 () Bool)

(assert (=> bm!571037 (= call!571042 ($colon$colon!2280 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406352)))) (ite (or c!1206333 c!1206331) (regTwo!33390 (h!71941 (exprs!6323 lt!2406352))) (h!71941 (exprs!6323 lt!2406352)))))))

(declare-fun b!6563940 () Bool)

(assert (=> b!6563940 (= e!3973457 ((_ map or) call!571040 call!571039))))

(declare-fun d!2059597 () Bool)

(declare-fun c!1206330 () Bool)

(assert (=> d!2059597 (= c!1206330 (and ((_ is ElementMatch!16439) (h!71941 (exprs!6323 lt!2406352))) (= (c!1205620 (h!71941 (exprs!6323 lt!2406352))) (h!71940 s!2326))))))

(assert (=> d!2059597 (= (derivationStepZipperDown!1687 (h!71941 (exprs!6323 lt!2406352)) (Context!11647 (t!379259 (exprs!6323 lt!2406352))) (h!71940 s!2326)) e!3973458)))

(declare-fun b!6563941 () Bool)

(assert (=> b!6563941 (= c!1206333 e!3973456)))

(declare-fun res!2693508 () Bool)

(assert (=> b!6563941 (=> (not res!2693508) (not e!3973456))))

(assert (=> b!6563941 (= res!2693508 ((_ is Concat!25284) (h!71941 (exprs!6323 lt!2406352))))))

(assert (=> b!6563941 (= e!3973457 e!3973461)))

(assert (= (and d!2059597 c!1206330) b!6563931))

(assert (= (and d!2059597 (not c!1206330)) b!6563939))

(assert (= (and b!6563939 c!1206329) b!6563940))

(assert (= (and b!6563939 (not c!1206329)) b!6563941))

(assert (= (and b!6563941 res!2693508) b!6563936))

(assert (= (and b!6563941 c!1206333) b!6563934))

(assert (= (and b!6563941 (not c!1206333)) b!6563932))

(assert (= (and b!6563932 c!1206331) b!6563935))

(assert (= (and b!6563932 (not c!1206331)) b!6563937))

(assert (= (and b!6563937 c!1206332) b!6563933))

(assert (= (and b!6563937 (not c!1206332)) b!6563938))

(assert (= (or b!6563935 b!6563933) bm!571032))

(assert (= (or b!6563935 b!6563933) bm!571035))

(assert (= (or b!6563934 bm!571032) bm!571037))

(assert (= (or b!6563934 bm!571035) bm!571036))

(assert (= (or b!6563940 bm!571036) bm!571034))

(assert (= (or b!6563940 b!6563934) bm!571033))

(declare-fun m!7346108 () Bool)

(assert (=> b!6563936 m!7346108))

(declare-fun m!7346110 () Bool)

(assert (=> b!6563931 m!7346110))

(declare-fun m!7346112 () Bool)

(assert (=> bm!571037 m!7346112))

(declare-fun m!7346114 () Bool)

(assert (=> bm!571033 m!7346114))

(declare-fun m!7346116 () Bool)

(assert (=> bm!571034 m!7346116))

(assert (=> bm!570733 d!2059597))

(declare-fun b!6563942 () Bool)

(declare-fun e!3973463 () List!65616)

(assert (=> b!6563942 (= e!3973463 (_2!36721 (get!22740 lt!2406527)))))

(declare-fun b!6563945 () Bool)

(declare-fun e!3973462 () Bool)

(declare-fun lt!2406719 () List!65616)

(assert (=> b!6563945 (= e!3973462 (or (not (= (_2!36721 (get!22740 lt!2406527)) Nil!65492)) (= lt!2406719 (_1!36721 (get!22740 lt!2406527)))))))

(declare-fun d!2059599 () Bool)

(assert (=> d!2059599 e!3973462))

(declare-fun res!2693509 () Bool)

(assert (=> d!2059599 (=> (not res!2693509) (not e!3973462))))

(assert (=> d!2059599 (= res!2693509 (= (content!12598 lt!2406719) ((_ map or) (content!12598 (_1!36721 (get!22740 lt!2406527))) (content!12598 (_2!36721 (get!22740 lt!2406527))))))))

(assert (=> d!2059599 (= lt!2406719 e!3973463)))

(declare-fun c!1206334 () Bool)

(assert (=> d!2059599 (= c!1206334 ((_ is Nil!65492) (_1!36721 (get!22740 lt!2406527))))))

(assert (=> d!2059599 (= (++!14580 (_1!36721 (get!22740 lt!2406527)) (_2!36721 (get!22740 lt!2406527))) lt!2406719)))

(declare-fun b!6563943 () Bool)

(assert (=> b!6563943 (= e!3973463 (Cons!65492 (h!71940 (_1!36721 (get!22740 lt!2406527))) (++!14580 (t!379258 (_1!36721 (get!22740 lt!2406527))) (_2!36721 (get!22740 lt!2406527)))))))

(declare-fun b!6563944 () Bool)

(declare-fun res!2693510 () Bool)

(assert (=> b!6563944 (=> (not res!2693510) (not e!3973462))))

(assert (=> b!6563944 (= res!2693510 (= (size!40527 lt!2406719) (+ (size!40527 (_1!36721 (get!22740 lt!2406527))) (size!40527 (_2!36721 (get!22740 lt!2406527))))))))

(assert (= (and d!2059599 c!1206334) b!6563942))

(assert (= (and d!2059599 (not c!1206334)) b!6563943))

(assert (= (and d!2059599 res!2693509) b!6563944))

(assert (= (and b!6563944 res!2693510) b!6563945))

(declare-fun m!7346118 () Bool)

(assert (=> d!2059599 m!7346118))

(declare-fun m!7346120 () Bool)

(assert (=> d!2059599 m!7346120))

(declare-fun m!7346122 () Bool)

(assert (=> d!2059599 m!7346122))

(declare-fun m!7346124 () Bool)

(assert (=> b!6563943 m!7346124))

(declare-fun m!7346126 () Bool)

(assert (=> b!6563944 m!7346126))

(declare-fun m!7346128 () Bool)

(assert (=> b!6563944 m!7346128))

(declare-fun m!7346130 () Bool)

(assert (=> b!6563944 m!7346130))

(assert (=> b!6561998 d!2059599))

(declare-fun d!2059601 () Bool)

(assert (=> d!2059601 (= (get!22740 lt!2406527) (v!52514 lt!2406527))))

(assert (=> b!6561998 d!2059601))

(declare-fun d!2059603 () Bool)

(declare-fun c!1206335 () Bool)

(assert (=> d!2059603 (= c!1206335 (isEmpty!37737 (tail!12414 (t!379258 s!2326))))))

(declare-fun e!3973464 () Bool)

(assert (=> d!2059603 (= (matchZipper!2451 (derivationStepZipper!2405 lt!2406342 (head!13329 (t!379258 s!2326))) (tail!12414 (t!379258 s!2326))) e!3973464)))

(declare-fun b!6563946 () Bool)

(assert (=> b!6563946 (= e!3973464 (nullableZipper!2184 (derivationStepZipper!2405 lt!2406342 (head!13329 (t!379258 s!2326)))))))

(declare-fun b!6563947 () Bool)

(assert (=> b!6563947 (= e!3973464 (matchZipper!2451 (derivationStepZipper!2405 (derivationStepZipper!2405 lt!2406342 (head!13329 (t!379258 s!2326))) (head!13329 (tail!12414 (t!379258 s!2326)))) (tail!12414 (tail!12414 (t!379258 s!2326)))))))

(assert (= (and d!2059603 c!1206335) b!6563946))

(assert (= (and d!2059603 (not c!1206335)) b!6563947))

(assert (=> d!2059603 m!7343762))

(assert (=> d!2059603 m!7345894))

(assert (=> b!6563946 m!7343760))

(declare-fun m!7346132 () Bool)

(assert (=> b!6563946 m!7346132))

(assert (=> b!6563947 m!7343762))

(assert (=> b!6563947 m!7345898))

(assert (=> b!6563947 m!7343760))

(assert (=> b!6563947 m!7345898))

(declare-fun m!7346134 () Bool)

(assert (=> b!6563947 m!7346134))

(assert (=> b!6563947 m!7343762))

(assert (=> b!6563947 m!7345902))

(assert (=> b!6563947 m!7346134))

(assert (=> b!6563947 m!7345902))

(declare-fun m!7346136 () Bool)

(assert (=> b!6563947 m!7346136))

(assert (=> b!6561734 d!2059603))

(declare-fun bs!1676054 () Bool)

(declare-fun d!2059605 () Bool)

(assert (= bs!1676054 (and d!2059605 d!2059463)))

(declare-fun lambda!365233 () Int)

(assert (=> bs!1676054 (= (= (head!13329 (t!379258 s!2326)) (head!13329 (_1!36721 lt!2406377))) (= lambda!365233 lambda!365220))))

(declare-fun bs!1676055 () Bool)

(assert (= bs!1676055 (and d!2059605 d!2059511)))

(assert (=> bs!1676055 (= lambda!365233 lambda!365227)))

(declare-fun bs!1676056 () Bool)

(assert (= bs!1676056 (and d!2059605 d!2058835)))

(assert (=> bs!1676056 (= (= (head!13329 (t!379258 s!2326)) (h!71940 s!2326)) (= lambda!365233 lambda!365144))))

(declare-fun bs!1676057 () Bool)

(assert (= bs!1676057 (and d!2059605 b!6561279)))

(assert (=> bs!1676057 (= (= (head!13329 (t!379258 s!2326)) (h!71940 s!2326)) (= lambda!365233 lambda!365043))))

(declare-fun bs!1676058 () Bool)

(assert (= bs!1676058 (and d!2059605 d!2059537)))

(assert (=> bs!1676058 (= (= (head!13329 (t!379258 s!2326)) (head!13329 s!2326)) (= lambda!365233 lambda!365228))))

(assert (=> d!2059605 true))

(assert (=> d!2059605 (= (derivationStepZipper!2405 lt!2406342 (head!13329 (t!379258 s!2326))) (flatMap!1944 lt!2406342 lambda!365233))))

(declare-fun bs!1676059 () Bool)

(assert (= bs!1676059 d!2059605))

(declare-fun m!7346138 () Bool)

(assert (=> bs!1676059 m!7346138))

(assert (=> b!6561734 d!2059605))

(assert (=> b!6561734 d!2059513))

(assert (=> b!6561734 d!2059515))

(declare-fun bs!1676060 () Bool)

(declare-fun b!6563956 () Bool)

(assert (= bs!1676060 (and b!6563956 b!6561898)))

(declare-fun lambda!365234 () Int)

(assert (=> bs!1676060 (not (= lambda!365234 lambda!365111))))

(declare-fun bs!1676061 () Bool)

(assert (= bs!1676061 (and b!6563956 d!2058817)))

(assert (=> bs!1676061 (not (= lambda!365234 lambda!365141))))

(declare-fun bs!1676062 () Bool)

(assert (= bs!1676062 (and b!6563956 d!2058767)))

(assert (=> bs!1676062 (not (= lambda!365234 lambda!365131))))

(declare-fun bs!1676063 () Bool)

(assert (= bs!1676063 (and b!6563956 d!2059477)))

(assert (=> bs!1676063 (not (= lambda!365234 lambda!365225))))

(declare-fun bs!1676064 () Bool)

(assert (= bs!1676064 (and b!6563956 b!6561249)))

(assert (=> bs!1676064 (not (= lambda!365234 lambda!365048))))

(declare-fun bs!1676065 () Bool)

(assert (= bs!1676065 (and b!6563956 d!2058617)))

(assert (=> bs!1676065 (not (= lambda!365234 lambda!365100))))

(declare-fun bs!1676066 () Bool)

(assert (= bs!1676066 (and b!6563956 b!6563928)))

(assert (=> bs!1676066 (= (and (= (reg!16768 (regOne!33391 r!7292)) (reg!16768 (regOne!33391 lt!2406349))) (= (regOne!33391 r!7292) (regOne!33391 lt!2406349))) (= lambda!365234 lambda!365231))))

(declare-fun bs!1676067 () Bool)

(assert (= bs!1676067 (and b!6563956 b!6561283)))

(assert (=> bs!1676067 (not (= lambda!365234 lambda!365041))))

(assert (=> bs!1676067 (not (= lambda!365234 lambda!365042))))

(assert (=> bs!1676062 (not (= lambda!365234 lambda!365130))))

(declare-fun bs!1676068 () Bool)

(assert (= bs!1676068 (and b!6563956 b!6562199)))

(assert (=> bs!1676068 (= (and (= (reg!16768 (regOne!33391 r!7292)) (reg!16768 r!7292)) (= (regOne!33391 r!7292) r!7292)) (= lambda!365234 lambda!365132))))

(declare-fun bs!1676069 () Bool)

(assert (= bs!1676069 (and b!6563956 d!2058793)))

(assert (=> bs!1676069 (not (= lambda!365234 lambda!365135))))

(declare-fun bs!1676070 () Bool)

(assert (= bs!1676070 (and b!6563956 b!6561287)))

(assert (=> bs!1676070 (not (= lambda!365234 lambda!365046))))

(assert (=> bs!1676064 (not (= lambda!365234 lambda!365049))))

(declare-fun bs!1676071 () Bool)

(assert (= bs!1676071 (and b!6563956 d!2058681)))

(assert (=> bs!1676071 (not (= lambda!365234 lambda!365116))))

(declare-fun bs!1676072 () Bool)

(assert (= bs!1676072 (and b!6563956 b!6562323)))

(assert (=> bs!1676072 (not (= lambda!365234 lambda!365140))))

(declare-fun bs!1676073 () Bool)

(assert (= bs!1676073 (and b!6563956 b!6563924)))

(assert (=> bs!1676073 (not (= lambda!365234 lambda!365232))))

(assert (=> bs!1676070 (not (= lambda!365234 lambda!365047))))

(declare-fun bs!1676074 () Bool)

(assert (= bs!1676074 (and b!6563956 d!2058765)))

(assert (=> bs!1676074 (not (= lambda!365234 lambda!365129))))

(declare-fun bs!1676075 () Bool)

(assert (= bs!1676075 (and b!6563956 b!6562327)))

(assert (=> bs!1676075 (= (and (= (reg!16768 (regOne!33391 r!7292)) (reg!16768 lt!2406396)) (= (regOne!33391 r!7292) lt!2406396)) (= lambda!365234 lambda!365139))))

(declare-fun bs!1676076 () Bool)

(assert (= bs!1676076 (and b!6563956 b!6562195)))

(assert (=> bs!1676076 (not (= lambda!365234 lambda!365133))))

(assert (=> bs!1676069 (not (= lambda!365234 lambda!365134))))

(assert (=> bs!1676065 (not (= lambda!365234 lambda!365097))))

(declare-fun bs!1676077 () Bool)

(assert (= bs!1676077 (and b!6563956 b!6561902)))

(assert (=> bs!1676077 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (reg!16768 (regOne!33391 r!7292)) (reg!16768 lt!2406360)) (= (regOne!33391 r!7292) lt!2406360)) (= lambda!365234 lambda!365109))))

(assert (=> bs!1676063 (not (= lambda!365234 lambda!365226))))

(declare-fun bs!1676078 () Bool)

(assert (= bs!1676078 (and b!6563956 b!6562412)))

(assert (=> bs!1676078 (= (and (= (reg!16768 (regOne!33391 r!7292)) (reg!16768 lt!2406349)) (= (regOne!33391 r!7292) lt!2406349)) (= lambda!365234 lambda!365150))))

(declare-fun bs!1676079 () Bool)

(assert (= bs!1676079 (and b!6563956 b!6562408)))

(assert (=> bs!1676079 (not (= lambda!365234 lambda!365151))))

(assert (=> b!6563956 true))

(assert (=> b!6563956 true))

(declare-fun bs!1676080 () Bool)

(declare-fun b!6563952 () Bool)

(assert (= bs!1676080 (and b!6563952 b!6561898)))

(declare-fun lambda!365235 () Int)

(assert (=> bs!1676080 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regOne!33391 r!7292)) (regOne!33390 lt!2406360)) (= (regTwo!33390 (regOne!33391 r!7292)) (regTwo!33390 lt!2406360))) (= lambda!365235 lambda!365111))))

(declare-fun bs!1676081 () Bool)

(assert (= bs!1676081 (and b!6563952 d!2058817)))

(assert (=> bs!1676081 (not (= lambda!365235 lambda!365141))))

(declare-fun bs!1676082 () Bool)

(assert (= bs!1676082 (and b!6563952 d!2058767)))

(assert (=> bs!1676082 (= (and (= (regOne!33390 (regOne!33391 r!7292)) (regOne!33390 r!7292)) (= (regTwo!33390 (regOne!33391 r!7292)) (regTwo!33390 r!7292))) (= lambda!365235 lambda!365131))))

(declare-fun bs!1676083 () Bool)

(assert (= bs!1676083 (and b!6563952 d!2059477)))

(assert (=> bs!1676083 (not (= lambda!365235 lambda!365225))))

(declare-fun bs!1676084 () Bool)

(assert (= bs!1676084 (and b!6563952 b!6561249)))

(assert (=> bs!1676084 (not (= lambda!365235 lambda!365048))))

(declare-fun bs!1676085 () Bool)

(assert (= bs!1676085 (and b!6563952 d!2058617)))

(assert (=> bs!1676085 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regOne!33391 r!7292)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regOne!33391 r!7292)) lt!2406358)) (= lambda!365235 lambda!365100))))

(declare-fun bs!1676086 () Bool)

(assert (= bs!1676086 (and b!6563952 b!6563928)))

(assert (=> bs!1676086 (not (= lambda!365235 lambda!365231))))

(declare-fun bs!1676087 () Bool)

(assert (= bs!1676087 (and b!6563952 b!6561283)))

(assert (=> bs!1676087 (not (= lambda!365235 lambda!365041))))

(assert (=> bs!1676087 (= (and (= (regOne!33390 (regOne!33391 r!7292)) (regOne!33390 r!7292)) (= (regTwo!33390 (regOne!33391 r!7292)) (regTwo!33390 r!7292))) (= lambda!365235 lambda!365042))))

(assert (=> bs!1676082 (not (= lambda!365235 lambda!365130))))

(declare-fun bs!1676088 () Bool)

(assert (= bs!1676088 (and b!6563952 b!6562199)))

(assert (=> bs!1676088 (not (= lambda!365235 lambda!365132))))

(declare-fun bs!1676089 () Bool)

(assert (= bs!1676089 (and b!6563952 d!2058793)))

(assert (=> bs!1676089 (= (and (= (regOne!33390 (regOne!33391 r!7292)) lt!2406360) (= (regTwo!33390 (regOne!33391 r!7292)) (regTwo!33390 r!7292))) (= lambda!365235 lambda!365135))))

(assert (=> bs!1676084 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regOne!33391 r!7292)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regOne!33391 r!7292)) lt!2406358)) (= lambda!365235 lambda!365049))))

(declare-fun bs!1676090 () Bool)

(assert (= bs!1676090 (and b!6563952 d!2058681)))

(assert (=> bs!1676090 (not (= lambda!365235 lambda!365116))))

(declare-fun bs!1676091 () Bool)

(assert (= bs!1676091 (and b!6563952 b!6562323)))

(assert (=> bs!1676091 (= (and (= (regOne!33390 (regOne!33391 r!7292)) (regOne!33390 lt!2406396)) (= (regTwo!33390 (regOne!33391 r!7292)) (regTwo!33390 lt!2406396))) (= lambda!365235 lambda!365140))))

(declare-fun bs!1676092 () Bool)

(assert (= bs!1676092 (and b!6563952 b!6563924)))

(assert (=> bs!1676092 (= (and (= (regOne!33390 (regOne!33391 r!7292)) (regOne!33390 (regOne!33391 lt!2406349))) (= (regTwo!33390 (regOne!33391 r!7292)) (regTwo!33390 (regOne!33391 lt!2406349)))) (= lambda!365235 lambda!365232))))

(declare-fun bs!1676093 () Bool)

(assert (= bs!1676093 (and b!6563952 b!6561287)))

(assert (=> bs!1676093 (= (and (= (regOne!33390 (regOne!33391 r!7292)) lt!2406360) (= (regTwo!33390 (regOne!33391 r!7292)) (regTwo!33390 r!7292))) (= lambda!365235 lambda!365047))))

(declare-fun bs!1676094 () Bool)

(assert (= bs!1676094 (and b!6563952 d!2058765)))

(assert (=> bs!1676094 (not (= lambda!365235 lambda!365129))))

(declare-fun bs!1676095 () Bool)

(assert (= bs!1676095 (and b!6563952 b!6562327)))

(assert (=> bs!1676095 (not (= lambda!365235 lambda!365139))))

(declare-fun bs!1676096 () Bool)

(assert (= bs!1676096 (and b!6563952 b!6562195)))

(assert (=> bs!1676096 (= (and (= (regOne!33390 (regOne!33391 r!7292)) (regOne!33390 r!7292)) (= (regTwo!33390 (regOne!33391 r!7292)) (regTwo!33390 r!7292))) (= lambda!365235 lambda!365133))))

(assert (=> bs!1676089 (not (= lambda!365235 lambda!365134))))

(assert (=> bs!1676085 (not (= lambda!365235 lambda!365097))))

(declare-fun bs!1676097 () Bool)

(assert (= bs!1676097 (and b!6563952 b!6561902)))

(assert (=> bs!1676097 (not (= lambda!365235 lambda!365109))))

(assert (=> bs!1676083 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regOne!33391 r!7292)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regOne!33391 r!7292)) lt!2406358)) (= lambda!365235 lambda!365226))))

(declare-fun bs!1676098 () Bool)

(assert (= bs!1676098 (and b!6563952 b!6562412)))

(assert (=> bs!1676098 (not (= lambda!365235 lambda!365150))))

(declare-fun bs!1676099 () Bool)

(assert (= bs!1676099 (and b!6563952 b!6562408)))

(assert (=> bs!1676099 (= (and (= (regOne!33390 (regOne!33391 r!7292)) (regOne!33390 lt!2406349)) (= (regTwo!33390 (regOne!33391 r!7292)) (regTwo!33390 lt!2406349))) (= lambda!365235 lambda!365151))))

(declare-fun bs!1676100 () Bool)

(assert (= bs!1676100 (and b!6563952 b!6563956)))

(assert (=> bs!1676100 (not (= lambda!365235 lambda!365234))))

(assert (=> bs!1676093 (not (= lambda!365235 lambda!365046))))

(assert (=> b!6563952 true))

(assert (=> b!6563952 true))

(declare-fun b!6563948 () Bool)

(declare-fun c!1206339 () Bool)

(assert (=> b!6563948 (= c!1206339 ((_ is ElementMatch!16439) (regOne!33391 r!7292)))))

(declare-fun e!3973468 () Bool)

(declare-fun e!3973470 () Bool)

(assert (=> b!6563948 (= e!3973468 e!3973470)))

(declare-fun b!6563949 () Bool)

(declare-fun res!2693512 () Bool)

(declare-fun e!3973471 () Bool)

(assert (=> b!6563949 (=> res!2693512 e!3973471)))

(declare-fun call!571044 () Bool)

(assert (=> b!6563949 (= res!2693512 call!571044)))

(declare-fun e!3973467 () Bool)

(assert (=> b!6563949 (= e!3973467 e!3973471)))

(declare-fun b!6563950 () Bool)

(declare-fun e!3973465 () Bool)

(declare-fun e!3973466 () Bool)

(assert (=> b!6563950 (= e!3973465 e!3973466)))

(declare-fun res!2693513 () Bool)

(assert (=> b!6563950 (= res!2693513 (matchRSpec!3540 (regOne!33391 (regOne!33391 r!7292)) s!2326))))

(assert (=> b!6563950 (=> res!2693513 e!3973466)))

(declare-fun b!6563951 () Bool)

(declare-fun e!3973469 () Bool)

(assert (=> b!6563951 (= e!3973469 call!571044)))

(declare-fun call!571043 () Bool)

(assert (=> b!6563952 (= e!3973467 call!571043)))

(declare-fun b!6563953 () Bool)

(assert (=> b!6563953 (= e!3973470 (= s!2326 (Cons!65492 (c!1205620 (regOne!33391 r!7292)) Nil!65492)))))

(declare-fun bm!571038 () Bool)

(assert (=> bm!571038 (= call!571044 (isEmpty!37737 s!2326))))

(declare-fun b!6563954 () Bool)

(declare-fun c!1206336 () Bool)

(assert (=> b!6563954 (= c!1206336 ((_ is Union!16439) (regOne!33391 r!7292)))))

(assert (=> b!6563954 (= e!3973470 e!3973465)))

(declare-fun b!6563955 () Bool)

(assert (=> b!6563955 (= e!3973465 e!3973467)))

(declare-fun c!1206337 () Bool)

(assert (=> b!6563955 (= c!1206337 ((_ is Star!16439) (regOne!33391 r!7292)))))

(declare-fun d!2059607 () Bool)

(declare-fun c!1206338 () Bool)

(assert (=> d!2059607 (= c!1206338 ((_ is EmptyExpr!16439) (regOne!33391 r!7292)))))

(assert (=> d!2059607 (= (matchRSpec!3540 (regOne!33391 r!7292) s!2326) e!3973469)))

(assert (=> b!6563956 (= e!3973471 call!571043)))

(declare-fun b!6563957 () Bool)

(assert (=> b!6563957 (= e!3973469 e!3973468)))

(declare-fun res!2693511 () Bool)

(assert (=> b!6563957 (= res!2693511 (not ((_ is EmptyLang!16439) (regOne!33391 r!7292))))))

(assert (=> b!6563957 (=> (not res!2693511) (not e!3973468))))

(declare-fun b!6563958 () Bool)

(assert (=> b!6563958 (= e!3973466 (matchRSpec!3540 (regTwo!33391 (regOne!33391 r!7292)) s!2326))))

(declare-fun bm!571039 () Bool)

(assert (=> bm!571039 (= call!571043 (Exists!3509 (ite c!1206337 lambda!365234 lambda!365235)))))

(assert (= (and d!2059607 c!1206338) b!6563951))

(assert (= (and d!2059607 (not c!1206338)) b!6563957))

(assert (= (and b!6563957 res!2693511) b!6563948))

(assert (= (and b!6563948 c!1206339) b!6563953))

(assert (= (and b!6563948 (not c!1206339)) b!6563954))

(assert (= (and b!6563954 c!1206336) b!6563950))

(assert (= (and b!6563954 (not c!1206336)) b!6563955))

(assert (= (and b!6563950 (not res!2693513)) b!6563958))

(assert (= (and b!6563955 c!1206337) b!6563949))

(assert (= (and b!6563955 (not c!1206337)) b!6563952))

(assert (= (and b!6563949 (not res!2693512)) b!6563956))

(assert (= (or b!6563956 b!6563952) bm!571039))

(assert (= (or b!6563951 b!6563949) bm!571038))

(declare-fun m!7346140 () Bool)

(assert (=> b!6563950 m!7346140))

(assert (=> bm!571038 m!7343766))

(declare-fun m!7346142 () Bool)

(assert (=> b!6563958 m!7346142))

(declare-fun m!7346144 () Bool)

(assert (=> bm!571039 m!7346144))

(assert (=> b!6562193 d!2059607))

(declare-fun b!6563959 () Bool)

(declare-fun e!3973474 () Bool)

(declare-fun e!3973477 () Bool)

(assert (=> b!6563959 (= e!3973474 e!3973477)))

(declare-fun res!2693520 () Bool)

(assert (=> b!6563959 (=> (not res!2693520) (not e!3973477))))

(declare-fun lt!2406720 () Bool)

(assert (=> b!6563959 (= res!2693520 (not lt!2406720))))

(declare-fun b!6563960 () Bool)

(declare-fun res!2693517 () Bool)

(declare-fun e!3973476 () Bool)

(assert (=> b!6563960 (=> res!2693517 e!3973476)))

(assert (=> b!6563960 (= res!2693517 (not (isEmpty!37737 (tail!12414 (tail!12414 s!2326)))))))

(declare-fun b!6563961 () Bool)

(declare-fun e!3973472 () Bool)

(declare-fun call!571045 () Bool)

(assert (=> b!6563961 (= e!3973472 (= lt!2406720 call!571045))))

(declare-fun b!6563963 () Bool)

(declare-fun res!2693516 () Bool)

(declare-fun e!3973475 () Bool)

(assert (=> b!6563963 (=> (not res!2693516) (not e!3973475))))

(assert (=> b!6563963 (= res!2693516 (isEmpty!37737 (tail!12414 (tail!12414 s!2326))))))

(declare-fun b!6563964 () Bool)

(assert (=> b!6563964 (= e!3973475 (= (head!13329 (tail!12414 s!2326)) (c!1205620 (derivativeStep!5123 r!7292 (head!13329 s!2326)))))))

(declare-fun b!6563965 () Bool)

(declare-fun res!2693518 () Bool)

(assert (=> b!6563965 (=> res!2693518 e!3973474)))

(assert (=> b!6563965 (= res!2693518 e!3973475)))

(declare-fun res!2693514 () Bool)

(assert (=> b!6563965 (=> (not res!2693514) (not e!3973475))))

(assert (=> b!6563965 (= res!2693514 lt!2406720)))

(declare-fun b!6563966 () Bool)

(declare-fun e!3973478 () Bool)

(assert (=> b!6563966 (= e!3973478 (not lt!2406720))))

(declare-fun b!6563967 () Bool)

(declare-fun res!2693521 () Bool)

(assert (=> b!6563967 (=> (not res!2693521) (not e!3973475))))

(assert (=> b!6563967 (= res!2693521 (not call!571045))))

(declare-fun b!6563968 () Bool)

(assert (=> b!6563968 (= e!3973477 e!3973476)))

(declare-fun res!2693515 () Bool)

(assert (=> b!6563968 (=> res!2693515 e!3973476)))

(assert (=> b!6563968 (= res!2693515 call!571045)))

(declare-fun b!6563969 () Bool)

(declare-fun e!3973473 () Bool)

(assert (=> b!6563969 (= e!3973473 (nullable!6432 (derivativeStep!5123 r!7292 (head!13329 s!2326))))))

(declare-fun bm!571040 () Bool)

(assert (=> bm!571040 (= call!571045 (isEmpty!37737 (tail!12414 s!2326)))))

(declare-fun b!6563970 () Bool)

(assert (=> b!6563970 (= e!3973472 e!3973478)))

(declare-fun c!1206340 () Bool)

(assert (=> b!6563970 (= c!1206340 ((_ is EmptyLang!16439) (derivativeStep!5123 r!7292 (head!13329 s!2326))))))

(declare-fun b!6563971 () Bool)

(declare-fun res!2693519 () Bool)

(assert (=> b!6563971 (=> res!2693519 e!3973474)))

(assert (=> b!6563971 (= res!2693519 (not ((_ is ElementMatch!16439) (derivativeStep!5123 r!7292 (head!13329 s!2326)))))))

(assert (=> b!6563971 (= e!3973478 e!3973474)))

(declare-fun b!6563972 () Bool)

(assert (=> b!6563972 (= e!3973473 (matchR!8622 (derivativeStep!5123 (derivativeStep!5123 r!7292 (head!13329 s!2326)) (head!13329 (tail!12414 s!2326))) (tail!12414 (tail!12414 s!2326))))))

(declare-fun d!2059609 () Bool)

(assert (=> d!2059609 e!3973472))

(declare-fun c!1206342 () Bool)

(assert (=> d!2059609 (= c!1206342 ((_ is EmptyExpr!16439) (derivativeStep!5123 r!7292 (head!13329 s!2326))))))

(assert (=> d!2059609 (= lt!2406720 e!3973473)))

(declare-fun c!1206341 () Bool)

(assert (=> d!2059609 (= c!1206341 (isEmpty!37737 (tail!12414 s!2326)))))

(assert (=> d!2059609 (validRegex!8175 (derivativeStep!5123 r!7292 (head!13329 s!2326)))))

(assert (=> d!2059609 (= (matchR!8622 (derivativeStep!5123 r!7292 (head!13329 s!2326)) (tail!12414 s!2326)) lt!2406720)))

(declare-fun b!6563962 () Bool)

(assert (=> b!6563962 (= e!3973476 (not (= (head!13329 (tail!12414 s!2326)) (c!1205620 (derivativeStep!5123 r!7292 (head!13329 s!2326))))))))

(assert (= (and d!2059609 c!1206341) b!6563969))

(assert (= (and d!2059609 (not c!1206341)) b!6563972))

(assert (= (and d!2059609 c!1206342) b!6563961))

(assert (= (and d!2059609 (not c!1206342)) b!6563970))

(assert (= (and b!6563970 c!1206340) b!6563966))

(assert (= (and b!6563970 (not c!1206340)) b!6563971))

(assert (= (and b!6563971 (not res!2693519)) b!6563965))

(assert (= (and b!6563965 res!2693514) b!6563967))

(assert (= (and b!6563967 res!2693521) b!6563963))

(assert (= (and b!6563963 res!2693516) b!6563964))

(assert (= (and b!6563965 (not res!2693518)) b!6563959))

(assert (= (and b!6563959 res!2693520) b!6563968))

(assert (= (and b!6563968 (not res!2693515)) b!6563960))

(assert (= (and b!6563960 (not res!2693517)) b!6563962))

(assert (= (or b!6563961 b!6563967 b!6563968) bm!571040))

(assert (=> bm!571040 m!7343774))

(assert (=> bm!571040 m!7344250))

(assert (=> d!2059609 m!7343774))

(assert (=> d!2059609 m!7344250))

(assert (=> d!2059609 m!7344254))

(declare-fun m!7346146 () Bool)

(assert (=> d!2059609 m!7346146))

(assert (=> b!6563963 m!7343774))

(assert (=> b!6563963 m!7345984))

(assert (=> b!6563963 m!7345984))

(declare-fun m!7346148 () Bool)

(assert (=> b!6563963 m!7346148))

(assert (=> b!6563964 m!7343774))

(assert (=> b!6563964 m!7345980))

(assert (=> b!6563962 m!7343774))

(assert (=> b!6563962 m!7345980))

(assert (=> b!6563960 m!7343774))

(assert (=> b!6563960 m!7345984))

(assert (=> b!6563960 m!7345984))

(assert (=> b!6563960 m!7346148))

(assert (=> b!6563969 m!7344254))

(declare-fun m!7346150 () Bool)

(assert (=> b!6563969 m!7346150))

(assert (=> b!6563972 m!7343774))

(assert (=> b!6563972 m!7345980))

(assert (=> b!6563972 m!7344254))

(assert (=> b!6563972 m!7345980))

(declare-fun m!7346152 () Bool)

(assert (=> b!6563972 m!7346152))

(assert (=> b!6563972 m!7343774))

(assert (=> b!6563972 m!7345984))

(assert (=> b!6563972 m!7346152))

(assert (=> b!6563972 m!7345984))

(declare-fun m!7346154 () Bool)

(assert (=> b!6563972 m!7346154))

(assert (=> b!6562243 d!2059609))

(declare-fun bm!571049 () Bool)

(declare-fun call!571055 () Regex!16439)

(declare-fun call!571054 () Regex!16439)

(assert (=> bm!571049 (= call!571055 call!571054)))

(declare-fun call!571056 () Regex!16439)

(declare-fun b!6563994 () Bool)

(declare-fun e!3973492 () Regex!16439)

(assert (=> b!6563994 (= e!3973492 (Union!16439 (Concat!25284 call!571056 (regTwo!33390 r!7292)) call!571055))))

(declare-fun c!1206355 () Bool)

(declare-fun bm!571050 () Bool)

(assert (=> bm!571050 (= call!571056 (derivativeStep!5123 (ite c!1206355 (regOne!33391 r!7292) (regOne!33390 r!7292)) (head!13329 s!2326)))))

(declare-fun b!6563995 () Bool)

(declare-fun e!3973493 () Regex!16439)

(assert (=> b!6563995 (= e!3973493 EmptyLang!16439)))

(declare-fun b!6563996 () Bool)

(declare-fun e!3973491 () Regex!16439)

(assert (=> b!6563996 (= e!3973491 (ite (= (head!13329 s!2326) (c!1205620 r!7292)) EmptyExpr!16439 EmptyLang!16439))))

(declare-fun b!6563997 () Bool)

(declare-fun c!1206357 () Bool)

(assert (=> b!6563997 (= c!1206357 (nullable!6432 (regOne!33390 r!7292)))))

(declare-fun e!3973489 () Regex!16439)

(assert (=> b!6563997 (= e!3973489 e!3973492)))

(declare-fun b!6563998 () Bool)

(assert (=> b!6563998 (= c!1206355 ((_ is Union!16439) r!7292))))

(declare-fun e!3973490 () Regex!16439)

(assert (=> b!6563998 (= e!3973491 e!3973490)))

(declare-fun call!571057 () Regex!16439)

(declare-fun bm!571051 () Bool)

(declare-fun c!1206356 () Bool)

(assert (=> bm!571051 (= call!571057 (derivativeStep!5123 (ite c!1206355 (regTwo!33391 r!7292) (ite c!1206356 (reg!16768 r!7292) (ite c!1206357 (regTwo!33390 r!7292) (regOne!33390 r!7292)))) (head!13329 s!2326)))))

(declare-fun b!6563999 () Bool)

(assert (=> b!6563999 (= e!3973492 (Union!16439 (Concat!25284 call!571055 (regTwo!33390 r!7292)) EmptyLang!16439))))

(declare-fun b!6563993 () Bool)

(assert (=> b!6563993 (= e!3973489 (Concat!25284 call!571054 r!7292))))

(declare-fun d!2059611 () Bool)

(declare-fun lt!2406723 () Regex!16439)

(assert (=> d!2059611 (validRegex!8175 lt!2406723)))

(assert (=> d!2059611 (= lt!2406723 e!3973493)))

(declare-fun c!1206353 () Bool)

(assert (=> d!2059611 (= c!1206353 (or ((_ is EmptyExpr!16439) r!7292) ((_ is EmptyLang!16439) r!7292)))))

(assert (=> d!2059611 (validRegex!8175 r!7292)))

(assert (=> d!2059611 (= (derivativeStep!5123 r!7292 (head!13329 s!2326)) lt!2406723)))

(declare-fun b!6564000 () Bool)

(assert (=> b!6564000 (= e!3973490 (Union!16439 call!571056 call!571057))))

(declare-fun b!6564001 () Bool)

(assert (=> b!6564001 (= e!3973490 e!3973489)))

(assert (=> b!6564001 (= c!1206356 ((_ is Star!16439) r!7292))))

(declare-fun b!6564002 () Bool)

(assert (=> b!6564002 (= e!3973493 e!3973491)))

(declare-fun c!1206354 () Bool)

(assert (=> b!6564002 (= c!1206354 ((_ is ElementMatch!16439) r!7292))))

(declare-fun bm!571052 () Bool)

(assert (=> bm!571052 (= call!571054 call!571057)))

(assert (= (and d!2059611 c!1206353) b!6563995))

(assert (= (and d!2059611 (not c!1206353)) b!6564002))

(assert (= (and b!6564002 c!1206354) b!6563996))

(assert (= (and b!6564002 (not c!1206354)) b!6563998))

(assert (= (and b!6563998 c!1206355) b!6564000))

(assert (= (and b!6563998 (not c!1206355)) b!6564001))

(assert (= (and b!6564001 c!1206356) b!6563993))

(assert (= (and b!6564001 (not c!1206356)) b!6563997))

(assert (= (and b!6563997 c!1206357) b!6563994))

(assert (= (and b!6563997 (not c!1206357)) b!6563999))

(assert (= (or b!6563994 b!6563999) bm!571049))

(assert (= (or b!6563993 bm!571049) bm!571052))

(assert (= (or b!6564000 bm!571052) bm!571051))

(assert (= (or b!6564000 b!6563994) bm!571050))

(assert (=> bm!571050 m!7343770))

(declare-fun m!7346156 () Bool)

(assert (=> bm!571050 m!7346156))

(assert (=> b!6563997 m!7345884))

(assert (=> bm!571051 m!7343770))

(declare-fun m!7346158 () Bool)

(assert (=> bm!571051 m!7346158))

(declare-fun m!7346160 () Bool)

(assert (=> d!2059611 m!7346160))

(assert (=> d!2059611 m!7343274))

(assert (=> b!6562243 d!2059611))

(assert (=> b!6562243 d!2059539))

(assert (=> b!6562243 d!2059541))

(assert (=> b!6562293 d!2059465))

(declare-fun b!6564003 () Bool)

(declare-fun e!3973495 () Bool)

(declare-fun call!571058 () Bool)

(assert (=> b!6564003 (= e!3973495 call!571058)))

(declare-fun b!6564004 () Bool)

(declare-fun res!2693524 () Bool)

(declare-fun e!3973494 () Bool)

(assert (=> b!6564004 (=> (not res!2693524) (not e!3973494))))

(declare-fun call!571060 () Bool)

(assert (=> b!6564004 (= res!2693524 call!571060)))

(declare-fun e!3973497 () Bool)

(assert (=> b!6564004 (= e!3973497 e!3973494)))

(declare-fun b!6564005 () Bool)

(declare-fun e!3973500 () Bool)

(assert (=> b!6564005 (= e!3973500 e!3973497)))

(declare-fun c!1206359 () Bool)

(assert (=> b!6564005 (= c!1206359 ((_ is Union!16439) lt!2406540))))

(declare-fun bm!571053 () Bool)

(assert (=> bm!571053 (= call!571060 (validRegex!8175 (ite c!1206359 (regOne!33391 lt!2406540) (regOne!33390 lt!2406540))))))

(declare-fun b!6564006 () Bool)

(assert (=> b!6564006 (= e!3973494 call!571058)))

(declare-fun b!6564007 () Bool)

(declare-fun e!3973498 () Bool)

(assert (=> b!6564007 (= e!3973498 e!3973495)))

(declare-fun res!2693526 () Bool)

(assert (=> b!6564007 (=> (not res!2693526) (not e!3973495))))

(assert (=> b!6564007 (= res!2693526 call!571060)))

(declare-fun b!6564008 () Bool)

(declare-fun res!2693522 () Bool)

(assert (=> b!6564008 (=> res!2693522 e!3973498)))

(assert (=> b!6564008 (= res!2693522 (not ((_ is Concat!25284) lt!2406540)))))

(assert (=> b!6564008 (= e!3973497 e!3973498)))

(declare-fun b!6564009 () Bool)

(declare-fun e!3973496 () Bool)

(assert (=> b!6564009 (= e!3973500 e!3973496)))

(declare-fun res!2693523 () Bool)

(assert (=> b!6564009 (= res!2693523 (not (nullable!6432 (reg!16768 lt!2406540))))))

(assert (=> b!6564009 (=> (not res!2693523) (not e!3973496))))

(declare-fun d!2059613 () Bool)

(declare-fun res!2693525 () Bool)

(declare-fun e!3973499 () Bool)

(assert (=> d!2059613 (=> res!2693525 e!3973499)))

(assert (=> d!2059613 (= res!2693525 ((_ is ElementMatch!16439) lt!2406540))))

(assert (=> d!2059613 (= (validRegex!8175 lt!2406540) e!3973499)))

(declare-fun b!6564010 () Bool)

(declare-fun call!571059 () Bool)

(assert (=> b!6564010 (= e!3973496 call!571059)))

(declare-fun bm!571054 () Bool)

(assert (=> bm!571054 (= call!571058 call!571059)))

(declare-fun b!6564011 () Bool)

(assert (=> b!6564011 (= e!3973499 e!3973500)))

(declare-fun c!1206358 () Bool)

(assert (=> b!6564011 (= c!1206358 ((_ is Star!16439) lt!2406540))))

(declare-fun bm!571055 () Bool)

(assert (=> bm!571055 (= call!571059 (validRegex!8175 (ite c!1206358 (reg!16768 lt!2406540) (ite c!1206359 (regTwo!33391 lt!2406540) (regTwo!33390 lt!2406540)))))))

(assert (= (and d!2059613 (not res!2693525)) b!6564011))

(assert (= (and b!6564011 c!1206358) b!6564009))

(assert (= (and b!6564011 (not c!1206358)) b!6564005))

(assert (= (and b!6564009 res!2693523) b!6564010))

(assert (= (and b!6564005 c!1206359) b!6564004))

(assert (= (and b!6564005 (not c!1206359)) b!6564008))

(assert (= (and b!6564004 res!2693524) b!6564006))

(assert (= (and b!6564008 (not res!2693522)) b!6564007))

(assert (= (and b!6564007 res!2693526) b!6564003))

(assert (= (or b!6564006 b!6564003) bm!571054))

(assert (= (or b!6564004 b!6564007) bm!571053))

(assert (= (or b!6564010 bm!571054) bm!571055))

(declare-fun m!7346162 () Bool)

(assert (=> bm!571053 m!7346162))

(declare-fun m!7346164 () Bool)

(assert (=> b!6564009 m!7346164))

(declare-fun m!7346166 () Bool)

(assert (=> bm!571055 m!7346166))

(assert (=> d!2058735 d!2059613))

(declare-fun d!2059615 () Bool)

(declare-fun res!2693527 () Bool)

(declare-fun e!3973501 () Bool)

(assert (=> d!2059615 (=> res!2693527 e!3973501)))

(assert (=> d!2059615 (= res!2693527 ((_ is Nil!65493) (unfocusZipperList!1860 zl!343)))))

(assert (=> d!2059615 (= (forall!15611 (unfocusZipperList!1860 zl!343) lambda!365124) e!3973501)))

(declare-fun b!6564012 () Bool)

(declare-fun e!3973502 () Bool)

(assert (=> b!6564012 (= e!3973501 e!3973502)))

(declare-fun res!2693528 () Bool)

(assert (=> b!6564012 (=> (not res!2693528) (not e!3973502))))

(assert (=> b!6564012 (= res!2693528 (dynLambda!26053 lambda!365124 (h!71941 (unfocusZipperList!1860 zl!343))))))

(declare-fun b!6564013 () Bool)

(assert (=> b!6564013 (= e!3973502 (forall!15611 (t!379259 (unfocusZipperList!1860 zl!343)) lambda!365124))))

(assert (= (and d!2059615 (not res!2693527)) b!6564012))

(assert (= (and b!6564012 res!2693528) b!6564013))

(declare-fun b_lambda!248295 () Bool)

(assert (=> (not b_lambda!248295) (not b!6564012)))

(declare-fun m!7346168 () Bool)

(assert (=> b!6564012 m!7346168))

(declare-fun m!7346170 () Bool)

(assert (=> b!6564013 m!7346170))

(assert (=> d!2058735 d!2059615))

(assert (=> b!6562270 d!2059539))

(declare-fun d!2059617 () Bool)

(assert (=> d!2059617 (= (nullable!6432 lt!2406341) (nullableFct!2358 lt!2406341))))

(declare-fun bs!1676101 () Bool)

(assert (= bs!1676101 d!2059617))

(declare-fun m!7346172 () Bool)

(assert (=> bs!1676101 m!7346172))

(assert (=> b!6562261 d!2059617))

(declare-fun d!2059619 () Bool)

(assert (=> d!2059619 true))

(declare-fun setRes!44812 () Bool)

(assert (=> d!2059619 setRes!44812))

(declare-fun condSetEmpty!44812 () Bool)

(declare-fun res!2693531 () (InoxSet Context!11646))

(assert (=> d!2059619 (= condSetEmpty!44812 (= res!2693531 ((as const (Array Context!11646 Bool)) false)))))

(assert (=> d!2059619 (= (choose!48982 lt!2406365 lambda!365044) res!2693531)))

(declare-fun setIsEmpty!44812 () Bool)

(assert (=> setIsEmpty!44812 setRes!44812))

(declare-fun tp!1812952 () Bool)

(declare-fun setElem!44812 () Context!11646)

(declare-fun setNonEmpty!44812 () Bool)

(declare-fun e!3973505 () Bool)

(assert (=> setNonEmpty!44812 (= setRes!44812 (and tp!1812952 (inv!84344 setElem!44812) e!3973505))))

(declare-fun setRest!44812 () (InoxSet Context!11646))

(assert (=> setNonEmpty!44812 (= res!2693531 ((_ map or) (store ((as const (Array Context!11646 Bool)) false) setElem!44812 true) setRest!44812))))

(declare-fun b!6564016 () Bool)

(declare-fun tp!1812953 () Bool)

(assert (=> b!6564016 (= e!3973505 tp!1812953)))

(assert (= (and d!2059619 condSetEmpty!44812) setIsEmpty!44812))

(assert (= (and d!2059619 (not condSetEmpty!44812)) setNonEmpty!44812))

(assert (= setNonEmpty!44812 b!6564016))

(declare-fun m!7346174 () Bool)

(assert (=> setNonEmpty!44812 m!7346174))

(assert (=> d!2058841 d!2059619))

(declare-fun d!2059621 () Bool)

(assert (=> d!2059621 (= (Exists!3509 (ite c!1205796 lambda!365109 lambda!365111)) (choose!48962 (ite c!1205796 lambda!365109 lambda!365111)))))

(declare-fun bs!1676102 () Bool)

(assert (= bs!1676102 d!2059621))

(declare-fun m!7346176 () Bool)

(assert (=> bs!1676102 m!7346176))

(assert (=> bm!570719 d!2059621))

(assert (=> b!6562351 d!2059575))

(assert (=> b!6562351 d!2059577))

(assert (=> d!2058837 d!2058841))

(declare-fun d!2059623 () Bool)

(assert (=> d!2059623 (= (map!14967 lt!2406365 lambda!365044) (store ((as const (Array Context!11646 Bool)) false) (dynLambda!26051 lambda!365044 lt!2406347) true))))

(assert (=> d!2059623 true))

(declare-fun _$12!1676 () Unit!159091)

(assert (=> d!2059623 (= (choose!48981 lt!2406365 lt!2406347 lambda!365044) _$12!1676)))

(declare-fun b_lambda!248297 () Bool)

(assert (=> (not b_lambda!248297) (not d!2059623)))

(declare-fun bs!1676103 () Bool)

(assert (= bs!1676103 d!2059623))

(assert (=> bs!1676103 m!7343290))

(assert (=> bs!1676103 m!7344448))

(assert (=> bs!1676103 m!7344448))

(assert (=> bs!1676103 m!7344450))

(assert (=> d!2058837 d!2059623))

(declare-fun d!2059625 () Bool)

(declare-fun c!1206360 () Bool)

(assert (=> d!2059625 (= c!1206360 (isEmpty!37737 (tail!12414 s!2326)))))

(declare-fun e!3973506 () Bool)

(assert (=> d!2059625 (= (matchZipper!2451 (derivationStepZipper!2405 z!1189 (head!13329 s!2326)) (tail!12414 s!2326)) e!3973506)))

(declare-fun b!6564017 () Bool)

(assert (=> b!6564017 (= e!3973506 (nullableZipper!2184 (derivationStepZipper!2405 z!1189 (head!13329 s!2326))))))

(declare-fun b!6564018 () Bool)

(assert (=> b!6564018 (= e!3973506 (matchZipper!2451 (derivationStepZipper!2405 (derivationStepZipper!2405 z!1189 (head!13329 s!2326)) (head!13329 (tail!12414 s!2326))) (tail!12414 (tail!12414 s!2326))))))

(assert (= (and d!2059625 c!1206360) b!6564017))

(assert (= (and d!2059625 (not c!1206360)) b!6564018))

(assert (=> d!2059625 m!7343774))

(assert (=> d!2059625 m!7344250))

(assert (=> b!6564017 m!7343798))

(declare-fun m!7346178 () Bool)

(assert (=> b!6564017 m!7346178))

(assert (=> b!6564018 m!7343774))

(assert (=> b!6564018 m!7345980))

(assert (=> b!6564018 m!7343798))

(assert (=> b!6564018 m!7345980))

(declare-fun m!7346180 () Bool)

(assert (=> b!6564018 m!7346180))

(assert (=> b!6564018 m!7343774))

(assert (=> b!6564018 m!7345984))

(assert (=> b!6564018 m!7346180))

(assert (=> b!6564018 m!7345984))

(declare-fun m!7346182 () Bool)

(assert (=> b!6564018 m!7346182))

(assert (=> b!6561762 d!2059625))

(declare-fun bs!1676104 () Bool)

(declare-fun d!2059627 () Bool)

(assert (= bs!1676104 (and d!2059627 d!2059463)))

(declare-fun lambda!365236 () Int)

(assert (=> bs!1676104 (= (= (head!13329 s!2326) (head!13329 (_1!36721 lt!2406377))) (= lambda!365236 lambda!365220))))

(declare-fun bs!1676105 () Bool)

(assert (= bs!1676105 (and d!2059627 d!2059511)))

(assert (=> bs!1676105 (= (= (head!13329 s!2326) (head!13329 (t!379258 s!2326))) (= lambda!365236 lambda!365227))))

(declare-fun bs!1676106 () Bool)

(assert (= bs!1676106 (and d!2059627 d!2058835)))

(assert (=> bs!1676106 (= (= (head!13329 s!2326) (h!71940 s!2326)) (= lambda!365236 lambda!365144))))

(declare-fun bs!1676107 () Bool)

(assert (= bs!1676107 (and d!2059627 d!2059605)))

(assert (=> bs!1676107 (= (= (head!13329 s!2326) (head!13329 (t!379258 s!2326))) (= lambda!365236 lambda!365233))))

(declare-fun bs!1676108 () Bool)

(assert (= bs!1676108 (and d!2059627 b!6561279)))

(assert (=> bs!1676108 (= (= (head!13329 s!2326) (h!71940 s!2326)) (= lambda!365236 lambda!365043))))

(declare-fun bs!1676109 () Bool)

(assert (= bs!1676109 (and d!2059627 d!2059537)))

(assert (=> bs!1676109 (= lambda!365236 lambda!365228)))

(assert (=> d!2059627 true))

(assert (=> d!2059627 (= (derivationStepZipper!2405 z!1189 (head!13329 s!2326)) (flatMap!1944 z!1189 lambda!365236))))

(declare-fun bs!1676110 () Bool)

(assert (= bs!1676110 d!2059627))

(declare-fun m!7346184 () Bool)

(assert (=> bs!1676110 m!7346184))

(assert (=> b!6561762 d!2059627))

(assert (=> b!6561762 d!2059539))

(assert (=> b!6561762 d!2059541))

(declare-fun b!6564019 () Bool)

(declare-fun e!3973508 () Bool)

(declare-fun call!571061 () Bool)

(assert (=> b!6564019 (= e!3973508 call!571061)))

(declare-fun b!6564020 () Bool)

(declare-fun res!2693534 () Bool)

(declare-fun e!3973507 () Bool)

(assert (=> b!6564020 (=> (not res!2693534) (not e!3973507))))

(declare-fun call!571063 () Bool)

(assert (=> b!6564020 (= res!2693534 call!571063)))

(declare-fun e!3973510 () Bool)

(assert (=> b!6564020 (= e!3973510 e!3973507)))

(declare-fun b!6564021 () Bool)

(declare-fun e!3973513 () Bool)

(assert (=> b!6564021 (= e!3973513 e!3973510)))

(declare-fun c!1206362 () Bool)

(assert (=> b!6564021 (= c!1206362 ((_ is Union!16439) (regTwo!33390 r!7292)))))

(declare-fun bm!571056 () Bool)

(assert (=> bm!571056 (= call!571063 (validRegex!8175 (ite c!1206362 (regOne!33391 (regTwo!33390 r!7292)) (regOne!33390 (regTwo!33390 r!7292)))))))

(declare-fun b!6564022 () Bool)

(assert (=> b!6564022 (= e!3973507 call!571061)))

(declare-fun b!6564023 () Bool)

(declare-fun e!3973511 () Bool)

(assert (=> b!6564023 (= e!3973511 e!3973508)))

(declare-fun res!2693536 () Bool)

(assert (=> b!6564023 (=> (not res!2693536) (not e!3973508))))

(assert (=> b!6564023 (= res!2693536 call!571063)))

(declare-fun b!6564024 () Bool)

(declare-fun res!2693532 () Bool)

(assert (=> b!6564024 (=> res!2693532 e!3973511)))

(assert (=> b!6564024 (= res!2693532 (not ((_ is Concat!25284) (regTwo!33390 r!7292))))))

(assert (=> b!6564024 (= e!3973510 e!3973511)))

(declare-fun b!6564025 () Bool)

(declare-fun e!3973509 () Bool)

(assert (=> b!6564025 (= e!3973513 e!3973509)))

(declare-fun res!2693533 () Bool)

(assert (=> b!6564025 (= res!2693533 (not (nullable!6432 (reg!16768 (regTwo!33390 r!7292)))))))

(assert (=> b!6564025 (=> (not res!2693533) (not e!3973509))))

(declare-fun d!2059629 () Bool)

(declare-fun res!2693535 () Bool)

(declare-fun e!3973512 () Bool)

(assert (=> d!2059629 (=> res!2693535 e!3973512)))

(assert (=> d!2059629 (= res!2693535 ((_ is ElementMatch!16439) (regTwo!33390 r!7292)))))

(assert (=> d!2059629 (= (validRegex!8175 (regTwo!33390 r!7292)) e!3973512)))

(declare-fun b!6564026 () Bool)

(declare-fun call!571062 () Bool)

(assert (=> b!6564026 (= e!3973509 call!571062)))

(declare-fun bm!571057 () Bool)

(assert (=> bm!571057 (= call!571061 call!571062)))

(declare-fun b!6564027 () Bool)

(assert (=> b!6564027 (= e!3973512 e!3973513)))

(declare-fun c!1206361 () Bool)

(assert (=> b!6564027 (= c!1206361 ((_ is Star!16439) (regTwo!33390 r!7292)))))

(declare-fun bm!571058 () Bool)

(assert (=> bm!571058 (= call!571062 (validRegex!8175 (ite c!1206361 (reg!16768 (regTwo!33390 r!7292)) (ite c!1206362 (regTwo!33391 (regTwo!33390 r!7292)) (regTwo!33390 (regTwo!33390 r!7292))))))))

(assert (= (and d!2059629 (not res!2693535)) b!6564027))

(assert (= (and b!6564027 c!1206361) b!6564025))

(assert (= (and b!6564027 (not c!1206361)) b!6564021))

(assert (= (and b!6564025 res!2693533) b!6564026))

(assert (= (and b!6564021 c!1206362) b!6564020))

(assert (= (and b!6564021 (not c!1206362)) b!6564024))

(assert (= (and b!6564020 res!2693534) b!6564022))

(assert (= (and b!6564024 (not res!2693532)) b!6564023))

(assert (= (and b!6564023 res!2693536) b!6564019))

(assert (= (or b!6564022 b!6564019) bm!571057))

(assert (= (or b!6564020 b!6564023) bm!571056))

(assert (= (or b!6564026 bm!571057) bm!571058))

(declare-fun m!7346186 () Bool)

(assert (=> bm!571056 m!7346186))

(declare-fun m!7346188 () Bool)

(assert (=> b!6564025 m!7346188))

(declare-fun m!7346190 () Bool)

(assert (=> bm!571058 m!7346190))

(assert (=> b!6562335 d!2059629))

(declare-fun bm!571059 () Bool)

(declare-fun call!571065 () List!65617)

(declare-fun call!571069 () List!65617)

(assert (=> bm!571059 (= call!571065 call!571069)))

(declare-fun e!3973516 () (InoxSet Context!11646))

(declare-fun b!6564028 () Bool)

(assert (=> b!6564028 (= e!3973516 (store ((as const (Array Context!11646 Bool)) false) (ite c!1205857 lt!2406352 (Context!11647 call!570756)) true))))

(declare-fun b!6564029 () Bool)

(declare-fun e!3973519 () (InoxSet Context!11646))

(declare-fun e!3973518 () (InoxSet Context!11646))

(assert (=> b!6564029 (= e!3973519 e!3973518)))

(declare-fun c!1206365 () Bool)

(assert (=> b!6564029 (= c!1206365 ((_ is Concat!25284) (ite c!1205857 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))))))

(declare-fun b!6564030 () Bool)

(declare-fun e!3973517 () (InoxSet Context!11646))

(declare-fun call!571068 () (InoxSet Context!11646))

(assert (=> b!6564030 (= e!3973517 call!571068)))

(declare-fun b!6564031 () Bool)

(declare-fun call!571067 () (InoxSet Context!11646))

(declare-fun call!571064 () (InoxSet Context!11646))

(assert (=> b!6564031 (= e!3973519 ((_ map or) call!571067 call!571064))))

(declare-fun c!1206363 () Bool)

(declare-fun bm!571060 () Bool)

(assert (=> bm!571060 (= call!571067 (derivationStepZipperDown!1687 (ite c!1206363 (regOne!33391 (ite c!1205857 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))) (regOne!33390 (ite c!1205857 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292)))))) (ite c!1206363 (ite c!1205857 lt!2406352 (Context!11647 call!570756)) (Context!11647 call!571069)) (h!71940 s!2326)))))

(declare-fun b!6564032 () Bool)

(assert (=> b!6564032 (= e!3973518 call!571068)))

(declare-fun bm!571061 () Bool)

(declare-fun c!1206367 () Bool)

(declare-fun call!571066 () (InoxSet Context!11646))

(assert (=> bm!571061 (= call!571066 (derivationStepZipperDown!1687 (ite c!1206363 (regTwo!33391 (ite c!1205857 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))) (ite c!1206367 (regTwo!33390 (ite c!1205857 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))) (ite c!1206365 (regOne!33390 (ite c!1205857 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))) (reg!16768 (ite c!1205857 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292)))))))) (ite (or c!1206363 c!1206367) (ite c!1205857 lt!2406352 (Context!11647 call!570756)) (Context!11647 call!571065)) (h!71940 s!2326)))))

(declare-fun b!6564033 () Bool)

(declare-fun e!3973514 () Bool)

(assert (=> b!6564033 (= e!3973514 (nullable!6432 (regOne!33390 (ite c!1205857 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292)))))))))

(declare-fun bm!571062 () Bool)

(assert (=> bm!571062 (= call!571068 call!571064)))

(declare-fun bm!571063 () Bool)

(assert (=> bm!571063 (= call!571064 call!571066)))

(declare-fun b!6564034 () Bool)

(declare-fun c!1206366 () Bool)

(assert (=> b!6564034 (= c!1206366 ((_ is Star!16439) (ite c!1205857 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))))))

(assert (=> b!6564034 (= e!3973518 e!3973517)))

(declare-fun b!6564035 () Bool)

(assert (=> b!6564035 (= e!3973517 ((as const (Array Context!11646 Bool)) false))))

(declare-fun b!6564036 () Bool)

(declare-fun e!3973515 () (InoxSet Context!11646))

(assert (=> b!6564036 (= e!3973516 e!3973515)))

(assert (=> b!6564036 (= c!1206363 ((_ is Union!16439) (ite c!1205857 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))))))

(declare-fun bm!571064 () Bool)

(assert (=> bm!571064 (= call!571069 ($colon$colon!2280 (exprs!6323 (ite c!1205857 lt!2406352 (Context!11647 call!570756))) (ite (or c!1206367 c!1206365) (regTwo!33390 (ite c!1205857 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))) (ite c!1205857 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292)))))))))

(declare-fun b!6564037 () Bool)

(assert (=> b!6564037 (= e!3973515 ((_ map or) call!571067 call!571066))))

(declare-fun c!1206364 () Bool)

(declare-fun d!2059631 () Bool)

(assert (=> d!2059631 (= c!1206364 (and ((_ is ElementMatch!16439) (ite c!1205857 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))) (= (c!1205620 (ite c!1205857 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))) (h!71940 s!2326))))))

(assert (=> d!2059631 (= (derivationStepZipperDown!1687 (ite c!1205857 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292)))) (ite c!1205857 lt!2406352 (Context!11647 call!570756)) (h!71940 s!2326)) e!3973516)))

(declare-fun b!6564038 () Bool)

(assert (=> b!6564038 (= c!1206367 e!3973514)))

(declare-fun res!2693537 () Bool)

(assert (=> b!6564038 (=> (not res!2693537) (not e!3973514))))

(assert (=> b!6564038 (= res!2693537 ((_ is Concat!25284) (ite c!1205857 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))))))

(assert (=> b!6564038 (= e!3973515 e!3973519)))

(assert (= (and d!2059631 c!1206364) b!6564028))

(assert (= (and d!2059631 (not c!1206364)) b!6564036))

(assert (= (and b!6564036 c!1206363) b!6564037))

(assert (= (and b!6564036 (not c!1206363)) b!6564038))

(assert (= (and b!6564038 res!2693537) b!6564033))

(assert (= (and b!6564038 c!1206367) b!6564031))

(assert (= (and b!6564038 (not c!1206367)) b!6564029))

(assert (= (and b!6564029 c!1206365) b!6564032))

(assert (= (and b!6564029 (not c!1206365)) b!6564034))

(assert (= (and b!6564034 c!1206366) b!6564030))

(assert (= (and b!6564034 (not c!1206366)) b!6564035))

(assert (= (or b!6564032 b!6564030) bm!571059))

(assert (= (or b!6564032 b!6564030) bm!571062))

(assert (= (or b!6564031 bm!571059) bm!571064))

(assert (= (or b!6564031 bm!571062) bm!571063))

(assert (= (or b!6564037 bm!571063) bm!571061))

(assert (= (or b!6564037 b!6564031) bm!571060))

(declare-fun m!7346192 () Bool)

(assert (=> b!6564033 m!7346192))

(declare-fun m!7346194 () Bool)

(assert (=> b!6564028 m!7346194))

(declare-fun m!7346196 () Bool)

(assert (=> bm!571064 m!7346196))

(declare-fun m!7346198 () Bool)

(assert (=> bm!571060 m!7346198))

(declare-fun m!7346200 () Bool)

(assert (=> bm!571061 m!7346200))

(assert (=> bm!570747 d!2059631))

(declare-fun b!6564039 () Bool)

(declare-fun e!3973522 () Bool)

(declare-fun e!3973525 () Bool)

(assert (=> b!6564039 (= e!3973522 e!3973525)))

(declare-fun res!2693544 () Bool)

(assert (=> b!6564039 (=> (not res!2693544) (not e!3973525))))

(declare-fun lt!2406724 () Bool)

(assert (=> b!6564039 (= res!2693544 (not lt!2406724))))

(declare-fun b!6564040 () Bool)

(declare-fun res!2693541 () Bool)

(declare-fun e!3973524 () Bool)

(assert (=> b!6564040 (=> res!2693541 e!3973524)))

(assert (=> b!6564040 (= res!2693541 (not (isEmpty!37737 (tail!12414 s!2326))))))

(declare-fun b!6564041 () Bool)

(declare-fun e!3973520 () Bool)

(declare-fun call!571070 () Bool)

(assert (=> b!6564041 (= e!3973520 (= lt!2406724 call!571070))))

(declare-fun b!6564043 () Bool)

(declare-fun res!2693540 () Bool)

(declare-fun e!3973523 () Bool)

(assert (=> b!6564043 (=> (not res!2693540) (not e!3973523))))

(assert (=> b!6564043 (= res!2693540 (isEmpty!37737 (tail!12414 s!2326)))))

(declare-fun b!6564044 () Bool)

(assert (=> b!6564044 (= e!3973523 (= (head!13329 s!2326) (c!1205620 (regTwo!33390 r!7292))))))

(declare-fun b!6564045 () Bool)

(declare-fun res!2693542 () Bool)

(assert (=> b!6564045 (=> res!2693542 e!3973522)))

(assert (=> b!6564045 (= res!2693542 e!3973523)))

(declare-fun res!2693538 () Bool)

(assert (=> b!6564045 (=> (not res!2693538) (not e!3973523))))

(assert (=> b!6564045 (= res!2693538 lt!2406724)))

(declare-fun b!6564046 () Bool)

(declare-fun e!3973526 () Bool)

(assert (=> b!6564046 (= e!3973526 (not lt!2406724))))

(declare-fun b!6564047 () Bool)

(declare-fun res!2693545 () Bool)

(assert (=> b!6564047 (=> (not res!2693545) (not e!3973523))))

(assert (=> b!6564047 (= res!2693545 (not call!571070))))

(declare-fun b!6564048 () Bool)

(assert (=> b!6564048 (= e!3973525 e!3973524)))

(declare-fun res!2693539 () Bool)

(assert (=> b!6564048 (=> res!2693539 e!3973524)))

(assert (=> b!6564048 (= res!2693539 call!571070)))

(declare-fun b!6564049 () Bool)

(declare-fun e!3973521 () Bool)

(assert (=> b!6564049 (= e!3973521 (nullable!6432 (regTwo!33390 r!7292)))))

(declare-fun bm!571065 () Bool)

(assert (=> bm!571065 (= call!571070 (isEmpty!37737 s!2326))))

(declare-fun b!6564050 () Bool)

(assert (=> b!6564050 (= e!3973520 e!3973526)))

(declare-fun c!1206368 () Bool)

(assert (=> b!6564050 (= c!1206368 ((_ is EmptyLang!16439) (regTwo!33390 r!7292)))))

(declare-fun b!6564051 () Bool)

(declare-fun res!2693543 () Bool)

(assert (=> b!6564051 (=> res!2693543 e!3973522)))

(assert (=> b!6564051 (= res!2693543 (not ((_ is ElementMatch!16439) (regTwo!33390 r!7292))))))

(assert (=> b!6564051 (= e!3973526 e!3973522)))

(declare-fun b!6564052 () Bool)

(assert (=> b!6564052 (= e!3973521 (matchR!8622 (derivativeStep!5123 (regTwo!33390 r!7292) (head!13329 s!2326)) (tail!12414 s!2326)))))

(declare-fun d!2059633 () Bool)

(assert (=> d!2059633 e!3973520))

(declare-fun c!1206370 () Bool)

(assert (=> d!2059633 (= c!1206370 ((_ is EmptyExpr!16439) (regTwo!33390 r!7292)))))

(assert (=> d!2059633 (= lt!2406724 e!3973521)))

(declare-fun c!1206369 () Bool)

(assert (=> d!2059633 (= c!1206369 (isEmpty!37737 s!2326))))

(assert (=> d!2059633 (validRegex!8175 (regTwo!33390 r!7292))))

(assert (=> d!2059633 (= (matchR!8622 (regTwo!33390 r!7292) s!2326) lt!2406724)))

(declare-fun b!6564042 () Bool)

(assert (=> b!6564042 (= e!3973524 (not (= (head!13329 s!2326) (c!1205620 (regTwo!33390 r!7292)))))))

(assert (= (and d!2059633 c!1206369) b!6564049))

(assert (= (and d!2059633 (not c!1206369)) b!6564052))

(assert (= (and d!2059633 c!1206370) b!6564041))

(assert (= (and d!2059633 (not c!1206370)) b!6564050))

(assert (= (and b!6564050 c!1206368) b!6564046))

(assert (= (and b!6564050 (not c!1206368)) b!6564051))

(assert (= (and b!6564051 (not res!2693543)) b!6564045))

(assert (= (and b!6564045 res!2693538) b!6564047))

(assert (= (and b!6564047 res!2693545) b!6564043))

(assert (= (and b!6564043 res!2693540) b!6564044))

(assert (= (and b!6564045 (not res!2693542)) b!6564039))

(assert (= (and b!6564039 res!2693544) b!6564048))

(assert (= (and b!6564048 (not res!2693539)) b!6564040))

(assert (= (and b!6564040 (not res!2693541)) b!6564042))

(assert (= (or b!6564041 b!6564047 b!6564048) bm!571065))

(assert (=> bm!571065 m!7343766))

(assert (=> d!2059633 m!7343766))

(assert (=> d!2059633 m!7344386))

(assert (=> b!6564043 m!7343774))

(assert (=> b!6564043 m!7343774))

(assert (=> b!6564043 m!7344250))

(assert (=> b!6564044 m!7343770))

(assert (=> b!6564042 m!7343770))

(assert (=> b!6564040 m!7343774))

(assert (=> b!6564040 m!7343774))

(assert (=> b!6564040 m!7344250))

(declare-fun m!7346202 () Bool)

(assert (=> b!6564049 m!7346202))

(assert (=> b!6564052 m!7343770))

(assert (=> b!6564052 m!7343770))

(declare-fun m!7346204 () Bool)

(assert (=> b!6564052 m!7346204))

(assert (=> b!6564052 m!7343774))

(assert (=> b!6564052 m!7346204))

(assert (=> b!6564052 m!7343774))

(declare-fun m!7346206 () Bool)

(assert (=> b!6564052 m!7346206))

(assert (=> b!6562287 d!2059633))

(assert (=> d!2058607 d!2059531))

(declare-fun b!6564053 () Bool)

(declare-fun e!3973529 () Bool)

(declare-fun e!3973532 () Bool)

(assert (=> b!6564053 (= e!3973529 e!3973532)))

(declare-fun res!2693552 () Bool)

(assert (=> b!6564053 (=> (not res!2693552) (not e!3973532))))

(declare-fun lt!2406725 () Bool)

(assert (=> b!6564053 (= res!2693552 (not lt!2406725))))

(declare-fun b!6564054 () Bool)

(declare-fun res!2693549 () Bool)

(declare-fun e!3973531 () Bool)

(assert (=> b!6564054 (=> res!2693549 e!3973531)))

(assert (=> b!6564054 (= res!2693549 (not (isEmpty!37737 (tail!12414 (_1!36721 (get!22740 lt!2406527))))))))

(declare-fun b!6564055 () Bool)

(declare-fun e!3973527 () Bool)

(declare-fun call!571071 () Bool)

(assert (=> b!6564055 (= e!3973527 (= lt!2406725 call!571071))))

(declare-fun b!6564057 () Bool)

(declare-fun res!2693548 () Bool)

(declare-fun e!3973530 () Bool)

(assert (=> b!6564057 (=> (not res!2693548) (not e!3973530))))

(assert (=> b!6564057 (= res!2693548 (isEmpty!37737 (tail!12414 (_1!36721 (get!22740 lt!2406527)))))))

(declare-fun b!6564058 () Bool)

(assert (=> b!6564058 (= e!3973530 (= (head!13329 (_1!36721 (get!22740 lt!2406527))) (c!1205620 (reg!16768 (regOne!33390 r!7292)))))))

(declare-fun b!6564059 () Bool)

(declare-fun res!2693550 () Bool)

(assert (=> b!6564059 (=> res!2693550 e!3973529)))

(assert (=> b!6564059 (= res!2693550 e!3973530)))

(declare-fun res!2693546 () Bool)

(assert (=> b!6564059 (=> (not res!2693546) (not e!3973530))))

(assert (=> b!6564059 (= res!2693546 lt!2406725)))

(declare-fun b!6564060 () Bool)

(declare-fun e!3973533 () Bool)

(assert (=> b!6564060 (= e!3973533 (not lt!2406725))))

(declare-fun b!6564061 () Bool)

(declare-fun res!2693553 () Bool)

(assert (=> b!6564061 (=> (not res!2693553) (not e!3973530))))

(assert (=> b!6564061 (= res!2693553 (not call!571071))))

(declare-fun b!6564062 () Bool)

(assert (=> b!6564062 (= e!3973532 e!3973531)))

(declare-fun res!2693547 () Bool)

(assert (=> b!6564062 (=> res!2693547 e!3973531)))

(assert (=> b!6564062 (= res!2693547 call!571071)))

(declare-fun b!6564063 () Bool)

(declare-fun e!3973528 () Bool)

(assert (=> b!6564063 (= e!3973528 (nullable!6432 (reg!16768 (regOne!33390 r!7292))))))

(declare-fun bm!571066 () Bool)

(assert (=> bm!571066 (= call!571071 (isEmpty!37737 (_1!36721 (get!22740 lt!2406527))))))

(declare-fun b!6564064 () Bool)

(assert (=> b!6564064 (= e!3973527 e!3973533)))

(declare-fun c!1206371 () Bool)

(assert (=> b!6564064 (= c!1206371 ((_ is EmptyLang!16439) (reg!16768 (regOne!33390 r!7292))))))

(declare-fun b!6564065 () Bool)

(declare-fun res!2693551 () Bool)

(assert (=> b!6564065 (=> res!2693551 e!3973529)))

(assert (=> b!6564065 (= res!2693551 (not ((_ is ElementMatch!16439) (reg!16768 (regOne!33390 r!7292)))))))

(assert (=> b!6564065 (= e!3973533 e!3973529)))

(declare-fun b!6564066 () Bool)

(assert (=> b!6564066 (= e!3973528 (matchR!8622 (derivativeStep!5123 (reg!16768 (regOne!33390 r!7292)) (head!13329 (_1!36721 (get!22740 lt!2406527)))) (tail!12414 (_1!36721 (get!22740 lt!2406527)))))))

(declare-fun d!2059635 () Bool)

(assert (=> d!2059635 e!3973527))

(declare-fun c!1206373 () Bool)

(assert (=> d!2059635 (= c!1206373 ((_ is EmptyExpr!16439) (reg!16768 (regOne!33390 r!7292))))))

(assert (=> d!2059635 (= lt!2406725 e!3973528)))

(declare-fun c!1206372 () Bool)

(assert (=> d!2059635 (= c!1206372 (isEmpty!37737 (_1!36721 (get!22740 lt!2406527))))))

(assert (=> d!2059635 (validRegex!8175 (reg!16768 (regOne!33390 r!7292)))))

(assert (=> d!2059635 (= (matchR!8622 (reg!16768 (regOne!33390 r!7292)) (_1!36721 (get!22740 lt!2406527))) lt!2406725)))

(declare-fun b!6564056 () Bool)

(assert (=> b!6564056 (= e!3973531 (not (= (head!13329 (_1!36721 (get!22740 lt!2406527))) (c!1205620 (reg!16768 (regOne!33390 r!7292))))))))

(assert (= (and d!2059635 c!1206372) b!6564063))

(assert (= (and d!2059635 (not c!1206372)) b!6564066))

(assert (= (and d!2059635 c!1206373) b!6564055))

(assert (= (and d!2059635 (not c!1206373)) b!6564064))

(assert (= (and b!6564064 c!1206371) b!6564060))

(assert (= (and b!6564064 (not c!1206371)) b!6564065))

(assert (= (and b!6564065 (not res!2693551)) b!6564059))

(assert (= (and b!6564059 res!2693546) b!6564061))

(assert (= (and b!6564061 res!2693553) b!6564057))

(assert (= (and b!6564057 res!2693548) b!6564058))

(assert (= (and b!6564059 (not res!2693550)) b!6564053))

(assert (= (and b!6564053 res!2693552) b!6564062))

(assert (= (and b!6564062 (not res!2693547)) b!6564054))

(assert (= (and b!6564054 (not res!2693549)) b!6564056))

(assert (= (or b!6564055 b!6564061 b!6564062) bm!571066))

(declare-fun m!7346208 () Bool)

(assert (=> bm!571066 m!7346208))

(assert (=> d!2059635 m!7346208))

(assert (=> d!2059635 m!7343212))

(declare-fun m!7346210 () Bool)

(assert (=> b!6564057 m!7346210))

(assert (=> b!6564057 m!7346210))

(declare-fun m!7346212 () Bool)

(assert (=> b!6564057 m!7346212))

(declare-fun m!7346214 () Bool)

(assert (=> b!6564058 m!7346214))

(assert (=> b!6564056 m!7346214))

(assert (=> b!6564054 m!7346210))

(assert (=> b!6564054 m!7346210))

(assert (=> b!6564054 m!7346212))

(assert (=> b!6564063 m!7343344))

(assert (=> b!6564066 m!7346214))

(assert (=> b!6564066 m!7346214))

(declare-fun m!7346216 () Bool)

(assert (=> b!6564066 m!7346216))

(assert (=> b!6564066 m!7346210))

(assert (=> b!6564066 m!7346216))

(assert (=> b!6564066 m!7346210))

(declare-fun m!7346218 () Bool)

(assert (=> b!6564066 m!7346218))

(assert (=> b!6561992 d!2059635))

(assert (=> b!6561992 d!2059601))

(declare-fun d!2059637 () Bool)

(assert (=> d!2059637 (= (isDefined!13033 lt!2406527) (not (isEmpty!37738 lt!2406527)))))

(declare-fun bs!1676111 () Bool)

(assert (= bs!1676111 d!2059637))

(declare-fun m!7346220 () Bool)

(assert (=> bs!1676111 m!7346220))

(assert (=> d!2058697 d!2059637))

(declare-fun b!6564067 () Bool)

(declare-fun e!3973536 () Bool)

(declare-fun e!3973539 () Bool)

(assert (=> b!6564067 (= e!3973536 e!3973539)))

(declare-fun res!2693560 () Bool)

(assert (=> b!6564067 (=> (not res!2693560) (not e!3973539))))

(declare-fun lt!2406726 () Bool)

(assert (=> b!6564067 (= res!2693560 (not lt!2406726))))

(declare-fun b!6564068 () Bool)

(declare-fun res!2693557 () Bool)

(declare-fun e!3973538 () Bool)

(assert (=> b!6564068 (=> res!2693557 e!3973538)))

(assert (=> b!6564068 (= res!2693557 (not (isEmpty!37737 (tail!12414 Nil!65492))))))

(declare-fun b!6564069 () Bool)

(declare-fun e!3973534 () Bool)

(declare-fun call!571072 () Bool)

(assert (=> b!6564069 (= e!3973534 (= lt!2406726 call!571072))))

(declare-fun b!6564071 () Bool)

(declare-fun res!2693556 () Bool)

(declare-fun e!3973537 () Bool)

(assert (=> b!6564071 (=> (not res!2693556) (not e!3973537))))

(assert (=> b!6564071 (= res!2693556 (isEmpty!37737 (tail!12414 Nil!65492)))))

(declare-fun b!6564072 () Bool)

(assert (=> b!6564072 (= e!3973537 (= (head!13329 Nil!65492) (c!1205620 (reg!16768 (regOne!33390 r!7292)))))))

(declare-fun b!6564073 () Bool)

(declare-fun res!2693558 () Bool)

(assert (=> b!6564073 (=> res!2693558 e!3973536)))

(assert (=> b!6564073 (= res!2693558 e!3973537)))

(declare-fun res!2693554 () Bool)

(assert (=> b!6564073 (=> (not res!2693554) (not e!3973537))))

(assert (=> b!6564073 (= res!2693554 lt!2406726)))

(declare-fun b!6564074 () Bool)

(declare-fun e!3973540 () Bool)

(assert (=> b!6564074 (= e!3973540 (not lt!2406726))))

(declare-fun b!6564075 () Bool)

(declare-fun res!2693561 () Bool)

(assert (=> b!6564075 (=> (not res!2693561) (not e!3973537))))

(assert (=> b!6564075 (= res!2693561 (not call!571072))))

(declare-fun b!6564076 () Bool)

(assert (=> b!6564076 (= e!3973539 e!3973538)))

(declare-fun res!2693555 () Bool)

(assert (=> b!6564076 (=> res!2693555 e!3973538)))

(assert (=> b!6564076 (= res!2693555 call!571072)))

(declare-fun b!6564077 () Bool)

(declare-fun e!3973535 () Bool)

(assert (=> b!6564077 (= e!3973535 (nullable!6432 (reg!16768 (regOne!33390 r!7292))))))

(declare-fun bm!571067 () Bool)

(assert (=> bm!571067 (= call!571072 (isEmpty!37737 Nil!65492))))

(declare-fun b!6564078 () Bool)

(assert (=> b!6564078 (= e!3973534 e!3973540)))

(declare-fun c!1206374 () Bool)

(assert (=> b!6564078 (= c!1206374 ((_ is EmptyLang!16439) (reg!16768 (regOne!33390 r!7292))))))

(declare-fun b!6564079 () Bool)

(declare-fun res!2693559 () Bool)

(assert (=> b!6564079 (=> res!2693559 e!3973536)))

(assert (=> b!6564079 (= res!2693559 (not ((_ is ElementMatch!16439) (reg!16768 (regOne!33390 r!7292)))))))

(assert (=> b!6564079 (= e!3973540 e!3973536)))

(declare-fun b!6564080 () Bool)

(assert (=> b!6564080 (= e!3973535 (matchR!8622 (derivativeStep!5123 (reg!16768 (regOne!33390 r!7292)) (head!13329 Nil!65492)) (tail!12414 Nil!65492)))))

(declare-fun d!2059639 () Bool)

(assert (=> d!2059639 e!3973534))

(declare-fun c!1206376 () Bool)

(assert (=> d!2059639 (= c!1206376 ((_ is EmptyExpr!16439) (reg!16768 (regOne!33390 r!7292))))))

(assert (=> d!2059639 (= lt!2406726 e!3973535)))

(declare-fun c!1206375 () Bool)

(assert (=> d!2059639 (= c!1206375 (isEmpty!37737 Nil!65492))))

(assert (=> d!2059639 (validRegex!8175 (reg!16768 (regOne!33390 r!7292)))))

(assert (=> d!2059639 (= (matchR!8622 (reg!16768 (regOne!33390 r!7292)) Nil!65492) lt!2406726)))

(declare-fun b!6564070 () Bool)

(assert (=> b!6564070 (= e!3973538 (not (= (head!13329 Nil!65492) (c!1205620 (reg!16768 (regOne!33390 r!7292))))))))

(assert (= (and d!2059639 c!1206375) b!6564077))

(assert (= (and d!2059639 (not c!1206375)) b!6564080))

(assert (= (and d!2059639 c!1206376) b!6564069))

(assert (= (and d!2059639 (not c!1206376)) b!6564078))

(assert (= (and b!6564078 c!1206374) b!6564074))

(assert (= (and b!6564078 (not c!1206374)) b!6564079))

(assert (= (and b!6564079 (not res!2693559)) b!6564073))

(assert (= (and b!6564073 res!2693554) b!6564075))

(assert (= (and b!6564075 res!2693561) b!6564071))

(assert (= (and b!6564071 res!2693556) b!6564072))

(assert (= (and b!6564073 (not res!2693558)) b!6564067))

(assert (= (and b!6564067 res!2693560) b!6564076))

(assert (= (and b!6564076 (not res!2693555)) b!6564068))

(assert (= (and b!6564068 (not res!2693557)) b!6564070))

(assert (= (or b!6564069 b!6564075 b!6564076) bm!571067))

(assert (=> bm!571067 m!7345876))

(assert (=> d!2059639 m!7345876))

(assert (=> d!2059639 m!7343212))

(assert (=> b!6564071 m!7345878))

(assert (=> b!6564071 m!7345878))

(assert (=> b!6564071 m!7345880))

(assert (=> b!6564072 m!7345882))

(assert (=> b!6564070 m!7345882))

(assert (=> b!6564068 m!7345878))

(assert (=> b!6564068 m!7345878))

(assert (=> b!6564068 m!7345880))

(assert (=> b!6564077 m!7343344))

(assert (=> b!6564080 m!7345882))

(assert (=> b!6564080 m!7345882))

(declare-fun m!7346222 () Bool)

(assert (=> b!6564080 m!7346222))

(assert (=> b!6564080 m!7345878))

(assert (=> b!6564080 m!7346222))

(assert (=> b!6564080 m!7345878))

(declare-fun m!7346224 () Bool)

(assert (=> b!6564080 m!7346224))

(assert (=> d!2058697 d!2059639))

(assert (=> d!2058697 d!2058615))

(declare-fun d!2059641 () Bool)

(assert (=> d!2059641 (= (isDefined!13033 lt!2406582) (not (isEmpty!37738 lt!2406582)))))

(declare-fun bs!1676112 () Bool)

(assert (= bs!1676112 d!2059641))

(declare-fun m!7346226 () Bool)

(assert (=> bs!1676112 m!7346226))

(assert (=> b!6562279 d!2059641))

(declare-fun b!6564081 () Bool)

(declare-fun e!3973543 () Bool)

(declare-fun e!3973546 () Bool)

(assert (=> b!6564081 (= e!3973543 e!3973546)))

(declare-fun res!2693568 () Bool)

(assert (=> b!6564081 (=> (not res!2693568) (not e!3973546))))

(declare-fun lt!2406727 () Bool)

(assert (=> b!6564081 (= res!2693568 (not lt!2406727))))

(declare-fun b!6564082 () Bool)

(declare-fun res!2693565 () Bool)

(declare-fun e!3973545 () Bool)

(assert (=> b!6564082 (=> res!2693565 e!3973545)))

(assert (=> b!6564082 (= res!2693565 (not (isEmpty!37737 (tail!12414 (tail!12414 s!2326)))))))

(declare-fun b!6564083 () Bool)

(declare-fun e!3973541 () Bool)

(declare-fun call!571073 () Bool)

(assert (=> b!6564083 (= e!3973541 (= lt!2406727 call!571073))))

(declare-fun b!6564085 () Bool)

(declare-fun res!2693564 () Bool)

(declare-fun e!3973544 () Bool)

(assert (=> b!6564085 (=> (not res!2693564) (not e!3973544))))

(assert (=> b!6564085 (= res!2693564 (isEmpty!37737 (tail!12414 (tail!12414 s!2326))))))

(declare-fun b!6564086 () Bool)

(assert (=> b!6564086 (= e!3973544 (= (head!13329 (tail!12414 s!2326)) (c!1205620 (derivativeStep!5123 lt!2406396 (head!13329 s!2326)))))))

(declare-fun b!6564087 () Bool)

(declare-fun res!2693566 () Bool)

(assert (=> b!6564087 (=> res!2693566 e!3973543)))

(assert (=> b!6564087 (= res!2693566 e!3973544)))

(declare-fun res!2693562 () Bool)

(assert (=> b!6564087 (=> (not res!2693562) (not e!3973544))))

(assert (=> b!6564087 (= res!2693562 lt!2406727)))

(declare-fun b!6564088 () Bool)

(declare-fun e!3973547 () Bool)

(assert (=> b!6564088 (= e!3973547 (not lt!2406727))))

(declare-fun b!6564089 () Bool)

(declare-fun res!2693569 () Bool)

(assert (=> b!6564089 (=> (not res!2693569) (not e!3973544))))

(assert (=> b!6564089 (= res!2693569 (not call!571073))))

(declare-fun b!6564090 () Bool)

(assert (=> b!6564090 (= e!3973546 e!3973545)))

(declare-fun res!2693563 () Bool)

(assert (=> b!6564090 (=> res!2693563 e!3973545)))

(assert (=> b!6564090 (= res!2693563 call!571073)))

(declare-fun b!6564091 () Bool)

(declare-fun e!3973542 () Bool)

(assert (=> b!6564091 (= e!3973542 (nullable!6432 (derivativeStep!5123 lt!2406396 (head!13329 s!2326))))))

(declare-fun bm!571068 () Bool)

(assert (=> bm!571068 (= call!571073 (isEmpty!37737 (tail!12414 s!2326)))))

(declare-fun b!6564092 () Bool)

(assert (=> b!6564092 (= e!3973541 e!3973547)))

(declare-fun c!1206377 () Bool)

(assert (=> b!6564092 (= c!1206377 ((_ is EmptyLang!16439) (derivativeStep!5123 lt!2406396 (head!13329 s!2326))))))

(declare-fun b!6564093 () Bool)

(declare-fun res!2693567 () Bool)

(assert (=> b!6564093 (=> res!2693567 e!3973543)))

(assert (=> b!6564093 (= res!2693567 (not ((_ is ElementMatch!16439) (derivativeStep!5123 lt!2406396 (head!13329 s!2326)))))))

(assert (=> b!6564093 (= e!3973547 e!3973543)))

(declare-fun b!6564094 () Bool)

(assert (=> b!6564094 (= e!3973542 (matchR!8622 (derivativeStep!5123 (derivativeStep!5123 lt!2406396 (head!13329 s!2326)) (head!13329 (tail!12414 s!2326))) (tail!12414 (tail!12414 s!2326))))))

(declare-fun d!2059643 () Bool)

(assert (=> d!2059643 e!3973541))

(declare-fun c!1206379 () Bool)

(assert (=> d!2059643 (= c!1206379 ((_ is EmptyExpr!16439) (derivativeStep!5123 lt!2406396 (head!13329 s!2326))))))

(assert (=> d!2059643 (= lt!2406727 e!3973542)))

(declare-fun c!1206378 () Bool)

(assert (=> d!2059643 (= c!1206378 (isEmpty!37737 (tail!12414 s!2326)))))

(assert (=> d!2059643 (validRegex!8175 (derivativeStep!5123 lt!2406396 (head!13329 s!2326)))))

(assert (=> d!2059643 (= (matchR!8622 (derivativeStep!5123 lt!2406396 (head!13329 s!2326)) (tail!12414 s!2326)) lt!2406727)))

(declare-fun b!6564084 () Bool)

(assert (=> b!6564084 (= e!3973545 (not (= (head!13329 (tail!12414 s!2326)) (c!1205620 (derivativeStep!5123 lt!2406396 (head!13329 s!2326))))))))

(assert (= (and d!2059643 c!1206378) b!6564091))

(assert (= (and d!2059643 (not c!1206378)) b!6564094))

(assert (= (and d!2059643 c!1206379) b!6564083))

(assert (= (and d!2059643 (not c!1206379)) b!6564092))

(assert (= (and b!6564092 c!1206377) b!6564088))

(assert (= (and b!6564092 (not c!1206377)) b!6564093))

(assert (= (and b!6564093 (not res!2693567)) b!6564087))

(assert (= (and b!6564087 res!2693562) b!6564089))

(assert (= (and b!6564089 res!2693569) b!6564085))

(assert (= (and b!6564085 res!2693564) b!6564086))

(assert (= (and b!6564087 (not res!2693566)) b!6564081))

(assert (= (and b!6564081 res!2693568) b!6564090))

(assert (= (and b!6564090 (not res!2693563)) b!6564082))

(assert (= (and b!6564082 (not res!2693565)) b!6564084))

(assert (= (or b!6564083 b!6564089 b!6564090) bm!571068))

(assert (=> bm!571068 m!7343774))

(assert (=> bm!571068 m!7344250))

(assert (=> d!2059643 m!7343774))

(assert (=> d!2059643 m!7344250))

(assert (=> d!2059643 m!7344294))

(declare-fun m!7346228 () Bool)

(assert (=> d!2059643 m!7346228))

(assert (=> b!6564085 m!7343774))

(assert (=> b!6564085 m!7345984))

(assert (=> b!6564085 m!7345984))

(assert (=> b!6564085 m!7346148))

(assert (=> b!6564086 m!7343774))

(assert (=> b!6564086 m!7345980))

(assert (=> b!6564084 m!7343774))

(assert (=> b!6564084 m!7345980))

(assert (=> b!6564082 m!7343774))

(assert (=> b!6564082 m!7345984))

(assert (=> b!6564082 m!7345984))

(assert (=> b!6564082 m!7346148))

(assert (=> b!6564091 m!7344294))

(declare-fun m!7346230 () Bool)

(assert (=> b!6564091 m!7346230))

(assert (=> b!6564094 m!7343774))

(assert (=> b!6564094 m!7345980))

(assert (=> b!6564094 m!7344294))

(assert (=> b!6564094 m!7345980))

(declare-fun m!7346232 () Bool)

(assert (=> b!6564094 m!7346232))

(assert (=> b!6564094 m!7343774))

(assert (=> b!6564094 m!7345984))

(assert (=> b!6564094 m!7346232))

(assert (=> b!6564094 m!7345984))

(declare-fun m!7346234 () Bool)

(assert (=> b!6564094 m!7346234))

(assert (=> b!6562278 d!2059643))

(declare-fun bm!571069 () Bool)

(declare-fun call!571075 () Regex!16439)

(declare-fun call!571074 () Regex!16439)

(assert (=> bm!571069 (= call!571075 call!571074)))

(declare-fun b!6564096 () Bool)

(declare-fun e!3973551 () Regex!16439)

(declare-fun call!571076 () Regex!16439)

(assert (=> b!6564096 (= e!3973551 (Union!16439 (Concat!25284 call!571076 (regTwo!33390 lt!2406396)) call!571075))))

(declare-fun bm!571070 () Bool)

(declare-fun c!1206382 () Bool)

(assert (=> bm!571070 (= call!571076 (derivativeStep!5123 (ite c!1206382 (regOne!33391 lt!2406396) (regOne!33390 lt!2406396)) (head!13329 s!2326)))))

(declare-fun b!6564097 () Bool)

(declare-fun e!3973552 () Regex!16439)

(assert (=> b!6564097 (= e!3973552 EmptyLang!16439)))

(declare-fun b!6564098 () Bool)

(declare-fun e!3973550 () Regex!16439)

(assert (=> b!6564098 (= e!3973550 (ite (= (head!13329 s!2326) (c!1205620 lt!2406396)) EmptyExpr!16439 EmptyLang!16439))))

(declare-fun b!6564099 () Bool)

(declare-fun c!1206384 () Bool)

(assert (=> b!6564099 (= c!1206384 (nullable!6432 (regOne!33390 lt!2406396)))))

(declare-fun e!3973548 () Regex!16439)

(assert (=> b!6564099 (= e!3973548 e!3973551)))

(declare-fun b!6564100 () Bool)

(assert (=> b!6564100 (= c!1206382 ((_ is Union!16439) lt!2406396))))

(declare-fun e!3973549 () Regex!16439)

(assert (=> b!6564100 (= e!3973550 e!3973549)))

(declare-fun c!1206383 () Bool)

(declare-fun call!571077 () Regex!16439)

(declare-fun bm!571071 () Bool)

(assert (=> bm!571071 (= call!571077 (derivativeStep!5123 (ite c!1206382 (regTwo!33391 lt!2406396) (ite c!1206383 (reg!16768 lt!2406396) (ite c!1206384 (regTwo!33390 lt!2406396) (regOne!33390 lt!2406396)))) (head!13329 s!2326)))))

(declare-fun b!6564101 () Bool)

(assert (=> b!6564101 (= e!3973551 (Union!16439 (Concat!25284 call!571075 (regTwo!33390 lt!2406396)) EmptyLang!16439))))

(declare-fun b!6564095 () Bool)

(assert (=> b!6564095 (= e!3973548 (Concat!25284 call!571074 lt!2406396))))

(declare-fun d!2059645 () Bool)

(declare-fun lt!2406728 () Regex!16439)

(assert (=> d!2059645 (validRegex!8175 lt!2406728)))

(assert (=> d!2059645 (= lt!2406728 e!3973552)))

(declare-fun c!1206380 () Bool)

(assert (=> d!2059645 (= c!1206380 (or ((_ is EmptyExpr!16439) lt!2406396) ((_ is EmptyLang!16439) lt!2406396)))))

(assert (=> d!2059645 (validRegex!8175 lt!2406396)))

(assert (=> d!2059645 (= (derivativeStep!5123 lt!2406396 (head!13329 s!2326)) lt!2406728)))

(declare-fun b!6564102 () Bool)

(assert (=> b!6564102 (= e!3973549 (Union!16439 call!571076 call!571077))))

(declare-fun b!6564103 () Bool)

(assert (=> b!6564103 (= e!3973549 e!3973548)))

(assert (=> b!6564103 (= c!1206383 ((_ is Star!16439) lt!2406396))))

(declare-fun b!6564104 () Bool)

(assert (=> b!6564104 (= e!3973552 e!3973550)))

(declare-fun c!1206381 () Bool)

(assert (=> b!6564104 (= c!1206381 ((_ is ElementMatch!16439) lt!2406396))))

(declare-fun bm!571072 () Bool)

(assert (=> bm!571072 (= call!571074 call!571077)))

(assert (= (and d!2059645 c!1206380) b!6564097))

(assert (= (and d!2059645 (not c!1206380)) b!6564104))

(assert (= (and b!6564104 c!1206381) b!6564098))

(assert (= (and b!6564104 (not c!1206381)) b!6564100))

(assert (= (and b!6564100 c!1206382) b!6564102))

(assert (= (and b!6564100 (not c!1206382)) b!6564103))

(assert (= (and b!6564103 c!1206383) b!6564095))

(assert (= (and b!6564103 (not c!1206383)) b!6564099))

(assert (= (and b!6564099 c!1206384) b!6564096))

(assert (= (and b!6564099 (not c!1206384)) b!6564101))

(assert (= (or b!6564096 b!6564101) bm!571069))

(assert (= (or b!6564095 bm!571069) bm!571072))

(assert (= (or b!6564102 bm!571072) bm!571071))

(assert (= (or b!6564102 b!6564096) bm!571070))

(assert (=> bm!571070 m!7343770))

(declare-fun m!7346236 () Bool)

(assert (=> bm!571070 m!7346236))

(declare-fun m!7346238 () Bool)

(assert (=> b!6564099 m!7346238))

(assert (=> bm!571071 m!7343770))

(declare-fun m!7346240 () Bool)

(assert (=> bm!571071 m!7346240))

(declare-fun m!7346242 () Bool)

(assert (=> d!2059645 m!7346242))

(assert (=> d!2059645 m!7344290))

(assert (=> b!6562278 d!2059645))

(assert (=> b!6562278 d!2059539))

(assert (=> b!6562278 d!2059541))

(declare-fun b!6564105 () Bool)

(declare-fun e!3973554 () Bool)

(assert (=> b!6564105 (= e!3973554 (nullable!6432 (h!71941 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343))))))))))))))

(declare-fun bm!571073 () Bool)

(declare-fun call!571078 () (InoxSet Context!11646))

(assert (=> bm!571073 (= call!571078 (derivationStepZipperDown!1687 (h!71941 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))))) (Context!11647 (t!379259 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343))))))))))) (h!71940 s!2326)))))

(declare-fun e!3973555 () (InoxSet Context!11646))

(declare-fun b!6564106 () Bool)

(assert (=> b!6564106 (= e!3973555 ((_ map or) call!571078 (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343))))))))))) (h!71940 s!2326))))))

(declare-fun d!2059647 () Bool)

(declare-fun c!1206386 () Bool)

(assert (=> d!2059647 (= c!1206386 e!3973554)))

(declare-fun res!2693570 () Bool)

(assert (=> d!2059647 (=> (not res!2693570) (not e!3973554))))

(assert (=> d!2059647 (= res!2693570 ((_ is Cons!65493) (exprs!6323 (Context!11647 (t!379259 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))))))))

(assert (=> d!2059647 (= (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))) (h!71940 s!2326)) e!3973555)))

(declare-fun b!6564107 () Bool)

(declare-fun e!3973553 () (InoxSet Context!11646))

(assert (=> b!6564107 (= e!3973555 e!3973553)))

(declare-fun c!1206385 () Bool)

(assert (=> b!6564107 (= c!1206385 ((_ is Cons!65493) (exprs!6323 (Context!11647 (t!379259 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))))))))

(declare-fun b!6564108 () Bool)

(assert (=> b!6564108 (= e!3973553 call!571078)))

(declare-fun b!6564109 () Bool)

(assert (=> b!6564109 (= e!3973553 ((as const (Array Context!11646 Bool)) false))))

(assert (= (and d!2059647 res!2693570) b!6564105))

(assert (= (and d!2059647 c!1206386) b!6564106))

(assert (= (and d!2059647 (not c!1206386)) b!6564107))

(assert (= (and b!6564107 c!1206385) b!6564108))

(assert (= (and b!6564107 (not c!1206385)) b!6564109))

(assert (= (or b!6564106 b!6564108) bm!571073))

(declare-fun m!7346244 () Bool)

(assert (=> b!6564105 m!7346244))

(declare-fun m!7346246 () Bool)

(assert (=> bm!571073 m!7346246))

(declare-fun m!7346248 () Bool)

(assert (=> b!6564106 m!7346248))

(assert (=> b!6562388 d!2059647))

(declare-fun bs!1676113 () Bool)

(declare-fun d!2059649 () Bool)

(assert (= bs!1676113 (and d!2059649 d!2058735)))

(declare-fun lambda!365237 () Int)

(assert (=> bs!1676113 (= lambda!365237 lambda!365124)))

(declare-fun bs!1676114 () Bool)

(assert (= bs!1676114 (and d!2059649 d!2058599)))

(assert (=> bs!1676114 (= lambda!365237 lambda!365092)))

(declare-fun bs!1676115 () Bool)

(assert (= bs!1676115 (and d!2059649 d!2058587)))

(assert (=> bs!1676115 (= lambda!365237 lambda!365086)))

(declare-fun bs!1676116 () Bool)

(assert (= bs!1676116 (and d!2059649 d!2058797)))

(assert (=> bs!1676116 (= lambda!365237 lambda!365138)))

(declare-fun bs!1676117 () Bool)

(assert (= bs!1676117 (and d!2059649 d!2058737)))

(assert (=> bs!1676117 (= lambda!365237 lambda!365127)))

(declare-fun bs!1676118 () Bool)

(assert (= bs!1676118 (and d!2059649 d!2059555)))

(assert (=> bs!1676118 (= lambda!365237 lambda!365229)))

(declare-fun bs!1676119 () Bool)

(assert (= bs!1676119 (and d!2059649 d!2058739)))

(assert (=> bs!1676119 (= lambda!365237 lambda!365128)))

(declare-fun bs!1676120 () Bool)

(assert (= bs!1676120 (and d!2059649 d!2059557)))

(assert (=> bs!1676120 (= lambda!365237 lambda!365230)))

(declare-fun bs!1676121 () Bool)

(assert (= bs!1676121 (and d!2059649 b!6561265)))

(assert (=> bs!1676121 (= lambda!365237 lambda!365045)))

(declare-fun b!6564110 () Bool)

(declare-fun e!3973561 () Regex!16439)

(assert (=> b!6564110 (= e!3973561 EmptyLang!16439)))

(declare-fun b!6564111 () Bool)

(declare-fun e!3973558 () Bool)

(declare-fun e!3973556 () Bool)

(assert (=> b!6564111 (= e!3973558 e!3973556)))

(declare-fun c!1206388 () Bool)

(assert (=> b!6564111 (= c!1206388 (isEmpty!37733 (t!379259 (unfocusZipperList!1860 zl!343))))))

(declare-fun b!6564113 () Bool)

(declare-fun lt!2406729 () Regex!16439)

(assert (=> b!6564113 (= e!3973556 (isEmptyLang!1826 lt!2406729))))

(declare-fun b!6564114 () Bool)

(assert (=> b!6564114 (= e!3973561 (Union!16439 (h!71941 (t!379259 (unfocusZipperList!1860 zl!343))) (generalisedUnion!2283 (t!379259 (t!379259 (unfocusZipperList!1860 zl!343))))))))

(declare-fun b!6564115 () Bool)

(declare-fun e!3973559 () Bool)

(assert (=> b!6564115 (= e!3973556 e!3973559)))

(declare-fun c!1206387 () Bool)

(assert (=> b!6564115 (= c!1206387 (isEmpty!37733 (tail!12413 (t!379259 (unfocusZipperList!1860 zl!343)))))))

(declare-fun b!6564116 () Bool)

(assert (=> b!6564116 (= e!3973559 (isUnion!1256 lt!2406729))))

(declare-fun b!6564117 () Bool)

(declare-fun e!3973557 () Regex!16439)

(assert (=> b!6564117 (= e!3973557 e!3973561)))

(declare-fun c!1206390 () Bool)

(assert (=> b!6564117 (= c!1206390 ((_ is Cons!65493) (t!379259 (unfocusZipperList!1860 zl!343))))))

(assert (=> d!2059649 e!3973558))

(declare-fun res!2693572 () Bool)

(assert (=> d!2059649 (=> (not res!2693572) (not e!3973558))))

(assert (=> d!2059649 (= res!2693572 (validRegex!8175 lt!2406729))))

(assert (=> d!2059649 (= lt!2406729 e!3973557)))

(declare-fun c!1206389 () Bool)

(declare-fun e!3973560 () Bool)

(assert (=> d!2059649 (= c!1206389 e!3973560)))

(declare-fun res!2693571 () Bool)

(assert (=> d!2059649 (=> (not res!2693571) (not e!3973560))))

(assert (=> d!2059649 (= res!2693571 ((_ is Cons!65493) (t!379259 (unfocusZipperList!1860 zl!343))))))

(assert (=> d!2059649 (forall!15611 (t!379259 (unfocusZipperList!1860 zl!343)) lambda!365237)))

(assert (=> d!2059649 (= (generalisedUnion!2283 (t!379259 (unfocusZipperList!1860 zl!343))) lt!2406729)))

(declare-fun b!6564112 () Bool)

(assert (=> b!6564112 (= e!3973559 (= lt!2406729 (head!13328 (t!379259 (unfocusZipperList!1860 zl!343)))))))

(declare-fun b!6564118 () Bool)

(assert (=> b!6564118 (= e!3973557 (h!71941 (t!379259 (unfocusZipperList!1860 zl!343))))))

(declare-fun b!6564119 () Bool)

(assert (=> b!6564119 (= e!3973560 (isEmpty!37733 (t!379259 (t!379259 (unfocusZipperList!1860 zl!343)))))))

(assert (= (and d!2059649 res!2693571) b!6564119))

(assert (= (and d!2059649 c!1206389) b!6564118))

(assert (= (and d!2059649 (not c!1206389)) b!6564117))

(assert (= (and b!6564117 c!1206390) b!6564114))

(assert (= (and b!6564117 (not c!1206390)) b!6564110))

(assert (= (and d!2059649 res!2693572) b!6564111))

(assert (= (and b!6564111 c!1206388) b!6564113))

(assert (= (and b!6564111 (not c!1206388)) b!6564115))

(assert (= (and b!6564115 c!1206387) b!6564112))

(assert (= (and b!6564115 (not c!1206387)) b!6564116))

(declare-fun m!7346250 () Bool)

(assert (=> b!6564116 m!7346250))

(assert (=> b!6564111 m!7344124))

(declare-fun m!7346252 () Bool)

(assert (=> b!6564114 m!7346252))

(declare-fun m!7346254 () Bool)

(assert (=> b!6564119 m!7346254))

(declare-fun m!7346256 () Bool)

(assert (=> b!6564112 m!7346256))

(declare-fun m!7346258 () Bool)

(assert (=> d!2059649 m!7346258))

(declare-fun m!7346260 () Bool)

(assert (=> d!2059649 m!7346260))

(declare-fun m!7346262 () Bool)

(assert (=> b!6564115 m!7346262))

(assert (=> b!6564115 m!7346262))

(declare-fun m!7346264 () Bool)

(assert (=> b!6564115 m!7346264))

(declare-fun m!7346266 () Bool)

(assert (=> b!6564113 m!7346266))

(assert (=> b!6562098 d!2059649))

(declare-fun d!2059651 () Bool)

(assert (=> d!2059651 (= (head!13328 (exprs!6323 (h!71942 zl!343))) (h!71941 (exprs!6323 (h!71942 zl!343))))))

(assert (=> b!6561716 d!2059651))

(declare-fun b!6564120 () Bool)

(declare-fun e!3973563 () List!65616)

(assert (=> b!6564120 (= e!3973563 (_2!36721 (get!22740 lt!2406562)))))

(declare-fun b!6564123 () Bool)

(declare-fun e!3973562 () Bool)

(declare-fun lt!2406730 () List!65616)

(assert (=> b!6564123 (= e!3973562 (or (not (= (_2!36721 (get!22740 lt!2406562)) Nil!65492)) (= lt!2406730 (_1!36721 (get!22740 lt!2406562)))))))

(declare-fun d!2059653 () Bool)

(assert (=> d!2059653 e!3973562))

(declare-fun res!2693573 () Bool)

(assert (=> d!2059653 (=> (not res!2693573) (not e!3973562))))

(assert (=> d!2059653 (= res!2693573 (= (content!12598 lt!2406730) ((_ map or) (content!12598 (_1!36721 (get!22740 lt!2406562))) (content!12598 (_2!36721 (get!22740 lt!2406562))))))))

(assert (=> d!2059653 (= lt!2406730 e!3973563)))

(declare-fun c!1206391 () Bool)

(assert (=> d!2059653 (= c!1206391 ((_ is Nil!65492) (_1!36721 (get!22740 lt!2406562))))))

(assert (=> d!2059653 (= (++!14580 (_1!36721 (get!22740 lt!2406562)) (_2!36721 (get!22740 lt!2406562))) lt!2406730)))

(declare-fun b!6564121 () Bool)

(assert (=> b!6564121 (= e!3973563 (Cons!65492 (h!71940 (_1!36721 (get!22740 lt!2406562))) (++!14580 (t!379258 (_1!36721 (get!22740 lt!2406562))) (_2!36721 (get!22740 lt!2406562)))))))

(declare-fun b!6564122 () Bool)

(declare-fun res!2693574 () Bool)

(assert (=> b!6564122 (=> (not res!2693574) (not e!3973562))))

(assert (=> b!6564122 (= res!2693574 (= (size!40527 lt!2406730) (+ (size!40527 (_1!36721 (get!22740 lt!2406562))) (size!40527 (_2!36721 (get!22740 lt!2406562))))))))

(assert (= (and d!2059653 c!1206391) b!6564120))

(assert (= (and d!2059653 (not c!1206391)) b!6564121))

(assert (= (and d!2059653 res!2693573) b!6564122))

(assert (= (and b!6564122 res!2693574) b!6564123))

(declare-fun m!7346268 () Bool)

(assert (=> d!2059653 m!7346268))

(declare-fun m!7346270 () Bool)

(assert (=> d!2059653 m!7346270))

(declare-fun m!7346272 () Bool)

(assert (=> d!2059653 m!7346272))

(declare-fun m!7346274 () Bool)

(assert (=> b!6564121 m!7346274))

(declare-fun m!7346276 () Bool)

(assert (=> b!6564122 m!7346276))

(declare-fun m!7346278 () Bool)

(assert (=> b!6564122 m!7346278))

(declare-fun m!7346280 () Bool)

(assert (=> b!6564122 m!7346280))

(assert (=> b!6562189 d!2059653))

(assert (=> b!6562189 d!2059551))

(declare-fun d!2059655 () Bool)

(assert (=> d!2059655 (= (Exists!3509 lambda!365134) (choose!48962 lambda!365134))))

(declare-fun bs!1676122 () Bool)

(assert (= bs!1676122 d!2059655))

(declare-fun m!7346282 () Bool)

(assert (=> bs!1676122 m!7346282))

(assert (=> d!2058793 d!2059655))

(declare-fun d!2059657 () Bool)

(assert (=> d!2059657 (= (Exists!3509 lambda!365135) (choose!48962 lambda!365135))))

(declare-fun bs!1676123 () Bool)

(assert (= bs!1676123 d!2059657))

(declare-fun m!7346284 () Bool)

(assert (=> bs!1676123 m!7346284))

(assert (=> d!2058793 d!2059657))

(declare-fun bs!1676124 () Bool)

(declare-fun d!2059659 () Bool)

(assert (= bs!1676124 (and d!2059659 b!6561898)))

(declare-fun lambda!365238 () Int)

(assert (=> bs!1676124 (not (= lambda!365238 lambda!365111))))

(declare-fun bs!1676125 () Bool)

(assert (= bs!1676125 (and d!2059659 d!2058817)))

(assert (=> bs!1676125 (= lambda!365238 lambda!365141)))

(declare-fun bs!1676126 () Bool)

(assert (= bs!1676126 (and d!2059659 d!2058767)))

(assert (=> bs!1676126 (not (= lambda!365238 lambda!365131))))

(declare-fun bs!1676127 () Bool)

(assert (= bs!1676127 (and d!2059659 d!2059477)))

(assert (=> bs!1676127 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365238 lambda!365225))))

(declare-fun bs!1676128 () Bool)

(assert (= bs!1676128 (and d!2059659 b!6561249)))

(assert (=> bs!1676128 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365238 lambda!365048))))

(declare-fun bs!1676129 () Bool)

(assert (= bs!1676129 (and d!2059659 d!2058617)))

(assert (=> bs!1676129 (not (= lambda!365238 lambda!365100))))

(declare-fun bs!1676130 () Bool)

(assert (= bs!1676130 (and d!2059659 b!6563928)))

(assert (=> bs!1676130 (not (= lambda!365238 lambda!365231))))

(declare-fun bs!1676131 () Bool)

(assert (= bs!1676131 (and d!2059659 b!6561283)))

(assert (=> bs!1676131 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365238 lambda!365041))))

(assert (=> bs!1676131 (not (= lambda!365238 lambda!365042))))

(assert (=> bs!1676126 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365238 lambda!365130))))

(declare-fun bs!1676132 () Bool)

(assert (= bs!1676132 (and d!2059659 b!6562199)))

(assert (=> bs!1676132 (not (= lambda!365238 lambda!365132))))

(declare-fun bs!1676133 () Bool)

(assert (= bs!1676133 (and d!2059659 d!2058793)))

(assert (=> bs!1676133 (not (= lambda!365238 lambda!365135))))

(declare-fun bs!1676134 () Bool)

(assert (= bs!1676134 (and d!2059659 d!2058681)))

(assert (=> bs!1676134 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365238 lambda!365116))))

(declare-fun bs!1676135 () Bool)

(assert (= bs!1676135 (and d!2059659 b!6562323)))

(assert (=> bs!1676135 (not (= lambda!365238 lambda!365140))))

(declare-fun bs!1676136 () Bool)

(assert (= bs!1676136 (and d!2059659 b!6563924)))

(assert (=> bs!1676136 (not (= lambda!365238 lambda!365232))))

(declare-fun bs!1676137 () Bool)

(assert (= bs!1676137 (and d!2059659 b!6561287)))

(assert (=> bs!1676137 (not (= lambda!365238 lambda!365047))))

(declare-fun bs!1676138 () Bool)

(assert (= bs!1676138 (and d!2059659 d!2058765)))

(assert (=> bs!1676138 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365238 lambda!365129))))

(declare-fun bs!1676139 () Bool)

(assert (= bs!1676139 (and d!2059659 b!6562327)))

(assert (=> bs!1676139 (not (= lambda!365238 lambda!365139))))

(declare-fun bs!1676140 () Bool)

(assert (= bs!1676140 (and d!2059659 b!6562195)))

(assert (=> bs!1676140 (not (= lambda!365238 lambda!365133))))

(assert (=> bs!1676133 (= lambda!365238 lambda!365134)))

(assert (=> bs!1676129 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365238 lambda!365097))))

(declare-fun bs!1676141 () Bool)

(assert (= bs!1676141 (and d!2059659 b!6561902)))

(assert (=> bs!1676141 (not (= lambda!365238 lambda!365109))))

(assert (=> bs!1676127 (not (= lambda!365238 lambda!365226))))

(declare-fun bs!1676142 () Bool)

(assert (= bs!1676142 (and d!2059659 b!6562412)))

(assert (=> bs!1676142 (not (= lambda!365238 lambda!365150))))

(declare-fun bs!1676143 () Bool)

(assert (= bs!1676143 (and d!2059659 b!6562408)))

(assert (=> bs!1676143 (not (= lambda!365238 lambda!365151))))

(declare-fun bs!1676144 () Bool)

(assert (= bs!1676144 (and d!2059659 b!6563956)))

(assert (=> bs!1676144 (not (= lambda!365238 lambda!365234))))

(assert (=> bs!1676137 (= lambda!365238 lambda!365046)))

(declare-fun bs!1676145 () Bool)

(assert (= bs!1676145 (and d!2059659 b!6563952)))

(assert (=> bs!1676145 (not (= lambda!365238 lambda!365235))))

(assert (=> bs!1676128 (not (= lambda!365238 lambda!365049))))

(assert (=> d!2059659 true))

(assert (=> d!2059659 true))

(assert (=> d!2059659 true))

(declare-fun lambda!365239 () Int)

(assert (=> bs!1676125 (not (= lambda!365239 lambda!365141))))

(assert (=> bs!1676126 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365239 lambda!365131))))

(assert (=> bs!1676127 (not (= lambda!365239 lambda!365225))))

(assert (=> bs!1676128 (not (= lambda!365239 lambda!365048))))

(assert (=> bs!1676129 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365239 lambda!365100))))

(assert (=> bs!1676130 (not (= lambda!365239 lambda!365231))))

(assert (=> bs!1676131 (not (= lambda!365239 lambda!365041))))

(assert (=> bs!1676131 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365239 lambda!365042))))

(assert (=> bs!1676126 (not (= lambda!365239 lambda!365130))))

(assert (=> bs!1676132 (not (= lambda!365239 lambda!365132))))

(assert (=> bs!1676133 (= lambda!365239 lambda!365135)))

(assert (=> bs!1676124 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (regOne!33390 lt!2406360)) (= (regTwo!33390 r!7292) (regTwo!33390 lt!2406360))) (= lambda!365239 lambda!365111))))

(declare-fun bs!1676146 () Bool)

(assert (= bs!1676146 d!2059659))

(assert (=> bs!1676146 (not (= lambda!365239 lambda!365238))))

(assert (=> bs!1676134 (not (= lambda!365239 lambda!365116))))

(assert (=> bs!1676135 (= (and (= lt!2406360 (regOne!33390 lt!2406396)) (= (regTwo!33390 r!7292) (regTwo!33390 lt!2406396))) (= lambda!365239 lambda!365140))))

(assert (=> bs!1676136 (= (and (= lt!2406360 (regOne!33390 (regOne!33391 lt!2406349))) (= (regTwo!33390 r!7292) (regTwo!33390 (regOne!33391 lt!2406349)))) (= lambda!365239 lambda!365232))))

(assert (=> bs!1676137 (= lambda!365239 lambda!365047)))

(assert (=> bs!1676138 (not (= lambda!365239 lambda!365129))))

(assert (=> bs!1676139 (not (= lambda!365239 lambda!365139))))

(assert (=> bs!1676140 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365239 lambda!365133))))

(assert (=> bs!1676133 (not (= lambda!365239 lambda!365134))))

(assert (=> bs!1676129 (not (= lambda!365239 lambda!365097))))

(assert (=> bs!1676141 (not (= lambda!365239 lambda!365109))))

(assert (=> bs!1676127 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365239 lambda!365226))))

(assert (=> bs!1676142 (not (= lambda!365239 lambda!365150))))

(assert (=> bs!1676143 (= (and (= lt!2406360 (regOne!33390 lt!2406349)) (= (regTwo!33390 r!7292) (regTwo!33390 lt!2406349))) (= lambda!365239 lambda!365151))))

(assert (=> bs!1676144 (not (= lambda!365239 lambda!365234))))

(assert (=> bs!1676137 (not (= lambda!365239 lambda!365046))))

(assert (=> bs!1676145 (= (and (= lt!2406360 (regOne!33390 (regOne!33391 r!7292))) (= (regTwo!33390 r!7292) (regTwo!33390 (regOne!33391 r!7292)))) (= lambda!365239 lambda!365235))))

(assert (=> bs!1676128 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365239 lambda!365049))))

(assert (=> d!2059659 true))

(assert (=> d!2059659 true))

(assert (=> d!2059659 true))

(assert (=> d!2059659 (= (Exists!3509 lambda!365238) (Exists!3509 lambda!365239))))

(assert (=> d!2059659 true))

(declare-fun _$90!2404 () Unit!159091)

(assert (=> d!2059659 (= (choose!48963 lt!2406360 (regTwo!33390 r!7292) s!2326) _$90!2404)))

(declare-fun m!7346286 () Bool)

(assert (=> bs!1676146 m!7346286))

(declare-fun m!7346288 () Bool)

(assert (=> bs!1676146 m!7346288))

(assert (=> d!2058793 d!2059659))

(assert (=> d!2058793 d!2059569))

(declare-fun d!2059661 () Bool)

(assert (=> d!2059661 (= ($colon$colon!2280 (exprs!6323 lt!2406352) (ite (or c!1205861 c!1205859) (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (regOne!33390 r!7292)))) (Cons!65493 (ite (or c!1205861 c!1205859) (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (reg!16768 (regOne!33390 r!7292))) (exprs!6323 lt!2406352)))))

(assert (=> bm!570751 d!2059661))

(assert (=> d!2058803 d!2058787))

(assert (=> d!2058803 d!2058813))

(declare-fun d!2059663 () Bool)

(assert (=> d!2059663 (= (matchR!8622 lt!2406396 s!2326) (matchRSpec!3540 lt!2406396 s!2326))))

(assert (=> d!2059663 true))

(declare-fun _$88!5250 () Unit!159091)

(assert (=> d!2059663 (= (choose!48964 lt!2406396 s!2326) _$88!5250)))

(declare-fun bs!1676147 () Bool)

(assert (= bs!1676147 d!2059663))

(assert (=> bs!1676147 m!7343304))

(assert (=> bs!1676147 m!7343330))

(assert (=> d!2058803 d!2059663))

(declare-fun b!6564124 () Bool)

(declare-fun e!3973565 () Bool)

(declare-fun call!571079 () Bool)

(assert (=> b!6564124 (= e!3973565 call!571079)))

(declare-fun b!6564125 () Bool)

(declare-fun res!2693577 () Bool)

(declare-fun e!3973564 () Bool)

(assert (=> b!6564125 (=> (not res!2693577) (not e!3973564))))

(declare-fun call!571081 () Bool)

(assert (=> b!6564125 (= res!2693577 call!571081)))

(declare-fun e!3973567 () Bool)

(assert (=> b!6564125 (= e!3973567 e!3973564)))

(declare-fun b!6564126 () Bool)

(declare-fun e!3973570 () Bool)

(assert (=> b!6564126 (= e!3973570 e!3973567)))

(declare-fun c!1206393 () Bool)

(assert (=> b!6564126 (= c!1206393 ((_ is Union!16439) lt!2406396))))

(declare-fun bm!571074 () Bool)

(assert (=> bm!571074 (= call!571081 (validRegex!8175 (ite c!1206393 (regOne!33391 lt!2406396) (regOne!33390 lt!2406396))))))

(declare-fun b!6564127 () Bool)

(assert (=> b!6564127 (= e!3973564 call!571079)))

(declare-fun b!6564128 () Bool)

(declare-fun e!3973568 () Bool)

(assert (=> b!6564128 (= e!3973568 e!3973565)))

(declare-fun res!2693579 () Bool)

(assert (=> b!6564128 (=> (not res!2693579) (not e!3973565))))

(assert (=> b!6564128 (= res!2693579 call!571081)))

(declare-fun b!6564129 () Bool)

(declare-fun res!2693575 () Bool)

(assert (=> b!6564129 (=> res!2693575 e!3973568)))

(assert (=> b!6564129 (= res!2693575 (not ((_ is Concat!25284) lt!2406396)))))

(assert (=> b!6564129 (= e!3973567 e!3973568)))

(declare-fun b!6564130 () Bool)

(declare-fun e!3973566 () Bool)

(assert (=> b!6564130 (= e!3973570 e!3973566)))

(declare-fun res!2693576 () Bool)

(assert (=> b!6564130 (= res!2693576 (not (nullable!6432 (reg!16768 lt!2406396))))))

(assert (=> b!6564130 (=> (not res!2693576) (not e!3973566))))

(declare-fun d!2059665 () Bool)

(declare-fun res!2693578 () Bool)

(declare-fun e!3973569 () Bool)

(assert (=> d!2059665 (=> res!2693578 e!3973569)))

(assert (=> d!2059665 (= res!2693578 ((_ is ElementMatch!16439) lt!2406396))))

(assert (=> d!2059665 (= (validRegex!8175 lt!2406396) e!3973569)))

(declare-fun b!6564131 () Bool)

(declare-fun call!571080 () Bool)

(assert (=> b!6564131 (= e!3973566 call!571080)))

(declare-fun bm!571075 () Bool)

(assert (=> bm!571075 (= call!571079 call!571080)))

(declare-fun b!6564132 () Bool)

(assert (=> b!6564132 (= e!3973569 e!3973570)))

(declare-fun c!1206392 () Bool)

(assert (=> b!6564132 (= c!1206392 ((_ is Star!16439) lt!2406396))))

(declare-fun bm!571076 () Bool)

(assert (=> bm!571076 (= call!571080 (validRegex!8175 (ite c!1206392 (reg!16768 lt!2406396) (ite c!1206393 (regTwo!33391 lt!2406396) (regTwo!33390 lt!2406396)))))))

(assert (= (and d!2059665 (not res!2693578)) b!6564132))

(assert (= (and b!6564132 c!1206392) b!6564130))

(assert (= (and b!6564132 (not c!1206392)) b!6564126))

(assert (= (and b!6564130 res!2693576) b!6564131))

(assert (= (and b!6564126 c!1206393) b!6564125))

(assert (= (and b!6564126 (not c!1206393)) b!6564129))

(assert (= (and b!6564125 res!2693577) b!6564127))

(assert (= (and b!6564129 (not res!2693575)) b!6564128))

(assert (= (and b!6564128 res!2693579) b!6564124))

(assert (= (or b!6564127 b!6564124) bm!571075))

(assert (= (or b!6564125 b!6564128) bm!571074))

(assert (= (or b!6564131 bm!571075) bm!571076))

(declare-fun m!7346290 () Bool)

(assert (=> bm!571074 m!7346290))

(declare-fun m!7346292 () Bool)

(assert (=> b!6564130 m!7346292))

(declare-fun m!7346294 () Bool)

(assert (=> bm!571076 m!7346294))

(assert (=> d!2058803 d!2059665))

(declare-fun bm!571077 () Bool)

(declare-fun call!571083 () List!65617)

(declare-fun call!571087 () List!65617)

(assert (=> bm!571077 (= call!571083 call!571087)))

(declare-fun e!3973573 () (InoxSet Context!11646))

(declare-fun b!6564133 () Bool)

(assert (=> b!6564133 (= e!3973573 (store ((as const (Array Context!11646 Bool)) false) (ite c!1205918 lt!2406386 (Context!11647 call!570775)) true))))

(declare-fun b!6564134 () Bool)

(declare-fun e!3973576 () (InoxSet Context!11646))

(declare-fun e!3973575 () (InoxSet Context!11646))

(assert (=> b!6564134 (= e!3973576 e!3973575)))

(declare-fun c!1206396 () Bool)

(assert (=> b!6564134 (= c!1206396 ((_ is Concat!25284) (ite c!1205918 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))))))))

(declare-fun b!6564135 () Bool)

(declare-fun e!3973574 () (InoxSet Context!11646))

(declare-fun call!571086 () (InoxSet Context!11646))

(assert (=> b!6564135 (= e!3973574 call!571086)))

(declare-fun b!6564136 () Bool)

(declare-fun call!571085 () (InoxSet Context!11646))

(declare-fun call!571082 () (InoxSet Context!11646))

(assert (=> b!6564136 (= e!3973576 ((_ map or) call!571085 call!571082))))

(declare-fun bm!571078 () Bool)

(declare-fun c!1206394 () Bool)

(assert (=> bm!571078 (= call!571085 (derivationStepZipperDown!1687 (ite c!1206394 (regOne!33391 (ite c!1205918 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))))) (regOne!33390 (ite c!1205918 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343))))))) (ite c!1206394 (ite c!1205918 lt!2406386 (Context!11647 call!570775)) (Context!11647 call!571087)) (h!71940 s!2326)))))

(declare-fun b!6564137 () Bool)

(assert (=> b!6564137 (= e!3973575 call!571086)))

(declare-fun bm!571079 () Bool)

(declare-fun call!571084 () (InoxSet Context!11646))

(declare-fun c!1206398 () Bool)

(assert (=> bm!571079 (= call!571084 (derivationStepZipperDown!1687 (ite c!1206394 (regTwo!33391 (ite c!1205918 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))))) (ite c!1206398 (regTwo!33390 (ite c!1205918 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))))) (ite c!1206396 (regOne!33390 (ite c!1205918 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))))) (reg!16768 (ite c!1205918 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343))))))))) (ite (or c!1206394 c!1206398) (ite c!1205918 lt!2406386 (Context!11647 call!570775)) (Context!11647 call!571083)) (h!71940 s!2326)))))

(declare-fun b!6564138 () Bool)

(declare-fun e!3973571 () Bool)

(assert (=> b!6564138 (= e!3973571 (nullable!6432 (regOne!33390 (ite c!1205918 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343))))))))))

(declare-fun bm!571080 () Bool)

(assert (=> bm!571080 (= call!571086 call!571082)))

(declare-fun bm!571081 () Bool)

(assert (=> bm!571081 (= call!571082 call!571084)))

(declare-fun b!6564139 () Bool)

(declare-fun c!1206397 () Bool)

(assert (=> b!6564139 (= c!1206397 ((_ is Star!16439) (ite c!1205918 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))))))))

(assert (=> b!6564139 (= e!3973575 e!3973574)))

(declare-fun b!6564140 () Bool)

(assert (=> b!6564140 (= e!3973574 ((as const (Array Context!11646 Bool)) false))))

(declare-fun b!6564141 () Bool)

(declare-fun e!3973572 () (InoxSet Context!11646))

(assert (=> b!6564141 (= e!3973573 e!3973572)))

(assert (=> b!6564141 (= c!1206394 ((_ is Union!16439) (ite c!1205918 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))))))))

(declare-fun bm!571082 () Bool)

(assert (=> bm!571082 (= call!571087 ($colon$colon!2280 (exprs!6323 (ite c!1205918 lt!2406386 (Context!11647 call!570775))) (ite (or c!1206398 c!1206396) (regTwo!33390 (ite c!1205918 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))))) (ite c!1205918 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343))))))))))

(declare-fun b!6564142 () Bool)

(assert (=> b!6564142 (= e!3973572 ((_ map or) call!571085 call!571084))))

(declare-fun d!2059667 () Bool)

(declare-fun c!1206395 () Bool)

(assert (=> d!2059667 (= c!1206395 (and ((_ is ElementMatch!16439) (ite c!1205918 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))))) (= (c!1205620 (ite c!1205918 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))))) (h!71940 s!2326))))))

(assert (=> d!2059667 (= (derivationStepZipperDown!1687 (ite c!1205918 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343))))) (ite c!1205918 lt!2406386 (Context!11647 call!570775)) (h!71940 s!2326)) e!3973573)))

(declare-fun b!6564143 () Bool)

(assert (=> b!6564143 (= c!1206398 e!3973571)))

(declare-fun res!2693580 () Bool)

(assert (=> b!6564143 (=> (not res!2693580) (not e!3973571))))

(assert (=> b!6564143 (= res!2693580 ((_ is Concat!25284) (ite c!1205918 (regOne!33391 (h!71941 (exprs!6323 (h!71942 zl!343)))) (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))))))))

(assert (=> b!6564143 (= e!3973572 e!3973576)))

(assert (= (and d!2059667 c!1206395) b!6564133))

(assert (= (and d!2059667 (not c!1206395)) b!6564141))

(assert (= (and b!6564141 c!1206394) b!6564142))

(assert (= (and b!6564141 (not c!1206394)) b!6564143))

(assert (= (and b!6564143 res!2693580) b!6564138))

(assert (= (and b!6564143 c!1206398) b!6564136))

(assert (= (and b!6564143 (not c!1206398)) b!6564134))

(assert (= (and b!6564134 c!1206396) b!6564137))

(assert (= (and b!6564134 (not c!1206396)) b!6564139))

(assert (= (and b!6564139 c!1206397) b!6564135))

(assert (= (and b!6564139 (not c!1206397)) b!6564140))

(assert (= (or b!6564137 b!6564135) bm!571077))

(assert (= (or b!6564137 b!6564135) bm!571080))

(assert (= (or b!6564136 bm!571077) bm!571082))

(assert (= (or b!6564136 bm!571080) bm!571081))

(assert (= (or b!6564142 bm!571081) bm!571079))

(assert (= (or b!6564142 b!6564136) bm!571078))

(declare-fun m!7346296 () Bool)

(assert (=> b!6564138 m!7346296))

(declare-fun m!7346298 () Bool)

(assert (=> b!6564133 m!7346298))

(declare-fun m!7346300 () Bool)

(assert (=> bm!571082 m!7346300))

(declare-fun m!7346302 () Bool)

(assert (=> bm!571078 m!7346302))

(declare-fun m!7346304 () Bool)

(assert (=> bm!571079 m!7346304))

(assert (=> bm!570766 d!2059667))

(declare-fun b!6564144 () Bool)

(declare-fun e!3973578 () Bool)

(assert (=> b!6564144 (= e!3973578 (nullable!6432 (h!71941 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406352)))))))))

(declare-fun bm!571083 () Bool)

(declare-fun call!571088 () (InoxSet Context!11646))

(assert (=> bm!571083 (= call!571088 (derivationStepZipperDown!1687 (h!71941 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406352))))) (Context!11647 (t!379259 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406352)))))) (h!71940 s!2326)))))

(declare-fun e!3973579 () (InoxSet Context!11646))

(declare-fun b!6564145 () Bool)

(assert (=> b!6564145 (= e!3973579 ((_ map or) call!571088 (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406352)))))) (h!71940 s!2326))))))

(declare-fun d!2059669 () Bool)

(declare-fun c!1206400 () Bool)

(assert (=> d!2059669 (= c!1206400 e!3973578)))

(declare-fun res!2693581 () Bool)

(assert (=> d!2059669 (=> (not res!2693581) (not e!3973578))))

(assert (=> d!2059669 (= res!2693581 ((_ is Cons!65493) (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406352))))))))

(assert (=> d!2059669 (= (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 lt!2406352))) (h!71940 s!2326)) e!3973579)))

(declare-fun b!6564146 () Bool)

(declare-fun e!3973577 () (InoxSet Context!11646))

(assert (=> b!6564146 (= e!3973579 e!3973577)))

(declare-fun c!1206399 () Bool)

(assert (=> b!6564146 (= c!1206399 ((_ is Cons!65493) (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406352))))))))

(declare-fun b!6564147 () Bool)

(assert (=> b!6564147 (= e!3973577 call!571088)))

(declare-fun b!6564148 () Bool)

(assert (=> b!6564148 (= e!3973577 ((as const (Array Context!11646 Bool)) false))))

(assert (= (and d!2059669 res!2693581) b!6564144))

(assert (= (and d!2059669 c!1206400) b!6564145))

(assert (= (and d!2059669 (not c!1206400)) b!6564146))

(assert (= (and b!6564146 c!1206399) b!6564147))

(assert (= (and b!6564146 (not c!1206399)) b!6564148))

(assert (= (or b!6564145 b!6564147) bm!571083))

(declare-fun m!7346306 () Bool)

(assert (=> b!6564144 m!7346306))

(declare-fun m!7346308 () Bool)

(assert (=> bm!571083 m!7346308))

(declare-fun m!7346310 () Bool)

(assert (=> b!6564145 m!7346310))

(assert (=> b!6562070 d!2059669))

(declare-fun bs!1676148 () Bool)

(declare-fun d!2059671 () Bool)

(assert (= bs!1676148 (and d!2059671 d!2059453)))

(declare-fun lambda!365240 () Int)

(assert (=> bs!1676148 (= lambda!365240 lambda!365219)))

(assert (=> d!2059671 (= (nullableZipper!2184 lt!2406365) (exists!2639 lt!2406365 lambda!365240))))

(declare-fun bs!1676149 () Bool)

(assert (= bs!1676149 d!2059671))

(declare-fun m!7346312 () Bool)

(assert (=> bs!1676149 m!7346312))

(assert (=> b!6562402 d!2059671))

(declare-fun bs!1676150 () Bool)

(declare-fun b!6564157 () Bool)

(assert (= bs!1676150 (and b!6564157 d!2058817)))

(declare-fun lambda!365241 () Int)

(assert (=> bs!1676150 (not (= lambda!365241 lambda!365141))))

(declare-fun bs!1676151 () Bool)

(assert (= bs!1676151 (and b!6564157 d!2058767)))

(assert (=> bs!1676151 (not (= lambda!365241 lambda!365131))))

(declare-fun bs!1676152 () Bool)

(assert (= bs!1676152 (and b!6564157 d!2059477)))

(assert (=> bs!1676152 (not (= lambda!365241 lambda!365225))))

(declare-fun bs!1676153 () Bool)

(assert (= bs!1676153 (and b!6564157 b!6561249)))

(assert (=> bs!1676153 (not (= lambda!365241 lambda!365048))))

(declare-fun bs!1676154 () Bool)

(assert (= bs!1676154 (and b!6564157 d!2058617)))

(assert (=> bs!1676154 (not (= lambda!365241 lambda!365100))))

(declare-fun bs!1676155 () Bool)

(assert (= bs!1676155 (and b!6564157 b!6563928)))

(assert (=> bs!1676155 (= (and (= (reg!16768 (regTwo!33391 r!7292)) (reg!16768 (regOne!33391 lt!2406349))) (= (regTwo!33391 r!7292) (regOne!33391 lt!2406349))) (= lambda!365241 lambda!365231))))

(declare-fun bs!1676156 () Bool)

(assert (= bs!1676156 (and b!6564157 d!2059659)))

(assert (=> bs!1676156 (not (= lambda!365241 lambda!365239))))

(declare-fun bs!1676157 () Bool)

(assert (= bs!1676157 (and b!6564157 b!6561283)))

(assert (=> bs!1676157 (not (= lambda!365241 lambda!365041))))

(assert (=> bs!1676157 (not (= lambda!365241 lambda!365042))))

(assert (=> bs!1676151 (not (= lambda!365241 lambda!365130))))

(declare-fun bs!1676158 () Bool)

(assert (= bs!1676158 (and b!6564157 b!6562199)))

(assert (=> bs!1676158 (= (and (= (reg!16768 (regTwo!33391 r!7292)) (reg!16768 r!7292)) (= (regTwo!33391 r!7292) r!7292)) (= lambda!365241 lambda!365132))))

(declare-fun bs!1676159 () Bool)

(assert (= bs!1676159 (and b!6564157 d!2058793)))

(assert (=> bs!1676159 (not (= lambda!365241 lambda!365135))))

(declare-fun bs!1676160 () Bool)

(assert (= bs!1676160 (and b!6564157 b!6561898)))

(assert (=> bs!1676160 (not (= lambda!365241 lambda!365111))))

(assert (=> bs!1676156 (not (= lambda!365241 lambda!365238))))

(declare-fun bs!1676161 () Bool)

(assert (= bs!1676161 (and b!6564157 d!2058681)))

(assert (=> bs!1676161 (not (= lambda!365241 lambda!365116))))

(declare-fun bs!1676162 () Bool)

(assert (= bs!1676162 (and b!6564157 b!6562323)))

(assert (=> bs!1676162 (not (= lambda!365241 lambda!365140))))

(declare-fun bs!1676163 () Bool)

(assert (= bs!1676163 (and b!6564157 b!6563924)))

(assert (=> bs!1676163 (not (= lambda!365241 lambda!365232))))

(declare-fun bs!1676164 () Bool)

(assert (= bs!1676164 (and b!6564157 b!6561287)))

(assert (=> bs!1676164 (not (= lambda!365241 lambda!365047))))

(declare-fun bs!1676165 () Bool)

(assert (= bs!1676165 (and b!6564157 d!2058765)))

(assert (=> bs!1676165 (not (= lambda!365241 lambda!365129))))

(declare-fun bs!1676166 () Bool)

(assert (= bs!1676166 (and b!6564157 b!6562327)))

(assert (=> bs!1676166 (= (and (= (reg!16768 (regTwo!33391 r!7292)) (reg!16768 lt!2406396)) (= (regTwo!33391 r!7292) lt!2406396)) (= lambda!365241 lambda!365139))))

(declare-fun bs!1676167 () Bool)

(assert (= bs!1676167 (and b!6564157 b!6562195)))

(assert (=> bs!1676167 (not (= lambda!365241 lambda!365133))))

(assert (=> bs!1676159 (not (= lambda!365241 lambda!365134))))

(assert (=> bs!1676154 (not (= lambda!365241 lambda!365097))))

(declare-fun bs!1676168 () Bool)

(assert (= bs!1676168 (and b!6564157 b!6561902)))

(assert (=> bs!1676168 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (reg!16768 (regTwo!33391 r!7292)) (reg!16768 lt!2406360)) (= (regTwo!33391 r!7292) lt!2406360)) (= lambda!365241 lambda!365109))))

(assert (=> bs!1676152 (not (= lambda!365241 lambda!365226))))

(declare-fun bs!1676169 () Bool)

(assert (= bs!1676169 (and b!6564157 b!6562412)))

(assert (=> bs!1676169 (= (and (= (reg!16768 (regTwo!33391 r!7292)) (reg!16768 lt!2406349)) (= (regTwo!33391 r!7292) lt!2406349)) (= lambda!365241 lambda!365150))))

(declare-fun bs!1676170 () Bool)

(assert (= bs!1676170 (and b!6564157 b!6562408)))

(assert (=> bs!1676170 (not (= lambda!365241 lambda!365151))))

(declare-fun bs!1676171 () Bool)

(assert (= bs!1676171 (and b!6564157 b!6563956)))

(assert (=> bs!1676171 (= (and (= (reg!16768 (regTwo!33391 r!7292)) (reg!16768 (regOne!33391 r!7292))) (= (regTwo!33391 r!7292) (regOne!33391 r!7292))) (= lambda!365241 lambda!365234))))

(assert (=> bs!1676164 (not (= lambda!365241 lambda!365046))))

(declare-fun bs!1676172 () Bool)

(assert (= bs!1676172 (and b!6564157 b!6563952)))

(assert (=> bs!1676172 (not (= lambda!365241 lambda!365235))))

(assert (=> bs!1676153 (not (= lambda!365241 lambda!365049))))

(assert (=> b!6564157 true))

(assert (=> b!6564157 true))

(declare-fun bs!1676173 () Bool)

(declare-fun b!6564153 () Bool)

(assert (= bs!1676173 (and b!6564153 d!2058817)))

(declare-fun lambda!365242 () Int)

(assert (=> bs!1676173 (not (= lambda!365242 lambda!365141))))

(declare-fun bs!1676174 () Bool)

(assert (= bs!1676174 (and b!6564153 b!6564157)))

(assert (=> bs!1676174 (not (= lambda!365242 lambda!365241))))

(declare-fun bs!1676175 () Bool)

(assert (= bs!1676175 (and b!6564153 d!2058767)))

(assert (=> bs!1676175 (= (and (= (regOne!33390 (regTwo!33391 r!7292)) (regOne!33390 r!7292)) (= (regTwo!33390 (regTwo!33391 r!7292)) (regTwo!33390 r!7292))) (= lambda!365242 lambda!365131))))

(declare-fun bs!1676176 () Bool)

(assert (= bs!1676176 (and b!6564153 d!2059477)))

(assert (=> bs!1676176 (not (= lambda!365242 lambda!365225))))

(declare-fun bs!1676177 () Bool)

(assert (= bs!1676177 (and b!6564153 b!6561249)))

(assert (=> bs!1676177 (not (= lambda!365242 lambda!365048))))

(declare-fun bs!1676178 () Bool)

(assert (= bs!1676178 (and b!6564153 d!2058617)))

(assert (=> bs!1676178 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regTwo!33391 r!7292)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regTwo!33391 r!7292)) lt!2406358)) (= lambda!365242 lambda!365100))))

(declare-fun bs!1676179 () Bool)

(assert (= bs!1676179 (and b!6564153 b!6563928)))

(assert (=> bs!1676179 (not (= lambda!365242 lambda!365231))))

(declare-fun bs!1676180 () Bool)

(assert (= bs!1676180 (and b!6564153 d!2059659)))

(assert (=> bs!1676180 (= (and (= (regOne!33390 (regTwo!33391 r!7292)) lt!2406360) (= (regTwo!33390 (regTwo!33391 r!7292)) (regTwo!33390 r!7292))) (= lambda!365242 lambda!365239))))

(declare-fun bs!1676181 () Bool)

(assert (= bs!1676181 (and b!6564153 b!6561283)))

(assert (=> bs!1676181 (not (= lambda!365242 lambda!365041))))

(assert (=> bs!1676181 (= (and (= (regOne!33390 (regTwo!33391 r!7292)) (regOne!33390 r!7292)) (= (regTwo!33390 (regTwo!33391 r!7292)) (regTwo!33390 r!7292))) (= lambda!365242 lambda!365042))))

(assert (=> bs!1676175 (not (= lambda!365242 lambda!365130))))

(declare-fun bs!1676182 () Bool)

(assert (= bs!1676182 (and b!6564153 b!6562199)))

(assert (=> bs!1676182 (not (= lambda!365242 lambda!365132))))

(declare-fun bs!1676183 () Bool)

(assert (= bs!1676183 (and b!6564153 d!2058793)))

(assert (=> bs!1676183 (= (and (= (regOne!33390 (regTwo!33391 r!7292)) lt!2406360) (= (regTwo!33390 (regTwo!33391 r!7292)) (regTwo!33390 r!7292))) (= lambda!365242 lambda!365135))))

(declare-fun bs!1676184 () Bool)

(assert (= bs!1676184 (and b!6564153 b!6561898)))

(assert (=> bs!1676184 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regTwo!33391 r!7292)) (regOne!33390 lt!2406360)) (= (regTwo!33390 (regTwo!33391 r!7292)) (regTwo!33390 lt!2406360))) (= lambda!365242 lambda!365111))))

(assert (=> bs!1676180 (not (= lambda!365242 lambda!365238))))

(declare-fun bs!1676185 () Bool)

(assert (= bs!1676185 (and b!6564153 d!2058681)))

(assert (=> bs!1676185 (not (= lambda!365242 lambda!365116))))

(declare-fun bs!1676186 () Bool)

(assert (= bs!1676186 (and b!6564153 b!6562323)))

(assert (=> bs!1676186 (= (and (= (regOne!33390 (regTwo!33391 r!7292)) (regOne!33390 lt!2406396)) (= (regTwo!33390 (regTwo!33391 r!7292)) (regTwo!33390 lt!2406396))) (= lambda!365242 lambda!365140))))

(declare-fun bs!1676187 () Bool)

(assert (= bs!1676187 (and b!6564153 b!6563924)))

(assert (=> bs!1676187 (= (and (= (regOne!33390 (regTwo!33391 r!7292)) (regOne!33390 (regOne!33391 lt!2406349))) (= (regTwo!33390 (regTwo!33391 r!7292)) (regTwo!33390 (regOne!33391 lt!2406349)))) (= lambda!365242 lambda!365232))))

(declare-fun bs!1676188 () Bool)

(assert (= bs!1676188 (and b!6564153 b!6561287)))

(assert (=> bs!1676188 (= (and (= (regOne!33390 (regTwo!33391 r!7292)) lt!2406360) (= (regTwo!33390 (regTwo!33391 r!7292)) (regTwo!33390 r!7292))) (= lambda!365242 lambda!365047))))

(declare-fun bs!1676189 () Bool)

(assert (= bs!1676189 (and b!6564153 d!2058765)))

(assert (=> bs!1676189 (not (= lambda!365242 lambda!365129))))

(declare-fun bs!1676190 () Bool)

(assert (= bs!1676190 (and b!6564153 b!6562327)))

(assert (=> bs!1676190 (not (= lambda!365242 lambda!365139))))

(declare-fun bs!1676191 () Bool)

(assert (= bs!1676191 (and b!6564153 b!6562195)))

(assert (=> bs!1676191 (= (and (= (regOne!33390 (regTwo!33391 r!7292)) (regOne!33390 r!7292)) (= (regTwo!33390 (regTwo!33391 r!7292)) (regTwo!33390 r!7292))) (= lambda!365242 lambda!365133))))

(assert (=> bs!1676183 (not (= lambda!365242 lambda!365134))))

(assert (=> bs!1676178 (not (= lambda!365242 lambda!365097))))

(declare-fun bs!1676192 () Bool)

(assert (= bs!1676192 (and b!6564153 b!6561902)))

(assert (=> bs!1676192 (not (= lambda!365242 lambda!365109))))

(assert (=> bs!1676176 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regTwo!33391 r!7292)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regTwo!33391 r!7292)) lt!2406358)) (= lambda!365242 lambda!365226))))

(declare-fun bs!1676193 () Bool)

(assert (= bs!1676193 (and b!6564153 b!6562412)))

(assert (=> bs!1676193 (not (= lambda!365242 lambda!365150))))

(declare-fun bs!1676194 () Bool)

(assert (= bs!1676194 (and b!6564153 b!6562408)))

(assert (=> bs!1676194 (= (and (= (regOne!33390 (regTwo!33391 r!7292)) (regOne!33390 lt!2406349)) (= (regTwo!33390 (regTwo!33391 r!7292)) (regTwo!33390 lt!2406349))) (= lambda!365242 lambda!365151))))

(declare-fun bs!1676195 () Bool)

(assert (= bs!1676195 (and b!6564153 b!6563956)))

(assert (=> bs!1676195 (not (= lambda!365242 lambda!365234))))

(assert (=> bs!1676188 (not (= lambda!365242 lambda!365046))))

(declare-fun bs!1676196 () Bool)

(assert (= bs!1676196 (and b!6564153 b!6563952)))

(assert (=> bs!1676196 (= (and (= (regOne!33390 (regTwo!33391 r!7292)) (regOne!33390 (regOne!33391 r!7292))) (= (regTwo!33390 (regTwo!33391 r!7292)) (regTwo!33390 (regOne!33391 r!7292)))) (= lambda!365242 lambda!365235))))

(assert (=> bs!1676177 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regTwo!33391 r!7292)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regTwo!33391 r!7292)) lt!2406358)) (= lambda!365242 lambda!365049))))

(assert (=> b!6564153 true))

(assert (=> b!6564153 true))

(declare-fun b!6564149 () Bool)

(declare-fun c!1206404 () Bool)

(assert (=> b!6564149 (= c!1206404 ((_ is ElementMatch!16439) (regTwo!33391 r!7292)))))

(declare-fun e!3973583 () Bool)

(declare-fun e!3973585 () Bool)

(assert (=> b!6564149 (= e!3973583 e!3973585)))

(declare-fun b!6564150 () Bool)

(declare-fun res!2693583 () Bool)

(declare-fun e!3973586 () Bool)

(assert (=> b!6564150 (=> res!2693583 e!3973586)))

(declare-fun call!571090 () Bool)

(assert (=> b!6564150 (= res!2693583 call!571090)))

(declare-fun e!3973582 () Bool)

(assert (=> b!6564150 (= e!3973582 e!3973586)))

(declare-fun b!6564151 () Bool)

(declare-fun e!3973580 () Bool)

(declare-fun e!3973581 () Bool)

(assert (=> b!6564151 (= e!3973580 e!3973581)))

(declare-fun res!2693584 () Bool)

(assert (=> b!6564151 (= res!2693584 (matchRSpec!3540 (regOne!33391 (regTwo!33391 r!7292)) s!2326))))

(assert (=> b!6564151 (=> res!2693584 e!3973581)))

(declare-fun b!6564152 () Bool)

(declare-fun e!3973584 () Bool)

(assert (=> b!6564152 (= e!3973584 call!571090)))

(declare-fun call!571089 () Bool)

(assert (=> b!6564153 (= e!3973582 call!571089)))

(declare-fun b!6564154 () Bool)

(assert (=> b!6564154 (= e!3973585 (= s!2326 (Cons!65492 (c!1205620 (regTwo!33391 r!7292)) Nil!65492)))))

(declare-fun bm!571084 () Bool)

(assert (=> bm!571084 (= call!571090 (isEmpty!37737 s!2326))))

(declare-fun b!6564155 () Bool)

(declare-fun c!1206401 () Bool)

(assert (=> b!6564155 (= c!1206401 ((_ is Union!16439) (regTwo!33391 r!7292)))))

(assert (=> b!6564155 (= e!3973585 e!3973580)))

(declare-fun b!6564156 () Bool)

(assert (=> b!6564156 (= e!3973580 e!3973582)))

(declare-fun c!1206402 () Bool)

(assert (=> b!6564156 (= c!1206402 ((_ is Star!16439) (regTwo!33391 r!7292)))))

(declare-fun d!2059673 () Bool)

(declare-fun c!1206403 () Bool)

(assert (=> d!2059673 (= c!1206403 ((_ is EmptyExpr!16439) (regTwo!33391 r!7292)))))

(assert (=> d!2059673 (= (matchRSpec!3540 (regTwo!33391 r!7292) s!2326) e!3973584)))

(assert (=> b!6564157 (= e!3973586 call!571089)))

(declare-fun b!6564158 () Bool)

(assert (=> b!6564158 (= e!3973584 e!3973583)))

(declare-fun res!2693582 () Bool)

(assert (=> b!6564158 (= res!2693582 (not ((_ is EmptyLang!16439) (regTwo!33391 r!7292))))))

(assert (=> b!6564158 (=> (not res!2693582) (not e!3973583))))

(declare-fun b!6564159 () Bool)

(assert (=> b!6564159 (= e!3973581 (matchRSpec!3540 (regTwo!33391 (regTwo!33391 r!7292)) s!2326))))

(declare-fun bm!571085 () Bool)

(assert (=> bm!571085 (= call!571089 (Exists!3509 (ite c!1206402 lambda!365241 lambda!365242)))))

(assert (= (and d!2059673 c!1206403) b!6564152))

(assert (= (and d!2059673 (not c!1206403)) b!6564158))

(assert (= (and b!6564158 res!2693582) b!6564149))

(assert (= (and b!6564149 c!1206404) b!6564154))

(assert (= (and b!6564149 (not c!1206404)) b!6564155))

(assert (= (and b!6564155 c!1206401) b!6564151))

(assert (= (and b!6564155 (not c!1206401)) b!6564156))

(assert (= (and b!6564151 (not res!2693584)) b!6564159))

(assert (= (and b!6564156 c!1206402) b!6564150))

(assert (= (and b!6564156 (not c!1206402)) b!6564153))

(assert (= (and b!6564150 (not res!2693583)) b!6564157))

(assert (= (or b!6564157 b!6564153) bm!571085))

(assert (= (or b!6564152 b!6564150) bm!571084))

(declare-fun m!7346314 () Bool)

(assert (=> b!6564151 m!7346314))

(assert (=> bm!571084 m!7343766))

(declare-fun m!7346316 () Bool)

(assert (=> b!6564159 m!7346316))

(declare-fun m!7346318 () Bool)

(assert (=> bm!571085 m!7346318))

(assert (=> b!6562201 d!2059673))

(declare-fun b!6564160 () Bool)

(declare-fun e!3973589 () Bool)

(declare-fun e!3973592 () Bool)

(assert (=> b!6564160 (= e!3973589 e!3973592)))

(declare-fun res!2693591 () Bool)

(assert (=> b!6564160 (=> (not res!2693591) (not e!3973592))))

(declare-fun lt!2406731 () Bool)

(assert (=> b!6564160 (= res!2693591 (not lt!2406731))))

(declare-fun b!6564161 () Bool)

(declare-fun res!2693588 () Bool)

(declare-fun e!3973591 () Bool)

(assert (=> b!6564161 (=> res!2693588 e!3973591)))

(assert (=> b!6564161 (= res!2693588 (not (isEmpty!37737 (tail!12414 (_1!36721 lt!2406397)))))))

(declare-fun b!6564162 () Bool)

(declare-fun e!3973587 () Bool)

(declare-fun call!571091 () Bool)

(assert (=> b!6564162 (= e!3973587 (= lt!2406731 call!571091))))

(declare-fun b!6564164 () Bool)

(declare-fun res!2693587 () Bool)

(declare-fun e!3973590 () Bool)

(assert (=> b!6564164 (=> (not res!2693587) (not e!3973590))))

(assert (=> b!6564164 (= res!2693587 (isEmpty!37737 (tail!12414 (_1!36721 lt!2406397))))))

(declare-fun b!6564165 () Bool)

(assert (=> b!6564165 (= e!3973590 (= (head!13329 (_1!36721 lt!2406397)) (c!1205620 lt!2406358)))))

(declare-fun b!6564166 () Bool)

(declare-fun res!2693589 () Bool)

(assert (=> b!6564166 (=> res!2693589 e!3973589)))

(assert (=> b!6564166 (= res!2693589 e!3973590)))

(declare-fun res!2693585 () Bool)

(assert (=> b!6564166 (=> (not res!2693585) (not e!3973590))))

(assert (=> b!6564166 (= res!2693585 lt!2406731)))

(declare-fun b!6564167 () Bool)

(declare-fun e!3973593 () Bool)

(assert (=> b!6564167 (= e!3973593 (not lt!2406731))))

(declare-fun b!6564168 () Bool)

(declare-fun res!2693592 () Bool)

(assert (=> b!6564168 (=> (not res!2693592) (not e!3973590))))

(assert (=> b!6564168 (= res!2693592 (not call!571091))))

(declare-fun b!6564169 () Bool)

(assert (=> b!6564169 (= e!3973592 e!3973591)))

(declare-fun res!2693586 () Bool)

(assert (=> b!6564169 (=> res!2693586 e!3973591)))

(assert (=> b!6564169 (= res!2693586 call!571091)))

(declare-fun b!6564170 () Bool)

(declare-fun e!3973588 () Bool)

(assert (=> b!6564170 (= e!3973588 (nullable!6432 lt!2406358))))

(declare-fun bm!571086 () Bool)

(assert (=> bm!571086 (= call!571091 (isEmpty!37737 (_1!36721 lt!2406397)))))

(declare-fun b!6564171 () Bool)

(assert (=> b!6564171 (= e!3973587 e!3973593)))

(declare-fun c!1206405 () Bool)

(assert (=> b!6564171 (= c!1206405 ((_ is EmptyLang!16439) lt!2406358))))

(declare-fun b!6564172 () Bool)

(declare-fun res!2693590 () Bool)

(assert (=> b!6564172 (=> res!2693590 e!3973589)))

(assert (=> b!6564172 (= res!2693590 (not ((_ is ElementMatch!16439) lt!2406358)))))

(assert (=> b!6564172 (= e!3973593 e!3973589)))

(declare-fun b!6564173 () Bool)

(assert (=> b!6564173 (= e!3973588 (matchR!8622 (derivativeStep!5123 lt!2406358 (head!13329 (_1!36721 lt!2406397))) (tail!12414 (_1!36721 lt!2406397))))))

(declare-fun d!2059675 () Bool)

(assert (=> d!2059675 e!3973587))

(declare-fun c!1206407 () Bool)

(assert (=> d!2059675 (= c!1206407 ((_ is EmptyExpr!16439) lt!2406358))))

(assert (=> d!2059675 (= lt!2406731 e!3973588)))

(declare-fun c!1206406 () Bool)

(assert (=> d!2059675 (= c!1206406 (isEmpty!37737 (_1!36721 lt!2406397)))))

(assert (=> d!2059675 (validRegex!8175 lt!2406358)))

(assert (=> d!2059675 (= (matchR!8622 lt!2406358 (_1!36721 lt!2406397)) lt!2406731)))

(declare-fun b!6564163 () Bool)

(assert (=> b!6564163 (= e!3973591 (not (= (head!13329 (_1!36721 lt!2406397)) (c!1205620 lt!2406358))))))

(assert (= (and d!2059675 c!1206406) b!6564170))

(assert (= (and d!2059675 (not c!1206406)) b!6564173))

(assert (= (and d!2059675 c!1206407) b!6564162))

(assert (= (and d!2059675 (not c!1206407)) b!6564171))

(assert (= (and b!6564171 c!1206405) b!6564167))

(assert (= (and b!6564171 (not c!1206405)) b!6564172))

(assert (= (and b!6564172 (not res!2693590)) b!6564166))

(assert (= (and b!6564166 res!2693585) b!6564168))

(assert (= (and b!6564168 res!2693592) b!6564164))

(assert (= (and b!6564164 res!2693587) b!6564165))

(assert (= (and b!6564166 (not res!2693589)) b!6564160))

(assert (= (and b!6564160 res!2693591) b!6564169))

(assert (= (and b!6564169 (not res!2693586)) b!6564161))

(assert (= (and b!6564161 (not res!2693588)) b!6564163))

(assert (= (or b!6564162 b!6564168 b!6564169) bm!571086))

(assert (=> bm!571086 m!7343974))

(assert (=> d!2059675 m!7343974))

(assert (=> d!2059675 m!7344384))

(assert (=> b!6564164 m!7344416))

(assert (=> b!6564164 m!7344416))

(assert (=> b!6564164 m!7344418))

(assert (=> b!6564165 m!7344420))

(assert (=> b!6564163 m!7344420))

(assert (=> b!6564161 m!7344416))

(assert (=> b!6564161 m!7344416))

(assert (=> b!6564161 m!7344418))

(declare-fun m!7346320 () Bool)

(assert (=> b!6564170 m!7346320))

(assert (=> b!6564173 m!7344420))

(assert (=> b!6564173 m!7344420))

(declare-fun m!7346322 () Bool)

(assert (=> b!6564173 m!7346322))

(assert (=> b!6564173 m!7344416))

(assert (=> b!6564173 m!7346322))

(assert (=> b!6564173 m!7344416))

(declare-fun m!7346324 () Bool)

(assert (=> b!6564173 m!7346324))

(assert (=> b!6561999 d!2059675))

(declare-fun b!6564174 () Bool)

(declare-fun e!3973596 () Bool)

(declare-fun e!3973599 () Bool)

(assert (=> b!6564174 (= e!3973596 e!3973599)))

(declare-fun res!2693599 () Bool)

(assert (=> b!6564174 (=> (not res!2693599) (not e!3973599))))

(declare-fun lt!2406732 () Bool)

(assert (=> b!6564174 (= res!2693599 (not lt!2406732))))

(declare-fun b!6564175 () Bool)

(declare-fun res!2693596 () Bool)

(declare-fun e!3973598 () Bool)

(assert (=> b!6564175 (=> res!2693596 e!3973598)))

(assert (=> b!6564175 (= res!2693596 (not (isEmpty!37737 (tail!12414 (tail!12414 (_1!36721 lt!2406377))))))))

(declare-fun b!6564176 () Bool)

(declare-fun e!3973594 () Bool)

(declare-fun call!571092 () Bool)

(assert (=> b!6564176 (= e!3973594 (= lt!2406732 call!571092))))

(declare-fun b!6564178 () Bool)

(declare-fun res!2693595 () Bool)

(declare-fun e!3973597 () Bool)

(assert (=> b!6564178 (=> (not res!2693595) (not e!3973597))))

(assert (=> b!6564178 (= res!2693595 (isEmpty!37737 (tail!12414 (tail!12414 (_1!36721 lt!2406377)))))))

(declare-fun b!6564179 () Bool)

(assert (=> b!6564179 (= e!3973597 (= (head!13329 (tail!12414 (_1!36721 lt!2406377))) (c!1205620 (derivativeStep!5123 (reg!16768 (regOne!33390 r!7292)) (head!13329 (_1!36721 lt!2406377))))))))

(declare-fun b!6564180 () Bool)

(declare-fun res!2693597 () Bool)

(assert (=> b!6564180 (=> res!2693597 e!3973596)))

(assert (=> b!6564180 (= res!2693597 e!3973597)))

(declare-fun res!2693593 () Bool)

(assert (=> b!6564180 (=> (not res!2693593) (not e!3973597))))

(assert (=> b!6564180 (= res!2693593 lt!2406732)))

(declare-fun b!6564181 () Bool)

(declare-fun e!3973600 () Bool)

(assert (=> b!6564181 (= e!3973600 (not lt!2406732))))

(declare-fun b!6564182 () Bool)

(declare-fun res!2693600 () Bool)

(assert (=> b!6564182 (=> (not res!2693600) (not e!3973597))))

(assert (=> b!6564182 (= res!2693600 (not call!571092))))

(declare-fun b!6564183 () Bool)

(assert (=> b!6564183 (= e!3973599 e!3973598)))

(declare-fun res!2693594 () Bool)

(assert (=> b!6564183 (=> res!2693594 e!3973598)))

(assert (=> b!6564183 (= res!2693594 call!571092)))

(declare-fun b!6564184 () Bool)

(declare-fun e!3973595 () Bool)

(assert (=> b!6564184 (= e!3973595 (nullable!6432 (derivativeStep!5123 (reg!16768 (regOne!33390 r!7292)) (head!13329 (_1!36721 lt!2406377)))))))

(declare-fun bm!571087 () Bool)

(assert (=> bm!571087 (= call!571092 (isEmpty!37737 (tail!12414 (_1!36721 lt!2406377))))))

(declare-fun b!6564185 () Bool)

(assert (=> b!6564185 (= e!3973594 e!3973600)))

(declare-fun c!1206408 () Bool)

(assert (=> b!6564185 (= c!1206408 ((_ is EmptyLang!16439) (derivativeStep!5123 (reg!16768 (regOne!33390 r!7292)) (head!13329 (_1!36721 lt!2406377)))))))

(declare-fun b!6564186 () Bool)

(declare-fun res!2693598 () Bool)

(assert (=> b!6564186 (=> res!2693598 e!3973596)))

(assert (=> b!6564186 (= res!2693598 (not ((_ is ElementMatch!16439) (derivativeStep!5123 (reg!16768 (regOne!33390 r!7292)) (head!13329 (_1!36721 lt!2406377))))))))

(assert (=> b!6564186 (= e!3973600 e!3973596)))

(declare-fun b!6564187 () Bool)

(assert (=> b!6564187 (= e!3973595 (matchR!8622 (derivativeStep!5123 (derivativeStep!5123 (reg!16768 (regOne!33390 r!7292)) (head!13329 (_1!36721 lt!2406377))) (head!13329 (tail!12414 (_1!36721 lt!2406377)))) (tail!12414 (tail!12414 (_1!36721 lt!2406377)))))))

(declare-fun d!2059677 () Bool)

(assert (=> d!2059677 e!3973594))

(declare-fun c!1206410 () Bool)

(assert (=> d!2059677 (= c!1206410 ((_ is EmptyExpr!16439) (derivativeStep!5123 (reg!16768 (regOne!33390 r!7292)) (head!13329 (_1!36721 lt!2406377)))))))

(assert (=> d!2059677 (= lt!2406732 e!3973595)))

(declare-fun c!1206409 () Bool)

(assert (=> d!2059677 (= c!1206409 (isEmpty!37737 (tail!12414 (_1!36721 lt!2406377))))))

(assert (=> d!2059677 (validRegex!8175 (derivativeStep!5123 (reg!16768 (regOne!33390 r!7292)) (head!13329 (_1!36721 lt!2406377))))))

(assert (=> d!2059677 (= (matchR!8622 (derivativeStep!5123 (reg!16768 (regOne!33390 r!7292)) (head!13329 (_1!36721 lt!2406377))) (tail!12414 (_1!36721 lt!2406377))) lt!2406732)))

(declare-fun b!6564177 () Bool)

(assert (=> b!6564177 (= e!3973598 (not (= (head!13329 (tail!12414 (_1!36721 lt!2406377))) (c!1205620 (derivativeStep!5123 (reg!16768 (regOne!33390 r!7292)) (head!13329 (_1!36721 lt!2406377)))))))))

(assert (= (and d!2059677 c!1206409) b!6564184))

(assert (= (and d!2059677 (not c!1206409)) b!6564187))

(assert (= (and d!2059677 c!1206410) b!6564176))

(assert (= (and d!2059677 (not c!1206410)) b!6564185))

(assert (= (and b!6564185 c!1206408) b!6564181))

(assert (= (and b!6564185 (not c!1206408)) b!6564186))

(assert (= (and b!6564186 (not res!2693598)) b!6564180))

(assert (= (and b!6564180 res!2693593) b!6564182))

(assert (= (and b!6564182 res!2693600) b!6564178))

(assert (= (and b!6564178 res!2693595) b!6564179))

(assert (= (and b!6564180 (not res!2693597)) b!6564174))

(assert (= (and b!6564174 res!2693599) b!6564183))

(assert (= (and b!6564183 (not res!2693594)) b!6564175))

(assert (= (and b!6564175 (not res!2693596)) b!6564177))

(assert (= (or b!6564176 b!6564182 b!6564183) bm!571087))

(assert (=> bm!571087 m!7344322))

(assert (=> bm!571087 m!7344324))

(assert (=> d!2059677 m!7344322))

(assert (=> d!2059677 m!7344324))

(assert (=> d!2059677 m!7344328))

(declare-fun m!7346326 () Bool)

(assert (=> d!2059677 m!7346326))

(assert (=> b!6564178 m!7344322))

(assert (=> b!6564178 m!7345834))

(assert (=> b!6564178 m!7345834))

(declare-fun m!7346328 () Bool)

(assert (=> b!6564178 m!7346328))

(assert (=> b!6564179 m!7344322))

(assert (=> b!6564179 m!7345830))

(assert (=> b!6564177 m!7344322))

(assert (=> b!6564177 m!7345830))

(assert (=> b!6564175 m!7344322))

(assert (=> b!6564175 m!7345834))

(assert (=> b!6564175 m!7345834))

(assert (=> b!6564175 m!7346328))

(assert (=> b!6564184 m!7344328))

(declare-fun m!7346330 () Bool)

(assert (=> b!6564184 m!7346330))

(assert (=> b!6564187 m!7344322))

(assert (=> b!6564187 m!7345830))

(assert (=> b!6564187 m!7344328))

(assert (=> b!6564187 m!7345830))

(declare-fun m!7346332 () Bool)

(assert (=> b!6564187 m!7346332))

(assert (=> b!6564187 m!7344322))

(assert (=> b!6564187 m!7345834))

(assert (=> b!6564187 m!7346332))

(assert (=> b!6564187 m!7345834))

(declare-fun m!7346334 () Bool)

(assert (=> b!6564187 m!7346334))

(assert (=> b!6562301 d!2059677))

(declare-fun bm!571088 () Bool)

(declare-fun call!571094 () Regex!16439)

(declare-fun call!571093 () Regex!16439)

(assert (=> bm!571088 (= call!571094 call!571093)))

(declare-fun e!3973604 () Regex!16439)

(declare-fun call!571095 () Regex!16439)

(declare-fun b!6564189 () Bool)

(assert (=> b!6564189 (= e!3973604 (Union!16439 (Concat!25284 call!571095 (regTwo!33390 (reg!16768 (regOne!33390 r!7292)))) call!571094))))

(declare-fun bm!571089 () Bool)

(declare-fun c!1206413 () Bool)

(assert (=> bm!571089 (= call!571095 (derivativeStep!5123 (ite c!1206413 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292)))) (head!13329 (_1!36721 lt!2406377))))))

(declare-fun b!6564190 () Bool)

(declare-fun e!3973605 () Regex!16439)

(assert (=> b!6564190 (= e!3973605 EmptyLang!16439)))

(declare-fun b!6564191 () Bool)

(declare-fun e!3973603 () Regex!16439)

(assert (=> b!6564191 (= e!3973603 (ite (= (head!13329 (_1!36721 lt!2406377)) (c!1205620 (reg!16768 (regOne!33390 r!7292)))) EmptyExpr!16439 EmptyLang!16439))))

(declare-fun b!6564192 () Bool)

(declare-fun c!1206415 () Bool)

(assert (=> b!6564192 (= c!1206415 (nullable!6432 (regOne!33390 (reg!16768 (regOne!33390 r!7292)))))))

(declare-fun e!3973601 () Regex!16439)

(assert (=> b!6564192 (= e!3973601 e!3973604)))

(declare-fun b!6564193 () Bool)

(assert (=> b!6564193 (= c!1206413 ((_ is Union!16439) (reg!16768 (regOne!33390 r!7292))))))

(declare-fun e!3973602 () Regex!16439)

(assert (=> b!6564193 (= e!3973603 e!3973602)))

(declare-fun bm!571090 () Bool)

(declare-fun c!1206414 () Bool)

(declare-fun call!571096 () Regex!16439)

(assert (=> bm!571090 (= call!571096 (derivativeStep!5123 (ite c!1206413 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (ite c!1206414 (reg!16768 (reg!16768 (regOne!33390 r!7292))) (ite c!1206415 (regTwo!33390 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292)))))) (head!13329 (_1!36721 lt!2406377))))))

(declare-fun b!6564194 () Bool)

(assert (=> b!6564194 (= e!3973604 (Union!16439 (Concat!25284 call!571094 (regTwo!33390 (reg!16768 (regOne!33390 r!7292)))) EmptyLang!16439))))

(declare-fun b!6564188 () Bool)

(assert (=> b!6564188 (= e!3973601 (Concat!25284 call!571093 (reg!16768 (regOne!33390 r!7292))))))

(declare-fun d!2059679 () Bool)

(declare-fun lt!2406733 () Regex!16439)

(assert (=> d!2059679 (validRegex!8175 lt!2406733)))

(assert (=> d!2059679 (= lt!2406733 e!3973605)))

(declare-fun c!1206411 () Bool)

(assert (=> d!2059679 (= c!1206411 (or ((_ is EmptyExpr!16439) (reg!16768 (regOne!33390 r!7292))) ((_ is EmptyLang!16439) (reg!16768 (regOne!33390 r!7292)))))))

(assert (=> d!2059679 (validRegex!8175 (reg!16768 (regOne!33390 r!7292)))))

(assert (=> d!2059679 (= (derivativeStep!5123 (reg!16768 (regOne!33390 r!7292)) (head!13329 (_1!36721 lt!2406377))) lt!2406733)))

(declare-fun b!6564195 () Bool)

(assert (=> b!6564195 (= e!3973602 (Union!16439 call!571095 call!571096))))

(declare-fun b!6564196 () Bool)

(assert (=> b!6564196 (= e!3973602 e!3973601)))

(assert (=> b!6564196 (= c!1206414 ((_ is Star!16439) (reg!16768 (regOne!33390 r!7292))))))

(declare-fun b!6564197 () Bool)

(assert (=> b!6564197 (= e!3973605 e!3973603)))

(declare-fun c!1206412 () Bool)

(assert (=> b!6564197 (= c!1206412 ((_ is ElementMatch!16439) (reg!16768 (regOne!33390 r!7292))))))

(declare-fun bm!571091 () Bool)

(assert (=> bm!571091 (= call!571093 call!571096)))

(assert (= (and d!2059679 c!1206411) b!6564190))

(assert (= (and d!2059679 (not c!1206411)) b!6564197))

(assert (= (and b!6564197 c!1206412) b!6564191))

(assert (= (and b!6564197 (not c!1206412)) b!6564193))

(assert (= (and b!6564193 c!1206413) b!6564195))

(assert (= (and b!6564193 (not c!1206413)) b!6564196))

(assert (= (and b!6564196 c!1206414) b!6564188))

(assert (= (and b!6564196 (not c!1206414)) b!6564192))

(assert (= (and b!6564192 c!1206415) b!6564189))

(assert (= (and b!6564192 (not c!1206415)) b!6564194))

(assert (= (or b!6564189 b!6564194) bm!571088))

(assert (= (or b!6564188 bm!571088) bm!571091))

(assert (= (or b!6564195 bm!571091) bm!571090))

(assert (= (or b!6564195 b!6564189) bm!571089))

(assert (=> bm!571089 m!7344326))

(declare-fun m!7346336 () Bool)

(assert (=> bm!571089 m!7346336))

(assert (=> b!6564192 m!7344144))

(assert (=> bm!571090 m!7344326))

(declare-fun m!7346338 () Bool)

(assert (=> bm!571090 m!7346338))

(declare-fun m!7346340 () Bool)

(assert (=> d!2059679 m!7346340))

(assert (=> d!2059679 m!7343212))

(assert (=> b!6562301 d!2059679))

(assert (=> b!6562301 d!2059465))

(assert (=> b!6562301 d!2059467))

(declare-fun b!6564198 () Bool)

(declare-fun e!3973607 () List!65616)

(assert (=> b!6564198 (= e!3973607 (t!379258 (_1!36721 lt!2406397)))))

(declare-fun b!6564201 () Bool)

(declare-fun e!3973606 () Bool)

(declare-fun lt!2406734 () List!65616)

(assert (=> b!6564201 (= e!3973606 (or (not (= (t!379258 (_1!36721 lt!2406397)) Nil!65492)) (= lt!2406734 (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492)))))))

(declare-fun d!2059681 () Bool)

(assert (=> d!2059681 e!3973606))

(declare-fun res!2693601 () Bool)

(assert (=> d!2059681 (=> (not res!2693601) (not e!3973606))))

(assert (=> d!2059681 (= res!2693601 (= (content!12598 lt!2406734) ((_ map or) (content!12598 (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492))) (content!12598 (t!379258 (_1!36721 lt!2406397))))))))

(assert (=> d!2059681 (= lt!2406734 e!3973607)))

(declare-fun c!1206416 () Bool)

(assert (=> d!2059681 (= c!1206416 ((_ is Nil!65492) (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492))))))

(assert (=> d!2059681 (= (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492)) (t!379258 (_1!36721 lt!2406397))) lt!2406734)))

(declare-fun b!6564199 () Bool)

(assert (=> b!6564199 (= e!3973607 (Cons!65492 (h!71940 (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492))) (++!14580 (t!379258 (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492))) (t!379258 (_1!36721 lt!2406397)))))))

(declare-fun b!6564200 () Bool)

(declare-fun res!2693602 () Bool)

(assert (=> b!6564200 (=> (not res!2693602) (not e!3973606))))

(assert (=> b!6564200 (= res!2693602 (= (size!40527 lt!2406734) (+ (size!40527 (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492))) (size!40527 (t!379258 (_1!36721 lt!2406397))))))))

(assert (= (and d!2059681 c!1206416) b!6564198))

(assert (= (and d!2059681 (not c!1206416)) b!6564199))

(assert (= (and d!2059681 res!2693601) b!6564200))

(assert (= (and b!6564200 res!2693602) b!6564201))

(declare-fun m!7346342 () Bool)

(assert (=> d!2059681 m!7346342))

(assert (=> d!2059681 m!7344064))

(declare-fun m!7346344 () Bool)

(assert (=> d!2059681 m!7346344))

(declare-fun m!7346346 () Bool)

(assert (=> d!2059681 m!7346346))

(declare-fun m!7346348 () Bool)

(assert (=> b!6564199 m!7346348))

(declare-fun m!7346350 () Bool)

(assert (=> b!6564200 m!7346350))

(assert (=> b!6564200 m!7344064))

(declare-fun m!7346352 () Bool)

(assert (=> b!6564200 m!7346352))

(declare-fun m!7346354 () Bool)

(assert (=> b!6564200 m!7346354))

(assert (=> b!6561993 d!2059681))

(declare-fun b!6564202 () Bool)

(declare-fun e!3973609 () List!65616)

(assert (=> b!6564202 (= e!3973609 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492))))

(declare-fun b!6564205 () Bool)

(declare-fun e!3973608 () Bool)

(declare-fun lt!2406735 () List!65616)

(assert (=> b!6564205 (= e!3973608 (or (not (= (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492) Nil!65492)) (= lt!2406735 Nil!65492)))))

(declare-fun d!2059683 () Bool)

(assert (=> d!2059683 e!3973608))

(declare-fun res!2693603 () Bool)

(assert (=> d!2059683 (=> (not res!2693603) (not e!3973608))))

(assert (=> d!2059683 (= res!2693603 (= (content!12598 lt!2406735) ((_ map or) (content!12598 Nil!65492) (content!12598 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492)))))))

(assert (=> d!2059683 (= lt!2406735 e!3973609)))

(declare-fun c!1206417 () Bool)

(assert (=> d!2059683 (= c!1206417 ((_ is Nil!65492) Nil!65492))))

(assert (=> d!2059683 (= (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492)) lt!2406735)))

(declare-fun b!6564203 () Bool)

(assert (=> b!6564203 (= e!3973609 (Cons!65492 (h!71940 Nil!65492) (++!14580 (t!379258 Nil!65492) (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492))))))

(declare-fun b!6564204 () Bool)

(declare-fun res!2693604 () Bool)

(assert (=> b!6564204 (=> (not res!2693604) (not e!3973608))))

(assert (=> b!6564204 (= res!2693604 (= (size!40527 lt!2406735) (+ (size!40527 Nil!65492) (size!40527 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492)))))))

(assert (= (and d!2059683 c!1206417) b!6564202))

(assert (= (and d!2059683 (not c!1206417)) b!6564203))

(assert (= (and d!2059683 res!2693603) b!6564204))

(assert (= (and b!6564204 res!2693604) b!6564205))

(declare-fun m!7346356 () Bool)

(assert (=> d!2059683 m!7346356))

(assert (=> d!2059683 m!7345924))

(declare-fun m!7346358 () Bool)

(assert (=> d!2059683 m!7346358))

(declare-fun m!7346360 () Bool)

(assert (=> b!6564203 m!7346360))

(declare-fun m!7346362 () Bool)

(assert (=> b!6564204 m!7346362))

(assert (=> b!6564204 m!7345932))

(declare-fun m!7346364 () Bool)

(assert (=> b!6564204 m!7346364))

(assert (=> b!6561993 d!2059683))

(declare-fun d!2059685 () Bool)

(assert (=> d!2059685 (= (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492)) (t!379258 (_1!36721 lt!2406397))) (_1!36721 lt!2406397))))

(declare-fun lt!2406736 () Unit!159091)

(assert (=> d!2059685 (= lt!2406736 (choose!48984 Nil!65492 (h!71940 (_1!36721 lt!2406397)) (t!379258 (_1!36721 lt!2406397)) (_1!36721 lt!2406397)))))

(assert (=> d!2059685 (= (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) (t!379258 (_1!36721 lt!2406397)))) (_1!36721 lt!2406397))))

(assert (=> d!2059685 (= (lemmaMoveElementToOtherListKeepsConcatEq!2582 Nil!65492 (h!71940 (_1!36721 lt!2406397)) (t!379258 (_1!36721 lt!2406397)) (_1!36721 lt!2406397)) lt!2406736)))

(declare-fun bs!1676197 () Bool)

(assert (= bs!1676197 d!2059685))

(assert (=> bs!1676197 m!7344064))

(assert (=> bs!1676197 m!7344064))

(assert (=> bs!1676197 m!7344066))

(declare-fun m!7346366 () Bool)

(assert (=> bs!1676197 m!7346366))

(declare-fun m!7346368 () Bool)

(assert (=> bs!1676197 m!7346368))

(assert (=> b!6561993 d!2059685))

(declare-fun b!6564206 () Bool)

(declare-fun e!3973612 () Bool)

(declare-fun lt!2406738 () Option!16330)

(assert (=> b!6564206 (= e!3973612 (not (isDefined!13033 lt!2406738)))))

(declare-fun b!6564207 () Bool)

(declare-fun res!2693609 () Bool)

(declare-fun e!3973611 () Bool)

(assert (=> b!6564207 (=> (not res!2693609) (not e!3973611))))

(assert (=> b!6564207 (= res!2693609 (matchR!8622 (reg!16768 (regOne!33390 r!7292)) (_1!36721 (get!22740 lt!2406738))))))

(declare-fun b!6564208 () Bool)

(declare-fun lt!2406737 () Unit!159091)

(declare-fun lt!2406739 () Unit!159091)

(assert (=> b!6564208 (= lt!2406737 lt!2406739)))

(assert (=> b!6564208 (= (++!14580 (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492)) (Cons!65492 (h!71940 (t!379258 (_1!36721 lt!2406397))) Nil!65492)) (t!379258 (t!379258 (_1!36721 lt!2406397)))) (_1!36721 lt!2406397))))

(assert (=> b!6564208 (= lt!2406739 (lemmaMoveElementToOtherListKeepsConcatEq!2582 (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492)) (h!71940 (t!379258 (_1!36721 lt!2406397))) (t!379258 (t!379258 (_1!36721 lt!2406397))) (_1!36721 lt!2406397)))))

(declare-fun e!3973613 () Option!16330)

(assert (=> b!6564208 (= e!3973613 (findConcatSeparation!2744 (reg!16768 (regOne!33390 r!7292)) lt!2406358 (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492)) (Cons!65492 (h!71940 (t!379258 (_1!36721 lt!2406397))) Nil!65492)) (t!379258 (t!379258 (_1!36721 lt!2406397))) (_1!36721 lt!2406397)))))

(declare-fun b!6564209 () Bool)

(declare-fun e!3973610 () Option!16330)

(assert (=> b!6564209 (= e!3973610 e!3973613)))

(declare-fun c!1206419 () Bool)

(assert (=> b!6564209 (= c!1206419 ((_ is Nil!65492) (t!379258 (_1!36721 lt!2406397))))))

(declare-fun d!2059687 () Bool)

(assert (=> d!2059687 e!3973612))

(declare-fun res!2693608 () Bool)

(assert (=> d!2059687 (=> res!2693608 e!3973612)))

(assert (=> d!2059687 (= res!2693608 e!3973611)))

(declare-fun res!2693606 () Bool)

(assert (=> d!2059687 (=> (not res!2693606) (not e!3973611))))

(assert (=> d!2059687 (= res!2693606 (isDefined!13033 lt!2406738))))

(assert (=> d!2059687 (= lt!2406738 e!3973610)))

(declare-fun c!1206418 () Bool)

(declare-fun e!3973614 () Bool)

(assert (=> d!2059687 (= c!1206418 e!3973614)))

(declare-fun res!2693605 () Bool)

(assert (=> d!2059687 (=> (not res!2693605) (not e!3973614))))

(assert (=> d!2059687 (= res!2693605 (matchR!8622 (reg!16768 (regOne!33390 r!7292)) (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492))))))

(assert (=> d!2059687 (validRegex!8175 (reg!16768 (regOne!33390 r!7292)))))

(assert (=> d!2059687 (= (findConcatSeparation!2744 (reg!16768 (regOne!33390 r!7292)) lt!2406358 (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492)) (t!379258 (_1!36721 lt!2406397)) (_1!36721 lt!2406397)) lt!2406738)))

(declare-fun b!6564210 () Bool)

(assert (=> b!6564210 (= e!3973613 None!16329)))

(declare-fun b!6564211 () Bool)

(assert (=> b!6564211 (= e!3973610 (Some!16329 (tuple2!66837 (++!14580 Nil!65492 (Cons!65492 (h!71940 (_1!36721 lt!2406397)) Nil!65492)) (t!379258 (_1!36721 lt!2406397)))))))

(declare-fun b!6564212 () Bool)

(declare-fun res!2693607 () Bool)

(assert (=> b!6564212 (=> (not res!2693607) (not e!3973611))))

(assert (=> b!6564212 (= res!2693607 (matchR!8622 lt!2406358 (_2!36721 (get!22740 lt!2406738))))))

(declare-fun b!6564213 () Bool)

(assert (=> b!6564213 (= e!3973611 (= (++!14580 (_1!36721 (get!22740 lt!2406738)) (_2!36721 (get!22740 lt!2406738))) (_1!36721 lt!2406397)))))

(declare-fun b!6564214 () Bool)

(assert (=> b!6564214 (= e!3973614 (matchR!8622 lt!2406358 (t!379258 (_1!36721 lt!2406397))))))

(assert (= (and d!2059687 res!2693605) b!6564214))

(assert (= (and d!2059687 c!1206418) b!6564211))

(assert (= (and d!2059687 (not c!1206418)) b!6564209))

(assert (= (and b!6564209 c!1206419) b!6564210))

(assert (= (and b!6564209 (not c!1206419)) b!6564208))

(assert (= (and d!2059687 res!2693606) b!6564207))

(assert (= (and b!6564207 res!2693609) b!6564212))

(assert (= (and b!6564212 res!2693607) b!6564213))

(assert (= (and d!2059687 (not res!2693608)) b!6564206))

(declare-fun m!7346370 () Bool)

(assert (=> d!2059687 m!7346370))

(assert (=> d!2059687 m!7344064))

(declare-fun m!7346372 () Bool)

(assert (=> d!2059687 m!7346372))

(assert (=> d!2059687 m!7343212))

(declare-fun m!7346374 () Bool)

(assert (=> b!6564214 m!7346374))

(assert (=> b!6564206 m!7346370))

(declare-fun m!7346376 () Bool)

(assert (=> b!6564207 m!7346376))

(declare-fun m!7346378 () Bool)

(assert (=> b!6564207 m!7346378))

(assert (=> b!6564212 m!7346376))

(declare-fun m!7346380 () Bool)

(assert (=> b!6564212 m!7346380))

(assert (=> b!6564208 m!7344064))

(declare-fun m!7346382 () Bool)

(assert (=> b!6564208 m!7346382))

(assert (=> b!6564208 m!7346382))

(declare-fun m!7346384 () Bool)

(assert (=> b!6564208 m!7346384))

(assert (=> b!6564208 m!7344064))

(declare-fun m!7346386 () Bool)

(assert (=> b!6564208 m!7346386))

(assert (=> b!6564208 m!7346382))

(declare-fun m!7346388 () Bool)

(assert (=> b!6564208 m!7346388))

(assert (=> b!6564213 m!7346376))

(declare-fun m!7346390 () Bool)

(assert (=> b!6564213 m!7346390))

(assert (=> b!6561993 d!2059687))

(declare-fun d!2059689 () Bool)

(assert (=> d!2059689 (= (isEmpty!37737 (tail!12414 s!2326)) ((_ is Nil!65492) (tail!12414 s!2326)))))

(assert (=> b!6562416 d!2059689))

(assert (=> b!6562416 d!2059541))

(assert (=> d!2058609 d!2059449))

(declare-fun d!2059691 () Bool)

(assert (=> d!2059691 true))

(declare-fun setRes!44813 () Bool)

(assert (=> d!2059691 setRes!44813))

(declare-fun condSetEmpty!44813 () Bool)

(declare-fun res!2693610 () (InoxSet Context!11646))

(assert (=> d!2059691 (= condSetEmpty!44813 (= res!2693610 ((as const (Array Context!11646 Bool)) false)))))

(assert (=> d!2059691 (= (choose!48971 lt!2406385 lambda!365043) res!2693610)))

(declare-fun setIsEmpty!44813 () Bool)

(assert (=> setIsEmpty!44813 setRes!44813))

(declare-fun e!3973615 () Bool)

(declare-fun tp!1812954 () Bool)

(declare-fun setNonEmpty!44813 () Bool)

(declare-fun setElem!44813 () Context!11646)

(assert (=> setNonEmpty!44813 (= setRes!44813 (and tp!1812954 (inv!84344 setElem!44813) e!3973615))))

(declare-fun setRest!44813 () (InoxSet Context!11646))

(assert (=> setNonEmpty!44813 (= res!2693610 ((_ map or) (store ((as const (Array Context!11646 Bool)) false) setElem!44813 true) setRest!44813))))

(declare-fun b!6564215 () Bool)

(declare-fun tp!1812955 () Bool)

(assert (=> b!6564215 (= e!3973615 tp!1812955)))

(assert (= (and d!2059691 condSetEmpty!44813) setIsEmpty!44813))

(assert (= (and d!2059691 (not condSetEmpty!44813)) setNonEmpty!44813))

(assert (= setNonEmpty!44813 b!6564215))

(declare-fun m!7346392 () Bool)

(assert (=> setNonEmpty!44813 m!7346392))

(assert (=> d!2058829 d!2059691))

(declare-fun d!2059693 () Bool)

(assert (=> d!2059693 (= (nullable!6432 lt!2406360) (nullableFct!2358 lt!2406360))))

(declare-fun bs!1676198 () Bool)

(assert (= bs!1676198 d!2059693))

(declare-fun m!7346394 () Bool)

(assert (=> bs!1676198 m!7346394))

(assert (=> b!6562360 d!2059693))

(assert (=> bm!570757 d!2059531))

(declare-fun b!6564216 () Bool)

(declare-fun e!3973618 () Bool)

(declare-fun e!3973621 () Bool)

(assert (=> b!6564216 (= e!3973618 e!3973621)))

(declare-fun res!2693617 () Bool)

(assert (=> b!6564216 (=> (not res!2693617) (not e!3973621))))

(declare-fun lt!2406740 () Bool)

(assert (=> b!6564216 (= res!2693617 (not lt!2406740))))

(declare-fun b!6564217 () Bool)

(declare-fun res!2693614 () Bool)

(declare-fun e!3973620 () Bool)

(assert (=> b!6564217 (=> res!2693614 e!3973620)))

(assert (=> b!6564217 (= res!2693614 (not (isEmpty!37737 (tail!12414 s!2326))))))

(declare-fun b!6564218 () Bool)

(declare-fun e!3973616 () Bool)

(declare-fun call!571097 () Bool)

(assert (=> b!6564218 (= e!3973616 (= lt!2406740 call!571097))))

(declare-fun b!6564220 () Bool)

(declare-fun res!2693613 () Bool)

(declare-fun e!3973619 () Bool)

(assert (=> b!6564220 (=> (not res!2693613) (not e!3973619))))

(assert (=> b!6564220 (= res!2693613 (isEmpty!37737 (tail!12414 s!2326)))))

(declare-fun b!6564221 () Bool)

(assert (=> b!6564221 (= e!3973619 (= (head!13329 s!2326) (c!1205620 (Concat!25284 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406358) (regTwo!33390 r!7292)))))))

(declare-fun b!6564222 () Bool)

(declare-fun res!2693615 () Bool)

(assert (=> b!6564222 (=> res!2693615 e!3973618)))

(assert (=> b!6564222 (= res!2693615 e!3973619)))

(declare-fun res!2693611 () Bool)

(assert (=> b!6564222 (=> (not res!2693611) (not e!3973619))))

(assert (=> b!6564222 (= res!2693611 lt!2406740)))

(declare-fun b!6564223 () Bool)

(declare-fun e!3973622 () Bool)

(assert (=> b!6564223 (= e!3973622 (not lt!2406740))))

(declare-fun b!6564224 () Bool)

(declare-fun res!2693618 () Bool)

(assert (=> b!6564224 (=> (not res!2693618) (not e!3973619))))

(assert (=> b!6564224 (= res!2693618 (not call!571097))))

(declare-fun b!6564225 () Bool)

(assert (=> b!6564225 (= e!3973621 e!3973620)))

(declare-fun res!2693612 () Bool)

(assert (=> b!6564225 (=> res!2693612 e!3973620)))

(assert (=> b!6564225 (= res!2693612 call!571097)))

(declare-fun b!6564226 () Bool)

(declare-fun e!3973617 () Bool)

(assert (=> b!6564226 (= e!3973617 (nullable!6432 (Concat!25284 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406358) (regTwo!33390 r!7292))))))

(declare-fun bm!571092 () Bool)

(assert (=> bm!571092 (= call!571097 (isEmpty!37737 s!2326))))

(declare-fun b!6564227 () Bool)

(assert (=> b!6564227 (= e!3973616 e!3973622)))

(declare-fun c!1206420 () Bool)

(assert (=> b!6564227 (= c!1206420 ((_ is EmptyLang!16439) (Concat!25284 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406358) (regTwo!33390 r!7292))))))

(declare-fun b!6564228 () Bool)

(declare-fun res!2693616 () Bool)

(assert (=> b!6564228 (=> res!2693616 e!3973618)))

(assert (=> b!6564228 (= res!2693616 (not ((_ is ElementMatch!16439) (Concat!25284 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406358) (regTwo!33390 r!7292)))))))

(assert (=> b!6564228 (= e!3973622 e!3973618)))

(declare-fun b!6564229 () Bool)

(assert (=> b!6564229 (= e!3973617 (matchR!8622 (derivativeStep!5123 (Concat!25284 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406358) (regTwo!33390 r!7292)) (head!13329 s!2326)) (tail!12414 s!2326)))))

(declare-fun d!2059695 () Bool)

(assert (=> d!2059695 e!3973616))

(declare-fun c!1206422 () Bool)

(assert (=> d!2059695 (= c!1206422 ((_ is EmptyExpr!16439) (Concat!25284 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406358) (regTwo!33390 r!7292))))))

(assert (=> d!2059695 (= lt!2406740 e!3973617)))

(declare-fun c!1206421 () Bool)

(assert (=> d!2059695 (= c!1206421 (isEmpty!37737 s!2326))))

(assert (=> d!2059695 (validRegex!8175 (Concat!25284 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406358) (regTwo!33390 r!7292)))))

(assert (=> d!2059695 (= (matchR!8622 (Concat!25284 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406358) (regTwo!33390 r!7292)) s!2326) lt!2406740)))

(declare-fun b!6564219 () Bool)

(assert (=> b!6564219 (= e!3973620 (not (= (head!13329 s!2326) (c!1205620 (Concat!25284 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406358) (regTwo!33390 r!7292))))))))

(assert (= (and d!2059695 c!1206421) b!6564226))

(assert (= (and d!2059695 (not c!1206421)) b!6564229))

(assert (= (and d!2059695 c!1206422) b!6564218))

(assert (= (and d!2059695 (not c!1206422)) b!6564227))

(assert (= (and b!6564227 c!1206420) b!6564223))

(assert (= (and b!6564227 (not c!1206420)) b!6564228))

(assert (= (and b!6564228 (not res!2693616)) b!6564222))

(assert (= (and b!6564222 res!2693611) b!6564224))

(assert (= (and b!6564224 res!2693618) b!6564220))

(assert (= (and b!6564220 res!2693613) b!6564221))

(assert (= (and b!6564222 (not res!2693615)) b!6564216))

(assert (= (and b!6564216 res!2693617) b!6564225))

(assert (= (and b!6564225 (not res!2693612)) b!6564217))

(assert (= (and b!6564217 (not res!2693614)) b!6564219))

(assert (= (or b!6564218 b!6564224 b!6564225) bm!571092))

(assert (=> bm!571092 m!7343766))

(assert (=> d!2059695 m!7343766))

(declare-fun m!7346396 () Bool)

(assert (=> d!2059695 m!7346396))

(assert (=> b!6564220 m!7343774))

(assert (=> b!6564220 m!7343774))

(assert (=> b!6564220 m!7344250))

(assert (=> b!6564221 m!7343770))

(assert (=> b!6564219 m!7343770))

(assert (=> b!6564217 m!7343774))

(assert (=> b!6564217 m!7343774))

(assert (=> b!6564217 m!7344250))

(declare-fun m!7346398 () Bool)

(assert (=> b!6564226 m!7346398))

(assert (=> b!6564229 m!7343770))

(assert (=> b!6564229 m!7343770))

(declare-fun m!7346400 () Bool)

(assert (=> b!6564229 m!7346400))

(assert (=> b!6564229 m!7343774))

(assert (=> b!6564229 m!7346400))

(assert (=> b!6564229 m!7343774))

(declare-fun m!7346402 () Bool)

(assert (=> b!6564229 m!7346402))

(assert (=> d!2058815 d!2059695))

(declare-fun b!6564230 () Bool)

(declare-fun e!3973625 () Bool)

(declare-fun e!3973628 () Bool)

(assert (=> b!6564230 (= e!3973625 e!3973628)))

(declare-fun res!2693625 () Bool)

(assert (=> b!6564230 (=> (not res!2693625) (not e!3973628))))

(declare-fun lt!2406741 () Bool)

(assert (=> b!6564230 (= res!2693625 (not lt!2406741))))

(declare-fun b!6564231 () Bool)

(declare-fun res!2693622 () Bool)

(declare-fun e!3973627 () Bool)

(assert (=> b!6564231 (=> res!2693622 e!3973627)))

(assert (=> b!6564231 (= res!2693622 (not (isEmpty!37737 (tail!12414 s!2326))))))

(declare-fun b!6564232 () Bool)

(declare-fun e!3973623 () Bool)

(declare-fun call!571098 () Bool)

(assert (=> b!6564232 (= e!3973623 (= lt!2406741 call!571098))))

(declare-fun b!6564234 () Bool)

(declare-fun res!2693621 () Bool)

(declare-fun e!3973626 () Bool)

(assert (=> b!6564234 (=> (not res!2693621) (not e!3973626))))

(assert (=> b!6564234 (= res!2693621 (isEmpty!37737 (tail!12414 s!2326)))))

(declare-fun b!6564235 () Bool)

(assert (=> b!6564235 (= e!3973626 (= (head!13329 s!2326) (c!1205620 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) (Concat!25284 lt!2406358 (regTwo!33390 r!7292))))))))

(declare-fun b!6564236 () Bool)

(declare-fun res!2693623 () Bool)

(assert (=> b!6564236 (=> res!2693623 e!3973625)))

(assert (=> b!6564236 (= res!2693623 e!3973626)))

(declare-fun res!2693619 () Bool)

(assert (=> b!6564236 (=> (not res!2693619) (not e!3973626))))

(assert (=> b!6564236 (= res!2693619 lt!2406741)))

(declare-fun b!6564237 () Bool)

(declare-fun e!3973629 () Bool)

(assert (=> b!6564237 (= e!3973629 (not lt!2406741))))

(declare-fun b!6564238 () Bool)

(declare-fun res!2693626 () Bool)

(assert (=> b!6564238 (=> (not res!2693626) (not e!3973626))))

(assert (=> b!6564238 (= res!2693626 (not call!571098))))

(declare-fun b!6564239 () Bool)

(assert (=> b!6564239 (= e!3973628 e!3973627)))

(declare-fun res!2693620 () Bool)

(assert (=> b!6564239 (=> res!2693620 e!3973627)))

(assert (=> b!6564239 (= res!2693620 call!571098)))

(declare-fun b!6564240 () Bool)

(declare-fun e!3973624 () Bool)

(assert (=> b!6564240 (= e!3973624 (nullable!6432 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) (Concat!25284 lt!2406358 (regTwo!33390 r!7292)))))))

(declare-fun bm!571093 () Bool)

(assert (=> bm!571093 (= call!571098 (isEmpty!37737 s!2326))))

(declare-fun b!6564241 () Bool)

(assert (=> b!6564241 (= e!3973623 e!3973629)))

(declare-fun c!1206423 () Bool)

(assert (=> b!6564241 (= c!1206423 ((_ is EmptyLang!16439) (Concat!25284 (reg!16768 (regOne!33390 r!7292)) (Concat!25284 lt!2406358 (regTwo!33390 r!7292)))))))

(declare-fun b!6564242 () Bool)

(declare-fun res!2693624 () Bool)

(assert (=> b!6564242 (=> res!2693624 e!3973625)))

(assert (=> b!6564242 (= res!2693624 (not ((_ is ElementMatch!16439) (Concat!25284 (reg!16768 (regOne!33390 r!7292)) (Concat!25284 lt!2406358 (regTwo!33390 r!7292))))))))

(assert (=> b!6564242 (= e!3973629 e!3973625)))

(declare-fun b!6564243 () Bool)

(assert (=> b!6564243 (= e!3973624 (matchR!8622 (derivativeStep!5123 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) (Concat!25284 lt!2406358 (regTwo!33390 r!7292))) (head!13329 s!2326)) (tail!12414 s!2326)))))

(declare-fun d!2059697 () Bool)

(assert (=> d!2059697 e!3973623))

(declare-fun c!1206425 () Bool)

(assert (=> d!2059697 (= c!1206425 ((_ is EmptyExpr!16439) (Concat!25284 (reg!16768 (regOne!33390 r!7292)) (Concat!25284 lt!2406358 (regTwo!33390 r!7292)))))))

(assert (=> d!2059697 (= lt!2406741 e!3973624)))

(declare-fun c!1206424 () Bool)

(assert (=> d!2059697 (= c!1206424 (isEmpty!37737 s!2326))))

(assert (=> d!2059697 (validRegex!8175 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) (Concat!25284 lt!2406358 (regTwo!33390 r!7292))))))

(assert (=> d!2059697 (= (matchR!8622 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) (Concat!25284 lt!2406358 (regTwo!33390 r!7292))) s!2326) lt!2406741)))

(declare-fun b!6564233 () Bool)

(assert (=> b!6564233 (= e!3973627 (not (= (head!13329 s!2326) (c!1205620 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) (Concat!25284 lt!2406358 (regTwo!33390 r!7292)))))))))

(assert (= (and d!2059697 c!1206424) b!6564240))

(assert (= (and d!2059697 (not c!1206424)) b!6564243))

(assert (= (and d!2059697 c!1206425) b!6564232))

(assert (= (and d!2059697 (not c!1206425)) b!6564241))

(assert (= (and b!6564241 c!1206423) b!6564237))

(assert (= (and b!6564241 (not c!1206423)) b!6564242))

(assert (= (and b!6564242 (not res!2693624)) b!6564236))

(assert (= (and b!6564236 res!2693619) b!6564238))

(assert (= (and b!6564238 res!2693626) b!6564234))

(assert (= (and b!6564234 res!2693621) b!6564235))

(assert (= (and b!6564236 (not res!2693623)) b!6564230))

(assert (= (and b!6564230 res!2693625) b!6564239))

(assert (= (and b!6564239 (not res!2693620)) b!6564231))

(assert (= (and b!6564231 (not res!2693622)) b!6564233))

(assert (= (or b!6564232 b!6564238 b!6564239) bm!571093))

(assert (=> bm!571093 m!7343766))

(assert (=> d!2059697 m!7343766))

(declare-fun m!7346404 () Bool)

(assert (=> d!2059697 m!7346404))

(assert (=> b!6564234 m!7343774))

(assert (=> b!6564234 m!7343774))

(assert (=> b!6564234 m!7344250))

(assert (=> b!6564235 m!7343770))

(assert (=> b!6564233 m!7343770))

(assert (=> b!6564231 m!7343774))

(assert (=> b!6564231 m!7343774))

(assert (=> b!6564231 m!7344250))

(declare-fun m!7346406 () Bool)

(assert (=> b!6564240 m!7346406))

(assert (=> b!6564243 m!7343770))

(assert (=> b!6564243 m!7343770))

(declare-fun m!7346408 () Bool)

(assert (=> b!6564243 m!7346408))

(assert (=> b!6564243 m!7343774))

(assert (=> b!6564243 m!7346408))

(assert (=> b!6564243 m!7343774))

(declare-fun m!7346410 () Bool)

(assert (=> b!6564243 m!7346410))

(assert (=> d!2058815 d!2059697))

(declare-fun d!2059699 () Bool)

(assert (=> d!2059699 (= (matchR!8622 (Concat!25284 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406358) (regTwo!33390 r!7292)) s!2326) (matchR!8622 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) (Concat!25284 lt!2406358 (regTwo!33390 r!7292))) s!2326))))

(assert (=> d!2059699 true))

(declare-fun _$123!155 () Unit!159091)

(assert (=> d!2059699 (= (choose!48979 (reg!16768 (regOne!33390 r!7292)) lt!2406358 (regTwo!33390 r!7292) s!2326) _$123!155)))

(declare-fun bs!1676199 () Bool)

(assert (= bs!1676199 d!2059699))

(assert (=> bs!1676199 m!7344378))

(assert (=> bs!1676199 m!7344380))

(assert (=> d!2058815 d!2059699))

(assert (=> d!2058815 d!2058615))

(assert (=> d!2058791 d!2059641))

(declare-fun b!6564244 () Bool)

(declare-fun e!3973632 () Bool)

(declare-fun e!3973635 () Bool)

(assert (=> b!6564244 (= e!3973632 e!3973635)))

(declare-fun res!2693633 () Bool)

(assert (=> b!6564244 (=> (not res!2693633) (not e!3973635))))

(declare-fun lt!2406742 () Bool)

(assert (=> b!6564244 (= res!2693633 (not lt!2406742))))

(declare-fun b!6564245 () Bool)

(declare-fun res!2693630 () Bool)

(declare-fun e!3973634 () Bool)

(assert (=> b!6564245 (=> res!2693630 e!3973634)))

(assert (=> b!6564245 (= res!2693630 (not (isEmpty!37737 (tail!12414 Nil!65492))))))

(declare-fun b!6564246 () Bool)

(declare-fun e!3973630 () Bool)

(declare-fun call!571099 () Bool)

(assert (=> b!6564246 (= e!3973630 (= lt!2406742 call!571099))))

(declare-fun b!6564248 () Bool)

(declare-fun res!2693629 () Bool)

(declare-fun e!3973633 () Bool)

(assert (=> b!6564248 (=> (not res!2693629) (not e!3973633))))

(assert (=> b!6564248 (= res!2693629 (isEmpty!37737 (tail!12414 Nil!65492)))))

(declare-fun b!6564249 () Bool)

(assert (=> b!6564249 (= e!3973633 (= (head!13329 Nil!65492) (c!1205620 lt!2406360)))))

(declare-fun b!6564250 () Bool)

(declare-fun res!2693631 () Bool)

(assert (=> b!6564250 (=> res!2693631 e!3973632)))

(assert (=> b!6564250 (= res!2693631 e!3973633)))

(declare-fun res!2693627 () Bool)

(assert (=> b!6564250 (=> (not res!2693627) (not e!3973633))))

(assert (=> b!6564250 (= res!2693627 lt!2406742)))

(declare-fun b!6564251 () Bool)

(declare-fun e!3973636 () Bool)

(assert (=> b!6564251 (= e!3973636 (not lt!2406742))))

(declare-fun b!6564252 () Bool)

(declare-fun res!2693634 () Bool)

(assert (=> b!6564252 (=> (not res!2693634) (not e!3973633))))

(assert (=> b!6564252 (= res!2693634 (not call!571099))))

(declare-fun b!6564253 () Bool)

(assert (=> b!6564253 (= e!3973635 e!3973634)))

(declare-fun res!2693628 () Bool)

(assert (=> b!6564253 (=> res!2693628 e!3973634)))

(assert (=> b!6564253 (= res!2693628 call!571099)))

(declare-fun b!6564254 () Bool)

(declare-fun e!3973631 () Bool)

(assert (=> b!6564254 (= e!3973631 (nullable!6432 lt!2406360))))

(declare-fun bm!571094 () Bool)

(assert (=> bm!571094 (= call!571099 (isEmpty!37737 Nil!65492))))

(declare-fun b!6564255 () Bool)

(assert (=> b!6564255 (= e!3973630 e!3973636)))

(declare-fun c!1206426 () Bool)

(assert (=> b!6564255 (= c!1206426 ((_ is EmptyLang!16439) lt!2406360))))

(declare-fun b!6564256 () Bool)

(declare-fun res!2693632 () Bool)

(assert (=> b!6564256 (=> res!2693632 e!3973632)))

(assert (=> b!6564256 (= res!2693632 (not ((_ is ElementMatch!16439) lt!2406360)))))

(assert (=> b!6564256 (= e!3973636 e!3973632)))

(declare-fun b!6564257 () Bool)

(assert (=> b!6564257 (= e!3973631 (matchR!8622 (derivativeStep!5123 lt!2406360 (head!13329 Nil!65492)) (tail!12414 Nil!65492)))))

(declare-fun d!2059701 () Bool)

(assert (=> d!2059701 e!3973630))

(declare-fun c!1206428 () Bool)

(assert (=> d!2059701 (= c!1206428 ((_ is EmptyExpr!16439) lt!2406360))))

(assert (=> d!2059701 (= lt!2406742 e!3973631)))

(declare-fun c!1206427 () Bool)

(assert (=> d!2059701 (= c!1206427 (isEmpty!37737 Nil!65492))))

(assert (=> d!2059701 (validRegex!8175 lt!2406360)))

(assert (=> d!2059701 (= (matchR!8622 lt!2406360 Nil!65492) lt!2406742)))

(declare-fun b!6564247 () Bool)

(assert (=> b!6564247 (= e!3973634 (not (= (head!13329 Nil!65492) (c!1205620 lt!2406360))))))

(assert (= (and d!2059701 c!1206427) b!6564254))

(assert (= (and d!2059701 (not c!1206427)) b!6564257))

(assert (= (and d!2059701 c!1206428) b!6564246))

(assert (= (and d!2059701 (not c!1206428)) b!6564255))

(assert (= (and b!6564255 c!1206426) b!6564251))

(assert (= (and b!6564255 (not c!1206426)) b!6564256))

(assert (= (and b!6564256 (not res!2693632)) b!6564250))

(assert (= (and b!6564250 res!2693627) b!6564252))

(assert (= (and b!6564252 res!2693634) b!6564248))

(assert (= (and b!6564248 res!2693629) b!6564249))

(assert (= (and b!6564250 (not res!2693631)) b!6564244))

(assert (= (and b!6564244 res!2693633) b!6564253))

(assert (= (and b!6564253 (not res!2693628)) b!6564245))

(assert (= (and b!6564245 (not res!2693630)) b!6564247))

(assert (= (or b!6564246 b!6564252 b!6564253) bm!571094))

(assert (=> bm!571094 m!7345876))

(assert (=> d!2059701 m!7345876))

(assert (=> d!2059701 m!7343856))

(assert (=> b!6564248 m!7345878))

(assert (=> b!6564248 m!7345878))

(assert (=> b!6564248 m!7345880))

(assert (=> b!6564249 m!7345882))

(assert (=> b!6564247 m!7345882))

(assert (=> b!6564245 m!7345878))

(assert (=> b!6564245 m!7345878))

(assert (=> b!6564245 m!7345880))

(assert (=> b!6564254 m!7344422))

(assert (=> b!6564257 m!7345882))

(assert (=> b!6564257 m!7345882))

(declare-fun m!7346412 () Bool)

(assert (=> b!6564257 m!7346412))

(assert (=> b!6564257 m!7345878))

(assert (=> b!6564257 m!7346412))

(assert (=> b!6564257 m!7345878))

(declare-fun m!7346414 () Bool)

(assert (=> b!6564257 m!7346414))

(assert (=> d!2058791 d!2059701))

(assert (=> d!2058791 d!2059569))

(declare-fun d!2059703 () Bool)

(declare-fun c!1206431 () Bool)

(assert (=> d!2059703 (= c!1206431 ((_ is Nil!65494) lt!2406608))))

(declare-fun e!3973639 () (InoxSet Context!11646))

(assert (=> d!2059703 (= (content!12600 lt!2406608) e!3973639)))

(declare-fun b!6564262 () Bool)

(assert (=> b!6564262 (= e!3973639 ((as const (Array Context!11646 Bool)) false))))

(declare-fun b!6564263 () Bool)

(assert (=> b!6564263 (= e!3973639 ((_ map or) (store ((as const (Array Context!11646 Bool)) false) (h!71942 lt!2406608) true) (content!12600 (t!379260 lt!2406608))))))

(assert (= (and d!2059703 c!1206431) b!6564262))

(assert (= (and d!2059703 (not c!1206431)) b!6564263))

(declare-fun m!7346416 () Bool)

(assert (=> b!6564263 m!7346416))

(declare-fun m!7346418 () Bool)

(assert (=> b!6564263 m!7346418))

(assert (=> b!6562366 d!2059703))

(assert (=> bm!570761 d!2059503))

(assert (=> b!6562254 d!2059583))

(declare-fun d!2059705 () Bool)

(assert (=> d!2059705 (= (isEmpty!37737 (tail!12414 lt!2406375)) ((_ is Nil!65492) (tail!12414 lt!2406375)))))

(assert (=> b!6562303 d!2059705))

(declare-fun d!2059707 () Bool)

(assert (=> d!2059707 (= (tail!12414 lt!2406375) (t!379258 lt!2406375))))

(assert (=> b!6562303 d!2059707))

(declare-fun d!2059709 () Bool)

(assert (=> d!2059709 (= (isEmpty!37738 (findConcatSeparation!2744 (regOne!33390 r!7292) (regTwo!33390 r!7292) Nil!65492 s!2326 s!2326)) (not ((_ is Some!16329) (findConcatSeparation!2744 (regOne!33390 r!7292) (regTwo!33390 r!7292) Nil!65492 s!2326 s!2326))))))

(assert (=> d!2058769 d!2059709))

(declare-fun d!2059711 () Bool)

(assert (=> d!2059711 true))

(declare-fun setRes!44814 () Bool)

(assert (=> d!2059711 setRes!44814))

(declare-fun condSetEmpty!44814 () Bool)

(declare-fun res!2693635 () (InoxSet Context!11646))

(assert (=> d!2059711 (= condSetEmpty!44814 (= res!2693635 ((as const (Array Context!11646 Bool)) false)))))

(assert (=> d!2059711 (= (choose!48971 z!1189 lambda!365043) res!2693635)))

(declare-fun setIsEmpty!44814 () Bool)

(assert (=> setIsEmpty!44814 setRes!44814))

(declare-fun setElem!44814 () Context!11646)

(declare-fun setNonEmpty!44814 () Bool)

(declare-fun tp!1812956 () Bool)

(declare-fun e!3973640 () Bool)

(assert (=> setNonEmpty!44814 (= setRes!44814 (and tp!1812956 (inv!84344 setElem!44814) e!3973640))))

(declare-fun setRest!44814 () (InoxSet Context!11646))

(assert (=> setNonEmpty!44814 (= res!2693635 ((_ map or) (store ((as const (Array Context!11646 Bool)) false) setElem!44814 true) setRest!44814))))

(declare-fun b!6564264 () Bool)

(declare-fun tp!1812957 () Bool)

(assert (=> b!6564264 (= e!3973640 tp!1812957)))

(assert (= (and d!2059711 condSetEmpty!44814) setIsEmpty!44814))

(assert (= (and d!2059711 (not condSetEmpty!44814)) setNonEmpty!44814))

(assert (= setNonEmpty!44814 b!6564264))

(declare-fun m!7346420 () Bool)

(assert (=> setNonEmpty!44814 m!7346420))

(assert (=> d!2058859 d!2059711))

(declare-fun bs!1676200 () Bool)

(declare-fun d!2059713 () Bool)

(assert (= bs!1676200 (and d!2059713 d!2059453)))

(declare-fun lambda!365243 () Int)

(assert (=> bs!1676200 (= lambda!365243 lambda!365219)))

(declare-fun bs!1676201 () Bool)

(assert (= bs!1676201 (and d!2059713 d!2059671)))

(assert (=> bs!1676201 (= lambda!365243 lambda!365240)))

(assert (=> d!2059713 (= (nullableZipper!2184 ((_ map or) lt!2406348 lt!2406381)) (exists!2639 ((_ map or) lt!2406348 lt!2406381) lambda!365243))))

(declare-fun bs!1676202 () Bool)

(assert (= bs!1676202 d!2059713))

(declare-fun m!7346422 () Bool)

(assert (=> bs!1676202 m!7346422))

(assert (=> b!6562249 d!2059713))

(assert (=> b!6562425 d!2059445))

(assert (=> d!2058775 d!2058773))

(assert (=> d!2058775 d!2058771))

(declare-fun d!2059715 () Bool)

(assert (=> d!2059715 (= (matchR!8622 r!7292 s!2326) (matchRSpec!3540 r!7292 s!2326))))

(assert (=> d!2059715 true))

(declare-fun _$88!5251 () Unit!159091)

(assert (=> d!2059715 (= (choose!48964 r!7292 s!2326) _$88!5251)))

(declare-fun bs!1676203 () Bool)

(assert (= bs!1676203 d!2059715))

(assert (=> bs!1676203 m!7343188))

(assert (=> bs!1676203 m!7343186))

(assert (=> d!2058775 d!2059715))

(assert (=> d!2058775 d!2058581))

(declare-fun b!6564265 () Bool)

(declare-fun e!3973642 () List!65616)

(assert (=> b!6564265 (= e!3973642 (_2!36721 (get!22740 lt!2406558)))))

(declare-fun b!6564268 () Bool)

(declare-fun e!3973641 () Bool)

(declare-fun lt!2406743 () List!65616)

(assert (=> b!6564268 (= e!3973641 (or (not (= (_2!36721 (get!22740 lt!2406558)) Nil!65492)) (= lt!2406743 (_1!36721 (get!22740 lt!2406558)))))))

(declare-fun d!2059717 () Bool)

(assert (=> d!2059717 e!3973641))

(declare-fun res!2693636 () Bool)

(assert (=> d!2059717 (=> (not res!2693636) (not e!3973641))))

(assert (=> d!2059717 (= res!2693636 (= (content!12598 lt!2406743) ((_ map or) (content!12598 (_1!36721 (get!22740 lt!2406558))) (content!12598 (_2!36721 (get!22740 lt!2406558))))))))

(assert (=> d!2059717 (= lt!2406743 e!3973642)))

(declare-fun c!1206432 () Bool)

(assert (=> d!2059717 (= c!1206432 ((_ is Nil!65492) (_1!36721 (get!22740 lt!2406558))))))

(assert (=> d!2059717 (= (++!14580 (_1!36721 (get!22740 lt!2406558)) (_2!36721 (get!22740 lt!2406558))) lt!2406743)))

(declare-fun b!6564266 () Bool)

(assert (=> b!6564266 (= e!3973642 (Cons!65492 (h!71940 (_1!36721 (get!22740 lt!2406558))) (++!14580 (t!379258 (_1!36721 (get!22740 lt!2406558))) (_2!36721 (get!22740 lt!2406558)))))))

(declare-fun b!6564267 () Bool)

(declare-fun res!2693637 () Bool)

(assert (=> b!6564267 (=> (not res!2693637) (not e!3973641))))

(assert (=> b!6564267 (= res!2693637 (= (size!40527 lt!2406743) (+ (size!40527 (_1!36721 (get!22740 lt!2406558))) (size!40527 (_2!36721 (get!22740 lt!2406558))))))))

(assert (= (and d!2059717 c!1206432) b!6564265))

(assert (= (and d!2059717 (not c!1206432)) b!6564266))

(assert (= (and d!2059717 res!2693636) b!6564267))

(assert (= (and b!6564267 res!2693637) b!6564268))

(declare-fun m!7346424 () Bool)

(assert (=> d!2059717 m!7346424))

(declare-fun m!7346426 () Bool)

(assert (=> d!2059717 m!7346426))

(declare-fun m!7346428 () Bool)

(assert (=> d!2059717 m!7346428))

(declare-fun m!7346430 () Bool)

(assert (=> b!6564266 m!7346430))

(declare-fun m!7346432 () Bool)

(assert (=> b!6564267 m!7346432))

(declare-fun m!7346434 () Bool)

(assert (=> b!6564267 m!7346434))

(declare-fun m!7346436 () Bool)

(assert (=> b!6564267 m!7346436))

(assert (=> b!6562179 d!2059717))

(assert (=> b!6562179 d!2059527))

(declare-fun d!2059719 () Bool)

(assert (=> d!2059719 (= (nullable!6432 (reg!16768 r!7292)) (nullableFct!2358 (reg!16768 r!7292)))))

(declare-fun bs!1676204 () Bool)

(assert (= bs!1676204 d!2059719))

(declare-fun m!7346438 () Bool)

(assert (=> bs!1676204 m!7346438))

(assert (=> b!6561677 d!2059719))

(declare-fun b!6564269 () Bool)

(declare-fun e!3973645 () Bool)

(declare-fun e!3973648 () Bool)

(assert (=> b!6564269 (= e!3973645 e!3973648)))

(declare-fun res!2693644 () Bool)

(assert (=> b!6564269 (=> (not res!2693644) (not e!3973648))))

(declare-fun lt!2406744 () Bool)

(assert (=> b!6564269 (= res!2693644 (not lt!2406744))))

(declare-fun b!6564270 () Bool)

(declare-fun res!2693641 () Bool)

(declare-fun e!3973647 () Bool)

(assert (=> b!6564270 (=> res!2693641 e!3973647)))

(assert (=> b!6564270 (= res!2693641 (not (isEmpty!37737 (tail!12414 (_1!36721 (get!22740 lt!2406582))))))))

(declare-fun b!6564271 () Bool)

(declare-fun e!3973643 () Bool)

(declare-fun call!571100 () Bool)

(assert (=> b!6564271 (= e!3973643 (= lt!2406744 call!571100))))

(declare-fun b!6564273 () Bool)

(declare-fun res!2693640 () Bool)

(declare-fun e!3973646 () Bool)

(assert (=> b!6564273 (=> (not res!2693640) (not e!3973646))))

(assert (=> b!6564273 (= res!2693640 (isEmpty!37737 (tail!12414 (_1!36721 (get!22740 lt!2406582)))))))

(declare-fun b!6564274 () Bool)

(assert (=> b!6564274 (= e!3973646 (= (head!13329 (_1!36721 (get!22740 lt!2406582))) (c!1205620 lt!2406360)))))

(declare-fun b!6564275 () Bool)

(declare-fun res!2693642 () Bool)

(assert (=> b!6564275 (=> res!2693642 e!3973645)))

(assert (=> b!6564275 (= res!2693642 e!3973646)))

(declare-fun res!2693638 () Bool)

(assert (=> b!6564275 (=> (not res!2693638) (not e!3973646))))

(assert (=> b!6564275 (= res!2693638 lt!2406744)))

(declare-fun b!6564276 () Bool)

(declare-fun e!3973649 () Bool)

(assert (=> b!6564276 (= e!3973649 (not lt!2406744))))

(declare-fun b!6564277 () Bool)

(declare-fun res!2693645 () Bool)

(assert (=> b!6564277 (=> (not res!2693645) (not e!3973646))))

(assert (=> b!6564277 (= res!2693645 (not call!571100))))

(declare-fun b!6564278 () Bool)

(assert (=> b!6564278 (= e!3973648 e!3973647)))

(declare-fun res!2693639 () Bool)

(assert (=> b!6564278 (=> res!2693639 e!3973647)))

(assert (=> b!6564278 (= res!2693639 call!571100)))

(declare-fun b!6564279 () Bool)

(declare-fun e!3973644 () Bool)

(assert (=> b!6564279 (= e!3973644 (nullable!6432 lt!2406360))))

(declare-fun bm!571095 () Bool)

(assert (=> bm!571095 (= call!571100 (isEmpty!37737 (_1!36721 (get!22740 lt!2406582))))))

(declare-fun b!6564280 () Bool)

(assert (=> b!6564280 (= e!3973643 e!3973649)))

(declare-fun c!1206433 () Bool)

(assert (=> b!6564280 (= c!1206433 ((_ is EmptyLang!16439) lt!2406360))))

(declare-fun b!6564281 () Bool)

(declare-fun res!2693643 () Bool)

(assert (=> b!6564281 (=> res!2693643 e!3973645)))

(assert (=> b!6564281 (= res!2693643 (not ((_ is ElementMatch!16439) lt!2406360)))))

(assert (=> b!6564281 (= e!3973649 e!3973645)))

(declare-fun b!6564282 () Bool)

(assert (=> b!6564282 (= e!3973644 (matchR!8622 (derivativeStep!5123 lt!2406360 (head!13329 (_1!36721 (get!22740 lt!2406582)))) (tail!12414 (_1!36721 (get!22740 lt!2406582)))))))

(declare-fun d!2059721 () Bool)

(assert (=> d!2059721 e!3973643))

(declare-fun c!1206435 () Bool)

(assert (=> d!2059721 (= c!1206435 ((_ is EmptyExpr!16439) lt!2406360))))

(assert (=> d!2059721 (= lt!2406744 e!3973644)))

(declare-fun c!1206434 () Bool)

(assert (=> d!2059721 (= c!1206434 (isEmpty!37737 (_1!36721 (get!22740 lt!2406582))))))

(assert (=> d!2059721 (validRegex!8175 lt!2406360)))

(assert (=> d!2059721 (= (matchR!8622 lt!2406360 (_1!36721 (get!22740 lt!2406582))) lt!2406744)))

(declare-fun b!6564272 () Bool)

(assert (=> b!6564272 (= e!3973647 (not (= (head!13329 (_1!36721 (get!22740 lt!2406582))) (c!1205620 lt!2406360))))))

(assert (= (and d!2059721 c!1206434) b!6564279))

(assert (= (and d!2059721 (not c!1206434)) b!6564282))

(assert (= (and d!2059721 c!1206435) b!6564271))

(assert (= (and d!2059721 (not c!1206435)) b!6564280))

(assert (= (and b!6564280 c!1206433) b!6564276))

(assert (= (and b!6564280 (not c!1206433)) b!6564281))

(assert (= (and b!6564281 (not res!2693643)) b!6564275))

(assert (= (and b!6564275 res!2693638) b!6564277))

(assert (= (and b!6564277 res!2693645) b!6564273))

(assert (= (and b!6564273 res!2693640) b!6564274))

(assert (= (and b!6564275 (not res!2693642)) b!6564269))

(assert (= (and b!6564269 res!2693644) b!6564278))

(assert (= (and b!6564278 (not res!2693639)) b!6564270))

(assert (= (and b!6564270 (not res!2693641)) b!6564272))

(assert (= (or b!6564271 b!6564277 b!6564278) bm!571095))

(declare-fun m!7346440 () Bool)

(assert (=> bm!571095 m!7346440))

(assert (=> d!2059721 m!7346440))

(assert (=> d!2059721 m!7343856))

(declare-fun m!7346442 () Bool)

(assert (=> b!6564273 m!7346442))

(assert (=> b!6564273 m!7346442))

(declare-fun m!7346444 () Bool)

(assert (=> b!6564273 m!7346444))

(declare-fun m!7346446 () Bool)

(assert (=> b!6564274 m!7346446))

(assert (=> b!6564272 m!7346446))

(assert (=> b!6564270 m!7346442))

(assert (=> b!6564270 m!7346442))

(assert (=> b!6564270 m!7346444))

(assert (=> b!6564279 m!7344422))

(assert (=> b!6564282 m!7346446))

(assert (=> b!6564282 m!7346446))

(declare-fun m!7346448 () Bool)

(assert (=> b!6564282 m!7346448))

(assert (=> b!6564282 m!7346442))

(assert (=> b!6564282 m!7346448))

(assert (=> b!6564282 m!7346442))

(declare-fun m!7346450 () Bool)

(assert (=> b!6564282 m!7346450))

(assert (=> b!6562280 d!2059721))

(declare-fun d!2059723 () Bool)

(assert (=> d!2059723 (= (get!22740 lt!2406582) (v!52514 lt!2406582))))

(assert (=> b!6562280 d!2059723))

(declare-fun d!2059725 () Bool)

(assert (=> d!2059725 (= (isEmpty!37733 (tail!12413 (unfocusZipperList!1860 zl!343))) ((_ is Nil!65493) (tail!12413 (unfocusZipperList!1860 zl!343))))))

(assert (=> b!6562099 d!2059725))

(declare-fun d!2059727 () Bool)

(assert (=> d!2059727 (= (tail!12413 (unfocusZipperList!1860 zl!343)) (t!379259 (unfocusZipperList!1860 zl!343)))))

(assert (=> b!6562099 d!2059727))

(declare-fun d!2059729 () Bool)

(assert (=> d!2059729 (= ($colon$colon!2280 (exprs!6323 lt!2406386) (ite (or c!1205922 c!1205920) (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (h!71941 (exprs!6323 (h!71942 zl!343))))) (Cons!65493 (ite (or c!1205922 c!1205920) (regTwo!33390 (h!71941 (exprs!6323 (h!71942 zl!343)))) (h!71941 (exprs!6323 (h!71942 zl!343)))) (exprs!6323 lt!2406386)))))

(assert (=> bm!570770 d!2059729))

(assert (=> b!6562190 d!2059633))

(assert (=> bs!1675020 d!2058855))

(declare-fun b!6564283 () Bool)

(declare-fun e!3973651 () Bool)

(declare-fun call!571101 () Bool)

(assert (=> b!6564283 (= e!3973651 call!571101)))

(declare-fun b!6564284 () Bool)

(declare-fun res!2693648 () Bool)

(declare-fun e!3973650 () Bool)

(assert (=> b!6564284 (=> (not res!2693648) (not e!3973650))))

(declare-fun call!571103 () Bool)

(assert (=> b!6564284 (= res!2693648 call!571103)))

(declare-fun e!3973653 () Bool)

(assert (=> b!6564284 (= e!3973653 e!3973650)))

(declare-fun b!6564285 () Bool)

(declare-fun e!3973656 () Bool)

(assert (=> b!6564285 (= e!3973656 e!3973653)))

(declare-fun c!1206437 () Bool)

(assert (=> b!6564285 (= c!1206437 ((_ is Union!16439) (ite c!1205714 (regOne!33391 r!7292) (regOne!33390 r!7292))))))

(declare-fun bm!571096 () Bool)

(assert (=> bm!571096 (= call!571103 (validRegex!8175 (ite c!1206437 (regOne!33391 (ite c!1205714 (regOne!33391 r!7292) (regOne!33390 r!7292))) (regOne!33390 (ite c!1205714 (regOne!33391 r!7292) (regOne!33390 r!7292))))))))

(declare-fun b!6564286 () Bool)

(assert (=> b!6564286 (= e!3973650 call!571101)))

(declare-fun b!6564287 () Bool)

(declare-fun e!3973654 () Bool)

(assert (=> b!6564287 (= e!3973654 e!3973651)))

(declare-fun res!2693650 () Bool)

(assert (=> b!6564287 (=> (not res!2693650) (not e!3973651))))

(assert (=> b!6564287 (= res!2693650 call!571103)))

(declare-fun b!6564288 () Bool)

(declare-fun res!2693646 () Bool)

(assert (=> b!6564288 (=> res!2693646 e!3973654)))

(assert (=> b!6564288 (= res!2693646 (not ((_ is Concat!25284) (ite c!1205714 (regOne!33391 r!7292) (regOne!33390 r!7292)))))))

(assert (=> b!6564288 (= e!3973653 e!3973654)))

(declare-fun b!6564289 () Bool)

(declare-fun e!3973652 () Bool)

(assert (=> b!6564289 (= e!3973656 e!3973652)))

(declare-fun res!2693647 () Bool)

(assert (=> b!6564289 (= res!2693647 (not (nullable!6432 (reg!16768 (ite c!1205714 (regOne!33391 r!7292) (regOne!33390 r!7292))))))))

(assert (=> b!6564289 (=> (not res!2693647) (not e!3973652))))

(declare-fun d!2059731 () Bool)

(declare-fun res!2693649 () Bool)

(declare-fun e!3973655 () Bool)

(assert (=> d!2059731 (=> res!2693649 e!3973655)))

(assert (=> d!2059731 (= res!2693649 ((_ is ElementMatch!16439) (ite c!1205714 (regOne!33391 r!7292) (regOne!33390 r!7292))))))

(assert (=> d!2059731 (= (validRegex!8175 (ite c!1205714 (regOne!33391 r!7292) (regOne!33390 r!7292))) e!3973655)))

(declare-fun b!6564290 () Bool)

(declare-fun call!571102 () Bool)

(assert (=> b!6564290 (= e!3973652 call!571102)))

(declare-fun bm!571097 () Bool)

(assert (=> bm!571097 (= call!571101 call!571102)))

(declare-fun b!6564291 () Bool)

(assert (=> b!6564291 (= e!3973655 e!3973656)))

(declare-fun c!1206436 () Bool)

(assert (=> b!6564291 (= c!1206436 ((_ is Star!16439) (ite c!1205714 (regOne!33391 r!7292) (regOne!33390 r!7292))))))

(declare-fun bm!571098 () Bool)

(assert (=> bm!571098 (= call!571102 (validRegex!8175 (ite c!1206436 (reg!16768 (ite c!1205714 (regOne!33391 r!7292) (regOne!33390 r!7292))) (ite c!1206437 (regTwo!33391 (ite c!1205714 (regOne!33391 r!7292) (regOne!33390 r!7292))) (regTwo!33390 (ite c!1205714 (regOne!33391 r!7292) (regOne!33390 r!7292)))))))))

(assert (= (and d!2059731 (not res!2693649)) b!6564291))

(assert (= (and b!6564291 c!1206436) b!6564289))

(assert (= (and b!6564291 (not c!1206436)) b!6564285))

(assert (= (and b!6564289 res!2693647) b!6564290))

(assert (= (and b!6564285 c!1206437) b!6564284))

(assert (= (and b!6564285 (not c!1206437)) b!6564288))

(assert (= (and b!6564284 res!2693648) b!6564286))

(assert (= (and b!6564288 (not res!2693646)) b!6564287))

(assert (= (and b!6564287 res!2693650) b!6564283))

(assert (= (or b!6564286 b!6564283) bm!571097))

(assert (= (or b!6564284 b!6564287) bm!571096))

(assert (= (or b!6564290 bm!571097) bm!571098))

(declare-fun m!7346452 () Bool)

(assert (=> bm!571096 m!7346452))

(declare-fun m!7346454 () Bool)

(assert (=> b!6564289 m!7346454))

(declare-fun m!7346456 () Bool)

(assert (=> bm!571098 m!7346456))

(assert (=> bm!570678 d!2059731))

(declare-fun d!2059733 () Bool)

(declare-fun c!1206438 () Bool)

(assert (=> d!2059733 (= c!1206438 (isEmpty!37737 (tail!12414 (_2!36721 lt!2406377))))))

(declare-fun e!3973657 () Bool)

(assert (=> d!2059733 (= (matchZipper!2451 (derivationStepZipper!2405 lt!2406394 (head!13329 (_2!36721 lt!2406377))) (tail!12414 (_2!36721 lt!2406377))) e!3973657)))

(declare-fun b!6564292 () Bool)

(assert (=> b!6564292 (= e!3973657 (nullableZipper!2184 (derivationStepZipper!2405 lt!2406394 (head!13329 (_2!36721 lt!2406377)))))))

(declare-fun b!6564293 () Bool)

(assert (=> b!6564293 (= e!3973657 (matchZipper!2451 (derivationStepZipper!2405 (derivationStepZipper!2405 lt!2406394 (head!13329 (_2!36721 lt!2406377))) (head!13329 (tail!12414 (_2!36721 lt!2406377)))) (tail!12414 (tail!12414 (_2!36721 lt!2406377)))))))

(assert (= (and d!2059733 c!1206438) b!6564292))

(assert (= (and d!2059733 (not c!1206438)) b!6564293))

(assert (=> d!2059733 m!7343786))

(assert (=> d!2059733 m!7344282))

(assert (=> b!6564292 m!7343784))

(declare-fun m!7346458 () Bool)

(assert (=> b!6564292 m!7346458))

(assert (=> b!6564293 m!7343786))

(declare-fun m!7346460 () Bool)

(assert (=> b!6564293 m!7346460))

(assert (=> b!6564293 m!7343784))

(assert (=> b!6564293 m!7346460))

(declare-fun m!7346462 () Bool)

(assert (=> b!6564293 m!7346462))

(assert (=> b!6564293 m!7343786))

(declare-fun m!7346464 () Bool)

(assert (=> b!6564293 m!7346464))

(assert (=> b!6564293 m!7346462))

(assert (=> b!6564293 m!7346464))

(declare-fun m!7346466 () Bool)

(assert (=> b!6564293 m!7346466))

(assert (=> b!6561758 d!2059733))

(declare-fun bs!1676205 () Bool)

(declare-fun d!2059735 () Bool)

(assert (= bs!1676205 (and d!2059735 d!2059463)))

(declare-fun lambda!365244 () Int)

(assert (=> bs!1676205 (= (= (head!13329 (_2!36721 lt!2406377)) (head!13329 (_1!36721 lt!2406377))) (= lambda!365244 lambda!365220))))

(declare-fun bs!1676206 () Bool)

(assert (= bs!1676206 (and d!2059735 d!2059511)))

(assert (=> bs!1676206 (= (= (head!13329 (_2!36721 lt!2406377)) (head!13329 (t!379258 s!2326))) (= lambda!365244 lambda!365227))))

(declare-fun bs!1676207 () Bool)

(assert (= bs!1676207 (and d!2059735 d!2058835)))

(assert (=> bs!1676207 (= (= (head!13329 (_2!36721 lt!2406377)) (h!71940 s!2326)) (= lambda!365244 lambda!365144))))

(declare-fun bs!1676208 () Bool)

(assert (= bs!1676208 (and d!2059735 d!2059605)))

(assert (=> bs!1676208 (= (= (head!13329 (_2!36721 lt!2406377)) (head!13329 (t!379258 s!2326))) (= lambda!365244 lambda!365233))))

(declare-fun bs!1676209 () Bool)

(assert (= bs!1676209 (and d!2059735 d!2059627)))

(assert (=> bs!1676209 (= (= (head!13329 (_2!36721 lt!2406377)) (head!13329 s!2326)) (= lambda!365244 lambda!365236))))

(declare-fun bs!1676210 () Bool)

(assert (= bs!1676210 (and d!2059735 b!6561279)))

(assert (=> bs!1676210 (= (= (head!13329 (_2!36721 lt!2406377)) (h!71940 s!2326)) (= lambda!365244 lambda!365043))))

(declare-fun bs!1676211 () Bool)

(assert (= bs!1676211 (and d!2059735 d!2059537)))

(assert (=> bs!1676211 (= (= (head!13329 (_2!36721 lt!2406377)) (head!13329 s!2326)) (= lambda!365244 lambda!365228))))

(assert (=> d!2059735 true))

(assert (=> d!2059735 (= (derivationStepZipper!2405 lt!2406394 (head!13329 (_2!36721 lt!2406377))) (flatMap!1944 lt!2406394 lambda!365244))))

(declare-fun bs!1676212 () Bool)

(assert (= bs!1676212 d!2059735))

(declare-fun m!7346468 () Bool)

(assert (=> bs!1676212 m!7346468))

(assert (=> b!6561758 d!2059735))

(assert (=> b!6561758 d!2059583))

(assert (=> b!6561758 d!2059491))

(declare-fun d!2059737 () Bool)

(assert (=> d!2059737 (= (isEmpty!37737 (_1!36721 lt!2406377)) ((_ is Nil!65492) (_1!36721 lt!2406377)))))

(assert (=> bm!570759 d!2059737))

(declare-fun b!6564294 () Bool)

(declare-fun e!3973661 () Bool)

(declare-fun call!571105 () Bool)

(assert (=> b!6564294 (= e!3973661 call!571105)))

(declare-fun b!6564295 () Bool)

(declare-fun e!3973663 () Bool)

(declare-fun e!3973662 () Bool)

(assert (=> b!6564295 (= e!3973663 e!3973662)))

(declare-fun res!2693651 () Bool)

(assert (=> b!6564295 (=> res!2693651 e!3973662)))

(assert (=> b!6564295 (= res!2693651 ((_ is Star!16439) (regOne!33390 (regOne!33390 r!7292))))))

(declare-fun bm!571100 () Bool)

(declare-fun c!1206439 () Bool)

(assert (=> bm!571100 (= call!571105 (nullable!6432 (ite c!1206439 (regTwo!33391 (regOne!33390 (regOne!33390 r!7292))) (regTwo!33390 (regOne!33390 (regOne!33390 r!7292))))))))

(declare-fun b!6564296 () Bool)

(declare-fun e!3973660 () Bool)

(assert (=> b!6564296 (= e!3973660 call!571105)))

(declare-fun b!6564297 () Bool)

(declare-fun e!3973658 () Bool)

(assert (=> b!6564297 (= e!3973658 e!3973660)))

(declare-fun res!2693652 () Bool)

(declare-fun call!571104 () Bool)

(assert (=> b!6564297 (= res!2693652 call!571104)))

(assert (=> b!6564297 (=> res!2693652 e!3973660)))

(declare-fun b!6564298 () Bool)

(assert (=> b!6564298 (= e!3973658 e!3973661)))

(declare-fun res!2693655 () Bool)

(assert (=> b!6564298 (= res!2693655 call!571104)))

(assert (=> b!6564298 (=> (not res!2693655) (not e!3973661))))

(declare-fun b!6564299 () Bool)

(declare-fun e!3973659 () Bool)

(assert (=> b!6564299 (= e!3973659 e!3973663)))

(declare-fun res!2693653 () Bool)

(assert (=> b!6564299 (=> (not res!2693653) (not e!3973663))))

(assert (=> b!6564299 (= res!2693653 (and (not ((_ is EmptyLang!16439) (regOne!33390 (regOne!33390 r!7292)))) (not ((_ is ElementMatch!16439) (regOne!33390 (regOne!33390 r!7292))))))))

(declare-fun b!6564300 () Bool)

(assert (=> b!6564300 (= e!3973662 e!3973658)))

(assert (=> b!6564300 (= c!1206439 ((_ is Union!16439) (regOne!33390 (regOne!33390 r!7292))))))

(declare-fun bm!571099 () Bool)

(assert (=> bm!571099 (= call!571104 (nullable!6432 (ite c!1206439 (regOne!33391 (regOne!33390 (regOne!33390 r!7292))) (regOne!33390 (regOne!33390 (regOne!33390 r!7292))))))))

(declare-fun d!2059739 () Bool)

(declare-fun res!2693654 () Bool)

(assert (=> d!2059739 (=> res!2693654 e!3973659)))

(assert (=> d!2059739 (= res!2693654 ((_ is EmptyExpr!16439) (regOne!33390 (regOne!33390 r!7292))))))

(assert (=> d!2059739 (= (nullableFct!2358 (regOne!33390 (regOne!33390 r!7292))) e!3973659)))

(assert (= (and d!2059739 (not res!2693654)) b!6564299))

(assert (= (and b!6564299 res!2693653) b!6564295))

(assert (= (and b!6564295 (not res!2693651)) b!6564300))

(assert (= (and b!6564300 c!1206439) b!6564297))

(assert (= (and b!6564300 (not c!1206439)) b!6564298))

(assert (= (and b!6564297 (not res!2693652)) b!6564296))

(assert (= (and b!6564298 res!2693655) b!6564294))

(assert (= (or b!6564296 b!6564294) bm!571100))

(assert (= (or b!6564297 b!6564298) bm!571099))

(declare-fun m!7346470 () Bool)

(assert (=> bm!571100 m!7346470))

(declare-fun m!7346472 () Bool)

(assert (=> bm!571099 m!7346472))

(assert (=> d!2058757 d!2059739))

(assert (=> b!6562318 d!2059533))

(declare-fun bm!571101 () Bool)

(declare-fun call!571107 () List!65617)

(declare-fun call!571111 () List!65617)

(assert (=> bm!571101 (= call!571107 call!571111)))

(declare-fun b!6564301 () Bool)

(declare-fun e!3973666 () (InoxSet Context!11646))

(assert (=> b!6564301 (= e!3973666 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (t!379259 (exprs!6323 lt!2406386))) true))))

(declare-fun b!6564302 () Bool)

(declare-fun e!3973669 () (InoxSet Context!11646))

(declare-fun e!3973668 () (InoxSet Context!11646))

(assert (=> b!6564302 (= e!3973669 e!3973668)))

(declare-fun c!1206442 () Bool)

(assert (=> b!6564302 (= c!1206442 ((_ is Concat!25284) (h!71941 (exprs!6323 lt!2406386))))))

(declare-fun b!6564303 () Bool)

(declare-fun e!3973667 () (InoxSet Context!11646))

(declare-fun call!571110 () (InoxSet Context!11646))

(assert (=> b!6564303 (= e!3973667 call!571110)))

(declare-fun b!6564304 () Bool)

(declare-fun call!571109 () (InoxSet Context!11646))

(declare-fun call!571106 () (InoxSet Context!11646))

(assert (=> b!6564304 (= e!3973669 ((_ map or) call!571109 call!571106))))

(declare-fun c!1206440 () Bool)

(declare-fun bm!571102 () Bool)

(assert (=> bm!571102 (= call!571109 (derivationStepZipperDown!1687 (ite c!1206440 (regOne!33391 (h!71941 (exprs!6323 lt!2406386))) (regOne!33390 (h!71941 (exprs!6323 lt!2406386)))) (ite c!1206440 (Context!11647 (t!379259 (exprs!6323 lt!2406386))) (Context!11647 call!571111)) (h!71940 s!2326)))))

(declare-fun b!6564305 () Bool)

(assert (=> b!6564305 (= e!3973668 call!571110)))

(declare-fun c!1206444 () Bool)

(declare-fun bm!571103 () Bool)

(declare-fun call!571108 () (InoxSet Context!11646))

(assert (=> bm!571103 (= call!571108 (derivationStepZipperDown!1687 (ite c!1206440 (regTwo!33391 (h!71941 (exprs!6323 lt!2406386))) (ite c!1206444 (regTwo!33390 (h!71941 (exprs!6323 lt!2406386))) (ite c!1206442 (regOne!33390 (h!71941 (exprs!6323 lt!2406386))) (reg!16768 (h!71941 (exprs!6323 lt!2406386)))))) (ite (or c!1206440 c!1206444) (Context!11647 (t!379259 (exprs!6323 lt!2406386))) (Context!11647 call!571107)) (h!71940 s!2326)))))

(declare-fun b!6564306 () Bool)

(declare-fun e!3973664 () Bool)

(assert (=> b!6564306 (= e!3973664 (nullable!6432 (regOne!33390 (h!71941 (exprs!6323 lt!2406386)))))))

(declare-fun bm!571104 () Bool)

(assert (=> bm!571104 (= call!571110 call!571106)))

(declare-fun bm!571105 () Bool)

(assert (=> bm!571105 (= call!571106 call!571108)))

(declare-fun b!6564307 () Bool)

(declare-fun c!1206443 () Bool)

(assert (=> b!6564307 (= c!1206443 ((_ is Star!16439) (h!71941 (exprs!6323 lt!2406386))))))

(assert (=> b!6564307 (= e!3973668 e!3973667)))

(declare-fun b!6564308 () Bool)

(assert (=> b!6564308 (= e!3973667 ((as const (Array Context!11646 Bool)) false))))

(declare-fun b!6564309 () Bool)

(declare-fun e!3973665 () (InoxSet Context!11646))

(assert (=> b!6564309 (= e!3973666 e!3973665)))

(assert (=> b!6564309 (= c!1206440 ((_ is Union!16439) (h!71941 (exprs!6323 lt!2406386))))))

(declare-fun bm!571106 () Bool)

(assert (=> bm!571106 (= call!571111 ($colon$colon!2280 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406386)))) (ite (or c!1206444 c!1206442) (regTwo!33390 (h!71941 (exprs!6323 lt!2406386))) (h!71941 (exprs!6323 lt!2406386)))))))

(declare-fun b!6564310 () Bool)

(assert (=> b!6564310 (= e!3973665 ((_ map or) call!571109 call!571108))))

(declare-fun d!2059741 () Bool)

(declare-fun c!1206441 () Bool)

(assert (=> d!2059741 (= c!1206441 (and ((_ is ElementMatch!16439) (h!71941 (exprs!6323 lt!2406386))) (= (c!1205620 (h!71941 (exprs!6323 lt!2406386))) (h!71940 s!2326))))))

(assert (=> d!2059741 (= (derivationStepZipperDown!1687 (h!71941 (exprs!6323 lt!2406386)) (Context!11647 (t!379259 (exprs!6323 lt!2406386))) (h!71940 s!2326)) e!3973666)))

(declare-fun b!6564311 () Bool)

(assert (=> b!6564311 (= c!1206444 e!3973664)))

(declare-fun res!2693656 () Bool)

(assert (=> b!6564311 (=> (not res!2693656) (not e!3973664))))

(assert (=> b!6564311 (= res!2693656 ((_ is Concat!25284) (h!71941 (exprs!6323 lt!2406386))))))

(assert (=> b!6564311 (= e!3973665 e!3973669)))

(assert (= (and d!2059741 c!1206441) b!6564301))

(assert (= (and d!2059741 (not c!1206441)) b!6564309))

(assert (= (and b!6564309 c!1206440) b!6564310))

(assert (= (and b!6564309 (not c!1206440)) b!6564311))

(assert (= (and b!6564311 res!2693656) b!6564306))

(assert (= (and b!6564311 c!1206444) b!6564304))

(assert (= (and b!6564311 (not c!1206444)) b!6564302))

(assert (= (and b!6564302 c!1206442) b!6564305))

(assert (= (and b!6564302 (not c!1206442)) b!6564307))

(assert (= (and b!6564307 c!1206443) b!6564303))

(assert (= (and b!6564307 (not c!1206443)) b!6564308))

(assert (= (or b!6564305 b!6564303) bm!571101))

(assert (= (or b!6564305 b!6564303) bm!571104))

(assert (= (or b!6564304 bm!571101) bm!571106))

(assert (= (or b!6564304 bm!571104) bm!571105))

(assert (= (or b!6564310 bm!571105) bm!571103))

(assert (= (or b!6564310 b!6564304) bm!571102))

(declare-fun m!7346474 () Bool)

(assert (=> b!6564306 m!7346474))

(declare-fun m!7346476 () Bool)

(assert (=> b!6564301 m!7346476))

(declare-fun m!7346478 () Bool)

(assert (=> bm!571106 m!7346478))

(declare-fun m!7346480 () Bool)

(assert (=> bm!571102 m!7346480))

(declare-fun m!7346482 () Bool)

(assert (=> bm!571103 m!7346482))

(assert (=> bm!570773 d!2059741))

(declare-fun b!6564312 () Bool)

(declare-fun e!3973672 () Bool)

(declare-fun e!3973675 () Bool)

(assert (=> b!6564312 (= e!3973672 e!3973675)))

(declare-fun res!2693663 () Bool)

(assert (=> b!6564312 (=> (not res!2693663) (not e!3973675))))

(declare-fun lt!2406745 () Bool)

(assert (=> b!6564312 (= res!2693663 (not lt!2406745))))

(declare-fun b!6564313 () Bool)

(declare-fun res!2693660 () Bool)

(declare-fun e!3973674 () Bool)

(assert (=> b!6564313 (=> res!2693660 e!3973674)))

(assert (=> b!6564313 (= res!2693660 (not (isEmpty!37737 (tail!12414 (tail!12414 lt!2406375)))))))

(declare-fun b!6564314 () Bool)

(declare-fun e!3973670 () Bool)

(declare-fun call!571112 () Bool)

(assert (=> b!6564314 (= e!3973670 (= lt!2406745 call!571112))))

(declare-fun b!6564316 () Bool)

(declare-fun res!2693659 () Bool)

(declare-fun e!3973673 () Bool)

(assert (=> b!6564316 (=> (not res!2693659) (not e!3973673))))

(assert (=> b!6564316 (= res!2693659 (isEmpty!37737 (tail!12414 (tail!12414 lt!2406375))))))

(declare-fun b!6564317 () Bool)

(assert (=> b!6564317 (= e!3973673 (= (head!13329 (tail!12414 lt!2406375)) (c!1205620 (derivativeStep!5123 lt!2406349 (head!13329 lt!2406375)))))))

(declare-fun b!6564318 () Bool)

(declare-fun res!2693661 () Bool)

(assert (=> b!6564318 (=> res!2693661 e!3973672)))

(assert (=> b!6564318 (= res!2693661 e!3973673)))

(declare-fun res!2693657 () Bool)

(assert (=> b!6564318 (=> (not res!2693657) (not e!3973673))))

(assert (=> b!6564318 (= res!2693657 lt!2406745)))

(declare-fun b!6564319 () Bool)

(declare-fun e!3973676 () Bool)

(assert (=> b!6564319 (= e!3973676 (not lt!2406745))))

(declare-fun b!6564320 () Bool)

(declare-fun res!2693664 () Bool)

(assert (=> b!6564320 (=> (not res!2693664) (not e!3973673))))

(assert (=> b!6564320 (= res!2693664 (not call!571112))))

(declare-fun b!6564321 () Bool)

(assert (=> b!6564321 (= e!3973675 e!3973674)))

(declare-fun res!2693658 () Bool)

(assert (=> b!6564321 (=> res!2693658 e!3973674)))

(assert (=> b!6564321 (= res!2693658 call!571112)))

(declare-fun b!6564322 () Bool)

(declare-fun e!3973671 () Bool)

(assert (=> b!6564322 (= e!3973671 (nullable!6432 (derivativeStep!5123 lt!2406349 (head!13329 lt!2406375))))))

(declare-fun bm!571107 () Bool)

(assert (=> bm!571107 (= call!571112 (isEmpty!37737 (tail!12414 lt!2406375)))))

(declare-fun b!6564323 () Bool)

(assert (=> b!6564323 (= e!3973670 e!3973676)))

(declare-fun c!1206445 () Bool)

(assert (=> b!6564323 (= c!1206445 ((_ is EmptyLang!16439) (derivativeStep!5123 lt!2406349 (head!13329 lt!2406375))))))

(declare-fun b!6564324 () Bool)

(declare-fun res!2693662 () Bool)

(assert (=> b!6564324 (=> res!2693662 e!3973672)))

(assert (=> b!6564324 (= res!2693662 (not ((_ is ElementMatch!16439) (derivativeStep!5123 lt!2406349 (head!13329 lt!2406375)))))))

(assert (=> b!6564324 (= e!3973676 e!3973672)))

(declare-fun b!6564325 () Bool)

(assert (=> b!6564325 (= e!3973671 (matchR!8622 (derivativeStep!5123 (derivativeStep!5123 lt!2406349 (head!13329 lt!2406375)) (head!13329 (tail!12414 lt!2406375))) (tail!12414 (tail!12414 lt!2406375))))))

(declare-fun d!2059743 () Bool)

(assert (=> d!2059743 e!3973670))

(declare-fun c!1206447 () Bool)

(assert (=> d!2059743 (= c!1206447 ((_ is EmptyExpr!16439) (derivativeStep!5123 lt!2406349 (head!13329 lt!2406375))))))

(assert (=> d!2059743 (= lt!2406745 e!3973671)))

(declare-fun c!1206446 () Bool)

(assert (=> d!2059743 (= c!1206446 (isEmpty!37737 (tail!12414 lt!2406375)))))

(assert (=> d!2059743 (validRegex!8175 (derivativeStep!5123 lt!2406349 (head!13329 lt!2406375)))))

(assert (=> d!2059743 (= (matchR!8622 (derivativeStep!5123 lt!2406349 (head!13329 lt!2406375)) (tail!12414 lt!2406375)) lt!2406745)))

(declare-fun b!6564315 () Bool)

(assert (=> b!6564315 (= e!3973674 (not (= (head!13329 (tail!12414 lt!2406375)) (c!1205620 (derivativeStep!5123 lt!2406349 (head!13329 lt!2406375))))))))

(assert (= (and d!2059743 c!1206446) b!6564322))

(assert (= (and d!2059743 (not c!1206446)) b!6564325))

(assert (= (and d!2059743 c!1206447) b!6564314))

(assert (= (and d!2059743 (not c!1206447)) b!6564323))

(assert (= (and b!6564323 c!1206445) b!6564319))

(assert (= (and b!6564323 (not c!1206445)) b!6564324))

(assert (= (and b!6564324 (not res!2693662)) b!6564318))

(assert (= (and b!6564318 res!2693657) b!6564320))

(assert (= (and b!6564320 res!2693664) b!6564316))

(assert (= (and b!6564316 res!2693659) b!6564317))

(assert (= (and b!6564318 (not res!2693661)) b!6564312))

(assert (= (and b!6564312 res!2693663) b!6564321))

(assert (= (and b!6564321 (not res!2693658)) b!6564313))

(assert (= (and b!6564313 (not res!2693660)) b!6564315))

(assert (= (or b!6564314 b!6564320 b!6564321) bm!571107))

(assert (=> bm!571107 m!7344354))

(assert (=> bm!571107 m!7344356))

(assert (=> d!2059743 m!7344354))

(assert (=> d!2059743 m!7344356))

(assert (=> d!2059743 m!7344362))

(declare-fun m!7346484 () Bool)

(assert (=> d!2059743 m!7346484))

(assert (=> b!6564316 m!7344354))

(declare-fun m!7346486 () Bool)

(assert (=> b!6564316 m!7346486))

(assert (=> b!6564316 m!7346486))

(declare-fun m!7346488 () Bool)

(assert (=> b!6564316 m!7346488))

(assert (=> b!6564317 m!7344354))

(declare-fun m!7346490 () Bool)

(assert (=> b!6564317 m!7346490))

(assert (=> b!6564315 m!7344354))

(assert (=> b!6564315 m!7346490))

(assert (=> b!6564313 m!7344354))

(assert (=> b!6564313 m!7346486))

(assert (=> b!6564313 m!7346486))

(assert (=> b!6564313 m!7346488))

(assert (=> b!6564322 m!7344362))

(declare-fun m!7346492 () Bool)

(assert (=> b!6564322 m!7346492))

(assert (=> b!6564325 m!7344354))

(assert (=> b!6564325 m!7346490))

(assert (=> b!6564325 m!7344362))

(assert (=> b!6564325 m!7346490))

(declare-fun m!7346494 () Bool)

(assert (=> b!6564325 m!7346494))

(assert (=> b!6564325 m!7344354))

(assert (=> b!6564325 m!7346486))

(assert (=> b!6564325 m!7346494))

(assert (=> b!6564325 m!7346486))

(declare-fun m!7346496 () Bool)

(assert (=> b!6564325 m!7346496))

(assert (=> b!6562315 d!2059743))

(declare-fun bm!571108 () Bool)

(declare-fun call!571114 () Regex!16439)

(declare-fun call!571113 () Regex!16439)

(assert (=> bm!571108 (= call!571114 call!571113)))

(declare-fun call!571115 () Regex!16439)

(declare-fun b!6564327 () Bool)

(declare-fun e!3973680 () Regex!16439)

(assert (=> b!6564327 (= e!3973680 (Union!16439 (Concat!25284 call!571115 (regTwo!33390 lt!2406349)) call!571114))))

(declare-fun c!1206450 () Bool)

(declare-fun bm!571109 () Bool)

(assert (=> bm!571109 (= call!571115 (derivativeStep!5123 (ite c!1206450 (regOne!33391 lt!2406349) (regOne!33390 lt!2406349)) (head!13329 lt!2406375)))))

(declare-fun b!6564328 () Bool)

(declare-fun e!3973681 () Regex!16439)

(assert (=> b!6564328 (= e!3973681 EmptyLang!16439)))

(declare-fun b!6564329 () Bool)

(declare-fun e!3973679 () Regex!16439)

(assert (=> b!6564329 (= e!3973679 (ite (= (head!13329 lt!2406375) (c!1205620 lt!2406349)) EmptyExpr!16439 EmptyLang!16439))))

(declare-fun b!6564330 () Bool)

(declare-fun c!1206452 () Bool)

(assert (=> b!6564330 (= c!1206452 (nullable!6432 (regOne!33390 lt!2406349)))))

(declare-fun e!3973677 () Regex!16439)

(assert (=> b!6564330 (= e!3973677 e!3973680)))

(declare-fun b!6564331 () Bool)

(assert (=> b!6564331 (= c!1206450 ((_ is Union!16439) lt!2406349))))

(declare-fun e!3973678 () Regex!16439)

(assert (=> b!6564331 (= e!3973679 e!3973678)))

(declare-fun bm!571110 () Bool)

(declare-fun call!571116 () Regex!16439)

(declare-fun c!1206451 () Bool)

(assert (=> bm!571110 (= call!571116 (derivativeStep!5123 (ite c!1206450 (regTwo!33391 lt!2406349) (ite c!1206451 (reg!16768 lt!2406349) (ite c!1206452 (regTwo!33390 lt!2406349) (regOne!33390 lt!2406349)))) (head!13329 lt!2406375)))))

(declare-fun b!6564332 () Bool)

(assert (=> b!6564332 (= e!3973680 (Union!16439 (Concat!25284 call!571114 (regTwo!33390 lt!2406349)) EmptyLang!16439))))

(declare-fun b!6564326 () Bool)

(assert (=> b!6564326 (= e!3973677 (Concat!25284 call!571113 lt!2406349))))

(declare-fun d!2059745 () Bool)

(declare-fun lt!2406746 () Regex!16439)

(assert (=> d!2059745 (validRegex!8175 lt!2406746)))

(assert (=> d!2059745 (= lt!2406746 e!3973681)))

(declare-fun c!1206448 () Bool)

(assert (=> d!2059745 (= c!1206448 (or ((_ is EmptyExpr!16439) lt!2406349) ((_ is EmptyLang!16439) lt!2406349)))))

(assert (=> d!2059745 (validRegex!8175 lt!2406349)))

(assert (=> d!2059745 (= (derivativeStep!5123 lt!2406349 (head!13329 lt!2406375)) lt!2406746)))

(declare-fun b!6564333 () Bool)

(assert (=> b!6564333 (= e!3973678 (Union!16439 call!571115 call!571116))))

(declare-fun b!6564334 () Bool)

(assert (=> b!6564334 (= e!3973678 e!3973677)))

(assert (=> b!6564334 (= c!1206451 ((_ is Star!16439) lt!2406349))))

(declare-fun b!6564335 () Bool)

(assert (=> b!6564335 (= e!3973681 e!3973679)))

(declare-fun c!1206449 () Bool)

(assert (=> b!6564335 (= c!1206449 ((_ is ElementMatch!16439) lt!2406349))))

(declare-fun bm!571111 () Bool)

(assert (=> bm!571111 (= call!571113 call!571116)))

(assert (= (and d!2059745 c!1206448) b!6564328))

(assert (= (and d!2059745 (not c!1206448)) b!6564335))

(assert (= (and b!6564335 c!1206449) b!6564329))

(assert (= (and b!6564335 (not c!1206449)) b!6564331))

(assert (= (and b!6564331 c!1206450) b!6564333))

(assert (= (and b!6564331 (not c!1206450)) b!6564334))

(assert (= (and b!6564334 c!1206451) b!6564326))

(assert (= (and b!6564334 (not c!1206451)) b!6564330))

(assert (= (and b!6564330 c!1206452) b!6564327))

(assert (= (and b!6564330 (not c!1206452)) b!6564332))

(assert (= (or b!6564327 b!6564332) bm!571108))

(assert (= (or b!6564326 bm!571108) bm!571111))

(assert (= (or b!6564333 bm!571111) bm!571110))

(assert (= (or b!6564333 b!6564327) bm!571109))

(assert (=> bm!571109 m!7344358))

(declare-fun m!7346498 () Bool)

(assert (=> bm!571109 m!7346498))

(declare-fun m!7346500 () Bool)

(assert (=> b!6564330 m!7346500))

(assert (=> bm!571110 m!7344358))

(declare-fun m!7346502 () Bool)

(assert (=> bm!571110 m!7346502))

(declare-fun m!7346504 () Bool)

(assert (=> d!2059745 m!7346504))

(assert (=> d!2059745 m!7344352))

(assert (=> b!6562315 d!2059745))

(assert (=> b!6562315 d!2059585))

(assert (=> b!6562315 d!2059707))

(declare-fun d!2059747 () Bool)

(assert (=> d!2059747 (= (isEmpty!37733 (unfocusZipperList!1860 zl!343)) ((_ is Nil!65493) (unfocusZipperList!1860 zl!343)))))

(assert (=> b!6562095 d!2059747))

(assert (=> bm!570758 d!2059503))

(declare-fun bs!1676213 () Bool)

(declare-fun b!6564344 () Bool)

(assert (= bs!1676213 (and b!6564344 d!2058817)))

(declare-fun lambda!365245 () Int)

(assert (=> bs!1676213 (not (= lambda!365245 lambda!365141))))

(declare-fun bs!1676214 () Bool)

(assert (= bs!1676214 (and b!6564344 b!6564157)))

(assert (=> bs!1676214 (= (and (= (reg!16768 (regTwo!33391 lt!2406396)) (reg!16768 (regTwo!33391 r!7292))) (= (regTwo!33391 lt!2406396) (regTwo!33391 r!7292))) (= lambda!365245 lambda!365241))))

(declare-fun bs!1676215 () Bool)

(assert (= bs!1676215 (and b!6564344 d!2058767)))

(assert (=> bs!1676215 (not (= lambda!365245 lambda!365131))))

(declare-fun bs!1676216 () Bool)

(assert (= bs!1676216 (and b!6564344 d!2059477)))

(assert (=> bs!1676216 (not (= lambda!365245 lambda!365225))))

(declare-fun bs!1676217 () Bool)

(assert (= bs!1676217 (and b!6564344 b!6561249)))

(assert (=> bs!1676217 (not (= lambda!365245 lambda!365048))))

(declare-fun bs!1676218 () Bool)

(assert (= bs!1676218 (and b!6564344 d!2058617)))

(assert (=> bs!1676218 (not (= lambda!365245 lambda!365100))))

(declare-fun bs!1676219 () Bool)

(assert (= bs!1676219 (and b!6564344 b!6563928)))

(assert (=> bs!1676219 (= (and (= (reg!16768 (regTwo!33391 lt!2406396)) (reg!16768 (regOne!33391 lt!2406349))) (= (regTwo!33391 lt!2406396) (regOne!33391 lt!2406349))) (= lambda!365245 lambda!365231))))

(declare-fun bs!1676220 () Bool)

(assert (= bs!1676220 (and b!6564344 d!2059659)))

(assert (=> bs!1676220 (not (= lambda!365245 lambda!365239))))

(declare-fun bs!1676221 () Bool)

(assert (= bs!1676221 (and b!6564344 b!6561283)))

(assert (=> bs!1676221 (not (= lambda!365245 lambda!365041))))

(assert (=> bs!1676221 (not (= lambda!365245 lambda!365042))))

(assert (=> bs!1676215 (not (= lambda!365245 lambda!365130))))

(declare-fun bs!1676222 () Bool)

(assert (= bs!1676222 (and b!6564344 b!6562199)))

(assert (=> bs!1676222 (= (and (= (reg!16768 (regTwo!33391 lt!2406396)) (reg!16768 r!7292)) (= (regTwo!33391 lt!2406396) r!7292)) (= lambda!365245 lambda!365132))))

(declare-fun bs!1676223 () Bool)

(assert (= bs!1676223 (and b!6564344 d!2058793)))

(assert (=> bs!1676223 (not (= lambda!365245 lambda!365135))))

(declare-fun bs!1676224 () Bool)

(assert (= bs!1676224 (and b!6564344 b!6561898)))

(assert (=> bs!1676224 (not (= lambda!365245 lambda!365111))))

(assert (=> bs!1676220 (not (= lambda!365245 lambda!365238))))

(declare-fun bs!1676225 () Bool)

(assert (= bs!1676225 (and b!6564344 d!2058681)))

(assert (=> bs!1676225 (not (= lambda!365245 lambda!365116))))

(declare-fun bs!1676226 () Bool)

(assert (= bs!1676226 (and b!6564344 b!6562323)))

(assert (=> bs!1676226 (not (= lambda!365245 lambda!365140))))

(declare-fun bs!1676227 () Bool)

(assert (= bs!1676227 (and b!6564344 b!6563924)))

(assert (=> bs!1676227 (not (= lambda!365245 lambda!365232))))

(declare-fun bs!1676228 () Bool)

(assert (= bs!1676228 (and b!6564344 b!6561287)))

(assert (=> bs!1676228 (not (= lambda!365245 lambda!365047))))

(declare-fun bs!1676229 () Bool)

(assert (= bs!1676229 (and b!6564344 d!2058765)))

(assert (=> bs!1676229 (not (= lambda!365245 lambda!365129))))

(declare-fun bs!1676230 () Bool)

(assert (= bs!1676230 (and b!6564344 b!6562327)))

(assert (=> bs!1676230 (= (and (= (reg!16768 (regTwo!33391 lt!2406396)) (reg!16768 lt!2406396)) (= (regTwo!33391 lt!2406396) lt!2406396)) (= lambda!365245 lambda!365139))))

(declare-fun bs!1676231 () Bool)

(assert (= bs!1676231 (and b!6564344 b!6562195)))

(assert (=> bs!1676231 (not (= lambda!365245 lambda!365133))))

(assert (=> bs!1676223 (not (= lambda!365245 lambda!365134))))

(assert (=> bs!1676218 (not (= lambda!365245 lambda!365097))))

(declare-fun bs!1676232 () Bool)

(assert (= bs!1676232 (and b!6564344 b!6561902)))

(assert (=> bs!1676232 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (reg!16768 (regTwo!33391 lt!2406396)) (reg!16768 lt!2406360)) (= (regTwo!33391 lt!2406396) lt!2406360)) (= lambda!365245 lambda!365109))))

(declare-fun bs!1676233 () Bool)

(assert (= bs!1676233 (and b!6564344 b!6564153)))

(assert (=> bs!1676233 (not (= lambda!365245 lambda!365242))))

(assert (=> bs!1676216 (not (= lambda!365245 lambda!365226))))

(declare-fun bs!1676234 () Bool)

(assert (= bs!1676234 (and b!6564344 b!6562412)))

(assert (=> bs!1676234 (= (and (= (reg!16768 (regTwo!33391 lt!2406396)) (reg!16768 lt!2406349)) (= (regTwo!33391 lt!2406396) lt!2406349)) (= lambda!365245 lambda!365150))))

(declare-fun bs!1676235 () Bool)

(assert (= bs!1676235 (and b!6564344 b!6562408)))

(assert (=> bs!1676235 (not (= lambda!365245 lambda!365151))))

(declare-fun bs!1676236 () Bool)

(assert (= bs!1676236 (and b!6564344 b!6563956)))

(assert (=> bs!1676236 (= (and (= (reg!16768 (regTwo!33391 lt!2406396)) (reg!16768 (regOne!33391 r!7292))) (= (regTwo!33391 lt!2406396) (regOne!33391 r!7292))) (= lambda!365245 lambda!365234))))

(assert (=> bs!1676228 (not (= lambda!365245 lambda!365046))))

(declare-fun bs!1676237 () Bool)

(assert (= bs!1676237 (and b!6564344 b!6563952)))

(assert (=> bs!1676237 (not (= lambda!365245 lambda!365235))))

(assert (=> bs!1676217 (not (= lambda!365245 lambda!365049))))

(assert (=> b!6564344 true))

(assert (=> b!6564344 true))

(declare-fun bs!1676238 () Bool)

(declare-fun b!6564340 () Bool)

(assert (= bs!1676238 (and b!6564340 d!2058817)))

(declare-fun lambda!365246 () Int)

(assert (=> bs!1676238 (not (= lambda!365246 lambda!365141))))

(declare-fun bs!1676239 () Bool)

(assert (= bs!1676239 (and b!6564340 b!6564157)))

(assert (=> bs!1676239 (not (= lambda!365246 lambda!365241))))

(declare-fun bs!1676240 () Bool)

(assert (= bs!1676240 (and b!6564340 d!2058767)))

(assert (=> bs!1676240 (= (and (= (regOne!33390 (regTwo!33391 lt!2406396)) (regOne!33390 r!7292)) (= (regTwo!33390 (regTwo!33391 lt!2406396)) (regTwo!33390 r!7292))) (= lambda!365246 lambda!365131))))

(declare-fun bs!1676241 () Bool)

(assert (= bs!1676241 (and b!6564340 d!2059477)))

(assert (=> bs!1676241 (not (= lambda!365246 lambda!365225))))

(declare-fun bs!1676242 () Bool)

(assert (= bs!1676242 (and b!6564340 b!6561249)))

(assert (=> bs!1676242 (not (= lambda!365246 lambda!365048))))

(declare-fun bs!1676243 () Bool)

(assert (= bs!1676243 (and b!6564340 d!2058617)))

(assert (=> bs!1676243 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regTwo!33391 lt!2406396)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regTwo!33391 lt!2406396)) lt!2406358)) (= lambda!365246 lambda!365100))))

(declare-fun bs!1676244 () Bool)

(assert (= bs!1676244 (and b!6564340 d!2059659)))

(assert (=> bs!1676244 (= (and (= (regOne!33390 (regTwo!33391 lt!2406396)) lt!2406360) (= (regTwo!33390 (regTwo!33391 lt!2406396)) (regTwo!33390 r!7292))) (= lambda!365246 lambda!365239))))

(declare-fun bs!1676245 () Bool)

(assert (= bs!1676245 (and b!6564340 b!6561283)))

(assert (=> bs!1676245 (not (= lambda!365246 lambda!365041))))

(assert (=> bs!1676245 (= (and (= (regOne!33390 (regTwo!33391 lt!2406396)) (regOne!33390 r!7292)) (= (regTwo!33390 (regTwo!33391 lt!2406396)) (regTwo!33390 r!7292))) (= lambda!365246 lambda!365042))))

(assert (=> bs!1676240 (not (= lambda!365246 lambda!365130))))

(declare-fun bs!1676246 () Bool)

(assert (= bs!1676246 (and b!6564340 b!6562199)))

(assert (=> bs!1676246 (not (= lambda!365246 lambda!365132))))

(declare-fun bs!1676247 () Bool)

(assert (= bs!1676247 (and b!6564340 d!2058793)))

(assert (=> bs!1676247 (= (and (= (regOne!33390 (regTwo!33391 lt!2406396)) lt!2406360) (= (regTwo!33390 (regTwo!33391 lt!2406396)) (regTwo!33390 r!7292))) (= lambda!365246 lambda!365135))))

(declare-fun bs!1676248 () Bool)

(assert (= bs!1676248 (and b!6564340 b!6561898)))

(assert (=> bs!1676248 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regTwo!33391 lt!2406396)) (regOne!33390 lt!2406360)) (= (regTwo!33390 (regTwo!33391 lt!2406396)) (regTwo!33390 lt!2406360))) (= lambda!365246 lambda!365111))))

(assert (=> bs!1676244 (not (= lambda!365246 lambda!365238))))

(declare-fun bs!1676249 () Bool)

(assert (= bs!1676249 (and b!6564340 d!2058681)))

(assert (=> bs!1676249 (not (= lambda!365246 lambda!365116))))

(declare-fun bs!1676250 () Bool)

(assert (= bs!1676250 (and b!6564340 b!6562323)))

(assert (=> bs!1676250 (= (and (= (regOne!33390 (regTwo!33391 lt!2406396)) (regOne!33390 lt!2406396)) (= (regTwo!33390 (regTwo!33391 lt!2406396)) (regTwo!33390 lt!2406396))) (= lambda!365246 lambda!365140))))

(declare-fun bs!1676251 () Bool)

(assert (= bs!1676251 (and b!6564340 b!6563924)))

(assert (=> bs!1676251 (= (and (= (regOne!33390 (regTwo!33391 lt!2406396)) (regOne!33390 (regOne!33391 lt!2406349))) (= (regTwo!33390 (regTwo!33391 lt!2406396)) (regTwo!33390 (regOne!33391 lt!2406349)))) (= lambda!365246 lambda!365232))))

(declare-fun bs!1676252 () Bool)

(assert (= bs!1676252 (and b!6564340 b!6561287)))

(assert (=> bs!1676252 (= (and (= (regOne!33390 (regTwo!33391 lt!2406396)) lt!2406360) (= (regTwo!33390 (regTwo!33391 lt!2406396)) (regTwo!33390 r!7292))) (= lambda!365246 lambda!365047))))

(declare-fun bs!1676253 () Bool)

(assert (= bs!1676253 (and b!6564340 d!2058765)))

(assert (=> bs!1676253 (not (= lambda!365246 lambda!365129))))

(declare-fun bs!1676254 () Bool)

(assert (= bs!1676254 (and b!6564340 b!6562327)))

(assert (=> bs!1676254 (not (= lambda!365246 lambda!365139))))

(declare-fun bs!1676255 () Bool)

(assert (= bs!1676255 (and b!6564340 b!6562195)))

(assert (=> bs!1676255 (= (and (= (regOne!33390 (regTwo!33391 lt!2406396)) (regOne!33390 r!7292)) (= (regTwo!33390 (regTwo!33391 lt!2406396)) (regTwo!33390 r!7292))) (= lambda!365246 lambda!365133))))

(declare-fun bs!1676256 () Bool)

(assert (= bs!1676256 (and b!6564340 b!6563928)))

(assert (=> bs!1676256 (not (= lambda!365246 lambda!365231))))

(declare-fun bs!1676257 () Bool)

(assert (= bs!1676257 (and b!6564340 b!6564344)))

(assert (=> bs!1676257 (not (= lambda!365246 lambda!365245))))

(assert (=> bs!1676247 (not (= lambda!365246 lambda!365134))))

(assert (=> bs!1676243 (not (= lambda!365246 lambda!365097))))

(declare-fun bs!1676258 () Bool)

(assert (= bs!1676258 (and b!6564340 b!6561902)))

(assert (=> bs!1676258 (not (= lambda!365246 lambda!365109))))

(declare-fun bs!1676259 () Bool)

(assert (= bs!1676259 (and b!6564340 b!6564153)))

(assert (=> bs!1676259 (= (and (= (regOne!33390 (regTwo!33391 lt!2406396)) (regOne!33390 (regTwo!33391 r!7292))) (= (regTwo!33390 (regTwo!33391 lt!2406396)) (regTwo!33390 (regTwo!33391 r!7292)))) (= lambda!365246 lambda!365242))))

(assert (=> bs!1676241 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regTwo!33391 lt!2406396)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regTwo!33391 lt!2406396)) lt!2406358)) (= lambda!365246 lambda!365226))))

(declare-fun bs!1676260 () Bool)

(assert (= bs!1676260 (and b!6564340 b!6562412)))

(assert (=> bs!1676260 (not (= lambda!365246 lambda!365150))))

(declare-fun bs!1676261 () Bool)

(assert (= bs!1676261 (and b!6564340 b!6562408)))

(assert (=> bs!1676261 (= (and (= (regOne!33390 (regTwo!33391 lt!2406396)) (regOne!33390 lt!2406349)) (= (regTwo!33390 (regTwo!33391 lt!2406396)) (regTwo!33390 lt!2406349))) (= lambda!365246 lambda!365151))))

(declare-fun bs!1676262 () Bool)

(assert (= bs!1676262 (and b!6564340 b!6563956)))

(assert (=> bs!1676262 (not (= lambda!365246 lambda!365234))))

(assert (=> bs!1676252 (not (= lambda!365246 lambda!365046))))

(declare-fun bs!1676263 () Bool)

(assert (= bs!1676263 (and b!6564340 b!6563952)))

(assert (=> bs!1676263 (= (and (= (regOne!33390 (regTwo!33391 lt!2406396)) (regOne!33390 (regOne!33391 r!7292))) (= (regTwo!33390 (regTwo!33391 lt!2406396)) (regTwo!33390 (regOne!33391 r!7292)))) (= lambda!365246 lambda!365235))))

(assert (=> bs!1676242 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regTwo!33391 lt!2406396)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regTwo!33391 lt!2406396)) lt!2406358)) (= lambda!365246 lambda!365049))))

(assert (=> b!6564340 true))

(assert (=> b!6564340 true))

(declare-fun b!6564336 () Bool)

(declare-fun c!1206456 () Bool)

(assert (=> b!6564336 (= c!1206456 ((_ is ElementMatch!16439) (regTwo!33391 lt!2406396)))))

(declare-fun e!3973685 () Bool)

(declare-fun e!3973687 () Bool)

(assert (=> b!6564336 (= e!3973685 e!3973687)))

(declare-fun b!6564337 () Bool)

(declare-fun res!2693666 () Bool)

(declare-fun e!3973688 () Bool)

(assert (=> b!6564337 (=> res!2693666 e!3973688)))

(declare-fun call!571118 () Bool)

(assert (=> b!6564337 (= res!2693666 call!571118)))

(declare-fun e!3973684 () Bool)

(assert (=> b!6564337 (= e!3973684 e!3973688)))

(declare-fun b!6564338 () Bool)

(declare-fun e!3973682 () Bool)

(declare-fun e!3973683 () Bool)

(assert (=> b!6564338 (= e!3973682 e!3973683)))

(declare-fun res!2693667 () Bool)

(assert (=> b!6564338 (= res!2693667 (matchRSpec!3540 (regOne!33391 (regTwo!33391 lt!2406396)) s!2326))))

(assert (=> b!6564338 (=> res!2693667 e!3973683)))

(declare-fun b!6564339 () Bool)

(declare-fun e!3973686 () Bool)

(assert (=> b!6564339 (= e!3973686 call!571118)))

(declare-fun call!571117 () Bool)

(assert (=> b!6564340 (= e!3973684 call!571117)))

(declare-fun b!6564341 () Bool)

(assert (=> b!6564341 (= e!3973687 (= s!2326 (Cons!65492 (c!1205620 (regTwo!33391 lt!2406396)) Nil!65492)))))

(declare-fun bm!571112 () Bool)

(assert (=> bm!571112 (= call!571118 (isEmpty!37737 s!2326))))

(declare-fun b!6564342 () Bool)

(declare-fun c!1206453 () Bool)

(assert (=> b!6564342 (= c!1206453 ((_ is Union!16439) (regTwo!33391 lt!2406396)))))

(assert (=> b!6564342 (= e!3973687 e!3973682)))

(declare-fun b!6564343 () Bool)

(assert (=> b!6564343 (= e!3973682 e!3973684)))

(declare-fun c!1206454 () Bool)

(assert (=> b!6564343 (= c!1206454 ((_ is Star!16439) (regTwo!33391 lt!2406396)))))

(declare-fun d!2059749 () Bool)

(declare-fun c!1206455 () Bool)

(assert (=> d!2059749 (= c!1206455 ((_ is EmptyExpr!16439) (regTwo!33391 lt!2406396)))))

(assert (=> d!2059749 (= (matchRSpec!3540 (regTwo!33391 lt!2406396) s!2326) e!3973686)))

(assert (=> b!6564344 (= e!3973688 call!571117)))

(declare-fun b!6564345 () Bool)

(assert (=> b!6564345 (= e!3973686 e!3973685)))

(declare-fun res!2693665 () Bool)

(assert (=> b!6564345 (= res!2693665 (not ((_ is EmptyLang!16439) (regTwo!33391 lt!2406396))))))

(assert (=> b!6564345 (=> (not res!2693665) (not e!3973685))))

(declare-fun b!6564346 () Bool)

(assert (=> b!6564346 (= e!3973683 (matchRSpec!3540 (regTwo!33391 (regTwo!33391 lt!2406396)) s!2326))))

(declare-fun bm!571113 () Bool)

(assert (=> bm!571113 (= call!571117 (Exists!3509 (ite c!1206454 lambda!365245 lambda!365246)))))

(assert (= (and d!2059749 c!1206455) b!6564339))

(assert (= (and d!2059749 (not c!1206455)) b!6564345))

(assert (= (and b!6564345 res!2693665) b!6564336))

(assert (= (and b!6564336 c!1206456) b!6564341))

(assert (= (and b!6564336 (not c!1206456)) b!6564342))

(assert (= (and b!6564342 c!1206453) b!6564338))

(assert (= (and b!6564342 (not c!1206453)) b!6564343))

(assert (= (and b!6564338 (not res!2693667)) b!6564346))

(assert (= (and b!6564343 c!1206454) b!6564337))

(assert (= (and b!6564343 (not c!1206454)) b!6564340))

(assert (= (and b!6564337 (not res!2693666)) b!6564344))

(assert (= (or b!6564344 b!6564340) bm!571113))

(assert (= (or b!6564339 b!6564337) bm!571112))

(declare-fun m!7346506 () Bool)

(assert (=> b!6564338 m!7346506))

(assert (=> bm!571112 m!7343766))

(declare-fun m!7346508 () Bool)

(assert (=> b!6564346 m!7346508))

(declare-fun m!7346510 () Bool)

(assert (=> bm!571113 m!7346510))

(assert (=> b!6562329 d!2059749))

(declare-fun d!2059751 () Bool)

(declare-fun lt!2406749 () Int)

(assert (=> d!2059751 (>= lt!2406749 0)))

(declare-fun e!3973691 () Int)

(assert (=> d!2059751 (= lt!2406749 e!3973691)))

(declare-fun c!1206459 () Bool)

(assert (=> d!2059751 (= c!1206459 ((_ is Nil!65492) lt!2406550))))

(assert (=> d!2059751 (= (size!40527 lt!2406550) lt!2406749)))

(declare-fun b!6564351 () Bool)

(assert (=> b!6564351 (= e!3973691 0)))

(declare-fun b!6564352 () Bool)

(assert (=> b!6564352 (= e!3973691 (+ 1 (size!40527 (t!379258 lt!2406550))))))

(assert (= (and d!2059751 c!1206459) b!6564351))

(assert (= (and d!2059751 (not c!1206459)) b!6564352))

(declare-fun m!7346512 () Bool)

(assert (=> b!6564352 m!7346512))

(assert (=> b!6562153 d!2059751))

(declare-fun d!2059753 () Bool)

(declare-fun lt!2406750 () Int)

(assert (=> d!2059753 (>= lt!2406750 0)))

(declare-fun e!3973692 () Int)

(assert (=> d!2059753 (= lt!2406750 e!3973692)))

(declare-fun c!1206460 () Bool)

(assert (=> d!2059753 (= c!1206460 ((_ is Nil!65492) (_1!36721 lt!2406377)))))

(assert (=> d!2059753 (= (size!40527 (_1!36721 lt!2406377)) lt!2406750)))

(declare-fun b!6564353 () Bool)

(assert (=> b!6564353 (= e!3973692 0)))

(declare-fun b!6564354 () Bool)

(assert (=> b!6564354 (= e!3973692 (+ 1 (size!40527 (t!379258 (_1!36721 lt!2406377)))))))

(assert (= (and d!2059753 c!1206460) b!6564353))

(assert (= (and d!2059753 (not c!1206460)) b!6564354))

(declare-fun m!7346514 () Bool)

(assert (=> b!6564354 m!7346514))

(assert (=> b!6562153 d!2059753))

(declare-fun d!2059755 () Bool)

(declare-fun lt!2406751 () Int)

(assert (=> d!2059755 (>= lt!2406751 0)))

(declare-fun e!3973693 () Int)

(assert (=> d!2059755 (= lt!2406751 e!3973693)))

(declare-fun c!1206461 () Bool)

(assert (=> d!2059755 (= c!1206461 ((_ is Nil!65492) (_2!36721 lt!2406377)))))

(assert (=> d!2059755 (= (size!40527 (_2!36721 lt!2406377)) lt!2406751)))

(declare-fun b!6564355 () Bool)

(assert (=> b!6564355 (= e!3973693 0)))

(declare-fun b!6564356 () Bool)

(assert (=> b!6564356 (= e!3973693 (+ 1 (size!40527 (t!379258 (_2!36721 lt!2406377)))))))

(assert (= (and d!2059755 c!1206461) b!6564355))

(assert (= (and d!2059755 (not c!1206461)) b!6564356))

(declare-fun m!7346516 () Bool)

(assert (=> b!6564356 m!7346516))

(assert (=> b!6562153 d!2059755))

(declare-fun d!2059757 () Bool)

(assert (=> d!2059757 (= (isEmpty!37733 (tail!12413 (exprs!6323 (h!71942 zl!343)))) ((_ is Nil!65493) (tail!12413 (exprs!6323 (h!71942 zl!343)))))))

(assert (=> b!6561722 d!2059757))

(declare-fun d!2059759 () Bool)

(assert (=> d!2059759 (= (tail!12413 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343))))))

(assert (=> b!6561722 d!2059759))

(assert (=> b!6562268 d!2059539))

(declare-fun d!2059761 () Bool)

(declare-fun res!2693668 () Bool)

(declare-fun e!3973694 () Bool)

(assert (=> d!2059761 (=> res!2693668 e!3973694)))

(assert (=> d!2059761 (= res!2693668 ((_ is Nil!65493) lt!2406543))))

(assert (=> d!2059761 (= (forall!15611 lt!2406543 lambda!365127) e!3973694)))

(declare-fun b!6564357 () Bool)

(declare-fun e!3973695 () Bool)

(assert (=> b!6564357 (= e!3973694 e!3973695)))

(declare-fun res!2693669 () Bool)

(assert (=> b!6564357 (=> (not res!2693669) (not e!3973695))))

(assert (=> b!6564357 (= res!2693669 (dynLambda!26053 lambda!365127 (h!71941 lt!2406543)))))

(declare-fun b!6564358 () Bool)

(assert (=> b!6564358 (= e!3973695 (forall!15611 (t!379259 lt!2406543) lambda!365127))))

(assert (= (and d!2059761 (not res!2693668)) b!6564357))

(assert (= (and b!6564357 res!2693669) b!6564358))

(declare-fun b_lambda!248299 () Bool)

(assert (=> (not b_lambda!248299) (not b!6564357)))

(declare-fun m!7346518 () Bool)

(assert (=> b!6564357 m!7346518))

(declare-fun m!7346520 () Bool)

(assert (=> b!6564358 m!7346520))

(assert (=> d!2058737 d!2059761))

(declare-fun b!6564360 () Bool)

(declare-fun e!3973697 () List!65617)

(assert (=> b!6564360 (= e!3973697 (Cons!65493 (h!71941 (exprs!6323 lt!2406347)) (++!14581 (t!379259 (exprs!6323 lt!2406347)) (exprs!6323 lt!2406352))))))

(declare-fun d!2059763 () Bool)

(declare-fun e!3973696 () Bool)

(assert (=> d!2059763 e!3973696))

(declare-fun res!2693670 () Bool)

(assert (=> d!2059763 (=> (not res!2693670) (not e!3973696))))

(declare-fun lt!2406752 () List!65617)

(assert (=> d!2059763 (= res!2693670 (= (content!12599 lt!2406752) ((_ map or) (content!12599 (exprs!6323 lt!2406347)) (content!12599 (exprs!6323 lt!2406352)))))))

(assert (=> d!2059763 (= lt!2406752 e!3973697)))

(declare-fun c!1206462 () Bool)

(assert (=> d!2059763 (= c!1206462 ((_ is Nil!65493) (exprs!6323 lt!2406347)))))

(assert (=> d!2059763 (= (++!14581 (exprs!6323 lt!2406347) (exprs!6323 lt!2406352)) lt!2406752)))

(declare-fun b!6564362 () Bool)

(assert (=> b!6564362 (= e!3973696 (or (not (= (exprs!6323 lt!2406352) Nil!65493)) (= lt!2406752 (exprs!6323 lt!2406347))))))

(declare-fun b!6564359 () Bool)

(assert (=> b!6564359 (= e!3973697 (exprs!6323 lt!2406352))))

(declare-fun b!6564361 () Bool)

(declare-fun res!2693671 () Bool)

(assert (=> b!6564361 (=> (not res!2693671) (not e!3973696))))

(assert (=> b!6564361 (= res!2693671 (= (size!40528 lt!2406752) (+ (size!40528 (exprs!6323 lt!2406347)) (size!40528 (exprs!6323 lt!2406352)))))))

(assert (= (and d!2059763 c!1206462) b!6564359))

(assert (= (and d!2059763 (not c!1206462)) b!6564360))

(assert (= (and d!2059763 res!2693670) b!6564361))

(assert (= (and b!6564361 res!2693671) b!6564362))

(declare-fun m!7346522 () Bool)

(assert (=> b!6564360 m!7346522))

(declare-fun m!7346524 () Bool)

(assert (=> d!2059763 m!7346524))

(assert (=> d!2059763 m!7345822))

(declare-fun m!7346526 () Bool)

(assert (=> d!2059763 m!7346526))

(declare-fun m!7346528 () Bool)

(assert (=> b!6564361 m!7346528))

(assert (=> b!6564361 m!7345826))

(declare-fun m!7346530 () Bool)

(assert (=> b!6564361 m!7346530))

(assert (=> d!2058797 d!2059763))

(declare-fun d!2059765 () Bool)

(assert (=> d!2059765 (forall!15611 (++!14581 (exprs!6323 lt!2406347) (exprs!6323 lt!2406352)) lambda!365138)))

(declare-fun lt!2406753 () Unit!159091)

(assert (=> d!2059765 (= lt!2406753 (choose!48975 (exprs!6323 lt!2406347) (exprs!6323 lt!2406352) lambda!365138))))

(assert (=> d!2059765 (forall!15611 (exprs!6323 lt!2406347) lambda!365138)))

(assert (=> d!2059765 (= (lemmaConcatPreservesForall!412 (exprs!6323 lt!2406347) (exprs!6323 lt!2406352) lambda!365138) lt!2406753)))

(declare-fun bs!1676264 () Bool)

(assert (= bs!1676264 d!2059765))

(assert (=> bs!1676264 m!7344336))

(assert (=> bs!1676264 m!7344336))

(declare-fun m!7346532 () Bool)

(assert (=> bs!1676264 m!7346532))

(declare-fun m!7346534 () Bool)

(assert (=> bs!1676264 m!7346534))

(declare-fun m!7346536 () Bool)

(assert (=> bs!1676264 m!7346536))

(assert (=> d!2058797 d!2059765))

(assert (=> d!2058797 d!2058751))

(declare-fun bs!1676265 () Bool)

(declare-fun d!2059767 () Bool)

(assert (= bs!1676265 (and d!2059767 d!2058735)))

(declare-fun lambda!365249 () Int)

(assert (=> bs!1676265 (= lambda!365249 lambda!365124)))

(declare-fun bs!1676266 () Bool)

(assert (= bs!1676266 (and d!2059767 d!2058599)))

(assert (=> bs!1676266 (= lambda!365249 lambda!365092)))

(declare-fun bs!1676267 () Bool)

(assert (= bs!1676267 (and d!2059767 d!2058587)))

(assert (=> bs!1676267 (= lambda!365249 lambda!365086)))

(declare-fun bs!1676268 () Bool)

(assert (= bs!1676268 (and d!2059767 d!2058797)))

(assert (=> bs!1676268 (= lambda!365249 lambda!365138)))

(declare-fun bs!1676269 () Bool)

(assert (= bs!1676269 (and d!2059767 d!2058737)))

(assert (=> bs!1676269 (= lambda!365249 lambda!365127)))

(declare-fun bs!1676270 () Bool)

(assert (= bs!1676270 (and d!2059767 d!2059555)))

(assert (=> bs!1676270 (= lambda!365249 lambda!365229)))

(declare-fun bs!1676271 () Bool)

(assert (= bs!1676271 (and d!2059767 d!2058739)))

(assert (=> bs!1676271 (= lambda!365249 lambda!365128)))

(declare-fun bs!1676272 () Bool)

(assert (= bs!1676272 (and d!2059767 d!2059649)))

(assert (=> bs!1676272 (= lambda!365249 lambda!365237)))

(declare-fun bs!1676273 () Bool)

(assert (= bs!1676273 (and d!2059767 d!2059557)))

(assert (=> bs!1676273 (= lambda!365249 lambda!365230)))

(declare-fun bs!1676274 () Bool)

(assert (= bs!1676274 (and d!2059767 b!6561265)))

(assert (=> bs!1676274 (= lambda!365249 lambda!365045)))

(assert (=> d!2059767 (matchZipper!2451 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (++!14581 (exprs!6323 lt!2406347) (exprs!6323 lt!2406352))) true) (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377)))))

(declare-fun lt!2406756 () Unit!159091)

(assert (=> d!2059767 (= lt!2406756 (lemmaConcatPreservesForall!412 (exprs!6323 lt!2406347) (exprs!6323 lt!2406352) lambda!365249))))

(assert (=> d!2059767 true))

(declare-fun _$56!413 () Unit!159091)

(assert (=> d!2059767 (= (choose!48977 lt!2406347 lt!2406352 (_1!36721 lt!2406377) (_2!36721 lt!2406377)) _$56!413)))

(declare-fun bs!1676275 () Bool)

(assert (= bs!1676275 d!2059767))

(assert (=> bs!1676275 m!7344332))

(assert (=> bs!1676275 m!7343206))

(declare-fun m!7346538 () Bool)

(assert (=> bs!1676275 m!7346538))

(assert (=> bs!1676275 m!7344336))

(assert (=> bs!1676275 m!7344332))

(assert (=> bs!1676275 m!7343206))

(assert (=> bs!1676275 m!7344334))

(assert (=> d!2058797 d!2059767))

(declare-fun d!2059769 () Bool)

(declare-fun c!1206463 () Bool)

(assert (=> d!2059769 (= c!1206463 (isEmpty!37737 (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377))))))

(declare-fun e!3973698 () Bool)

(assert (=> d!2059769 (= (matchZipper!2451 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (++!14581 (exprs!6323 lt!2406347) (exprs!6323 lt!2406352))) true) (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377))) e!3973698)))

(declare-fun b!6564363 () Bool)

(assert (=> b!6564363 (= e!3973698 (nullableZipper!2184 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (++!14581 (exprs!6323 lt!2406347) (exprs!6323 lt!2406352))) true)))))

(declare-fun b!6564364 () Bool)

(assert (=> b!6564364 (= e!3973698 (matchZipper!2451 (derivationStepZipper!2405 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (++!14581 (exprs!6323 lt!2406347) (exprs!6323 lt!2406352))) true) (head!13329 (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377)))) (tail!12414 (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377)))))))

(assert (= (and d!2059769 c!1206463) b!6564363))

(assert (= (and d!2059769 (not c!1206463)) b!6564364))

(assert (=> d!2059769 m!7343206))

(declare-fun m!7346540 () Bool)

(assert (=> d!2059769 m!7346540))

(assert (=> b!6564363 m!7344332))

(declare-fun m!7346542 () Bool)

(assert (=> b!6564363 m!7346542))

(assert (=> b!6564364 m!7343206))

(declare-fun m!7346544 () Bool)

(assert (=> b!6564364 m!7346544))

(assert (=> b!6564364 m!7344332))

(assert (=> b!6564364 m!7346544))

(declare-fun m!7346546 () Bool)

(assert (=> b!6564364 m!7346546))

(assert (=> b!6564364 m!7343206))

(declare-fun m!7346548 () Bool)

(assert (=> b!6564364 m!7346548))

(assert (=> b!6564364 m!7346546))

(assert (=> b!6564364 m!7346548))

(declare-fun m!7346550 () Bool)

(assert (=> b!6564364 m!7346550))

(assert (=> d!2058797 d!2059769))

(declare-fun d!2059771 () Bool)

(declare-fun c!1206464 () Bool)

(assert (=> d!2059771 (= c!1206464 (isEmpty!37737 (_1!36721 lt!2406377)))))

(declare-fun e!3973699 () Bool)

(assert (=> d!2059771 (= (matchZipper!2451 (store ((as const (Array Context!11646 Bool)) false) lt!2406347 true) (_1!36721 lt!2406377)) e!3973699)))

(declare-fun b!6564365 () Bool)

(assert (=> b!6564365 (= e!3973699 (nullableZipper!2184 (store ((as const (Array Context!11646 Bool)) false) lt!2406347 true)))))

(declare-fun b!6564366 () Bool)

(assert (=> b!6564366 (= e!3973699 (matchZipper!2451 (derivationStepZipper!2405 (store ((as const (Array Context!11646 Bool)) false) lt!2406347 true) (head!13329 (_1!36721 lt!2406377))) (tail!12414 (_1!36721 lt!2406377))))))

(assert (= (and d!2059771 c!1206464) b!6564365))

(assert (= (and d!2059771 (not c!1206464)) b!6564366))

(assert (=> d!2059771 m!7344320))

(assert (=> b!6564365 m!7343360))

(declare-fun m!7346552 () Bool)

(assert (=> b!6564365 m!7346552))

(assert (=> b!6564366 m!7344326))

(assert (=> b!6564366 m!7343360))

(assert (=> b!6564366 m!7344326))

(declare-fun m!7346554 () Bool)

(assert (=> b!6564366 m!7346554))

(assert (=> b!6564366 m!7344322))

(assert (=> b!6564366 m!7346554))

(assert (=> b!6564366 m!7344322))

(declare-fun m!7346556 () Bool)

(assert (=> b!6564366 m!7346556))

(assert (=> d!2058797 d!2059771))

(assert (=> d!2058861 d!2059737))

(declare-fun bs!1676276 () Bool)

(declare-fun d!2059773 () Bool)

(assert (= bs!1676276 (and d!2059773 d!2059453)))

(declare-fun lambda!365250 () Int)

(assert (=> bs!1676276 (= lambda!365250 lambda!365219)))

(declare-fun bs!1676277 () Bool)

(assert (= bs!1676277 (and d!2059773 d!2059671)))

(assert (=> bs!1676277 (= lambda!365250 lambda!365240)))

(declare-fun bs!1676278 () Bool)

(assert (= bs!1676278 (and d!2059773 d!2059713)))

(assert (=> bs!1676278 (= lambda!365250 lambda!365243)))

(assert (=> d!2059773 (= (nullableZipper!2184 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (++!14581 lt!2406344 lt!2406366)) true)) (exists!2639 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (++!14581 lt!2406344 lt!2406366)) true) lambda!365250))))

(declare-fun bs!1676279 () Bool)

(assert (= bs!1676279 d!2059773))

(assert (=> bs!1676279 m!7343296))

(declare-fun m!7346558 () Bool)

(assert (=> bs!1676279 m!7346558))

(assert (=> b!6562336 d!2059773))

(declare-fun b!6564367 () Bool)

(declare-fun e!3973702 () Bool)

(declare-fun e!3973705 () Bool)

(assert (=> b!6564367 (= e!3973702 e!3973705)))

(declare-fun res!2693678 () Bool)

(assert (=> b!6564367 (=> (not res!2693678) (not e!3973705))))

(declare-fun lt!2406757 () Bool)

(assert (=> b!6564367 (= res!2693678 (not lt!2406757))))

(declare-fun b!6564368 () Bool)

(declare-fun res!2693675 () Bool)

(declare-fun e!3973704 () Bool)

(assert (=> b!6564368 (=> res!2693675 e!3973704)))

(assert (=> b!6564368 (= res!2693675 (not (isEmpty!37737 (tail!12414 (_2!36721 (get!22740 lt!2406582))))))))

(declare-fun b!6564369 () Bool)

(declare-fun e!3973700 () Bool)

(declare-fun call!571119 () Bool)

(assert (=> b!6564369 (= e!3973700 (= lt!2406757 call!571119))))

(declare-fun b!6564371 () Bool)

(declare-fun res!2693674 () Bool)

(declare-fun e!3973703 () Bool)

(assert (=> b!6564371 (=> (not res!2693674) (not e!3973703))))

(assert (=> b!6564371 (= res!2693674 (isEmpty!37737 (tail!12414 (_2!36721 (get!22740 lt!2406582)))))))

(declare-fun b!6564372 () Bool)

(assert (=> b!6564372 (= e!3973703 (= (head!13329 (_2!36721 (get!22740 lt!2406582))) (c!1205620 (regTwo!33390 r!7292))))))

(declare-fun b!6564373 () Bool)

(declare-fun res!2693676 () Bool)

(assert (=> b!6564373 (=> res!2693676 e!3973702)))

(assert (=> b!6564373 (= res!2693676 e!3973703)))

(declare-fun res!2693672 () Bool)

(assert (=> b!6564373 (=> (not res!2693672) (not e!3973703))))

(assert (=> b!6564373 (= res!2693672 lt!2406757)))

(declare-fun b!6564374 () Bool)

(declare-fun e!3973706 () Bool)

(assert (=> b!6564374 (= e!3973706 (not lt!2406757))))

(declare-fun b!6564375 () Bool)

(declare-fun res!2693679 () Bool)

(assert (=> b!6564375 (=> (not res!2693679) (not e!3973703))))

(assert (=> b!6564375 (= res!2693679 (not call!571119))))

(declare-fun b!6564376 () Bool)

(assert (=> b!6564376 (= e!3973705 e!3973704)))

(declare-fun res!2693673 () Bool)

(assert (=> b!6564376 (=> res!2693673 e!3973704)))

(assert (=> b!6564376 (= res!2693673 call!571119)))

(declare-fun b!6564377 () Bool)

(declare-fun e!3973701 () Bool)

(assert (=> b!6564377 (= e!3973701 (nullable!6432 (regTwo!33390 r!7292)))))

(declare-fun bm!571114 () Bool)

(assert (=> bm!571114 (= call!571119 (isEmpty!37737 (_2!36721 (get!22740 lt!2406582))))))

(declare-fun b!6564378 () Bool)

(assert (=> b!6564378 (= e!3973700 e!3973706)))

(declare-fun c!1206465 () Bool)

(assert (=> b!6564378 (= c!1206465 ((_ is EmptyLang!16439) (regTwo!33390 r!7292)))))

(declare-fun b!6564379 () Bool)

(declare-fun res!2693677 () Bool)

(assert (=> b!6564379 (=> res!2693677 e!3973702)))

(assert (=> b!6564379 (= res!2693677 (not ((_ is ElementMatch!16439) (regTwo!33390 r!7292))))))

(assert (=> b!6564379 (= e!3973706 e!3973702)))

(declare-fun b!6564380 () Bool)

(assert (=> b!6564380 (= e!3973701 (matchR!8622 (derivativeStep!5123 (regTwo!33390 r!7292) (head!13329 (_2!36721 (get!22740 lt!2406582)))) (tail!12414 (_2!36721 (get!22740 lt!2406582)))))))

(declare-fun d!2059775 () Bool)

(assert (=> d!2059775 e!3973700))

(declare-fun c!1206467 () Bool)

(assert (=> d!2059775 (= c!1206467 ((_ is EmptyExpr!16439) (regTwo!33390 r!7292)))))

(assert (=> d!2059775 (= lt!2406757 e!3973701)))

(declare-fun c!1206466 () Bool)

(assert (=> d!2059775 (= c!1206466 (isEmpty!37737 (_2!36721 (get!22740 lt!2406582))))))

(assert (=> d!2059775 (validRegex!8175 (regTwo!33390 r!7292))))

(assert (=> d!2059775 (= (matchR!8622 (regTwo!33390 r!7292) (_2!36721 (get!22740 lt!2406582))) lt!2406757)))

(declare-fun b!6564370 () Bool)

(assert (=> b!6564370 (= e!3973704 (not (= (head!13329 (_2!36721 (get!22740 lt!2406582))) (c!1205620 (regTwo!33390 r!7292)))))))

(assert (= (and d!2059775 c!1206466) b!6564377))

(assert (= (and d!2059775 (not c!1206466)) b!6564380))

(assert (= (and d!2059775 c!1206467) b!6564369))

(assert (= (and d!2059775 (not c!1206467)) b!6564378))

(assert (= (and b!6564378 c!1206465) b!6564374))

(assert (= (and b!6564378 (not c!1206465)) b!6564379))

(assert (= (and b!6564379 (not res!2693677)) b!6564373))

(assert (= (and b!6564373 res!2693672) b!6564375))

(assert (= (and b!6564375 res!2693679) b!6564371))

(assert (= (and b!6564371 res!2693674) b!6564372))

(assert (= (and b!6564373 (not res!2693676)) b!6564367))

(assert (= (and b!6564367 res!2693678) b!6564376))

(assert (= (and b!6564376 (not res!2693673)) b!6564368))

(assert (= (and b!6564368 (not res!2693675)) b!6564370))

(assert (= (or b!6564369 b!6564375 b!6564376) bm!571114))

(declare-fun m!7346560 () Bool)

(assert (=> bm!571114 m!7346560))

(assert (=> d!2059775 m!7346560))

(assert (=> d!2059775 m!7344386))

(declare-fun m!7346562 () Bool)

(assert (=> b!6564371 m!7346562))

(assert (=> b!6564371 m!7346562))

(declare-fun m!7346564 () Bool)

(assert (=> b!6564371 m!7346564))

(declare-fun m!7346566 () Bool)

(assert (=> b!6564372 m!7346566))

(assert (=> b!6564370 m!7346566))

(assert (=> b!6564368 m!7346562))

(assert (=> b!6564368 m!7346562))

(assert (=> b!6564368 m!7346564))

(assert (=> b!6564377 m!7346202))

(assert (=> b!6564380 m!7346566))

(assert (=> b!6564380 m!7346566))

(declare-fun m!7346568 () Bool)

(assert (=> b!6564380 m!7346568))

(assert (=> b!6564380 m!7346562))

(assert (=> b!6564380 m!7346568))

(assert (=> b!6564380 m!7346562))

(declare-fun m!7346570 () Bool)

(assert (=> b!6564380 m!7346570))

(assert (=> b!6562285 d!2059775))

(assert (=> b!6562285 d!2059723))

(declare-fun bm!571115 () Bool)

(declare-fun call!571121 () List!65617)

(declare-fun call!571125 () List!65617)

(assert (=> bm!571115 (= call!571121 call!571125)))

(declare-fun b!6564381 () Bool)

(declare-fun e!3973709 () (InoxSet Context!11646))

(assert (=> b!6564381 (= e!3973709 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (t!379259 (exprs!6323 lt!2406382))) true))))

(declare-fun b!6564382 () Bool)

(declare-fun e!3973712 () (InoxSet Context!11646))

(declare-fun e!3973711 () (InoxSet Context!11646))

(assert (=> b!6564382 (= e!3973712 e!3973711)))

(declare-fun c!1206470 () Bool)

(assert (=> b!6564382 (= c!1206470 ((_ is Concat!25284) (h!71941 (exprs!6323 lt!2406382))))))

(declare-fun b!6564383 () Bool)

(declare-fun e!3973710 () (InoxSet Context!11646))

(declare-fun call!571124 () (InoxSet Context!11646))

(assert (=> b!6564383 (= e!3973710 call!571124)))

(declare-fun b!6564384 () Bool)

(declare-fun call!571123 () (InoxSet Context!11646))

(declare-fun call!571120 () (InoxSet Context!11646))

(assert (=> b!6564384 (= e!3973712 ((_ map or) call!571123 call!571120))))

(declare-fun c!1206468 () Bool)

(declare-fun bm!571116 () Bool)

(assert (=> bm!571116 (= call!571123 (derivationStepZipperDown!1687 (ite c!1206468 (regOne!33391 (h!71941 (exprs!6323 lt!2406382))) (regOne!33390 (h!71941 (exprs!6323 lt!2406382)))) (ite c!1206468 (Context!11647 (t!379259 (exprs!6323 lt!2406382))) (Context!11647 call!571125)) (h!71940 s!2326)))))

(declare-fun b!6564385 () Bool)

(assert (=> b!6564385 (= e!3973711 call!571124)))

(declare-fun bm!571117 () Bool)

(declare-fun c!1206472 () Bool)

(declare-fun call!571122 () (InoxSet Context!11646))

(assert (=> bm!571117 (= call!571122 (derivationStepZipperDown!1687 (ite c!1206468 (regTwo!33391 (h!71941 (exprs!6323 lt!2406382))) (ite c!1206472 (regTwo!33390 (h!71941 (exprs!6323 lt!2406382))) (ite c!1206470 (regOne!33390 (h!71941 (exprs!6323 lt!2406382))) (reg!16768 (h!71941 (exprs!6323 lt!2406382)))))) (ite (or c!1206468 c!1206472) (Context!11647 (t!379259 (exprs!6323 lt!2406382))) (Context!11647 call!571121)) (h!71940 s!2326)))))

(declare-fun b!6564386 () Bool)

(declare-fun e!3973707 () Bool)

(assert (=> b!6564386 (= e!3973707 (nullable!6432 (regOne!33390 (h!71941 (exprs!6323 lt!2406382)))))))

(declare-fun bm!571118 () Bool)

(assert (=> bm!571118 (= call!571124 call!571120)))

(declare-fun bm!571119 () Bool)

(assert (=> bm!571119 (= call!571120 call!571122)))

(declare-fun b!6564387 () Bool)

(declare-fun c!1206471 () Bool)

(assert (=> b!6564387 (= c!1206471 ((_ is Star!16439) (h!71941 (exprs!6323 lt!2406382))))))

(assert (=> b!6564387 (= e!3973711 e!3973710)))

(declare-fun b!6564388 () Bool)

(assert (=> b!6564388 (= e!3973710 ((as const (Array Context!11646 Bool)) false))))

(declare-fun b!6564389 () Bool)

(declare-fun e!3973708 () (InoxSet Context!11646))

(assert (=> b!6564389 (= e!3973709 e!3973708)))

(assert (=> b!6564389 (= c!1206468 ((_ is Union!16439) (h!71941 (exprs!6323 lt!2406382))))))

(declare-fun bm!571120 () Bool)

(assert (=> bm!571120 (= call!571125 ($colon$colon!2280 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406382)))) (ite (or c!1206472 c!1206470) (regTwo!33390 (h!71941 (exprs!6323 lt!2406382))) (h!71941 (exprs!6323 lt!2406382)))))))

(declare-fun b!6564390 () Bool)

(assert (=> b!6564390 (= e!3973708 ((_ map or) call!571123 call!571122))))

(declare-fun d!2059777 () Bool)

(declare-fun c!1206469 () Bool)

(assert (=> d!2059777 (= c!1206469 (and ((_ is ElementMatch!16439) (h!71941 (exprs!6323 lt!2406382))) (= (c!1205620 (h!71941 (exprs!6323 lt!2406382))) (h!71940 s!2326))))))

(assert (=> d!2059777 (= (derivationStepZipperDown!1687 (h!71941 (exprs!6323 lt!2406382)) (Context!11647 (t!379259 (exprs!6323 lt!2406382))) (h!71940 s!2326)) e!3973709)))

(declare-fun b!6564391 () Bool)

(assert (=> b!6564391 (= c!1206472 e!3973707)))

(declare-fun res!2693680 () Bool)

(assert (=> b!6564391 (=> (not res!2693680) (not e!3973707))))

(assert (=> b!6564391 (= res!2693680 ((_ is Concat!25284) (h!71941 (exprs!6323 lt!2406382))))))

(assert (=> b!6564391 (= e!3973708 e!3973712)))

(assert (= (and d!2059777 c!1206469) b!6564381))

(assert (= (and d!2059777 (not c!1206469)) b!6564389))

(assert (= (and b!6564389 c!1206468) b!6564390))

(assert (= (and b!6564389 (not c!1206468)) b!6564391))

(assert (= (and b!6564391 res!2693680) b!6564386))

(assert (= (and b!6564391 c!1206472) b!6564384))

(assert (= (and b!6564391 (not c!1206472)) b!6564382))

(assert (= (and b!6564382 c!1206470) b!6564385))

(assert (= (and b!6564382 (not c!1206470)) b!6564387))

(assert (= (and b!6564387 c!1206471) b!6564383))

(assert (= (and b!6564387 (not c!1206471)) b!6564388))

(assert (= (or b!6564385 b!6564383) bm!571115))

(assert (= (or b!6564385 b!6564383) bm!571118))

(assert (= (or b!6564384 bm!571115) bm!571120))

(assert (= (or b!6564384 bm!571118) bm!571119))

(assert (= (or b!6564390 bm!571119) bm!571117))

(assert (= (or b!6564390 b!6564384) bm!571116))

(declare-fun m!7346572 () Bool)

(assert (=> b!6564386 m!7346572))

(declare-fun m!7346574 () Bool)

(assert (=> b!6564381 m!7346574))

(declare-fun m!7346576 () Bool)

(assert (=> bm!571120 m!7346576))

(declare-fun m!7346578 () Bool)

(assert (=> bm!571116 m!7346578))

(declare-fun m!7346580 () Bool)

(assert (=> bm!571117 m!7346580))

(assert (=> bm!570764 d!2059777))

(assert (=> d!2058773 d!2059503))

(assert (=> d!2058773 d!2058581))

(declare-fun d!2059779 () Bool)

(assert (=> d!2059779 (= (isDefined!13033 lt!2406558) (not (isEmpty!37738 lt!2406558)))))

(declare-fun bs!1676280 () Bool)

(assert (= bs!1676280 d!2059779))

(declare-fun m!7346582 () Bool)

(assert (=> bs!1676280 m!7346582))

(assert (=> d!2058753 d!2059779))

(declare-fun d!2059781 () Bool)

(declare-fun c!1206473 () Bool)

(assert (=> d!2059781 (= c!1206473 (isEmpty!37737 Nil!65492))))

(declare-fun e!3973713 () Bool)

(assert (=> d!2059781 (= (matchZipper!2451 lt!2406365 Nil!65492) e!3973713)))

(declare-fun b!6564392 () Bool)

(assert (=> b!6564392 (= e!3973713 (nullableZipper!2184 lt!2406365))))

(declare-fun b!6564393 () Bool)

(assert (=> b!6564393 (= e!3973713 (matchZipper!2451 (derivationStepZipper!2405 lt!2406365 (head!13329 Nil!65492)) (tail!12414 Nil!65492)))))

(assert (= (and d!2059781 c!1206473) b!6564392))

(assert (= (and d!2059781 (not c!1206473)) b!6564393))

(assert (=> d!2059781 m!7345876))

(assert (=> b!6564392 m!7344494))

(assert (=> b!6564393 m!7345882))

(assert (=> b!6564393 m!7345882))

(declare-fun m!7346584 () Bool)

(assert (=> b!6564393 m!7346584))

(assert (=> b!6564393 m!7345878))

(assert (=> b!6564393 m!7346584))

(assert (=> b!6564393 m!7345878))

(declare-fun m!7346586 () Bool)

(assert (=> b!6564393 m!7346586))

(assert (=> d!2058753 d!2059781))

(declare-fun b!6564394 () Bool)

(declare-fun e!3973715 () List!65616)

(assert (=> b!6564394 (= e!3973715 s!2326)))

(declare-fun b!6564397 () Bool)

(declare-fun e!3973714 () Bool)

(declare-fun lt!2406758 () List!65616)

(assert (=> b!6564397 (= e!3973714 (or (not (= s!2326 Nil!65492)) (= lt!2406758 Nil!65492)))))

(declare-fun d!2059783 () Bool)

(assert (=> d!2059783 e!3973714))

(declare-fun res!2693681 () Bool)

(assert (=> d!2059783 (=> (not res!2693681) (not e!3973714))))

(assert (=> d!2059783 (= res!2693681 (= (content!12598 lt!2406758) ((_ map or) (content!12598 Nil!65492) (content!12598 s!2326))))))

(assert (=> d!2059783 (= lt!2406758 e!3973715)))

(declare-fun c!1206474 () Bool)

(assert (=> d!2059783 (= c!1206474 ((_ is Nil!65492) Nil!65492))))

(assert (=> d!2059783 (= (++!14580 Nil!65492 s!2326) lt!2406758)))

(declare-fun b!6564395 () Bool)

(assert (=> b!6564395 (= e!3973715 (Cons!65492 (h!71940 Nil!65492) (++!14580 (t!379258 Nil!65492) s!2326)))))

(declare-fun b!6564396 () Bool)

(declare-fun res!2693682 () Bool)

(assert (=> b!6564396 (=> (not res!2693682) (not e!3973714))))

(assert (=> b!6564396 (= res!2693682 (= (size!40527 lt!2406758) (+ (size!40527 Nil!65492) (size!40527 s!2326))))))

(assert (= (and d!2059783 c!1206474) b!6564394))

(assert (= (and d!2059783 (not c!1206474)) b!6564395))

(assert (= (and d!2059783 res!2693681) b!6564396))

(assert (= (and b!6564396 res!2693682) b!6564397))

(declare-fun m!7346588 () Bool)

(assert (=> d!2059783 m!7346588))

(assert (=> d!2059783 m!7345924))

(declare-fun m!7346590 () Bool)

(assert (=> d!2059783 m!7346590))

(declare-fun m!7346592 () Bool)

(assert (=> b!6564395 m!7346592))

(declare-fun m!7346594 () Bool)

(assert (=> b!6564396 m!7346594))

(assert (=> b!6564396 m!7345932))

(declare-fun m!7346596 () Bool)

(assert (=> b!6564396 m!7346596))

(assert (=> d!2058753 d!2059783))

(declare-fun bs!1676281 () Bool)

(declare-fun d!2059785 () Bool)

(assert (= bs!1676281 (and d!2059785 d!2059453)))

(declare-fun lambda!365251 () Int)

(assert (=> bs!1676281 (= lambda!365251 lambda!365219)))

(declare-fun bs!1676282 () Bool)

(assert (= bs!1676282 (and d!2059785 d!2059671)))

(assert (=> bs!1676282 (= lambda!365251 lambda!365240)))

(declare-fun bs!1676283 () Bool)

(assert (= bs!1676283 (and d!2059785 d!2059713)))

(assert (=> bs!1676283 (= lambda!365251 lambda!365243)))

(declare-fun bs!1676284 () Bool)

(assert (= bs!1676284 (and d!2059785 d!2059773)))

(assert (=> bs!1676284 (= lambda!365251 lambda!365250)))

(assert (=> d!2059785 (= (nullableZipper!2184 lt!2406348) (exists!2639 lt!2406348 lambda!365251))))

(declare-fun bs!1676285 () Bool)

(assert (= bs!1676285 d!2059785))

(declare-fun m!7346598 () Bool)

(assert (=> bs!1676285 m!7346598))

(assert (=> b!6562247 d!2059785))

(declare-fun d!2059787 () Bool)

(assert (=> d!2059787 (= (Exists!3509 lambda!365130) (choose!48962 lambda!365130))))

(declare-fun bs!1676286 () Bool)

(assert (= bs!1676286 d!2059787))

(declare-fun m!7346600 () Bool)

(assert (=> bs!1676286 m!7346600))

(assert (=> d!2058767 d!2059787))

(declare-fun d!2059789 () Bool)

(assert (=> d!2059789 (= (Exists!3509 lambda!365131) (choose!48962 lambda!365131))))

(declare-fun bs!1676287 () Bool)

(assert (= bs!1676287 d!2059789))

(declare-fun m!7346602 () Bool)

(assert (=> bs!1676287 m!7346602))

(assert (=> d!2058767 d!2059789))

(declare-fun bs!1676288 () Bool)

(declare-fun d!2059791 () Bool)

(assert (= bs!1676288 (and d!2059791 d!2058817)))

(declare-fun lambda!365252 () Int)

(assert (=> bs!1676288 (= (= (regOne!33390 r!7292) lt!2406360) (= lambda!365252 lambda!365141))))

(declare-fun bs!1676289 () Bool)

(assert (= bs!1676289 (and d!2059791 b!6564157)))

(assert (=> bs!1676289 (not (= lambda!365252 lambda!365241))))

(declare-fun bs!1676290 () Bool)

(assert (= bs!1676290 (and d!2059791 d!2058767)))

(assert (=> bs!1676290 (not (= lambda!365252 lambda!365131))))

(declare-fun bs!1676291 () Bool)

(assert (= bs!1676291 (and d!2059791 d!2059477)))

(assert (=> bs!1676291 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365252 lambda!365225))))

(declare-fun bs!1676292 () Bool)

(assert (= bs!1676292 (and d!2059791 b!6561249)))

(assert (=> bs!1676292 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365252 lambda!365048))))

(declare-fun bs!1676293 () Bool)

(assert (= bs!1676293 (and d!2059791 d!2058617)))

(assert (=> bs!1676293 (not (= lambda!365252 lambda!365100))))

(declare-fun bs!1676294 () Bool)

(assert (= bs!1676294 (and d!2059791 d!2059659)))

(assert (=> bs!1676294 (not (= lambda!365252 lambda!365239))))

(declare-fun bs!1676295 () Bool)

(assert (= bs!1676295 (and d!2059791 b!6561283)))

(assert (=> bs!1676295 (= lambda!365252 lambda!365041)))

(assert (=> bs!1676295 (not (= lambda!365252 lambda!365042))))

(assert (=> bs!1676290 (= lambda!365252 lambda!365130)))

(declare-fun bs!1676296 () Bool)

(assert (= bs!1676296 (and d!2059791 b!6562199)))

(assert (=> bs!1676296 (not (= lambda!365252 lambda!365132))))

(declare-fun bs!1676297 () Bool)

(assert (= bs!1676297 (and d!2059791 d!2058793)))

(assert (=> bs!1676297 (not (= lambda!365252 lambda!365135))))

(declare-fun bs!1676298 () Bool)

(assert (= bs!1676298 (and d!2059791 b!6561898)))

(assert (=> bs!1676298 (not (= lambda!365252 lambda!365111))))

(assert (=> bs!1676294 (= (= (regOne!33390 r!7292) lt!2406360) (= lambda!365252 lambda!365238))))

(declare-fun bs!1676299 () Bool)

(assert (= bs!1676299 (and d!2059791 d!2058681)))

(assert (=> bs!1676299 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365252 lambda!365116))))

(declare-fun bs!1676300 () Bool)

(assert (= bs!1676300 (and d!2059791 b!6562323)))

(assert (=> bs!1676300 (not (= lambda!365252 lambda!365140))))

(declare-fun bs!1676301 () Bool)

(assert (= bs!1676301 (and d!2059791 b!6563924)))

(assert (=> bs!1676301 (not (= lambda!365252 lambda!365232))))

(declare-fun bs!1676302 () Bool)

(assert (= bs!1676302 (and d!2059791 b!6561287)))

(assert (=> bs!1676302 (not (= lambda!365252 lambda!365047))))

(declare-fun bs!1676303 () Bool)

(assert (= bs!1676303 (and d!2059791 d!2058765)))

(assert (=> bs!1676303 (= lambda!365252 lambda!365129)))

(declare-fun bs!1676304 () Bool)

(assert (= bs!1676304 (and d!2059791 b!6562327)))

(assert (=> bs!1676304 (not (= lambda!365252 lambda!365139))))

(declare-fun bs!1676305 () Bool)

(assert (= bs!1676305 (and d!2059791 b!6562195)))

(assert (=> bs!1676305 (not (= lambda!365252 lambda!365133))))

(declare-fun bs!1676306 () Bool)

(assert (= bs!1676306 (and d!2059791 b!6564340)))

(assert (=> bs!1676306 (not (= lambda!365252 lambda!365246))))

(declare-fun bs!1676307 () Bool)

(assert (= bs!1676307 (and d!2059791 b!6563928)))

(assert (=> bs!1676307 (not (= lambda!365252 lambda!365231))))

(declare-fun bs!1676308 () Bool)

(assert (= bs!1676308 (and d!2059791 b!6564344)))

(assert (=> bs!1676308 (not (= lambda!365252 lambda!365245))))

(assert (=> bs!1676297 (= (= (regOne!33390 r!7292) lt!2406360) (= lambda!365252 lambda!365134))))

(assert (=> bs!1676293 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365252 lambda!365097))))

(declare-fun bs!1676309 () Bool)

(assert (= bs!1676309 (and d!2059791 b!6561902)))

(assert (=> bs!1676309 (not (= lambda!365252 lambda!365109))))

(declare-fun bs!1676310 () Bool)

(assert (= bs!1676310 (and d!2059791 b!6564153)))

(assert (=> bs!1676310 (not (= lambda!365252 lambda!365242))))

(assert (=> bs!1676291 (not (= lambda!365252 lambda!365226))))

(declare-fun bs!1676311 () Bool)

(assert (= bs!1676311 (and d!2059791 b!6562412)))

(assert (=> bs!1676311 (not (= lambda!365252 lambda!365150))))

(declare-fun bs!1676312 () Bool)

(assert (= bs!1676312 (and d!2059791 b!6562408)))

(assert (=> bs!1676312 (not (= lambda!365252 lambda!365151))))

(declare-fun bs!1676313 () Bool)

(assert (= bs!1676313 (and d!2059791 b!6563956)))

(assert (=> bs!1676313 (not (= lambda!365252 lambda!365234))))

(assert (=> bs!1676302 (= (= (regOne!33390 r!7292) lt!2406360) (= lambda!365252 lambda!365046))))

(declare-fun bs!1676314 () Bool)

(assert (= bs!1676314 (and d!2059791 b!6563952)))

(assert (=> bs!1676314 (not (= lambda!365252 lambda!365235))))

(assert (=> bs!1676292 (not (= lambda!365252 lambda!365049))))

(assert (=> d!2059791 true))

(assert (=> d!2059791 true))

(assert (=> d!2059791 true))

(declare-fun lambda!365253 () Int)

(assert (=> bs!1676288 (not (= lambda!365253 lambda!365141))))

(assert (=> bs!1676289 (not (= lambda!365253 lambda!365241))))

(assert (=> bs!1676291 (not (= lambda!365253 lambda!365225))))

(assert (=> bs!1676292 (not (= lambda!365253 lambda!365048))))

(assert (=> bs!1676293 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365253 lambda!365100))))

(assert (=> bs!1676294 (= (= (regOne!33390 r!7292) lt!2406360) (= lambda!365253 lambda!365239))))

(assert (=> bs!1676295 (not (= lambda!365253 lambda!365041))))

(assert (=> bs!1676295 (= lambda!365253 lambda!365042)))

(assert (=> bs!1676290 (not (= lambda!365253 lambda!365130))))

(assert (=> bs!1676296 (not (= lambda!365253 lambda!365132))))

(assert (=> bs!1676297 (= (= (regOne!33390 r!7292) lt!2406360) (= lambda!365253 lambda!365135))))

(assert (=> bs!1676298 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (regOne!33390 lt!2406360)) (= (regTwo!33390 r!7292) (regTwo!33390 lt!2406360))) (= lambda!365253 lambda!365111))))

(assert (=> bs!1676294 (not (= lambda!365253 lambda!365238))))

(assert (=> bs!1676299 (not (= lambda!365253 lambda!365116))))

(assert (=> bs!1676300 (= (and (= (regOne!33390 r!7292) (regOne!33390 lt!2406396)) (= (regTwo!33390 r!7292) (regTwo!33390 lt!2406396))) (= lambda!365253 lambda!365140))))

(assert (=> bs!1676301 (= (and (= (regOne!33390 r!7292) (regOne!33390 (regOne!33391 lt!2406349))) (= (regTwo!33390 r!7292) (regTwo!33390 (regOne!33391 lt!2406349)))) (= lambda!365253 lambda!365232))))

(assert (=> bs!1676302 (= (= (regOne!33390 r!7292) lt!2406360) (= lambda!365253 lambda!365047))))

(assert (=> bs!1676303 (not (= lambda!365253 lambda!365129))))

(assert (=> bs!1676304 (not (= lambda!365253 lambda!365139))))

(assert (=> bs!1676305 (= lambda!365253 lambda!365133)))

(declare-fun bs!1676315 () Bool)

(assert (= bs!1676315 d!2059791))

(assert (=> bs!1676315 (not (= lambda!365253 lambda!365252))))

(assert (=> bs!1676290 (= lambda!365253 lambda!365131)))

(assert (=> bs!1676306 (= (and (= (regOne!33390 r!7292) (regOne!33390 (regTwo!33391 lt!2406396))) (= (regTwo!33390 r!7292) (regTwo!33390 (regTwo!33391 lt!2406396)))) (= lambda!365253 lambda!365246))))

(assert (=> bs!1676307 (not (= lambda!365253 lambda!365231))))

(assert (=> bs!1676308 (not (= lambda!365253 lambda!365245))))

(assert (=> bs!1676297 (not (= lambda!365253 lambda!365134))))

(assert (=> bs!1676293 (not (= lambda!365253 lambda!365097))))

(assert (=> bs!1676309 (not (= lambda!365253 lambda!365109))))

(assert (=> bs!1676310 (= (and (= (regOne!33390 r!7292) (regOne!33390 (regTwo!33391 r!7292))) (= (regTwo!33390 r!7292) (regTwo!33390 (regTwo!33391 r!7292)))) (= lambda!365253 lambda!365242))))

(assert (=> bs!1676291 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365253 lambda!365226))))

(assert (=> bs!1676311 (not (= lambda!365253 lambda!365150))))

(assert (=> bs!1676312 (= (and (= (regOne!33390 r!7292) (regOne!33390 lt!2406349)) (= (regTwo!33390 r!7292) (regTwo!33390 lt!2406349))) (= lambda!365253 lambda!365151))))

(assert (=> bs!1676313 (not (= lambda!365253 lambda!365234))))

(assert (=> bs!1676302 (not (= lambda!365253 lambda!365046))))

(assert (=> bs!1676314 (= (and (= (regOne!33390 r!7292) (regOne!33390 (regOne!33391 r!7292))) (= (regTwo!33390 r!7292) (regTwo!33390 (regOne!33391 r!7292)))) (= lambda!365253 lambda!365235))))

(assert (=> bs!1676292 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365253 lambda!365049))))

(assert (=> d!2059791 true))

(assert (=> d!2059791 true))

(assert (=> d!2059791 true))

(assert (=> d!2059791 (= (Exists!3509 lambda!365252) (Exists!3509 lambda!365253))))

(assert (=> d!2059791 true))

(declare-fun _$90!2405 () Unit!159091)

(assert (=> d!2059791 (= (choose!48963 (regOne!33390 r!7292) (regTwo!33390 r!7292) s!2326) _$90!2405)))

(declare-fun m!7346604 () Bool)

(assert (=> bs!1676315 m!7346604))

(declare-fun m!7346606 () Bool)

(assert (=> bs!1676315 m!7346606))

(assert (=> d!2058767 d!2059791))

(assert (=> d!2058767 d!2059507))

(assert (=> b!6562291 d!2059465))

(declare-fun d!2059793 () Bool)

(assert (=> d!2059793 (= (head!13328 (unfocusZipperList!1860 zl!343)) (h!71941 (unfocusZipperList!1860 zl!343)))))

(assert (=> b!6562096 d!2059793))

(declare-fun d!2059795 () Bool)

(assert (=> d!2059795 true))

(assert (=> d!2059795 true))

(declare-fun res!2693683 () Bool)

(assert (=> d!2059795 (= (choose!48962 lambda!365046) res!2693683)))

(assert (=> d!2058823 d!2059795))

(declare-fun d!2059797 () Bool)

(declare-fun c!1206477 () Bool)

(assert (=> d!2059797 (= c!1206477 ((_ is Nil!65492) lt!2406550))))

(declare-fun e!3973718 () (InoxSet C!33148))

(assert (=> d!2059797 (= (content!12598 lt!2406550) e!3973718)))

(declare-fun b!6564402 () Bool)

(assert (=> b!6564402 (= e!3973718 ((as const (Array C!33148 Bool)) false))))

(declare-fun b!6564403 () Bool)

(assert (=> b!6564403 (= e!3973718 ((_ map or) (store ((as const (Array C!33148 Bool)) false) (h!71940 lt!2406550) true) (content!12598 (t!379258 lt!2406550))))))

(assert (= (and d!2059797 c!1206477) b!6564402))

(assert (= (and d!2059797 (not c!1206477)) b!6564403))

(declare-fun m!7346608 () Bool)

(assert (=> b!6564403 m!7346608))

(declare-fun m!7346610 () Bool)

(assert (=> b!6564403 m!7346610))

(assert (=> d!2058751 d!2059797))

(declare-fun d!2059799 () Bool)

(declare-fun c!1206478 () Bool)

(assert (=> d!2059799 (= c!1206478 ((_ is Nil!65492) (_1!36721 lt!2406377)))))

(declare-fun e!3973719 () (InoxSet C!33148))

(assert (=> d!2059799 (= (content!12598 (_1!36721 lt!2406377)) e!3973719)))

(declare-fun b!6564404 () Bool)

(assert (=> b!6564404 (= e!3973719 ((as const (Array C!33148 Bool)) false))))

(declare-fun b!6564405 () Bool)

(assert (=> b!6564405 (= e!3973719 ((_ map or) (store ((as const (Array C!33148 Bool)) false) (h!71940 (_1!36721 lt!2406377)) true) (content!12598 (t!379258 (_1!36721 lt!2406377)))))))

(assert (= (and d!2059799 c!1206478) b!6564404))

(assert (= (and d!2059799 (not c!1206478)) b!6564405))

(declare-fun m!7346612 () Bool)

(assert (=> b!6564405 m!7346612))

(declare-fun m!7346614 () Bool)

(assert (=> b!6564405 m!7346614))

(assert (=> d!2058751 d!2059799))

(declare-fun d!2059801 () Bool)

(declare-fun c!1206479 () Bool)

(assert (=> d!2059801 (= c!1206479 ((_ is Nil!65492) (_2!36721 lt!2406377)))))

(declare-fun e!3973720 () (InoxSet C!33148))

(assert (=> d!2059801 (= (content!12598 (_2!36721 lt!2406377)) e!3973720)))

(declare-fun b!6564406 () Bool)

(assert (=> b!6564406 (= e!3973720 ((as const (Array C!33148 Bool)) false))))

(declare-fun b!6564407 () Bool)

(assert (=> b!6564407 (= e!3973720 ((_ map or) (store ((as const (Array C!33148 Bool)) false) (h!71940 (_2!36721 lt!2406377)) true) (content!12598 (t!379258 (_2!36721 lt!2406377)))))))

(assert (= (and d!2059801 c!1206479) b!6564406))

(assert (= (and d!2059801 (not c!1206479)) b!6564407))

(declare-fun m!7346616 () Bool)

(assert (=> b!6564407 m!7346616))

(declare-fun m!7346618 () Bool)

(assert (=> b!6564407 m!7346618))

(assert (=> d!2058751 d!2059801))

(declare-fun d!2059803 () Bool)

(assert (=> d!2059803 (= (nullable!6432 (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))) (nullableFct!2358 (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))))))

(declare-fun bs!1676316 () Bool)

(assert (= bs!1676316 d!2059803))

(declare-fun m!7346620 () Bool)

(assert (=> bs!1676316 m!7346620))

(assert (=> b!6562387 d!2059803))

(declare-fun d!2059805 () Bool)

(declare-fun res!2693684 () Bool)

(declare-fun e!3973721 () Bool)

(assert (=> d!2059805 (=> res!2693684 e!3973721)))

(assert (=> d!2059805 (= res!2693684 ((_ is Nil!65493) (exprs!6323 (h!71942 zl!343))))))

(assert (=> d!2059805 (= (forall!15611 (exprs!6323 (h!71942 zl!343)) lambda!365092) e!3973721)))

(declare-fun b!6564408 () Bool)

(declare-fun e!3973722 () Bool)

(assert (=> b!6564408 (= e!3973721 e!3973722)))

(declare-fun res!2693685 () Bool)

(assert (=> b!6564408 (=> (not res!2693685) (not e!3973722))))

(assert (=> b!6564408 (= res!2693685 (dynLambda!26053 lambda!365092 (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun b!6564409 () Bool)

(assert (=> b!6564409 (= e!3973722 (forall!15611 (t!379259 (exprs!6323 (h!71942 zl!343))) lambda!365092))))

(assert (= (and d!2059805 (not res!2693684)) b!6564408))

(assert (= (and b!6564408 res!2693685) b!6564409))

(declare-fun b_lambda!248301 () Bool)

(assert (=> (not b_lambda!248301) (not b!6564408)))

(declare-fun m!7346622 () Bool)

(assert (=> b!6564408 m!7346622))

(declare-fun m!7346624 () Bool)

(assert (=> b!6564409 m!7346624))

(assert (=> d!2058599 d!2059805))

(declare-fun d!2059807 () Bool)

(assert (=> d!2059807 true))

(assert (=> d!2059807 true))

(declare-fun res!2693686 () Bool)

(assert (=> d!2059807 (= (choose!48962 lambda!365048) res!2693686)))

(assert (=> d!2058629 d!2059807))

(assert (=> b!6562234 d!2059689))

(assert (=> b!6562234 d!2059541))

(declare-fun b!6564410 () Bool)

(declare-fun e!3973726 () Bool)

(declare-fun call!571127 () Bool)

(assert (=> b!6564410 (= e!3973726 call!571127)))

(declare-fun b!6564411 () Bool)

(declare-fun e!3973728 () Bool)

(declare-fun e!3973727 () Bool)

(assert (=> b!6564411 (= e!3973728 e!3973727)))

(declare-fun res!2693687 () Bool)

(assert (=> b!6564411 (=> res!2693687 e!3973727)))

(assert (=> b!6564411 (= res!2693687 ((_ is Star!16439) (reg!16768 (regOne!33390 r!7292))))))

(declare-fun bm!571122 () Bool)

(declare-fun c!1206480 () Bool)

(assert (=> bm!571122 (= call!571127 (nullable!6432 (ite c!1206480 (regTwo!33391 (reg!16768 (regOne!33390 r!7292))) (regTwo!33390 (reg!16768 (regOne!33390 r!7292))))))))

(declare-fun b!6564412 () Bool)

(declare-fun e!3973725 () Bool)

(assert (=> b!6564412 (= e!3973725 call!571127)))

(declare-fun b!6564413 () Bool)

(declare-fun e!3973723 () Bool)

(assert (=> b!6564413 (= e!3973723 e!3973725)))

(declare-fun res!2693688 () Bool)

(declare-fun call!571126 () Bool)

(assert (=> b!6564413 (= res!2693688 call!571126)))

(assert (=> b!6564413 (=> res!2693688 e!3973725)))

(declare-fun b!6564414 () Bool)

(assert (=> b!6564414 (= e!3973723 e!3973726)))

(declare-fun res!2693691 () Bool)

(assert (=> b!6564414 (= res!2693691 call!571126)))

(assert (=> b!6564414 (=> (not res!2693691) (not e!3973726))))

(declare-fun b!6564415 () Bool)

(declare-fun e!3973724 () Bool)

(assert (=> b!6564415 (= e!3973724 e!3973728)))

(declare-fun res!2693689 () Bool)

(assert (=> b!6564415 (=> (not res!2693689) (not e!3973728))))

(assert (=> b!6564415 (= res!2693689 (and (not ((_ is EmptyLang!16439) (reg!16768 (regOne!33390 r!7292)))) (not ((_ is ElementMatch!16439) (reg!16768 (regOne!33390 r!7292))))))))

(declare-fun b!6564416 () Bool)

(assert (=> b!6564416 (= e!3973727 e!3973723)))

(assert (=> b!6564416 (= c!1206480 ((_ is Union!16439) (reg!16768 (regOne!33390 r!7292))))))

(declare-fun bm!571121 () Bool)

(assert (=> bm!571121 (= call!571126 (nullable!6432 (ite c!1206480 (regOne!33391 (reg!16768 (regOne!33390 r!7292))) (regOne!33390 (reg!16768 (regOne!33390 r!7292))))))))

(declare-fun d!2059809 () Bool)

(declare-fun res!2693690 () Bool)

(assert (=> d!2059809 (=> res!2693690 e!3973724)))

(assert (=> d!2059809 (= res!2693690 ((_ is EmptyExpr!16439) (reg!16768 (regOne!33390 r!7292))))))

(assert (=> d!2059809 (= (nullableFct!2358 (reg!16768 (regOne!33390 r!7292))) e!3973724)))

(assert (= (and d!2059809 (not res!2693690)) b!6564415))

(assert (= (and b!6564415 res!2693689) b!6564411))

(assert (= (and b!6564411 (not res!2693687)) b!6564416))

(assert (= (and b!6564416 c!1206480) b!6564413))

(assert (= (and b!6564416 (not c!1206480)) b!6564414))

(assert (= (and b!6564413 (not res!2693688)) b!6564412))

(assert (= (and b!6564414 res!2693691) b!6564410))

(assert (= (or b!6564412 b!6564410) bm!571122))

(assert (= (or b!6564413 b!6564414) bm!571121))

(declare-fun m!7346626 () Bool)

(assert (=> bm!571122 m!7346626))

(declare-fun m!7346628 () Bool)

(assert (=> bm!571121 m!7346628))

(assert (=> d!2058577 d!2059809))

(declare-fun d!2059811 () Bool)

(declare-fun lt!2406761 () Int)

(assert (=> d!2059811 (>= lt!2406761 0)))

(declare-fun e!3973731 () Int)

(assert (=> d!2059811 (= lt!2406761 e!3973731)))

(declare-fun c!1206483 () Bool)

(assert (=> d!2059811 (= c!1206483 ((_ is Nil!65493) lt!2406604))))

(assert (=> d!2059811 (= (size!40528 lt!2406604) lt!2406761)))

(declare-fun b!6564421 () Bool)

(assert (=> b!6564421 (= e!3973731 0)))

(declare-fun b!6564422 () Bool)

(assert (=> b!6564422 (= e!3973731 (+ 1 (size!40528 (t!379259 lt!2406604))))))

(assert (= (and d!2059811 c!1206483) b!6564421))

(assert (= (and d!2059811 (not c!1206483)) b!6564422))

(declare-fun m!7346630 () Bool)

(assert (=> b!6564422 m!7346630))

(assert (=> b!6562348 d!2059811))

(declare-fun d!2059813 () Bool)

(declare-fun lt!2406762 () Int)

(assert (=> d!2059813 (>= lt!2406762 0)))

(declare-fun e!3973732 () Int)

(assert (=> d!2059813 (= lt!2406762 e!3973732)))

(declare-fun c!1206484 () Bool)

(assert (=> d!2059813 (= c!1206484 ((_ is Nil!65493) lt!2406344))))

(assert (=> d!2059813 (= (size!40528 lt!2406344) lt!2406762)))

(declare-fun b!6564423 () Bool)

(assert (=> b!6564423 (= e!3973732 0)))

(declare-fun b!6564424 () Bool)

(assert (=> b!6564424 (= e!3973732 (+ 1 (size!40528 (t!379259 lt!2406344))))))

(assert (= (and d!2059813 c!1206484) b!6564423))

(assert (= (and d!2059813 (not c!1206484)) b!6564424))

(declare-fun m!7346632 () Bool)

(assert (=> b!6564424 m!7346632))

(assert (=> b!6562348 d!2059813))

(declare-fun d!2059815 () Bool)

(declare-fun lt!2406763 () Int)

(assert (=> d!2059815 (>= lt!2406763 0)))

(declare-fun e!3973733 () Int)

(assert (=> d!2059815 (= lt!2406763 e!3973733)))

(declare-fun c!1206485 () Bool)

(assert (=> d!2059815 (= c!1206485 ((_ is Nil!65493) lt!2406366))))

(assert (=> d!2059815 (= (size!40528 lt!2406366) lt!2406763)))

(declare-fun b!6564425 () Bool)

(assert (=> b!6564425 (= e!3973733 0)))

(declare-fun b!6564426 () Bool)

(assert (=> b!6564426 (= e!3973733 (+ 1 (size!40528 (t!379259 lt!2406366))))))

(assert (= (and d!2059815 c!1206485) b!6564425))

(assert (= (and d!2059815 (not c!1206485)) b!6564426))

(declare-fun m!7346634 () Bool)

(assert (=> b!6564426 m!7346634))

(assert (=> b!6562348 d!2059815))

(declare-fun b!6564427 () Bool)

(declare-fun e!3973736 () Bool)

(declare-fun e!3973739 () Bool)

(assert (=> b!6564427 (= e!3973736 e!3973739)))

(declare-fun res!2693698 () Bool)

(assert (=> b!6564427 (=> (not res!2693698) (not e!3973739))))

(declare-fun lt!2406764 () Bool)

(assert (=> b!6564427 (= res!2693698 (not lt!2406764))))

(declare-fun b!6564428 () Bool)

(declare-fun res!2693695 () Bool)

(declare-fun e!3973738 () Bool)

(assert (=> b!6564428 (=> res!2693695 e!3973738)))

(assert (=> b!6564428 (= res!2693695 (not (isEmpty!37737 (tail!12414 (_2!36721 (get!22740 lt!2406527))))))))

(declare-fun b!6564429 () Bool)

(declare-fun e!3973734 () Bool)

(declare-fun call!571128 () Bool)

(assert (=> b!6564429 (= e!3973734 (= lt!2406764 call!571128))))

(declare-fun b!6564431 () Bool)

(declare-fun res!2693694 () Bool)

(declare-fun e!3973737 () Bool)

(assert (=> b!6564431 (=> (not res!2693694) (not e!3973737))))

(assert (=> b!6564431 (= res!2693694 (isEmpty!37737 (tail!12414 (_2!36721 (get!22740 lt!2406527)))))))

(declare-fun b!6564432 () Bool)

(assert (=> b!6564432 (= e!3973737 (= (head!13329 (_2!36721 (get!22740 lt!2406527))) (c!1205620 lt!2406358)))))

(declare-fun b!6564433 () Bool)

(declare-fun res!2693696 () Bool)

(assert (=> b!6564433 (=> res!2693696 e!3973736)))

(assert (=> b!6564433 (= res!2693696 e!3973737)))

(declare-fun res!2693692 () Bool)

(assert (=> b!6564433 (=> (not res!2693692) (not e!3973737))))

(assert (=> b!6564433 (= res!2693692 lt!2406764)))

(declare-fun b!6564434 () Bool)

(declare-fun e!3973740 () Bool)

(assert (=> b!6564434 (= e!3973740 (not lt!2406764))))

(declare-fun b!6564435 () Bool)

(declare-fun res!2693699 () Bool)

(assert (=> b!6564435 (=> (not res!2693699) (not e!3973737))))

(assert (=> b!6564435 (= res!2693699 (not call!571128))))

(declare-fun b!6564436 () Bool)

(assert (=> b!6564436 (= e!3973739 e!3973738)))

(declare-fun res!2693693 () Bool)

(assert (=> b!6564436 (=> res!2693693 e!3973738)))

(assert (=> b!6564436 (= res!2693693 call!571128)))

(declare-fun b!6564437 () Bool)

(declare-fun e!3973735 () Bool)

(assert (=> b!6564437 (= e!3973735 (nullable!6432 lt!2406358))))

(declare-fun bm!571123 () Bool)

(assert (=> bm!571123 (= call!571128 (isEmpty!37737 (_2!36721 (get!22740 lt!2406527))))))

(declare-fun b!6564438 () Bool)

(assert (=> b!6564438 (= e!3973734 e!3973740)))

(declare-fun c!1206486 () Bool)

(assert (=> b!6564438 (= c!1206486 ((_ is EmptyLang!16439) lt!2406358))))

(declare-fun b!6564439 () Bool)

(declare-fun res!2693697 () Bool)

(assert (=> b!6564439 (=> res!2693697 e!3973736)))

(assert (=> b!6564439 (= res!2693697 (not ((_ is ElementMatch!16439) lt!2406358)))))

(assert (=> b!6564439 (= e!3973740 e!3973736)))

(declare-fun b!6564440 () Bool)

(assert (=> b!6564440 (= e!3973735 (matchR!8622 (derivativeStep!5123 lt!2406358 (head!13329 (_2!36721 (get!22740 lt!2406527)))) (tail!12414 (_2!36721 (get!22740 lt!2406527)))))))

(declare-fun d!2059817 () Bool)

(assert (=> d!2059817 e!3973734))

(declare-fun c!1206488 () Bool)

(assert (=> d!2059817 (= c!1206488 ((_ is EmptyExpr!16439) lt!2406358))))

(assert (=> d!2059817 (= lt!2406764 e!3973735)))

(declare-fun c!1206487 () Bool)

(assert (=> d!2059817 (= c!1206487 (isEmpty!37737 (_2!36721 (get!22740 lt!2406527))))))

(assert (=> d!2059817 (validRegex!8175 lt!2406358)))

(assert (=> d!2059817 (= (matchR!8622 lt!2406358 (_2!36721 (get!22740 lt!2406527))) lt!2406764)))

(declare-fun b!6564430 () Bool)

(assert (=> b!6564430 (= e!3973738 (not (= (head!13329 (_2!36721 (get!22740 lt!2406527))) (c!1205620 lt!2406358))))))

(assert (= (and d!2059817 c!1206487) b!6564437))

(assert (= (and d!2059817 (not c!1206487)) b!6564440))

(assert (= (and d!2059817 c!1206488) b!6564429))

(assert (= (and d!2059817 (not c!1206488)) b!6564438))

(assert (= (and b!6564438 c!1206486) b!6564434))

(assert (= (and b!6564438 (not c!1206486)) b!6564439))

(assert (= (and b!6564439 (not res!2693697)) b!6564433))

(assert (= (and b!6564433 res!2693692) b!6564435))

(assert (= (and b!6564435 res!2693699) b!6564431))

(assert (= (and b!6564431 res!2693694) b!6564432))

(assert (= (and b!6564433 (not res!2693696)) b!6564427))

(assert (= (and b!6564427 res!2693698) b!6564436))

(assert (= (and b!6564436 (not res!2693693)) b!6564428))

(assert (= (and b!6564428 (not res!2693695)) b!6564430))

(assert (= (or b!6564429 b!6564435 b!6564436) bm!571123))

(declare-fun m!7346636 () Bool)

(assert (=> bm!571123 m!7346636))

(assert (=> d!2059817 m!7346636))

(assert (=> d!2059817 m!7344384))

(declare-fun m!7346638 () Bool)

(assert (=> b!6564431 m!7346638))

(assert (=> b!6564431 m!7346638))

(declare-fun m!7346640 () Bool)

(assert (=> b!6564431 m!7346640))

(declare-fun m!7346642 () Bool)

(assert (=> b!6564432 m!7346642))

(assert (=> b!6564430 m!7346642))

(assert (=> b!6564428 m!7346638))

(assert (=> b!6564428 m!7346638))

(assert (=> b!6564428 m!7346640))

(assert (=> b!6564437 m!7346320))

(assert (=> b!6564440 m!7346642))

(assert (=> b!6564440 m!7346642))

(declare-fun m!7346644 () Bool)

(assert (=> b!6564440 m!7346644))

(assert (=> b!6564440 m!7346638))

(assert (=> b!6564440 m!7346644))

(assert (=> b!6564440 m!7346638))

(declare-fun m!7346646 () Bool)

(assert (=> b!6564440 m!7346646))

(assert (=> b!6561997 d!2059817))

(assert (=> b!6561997 d!2059601))

(assert (=> d!2058809 d!2058785))

(assert (=> d!2058809 d!2058607))

(declare-fun d!2059819 () Bool)

(assert (=> d!2059819 (= (matchR!8622 lt!2406341 (_2!36721 lt!2406377)) (matchZipper!2451 lt!2406394 (_2!36721 lt!2406377)))))

(assert (=> d!2059819 true))

(declare-fun _$44!1692 () Unit!159091)

(assert (=> d!2059819 (= (choose!48976 lt!2406394 lt!2406393 lt!2406341 (_2!36721 lt!2406377)) _$44!1692)))

(declare-fun bs!1676317 () Bool)

(assert (= bs!1676317 d!2059819))

(assert (=> bs!1676317 m!7343320))

(assert (=> bs!1676317 m!7343254))

(assert (=> d!2058809 d!2059819))

(assert (=> d!2058809 d!2059533))

(declare-fun d!2059821 () Bool)

(assert (=> d!2059821 (= (nullable!6432 (reg!16768 (reg!16768 (regOne!33390 r!7292)))) (nullableFct!2358 (reg!16768 (reg!16768 (regOne!33390 r!7292)))))))

(declare-fun bs!1676318 () Bool)

(assert (= bs!1676318 d!2059821))

(declare-fun m!7346648 () Bool)

(assert (=> bs!1676318 m!7346648))

(assert (=> b!6561769 d!2059821))

(assert (=> d!2058849 d!2058859))

(declare-fun d!2059823 () Bool)

(assert (=> d!2059823 (= (flatMap!1944 z!1189 lambda!365043) (dynLambda!26049 lambda!365043 (h!71942 zl!343)))))

(assert (=> d!2059823 true))

(declare-fun _$13!3810 () Unit!159091)

(assert (=> d!2059823 (= (choose!48969 z!1189 (h!71942 zl!343) lambda!365043) _$13!3810)))

(declare-fun b_lambda!248303 () Bool)

(assert (=> (not b_lambda!248303) (not d!2059823)))

(declare-fun bs!1676319 () Bool)

(assert (= bs!1676319 d!2059823))

(assert (=> bs!1676319 m!7343242))

(assert (=> bs!1676319 m!7344468))

(assert (=> d!2058849 d!2059823))

(declare-fun bs!1676320 () Bool)

(declare-fun b!6564449 () Bool)

(assert (= bs!1676320 (and b!6564449 d!2058817)))

(declare-fun lambda!365254 () Int)

(assert (=> bs!1676320 (not (= lambda!365254 lambda!365141))))

(declare-fun bs!1676321 () Bool)

(assert (= bs!1676321 (and b!6564449 b!6564157)))

(assert (=> bs!1676321 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33391 lt!2406360)) (reg!16768 (regTwo!33391 r!7292))) (= (regOne!33391 lt!2406360) (regTwo!33391 r!7292))) (= lambda!365254 lambda!365241))))

(declare-fun bs!1676322 () Bool)

(assert (= bs!1676322 (and b!6564449 b!6561249)))

(assert (=> bs!1676322 (not (= lambda!365254 lambda!365048))))

(declare-fun bs!1676323 () Bool)

(assert (= bs!1676323 (and b!6564449 d!2058617)))

(assert (=> bs!1676323 (not (= lambda!365254 lambda!365100))))

(declare-fun bs!1676324 () Bool)

(assert (= bs!1676324 (and b!6564449 d!2059659)))

(assert (=> bs!1676324 (not (= lambda!365254 lambda!365239))))

(declare-fun bs!1676325 () Bool)

(assert (= bs!1676325 (and b!6564449 b!6561283)))

(assert (=> bs!1676325 (not (= lambda!365254 lambda!365041))))

(assert (=> bs!1676325 (not (= lambda!365254 lambda!365042))))

(declare-fun bs!1676326 () Bool)

(assert (= bs!1676326 (and b!6564449 d!2058767)))

(assert (=> bs!1676326 (not (= lambda!365254 lambda!365130))))

(declare-fun bs!1676327 () Bool)

(assert (= bs!1676327 (and b!6564449 b!6562199)))

(assert (=> bs!1676327 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33391 lt!2406360)) (reg!16768 r!7292)) (= (regOne!33391 lt!2406360) r!7292)) (= lambda!365254 lambda!365132))))

(declare-fun bs!1676328 () Bool)

(assert (= bs!1676328 (and b!6564449 d!2058793)))

(assert (=> bs!1676328 (not (= lambda!365254 lambda!365135))))

(declare-fun bs!1676329 () Bool)

(assert (= bs!1676329 (and b!6564449 b!6561898)))

(assert (=> bs!1676329 (not (= lambda!365254 lambda!365111))))

(assert (=> bs!1676324 (not (= lambda!365254 lambda!365238))))

(declare-fun bs!1676330 () Bool)

(assert (= bs!1676330 (and b!6564449 d!2058681)))

(assert (=> bs!1676330 (not (= lambda!365254 lambda!365116))))

(declare-fun bs!1676331 () Bool)

(assert (= bs!1676331 (and b!6564449 b!6562323)))

(assert (=> bs!1676331 (not (= lambda!365254 lambda!365140))))

(declare-fun bs!1676332 () Bool)

(assert (= bs!1676332 (and b!6564449 b!6563924)))

(assert (=> bs!1676332 (not (= lambda!365254 lambda!365232))))

(declare-fun bs!1676333 () Bool)

(assert (= bs!1676333 (and b!6564449 b!6561287)))

(assert (=> bs!1676333 (not (= lambda!365254 lambda!365047))))

(declare-fun bs!1676334 () Bool)

(assert (= bs!1676334 (and b!6564449 d!2058765)))

(assert (=> bs!1676334 (not (= lambda!365254 lambda!365129))))

(declare-fun bs!1676335 () Bool)

(assert (= bs!1676335 (and b!6564449 b!6562327)))

(assert (=> bs!1676335 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33391 lt!2406360)) (reg!16768 lt!2406396)) (= (regOne!33391 lt!2406360) lt!2406396)) (= lambda!365254 lambda!365139))))

(declare-fun bs!1676336 () Bool)

(assert (= bs!1676336 (and b!6564449 b!6562195)))

(assert (=> bs!1676336 (not (= lambda!365254 lambda!365133))))

(declare-fun bs!1676337 () Bool)

(assert (= bs!1676337 (and b!6564449 d!2059791)))

(assert (=> bs!1676337 (not (= lambda!365254 lambda!365252))))

(assert (=> bs!1676326 (not (= lambda!365254 lambda!365131))))

(declare-fun bs!1676338 () Bool)

(assert (= bs!1676338 (and b!6564449 d!2059477)))

(assert (=> bs!1676338 (not (= lambda!365254 lambda!365225))))

(assert (=> bs!1676337 (not (= lambda!365254 lambda!365253))))

(declare-fun bs!1676339 () Bool)

(assert (= bs!1676339 (and b!6564449 b!6564340)))

(assert (=> bs!1676339 (not (= lambda!365254 lambda!365246))))

(declare-fun bs!1676340 () Bool)

(assert (= bs!1676340 (and b!6564449 b!6563928)))

(assert (=> bs!1676340 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33391 lt!2406360)) (reg!16768 (regOne!33391 lt!2406349))) (= (regOne!33391 lt!2406360) (regOne!33391 lt!2406349))) (= lambda!365254 lambda!365231))))

(declare-fun bs!1676341 () Bool)

(assert (= bs!1676341 (and b!6564449 b!6564344)))

(assert (=> bs!1676341 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33391 lt!2406360)) (reg!16768 (regTwo!33391 lt!2406396))) (= (regOne!33391 lt!2406360) (regTwo!33391 lt!2406396))) (= lambda!365254 lambda!365245))))

(assert (=> bs!1676328 (not (= lambda!365254 lambda!365134))))

(assert (=> bs!1676323 (not (= lambda!365254 lambda!365097))))

(declare-fun bs!1676342 () Bool)

(assert (= bs!1676342 (and b!6564449 b!6561902)))

(assert (=> bs!1676342 (= (and (= (reg!16768 (regOne!33391 lt!2406360)) (reg!16768 lt!2406360)) (= (regOne!33391 lt!2406360) lt!2406360)) (= lambda!365254 lambda!365109))))

(declare-fun bs!1676343 () Bool)

(assert (= bs!1676343 (and b!6564449 b!6564153)))

(assert (=> bs!1676343 (not (= lambda!365254 lambda!365242))))

(assert (=> bs!1676338 (not (= lambda!365254 lambda!365226))))

(declare-fun bs!1676344 () Bool)

(assert (= bs!1676344 (and b!6564449 b!6562412)))

(assert (=> bs!1676344 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33391 lt!2406360)) (reg!16768 lt!2406349)) (= (regOne!33391 lt!2406360) lt!2406349)) (= lambda!365254 lambda!365150))))

(declare-fun bs!1676345 () Bool)

(assert (= bs!1676345 (and b!6564449 b!6562408)))

(assert (=> bs!1676345 (not (= lambda!365254 lambda!365151))))

(declare-fun bs!1676346 () Bool)

(assert (= bs!1676346 (and b!6564449 b!6563956)))

(assert (=> bs!1676346 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33391 lt!2406360)) (reg!16768 (regOne!33391 r!7292))) (= (regOne!33391 lt!2406360) (regOne!33391 r!7292))) (= lambda!365254 lambda!365234))))

(assert (=> bs!1676333 (not (= lambda!365254 lambda!365046))))

(declare-fun bs!1676347 () Bool)

(assert (= bs!1676347 (and b!6564449 b!6563952)))

(assert (=> bs!1676347 (not (= lambda!365254 lambda!365235))))

(assert (=> bs!1676322 (not (= lambda!365254 lambda!365049))))

(assert (=> b!6564449 true))

(assert (=> b!6564449 true))

(declare-fun bs!1676348 () Bool)

(declare-fun b!6564445 () Bool)

(assert (= bs!1676348 (and b!6564445 d!2058817)))

(declare-fun lambda!365255 () Int)

(assert (=> bs!1676348 (not (= lambda!365255 lambda!365141))))

(declare-fun bs!1676349 () Bool)

(assert (= bs!1676349 (and b!6564445 b!6564157)))

(assert (=> bs!1676349 (not (= lambda!365255 lambda!365241))))

(declare-fun bs!1676350 () Bool)

(assert (= bs!1676350 (and b!6564445 b!6561249)))

(assert (=> bs!1676350 (not (= lambda!365255 lambda!365048))))

(declare-fun bs!1676351 () Bool)

(assert (= bs!1676351 (and b!6564445 d!2058617)))

(assert (=> bs!1676351 (= (and (= (regOne!33390 (regOne!33391 lt!2406360)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regOne!33391 lt!2406360)) lt!2406358)) (= lambda!365255 lambda!365100))))

(declare-fun bs!1676352 () Bool)

(assert (= bs!1676352 (and b!6564445 d!2059659)))

(assert (=> bs!1676352 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regOne!33391 lt!2406360)) lt!2406360) (= (regTwo!33390 (regOne!33391 lt!2406360)) (regTwo!33390 r!7292))) (= lambda!365255 lambda!365239))))

(declare-fun bs!1676353 () Bool)

(assert (= bs!1676353 (and b!6564445 b!6561283)))

(assert (=> bs!1676353 (not (= lambda!365255 lambda!365041))))

(assert (=> bs!1676353 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regOne!33391 lt!2406360)) (regOne!33390 r!7292)) (= (regTwo!33390 (regOne!33391 lt!2406360)) (regTwo!33390 r!7292))) (= lambda!365255 lambda!365042))))

(declare-fun bs!1676354 () Bool)

(assert (= bs!1676354 (and b!6564445 d!2058767)))

(assert (=> bs!1676354 (not (= lambda!365255 lambda!365130))))

(declare-fun bs!1676355 () Bool)

(assert (= bs!1676355 (and b!6564445 b!6562199)))

(assert (=> bs!1676355 (not (= lambda!365255 lambda!365132))))

(declare-fun bs!1676356 () Bool)

(assert (= bs!1676356 (and b!6564445 d!2058793)))

(assert (=> bs!1676356 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regOne!33391 lt!2406360)) lt!2406360) (= (regTwo!33390 (regOne!33391 lt!2406360)) (regTwo!33390 r!7292))) (= lambda!365255 lambda!365135))))

(declare-fun bs!1676357 () Bool)

(assert (= bs!1676357 (and b!6564445 b!6561898)))

(assert (=> bs!1676357 (= (and (= (regOne!33390 (regOne!33391 lt!2406360)) (regOne!33390 lt!2406360)) (= (regTwo!33390 (regOne!33391 lt!2406360)) (regTwo!33390 lt!2406360))) (= lambda!365255 lambda!365111))))

(assert (=> bs!1676352 (not (= lambda!365255 lambda!365238))))

(declare-fun bs!1676358 () Bool)

(assert (= bs!1676358 (and b!6564445 d!2058681)))

(assert (=> bs!1676358 (not (= lambda!365255 lambda!365116))))

(declare-fun bs!1676359 () Bool)

(assert (= bs!1676359 (and b!6564445 b!6562323)))

(assert (=> bs!1676359 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regOne!33391 lt!2406360)) (regOne!33390 lt!2406396)) (= (regTwo!33390 (regOne!33391 lt!2406360)) (regTwo!33390 lt!2406396))) (= lambda!365255 lambda!365140))))

(declare-fun bs!1676360 () Bool)

(assert (= bs!1676360 (and b!6564445 b!6563924)))

(assert (=> bs!1676360 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regOne!33391 lt!2406360)) (regOne!33390 (regOne!33391 lt!2406349))) (= (regTwo!33390 (regOne!33391 lt!2406360)) (regTwo!33390 (regOne!33391 lt!2406349)))) (= lambda!365255 lambda!365232))))

(declare-fun bs!1676361 () Bool)

(assert (= bs!1676361 (and b!6564445 b!6561287)))

(assert (=> bs!1676361 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regOne!33391 lt!2406360)) lt!2406360) (= (regTwo!33390 (regOne!33391 lt!2406360)) (regTwo!33390 r!7292))) (= lambda!365255 lambda!365047))))

(declare-fun bs!1676362 () Bool)

(assert (= bs!1676362 (and b!6564445 b!6564449)))

(assert (=> bs!1676362 (not (= lambda!365255 lambda!365254))))

(declare-fun bs!1676363 () Bool)

(assert (= bs!1676363 (and b!6564445 d!2058765)))

(assert (=> bs!1676363 (not (= lambda!365255 lambda!365129))))

(declare-fun bs!1676364 () Bool)

(assert (= bs!1676364 (and b!6564445 b!6562327)))

(assert (=> bs!1676364 (not (= lambda!365255 lambda!365139))))

(declare-fun bs!1676365 () Bool)

(assert (= bs!1676365 (and b!6564445 b!6562195)))

(assert (=> bs!1676365 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regOne!33391 lt!2406360)) (regOne!33390 r!7292)) (= (regTwo!33390 (regOne!33391 lt!2406360)) (regTwo!33390 r!7292))) (= lambda!365255 lambda!365133))))

(declare-fun bs!1676366 () Bool)

(assert (= bs!1676366 (and b!6564445 d!2059791)))

(assert (=> bs!1676366 (not (= lambda!365255 lambda!365252))))

(assert (=> bs!1676354 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regOne!33391 lt!2406360)) (regOne!33390 r!7292)) (= (regTwo!33390 (regOne!33391 lt!2406360)) (regTwo!33390 r!7292))) (= lambda!365255 lambda!365131))))

(declare-fun bs!1676367 () Bool)

(assert (= bs!1676367 (and b!6564445 d!2059477)))

(assert (=> bs!1676367 (not (= lambda!365255 lambda!365225))))

(assert (=> bs!1676366 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regOne!33391 lt!2406360)) (regOne!33390 r!7292)) (= (regTwo!33390 (regOne!33391 lt!2406360)) (regTwo!33390 r!7292))) (= lambda!365255 lambda!365253))))

(declare-fun bs!1676368 () Bool)

(assert (= bs!1676368 (and b!6564445 b!6564340)))

(assert (=> bs!1676368 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regOne!33391 lt!2406360)) (regOne!33390 (regTwo!33391 lt!2406396))) (= (regTwo!33390 (regOne!33391 lt!2406360)) (regTwo!33390 (regTwo!33391 lt!2406396)))) (= lambda!365255 lambda!365246))))

(declare-fun bs!1676369 () Bool)

(assert (= bs!1676369 (and b!6564445 b!6563928)))

(assert (=> bs!1676369 (not (= lambda!365255 lambda!365231))))

(declare-fun bs!1676370 () Bool)

(assert (= bs!1676370 (and b!6564445 b!6564344)))

(assert (=> bs!1676370 (not (= lambda!365255 lambda!365245))))

(assert (=> bs!1676356 (not (= lambda!365255 lambda!365134))))

(assert (=> bs!1676351 (not (= lambda!365255 lambda!365097))))

(declare-fun bs!1676371 () Bool)

(assert (= bs!1676371 (and b!6564445 b!6561902)))

(assert (=> bs!1676371 (not (= lambda!365255 lambda!365109))))

(declare-fun bs!1676372 () Bool)

(assert (= bs!1676372 (and b!6564445 b!6564153)))

(assert (=> bs!1676372 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regOne!33391 lt!2406360)) (regOne!33390 (regTwo!33391 r!7292))) (= (regTwo!33390 (regOne!33391 lt!2406360)) (regTwo!33390 (regTwo!33391 r!7292)))) (= lambda!365255 lambda!365242))))

(assert (=> bs!1676367 (= (and (= (regOne!33390 (regOne!33391 lt!2406360)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regOne!33391 lt!2406360)) lt!2406358)) (= lambda!365255 lambda!365226))))

(declare-fun bs!1676373 () Bool)

(assert (= bs!1676373 (and b!6564445 b!6562412)))

(assert (=> bs!1676373 (not (= lambda!365255 lambda!365150))))

(declare-fun bs!1676374 () Bool)

(assert (= bs!1676374 (and b!6564445 b!6562408)))

(assert (=> bs!1676374 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regOne!33391 lt!2406360)) (regOne!33390 lt!2406349)) (= (regTwo!33390 (regOne!33391 lt!2406360)) (regTwo!33390 lt!2406349))) (= lambda!365255 lambda!365151))))

(declare-fun bs!1676375 () Bool)

(assert (= bs!1676375 (and b!6564445 b!6563956)))

(assert (=> bs!1676375 (not (= lambda!365255 lambda!365234))))

(assert (=> bs!1676361 (not (= lambda!365255 lambda!365046))))

(declare-fun bs!1676376 () Bool)

(assert (= bs!1676376 (and b!6564445 b!6563952)))

(assert (=> bs!1676376 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regOne!33391 lt!2406360)) (regOne!33390 (regOne!33391 r!7292))) (= (regTwo!33390 (regOne!33391 lt!2406360)) (regTwo!33390 (regOne!33391 r!7292)))) (= lambda!365255 lambda!365235))))

(assert (=> bs!1676350 (= (and (= (regOne!33390 (regOne!33391 lt!2406360)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regOne!33391 lt!2406360)) lt!2406358)) (= lambda!365255 lambda!365049))))

(assert (=> b!6564445 true))

(assert (=> b!6564445 true))

(declare-fun b!6564441 () Bool)

(declare-fun c!1206492 () Bool)

(assert (=> b!6564441 (= c!1206492 ((_ is ElementMatch!16439) (regOne!33391 lt!2406360)))))

(declare-fun e!3973744 () Bool)

(declare-fun e!3973746 () Bool)

(assert (=> b!6564441 (= e!3973744 e!3973746)))

(declare-fun b!6564442 () Bool)

(declare-fun res!2693701 () Bool)

(declare-fun e!3973747 () Bool)

(assert (=> b!6564442 (=> res!2693701 e!3973747)))

(declare-fun call!571130 () Bool)

(assert (=> b!6564442 (= res!2693701 call!571130)))

(declare-fun e!3973743 () Bool)

(assert (=> b!6564442 (= e!3973743 e!3973747)))

(declare-fun b!6564443 () Bool)

(declare-fun e!3973741 () Bool)

(declare-fun e!3973742 () Bool)

(assert (=> b!6564443 (= e!3973741 e!3973742)))

(declare-fun res!2693702 () Bool)

(assert (=> b!6564443 (= res!2693702 (matchRSpec!3540 (regOne!33391 (regOne!33391 lt!2406360)) (_1!36721 lt!2406397)))))

(assert (=> b!6564443 (=> res!2693702 e!3973742)))

(declare-fun b!6564444 () Bool)

(declare-fun e!3973745 () Bool)

(assert (=> b!6564444 (= e!3973745 call!571130)))

(declare-fun call!571129 () Bool)

(assert (=> b!6564445 (= e!3973743 call!571129)))

(declare-fun b!6564446 () Bool)

(assert (=> b!6564446 (= e!3973746 (= (_1!36721 lt!2406397) (Cons!65492 (c!1205620 (regOne!33391 lt!2406360)) Nil!65492)))))

(declare-fun bm!571124 () Bool)

(assert (=> bm!571124 (= call!571130 (isEmpty!37737 (_1!36721 lt!2406397)))))

(declare-fun b!6564447 () Bool)

(declare-fun c!1206489 () Bool)

(assert (=> b!6564447 (= c!1206489 ((_ is Union!16439) (regOne!33391 lt!2406360)))))

(assert (=> b!6564447 (= e!3973746 e!3973741)))

(declare-fun b!6564448 () Bool)

(assert (=> b!6564448 (= e!3973741 e!3973743)))

(declare-fun c!1206490 () Bool)

(assert (=> b!6564448 (= c!1206490 ((_ is Star!16439) (regOne!33391 lt!2406360)))))

(declare-fun d!2059825 () Bool)

(declare-fun c!1206491 () Bool)

(assert (=> d!2059825 (= c!1206491 ((_ is EmptyExpr!16439) (regOne!33391 lt!2406360)))))

(assert (=> d!2059825 (= (matchRSpec!3540 (regOne!33391 lt!2406360) (_1!36721 lt!2406397)) e!3973745)))

(assert (=> b!6564449 (= e!3973747 call!571129)))

(declare-fun b!6564450 () Bool)

(assert (=> b!6564450 (= e!3973745 e!3973744)))

(declare-fun res!2693700 () Bool)

(assert (=> b!6564450 (= res!2693700 (not ((_ is EmptyLang!16439) (regOne!33391 lt!2406360))))))

(assert (=> b!6564450 (=> (not res!2693700) (not e!3973744))))

(declare-fun b!6564451 () Bool)

(assert (=> b!6564451 (= e!3973742 (matchRSpec!3540 (regTwo!33391 (regOne!33391 lt!2406360)) (_1!36721 lt!2406397)))))

(declare-fun bm!571125 () Bool)

(assert (=> bm!571125 (= call!571129 (Exists!3509 (ite c!1206490 lambda!365254 lambda!365255)))))

(assert (= (and d!2059825 c!1206491) b!6564444))

(assert (= (and d!2059825 (not c!1206491)) b!6564450))

(assert (= (and b!6564450 res!2693700) b!6564441))

(assert (= (and b!6564441 c!1206492) b!6564446))

(assert (= (and b!6564441 (not c!1206492)) b!6564447))

(assert (= (and b!6564447 c!1206489) b!6564443))

(assert (= (and b!6564447 (not c!1206489)) b!6564448))

(assert (= (and b!6564443 (not res!2693702)) b!6564451))

(assert (= (and b!6564448 c!1206490) b!6564442))

(assert (= (and b!6564448 (not c!1206490)) b!6564445))

(assert (= (and b!6564442 (not res!2693701)) b!6564449))

(assert (= (or b!6564449 b!6564445) bm!571125))

(assert (= (or b!6564444 b!6564442) bm!571124))

(declare-fun m!7346650 () Bool)

(assert (=> b!6564443 m!7346650))

(assert (=> bm!571124 m!7343974))

(declare-fun m!7346652 () Bool)

(assert (=> b!6564451 m!7346652))

(declare-fun m!7346654 () Bool)

(assert (=> bm!571125 m!7346654))

(assert (=> b!6561896 d!2059825))

(assert (=> d!2058781 d!2059449))

(declare-fun bs!1676377 () Bool)

(declare-fun d!2059827 () Bool)

(assert (= bs!1676377 (and d!2059827 d!2059773)))

(declare-fun lambda!365256 () Int)

(assert (=> bs!1676377 (= lambda!365256 lambda!365250)))

(declare-fun bs!1676378 () Bool)

(assert (= bs!1676378 (and d!2059827 d!2059785)))

(assert (=> bs!1676378 (= lambda!365256 lambda!365251)))

(declare-fun bs!1676379 () Bool)

(assert (= bs!1676379 (and d!2059827 d!2059453)))

(assert (=> bs!1676379 (= lambda!365256 lambda!365219)))

(declare-fun bs!1676380 () Bool)

(assert (= bs!1676380 (and d!2059827 d!2059713)))

(assert (=> bs!1676380 (= lambda!365256 lambda!365243)))

(declare-fun bs!1676381 () Bool)

(assert (= bs!1676381 (and d!2059827 d!2059671)))

(assert (=> bs!1676381 (= lambda!365256 lambda!365240)))

(assert (=> d!2059827 (= (nullableZipper!2184 lt!2406342) (exists!2639 lt!2406342 lambda!365256))))

(declare-fun bs!1676382 () Bool)

(assert (= bs!1676382 d!2059827))

(declare-fun m!7346656 () Bool)

(assert (=> bs!1676382 m!7346656))

(assert (=> b!6561733 d!2059827))

(assert (=> b!6562176 d!2059517))

(assert (=> b!6562176 d!2059519))

(assert (=> b!6562176 d!2059521))

(declare-fun b!6564452 () Bool)

(declare-fun e!3973749 () Bool)

(declare-fun lt!2406766 () Option!16330)

(assert (=> b!6564452 (= e!3973749 (not (isDefined!13033 lt!2406766)))))

(declare-fun b!6564453 () Bool)

(declare-fun res!2693704 () Bool)

(declare-fun e!3973750 () Bool)

(assert (=> b!6564453 (=> (not res!2693704) (not e!3973750))))

(assert (=> b!6564453 (= res!2693704 (matchZipper!2451 lt!2406365 (_1!36721 (get!22740 lt!2406766))))))

(declare-fun b!6564454 () Bool)

(declare-fun e!3973751 () Option!16330)

(assert (=> b!6564454 (= e!3973751 (Some!16329 (tuple2!66837 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (t!379258 s!2326))))))

(declare-fun b!6564455 () Bool)

(declare-fun lt!2406767 () Unit!159091)

(declare-fun lt!2406765 () Unit!159091)

(assert (=> b!6564455 (= lt!2406767 lt!2406765)))

(assert (=> b!6564455 (= (++!14580 (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (Cons!65492 (h!71940 (t!379258 s!2326)) Nil!65492)) (t!379258 (t!379258 s!2326))) s!2326)))

(assert (=> b!6564455 (= lt!2406765 (lemmaMoveElementToOtherListKeepsConcatEq!2582 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (h!71940 (t!379258 s!2326)) (t!379258 (t!379258 s!2326)) s!2326))))

(declare-fun e!3973752 () Option!16330)

(assert (=> b!6564455 (= e!3973752 (findConcatSeparationZippers!204 lt!2406365 lt!2406394 (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (Cons!65492 (h!71940 (t!379258 s!2326)) Nil!65492)) (t!379258 (t!379258 s!2326)) s!2326))))

(declare-fun b!6564456 () Bool)

(declare-fun e!3973748 () Bool)

(assert (=> b!6564456 (= e!3973748 (matchZipper!2451 lt!2406394 (t!379258 s!2326)))))

(declare-fun d!2059829 () Bool)

(assert (=> d!2059829 e!3973749))

(declare-fun res!2693706 () Bool)

(assert (=> d!2059829 (=> res!2693706 e!3973749)))

(assert (=> d!2059829 (= res!2693706 e!3973750)))

(declare-fun res!2693707 () Bool)

(assert (=> d!2059829 (=> (not res!2693707) (not e!3973750))))

(assert (=> d!2059829 (= res!2693707 (isDefined!13033 lt!2406766))))

(assert (=> d!2059829 (= lt!2406766 e!3973751)))

(declare-fun c!1206493 () Bool)

(assert (=> d!2059829 (= c!1206493 e!3973748)))

(declare-fun res!2693703 () Bool)

(assert (=> d!2059829 (=> (not res!2693703) (not e!3973748))))

(assert (=> d!2059829 (= res!2693703 (matchZipper!2451 lt!2406365 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492))))))

(assert (=> d!2059829 (= (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (t!379258 s!2326)) s!2326)))

(assert (=> d!2059829 (= (findConcatSeparationZippers!204 lt!2406365 lt!2406394 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (t!379258 s!2326) s!2326) lt!2406766)))

(declare-fun b!6564457 () Bool)

(assert (=> b!6564457 (= e!3973752 None!16329)))

(declare-fun b!6564458 () Bool)

(assert (=> b!6564458 (= e!3973750 (= (++!14580 (_1!36721 (get!22740 lt!2406766)) (_2!36721 (get!22740 lt!2406766))) s!2326))))

(declare-fun b!6564459 () Bool)

(declare-fun res!2693705 () Bool)

(assert (=> b!6564459 (=> (not res!2693705) (not e!3973750))))

(assert (=> b!6564459 (= res!2693705 (matchZipper!2451 lt!2406394 (_2!36721 (get!22740 lt!2406766))))))

(declare-fun b!6564460 () Bool)

(assert (=> b!6564460 (= e!3973751 e!3973752)))

(declare-fun c!1206494 () Bool)

(assert (=> b!6564460 (= c!1206494 ((_ is Nil!65492) (t!379258 s!2326)))))

(assert (= (and d!2059829 res!2693703) b!6564456))

(assert (= (and d!2059829 c!1206493) b!6564454))

(assert (= (and d!2059829 (not c!1206493)) b!6564460))

(assert (= (and b!6564460 c!1206494) b!6564457))

(assert (= (and b!6564460 (not c!1206494)) b!6564455))

(assert (= (and d!2059829 res!2693707) b!6564453))

(assert (= (and b!6564453 res!2693704) b!6564459))

(assert (= (and b!6564459 res!2693705) b!6564458))

(assert (= (and d!2059829 (not res!2693706)) b!6564452))

(declare-fun m!7346658 () Bool)

(assert (=> b!6564459 m!7346658))

(declare-fun m!7346660 () Bool)

(assert (=> b!6564459 m!7346660))

(declare-fun m!7346662 () Bool)

(assert (=> b!6564456 m!7346662))

(declare-fun m!7346664 () Bool)

(assert (=> d!2059829 m!7346664))

(assert (=> d!2059829 m!7344192))

(declare-fun m!7346666 () Bool)

(assert (=> d!2059829 m!7346666))

(assert (=> d!2059829 m!7344192))

(assert (=> d!2059829 m!7344194))

(assert (=> b!6564458 m!7346658))

(declare-fun m!7346668 () Bool)

(assert (=> b!6564458 m!7346668))

(assert (=> b!6564455 m!7344192))

(assert (=> b!6564455 m!7345952))

(assert (=> b!6564455 m!7345952))

(assert (=> b!6564455 m!7345954))

(assert (=> b!6564455 m!7344192))

(assert (=> b!6564455 m!7345956))

(assert (=> b!6564455 m!7345952))

(declare-fun m!7346670 () Bool)

(assert (=> b!6564455 m!7346670))

(assert (=> b!6564452 m!7346664))

(assert (=> b!6564453 m!7346658))

(declare-fun m!7346672 () Bool)

(assert (=> b!6564453 m!7346672))

(assert (=> b!6562176 d!2059829))

(declare-fun b!6564461 () Bool)

(declare-fun e!3973754 () Bool)

(assert (=> b!6564461 (= e!3973754 (nullable!6432 (h!71941 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406386)))))))))

(declare-fun bm!571126 () Bool)

(declare-fun call!571131 () (InoxSet Context!11646))

(assert (=> bm!571126 (= call!571131 (derivationStepZipperDown!1687 (h!71941 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406386))))) (Context!11647 (t!379259 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406386)))))) (h!71940 s!2326)))))

(declare-fun e!3973755 () (InoxSet Context!11646))

(declare-fun b!6564462 () Bool)

(assert (=> b!6564462 (= e!3973755 ((_ map or) call!571131 (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406386)))))) (h!71940 s!2326))))))

(declare-fun d!2059831 () Bool)

(declare-fun c!1206496 () Bool)

(assert (=> d!2059831 (= c!1206496 e!3973754)))

(declare-fun res!2693708 () Bool)

(assert (=> d!2059831 (=> (not res!2693708) (not e!3973754))))

(assert (=> d!2059831 (= res!2693708 ((_ is Cons!65493) (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406386))))))))

(assert (=> d!2059831 (= (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 lt!2406386))) (h!71940 s!2326)) e!3973755)))

(declare-fun b!6564463 () Bool)

(declare-fun e!3973753 () (InoxSet Context!11646))

(assert (=> b!6564463 (= e!3973755 e!3973753)))

(declare-fun c!1206495 () Bool)

(assert (=> b!6564463 (= c!1206495 ((_ is Cons!65493) (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406386))))))))

(declare-fun b!6564464 () Bool)

(assert (=> b!6564464 (= e!3973753 call!571131)))

(declare-fun b!6564465 () Bool)

(assert (=> b!6564465 (= e!3973753 ((as const (Array Context!11646 Bool)) false))))

(assert (= (and d!2059831 res!2693708) b!6564461))

(assert (= (and d!2059831 c!1206496) b!6564462))

(assert (= (and d!2059831 (not c!1206496)) b!6564463))

(assert (= (and b!6564463 c!1206495) b!6564464))

(assert (= (and b!6564463 (not c!1206495)) b!6564465))

(assert (= (or b!6564462 b!6564464) bm!571126))

(declare-fun m!7346674 () Bool)

(assert (=> b!6564461 m!7346674))

(declare-fun m!7346676 () Bool)

(assert (=> bm!571126 m!7346676))

(declare-fun m!7346678 () Bool)

(assert (=> b!6564462 m!7346678))

(assert (=> b!6562398 d!2059831))

(assert (=> b!6561723 d!2058843))

(declare-fun d!2059833 () Bool)

(assert (=> d!2059833 (= (isEmpty!37737 (tail!12414 (_1!36721 lt!2406377))) ((_ is Nil!65492) (tail!12414 (_1!36721 lt!2406377))))))

(assert (=> b!6562292 d!2059833))

(assert (=> b!6562292 d!2059467))

(declare-fun bs!1676383 () Bool)

(declare-fun d!2059835 () Bool)

(assert (= bs!1676383 (and d!2059835 d!2058817)))

(declare-fun lambda!365259 () Int)

(assert (=> bs!1676383 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) lt!2406360) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365259 lambda!365141))))

(declare-fun bs!1676384 () Bool)

(assert (= bs!1676384 (and d!2059835 b!6561249)))

(assert (=> bs!1676384 (= lambda!365259 lambda!365048)))

(declare-fun bs!1676385 () Bool)

(assert (= bs!1676385 (and d!2059835 d!2058617)))

(assert (=> bs!1676385 (not (= lambda!365259 lambda!365100))))

(declare-fun bs!1676386 () Bool)

(assert (= bs!1676386 (and d!2059835 d!2059659)))

(assert (=> bs!1676386 (not (= lambda!365259 lambda!365239))))

(declare-fun bs!1676387 () Bool)

(assert (= bs!1676387 (and d!2059835 b!6561283)))

(assert (=> bs!1676387 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 r!7292)) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365259 lambda!365041))))

(assert (=> bs!1676387 (not (= lambda!365259 lambda!365042))))

(declare-fun bs!1676388 () Bool)

(assert (= bs!1676388 (and d!2059835 d!2058767)))

(assert (=> bs!1676388 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 r!7292)) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365259 lambda!365130))))

(declare-fun bs!1676389 () Bool)

(assert (= bs!1676389 (and d!2059835 b!6562199)))

(assert (=> bs!1676389 (not (= lambda!365259 lambda!365132))))

(declare-fun bs!1676390 () Bool)

(assert (= bs!1676390 (and d!2059835 d!2058793)))

(assert (=> bs!1676390 (not (= lambda!365259 lambda!365135))))

(declare-fun bs!1676391 () Bool)

(assert (= bs!1676391 (and d!2059835 b!6561898)))

(assert (=> bs!1676391 (not (= lambda!365259 lambda!365111))))

(assert (=> bs!1676386 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) lt!2406360) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365259 lambda!365238))))

(declare-fun bs!1676392 () Bool)

(assert (= bs!1676392 (and d!2059835 d!2058681)))

(assert (=> bs!1676392 (= lambda!365259 lambda!365116)))

(declare-fun bs!1676393 () Bool)

(assert (= bs!1676393 (and d!2059835 b!6562323)))

(assert (=> bs!1676393 (not (= lambda!365259 lambda!365140))))

(declare-fun bs!1676394 () Bool)

(assert (= bs!1676394 (and d!2059835 b!6563924)))

(assert (=> bs!1676394 (not (= lambda!365259 lambda!365232))))

(declare-fun bs!1676395 () Bool)

(assert (= bs!1676395 (and d!2059835 b!6561287)))

(assert (=> bs!1676395 (not (= lambda!365259 lambda!365047))))

(declare-fun bs!1676396 () Bool)

(assert (= bs!1676396 (and d!2059835 b!6564445)))

(assert (=> bs!1676396 (not (= lambda!365259 lambda!365255))))

(declare-fun bs!1676397 () Bool)

(assert (= bs!1676397 (and d!2059835 b!6564157)))

(assert (=> bs!1676397 (not (= lambda!365259 lambda!365241))))

(declare-fun bs!1676398 () Bool)

(assert (= bs!1676398 (and d!2059835 b!6564449)))

(assert (=> bs!1676398 (not (= lambda!365259 lambda!365254))))

(declare-fun bs!1676399 () Bool)

(assert (= bs!1676399 (and d!2059835 d!2058765)))

(assert (=> bs!1676399 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 r!7292)) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365259 lambda!365129))))

(declare-fun bs!1676400 () Bool)

(assert (= bs!1676400 (and d!2059835 b!6562327)))

(assert (=> bs!1676400 (not (= lambda!365259 lambda!365139))))

(declare-fun bs!1676401 () Bool)

(assert (= bs!1676401 (and d!2059835 b!6562195)))

(assert (=> bs!1676401 (not (= lambda!365259 lambda!365133))))

(declare-fun bs!1676402 () Bool)

(assert (= bs!1676402 (and d!2059835 d!2059791)))

(assert (=> bs!1676402 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) (regOne!33390 r!7292)) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365259 lambda!365252))))

(assert (=> bs!1676388 (not (= lambda!365259 lambda!365131))))

(declare-fun bs!1676403 () Bool)

(assert (= bs!1676403 (and d!2059835 d!2059477)))

(assert (=> bs!1676403 (= lambda!365259 lambda!365225)))

(assert (=> bs!1676402 (not (= lambda!365259 lambda!365253))))

(declare-fun bs!1676404 () Bool)

(assert (= bs!1676404 (and d!2059835 b!6564340)))

(assert (=> bs!1676404 (not (= lambda!365259 lambda!365246))))

(declare-fun bs!1676405 () Bool)

(assert (= bs!1676405 (and d!2059835 b!6563928)))

(assert (=> bs!1676405 (not (= lambda!365259 lambda!365231))))

(declare-fun bs!1676406 () Bool)

(assert (= bs!1676406 (and d!2059835 b!6564344)))

(assert (=> bs!1676406 (not (= lambda!365259 lambda!365245))))

(assert (=> bs!1676390 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) lt!2406360) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365259 lambda!365134))))

(assert (=> bs!1676385 (= lambda!365259 lambda!365097)))

(declare-fun bs!1676407 () Bool)

(assert (= bs!1676407 (and d!2059835 b!6561902)))

(assert (=> bs!1676407 (not (= lambda!365259 lambda!365109))))

(declare-fun bs!1676408 () Bool)

(assert (= bs!1676408 (and d!2059835 b!6564153)))

(assert (=> bs!1676408 (not (= lambda!365259 lambda!365242))))

(assert (=> bs!1676403 (not (= lambda!365259 lambda!365226))))

(declare-fun bs!1676409 () Bool)

(assert (= bs!1676409 (and d!2059835 b!6562412)))

(assert (=> bs!1676409 (not (= lambda!365259 lambda!365150))))

(declare-fun bs!1676410 () Bool)

(assert (= bs!1676410 (and d!2059835 b!6562408)))

(assert (=> bs!1676410 (not (= lambda!365259 lambda!365151))))

(declare-fun bs!1676411 () Bool)

(assert (= bs!1676411 (and d!2059835 b!6563956)))

(assert (=> bs!1676411 (not (= lambda!365259 lambda!365234))))

(assert (=> bs!1676395 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regOne!33390 r!7292)) lt!2406360) (= lt!2406358 (regTwo!33390 r!7292))) (= lambda!365259 lambda!365046))))

(declare-fun bs!1676412 () Bool)

(assert (= bs!1676412 (and d!2059835 b!6563952)))

(assert (=> bs!1676412 (not (= lambda!365259 lambda!365235))))

(assert (=> bs!1676384 (not (= lambda!365259 lambda!365049))))

(assert (=> d!2059835 true))

(assert (=> d!2059835 true))

(assert (=> d!2059835 true))

(assert (=> d!2059835 (= (isDefined!13033 (findConcatSeparation!2744 (reg!16768 (regOne!33390 r!7292)) lt!2406358 Nil!65492 (_1!36721 lt!2406397) (_1!36721 lt!2406397))) (Exists!3509 lambda!365259))))

(assert (=> d!2059835 true))

(declare-fun _$89!2781 () Unit!159091)

(assert (=> d!2059835 (= (choose!48966 (reg!16768 (regOne!33390 r!7292)) lt!2406358 (_1!36721 lt!2406397)) _$89!2781)))

(declare-fun bs!1676413 () Bool)

(assert (= bs!1676413 d!2059835))

(assert (=> bs!1676413 m!7343214))

(assert (=> bs!1676413 m!7343214))

(assert (=> bs!1676413 m!7343220))

(declare-fun m!7346680 () Bool)

(assert (=> bs!1676413 m!7346680))

(assert (=> d!2058681 d!2059835))

(assert (=> d!2058681 d!2058615))

(declare-fun d!2059837 () Bool)

(assert (=> d!2059837 (= (Exists!3509 lambda!365116) (choose!48962 lambda!365116))))

(declare-fun bs!1676414 () Bool)

(assert (= bs!1676414 d!2059837))

(declare-fun m!7346682 () Bool)

(assert (=> bs!1676414 m!7346682))

(assert (=> d!2058681 d!2059837))

(assert (=> d!2058681 d!2058679))

(assert (=> d!2058681 d!2058697))

(declare-fun d!2059839 () Bool)

(declare-fun c!1206497 () Bool)

(assert (=> d!2059839 (= c!1206497 (isEmpty!37737 (tail!12414 (t!379258 s!2326))))))

(declare-fun e!3973758 () Bool)

(assert (=> d!2059839 (= (matchZipper!2451 (derivationStepZipper!2405 lt!2406348 (head!13329 (t!379258 s!2326))) (tail!12414 (t!379258 s!2326))) e!3973758)))

(declare-fun b!6564470 () Bool)

(assert (=> b!6564470 (= e!3973758 (nullableZipper!2184 (derivationStepZipper!2405 lt!2406348 (head!13329 (t!379258 s!2326)))))))

(declare-fun b!6564471 () Bool)

(assert (=> b!6564471 (= e!3973758 (matchZipper!2451 (derivationStepZipper!2405 (derivationStepZipper!2405 lt!2406348 (head!13329 (t!379258 s!2326))) (head!13329 (tail!12414 (t!379258 s!2326)))) (tail!12414 (tail!12414 (t!379258 s!2326)))))))

(assert (= (and d!2059839 c!1206497) b!6564470))

(assert (= (and d!2059839 (not c!1206497)) b!6564471))

(assert (=> d!2059839 m!7343762))

(assert (=> d!2059839 m!7345894))

(assert (=> b!6564470 m!7344264))

(declare-fun m!7346684 () Bool)

(assert (=> b!6564470 m!7346684))

(assert (=> b!6564471 m!7343762))

(assert (=> b!6564471 m!7345898))

(assert (=> b!6564471 m!7344264))

(assert (=> b!6564471 m!7345898))

(declare-fun m!7346686 () Bool)

(assert (=> b!6564471 m!7346686))

(assert (=> b!6564471 m!7343762))

(assert (=> b!6564471 m!7345902))

(assert (=> b!6564471 m!7346686))

(assert (=> b!6564471 m!7345902))

(declare-fun m!7346688 () Bool)

(assert (=> b!6564471 m!7346688))

(assert (=> b!6562248 d!2059839))

(declare-fun bs!1676415 () Bool)

(declare-fun d!2059841 () Bool)

(assert (= bs!1676415 (and d!2059841 d!2059463)))

(declare-fun lambda!365260 () Int)

(assert (=> bs!1676415 (= (= (head!13329 (t!379258 s!2326)) (head!13329 (_1!36721 lt!2406377))) (= lambda!365260 lambda!365220))))

(declare-fun bs!1676416 () Bool)

(assert (= bs!1676416 (and d!2059841 d!2059511)))

(assert (=> bs!1676416 (= lambda!365260 lambda!365227)))

(declare-fun bs!1676417 () Bool)

(assert (= bs!1676417 (and d!2059841 d!2058835)))

(assert (=> bs!1676417 (= (= (head!13329 (t!379258 s!2326)) (h!71940 s!2326)) (= lambda!365260 lambda!365144))))

(declare-fun bs!1676418 () Bool)

(assert (= bs!1676418 (and d!2059841 d!2059605)))

(assert (=> bs!1676418 (= lambda!365260 lambda!365233)))

(declare-fun bs!1676419 () Bool)

(assert (= bs!1676419 (and d!2059841 d!2059735)))

(assert (=> bs!1676419 (= (= (head!13329 (t!379258 s!2326)) (head!13329 (_2!36721 lt!2406377))) (= lambda!365260 lambda!365244))))

(declare-fun bs!1676420 () Bool)

(assert (= bs!1676420 (and d!2059841 d!2059627)))

(assert (=> bs!1676420 (= (= (head!13329 (t!379258 s!2326)) (head!13329 s!2326)) (= lambda!365260 lambda!365236))))

(declare-fun bs!1676421 () Bool)

(assert (= bs!1676421 (and d!2059841 b!6561279)))

(assert (=> bs!1676421 (= (= (head!13329 (t!379258 s!2326)) (h!71940 s!2326)) (= lambda!365260 lambda!365043))))

(declare-fun bs!1676422 () Bool)

(assert (= bs!1676422 (and d!2059841 d!2059537)))

(assert (=> bs!1676422 (= (= (head!13329 (t!379258 s!2326)) (head!13329 s!2326)) (= lambda!365260 lambda!365228))))

(assert (=> d!2059841 true))

(assert (=> d!2059841 (= (derivationStepZipper!2405 lt!2406348 (head!13329 (t!379258 s!2326))) (flatMap!1944 lt!2406348 lambda!365260))))

(declare-fun bs!1676423 () Bool)

(assert (= bs!1676423 d!2059841))

(declare-fun m!7346690 () Bool)

(assert (=> bs!1676423 m!7346690))

(assert (=> b!6562248 d!2059841))

(assert (=> b!6562248 d!2059513))

(assert (=> b!6562248 d!2059515))

(declare-fun d!2059843 () Bool)

(assert (=> d!2059843 (= (Exists!3509 (ite c!1205903 lambda!365139 lambda!365140)) (choose!48962 (ite c!1205903 lambda!365139 lambda!365140)))))

(declare-fun bs!1676424 () Bool)

(assert (= bs!1676424 d!2059843))

(declare-fun m!7346692 () Bool)

(assert (=> bs!1676424 m!7346692))

(assert (=> bm!570762 d!2059843))

(assert (=> b!6562269 d!2059689))

(assert (=> b!6562269 d!2059541))

(declare-fun d!2059845 () Bool)

(declare-fun c!1206500 () Bool)

(assert (=> d!2059845 (= c!1206500 ((_ is Nil!65493) lt!2406604))))

(declare-fun e!3973761 () (InoxSet Regex!16439))

(assert (=> d!2059845 (= (content!12599 lt!2406604) e!3973761)))

(declare-fun b!6564476 () Bool)

(assert (=> b!6564476 (= e!3973761 ((as const (Array Regex!16439 Bool)) false))))

(declare-fun b!6564477 () Bool)

(assert (=> b!6564477 (= e!3973761 ((_ map or) (store ((as const (Array Regex!16439 Bool)) false) (h!71941 lt!2406604) true) (content!12599 (t!379259 lt!2406604))))))

(assert (= (and d!2059845 c!1206500) b!6564476))

(assert (= (and d!2059845 (not c!1206500)) b!6564477))

(declare-fun m!7346694 () Bool)

(assert (=> b!6564477 m!7346694))

(declare-fun m!7346696 () Bool)

(assert (=> b!6564477 m!7346696))

(assert (=> d!2058821 d!2059845))

(declare-fun d!2059847 () Bool)

(declare-fun c!1206501 () Bool)

(assert (=> d!2059847 (= c!1206501 ((_ is Nil!65493) lt!2406344))))

(declare-fun e!3973762 () (InoxSet Regex!16439))

(assert (=> d!2059847 (= (content!12599 lt!2406344) e!3973762)))

(declare-fun b!6564478 () Bool)

(assert (=> b!6564478 (= e!3973762 ((as const (Array Regex!16439 Bool)) false))))

(declare-fun b!6564479 () Bool)

(assert (=> b!6564479 (= e!3973762 ((_ map or) (store ((as const (Array Regex!16439 Bool)) false) (h!71941 lt!2406344) true) (content!12599 (t!379259 lt!2406344))))))

(assert (= (and d!2059847 c!1206501) b!6564478))

(assert (= (and d!2059847 (not c!1206501)) b!6564479))

(declare-fun m!7346698 () Bool)

(assert (=> b!6564479 m!7346698))

(declare-fun m!7346700 () Bool)

(assert (=> b!6564479 m!7346700))

(assert (=> d!2058821 d!2059847))

(declare-fun d!2059849 () Bool)

(declare-fun c!1206502 () Bool)

(assert (=> d!2059849 (= c!1206502 ((_ is Nil!65493) lt!2406366))))

(declare-fun e!3973763 () (InoxSet Regex!16439))

(assert (=> d!2059849 (= (content!12599 lt!2406366) e!3973763)))

(declare-fun b!6564480 () Bool)

(assert (=> b!6564480 (= e!3973763 ((as const (Array Regex!16439 Bool)) false))))

(declare-fun b!6564481 () Bool)

(assert (=> b!6564481 (= e!3973763 ((_ map or) (store ((as const (Array Regex!16439 Bool)) false) (h!71941 lt!2406366) true) (content!12599 (t!379259 lt!2406366))))))

(assert (= (and d!2059849 c!1206502) b!6564480))

(assert (= (and d!2059849 (not c!1206502)) b!6564481))

(declare-fun m!7346702 () Bool)

(assert (=> b!6564481 m!7346702))

(declare-fun m!7346704 () Bool)

(assert (=> b!6564481 m!7346704))

(assert (=> d!2058821 d!2059849))

(declare-fun d!2059851 () Bool)

(assert (=> d!2059851 (= (nullable!6432 (h!71941 (exprs!6323 lt!2406352))) (nullableFct!2358 (h!71941 (exprs!6323 lt!2406352))))))

(declare-fun bs!1676425 () Bool)

(assert (= bs!1676425 d!2059851))

(declare-fun m!7346706 () Bool)

(assert (=> bs!1676425 m!7346706))

(assert (=> b!6562069 d!2059851))

(assert (=> d!2058765 d!2058759))

(assert (=> d!2058765 d!2059507))

(assert (=> d!2058765 d!2058769))

(declare-fun d!2059853 () Bool)

(assert (=> d!2059853 (= (Exists!3509 lambda!365129) (choose!48962 lambda!365129))))

(declare-fun bs!1676426 () Bool)

(assert (= bs!1676426 d!2059853))

(declare-fun m!7346708 () Bool)

(assert (=> bs!1676426 m!7346708))

(assert (=> d!2058765 d!2059853))

(declare-fun bs!1676427 () Bool)

(declare-fun d!2059855 () Bool)

(assert (= bs!1676427 (and d!2059855 d!2058817)))

(declare-fun lambda!365261 () Int)

(assert (=> bs!1676427 (= (= (regOne!33390 r!7292) lt!2406360) (= lambda!365261 lambda!365141))))

(declare-fun bs!1676428 () Bool)

(assert (= bs!1676428 (and d!2059855 b!6561249)))

(assert (=> bs!1676428 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365261 lambda!365048))))

(declare-fun bs!1676429 () Bool)

(assert (= bs!1676429 (and d!2059855 d!2058617)))

(assert (=> bs!1676429 (not (= lambda!365261 lambda!365100))))

(declare-fun bs!1676430 () Bool)

(assert (= bs!1676430 (and d!2059855 d!2059659)))

(assert (=> bs!1676430 (not (= lambda!365261 lambda!365239))))

(declare-fun bs!1676431 () Bool)

(assert (= bs!1676431 (and d!2059855 b!6561283)))

(assert (=> bs!1676431 (= lambda!365261 lambda!365041)))

(assert (=> bs!1676431 (not (= lambda!365261 lambda!365042))))

(declare-fun bs!1676432 () Bool)

(assert (= bs!1676432 (and d!2059855 d!2058767)))

(assert (=> bs!1676432 (= lambda!365261 lambda!365130)))

(declare-fun bs!1676433 () Bool)

(assert (= bs!1676433 (and d!2059855 b!6562199)))

(assert (=> bs!1676433 (not (= lambda!365261 lambda!365132))))

(declare-fun bs!1676434 () Bool)

(assert (= bs!1676434 (and d!2059855 d!2058793)))

(assert (=> bs!1676434 (not (= lambda!365261 lambda!365135))))

(declare-fun bs!1676435 () Bool)

(assert (= bs!1676435 (and d!2059855 d!2059835)))

(assert (=> bs!1676435 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365261 lambda!365259))))

(declare-fun bs!1676436 () Bool)

(assert (= bs!1676436 (and d!2059855 b!6561898)))

(assert (=> bs!1676436 (not (= lambda!365261 lambda!365111))))

(assert (=> bs!1676430 (= (= (regOne!33390 r!7292) lt!2406360) (= lambda!365261 lambda!365238))))

(declare-fun bs!1676437 () Bool)

(assert (= bs!1676437 (and d!2059855 d!2058681)))

(assert (=> bs!1676437 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365261 lambda!365116))))

(declare-fun bs!1676438 () Bool)

(assert (= bs!1676438 (and d!2059855 b!6562323)))

(assert (=> bs!1676438 (not (= lambda!365261 lambda!365140))))

(declare-fun bs!1676439 () Bool)

(assert (= bs!1676439 (and d!2059855 b!6563924)))

(assert (=> bs!1676439 (not (= lambda!365261 lambda!365232))))

(declare-fun bs!1676440 () Bool)

(assert (= bs!1676440 (and d!2059855 b!6561287)))

(assert (=> bs!1676440 (not (= lambda!365261 lambda!365047))))

(declare-fun bs!1676441 () Bool)

(assert (= bs!1676441 (and d!2059855 b!6564445)))

(assert (=> bs!1676441 (not (= lambda!365261 lambda!365255))))

(declare-fun bs!1676442 () Bool)

(assert (= bs!1676442 (and d!2059855 b!6564157)))

(assert (=> bs!1676442 (not (= lambda!365261 lambda!365241))))

(declare-fun bs!1676443 () Bool)

(assert (= bs!1676443 (and d!2059855 b!6564449)))

(assert (=> bs!1676443 (not (= lambda!365261 lambda!365254))))

(declare-fun bs!1676444 () Bool)

(assert (= bs!1676444 (and d!2059855 d!2058765)))

(assert (=> bs!1676444 (= lambda!365261 lambda!365129)))

(declare-fun bs!1676445 () Bool)

(assert (= bs!1676445 (and d!2059855 b!6562327)))

(assert (=> bs!1676445 (not (= lambda!365261 lambda!365139))))

(declare-fun bs!1676446 () Bool)

(assert (= bs!1676446 (and d!2059855 b!6562195)))

(assert (=> bs!1676446 (not (= lambda!365261 lambda!365133))))

(declare-fun bs!1676447 () Bool)

(assert (= bs!1676447 (and d!2059855 d!2059791)))

(assert (=> bs!1676447 (= lambda!365261 lambda!365252)))

(assert (=> bs!1676432 (not (= lambda!365261 lambda!365131))))

(declare-fun bs!1676448 () Bool)

(assert (= bs!1676448 (and d!2059855 d!2059477)))

(assert (=> bs!1676448 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365261 lambda!365225))))

(assert (=> bs!1676447 (not (= lambda!365261 lambda!365253))))

(declare-fun bs!1676449 () Bool)

(assert (= bs!1676449 (and d!2059855 b!6564340)))

(assert (=> bs!1676449 (not (= lambda!365261 lambda!365246))))

(declare-fun bs!1676450 () Bool)

(assert (= bs!1676450 (and d!2059855 b!6563928)))

(assert (=> bs!1676450 (not (= lambda!365261 lambda!365231))))

(declare-fun bs!1676451 () Bool)

(assert (= bs!1676451 (and d!2059855 b!6564344)))

(assert (=> bs!1676451 (not (= lambda!365261 lambda!365245))))

(assert (=> bs!1676434 (= (= (regOne!33390 r!7292) lt!2406360) (= lambda!365261 lambda!365134))))

(assert (=> bs!1676429 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 r!7292) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365261 lambda!365097))))

(declare-fun bs!1676452 () Bool)

(assert (= bs!1676452 (and d!2059855 b!6561902)))

(assert (=> bs!1676452 (not (= lambda!365261 lambda!365109))))

(declare-fun bs!1676453 () Bool)

(assert (= bs!1676453 (and d!2059855 b!6564153)))

(assert (=> bs!1676453 (not (= lambda!365261 lambda!365242))))

(assert (=> bs!1676448 (not (= lambda!365261 lambda!365226))))

(declare-fun bs!1676454 () Bool)

(assert (= bs!1676454 (and d!2059855 b!6562412)))

(assert (=> bs!1676454 (not (= lambda!365261 lambda!365150))))

(declare-fun bs!1676455 () Bool)

(assert (= bs!1676455 (and d!2059855 b!6562408)))

(assert (=> bs!1676455 (not (= lambda!365261 lambda!365151))))

(declare-fun bs!1676456 () Bool)

(assert (= bs!1676456 (and d!2059855 b!6563956)))

(assert (=> bs!1676456 (not (= lambda!365261 lambda!365234))))

(assert (=> bs!1676440 (= (= (regOne!33390 r!7292) lt!2406360) (= lambda!365261 lambda!365046))))

(declare-fun bs!1676457 () Bool)

(assert (= bs!1676457 (and d!2059855 b!6563952)))

(assert (=> bs!1676457 (not (= lambda!365261 lambda!365235))))

(assert (=> bs!1676428 (not (= lambda!365261 lambda!365049))))

(assert (=> d!2059855 true))

(assert (=> d!2059855 true))

(assert (=> d!2059855 true))

(assert (=> d!2059855 (= (isDefined!13033 (findConcatSeparation!2744 (regOne!33390 r!7292) (regTwo!33390 r!7292) Nil!65492 s!2326 s!2326)) (Exists!3509 lambda!365261))))

(assert (=> d!2059855 true))

(declare-fun _$89!2782 () Unit!159091)

(assert (=> d!2059855 (= (choose!48966 (regOne!33390 r!7292) (regTwo!33390 r!7292) s!2326) _$89!2782)))

(declare-fun bs!1676458 () Bool)

(assert (= bs!1676458 d!2059855))

(assert (=> bs!1676458 m!7343364))

(assert (=> bs!1676458 m!7343364))

(assert (=> bs!1676458 m!7343366))

(declare-fun m!7346710 () Bool)

(assert (=> bs!1676458 m!7346710))

(assert (=> d!2058765 d!2059855))

(assert (=> bs!1675018 d!2058711))

(assert (=> b!6562252 d!2059489))

(assert (=> b!6562252 d!2059491))

(declare-fun d!2059857 () Bool)

(declare-fun c!1206503 () Bool)

(assert (=> d!2059857 (= c!1206503 (isEmpty!37737 (tail!12414 lt!2406375)))))

(declare-fun e!3973764 () Bool)

(assert (=> d!2059857 (= (matchZipper!2451 (derivationStepZipper!2405 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (++!14581 lt!2406344 lt!2406366)) true) (head!13329 lt!2406375)) (tail!12414 lt!2406375)) e!3973764)))

(declare-fun b!6564482 () Bool)

(assert (=> b!6564482 (= e!3973764 (nullableZipper!2184 (derivationStepZipper!2405 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (++!14581 lt!2406344 lt!2406366)) true) (head!13329 lt!2406375))))))

(declare-fun b!6564483 () Bool)

(assert (=> b!6564483 (= e!3973764 (matchZipper!2451 (derivationStepZipper!2405 (derivationStepZipper!2405 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (++!14581 lt!2406344 lt!2406366)) true) (head!13329 lt!2406375)) (head!13329 (tail!12414 lt!2406375))) (tail!12414 (tail!12414 lt!2406375))))))

(assert (= (and d!2059857 c!1206503) b!6564482))

(assert (= (and d!2059857 (not c!1206503)) b!6564483))

(assert (=> d!2059857 m!7344354))

(assert (=> d!2059857 m!7344356))

(assert (=> b!6564482 m!7344396))

(declare-fun m!7346712 () Bool)

(assert (=> b!6564482 m!7346712))

(assert (=> b!6564483 m!7344354))

(assert (=> b!6564483 m!7346490))

(assert (=> b!6564483 m!7344396))

(assert (=> b!6564483 m!7346490))

(declare-fun m!7346714 () Bool)

(assert (=> b!6564483 m!7346714))

(assert (=> b!6564483 m!7344354))

(assert (=> b!6564483 m!7346486))

(assert (=> b!6564483 m!7346714))

(assert (=> b!6564483 m!7346486))

(declare-fun m!7346716 () Bool)

(assert (=> b!6564483 m!7346716))

(assert (=> b!6562337 d!2059857))

(declare-fun bs!1676459 () Bool)

(declare-fun d!2059859 () Bool)

(assert (= bs!1676459 (and d!2059859 d!2059463)))

(declare-fun lambda!365262 () Int)

(assert (=> bs!1676459 (= (= (head!13329 lt!2406375) (head!13329 (_1!36721 lt!2406377))) (= lambda!365262 lambda!365220))))

(declare-fun bs!1676460 () Bool)

(assert (= bs!1676460 (and d!2059859 d!2059511)))

(assert (=> bs!1676460 (= (= (head!13329 lt!2406375) (head!13329 (t!379258 s!2326))) (= lambda!365262 lambda!365227))))

(declare-fun bs!1676461 () Bool)

(assert (= bs!1676461 (and d!2059859 d!2058835)))

(assert (=> bs!1676461 (= (= (head!13329 lt!2406375) (h!71940 s!2326)) (= lambda!365262 lambda!365144))))

(declare-fun bs!1676462 () Bool)

(assert (= bs!1676462 (and d!2059859 d!2059735)))

(assert (=> bs!1676462 (= (= (head!13329 lt!2406375) (head!13329 (_2!36721 lt!2406377))) (= lambda!365262 lambda!365244))))

(declare-fun bs!1676463 () Bool)

(assert (= bs!1676463 (and d!2059859 d!2059627)))

(assert (=> bs!1676463 (= (= (head!13329 lt!2406375) (head!13329 s!2326)) (= lambda!365262 lambda!365236))))

(declare-fun bs!1676464 () Bool)

(assert (= bs!1676464 (and d!2059859 b!6561279)))

(assert (=> bs!1676464 (= (= (head!13329 lt!2406375) (h!71940 s!2326)) (= lambda!365262 lambda!365043))))

(declare-fun bs!1676465 () Bool)

(assert (= bs!1676465 (and d!2059859 d!2059537)))

(assert (=> bs!1676465 (= (= (head!13329 lt!2406375) (head!13329 s!2326)) (= lambda!365262 lambda!365228))))

(declare-fun bs!1676466 () Bool)

(assert (= bs!1676466 (and d!2059859 d!2059841)))

(assert (=> bs!1676466 (= (= (head!13329 lt!2406375) (head!13329 (t!379258 s!2326))) (= lambda!365262 lambda!365260))))

(declare-fun bs!1676467 () Bool)

(assert (= bs!1676467 (and d!2059859 d!2059605)))

(assert (=> bs!1676467 (= (= (head!13329 lt!2406375) (head!13329 (t!379258 s!2326))) (= lambda!365262 lambda!365233))))

(assert (=> d!2059859 true))

(assert (=> d!2059859 (= (derivationStepZipper!2405 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (++!14581 lt!2406344 lt!2406366)) true) (head!13329 lt!2406375)) (flatMap!1944 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (++!14581 lt!2406344 lt!2406366)) true) lambda!365262))))

(declare-fun bs!1676468 () Bool)

(assert (= bs!1676468 d!2059859))

(assert (=> bs!1676468 m!7343296))

(declare-fun m!7346718 () Bool)

(assert (=> bs!1676468 m!7346718))

(assert (=> b!6562337 d!2059859))

(assert (=> b!6562337 d!2059585))

(assert (=> b!6562337 d!2059707))

(declare-fun bs!1676469 () Bool)

(declare-fun b!6564492 () Bool)

(assert (= bs!1676469 (and b!6564492 d!2058817)))

(declare-fun lambda!365263 () Int)

(assert (=> bs!1676469 (not (= lambda!365263 lambda!365141))))

(declare-fun bs!1676470 () Bool)

(assert (= bs!1676470 (and b!6564492 b!6561249)))

(assert (=> bs!1676470 (not (= lambda!365263 lambda!365048))))

(declare-fun bs!1676471 () Bool)

(assert (= bs!1676471 (and b!6564492 d!2058617)))

(assert (=> bs!1676471 (not (= lambda!365263 lambda!365100))))

(declare-fun bs!1676472 () Bool)

(assert (= bs!1676472 (and b!6564492 d!2059659)))

(assert (=> bs!1676472 (not (= lambda!365263 lambda!365239))))

(declare-fun bs!1676473 () Bool)

(assert (= bs!1676473 (and b!6564492 b!6561283)))

(assert (=> bs!1676473 (not (= lambda!365263 lambda!365041))))

(assert (=> bs!1676473 (not (= lambda!365263 lambda!365042))))

(declare-fun bs!1676474 () Bool)

(assert (= bs!1676474 (and b!6564492 d!2058767)))

(assert (=> bs!1676474 (not (= lambda!365263 lambda!365130))))

(declare-fun bs!1676475 () Bool)

(assert (= bs!1676475 (and b!6564492 b!6562199)))

(assert (=> bs!1676475 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regTwo!33391 lt!2406360)) (reg!16768 r!7292)) (= (regTwo!33391 lt!2406360) r!7292)) (= lambda!365263 lambda!365132))))

(declare-fun bs!1676476 () Bool)

(assert (= bs!1676476 (and b!6564492 d!2058793)))

(assert (=> bs!1676476 (not (= lambda!365263 lambda!365135))))

(declare-fun bs!1676477 () Bool)

(assert (= bs!1676477 (and b!6564492 d!2059835)))

(assert (=> bs!1676477 (not (= lambda!365263 lambda!365259))))

(declare-fun bs!1676478 () Bool)

(assert (= bs!1676478 (and b!6564492 b!6561898)))

(assert (=> bs!1676478 (not (= lambda!365263 lambda!365111))))

(assert (=> bs!1676472 (not (= lambda!365263 lambda!365238))))

(declare-fun bs!1676479 () Bool)

(assert (= bs!1676479 (and b!6564492 d!2058681)))

(assert (=> bs!1676479 (not (= lambda!365263 lambda!365116))))

(declare-fun bs!1676480 () Bool)

(assert (= bs!1676480 (and b!6564492 b!6562323)))

(assert (=> bs!1676480 (not (= lambda!365263 lambda!365140))))

(declare-fun bs!1676481 () Bool)

(assert (= bs!1676481 (and b!6564492 b!6563924)))

(assert (=> bs!1676481 (not (= lambda!365263 lambda!365232))))

(declare-fun bs!1676482 () Bool)

(assert (= bs!1676482 (and b!6564492 b!6561287)))

(assert (=> bs!1676482 (not (= lambda!365263 lambda!365047))))

(declare-fun bs!1676483 () Bool)

(assert (= bs!1676483 (and b!6564492 b!6564445)))

(assert (=> bs!1676483 (not (= lambda!365263 lambda!365255))))

(declare-fun bs!1676484 () Bool)

(assert (= bs!1676484 (and b!6564492 b!6564157)))

(assert (=> bs!1676484 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regTwo!33391 lt!2406360)) (reg!16768 (regTwo!33391 r!7292))) (= (regTwo!33391 lt!2406360) (regTwo!33391 r!7292))) (= lambda!365263 lambda!365241))))

(declare-fun bs!1676485 () Bool)

(assert (= bs!1676485 (and b!6564492 b!6564449)))

(assert (=> bs!1676485 (= (and (= (reg!16768 (regTwo!33391 lt!2406360)) (reg!16768 (regOne!33391 lt!2406360))) (= (regTwo!33391 lt!2406360) (regOne!33391 lt!2406360))) (= lambda!365263 lambda!365254))))

(declare-fun bs!1676486 () Bool)

(assert (= bs!1676486 (and b!6564492 d!2058765)))

(assert (=> bs!1676486 (not (= lambda!365263 lambda!365129))))

(declare-fun bs!1676487 () Bool)

(assert (= bs!1676487 (and b!6564492 b!6562327)))

(assert (=> bs!1676487 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regTwo!33391 lt!2406360)) (reg!16768 lt!2406396)) (= (regTwo!33391 lt!2406360) lt!2406396)) (= lambda!365263 lambda!365139))))

(declare-fun bs!1676488 () Bool)

(assert (= bs!1676488 (and b!6564492 b!6562195)))

(assert (=> bs!1676488 (not (= lambda!365263 lambda!365133))))

(declare-fun bs!1676489 () Bool)

(assert (= bs!1676489 (and b!6564492 d!2059791)))

(assert (=> bs!1676489 (not (= lambda!365263 lambda!365252))))

(assert (=> bs!1676474 (not (= lambda!365263 lambda!365131))))

(declare-fun bs!1676490 () Bool)

(assert (= bs!1676490 (and b!6564492 d!2059477)))

(assert (=> bs!1676490 (not (= lambda!365263 lambda!365225))))

(assert (=> bs!1676489 (not (= lambda!365263 lambda!365253))))

(declare-fun bs!1676491 () Bool)

(assert (= bs!1676491 (and b!6564492 b!6564340)))

(assert (=> bs!1676491 (not (= lambda!365263 lambda!365246))))

(declare-fun bs!1676492 () Bool)

(assert (= bs!1676492 (and b!6564492 b!6563928)))

(assert (=> bs!1676492 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regTwo!33391 lt!2406360)) (reg!16768 (regOne!33391 lt!2406349))) (= (regTwo!33391 lt!2406360) (regOne!33391 lt!2406349))) (= lambda!365263 lambda!365231))))

(declare-fun bs!1676493 () Bool)

(assert (= bs!1676493 (and b!6564492 b!6564344)))

(assert (=> bs!1676493 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regTwo!33391 lt!2406360)) (reg!16768 (regTwo!33391 lt!2406396))) (= (regTwo!33391 lt!2406360) (regTwo!33391 lt!2406396))) (= lambda!365263 lambda!365245))))

(declare-fun bs!1676494 () Bool)

(assert (= bs!1676494 (and b!6564492 d!2059855)))

(assert (=> bs!1676494 (not (= lambda!365263 lambda!365261))))

(assert (=> bs!1676476 (not (= lambda!365263 lambda!365134))))

(assert (=> bs!1676471 (not (= lambda!365263 lambda!365097))))

(declare-fun bs!1676495 () Bool)

(assert (= bs!1676495 (and b!6564492 b!6561902)))

(assert (=> bs!1676495 (= (and (= (reg!16768 (regTwo!33391 lt!2406360)) (reg!16768 lt!2406360)) (= (regTwo!33391 lt!2406360) lt!2406360)) (= lambda!365263 lambda!365109))))

(declare-fun bs!1676496 () Bool)

(assert (= bs!1676496 (and b!6564492 b!6564153)))

(assert (=> bs!1676496 (not (= lambda!365263 lambda!365242))))

(assert (=> bs!1676490 (not (= lambda!365263 lambda!365226))))

(declare-fun bs!1676497 () Bool)

(assert (= bs!1676497 (and b!6564492 b!6562412)))

(assert (=> bs!1676497 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regTwo!33391 lt!2406360)) (reg!16768 lt!2406349)) (= (regTwo!33391 lt!2406360) lt!2406349)) (= lambda!365263 lambda!365150))))

(declare-fun bs!1676498 () Bool)

(assert (= bs!1676498 (and b!6564492 b!6562408)))

(assert (=> bs!1676498 (not (= lambda!365263 lambda!365151))))

(declare-fun bs!1676499 () Bool)

(assert (= bs!1676499 (and b!6564492 b!6563956)))

(assert (=> bs!1676499 (= (and (= (_1!36721 lt!2406397) s!2326) (= (reg!16768 (regTwo!33391 lt!2406360)) (reg!16768 (regOne!33391 r!7292))) (= (regTwo!33391 lt!2406360) (regOne!33391 r!7292))) (= lambda!365263 lambda!365234))))

(assert (=> bs!1676482 (not (= lambda!365263 lambda!365046))))

(declare-fun bs!1676500 () Bool)

(assert (= bs!1676500 (and b!6564492 b!6563952)))

(assert (=> bs!1676500 (not (= lambda!365263 lambda!365235))))

(assert (=> bs!1676470 (not (= lambda!365263 lambda!365049))))

(assert (=> b!6564492 true))

(assert (=> b!6564492 true))

(declare-fun bs!1676501 () Bool)

(declare-fun b!6564488 () Bool)

(assert (= bs!1676501 (and b!6564488 d!2058817)))

(declare-fun lambda!365264 () Int)

(assert (=> bs!1676501 (not (= lambda!365264 lambda!365141))))

(declare-fun bs!1676502 () Bool)

(assert (= bs!1676502 (and b!6564488 b!6561249)))

(assert (=> bs!1676502 (not (= lambda!365264 lambda!365048))))

(declare-fun bs!1676503 () Bool)

(assert (= bs!1676503 (and b!6564488 d!2058617)))

(assert (=> bs!1676503 (= (and (= (regOne!33390 (regTwo!33391 lt!2406360)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regTwo!33391 lt!2406360)) lt!2406358)) (= lambda!365264 lambda!365100))))

(declare-fun bs!1676504 () Bool)

(assert (= bs!1676504 (and b!6564488 d!2059659)))

(assert (=> bs!1676504 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regTwo!33391 lt!2406360)) lt!2406360) (= (regTwo!33390 (regTwo!33391 lt!2406360)) (regTwo!33390 r!7292))) (= lambda!365264 lambda!365239))))

(declare-fun bs!1676505 () Bool)

(assert (= bs!1676505 (and b!6564488 b!6561283)))

(assert (=> bs!1676505 (not (= lambda!365264 lambda!365041))))

(assert (=> bs!1676505 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regTwo!33391 lt!2406360)) (regOne!33390 r!7292)) (= (regTwo!33390 (regTwo!33391 lt!2406360)) (regTwo!33390 r!7292))) (= lambda!365264 lambda!365042))))

(declare-fun bs!1676506 () Bool)

(assert (= bs!1676506 (and b!6564488 d!2058767)))

(assert (=> bs!1676506 (not (= lambda!365264 lambda!365130))))

(declare-fun bs!1676507 () Bool)

(assert (= bs!1676507 (and b!6564488 d!2058793)))

(assert (=> bs!1676507 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regTwo!33391 lt!2406360)) lt!2406360) (= (regTwo!33390 (regTwo!33391 lt!2406360)) (regTwo!33390 r!7292))) (= lambda!365264 lambda!365135))))

(declare-fun bs!1676508 () Bool)

(assert (= bs!1676508 (and b!6564488 d!2059835)))

(assert (=> bs!1676508 (not (= lambda!365264 lambda!365259))))

(declare-fun bs!1676509 () Bool)

(assert (= bs!1676509 (and b!6564488 b!6561898)))

(assert (=> bs!1676509 (= (and (= (regOne!33390 (regTwo!33391 lt!2406360)) (regOne!33390 lt!2406360)) (= (regTwo!33390 (regTwo!33391 lt!2406360)) (regTwo!33390 lt!2406360))) (= lambda!365264 lambda!365111))))

(assert (=> bs!1676504 (not (= lambda!365264 lambda!365238))))

(declare-fun bs!1676510 () Bool)

(assert (= bs!1676510 (and b!6564488 d!2058681)))

(assert (=> bs!1676510 (not (= lambda!365264 lambda!365116))))

(declare-fun bs!1676511 () Bool)

(assert (= bs!1676511 (and b!6564488 b!6562323)))

(assert (=> bs!1676511 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regTwo!33391 lt!2406360)) (regOne!33390 lt!2406396)) (= (regTwo!33390 (regTwo!33391 lt!2406360)) (regTwo!33390 lt!2406396))) (= lambda!365264 lambda!365140))))

(declare-fun bs!1676512 () Bool)

(assert (= bs!1676512 (and b!6564488 b!6563924)))

(assert (=> bs!1676512 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regTwo!33391 lt!2406360)) (regOne!33390 (regOne!33391 lt!2406349))) (= (regTwo!33390 (regTwo!33391 lt!2406360)) (regTwo!33390 (regOne!33391 lt!2406349)))) (= lambda!365264 lambda!365232))))

(declare-fun bs!1676513 () Bool)

(assert (= bs!1676513 (and b!6564488 b!6561287)))

(assert (=> bs!1676513 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regTwo!33391 lt!2406360)) lt!2406360) (= (regTwo!33390 (regTwo!33391 lt!2406360)) (regTwo!33390 r!7292))) (= lambda!365264 lambda!365047))))

(declare-fun bs!1676514 () Bool)

(assert (= bs!1676514 (and b!6564488 b!6564445)))

(assert (=> bs!1676514 (= (and (= (regOne!33390 (regTwo!33391 lt!2406360)) (regOne!33390 (regOne!33391 lt!2406360))) (= (regTwo!33390 (regTwo!33391 lt!2406360)) (regTwo!33390 (regOne!33391 lt!2406360)))) (= lambda!365264 lambda!365255))))

(declare-fun bs!1676515 () Bool)

(assert (= bs!1676515 (and b!6564488 b!6564157)))

(assert (=> bs!1676515 (not (= lambda!365264 lambda!365241))))

(declare-fun bs!1676516 () Bool)

(assert (= bs!1676516 (and b!6564488 b!6564449)))

(assert (=> bs!1676516 (not (= lambda!365264 lambda!365254))))

(declare-fun bs!1676517 () Bool)

(assert (= bs!1676517 (and b!6564488 d!2058765)))

(assert (=> bs!1676517 (not (= lambda!365264 lambda!365129))))

(declare-fun bs!1676518 () Bool)

(assert (= bs!1676518 (and b!6564488 b!6562327)))

(assert (=> bs!1676518 (not (= lambda!365264 lambda!365139))))

(declare-fun bs!1676519 () Bool)

(assert (= bs!1676519 (and b!6564488 b!6562195)))

(assert (=> bs!1676519 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regTwo!33391 lt!2406360)) (regOne!33390 r!7292)) (= (regTwo!33390 (regTwo!33391 lt!2406360)) (regTwo!33390 r!7292))) (= lambda!365264 lambda!365133))))

(declare-fun bs!1676520 () Bool)

(assert (= bs!1676520 (and b!6564488 d!2059791)))

(assert (=> bs!1676520 (not (= lambda!365264 lambda!365252))))

(assert (=> bs!1676506 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regTwo!33391 lt!2406360)) (regOne!33390 r!7292)) (= (regTwo!33390 (regTwo!33391 lt!2406360)) (regTwo!33390 r!7292))) (= lambda!365264 lambda!365131))))

(declare-fun bs!1676521 () Bool)

(assert (= bs!1676521 (and b!6564488 d!2059477)))

(assert (=> bs!1676521 (not (= lambda!365264 lambda!365225))))

(assert (=> bs!1676520 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regTwo!33391 lt!2406360)) (regOne!33390 r!7292)) (= (regTwo!33390 (regTwo!33391 lt!2406360)) (regTwo!33390 r!7292))) (= lambda!365264 lambda!365253))))

(declare-fun bs!1676522 () Bool)

(assert (= bs!1676522 (and b!6564488 b!6564340)))

(assert (=> bs!1676522 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regTwo!33391 lt!2406360)) (regOne!33390 (regTwo!33391 lt!2406396))) (= (regTwo!33390 (regTwo!33391 lt!2406360)) (regTwo!33390 (regTwo!33391 lt!2406396)))) (= lambda!365264 lambda!365246))))

(declare-fun bs!1676523 () Bool)

(assert (= bs!1676523 (and b!6564488 b!6563928)))

(assert (=> bs!1676523 (not (= lambda!365264 lambda!365231))))

(declare-fun bs!1676524 () Bool)

(assert (= bs!1676524 (and b!6564488 b!6564344)))

(assert (=> bs!1676524 (not (= lambda!365264 lambda!365245))))

(declare-fun bs!1676525 () Bool)

(assert (= bs!1676525 (and b!6564488 d!2059855)))

(assert (=> bs!1676525 (not (= lambda!365264 lambda!365261))))

(assert (=> bs!1676507 (not (= lambda!365264 lambda!365134))))

(assert (=> bs!1676503 (not (= lambda!365264 lambda!365097))))

(declare-fun bs!1676526 () Bool)

(assert (= bs!1676526 (and b!6564488 b!6562199)))

(assert (=> bs!1676526 (not (= lambda!365264 lambda!365132))))

(declare-fun bs!1676527 () Bool)

(assert (= bs!1676527 (and b!6564488 b!6564492)))

(assert (=> bs!1676527 (not (= lambda!365264 lambda!365263))))

(declare-fun bs!1676528 () Bool)

(assert (= bs!1676528 (and b!6564488 b!6561902)))

(assert (=> bs!1676528 (not (= lambda!365264 lambda!365109))))

(declare-fun bs!1676529 () Bool)

(assert (= bs!1676529 (and b!6564488 b!6564153)))

(assert (=> bs!1676529 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regTwo!33391 lt!2406360)) (regOne!33390 (regTwo!33391 r!7292))) (= (regTwo!33390 (regTwo!33391 lt!2406360)) (regTwo!33390 (regTwo!33391 r!7292)))) (= lambda!365264 lambda!365242))))

(assert (=> bs!1676521 (= (and (= (regOne!33390 (regTwo!33391 lt!2406360)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regTwo!33391 lt!2406360)) lt!2406358)) (= lambda!365264 lambda!365226))))

(declare-fun bs!1676530 () Bool)

(assert (= bs!1676530 (and b!6564488 b!6562412)))

(assert (=> bs!1676530 (not (= lambda!365264 lambda!365150))))

(declare-fun bs!1676531 () Bool)

(assert (= bs!1676531 (and b!6564488 b!6562408)))

(assert (=> bs!1676531 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regTwo!33391 lt!2406360)) (regOne!33390 lt!2406349)) (= (regTwo!33390 (regTwo!33391 lt!2406360)) (regTwo!33390 lt!2406349))) (= lambda!365264 lambda!365151))))

(declare-fun bs!1676532 () Bool)

(assert (= bs!1676532 (and b!6564488 b!6563956)))

(assert (=> bs!1676532 (not (= lambda!365264 lambda!365234))))

(assert (=> bs!1676513 (not (= lambda!365264 lambda!365046))))

(declare-fun bs!1676533 () Bool)

(assert (= bs!1676533 (and b!6564488 b!6563952)))

(assert (=> bs!1676533 (= (and (= (_1!36721 lt!2406397) s!2326) (= (regOne!33390 (regTwo!33391 lt!2406360)) (regOne!33390 (regOne!33391 r!7292))) (= (regTwo!33390 (regTwo!33391 lt!2406360)) (regTwo!33390 (regOne!33391 r!7292)))) (= lambda!365264 lambda!365235))))

(assert (=> bs!1676502 (= (and (= (regOne!33390 (regTwo!33391 lt!2406360)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regTwo!33391 lt!2406360)) lt!2406358)) (= lambda!365264 lambda!365049))))

(assert (=> b!6564488 true))

(assert (=> b!6564488 true))

(declare-fun b!6564484 () Bool)

(declare-fun c!1206507 () Bool)

(assert (=> b!6564484 (= c!1206507 ((_ is ElementMatch!16439) (regTwo!33391 lt!2406360)))))

(declare-fun e!3973768 () Bool)

(declare-fun e!3973770 () Bool)

(assert (=> b!6564484 (= e!3973768 e!3973770)))

(declare-fun b!6564485 () Bool)

(declare-fun res!2693714 () Bool)

(declare-fun e!3973771 () Bool)

(assert (=> b!6564485 (=> res!2693714 e!3973771)))

(declare-fun call!571133 () Bool)

(assert (=> b!6564485 (= res!2693714 call!571133)))

(declare-fun e!3973767 () Bool)

(assert (=> b!6564485 (= e!3973767 e!3973771)))

(declare-fun b!6564486 () Bool)

(declare-fun e!3973765 () Bool)

(declare-fun e!3973766 () Bool)

(assert (=> b!6564486 (= e!3973765 e!3973766)))

(declare-fun res!2693715 () Bool)

(assert (=> b!6564486 (= res!2693715 (matchRSpec!3540 (regOne!33391 (regTwo!33391 lt!2406360)) (_1!36721 lt!2406397)))))

(assert (=> b!6564486 (=> res!2693715 e!3973766)))

(declare-fun b!6564487 () Bool)

(declare-fun e!3973769 () Bool)

(assert (=> b!6564487 (= e!3973769 call!571133)))

(declare-fun call!571132 () Bool)

(assert (=> b!6564488 (= e!3973767 call!571132)))

(declare-fun b!6564489 () Bool)

(assert (=> b!6564489 (= e!3973770 (= (_1!36721 lt!2406397) (Cons!65492 (c!1205620 (regTwo!33391 lt!2406360)) Nil!65492)))))

(declare-fun bm!571127 () Bool)

(assert (=> bm!571127 (= call!571133 (isEmpty!37737 (_1!36721 lt!2406397)))))

(declare-fun b!6564490 () Bool)

(declare-fun c!1206504 () Bool)

(assert (=> b!6564490 (= c!1206504 ((_ is Union!16439) (regTwo!33391 lt!2406360)))))

(assert (=> b!6564490 (= e!3973770 e!3973765)))

(declare-fun b!6564491 () Bool)

(assert (=> b!6564491 (= e!3973765 e!3973767)))

(declare-fun c!1206505 () Bool)

(assert (=> b!6564491 (= c!1206505 ((_ is Star!16439) (regTwo!33391 lt!2406360)))))

(declare-fun d!2059861 () Bool)

(declare-fun c!1206506 () Bool)

(assert (=> d!2059861 (= c!1206506 ((_ is EmptyExpr!16439) (regTwo!33391 lt!2406360)))))

(assert (=> d!2059861 (= (matchRSpec!3540 (regTwo!33391 lt!2406360) (_1!36721 lt!2406397)) e!3973769)))

(assert (=> b!6564492 (= e!3973771 call!571132)))

(declare-fun b!6564493 () Bool)

(assert (=> b!6564493 (= e!3973769 e!3973768)))

(declare-fun res!2693713 () Bool)

(assert (=> b!6564493 (= res!2693713 (not ((_ is EmptyLang!16439) (regTwo!33391 lt!2406360))))))

(assert (=> b!6564493 (=> (not res!2693713) (not e!3973768))))

(declare-fun b!6564494 () Bool)

(assert (=> b!6564494 (= e!3973766 (matchRSpec!3540 (regTwo!33391 (regTwo!33391 lt!2406360)) (_1!36721 lt!2406397)))))

(declare-fun bm!571128 () Bool)

(assert (=> bm!571128 (= call!571132 (Exists!3509 (ite c!1206505 lambda!365263 lambda!365264)))))

(assert (= (and d!2059861 c!1206506) b!6564487))

(assert (= (and d!2059861 (not c!1206506)) b!6564493))

(assert (= (and b!6564493 res!2693713) b!6564484))

(assert (= (and b!6564484 c!1206507) b!6564489))

(assert (= (and b!6564484 (not c!1206507)) b!6564490))

(assert (= (and b!6564490 c!1206504) b!6564486))

(assert (= (and b!6564490 (not c!1206504)) b!6564491))

(assert (= (and b!6564486 (not res!2693715)) b!6564494))

(assert (= (and b!6564491 c!1206505) b!6564485))

(assert (= (and b!6564491 (not c!1206505)) b!6564488))

(assert (= (and b!6564485 (not res!2693714)) b!6564492))

(assert (= (or b!6564492 b!6564488) bm!571128))

(assert (= (or b!6564487 b!6564485) bm!571127))

(declare-fun m!7346720 () Bool)

(assert (=> b!6564486 m!7346720))

(assert (=> bm!571127 m!7343974))

(declare-fun m!7346722 () Bool)

(assert (=> b!6564494 m!7346722))

(declare-fun m!7346724 () Bool)

(assert (=> bm!571128 m!7346724))

(assert (=> b!6561904 d!2059861))

(assert (=> d!2058777 d!2058781))

(assert (=> d!2058777 d!2058779))

(declare-fun e!3973774 () Bool)

(declare-fun d!2059863 () Bool)

(assert (=> d!2059863 (= (matchZipper!2451 ((_ map or) lt!2406348 lt!2406381) (t!379258 s!2326)) e!3973774)))

(declare-fun res!2693718 () Bool)

(assert (=> d!2059863 (=> res!2693718 e!3973774)))

(assert (=> d!2059863 (= res!2693718 (matchZipper!2451 lt!2406348 (t!379258 s!2326)))))

(assert (=> d!2059863 true))

(declare-fun _$48!2294 () Unit!159091)

(assert (=> d!2059863 (= (choose!48974 lt!2406348 lt!2406381 (t!379258 s!2326)) _$48!2294)))

(declare-fun b!6564497 () Bool)

(assert (=> b!6564497 (= e!3973774 (matchZipper!2451 lt!2406381 (t!379258 s!2326)))))

(assert (= (and d!2059863 (not res!2693718)) b!6564497))

(assert (=> d!2059863 m!7343252))

(assert (=> d!2059863 m!7343192))

(assert (=> b!6564497 m!7343232))

(assert (=> d!2058777 d!2059863))

(declare-fun b!6564498 () Bool)

(declare-fun e!3973776 () Bool)

(declare-fun call!571134 () Bool)

(assert (=> b!6564498 (= e!3973776 call!571134)))

(declare-fun b!6564499 () Bool)

(declare-fun res!2693721 () Bool)

(declare-fun e!3973775 () Bool)

(assert (=> b!6564499 (=> (not res!2693721) (not e!3973775))))

(declare-fun call!571136 () Bool)

(assert (=> b!6564499 (= res!2693721 call!571136)))

(declare-fun e!3973778 () Bool)

(assert (=> b!6564499 (= e!3973778 e!3973775)))

(declare-fun b!6564500 () Bool)

(declare-fun e!3973781 () Bool)

(assert (=> b!6564500 (= e!3973781 e!3973778)))

(declare-fun c!1206509 () Bool)

(assert (=> b!6564500 (= c!1206509 ((_ is Union!16439) lt!2406358))))

(declare-fun bm!571129 () Bool)

(assert (=> bm!571129 (= call!571136 (validRegex!8175 (ite c!1206509 (regOne!33391 lt!2406358) (regOne!33390 lt!2406358))))))

(declare-fun b!6564501 () Bool)

(assert (=> b!6564501 (= e!3973775 call!571134)))

(declare-fun b!6564502 () Bool)

(declare-fun e!3973779 () Bool)

(assert (=> b!6564502 (= e!3973779 e!3973776)))

(declare-fun res!2693723 () Bool)

(assert (=> b!6564502 (=> (not res!2693723) (not e!3973776))))

(assert (=> b!6564502 (= res!2693723 call!571136)))

(declare-fun b!6564503 () Bool)

(declare-fun res!2693719 () Bool)

(assert (=> b!6564503 (=> res!2693719 e!3973779)))

(assert (=> b!6564503 (= res!2693719 (not ((_ is Concat!25284) lt!2406358)))))

(assert (=> b!6564503 (= e!3973778 e!3973779)))

(declare-fun b!6564504 () Bool)

(declare-fun e!3973777 () Bool)

(assert (=> b!6564504 (= e!3973781 e!3973777)))

(declare-fun res!2693720 () Bool)

(assert (=> b!6564504 (= res!2693720 (not (nullable!6432 (reg!16768 lt!2406358))))))

(assert (=> b!6564504 (=> (not res!2693720) (not e!3973777))))

(declare-fun d!2059865 () Bool)

(declare-fun res!2693722 () Bool)

(declare-fun e!3973780 () Bool)

(assert (=> d!2059865 (=> res!2693722 e!3973780)))

(assert (=> d!2059865 (= res!2693722 ((_ is ElementMatch!16439) lt!2406358))))

(assert (=> d!2059865 (= (validRegex!8175 lt!2406358) e!3973780)))

(declare-fun b!6564505 () Bool)

(declare-fun call!571135 () Bool)

(assert (=> b!6564505 (= e!3973777 call!571135)))

(declare-fun bm!571130 () Bool)

(assert (=> bm!571130 (= call!571134 call!571135)))

(declare-fun b!6564506 () Bool)

(assert (=> b!6564506 (= e!3973780 e!3973781)))

(declare-fun c!1206508 () Bool)

(assert (=> b!6564506 (= c!1206508 ((_ is Star!16439) lt!2406358))))

(declare-fun bm!571131 () Bool)

(assert (=> bm!571131 (= call!571135 (validRegex!8175 (ite c!1206508 (reg!16768 lt!2406358) (ite c!1206509 (regTwo!33391 lt!2406358) (regTwo!33390 lt!2406358)))))))

(assert (= (and d!2059865 (not res!2693722)) b!6564506))

(assert (= (and b!6564506 c!1206508) b!6564504))

(assert (= (and b!6564506 (not c!1206508)) b!6564500))

(assert (= (and b!6564504 res!2693720) b!6564505))

(assert (= (and b!6564500 c!1206509) b!6564499))

(assert (= (and b!6564500 (not c!1206509)) b!6564503))

(assert (= (and b!6564499 res!2693721) b!6564501))

(assert (= (and b!6564503 (not res!2693719)) b!6564502))

(assert (= (and b!6564502 res!2693723) b!6564498))

(assert (= (or b!6564501 b!6564498) bm!571130))

(assert (= (or b!6564499 b!6564502) bm!571129))

(assert (= (or b!6564505 bm!571130) bm!571131))

(declare-fun m!7346726 () Bool)

(assert (=> bm!571129 m!7346726))

(declare-fun m!7346728 () Bool)

(assert (=> b!6564504 m!7346728))

(declare-fun m!7346730 () Bool)

(assert (=> bm!571131 m!7346730))

(assert (=> b!6562334 d!2059865))

(assert (=> bm!570774 d!2059503))

(assert (=> d!2058795 d!2059737))

(assert (=> d!2058795 d!2058615))

(assert (=> b!6561991 d!2059637))

(declare-fun b!6564507 () Bool)

(declare-fun e!3973783 () List!65616)

(assert (=> b!6564507 (= e!3973783 (_2!36721 (get!22740 lt!2406582)))))

(declare-fun b!6564510 () Bool)

(declare-fun e!3973782 () Bool)

(declare-fun lt!2406768 () List!65616)

(assert (=> b!6564510 (= e!3973782 (or (not (= (_2!36721 (get!22740 lt!2406582)) Nil!65492)) (= lt!2406768 (_1!36721 (get!22740 lt!2406582)))))))

(declare-fun d!2059867 () Bool)

(assert (=> d!2059867 e!3973782))

(declare-fun res!2693724 () Bool)

(assert (=> d!2059867 (=> (not res!2693724) (not e!3973782))))

(assert (=> d!2059867 (= res!2693724 (= (content!12598 lt!2406768) ((_ map or) (content!12598 (_1!36721 (get!22740 lt!2406582))) (content!12598 (_2!36721 (get!22740 lt!2406582))))))))

(assert (=> d!2059867 (= lt!2406768 e!3973783)))

(declare-fun c!1206510 () Bool)

(assert (=> d!2059867 (= c!1206510 ((_ is Nil!65492) (_1!36721 (get!22740 lt!2406582))))))

(assert (=> d!2059867 (= (++!14580 (_1!36721 (get!22740 lt!2406582)) (_2!36721 (get!22740 lt!2406582))) lt!2406768)))

(declare-fun b!6564508 () Bool)

(assert (=> b!6564508 (= e!3973783 (Cons!65492 (h!71940 (_1!36721 (get!22740 lt!2406582))) (++!14580 (t!379258 (_1!36721 (get!22740 lt!2406582))) (_2!36721 (get!22740 lt!2406582)))))))

(declare-fun b!6564509 () Bool)

(declare-fun res!2693725 () Bool)

(assert (=> b!6564509 (=> (not res!2693725) (not e!3973782))))

(assert (=> b!6564509 (= res!2693725 (= (size!40527 lt!2406768) (+ (size!40527 (_1!36721 (get!22740 lt!2406582))) (size!40527 (_2!36721 (get!22740 lt!2406582))))))))

(assert (= (and d!2059867 c!1206510) b!6564507))

(assert (= (and d!2059867 (not c!1206510)) b!6564508))

(assert (= (and d!2059867 res!2693724) b!6564509))

(assert (= (and b!6564509 res!2693725) b!6564510))

(declare-fun m!7346732 () Bool)

(assert (=> d!2059867 m!7346732))

(declare-fun m!7346734 () Bool)

(assert (=> d!2059867 m!7346734))

(declare-fun m!7346736 () Bool)

(assert (=> d!2059867 m!7346736))

(declare-fun m!7346738 () Bool)

(assert (=> b!6564508 m!7346738))

(declare-fun m!7346740 () Bool)

(assert (=> b!6564509 m!7346740))

(declare-fun m!7346742 () Bool)

(assert (=> b!6564509 m!7346742))

(declare-fun m!7346744 () Bool)

(assert (=> b!6564509 m!7346744))

(assert (=> b!6562286 d!2059867))

(assert (=> b!6562286 d!2059723))

(declare-fun b!6564511 () Bool)

(declare-fun e!3973785 () Bool)

(assert (=> b!6564511 (= e!3973785 (nullable!6432 (h!71941 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406382)))))))))

(declare-fun bm!571132 () Bool)

(declare-fun call!571137 () (InoxSet Context!11646))

(assert (=> bm!571132 (= call!571137 (derivationStepZipperDown!1687 (h!71941 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406382))))) (Context!11647 (t!379259 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406382)))))) (h!71940 s!2326)))))

(declare-fun e!3973786 () (InoxSet Context!11646))

(declare-fun b!6564512 () Bool)

(assert (=> b!6564512 (= e!3973786 ((_ map or) call!571137 (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406382)))))) (h!71940 s!2326))))))

(declare-fun d!2059869 () Bool)

(declare-fun c!1206512 () Bool)

(assert (=> d!2059869 (= c!1206512 e!3973785)))

(declare-fun res!2693726 () Bool)

(assert (=> d!2059869 (=> (not res!2693726) (not e!3973785))))

(assert (=> d!2059869 (= res!2693726 ((_ is Cons!65493) (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406382))))))))

(assert (=> d!2059869 (= (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 lt!2406382))) (h!71940 s!2326)) e!3973786)))

(declare-fun b!6564513 () Bool)

(declare-fun e!3973784 () (InoxSet Context!11646))

(assert (=> b!6564513 (= e!3973786 e!3973784)))

(declare-fun c!1206511 () Bool)

(assert (=> b!6564513 (= c!1206511 ((_ is Cons!65493) (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406382))))))))

(declare-fun b!6564514 () Bool)

(assert (=> b!6564514 (= e!3973784 call!571137)))

(declare-fun b!6564515 () Bool)

(assert (=> b!6564515 (= e!3973784 ((as const (Array Context!11646 Bool)) false))))

(assert (= (and d!2059869 res!2693726) b!6564511))

(assert (= (and d!2059869 c!1206512) b!6564512))

(assert (= (and d!2059869 (not c!1206512)) b!6564513))

(assert (= (and b!6564513 c!1206511) b!6564514))

(assert (= (and b!6564513 (not c!1206511)) b!6564515))

(assert (= (or b!6564512 b!6564514) bm!571132))

(declare-fun m!7346746 () Bool)

(assert (=> b!6564511 m!7346746))

(declare-fun m!7346748 () Bool)

(assert (=> bm!571132 m!7346748))

(declare-fun m!7346750 () Bool)

(assert (=> b!6564512 m!7346750))

(assert (=> b!6562368 d!2059869))

(declare-fun bs!1676534 () Bool)

(declare-fun d!2059871 () Bool)

(assert (= bs!1676534 (and d!2059871 d!2058735)))

(declare-fun lambda!365265 () Int)

(assert (=> bs!1676534 (= lambda!365265 lambda!365124)))

(declare-fun bs!1676535 () Bool)

(assert (= bs!1676535 (and d!2059871 d!2058599)))

(assert (=> bs!1676535 (= lambda!365265 lambda!365092)))

(declare-fun bs!1676536 () Bool)

(assert (= bs!1676536 (and d!2059871 d!2058587)))

(assert (=> bs!1676536 (= lambda!365265 lambda!365086)))

(declare-fun bs!1676537 () Bool)

(assert (= bs!1676537 (and d!2059871 d!2058797)))

(assert (=> bs!1676537 (= lambda!365265 lambda!365138)))

(declare-fun bs!1676538 () Bool)

(assert (= bs!1676538 (and d!2059871 d!2058737)))

(assert (=> bs!1676538 (= lambda!365265 lambda!365127)))

(declare-fun bs!1676539 () Bool)

(assert (= bs!1676539 (and d!2059871 d!2059555)))

(assert (=> bs!1676539 (= lambda!365265 lambda!365229)))

(declare-fun bs!1676540 () Bool)

(assert (= bs!1676540 (and d!2059871 d!2058739)))

(assert (=> bs!1676540 (= lambda!365265 lambda!365128)))

(declare-fun bs!1676541 () Bool)

(assert (= bs!1676541 (and d!2059871 d!2059649)))

(assert (=> bs!1676541 (= lambda!365265 lambda!365237)))

(declare-fun bs!1676542 () Bool)

(assert (= bs!1676542 (and d!2059871 b!6561265)))

(assert (=> bs!1676542 (= lambda!365265 lambda!365045)))

(declare-fun bs!1676543 () Bool)

(assert (= bs!1676543 (and d!2059871 d!2059767)))

(assert (=> bs!1676543 (= lambda!365265 lambda!365249)))

(declare-fun bs!1676544 () Bool)

(assert (= bs!1676544 (and d!2059871 d!2059557)))

(assert (=> bs!1676544 (= lambda!365265 lambda!365230)))

(assert (=> d!2059871 (= (inv!84344 (h!71942 (t!379260 zl!343))) (forall!15611 (exprs!6323 (h!71942 (t!379260 zl!343))) lambda!365265))))

(declare-fun bs!1676545 () Bool)

(assert (= bs!1676545 d!2059871))

(declare-fun m!7346752 () Bool)

(assert (=> bs!1676545 m!7346752))

(assert (=> b!6562449 d!2059871))

(assert (=> d!2058787 d!2059503))

(assert (=> d!2058787 d!2059665))

(declare-fun bs!1676546 () Bool)

(declare-fun d!2059873 () Bool)

(assert (= bs!1676546 (and d!2059873 d!2059773)))

(declare-fun lambda!365266 () Int)

(assert (=> bs!1676546 (= lambda!365266 lambda!365250)))

(declare-fun bs!1676547 () Bool)

(assert (= bs!1676547 (and d!2059873 d!2059785)))

(assert (=> bs!1676547 (= lambda!365266 lambda!365251)))

(declare-fun bs!1676548 () Bool)

(assert (= bs!1676548 (and d!2059873 d!2059453)))

(assert (=> bs!1676548 (= lambda!365266 lambda!365219)))

(declare-fun bs!1676549 () Bool)

(assert (= bs!1676549 (and d!2059873 d!2059827)))

(assert (=> bs!1676549 (= lambda!365266 lambda!365256)))

(declare-fun bs!1676550 () Bool)

(assert (= bs!1676550 (and d!2059873 d!2059713)))

(assert (=> bs!1676550 (= lambda!365266 lambda!365243)))

(declare-fun bs!1676551 () Bool)

(assert (= bs!1676551 (and d!2059873 d!2059671)))

(assert (=> bs!1676551 (= lambda!365266 lambda!365240)))

(assert (=> d!2059873 (= (nullableZipper!2184 z!1189) (exists!2639 z!1189 lambda!365266))))

(declare-fun bs!1676552 () Bool)

(assert (= bs!1676552 d!2059873))

(declare-fun m!7346754 () Bool)

(assert (=> bs!1676552 m!7346754))

(assert (=> b!6561761 d!2059873))

(assert (=> d!2058723 d!2058733))

(declare-fun d!2059875 () Bool)

(assert (=> d!2059875 (= (flatMap!1944 lt!2406394 lambda!365043) (dynLambda!26049 lambda!365043 lt!2406352))))

(assert (=> d!2059875 true))

(declare-fun _$13!3811 () Unit!159091)

(assert (=> d!2059875 (= (choose!48969 lt!2406394 lt!2406352 lambda!365043) _$13!3811)))

(declare-fun b_lambda!248305 () Bool)

(assert (=> (not b_lambda!248305) (not d!2059875)))

(declare-fun bs!1676553 () Bool)

(assert (= bs!1676553 d!2059875))

(assert (=> bs!1676553 m!7343350))

(assert (=> bs!1676553 m!7344094))

(assert (=> d!2058723 d!2059875))

(declare-fun d!2059877 () Bool)

(declare-fun c!1206513 () Bool)

(assert (=> d!2059877 (= c!1206513 (isEmpty!37737 s!2326))))

(declare-fun e!3973787 () Bool)

(assert (=> d!2059877 (= (matchZipper!2451 lt!2406394 s!2326) e!3973787)))

(declare-fun b!6564516 () Bool)

(assert (=> b!6564516 (= e!3973787 (nullableZipper!2184 lt!2406394))))

(declare-fun b!6564517 () Bool)

(assert (=> b!6564517 (= e!3973787 (matchZipper!2451 (derivationStepZipper!2405 lt!2406394 (head!13329 s!2326)) (tail!12414 s!2326)))))

(assert (= (and d!2059877 c!1206513) b!6564516))

(assert (= (and d!2059877 (not c!1206513)) b!6564517))

(assert (=> d!2059877 m!7343766))

(assert (=> b!6564516 m!7343780))

(assert (=> b!6564517 m!7343770))

(assert (=> b!6564517 m!7343770))

(declare-fun m!7346756 () Bool)

(assert (=> b!6564517 m!7346756))

(assert (=> b!6564517 m!7343774))

(assert (=> b!6564517 m!7346756))

(assert (=> b!6564517 m!7343774))

(declare-fun m!7346758 () Bool)

(assert (=> b!6564517 m!7346758))

(assert (=> b!6562177 d!2059877))

(declare-fun bm!571133 () Bool)

(declare-fun call!571139 () List!65617)

(declare-fun call!571143 () List!65617)

(assert (=> bm!571133 (= call!571139 call!571143)))

(declare-fun b!6564518 () Bool)

(declare-fun e!3973790 () (InoxSet Context!11646))

(assert (=> b!6564518 (= e!3973790 (store ((as const (Array Context!11646 Bool)) false) (Context!11647 (t!379259 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))) true))))

(declare-fun b!6564519 () Bool)

(declare-fun e!3973793 () (InoxSet Context!11646))

(declare-fun e!3973792 () (InoxSet Context!11646))

(assert (=> b!6564519 (= e!3973793 e!3973792)))

(declare-fun c!1206516 () Bool)

(assert (=> b!6564519 (= c!1206516 ((_ is Concat!25284) (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))))))

(declare-fun b!6564520 () Bool)

(declare-fun e!3973791 () (InoxSet Context!11646))

(declare-fun call!571142 () (InoxSet Context!11646))

(assert (=> b!6564520 (= e!3973791 call!571142)))

(declare-fun b!6564521 () Bool)

(declare-fun call!571141 () (InoxSet Context!11646))

(declare-fun call!571138 () (InoxSet Context!11646))

(assert (=> b!6564521 (= e!3973793 ((_ map or) call!571141 call!571138))))

(declare-fun c!1206514 () Bool)

(declare-fun bm!571134 () Bool)

(assert (=> bm!571134 (= call!571141 (derivationStepZipperDown!1687 (ite c!1206514 (regOne!33391 (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))) (regOne!33390 (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343))))))))) (ite c!1206514 (Context!11647 (t!379259 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))) (Context!11647 call!571143)) (h!71940 s!2326)))))

(declare-fun b!6564522 () Bool)

(assert (=> b!6564522 (= e!3973792 call!571142)))

(declare-fun bm!571135 () Bool)

(declare-fun call!571140 () (InoxSet Context!11646))

(declare-fun c!1206518 () Bool)

(assert (=> bm!571135 (= call!571140 (derivationStepZipperDown!1687 (ite c!1206514 (regTwo!33391 (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))) (ite c!1206518 (regTwo!33390 (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))) (ite c!1206516 (regOne!33390 (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))) (reg!16768 (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343))))))))))) (ite (or c!1206514 c!1206518) (Context!11647 (t!379259 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))) (Context!11647 call!571139)) (h!71940 s!2326)))))

(declare-fun b!6564523 () Bool)

(declare-fun e!3973788 () Bool)

(assert (=> b!6564523 (= e!3973788 (nullable!6432 (regOne!33390 (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343))))))))))))

(declare-fun bm!571136 () Bool)

(assert (=> bm!571136 (= call!571142 call!571138)))

(declare-fun bm!571137 () Bool)

(assert (=> bm!571137 (= call!571138 call!571140)))

(declare-fun b!6564524 () Bool)

(declare-fun c!1206517 () Bool)

(assert (=> b!6564524 (= c!1206517 ((_ is Star!16439) (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))))))

(assert (=> b!6564524 (= e!3973792 e!3973791)))

(declare-fun b!6564525 () Bool)

(assert (=> b!6564525 (= e!3973791 ((as const (Array Context!11646 Bool)) false))))

(declare-fun b!6564526 () Bool)

(declare-fun e!3973789 () (InoxSet Context!11646))

(assert (=> b!6564526 (= e!3973790 e!3973789)))

(assert (=> b!6564526 (= c!1206514 ((_ is Union!16439) (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))))))

(declare-fun bm!571138 () Bool)

(assert (=> bm!571138 (= call!571143 ($colon$colon!2280 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343))))))))) (ite (or c!1206518 c!1206516) (regTwo!33390 (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))) (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343))))))))))))

(declare-fun b!6564527 () Bool)

(assert (=> b!6564527 (= e!3973789 ((_ map or) call!571141 call!571140))))

(declare-fun d!2059879 () Bool)

(declare-fun c!1206515 () Bool)

(assert (=> d!2059879 (= c!1206515 (and ((_ is ElementMatch!16439) (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))) (= (c!1205620 (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))) (h!71940 s!2326))))))

(assert (=> d!2059879 (= (derivationStepZipperDown!1687 (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343))))))) (Context!11647 (t!379259 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))) (h!71940 s!2326)) e!3973790)))

(declare-fun b!6564528 () Bool)

(assert (=> b!6564528 (= c!1206518 e!3973788)))

(declare-fun res!2693727 () Bool)

(assert (=> b!6564528 (=> (not res!2693727) (not e!3973788))))

(assert (=> b!6564528 (= res!2693727 ((_ is Concat!25284) (h!71941 (exprs!6323 (Context!11647 (Cons!65493 (h!71941 (exprs!6323 (h!71942 zl!343))) (t!379259 (exprs!6323 (h!71942 zl!343)))))))))))

(assert (=> b!6564528 (= e!3973789 e!3973793)))

(assert (= (and d!2059879 c!1206515) b!6564518))

(assert (= (and d!2059879 (not c!1206515)) b!6564526))

(assert (= (and b!6564526 c!1206514) b!6564527))

(assert (= (and b!6564526 (not c!1206514)) b!6564528))

(assert (= (and b!6564528 res!2693727) b!6564523))

(assert (= (and b!6564528 c!1206518) b!6564521))

(assert (= (and b!6564528 (not c!1206518)) b!6564519))

(assert (= (and b!6564519 c!1206516) b!6564522))

(assert (= (and b!6564519 (not c!1206516)) b!6564524))

(assert (= (and b!6564524 c!1206517) b!6564520))

(assert (= (and b!6564524 (not c!1206517)) b!6564525))

(assert (= (or b!6564522 b!6564520) bm!571133))

(assert (= (or b!6564522 b!6564520) bm!571136))

(assert (= (or b!6564521 bm!571133) bm!571138))

(assert (= (or b!6564521 bm!571136) bm!571137))

(assert (= (or b!6564527 bm!571137) bm!571135))

(assert (= (or b!6564527 b!6564521) bm!571134))

(declare-fun m!7346760 () Bool)

(assert (=> b!6564523 m!7346760))

(declare-fun m!7346762 () Bool)

(assert (=> b!6564518 m!7346762))

(declare-fun m!7346764 () Bool)

(assert (=> bm!571138 m!7346764))

(declare-fun m!7346766 () Bool)

(assert (=> bm!571134 m!7346766))

(declare-fun m!7346768 () Bool)

(assert (=> bm!571135 m!7346768))

(assert (=> bm!570771 d!2059879))

(declare-fun d!2059881 () Bool)

(assert (=> d!2059881 true))

(assert (=> d!2059881 true))

(declare-fun res!2693728 () Bool)

(assert (=> d!2059881 (= (choose!48962 lambda!365047) res!2693728)))

(assert (=> d!2058805 d!2059881))

(declare-fun d!2059883 () Bool)

(assert (=> d!2059883 (= (isEmptyLang!1826 lt!2406540) ((_ is EmptyLang!16439) lt!2406540))))

(assert (=> b!6562097 d!2059883))

(assert (=> b!6562246 d!2058609))

(declare-fun b!6564529 () Bool)

(declare-fun e!3973796 () Bool)

(declare-fun e!3973799 () Bool)

(assert (=> b!6564529 (= e!3973796 e!3973799)))

(declare-fun res!2693735 () Bool)

(assert (=> b!6564529 (=> (not res!2693735) (not e!3973799))))

(declare-fun lt!2406769 () Bool)

(assert (=> b!6564529 (= res!2693735 (not lt!2406769))))

(declare-fun b!6564530 () Bool)

(declare-fun res!2693732 () Bool)

(declare-fun e!3973798 () Bool)

(assert (=> b!6564530 (=> res!2693732 e!3973798)))

(assert (=> b!6564530 (= res!2693732 (not (isEmpty!37737 (tail!12414 (_2!36721 (get!22740 lt!2406562))))))))

(declare-fun b!6564531 () Bool)

(declare-fun e!3973794 () Bool)

(declare-fun call!571144 () Bool)

(assert (=> b!6564531 (= e!3973794 (= lt!2406769 call!571144))))

(declare-fun b!6564533 () Bool)

(declare-fun res!2693731 () Bool)

(declare-fun e!3973797 () Bool)

(assert (=> b!6564533 (=> (not res!2693731) (not e!3973797))))

(assert (=> b!6564533 (= res!2693731 (isEmpty!37737 (tail!12414 (_2!36721 (get!22740 lt!2406562)))))))

(declare-fun b!6564534 () Bool)

(assert (=> b!6564534 (= e!3973797 (= (head!13329 (_2!36721 (get!22740 lt!2406562))) (c!1205620 (regTwo!33390 r!7292))))))

(declare-fun b!6564535 () Bool)

(declare-fun res!2693733 () Bool)

(assert (=> b!6564535 (=> res!2693733 e!3973796)))

(assert (=> b!6564535 (= res!2693733 e!3973797)))

(declare-fun res!2693729 () Bool)

(assert (=> b!6564535 (=> (not res!2693729) (not e!3973797))))

(assert (=> b!6564535 (= res!2693729 lt!2406769)))

(declare-fun b!6564536 () Bool)

(declare-fun e!3973800 () Bool)

(assert (=> b!6564536 (= e!3973800 (not lt!2406769))))

(declare-fun b!6564537 () Bool)

(declare-fun res!2693736 () Bool)

(assert (=> b!6564537 (=> (not res!2693736) (not e!3973797))))

(assert (=> b!6564537 (= res!2693736 (not call!571144))))

(declare-fun b!6564538 () Bool)

(assert (=> b!6564538 (= e!3973799 e!3973798)))

(declare-fun res!2693730 () Bool)

(assert (=> b!6564538 (=> res!2693730 e!3973798)))

(assert (=> b!6564538 (= res!2693730 call!571144)))

(declare-fun b!6564539 () Bool)

(declare-fun e!3973795 () Bool)

(assert (=> b!6564539 (= e!3973795 (nullable!6432 (regTwo!33390 r!7292)))))

(declare-fun bm!571139 () Bool)

(assert (=> bm!571139 (= call!571144 (isEmpty!37737 (_2!36721 (get!22740 lt!2406562))))))

(declare-fun b!6564540 () Bool)

(assert (=> b!6564540 (= e!3973794 e!3973800)))

(declare-fun c!1206519 () Bool)

(assert (=> b!6564540 (= c!1206519 ((_ is EmptyLang!16439) (regTwo!33390 r!7292)))))

(declare-fun b!6564541 () Bool)

(declare-fun res!2693734 () Bool)

(assert (=> b!6564541 (=> res!2693734 e!3973796)))

(assert (=> b!6564541 (= res!2693734 (not ((_ is ElementMatch!16439) (regTwo!33390 r!7292))))))

(assert (=> b!6564541 (= e!3973800 e!3973796)))

(declare-fun b!6564542 () Bool)

(assert (=> b!6564542 (= e!3973795 (matchR!8622 (derivativeStep!5123 (regTwo!33390 r!7292) (head!13329 (_2!36721 (get!22740 lt!2406562)))) (tail!12414 (_2!36721 (get!22740 lt!2406562)))))))

(declare-fun d!2059885 () Bool)

(assert (=> d!2059885 e!3973794))

(declare-fun c!1206521 () Bool)

(assert (=> d!2059885 (= c!1206521 ((_ is EmptyExpr!16439) (regTwo!33390 r!7292)))))

(assert (=> d!2059885 (= lt!2406769 e!3973795)))

(declare-fun c!1206520 () Bool)

(assert (=> d!2059885 (= c!1206520 (isEmpty!37737 (_2!36721 (get!22740 lt!2406562))))))

(assert (=> d!2059885 (validRegex!8175 (regTwo!33390 r!7292))))

(assert (=> d!2059885 (= (matchR!8622 (regTwo!33390 r!7292) (_2!36721 (get!22740 lt!2406562))) lt!2406769)))

(declare-fun b!6564532 () Bool)

(assert (=> b!6564532 (= e!3973798 (not (= (head!13329 (_2!36721 (get!22740 lt!2406562))) (c!1205620 (regTwo!33390 r!7292)))))))

(assert (= (and d!2059885 c!1206520) b!6564539))

(assert (= (and d!2059885 (not c!1206520)) b!6564542))

(assert (= (and d!2059885 c!1206521) b!6564531))

(assert (= (and d!2059885 (not c!1206521)) b!6564540))

(assert (= (and b!6564540 c!1206519) b!6564536))

(assert (= (and b!6564540 (not c!1206519)) b!6564541))

(assert (= (and b!6564541 (not res!2693734)) b!6564535))

(assert (= (and b!6564535 res!2693729) b!6564537))

(assert (= (and b!6564537 res!2693736) b!6564533))

(assert (= (and b!6564533 res!2693731) b!6564534))

(assert (= (and b!6564535 (not res!2693733)) b!6564529))

(assert (= (and b!6564529 res!2693735) b!6564538))

(assert (= (and b!6564538 (not res!2693730)) b!6564530))

(assert (= (and b!6564530 (not res!2693732)) b!6564532))

(assert (= (or b!6564531 b!6564537 b!6564538) bm!571139))

(declare-fun m!7346770 () Bool)

(assert (=> bm!571139 m!7346770))

(assert (=> d!2059885 m!7346770))

(assert (=> d!2059885 m!7344386))

(declare-fun m!7346772 () Bool)

(assert (=> b!6564533 m!7346772))

(assert (=> b!6564533 m!7346772))

(declare-fun m!7346774 () Bool)

(assert (=> b!6564533 m!7346774))

(declare-fun m!7346776 () Bool)

(assert (=> b!6564534 m!7346776))

(assert (=> b!6564532 m!7346776))

(assert (=> b!6564530 m!7346772))

(assert (=> b!6564530 m!7346772))

(assert (=> b!6564530 m!7346774))

(assert (=> b!6564539 m!7346202))

(assert (=> b!6564542 m!7346776))

(assert (=> b!6564542 m!7346776))

(declare-fun m!7346778 () Bool)

(assert (=> b!6564542 m!7346778))

(assert (=> b!6564542 m!7346772))

(assert (=> b!6564542 m!7346778))

(assert (=> b!6564542 m!7346772))

(declare-fun m!7346780 () Bool)

(assert (=> b!6564542 m!7346780))

(assert (=> b!6562188 d!2059885))

(assert (=> b!6562188 d!2059551))

(assert (=> b!6562235 d!2059539))

(declare-fun d!2059887 () Bool)

(declare-fun res!2693737 () Bool)

(declare-fun e!3973801 () Bool)

(assert (=> d!2059887 (=> res!2693737 e!3973801)))

(assert (=> d!2059887 (= res!2693737 ((_ is Nil!65493) (exprs!6323 setElem!44790)))))

(assert (=> d!2059887 (= (forall!15611 (exprs!6323 setElem!44790) lambda!365128) e!3973801)))

(declare-fun b!6564543 () Bool)

(declare-fun e!3973802 () Bool)

(assert (=> b!6564543 (= e!3973801 e!3973802)))

(declare-fun res!2693738 () Bool)

(assert (=> b!6564543 (=> (not res!2693738) (not e!3973802))))

(assert (=> b!6564543 (= res!2693738 (dynLambda!26053 lambda!365128 (h!71941 (exprs!6323 setElem!44790))))))

(declare-fun b!6564544 () Bool)

(assert (=> b!6564544 (= e!3973802 (forall!15611 (t!379259 (exprs!6323 setElem!44790)) lambda!365128))))

(assert (= (and d!2059887 (not res!2693737)) b!6564543))

(assert (= (and b!6564543 res!2693738) b!6564544))

(declare-fun b_lambda!248307 () Bool)

(assert (=> (not b_lambda!248307) (not b!6564543)))

(declare-fun m!7346782 () Bool)

(assert (=> b!6564543 m!7346782))

(declare-fun m!7346784 () Bool)

(assert (=> b!6564544 m!7346784))

(assert (=> d!2058739 d!2059887))

(declare-fun bs!1676554 () Bool)

(declare-fun d!2059889 () Bool)

(assert (= bs!1676554 (and d!2059889 d!2059873)))

(declare-fun lambda!365267 () Int)

(assert (=> bs!1676554 (= lambda!365267 lambda!365266)))

(declare-fun bs!1676555 () Bool)

(assert (= bs!1676555 (and d!2059889 d!2059773)))

(assert (=> bs!1676555 (= lambda!365267 lambda!365250)))

(declare-fun bs!1676556 () Bool)

(assert (= bs!1676556 (and d!2059889 d!2059785)))

(assert (=> bs!1676556 (= lambda!365267 lambda!365251)))

(declare-fun bs!1676557 () Bool)

(assert (= bs!1676557 (and d!2059889 d!2059453)))

(assert (=> bs!1676557 (= lambda!365267 lambda!365219)))

(declare-fun bs!1676558 () Bool)

(assert (= bs!1676558 (and d!2059889 d!2059827)))

(assert (=> bs!1676558 (= lambda!365267 lambda!365256)))

(declare-fun bs!1676559 () Bool)

(assert (= bs!1676559 (and d!2059889 d!2059713)))

(assert (=> bs!1676559 (= lambda!365267 lambda!365243)))

(declare-fun bs!1676560 () Bool)

(assert (= bs!1676560 (and d!2059889 d!2059671)))

(assert (=> bs!1676560 (= lambda!365267 lambda!365240)))

(assert (=> d!2059889 (= (nullableZipper!2184 lt!2406381) (exists!2639 lt!2406381 lambda!365267))))

(declare-fun bs!1676561 () Bool)

(assert (= bs!1676561 d!2059889))

(declare-fun m!7346786 () Bool)

(assert (=> bs!1676561 m!7346786))

(assert (=> b!6561759 d!2059889))

(assert (=> b!6562173 d!2059779))

(declare-fun d!2059891 () Bool)

(assert (=> d!2059891 (= (nullable!6432 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343))))) (nullableFct!2358 (regOne!33390 (h!71941 (exprs!6323 (h!71942 zl!343))))))))

(declare-fun bs!1676562 () Bool)

(assert (= bs!1676562 d!2059891))

(declare-fun m!7346788 () Bool)

(assert (=> bs!1676562 m!7346788))

(assert (=> b!6562381 d!2059891))

(declare-fun b!6564545 () Bool)

(declare-fun e!3973805 () Bool)

(declare-fun e!3973808 () Bool)

(assert (=> b!6564545 (= e!3973805 e!3973808)))

(declare-fun res!2693745 () Bool)

(assert (=> b!6564545 (=> (not res!2693745) (not e!3973808))))

(declare-fun lt!2406770 () Bool)

(assert (=> b!6564545 (= res!2693745 (not lt!2406770))))

(declare-fun b!6564546 () Bool)

(declare-fun res!2693742 () Bool)

(declare-fun e!3973807 () Bool)

(assert (=> b!6564546 (=> res!2693742 e!3973807)))

(assert (=> b!6564546 (= res!2693742 (not (isEmpty!37737 (tail!12414 (tail!12414 (_2!36721 lt!2406377))))))))

(declare-fun b!6564547 () Bool)

(declare-fun e!3973803 () Bool)

(declare-fun call!571145 () Bool)

(assert (=> b!6564547 (= e!3973803 (= lt!2406770 call!571145))))

(declare-fun b!6564549 () Bool)

(declare-fun res!2693741 () Bool)

(declare-fun e!3973806 () Bool)

(assert (=> b!6564549 (=> (not res!2693741) (not e!3973806))))

(assert (=> b!6564549 (= res!2693741 (isEmpty!37737 (tail!12414 (tail!12414 (_2!36721 lt!2406377)))))))

(declare-fun b!6564550 () Bool)

(assert (=> b!6564550 (= e!3973806 (= (head!13329 (tail!12414 (_2!36721 lt!2406377))) (c!1205620 (derivativeStep!5123 lt!2406341 (head!13329 (_2!36721 lt!2406377))))))))

(declare-fun b!6564551 () Bool)

(declare-fun res!2693743 () Bool)

(assert (=> b!6564551 (=> res!2693743 e!3973805)))

(assert (=> b!6564551 (= res!2693743 e!3973806)))

(declare-fun res!2693739 () Bool)

(assert (=> b!6564551 (=> (not res!2693739) (not e!3973806))))

(assert (=> b!6564551 (= res!2693739 lt!2406770)))

(declare-fun b!6564552 () Bool)

(declare-fun e!3973809 () Bool)

(assert (=> b!6564552 (= e!3973809 (not lt!2406770))))

(declare-fun b!6564553 () Bool)

(declare-fun res!2693746 () Bool)

(assert (=> b!6564553 (=> (not res!2693746) (not e!3973806))))

(assert (=> b!6564553 (= res!2693746 (not call!571145))))

(declare-fun b!6564554 () Bool)

(assert (=> b!6564554 (= e!3973808 e!3973807)))

(declare-fun res!2693740 () Bool)

(assert (=> b!6564554 (=> res!2693740 e!3973807)))

(assert (=> b!6564554 (= res!2693740 call!571145)))

(declare-fun b!6564555 () Bool)

(declare-fun e!3973804 () Bool)

(assert (=> b!6564555 (= e!3973804 (nullable!6432 (derivativeStep!5123 lt!2406341 (head!13329 (_2!36721 lt!2406377)))))))

(declare-fun bm!571140 () Bool)

(assert (=> bm!571140 (= call!571145 (isEmpty!37737 (tail!12414 (_2!36721 lt!2406377))))))

(declare-fun b!6564556 () Bool)

(assert (=> b!6564556 (= e!3973803 e!3973809)))

(declare-fun c!1206522 () Bool)

(assert (=> b!6564556 (= c!1206522 ((_ is EmptyLang!16439) (derivativeStep!5123 lt!2406341 (head!13329 (_2!36721 lt!2406377)))))))

(declare-fun b!6564557 () Bool)

(declare-fun res!2693744 () Bool)

(assert (=> b!6564557 (=> res!2693744 e!3973805)))

(assert (=> b!6564557 (= res!2693744 (not ((_ is ElementMatch!16439) (derivativeStep!5123 lt!2406341 (head!13329 (_2!36721 lt!2406377))))))))

(assert (=> b!6564557 (= e!3973809 e!3973805)))

(declare-fun b!6564558 () Bool)

(assert (=> b!6564558 (= e!3973804 (matchR!8622 (derivativeStep!5123 (derivativeStep!5123 lt!2406341 (head!13329 (_2!36721 lt!2406377))) (head!13329 (tail!12414 (_2!36721 lt!2406377)))) (tail!12414 (tail!12414 (_2!36721 lt!2406377)))))))

(declare-fun d!2059893 () Bool)

(assert (=> d!2059893 e!3973803))

(declare-fun c!1206524 () Bool)

(assert (=> d!2059893 (= c!1206524 ((_ is EmptyExpr!16439) (derivativeStep!5123 lt!2406341 (head!13329 (_2!36721 lt!2406377)))))))

(assert (=> d!2059893 (= lt!2406770 e!3973804)))

(declare-fun c!1206523 () Bool)

(assert (=> d!2059893 (= c!1206523 (isEmpty!37737 (tail!12414 (_2!36721 lt!2406377))))))

(assert (=> d!2059893 (validRegex!8175 (derivativeStep!5123 lt!2406341 (head!13329 (_2!36721 lt!2406377))))))

(assert (=> d!2059893 (= (matchR!8622 (derivativeStep!5123 lt!2406341 (head!13329 (_2!36721 lt!2406377))) (tail!12414 (_2!36721 lt!2406377))) lt!2406770)))

(declare-fun b!6564548 () Bool)

(assert (=> b!6564548 (= e!3973807 (not (= (head!13329 (tail!12414 (_2!36721 lt!2406377))) (c!1205620 (derivativeStep!5123 lt!2406341 (head!13329 (_2!36721 lt!2406377)))))))))

(assert (= (and d!2059893 c!1206523) b!6564555))

(assert (= (and d!2059893 (not c!1206523)) b!6564558))

(assert (= (and d!2059893 c!1206524) b!6564547))

(assert (= (and d!2059893 (not c!1206524)) b!6564556))

(assert (= (and b!6564556 c!1206522) b!6564552))

(assert (= (and b!6564556 (not c!1206522)) b!6564557))

(assert (= (and b!6564557 (not res!2693744)) b!6564551))

(assert (= (and b!6564551 res!2693739) b!6564553))

(assert (= (and b!6564553 res!2693746) b!6564549))

(assert (= (and b!6564549 res!2693741) b!6564550))

(assert (= (and b!6564551 (not res!2693743)) b!6564545))

(assert (= (and b!6564545 res!2693745) b!6564554))

(assert (= (and b!6564554 (not res!2693740)) b!6564546))

(assert (= (and b!6564546 (not res!2693742)) b!6564548))

(assert (= (or b!6564547 b!6564553 b!6564554) bm!571140))

(assert (=> bm!571140 m!7343786))

(assert (=> bm!571140 m!7344282))

(assert (=> d!2059893 m!7343786))

(assert (=> d!2059893 m!7344282))

(assert (=> d!2059893 m!7344286))

(declare-fun m!7346790 () Bool)

(assert (=> d!2059893 m!7346790))

(assert (=> b!6564549 m!7343786))

(assert (=> b!6564549 m!7346464))

(assert (=> b!6564549 m!7346464))

(declare-fun m!7346792 () Bool)

(assert (=> b!6564549 m!7346792))

(assert (=> b!6564550 m!7343786))

(assert (=> b!6564550 m!7346460))

(assert (=> b!6564548 m!7343786))

(assert (=> b!6564548 m!7346460))

(assert (=> b!6564546 m!7343786))

(assert (=> b!6564546 m!7346464))

(assert (=> b!6564546 m!7346464))

(assert (=> b!6564546 m!7346792))

(assert (=> b!6564555 m!7344286))

(declare-fun m!7346794 () Bool)

(assert (=> b!6564555 m!7346794))

(assert (=> b!6564558 m!7343786))

(assert (=> b!6564558 m!7346460))

(assert (=> b!6564558 m!7344286))

(assert (=> b!6564558 m!7346460))

(declare-fun m!7346796 () Bool)

(assert (=> b!6564558 m!7346796))

(assert (=> b!6564558 m!7343786))

(assert (=> b!6564558 m!7346464))

(assert (=> b!6564558 m!7346796))

(assert (=> b!6564558 m!7346464))

(declare-fun m!7346798 () Bool)

(assert (=> b!6564558 m!7346798))

(assert (=> b!6562264 d!2059893))

(declare-fun bm!571141 () Bool)

(declare-fun call!571147 () Regex!16439)

(declare-fun call!571146 () Regex!16439)

(assert (=> bm!571141 (= call!571147 call!571146)))

(declare-fun e!3973813 () Regex!16439)

(declare-fun b!6564560 () Bool)

(declare-fun call!571148 () Regex!16439)

(assert (=> b!6564560 (= e!3973813 (Union!16439 (Concat!25284 call!571148 (regTwo!33390 lt!2406341)) call!571147))))

(declare-fun c!1206527 () Bool)

(declare-fun bm!571142 () Bool)

(assert (=> bm!571142 (= call!571148 (derivativeStep!5123 (ite c!1206527 (regOne!33391 lt!2406341) (regOne!33390 lt!2406341)) (head!13329 (_2!36721 lt!2406377))))))

(declare-fun b!6564561 () Bool)

(declare-fun e!3973814 () Regex!16439)

(assert (=> b!6564561 (= e!3973814 EmptyLang!16439)))

(declare-fun b!6564562 () Bool)

(declare-fun e!3973812 () Regex!16439)

(assert (=> b!6564562 (= e!3973812 (ite (= (head!13329 (_2!36721 lt!2406377)) (c!1205620 lt!2406341)) EmptyExpr!16439 EmptyLang!16439))))

(declare-fun b!6564563 () Bool)

(declare-fun c!1206529 () Bool)

(assert (=> b!6564563 (= c!1206529 (nullable!6432 (regOne!33390 lt!2406341)))))

(declare-fun e!3973810 () Regex!16439)

(assert (=> b!6564563 (= e!3973810 e!3973813)))

(declare-fun b!6564564 () Bool)

(assert (=> b!6564564 (= c!1206527 ((_ is Union!16439) lt!2406341))))

(declare-fun e!3973811 () Regex!16439)

(assert (=> b!6564564 (= e!3973812 e!3973811)))

(declare-fun call!571149 () Regex!16439)

(declare-fun c!1206528 () Bool)

(declare-fun bm!571143 () Bool)

(assert (=> bm!571143 (= call!571149 (derivativeStep!5123 (ite c!1206527 (regTwo!33391 lt!2406341) (ite c!1206528 (reg!16768 lt!2406341) (ite c!1206529 (regTwo!33390 lt!2406341) (regOne!33390 lt!2406341)))) (head!13329 (_2!36721 lt!2406377))))))

(declare-fun b!6564565 () Bool)

(assert (=> b!6564565 (= e!3973813 (Union!16439 (Concat!25284 call!571147 (regTwo!33390 lt!2406341)) EmptyLang!16439))))

(declare-fun b!6564559 () Bool)

(assert (=> b!6564559 (= e!3973810 (Concat!25284 call!571146 lt!2406341))))

(declare-fun d!2059895 () Bool)

(declare-fun lt!2406771 () Regex!16439)

(assert (=> d!2059895 (validRegex!8175 lt!2406771)))

(assert (=> d!2059895 (= lt!2406771 e!3973814)))

(declare-fun c!1206525 () Bool)

(assert (=> d!2059895 (= c!1206525 (or ((_ is EmptyExpr!16439) lt!2406341) ((_ is EmptyLang!16439) lt!2406341)))))

(assert (=> d!2059895 (validRegex!8175 lt!2406341)))

(assert (=> d!2059895 (= (derivativeStep!5123 lt!2406341 (head!13329 (_2!36721 lt!2406377))) lt!2406771)))

(declare-fun b!6564566 () Bool)

(assert (=> b!6564566 (= e!3973811 (Union!16439 call!571148 call!571149))))

(declare-fun b!6564567 () Bool)

(assert (=> b!6564567 (= e!3973811 e!3973810)))

(assert (=> b!6564567 (= c!1206528 ((_ is Star!16439) lt!2406341))))

(declare-fun b!6564568 () Bool)

(assert (=> b!6564568 (= e!3973814 e!3973812)))

(declare-fun c!1206526 () Bool)

(assert (=> b!6564568 (= c!1206526 ((_ is ElementMatch!16439) lt!2406341))))

(declare-fun bm!571144 () Bool)

(assert (=> bm!571144 (= call!571146 call!571149)))

(assert (= (and d!2059895 c!1206525) b!6564561))

(assert (= (and d!2059895 (not c!1206525)) b!6564568))

(assert (= (and b!6564568 c!1206526) b!6564562))

(assert (= (and b!6564568 (not c!1206526)) b!6564564))

(assert (= (and b!6564564 c!1206527) b!6564566))

(assert (= (and b!6564564 (not c!1206527)) b!6564567))

(assert (= (and b!6564567 c!1206528) b!6564559))

(assert (= (and b!6564567 (not c!1206528)) b!6564563))

(assert (= (and b!6564563 c!1206529) b!6564560))

(assert (= (and b!6564563 (not c!1206529)) b!6564565))

(assert (= (or b!6564560 b!6564565) bm!571141))

(assert (= (or b!6564559 bm!571141) bm!571144))

(assert (= (or b!6564566 bm!571144) bm!571143))

(assert (= (or b!6564566 b!6564560) bm!571142))

(assert (=> bm!571142 m!7343782))

(declare-fun m!7346800 () Bool)

(assert (=> bm!571142 m!7346800))

(declare-fun m!7346802 () Bool)

(assert (=> b!6564563 m!7346802))

(assert (=> bm!571143 m!7343782))

(declare-fun m!7346804 () Bool)

(assert (=> bm!571143 m!7346804))

(declare-fun m!7346806 () Bool)

(assert (=> d!2059895 m!7346806))

(assert (=> d!2059895 m!7344280))

(assert (=> b!6562264 d!2059895))

(assert (=> b!6562264 d!2059583))

(assert (=> b!6562264 d!2059491))

(declare-fun d!2059897 () Bool)

(assert (=> d!2059897 (= (isEmpty!37738 (findConcatSeparation!2744 (reg!16768 (regOne!33390 r!7292)) lt!2406358 Nil!65492 (_1!36721 lt!2406397) (_1!36721 lt!2406397))) (not ((_ is Some!16329) (findConcatSeparation!2744 (reg!16768 (regOne!33390 r!7292)) lt!2406358 Nil!65492 (_1!36721 lt!2406397) (_1!36721 lt!2406397)))))))

(assert (=> d!2058679 d!2059897))

(declare-fun d!2059899 () Bool)

(assert (=> d!2059899 (= (Exists!3509 lambda!365141) (choose!48962 lambda!365141))))

(declare-fun bs!1676563 () Bool)

(assert (= bs!1676563 d!2059899))

(declare-fun m!7346808 () Bool)

(assert (=> bs!1676563 m!7346808))

(assert (=> d!2058817 d!2059899))

(declare-fun bs!1676564 () Bool)

(declare-fun d!2059901 () Bool)

(assert (= bs!1676564 (and d!2059901 d!2058817)))

(declare-fun lambda!365268 () Int)

(assert (=> bs!1676564 (= lambda!365268 lambda!365141)))

(declare-fun bs!1676565 () Bool)

(assert (= bs!1676565 (and d!2059901 b!6561249)))

(assert (=> bs!1676565 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365268 lambda!365048))))

(declare-fun bs!1676566 () Bool)

(assert (= bs!1676566 (and d!2059901 d!2058617)))

(assert (=> bs!1676566 (not (= lambda!365268 lambda!365100))))

(declare-fun bs!1676567 () Bool)

(assert (= bs!1676567 (and d!2059901 d!2059659)))

(assert (=> bs!1676567 (not (= lambda!365268 lambda!365239))))

(declare-fun bs!1676568 () Bool)

(assert (= bs!1676568 (and d!2059901 b!6561283)))

(assert (=> bs!1676568 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365268 lambda!365041))))

(assert (=> bs!1676568 (not (= lambda!365268 lambda!365042))))

(declare-fun bs!1676569 () Bool)

(assert (= bs!1676569 (and d!2059901 d!2058767)))

(assert (=> bs!1676569 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365268 lambda!365130))))

(declare-fun bs!1676570 () Bool)

(assert (= bs!1676570 (and d!2059901 b!6564488)))

(assert (=> bs!1676570 (not (= lambda!365268 lambda!365264))))

(declare-fun bs!1676571 () Bool)

(assert (= bs!1676571 (and d!2059901 d!2058793)))

(assert (=> bs!1676571 (not (= lambda!365268 lambda!365135))))

(declare-fun bs!1676572 () Bool)

(assert (= bs!1676572 (and d!2059901 d!2059835)))

(assert (=> bs!1676572 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365268 lambda!365259))))

(declare-fun bs!1676573 () Bool)

(assert (= bs!1676573 (and d!2059901 b!6561898)))

(assert (=> bs!1676573 (not (= lambda!365268 lambda!365111))))

(assert (=> bs!1676567 (= lambda!365268 lambda!365238)))

(declare-fun bs!1676574 () Bool)

(assert (= bs!1676574 (and d!2059901 d!2058681)))

(assert (=> bs!1676574 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365268 lambda!365116))))

(declare-fun bs!1676575 () Bool)

(assert (= bs!1676575 (and d!2059901 b!6562323)))

(assert (=> bs!1676575 (not (= lambda!365268 lambda!365140))))

(declare-fun bs!1676576 () Bool)

(assert (= bs!1676576 (and d!2059901 b!6563924)))

(assert (=> bs!1676576 (not (= lambda!365268 lambda!365232))))

(declare-fun bs!1676577 () Bool)

(assert (= bs!1676577 (and d!2059901 b!6561287)))

(assert (=> bs!1676577 (not (= lambda!365268 lambda!365047))))

(declare-fun bs!1676578 () Bool)

(assert (= bs!1676578 (and d!2059901 b!6564445)))

(assert (=> bs!1676578 (not (= lambda!365268 lambda!365255))))

(declare-fun bs!1676579 () Bool)

(assert (= bs!1676579 (and d!2059901 b!6564157)))

(assert (=> bs!1676579 (not (= lambda!365268 lambda!365241))))

(declare-fun bs!1676580 () Bool)

(assert (= bs!1676580 (and d!2059901 b!6564449)))

(assert (=> bs!1676580 (not (= lambda!365268 lambda!365254))))

(declare-fun bs!1676581 () Bool)

(assert (= bs!1676581 (and d!2059901 d!2058765)))

(assert (=> bs!1676581 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365268 lambda!365129))))

(declare-fun bs!1676582 () Bool)

(assert (= bs!1676582 (and d!2059901 b!6562327)))

(assert (=> bs!1676582 (not (= lambda!365268 lambda!365139))))

(declare-fun bs!1676583 () Bool)

(assert (= bs!1676583 (and d!2059901 b!6562195)))

(assert (=> bs!1676583 (not (= lambda!365268 lambda!365133))))

(declare-fun bs!1676584 () Bool)

(assert (= bs!1676584 (and d!2059901 d!2059791)))

(assert (=> bs!1676584 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365268 lambda!365252))))

(assert (=> bs!1676569 (not (= lambda!365268 lambda!365131))))

(declare-fun bs!1676585 () Bool)

(assert (= bs!1676585 (and d!2059901 d!2059477)))

(assert (=> bs!1676585 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365268 lambda!365225))))

(assert (=> bs!1676584 (not (= lambda!365268 lambda!365253))))

(declare-fun bs!1676586 () Bool)

(assert (= bs!1676586 (and d!2059901 b!6564340)))

(assert (=> bs!1676586 (not (= lambda!365268 lambda!365246))))

(declare-fun bs!1676587 () Bool)

(assert (= bs!1676587 (and d!2059901 b!6563928)))

(assert (=> bs!1676587 (not (= lambda!365268 lambda!365231))))

(declare-fun bs!1676588 () Bool)

(assert (= bs!1676588 (and d!2059901 b!6564344)))

(assert (=> bs!1676588 (not (= lambda!365268 lambda!365245))))

(declare-fun bs!1676589 () Bool)

(assert (= bs!1676589 (and d!2059901 d!2059855)))

(assert (=> bs!1676589 (= (= lt!2406360 (regOne!33390 r!7292)) (= lambda!365268 lambda!365261))))

(assert (=> bs!1676571 (= lambda!365268 lambda!365134)))

(assert (=> bs!1676566 (= (and (= s!2326 (_1!36721 lt!2406397)) (= lt!2406360 (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 r!7292) lt!2406358)) (= lambda!365268 lambda!365097))))

(declare-fun bs!1676590 () Bool)

(assert (= bs!1676590 (and d!2059901 b!6562199)))

(assert (=> bs!1676590 (not (= lambda!365268 lambda!365132))))

(declare-fun bs!1676591 () Bool)

(assert (= bs!1676591 (and d!2059901 b!6564492)))

(assert (=> bs!1676591 (not (= lambda!365268 lambda!365263))))

(declare-fun bs!1676592 () Bool)

(assert (= bs!1676592 (and d!2059901 b!6561902)))

(assert (=> bs!1676592 (not (= lambda!365268 lambda!365109))))

(declare-fun bs!1676593 () Bool)

(assert (= bs!1676593 (and d!2059901 b!6564153)))

(assert (=> bs!1676593 (not (= lambda!365268 lambda!365242))))

(assert (=> bs!1676585 (not (= lambda!365268 lambda!365226))))

(declare-fun bs!1676594 () Bool)

(assert (= bs!1676594 (and d!2059901 b!6562412)))

(assert (=> bs!1676594 (not (= lambda!365268 lambda!365150))))

(declare-fun bs!1676595 () Bool)

(assert (= bs!1676595 (and d!2059901 b!6562408)))

(assert (=> bs!1676595 (not (= lambda!365268 lambda!365151))))

(declare-fun bs!1676596 () Bool)

(assert (= bs!1676596 (and d!2059901 b!6563956)))

(assert (=> bs!1676596 (not (= lambda!365268 lambda!365234))))

(assert (=> bs!1676577 (= lambda!365268 lambda!365046)))

(declare-fun bs!1676597 () Bool)

(assert (= bs!1676597 (and d!2059901 b!6563952)))

(assert (=> bs!1676597 (not (= lambda!365268 lambda!365235))))

(assert (=> bs!1676565 (not (= lambda!365268 lambda!365049))))

(assert (=> d!2059901 true))

(assert (=> d!2059901 true))

(assert (=> d!2059901 true))

(assert (=> d!2059901 (= (isDefined!13033 (findConcatSeparation!2744 lt!2406360 (regTwo!33390 r!7292) Nil!65492 s!2326 s!2326)) (Exists!3509 lambda!365268))))

(assert (=> d!2059901 true))

(declare-fun _$89!2783 () Unit!159091)

(assert (=> d!2059901 (= (choose!48966 lt!2406360 (regTwo!33390 r!7292) s!2326) _$89!2783)))

(declare-fun bs!1676598 () Bool)

(assert (= bs!1676598 d!2059901))

(assert (=> bs!1676598 m!7343302))

(assert (=> bs!1676598 m!7343302))

(assert (=> bs!1676598 m!7344392))

(declare-fun m!7346810 () Bool)

(assert (=> bs!1676598 m!7346810))

(assert (=> d!2058817 d!2059901))

(assert (=> d!2058817 d!2059569))

(declare-fun d!2059903 () Bool)

(assert (=> d!2059903 (= (isDefined!13033 (findConcatSeparation!2744 lt!2406360 (regTwo!33390 r!7292) Nil!65492 s!2326 s!2326)) (not (isEmpty!37738 (findConcatSeparation!2744 lt!2406360 (regTwo!33390 r!7292) Nil!65492 s!2326 s!2326))))))

(declare-fun bs!1676599 () Bool)

(assert (= bs!1676599 d!2059903))

(assert (=> bs!1676599 m!7343302))

(declare-fun m!7346812 () Bool)

(assert (=> bs!1676599 m!7346812))

(assert (=> d!2058817 d!2059903))

(assert (=> d!2058817 d!2058791))

(declare-fun b!6564569 () Bool)

(declare-fun e!3973816 () Bool)

(declare-fun call!571150 () Bool)

(assert (=> b!6564569 (= e!3973816 call!571150)))

(declare-fun b!6564570 () Bool)

(declare-fun res!2693749 () Bool)

(declare-fun e!3973815 () Bool)

(assert (=> b!6564570 (=> (not res!2693749) (not e!3973815))))

(declare-fun call!571152 () Bool)

(assert (=> b!6564570 (= res!2693749 call!571152)))

(declare-fun e!3973818 () Bool)

(assert (=> b!6564570 (= e!3973818 e!3973815)))

(declare-fun b!6564571 () Bool)

(declare-fun e!3973821 () Bool)

(assert (=> b!6564571 (= e!3973821 e!3973818)))

(declare-fun c!1206531 () Bool)

(assert (=> b!6564571 (= c!1206531 ((_ is Union!16439) lt!2406487))))

(declare-fun bm!571145 () Bool)

(assert (=> bm!571145 (= call!571152 (validRegex!8175 (ite c!1206531 (regOne!33391 lt!2406487) (regOne!33390 lt!2406487))))))

(declare-fun b!6564572 () Bool)

(assert (=> b!6564572 (= e!3973815 call!571150)))

(declare-fun b!6564573 () Bool)

(declare-fun e!3973819 () Bool)

(assert (=> b!6564573 (= e!3973819 e!3973816)))

(declare-fun res!2693751 () Bool)

(assert (=> b!6564573 (=> (not res!2693751) (not e!3973816))))

(assert (=> b!6564573 (= res!2693751 call!571152)))

(declare-fun b!6564574 () Bool)

(declare-fun res!2693747 () Bool)

(assert (=> b!6564574 (=> res!2693747 e!3973819)))

(assert (=> b!6564574 (= res!2693747 (not ((_ is Concat!25284) lt!2406487)))))

(assert (=> b!6564574 (= e!3973818 e!3973819)))

(declare-fun b!6564575 () Bool)

(declare-fun e!3973817 () Bool)

(assert (=> b!6564575 (= e!3973821 e!3973817)))

(declare-fun res!2693748 () Bool)

(assert (=> b!6564575 (= res!2693748 (not (nullable!6432 (reg!16768 lt!2406487))))))

(assert (=> b!6564575 (=> (not res!2693748) (not e!3973817))))

(declare-fun d!2059905 () Bool)

(declare-fun res!2693750 () Bool)

(declare-fun e!3973820 () Bool)

(assert (=> d!2059905 (=> res!2693750 e!3973820)))

(assert (=> d!2059905 (= res!2693750 ((_ is ElementMatch!16439) lt!2406487))))

(assert (=> d!2059905 (= (validRegex!8175 lt!2406487) e!3973820)))

(declare-fun b!6564576 () Bool)

(declare-fun call!571151 () Bool)

(assert (=> b!6564576 (= e!3973817 call!571151)))

(declare-fun bm!571146 () Bool)

(assert (=> bm!571146 (= call!571150 call!571151)))

(declare-fun b!6564577 () Bool)

(assert (=> b!6564577 (= e!3973820 e!3973821)))

(declare-fun c!1206530 () Bool)

(assert (=> b!6564577 (= c!1206530 ((_ is Star!16439) lt!2406487))))

(declare-fun bm!571147 () Bool)

(assert (=> bm!571147 (= call!571151 (validRegex!8175 (ite c!1206530 (reg!16768 lt!2406487) (ite c!1206531 (regTwo!33391 lt!2406487) (regTwo!33390 lt!2406487)))))))

(assert (= (and d!2059905 (not res!2693750)) b!6564577))

(assert (= (and b!6564577 c!1206530) b!6564575))

(assert (= (and b!6564577 (not c!1206530)) b!6564571))

(assert (= (and b!6564575 res!2693748) b!6564576))

(assert (= (and b!6564571 c!1206531) b!6564570))

(assert (= (and b!6564571 (not c!1206531)) b!6564574))

(assert (= (and b!6564570 res!2693749) b!6564572))

(assert (= (and b!6564574 (not res!2693747)) b!6564573))

(assert (= (and b!6564573 res!2693751) b!6564569))

(assert (= (or b!6564572 b!6564569) bm!571146))

(assert (= (or b!6564570 b!6564573) bm!571145))

(assert (= (or b!6564576 bm!571146) bm!571147))

(declare-fun m!7346814 () Bool)

(assert (=> bm!571145 m!7346814))

(declare-fun m!7346816 () Bool)

(assert (=> b!6564575 m!7346816))

(declare-fun m!7346818 () Bool)

(assert (=> bm!571147 m!7346818))

(assert (=> d!2058587 d!2059905))

(declare-fun d!2059907 () Bool)

(declare-fun res!2693752 () Bool)

(declare-fun e!3973822 () Bool)

(assert (=> d!2059907 (=> res!2693752 e!3973822)))

(assert (=> d!2059907 (= res!2693752 ((_ is Nil!65493) (exprs!6323 (h!71942 zl!343))))))

(assert (=> d!2059907 (= (forall!15611 (exprs!6323 (h!71942 zl!343)) lambda!365086) e!3973822)))

(declare-fun b!6564578 () Bool)

(declare-fun e!3973823 () Bool)

(assert (=> b!6564578 (= e!3973822 e!3973823)))

(declare-fun res!2693753 () Bool)

(assert (=> b!6564578 (=> (not res!2693753) (not e!3973823))))

(assert (=> b!6564578 (= res!2693753 (dynLambda!26053 lambda!365086 (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun b!6564579 () Bool)

(assert (=> b!6564579 (= e!3973823 (forall!15611 (t!379259 (exprs!6323 (h!71942 zl!343))) lambda!365086))))

(assert (= (and d!2059907 (not res!2693752)) b!6564578))

(assert (= (and b!6564578 res!2693753) b!6564579))

(declare-fun b_lambda!248309 () Bool)

(assert (=> (not b_lambda!248309) (not b!6564578)))

(declare-fun m!7346820 () Bool)

(assert (=> b!6564578 m!7346820))

(declare-fun m!7346822 () Bool)

(assert (=> b!6564579 m!7346822))

(assert (=> d!2058587 d!2059907))

(assert (=> b!6562184 d!2059517))

(assert (=> b!6562184 d!2059519))

(assert (=> b!6562184 d!2059521))

(declare-fun b!6564580 () Bool)

(declare-fun e!3973826 () Bool)

(declare-fun lt!2406773 () Option!16330)

(assert (=> b!6564580 (= e!3973826 (not (isDefined!13033 lt!2406773)))))

(declare-fun b!6564581 () Bool)

(declare-fun res!2693758 () Bool)

(declare-fun e!3973825 () Bool)

(assert (=> b!6564581 (=> (not res!2693758) (not e!3973825))))

(assert (=> b!6564581 (= res!2693758 (matchR!8622 (regOne!33390 r!7292) (_1!36721 (get!22740 lt!2406773))))))

(declare-fun b!6564582 () Bool)

(declare-fun lt!2406772 () Unit!159091)

(declare-fun lt!2406774 () Unit!159091)

(assert (=> b!6564582 (= lt!2406772 lt!2406774)))

(assert (=> b!6564582 (= (++!14580 (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (Cons!65492 (h!71940 (t!379258 s!2326)) Nil!65492)) (t!379258 (t!379258 s!2326))) s!2326)))

(assert (=> b!6564582 (= lt!2406774 (lemmaMoveElementToOtherListKeepsConcatEq!2582 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (h!71940 (t!379258 s!2326)) (t!379258 (t!379258 s!2326)) s!2326))))

(declare-fun e!3973827 () Option!16330)

(assert (=> b!6564582 (= e!3973827 (findConcatSeparation!2744 (regOne!33390 r!7292) (regTwo!33390 r!7292) (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (Cons!65492 (h!71940 (t!379258 s!2326)) Nil!65492)) (t!379258 (t!379258 s!2326)) s!2326))))

(declare-fun b!6564583 () Bool)

(declare-fun e!3973824 () Option!16330)

(assert (=> b!6564583 (= e!3973824 e!3973827)))

(declare-fun c!1206533 () Bool)

(assert (=> b!6564583 (= c!1206533 ((_ is Nil!65492) (t!379258 s!2326)))))

(declare-fun d!2059909 () Bool)

(assert (=> d!2059909 e!3973826))

(declare-fun res!2693757 () Bool)

(assert (=> d!2059909 (=> res!2693757 e!3973826)))

(assert (=> d!2059909 (= res!2693757 e!3973825)))

(declare-fun res!2693755 () Bool)

(assert (=> d!2059909 (=> (not res!2693755) (not e!3973825))))

(assert (=> d!2059909 (= res!2693755 (isDefined!13033 lt!2406773))))

(assert (=> d!2059909 (= lt!2406773 e!3973824)))

(declare-fun c!1206532 () Bool)

(declare-fun e!3973828 () Bool)

(assert (=> d!2059909 (= c!1206532 e!3973828)))

(declare-fun res!2693754 () Bool)

(assert (=> d!2059909 (=> (not res!2693754) (not e!3973828))))

(assert (=> d!2059909 (= res!2693754 (matchR!8622 (regOne!33390 r!7292) (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492))))))

(assert (=> d!2059909 (validRegex!8175 (regOne!33390 r!7292))))

(assert (=> d!2059909 (= (findConcatSeparation!2744 (regOne!33390 r!7292) (regTwo!33390 r!7292) (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (t!379258 s!2326) s!2326) lt!2406773)))

(declare-fun b!6564584 () Bool)

(assert (=> b!6564584 (= e!3973827 None!16329)))

(declare-fun b!6564585 () Bool)

(assert (=> b!6564585 (= e!3973824 (Some!16329 (tuple2!66837 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (t!379258 s!2326))))))

(declare-fun b!6564586 () Bool)

(declare-fun res!2693756 () Bool)

(assert (=> b!6564586 (=> (not res!2693756) (not e!3973825))))

(assert (=> b!6564586 (= res!2693756 (matchR!8622 (regTwo!33390 r!7292) (_2!36721 (get!22740 lt!2406773))))))

(declare-fun b!6564587 () Bool)

(assert (=> b!6564587 (= e!3973825 (= (++!14580 (_1!36721 (get!22740 lt!2406773)) (_2!36721 (get!22740 lt!2406773))) s!2326))))

(declare-fun b!6564588 () Bool)

(assert (=> b!6564588 (= e!3973828 (matchR!8622 (regTwo!33390 r!7292) (t!379258 s!2326)))))

(assert (= (and d!2059909 res!2693754) b!6564588))

(assert (= (and d!2059909 c!1206532) b!6564585))

(assert (= (and d!2059909 (not c!1206532)) b!6564583))

(assert (= (and b!6564583 c!1206533) b!6564584))

(assert (= (and b!6564583 (not c!1206533)) b!6564582))

(assert (= (and d!2059909 res!2693755) b!6564581))

(assert (= (and b!6564581 res!2693758) b!6564586))

(assert (= (and b!6564586 res!2693756) b!6564587))

(assert (= (and d!2059909 (not res!2693757)) b!6564580))

(declare-fun m!7346824 () Bool)

(assert (=> d!2059909 m!7346824))

(assert (=> d!2059909 m!7344192))

(declare-fun m!7346826 () Bool)

(assert (=> d!2059909 m!7346826))

(assert (=> d!2059909 m!7344214))

(assert (=> b!6564588 m!7345944))

(assert (=> b!6564580 m!7346824))

(declare-fun m!7346828 () Bool)

(assert (=> b!6564581 m!7346828))

(declare-fun m!7346830 () Bool)

(assert (=> b!6564581 m!7346830))

(assert (=> b!6564586 m!7346828))

(declare-fun m!7346832 () Bool)

(assert (=> b!6564586 m!7346832))

(assert (=> b!6564582 m!7344192))

(assert (=> b!6564582 m!7345952))

(assert (=> b!6564582 m!7345952))

(assert (=> b!6564582 m!7345954))

(assert (=> b!6564582 m!7344192))

(assert (=> b!6564582 m!7345956))

(assert (=> b!6564582 m!7345952))

(declare-fun m!7346834 () Bool)

(assert (=> b!6564582 m!7346834))

(assert (=> b!6564587 m!7346828))

(declare-fun m!7346836 () Bool)

(assert (=> b!6564587 m!7346836))

(assert (=> b!6562184 d!2059909))

(assert (=> b!6562231 d!2059689))

(assert (=> b!6562231 d!2059541))

(declare-fun d!2059911 () Bool)

(assert (=> d!2059911 (= (isEmpty!37738 lt!2406390) (not ((_ is Some!16329) lt!2406390)))))

(assert (=> d!2058801 d!2059911))

(assert (=> d!2058865 d!2059503))

(assert (=> d!2058865 d!2059589))

(assert (=> bs!1675017 d!2058831))

(declare-fun bs!1676600 () Bool)

(declare-fun b!6564597 () Bool)

(assert (= bs!1676600 (and b!6564597 d!2058817)))

(declare-fun lambda!365269 () Int)

(assert (=> bs!1676600 (not (= lambda!365269 lambda!365141))))

(declare-fun bs!1676601 () Bool)

(assert (= bs!1676601 (and b!6564597 b!6561249)))

(assert (=> bs!1676601 (not (= lambda!365269 lambda!365048))))

(declare-fun bs!1676602 () Bool)

(assert (= bs!1676602 (and b!6564597 d!2058617)))

(assert (=> bs!1676602 (not (= lambda!365269 lambda!365100))))

(declare-fun bs!1676603 () Bool)

(assert (= bs!1676603 (and b!6564597 d!2059659)))

(assert (=> bs!1676603 (not (= lambda!365269 lambda!365239))))

(declare-fun bs!1676604 () Bool)

(assert (= bs!1676604 (and b!6564597 b!6561283)))

(assert (=> bs!1676604 (not (= lambda!365269 lambda!365041))))

(declare-fun bs!1676605 () Bool)

(assert (= bs!1676605 (and b!6564597 d!2058767)))

(assert (=> bs!1676605 (not (= lambda!365269 lambda!365130))))

(declare-fun bs!1676606 () Bool)

(assert (= bs!1676606 (and b!6564597 b!6564488)))

(assert (=> bs!1676606 (not (= lambda!365269 lambda!365264))))

(declare-fun bs!1676607 () Bool)

(assert (= bs!1676607 (and b!6564597 d!2058793)))

(assert (=> bs!1676607 (not (= lambda!365269 lambda!365135))))

(declare-fun bs!1676608 () Bool)

(assert (= bs!1676608 (and b!6564597 d!2059835)))

(assert (=> bs!1676608 (not (= lambda!365269 lambda!365259))))

(declare-fun bs!1676609 () Bool)

(assert (= bs!1676609 (and b!6564597 b!6561898)))

(assert (=> bs!1676609 (not (= lambda!365269 lambda!365111))))

(assert (=> bs!1676603 (not (= lambda!365269 lambda!365238))))

(declare-fun bs!1676610 () Bool)

(assert (= bs!1676610 (and b!6564597 d!2058681)))

(assert (=> bs!1676610 (not (= lambda!365269 lambda!365116))))

(declare-fun bs!1676611 () Bool)

(assert (= bs!1676611 (and b!6564597 b!6562323)))

(assert (=> bs!1676611 (not (= lambda!365269 lambda!365140))))

(declare-fun bs!1676612 () Bool)

(assert (= bs!1676612 (and b!6564597 b!6563924)))

(assert (=> bs!1676612 (not (= lambda!365269 lambda!365232))))

(declare-fun bs!1676613 () Bool)

(assert (= bs!1676613 (and b!6564597 b!6561287)))

(assert (=> bs!1676613 (not (= lambda!365269 lambda!365047))))

(declare-fun bs!1676614 () Bool)

(assert (= bs!1676614 (and b!6564597 b!6564445)))

(assert (=> bs!1676614 (not (= lambda!365269 lambda!365255))))

(declare-fun bs!1676615 () Bool)

(assert (= bs!1676615 (and b!6564597 b!6564157)))

(assert (=> bs!1676615 (= (and (= (reg!16768 (regTwo!33391 lt!2406349)) (reg!16768 (regTwo!33391 r!7292))) (= (regTwo!33391 lt!2406349) (regTwo!33391 r!7292))) (= lambda!365269 lambda!365241))))

(declare-fun bs!1676616 () Bool)

(assert (= bs!1676616 (and b!6564597 b!6564449)))

(assert (=> bs!1676616 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (reg!16768 (regTwo!33391 lt!2406349)) (reg!16768 (regOne!33391 lt!2406360))) (= (regTwo!33391 lt!2406349) (regOne!33391 lt!2406360))) (= lambda!365269 lambda!365254))))

(declare-fun bs!1676617 () Bool)

(assert (= bs!1676617 (and b!6564597 d!2058765)))

(assert (=> bs!1676617 (not (= lambda!365269 lambda!365129))))

(declare-fun bs!1676618 () Bool)

(assert (= bs!1676618 (and b!6564597 b!6562327)))

(assert (=> bs!1676618 (= (and (= (reg!16768 (regTwo!33391 lt!2406349)) (reg!16768 lt!2406396)) (= (regTwo!33391 lt!2406349) lt!2406396)) (= lambda!365269 lambda!365139))))

(declare-fun bs!1676619 () Bool)

(assert (= bs!1676619 (and b!6564597 b!6562195)))

(assert (=> bs!1676619 (not (= lambda!365269 lambda!365133))))

(declare-fun bs!1676620 () Bool)

(assert (= bs!1676620 (and b!6564597 d!2059791)))

(assert (=> bs!1676620 (not (= lambda!365269 lambda!365252))))

(assert (=> bs!1676605 (not (= lambda!365269 lambda!365131))))

(declare-fun bs!1676621 () Bool)

(assert (= bs!1676621 (and b!6564597 d!2059477)))

(assert (=> bs!1676621 (not (= lambda!365269 lambda!365225))))

(assert (=> bs!1676620 (not (= lambda!365269 lambda!365253))))

(declare-fun bs!1676622 () Bool)

(assert (= bs!1676622 (and b!6564597 b!6564340)))

(assert (=> bs!1676622 (not (= lambda!365269 lambda!365246))))

(declare-fun bs!1676623 () Bool)

(assert (= bs!1676623 (and b!6564597 b!6563928)))

(assert (=> bs!1676623 (= (and (= (reg!16768 (regTwo!33391 lt!2406349)) (reg!16768 (regOne!33391 lt!2406349))) (= (regTwo!33391 lt!2406349) (regOne!33391 lt!2406349))) (= lambda!365269 lambda!365231))))

(declare-fun bs!1676624 () Bool)

(assert (= bs!1676624 (and b!6564597 b!6564344)))

(assert (=> bs!1676624 (= (and (= (reg!16768 (regTwo!33391 lt!2406349)) (reg!16768 (regTwo!33391 lt!2406396))) (= (regTwo!33391 lt!2406349) (regTwo!33391 lt!2406396))) (= lambda!365269 lambda!365245))))

(declare-fun bs!1676625 () Bool)

(assert (= bs!1676625 (and b!6564597 d!2059901)))

(assert (=> bs!1676625 (not (= lambda!365269 lambda!365268))))

(assert (=> bs!1676604 (not (= lambda!365269 lambda!365042))))

(declare-fun bs!1676626 () Bool)

(assert (= bs!1676626 (and b!6564597 d!2059855)))

(assert (=> bs!1676626 (not (= lambda!365269 lambda!365261))))

(assert (=> bs!1676607 (not (= lambda!365269 lambda!365134))))

(assert (=> bs!1676602 (not (= lambda!365269 lambda!365097))))

(declare-fun bs!1676627 () Bool)

(assert (= bs!1676627 (and b!6564597 b!6562199)))

(assert (=> bs!1676627 (= (and (= (reg!16768 (regTwo!33391 lt!2406349)) (reg!16768 r!7292)) (= (regTwo!33391 lt!2406349) r!7292)) (= lambda!365269 lambda!365132))))

(declare-fun bs!1676628 () Bool)

(assert (= bs!1676628 (and b!6564597 b!6564492)))

(assert (=> bs!1676628 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (reg!16768 (regTwo!33391 lt!2406349)) (reg!16768 (regTwo!33391 lt!2406360))) (= (regTwo!33391 lt!2406349) (regTwo!33391 lt!2406360))) (= lambda!365269 lambda!365263))))

(declare-fun bs!1676629 () Bool)

(assert (= bs!1676629 (and b!6564597 b!6561902)))

(assert (=> bs!1676629 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (reg!16768 (regTwo!33391 lt!2406349)) (reg!16768 lt!2406360)) (= (regTwo!33391 lt!2406349) lt!2406360)) (= lambda!365269 lambda!365109))))

(declare-fun bs!1676630 () Bool)

(assert (= bs!1676630 (and b!6564597 b!6564153)))

(assert (=> bs!1676630 (not (= lambda!365269 lambda!365242))))

(assert (=> bs!1676621 (not (= lambda!365269 lambda!365226))))

(declare-fun bs!1676631 () Bool)

(assert (= bs!1676631 (and b!6564597 b!6562412)))

(assert (=> bs!1676631 (= (and (= (reg!16768 (regTwo!33391 lt!2406349)) (reg!16768 lt!2406349)) (= (regTwo!33391 lt!2406349) lt!2406349)) (= lambda!365269 lambda!365150))))

(declare-fun bs!1676632 () Bool)

(assert (= bs!1676632 (and b!6564597 b!6562408)))

(assert (=> bs!1676632 (not (= lambda!365269 lambda!365151))))

(declare-fun bs!1676633 () Bool)

(assert (= bs!1676633 (and b!6564597 b!6563956)))

(assert (=> bs!1676633 (= (and (= (reg!16768 (regTwo!33391 lt!2406349)) (reg!16768 (regOne!33391 r!7292))) (= (regTwo!33391 lt!2406349) (regOne!33391 r!7292))) (= lambda!365269 lambda!365234))))

(assert (=> bs!1676613 (not (= lambda!365269 lambda!365046))))

(declare-fun bs!1676634 () Bool)

(assert (= bs!1676634 (and b!6564597 b!6563952)))

(assert (=> bs!1676634 (not (= lambda!365269 lambda!365235))))

(assert (=> bs!1676601 (not (= lambda!365269 lambda!365049))))

(assert (=> b!6564597 true))

(assert (=> b!6564597 true))

(declare-fun bs!1676635 () Bool)

(declare-fun b!6564593 () Bool)

(assert (= bs!1676635 (and b!6564593 d!2058817)))

(declare-fun lambda!365270 () Int)

(assert (=> bs!1676635 (not (= lambda!365270 lambda!365141))))

(declare-fun bs!1676636 () Bool)

(assert (= bs!1676636 (and b!6564593 b!6561249)))

(assert (=> bs!1676636 (not (= lambda!365270 lambda!365048))))

(declare-fun bs!1676637 () Bool)

(assert (= bs!1676637 (and b!6564593 d!2058617)))

(assert (=> bs!1676637 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regTwo!33391 lt!2406349)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regTwo!33391 lt!2406349)) lt!2406358)) (= lambda!365270 lambda!365100))))

(declare-fun bs!1676638 () Bool)

(assert (= bs!1676638 (and b!6564593 d!2059659)))

(assert (=> bs!1676638 (= (and (= (regOne!33390 (regTwo!33391 lt!2406349)) lt!2406360) (= (regTwo!33390 (regTwo!33391 lt!2406349)) (regTwo!33390 r!7292))) (= lambda!365270 lambda!365239))))

(declare-fun bs!1676639 () Bool)

(assert (= bs!1676639 (and b!6564593 b!6561283)))

(assert (=> bs!1676639 (not (= lambda!365270 lambda!365041))))

(declare-fun bs!1676640 () Bool)

(assert (= bs!1676640 (and b!6564593 d!2058767)))

(assert (=> bs!1676640 (not (= lambda!365270 lambda!365130))))

(declare-fun bs!1676641 () Bool)

(assert (= bs!1676641 (and b!6564593 b!6564488)))

(assert (=> bs!1676641 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regTwo!33391 lt!2406349)) (regOne!33390 (regTwo!33391 lt!2406360))) (= (regTwo!33390 (regTwo!33391 lt!2406349)) (regTwo!33390 (regTwo!33391 lt!2406360)))) (= lambda!365270 lambda!365264))))

(declare-fun bs!1676642 () Bool)

(assert (= bs!1676642 (and b!6564593 d!2058793)))

(assert (=> bs!1676642 (= (and (= (regOne!33390 (regTwo!33391 lt!2406349)) lt!2406360) (= (regTwo!33390 (regTwo!33391 lt!2406349)) (regTwo!33390 r!7292))) (= lambda!365270 lambda!365135))))

(declare-fun bs!1676643 () Bool)

(assert (= bs!1676643 (and b!6564593 d!2059835)))

(assert (=> bs!1676643 (not (= lambda!365270 lambda!365259))))

(declare-fun bs!1676644 () Bool)

(assert (= bs!1676644 (and b!6564593 b!6561898)))

(assert (=> bs!1676644 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regTwo!33391 lt!2406349)) (regOne!33390 lt!2406360)) (= (regTwo!33390 (regTwo!33391 lt!2406349)) (regTwo!33390 lt!2406360))) (= lambda!365270 lambda!365111))))

(assert (=> bs!1676638 (not (= lambda!365270 lambda!365238))))

(declare-fun bs!1676645 () Bool)

(assert (= bs!1676645 (and b!6564593 d!2058681)))

(assert (=> bs!1676645 (not (= lambda!365270 lambda!365116))))

(declare-fun bs!1676646 () Bool)

(assert (= bs!1676646 (and b!6564593 b!6562323)))

(assert (=> bs!1676646 (= (and (= (regOne!33390 (regTwo!33391 lt!2406349)) (regOne!33390 lt!2406396)) (= (regTwo!33390 (regTwo!33391 lt!2406349)) (regTwo!33390 lt!2406396))) (= lambda!365270 lambda!365140))))

(declare-fun bs!1676647 () Bool)

(assert (= bs!1676647 (and b!6564593 b!6564597)))

(assert (=> bs!1676647 (not (= lambda!365270 lambda!365269))))

(declare-fun bs!1676648 () Bool)

(assert (= bs!1676648 (and b!6564593 b!6563924)))

(assert (=> bs!1676648 (= (and (= (regOne!33390 (regTwo!33391 lt!2406349)) (regOne!33390 (regOne!33391 lt!2406349))) (= (regTwo!33390 (regTwo!33391 lt!2406349)) (regTwo!33390 (regOne!33391 lt!2406349)))) (= lambda!365270 lambda!365232))))

(declare-fun bs!1676649 () Bool)

(assert (= bs!1676649 (and b!6564593 b!6561287)))

(assert (=> bs!1676649 (= (and (= (regOne!33390 (regTwo!33391 lt!2406349)) lt!2406360) (= (regTwo!33390 (regTwo!33391 lt!2406349)) (regTwo!33390 r!7292))) (= lambda!365270 lambda!365047))))

(declare-fun bs!1676650 () Bool)

(assert (= bs!1676650 (and b!6564593 b!6564445)))

(assert (=> bs!1676650 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regTwo!33391 lt!2406349)) (regOne!33390 (regOne!33391 lt!2406360))) (= (regTwo!33390 (regTwo!33391 lt!2406349)) (regTwo!33390 (regOne!33391 lt!2406360)))) (= lambda!365270 lambda!365255))))

(declare-fun bs!1676651 () Bool)

(assert (= bs!1676651 (and b!6564593 b!6564157)))

(assert (=> bs!1676651 (not (= lambda!365270 lambda!365241))))

(declare-fun bs!1676652 () Bool)

(assert (= bs!1676652 (and b!6564593 b!6564449)))

(assert (=> bs!1676652 (not (= lambda!365270 lambda!365254))))

(declare-fun bs!1676653 () Bool)

(assert (= bs!1676653 (and b!6564593 d!2058765)))

(assert (=> bs!1676653 (not (= lambda!365270 lambda!365129))))

(declare-fun bs!1676654 () Bool)

(assert (= bs!1676654 (and b!6564593 b!6562327)))

(assert (=> bs!1676654 (not (= lambda!365270 lambda!365139))))

(declare-fun bs!1676655 () Bool)

(assert (= bs!1676655 (and b!6564593 b!6562195)))

(assert (=> bs!1676655 (= (and (= (regOne!33390 (regTwo!33391 lt!2406349)) (regOne!33390 r!7292)) (= (regTwo!33390 (regTwo!33391 lt!2406349)) (regTwo!33390 r!7292))) (= lambda!365270 lambda!365133))))

(declare-fun bs!1676656 () Bool)

(assert (= bs!1676656 (and b!6564593 d!2059791)))

(assert (=> bs!1676656 (not (= lambda!365270 lambda!365252))))

(assert (=> bs!1676640 (= (and (= (regOne!33390 (regTwo!33391 lt!2406349)) (regOne!33390 r!7292)) (= (regTwo!33390 (regTwo!33391 lt!2406349)) (regTwo!33390 r!7292))) (= lambda!365270 lambda!365131))))

(declare-fun bs!1676657 () Bool)

(assert (= bs!1676657 (and b!6564593 d!2059477)))

(assert (=> bs!1676657 (not (= lambda!365270 lambda!365225))))

(assert (=> bs!1676656 (= (and (= (regOne!33390 (regTwo!33391 lt!2406349)) (regOne!33390 r!7292)) (= (regTwo!33390 (regTwo!33391 lt!2406349)) (regTwo!33390 r!7292))) (= lambda!365270 lambda!365253))))

(declare-fun bs!1676658 () Bool)

(assert (= bs!1676658 (and b!6564593 b!6564340)))

(assert (=> bs!1676658 (= (and (= (regOne!33390 (regTwo!33391 lt!2406349)) (regOne!33390 (regTwo!33391 lt!2406396))) (= (regTwo!33390 (regTwo!33391 lt!2406349)) (regTwo!33390 (regTwo!33391 lt!2406396)))) (= lambda!365270 lambda!365246))))

(declare-fun bs!1676659 () Bool)

(assert (= bs!1676659 (and b!6564593 b!6563928)))

(assert (=> bs!1676659 (not (= lambda!365270 lambda!365231))))

(declare-fun bs!1676660 () Bool)

(assert (= bs!1676660 (and b!6564593 b!6564344)))

(assert (=> bs!1676660 (not (= lambda!365270 lambda!365245))))

(declare-fun bs!1676661 () Bool)

(assert (= bs!1676661 (and b!6564593 d!2059901)))

(assert (=> bs!1676661 (not (= lambda!365270 lambda!365268))))

(assert (=> bs!1676639 (= (and (= (regOne!33390 (regTwo!33391 lt!2406349)) (regOne!33390 r!7292)) (= (regTwo!33390 (regTwo!33391 lt!2406349)) (regTwo!33390 r!7292))) (= lambda!365270 lambda!365042))))

(declare-fun bs!1676662 () Bool)

(assert (= bs!1676662 (and b!6564593 d!2059855)))

(assert (=> bs!1676662 (not (= lambda!365270 lambda!365261))))

(assert (=> bs!1676642 (not (= lambda!365270 lambda!365134))))

(assert (=> bs!1676637 (not (= lambda!365270 lambda!365097))))

(declare-fun bs!1676663 () Bool)

(assert (= bs!1676663 (and b!6564593 b!6562199)))

(assert (=> bs!1676663 (not (= lambda!365270 lambda!365132))))

(declare-fun bs!1676664 () Bool)

(assert (= bs!1676664 (and b!6564593 b!6564492)))

(assert (=> bs!1676664 (not (= lambda!365270 lambda!365263))))

(declare-fun bs!1676665 () Bool)

(assert (= bs!1676665 (and b!6564593 b!6561902)))

(assert (=> bs!1676665 (not (= lambda!365270 lambda!365109))))

(declare-fun bs!1676666 () Bool)

(assert (= bs!1676666 (and b!6564593 b!6564153)))

(assert (=> bs!1676666 (= (and (= (regOne!33390 (regTwo!33391 lt!2406349)) (regOne!33390 (regTwo!33391 r!7292))) (= (regTwo!33390 (regTwo!33391 lt!2406349)) (regTwo!33390 (regTwo!33391 r!7292)))) (= lambda!365270 lambda!365242))))

(assert (=> bs!1676657 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regTwo!33391 lt!2406349)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regTwo!33391 lt!2406349)) lt!2406358)) (= lambda!365270 lambda!365226))))

(declare-fun bs!1676667 () Bool)

(assert (= bs!1676667 (and b!6564593 b!6562412)))

(assert (=> bs!1676667 (not (= lambda!365270 lambda!365150))))

(declare-fun bs!1676668 () Bool)

(assert (= bs!1676668 (and b!6564593 b!6562408)))

(assert (=> bs!1676668 (= (and (= (regOne!33390 (regTwo!33391 lt!2406349)) (regOne!33390 lt!2406349)) (= (regTwo!33390 (regTwo!33391 lt!2406349)) (regTwo!33390 lt!2406349))) (= lambda!365270 lambda!365151))))

(declare-fun bs!1676669 () Bool)

(assert (= bs!1676669 (and b!6564593 b!6563956)))

(assert (=> bs!1676669 (not (= lambda!365270 lambda!365234))))

(assert (=> bs!1676649 (not (= lambda!365270 lambda!365046))))

(declare-fun bs!1676670 () Bool)

(assert (= bs!1676670 (and b!6564593 b!6563952)))

(assert (=> bs!1676670 (= (and (= (regOne!33390 (regTwo!33391 lt!2406349)) (regOne!33390 (regOne!33391 r!7292))) (= (regTwo!33390 (regTwo!33391 lt!2406349)) (regTwo!33390 (regOne!33391 r!7292)))) (= lambda!365270 lambda!365235))))

(assert (=> bs!1676636 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regTwo!33391 lt!2406349)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regTwo!33391 lt!2406349)) lt!2406358)) (= lambda!365270 lambda!365049))))

(assert (=> b!6564593 true))

(assert (=> b!6564593 true))

(declare-fun b!6564589 () Bool)

(declare-fun c!1206537 () Bool)

(assert (=> b!6564589 (= c!1206537 ((_ is ElementMatch!16439) (regTwo!33391 lt!2406349)))))

(declare-fun e!3973832 () Bool)

(declare-fun e!3973834 () Bool)

(assert (=> b!6564589 (= e!3973832 e!3973834)))

(declare-fun b!6564590 () Bool)

(declare-fun res!2693760 () Bool)

(declare-fun e!3973835 () Bool)

(assert (=> b!6564590 (=> res!2693760 e!3973835)))

(declare-fun call!571154 () Bool)

(assert (=> b!6564590 (= res!2693760 call!571154)))

(declare-fun e!3973831 () Bool)

(assert (=> b!6564590 (= e!3973831 e!3973835)))

(declare-fun b!6564591 () Bool)

(declare-fun e!3973829 () Bool)

(declare-fun e!3973830 () Bool)

(assert (=> b!6564591 (= e!3973829 e!3973830)))

(declare-fun res!2693761 () Bool)

(assert (=> b!6564591 (= res!2693761 (matchRSpec!3540 (regOne!33391 (regTwo!33391 lt!2406349)) s!2326))))

(assert (=> b!6564591 (=> res!2693761 e!3973830)))

(declare-fun b!6564592 () Bool)

(declare-fun e!3973833 () Bool)

(assert (=> b!6564592 (= e!3973833 call!571154)))

(declare-fun call!571153 () Bool)

(assert (=> b!6564593 (= e!3973831 call!571153)))

(declare-fun b!6564594 () Bool)

(assert (=> b!6564594 (= e!3973834 (= s!2326 (Cons!65492 (c!1205620 (regTwo!33391 lt!2406349)) Nil!65492)))))

(declare-fun bm!571148 () Bool)

(assert (=> bm!571148 (= call!571154 (isEmpty!37737 s!2326))))

(declare-fun b!6564595 () Bool)

(declare-fun c!1206534 () Bool)

(assert (=> b!6564595 (= c!1206534 ((_ is Union!16439) (regTwo!33391 lt!2406349)))))

(assert (=> b!6564595 (= e!3973834 e!3973829)))

(declare-fun b!6564596 () Bool)

(assert (=> b!6564596 (= e!3973829 e!3973831)))

(declare-fun c!1206535 () Bool)

(assert (=> b!6564596 (= c!1206535 ((_ is Star!16439) (regTwo!33391 lt!2406349)))))

(declare-fun d!2059913 () Bool)

(declare-fun c!1206536 () Bool)

(assert (=> d!2059913 (= c!1206536 ((_ is EmptyExpr!16439) (regTwo!33391 lt!2406349)))))

(assert (=> d!2059913 (= (matchRSpec!3540 (regTwo!33391 lt!2406349) s!2326) e!3973833)))

(assert (=> b!6564597 (= e!3973835 call!571153)))

(declare-fun b!6564598 () Bool)

(assert (=> b!6564598 (= e!3973833 e!3973832)))

(declare-fun res!2693759 () Bool)

(assert (=> b!6564598 (= res!2693759 (not ((_ is EmptyLang!16439) (regTwo!33391 lt!2406349))))))

(assert (=> b!6564598 (=> (not res!2693759) (not e!3973832))))

(declare-fun b!6564599 () Bool)

(assert (=> b!6564599 (= e!3973830 (matchRSpec!3540 (regTwo!33391 (regTwo!33391 lt!2406349)) s!2326))))

(declare-fun bm!571149 () Bool)

(assert (=> bm!571149 (= call!571153 (Exists!3509 (ite c!1206535 lambda!365269 lambda!365270)))))

(assert (= (and d!2059913 c!1206536) b!6564592))

(assert (= (and d!2059913 (not c!1206536)) b!6564598))

(assert (= (and b!6564598 res!2693759) b!6564589))

(assert (= (and b!6564589 c!1206537) b!6564594))

(assert (= (and b!6564589 (not c!1206537)) b!6564595))

(assert (= (and b!6564595 c!1206534) b!6564591))

(assert (= (and b!6564595 (not c!1206534)) b!6564596))

(assert (= (and b!6564591 (not res!2693761)) b!6564599))

(assert (= (and b!6564596 c!1206535) b!6564590))

(assert (= (and b!6564596 (not c!1206535)) b!6564593))

(assert (= (and b!6564590 (not res!2693760)) b!6564597))

(assert (= (or b!6564597 b!6564593) bm!571149))

(assert (= (or b!6564592 b!6564590) bm!571148))

(declare-fun m!7346838 () Bool)

(assert (=> b!6564591 m!7346838))

(assert (=> bm!571148 m!7343766))

(declare-fun m!7346840 () Bool)

(assert (=> b!6564599 m!7346840))

(declare-fun m!7346842 () Bool)

(assert (=> bm!571149 m!7346842))

(assert (=> b!6562414 d!2059913))

(assert (=> b!6562108 d!2058587))

(declare-fun bs!1676671 () Bool)

(declare-fun d!2059915 () Bool)

(assert (= bs!1676671 (and d!2059915 d!2058735)))

(declare-fun lambda!365271 () Int)

(assert (=> bs!1676671 (= lambda!365271 lambda!365124)))

(declare-fun bs!1676672 () Bool)

(assert (= bs!1676672 (and d!2059915 d!2058587)))

(assert (=> bs!1676672 (= lambda!365271 lambda!365086)))

(declare-fun bs!1676673 () Bool)

(assert (= bs!1676673 (and d!2059915 d!2058797)))

(assert (=> bs!1676673 (= lambda!365271 lambda!365138)))

(declare-fun bs!1676674 () Bool)

(assert (= bs!1676674 (and d!2059915 d!2058737)))

(assert (=> bs!1676674 (= lambda!365271 lambda!365127)))

(declare-fun bs!1676675 () Bool)

(assert (= bs!1676675 (and d!2059915 d!2059555)))

(assert (=> bs!1676675 (= lambda!365271 lambda!365229)))

(declare-fun bs!1676676 () Bool)

(assert (= bs!1676676 (and d!2059915 d!2058739)))

(assert (=> bs!1676676 (= lambda!365271 lambda!365128)))

(declare-fun bs!1676677 () Bool)

(assert (= bs!1676677 (and d!2059915 d!2059649)))

(assert (=> bs!1676677 (= lambda!365271 lambda!365237)))

(declare-fun bs!1676678 () Bool)

(assert (= bs!1676678 (and d!2059915 b!6561265)))

(assert (=> bs!1676678 (= lambda!365271 lambda!365045)))

(declare-fun bs!1676679 () Bool)

(assert (= bs!1676679 (and d!2059915 d!2059767)))

(assert (=> bs!1676679 (= lambda!365271 lambda!365249)))

(declare-fun bs!1676680 () Bool)

(assert (= bs!1676680 (and d!2059915 d!2059557)))

(assert (=> bs!1676680 (= lambda!365271 lambda!365230)))

(declare-fun bs!1676681 () Bool)

(assert (= bs!1676681 (and d!2059915 d!2059871)))

(assert (=> bs!1676681 (= lambda!365271 lambda!365265)))

(declare-fun bs!1676682 () Bool)

(assert (= bs!1676682 (and d!2059915 d!2058599)))

(assert (=> bs!1676682 (= lambda!365271 lambda!365092)))

(declare-fun lt!2406775 () List!65617)

(assert (=> d!2059915 (forall!15611 lt!2406775 lambda!365271)))

(declare-fun e!3973836 () List!65617)

(assert (=> d!2059915 (= lt!2406775 e!3973836)))

(declare-fun c!1206538 () Bool)

(assert (=> d!2059915 (= c!1206538 ((_ is Cons!65494) (t!379260 zl!343)))))

(assert (=> d!2059915 (= (unfocusZipperList!1860 (t!379260 zl!343)) lt!2406775)))

(declare-fun b!6564600 () Bool)

(assert (=> b!6564600 (= e!3973836 (Cons!65493 (generalisedConcat!2036 (exprs!6323 (h!71942 (t!379260 zl!343)))) (unfocusZipperList!1860 (t!379260 (t!379260 zl!343)))))))

(declare-fun b!6564601 () Bool)

(assert (=> b!6564601 (= e!3973836 Nil!65493)))

(assert (= (and d!2059915 c!1206538) b!6564600))

(assert (= (and d!2059915 (not c!1206538)) b!6564601))

(declare-fun m!7346844 () Bool)

(assert (=> d!2059915 m!7346844))

(declare-fun m!7346846 () Bool)

(assert (=> b!6564600 m!7346846))

(declare-fun m!7346848 () Bool)

(assert (=> b!6564600 m!7346848))

(assert (=> b!6562108 d!2059915))

(assert (=> bm!570752 d!2059503))

(assert (=> b!6562419 d!2059689))

(assert (=> b!6562419 d!2059541))

(assert (=> d!2058611 d!2059503))

(assert (=> d!2058807 d!2059543))

(assert (=> d!2058807 d!2059589))

(declare-fun d!2059917 () Bool)

(assert (=> d!2059917 true))

(declare-fun setRes!44815 () Bool)

(assert (=> d!2059917 setRes!44815))

(declare-fun condSetEmpty!44815 () Bool)

(declare-fun res!2693762 () (InoxSet Context!11646))

(assert (=> d!2059917 (= condSetEmpty!44815 (= res!2693762 ((as const (Array Context!11646 Bool)) false)))))

(assert (=> d!2059917 (= (choose!48971 lt!2406365 lambda!365043) res!2693762)))

(declare-fun setIsEmpty!44815 () Bool)

(assert (=> setIsEmpty!44815 setRes!44815))

(declare-fun setElem!44815 () Context!11646)

(declare-fun e!3973837 () Bool)

(declare-fun setNonEmpty!44815 () Bool)

(declare-fun tp!1812958 () Bool)

(assert (=> setNonEmpty!44815 (= setRes!44815 (and tp!1812958 (inv!84344 setElem!44815) e!3973837))))

(declare-fun setRest!44815 () (InoxSet Context!11646))

(assert (=> setNonEmpty!44815 (= res!2693762 ((_ map or) (store ((as const (Array Context!11646 Bool)) false) setElem!44815 true) setRest!44815))))

(declare-fun b!6564602 () Bool)

(declare-fun tp!1812959 () Bool)

(assert (=> b!6564602 (= e!3973837 tp!1812959)))

(assert (= (and d!2059917 condSetEmpty!44815) setIsEmpty!44815))

(assert (= (and d!2059917 (not condSetEmpty!44815)) setNonEmpty!44815))

(assert (= setNonEmpty!44815 b!6564602))

(declare-fun m!7346850 () Bool)

(assert (=> setNonEmpty!44815 m!7346850))

(assert (=> d!2058727 d!2059917))

(declare-fun b!6564603 () Bool)

(declare-fun e!3973839 () Bool)

(declare-fun call!571155 () Bool)

(assert (=> b!6564603 (= e!3973839 call!571155)))

(declare-fun b!6564604 () Bool)

(declare-fun res!2693765 () Bool)

(declare-fun e!3973838 () Bool)

(assert (=> b!6564604 (=> (not res!2693765) (not e!3973838))))

(declare-fun call!571157 () Bool)

(assert (=> b!6564604 (= res!2693765 call!571157)))

(declare-fun e!3973841 () Bool)

(assert (=> b!6564604 (= e!3973841 e!3973838)))

(declare-fun b!6564605 () Bool)

(declare-fun e!3973844 () Bool)

(assert (=> b!6564605 (= e!3973844 e!3973841)))

(declare-fun c!1206540 () Bool)

(assert (=> b!6564605 (= c!1206540 ((_ is Union!16439) lt!2406560))))

(declare-fun bm!571150 () Bool)

(assert (=> bm!571150 (= call!571157 (validRegex!8175 (ite c!1206540 (regOne!33391 lt!2406560) (regOne!33390 lt!2406560))))))

(declare-fun b!6564606 () Bool)

(assert (=> b!6564606 (= e!3973838 call!571155)))

(declare-fun b!6564607 () Bool)

(declare-fun e!3973842 () Bool)

(assert (=> b!6564607 (= e!3973842 e!3973839)))

(declare-fun res!2693767 () Bool)

(assert (=> b!6564607 (=> (not res!2693767) (not e!3973839))))

(assert (=> b!6564607 (= res!2693767 call!571157)))

(declare-fun b!6564608 () Bool)

(declare-fun res!2693763 () Bool)

(assert (=> b!6564608 (=> res!2693763 e!3973842)))

(assert (=> b!6564608 (= res!2693763 (not ((_ is Concat!25284) lt!2406560)))))

(assert (=> b!6564608 (= e!3973841 e!3973842)))

(declare-fun b!6564609 () Bool)

(declare-fun e!3973840 () Bool)

(assert (=> b!6564609 (= e!3973844 e!3973840)))

(declare-fun res!2693764 () Bool)

(assert (=> b!6564609 (= res!2693764 (not (nullable!6432 (reg!16768 lt!2406560))))))

(assert (=> b!6564609 (=> (not res!2693764) (not e!3973840))))

(declare-fun d!2059919 () Bool)

(declare-fun res!2693766 () Bool)

(declare-fun e!3973843 () Bool)

(assert (=> d!2059919 (=> res!2693766 e!3973843)))

(assert (=> d!2059919 (= res!2693766 ((_ is ElementMatch!16439) lt!2406560))))

(assert (=> d!2059919 (= (validRegex!8175 lt!2406560) e!3973843)))

(declare-fun b!6564610 () Bool)

(declare-fun call!571156 () Bool)

(assert (=> b!6564610 (= e!3973840 call!571156)))

(declare-fun bm!571151 () Bool)

(assert (=> bm!571151 (= call!571155 call!571156)))

(declare-fun b!6564611 () Bool)

(assert (=> b!6564611 (= e!3973843 e!3973844)))

(declare-fun c!1206539 () Bool)

(assert (=> b!6564611 (= c!1206539 ((_ is Star!16439) lt!2406560))))

(declare-fun bm!571152 () Bool)

(assert (=> bm!571152 (= call!571156 (validRegex!8175 (ite c!1206539 (reg!16768 lt!2406560) (ite c!1206540 (regTwo!33391 lt!2406560) (regTwo!33390 lt!2406560)))))))

(assert (= (and d!2059919 (not res!2693766)) b!6564611))

(assert (= (and b!6564611 c!1206539) b!6564609))

(assert (= (and b!6564611 (not c!1206539)) b!6564605))

(assert (= (and b!6564609 res!2693764) b!6564610))

(assert (= (and b!6564605 c!1206540) b!6564604))

(assert (= (and b!6564605 (not c!1206540)) b!6564608))

(assert (= (and b!6564604 res!2693765) b!6564606))

(assert (= (and b!6564608 (not res!2693763)) b!6564607))

(assert (= (and b!6564607 res!2693767) b!6564603))

(assert (= (or b!6564606 b!6564603) bm!571151))

(assert (= (or b!6564604 b!6564607) bm!571150))

(assert (= (or b!6564610 bm!571151) bm!571152))

(declare-fun m!7346852 () Bool)

(assert (=> bm!571150 m!7346852))

(declare-fun m!7346854 () Bool)

(assert (=> b!6564609 m!7346854))

(declare-fun m!7346856 () Bool)

(assert (=> bm!571152 m!7346856))

(assert (=> d!2058755 d!2059919))

(declare-fun bs!1676683 () Bool)

(declare-fun d!2059921 () Bool)

(assert (= bs!1676683 (and d!2059921 d!2058735)))

(declare-fun lambda!365272 () Int)

(assert (=> bs!1676683 (= lambda!365272 lambda!365124)))

(declare-fun bs!1676684 () Bool)

(assert (= bs!1676684 (and d!2059921 d!2058587)))

(assert (=> bs!1676684 (= lambda!365272 lambda!365086)))

(declare-fun bs!1676685 () Bool)

(assert (= bs!1676685 (and d!2059921 d!2059915)))

(assert (=> bs!1676685 (= lambda!365272 lambda!365271)))

(declare-fun bs!1676686 () Bool)

(assert (= bs!1676686 (and d!2059921 d!2058797)))

(assert (=> bs!1676686 (= lambda!365272 lambda!365138)))

(declare-fun bs!1676687 () Bool)

(assert (= bs!1676687 (and d!2059921 d!2058737)))

(assert (=> bs!1676687 (= lambda!365272 lambda!365127)))

(declare-fun bs!1676688 () Bool)

(assert (= bs!1676688 (and d!2059921 d!2059555)))

(assert (=> bs!1676688 (= lambda!365272 lambda!365229)))

(declare-fun bs!1676689 () Bool)

(assert (= bs!1676689 (and d!2059921 d!2058739)))

(assert (=> bs!1676689 (= lambda!365272 lambda!365128)))

(declare-fun bs!1676690 () Bool)

(assert (= bs!1676690 (and d!2059921 d!2059649)))

(assert (=> bs!1676690 (= lambda!365272 lambda!365237)))

(declare-fun bs!1676691 () Bool)

(assert (= bs!1676691 (and d!2059921 b!6561265)))

(assert (=> bs!1676691 (= lambda!365272 lambda!365045)))

(declare-fun bs!1676692 () Bool)

(assert (= bs!1676692 (and d!2059921 d!2059767)))

(assert (=> bs!1676692 (= lambda!365272 lambda!365249)))

(declare-fun bs!1676693 () Bool)

(assert (= bs!1676693 (and d!2059921 d!2059557)))

(assert (=> bs!1676693 (= lambda!365272 lambda!365230)))

(declare-fun bs!1676694 () Bool)

(assert (= bs!1676694 (and d!2059921 d!2059871)))

(assert (=> bs!1676694 (= lambda!365272 lambda!365265)))

(declare-fun bs!1676695 () Bool)

(assert (= bs!1676695 (and d!2059921 d!2058599)))

(assert (=> bs!1676695 (= lambda!365272 lambda!365092)))

(declare-fun b!6564612 () Bool)

(declare-fun e!3973850 () Regex!16439)

(assert (=> b!6564612 (= e!3973850 EmptyLang!16439)))

(declare-fun b!6564613 () Bool)

(declare-fun e!3973847 () Bool)

(declare-fun e!3973845 () Bool)

(assert (=> b!6564613 (= e!3973847 e!3973845)))

(declare-fun c!1206542 () Bool)

(assert (=> b!6564613 (= c!1206542 (isEmpty!37733 (unfocusZipperList!1860 (Cons!65494 lt!2406382 Nil!65494))))))

(declare-fun b!6564615 () Bool)

(declare-fun lt!2406776 () Regex!16439)

(assert (=> b!6564615 (= e!3973845 (isEmptyLang!1826 lt!2406776))))

(declare-fun b!6564616 () Bool)

(assert (=> b!6564616 (= e!3973850 (Union!16439 (h!71941 (unfocusZipperList!1860 (Cons!65494 lt!2406382 Nil!65494))) (generalisedUnion!2283 (t!379259 (unfocusZipperList!1860 (Cons!65494 lt!2406382 Nil!65494))))))))

(declare-fun b!6564617 () Bool)

(declare-fun e!3973848 () Bool)

(assert (=> b!6564617 (= e!3973845 e!3973848)))

(declare-fun c!1206541 () Bool)

(assert (=> b!6564617 (= c!1206541 (isEmpty!37733 (tail!12413 (unfocusZipperList!1860 (Cons!65494 lt!2406382 Nil!65494)))))))

(declare-fun b!6564618 () Bool)

(assert (=> b!6564618 (= e!3973848 (isUnion!1256 lt!2406776))))

(declare-fun b!6564619 () Bool)

(declare-fun e!3973846 () Regex!16439)

(assert (=> b!6564619 (= e!3973846 e!3973850)))

(declare-fun c!1206544 () Bool)

(assert (=> b!6564619 (= c!1206544 ((_ is Cons!65493) (unfocusZipperList!1860 (Cons!65494 lt!2406382 Nil!65494))))))

(assert (=> d!2059921 e!3973847))

(declare-fun res!2693769 () Bool)

(assert (=> d!2059921 (=> (not res!2693769) (not e!3973847))))

(assert (=> d!2059921 (= res!2693769 (validRegex!8175 lt!2406776))))

(assert (=> d!2059921 (= lt!2406776 e!3973846)))

(declare-fun c!1206543 () Bool)

(declare-fun e!3973849 () Bool)

(assert (=> d!2059921 (= c!1206543 e!3973849)))

(declare-fun res!2693768 () Bool)

(assert (=> d!2059921 (=> (not res!2693768) (not e!3973849))))

(assert (=> d!2059921 (= res!2693768 ((_ is Cons!65493) (unfocusZipperList!1860 (Cons!65494 lt!2406382 Nil!65494))))))

(assert (=> d!2059921 (forall!15611 (unfocusZipperList!1860 (Cons!65494 lt!2406382 Nil!65494)) lambda!365272)))

(assert (=> d!2059921 (= (generalisedUnion!2283 (unfocusZipperList!1860 (Cons!65494 lt!2406382 Nil!65494))) lt!2406776)))

(declare-fun b!6564614 () Bool)

(assert (=> b!6564614 (= e!3973848 (= lt!2406776 (head!13328 (unfocusZipperList!1860 (Cons!65494 lt!2406382 Nil!65494)))))))

(declare-fun b!6564620 () Bool)

(assert (=> b!6564620 (= e!3973846 (h!71941 (unfocusZipperList!1860 (Cons!65494 lt!2406382 Nil!65494))))))

(declare-fun b!6564621 () Bool)

(assert (=> b!6564621 (= e!3973849 (isEmpty!37733 (t!379259 (unfocusZipperList!1860 (Cons!65494 lt!2406382 Nil!65494)))))))

(assert (= (and d!2059921 res!2693768) b!6564621))

(assert (= (and d!2059921 c!1206543) b!6564620))

(assert (= (and d!2059921 (not c!1206543)) b!6564619))

(assert (= (and b!6564619 c!1206544) b!6564616))

(assert (= (and b!6564619 (not c!1206544)) b!6564612))

(assert (= (and d!2059921 res!2693769) b!6564613))

(assert (= (and b!6564613 c!1206542) b!6564615))

(assert (= (and b!6564613 (not c!1206542)) b!6564617))

(assert (= (and b!6564617 c!1206541) b!6564614))

(assert (= (and b!6564617 (not c!1206541)) b!6564618))

(declare-fun m!7346858 () Bool)

(assert (=> b!6564618 m!7346858))

(assert (=> b!6564613 m!7344204))

(declare-fun m!7346860 () Bool)

(assert (=> b!6564613 m!7346860))

(declare-fun m!7346862 () Bool)

(assert (=> b!6564616 m!7346862))

(declare-fun m!7346864 () Bool)

(assert (=> b!6564621 m!7346864))

(assert (=> b!6564614 m!7344204))

(declare-fun m!7346866 () Bool)

(assert (=> b!6564614 m!7346866))

(declare-fun m!7346868 () Bool)

(assert (=> d!2059921 m!7346868))

(assert (=> d!2059921 m!7344204))

(declare-fun m!7346870 () Bool)

(assert (=> d!2059921 m!7346870))

(assert (=> b!6564617 m!7344204))

(declare-fun m!7346872 () Bool)

(assert (=> b!6564617 m!7346872))

(assert (=> b!6564617 m!7346872))

(declare-fun m!7346874 () Bool)

(assert (=> b!6564617 m!7346874))

(declare-fun m!7346876 () Bool)

(assert (=> b!6564615 m!7346876))

(assert (=> d!2058755 d!2059921))

(declare-fun bs!1676696 () Bool)

(declare-fun d!2059923 () Bool)

(assert (= bs!1676696 (and d!2059923 d!2058735)))

(declare-fun lambda!365273 () Int)

(assert (=> bs!1676696 (= lambda!365273 lambda!365124)))

(declare-fun bs!1676697 () Bool)

(assert (= bs!1676697 (and d!2059923 d!2058587)))

(assert (=> bs!1676697 (= lambda!365273 lambda!365086)))

(declare-fun bs!1676698 () Bool)

(assert (= bs!1676698 (and d!2059923 d!2059915)))

(assert (=> bs!1676698 (= lambda!365273 lambda!365271)))

(declare-fun bs!1676699 () Bool)

(assert (= bs!1676699 (and d!2059923 d!2059921)))

(assert (=> bs!1676699 (= lambda!365273 lambda!365272)))

(declare-fun bs!1676700 () Bool)

(assert (= bs!1676700 (and d!2059923 d!2058797)))

(assert (=> bs!1676700 (= lambda!365273 lambda!365138)))

(declare-fun bs!1676701 () Bool)

(assert (= bs!1676701 (and d!2059923 d!2058737)))

(assert (=> bs!1676701 (= lambda!365273 lambda!365127)))

(declare-fun bs!1676702 () Bool)

(assert (= bs!1676702 (and d!2059923 d!2059555)))

(assert (=> bs!1676702 (= lambda!365273 lambda!365229)))

(declare-fun bs!1676703 () Bool)

(assert (= bs!1676703 (and d!2059923 d!2058739)))

(assert (=> bs!1676703 (= lambda!365273 lambda!365128)))

(declare-fun bs!1676704 () Bool)

(assert (= bs!1676704 (and d!2059923 d!2059649)))

(assert (=> bs!1676704 (= lambda!365273 lambda!365237)))

(declare-fun bs!1676705 () Bool)

(assert (= bs!1676705 (and d!2059923 b!6561265)))

(assert (=> bs!1676705 (= lambda!365273 lambda!365045)))

(declare-fun bs!1676706 () Bool)

(assert (= bs!1676706 (and d!2059923 d!2059767)))

(assert (=> bs!1676706 (= lambda!365273 lambda!365249)))

(declare-fun bs!1676707 () Bool)

(assert (= bs!1676707 (and d!2059923 d!2059557)))

(assert (=> bs!1676707 (= lambda!365273 lambda!365230)))

(declare-fun bs!1676708 () Bool)

(assert (= bs!1676708 (and d!2059923 d!2059871)))

(assert (=> bs!1676708 (= lambda!365273 lambda!365265)))

(declare-fun bs!1676709 () Bool)

(assert (= bs!1676709 (and d!2059923 d!2058599)))

(assert (=> bs!1676709 (= lambda!365273 lambda!365092)))

(declare-fun lt!2406777 () List!65617)

(assert (=> d!2059923 (forall!15611 lt!2406777 lambda!365273)))

(declare-fun e!3973851 () List!65617)

(assert (=> d!2059923 (= lt!2406777 e!3973851)))

(declare-fun c!1206545 () Bool)

(assert (=> d!2059923 (= c!1206545 ((_ is Cons!65494) (Cons!65494 lt!2406382 Nil!65494)))))

(assert (=> d!2059923 (= (unfocusZipperList!1860 (Cons!65494 lt!2406382 Nil!65494)) lt!2406777)))

(declare-fun b!6564622 () Bool)

(assert (=> b!6564622 (= e!3973851 (Cons!65493 (generalisedConcat!2036 (exprs!6323 (h!71942 (Cons!65494 lt!2406382 Nil!65494)))) (unfocusZipperList!1860 (t!379260 (Cons!65494 lt!2406382 Nil!65494)))))))

(declare-fun b!6564623 () Bool)

(assert (=> b!6564623 (= e!3973851 Nil!65493)))

(assert (= (and d!2059923 c!1206545) b!6564622))

(assert (= (and d!2059923 (not c!1206545)) b!6564623))

(declare-fun m!7346878 () Bool)

(assert (=> d!2059923 m!7346878))

(declare-fun m!7346880 () Bool)

(assert (=> b!6564622 m!7346880))

(declare-fun m!7346882 () Bool)

(assert (=> b!6564622 m!7346882))

(assert (=> d!2058755 d!2059923))

(declare-fun d!2059925 () Bool)

(assert (=> d!2059925 (= (nullable!6432 r!7292) (nullableFct!2358 r!7292))))

(declare-fun bs!1676710 () Bool)

(assert (= bs!1676710 d!2059925))

(declare-fun m!7346884 () Bool)

(assert (=> bs!1676710 m!7346884))

(assert (=> b!6562240 d!2059925))

(assert (=> bs!1675021 d!2058731))

(assert (=> b!6562289 d!2059833))

(assert (=> b!6562289 d!2059467))

(declare-fun b!6564624 () Bool)

(declare-fun e!3973853 () Bool)

(assert (=> b!6564624 (= e!3973853 (nullable!6432 (h!71941 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406347)))))))))

(declare-fun bm!571153 () Bool)

(declare-fun call!571158 () (InoxSet Context!11646))

(assert (=> bm!571153 (= call!571158 (derivationStepZipperDown!1687 (h!71941 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406347))))) (Context!11647 (t!379259 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406347)))))) (h!71940 s!2326)))))

(declare-fun e!3973854 () (InoxSet Context!11646))

(declare-fun b!6564625 () Bool)

(assert (=> b!6564625 (= e!3973854 ((_ map or) call!571158 (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406347)))))) (h!71940 s!2326))))))

(declare-fun d!2059927 () Bool)

(declare-fun c!1206547 () Bool)

(assert (=> d!2059927 (= c!1206547 e!3973853)))

(declare-fun res!2693770 () Bool)

(assert (=> d!2059927 (=> (not res!2693770) (not e!3973853))))

(assert (=> d!2059927 (= res!2693770 ((_ is Cons!65493) (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406347))))))))

(assert (=> d!2059927 (= (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 lt!2406347))) (h!71940 s!2326)) e!3973854)))

(declare-fun b!6564626 () Bool)

(declare-fun e!3973852 () (InoxSet Context!11646))

(assert (=> b!6564626 (= e!3973854 e!3973852)))

(declare-fun c!1206546 () Bool)

(assert (=> b!6564626 (= c!1206546 ((_ is Cons!65493) (exprs!6323 (Context!11647 (t!379259 (exprs!6323 lt!2406347))))))))

(declare-fun b!6564627 () Bool)

(assert (=> b!6564627 (= e!3973852 call!571158)))

(declare-fun b!6564628 () Bool)

(assert (=> b!6564628 (= e!3973852 ((as const (Array Context!11646 Bool)) false))))

(assert (= (and d!2059927 res!2693770) b!6564624))

(assert (= (and d!2059927 c!1206547) b!6564625))

(assert (= (and d!2059927 (not c!1206547)) b!6564626))

(assert (= (and b!6564626 c!1206546) b!6564627))

(assert (= (and b!6564626 (not c!1206546)) b!6564628))

(assert (= (or b!6564625 b!6564627) bm!571153))

(declare-fun m!7346886 () Bool)

(assert (=> b!6564624 m!7346886))

(declare-fun m!7346888 () Bool)

(assert (=> bm!571153 m!7346888))

(declare-fun m!7346890 () Bool)

(assert (=> b!6564625 m!7346890))

(assert (=> b!6562065 d!2059927))

(assert (=> b!6562306 d!2059705))

(assert (=> b!6562306 d!2059707))

(declare-fun d!2059929 () Bool)

(assert (=> d!2059929 (= (isEmpty!37733 (exprs!6323 (h!71942 zl!343))) ((_ is Nil!65493) (exprs!6323 (h!71942 zl!343))))))

(assert (=> b!6561720 d!2059929))

(assert (=> b!6562266 d!2059689))

(assert (=> b!6562266 d!2059541))

(assert (=> b!6562355 d!2059487))

(declare-fun b!6564629 () Bool)

(declare-fun e!3973857 () Bool)

(declare-fun e!3973860 () Bool)

(assert (=> b!6564629 (= e!3973857 e!3973860)))

(declare-fun res!2693777 () Bool)

(assert (=> b!6564629 (=> (not res!2693777) (not e!3973860))))

(declare-fun lt!2406778 () Bool)

(assert (=> b!6564629 (= res!2693777 (not lt!2406778))))

(declare-fun b!6564630 () Bool)

(declare-fun res!2693774 () Bool)

(declare-fun e!3973859 () Bool)

(assert (=> b!6564630 (=> res!2693774 e!3973859)))

(assert (=> b!6564630 (= res!2693774 (not (isEmpty!37737 (tail!12414 (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377))))))))

(declare-fun b!6564631 () Bool)

(declare-fun e!3973855 () Bool)

(declare-fun call!571159 () Bool)

(assert (=> b!6564631 (= e!3973855 (= lt!2406778 call!571159))))

(declare-fun b!6564633 () Bool)

(declare-fun res!2693773 () Bool)

(declare-fun e!3973858 () Bool)

(assert (=> b!6564633 (=> (not res!2693773) (not e!3973858))))

(assert (=> b!6564633 (= res!2693773 (isEmpty!37737 (tail!12414 (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377)))))))

(declare-fun b!6564634 () Bool)

(assert (=> b!6564634 (= e!3973858 (= (head!13329 (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377))) (c!1205620 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406341))))))

(declare-fun b!6564635 () Bool)

(declare-fun res!2693775 () Bool)

(assert (=> b!6564635 (=> res!2693775 e!3973857)))

(assert (=> b!6564635 (= res!2693775 e!3973858)))

(declare-fun res!2693771 () Bool)

(assert (=> b!6564635 (=> (not res!2693771) (not e!3973858))))

(assert (=> b!6564635 (= res!2693771 lt!2406778)))

(declare-fun b!6564636 () Bool)

(declare-fun e!3973861 () Bool)

(assert (=> b!6564636 (= e!3973861 (not lt!2406778))))

(declare-fun b!6564637 () Bool)

(declare-fun res!2693778 () Bool)

(assert (=> b!6564637 (=> (not res!2693778) (not e!3973858))))

(assert (=> b!6564637 (= res!2693778 (not call!571159))))

(declare-fun b!6564638 () Bool)

(assert (=> b!6564638 (= e!3973860 e!3973859)))

(declare-fun res!2693772 () Bool)

(assert (=> b!6564638 (=> res!2693772 e!3973859)))

(assert (=> b!6564638 (= res!2693772 call!571159)))

(declare-fun b!6564639 () Bool)

(declare-fun e!3973856 () Bool)

(assert (=> b!6564639 (= e!3973856 (nullable!6432 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406341)))))

(declare-fun bm!571154 () Bool)

(assert (=> bm!571154 (= call!571159 (isEmpty!37737 (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377))))))

(declare-fun b!6564640 () Bool)

(assert (=> b!6564640 (= e!3973855 e!3973861)))

(declare-fun c!1206548 () Bool)

(assert (=> b!6564640 (= c!1206548 ((_ is EmptyLang!16439) (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406341)))))

(declare-fun b!6564641 () Bool)

(declare-fun res!2693776 () Bool)

(assert (=> b!6564641 (=> res!2693776 e!3973857)))

(assert (=> b!6564641 (= res!2693776 (not ((_ is ElementMatch!16439) (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406341))))))

(assert (=> b!6564641 (= e!3973861 e!3973857)))

(declare-fun b!6564642 () Bool)

(assert (=> b!6564642 (= e!3973856 (matchR!8622 (derivativeStep!5123 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406341) (head!13329 (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377)))) (tail!12414 (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377)))))))

(declare-fun d!2059931 () Bool)

(assert (=> d!2059931 e!3973855))

(declare-fun c!1206550 () Bool)

(assert (=> d!2059931 (= c!1206550 ((_ is EmptyExpr!16439) (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406341)))))

(assert (=> d!2059931 (= lt!2406778 e!3973856)))

(declare-fun c!1206549 () Bool)

(assert (=> d!2059931 (= c!1206549 (isEmpty!37737 (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377))))))

(assert (=> d!2059931 (validRegex!8175 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406341))))

(assert (=> d!2059931 (= (matchR!8622 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406341) (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377))) lt!2406778)))

(declare-fun b!6564632 () Bool)

(assert (=> b!6564632 (= e!3973859 (not (= (head!13329 (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377))) (c!1205620 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406341)))))))

(assert (= (and d!2059931 c!1206549) b!6564639))

(assert (= (and d!2059931 (not c!1206549)) b!6564642))

(assert (= (and d!2059931 c!1206550) b!6564631))

(assert (= (and d!2059931 (not c!1206550)) b!6564640))

(assert (= (and b!6564640 c!1206548) b!6564636))

(assert (= (and b!6564640 (not c!1206548)) b!6564641))

(assert (= (and b!6564641 (not res!2693776)) b!6564635))

(assert (= (and b!6564635 res!2693771) b!6564637))

(assert (= (and b!6564637 res!2693778) b!6564633))

(assert (= (and b!6564633 res!2693773) b!6564634))

(assert (= (and b!6564635 (not res!2693775)) b!6564629))

(assert (= (and b!6564629 res!2693777) b!6564638))

(assert (= (and b!6564638 (not res!2693772)) b!6564630))

(assert (= (and b!6564630 (not res!2693774)) b!6564632))

(assert (= (or b!6564631 b!6564637 b!6564638) bm!571154))

(assert (=> bm!571154 m!7343206))

(assert (=> bm!571154 m!7346540))

(assert (=> d!2059931 m!7343206))

(assert (=> d!2059931 m!7346540))

(declare-fun m!7346892 () Bool)

(assert (=> d!2059931 m!7346892))

(assert (=> b!6564633 m!7343206))

(assert (=> b!6564633 m!7346548))

(assert (=> b!6564633 m!7346548))

(declare-fun m!7346894 () Bool)

(assert (=> b!6564633 m!7346894))

(assert (=> b!6564634 m!7343206))

(assert (=> b!6564634 m!7346544))

(assert (=> b!6564632 m!7343206))

(assert (=> b!6564632 m!7346544))

(assert (=> b!6564630 m!7343206))

(assert (=> b!6564630 m!7346548))

(assert (=> b!6564630 m!7346548))

(assert (=> b!6564630 m!7346894))

(declare-fun m!7346896 () Bool)

(assert (=> b!6564639 m!7346896))

(assert (=> b!6564642 m!7343206))

(assert (=> b!6564642 m!7346544))

(assert (=> b!6564642 m!7346544))

(declare-fun m!7346898 () Bool)

(assert (=> b!6564642 m!7346898))

(assert (=> b!6564642 m!7343206))

(assert (=> b!6564642 m!7346548))

(assert (=> b!6564642 m!7346898))

(assert (=> b!6564642 m!7346548))

(declare-fun m!7346900 () Bool)

(assert (=> b!6564642 m!7346900))

(assert (=> d!2058811 d!2059931))

(assert (=> d!2058811 d!2058751))

(declare-fun d!2059933 () Bool)

(assert (=> d!2059933 (matchR!8622 (Concat!25284 (reg!16768 (regOne!33390 r!7292)) lt!2406341) (++!14580 (_1!36721 lt!2406377) (_2!36721 lt!2406377)))))

(assert (=> d!2059933 true))

(declare-fun _$119!496 () Unit!159091)

(assert (=> d!2059933 (= (choose!48978 (reg!16768 (regOne!33390 r!7292)) lt!2406341 (_1!36721 lt!2406377) (_2!36721 lt!2406377)) _$119!496)))

(declare-fun bs!1676711 () Bool)

(assert (= bs!1676711 d!2059933))

(assert (=> bs!1676711 m!7343206))

(assert (=> bs!1676711 m!7343206))

(assert (=> bs!1676711 m!7344368))

(assert (=> d!2058811 d!2059933))

(assert (=> d!2058811 d!2058615))

(declare-fun b!6564643 () Bool)

(declare-fun e!3973863 () Bool)

(assert (=> b!6564643 (= e!3973863 (nullable!6432 (h!71941 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 (h!71942 zl!343))))))))))

(declare-fun bm!571155 () Bool)

(declare-fun call!571160 () (InoxSet Context!11646))

(assert (=> bm!571155 (= call!571160 (derivationStepZipperDown!1687 (h!71941 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 (h!71942 zl!343)))))) (Context!11647 (t!379259 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 (h!71942 zl!343))))))) (h!71940 s!2326)))))

(declare-fun b!6564644 () Bool)

(declare-fun e!3973864 () (InoxSet Context!11646))

(assert (=> b!6564644 (= e!3973864 ((_ map or) call!571160 (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 (Context!11647 (t!379259 (exprs!6323 (h!71942 zl!343))))))) (h!71940 s!2326))))))

(declare-fun d!2059935 () Bool)

(declare-fun c!1206552 () Bool)

(assert (=> d!2059935 (= c!1206552 e!3973863)))

(declare-fun res!2693779 () Bool)

(assert (=> d!2059935 (=> (not res!2693779) (not e!3973863))))

(assert (=> d!2059935 (= res!2693779 ((_ is Cons!65493) (exprs!6323 (Context!11647 (t!379259 (exprs!6323 (h!71942 zl!343)))))))))

(assert (=> d!2059935 (= (derivationStepZipperUp!1613 (Context!11647 (t!379259 (exprs!6323 (h!71942 zl!343)))) (h!71940 s!2326)) e!3973864)))

(declare-fun b!6564645 () Bool)

(declare-fun e!3973862 () (InoxSet Context!11646))

(assert (=> b!6564645 (= e!3973864 e!3973862)))

(declare-fun c!1206551 () Bool)

(assert (=> b!6564645 (= c!1206551 ((_ is Cons!65493) (exprs!6323 (Context!11647 (t!379259 (exprs!6323 (h!71942 zl!343)))))))))

(declare-fun b!6564646 () Bool)

(assert (=> b!6564646 (= e!3973862 call!571160)))

(declare-fun b!6564647 () Bool)

(assert (=> b!6564647 (= e!3973862 ((as const (Array Context!11646 Bool)) false))))

(assert (= (and d!2059935 res!2693779) b!6564643))

(assert (= (and d!2059935 c!1206552) b!6564644))

(assert (= (and d!2059935 (not c!1206552)) b!6564645))

(assert (= (and b!6564645 c!1206551) b!6564646))

(assert (= (and b!6564645 (not c!1206551)) b!6564647))

(assert (= (or b!6564644 b!6564646) bm!571155))

(declare-fun m!7346902 () Bool)

(assert (=> b!6564643 m!7346902))

(declare-fun m!7346904 () Bool)

(assert (=> bm!571155 m!7346904))

(declare-fun m!7346906 () Bool)

(assert (=> b!6564644 m!7346906))

(assert (=> b!6562393 d!2059935))

(declare-fun b!6564648 () Bool)

(declare-fun e!3973866 () Bool)

(declare-fun lt!2406780 () Option!16330)

(assert (=> b!6564648 (= e!3973866 (not (isDefined!13033 lt!2406780)))))

(declare-fun b!6564649 () Bool)

(declare-fun res!2693781 () Bool)

(declare-fun e!3973867 () Bool)

(assert (=> b!6564649 (=> (not res!2693781) (not e!3973867))))

(assert (=> b!6564649 (= res!2693781 (matchZipper!2451 lt!2406365 (_1!36721 (get!22740 lt!2406780))))))

(declare-fun b!6564650 () Bool)

(declare-fun e!3973868 () Option!16330)

(assert (=> b!6564650 (= e!3973868 (Some!16329 (tuple2!66837 Nil!65492 s!2326)))))

(declare-fun b!6564651 () Bool)

(declare-fun lt!2406781 () Unit!159091)

(declare-fun lt!2406779 () Unit!159091)

(assert (=> b!6564651 (= lt!2406781 lt!2406779)))

(assert (=> b!6564651 (= (++!14580 (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (t!379258 s!2326)) s!2326)))

(assert (=> b!6564651 (= lt!2406779 (lemmaMoveElementToOtherListKeepsConcatEq!2582 Nil!65492 (h!71940 s!2326) (t!379258 s!2326) s!2326))))

(declare-fun e!3973869 () Option!16330)

(assert (=> b!6564651 (= e!3973869 (findConcatSeparationZippers!204 lt!2406365 (store ((as const (Array Context!11646 Bool)) false) lt!2406352 true) (++!14580 Nil!65492 (Cons!65492 (h!71940 s!2326) Nil!65492)) (t!379258 s!2326) s!2326))))

(declare-fun b!6564652 () Bool)

(declare-fun e!3973865 () Bool)

(assert (=> b!6564652 (= e!3973865 (matchZipper!2451 (store ((as const (Array Context!11646 Bool)) false) lt!2406352 true) s!2326))))

(declare-fun d!2059937 () Bool)

(assert (=> d!2059937 e!3973866))

(declare-fun res!2693783 () Bool)

(assert (=> d!2059937 (=> res!2693783 e!3973866)))

(assert (=> d!2059937 (= res!2693783 e!3973867)))

(declare-fun res!2693784 () Bool)

(assert (=> d!2059937 (=> (not res!2693784) (not e!3973867))))

(assert (=> d!2059937 (= res!2693784 (isDefined!13033 lt!2406780))))

(assert (=> d!2059937 (= lt!2406780 e!3973868)))

(declare-fun c!1206553 () Bool)

(assert (=> d!2059937 (= c!1206553 e!3973865)))

(declare-fun res!2693780 () Bool)

(assert (=> d!2059937 (=> (not res!2693780) (not e!3973865))))

(assert (=> d!2059937 (= res!2693780 (matchZipper!2451 lt!2406365 Nil!65492))))

(assert (=> d!2059937 (= (++!14580 Nil!65492 s!2326) s!2326)))

(assert (=> d!2059937 (= (findConcatSeparationZippers!204 lt!2406365 (store ((as const (Array Context!11646 Bool)) false) lt!2406352 true) Nil!65492 s!2326 s!2326) lt!2406780)))

(declare-fun b!6564653 () Bool)

(assert (=> b!6564653 (= e!3973869 None!16329)))

(declare-fun b!6564654 () Bool)

(assert (=> b!6564654 (= e!3973867 (= (++!14580 (_1!36721 (get!22740 lt!2406780)) (_2!36721 (get!22740 lt!2406780))) s!2326))))

(declare-fun b!6564655 () Bool)

(declare-fun res!2693782 () Bool)

(assert (=> b!6564655 (=> (not res!2693782) (not e!3973867))))

(assert (=> b!6564655 (= res!2693782 (matchZipper!2451 (store ((as const (Array Context!11646 Bool)) false) lt!2406352 true) (_2!36721 (get!22740 lt!2406780))))))

(declare-fun b!6564656 () Bool)

(assert (=> b!6564656 (= e!3973868 e!3973869)))

(declare-fun c!1206554 () Bool)

(assert (=> b!6564656 (= c!1206554 ((_ is Nil!65492) s!2326))))

(assert (= (and d!2059937 res!2693780) b!6564652))

(assert (= (and d!2059937 c!1206553) b!6564650))

(assert (= (and d!2059937 (not c!1206553)) b!6564656))

(assert (= (and b!6564656 c!1206554) b!6564653))

(assert (= (and b!6564656 (not c!1206554)) b!6564651))

(assert (= (and d!2059937 res!2693784) b!6564649))

(assert (= (and b!6564649 res!2693781) b!6564655))

(assert (= (and b!6564655 res!2693782) b!6564654))

(assert (= (and d!2059937 (not res!2693783)) b!6564648))

(declare-fun m!7346908 () Bool)

(assert (=> b!6564655 m!7346908))

(assert (=> b!6564655 m!7343358))

(declare-fun m!7346910 () Bool)

(assert (=> b!6564655 m!7346910))

(assert (=> b!6564652 m!7343358))

(declare-fun m!7346912 () Bool)

(assert (=> b!6564652 m!7346912))

(declare-fun m!7346914 () Bool)

(assert (=> d!2059937 m!7346914))

(assert (=> d!2059937 m!7344186))

(assert (=> d!2059937 m!7344188))

(assert (=> b!6564654 m!7346908))

(declare-fun m!7346916 () Bool)

(assert (=> b!6564654 m!7346916))

(assert (=> b!6564651 m!7344192))

(assert (=> b!6564651 m!7344192))

(assert (=> b!6564651 m!7344194))

(assert (=> b!6564651 m!7344196))

(assert (=> b!6564651 m!7343358))

(assert (=> b!6564651 m!7344192))

(declare-fun m!7346918 () Bool)

(assert (=> b!6564651 m!7346918))

(assert (=> b!6564648 m!7346914))

(assert (=> b!6564649 m!7346908))

(declare-fun m!7346920 () Bool)

(assert (=> b!6564649 m!7346920))

(assert (=> d!2058749 d!2059937))

(assert (=> d!2058749 d!2058839))

(declare-fun d!2059939 () Bool)

(assert (=> d!2059939 (isDefined!13033 (findConcatSeparationZippers!204 lt!2406365 (store ((as const (Array Context!11646 Bool)) false) lt!2406352 true) Nil!65492 s!2326 s!2326))))

(assert (=> d!2059939 true))

(declare-fun _$50!479 () Unit!159091)

(assert (=> d!2059939 (= (choose!48973 lt!2406365 lt!2406352 s!2326) _$50!479)))

(declare-fun bs!1676712 () Bool)

(assert (= bs!1676712 d!2059939))

(assert (=> bs!1676712 m!7343358))

(assert (=> bs!1676712 m!7343358))

(assert (=> bs!1676712 m!7344158))

(assert (=> bs!1676712 m!7344158))

(assert (=> bs!1676712 m!7344160))

(assert (=> d!2058749 d!2059939))

(declare-fun d!2059941 () Bool)

(assert (=> d!2059941 (= (isDefined!13033 (findConcatSeparationZippers!204 lt!2406365 (store ((as const (Array Context!11646 Bool)) false) lt!2406352 true) Nil!65492 s!2326 s!2326)) (not (isEmpty!37738 (findConcatSeparationZippers!204 lt!2406365 (store ((as const (Array Context!11646 Bool)) false) lt!2406352 true) Nil!65492 s!2326 s!2326))))))

(declare-fun bs!1676713 () Bool)

(assert (= bs!1676713 d!2059941))

(assert (=> bs!1676713 m!7344158))

(declare-fun m!7346922 () Bool)

(assert (=> bs!1676713 m!7346922))

(assert (=> d!2058749 d!2059941))

(declare-fun d!2059943 () Bool)

(declare-fun c!1206555 () Bool)

(assert (=> d!2059943 (= c!1206555 (isEmpty!37737 s!2326))))

(declare-fun e!3973870 () Bool)

(assert (=> d!2059943 (= (matchZipper!2451 (appendTo!200 lt!2406365 lt!2406352) s!2326) e!3973870)))

(declare-fun b!6564657 () Bool)

(assert (=> b!6564657 (= e!3973870 (nullableZipper!2184 (appendTo!200 lt!2406365 lt!2406352)))))

(declare-fun b!6564658 () Bool)

(assert (=> b!6564658 (= e!3973870 (matchZipper!2451 (derivationStepZipper!2405 (appendTo!200 lt!2406365 lt!2406352) (head!13329 s!2326)) (tail!12414 s!2326)))))

(assert (= (and d!2059943 c!1206555) b!6564657))

(assert (= (and d!2059943 (not c!1206555)) b!6564658))

(assert (=> d!2059943 m!7343766))

(assert (=> b!6564657 m!7343292))

(declare-fun m!7346924 () Bool)

(assert (=> b!6564657 m!7346924))

(assert (=> b!6564658 m!7343770))

(assert (=> b!6564658 m!7343292))

(assert (=> b!6564658 m!7343770))

(declare-fun m!7346926 () Bool)

(assert (=> b!6564658 m!7346926))

(assert (=> b!6564658 m!7343774))

(assert (=> b!6564658 m!7346926))

(assert (=> b!6564658 m!7343774))

(declare-fun m!7346928 () Bool)

(assert (=> b!6564658 m!7346928))

(assert (=> d!2058749 d!2059943))

(assert (=> b!6562298 d!2058577))

(assert (=> b!6562420 d!2059539))

(declare-fun d!2059945 () Bool)

(declare-fun c!1206556 () Bool)

(assert (=> d!2059945 (= c!1206556 (isEmpty!37737 (_1!36721 (get!22740 lt!2406558))))))

(declare-fun e!3973871 () Bool)

(assert (=> d!2059945 (= (matchZipper!2451 lt!2406365 (_1!36721 (get!22740 lt!2406558))) e!3973871)))

(declare-fun b!6564659 () Bool)

(assert (=> b!6564659 (= e!3973871 (nullableZipper!2184 lt!2406365))))

(declare-fun b!6564660 () Bool)

(assert (=> b!6564660 (= e!3973871 (matchZipper!2451 (derivationStepZipper!2405 lt!2406365 (head!13329 (_1!36721 (get!22740 lt!2406558)))) (tail!12414 (_1!36721 (get!22740 lt!2406558)))))))

(assert (= (and d!2059945 c!1206556) b!6564659))

(assert (= (and d!2059945 (not c!1206556)) b!6564660))

(declare-fun m!7346930 () Bool)

(assert (=> d!2059945 m!7346930))

(assert (=> b!6564659 m!7344494))

(declare-fun m!7346932 () Bool)

(assert (=> b!6564660 m!7346932))

(assert (=> b!6564660 m!7346932))

(declare-fun m!7346934 () Bool)

(assert (=> b!6564660 m!7346934))

(declare-fun m!7346936 () Bool)

(assert (=> b!6564660 m!7346936))

(assert (=> b!6564660 m!7346934))

(assert (=> b!6564660 m!7346936))

(declare-fun m!7346938 () Bool)

(assert (=> b!6564660 m!7346938))

(assert (=> b!6562174 d!2059945))

(assert (=> b!6562174 d!2059527))

(assert (=> d!2058729 d!2058727))

(declare-fun d!2059947 () Bool)

(assert (=> d!2059947 (= (flatMap!1944 lt!2406365 lambda!365043) (dynLambda!26049 lambda!365043 lt!2406347))))

(assert (=> d!2059947 true))

(declare-fun _$13!3812 () Unit!159091)

(assert (=> d!2059947 (= (choose!48969 lt!2406365 lt!2406347 lambda!365043) _$13!3812)))

(declare-fun b_lambda!248311 () Bool)

(assert (=> (not b_lambda!248311) (not d!2059947)))

(declare-fun bs!1676714 () Bool)

(assert (= bs!1676714 d!2059947))

(assert (=> bs!1676714 m!7343354))

(assert (=> bs!1676714 m!7344106))

(assert (=> d!2058729 d!2059947))

(declare-fun bs!1676715 () Bool)

(declare-fun d!2059949 () Bool)

(assert (= bs!1676715 (and d!2059949 d!2058735)))

(declare-fun lambda!365274 () Int)

(assert (=> bs!1676715 (= lambda!365274 lambda!365124)))

(declare-fun bs!1676716 () Bool)

(assert (= bs!1676716 (and d!2059949 d!2058587)))

(assert (=> bs!1676716 (= lambda!365274 lambda!365086)))

(declare-fun bs!1676717 () Bool)

(assert (= bs!1676717 (and d!2059949 d!2059915)))

(assert (=> bs!1676717 (= lambda!365274 lambda!365271)))

(declare-fun bs!1676718 () Bool)

(assert (= bs!1676718 (and d!2059949 d!2059921)))

(assert (=> bs!1676718 (= lambda!365274 lambda!365272)))

(declare-fun bs!1676719 () Bool)

(assert (= bs!1676719 (and d!2059949 d!2058797)))

(assert (=> bs!1676719 (= lambda!365274 lambda!365138)))

(declare-fun bs!1676720 () Bool)

(assert (= bs!1676720 (and d!2059949 d!2058737)))

(assert (=> bs!1676720 (= lambda!365274 lambda!365127)))

(declare-fun bs!1676721 () Bool)

(assert (= bs!1676721 (and d!2059949 d!2059555)))

(assert (=> bs!1676721 (= lambda!365274 lambda!365229)))

(declare-fun bs!1676722 () Bool)

(assert (= bs!1676722 (and d!2059949 d!2058739)))

(assert (=> bs!1676722 (= lambda!365274 lambda!365128)))

(declare-fun bs!1676723 () Bool)

(assert (= bs!1676723 (and d!2059949 d!2059923)))

(assert (=> bs!1676723 (= lambda!365274 lambda!365273)))

(declare-fun bs!1676724 () Bool)

(assert (= bs!1676724 (and d!2059949 d!2059649)))

(assert (=> bs!1676724 (= lambda!365274 lambda!365237)))

(declare-fun bs!1676725 () Bool)

(assert (= bs!1676725 (and d!2059949 b!6561265)))

(assert (=> bs!1676725 (= lambda!365274 lambda!365045)))

(declare-fun bs!1676726 () Bool)

(assert (= bs!1676726 (and d!2059949 d!2059767)))

(assert (=> bs!1676726 (= lambda!365274 lambda!365249)))

(declare-fun bs!1676727 () Bool)

(assert (= bs!1676727 (and d!2059949 d!2059557)))

(assert (=> bs!1676727 (= lambda!365274 lambda!365230)))

(declare-fun bs!1676728 () Bool)

(assert (= bs!1676728 (and d!2059949 d!2059871)))

(assert (=> bs!1676728 (= lambda!365274 lambda!365265)))

(declare-fun bs!1676729 () Bool)

(assert (= bs!1676729 (and d!2059949 d!2058599)))

(assert (=> bs!1676729 (= lambda!365274 lambda!365092)))

(assert (=> d!2059949 (= (inv!84344 setElem!44796) (forall!15611 (exprs!6323 setElem!44796) lambda!365274))))

(declare-fun bs!1676730 () Bool)

(assert (= bs!1676730 d!2059949))

(declare-fun m!7346940 () Bool)

(assert (=> bs!1676730 m!7346940))

(assert (=> setNonEmpty!44796 d!2059949))

(declare-fun d!2059951 () Bool)

(assert (=> d!2059951 (= (nullable!6432 lt!2406396) (nullableFct!2358 lt!2406396))))

(declare-fun bs!1676731 () Bool)

(assert (= bs!1676731 d!2059951))

(declare-fun m!7346942 () Bool)

(assert (=> bs!1676731 m!7346942))

(assert (=> b!6562275 d!2059951))

(declare-fun b!6564661 () Bool)

(declare-fun e!3973874 () Bool)

(declare-fun e!3973877 () Bool)

(assert (=> b!6564661 (= e!3973874 e!3973877)))

(declare-fun res!2693791 () Bool)

(assert (=> b!6564661 (=> (not res!2693791) (not e!3973877))))

(declare-fun lt!2406782 () Bool)

(assert (=> b!6564661 (= res!2693791 (not lt!2406782))))

(declare-fun b!6564662 () Bool)

(declare-fun res!2693788 () Bool)

(declare-fun e!3973876 () Bool)

(assert (=> b!6564662 (=> res!2693788 e!3973876)))

(assert (=> b!6564662 (= res!2693788 (not (isEmpty!37737 (tail!12414 (tail!12414 (_1!36721 lt!2406397))))))))

(declare-fun b!6564663 () Bool)

(declare-fun e!3973872 () Bool)

(declare-fun call!571161 () Bool)

(assert (=> b!6564663 (= e!3973872 (= lt!2406782 call!571161))))

(declare-fun b!6564665 () Bool)

(declare-fun res!2693787 () Bool)

(declare-fun e!3973875 () Bool)

(assert (=> b!6564665 (=> (not res!2693787) (not e!3973875))))

(assert (=> b!6564665 (= res!2693787 (isEmpty!37737 (tail!12414 (tail!12414 (_1!36721 lt!2406397)))))))

(declare-fun b!6564666 () Bool)

(assert (=> b!6564666 (= e!3973875 (= (head!13329 (tail!12414 (_1!36721 lt!2406397))) (c!1205620 (derivativeStep!5123 lt!2406360 (head!13329 (_1!36721 lt!2406397))))))))

(declare-fun b!6564667 () Bool)

(declare-fun res!2693789 () Bool)

(assert (=> b!6564667 (=> res!2693789 e!3973874)))

(assert (=> b!6564667 (= res!2693789 e!3973875)))

(declare-fun res!2693785 () Bool)

(assert (=> b!6564667 (=> (not res!2693785) (not e!3973875))))

(assert (=> b!6564667 (= res!2693785 lt!2406782)))

(declare-fun b!6564668 () Bool)

(declare-fun e!3973878 () Bool)

(assert (=> b!6564668 (= e!3973878 (not lt!2406782))))

(declare-fun b!6564669 () Bool)

(declare-fun res!2693792 () Bool)

(assert (=> b!6564669 (=> (not res!2693792) (not e!3973875))))

(assert (=> b!6564669 (= res!2693792 (not call!571161))))

(declare-fun b!6564670 () Bool)

(assert (=> b!6564670 (= e!3973877 e!3973876)))

(declare-fun res!2693786 () Bool)

(assert (=> b!6564670 (=> res!2693786 e!3973876)))

(assert (=> b!6564670 (= res!2693786 call!571161)))

(declare-fun b!6564671 () Bool)

(declare-fun e!3973873 () Bool)

(assert (=> b!6564671 (= e!3973873 (nullable!6432 (derivativeStep!5123 lt!2406360 (head!13329 (_1!36721 lt!2406397)))))))

(declare-fun bm!571156 () Bool)

(assert (=> bm!571156 (= call!571161 (isEmpty!37737 (tail!12414 (_1!36721 lt!2406397))))))

(declare-fun b!6564672 () Bool)

(assert (=> b!6564672 (= e!3973872 e!3973878)))

(declare-fun c!1206557 () Bool)

(assert (=> b!6564672 (= c!1206557 ((_ is EmptyLang!16439) (derivativeStep!5123 lt!2406360 (head!13329 (_1!36721 lt!2406397)))))))

(declare-fun b!6564673 () Bool)

(declare-fun res!2693790 () Bool)

(assert (=> b!6564673 (=> res!2693790 e!3973874)))

(assert (=> b!6564673 (= res!2693790 (not ((_ is ElementMatch!16439) (derivativeStep!5123 lt!2406360 (head!13329 (_1!36721 lt!2406397))))))))

(assert (=> b!6564673 (= e!3973878 e!3973874)))

(declare-fun b!6564674 () Bool)

(assert (=> b!6564674 (= e!3973873 (matchR!8622 (derivativeStep!5123 (derivativeStep!5123 lt!2406360 (head!13329 (_1!36721 lt!2406397))) (head!13329 (tail!12414 (_1!36721 lt!2406397)))) (tail!12414 (tail!12414 (_1!36721 lt!2406397)))))))

(declare-fun d!2059953 () Bool)

(assert (=> d!2059953 e!3973872))

(declare-fun c!1206559 () Bool)

(assert (=> d!2059953 (= c!1206559 ((_ is EmptyExpr!16439) (derivativeStep!5123 lt!2406360 (head!13329 (_1!36721 lt!2406397)))))))

(assert (=> d!2059953 (= lt!2406782 e!3973873)))

(declare-fun c!1206558 () Bool)

(assert (=> d!2059953 (= c!1206558 (isEmpty!37737 (tail!12414 (_1!36721 lt!2406397))))))

(assert (=> d!2059953 (validRegex!8175 (derivativeStep!5123 lt!2406360 (head!13329 (_1!36721 lt!2406397))))))

(assert (=> d!2059953 (= (matchR!8622 (derivativeStep!5123 lt!2406360 (head!13329 (_1!36721 lt!2406397))) (tail!12414 (_1!36721 lt!2406397))) lt!2406782)))

(declare-fun b!6564664 () Bool)

(assert (=> b!6564664 (= e!3973876 (not (= (head!13329 (tail!12414 (_1!36721 lt!2406397))) (c!1205620 (derivativeStep!5123 lt!2406360 (head!13329 (_1!36721 lt!2406397)))))))))

(assert (= (and d!2059953 c!1206558) b!6564671))

(assert (= (and d!2059953 (not c!1206558)) b!6564674))

(assert (= (and d!2059953 c!1206559) b!6564663))

(assert (= (and d!2059953 (not c!1206559)) b!6564672))

(assert (= (and b!6564672 c!1206557) b!6564668))

(assert (= (and b!6564672 (not c!1206557)) b!6564673))

(assert (= (and b!6564673 (not res!2693790)) b!6564667))

(assert (= (and b!6564667 res!2693785) b!6564669))

(assert (= (and b!6564669 res!2693792) b!6564665))

(assert (= (and b!6564665 res!2693787) b!6564666))

(assert (= (and b!6564667 (not res!2693789)) b!6564661))

(assert (= (and b!6564661 res!2693791) b!6564670))

(assert (= (and b!6564670 (not res!2693786)) b!6564662))

(assert (= (and b!6564662 (not res!2693788)) b!6564664))

(assert (= (or b!6564663 b!6564669 b!6564670) bm!571156))

(assert (=> bm!571156 m!7344416))

(assert (=> bm!571156 m!7344418))

(assert (=> d!2059953 m!7344416))

(assert (=> d!2059953 m!7344418))

(assert (=> d!2059953 m!7344424))

(declare-fun m!7346944 () Bool)

(assert (=> d!2059953 m!7346944))

(assert (=> b!6564665 m!7344416))

(declare-fun m!7346946 () Bool)

(assert (=> b!6564665 m!7346946))

(assert (=> b!6564665 m!7346946))

(declare-fun m!7346948 () Bool)

(assert (=> b!6564665 m!7346948))

(assert (=> b!6564666 m!7344416))

(declare-fun m!7346950 () Bool)

(assert (=> b!6564666 m!7346950))

(assert (=> b!6564664 m!7344416))

(assert (=> b!6564664 m!7346950))

(assert (=> b!6564662 m!7344416))

(assert (=> b!6564662 m!7346946))

(assert (=> b!6564662 m!7346946))

(assert (=> b!6564662 m!7346948))

(assert (=> b!6564671 m!7344424))

(declare-fun m!7346952 () Bool)

(assert (=> b!6564671 m!7346952))

(assert (=> b!6564674 m!7344416))

(assert (=> b!6564674 m!7346950))

(assert (=> b!6564674 m!7344424))

(assert (=> b!6564674 m!7346950))

(declare-fun m!7346954 () Bool)

(assert (=> b!6564674 m!7346954))

(assert (=> b!6564674 m!7344416))

(assert (=> b!6564674 m!7346946))

(assert (=> b!6564674 m!7346954))

(assert (=> b!6564674 m!7346946))

(declare-fun m!7346956 () Bool)

(assert (=> b!6564674 m!7346956))

(assert (=> b!6562363 d!2059953))

(declare-fun bm!571157 () Bool)

(declare-fun call!571163 () Regex!16439)

(declare-fun call!571162 () Regex!16439)

(assert (=> bm!571157 (= call!571163 call!571162)))

(declare-fun b!6564676 () Bool)

(declare-fun call!571164 () Regex!16439)

(declare-fun e!3973882 () Regex!16439)

(assert (=> b!6564676 (= e!3973882 (Union!16439 (Concat!25284 call!571164 (regTwo!33390 lt!2406360)) call!571163))))

(declare-fun bm!571158 () Bool)

(declare-fun c!1206562 () Bool)

(assert (=> bm!571158 (= call!571164 (derivativeStep!5123 (ite c!1206562 (regOne!33391 lt!2406360) (regOne!33390 lt!2406360)) (head!13329 (_1!36721 lt!2406397))))))

(declare-fun b!6564677 () Bool)

(declare-fun e!3973883 () Regex!16439)

(assert (=> b!6564677 (= e!3973883 EmptyLang!16439)))

(declare-fun b!6564678 () Bool)

(declare-fun e!3973881 () Regex!16439)

(assert (=> b!6564678 (= e!3973881 (ite (= (head!13329 (_1!36721 lt!2406397)) (c!1205620 lt!2406360)) EmptyExpr!16439 EmptyLang!16439))))

(declare-fun b!6564679 () Bool)

(declare-fun c!1206564 () Bool)

(assert (=> b!6564679 (= c!1206564 (nullable!6432 (regOne!33390 lt!2406360)))))

(declare-fun e!3973879 () Regex!16439)

(assert (=> b!6564679 (= e!3973879 e!3973882)))

(declare-fun b!6564680 () Bool)

(assert (=> b!6564680 (= c!1206562 ((_ is Union!16439) lt!2406360))))

(declare-fun e!3973880 () Regex!16439)

(assert (=> b!6564680 (= e!3973881 e!3973880)))

(declare-fun c!1206563 () Bool)

(declare-fun call!571165 () Regex!16439)

(declare-fun bm!571159 () Bool)

(assert (=> bm!571159 (= call!571165 (derivativeStep!5123 (ite c!1206562 (regTwo!33391 lt!2406360) (ite c!1206563 (reg!16768 lt!2406360) (ite c!1206564 (regTwo!33390 lt!2406360) (regOne!33390 lt!2406360)))) (head!13329 (_1!36721 lt!2406397))))))

(declare-fun b!6564681 () Bool)

(assert (=> b!6564681 (= e!3973882 (Union!16439 (Concat!25284 call!571163 (regTwo!33390 lt!2406360)) EmptyLang!16439))))

(declare-fun b!6564675 () Bool)

(assert (=> b!6564675 (= e!3973879 (Concat!25284 call!571162 lt!2406360))))

(declare-fun d!2059955 () Bool)

(declare-fun lt!2406783 () Regex!16439)

(assert (=> d!2059955 (validRegex!8175 lt!2406783)))

(assert (=> d!2059955 (= lt!2406783 e!3973883)))

(declare-fun c!1206560 () Bool)

(assert (=> d!2059955 (= c!1206560 (or ((_ is EmptyExpr!16439) lt!2406360) ((_ is EmptyLang!16439) lt!2406360)))))

(assert (=> d!2059955 (validRegex!8175 lt!2406360)))

(assert (=> d!2059955 (= (derivativeStep!5123 lt!2406360 (head!13329 (_1!36721 lt!2406397))) lt!2406783)))

(declare-fun b!6564682 () Bool)

(assert (=> b!6564682 (= e!3973880 (Union!16439 call!571164 call!571165))))

(declare-fun b!6564683 () Bool)

(assert (=> b!6564683 (= e!3973880 e!3973879)))

(assert (=> b!6564683 (= c!1206563 ((_ is Star!16439) lt!2406360))))

(declare-fun b!6564684 () Bool)

(assert (=> b!6564684 (= e!3973883 e!3973881)))

(declare-fun c!1206561 () Bool)

(assert (=> b!6564684 (= c!1206561 ((_ is ElementMatch!16439) lt!2406360))))

(declare-fun bm!571160 () Bool)

(assert (=> bm!571160 (= call!571162 call!571165)))

(assert (= (and d!2059955 c!1206560) b!6564677))

(assert (= (and d!2059955 (not c!1206560)) b!6564684))

(assert (= (and b!6564684 c!1206561) b!6564678))

(assert (= (and b!6564684 (not c!1206561)) b!6564680))

(assert (= (and b!6564680 c!1206562) b!6564682))

(assert (= (and b!6564680 (not c!1206562)) b!6564683))

(assert (= (and b!6564683 c!1206563) b!6564675))

(assert (= (and b!6564683 (not c!1206563)) b!6564679))

(assert (= (and b!6564679 c!1206564) b!6564676))

(assert (= (and b!6564679 (not c!1206564)) b!6564681))

(assert (= (or b!6564676 b!6564681) bm!571157))

(assert (= (or b!6564675 bm!571157) bm!571160))

(assert (= (or b!6564682 bm!571160) bm!571159))

(assert (= (or b!6564682 b!6564676) bm!571158))

(assert (=> bm!571158 m!7344420))

(declare-fun m!7346958 () Bool)

(assert (=> bm!571158 m!7346958))

(declare-fun m!7346960 () Bool)

(assert (=> b!6564679 m!7346960))

(assert (=> bm!571159 m!7344420))

(declare-fun m!7346962 () Bool)

(assert (=> bm!571159 m!7346962))

(declare-fun m!7346964 () Bool)

(assert (=> d!2059955 m!7346964))

(assert (=> d!2059955 m!7343856))

(assert (=> b!6562363 d!2059955))

(assert (=> b!6562363 d!2059487))

(assert (=> b!6562363 d!2059577))

(declare-fun d!2059957 () Bool)

(assert (=> d!2059957 (= (nullable!6432 (h!71941 (exprs!6323 lt!2406386))) (nullableFct!2358 (h!71941 (exprs!6323 lt!2406386))))))

(declare-fun bs!1676732 () Bool)

(assert (= bs!1676732 d!2059957))

(declare-fun m!7346966 () Bool)

(assert (=> bs!1676732 m!7346966))

(assert (=> b!6562397 d!2059957))

(declare-fun d!2059959 () Bool)

(declare-fun c!1206565 () Bool)

(assert (=> d!2059959 (= c!1206565 (isEmpty!37737 (tail!12414 (t!379258 s!2326))))))

(declare-fun e!3973884 () Bool)

(assert (=> d!2059959 (= (matchZipper!2451 (derivationStepZipper!2405 lt!2406381 (head!13329 (t!379258 s!2326))) (tail!12414 (t!379258 s!2326))) e!3973884)))

(declare-fun b!6564685 () Bool)

(assert (=> b!6564685 (= e!3973884 (nullableZipper!2184 (derivationStepZipper!2405 lt!2406381 (head!13329 (t!379258 s!2326)))))))

(declare-fun b!6564686 () Bool)

(assert (=> b!6564686 (= e!3973884 (matchZipper!2451 (derivationStepZipper!2405 (derivationStepZipper!2405 lt!2406381 (head!13329 (t!379258 s!2326))) (head!13329 (tail!12414 (t!379258 s!2326)))) (tail!12414 (tail!12414 (t!379258 s!2326)))))))

(assert (= (and d!2059959 c!1206565) b!6564685))

(assert (= (and d!2059959 (not c!1206565)) b!6564686))

(assert (=> d!2059959 m!7343762))

(assert (=> d!2059959 m!7345894))

(assert (=> b!6564685 m!7343792))

(declare-fun m!7346968 () Bool)

(assert (=> b!6564685 m!7346968))

(assert (=> b!6564686 m!7343762))

(assert (=> b!6564686 m!7345898))

(assert (=> b!6564686 m!7343792))

(assert (=> b!6564686 m!7345898))

(declare-fun m!7346970 () Bool)

(assert (=> b!6564686 m!7346970))

(assert (=> b!6564686 m!7343762))

(assert (=> b!6564686 m!7345902))

(assert (=> b!6564686 m!7346970))

(assert (=> b!6564686 m!7345902))

(declare-fun m!7346972 () Bool)

(assert (=> b!6564686 m!7346972))

(assert (=> b!6561760 d!2059959))

(declare-fun bs!1676733 () Bool)

(declare-fun d!2059961 () Bool)

(assert (= bs!1676733 (and d!2059961 d!2059463)))

(declare-fun lambda!365275 () Int)

(assert (=> bs!1676733 (= (= (head!13329 (t!379258 s!2326)) (head!13329 (_1!36721 lt!2406377))) (= lambda!365275 lambda!365220))))

(declare-fun bs!1676734 () Bool)

(assert (= bs!1676734 (and d!2059961 d!2059511)))

(assert (=> bs!1676734 (= lambda!365275 lambda!365227)))

(declare-fun bs!1676735 () Bool)

(assert (= bs!1676735 (and d!2059961 d!2058835)))

(assert (=> bs!1676735 (= (= (head!13329 (t!379258 s!2326)) (h!71940 s!2326)) (= lambda!365275 lambda!365144))))

(declare-fun bs!1676736 () Bool)

(assert (= bs!1676736 (and d!2059961 d!2059859)))

(assert (=> bs!1676736 (= (= (head!13329 (t!379258 s!2326)) (head!13329 lt!2406375)) (= lambda!365275 lambda!365262))))

(declare-fun bs!1676737 () Bool)

(assert (= bs!1676737 (and d!2059961 d!2059735)))

(assert (=> bs!1676737 (= (= (head!13329 (t!379258 s!2326)) (head!13329 (_2!36721 lt!2406377))) (= lambda!365275 lambda!365244))))

(declare-fun bs!1676738 () Bool)

(assert (= bs!1676738 (and d!2059961 d!2059627)))

(assert (=> bs!1676738 (= (= (head!13329 (t!379258 s!2326)) (head!13329 s!2326)) (= lambda!365275 lambda!365236))))

(declare-fun bs!1676739 () Bool)

(assert (= bs!1676739 (and d!2059961 b!6561279)))

(assert (=> bs!1676739 (= (= (head!13329 (t!379258 s!2326)) (h!71940 s!2326)) (= lambda!365275 lambda!365043))))

(declare-fun bs!1676740 () Bool)

(assert (= bs!1676740 (and d!2059961 d!2059537)))

(assert (=> bs!1676740 (= (= (head!13329 (t!379258 s!2326)) (head!13329 s!2326)) (= lambda!365275 lambda!365228))))

(declare-fun bs!1676741 () Bool)

(assert (= bs!1676741 (and d!2059961 d!2059841)))

(assert (=> bs!1676741 (= lambda!365275 lambda!365260)))

(declare-fun bs!1676742 () Bool)

(assert (= bs!1676742 (and d!2059961 d!2059605)))

(assert (=> bs!1676742 (= lambda!365275 lambda!365233)))

(assert (=> d!2059961 true))

(assert (=> d!2059961 (= (derivationStepZipper!2405 lt!2406381 (head!13329 (t!379258 s!2326))) (flatMap!1944 lt!2406381 lambda!365275))))

(declare-fun bs!1676743 () Bool)

(assert (= bs!1676743 d!2059961))

(declare-fun m!7346974 () Bool)

(assert (=> bs!1676743 m!7346974))

(assert (=> b!6561760 d!2059961))

(assert (=> b!6561760 d!2059513))

(assert (=> b!6561760 d!2059515))

(declare-fun b!6564687 () Bool)

(declare-fun e!3973886 () List!65616)

(assert (=> b!6564687 (= e!3973886 (_2!36721 lt!2406377))))

(declare-fun b!6564690 () Bool)

(declare-fun e!3973885 () Bool)

(declare-fun lt!2406784 () List!65616)

(assert (=> b!6564690 (= e!3973885 (or (not (= (_2!36721 lt!2406377) Nil!65492)) (= lt!2406784 (t!379258 (_1!36721 lt!2406377)))))))

(declare-fun d!2059963 () Bool)

(assert (=> d!2059963 e!3973885))

(declare-fun res!2693793 () Bool)

(assert (=> d!2059963 (=> (not res!2693793) (not e!3973885))))

(assert (=> d!2059963 (= res!2693793 (= (content!12598 lt!2406784) ((_ map or) (content!12598 (t!379258 (_1!36721 lt!2406377))) (content!12598 (_2!36721 lt!2406377)))))))

(assert (=> d!2059963 (= lt!2406784 e!3973886)))

(declare-fun c!1206566 () Bool)

(assert (=> d!2059963 (= c!1206566 ((_ is Nil!65492) (t!379258 (_1!36721 lt!2406377))))))

(assert (=> d!2059963 (= (++!14580 (t!379258 (_1!36721 lt!2406377)) (_2!36721 lt!2406377)) lt!2406784)))

(declare-fun b!6564688 () Bool)

(assert (=> b!6564688 (= e!3973886 (Cons!65492 (h!71940 (t!379258 (_1!36721 lt!2406377))) (++!14580 (t!379258 (t!379258 (_1!36721 lt!2406377))) (_2!36721 lt!2406377))))))

(declare-fun b!6564689 () Bool)

(declare-fun res!2693794 () Bool)

(assert (=> b!6564689 (=> (not res!2693794) (not e!3973885))))

(assert (=> b!6564689 (= res!2693794 (= (size!40527 lt!2406784) (+ (size!40527 (t!379258 (_1!36721 lt!2406377))) (size!40527 (_2!36721 lt!2406377)))))))

(assert (= (and d!2059963 c!1206566) b!6564687))

(assert (= (and d!2059963 (not c!1206566)) b!6564688))

(assert (= (and d!2059963 res!2693793) b!6564689))

(assert (= (and b!6564689 res!2693794) b!6564690))

(declare-fun m!7346976 () Bool)

(assert (=> d!2059963 m!7346976))

(assert (=> d!2059963 m!7346614))

(assert (=> d!2059963 m!7344168))

(declare-fun m!7346978 () Bool)

(assert (=> b!6564688 m!7346978))

(declare-fun m!7346980 () Bool)

(assert (=> b!6564689 m!7346980))

(assert (=> b!6564689 m!7346514))

(assert (=> b!6564689 m!7344176))

(assert (=> b!6562152 d!2059963))

(assert (=> b!6562307 d!2059585))

(assert (=> d!2058605 d!2059503))

(declare-fun d!2059965 () Bool)

(assert (=> d!2059965 (= (Exists!3509 (ite c!1205931 lambda!365150 lambda!365151)) (choose!48962 (ite c!1205931 lambda!365150 lambda!365151)))))

(declare-fun bs!1676744 () Bool)

(assert (= bs!1676744 d!2059965))

(declare-fun m!7346982 () Bool)

(assert (=> bs!1676744 m!7346982))

(assert (=> bm!570775 d!2059965))

(declare-fun bs!1676745 () Bool)

(declare-fun d!2059967 () Bool)

(assert (= bs!1676745 (and d!2059967 d!2059889)))

(declare-fun lambda!365276 () Int)

(assert (=> bs!1676745 (= lambda!365276 lambda!365267)))

(declare-fun bs!1676746 () Bool)

(assert (= bs!1676746 (and d!2059967 d!2059873)))

(assert (=> bs!1676746 (= lambda!365276 lambda!365266)))

(declare-fun bs!1676747 () Bool)

(assert (= bs!1676747 (and d!2059967 d!2059773)))

(assert (=> bs!1676747 (= lambda!365276 lambda!365250)))

(declare-fun bs!1676748 () Bool)

(assert (= bs!1676748 (and d!2059967 d!2059785)))

(assert (=> bs!1676748 (= lambda!365276 lambda!365251)))

(declare-fun bs!1676749 () Bool)

(assert (= bs!1676749 (and d!2059967 d!2059453)))

(assert (=> bs!1676749 (= lambda!365276 lambda!365219)))

(declare-fun bs!1676750 () Bool)

(assert (= bs!1676750 (and d!2059967 d!2059827)))

(assert (=> bs!1676750 (= lambda!365276 lambda!365256)))

(declare-fun bs!1676751 () Bool)

(assert (= bs!1676751 (and d!2059967 d!2059713)))

(assert (=> bs!1676751 (= lambda!365276 lambda!365243)))

(declare-fun bs!1676752 () Bool)

(assert (= bs!1676752 (and d!2059967 d!2059671)))

(assert (=> bs!1676752 (= lambda!365276 lambda!365240)))

(assert (=> d!2059967 (= (nullableZipper!2184 lt!2406394) (exists!2639 lt!2406394 lambda!365276))))

(declare-fun bs!1676753 () Bool)

(assert (= bs!1676753 d!2059967))

(declare-fun m!7346984 () Bool)

(assert (=> bs!1676753 m!7346984))

(assert (=> b!6561757 d!2059967))

(declare-fun b!6564691 () Bool)

(declare-fun e!3973888 () Bool)

(declare-fun call!571166 () Bool)

(assert (=> b!6564691 (= e!3973888 call!571166)))

(declare-fun b!6564692 () Bool)

(declare-fun res!2693797 () Bool)

(declare-fun e!3973887 () Bool)

(assert (=> b!6564692 (=> (not res!2693797) (not e!3973887))))

(declare-fun call!571168 () Bool)

(assert (=> b!6564692 (= res!2693797 call!571168)))

(declare-fun e!3973890 () Bool)

(assert (=> b!6564692 (= e!3973890 e!3973887)))

(declare-fun b!6564693 () Bool)

(declare-fun e!3973893 () Bool)

(assert (=> b!6564693 (= e!3973893 e!3973890)))

(declare-fun c!1206568 () Bool)

(assert (=> b!6564693 (= c!1206568 ((_ is Union!16439) lt!2406531))))

(declare-fun bm!571161 () Bool)

(assert (=> bm!571161 (= call!571168 (validRegex!8175 (ite c!1206568 (regOne!33391 lt!2406531) (regOne!33390 lt!2406531))))))

(declare-fun b!6564694 () Bool)

(assert (=> b!6564694 (= e!3973887 call!571166)))

(declare-fun b!6564695 () Bool)

(declare-fun e!3973891 () Bool)

(assert (=> b!6564695 (= e!3973891 e!3973888)))

(declare-fun res!2693799 () Bool)

(assert (=> b!6564695 (=> (not res!2693799) (not e!3973888))))

(assert (=> b!6564695 (= res!2693799 call!571168)))

(declare-fun b!6564696 () Bool)

(declare-fun res!2693795 () Bool)

(assert (=> b!6564696 (=> res!2693795 e!3973891)))

(assert (=> b!6564696 (= res!2693795 (not ((_ is Concat!25284) lt!2406531)))))

(assert (=> b!6564696 (= e!3973890 e!3973891)))

(declare-fun b!6564697 () Bool)

(declare-fun e!3973889 () Bool)

(assert (=> b!6564697 (= e!3973893 e!3973889)))

(declare-fun res!2693796 () Bool)

(assert (=> b!6564697 (= res!2693796 (not (nullable!6432 (reg!16768 lt!2406531))))))

(assert (=> b!6564697 (=> (not res!2693796) (not e!3973889))))

(declare-fun d!2059969 () Bool)

(declare-fun res!2693798 () Bool)

(declare-fun e!3973892 () Bool)

(assert (=> d!2059969 (=> res!2693798 e!3973892)))

(assert (=> d!2059969 (= res!2693798 ((_ is ElementMatch!16439) lt!2406531))))

(assert (=> d!2059969 (= (validRegex!8175 lt!2406531) e!3973892)))

(declare-fun b!6564698 () Bool)

(declare-fun call!571167 () Bool)

(assert (=> b!6564698 (= e!3973889 call!571167)))

(declare-fun bm!571162 () Bool)

(assert (=> bm!571162 (= call!571166 call!571167)))

(declare-fun b!6564699 () Bool)

(assert (=> b!6564699 (= e!3973892 e!3973893)))

(declare-fun c!1206567 () Bool)

(assert (=> b!6564699 (= c!1206567 ((_ is Star!16439) lt!2406531))))

(declare-fun bm!571163 () Bool)

(assert (=> bm!571163 (= call!571167 (validRegex!8175 (ite c!1206567 (reg!16768 lt!2406531) (ite c!1206568 (regTwo!33391 lt!2406531) (regTwo!33390 lt!2406531)))))))

(assert (= (and d!2059969 (not res!2693798)) b!6564699))

(assert (= (and b!6564699 c!1206567) b!6564697))

(assert (= (and b!6564699 (not c!1206567)) b!6564693))

(assert (= (and b!6564697 res!2693796) b!6564698))

(assert (= (and b!6564693 c!1206568) b!6564692))

(assert (= (and b!6564693 (not c!1206568)) b!6564696))

(assert (= (and b!6564692 res!2693797) b!6564694))

(assert (= (and b!6564696 (not res!2693795)) b!6564695))

(assert (= (and b!6564695 res!2693799) b!6564691))

(assert (= (or b!6564694 b!6564691) bm!571162))

(assert (= (or b!6564692 b!6564695) bm!571161))

(assert (= (or b!6564698 bm!571162) bm!571163))

(declare-fun m!7346986 () Bool)

(assert (=> bm!571161 m!7346986))

(declare-fun m!7346988 () Bool)

(assert (=> b!6564697 m!7346988))

(declare-fun m!7346990 () Bool)

(assert (=> bm!571163 m!7346990))

(assert (=> d!2058709 d!2059969))

(declare-fun bs!1676754 () Bool)

(declare-fun d!2059971 () Bool)

(assert (= bs!1676754 (and d!2059971 d!2058735)))

(declare-fun lambda!365277 () Int)

(assert (=> bs!1676754 (= lambda!365277 lambda!365124)))

(declare-fun bs!1676755 () Bool)

(assert (= bs!1676755 (and d!2059971 d!2058587)))

(assert (=> bs!1676755 (= lambda!365277 lambda!365086)))

(declare-fun bs!1676756 () Bool)

(assert (= bs!1676756 (and d!2059971 d!2059921)))

(assert (=> bs!1676756 (= lambda!365277 lambda!365272)))

(declare-fun bs!1676757 () Bool)

(assert (= bs!1676757 (and d!2059971 d!2058797)))

(assert (=> bs!1676757 (= lambda!365277 lambda!365138)))

(declare-fun bs!1676758 () Bool)

(assert (= bs!1676758 (and d!2059971 d!2058737)))

(assert (=> bs!1676758 (= lambda!365277 lambda!365127)))

(declare-fun bs!1676759 () Bool)

(assert (= bs!1676759 (and d!2059971 d!2059555)))

(assert (=> bs!1676759 (= lambda!365277 lambda!365229)))

(declare-fun bs!1676760 () Bool)

(assert (= bs!1676760 (and d!2059971 d!2058739)))

(assert (=> bs!1676760 (= lambda!365277 lambda!365128)))

(declare-fun bs!1676761 () Bool)

(assert (= bs!1676761 (and d!2059971 d!2059923)))

(assert (=> bs!1676761 (= lambda!365277 lambda!365273)))

(declare-fun bs!1676762 () Bool)

(assert (= bs!1676762 (and d!2059971 d!2059649)))

(assert (=> bs!1676762 (= lambda!365277 lambda!365237)))

(declare-fun bs!1676763 () Bool)

(assert (= bs!1676763 (and d!2059971 b!6561265)))

(assert (=> bs!1676763 (= lambda!365277 lambda!365045)))

(declare-fun bs!1676764 () Bool)

(assert (= bs!1676764 (and d!2059971 d!2059767)))

(assert (=> bs!1676764 (= lambda!365277 lambda!365249)))

(declare-fun bs!1676765 () Bool)

(assert (= bs!1676765 (and d!2059971 d!2059557)))

(assert (=> bs!1676765 (= lambda!365277 lambda!365230)))

(declare-fun bs!1676766 () Bool)

(assert (= bs!1676766 (and d!2059971 d!2059871)))

(assert (=> bs!1676766 (= lambda!365277 lambda!365265)))

(declare-fun bs!1676767 () Bool)

(assert (= bs!1676767 (and d!2059971 d!2058599)))

(assert (=> bs!1676767 (= lambda!365277 lambda!365092)))

(declare-fun bs!1676768 () Bool)

(assert (= bs!1676768 (and d!2059971 d!2059915)))

(assert (=> bs!1676768 (= lambda!365277 lambda!365271)))

(declare-fun bs!1676769 () Bool)

(assert (= bs!1676769 (and d!2059971 d!2059949)))

(assert (=> bs!1676769 (= lambda!365277 lambda!365274)))

(declare-fun b!6564700 () Bool)

(declare-fun e!3973899 () Regex!16439)

(assert (=> b!6564700 (= e!3973899 EmptyLang!16439)))

(declare-fun b!6564701 () Bool)

(declare-fun e!3973896 () Bool)

(declare-fun e!3973894 () Bool)

(assert (=> b!6564701 (= e!3973896 e!3973894)))

(declare-fun c!1206570 () Bool)

(assert (=> b!6564701 (= c!1206570 (isEmpty!37733 (unfocusZipperList!1860 lt!2406393)))))

(declare-fun b!6564703 () Bool)

(declare-fun lt!2406785 () Regex!16439)

(assert (=> b!6564703 (= e!3973894 (isEmptyLang!1826 lt!2406785))))

(declare-fun b!6564704 () Bool)

(assert (=> b!6564704 (= e!3973899 (Union!16439 (h!71941 (unfocusZipperList!1860 lt!2406393)) (generalisedUnion!2283 (t!379259 (unfocusZipperList!1860 lt!2406393)))))))

(declare-fun b!6564705 () Bool)

(declare-fun e!3973897 () Bool)

(assert (=> b!6564705 (= e!3973894 e!3973897)))

(declare-fun c!1206569 () Bool)

(assert (=> b!6564705 (= c!1206569 (isEmpty!37733 (tail!12413 (unfocusZipperList!1860 lt!2406393))))))

(declare-fun b!6564706 () Bool)

(assert (=> b!6564706 (= e!3973897 (isUnion!1256 lt!2406785))))

(declare-fun b!6564707 () Bool)

(declare-fun e!3973895 () Regex!16439)

(assert (=> b!6564707 (= e!3973895 e!3973899)))

(declare-fun c!1206572 () Bool)

(assert (=> b!6564707 (= c!1206572 ((_ is Cons!65493) (unfocusZipperList!1860 lt!2406393)))))

(assert (=> d!2059971 e!3973896))

(declare-fun res!2693801 () Bool)

(assert (=> d!2059971 (=> (not res!2693801) (not e!3973896))))

(assert (=> d!2059971 (= res!2693801 (validRegex!8175 lt!2406785))))

(assert (=> d!2059971 (= lt!2406785 e!3973895)))

(declare-fun c!1206571 () Bool)

(declare-fun e!3973898 () Bool)

(assert (=> d!2059971 (= c!1206571 e!3973898)))

(declare-fun res!2693800 () Bool)

(assert (=> d!2059971 (=> (not res!2693800) (not e!3973898))))

(assert (=> d!2059971 (= res!2693800 ((_ is Cons!65493) (unfocusZipperList!1860 lt!2406393)))))

(assert (=> d!2059971 (forall!15611 (unfocusZipperList!1860 lt!2406393) lambda!365277)))

(assert (=> d!2059971 (= (generalisedUnion!2283 (unfocusZipperList!1860 lt!2406393)) lt!2406785)))

(declare-fun b!6564702 () Bool)

(assert (=> b!6564702 (= e!3973897 (= lt!2406785 (head!13328 (unfocusZipperList!1860 lt!2406393))))))

(declare-fun b!6564708 () Bool)

(assert (=> b!6564708 (= e!3973895 (h!71941 (unfocusZipperList!1860 lt!2406393)))))

(declare-fun b!6564709 () Bool)

(assert (=> b!6564709 (= e!3973898 (isEmpty!37733 (t!379259 (unfocusZipperList!1860 lt!2406393))))))

(assert (= (and d!2059971 res!2693800) b!6564709))

(assert (= (and d!2059971 c!1206571) b!6564708))

(assert (= (and d!2059971 (not c!1206571)) b!6564707))

(assert (= (and b!6564707 c!1206572) b!6564704))

(assert (= (and b!6564707 (not c!1206572)) b!6564700))

(assert (= (and d!2059971 res!2693801) b!6564701))

(assert (= (and b!6564701 c!1206570) b!6564703))

(assert (= (and b!6564701 (not c!1206570)) b!6564705))

(assert (= (and b!6564705 c!1206569) b!6564702))

(assert (= (and b!6564705 (not c!1206569)) b!6564706))

(declare-fun m!7346992 () Bool)

(assert (=> b!6564706 m!7346992))

(assert (=> b!6564701 m!7344076))

(declare-fun m!7346994 () Bool)

(assert (=> b!6564701 m!7346994))

(declare-fun m!7346996 () Bool)

(assert (=> b!6564704 m!7346996))

(declare-fun m!7346998 () Bool)

(assert (=> b!6564709 m!7346998))

(assert (=> b!6564702 m!7344076))

(declare-fun m!7347000 () Bool)

(assert (=> b!6564702 m!7347000))

(declare-fun m!7347002 () Bool)

(assert (=> d!2059971 m!7347002))

(assert (=> d!2059971 m!7344076))

(declare-fun m!7347004 () Bool)

(assert (=> d!2059971 m!7347004))

(assert (=> b!6564705 m!7344076))

(declare-fun m!7347006 () Bool)

(assert (=> b!6564705 m!7347006))

(assert (=> b!6564705 m!7347006))

(declare-fun m!7347008 () Bool)

(assert (=> b!6564705 m!7347008))

(declare-fun m!7347010 () Bool)

(assert (=> b!6564703 m!7347010))

(assert (=> d!2058709 d!2059971))

(declare-fun bs!1676770 () Bool)

(declare-fun d!2059973 () Bool)

(assert (= bs!1676770 (and d!2059973 d!2058735)))

(declare-fun lambda!365278 () Int)

(assert (=> bs!1676770 (= lambda!365278 lambda!365124)))

(declare-fun bs!1676771 () Bool)

(assert (= bs!1676771 (and d!2059973 d!2058587)))

(assert (=> bs!1676771 (= lambda!365278 lambda!365086)))

(declare-fun bs!1676772 () Bool)

(assert (= bs!1676772 (and d!2059973 d!2059921)))

(assert (=> bs!1676772 (= lambda!365278 lambda!365272)))

(declare-fun bs!1676773 () Bool)

(assert (= bs!1676773 (and d!2059973 d!2058797)))

(assert (=> bs!1676773 (= lambda!365278 lambda!365138)))

(declare-fun bs!1676774 () Bool)

(assert (= bs!1676774 (and d!2059973 d!2059555)))

(assert (=> bs!1676774 (= lambda!365278 lambda!365229)))

(declare-fun bs!1676775 () Bool)

(assert (= bs!1676775 (and d!2059973 d!2058739)))

(assert (=> bs!1676775 (= lambda!365278 lambda!365128)))

(declare-fun bs!1676776 () Bool)

(assert (= bs!1676776 (and d!2059973 d!2059923)))

(assert (=> bs!1676776 (= lambda!365278 lambda!365273)))

(declare-fun bs!1676777 () Bool)

(assert (= bs!1676777 (and d!2059973 d!2059649)))

(assert (=> bs!1676777 (= lambda!365278 lambda!365237)))

(declare-fun bs!1676778 () Bool)

(assert (= bs!1676778 (and d!2059973 b!6561265)))

(assert (=> bs!1676778 (= lambda!365278 lambda!365045)))

(declare-fun bs!1676779 () Bool)

(assert (= bs!1676779 (and d!2059973 d!2059767)))

(assert (=> bs!1676779 (= lambda!365278 lambda!365249)))

(declare-fun bs!1676780 () Bool)

(assert (= bs!1676780 (and d!2059973 d!2059557)))

(assert (=> bs!1676780 (= lambda!365278 lambda!365230)))

(declare-fun bs!1676781 () Bool)

(assert (= bs!1676781 (and d!2059973 d!2059871)))

(assert (=> bs!1676781 (= lambda!365278 lambda!365265)))

(declare-fun bs!1676782 () Bool)

(assert (= bs!1676782 (and d!2059973 d!2058599)))

(assert (=> bs!1676782 (= lambda!365278 lambda!365092)))

(declare-fun bs!1676783 () Bool)

(assert (= bs!1676783 (and d!2059973 d!2059915)))

(assert (=> bs!1676783 (= lambda!365278 lambda!365271)))

(declare-fun bs!1676784 () Bool)

(assert (= bs!1676784 (and d!2059973 d!2059949)))

(assert (=> bs!1676784 (= lambda!365278 lambda!365274)))

(declare-fun bs!1676785 () Bool)

(assert (= bs!1676785 (and d!2059973 d!2059971)))

(assert (=> bs!1676785 (= lambda!365278 lambda!365277)))

(declare-fun bs!1676786 () Bool)

(assert (= bs!1676786 (and d!2059973 d!2058737)))

(assert (=> bs!1676786 (= lambda!365278 lambda!365127)))

(declare-fun lt!2406786 () List!65617)

(assert (=> d!2059973 (forall!15611 lt!2406786 lambda!365278)))

(declare-fun e!3973900 () List!65617)

(assert (=> d!2059973 (= lt!2406786 e!3973900)))

(declare-fun c!1206573 () Bool)

(assert (=> d!2059973 (= c!1206573 ((_ is Cons!65494) lt!2406393))))

(assert (=> d!2059973 (= (unfocusZipperList!1860 lt!2406393) lt!2406786)))

(declare-fun b!6564710 () Bool)

(assert (=> b!6564710 (= e!3973900 (Cons!65493 (generalisedConcat!2036 (exprs!6323 (h!71942 lt!2406393))) (unfocusZipperList!1860 (t!379260 lt!2406393))))))

(declare-fun b!6564711 () Bool)

(assert (=> b!6564711 (= e!3973900 Nil!65493)))

(assert (= (and d!2059973 c!1206573) b!6564710))

(assert (= (and d!2059973 (not c!1206573)) b!6564711))

(declare-fun m!7347012 () Bool)

(assert (=> d!2059973 m!7347012))

(declare-fun m!7347014 () Bool)

(assert (=> b!6564710 m!7347014))

(declare-fun m!7347016 () Bool)

(assert (=> b!6564710 m!7347016))

(assert (=> d!2058709 d!2059973))

(declare-fun d!2059975 () Bool)

(assert (=> d!2059975 (= (nullable!6432 (h!71941 (exprs!6323 lt!2406382))) (nullableFct!2358 (h!71941 (exprs!6323 lt!2406382))))))

(declare-fun bs!1676787 () Bool)

(assert (= bs!1676787 d!2059975))

(declare-fun m!7347018 () Bool)

(assert (=> bs!1676787 m!7347018))

(assert (=> b!6562367 d!2059975))

(declare-fun d!2059977 () Bool)

(assert (=> d!2059977 (= (isEmpty!37733 (t!379259 (unfocusZipperList!1860 zl!343))) ((_ is Nil!65493) (t!379259 (unfocusZipperList!1860 zl!343))))))

(assert (=> b!6562103 d!2059977))

(declare-fun b!6564712 () Bool)

(declare-fun e!3973902 () Bool)

(declare-fun call!571169 () Bool)

(assert (=> b!6564712 (= e!3973902 call!571169)))

(declare-fun b!6564713 () Bool)

(declare-fun res!2693804 () Bool)

(declare-fun e!3973901 () Bool)

(assert (=> b!6564713 (=> (not res!2693804) (not e!3973901))))

(declare-fun call!571171 () Bool)

(assert (=> b!6564713 (= res!2693804 call!571171)))

(declare-fun e!3973904 () Bool)

(assert (=> b!6564713 (= e!3973904 e!3973901)))

(declare-fun b!6564714 () Bool)

(declare-fun e!3973907 () Bool)

(assert (=> b!6564714 (= e!3973907 e!3973904)))

(declare-fun c!1206575 () Bool)

(assert (=> b!6564714 (= c!1206575 ((_ is Union!16439) lt!2406544))))

(declare-fun bm!571164 () Bool)

(assert (=> bm!571164 (= call!571171 (validRegex!8175 (ite c!1206575 (regOne!33391 lt!2406544) (regOne!33390 lt!2406544))))))

(declare-fun b!6564715 () Bool)

(assert (=> b!6564715 (= e!3973901 call!571169)))

(declare-fun b!6564716 () Bool)

(declare-fun e!3973905 () Bool)

(assert (=> b!6564716 (= e!3973905 e!3973902)))

(declare-fun res!2693806 () Bool)

(assert (=> b!6564716 (=> (not res!2693806) (not e!3973902))))

(assert (=> b!6564716 (= res!2693806 call!571171)))

(declare-fun b!6564717 () Bool)

(declare-fun res!2693802 () Bool)

(assert (=> b!6564717 (=> res!2693802 e!3973905)))

(assert (=> b!6564717 (= res!2693802 (not ((_ is Concat!25284) lt!2406544)))))

(assert (=> b!6564717 (= e!3973904 e!3973905)))

(declare-fun b!6564718 () Bool)

(declare-fun e!3973903 () Bool)

(assert (=> b!6564718 (= e!3973907 e!3973903)))

(declare-fun res!2693803 () Bool)

(assert (=> b!6564718 (= res!2693803 (not (nullable!6432 (reg!16768 lt!2406544))))))

(assert (=> b!6564718 (=> (not res!2693803) (not e!3973903))))

(declare-fun d!2059979 () Bool)

(declare-fun res!2693805 () Bool)

(declare-fun e!3973906 () Bool)

(assert (=> d!2059979 (=> res!2693805 e!3973906)))

(assert (=> d!2059979 (= res!2693805 ((_ is ElementMatch!16439) lt!2406544))))

(assert (=> d!2059979 (= (validRegex!8175 lt!2406544) e!3973906)))

(declare-fun b!6564719 () Bool)

(declare-fun call!571170 () Bool)

(assert (=> b!6564719 (= e!3973903 call!571170)))

(declare-fun bm!571165 () Bool)

(assert (=> bm!571165 (= call!571169 call!571170)))

(declare-fun b!6564720 () Bool)

(assert (=> b!6564720 (= e!3973906 e!3973907)))

(declare-fun c!1206574 () Bool)

(assert (=> b!6564720 (= c!1206574 ((_ is Star!16439) lt!2406544))))

(declare-fun bm!571166 () Bool)

(assert (=> bm!571166 (= call!571170 (validRegex!8175 (ite c!1206574 (reg!16768 lt!2406544) (ite c!1206575 (regTwo!33391 lt!2406544) (regTwo!33390 lt!2406544)))))))

(assert (= (and d!2059979 (not res!2693805)) b!6564720))

(assert (= (and b!6564720 c!1206574) b!6564718))

(assert (= (and b!6564720 (not c!1206574)) b!6564714))

(assert (= (and b!6564718 res!2693803) b!6564719))

(assert (= (and b!6564714 c!1206575) b!6564713))

(assert (= (and b!6564714 (not c!1206575)) b!6564717))

(assert (= (and b!6564713 res!2693804) b!6564715))

(assert (= (and b!6564717 (not res!2693802)) b!6564716))

(assert (= (and b!6564716 res!2693806) b!6564712))

(assert (= (or b!6564715 b!6564712) bm!571165))

(assert (= (or b!6564713 b!6564716) bm!571164))

(assert (= (or b!6564719 bm!571165) bm!571166))

(declare-fun m!7347020 () Bool)

(assert (=> bm!571164 m!7347020))

(declare-fun m!7347022 () Bool)

(assert (=> b!6564718 m!7347022))

(declare-fun m!7347024 () Bool)

(assert (=> bm!571166 m!7347024))

(assert (=> d!2058743 d!2059979))

(assert (=> d!2058743 d!2058735))

(assert (=> d!2058743 d!2058737))

(declare-fun bs!1676788 () Bool)

(declare-fun d!2059981 () Bool)

(assert (= bs!1676788 (and d!2059981 d!2058735)))

(declare-fun lambda!365279 () Int)

(assert (=> bs!1676788 (= lambda!365279 lambda!365124)))

(declare-fun bs!1676789 () Bool)

(assert (= bs!1676789 (and d!2059981 d!2058587)))

(assert (=> bs!1676789 (= lambda!365279 lambda!365086)))

(declare-fun bs!1676790 () Bool)

(assert (= bs!1676790 (and d!2059981 d!2059921)))

(assert (=> bs!1676790 (= lambda!365279 lambda!365272)))

(declare-fun bs!1676791 () Bool)

(assert (= bs!1676791 (and d!2059981 d!2058797)))

(assert (=> bs!1676791 (= lambda!365279 lambda!365138)))

(declare-fun bs!1676792 () Bool)

(assert (= bs!1676792 (and d!2059981 d!2059973)))

(assert (=> bs!1676792 (= lambda!365279 lambda!365278)))

(declare-fun bs!1676793 () Bool)

(assert (= bs!1676793 (and d!2059981 d!2059555)))

(assert (=> bs!1676793 (= lambda!365279 lambda!365229)))

(declare-fun bs!1676794 () Bool)

(assert (= bs!1676794 (and d!2059981 d!2058739)))

(assert (=> bs!1676794 (= lambda!365279 lambda!365128)))

(declare-fun bs!1676795 () Bool)

(assert (= bs!1676795 (and d!2059981 d!2059923)))

(assert (=> bs!1676795 (= lambda!365279 lambda!365273)))

(declare-fun bs!1676796 () Bool)

(assert (= bs!1676796 (and d!2059981 d!2059649)))

(assert (=> bs!1676796 (= lambda!365279 lambda!365237)))

(declare-fun bs!1676797 () Bool)

(assert (= bs!1676797 (and d!2059981 b!6561265)))

(assert (=> bs!1676797 (= lambda!365279 lambda!365045)))

(declare-fun bs!1676798 () Bool)

(assert (= bs!1676798 (and d!2059981 d!2059767)))

(assert (=> bs!1676798 (= lambda!365279 lambda!365249)))

(declare-fun bs!1676799 () Bool)

(assert (= bs!1676799 (and d!2059981 d!2059557)))

(assert (=> bs!1676799 (= lambda!365279 lambda!365230)))

(declare-fun bs!1676800 () Bool)

(assert (= bs!1676800 (and d!2059981 d!2059871)))

(assert (=> bs!1676800 (= lambda!365279 lambda!365265)))

(declare-fun bs!1676801 () Bool)

(assert (= bs!1676801 (and d!2059981 d!2058599)))

(assert (=> bs!1676801 (= lambda!365279 lambda!365092)))

(declare-fun bs!1676802 () Bool)

(assert (= bs!1676802 (and d!2059981 d!2059915)))

(assert (=> bs!1676802 (= lambda!365279 lambda!365271)))

(declare-fun bs!1676803 () Bool)

(assert (= bs!1676803 (and d!2059981 d!2059949)))

(assert (=> bs!1676803 (= lambda!365279 lambda!365274)))

(declare-fun bs!1676804 () Bool)

(assert (= bs!1676804 (and d!2059981 d!2059971)))

(assert (=> bs!1676804 (= lambda!365279 lambda!365277)))

(declare-fun bs!1676805 () Bool)

(assert (= bs!1676805 (and d!2059981 d!2058737)))

(assert (=> bs!1676805 (= lambda!365279 lambda!365127)))

(declare-fun b!6564721 () Bool)

(declare-fun e!3973913 () Regex!16439)

(declare-fun e!3973908 () Regex!16439)

(assert (=> b!6564721 (= e!3973913 e!3973908)))

(declare-fun c!1206577 () Bool)

(assert (=> b!6564721 (= c!1206577 ((_ is Cons!65493) (t!379259 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun b!6564722 () Bool)

(declare-fun e!3973909 () Bool)

(declare-fun lt!2406787 () Regex!16439)

(assert (=> b!6564722 (= e!3973909 (= lt!2406787 (head!13328 (t!379259 (exprs!6323 (h!71942 zl!343))))))))

(declare-fun b!6564723 () Bool)

(assert (=> b!6564723 (= e!3973913 (h!71941 (t!379259 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun b!6564724 () Bool)

(assert (=> b!6564724 (= e!3973909 (isConcat!1339 lt!2406787))))

(declare-fun b!6564725 () Bool)

(declare-fun e!3973912 () Bool)

(assert (=> b!6564725 (= e!3973912 (isEmptyExpr!1816 lt!2406787))))

(declare-fun e!3973910 () Bool)

(assert (=> d!2059981 e!3973910))

(declare-fun res!2693808 () Bool)

(assert (=> d!2059981 (=> (not res!2693808) (not e!3973910))))

(assert (=> d!2059981 (= res!2693808 (validRegex!8175 lt!2406787))))

(assert (=> d!2059981 (= lt!2406787 e!3973913)))

(declare-fun c!1206579 () Bool)

(declare-fun e!3973911 () Bool)

(assert (=> d!2059981 (= c!1206579 e!3973911)))

(declare-fun res!2693807 () Bool)

(assert (=> d!2059981 (=> (not res!2693807) (not e!3973911))))

(assert (=> d!2059981 (= res!2693807 ((_ is Cons!65493) (t!379259 (exprs!6323 (h!71942 zl!343)))))))

(assert (=> d!2059981 (forall!15611 (t!379259 (exprs!6323 (h!71942 zl!343))) lambda!365279)))

(assert (=> d!2059981 (= (generalisedConcat!2036 (t!379259 (exprs!6323 (h!71942 zl!343)))) lt!2406787)))

(declare-fun b!6564726 () Bool)

(assert (=> b!6564726 (= e!3973910 e!3973912)))

(declare-fun c!1206576 () Bool)

(assert (=> b!6564726 (= c!1206576 (isEmpty!37733 (t!379259 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun b!6564727 () Bool)

(assert (=> b!6564727 (= e!3973908 (Concat!25284 (h!71941 (t!379259 (exprs!6323 (h!71942 zl!343)))) (generalisedConcat!2036 (t!379259 (t!379259 (exprs!6323 (h!71942 zl!343)))))))))

(declare-fun b!6564728 () Bool)

(assert (=> b!6564728 (= e!3973912 e!3973909)))

(declare-fun c!1206578 () Bool)

(assert (=> b!6564728 (= c!1206578 (isEmpty!37733 (tail!12413 (t!379259 (exprs!6323 (h!71942 zl!343))))))))

(declare-fun b!6564729 () Bool)

(assert (=> b!6564729 (= e!3973911 (isEmpty!37733 (t!379259 (t!379259 (exprs!6323 (h!71942 zl!343))))))))

(declare-fun b!6564730 () Bool)

(assert (=> b!6564730 (= e!3973908 EmptyExpr!16439)))

(assert (= (and d!2059981 res!2693807) b!6564729))

(assert (= (and d!2059981 c!1206579) b!6564723))

(assert (= (and d!2059981 (not c!1206579)) b!6564721))

(assert (= (and b!6564721 c!1206577) b!6564727))

(assert (= (and b!6564721 (not c!1206577)) b!6564730))

(assert (= (and d!2059981 res!2693808) b!6564726))

(assert (= (and b!6564726 c!1206576) b!6564725))

(assert (= (and b!6564726 (not c!1206576)) b!6564728))

(assert (= (and b!6564728 c!1206578) b!6564722))

(assert (= (and b!6564728 (not c!1206578)) b!6564724))

(assert (=> b!6564726 m!7343200))

(declare-fun m!7347026 () Bool)

(assert (=> b!6564724 m!7347026))

(declare-fun m!7347028 () Bool)

(assert (=> b!6564722 m!7347028))

(declare-fun m!7347030 () Bool)

(assert (=> b!6564729 m!7347030))

(declare-fun m!7347032 () Bool)

(assert (=> b!6564728 m!7347032))

(assert (=> b!6564728 m!7347032))

(declare-fun m!7347034 () Bool)

(assert (=> b!6564728 m!7347034))

(declare-fun m!7347036 () Bool)

(assert (=> b!6564725 m!7347036))

(declare-fun m!7347038 () Bool)

(assert (=> b!6564727 m!7347038))

(declare-fun m!7347040 () Bool)

(assert (=> d!2059981 m!7347040))

(declare-fun m!7347042 () Bool)

(assert (=> d!2059981 m!7347042))

(assert (=> b!6561721 d!2059981))

(assert (=> bm!570756 d!2059503))

(declare-fun d!2059983 () Bool)

(assert (=> d!2059983 true))

(assert (=> d!2059983 true))

(declare-fun res!2693809 () Bool)

(assert (=> d!2059983 (= (choose!48962 lambda!365049) res!2693809)))

(assert (=> d!2058613 d!2059983))

(assert (=> b!6562233 d!2059539))

(declare-fun bs!1676806 () Bool)

(declare-fun b!6564739 () Bool)

(assert (= bs!1676806 (and b!6564739 d!2058817)))

(declare-fun lambda!365280 () Int)

(assert (=> bs!1676806 (not (= lambda!365280 lambda!365141))))

(declare-fun bs!1676807 () Bool)

(assert (= bs!1676807 (and b!6564739 b!6561249)))

(assert (=> bs!1676807 (not (= lambda!365280 lambda!365048))))

(declare-fun bs!1676808 () Bool)

(assert (= bs!1676808 (and b!6564739 d!2058617)))

(assert (=> bs!1676808 (not (= lambda!365280 lambda!365100))))

(declare-fun bs!1676809 () Bool)

(assert (= bs!1676809 (and b!6564739 b!6564593)))

(assert (=> bs!1676809 (not (= lambda!365280 lambda!365270))))

(declare-fun bs!1676810 () Bool)

(assert (= bs!1676810 (and b!6564739 d!2059659)))

(assert (=> bs!1676810 (not (= lambda!365280 lambda!365239))))

(declare-fun bs!1676811 () Bool)

(assert (= bs!1676811 (and b!6564739 b!6561283)))

(assert (=> bs!1676811 (not (= lambda!365280 lambda!365041))))

(declare-fun bs!1676812 () Bool)

(assert (= bs!1676812 (and b!6564739 d!2058767)))

(assert (=> bs!1676812 (not (= lambda!365280 lambda!365130))))

(declare-fun bs!1676813 () Bool)

(assert (= bs!1676813 (and b!6564739 b!6564488)))

(assert (=> bs!1676813 (not (= lambda!365280 lambda!365264))))

(declare-fun bs!1676814 () Bool)

(assert (= bs!1676814 (and b!6564739 d!2058793)))

(assert (=> bs!1676814 (not (= lambda!365280 lambda!365135))))

(declare-fun bs!1676815 () Bool)

(assert (= bs!1676815 (and b!6564739 d!2059835)))

(assert (=> bs!1676815 (not (= lambda!365280 lambda!365259))))

(declare-fun bs!1676816 () Bool)

(assert (= bs!1676816 (and b!6564739 b!6561898)))

(assert (=> bs!1676816 (not (= lambda!365280 lambda!365111))))

(assert (=> bs!1676810 (not (= lambda!365280 lambda!365238))))

(declare-fun bs!1676817 () Bool)

(assert (= bs!1676817 (and b!6564739 d!2058681)))

(assert (=> bs!1676817 (not (= lambda!365280 lambda!365116))))

(declare-fun bs!1676818 () Bool)

(assert (= bs!1676818 (and b!6564739 b!6562323)))

(assert (=> bs!1676818 (not (= lambda!365280 lambda!365140))))

(declare-fun bs!1676819 () Bool)

(assert (= bs!1676819 (and b!6564739 b!6564597)))

(assert (=> bs!1676819 (= (and (= (reg!16768 (regOne!33391 lt!2406396)) (reg!16768 (regTwo!33391 lt!2406349))) (= (regOne!33391 lt!2406396) (regTwo!33391 lt!2406349))) (= lambda!365280 lambda!365269))))

(declare-fun bs!1676820 () Bool)

(assert (= bs!1676820 (and b!6564739 b!6563924)))

(assert (=> bs!1676820 (not (= lambda!365280 lambda!365232))))

(declare-fun bs!1676821 () Bool)

(assert (= bs!1676821 (and b!6564739 b!6561287)))

(assert (=> bs!1676821 (not (= lambda!365280 lambda!365047))))

(declare-fun bs!1676822 () Bool)

(assert (= bs!1676822 (and b!6564739 b!6564445)))

(assert (=> bs!1676822 (not (= lambda!365280 lambda!365255))))

(declare-fun bs!1676823 () Bool)

(assert (= bs!1676823 (and b!6564739 b!6564157)))

(assert (=> bs!1676823 (= (and (= (reg!16768 (regOne!33391 lt!2406396)) (reg!16768 (regTwo!33391 r!7292))) (= (regOne!33391 lt!2406396) (regTwo!33391 r!7292))) (= lambda!365280 lambda!365241))))

(declare-fun bs!1676824 () Bool)

(assert (= bs!1676824 (and b!6564739 b!6564449)))

(assert (=> bs!1676824 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (reg!16768 (regOne!33391 lt!2406396)) (reg!16768 (regOne!33391 lt!2406360))) (= (regOne!33391 lt!2406396) (regOne!33391 lt!2406360))) (= lambda!365280 lambda!365254))))

(declare-fun bs!1676825 () Bool)

(assert (= bs!1676825 (and b!6564739 d!2058765)))

(assert (=> bs!1676825 (not (= lambda!365280 lambda!365129))))

(declare-fun bs!1676826 () Bool)

(assert (= bs!1676826 (and b!6564739 b!6562327)))

(assert (=> bs!1676826 (= (and (= (reg!16768 (regOne!33391 lt!2406396)) (reg!16768 lt!2406396)) (= (regOne!33391 lt!2406396) lt!2406396)) (= lambda!365280 lambda!365139))))

(declare-fun bs!1676827 () Bool)

(assert (= bs!1676827 (and b!6564739 b!6562195)))

(assert (=> bs!1676827 (not (= lambda!365280 lambda!365133))))

(declare-fun bs!1676828 () Bool)

(assert (= bs!1676828 (and b!6564739 d!2059791)))

(assert (=> bs!1676828 (not (= lambda!365280 lambda!365252))))

(assert (=> bs!1676812 (not (= lambda!365280 lambda!365131))))

(declare-fun bs!1676829 () Bool)

(assert (= bs!1676829 (and b!6564739 d!2059477)))

(assert (=> bs!1676829 (not (= lambda!365280 lambda!365225))))

(assert (=> bs!1676828 (not (= lambda!365280 lambda!365253))))

(declare-fun bs!1676830 () Bool)

(assert (= bs!1676830 (and b!6564739 b!6564340)))

(assert (=> bs!1676830 (not (= lambda!365280 lambda!365246))))

(declare-fun bs!1676831 () Bool)

(assert (= bs!1676831 (and b!6564739 b!6563928)))

(assert (=> bs!1676831 (= (and (= (reg!16768 (regOne!33391 lt!2406396)) (reg!16768 (regOne!33391 lt!2406349))) (= (regOne!33391 lt!2406396) (regOne!33391 lt!2406349))) (= lambda!365280 lambda!365231))))

(declare-fun bs!1676832 () Bool)

(assert (= bs!1676832 (and b!6564739 b!6564344)))

(assert (=> bs!1676832 (= (and (= (reg!16768 (regOne!33391 lt!2406396)) (reg!16768 (regTwo!33391 lt!2406396))) (= (regOne!33391 lt!2406396) (regTwo!33391 lt!2406396))) (= lambda!365280 lambda!365245))))

(declare-fun bs!1676833 () Bool)

(assert (= bs!1676833 (and b!6564739 d!2059901)))

(assert (=> bs!1676833 (not (= lambda!365280 lambda!365268))))

(assert (=> bs!1676811 (not (= lambda!365280 lambda!365042))))

(declare-fun bs!1676834 () Bool)

(assert (= bs!1676834 (and b!6564739 d!2059855)))

(assert (=> bs!1676834 (not (= lambda!365280 lambda!365261))))

(assert (=> bs!1676814 (not (= lambda!365280 lambda!365134))))

(assert (=> bs!1676808 (not (= lambda!365280 lambda!365097))))

(declare-fun bs!1676835 () Bool)

(assert (= bs!1676835 (and b!6564739 b!6562199)))

(assert (=> bs!1676835 (= (and (= (reg!16768 (regOne!33391 lt!2406396)) (reg!16768 r!7292)) (= (regOne!33391 lt!2406396) r!7292)) (= lambda!365280 lambda!365132))))

(declare-fun bs!1676836 () Bool)

(assert (= bs!1676836 (and b!6564739 b!6564492)))

(assert (=> bs!1676836 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (reg!16768 (regOne!33391 lt!2406396)) (reg!16768 (regTwo!33391 lt!2406360))) (= (regOne!33391 lt!2406396) (regTwo!33391 lt!2406360))) (= lambda!365280 lambda!365263))))

(declare-fun bs!1676837 () Bool)

(assert (= bs!1676837 (and b!6564739 b!6561902)))

(assert (=> bs!1676837 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (reg!16768 (regOne!33391 lt!2406396)) (reg!16768 lt!2406360)) (= (regOne!33391 lt!2406396) lt!2406360)) (= lambda!365280 lambda!365109))))

(declare-fun bs!1676838 () Bool)

(assert (= bs!1676838 (and b!6564739 b!6564153)))

(assert (=> bs!1676838 (not (= lambda!365280 lambda!365242))))

(assert (=> bs!1676829 (not (= lambda!365280 lambda!365226))))

(declare-fun bs!1676839 () Bool)

(assert (= bs!1676839 (and b!6564739 b!6562412)))

(assert (=> bs!1676839 (= (and (= (reg!16768 (regOne!33391 lt!2406396)) (reg!16768 lt!2406349)) (= (regOne!33391 lt!2406396) lt!2406349)) (= lambda!365280 lambda!365150))))

(declare-fun bs!1676840 () Bool)

(assert (= bs!1676840 (and b!6564739 b!6562408)))

(assert (=> bs!1676840 (not (= lambda!365280 lambda!365151))))

(declare-fun bs!1676841 () Bool)

(assert (= bs!1676841 (and b!6564739 b!6563956)))

(assert (=> bs!1676841 (= (and (= (reg!16768 (regOne!33391 lt!2406396)) (reg!16768 (regOne!33391 r!7292))) (= (regOne!33391 lt!2406396) (regOne!33391 r!7292))) (= lambda!365280 lambda!365234))))

(assert (=> bs!1676821 (not (= lambda!365280 lambda!365046))))

(declare-fun bs!1676842 () Bool)

(assert (= bs!1676842 (and b!6564739 b!6563952)))

(assert (=> bs!1676842 (not (= lambda!365280 lambda!365235))))

(assert (=> bs!1676807 (not (= lambda!365280 lambda!365049))))

(assert (=> b!6564739 true))

(assert (=> b!6564739 true))

(declare-fun bs!1676843 () Bool)

(declare-fun b!6564735 () Bool)

(assert (= bs!1676843 (and b!6564735 d!2058817)))

(declare-fun lambda!365281 () Int)

(assert (=> bs!1676843 (not (= lambda!365281 lambda!365141))))

(declare-fun bs!1676844 () Bool)

(assert (= bs!1676844 (and b!6564735 b!6561249)))

(assert (=> bs!1676844 (not (= lambda!365281 lambda!365048))))

(declare-fun bs!1676845 () Bool)

(assert (= bs!1676845 (and b!6564735 d!2058617)))

(assert (=> bs!1676845 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regOne!33391 lt!2406396)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regOne!33391 lt!2406396)) lt!2406358)) (= lambda!365281 lambda!365100))))

(declare-fun bs!1676846 () Bool)

(assert (= bs!1676846 (and b!6564735 b!6564593)))

(assert (=> bs!1676846 (= (and (= (regOne!33390 (regOne!33391 lt!2406396)) (regOne!33390 (regTwo!33391 lt!2406349))) (= (regTwo!33390 (regOne!33391 lt!2406396)) (regTwo!33390 (regTwo!33391 lt!2406349)))) (= lambda!365281 lambda!365270))))

(declare-fun bs!1676847 () Bool)

(assert (= bs!1676847 (and b!6564735 d!2059659)))

(assert (=> bs!1676847 (= (and (= (regOne!33390 (regOne!33391 lt!2406396)) lt!2406360) (= (regTwo!33390 (regOne!33391 lt!2406396)) (regTwo!33390 r!7292))) (= lambda!365281 lambda!365239))))

(declare-fun bs!1676848 () Bool)

(assert (= bs!1676848 (and b!6564735 b!6561283)))

(assert (=> bs!1676848 (not (= lambda!365281 lambda!365041))))

(declare-fun bs!1676849 () Bool)

(assert (= bs!1676849 (and b!6564735 d!2058767)))

(assert (=> bs!1676849 (not (= lambda!365281 lambda!365130))))

(declare-fun bs!1676850 () Bool)

(assert (= bs!1676850 (and b!6564735 b!6564488)))

(assert (=> bs!1676850 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regOne!33391 lt!2406396)) (regOne!33390 (regTwo!33391 lt!2406360))) (= (regTwo!33390 (regOne!33391 lt!2406396)) (regTwo!33390 (regTwo!33391 lt!2406360)))) (= lambda!365281 lambda!365264))))

(declare-fun bs!1676851 () Bool)

(assert (= bs!1676851 (and b!6564735 d!2058793)))

(assert (=> bs!1676851 (= (and (= (regOne!33390 (regOne!33391 lt!2406396)) lt!2406360) (= (regTwo!33390 (regOne!33391 lt!2406396)) (regTwo!33390 r!7292))) (= lambda!365281 lambda!365135))))

(declare-fun bs!1676852 () Bool)

(assert (= bs!1676852 (and b!6564735 d!2059835)))

(assert (=> bs!1676852 (not (= lambda!365281 lambda!365259))))

(declare-fun bs!1676853 () Bool)

(assert (= bs!1676853 (and b!6564735 b!6561898)))

(assert (=> bs!1676853 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regOne!33391 lt!2406396)) (regOne!33390 lt!2406360)) (= (regTwo!33390 (regOne!33391 lt!2406396)) (regTwo!33390 lt!2406360))) (= lambda!365281 lambda!365111))))

(assert (=> bs!1676847 (not (= lambda!365281 lambda!365238))))

(declare-fun bs!1676854 () Bool)

(assert (= bs!1676854 (and b!6564735 d!2058681)))

(assert (=> bs!1676854 (not (= lambda!365281 lambda!365116))))

(declare-fun bs!1676855 () Bool)

(assert (= bs!1676855 (and b!6564735 b!6562323)))

(assert (=> bs!1676855 (= (and (= (regOne!33390 (regOne!33391 lt!2406396)) (regOne!33390 lt!2406396)) (= (regTwo!33390 (regOne!33391 lt!2406396)) (regTwo!33390 lt!2406396))) (= lambda!365281 lambda!365140))))

(declare-fun bs!1676856 () Bool)

(assert (= bs!1676856 (and b!6564735 b!6564597)))

(assert (=> bs!1676856 (not (= lambda!365281 lambda!365269))))

(declare-fun bs!1676857 () Bool)

(assert (= bs!1676857 (and b!6564735 b!6563924)))

(assert (=> bs!1676857 (= (and (= (regOne!33390 (regOne!33391 lt!2406396)) (regOne!33390 (regOne!33391 lt!2406349))) (= (regTwo!33390 (regOne!33391 lt!2406396)) (regTwo!33390 (regOne!33391 lt!2406349)))) (= lambda!365281 lambda!365232))))

(declare-fun bs!1676858 () Bool)

(assert (= bs!1676858 (and b!6564735 b!6561287)))

(assert (=> bs!1676858 (= (and (= (regOne!33390 (regOne!33391 lt!2406396)) lt!2406360) (= (regTwo!33390 (regOne!33391 lt!2406396)) (regTwo!33390 r!7292))) (= lambda!365281 lambda!365047))))

(declare-fun bs!1676859 () Bool)

(assert (= bs!1676859 (and b!6564735 b!6564445)))

(assert (=> bs!1676859 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regOne!33391 lt!2406396)) (regOne!33390 (regOne!33391 lt!2406360))) (= (regTwo!33390 (regOne!33391 lt!2406396)) (regTwo!33390 (regOne!33391 lt!2406360)))) (= lambda!365281 lambda!365255))))

(declare-fun bs!1676860 () Bool)

(assert (= bs!1676860 (and b!6564735 b!6564157)))

(assert (=> bs!1676860 (not (= lambda!365281 lambda!365241))))

(declare-fun bs!1676861 () Bool)

(assert (= bs!1676861 (and b!6564735 b!6564449)))

(assert (=> bs!1676861 (not (= lambda!365281 lambda!365254))))

(declare-fun bs!1676862 () Bool)

(assert (= bs!1676862 (and b!6564735 d!2058765)))

(assert (=> bs!1676862 (not (= lambda!365281 lambda!365129))))

(declare-fun bs!1676863 () Bool)

(assert (= bs!1676863 (and b!6564735 b!6562327)))

(assert (=> bs!1676863 (not (= lambda!365281 lambda!365139))))

(declare-fun bs!1676864 () Bool)

(assert (= bs!1676864 (and b!6564735 b!6562195)))

(assert (=> bs!1676864 (= (and (= (regOne!33390 (regOne!33391 lt!2406396)) (regOne!33390 r!7292)) (= (regTwo!33390 (regOne!33391 lt!2406396)) (regTwo!33390 r!7292))) (= lambda!365281 lambda!365133))))

(declare-fun bs!1676865 () Bool)

(assert (= bs!1676865 (and b!6564735 d!2059791)))

(assert (=> bs!1676865 (not (= lambda!365281 lambda!365252))))

(assert (=> bs!1676849 (= (and (= (regOne!33390 (regOne!33391 lt!2406396)) (regOne!33390 r!7292)) (= (regTwo!33390 (regOne!33391 lt!2406396)) (regTwo!33390 r!7292))) (= lambda!365281 lambda!365131))))

(declare-fun bs!1676866 () Bool)

(assert (= bs!1676866 (and b!6564735 d!2059477)))

(assert (=> bs!1676866 (not (= lambda!365281 lambda!365225))))

(assert (=> bs!1676865 (= (and (= (regOne!33390 (regOne!33391 lt!2406396)) (regOne!33390 r!7292)) (= (regTwo!33390 (regOne!33391 lt!2406396)) (regTwo!33390 r!7292))) (= lambda!365281 lambda!365253))))

(declare-fun bs!1676867 () Bool)

(assert (= bs!1676867 (and b!6564735 b!6564340)))

(assert (=> bs!1676867 (= (and (= (regOne!33390 (regOne!33391 lt!2406396)) (regOne!33390 (regTwo!33391 lt!2406396))) (= (regTwo!33390 (regOne!33391 lt!2406396)) (regTwo!33390 (regTwo!33391 lt!2406396)))) (= lambda!365281 lambda!365246))))

(declare-fun bs!1676868 () Bool)

(assert (= bs!1676868 (and b!6564735 b!6563928)))

(assert (=> bs!1676868 (not (= lambda!365281 lambda!365231))))

(declare-fun bs!1676869 () Bool)

(assert (= bs!1676869 (and b!6564735 b!6564344)))

(assert (=> bs!1676869 (not (= lambda!365281 lambda!365245))))

(declare-fun bs!1676870 () Bool)

(assert (= bs!1676870 (and b!6564735 d!2059901)))

(assert (=> bs!1676870 (not (= lambda!365281 lambda!365268))))

(assert (=> bs!1676848 (= (and (= (regOne!33390 (regOne!33391 lt!2406396)) (regOne!33390 r!7292)) (= (regTwo!33390 (regOne!33391 lt!2406396)) (regTwo!33390 r!7292))) (= lambda!365281 lambda!365042))))

(declare-fun bs!1676871 () Bool)

(assert (= bs!1676871 (and b!6564735 b!6564739)))

(assert (=> bs!1676871 (not (= lambda!365281 lambda!365280))))

(declare-fun bs!1676872 () Bool)

(assert (= bs!1676872 (and b!6564735 d!2059855)))

(assert (=> bs!1676872 (not (= lambda!365281 lambda!365261))))

(assert (=> bs!1676851 (not (= lambda!365281 lambda!365134))))

(assert (=> bs!1676845 (not (= lambda!365281 lambda!365097))))

(declare-fun bs!1676873 () Bool)

(assert (= bs!1676873 (and b!6564735 b!6562199)))

(assert (=> bs!1676873 (not (= lambda!365281 lambda!365132))))

(declare-fun bs!1676874 () Bool)

(assert (= bs!1676874 (and b!6564735 b!6564492)))

(assert (=> bs!1676874 (not (= lambda!365281 lambda!365263))))

(declare-fun bs!1676875 () Bool)

(assert (= bs!1676875 (and b!6564735 b!6561902)))

(assert (=> bs!1676875 (not (= lambda!365281 lambda!365109))))

(declare-fun bs!1676876 () Bool)

(assert (= bs!1676876 (and b!6564735 b!6564153)))

(assert (=> bs!1676876 (= (and (= (regOne!33390 (regOne!33391 lt!2406396)) (regOne!33390 (regTwo!33391 r!7292))) (= (regTwo!33390 (regOne!33391 lt!2406396)) (regTwo!33390 (regTwo!33391 r!7292)))) (= lambda!365281 lambda!365242))))

(assert (=> bs!1676866 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regOne!33391 lt!2406396)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regOne!33391 lt!2406396)) lt!2406358)) (= lambda!365281 lambda!365226))))

(declare-fun bs!1676877 () Bool)

(assert (= bs!1676877 (and b!6564735 b!6562412)))

(assert (=> bs!1676877 (not (= lambda!365281 lambda!365150))))

(declare-fun bs!1676878 () Bool)

(assert (= bs!1676878 (and b!6564735 b!6562408)))

(assert (=> bs!1676878 (= (and (= (regOne!33390 (regOne!33391 lt!2406396)) (regOne!33390 lt!2406349)) (= (regTwo!33390 (regOne!33391 lt!2406396)) (regTwo!33390 lt!2406349))) (= lambda!365281 lambda!365151))))

(declare-fun bs!1676879 () Bool)

(assert (= bs!1676879 (and b!6564735 b!6563956)))

(assert (=> bs!1676879 (not (= lambda!365281 lambda!365234))))

(assert (=> bs!1676858 (not (= lambda!365281 lambda!365046))))

(declare-fun bs!1676880 () Bool)

(assert (= bs!1676880 (and b!6564735 b!6563952)))

(assert (=> bs!1676880 (= (and (= (regOne!33390 (regOne!33391 lt!2406396)) (regOne!33390 (regOne!33391 r!7292))) (= (regTwo!33390 (regOne!33391 lt!2406396)) (regTwo!33390 (regOne!33391 r!7292)))) (= lambda!365281 lambda!365235))))

(assert (=> bs!1676844 (= (and (= s!2326 (_1!36721 lt!2406397)) (= (regOne!33390 (regOne!33391 lt!2406396)) (reg!16768 (regOne!33390 r!7292))) (= (regTwo!33390 (regOne!33391 lt!2406396)) lt!2406358)) (= lambda!365281 lambda!365049))))

(assert (=> b!6564735 true))

(assert (=> b!6564735 true))

(declare-fun b!6564731 () Bool)

(declare-fun c!1206583 () Bool)

(assert (=> b!6564731 (= c!1206583 ((_ is ElementMatch!16439) (regOne!33391 lt!2406396)))))

(declare-fun e!3973917 () Bool)

(declare-fun e!3973919 () Bool)

(assert (=> b!6564731 (= e!3973917 e!3973919)))

(declare-fun b!6564732 () Bool)

(declare-fun res!2693811 () Bool)

(declare-fun e!3973920 () Bool)

(assert (=> b!6564732 (=> res!2693811 e!3973920)))

(declare-fun call!571173 () Bool)

(assert (=> b!6564732 (= res!2693811 call!571173)))

(declare-fun e!3973916 () Bool)

(assert (=> b!6564732 (= e!3973916 e!3973920)))

(declare-fun b!6564733 () Bool)

(declare-fun e!3973914 () Bool)

(declare-fun e!3973915 () Bool)

(assert (=> b!6564733 (= e!3973914 e!3973915)))

(declare-fun res!2693812 () Bool)

(assert (=> b!6564733 (= res!2693812 (matchRSpec!3540 (regOne!33391 (regOne!33391 lt!2406396)) s!2326))))

(assert (=> b!6564733 (=> res!2693812 e!3973915)))

(declare-fun b!6564734 () Bool)

(declare-fun e!3973918 () Bool)

(assert (=> b!6564734 (= e!3973918 call!571173)))

(declare-fun call!571172 () Bool)

(assert (=> b!6564735 (= e!3973916 call!571172)))

(declare-fun b!6564736 () Bool)

(assert (=> b!6564736 (= e!3973919 (= s!2326 (Cons!65492 (c!1205620 (regOne!33391 lt!2406396)) Nil!65492)))))

(declare-fun bm!571167 () Bool)

(assert (=> bm!571167 (= call!571173 (isEmpty!37737 s!2326))))

(declare-fun b!6564737 () Bool)

(declare-fun c!1206580 () Bool)

(assert (=> b!6564737 (= c!1206580 ((_ is Union!16439) (regOne!33391 lt!2406396)))))

(assert (=> b!6564737 (= e!3973919 e!3973914)))

(declare-fun b!6564738 () Bool)

(assert (=> b!6564738 (= e!3973914 e!3973916)))

(declare-fun c!1206581 () Bool)

(assert (=> b!6564738 (= c!1206581 ((_ is Star!16439) (regOne!33391 lt!2406396)))))

(declare-fun d!2059985 () Bool)

(declare-fun c!1206582 () Bool)

(assert (=> d!2059985 (= c!1206582 ((_ is EmptyExpr!16439) (regOne!33391 lt!2406396)))))

(assert (=> d!2059985 (= (matchRSpec!3540 (regOne!33391 lt!2406396) s!2326) e!3973918)))

(assert (=> b!6564739 (= e!3973920 call!571172)))

(declare-fun b!6564740 () Bool)

(assert (=> b!6564740 (= e!3973918 e!3973917)))

(declare-fun res!2693810 () Bool)

(assert (=> b!6564740 (= res!2693810 (not ((_ is EmptyLang!16439) (regOne!33391 lt!2406396))))))

(assert (=> b!6564740 (=> (not res!2693810) (not e!3973917))))

(declare-fun b!6564741 () Bool)

(assert (=> b!6564741 (= e!3973915 (matchRSpec!3540 (regTwo!33391 (regOne!33391 lt!2406396)) s!2326))))

(declare-fun bm!571168 () Bool)

(assert (=> bm!571168 (= call!571172 (Exists!3509 (ite c!1206581 lambda!365280 lambda!365281)))))

(assert (= (and d!2059985 c!1206582) b!6564734))

(assert (= (and d!2059985 (not c!1206582)) b!6564740))

(assert (= (and b!6564740 res!2693810) b!6564731))

(assert (= (and b!6564731 c!1206583) b!6564736))

(assert (= (and b!6564731 (not c!1206583)) b!6564737))

(assert (= (and b!6564737 c!1206580) b!6564733))

(assert (= (and b!6564737 (not c!1206580)) b!6564738))

(assert (= (and b!6564733 (not res!2693812)) b!6564741))

(assert (= (and b!6564738 c!1206581) b!6564732))

(assert (= (and b!6564738 (not c!1206581)) b!6564735))

(assert (= (and b!6564732 (not res!2693811)) b!6564739))

(assert (= (or b!6564739 b!6564735) bm!571168))

(assert (= (or b!6564734 b!6564732) bm!571167))

(declare-fun m!7347044 () Bool)

(assert (=> b!6564733 m!7347044))

(assert (=> bm!571167 m!7343766))

(declare-fun m!7347046 () Bool)

(assert (=> b!6564741 m!7347046))

(declare-fun m!7347048 () Bool)

(assert (=> bm!571168 m!7347048))

(assert (=> b!6562321 d!2059985))

(declare-fun b!6564742 () Bool)

(declare-fun e!3973922 () Bool)

(declare-fun call!571174 () Bool)

(assert (=> b!6564742 (= e!3973922 call!571174)))

(declare-fun b!6564743 () Bool)

(declare-fun res!2693815 () Bool)

(declare-fun e!3973921 () Bool)

(assert (=> b!6564743 (=> (not res!2693815) (not e!3973921))))

(declare-fun call!571176 () Bool)

(assert (=> b!6564743 (= res!2693815 call!571176)))

(declare-fun e!3973924 () Bool)

(assert (=> b!6564743 (= e!3973924 e!3973921)))

(declare-fun b!6564744 () Bool)

(declare-fun e!3973927 () Bool)

(assert (=> b!6564744 (= e!3973927 e!3973924)))

(declare-fun c!1206585 () Bool)

(assert (=> b!6564744 (= c!1206585 ((_ is Union!16439) (ite c!1205713 (reg!16768 r!7292) (ite c!1205714 (regTwo!33391 r!7292) (regTwo!33390 r!7292)))))))

(declare-fun bm!571169 () Bool)

(assert (=> bm!571169 (= call!571176 (validRegex!8175 (ite c!1206585 (regOne!33391 (ite c!1205713 (reg!16768 r!7292) (ite c!1205714 (regTwo!33391 r!7292) (regTwo!33390 r!7292)))) (regOne!33390 (ite c!1205713 (reg!16768 r!7292) (ite c!1205714 (regTwo!33391 r!7292) (regTwo!33390 r!7292)))))))))

(declare-fun b!6564745 () Bool)

(assert (=> b!6564745 (= e!3973921 call!571174)))

(declare-fun b!6564746 () Bool)

(declare-fun e!3973925 () Bool)

(assert (=> b!6564746 (= e!3973925 e!3973922)))

(declare-fun res!2693817 () Bool)

(assert (=> b!6564746 (=> (not res!2693817) (not e!3973922))))

(assert (=> b!6564746 (= res!2693817 call!571176)))

(declare-fun b!6564747 () Bool)

(declare-fun res!2693813 () Bool)

(assert (=> b!6564747 (=> res!2693813 e!3973925)))

(assert (=> b!6564747 (= res!2693813 (not ((_ is Concat!25284) (ite c!1205713 (reg!16768 r!7292) (ite c!1205714 (regTwo!33391 r!7292) (regTwo!33390 r!7292))))))))

(assert (=> b!6564747 (= e!3973924 e!3973925)))

(declare-fun b!6564748 () Bool)

(declare-fun e!3973923 () Bool)

(assert (=> b!6564748 (= e!3973927 e!3973923)))

(declare-fun res!2693814 () Bool)

(assert (=> b!6564748 (= res!2693814 (not (nullable!6432 (reg!16768 (ite c!1205713 (reg!16768 r!7292) (ite c!1205714 (regTwo!33391 r!7292) (regTwo!33390 r!7292)))))))))

(assert (=> b!6564748 (=> (not res!2693814) (not e!3973923))))

(declare-fun d!2059987 () Bool)

(declare-fun res!2693816 () Bool)

(declare-fun e!3973926 () Bool)

(assert (=> d!2059987 (=> res!2693816 e!3973926)))

(assert (=> d!2059987 (= res!2693816 ((_ is ElementMatch!16439) (ite c!1205713 (reg!16768 r!7292) (ite c!1205714 (regTwo!33391 r!7292) (regTwo!33390 r!7292)))))))

(assert (=> d!2059987 (= (validRegex!8175 (ite c!1205713 (reg!16768 r!7292) (ite c!1205714 (regTwo!33391 r!7292) (regTwo!33390 r!7292)))) e!3973926)))

(declare-fun b!6564749 () Bool)

(declare-fun call!571175 () Bool)

(assert (=> b!6564749 (= e!3973923 call!571175)))

(declare-fun bm!571170 () Bool)

(assert (=> bm!571170 (= call!571174 call!571175)))

(declare-fun b!6564750 () Bool)

(assert (=> b!6564750 (= e!3973926 e!3973927)))

(declare-fun c!1206584 () Bool)

(assert (=> b!6564750 (= c!1206584 ((_ is Star!16439) (ite c!1205713 (reg!16768 r!7292) (ite c!1205714 (regTwo!33391 r!7292) (regTwo!33390 r!7292)))))))

(declare-fun bm!571171 () Bool)

(assert (=> bm!571171 (= call!571175 (validRegex!8175 (ite c!1206584 (reg!16768 (ite c!1205713 (reg!16768 r!7292) (ite c!1205714 (regTwo!33391 r!7292) (regTwo!33390 r!7292)))) (ite c!1206585 (regTwo!33391 (ite c!1205713 (reg!16768 r!7292) (ite c!1205714 (regTwo!33391 r!7292) (regTwo!33390 r!7292)))) (regTwo!33390 (ite c!1205713 (reg!16768 r!7292) (ite c!1205714 (regTwo!33391 r!7292) (regTwo!33390 r!7292))))))))))

(assert (= (and d!2059987 (not res!2693816)) b!6564750))

(assert (= (and b!6564750 c!1206584) b!6564748))

(assert (= (and b!6564750 (not c!1206584)) b!6564744))

(assert (= (and b!6564748 res!2693814) b!6564749))

(assert (= (and b!6564744 c!1206585) b!6564743))

(assert (= (and b!6564744 (not c!1206585)) b!6564747))

(assert (= (and b!6564743 res!2693815) b!6564745))

(assert (= (and b!6564747 (not res!2693813)) b!6564746))

(assert (= (and b!6564746 res!2693817) b!6564742))

(assert (= (or b!6564745 b!6564742) bm!571170))

(assert (= (or b!6564743 b!6564746) bm!571169))

(assert (= (or b!6564749 bm!571170) bm!571171))

(declare-fun m!7347050 () Bool)

(assert (=> bm!571169 m!7347050))

(declare-fun m!7347052 () Bool)

(assert (=> b!6564748 m!7347052))

(declare-fun m!7347054 () Bool)

(assert (=> bm!571171 m!7347054))

(assert (=> bm!570680 d!2059987))

(declare-fun b!6564752 () Bool)

(declare-fun e!3973929 () List!65617)

(assert (=> b!6564752 (= e!3973929 (Cons!65493 (h!71941 (t!379259 lt!2406344)) (++!14581 (t!379259 (t!379259 lt!2406344)) lt!2406366)))))

(declare-fun d!2059989 () Bool)

(declare-fun e!3973928 () Bool)

(assert (=> d!2059989 e!3973928))

(declare-fun res!2693818 () Bool)

(assert (=> d!2059989 (=> (not res!2693818) (not e!3973928))))

(declare-fun lt!2406788 () List!65617)

(assert (=> d!2059989 (= res!2693818 (= (content!12599 lt!2406788) ((_ map or) (content!12599 (t!379259 lt!2406344)) (content!12599 lt!2406366))))))

(assert (=> d!2059989 (= lt!2406788 e!3973929)))

(declare-fun c!1206586 () Bool)

(assert (=> d!2059989 (= c!1206586 ((_ is Nil!65493) (t!379259 lt!2406344)))))

(assert (=> d!2059989 (= (++!14581 (t!379259 lt!2406344) lt!2406366) lt!2406788)))

(declare-fun b!6564754 () Bool)

(assert (=> b!6564754 (= e!3973928 (or (not (= lt!2406366 Nil!65493)) (= lt!2406788 (t!379259 lt!2406344))))))

(declare-fun b!6564751 () Bool)

(assert (=> b!6564751 (= e!3973929 lt!2406366)))

(declare-fun b!6564753 () Bool)

(declare-fun res!2693819 () Bool)

(assert (=> b!6564753 (=> (not res!2693819) (not e!3973928))))

(assert (=> b!6564753 (= res!2693819 (= (size!40528 lt!2406788) (+ (size!40528 (t!379259 lt!2406344)) (size!40528 lt!2406366))))))

(assert (= (and d!2059989 c!1206586) b!6564751))

(assert (= (and d!2059989 (not c!1206586)) b!6564752))

(assert (= (and d!2059989 res!2693818) b!6564753))

(assert (= (and b!6564753 res!2693819) b!6564754))

(declare-fun m!7347056 () Bool)

(assert (=> b!6564752 m!7347056))

(declare-fun m!7347058 () Bool)

(assert (=> d!2059989 m!7347058))

(assert (=> d!2059989 m!7346700))

(assert (=> d!2059989 m!7344406))

(declare-fun m!7347060 () Bool)

(assert (=> b!6564753 m!7347060))

(assert (=> b!6564753 m!7346632))

(assert (=> b!6564753 m!7344412))

(assert (=> b!6562347 d!2059989))

(declare-fun d!2059991 () Bool)

(assert (=> d!2059991 true))

(assert (=> d!2059991 true))

(declare-fun res!2693820 () Bool)

(assert (=> d!2059991 (= (choose!48962 lambda!365042) res!2693820)))

(assert (=> d!2058761 d!2059991))

(declare-fun b!6564755 () Bool)

(declare-fun e!3973932 () Bool)

(declare-fun e!3973935 () Bool)

(assert (=> b!6564755 (= e!3973932 e!3973935)))

(declare-fun res!2693827 () Bool)

(assert (=> b!6564755 (=> (not res!2693827) (not e!3973935))))

(declare-fun lt!2406789 () Bool)

(assert (=> b!6564755 (= res!2693827 (not lt!2406789))))

(declare-fun b!6564756 () Bool)

(declare-fun res!2693824 () Bool)

(declare-fun e!3973934 () Bool)

(assert (=> b!6564756 (=> res!2693824 e!3973934)))

(assert (=> b!6564756 (= res!2693824 (not (isEmpty!37737 (tail!12414 (tail!12414 s!2326)))))))

(declare-fun b!6564757 () Bool)

(declare-fun e!3973930 () Bool)

(declare-fun call!571177 () Bool)

(assert (=> b!6564757 (= e!3973930 (= lt!2406789 call!571177))))

(declare-fun b!6564759 () Bool)

(declare-fun res!2693823 () Bool)

(declare-fun e!3973933 () Bool)

(assert (=> b!6564759 (=> (not res!2693823) (not e!3973933))))

(assert (=> b!6564759 (= res!2693823 (isEmpty!37737 (tail!12414 (tail!12414 s!2326))))))

(declare-fun b!6564760 () Bool)

(assert (=> b!6564760 (= e!3973933 (= (head!13329 (tail!12414 s!2326)) (c!1205620 (derivativeStep!5123 lt!2406349 (head!13329 s!2326)))))))

(declare-fun b!6564761 () Bool)

(declare-fun res!2693825 () Bool)

(assert (=> b!6564761 (=> res!2693825 e!3973932)))

(assert (=> b!6564761 (= res!2693825 e!3973933)))

(declare-fun res!2693821 () Bool)

(assert (=> b!6564761 (=> (not res!2693821) (not e!3973933))))

(assert (=> b!6564761 (= res!2693821 lt!2406789)))

(declare-fun b!6564762 () Bool)

(declare-fun e!3973936 () Bool)

(assert (=> b!6564762 (= e!3973936 (not lt!2406789))))

(declare-fun b!6564763 () Bool)

(declare-fun res!2693828 () Bool)

(assert (=> b!6564763 (=> (not res!2693828) (not e!3973933))))

(assert (=> b!6564763 (= res!2693828 (not call!571177))))

(declare-fun b!6564764 () Bool)

(assert (=> b!6564764 (= e!3973935 e!3973934)))

(declare-fun res!2693822 () Bool)

(assert (=> b!6564764 (=> res!2693822 e!3973934)))

(assert (=> b!6564764 (= res!2693822 call!571177)))

(declare-fun b!6564765 () Bool)

(declare-fun e!3973931 () Bool)

(assert (=> b!6564765 (= e!3973931 (nullable!6432 (derivativeStep!5123 lt!2406349 (head!13329 s!2326))))))

(declare-fun bm!571172 () Bool)

(assert (=> bm!571172 (= call!571177 (isEmpty!37737 (tail!12414 s!2326)))))

(declare-fun b!6564766 () Bool)

(assert (=> b!6564766 (= e!3973930 e!3973936)))

(declare-fun c!1206587 () Bool)

(assert (=> b!6564766 (= c!1206587 ((_ is EmptyLang!16439) (derivativeStep!5123 lt!2406349 (head!13329 s!2326))))))

(declare-fun b!6564767 () Bool)

(declare-fun res!2693826 () Bool)

(assert (=> b!6564767 (=> res!2693826 e!3973932)))

(assert (=> b!6564767 (= res!2693826 (not ((_ is ElementMatch!16439) (derivativeStep!5123 lt!2406349 (head!13329 s!2326)))))))

(assert (=> b!6564767 (= e!3973936 e!3973932)))

(declare-fun b!6564768 () Bool)

(assert (=> b!6564768 (= e!3973931 (matchR!8622 (derivativeStep!5123 (derivativeStep!5123 lt!2406349 (head!13329 s!2326)) (head!13329 (tail!12414 s!2326))) (tail!12414 (tail!12414 s!2326))))))

(declare-fun d!2059993 () Bool)

(assert (=> d!2059993 e!3973930))

(declare-fun c!1206589 () Bool)

(assert (=> d!2059993 (= c!1206589 ((_ is EmptyExpr!16439) (derivativeStep!5123 lt!2406349 (head!13329 s!2326))))))

(assert (=> d!2059993 (= lt!2406789 e!3973931)))

(declare-fun c!1206588 () Bool)

(assert (=> d!2059993 (= c!1206588 (isEmpty!37737 (tail!12414 s!2326)))))

(assert (=> d!2059993 (validRegex!8175 (derivativeStep!5123 lt!2406349 (head!13329 s!2326)))))

(assert (=> d!2059993 (= (matchR!8622 (derivativeStep!5123 lt!2406349 (head!13329 s!2326)) (tail!12414 s!2326)) lt!2406789)))

(declare-fun b!6564758 () Bool)

(assert (=> b!6564758 (= e!3973934 (not (= (head!13329 (tail!12414 s!2326)) (c!1205620 (derivativeStep!5123 lt!2406349 (head!13329 s!2326))))))))

(assert (= (and d!2059993 c!1206588) b!6564765))

(assert (= (and d!2059993 (not c!1206588)) b!6564768))

(assert (= (and d!2059993 c!1206589) b!6564757))

(assert (= (and d!2059993 (not c!1206589)) b!6564766))

(assert (= (and b!6564766 c!1206587) b!6564762))

(assert (= (and b!6564766 (not c!1206587)) b!6564767))

(assert (= (and b!6564767 (not res!2693826)) b!6564761))

(assert (= (and b!6564761 res!2693821) b!6564763))

(assert (= (and b!6564763 res!2693828) b!6564759))

(assert (= (and b!6564759 res!2693823) b!6564760))

(assert (= (and b!6564761 (not res!2693825)) b!6564755))

(assert (= (and b!6564755 res!2693827) b!6564764))

(assert (= (and b!6564764 (not res!2693822)) b!6564756))

(assert (= (and b!6564756 (not res!2693824)) b!6564758))

(assert (= (or b!6564757 b!6564763 b!6564764) bm!571172))

(assert (=> bm!571172 m!7343774))

(assert (=> bm!571172 m!7344250))

(assert (=> d!2059993 m!7343774))

(assert (=> d!2059993 m!7344250))

(assert (=> d!2059993 m!7344506))

(declare-fun m!7347062 () Bool)

(assert (=> d!2059993 m!7347062))

(assert (=> b!6564759 m!7343774))

(assert (=> b!6564759 m!7345984))

(assert (=> b!6564759 m!7345984))

(assert (=> b!6564759 m!7346148))

(assert (=> b!6564760 m!7343774))

(assert (=> b!6564760 m!7345980))

(assert (=> b!6564758 m!7343774))

(assert (=> b!6564758 m!7345980))

(assert (=> b!6564756 m!7343774))

(assert (=> b!6564756 m!7345984))

(assert (=> b!6564756 m!7345984))

(assert (=> b!6564756 m!7346148))

(assert (=> b!6564765 m!7344506))

(declare-fun m!7347064 () Bool)

(assert (=> b!6564765 m!7347064))

(assert (=> b!6564768 m!7343774))

(assert (=> b!6564768 m!7345980))

(assert (=> b!6564768 m!7344506))

(assert (=> b!6564768 m!7345980))

(declare-fun m!7347066 () Bool)

(assert (=> b!6564768 m!7347066))

(assert (=> b!6564768 m!7343774))

(assert (=> b!6564768 m!7345984))

(assert (=> b!6564768 m!7347066))

(assert (=> b!6564768 m!7345984))

(declare-fun m!7347068 () Bool)

(assert (=> b!6564768 m!7347068))

(assert (=> b!6562428 d!2059993))

(declare-fun bm!571173 () Bool)

(declare-fun call!571179 () Regex!16439)

(declare-fun call!571178 () Regex!16439)

(assert (=> bm!571173 (= call!571179 call!571178)))

(declare-fun call!571180 () Regex!16439)

(declare-fun e!3973940 () Regex!16439)

(declare-fun b!6564770 () Bool)

(assert (=> b!6564770 (= e!3973940 (Union!16439 (Concat!25284 call!571180 (regTwo!33390 lt!2406349)) call!571179))))

(declare-fun c!1206592 () Bool)

(declare-fun bm!571174 () Bool)

(assert (=> bm!571174 (= call!571180 (derivativeStep!5123 (ite c!1206592 (regOne!33391 lt!2406349) (regOne!33390 lt!2406349)) (head!13329 s!2326)))))

(declare-fun b!6564771 () Bool)

(declare-fun e!3973941 () Regex!16439)

(assert (=> b!6564771 (= e!3973941 EmptyLang!16439)))

(declare-fun b!6564772 () Bool)

(declare-fun e!3973939 () Regex!16439)

(assert (=> b!6564772 (= e!3973939 (ite (= (head!13329 s!2326) (c!1205620 lt!2406349)) EmptyExpr!16439 EmptyLang!16439))))

(declare-fun b!6564773 () Bool)

(declare-fun c!1206594 () Bool)

(assert (=> b!6564773 (= c!1206594 (nullable!6432 (regOne!33390 lt!2406349)))))

(declare-fun e!3973937 () Regex!16439)

(assert (=> b!6564773 (= e!3973937 e!3973940)))

(declare-fun b!6564774 () Bool)

(assert (=> b!6564774 (= c!1206592 ((_ is Union!16439) lt!2406349))))

(declare-fun e!3973938 () Regex!16439)

(assert (=> b!6564774 (= e!3973939 e!3973938)))

(declare-fun bm!571175 () Bool)

(declare-fun c!1206593 () Bool)

(declare-fun call!571181 () Regex!16439)

(assert (=> bm!571175 (= call!571181 (derivativeStep!5123 (ite c!1206592 (regTwo!33391 lt!2406349) (ite c!1206593 (reg!16768 lt!2406349) (ite c!1206594 (regTwo!33390 lt!2406349) (regOne!33390 lt!2406349)))) (head!13329 s!2326)))))

(declare-fun b!6564775 () Bool)

(assert (=> b!6564775 (= e!3973940 (Union!16439 (Concat!25284 call!571179 (regTwo!33390 lt!2406349)) EmptyLang!16439))))

(declare-fun b!6564769 () Bool)

(assert (=> b!6564769 (= e!3973937 (Concat!25284 call!571178 lt!2406349))))

(declare-fun d!2059995 () Bool)

(declare-fun lt!2406790 () Regex!16439)

(assert (=> d!2059995 (validRegex!8175 lt!2406790)))

(assert (=> d!2059995 (= lt!2406790 e!3973941)))

(declare-fun c!1206590 () Bool)

(assert (=> d!2059995 (= c!1206590 (or ((_ is EmptyExpr!16439) lt!2406349) ((_ is EmptyLang!16439) lt!2406349)))))

(assert (=> d!2059995 (validRegex!8175 lt!2406349)))

(assert (=> d!2059995 (= (derivativeStep!5123 lt!2406349 (head!13329 s!2326)) lt!2406790)))

(declare-fun b!6564776 () Bool)

(assert (=> b!6564776 (= e!3973938 (Union!16439 call!571180 call!571181))))

(declare-fun b!6564777 () Bool)

(assert (=> b!6564777 (= e!3973938 e!3973937)))

(assert (=> b!6564777 (= c!1206593 ((_ is Star!16439) lt!2406349))))

(declare-fun b!6564778 () Bool)

(assert (=> b!6564778 (= e!3973941 e!3973939)))

(declare-fun c!1206591 () Bool)

(assert (=> b!6564778 (= c!1206591 ((_ is ElementMatch!16439) lt!2406349))))

(declare-fun bm!571176 () Bool)

(assert (=> bm!571176 (= call!571178 call!571181)))

(assert (= (and d!2059995 c!1206590) b!6564771))

(assert (= (and d!2059995 (not c!1206590)) b!6564778))

(assert (= (and b!6564778 c!1206591) b!6564772))

(assert (= (and b!6564778 (not c!1206591)) b!6564774))

(assert (= (and b!6564774 c!1206592) b!6564776))

(assert (= (and b!6564774 (not c!1206592)) b!6564777))

(assert (= (and b!6564777 c!1206593) b!6564769))

(assert (= (and b!6564777 (not c!1206593)) b!6564773))

(assert (= (and b!6564773 c!1206594) b!6564770))

(assert (= (and b!6564773 (not c!1206594)) b!6564775))

(assert (= (or b!6564770 b!6564775) bm!571173))

(assert (= (or b!6564769 bm!571173) bm!571176))

(assert (= (or b!6564776 bm!571176) bm!571175))

(assert (= (or b!6564776 b!6564770) bm!571174))

(assert (=> bm!571174 m!7343770))

(declare-fun m!7347070 () Bool)

(assert (=> bm!571174 m!7347070))

(assert (=> b!6564773 m!7346500))

(assert (=> bm!571175 m!7343770))

(declare-fun m!7347072 () Bool)

(assert (=> bm!571175 m!7347072))

(declare-fun m!7347074 () Bool)

(assert (=> d!2059995 m!7347074))

(assert (=> d!2059995 m!7344352))

(assert (=> b!6562428 d!2059995))

(assert (=> b!6562428 d!2059539))

(assert (=> b!6562428 d!2059541))

(declare-fun b!6564779 () Bool)

(declare-fun e!3973942 () Bool)

(assert (=> b!6564779 (= e!3973942 tp_is_empty!42131)))

(declare-fun b!6564781 () Bool)

(declare-fun tp!1812964 () Bool)

(assert (=> b!6564781 (= e!3973942 tp!1812964)))

(assert (=> b!6562459 (= tp!1812730 e!3973942)))

(declare-fun b!6564782 () Bool)

(declare-fun tp!1812960 () Bool)

(declare-fun tp!1812961 () Bool)

(assert (=> b!6564782 (= e!3973942 (and tp!1812960 tp!1812961))))

(declare-fun b!6564780 () Bool)

(declare-fun tp!1812963 () Bool)

(declare-fun tp!1812962 () Bool)

(assert (=> b!6564780 (= e!3973942 (and tp!1812963 tp!1812962))))

(assert (= (and b!6562459 ((_ is ElementMatch!16439) (regOne!33391 (regOne!33390 r!7292)))) b!6564779))

(assert (= (and b!6562459 ((_ is Concat!25284) (regOne!33391 (regOne!33390 r!7292)))) b!6564780))

(assert (= (and b!6562459 ((_ is Star!16439) (regOne!33391 (regOne!33390 r!7292)))) b!6564781))

(assert (= (and b!6562459 ((_ is Union!16439) (regOne!33391 (regOne!33390 r!7292)))) b!6564782))

(declare-fun b!6564783 () Bool)

(declare-fun e!3973943 () Bool)

(assert (=> b!6564783 (= e!3973943 tp_is_empty!42131)))

(declare-fun b!6564785 () Bool)

(declare-fun tp!1812969 () Bool)

(assert (=> b!6564785 (= e!3973943 tp!1812969)))

(assert (=> b!6562459 (= tp!1812731 e!3973943)))

(declare-fun b!6564786 () Bool)

(declare-fun tp!1812965 () Bool)

(declare-fun tp!1812966 () Bool)

(assert (=> b!6564786 (= e!3973943 (and tp!1812965 tp!1812966))))

(declare-fun b!6564784 () Bool)

(declare-fun tp!1812968 () Bool)

(declare-fun tp!1812967 () Bool)

(assert (=> b!6564784 (= e!3973943 (and tp!1812968 tp!1812967))))

(assert (= (and b!6562459 ((_ is ElementMatch!16439) (regTwo!33391 (regOne!33390 r!7292)))) b!6564783))

(assert (= (and b!6562459 ((_ is Concat!25284) (regTwo!33391 (regOne!33390 r!7292)))) b!6564784))

(assert (= (and b!6562459 ((_ is Star!16439) (regTwo!33391 (regOne!33390 r!7292)))) b!6564785))

(assert (= (and b!6562459 ((_ is Union!16439) (regTwo!33391 (regOne!33390 r!7292)))) b!6564786))

(declare-fun b!6564787 () Bool)

(declare-fun e!3973944 () Bool)

(assert (=> b!6564787 (= e!3973944 tp_is_empty!42131)))

(declare-fun b!6564789 () Bool)

(declare-fun tp!1812974 () Bool)

(assert (=> b!6564789 (= e!3973944 tp!1812974)))

(assert (=> b!6562481 (= tp!1812757 e!3973944)))

(declare-fun b!6564790 () Bool)

(declare-fun tp!1812970 () Bool)

(declare-fun tp!1812971 () Bool)

(assert (=> b!6564790 (= e!3973944 (and tp!1812970 tp!1812971))))

(declare-fun b!6564788 () Bool)

(declare-fun tp!1812973 () Bool)

(declare-fun tp!1812972 () Bool)

(assert (=> b!6564788 (= e!3973944 (and tp!1812973 tp!1812972))))

(assert (= (and b!6562481 ((_ is ElementMatch!16439) (regOne!33391 (regTwo!33391 r!7292)))) b!6564787))

(assert (= (and b!6562481 ((_ is Concat!25284) (regOne!33391 (regTwo!33391 r!7292)))) b!6564788))

(assert (= (and b!6562481 ((_ is Star!16439) (regOne!33391 (regTwo!33391 r!7292)))) b!6564789))

(assert (= (and b!6562481 ((_ is Union!16439) (regOne!33391 (regTwo!33391 r!7292)))) b!6564790))

(declare-fun b!6564791 () Bool)

(declare-fun e!3973945 () Bool)

(assert (=> b!6564791 (= e!3973945 tp_is_empty!42131)))

(declare-fun b!6564793 () Bool)

(declare-fun tp!1812979 () Bool)

(assert (=> b!6564793 (= e!3973945 tp!1812979)))

(assert (=> b!6562481 (= tp!1812758 e!3973945)))

(declare-fun b!6564794 () Bool)

(declare-fun tp!1812975 () Bool)

(declare-fun tp!1812976 () Bool)

(assert (=> b!6564794 (= e!3973945 (and tp!1812975 tp!1812976))))

(declare-fun b!6564792 () Bool)

(declare-fun tp!1812978 () Bool)

(declare-fun tp!1812977 () Bool)

(assert (=> b!6564792 (= e!3973945 (and tp!1812978 tp!1812977))))

(assert (= (and b!6562481 ((_ is ElementMatch!16439) (regTwo!33391 (regTwo!33391 r!7292)))) b!6564791))

(assert (= (and b!6562481 ((_ is Concat!25284) (regTwo!33391 (regTwo!33391 r!7292)))) b!6564792))

(assert (= (and b!6562481 ((_ is Star!16439) (regTwo!33391 (regTwo!33391 r!7292)))) b!6564793))

(assert (= (and b!6562481 ((_ is Union!16439) (regTwo!33391 (regTwo!33391 r!7292)))) b!6564794))

(declare-fun b!6564795 () Bool)

(declare-fun e!3973946 () Bool)

(assert (=> b!6564795 (= e!3973946 tp_is_empty!42131)))

(declare-fun b!6564797 () Bool)

(declare-fun tp!1812984 () Bool)

(assert (=> b!6564797 (= e!3973946 tp!1812984)))

(assert (=> b!6562473 (= tp!1812750 e!3973946)))

(declare-fun b!6564798 () Bool)

(declare-fun tp!1812980 () Bool)

(declare-fun tp!1812981 () Bool)

(assert (=> b!6564798 (= e!3973946 (and tp!1812980 tp!1812981))))

(declare-fun b!6564796 () Bool)

(declare-fun tp!1812983 () Bool)

(declare-fun tp!1812982 () Bool)

(assert (=> b!6564796 (= e!3973946 (and tp!1812983 tp!1812982))))

(assert (= (and b!6562473 ((_ is ElementMatch!16439) (h!71941 (exprs!6323 (h!71942 zl!343))))) b!6564795))

(assert (= (and b!6562473 ((_ is Concat!25284) (h!71941 (exprs!6323 (h!71942 zl!343))))) b!6564796))

(assert (= (and b!6562473 ((_ is Star!16439) (h!71941 (exprs!6323 (h!71942 zl!343))))) b!6564797))

(assert (= (and b!6562473 ((_ is Union!16439) (h!71941 (exprs!6323 (h!71942 zl!343))))) b!6564798))

(declare-fun b!6564799 () Bool)

(declare-fun e!3973947 () Bool)

(declare-fun tp!1812985 () Bool)

(declare-fun tp!1812986 () Bool)

(assert (=> b!6564799 (= e!3973947 (and tp!1812985 tp!1812986))))

(assert (=> b!6562473 (= tp!1812751 e!3973947)))

(assert (= (and b!6562473 ((_ is Cons!65493) (t!379259 (exprs!6323 (h!71942 zl!343))))) b!6564799))

(declare-fun condSetEmpty!44816 () Bool)

(assert (=> setNonEmpty!44796 (= condSetEmpty!44816 (= setRest!44796 ((as const (Array Context!11646 Bool)) false)))))

(declare-fun setRes!44816 () Bool)

(assert (=> setNonEmpty!44796 (= tp!1812745 setRes!44816)))

(declare-fun setIsEmpty!44816 () Bool)

(assert (=> setIsEmpty!44816 setRes!44816))

(declare-fun tp!1812988 () Bool)

(declare-fun setNonEmpty!44816 () Bool)

(declare-fun setElem!44816 () Context!11646)

(declare-fun e!3973948 () Bool)

(assert (=> setNonEmpty!44816 (= setRes!44816 (and tp!1812988 (inv!84344 setElem!44816) e!3973948))))

(declare-fun setRest!44816 () (InoxSet Context!11646))

(assert (=> setNonEmpty!44816 (= setRest!44796 ((_ map or) (store ((as const (Array Context!11646 Bool)) false) setElem!44816 true) setRest!44816))))

(declare-fun b!6564800 () Bool)

(declare-fun tp!1812987 () Bool)

(assert (=> b!6564800 (= e!3973948 tp!1812987)))

(assert (= (and setNonEmpty!44796 condSetEmpty!44816) setIsEmpty!44816))

(assert (= (and setNonEmpty!44796 (not condSetEmpty!44816)) setNonEmpty!44816))

(assert (= setNonEmpty!44816 b!6564800))

(declare-fun m!7347076 () Bool)

(assert (=> setNonEmpty!44816 m!7347076))

(declare-fun b!6564801 () Bool)

(declare-fun e!3973949 () Bool)

(declare-fun tp!1812989 () Bool)

(declare-fun tp!1812990 () Bool)

(assert (=> b!6564801 (= e!3973949 (and tp!1812989 tp!1812990))))

(assert (=> b!6562468 (= tp!1812744 e!3973949)))

(assert (= (and b!6562468 ((_ is Cons!65493) (exprs!6323 setElem!44796))) b!6564801))

(declare-fun b!6564802 () Bool)

(declare-fun e!3973950 () Bool)

(assert (=> b!6564802 (= e!3973950 tp_is_empty!42131)))

(declare-fun b!6564804 () Bool)

(declare-fun tp!1812995 () Bool)

(assert (=> b!6564804 (= e!3973950 tp!1812995)))

(assert (=> b!6562482 (= tp!1812762 e!3973950)))

(declare-fun b!6564805 () Bool)

(declare-fun tp!1812991 () Bool)

(declare-fun tp!1812992 () Bool)

(assert (=> b!6564805 (= e!3973950 (and tp!1812991 tp!1812992))))

(declare-fun b!6564803 () Bool)

(declare-fun tp!1812994 () Bool)

(declare-fun tp!1812993 () Bool)

(assert (=> b!6564803 (= e!3973950 (and tp!1812994 tp!1812993))))

(assert (= (and b!6562482 ((_ is ElementMatch!16439) (h!71941 (exprs!6323 setElem!44790)))) b!6564802))

(assert (= (and b!6562482 ((_ is Concat!25284) (h!71941 (exprs!6323 setElem!44790)))) b!6564803))

(assert (= (and b!6562482 ((_ is Star!16439) (h!71941 (exprs!6323 setElem!44790)))) b!6564804))

(assert (= (and b!6562482 ((_ is Union!16439) (h!71941 (exprs!6323 setElem!44790)))) b!6564805))

(declare-fun b!6564806 () Bool)

(declare-fun e!3973951 () Bool)

(declare-fun tp!1812996 () Bool)

(declare-fun tp!1812997 () Bool)

(assert (=> b!6564806 (= e!3973951 (and tp!1812996 tp!1812997))))

(assert (=> b!6562482 (= tp!1812763 e!3973951)))

(assert (= (and b!6562482 ((_ is Cons!65493) (t!379259 (exprs!6323 setElem!44790)))) b!6564806))

(declare-fun b!6564807 () Bool)

(declare-fun e!3973952 () Bool)

(assert (=> b!6564807 (= e!3973952 tp_is_empty!42131)))

(declare-fun b!6564809 () Bool)

(declare-fun tp!1813002 () Bool)

(assert (=> b!6564809 (= e!3973952 tp!1813002)))

(assert (=> b!6562457 (= tp!1812733 e!3973952)))

(declare-fun b!6564810 () Bool)

(declare-fun tp!1812998 () Bool)

(declare-fun tp!1812999 () Bool)

(assert (=> b!6564810 (= e!3973952 (and tp!1812998 tp!1812999))))

(declare-fun b!6564808 () Bool)

(declare-fun tp!1813001 () Bool)

(declare-fun tp!1813000 () Bool)

(assert (=> b!6564808 (= e!3973952 (and tp!1813001 tp!1813000))))

(assert (= (and b!6562457 ((_ is ElementMatch!16439) (regOne!33390 (regOne!33390 r!7292)))) b!6564807))

(assert (= (and b!6562457 ((_ is Concat!25284) (regOne!33390 (regOne!33390 r!7292)))) b!6564808))

(assert (= (and b!6562457 ((_ is Star!16439) (regOne!33390 (regOne!33390 r!7292)))) b!6564809))

(assert (= (and b!6562457 ((_ is Union!16439) (regOne!33390 (regOne!33390 r!7292)))) b!6564810))

(declare-fun b!6564811 () Bool)

(declare-fun e!3973953 () Bool)

(assert (=> b!6564811 (= e!3973953 tp_is_empty!42131)))

(declare-fun b!6564813 () Bool)

(declare-fun tp!1813007 () Bool)

(assert (=> b!6564813 (= e!3973953 tp!1813007)))

(assert (=> b!6562457 (= tp!1812732 e!3973953)))

(declare-fun b!6564814 () Bool)

(declare-fun tp!1813003 () Bool)

(declare-fun tp!1813004 () Bool)

(assert (=> b!6564814 (= e!3973953 (and tp!1813003 tp!1813004))))

(declare-fun b!6564812 () Bool)

(declare-fun tp!1813006 () Bool)

(declare-fun tp!1813005 () Bool)

(assert (=> b!6564812 (= e!3973953 (and tp!1813006 tp!1813005))))

(assert (= (and b!6562457 ((_ is ElementMatch!16439) (regTwo!33390 (regOne!33390 r!7292)))) b!6564811))

(assert (= (and b!6562457 ((_ is Concat!25284) (regTwo!33390 (regOne!33390 r!7292)))) b!6564812))

(assert (= (and b!6562457 ((_ is Star!16439) (regTwo!33390 (regOne!33390 r!7292)))) b!6564813))

(assert (= (and b!6562457 ((_ is Union!16439) (regTwo!33390 (regOne!33390 r!7292)))) b!6564814))

(declare-fun b!6564815 () Bool)

(declare-fun e!3973954 () Bool)

(assert (=> b!6564815 (= e!3973954 tp_is_empty!42131)))

(declare-fun b!6564817 () Bool)

(declare-fun tp!1813012 () Bool)

(assert (=> b!6564817 (= e!3973954 tp!1813012)))

(assert (=> b!6562479 (= tp!1812760 e!3973954)))

(declare-fun b!6564818 () Bool)

(declare-fun tp!1813008 () Bool)

(declare-fun tp!1813009 () Bool)

(assert (=> b!6564818 (= e!3973954 (and tp!1813008 tp!1813009))))

(declare-fun b!6564816 () Bool)

(declare-fun tp!1813011 () Bool)

(declare-fun tp!1813010 () Bool)

(assert (=> b!6564816 (= e!3973954 (and tp!1813011 tp!1813010))))

(assert (= (and b!6562479 ((_ is ElementMatch!16439) (regOne!33390 (regTwo!33391 r!7292)))) b!6564815))

(assert (= (and b!6562479 ((_ is Concat!25284) (regOne!33390 (regTwo!33391 r!7292)))) b!6564816))

(assert (= (and b!6562479 ((_ is Star!16439) (regOne!33390 (regTwo!33391 r!7292)))) b!6564817))

(assert (= (and b!6562479 ((_ is Union!16439) (regOne!33390 (regTwo!33391 r!7292)))) b!6564818))

(declare-fun b!6564819 () Bool)

(declare-fun e!3973955 () Bool)

(assert (=> b!6564819 (= e!3973955 tp_is_empty!42131)))

(declare-fun b!6564821 () Bool)

(declare-fun tp!1813017 () Bool)

(assert (=> b!6564821 (= e!3973955 tp!1813017)))

(assert (=> b!6562479 (= tp!1812759 e!3973955)))

(declare-fun b!6564822 () Bool)

(declare-fun tp!1813013 () Bool)

(declare-fun tp!1813014 () Bool)

(assert (=> b!6564822 (= e!3973955 (and tp!1813013 tp!1813014))))

(declare-fun b!6564820 () Bool)

(declare-fun tp!1813016 () Bool)

(declare-fun tp!1813015 () Bool)

(assert (=> b!6564820 (= e!3973955 (and tp!1813016 tp!1813015))))

(assert (= (and b!6562479 ((_ is ElementMatch!16439) (regTwo!33390 (regTwo!33391 r!7292)))) b!6564819))

(assert (= (and b!6562479 ((_ is Concat!25284) (regTwo!33390 (regTwo!33391 r!7292)))) b!6564820))

(assert (= (and b!6562479 ((_ is Star!16439) (regTwo!33390 (regTwo!33391 r!7292)))) b!6564821))

(assert (= (and b!6562479 ((_ is Union!16439) (regTwo!33390 (regTwo!33391 r!7292)))) b!6564822))

(declare-fun b!6564823 () Bool)

(declare-fun e!3973956 () Bool)

(assert (=> b!6564823 (= e!3973956 tp_is_empty!42131)))

(declare-fun b!6564825 () Bool)

(declare-fun tp!1813022 () Bool)

(assert (=> b!6564825 (= e!3973956 tp!1813022)))

(assert (=> b!6562458 (= tp!1812734 e!3973956)))

(declare-fun b!6564826 () Bool)

(declare-fun tp!1813018 () Bool)

(declare-fun tp!1813019 () Bool)

(assert (=> b!6564826 (= e!3973956 (and tp!1813018 tp!1813019))))

(declare-fun b!6564824 () Bool)

(declare-fun tp!1813021 () Bool)

(declare-fun tp!1813020 () Bool)

(assert (=> b!6564824 (= e!3973956 (and tp!1813021 tp!1813020))))

(assert (= (and b!6562458 ((_ is ElementMatch!16439) (reg!16768 (regOne!33390 r!7292)))) b!6564823))

(assert (= (and b!6562458 ((_ is Concat!25284) (reg!16768 (regOne!33390 r!7292)))) b!6564824))

(assert (= (and b!6562458 ((_ is Star!16439) (reg!16768 (regOne!33390 r!7292)))) b!6564825))

(assert (= (and b!6562458 ((_ is Union!16439) (reg!16768 (regOne!33390 r!7292)))) b!6564826))

(declare-fun b!6564827 () Bool)

(declare-fun e!3973957 () Bool)

(assert (=> b!6564827 (= e!3973957 tp_is_empty!42131)))

(declare-fun b!6564829 () Bool)

(declare-fun tp!1813027 () Bool)

(assert (=> b!6564829 (= e!3973957 tp!1813027)))

(assert (=> b!6562480 (= tp!1812761 e!3973957)))

(declare-fun b!6564830 () Bool)

(declare-fun tp!1813023 () Bool)

(declare-fun tp!1813024 () Bool)

(assert (=> b!6564830 (= e!3973957 (and tp!1813023 tp!1813024))))

(declare-fun b!6564828 () Bool)

(declare-fun tp!1813026 () Bool)

(declare-fun tp!1813025 () Bool)

(assert (=> b!6564828 (= e!3973957 (and tp!1813026 tp!1813025))))

(assert (= (and b!6562480 ((_ is ElementMatch!16439) (reg!16768 (regTwo!33391 r!7292)))) b!6564827))

(assert (= (and b!6562480 ((_ is Concat!25284) (reg!16768 (regTwo!33391 r!7292)))) b!6564828))

(assert (= (and b!6562480 ((_ is Star!16439) (reg!16768 (regTwo!33391 r!7292)))) b!6564829))

(assert (= (and b!6562480 ((_ is Union!16439) (reg!16768 (regTwo!33391 r!7292)))) b!6564830))

(declare-fun b!6564831 () Bool)

(declare-fun e!3973958 () Bool)

(assert (=> b!6564831 (= e!3973958 tp_is_empty!42131)))

(declare-fun b!6564833 () Bool)

(declare-fun tp!1813032 () Bool)

(assert (=> b!6564833 (= e!3973958 tp!1813032)))

(assert (=> b!6562476 (= tp!1812756 e!3973958)))

(declare-fun b!6564834 () Bool)

(declare-fun tp!1813028 () Bool)

(declare-fun tp!1813029 () Bool)

(assert (=> b!6564834 (= e!3973958 (and tp!1813028 tp!1813029))))

(declare-fun b!6564832 () Bool)

(declare-fun tp!1813031 () Bool)

(declare-fun tp!1813030 () Bool)

(assert (=> b!6564832 (= e!3973958 (and tp!1813031 tp!1813030))))

(assert (= (and b!6562476 ((_ is ElementMatch!16439) (reg!16768 (regOne!33391 r!7292)))) b!6564831))

(assert (= (and b!6562476 ((_ is Concat!25284) (reg!16768 (regOne!33391 r!7292)))) b!6564832))

(assert (= (and b!6562476 ((_ is Star!16439) (reg!16768 (regOne!33391 r!7292)))) b!6564833))

(assert (= (and b!6562476 ((_ is Union!16439) (reg!16768 (regOne!33391 r!7292)))) b!6564834))

(declare-fun b!6564835 () Bool)

(declare-fun e!3973959 () Bool)

(assert (=> b!6564835 (= e!3973959 tp_is_empty!42131)))

(declare-fun b!6564837 () Bool)

(declare-fun tp!1813037 () Bool)

(assert (=> b!6564837 (= e!3973959 tp!1813037)))

(assert (=> b!6562440 (= tp!1812719 e!3973959)))

(declare-fun b!6564838 () Bool)

(declare-fun tp!1813033 () Bool)

(declare-fun tp!1813034 () Bool)

(assert (=> b!6564838 (= e!3973959 (and tp!1813033 tp!1813034))))

(declare-fun b!6564836 () Bool)

(declare-fun tp!1813036 () Bool)

(declare-fun tp!1813035 () Bool)

(assert (=> b!6564836 (= e!3973959 (and tp!1813036 tp!1813035))))

(assert (= (and b!6562440 ((_ is ElementMatch!16439) (regOne!33390 (reg!16768 r!7292)))) b!6564835))

(assert (= (and b!6562440 ((_ is Concat!25284) (regOne!33390 (reg!16768 r!7292)))) b!6564836))

(assert (= (and b!6562440 ((_ is Star!16439) (regOne!33390 (reg!16768 r!7292)))) b!6564837))

(assert (= (and b!6562440 ((_ is Union!16439) (regOne!33390 (reg!16768 r!7292)))) b!6564838))

(declare-fun b!6564839 () Bool)

(declare-fun e!3973960 () Bool)

(assert (=> b!6564839 (= e!3973960 tp_is_empty!42131)))

(declare-fun b!6564841 () Bool)

(declare-fun tp!1813042 () Bool)

(assert (=> b!6564841 (= e!3973960 tp!1813042)))

(assert (=> b!6562440 (= tp!1812718 e!3973960)))

(declare-fun b!6564842 () Bool)

(declare-fun tp!1813038 () Bool)

(declare-fun tp!1813039 () Bool)

(assert (=> b!6564842 (= e!3973960 (and tp!1813038 tp!1813039))))

(declare-fun b!6564840 () Bool)

(declare-fun tp!1813041 () Bool)

(declare-fun tp!1813040 () Bool)

(assert (=> b!6564840 (= e!3973960 (and tp!1813041 tp!1813040))))

(assert (= (and b!6562440 ((_ is ElementMatch!16439) (regTwo!33390 (reg!16768 r!7292)))) b!6564839))

(assert (= (and b!6562440 ((_ is Concat!25284) (regTwo!33390 (reg!16768 r!7292)))) b!6564840))

(assert (= (and b!6562440 ((_ is Star!16439) (regTwo!33390 (reg!16768 r!7292)))) b!6564841))

(assert (= (and b!6562440 ((_ is Union!16439) (regTwo!33390 (reg!16768 r!7292)))) b!6564842))

(declare-fun b!6564843 () Bool)

(declare-fun e!3973961 () Bool)

(declare-fun tp!1813043 () Bool)

(assert (=> b!6564843 (= e!3973961 (and tp_is_empty!42131 tp!1813043))))

(assert (=> b!6562455 (= tp!1812729 e!3973961)))

(assert (= (and b!6562455 ((_ is Cons!65492) (t!379258 (t!379258 s!2326)))) b!6564843))

(declare-fun b!6564844 () Bool)

(declare-fun e!3973962 () Bool)

(assert (=> b!6564844 (= e!3973962 tp_is_empty!42131)))

(declare-fun b!6564846 () Bool)

(declare-fun tp!1813048 () Bool)

(assert (=> b!6564846 (= e!3973962 tp!1813048)))

(assert (=> b!6562477 (= tp!1812752 e!3973962)))

(declare-fun b!6564847 () Bool)

(declare-fun tp!1813044 () Bool)

(declare-fun tp!1813045 () Bool)

(assert (=> b!6564847 (= e!3973962 (and tp!1813044 tp!1813045))))

(declare-fun b!6564845 () Bool)

(declare-fun tp!1813047 () Bool)

(declare-fun tp!1813046 () Bool)

(assert (=> b!6564845 (= e!3973962 (and tp!1813047 tp!1813046))))

(assert (= (and b!6562477 ((_ is ElementMatch!16439) (regOne!33391 (regOne!33391 r!7292)))) b!6564844))

(assert (= (and b!6562477 ((_ is Concat!25284) (regOne!33391 (regOne!33391 r!7292)))) b!6564845))

(assert (= (and b!6562477 ((_ is Star!16439) (regOne!33391 (regOne!33391 r!7292)))) b!6564846))

(assert (= (and b!6562477 ((_ is Union!16439) (regOne!33391 (regOne!33391 r!7292)))) b!6564847))

(declare-fun b!6564848 () Bool)

(declare-fun e!3973963 () Bool)

(assert (=> b!6564848 (= e!3973963 tp_is_empty!42131)))

(declare-fun b!6564850 () Bool)

(declare-fun tp!1813053 () Bool)

(assert (=> b!6564850 (= e!3973963 tp!1813053)))

(assert (=> b!6562477 (= tp!1812753 e!3973963)))

(declare-fun b!6564851 () Bool)

(declare-fun tp!1813049 () Bool)

(declare-fun tp!1813050 () Bool)

(assert (=> b!6564851 (= e!3973963 (and tp!1813049 tp!1813050))))

(declare-fun b!6564849 () Bool)

(declare-fun tp!1813052 () Bool)

(declare-fun tp!1813051 () Bool)

(assert (=> b!6564849 (= e!3973963 (and tp!1813052 tp!1813051))))

(assert (= (and b!6562477 ((_ is ElementMatch!16439) (regTwo!33391 (regOne!33391 r!7292)))) b!6564848))

(assert (= (and b!6562477 ((_ is Concat!25284) (regTwo!33391 (regOne!33391 r!7292)))) b!6564849))

(assert (= (and b!6562477 ((_ is Star!16439) (regTwo!33391 (regOne!33391 r!7292)))) b!6564850))

(assert (= (and b!6562477 ((_ is Union!16439) (regTwo!33391 (regOne!33391 r!7292)))) b!6564851))

(declare-fun b!6564852 () Bool)

(declare-fun e!3973964 () Bool)

(assert (=> b!6564852 (= e!3973964 tp_is_empty!42131)))

(declare-fun b!6564854 () Bool)

(declare-fun tp!1813058 () Bool)

(assert (=> b!6564854 (= e!3973964 tp!1813058)))

(assert (=> b!6562441 (= tp!1812720 e!3973964)))

(declare-fun b!6564855 () Bool)

(declare-fun tp!1813054 () Bool)

(declare-fun tp!1813055 () Bool)

(assert (=> b!6564855 (= e!3973964 (and tp!1813054 tp!1813055))))

(declare-fun b!6564853 () Bool)

(declare-fun tp!1813057 () Bool)

(declare-fun tp!1813056 () Bool)

(assert (=> b!6564853 (= e!3973964 (and tp!1813057 tp!1813056))))

(assert (= (and b!6562441 ((_ is ElementMatch!16439) (reg!16768 (reg!16768 r!7292)))) b!6564852))

(assert (= (and b!6562441 ((_ is Concat!25284) (reg!16768 (reg!16768 r!7292)))) b!6564853))

(assert (= (and b!6562441 ((_ is Star!16439) (reg!16768 (reg!16768 r!7292)))) b!6564854))

(assert (= (and b!6562441 ((_ is Union!16439) (reg!16768 (reg!16768 r!7292)))) b!6564855))

(declare-fun b!6564856 () Bool)

(declare-fun e!3973965 () Bool)

(assert (=> b!6564856 (= e!3973965 tp_is_empty!42131)))

(declare-fun b!6564858 () Bool)

(declare-fun tp!1813063 () Bool)

(assert (=> b!6564858 (= e!3973965 tp!1813063)))

(assert (=> b!6562442 (= tp!1812716 e!3973965)))

(declare-fun b!6564859 () Bool)

(declare-fun tp!1813059 () Bool)

(declare-fun tp!1813060 () Bool)

(assert (=> b!6564859 (= e!3973965 (and tp!1813059 tp!1813060))))

(declare-fun b!6564857 () Bool)

(declare-fun tp!1813062 () Bool)

(declare-fun tp!1813061 () Bool)

(assert (=> b!6564857 (= e!3973965 (and tp!1813062 tp!1813061))))

(assert (= (and b!6562442 ((_ is ElementMatch!16439) (regOne!33391 (reg!16768 r!7292)))) b!6564856))

(assert (= (and b!6562442 ((_ is Concat!25284) (regOne!33391 (reg!16768 r!7292)))) b!6564857))

(assert (= (and b!6562442 ((_ is Star!16439) (regOne!33391 (reg!16768 r!7292)))) b!6564858))

(assert (= (and b!6562442 ((_ is Union!16439) (regOne!33391 (reg!16768 r!7292)))) b!6564859))

(declare-fun b!6564860 () Bool)

(declare-fun e!3973966 () Bool)

(assert (=> b!6564860 (= e!3973966 tp_is_empty!42131)))

(declare-fun b!6564862 () Bool)

(declare-fun tp!1813068 () Bool)

(assert (=> b!6564862 (= e!3973966 tp!1813068)))

(assert (=> b!6562442 (= tp!1812717 e!3973966)))

(declare-fun b!6564863 () Bool)

(declare-fun tp!1813064 () Bool)

(declare-fun tp!1813065 () Bool)

(assert (=> b!6564863 (= e!3973966 (and tp!1813064 tp!1813065))))

(declare-fun b!6564861 () Bool)

(declare-fun tp!1813067 () Bool)

(declare-fun tp!1813066 () Bool)

(assert (=> b!6564861 (= e!3973966 (and tp!1813067 tp!1813066))))

(assert (= (and b!6562442 ((_ is ElementMatch!16439) (regTwo!33391 (reg!16768 r!7292)))) b!6564860))

(assert (= (and b!6562442 ((_ is Concat!25284) (regTwo!33391 (reg!16768 r!7292)))) b!6564861))

(assert (= (and b!6562442 ((_ is Star!16439) (regTwo!33391 (reg!16768 r!7292)))) b!6564862))

(assert (= (and b!6562442 ((_ is Union!16439) (regTwo!33391 (reg!16768 r!7292)))) b!6564863))

(declare-fun b!6564865 () Bool)

(declare-fun e!3973968 () Bool)

(declare-fun tp!1813069 () Bool)

(assert (=> b!6564865 (= e!3973968 tp!1813069)))

(declare-fun tp!1813070 () Bool)

(declare-fun e!3973967 () Bool)

(declare-fun b!6564864 () Bool)

(assert (=> b!6564864 (= e!3973967 (and (inv!84344 (h!71942 (t!379260 (t!379260 zl!343)))) e!3973968 tp!1813070))))

(assert (=> b!6562449 (= tp!1812726 e!3973967)))

(assert (= b!6564864 b!6564865))

(assert (= (and b!6562449 ((_ is Cons!65494) (t!379260 (t!379260 zl!343)))) b!6564864))

(declare-fun m!7347078 () Bool)

(assert (=> b!6564864 m!7347078))

(declare-fun b!6564866 () Bool)

(declare-fun e!3973969 () Bool)

(declare-fun tp!1813071 () Bool)

(declare-fun tp!1813072 () Bool)

(assert (=> b!6564866 (= e!3973969 (and tp!1813071 tp!1813072))))

(assert (=> b!6562450 (= tp!1812725 e!3973969)))

(assert (= (and b!6562450 ((_ is Cons!65493) (exprs!6323 (h!71942 (t!379260 zl!343))))) b!6564866))

(declare-fun b!6564867 () Bool)

(declare-fun e!3973970 () Bool)

(assert (=> b!6564867 (= e!3973970 tp_is_empty!42131)))

(declare-fun b!6564869 () Bool)

(declare-fun tp!1813077 () Bool)

(assert (=> b!6564869 (= e!3973970 tp!1813077)))

(assert (=> b!6562461 (= tp!1812738 e!3973970)))

(declare-fun b!6564870 () Bool)

(declare-fun tp!1813073 () Bool)

(declare-fun tp!1813074 () Bool)

(assert (=> b!6564870 (= e!3973970 (and tp!1813073 tp!1813074))))

(declare-fun b!6564868 () Bool)

(declare-fun tp!1813076 () Bool)

(declare-fun tp!1813075 () Bool)

(assert (=> b!6564868 (= e!3973970 (and tp!1813076 tp!1813075))))

(assert (= (and b!6562461 ((_ is ElementMatch!16439) (regOne!33390 (regTwo!33390 r!7292)))) b!6564867))

(assert (= (and b!6562461 ((_ is Concat!25284) (regOne!33390 (regTwo!33390 r!7292)))) b!6564868))

(assert (= (and b!6562461 ((_ is Star!16439) (regOne!33390 (regTwo!33390 r!7292)))) b!6564869))

(assert (= (and b!6562461 ((_ is Union!16439) (regOne!33390 (regTwo!33390 r!7292)))) b!6564870))

(declare-fun b!6564871 () Bool)

(declare-fun e!3973971 () Bool)

(assert (=> b!6564871 (= e!3973971 tp_is_empty!42131)))

(declare-fun b!6564873 () Bool)

(declare-fun tp!1813082 () Bool)

(assert (=> b!6564873 (= e!3973971 tp!1813082)))

(assert (=> b!6562461 (= tp!1812737 e!3973971)))

(declare-fun b!6564874 () Bool)

(declare-fun tp!1813078 () Bool)

(declare-fun tp!1813079 () Bool)

(assert (=> b!6564874 (= e!3973971 (and tp!1813078 tp!1813079))))

(declare-fun b!6564872 () Bool)

(declare-fun tp!1813081 () Bool)

(declare-fun tp!1813080 () Bool)

(assert (=> b!6564872 (= e!3973971 (and tp!1813081 tp!1813080))))

(assert (= (and b!6562461 ((_ is ElementMatch!16439) (regTwo!33390 (regTwo!33390 r!7292)))) b!6564871))

(assert (= (and b!6562461 ((_ is Concat!25284) (regTwo!33390 (regTwo!33390 r!7292)))) b!6564872))

(assert (= (and b!6562461 ((_ is Star!16439) (regTwo!33390 (regTwo!33390 r!7292)))) b!6564873))

(assert (= (and b!6562461 ((_ is Union!16439) (regTwo!33390 (regTwo!33390 r!7292)))) b!6564874))

(declare-fun b!6564875 () Bool)

(declare-fun e!3973972 () Bool)

(assert (=> b!6564875 (= e!3973972 tp_is_empty!42131)))

(declare-fun b!6564877 () Bool)

(declare-fun tp!1813087 () Bool)

(assert (=> b!6564877 (= e!3973972 tp!1813087)))

(assert (=> b!6562462 (= tp!1812739 e!3973972)))

(declare-fun b!6564878 () Bool)

(declare-fun tp!1813083 () Bool)

(declare-fun tp!1813084 () Bool)

(assert (=> b!6564878 (= e!3973972 (and tp!1813083 tp!1813084))))

(declare-fun b!6564876 () Bool)

(declare-fun tp!1813086 () Bool)

(declare-fun tp!1813085 () Bool)

(assert (=> b!6564876 (= e!3973972 (and tp!1813086 tp!1813085))))

(assert (= (and b!6562462 ((_ is ElementMatch!16439) (reg!16768 (regTwo!33390 r!7292)))) b!6564875))

(assert (= (and b!6562462 ((_ is Concat!25284) (reg!16768 (regTwo!33390 r!7292)))) b!6564876))

(assert (= (and b!6562462 ((_ is Star!16439) (reg!16768 (regTwo!33390 r!7292)))) b!6564877))

(assert (= (and b!6562462 ((_ is Union!16439) (reg!16768 (regTwo!33390 r!7292)))) b!6564878))

(declare-fun b!6564879 () Bool)

(declare-fun e!3973973 () Bool)

(assert (=> b!6564879 (= e!3973973 tp_is_empty!42131)))

(declare-fun b!6564881 () Bool)

(declare-fun tp!1813092 () Bool)

(assert (=> b!6564881 (= e!3973973 tp!1813092)))

(assert (=> b!6562475 (= tp!1812755 e!3973973)))

(declare-fun b!6564882 () Bool)

(declare-fun tp!1813088 () Bool)

(declare-fun tp!1813089 () Bool)

(assert (=> b!6564882 (= e!3973973 (and tp!1813088 tp!1813089))))

(declare-fun b!6564880 () Bool)

(declare-fun tp!1813091 () Bool)

(declare-fun tp!1813090 () Bool)

(assert (=> b!6564880 (= e!3973973 (and tp!1813091 tp!1813090))))

(assert (= (and b!6562475 ((_ is ElementMatch!16439) (regOne!33390 (regOne!33391 r!7292)))) b!6564879))

(assert (= (and b!6562475 ((_ is Concat!25284) (regOne!33390 (regOne!33391 r!7292)))) b!6564880))

(assert (= (and b!6562475 ((_ is Star!16439) (regOne!33390 (regOne!33391 r!7292)))) b!6564881))

(assert (= (and b!6562475 ((_ is Union!16439) (regOne!33390 (regOne!33391 r!7292)))) b!6564882))

(declare-fun b!6564883 () Bool)

(declare-fun e!3973974 () Bool)

(assert (=> b!6564883 (= e!3973974 tp_is_empty!42131)))

(declare-fun b!6564885 () Bool)

(declare-fun tp!1813097 () Bool)

(assert (=> b!6564885 (= e!3973974 tp!1813097)))

(assert (=> b!6562475 (= tp!1812754 e!3973974)))

(declare-fun b!6564886 () Bool)

(declare-fun tp!1813093 () Bool)

(declare-fun tp!1813094 () Bool)

(assert (=> b!6564886 (= e!3973974 (and tp!1813093 tp!1813094))))

(declare-fun b!6564884 () Bool)

(declare-fun tp!1813096 () Bool)

(declare-fun tp!1813095 () Bool)

(assert (=> b!6564884 (= e!3973974 (and tp!1813096 tp!1813095))))

(assert (= (and b!6562475 ((_ is ElementMatch!16439) (regTwo!33390 (regOne!33391 r!7292)))) b!6564883))

(assert (= (and b!6562475 ((_ is Concat!25284) (regTwo!33390 (regOne!33391 r!7292)))) b!6564884))

(assert (= (and b!6562475 ((_ is Star!16439) (regTwo!33390 (regOne!33391 r!7292)))) b!6564885))

(assert (= (and b!6562475 ((_ is Union!16439) (regTwo!33390 (regOne!33391 r!7292)))) b!6564886))

(declare-fun b!6564887 () Bool)

(declare-fun e!3973975 () Bool)

(assert (=> b!6564887 (= e!3973975 tp_is_empty!42131)))

(declare-fun b!6564889 () Bool)

(declare-fun tp!1813102 () Bool)

(assert (=> b!6564889 (= e!3973975 tp!1813102)))

(assert (=> b!6562463 (= tp!1812735 e!3973975)))

(declare-fun b!6564890 () Bool)

(declare-fun tp!1813098 () Bool)

(declare-fun tp!1813099 () Bool)

(assert (=> b!6564890 (= e!3973975 (and tp!1813098 tp!1813099))))

(declare-fun b!6564888 () Bool)

(declare-fun tp!1813101 () Bool)

(declare-fun tp!1813100 () Bool)

(assert (=> b!6564888 (= e!3973975 (and tp!1813101 tp!1813100))))

(assert (= (and b!6562463 ((_ is ElementMatch!16439) (regOne!33391 (regTwo!33390 r!7292)))) b!6564887))

(assert (= (and b!6562463 ((_ is Concat!25284) (regOne!33391 (regTwo!33390 r!7292)))) b!6564888))

(assert (= (and b!6562463 ((_ is Star!16439) (regOne!33391 (regTwo!33390 r!7292)))) b!6564889))

(assert (= (and b!6562463 ((_ is Union!16439) (regOne!33391 (regTwo!33390 r!7292)))) b!6564890))

(declare-fun b!6564891 () Bool)

(declare-fun e!3973976 () Bool)

(assert (=> b!6564891 (= e!3973976 tp_is_empty!42131)))

(declare-fun b!6564893 () Bool)

(declare-fun tp!1813107 () Bool)

(assert (=> b!6564893 (= e!3973976 tp!1813107)))

(assert (=> b!6562463 (= tp!1812736 e!3973976)))

(declare-fun b!6564894 () Bool)

(declare-fun tp!1813103 () Bool)

(declare-fun tp!1813104 () Bool)

(assert (=> b!6564894 (= e!3973976 (and tp!1813103 tp!1813104))))

(declare-fun b!6564892 () Bool)

(declare-fun tp!1813106 () Bool)

(declare-fun tp!1813105 () Bool)

(assert (=> b!6564892 (= e!3973976 (and tp!1813106 tp!1813105))))

(assert (= (and b!6562463 ((_ is ElementMatch!16439) (regTwo!33391 (regTwo!33390 r!7292)))) b!6564891))

(assert (= (and b!6562463 ((_ is Concat!25284) (regTwo!33391 (regTwo!33390 r!7292)))) b!6564892))

(assert (= (and b!6562463 ((_ is Star!16439) (regTwo!33391 (regTwo!33390 r!7292)))) b!6564893))

(assert (= (and b!6562463 ((_ is Union!16439) (regTwo!33391 (regTwo!33390 r!7292)))) b!6564894))

(declare-fun b_lambda!248313 () Bool)

(assert (= b_lambda!248309 (or d!2058587 b_lambda!248313)))

(declare-fun bs!1676881 () Bool)

(declare-fun d!2059997 () Bool)

(assert (= bs!1676881 (and d!2059997 d!2058587)))

(assert (=> bs!1676881 (= (dynLambda!26053 lambda!365086 (h!71941 (exprs!6323 (h!71942 zl!343)))) (validRegex!8175 (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(declare-fun m!7347080 () Bool)

(assert (=> bs!1676881 m!7347080))

(assert (=> b!6564578 d!2059997))

(declare-fun b_lambda!248315 () Bool)

(assert (= b_lambda!248295 (or d!2058735 b_lambda!248315)))

(declare-fun bs!1676882 () Bool)

(declare-fun d!2059999 () Bool)

(assert (= bs!1676882 (and d!2059999 d!2058735)))

(assert (=> bs!1676882 (= (dynLambda!26053 lambda!365124 (h!71941 (unfocusZipperList!1860 zl!343))) (validRegex!8175 (h!71941 (unfocusZipperList!1860 zl!343))))))

(declare-fun m!7347082 () Bool)

(assert (=> bs!1676882 m!7347082))

(assert (=> b!6564012 d!2059999))

(declare-fun b_lambda!248317 () Bool)

(assert (= b_lambda!248291 (or b!6561265 b_lambda!248317)))

(declare-fun bs!1676883 () Bool)

(declare-fun d!2060001 () Bool)

(assert (= bs!1676883 (and d!2060001 b!6561265)))

(assert (=> bs!1676883 (= (dynLambda!26053 lambda!365045 (h!71941 (++!14581 lt!2406344 lt!2406366))) (validRegex!8175 (h!71941 (++!14581 lt!2406344 lt!2406366))))))

(declare-fun m!7347084 () Bool)

(assert (=> bs!1676883 m!7347084))

(assert (=> b!6563739 d!2060001))

(declare-fun b_lambda!248319 () Bool)

(assert (= b_lambda!248289 (or b!6561279 b_lambda!248319)))

(assert (=> d!2059459 d!2058869))

(declare-fun b_lambda!248321 () Bool)

(assert (= b_lambda!248311 (or b!6561279 b_lambda!248321)))

(assert (=> d!2059947 d!2058871))

(declare-fun b_lambda!248323 () Bool)

(assert (= b_lambda!248303 (or b!6561279 b_lambda!248323)))

(assert (=> d!2059823 d!2058875))

(declare-fun b_lambda!248325 () Bool)

(assert (= b_lambda!248297 (or b!6561265 b_lambda!248325)))

(assert (=> d!2059623 d!2058873))

(declare-fun b_lambda!248327 () Bool)

(assert (= b_lambda!248307 (or d!2058739 b_lambda!248327)))

(declare-fun bs!1676884 () Bool)

(declare-fun d!2060003 () Bool)

(assert (= bs!1676884 (and d!2060003 d!2058739)))

(assert (=> bs!1676884 (= (dynLambda!26053 lambda!365128 (h!71941 (exprs!6323 setElem!44790))) (validRegex!8175 (h!71941 (exprs!6323 setElem!44790))))))

(declare-fun m!7347086 () Bool)

(assert (=> bs!1676884 m!7347086))

(assert (=> b!6564543 d!2060003))

(declare-fun b_lambda!248329 () Bool)

(assert (= b_lambda!248305 (or b!6561279 b_lambda!248329)))

(assert (=> d!2059875 d!2058877))

(declare-fun b_lambda!248331 () Bool)

(assert (= b_lambda!248299 (or d!2058737 b_lambda!248331)))

(declare-fun bs!1676885 () Bool)

(declare-fun d!2060005 () Bool)

(assert (= bs!1676885 (and d!2060005 d!2058737)))

(assert (=> bs!1676885 (= (dynLambda!26053 lambda!365127 (h!71941 lt!2406543)) (validRegex!8175 (h!71941 lt!2406543)))))

(declare-fun m!7347088 () Bool)

(assert (=> bs!1676885 m!7347088))

(assert (=> b!6564357 d!2060005))

(declare-fun b_lambda!248333 () Bool)

(assert (= b_lambda!248301 (or d!2058599 b_lambda!248333)))

(declare-fun bs!1676886 () Bool)

(declare-fun d!2060007 () Bool)

(assert (= bs!1676886 (and d!2060007 d!2058599)))

(assert (=> bs!1676886 (= (dynLambda!26053 lambda!365092 (h!71941 (exprs!6323 (h!71942 zl!343)))) (validRegex!8175 (h!71941 (exprs!6323 (h!71942 zl!343)))))))

(assert (=> bs!1676886 m!7347080))

(assert (=> b!6564408 d!2060007))

(declare-fun b_lambda!248335 () Bool)

(assert (= b_lambda!248293 (or b!6561265 b_lambda!248335)))

(declare-fun bs!1676887 () Bool)

(declare-fun d!2060009 () Bool)

(assert (= bs!1676887 (and d!2060009 b!6561265)))

(assert (=> bs!1676887 (= (dynLambda!26053 lambda!365045 (h!71941 lt!2406344)) (validRegex!8175 (h!71941 lt!2406344)))))

(declare-fun m!7347090 () Bool)

(assert (=> bs!1676887 m!7347090))

(assert (=> b!6563741 d!2060009))

(check-sat (not bm!571051) (not b!6564686) (not b!6563838) (not bs!1676883) (not b!6563906) (not b!6564099) (not bm!571131) (not b_lambda!248313) (not d!2059829) (not b!6564512) (not b!6564643) (not b!6564274) (not d!2059843) (not bm!571167) (not b!6564192) (not d!2059511) (not d!2059685) (not bm!571163) (not b!6564453) (not b!6564043) (not b!6564372) (not b!6564804) (not d!2059719) (not b!6564144) (not b!6564599) (not bm!571071) (not bm!570995) (not b!6564173) (not b!6564245) (not b!6563770) (not b!6564666) (not bm!571086) (not d!2059961) (not d!2059743) (not b!6564613) (not b!6564070) (not bm!571132) (not bm!571106) (not d!2059975) (not d!2059517) (not b!6563746) (not b!6564876) (not bm!571093) (not b!6564820) (not bm!571038) (not bm!571006) (not b!6564588) (not b!6563777) (not d!2059679) (not setNonEmpty!44813) (not b!6564407) (not b!6564200) (not bm!571002) (not bm!571166) (not d!2059933) (not b!6564808) (not d!2059463) (not b!6563778) (not d!2059837) (not d!2059457) (not b!6564470) (not b!6564836) (not d!2059951) (not d!2059623) (not bm!571060) (not bm!571110) (not bm!571120) (not b!6564877) (not bm!571116) (not b!6564861) (not b_lambda!248239) (not d!2059921) (not d!2059787) (not b!6564392) (not b!6564855) (not bm!571050) (not b!6564017) (not b!6563803) (not b!6564878) (not b!6564539) (not b!6563958) (not b!6563742) (not b!6564840) (not b!6564511) (not b!6564894) (not d!2059745) (not d!2059611) (not bm!571109) (not b!6564617) (not b!6564618) (not d!2059617) (not b_lambda!248321) (not b!6564361) (not b!6564851) (not b!6564868) (not b!6564054) (not b!6564671) (not b!6564814) (not b!6564874) (not d!2059857) (not b!6564243) (not b!6564752) (not b_lambda!248333) (not bm!571085) (not d!2059895) (not bm!571098) (not d!2059591) (not b!6563782) (not b!6564758) (not bm!571124) (not b!6564829) (not b!6564622) (not b!6564725) (not bm!571175) (not b!6564842) (not bm!571128) (not b!6564832) (not bm!571082) (not b!6563997) (not b!6564215) (not d!2059949) (not bm!571153) (not b!6564217) (not b!6563753) (not bm!571149) (not bm!571084) (not b!6564828) (not b!6564213) (not b!6564784) (not b!6564821) (not b!6563815) (not b!6563883) (not b!6564609) (not d!2059475) (not b!6564248) (not bm!571087) (not b!6563963) (not b!6564662) (not b!6564494) (not b!6564270) (not d!2059923) (not b!6564267) (not b!6563756) (not d!2059459) (not b!6564655) (not b!6563763) (not d!2059605) (not b!6564221) tp_is_empty!42131 (not bm!571095) (not bm!571076) (not b!6564292) (not bm!571171) (not b!6563960) (not b!6564122) (not b!6564710) (not b!6564530) (not b!6564165) (not b!6564892) (not bm!571169) (not b!6564756) (not d!2059859) (not b!6564709) (not d!2059633) (not bm!571090) (not b!6564790) (not bm!571056) (not b!6564706) (not b!6564403) (not b!6564833) (not b!6564729) (not d!2059863) (not b!6564380) (not b!6564702) (not bm!571096) (not d!2059641) (not b!6564580) (not b!6564863) (not b!6564726) (not b!6564785) (not b!6564621) (not d!2059963) (not b!6564786) (not d!2059819) (not bm!571025) (not b!6564789) (not bm!571150) (not b!6564816) (not d!2059875) (not bm!571103) (not d!2059735) (not d!2059451) (not b!6564834) (not d!2059839) (not d!2059555) (not d!2059995) (not d!2059867) (not b!6564203) (not d!2059561) (not b!6564396) (not d!2059655) (not b!6564437) (not b!6564780) (not b!6564644) (not b!6564040) (not b!6564177) (not b_lambda!248325) (not b!6564229) (not setNonEmpty!44816) (not b!6564632) (not b!6564813) (not b!6564654) (not b_lambda!248317) (not b!6564282) (not b!6564847) (not b!6564461) (not b!6563962) (not d!2059817) (not b!6564071) (not b!6563964) (not b!6563875) (not b!6564424) (not b!6564068) (not d!2059901) (not d!2059943) (not bm!570998) (not d!2059471) (not d!2059821) (not b!6564615) (not d!2059637) (not d!2059663) (not bm!571147) (not b!6564873) (not d!2059899) (not bm!571033) (not b!6564591) (not b!6564858) (not d!2059763) (not b!6563831) (not b!6564798) (not b!6564368) (not bm!571066) (not b!6564768) (not d!2059587) (not d!2059841) (not setNonEmpty!44809) (not b!6564575) (not bm!571094) (not b!6564889) (not b!6563819) (not b!6564674) (not b!6564207) (not setNonEmpty!44814) (not d!2059891) (not bm!571102) (not b!6564652) (not b!6564422) (not b!6564016) (not bm!571058) (not bm!571100) (not b!6564234) (not b!6564462) (not b!6564263) (not b!6564649) (not b!6564625) (not bm!571073) (not b!6564558) (not b!6564199) (not b!6564810) (not b!6564517) (not d!2059683) (not b!6564080) (not b!6563793) (not b!6564753) (not b!6564479) (not b!6563740) (not d!2059715) (not bm!571008) (not d!2059677) (not b!6563867) (not d!2059803) (not b!6563776) (not b!6564273) (not bm!571174) (not b!6564430) (not bm!571092) (not d!2059643) (not bm!570985) (not b!6564105) (not bs!1676882) (not d!2059565) (not d!2059523) (not b!6564370) (not d!2059627) (not b!6564812) (not b!6564058) (not bm!570982) (not b!6564443) (not d!2059889) (not b!6564179) (not b!6564504) (not b_lambda!248327) (not b!6564482) (not b!6564431) (not b!6564330) (not b!6564759) (not b!6564533) (not bm!571129) (not d!2059769) (not b!6564455) (not d!2059885) (not b!6564458) (not b!6564582) (not b!6564056) (not d!2059519) (not d!2059453) (not b!6564843) (not bm!571161) (not bm!571029) (not b!6564112) (not b!6564865) (not b!6564322) (not b!6564689) (not b!6563930) (not bm!571168) (not b!6564459) (not b!6564523) (not b!6563783) (not b!6564799) (not b!6563797) (not d!2059855) (not b!6564114) (not b!6564254) (not d!2059621) (not bm!571126) (not d!2059765) (not b!6563784) (not d!2059671) (not b!6563691) (not b!6563796) (not d!2059903) (not d!2059827) (not b!6564748) (not d!2059733) (not b!6564212) (not b!6564249) (not b!6564602) (not b!6564187) (not b!6564841) (not b!6564825) (not b!6564728) (not b!6563744) (not b_lambda!248335) (not b!6564703) (not b!6564057) (not b!6564546) (not b!6564426) (not d!2059909) (not b!6564794) (not b!6564849) (not bm!571078) (not d!2059657) (not b!6564371) (not b!6564549) (not b!6564086) (not d!2059925) (not b_lambda!248331) (not b!6564266) (not b!6564824) (not b!6564317) (not bm!571172) (not b!6564247) (not d!2059947) (not b!6564386) (not b!6564085) (not d!2059599) (not b!6564516) (not d!2059445) (not b!6564727) (not b!6564579) (not d!2059781) (not b!6564175) (not d!2059981) (not d!2059549) (not b!6564214) (not bm!571067) (not b!6564170) (not bm!571135) (not b!6564393) (not bm!571140) (not b_lambda!248235) (not b!6564405) (not d!2059653) (not b!6564639) (not b!6564365) (not b!6564782) (not bm!570993) (not b!6564009) (not d!2059937) (not b!6564395) (not bm!571064) (not b!6564809) (not b!6564642) (not b!6564773) (not b!6564042) (not b!6563874) (not bm!571001) (not bm!571148) (not d!2059481) (not b!6564497) (not b!6564106) (not b!6564679) (not b!6564697) (not b!6564704) (not bm!571039) (not b!6564624) (not bm!571016) (not b!6563847) (not bm!571143) (not b!6564325) (not b!6564893) (not b!6564801) (not bm!571155) (not b!6563729) (not b!6564685) (not b!6564115) (not b!6563946) (not bm!570992) (not b!6563972) (not d!2059535) (not b!6564797) (not d!2059721) (not bm!571079) (not bm!571070) (not b!6564072) (not bm!571021) (not d!2059945) (not b!6564733) (not b!6564208) (not b!6564358) (not b!6564616) (not d!2059675) (not bm!571034) (not d!2059649) (not d!2059635) (not bm!571053) (not bm!570997) (not b!6564184) (not b!6564532) (not b!6564025) (not b!6564864) (not setNonEmpty!44815) (not bm!571139) (not b!6564826) (not d!2059659) (not b!6564885) (not bm!570990) (not bm!571099) (not d!2059959) (not bs!1676884) (not b!6563821) (not b!6564550) (not bm!571113) (not b!6564204) (not d!2059469) (not b!6563894) (not b!6564289) (not d!2059455) (not b!6564781) (not b!6564138) (not d!2059557) (not b!6564870) (not b!6564509) (not d!2059957) (not b!6564233) (not b!6564587) (not d!2059971) (not b!6563969) (not d!2059767) (not b!6563844) (not b!6564377) (not d!2059477) (not b!6564082) (not d!2059993) (not b!6564409) (not b!6564094) (not b!6564555) (not b!6563851) (not d!2059625) (not bm!571134) (not d!2059877) (not b!6563786) (not b!6564279) (not d!2059835) (not b!6564660) (not b!6564235) (not b!6564634) (not d!2059791) (not b!6564741) (not b!6564084) (not d!2059779) (not b!6564866) (not b!6564845) (not bm!570989) (not d!2059695) (not b!6564315) (not d!2059645) (not d!2059687) (not bm!571014) (not b!6563888) (not b!6564049) (not b!6564600) (not d!2059717) (not b!6564151) (not bm!570988) (not bm!571156) (not bm!571152) (not b!6563914) (not b!6564293) (not b!6564428) (not b!6564440) (not bm!571011) (not b!6564818) (not bm!571142) (not bm!571005) (not d!2059701) (not bm!570981) (not b!6563690) (not bs!1676885) (not b!6563944) (not b!6564837) (not b!6564854) (not b!6564788) (not b_lambda!248319) (not b!6564346) (not bm!571154) (not bm!571117) (not b!6564796) (not b!6563842) (not b!6563876) (not b!6564018) (not bm!571121) (not b!6564586) (not bm!571061) (not b!6564581) (not b!6564316) (not b!6564664) (not b!6564701) (not b!6563823) (not b!6564822) (not b!6564363) (not bm!571017) (not b!6564880) (not d!2059639) (not b!6564264) (not b!6564688) (not b!6563694) (not b!6564857) (not d!2059953) (not d!2059989) (not d!2059699) (not b!6564633) (not d!2059697) (not bm!571145) (not bm!571031) (not d!2059823) (not d!2059873) (not b!6564544) (not b!6564805) (not b!6563943) (not d!2059973) (not b!6564881) (not b!6563859) (not bm!571112) (not b!6564765) (not b!6564432) (not bm!571004) (not b!6564665) (not b!6563843) (not bm!571068) (not d!2059785) (not b!6564338) (not d!2059505) (not b!6564648) (not b!6564886) (not d!2059783) (not b!6564872) (not b!6564508) (not b!6564859) (not bm!571158) (not bs!1676887) (not bm!571127) (not bm!571138) (not d!2059893) (not b!6564044) (not b_lambda!248231) (not b!6564366) (not b!6564452) (not bm!571089) (not d!2059497) (not b!6564116) (not b!6564838) (not bm!571107) (not d!2059609) (not b!6563850) (not b!6564884) (not d!2059965) (not b_lambda!248323) (not b!6563950) (not b!6564052) (not d!2059941) (not b!6564817) (not b!6564121) (not b!6563693) (not b!6564077) (not b!6564219) (not b!6564451) (not bm!571122) (not b!6564163) (not d!2059775) (not b!6564850) (not b!6563866) (not b!6563748) (not b!6564657) (not d!2059713) (not b!6564792) (not b!6564178) (not b!6564159) (not d!2059931) (not b!6564360) (not d!2059509) (not b!6564882) (not b!6564548) (not bm!571125) (not d!2059521) (not b!6564630) (not bm!571040) (not b_lambda!248237) (not bm!571012) (not d!2059473) (not b!6563769) (not b!6564063) (not b!6564033) (not b!6564890) (not d!2059571) (not b!6564257) (not d!2059955) (not d!2059693) (not bm!571123) (not b!6564161) (not bm!571026) (not b!6564352) (not b!6564846) (not d!2059603) (not bm!571023) (not b!6564793) (not b!6564563) (not d!2059939) (not bs!1676886) (not d!2059681) (not bm!571055) (not b_lambda!248233) (not bm!571159) (not b!6563822) (not b!6564356) (not b!6564830) (not b!6564164) (not b!6564534) (not b!6564614) (not b!6564364) (not d!2059771) (not b!6564240) (not b!6564483) (not b!6564220) (not b!6563936) (not d!2059789) (not b!6564145) (not b!6563828) (not d!2059915) (not b!6564313) (not b!6564272) (not b!6564869) (not b!6564481) (not b!6564888) (not b!6564306) (not b!6564354) (not b!6564111) (not bm!571030) (not b!6564651) (not b!6563774) (not b!6564542) (not b!6564722) (not setNonEmpty!44812) (not b!6563846) (not b!6563773) (not b!6564113) (not b!6564803) (not b!6563747) (not bm!571009) (not b!6564486) (not bm!571114) (not d!2059851) (not d!2059853) (not b!6564066) (not b!6563947) (not b_lambda!248329) (not b!6564658) (not d!2059537) (not b!6564853) (not b!6564760) (not b!6564226) (not bm!570984) (not bs!1676881) (not b!6563785) (not bm!571037) (not b!6564806) (not d!2059871) (not b!6564659) (not b!6564471) (not bm!571074) (not b!6564724) (not b_lambda!248315) (not d!2059773) (not b!6563922) (not b!6564231) (not b!6563845) (not b!6564477) (not d!2059461) (not b!6564119) (not b!6564091) (not d!2059483) (not bm!571065) (not bm!571020) (not bm!571083) (not b!6563766) (not b!6563767) (not d!2059967) (not b!6564206) (not bm!571164) (not b!6564800) (not b!6564456) (not b!6564130) (not b!6564705) (not d!2059525) (not b!6564862) (not b!6564013) (not b!6564718))
(check-sat)
