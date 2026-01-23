; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!632298 () Bool)

(assert start!632298)

(declare-fun b!6382401 () Bool)

(assert (=> b!6382401 true))

(assert (=> b!6382401 true))

(declare-fun lambda!352119 () Int)

(declare-fun lambda!352118 () Int)

(assert (=> b!6382401 (not (= lambda!352119 lambda!352118))))

(assert (=> b!6382401 true))

(assert (=> b!6382401 true))

(declare-fun b!6382410 () Bool)

(assert (=> b!6382410 true))

(declare-fun bs!1597335 () Bool)

(declare-fun b!6382397 () Bool)

(assert (= bs!1597335 (and b!6382397 b!6382401)))

(declare-fun lambda!352121 () Int)

(declare-datatypes ((C!32868 0))(
  ( (C!32869 (val!26136 Int)) )
))
(declare-datatypes ((Regex!16299 0))(
  ( (ElementMatch!16299 (c!1162920 C!32868)) (Concat!25144 (regOne!33110 Regex!16299) (regTwo!33110 Regex!16299)) (EmptyExpr!16299) (Star!16299 (reg!16628 Regex!16299)) (EmptyLang!16299) (Union!16299 (regOne!33111 Regex!16299) (regTwo!33111 Regex!16299)) )
))
(declare-fun lt!2370832 () Regex!16299)

(declare-fun r!7292 () Regex!16299)

(assert (=> bs!1597335 (= (= lt!2370832 (regOne!33110 r!7292)) (= lambda!352121 lambda!352118))))

(assert (=> bs!1597335 (not (= lambda!352121 lambda!352119))))

(assert (=> b!6382397 true))

(assert (=> b!6382397 true))

(assert (=> b!6382397 true))

(declare-fun b!6382379 () Bool)

(declare-fun e!3874281 () Bool)

(declare-fun tp_is_empty!41851 () Bool)

(declare-fun tp!1775966 () Bool)

(assert (=> b!6382379 (= e!3874281 (and tp_is_empty!41851 tp!1775966))))

(declare-fun e!3874286 () Bool)

(declare-fun b!6382380 () Bool)

(declare-fun tp!1775964 () Bool)

(declare-fun e!3874280 () Bool)

(declare-datatypes ((List!65196 0))(
  ( (Nil!65072) (Cons!65072 (h!71520 Regex!16299) (t!378800 List!65196)) )
))
(declare-datatypes ((Context!11366 0))(
  ( (Context!11367 (exprs!6183 List!65196)) )
))
(declare-datatypes ((List!65197 0))(
  ( (Nil!65073) (Cons!65073 (h!71521 Context!11366) (t!378801 List!65197)) )
))
(declare-fun zl!343 () List!65197)

(declare-fun inv!83994 (Context!11366) Bool)

(assert (=> b!6382380 (= e!3874286 (and (inv!83994 (h!71521 zl!343)) e!3874280 tp!1775964))))

(declare-fun b!6382381 () Bool)

(declare-fun e!3874288 () Bool)

(declare-fun tp!1775959 () Bool)

(assert (=> b!6382381 (= e!3874288 tp!1775959)))

(declare-fun b!6382382 () Bool)

(declare-fun e!3874289 () Bool)

(declare-fun validRegex!8035 (Regex!16299) Bool)

(assert (=> b!6382382 (= e!3874289 (validRegex!8035 (regTwo!33110 r!7292)))))

(declare-fun b!6382383 () Bool)

(declare-fun e!3874278 () Bool)

(declare-fun e!3874285 () Bool)

(assert (=> b!6382383 (= e!3874278 e!3874285)))

(declare-fun res!2625379 () Bool)

(assert (=> b!6382383 (=> res!2625379 e!3874285)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2370850 () (InoxSet Context!11366))

(declare-fun lt!2370829 () (InoxSet Context!11366))

(assert (=> b!6382383 (= res!2625379 (not (= lt!2370850 lt!2370829)))))

(declare-datatypes ((List!65198 0))(
  ( (Nil!65074) (Cons!65074 (h!71522 C!32868) (t!378802 List!65198)) )
))
(declare-fun s!2326 () List!65198)

(declare-fun lt!2370844 () Context!11366)

(declare-fun derivationStepZipperDown!1547 (Regex!16299 Context!11366 C!32868) (InoxSet Context!11366))

(assert (=> b!6382383 (= lt!2370829 (derivationStepZipperDown!1547 (reg!16628 (regOne!33110 r!7292)) lt!2370844 (h!71522 s!2326)))))

(declare-fun lt!2370836 () List!65196)

(assert (=> b!6382383 (= lt!2370844 (Context!11367 lt!2370836))))

(assert (=> b!6382383 (= lt!2370836 (Cons!65072 lt!2370832 (t!378800 (exprs!6183 (h!71521 zl!343)))))))

(assert (=> b!6382383 (= lt!2370832 (Star!16299 (reg!16628 (regOne!33110 r!7292))))))

(declare-fun b!6382384 () Bool)

(declare-fun res!2625372 () Bool)

(declare-fun e!3874279 () Bool)

(assert (=> b!6382384 (=> res!2625372 e!3874279)))

(declare-fun lt!2370837 () (InoxSet Context!11366))

(declare-fun lt!2370848 () (InoxSet Context!11366))

(declare-fun matchZipper!2311 ((InoxSet Context!11366) List!65198) Bool)

(assert (=> b!6382384 (= res!2625372 (not (= (matchZipper!2311 lt!2370848 s!2326) (matchZipper!2311 lt!2370837 (t!378802 s!2326)))))))

(declare-fun b!6382385 () Bool)

(declare-fun res!2625366 () Bool)

(assert (=> b!6382385 (=> res!2625366 e!3874279)))

(declare-fun lt!2370833 () Regex!16299)

(assert (=> b!6382385 (= res!2625366 (not (= lt!2370833 r!7292)))))

(declare-fun b!6382386 () Bool)

(declare-fun e!3874298 () Bool)

(declare-fun lt!2370856 () Bool)

(declare-fun lt!2370824 () Bool)

(assert (=> b!6382386 (= e!3874298 (or (not lt!2370856) lt!2370824))))

(declare-fun b!6382387 () Bool)

(assert (=> b!6382387 (= e!3874285 e!3874279)))

(declare-fun res!2625392 () Bool)

(assert (=> b!6382387 (=> res!2625392 e!3874279)))

(assert (=> b!6382387 (= res!2625392 (not (= lt!2370837 lt!2370829)))))

(declare-fun lt!2370826 () Context!11366)

(declare-fun lambda!352120 () Int)

(declare-fun flatMap!1804 ((InoxSet Context!11366) Int) (InoxSet Context!11366))

(declare-fun derivationStepZipperUp!1473 (Context!11366 C!32868) (InoxSet Context!11366))

(assert (=> b!6382387 (= (flatMap!1804 lt!2370848 lambda!352120) (derivationStepZipperUp!1473 lt!2370826 (h!71522 s!2326)))))

(declare-datatypes ((Unit!158527 0))(
  ( (Unit!158528) )
))
(declare-fun lt!2370830 () Unit!158527)

(declare-fun lemmaFlatMapOnSingletonSet!1330 ((InoxSet Context!11366) Context!11366 Int) Unit!158527)

(assert (=> b!6382387 (= lt!2370830 (lemmaFlatMapOnSingletonSet!1330 lt!2370848 lt!2370826 lambda!352120))))

(declare-fun lt!2370834 () (InoxSet Context!11366))

(assert (=> b!6382387 (= lt!2370834 (derivationStepZipperUp!1473 lt!2370826 (h!71522 s!2326)))))

(declare-fun derivationStepZipper!2265 ((InoxSet Context!11366) C!32868) (InoxSet Context!11366))

(assert (=> b!6382387 (= lt!2370837 (derivationStepZipper!2265 lt!2370848 (h!71522 s!2326)))))

(assert (=> b!6382387 (= lt!2370848 (store ((as const (Array Context!11366 Bool)) false) lt!2370826 true))))

(assert (=> b!6382387 (= lt!2370826 (Context!11367 (Cons!65072 (reg!16628 (regOne!33110 r!7292)) lt!2370836)))))

(declare-fun b!6382388 () Bool)

(declare-fun e!3874296 () Bool)

(declare-fun lt!2370840 () (InoxSet Context!11366))

(assert (=> b!6382388 (= e!3874296 (matchZipper!2311 lt!2370840 (t!378802 s!2326)))))

(declare-fun res!2625376 () Bool)

(declare-fun e!3874284 () Bool)

(assert (=> start!632298 (=> (not res!2625376) (not e!3874284))))

(assert (=> start!632298 (= res!2625376 (validRegex!8035 r!7292))))

(assert (=> start!632298 e!3874284))

(assert (=> start!632298 e!3874288))

(declare-fun condSetEmpty!43568 () Bool)

(declare-fun z!1189 () (InoxSet Context!11366))

(assert (=> start!632298 (= condSetEmpty!43568 (= z!1189 ((as const (Array Context!11366 Bool)) false)))))

(declare-fun setRes!43568 () Bool)

(assert (=> start!632298 setRes!43568))

(assert (=> start!632298 e!3874286))

(assert (=> start!632298 e!3874281))

(declare-fun b!6382389 () Bool)

(assert (=> b!6382389 (= e!3874288 tp_is_empty!41851)))

(declare-fun b!6382390 () Bool)

(declare-fun e!3874293 () Unit!158527)

(declare-fun Unit!158529 () Unit!158527)

(assert (=> b!6382390 (= e!3874293 Unit!158529)))

(declare-fun b!6382391 () Bool)

(declare-fun res!2625368 () Bool)

(declare-fun e!3874282 () Bool)

(assert (=> b!6382391 (=> res!2625368 e!3874282)))

(declare-fun isEmpty!37203 (List!65196) Bool)

(assert (=> b!6382391 (= res!2625368 (isEmpty!37203 (t!378800 (exprs!6183 (h!71521 zl!343)))))))

(declare-fun setIsEmpty!43568 () Bool)

(assert (=> setIsEmpty!43568 setRes!43568))

(declare-fun b!6382392 () Bool)

(declare-fun res!2625378 () Bool)

(assert (=> b!6382392 (=> res!2625378 e!3874278)))

(get-info :version)

(assert (=> b!6382392 (= res!2625378 (or ((_ is Concat!25144) (regOne!33110 r!7292)) (not ((_ is Star!16299) (regOne!33110 r!7292)))))))

(declare-fun b!6382393 () Bool)

(declare-fun tp!1775963 () Bool)

(declare-fun tp!1775965 () Bool)

(assert (=> b!6382393 (= e!3874288 (and tp!1775963 tp!1775965))))

(declare-fun b!6382394 () Bool)

(declare-fun e!3874295 () Bool)

(declare-fun e!3874297 () Bool)

(assert (=> b!6382394 (= e!3874295 e!3874297)))

(declare-fun res!2625377 () Bool)

(assert (=> b!6382394 (=> res!2625377 e!3874297)))

(declare-fun lt!2370846 () Regex!16299)

(declare-fun unfocusZipper!2041 (List!65197) Regex!16299)

(assert (=> b!6382394 (= res!2625377 (not (= (unfocusZipper!2041 (Cons!65073 lt!2370826 Nil!65073)) lt!2370846)))))

(declare-fun lt!2370842 () Regex!16299)

(assert (=> b!6382394 (= lt!2370846 (Concat!25144 (reg!16628 (regOne!33110 r!7292)) lt!2370842))))

(declare-fun b!6382395 () Bool)

(declare-fun e!3874287 () Bool)

(declare-fun e!3874290 () Bool)

(assert (=> b!6382395 (= e!3874287 e!3874290)))

(declare-fun res!2625386 () Bool)

(assert (=> b!6382395 (=> res!2625386 e!3874290)))

(assert (=> b!6382395 (= res!2625386 (not lt!2370856))))

(assert (=> b!6382395 e!3874298))

(declare-fun res!2625373 () Bool)

(assert (=> b!6382395 (=> (not res!2625373) (not e!3874298))))

(declare-fun matchR!8482 (Regex!16299 List!65198) Bool)

(declare-fun matchRSpec!3400 (Regex!16299 List!65198) Bool)

(assert (=> b!6382395 (= res!2625373 (= (matchR!8482 lt!2370846 s!2326) (matchRSpec!3400 lt!2370846 s!2326)))))

(declare-fun lt!2370849 () Unit!158527)

(declare-fun mainMatchTheorem!3400 (Regex!16299 List!65198) Unit!158527)

(assert (=> b!6382395 (= lt!2370849 (mainMatchTheorem!3400 lt!2370846 s!2326))))

(declare-fun b!6382396 () Bool)

(declare-fun res!2625383 () Bool)

(declare-fun e!3874283 () Bool)

(assert (=> b!6382396 (=> res!2625383 e!3874283)))

(declare-fun generalisedConcat!1896 (List!65196) Regex!16299)

(assert (=> b!6382396 (= res!2625383 (not (= r!7292 (generalisedConcat!1896 (exprs!6183 (h!71521 zl!343))))))))

(assert (=> b!6382397 (= e!3874290 e!3874289)))

(declare-fun res!2625369 () Bool)

(assert (=> b!6382397 (=> res!2625369 e!3874289)))

(assert (=> b!6382397 (= res!2625369 (not (validRegex!8035 lt!2370832)))))

(declare-datatypes ((tuple2!66556 0))(
  ( (tuple2!66557 (_1!36581 List!65198) (_2!36581 List!65198)) )
))
(declare-datatypes ((Option!16190 0))(
  ( (None!16189) (Some!16189 (v!52358 tuple2!66556)) )
))
(declare-fun isDefined!12893 (Option!16190) Bool)

(declare-fun findConcatSeparation!2604 (Regex!16299 Regex!16299 List!65198 List!65198 List!65198) Option!16190)

(declare-fun Exists!3369 (Int) Bool)

(assert (=> b!6382397 (= (isDefined!12893 (findConcatSeparation!2604 lt!2370832 (regTwo!33110 r!7292) Nil!65074 s!2326 s!2326)) (Exists!3369 lambda!352121))))

(declare-fun lt!2370854 () Unit!158527)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2368 (Regex!16299 Regex!16299 List!65198) Unit!158527)

(assert (=> b!6382397 (= lt!2370854 (lemmaFindConcatSeparationEquivalentToExists!2368 lt!2370832 (regTwo!33110 r!7292) s!2326))))

(declare-fun b!6382398 () Bool)

(declare-fun e!3874291 () Bool)

(assert (=> b!6382398 (= e!3874291 (not e!3874283))))

(declare-fun res!2625367 () Bool)

(assert (=> b!6382398 (=> res!2625367 e!3874283)))

(assert (=> b!6382398 (= res!2625367 (not ((_ is Cons!65073) zl!343)))))

(assert (=> b!6382398 (= lt!2370856 lt!2370824)))

(assert (=> b!6382398 (= lt!2370824 (matchRSpec!3400 r!7292 s!2326))))

(assert (=> b!6382398 (= lt!2370856 (matchR!8482 r!7292 s!2326))))

(declare-fun lt!2370843 () Unit!158527)

(assert (=> b!6382398 (= lt!2370843 (mainMatchTheorem!3400 r!7292 s!2326))))

(declare-fun b!6382399 () Bool)

(assert (=> b!6382399 (= e!3874279 e!3874295)))

(declare-fun res!2625390 () Bool)

(assert (=> b!6382399 (=> res!2625390 e!3874295)))

(assert (=> b!6382399 (= res!2625390 (not (= r!7292 lt!2370842)))))

(assert (=> b!6382399 (= lt!2370842 (Concat!25144 lt!2370832 (regTwo!33110 r!7292)))))

(declare-fun b!6382400 () Bool)

(assert (=> b!6382400 (= e!3874297 e!3874287)))

(declare-fun res!2625382 () Bool)

(assert (=> b!6382400 (=> res!2625382 e!3874287)))

(declare-fun lt!2370847 () Context!11366)

(assert (=> b!6382400 (= res!2625382 (not (= (unfocusZipper!2041 (Cons!65073 lt!2370847 Nil!65073)) (reg!16628 (regOne!33110 r!7292)))))))

(declare-fun lt!2370825 () (InoxSet Context!11366))

(assert (=> b!6382400 (= (flatMap!1804 lt!2370825 lambda!352120) (derivationStepZipperUp!1473 lt!2370844 (h!71522 s!2326)))))

(declare-fun lt!2370835 () Unit!158527)

(assert (=> b!6382400 (= lt!2370835 (lemmaFlatMapOnSingletonSet!1330 lt!2370825 lt!2370844 lambda!352120))))

(declare-fun lt!2370851 () (InoxSet Context!11366))

(assert (=> b!6382400 (= (flatMap!1804 lt!2370851 lambda!352120) (derivationStepZipperUp!1473 lt!2370847 (h!71522 s!2326)))))

(declare-fun lt!2370855 () Unit!158527)

(assert (=> b!6382400 (= lt!2370855 (lemmaFlatMapOnSingletonSet!1330 lt!2370851 lt!2370847 lambda!352120))))

(declare-fun lt!2370828 () (InoxSet Context!11366))

(assert (=> b!6382400 (= lt!2370828 (derivationStepZipperUp!1473 lt!2370844 (h!71522 s!2326)))))

(declare-fun lt!2370839 () (InoxSet Context!11366))

(assert (=> b!6382400 (= lt!2370839 (derivationStepZipperUp!1473 lt!2370847 (h!71522 s!2326)))))

(assert (=> b!6382400 (= lt!2370825 (store ((as const (Array Context!11366 Bool)) false) lt!2370844 true))))

(assert (=> b!6382400 (= lt!2370851 (store ((as const (Array Context!11366 Bool)) false) lt!2370847 true))))

(assert (=> b!6382400 (= lt!2370847 (Context!11367 (Cons!65072 (reg!16628 (regOne!33110 r!7292)) Nil!65072)))))

(assert (=> b!6382401 (= e!3874283 e!3874282)))

(declare-fun res!2625381 () Bool)

(assert (=> b!6382401 (=> res!2625381 e!3874282)))

(declare-fun lt!2370823 () Bool)

(assert (=> b!6382401 (= res!2625381 (or (not (= lt!2370856 lt!2370823)) ((_ is Nil!65074) s!2326)))))

(assert (=> b!6382401 (= (Exists!3369 lambda!352118) (Exists!3369 lambda!352119))))

(declare-fun lt!2370841 () Unit!158527)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1906 (Regex!16299 Regex!16299 List!65198) Unit!158527)

(assert (=> b!6382401 (= lt!2370841 (lemmaExistCutMatchRandMatchRSpecEquivalent!1906 (regOne!33110 r!7292) (regTwo!33110 r!7292) s!2326))))

(assert (=> b!6382401 (= lt!2370823 (Exists!3369 lambda!352118))))

(assert (=> b!6382401 (= lt!2370823 (isDefined!12893 (findConcatSeparation!2604 (regOne!33110 r!7292) (regTwo!33110 r!7292) Nil!65074 s!2326 s!2326)))))

(declare-fun lt!2370827 () Unit!158527)

(assert (=> b!6382401 (= lt!2370827 (lemmaFindConcatSeparationEquivalentToExists!2368 (regOne!33110 r!7292) (regTwo!33110 r!7292) s!2326))))

(declare-fun b!6382402 () Bool)

(declare-fun tp!1775957 () Bool)

(assert (=> b!6382402 (= e!3874280 tp!1775957)))

(declare-fun b!6382403 () Bool)

(declare-fun res!2625371 () Bool)

(assert (=> b!6382403 (=> res!2625371 e!3874283)))

(assert (=> b!6382403 (= res!2625371 (not ((_ is Cons!65072) (exprs!6183 (h!71521 zl!343)))))))

(declare-fun b!6382404 () Bool)

(declare-fun Unit!158530 () Unit!158527)

(assert (=> b!6382404 (= e!3874293 Unit!158530)))

(declare-fun lt!2370838 () Unit!158527)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1130 ((InoxSet Context!11366) (InoxSet Context!11366) List!65198) Unit!158527)

(assert (=> b!6382404 (= lt!2370838 (lemmaZipperConcatMatchesSameAsBothZippers!1130 lt!2370850 lt!2370840 (t!378802 s!2326)))))

(declare-fun res!2625387 () Bool)

(assert (=> b!6382404 (= res!2625387 (matchZipper!2311 lt!2370850 (t!378802 s!2326)))))

(assert (=> b!6382404 (=> res!2625387 e!3874296)))

(assert (=> b!6382404 (= (matchZipper!2311 ((_ map or) lt!2370850 lt!2370840) (t!378802 s!2326)) e!3874296)))

(declare-fun b!6382405 () Bool)

(declare-fun e!3874292 () Bool)

(declare-fun nullable!6292 (Regex!16299) Bool)

(assert (=> b!6382405 (= e!3874292 (nullable!6292 (regOne!33110 (regOne!33110 r!7292))))))

(declare-fun b!6382406 () Bool)

(declare-fun res!2625388 () Bool)

(assert (=> b!6382406 (=> res!2625388 e!3874283)))

(declare-fun isEmpty!37204 (List!65197) Bool)

(assert (=> b!6382406 (= res!2625388 (not (isEmpty!37204 (t!378801 zl!343))))))

(declare-fun b!6382407 () Bool)

(assert (=> b!6382407 (= e!3874284 e!3874291)))

(declare-fun res!2625384 () Bool)

(assert (=> b!6382407 (=> (not res!2625384) (not e!3874291))))

(assert (=> b!6382407 (= res!2625384 (= r!7292 lt!2370833))))

(assert (=> b!6382407 (= lt!2370833 (unfocusZipper!2041 zl!343))))

(declare-fun b!6382408 () Bool)

(declare-fun res!2625380 () Bool)

(assert (=> b!6382408 (=> res!2625380 e!3874283)))

(assert (=> b!6382408 (= res!2625380 (or ((_ is EmptyExpr!16299) r!7292) ((_ is EmptyLang!16299) r!7292) ((_ is ElementMatch!16299) r!7292) ((_ is Union!16299) r!7292) (not ((_ is Concat!25144) r!7292))))))

(declare-fun b!6382409 () Bool)

(declare-fun res!2625385 () Bool)

(assert (=> b!6382409 (=> res!2625385 e!3874278)))

(assert (=> b!6382409 (= res!2625385 e!3874292)))

(declare-fun res!2625370 () Bool)

(assert (=> b!6382409 (=> (not res!2625370) (not e!3874292))))

(assert (=> b!6382409 (= res!2625370 ((_ is Concat!25144) (regOne!33110 r!7292)))))

(assert (=> b!6382410 (= e!3874282 e!3874278)))

(declare-fun res!2625374 () Bool)

(assert (=> b!6382410 (=> res!2625374 e!3874278)))

(assert (=> b!6382410 (= res!2625374 (or (and ((_ is ElementMatch!16299) (regOne!33110 r!7292)) (= (c!1162920 (regOne!33110 r!7292)) (h!71522 s!2326))) ((_ is Union!16299) (regOne!33110 r!7292))))))

(declare-fun lt!2370831 () Unit!158527)

(assert (=> b!6382410 (= lt!2370831 e!3874293)))

(declare-fun c!1162919 () Bool)

(assert (=> b!6382410 (= c!1162919 (nullable!6292 (h!71520 (exprs!6183 (h!71521 zl!343)))))))

(assert (=> b!6382410 (= (flatMap!1804 z!1189 lambda!352120) (derivationStepZipperUp!1473 (h!71521 zl!343) (h!71522 s!2326)))))

(declare-fun lt!2370853 () Unit!158527)

(assert (=> b!6382410 (= lt!2370853 (lemmaFlatMapOnSingletonSet!1330 z!1189 (h!71521 zl!343) lambda!352120))))

