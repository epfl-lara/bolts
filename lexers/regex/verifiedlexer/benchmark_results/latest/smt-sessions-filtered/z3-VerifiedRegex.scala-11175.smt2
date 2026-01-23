; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!582148 () Bool)

(assert start!582148)

(declare-fun b!5617339 () Bool)

(assert (=> b!5617339 true))

(assert (=> b!5617339 true))

(declare-fun lambda!301469 () Int)

(declare-fun lambda!301468 () Int)

(assert (=> b!5617339 (not (= lambda!301469 lambda!301468))))

(assert (=> b!5617339 true))

(assert (=> b!5617339 true))

(declare-fun b!5617348 () Bool)

(assert (=> b!5617348 true))

(declare-fun setIsEmpty!37460 () Bool)

(declare-fun setRes!37460 () Bool)

(assert (=> setIsEmpty!37460 setRes!37460))

(declare-fun b!5617337 () Bool)

(declare-fun e!3462956 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31464 0))(
  ( (C!31465 (val!25434 Int)) )
))
(declare-datatypes ((Regex!15597 0))(
  ( (ElementMatch!15597 (c!985555 C!31464)) (Concat!24442 (regOne!31706 Regex!15597) (regTwo!31706 Regex!15597)) (EmptyExpr!15597) (Star!15597 (reg!15926 Regex!15597)) (EmptyLang!15597) (Union!15597 (regOne!31707 Regex!15597) (regTwo!31707 Regex!15597)) )
))
(declare-datatypes ((List!63090 0))(
  ( (Nil!62966) (Cons!62966 (h!69414 Regex!15597) (t!376380 List!63090)) )
))
(declare-datatypes ((Context!9962 0))(
  ( (Context!9963 (exprs!5481 List!63090)) )
))
(declare-fun lt!2258638 () (InoxSet Context!9962))

(declare-datatypes ((List!63091 0))(
  ( (Nil!62967) (Cons!62967 (h!69415 C!31464) (t!376381 List!63091)) )
))
(declare-fun s!2326 () List!63091)

(declare-fun matchZipper!1735 ((InoxSet Context!9962) List!63091) Bool)

(assert (=> b!5617337 (= e!3462956 (matchZipper!1735 lt!2258638 (t!376381 s!2326)))))

(declare-fun b!5617338 () Bool)

(declare-fun e!3462960 () Bool)

(declare-fun tp!1556147 () Bool)

(declare-fun tp!1556146 () Bool)

(assert (=> b!5617338 (= e!3462960 (and tp!1556147 tp!1556146))))

(declare-fun e!3462946 () Bool)

(declare-fun e!3462963 () Bool)

(assert (=> b!5617339 (= e!3462946 e!3462963)))

(declare-fun res!2379382 () Bool)

(assert (=> b!5617339 (=> res!2379382 e!3462963)))

(declare-fun lt!2258616 () Bool)

(declare-fun lt!2258626 () Bool)

(get-info :version)

(assert (=> b!5617339 (= res!2379382 (or (not (= lt!2258626 lt!2258616)) ((_ is Nil!62967) s!2326)))))

(declare-fun Exists!2697 (Int) Bool)

(assert (=> b!5617339 (= (Exists!2697 lambda!301468) (Exists!2697 lambda!301469))))

(declare-datatypes ((Unit!155868 0))(
  ( (Unit!155869) )
))
(declare-fun lt!2258619 () Unit!155868)

(declare-fun r!7292 () Regex!15597)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1326 (Regex!15597 Regex!15597 List!63091) Unit!155868)

(assert (=> b!5617339 (= lt!2258619 (lemmaExistCutMatchRandMatchRSpecEquivalent!1326 (regOne!31706 r!7292) (regTwo!31706 r!7292) s!2326))))

(assert (=> b!5617339 (= lt!2258616 (Exists!2697 lambda!301468))))

(declare-datatypes ((tuple2!65388 0))(
  ( (tuple2!65389 (_1!35997 List!63091) (_2!35997 List!63091)) )
))
(declare-datatypes ((Option!15606 0))(
  ( (None!15605) (Some!15605 (v!51650 tuple2!65388)) )
))
(declare-fun isDefined!12309 (Option!15606) Bool)

(declare-fun findConcatSeparation!2020 (Regex!15597 Regex!15597 List!63091 List!63091 List!63091) Option!15606)

(assert (=> b!5617339 (= lt!2258616 (isDefined!12309 (findConcatSeparation!2020 (regOne!31706 r!7292) (regTwo!31706 r!7292) Nil!62967 s!2326 s!2326)))))

(declare-fun lt!2258630 () Unit!155868)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1784 (Regex!15597 Regex!15597 List!63091) Unit!155868)

(assert (=> b!5617339 (= lt!2258630 (lemmaFindConcatSeparationEquivalentToExists!1784 (regOne!31706 r!7292) (regTwo!31706 r!7292) s!2326))))

(declare-fun b!5617340 () Bool)

(declare-fun tp_is_empty!40447 () Bool)

