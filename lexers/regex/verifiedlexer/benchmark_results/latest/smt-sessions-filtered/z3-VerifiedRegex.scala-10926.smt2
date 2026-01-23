; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!565494 () Bool)

(assert start!565494)

(declare-fun b!5376329 () Bool)

(assert (=> b!5376329 true))

(assert (=> b!5376329 true))

(declare-fun lambda!277857 () Int)

(declare-fun lambda!277856 () Int)

(assert (=> b!5376329 (not (= lambda!277857 lambda!277856))))

(assert (=> b!5376329 true))

(assert (=> b!5376329 true))

(declare-fun b!5376325 () Bool)

(assert (=> b!5376325 true))

(declare-fun bs!1244700 () Bool)

(declare-fun b!5376348 () Bool)

(assert (= bs!1244700 (and b!5376348 b!5376329)))

(declare-datatypes ((C!30468 0))(
  ( (C!30469 (val!24936 Int)) )
))
(declare-datatypes ((Regex!15099 0))(
  ( (ElementMatch!15099 (c!936875 C!30468)) (Concat!23944 (regOne!30710 Regex!15099) (regTwo!30710 Regex!15099)) (EmptyExpr!15099) (Star!15099 (reg!15428 Regex!15099)) (EmptyLang!15099) (Union!15099 (regOne!30711 Regex!15099) (regTwo!30711 Regex!15099)) )
))
(declare-fun r!7292 () Regex!15099)

(declare-fun lambda!277859 () Int)

(declare-fun lt!2189414 () Regex!15099)

(assert (=> bs!1244700 (= (= lt!2189414 (regOne!30710 r!7292)) (= lambda!277859 lambda!277856))))

(assert (=> bs!1244700 (not (= lambda!277859 lambda!277857))))

(assert (=> b!5376348 true))

(assert (=> b!5376348 true))

(assert (=> b!5376348 true))

(declare-fun lambda!277860 () Int)

(assert (=> bs!1244700 (not (= lambda!277860 lambda!277856))))

(assert (=> bs!1244700 (= (= lt!2189414 (regOne!30710 r!7292)) (= lambda!277860 lambda!277857))))

(assert (=> b!5376348 (not (= lambda!277860 lambda!277859))))

(assert (=> b!5376348 true))

(assert (=> b!5376348 true))

(assert (=> b!5376348 true))

(declare-fun bs!1244701 () Bool)

(declare-fun b!5376357 () Bool)

(assert (= bs!1244701 (and b!5376357 b!5376329)))

(declare-datatypes ((List!61596 0))(
  ( (Nil!61472) (Cons!61472 (h!67920 C!30468) (t!374819 List!61596)) )
))
(declare-fun s!2326 () List!61596)

(declare-datatypes ((tuple2!64596 0))(
  ( (tuple2!64597 (_1!35601 List!61596) (_2!35601 List!61596)) )
))
(declare-fun lt!2189400 () tuple2!64596)

(declare-fun lambda!277861 () Int)

(assert (=> bs!1244701 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) (regOne!30710 r!7292)) (= lt!2189414 (regTwo!30710 r!7292))) (= lambda!277861 lambda!277856))))

(assert (=> bs!1244701 (not (= lambda!277861 lambda!277857))))

(declare-fun bs!1244702 () Bool)

(assert (= bs!1244702 (and b!5376357 b!5376348)))

(assert (=> bs!1244702 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) lt!2189414) (= lt!2189414 (regTwo!30710 r!7292))) (= lambda!277861 lambda!277859))))

(assert (=> bs!1244702 (not (= lambda!277861 lambda!277860))))

(assert (=> b!5376357 true))

(assert (=> b!5376357 true))

(assert (=> b!5376357 true))

(declare-fun lambda!277862 () Int)

(assert (=> b!5376357 (not (= lambda!277862 lambda!277861))))

(assert (=> bs!1244701 (not (= lambda!277862 lambda!277857))))

(assert (=> bs!1244702 (not (= lambda!277862 lambda!277860))))

(assert (=> bs!1244701 (not (= lambda!277862 lambda!277856))))

(assert (=> bs!1244702 (not (= lambda!277862 lambda!277859))))

(assert (=> b!5376357 true))

(assert (=> b!5376357 true))

(assert (=> b!5376357 true))

(declare-fun lambda!277863 () Int)

(assert (=> b!5376357 (not (= lambda!277863 lambda!277861))))

(assert (=> b!5376357 (not (= lambda!277863 lambda!277862))))

(assert (=> bs!1244701 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) (regOne!30710 r!7292)) (= lt!2189414 (regTwo!30710 r!7292))) (= lambda!277863 lambda!277857))))

(assert (=> bs!1244702 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) lt!2189414) (= lt!2189414 (regTwo!30710 r!7292))) (= lambda!277863 lambda!277860))))

(assert (=> bs!1244701 (not (= lambda!277863 lambda!277856))))

(assert (=> bs!1244702 (not (= lambda!277863 lambda!277859))))

(assert (=> b!5376357 true))

(assert (=> b!5376357 true))

(assert (=> b!5376357 true))

(declare-fun b!5376324 () Bool)

(declare-fun res!2282416 () Bool)

(declare-fun e!3335553 () Bool)

(assert (=> b!5376324 (=> res!2282416 e!3335553)))

(declare-fun matchR!7284 (Regex!15099 List!61596) Bool)

(assert (=> b!5376324 (= res!2282416 (not (matchR!7284 lt!2189414 (_1!35601 lt!2189400))))))

(declare-fun e!3335557 () Bool)

(declare-fun e!3335540 () Bool)

(assert (=> b!5376325 (= e!3335557 e!3335540)))

(declare-fun res!2282401 () Bool)

(assert (=> b!5376325 (=> res!2282401 e!3335540)))

(get-info :version)

(assert (=> b!5376325 (= res!2282401 (or (and ((_ is ElementMatch!15099) (regOne!30710 r!7292)) (= (c!936875 (regOne!30710 r!7292)) (h!67920 s!2326))) ((_ is Union!15099) (regOne!30710 r!7292))))))

(declare-datatypes ((Unit!153914 0))(
  ( (Unit!153915) )
))
(declare-fun lt!2189431 () Unit!153914)

(declare-fun e!3335552 () Unit!153914)

(assert (=> b!5376325 (= lt!2189431 e!3335552)))

(declare-fun c!936874 () Bool)

(declare-datatypes ((List!61597 0))(
  ( (Nil!61473) (Cons!61473 (h!67921 Regex!15099) (t!374820 List!61597)) )
))
(declare-datatypes ((Context!8966 0))(
  ( (Context!8967 (exprs!4983 List!61597)) )
))
(declare-datatypes ((List!61598 0))(
  ( (Nil!61474) (Cons!61474 (h!67922 Context!8966) (t!374821 List!61598)) )
))
(declare-fun zl!343 () List!61598)

(declare-fun nullable!5268 (Regex!15099) Bool)

(assert (=> b!5376325 (= c!936874 (nullable!5268 (h!67921 (exprs!4983 (h!67922 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8966))

(declare-fun lambda!277858 () Int)

(declare-fun flatMap!826 ((InoxSet Context!8966) Int) (InoxSet Context!8966))

(declare-fun derivationStepZipperUp!471 (Context!8966 C!30468) (InoxSet Context!8966))

(assert (=> b!5376325 (= (flatMap!826 z!1189 lambda!277858) (derivationStepZipperUp!471 (h!67922 zl!343) (h!67920 s!2326)))))

(declare-fun lt!2189425 () Unit!153914)

(declare-fun lemmaFlatMapOnSingletonSet!358 ((InoxSet Context!8966) Context!8966 Int) Unit!153914)

(assert (=> b!5376325 (= lt!2189425 (lemmaFlatMapOnSingletonSet!358 z!1189 (h!67922 zl!343) lambda!277858))))

(declare-fun lt!2189396 () (InoxSet Context!8966))

(declare-fun lt!2189401 () Context!8966)

(assert (=> b!5376325 (= lt!2189396 (derivationStepZipperUp!471 lt!2189401 (h!67920 s!2326)))))

(declare-fun lt!2189420 () (InoxSet Context!8966))

(declare-fun derivationStepZipperDown!547 (Regex!15099 Context!8966 C!30468) (InoxSet Context!8966))

(assert (=> b!5376325 (= lt!2189420 (derivationStepZipperDown!547 (h!67921 (exprs!4983 (h!67922 zl!343))) lt!2189401 (h!67920 s!2326)))))

(assert (=> b!5376325 (= lt!2189401 (Context!8967 (t!374820 (exprs!4983 (h!67922 zl!343)))))))

(declare-fun lt!2189424 () (InoxSet Context!8966))

(assert (=> b!5376325 (= lt!2189424 (derivationStepZipperUp!471 (Context!8967 (Cons!61473 (h!67921 (exprs!4983 (h!67922 zl!343))) (t!374820 (exprs!4983 (h!67922 zl!343))))) (h!67920 s!2326)))))

(declare-fun b!5376326 () Bool)

(declare-fun res!2282412 () Bool)

(assert (=> b!5376326 (=> res!2282412 e!3335553)))

(assert (=> b!5376326 (= res!2282412 (not (matchR!7284 (regTwo!30710 r!7292) (_2!35601 lt!2189400))))))

(declare-fun b!5376327 () Bool)

(declare-fun res!2282410 () Bool)

(declare-fun e!3335556 () Bool)

(assert (=> b!5376327 (=> res!2282410 e!3335556)))

(declare-fun generalisedConcat!768 (List!61597) Regex!15099)

(assert (=> b!5376327 (= res!2282410 (not (= r!7292 (generalisedConcat!768 (exprs!4983 (h!67922 zl!343))))))))

(declare-fun b!5376328 () Bool)

(declare-fun Unit!153916 () Unit!153914)

(assert (=> b!5376328 (= e!3335552 Unit!153916)))

(assert (=> b!5376329 (= e!3335556 e!3335557)))

(declare-fun res!2282397 () Bool)

(assert (=> b!5376329 (=> res!2282397 e!3335557)))

(declare-fun lt!2189402 () Bool)

(declare-fun lt!2189399 () Bool)

(assert (=> b!5376329 (= res!2282397 (or (not (= lt!2189402 lt!2189399)) ((_ is Nil!61472) s!2326)))))

(declare-fun Exists!2280 (Int) Bool)

(assert (=> b!5376329 (= (Exists!2280 lambda!277856) (Exists!2280 lambda!277857))))

(declare-fun lt!2189433 () Unit!153914)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!934 (Regex!15099 Regex!15099 List!61596) Unit!153914)

(assert (=> b!5376329 (= lt!2189433 (lemmaExistCutMatchRandMatchRSpecEquivalent!934 (regOne!30710 r!7292) (regTwo!30710 r!7292) s!2326))))

(assert (=> b!5376329 (= lt!2189399 (Exists!2280 lambda!277856))))

(declare-datatypes ((Option!15210 0))(
  ( (None!15209) (Some!15209 (v!51238 tuple2!64596)) )
))
(declare-fun isDefined!11913 (Option!15210) Bool)

(declare-fun findConcatSeparation!1624 (Regex!15099 Regex!15099 List!61596 List!61596 List!61596) Option!15210)

(assert (=> b!5376329 (= lt!2189399 (isDefined!11913 (findConcatSeparation!1624 (regOne!30710 r!7292) (regTwo!30710 r!7292) Nil!61472 s!2326 s!2326)))))

(declare-fun lt!2189429 () Unit!153914)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1388 (Regex!15099 Regex!15099 List!61596) Unit!153914)

(assert (=> b!5376329 (= lt!2189429 (lemmaFindConcatSeparationEquivalentToExists!1388 (regOne!30710 r!7292) (regTwo!30710 r!7292) s!2326))))

(declare-fun b!5376330 () Bool)

(declare-fun e!3335551 () Bool)

(assert (=> b!5376330 (= e!3335551 (nullable!5268 (regOne!30710 (regOne!30710 r!7292))))))

(declare-fun b!5376331 () Bool)

(declare-fun e!3335555 () Bool)

(declare-fun tp_is_empty!39451 () Bool)

(declare-fun tp!1490804 () Bool)

(assert (=> b!5376331 (= e!3335555 (and tp_is_empty!39451 tp!1490804))))

(declare-fun b!5376332 () Bool)

(declare-fun e!3335541 () Bool)

(declare-fun matchZipper!1343 ((InoxSet Context!8966) List!61596) Bool)

(assert (=> b!5376332 (= e!3335541 (matchZipper!1343 lt!2189396 (t!374819 s!2326)))))

(declare-fun b!5376333 () Bool)

(declare-fun e!3335548 () Bool)

(assert (=> b!5376333 (= e!3335548 tp_is_empty!39451)))

(declare-fun b!5376334 () Bool)

(declare-fun res!2282415 () Bool)

(declare-fun e!3335545 () Bool)

(assert (=> b!5376334 (=> res!2282415 e!3335545)))

(declare-fun lt!2189406 () Context!8966)

(declare-fun lt!2189395 () Regex!15099)

(declare-fun unfocusZipper!841 (List!61598) Regex!15099)

(assert (=> b!5376334 (= res!2282415 (not (= (unfocusZipper!841 (Cons!61474 lt!2189406 Nil!61474)) lt!2189395)))))

(declare-fun b!5376335 () Bool)

(declare-fun Unit!153917 () Unit!153914)

(assert (=> b!5376335 (= e!3335552 Unit!153917)))

(declare-fun lt!2189411 () Unit!153914)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!336 ((InoxSet Context!8966) (InoxSet Context!8966) List!61596) Unit!153914)

(assert (=> b!5376335 (= lt!2189411 (lemmaZipperConcatMatchesSameAsBothZippers!336 lt!2189420 lt!2189396 (t!374819 s!2326)))))

(declare-fun res!2282404 () Bool)

(assert (=> b!5376335 (= res!2282404 (matchZipper!1343 lt!2189420 (t!374819 s!2326)))))

(assert (=> b!5376335 (=> res!2282404 e!3335541)))

(assert (=> b!5376335 (= (matchZipper!1343 ((_ map or) lt!2189420 lt!2189396) (t!374819 s!2326)) e!3335541)))

(declare-fun b!5376336 () Bool)

(declare-fun tp!1490801 () Bool)

(declare-fun tp!1490798 () Bool)

(assert (=> b!5376336 (= e!3335548 (and tp!1490801 tp!1490798))))

(declare-fun b!5376337 () Bool)

(declare-fun res!2282426 () Bool)

(assert (=> b!5376337 (=> res!2282426 e!3335556)))

(declare-fun isEmpty!33458 (List!61598) Bool)

(assert (=> b!5376337 (= res!2282426 (not (isEmpty!33458 (t!374821 zl!343))))))

(declare-fun b!5376338 () Bool)

(declare-fun e!3335539 () Bool)

(declare-fun e!3335559 () Bool)

(assert (=> b!5376338 (= e!3335539 e!3335559)))

(declare-fun res!2282424 () Bool)

(assert (=> b!5376338 (=> res!2282424 e!3335559)))

(declare-fun lt!2189412 () (InoxSet Context!8966))

(declare-fun lt!2189430 () (InoxSet Context!8966))

(assert (=> b!5376338 (= res!2282424 (not (= lt!2189412 lt!2189430)))))

(declare-fun lt!2189428 () Context!8966)

(declare-fun lt!2189410 () (InoxSet Context!8966))

(assert (=> b!5376338 (= (flatMap!826 lt!2189410 lambda!277858) (derivationStepZipperUp!471 lt!2189428 (h!67920 s!2326)))))

(declare-fun lt!2189434 () Unit!153914)

(assert (=> b!5376338 (= lt!2189434 (lemmaFlatMapOnSingletonSet!358 lt!2189410 lt!2189428 lambda!277858))))

(declare-fun lt!2189422 () (InoxSet Context!8966))

(assert (=> b!5376338 (= lt!2189422 (derivationStepZipperUp!471 lt!2189428 (h!67920 s!2326)))))

(declare-fun derivationStepZipper!1338 ((InoxSet Context!8966) C!30468) (InoxSet Context!8966))

(assert (=> b!5376338 (= lt!2189412 (derivationStepZipper!1338 lt!2189410 (h!67920 s!2326)))))

(assert (=> b!5376338 (= lt!2189410 (store ((as const (Array Context!8966 Bool)) false) lt!2189428 true))))

(declare-fun lt!2189404 () List!61597)

(assert (=> b!5376338 (= lt!2189428 (Context!8967 (Cons!61473 (reg!15428 (regOne!30710 r!7292)) lt!2189404)))))

(declare-fun b!5376339 () Bool)

(declare-fun e!3335560 () Bool)

(declare-fun ++!13402 (List!61596 List!61596) List!61596)

(assert (=> b!5376339 (= e!3335560 (= (++!13402 Nil!61472 (_1!35601 lt!2189400)) (_1!35601 lt!2189400)))))

(declare-fun b!5376340 () Bool)

(assert (=> b!5376340 (= e!3335540 e!3335539)))

(declare-fun res!2282427 () Bool)

(assert (=> b!5376340 (=> res!2282427 e!3335539)))

(assert (=> b!5376340 (= res!2282427 (not (= lt!2189420 lt!2189430)))))

(assert (=> b!5376340 (= lt!2189430 (derivationStepZipperDown!547 (reg!15428 (regOne!30710 r!7292)) lt!2189406 (h!67920 s!2326)))))

(assert (=> b!5376340 (= lt!2189406 (Context!8967 lt!2189404))))

(assert (=> b!5376340 (= lt!2189404 (Cons!61473 lt!2189414 (t!374820 (exprs!4983 (h!67922 zl!343)))))))

(assert (=> b!5376340 (= lt!2189414 (Star!15099 (reg!15428 (regOne!30710 r!7292))))))

(declare-fun b!5376341 () Bool)

(declare-fun res!2282418 () Bool)

(declare-fun e!3335546 () Bool)

(assert (=> b!5376341 (=> (not res!2282418) (not e!3335546))))

(declare-fun toList!8883 ((InoxSet Context!8966)) List!61598)

(assert (=> b!5376341 (= res!2282418 (= (toList!8883 z!1189) zl!343))))

(declare-fun b!5376342 () Bool)

(declare-fun e!3335550 () Bool)

(declare-fun tp!1490799 () Bool)

(assert (=> b!5376342 (= e!3335550 tp!1490799)))

(declare-fun b!5376343 () Bool)

(declare-fun res!2282396 () Bool)

(assert (=> b!5376343 (=> res!2282396 e!3335559)))

(assert (=> b!5376343 (= res!2282396 (not (= (matchZipper!1343 lt!2189410 s!2326) (matchZipper!1343 lt!2189412 (t!374819 s!2326)))))))

(declare-fun b!5376344 () Bool)

(declare-fun tp!1490796 () Bool)

(assert (=> b!5376344 (= e!3335548 tp!1490796)))

(declare-fun b!5376345 () Bool)

(declare-fun res!2282417 () Bool)

(assert (=> b!5376345 (=> res!2282417 e!3335556)))

(assert (=> b!5376345 (= res!2282417 (not ((_ is Cons!61473) (exprs!4983 (h!67922 zl!343)))))))

(declare-fun b!5376346 () Bool)

(declare-fun res!2282405 () Bool)

(assert (=> b!5376346 (=> res!2282405 e!3335556)))

(assert (=> b!5376346 (= res!2282405 (or ((_ is EmptyExpr!15099) r!7292) ((_ is EmptyLang!15099) r!7292) ((_ is ElementMatch!15099) r!7292) ((_ is Union!15099) r!7292) (not ((_ is Concat!23944) r!7292))))))

(declare-fun res!2282419 () Bool)

(assert (=> start!565494 (=> (not res!2282419) (not e!3335546))))

(declare-fun validRegex!6835 (Regex!15099) Bool)

(assert (=> start!565494 (= res!2282419 (validRegex!6835 r!7292))))

(assert (=> start!565494 e!3335546))

(assert (=> start!565494 e!3335548))

(declare-fun condSetEmpty!34865 () Bool)

(assert (=> start!565494 (= condSetEmpty!34865 (= z!1189 ((as const (Array Context!8966 Bool)) false)))))

(declare-fun setRes!34865 () Bool)

(assert (=> start!565494 setRes!34865))

(declare-fun e!3335549 () Bool)

(assert (=> start!565494 e!3335549))

(assert (=> start!565494 e!3335555))

(declare-fun b!5376347 () Bool)

(declare-fun res!2282411 () Bool)

(assert (=> b!5376347 (=> res!2282411 e!3335559)))

(declare-fun lt!2189407 () Regex!15099)

(assert (=> b!5376347 (= res!2282411 (not (= lt!2189407 r!7292)))))

(declare-fun e!3335544 () Bool)

(assert (=> b!5376348 (= e!3335544 e!3335553)))

(declare-fun res!2282407 () Bool)

(assert (=> b!5376348 (=> res!2282407 e!3335553)))

(assert (=> b!5376348 (= res!2282407 (not (= (++!13402 (_1!35601 lt!2189400) (_2!35601 lt!2189400)) s!2326)))))

(declare-fun lt!2189432 () Option!15210)

(declare-fun get!21157 (Option!15210) tuple2!64596)

(assert (=> b!5376348 (= lt!2189400 (get!21157 lt!2189432))))

(assert (=> b!5376348 (= (Exists!2280 lambda!277859) (Exists!2280 lambda!277860))))

(declare-fun lt!2189409 () Unit!153914)

(assert (=> b!5376348 (= lt!2189409 (lemmaExistCutMatchRandMatchRSpecEquivalent!934 lt!2189414 (regTwo!30710 r!7292) s!2326))))

(assert (=> b!5376348 (= (isDefined!11913 lt!2189432) (Exists!2280 lambda!277859))))

(assert (=> b!5376348 (= lt!2189432 (findConcatSeparation!1624 lt!2189414 (regTwo!30710 r!7292) Nil!61472 s!2326 s!2326))))

(declare-fun lt!2189413 () Unit!153914)

(assert (=> b!5376348 (= lt!2189413 (lemmaFindConcatSeparationEquivalentToExists!1388 lt!2189414 (regTwo!30710 r!7292) s!2326))))

(declare-fun b!5376349 () Bool)

(declare-fun e!3335558 () Bool)

(assert (=> b!5376349 (= e!3335559 e!3335558)))

(declare-fun res!2282423 () Bool)

(assert (=> b!5376349 (=> res!2282423 e!3335558)))

(assert (=> b!5376349 (= res!2282423 (not (= r!7292 lt!2189395)))))

(assert (=> b!5376349 (= lt!2189395 (Concat!23944 lt!2189414 (regTwo!30710 r!7292)))))

(declare-fun b!5376350 () Bool)

(declare-fun res!2282414 () Bool)

(assert (=> b!5376350 (=> res!2282414 e!3335553)))

(declare-fun isEmpty!33459 (List!61596) Bool)

(assert (=> b!5376350 (= res!2282414 (isEmpty!33459 (_1!35601 lt!2189400)))))

(declare-fun b!5376351 () Bool)

(declare-fun tp!1490805 () Bool)

(declare-fun tp!1490802 () Bool)

(assert (=> b!5376351 (= e!3335548 (and tp!1490805 tp!1490802))))

(declare-fun b!5376352 () Bool)

(declare-fun res!2282421 () Bool)

(assert (=> b!5376352 (=> res!2282421 e!3335540)))

(assert (=> b!5376352 (= res!2282421 (or ((_ is Concat!23944) (regOne!30710 r!7292)) (not ((_ is Star!15099) (regOne!30710 r!7292)))))))

(declare-fun b!5376353 () Bool)

(declare-fun res!2282406 () Bool)

(assert (=> b!5376353 (=> res!2282406 e!3335557)))

(declare-fun isEmpty!33460 (List!61597) Bool)

(assert (=> b!5376353 (= res!2282406 (isEmpty!33460 (t!374820 (exprs!4983 (h!67922 zl!343)))))))

(declare-fun b!5376354 () Bool)

(declare-fun e!3335554 () Bool)

(declare-fun lt!2189416 () Bool)

(assert (=> b!5376354 (= e!3335554 (or (not lt!2189402) lt!2189416))))

(declare-fun b!5376355 () Bool)

(declare-fun e!3335543 () Bool)

(assert (=> b!5376355 (= e!3335546 e!3335543)))

(declare-fun res!2282403 () Bool)

(assert (=> b!5376355 (=> (not res!2282403) (not e!3335543))))

(assert (=> b!5376355 (= res!2282403 (= r!7292 lt!2189407))))

(assert (=> b!5376355 (= lt!2189407 (unfocusZipper!841 zl!343))))

(declare-fun b!5376356 () Bool)

(declare-fun e!3335542 () Bool)

(assert (=> b!5376356 (= e!3335542 e!3335545)))

(declare-fun res!2282399 () Bool)

(assert (=> b!5376356 (=> res!2282399 e!3335545)))

(declare-fun lt!2189417 () Context!8966)

(assert (=> b!5376356 (= res!2282399 (not (= (unfocusZipper!841 (Cons!61474 lt!2189417 Nil!61474)) (reg!15428 (regOne!30710 r!7292)))))))

(declare-fun lt!2189419 () (InoxSet Context!8966))

(assert (=> b!5376356 (= (flatMap!826 lt!2189419 lambda!277858) (derivationStepZipperUp!471 lt!2189406 (h!67920 s!2326)))))

(declare-fun lt!2189415 () Unit!153914)

(assert (=> b!5376356 (= lt!2189415 (lemmaFlatMapOnSingletonSet!358 lt!2189419 lt!2189406 lambda!277858))))

(declare-fun lt!2189405 () (InoxSet Context!8966))

(assert (=> b!5376356 (= (flatMap!826 lt!2189405 lambda!277858) (derivationStepZipperUp!471 lt!2189417 (h!67920 s!2326)))))

(declare-fun lt!2189408 () Unit!153914)

(assert (=> b!5376356 (= lt!2189408 (lemmaFlatMapOnSingletonSet!358 lt!2189405 lt!2189417 lambda!277858))))

(declare-fun lt!2189403 () (InoxSet Context!8966))

(assert (=> b!5376356 (= lt!2189403 (derivationStepZipperUp!471 lt!2189406 (h!67920 s!2326)))))

(declare-fun lt!2189398 () (InoxSet Context!8966))

(assert (=> b!5376356 (= lt!2189398 (derivationStepZipperUp!471 lt!2189417 (h!67920 s!2326)))))

(assert (=> b!5376356 (= lt!2189419 (store ((as const (Array Context!8966 Bool)) false) lt!2189406 true))))

(assert (=> b!5376356 (= lt!2189405 (store ((as const (Array Context!8966 Bool)) false) lt!2189417 true))))

(assert (=> b!5376356 (= lt!2189417 (Context!8967 (Cons!61473 (reg!15428 (regOne!30710 r!7292)) Nil!61473)))))

(assert (=> b!5376357 (= e!3335553 e!3335560)))

(declare-fun res!2282420 () Bool)

(assert (=> b!5376357 (=> res!2282420 e!3335560)))

(assert (=> b!5376357 (= res!2282420 (not (validRegex!6835 (reg!15428 (regOne!30710 r!7292)))))))

(assert (=> b!5376357 (= (Exists!2280 lambda!277861) (Exists!2280 lambda!277863))))

(declare-fun lt!2189418 () Unit!153914)

(assert (=> b!5376357 (= lt!2189418 (lemmaExistCutMatchRandMatchRSpecEquivalent!934 (reg!15428 (regOne!30710 r!7292)) lt!2189414 (_1!35601 lt!2189400)))))

(assert (=> b!5376357 (= (Exists!2280 lambda!277861) (Exists!2280 lambda!277862))))

(declare-fun lt!2189394 () Unit!153914)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!364 (Regex!15099 List!61596) Unit!153914)

(assert (=> b!5376357 (= lt!2189394 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!364 (reg!15428 (regOne!30710 r!7292)) (_1!35601 lt!2189400)))))

(assert (=> b!5376357 (= (isDefined!11913 (findConcatSeparation!1624 (reg!15428 (regOne!30710 r!7292)) lt!2189414 Nil!61472 (_1!35601 lt!2189400) (_1!35601 lt!2189400))) (Exists!2280 lambda!277861))))

(declare-fun lt!2189427 () Unit!153914)

(assert (=> b!5376357 (= lt!2189427 (lemmaFindConcatSeparationEquivalentToExists!1388 (reg!15428 (regOne!30710 r!7292)) lt!2189414 (_1!35601 lt!2189400)))))

(declare-fun matchRSpec!2202 (Regex!15099 List!61596) Bool)

(assert (=> b!5376357 (matchRSpec!2202 lt!2189414 (_1!35601 lt!2189400))))

(declare-fun lt!2189397 () Unit!153914)

(declare-fun mainMatchTheorem!2202 (Regex!15099 List!61596) Unit!153914)

(assert (=> b!5376357 (= lt!2189397 (mainMatchTheorem!2202 lt!2189414 (_1!35601 lt!2189400)))))

(declare-fun b!5376358 () Bool)

(declare-fun res!2282409 () Bool)

(assert (=> b!5376358 (=> res!2282409 e!3335556)))

(declare-fun generalisedUnion!1028 (List!61597) Regex!15099)

(declare-fun unfocusZipperList!541 (List!61598) List!61597)

(assert (=> b!5376358 (= res!2282409 (not (= r!7292 (generalisedUnion!1028 (unfocusZipperList!541 zl!343)))))))

(declare-fun b!5376359 () Bool)

(declare-fun res!2282402 () Bool)

(assert (=> b!5376359 (=> res!2282402 e!3335540)))

(assert (=> b!5376359 (= res!2282402 e!3335551)))

(declare-fun res!2282398 () Bool)

(assert (=> b!5376359 (=> (not res!2282398) (not e!3335551))))

(assert (=> b!5376359 (= res!2282398 ((_ is Concat!23944) (regOne!30710 r!7292)))))

(declare-fun b!5376360 () Bool)

(declare-fun tp!1490800 () Bool)

(declare-fun e!3335547 () Bool)

(declare-fun inv!80994 (Context!8966) Bool)

(assert (=> b!5376360 (= e!3335549 (and (inv!80994 (h!67922 zl!343)) e!3335547 tp!1490800))))

(declare-fun b!5376361 () Bool)

(assert (=> b!5376361 (= e!3335558 e!3335542)))

(declare-fun res!2282400 () Bool)

(assert (=> b!5376361 (=> res!2282400 e!3335542)))

(declare-fun lt!2189426 () Regex!15099)

(assert (=> b!5376361 (= res!2282400 (not (= (unfocusZipper!841 (Cons!61474 lt!2189428 Nil!61474)) lt!2189426)))))

(assert (=> b!5376361 (= lt!2189426 (Concat!23944 (reg!15428 (regOne!30710 r!7292)) lt!2189395))))

(declare-fun setIsEmpty!34865 () Bool)

(assert (=> setIsEmpty!34865 setRes!34865))

(declare-fun b!5376362 () Bool)

(declare-fun tp!1490797 () Bool)

(assert (=> b!5376362 (= e!3335547 tp!1490797)))

(declare-fun b!5376363 () Bool)

(assert (=> b!5376363 (= e!3335543 (not e!3335556))))

(declare-fun res!2282425 () Bool)

(assert (=> b!5376363 (=> res!2282425 e!3335556)))

(assert (=> b!5376363 (= res!2282425 (not ((_ is Cons!61474) zl!343)))))

(assert (=> b!5376363 (= lt!2189402 lt!2189416)))

(assert (=> b!5376363 (= lt!2189416 (matchRSpec!2202 r!7292 s!2326))))

(assert (=> b!5376363 (= lt!2189402 (matchR!7284 r!7292 s!2326))))

(declare-fun lt!2189423 () Unit!153914)

(assert (=> b!5376363 (= lt!2189423 (mainMatchTheorem!2202 r!7292 s!2326))))

(declare-fun b!5376364 () Bool)

(declare-fun res!2282413 () Bool)

(assert (=> b!5376364 (=> res!2282413 e!3335560)))

(assert (=> b!5376364 (= res!2282413 (not (validRegex!6835 lt!2189414)))))

(declare-fun b!5376365 () Bool)

(assert (=> b!5376365 (= e!3335545 e!3335544)))

(declare-fun res!2282408 () Bool)

(assert (=> b!5376365 (=> res!2282408 e!3335544)))

(assert (=> b!5376365 (= res!2282408 (not lt!2189402))))

(assert (=> b!5376365 e!3335554))

(declare-fun res!2282422 () Bool)

(assert (=> b!5376365 (=> (not res!2282422) (not e!3335554))))

(assert (=> b!5376365 (= res!2282422 (= (matchR!7284 lt!2189426 s!2326) (matchRSpec!2202 lt!2189426 s!2326)))))

(declare-fun lt!2189421 () Unit!153914)

(assert (=> b!5376365 (= lt!2189421 (mainMatchTheorem!2202 lt!2189426 s!2326))))

(declare-fun tp!1490803 () Bool)

(declare-fun setElem!34865 () Context!8966)

(declare-fun setNonEmpty!34865 () Bool)

(assert (=> setNonEmpty!34865 (= setRes!34865 (and tp!1490803 (inv!80994 setElem!34865) e!3335550))))

(declare-fun setRest!34865 () (InoxSet Context!8966))

(assert (=> setNonEmpty!34865 (= z!1189 ((_ map or) (store ((as const (Array Context!8966 Bool)) false) setElem!34865 true) setRest!34865))))

(assert (= (and start!565494 res!2282419) b!5376341))

(assert (= (and b!5376341 res!2282418) b!5376355))

(assert (= (and b!5376355 res!2282403) b!5376363))

(assert (= (and b!5376363 (not res!2282425)) b!5376337))

(assert (= (and b!5376337 (not res!2282426)) b!5376327))

(assert (= (and b!5376327 (not res!2282410)) b!5376345))

(assert (= (and b!5376345 (not res!2282417)) b!5376358))

(assert (= (and b!5376358 (not res!2282409)) b!5376346))

(assert (= (and b!5376346 (not res!2282405)) b!5376329))

