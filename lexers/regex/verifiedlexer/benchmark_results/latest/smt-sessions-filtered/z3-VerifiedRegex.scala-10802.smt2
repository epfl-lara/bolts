; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!554586 () Bool)

(assert start!554586)

(declare-fun b!5247748 () Bool)

(assert (=> b!5247748 true))

(assert (=> b!5247748 true))

(declare-fun lambda!264149 () Int)

(declare-fun lambda!264148 () Int)

(assert (=> b!5247748 (not (= lambda!264149 lambda!264148))))

(assert (=> b!5247748 true))

(assert (=> b!5247748 true))

(declare-fun b!5247750 () Bool)

(assert (=> b!5247750 true))

(declare-fun b!5247738 () Bool)

(declare-fun e!3264937 () Bool)

(declare-fun tp!1468634 () Bool)

(assert (=> b!5247738 (= e!3264937 tp!1468634)))

(declare-fun b!5247739 () Bool)

(declare-fun e!3264949 () Bool)

(declare-fun e!3264947 () Bool)

(assert (=> b!5247739 (= e!3264949 e!3264947)))

(declare-fun res!2226963 () Bool)

(assert (=> b!5247739 (=> res!2226963 e!3264947)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29972 0))(
  ( (C!29973 (val!24688 Int)) )
))
(declare-datatypes ((Regex!14851 0))(
  ( (ElementMatch!14851 (c!907577 C!29972)) (Concat!23696 (regOne!30214 Regex!14851) (regTwo!30214 Regex!14851)) (EmptyExpr!14851) (Star!14851 (reg!15180 Regex!14851)) (EmptyLang!14851) (Union!14851 (regOne!30215 Regex!14851) (regTwo!30215 Regex!14851)) )
))
(declare-datatypes ((List!60852 0))(
  ( (Nil!60728) (Cons!60728 (h!67176 Regex!14851) (t!374035 List!60852)) )
))
(declare-datatypes ((Context!8470 0))(
  ( (Context!8471 (exprs!4735 List!60852)) )
))
(declare-fun lt!2150383 () (InoxSet Context!8470))

(declare-fun lt!2150368 () (InoxSet Context!8470))

(assert (=> b!5247739 (= res!2226963 (not (= lt!2150383 lt!2150368)))))

(declare-fun lt!2150377 () (InoxSet Context!8470))

(declare-fun lt!2150372 () (InoxSet Context!8470))

(assert (=> b!5247739 (= lt!2150368 ((_ map or) lt!2150377 lt!2150372))))

(declare-fun r!7292 () Regex!14851)

(declare-datatypes ((List!60853 0))(
  ( (Nil!60729) (Cons!60729 (h!67177 C!29972) (t!374036 List!60853)) )
))
(declare-fun s!2326 () List!60853)

(declare-fun lt!2150364 () Context!8470)

(declare-fun derivationStepZipperDown!299 (Regex!14851 Context!8470 C!29972) (InoxSet Context!8470))

(assert (=> b!5247739 (= lt!2150372 (derivationStepZipperDown!299 (regTwo!30215 (regOne!30214 r!7292)) lt!2150364 (h!67177 s!2326)))))

(assert (=> b!5247739 (= lt!2150377 (derivationStepZipperDown!299 (regOne!30215 (regOne!30214 r!7292)) lt!2150364 (h!67177 s!2326)))))

(declare-fun b!5247740 () Bool)

(declare-fun res!2226952 () Bool)

(declare-fun e!3264946 () Bool)

(assert (=> b!5247740 (=> res!2226952 e!3264946)))

(get-info :version)

(assert (=> b!5247740 (= res!2226952 (or ((_ is EmptyExpr!14851) r!7292) ((_ is EmptyLang!14851) r!7292) ((_ is ElementMatch!14851) r!7292) ((_ is Union!14851) r!7292) (not ((_ is Concat!23696) r!7292))))))

(declare-fun b!5247741 () Bool)

(declare-fun e!3264950 () Bool)

(declare-fun tp!1468638 () Bool)

(assert (=> b!5247741 (= e!3264950 tp!1468638)))

(declare-fun b!5247742 () Bool)

(declare-fun res!2226947 () Bool)

(declare-fun e!3264944 () Bool)

(assert (=> b!5247742 (=> (not res!2226947) (not e!3264944))))

(declare-fun z!1189 () (InoxSet Context!8470))

(declare-datatypes ((List!60854 0))(
  ( (Nil!60730) (Cons!60730 (h!67178 Context!8470) (t!374037 List!60854)) )
))
(declare-fun zl!343 () List!60854)

(declare-fun toList!8635 ((InoxSet Context!8470)) List!60854)

(assert (=> b!5247742 (= res!2226947 (= (toList!8635 z!1189) zl!343))))

(declare-fun b!5247743 () Bool)

(declare-fun e!3264957 () Bool)

(declare-fun tp_is_empty!38955 () Bool)

(assert (=> b!5247743 (= e!3264957 tp_is_empty!38955)))

(declare-fun b!5247744 () Bool)

(declare-fun e!3264955 () Bool)

(declare-fun e!3264941 () Bool)

(assert (=> b!5247744 (= e!3264955 e!3264941)))

(declare-fun res!2226961 () Bool)

(assert (=> b!5247744 (=> res!2226961 e!3264941)))

(declare-fun lt!2150402 () List!60854)

(declare-fun lt!2150398 () Int)

(declare-fun zipperDepthTotal!32 (List!60854) Int)

(assert (=> b!5247744 (= res!2226961 (>= (zipperDepthTotal!32 lt!2150402) lt!2150398))))

(declare-fun lt!2150359 () Context!8470)

(assert (=> b!5247744 (= lt!2150402 (Cons!60730 lt!2150359 Nil!60730))))

(declare-fun b!5247745 () Bool)

(declare-fun e!3264960 () Bool)

(declare-fun lt!2150390 () (InoxSet Context!8470))

(declare-fun matchZipper!1095 ((InoxSet Context!8470) List!60853) Bool)

(assert (=> b!5247745 (= e!3264960 (matchZipper!1095 lt!2150390 (t!374036 s!2326)))))

(declare-fun b!5247746 () Bool)

(declare-fun e!3264948 () Bool)

(assert (=> b!5247746 (= e!3264947 e!3264948)))

(declare-fun res!2226958 () Bool)

(assert (=> b!5247746 (=> res!2226958 e!3264948)))

(declare-fun e!3264952 () Bool)

(assert (=> b!5247746 (= res!2226958 e!3264952)))

(declare-fun res!2226948 () Bool)

(assert (=> b!5247746 (=> (not res!2226948) (not e!3264952))))

(declare-fun lt!2150403 () Bool)

(assert (=> b!5247746 (= res!2226948 (not (= (matchZipper!1095 lt!2150383 (t!374036 s!2326)) lt!2150403)))))

(declare-fun e!3264940 () Bool)

(assert (=> b!5247746 (= (matchZipper!1095 lt!2150368 (t!374036 s!2326)) e!3264940)))

(declare-fun res!2226969 () Bool)

(assert (=> b!5247746 (=> res!2226969 e!3264940)))

(assert (=> b!5247746 (= res!2226969 lt!2150403)))

(assert (=> b!5247746 (= lt!2150403 (matchZipper!1095 lt!2150377 (t!374036 s!2326)))))

(declare-datatypes ((Unit!152822 0))(
  ( (Unit!152823) )
))
(declare-fun lt!2150376 () Unit!152822)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!88 ((InoxSet Context!8470) (InoxSet Context!8470) List!60853) Unit!152822)

(assert (=> b!5247746 (= lt!2150376 (lemmaZipperConcatMatchesSameAsBothZippers!88 lt!2150377 lt!2150372 (t!374036 s!2326)))))

(declare-fun b!5247747 () Bool)

(assert (=> b!5247747 (= e!3264952 (not (matchZipper!1095 lt!2150372 (t!374036 s!2326))))))

(declare-fun e!3264939 () Bool)

(assert (=> b!5247748 (= e!3264946 e!3264939)))

(declare-fun res!2226968 () Bool)

(assert (=> b!5247748 (=> res!2226968 e!3264939)))

(declare-fun lt!2150401 () Bool)

(declare-fun lt!2150396 () Bool)

(assert (=> b!5247748 (= res!2226968 (or (not (= lt!2150401 lt!2150396)) ((_ is Nil!60729) s!2326)))))

(declare-fun Exists!2032 (Int) Bool)

(assert (=> b!5247748 (= (Exists!2032 lambda!264148) (Exists!2032 lambda!264149))))

(declare-fun lt!2150400 () Unit!152822)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!686 (Regex!14851 Regex!14851 List!60853) Unit!152822)

(assert (=> b!5247748 (= lt!2150400 (lemmaExistCutMatchRandMatchRSpecEquivalent!686 (regOne!30214 r!7292) (regTwo!30214 r!7292) s!2326))))

(assert (=> b!5247748 (= lt!2150396 (Exists!2032 lambda!264148))))

(declare-datatypes ((tuple2!64100 0))(
  ( (tuple2!64101 (_1!35353 List!60853) (_2!35353 List!60853)) )
))
(declare-datatypes ((Option!14962 0))(
  ( (None!14961) (Some!14961 (v!50990 tuple2!64100)) )
))
(declare-fun isDefined!11665 (Option!14962) Bool)

(declare-fun findConcatSeparation!1376 (Regex!14851 Regex!14851 List!60853 List!60853 List!60853) Option!14962)

(assert (=> b!5247748 (= lt!2150396 (isDefined!11665 (findConcatSeparation!1376 (regOne!30214 r!7292) (regTwo!30214 r!7292) Nil!60729 s!2326 s!2326)))))

(declare-fun lt!2150373 () Unit!152822)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1140 (Regex!14851 Regex!14851 List!60853) Unit!152822)

(assert (=> b!5247748 (= lt!2150373 (lemmaFindConcatSeparationEquivalentToExists!1140 (regOne!30214 r!7292) (regTwo!30214 r!7292) s!2326))))

(declare-fun b!5247749 () Bool)

(declare-fun tp!1468636 () Bool)

(declare-fun tp!1468640 () Bool)

(assert (=> b!5247749 (= e!3264957 (and tp!1468636 tp!1468640))))

(assert (=> b!5247750 (= e!3264939 e!3264949)))

(declare-fun res!2226953 () Bool)

(assert (=> b!5247750 (=> res!2226953 e!3264949)))

(assert (=> b!5247750 (= res!2226953 (or (and ((_ is ElementMatch!14851) (regOne!30214 r!7292)) (= (c!907577 (regOne!30214 r!7292)) (h!67177 s!2326))) (not ((_ is Union!14851) (regOne!30214 r!7292)))))))

(declare-fun lt!2150391 () Unit!152822)

(declare-fun e!3264959 () Unit!152822)

(assert (=> b!5247750 (= lt!2150391 e!3264959)))

(declare-fun c!907576 () Bool)

(declare-fun nullable!5020 (Regex!14851) Bool)

(assert (=> b!5247750 (= c!907576 (nullable!5020 (h!67176 (exprs!4735 (h!67178 zl!343)))))))

(declare-fun lambda!264150 () Int)

(declare-fun flatMap!578 ((InoxSet Context!8470) Int) (InoxSet Context!8470))

(declare-fun derivationStepZipperUp!223 (Context!8470 C!29972) (InoxSet Context!8470))

(assert (=> b!5247750 (= (flatMap!578 z!1189 lambda!264150) (derivationStepZipperUp!223 (h!67178 zl!343) (h!67177 s!2326)))))

(declare-fun lt!2150371 () Unit!152822)

(declare-fun lemmaFlatMapOnSingletonSet!110 ((InoxSet Context!8470) Context!8470 Int) Unit!152822)

(assert (=> b!5247750 (= lt!2150371 (lemmaFlatMapOnSingletonSet!110 z!1189 (h!67178 zl!343) lambda!264150))))

(assert (=> b!5247750 (= lt!2150390 (derivationStepZipperUp!223 lt!2150364 (h!67177 s!2326)))))

(assert (=> b!5247750 (= lt!2150383 (derivationStepZipperDown!299 (h!67176 (exprs!4735 (h!67178 zl!343))) lt!2150364 (h!67177 s!2326)))))

(assert (=> b!5247750 (= lt!2150364 (Context!8471 (t!374035 (exprs!4735 (h!67178 zl!343)))))))

(declare-fun lt!2150397 () (InoxSet Context!8470))

(assert (=> b!5247750 (= lt!2150397 (derivationStepZipperUp!223 (Context!8471 (Cons!60728 (h!67176 (exprs!4735 (h!67178 zl!343))) (t!374035 (exprs!4735 (h!67178 zl!343))))) (h!67177 s!2326)))))

(declare-fun b!5247751 () Bool)

(declare-fun e!3264938 () Bool)

(declare-fun tp!1468633 () Bool)

(assert (=> b!5247751 (= e!3264938 (and tp_is_empty!38955 tp!1468633))))

(declare-fun setIsEmpty!33491 () Bool)

(declare-fun setRes!33491 () Bool)

(assert (=> setIsEmpty!33491 setRes!33491))

(declare-fun res!2226949 () Bool)

(assert (=> start!554586 (=> (not res!2226949) (not e!3264944))))

(declare-fun validRegex!6587 (Regex!14851) Bool)

(assert (=> start!554586 (= res!2226949 (validRegex!6587 r!7292))))

(assert (=> start!554586 e!3264944))

(assert (=> start!554586 e!3264957))

(declare-fun condSetEmpty!33491 () Bool)

(assert (=> start!554586 (= condSetEmpty!33491 (= z!1189 ((as const (Array Context!8470 Bool)) false)))))

(assert (=> start!554586 setRes!33491))

(declare-fun e!3264956 () Bool)

(assert (=> start!554586 e!3264956))

(assert (=> start!554586 e!3264938))

(declare-fun b!5247752 () Bool)

(assert (=> b!5247752 (= e!3264940 (matchZipper!1095 lt!2150372 (t!374036 s!2326)))))

(declare-fun b!5247753 () Bool)

(declare-fun e!3264943 () Unit!152822)

(declare-fun Unit!152824 () Unit!152822)

(assert (=> b!5247753 (= e!3264943 Unit!152824)))

(declare-fun b!5247754 () Bool)

(declare-fun e!3264953 () Bool)

(assert (=> b!5247754 (= e!3264948 e!3264953)))

(declare-fun res!2226960 () Bool)

(assert (=> b!5247754 (=> res!2226960 e!3264953)))

(declare-fun lt!2150360 () Bool)

(declare-fun e!3264954 () Bool)

(assert (=> b!5247754 (= res!2226960 (not (= lt!2150360 e!3264954)))))

(declare-fun res!2226965 () Bool)

(assert (=> b!5247754 (=> res!2226965 e!3264954)))

(declare-fun lt!2150367 () Bool)

(assert (=> b!5247754 (= res!2226965 lt!2150367)))

(assert (=> b!5247754 (= lt!2150360 (matchZipper!1095 z!1189 s!2326))))

(declare-fun lt!2150363 () (InoxSet Context!8470))

(assert (=> b!5247754 (= lt!2150367 (matchZipper!1095 lt!2150363 s!2326))))

(declare-fun lt!2150394 () Unit!152822)

(declare-fun e!3264958 () Unit!152822)

(assert (=> b!5247754 (= lt!2150394 e!3264958)))

(declare-fun c!907575 () Bool)

(assert (=> b!5247754 (= c!907575 (nullable!5020 (regTwo!30215 (regOne!30214 r!7292))))))

(declare-fun lt!2150395 () (InoxSet Context!8470))

(assert (=> b!5247754 (= (flatMap!578 lt!2150395 lambda!264150) (derivationStepZipperUp!223 lt!2150359 (h!67177 s!2326)))))

(declare-fun lt!2150380 () Unit!152822)

(assert (=> b!5247754 (= lt!2150380 (lemmaFlatMapOnSingletonSet!110 lt!2150395 lt!2150359 lambda!264150))))

(declare-fun lt!2150387 () (InoxSet Context!8470))

(assert (=> b!5247754 (= lt!2150387 (derivationStepZipperUp!223 lt!2150359 (h!67177 s!2326)))))

(declare-fun lt!2150362 () Unit!152822)

(assert (=> b!5247754 (= lt!2150362 e!3264943)))

(declare-fun c!907574 () Bool)

(assert (=> b!5247754 (= c!907574 (nullable!5020 (regOne!30215 (regOne!30214 r!7292))))))

(declare-fun lt!2150365 () Context!8470)

(assert (=> b!5247754 (= (flatMap!578 lt!2150363 lambda!264150) (derivationStepZipperUp!223 lt!2150365 (h!67177 s!2326)))))

(declare-fun lt!2150370 () Unit!152822)

(assert (=> b!5247754 (= lt!2150370 (lemmaFlatMapOnSingletonSet!110 lt!2150363 lt!2150365 lambda!264150))))

(declare-fun lt!2150382 () (InoxSet Context!8470))

(assert (=> b!5247754 (= lt!2150382 (derivationStepZipperUp!223 lt!2150365 (h!67177 s!2326)))))

(assert (=> b!5247754 (= lt!2150395 (store ((as const (Array Context!8470 Bool)) false) lt!2150359 true))))

(declare-fun lt!2150393 () List!60852)

(assert (=> b!5247754 (= lt!2150359 (Context!8471 lt!2150393))))

(assert (=> b!5247754 (= lt!2150393 (Cons!60728 (regTwo!30215 (regOne!30214 r!7292)) (t!374035 (exprs!4735 (h!67178 zl!343)))))))

(assert (=> b!5247754 (= lt!2150363 (store ((as const (Array Context!8470 Bool)) false) lt!2150365 true))))

(declare-fun lt!2150389 () List!60852)

(assert (=> b!5247754 (= lt!2150365 (Context!8471 lt!2150389))))

(assert (=> b!5247754 (= lt!2150389 (Cons!60728 (regOne!30215 (regOne!30214 r!7292)) (t!374035 (exprs!4735 (h!67178 zl!343)))))))

(declare-fun b!5247755 () Bool)

(declare-fun res!2226945 () Bool)

(assert (=> b!5247755 (=> res!2226945 e!3264946)))

(declare-fun isEmpty!32667 (List!60854) Bool)

(assert (=> b!5247755 (= res!2226945 (not (isEmpty!32667 (t!374037 zl!343))))))

(declare-fun b!5247756 () Bool)

(declare-fun e!3264942 () Bool)

(assert (=> b!5247756 (= e!3264942 (not e!3264946))))

(declare-fun res!2226957 () Bool)

(assert (=> b!5247756 (=> res!2226957 e!3264946)))

(assert (=> b!5247756 (= res!2226957 (not ((_ is Cons!60730) zl!343)))))

(declare-fun matchRSpec!1954 (Regex!14851 List!60853) Bool)

(assert (=> b!5247756 (= lt!2150401 (matchRSpec!1954 r!7292 s!2326))))

(declare-fun matchR!7036 (Regex!14851 List!60853) Bool)

(assert (=> b!5247756 (= lt!2150401 (matchR!7036 r!7292 s!2326))))

(declare-fun lt!2150385 () Unit!152822)

(declare-fun mainMatchTheorem!1954 (Regex!14851 List!60853) Unit!152822)

(assert (=> b!5247756 (= lt!2150385 (mainMatchTheorem!1954 r!7292 s!2326))))

(declare-fun b!5247757 () Bool)

(declare-fun res!2226966 () Bool)

(assert (=> b!5247757 (=> res!2226966 e!3264953)))

(declare-fun lt!2150378 () Regex!14851)

(assert (=> b!5247757 (= res!2226966 (or (not (= lt!2150378 r!7292)) (not (= (exprs!4735 (h!67178 zl!343)) (Cons!60728 (regOne!30214 r!7292) (t!374035 (exprs!4735 (h!67178 zl!343))))))))))

(declare-fun b!5247758 () Bool)

(declare-fun Unit!152825 () Unit!152822)

(assert (=> b!5247758 (= e!3264958 Unit!152825)))

(declare-fun lt!2150384 () Unit!152822)

(assert (=> b!5247758 (= lt!2150384 (lemmaZipperConcatMatchesSameAsBothZippers!88 lt!2150372 lt!2150390 (t!374036 s!2326)))))

(declare-fun res!2226964 () Bool)

(assert (=> b!5247758 (= res!2226964 (matchZipper!1095 lt!2150372 (t!374036 s!2326)))))

(declare-fun e!3264951 () Bool)

(assert (=> b!5247758 (=> res!2226964 e!3264951)))

(assert (=> b!5247758 (= (matchZipper!1095 ((_ map or) lt!2150372 lt!2150390) (t!374036 s!2326)) e!3264951)))

(declare-fun b!5247759 () Bool)

(assert (=> b!5247759 (= e!3264951 (matchZipper!1095 lt!2150390 (t!374036 s!2326)))))

(declare-fun b!5247760 () Bool)

(declare-fun tp!1468632 () Bool)

(declare-fun inv!80374 (Context!8470) Bool)

(assert (=> b!5247760 (= e!3264956 (and (inv!80374 (h!67178 zl!343)) e!3264937 tp!1468632))))

(declare-fun b!5247761 () Bool)

(declare-fun Unit!152826 () Unit!152822)

(assert (=> b!5247761 (= e!3264959 Unit!152826)))

(declare-fun lt!2150374 () Unit!152822)

(assert (=> b!5247761 (= lt!2150374 (lemmaZipperConcatMatchesSameAsBothZippers!88 lt!2150383 lt!2150390 (t!374036 s!2326)))))

(declare-fun res!2226959 () Bool)

(assert (=> b!5247761 (= res!2226959 (matchZipper!1095 lt!2150383 (t!374036 s!2326)))))

(assert (=> b!5247761 (=> res!2226959 e!3264960)))

(assert (=> b!5247761 (= (matchZipper!1095 ((_ map or) lt!2150383 lt!2150390) (t!374036 s!2326)) e!3264960)))

(declare-fun b!5247762 () Bool)

(declare-fun e!3264936 () Bool)

(assert (=> b!5247762 (= e!3264941 e!3264936)))

(declare-fun res!2226946 () Bool)

(assert (=> b!5247762 (=> res!2226946 e!3264936)))

(declare-fun lt!2150379 () Bool)

(declare-fun lt!2150404 () Bool)

(assert (=> b!5247762 (= res!2226946 (or (and (not (= lt!2150360 lt!2150404)) (not lt!2150379)) (not (= r!7292 (Concat!23696 (Union!14851 (regOne!30215 (regOne!30214 r!7292)) (regTwo!30215 (regOne!30214 r!7292))) (regTwo!30214 r!7292))))))))

(declare-fun lt!2150381 () Regex!14851)

(assert (=> b!5247762 (= lt!2150379 (matchRSpec!1954 lt!2150381 s!2326))))

(declare-fun lt!2150388 () Unit!152822)

(assert (=> b!5247762 (= lt!2150388 (mainMatchTheorem!1954 lt!2150381 s!2326))))

(declare-fun lt!2150386 () Regex!14851)

(assert (=> b!5247762 (= lt!2150404 (matchRSpec!1954 lt!2150386 s!2326))))

(declare-fun lt!2150375 () Unit!152822)

(assert (=> b!5247762 (= lt!2150375 (mainMatchTheorem!1954 lt!2150386 s!2326))))

(assert (=> b!5247762 (= lt!2150379 (matchZipper!1095 lt!2150395 s!2326))))

(assert (=> b!5247762 (= lt!2150379 (matchR!7036 lt!2150381 s!2326))))

(declare-fun lt!2150399 () Unit!152822)

(declare-fun theoremZipperRegexEquiv!285 ((InoxSet Context!8470) List!60854 Regex!14851 List!60853) Unit!152822)

(assert (=> b!5247762 (= lt!2150399 (theoremZipperRegexEquiv!285 lt!2150395 lt!2150402 lt!2150381 s!2326))))

(declare-fun generalisedConcat!520 (List!60852) Regex!14851)

(assert (=> b!5247762 (= lt!2150381 (generalisedConcat!520 lt!2150393))))

(assert (=> b!5247762 (= lt!2150404 lt!2150367)))

(assert (=> b!5247762 (= lt!2150404 (matchR!7036 lt!2150386 s!2326))))

(declare-fun lt!2150369 () List!60854)

(declare-fun lt!2150392 () Unit!152822)

(assert (=> b!5247762 (= lt!2150392 (theoremZipperRegexEquiv!285 lt!2150363 lt!2150369 lt!2150386 s!2326))))

(assert (=> b!5247762 (= lt!2150386 (generalisedConcat!520 lt!2150389))))

(declare-fun b!5247763 () Bool)

(assert (=> b!5247763 (= e!3264954 (matchZipper!1095 lt!2150395 s!2326))))

(declare-fun setElem!33491 () Context!8470)

(declare-fun tp!1468641 () Bool)

(declare-fun setNonEmpty!33491 () Bool)

(assert (=> setNonEmpty!33491 (= setRes!33491 (and tp!1468641 (inv!80374 setElem!33491) e!3264950))))

(declare-fun setRest!33491 () (InoxSet Context!8470))

(assert (=> setNonEmpty!33491 (= z!1189 ((_ map or) (store ((as const (Array Context!8470 Bool)) false) setElem!33491 true) setRest!33491))))

(declare-fun b!5247764 () Bool)

(assert (=> b!5247764 (= e!3264944 e!3264942)))

(declare-fun res!2226967 () Bool)

(assert (=> b!5247764 (=> (not res!2226967) (not e!3264942))))

(assert (=> b!5247764 (= res!2226967 (= r!7292 lt!2150378))))

(declare-fun unfocusZipper!593 (List!60854) Regex!14851)

(assert (=> b!5247764 (= lt!2150378 (unfocusZipper!593 zl!343))))

(declare-fun b!5247765 () Bool)

(declare-fun Unit!152827 () Unit!152822)

(assert (=> b!5247765 (= e!3264958 Unit!152827)))

(declare-fun b!5247766 () Bool)

(declare-fun res!2226962 () Bool)

(assert (=> b!5247766 (=> res!2226962 e!3264946)))

(assert (=> b!5247766 (= res!2226962 (not (= r!7292 (generalisedConcat!520 (exprs!4735 (h!67178 zl!343))))))))

(declare-fun b!5247767 () Bool)

(declare-fun res!2226955 () Bool)

(assert (=> b!5247767 (=> res!2226955 e!3264939)))

(declare-fun isEmpty!32668 (List!60852) Bool)

(assert (=> b!5247767 (= res!2226955 (isEmpty!32668 (t!374035 (exprs!4735 (h!67178 zl!343)))))))

(declare-fun b!5247768 () Bool)

(declare-fun res!2226951 () Bool)

(assert (=> b!5247768 (=> res!2226951 e!3264936)))

(assert (=> b!5247768 (= res!2226951 (not (= lt!2150386 (Concat!23696 (regOne!30215 (regOne!30214 r!7292)) (generalisedConcat!520 (t!374035 (exprs!4735 (h!67178 zl!343))))))))))

(declare-fun b!5247769 () Bool)

(declare-fun tp!1468635 () Bool)

(assert (=> b!5247769 (= e!3264957 tp!1468635)))

(declare-fun b!5247770 () Bool)

(declare-fun Unit!152828 () Unit!152822)

(assert (=> b!5247770 (= e!3264943 Unit!152828)))

(declare-fun lt!2150366 () Unit!152822)

(assert (=> b!5247770 (= lt!2150366 (lemmaZipperConcatMatchesSameAsBothZippers!88 lt!2150377 lt!2150390 (t!374036 s!2326)))))

(declare-fun res!2226954 () Bool)

(assert (=> b!5247770 (= res!2226954 lt!2150403)))

(declare-fun e!3264945 () Bool)

(assert (=> b!5247770 (=> res!2226954 e!3264945)))

(assert (=> b!5247770 (= (matchZipper!1095 ((_ map or) lt!2150377 lt!2150390) (t!374036 s!2326)) e!3264945)))

(declare-fun b!5247771 () Bool)

(declare-fun lambda!264151 () Int)

(declare-fun forall!14275 (List!60852 Int) Bool)

(assert (=> b!5247771 (= e!3264936 (forall!14275 (t!374035 (exprs!4735 (h!67178 zl!343))) lambda!264151))))

(declare-fun b!5247772 () Bool)

(declare-fun tp!1468637 () Bool)

(declare-fun tp!1468639 () Bool)

(assert (=> b!5247772 (= e!3264957 (and tp!1468637 tp!1468639))))

(declare-fun b!5247773 () Bool)

(declare-fun Unit!152829 () Unit!152822)

(assert (=> b!5247773 (= e!3264959 Unit!152829)))

(declare-fun b!5247774 () Bool)