(assert (=> b!5617340 (= e!3462960 tp_is_empty!40447)))

(declare-fun b!5617341 () Bool)

(declare-fun e!3462951 () Bool)

(declare-fun tp!1556152 () Bool)

(assert (=> b!5617341 (= e!3462951 tp!1556152)))

(declare-fun b!5617342 () Bool)

(declare-fun res!2379388 () Bool)

(assert (=> b!5617342 (=> res!2379388 e!3462946)))

(declare-datatypes ((List!63092 0))(
  ( (Nil!62968) (Cons!62968 (h!69416 Context!9962) (t!376382 List!63092)) )
))
(declare-fun zl!343 () List!63092)

(declare-fun isEmpty!34794 (List!63092) Bool)

(assert (=> b!5617342 (= res!2379388 (not (isEmpty!34794 (t!376382 zl!343))))))

(declare-fun b!5617343 () Bool)

(declare-fun res!2379379 () Bool)

(assert (=> b!5617343 (=> res!2379379 e!3462946)))

(assert (=> b!5617343 (= res!2379379 (or ((_ is EmptyExpr!15597) r!7292) ((_ is EmptyLang!15597) r!7292) ((_ is ElementMatch!15597) r!7292) ((_ is Union!15597) r!7292) (not ((_ is Concat!24442) r!7292))))))

(declare-fun lt!2258640 () Bool)

(declare-fun lt!2258650 () Bool)

(declare-fun e!3462948 () Bool)

(declare-fun lt!2258622 () Bool)

(declare-fun b!5617345 () Bool)

(assert (=> b!5617345 (= e!3462948 (or (= lt!2258650 lt!2258640) lt!2258622))))

(declare-fun lt!2258625 () Regex!15597)

(declare-fun matchRSpec!2700 (Regex!15597 List!63091) Bool)

(assert (=> b!5617345 (= lt!2258622 (matchRSpec!2700 lt!2258625 s!2326))))

(declare-fun lt!2258623 () Unit!155868)

(declare-fun mainMatchTheorem!2700 (Regex!15597 List!63091) Unit!155868)

(assert (=> b!5617345 (= lt!2258623 (mainMatchTheorem!2700 lt!2258625 s!2326))))

(declare-fun lt!2258615 () Regex!15597)

(assert (=> b!5617345 (= lt!2258640 (matchRSpec!2700 lt!2258615 s!2326))))

(declare-fun lt!2258632 () Unit!155868)

(assert (=> b!5617345 (= lt!2258632 (mainMatchTheorem!2700 lt!2258615 s!2326))))

(declare-fun lt!2258621 () (InoxSet Context!9962))

(assert (=> b!5617345 (= lt!2258622 (matchZipper!1735 lt!2258621 s!2326))))

(declare-fun matchR!7782 (Regex!15597 List!63091) Bool)

(assert (=> b!5617345 (= lt!2258622 (matchR!7782 lt!2258625 s!2326))))

(declare-fun lt!2258614 () Unit!155868)

(declare-fun lt!2258653 () List!63092)

(declare-fun theoremZipperRegexEquiv!613 ((InoxSet Context!9962) List!63092 Regex!15597 List!63091) Unit!155868)

(assert (=> b!5617345 (= lt!2258614 (theoremZipperRegexEquiv!613 lt!2258621 lt!2258653 lt!2258625 s!2326))))

(declare-fun lt!2258628 () List!63090)

(declare-fun generalisedConcat!1212 (List!63090) Regex!15597)

(assert (=> b!5617345 (= lt!2258625 (generalisedConcat!1212 lt!2258628))))

(declare-fun lt!2258635 () Bool)

(assert (=> b!5617345 (= lt!2258640 lt!2258635)))

(assert (=> b!5617345 (= lt!2258640 (matchR!7782 lt!2258615 s!2326))))

(declare-fun lt!2258646 () List!63092)

(declare-fun lt!2258624 () (InoxSet Context!9962))

(declare-fun lt!2258639 () Unit!155868)

(assert (=> b!5617345 (= lt!2258639 (theoremZipperRegexEquiv!613 lt!2258624 lt!2258646 lt!2258615 s!2326))))

(declare-fun lt!2258637 () List!63090)

(assert (=> b!5617345 (= lt!2258615 (generalisedConcat!1212 lt!2258637))))

(declare-fun b!5617346 () Bool)

(declare-fun e!3462958 () Unit!155868)

(declare-fun Unit!155870 () Unit!155868)

(assert (=> b!5617346 (= e!3462958 Unit!155870)))

(declare-fun lt!2258642 () Unit!155868)

(declare-fun lt!2258652 () (InoxSet Context!9962))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!622 ((InoxSet Context!9962) (InoxSet Context!9962) List!63091) Unit!155868)

(assert (=> b!5617346 (= lt!2258642 (lemmaZipperConcatMatchesSameAsBothZippers!622 lt!2258652 lt!2258638 (t!376381 s!2326)))))

(declare-fun res!2379391 () Bool)

(declare-fun lt!2258629 () Bool)