(assert (= (and b!5376329 (not res!2282397)) b!5376353))

(assert (= (and b!5376353 (not res!2282406)) b!5376325))

(assert (= (and b!5376325 c!936874) b!5376335))

(assert (= (and b!5376325 (not c!936874)) b!5376328))

(assert (= (and b!5376335 (not res!2282404)) b!5376332))

(assert (= (and b!5376325 (not res!2282401)) b!5376359))

(assert (= (and b!5376359 res!2282398) b!5376330))

(assert (= (and b!5376359 (not res!2282402)) b!5376352))

(assert (= (and b!5376352 (not res!2282421)) b!5376340))

(assert (= (and b!5376340 (not res!2282427)) b!5376338))

(assert (= (and b!5376338 (not res!2282424)) b!5376343))

(assert (= (and b!5376343 (not res!2282396)) b!5376347))

(assert (= (and b!5376347 (not res!2282411)) b!5376349))

(assert (= (and b!5376349 (not res!2282423)) b!5376361))

(assert (= (and b!5376361 (not res!2282400)) b!5376356))

(assert (= (and b!5376356 (not res!2282399)) b!5376334))

(assert (= (and b!5376334 (not res!2282415)) b!5376365))

(assert (= (and b!5376365 res!2282422) b!5376354))

(assert (= (and b!5376365 (not res!2282408)) b!5376348))

(assert (= (and b!5376348 (not res!2282407)) b!5376324))

(assert (= (and b!5376324 (not res!2282416)) b!5376326))

(assert (= (and b!5376326 (not res!2282412)) b!5376350))

(assert (= (and b!5376350 (not res!2282414)) b!5376357))

(assert (= (and b!5376357 (not res!2282420)) b!5376364))

(assert (= (and b!5376364 (not res!2282413)) b!5376339))

(assert (= (and start!565494 ((_ is ElementMatch!15099) r!7292)) b!5376333))

(assert (= (and start!565494 ((_ is Concat!23944) r!7292)) b!5376351))

(assert (= (and start!565494 ((_ is Star!15099) r!7292)) b!5376344))

(assert (= (and start!565494 ((_ is Union!15099) r!7292)) b!5376336))

(assert (= (and start!565494 condSetEmpty!34865) setIsEmpty!34865))

(assert (= (and start!565494 (not condSetEmpty!34865)) setNonEmpty!34865))

(assert (= setNonEmpty!34865 b!5376342))

(assert (= b!5376360 b!5376362))

(assert (= (and start!565494 ((_ is Cons!61474) zl!343)) b!5376360))

(assert (= (and start!565494 ((_ is Cons!61472) s!2326)) b!5376331))

(declare-fun m!6402806 () Bool)

(assert (=> b!5376353 m!6402806))

(declare-fun m!6402808 () Bool)

(assert (=> b!5376334 m!6402808))

(declare-fun m!6402810 () Bool)

(assert (=> b!5376339 m!6402810))

(declare-fun m!6402812 () Bool)

(assert (=> b!5376357 m!6402812))

(declare-fun m!6402814 () Bool)

(assert (=> b!5376357 m!6402814))

(declare-fun m!6402816 () Bool)

(assert (=> b!5376357 m!6402816))

(declare-fun m!6402818 () Bool)

(assert (=> b!5376357 m!6402818))

(assert (=> b!5376357 m!6402816))

(assert (=> b!5376357 m!6402816))

(declare-fun m!6402820 () Bool)

(assert (=> b!5376357 m!6402820))

(declare-fun m!6402822 () Bool)

(assert (=> b!5376357 m!6402822))

(declare-fun m!6402824 () Bool)

(assert (=> b!5376357 m!6402824))

(declare-fun m!6402826 () Bool)

(assert (=> b!5376357 m!6402826))

(declare-fun m!6402828 () Bool)

(assert (=> b!5376357 m!6402828))

(assert (=> b!5376357 m!6402824))

(declare-fun m!6402830 () Bool)

(assert (=> b!5376357 m!6402830))

(declare-fun m!6402832 () Bool)

(assert (=> b!5376357 m!6402832))

(declare-fun m!6402834 () Bool)

(assert (=> b!5376343 m!6402834))

(declare-fun m!6402836 () Bool)

(assert (=> b!5376343 m!6402836))

(declare-fun m!6402838 () Bool)

(assert (=> b!5376337 m!6402838))

(declare-fun m!6402840 () Bool)

(assert (=> b!5376365 m!6402840))

(declare-fun m!6402842 () Bool)

(assert (=> b!5376365 m!6402842))

(declare-fun m!6402844 () Bool)

(assert (=> b!5376365 m!6402844))

(declare-fun m!6402846 () Bool)

(assert (=> b!5376325 m!6402846))

(declare-fun m!6402848 () Bool)

(assert (=> b!5376325 m!6402848))

(declare-fun m!6402850 () Bool)

(assert (=> b!5376325 m!6402850))

(declare-fun m!6402852 () Bool)

(assert (=> b!5376325 m!6402852))

(declare-fun m!6402854 () Bool)

(assert (=> b!5376325 m!6402854))

(declare-fun m!6402856 () Bool)

(assert (=> b!5376325 m!6402856))

(declare-fun m!6402858 () Bool)

(assert (=> b!5376325 m!6402858))

(declare-fun m!6402860 () Bool)

(assert (=> b!5376356 m!6402860))

(declare-fun m!6402862 () Bool)

(assert (=> b!5376356 m!6402862))

(declare-fun m!6402864 () Bool)

(assert (=> b!5376356 m!6402864))

(declare-fun m!6402866 () Bool)

(assert (=> b!5376356 m!6402866))

(declare-fun m!6402868 () Bool)

(assert (=> b!5376356 m!6402868))

(declare-fun m!6402870 () Bool)

(assert (=> b!5376356 m!6402870))

(declare-fun m!6402872 () Bool)

(assert (=> b!5376356 m!6402872))

(declare-fun m!6402874 () Bool)

(assert (=> b!5376356 m!6402874))

(declare-fun m!6402876 () Bool)

(assert (=> b!5376356 m!6402876))

(declare-fun m!6402878 () Bool)

(assert (=> b!5376350 m!6402878))

(declare-fun m!6402880 () Bool)

(assert (=> b!5376335 m!6402880))

(declare-fun m!6402882 () Bool)

(assert (=> b!5376335 m!6402882))

(declare-fun m!6402884 () Bool)

(assert (=> b!5376335 m!6402884))

(declare-fun m!6402886 () Bool)

(assert (=> b!5376358 m!6402886))

(assert (=> b!5376358 m!6402886))

(declare-fun m!6402888 () Bool)

(assert (=> b!5376358 m!6402888))

(declare-fun m!6402890 () Bool)

(assert (=> b!5376361 m!6402890))

(declare-fun m!6402892 () Bool)

(assert (=> b!5376329 m!6402892))

(declare-fun m!6402894 () Bool)

(assert (=> b!5376329 m!6402894))

(declare-fun m!6402896 () Bool)

(assert (=> b!5376329 m!6402896))

(assert (=> b!5376329 m!6402896))

(assert (=> b!5376329 m!6402892))

(declare-fun m!6402898 () Bool)

(assert (=> b!5376329 m!6402898))

(declare-fun m!6402900 () Bool)

(assert (=> b!5376329 m!6402900))

(declare-fun m!6402902 () Bool)

(assert (=> b!5376329 m!6402902))

(declare-fun m!6402904 () Bool)

(assert (=> b!5376324 m!6402904))

(declare-fun m!6402906 () Bool)

(assert (=> start!565494 m!6402906))

(declare-fun m!6402908 () Bool)

(assert (=> b!5376332 m!6402908))

(declare-fun m!6402910 () Bool)

(assert (=> b!5376326 m!6402910))

(declare-fun m!6402912 () Bool)

(assert (=> setNonEmpty!34865 m!6402912))

(declare-fun m!6402914 () Bool)

(assert (=> b!5376327 m!6402914))

(declare-fun m!6402916 () Bool)

(assert (=> b!5376340 m!6402916))

(declare-fun m!6402918 () Bool)

(assert (=> b!5376355 m!6402918))

(declare-fun m!6402920 () Bool)

(assert (=> b!5376348 m!6402920))

(declare-fun m!6402922 () Bool)

(assert (=> b!5376348 m!6402922))

(declare-fun m!6402924 () Bool)

(assert (=> b!5376348 m!6402924))

(declare-fun m!6402926 () Bool)

(assert (=> b!5376348 m!6402926))

(declare-fun m!6402928 () Bool)

(assert (=> b!5376348 m!6402928))

(declare-fun m!6402930 () Bool)

(assert (=> b!5376348 m!6402930))

(declare-fun m!6402932 () Bool)

(assert (=> b!5376348 m!6402932))

(declare-fun m!6402934 () Bool)

(assert (=> b!5376348 m!6402934))

(assert (=> b!5376348 m!6402924))

(declare-fun m!6402936 () Bool)

(assert (=> b!5376360 m!6402936))

(declare-fun m!6402938 () Bool)

(assert (=> b!5376364 m!6402938))

(declare-fun m!6402940 () Bool)

(assert (=> b!5376330 m!6402940))

(declare-fun m!6402942 () Bool)

(assert (=> b!5376338 m!6402942))

(declare-fun m!6402944 () Bool)

(assert (=> b!5376338 m!6402944))

(declare-fun m!6402946 () Bool)

(assert (=> b!5376338 m!6402946))

(declare-fun m!6402948 () Bool)

(assert (=> b!5376338 m!6402948))

(declare-fun m!6402950 () Bool)

(assert (=> b!5376338 m!6402950))

(declare-fun m!6402952 () Bool)

(assert (=> b!5376363 m!6402952))

(declare-fun m!6402954 () Bool)

(assert (=> b!5376363 m!6402954))

(declare-fun m!6402956 () Bool)

(assert (=> b!5376363 m!6402956))

(declare-fun m!6402958 () Bool)

(assert (=> b!5376341 m!6402958))

(check-sat (not b!5376348) (not b!5376342) (not b!5376355) (not b!5376324) (not b!5376337) (not b!5376343) (not b!5376329) (not start!565494) (not b!5376339) (not b!5376325) (not b!5376332) (not b!5376341) (not b!5376340) (not b!5376338) (not b!5376357) (not b!5376358) tp_is_empty!39451 (not b!5376334) (not b!5376365) (not b!5376344) (not b!5376364) (not b!5376351) (not b!5376360) (not setNonEmpty!34865) (not b!5376356) (not b!5376330) (not b!5376335) (not b!5376362) (not b!5376361) (not b!5376350) (not b!5376326) (not b!5376327) (not b!5376363) (not b!5376331) (not b!5376353) (not b!5376336))
(check-sat)
(get-model)

(declare-fun bm!384948 () Bool)

(declare-fun call!384953 () Bool)

(assert (=> bm!384948 (= call!384953 (isEmpty!33459 s!2326))))

(declare-fun b!5376424 () Bool)

(declare-fun e!3335590 () Bool)

(declare-fun derivativeStep!4228 (Regex!15099 C!30468) Regex!15099)

(declare-fun head!11532 (List!61596) C!30468)

(declare-fun tail!10629 (List!61596) List!61596)

(assert (=> b!5376424 (= e!3335590 (matchR!7284 (derivativeStep!4228 lt!2189426 (head!11532 s!2326)) (tail!10629 s!2326)))))

(declare-fun b!5376425 () Bool)

(declare-fun res!2282460 () Bool)

(declare-fun e!3335593 () Bool)

(assert (=> b!5376425 (=> res!2282460 e!3335593)))

(assert (=> b!5376425 (= res!2282460 (not ((_ is ElementMatch!15099) lt!2189426)))))

(declare-fun e!3335589 () Bool)

(assert (=> b!5376425 (= e!3335589 e!3335593)))

(declare-fun b!5376426 () Bool)

(declare-fun res!2282461 () Bool)

(declare-fun e!3335588 () Bool)

(assert (=> b!5376426 (=> (not res!2282461) (not e!3335588))))

(assert (=> b!5376426 (= res!2282461 (isEmpty!33459 (tail!10629 s!2326)))))

(declare-fun d!1720977 () Bool)

(declare-fun e!3335591 () Bool)

(assert (=> d!1720977 e!3335591))

(declare-fun c!936887 () Bool)

(assert (=> d!1720977 (= c!936887 ((_ is EmptyExpr!15099) lt!2189426))))

(declare-fun lt!2189446 () Bool)

(assert (=> d!1720977 (= lt!2189446 e!3335590)))

(declare-fun c!936886 () Bool)

(assert (=> d!1720977 (= c!936886 (isEmpty!33459 s!2326))))

(assert (=> d!1720977 (validRegex!6835 lt!2189426)))

(assert (=> d!1720977 (= (matchR!7284 lt!2189426 s!2326) lt!2189446)))

(declare-fun b!5376427 () Bool)

(declare-fun res!2282464 () Bool)

(assert (=> b!5376427 (=> res!2282464 e!3335593)))

(assert (=> b!5376427 (= res!2282464 e!3335588)))

(declare-fun res!2282459 () Bool)

(assert (=> b!5376427 (=> (not res!2282459) (not e!3335588))))

(assert (=> b!5376427 (= res!2282459 lt!2189446)))

(declare-fun b!5376428 () Bool)

(assert (=> b!5376428 (= e!3335588 (= (head!11532 s!2326) (c!936875 lt!2189426)))))

(declare-fun b!5376429 () Bool)

(assert (=> b!5376429 (= e!3335589 (not lt!2189446))))

(declare-fun b!5376430 () Bool)

(assert (=> b!5376430 (= e!3335591 e!3335589)))

(declare-fun c!936888 () Bool)

(assert (=> b!5376430 (= c!936888 ((_ is EmptyLang!15099) lt!2189426))))

(declare-fun b!5376431 () Bool)

(declare-fun res!2282463 () Bool)

(assert (=> b!5376431 (=> (not res!2282463) (not e!3335588))))

(assert (=> b!5376431 (= res!2282463 (not call!384953))))

(declare-fun b!5376432 () Bool)

(assert (=> b!5376432 (= e!3335590 (nullable!5268 lt!2189426))))

(declare-fun b!5376433 () Bool)

(declare-fun e!3335592 () Bool)

(assert (=> b!5376433 (= e!3335592 (not (= (head!11532 s!2326) (c!936875 lt!2189426))))))

(declare-fun b!5376434 () Bool)

(assert (=> b!5376434 (= e!3335591 (= lt!2189446 call!384953))))

(declare-fun b!5376435 () Bool)

(declare-fun e!3335587 () Bool)

(assert (=> b!5376435 (= e!3335593 e!3335587)))

(declare-fun res!2282465 () Bool)

(assert (=> b!5376435 (=> (not res!2282465) (not e!3335587))))

(assert (=> b!5376435 (= res!2282465 (not lt!2189446))))

(declare-fun b!5376436 () Bool)

(assert (=> b!5376436 (= e!3335587 e!3335592)))

(declare-fun res!2282458 () Bool)

(assert (=> b!5376436 (=> res!2282458 e!3335592)))

(assert (=> b!5376436 (= res!2282458 call!384953)))

(declare-fun b!5376437 () Bool)

(declare-fun res!2282462 () Bool)

(assert (=> b!5376437 (=> res!2282462 e!3335592)))

(assert (=> b!5376437 (= res!2282462 (not (isEmpty!33459 (tail!10629 s!2326))))))

(assert (= (and d!1720977 c!936886) b!5376432))

(assert (= (and d!1720977 (not c!936886)) b!5376424))

(assert (= (and d!1720977 c!936887) b!5376434))

(assert (= (and d!1720977 (not c!936887)) b!5376430))

(assert (= (and b!5376430 c!936888) b!5376429))

(assert (= (and b!5376430 (not c!936888)) b!5376425))

(assert (= (and b!5376425 (not res!2282460)) b!5376427))

(assert (= (and b!5376427 res!2282459) b!5376431))

(assert (= (and b!5376431 res!2282463) b!5376426))

(assert (= (and b!5376426 res!2282461) b!5376428))

(assert (= (and b!5376427 (not res!2282464)) b!5376435))

(assert (= (and b!5376435 res!2282465) b!5376436))

(assert (= (and b!5376436 (not res!2282458)) b!5376437))

(assert (= (and b!5376437 (not res!2282462)) b!5376433))

(assert (= (or b!5376434 b!5376431 b!5376436) bm!384948))

(declare-fun m!6402966 () Bool)

(assert (=> b!5376437 m!6402966))

(assert (=> b!5376437 m!6402966))

(declare-fun m!6402968 () Bool)

(assert (=> b!5376437 m!6402968))

(declare-fun m!6402970 () Bool)

(assert (=> b!5376428 m!6402970))

(assert (=> b!5376424 m!6402970))

(assert (=> b!5376424 m!6402970))

(declare-fun m!6402972 () Bool)

(assert (=> b!5376424 m!6402972))

(assert (=> b!5376424 m!6402966))

(assert (=> b!5376424 m!6402972))

(assert (=> b!5376424 m!6402966))

(declare-fun m!6402974 () Bool)

(assert (=> b!5376424 m!6402974))

(assert (=> b!5376433 m!6402970))

(declare-fun m!6402976 () Bool)

(assert (=> b!5376432 m!6402976))

(declare-fun m!6402978 () Bool)

(assert (=> bm!384948 m!6402978))

(assert (=> d!1720977 m!6402978))

(declare-fun m!6402980 () Bool)

(assert (=> d!1720977 m!6402980))

(assert (=> b!5376426 m!6402966))

(assert (=> b!5376426 m!6402966))

(assert (=> b!5376426 m!6402968))

(assert (=> b!5376365 d!1720977))

(declare-fun bs!1244709 () Bool)

(declare-fun b!5376498 () Bool)

(assert (= bs!1244709 (and b!5376498 b!5376357)))

(declare-fun lambda!277875 () Int)

(assert (=> bs!1244709 (not (= lambda!277875 lambda!277861))))

(assert (=> bs!1244709 (not (= lambda!277875 lambda!277863))))

(assert (=> bs!1244709 (= (and (= s!2326 (_1!35601 lt!2189400)) (= (reg!15428 lt!2189426) (reg!15428 (regOne!30710 r!7292))) (= lt!2189426 lt!2189414)) (= lambda!277875 lambda!277862))))

(declare-fun bs!1244710 () Bool)

(assert (= bs!1244710 (and b!5376498 b!5376329)))

(assert (=> bs!1244710 (not (= lambda!277875 lambda!277857))))

(declare-fun bs!1244711 () Bool)

(assert (= bs!1244711 (and b!5376498 b!5376348)))

(assert (=> bs!1244711 (not (= lambda!277875 lambda!277860))))

(assert (=> bs!1244710 (not (= lambda!277875 lambda!277856))))

(assert (=> bs!1244711 (not (= lambda!277875 lambda!277859))))

(assert (=> b!5376498 true))

(assert (=> b!5376498 true))

(declare-fun bs!1244713 () Bool)

(declare-fun b!5376505 () Bool)

(assert (= bs!1244713 (and b!5376505 b!5376357)))

(declare-fun lambda!277877 () Int)

(assert (=> bs!1244713 (not (= lambda!277877 lambda!277861))))

(assert (=> bs!1244713 (= (and (= s!2326 (_1!35601 lt!2189400)) (= (regOne!30710 lt!2189426) (reg!15428 (regOne!30710 r!7292))) (= (regTwo!30710 lt!2189426) lt!2189414)) (= lambda!277877 lambda!277863))))

(declare-fun bs!1244716 () Bool)

(assert (= bs!1244716 (and b!5376505 b!5376498)))

(assert (=> bs!1244716 (not (= lambda!277877 lambda!277875))))

(assert (=> bs!1244713 (not (= lambda!277877 lambda!277862))))

(declare-fun bs!1244718 () Bool)

(assert (= bs!1244718 (and b!5376505 b!5376329)))

(assert (=> bs!1244718 (= (and (= (regOne!30710 lt!2189426) (regOne!30710 r!7292)) (= (regTwo!30710 lt!2189426) (regTwo!30710 r!7292))) (= lambda!277877 lambda!277857))))

(declare-fun bs!1244719 () Bool)

(assert (= bs!1244719 (and b!5376505 b!5376348)))

(assert (=> bs!1244719 (= (and (= (regOne!30710 lt!2189426) lt!2189414) (= (regTwo!30710 lt!2189426) (regTwo!30710 r!7292))) (= lambda!277877 lambda!277860))))

(assert (=> bs!1244718 (not (= lambda!277877 lambda!277856))))

(assert (=> bs!1244719 (not (= lambda!277877 lambda!277859))))

(assert (=> b!5376505 true))

(assert (=> b!5376505 true))

(declare-fun b!5376495 () Bool)

(declare-fun res!2282498 () Bool)

(declare-fun e!3335626 () Bool)

(assert (=> b!5376495 (=> res!2282498 e!3335626)))

(declare-fun call!384958 () Bool)

(assert (=> b!5376495 (= res!2282498 call!384958)))

(declare-fun e!3335629 () Bool)

(assert (=> b!5376495 (= e!3335629 e!3335626)))

(declare-fun b!5376496 () Bool)

(declare-fun e!3335625 () Bool)

(declare-fun e!3335627 () Bool)

(assert (=> b!5376496 (= e!3335625 e!3335627)))

(declare-fun res!2282497 () Bool)

(assert (=> b!5376496 (= res!2282497 (not ((_ is EmptyLang!15099) lt!2189426)))))

(assert (=> b!5376496 (=> (not res!2282497) (not e!3335627))))

(declare-fun b!5376497 () Bool)

(declare-fun c!936905 () Bool)

(assert (=> b!5376497 (= c!936905 ((_ is ElementMatch!15099) lt!2189426))))

(declare-fun e!3335630 () Bool)

(assert (=> b!5376497 (= e!3335627 e!3335630)))

(declare-fun c!936902 () Bool)

(declare-fun bm!384953 () Bool)

(declare-fun call!384959 () Bool)

(assert (=> bm!384953 (= call!384959 (Exists!2280 (ite c!936902 lambda!277875 lambda!277877)))))

(assert (=> b!5376498 (= e!3335626 call!384959)))

(declare-fun b!5376499 () Bool)

(declare-fun c!936903 () Bool)

(assert (=> b!5376499 (= c!936903 ((_ is Union!15099) lt!2189426))))

(declare-fun e!3335631 () Bool)

(assert (=> b!5376499 (= e!3335630 e!3335631)))

(declare-fun b!5376500 () Bool)

(assert (=> b!5376500 (= e!3335630 (= s!2326 (Cons!61472 (c!936875 lt!2189426) Nil!61472)))))

(declare-fun b!5376501 () Bool)

(declare-fun e!3335628 () Bool)

(assert (=> b!5376501 (= e!3335628 (matchRSpec!2202 (regTwo!30711 lt!2189426) s!2326))))

(declare-fun b!5376502 () Bool)

(assert (=> b!5376502 (= e!3335631 e!3335628)))

(declare-fun res!2282499 () Bool)

(assert (=> b!5376502 (= res!2282499 (matchRSpec!2202 (regOne!30711 lt!2189426) s!2326))))

(assert (=> b!5376502 (=> res!2282499 e!3335628)))

(declare-fun b!5376503 () Bool)

(assert (=> b!5376503 (= e!3335625 call!384958)))

(declare-fun b!5376504 () Bool)

(assert (=> b!5376504 (= e!3335631 e!3335629)))

(assert (=> b!5376504 (= c!936902 ((_ is Star!15099) lt!2189426))))

(assert (=> b!5376505 (= e!3335629 call!384959)))

(declare-fun bm!384954 () Bool)

(assert (=> bm!384954 (= call!384958 (isEmpty!33459 s!2326))))

(declare-fun d!1720979 () Bool)

(declare-fun c!936904 () Bool)

(assert (=> d!1720979 (= c!936904 ((_ is EmptyExpr!15099) lt!2189426))))

(assert (=> d!1720979 (= (matchRSpec!2202 lt!2189426 s!2326) e!3335625)))

(assert (= (and d!1720979 c!936904) b!5376503))

(assert (= (and d!1720979 (not c!936904)) b!5376496))

(assert (= (and b!5376496 res!2282497) b!5376497))

(assert (= (and b!5376497 c!936905) b!5376500))

(assert (= (and b!5376497 (not c!936905)) b!5376499))

(assert (= (and b!5376499 c!936903) b!5376502))

(assert (= (and b!5376499 (not c!936903)) b!5376504))

(assert (= (and b!5376502 (not res!2282499)) b!5376501))

(assert (= (and b!5376504 c!936902) b!5376495))

(assert (= (and b!5376504 (not c!936902)) b!5376505))

(assert (= (and b!5376495 (not res!2282498)) b!5376498))

(assert (= (or b!5376498 b!5376505) bm!384953))

(assert (= (or b!5376503 b!5376495) bm!384954))

(declare-fun m!6403022 () Bool)

(assert (=> bm!384953 m!6403022))

(declare-fun m!6403024 () Bool)

(assert (=> b!5376501 m!6403024))

(declare-fun m!6403026 () Bool)

(assert (=> b!5376502 m!6403026))

(assert (=> bm!384954 m!6402978))

(assert (=> b!5376365 d!1720979))

(declare-fun d!1720991 () Bool)

(assert (=> d!1720991 (= (matchR!7284 lt!2189426 s!2326) (matchRSpec!2202 lt!2189426 s!2326))))

(declare-fun lt!2189460 () Unit!153914)

(declare-fun choose!40392 (Regex!15099 List!61596) Unit!153914)

(assert (=> d!1720991 (= lt!2189460 (choose!40392 lt!2189426 s!2326))))

(assert (=> d!1720991 (validRegex!6835 lt!2189426)))

(assert (=> d!1720991 (= (mainMatchTheorem!2202 lt!2189426 s!2326) lt!2189460)))

(declare-fun bs!1244722 () Bool)

(assert (= bs!1244722 d!1720991))

(assert (=> bs!1244722 m!6402840))

(assert (=> bs!1244722 m!6402842))

(declare-fun m!6403036 () Bool)

(assert (=> bs!1244722 m!6403036))

(assert (=> bs!1244722 m!6402980))

(assert (=> b!5376365 d!1720991))

(declare-fun d!1720997 () Bool)

(declare-fun lambda!277881 () Int)

(declare-fun forall!14500 (List!61597 Int) Bool)

(assert (=> d!1720997 (= (inv!80994 setElem!34865) (forall!14500 (exprs!4983 setElem!34865) lambda!277881))))

(declare-fun bs!1244724 () Bool)

(assert (= bs!1244724 d!1720997))

(declare-fun m!6403046 () Bool)

(assert (=> bs!1244724 m!6403046))

(assert (=> setNonEmpty!34865 d!1720997))

(declare-fun bm!384955 () Bool)

(declare-fun call!384960 () Bool)

(assert (=> bm!384955 (= call!384960 (isEmpty!33459 (_1!35601 lt!2189400)))))

(declare-fun b!5376513 () Bool)

(declare-fun e!3335640 () Bool)

(assert (=> b!5376513 (= e!3335640 (matchR!7284 (derivativeStep!4228 lt!2189414 (head!11532 (_1!35601 lt!2189400))) (tail!10629 (_1!35601 lt!2189400))))))

(declare-fun b!5376514 () Bool)

(declare-fun res!2282509 () Bool)

(declare-fun e!3335643 () Bool)

(assert (=> b!5376514 (=> res!2282509 e!3335643)))

(assert (=> b!5376514 (= res!2282509 (not ((_ is ElementMatch!15099) lt!2189414)))))

(declare-fun e!3335639 () Bool)

(assert (=> b!5376514 (= e!3335639 e!3335643)))

(declare-fun b!5376515 () Bool)

(declare-fun res!2282510 () Bool)

(declare-fun e!3335638 () Bool)

(assert (=> b!5376515 (=> (not res!2282510) (not e!3335638))))

(assert (=> b!5376515 (= res!2282510 (isEmpty!33459 (tail!10629 (_1!35601 lt!2189400))))))

(declare-fun d!1721003 () Bool)

(declare-fun e!3335641 () Bool)

(assert (=> d!1721003 e!3335641))

(declare-fun c!936907 () Bool)

(assert (=> d!1721003 (= c!936907 ((_ is EmptyExpr!15099) lt!2189414))))

(declare-fun lt!2189462 () Bool)

(assert (=> d!1721003 (= lt!2189462 e!3335640)))

(declare-fun c!936906 () Bool)

(assert (=> d!1721003 (= c!936906 (isEmpty!33459 (_1!35601 lt!2189400)))))

(assert (=> d!1721003 (validRegex!6835 lt!2189414)))

(assert (=> d!1721003 (= (matchR!7284 lt!2189414 (_1!35601 lt!2189400)) lt!2189462)))

(declare-fun b!5376516 () Bool)

(declare-fun res!2282513 () Bool)

(assert (=> b!5376516 (=> res!2282513 e!3335643)))

(assert (=> b!5376516 (= res!2282513 e!3335638)))

(declare-fun res!2282508 () Bool)

(assert (=> b!5376516 (=> (not res!2282508) (not e!3335638))))

(assert (=> b!5376516 (= res!2282508 lt!2189462)))

(declare-fun b!5376517 () Bool)

(assert (=> b!5376517 (= e!3335638 (= (head!11532 (_1!35601 lt!2189400)) (c!936875 lt!2189414)))))

(declare-fun b!5376518 () Bool)

(assert (=> b!5376518 (= e!3335639 (not lt!2189462))))

(declare-fun b!5376519 () Bool)

(assert (=> b!5376519 (= e!3335641 e!3335639)))

(declare-fun c!936908 () Bool)

(assert (=> b!5376519 (= c!936908 ((_ is EmptyLang!15099) lt!2189414))))

(declare-fun b!5376520 () Bool)

(declare-fun res!2282512 () Bool)

(assert (=> b!5376520 (=> (not res!2282512) (not e!3335638))))

(assert (=> b!5376520 (= res!2282512 (not call!384960))))

(declare-fun b!5376521 () Bool)

(assert (=> b!5376521 (= e!3335640 (nullable!5268 lt!2189414))))

(declare-fun b!5376522 () Bool)

(declare-fun e!3335642 () Bool)

(assert (=> b!5376522 (= e!3335642 (not (= (head!11532 (_1!35601 lt!2189400)) (c!936875 lt!2189414))))))

(declare-fun b!5376523 () Bool)

(assert (=> b!5376523 (= e!3335641 (= lt!2189462 call!384960))))

(declare-fun b!5376524 () Bool)

(declare-fun e!3335637 () Bool)

(assert (=> b!5376524 (= e!3335643 e!3335637)))

(declare-fun res!2282514 () Bool)

(assert (=> b!5376524 (=> (not res!2282514) (not e!3335637))))

(assert (=> b!5376524 (= res!2282514 (not lt!2189462))))

(declare-fun b!5376525 () Bool)

(assert (=> b!5376525 (= e!3335637 e!3335642)))

(declare-fun res!2282507 () Bool)

(assert (=> b!5376525 (=> res!2282507 e!3335642)))

(assert (=> b!5376525 (= res!2282507 call!384960)))

(declare-fun b!5376526 () Bool)

(declare-fun res!2282511 () Bool)

(assert (=> b!5376526 (=> res!2282511 e!3335642)))

(assert (=> b!5376526 (= res!2282511 (not (isEmpty!33459 (tail!10629 (_1!35601 lt!2189400)))))))

(assert (= (and d!1721003 c!936906) b!5376521))

(assert (= (and d!1721003 (not c!936906)) b!5376513))

(assert (= (and d!1721003 c!936907) b!5376523))

(assert (= (and d!1721003 (not c!936907)) b!5376519))

(assert (= (and b!5376519 c!936908) b!5376518))

(assert (= (and b!5376519 (not c!936908)) b!5376514))

(assert (= (and b!5376514 (not res!2282509)) b!5376516))

(assert (= (and b!5376516 res!2282508) b!5376520))

(assert (= (and b!5376520 res!2282512) b!5376515))

(assert (= (and b!5376515 res!2282510) b!5376517))

(assert (= (and b!5376516 (not res!2282513)) b!5376524))

(assert (= (and b!5376524 res!2282514) b!5376525))

(assert (= (and b!5376525 (not res!2282507)) b!5376526))

(assert (= (and b!5376526 (not res!2282511)) b!5376522))

(assert (= (or b!5376523 b!5376520 b!5376525) bm!384955))

(declare-fun m!6403048 () Bool)

(assert (=> b!5376526 m!6403048))

(assert (=> b!5376526 m!6403048))

(declare-fun m!6403050 () Bool)

(assert (=> b!5376526 m!6403050))

(declare-fun m!6403052 () Bool)

(assert (=> b!5376517 m!6403052))

(assert (=> b!5376513 m!6403052))

(assert (=> b!5376513 m!6403052))

(declare-fun m!6403054 () Bool)

(assert (=> b!5376513 m!6403054))

(assert (=> b!5376513 m!6403048))

(assert (=> b!5376513 m!6403054))

(assert (=> b!5376513 m!6403048))

(declare-fun m!6403056 () Bool)

(assert (=> b!5376513 m!6403056))

(assert (=> b!5376522 m!6403052))

(declare-fun m!6403058 () Bool)

(assert (=> b!5376521 m!6403058))

(assert (=> bm!384955 m!6402878))

(assert (=> d!1721003 m!6402878))

(assert (=> d!1721003 m!6402938))

(assert (=> b!5376515 m!6403048))

(assert (=> b!5376515 m!6403048))

(assert (=> b!5376515 m!6403050))

(assert (=> b!5376324 d!1721003))

(declare-fun bm!384964 () Bool)

(declare-fun call!384971 () Bool)

(declare-fun c!936919 () Bool)

(assert (=> bm!384964 (= call!384971 (validRegex!6835 (ite c!936919 (regOne!30711 lt!2189414) (regOne!30710 lt!2189414))))))

(declare-fun d!1721005 () Bool)

(declare-fun res!2282542 () Bool)