(declare-fun res!2226944 () Bool)

(assert (=> b!5247774 (=> res!2226944 e!3264946)))

(declare-fun generalisedUnion!780 (List!60852) Regex!14851)

(declare-fun unfocusZipperList!293 (List!60854) List!60852)

(assert (=> b!5247774 (= res!2226944 (not (= r!7292 (generalisedUnion!780 (unfocusZipperList!293 zl!343)))))))

(declare-fun b!5247775 () Bool)

(assert (=> b!5247775 (= e!3264945 (matchZipper!1095 lt!2150390 (t!374036 s!2326)))))

(declare-fun b!5247776 () Bool)

(declare-fun res!2226950 () Bool)

(assert (=> b!5247776 (=> res!2226950 e!3264946)))

(assert (=> b!5247776 (= res!2226950 (not ((_ is Cons!60728) (exprs!4735 (h!67178 zl!343)))))))

(declare-fun b!5247777 () Bool)

(assert (=> b!5247777 (= e!3264953 e!3264955)))

(declare-fun res!2226956 () Bool)

(assert (=> b!5247777 (=> res!2226956 e!3264955)))

(declare-fun lt!2150361 () Int)

(assert (=> b!5247777 (= res!2226956 (>= lt!2150361 lt!2150398))))

(assert (=> b!5247777 (= lt!2150398 (zipperDepthTotal!32 zl!343))))

(assert (=> b!5247777 (= lt!2150361 (zipperDepthTotal!32 lt!2150369))))

(assert (=> b!5247777 (= lt!2150369 (Cons!60730 lt!2150365 Nil!60730))))

(assert (= (and start!554586 res!2226949) b!5247742))

(assert (= (and b!5247742 res!2226947) b!5247764))

(assert (= (and b!5247764 res!2226967) b!5247756))

(assert (= (and b!5247756 (not res!2226957)) b!5247755))

(assert (= (and b!5247755 (not res!2226945)) b!5247766))

(assert (= (and b!5247766 (not res!2226962)) b!5247776))

(assert (= (and b!5247776 (not res!2226950)) b!5247774))

(assert (= (and b!5247774 (not res!2226944)) b!5247740))

(assert (= (and b!5247740 (not res!2226952)) b!5247748))

(assert (= (and b!5247748 (not res!2226968)) b!5247767))

(assert (= (and b!5247767 (not res!2226955)) b!5247750))

(assert (= (and b!5247750 c!907576) b!5247761))

(assert (= (and b!5247750 (not c!907576)) b!5247773))

(assert (= (and b!5247761 (not res!2226959)) b!5247745))

(assert (= (and b!5247750 (not res!2226953)) b!5247739))

(assert (= (and b!5247739 (not res!2226963)) b!5247746))

(assert (= (and b!5247746 (not res!2226969)) b!5247752))

(assert (= (and b!5247746 res!2226948) b!5247747))

(assert (= (and b!5247746 (not res!2226958)) b!5247754))

(assert (= (and b!5247754 c!907574) b!5247770))

(assert (= (and b!5247754 (not c!907574)) b!5247753))

(assert (= (and b!5247770 (not res!2226954)) b!5247775))

(assert (= (and b!5247754 c!907575) b!5247758))

(assert (= (and b!5247754 (not c!907575)) b!5247765))

(assert (= (and b!5247758 (not res!2226964)) b!5247759))

(assert (= (and b!5247754 (not res!2226965)) b!5247763))

(assert (= (and b!5247754 (not res!2226960)) b!5247757))

(assert (= (and b!5247757 (not res!2226966)) b!5247777))

(assert (= (and b!5247777 (not res!2226956)) b!5247744))

(assert (= (and b!5247744 (not res!2226961)) b!5247762))

(assert (= (and b!5247762 (not res!2226946)) b!5247768))

(assert (= (and b!5247768 (not res!2226951)) b!5247771))

(assert (= (and start!554586 ((_ is ElementMatch!14851) r!7292)) b!5247743))

(assert (= (and start!554586 ((_ is Concat!23696) r!7292)) b!5247772))

(assert (= (and start!554586 ((_ is Star!14851) r!7292)) b!5247769))

(assert (= (and start!554586 ((_ is Union!14851) r!7292)) b!5247749))

(assert (= (and start!554586 condSetEmpty!33491) setIsEmpty!33491))

(assert (= (and start!554586 (not condSetEmpty!33491)) setNonEmpty!33491))

(assert (= setNonEmpty!33491 b!5247741))

(assert (= b!5247760 b!5247738))

(assert (= (and start!554586 ((_ is Cons!60730) zl!343)) b!5247760))

(assert (= (and start!554586 ((_ is Cons!60729) s!2326)) b!5247751))

(declare-fun m!6291320 () Bool)

(assert (=> b!5247758 m!6291320))

(declare-fun m!6291322 () Bool)

(assert (=> b!5247758 m!6291322))

(declare-fun m!6291324 () Bool)

(assert (=> b!5247758 m!6291324))

(declare-fun m!6291326 () Bool)

(assert (=> b!5247777 m!6291326))

(declare-fun m!6291328 () Bool)

(assert (=> b!5247777 m!6291328))

(declare-fun m!6291330 () Bool)

(assert (=> b!5247746 m!6291330))

(declare-fun m!6291332 () Bool)

(assert (=> b!5247746 m!6291332))

(declare-fun m!6291334 () Bool)

(assert (=> b!5247746 m!6291334))

(declare-fun m!6291336 () Bool)

(assert (=> b!5247746 m!6291336))

(declare-fun m!6291338 () Bool)

(assert (=> b!5247768 m!6291338))

(declare-fun m!6291340 () Bool)

(assert (=> b!5247750 m!6291340))

(declare-fun m!6291342 () Bool)

(assert (=> b!5247750 m!6291342))

(declare-fun m!6291344 () Bool)

(assert (=> b!5247750 m!6291344))

(declare-fun m!6291346 () Bool)

(assert (=> b!5247750 m!6291346))

(declare-fun m!6291348 () Bool)

(assert (=> b!5247750 m!6291348))

(declare-fun m!6291350 () Bool)

(assert (=> b!5247750 m!6291350))

(declare-fun m!6291352 () Bool)

(assert (=> b!5247750 m!6291352))

(declare-fun m!6291354 () Bool)

(assert (=> b!5247745 m!6291354))

(declare-fun m!6291356 () Bool)

(assert (=> b!5247756 m!6291356))

(declare-fun m!6291358 () Bool)

(assert (=> b!5247756 m!6291358))

(declare-fun m!6291360 () Bool)

(assert (=> b!5247756 m!6291360))

(declare-fun m!6291362 () Bool)

(assert (=> b!5247770 m!6291362))

(declare-fun m!6291364 () Bool)

(assert (=> b!5247770 m!6291364))

(assert (=> b!5247752 m!6291322))

(declare-fun m!6291366 () Bool)

(assert (=> b!5247767 m!6291366))

(declare-fun m!6291368 () Bool)

(assert (=> start!554586 m!6291368))

(declare-fun m!6291370 () Bool)

(assert (=> b!5247763 m!6291370))

(declare-fun m!6291372 () Bool)

(assert (=> b!5247771 m!6291372))

(declare-fun m!6291374 () Bool)

(assert (=> b!5247774 m!6291374))

(assert (=> b!5247774 m!6291374))

(declare-fun m!6291376 () Bool)

(assert (=> b!5247774 m!6291376))

(declare-fun m!6291378 () Bool)

(assert (=> b!5247754 m!6291378))

(declare-fun m!6291380 () Bool)

(assert (=> b!5247754 m!6291380))

(declare-fun m!6291382 () Bool)

(assert (=> b!5247754 m!6291382))

(declare-fun m!6291384 () Bool)

(assert (=> b!5247754 m!6291384))

(declare-fun m!6291386 () Bool)

(assert (=> b!5247754 m!6291386))

(declare-fun m!6291388 () Bool)

(assert (=> b!5247754 m!6291388))

(declare-fun m!6291390 () Bool)

(assert (=> b!5247754 m!6291390))

(declare-fun m!6291392 () Bool)

(assert (=> b!5247754 m!6291392))

(declare-fun m!6291394 () Bool)

(assert (=> b!5247754 m!6291394))

(declare-fun m!6291396 () Bool)

(assert (=> b!5247754 m!6291396))

(declare-fun m!6291398 () Bool)

(assert (=> b!5247754 m!6291398))

(declare-fun m!6291400 () Bool)

(assert (=> b!5247754 m!6291400))

(declare-fun m!6291402 () Bool)

(assert (=> b!5247739 m!6291402))

(declare-fun m!6291404 () Bool)

(assert (=> b!5247739 m!6291404))

(declare-fun m!6291406 () Bool)

(assert (=> b!5247760 m!6291406))

(declare-fun m!6291408 () Bool)

(assert (=> b!5247755 m!6291408))

(declare-fun m!6291410 () Bool)

(assert (=> b!5247762 m!6291410))

(declare-fun m!6291412 () Bool)

(assert (=> b!5247762 m!6291412))

(declare-fun m!6291414 () Bool)

(assert (=> b!5247762 m!6291414))

(assert (=> b!5247762 m!6291370))

(declare-fun m!6291416 () Bool)

(assert (=> b!5247762 m!6291416))

(declare-fun m!6291418 () Bool)

(assert (=> b!5247762 m!6291418))

(declare-fun m!6291420 () Bool)

(assert (=> b!5247762 m!6291420))

(declare-fun m!6291422 () Bool)

(assert (=> b!5247762 m!6291422))

(declare-fun m!6291424 () Bool)

(assert (=> b!5247762 m!6291424))

(declare-fun m!6291426 () Bool)

(assert (=> b!5247762 m!6291426))

(declare-fun m!6291428 () Bool)

(assert (=> b!5247762 m!6291428))

(assert (=> b!5247747 m!6291322))

(assert (=> b!5247759 m!6291354))

(declare-fun m!6291430 () Bool)

(assert (=> b!5247744 m!6291430))

(declare-fun m!6291432 () Bool)

(assert (=> b!5247764 m!6291432))

(declare-fun m!6291434 () Bool)

(assert (=> b!5247766 m!6291434))

(assert (=> b!5247775 m!6291354))

(declare-fun m!6291436 () Bool)

(assert (=> b!5247761 m!6291436))

(assert (=> b!5247761 m!6291330))

(declare-fun m!6291438 () Bool)

(assert (=> b!5247761 m!6291438))

(declare-fun m!6291440 () Bool)

(assert (=> setNonEmpty!33491 m!6291440))

(declare-fun m!6291442 () Bool)

(assert (=> b!5247742 m!6291442))

(declare-fun m!6291444 () Bool)

(assert (=> b!5247748 m!6291444))

(declare-fun m!6291446 () Bool)

(assert (=> b!5247748 m!6291446))

(declare-fun m!6291448 () Bool)

(assert (=> b!5247748 m!6291448))

(assert (=> b!5247748 m!6291444))

(declare-fun m!6291450 () Bool)

(assert (=> b!5247748 m!6291450))

(declare-fun m!6291452 () Bool)

(assert (=> b!5247748 m!6291452))

(assert (=> b!5247748 m!6291446))

(declare-fun m!6291454 () Bool)

(assert (=> b!5247748 m!6291454))

(check-sat (not b!5247767) (not setNonEmpty!33491) tp_is_empty!38955 (not b!5247761) (not b!5247771) (not b!5247764) (not b!5247760) (not b!5247751) (not b!5247772) (not b!5247758) (not b!5247744) (not b!5247770) (not b!5247752) (not b!5247748) (not b!5247768) (not b!5247763) (not b!5247750) (not b!5247756) (not b!5247754) (not b!5247741) (not b!5247739) (not b!5247769) (not b!5247738) (not b!5247775) (not b!5247747) (not b!5247759) (not b!5247745) (not b!5247762) (not b!5247766) (not b!5247742) (not b!5247774) (not b!5247749) (not b!5247746) (not b!5247777) (not start!554586) (not b!5247755))
(check-sat)
(get-model)

(declare-fun d!1690741 () Bool)

(declare-fun c!907636 () Bool)

(declare-fun isEmpty!32670 (List!60853) Bool)

(assert (=> d!1690741 (= c!907636 (isEmpty!32670 (t!374036 s!2326)))))

(declare-fun e!3265056 () Bool)

(assert (=> d!1690741 (= (matchZipper!1095 lt!2150390 (t!374036 s!2326)) e!3265056)))

(declare-fun b!5247955 () Bool)

(declare-fun nullableZipper!1266 ((InoxSet Context!8470)) Bool)

(assert (=> b!5247955 (= e!3265056 (nullableZipper!1266 lt!2150390))))

(declare-fun b!5247956 () Bool)

(declare-fun derivationStepZipper!1110 ((InoxSet Context!8470) C!29972) (InoxSet Context!8470))

(declare-fun head!11250 (List!60853) C!29972)

(declare-fun tail!10347 (List!60853) List!60853)

(assert (=> b!5247956 (= e!3265056 (matchZipper!1095 (derivationStepZipper!1110 lt!2150390 (head!11250 (t!374036 s!2326))) (tail!10347 (t!374036 s!2326))))))

(assert (= (and d!1690741 c!907636) b!5247955))

(assert (= (and d!1690741 (not c!907636)) b!5247956))

(declare-fun m!6291544 () Bool)

(assert (=> d!1690741 m!6291544))

(declare-fun m!6291546 () Bool)

(assert (=> b!5247955 m!6291546))

(declare-fun m!6291548 () Bool)

(assert (=> b!5247956 m!6291548))

(assert (=> b!5247956 m!6291548))

(declare-fun m!6291550 () Bool)

(assert (=> b!5247956 m!6291550))

(declare-fun m!6291552 () Bool)

(assert (=> b!5247956 m!6291552))

(assert (=> b!5247956 m!6291550))

(assert (=> b!5247956 m!6291552))

(declare-fun m!6291554 () Bool)

(assert (=> b!5247956 m!6291554))

(assert (=> b!5247759 d!1690741))

(declare-fun b!5248018 () Bool)

(declare-fun e!3265101 () (InoxSet Context!8470))

(declare-fun call!371837 () (InoxSet Context!8470))

(assert (=> b!5248018 (= e!3265101 call!371837)))

(declare-fun b!5248019 () Bool)

(declare-fun e!3265100 () (InoxSet Context!8470))

(declare-fun e!3265098 () (InoxSet Context!8470))

(assert (=> b!5248019 (= e!3265100 e!3265098)))

(declare-fun c!907660 () Bool)

(assert (=> b!5248019 (= c!907660 ((_ is Union!14851) (regTwo!30215 (regOne!30214 r!7292))))))

(declare-fun d!1690749 () Bool)

(declare-fun c!907659 () Bool)

(assert (=> d!1690749 (= c!907659 (and ((_ is ElementMatch!14851) (regTwo!30215 (regOne!30214 r!7292))) (= (c!907577 (regTwo!30215 (regOne!30214 r!7292))) (h!67177 s!2326))))))

(assert (=> d!1690749 (= (derivationStepZipperDown!299 (regTwo!30215 (regOne!30214 r!7292)) lt!2150364 (h!67177 s!2326)) e!3265100)))

(declare-fun c!907662 () Bool)

(declare-fun c!907661 () Bool)

(declare-fun bm!371828 () Bool)

(declare-fun call!371836 () List!60852)

(declare-fun call!371838 () (InoxSet Context!8470))

(assert (=> bm!371828 (= call!371838 (derivationStepZipperDown!299 (ite c!907660 (regTwo!30215 (regTwo!30215 (regOne!30214 r!7292))) (ite c!907662 (regTwo!30214 (regTwo!30215 (regOne!30214 r!7292))) (ite c!907661 (regOne!30214 (regTwo!30215 (regOne!30214 r!7292))) (reg!15180 (regTwo!30215 (regOne!30214 r!7292)))))) (ite (or c!907660 c!907662) lt!2150364 (Context!8471 call!371836)) (h!67177 s!2326)))))

(declare-fun b!5248020 () Bool)

(declare-fun e!3265099 () (InoxSet Context!8470))

(assert (=> b!5248020 (= e!3265099 e!3265101)))

(assert (=> b!5248020 (= c!907661 ((_ is Concat!23696) (regTwo!30215 (regOne!30214 r!7292))))))

(declare-fun call!371834 () (InoxSet Context!8470))

(declare-fun bm!371829 () Bool)

(declare-fun call!371835 () List!60852)

(assert (=> bm!371829 (= call!371834 (derivationStepZipperDown!299 (ite c!907660 (regOne!30215 (regTwo!30215 (regOne!30214 r!7292))) (regOne!30214 (regTwo!30215 (regOne!30214 r!7292)))) (ite c!907660 lt!2150364 (Context!8471 call!371835)) (h!67177 s!2326)))))

(declare-fun b!5248021 () Bool)

(declare-fun e!3265097 () Bool)

(assert (=> b!5248021 (= e!3265097 (nullable!5020 (regOne!30214 (regTwo!30215 (regOne!30214 r!7292)))))))

(declare-fun b!5248022 () Bool)

(declare-fun c!907658 () Bool)

(assert (=> b!5248022 (= c!907658 ((_ is Star!14851) (regTwo!30215 (regOne!30214 r!7292))))))

(declare-fun e!3265102 () (InoxSet Context!8470))

(assert (=> b!5248022 (= e!3265101 e!3265102)))

(declare-fun b!5248023 () Bool)

(assert (=> b!5248023 (= e!3265102 call!371837)))

(declare-fun bm!371830 () Bool)

(declare-fun call!371833 () (InoxSet Context!8470))

(assert (=> bm!371830 (= call!371833 call!371838)))

(declare-fun b!5248024 () Bool)

(assert (=> b!5248024 (= e!3265099 ((_ map or) call!371834 call!371833))))

(declare-fun bm!371831 () Bool)

(assert (=> bm!371831 (= call!371837 call!371833)))

(declare-fun bm!371832 () Bool)

(declare-fun $colon$colon!1315 (List!60852 Regex!14851) List!60852)

(assert (=> bm!371832 (= call!371835 ($colon$colon!1315 (exprs!4735 lt!2150364) (ite (or c!907662 c!907661) (regTwo!30214 (regTwo!30215 (regOne!30214 r!7292))) (regTwo!30215 (regOne!30214 r!7292)))))))

(declare-fun b!5248025 () Bool)

(assert (=> b!5248025 (= e!3265098 ((_ map or) call!371834 call!371838))))

(declare-fun b!5248026 () Bool)

(assert (=> b!5248026 (= c!907662 e!3265097)))

(declare-fun res!2227044 () Bool)

(assert (=> b!5248026 (=> (not res!2227044) (not e!3265097))))

(assert (=> b!5248026 (= res!2227044 ((_ is Concat!23696) (regTwo!30215 (regOne!30214 r!7292))))))

(assert (=> b!5248026 (= e!3265098 e!3265099)))

(declare-fun bm!371833 () Bool)

(assert (=> bm!371833 (= call!371836 call!371835)))

(declare-fun b!5248027 () Bool)

(assert (=> b!5248027 (= e!3265100 (store ((as const (Array Context!8470 Bool)) false) lt!2150364 true))))

(declare-fun b!5248028 () Bool)

(assert (=> b!5248028 (= e!3265102 ((as const (Array Context!8470 Bool)) false))))

(assert (= (and d!1690749 c!907659) b!5248027))

(assert (= (and d!1690749 (not c!907659)) b!5248019))

(assert (= (and b!5248019 c!907660) b!5248025))

(assert (= (and b!5248019 (not c!907660)) b!5248026))

(assert (= (and b!5248026 res!2227044) b!5248021))

(assert (= (and b!5248026 c!907662) b!5248024))

(assert (= (and b!5248026 (not c!907662)) b!5248020))

(assert (= (and b!5248020 c!907661) b!5248018))

(assert (= (and b!5248020 (not c!907661)) b!5248022))

(assert (= (and b!5248022 c!907658) b!5248023))

(assert (= (and b!5248022 (not c!907658)) b!5248028))

(assert (= (or b!5248018 b!5248023) bm!371833))

(assert (= (or b!5248018 b!5248023) bm!371831))

(assert (= (or b!5248024 bm!371833) bm!371832))

(assert (= (or b!5248024 bm!371831) bm!371830))

(assert (= (or b!5248025 bm!371830) bm!371828))

(assert (= (or b!5248025 b!5248024) bm!371829))

(declare-fun m!6291572 () Bool)

(assert (=> bm!371829 m!6291572))

(declare-fun m!6291574 () Bool)

(assert (=> b!5248021 m!6291574))

(declare-fun m!6291576 () Bool)

(assert (=> bm!371828 m!6291576))

(declare-fun m!6291578 () Bool)

(assert (=> b!5248027 m!6291578))

(declare-fun m!6291580 () Bool)

(assert (=> bm!371832 m!6291580))

(assert (=> b!5247739 d!1690749))

(declare-fun b!5248029 () Bool)

(declare-fun e!3265107 () (InoxSet Context!8470))

(declare-fun call!371845 () (InoxSet Context!8470))

(assert (=> b!5248029 (= e!3265107 call!371845)))

(declare-fun b!5248030 () Bool)

(declare-fun e!3265106 () (InoxSet Context!8470))

(declare-fun e!3265104 () (InoxSet Context!8470))

(assert (=> b!5248030 (= e!3265106 e!3265104)))

(declare-fun c!907665 () Bool)

(assert (=> b!5248030 (= c!907665 ((_ is Union!14851) (regOne!30215 (regOne!30214 r!7292))))))

(declare-fun d!1690759 () Bool)

(declare-fun c!907664 () Bool)

(assert (=> d!1690759 (= c!907664 (and ((_ is ElementMatch!14851) (regOne!30215 (regOne!30214 r!7292))) (= (c!907577 (regOne!30215 (regOne!30214 r!7292))) (h!67177 s!2326))))))

(assert (=> d!1690759 (= (derivationStepZipperDown!299 (regOne!30215 (regOne!30214 r!7292)) lt!2150364 (h!67177 s!2326)) e!3265106)))

(declare-fun call!371846 () (InoxSet Context!8470))

(declare-fun c!907667 () Bool)

(declare-fun c!907666 () Bool)

(declare-fun call!371844 () List!60852)

(declare-fun bm!371836 () Bool)

(assert (=> bm!371836 (= call!371846 (derivationStepZipperDown!299 (ite c!907665 (regTwo!30215 (regOne!30215 (regOne!30214 r!7292))) (ite c!907667 (regTwo!30214 (regOne!30215 (regOne!30214 r!7292))) (ite c!907666 (regOne!30214 (regOne!30215 (regOne!30214 r!7292))) (reg!15180 (regOne!30215 (regOne!30214 r!7292)))))) (ite (or c!907665 c!907667) lt!2150364 (Context!8471 call!371844)) (h!67177 s!2326)))))

(declare-fun b!5248031 () Bool)

(declare-fun e!3265105 () (InoxSet Context!8470))

(assert (=> b!5248031 (= e!3265105 e!3265107)))

(assert (=> b!5248031 (= c!907666 ((_ is Concat!23696) (regOne!30215 (regOne!30214 r!7292))))))

(declare-fun bm!371837 () Bool)

(declare-fun call!371843 () List!60852)

(declare-fun call!371842 () (InoxSet Context!8470))

(assert (=> bm!371837 (= call!371842 (derivationStepZipperDown!299 (ite c!907665 (regOne!30215 (regOne!30215 (regOne!30214 r!7292))) (regOne!30214 (regOne!30215 (regOne!30214 r!7292)))) (ite c!907665 lt!2150364 (Context!8471 call!371843)) (h!67177 s!2326)))))

(declare-fun b!5248032 () Bool)

(declare-fun e!3265103 () Bool)

(assert (=> b!5248032 (= e!3265103 (nullable!5020 (regOne!30214 (regOne!30215 (regOne!30214 r!7292)))))))

(declare-fun b!5248033 () Bool)

(declare-fun c!907663 () Bool)

(assert (=> b!5248033 (= c!907663 ((_ is Star!14851) (regOne!30215 (regOne!30214 r!7292))))))

(declare-fun e!3265108 () (InoxSet Context!8470))

(assert (=> b!5248033 (= e!3265107 e!3265108)))

(declare-fun b!5248034 () Bool)

(assert (=> b!5248034 (= e!3265108 call!371845)))

(declare-fun bm!371838 () Bool)

(declare-fun call!371841 () (InoxSet Context!8470))

(assert (=> bm!371838 (= call!371841 call!371846)))

(declare-fun b!5248035 () Bool)

(assert (=> b!5248035 (= e!3265105 ((_ map or) call!371842 call!371841))))

(declare-fun bm!371839 () Bool)

(assert (=> bm!371839 (= call!371845 call!371841)))

(declare-fun bm!371840 () Bool)

(assert (=> bm!371840 (= call!371843 ($colon$colon!1315 (exprs!4735 lt!2150364) (ite (or c!907667 c!907666) (regTwo!30214 (regOne!30215 (regOne!30214 r!7292))) (regOne!30215 (regOne!30214 r!7292)))))))

(declare-fun b!5248036 () Bool)

(assert (=> b!5248036 (= e!3265104 ((_ map or) call!371842 call!371846))))

(declare-fun b!5248037 () Bool)

(assert (=> b!5248037 (= c!907667 e!3265103)))

(declare-fun res!2227045 () Bool)

(assert (=> b!5248037 (=> (not res!2227045) (not e!3265103))))

(assert (=> b!5248037 (= res!2227045 ((_ is Concat!23696) (regOne!30215 (regOne!30214 r!7292))))))

(assert (=> b!5248037 (= e!3265104 e!3265105)))

(declare-fun bm!371841 () Bool)

(assert (=> bm!371841 (= call!371844 call!371843)))

(declare-fun b!5248038 () Bool)

(assert (=> b!5248038 (= e!3265106 (store ((as const (Array Context!8470 Bool)) false) lt!2150364 true))))

(declare-fun b!5248039 () Bool)

(assert (=> b!5248039 (= e!3265108 ((as const (Array Context!8470 Bool)) false))))

(assert (= (and d!1690759 c!907664) b!5248038))

(assert (= (and d!1690759 (not c!907664)) b!5248030))

(assert (= (and b!5248030 c!907665) b!5248036))

(assert (= (and b!5248030 (not c!907665)) b!5248037))

(assert (= (and b!5248037 res!2227045) b!5248032))

(assert (= (and b!5248037 c!907667) b!5248035))

(assert (= (and b!5248037 (not c!907667)) b!5248031))

(assert (= (and b!5248031 c!907666) b!5248029))

(assert (= (and b!5248031 (not c!907666)) b!5248033))

(assert (= (and b!5248033 c!907663) b!5248034))

(assert (= (and b!5248033 (not c!907663)) b!5248039))

(assert (= (or b!5248029 b!5248034) bm!371841))

(assert (= (or b!5248029 b!5248034) bm!371839))

(assert (= (or b!5248035 bm!371841) bm!371840))

(assert (= (or b!5248035 bm!371839) bm!371838))

(assert (= (or b!5248036 bm!371838) bm!371836))

(assert (= (or b!5248036 b!5248035) bm!371837))

(declare-fun m!6291582 () Bool)

(assert (=> bm!371837 m!6291582))

(declare-fun m!6291584 () Bool)

(assert (=> b!5248032 m!6291584))

(declare-fun m!6291586 () Bool)

(assert (=> bm!371836 m!6291586))

(assert (=> b!5248038 m!6291578))

(declare-fun m!6291588 () Bool)

(assert (=> bm!371840 m!6291588))

(assert (=> b!5247739 d!1690759))

(declare-fun bs!1217696 () Bool)

(declare-fun d!1690761 () Bool)

(assert (= bs!1217696 (and d!1690761 b!5247771)))

(declare-fun lambda!264172 () Int)

(assert (=> bs!1217696 (= lambda!264172 lambda!264151)))

(assert (=> d!1690761 (= (inv!80374 (h!67178 zl!343)) (forall!14275 (exprs!4735 (h!67178 zl!343)) lambda!264172))))

(declare-fun bs!1217697 () Bool)

(assert (= bs!1217697 d!1690761))

(declare-fun m!6291598 () Bool)

(assert (=> bs!1217697 m!6291598))

(assert (=> b!5247760 d!1690761))

(declare-fun e!3265122 () Bool)

(declare-fun d!1690767 () Bool)

(assert (=> d!1690767 (= (matchZipper!1095 ((_ map or) lt!2150383 lt!2150390) (t!374036 s!2326)) e!3265122)))

(declare-fun res!2227054 () Bool)

(assert (=> d!1690767 (=> res!2227054 e!3265122)))

(assert (=> d!1690767 (= res!2227054 (matchZipper!1095 lt!2150383 (t!374036 s!2326)))))