(assert (=> b!5617346 (= res!2379391 lt!2258629)))

(declare-fun e!3462967 () Bool)

(assert (=> b!5617346 (=> res!2379391 e!3462967)))

(assert (=> b!5617346 (= (matchZipper!1735 ((_ map or) lt!2258652 lt!2258638) (t!376381 s!2326)) e!3462967)))

(declare-fun b!5617347 () Bool)

(declare-fun e!3462945 () Unit!155868)

(declare-fun Unit!155871 () Unit!155868)

(assert (=> b!5617347 (= e!3462945 Unit!155871)))

(declare-fun e!3462949 () Bool)

(assert (=> b!5617348 (= e!3462963 e!3462949)))

(declare-fun res!2379378 () Bool)

(assert (=> b!5617348 (=> res!2379378 e!3462949)))

(assert (=> b!5617348 (= res!2379378 (or (and ((_ is ElementMatch!15597) (regOne!31706 r!7292)) (= (c!985555 (regOne!31706 r!7292)) (h!69415 s!2326))) (not ((_ is Union!15597) (regOne!31706 r!7292)))))))

(declare-fun lt!2258617 () Unit!155868)

(assert (=> b!5617348 (= lt!2258617 e!3462945)))

(declare-fun c!985552 () Bool)

(declare-fun nullable!5629 (Regex!15597) Bool)

(assert (=> b!5617348 (= c!985552 (nullable!5629 (h!69414 (exprs!5481 (h!69416 zl!343)))))))

(declare-fun lambda!301470 () Int)

(declare-fun z!1189 () (InoxSet Context!9962))

(declare-fun flatMap!1210 ((InoxSet Context!9962) Int) (InoxSet Context!9962))

(declare-fun derivationStepZipperUp!865 (Context!9962 C!31464) (InoxSet Context!9962))

(assert (=> b!5617348 (= (flatMap!1210 z!1189 lambda!301470) (derivationStepZipperUp!865 (h!69416 zl!343) (h!69415 s!2326)))))

(declare-fun lt!2258645 () Unit!155868)

(declare-fun lemmaFlatMapOnSingletonSet!742 ((InoxSet Context!9962) Context!9962 Int) Unit!155868)

(assert (=> b!5617348 (= lt!2258645 (lemmaFlatMapOnSingletonSet!742 z!1189 (h!69416 zl!343) lambda!301470))))

(declare-fun lt!2258631 () Context!9962)

(assert (=> b!5617348 (= lt!2258638 (derivationStepZipperUp!865 lt!2258631 (h!69415 s!2326)))))

(declare-fun lt!2258643 () (InoxSet Context!9962))

(declare-fun derivationStepZipperDown!939 (Regex!15597 Context!9962 C!31464) (InoxSet Context!9962))

(assert (=> b!5617348 (= lt!2258643 (derivationStepZipperDown!939 (h!69414 (exprs!5481 (h!69416 zl!343))) lt!2258631 (h!69415 s!2326)))))

(assert (=> b!5617348 (= lt!2258631 (Context!9963 (t!376380 (exprs!5481 (h!69416 zl!343)))))))

(declare-fun lt!2258633 () (InoxSet Context!9962))

(assert (=> b!5617348 (= lt!2258633 (derivationStepZipperUp!865 (Context!9963 (Cons!62966 (h!69414 (exprs!5481 (h!69416 zl!343))) (t!376380 (exprs!5481 (h!69416 zl!343))))) (h!69415 s!2326)))))

(declare-fun b!5617349 () Bool)

(declare-fun e!3462952 () Bool)

(declare-fun lt!2258634 () (InoxSet Context!9962))

(assert (=> b!5617349 (= e!3462952 (not (matchZipper!1735 lt!2258634 (t!376381 s!2326))))))

(declare-fun b!5617350 () Bool)

(declare-fun res!2379395 () Bool)

(assert (=> b!5617350 (=> res!2379395 e!3462946)))

(assert (=> b!5617350 (= res!2379395 (not ((_ is Cons!62966) (exprs!5481 (h!69416 zl!343)))))))

(declare-fun b!5617351 () Bool)

(declare-fun e!3462957 () Bool)

(declare-fun e!3462965 () Bool)

(assert (=> b!5617351 (= e!3462957 e!3462965)))

(declare-fun res!2379389 () Bool)

(assert (=> b!5617351 (=> (not res!2379389) (not e!3462965))))

(declare-fun lt!2258609 () Regex!15597)

(assert (=> b!5617351 (= res!2379389 (= r!7292 lt!2258609))))

(declare-fun unfocusZipper!1339 (List!63092) Regex!15597)

(assert (=> b!5617351 (= lt!2258609 (unfocusZipper!1339 zl!343))))

(declare-fun b!5617352 () Bool)

(declare-fun e!3462953 () Bool)

(declare-fun tp!1556151 () Bool)

(assert (=> b!5617352 (= e!3462953 (and tp_is_empty!40447 tp!1556151))))

(declare-fun b!5617353 () Bool)

(declare-fun e!3462964 () Bool)