(declare-fun e!3335672 () Bool)

(assert (=> d!1721005 (=> res!2282542 e!3335672)))

(assert (=> d!1721005 (= res!2282542 ((_ is ElementMatch!15099) lt!2189414))))

(assert (=> d!1721005 (= (validRegex!6835 lt!2189414) e!3335672)))

(declare-fun bm!384965 () Bool)

(declare-fun call!384970 () Bool)

(declare-fun call!384969 () Bool)

(assert (=> bm!384965 (= call!384970 call!384969)))

(declare-fun c!936920 () Bool)

(declare-fun bm!384966 () Bool)

(assert (=> bm!384966 (= call!384969 (validRegex!6835 (ite c!936920 (reg!15428 lt!2189414) (ite c!936919 (regTwo!30711 lt!2189414) (regTwo!30710 lt!2189414)))))))

(declare-fun b!5376573 () Bool)

(declare-fun e!3335676 () Bool)

(assert (=> b!5376573 (= e!3335676 call!384969)))

(declare-fun b!5376574 () Bool)

(declare-fun res!2282541 () Bool)

(declare-fun e!3335675 () Bool)

(assert (=> b!5376574 (=> res!2282541 e!3335675)))

(assert (=> b!5376574 (= res!2282541 (not ((_ is Concat!23944) lt!2189414)))))

(declare-fun e!3335678 () Bool)

(assert (=> b!5376574 (= e!3335678 e!3335675)))

(declare-fun b!5376575 () Bool)

(declare-fun e!3335677 () Bool)

(assert (=> b!5376575 (= e!3335675 e!3335677)))

(declare-fun res!2282543 () Bool)

(assert (=> b!5376575 (=> (not res!2282543) (not e!3335677))))

(assert (=> b!5376575 (= res!2282543 call!384971)))

(declare-fun b!5376576 () Bool)

(declare-fun res!2282544 () Bool)

(declare-fun e!3335673 () Bool)

(assert (=> b!5376576 (=> (not res!2282544) (not e!3335673))))

(assert (=> b!5376576 (= res!2282544 call!384971)))

(assert (=> b!5376576 (= e!3335678 e!3335673)))

(declare-fun b!5376577 () Bool)

(assert (=> b!5376577 (= e!3335673 call!384970)))

(declare-fun b!5376578 () Bool)

(assert (=> b!5376578 (= e!3335677 call!384970)))

(declare-fun b!5376579 () Bool)

(declare-fun e!3335674 () Bool)

(assert (=> b!5376579 (= e!3335672 e!3335674)))

(assert (=> b!5376579 (= c!936920 ((_ is Star!15099) lt!2189414))))

(declare-fun b!5376580 () Bool)

(assert (=> b!5376580 (= e!3335674 e!3335676)))

(declare-fun res!2282545 () Bool)

(assert (=> b!5376580 (= res!2282545 (not (nullable!5268 (reg!15428 lt!2189414))))))

(assert (=> b!5376580 (=> (not res!2282545) (not e!3335676))))

(declare-fun b!5376581 () Bool)

(assert (=> b!5376581 (= e!3335674 e!3335678)))

(assert (=> b!5376581 (= c!936919 ((_ is Union!15099) lt!2189414))))

(assert (= (and d!1721005 (not res!2282542)) b!5376579))

(assert (= (and b!5376579 c!936920) b!5376580))

(assert (= (and b!5376579 (not c!936920)) b!5376581))

(assert (= (and b!5376580 res!2282545) b!5376573))

(assert (= (and b!5376581 c!936919) b!5376576))

(assert (= (and b!5376581 (not c!936919)) b!5376574))

(assert (= (and b!5376576 res!2282544) b!5376577))

(assert (= (and b!5376574 (not res!2282541)) b!5376575))

(assert (= (and b!5376575 res!2282543) b!5376578))

(assert (= (or b!5376577 b!5376578) bm!384965))

(assert (= (or b!5376576 b!5376575) bm!384964))

(assert (= (or b!5376573 bm!384965) bm!384966))

(declare-fun m!6403060 () Bool)

(assert (=> bm!384964 m!6403060))

(declare-fun m!6403062 () Bool)

(assert (=> bm!384966 m!6403062))

(declare-fun m!6403064 () Bool)

(assert (=> b!5376580 m!6403064))

(assert (=> b!5376364 d!1721005))

(declare-fun bm!384967 () Bool)

(declare-fun call!384974 () Bool)

(declare-fun c!936921 () Bool)

(assert (=> bm!384967 (= call!384974 (validRegex!6835 (ite c!936921 (regOne!30711 r!7292) (regOne!30710 r!7292))))))

(declare-fun d!1721007 () Bool)

(declare-fun res!2282547 () Bool)

(declare-fun e!3335679 () Bool)

(assert (=> d!1721007 (=> res!2282547 e!3335679)))

(assert (=> d!1721007 (= res!2282547 ((_ is ElementMatch!15099) r!7292))))

(assert (=> d!1721007 (= (validRegex!6835 r!7292) e!3335679)))

(declare-fun bm!384968 () Bool)

(declare-fun call!384973 () Bool)

(declare-fun call!384972 () Bool)

(assert (=> bm!384968 (= call!384973 call!384972)))

(declare-fun c!936922 () Bool)

(declare-fun bm!384969 () Bool)

(assert (=> bm!384969 (= call!384972 (validRegex!6835 (ite c!936922 (reg!15428 r!7292) (ite c!936921 (regTwo!30711 r!7292) (regTwo!30710 r!7292)))))))

(declare-fun b!5376582 () Bool)

(declare-fun e!3335683 () Bool)

(assert (=> b!5376582 (= e!3335683 call!384972)))

(declare-fun b!5376583 () Bool)

(declare-fun res!2282546 () Bool)

(declare-fun e!3335682 () Bool)

(assert (=> b!5376583 (=> res!2282546 e!3335682)))

(assert (=> b!5376583 (= res!2282546 (not ((_ is Concat!23944) r!7292)))))

(declare-fun e!3335685 () Bool)

(assert (=> b!5376583 (= e!3335685 e!3335682)))

(declare-fun b!5376584 () Bool)

(declare-fun e!3335684 () Bool)

(assert (=> b!5376584 (= e!3335682 e!3335684)))

(declare-fun res!2282548 () Bool)

(assert (=> b!5376584 (=> (not res!2282548) (not e!3335684))))

(assert (=> b!5376584 (= res!2282548 call!384974)))

(declare-fun b!5376585 () Bool)

(declare-fun res!2282549 () Bool)

(declare-fun e!3335680 () Bool)

(assert (=> b!5376585 (=> (not res!2282549) (not e!3335680))))

(assert (=> b!5376585 (= res!2282549 call!384974)))

(assert (=> b!5376585 (= e!3335685 e!3335680)))

(declare-fun b!5376586 () Bool)

(assert (=> b!5376586 (= e!3335680 call!384973)))

(declare-fun b!5376587 () Bool)

(assert (=> b!5376587 (= e!3335684 call!384973)))

(declare-fun b!5376588 () Bool)

(declare-fun e!3335681 () Bool)

(assert (=> b!5376588 (= e!3335679 e!3335681)))

(assert (=> b!5376588 (= c!936922 ((_ is Star!15099) r!7292))))

(declare-fun b!5376589 () Bool)

(assert (=> b!5376589 (= e!3335681 e!3335683)))

(declare-fun res!2282550 () Bool)

(assert (=> b!5376589 (= res!2282550 (not (nullable!5268 (reg!15428 r!7292))))))

(assert (=> b!5376589 (=> (not res!2282550) (not e!3335683))))

(declare-fun b!5376590 () Bool)

(assert (=> b!5376590 (= e!3335681 e!3335685)))

(assert (=> b!5376590 (= c!936921 ((_ is Union!15099) r!7292))))

(assert (= (and d!1721007 (not res!2282547)) b!5376588))

(assert (= (and b!5376588 c!936922) b!5376589))

(assert (= (and b!5376588 (not c!936922)) b!5376590))

(assert (= (and b!5376589 res!2282550) b!5376582))

(assert (= (and b!5376590 c!936921) b!5376585))

(assert (= (and b!5376590 (not c!936921)) b!5376583))

(assert (= (and b!5376585 res!2282549) b!5376586))

(assert (= (and b!5376583 (not res!2282546)) b!5376584))

(assert (= (and b!5376584 res!2282548) b!5376587))

(assert (= (or b!5376586 b!5376587) bm!384968))

(assert (= (or b!5376585 b!5376584) bm!384967))

(assert (= (or b!5376582 bm!384968) bm!384969))

(declare-fun m!6403066 () Bool)

(assert (=> bm!384967 m!6403066))

(declare-fun m!6403068 () Bool)

(assert (=> bm!384969 m!6403068))

(declare-fun m!6403070 () Bool)

(assert (=> b!5376589 m!6403070))

(assert (=> start!565494 d!1721007))

(declare-fun bm!384970 () Bool)

(declare-fun call!384975 () Bool)

(assert (=> bm!384970 (= call!384975 (isEmpty!33459 (_2!35601 lt!2189400)))))

(declare-fun b!5376591 () Bool)

(declare-fun e!3335689 () Bool)

(assert (=> b!5376591 (= e!3335689 (matchR!7284 (derivativeStep!4228 (regTwo!30710 r!7292) (head!11532 (_2!35601 lt!2189400))) (tail!10629 (_2!35601 lt!2189400))))))

(declare-fun b!5376592 () Bool)

(declare-fun res!2282553 () Bool)

(declare-fun e!3335692 () Bool)

(assert (=> b!5376592 (=> res!2282553 e!3335692)))

(assert (=> b!5376592 (= res!2282553 (not ((_ is ElementMatch!15099) (regTwo!30710 r!7292))))))

(declare-fun e!3335688 () Bool)

(assert (=> b!5376592 (= e!3335688 e!3335692)))

(declare-fun b!5376593 () Bool)

(declare-fun res!2282554 () Bool)

(declare-fun e!3335687 () Bool)

(assert (=> b!5376593 (=> (not res!2282554) (not e!3335687))))

(assert (=> b!5376593 (= res!2282554 (isEmpty!33459 (tail!10629 (_2!35601 lt!2189400))))))

(declare-fun d!1721009 () Bool)

(declare-fun e!3335690 () Bool)

(assert (=> d!1721009 e!3335690))

(declare-fun c!936924 () Bool)

(assert (=> d!1721009 (= c!936924 ((_ is EmptyExpr!15099) (regTwo!30710 r!7292)))))

(declare-fun lt!2189465 () Bool)

(assert (=> d!1721009 (= lt!2189465 e!3335689)))

(declare-fun c!936923 () Bool)

(assert (=> d!1721009 (= c!936923 (isEmpty!33459 (_2!35601 lt!2189400)))))

(assert (=> d!1721009 (validRegex!6835 (regTwo!30710 r!7292))))

(assert (=> d!1721009 (= (matchR!7284 (regTwo!30710 r!7292) (_2!35601 lt!2189400)) lt!2189465)))

(declare-fun b!5376594 () Bool)

(declare-fun res!2282557 () Bool)

(assert (=> b!5376594 (=> res!2282557 e!3335692)))

(assert (=> b!5376594 (= res!2282557 e!3335687)))

(declare-fun res!2282552 () Bool)

(assert (=> b!5376594 (=> (not res!2282552) (not e!3335687))))

(assert (=> b!5376594 (= res!2282552 lt!2189465)))

(declare-fun b!5376595 () Bool)

(assert (=> b!5376595 (= e!3335687 (= (head!11532 (_2!35601 lt!2189400)) (c!936875 (regTwo!30710 r!7292))))))

(declare-fun b!5376596 () Bool)

(assert (=> b!5376596 (= e!3335688 (not lt!2189465))))

(declare-fun b!5376597 () Bool)

(assert (=> b!5376597 (= e!3335690 e!3335688)))

(declare-fun c!936925 () Bool)

(assert (=> b!5376597 (= c!936925 ((_ is EmptyLang!15099) (regTwo!30710 r!7292)))))

(declare-fun b!5376598 () Bool)

(declare-fun res!2282556 () Bool)

(assert (=> b!5376598 (=> (not res!2282556) (not e!3335687))))

(assert (=> b!5376598 (= res!2282556 (not call!384975))))

(declare-fun b!5376599 () Bool)

(assert (=> b!5376599 (= e!3335689 (nullable!5268 (regTwo!30710 r!7292)))))

(declare-fun b!5376600 () Bool)

(declare-fun e!3335691 () Bool)

(assert (=> b!5376600 (= e!3335691 (not (= (head!11532 (_2!35601 lt!2189400)) (c!936875 (regTwo!30710 r!7292)))))))

(declare-fun b!5376601 () Bool)

(assert (=> b!5376601 (= e!3335690 (= lt!2189465 call!384975))))

(declare-fun b!5376602 () Bool)

(declare-fun e!3335686 () Bool)

(assert (=> b!5376602 (= e!3335692 e!3335686)))

(declare-fun res!2282558 () Bool)

(assert (=> b!5376602 (=> (not res!2282558) (not e!3335686))))

(assert (=> b!5376602 (= res!2282558 (not lt!2189465))))

(declare-fun b!5376603 () Bool)

(assert (=> b!5376603 (= e!3335686 e!3335691)))

(declare-fun res!2282551 () Bool)

(assert (=> b!5376603 (=> res!2282551 e!3335691)))

(assert (=> b!5376603 (= res!2282551 call!384975)))

(declare-fun b!5376604 () Bool)

(declare-fun res!2282555 () Bool)

(assert (=> b!5376604 (=> res!2282555 e!3335691)))

(assert (=> b!5376604 (= res!2282555 (not (isEmpty!33459 (tail!10629 (_2!35601 lt!2189400)))))))

(assert (= (and d!1721009 c!936923) b!5376599))

(assert (= (and d!1721009 (not c!936923)) b!5376591))

(assert (= (and d!1721009 c!936924) b!5376601))

(assert (= (and d!1721009 (not c!936924)) b!5376597))

(assert (= (and b!5376597 c!936925) b!5376596))

(assert (= (and b!5376597 (not c!936925)) b!5376592))

(assert (= (and b!5376592 (not res!2282553)) b!5376594))

(assert (= (and b!5376594 res!2282552) b!5376598))

(assert (= (and b!5376598 res!2282556) b!5376593))

(assert (= (and b!5376593 res!2282554) b!5376595))

(assert (= (and b!5376594 (not res!2282557)) b!5376602))

(assert (= (and b!5376602 res!2282558) b!5376603))

(assert (= (and b!5376603 (not res!2282551)) b!5376604))

(assert (= (and b!5376604 (not res!2282555)) b!5376600))

(assert (= (or b!5376601 b!5376598 b!5376603) bm!384970))

(declare-fun m!6403072 () Bool)

(assert (=> b!5376604 m!6403072))

(assert (=> b!5376604 m!6403072))

(declare-fun m!6403074 () Bool)

(assert (=> b!5376604 m!6403074))

(declare-fun m!6403076 () Bool)

(assert (=> b!5376595 m!6403076))

(assert (=> b!5376591 m!6403076))

(assert (=> b!5376591 m!6403076))

(declare-fun m!6403078 () Bool)

(assert (=> b!5376591 m!6403078))

(assert (=> b!5376591 m!6403072))

(assert (=> b!5376591 m!6403078))

(assert (=> b!5376591 m!6403072))

(declare-fun m!6403080 () Bool)

(assert (=> b!5376591 m!6403080))

(assert (=> b!5376600 m!6403076))

(declare-fun m!6403082 () Bool)

(assert (=> b!5376599 m!6403082))

(declare-fun m!6403084 () Bool)

(assert (=> bm!384970 m!6403084))

(assert (=> d!1721009 m!6403084))

(declare-fun m!6403086 () Bool)

(assert (=> d!1721009 m!6403086))

(assert (=> b!5376593 m!6403072))

(assert (=> b!5376593 m!6403072))

(assert (=> b!5376593 m!6403074))

(assert (=> b!5376326 d!1721009))

(declare-fun bs!1244725 () Bool)

(declare-fun d!1721011 () Bool)

(assert (= bs!1244725 (and d!1721011 d!1720997)))

(declare-fun lambda!277886 () Int)

(assert (=> bs!1244725 (= lambda!277886 lambda!277881)))

(declare-fun b!5376667 () Bool)

(declare-fun e!3335730 () Regex!15099)

(declare-fun e!3335732 () Regex!15099)

(assert (=> b!5376667 (= e!3335730 e!3335732)))

(declare-fun c!936945 () Bool)

(assert (=> b!5376667 (= c!936945 ((_ is Cons!61473) (exprs!4983 (h!67922 zl!343))))))

(declare-fun b!5376668 () Bool)

(declare-fun e!3335729 () Bool)

(assert (=> b!5376668 (= e!3335729 (isEmpty!33460 (t!374820 (exprs!4983 (h!67922 zl!343)))))))

(declare-fun b!5376669 () Bool)

(assert (=> b!5376669 (= e!3335732 (Concat!23944 (h!67921 (exprs!4983 (h!67922 zl!343))) (generalisedConcat!768 (t!374820 (exprs!4983 (h!67922 zl!343))))))))

(declare-fun b!5376670 () Bool)

(declare-fun e!3335728 () Bool)

(declare-fun lt!2189469 () Regex!15099)

(declare-fun isConcat!464 (Regex!15099) Bool)

(assert (=> b!5376670 (= e!3335728 (isConcat!464 lt!2189469))))

(declare-fun b!5376671 () Bool)

(declare-fun e!3335731 () Bool)

(declare-fun isEmptyExpr!941 (Regex!15099) Bool)

(assert (=> b!5376671 (= e!3335731 (isEmptyExpr!941 lt!2189469))))

(declare-fun e!3335733 () Bool)

(assert (=> d!1721011 e!3335733))

(declare-fun res!2282583 () Bool)

(assert (=> d!1721011 (=> (not res!2282583) (not e!3335733))))

(assert (=> d!1721011 (= res!2282583 (validRegex!6835 lt!2189469))))

(assert (=> d!1721011 (= lt!2189469 e!3335730)))

(declare-fun c!936948 () Bool)

(assert (=> d!1721011 (= c!936948 e!3335729)))

(declare-fun res!2282584 () Bool)

(assert (=> d!1721011 (=> (not res!2282584) (not e!3335729))))

(assert (=> d!1721011 (= res!2282584 ((_ is Cons!61473) (exprs!4983 (h!67922 zl!343))))))

(assert (=> d!1721011 (forall!14500 (exprs!4983 (h!67922 zl!343)) lambda!277886)))

(assert (=> d!1721011 (= (generalisedConcat!768 (exprs!4983 (h!67922 zl!343))) lt!2189469)))

(declare-fun b!5376672 () Bool)

(assert (=> b!5376672 (= e!3335730 (h!67921 (exprs!4983 (h!67922 zl!343))))))

(declare-fun b!5376673 () Bool)

(declare-fun head!11534 (List!61597) Regex!15099)

(assert (=> b!5376673 (= e!3335728 (= lt!2189469 (head!11534 (exprs!4983 (h!67922 zl!343)))))))

(declare-fun b!5376674 () Bool)

(assert (=> b!5376674 (= e!3335733 e!3335731)))

(declare-fun c!936946 () Bool)

(assert (=> b!5376674 (= c!936946 (isEmpty!33460 (exprs!4983 (h!67922 zl!343))))))

(declare-fun b!5376675 () Bool)

(assert (=> b!5376675 (= e!3335732 EmptyExpr!15099)))

(declare-fun b!5376676 () Bool)

(assert (=> b!5376676 (= e!3335731 e!3335728)))

(declare-fun c!936947 () Bool)

(declare-fun tail!10631 (List!61597) List!61597)

(assert (=> b!5376676 (= c!936947 (isEmpty!33460 (tail!10631 (exprs!4983 (h!67922 zl!343)))))))

(assert (= (and d!1721011 res!2282584) b!5376668))

(assert (= (and d!1721011 c!936948) b!5376672))

(assert (= (and d!1721011 (not c!936948)) b!5376667))

(assert (= (and b!5376667 c!936945) b!5376669))

(assert (= (and b!5376667 (not c!936945)) b!5376675))

(assert (= (and d!1721011 res!2282583) b!5376674))

(assert (= (and b!5376674 c!936946) b!5376671))

(assert (= (and b!5376674 (not c!936946)) b!5376676))

(assert (= (and b!5376676 c!936947) b!5376673))

(assert (= (and b!5376676 (not c!936947)) b!5376670))

(declare-fun m!6403104 () Bool)

(assert (=> b!5376673 m!6403104))

(assert (=> b!5376668 m!6402806))

(declare-fun m!6403106 () Bool)

(assert (=> b!5376676 m!6403106))

(assert (=> b!5376676 m!6403106))

(declare-fun m!6403108 () Bool)

(assert (=> b!5376676 m!6403108))

(declare-fun m!6403110 () Bool)

(assert (=> b!5376671 m!6403110))

(declare-fun m!6403112 () Bool)

(assert (=> b!5376674 m!6403112))

(declare-fun m!6403114 () Bool)

(assert (=> d!1721011 m!6403114))

(declare-fun m!6403116 () Bool)

(assert (=> d!1721011 m!6403116))

(declare-fun m!6403118 () Bool)

(assert (=> b!5376669 m!6403118))

(declare-fun m!6403120 () Bool)

(assert (=> b!5376670 m!6403120))

(assert (=> b!5376327 d!1721011))

(declare-fun d!1721015 () Bool)

(declare-fun choose!40394 (Int) Bool)

(assert (=> d!1721015 (= (Exists!2280 lambda!277859) (choose!40394 lambda!277859))))

(declare-fun bs!1244726 () Bool)

(assert (= bs!1244726 d!1721015))

(declare-fun m!6403122 () Bool)

(assert (=> bs!1244726 m!6403122))

(assert (=> b!5376348 d!1721015))

(declare-fun bs!1244734 () Bool)

(declare-fun d!1721017 () Bool)

(assert (= bs!1244734 (and d!1721017 b!5376357)))

(declare-fun lambda!277893 () Int)

(assert (=> bs!1244734 (= (and (= s!2326 (_1!35601 lt!2189400)) (= lt!2189414 (reg!15428 (regOne!30710 r!7292))) (= (regTwo!30710 r!7292) lt!2189414)) (= lambda!277893 lambda!277861))))

(declare-fun bs!1244736 () Bool)

(assert (= bs!1244736 (and d!1721017 b!5376505)))

(assert (=> bs!1244736 (not (= lambda!277893 lambda!277877))))

(assert (=> bs!1244734 (not (= lambda!277893 lambda!277863))))

(declare-fun bs!1244738 () Bool)

(assert (= bs!1244738 (and d!1721017 b!5376498)))

(assert (=> bs!1244738 (not (= lambda!277893 lambda!277875))))

(assert (=> bs!1244734 (not (= lambda!277893 lambda!277862))))

(declare-fun bs!1244740 () Bool)

(assert (= bs!1244740 (and d!1721017 b!5376329)))

(assert (=> bs!1244740 (not (= lambda!277893 lambda!277857))))

(declare-fun bs!1244742 () Bool)

(assert (= bs!1244742 (and d!1721017 b!5376348)))

(assert (=> bs!1244742 (not (= lambda!277893 lambda!277860))))

(assert (=> bs!1244740 (= (= lt!2189414 (regOne!30710 r!7292)) (= lambda!277893 lambda!277856))))

(assert (=> bs!1244742 (= lambda!277893 lambda!277859)))

(assert (=> d!1721017 true))

(assert (=> d!1721017 true))

(assert (=> d!1721017 true))

(assert (=> d!1721017 (= (isDefined!11913 (findConcatSeparation!1624 lt!2189414 (regTwo!30710 r!7292) Nil!61472 s!2326 s!2326)) (Exists!2280 lambda!277893))))

(declare-fun lt!2189472 () Unit!153914)

(declare-fun choose!40395 (Regex!15099 Regex!15099 List!61596) Unit!153914)

(assert (=> d!1721017 (= lt!2189472 (choose!40395 lt!2189414 (regTwo!30710 r!7292) s!2326))))

(assert (=> d!1721017 (validRegex!6835 lt!2189414)))

(assert (=> d!1721017 (= (lemmaFindConcatSeparationEquivalentToExists!1388 lt!2189414 (regTwo!30710 r!7292) s!2326) lt!2189472)))

(declare-fun bs!1244743 () Bool)

(assert (= bs!1244743 d!1721017))

(declare-fun m!6403124 () Bool)

(assert (=> bs!1244743 m!6403124))

(assert (=> bs!1244743 m!6402930))

(assert (=> bs!1244743 m!6402938))

(assert (=> bs!1244743 m!6402930))

(declare-fun m!6403126 () Bool)

(assert (=> bs!1244743 m!6403126))

(declare-fun m!6403128 () Bool)

(assert (=> bs!1244743 m!6403128))

(assert (=> b!5376348 d!1721017))

(declare-fun b!5376744 () Bool)

(declare-fun e!3335773 () Bool)

(assert (=> b!5376744 (= e!3335773 (matchR!7284 (regTwo!30710 r!7292) s!2326))))

(declare-fun b!5376745 () Bool)

(declare-fun e!3335774 () Option!15210)

(declare-fun e!3335771 () Option!15210)

(assert (=> b!5376745 (= e!3335774 e!3335771)))

(declare-fun c!936966 () Bool)

(assert (=> b!5376745 (= c!936966 ((_ is Nil!61472) s!2326))))

(declare-fun b!5376746 () Bool)

(declare-fun lt!2189485 () Unit!153914)

(declare-fun lt!2189486 () Unit!153914)

(assert (=> b!5376746 (= lt!2189485 lt!2189486)))