(declare-fun lt!2150430 () Unit!152822)

(declare-fun choose!39088 ((InoxSet Context!8470) (InoxSet Context!8470) List!60853) Unit!152822)

(assert (=> d!1690767 (= lt!2150430 (choose!39088 lt!2150383 lt!2150390 (t!374036 s!2326)))))

(assert (=> d!1690767 (= (lemmaZipperConcatMatchesSameAsBothZippers!88 lt!2150383 lt!2150390 (t!374036 s!2326)) lt!2150430)))

(declare-fun b!5248058 () Bool)

(assert (=> b!5248058 (= e!3265122 (matchZipper!1095 lt!2150390 (t!374036 s!2326)))))

(assert (= (and d!1690767 (not res!2227054)) b!5248058))

(assert (=> d!1690767 m!6291438))

(assert (=> d!1690767 m!6291330))

(declare-fun m!6291624 () Bool)

(assert (=> d!1690767 m!6291624))

(assert (=> b!5248058 m!6291354))

(assert (=> b!5247761 d!1690767))

(declare-fun d!1690781 () Bool)

(declare-fun c!907673 () Bool)

(assert (=> d!1690781 (= c!907673 (isEmpty!32670 (t!374036 s!2326)))))

(declare-fun e!3265123 () Bool)

(assert (=> d!1690781 (= (matchZipper!1095 lt!2150383 (t!374036 s!2326)) e!3265123)))

(declare-fun b!5248059 () Bool)

(assert (=> b!5248059 (= e!3265123 (nullableZipper!1266 lt!2150383))))

(declare-fun b!5248060 () Bool)

(assert (=> b!5248060 (= e!3265123 (matchZipper!1095 (derivationStepZipper!1110 lt!2150383 (head!11250 (t!374036 s!2326))) (tail!10347 (t!374036 s!2326))))))

(assert (= (and d!1690781 c!907673) b!5248059))

(assert (= (and d!1690781 (not c!907673)) b!5248060))

(assert (=> d!1690781 m!6291544))

(declare-fun m!6291626 () Bool)

(assert (=> b!5248059 m!6291626))

(assert (=> b!5248060 m!6291548))

(assert (=> b!5248060 m!6291548))

(declare-fun m!6291628 () Bool)

(assert (=> b!5248060 m!6291628))

(assert (=> b!5248060 m!6291552))

(assert (=> b!5248060 m!6291628))

(assert (=> b!5248060 m!6291552))

(declare-fun m!6291630 () Bool)

(assert (=> b!5248060 m!6291630))

(assert (=> b!5247761 d!1690781))

(declare-fun d!1690783 () Bool)

(declare-fun c!907674 () Bool)

(assert (=> d!1690783 (= c!907674 (isEmpty!32670 (t!374036 s!2326)))))

(declare-fun e!3265126 () Bool)

(assert (=> d!1690783 (= (matchZipper!1095 ((_ map or) lt!2150383 lt!2150390) (t!374036 s!2326)) e!3265126)))

(declare-fun b!5248063 () Bool)

(assert (=> b!5248063 (= e!3265126 (nullableZipper!1266 ((_ map or) lt!2150383 lt!2150390)))))

(declare-fun b!5248064 () Bool)

(assert (=> b!5248064 (= e!3265126 (matchZipper!1095 (derivationStepZipper!1110 ((_ map or) lt!2150383 lt!2150390) (head!11250 (t!374036 s!2326))) (tail!10347 (t!374036 s!2326))))))

(assert (= (and d!1690783 c!907674) b!5248063))

(assert (= (and d!1690783 (not c!907674)) b!5248064))

(assert (=> d!1690783 m!6291544))

(declare-fun m!6291632 () Bool)

(assert (=> b!5248063 m!6291632))

(assert (=> b!5248064 m!6291548))

(assert (=> b!5248064 m!6291548))

(declare-fun m!6291634 () Bool)

(assert (=> b!5248064 m!6291634))

(assert (=> b!5248064 m!6291552))

(assert (=> b!5248064 m!6291634))

(assert (=> b!5248064 m!6291552))

(declare-fun m!6291640 () Bool)

(assert (=> b!5248064 m!6291640))

(assert (=> b!5247761 d!1690783))

(declare-fun d!1690787 () Bool)

(declare-fun lt!2150433 () Int)

(assert (=> d!1690787 (>= lt!2150433 0)))

(declare-fun e!3265129 () Int)

(assert (=> d!1690787 (= lt!2150433 e!3265129)))

(declare-fun c!907677 () Bool)

(assert (=> d!1690787 (= c!907677 ((_ is Cons!60730) zl!343))))

(assert (=> d!1690787 (= (zipperDepthTotal!32 zl!343) lt!2150433)))

(declare-fun b!5248069 () Bool)

(declare-fun contextDepthTotal!24 (Context!8470) Int)

(assert (=> b!5248069 (= e!3265129 (+ (contextDepthTotal!24 (h!67178 zl!343)) (zipperDepthTotal!32 (t!374037 zl!343))))))

(declare-fun b!5248070 () Bool)

(assert (=> b!5248070 (= e!3265129 0)))

(assert (= (and d!1690787 c!907677) b!5248069))

(assert (= (and d!1690787 (not c!907677)) b!5248070))

(declare-fun m!6291642 () Bool)

(assert (=> b!5248069 m!6291642))

(declare-fun m!6291644 () Bool)

(assert (=> b!5248069 m!6291644))

(assert (=> b!5247777 d!1690787))

(declare-fun d!1690789 () Bool)

(declare-fun lt!2150434 () Int)

(assert (=> d!1690789 (>= lt!2150434 0)))

(declare-fun e!3265130 () Int)

(assert (=> d!1690789 (= lt!2150434 e!3265130)))

(declare-fun c!907678 () Bool)

(assert (=> d!1690789 (= c!907678 ((_ is Cons!60730) lt!2150369))))

(assert (=> d!1690789 (= (zipperDepthTotal!32 lt!2150369) lt!2150434)))

(declare-fun b!5248071 () Bool)

(assert (=> b!5248071 (= e!3265130 (+ (contextDepthTotal!24 (h!67178 lt!2150369)) (zipperDepthTotal!32 (t!374037 lt!2150369))))))

(declare-fun b!5248072 () Bool)

(assert (=> b!5248072 (= e!3265130 0)))

(assert (= (and d!1690789 c!907678) b!5248071))

(assert (= (and d!1690789 (not c!907678)) b!5248072))

(declare-fun m!6291646 () Bool)

(assert (=> b!5248071 m!6291646))

(declare-fun m!6291648 () Bool)

(assert (=> b!5248071 m!6291648))

(assert (=> b!5247777 d!1690789))

(declare-fun e!3265131 () Bool)

(declare-fun d!1690791 () Bool)

(assert (=> d!1690791 (= (matchZipper!1095 ((_ map or) lt!2150372 lt!2150390) (t!374036 s!2326)) e!3265131)))

(declare-fun res!2227057 () Bool)

(assert (=> d!1690791 (=> res!2227057 e!3265131)))

(assert (=> d!1690791 (= res!2227057 (matchZipper!1095 lt!2150372 (t!374036 s!2326)))))

(declare-fun lt!2150435 () Unit!152822)

(assert (=> d!1690791 (= lt!2150435 (choose!39088 lt!2150372 lt!2150390 (t!374036 s!2326)))))

(assert (=> d!1690791 (= (lemmaZipperConcatMatchesSameAsBothZippers!88 lt!2150372 lt!2150390 (t!374036 s!2326)) lt!2150435)))

(declare-fun b!5248073 () Bool)

(assert (=> b!5248073 (= e!3265131 (matchZipper!1095 lt!2150390 (t!374036 s!2326)))))

(assert (= (and d!1690791 (not res!2227057)) b!5248073))

(assert (=> d!1690791 m!6291324))

(assert (=> d!1690791 m!6291322))

(declare-fun m!6291650 () Bool)

(assert (=> d!1690791 m!6291650))

(assert (=> b!5248073 m!6291354))

(assert (=> b!5247758 d!1690791))

(declare-fun d!1690793 () Bool)

(declare-fun c!907679 () Bool)

(assert (=> d!1690793 (= c!907679 (isEmpty!32670 (t!374036 s!2326)))))

(declare-fun e!3265132 () Bool)

(assert (=> d!1690793 (= (matchZipper!1095 lt!2150372 (t!374036 s!2326)) e!3265132)))

(declare-fun b!5248074 () Bool)

(assert (=> b!5248074 (= e!3265132 (nullableZipper!1266 lt!2150372))))

(declare-fun b!5248075 () Bool)

(assert (=> b!5248075 (= e!3265132 (matchZipper!1095 (derivationStepZipper!1110 lt!2150372 (head!11250 (t!374036 s!2326))) (tail!10347 (t!374036 s!2326))))))

(assert (= (and d!1690793 c!907679) b!5248074))

(assert (= (and d!1690793 (not c!907679)) b!5248075))

(assert (=> d!1690793 m!6291544))

(declare-fun m!6291652 () Bool)

(assert (=> b!5248074 m!6291652))

(assert (=> b!5248075 m!6291548))

(assert (=> b!5248075 m!6291548))

(declare-fun m!6291654 () Bool)

(assert (=> b!5248075 m!6291654))

(assert (=> b!5248075 m!6291552))

(assert (=> b!5248075 m!6291654))

(assert (=> b!5248075 m!6291552))

(declare-fun m!6291656 () Bool)

(assert (=> b!5248075 m!6291656))

(assert (=> b!5247758 d!1690793))

(declare-fun d!1690795 () Bool)

(declare-fun c!907680 () Bool)

(assert (=> d!1690795 (= c!907680 (isEmpty!32670 (t!374036 s!2326)))))

(declare-fun e!3265133 () Bool)

(assert (=> d!1690795 (= (matchZipper!1095 ((_ map or) lt!2150372 lt!2150390) (t!374036 s!2326)) e!3265133)))

(declare-fun b!5248076 () Bool)

(assert (=> b!5248076 (= e!3265133 (nullableZipper!1266 ((_ map or) lt!2150372 lt!2150390)))))

(declare-fun b!5248077 () Bool)

(assert (=> b!5248077 (= e!3265133 (matchZipper!1095 (derivationStepZipper!1110 ((_ map or) lt!2150372 lt!2150390) (head!11250 (t!374036 s!2326))) (tail!10347 (t!374036 s!2326))))))

(assert (= (and d!1690795 c!907680) b!5248076))

(assert (= (and d!1690795 (not c!907680)) b!5248077))

(assert (=> d!1690795 m!6291544))

(declare-fun m!6291658 () Bool)

(assert (=> b!5248076 m!6291658))

(assert (=> b!5248077 m!6291548))

(assert (=> b!5248077 m!6291548))

(declare-fun m!6291660 () Bool)

(assert (=> b!5248077 m!6291660))

(assert (=> b!5248077 m!6291552))

(assert (=> b!5248077 m!6291660))

(assert (=> b!5248077 m!6291552))

(declare-fun m!6291662 () Bool)

(assert (=> b!5248077 m!6291662))

(assert (=> b!5247758 d!1690795))

(declare-fun b!5248118 () Bool)

(declare-fun e!3265166 () Bool)

(declare-fun call!371869 () Bool)

(assert (=> b!5248118 (= e!3265166 call!371869)))

(declare-fun c!907696 () Bool)

(declare-fun bm!371862 () Bool)

(declare-fun call!371868 () Bool)

(declare-fun c!907695 () Bool)

(assert (=> bm!371862 (= call!371868 (validRegex!6587 (ite c!907696 (reg!15180 r!7292) (ite c!907695 (regTwo!30215 r!7292) (regTwo!30214 r!7292)))))))

(declare-fun d!1690797 () Bool)

(declare-fun res!2227072 () Bool)

(declare-fun e!3265160 () Bool)

(assert (=> d!1690797 (=> res!2227072 e!3265160)))

(assert (=> d!1690797 (= res!2227072 ((_ is ElementMatch!14851) r!7292))))

(assert (=> d!1690797 (= (validRegex!6587 r!7292) e!3265160)))

(declare-fun bm!371863 () Bool)

(declare-fun call!371867 () Bool)

(assert (=> bm!371863 (= call!371867 (validRegex!6587 (ite c!907695 (regOne!30215 r!7292) (regOne!30214 r!7292))))))

(declare-fun b!5248119 () Bool)

(declare-fun e!3265162 () Bool)

(assert (=> b!5248119 (= e!3265162 call!371868)))

(declare-fun b!5248120 () Bool)

(declare-fun e!3265164 () Bool)

(assert (=> b!5248120 (= e!3265160 e!3265164)))

(assert (=> b!5248120 (= c!907696 ((_ is Star!14851) r!7292))))

(declare-fun bm!371864 () Bool)

(assert (=> bm!371864 (= call!371869 call!371868)))

(declare-fun b!5248121 () Bool)

(declare-fun e!3265163 () Bool)

(assert (=> b!5248121 (= e!3265163 call!371869)))

(declare-fun b!5248122 () Bool)

(declare-fun res!2227070 () Bool)

(assert (=> b!5248122 (=> (not res!2227070) (not e!3265166))))

(assert (=> b!5248122 (= res!2227070 call!371867)))

(declare-fun e!3265165 () Bool)

(assert (=> b!5248122 (= e!3265165 e!3265166)))

(declare-fun b!5248123 () Bool)

(assert (=> b!5248123 (= e!3265164 e!3265162)))

(declare-fun res!2227074 () Bool)

(assert (=> b!5248123 (= res!2227074 (not (nullable!5020 (reg!15180 r!7292))))))

(assert (=> b!5248123 (=> (not res!2227074) (not e!3265162))))

(declare-fun b!5248124 () Bool)

(declare-fun res!2227073 () Bool)

(declare-fun e!3265161 () Bool)

(assert (=> b!5248124 (=> res!2227073 e!3265161)))

(assert (=> b!5248124 (= res!2227073 (not ((_ is Concat!23696) r!7292)))))

(assert (=> b!5248124 (= e!3265165 e!3265161)))

(declare-fun b!5248125 () Bool)

(assert (=> b!5248125 (= e!3265161 e!3265163)))

(declare-fun res!2227071 () Bool)

(assert (=> b!5248125 (=> (not res!2227071) (not e!3265163))))

(assert (=> b!5248125 (= res!2227071 call!371867)))

(declare-fun b!5248126 () Bool)

(assert (=> b!5248126 (= e!3265164 e!3265165)))

(assert (=> b!5248126 (= c!907695 ((_ is Union!14851) r!7292))))

(assert (= (and d!1690797 (not res!2227072)) b!5248120))

(assert (= (and b!5248120 c!907696) b!5248123))

(assert (= (and b!5248120 (not c!907696)) b!5248126))

(assert (= (and b!5248123 res!2227074) b!5248119))

(assert (= (and b!5248126 c!907695) b!5248122))

(assert (= (and b!5248126 (not c!907695)) b!5248124))

(assert (= (and b!5248122 res!2227070) b!5248118))

(assert (= (and b!5248124 (not res!2227073)) b!5248125))

(assert (= (and b!5248125 res!2227071) b!5248121))

(assert (= (or b!5248118 b!5248121) bm!371864))

(assert (= (or b!5248122 b!5248125) bm!371863))

(assert (= (or b!5248119 bm!371864) bm!371862))

(declare-fun m!6291664 () Bool)

(assert (=> bm!371862 m!6291664))

(declare-fun m!6291666 () Bool)

(assert (=> bm!371863 m!6291666))

(declare-fun m!6291668 () Bool)

(assert (=> b!5248123 m!6291668))

(assert (=> start!554586 d!1690797))

(declare-fun bs!1217702 () Bool)

(declare-fun d!1690799 () Bool)

(assert (= bs!1217702 (and d!1690799 b!5247771)))

(declare-fun lambda!264175 () Int)

(assert (=> bs!1217702 (= lambda!264175 lambda!264151)))

(declare-fun bs!1217703 () Bool)

(assert (= bs!1217703 (and d!1690799 d!1690761)))

(assert (=> bs!1217703 (= lambda!264175 lambda!264172)))

(declare-fun b!5248176 () Bool)

(declare-fun e!3265196 () Regex!14851)

(declare-fun e!3265198 () Regex!14851)

(assert (=> b!5248176 (= e!3265196 e!3265198)))

(declare-fun c!907719 () Bool)

(assert (=> b!5248176 (= c!907719 ((_ is Cons!60728) (unfocusZipperList!293 zl!343)))))

(declare-fun b!5248177 () Bool)

(declare-fun e!3265199 () Bool)

(declare-fun lt!2150442 () Regex!14851)

(declare-fun head!11251 (List!60852) Regex!14851)

(assert (=> b!5248177 (= e!3265199 (= lt!2150442 (head!11251 (unfocusZipperList!293 zl!343))))))

(declare-fun b!5248178 () Bool)

(declare-fun isUnion!242 (Regex!14851) Bool)

(assert (=> b!5248178 (= e!3265199 (isUnion!242 lt!2150442))))

(declare-fun b!5248179 () Bool)

(assert (=> b!5248179 (= e!3265196 (h!67176 (unfocusZipperList!293 zl!343)))))

(declare-fun b!5248180 () Bool)

(declare-fun e!3265200 () Bool)

(declare-fun isEmptyLang!810 (Regex!14851) Bool)

(assert (=> b!5248180 (= e!3265200 (isEmptyLang!810 lt!2150442))))

(declare-fun e!3265197 () Bool)

(assert (=> d!1690799 e!3265197))

(declare-fun res!2227085 () Bool)

(assert (=> d!1690799 (=> (not res!2227085) (not e!3265197))))

(assert (=> d!1690799 (= res!2227085 (validRegex!6587 lt!2150442))))

(assert (=> d!1690799 (= lt!2150442 e!3265196)))

(declare-fun c!907718 () Bool)

(declare-fun e!3265201 () Bool)

(assert (=> d!1690799 (= c!907718 e!3265201)))

(declare-fun res!2227084 () Bool)

(assert (=> d!1690799 (=> (not res!2227084) (not e!3265201))))

(assert (=> d!1690799 (= res!2227084 ((_ is Cons!60728) (unfocusZipperList!293 zl!343)))))

(assert (=> d!1690799 (forall!14275 (unfocusZipperList!293 zl!343) lambda!264175)))

(assert (=> d!1690799 (= (generalisedUnion!780 (unfocusZipperList!293 zl!343)) lt!2150442)))

(declare-fun b!5248181 () Bool)

(assert (=> b!5248181 (= e!3265198 EmptyLang!14851)))

(declare-fun b!5248182 () Bool)

(assert (=> b!5248182 (= e!3265200 e!3265199)))

(declare-fun c!907720 () Bool)

(declare-fun tail!10348 (List!60852) List!60852)

(assert (=> b!5248182 (= c!907720 (isEmpty!32668 (tail!10348 (unfocusZipperList!293 zl!343))))))

(declare-fun b!5248183 () Bool)

(assert (=> b!5248183 (= e!3265198 (Union!14851 (h!67176 (unfocusZipperList!293 zl!343)) (generalisedUnion!780 (t!374035 (unfocusZipperList!293 zl!343)))))))

(declare-fun b!5248184 () Bool)

(assert (=> b!5248184 (= e!3265201 (isEmpty!32668 (t!374035 (unfocusZipperList!293 zl!343))))))

(declare-fun b!5248185 () Bool)

(assert (=> b!5248185 (= e!3265197 e!3265200)))

(declare-fun c!907717 () Bool)

(assert (=> b!5248185 (= c!907717 (isEmpty!32668 (unfocusZipperList!293 zl!343)))))

(assert (= (and d!1690799 res!2227084) b!5248184))

(assert (= (and d!1690799 c!907718) b!5248179))

(assert (= (and d!1690799 (not c!907718)) b!5248176))

(assert (= (and b!5248176 c!907719) b!5248183))

(assert (= (and b!5248176 (not c!907719)) b!5248181))

(assert (= (and d!1690799 res!2227085) b!5248185))

(assert (= (and b!5248185 c!907717) b!5248180))

(assert (= (and b!5248185 (not c!907717)) b!5248182))

(assert (= (and b!5248182 c!907720) b!5248177))

(assert (= (and b!5248182 (not c!907720)) b!5248178))

(declare-fun m!6291700 () Bool)

(assert (=> d!1690799 m!6291700))

(assert (=> d!1690799 m!6291374))

(declare-fun m!6291702 () Bool)

(assert (=> d!1690799 m!6291702))

(declare-fun m!6291704 () Bool)

(assert (=> b!5248180 m!6291704))

(assert (=> b!5248177 m!6291374))

(declare-fun m!6291706 () Bool)

(assert (=> b!5248177 m!6291706))

(declare-fun m!6291708 () Bool)

(assert (=> b!5248183 m!6291708))

(declare-fun m!6291710 () Bool)

(assert (=> b!5248184 m!6291710))

(declare-fun m!6291712 () Bool)

(assert (=> b!5248178 m!6291712))

(assert (=> b!5248185 m!6291374))

(declare-fun m!6291714 () Bool)

(assert (=> b!5248185 m!6291714))

(assert (=> b!5248182 m!6291374))

(declare-fun m!6291716 () Bool)

(assert (=> b!5248182 m!6291716))

(assert (=> b!5248182 m!6291716))

(declare-fun m!6291718 () Bool)

(assert (=> b!5248182 m!6291718))

(assert (=> b!5247774 d!1690799))

(declare-fun bs!1217705 () Bool)

(declare-fun d!1690811 () Bool)

(assert (= bs!1217705 (and d!1690811 b!5247771)))

(declare-fun lambda!264178 () Int)

(assert (=> bs!1217705 (= lambda!264178 lambda!264151)))

(declare-fun bs!1217706 () Bool)

(assert (= bs!1217706 (and d!1690811 d!1690761)))

(assert (=> bs!1217706 (= lambda!264178 lambda!264172)))

(declare-fun bs!1217707 () Bool)

(assert (= bs!1217707 (and d!1690811 d!1690799)))

(assert (=> bs!1217707 (= lambda!264178 lambda!264175)))

(declare-fun lt!2150451 () List!60852)

(assert (=> d!1690811 (forall!14275 lt!2150451 lambda!264178)))

(declare-fun e!3265208 () List!60852)

(assert (=> d!1690811 (= lt!2150451 e!3265208)))

(declare-fun c!907724 () Bool)

(assert (=> d!1690811 (= c!907724 ((_ is Cons!60730) zl!343))))

(assert (=> d!1690811 (= (unfocusZipperList!293 zl!343) lt!2150451)))

(declare-fun b!5248195 () Bool)

(assert (=> b!5248195 (= e!3265208 (Cons!60728 (generalisedConcat!520 (exprs!4735 (h!67178 zl!343))) (unfocusZipperList!293 (t!374037 zl!343))))))

(declare-fun b!5248196 () Bool)

(assert (=> b!5248196 (= e!3265208 Nil!60728)))

(assert (= (and d!1690811 c!907724) b!5248195))

(assert (= (and d!1690811 (not c!907724)) b!5248196))

(declare-fun m!6291734 () Bool)

(assert (=> d!1690811 m!6291734))

(assert (=> b!5248195 m!6291434))

(declare-fun m!6291736 () Bool)

(assert (=> b!5248195 m!6291736))

(assert (=> b!5247774 d!1690811))

(declare-fun d!1690819 () Bool)

(declare-fun nullableFct!1418 (Regex!14851) Bool)

(assert (=> d!1690819 (= (nullable!5020 (regTwo!30215 (regOne!30214 r!7292))) (nullableFct!1418 (regTwo!30215 (regOne!30214 r!7292))))))

(declare-fun bs!1217708 () Bool)

(assert (= bs!1217708 d!1690819))

(declare-fun m!6291738 () Bool)

(assert (=> bs!1217708 m!6291738))

(assert (=> b!5247754 d!1690819))

(declare-fun d!1690821 () Bool)

(declare-fun dynLambda!24002 (Int Context!8470) (InoxSet Context!8470))

(assert (=> d!1690821 (= (flatMap!578 lt!2150363 lambda!264150) (dynLambda!24002 lambda!264150 lt!2150365))))

(declare-fun lt!2150454 () Unit!152822)

(declare-fun choose!39091 ((InoxSet Context!8470) Context!8470 Int) Unit!152822)

(assert (=> d!1690821 (= lt!2150454 (choose!39091 lt!2150363 lt!2150365 lambda!264150))))

(assert (=> d!1690821 (= lt!2150363 (store ((as const (Array Context!8470 Bool)) false) lt!2150365 true))))

(assert (=> d!1690821 (= (lemmaFlatMapOnSingletonSet!110 lt!2150363 lt!2150365 lambda!264150) lt!2150454)))

(declare-fun b_lambda!202755 () Bool)

(assert (=> (not b_lambda!202755) (not d!1690821)))

(declare-fun bs!1217709 () Bool)

(assert (= bs!1217709 d!1690821))

(assert (=> bs!1217709 m!6291382))

(declare-fun m!6291740 () Bool)

(assert (=> bs!1217709 m!6291740))

(declare-fun m!6291742 () Bool)

(assert (=> bs!1217709 m!6291742))

(assert (=> bs!1217709 m!6291380))

(assert (=> b!5247754 d!1690821))

(declare-fun d!1690823 () Bool)

(declare-fun c!907725 () Bool)

(assert (=> d!1690823 (= c!907725 (isEmpty!32670 s!2326))))

(declare-fun e!3265209 () Bool)

(assert (=> d!1690823 (= (matchZipper!1095 z!1189 s!2326) e!3265209)))

(declare-fun b!5248197 () Bool)

(assert (=> b!5248197 (= e!3265209 (nullableZipper!1266 z!1189))))

(declare-fun b!5248198 () Bool)

(assert (=> b!5248198 (= e!3265209 (matchZipper!1095 (derivationStepZipper!1110 z!1189 (head!11250 s!2326)) (tail!10347 s!2326)))))

(assert (= (and d!1690823 c!907725) b!5248197))

(assert (= (and d!1690823 (not c!907725)) b!5248198))

(declare-fun m!6291744 () Bool)

(assert (=> d!1690823 m!6291744))

(declare-fun m!6291746 () Bool)

(assert (=> b!5248197 m!6291746))

(declare-fun m!6291748 () Bool)

(assert (=> b!5248198 m!6291748))

(assert (=> b!5248198 m!6291748))

(declare-fun m!6291750 () Bool)

(assert (=> b!5248198 m!6291750))

(declare-fun m!6291752 () Bool)

(assert (=> b!5248198 m!6291752))

(assert (=> b!5248198 m!6291750))

(assert (=> b!5248198 m!6291752))

(declare-fun m!6291754 () Bool)

(assert (=> b!5248198 m!6291754))

(assert (=> b!5247754 d!1690823))

(declare-fun d!1690825 () Bool)

(declare-fun c!907730 () Bool)

(declare-fun e!3265218 () Bool)

(assert (=> d!1690825 (= c!907730 e!3265218)))

(declare-fun res!2227091 () Bool)

(assert (=> d!1690825 (=> (not res!2227091) (not e!3265218))))

(assert (=> d!1690825 (= res!2227091 ((_ is Cons!60728) (exprs!4735 lt!2150359)))))

(declare-fun e!3265217 () (InoxSet Context!8470))

(assert (=> d!1690825 (= (derivationStepZipperUp!223 lt!2150359 (h!67177 s!2326)) e!3265217)))

(declare-fun bm!371879 () Bool)

(declare-fun call!371884 () (InoxSet Context!8470))

(assert (=> bm!371879 (= call!371884 (derivationStepZipperDown!299 (h!67176 (exprs!4735 lt!2150359)) (Context!8471 (t!374035 (exprs!4735 lt!2150359))) (h!67177 s!2326)))))

(declare-fun b!5248209 () Bool)

(declare-fun e!3265216 () (InoxSet Context!8470))

(assert (=> b!5248209 (= e!3265216 ((as const (Array Context!8470 Bool)) false))))

(declare-fun b!5248210 () Bool)

(assert (=> b!5248210 (= e!3265218 (nullable!5020 (h!67176 (exprs!4735 lt!2150359))))))

(declare-fun b!5248211 () Bool)

(assert (=> b!5248211 (= e!3265216 call!371884)))

(declare-fun b!5248212 () Bool)

(assert (=> b!5248212 (= e!3265217 ((_ map or) call!371884 (derivationStepZipperUp!223 (Context!8471 (t!374035 (exprs!4735 lt!2150359))) (h!67177 s!2326))))))

(declare-fun b!5248213 () Bool)

(assert (=> b!5248213 (= e!3265217 e!3265216)))

(declare-fun c!907731 () Bool)