(declare-fun lt!2370852 () Context!11366)

(assert (=> b!6382410 (= lt!2370840 (derivationStepZipperUp!1473 lt!2370852 (h!71522 s!2326)))))

(assert (=> b!6382410 (= lt!2370850 (derivationStepZipperDown!1547 (h!71520 (exprs!6183 (h!71521 zl!343))) lt!2370852 (h!71522 s!2326)))))

(assert (=> b!6382410 (= lt!2370852 (Context!11367 (t!378800 (exprs!6183 (h!71521 zl!343)))))))

(declare-fun lt!2370845 () (InoxSet Context!11366))

(assert (=> b!6382410 (= lt!2370845 (derivationStepZipperUp!1473 (Context!11367 (Cons!65072 (h!71520 (exprs!6183 (h!71521 zl!343))) (t!378800 (exprs!6183 (h!71521 zl!343))))) (h!71522 s!2326)))))

(declare-fun tp!1775961 () Bool)

(declare-fun setNonEmpty!43568 () Bool)

(declare-fun setElem!43568 () Context!11366)

(declare-fun e!3874294 () Bool)

(assert (=> setNonEmpty!43568 (= setRes!43568 (and tp!1775961 (inv!83994 setElem!43568) e!3874294))))

(declare-fun setRest!43568 () (InoxSet Context!11366))

(assert (=> setNonEmpty!43568 (= z!1189 ((_ map or) (store ((as const (Array Context!11366 Bool)) false) setElem!43568 true) setRest!43568))))

(declare-fun b!6382411 () Bool)

(declare-fun res!2625391 () Bool)

(assert (=> b!6382411 (=> res!2625391 e!3874287)))

(assert (=> b!6382411 (= res!2625391 (not (= (unfocusZipper!2041 (Cons!65073 lt!2370844 Nil!65073)) lt!2370842)))))

(declare-fun b!6382412 () Bool)

(declare-fun tp!1775958 () Bool)

(declare-fun tp!1775962 () Bool)

(assert (=> b!6382412 (= e!3874288 (and tp!1775958 tp!1775962))))

(declare-fun b!6382413 () Bool)

(declare-fun res!2625375 () Bool)

(assert (=> b!6382413 (=> res!2625375 e!3874283)))

(declare-fun generalisedUnion!2143 (List!65196) Regex!16299)

(declare-fun unfocusZipperList!1720 (List!65197) List!65196)

(assert (=> b!6382413 (= res!2625375 (not (= r!7292 (generalisedUnion!2143 (unfocusZipperList!1720 zl!343)))))))

(declare-fun b!6382414 () Bool)

(declare-fun res!2625389 () Bool)

(assert (=> b!6382414 (=> (not res!2625389) (not e!3874284))))

(declare-fun toList!10083 ((InoxSet Context!11366)) List!65197)

(assert (=> b!6382414 (= res!2625389 (= (toList!10083 z!1189) zl!343))))

(declare-fun b!6382415 () Bool)

(declare-fun tp!1775960 () Bool)

(assert (=> b!6382415 (= e!3874294 tp!1775960)))

(assert (= (and start!632298 res!2625376) b!6382414))

(assert (= (and b!6382414 res!2625389) b!6382407))

(assert (= (and b!6382407 res!2625384) b!6382398))

(assert (= (and b!6382398 (not res!2625367)) b!6382406))

(assert (= (and b!6382406 (not res!2625388)) b!6382396))

(assert (= (and b!6382396 (not res!2625383)) b!6382403))

(assert (= (and b!6382403 (not res!2625371)) b!6382413))

(assert (= (and b!6382413 (not res!2625375)) b!6382408))

(assert (= (and b!6382408 (not res!2625380)) b!6382401))

(assert (= (and b!6382401 (not res!2625381)) b!6382391))

(assert (= (and b!6382391 (not res!2625368)) b!6382410))

(assert (= (and b!6382410 c!1162919) b!6382404))

(assert (= (and b!6382410 (not c!1162919)) b!6382390))

(assert (= (and b!6382404 (not res!2625387)) b!6382388))

(assert (= (and b!6382410 (not res!2625374)) b!6382409))

(assert (= (and b!6382409 res!2625370) b!6382405))

(assert (= (and b!6382409 (not res!2625385)) b!6382392))

(assert (= (and b!6382392 (not res!2625378)) b!6382383))

(assert (= (and b!6382383 (not res!2625379)) b!6382387))

(assert (= (and b!6382387 (not res!2625392)) b!6382384))

(assert (= (and b!6382384 (not res!2625372)) b!6382385))

(assert (= (and b!6382385 (not res!2625366)) b!6382399))

(assert (= (and b!6382399 (not res!2625390)) b!6382394))

(assert (= (and b!6382394 (not res!2625377)) b!6382400))

(assert (= (and b!6382400 (not res!2625382)) b!6382411))

(assert (= (and b!6382411 (not res!2625391)) b!6382395))

(assert (= (and b!6382395 res!2625373) b!6382386))

(assert (= (and b!6382395 (not res!2625386)) b!6382397))

(assert (= (and b!6382397 (not res!2625369)) b!6382382))

(assert (= (and start!632298 ((_ is ElementMatch!16299) r!7292)) b!6382389))

(assert (= (and start!632298 ((_ is Concat!25144) r!7292)) b!6382412))

(assert (= (and start!632298 ((_ is Star!16299) r!7292)) b!6382381))

(assert (= (and start!632298 ((_ is Union!16299) r!7292)) b!6382393))

(assert (= (and start!632298 condSetEmpty!43568) setIsEmpty!43568))

(assert (= (and start!632298 (not condSetEmpty!43568)) setNonEmpty!43568))

(assert (= setNonEmpty!43568 b!6382415))

(assert (= b!6382380 b!6382402))

(assert (= (and start!632298 ((_ is Cons!65073) zl!343)) b!6382380))

(assert (= (and start!632298 ((_ is Cons!65074) s!2326)) b!6382379))

(declare-fun m!7182446 () Bool)

(assert (=> b!6382396 m!7182446))

(declare-fun m!7182448 () Bool)

(assert (=> b!6382406 m!7182448))

(declare-fun m!7182450 () Bool)

(assert (=> b!6382384 m!7182450))

(declare-fun m!7182452 () Bool)

(assert (=> b!6382384 m!7182452))

(declare-fun m!7182454 () Bool)

(assert (=> b!6382388 m!7182454))

(declare-fun m!7182456 () Bool)

(assert (=> b!6382395 m!7182456))

(declare-fun m!7182458 () Bool)

(assert (=> b!6382395 m!7182458))

(declare-fun m!7182460 () Bool)

(assert (=> b!6382395 m!7182460))

(declare-fun m!7182462 () Bool)

(assert (=> b!6382400 m!7182462))

(declare-fun m!7182464 () Bool)

(assert (=> b!6382400 m!7182464))

(declare-fun m!7182466 () Bool)

(assert (=> b!6382400 m!7182466))

(declare-fun m!7182468 () Bool)

(assert (=> b!6382400 m!7182468))

(declare-fun m!7182470 () Bool)

(assert (=> b!6382400 m!7182470))

(declare-fun m!7182472 () Bool)

(assert (=> b!6382400 m!7182472))

(declare-fun m!7182474 () Bool)

(assert (=> b!6382400 m!7182474))

(declare-fun m!7182476 () Bool)

(assert (=> b!6382400 m!7182476))

(declare-fun m!7182478 () Bool)

(assert (=> b!6382400 m!7182478))

(declare-fun m!7182480 () Bool)

(assert (=> b!6382414 m!7182480))

(declare-fun m!7182482 () Bool)

(assert (=> b!6382383 m!7182482))

(declare-fun m!7182484 () Bool)

(assert (=> b!6382397 m!7182484))

(declare-fun m!7182486 () Bool)

(assert (=> b!6382397 m!7182486))

(declare-fun m!7182488 () Bool)

(assert (=> b!6382397 m!7182488))

(assert (=> b!6382397 m!7182484))

(declare-fun m!7182490 () Bool)

(assert (=> b!6382397 m!7182490))

(declare-fun m!7182492 () Bool)

(assert (=> b!6382397 m!7182492))

(declare-fun m!7182494 () Bool)

(assert (=> b!6382380 m!7182494))

(declare-fun m!7182496 () Bool)

(assert (=> b!6382401 m!7182496))

(declare-fun m!7182498 () Bool)

(assert (=> b!6382401 m!7182498))

(declare-fun m!7182500 () Bool)

(assert (=> b!6382401 m!7182500))

(declare-fun m!7182502 () Bool)

(assert (=> b!6382401 m!7182502))

(assert (=> b!6382401 m!7182496))

(declare-fun m!7182504 () Bool)

(assert (=> b!6382401 m!7182504))

(assert (=> b!6382401 m!7182500))

(declare-fun m!7182506 () Bool)

(assert (=> b!6382401 m!7182506))

(declare-fun m!7182508 () Bool)

(assert (=> b!6382382 m!7182508))

(declare-fun m!7182510 () Bool)

(assert (=> b!6382407 m!7182510))

(declare-fun m!7182512 () Bool)

(assert (=> b!6382411 m!7182512))

(declare-fun m!7182514 () Bool)

(assert (=> b!6382391 m!7182514))

(declare-fun m!7182516 () Bool)

(assert (=> start!632298 m!7182516))

(declare-fun m!7182518 () Bool)

(assert (=> b!6382410 m!7182518))

(declare-fun m!7182520 () Bool)

(assert (=> b!6382410 m!7182520))

(declare-fun m!7182522 () Bool)

(assert (=> b!6382410 m!7182522))

(declare-fun m!7182524 () Bool)

(assert (=> b!6382410 m!7182524))

(declare-fun m!7182526 () Bool)

(assert (=> b!6382410 m!7182526))

(declare-fun m!7182528 () Bool)

(assert (=> b!6382410 m!7182528))

(declare-fun m!7182530 () Bool)

(assert (=> b!6382410 m!7182530))

(declare-fun m!7182532 () Bool)

(assert (=> b!6382404 m!7182532))

(declare-fun m!7182534 () Bool)

(assert (=> b!6382404 m!7182534))

(declare-fun m!7182536 () Bool)

(assert (=> b!6382404 m!7182536))

(declare-fun m!7182538 () Bool)

(assert (=> b!6382398 m!7182538))

(declare-fun m!7182540 () Bool)

(assert (=> b!6382398 m!7182540))

(declare-fun m!7182542 () Bool)

(assert (=> b!6382398 m!7182542))

(declare-fun m!7182544 () Bool)

(assert (=> b!6382405 m!7182544))

(declare-fun m!7182546 () Bool)

(assert (=> setNonEmpty!43568 m!7182546))

(declare-fun m!7182548 () Bool)

(assert (=> b!6382387 m!7182548))

(declare-fun m!7182550 () Bool)

(assert (=> b!6382387 m!7182550))

(declare-fun m!7182552 () Bool)

(assert (=> b!6382387 m!7182552))

(declare-fun m!7182554 () Bool)

(assert (=> b!6382387 m!7182554))

(declare-fun m!7182556 () Bool)

(assert (=> b!6382387 m!7182556))

(declare-fun m!7182558 () Bool)

(assert (=> b!6382394 m!7182558))

(declare-fun m!7182560 () Bool)

(assert (=> b!6382413 m!7182560))

(assert (=> b!6382413 m!7182560))

(declare-fun m!7182562 () Bool)

(assert (=> b!6382413 m!7182562))

(check-sat (not setNonEmpty!43568) (not b!6382379) (not b!6382405) (not b!6382393) (not b!6382404) (not b!6382396) (not b!6382414) (not b!6382401) (not b!6382413) (not b!6382383) (not b!6382388) (not b!6382407) (not b!6382415) (not b!6382400) (not start!632298) (not b!6382382) (not b!6382391) tp_is_empty!41851 (not b!6382397) (not b!6382402) (not b!6382410) (not b!6382395) (not b!6382398) (not b!6382384) (not b!6382387) (not b!6382406) (not b!6382380) (not b!6382394) (not b!6382412) (not b!6382411) (not b!6382381))
(check-sat)
(get-model)

(declare-fun d!2001003 () Bool)

(declare-fun nullableFct!2238 (Regex!16299) Bool)

(assert (=> d!2001003 (= (nullable!6292 (regOne!33110 (regOne!33110 r!7292))) (nullableFct!2238 (regOne!33110 (regOne!33110 r!7292))))))

(declare-fun bs!1597344 () Bool)

(assert (= bs!1597344 d!2001003))

(declare-fun m!7182632 () Bool)

(assert (=> bs!1597344 m!7182632))

(assert (=> b!6382405 d!2001003))

(declare-fun d!2001005 () Bool)

(declare-fun lt!2370868 () Regex!16299)

(assert (=> d!2001005 (validRegex!8035 lt!2370868)))

(assert (=> d!2001005 (= lt!2370868 (generalisedUnion!2143 (unfocusZipperList!1720 zl!343)))))

(assert (=> d!2001005 (= (unfocusZipper!2041 zl!343) lt!2370868)))

(declare-fun bs!1597345 () Bool)

(assert (= bs!1597345 d!2001005))

(declare-fun m!7182634 () Bool)

(assert (=> bs!1597345 m!7182634))

(assert (=> bs!1597345 m!7182560))

(assert (=> bs!1597345 m!7182560))

(assert (=> bs!1597345 m!7182562))

(assert (=> b!6382407 d!2001005))

(declare-fun d!2001007 () Bool)

(assert (=> d!2001007 (= (isEmpty!37204 (t!378801 zl!343)) ((_ is Nil!65073) (t!378801 zl!343)))))

(assert (=> b!6382406 d!2001007))

(declare-fun d!2001009 () Bool)

(declare-fun c!1162967 () Bool)

(declare-fun isEmpty!37205 (List!65198) Bool)

(assert (=> d!2001009 (= c!1162967 (isEmpty!37205 (t!378802 s!2326)))))

(declare-fun e!3874386 () Bool)

(assert (=> d!2001009 (= (matchZipper!2311 lt!2370840 (t!378802 s!2326)) e!3874386)))

(declare-fun b!6382561 () Bool)

(declare-fun nullableZipper!2063 ((InoxSet Context!11366)) Bool)

(assert (=> b!6382561 (= e!3874386 (nullableZipper!2063 lt!2370840))))

(declare-fun b!6382562 () Bool)

(declare-fun head!13087 (List!65198) C!32868)

(declare-fun tail!12172 (List!65198) List!65198)

(assert (=> b!6382562 (= e!3874386 (matchZipper!2311 (derivationStepZipper!2265 lt!2370840 (head!13087 (t!378802 s!2326))) (tail!12172 (t!378802 s!2326))))))

(assert (= (and d!2001009 c!1162967) b!6382561))

(assert (= (and d!2001009 (not c!1162967)) b!6382562))

(declare-fun m!7182668 () Bool)

(assert (=> d!2001009 m!7182668))

(declare-fun m!7182670 () Bool)

(assert (=> b!6382561 m!7182670))

(declare-fun m!7182672 () Bool)

(assert (=> b!6382562 m!7182672))

(assert (=> b!6382562 m!7182672))

(declare-fun m!7182674 () Bool)

(assert (=> b!6382562 m!7182674))

(declare-fun m!7182676 () Bool)

(assert (=> b!6382562 m!7182676))

(assert (=> b!6382562 m!7182674))

(assert (=> b!6382562 m!7182676))

(declare-fun m!7182678 () Bool)

(assert (=> b!6382562 m!7182678))

(assert (=> b!6382388 d!2001009))

(declare-fun d!2001019 () Bool)

(declare-fun choose!47483 ((InoxSet Context!11366) Int) (InoxSet Context!11366))

(assert (=> d!2001019 (= (flatMap!1804 lt!2370848 lambda!352120) (choose!47483 lt!2370848 lambda!352120))))

(declare-fun bs!1597348 () Bool)

(assert (= bs!1597348 d!2001019))

(declare-fun m!7182680 () Bool)

(assert (=> bs!1597348 m!7182680))

(assert (=> b!6382387 d!2001019))

(declare-fun b!6382587 () Bool)

(declare-fun e!3874403 () Bool)

(assert (=> b!6382587 (= e!3874403 (nullable!6292 (h!71520 (exprs!6183 lt!2370826))))))

(declare-fun b!6382588 () Bool)

(declare-fun e!3874401 () (InoxSet Context!11366))

(assert (=> b!6382588 (= e!3874401 ((as const (Array Context!11366 Bool)) false))))

(declare-fun bm!545441 () Bool)

(declare-fun call!545446 () (InoxSet Context!11366))

(assert (=> bm!545441 (= call!545446 (derivationStepZipperDown!1547 (h!71520 (exprs!6183 lt!2370826)) (Context!11367 (t!378800 (exprs!6183 lt!2370826))) (h!71522 s!2326)))))

(declare-fun b!6382589 () Bool)

(declare-fun e!3874402 () (InoxSet Context!11366))

(assert (=> b!6382589 (= e!3874402 e!3874401)))

(declare-fun c!1162976 () Bool)

(assert (=> b!6382589 (= c!1162976 ((_ is Cons!65072) (exprs!6183 lt!2370826)))))

(declare-fun b!6382590 () Bool)

(assert (=> b!6382590 (= e!3874401 call!545446)))

(declare-fun b!6382591 () Bool)

(assert (=> b!6382591 (= e!3874402 ((_ map or) call!545446 (derivationStepZipperUp!1473 (Context!11367 (t!378800 (exprs!6183 lt!2370826))) (h!71522 s!2326))))))

(declare-fun d!2001021 () Bool)

(declare-fun c!1162977 () Bool)

(assert (=> d!2001021 (= c!1162977 e!3874403)))

(declare-fun res!2625448 () Bool)

(assert (=> d!2001021 (=> (not res!2625448) (not e!3874403))))

(assert (=> d!2001021 (= res!2625448 ((_ is Cons!65072) (exprs!6183 lt!2370826)))))

(assert (=> d!2001021 (= (derivationStepZipperUp!1473 lt!2370826 (h!71522 s!2326)) e!3874402)))

(assert (= (and d!2001021 res!2625448) b!6382587))

(assert (= (and d!2001021 c!1162977) b!6382591))

(assert (= (and d!2001021 (not c!1162977)) b!6382589))

(assert (= (and b!6382589 c!1162976) b!6382590))

(assert (= (and b!6382589 (not c!1162976)) b!6382588))

(assert (= (or b!6382591 b!6382590) bm!545441))

(declare-fun m!7182716 () Bool)

(assert (=> b!6382587 m!7182716))

(declare-fun m!7182718 () Bool)

(assert (=> bm!545441 m!7182718))

(declare-fun m!7182720 () Bool)

(assert (=> b!6382591 m!7182720))

(assert (=> b!6382387 d!2001021))

(declare-fun d!2001039 () Bool)

(declare-fun dynLambda!25817 (Int Context!11366) (InoxSet Context!11366))

(assert (=> d!2001039 (= (flatMap!1804 lt!2370848 lambda!352120) (dynLambda!25817 lambda!352120 lt!2370826))))

(declare-fun lt!2370889 () Unit!158527)

(declare-fun choose!47485 ((InoxSet Context!11366) Context!11366 Int) Unit!158527)

(assert (=> d!2001039 (= lt!2370889 (choose!47485 lt!2370848 lt!2370826 lambda!352120))))

(assert (=> d!2001039 (= lt!2370848 (store ((as const (Array Context!11366 Bool)) false) lt!2370826 true))))

(assert (=> d!2001039 (= (lemmaFlatMapOnSingletonSet!1330 lt!2370848 lt!2370826 lambda!352120) lt!2370889)))

(declare-fun b_lambda!242523 () Bool)

(assert (=> (not b_lambda!242523) (not d!2001039)))

(declare-fun bs!1597359 () Bool)

(assert (= bs!1597359 d!2001039))

(assert (=> bs!1597359 m!7182556))

(declare-fun m!7182722 () Bool)

(assert (=> bs!1597359 m!7182722))

(declare-fun m!7182726 () Bool)

(assert (=> bs!1597359 m!7182726))

(assert (=> bs!1597359 m!7182548))

(assert (=> b!6382387 d!2001039))

(declare-fun bs!1597361 () Bool)

(declare-fun d!2001041 () Bool)

(assert (= bs!1597361 (and d!2001041 b!6382410)))

(declare-fun lambda!352134 () Int)

(assert (=> bs!1597361 (= lambda!352134 lambda!352120)))

(assert (=> d!2001041 true))

(assert (=> d!2001041 (= (derivationStepZipper!2265 lt!2370848 (h!71522 s!2326)) (flatMap!1804 lt!2370848 lambda!352134))))

(declare-fun bs!1597362 () Bool)

(assert (= bs!1597362 d!2001041))

(declare-fun m!7182750 () Bool)

(assert (=> bs!1597362 m!7182750))

(assert (=> b!6382387 d!2001041))

(declare-fun d!2001047 () Bool)

(declare-fun lambda!352137 () Int)

(declare-fun forall!15477 (List!65196 Int) Bool)

(assert (=> d!2001047 (= (inv!83994 setElem!43568) (forall!15477 (exprs!6183 setElem!43568) lambda!352137))))

(declare-fun bs!1597363 () Bool)

(assert (= bs!1597363 d!2001047))

(declare-fun m!7182752 () Bool)

(assert (=> bs!1597363 m!7182752))

(assert (=> setNonEmpty!43568 d!2001047))

(declare-fun b!6382652 () Bool)

(declare-fun e!3874438 () Bool)

(assert (=> b!6382652 (= e!3874438 (nullable!6292 (h!71520 (exprs!6183 lt!2370852))))))

(declare-fun b!6382653 () Bool)

(declare-fun e!3874436 () (InoxSet Context!11366))

(assert (=> b!6382653 (= e!3874436 ((as const (Array Context!11366 Bool)) false))))

(declare-fun bm!545444 () Bool)

(declare-fun call!545449 () (InoxSet Context!11366))

(assert (=> bm!545444 (= call!545449 (derivationStepZipperDown!1547 (h!71520 (exprs!6183 lt!2370852)) (Context!11367 (t!378800 (exprs!6183 lt!2370852))) (h!71522 s!2326)))))

(declare-fun b!6382654 () Bool)

(declare-fun e!3874437 () (InoxSet Context!11366))

(assert (=> b!6382654 (= e!3874437 e!3874436)))

(declare-fun c!1162998 () Bool)

(assert (=> b!6382654 (= c!1162998 ((_ is Cons!65072) (exprs!6183 lt!2370852)))))

(declare-fun b!6382655 () Bool)

(assert (=> b!6382655 (= e!3874436 call!545449)))

(declare-fun b!6382656 () Bool)

(assert (=> b!6382656 (= e!3874437 ((_ map or) call!545449 (derivationStepZipperUp!1473 (Context!11367 (t!378800 (exprs!6183 lt!2370852))) (h!71522 s!2326))))))

(declare-fun d!2001049 () Bool)

(declare-fun c!1162999 () Bool)

(assert (=> d!2001049 (= c!1162999 e!3874438)))

(declare-fun res!2625471 () Bool)

(assert (=> d!2001049 (=> (not res!2625471) (not e!3874438))))

(assert (=> d!2001049 (= res!2625471 ((_ is Cons!65072) (exprs!6183 lt!2370852)))))

(assert (=> d!2001049 (= (derivationStepZipperUp!1473 lt!2370852 (h!71522 s!2326)) e!3874437)))

(assert (= (and d!2001049 res!2625471) b!6382652))

(assert (= (and d!2001049 c!1162999) b!6382656))