(assert (=> b!5376746 (= (++!13402 (++!13402 Nil!61472 (Cons!61472 (h!67920 s!2326) Nil!61472)) (t!374819 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1803 (List!61596 C!30468 List!61596 List!61596) Unit!153914)

(assert (=> b!5376746 (= lt!2189486 (lemmaMoveElementToOtherListKeepsConcatEq!1803 Nil!61472 (h!67920 s!2326) (t!374819 s!2326) s!2326))))

(assert (=> b!5376746 (= e!3335771 (findConcatSeparation!1624 lt!2189414 (regTwo!30710 r!7292) (++!13402 Nil!61472 (Cons!61472 (h!67920 s!2326) Nil!61472)) (t!374819 s!2326) s!2326))))

(declare-fun b!5376747 () Bool)

(assert (=> b!5376747 (= e!3335774 (Some!15209 (tuple2!64597 Nil!61472 s!2326)))))

(declare-fun b!5376748 () Bool)

(declare-fun e!3335772 () Bool)

(declare-fun lt!2189487 () Option!15210)

(assert (=> b!5376748 (= e!3335772 (= (++!13402 (_1!35601 (get!21157 lt!2189487)) (_2!35601 (get!21157 lt!2189487))) s!2326))))

(declare-fun b!5376749 () Bool)

(assert (=> b!5376749 (= e!3335771 None!15209)))

(declare-fun b!5376743 () Bool)

(declare-fun res!2282620 () Bool)

(assert (=> b!5376743 (=> (not res!2282620) (not e!3335772))))

(assert (=> b!5376743 (= res!2282620 (matchR!7284 (regTwo!30710 r!7292) (_2!35601 (get!21157 lt!2189487))))))

(declare-fun d!1721019 () Bool)

(declare-fun e!3335775 () Bool)

(assert (=> d!1721019 e!3335775))

(declare-fun res!2282621 () Bool)

(assert (=> d!1721019 (=> res!2282621 e!3335775)))

(assert (=> d!1721019 (= res!2282621 e!3335772)))

(declare-fun res!2282619 () Bool)

(assert (=> d!1721019 (=> (not res!2282619) (not e!3335772))))

(assert (=> d!1721019 (= res!2282619 (isDefined!11913 lt!2189487))))

(assert (=> d!1721019 (= lt!2189487 e!3335774)))

(declare-fun c!936965 () Bool)

(assert (=> d!1721019 (= c!936965 e!3335773)))

(declare-fun res!2282623 () Bool)

(assert (=> d!1721019 (=> (not res!2282623) (not e!3335773))))

(assert (=> d!1721019 (= res!2282623 (matchR!7284 lt!2189414 Nil!61472))))

(assert (=> d!1721019 (validRegex!6835 lt!2189414)))

(assert (=> d!1721019 (= (findConcatSeparation!1624 lt!2189414 (regTwo!30710 r!7292) Nil!61472 s!2326 s!2326) lt!2189487)))

(declare-fun b!5376750 () Bool)

(declare-fun res!2282622 () Bool)

(assert (=> b!5376750 (=> (not res!2282622) (not e!3335772))))

(assert (=> b!5376750 (= res!2282622 (matchR!7284 lt!2189414 (_1!35601 (get!21157 lt!2189487))))))

(declare-fun b!5376751 () Bool)

(assert (=> b!5376751 (= e!3335775 (not (isDefined!11913 lt!2189487)))))

(assert (= (and d!1721019 res!2282623) b!5376744))

(assert (= (and d!1721019 c!936965) b!5376747))

(assert (= (and d!1721019 (not c!936965)) b!5376745))

(assert (= (and b!5376745 c!936966) b!5376749))

(assert (= (and b!5376745 (not c!936966)) b!5376746))

(assert (= (and d!1721019 res!2282619) b!5376750))

(assert (= (and b!5376750 res!2282622) b!5376743))

(assert (= (and b!5376743 res!2282620) b!5376748))

(assert (= (and d!1721019 (not res!2282621)) b!5376751))

(declare-fun m!6403166 () Bool)

(assert (=> b!5376744 m!6403166))

(declare-fun m!6403168 () Bool)

(assert (=> b!5376743 m!6403168))

(declare-fun m!6403170 () Bool)

(assert (=> b!5376743 m!6403170))

(assert (=> b!5376748 m!6403168))

(declare-fun m!6403172 () Bool)

(assert (=> b!5376748 m!6403172))

(declare-fun m!6403174 () Bool)

(assert (=> b!5376751 m!6403174))

(assert (=> b!5376750 m!6403168))

(declare-fun m!6403176 () Bool)

(assert (=> b!5376750 m!6403176))

(declare-fun m!6403178 () Bool)

(assert (=> b!5376746 m!6403178))

(assert (=> b!5376746 m!6403178))

(declare-fun m!6403180 () Bool)

(assert (=> b!5376746 m!6403180))

(declare-fun m!6403182 () Bool)

(assert (=> b!5376746 m!6403182))

(assert (=> b!5376746 m!6403178))

(declare-fun m!6403184 () Bool)

(assert (=> b!5376746 m!6403184))

(assert (=> d!1721019 m!6403174))

(declare-fun m!6403186 () Bool)

(assert (=> d!1721019 m!6403186))

(assert (=> d!1721019 m!6402938))

(assert (=> b!5376348 d!1721019))

(declare-fun d!1721039 () Bool)

(declare-fun isEmpty!33462 (Option!15210) Bool)

(assert (=> d!1721039 (= (isDefined!11913 lt!2189432) (not (isEmpty!33462 lt!2189432)))))

(declare-fun bs!1244764 () Bool)

(assert (= bs!1244764 d!1721039))

(declare-fun m!6403188 () Bool)

(assert (=> bs!1244764 m!6403188))

(assert (=> b!5376348 d!1721039))

(declare-fun d!1721041 () Bool)

(assert (=> d!1721041 (= (get!21157 lt!2189432) (v!51238 lt!2189432))))

(assert (=> b!5376348 d!1721041))

(declare-fun b!5376771 () Bool)

(declare-fun res!2282631 () Bool)

(declare-fun e!3335787 () Bool)

(assert (=> b!5376771 (=> (not res!2282631) (not e!3335787))))

(declare-fun lt!2189493 () List!61596)

(declare-fun size!39799 (List!61596) Int)

(assert (=> b!5376771 (= res!2282631 (= (size!39799 lt!2189493) (+ (size!39799 (_1!35601 lt!2189400)) (size!39799 (_2!35601 lt!2189400)))))))

(declare-fun b!5376769 () Bool)

(declare-fun e!3335786 () List!61596)

(assert (=> b!5376769 (= e!3335786 (_2!35601 lt!2189400))))

(declare-fun d!1721043 () Bool)

(assert (=> d!1721043 e!3335787))

(declare-fun res!2282632 () Bool)

(assert (=> d!1721043 (=> (not res!2282632) (not e!3335787))))

(declare-fun content!10991 (List!61596) (InoxSet C!30468))

(assert (=> d!1721043 (= res!2282632 (= (content!10991 lt!2189493) ((_ map or) (content!10991 (_1!35601 lt!2189400)) (content!10991 (_2!35601 lt!2189400)))))))

(assert (=> d!1721043 (= lt!2189493 e!3335786)))

(declare-fun c!936972 () Bool)

(assert (=> d!1721043 (= c!936972 ((_ is Nil!61472) (_1!35601 lt!2189400)))))

(assert (=> d!1721043 (= (++!13402 (_1!35601 lt!2189400) (_2!35601 lt!2189400)) lt!2189493)))

(declare-fun b!5376770 () Bool)

(assert (=> b!5376770 (= e!3335786 (Cons!61472 (h!67920 (_1!35601 lt!2189400)) (++!13402 (t!374819 (_1!35601 lt!2189400)) (_2!35601 lt!2189400))))))

(declare-fun b!5376772 () Bool)

(assert (=> b!5376772 (= e!3335787 (or (not (= (_2!35601 lt!2189400) Nil!61472)) (= lt!2189493 (_1!35601 lt!2189400))))))

(assert (= (and d!1721043 c!936972) b!5376769))

(assert (= (and d!1721043 (not c!936972)) b!5376770))

(assert (= (and d!1721043 res!2282632) b!5376771))

(assert (= (and b!5376771 res!2282631) b!5376772))

(declare-fun m!6403206 () Bool)

(assert (=> b!5376771 m!6403206))

(declare-fun m!6403208 () Bool)

(assert (=> b!5376771 m!6403208))

(declare-fun m!6403212 () Bool)

(assert (=> b!5376771 m!6403212))

(declare-fun m!6403214 () Bool)

(assert (=> d!1721043 m!6403214))

(declare-fun m!6403216 () Bool)

(assert (=> d!1721043 m!6403216))

(declare-fun m!6403218 () Bool)

(assert (=> d!1721043 m!6403218))

(declare-fun m!6403222 () Bool)

(assert (=> b!5376770 m!6403222))

(assert (=> b!5376348 d!1721043))

(declare-fun bs!1244765 () Bool)

(declare-fun d!1721051 () Bool)

(assert (= bs!1244765 (and d!1721051 d!1721017)))

(declare-fun lambda!277904 () Int)

(assert (=> bs!1244765 (= lambda!277904 lambda!277893)))

(declare-fun bs!1244766 () Bool)

(assert (= bs!1244766 (and d!1721051 b!5376357)))

(assert (=> bs!1244766 (= (and (= s!2326 (_1!35601 lt!2189400)) (= lt!2189414 (reg!15428 (regOne!30710 r!7292))) (= (regTwo!30710 r!7292) lt!2189414)) (= lambda!277904 lambda!277861))))

(declare-fun bs!1244767 () Bool)

(assert (= bs!1244767 (and d!1721051 b!5376505)))

(assert (=> bs!1244767 (not (= lambda!277904 lambda!277877))))

(assert (=> bs!1244766 (not (= lambda!277904 lambda!277863))))

(declare-fun bs!1244768 () Bool)

(assert (= bs!1244768 (and d!1721051 b!5376498)))

(assert (=> bs!1244768 (not (= lambda!277904 lambda!277875))))

(assert (=> bs!1244766 (not (= lambda!277904 lambda!277862))))

(declare-fun bs!1244769 () Bool)

(assert (= bs!1244769 (and d!1721051 b!5376329)))

(assert (=> bs!1244769 (not (= lambda!277904 lambda!277857))))

(declare-fun bs!1244770 () Bool)

(assert (= bs!1244770 (and d!1721051 b!5376348)))

(assert (=> bs!1244770 (not (= lambda!277904 lambda!277860))))

(assert (=> bs!1244769 (= (= lt!2189414 (regOne!30710 r!7292)) (= lambda!277904 lambda!277856))))

(assert (=> bs!1244770 (= lambda!277904 lambda!277859)))

(assert (=> d!1721051 true))

(assert (=> d!1721051 true))

(assert (=> d!1721051 true))

(declare-fun lambda!277905 () Int)

(assert (=> bs!1244766 (not (= lambda!277905 lambda!277861))))

(assert (=> bs!1244767 (= (and (= lt!2189414 (regOne!30710 lt!2189426)) (= (regTwo!30710 r!7292) (regTwo!30710 lt!2189426))) (= lambda!277905 lambda!277877))))

(assert (=> bs!1244766 (= (and (= s!2326 (_1!35601 lt!2189400)) (= lt!2189414 (reg!15428 (regOne!30710 r!7292))) (= (regTwo!30710 r!7292) lt!2189414)) (= lambda!277905 lambda!277863))))

(assert (=> bs!1244768 (not (= lambda!277905 lambda!277875))))

(assert (=> bs!1244766 (not (= lambda!277905 lambda!277862))))

(assert (=> bs!1244769 (= (= lt!2189414 (regOne!30710 r!7292)) (= lambda!277905 lambda!277857))))

(assert (=> bs!1244770 (= lambda!277905 lambda!277860)))

(assert (=> bs!1244769 (not (= lambda!277905 lambda!277856))))

(assert (=> bs!1244770 (not (= lambda!277905 lambda!277859))))

(assert (=> bs!1244765 (not (= lambda!277905 lambda!277893))))

(declare-fun bs!1244772 () Bool)

(assert (= bs!1244772 d!1721051))

(assert (=> bs!1244772 (not (= lambda!277905 lambda!277904))))

(assert (=> d!1721051 true))

(assert (=> d!1721051 true))

(assert (=> d!1721051 true))

(assert (=> d!1721051 (= (Exists!2280 lambda!277904) (Exists!2280 lambda!277905))))

(declare-fun lt!2189496 () Unit!153914)

(declare-fun choose!40397 (Regex!15099 Regex!15099 List!61596) Unit!153914)

(assert (=> d!1721051 (= lt!2189496 (choose!40397 lt!2189414 (regTwo!30710 r!7292) s!2326))))

(assert (=> d!1721051 (validRegex!6835 lt!2189414)))

(assert (=> d!1721051 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!934 lt!2189414 (regTwo!30710 r!7292) s!2326) lt!2189496)))

(declare-fun m!6403236 () Bool)

(assert (=> bs!1244772 m!6403236))

(declare-fun m!6403238 () Bool)

(assert (=> bs!1244772 m!6403238))

(declare-fun m!6403240 () Bool)

(assert (=> bs!1244772 m!6403240))

(assert (=> bs!1244772 m!6402938))

(assert (=> b!5376348 d!1721051))

(declare-fun d!1721059 () Bool)

(assert (=> d!1721059 (= (Exists!2280 lambda!277860) (choose!40394 lambda!277860))))

(declare-fun bs!1244773 () Bool)

(assert (= bs!1244773 d!1721059))

(declare-fun m!6403242 () Bool)

(assert (=> bs!1244773 m!6403242))

(assert (=> b!5376348 d!1721059))

(declare-fun b!5376841 () Bool)

(declare-fun e!3335826 () (InoxSet Context!8966))

(declare-fun call!385009 () (InoxSet Context!8966))

(assert (=> b!5376841 (= e!3335826 call!385009)))

(declare-fun b!5376842 () Bool)

(declare-fun e!3335828 () Bool)

(assert (=> b!5376842 (= e!3335828 (nullable!5268 (h!67921 (exprs!4983 lt!2189401))))))

(declare-fun b!5376843 () Bool)

(assert (=> b!5376843 (= e!3335826 ((as const (Array Context!8966 Bool)) false))))

(declare-fun b!5376844 () Bool)

(declare-fun e!3335827 () (InoxSet Context!8966))

(assert (=> b!5376844 (= e!3335827 e!3335826)))

(declare-fun c!937000 () Bool)

(assert (=> b!5376844 (= c!937000 ((_ is Cons!61473) (exprs!4983 lt!2189401)))))

(declare-fun bm!385004 () Bool)

(assert (=> bm!385004 (= call!385009 (derivationStepZipperDown!547 (h!67921 (exprs!4983 lt!2189401)) (Context!8967 (t!374820 (exprs!4983 lt!2189401))) (h!67920 s!2326)))))

(declare-fun b!5376845 () Bool)

(assert (=> b!5376845 (= e!3335827 ((_ map or) call!385009 (derivationStepZipperUp!471 (Context!8967 (t!374820 (exprs!4983 lt!2189401))) (h!67920 s!2326))))))

(declare-fun d!1721061 () Bool)

(declare-fun c!936999 () Bool)

(assert (=> d!1721061 (= c!936999 e!3335828)))

(declare-fun res!2282649 () Bool)

(assert (=> d!1721061 (=> (not res!2282649) (not e!3335828))))

(assert (=> d!1721061 (= res!2282649 ((_ is Cons!61473) (exprs!4983 lt!2189401)))))

(assert (=> d!1721061 (= (derivationStepZipperUp!471 lt!2189401 (h!67920 s!2326)) e!3335827)))

(assert (= (and d!1721061 res!2282649) b!5376842))

(assert (= (and d!1721061 c!936999) b!5376845))

(assert (= (and d!1721061 (not c!936999)) b!5376844))

(assert (= (and b!5376844 c!937000) b!5376841))

(assert (= (and b!5376844 (not c!937000)) b!5376843))

(assert (= (or b!5376845 b!5376841) bm!385004))

(declare-fun m!6403250 () Bool)

(assert (=> b!5376842 m!6403250))

(declare-fun m!6403252 () Bool)

(assert (=> bm!385004 m!6403252))

(declare-fun m!6403254 () Bool)

(assert (=> b!5376845 m!6403254))

(assert (=> b!5376325 d!1721061))

(declare-fun bm!385019 () Bool)

(declare-fun call!385025 () List!61597)

(declare-fun call!385027 () List!61597)

(assert (=> bm!385019 (= call!385025 call!385027)))

(declare-fun bm!385020 () Bool)

(declare-fun call!385028 () (InoxSet Context!8966))

(declare-fun c!937025 () Bool)

(declare-fun c!937027 () Bool)

(declare-fun c!937026 () Bool)

(assert (=> bm!385020 (= call!385028 (derivationStepZipperDown!547 (ite c!937025 (regTwo!30711 (h!67921 (exprs!4983 (h!67922 zl!343)))) (ite c!937026 (regTwo!30710 (h!67921 (exprs!4983 (h!67922 zl!343)))) (ite c!937027 (regOne!30710 (h!67921 (exprs!4983 (h!67922 zl!343)))) (reg!15428 (h!67921 (exprs!4983 (h!67922 zl!343))))))) (ite (or c!937025 c!937026) lt!2189401 (Context!8967 call!385025)) (h!67920 s!2326)))))

(declare-fun b!5376898 () Bool)

(declare-fun e!3335860 () (InoxSet Context!8966))

(declare-fun call!385024 () (InoxSet Context!8966))

(declare-fun call!385029 () (InoxSet Context!8966))

(assert (=> b!5376898 (= e!3335860 ((_ map or) call!385024 call!385029))))

(declare-fun b!5376899 () Bool)

(declare-fun e!3335861 () (InoxSet Context!8966))

(assert (=> b!5376899 (= e!3335861 ((as const (Array Context!8966 Bool)) false))))

(declare-fun b!5376900 () Bool)

(declare-fun c!937023 () Bool)

(assert (=> b!5376900 (= c!937023 ((_ is Star!15099) (h!67921 (exprs!4983 (h!67922 zl!343)))))))

(declare-fun e!3335863 () (InoxSet Context!8966))

(assert (=> b!5376900 (= e!3335863 e!3335861)))

(declare-fun b!5376901 () Bool)

(declare-fun e!3335864 () Bool)

(assert (=> b!5376901 (= c!937026 e!3335864)))

(declare-fun res!2282658 () Bool)

(assert (=> b!5376901 (=> (not res!2282658) (not e!3335864))))

(assert (=> b!5376901 (= res!2282658 ((_ is Concat!23944) (h!67921 (exprs!4983 (h!67922 zl!343)))))))

(declare-fun e!3335859 () (InoxSet Context!8966))

(assert (=> b!5376901 (= e!3335859 e!3335860)))

(declare-fun b!5376902 () Bool)

(assert (=> b!5376902 (= e!3335864 (nullable!5268 (regOne!30710 (h!67921 (exprs!4983 (h!67922 zl!343))))))))

(declare-fun bm!385021 () Bool)

(assert (=> bm!385021 (= call!385029 call!385028)))

(declare-fun d!1721065 () Bool)

(declare-fun c!937024 () Bool)

(assert (=> d!1721065 (= c!937024 (and ((_ is ElementMatch!15099) (h!67921 (exprs!4983 (h!67922 zl!343)))) (= (c!936875 (h!67921 (exprs!4983 (h!67922 zl!343)))) (h!67920 s!2326))))))

(declare-fun e!3335862 () (InoxSet Context!8966))

(assert (=> d!1721065 (= (derivationStepZipperDown!547 (h!67921 (exprs!4983 (h!67922 zl!343))) lt!2189401 (h!67920 s!2326)) e!3335862)))

(declare-fun b!5376903 () Bool)

(assert (=> b!5376903 (= e!3335862 e!3335859)))

(assert (=> b!5376903 (= c!937025 ((_ is Union!15099) (h!67921 (exprs!4983 (h!67922 zl!343)))))))

(declare-fun b!5376904 () Bool)

(assert (=> b!5376904 (= e!3335859 ((_ map or) call!385024 call!385028))))

(declare-fun bm!385022 () Bool)

(declare-fun call!385026 () (InoxSet Context!8966))

(assert (=> bm!385022 (= call!385026 call!385029)))

(declare-fun b!5376905 () Bool)

(assert (=> b!5376905 (= e!3335860 e!3335863)))

(assert (=> b!5376905 (= c!937027 ((_ is Concat!23944) (h!67921 (exprs!4983 (h!67922 zl!343)))))))

(declare-fun b!5376906 () Bool)

(assert (=> b!5376906 (= e!3335863 call!385026)))

(declare-fun bm!385023 () Bool)

(assert (=> bm!385023 (= call!385024 (derivationStepZipperDown!547 (ite c!937025 (regOne!30711 (h!67921 (exprs!4983 (h!67922 zl!343)))) (regOne!30710 (h!67921 (exprs!4983 (h!67922 zl!343))))) (ite c!937025 lt!2189401 (Context!8967 call!385027)) (h!67920 s!2326)))))

(declare-fun b!5376907 () Bool)

(assert (=> b!5376907 (= e!3335861 call!385026)))

(declare-fun b!5376908 () Bool)

(assert (=> b!5376908 (= e!3335862 (store ((as const (Array Context!8966 Bool)) false) lt!2189401 true))))

(declare-fun bm!385024 () Bool)

(declare-fun $colon$colon!1458 (List!61597 Regex!15099) List!61597)

(assert (=> bm!385024 (= call!385027 ($colon$colon!1458 (exprs!4983 lt!2189401) (ite (or c!937026 c!937027) (regTwo!30710 (h!67921 (exprs!4983 (h!67922 zl!343)))) (h!67921 (exprs!4983 (h!67922 zl!343))))))))

(assert (= (and d!1721065 c!937024) b!5376908))

(assert (= (and d!1721065 (not c!937024)) b!5376903))

(assert (= (and b!5376903 c!937025) b!5376904))

(assert (= (and b!5376903 (not c!937025)) b!5376901))

(assert (= (and b!5376901 res!2282658) b!5376902))

(assert (= (and b!5376901 c!937026) b!5376898))

(assert (= (and b!5376901 (not c!937026)) b!5376905))

(assert (= (and b!5376905 c!937027) b!5376906))

(assert (= (and b!5376905 (not c!937027)) b!5376900))

(assert (= (and b!5376900 c!937023) b!5376907))

(assert (= (and b!5376900 (not c!937023)) b!5376899))

(assert (= (or b!5376906 b!5376907) bm!385019))

(assert (= (or b!5376906 b!5376907) bm!385022))

(assert (= (or b!5376898 bm!385019) bm!385024))

(assert (= (or b!5376898 bm!385022) bm!385021))

(assert (= (or b!5376904 bm!385021) bm!385020))

(assert (= (or b!5376904 b!5376898) bm!385023))

(declare-fun m!6403274 () Bool)

(assert (=> bm!385023 m!6403274))

(declare-fun m!6403276 () Bool)

(assert (=> b!5376902 m!6403276))

(declare-fun m!6403278 () Bool)

(assert (=> b!5376908 m!6403278))

(declare-fun m!6403280 () Bool)

(assert (=> bm!385024 m!6403280))

(declare-fun m!6403282 () Bool)

(assert (=> bm!385020 m!6403282))

(assert (=> b!5376325 d!1721065))

(declare-fun b!5376919 () Bool)

(declare-fun e!3335871 () (InoxSet Context!8966))

(declare-fun call!385030 () (InoxSet Context!8966))

(assert (=> b!5376919 (= e!3335871 call!385030)))

(declare-fun b!5376920 () Bool)

(declare-fun e!3335873 () Bool)

(assert (=> b!5376920 (= e!3335873 (nullable!5268 (h!67921 (exprs!4983 (Context!8967 (Cons!61473 (h!67921 (exprs!4983 (h!67922 zl!343))) (t!374820 (exprs!4983 (h!67922 zl!343)))))))))))

(declare-fun b!5376921 () Bool)

(assert (=> b!5376921 (= e!3335871 ((as const (Array Context!8966 Bool)) false))))

(declare-fun b!5376922 () Bool)

(declare-fun e!3335872 () (InoxSet Context!8966))

(assert (=> b!5376922 (= e!3335872 e!3335871)))

(declare-fun c!937033 () Bool)

(assert (=> b!5376922 (= c!937033 ((_ is Cons!61473) (exprs!4983 (Context!8967 (Cons!61473 (h!67921 (exprs!4983 (h!67922 zl!343))) (t!374820 (exprs!4983 (h!67922 zl!343))))))))))

(declare-fun bm!385025 () Bool)

(assert (=> bm!385025 (= call!385030 (derivationStepZipperDown!547 (h!67921 (exprs!4983 (Context!8967 (Cons!61473 (h!67921 (exprs!4983 (h!67922 zl!343))) (t!374820 (exprs!4983 (h!67922 zl!343))))))) (Context!8967 (t!374820 (exprs!4983 (Context!8967 (Cons!61473 (h!67921 (exprs!4983 (h!67922 zl!343))) (t!374820 (exprs!4983 (h!67922 zl!343)))))))) (h!67920 s!2326)))))

(declare-fun b!5376923 () Bool)

(assert (=> b!5376923 (= e!3335872 ((_ map or) call!385030 (derivationStepZipperUp!471 (Context!8967 (t!374820 (exprs!4983 (Context!8967 (Cons!61473 (h!67921 (exprs!4983 (h!67922 zl!343))) (t!374820 (exprs!4983 (h!67922 zl!343)))))))) (h!67920 s!2326))))))

(declare-fun d!1721075 () Bool)

(declare-fun c!937032 () Bool)

(assert (=> d!1721075 (= c!937032 e!3335873)))

(declare-fun res!2282661 () Bool)

(assert (=> d!1721075 (=> (not res!2282661) (not e!3335873))))

(assert (=> d!1721075 (= res!2282661 ((_ is Cons!61473) (exprs!4983 (Context!8967 (Cons!61473 (h!67921 (exprs!4983 (h!67922 zl!343))) (t!374820 (exprs!4983 (h!67922 zl!343))))))))))

(assert (=> d!1721075 (= (derivationStepZipperUp!471 (Context!8967 (Cons!61473 (h!67921 (exprs!4983 (h!67922 zl!343))) (t!374820 (exprs!4983 (h!67922 zl!343))))) (h!67920 s!2326)) e!3335872)))

(assert (= (and d!1721075 res!2282661) b!5376920))

(assert (= (and d!1721075 c!937032) b!5376923))

(assert (= (and d!1721075 (not c!937032)) b!5376922))

(assert (= (and b!5376922 c!937033) b!5376919))

(assert (= (and b!5376922 (not c!937033)) b!5376921))

(assert (= (or b!5376923 b!5376919) bm!385025))

(declare-fun m!6403304 () Bool)

(assert (=> b!5376920 m!6403304))

(declare-fun m!6403306 () Bool)

(assert (=> bm!385025 m!6403306))

(declare-fun m!6403308 () Bool)

(assert (=> b!5376923 m!6403308))

(assert (=> b!5376325 d!1721075))

(declare-fun b!5376929 () Bool)

(declare-fun e!3335877 () (InoxSet Context!8966))

(declare-fun call!385032 () (InoxSet Context!8966))

(assert (=> b!5376929 (= e!3335877 call!385032)))

(declare-fun b!5376930 () Bool)

(declare-fun e!3335879 () Bool)

(assert (=> b!5376930 (= e!3335879 (nullable!5268 (h!67921 (exprs!4983 (h!67922 zl!343)))))))

(declare-fun b!5376931 () Bool)

(assert (=> b!5376931 (= e!3335877 ((as const (Array Context!8966 Bool)) false))))

(declare-fun b!5376932 () Bool)

(declare-fun e!3335878 () (InoxSet Context!8966))

(assert (=> b!5376932 (= e!3335878 e!3335877)))

(declare-fun c!937037 () Bool)

(assert (=> b!5376932 (= c!937037 ((_ is Cons!61473) (exprs!4983 (h!67922 zl!343))))))

(declare-fun bm!385027 () Bool)

(assert (=> bm!385027 (= call!385032 (derivationStepZipperDown!547 (h!67921 (exprs!4983 (h!67922 zl!343))) (Context!8967 (t!374820 (exprs!4983 (h!67922 zl!343)))) (h!67920 s!2326)))))

(declare-fun b!5376933 () Bool)

(assert (=> b!5376933 (= e!3335878 ((_ map or) call!385032 (derivationStepZipperUp!471 (Context!8967 (t!374820 (exprs!4983 (h!67922 zl!343)))) (h!67920 s!2326))))))

(declare-fun d!1721081 () Bool)

(declare-fun c!937036 () Bool)

(assert (=> d!1721081 (= c!937036 e!3335879)))

(declare-fun res!2282663 () Bool)

(assert (=> d!1721081 (=> (not res!2282663) (not e!3335879))))

(assert (=> d!1721081 (= res!2282663 ((_ is Cons!61473) (exprs!4983 (h!67922 zl!343))))))

(assert (=> d!1721081 (= (derivationStepZipperUp!471 (h!67922 zl!343) (h!67920 s!2326)) e!3335878)))

(assert (= (and d!1721081 res!2282663) b!5376930))

(assert (= (and d!1721081 c!937036) b!5376933))

(assert (= (and d!1721081 (not c!937036)) b!5376932))

(assert (= (and b!5376932 c!937037) b!5376929))

(assert (= (and b!5376932 (not c!937037)) b!5376931))

(assert (= (or b!5376933 b!5376929) bm!385027))

(assert (=> b!5376930 m!6402856))

(declare-fun m!6403316 () Bool)

(assert (=> bm!385027 m!6403316))

(declare-fun m!6403318 () Bool)

(assert (=> b!5376933 m!6403318))

(assert (=> b!5376325 d!1721081))

(declare-fun d!1721085 () Bool)

(declare-fun dynLambda!24269 (Int Context!8966) (InoxSet Context!8966))

(assert (=> d!1721085 (= (flatMap!826 z!1189 lambda!277858) (dynLambda!24269 lambda!277858 (h!67922 zl!343)))))

(declare-fun lt!2189506 () Unit!153914)

(declare-fun choose!40400 ((InoxSet Context!8966) Context!8966 Int) Unit!153914)

(assert (=> d!1721085 (= lt!2189506 (choose!40400 z!1189 (h!67922 zl!343) lambda!277858))))

(assert (=> d!1721085 (= z!1189 (store ((as const (Array Context!8966 Bool)) false) (h!67922 zl!343) true))))

(assert (=> d!1721085 (= (lemmaFlatMapOnSingletonSet!358 z!1189 (h!67922 zl!343) lambda!277858) lt!2189506)))

(declare-fun b_lambda!206001 () Bool)

(assert (=> (not b_lambda!206001) (not d!1721085)))

(declare-fun bs!1244782 () Bool)

(assert (= bs!1244782 d!1721085))

(assert (=> bs!1244782 m!6402858))

(declare-fun m!6403326 () Bool)

(assert (=> bs!1244782 m!6403326))

(declare-fun m!6403328 () Bool)

(assert (=> bs!1244782 m!6403328))

(declare-fun m!6403330 () Bool)

(assert (=> bs!1244782 m!6403330))

(assert (=> b!5376325 d!1721085))

(declare-fun d!1721091 () Bool)

(declare-fun nullableFct!1560 (Regex!15099) Bool)

(assert (=> d!1721091 (= (nullable!5268 (h!67921 (exprs!4983 (h!67922 zl!343)))) (nullableFct!1560 (h!67921 (exprs!4983 (h!67922 zl!343)))))))

(declare-fun bs!1244783 () Bool)

(assert (= bs!1244783 d!1721091))

(declare-fun m!6403332 () Bool)

(assert (=> bs!1244783 m!6403332))

(assert (=> b!5376325 d!1721091))

(declare-fun d!1721095 () Bool)

(declare-fun choose!40401 ((InoxSet Context!8966) Int) (InoxSet Context!8966))

(assert (=> d!1721095 (= (flatMap!826 z!1189 lambda!277858) (choose!40401 z!1189 lambda!277858))))

(declare-fun bs!1244784 () Bool)

(assert (= bs!1244784 d!1721095))

(declare-fun m!6403334 () Bool)

(assert (=> bs!1244784 m!6403334))

(assert (=> b!5376325 d!1721095))

(declare-fun d!1721097 () Bool)

(declare-fun lt!2189512 () Regex!15099)

(assert (=> d!1721097 (validRegex!6835 lt!2189512)))

(assert (=> d!1721097 (= lt!2189512 (generalisedUnion!1028 (unfocusZipperList!541 (Cons!61474 lt!2189428 Nil!61474))))))

(assert (=> d!1721097 (= (unfocusZipper!841 (Cons!61474 lt!2189428 Nil!61474)) lt!2189512)))

(declare-fun bs!1244786 () Bool)

(assert (= bs!1244786 d!1721097))

(declare-fun m!6403342 () Bool)

(assert (=> bs!1244786 m!6403342))

(declare-fun m!6403344 () Bool)

(assert (=> bs!1244786 m!6403344))

(assert (=> bs!1244786 m!6403344))

(declare-fun m!6403346 () Bool)

(assert (=> bs!1244786 m!6403346))

(assert (=> b!5376361 d!1721097))

(declare-fun bm!385034 () Bool)

(declare-fun call!385040 () List!61597)

(declare-fun call!385042 () List!61597)

(assert (=> bm!385034 (= call!385040 call!385042)))

(declare-fun c!937047 () Bool)

(declare-fun call!385043 () (InoxSet Context!8966))

(declare-fun bm!385035 () Bool)

(declare-fun c!937048 () Bool)

(declare-fun c!937049 () Bool)

(assert (=> bm!385035 (= call!385043 (derivationStepZipperDown!547 (ite c!937047 (regTwo!30711 (reg!15428 (regOne!30710 r!7292))) (ite c!937048 (regTwo!30710 (reg!15428 (regOne!30710 r!7292))) (ite c!937049 (regOne!30710 (reg!15428 (regOne!30710 r!7292))) (reg!15428 (reg!15428 (regOne!30710 r!7292)))))) (ite (or c!937047 c!937048) lt!2189406 (Context!8967 call!385040)) (h!67920 s!2326)))))

(declare-fun b!5376947 () Bool)

(declare-fun e!3335887 () (InoxSet Context!8966))

(declare-fun call!385039 () (InoxSet Context!8966))

(declare-fun call!385044 () (InoxSet Context!8966))

(assert (=> b!5376947 (= e!3335887 ((_ map or) call!385039 call!385044))))

(declare-fun b!5376948 () Bool)

(declare-fun e!3335888 () (InoxSet Context!8966))

(assert (=> b!5376948 (= e!3335888 ((as const (Array Context!8966 Bool)) false))))

(declare-fun b!5376949 () Bool)

(declare-fun c!937045 () Bool)

(assert (=> b!5376949 (= c!937045 ((_ is Star!15099) (reg!15428 (regOne!30710 r!7292))))))

(declare-fun e!3335890 () (InoxSet Context!8966))

(assert (=> b!5376949 (= e!3335890 e!3335888)))

(declare-fun b!5376950 () Bool)

(declare-fun e!3335891 () Bool)

(assert (=> b!5376950 (= c!937048 e!3335891)))

(declare-fun res!2282665 () Bool)

(assert (=> b!5376950 (=> (not res!2282665) (not e!3335891))))

(assert (=> b!5376950 (= res!2282665 ((_ is Concat!23944) (reg!15428 (regOne!30710 r!7292))))))

(declare-fun e!3335886 () (InoxSet Context!8966))

(assert (=> b!5376950 (= e!3335886 e!3335887)))

(declare-fun b!5376951 () Bool)

(assert (=> b!5376951 (= e!3335891 (nullable!5268 (regOne!30710 (reg!15428 (regOne!30710 r!7292)))))))

(declare-fun bm!385036 () Bool)

(assert (=> bm!385036 (= call!385044 call!385043)))

(declare-fun d!1721101 () Bool)

(declare-fun c!937046 () Bool)

(assert (=> d!1721101 (= c!937046 (and ((_ is ElementMatch!15099) (reg!15428 (regOne!30710 r!7292))) (= (c!936875 (reg!15428 (regOne!30710 r!7292))) (h!67920 s!2326))))))

(declare-fun e!3335889 () (InoxSet Context!8966))

(assert (=> d!1721101 (= (derivationStepZipperDown!547 (reg!15428 (regOne!30710 r!7292)) lt!2189406 (h!67920 s!2326)) e!3335889)))

(declare-fun b!5376952 () Bool)

(assert (=> b!5376952 (= e!3335889 e!3335886)))

(assert (=> b!5376952 (= c!937047 ((_ is Union!15099) (reg!15428 (regOne!30710 r!7292))))))

(declare-fun b!5376953 () Bool)

(assert (=> b!5376953 (= e!3335886 ((_ map or) call!385039 call!385043))))

(declare-fun bm!385037 () Bool)

(declare-fun call!385041 () (InoxSet Context!8966))

(assert (=> bm!385037 (= call!385041 call!385044)))

(declare-fun b!5376954 () Bool)

(assert (=> b!5376954 (= e!3335887 e!3335890)))

(assert (=> b!5376954 (= c!937049 ((_ is Concat!23944) (reg!15428 (regOne!30710 r!7292))))))

(declare-fun b!5376955 () Bool)

(assert (=> b!5376955 (= e!3335890 call!385041)))

(declare-fun bm!385038 () Bool)

(assert (=> bm!385038 (= call!385039 (derivationStepZipperDown!547 (ite c!937047 (regOne!30711 (reg!15428 (regOne!30710 r!7292))) (regOne!30710 (reg!15428 (regOne!30710 r!7292)))) (ite c!937047 lt!2189406 (Context!8967 call!385042)) (h!67920 s!2326)))))

(declare-fun b!5376956 () Bool)

(assert (=> b!5376956 (= e!3335888 call!385041)))

(declare-fun b!5376957 () Bool)

(assert (=> b!5376957 (= e!3335889 (store ((as const (Array Context!8966 Bool)) false) lt!2189406 true))))

(declare-fun bm!385039 () Bool)

(assert (=> bm!385039 (= call!385042 ($colon$colon!1458 (exprs!4983 lt!2189406) (ite (or c!937048 c!937049) (regTwo!30710 (reg!15428 (regOne!30710 r!7292))) (reg!15428 (regOne!30710 r!7292)))))))

(assert (= (and d!1721101 c!937046) b!5376957))

(assert (= (and d!1721101 (not c!937046)) b!5376952))

(assert (= (and b!5376952 c!937047) b!5376953))

(assert (= (and b!5376952 (not c!937047)) b!5376950))

(assert (= (and b!5376950 res!2282665) b!5376951))

(assert (= (and b!5376950 c!937048) b!5376947))

(assert (= (and b!5376950 (not c!937048)) b!5376954))

(assert (= (and b!5376954 c!937049) b!5376955))

(assert (= (and b!5376954 (not c!937049)) b!5376949))

(assert (= (and b!5376949 c!937045) b!5376956))

(assert (= (and b!5376949 (not c!937045)) b!5376948))

(assert (= (or b!5376955 b!5376956) bm!385034))

(assert (= (or b!5376955 b!5376956) bm!385037))

(assert (= (or b!5376947 bm!385034) bm!385039))

(assert (= (or b!5376947 bm!385037) bm!385036))

(assert (= (or b!5376953 bm!385036) bm!385035))

(assert (= (or b!5376953 b!5376947) bm!385038))

(declare-fun m!6403356 () Bool)

(assert (=> bm!385038 m!6403356))

(declare-fun m!6403358 () Bool)

(assert (=> b!5376951 m!6403358))

(assert (=> b!5376957 m!6402876))

(declare-fun m!6403360 () Bool)

(assert (=> bm!385039 m!6403360))

(declare-fun m!6403362 () Bool)

(assert (=> bm!385035 m!6403362))

(assert (=> b!5376340 d!1721101))

(declare-fun d!1721105 () Bool)

(assert (=> d!1721105 (= (flatMap!826 lt!2189410 lambda!277858) (choose!40401 lt!2189410 lambda!277858))))

(declare-fun bs!1244787 () Bool)

(assert (= bs!1244787 d!1721105))

(declare-fun m!6403364 () Bool)

(assert (=> bs!1244787 m!6403364))

(assert (=> b!5376338 d!1721105))

(declare-fun b!5376967 () Bool)

(declare-fun e!3335897 () (InoxSet Context!8966))

(declare-fun call!385045 () (InoxSet Context!8966))

(assert (=> b!5376967 (= e!3335897 call!385045)))

(declare-fun b!5376968 () Bool)

(declare-fun e!3335899 () Bool)

(assert (=> b!5376968 (= e!3335899 (nullable!5268 (h!67921 (exprs!4983 lt!2189428))))))

(declare-fun b!5376969 () Bool)

(assert (=> b!5376969 (= e!3335897 ((as const (Array Context!8966 Bool)) false))))

(declare-fun b!5376970 () Bool)

(declare-fun e!3335898 () (InoxSet Context!8966))

(assert (=> b!5376970 (= e!3335898 e!3335897)))

(declare-fun c!937053 () Bool)

(assert (=> b!5376970 (= c!937053 ((_ is Cons!61473) (exprs!4983 lt!2189428)))))

(declare-fun bm!385040 () Bool)

(assert (=> bm!385040 (= call!385045 (derivationStepZipperDown!547 (h!67921 (exprs!4983 lt!2189428)) (Context!8967 (t!374820 (exprs!4983 lt!2189428))) (h!67920 s!2326)))))

(declare-fun b!5376971 () Bool)

(assert (=> b!5376971 (= e!3335898 ((_ map or) call!385045 (derivationStepZipperUp!471 (Context!8967 (t!374820 (exprs!4983 lt!2189428))) (h!67920 s!2326))))))

(declare-fun d!1721107 () Bool)

(declare-fun c!937052 () Bool)

(assert (=> d!1721107 (= c!937052 e!3335899)))

(declare-fun res!2282671 () Bool)

(assert (=> d!1721107 (=> (not res!2282671) (not e!3335899))))

(assert (=> d!1721107 (= res!2282671 ((_ is Cons!61473) (exprs!4983 lt!2189428)))))

(assert (=> d!1721107 (= (derivationStepZipperUp!471 lt!2189428 (h!67920 s!2326)) e!3335898)))

(assert (= (and d!1721107 res!2282671) b!5376968))

(assert (= (and d!1721107 c!937052) b!5376971))

(assert (= (and d!1721107 (not c!937052)) b!5376970))

(assert (= (and b!5376970 c!937053) b!5376967))

(assert (= (and b!5376970 (not c!937053)) b!5376969))

(assert (= (or b!5376971 b!5376967) bm!385040))

(declare-fun m!6403380 () Bool)

(assert (=> b!5376968 m!6403380))

(declare-fun m!6403382 () Bool)

(assert (=> bm!385040 m!6403382))

(declare-fun m!6403384 () Bool)

(assert (=> b!5376971 m!6403384))

(assert (=> b!5376338 d!1721107))

(declare-fun d!1721109 () Bool)

(assert (=> d!1721109 (= (flatMap!826 lt!2189410 lambda!277858) (dynLambda!24269 lambda!277858 lt!2189428))))

(declare-fun lt!2189516 () Unit!153914)

(assert (=> d!1721109 (= lt!2189516 (choose!40400 lt!2189410 lt!2189428 lambda!277858))))

(assert (=> d!1721109 (= lt!2189410 (store ((as const (Array Context!8966 Bool)) false) lt!2189428 true))))

(assert (=> d!1721109 (= (lemmaFlatMapOnSingletonSet!358 lt!2189410 lt!2189428 lambda!277858) lt!2189516)))

(declare-fun b_lambda!206003 () Bool)

(assert (=> (not b_lambda!206003) (not d!1721109)))

(declare-fun bs!1244788 () Bool)

(assert (= bs!1244788 d!1721109))

(assert (=> bs!1244788 m!6402948))

(declare-fun m!6403388 () Bool)

(assert (=> bs!1244788 m!6403388))

(declare-fun m!6403392 () Bool)

(assert (=> bs!1244788 m!6403392))

(assert (=> bs!1244788 m!6402946))

(assert (=> b!5376338 d!1721109))

(declare-fun bs!1244799 () Bool)

(declare-fun d!1721115 () Bool)

(assert (= bs!1244799 (and d!1721115 b!5376325)))

(declare-fun lambda!277915 () Int)

(assert (=> bs!1244799 (= lambda!277915 lambda!277858)))

(assert (=> d!1721115 true))

(assert (=> d!1721115 (= (derivationStepZipper!1338 lt!2189410 (h!67920 s!2326)) (flatMap!826 lt!2189410 lambda!277915))))

(declare-fun bs!1244801 () Bool)

(assert (= bs!1244801 d!1721115))

(declare-fun m!6403396 () Bool)

(assert (=> bs!1244801 m!6403396))

(assert (=> b!5376338 d!1721115))

(declare-fun b!5376976 () Bool)

(declare-fun res!2282672 () Bool)

(declare-fun e!3335901 () Bool)

(assert (=> b!5376976 (=> (not res!2282672) (not e!3335901))))

(declare-fun lt!2189518 () List!61596)

(assert (=> b!5376976 (= res!2282672 (= (size!39799 lt!2189518) (+ (size!39799 Nil!61472) (size!39799 (_1!35601 lt!2189400)))))))

(declare-fun b!5376974 () Bool)

(declare-fun e!3335900 () List!61596)

(assert (=> b!5376974 (= e!3335900 (_1!35601 lt!2189400))))

(declare-fun d!1721119 () Bool)

(assert (=> d!1721119 e!3335901))

(declare-fun res!2282673 () Bool)

(assert (=> d!1721119 (=> (not res!2282673) (not e!3335901))))

(assert (=> d!1721119 (= res!2282673 (= (content!10991 lt!2189518) ((_ map or) (content!10991 Nil!61472) (content!10991 (_1!35601 lt!2189400)))))))

(assert (=> d!1721119 (= lt!2189518 e!3335900)))

(declare-fun c!937056 () Bool)

(assert (=> d!1721119 (= c!937056 ((_ is Nil!61472) Nil!61472))))

(assert (=> d!1721119 (= (++!13402 Nil!61472 (_1!35601 lt!2189400)) lt!2189518)))

(declare-fun b!5376975 () Bool)

(assert (=> b!5376975 (= e!3335900 (Cons!61472 (h!67920 Nil!61472) (++!13402 (t!374819 Nil!61472) (_1!35601 lt!2189400))))))

(declare-fun b!5376977 () Bool)

(assert (=> b!5376977 (= e!3335901 (or (not (= (_1!35601 lt!2189400) Nil!61472)) (= lt!2189518 Nil!61472)))))

(assert (= (and d!1721119 c!937056) b!5376974))

(assert (= (and d!1721119 (not c!937056)) b!5376975))

(assert (= (and d!1721119 res!2282673) b!5376976))

(assert (= (and b!5376976 res!2282672) b!5376977))

(declare-fun m!6403398 () Bool)

(assert (=> b!5376976 m!6403398))

(declare-fun m!6403400 () Bool)

(assert (=> b!5376976 m!6403400))

(assert (=> b!5376976 m!6403208))

(declare-fun m!6403402 () Bool)

(assert (=> d!1721119 m!6403402))

(declare-fun m!6403404 () Bool)

(assert (=> d!1721119 m!6403404))

(assert (=> d!1721119 m!6403216))

(declare-fun m!6403410 () Bool)

(assert (=> b!5376975 m!6403410))

(assert (=> b!5376339 d!1721119))

(declare-fun bs!1244803 () Bool)

(declare-fun d!1721121 () Bool)

(assert (= bs!1244803 (and d!1721121 d!1720997)))

(declare-fun lambda!277916 () Int)

(assert (=> bs!1244803 (= lambda!277916 lambda!277881)))

(declare-fun bs!1244804 () Bool)

(assert (= bs!1244804 (and d!1721121 d!1721011)))

(assert (=> bs!1244804 (= lambda!277916 lambda!277886)))

(assert (=> d!1721121 (= (inv!80994 (h!67922 zl!343)) (forall!14500 (exprs!4983 (h!67922 zl!343)) lambda!277916))))

(declare-fun bs!1244805 () Bool)

(assert (= bs!1244805 d!1721121))

(declare-fun m!6403412 () Bool)

(assert (=> bs!1244805 m!6403412))

(assert (=> b!5376360 d!1721121))

(declare-fun d!1721125 () Bool)

(declare-fun c!937059 () Bool)

(assert (=> d!1721125 (= c!937059 (isEmpty!33459 s!2326))))

(declare-fun e!3335904 () Bool)

(assert (=> d!1721125 (= (matchZipper!1343 lt!2189410 s!2326) e!3335904)))

(declare-fun b!5376982 () Bool)

(declare-fun nullableZipper!1408 ((InoxSet Context!8966)) Bool)

(assert (=> b!5376982 (= e!3335904 (nullableZipper!1408 lt!2189410))))

(declare-fun b!5376983 () Bool)

(assert (=> b!5376983 (= e!3335904 (matchZipper!1343 (derivationStepZipper!1338 lt!2189410 (head!11532 s!2326)) (tail!10629 s!2326)))))

(assert (= (and d!1721125 c!937059) b!5376982))

(assert (= (and d!1721125 (not c!937059)) b!5376983))

(assert (=> d!1721125 m!6402978))

(declare-fun m!6403414 () Bool)

(assert (=> b!5376982 m!6403414))

(assert (=> b!5376983 m!6402970))

(assert (=> b!5376983 m!6402970))

(declare-fun m!6403416 () Bool)

(assert (=> b!5376983 m!6403416))

(assert (=> b!5376983 m!6402966))

(assert (=> b!5376983 m!6403416))

(assert (=> b!5376983 m!6402966))

(declare-fun m!6403418 () Bool)

(assert (=> b!5376983 m!6403418))

(assert (=> b!5376343 d!1721125))

(declare-fun d!1721127 () Bool)

(declare-fun c!937060 () Bool)

(assert (=> d!1721127 (= c!937060 (isEmpty!33459 (t!374819 s!2326)))))

(declare-fun e!3335905 () Bool)

(assert (=> d!1721127 (= (matchZipper!1343 lt!2189412 (t!374819 s!2326)) e!3335905)))

(declare-fun b!5376984 () Bool)

(assert (=> b!5376984 (= e!3335905 (nullableZipper!1408 lt!2189412))))

(declare-fun b!5376985 () Bool)

(assert (=> b!5376985 (= e!3335905 (matchZipper!1343 (derivationStepZipper!1338 lt!2189412 (head!11532 (t!374819 s!2326))) (tail!10629 (t!374819 s!2326))))))

(assert (= (and d!1721127 c!937060) b!5376984))

(assert (= (and d!1721127 (not c!937060)) b!5376985))

(declare-fun m!6403420 () Bool)

(assert (=> d!1721127 m!6403420))

(declare-fun m!6403422 () Bool)

(assert (=> b!5376984 m!6403422))

(declare-fun m!6403424 () Bool)

(assert (=> b!5376985 m!6403424))

(assert (=> b!5376985 m!6403424))

(declare-fun m!6403426 () Bool)

(assert (=> b!5376985 m!6403426))

(declare-fun m!6403428 () Bool)

(assert (=> b!5376985 m!6403428))

(assert (=> b!5376985 m!6403426))

(assert (=> b!5376985 m!6403428))

(declare-fun m!6403430 () Bool)

(assert (=> b!5376985 m!6403430))

(assert (=> b!5376343 d!1721127))

(declare-fun bs!1244819 () Bool)

(declare-fun b!5376989 () Bool)

(assert (= bs!1244819 (and b!5376989 b!5376357)))

(declare-fun lambda!277919 () Int)

(assert (=> bs!1244819 (not (= lambda!277919 lambda!277861))))

(declare-fun bs!1244820 () Bool)

(assert (= bs!1244820 (and b!5376989 b!5376505)))

(assert (=> bs!1244820 (not (= lambda!277919 lambda!277877))))

(assert (=> bs!1244819 (not (= lambda!277919 lambda!277863))))

(declare-fun bs!1244821 () Bool)

(assert (= bs!1244821 (and b!5376989 b!5376498)))

(assert (=> bs!1244821 (= (and (= (reg!15428 r!7292) (reg!15428 lt!2189426)) (= r!7292 lt!2189426)) (= lambda!277919 lambda!277875))))

(assert (=> bs!1244819 (= (and (= s!2326 (_1!35601 lt!2189400)) (= (reg!15428 r!7292) (reg!15428 (regOne!30710 r!7292))) (= r!7292 lt!2189414)) (= lambda!277919 lambda!277862))))

(declare-fun bs!1244822 () Bool)

(assert (= bs!1244822 (and b!5376989 b!5376329)))

(assert (=> bs!1244822 (not (= lambda!277919 lambda!277857))))

(declare-fun bs!1244823 () Bool)

(assert (= bs!1244823 (and b!5376989 d!1721051)))

(assert (=> bs!1244823 (not (= lambda!277919 lambda!277905))))

(declare-fun bs!1244824 () Bool)

(assert (= bs!1244824 (and b!5376989 b!5376348)))

(assert (=> bs!1244824 (not (= lambda!277919 lambda!277860))))

(assert (=> bs!1244822 (not (= lambda!277919 lambda!277856))))

(assert (=> bs!1244824 (not (= lambda!277919 lambda!277859))))

(declare-fun bs!1244825 () Bool)

(assert (= bs!1244825 (and b!5376989 d!1721017)))

(assert (=> bs!1244825 (not (= lambda!277919 lambda!277893))))

(assert (=> bs!1244823 (not (= lambda!277919 lambda!277904))))

(assert (=> b!5376989 true))

(assert (=> b!5376989 true))

(declare-fun bs!1244826 () Bool)

(declare-fun b!5376996 () Bool)

(assert (= bs!1244826 (and b!5376996 b!5376989)))

(declare-fun lambda!277920 () Int)

(assert (=> bs!1244826 (not (= lambda!277920 lambda!277919))))

(declare-fun bs!1244827 () Bool)

(assert (= bs!1244827 (and b!5376996 b!5376357)))

(assert (=> bs!1244827 (not (= lambda!277920 lambda!277861))))

(declare-fun bs!1244828 () Bool)

(assert (= bs!1244828 (and b!5376996 b!5376505)))

(assert (=> bs!1244828 (= (and (= (regOne!30710 r!7292) (regOne!30710 lt!2189426)) (= (regTwo!30710 r!7292) (regTwo!30710 lt!2189426))) (= lambda!277920 lambda!277877))))

(assert (=> bs!1244827 (= (and (= s!2326 (_1!35601 lt!2189400)) (= (regOne!30710 r!7292) (reg!15428 (regOne!30710 r!7292))) (= (regTwo!30710 r!7292) lt!2189414)) (= lambda!277920 lambda!277863))))

(declare-fun bs!1244829 () Bool)

(assert (= bs!1244829 (and b!5376996 b!5376498)))

(assert (=> bs!1244829 (not (= lambda!277920 lambda!277875))))

(assert (=> bs!1244827 (not (= lambda!277920 lambda!277862))))

(declare-fun bs!1244830 () Bool)

(assert (= bs!1244830 (and b!5376996 b!5376329)))

(assert (=> bs!1244830 (= lambda!277920 lambda!277857)))

(declare-fun bs!1244831 () Bool)

(assert (= bs!1244831 (and b!5376996 d!1721051)))

(assert (=> bs!1244831 (= (= (regOne!30710 r!7292) lt!2189414) (= lambda!277920 lambda!277905))))

(declare-fun bs!1244832 () Bool)

(assert (= bs!1244832 (and b!5376996 b!5376348)))

(assert (=> bs!1244832 (= (= (regOne!30710 r!7292) lt!2189414) (= lambda!277920 lambda!277860))))

(assert (=> bs!1244830 (not (= lambda!277920 lambda!277856))))

(assert (=> bs!1244832 (not (= lambda!277920 lambda!277859))))

(declare-fun bs!1244833 () Bool)

(assert (= bs!1244833 (and b!5376996 d!1721017)))

(assert (=> bs!1244833 (not (= lambda!277920 lambda!277893))))

(assert (=> bs!1244831 (not (= lambda!277920 lambda!277904))))

(assert (=> b!5376996 true))

(assert (=> b!5376996 true))

(declare-fun b!5376986 () Bool)

(declare-fun res!2282675 () Bool)

(declare-fun e!3335907 () Bool)

(assert (=> b!5376986 (=> res!2282675 e!3335907)))

(declare-fun call!385046 () Bool)

(assert (=> b!5376986 (= res!2282675 call!385046)))

(declare-fun e!3335910 () Bool)

(assert (=> b!5376986 (= e!3335910 e!3335907)))

(declare-fun b!5376987 () Bool)

(declare-fun e!3335906 () Bool)

(declare-fun e!3335908 () Bool)

(assert (=> b!5376987 (= e!3335906 e!3335908)))

(declare-fun res!2282674 () Bool)

(assert (=> b!5376987 (= res!2282674 (not ((_ is EmptyLang!15099) r!7292)))))

(assert (=> b!5376987 (=> (not res!2282674) (not e!3335908))))

(declare-fun b!5376988 () Bool)

(declare-fun c!937064 () Bool)

(assert (=> b!5376988 (= c!937064 ((_ is ElementMatch!15099) r!7292))))

(declare-fun e!3335911 () Bool)

(assert (=> b!5376988 (= e!3335908 e!3335911)))

(declare-fun c!937061 () Bool)

(declare-fun call!385047 () Bool)

(declare-fun bm!385041 () Bool)

(assert (=> bm!385041 (= call!385047 (Exists!2280 (ite c!937061 lambda!277919 lambda!277920)))))

(assert (=> b!5376989 (= e!3335907 call!385047)))

(declare-fun b!5376990 () Bool)

(declare-fun c!937062 () Bool)

(assert (=> b!5376990 (= c!937062 ((_ is Union!15099) r!7292))))

(declare-fun e!3335912 () Bool)

(assert (=> b!5376990 (= e!3335911 e!3335912)))

(declare-fun b!5376991 () Bool)

(assert (=> b!5376991 (= e!3335911 (= s!2326 (Cons!61472 (c!936875 r!7292) Nil!61472)))))

(declare-fun b!5376992 () Bool)

(declare-fun e!3335909 () Bool)

(assert (=> b!5376992 (= e!3335909 (matchRSpec!2202 (regTwo!30711 r!7292) s!2326))))

(declare-fun b!5376993 () Bool)

(assert (=> b!5376993 (= e!3335912 e!3335909)))

(declare-fun res!2282676 () Bool)

(assert (=> b!5376993 (= res!2282676 (matchRSpec!2202 (regOne!30711 r!7292) s!2326))))

(assert (=> b!5376993 (=> res!2282676 e!3335909)))

(declare-fun b!5376994 () Bool)

(assert (=> b!5376994 (= e!3335906 call!385046)))

(declare-fun b!5376995 () Bool)

(assert (=> b!5376995 (= e!3335912 e!3335910)))

(assert (=> b!5376995 (= c!937061 ((_ is Star!15099) r!7292))))

(assert (=> b!5376996 (= e!3335910 call!385047)))

(declare-fun bm!385042 () Bool)

(assert (=> bm!385042 (= call!385046 (isEmpty!33459 s!2326))))

(declare-fun d!1721129 () Bool)

(declare-fun c!937063 () Bool)

(assert (=> d!1721129 (= c!937063 ((_ is EmptyExpr!15099) r!7292))))

(assert (=> d!1721129 (= (matchRSpec!2202 r!7292 s!2326) e!3335906)))

(assert (= (and d!1721129 c!937063) b!5376994))

(assert (= (and d!1721129 (not c!937063)) b!5376987))

(assert (= (and b!5376987 res!2282674) b!5376988))

(assert (= (and b!5376988 c!937064) b!5376991))

(assert (= (and b!5376988 (not c!937064)) b!5376990))

(assert (= (and b!5376990 c!937062) b!5376993))

(assert (= (and b!5376990 (not c!937062)) b!5376995))

(assert (= (and b!5376993 (not res!2282676)) b!5376992))

(assert (= (and b!5376995 c!937061) b!5376986))

(assert (= (and b!5376995 (not c!937061)) b!5376996))

(assert (= (and b!5376986 (not res!2282675)) b!5376989))

(assert (= (or b!5376989 b!5376996) bm!385041))

(assert (= (or b!5376994 b!5376986) bm!385042))

(declare-fun m!6403446 () Bool)

(assert (=> bm!385041 m!6403446))

(declare-fun m!6403448 () Bool)

(assert (=> b!5376992 m!6403448))

(declare-fun m!6403450 () Bool)

(assert (=> b!5376993 m!6403450))

(assert (=> bm!385042 m!6402978))

(assert (=> b!5376363 d!1721129))

(declare-fun bm!385049 () Bool)

(declare-fun call!385054 () Bool)

(assert (=> bm!385049 (= call!385054 (isEmpty!33459 s!2326))))

(declare-fun b!5377015 () Bool)

(declare-fun e!3335930 () Bool)

(assert (=> b!5377015 (= e!3335930 (matchR!7284 (derivativeStep!4228 r!7292 (head!11532 s!2326)) (tail!10629 s!2326)))))

(declare-fun b!5377016 () Bool)

(declare-fun res!2282689 () Bool)

(declare-fun e!3335933 () Bool)

(assert (=> b!5377016 (=> res!2282689 e!3335933)))

(assert (=> b!5377016 (= res!2282689 (not ((_ is ElementMatch!15099) r!7292)))))

(declare-fun e!3335929 () Bool)

(assert (=> b!5377016 (= e!3335929 e!3335933)))

(declare-fun b!5377017 () Bool)

(declare-fun res!2282690 () Bool)

(declare-fun e!3335928 () Bool)

(assert (=> b!5377017 (=> (not res!2282690) (not e!3335928))))

(assert (=> b!5377017 (= res!2282690 (isEmpty!33459 (tail!10629 s!2326)))))

(declare-fun d!1721137 () Bool)

(declare-fun e!3335931 () Bool)

(assert (=> d!1721137 e!3335931))

(declare-fun c!937070 () Bool)

(assert (=> d!1721137 (= c!937070 ((_ is EmptyExpr!15099) r!7292))))

(declare-fun lt!2189521 () Bool)

(assert (=> d!1721137 (= lt!2189521 e!3335930)))

(declare-fun c!937069 () Bool)

(assert (=> d!1721137 (= c!937069 (isEmpty!33459 s!2326))))

(assert (=> d!1721137 (validRegex!6835 r!7292)))

(assert (=> d!1721137 (= (matchR!7284 r!7292 s!2326) lt!2189521)))

(declare-fun b!5377018 () Bool)

(declare-fun res!2282693 () Bool)

(assert (=> b!5377018 (=> res!2282693 e!3335933)))

(assert (=> b!5377018 (= res!2282693 e!3335928)))

(declare-fun res!2282688 () Bool)

(assert (=> b!5377018 (=> (not res!2282688) (not e!3335928))))

(assert (=> b!5377018 (= res!2282688 lt!2189521)))

(declare-fun b!5377019 () Bool)

(assert (=> b!5377019 (= e!3335928 (= (head!11532 s!2326) (c!936875 r!7292)))))

(declare-fun b!5377020 () Bool)

(assert (=> b!5377020 (= e!3335929 (not lt!2189521))))

(declare-fun b!5377021 () Bool)

(assert (=> b!5377021 (= e!3335931 e!3335929)))

(declare-fun c!937071 () Bool)

(assert (=> b!5377021 (= c!937071 ((_ is EmptyLang!15099) r!7292))))

(declare-fun b!5377022 () Bool)

(declare-fun res!2282692 () Bool)

(assert (=> b!5377022 (=> (not res!2282692) (not e!3335928))))

(assert (=> b!5377022 (= res!2282692 (not call!385054))))

(declare-fun b!5377023 () Bool)

(assert (=> b!5377023 (= e!3335930 (nullable!5268 r!7292))))

(declare-fun b!5377024 () Bool)

(declare-fun e!3335932 () Bool)

(assert (=> b!5377024 (= e!3335932 (not (= (head!11532 s!2326) (c!936875 r!7292))))))

(declare-fun b!5377025 () Bool)

(assert (=> b!5377025 (= e!3335931 (= lt!2189521 call!385054))))

(declare-fun b!5377026 () Bool)

(declare-fun e!3335927 () Bool)

(assert (=> b!5377026 (= e!3335933 e!3335927)))

(declare-fun res!2282694 () Bool)

(assert (=> b!5377026 (=> (not res!2282694) (not e!3335927))))

(assert (=> b!5377026 (= res!2282694 (not lt!2189521))))

(declare-fun b!5377027 () Bool)

(assert (=> b!5377027 (= e!3335927 e!3335932)))

(declare-fun res!2282687 () Bool)

(assert (=> b!5377027 (=> res!2282687 e!3335932)))

(assert (=> b!5377027 (= res!2282687 call!385054)))

(declare-fun b!5377028 () Bool)

(declare-fun res!2282691 () Bool)

(assert (=> b!5377028 (=> res!2282691 e!3335932)))

(assert (=> b!5377028 (= res!2282691 (not (isEmpty!33459 (tail!10629 s!2326))))))

(assert (= (and d!1721137 c!937069) b!5377023))

(assert (= (and d!1721137 (not c!937069)) b!5377015))

(assert (= (and d!1721137 c!937070) b!5377025))

(assert (= (and d!1721137 (not c!937070)) b!5377021))

(assert (= (and b!5377021 c!937071) b!5377020))

(assert (= (and b!5377021 (not c!937071)) b!5377016))

(assert (= (and b!5377016 (not res!2282689)) b!5377018))

(assert (= (and b!5377018 res!2282688) b!5377022))

(assert (= (and b!5377022 res!2282692) b!5377017))

(assert (= (and b!5377017 res!2282690) b!5377019))

(assert (= (and b!5377018 (not res!2282693)) b!5377026))

(assert (= (and b!5377026 res!2282694) b!5377027))

(assert (= (and b!5377027 (not res!2282687)) b!5377028))

(assert (= (and b!5377028 (not res!2282691)) b!5377024))

(assert (= (or b!5377025 b!5377022 b!5377027) bm!385049))

(assert (=> b!5377028 m!6402966))

(assert (=> b!5377028 m!6402966))

(assert (=> b!5377028 m!6402968))

(assert (=> b!5377019 m!6402970))

(assert (=> b!5377015 m!6402970))

(assert (=> b!5377015 m!6402970))

(declare-fun m!6403452 () Bool)

(assert (=> b!5377015 m!6403452))

(assert (=> b!5377015 m!6402966))

(assert (=> b!5377015 m!6403452))

(assert (=> b!5377015 m!6402966))

(declare-fun m!6403454 () Bool)

(assert (=> b!5377015 m!6403454))

(assert (=> b!5377024 m!6402970))

(declare-fun m!6403456 () Bool)

(assert (=> b!5377023 m!6403456))

(assert (=> bm!385049 m!6402978))

(assert (=> d!1721137 m!6402978))

(assert (=> d!1721137 m!6402906))

(assert (=> b!5377017 m!6402966))

(assert (=> b!5377017 m!6402966))

(assert (=> b!5377017 m!6402968))

(assert (=> b!5376363 d!1721137))

(declare-fun d!1721139 () Bool)

(assert (=> d!1721139 (= (matchR!7284 r!7292 s!2326) (matchRSpec!2202 r!7292 s!2326))))

(declare-fun lt!2189522 () Unit!153914)

(assert (=> d!1721139 (= lt!2189522 (choose!40392 r!7292 s!2326))))

(assert (=> d!1721139 (validRegex!6835 r!7292)))

(assert (=> d!1721139 (= (mainMatchTheorem!2202 r!7292 s!2326) lt!2189522)))

(declare-fun bs!1244834 () Bool)

(assert (= bs!1244834 d!1721139))

(assert (=> bs!1244834 m!6402954))

(assert (=> bs!1244834 m!6402952))

(declare-fun m!6403458 () Bool)

(assert (=> bs!1244834 m!6403458))

(assert (=> bs!1244834 m!6402906))

(assert (=> b!5376363 d!1721139))

(declare-fun d!1721141 () Bool)

(declare-fun e!3335943 () Bool)

(assert (=> d!1721141 e!3335943))

(declare-fun res!2282702 () Bool)

(assert (=> d!1721141 (=> (not res!2282702) (not e!3335943))))

(declare-fun lt!2189525 () List!61598)

(declare-fun noDuplicate!1362 (List!61598) Bool)

(assert (=> d!1721141 (= res!2282702 (noDuplicate!1362 lt!2189525))))

(declare-fun choose!40402 ((InoxSet Context!8966)) List!61598)

(assert (=> d!1721141 (= lt!2189525 (choose!40402 z!1189))))

(assert (=> d!1721141 (= (toList!8883 z!1189) lt!2189525)))

(declare-fun b!5377040 () Bool)

(declare-fun content!10992 (List!61598) (InoxSet Context!8966))

(assert (=> b!5377040 (= e!3335943 (= (content!10992 lt!2189525) z!1189))))

(assert (= (and d!1721141 res!2282702) b!5377040))

(declare-fun m!6403466 () Bool)

(assert (=> d!1721141 m!6403466))

(declare-fun m!6403468 () Bool)

(assert (=> d!1721141 m!6403468))

(declare-fun m!6403470 () Bool)

(assert (=> b!5377040 m!6403470))

(assert (=> b!5376341 d!1721141))

(declare-fun d!1721145 () Bool)

(declare-fun lt!2189526 () Regex!15099)

(assert (=> d!1721145 (validRegex!6835 lt!2189526)))

(assert (=> d!1721145 (= lt!2189526 (generalisedUnion!1028 (unfocusZipperList!541 (Cons!61474 lt!2189406 Nil!61474))))))

(assert (=> d!1721145 (= (unfocusZipper!841 (Cons!61474 lt!2189406 Nil!61474)) lt!2189526)))

(declare-fun bs!1244835 () Bool)

(assert (= bs!1244835 d!1721145))

(declare-fun m!6403472 () Bool)

(assert (=> bs!1244835 m!6403472))

(declare-fun m!6403474 () Bool)

(assert (=> bs!1244835 m!6403474))

(assert (=> bs!1244835 m!6403474))

(declare-fun m!6403476 () Bool)

(assert (=> bs!1244835 m!6403476))

(assert (=> b!5376334 d!1721145))

(declare-fun d!1721147 () Bool)

(declare-fun e!3335958 () Bool)

(assert (=> d!1721147 (= (matchZipper!1343 ((_ map or) lt!2189420 lt!2189396) (t!374819 s!2326)) e!3335958)))

(declare-fun res!2282709 () Bool)

(assert (=> d!1721147 (=> res!2282709 e!3335958)))

(assert (=> d!1721147 (= res!2282709 (matchZipper!1343 lt!2189420 (t!374819 s!2326)))))

(declare-fun lt!2189531 () Unit!153914)

(declare-fun choose!40403 ((InoxSet Context!8966) (InoxSet Context!8966) List!61596) Unit!153914)

(assert (=> d!1721147 (= lt!2189531 (choose!40403 lt!2189420 lt!2189396 (t!374819 s!2326)))))

(assert (=> d!1721147 (= (lemmaZipperConcatMatchesSameAsBothZippers!336 lt!2189420 lt!2189396 (t!374819 s!2326)) lt!2189531)))

(declare-fun b!5377063 () Bool)

(assert (=> b!5377063 (= e!3335958 (matchZipper!1343 lt!2189396 (t!374819 s!2326)))))

(assert (= (and d!1721147 (not res!2282709)) b!5377063))

(assert (=> d!1721147 m!6402884))

(assert (=> d!1721147 m!6402882))

(declare-fun m!6403478 () Bool)

(assert (=> d!1721147 m!6403478))

(assert (=> b!5377063 m!6402908))

(assert (=> b!5376335 d!1721147))

(declare-fun d!1721149 () Bool)

(declare-fun c!937082 () Bool)

(assert (=> d!1721149 (= c!937082 (isEmpty!33459 (t!374819 s!2326)))))

(declare-fun e!3335959 () Bool)

(assert (=> d!1721149 (= (matchZipper!1343 lt!2189420 (t!374819 s!2326)) e!3335959)))

(declare-fun b!5377064 () Bool)

(assert (=> b!5377064 (= e!3335959 (nullableZipper!1408 lt!2189420))))

(declare-fun b!5377065 () Bool)

(assert (=> b!5377065 (= e!3335959 (matchZipper!1343 (derivationStepZipper!1338 lt!2189420 (head!11532 (t!374819 s!2326))) (tail!10629 (t!374819 s!2326))))))

(assert (= (and d!1721149 c!937082) b!5377064))

(assert (= (and d!1721149 (not c!937082)) b!5377065))

(assert (=> d!1721149 m!6403420))

(declare-fun m!6403480 () Bool)

(assert (=> b!5377064 m!6403480))

(assert (=> b!5377065 m!6403424))

(assert (=> b!5377065 m!6403424))

(declare-fun m!6403482 () Bool)

(assert (=> b!5377065 m!6403482))

(assert (=> b!5377065 m!6403428))

(assert (=> b!5377065 m!6403482))

(assert (=> b!5377065 m!6403428))

(declare-fun m!6403484 () Bool)

(assert (=> b!5377065 m!6403484))

(assert (=> b!5376335 d!1721149))

(declare-fun d!1721151 () Bool)

(declare-fun c!937083 () Bool)

(assert (=> d!1721151 (= c!937083 (isEmpty!33459 (t!374819 s!2326)))))

(declare-fun e!3335960 () Bool)

(assert (=> d!1721151 (= (matchZipper!1343 ((_ map or) lt!2189420 lt!2189396) (t!374819 s!2326)) e!3335960)))

(declare-fun b!5377066 () Bool)

(assert (=> b!5377066 (= e!3335960 (nullableZipper!1408 ((_ map or) lt!2189420 lt!2189396)))))

(declare-fun b!5377067 () Bool)

(assert (=> b!5377067 (= e!3335960 (matchZipper!1343 (derivationStepZipper!1338 ((_ map or) lt!2189420 lt!2189396) (head!11532 (t!374819 s!2326))) (tail!10629 (t!374819 s!2326))))))

(assert (= (and d!1721151 c!937083) b!5377066))

(assert (= (and d!1721151 (not c!937083)) b!5377067))

(assert (=> d!1721151 m!6403420))

(declare-fun m!6403486 () Bool)

(assert (=> b!5377066 m!6403486))

(assert (=> b!5377067 m!6403424))

(assert (=> b!5377067 m!6403424))

(declare-fun m!6403488 () Bool)

(assert (=> b!5377067 m!6403488))

(assert (=> b!5377067 m!6403428))

(assert (=> b!5377067 m!6403488))

(assert (=> b!5377067 m!6403428))

(declare-fun m!6403490 () Bool)

(assert (=> b!5377067 m!6403490))

(assert (=> b!5376335 d!1721151))

(declare-fun b!5377068 () Bool)

(declare-fun e!3335961 () (InoxSet Context!8966))

(declare-fun call!385058 () (InoxSet Context!8966))

(assert (=> b!5377068 (= e!3335961 call!385058)))

(declare-fun b!5377069 () Bool)

(declare-fun e!3335963 () Bool)

(assert (=> b!5377069 (= e!3335963 (nullable!5268 (h!67921 (exprs!4983 lt!2189406))))))

(declare-fun b!5377070 () Bool)

(assert (=> b!5377070 (= e!3335961 ((as const (Array Context!8966 Bool)) false))))

(declare-fun b!5377071 () Bool)

(declare-fun e!3335962 () (InoxSet Context!8966))

(assert (=> b!5377071 (= e!3335962 e!3335961)))

(declare-fun c!937085 () Bool)

(assert (=> b!5377071 (= c!937085 ((_ is Cons!61473) (exprs!4983 lt!2189406)))))

(declare-fun bm!385053 () Bool)

(assert (=> bm!385053 (= call!385058 (derivationStepZipperDown!547 (h!67921 (exprs!4983 lt!2189406)) (Context!8967 (t!374820 (exprs!4983 lt!2189406))) (h!67920 s!2326)))))

(declare-fun b!5377072 () Bool)

(assert (=> b!5377072 (= e!3335962 ((_ map or) call!385058 (derivationStepZipperUp!471 (Context!8967 (t!374820 (exprs!4983 lt!2189406))) (h!67920 s!2326))))))

(declare-fun d!1721153 () Bool)

(declare-fun c!937084 () Bool)

(assert (=> d!1721153 (= c!937084 e!3335963)))

(declare-fun res!2282710 () Bool)

(assert (=> d!1721153 (=> (not res!2282710) (not e!3335963))))

(assert (=> d!1721153 (= res!2282710 ((_ is Cons!61473) (exprs!4983 lt!2189406)))))

(assert (=> d!1721153 (= (derivationStepZipperUp!471 lt!2189406 (h!67920 s!2326)) e!3335962)))

(assert (= (and d!1721153 res!2282710) b!5377069))

(assert (= (and d!1721153 c!937084) b!5377072))

(assert (= (and d!1721153 (not c!937084)) b!5377071))

(assert (= (and b!5377071 c!937085) b!5377068))

(assert (= (and b!5377071 (not c!937085)) b!5377070))

(assert (= (or b!5377072 b!5377068) bm!385053))

(declare-fun m!6403492 () Bool)

(assert (=> b!5377069 m!6403492))

(declare-fun m!6403494 () Bool)

(assert (=> bm!385053 m!6403494))

(declare-fun m!6403496 () Bool)

(assert (=> b!5377072 m!6403496))

(assert (=> b!5376356 d!1721153))

(declare-fun b!5377073 () Bool)

(declare-fun e!3335964 () (InoxSet Context!8966))

(declare-fun call!385059 () (InoxSet Context!8966))

(assert (=> b!5377073 (= e!3335964 call!385059)))

(declare-fun b!5377074 () Bool)

(declare-fun e!3335966 () Bool)

(assert (=> b!5377074 (= e!3335966 (nullable!5268 (h!67921 (exprs!4983 lt!2189417))))))

(declare-fun b!5377075 () Bool)

(assert (=> b!5377075 (= e!3335964 ((as const (Array Context!8966 Bool)) false))))

(declare-fun b!5377076 () Bool)

(declare-fun e!3335965 () (InoxSet Context!8966))

(assert (=> b!5377076 (= e!3335965 e!3335964)))

(declare-fun c!937087 () Bool)

(assert (=> b!5377076 (= c!937087 ((_ is Cons!61473) (exprs!4983 lt!2189417)))))

(declare-fun bm!385054 () Bool)

(assert (=> bm!385054 (= call!385059 (derivationStepZipperDown!547 (h!67921 (exprs!4983 lt!2189417)) (Context!8967 (t!374820 (exprs!4983 lt!2189417))) (h!67920 s!2326)))))

(declare-fun b!5377077 () Bool)

(assert (=> b!5377077 (= e!3335965 ((_ map or) call!385059 (derivationStepZipperUp!471 (Context!8967 (t!374820 (exprs!4983 lt!2189417))) (h!67920 s!2326))))))

(declare-fun d!1721155 () Bool)

(declare-fun c!937086 () Bool)

(assert (=> d!1721155 (= c!937086 e!3335966)))

(declare-fun res!2282711 () Bool)

(assert (=> d!1721155 (=> (not res!2282711) (not e!3335966))))

(assert (=> d!1721155 (= res!2282711 ((_ is Cons!61473) (exprs!4983 lt!2189417)))))

(assert (=> d!1721155 (= (derivationStepZipperUp!471 lt!2189417 (h!67920 s!2326)) e!3335965)))

(assert (= (and d!1721155 res!2282711) b!5377074))

(assert (= (and d!1721155 c!937086) b!5377077))

(assert (= (and d!1721155 (not c!937086)) b!5377076))

(assert (= (and b!5377076 c!937087) b!5377073))

(assert (= (and b!5377076 (not c!937087)) b!5377075))

(assert (= (or b!5377077 b!5377073) bm!385054))

(declare-fun m!6403498 () Bool)

(assert (=> b!5377074 m!6403498))

(declare-fun m!6403500 () Bool)

(assert (=> bm!385054 m!6403500))

(declare-fun m!6403502 () Bool)

(assert (=> b!5377077 m!6403502))

(assert (=> b!5376356 d!1721155))

(declare-fun d!1721157 () Bool)

(assert (=> d!1721157 (= (flatMap!826 lt!2189419 lambda!277858) (choose!40401 lt!2189419 lambda!277858))))

(declare-fun bs!1244836 () Bool)

(assert (= bs!1244836 d!1721157))

(declare-fun m!6403504 () Bool)

(assert (=> bs!1244836 m!6403504))

(assert (=> b!5376356 d!1721157))

(declare-fun d!1721159 () Bool)

(declare-fun lt!2189532 () Regex!15099)

(assert (=> d!1721159 (validRegex!6835 lt!2189532)))

(assert (=> d!1721159 (= lt!2189532 (generalisedUnion!1028 (unfocusZipperList!541 (Cons!61474 lt!2189417 Nil!61474))))))

(assert (=> d!1721159 (= (unfocusZipper!841 (Cons!61474 lt!2189417 Nil!61474)) lt!2189532)))

(declare-fun bs!1244837 () Bool)

(assert (= bs!1244837 d!1721159))

(declare-fun m!6403506 () Bool)

(assert (=> bs!1244837 m!6403506))

(declare-fun m!6403508 () Bool)

(assert (=> bs!1244837 m!6403508))

(assert (=> bs!1244837 m!6403508))

(declare-fun m!6403510 () Bool)

(assert (=> bs!1244837 m!6403510))

(assert (=> b!5376356 d!1721159))

(declare-fun d!1721161 () Bool)

(assert (=> d!1721161 (= (flatMap!826 lt!2189419 lambda!277858) (dynLambda!24269 lambda!277858 lt!2189406))))

(declare-fun lt!2189534 () Unit!153914)

(assert (=> d!1721161 (= lt!2189534 (choose!40400 lt!2189419 lt!2189406 lambda!277858))))

(assert (=> d!1721161 (= lt!2189419 (store ((as const (Array Context!8966 Bool)) false) lt!2189406 true))))

(assert (=> d!1721161 (= (lemmaFlatMapOnSingletonSet!358 lt!2189419 lt!2189406 lambda!277858) lt!2189534)))

(declare-fun b_lambda!206005 () Bool)

(assert (=> (not b_lambda!206005) (not d!1721161)))

(declare-fun bs!1244839 () Bool)

(assert (= bs!1244839 d!1721161))

(assert (=> bs!1244839 m!6402868))

(declare-fun m!6403512 () Bool)

(assert (=> bs!1244839 m!6403512))

(declare-fun m!6403514 () Bool)

(assert (=> bs!1244839 m!6403514))

(assert (=> bs!1244839 m!6402876))

(assert (=> b!5376356 d!1721161))

(declare-fun d!1721163 () Bool)

(assert (=> d!1721163 (= (flatMap!826 lt!2189405 lambda!277858) (choose!40401 lt!2189405 lambda!277858))))

(declare-fun bs!1244842 () Bool)

(assert (= bs!1244842 d!1721163))

(declare-fun m!6403516 () Bool)

(assert (=> bs!1244842 m!6403516))

(assert (=> b!5376356 d!1721163))

(declare-fun d!1721165 () Bool)

(assert (=> d!1721165 (= (flatMap!826 lt!2189405 lambda!277858) (dynLambda!24269 lambda!277858 lt!2189417))))

(declare-fun lt!2189535 () Unit!153914)

(assert (=> d!1721165 (= lt!2189535 (choose!40400 lt!2189405 lt!2189417 lambda!277858))))

(assert (=> d!1721165 (= lt!2189405 (store ((as const (Array Context!8966 Bool)) false) lt!2189417 true))))

(assert (=> d!1721165 (= (lemmaFlatMapOnSingletonSet!358 lt!2189405 lt!2189417 lambda!277858) lt!2189535)))

(declare-fun b_lambda!206007 () Bool)

(assert (=> (not b_lambda!206007) (not d!1721165)))

(declare-fun bs!1244843 () Bool)

(assert (= bs!1244843 d!1721165))

(assert (=> bs!1244843 m!6402874))

(declare-fun m!6403518 () Bool)

(assert (=> bs!1244843 m!6403518))

(declare-fun m!6403520 () Bool)

(assert (=> bs!1244843 m!6403520))

(assert (=> bs!1244843 m!6402860))

(assert (=> b!5376356 d!1721165))

(declare-fun d!1721167 () Bool)

(declare-fun lt!2189536 () Regex!15099)

(assert (=> d!1721167 (validRegex!6835 lt!2189536)))

(assert (=> d!1721167 (= lt!2189536 (generalisedUnion!1028 (unfocusZipperList!541 zl!343)))))

(assert (=> d!1721167 (= (unfocusZipper!841 zl!343) lt!2189536)))

(declare-fun bs!1244844 () Bool)

(assert (= bs!1244844 d!1721167))

(declare-fun m!6403522 () Bool)

(assert (=> bs!1244844 m!6403522))

(assert (=> bs!1244844 m!6402886))

(assert (=> bs!1244844 m!6402886))

(assert (=> bs!1244844 m!6402888))

(assert (=> b!5376355 d!1721167))

(declare-fun d!1721169 () Bool)

(assert (=> d!1721169 (= (isEmpty!33458 (t!374821 zl!343)) ((_ is Nil!61474) (t!374821 zl!343)))))

(assert (=> b!5376337 d!1721169))

(declare-fun bs!1244851 () Bool)

(declare-fun d!1721173 () Bool)

(assert (= bs!1244851 (and d!1721173 d!1720997)))

(declare-fun lambda!277929 () Int)

(assert (=> bs!1244851 (= lambda!277929 lambda!277881)))

(declare-fun bs!1244853 () Bool)

(assert (= bs!1244853 (and d!1721173 d!1721011)))

(assert (=> bs!1244853 (= lambda!277929 lambda!277886)))

(declare-fun bs!1244854 () Bool)

(assert (= bs!1244854 (and d!1721173 d!1721121)))

(assert (=> bs!1244854 (= lambda!277929 lambda!277916)))

(declare-fun b!5377152 () Bool)

(declare-fun e!3336009 () Bool)

(declare-fun lt!2189545 () Regex!15099)

(assert (=> b!5377152 (= e!3336009 (= lt!2189545 (head!11534 (unfocusZipperList!541 zl!343))))))

(declare-fun b!5377154 () Bool)

(declare-fun e!3336012 () Bool)

(declare-fun isEmptyLang!951 (Regex!15099) Bool)

(assert (=> b!5377154 (= e!3336012 (isEmptyLang!951 lt!2189545))))

(declare-fun b!5377155 () Bool)

(declare-fun isUnion!383 (Regex!15099) Bool)

(assert (=> b!5377155 (= e!3336009 (isUnion!383 lt!2189545))))

(declare-fun b!5377156 () Bool)

(declare-fun e!3336013 () Regex!15099)

(assert (=> b!5377156 (= e!3336013 EmptyLang!15099)))

(declare-fun b!5377157 () Bool)

(declare-fun e!3336011 () Regex!15099)

(assert (=> b!5377157 (= e!3336011 e!3336013)))

(declare-fun c!937113 () Bool)

(assert (=> b!5377157 (= c!937113 ((_ is Cons!61473) (unfocusZipperList!541 zl!343)))))

(declare-fun b!5377158 () Bool)

(declare-fun e!3336010 () Bool)

(assert (=> b!5377158 (= e!3336010 e!3336012)))

(declare-fun c!937115 () Bool)

(assert (=> b!5377158 (= c!937115 (isEmpty!33460 (unfocusZipperList!541 zl!343)))))

(declare-fun b!5377159 () Bool)

(assert (=> b!5377159 (= e!3336012 e!3336009)))

(declare-fun c!937114 () Bool)

(assert (=> b!5377159 (= c!937114 (isEmpty!33460 (tail!10631 (unfocusZipperList!541 zl!343))))))

(declare-fun b!5377153 () Bool)

(assert (=> b!5377153 (= e!3336013 (Union!15099 (h!67921 (unfocusZipperList!541 zl!343)) (generalisedUnion!1028 (t!374820 (unfocusZipperList!541 zl!343)))))))

(assert (=> d!1721173 e!3336010))

(declare-fun res!2282737 () Bool)

(assert (=> d!1721173 (=> (not res!2282737) (not e!3336010))))

(assert (=> d!1721173 (= res!2282737 (validRegex!6835 lt!2189545))))

(assert (=> d!1721173 (= lt!2189545 e!3336011)))

(declare-fun c!937116 () Bool)

(declare-fun e!3336008 () Bool)

(assert (=> d!1721173 (= c!937116 e!3336008)))

(declare-fun res!2282736 () Bool)

(assert (=> d!1721173 (=> (not res!2282736) (not e!3336008))))

(assert (=> d!1721173 (= res!2282736 ((_ is Cons!61473) (unfocusZipperList!541 zl!343)))))

(assert (=> d!1721173 (forall!14500 (unfocusZipperList!541 zl!343) lambda!277929)))

(assert (=> d!1721173 (= (generalisedUnion!1028 (unfocusZipperList!541 zl!343)) lt!2189545)))

(declare-fun b!5377160 () Bool)

(assert (=> b!5377160 (= e!3336011 (h!67921 (unfocusZipperList!541 zl!343)))))

(declare-fun b!5377161 () Bool)

(assert (=> b!5377161 (= e!3336008 (isEmpty!33460 (t!374820 (unfocusZipperList!541 zl!343))))))

(assert (= (and d!1721173 res!2282736) b!5377161))

(assert (= (and d!1721173 c!937116) b!5377160))

(assert (= (and d!1721173 (not c!937116)) b!5377157))

(assert (= (and b!5377157 c!937113) b!5377153))

(assert (= (and b!5377157 (not c!937113)) b!5377156))

(assert (= (and d!1721173 res!2282737) b!5377158))

(assert (= (and b!5377158 c!937115) b!5377154))

(assert (= (and b!5377158 (not c!937115)) b!5377159))

(assert (= (and b!5377159 c!937114) b!5377152))

(assert (= (and b!5377159 (not c!937114)) b!5377155))

(assert (=> b!5377159 m!6402886))

(declare-fun m!6403606 () Bool)

(assert (=> b!5377159 m!6403606))

(assert (=> b!5377159 m!6403606))

(declare-fun m!6403608 () Bool)

(assert (=> b!5377159 m!6403608))

(declare-fun m!6403610 () Bool)

(assert (=> b!5377161 m!6403610))

(declare-fun m!6403612 () Bool)

(assert (=> b!5377154 m!6403612))

(declare-fun m!6403614 () Bool)

(assert (=> b!5377155 m!6403614))

(declare-fun m!6403616 () Bool)

(assert (=> b!5377153 m!6403616))

(declare-fun m!6403618 () Bool)

(assert (=> d!1721173 m!6403618))

(assert (=> d!1721173 m!6402886))

(declare-fun m!6403620 () Bool)

(assert (=> d!1721173 m!6403620))

(assert (=> b!5377152 m!6402886))

(declare-fun m!6403622 () Bool)

(assert (=> b!5377152 m!6403622))

(assert (=> b!5377158 m!6402886))

(declare-fun m!6403624 () Bool)

(assert (=> b!5377158 m!6403624))

(assert (=> b!5376358 d!1721173))

(declare-fun bs!1244872 () Bool)

(declare-fun d!1721195 () Bool)

(assert (= bs!1244872 (and d!1721195 d!1720997)))

(declare-fun lambda!277933 () Int)

(assert (=> bs!1244872 (= lambda!277933 lambda!277881)))

(declare-fun bs!1244873 () Bool)

(assert (= bs!1244873 (and d!1721195 d!1721011)))

(assert (=> bs!1244873 (= lambda!277933 lambda!277886)))

(declare-fun bs!1244874 () Bool)

(assert (= bs!1244874 (and d!1721195 d!1721121)))

(assert (=> bs!1244874 (= lambda!277933 lambda!277916)))

(declare-fun bs!1244875 () Bool)

(assert (= bs!1244875 (and d!1721195 d!1721173)))

(assert (=> bs!1244875 (= lambda!277933 lambda!277929)))

(declare-fun lt!2189551 () List!61597)

(assert (=> d!1721195 (forall!14500 lt!2189551 lambda!277933)))

(declare-fun e!3336030 () List!61597)

(assert (=> d!1721195 (= lt!2189551 e!3336030)))

(declare-fun c!937125 () Bool)

(assert (=> d!1721195 (= c!937125 ((_ is Cons!61474) zl!343))))

(assert (=> d!1721195 (= (unfocusZipperList!541 zl!343) lt!2189551)))

(declare-fun b!5377186 () Bool)

(assert (=> b!5377186 (= e!3336030 (Cons!61473 (generalisedConcat!768 (exprs!4983 (h!67922 zl!343))) (unfocusZipperList!541 (t!374821 zl!343))))))

(declare-fun b!5377187 () Bool)

(assert (=> b!5377187 (= e!3336030 Nil!61473)))

(assert (= (and d!1721195 c!937125) b!5377186))

(assert (= (and d!1721195 (not c!937125)) b!5377187))

(declare-fun m!6403640 () Bool)

(assert (=> d!1721195 m!6403640))

(assert (=> b!5377186 m!6402914))

(declare-fun m!6403642 () Bool)

(assert (=> b!5377186 m!6403642))

(assert (=> b!5376358 d!1721195))

(declare-fun bs!1244882 () Bool)

(declare-fun b!5377191 () Bool)

(assert (= bs!1244882 (and b!5377191 b!5376996)))

(declare-fun lambda!277935 () Int)

(assert (=> bs!1244882 (not (= lambda!277935 lambda!277920))))

(declare-fun bs!1244884 () Bool)

(assert (= bs!1244884 (and b!5377191 b!5376989)))

(assert (=> bs!1244884 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 lt!2189414) (reg!15428 r!7292)) (= lt!2189414 r!7292)) (= lambda!277935 lambda!277919))))