(assert (=> b!5248213 (= c!907731 ((_ is Cons!60728) (exprs!4735 lt!2150359)))))

(assert (= (and d!1690825 res!2227091) b!5248210))

(assert (= (and d!1690825 c!907730) b!5248212))

(assert (= (and d!1690825 (not c!907730)) b!5248213))

(assert (= (and b!5248213 c!907731) b!5248211))

(assert (= (and b!5248213 (not c!907731)) b!5248209))

(assert (= (or b!5248212 b!5248211) bm!371879))

(declare-fun m!6291756 () Bool)

(assert (=> bm!371879 m!6291756))

(declare-fun m!6291758 () Bool)

(assert (=> b!5248210 m!6291758))

(declare-fun m!6291760 () Bool)

(assert (=> b!5248212 m!6291760))

(assert (=> b!5247754 d!1690825))

(declare-fun d!1690827 () Bool)

(declare-fun choose!39093 ((InoxSet Context!8470) Int) (InoxSet Context!8470))

(assert (=> d!1690827 (= (flatMap!578 lt!2150363 lambda!264150) (choose!39093 lt!2150363 lambda!264150))))

(declare-fun bs!1217710 () Bool)

(assert (= bs!1217710 d!1690827))

(declare-fun m!6291762 () Bool)

(assert (=> bs!1217710 m!6291762))

(assert (=> b!5247754 d!1690827))

(declare-fun d!1690829 () Bool)

(assert (=> d!1690829 (= (flatMap!578 lt!2150395 lambda!264150) (choose!39093 lt!2150395 lambda!264150))))

(declare-fun bs!1217711 () Bool)

(assert (= bs!1217711 d!1690829))

(declare-fun m!6291764 () Bool)

(assert (=> bs!1217711 m!6291764))

(assert (=> b!5247754 d!1690829))

(declare-fun d!1690831 () Bool)

(declare-fun c!907736 () Bool)

(declare-fun e!3265227 () Bool)

(assert (=> d!1690831 (= c!907736 e!3265227)))

(declare-fun res!2227094 () Bool)

(assert (=> d!1690831 (=> (not res!2227094) (not e!3265227))))

(assert (=> d!1690831 (= res!2227094 ((_ is Cons!60728) (exprs!4735 lt!2150365)))))

(declare-fun e!3265226 () (InoxSet Context!8470))

(assert (=> d!1690831 (= (derivationStepZipperUp!223 lt!2150365 (h!67177 s!2326)) e!3265226)))

(declare-fun bm!371880 () Bool)

(declare-fun call!371885 () (InoxSet Context!8470))

(assert (=> bm!371880 (= call!371885 (derivationStepZipperDown!299 (h!67176 (exprs!4735 lt!2150365)) (Context!8471 (t!374035 (exprs!4735 lt!2150365))) (h!67177 s!2326)))))

(declare-fun b!5248224 () Bool)

(declare-fun e!3265225 () (InoxSet Context!8470))

(assert (=> b!5248224 (= e!3265225 ((as const (Array Context!8470 Bool)) false))))

(declare-fun b!5248225 () Bool)

(assert (=> b!5248225 (= e!3265227 (nullable!5020 (h!67176 (exprs!4735 lt!2150365))))))

(declare-fun b!5248226 () Bool)

(assert (=> b!5248226 (= e!3265225 call!371885)))

(declare-fun b!5248227 () Bool)

(assert (=> b!5248227 (= e!3265226 ((_ map or) call!371885 (derivationStepZipperUp!223 (Context!8471 (t!374035 (exprs!4735 lt!2150365))) (h!67177 s!2326))))))

(declare-fun b!5248228 () Bool)

(assert (=> b!5248228 (= e!3265226 e!3265225)))

(declare-fun c!907737 () Bool)

(assert (=> b!5248228 (= c!907737 ((_ is Cons!60728) (exprs!4735 lt!2150365)))))

(assert (= (and d!1690831 res!2227094) b!5248225))

(assert (= (and d!1690831 c!907736) b!5248227))

(assert (= (and d!1690831 (not c!907736)) b!5248228))

(assert (= (and b!5248228 c!907737) b!5248226))

(assert (= (and b!5248228 (not c!907737)) b!5248224))

(assert (= (or b!5248227 b!5248226) bm!371880))

(declare-fun m!6291766 () Bool)

(assert (=> bm!371880 m!6291766))

(declare-fun m!6291768 () Bool)

(assert (=> b!5248225 m!6291768))

(declare-fun m!6291770 () Bool)

(assert (=> b!5248227 m!6291770))

(assert (=> b!5247754 d!1690831))

(declare-fun d!1690833 () Bool)

(assert (=> d!1690833 (= (flatMap!578 lt!2150395 lambda!264150) (dynLambda!24002 lambda!264150 lt!2150359))))

(declare-fun lt!2150461 () Unit!152822)

(assert (=> d!1690833 (= lt!2150461 (choose!39091 lt!2150395 lt!2150359 lambda!264150))))

(assert (=> d!1690833 (= lt!2150395 (store ((as const (Array Context!8470 Bool)) false) lt!2150359 true))))

(assert (=> d!1690833 (= (lemmaFlatMapOnSingletonSet!110 lt!2150395 lt!2150359 lambda!264150) lt!2150461)))

(declare-fun b_lambda!202757 () Bool)

(assert (=> (not b_lambda!202757) (not d!1690833)))

(declare-fun bs!1217712 () Bool)

(assert (= bs!1217712 d!1690833))

(assert (=> bs!1217712 m!6291388))

(declare-fun m!6291772 () Bool)

(assert (=> bs!1217712 m!6291772))

(declare-fun m!6291774 () Bool)

(assert (=> bs!1217712 m!6291774))

(assert (=> bs!1217712 m!6291400))

(assert (=> b!5247754 d!1690833))

(declare-fun d!1690835 () Bool)

(assert (=> d!1690835 (= (nullable!5020 (regOne!30215 (regOne!30214 r!7292))) (nullableFct!1418 (regOne!30215 (regOne!30214 r!7292))))))

(declare-fun bs!1217713 () Bool)

(assert (= bs!1217713 d!1690835))

(declare-fun m!6291776 () Bool)

(assert (=> bs!1217713 m!6291776))

(assert (=> b!5247754 d!1690835))

(declare-fun d!1690837 () Bool)

(declare-fun c!907738 () Bool)

(assert (=> d!1690837 (= c!907738 (isEmpty!32670 s!2326))))

(declare-fun e!3265232 () Bool)

(assert (=> d!1690837 (= (matchZipper!1095 lt!2150363 s!2326) e!3265232)))

(declare-fun b!5248237 () Bool)

(assert (=> b!5248237 (= e!3265232 (nullableZipper!1266 lt!2150363))))

(declare-fun b!5248238 () Bool)

(assert (=> b!5248238 (= e!3265232 (matchZipper!1095 (derivationStepZipper!1110 lt!2150363 (head!11250 s!2326)) (tail!10347 s!2326)))))

(assert (= (and d!1690837 c!907738) b!5248237))

(assert (= (and d!1690837 (not c!907738)) b!5248238))

(assert (=> d!1690837 m!6291744))

(declare-fun m!6291778 () Bool)

(assert (=> b!5248237 m!6291778))

(assert (=> b!5248238 m!6291748))

(assert (=> b!5248238 m!6291748))

(declare-fun m!6291780 () Bool)

(assert (=> b!5248238 m!6291780))

(assert (=> b!5248238 m!6291752))

(assert (=> b!5248238 m!6291780))

(assert (=> b!5248238 m!6291752))

(declare-fun m!6291782 () Bool)

(assert (=> b!5248238 m!6291782))

(assert (=> b!5247754 d!1690837))

(assert (=> b!5247775 d!1690741))

(declare-fun d!1690839 () Bool)

(assert (=> d!1690839 (= (isEmpty!32667 (t!374037 zl!343)) ((_ is Nil!60730) (t!374037 zl!343)))))

(assert (=> b!5247755 d!1690839))

(declare-fun bs!1217720 () Bool)

(declare-fun b!5248286 () Bool)

(assert (= bs!1217720 (and b!5248286 b!5247748)))

(declare-fun lambda!264186 () Int)

(assert (=> bs!1217720 (not (= lambda!264186 lambda!264148))))

(assert (=> bs!1217720 (not (= lambda!264186 lambda!264149))))

(assert (=> b!5248286 true))

(assert (=> b!5248286 true))

(declare-fun bs!1217721 () Bool)

(declare-fun b!5248293 () Bool)

(assert (= bs!1217721 (and b!5248293 b!5247748)))

(declare-fun lambda!264187 () Int)

(assert (=> bs!1217721 (not (= lambda!264187 lambda!264148))))

(assert (=> bs!1217721 (= lambda!264187 lambda!264149)))

(declare-fun bs!1217722 () Bool)

(assert (= bs!1217722 (and b!5248293 b!5248286)))

(assert (=> bs!1217722 (not (= lambda!264187 lambda!264186))))

(assert (=> b!5248293 true))

(assert (=> b!5248293 true))

(declare-fun b!5248284 () Bool)

(declare-fun c!907749 () Bool)

(assert (=> b!5248284 (= c!907749 ((_ is ElementMatch!14851) r!7292))))

(declare-fun e!3265262 () Bool)

(declare-fun e!3265261 () Bool)

(assert (=> b!5248284 (= e!3265262 e!3265261)))

(declare-fun b!5248285 () Bool)

(assert (=> b!5248285 (= e!3265261 (= s!2326 (Cons!60729 (c!907577 r!7292) Nil!60729)))))

(declare-fun e!3265264 () Bool)

(declare-fun call!371891 () Bool)

(assert (=> b!5248286 (= e!3265264 call!371891)))

(declare-fun b!5248287 () Bool)

(declare-fun e!3265259 () Bool)

(assert (=> b!5248287 (= e!3265259 (matchRSpec!1954 (regTwo!30215 r!7292) s!2326))))

(declare-fun d!1690841 () Bool)

(declare-fun c!907751 () Bool)

(assert (=> d!1690841 (= c!907751 ((_ is EmptyExpr!14851) r!7292))))

(declare-fun e!3265263 () Bool)

(assert (=> d!1690841 (= (matchRSpec!1954 r!7292 s!2326) e!3265263)))

(declare-fun bm!371885 () Bool)

(declare-fun call!371890 () Bool)

(assert (=> bm!371885 (= call!371890 (isEmpty!32670 s!2326))))

(declare-fun b!5248288 () Bool)

(declare-fun e!3265258 () Bool)

(assert (=> b!5248288 (= e!3265258 e!3265259)))

(declare-fun res!2227128 () Bool)

(assert (=> b!5248288 (= res!2227128 (matchRSpec!1954 (regOne!30215 r!7292) s!2326))))

(assert (=> b!5248288 (=> res!2227128 e!3265259)))

(declare-fun b!5248289 () Bool)

(declare-fun res!2227129 () Bool)

(assert (=> b!5248289 (=> res!2227129 e!3265264)))

(assert (=> b!5248289 (= res!2227129 call!371890)))

(declare-fun e!3265260 () Bool)

(assert (=> b!5248289 (= e!3265260 e!3265264)))

(declare-fun b!5248290 () Bool)

(assert (=> b!5248290 (= e!3265263 e!3265262)))

(declare-fun res!2227130 () Bool)

(assert (=> b!5248290 (= res!2227130 (not ((_ is EmptyLang!14851) r!7292)))))

(assert (=> b!5248290 (=> (not res!2227130) (not e!3265262))))

(declare-fun b!5248291 () Bool)

(declare-fun c!907752 () Bool)

(assert (=> b!5248291 (= c!907752 ((_ is Union!14851) r!7292))))

(assert (=> b!5248291 (= e!3265261 e!3265258)))

(declare-fun b!5248292 () Bool)

(assert (=> b!5248292 (= e!3265263 call!371890)))

(assert (=> b!5248293 (= e!3265260 call!371891)))

(declare-fun b!5248294 () Bool)

(assert (=> b!5248294 (= e!3265258 e!3265260)))

(declare-fun c!907750 () Bool)

(assert (=> b!5248294 (= c!907750 ((_ is Star!14851) r!7292))))

(declare-fun bm!371886 () Bool)

(assert (=> bm!371886 (= call!371891 (Exists!2032 (ite c!907750 lambda!264186 lambda!264187)))))

(assert (= (and d!1690841 c!907751) b!5248292))

(assert (= (and d!1690841 (not c!907751)) b!5248290))

(assert (= (and b!5248290 res!2227130) b!5248284))

(assert (= (and b!5248284 c!907749) b!5248285))

(assert (= (and b!5248284 (not c!907749)) b!5248291))

(assert (= (and b!5248291 c!907752) b!5248288))

(assert (= (and b!5248291 (not c!907752)) b!5248294))

(assert (= (and b!5248288 (not res!2227128)) b!5248287))

(assert (= (and b!5248294 c!907750) b!5248289))

(assert (= (and b!5248294 (not c!907750)) b!5248293))

(assert (= (and b!5248289 (not res!2227129)) b!5248286))

(assert (= (or b!5248286 b!5248293) bm!371886))

(assert (= (or b!5248292 b!5248289) bm!371885))

(declare-fun m!6291816 () Bool)

(assert (=> b!5248287 m!6291816))

(assert (=> bm!371885 m!6291744))

(declare-fun m!6291818 () Bool)

(assert (=> b!5248288 m!6291818))

(declare-fun m!6291820 () Bool)

(assert (=> bm!371886 m!6291820))

(assert (=> b!5247756 d!1690841))

(declare-fun b!5248345 () Bool)

(declare-fun e!3265293 () Bool)

(assert (=> b!5248345 (= e!3265293 (nullable!5020 r!7292))))

(declare-fun b!5248346 () Bool)

(declare-fun derivativeStep!4087 (Regex!14851 C!29972) Regex!14851)

(assert (=> b!5248346 (= e!3265293 (matchR!7036 (derivativeStep!4087 r!7292 (head!11250 s!2326)) (tail!10347 s!2326)))))

(declare-fun b!5248347 () Bool)

(declare-fun e!3265296 () Bool)

(declare-fun lt!2150474 () Bool)

(assert (=> b!5248347 (= e!3265296 (not lt!2150474))))

(declare-fun b!5248348 () Bool)

(declare-fun e!3265291 () Bool)

(assert (=> b!5248348 (= e!3265291 e!3265296)))

(declare-fun c!907763 () Bool)

(assert (=> b!5248348 (= c!907763 ((_ is EmptyLang!14851) r!7292))))

(declare-fun b!5248349 () Bool)

(declare-fun res!2227166 () Bool)

(declare-fun e!3265294 () Bool)

(assert (=> b!5248349 (=> res!2227166 e!3265294)))

(declare-fun e!3265292 () Bool)

(assert (=> b!5248349 (= res!2227166 e!3265292)))

(declare-fun res!2227163 () Bool)

(assert (=> b!5248349 (=> (not res!2227163) (not e!3265292))))

(assert (=> b!5248349 (= res!2227163 lt!2150474)))

(declare-fun b!5248350 () Bool)

(declare-fun e!3265290 () Bool)

(assert (=> b!5248350 (= e!3265290 (not (= (head!11250 s!2326) (c!907577 r!7292))))))

(declare-fun b!5248351 () Bool)

(assert (=> b!5248351 (= e!3265292 (= (head!11250 s!2326) (c!907577 r!7292)))))

(declare-fun d!1690851 () Bool)

(assert (=> d!1690851 e!3265291))

(declare-fun c!907762 () Bool)

(assert (=> d!1690851 (= c!907762 ((_ is EmptyExpr!14851) r!7292))))

(assert (=> d!1690851 (= lt!2150474 e!3265293)))

(declare-fun c!907764 () Bool)

(assert (=> d!1690851 (= c!907764 (isEmpty!32670 s!2326))))

(assert (=> d!1690851 (validRegex!6587 r!7292)))

(assert (=> d!1690851 (= (matchR!7036 r!7292 s!2326) lt!2150474)))

(declare-fun b!5248352 () Bool)

(declare-fun e!3265295 () Bool)

(assert (=> b!5248352 (= e!3265295 e!3265290)))

(declare-fun res!2227169 () Bool)

(assert (=> b!5248352 (=> res!2227169 e!3265290)))

(declare-fun call!371895 () Bool)

(assert (=> b!5248352 (= res!2227169 call!371895)))

(declare-fun bm!371890 () Bool)

(assert (=> bm!371890 (= call!371895 (isEmpty!32670 s!2326))))

(declare-fun b!5248353 () Bool)

(assert (=> b!5248353 (= e!3265291 (= lt!2150474 call!371895))))

(declare-fun b!5248354 () Bool)

(declare-fun res!2227168 () Bool)

(assert (=> b!5248354 (=> (not res!2227168) (not e!3265292))))

(assert (=> b!5248354 (= res!2227168 (isEmpty!32670 (tail!10347 s!2326)))))

(declare-fun b!5248355 () Bool)

(declare-fun res!2227165 () Bool)

(assert (=> b!5248355 (=> res!2227165 e!3265290)))

(assert (=> b!5248355 (= res!2227165 (not (isEmpty!32670 (tail!10347 s!2326))))))

(declare-fun b!5248356 () Bool)

(declare-fun res!2227170 () Bool)

(assert (=> b!5248356 (=> res!2227170 e!3265294)))

(assert (=> b!5248356 (= res!2227170 (not ((_ is ElementMatch!14851) r!7292)))))

(assert (=> b!5248356 (= e!3265296 e!3265294)))

(declare-fun b!5248357 () Bool)

(assert (=> b!5248357 (= e!3265294 e!3265295)))

(declare-fun res!2227167 () Bool)

(assert (=> b!5248357 (=> (not res!2227167) (not e!3265295))))

(assert (=> b!5248357 (= res!2227167 (not lt!2150474))))

(declare-fun b!5248358 () Bool)

(declare-fun res!2227164 () Bool)

(assert (=> b!5248358 (=> (not res!2227164) (not e!3265292))))

(assert (=> b!5248358 (= res!2227164 (not call!371895))))

(assert (= (and d!1690851 c!907764) b!5248345))

(assert (= (and d!1690851 (not c!907764)) b!5248346))

(assert (= (and d!1690851 c!907762) b!5248353))

(assert (= (and d!1690851 (not c!907762)) b!5248348))

(assert (= (and b!5248348 c!907763) b!5248347))

(assert (= (and b!5248348 (not c!907763)) b!5248356))

(assert (= (and b!5248356 (not res!2227170)) b!5248349))

(assert (= (and b!5248349 res!2227163) b!5248358))

(assert (= (and b!5248358 res!2227164) b!5248354))

(assert (= (and b!5248354 res!2227168) b!5248351))

(assert (= (and b!5248349 (not res!2227166)) b!5248357))

(assert (= (and b!5248357 res!2227167) b!5248352))

(assert (= (and b!5248352 (not res!2227169)) b!5248355))

(assert (= (and b!5248355 (not res!2227165)) b!5248350))

(assert (= (or b!5248353 b!5248352 b!5248358) bm!371890))

(assert (=> bm!371890 m!6291744))

(assert (=> b!5248346 m!6291748))

(assert (=> b!5248346 m!6291748))

(declare-fun m!6291840 () Bool)

(assert (=> b!5248346 m!6291840))

(assert (=> b!5248346 m!6291752))

(assert (=> b!5248346 m!6291840))

(assert (=> b!5248346 m!6291752))

(declare-fun m!6291842 () Bool)

(assert (=> b!5248346 m!6291842))

(assert (=> b!5248355 m!6291752))

(assert (=> b!5248355 m!6291752))

(declare-fun m!6291844 () Bool)

(assert (=> b!5248355 m!6291844))

(assert (=> b!5248354 m!6291752))

(assert (=> b!5248354 m!6291752))

(assert (=> b!5248354 m!6291844))

(declare-fun m!6291846 () Bool)

(assert (=> b!5248345 m!6291846))

(assert (=> d!1690851 m!6291744))

(assert (=> d!1690851 m!6291368))

(assert (=> b!5248350 m!6291748))

(assert (=> b!5248351 m!6291748))

(assert (=> b!5247756 d!1690851))

(declare-fun d!1690861 () Bool)

(assert (=> d!1690861 (= (matchR!7036 r!7292 s!2326) (matchRSpec!1954 r!7292 s!2326))))

(declare-fun lt!2150481 () Unit!152822)

(declare-fun choose!39098 (Regex!14851 List!60853) Unit!152822)

(assert (=> d!1690861 (= lt!2150481 (choose!39098 r!7292 s!2326))))

(assert (=> d!1690861 (validRegex!6587 r!7292)))

(assert (=> d!1690861 (= (mainMatchTheorem!1954 r!7292 s!2326) lt!2150481)))

(declare-fun bs!1217750 () Bool)

(assert (= bs!1217750 d!1690861))

(assert (=> bs!1217750 m!6291358))

(assert (=> bs!1217750 m!6291356))

(declare-fun m!6291894 () Bool)

(assert (=> bs!1217750 m!6291894))

(assert (=> bs!1217750 m!6291368))

(assert (=> b!5247756 d!1690861))

(assert (=> b!5247752 d!1690793))

(declare-fun d!1690871 () Bool)

(assert (=> d!1690871 (= (flatMap!578 z!1189 lambda!264150) (dynLambda!24002 lambda!264150 (h!67178 zl!343)))))

(declare-fun lt!2150482 () Unit!152822)

(assert (=> d!1690871 (= lt!2150482 (choose!39091 z!1189 (h!67178 zl!343) lambda!264150))))

(assert (=> d!1690871 (= z!1189 (store ((as const (Array Context!8470 Bool)) false) (h!67178 zl!343) true))))

(assert (=> d!1690871 (= (lemmaFlatMapOnSingletonSet!110 z!1189 (h!67178 zl!343) lambda!264150) lt!2150482)))

(declare-fun b_lambda!202759 () Bool)

(assert (=> (not b_lambda!202759) (not d!1690871)))

(declare-fun bs!1217751 () Bool)

(assert (= bs!1217751 d!1690871))

(assert (=> bs!1217751 m!6291348))

(declare-fun m!6291896 () Bool)

(assert (=> bs!1217751 m!6291896))

(declare-fun m!6291898 () Bool)

(assert (=> bs!1217751 m!6291898))

(declare-fun m!6291900 () Bool)

(assert (=> bs!1217751 m!6291900))

(assert (=> b!5247750 d!1690871))

(declare-fun d!1690873 () Bool)

(declare-fun c!907773 () Bool)

(declare-fun e!3265311 () Bool)

(assert (=> d!1690873 (= c!907773 e!3265311)))

(declare-fun res!2227175 () Bool)

(assert (=> d!1690873 (=> (not res!2227175) (not e!3265311))))

(assert (=> d!1690873 (= res!2227175 ((_ is Cons!60728) (exprs!4735 (Context!8471 (Cons!60728 (h!67176 (exprs!4735 (h!67178 zl!343))) (t!374035 (exprs!4735 (h!67178 zl!343))))))))))

(declare-fun e!3265310 () (InoxSet Context!8470))

(assert (=> d!1690873 (= (derivationStepZipperUp!223 (Context!8471 (Cons!60728 (h!67176 (exprs!4735 (h!67178 zl!343))) (t!374035 (exprs!4735 (h!67178 zl!343))))) (h!67177 s!2326)) e!3265310)))

(declare-fun bm!371891 () Bool)

(declare-fun call!371896 () (InoxSet Context!8470))

(assert (=> bm!371891 (= call!371896 (derivationStepZipperDown!299 (h!67176 (exprs!4735 (Context!8471 (Cons!60728 (h!67176 (exprs!4735 (h!67178 zl!343))) (t!374035 (exprs!4735 (h!67178 zl!343))))))) (Context!8471 (t!374035 (exprs!4735 (Context!8471 (Cons!60728 (h!67176 (exprs!4735 (h!67178 zl!343))) (t!374035 (exprs!4735 (h!67178 zl!343)))))))) (h!67177 s!2326)))))

(declare-fun b!5248379 () Bool)

(declare-fun e!3265309 () (InoxSet Context!8470))

(assert (=> b!5248379 (= e!3265309 ((as const (Array Context!8470 Bool)) false))))

(declare-fun b!5248380 () Bool)

(assert (=> b!5248380 (= e!3265311 (nullable!5020 (h!67176 (exprs!4735 (Context!8471 (Cons!60728 (h!67176 (exprs!4735 (h!67178 zl!343))) (t!374035 (exprs!4735 (h!67178 zl!343)))))))))))

(declare-fun b!5248381 () Bool)

(assert (=> b!5248381 (= e!3265309 call!371896)))

(declare-fun b!5248382 () Bool)

(assert (=> b!5248382 (= e!3265310 ((_ map or) call!371896 (derivationStepZipperUp!223 (Context!8471 (t!374035 (exprs!4735 (Context!8471 (Cons!60728 (h!67176 (exprs!4735 (h!67178 zl!343))) (t!374035 (exprs!4735 (h!67178 zl!343)))))))) (h!67177 s!2326))))))

(declare-fun b!5248383 () Bool)

(assert (=> b!5248383 (= e!3265310 e!3265309)))

(declare-fun c!907774 () Bool)

(assert (=> b!5248383 (= c!907774 ((_ is Cons!60728) (exprs!4735 (Context!8471 (Cons!60728 (h!67176 (exprs!4735 (h!67178 zl!343))) (t!374035 (exprs!4735 (h!67178 zl!343))))))))))

(assert (= (and d!1690873 res!2227175) b!5248380))

(assert (= (and d!1690873 c!907773) b!5248382))

(assert (= (and d!1690873 (not c!907773)) b!5248383))

(assert (= (and b!5248383 c!907774) b!5248381))

(assert (= (and b!5248383 (not c!907774)) b!5248379))

(assert (= (or b!5248382 b!5248381) bm!371891))

(declare-fun m!6291902 () Bool)

(assert (=> bm!371891 m!6291902))

(declare-fun m!6291904 () Bool)

(assert (=> b!5248380 m!6291904))

(declare-fun m!6291906 () Bool)

(assert (=> b!5248382 m!6291906))

(assert (=> b!5247750 d!1690873))

(declare-fun d!1690875 () Bool)

(declare-fun c!907775 () Bool)

(declare-fun e!3265314 () Bool)

(assert (=> d!1690875 (= c!907775 e!3265314)))

(declare-fun res!2227176 () Bool)

(assert (=> d!1690875 (=> (not res!2227176) (not e!3265314))))

(assert (=> d!1690875 (= res!2227176 ((_ is Cons!60728) (exprs!4735 (h!67178 zl!343))))))

(declare-fun e!3265313 () (InoxSet Context!8470))

(assert (=> d!1690875 (= (derivationStepZipperUp!223 (h!67178 zl!343) (h!67177 s!2326)) e!3265313)))

(declare-fun bm!371892 () Bool)

(declare-fun call!371897 () (InoxSet Context!8470))

(assert (=> bm!371892 (= call!371897 (derivationStepZipperDown!299 (h!67176 (exprs!4735 (h!67178 zl!343))) (Context!8471 (t!374035 (exprs!4735 (h!67178 zl!343)))) (h!67177 s!2326)))))

(declare-fun b!5248384 () Bool)

(declare-fun e!3265312 () (InoxSet Context!8470))

(assert (=> b!5248384 (= e!3265312 ((as const (Array Context!8470 Bool)) false))))

(declare-fun b!5248385 () Bool)

(assert (=> b!5248385 (= e!3265314 (nullable!5020 (h!67176 (exprs!4735 (h!67178 zl!343)))))))

(declare-fun b!5248386 () Bool)

(assert (=> b!5248386 (= e!3265312 call!371897)))

(declare-fun b!5248387 () Bool)

(assert (=> b!5248387 (= e!3265313 ((_ map or) call!371897 (derivationStepZipperUp!223 (Context!8471 (t!374035 (exprs!4735 (h!67178 zl!343)))) (h!67177 s!2326))))))

(declare-fun b!5248388 () Bool)

(assert (=> b!5248388 (= e!3265313 e!3265312)))

(declare-fun c!907776 () Bool)

(assert (=> b!5248388 (= c!907776 ((_ is Cons!60728) (exprs!4735 (h!67178 zl!343))))))

(assert (= (and d!1690875 res!2227176) b!5248385))

(assert (= (and d!1690875 c!907775) b!5248387))

(assert (= (and d!1690875 (not c!907775)) b!5248388))

(assert (= (and b!5248388 c!907776) b!5248386))

(assert (= (and b!5248388 (not c!907776)) b!5248384))

(assert (= (or b!5248387 b!5248386) bm!371892))

(declare-fun m!6291908 () Bool)

(assert (=> bm!371892 m!6291908))

(assert (=> b!5248385 m!6291350))

(declare-fun m!6291910 () Bool)