(assert (=> b!5617353 (= e!3462949 e!3462964)))

(declare-fun res!2379383 () Bool)

(assert (=> b!5617353 (=> res!2379383 e!3462964)))

(declare-fun lt!2258648 () (InoxSet Context!9962))

(assert (=> b!5617353 (= res!2379383 (not (= lt!2258643 lt!2258648)))))

(assert (=> b!5617353 (= lt!2258648 ((_ map or) lt!2258652 lt!2258634))))

(assert (=> b!5617353 (= lt!2258634 (derivationStepZipperDown!939 (regTwo!31707 (regOne!31706 r!7292)) lt!2258631 (h!69415 s!2326)))))

(assert (=> b!5617353 (= lt!2258652 (derivationStepZipperDown!939 (regOne!31707 (regOne!31706 r!7292)) lt!2258631 (h!69415 s!2326)))))

(declare-fun setNonEmpty!37460 () Bool)

(declare-fun setElem!37460 () Context!9962)

(declare-fun tp!1556150 () Bool)

(declare-fun inv!82239 (Context!9962) Bool)

(assert (=> setNonEmpty!37460 (= setRes!37460 (and tp!1556150 (inv!82239 setElem!37460) e!3462951))))

(declare-fun setRest!37460 () (InoxSet Context!9962))

(assert (=> setNonEmpty!37460 (= z!1189 ((_ map or) (store ((as const (Array Context!9962 Bool)) false) setElem!37460 true) setRest!37460))))

(declare-fun b!5617354 () Bool)

(declare-fun e!3462955 () Bool)

(declare-fun tp!1556153 () Bool)

(assert (=> b!5617354 (= e!3462955 tp!1556153)))

(declare-fun b!5617355 () Bool)

(declare-fun e!3462947 () Unit!155868)

(declare-fun Unit!155872 () Unit!155868)

(assert (=> b!5617355 (= e!3462947 Unit!155872)))

(declare-fun lt!2258613 () Unit!155868)

(assert (=> b!5617355 (= lt!2258613 (lemmaZipperConcatMatchesSameAsBothZippers!622 lt!2258634 lt!2258638 (t!376381 s!2326)))))

(declare-fun res!2379398 () Bool)

(assert (=> b!5617355 (= res!2379398 (matchZipper!1735 lt!2258634 (t!376381 s!2326)))))

(assert (=> b!5617355 (=> res!2379398 e!3462956)))

(assert (=> b!5617355 (= (matchZipper!1735 ((_ map or) lt!2258634 lt!2258638) (t!376381 s!2326)) e!3462956)))

(declare-fun b!5617356 () Bool)

(declare-fun e!3462968 () Bool)

(assert (=> b!5617356 (= e!3462968 (matchZipper!1735 lt!2258634 (t!376381 s!2326)))))

(declare-fun b!5617357 () Bool)

(assert (=> b!5617357 (= e!3462965 (not e!3462946))))

(declare-fun res!2379384 () Bool)

(assert (=> b!5617357 (=> res!2379384 e!3462946)))

(assert (=> b!5617357 (= res!2379384 (not ((_ is Cons!62968) zl!343)))))

(assert (=> b!5617357 (= lt!2258626 (matchRSpec!2700 r!7292 s!2326))))

(assert (=> b!5617357 (= lt!2258626 (matchR!7782 r!7292 s!2326))))

(declare-fun lt!2258610 () Unit!155868)

(assert (=> b!5617357 (= lt!2258610 (mainMatchTheorem!2700 r!7292 s!2326))))

(declare-fun b!5617358 () Bool)

(declare-fun res!2379380 () Bool)

(assert (=> b!5617358 (=> (not res!2379380) (not e!3462957))))

(declare-fun toList!9381 ((InoxSet Context!9962)) List!63092)

(assert (=> b!5617358 (= res!2379380 (= (toList!9381 z!1189) zl!343))))

(declare-fun b!5617359 () Bool)

(declare-fun Unit!155873 () Unit!155868)

(assert (=> b!5617359 (= e!3462958 Unit!155873)))

(declare-fun b!5617360 () Bool)

(declare-fun tp!1556155 () Bool)

(declare-fun tp!1556149 () Bool)

(assert (=> b!5617360 (= e!3462960 (and tp!1556155 tp!1556149))))

(declare-fun b!5617361 () Bool)

(declare-fun e!3462959 () Bool)

(declare-fun e!3462950 () Bool)

(assert (=> b!5617361 (= e!3462959 e!3462950)))

(declare-fun res!2379397 () Bool)

(assert (=> b!5617361 (=> res!2379397 e!3462950)))

(declare-fun lt!2258636 () Int)

(declare-fun lt!2258651 () Int)

(assert (=> b!5617361 (= res!2379397 (>= lt!2258636 lt!2258651))))

(declare-fun zipperDepthTotal!222 (List!63092) Int)

(assert (=> b!5617361 (= lt!2258651 (zipperDepthTotal!222 zl!343))))

(assert (=> b!5617361 (= lt!2258636 (zipperDepthTotal!222 lt!2258646))))