(declare-fun bs!1244886 () Bool)

(assert (= bs!1244886 (and b!5377191 b!5376357)))

(assert (=> bs!1244886 (not (= lambda!277935 lambda!277861))))

(declare-fun bs!1244888 () Bool)

(assert (= bs!1244888 (and b!5377191 b!5376505)))

(assert (=> bs!1244888 (not (= lambda!277935 lambda!277877))))

(assert (=> bs!1244886 (not (= lambda!277935 lambda!277863))))

(declare-fun bs!1244891 () Bool)

(assert (= bs!1244891 (and b!5377191 b!5376498)))

(assert (=> bs!1244891 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 lt!2189414) (reg!15428 lt!2189426)) (= lt!2189414 lt!2189426)) (= lambda!277935 lambda!277875))))

(assert (=> bs!1244886 (= (= (reg!15428 lt!2189414) (reg!15428 (regOne!30710 r!7292))) (= lambda!277935 lambda!277862))))

(declare-fun bs!1244893 () Bool)

(assert (= bs!1244893 (and b!5377191 b!5376329)))

(assert (=> bs!1244893 (not (= lambda!277935 lambda!277857))))

(declare-fun bs!1244894 () Bool)

(assert (= bs!1244894 (and b!5377191 d!1721051)))

(assert (=> bs!1244894 (not (= lambda!277935 lambda!277905))))