(assert (= (and d!2001049 (not c!1162999)) b!6382654))

(assert (= (and b!6382654 c!1162998) b!6382655))

(assert (= (and b!6382654 (not c!1162998)) b!6382653))

(assert (= (or b!6382656 b!6382655) bm!545444))

(declare-fun m!7182754 () Bool)

(assert (=> b!6382652 m!7182754))

(declare-fun m!7182756 () Bool)

(assert (=> bm!545444 m!7182756))

(declare-fun m!7182758 () Bool)

(assert (=> b!6382656 m!7182758))

(assert (=> b!6382410 d!2001049))

(declare-fun c!1163029 () Bool)

(declare-fun c!1163027 () Bool)

(declare-fun c!1163028 () Bool)

(declare-fun call!545471 () (InoxSet Context!11366))

(declare-fun call!545472 () List!65196)

(declare-fun bm!545464 () Bool)

(assert (=> bm!545464 (= call!545471 (derivationStepZipperDown!1547 (ite c!1163029 (regOne!33111 (h!71520 (exprs!6183 (h!71521 zl!343)))) (ite c!1163027 (regTwo!33110 (h!71520 (exprs!6183 (h!71521 zl!343)))) (ite c!1163028 (regOne!33110 (h!71520 (exprs!6183 (h!71521 zl!343)))) (reg!16628 (h!71520 (exprs!6183 (h!71521 zl!343))))))) (ite (or c!1163029 c!1163027) lt!2370852 (Context!11367 call!545472)) (h!71522 s!2326)))))

(declare-fun bm!545465 () Bool)

(declare-fun call!545474 () (InoxSet Context!11366))

(declare-fun call!545469 () (InoxSet Context!11366))

(assert (=> bm!545465 (= call!545474 call!545469)))

(declare-fun b!6382736 () Bool)

(declare-fun e!3874487 () Bool)

(assert (=> b!6382736 (= e!3874487 (nullable!6292 (regOne!33110 (h!71520 (exprs!6183 (h!71521 zl!343))))))))

(declare-fun bm!545466 () Bool)

(declare-fun call!545470 () List!65196)

(assert (=> bm!545466 (= call!545472 call!545470)))

(declare-fun b!6382737 () Bool)

(declare-fun c!1163025 () Bool)

(assert (=> b!6382737 (= c!1163025 ((_ is Star!16299) (h!71520 (exprs!6183 (h!71521 zl!343)))))))

(declare-fun e!3874486 () (InoxSet Context!11366))

(declare-fun e!3874484 () (InoxSet Context!11366))

(assert (=> b!6382737 (= e!3874486 e!3874484)))

(declare-fun b!6382738 () Bool)

(declare-fun e!3874483 () (InoxSet Context!11366))

(declare-fun call!545473 () (InoxSet Context!11366))

(assert (=> b!6382738 (= e!3874483 ((_ map or) call!545471 call!545473))))

(declare-fun bm!545467 () Bool)

(declare-fun $colon$colon!2160 (List!65196 Regex!16299) List!65196)

(assert (=> bm!545467 (= call!545470 ($colon$colon!2160 (exprs!6183 lt!2370852) (ite (or c!1163027 c!1163028) (regTwo!33110 (h!71520 (exprs!6183 (h!71521 zl!343)))) (h!71520 (exprs!6183 (h!71521 zl!343))))))))

(declare-fun b!6382739 () Bool)

(declare-fun e!3874488 () (InoxSet Context!11366))

(assert (=> b!6382739 (= e!3874488 e!3874486)))

(assert (=> b!6382739 (= c!1163028 ((_ is Concat!25144) (h!71520 (exprs!6183 (h!71521 zl!343)))))))

(declare-fun b!6382740 () Bool)

(assert (=> b!6382740 (= e!3874486 call!545474)))

(declare-fun b!6382741 () Bool)

(assert (=> b!6382741 (= c!1163027 e!3874487)))

(declare-fun res!2625501 () Bool)

(assert (=> b!6382741 (=> (not res!2625501) (not e!3874487))))

(assert (=> b!6382741 (= res!2625501 ((_ is Concat!25144) (h!71520 (exprs!6183 (h!71521 zl!343)))))))

(assert (=> b!6382741 (= e!3874483 e!3874488)))

(declare-fun b!6382742 () Bool)

(assert (=> b!6382742 (= e!3874484 ((as const (Array Context!11366 Bool)) false))))

(declare-fun b!6382743 () Bool)

(declare-fun e!3874485 () (InoxSet Context!11366))

(assert (=> b!6382743 (= e!3874485 (store ((as const (Array Context!11366 Bool)) false) lt!2370852 true))))

(declare-fun bm!545468 () Bool)

(assert (=> bm!545468 (= call!545473 (derivationStepZipperDown!1547 (ite c!1163029 (regTwo!33111 (h!71520 (exprs!6183 (h!71521 zl!343)))) (regOne!33110 (h!71520 (exprs!6183 (h!71521 zl!343))))) (ite c!1163029 lt!2370852 (Context!11367 call!545470)) (h!71522 s!2326)))))

(declare-fun d!2001051 () Bool)

(declare-fun c!1163026 () Bool)

(assert (=> d!2001051 (= c!1163026 (and ((_ is ElementMatch!16299) (h!71520 (exprs!6183 (h!71521 zl!343)))) (= (c!1162920 (h!71520 (exprs!6183 (h!71521 zl!343)))) (h!71522 s!2326))))))

(assert (=> d!2001051 (= (derivationStepZipperDown!1547 (h!71520 (exprs!6183 (h!71521 zl!343))) lt!2370852 (h!71522 s!2326)) e!3874485)))

(declare-fun bm!545469 () Bool)

(assert (=> bm!545469 (= call!545469 call!545471)))

(declare-fun b!6382744 () Bool)

(assert (=> b!6382744 (= e!3874484 call!545474)))

(declare-fun b!6382745 () Bool)

(assert (=> b!6382745 (= e!3874488 ((_ map or) call!545473 call!545469))))

(declare-fun b!6382746 () Bool)

(assert (=> b!6382746 (= e!3874485 e!3874483)))

(assert (=> b!6382746 (= c!1163029 ((_ is Union!16299) (h!71520 (exprs!6183 (h!71521 zl!343)))))))

(assert (= (and d!2001051 c!1163026) b!6382743))

(assert (= (and d!2001051 (not c!1163026)) b!6382746))

(assert (= (and b!6382746 c!1163029) b!6382738))

(assert (= (and b!6382746 (not c!1163029)) b!6382741))

(assert (= (and b!6382741 res!2625501) b!6382736))

(assert (= (and b!6382741 c!1163027) b!6382745))

(assert (= (and b!6382741 (not c!1163027)) b!6382739))

(assert (= (and b!6382739 c!1163028) b!6382740))

(assert (= (and b!6382739 (not c!1163028)) b!6382737))

(assert (= (and b!6382737 c!1163025) b!6382744))

(assert (= (and b!6382737 (not c!1163025)) b!6382742))

(assert (= (or b!6382740 b!6382744) bm!545466))

(assert (= (or b!6382740 b!6382744) bm!545465))

(assert (= (or b!6382745 bm!545466) bm!545467))

(assert (= (or b!6382745 bm!545465) bm!545469))

(assert (= (or b!6382738 b!6382745) bm!545468))

(assert (= (or b!6382738 bm!545469) bm!545464))

(declare-fun m!7182782 () Bool)

(assert (=> bm!545467 m!7182782))

(declare-fun m!7182784 () Bool)

(assert (=> bm!545464 m!7182784))

(declare-fun m!7182786 () Bool)

(assert (=> b!6382743 m!7182786))

(declare-fun m!7182788 () Bool)

(assert (=> bm!545468 m!7182788))

(declare-fun m!7182790 () Bool)

(assert (=> b!6382736 m!7182790))

(assert (=> b!6382410 d!2001051))

(declare-fun d!2001057 () Bool)

(assert (=> d!2001057 (= (nullable!6292 (h!71520 (exprs!6183 (h!71521 zl!343)))) (nullableFct!2238 (h!71520 (exprs!6183 (h!71521 zl!343)))))))

(declare-fun bs!1597371 () Bool)

(assert (= bs!1597371 d!2001057))

(declare-fun m!7182792 () Bool)

(assert (=> bs!1597371 m!7182792))

(assert (=> b!6382410 d!2001057))

(declare-fun b!6382747 () Bool)

(declare-fun e!3874491 () Bool)

(assert (=> b!6382747 (= e!3874491 (nullable!6292 (h!71520 (exprs!6183 (Context!11367 (Cons!65072 (h!71520 (exprs!6183 (h!71521 zl!343))) (t!378800 (exprs!6183 (h!71521 zl!343)))))))))))

(declare-fun b!6382748 () Bool)

(declare-fun e!3874489 () (InoxSet Context!11366))

(assert (=> b!6382748 (= e!3874489 ((as const (Array Context!11366 Bool)) false))))

(declare-fun bm!545470 () Bool)

(declare-fun call!545475 () (InoxSet Context!11366))

(assert (=> bm!545470 (= call!545475 (derivationStepZipperDown!1547 (h!71520 (exprs!6183 (Context!11367 (Cons!65072 (h!71520 (exprs!6183 (h!71521 zl!343))) (t!378800 (exprs!6183 (h!71521 zl!343))))))) (Context!11367 (t!378800 (exprs!6183 (Context!11367 (Cons!65072 (h!71520 (exprs!6183 (h!71521 zl!343))) (t!378800 (exprs!6183 (h!71521 zl!343)))))))) (h!71522 s!2326)))))

(declare-fun b!6382749 () Bool)

(declare-fun e!3874490 () (InoxSet Context!11366))

(assert (=> b!6382749 (= e!3874490 e!3874489)))

(declare-fun c!1163030 () Bool)

(assert (=> b!6382749 (= c!1163030 ((_ is Cons!65072) (exprs!6183 (Context!11367 (Cons!65072 (h!71520 (exprs!6183 (h!71521 zl!343))) (t!378800 (exprs!6183 (h!71521 zl!343))))))))))

(declare-fun b!6382750 () Bool)

(assert (=> b!6382750 (= e!3874489 call!545475)))

(declare-fun b!6382751 () Bool)

(assert (=> b!6382751 (= e!3874490 ((_ map or) call!545475 (derivationStepZipperUp!1473 (Context!11367 (t!378800 (exprs!6183 (Context!11367 (Cons!65072 (h!71520 (exprs!6183 (h!71521 zl!343))) (t!378800 (exprs!6183 (h!71521 zl!343)))))))) (h!71522 s!2326))))))

(declare-fun d!2001059 () Bool)

(declare-fun c!1163031 () Bool)

(assert (=> d!2001059 (= c!1163031 e!3874491)))

(declare-fun res!2625502 () Bool)

(assert (=> d!2001059 (=> (not res!2625502) (not e!3874491))))

(assert (=> d!2001059 (= res!2625502 ((_ is Cons!65072) (exprs!6183 (Context!11367 (Cons!65072 (h!71520 (exprs!6183 (h!71521 zl!343))) (t!378800 (exprs!6183 (h!71521 zl!343))))))))))

(assert (=> d!2001059 (= (derivationStepZipperUp!1473 (Context!11367 (Cons!65072 (h!71520 (exprs!6183 (h!71521 zl!343))) (t!378800 (exprs!6183 (h!71521 zl!343))))) (h!71522 s!2326)) e!3874490)))

(assert (= (and d!2001059 res!2625502) b!6382747))

(assert (= (and d!2001059 c!1163031) b!6382751))

(assert (= (and d!2001059 (not c!1163031)) b!6382749))

(assert (= (and b!6382749 c!1163030) b!6382750))

(assert (= (and b!6382749 (not c!1163030)) b!6382748))

(assert (= (or b!6382751 b!6382750) bm!545470))

(declare-fun m!7182794 () Bool)

(assert (=> b!6382747 m!7182794))

(declare-fun m!7182798 () Bool)

(assert (=> bm!545470 m!7182798))

(declare-fun m!7182802 () Bool)

(assert (=> b!6382751 m!7182802))

(assert (=> b!6382410 d!2001059))

(declare-fun d!2001065 () Bool)

(assert (=> d!2001065 (= (flatMap!1804 z!1189 lambda!352120) (choose!47483 z!1189 lambda!352120))))

(declare-fun bs!1597374 () Bool)

(assert (= bs!1597374 d!2001065))

(declare-fun m!7182804 () Bool)

(assert (=> bs!1597374 m!7182804))

(assert (=> b!6382410 d!2001065))

(declare-fun d!2001067 () Bool)

(assert (=> d!2001067 (= (flatMap!1804 z!1189 lambda!352120) (dynLambda!25817 lambda!352120 (h!71521 zl!343)))))

(declare-fun lt!2370898 () Unit!158527)

(assert (=> d!2001067 (= lt!2370898 (choose!47485 z!1189 (h!71521 zl!343) lambda!352120))))

(assert (=> d!2001067 (= z!1189 (store ((as const (Array Context!11366 Bool)) false) (h!71521 zl!343) true))))

(assert (=> d!2001067 (= (lemmaFlatMapOnSingletonSet!1330 z!1189 (h!71521 zl!343) lambda!352120) lt!2370898)))

(declare-fun b_lambda!242525 () Bool)

(assert (=> (not b_lambda!242525) (not d!2001067)))

(declare-fun bs!1597375 () Bool)

(assert (= bs!1597375 d!2001067))

(assert (=> bs!1597375 m!7182518))

(declare-fun m!7182806 () Bool)

(assert (=> bs!1597375 m!7182806))

(declare-fun m!7182808 () Bool)

(assert (=> bs!1597375 m!7182808))

(declare-fun m!7182810 () Bool)

(assert (=> bs!1597375 m!7182810))

(assert (=> b!6382410 d!2001067))

(declare-fun b!6382752 () Bool)

(declare-fun e!3874494 () Bool)

(assert (=> b!6382752 (= e!3874494 (nullable!6292 (h!71520 (exprs!6183 (h!71521 zl!343)))))))

(declare-fun b!6382753 () Bool)

(declare-fun e!3874492 () (InoxSet Context!11366))

(assert (=> b!6382753 (= e!3874492 ((as const (Array Context!11366 Bool)) false))))

(declare-fun bm!545471 () Bool)

(declare-fun call!545476 () (InoxSet Context!11366))

(assert (=> bm!545471 (= call!545476 (derivationStepZipperDown!1547 (h!71520 (exprs!6183 (h!71521 zl!343))) (Context!11367 (t!378800 (exprs!6183 (h!71521 zl!343)))) (h!71522 s!2326)))))

(declare-fun b!6382754 () Bool)

(declare-fun e!3874493 () (InoxSet Context!11366))

(assert (=> b!6382754 (= e!3874493 e!3874492)))

(declare-fun c!1163032 () Bool)

(assert (=> b!6382754 (= c!1163032 ((_ is Cons!65072) (exprs!6183 (h!71521 zl!343))))))

(declare-fun b!6382755 () Bool)

(assert (=> b!6382755 (= e!3874492 call!545476)))

(declare-fun b!6382756 () Bool)

(assert (=> b!6382756 (= e!3874493 ((_ map or) call!545476 (derivationStepZipperUp!1473 (Context!11367 (t!378800 (exprs!6183 (h!71521 zl!343)))) (h!71522 s!2326))))))

(declare-fun d!2001071 () Bool)

(declare-fun c!1163033 () Bool)

(assert (=> d!2001071 (= c!1163033 e!3874494)))

(declare-fun res!2625503 () Bool)

(assert (=> d!2001071 (=> (not res!2625503) (not e!3874494))))

(assert (=> d!2001071 (= res!2625503 ((_ is Cons!65072) (exprs!6183 (h!71521 zl!343))))))

(assert (=> d!2001071 (= (derivationStepZipperUp!1473 (h!71521 zl!343) (h!71522 s!2326)) e!3874493)))

(assert (= (and d!2001071 res!2625503) b!6382752))

(assert (= (and d!2001071 c!1163033) b!6382756))

(assert (= (and d!2001071 (not c!1163033)) b!6382754))

(assert (= (and b!6382754 c!1163032) b!6382755))

(assert (= (and b!6382754 (not c!1163032)) b!6382753))

(assert (= (or b!6382756 b!6382755) bm!545471))

(assert (=> b!6382752 m!7182524))

(declare-fun m!7182812 () Bool)

(assert (=> bm!545471 m!7182812))

(declare-fun m!7182814 () Bool)

(assert (=> b!6382756 m!7182814))

(assert (=> b!6382410 d!2001071))

(declare-fun d!2001073 () Bool)

(declare-fun lt!2370899 () Regex!16299)

(assert (=> d!2001073 (validRegex!8035 lt!2370899)))

(assert (=> d!2001073 (= lt!2370899 (generalisedUnion!2143 (unfocusZipperList!1720 (Cons!65073 lt!2370844 Nil!65073))))))

(assert (=> d!2001073 (= (unfocusZipper!2041 (Cons!65073 lt!2370844 Nil!65073)) lt!2370899)))

(declare-fun bs!1597376 () Bool)

(assert (= bs!1597376 d!2001073))

(declare-fun m!7182816 () Bool)

(assert (=> bs!1597376 m!7182816))

(declare-fun m!7182818 () Bool)

(assert (=> bs!1597376 m!7182818))

(assert (=> bs!1597376 m!7182818))

(declare-fun m!7182820 () Bool)

(assert (=> bs!1597376 m!7182820))

(assert (=> b!6382411 d!2001073))

(declare-fun d!2001075 () Bool)

(assert (=> d!2001075 (= (isEmpty!37203 (t!378800 (exprs!6183 (h!71521 zl!343)))) ((_ is Nil!65072) (t!378800 (exprs!6183 (h!71521 zl!343)))))))

(assert (=> b!6382391 d!2001075))

(declare-fun d!2001077 () Bool)

(declare-fun e!3874503 () Bool)

(assert (=> d!2001077 e!3874503))

(declare-fun res!2625507 () Bool)

(assert (=> d!2001077 (=> (not res!2625507) (not e!3874503))))

(declare-fun lt!2370903 () List!65197)

(declare-fun noDuplicate!2128 (List!65197) Bool)

(assert (=> d!2001077 (= res!2625507 (noDuplicate!2128 lt!2370903))))

(declare-fun choose!47486 ((InoxSet Context!11366)) List!65197)

(assert (=> d!2001077 (= lt!2370903 (choose!47486 z!1189))))

(assert (=> d!2001077 (= (toList!10083 z!1189) lt!2370903)))

(declare-fun b!6382772 () Bool)

(declare-fun content!12313 (List!65197) (InoxSet Context!11366))

(assert (=> b!6382772 (= e!3874503 (= (content!12313 lt!2370903) z!1189))))

(assert (= (and d!2001077 res!2625507) b!6382772))

(declare-fun m!7182848 () Bool)

(assert (=> d!2001077 m!7182848))

(declare-fun m!7182850 () Bool)

(assert (=> d!2001077 m!7182850))

(declare-fun m!7182852 () Bool)

(assert (=> b!6382772 m!7182852))

(assert (=> b!6382414 d!2001077))

(declare-fun bs!1597393 () Bool)

(declare-fun d!2001089 () Bool)

(assert (= bs!1597393 (and d!2001089 d!2001047)))

(declare-fun lambda!352153 () Int)

(assert (=> bs!1597393 (= lambda!352153 lambda!352137)))

(declare-fun b!6382834 () Bool)

(declare-fun e!3874544 () Bool)

(declare-fun e!3874545 () Bool)

(assert (=> b!6382834 (= e!3874544 e!3874545)))

(declare-fun c!1163060 () Bool)

(declare-fun tail!12174 (List!65196) List!65196)

(assert (=> b!6382834 (= c!1163060 (isEmpty!37203 (tail!12174 (unfocusZipperList!1720 zl!343))))))

(declare-fun b!6382835 () Bool)

(declare-fun e!3874546 () Regex!16299)

(assert (=> b!6382835 (= e!3874546 (h!71520 (unfocusZipperList!1720 zl!343)))))

(declare-fun b!6382836 () Bool)

(declare-fun lt!2370911 () Regex!16299)

(declare-fun isUnion!1136 (Regex!16299) Bool)

(assert (=> b!6382836 (= e!3874545 (isUnion!1136 lt!2370911))))

(declare-fun e!3874542 () Bool)

(assert (=> d!2001089 e!3874542))

(declare-fun res!2625532 () Bool)

(assert (=> d!2001089 (=> (not res!2625532) (not e!3874542))))

(assert (=> d!2001089 (= res!2625532 (validRegex!8035 lt!2370911))))

(assert (=> d!2001089 (= lt!2370911 e!3874546)))

(declare-fun c!1163062 () Bool)

(declare-fun e!3874547 () Bool)

(assert (=> d!2001089 (= c!1163062 e!3874547)))

(declare-fun res!2625531 () Bool)

(assert (=> d!2001089 (=> (not res!2625531) (not e!3874547))))

(assert (=> d!2001089 (= res!2625531 ((_ is Cons!65072) (unfocusZipperList!1720 zl!343)))))

(assert (=> d!2001089 (forall!15477 (unfocusZipperList!1720 zl!343) lambda!352153)))

(assert (=> d!2001089 (= (generalisedUnion!2143 (unfocusZipperList!1720 zl!343)) lt!2370911)))

(declare-fun b!6382837 () Bool)

(declare-fun e!3874543 () Regex!16299)

(assert (=> b!6382837 (= e!3874546 e!3874543)))

(declare-fun c!1163061 () Bool)

(assert (=> b!6382837 (= c!1163061 ((_ is Cons!65072) (unfocusZipperList!1720 zl!343)))))

(declare-fun b!6382838 () Bool)

(assert (=> b!6382838 (= e!3874547 (isEmpty!37203 (t!378800 (unfocusZipperList!1720 zl!343))))))

(declare-fun b!6382839 () Bool)

(assert (=> b!6382839 (= e!3874543 (Union!16299 (h!71520 (unfocusZipperList!1720 zl!343)) (generalisedUnion!2143 (t!378800 (unfocusZipperList!1720 zl!343)))))))

(declare-fun b!6382840 () Bool)

(declare-fun head!13090 (List!65196) Regex!16299)

(assert (=> b!6382840 (= e!3874545 (= lt!2370911 (head!13090 (unfocusZipperList!1720 zl!343))))))

(declare-fun b!6382841 () Bool)

(assert (=> b!6382841 (= e!3874542 e!3874544)))

(declare-fun c!1163063 () Bool)

(assert (=> b!6382841 (= c!1163063 (isEmpty!37203 (unfocusZipperList!1720 zl!343)))))

(declare-fun b!6382842 () Bool)

(declare-fun isEmptyLang!1706 (Regex!16299) Bool)

(assert (=> b!6382842 (= e!3874544 (isEmptyLang!1706 lt!2370911))))

(declare-fun b!6382843 () Bool)

(assert (=> b!6382843 (= e!3874543 EmptyLang!16299)))

(assert (= (and d!2001089 res!2625531) b!6382838))

(assert (= (and d!2001089 c!1163062) b!6382835))

(assert (= (and d!2001089 (not c!1163062)) b!6382837))

(assert (= (and b!6382837 c!1163061) b!6382839))

(assert (= (and b!6382837 (not c!1163061)) b!6382843))

(assert (= (and d!2001089 res!2625532) b!6382841))

(assert (= (and b!6382841 c!1163063) b!6382842))

(assert (= (and b!6382841 (not c!1163063)) b!6382834))

(assert (= (and b!6382834 c!1163060) b!6382840))

(assert (= (and b!6382834 (not c!1163060)) b!6382836))

(assert (=> b!6382834 m!7182560))