(assert (=> b!5248387 m!6291910))

(assert (=> b!5247750 d!1690875))

(declare-fun d!1690877 () Bool)

(declare-fun c!907777 () Bool)

(declare-fun e!3265317 () Bool)

(assert (=> d!1690877 (= c!907777 e!3265317)))

(declare-fun res!2227177 () Bool)

(assert (=> d!1690877 (=> (not res!2227177) (not e!3265317))))

(assert (=> d!1690877 (= res!2227177 ((_ is Cons!60728) (exprs!4735 lt!2150364)))))

(declare-fun e!3265316 () (InoxSet Context!8470))

(assert (=> d!1690877 (= (derivationStepZipperUp!223 lt!2150364 (h!67177 s!2326)) e!3265316)))

(declare-fun bm!371893 () Bool)

(declare-fun call!371898 () (InoxSet Context!8470))

(assert (=> bm!371893 (= call!371898 (derivationStepZipperDown!299 (h!67176 (exprs!4735 lt!2150364)) (Context!8471 (t!374035 (exprs!4735 lt!2150364))) (h!67177 s!2326)))))

(declare-fun b!5248389 () Bool)

(declare-fun e!3265315 () (InoxSet Context!8470))

(assert (=> b!5248389 (= e!3265315 ((as const (Array Context!8470 Bool)) false))))

(declare-fun b!5248390 () Bool)

(assert (=> b!5248390 (= e!3265317 (nullable!5020 (h!67176 (exprs!4735 lt!2150364))))))

(declare-fun b!5248391 () Bool)

(assert (=> b!5248391 (= e!3265315 call!371898)))

(declare-fun b!5248392 () Bool)

(assert (=> b!5248392 (= e!3265316 ((_ map or) call!371898 (derivationStepZipperUp!223 (Context!8471 (t!374035 (exprs!4735 lt!2150364))) (h!67177 s!2326))))))

(declare-fun b!5248393 () Bool)

(assert (=> b!5248393 (= e!3265316 e!3265315)))

(declare-fun c!907778 () Bool)

(assert (=> b!5248393 (= c!907778 ((_ is Cons!60728) (exprs!4735 lt!2150364)))))

(assert (= (and d!1690877 res!2227177) b!5248390))

(assert (= (and d!1690877 c!907777) b!5248392))

(assert (= (and d!1690877 (not c!907777)) b!5248393))

(assert (= (and b!5248393 c!907778) b!5248391))

(assert (= (and b!5248393 (not c!907778)) b!5248389))

(assert (= (or b!5248392 b!5248391) bm!371893))

(declare-fun m!6291912 () Bool)

(assert (=> bm!371893 m!6291912))

(declare-fun m!6291914 () Bool)

(assert (=> b!5248390 m!6291914))

(declare-fun m!6291916 () Bool)

(assert (=> b!5248392 m!6291916))

(assert (=> b!5247750 d!1690877))

(declare-fun d!1690879 () Bool)

(assert (=> d!1690879 (= (flatMap!578 z!1189 lambda!264150) (choose!39093 z!1189 lambda!264150))))

(declare-fun bs!1217752 () Bool)

(assert (= bs!1217752 d!1690879))

(declare-fun m!6291918 () Bool)

(assert (=> bs!1217752 m!6291918))

(assert (=> b!5247750 d!1690879))

(declare-fun b!5248394 () Bool)

(declare-fun e!3265322 () (InoxSet Context!8470))

(declare-fun call!371903 () (InoxSet Context!8470))

(assert (=> b!5248394 (= e!3265322 call!371903)))

(declare-fun b!5248395 () Bool)

(declare-fun e!3265321 () (InoxSet Context!8470))

(declare-fun e!3265319 () (InoxSet Context!8470))

(assert (=> b!5248395 (= e!3265321 e!3265319)))

(declare-fun c!907781 () Bool)

(assert (=> b!5248395 (= c!907781 ((_ is Union!14851) (h!67176 (exprs!4735 (h!67178 zl!343)))))))

(declare-fun d!1690881 () Bool)

(declare-fun c!907780 () Bool)

(assert (=> d!1690881 (= c!907780 (and ((_ is ElementMatch!14851) (h!67176 (exprs!4735 (h!67178 zl!343)))) (= (c!907577 (h!67176 (exprs!4735 (h!67178 zl!343)))) (h!67177 s!2326))))))

(assert (=> d!1690881 (= (derivationStepZipperDown!299 (h!67176 (exprs!4735 (h!67178 zl!343))) lt!2150364 (h!67177 s!2326)) e!3265321)))

(declare-fun call!371902 () List!60852)

(declare-fun c!907783 () Bool)

(declare-fun c!907782 () Bool)

(declare-fun call!371904 () (InoxSet Context!8470))

(declare-fun bm!371894 () Bool)

(assert (=> bm!371894 (= call!371904 (derivationStepZipperDown!299 (ite c!907781 (regTwo!30215 (h!67176 (exprs!4735 (h!67178 zl!343)))) (ite c!907783 (regTwo!30214 (h!67176 (exprs!4735 (h!67178 zl!343)))) (ite c!907782 (regOne!30214 (h!67176 (exprs!4735 (h!67178 zl!343)))) (reg!15180 (h!67176 (exprs!4735 (h!67178 zl!343))))))) (ite (or c!907781 c!907783) lt!2150364 (Context!8471 call!371902)) (h!67177 s!2326)))))

(declare-fun b!5248396 () Bool)

(declare-fun e!3265320 () (InoxSet Context!8470))

(assert (=> b!5248396 (= e!3265320 e!3265322)))

(assert (=> b!5248396 (= c!907782 ((_ is Concat!23696) (h!67176 (exprs!4735 (h!67178 zl!343)))))))

(declare-fun call!371900 () (InoxSet Context!8470))

(declare-fun call!371901 () List!60852)

(declare-fun bm!371895 () Bool)

(assert (=> bm!371895 (= call!371900 (derivationStepZipperDown!299 (ite c!907781 (regOne!30215 (h!67176 (exprs!4735 (h!67178 zl!343)))) (regOne!30214 (h!67176 (exprs!4735 (h!67178 zl!343))))) (ite c!907781 lt!2150364 (Context!8471 call!371901)) (h!67177 s!2326)))))

(declare-fun b!5248397 () Bool)

(declare-fun e!3265318 () Bool)

(assert (=> b!5248397 (= e!3265318 (nullable!5020 (regOne!30214 (h!67176 (exprs!4735 (h!67178 zl!343))))))))

(declare-fun b!5248398 () Bool)

(declare-fun c!907779 () Bool)

(assert (=> b!5248398 (= c!907779 ((_ is Star!14851) (h!67176 (exprs!4735 (h!67178 zl!343)))))))

(declare-fun e!3265323 () (InoxSet Context!8470))

(assert (=> b!5248398 (= e!3265322 e!3265323)))

(declare-fun b!5248399 () Bool)

(assert (=> b!5248399 (= e!3265323 call!371903)))

(declare-fun bm!371896 () Bool)

(declare-fun call!371899 () (InoxSet Context!8470))

(assert (=> bm!371896 (= call!371899 call!371904)))

(declare-fun b!5248400 () Bool)

(assert (=> b!5248400 (= e!3265320 ((_ map or) call!371900 call!371899))))

(declare-fun bm!371897 () Bool)

(assert (=> bm!371897 (= call!371903 call!371899)))

(declare-fun bm!371898 () Bool)

(assert (=> bm!371898 (= call!371901 ($colon$colon!1315 (exprs!4735 lt!2150364) (ite (or c!907783 c!907782) (regTwo!30214 (h!67176 (exprs!4735 (h!67178 zl!343)))) (h!67176 (exprs!4735 (h!67178 zl!343))))))))

(declare-fun b!5248401 () Bool)

(assert (=> b!5248401 (= e!3265319 ((_ map or) call!371900 call!371904))))

(declare-fun b!5248402 () Bool)

(assert (=> b!5248402 (= c!907783 e!3265318)))

(declare-fun res!2227178 () Bool)

(assert (=> b!5248402 (=> (not res!2227178) (not e!3265318))))

(assert (=> b!5248402 (= res!2227178 ((_ is Concat!23696) (h!67176 (exprs!4735 (h!67178 zl!343)))))))

(assert (=> b!5248402 (= e!3265319 e!3265320)))

(declare-fun bm!371899 () Bool)

(assert (=> bm!371899 (= call!371902 call!371901)))

(declare-fun b!5248403 () Bool)

(assert (=> b!5248403 (= e!3265321 (store ((as const (Array Context!8470 Bool)) false) lt!2150364 true))))

(declare-fun b!5248404 () Bool)

(assert (=> b!5248404 (= e!3265323 ((as const (Array Context!8470 Bool)) false))))

(assert (= (and d!1690881 c!907780) b!5248403))

(assert (= (and d!1690881 (not c!907780)) b!5248395))

(assert (= (and b!5248395 c!907781) b!5248401))

(assert (= (and b!5248395 (not c!907781)) b!5248402))

(assert (= (and b!5248402 res!2227178) b!5248397))

(assert (= (and b!5248402 c!907783) b!5248400))

(assert (= (and b!5248402 (not c!907783)) b!5248396))

(assert (= (and b!5248396 c!907782) b!5248394))

(assert (= (and b!5248396 (not c!907782)) b!5248398))

(assert (= (and b!5248398 c!907779) b!5248399))

(assert (= (and b!5248398 (not c!907779)) b!5248404))

(assert (= (or b!5248394 b!5248399) bm!371899))

(assert (= (or b!5248394 b!5248399) bm!371897))

(assert (= (or b!5248400 bm!371899) bm!371898))

(assert (= (or b!5248400 bm!371897) bm!371896))

(assert (= (or b!5248401 bm!371896) bm!371894))

(assert (= (or b!5248401 b!5248400) bm!371895))

(declare-fun m!6291920 () Bool)

(assert (=> bm!371895 m!6291920))

(declare-fun m!6291922 () Bool)

(assert (=> b!5248397 m!6291922))

(declare-fun m!6291924 () Bool)

(assert (=> bm!371894 m!6291924))

(assert (=> b!5248403 m!6291578))

(declare-fun m!6291926 () Bool)

(assert (=> bm!371898 m!6291926))

(assert (=> b!5247750 d!1690881))

(declare-fun d!1690883 () Bool)

(assert (=> d!1690883 (= (nullable!5020 (h!67176 (exprs!4735 (h!67178 zl!343)))) (nullableFct!1418 (h!67176 (exprs!4735 (h!67178 zl!343)))))))

(declare-fun bs!1217753 () Bool)

(assert (= bs!1217753 d!1690883))

(declare-fun m!6291928 () Bool)

(assert (=> bs!1217753 m!6291928))

(assert (=> b!5247750 d!1690883))

(declare-fun d!1690885 () Bool)

(declare-fun e!3265324 () Bool)

(assert (=> d!1690885 (= (matchZipper!1095 ((_ map or) lt!2150377 lt!2150390) (t!374036 s!2326)) e!3265324)))

(declare-fun res!2227179 () Bool)

(assert (=> d!1690885 (=> res!2227179 e!3265324)))

(assert (=> d!1690885 (= res!2227179 (matchZipper!1095 lt!2150377 (t!374036 s!2326)))))

(declare-fun lt!2150485 () Unit!152822)

(assert (=> d!1690885 (= lt!2150485 (choose!39088 lt!2150377 lt!2150390 (t!374036 s!2326)))))

(assert (=> d!1690885 (= (lemmaZipperConcatMatchesSameAsBothZippers!88 lt!2150377 lt!2150390 (t!374036 s!2326)) lt!2150485)))

(declare-fun b!5248405 () Bool)

(assert (=> b!5248405 (= e!3265324 (matchZipper!1095 lt!2150390 (t!374036 s!2326)))))

(assert (= (and d!1690885 (not res!2227179)) b!5248405))

(assert (=> d!1690885 m!6291364))

(assert (=> d!1690885 m!6291334))

(declare-fun m!6291930 () Bool)

(assert (=> d!1690885 m!6291930))

(assert (=> b!5248405 m!6291354))

(assert (=> b!5247770 d!1690885))

(declare-fun d!1690887 () Bool)

(declare-fun c!907784 () Bool)

(assert (=> d!1690887 (= c!907784 (isEmpty!32670 (t!374036 s!2326)))))

(declare-fun e!3265325 () Bool)

(assert (=> d!1690887 (= (matchZipper!1095 ((_ map or) lt!2150377 lt!2150390) (t!374036 s!2326)) e!3265325)))

(declare-fun b!5248406 () Bool)

(assert (=> b!5248406 (= e!3265325 (nullableZipper!1266 ((_ map or) lt!2150377 lt!2150390)))))

(declare-fun b!5248407 () Bool)

(assert (=> b!5248407 (= e!3265325 (matchZipper!1095 (derivationStepZipper!1110 ((_ map or) lt!2150377 lt!2150390) (head!11250 (t!374036 s!2326))) (tail!10347 (t!374036 s!2326))))))

(assert (= (and d!1690887 c!907784) b!5248406))

(assert (= (and d!1690887 (not c!907784)) b!5248407))

(assert (=> d!1690887 m!6291544))

(declare-fun m!6291934 () Bool)

(assert (=> b!5248406 m!6291934))

(assert (=> b!5248407 m!6291548))

(assert (=> b!5248407 m!6291548))

(declare-fun m!6291936 () Bool)

(assert (=> b!5248407 m!6291936))

(assert (=> b!5248407 m!6291552))

(assert (=> b!5248407 m!6291936))

(assert (=> b!5248407 m!6291552))

(declare-fun m!6291938 () Bool)

(assert (=> b!5248407 m!6291938))

(assert (=> b!5247770 d!1690887))

(declare-fun d!1690891 () Bool)

(declare-fun res!2227195 () Bool)

(declare-fun e!3265344 () Bool)

(assert (=> d!1690891 (=> res!2227195 e!3265344)))

(assert (=> d!1690891 (= res!2227195 ((_ is Nil!60728) (t!374035 (exprs!4735 (h!67178 zl!343)))))))

(assert (=> d!1690891 (= (forall!14275 (t!374035 (exprs!4735 (h!67178 zl!343))) lambda!264151) e!3265344)))

(declare-fun b!5248437 () Bool)

(declare-fun e!3265345 () Bool)

(assert (=> b!5248437 (= e!3265344 e!3265345)))

(declare-fun res!2227196 () Bool)

(assert (=> b!5248437 (=> (not res!2227196) (not e!3265345))))

(declare-fun dynLambda!24003 (Int Regex!14851) Bool)

(assert (=> b!5248437 (= res!2227196 (dynLambda!24003 lambda!264151 (h!67176 (t!374035 (exprs!4735 (h!67178 zl!343))))))))

(declare-fun b!5248438 () Bool)

(assert (=> b!5248438 (= e!3265345 (forall!14275 (t!374035 (t!374035 (exprs!4735 (h!67178 zl!343)))) lambda!264151))))

(assert (= (and d!1690891 (not res!2227195)) b!5248437))

(assert (= (and b!5248437 res!2227196) b!5248438))

(declare-fun b_lambda!202761 () Bool)

(assert (=> (not b_lambda!202761) (not b!5248437)))

(declare-fun m!6291946 () Bool)

(assert (=> b!5248437 m!6291946))

(declare-fun m!6291948 () Bool)

(assert (=> b!5248438 m!6291948))

(assert (=> b!5247771 d!1690891))

(declare-fun bs!1217782 () Bool)

(declare-fun d!1690895 () Bool)

(assert (= bs!1217782 (and d!1690895 b!5247771)))

(declare-fun lambda!264203 () Int)

(assert (=> bs!1217782 (= lambda!264203 lambda!264151)))

(declare-fun bs!1217783 () Bool)

(assert (= bs!1217783 (and d!1690895 d!1690761)))

(assert (=> bs!1217783 (= lambda!264203 lambda!264172)))

(declare-fun bs!1217784 () Bool)

(assert (= bs!1217784 (and d!1690895 d!1690799)))

(assert (=> bs!1217784 (= lambda!264203 lambda!264175)))

(declare-fun bs!1217785 () Bool)

(assert (= bs!1217785 (and d!1690895 d!1690811)))

(assert (=> bs!1217785 (= lambda!264203 lambda!264178)))

(declare-fun b!5248470 () Bool)

(declare-fun e!3265365 () Bool)

(declare-fun lt!2150491 () Regex!14851)

(declare-fun isConcat!324 (Regex!14851) Bool)

(assert (=> b!5248470 (= e!3265365 (isConcat!324 lt!2150491))))

(declare-fun b!5248471 () Bool)

(declare-fun e!3265368 () Regex!14851)

(assert (=> b!5248471 (= e!3265368 (Concat!23696 (h!67176 (exprs!4735 (h!67178 zl!343))) (generalisedConcat!520 (t!374035 (exprs!4735 (h!67178 zl!343))))))))

(declare-fun b!5248472 () Bool)

(declare-fun e!3265366 () Bool)

(assert (=> b!5248472 (= e!3265366 e!3265365)))

(declare-fun c!907805 () Bool)

(assert (=> b!5248472 (= c!907805 (isEmpty!32668 (tail!10348 (exprs!4735 (h!67178 zl!343)))))))

(declare-fun b!5248473 () Bool)

(declare-fun e!3265369 () Bool)

(assert (=> b!5248473 (= e!3265369 (isEmpty!32668 (t!374035 (exprs!4735 (h!67178 zl!343)))))))

(declare-fun b!5248474 () Bool)

(declare-fun isEmptyExpr!801 (Regex!14851) Bool)

(assert (=> b!5248474 (= e!3265366 (isEmptyExpr!801 lt!2150491))))

(declare-fun b!5248475 () Bool)

(declare-fun e!3265367 () Regex!14851)

(assert (=> b!5248475 (= e!3265367 e!3265368)))

(declare-fun c!907804 () Bool)

(assert (=> b!5248475 (= c!907804 ((_ is Cons!60728) (exprs!4735 (h!67178 zl!343))))))

(declare-fun e!3265370 () Bool)

(assert (=> d!1690895 e!3265370))

(declare-fun res!2227205 () Bool)

(assert (=> d!1690895 (=> (not res!2227205) (not e!3265370))))

(assert (=> d!1690895 (= res!2227205 (validRegex!6587 lt!2150491))))

(assert (=> d!1690895 (= lt!2150491 e!3265367)))

(declare-fun c!907806 () Bool)

(assert (=> d!1690895 (= c!907806 e!3265369)))

(declare-fun res!2227204 () Bool)

(assert (=> d!1690895 (=> (not res!2227204) (not e!3265369))))

(assert (=> d!1690895 (= res!2227204 ((_ is Cons!60728) (exprs!4735 (h!67178 zl!343))))))

(assert (=> d!1690895 (forall!14275 (exprs!4735 (h!67178 zl!343)) lambda!264203)))

(assert (=> d!1690895 (= (generalisedConcat!520 (exprs!4735 (h!67178 zl!343))) lt!2150491)))

(declare-fun b!5248476 () Bool)

(assert (=> b!5248476 (= e!3265367 (h!67176 (exprs!4735 (h!67178 zl!343))))))

(declare-fun b!5248477 () Bool)

(assert (=> b!5248477 (= e!3265365 (= lt!2150491 (head!11251 (exprs!4735 (h!67178 zl!343)))))))

(declare-fun b!5248478 () Bool)

(assert (=> b!5248478 (= e!3265368 EmptyExpr!14851)))

(declare-fun b!5248479 () Bool)

(assert (=> b!5248479 (= e!3265370 e!3265366)))

(declare-fun c!907807 () Bool)

(assert (=> b!5248479 (= c!907807 (isEmpty!32668 (exprs!4735 (h!67178 zl!343))))))

(assert (= (and d!1690895 res!2227204) b!5248473))

(assert (= (and d!1690895 c!907806) b!5248476))

(assert (= (and d!1690895 (not c!907806)) b!5248475))

(assert (= (and b!5248475 c!907804) b!5248471))

(assert (= (and b!5248475 (not c!907804)) b!5248478))

(assert (= (and d!1690895 res!2227205) b!5248479))

(assert (= (and b!5248479 c!907807) b!5248474))

(assert (= (and b!5248479 (not c!907807)) b!5248472))

(assert (= (and b!5248472 c!907805) b!5248477))

(assert (= (and b!5248472 (not c!907805)) b!5248470))

(declare-fun m!6291974 () Bool)

(assert (=> d!1690895 m!6291974))

(declare-fun m!6291976 () Bool)

(assert (=> d!1690895 m!6291976))

(assert (=> b!5248473 m!6291366))

(assert (=> b!5248471 m!6291338))

(declare-fun m!6291978 () Bool)

(assert (=> b!5248479 m!6291978))

(declare-fun m!6291980 () Bool)

(assert (=> b!5248477 m!6291980))

(declare-fun m!6291982 () Bool)

(assert (=> b!5248474 m!6291982))

(declare-fun m!6291984 () Bool)

(assert (=> b!5248472 m!6291984))

(assert (=> b!5248472 m!6291984))

(declare-fun m!6291986 () Bool)

(assert (=> b!5248472 m!6291986))

(declare-fun m!6291988 () Bool)

(assert (=> b!5248470 m!6291988))

(assert (=> b!5247766 d!1690895))

(assert (=> b!5247747 d!1690793))

(declare-fun d!1690913 () Bool)

(assert (=> d!1690913 (= (isEmpty!32668 (t!374035 (exprs!4735 (h!67178 zl!343)))) ((_ is Nil!60728) (t!374035 (exprs!4735 (h!67178 zl!343)))))))

(assert (=> b!5247767 d!1690913))

(declare-fun b!5248601 () Bool)

(declare-fun e!3265436 () Option!14962)

(assert (=> b!5248601 (= e!3265436 (Some!14961 (tuple2!64101 Nil!60729 s!2326)))))

(declare-fun b!5248602 () Bool)

(declare-fun e!3265435 () Option!14962)

(assert (=> b!5248602 (= e!3265436 e!3265435)))

(declare-fun c!907833 () Bool)

(assert (=> b!5248602 (= c!907833 ((_ is Nil!60729) s!2326))))

(declare-fun b!5248603 () Bool)

(declare-fun res!2227227 () Bool)

(declare-fun e!3265434 () Bool)

(assert (=> b!5248603 (=> (not res!2227227) (not e!3265434))))

(declare-fun lt!2150504 () Option!14962)

(declare-fun get!20877 (Option!14962) tuple2!64100)

(assert (=> b!5248603 (= res!2227227 (matchR!7036 (regTwo!30214 r!7292) (_2!35353 (get!20877 lt!2150504))))))

(declare-fun b!5248604 () Bool)

(declare-fun e!3265437 () Bool)

(assert (=> b!5248604 (= e!3265437 (matchR!7036 (regTwo!30214 r!7292) s!2326))))

(declare-fun b!5248605 () Bool)

(declare-fun ++!13246 (List!60853 List!60853) List!60853)

(assert (=> b!5248605 (= e!3265434 (= (++!13246 (_1!35353 (get!20877 lt!2150504)) (_2!35353 (get!20877 lt!2150504))) s!2326))))

(declare-fun b!5248606 () Bool)

(declare-fun res!2227228 () Bool)

(assert (=> b!5248606 (=> (not res!2227228) (not e!3265434))))

(assert (=> b!5248606 (= res!2227228 (matchR!7036 (regOne!30214 r!7292) (_1!35353 (get!20877 lt!2150504))))))

(declare-fun b!5248607 () Bool)

(declare-fun lt!2150505 () Unit!152822)

(declare-fun lt!2150503 () Unit!152822)

(assert (=> b!5248607 (= lt!2150505 lt!2150503)))