(declare-fun bs!1244895 () Bool)

(assert (= bs!1244895 (and b!5377191 b!5376348)))

(assert (=> bs!1244895 (not (= lambda!277935 lambda!277860))))

(assert (=> bs!1244893 (not (= lambda!277935 lambda!277856))))

(assert (=> bs!1244895 (not (= lambda!277935 lambda!277859))))

(declare-fun bs!1244896 () Bool)

(assert (= bs!1244896 (and b!5377191 d!1721017)))

(assert (=> bs!1244896 (not (= lambda!277935 lambda!277893))))

(assert (=> bs!1244894 (not (= lambda!277935 lambda!277904))))

(assert (=> b!5377191 true))

(assert (=> b!5377191 true))

(declare-fun bs!1244897 () Bool)

(declare-fun b!5377198 () Bool)

(assert (= bs!1244897 (and b!5377198 b!5376996)))

(declare-fun lambda!277936 () Int)

(assert (=> bs!1244897 (= (and (= (_1!35601 lt!2189400) s!2326) (= (regOne!30710 lt!2189414) (regOne!30710 r!7292)) (= (regTwo!30710 lt!2189414) (regTwo!30710 r!7292))) (= lambda!277936 lambda!277920))))

(declare-fun bs!1244898 () Bool)

(assert (= bs!1244898 (and b!5377198 b!5377191)))

(assert (=> bs!1244898 (not (= lambda!277936 lambda!277935))))

(declare-fun bs!1244899 () Bool)

(assert (= bs!1244899 (and b!5377198 b!5376989)))

(assert (=> bs!1244899 (not (= lambda!277936 lambda!277919))))

(declare-fun bs!1244900 () Bool)

(assert (= bs!1244900 (and b!5377198 b!5376357)))

(assert (=> bs!1244900 (not (= lambda!277936 lambda!277861))))

(declare-fun bs!1244901 () Bool)

(assert (= bs!1244901 (and b!5377198 b!5376505)))

(assert (=> bs!1244901 (= (and (= (_1!35601 lt!2189400) s!2326) (= (regOne!30710 lt!2189414) (regOne!30710 lt!2189426)) (= (regTwo!30710 lt!2189414) (regTwo!30710 lt!2189426))) (= lambda!277936 lambda!277877))))

(assert (=> bs!1244900 (= (and (= (regOne!30710 lt!2189414) (reg!15428 (regOne!30710 r!7292))) (= (regTwo!30710 lt!2189414) lt!2189414)) (= lambda!277936 lambda!277863))))

(declare-fun bs!1244902 () Bool)

(assert (= bs!1244902 (and b!5377198 b!5376498)))

(assert (=> bs!1244902 (not (= lambda!277936 lambda!277875))))

(assert (=> bs!1244900 (not (= lambda!277936 lambda!277862))))

(declare-fun bs!1244903 () Bool)

(assert (= bs!1244903 (and b!5377198 b!5376329)))

(assert (=> bs!1244903 (= (and (= (_1!35601 lt!2189400) s!2326) (= (regOne!30710 lt!2189414) (regOne!30710 r!7292)) (= (regTwo!30710 lt!2189414) (regTwo!30710 r!7292))) (= lambda!277936 lambda!277857))))

(declare-fun bs!1244904 () Bool)

(assert (= bs!1244904 (and b!5377198 d!1721051)))

(assert (=> bs!1244904 (= (and (= (_1!35601 lt!2189400) s!2326) (= (regOne!30710 lt!2189414) lt!2189414) (= (regTwo!30710 lt!2189414) (regTwo!30710 r!7292))) (= lambda!277936 lambda!277905))))

(declare-fun bs!1244905 () Bool)

(assert (= bs!1244905 (and b!5377198 b!5376348)))

(assert (=> bs!1244905 (= (and (= (_1!35601 lt!2189400) s!2326) (= (regOne!30710 lt!2189414) lt!2189414) (= (regTwo!30710 lt!2189414) (regTwo!30710 r!7292))) (= lambda!277936 lambda!277860))))

(assert (=> bs!1244903 (not (= lambda!277936 lambda!277856))))

(assert (=> bs!1244905 (not (= lambda!277936 lambda!277859))))

(declare-fun bs!1244906 () Bool)

(assert (= bs!1244906 (and b!5377198 d!1721017)))

(assert (=> bs!1244906 (not (= lambda!277936 lambda!277893))))

(assert (=> bs!1244904 (not (= lambda!277936 lambda!277904))))

(assert (=> b!5377198 true))

(assert (=> b!5377198 true))

(declare-fun b!5377188 () Bool)

(declare-fun res!2282747 () Bool)

(declare-fun e!3336032 () Bool)

(assert (=> b!5377188 (=> res!2282747 e!3336032)))

(declare-fun call!385069 () Bool)

(assert (=> b!5377188 (= res!2282747 call!385069)))

(declare-fun e!3336035 () Bool)

(assert (=> b!5377188 (= e!3336035 e!3336032)))

(declare-fun b!5377189 () Bool)

(declare-fun e!3336031 () Bool)

(declare-fun e!3336033 () Bool)

(assert (=> b!5377189 (= e!3336031 e!3336033)))

(declare-fun res!2282746 () Bool)

(assert (=> b!5377189 (= res!2282746 (not ((_ is EmptyLang!15099) lt!2189414)))))

(assert (=> b!5377189 (=> (not res!2282746) (not e!3336033))))

(declare-fun b!5377190 () Bool)

(declare-fun c!937129 () Bool)

(assert (=> b!5377190 (= c!937129 ((_ is ElementMatch!15099) lt!2189414))))

(declare-fun e!3336036 () Bool)

(assert (=> b!5377190 (= e!3336033 e!3336036)))

(declare-fun bm!385064 () Bool)

(declare-fun call!385070 () Bool)

(declare-fun c!937126 () Bool)

(assert (=> bm!385064 (= call!385070 (Exists!2280 (ite c!937126 lambda!277935 lambda!277936)))))

(assert (=> b!5377191 (= e!3336032 call!385070)))

(declare-fun b!5377192 () Bool)

(declare-fun c!937127 () Bool)

(assert (=> b!5377192 (= c!937127 ((_ is Union!15099) lt!2189414))))

(declare-fun e!3336037 () Bool)

(assert (=> b!5377192 (= e!3336036 e!3336037)))

(declare-fun b!5377193 () Bool)

(assert (=> b!5377193 (= e!3336036 (= (_1!35601 lt!2189400) (Cons!61472 (c!936875 lt!2189414) Nil!61472)))))

(declare-fun b!5377194 () Bool)

(declare-fun e!3336034 () Bool)

(assert (=> b!5377194 (= e!3336034 (matchRSpec!2202 (regTwo!30711 lt!2189414) (_1!35601 lt!2189400)))))

(declare-fun b!5377195 () Bool)

(assert (=> b!5377195 (= e!3336037 e!3336034)))

(declare-fun res!2282748 () Bool)

(assert (=> b!5377195 (= res!2282748 (matchRSpec!2202 (regOne!30711 lt!2189414) (_1!35601 lt!2189400)))))

(assert (=> b!5377195 (=> res!2282748 e!3336034)))

(declare-fun b!5377196 () Bool)

(assert (=> b!5377196 (= e!3336031 call!385069)))

(declare-fun b!5377197 () Bool)

(assert (=> b!5377197 (= e!3336037 e!3336035)))

(assert (=> b!5377197 (= c!937126 ((_ is Star!15099) lt!2189414))))

(assert (=> b!5377198 (= e!3336035 call!385070)))

(declare-fun bm!385065 () Bool)

(assert (=> bm!385065 (= call!385069 (isEmpty!33459 (_1!35601 lt!2189400)))))

(declare-fun d!1721207 () Bool)

(declare-fun c!937128 () Bool)

(assert (=> d!1721207 (= c!937128 ((_ is EmptyExpr!15099) lt!2189414))))

(assert (=> d!1721207 (= (matchRSpec!2202 lt!2189414 (_1!35601 lt!2189400)) e!3336031)))

(assert (= (and d!1721207 c!937128) b!5377196))

(assert (= (and d!1721207 (not c!937128)) b!5377189))

(assert (= (and b!5377189 res!2282746) b!5377190))

(assert (= (and b!5377190 c!937129) b!5377193))

(assert (= (and b!5377190 (not c!937129)) b!5377192))

(assert (= (and b!5377192 c!937127) b!5377195))

(assert (= (and b!5377192 (not c!937127)) b!5377197))

(assert (= (and b!5377195 (not res!2282748)) b!5377194))

(assert (= (and b!5377197 c!937126) b!5377188))

(assert (= (and b!5377197 (not c!937126)) b!5377198))

(assert (= (and b!5377188 (not res!2282747)) b!5377191))

(assert (= (or b!5377191 b!5377198) bm!385064))

(assert (= (or b!5377196 b!5377188) bm!385065))

(declare-fun m!6403670 () Bool)

(assert (=> bm!385064 m!6403670))

(declare-fun m!6403672 () Bool)

(assert (=> b!5377194 m!6403672))

(declare-fun m!6403674 () Bool)

(assert (=> b!5377195 m!6403674))

(assert (=> bm!385065 m!6402878))

(assert (=> b!5376357 d!1721207))

(declare-fun bm!385066 () Bool)

(declare-fun call!385073 () Bool)

(declare-fun c!937132 () Bool)

(assert (=> bm!385066 (= call!385073 (validRegex!6835 (ite c!937132 (regOne!30711 (reg!15428 (regOne!30710 r!7292))) (regOne!30710 (reg!15428 (regOne!30710 r!7292))))))))

(declare-fun d!1721213 () Bool)

(declare-fun res!2282755 () Bool)

(declare-fun e!3336043 () Bool)

(assert (=> d!1721213 (=> res!2282755 e!3336043)))

(assert (=> d!1721213 (= res!2282755 ((_ is ElementMatch!15099) (reg!15428 (regOne!30710 r!7292))))))

(assert (=> d!1721213 (= (validRegex!6835 (reg!15428 (regOne!30710 r!7292))) e!3336043)))

(declare-fun bm!385067 () Bool)

(declare-fun call!385072 () Bool)

(declare-fun call!385071 () Bool)

(assert (=> bm!385067 (= call!385072 call!385071)))

(declare-fun c!937133 () Bool)

(declare-fun bm!385068 () Bool)

(assert (=> bm!385068 (= call!385071 (validRegex!6835 (ite c!937133 (reg!15428 (reg!15428 (regOne!30710 r!7292))) (ite c!937132 (regTwo!30711 (reg!15428 (regOne!30710 r!7292))) (regTwo!30710 (reg!15428 (regOne!30710 r!7292)))))))))

(declare-fun b!5377208 () Bool)

(declare-fun e!3336047 () Bool)

(assert (=> b!5377208 (= e!3336047 call!385071)))

(declare-fun b!5377209 () Bool)

(declare-fun res!2282754 () Bool)

(declare-fun e!3336046 () Bool)

(assert (=> b!5377209 (=> res!2282754 e!3336046)))

(assert (=> b!5377209 (= res!2282754 (not ((_ is Concat!23944) (reg!15428 (regOne!30710 r!7292)))))))

(declare-fun e!3336049 () Bool)

(assert (=> b!5377209 (= e!3336049 e!3336046)))

(declare-fun b!5377210 () Bool)

(declare-fun e!3336048 () Bool)

(assert (=> b!5377210 (= e!3336046 e!3336048)))

(declare-fun res!2282756 () Bool)

(assert (=> b!5377210 (=> (not res!2282756) (not e!3336048))))

(assert (=> b!5377210 (= res!2282756 call!385073)))

(declare-fun b!5377211 () Bool)

(declare-fun res!2282757 () Bool)

(declare-fun e!3336044 () Bool)

(assert (=> b!5377211 (=> (not res!2282757) (not e!3336044))))

(assert (=> b!5377211 (= res!2282757 call!385073)))

(assert (=> b!5377211 (= e!3336049 e!3336044)))

(declare-fun b!5377212 () Bool)

(assert (=> b!5377212 (= e!3336044 call!385072)))

(declare-fun b!5377213 () Bool)

(assert (=> b!5377213 (= e!3336048 call!385072)))

(declare-fun b!5377214 () Bool)

(declare-fun e!3336045 () Bool)

(assert (=> b!5377214 (= e!3336043 e!3336045)))

(assert (=> b!5377214 (= c!937133 ((_ is Star!15099) (reg!15428 (regOne!30710 r!7292))))))

(declare-fun b!5377215 () Bool)

(assert (=> b!5377215 (= e!3336045 e!3336047)))

(declare-fun res!2282758 () Bool)

(assert (=> b!5377215 (= res!2282758 (not (nullable!5268 (reg!15428 (reg!15428 (regOne!30710 r!7292))))))))

(assert (=> b!5377215 (=> (not res!2282758) (not e!3336047))))

(declare-fun b!5377216 () Bool)

(assert (=> b!5377216 (= e!3336045 e!3336049)))

(assert (=> b!5377216 (= c!937132 ((_ is Union!15099) (reg!15428 (regOne!30710 r!7292))))))

(assert (= (and d!1721213 (not res!2282755)) b!5377214))

(assert (= (and b!5377214 c!937133) b!5377215))

(assert (= (and b!5377214 (not c!937133)) b!5377216))

(assert (= (and b!5377215 res!2282758) b!5377208))

(assert (= (and b!5377216 c!937132) b!5377211))

(assert (= (and b!5377216 (not c!937132)) b!5377209))

(assert (= (and b!5377211 res!2282757) b!5377212))

(assert (= (and b!5377209 (not res!2282754)) b!5377210))

(assert (= (and b!5377210 res!2282756) b!5377213))

(assert (= (or b!5377212 b!5377213) bm!385067))

(assert (= (or b!5377211 b!5377210) bm!385066))

(assert (= (or b!5377208 bm!385067) bm!385068))

(declare-fun m!6403676 () Bool)

(assert (=> bm!385066 m!6403676))

(declare-fun m!6403678 () Bool)

(assert (=> bm!385068 m!6403678))

(declare-fun m!6403680 () Bool)

(assert (=> b!5377215 m!6403680))

(assert (=> b!5376357 d!1721213))

(declare-fun bs!1244918 () Bool)

(declare-fun d!1721215 () Bool)

(assert (= bs!1244918 (and d!1721215 b!5377191)))

(declare-fun lambda!277938 () Int)

(assert (=> bs!1244918 (not (= lambda!277938 lambda!277935))))

(declare-fun bs!1244919 () Bool)

(assert (= bs!1244919 (and d!1721215 b!5376989)))

(assert (=> bs!1244919 (not (= lambda!277938 lambda!277919))))

(declare-fun bs!1244921 () Bool)

(assert (= bs!1244921 (and d!1721215 b!5376357)))