(declare-fun m!7182888 () Bool)

(assert (=> b!6382834 m!7182888))

(assert (=> b!6382834 m!7182888))

(declare-fun m!7182890 () Bool)

(assert (=> b!6382834 m!7182890))

(declare-fun m!7182892 () Bool)

(assert (=> d!2001089 m!7182892))

(assert (=> d!2001089 m!7182560))

(declare-fun m!7182894 () Bool)

(assert (=> d!2001089 m!7182894))

(declare-fun m!7182896 () Bool)

(assert (=> b!6382838 m!7182896))

(assert (=> b!6382840 m!7182560))

(declare-fun m!7182898 () Bool)

(assert (=> b!6382840 m!7182898))

(declare-fun m!7182900 () Bool)

(assert (=> b!6382842 m!7182900))

(assert (=> b!6382841 m!7182560))

(declare-fun m!7182902 () Bool)

(assert (=> b!6382841 m!7182902))

(declare-fun m!7182904 () Bool)

(assert (=> b!6382839 m!7182904))

(declare-fun m!7182906 () Bool)

(assert (=> b!6382836 m!7182906))

(assert (=> b!6382413 d!2001089))

(declare-fun bs!1597397 () Bool)

(declare-fun d!2001105 () Bool)

(assert (= bs!1597397 (and d!2001105 d!2001047)))

(declare-fun lambda!352157 () Int)

(assert (=> bs!1597397 (= lambda!352157 lambda!352137)))

(declare-fun bs!1597398 () Bool)

(assert (= bs!1597398 (and d!2001105 d!2001089)))

(assert (=> bs!1597398 (= lambda!352157 lambda!352153)))

(declare-fun lt!2370917 () List!65196)

(assert (=> d!2001105 (forall!15477 lt!2370917 lambda!352157)))

(declare-fun e!3874568 () List!65196)

(assert (=> d!2001105 (= lt!2370917 e!3874568)))

(declare-fun c!1163078 () Bool)

(assert (=> d!2001105 (= c!1163078 ((_ is Cons!65073) zl!343))))

(assert (=> d!2001105 (= (unfocusZipperList!1720 zl!343) lt!2370917)))

(declare-fun b!6382878 () Bool)

(assert (=> b!6382878 (= e!3874568 (Cons!65072 (generalisedConcat!1896 (exprs!6183 (h!71521 zl!343))) (unfocusZipperList!1720 (t!378801 zl!343))))))

(declare-fun b!6382879 () Bool)

(assert (=> b!6382879 (= e!3874568 Nil!65072)))

(assert (= (and d!2001105 c!1163078) b!6382878))

(assert (= (and d!2001105 (not c!1163078)) b!6382879))

(declare-fun m!7182928 () Bool)

(assert (=> d!2001105 m!7182928))

(assert (=> b!6382878 m!7182446))

(declare-fun m!7182930 () Bool)

(assert (=> b!6382878 m!7182930))

(assert (=> b!6382413 d!2001105))

(declare-fun b!6382923 () Bool)

(declare-fun e!3874597 () Bool)

(declare-fun derivativeStep!5003 (Regex!16299 C!32868) Regex!16299)

(assert (=> b!6382923 (= e!3874597 (matchR!8482 (derivativeStep!5003 lt!2370846 (head!13087 s!2326)) (tail!12172 s!2326)))))

(declare-fun b!6382924 () Bool)

(declare-fun e!3874593 () Bool)

(declare-fun e!3874596 () Bool)

(assert (=> b!6382924 (= e!3874593 e!3874596)))

(declare-fun res!2625561 () Bool)

(assert (=> b!6382924 (=> (not res!2625561) (not e!3874596))))

(declare-fun lt!2370927 () Bool)

(assert (=> b!6382924 (= res!2625561 (not lt!2370927))))

(declare-fun d!2001109 () Bool)

(declare-fun e!3874592 () Bool)

(assert (=> d!2001109 e!3874592))

(declare-fun c!1163091 () Bool)

(assert (=> d!2001109 (= c!1163091 ((_ is EmptyExpr!16299) lt!2370846))))

(assert (=> d!2001109 (= lt!2370927 e!3874597)))

(declare-fun c!1163092 () Bool)

(assert (=> d!2001109 (= c!1163092 (isEmpty!37205 s!2326))))

(assert (=> d!2001109 (validRegex!8035 lt!2370846)))

(assert (=> d!2001109 (= (matchR!8482 lt!2370846 s!2326) lt!2370927)))

(declare-fun b!6382925 () Bool)

(declare-fun call!545486 () Bool)

(assert (=> b!6382925 (= e!3874592 (= lt!2370927 call!545486))))

(declare-fun b!6382926 () Bool)

(declare-fun e!3874595 () Bool)

(assert (=> b!6382926 (= e!3874592 e!3874595)))

(declare-fun c!1163090 () Bool)

(assert (=> b!6382926 (= c!1163090 ((_ is EmptyLang!16299) lt!2370846))))

(declare-fun b!6382927 () Bool)

(assert (=> b!6382927 (= e!3874597 (nullable!6292 lt!2370846))))

(declare-fun b!6382928 () Bool)

(declare-fun res!2625565 () Bool)

(declare-fun e!3874594 () Bool)

(assert (=> b!6382928 (=> res!2625565 e!3874594)))

(assert (=> b!6382928 (= res!2625565 (not (isEmpty!37205 (tail!12172 s!2326))))))

(declare-fun b!6382929 () Bool)

(declare-fun res!2625560 () Bool)

(declare-fun e!3874591 () Bool)

(assert (=> b!6382929 (=> (not res!2625560) (not e!3874591))))

(assert (=> b!6382929 (= res!2625560 (isEmpty!37205 (tail!12172 s!2326)))))

(declare-fun bm!545481 () Bool)

(assert (=> bm!545481 (= call!545486 (isEmpty!37205 s!2326))))

(declare-fun b!6382930 () Bool)

(declare-fun res!2625563 () Bool)

(assert (=> b!6382930 (=> (not res!2625563) (not e!3874591))))

(assert (=> b!6382930 (= res!2625563 (not call!545486))))

(declare-fun b!6382931 () Bool)

(assert (=> b!6382931 (= e!3874596 e!3874594)))

(declare-fun res!2625562 () Bool)

(assert (=> b!6382931 (=> res!2625562 e!3874594)))

(assert (=> b!6382931 (= res!2625562 call!545486)))

(declare-fun b!6382932 () Bool)

(assert (=> b!6382932 (= e!3874595 (not lt!2370927))))

(declare-fun b!6382933 () Bool)

(declare-fun res!2625566 () Bool)

(assert (=> b!6382933 (=> res!2625566 e!3874593)))

(assert (=> b!6382933 (= res!2625566 (not ((_ is ElementMatch!16299) lt!2370846)))))

(assert (=> b!6382933 (= e!3874595 e!3874593)))

(declare-fun b!6382934 () Bool)

(assert (=> b!6382934 (= e!3874591 (= (head!13087 s!2326) (c!1162920 lt!2370846)))))

(declare-fun b!6382935 () Bool)

(declare-fun res!2625567 () Bool)

(assert (=> b!6382935 (=> res!2625567 e!3874593)))

(assert (=> b!6382935 (= res!2625567 e!3874591)))

(declare-fun res!2625564 () Bool)

(assert (=> b!6382935 (=> (not res!2625564) (not e!3874591))))

(assert (=> b!6382935 (= res!2625564 lt!2370927)))

(declare-fun b!6382936 () Bool)

(assert (=> b!6382936 (= e!3874594 (not (= (head!13087 s!2326) (c!1162920 lt!2370846))))))

(assert (= (and d!2001109 c!1163092) b!6382927))

(assert (= (and d!2001109 (not c!1163092)) b!6382923))

(assert (= (and d!2001109 c!1163091) b!6382925))

(assert (= (and d!2001109 (not c!1163091)) b!6382926))

(assert (= (and b!6382926 c!1163090) b!6382932))

(assert (= (and b!6382926 (not c!1163090)) b!6382933))

(assert (= (and b!6382933 (not res!2625566)) b!6382935))

(assert (= (and b!6382935 res!2625564) b!6382930))

(assert (= (and b!6382930 res!2625563) b!6382929))

(assert (= (and b!6382929 res!2625560) b!6382934))

(assert (= (and b!6382935 (not res!2625567)) b!6382924))

(assert (= (and b!6382924 res!2625561) b!6382931))

(assert (= (and b!6382931 (not res!2625562)) b!6382928))

(assert (= (and b!6382928 (not res!2625565)) b!6382936))

(assert (= (or b!6382925 b!6382930 b!6382931) bm!545481))

(declare-fun m!7182960 () Bool)

(assert (=> b!6382923 m!7182960))

(assert (=> b!6382923 m!7182960))

(declare-fun m!7182962 () Bool)

(assert (=> b!6382923 m!7182962))

(declare-fun m!7182964 () Bool)

(assert (=> b!6382923 m!7182964))

(assert (=> b!6382923 m!7182962))

(assert (=> b!6382923 m!7182964))

(declare-fun m!7182966 () Bool)

(assert (=> b!6382923 m!7182966))

(declare-fun m!7182968 () Bool)

(assert (=> bm!545481 m!7182968))

(assert (=> b!6382936 m!7182960))

(assert (=> b!6382928 m!7182964))

(assert (=> b!6382928 m!7182964))

(declare-fun m!7182970 () Bool)

(assert (=> b!6382928 m!7182970))

(assert (=> b!6382934 m!7182960))

(assert (=> b!6382929 m!7182964))

(assert (=> b!6382929 m!7182964))

(assert (=> b!6382929 m!7182970))

(declare-fun m!7182972 () Bool)

(assert (=> b!6382927 m!7182972))

(assert (=> d!2001109 m!7182968))

(declare-fun m!7182974 () Bool)

(assert (=> d!2001109 m!7182974))

(assert (=> b!6382395 d!2001109))

(declare-fun bs!1597427 () Bool)

(declare-fun b!6383040 () Bool)

(assert (= bs!1597427 (and b!6383040 b!6382401)))

(declare-fun lambda!352172 () Int)

(assert (=> bs!1597427 (not (= lambda!352172 lambda!352118))))

(assert (=> bs!1597427 (not (= lambda!352172 lambda!352119))))

(declare-fun bs!1597428 () Bool)

(assert (= bs!1597428 (and b!6383040 b!6382397)))

(assert (=> bs!1597428 (not (= lambda!352172 lambda!352121))))

(assert (=> b!6383040 true))

(assert (=> b!6383040 true))

(declare-fun bs!1597429 () Bool)

(declare-fun b!6383039 () Bool)

(assert (= bs!1597429 (and b!6383039 b!6382401)))

(declare-fun lambda!352173 () Int)

(assert (=> bs!1597429 (not (= lambda!352173 lambda!352118))))

(assert (=> bs!1597429 (= (and (= (regOne!33110 lt!2370846) (regOne!33110 r!7292)) (= (regTwo!33110 lt!2370846) (regTwo!33110 r!7292))) (= lambda!352173 lambda!352119))))

(declare-fun bs!1597430 () Bool)

(assert (= bs!1597430 (and b!6383039 b!6382397)))

(assert (=> bs!1597430 (not (= lambda!352173 lambda!352121))))

(declare-fun bs!1597431 () Bool)

(assert (= bs!1597431 (and b!6383039 b!6383040)))

(assert (=> bs!1597431 (not (= lambda!352173 lambda!352172))))

(assert (=> b!6383039 true))

(assert (=> b!6383039 true))

(declare-fun b!6383035 () Bool)

(declare-fun e!3874646 () Bool)

(declare-fun e!3874645 () Bool)

(assert (=> b!6383035 (= e!3874646 e!3874645)))

(declare-fun res!2625593 () Bool)

(assert (=> b!6383035 (= res!2625593 (matchRSpec!3400 (regOne!33111 lt!2370846) s!2326))))

(assert (=> b!6383035 (=> res!2625593 e!3874645)))

(declare-fun b!6383036 () Bool)

(declare-fun c!1163105 () Bool)

(assert (=> b!6383036 (= c!1163105 ((_ is Union!16299) lt!2370846))))

(declare-fun e!3874651 () Bool)

(assert (=> b!6383036 (= e!3874651 e!3874646)))

(declare-fun b!6383037 () Bool)

(declare-fun e!3874647 () Bool)

(assert (=> b!6383037 (= e!3874646 e!3874647)))

(declare-fun c!1163104 () Bool)

(assert (=> b!6383037 (= c!1163104 ((_ is Star!16299) lt!2370846))))

(declare-fun d!2001121 () Bool)

(declare-fun c!1163106 () Bool)

(assert (=> d!2001121 (= c!1163106 ((_ is EmptyExpr!16299) lt!2370846))))

(declare-fun e!3874649 () Bool)

(assert (=> d!2001121 (= (matchRSpec!3400 lt!2370846 s!2326) e!3874649)))

(declare-fun bm!545486 () Bool)

(declare-fun call!545491 () Bool)

(assert (=> bm!545486 (= call!545491 (isEmpty!37205 s!2326))))

(declare-fun b!6383038 () Bool)

(assert (=> b!6383038 (= e!3874649 call!545491)))

(declare-fun call!545492 () Bool)

(assert (=> b!6383039 (= e!3874647 call!545492)))

(declare-fun e!3874650 () Bool)

(assert (=> b!6383040 (= e!3874650 call!545492)))

(declare-fun b!6383041 () Bool)

(declare-fun e!3874648 () Bool)

(assert (=> b!6383041 (= e!3874649 e!3874648)))

(declare-fun res!2625592 () Bool)

(assert (=> b!6383041 (= res!2625592 (not ((_ is EmptyLang!16299) lt!2370846)))))

(assert (=> b!6383041 (=> (not res!2625592) (not e!3874648))))

(declare-fun b!6383042 () Bool)

(declare-fun res!2625594 () Bool)

(assert (=> b!6383042 (=> res!2625594 e!3874650)))

(assert (=> b!6383042 (= res!2625594 call!545491)))

(assert (=> b!6383042 (= e!3874647 e!3874650)))

(declare-fun b!6383043 () Bool)

(assert (=> b!6383043 (= e!3874645 (matchRSpec!3400 (regTwo!33111 lt!2370846) s!2326))))

(declare-fun b!6383044 () Bool)

(assert (=> b!6383044 (= e!3874651 (= s!2326 (Cons!65074 (c!1162920 lt!2370846) Nil!65074)))))

(declare-fun bm!545487 () Bool)

(assert (=> bm!545487 (= call!545492 (Exists!3369 (ite c!1163104 lambda!352172 lambda!352173)))))

(declare-fun b!6383045 () Bool)

(declare-fun c!1163103 () Bool)

(assert (=> b!6383045 (= c!1163103 ((_ is ElementMatch!16299) lt!2370846))))

(assert (=> b!6383045 (= e!3874648 e!3874651)))

(assert (= (and d!2001121 c!1163106) b!6383038))

(assert (= (and d!2001121 (not c!1163106)) b!6383041))

(assert (= (and b!6383041 res!2625592) b!6383045))

(assert (= (and b!6383045 c!1163103) b!6383044))

(assert (= (and b!6383045 (not c!1163103)) b!6383036))

(assert (= (and b!6383036 c!1163105) b!6383035))

(assert (= (and b!6383036 (not c!1163105)) b!6383037))

(assert (= (and b!6383035 (not res!2625593)) b!6383043))

(assert (= (and b!6383037 c!1163104) b!6383042))

(assert (= (and b!6383037 (not c!1163104)) b!6383039))

(assert (= (and b!6383042 (not res!2625594)) b!6383040))

(assert (= (or b!6383040 b!6383039) bm!545487))

(assert (= (or b!6383038 b!6383042) bm!545486))

(declare-fun m!7183000 () Bool)

(assert (=> b!6383035 m!7183000))

(assert (=> bm!545486 m!7182968))

(declare-fun m!7183002 () Bool)

(assert (=> b!6383043 m!7183002))

(declare-fun m!7183004 () Bool)

(assert (=> bm!545487 m!7183004))

(assert (=> b!6382395 d!2001121))

(declare-fun d!2001137 () Bool)

(assert (=> d!2001137 (= (matchR!8482 lt!2370846 s!2326) (matchRSpec!3400 lt!2370846 s!2326))))

(declare-fun lt!2370933 () Unit!158527)

(declare-fun choose!47488 (Regex!16299 List!65198) Unit!158527)

(assert (=> d!2001137 (= lt!2370933 (choose!47488 lt!2370846 s!2326))))

(assert (=> d!2001137 (validRegex!8035 lt!2370846)))

(assert (=> d!2001137 (= (mainMatchTheorem!3400 lt!2370846 s!2326) lt!2370933)))

(declare-fun bs!1597432 () Bool)

(assert (= bs!1597432 d!2001137))

(assert (=> bs!1597432 m!7182456))

(assert (=> bs!1597432 m!7182458))

(declare-fun m!7183006 () Bool)

(assert (=> bs!1597432 m!7183006))

(assert (=> bs!1597432 m!7182974))

(assert (=> b!6382395 d!2001137))

(declare-fun d!2001139 () Bool)

(declare-fun lt!2370934 () Regex!16299)

(assert (=> d!2001139 (validRegex!8035 lt!2370934)))

(assert (=> d!2001139 (= lt!2370934 (generalisedUnion!2143 (unfocusZipperList!1720 (Cons!65073 lt!2370826 Nil!65073))))))

(assert (=> d!2001139 (= (unfocusZipper!2041 (Cons!65073 lt!2370826 Nil!65073)) lt!2370934)))

(declare-fun bs!1597433 () Bool)

(assert (= bs!1597433 d!2001139))

(declare-fun m!7183008 () Bool)

(assert (=> bs!1597433 m!7183008))

(declare-fun m!7183010 () Bool)

(assert (=> bs!1597433 m!7183010))

(assert (=> bs!1597433 m!7183010))

(declare-fun m!7183012 () Bool)

(assert (=> bs!1597433 m!7183012))

(assert (=> b!6382394 d!2001139))

(declare-fun bs!1597434 () Bool)

(declare-fun d!2001141 () Bool)

(assert (= bs!1597434 (and d!2001141 d!2001047)))

(declare-fun lambda!352176 () Int)

(assert (=> bs!1597434 (= lambda!352176 lambda!352137)))

(declare-fun bs!1597435 () Bool)

(assert (= bs!1597435 (and d!2001141 d!2001089)))

(assert (=> bs!1597435 (= lambda!352176 lambda!352153)))

(declare-fun bs!1597436 () Bool)

(assert (= bs!1597436 (and d!2001141 d!2001105)))

(assert (=> bs!1597436 (= lambda!352176 lambda!352157)))

(declare-fun b!6383066 () Bool)

(declare-fun e!3874668 () Regex!16299)

(declare-fun e!3874665 () Regex!16299)

(assert (=> b!6383066 (= e!3874668 e!3874665)))

(declare-fun c!1163117 () Bool)

(assert (=> b!6383066 (= c!1163117 ((_ is Cons!65072) (exprs!6183 (h!71521 zl!343))))))

(declare-fun b!6383067 () Bool)

(assert (=> b!6383067 (= e!3874665 (Concat!25144 (h!71520 (exprs!6183 (h!71521 zl!343))) (generalisedConcat!1896 (t!378800 (exprs!6183 (h!71521 zl!343))))))))

(declare-fun b!6383068 () Bool)

(declare-fun e!3874666 () Bool)

(assert (=> b!6383068 (= e!3874666 (isEmpty!37203 (t!378800 (exprs!6183 (h!71521 zl!343)))))))

(declare-fun b!6383069 () Bool)

(declare-fun e!3874669 () Bool)

(declare-fun e!3874667 () Bool)

(assert (=> b!6383069 (= e!3874669 e!3874667)))

(declare-fun c!1163115 () Bool)

(assert (=> b!6383069 (= c!1163115 (isEmpty!37203 (exprs!6183 (h!71521 zl!343))))))

(declare-fun b!6383070 () Bool)

(assert (=> b!6383070 (= e!3874668 (h!71520 (exprs!6183 (h!71521 zl!343))))))

(declare-fun b!6383071 () Bool)

(declare-fun lt!2370937 () Regex!16299)

(declare-fun isEmptyExpr!1700 (Regex!16299) Bool)

(assert (=> b!6383071 (= e!3874667 (isEmptyExpr!1700 lt!2370937))))

(assert (=> d!2001141 e!3874669))

(declare-fun res!2625599 () Bool)

(assert (=> d!2001141 (=> (not res!2625599) (not e!3874669))))

(assert (=> d!2001141 (= res!2625599 (validRegex!8035 lt!2370937))))

(assert (=> d!2001141 (= lt!2370937 e!3874668)))

(declare-fun c!1163118 () Bool)

(assert (=> d!2001141 (= c!1163118 e!3874666)))

(declare-fun res!2625600 () Bool)

(assert (=> d!2001141 (=> (not res!2625600) (not e!3874666))))

(assert (=> d!2001141 (= res!2625600 ((_ is Cons!65072) (exprs!6183 (h!71521 zl!343))))))

(assert (=> d!2001141 (forall!15477 (exprs!6183 (h!71521 zl!343)) lambda!352176)))

(assert (=> d!2001141 (= (generalisedConcat!1896 (exprs!6183 (h!71521 zl!343))) lt!2370937)))

(declare-fun b!6383072 () Bool)

(declare-fun e!3874664 () Bool)

(assert (=> b!6383072 (= e!3874667 e!3874664)))

(declare-fun c!1163116 () Bool)

(assert (=> b!6383072 (= c!1163116 (isEmpty!37203 (tail!12174 (exprs!6183 (h!71521 zl!343)))))))

(declare-fun b!6383073 () Bool)

(assert (=> b!6383073 (= e!3874665 EmptyExpr!16299)))

(declare-fun b!6383074 () Bool)

(assert (=> b!6383074 (= e!3874664 (= lt!2370937 (head!13090 (exprs!6183 (h!71521 zl!343)))))))

(declare-fun b!6383075 () Bool)

(declare-fun isConcat!1223 (Regex!16299) Bool)

(assert (=> b!6383075 (= e!3874664 (isConcat!1223 lt!2370937))))

(assert (= (and d!2001141 res!2625600) b!6383068))

(assert (= (and d!2001141 c!1163118) b!6383070))

(assert (= (and d!2001141 (not c!1163118)) b!6383066))

(assert (= (and b!6383066 c!1163117) b!6383067))

(assert (= (and b!6383066 (not c!1163117)) b!6383073))

(assert (= (and d!2001141 res!2625599) b!6383069))

(assert (= (and b!6383069 c!1163115) b!6383071))

(assert (= (and b!6383069 (not c!1163115)) b!6383072))

(assert (= (and b!6383072 c!1163116) b!6383074))

(assert (= (and b!6383072 (not c!1163116)) b!6383075))

(declare-fun m!7183014 () Bool)

(assert (=> b!6383072 m!7183014))

(assert (=> b!6383072 m!7183014))

(declare-fun m!7183016 () Bool)

(assert (=> b!6383072 m!7183016))

(declare-fun m!7183018 () Bool)

(assert (=> b!6383067 m!7183018))

(declare-fun m!7183020 () Bool)

(assert (=> d!2001141 m!7183020))

(declare-fun m!7183022 () Bool)

(assert (=> d!2001141 m!7183022))

(assert (=> b!6383068 m!7182514))

(declare-fun m!7183024 () Bool)

(assert (=> b!6383074 m!7183024))

(declare-fun m!7183026 () Bool)

(assert (=> b!6383071 m!7183026))

(declare-fun m!7183028 () Bool)

(assert (=> b!6383069 m!7183028))