(declare-fun lt!2258618 () Context!9962)

(assert (=> b!5617361 (= lt!2258646 (Cons!62968 lt!2258618 Nil!62968))))

(declare-fun b!5617362 () Bool)

(assert (=> b!5617362 (= e!3462950 e!3462948)))

(declare-fun res!2379396 () Bool)

(assert (=> b!5617362 (=> res!2379396 e!3462948)))

(assert (=> b!5617362 (= res!2379396 (>= (zipperDepthTotal!222 lt!2258653) lt!2258651))))

(declare-fun lt!2258644 () Context!9962)

(assert (=> b!5617362 (= lt!2258653 (Cons!62968 lt!2258644 Nil!62968))))

(declare-fun b!5617363 () Bool)

(declare-fun e!3462954 () Bool)

(assert (=> b!5617363 (= e!3462964 e!3462954)))

(declare-fun res!2379377 () Bool)

(assert (=> b!5617363 (=> res!2379377 e!3462954)))

(assert (=> b!5617363 (= res!2379377 e!3462952)))

(declare-fun res!2379390 () Bool)

(assert (=> b!5617363 (=> (not res!2379390) (not e!3462952))))

(assert (=> b!5617363 (= res!2379390 (not (= (matchZipper!1735 lt!2258643 (t!376381 s!2326)) lt!2258629)))))

(assert (=> b!5617363 (= (matchZipper!1735 lt!2258648 (t!376381 s!2326)) e!3462968)))

(declare-fun res!2379400 () Bool)

(assert (=> b!5617363 (=> res!2379400 e!3462968)))

(assert (=> b!5617363 (= res!2379400 lt!2258629)))

(assert (=> b!5617363 (= lt!2258629 (matchZipper!1735 lt!2258652 (t!376381 s!2326)))))

(declare-fun lt!2258620 () Unit!155868)

(assert (=> b!5617363 (= lt!2258620 (lemmaZipperConcatMatchesSameAsBothZippers!622 lt!2258652 lt!2258634 (t!376381 s!2326)))))

(declare-fun b!5617364 () Bool)

(declare-fun Unit!155874 () Unit!155868)

(assert (=> b!5617364 (= e!3462947 Unit!155874)))

(declare-fun b!5617365 () Bool)

(declare-fun e!3462962 () Bool)

(assert (=> b!5617365 (= e!3462962 (matchZipper!1735 lt!2258621 s!2326))))

(declare-fun b!5617366 () Bool)

(declare-fun e!3462961 () Bool)

(assert (=> b!5617366 (= e!3462961 (matchZipper!1735 lt!2258638 (t!376381 s!2326)))))

(declare-fun b!5617344 () Bool)

(assert (=> b!5617344 (= e!3462967 (matchZipper!1735 lt!2258638 (t!376381 s!2326)))))

(declare-fun res!2379385 () Bool)

(assert (=> start!582148 (=> (not res!2379385) (not e!3462957))))

(declare-fun validRegex!7333 (Regex!15597) Bool)

(assert (=> start!582148 (= res!2379385 (validRegex!7333 r!7292))))

(assert (=> start!582148 e!3462957))

(assert (=> start!582148 e!3462960))

(declare-fun condSetEmpty!37460 () Bool)

(assert (=> start!582148 (= condSetEmpty!37460 (= z!1189 ((as const (Array Context!9962 Bool)) false)))))

(assert (=> start!582148 setRes!37460))

(declare-fun e!3462966 () Bool)

(assert (=> start!582148 e!3462966))

(assert (=> start!582148 e!3462953))

(declare-fun b!5617367 () Bool)

(declare-fun res!2379381 () Bool)

(assert (=> b!5617367 (=> res!2379381 e!3462963)))

(declare-fun isEmpty!34795 (List!63090) Bool)

(assert (=> b!5617367 (= res!2379381 (isEmpty!34795 (t!376380 (exprs!5481 (h!69416 zl!343)))))))

(declare-fun b!5617368 () Bool)

(declare-fun res!2379392 () Bool)

(assert (=> b!5617368 (=> res!2379392 e!3462946)))

(assert (=> b!5617368 (= res!2379392 (not (= r!7292 (generalisedConcat!1212 (exprs!5481 (h!69416 zl!343))))))))

(declare-fun b!5617369 () Bool)

(declare-fun res!2379393 () Bool)

(assert (=> b!5617369 (=> res!2379393 e!3462959)))

(assert (=> b!5617369 (= res!2379393 (or (not (= lt!2258609 r!7292)) (not (= (exprs!5481 (h!69416 zl!343)) (Cons!62966 (regOne!31706 r!7292) (t!376380 (exprs!5481 (h!69416 zl!343))))))))))

(declare-fun tp!1556148 () Bool)

(declare-fun b!5617370 () Bool)

(assert (=> b!5617370 (= e!3462966 (and (inv!82239 (h!69416 zl!343)) e!3462955 tp!1556148))))

(declare-fun b!5617371 () Bool)