(assert (=> bs!1244921 (= lambda!277938 lambda!277861)))

(declare-fun bs!1244923 () Bool)

(assert (= bs!1244923 (and d!1721215 b!5376505)))

(assert (=> bs!1244923 (not (= lambda!277938 lambda!277877))))

(assert (=> bs!1244921 (not (= lambda!277938 lambda!277863))))

(declare-fun bs!1244924 () Bool)

(assert (= bs!1244924 (and d!1721215 b!5376498)))

(assert (=> bs!1244924 (not (= lambda!277938 lambda!277875))))

(assert (=> bs!1244921 (not (= lambda!277938 lambda!277862))))

(declare-fun bs!1244925 () Bool)

(assert (= bs!1244925 (and d!1721215 b!5376329)))

(assert (=> bs!1244925 (not (= lambda!277938 lambda!277857))))

(declare-fun bs!1244926 () Bool)

(assert (= bs!1244926 (and d!1721215 d!1721051)))

(assert (=> bs!1244926 (not (= lambda!277938 lambda!277905))))

(declare-fun bs!1244927 () Bool)

(assert (= bs!1244927 (and d!1721215 b!5376348)))

(assert (=> bs!1244927 (not (= lambda!277938 lambda!277860))))

(declare-fun bs!1244928 () Bool)

(assert (= bs!1244928 (and d!1721215 b!5376996)))

(assert (=> bs!1244928 (not (= lambda!277938 lambda!277920))))

(declare-fun bs!1244929 () Bool)

(assert (= bs!1244929 (and d!1721215 b!5377198)))

(assert (=> bs!1244929 (not (= lambda!277938 lambda!277936))))

(assert (=> bs!1244925 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) (regOne!30710 r!7292)) (= lt!2189414 (regTwo!30710 r!7292))) (= lambda!277938 lambda!277856))))

(assert (=> bs!1244927 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) lt!2189414) (= lt!2189414 (regTwo!30710 r!7292))) (= lambda!277938 lambda!277859))))

(declare-fun bs!1244930 () Bool)

(assert (= bs!1244930 (and d!1721215 d!1721017)))

(assert (=> bs!1244930 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) lt!2189414) (= lt!2189414 (regTwo!30710 r!7292))) (= lambda!277938 lambda!277893))))

(assert (=> bs!1244926 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) lt!2189414) (= lt!2189414 (regTwo!30710 r!7292))) (= lambda!277938 lambda!277904))))

(assert (=> d!1721215 true))

(assert (=> d!1721215 true))

(assert (=> d!1721215 true))

(declare-fun lambda!277940 () Int)

(assert (=> bs!1244918 (not (= lambda!277940 lambda!277935))))

(assert (=> bs!1244919 (not (= lambda!277940 lambda!277919))))

(declare-fun bs!1244931 () Bool)

(assert (= bs!1244931 d!1721215))

(assert (=> bs!1244931 (not (= lambda!277940 lambda!277938))))

(assert (=> bs!1244921 (not (= lambda!277940 lambda!277861))))

(assert (=> bs!1244923 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) (regOne!30710 lt!2189426)) (= lt!2189414 (regTwo!30710 lt!2189426))) (= lambda!277940 lambda!277877))))

(assert (=> bs!1244921 (= lambda!277940 lambda!277863)))

(assert (=> bs!1244924 (not (= lambda!277940 lambda!277875))))

(assert (=> bs!1244921 (not (= lambda!277940 lambda!277862))))

(assert (=> bs!1244925 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) (regOne!30710 r!7292)) (= lt!2189414 (regTwo!30710 r!7292))) (= lambda!277940 lambda!277857))))

(assert (=> bs!1244926 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) lt!2189414) (= lt!2189414 (regTwo!30710 r!7292))) (= lambda!277940 lambda!277905))))

(assert (=> bs!1244927 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) lt!2189414) (= lt!2189414 (regTwo!30710 r!7292))) (= lambda!277940 lambda!277860))))

(assert (=> bs!1244928 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) (regOne!30710 r!7292)) (= lt!2189414 (regTwo!30710 r!7292))) (= lambda!277940 lambda!277920))))

(assert (=> bs!1244929 (= (and (= (reg!15428 (regOne!30710 r!7292)) (regOne!30710 lt!2189414)) (= lt!2189414 (regTwo!30710 lt!2189414))) (= lambda!277940 lambda!277936))))

(assert (=> bs!1244925 (not (= lambda!277940 lambda!277856))))

(assert (=> bs!1244927 (not (= lambda!277940 lambda!277859))))

(assert (=> bs!1244930 (not (= lambda!277940 lambda!277893))))

(assert (=> bs!1244926 (not (= lambda!277940 lambda!277904))))

(assert (=> d!1721215 true))

(assert (=> d!1721215 true))

(assert (=> d!1721215 true))

(assert (=> d!1721215 (= (Exists!2280 lambda!277938) (Exists!2280 lambda!277940))))

(declare-fun lt!2189556 () Unit!153914)

(assert (=> d!1721215 (= lt!2189556 (choose!40397 (reg!15428 (regOne!30710 r!7292)) lt!2189414 (_1!35601 lt!2189400)))))

(assert (=> d!1721215 (validRegex!6835 (reg!15428 (regOne!30710 r!7292)))))

(assert (=> d!1721215 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!934 (reg!15428 (regOne!30710 r!7292)) lt!2189414 (_1!35601 lt!2189400)) lt!2189556)))

(declare-fun m!6403688 () Bool)

(assert (=> bs!1244931 m!6403688))

(declare-fun m!6403690 () Bool)

(assert (=> bs!1244931 m!6403690))

(declare-fun m!6403692 () Bool)

(assert (=> bs!1244931 m!6403692))

(assert (=> bs!1244931 m!6402812))

(assert (=> b!5376357 d!1721215))

(declare-fun d!1721219 () Bool)

(assert (=> d!1721219 (= (Exists!2280 lambda!277862) (choose!40394 lambda!277862))))

(declare-fun bs!1244933 () Bool)

(assert (= bs!1244933 d!1721219))

(declare-fun m!6403694 () Bool)

(assert (=> bs!1244933 m!6403694))

(assert (=> b!5376357 d!1721219))

(declare-fun b!5377218 () Bool)

(declare-fun e!3336052 () Bool)

(assert (=> b!5377218 (= e!3336052 (matchR!7284 lt!2189414 (_1!35601 lt!2189400)))))

(declare-fun b!5377219 () Bool)

(declare-fun e!3336053 () Option!15210)

(declare-fun e!3336050 () Option!15210)

(assert (=> b!5377219 (= e!3336053 e!3336050)))

(declare-fun c!937135 () Bool)

(assert (=> b!5377219 (= c!937135 ((_ is Nil!61472) (_1!35601 lt!2189400)))))

(declare-fun b!5377220 () Bool)

(declare-fun lt!2189557 () Unit!153914)

(declare-fun lt!2189558 () Unit!153914)

(assert (=> b!5377220 (= lt!2189557 lt!2189558)))

(assert (=> b!5377220 (= (++!13402 (++!13402 Nil!61472 (Cons!61472 (h!67920 (_1!35601 lt!2189400)) Nil!61472)) (t!374819 (_1!35601 lt!2189400))) (_1!35601 lt!2189400))))

(assert (=> b!5377220 (= lt!2189558 (lemmaMoveElementToOtherListKeepsConcatEq!1803 Nil!61472 (h!67920 (_1!35601 lt!2189400)) (t!374819 (_1!35601 lt!2189400)) (_1!35601 lt!2189400)))))

(assert (=> b!5377220 (= e!3336050 (findConcatSeparation!1624 (reg!15428 (regOne!30710 r!7292)) lt!2189414 (++!13402 Nil!61472 (Cons!61472 (h!67920 (_1!35601 lt!2189400)) Nil!61472)) (t!374819 (_1!35601 lt!2189400)) (_1!35601 lt!2189400)))))

(declare-fun b!5377221 () Bool)

(assert (=> b!5377221 (= e!3336053 (Some!15209 (tuple2!64597 Nil!61472 (_1!35601 lt!2189400))))))

(declare-fun b!5377222 () Bool)

(declare-fun e!3336051 () Bool)

(declare-fun lt!2189559 () Option!15210)

(assert (=> b!5377222 (= e!3336051 (= (++!13402 (_1!35601 (get!21157 lt!2189559)) (_2!35601 (get!21157 lt!2189559))) (_1!35601 lt!2189400)))))

(declare-fun b!5377223 () Bool)

(assert (=> b!5377223 (= e!3336050 None!15209)))

(declare-fun b!5377217 () Bool)

(declare-fun res!2282760 () Bool)

(assert (=> b!5377217 (=> (not res!2282760) (not e!3336051))))

(assert (=> b!5377217 (= res!2282760 (matchR!7284 lt!2189414 (_2!35601 (get!21157 lt!2189559))))))

(declare-fun d!1721221 () Bool)

(declare-fun e!3336054 () Bool)

(assert (=> d!1721221 e!3336054))

(declare-fun res!2282761 () Bool)

(assert (=> d!1721221 (=> res!2282761 e!3336054)))

(assert (=> d!1721221 (= res!2282761 e!3336051)))

(declare-fun res!2282759 () Bool)

(assert (=> d!1721221 (=> (not res!2282759) (not e!3336051))))

(assert (=> d!1721221 (= res!2282759 (isDefined!11913 lt!2189559))))

(assert (=> d!1721221 (= lt!2189559 e!3336053)))

(declare-fun c!937134 () Bool)

(assert (=> d!1721221 (= c!937134 e!3336052)))

(declare-fun res!2282763 () Bool)

(assert (=> d!1721221 (=> (not res!2282763) (not e!3336052))))

(assert (=> d!1721221 (= res!2282763 (matchR!7284 (reg!15428 (regOne!30710 r!7292)) Nil!61472))))

(assert (=> d!1721221 (validRegex!6835 (reg!15428 (regOne!30710 r!7292)))))

(assert (=> d!1721221 (= (findConcatSeparation!1624 (reg!15428 (regOne!30710 r!7292)) lt!2189414 Nil!61472 (_1!35601 lt!2189400) (_1!35601 lt!2189400)) lt!2189559)))

(declare-fun b!5377224 () Bool)

(declare-fun res!2282762 () Bool)

(assert (=> b!5377224 (=> (not res!2282762) (not e!3336051))))

(assert (=> b!5377224 (= res!2282762 (matchR!7284 (reg!15428 (regOne!30710 r!7292)) (_1!35601 (get!21157 lt!2189559))))))

(declare-fun b!5377225 () Bool)

(assert (=> b!5377225 (= e!3336054 (not (isDefined!11913 lt!2189559)))))

(assert (= (and d!1721221 res!2282763) b!5377218))

(assert (= (and d!1721221 c!937134) b!5377221))

(assert (= (and d!1721221 (not c!937134)) b!5377219))

(assert (= (and b!5377219 c!937135) b!5377223))

(assert (= (and b!5377219 (not c!937135)) b!5377220))

(assert (= (and d!1721221 res!2282759) b!5377224))

(assert (= (and b!5377224 res!2282762) b!5377217))

(assert (= (and b!5377217 res!2282760) b!5377222))

(assert (= (and d!1721221 (not res!2282761)) b!5377225))

(assert (=> b!5377218 m!6402904))

(declare-fun m!6403696 () Bool)

(assert (=> b!5377217 m!6403696))

(declare-fun m!6403698 () Bool)

(assert (=> b!5377217 m!6403698))

(assert (=> b!5377222 m!6403696))

(declare-fun m!6403700 () Bool)

(assert (=> b!5377222 m!6403700))

(declare-fun m!6403702 () Bool)

(assert (=> b!5377225 m!6403702))

(assert (=> b!5377224 m!6403696))

(declare-fun m!6403704 () Bool)

(assert (=> b!5377224 m!6403704))

(declare-fun m!6403706 () Bool)

(assert (=> b!5377220 m!6403706))

(assert (=> b!5377220 m!6403706))

(declare-fun m!6403708 () Bool)

(assert (=> b!5377220 m!6403708))

(declare-fun m!6403710 () Bool)

(assert (=> b!5377220 m!6403710))

(assert (=> b!5377220 m!6403706))

(declare-fun m!6403712 () Bool)

(assert (=> b!5377220 m!6403712))

(assert (=> d!1721221 m!6403702))

(declare-fun m!6403714 () Bool)

(assert (=> d!1721221 m!6403714))

(assert (=> d!1721221 m!6402812))

(assert (=> b!5376357 d!1721221))

(declare-fun d!1721223 () Bool)

(assert (=> d!1721223 (= (Exists!2280 lambda!277861) (choose!40394 lambda!277861))))

(declare-fun bs!1244934 () Bool)

(assert (= bs!1244934 d!1721223))

(declare-fun m!6403716 () Bool)

(assert (=> bs!1244934 m!6403716))

(assert (=> b!5376357 d!1721223))

(declare-fun d!1721225 () Bool)

(assert (=> d!1721225 (= (matchR!7284 lt!2189414 (_1!35601 lt!2189400)) (matchRSpec!2202 lt!2189414 (_1!35601 lt!2189400)))))

(declare-fun lt!2189560 () Unit!153914)

(assert (=> d!1721225 (= lt!2189560 (choose!40392 lt!2189414 (_1!35601 lt!2189400)))))

(assert (=> d!1721225 (validRegex!6835 lt!2189414)))

(assert (=> d!1721225 (= (mainMatchTheorem!2202 lt!2189414 (_1!35601 lt!2189400)) lt!2189560)))

(declare-fun bs!1244935 () Bool)

(assert (= bs!1244935 d!1721225))

(assert (=> bs!1244935 m!6402904))

(assert (=> bs!1244935 m!6402830))

(declare-fun m!6403718 () Bool)

(assert (=> bs!1244935 m!6403718))

(assert (=> bs!1244935 m!6402938))

(assert (=> b!5376357 d!1721225))

(declare-fun bs!1244950 () Bool)

(declare-fun d!1721227 () Bool)

(assert (= bs!1244950 (and d!1721227 b!5377191)))

(declare-fun lambda!277951 () Int)

(assert (=> bs!1244950 (not (= lambda!277951 lambda!277935))))

(declare-fun bs!1244951 () Bool)

(assert (= bs!1244951 (and d!1721227 b!5376989)))

(assert (=> bs!1244951 (not (= lambda!277951 lambda!277919))))

(declare-fun bs!1244952 () Bool)

(assert (= bs!1244952 (and d!1721227 d!1721215)))

(assert (=> bs!1244952 (= (= (Star!15099 (reg!15428 (regOne!30710 r!7292))) lt!2189414) (= lambda!277951 lambda!277938))))

(declare-fun bs!1244953 () Bool)

(assert (= bs!1244953 (and d!1721227 b!5376357)))

(assert (=> bs!1244953 (= (= (Star!15099 (reg!15428 (regOne!30710 r!7292))) lt!2189414) (= lambda!277951 lambda!277861))))

(declare-fun bs!1244954 () Bool)

(assert (= bs!1244954 (and d!1721227 b!5376505)))

(assert (=> bs!1244954 (not (= lambda!277951 lambda!277877))))

(assert (=> bs!1244953 (not (= lambda!277951 lambda!277863))))

(declare-fun bs!1244955 () Bool)

(assert (= bs!1244955 (and d!1721227 b!5376498)))

(assert (=> bs!1244955 (not (= lambda!277951 lambda!277875))))

(assert (=> bs!1244953 (not (= lambda!277951 lambda!277862))))

(declare-fun bs!1244956 () Bool)

(assert (= bs!1244956 (and d!1721227 b!5376329)))

(assert (=> bs!1244956 (not (= lambda!277951 lambda!277857))))

(declare-fun bs!1244957 () Bool)

(assert (= bs!1244957 (and d!1721227 d!1721051)))

(assert (=> bs!1244957 (not (= lambda!277951 lambda!277905))))

(declare-fun bs!1244959 () Bool)

(assert (= bs!1244959 (and d!1721227 b!5376348)))

(assert (=> bs!1244959 (not (= lambda!277951 lambda!277860))))

(assert (=> bs!1244952 (not (= lambda!277951 lambda!277940))))

(declare-fun bs!1244960 () Bool)

(assert (= bs!1244960 (and d!1721227 b!5376996)))

(assert (=> bs!1244960 (not (= lambda!277951 lambda!277920))))

(declare-fun bs!1244961 () Bool)

(assert (= bs!1244961 (and d!1721227 b!5377198)))

(assert (=> bs!1244961 (not (= lambda!277951 lambda!277936))))

(assert (=> bs!1244956 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) (regOne!30710 r!7292)) (= (Star!15099 (reg!15428 (regOne!30710 r!7292))) (regTwo!30710 r!7292))) (= lambda!277951 lambda!277856))))

(assert (=> bs!1244959 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) lt!2189414) (= (Star!15099 (reg!15428 (regOne!30710 r!7292))) (regTwo!30710 r!7292))) (= lambda!277951 lambda!277859))))

(declare-fun bs!1244962 () Bool)

(assert (= bs!1244962 (and d!1721227 d!1721017)))

(assert (=> bs!1244962 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) lt!2189414) (= (Star!15099 (reg!15428 (regOne!30710 r!7292))) (regTwo!30710 r!7292))) (= lambda!277951 lambda!277893))))

(assert (=> bs!1244957 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) lt!2189414) (= (Star!15099 (reg!15428 (regOne!30710 r!7292))) (regTwo!30710 r!7292))) (= lambda!277951 lambda!277904))))

(assert (=> d!1721227 true))

(assert (=> d!1721227 true))

(declare-fun lambda!277952 () Int)

(assert (=> bs!1244950 (= (and (= (reg!15428 (regOne!30710 r!7292)) (reg!15428 lt!2189414)) (= (Star!15099 (reg!15428 (regOne!30710 r!7292))) lt!2189414)) (= lambda!277952 lambda!277935))))

(assert (=> bs!1244951 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) (reg!15428 r!7292)) (= (Star!15099 (reg!15428 (regOne!30710 r!7292))) r!7292)) (= lambda!277952 lambda!277919))))

(assert (=> bs!1244952 (not (= lambda!277952 lambda!277938))))

(assert (=> bs!1244953 (not (= lambda!277952 lambda!277861))))

(assert (=> bs!1244954 (not (= lambda!277952 lambda!277877))))

(assert (=> bs!1244953 (not (= lambda!277952 lambda!277863))))

(assert (=> bs!1244955 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) (reg!15428 lt!2189426)) (= (Star!15099 (reg!15428 (regOne!30710 r!7292))) lt!2189426)) (= lambda!277952 lambda!277875))))

(assert (=> bs!1244953 (= (= (Star!15099 (reg!15428 (regOne!30710 r!7292))) lt!2189414) (= lambda!277952 lambda!277862))))

(assert (=> bs!1244956 (not (= lambda!277952 lambda!277857))))

(assert (=> bs!1244957 (not (= lambda!277952 lambda!277905))))

(assert (=> bs!1244959 (not (= lambda!277952 lambda!277860))))

(assert (=> bs!1244960 (not (= lambda!277952 lambda!277920))))

(assert (=> bs!1244961 (not (= lambda!277952 lambda!277936))))

(assert (=> bs!1244956 (not (= lambda!277952 lambda!277856))))

(assert (=> bs!1244959 (not (= lambda!277952 lambda!277859))))

(assert (=> bs!1244962 (not (= lambda!277952 lambda!277893))))

(assert (=> bs!1244957 (not (= lambda!277952 lambda!277904))))

(assert (=> bs!1244952 (not (= lambda!277952 lambda!277940))))

(declare-fun bs!1244975 () Bool)

(assert (= bs!1244975 d!1721227))

(assert (=> bs!1244975 (not (= lambda!277952 lambda!277951))))

(assert (=> d!1721227 true))

(assert (=> d!1721227 true))

(assert (=> d!1721227 (= (Exists!2280 lambda!277951) (Exists!2280 lambda!277952))))

(declare-fun lt!2189566 () Unit!153914)

(declare-fun choose!40404 (Regex!15099 List!61596) Unit!153914)

(assert (=> d!1721227 (= lt!2189566 (choose!40404 (reg!15428 (regOne!30710 r!7292)) (_1!35601 lt!2189400)))))

(assert (=> d!1721227 (validRegex!6835 (reg!15428 (regOne!30710 r!7292)))))

(assert (=> d!1721227 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!364 (reg!15428 (regOne!30710 r!7292)) (_1!35601 lt!2189400)) lt!2189566)))

(declare-fun m!6403726 () Bool)

(assert (=> bs!1244975 m!6403726))

(declare-fun m!6403728 () Bool)

(assert (=> bs!1244975 m!6403728))

(declare-fun m!6403730 () Bool)

(assert (=> bs!1244975 m!6403730))

(assert (=> bs!1244975 m!6402812))

(assert (=> b!5376357 d!1721227))

(declare-fun d!1721231 () Bool)

(assert (=> d!1721231 (= (isDefined!11913 (findConcatSeparation!1624 (reg!15428 (regOne!30710 r!7292)) lt!2189414 Nil!61472 (_1!35601 lt!2189400) (_1!35601 lt!2189400))) (not (isEmpty!33462 (findConcatSeparation!1624 (reg!15428 (regOne!30710 r!7292)) lt!2189414 Nil!61472 (_1!35601 lt!2189400) (_1!35601 lt!2189400)))))))

(declare-fun bs!1244979 () Bool)

(assert (= bs!1244979 d!1721231))

(assert (=> bs!1244979 m!6402824))

(declare-fun m!6403732 () Bool)

(assert (=> bs!1244979 m!6403732))

(assert (=> b!5376357 d!1721231))

(declare-fun bs!1244980 () Bool)

(declare-fun d!1721233 () Bool)

(assert (= bs!1244980 (and d!1721233 b!5377191)))

(declare-fun lambda!277954 () Int)

(assert (=> bs!1244980 (not (= lambda!277954 lambda!277935))))

(declare-fun bs!1244982 () Bool)

(assert (= bs!1244982 (and d!1721233 b!5376989)))

(assert (=> bs!1244982 (not (= lambda!277954 lambda!277919))))

(declare-fun bs!1244983 () Bool)

(assert (= bs!1244983 (and d!1721233 d!1721215)))

(assert (=> bs!1244983 (= lambda!277954 lambda!277938)))

(declare-fun bs!1244984 () Bool)

(assert (= bs!1244984 (and d!1721233 b!5376357)))

(assert (=> bs!1244984 (= lambda!277954 lambda!277861)))

(declare-fun bs!1244985 () Bool)

(assert (= bs!1244985 (and d!1721233 b!5376505)))

(assert (=> bs!1244985 (not (= lambda!277954 lambda!277877))))

(assert (=> bs!1244984 (not (= lambda!277954 lambda!277863))))

(assert (=> bs!1244984 (not (= lambda!277954 lambda!277862))))

(declare-fun bs!1244986 () Bool)

(assert (= bs!1244986 (and d!1721233 b!5376329)))

(assert (=> bs!1244986 (not (= lambda!277954 lambda!277857))))

(declare-fun bs!1244987 () Bool)

(assert (= bs!1244987 (and d!1721233 d!1721051)))

(assert (=> bs!1244987 (not (= lambda!277954 lambda!277905))))

(declare-fun bs!1244988 () Bool)

(assert (= bs!1244988 (and d!1721233 b!5376348)))

(assert (=> bs!1244988 (not (= lambda!277954 lambda!277860))))

(declare-fun bs!1244989 () Bool)

(assert (= bs!1244989 (and d!1721233 b!5376996)))

(assert (=> bs!1244989 (not (= lambda!277954 lambda!277920))))

(declare-fun bs!1244991 () Bool)

(assert (= bs!1244991 (and d!1721233 b!5377198)))

(assert (=> bs!1244991 (not (= lambda!277954 lambda!277936))))

(assert (=> bs!1244986 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) (regOne!30710 r!7292)) (= lt!2189414 (regTwo!30710 r!7292))) (= lambda!277954 lambda!277856))))

(assert (=> bs!1244988 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) lt!2189414) (= lt!2189414 (regTwo!30710 r!7292))) (= lambda!277954 lambda!277859))))

(declare-fun bs!1244992 () Bool)

(assert (= bs!1244992 (and d!1721233 d!1721017)))

(assert (=> bs!1244992 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) lt!2189414) (= lt!2189414 (regTwo!30710 r!7292))) (= lambda!277954 lambda!277893))))

(assert (=> bs!1244987 (= (and (= (_1!35601 lt!2189400) s!2326) (= (reg!15428 (regOne!30710 r!7292)) lt!2189414) (= lt!2189414 (regTwo!30710 r!7292))) (= lambda!277954 lambda!277904))))

(declare-fun bs!1244993 () Bool)

(assert (= bs!1244993 (and d!1721233 d!1721227)))

(assert (=> bs!1244993 (not (= lambda!277954 lambda!277952))))

(declare-fun bs!1244994 () Bool)

(assert (= bs!1244994 (and d!1721233 b!5376498)))

(assert (=> bs!1244994 (not (= lambda!277954 lambda!277875))))

(assert (=> bs!1244983 (not (= lambda!277954 lambda!277940))))

(assert (=> bs!1244993 (= (= lt!2189414 (Star!15099 (reg!15428 (regOne!30710 r!7292)))) (= lambda!277954 lambda!277951))))

(assert (=> d!1721233 true))

(assert (=> d!1721233 true))

(assert (=> d!1721233 true))

(assert (=> d!1721233 (= (isDefined!11913 (findConcatSeparation!1624 (reg!15428 (regOne!30710 r!7292)) lt!2189414 Nil!61472 (_1!35601 lt!2189400) (_1!35601 lt!2189400))) (Exists!2280 lambda!277954))))

(declare-fun lt!2189568 () Unit!153914)

(assert (=> d!1721233 (= lt!2189568 (choose!40395 (reg!15428 (regOne!30710 r!7292)) lt!2189414 (_1!35601 lt!2189400)))))

(assert (=> d!1721233 (validRegex!6835 (reg!15428 (regOne!30710 r!7292)))))

(assert (=> d!1721233 (= (lemmaFindConcatSeparationEquivalentToExists!1388 (reg!15428 (regOne!30710 r!7292)) lt!2189414 (_1!35601 lt!2189400)) lt!2189568)))

(declare-fun bs!1244996 () Bool)

(assert (= bs!1244996 d!1721233))

(declare-fun m!6403764 () Bool)

(assert (=> bs!1244996 m!6403764))

(assert (=> bs!1244996 m!6402824))

(assert (=> bs!1244996 m!6402812))

(assert (=> bs!1244996 m!6402824))

(assert (=> bs!1244996 m!6402826))

(declare-fun m!6403768 () Bool)

(assert (=> bs!1244996 m!6403768))

(assert (=> b!5376357 d!1721233))

(declare-fun d!1721247 () Bool)

(assert (=> d!1721247 (= (Exists!2280 lambda!277863) (choose!40394 lambda!277863))))

(declare-fun bs!1244997 () Bool)

(assert (= bs!1244997 d!1721247))

(declare-fun m!6403770 () Bool)

(assert (=> bs!1244997 m!6403770))

(assert (=> b!5376357 d!1721247))

(declare-fun b!5377268 () Bool)

(declare-fun e!3336077 () Bool)

(assert (=> b!5377268 (= e!3336077 (matchR!7284 (regTwo!30710 r!7292) s!2326))))

(declare-fun b!5377269 () Bool)

(declare-fun e!3336078 () Option!15210)

(declare-fun e!3336075 () Option!15210)

(assert (=> b!5377269 (= e!3336078 e!3336075)))

(declare-fun c!937142 () Bool)

(assert (=> b!5377269 (= c!937142 ((_ is Nil!61472) s!2326))))

(declare-fun b!5377270 () Bool)

(declare-fun lt!2189570 () Unit!153914)

(declare-fun lt!2189571 () Unit!153914)

(assert (=> b!5377270 (= lt!2189570 lt!2189571)))

(assert (=> b!5377270 (= (++!13402 (++!13402 Nil!61472 (Cons!61472 (h!67920 s!2326) Nil!61472)) (t!374819 s!2326)) s!2326)))

(assert (=> b!5377270 (= lt!2189571 (lemmaMoveElementToOtherListKeepsConcatEq!1803 Nil!61472 (h!67920 s!2326) (t!374819 s!2326) s!2326))))

(assert (=> b!5377270 (= e!3336075 (findConcatSeparation!1624 (regOne!30710 r!7292) (regTwo!30710 r!7292) (++!13402 Nil!61472 (Cons!61472 (h!67920 s!2326) Nil!61472)) (t!374819 s!2326) s!2326))))

(declare-fun b!5377271 () Bool)

(assert (=> b!5377271 (= e!3336078 (Some!15209 (tuple2!64597 Nil!61472 s!2326)))))

(declare-fun b!5377272 () Bool)

(declare-fun e!3336076 () Bool)

(declare-fun lt!2189572 () Option!15210)

(assert (=> b!5377272 (= e!3336076 (= (++!13402 (_1!35601 (get!21157 lt!2189572)) (_2!35601 (get!21157 lt!2189572))) s!2326))))

(declare-fun b!5377273 () Bool)

(assert (=> b!5377273 (= e!3336075 None!15209)))

(declare-fun b!5377267 () Bool)

(declare-fun res!2282790 () Bool)

(assert (=> b!5377267 (=> (not res!2282790) (not e!3336076))))

(assert (=> b!5377267 (= res!2282790 (matchR!7284 (regTwo!30710 r!7292) (_2!35601 (get!21157 lt!2189572))))))

(declare-fun d!1721249 () Bool)

(declare-fun e!3336079 () Bool)

(assert (=> d!1721249 e!3336079))

(declare-fun res!2282791 () Bool)

(assert (=> d!1721249 (=> res!2282791 e!3336079)))

(assert (=> d!1721249 (= res!2282791 e!3336076)))

(declare-fun res!2282789 () Bool)

(assert (=> d!1721249 (=> (not res!2282789) (not e!3336076))))

(assert (=> d!1721249 (= res!2282789 (isDefined!11913 lt!2189572))))

(assert (=> d!1721249 (= lt!2189572 e!3336078)))

(declare-fun c!937141 () Bool)

(assert (=> d!1721249 (= c!937141 e!3336077)))

(declare-fun res!2282793 () Bool)

(assert (=> d!1721249 (=> (not res!2282793) (not e!3336077))))

(assert (=> d!1721249 (= res!2282793 (matchR!7284 (regOne!30710 r!7292) Nil!61472))))

(assert (=> d!1721249 (validRegex!6835 (regOne!30710 r!7292))))

(assert (=> d!1721249 (= (findConcatSeparation!1624 (regOne!30710 r!7292) (regTwo!30710 r!7292) Nil!61472 s!2326 s!2326) lt!2189572)))

(declare-fun b!5377274 () Bool)

(declare-fun res!2282792 () Bool)

(assert (=> b!5377274 (=> (not res!2282792) (not e!3336076))))

(assert (=> b!5377274 (= res!2282792 (matchR!7284 (regOne!30710 r!7292) (_1!35601 (get!21157 lt!2189572))))))

(declare-fun b!5377275 () Bool)

(assert (=> b!5377275 (= e!3336079 (not (isDefined!11913 lt!2189572)))))

(assert (= (and d!1721249 res!2282793) b!5377268))

(assert (= (and d!1721249 c!937141) b!5377271))

(assert (= (and d!1721249 (not c!937141)) b!5377269))

(assert (= (and b!5377269 c!937142) b!5377273))

(assert (= (and b!5377269 (not c!937142)) b!5377270))

(assert (= (and d!1721249 res!2282789) b!5377274))

(assert (= (and b!5377274 res!2282792) b!5377267))

(assert (= (and b!5377267 res!2282790) b!5377272))

(assert (= (and d!1721249 (not res!2282791)) b!5377275))

(assert (=> b!5377268 m!6403166))

(declare-fun m!6403772 () Bool)

(assert (=> b!5377267 m!6403772))

(declare-fun m!6403774 () Bool)

(assert (=> b!5377267 m!6403774))

(assert (=> b!5377272 m!6403772))

(declare-fun m!6403776 () Bool)

(assert (=> b!5377272 m!6403776))

(declare-fun m!6403778 () Bool)

(assert (=> b!5377275 m!6403778))

(assert (=> b!5377274 m!6403772))

(declare-fun m!6403780 () Bool)

(assert (=> b!5377274 m!6403780))

(assert (=> b!5377270 m!6403178))

(assert (=> b!5377270 m!6403178))

(assert (=> b!5377270 m!6403180))

(assert (=> b!5377270 m!6403182))

(assert (=> b!5377270 m!6403178))

(declare-fun m!6403782 () Bool)

(assert (=> b!5377270 m!6403782))

(assert (=> d!1721249 m!6403778))

(declare-fun m!6403784 () Bool)

(assert (=> d!1721249 m!6403784))

(declare-fun m!6403786 () Bool)

(assert (=> d!1721249 m!6403786))

(assert (=> b!5376329 d!1721249))

(declare-fun d!1721251 () Bool)

(assert (=> d!1721251 (= (Exists!2280 lambda!277856) (choose!40394 lambda!277856))))

(declare-fun bs!1244998 () Bool)

(assert (= bs!1244998 d!1721251))

(declare-fun m!6403788 () Bool)

(assert (=> bs!1244998 m!6403788))

(assert (=> b!5376329 d!1721251))

(declare-fun bs!1244999 () Bool)

(declare-fun d!1721253 () Bool)

(assert (= bs!1244999 (and d!1721253 b!5377191)))

(declare-fun lambda!277955 () Int)

(assert (=> bs!1244999 (not (= lambda!277955 lambda!277935))))

(declare-fun bs!1245000 () Bool)

(assert (= bs!1245000 (and d!1721253 b!5376989)))

(assert (=> bs!1245000 (not (= lambda!277955 lambda!277919))))

(declare-fun bs!1245001 () Bool)

(assert (= bs!1245001 (and d!1721253 d!1721215)))