(declare-fun m!7183030 () Bool)

(assert (=> b!6383075 m!7183030))

(assert (=> b!6382396 d!2001141))

(declare-fun d!2001143 () Bool)

(declare-fun choose!47489 (Int) Bool)

(assert (=> d!2001143 (= (Exists!3369 lambda!352121) (choose!47489 lambda!352121))))

(declare-fun bs!1597437 () Bool)

(assert (= bs!1597437 d!2001143))

(declare-fun m!7183032 () Bool)

(assert (=> bs!1597437 m!7183032))

(assert (=> b!6382397 d!2001143))

(declare-fun d!2001145 () Bool)

(declare-fun isEmpty!37208 (Option!16190) Bool)

(assert (=> d!2001145 (= (isDefined!12893 (findConcatSeparation!2604 lt!2370832 (regTwo!33110 r!7292) Nil!65074 s!2326 s!2326)) (not (isEmpty!37208 (findConcatSeparation!2604 lt!2370832 (regTwo!33110 r!7292) Nil!65074 s!2326 s!2326))))))

(declare-fun bs!1597438 () Bool)

(assert (= bs!1597438 d!2001145))

(assert (=> bs!1597438 m!7182484))

(declare-fun m!7183034 () Bool)

(assert (=> bs!1597438 m!7183034))

(assert (=> b!6382397 d!2001145))

(declare-fun bs!1597439 () Bool)

(declare-fun d!2001147 () Bool)

(assert (= bs!1597439 (and d!2001147 b!6382401)))

(declare-fun lambda!352179 () Int)

(assert (=> bs!1597439 (= (= lt!2370832 (regOne!33110 r!7292)) (= lambda!352179 lambda!352118))))

(assert (=> bs!1597439 (not (= lambda!352179 lambda!352119))))

(declare-fun bs!1597440 () Bool)

(assert (= bs!1597440 (and d!2001147 b!6382397)))

(assert (=> bs!1597440 (= lambda!352179 lambda!352121)))

(declare-fun bs!1597441 () Bool)

(assert (= bs!1597441 (and d!2001147 b!6383039)))

(assert (=> bs!1597441 (not (= lambda!352179 lambda!352173))))

(declare-fun bs!1597442 () Bool)

(assert (= bs!1597442 (and d!2001147 b!6383040)))

(assert (=> bs!1597442 (not (= lambda!352179 lambda!352172))))

(assert (=> d!2001147 true))

(assert (=> d!2001147 true))

(assert (=> d!2001147 true))

(assert (=> d!2001147 (= (isDefined!12893 (findConcatSeparation!2604 lt!2370832 (regTwo!33110 r!7292) Nil!65074 s!2326 s!2326)) (Exists!3369 lambda!352179))))

(declare-fun lt!2370940 () Unit!158527)

(declare-fun choose!47490 (Regex!16299 Regex!16299 List!65198) Unit!158527)

(assert (=> d!2001147 (= lt!2370940 (choose!47490 lt!2370832 (regTwo!33110 r!7292) s!2326))))

(assert (=> d!2001147 (validRegex!8035 lt!2370832)))

(assert (=> d!2001147 (= (lemmaFindConcatSeparationEquivalentToExists!2368 lt!2370832 (regTwo!33110 r!7292) s!2326) lt!2370940)))

(declare-fun bs!1597443 () Bool)

(assert (= bs!1597443 d!2001147))

(assert (=> bs!1597443 m!7182484))

(assert (=> bs!1597443 m!7182486))

(declare-fun m!7183036 () Bool)

(assert (=> bs!1597443 m!7183036))

(assert (=> bs!1597443 m!7182488))

(declare-fun m!7183038 () Bool)

(assert (=> bs!1597443 m!7183038))

(assert (=> bs!1597443 m!7182484))

(assert (=> b!6382397 d!2001147))

(declare-fun b!6383098 () Bool)

(declare-fun e!3874691 () Bool)

(declare-fun e!3874688 () Bool)

(assert (=> b!6383098 (= e!3874691 e!3874688)))

(declare-fun c!1163124 () Bool)

(assert (=> b!6383098 (= c!1163124 ((_ is Star!16299) lt!2370832))))

(declare-fun b!6383099 () Bool)

(declare-fun e!3874687 () Bool)

(declare-fun e!3874690 () Bool)

(assert (=> b!6383099 (= e!3874687 e!3874690)))

(declare-fun res!2625615 () Bool)

(assert (=> b!6383099 (=> (not res!2625615) (not e!3874690))))

(declare-fun call!545501 () Bool)

(assert (=> b!6383099 (= res!2625615 call!545501)))

(declare-fun c!1163123 () Bool)

(declare-fun call!545499 () Bool)

(declare-fun bm!545494 () Bool)

(assert (=> bm!545494 (= call!545499 (validRegex!8035 (ite c!1163124 (reg!16628 lt!2370832) (ite c!1163123 (regTwo!33111 lt!2370832) (regTwo!33110 lt!2370832)))))))

(declare-fun b!6383100 () Bool)

(declare-fun e!3874686 () Bool)

(assert (=> b!6383100 (= e!3874688 e!3874686)))

(assert (=> b!6383100 (= c!1163123 ((_ is Union!16299) lt!2370832))))

(declare-fun d!2001149 () Bool)

(declare-fun res!2625617 () Bool)

(assert (=> d!2001149 (=> res!2625617 e!3874691)))

(assert (=> d!2001149 (= res!2625617 ((_ is ElementMatch!16299) lt!2370832))))

(assert (=> d!2001149 (= (validRegex!8035 lt!2370832) e!3874691)))

(declare-fun b!6383101 () Bool)

(declare-fun res!2625618 () Bool)

(assert (=> b!6383101 (=> res!2625618 e!3874687)))

(assert (=> b!6383101 (= res!2625618 (not ((_ is Concat!25144) lt!2370832)))))

(assert (=> b!6383101 (= e!3874686 e!3874687)))

(declare-fun b!6383102 () Bool)

(declare-fun e!3874689 () Bool)

(declare-fun call!545500 () Bool)

(assert (=> b!6383102 (= e!3874689 call!545500)))

(declare-fun bm!545495 () Bool)

(assert (=> bm!545495 (= call!545500 call!545499)))

(declare-fun b!6383103 () Bool)

(assert (=> b!6383103 (= e!3874690 call!545500)))

(declare-fun b!6383104 () Bool)

(declare-fun e!3874692 () Bool)

(assert (=> b!6383104 (= e!3874692 call!545499)))

(declare-fun bm!545496 () Bool)

(assert (=> bm!545496 (= call!545501 (validRegex!8035 (ite c!1163123 (regOne!33111 lt!2370832) (regOne!33110 lt!2370832))))))

(declare-fun b!6383105 () Bool)

(declare-fun res!2625616 () Bool)

(assert (=> b!6383105 (=> (not res!2625616) (not e!3874689))))

(assert (=> b!6383105 (= res!2625616 call!545501)))

(assert (=> b!6383105 (= e!3874686 e!3874689)))

(declare-fun b!6383106 () Bool)

(assert (=> b!6383106 (= e!3874688 e!3874692)))

(declare-fun res!2625619 () Bool)

(assert (=> b!6383106 (= res!2625619 (not (nullable!6292 (reg!16628 lt!2370832))))))

(assert (=> b!6383106 (=> (not res!2625619) (not e!3874692))))

(assert (= (and d!2001149 (not res!2625617)) b!6383098))

(assert (= (and b!6383098 c!1163124) b!6383106))

(assert (= (and b!6383098 (not c!1163124)) b!6383100))

(assert (= (and b!6383106 res!2625619) b!6383104))

(assert (= (and b!6383100 c!1163123) b!6383105))

(assert (= (and b!6383100 (not c!1163123)) b!6383101))

(assert (= (and b!6383105 res!2625616) b!6383102))

(assert (= (and b!6383101 (not res!2625618)) b!6383099))

(assert (= (and b!6383099 res!2625615) b!6383103))

(assert (= (or b!6383102 b!6383103) bm!545495))

(assert (= (or b!6383105 b!6383099) bm!545496))

(assert (= (or b!6383104 bm!545495) bm!545494))

(declare-fun m!7183040 () Bool)

(assert (=> bm!545494 m!7183040))

(declare-fun m!7183042 () Bool)

(assert (=> bm!545496 m!7183042))

(declare-fun m!7183044 () Bool)

(assert (=> b!6383106 m!7183044))

(assert (=> b!6382397 d!2001149))

(declare-fun b!6383125 () Bool)

(declare-fun lt!2370949 () Unit!158527)

(declare-fun lt!2370947 () Unit!158527)

(assert (=> b!6383125 (= lt!2370949 lt!2370947)))

(declare-fun ++!14367 (List!65198 List!65198) List!65198)