(declare-fun Unit!155875 () Unit!155868)

(assert (=> b!5617371 (= e!3462945 Unit!155875)))

(declare-fun lt!2258641 () Unit!155868)

(assert (=> b!5617371 (= lt!2258641 (lemmaZipperConcatMatchesSameAsBothZippers!622 lt!2258643 lt!2258638 (t!376381 s!2326)))))

(declare-fun res!2379387 () Bool)

(assert (=> b!5617371 (= res!2379387 (matchZipper!1735 lt!2258643 (t!376381 s!2326)))))

(assert (=> b!5617371 (=> res!2379387 e!3462961)))

(assert (=> b!5617371 (= (matchZipper!1735 ((_ map or) lt!2258643 lt!2258638) (t!376381 s!2326)) e!3462961)))

(declare-fun b!5617372 () Bool)

(declare-fun res!2379399 () Bool)

(assert (=> b!5617372 (=> res!2379399 e!3462946)))

(declare-fun generalisedUnion!1460 (List!63090) Regex!15597)

(declare-fun unfocusZipperList!1025 (List!63092) List!63090)

(assert (=> b!5617372 (= res!2379399 (not (= r!7292 (generalisedUnion!1460 (unfocusZipperList!1025 zl!343)))))))

(declare-fun b!5617373 () Bool)

(declare-fun tp!1556154 () Bool)

(assert (=> b!5617373 (= e!3462960 tp!1556154)))

(declare-fun b!5617374 () Bool)

(assert (=> b!5617374 (= e!3462954 e!3462959)))

(declare-fun res!2379386 () Bool)

(assert (=> b!5617374 (=> res!2379386 e!3462959)))

(assert (=> b!5617374 (= res!2379386 (not (= lt!2258650 e!3462962)))))

(declare-fun res!2379394 () Bool)

(assert (=> b!5617374 (=> res!2379394 e!3462962)))

(assert (=> b!5617374 (= res!2379394 lt!2258635)))

(assert (=> b!5617374 (= lt!2258650 (matchZipper!1735 z!1189 s!2326))))

(assert (=> b!5617374 (= lt!2258635 (matchZipper!1735 lt!2258624 s!2326))))

(declare-fun lt!2258627 () Unit!155868)

(assert (=> b!5617374 (= lt!2258627 e!3462947)))

(declare-fun c!985554 () Bool)

(assert (=> b!5617374 (= c!985554 (nullable!5629 (regTwo!31707 (regOne!31706 r!7292))))))

(assert (=> b!5617374 (= (flatMap!1210 lt!2258621 lambda!301470) (derivationStepZipperUp!865 lt!2258644 (h!69415 s!2326)))))

(declare-fun lt!2258647 () Unit!155868)

(assert (=> b!5617374 (= lt!2258647 (lemmaFlatMapOnSingletonSet!742 lt!2258621 lt!2258644 lambda!301470))))

(declare-fun lt!2258612 () (InoxSet Context!9962))

(assert (=> b!5617374 (= lt!2258612 (derivationStepZipperUp!865 lt!2258644 (h!69415 s!2326)))))

(declare-fun lt!2258611 () Unit!155868)

(assert (=> b!5617374 (= lt!2258611 e!3462958)))

(declare-fun c!985553 () Bool)

(assert (=> b!5617374 (= c!985553 (nullable!5629 (regOne!31707 (regOne!31706 r!7292))))))

(assert (=> b!5617374 (= (flatMap!1210 lt!2258624 lambda!301470) (derivationStepZipperUp!865 lt!2258618 (h!69415 s!2326)))))

(declare-fun lt!2258654 () Unit!155868)

(assert (=> b!5617374 (= lt!2258654 (lemmaFlatMapOnSingletonSet!742 lt!2258624 lt!2258618 lambda!301470))))

(declare-fun lt!2258649 () (InoxSet Context!9962))

(assert (=> b!5617374 (= lt!2258649 (derivationStepZipperUp!865 lt!2258618 (h!69415 s!2326)))))

(assert (=> b!5617374 (= lt!2258621 (store ((as const (Array Context!9962 Bool)) false) lt!2258644 true))))

(assert (=> b!5617374 (= lt!2258644 (Context!9963 lt!2258628))))

(assert (=> b!5617374 (= lt!2258628 (Cons!62966 (regTwo!31707 (regOne!31706 r!7292)) (t!376380 (exprs!5481 (h!69416 zl!343)))))))

(assert (=> b!5617374 (= lt!2258624 (store ((as const (Array Context!9962 Bool)) false) lt!2258618 true))))

(assert (=> b!5617374 (= lt!2258618 (Context!9963 lt!2258637))))

(assert (=> b!5617374 (= lt!2258637 (Cons!62966 (regOne!31707 (regOne!31706 r!7292)) (t!376380 (exprs!5481 (h!69416 zl!343)))))))

(assert (= (and start!582148 res!2379385) b!5617358))

(assert (= (and b!5617358 res!2379380) b!5617351))

(assert (= (and b!5617351 res!2379389) b!5617357))