(assert (=> b!5248607 (= (++!13246 (++!13246 Nil!60729 (Cons!60729 (h!67177 s!2326) Nil!60729)) (t!374036 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1661 (List!60853 C!29972 List!60853 List!60853) Unit!152822)

(assert (=> b!5248607 (= lt!2150503 (lemmaMoveElementToOtherListKeepsConcatEq!1661 Nil!60729 (h!67177 s!2326) (t!374036 s!2326) s!2326))))

(assert (=> b!5248607 (= e!3265435 (findConcatSeparation!1376 (regOne!30214 r!7292) (regTwo!30214 r!7292) (++!13246 Nil!60729 (Cons!60729 (h!67177 s!2326) Nil!60729)) (t!374036 s!2326) s!2326))))

(declare-fun d!1690917 () Bool)

(declare-fun e!3265433 () Bool)

(assert (=> d!1690917 e!3265433))

(declare-fun res!2227226 () Bool)

(assert (=> d!1690917 (=> res!2227226 e!3265433)))

(assert (=> d!1690917 (= res!2227226 e!3265434)))

(declare-fun res!2227225 () Bool)

(assert (=> d!1690917 (=> (not res!2227225) (not e!3265434))))

(assert (=> d!1690917 (= res!2227225 (isDefined!11665 lt!2150504))))

(assert (=> d!1690917 (= lt!2150504 e!3265436)))

(declare-fun c!907832 () Bool)

(assert (=> d!1690917 (= c!907832 e!3265437)))

(declare-fun res!2227229 () Bool)

(assert (=> d!1690917 (=> (not res!2227229) (not e!3265437))))

(assert (=> d!1690917 (= res!2227229 (matchR!7036 (regOne!30214 r!7292) Nil!60729))))

(assert (=> d!1690917 (validRegex!6587 (regOne!30214 r!7292))))

(assert (=> d!1690917 (= (findConcatSeparation!1376 (regOne!30214 r!7292) (regTwo!30214 r!7292) Nil!60729 s!2326 s!2326) lt!2150504)))

(declare-fun b!5248608 () Bool)

(assert (=> b!5248608 (= e!3265433 (not (isDefined!11665 lt!2150504)))))

(declare-fun b!5248609 () Bool)

(assert (=> b!5248609 (= e!3265435 None!14961)))

(assert (= (and d!1690917 res!2227229) b!5248604))

(assert (= (and d!1690917 c!907832) b!5248601))

(assert (= (and d!1690917 (not c!907832)) b!5248602))

(assert (= (and b!5248602 c!907833) b!5248609))

(assert (= (and b!5248602 (not c!907833)) b!5248607))

(assert (= (and d!1690917 res!2227225) b!5248606))

(assert (= (and b!5248606 res!2227228) b!5248603))

(assert (= (and b!5248603 res!2227227) b!5248605))

(assert (= (and d!1690917 (not res!2227226)) b!5248608))

(declare-fun m!6292076 () Bool)

(assert (=> b!5248608 m!6292076))

(declare-fun m!6292078 () Bool)

(assert (=> b!5248604 m!6292078))

(assert (=> d!1690917 m!6292076))

(declare-fun m!6292080 () Bool)

(assert (=> d!1690917 m!6292080))

(declare-fun m!6292082 () Bool)

(assert (=> d!1690917 m!6292082))

(declare-fun m!6292084 () Bool)

(assert (=> b!5248603 m!6292084))

(declare-fun m!6292086 () Bool)

(assert (=> b!5248603 m!6292086))

(assert (=> b!5248605 m!6292084))

(declare-fun m!6292088 () Bool)

(assert (=> b!5248605 m!6292088))

(declare-fun m!6292090 () Bool)

(assert (=> b!5248607 m!6292090))

(assert (=> b!5248607 m!6292090))

(declare-fun m!6292092 () Bool)

(assert (=> b!5248607 m!6292092))

(declare-fun m!6292094 () Bool)

(assert (=> b!5248607 m!6292094))

(assert (=> b!5248607 m!6292090))

(declare-fun m!6292096 () Bool)

(assert (=> b!5248607 m!6292096))

(assert (=> b!5248606 m!6292084))

(declare-fun m!6292098 () Bool)

(assert (=> b!5248606 m!6292098))

(assert (=> b!5247748 d!1690917))

(declare-fun d!1690949 () Bool)

(declare-fun choose!39100 (Int) Bool)

(assert (=> d!1690949 (= (Exists!2032 lambda!264149) (choose!39100 lambda!264149))))

(declare-fun bs!1217801 () Bool)

(assert (= bs!1217801 d!1690949))

(declare-fun m!6292100 () Bool)

(assert (=> bs!1217801 m!6292100))

(assert (=> b!5247748 d!1690949))

(declare-fun d!1690951 () Bool)

(assert (=> d!1690951 (= (Exists!2032 lambda!264148) (choose!39100 lambda!264148))))

(declare-fun bs!1217802 () Bool)

(assert (= bs!1217802 d!1690951))

(declare-fun m!6292102 () Bool)

(assert (=> bs!1217802 m!6292102))

(assert (=> b!5247748 d!1690951))

(declare-fun bs!1217803 () Bool)

(declare-fun d!1690953 () Bool)

(assert (= bs!1217803 (and d!1690953 b!5247748)))

(declare-fun lambda!264207 () Int)

(assert (=> bs!1217803 (= lambda!264207 lambda!264148)))

(assert (=> bs!1217803 (not (= lambda!264207 lambda!264149))))

(declare-fun bs!1217804 () Bool)

(assert (= bs!1217804 (and d!1690953 b!5248286)))

(assert (=> bs!1217804 (not (= lambda!264207 lambda!264186))))

(declare-fun bs!1217805 () Bool)

(assert (= bs!1217805 (and d!1690953 b!5248293)))

(assert (=> bs!1217805 (not (= lambda!264207 lambda!264187))))

(assert (=> d!1690953 true))

(assert (=> d!1690953 true))

(assert (=> d!1690953 true))

(assert (=> d!1690953 (= (isDefined!11665 (findConcatSeparation!1376 (regOne!30214 r!7292) (regTwo!30214 r!7292) Nil!60729 s!2326 s!2326)) (Exists!2032 lambda!264207))))

(declare-fun lt!2150508 () Unit!152822)

(declare-fun choose!39101 (Regex!14851 Regex!14851 List!60853) Unit!152822)

(assert (=> d!1690953 (= lt!2150508 (choose!39101 (regOne!30214 r!7292) (regTwo!30214 r!7292) s!2326))))

(assert (=> d!1690953 (validRegex!6587 (regOne!30214 r!7292))))

(assert (=> d!1690953 (= (lemmaFindConcatSeparationEquivalentToExists!1140 (regOne!30214 r!7292) (regTwo!30214 r!7292) s!2326) lt!2150508)))

(declare-fun bs!1217806 () Bool)

(assert (= bs!1217806 d!1690953))

(assert (=> bs!1217806 m!6291446))

(declare-fun m!6292104 () Bool)

(assert (=> bs!1217806 m!6292104))

(assert (=> bs!1217806 m!6291446))

(assert (=> bs!1217806 m!6291448))

(declare-fun m!6292106 () Bool)

(assert (=> bs!1217806 m!6292106))

(assert (=> bs!1217806 m!6292082))

(assert (=> b!5247748 d!1690953))

(declare-fun bs!1217807 () Bool)

(declare-fun d!1690955 () Bool)

(assert (= bs!1217807 (and d!1690955 d!1690953)))

(declare-fun lambda!264212 () Int)

(assert (=> bs!1217807 (= lambda!264212 lambda!264207)))

(declare-fun bs!1217808 () Bool)

(assert (= bs!1217808 (and d!1690955 b!5247748)))

(assert (=> bs!1217808 (= lambda!264212 lambda!264148)))

(declare-fun bs!1217809 () Bool)

(assert (= bs!1217809 (and d!1690955 b!5248293)))

(assert (=> bs!1217809 (not (= lambda!264212 lambda!264187))))

(declare-fun bs!1217810 () Bool)

(assert (= bs!1217810 (and d!1690955 b!5248286)))

(assert (=> bs!1217810 (not (= lambda!264212 lambda!264186))))

(assert (=> bs!1217808 (not (= lambda!264212 lambda!264149))))

(assert (=> d!1690955 true))

(assert (=> d!1690955 true))

(assert (=> d!1690955 true))

(declare-fun bs!1217811 () Bool)

(assert (= bs!1217811 d!1690955))

(declare-fun lambda!264213 () Int)

(assert (=> bs!1217811 (not (= lambda!264213 lambda!264212))))

(assert (=> bs!1217807 (not (= lambda!264213 lambda!264207))))

(assert (=> bs!1217808 (not (= lambda!264213 lambda!264148))))

(assert (=> bs!1217809 (= lambda!264213 lambda!264187)))

(assert (=> bs!1217810 (not (= lambda!264213 lambda!264186))))

(assert (=> bs!1217808 (= lambda!264213 lambda!264149)))

(assert (=> d!1690955 true))

(assert (=> d!1690955 true))

(assert (=> d!1690955 true))

(assert (=> d!1690955 (= (Exists!2032 lambda!264212) (Exists!2032 lambda!264213))))

(declare-fun lt!2150511 () Unit!152822)

(declare-fun choose!39102 (Regex!14851 Regex!14851 List!60853) Unit!152822)

(assert (=> d!1690955 (= lt!2150511 (choose!39102 (regOne!30214 r!7292) (regTwo!30214 r!7292) s!2326))))

(assert (=> d!1690955 (validRegex!6587 (regOne!30214 r!7292))))

(assert (=> d!1690955 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!686 (regOne!30214 r!7292) (regTwo!30214 r!7292) s!2326) lt!2150511)))

(declare-fun m!6292108 () Bool)

(assert (=> bs!1217811 m!6292108))

(declare-fun m!6292110 () Bool)

(assert (=> bs!1217811 m!6292110))

(declare-fun m!6292112 () Bool)

(assert (=> bs!1217811 m!6292112))

(assert (=> bs!1217811 m!6292082))

(assert (=> b!5247748 d!1690955))

(declare-fun d!1690957 () Bool)

(declare-fun isEmpty!32672 (Option!14962) Bool)

(assert (=> d!1690957 (= (isDefined!11665 (findConcatSeparation!1376 (regOne!30214 r!7292) (regTwo!30214 r!7292) Nil!60729 s!2326 s!2326)) (not (isEmpty!32672 (findConcatSeparation!1376 (regOne!30214 r!7292) (regTwo!30214 r!7292) Nil!60729 s!2326 s!2326))))))

(declare-fun bs!1217812 () Bool)

(assert (= bs!1217812 d!1690957))

(assert (=> bs!1217812 m!6291446))

(declare-fun m!6292114 () Bool)

(assert (=> bs!1217812 m!6292114))

(assert (=> b!5247748 d!1690957))

(declare-fun bs!1217813 () Bool)

(declare-fun d!1690959 () Bool)

(assert (= bs!1217813 (and d!1690959 b!5247771)))

(declare-fun lambda!264214 () Int)

(assert (=> bs!1217813 (= lambda!264214 lambda!264151)))

(declare-fun bs!1217814 () Bool)

(assert (= bs!1217814 (and d!1690959 d!1690895)))

(assert (=> bs!1217814 (= lambda!264214 lambda!264203)))

(declare-fun bs!1217815 () Bool)

(assert (= bs!1217815 (and d!1690959 d!1690811)))

(assert (=> bs!1217815 (= lambda!264214 lambda!264178)))

(declare-fun bs!1217816 () Bool)

(assert (= bs!1217816 (and d!1690959 d!1690761)))

(assert (=> bs!1217816 (= lambda!264214 lambda!264172)))

(declare-fun bs!1217817 () Bool)

(assert (= bs!1217817 (and d!1690959 d!1690799)))

(assert (=> bs!1217817 (= lambda!264214 lambda!264175)))

(declare-fun b!5248622 () Bool)

(declare-fun e!3265444 () Bool)

(declare-fun lt!2150512 () Regex!14851)

(assert (=> b!5248622 (= e!3265444 (isConcat!324 lt!2150512))))

(declare-fun b!5248623 () Bool)

(declare-fun e!3265447 () Regex!14851)

(assert (=> b!5248623 (= e!3265447 (Concat!23696 (h!67176 (t!374035 (exprs!4735 (h!67178 zl!343)))) (generalisedConcat!520 (t!374035 (t!374035 (exprs!4735 (h!67178 zl!343)))))))))

(declare-fun b!5248624 () Bool)

(declare-fun e!3265445 () Bool)

(assert (=> b!5248624 (= e!3265445 e!3265444)))

(declare-fun c!907835 () Bool)

(assert (=> b!5248624 (= c!907835 (isEmpty!32668 (tail!10348 (t!374035 (exprs!4735 (h!67178 zl!343))))))))

(declare-fun b!5248625 () Bool)

(declare-fun e!3265448 () Bool)

(assert (=> b!5248625 (= e!3265448 (isEmpty!32668 (t!374035 (t!374035 (exprs!4735 (h!67178 zl!343))))))))

(declare-fun b!5248626 () Bool)

(assert (=> b!5248626 (= e!3265445 (isEmptyExpr!801 lt!2150512))))

(declare-fun b!5248627 () Bool)

(declare-fun e!3265446 () Regex!14851)

(assert (=> b!5248627 (= e!3265446 e!3265447)))

(declare-fun c!907834 () Bool)

(assert (=> b!5248627 (= c!907834 ((_ is Cons!60728) (t!374035 (exprs!4735 (h!67178 zl!343)))))))

(declare-fun e!3265449 () Bool)

(assert (=> d!1690959 e!3265449))

(declare-fun res!2227243 () Bool)

(assert (=> d!1690959 (=> (not res!2227243) (not e!3265449))))

(assert (=> d!1690959 (= res!2227243 (validRegex!6587 lt!2150512))))

(assert (=> d!1690959 (= lt!2150512 e!3265446)))

(declare-fun c!907836 () Bool)

(assert (=> d!1690959 (= c!907836 e!3265448)))

(declare-fun res!2227242 () Bool)

(assert (=> d!1690959 (=> (not res!2227242) (not e!3265448))))

(assert (=> d!1690959 (= res!2227242 ((_ is Cons!60728) (t!374035 (exprs!4735 (h!67178 zl!343)))))))

(assert (=> d!1690959 (forall!14275 (t!374035 (exprs!4735 (h!67178 zl!343))) lambda!264214)))

(assert (=> d!1690959 (= (generalisedConcat!520 (t!374035 (exprs!4735 (h!67178 zl!343)))) lt!2150512)))

(declare-fun b!5248628 () Bool)

(assert (=> b!5248628 (= e!3265446 (h!67176 (t!374035 (exprs!4735 (h!67178 zl!343)))))))

(declare-fun b!5248629 () Bool)

(assert (=> b!5248629 (= e!3265444 (= lt!2150512 (head!11251 (t!374035 (exprs!4735 (h!67178 zl!343))))))))

(declare-fun b!5248630 () Bool)

(assert (=> b!5248630 (= e!3265447 EmptyExpr!14851)))

(declare-fun b!5248631 () Bool)

(assert (=> b!5248631 (= e!3265449 e!3265445)))

(declare-fun c!907837 () Bool)

(assert (=> b!5248631 (= c!907837 (isEmpty!32668 (t!374035 (exprs!4735 (h!67178 zl!343)))))))

(assert (= (and d!1690959 res!2227242) b!5248625))

(assert (= (and d!1690959 c!907836) b!5248628))

(assert (= (and d!1690959 (not c!907836)) b!5248627))

(assert (= (and b!5248627 c!907834) b!5248623))

(assert (= (and b!5248627 (not c!907834)) b!5248630))

(assert (= (and d!1690959 res!2227243) b!5248631))

(assert (= (and b!5248631 c!907837) b!5248626))

(assert (= (and b!5248631 (not c!907837)) b!5248624))

(assert (= (and b!5248624 c!907835) b!5248629))

(assert (= (and b!5248624 (not c!907835)) b!5248622))

(declare-fun m!6292116 () Bool)

(assert (=> d!1690959 m!6292116))

(declare-fun m!6292118 () Bool)

(assert (=> d!1690959 m!6292118))

(declare-fun m!6292120 () Bool)

(assert (=> b!5248625 m!6292120))

(declare-fun m!6292122 () Bool)

(assert (=> b!5248623 m!6292122))

(assert (=> b!5248631 m!6291366))

(declare-fun m!6292124 () Bool)

(assert (=> b!5248629 m!6292124))

(declare-fun m!6292126 () Bool)

(assert (=> b!5248626 m!6292126))

(declare-fun m!6292128 () Bool)

(assert (=> b!5248624 m!6292128))

(assert (=> b!5248624 m!6292128))

(declare-fun m!6292130 () Bool)

(assert (=> b!5248624 m!6292130))

(declare-fun m!6292132 () Bool)

(assert (=> b!5248622 m!6292132))

(assert (=> b!5247768 d!1690959))

(declare-fun d!1690961 () Bool)

(declare-fun lt!2150513 () Int)

(assert (=> d!1690961 (>= lt!2150513 0)))

(declare-fun e!3265450 () Int)

(assert (=> d!1690961 (= lt!2150513 e!3265450)))

(declare-fun c!907838 () Bool)

(assert (=> d!1690961 (= c!907838 ((_ is Cons!60730) lt!2150402))))

(assert (=> d!1690961 (= (zipperDepthTotal!32 lt!2150402) lt!2150513)))

(declare-fun b!5248632 () Bool)

(assert (=> b!5248632 (= e!3265450 (+ (contextDepthTotal!24 (h!67178 lt!2150402)) (zipperDepthTotal!32 (t!374037 lt!2150402))))))

(declare-fun b!5248633 () Bool)

(assert (=> b!5248633 (= e!3265450 0)))

(assert (= (and d!1690961 c!907838) b!5248632))

(assert (= (and d!1690961 (not c!907838)) b!5248633))

(declare-fun m!6292134 () Bool)

(assert (=> b!5248632 m!6292134))

(declare-fun m!6292136 () Bool)

(assert (=> b!5248632 m!6292136))

(assert (=> b!5247744 d!1690961))

(declare-fun d!1690963 () Bool)

(declare-fun lt!2150516 () Regex!14851)

(assert (=> d!1690963 (validRegex!6587 lt!2150516)))

(assert (=> d!1690963 (= lt!2150516 (generalisedUnion!780 (unfocusZipperList!293 zl!343)))))

(assert (=> d!1690963 (= (unfocusZipper!593 zl!343) lt!2150516)))

(declare-fun bs!1217818 () Bool)

(assert (= bs!1217818 d!1690963))

(declare-fun m!6292138 () Bool)

(assert (=> bs!1217818 m!6292138))

(assert (=> bs!1217818 m!6291374))

(assert (=> bs!1217818 m!6291374))

(assert (=> bs!1217818 m!6291376))

(assert (=> b!5247764 d!1690963))

(assert (=> b!5247745 d!1690741))

(assert (=> b!5247746 d!1690781))

(declare-fun d!1690965 () Bool)

(declare-fun c!907839 () Bool)

(assert (=> d!1690965 (= c!907839 (isEmpty!32670 (t!374036 s!2326)))))

(declare-fun e!3265451 () Bool)

(assert (=> d!1690965 (= (matchZipper!1095 lt!2150368 (t!374036 s!2326)) e!3265451)))

(declare-fun b!5248634 () Bool)

(assert (=> b!5248634 (= e!3265451 (nullableZipper!1266 lt!2150368))))

(declare-fun b!5248635 () Bool)

(assert (=> b!5248635 (= e!3265451 (matchZipper!1095 (derivationStepZipper!1110 lt!2150368 (head!11250 (t!374036 s!2326))) (tail!10347 (t!374036 s!2326))))))

(assert (= (and d!1690965 c!907839) b!5248634))

(assert (= (and d!1690965 (not c!907839)) b!5248635))

(assert (=> d!1690965 m!6291544))

(declare-fun m!6292140 () Bool)

(assert (=> b!5248634 m!6292140))

(assert (=> b!5248635 m!6291548))

(assert (=> b!5248635 m!6291548))

(declare-fun m!6292142 () Bool)

(assert (=> b!5248635 m!6292142))

(assert (=> b!5248635 m!6291552))

(assert (=> b!5248635 m!6292142))

(assert (=> b!5248635 m!6291552))

(declare-fun m!6292144 () Bool)

(assert (=> b!5248635 m!6292144))

(assert (=> b!5247746 d!1690965))

(declare-fun d!1690967 () Bool)

(declare-fun c!907840 () Bool)

(assert (=> d!1690967 (= c!907840 (isEmpty!32670 (t!374036 s!2326)))))

(declare-fun e!3265452 () Bool)

(assert (=> d!1690967 (= (matchZipper!1095 lt!2150377 (t!374036 s!2326)) e!3265452)))

(declare-fun b!5248636 () Bool)

(assert (=> b!5248636 (= e!3265452 (nullableZipper!1266 lt!2150377))))

(declare-fun b!5248637 () Bool)

(assert (=> b!5248637 (= e!3265452 (matchZipper!1095 (derivationStepZipper!1110 lt!2150377 (head!11250 (t!374036 s!2326))) (tail!10347 (t!374036 s!2326))))))

(assert (= (and d!1690967 c!907840) b!5248636))

(assert (= (and d!1690967 (not c!907840)) b!5248637))

(assert (=> d!1690967 m!6291544))

(declare-fun m!6292146 () Bool)

(assert (=> b!5248636 m!6292146))

(assert (=> b!5248637 m!6291548))

(assert (=> b!5248637 m!6291548))

(declare-fun m!6292148 () Bool)

(assert (=> b!5248637 m!6292148))

(assert (=> b!5248637 m!6291552))

(assert (=> b!5248637 m!6292148))

(assert (=> b!5248637 m!6291552))

(declare-fun m!6292150 () Bool)

(assert (=> b!5248637 m!6292150))

(assert (=> b!5247746 d!1690967))

(declare-fun e!3265453 () Bool)

(declare-fun d!1690969 () Bool)

(assert (=> d!1690969 (= (matchZipper!1095 ((_ map or) lt!2150377 lt!2150372) (t!374036 s!2326)) e!3265453)))

(declare-fun res!2227244 () Bool)

(assert (=> d!1690969 (=> res!2227244 e!3265453)))

(assert (=> d!1690969 (= res!2227244 (matchZipper!1095 lt!2150377 (t!374036 s!2326)))))

(declare-fun lt!2150517 () Unit!152822)

(assert (=> d!1690969 (= lt!2150517 (choose!39088 lt!2150377 lt!2150372 (t!374036 s!2326)))))

(assert (=> d!1690969 (= (lemmaZipperConcatMatchesSameAsBothZippers!88 lt!2150377 lt!2150372 (t!374036 s!2326)) lt!2150517)))

(declare-fun b!5248638 () Bool)

(assert (=> b!5248638 (= e!3265453 (matchZipper!1095 lt!2150372 (t!374036 s!2326)))))

(assert (= (and d!1690969 (not res!2227244)) b!5248638))

(declare-fun m!6292152 () Bool)

(assert (=> d!1690969 m!6292152))

(assert (=> d!1690969 m!6291334))

(declare-fun m!6292154 () Bool)

(assert (=> d!1690969 m!6292154))

(assert (=> b!5248638 m!6291322))

(assert (=> b!5247746 d!1690969))

(declare-fun d!1690971 () Bool)

(assert (=> d!1690971 (= (matchR!7036 lt!2150381 s!2326) (matchZipper!1095 lt!2150395 s!2326))))

(declare-fun lt!2150520 () Unit!152822)

(declare-fun choose!39103 ((InoxSet Context!8470) List!60854 Regex!14851 List!60853) Unit!152822)

(assert (=> d!1690971 (= lt!2150520 (choose!39103 lt!2150395 lt!2150402 lt!2150381 s!2326))))

(assert (=> d!1690971 (validRegex!6587 lt!2150381)))

(assert (=> d!1690971 (= (theoremZipperRegexEquiv!285 lt!2150395 lt!2150402 lt!2150381 s!2326) lt!2150520)))

(declare-fun bs!1217819 () Bool)

(assert (= bs!1217819 d!1690971))

(assert (=> bs!1217819 m!6291414))

(assert (=> bs!1217819 m!6291370))

(declare-fun m!6292156 () Bool)

(assert (=> bs!1217819 m!6292156))

(declare-fun m!6292158 () Bool)

(assert (=> bs!1217819 m!6292158))

(assert (=> b!5247762 d!1690971))

(declare-fun d!1690973 () Bool)

(declare-fun c!907841 () Bool)

(assert (=> d!1690973 (= c!907841 (isEmpty!32670 s!2326))))

(declare-fun e!3265454 () Bool)

(assert (=> d!1690973 (= (matchZipper!1095 lt!2150395 s!2326) e!3265454)))

(declare-fun b!5248639 () Bool)

(assert (=> b!5248639 (= e!3265454 (nullableZipper!1266 lt!2150395))))

(declare-fun b!5248640 () Bool)

(assert (=> b!5248640 (= e!3265454 (matchZipper!1095 (derivationStepZipper!1110 lt!2150395 (head!11250 s!2326)) (tail!10347 s!2326)))))

(assert (= (and d!1690973 c!907841) b!5248639))

(assert (= (and d!1690973 (not c!907841)) b!5248640))

(assert (=> d!1690973 m!6291744))

(declare-fun m!6292160 () Bool)

(assert (=> b!5248639 m!6292160))

(assert (=> b!5248640 m!6291748))

(assert (=> b!5248640 m!6291748))

(declare-fun m!6292162 () Bool)

(assert (=> b!5248640 m!6292162))

(assert (=> b!5248640 m!6291752))

(assert (=> b!5248640 m!6292162))

(assert (=> b!5248640 m!6291752))

(declare-fun m!6292164 () Bool)

(assert (=> b!5248640 m!6292164))

(assert (=> b!5247762 d!1690973))

(declare-fun bs!1217820 () Bool)

(declare-fun d!1690975 () Bool)

(assert (= bs!1217820 (and d!1690975 b!5247771)))

(declare-fun lambda!264215 () Int)

(assert (=> bs!1217820 (= lambda!264215 lambda!264151)))

(declare-fun bs!1217821 () Bool)

(assert (= bs!1217821 (and d!1690975 d!1690895)))

(assert (=> bs!1217821 (= lambda!264215 lambda!264203)))

(declare-fun bs!1217822 () Bool)

(assert (= bs!1217822 (and d!1690975 d!1690811)))

(assert (=> bs!1217822 (= lambda!264215 lambda!264178)))

(declare-fun bs!1217823 () Bool)

(assert (= bs!1217823 (and d!1690975 d!1690799)))

(assert (=> bs!1217823 (= lambda!264215 lambda!264175)))

(declare-fun bs!1217824 () Bool)

(assert (= bs!1217824 (and d!1690975 d!1690761)))

(assert (=> bs!1217824 (= lambda!264215 lambda!264172)))

(declare-fun bs!1217825 () Bool)

(assert (= bs!1217825 (and d!1690975 d!1690959)))

(assert (=> bs!1217825 (= lambda!264215 lambda!264214)))

(declare-fun b!5248641 () Bool)

(declare-fun e!3265455 () Bool)

(declare-fun lt!2150521 () Regex!14851)

(assert (=> b!5248641 (= e!3265455 (isConcat!324 lt!2150521))))

(declare-fun b!5248642 () Bool)

(declare-fun e!3265458 () Regex!14851)

(assert (=> b!5248642 (= e!3265458 (Concat!23696 (h!67176 lt!2150393) (generalisedConcat!520 (t!374035 lt!2150393))))))

(declare-fun b!5248643 () Bool)

(declare-fun e!3265456 () Bool)

(assert (=> b!5248643 (= e!3265456 e!3265455)))

(declare-fun c!907843 () Bool)

(assert (=> b!5248643 (= c!907843 (isEmpty!32668 (tail!10348 lt!2150393)))))

(declare-fun b!5248644 () Bool)

(declare-fun e!3265459 () Bool)

(assert (=> b!5248644 (= e!3265459 (isEmpty!32668 (t!374035 lt!2150393)))))

(declare-fun b!5248645 () Bool)

(assert (=> b!5248645 (= e!3265456 (isEmptyExpr!801 lt!2150521))))

(declare-fun b!5248646 () Bool)

(declare-fun e!3265457 () Regex!14851)

(assert (=> b!5248646 (= e!3265457 e!3265458)))

(declare-fun c!907842 () Bool)

(assert (=> b!5248646 (= c!907842 ((_ is Cons!60728) lt!2150393))))

(declare-fun e!3265460 () Bool)

(assert (=> d!1690975 e!3265460))

(declare-fun res!2227246 () Bool)

(assert (=> d!1690975 (=> (not res!2227246) (not e!3265460))))

(assert (=> d!1690975 (= res!2227246 (validRegex!6587 lt!2150521))))

(assert (=> d!1690975 (= lt!2150521 e!3265457)))

(declare-fun c!907844 () Bool)

(assert (=> d!1690975 (= c!907844 e!3265459)))

(declare-fun res!2227245 () Bool)

(assert (=> d!1690975 (=> (not res!2227245) (not e!3265459))))

(assert (=> d!1690975 (= res!2227245 ((_ is Cons!60728) lt!2150393))))

(assert (=> d!1690975 (forall!14275 lt!2150393 lambda!264215)))

(assert (=> d!1690975 (= (generalisedConcat!520 lt!2150393) lt!2150521)))

(declare-fun b!5248647 () Bool)

(assert (=> b!5248647 (= e!3265457 (h!67176 lt!2150393))))

(declare-fun b!5248648 () Bool)

(assert (=> b!5248648 (= e!3265455 (= lt!2150521 (head!11251 lt!2150393)))))

(declare-fun b!5248649 () Bool)

(assert (=> b!5248649 (= e!3265458 EmptyExpr!14851)))

(declare-fun b!5248650 () Bool)

(assert (=> b!5248650 (= e!3265460 e!3265456)))

(declare-fun c!907845 () Bool)

(assert (=> b!5248650 (= c!907845 (isEmpty!32668 lt!2150393))))

(assert (= (and d!1690975 res!2227245) b!5248644))

(assert (= (and d!1690975 c!907844) b!5248647))

(assert (= (and d!1690975 (not c!907844)) b!5248646))

(assert (= (and b!5248646 c!907842) b!5248642))

(assert (= (and b!5248646 (not c!907842)) b!5248649))

(assert (= (and d!1690975 res!2227246) b!5248650))

(assert (= (and b!5248650 c!907845) b!5248645))

(assert (= (and b!5248650 (not c!907845)) b!5248643))

(assert (= (and b!5248643 c!907843) b!5248648))

(assert (= (and b!5248643 (not c!907843)) b!5248641))

(declare-fun m!6292166 () Bool)

(assert (=> d!1690975 m!6292166))

(declare-fun m!6292168 () Bool)

(assert (=> d!1690975 m!6292168))

(declare-fun m!6292170 () Bool)

(assert (=> b!5248644 m!6292170))

(declare-fun m!6292172 () Bool)

(assert (=> b!5248642 m!6292172))

(declare-fun m!6292174 () Bool)

(assert (=> b!5248650 m!6292174))

(declare-fun m!6292176 () Bool)

(assert (=> b!5248648 m!6292176))

(declare-fun m!6292178 () Bool)

(assert (=> b!5248645 m!6292178))

(declare-fun m!6292180 () Bool)

(assert (=> b!5248643 m!6292180))

(assert (=> b!5248643 m!6292180))

(declare-fun m!6292182 () Bool)

(assert (=> b!5248643 m!6292182))

(declare-fun m!6292184 () Bool)

(assert (=> b!5248641 m!6292184))

(assert (=> b!5247762 d!1690975))

(declare-fun b!5248651 () Bool)

(declare-fun e!3265464 () Bool)

(assert (=> b!5248651 (= e!3265464 (nullable!5020 lt!2150381))))

(declare-fun b!5248652 () Bool)

(assert (=> b!5248652 (= e!3265464 (matchR!7036 (derivativeStep!4087 lt!2150381 (head!11250 s!2326)) (tail!10347 s!2326)))))

(declare-fun b!5248653 () Bool)

(declare-fun e!3265467 () Bool)

(declare-fun lt!2150522 () Bool)

(assert (=> b!5248653 (= e!3265467 (not lt!2150522))))

(declare-fun b!5248654 () Bool)

(declare-fun e!3265462 () Bool)

(assert (=> b!5248654 (= e!3265462 e!3265467)))

(declare-fun c!907847 () Bool)

(assert (=> b!5248654 (= c!907847 ((_ is EmptyLang!14851) lt!2150381))))

(declare-fun b!5248655 () Bool)

(declare-fun res!2227250 () Bool)

(declare-fun e!3265465 () Bool)

(assert (=> b!5248655 (=> res!2227250 e!3265465)))

(declare-fun e!3265463 () Bool)

(assert (=> b!5248655 (= res!2227250 e!3265463)))

(declare-fun res!2227247 () Bool)

(assert (=> b!5248655 (=> (not res!2227247) (not e!3265463))))

(assert (=> b!5248655 (= res!2227247 lt!2150522)))

(declare-fun b!5248656 () Bool)

(declare-fun e!3265461 () Bool)

(assert (=> b!5248656 (= e!3265461 (not (= (head!11250 s!2326) (c!907577 lt!2150381))))))

(declare-fun b!5248657 () Bool)

(assert (=> b!5248657 (= e!3265463 (= (head!11250 s!2326) (c!907577 lt!2150381)))))

(declare-fun d!1690977 () Bool)

(assert (=> d!1690977 e!3265462))

(declare-fun c!907846 () Bool)

(assert (=> d!1690977 (= c!907846 ((_ is EmptyExpr!14851) lt!2150381))))

(assert (=> d!1690977 (= lt!2150522 e!3265464)))

(declare-fun c!907848 () Bool)

(assert (=> d!1690977 (= c!907848 (isEmpty!32670 s!2326))))

(assert (=> d!1690977 (validRegex!6587 lt!2150381)))

(assert (=> d!1690977 (= (matchR!7036 lt!2150381 s!2326) lt!2150522)))

(declare-fun b!5248658 () Bool)

(declare-fun e!3265466 () Bool)

(assert (=> b!5248658 (= e!3265466 e!3265461)))

(declare-fun res!2227253 () Bool)

(assert (=> b!5248658 (=> res!2227253 e!3265461)))

(declare-fun call!371919 () Bool)

(assert (=> b!5248658 (= res!2227253 call!371919)))

(declare-fun bm!371914 () Bool)

(assert (=> bm!371914 (= call!371919 (isEmpty!32670 s!2326))))

(declare-fun b!5248659 () Bool)

(assert (=> b!5248659 (= e!3265462 (= lt!2150522 call!371919))))

(declare-fun b!5248660 () Bool)

(declare-fun res!2227252 () Bool)

(assert (=> b!5248660 (=> (not res!2227252) (not e!3265463))))

(assert (=> b!5248660 (= res!2227252 (isEmpty!32670 (tail!10347 s!2326)))))

(declare-fun b!5248661 () Bool)

(declare-fun res!2227249 () Bool)

(assert (=> b!5248661 (=> res!2227249 e!3265461)))

(assert (=> b!5248661 (= res!2227249 (not (isEmpty!32670 (tail!10347 s!2326))))))

(declare-fun b!5248662 () Bool)

(declare-fun res!2227254 () Bool)

(assert (=> b!5248662 (=> res!2227254 e!3265465)))

(assert (=> b!5248662 (= res!2227254 (not ((_ is ElementMatch!14851) lt!2150381)))))

(assert (=> b!5248662 (= e!3265467 e!3265465)))

(declare-fun b!5248663 () Bool)

(assert (=> b!5248663 (= e!3265465 e!3265466)))

(declare-fun res!2227251 () Bool)

(assert (=> b!5248663 (=> (not res!2227251) (not e!3265466))))

(assert (=> b!5248663 (= res!2227251 (not lt!2150522))))

(declare-fun b!5248664 () Bool)

(declare-fun res!2227248 () Bool)

(assert (=> b!5248664 (=> (not res!2227248) (not e!3265463))))

(assert (=> b!5248664 (= res!2227248 (not call!371919))))

(assert (= (and d!1690977 c!907848) b!5248651))

(assert (= (and d!1690977 (not c!907848)) b!5248652))

(assert (= (and d!1690977 c!907846) b!5248659))

(assert (= (and d!1690977 (not c!907846)) b!5248654))

(assert (= (and b!5248654 c!907847) b!5248653))

(assert (= (and b!5248654 (not c!907847)) b!5248662))

(assert (= (and b!5248662 (not res!2227254)) b!5248655))

(assert (= (and b!5248655 res!2227247) b!5248664))

(assert (= (and b!5248664 res!2227248) b!5248660))

(assert (= (and b!5248660 res!2227252) b!5248657))

(assert (= (and b!5248655 (not res!2227250)) b!5248663))

(assert (= (and b!5248663 res!2227251) b!5248658))

(assert (= (and b!5248658 (not res!2227253)) b!5248661))

(assert (= (and b!5248661 (not res!2227249)) b!5248656))

(assert (= (or b!5248659 b!5248658 b!5248664) bm!371914))

(assert (=> bm!371914 m!6291744))

(assert (=> b!5248652 m!6291748))

(assert (=> b!5248652 m!6291748))

(declare-fun m!6292186 () Bool)

(assert (=> b!5248652 m!6292186))

(assert (=> b!5248652 m!6291752))

(assert (=> b!5248652 m!6292186))

(assert (=> b!5248652 m!6291752))

(declare-fun m!6292188 () Bool)

(assert (=> b!5248652 m!6292188))

(assert (=> b!5248661 m!6291752))

(assert (=> b!5248661 m!6291752))

(assert (=> b!5248661 m!6291844))

(assert (=> b!5248660 m!6291752))

(assert (=> b!5248660 m!6291752))

(assert (=> b!5248660 m!6291844))

(declare-fun m!6292190 () Bool)

(assert (=> b!5248651 m!6292190))

(assert (=> d!1690977 m!6291744))

(assert (=> d!1690977 m!6292158))

(assert (=> b!5248656 m!6291748))

(assert (=> b!5248657 m!6291748))

(assert (=> b!5247762 d!1690977))

(declare-fun d!1690979 () Bool)

(assert (=> d!1690979 (= (matchR!7036 lt!2150381 s!2326) (matchRSpec!1954 lt!2150381 s!2326))))

(declare-fun lt!2150523 () Unit!152822)

(assert (=> d!1690979 (= lt!2150523 (choose!39098 lt!2150381 s!2326))))

(assert (=> d!1690979 (validRegex!6587 lt!2150381)))

(assert (=> d!1690979 (= (mainMatchTheorem!1954 lt!2150381 s!2326) lt!2150523)))

(declare-fun bs!1217826 () Bool)

(assert (= bs!1217826 d!1690979))

(assert (=> bs!1217826 m!6291414))

(assert (=> bs!1217826 m!6291420))

(declare-fun m!6292192 () Bool)

(assert (=> bs!1217826 m!6292192))

(assert (=> bs!1217826 m!6292158))

(assert (=> b!5247762 d!1690979))

(declare-fun d!1690981 () Bool)

(assert (=> d!1690981 (= (matchR!7036 lt!2150386 s!2326) (matchZipper!1095 lt!2150363 s!2326))))

(declare-fun lt!2150524 () Unit!152822)

(assert (=> d!1690981 (= lt!2150524 (choose!39103 lt!2150363 lt!2150369 lt!2150386 s!2326))))

(assert (=> d!1690981 (validRegex!6587 lt!2150386)))

(assert (=> d!1690981 (= (theoremZipperRegexEquiv!285 lt!2150363 lt!2150369 lt!2150386 s!2326) lt!2150524)))

(declare-fun bs!1217827 () Bool)

(assert (= bs!1217827 d!1690981))

(assert (=> bs!1217827 m!6291424))

(assert (=> bs!1217827 m!6291394))

(declare-fun m!6292194 () Bool)

(assert (=> bs!1217827 m!6292194))

(declare-fun m!6292196 () Bool)

(assert (=> bs!1217827 m!6292196))

(assert (=> b!5247762 d!1690981))

(declare-fun bs!1217828 () Bool)

(declare-fun d!1690983 () Bool)

(assert (= bs!1217828 (and d!1690983 b!5247771)))

(declare-fun lambda!264216 () Int)

(assert (=> bs!1217828 (= lambda!264216 lambda!264151)))

(declare-fun bs!1217829 () Bool)

(assert (= bs!1217829 (and d!1690983 d!1690895)))

(assert (=> bs!1217829 (= lambda!264216 lambda!264203)))

(declare-fun bs!1217830 () Bool)

(assert (= bs!1217830 (and d!1690983 d!1690811)))

(assert (=> bs!1217830 (= lambda!264216 lambda!264178)))

(declare-fun bs!1217831 () Bool)

(assert (= bs!1217831 (and d!1690983 d!1690799)))

(assert (=> bs!1217831 (= lambda!264216 lambda!264175)))

(declare-fun bs!1217832 () Bool)

(assert (= bs!1217832 (and d!1690983 d!1690975)))

(assert (=> bs!1217832 (= lambda!264216 lambda!264215)))

(declare-fun bs!1217833 () Bool)

(assert (= bs!1217833 (and d!1690983 d!1690761)))

(assert (=> bs!1217833 (= lambda!264216 lambda!264172)))

(declare-fun bs!1217834 () Bool)

(assert (= bs!1217834 (and d!1690983 d!1690959)))

(assert (=> bs!1217834 (= lambda!264216 lambda!264214)))

(declare-fun b!5248665 () Bool)

(declare-fun e!3265468 () Bool)

(declare-fun lt!2150525 () Regex!14851)

(assert (=> b!5248665 (= e!3265468 (isConcat!324 lt!2150525))))

(declare-fun b!5248666 () Bool)

(declare-fun e!3265471 () Regex!14851)

(assert (=> b!5248666 (= e!3265471 (Concat!23696 (h!67176 lt!2150389) (generalisedConcat!520 (t!374035 lt!2150389))))))

(declare-fun b!5248667 () Bool)

(declare-fun e!3265469 () Bool)

(assert (=> b!5248667 (= e!3265469 e!3265468)))

(declare-fun c!907850 () Bool)

(assert (=> b!5248667 (= c!907850 (isEmpty!32668 (tail!10348 lt!2150389)))))

(declare-fun b!5248668 () Bool)

(declare-fun e!3265472 () Bool)

(assert (=> b!5248668 (= e!3265472 (isEmpty!32668 (t!374035 lt!2150389)))))

(declare-fun b!5248669 () Bool)

(assert (=> b!5248669 (= e!3265469 (isEmptyExpr!801 lt!2150525))))

(declare-fun b!5248670 () Bool)

(declare-fun e!3265470 () Regex!14851)

(assert (=> b!5248670 (= e!3265470 e!3265471)))

(declare-fun c!907849 () Bool)

(assert (=> b!5248670 (= c!907849 ((_ is Cons!60728) lt!2150389))))

(declare-fun e!3265473 () Bool)

(assert (=> d!1690983 e!3265473))

(declare-fun res!2227256 () Bool)

(assert (=> d!1690983 (=> (not res!2227256) (not e!3265473))))

(assert (=> d!1690983 (= res!2227256 (validRegex!6587 lt!2150525))))

(assert (=> d!1690983 (= lt!2150525 e!3265470)))

(declare-fun c!907851 () Bool)

(assert (=> d!1690983 (= c!907851 e!3265472)))

(declare-fun res!2227255 () Bool)

(assert (=> d!1690983 (=> (not res!2227255) (not e!3265472))))

(assert (=> d!1690983 (= res!2227255 ((_ is Cons!60728) lt!2150389))))

(assert (=> d!1690983 (forall!14275 lt!2150389 lambda!264216)))

(assert (=> d!1690983 (= (generalisedConcat!520 lt!2150389) lt!2150525)))

(declare-fun b!5248671 () Bool)

(assert (=> b!5248671 (= e!3265470 (h!67176 lt!2150389))))

(declare-fun b!5248672 () Bool)

(assert (=> b!5248672 (= e!3265468 (= lt!2150525 (head!11251 lt!2150389)))))

(declare-fun b!5248673 () Bool)

(assert (=> b!5248673 (= e!3265471 EmptyExpr!14851)))

(declare-fun b!5248674 () Bool)

(assert (=> b!5248674 (= e!3265473 e!3265469)))

(declare-fun c!907852 () Bool)

(assert (=> b!5248674 (= c!907852 (isEmpty!32668 lt!2150389))))

(assert (= (and d!1690983 res!2227255) b!5248668))

(assert (= (and d!1690983 c!907851) b!5248671))

(assert (= (and d!1690983 (not c!907851)) b!5248670))

(assert (= (and b!5248670 c!907849) b!5248666))

(assert (= (and b!5248670 (not c!907849)) b!5248673))

(assert (= (and d!1690983 res!2227256) b!5248674))

(assert (= (and b!5248674 c!907852) b!5248669))

(assert (= (and b!5248674 (not c!907852)) b!5248667))

(assert (= (and b!5248667 c!907850) b!5248672))

(assert (= (and b!5248667 (not c!907850)) b!5248665))

(declare-fun m!6292198 () Bool)

(assert (=> d!1690983 m!6292198))

(declare-fun m!6292200 () Bool)

(assert (=> d!1690983 m!6292200))

(declare-fun m!6292202 () Bool)

(assert (=> b!5248668 m!6292202))

(declare-fun m!6292204 () Bool)

(assert (=> b!5248666 m!6292204))

(declare-fun m!6292206 () Bool)

(assert (=> b!5248674 m!6292206))

(declare-fun m!6292208 () Bool)

(assert (=> b!5248672 m!6292208))

(declare-fun m!6292210 () Bool)

(assert (=> b!5248669 m!6292210))

(declare-fun m!6292212 () Bool)

(assert (=> b!5248667 m!6292212))

(assert (=> b!5248667 m!6292212))

(declare-fun m!6292214 () Bool)

(assert (=> b!5248667 m!6292214))

(declare-fun m!6292216 () Bool)

(assert (=> b!5248665 m!6292216))

(assert (=> b!5247762 d!1690983))

(declare-fun b!5248675 () Bool)

(declare-fun e!3265477 () Bool)

(assert (=> b!5248675 (= e!3265477 (nullable!5020 lt!2150386))))

(declare-fun b!5248676 () Bool)

(assert (=> b!5248676 (= e!3265477 (matchR!7036 (derivativeStep!4087 lt!2150386 (head!11250 s!2326)) (tail!10347 s!2326)))))

(declare-fun b!5248677 () Bool)

(declare-fun e!3265480 () Bool)

(declare-fun lt!2150526 () Bool)

(assert (=> b!5248677 (= e!3265480 (not lt!2150526))))

(declare-fun b!5248678 () Bool)

(declare-fun e!3265475 () Bool)

(assert (=> b!5248678 (= e!3265475 e!3265480)))

(declare-fun c!907854 () Bool)

(assert (=> b!5248678 (= c!907854 ((_ is EmptyLang!14851) lt!2150386))))

(declare-fun b!5248679 () Bool)

(declare-fun res!2227260 () Bool)

(declare-fun e!3265478 () Bool)

(assert (=> b!5248679 (=> res!2227260 e!3265478)))

(declare-fun e!3265476 () Bool)

(assert (=> b!5248679 (= res!2227260 e!3265476)))

(declare-fun res!2227257 () Bool)

(assert (=> b!5248679 (=> (not res!2227257) (not e!3265476))))

(assert (=> b!5248679 (= res!2227257 lt!2150526)))

(declare-fun b!5248680 () Bool)

(declare-fun e!3265474 () Bool)

(assert (=> b!5248680 (= e!3265474 (not (= (head!11250 s!2326) (c!907577 lt!2150386))))))

(declare-fun b!5248681 () Bool)

(assert (=> b!5248681 (= e!3265476 (= (head!11250 s!2326) (c!907577 lt!2150386)))))

(declare-fun d!1690985 () Bool)

(assert (=> d!1690985 e!3265475))

(declare-fun c!907853 () Bool)

(assert (=> d!1690985 (= c!907853 ((_ is EmptyExpr!14851) lt!2150386))))

(assert (=> d!1690985 (= lt!2150526 e!3265477)))

(declare-fun c!907855 () Bool)

(assert (=> d!1690985 (= c!907855 (isEmpty!32670 s!2326))))

(assert (=> d!1690985 (validRegex!6587 lt!2150386)))

(assert (=> d!1690985 (= (matchR!7036 lt!2150386 s!2326) lt!2150526)))

(declare-fun b!5248682 () Bool)

(declare-fun e!3265479 () Bool)

(assert (=> b!5248682 (= e!3265479 e!3265474)))

(declare-fun res!2227263 () Bool)

(assert (=> b!5248682 (=> res!2227263 e!3265474)))

(declare-fun call!371920 () Bool)

(assert (=> b!5248682 (= res!2227263 call!371920)))

(declare-fun bm!371915 () Bool)

(assert (=> bm!371915 (= call!371920 (isEmpty!32670 s!2326))))

(declare-fun b!5248683 () Bool)

(assert (=> b!5248683 (= e!3265475 (= lt!2150526 call!371920))))

(declare-fun b!5248684 () Bool)

(declare-fun res!2227262 () Bool)

(assert (=> b!5248684 (=> (not res!2227262) (not e!3265476))))

(assert (=> b!5248684 (= res!2227262 (isEmpty!32670 (tail!10347 s!2326)))))

(declare-fun b!5248685 () Bool)

(declare-fun res!2227259 () Bool)

(assert (=> b!5248685 (=> res!2227259 e!3265474)))

(assert (=> b!5248685 (= res!2227259 (not (isEmpty!32670 (tail!10347 s!2326))))))

(declare-fun b!5248686 () Bool)

(declare-fun res!2227264 () Bool)

(assert (=> b!5248686 (=> res!2227264 e!3265478)))

(assert (=> b!5248686 (= res!2227264 (not ((_ is ElementMatch!14851) lt!2150386)))))

(assert (=> b!5248686 (= e!3265480 e!3265478)))

(declare-fun b!5248687 () Bool)

(assert (=> b!5248687 (= e!3265478 e!3265479)))

(declare-fun res!2227261 () Bool)

(assert (=> b!5248687 (=> (not res!2227261) (not e!3265479))))

(assert (=> b!5248687 (= res!2227261 (not lt!2150526))))

(declare-fun b!5248688 () Bool)

(declare-fun res!2227258 () Bool)

(assert (=> b!5248688 (=> (not res!2227258) (not e!3265476))))

(assert (=> b!5248688 (= res!2227258 (not call!371920))))

(assert (= (and d!1690985 c!907855) b!5248675))

(assert (= (and d!1690985 (not c!907855)) b!5248676))

(assert (= (and d!1690985 c!907853) b!5248683))

(assert (= (and d!1690985 (not c!907853)) b!5248678))

(assert (= (and b!5248678 c!907854) b!5248677))

(assert (= (and b!5248678 (not c!907854)) b!5248686))

(assert (= (and b!5248686 (not res!2227264)) b!5248679))

(assert (= (and b!5248679 res!2227257) b!5248688))

(assert (= (and b!5248688 res!2227258) b!5248684))

(assert (= (and b!5248684 res!2227262) b!5248681))

(assert (= (and b!5248679 (not res!2227260)) b!5248687))

(assert (= (and b!5248687 res!2227261) b!5248682))

(assert (= (and b!5248682 (not res!2227263)) b!5248685))

(assert (= (and b!5248685 (not res!2227259)) b!5248680))

(assert (= (or b!5248683 b!5248682 b!5248688) bm!371915))

(assert (=> bm!371915 m!6291744))

(assert (=> b!5248676 m!6291748))

(assert (=> b!5248676 m!6291748))

(declare-fun m!6292218 () Bool)

(assert (=> b!5248676 m!6292218))

(assert (=> b!5248676 m!6291752))

(assert (=> b!5248676 m!6292218))

(assert (=> b!5248676 m!6291752))

(declare-fun m!6292220 () Bool)

(assert (=> b!5248676 m!6292220))

(assert (=> b!5248685 m!6291752))

(assert (=> b!5248685 m!6291752))

(assert (=> b!5248685 m!6291844))

(assert (=> b!5248684 m!6291752))

(assert (=> b!5248684 m!6291752))

(assert (=> b!5248684 m!6291844))

(declare-fun m!6292222 () Bool)

(assert (=> b!5248675 m!6292222))

(assert (=> d!1690985 m!6291744))

(assert (=> d!1690985 m!6292196))

(assert (=> b!5248680 m!6291748))

(assert (=> b!5248681 m!6291748))

(assert (=> b!5247762 d!1690985))

(declare-fun d!1690987 () Bool)

(assert (=> d!1690987 (= (matchR!7036 lt!2150386 s!2326) (matchRSpec!1954 lt!2150386 s!2326))))

(declare-fun lt!2150527 () Unit!152822)

(assert (=> d!1690987 (= lt!2150527 (choose!39098 lt!2150386 s!2326))))

(assert (=> d!1690987 (validRegex!6587 lt!2150386)))

(assert (=> d!1690987 (= (mainMatchTheorem!1954 lt!2150386 s!2326) lt!2150527)))

(declare-fun bs!1217835 () Bool)

(assert (= bs!1217835 d!1690987))

(assert (=> bs!1217835 m!6291424))

(assert (=> bs!1217835 m!6291422))

(declare-fun m!6292224 () Bool)

(assert (=> bs!1217835 m!6292224))

(assert (=> bs!1217835 m!6292196))

(assert (=> b!5247762 d!1690987))

(declare-fun bs!1217836 () Bool)

(declare-fun b!5248691 () Bool)

(assert (= bs!1217836 (and b!5248691 d!1690955)))

(declare-fun lambda!264217 () Int)

(assert (=> bs!1217836 (not (= lambda!264217 lambda!264212))))

(declare-fun bs!1217837 () Bool)

(assert (= bs!1217837 (and b!5248691 d!1690953)))

(assert (=> bs!1217837 (not (= lambda!264217 lambda!264207))))

(declare-fun bs!1217838 () Bool)

(assert (= bs!1217838 (and b!5248691 b!5247748)))

(assert (=> bs!1217838 (not (= lambda!264217 lambda!264148))))

(declare-fun bs!1217839 () Bool)

(assert (= bs!1217839 (and b!5248691 b!5248293)))

(assert (=> bs!1217839 (not (= lambda!264217 lambda!264187))))

(declare-fun bs!1217840 () Bool)

(assert (= bs!1217840 (and b!5248691 b!5248286)))

(assert (=> bs!1217840 (= (and (= (reg!15180 lt!2150386) (reg!15180 r!7292)) (= lt!2150386 r!7292)) (= lambda!264217 lambda!264186))))

(assert (=> bs!1217838 (not (= lambda!264217 lambda!264149))))

(assert (=> bs!1217836 (not (= lambda!264217 lambda!264213))))

(assert (=> b!5248691 true))

(assert (=> b!5248691 true))

(declare-fun bs!1217841 () Bool)

(declare-fun b!5248698 () Bool)

(assert (= bs!1217841 (and b!5248698 d!1690955)))

(declare-fun lambda!264218 () Int)

(assert (=> bs!1217841 (not (= lambda!264218 lambda!264212))))

(declare-fun bs!1217842 () Bool)

(assert (= bs!1217842 (and b!5248698 b!5248691)))

(assert (=> bs!1217842 (not (= lambda!264218 lambda!264217))))

(declare-fun bs!1217843 () Bool)

(assert (= bs!1217843 (and b!5248698 d!1690953)))

(assert (=> bs!1217843 (not (= lambda!264218 lambda!264207))))

(declare-fun bs!1217844 () Bool)

(assert (= bs!1217844 (and b!5248698 b!5247748)))

(assert (=> bs!1217844 (not (= lambda!264218 lambda!264148))))

(declare-fun bs!1217845 () Bool)

(assert (= bs!1217845 (and b!5248698 b!5248293)))

(assert (=> bs!1217845 (= (and (= (regOne!30214 lt!2150386) (regOne!30214 r!7292)) (= (regTwo!30214 lt!2150386) (regTwo!30214 r!7292))) (= lambda!264218 lambda!264187))))

(declare-fun bs!1217846 () Bool)

(assert (= bs!1217846 (and b!5248698 b!5248286)))

(assert (=> bs!1217846 (not (= lambda!264218 lambda!264186))))

(assert (=> bs!1217844 (= (and (= (regOne!30214 lt!2150386) (regOne!30214 r!7292)) (= (regTwo!30214 lt!2150386) (regTwo!30214 r!7292))) (= lambda!264218 lambda!264149))))

(assert (=> bs!1217841 (= (and (= (regOne!30214 lt!2150386) (regOne!30214 r!7292)) (= (regTwo!30214 lt!2150386) (regTwo!30214 r!7292))) (= lambda!264218 lambda!264213))))

(assert (=> b!5248698 true))

(assert (=> b!5248698 true))

(declare-fun b!5248689 () Bool)

(declare-fun c!907856 () Bool)

(assert (=> b!5248689 (= c!907856 ((_ is ElementMatch!14851) lt!2150386))))

(declare-fun e!3265485 () Bool)

(declare-fun e!3265484 () Bool)

(assert (=> b!5248689 (= e!3265485 e!3265484)))

(declare-fun b!5248690 () Bool)

(assert (=> b!5248690 (= e!3265484 (= s!2326 (Cons!60729 (c!907577 lt!2150386) Nil!60729)))))

(declare-fun e!3265487 () Bool)

(declare-fun call!371922 () Bool)

(assert (=> b!5248691 (= e!3265487 call!371922)))

(declare-fun b!5248692 () Bool)

(declare-fun e!3265482 () Bool)

(assert (=> b!5248692 (= e!3265482 (matchRSpec!1954 (regTwo!30215 lt!2150386) s!2326))))

(declare-fun d!1690989 () Bool)

(declare-fun c!907858 () Bool)

(assert (=> d!1690989 (= c!907858 ((_ is EmptyExpr!14851) lt!2150386))))

(declare-fun e!3265486 () Bool)

(assert (=> d!1690989 (= (matchRSpec!1954 lt!2150386 s!2326) e!3265486)))

(declare-fun bm!371916 () Bool)

(declare-fun call!371921 () Bool)

(assert (=> bm!371916 (= call!371921 (isEmpty!32670 s!2326))))

(declare-fun b!5248693 () Bool)

(declare-fun e!3265481 () Bool)

(assert (=> b!5248693 (= e!3265481 e!3265482)))

(declare-fun res!2227265 () Bool)

(assert (=> b!5248693 (= res!2227265 (matchRSpec!1954 (regOne!30215 lt!2150386) s!2326))))

(assert (=> b!5248693 (=> res!2227265 e!3265482)))

(declare-fun b!5248694 () Bool)

(declare-fun res!2227266 () Bool)

(assert (=> b!5248694 (=> res!2227266 e!3265487)))

(assert (=> b!5248694 (= res!2227266 call!371921)))

(declare-fun e!3265483 () Bool)

(assert (=> b!5248694 (= e!3265483 e!3265487)))

(declare-fun b!5248695 () Bool)

(assert (=> b!5248695 (= e!3265486 e!3265485)))

(declare-fun res!2227267 () Bool)

(assert (=> b!5248695 (= res!2227267 (not ((_ is EmptyLang!14851) lt!2150386)))))

(assert (=> b!5248695 (=> (not res!2227267) (not e!3265485))))

(declare-fun b!5248696 () Bool)

(declare-fun c!907859 () Bool)

(assert (=> b!5248696 (= c!907859 ((_ is Union!14851) lt!2150386))))

(assert (=> b!5248696 (= e!3265484 e!3265481)))

(declare-fun b!5248697 () Bool)

(assert (=> b!5248697 (= e!3265486 call!371921)))

(assert (=> b!5248698 (= e!3265483 call!371922)))

(declare-fun b!5248699 () Bool)

(assert (=> b!5248699 (= e!3265481 e!3265483)))

(declare-fun c!907857 () Bool)

(assert (=> b!5248699 (= c!907857 ((_ is Star!14851) lt!2150386))))

(declare-fun bm!371917 () Bool)

(assert (=> bm!371917 (= call!371922 (Exists!2032 (ite c!907857 lambda!264217 lambda!264218)))))

(assert (= (and d!1690989 c!907858) b!5248697))

(assert (= (and d!1690989 (not c!907858)) b!5248695))

(assert (= (and b!5248695 res!2227267) b!5248689))

(assert (= (and b!5248689 c!907856) b!5248690))

(assert (= (and b!5248689 (not c!907856)) b!5248696))

(assert (= (and b!5248696 c!907859) b!5248693))

(assert (= (and b!5248696 (not c!907859)) b!5248699))

(assert (= (and b!5248693 (not res!2227265)) b!5248692))

(assert (= (and b!5248699 c!907857) b!5248694))

(assert (= (and b!5248699 (not c!907857)) b!5248698))

(assert (= (and b!5248694 (not res!2227266)) b!5248691))

(assert (= (or b!5248691 b!5248698) bm!371917))

(assert (= (or b!5248697 b!5248694) bm!371916))

(declare-fun m!6292226 () Bool)

(assert (=> b!5248692 m!6292226))

(assert (=> bm!371916 m!6291744))

(declare-fun m!6292228 () Bool)

(assert (=> b!5248693 m!6292228))

(declare-fun m!6292230 () Bool)

(assert (=> bm!371917 m!6292230))

(assert (=> b!5247762 d!1690989))

(declare-fun bs!1217847 () Bool)

(declare-fun b!5248702 () Bool)

(assert (= bs!1217847 (and b!5248702 d!1690955)))

(declare-fun lambda!264219 () Int)

(assert (=> bs!1217847 (not (= lambda!264219 lambda!264212))))

(declare-fun bs!1217848 () Bool)

(assert (= bs!1217848 (and b!5248702 b!5248691)))

(assert (=> bs!1217848 (= (and (= (reg!15180 lt!2150381) (reg!15180 lt!2150386)) (= lt!2150381 lt!2150386)) (= lambda!264219 lambda!264217))))

(declare-fun bs!1217849 () Bool)

(assert (= bs!1217849 (and b!5248702 d!1690953)))

(assert (=> bs!1217849 (not (= lambda!264219 lambda!264207))))

(declare-fun bs!1217850 () Bool)

(assert (= bs!1217850 (and b!5248702 b!5247748)))

(assert (=> bs!1217850 (not (= lambda!264219 lambda!264148))))

(declare-fun bs!1217851 () Bool)

(assert (= bs!1217851 (and b!5248702 b!5248293)))

(assert (=> bs!1217851 (not (= lambda!264219 lambda!264187))))

(declare-fun bs!1217852 () Bool)

(assert (= bs!1217852 (and b!5248702 b!5248698)))

(assert (=> bs!1217852 (not (= lambda!264219 lambda!264218))))

(declare-fun bs!1217853 () Bool)

(assert (= bs!1217853 (and b!5248702 b!5248286)))

(assert (=> bs!1217853 (= (and (= (reg!15180 lt!2150381) (reg!15180 r!7292)) (= lt!2150381 r!7292)) (= lambda!264219 lambda!264186))))

(assert (=> bs!1217850 (not (= lambda!264219 lambda!264149))))

(assert (=> bs!1217847 (not (= lambda!264219 lambda!264213))))

(assert (=> b!5248702 true))

(assert (=> b!5248702 true))

(declare-fun bs!1217854 () Bool)

(declare-fun b!5248709 () Bool)

(assert (= bs!1217854 (and b!5248709 d!1690955)))

(declare-fun lambda!264220 () Int)

(assert (=> bs!1217854 (not (= lambda!264220 lambda!264212))))

(declare-fun bs!1217855 () Bool)

(assert (= bs!1217855 (and b!5248709 b!5248691)))

(assert (=> bs!1217855 (not (= lambda!264220 lambda!264217))))

(declare-fun bs!1217856 () Bool)

(assert (= bs!1217856 (and b!5248709 d!1690953)))

(assert (=> bs!1217856 (not (= lambda!264220 lambda!264207))))

(declare-fun bs!1217857 () Bool)

(assert (= bs!1217857 (and b!5248709 b!5247748)))

(assert (=> bs!1217857 (not (= lambda!264220 lambda!264148))))

(declare-fun bs!1217858 () Bool)

(assert (= bs!1217858 (and b!5248709 b!5248702)))

(assert (=> bs!1217858 (not (= lambda!264220 lambda!264219))))

(declare-fun bs!1217859 () Bool)

(assert (= bs!1217859 (and b!5248709 b!5248293)))

(assert (=> bs!1217859 (= (and (= (regOne!30214 lt!2150381) (regOne!30214 r!7292)) (= (regTwo!30214 lt!2150381) (regTwo!30214 r!7292))) (= lambda!264220 lambda!264187))))

(declare-fun bs!1217860 () Bool)

(assert (= bs!1217860 (and b!5248709 b!5248698)))

(assert (=> bs!1217860 (= (and (= (regOne!30214 lt!2150381) (regOne!30214 lt!2150386)) (= (regTwo!30214 lt!2150381) (regTwo!30214 lt!2150386))) (= lambda!264220 lambda!264218))))

(declare-fun bs!1217861 () Bool)

(assert (= bs!1217861 (and b!5248709 b!5248286)))

(assert (=> bs!1217861 (not (= lambda!264220 lambda!264186))))

(assert (=> bs!1217857 (= (and (= (regOne!30214 lt!2150381) (regOne!30214 r!7292)) (= (regTwo!30214 lt!2150381) (regTwo!30214 r!7292))) (= lambda!264220 lambda!264149))))

(assert (=> bs!1217854 (= (and (= (regOne!30214 lt!2150381) (regOne!30214 r!7292)) (= (regTwo!30214 lt!2150381) (regTwo!30214 r!7292))) (= lambda!264220 lambda!264213))))

(assert (=> b!5248709 true))

(assert (=> b!5248709 true))

(declare-fun b!5248700 () Bool)

(declare-fun c!907860 () Bool)

(assert (=> b!5248700 (= c!907860 ((_ is ElementMatch!14851) lt!2150381))))

(declare-fun e!3265492 () Bool)

(declare-fun e!3265491 () Bool)

(assert (=> b!5248700 (= e!3265492 e!3265491)))

(declare-fun b!5248701 () Bool)

(assert (=> b!5248701 (= e!3265491 (= s!2326 (Cons!60729 (c!907577 lt!2150381) Nil!60729)))))

(declare-fun e!3265494 () Bool)

(declare-fun call!371924 () Bool)

(assert (=> b!5248702 (= e!3265494 call!371924)))

(declare-fun b!5248703 () Bool)

(declare-fun e!3265489 () Bool)

(assert (=> b!5248703 (= e!3265489 (matchRSpec!1954 (regTwo!30215 lt!2150381) s!2326))))

(declare-fun d!1690991 () Bool)

(declare-fun c!907862 () Bool)

(assert (=> d!1690991 (= c!907862 ((_ is EmptyExpr!14851) lt!2150381))))

(declare-fun e!3265493 () Bool)

(assert (=> d!1690991 (= (matchRSpec!1954 lt!2150381 s!2326) e!3265493)))

(declare-fun bm!371918 () Bool)

(declare-fun call!371923 () Bool)

(assert (=> bm!371918 (= call!371923 (isEmpty!32670 s!2326))))

(declare-fun b!5248704 () Bool)

(declare-fun e!3265488 () Bool)

(assert (=> b!5248704 (= e!3265488 e!3265489)))

(declare-fun res!2227268 () Bool)

(assert (=> b!5248704 (= res!2227268 (matchRSpec!1954 (regOne!30215 lt!2150381) s!2326))))

(assert (=> b!5248704 (=> res!2227268 e!3265489)))

(declare-fun b!5248705 () Bool)

(declare-fun res!2227269 () Bool)

(assert (=> b!5248705 (=> res!2227269 e!3265494)))

(assert (=> b!5248705 (= res!2227269 call!371923)))

(declare-fun e!3265490 () Bool)

(assert (=> b!5248705 (= e!3265490 e!3265494)))

(declare-fun b!5248706 () Bool)

(assert (=> b!5248706 (= e!3265493 e!3265492)))

(declare-fun res!2227270 () Bool)

(assert (=> b!5248706 (= res!2227270 (not ((_ is EmptyLang!14851) lt!2150381)))))

(assert (=> b!5248706 (=> (not res!2227270) (not e!3265492))))

(declare-fun b!5248707 () Bool)

(declare-fun c!907863 () Bool)

(assert (=> b!5248707 (= c!907863 ((_ is Union!14851) lt!2150381))))

(assert (=> b!5248707 (= e!3265491 e!3265488)))

(declare-fun b!5248708 () Bool)

(assert (=> b!5248708 (= e!3265493 call!371923)))

(assert (=> b!5248709 (= e!3265490 call!371924)))

(declare-fun b!5248710 () Bool)

(assert (=> b!5248710 (= e!3265488 e!3265490)))

(declare-fun c!907861 () Bool)

(assert (=> b!5248710 (= c!907861 ((_ is Star!14851) lt!2150381))))

(declare-fun bm!371919 () Bool)

(assert (=> bm!371919 (= call!371924 (Exists!2032 (ite c!907861 lambda!264219 lambda!264220)))))

(assert (= (and d!1690991 c!907862) b!5248708))

(assert (= (and d!1690991 (not c!907862)) b!5248706))

(assert (= (and b!5248706 res!2227270) b!5248700))

(assert (= (and b!5248700 c!907860) b!5248701))

(assert (= (and b!5248700 (not c!907860)) b!5248707))

(assert (= (and b!5248707 c!907863) b!5248704))

(assert (= (and b!5248707 (not c!907863)) b!5248710))

(assert (= (and b!5248704 (not res!2227268)) b!5248703))

(assert (= (and b!5248710 c!907861) b!5248705))

(assert (= (and b!5248710 (not c!907861)) b!5248709))

(assert (= (and b!5248705 (not res!2227269)) b!5248702))

(assert (= (or b!5248702 b!5248709) bm!371919))

(assert (= (or b!5248708 b!5248705) bm!371918))

(declare-fun m!6292232 () Bool)

(assert (=> b!5248703 m!6292232))

(assert (=> bm!371918 m!6291744))

(declare-fun m!6292234 () Bool)

(assert (=> b!5248704 m!6292234))

(declare-fun m!6292236 () Bool)

(assert (=> bm!371919 m!6292236))

(assert (=> b!5247762 d!1690991))

(declare-fun d!1690993 () Bool)

(declare-fun e!3265497 () Bool)

(assert (=> d!1690993 e!3265497))

(declare-fun res!2227273 () Bool)

(assert (=> d!1690993 (=> (not res!2227273) (not e!3265497))))

(declare-fun lt!2150530 () List!60854)

(declare-fun noDuplicate!1222 (List!60854) Bool)

(assert (=> d!1690993 (= res!2227273 (noDuplicate!1222 lt!2150530))))

(declare-fun choose!39104 ((InoxSet Context!8470)) List!60854)

(assert (=> d!1690993 (= lt!2150530 (choose!39104 z!1189))))

(assert (=> d!1690993 (= (toList!8635 z!1189) lt!2150530)))

(declare-fun b!5248713 () Bool)

(declare-fun content!10789 (List!60854) (InoxSet Context!8470))

(assert (=> b!5248713 (= e!3265497 (= (content!10789 lt!2150530) z!1189))))

(assert (= (and d!1690993 res!2227273) b!5248713))

(declare-fun m!6292238 () Bool)

(assert (=> d!1690993 m!6292238))

(declare-fun m!6292240 () Bool)

(assert (=> d!1690993 m!6292240))

(declare-fun m!6292242 () Bool)

(assert (=> b!5248713 m!6292242))

(assert (=> b!5247742 d!1690993))

(assert (=> b!5247763 d!1690973))

(declare-fun bs!1217862 () Bool)

(declare-fun d!1690995 () Bool)

(assert (= bs!1217862 (and d!1690995 d!1690983)))

(declare-fun lambda!264221 () Int)

(assert (=> bs!1217862 (= lambda!264221 lambda!264216)))

(declare-fun bs!1217863 () Bool)

(assert (= bs!1217863 (and d!1690995 b!5247771)))

(assert (=> bs!1217863 (= lambda!264221 lambda!264151)))

(declare-fun bs!1217864 () Bool)

(assert (= bs!1217864 (and d!1690995 d!1690895)))

(assert (=> bs!1217864 (= lambda!264221 lambda!264203)))

(declare-fun bs!1217865 () Bool)

(assert (= bs!1217865 (and d!1690995 d!1690811)))

(assert (=> bs!1217865 (= lambda!264221 lambda!264178)))

(declare-fun bs!1217866 () Bool)

(assert (= bs!1217866 (and d!1690995 d!1690799)))

(assert (=> bs!1217866 (= lambda!264221 lambda!264175)))

(declare-fun bs!1217867 () Bool)

(assert (= bs!1217867 (and d!1690995 d!1690975)))

(assert (=> bs!1217867 (= lambda!264221 lambda!264215)))

(declare-fun bs!1217868 () Bool)

(assert (= bs!1217868 (and d!1690995 d!1690761)))

(assert (=> bs!1217868 (= lambda!264221 lambda!264172)))

(declare-fun bs!1217869 () Bool)

(assert (= bs!1217869 (and d!1690995 d!1690959)))

(assert (=> bs!1217869 (= lambda!264221 lambda!264214)))

(assert (=> d!1690995 (= (inv!80374 setElem!33491) (forall!14275 (exprs!4735 setElem!33491) lambda!264221))))

(declare-fun bs!1217870 () Bool)

(assert (= bs!1217870 d!1690995))

(declare-fun m!6292244 () Bool)

(assert (=> bs!1217870 m!6292244))

(assert (=> setNonEmpty!33491 d!1690995))

(declare-fun b!5248725 () Bool)

(declare-fun e!3265500 () Bool)

(declare-fun tp!1468712 () Bool)

(declare-fun tp!1468714 () Bool)

(assert (=> b!5248725 (= e!3265500 (and tp!1468712 tp!1468714))))

(declare-fun b!5248727 () Bool)

(declare-fun tp!1468711 () Bool)

(declare-fun tp!1468713 () Bool)

(assert (=> b!5248727 (= e!3265500 (and tp!1468711 tp!1468713))))

(declare-fun b!5248726 () Bool)

(declare-fun tp!1468710 () Bool)

(assert (=> b!5248726 (= e!3265500 tp!1468710)))

(declare-fun b!5248724 () Bool)

(assert (=> b!5248724 (= e!3265500 tp_is_empty!38955)))

(assert (=> b!5247769 (= tp!1468635 e!3265500)))

(assert (= (and b!5247769 ((_ is ElementMatch!14851) (reg!15180 r!7292))) b!5248724))

(assert (= (and b!5247769 ((_ is Concat!23696) (reg!15180 r!7292))) b!5248725))

(assert (= (and b!5247769 ((_ is Star!14851) (reg!15180 r!7292))) b!5248726))

(assert (= (and b!5247769 ((_ is Union!14851) (reg!15180 r!7292))) b!5248727))

(declare-fun b!5248735 () Bool)

(declare-fun e!3265506 () Bool)

(declare-fun tp!1468719 () Bool)

(assert (=> b!5248735 (= e!3265506 tp!1468719)))

(declare-fun b!5248734 () Bool)

(declare-fun tp!1468720 () Bool)

(declare-fun e!3265505 () Bool)

(assert (=> b!5248734 (= e!3265505 (and (inv!80374 (h!67178 (t!374037 zl!343))) e!3265506 tp!1468720))))

(assert (=> b!5247760 (= tp!1468632 e!3265505)))

(assert (= b!5248734 b!5248735))

(assert (= (and b!5247760 ((_ is Cons!60730) (t!374037 zl!343))) b!5248734))

(declare-fun m!6292246 () Bool)

(assert (=> b!5248734 m!6292246))

(declare-fun b!5248740 () Bool)

(declare-fun e!3265509 () Bool)

(declare-fun tp!1468723 () Bool)

(assert (=> b!5248740 (= e!3265509 (and tp_is_empty!38955 tp!1468723))))

(assert (=> b!5247751 (= tp!1468633 e!3265509)))

(assert (= (and b!5247751 ((_ is Cons!60729) (t!374036 s!2326))) b!5248740))

(declare-fun b!5248745 () Bool)

(declare-fun e!3265512 () Bool)

(declare-fun tp!1468728 () Bool)

(declare-fun tp!1468729 () Bool)

(assert (=> b!5248745 (= e!3265512 (and tp!1468728 tp!1468729))))

(assert (=> b!5247741 (= tp!1468638 e!3265512)))

(assert (= (and b!5247741 ((_ is Cons!60728) (exprs!4735 setElem!33491))) b!5248745))

(declare-fun b!5248747 () Bool)

(declare-fun e!3265513 () Bool)

(declare-fun tp!1468732 () Bool)

(declare-fun tp!1468734 () Bool)

(assert (=> b!5248747 (= e!3265513 (and tp!1468732 tp!1468734))))

(declare-fun b!5248749 () Bool)

(declare-fun tp!1468731 () Bool)

(declare-fun tp!1468733 () Bool)

(assert (=> b!5248749 (= e!3265513 (and tp!1468731 tp!1468733))))

(declare-fun b!5248748 () Bool)

(declare-fun tp!1468730 () Bool)

(assert (=> b!5248748 (= e!3265513 tp!1468730)))

(declare-fun b!5248746 () Bool)

(assert (=> b!5248746 (= e!3265513 tp_is_empty!38955)))

(assert (=> b!5247772 (= tp!1468637 e!3265513)))

(assert (= (and b!5247772 ((_ is ElementMatch!14851) (regOne!30214 r!7292))) b!5248746))

(assert (= (and b!5247772 ((_ is Concat!23696) (regOne!30214 r!7292))) b!5248747))

(assert (= (and b!5247772 ((_ is Star!14851) (regOne!30214 r!7292))) b!5248748))

(assert (= (and b!5247772 ((_ is Union!14851) (regOne!30214 r!7292))) b!5248749))

(declare-fun b!5248751 () Bool)

(declare-fun e!3265514 () Bool)

(declare-fun tp!1468737 () Bool)

(declare-fun tp!1468739 () Bool)

(assert (=> b!5248751 (= e!3265514 (and tp!1468737 tp!1468739))))

(declare-fun b!5248753 () Bool)

(declare-fun tp!1468736 () Bool)

(declare-fun tp!1468738 () Bool)

(assert (=> b!5248753 (= e!3265514 (and tp!1468736 tp!1468738))))

(declare-fun b!5248752 () Bool)

(declare-fun tp!1468735 () Bool)

(assert (=> b!5248752 (= e!3265514 tp!1468735)))

(declare-fun b!5248750 () Bool)

(assert (=> b!5248750 (= e!3265514 tp_is_empty!38955)))

(assert (=> b!5247772 (= tp!1468639 e!3265514)))

(assert (= (and b!5247772 ((_ is ElementMatch!14851) (regTwo!30214 r!7292))) b!5248750))

(assert (= (and b!5247772 ((_ is Concat!23696) (regTwo!30214 r!7292))) b!5248751))

(assert (= (and b!5247772 ((_ is Star!14851) (regTwo!30214 r!7292))) b!5248752))

(assert (= (and b!5247772 ((_ is Union!14851) (regTwo!30214 r!7292))) b!5248753))

(declare-fun b!5248754 () Bool)

(declare-fun e!3265515 () Bool)

(declare-fun tp!1468740 () Bool)

(declare-fun tp!1468741 () Bool)

(assert (=> b!5248754 (= e!3265515 (and tp!1468740 tp!1468741))))

(assert (=> b!5247738 (= tp!1468634 e!3265515)))

(assert (= (and b!5247738 ((_ is Cons!60728) (exprs!4735 (h!67178 zl!343)))) b!5248754))

(declare-fun b!5248756 () Bool)

(declare-fun e!3265516 () Bool)

(declare-fun tp!1468744 () Bool)

(declare-fun tp!1468746 () Bool)

(assert (=> b!5248756 (= e!3265516 (and tp!1468744 tp!1468746))))

(declare-fun b!5248758 () Bool)

(declare-fun tp!1468743 () Bool)

(declare-fun tp!1468745 () Bool)

(assert (=> b!5248758 (= e!3265516 (and tp!1468743 tp!1468745))))

(declare-fun b!5248757 () Bool)

(declare-fun tp!1468742 () Bool)

(assert (=> b!5248757 (= e!3265516 tp!1468742)))

(declare-fun b!5248755 () Bool)

(assert (=> b!5248755 (= e!3265516 tp_is_empty!38955)))

(assert (=> b!5247749 (= tp!1468636 e!3265516)))

(assert (= (and b!5247749 ((_ is ElementMatch!14851) (regOne!30215 r!7292))) b!5248755))

(assert (= (and b!5247749 ((_ is Concat!23696) (regOne!30215 r!7292))) b!5248756))

(assert (= (and b!5247749 ((_ is Star!14851) (regOne!30215 r!7292))) b!5248757))

(assert (= (and b!5247749 ((_ is Union!14851) (regOne!30215 r!7292))) b!5248758))

(declare-fun b!5248760 () Bool)

(declare-fun e!3265517 () Bool)

(declare-fun tp!1468749 () Bool)

(declare-fun tp!1468751 () Bool)

(assert (=> b!5248760 (= e!3265517 (and tp!1468749 tp!1468751))))

(declare-fun b!5248762 () Bool)

(declare-fun tp!1468748 () Bool)

(declare-fun tp!1468750 () Bool)

(assert (=> b!5248762 (= e!3265517 (and tp!1468748 tp!1468750))))

(declare-fun b!5248761 () Bool)

(declare-fun tp!1468747 () Bool)

(assert (=> b!5248761 (= e!3265517 tp!1468747)))

(declare-fun b!5248759 () Bool)

(assert (=> b!5248759 (= e!3265517 tp_is_empty!38955)))

(assert (=> b!5247749 (= tp!1468640 e!3265517)))

(assert (= (and b!5247749 ((_ is ElementMatch!14851) (regTwo!30215 r!7292))) b!5248759))

(assert (= (and b!5247749 ((_ is Concat!23696) (regTwo!30215 r!7292))) b!5248760))

(assert (= (and b!5247749 ((_ is Star!14851) (regTwo!30215 r!7292))) b!5248761))

(assert (= (and b!5247749 ((_ is Union!14851) (regTwo!30215 r!7292))) b!5248762))

(declare-fun condSetEmpty!33497 () Bool)

(assert (=> setNonEmpty!33491 (= condSetEmpty!33497 (= setRest!33491 ((as const (Array Context!8470 Bool)) false)))))

(declare-fun setRes!33497 () Bool)

(assert (=> setNonEmpty!33491 (= tp!1468641 setRes!33497)))

(declare-fun setIsEmpty!33497 () Bool)

(assert (=> setIsEmpty!33497 setRes!33497))

(declare-fun setElem!33497 () Context!8470)

(declare-fun e!3265520 () Bool)

(declare-fun tp!1468756 () Bool)

(declare-fun setNonEmpty!33497 () Bool)

(assert (=> setNonEmpty!33497 (= setRes!33497 (and tp!1468756 (inv!80374 setElem!33497) e!3265520))))

(declare-fun setRest!33497 () (InoxSet Context!8470))

(assert (=> setNonEmpty!33497 (= setRest!33491 ((_ map or) (store ((as const (Array Context!8470 Bool)) false) setElem!33497 true) setRest!33497))))

(declare-fun b!5248767 () Bool)

(declare-fun tp!1468757 () Bool)

(assert (=> b!5248767 (= e!3265520 tp!1468757)))

(assert (= (and setNonEmpty!33491 condSetEmpty!33497) setIsEmpty!33497))

(assert (= (and setNonEmpty!33491 (not condSetEmpty!33497)) setNonEmpty!33497))

(assert (= setNonEmpty!33497 b!5248767))

(declare-fun m!6292248 () Bool)

(assert (=> setNonEmpty!33497 m!6292248))

(declare-fun b_lambda!202773 () Bool)

(assert (= b_lambda!202757 (or b!5247750 b_lambda!202773)))

(declare-fun bs!1217871 () Bool)

(declare-fun d!1690997 () Bool)

(assert (= bs!1217871 (and d!1690997 b!5247750)))

(assert (=> bs!1217871 (= (dynLambda!24002 lambda!264150 lt!2150359) (derivationStepZipperUp!223 lt!2150359 (h!67177 s!2326)))))

(assert (=> bs!1217871 m!6291396))

(assert (=> d!1690833 d!1690997))

(declare-fun b_lambda!202775 () Bool)

(assert (= b_lambda!202759 (or b!5247750 b_lambda!202775)))

(declare-fun bs!1217872 () Bool)

(declare-fun d!1690999 () Bool)

(assert (= bs!1217872 (and d!1690999 b!5247750)))

(assert (=> bs!1217872 (= (dynLambda!24002 lambda!264150 (h!67178 zl!343)) (derivationStepZipperUp!223 (h!67178 zl!343) (h!67177 s!2326)))))

(assert (=> bs!1217872 m!6291344))

(assert (=> d!1690871 d!1690999))

(declare-fun b_lambda!202777 () Bool)

(assert (= b_lambda!202755 (or b!5247750 b_lambda!202777)))

(declare-fun bs!1217873 () Bool)

(declare-fun d!1691001 () Bool)

(assert (= bs!1217873 (and d!1691001 b!5247750)))

(assert (=> bs!1217873 (= (dynLambda!24002 lambda!264150 lt!2150365) (derivationStepZipperUp!223 lt!2150365 (h!67177 s!2326)))))

(assert (=> bs!1217873 m!6291398))

(assert (=> d!1690821 d!1691001))

(declare-fun b_lambda!202779 () Bool)

(assert (= b_lambda!202761 (or b!5247771 b_lambda!202779)))

(declare-fun bs!1217874 () Bool)

(declare-fun d!1691003 () Bool)

(assert (= bs!1217874 (and d!1691003 b!5247771)))

(assert (=> bs!1217874 (= (dynLambda!24003 lambda!264151 (h!67176 (t!374035 (exprs!4735 (h!67178 zl!343))))) (validRegex!6587 (h!67176 (t!374035 (exprs!4735 (h!67178 zl!343))))))))

(declare-fun m!6292250 () Bool)

(assert (=> bs!1217874 m!6292250))

(assert (=> b!5248437 d!1691003))

(check-sat (not b!5248074) (not d!1690767) (not b!5248477) (not bm!371836) (not b!5248642) (not b!5248667) (not bm!371879) (not b!5248390) (not b!5248640) (not b!5248471) (not b!5248069) (not b!5248077) (not b!5248760) (not b!5248605) (not b!5248684) (not b!5248382) (not b!5248623) (not b!5248184) (not b!5248604) (not d!1690981) (not b!5248392) (not b!5248638) (not b!5248727) (not d!1690799) (not b!5248751) (not d!1690887) (not d!1690969) (not d!1690783) (not b!5248651) (not d!1690917) (not d!1690791) (not bm!371917) (not d!1690835) (not b!5248059) (not b!5248183) (not b!5248757) (not d!1690883) (not b!5248749) (not d!1690837) (not b!5248632) (not b!5248669) (not d!1690985) (not b!5248648) tp_is_empty!38955 (not d!1690975) (not d!1690819) (not bm!371891) (not d!1690949) (not d!1690953) (not b!5248210) (not d!1690821) (not d!1690795) (not b!5248406) (not bm!371915) (not bm!371880) (not b!5248021) (not b!5248675) (not b_lambda!202779) (not b!5248180) (not b!5248747) (not d!1690955) (not b!5248185) (not b!5248692) (not b!5248212) (not b!5248631) (not d!1690995) (not d!1690811) (not b!5248748) (not bm!371829) (not b!5248198) (not bs!1217872) (not d!1690861) (not b!5248238) (not b_lambda!202775) (not b!5248350) (not b!5248608) (not b!5248624) (not b!5248237) (not b!5248177) (not b!5248178) (not bm!371890) (not b!5248637) (not bm!371914) (not bs!1217873) (not b!5248643) (not bm!371918) (not b!5248063) (not b!5248676) (not d!1690879) (not b!5248345) (not b!5248076) (not b!5248634) (not b!5248397) (not d!1690983) (not b!5248641) (not d!1690871) (not b!5248346) (not b!5248650) (not d!1690979) (not b!5248704) (not b_lambda!202773) (not b!5248438) (not b!5248685) (not b!5248740) (not d!1690895) (not bm!371894) (not b!5248665) (not d!1690829) (not b!5248644) (not d!1690973) (not d!1690851) (not d!1690833) (not d!1690761) (not d!1690987) (not b!5248060) (not b!5248182) (not b!5248354) (not b!5248661) (not b!5248288) (not b!5248075) (not setNonEmpty!33497) (not b!5248626) (not b!5248758) (not bs!1217874) (not b!5248351) (not b!5248355) (not b!5248639) (not b!5248405) (not b!5248726) (not d!1690823) (not bm!371892) (not b!5248123) (not b!5248473) (not b!5248660) (not b!5248197) (not b!5248652) (not b!5248656) (not b!5248735) (not bm!371837) (not b!5248606) (not bm!371893) (not b!5248225) (not b!5248629) (not b!5248666) (not b!5248470) (not b!5248635) (not bm!371895) (not b!5248745) (not d!1690963) (not b!5248752) (not bm!371828) (not b!5248380) (not b!5248607) (not bm!371840) (not bs!1217871) (not b!5248479) (not bm!371916) (not b!5248762) (not b!5248287) (not d!1690965) (not b_lambda!202777) (not b!5248407) (not d!1690967) (not d!1690971) (not b!5248713) (not b!5248756) (not b!5248625) (not d!1690959) (not b!5248754) (not b!5247955) (not b!5248636) (not d!1690827) (not b!5247956) (not b!5248472) (not bm!371886) (not b!5248672) (not bm!371885) (not d!1690951) (not d!1690781) (not b!5248734) (not d!1690741) (not b!5248681) (not b!5248073) (not bm!371919) (not b!5248657) (not b!5248693) (not d!1690793) (not b!5248725) (not b!5248645) (not b!5248195) (not b!5248603) (not b!5248227) (not b!5248668) (not b!5248767) (not bm!371863) (not b!5248703) (not bm!371832) (not b!5248032) (not d!1690977) (not b!5248753) (not b!5248674) (not b!5248622) (not b!5248058) (not d!1690993) (not b!5248680) (not bm!371898) (not d!1690885) (not b!5248064) (not b!5248474) (not b!5248071) (not b!5248387) (not d!1690957) (not bm!371862) (not b!5248385) (not b!5248761))
(check-sat)