(assert (=> b!6383125 (= (++!14367 (++!14367 Nil!65074 (Cons!65074 (h!71522 s!2326) Nil!65074)) (t!378802 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2462 (List!65198 C!32868 List!65198 List!65198) Unit!158527)

(assert (=> b!6383125 (= lt!2370947 (lemmaMoveElementToOtherListKeepsConcatEq!2462 Nil!65074 (h!71522 s!2326) (t!378802 s!2326) s!2326))))

(declare-fun e!3874707 () Option!16190)

(assert (=> b!6383125 (= e!3874707 (findConcatSeparation!2604 lt!2370832 (regTwo!33110 r!7292) (++!14367 Nil!65074 (Cons!65074 (h!71522 s!2326) Nil!65074)) (t!378802 s!2326) s!2326))))

(declare-fun b!6383126 () Bool)

(declare-fun res!2625630 () Bool)

(declare-fun e!3874704 () Bool)

(assert (=> b!6383126 (=> (not res!2625630) (not e!3874704))))

(declare-fun lt!2370948 () Option!16190)

(declare-fun get!22532 (Option!16190) tuple2!66556)

(assert (=> b!6383126 (= res!2625630 (matchR!8482 (regTwo!33110 r!7292) (_2!36581 (get!22532 lt!2370948))))))

(declare-fun b!6383127 () Bool)

(declare-fun e!3874705 () Option!16190)

(assert (=> b!6383127 (= e!3874705 (Some!16189 (tuple2!66557 Nil!65074 s!2326)))))

(declare-fun b!6383128 () Bool)

(declare-fun e!3874703 () Bool)

(assert (=> b!6383128 (= e!3874703 (not (isDefined!12893 lt!2370948)))))

(declare-fun d!2001151 () Bool)

(assert (=> d!2001151 e!3874703))

(declare-fun res!2625633 () Bool)

(assert (=> d!2001151 (=> res!2625633 e!3874703)))

(assert (=> d!2001151 (= res!2625633 e!3874704)))

(declare-fun res!2625634 () Bool)

(assert (=> d!2001151 (=> (not res!2625634) (not e!3874704))))

(assert (=> d!2001151 (= res!2625634 (isDefined!12893 lt!2370948))))

(assert (=> d!2001151 (= lt!2370948 e!3874705)))

(declare-fun c!1163129 () Bool)

(declare-fun e!3874706 () Bool)

(assert (=> d!2001151 (= c!1163129 e!3874706)))

(declare-fun res!2625632 () Bool)

(assert (=> d!2001151 (=> (not res!2625632) (not e!3874706))))

(assert (=> d!2001151 (= res!2625632 (matchR!8482 lt!2370832 Nil!65074))))

(assert (=> d!2001151 (validRegex!8035 lt!2370832)))

(assert (=> d!2001151 (= (findConcatSeparation!2604 lt!2370832 (regTwo!33110 r!7292) Nil!65074 s!2326 s!2326) lt!2370948)))

(declare-fun b!6383129 () Bool)

(assert (=> b!6383129 (= e!3874707 None!16189)))

(declare-fun b!6383130 () Bool)

(assert (=> b!6383130 (= e!3874705 e!3874707)))

(declare-fun c!1163130 () Bool)

(assert (=> b!6383130 (= c!1163130 ((_ is Nil!65074) s!2326))))

(declare-fun b!6383131 () Bool)

(declare-fun res!2625631 () Bool)

(assert (=> b!6383131 (=> (not res!2625631) (not e!3874704))))

(assert (=> b!6383131 (= res!2625631 (matchR!8482 lt!2370832 (_1!36581 (get!22532 lt!2370948))))))

(declare-fun b!6383132 () Bool)

(assert (=> b!6383132 (= e!3874706 (matchR!8482 (regTwo!33110 r!7292) s!2326))))

(declare-fun b!6383133 () Bool)

(assert (=> b!6383133 (= e!3874704 (= (++!14367 (_1!36581 (get!22532 lt!2370948)) (_2!36581 (get!22532 lt!2370948))) s!2326))))

(assert (= (and d!2001151 res!2625632) b!6383132))

(assert (= (and d!2001151 c!1163129) b!6383127))

(assert (= (and d!2001151 (not c!1163129)) b!6383130))

(assert (= (and b!6383130 c!1163130) b!6383129))

(assert (= (and b!6383130 (not c!1163130)) b!6383125))

(assert (= (and d!2001151 res!2625634) b!6383131))

(assert (= (and b!6383131 res!2625631) b!6383126))

(assert (= (and b!6383126 res!2625630) b!6383133))

(assert (= (and d!2001151 (not res!2625633)) b!6383128))

(declare-fun m!7183046 () Bool)

(assert (=> b!6383126 m!7183046))

(declare-fun m!7183048 () Bool)

(assert (=> b!6383126 m!7183048))

(declare-fun m!7183050 () Bool)

(assert (=> b!6383125 m!7183050))

(assert (=> b!6383125 m!7183050))

(declare-fun m!7183052 () Bool)

(assert (=> b!6383125 m!7183052))

(declare-fun m!7183054 () Bool)

(assert (=> b!6383125 m!7183054))

(assert (=> b!6383125 m!7183050))

(declare-fun m!7183056 () Bool)

(assert (=> b!6383125 m!7183056))

(declare-fun m!7183058 () Bool)

(assert (=> b!6383128 m!7183058))

(assert (=> d!2001151 m!7183058))

(declare-fun m!7183060 () Bool)

(assert (=> d!2001151 m!7183060))

(assert (=> d!2001151 m!7182488))

(declare-fun m!7183062 () Bool)

(assert (=> b!6383132 m!7183062))

(assert (=> b!6383131 m!7183046))

(declare-fun m!7183064 () Bool)

(assert (=> b!6383131 m!7183064))

(assert (=> b!6383133 m!7183046))

(declare-fun m!7183066 () Bool)

(assert (=> b!6383133 m!7183066))

(assert (=> b!6382397 d!2001151))

(declare-fun bs!1597444 () Bool)

(declare-fun b!6383139 () Bool)

(assert (= bs!1597444 (and b!6383139 b!6382401)))

(declare-fun lambda!352180 () Int)

(assert (=> bs!1597444 (not (= lambda!352180 lambda!352118))))

(assert (=> bs!1597444 (not (= lambda!352180 lambda!352119))))

(declare-fun bs!1597445 () Bool)

(assert (= bs!1597445 (and b!6383139 b!6382397)))

(assert (=> bs!1597445 (not (= lambda!352180 lambda!352121))))

(declare-fun bs!1597446 () Bool)

(assert (= bs!1597446 (and b!6383139 d!2001147)))

(assert (=> bs!1597446 (not (= lambda!352180 lambda!352179))))

(declare-fun bs!1597447 () Bool)

(assert (= bs!1597447 (and b!6383139 b!6383039)))

(assert (=> bs!1597447 (not (= lambda!352180 lambda!352173))))

(declare-fun bs!1597448 () Bool)

(assert (= bs!1597448 (and b!6383139 b!6383040)))

(assert (=> bs!1597448 (= (and (= (reg!16628 r!7292) (reg!16628 lt!2370846)) (= r!7292 lt!2370846)) (= lambda!352180 lambda!352172))))

(assert (=> b!6383139 true))

(assert (=> b!6383139 true))

(declare-fun bs!1597449 () Bool)

(declare-fun b!6383138 () Bool)

(assert (= bs!1597449 (and b!6383138 b!6382401)))

(declare-fun lambda!352181 () Int)

(assert (=> bs!1597449 (not (= lambda!352181 lambda!352118))))

(declare-fun bs!1597450 () Bool)

(assert (= bs!1597450 (and b!6383138 b!6383139)))

(assert (=> bs!1597450 (not (= lambda!352181 lambda!352180))))

(assert (=> bs!1597449 (= lambda!352181 lambda!352119)))

(declare-fun bs!1597451 () Bool)

(assert (= bs!1597451 (and b!6383138 b!6382397)))

(assert (=> bs!1597451 (not (= lambda!352181 lambda!352121))))

(declare-fun bs!1597452 () Bool)

(assert (= bs!1597452 (and b!6383138 d!2001147)))

(assert (=> bs!1597452 (not (= lambda!352181 lambda!352179))))

(declare-fun bs!1597453 () Bool)

(assert (= bs!1597453 (and b!6383138 b!6383039)))

(assert (=> bs!1597453 (= (and (= (regOne!33110 r!7292) (regOne!33110 lt!2370846)) (= (regTwo!33110 r!7292) (regTwo!33110 lt!2370846))) (= lambda!352181 lambda!352173))))

(declare-fun bs!1597454 () Bool)

(assert (= bs!1597454 (and b!6383138 b!6383040)))

(assert (=> bs!1597454 (not (= lambda!352181 lambda!352172))))

(assert (=> b!6383138 true))

(assert (=> b!6383138 true))

(declare-fun b!6383134 () Bool)

(declare-fun e!3874709 () Bool)

(declare-fun e!3874708 () Bool)

(assert (=> b!6383134 (= e!3874709 e!3874708)))

(declare-fun res!2625636 () Bool)

(assert (=> b!6383134 (= res!2625636 (matchRSpec!3400 (regOne!33111 r!7292) s!2326))))

(assert (=> b!6383134 (=> res!2625636 e!3874708)))

(declare-fun b!6383135 () Bool)

(declare-fun c!1163133 () Bool)

(assert (=> b!6383135 (= c!1163133 ((_ is Union!16299) r!7292))))

(declare-fun e!3874714 () Bool)

(assert (=> b!6383135 (= e!3874714 e!3874709)))

(declare-fun b!6383136 () Bool)

(declare-fun e!3874710 () Bool)

(assert (=> b!6383136 (= e!3874709 e!3874710)))

(declare-fun c!1163132 () Bool)

(assert (=> b!6383136 (= c!1163132 ((_ is Star!16299) r!7292))))

(declare-fun d!2001153 () Bool)

(declare-fun c!1163134 () Bool)

(assert (=> d!2001153 (= c!1163134 ((_ is EmptyExpr!16299) r!7292))))

(declare-fun e!3874712 () Bool)

(assert (=> d!2001153 (= (matchRSpec!3400 r!7292 s!2326) e!3874712)))

(declare-fun bm!545497 () Bool)

(declare-fun call!545502 () Bool)

(assert (=> bm!545497 (= call!545502 (isEmpty!37205 s!2326))))

(declare-fun b!6383137 () Bool)

(assert (=> b!6383137 (= e!3874712 call!545502)))

(declare-fun call!545503 () Bool)

(assert (=> b!6383138 (= e!3874710 call!545503)))

(declare-fun e!3874713 () Bool)

(assert (=> b!6383139 (= e!3874713 call!545503)))

(declare-fun b!6383140 () Bool)

(declare-fun e!3874711 () Bool)

(assert (=> b!6383140 (= e!3874712 e!3874711)))

(declare-fun res!2625635 () Bool)

(assert (=> b!6383140 (= res!2625635 (not ((_ is EmptyLang!16299) r!7292)))))

(assert (=> b!6383140 (=> (not res!2625635) (not e!3874711))))

(declare-fun b!6383141 () Bool)

(declare-fun res!2625637 () Bool)

(assert (=> b!6383141 (=> res!2625637 e!3874713)))

(assert (=> b!6383141 (= res!2625637 call!545502)))

(assert (=> b!6383141 (= e!3874710 e!3874713)))

(declare-fun b!6383142 () Bool)

(assert (=> b!6383142 (= e!3874708 (matchRSpec!3400 (regTwo!33111 r!7292) s!2326))))

(declare-fun b!6383143 () Bool)

(assert (=> b!6383143 (= e!3874714 (= s!2326 (Cons!65074 (c!1162920 r!7292) Nil!65074)))))

(declare-fun bm!545498 () Bool)

(assert (=> bm!545498 (= call!545503 (Exists!3369 (ite c!1163132 lambda!352180 lambda!352181)))))

(declare-fun b!6383144 () Bool)

(declare-fun c!1163131 () Bool)

(assert (=> b!6383144 (= c!1163131 ((_ is ElementMatch!16299) r!7292))))

(assert (=> b!6383144 (= e!3874711 e!3874714)))

(assert (= (and d!2001153 c!1163134) b!6383137))

(assert (= (and d!2001153 (not c!1163134)) b!6383140))

(assert (= (and b!6383140 res!2625635) b!6383144))

(assert (= (and b!6383144 c!1163131) b!6383143))

(assert (= (and b!6383144 (not c!1163131)) b!6383135))

(assert (= (and b!6383135 c!1163133) b!6383134))

(assert (= (and b!6383135 (not c!1163133)) b!6383136))

(assert (= (and b!6383134 (not res!2625636)) b!6383142))

(assert (= (and b!6383136 c!1163132) b!6383141))

(assert (= (and b!6383136 (not c!1163132)) b!6383138))

(assert (= (and b!6383141 (not res!2625637)) b!6383139))

(assert (= (or b!6383139 b!6383138) bm!545498))

(assert (= (or b!6383137 b!6383141) bm!545497))

(declare-fun m!7183068 () Bool)

(assert (=> b!6383134 m!7183068))

(assert (=> bm!545497 m!7182968))

(declare-fun m!7183070 () Bool)

(assert (=> b!6383142 m!7183070))

(declare-fun m!7183072 () Bool)

(assert (=> bm!545498 m!7183072))

(assert (=> b!6382398 d!2001153))

(declare-fun b!6383145 () Bool)

(declare-fun e!3874721 () Bool)

(assert (=> b!6383145 (= e!3874721 (matchR!8482 (derivativeStep!5003 r!7292 (head!13087 s!2326)) (tail!12172 s!2326)))))

(declare-fun b!6383146 () Bool)

(declare-fun e!3874717 () Bool)

(declare-fun e!3874720 () Bool)

(assert (=> b!6383146 (= e!3874717 e!3874720)))

(declare-fun res!2625639 () Bool)

(assert (=> b!6383146 (=> (not res!2625639) (not e!3874720))))

(declare-fun lt!2370950 () Bool)

(assert (=> b!6383146 (= res!2625639 (not lt!2370950))))

(declare-fun d!2001155 () Bool)

(declare-fun e!3874716 () Bool)

(assert (=> d!2001155 e!3874716))

(declare-fun c!1163136 () Bool)

(assert (=> d!2001155 (= c!1163136 ((_ is EmptyExpr!16299) r!7292))))

(assert (=> d!2001155 (= lt!2370950 e!3874721)))

(declare-fun c!1163137 () Bool)

(assert (=> d!2001155 (= c!1163137 (isEmpty!37205 s!2326))))

(assert (=> d!2001155 (validRegex!8035 r!7292)))

(assert (=> d!2001155 (= (matchR!8482 r!7292 s!2326) lt!2370950)))

(declare-fun b!6383147 () Bool)

(declare-fun call!545504 () Bool)

(assert (=> b!6383147 (= e!3874716 (= lt!2370950 call!545504))))

(declare-fun b!6383148 () Bool)

(declare-fun e!3874719 () Bool)

(assert (=> b!6383148 (= e!3874716 e!3874719)))

(declare-fun c!1163135 () Bool)

(assert (=> b!6383148 (= c!1163135 ((_ is EmptyLang!16299) r!7292))))

(declare-fun b!6383149 () Bool)

(assert (=> b!6383149 (= e!3874721 (nullable!6292 r!7292))))

(declare-fun b!6383150 () Bool)

(declare-fun res!2625643 () Bool)

(declare-fun e!3874718 () Bool)

(assert (=> b!6383150 (=> res!2625643 e!3874718)))

(assert (=> b!6383150 (= res!2625643 (not (isEmpty!37205 (tail!12172 s!2326))))))

(declare-fun b!6383151 () Bool)

(declare-fun res!2625638 () Bool)

(declare-fun e!3874715 () Bool)

(assert (=> b!6383151 (=> (not res!2625638) (not e!3874715))))

(assert (=> b!6383151 (= res!2625638 (isEmpty!37205 (tail!12172 s!2326)))))

(declare-fun bm!545499 () Bool)

(assert (=> bm!545499 (= call!545504 (isEmpty!37205 s!2326))))

(declare-fun b!6383152 () Bool)

(declare-fun res!2625641 () Bool)

(assert (=> b!6383152 (=> (not res!2625641) (not e!3874715))))

(assert (=> b!6383152 (= res!2625641 (not call!545504))))

(declare-fun b!6383153 () Bool)

(assert (=> b!6383153 (= e!3874720 e!3874718)))

(declare-fun res!2625640 () Bool)

(assert (=> b!6383153 (=> res!2625640 e!3874718)))

(assert (=> b!6383153 (= res!2625640 call!545504)))

(declare-fun b!6383154 () Bool)

(assert (=> b!6383154 (= e!3874719 (not lt!2370950))))

(declare-fun b!6383155 () Bool)

(declare-fun res!2625644 () Bool)

(assert (=> b!6383155 (=> res!2625644 e!3874717)))

(assert (=> b!6383155 (= res!2625644 (not ((_ is ElementMatch!16299) r!7292)))))

(assert (=> b!6383155 (= e!3874719 e!3874717)))

(declare-fun b!6383156 () Bool)

(assert (=> b!6383156 (= e!3874715 (= (head!13087 s!2326) (c!1162920 r!7292)))))

(declare-fun b!6383157 () Bool)

(declare-fun res!2625645 () Bool)

(assert (=> b!6383157 (=> res!2625645 e!3874717)))

(assert (=> b!6383157 (= res!2625645 e!3874715)))

(declare-fun res!2625642 () Bool)

(assert (=> b!6383157 (=> (not res!2625642) (not e!3874715))))

(assert (=> b!6383157 (= res!2625642 lt!2370950)))

(declare-fun b!6383158 () Bool)

(assert (=> b!6383158 (= e!3874718 (not (= (head!13087 s!2326) (c!1162920 r!7292))))))

(assert (= (and d!2001155 c!1163137) b!6383149))

(assert (= (and d!2001155 (not c!1163137)) b!6383145))

(assert (= (and d!2001155 c!1163136) b!6383147))

(assert (= (and d!2001155 (not c!1163136)) b!6383148))

(assert (= (and b!6383148 c!1163135) b!6383154))

(assert (= (and b!6383148 (not c!1163135)) b!6383155))

(assert (= (and b!6383155 (not res!2625644)) b!6383157))

(assert (= (and b!6383157 res!2625642) b!6383152))

(assert (= (and b!6383152 res!2625641) b!6383151))

(assert (= (and b!6383151 res!2625638) b!6383156))

(assert (= (and b!6383157 (not res!2625645)) b!6383146))

(assert (= (and b!6383146 res!2625639) b!6383153))

(assert (= (and b!6383153 (not res!2625640)) b!6383150))

(assert (= (and b!6383150 (not res!2625643)) b!6383158))

(assert (= (or b!6383147 b!6383152 b!6383153) bm!545499))

(assert (=> b!6383145 m!7182960))

(assert (=> b!6383145 m!7182960))

(declare-fun m!7183074 () Bool)

(assert (=> b!6383145 m!7183074))

(assert (=> b!6383145 m!7182964))

(assert (=> b!6383145 m!7183074))

(assert (=> b!6383145 m!7182964))

(declare-fun m!7183076 () Bool)

(assert (=> b!6383145 m!7183076))

(assert (=> bm!545499 m!7182968))

(assert (=> b!6383158 m!7182960))

(assert (=> b!6383150 m!7182964))

(assert (=> b!6383150 m!7182964))

(assert (=> b!6383150 m!7182970))

(assert (=> b!6383156 m!7182960))

(assert (=> b!6383151 m!7182964))

(assert (=> b!6383151 m!7182964))

(assert (=> b!6383151 m!7182970))

(declare-fun m!7183078 () Bool)

(assert (=> b!6383149 m!7183078))

(assert (=> d!2001155 m!7182968))

(assert (=> d!2001155 m!7182516))

(assert (=> b!6382398 d!2001155))

(declare-fun d!2001157 () Bool)

(assert (=> d!2001157 (= (matchR!8482 r!7292 s!2326) (matchRSpec!3400 r!7292 s!2326))))

(declare-fun lt!2370951 () Unit!158527)

(assert (=> d!2001157 (= lt!2370951 (choose!47488 r!7292 s!2326))))

(assert (=> d!2001157 (validRegex!8035 r!7292)))

(assert (=> d!2001157 (= (mainMatchTheorem!3400 r!7292 s!2326) lt!2370951)))

(declare-fun bs!1597455 () Bool)

(assert (= bs!1597455 d!2001157))

(assert (=> bs!1597455 m!7182540))

(assert (=> bs!1597455 m!7182538))

(declare-fun m!7183080 () Bool)

(assert (=> bs!1597455 m!7183080))

(assert (=> bs!1597455 m!7182516))

(assert (=> b!6382398 d!2001157))

(declare-fun bs!1597456 () Bool)

(declare-fun d!2001159 () Bool)

(assert (= bs!1597456 (and d!2001159 d!2001047)))

(declare-fun lambda!352182 () Int)

(assert (=> bs!1597456 (= lambda!352182 lambda!352137)))

(declare-fun bs!1597457 () Bool)

(assert (= bs!1597457 (and d!2001159 d!2001089)))

(assert (=> bs!1597457 (= lambda!352182 lambda!352153)))

(declare-fun bs!1597458 () Bool)

(assert (= bs!1597458 (and d!2001159 d!2001105)))

(assert (=> bs!1597458 (= lambda!352182 lambda!352157)))

(declare-fun bs!1597459 () Bool)

(assert (= bs!1597459 (and d!2001159 d!2001141)))

(assert (=> bs!1597459 (= lambda!352182 lambda!352176)))

(assert (=> d!2001159 (= (inv!83994 (h!71521 zl!343)) (forall!15477 (exprs!6183 (h!71521 zl!343)) lambda!352182))))

(declare-fun bs!1597460 () Bool)

(assert (= bs!1597460 d!2001159))

(declare-fun m!7183082 () Bool)

(assert (=> bs!1597460 m!7183082))

(assert (=> b!6382380 d!2001159))

(declare-fun d!2001161 () Bool)

(assert (=> d!2001161 (= (flatMap!1804 lt!2370825 lambda!352120) (choose!47483 lt!2370825 lambda!352120))))

(declare-fun bs!1597461 () Bool)

(assert (= bs!1597461 d!2001161))

(declare-fun m!7183084 () Bool)

(assert (=> bs!1597461 m!7183084))

(assert (=> b!6382400 d!2001161))

(declare-fun d!2001163 () Bool)

(assert (=> d!2001163 (= (flatMap!1804 lt!2370851 lambda!352120) (dynLambda!25817 lambda!352120 lt!2370847))))

(declare-fun lt!2370952 () Unit!158527)

(assert (=> d!2001163 (= lt!2370952 (choose!47485 lt!2370851 lt!2370847 lambda!352120))))

(assert (=> d!2001163 (= lt!2370851 (store ((as const (Array Context!11366 Bool)) false) lt!2370847 true))))

(assert (=> d!2001163 (= (lemmaFlatMapOnSingletonSet!1330 lt!2370851 lt!2370847 lambda!352120) lt!2370952)))

(declare-fun b_lambda!242537 () Bool)

(assert (=> (not b_lambda!242537) (not d!2001163)))

(declare-fun bs!1597462 () Bool)

(assert (= bs!1597462 d!2001163))

(assert (=> bs!1597462 m!7182472))

(declare-fun m!7183086 () Bool)

(assert (=> bs!1597462 m!7183086))

(declare-fun m!7183088 () Bool)

(assert (=> bs!1597462 m!7183088))

(assert (=> bs!1597462 m!7182468))

(assert (=> b!6382400 d!2001163))

(declare-fun d!2001165 () Bool)

(assert (=> d!2001165 (= (flatMap!1804 lt!2370825 lambda!352120) (dynLambda!25817 lambda!352120 lt!2370844))))

(declare-fun lt!2370953 () Unit!158527)

(assert (=> d!2001165 (= lt!2370953 (choose!47485 lt!2370825 lt!2370844 lambda!352120))))

(assert (=> d!2001165 (= lt!2370825 (store ((as const (Array Context!11366 Bool)) false) lt!2370844 true))))

(assert (=> d!2001165 (= (lemmaFlatMapOnSingletonSet!1330 lt!2370825 lt!2370844 lambda!352120) lt!2370953)))

(declare-fun b_lambda!242539 () Bool)

(assert (=> (not b_lambda!242539) (not d!2001165)))

(declare-fun bs!1597463 () Bool)

(assert (= bs!1597463 d!2001165))

(assert (=> bs!1597463 m!7182476))

(declare-fun m!7183090 () Bool)

(assert (=> bs!1597463 m!7183090))

(declare-fun m!7183092 () Bool)

(assert (=> bs!1597463 m!7183092))

(assert (=> bs!1597463 m!7182466))

(assert (=> b!6382400 d!2001165))

(declare-fun d!2001167 () Bool)

(declare-fun lt!2370954 () Regex!16299)

(assert (=> d!2001167 (validRegex!8035 lt!2370954)))

(assert (=> d!2001167 (= lt!2370954 (generalisedUnion!2143 (unfocusZipperList!1720 (Cons!65073 lt!2370847 Nil!65073))))))

(assert (=> d!2001167 (= (unfocusZipper!2041 (Cons!65073 lt!2370847 Nil!65073)) lt!2370954)))

(declare-fun bs!1597464 () Bool)

(assert (= bs!1597464 d!2001167))

(declare-fun m!7183094 () Bool)

(assert (=> bs!1597464 m!7183094))

(declare-fun m!7183096 () Bool)

(assert (=> bs!1597464 m!7183096))

(assert (=> bs!1597464 m!7183096))

(declare-fun m!7183098 () Bool)

(assert (=> bs!1597464 m!7183098))

(assert (=> b!6382400 d!2001167))

(declare-fun b!6383159 () Bool)

(declare-fun e!3874724 () Bool)

(assert (=> b!6383159 (= e!3874724 (nullable!6292 (h!71520 (exprs!6183 lt!2370847))))))

(declare-fun b!6383160 () Bool)

(declare-fun e!3874722 () (InoxSet Context!11366))

(assert (=> b!6383160 (= e!3874722 ((as const (Array Context!11366 Bool)) false))))

(declare-fun bm!545500 () Bool)

(declare-fun call!545505 () (InoxSet Context!11366))

(assert (=> bm!545500 (= call!545505 (derivationStepZipperDown!1547 (h!71520 (exprs!6183 lt!2370847)) (Context!11367 (t!378800 (exprs!6183 lt!2370847))) (h!71522 s!2326)))))

(declare-fun b!6383161 () Bool)

(declare-fun e!3874723 () (InoxSet Context!11366))

(assert (=> b!6383161 (= e!3874723 e!3874722)))

(declare-fun c!1163138 () Bool)

(assert (=> b!6383161 (= c!1163138 ((_ is Cons!65072) (exprs!6183 lt!2370847)))))

(declare-fun b!6383162 () Bool)

(assert (=> b!6383162 (= e!3874722 call!545505)))

(declare-fun b!6383163 () Bool)

(assert (=> b!6383163 (= e!3874723 ((_ map or) call!545505 (derivationStepZipperUp!1473 (Context!11367 (t!378800 (exprs!6183 lt!2370847))) (h!71522 s!2326))))))

(declare-fun d!2001169 () Bool)

(declare-fun c!1163139 () Bool)

(assert (=> d!2001169 (= c!1163139 e!3874724)))

(declare-fun res!2625646 () Bool)

(assert (=> d!2001169 (=> (not res!2625646) (not e!3874724))))

(assert (=> d!2001169 (= res!2625646 ((_ is Cons!65072) (exprs!6183 lt!2370847)))))

(assert (=> d!2001169 (= (derivationStepZipperUp!1473 lt!2370847 (h!71522 s!2326)) e!3874723)))

(assert (= (and d!2001169 res!2625646) b!6383159))

(assert (= (and d!2001169 c!1163139) b!6383163))

(assert (= (and d!2001169 (not c!1163139)) b!6383161))

(assert (= (and b!6383161 c!1163138) b!6383162))

(assert (= (and b!6383161 (not c!1163138)) b!6383160))

(assert (= (or b!6383163 b!6383162) bm!545500))

(declare-fun m!7183100 () Bool)

(assert (=> b!6383159 m!7183100))

(declare-fun m!7183102 () Bool)

(assert (=> bm!545500 m!7183102))

(declare-fun m!7183104 () Bool)

(assert (=> b!6383163 m!7183104))

(assert (=> b!6382400 d!2001169))

(declare-fun d!2001171 () Bool)

(assert (=> d!2001171 (= (flatMap!1804 lt!2370851 lambda!352120) (choose!47483 lt!2370851 lambda!352120))))

(declare-fun bs!1597465 () Bool)

(assert (= bs!1597465 d!2001171))

(declare-fun m!7183106 () Bool)

(assert (=> bs!1597465 m!7183106))

(assert (=> b!6382400 d!2001171))

(declare-fun b!6383164 () Bool)

(declare-fun e!3874727 () Bool)

(assert (=> b!6383164 (= e!3874727 (nullable!6292 (h!71520 (exprs!6183 lt!2370844))))))

(declare-fun b!6383165 () Bool)

(declare-fun e!3874725 () (InoxSet Context!11366))

(assert (=> b!6383165 (= e!3874725 ((as const (Array Context!11366 Bool)) false))))

(declare-fun bm!545501 () Bool)

(declare-fun call!545506 () (InoxSet Context!11366))

(assert (=> bm!545501 (= call!545506 (derivationStepZipperDown!1547 (h!71520 (exprs!6183 lt!2370844)) (Context!11367 (t!378800 (exprs!6183 lt!2370844))) (h!71522 s!2326)))))

(declare-fun b!6383166 () Bool)

(declare-fun e!3874726 () (InoxSet Context!11366))

(assert (=> b!6383166 (= e!3874726 e!3874725)))

(declare-fun c!1163140 () Bool)

(assert (=> b!6383166 (= c!1163140 ((_ is Cons!65072) (exprs!6183 lt!2370844)))))

(declare-fun b!6383167 () Bool)

(assert (=> b!6383167 (= e!3874725 call!545506)))

(declare-fun b!6383168 () Bool)

(assert (=> b!6383168 (= e!3874726 ((_ map or) call!545506 (derivationStepZipperUp!1473 (Context!11367 (t!378800 (exprs!6183 lt!2370844))) (h!71522 s!2326))))))

(declare-fun d!2001173 () Bool)

(declare-fun c!1163141 () Bool)

(assert (=> d!2001173 (= c!1163141 e!3874727)))

(declare-fun res!2625647 () Bool)

(assert (=> d!2001173 (=> (not res!2625647) (not e!3874727))))

(assert (=> d!2001173 (= res!2625647 ((_ is Cons!65072) (exprs!6183 lt!2370844)))))

(assert (=> d!2001173 (= (derivationStepZipperUp!1473 lt!2370844 (h!71522 s!2326)) e!3874726)))

(assert (= (and d!2001173 res!2625647) b!6383164))

(assert (= (and d!2001173 c!1163141) b!6383168))

(assert (= (and d!2001173 (not c!1163141)) b!6383166))

(assert (= (and b!6383166 c!1163140) b!6383167))

(assert (= (and b!6383166 (not c!1163140)) b!6383165))

(assert (= (or b!6383168 b!6383167) bm!545501))

(declare-fun m!7183108 () Bool)

(assert (=> b!6383164 m!7183108))

(declare-fun m!7183110 () Bool)

(assert (=> bm!545501 m!7183110))

(declare-fun m!7183112 () Bool)

(assert (=> b!6383168 m!7183112))

(assert (=> b!6382400 d!2001173))

(declare-fun b!6383169 () Bool)

(declare-fun e!3874733 () Bool)

(declare-fun e!3874730 () Bool)

(assert (=> b!6383169 (= e!3874733 e!3874730)))

(declare-fun c!1163143 () Bool)

(assert (=> b!6383169 (= c!1163143 ((_ is Star!16299) r!7292))))

(declare-fun b!6383170 () Bool)

(declare-fun e!3874729 () Bool)

(declare-fun e!3874732 () Bool)

(assert (=> b!6383170 (= e!3874729 e!3874732)))

(declare-fun res!2625648 () Bool)

(assert (=> b!6383170 (=> (not res!2625648) (not e!3874732))))

(declare-fun call!545509 () Bool)

(assert (=> b!6383170 (= res!2625648 call!545509)))

(declare-fun c!1163142 () Bool)

(declare-fun bm!545502 () Bool)

(declare-fun call!545507 () Bool)

(assert (=> bm!545502 (= call!545507 (validRegex!8035 (ite c!1163143 (reg!16628 r!7292) (ite c!1163142 (regTwo!33111 r!7292) (regTwo!33110 r!7292)))))))

(declare-fun b!6383171 () Bool)

(declare-fun e!3874728 () Bool)

(assert (=> b!6383171 (= e!3874730 e!3874728)))

(assert (=> b!6383171 (= c!1163142 ((_ is Union!16299) r!7292))))

(declare-fun d!2001175 () Bool)

(declare-fun res!2625650 () Bool)

(assert (=> d!2001175 (=> res!2625650 e!3874733)))

(assert (=> d!2001175 (= res!2625650 ((_ is ElementMatch!16299) r!7292))))

(assert (=> d!2001175 (= (validRegex!8035 r!7292) e!3874733)))

(declare-fun b!6383172 () Bool)

(declare-fun res!2625651 () Bool)

(assert (=> b!6383172 (=> res!2625651 e!3874729)))

(assert (=> b!6383172 (= res!2625651 (not ((_ is Concat!25144) r!7292)))))

(assert (=> b!6383172 (= e!3874728 e!3874729)))

(declare-fun b!6383173 () Bool)

(declare-fun e!3874731 () Bool)

(declare-fun call!545508 () Bool)

(assert (=> b!6383173 (= e!3874731 call!545508)))

(declare-fun bm!545503 () Bool)

(assert (=> bm!545503 (= call!545508 call!545507)))

(declare-fun b!6383174 () Bool)

(assert (=> b!6383174 (= e!3874732 call!545508)))

(declare-fun b!6383175 () Bool)

(declare-fun e!3874734 () Bool)

(assert (=> b!6383175 (= e!3874734 call!545507)))

(declare-fun bm!545504 () Bool)

(assert (=> bm!545504 (= call!545509 (validRegex!8035 (ite c!1163142 (regOne!33111 r!7292) (regOne!33110 r!7292))))))

(declare-fun b!6383176 () Bool)

(declare-fun res!2625649 () Bool)

(assert (=> b!6383176 (=> (not res!2625649) (not e!3874731))))

(assert (=> b!6383176 (= res!2625649 call!545509)))

(assert (=> b!6383176 (= e!3874728 e!3874731)))

(declare-fun b!6383177 () Bool)

(assert (=> b!6383177 (= e!3874730 e!3874734)))

(declare-fun res!2625652 () Bool)

(assert (=> b!6383177 (= res!2625652 (not (nullable!6292 (reg!16628 r!7292))))))

(assert (=> b!6383177 (=> (not res!2625652) (not e!3874734))))

(assert (= (and d!2001175 (not res!2625650)) b!6383169))

(assert (= (and b!6383169 c!1163143) b!6383177))

(assert (= (and b!6383169 (not c!1163143)) b!6383171))

(assert (= (and b!6383177 res!2625652) b!6383175))

(assert (= (and b!6383171 c!1163142) b!6383176))

(assert (= (and b!6383171 (not c!1163142)) b!6383172))

(assert (= (and b!6383176 res!2625649) b!6383173))

(assert (= (and b!6383172 (not res!2625651)) b!6383170))

(assert (= (and b!6383170 res!2625648) b!6383174))

(assert (= (or b!6383173 b!6383174) bm!545503))

(assert (= (or b!6383176 b!6383170) bm!545504))

(assert (= (or b!6383175 bm!545503) bm!545502))

(declare-fun m!7183114 () Bool)

(assert (=> bm!545502 m!7183114))

(declare-fun m!7183116 () Bool)

(assert (=> bm!545504 m!7183116))

(declare-fun m!7183118 () Bool)

(assert (=> b!6383177 m!7183118))

(assert (=> start!632298 d!2001175))

(declare-fun b!6383178 () Bool)

(declare-fun lt!2370957 () Unit!158527)

(declare-fun lt!2370955 () Unit!158527)

(assert (=> b!6383178 (= lt!2370957 lt!2370955)))

(assert (=> b!6383178 (= (++!14367 (++!14367 Nil!65074 (Cons!65074 (h!71522 s!2326) Nil!65074)) (t!378802 s!2326)) s!2326)))

(assert (=> b!6383178 (= lt!2370955 (lemmaMoveElementToOtherListKeepsConcatEq!2462 Nil!65074 (h!71522 s!2326) (t!378802 s!2326) s!2326))))

(declare-fun e!3874739 () Option!16190)

(assert (=> b!6383178 (= e!3874739 (findConcatSeparation!2604 (regOne!33110 r!7292) (regTwo!33110 r!7292) (++!14367 Nil!65074 (Cons!65074 (h!71522 s!2326) Nil!65074)) (t!378802 s!2326) s!2326))))

(declare-fun b!6383179 () Bool)

(declare-fun res!2625653 () Bool)

(declare-fun e!3874736 () Bool)

(assert (=> b!6383179 (=> (not res!2625653) (not e!3874736))))

(declare-fun lt!2370956 () Option!16190)

(assert (=> b!6383179 (= res!2625653 (matchR!8482 (regTwo!33110 r!7292) (_2!36581 (get!22532 lt!2370956))))))

(declare-fun b!6383180 () Bool)

(declare-fun e!3874737 () Option!16190)

(assert (=> b!6383180 (= e!3874737 (Some!16189 (tuple2!66557 Nil!65074 s!2326)))))

(declare-fun b!6383181 () Bool)

(declare-fun e!3874735 () Bool)

(assert (=> b!6383181 (= e!3874735 (not (isDefined!12893 lt!2370956)))))

(declare-fun d!2001177 () Bool)

(assert (=> d!2001177 e!3874735))

(declare-fun res!2625656 () Bool)

(assert (=> d!2001177 (=> res!2625656 e!3874735)))

(assert (=> d!2001177 (= res!2625656 e!3874736)))

(declare-fun res!2625657 () Bool)

(assert (=> d!2001177 (=> (not res!2625657) (not e!3874736))))

(assert (=> d!2001177 (= res!2625657 (isDefined!12893 lt!2370956))))

(assert (=> d!2001177 (= lt!2370956 e!3874737)))

(declare-fun c!1163144 () Bool)

(declare-fun e!3874738 () Bool)

(assert (=> d!2001177 (= c!1163144 e!3874738)))

(declare-fun res!2625655 () Bool)

(assert (=> d!2001177 (=> (not res!2625655) (not e!3874738))))

(assert (=> d!2001177 (= res!2625655 (matchR!8482 (regOne!33110 r!7292) Nil!65074))))

(assert (=> d!2001177 (validRegex!8035 (regOne!33110 r!7292))))

(assert (=> d!2001177 (= (findConcatSeparation!2604 (regOne!33110 r!7292) (regTwo!33110 r!7292) Nil!65074 s!2326 s!2326) lt!2370956)))

(declare-fun b!6383182 () Bool)

(assert (=> b!6383182 (= e!3874739 None!16189)))

(declare-fun b!6383183 () Bool)

(assert (=> b!6383183 (= e!3874737 e!3874739)))

(declare-fun c!1163145 () Bool)

(assert (=> b!6383183 (= c!1163145 ((_ is Nil!65074) s!2326))))

(declare-fun b!6383184 () Bool)

(declare-fun res!2625654 () Bool)

(assert (=> b!6383184 (=> (not res!2625654) (not e!3874736))))

(assert (=> b!6383184 (= res!2625654 (matchR!8482 (regOne!33110 r!7292) (_1!36581 (get!22532 lt!2370956))))))

(declare-fun b!6383185 () Bool)

(assert (=> b!6383185 (= e!3874738 (matchR!8482 (regTwo!33110 r!7292) s!2326))))

(declare-fun b!6383186 () Bool)

(assert (=> b!6383186 (= e!3874736 (= (++!14367 (_1!36581 (get!22532 lt!2370956)) (_2!36581 (get!22532 lt!2370956))) s!2326))))

(assert (= (and d!2001177 res!2625655) b!6383185))

(assert (= (and d!2001177 c!1163144) b!6383180))

(assert (= (and d!2001177 (not c!1163144)) b!6383183))

(assert (= (and b!6383183 c!1163145) b!6383182))

(assert (= (and b!6383183 (not c!1163145)) b!6383178))

(assert (= (and d!2001177 res!2625657) b!6383184))

(assert (= (and b!6383184 res!2625654) b!6383179))

(assert (= (and b!6383179 res!2625653) b!6383186))

(assert (= (and d!2001177 (not res!2625656)) b!6383181))

(declare-fun m!7183120 () Bool)

(assert (=> b!6383179 m!7183120))

(declare-fun m!7183122 () Bool)

(assert (=> b!6383179 m!7183122))

(assert (=> b!6383178 m!7183050))

(assert (=> b!6383178 m!7183050))

(assert (=> b!6383178 m!7183052))

(assert (=> b!6383178 m!7183054))

(assert (=> b!6383178 m!7183050))

(declare-fun m!7183124 () Bool)

(assert (=> b!6383178 m!7183124))

(declare-fun m!7183126 () Bool)

(assert (=> b!6383181 m!7183126))

(assert (=> d!2001177 m!7183126))

(declare-fun m!7183128 () Bool)

(assert (=> d!2001177 m!7183128))

(declare-fun m!7183130 () Bool)

(assert (=> d!2001177 m!7183130))

(assert (=> b!6383185 m!7183062))

(assert (=> b!6383184 m!7183120))

(declare-fun m!7183132 () Bool)

(assert (=> b!6383184 m!7183132))

(assert (=> b!6383186 m!7183120))

(declare-fun m!7183134 () Bool)

(assert (=> b!6383186 m!7183134))

(assert (=> b!6382401 d!2001177))

(declare-fun d!2001179 () Bool)

(assert (=> d!2001179 (= (Exists!3369 lambda!352118) (choose!47489 lambda!352118))))

(declare-fun bs!1597466 () Bool)

(assert (= bs!1597466 d!2001179))

(declare-fun m!7183136 () Bool)

(assert (=> bs!1597466 m!7183136))

(assert (=> b!6382401 d!2001179))

(declare-fun d!2001181 () Bool)

(assert (=> d!2001181 (= (Exists!3369 lambda!352119) (choose!47489 lambda!352119))))

(declare-fun bs!1597467 () Bool)

(assert (= bs!1597467 d!2001181))

(declare-fun m!7183138 () Bool)

(assert (=> bs!1597467 m!7183138))

(assert (=> b!6382401 d!2001181))

(declare-fun bs!1597468 () Bool)

(declare-fun d!2001183 () Bool)

(assert (= bs!1597468 (and d!2001183 b!6382401)))

(declare-fun lambda!352183 () Int)

(assert (=> bs!1597468 (= lambda!352183 lambda!352118)))

(declare-fun bs!1597469 () Bool)

(assert (= bs!1597469 (and d!2001183 b!6383139)))

(assert (=> bs!1597469 (not (= lambda!352183 lambda!352180))))

(assert (=> bs!1597468 (not (= lambda!352183 lambda!352119))))

(declare-fun bs!1597470 () Bool)

(assert (= bs!1597470 (and d!2001183 b!6382397)))

(assert (=> bs!1597470 (= (= (regOne!33110 r!7292) lt!2370832) (= lambda!352183 lambda!352121))))

(declare-fun bs!1597471 () Bool)

(assert (= bs!1597471 (and d!2001183 d!2001147)))

(assert (=> bs!1597471 (= (= (regOne!33110 r!7292) lt!2370832) (= lambda!352183 lambda!352179))))

(declare-fun bs!1597472 () Bool)

(assert (= bs!1597472 (and d!2001183 b!6383138)))

(assert (=> bs!1597472 (not (= lambda!352183 lambda!352181))))

(declare-fun bs!1597473 () Bool)

(assert (= bs!1597473 (and d!2001183 b!6383039)))

(assert (=> bs!1597473 (not (= lambda!352183 lambda!352173))))

(declare-fun bs!1597474 () Bool)

(assert (= bs!1597474 (and d!2001183 b!6383040)))

(assert (=> bs!1597474 (not (= lambda!352183 lambda!352172))))

(assert (=> d!2001183 true))

(assert (=> d!2001183 true))

(assert (=> d!2001183 true))

(assert (=> d!2001183 (= (isDefined!12893 (findConcatSeparation!2604 (regOne!33110 r!7292) (regTwo!33110 r!7292) Nil!65074 s!2326 s!2326)) (Exists!3369 lambda!352183))))

(declare-fun lt!2370958 () Unit!158527)

(assert (=> d!2001183 (= lt!2370958 (choose!47490 (regOne!33110 r!7292) (regTwo!33110 r!7292) s!2326))))

(assert (=> d!2001183 (validRegex!8035 (regOne!33110 r!7292))))

(assert (=> d!2001183 (= (lemmaFindConcatSeparationEquivalentToExists!2368 (regOne!33110 r!7292) (regTwo!33110 r!7292) s!2326) lt!2370958)))

(declare-fun bs!1597475 () Bool)

(assert (= bs!1597475 d!2001183))

(assert (=> bs!1597475 m!7182500))

(assert (=> bs!1597475 m!7182502))

(declare-fun m!7183140 () Bool)

(assert (=> bs!1597475 m!7183140))

(assert (=> bs!1597475 m!7183130))

(declare-fun m!7183142 () Bool)

(assert (=> bs!1597475 m!7183142))

(assert (=> bs!1597475 m!7182500))

(assert (=> b!6382401 d!2001183))

(declare-fun bs!1597476 () Bool)

(declare-fun d!2001185 () Bool)

(assert (= bs!1597476 (and d!2001185 b!6382401)))

(declare-fun lambda!352188 () Int)

(assert (=> bs!1597476 (= lambda!352188 lambda!352118)))

(declare-fun bs!1597477 () Bool)

(assert (= bs!1597477 (and d!2001185 b!6383139)))

(assert (=> bs!1597477 (not (= lambda!352188 lambda!352180))))

(declare-fun bs!1597478 () Bool)

(assert (= bs!1597478 (and d!2001185 d!2001183)))

(assert (=> bs!1597478 (= lambda!352188 lambda!352183)))

(assert (=> bs!1597476 (not (= lambda!352188 lambda!352119))))

(declare-fun bs!1597479 () Bool)

(assert (= bs!1597479 (and d!2001185 b!6382397)))

(assert (=> bs!1597479 (= (= (regOne!33110 r!7292) lt!2370832) (= lambda!352188 lambda!352121))))

(declare-fun bs!1597480 () Bool)

(assert (= bs!1597480 (and d!2001185 d!2001147)))

(assert (=> bs!1597480 (= (= (regOne!33110 r!7292) lt!2370832) (= lambda!352188 lambda!352179))))

(declare-fun bs!1597481 () Bool)

(assert (= bs!1597481 (and d!2001185 b!6383138)))

(assert (=> bs!1597481 (not (= lambda!352188 lambda!352181))))

(declare-fun bs!1597482 () Bool)

(assert (= bs!1597482 (and d!2001185 b!6383039)))

(assert (=> bs!1597482 (not (= lambda!352188 lambda!352173))))

(declare-fun bs!1597483 () Bool)

(assert (= bs!1597483 (and d!2001185 b!6383040)))

(assert (=> bs!1597483 (not (= lambda!352188 lambda!352172))))

(assert (=> d!2001185 true))

(assert (=> d!2001185 true))

(assert (=> d!2001185 true))

(declare-fun lambda!352189 () Int)

(assert (=> bs!1597476 (not (= lambda!352189 lambda!352118))))

(assert (=> bs!1597477 (not (= lambda!352189 lambda!352180))))

(assert (=> bs!1597478 (not (= lambda!352189 lambda!352183))))

(assert (=> bs!1597476 (= lambda!352189 lambda!352119)))

(assert (=> bs!1597479 (not (= lambda!352189 lambda!352121))))

(declare-fun bs!1597484 () Bool)

(assert (= bs!1597484 d!2001185))

(assert (=> bs!1597484 (not (= lambda!352189 lambda!352188))))

(assert (=> bs!1597480 (not (= lambda!352189 lambda!352179))))

(assert (=> bs!1597481 (= lambda!352189 lambda!352181)))

(assert (=> bs!1597482 (= (and (= (regOne!33110 r!7292) (regOne!33110 lt!2370846)) (= (regTwo!33110 r!7292) (regTwo!33110 lt!2370846))) (= lambda!352189 lambda!352173))))

(assert (=> bs!1597483 (not (= lambda!352189 lambda!352172))))

(assert (=> d!2001185 true))

(assert (=> d!2001185 true))

(assert (=> d!2001185 true))

(assert (=> d!2001185 (= (Exists!3369 lambda!352188) (Exists!3369 lambda!352189))))

(declare-fun lt!2370961 () Unit!158527)

(declare-fun choose!47492 (Regex!16299 Regex!16299 List!65198) Unit!158527)

(assert (=> d!2001185 (= lt!2370961 (choose!47492 (regOne!33110 r!7292) (regTwo!33110 r!7292) s!2326))))

(assert (=> d!2001185 (validRegex!8035 (regOne!33110 r!7292))))

(assert (=> d!2001185 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1906 (regOne!33110 r!7292) (regTwo!33110 r!7292) s!2326) lt!2370961)))

(declare-fun m!7183144 () Bool)

(assert (=> bs!1597484 m!7183144))

(declare-fun m!7183146 () Bool)

(assert (=> bs!1597484 m!7183146))

(declare-fun m!7183148 () Bool)

(assert (=> bs!1597484 m!7183148))

(assert (=> bs!1597484 m!7183130))

(assert (=> b!6382401 d!2001185))

(declare-fun d!2001187 () Bool)

(assert (=> d!2001187 (= (isDefined!12893 (findConcatSeparation!2604 (regOne!33110 r!7292) (regTwo!33110 r!7292) Nil!65074 s!2326 s!2326)) (not (isEmpty!37208 (findConcatSeparation!2604 (regOne!33110 r!7292) (regTwo!33110 r!7292) Nil!65074 s!2326 s!2326))))))

(declare-fun bs!1597485 () Bool)

(assert (= bs!1597485 d!2001187))

(assert (=> bs!1597485 m!7182500))

(declare-fun m!7183150 () Bool)

(assert (=> bs!1597485 m!7183150))

(assert (=> b!6382401 d!2001187))

(declare-fun b!6383195 () Bool)

(declare-fun e!3874749 () Bool)

(declare-fun e!3874746 () Bool)

(assert (=> b!6383195 (= e!3874749 e!3874746)))

(declare-fun c!1163147 () Bool)

(assert (=> b!6383195 (= c!1163147 ((_ is Star!16299) (regTwo!33110 r!7292)))))

(declare-fun b!6383196 () Bool)

(declare-fun e!3874745 () Bool)

(declare-fun e!3874748 () Bool)

(assert (=> b!6383196 (= e!3874745 e!3874748)))

(declare-fun res!2625666 () Bool)

(assert (=> b!6383196 (=> (not res!2625666) (not e!3874748))))

(declare-fun call!545512 () Bool)

(assert (=> b!6383196 (= res!2625666 call!545512)))

(declare-fun c!1163146 () Bool)

(declare-fun call!545510 () Bool)

(declare-fun bm!545505 () Bool)

(assert (=> bm!545505 (= call!545510 (validRegex!8035 (ite c!1163147 (reg!16628 (regTwo!33110 r!7292)) (ite c!1163146 (regTwo!33111 (regTwo!33110 r!7292)) (regTwo!33110 (regTwo!33110 r!7292))))))))

(declare-fun b!6383197 () Bool)

(declare-fun e!3874744 () Bool)

(assert (=> b!6383197 (= e!3874746 e!3874744)))

(assert (=> b!6383197 (= c!1163146 ((_ is Union!16299) (regTwo!33110 r!7292)))))

(declare-fun d!2001189 () Bool)

(declare-fun res!2625668 () Bool)

(assert (=> d!2001189 (=> res!2625668 e!3874749)))

(assert (=> d!2001189 (= res!2625668 ((_ is ElementMatch!16299) (regTwo!33110 r!7292)))))

(assert (=> d!2001189 (= (validRegex!8035 (regTwo!33110 r!7292)) e!3874749)))

(declare-fun b!6383198 () Bool)

(declare-fun res!2625669 () Bool)

(assert (=> b!6383198 (=> res!2625669 e!3874745)))

(assert (=> b!6383198 (= res!2625669 (not ((_ is Concat!25144) (regTwo!33110 r!7292))))))

(assert (=> b!6383198 (= e!3874744 e!3874745)))

(declare-fun b!6383199 () Bool)

(declare-fun e!3874747 () Bool)

(declare-fun call!545511 () Bool)

(assert (=> b!6383199 (= e!3874747 call!545511)))

(declare-fun bm!545506 () Bool)

(assert (=> bm!545506 (= call!545511 call!545510)))

(declare-fun b!6383200 () Bool)

(assert (=> b!6383200 (= e!3874748 call!545511)))

(declare-fun b!6383201 () Bool)

(declare-fun e!3874750 () Bool)

(assert (=> b!6383201 (= e!3874750 call!545510)))

(declare-fun bm!545507 () Bool)

(assert (=> bm!545507 (= call!545512 (validRegex!8035 (ite c!1163146 (regOne!33111 (regTwo!33110 r!7292)) (regOne!33110 (regTwo!33110 r!7292)))))))

(declare-fun b!6383202 () Bool)

(declare-fun res!2625667 () Bool)

(assert (=> b!6383202 (=> (not res!2625667) (not e!3874747))))

(assert (=> b!6383202 (= res!2625667 call!545512)))

(assert (=> b!6383202 (= e!3874744 e!3874747)))

(declare-fun b!6383203 () Bool)

(assert (=> b!6383203 (= e!3874746 e!3874750)))

(declare-fun res!2625670 () Bool)

(assert (=> b!6383203 (= res!2625670 (not (nullable!6292 (reg!16628 (regTwo!33110 r!7292)))))))

(assert (=> b!6383203 (=> (not res!2625670) (not e!3874750))))

(assert (= (and d!2001189 (not res!2625668)) b!6383195))

(assert (= (and b!6383195 c!1163147) b!6383203))

(assert (= (and b!6383195 (not c!1163147)) b!6383197))

(assert (= (and b!6383203 res!2625670) b!6383201))

(assert (= (and b!6383197 c!1163146) b!6383202))

(assert (= (and b!6383197 (not c!1163146)) b!6383198))

(assert (= (and b!6383202 res!2625667) b!6383199))

(assert (= (and b!6383198 (not res!2625669)) b!6383196))

(assert (= (and b!6383196 res!2625666) b!6383200))

(assert (= (or b!6383199 b!6383200) bm!545506))

(assert (= (or b!6383202 b!6383196) bm!545507))

(assert (= (or b!6383201 bm!545506) bm!545505))

(declare-fun m!7183152 () Bool)

(assert (=> bm!545505 m!7183152))

(declare-fun m!7183154 () Bool)

(assert (=> bm!545507 m!7183154))

(declare-fun m!7183156 () Bool)

(assert (=> b!6383203 m!7183156))

(assert (=> b!6382382 d!2001189))

(declare-fun d!2001191 () Bool)

(declare-fun c!1163148 () Bool)

(assert (=> d!2001191 (= c!1163148 (isEmpty!37205 s!2326))))

(declare-fun e!3874751 () Bool)

(assert (=> d!2001191 (= (matchZipper!2311 lt!2370848 s!2326) e!3874751)))

(declare-fun b!6383204 () Bool)

(assert (=> b!6383204 (= e!3874751 (nullableZipper!2063 lt!2370848))))

(declare-fun b!6383205 () Bool)

(assert (=> b!6383205 (= e!3874751 (matchZipper!2311 (derivationStepZipper!2265 lt!2370848 (head!13087 s!2326)) (tail!12172 s!2326)))))

(assert (= (and d!2001191 c!1163148) b!6383204))

(assert (= (and d!2001191 (not c!1163148)) b!6383205))

(assert (=> d!2001191 m!7182968))

(declare-fun m!7183158 () Bool)

(assert (=> b!6383204 m!7183158))

(assert (=> b!6383205 m!7182960))

(assert (=> b!6383205 m!7182960))

(declare-fun m!7183160 () Bool)

(assert (=> b!6383205 m!7183160))

(assert (=> b!6383205 m!7182964))

(assert (=> b!6383205 m!7183160))

(assert (=> b!6383205 m!7182964))

(declare-fun m!7183162 () Bool)

(assert (=> b!6383205 m!7183162))

(assert (=> b!6382384 d!2001191))

(declare-fun d!2001193 () Bool)

(declare-fun c!1163149 () Bool)

(assert (=> d!2001193 (= c!1163149 (isEmpty!37205 (t!378802 s!2326)))))

(declare-fun e!3874752 () Bool)

(assert (=> d!2001193 (= (matchZipper!2311 lt!2370837 (t!378802 s!2326)) e!3874752)))

(declare-fun b!6383206 () Bool)

(assert (=> b!6383206 (= e!3874752 (nullableZipper!2063 lt!2370837))))

(declare-fun b!6383207 () Bool)

(assert (=> b!6383207 (= e!3874752 (matchZipper!2311 (derivationStepZipper!2265 lt!2370837 (head!13087 (t!378802 s!2326))) (tail!12172 (t!378802 s!2326))))))

(assert (= (and d!2001193 c!1163149) b!6383206))

(assert (= (and d!2001193 (not c!1163149)) b!6383207))

(assert (=> d!2001193 m!7182668))

(declare-fun m!7183164 () Bool)

(assert (=> b!6383206 m!7183164))

(assert (=> b!6383207 m!7182672))

(assert (=> b!6383207 m!7182672))

(declare-fun m!7183166 () Bool)

(assert (=> b!6383207 m!7183166))

(assert (=> b!6383207 m!7182676))

(assert (=> b!6383207 m!7183166))

(assert (=> b!6383207 m!7182676))

(declare-fun m!7183168 () Bool)

(assert (=> b!6383207 m!7183168))

(assert (=> b!6382384 d!2001193))

(declare-fun d!2001195 () Bool)

(declare-fun e!3874755 () Bool)

(assert (=> d!2001195 (= (matchZipper!2311 ((_ map or) lt!2370850 lt!2370840) (t!378802 s!2326)) e!3874755)))

(declare-fun res!2625673 () Bool)

(assert (=> d!2001195 (=> res!2625673 e!3874755)))

(assert (=> d!2001195 (= res!2625673 (matchZipper!2311 lt!2370850 (t!378802 s!2326)))))

(declare-fun lt!2370964 () Unit!158527)

(declare-fun choose!47494 ((InoxSet Context!11366) (InoxSet Context!11366) List!65198) Unit!158527)

(assert (=> d!2001195 (= lt!2370964 (choose!47494 lt!2370850 lt!2370840 (t!378802 s!2326)))))

(assert (=> d!2001195 (= (lemmaZipperConcatMatchesSameAsBothZippers!1130 lt!2370850 lt!2370840 (t!378802 s!2326)) lt!2370964)))

(declare-fun b!6383210 () Bool)

(assert (=> b!6383210 (= e!3874755 (matchZipper!2311 lt!2370840 (t!378802 s!2326)))))

(assert (= (and d!2001195 (not res!2625673)) b!6383210))

(assert (=> d!2001195 m!7182536))

(assert (=> d!2001195 m!7182534))

(declare-fun m!7183170 () Bool)

(assert (=> d!2001195 m!7183170))

(assert (=> b!6383210 m!7182454))

(assert (=> b!6382404 d!2001195))

(declare-fun d!2001197 () Bool)

(declare-fun c!1163150 () Bool)

(assert (=> d!2001197 (= c!1163150 (isEmpty!37205 (t!378802 s!2326)))))

(declare-fun e!3874756 () Bool)

(assert (=> d!2001197 (= (matchZipper!2311 lt!2370850 (t!378802 s!2326)) e!3874756)))

(declare-fun b!6383211 () Bool)

(assert (=> b!6383211 (= e!3874756 (nullableZipper!2063 lt!2370850))))

(declare-fun b!6383212 () Bool)

(assert (=> b!6383212 (= e!3874756 (matchZipper!2311 (derivationStepZipper!2265 lt!2370850 (head!13087 (t!378802 s!2326))) (tail!12172 (t!378802 s!2326))))))

(assert (= (and d!2001197 c!1163150) b!6383211))

(assert (= (and d!2001197 (not c!1163150)) b!6383212))

(assert (=> d!2001197 m!7182668))

(declare-fun m!7183172 () Bool)

(assert (=> b!6383211 m!7183172))

(assert (=> b!6383212 m!7182672))

(assert (=> b!6383212 m!7182672))

(declare-fun m!7183174 () Bool)

(assert (=> b!6383212 m!7183174))

(assert (=> b!6383212 m!7182676))

(assert (=> b!6383212 m!7183174))

(assert (=> b!6383212 m!7182676))

(declare-fun m!7183176 () Bool)

(assert (=> b!6383212 m!7183176))

(assert (=> b!6382404 d!2001197))

(declare-fun d!2001199 () Bool)

(declare-fun c!1163151 () Bool)

(assert (=> d!2001199 (= c!1163151 (isEmpty!37205 (t!378802 s!2326)))))

(declare-fun e!3874757 () Bool)

(assert (=> d!2001199 (= (matchZipper!2311 ((_ map or) lt!2370850 lt!2370840) (t!378802 s!2326)) e!3874757)))

(declare-fun b!6383213 () Bool)

(assert (=> b!6383213 (= e!3874757 (nullableZipper!2063 ((_ map or) lt!2370850 lt!2370840)))))

(declare-fun b!6383214 () Bool)

(assert (=> b!6383214 (= e!3874757 (matchZipper!2311 (derivationStepZipper!2265 ((_ map or) lt!2370850 lt!2370840) (head!13087 (t!378802 s!2326))) (tail!12172 (t!378802 s!2326))))))

(assert (= (and d!2001199 c!1163151) b!6383213))

(assert (= (and d!2001199 (not c!1163151)) b!6383214))

(assert (=> d!2001199 m!7182668))

(declare-fun m!7183178 () Bool)

(assert (=> b!6383213 m!7183178))

(assert (=> b!6383214 m!7182672))

(assert (=> b!6383214 m!7182672))

(declare-fun m!7183180 () Bool)

(assert (=> b!6383214 m!7183180))

(assert (=> b!6383214 m!7182676))

(assert (=> b!6383214 m!7183180))

(assert (=> b!6383214 m!7182676))

(declare-fun m!7183182 () Bool)

(assert (=> b!6383214 m!7183182))

(assert (=> b!6382404 d!2001199))

(declare-fun call!545515 () (InoxSet Context!11366))

(declare-fun c!1163155 () Bool)

(declare-fun c!1163156 () Bool)

(declare-fun bm!545508 () Bool)

(declare-fun c!1163154 () Bool)

(declare-fun call!545516 () List!65196)

(assert (=> bm!545508 (= call!545515 (derivationStepZipperDown!1547 (ite c!1163156 (regOne!33111 (reg!16628 (regOne!33110 r!7292))) (ite c!1163154 (regTwo!33110 (reg!16628 (regOne!33110 r!7292))) (ite c!1163155 (regOne!33110 (reg!16628 (regOne!33110 r!7292))) (reg!16628 (reg!16628 (regOne!33110 r!7292)))))) (ite (or c!1163156 c!1163154) lt!2370844 (Context!11367 call!545516)) (h!71522 s!2326)))))

(declare-fun bm!545509 () Bool)

(declare-fun call!545518 () (InoxSet Context!11366))

(declare-fun call!545513 () (InoxSet Context!11366))

(assert (=> bm!545509 (= call!545518 call!545513)))

(declare-fun b!6383215 () Bool)

(declare-fun e!3874762 () Bool)

(assert (=> b!6383215 (= e!3874762 (nullable!6292 (regOne!33110 (reg!16628 (regOne!33110 r!7292)))))))

(declare-fun bm!545510 () Bool)

(declare-fun call!545514 () List!65196)

(assert (=> bm!545510 (= call!545516 call!545514)))

(declare-fun b!6383216 () Bool)

(declare-fun c!1163152 () Bool)

(assert (=> b!6383216 (= c!1163152 ((_ is Star!16299) (reg!16628 (regOne!33110 r!7292))))))

(declare-fun e!3874761 () (InoxSet Context!11366))

(declare-fun e!3874759 () (InoxSet Context!11366))

(assert (=> b!6383216 (= e!3874761 e!3874759)))

(declare-fun b!6383217 () Bool)

(declare-fun e!3874758 () (InoxSet Context!11366))

(declare-fun call!545517 () (InoxSet Context!11366))

(assert (=> b!6383217 (= e!3874758 ((_ map or) call!545515 call!545517))))

(declare-fun bm!545511 () Bool)

(assert (=> bm!545511 (= call!545514 ($colon$colon!2160 (exprs!6183 lt!2370844) (ite (or c!1163154 c!1163155) (regTwo!33110 (reg!16628 (regOne!33110 r!7292))) (reg!16628 (regOne!33110 r!7292)))))))

(declare-fun b!6383218 () Bool)

(declare-fun e!3874763 () (InoxSet Context!11366))

(assert (=> b!6383218 (= e!3874763 e!3874761)))

(assert (=> b!6383218 (= c!1163155 ((_ is Concat!25144) (reg!16628 (regOne!33110 r!7292))))))

(declare-fun b!6383219 () Bool)

(assert (=> b!6383219 (= e!3874761 call!545518)))

(declare-fun b!6383220 () Bool)

(assert (=> b!6383220 (= c!1163154 e!3874762)))

(declare-fun res!2625674 () Bool)

(assert (=> b!6383220 (=> (not res!2625674) (not e!3874762))))

(assert (=> b!6383220 (= res!2625674 ((_ is Concat!25144) (reg!16628 (regOne!33110 r!7292))))))

(assert (=> b!6383220 (= e!3874758 e!3874763)))

(declare-fun b!6383221 () Bool)

(assert (=> b!6383221 (= e!3874759 ((as const (Array Context!11366 Bool)) false))))

(declare-fun b!6383222 () Bool)

(declare-fun e!3874760 () (InoxSet Context!11366))

(assert (=> b!6383222 (= e!3874760 (store ((as const (Array Context!11366 Bool)) false) lt!2370844 true))))

(declare-fun bm!545512 () Bool)

(assert (=> bm!545512 (= call!545517 (derivationStepZipperDown!1547 (ite c!1163156 (regTwo!33111 (reg!16628 (regOne!33110 r!7292))) (regOne!33110 (reg!16628 (regOne!33110 r!7292)))) (ite c!1163156 lt!2370844 (Context!11367 call!545514)) (h!71522 s!2326)))))

(declare-fun d!2001201 () Bool)

(declare-fun c!1163153 () Bool)

(assert (=> d!2001201 (= c!1163153 (and ((_ is ElementMatch!16299) (reg!16628 (regOne!33110 r!7292))) (= (c!1162920 (reg!16628 (regOne!33110 r!7292))) (h!71522 s!2326))))))

(assert (=> d!2001201 (= (derivationStepZipperDown!1547 (reg!16628 (regOne!33110 r!7292)) lt!2370844 (h!71522 s!2326)) e!3874760)))

(declare-fun bm!545513 () Bool)

(assert (=> bm!545513 (= call!545513 call!545515)))

(declare-fun b!6383223 () Bool)

(assert (=> b!6383223 (= e!3874759 call!545518)))

(declare-fun b!6383224 () Bool)

(assert (=> b!6383224 (= e!3874763 ((_ map or) call!545517 call!545513))))

(declare-fun b!6383225 () Bool)

(assert (=> b!6383225 (= e!3874760 e!3874758)))

(assert (=> b!6383225 (= c!1163156 ((_ is Union!16299) (reg!16628 (regOne!33110 r!7292))))))

(assert (= (and d!2001201 c!1163153) b!6383222))

(assert (= (and d!2001201 (not c!1163153)) b!6383225))

(assert (= (and b!6383225 c!1163156) b!6383217))

(assert (= (and b!6383225 (not c!1163156)) b!6383220))

(assert (= (and b!6383220 res!2625674) b!6383215))

(assert (= (and b!6383220 c!1163154) b!6383224))

(assert (= (and b!6383220 (not c!1163154)) b!6383218))

(assert (= (and b!6383218 c!1163155) b!6383219))

(assert (= (and b!6383218 (not c!1163155)) b!6383216))

(assert (= (and b!6383216 c!1163152) b!6383223))

(assert (= (and b!6383216 (not c!1163152)) b!6383221))

(assert (= (or b!6383219 b!6383223) bm!545510))

(assert (= (or b!6383219 b!6383223) bm!545509))

(assert (= (or b!6383224 bm!545510) bm!545511))

(assert (= (or b!6383224 bm!545509) bm!545513))

(assert (= (or b!6383217 b!6383224) bm!545512))

(assert (= (or b!6383217 bm!545513) bm!545508))

(declare-fun m!7183184 () Bool)

(assert (=> bm!545511 m!7183184))

(declare-fun m!7183186 () Bool)

(assert (=> bm!545508 m!7183186))

(assert (=> b!6383222 m!7182466))

(declare-fun m!7183188 () Bool)

(assert (=> bm!545512 m!7183188))

(declare-fun m!7183190 () Bool)

(assert (=> b!6383215 m!7183190))

(assert (=> b!6382383 d!2001201))

(declare-fun condSetEmpty!43574 () Bool)

(assert (=> setNonEmpty!43568 (= condSetEmpty!43574 (= setRest!43568 ((as const (Array Context!11366 Bool)) false)))))

(declare-fun setRes!43574 () Bool)

(assert (=> setNonEmpty!43568 (= tp!1775961 setRes!43574)))

(declare-fun setIsEmpty!43574 () Bool)

(assert (=> setIsEmpty!43574 setRes!43574))

(declare-fun setNonEmpty!43574 () Bool)

(declare-fun tp!1776029 () Bool)

(declare-fun e!3874766 () Bool)

(declare-fun setElem!43574 () Context!11366)

(assert (=> setNonEmpty!43574 (= setRes!43574 (and tp!1776029 (inv!83994 setElem!43574) e!3874766))))

(declare-fun setRest!43574 () (InoxSet Context!11366))

(assert (=> setNonEmpty!43574 (= setRest!43568 ((_ map or) (store ((as const (Array Context!11366 Bool)) false) setElem!43574 true) setRest!43574))))

(declare-fun b!6383230 () Bool)

(declare-fun tp!1776030 () Bool)

(assert (=> b!6383230 (= e!3874766 tp!1776030)))

(assert (= (and setNonEmpty!43568 condSetEmpty!43574) setIsEmpty!43574))

(assert (= (and setNonEmpty!43568 (not condSetEmpty!43574)) setNonEmpty!43574))

(assert (= setNonEmpty!43574 b!6383230))

(declare-fun m!7183192 () Bool)

(assert (=> setNonEmpty!43574 m!7183192))

(declare-fun b!6383238 () Bool)

(declare-fun e!3874772 () Bool)

(declare-fun tp!1776035 () Bool)

(assert (=> b!6383238 (= e!3874772 tp!1776035)))

(declare-fun b!6383237 () Bool)

(declare-fun tp!1776036 () Bool)

(declare-fun e!3874771 () Bool)

(assert (=> b!6383237 (= e!3874771 (and (inv!83994 (h!71521 (t!378801 zl!343))) e!3874772 tp!1776036))))

(assert (=> b!6382380 (= tp!1775964 e!3874771)))

(assert (= b!6383237 b!6383238))

(assert (= (and b!6382380 ((_ is Cons!65073) (t!378801 zl!343))) b!6383237))

(declare-fun m!7183194 () Bool)

(assert (=> b!6383237 m!7183194))

(declare-fun b!6383243 () Bool)

(declare-fun e!3874775 () Bool)

(declare-fun tp!1776041 () Bool)

(declare-fun tp!1776042 () Bool)

(assert (=> b!6383243 (= e!3874775 (and tp!1776041 tp!1776042))))

(assert (=> b!6382415 (= tp!1775960 e!3874775)))

(assert (= (and b!6382415 ((_ is Cons!65072) (exprs!6183 setElem!43568))) b!6383243))

(declare-fun b!6383248 () Bool)

(declare-fun e!3874778 () Bool)

(declare-fun tp!1776045 () Bool)

(assert (=> b!6383248 (= e!3874778 (and tp_is_empty!41851 tp!1776045))))

(assert (=> b!6382379 (= tp!1775966 e!3874778)))

(assert (= (and b!6382379 ((_ is Cons!65074) (t!378802 s!2326))) b!6383248))

(declare-fun b!6383259 () Bool)

(declare-fun e!3874781 () Bool)

(assert (=> b!6383259 (= e!3874781 tp_is_empty!41851)))

(declare-fun b!6383261 () Bool)

(declare-fun tp!1776056 () Bool)

(assert (=> b!6383261 (= e!3874781 tp!1776056)))

(declare-fun b!6383262 () Bool)

(declare-fun tp!1776057 () Bool)

(declare-fun tp!1776059 () Bool)

(assert (=> b!6383262 (= e!3874781 (and tp!1776057 tp!1776059))))

(assert (=> b!6382381 (= tp!1775959 e!3874781)))

(declare-fun b!6383260 () Bool)

(declare-fun tp!1776060 () Bool)

(declare-fun tp!1776058 () Bool)

(assert (=> b!6383260 (= e!3874781 (and tp!1776060 tp!1776058))))

(assert (= (and b!6382381 ((_ is ElementMatch!16299) (reg!16628 r!7292))) b!6383259))

(assert (= (and b!6382381 ((_ is Concat!25144) (reg!16628 r!7292))) b!6383260))

(assert (= (and b!6382381 ((_ is Star!16299) (reg!16628 r!7292))) b!6383261))

(assert (= (and b!6382381 ((_ is Union!16299) (reg!16628 r!7292))) b!6383262))

(declare-fun b!6383263 () Bool)

(declare-fun e!3874782 () Bool)

(assert (=> b!6383263 (= e!3874782 tp_is_empty!41851)))

(declare-fun b!6383265 () Bool)

(declare-fun tp!1776061 () Bool)

(assert (=> b!6383265 (= e!3874782 tp!1776061)))

(declare-fun b!6383266 () Bool)

(declare-fun tp!1776062 () Bool)

(declare-fun tp!1776064 () Bool)

(assert (=> b!6383266 (= e!3874782 (and tp!1776062 tp!1776064))))

(assert (=> b!6382412 (= tp!1775958 e!3874782)))

(declare-fun b!6383264 () Bool)

(declare-fun tp!1776065 () Bool)

(declare-fun tp!1776063 () Bool)

(assert (=> b!6383264 (= e!3874782 (and tp!1776065 tp!1776063))))

(assert (= (and b!6382412 ((_ is ElementMatch!16299) (regOne!33110 r!7292))) b!6383263))

(assert (= (and b!6382412 ((_ is Concat!25144) (regOne!33110 r!7292))) b!6383264))

(assert (= (and b!6382412 ((_ is Star!16299) (regOne!33110 r!7292))) b!6383265))

(assert (= (and b!6382412 ((_ is Union!16299) (regOne!33110 r!7292))) b!6383266))

(declare-fun b!6383267 () Bool)

(declare-fun e!3874783 () Bool)

(assert (=> b!6383267 (= e!3874783 tp_is_empty!41851)))

(declare-fun b!6383269 () Bool)

(declare-fun tp!1776066 () Bool)

(assert (=> b!6383269 (= e!3874783 tp!1776066)))

(declare-fun b!6383270 () Bool)

(declare-fun tp!1776067 () Bool)

(declare-fun tp!1776069 () Bool)

(assert (=> b!6383270 (= e!3874783 (and tp!1776067 tp!1776069))))

(assert (=> b!6382412 (= tp!1775962 e!3874783)))

(declare-fun b!6383268 () Bool)

(declare-fun tp!1776070 () Bool)

(declare-fun tp!1776068 () Bool)

(assert (=> b!6383268 (= e!3874783 (and tp!1776070 tp!1776068))))

(assert (= (and b!6382412 ((_ is ElementMatch!16299) (regTwo!33110 r!7292))) b!6383267))

(assert (= (and b!6382412 ((_ is Concat!25144) (regTwo!33110 r!7292))) b!6383268))

(assert (= (and b!6382412 ((_ is Star!16299) (regTwo!33110 r!7292))) b!6383269))

(assert (= (and b!6382412 ((_ is Union!16299) (regTwo!33110 r!7292))) b!6383270))

(declare-fun b!6383271 () Bool)

(declare-fun e!3874784 () Bool)

(declare-fun tp!1776071 () Bool)

(declare-fun tp!1776072 () Bool)

(assert (=> b!6383271 (= e!3874784 (and tp!1776071 tp!1776072))))

(assert (=> b!6382402 (= tp!1775957 e!3874784)))

(assert (= (and b!6382402 ((_ is Cons!65072) (exprs!6183 (h!71521 zl!343)))) b!6383271))

(declare-fun b!6383272 () Bool)

(declare-fun e!3874785 () Bool)

(assert (=> b!6383272 (= e!3874785 tp_is_empty!41851)))

(declare-fun b!6383274 () Bool)

(declare-fun tp!1776073 () Bool)

(assert (=> b!6383274 (= e!3874785 tp!1776073)))

(declare-fun b!6383275 () Bool)

(declare-fun tp!1776074 () Bool)

(declare-fun tp!1776076 () Bool)

(assert (=> b!6383275 (= e!3874785 (and tp!1776074 tp!1776076))))

(assert (=> b!6382393 (= tp!1775963 e!3874785)))

(declare-fun b!6383273 () Bool)

(declare-fun tp!1776077 () Bool)

(declare-fun tp!1776075 () Bool)

(assert (=> b!6383273 (= e!3874785 (and tp!1776077 tp!1776075))))

(assert (= (and b!6382393 ((_ is ElementMatch!16299) (regOne!33111 r!7292))) b!6383272))

(assert (= (and b!6382393 ((_ is Concat!25144) (regOne!33111 r!7292))) b!6383273))

(assert (= (and b!6382393 ((_ is Star!16299) (regOne!33111 r!7292))) b!6383274))

(assert (= (and b!6382393 ((_ is Union!16299) (regOne!33111 r!7292))) b!6383275))

(declare-fun b!6383276 () Bool)

(declare-fun e!3874786 () Bool)

(assert (=> b!6383276 (= e!3874786 tp_is_empty!41851)))

(declare-fun b!6383278 () Bool)

(declare-fun tp!1776078 () Bool)

(assert (=> b!6383278 (= e!3874786 tp!1776078)))

(declare-fun b!6383279 () Bool)

(declare-fun tp!1776079 () Bool)

(declare-fun tp!1776081 () Bool)

(assert (=> b!6383279 (= e!3874786 (and tp!1776079 tp!1776081))))

(assert (=> b!6382393 (= tp!1775965 e!3874786)))

(declare-fun b!6383277 () Bool)

(declare-fun tp!1776082 () Bool)

(declare-fun tp!1776080 () Bool)

(assert (=> b!6383277 (= e!3874786 (and tp!1776082 tp!1776080))))

(assert (= (and b!6382393 ((_ is ElementMatch!16299) (regTwo!33111 r!7292))) b!6383276))

(assert (= (and b!6382393 ((_ is Concat!25144) (regTwo!33111 r!7292))) b!6383277))

(assert (= (and b!6382393 ((_ is Star!16299) (regTwo!33111 r!7292))) b!6383278))

(assert (= (and b!6382393 ((_ is Union!16299) (regTwo!33111 r!7292))) b!6383279))

(declare-fun b_lambda!242541 () Bool)

(assert (= b_lambda!242525 (or b!6382410 b_lambda!242541)))

(declare-fun bs!1597486 () Bool)

(declare-fun d!2001203 () Bool)

(assert (= bs!1597486 (and d!2001203 b!6382410)))

(assert (=> bs!1597486 (= (dynLambda!25817 lambda!352120 (h!71521 zl!343)) (derivationStepZipperUp!1473 (h!71521 zl!343) (h!71522 s!2326)))))

(assert (=> bs!1597486 m!7182522))

(assert (=> d!2001067 d!2001203))

(declare-fun b_lambda!242543 () Bool)

(assert (= b_lambda!242523 (or b!6382410 b_lambda!242543)))

(declare-fun bs!1597487 () Bool)

(declare-fun d!2001205 () Bool)

(assert (= bs!1597487 (and d!2001205 b!6382410)))

(assert (=> bs!1597487 (= (dynLambda!25817 lambda!352120 lt!2370826) (derivationStepZipperUp!1473 lt!2370826 (h!71522 s!2326)))))

(assert (=> bs!1597487 m!7182552))

(assert (=> d!2001039 d!2001205))

(declare-fun b_lambda!242545 () Bool)

(assert (= b_lambda!242537 (or b!6382410 b_lambda!242545)))

(declare-fun bs!1597488 () Bool)

(declare-fun d!2001207 () Bool)

(assert (= bs!1597488 (and d!2001207 b!6382410)))

(assert (=> bs!1597488 (= (dynLambda!25817 lambda!352120 lt!2370847) (derivationStepZipperUp!1473 lt!2370847 (h!71522 s!2326)))))

(assert (=> bs!1597488 m!7182462))

(assert (=> d!2001163 d!2001207))

(declare-fun b_lambda!242547 () Bool)

(assert (= b_lambda!242539 (or b!6382410 b_lambda!242547)))

(declare-fun bs!1597489 () Bool)

(declare-fun d!2001209 () Bool)

(assert (= bs!1597489 (and d!2001209 b!6382410)))

(assert (=> bs!1597489 (= (dynLambda!25817 lambda!352120 lt!2370844) (derivationStepZipperUp!1473 lt!2370844 (h!71522 s!2326)))))

(assert (=> bs!1597489 m!7182464))

(assert (=> d!2001165 d!2001209))

(check-sat (not b!6383237) (not bm!545441) (not b!6383067) (not d!2001179) (not b!6383265) (not b!6383210) (not d!2001197) (not bm!545511) (not d!2001161) (not b!6383261) (not b!6383069) (not bm!545464) (not d!2001155) (not b_lambda!242545) (not d!2001005) (not b!6383125) (not b!6382751) (not b!6382772) (not b!6383035) (not b!6383266) (not b!6383181) (not bm!545486) (not b!6383230) (not d!2001165) (not d!2001183) (not d!2001139) (not b!6382747) (not bm!545507) (not d!2001177) (not d!2001171) (not b!6383269) (not b!6382839) (not bm!545481) (not d!2001193) (not b!6382936) (not b!6382736) (not b!6383205) (not b!6383262) (not bm!545505) (not d!2001141) (not b!6383268) (not d!2001191) (not b!6383145) tp_is_empty!41851 (not b!6383275) (not b!6383150) (not b!6382927) (not b!6383271) (not b!6383184) (not b!6383204) (not d!2001167) (not b!6383151) (not bs!1597486) (not b!6383185) (not b!6382929) (not b_lambda!242547) (not b!6382591) (not bs!1597489) (not b!6383106) (not b!6382834) (not b!6383179) (not b!6382756) (not b!6382587) (not b!6383163) (not b!6383164) (not b!6382656) (not d!2001073) (not b!6383149) (not d!2001003) (not b!6382561) (not b!6383134) (not d!2001199) (not d!2001089) (not d!2001065) (not b!6383128) (not b!6383158) (not bm!545499) (not bm!545468) (not b!6383072) (not b!6383142) (not d!2001067) (not bm!545508) (not bm!545471) (not d!2001077) (not b!6383264) (not bm!545470) (not b!6383126) (not b!6383156) (not d!2001147) (not b!6383206) (not d!2001157) (not b!6382934) (not d!2001195) (not bm!545467) (not b!6383133) (not b!6382836) (not d!2001137) (not b!6383260) (not b!6383131) (not b!6383214) (not b!6382878) (not bs!1597488) (not bm!545504) (not d!2001143) (not b!6383248) (not bm!545497) (not bm!545494) (not b!6383177) (not d!2001105) (not bs!1597487) (not b!6383071) (not b!6383277) (not b!6382838) (not b!6383043) (not d!2001041) (not b!6383207) (not b!6383203) (not b!6382652) (not bm!545501) (not b!6382752) (not b!6383213) (not b!6383159) (not b!6383212) (not b!6382841) (not b!6382840) (not b!6383074) (not bm!545487) (not d!2001009) (not d!2001047) (not b!6383278) (not d!2001145) (not b!6383068) (not b!6383178) (not bm!545496) (not d!2001151) (not d!2001159) (not d!2001181) (not bm!545500) (not b!6382842) (not b!6383274) (not d!2001039) (not b!6383215) (not b!6382923) (not b!6383186) (not b!6383211) (not setNonEmpty!43574) (not bm!545498) (not b!6383270) (not b!6383168) (not b!6383075) (not d!2001187) (not d!2001019) (not b_lambda!242543) (not b!6382928) (not b!6383238) (not d!2001163) (not d!2001109) (not d!2001185) (not b!6382562) (not d!2001057) (not b!6383132) (not b!6383243) (not b!6383279) (not bm!545444) (not bm!545502) (not b_lambda!242541) (not bm!545512) (not b!6383273))
(check-sat)