(assert (= (and b!5617357 (not res!2379384)) b!5617342))

(assert (= (and b!5617342 (not res!2379388)) b!5617368))

(assert (= (and b!5617368 (not res!2379392)) b!5617350))

(assert (= (and b!5617350 (not res!2379395)) b!5617372))

(assert (= (and b!5617372 (not res!2379399)) b!5617343))

(assert (= (and b!5617343 (not res!2379379)) b!5617339))

(assert (= (and b!5617339 (not res!2379382)) b!5617367))

(assert (= (and b!5617367 (not res!2379381)) b!5617348))

(assert (= (and b!5617348 c!985552) b!5617371))

(assert (= (and b!5617348 (not c!985552)) b!5617347))

(assert (= (and b!5617371 (not res!2379387)) b!5617366))

(assert (= (and b!5617348 (not res!2379378)) b!5617353))

(assert (= (and b!5617353 (not res!2379383)) b!5617363))

(assert (= (and b!5617363 (not res!2379400)) b!5617356))

(assert (= (and b!5617363 res!2379390) b!5617349))

(assert (= (and b!5617363 (not res!2379377)) b!5617374))

(assert (= (and b!5617374 c!985553) b!5617346))

(assert (= (and b!5617374 (not c!985553)) b!5617359))

(assert (= (and b!5617346 (not res!2379391)) b!5617344))

(assert (= (and b!5617374 c!985554) b!5617355))

(assert (= (and b!5617374 (not c!985554)) b!5617364))

(assert (= (and b!5617355 (not res!2379398)) b!5617337))

(assert (= (and b!5617374 (not res!2379394)) b!5617365))

(assert (= (and b!5617374 (not res!2379386)) b!5617369))

(assert (= (and b!5617369 (not res!2379393)) b!5617361))

(assert (= (and b!5617361 (not res!2379397)) b!5617362))

(assert (= (and b!5617362 (not res!2379396)) b!5617345))

(assert (= (and start!582148 ((_ is ElementMatch!15597) r!7292)) b!5617340))

(assert (= (and start!582148 ((_ is Concat!24442) r!7292)) b!5617338))

(assert (= (and start!582148 ((_ is Star!15597) r!7292)) b!5617373))

(assert (= (and start!582148 ((_ is Union!15597) r!7292)) b!5617360))

(assert (= (and start!582148 condSetEmpty!37460) setIsEmpty!37460))

(assert (= (and start!582148 (not condSetEmpty!37460)) setNonEmpty!37460))

(assert (= setNonEmpty!37460 b!5617341))

(assert (= b!5617370 b!5617354))

(assert (= (and start!582148 ((_ is Cons!62968) zl!343)) b!5617370))

(assert (= (and start!582148 ((_ is Cons!62967) s!2326)) b!5617352))

(declare-fun m!6591188 () Bool)

(assert (=> b!5617351 m!6591188))

(declare-fun m!6591190 () Bool)

(assert (=> b!5617339 m!6591190))

(declare-fun m!6591192 () Bool)

(assert (=> b!5617339 m!6591192))

(declare-fun m!6591194 () Bool)

(assert (=> b!5617339 m!6591194))

(declare-fun m!6591196 () Bool)

(assert (=> b!5617339 m!6591196))

(assert (=> b!5617339 m!6591196))

(declare-fun m!6591198 () Bool)

(assert (=> b!5617339 m!6591198))

(assert (=> b!5617339 m!6591190))

(declare-fun m!6591200 () Bool)

(assert (=> b!5617339 m!6591200))

(declare-fun m!6591202 () Bool)

(assert (=> b!5617374 m!6591202))

(declare-fun m!6591204 () Bool)

(assert (=> b!5617374 m!6591204))

(declare-fun m!6591206 () Bool)

(assert (=> b!5617374 m!6591206))

(declare-fun m!6591208 () Bool)

(assert (=> b!5617374 m!6591208))

(declare-fun m!6591210 () Bool)

(assert (=> b!5617374 m!6591210))

(declare-fun m!6591212 () Bool)

(assert (=> b!5617374 m!6591212))

(declare-fun m!6591214 () Bool)

(assert (=> b!5617374 m!6591214))

(declare-fun m!6591216 () Bool)

(assert (=> b!5617374 m!6591216))

(declare-fun m!6591218 () Bool)

(assert (=> b!5617374 m!6591218))

(declare-fun m!6591220 () Bool)

(assert (=> b!5617374 m!6591220))

(declare-fun m!6591222 () Bool)

(assert (=> b!5617374 m!6591222))

(declare-fun m!6591224 () Bool)

(assert (=> b!5617374 m!6591224))

(declare-fun m!6591226 () Bool)

(assert (=> b!5617366 m!6591226))

(declare-fun m!6591228 () Bool)

(assert (=> b!5617365 m!6591228))

(declare-fun m!6591230 () Bool)

(assert (=> b!5617372 m!6591230))

(assert (=> b!5617372 m!6591230))

(declare-fun m!6591232 () Bool)

(assert (=> b!5617372 m!6591232))