(assert (=> bs!1245001 (= (and (= s!2326 (_1!35601 lt!2189400)) (= (regOne!30710 r!7292) (reg!15428 (regOne!30710 r!7292))) (= (regTwo!30710 r!7292) lt!2189414)) (= lambda!277955 lambda!277938))))

(declare-fun bs!1245002 () Bool)

(assert (= bs!1245002 (and d!1721253 b!5376357)))

(assert (=> bs!1245002 (= (and (= s!2326 (_1!35601 lt!2189400)) (= (regOne!30710 r!7292) (reg!15428 (regOne!30710 r!7292))) (= (regTwo!30710 r!7292) lt!2189414)) (= lambda!277955 lambda!277861))))

(declare-fun bs!1245003 () Bool)

(assert (= bs!1245003 (and d!1721253 b!5376505)))

(assert (=> bs!1245003 (not (= lambda!277955 lambda!277877))))

(assert (=> bs!1245002 (not (= lambda!277955 lambda!277863))))

(assert (=> bs!1245002 (not (= lambda!277955 lambda!277862))))

(declare-fun bs!1245004 () Bool)

(assert (= bs!1245004 (and d!1721253 d!1721233)))

(assert (=> bs!1245004 (= (and (= s!2326 (_1!35601 lt!2189400)) (= (regOne!30710 r!7292) (reg!15428 (regOne!30710 r!7292))) (= (regTwo!30710 r!7292) lt!2189414)) (= lambda!277955 lambda!277954))))

(declare-fun bs!1245005 () Bool)

(assert (= bs!1245005 (and d!1721253 b!5376329)))

(assert (=> bs!1245005 (not (= lambda!277955 lambda!277857))))

(declare-fun bs!1245006 () Bool)

(assert (= bs!1245006 (and d!1721253 d!1721051)))

(assert (=> bs!1245006 (not (= lambda!277955 lambda!277905))))

(declare-fun bs!1245007 () Bool)

(assert (= bs!1245007 (and d!1721253 b!5376348)))

(assert (=> bs!1245007 (not (= lambda!277955 lambda!277860))))

(declare-fun bs!1245008 () Bool)

(assert (= bs!1245008 (and d!1721253 b!5376996)))

(assert (=> bs!1245008 (not (= lambda!277955 lambda!277920))))

(declare-fun bs!1245009 () Bool)

(assert (= bs!1245009 (and d!1721253 b!5377198)))

(assert (=> bs!1245009 (not (= lambda!277955 lambda!277936))))

(assert (=> bs!1245005 (= lambda!277955 lambda!277856)))

(assert (=> bs!1245007 (= (= (regOne!30710 r!7292) lt!2189414) (= lambda!277955 lambda!277859))))

(declare-fun bs!1245010 () Bool)

(assert (= bs!1245010 (and d!1721253 d!1721017)))

(assert (=> bs!1245010 (= (= (regOne!30710 r!7292) lt!2189414) (= lambda!277955 lambda!277893))))

(assert (=> bs!1245006 (= (= (regOne!30710 r!7292) lt!2189414) (= lambda!277955 lambda!277904))))

(declare-fun bs!1245011 () Bool)

(assert (= bs!1245011 (and d!1721253 d!1721227)))

(assert (=> bs!1245011 (not (= lambda!277955 lambda!277952))))

(declare-fun bs!1245012 () Bool)

(assert (= bs!1245012 (and d!1721253 b!5376498)))

(assert (=> bs!1245012 (not (= lambda!277955 lambda!277875))))

(assert (=> bs!1245001 (not (= lambda!277955 lambda!277940))))

(assert (=> bs!1245011 (= (and (= s!2326 (_1!35601 lt!2189400)) (= (regOne!30710 r!7292) (reg!15428 (regOne!30710 r!7292))) (= (regTwo!30710 r!7292) (Star!15099 (reg!15428 (regOne!30710 r!7292))))) (= lambda!277955 lambda!277951))))

(assert (=> d!1721253 true))

(assert (=> d!1721253 true))

(assert (=> d!1721253 true))

(declare-fun lambda!277956 () Int)

(assert (=> bs!1244999 (not (= lambda!277956 lambda!277935))))

(assert (=> bs!1245000 (not (= lambda!277956 lambda!277919))))

(assert (=> bs!1245001 (not (= lambda!277956 lambda!277938))))

(assert (=> bs!1245002 (not (= lambda!277956 lambda!277861))))

(assert (=> bs!1245003 (= (and (= (regOne!30710 r!7292) (regOne!30710 lt!2189426)) (= (regTwo!30710 r!7292) (regTwo!30710 lt!2189426))) (= lambda!277956 lambda!277877))))

(assert (=> bs!1245002 (= (and (= s!2326 (_1!35601 lt!2189400)) (= (regOne!30710 r!7292) (reg!15428 (regOne!30710 r!7292))) (= (regTwo!30710 r!7292) lt!2189414)) (= lambda!277956 lambda!277863))))

(assert (=> bs!1245002 (not (= lambda!277956 lambda!277862))))

(assert (=> bs!1245004 (not (= lambda!277956 lambda!277954))))

(assert (=> bs!1245005 (= lambda!277956 lambda!277857)))

(assert (=> bs!1245006 (= (= (regOne!30710 r!7292) lt!2189414) (= lambda!277956 lambda!277905))))

(assert (=> bs!1245007 (= (= (regOne!30710 r!7292) lt!2189414) (= lambda!277956 lambda!277860))))

(assert (=> bs!1245008 (= lambda!277956 lambda!277920)))

(assert (=> bs!1245009 (= (and (= s!2326 (_1!35601 lt!2189400)) (= (regOne!30710 r!7292) (regOne!30710 lt!2189414)) (= (regTwo!30710 r!7292) (regTwo!30710 lt!2189414))) (= lambda!277956 lambda!277936))))

(assert (=> bs!1245005 (not (= lambda!277956 lambda!277856))))

(assert (=> bs!1245007 (not (= lambda!277956 lambda!277859))))

(assert (=> bs!1245010 (not (= lambda!277956 lambda!277893))))

(assert (=> bs!1245006 (not (= lambda!277956 lambda!277904))))

(assert (=> bs!1245011 (not (= lambda!277956 lambda!277952))))

(declare-fun bs!1245017 () Bool)

(assert (= bs!1245017 d!1721253))

(assert (=> bs!1245017 (not (= lambda!277956 lambda!277955))))

(assert (=> bs!1245012 (not (= lambda!277956 lambda!277875))))

(assert (=> bs!1245001 (= (and (= s!2326 (_1!35601 lt!2189400)) (= (regOne!30710 r!7292) (reg!15428 (regOne!30710 r!7292))) (= (regTwo!30710 r!7292) lt!2189414)) (= lambda!277956 lambda!277940))))

(assert (=> bs!1245011 (not (= lambda!277956 lambda!277951))))

(assert (=> d!1721253 true))

(assert (=> d!1721253 true))

(assert (=> d!1721253 true))

(assert (=> d!1721253 (= (Exists!2280 lambda!277955) (Exists!2280 lambda!277956))))

(declare-fun lt!2189573 () Unit!153914)

(assert (=> d!1721253 (= lt!2189573 (choose!40397 (regOne!30710 r!7292) (regTwo!30710 r!7292) s!2326))))

(assert (=> d!1721253 (validRegex!6835 (regOne!30710 r!7292))))

(assert (=> d!1721253 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!934 (regOne!30710 r!7292) (regTwo!30710 r!7292) s!2326) lt!2189573)))

(declare-fun m!6403794 () Bool)

(assert (=> bs!1245017 m!6403794))

(declare-fun m!6403796 () Bool)

(assert (=> bs!1245017 m!6403796))

(declare-fun m!6403798 () Bool)

(assert (=> bs!1245017 m!6403798))

(assert (=> bs!1245017 m!6403786))

(assert (=> b!5376329 d!1721253))

(declare-fun d!1721263 () Bool)

(assert (=> d!1721263 (= (isDefined!11913 (findConcatSeparation!1624 (regOne!30710 r!7292) (regTwo!30710 r!7292) Nil!61472 s!2326 s!2326)) (not (isEmpty!33462 (findConcatSeparation!1624 (regOne!30710 r!7292) (regTwo!30710 r!7292) Nil!61472 s!2326 s!2326))))))

(declare-fun bs!1245018 () Bool)

(assert (= bs!1245018 d!1721263))

(assert (=> bs!1245018 m!6402892))

(declare-fun m!6403800 () Bool)

(assert (=> bs!1245018 m!6403800))

(assert (=> b!5376329 d!1721263))

(declare-fun bs!1245019 () Bool)

(declare-fun d!1721265 () Bool)

(assert (= bs!1245019 (and d!1721265 b!5377191)))

(declare-fun lambda!277957 () Int)

(assert (=> bs!1245019 (not (= lambda!277957 lambda!277935))))

(declare-fun bs!1245020 () Bool)

(assert (= bs!1245020 (and d!1721265 b!5376989)))

(assert (=> bs!1245020 (not (= lambda!277957 lambda!277919))))

(declare-fun bs!1245021 () Bool)

(assert (= bs!1245021 (and d!1721265 b!5376357)))

(assert (=> bs!1245021 (= (and (= s!2326 (_1!35601 lt!2189400)) (= (regOne!30710 r!7292) (reg!15428 (regOne!30710 r!7292))) (= (regTwo!30710 r!7292) lt!2189414)) (= lambda!277957 lambda!277861))))

(declare-fun bs!1245022 () Bool)

(assert (= bs!1245022 (and d!1721265 b!5376505)))

(assert (=> bs!1245022 (not (= lambda!277957 lambda!277877))))

(assert (=> bs!1245021 (not (= lambda!277957 lambda!277863))))

(assert (=> bs!1245021 (not (= lambda!277957 lambda!277862))))

(declare-fun bs!1245023 () Bool)

(assert (= bs!1245023 (and d!1721265 d!1721233)))

(assert (=> bs!1245023 (= (and (= s!2326 (_1!35601 lt!2189400)) (= (regOne!30710 r!7292) (reg!15428 (regOne!30710 r!7292))) (= (regTwo!30710 r!7292) lt!2189414)) (= lambda!277957 lambda!277954))))

(declare-fun bs!1245024 () Bool)

(assert (= bs!1245024 (and d!1721265 b!5376329)))

(assert (=> bs!1245024 (not (= lambda!277957 lambda!277857))))

(declare-fun bs!1245025 () Bool)

(assert (= bs!1245025 (and d!1721265 d!1721051)))

(assert (=> bs!1245025 (not (= lambda!277957 lambda!277905))))

(declare-fun bs!1245026 () Bool)

(assert (= bs!1245026 (and d!1721265 b!5376348)))

(assert (=> bs!1245026 (not (= lambda!277957 lambda!277860))))

(declare-fun bs!1245027 () Bool)

(assert (= bs!1245027 (and d!1721265 b!5376996)))

(assert (=> bs!1245027 (not (= lambda!277957 lambda!277920))))

(declare-fun bs!1245028 () Bool)

(assert (= bs!1245028 (and d!1721265 b!5377198)))

(assert (=> bs!1245028 (not (= lambda!277957 lambda!277936))))

(declare-fun bs!1245029 () Bool)

(assert (= bs!1245029 (and d!1721265 d!1721215)))

(assert (=> bs!1245029 (= (and (= s!2326 (_1!35601 lt!2189400)) (= (regOne!30710 r!7292) (reg!15428 (regOne!30710 r!7292))) (= (regTwo!30710 r!7292) lt!2189414)) (= lambda!277957 lambda!277938))))

(declare-fun bs!1245030 () Bool)

(assert (= bs!1245030 (and d!1721265 d!1721253)))

(assert (=> bs!1245030 (not (= lambda!277957 lambda!277956))))

(assert (=> bs!1245024 (= lambda!277957 lambda!277856)))

(assert (=> bs!1245026 (= (= (regOne!30710 r!7292) lt!2189414) (= lambda!277957 lambda!277859))))

(declare-fun bs!1245031 () Bool)

(assert (= bs!1245031 (and d!1721265 d!1721017)))

(assert (=> bs!1245031 (= (= (regOne!30710 r!7292) lt!2189414) (= lambda!277957 lambda!277893))))

(assert (=> bs!1245025 (= (= (regOne!30710 r!7292) lt!2189414) (= lambda!277957 lambda!277904))))

(declare-fun bs!1245032 () Bool)

(assert (= bs!1245032 (and d!1721265 d!1721227)))

(assert (=> bs!1245032 (not (= lambda!277957 lambda!277952))))

(assert (=> bs!1245030 (= lambda!277957 lambda!277955)))

(declare-fun bs!1245033 () Bool)

(assert (= bs!1245033 (and d!1721265 b!5376498)))

(assert (=> bs!1245033 (not (= lambda!277957 lambda!277875))))

(assert (=> bs!1245029 (not (= lambda!277957 lambda!277940))))

(assert (=> bs!1245032 (= (and (= s!2326 (_1!35601 lt!2189400)) (= (regOne!30710 r!7292) (reg!15428 (regOne!30710 r!7292))) (= (regTwo!30710 r!7292) (Star!15099 (reg!15428 (regOne!30710 r!7292))))) (= lambda!277957 lambda!277951))))

(assert (=> d!1721265 true))

(assert (=> d!1721265 true))

(assert (=> d!1721265 true))

(assert (=> d!1721265 (= (isDefined!11913 (findConcatSeparation!1624 (regOne!30710 r!7292) (regTwo!30710 r!7292) Nil!61472 s!2326 s!2326)) (Exists!2280 lambda!277957))))

(declare-fun lt!2189574 () Unit!153914)

(assert (=> d!1721265 (= lt!2189574 (choose!40395 (regOne!30710 r!7292) (regTwo!30710 r!7292) s!2326))))

(assert (=> d!1721265 (validRegex!6835 (regOne!30710 r!7292))))

(assert (=> d!1721265 (= (lemmaFindConcatSeparationEquivalentToExists!1388 (regOne!30710 r!7292) (regTwo!30710 r!7292) s!2326) lt!2189574)))

(declare-fun bs!1245034 () Bool)

(assert (= bs!1245034 d!1721265))

(declare-fun m!6403802 () Bool)

(assert (=> bs!1245034 m!6403802))

(assert (=> bs!1245034 m!6402892))

(assert (=> bs!1245034 m!6403786))

(assert (=> bs!1245034 m!6402892))

(assert (=> bs!1245034 m!6402894))

(declare-fun m!6403804 () Bool)

(assert (=> bs!1245034 m!6403804))

(assert (=> b!5376329 d!1721265))

(declare-fun d!1721267 () Bool)

(assert (=> d!1721267 (= (Exists!2280 lambda!277857) (choose!40394 lambda!277857))))

(declare-fun bs!1245035 () Bool)

(assert (= bs!1245035 d!1721267))

(declare-fun m!6403806 () Bool)

(assert (=> bs!1245035 m!6403806))

(assert (=> b!5376329 d!1721267))

(declare-fun d!1721269 () Bool)

(assert (=> d!1721269 (= (isEmpty!33459 (_1!35601 lt!2189400)) ((_ is Nil!61472) (_1!35601 lt!2189400)))))

(assert (=> b!5376350 d!1721269))

(declare-fun d!1721271 () Bool)

(assert (=> d!1721271 (= (isEmpty!33460 (t!374820 (exprs!4983 (h!67922 zl!343)))) ((_ is Nil!61473) (t!374820 (exprs!4983 (h!67922 zl!343)))))))

(assert (=> b!5376353 d!1721271))

(declare-fun d!1721273 () Bool)

(declare-fun c!937143 () Bool)

(assert (=> d!1721273 (= c!937143 (isEmpty!33459 (t!374819 s!2326)))))

(declare-fun e!3336101 () Bool)

(assert (=> d!1721273 (= (matchZipper!1343 lt!2189396 (t!374819 s!2326)) e!3336101)))

(declare-fun b!5377324 () Bool)

(assert (=> b!5377324 (= e!3336101 (nullableZipper!1408 lt!2189396))))

(declare-fun b!5377325 () Bool)

(assert (=> b!5377325 (= e!3336101 (matchZipper!1343 (derivationStepZipper!1338 lt!2189396 (head!11532 (t!374819 s!2326))) (tail!10629 (t!374819 s!2326))))))

(assert (= (and d!1721273 c!937143) b!5377324))

(assert (= (and d!1721273 (not c!937143)) b!5377325))

(assert (=> d!1721273 m!6403420))

(declare-fun m!6403808 () Bool)

(assert (=> b!5377324 m!6403808))

(assert (=> b!5377325 m!6403424))

(assert (=> b!5377325 m!6403424))

(declare-fun m!6403810 () Bool)

(assert (=> b!5377325 m!6403810))

(assert (=> b!5377325 m!6403428))

(assert (=> b!5377325 m!6403810))

(assert (=> b!5377325 m!6403428))

(declare-fun m!6403812 () Bool)

(assert (=> b!5377325 m!6403812))

(assert (=> b!5376332 d!1721273))

(declare-fun d!1721275 () Bool)

(assert (=> d!1721275 (= (nullable!5268 (regOne!30710 (regOne!30710 r!7292))) (nullableFct!1560 (regOne!30710 (regOne!30710 r!7292))))))

(declare-fun bs!1245036 () Bool)

(assert (= bs!1245036 d!1721275))

(declare-fun m!6403814 () Bool)

(assert (=> bs!1245036 m!6403814))

(assert (=> b!5376330 d!1721275))

(declare-fun b!5377338 () Bool)

(declare-fun e!3336104 () Bool)

(declare-fun tp!1490877 () Bool)

(assert (=> b!5377338 (= e!3336104 tp!1490877)))

(declare-fun b!5377339 () Bool)

(declare-fun tp!1490876 () Bool)

(declare-fun tp!1490875 () Bool)

(assert (=> b!5377339 (= e!3336104 (and tp!1490876 tp!1490875))))

(declare-fun b!5377336 () Bool)

(assert (=> b!5377336 (= e!3336104 tp_is_empty!39451)))

(declare-fun b!5377337 () Bool)

(declare-fun tp!1490878 () Bool)

(declare-fun tp!1490874 () Bool)

(assert (=> b!5377337 (= e!3336104 (and tp!1490878 tp!1490874))))

(assert (=> b!5376351 (= tp!1490805 e!3336104)))

(assert (= (and b!5376351 ((_ is ElementMatch!15099) (regOne!30710 r!7292))) b!5377336))

(assert (= (and b!5376351 ((_ is Concat!23944) (regOne!30710 r!7292))) b!5377337))

(assert (= (and b!5376351 ((_ is Star!15099) (regOne!30710 r!7292))) b!5377338))

(assert (= (and b!5376351 ((_ is Union!15099) (regOne!30710 r!7292))) b!5377339))

(declare-fun b!5377342 () Bool)

(declare-fun e!3336105 () Bool)

(declare-fun tp!1490882 () Bool)

(assert (=> b!5377342 (= e!3336105 tp!1490882)))

(declare-fun b!5377343 () Bool)

(declare-fun tp!1490881 () Bool)

(declare-fun tp!1490880 () Bool)

(assert (=> b!5377343 (= e!3336105 (and tp!1490881 tp!1490880))))

(declare-fun b!5377340 () Bool)

(assert (=> b!5377340 (= e!3336105 tp_is_empty!39451)))

(declare-fun b!5377341 () Bool)

(declare-fun tp!1490883 () Bool)

(declare-fun tp!1490879 () Bool)

(assert (=> b!5377341 (= e!3336105 (and tp!1490883 tp!1490879))))

(assert (=> b!5376351 (= tp!1490802 e!3336105)))

(assert (= (and b!5376351 ((_ is ElementMatch!15099) (regTwo!30710 r!7292))) b!5377340))

(assert (= (and b!5376351 ((_ is Concat!23944) (regTwo!30710 r!7292))) b!5377341))

(assert (= (and b!5376351 ((_ is Star!15099) (regTwo!30710 r!7292))) b!5377342))

(assert (= (and b!5376351 ((_ is Union!15099) (regTwo!30710 r!7292))) b!5377343))

(declare-fun condSetEmpty!34871 () Bool)

(assert (=> setNonEmpty!34865 (= condSetEmpty!34871 (= setRest!34865 ((as const (Array Context!8966 Bool)) false)))))

(declare-fun setRes!34871 () Bool)

(assert (=> setNonEmpty!34865 (= tp!1490803 setRes!34871)))

(declare-fun setIsEmpty!34871 () Bool)

(assert (=> setIsEmpty!34871 setRes!34871))

(declare-fun setElem!34871 () Context!8966)

(declare-fun setNonEmpty!34871 () Bool)

(declare-fun tp!1490888 () Bool)

(declare-fun e!3336108 () Bool)

(assert (=> setNonEmpty!34871 (= setRes!34871 (and tp!1490888 (inv!80994 setElem!34871) e!3336108))))

(declare-fun setRest!34871 () (InoxSet Context!8966))

(assert (=> setNonEmpty!34871 (= setRest!34865 ((_ map or) (store ((as const (Array Context!8966 Bool)) false) setElem!34871 true) setRest!34871))))

(declare-fun b!5377348 () Bool)

(declare-fun tp!1490889 () Bool)

(assert (=> b!5377348 (= e!3336108 tp!1490889)))

(assert (= (and setNonEmpty!34865 condSetEmpty!34871) setIsEmpty!34871))

(assert (= (and setNonEmpty!34865 (not condSetEmpty!34871)) setNonEmpty!34871))

(assert (= setNonEmpty!34871 b!5377348))

(declare-fun m!6403816 () Bool)

(assert (=> setNonEmpty!34871 m!6403816))

(declare-fun b!5377356 () Bool)

(declare-fun e!3336114 () Bool)

(declare-fun tp!1490894 () Bool)

(assert (=> b!5377356 (= e!3336114 tp!1490894)))

(declare-fun tp!1490895 () Bool)

(declare-fun e!3336113 () Bool)

(declare-fun b!5377355 () Bool)

(assert (=> b!5377355 (= e!3336113 (and (inv!80994 (h!67922 (t!374821 zl!343))) e!3336114 tp!1490895))))

(assert (=> b!5376360 (= tp!1490800 e!3336113)))

(assert (= b!5377355 b!5377356))

(assert (= (and b!5376360 ((_ is Cons!61474) (t!374821 zl!343))) b!5377355))

(declare-fun m!6403818 () Bool)

(assert (=> b!5377355 m!6403818))

(declare-fun b!5377359 () Bool)

(declare-fun e!3336115 () Bool)

(declare-fun tp!1490899 () Bool)

(assert (=> b!5377359 (= e!3336115 tp!1490899)))

(declare-fun b!5377360 () Bool)

(declare-fun tp!1490898 () Bool)

(declare-fun tp!1490897 () Bool)

(assert (=> b!5377360 (= e!3336115 (and tp!1490898 tp!1490897))))

(declare-fun b!5377357 () Bool)

(assert (=> b!5377357 (= e!3336115 tp_is_empty!39451)))

(declare-fun b!5377358 () Bool)

(declare-fun tp!1490900 () Bool)

(declare-fun tp!1490896 () Bool)

(assert (=> b!5377358 (= e!3336115 (and tp!1490900 tp!1490896))))

(assert (=> b!5376344 (= tp!1490796 e!3336115)))

(assert (= (and b!5376344 ((_ is ElementMatch!15099) (reg!15428 r!7292))) b!5377357))

(assert (= (and b!5376344 ((_ is Concat!23944) (reg!15428 r!7292))) b!5377358))

(assert (= (and b!5376344 ((_ is Star!15099) (reg!15428 r!7292))) b!5377359))

(assert (= (and b!5376344 ((_ is Union!15099) (reg!15428 r!7292))) b!5377360))

(declare-fun b!5377365 () Bool)

(declare-fun e!3336118 () Bool)

(declare-fun tp!1490905 () Bool)

(declare-fun tp!1490906 () Bool)

(assert (=> b!5377365 (= e!3336118 (and tp!1490905 tp!1490906))))

(assert (=> b!5376342 (= tp!1490799 e!3336118)))

(assert (= (and b!5376342 ((_ is Cons!61473) (exprs!4983 setElem!34865))) b!5377365))

(declare-fun b!5377366 () Bool)

(declare-fun e!3336119 () Bool)

(declare-fun tp!1490907 () Bool)

(declare-fun tp!1490908 () Bool)

(assert (=> b!5377366 (= e!3336119 (and tp!1490907 tp!1490908))))

(assert (=> b!5376362 (= tp!1490797 e!3336119)))

(assert (= (and b!5376362 ((_ is Cons!61473) (exprs!4983 (h!67922 zl!343)))) b!5377366))

(declare-fun b!5377371 () Bool)

(declare-fun e!3336122 () Bool)

(declare-fun tp!1490911 () Bool)

(assert (=> b!5377371 (= e!3336122 (and tp_is_empty!39451 tp!1490911))))

(assert (=> b!5376331 (= tp!1490804 e!3336122)))

(assert (= (and b!5376331 ((_ is Cons!61472) (t!374819 s!2326))) b!5377371))

(declare-fun b!5377374 () Bool)

(declare-fun e!3336123 () Bool)

(declare-fun tp!1490915 () Bool)

(assert (=> b!5377374 (= e!3336123 tp!1490915)))

(declare-fun b!5377375 () Bool)

(declare-fun tp!1490914 () Bool)

(declare-fun tp!1490913 () Bool)

(assert (=> b!5377375 (= e!3336123 (and tp!1490914 tp!1490913))))

(declare-fun b!5377372 () Bool)

(assert (=> b!5377372 (= e!3336123 tp_is_empty!39451)))

(declare-fun b!5377373 () Bool)

(declare-fun tp!1490916 () Bool)

(declare-fun tp!1490912 () Bool)

(assert (=> b!5377373 (= e!3336123 (and tp!1490916 tp!1490912))))

(assert (=> b!5376336 (= tp!1490801 e!3336123)))

(assert (= (and b!5376336 ((_ is ElementMatch!15099) (regOne!30711 r!7292))) b!5377372))

(assert (= (and b!5376336 ((_ is Concat!23944) (regOne!30711 r!7292))) b!5377373))

(assert (= (and b!5376336 ((_ is Star!15099) (regOne!30711 r!7292))) b!5377374))

(assert (= (and b!5376336 ((_ is Union!15099) (regOne!30711 r!7292))) b!5377375))

(declare-fun b!5377378 () Bool)

(declare-fun e!3336124 () Bool)

(declare-fun tp!1490920 () Bool)

(assert (=> b!5377378 (= e!3336124 tp!1490920)))

(declare-fun b!5377379 () Bool)

(declare-fun tp!1490919 () Bool)

(declare-fun tp!1490918 () Bool)

(assert (=> b!5377379 (= e!3336124 (and tp!1490919 tp!1490918))))

(declare-fun b!5377376 () Bool)

(assert (=> b!5377376 (= e!3336124 tp_is_empty!39451)))

(declare-fun b!5377377 () Bool)

(declare-fun tp!1490921 () Bool)

(declare-fun tp!1490917 () Bool)

(assert (=> b!5377377 (= e!3336124 (and tp!1490921 tp!1490917))))

(assert (=> b!5376336 (= tp!1490798 e!3336124)))

(assert (= (and b!5376336 ((_ is ElementMatch!15099) (regTwo!30711 r!7292))) b!5377376))

(assert (= (and b!5376336 ((_ is Concat!23944) (regTwo!30711 r!7292))) b!5377377))

(assert (= (and b!5376336 ((_ is Star!15099) (regTwo!30711 r!7292))) b!5377378))

(assert (= (and b!5376336 ((_ is Union!15099) (regTwo!30711 r!7292))) b!5377379))

(declare-fun b_lambda!206021 () Bool)

(assert (= b_lambda!206003 (or b!5376325 b_lambda!206021)))

(declare-fun bs!1245037 () Bool)

(declare-fun d!1721277 () Bool)

(assert (= bs!1245037 (and d!1721277 b!5376325)))

(assert (=> bs!1245037 (= (dynLambda!24269 lambda!277858 lt!2189428) (derivationStepZipperUp!471 lt!2189428 (h!67920 s!2326)))))

(assert (=> bs!1245037 m!6402942))

(assert (=> d!1721109 d!1721277))

(declare-fun b_lambda!206023 () Bool)

(assert (= b_lambda!206001 (or b!5376325 b_lambda!206023)))

(declare-fun bs!1245038 () Bool)

(declare-fun d!1721279 () Bool)

(assert (= bs!1245038 (and d!1721279 b!5376325)))

(assert (=> bs!1245038 (= (dynLambda!24269 lambda!277858 (h!67922 zl!343)) (derivationStepZipperUp!471 (h!67922 zl!343) (h!67920 s!2326)))))

(assert (=> bs!1245038 m!6402852))

(assert (=> d!1721085 d!1721279))

(declare-fun b_lambda!206025 () Bool)

(assert (= b_lambda!206005 (or b!5376325 b_lambda!206025)))

(declare-fun bs!1245039 () Bool)

(declare-fun d!1721281 () Bool)

(assert (= bs!1245039 (and d!1721281 b!5376325)))

(assert (=> bs!1245039 (= (dynLambda!24269 lambda!277858 lt!2189406) (derivationStepZipperUp!471 lt!2189406 (h!67920 s!2326)))))

(assert (=> bs!1245039 m!6402864))

(assert (=> d!1721161 d!1721281))

(declare-fun b_lambda!206027 () Bool)

(assert (= b_lambda!206007 (or b!5376325 b_lambda!206027)))

(declare-fun bs!1245040 () Bool)

(declare-fun d!1721283 () Bool)

(assert (= bs!1245040 (and d!1721283 b!5376325)))

(assert (=> bs!1245040 (= (dynLambda!24269 lambda!277858 lt!2189417) (derivationStepZipperUp!471 lt!2189417 (h!67920 s!2326)))))

(assert (=> bs!1245040 m!6402872))

(assert (=> d!1721165 d!1721283))

(check-sat (not b!5376750) (not b!5377152) (not b!5377274) (not b!5376668) (not bm!385068) (not d!1721085) (not b!5377358) (not b!5376521) (not b!5376902) (not b!5377365) (not d!1721215) (not b!5377194) (not b!5376985) (not b!5376515) (not d!1721223) (not b!5376428) (not d!1721091) (not d!1721221) (not b!5377375) (not b!5376522) (not d!1721011) (not b!5376842) (not b!5376600) (not b!5376993) (not bm!385065) (not d!1721253) (not b!5376770) (not b!5377339) (not bm!385035) (not d!1721195) (not bm!385042) (not b!5376930) (not d!1721141) (not b!5376426) (not b!5377064) (not b!5376595) (not bs!1245040) (not bm!384954) (not b!5377270) (not d!1721225) (not b!5377324) (not d!1721125) (not bs!1245037) (not b!5377341) (not b!5377067) (not b!5376432) (not d!1721167) (not b!5377019) (not d!1721109) (not b!5376751) (not bm!385064) (not b!5376743) (not b!5377195) (not b!5377017) (not d!1721263) (not b!5377015) (not b!5377186) (not b!5377040) (not d!1721051) (not d!1721159) (not bm!384964) (not b!5376671) (not b!5377072) (not d!1721157) (not d!1721003) (not d!1721019) (not b!5376669) (not d!1721121) (not b!5377366) (not d!1721127) (not b!5376580) (not b!5377028) (not b!5377215) (not b!5377359) (not bs!1245038) (not b!5376984) (not d!1721137) (not b!5377355) (not b!5377337) (not b!5377378) (not b!5377222) (not d!1721233) (not bm!385040) (not b_lambda!206025) (not b!5376923) (not b!5377379) (not d!1721267) (not b!5377348) (not bm!384970) (not b!5377338) (not d!1721043) tp_is_empty!39451 (not bm!384969) (not b!5376604) (not b!5377153) (not bs!1245039) (not d!1721115) (not b!5377065) (not bm!385039) (not d!1721249) (not b!5376744) (not d!1721251) (not b!5376593) (not b!5376968) (not d!1721039) (not b!5376983) (not bm!385023) (not d!1721173) (not b!5377159) (not b!5376599) (not b!5377371) (not b!5377158) (not b!5376501) (not d!1721163) (not b!5377154) (not bm!385038) (not b!5377218) (not b!5377267) (not d!1720997) (not d!1721275) (not d!1721219) (not b!5376748) (not b!5376526) (not bm!384967) (not b!5376845) (not b!5376676) (not b!5377224) (not bm!385020) (not setNonEmpty!34871) (not b!5377343) (not d!1721147) (not bm!385025) (not b!5376433) (not b!5376591) (not b!5377360) (not d!1721247) (not b!5376975) (not bm!384953) (not b!5376673) (not b!5377077) (not d!1721017) (not b!5376674) (not bm!384948) (not b!5376746) (not b!5377063) (not d!1720977) (not bm!385004) (not d!1721149) (not b_lambda!206021) (not d!1721015) (not b!5377217) (not d!1721231) (not b!5377272) (not b!5377220) (not d!1721273) (not b!5377155) (not b!5377373) (not b!5376920) (not d!1721097) (not b_lambda!206027) (not d!1721105) (not d!1721227) (not d!1721095) (not b!5376437) (not bm!385041) (not b!5376517) (not bm!384966) (not b!5376670) (not d!1720991) (not d!1721119) (not b!5377023) (not b!5376992) (not b!5377377) (not b!5377074) (not b!5376513) (not b!5377325) (not b!5377356) (not d!1721161) (not d!1721151) (not b!5376976) (not d!1721059) (not b!5376589) (not b!5376951) (not bm!385054) (not d!1721265) (not b!5377024) (not bm!385049) (not d!1721165) (not b!5376771) (not b!5376933) (not bm!385066) (not b!5376971) (not bm!385027) (not b!5377342) (not bm!384955) (not b!5376424) (not bm!385053) (not d!1721139) (not b!5377225) (not bm!385024) (not d!1721145) (not b!5377066) (not b_lambda!206023) (not b!5377161) (not b!5377275) (not b!5376502) (not b!5377268) (not b!5377374) (not b!5376982) (not d!1721009) (not b!5377069))
(check-sat)