(declare-fun m!6591234 () Bool)

(assert (=> b!5617349 m!6591234))

(declare-fun m!6591236 () Bool)

(assert (=> b!5617371 m!6591236))

(declare-fun m!6591238 () Bool)

(assert (=> b!5617371 m!6591238))

(declare-fun m!6591240 () Bool)

(assert (=> b!5617371 m!6591240))

(declare-fun m!6591242 () Bool)

(assert (=> setNonEmpty!37460 m!6591242))

(declare-fun m!6591244 () Bool)

(assert (=> b!5617353 m!6591244))

(declare-fun m!6591246 () Bool)

(assert (=> b!5617353 m!6591246))

(declare-fun m!6591248 () Bool)

(assert (=> b!5617342 m!6591248))

(declare-fun m!6591250 () Bool)

(assert (=> b!5617370 m!6591250))

(declare-fun m!6591252 () Bool)

(assert (=> b!5617348 m!6591252))

(declare-fun m!6591254 () Bool)

(assert (=> b!5617348 m!6591254))

(declare-fun m!6591256 () Bool)

(assert (=> b!5617348 m!6591256))

(declare-fun m!6591258 () Bool)

(assert (=> b!5617348 m!6591258))

(declare-fun m!6591260 () Bool)

(assert (=> b!5617348 m!6591260))

(declare-fun m!6591262 () Bool)

(assert (=> b!5617348 m!6591262))

(declare-fun m!6591264 () Bool)

(assert (=> b!5617348 m!6591264))

(declare-fun m!6591266 () Bool)

(assert (=> b!5617362 m!6591266))

(declare-fun m!6591268 () Bool)

(assert (=> b!5617368 m!6591268))

(declare-fun m!6591270 () Bool)

(assert (=> b!5617355 m!6591270))

(assert (=> b!5617355 m!6591234))

(declare-fun m!6591272 () Bool)

(assert (=> b!5617355 m!6591272))

(declare-fun m!6591274 () Bool)

(assert (=> b!5617345 m!6591274))

(declare-fun m!6591276 () Bool)

(assert (=> b!5617345 m!6591276))

(declare-fun m!6591278 () Bool)

(assert (=> b!5617345 m!6591278))

(declare-fun m!6591280 () Bool)

(assert (=> b!5617345 m!6591280))

(declare-fun m!6591282 () Bool)

(assert (=> b!5617345 m!6591282))

(declare-fun m!6591284 () Bool)

(assert (=> b!5617345 m!6591284))

(declare-fun m!6591286 () Bool)

(assert (=> b!5617345 m!6591286))

(assert (=> b!5617345 m!6591228))

(declare-fun m!6591288 () Bool)

(assert (=> b!5617345 m!6591288))

(declare-fun m!6591290 () Bool)

(assert (=> b!5617345 m!6591290))

(declare-fun m!6591292 () Bool)

(assert (=> b!5617345 m!6591292))

(declare-fun m!6591294 () Bool)

(assert (=> b!5617367 m!6591294))

(declare-fun m!6591296 () Bool)

(assert (=> b!5617357 m!6591296))

(declare-fun m!6591298 () Bool)

(assert (=> b!5617357 m!6591298))

(declare-fun m!6591300 () Bool)

(assert (=> b!5617357 m!6591300))

(assert (=> b!5617356 m!6591234))

(declare-fun m!6591302 () Bool)

(assert (=> start!582148 m!6591302))

(declare-fun m!6591304 () Bool)

(assert (=> b!5617358 m!6591304))

(assert (=> b!5617363 m!6591238))

(declare-fun m!6591306 () Bool)

(assert (=> b!5617363 m!6591306))

(declare-fun m!6591308 () Bool)

(assert (=> b!5617363 m!6591308))

(declare-fun m!6591310 () Bool)

(assert (=> b!5617363 m!6591310))

(declare-fun m!6591312 () Bool)

(assert (=> b!5617346 m!6591312))

(declare-fun m!6591314 () Bool)

(assert (=> b!5617346 m!6591314))

(assert (=> b!5617344 m!6591226))

(assert (=> b!5617337 m!6591226))

(declare-fun m!6591316 () Bool)

(assert (=> b!5617361 m!6591316))

(declare-fun m!6591318 () Bool)

(assert (=> b!5617361 m!6591318))

(check-sat (not b!5617362) (not b!5617355) (not b!5617353) (not b!5617338) (not b!5617351) tp_is_empty!40447 (not b!5617349) (not b!5617357) (not b!5617342) (not b!5617341) (not start!582148) (not b!5617346) (not b!5617337) (not b!5617374) (not b!5617365) (not b!5617363) (not b!5617372) (not b!5617361) (not b!5617360) (not b!5617352) (not b!5617367) (not b!5617370) (not b!5617373) (not b!5617345) (not b!5617348) (not b!5617358) (not b!5617371) (not setNonEmpty!37460) (not b!5617366) (not b!5617339) (not b!5617354) (not b!5617344) (not b!5617356) (not b!5617368))
(check-sat)
