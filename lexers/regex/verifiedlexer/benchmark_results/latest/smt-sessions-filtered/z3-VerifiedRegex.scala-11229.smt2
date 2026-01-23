; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!588108 () Bool)

(assert start!588108)

(declare-fun b!5710970 () Bool)

(assert (=> b!5710970 true))

(assert (=> b!5710970 true))

(declare-fun lambda!308173 () Int)

(declare-fun lambda!308172 () Int)

(assert (=> b!5710970 (not (= lambda!308173 lambda!308172))))

(assert (=> b!5710970 true))

(assert (=> b!5710970 true))

(declare-fun b!5710946 () Bool)

(assert (=> b!5710946 true))

(declare-fun bs!1334118 () Bool)

(declare-fun b!5710968 () Bool)

(assert (= bs!1334118 (and b!5710968 b!5710970)))

(declare-datatypes ((C!31680 0))(
  ( (C!31681 (val!25542 Int)) )
))
(declare-datatypes ((Regex!15705 0))(
  ( (ElementMatch!15705 (c!1006621 C!31680)) (Concat!24550 (regOne!31922 Regex!15705) (regTwo!31922 Regex!15705)) (EmptyExpr!15705) (Star!15705 (reg!16034 Regex!15705)) (EmptyLang!15705) (Union!15705 (regOne!31923 Regex!15705) (regTwo!31923 Regex!15705)) )
))
(declare-fun r!7292 () Regex!15705)

(declare-fun lambda!308175 () Int)

(declare-fun lt!2275560 () Regex!15705)

(assert (=> bs!1334118 (= (= lt!2275560 (regOne!31922 r!7292)) (= lambda!308175 lambda!308172))))

(assert (=> bs!1334118 (not (= lambda!308175 lambda!308173))))

(assert (=> b!5710968 true))

(assert (=> b!5710968 true))

(assert (=> b!5710968 true))

(declare-fun lambda!308176 () Int)

(assert (=> bs!1334118 (not (= lambda!308176 lambda!308172))))

(assert (=> bs!1334118 (= (= lt!2275560 (regOne!31922 r!7292)) (= lambda!308176 lambda!308173))))

(assert (=> b!5710968 (not (= lambda!308176 lambda!308175))))

(assert (=> b!5710968 true))

(assert (=> b!5710968 true))

(assert (=> b!5710968 true))

(declare-fun bs!1334119 () Bool)

(declare-fun b!5710952 () Bool)

(assert (= bs!1334119 (and b!5710952 b!5710970)))

(declare-datatypes ((List!63414 0))(
  ( (Nil!63290) (Cons!63290 (h!69738 C!31680) (t!376734 List!63414)) )
))
(declare-fun s!2326 () List!63414)

(declare-datatypes ((tuple2!65604 0))(
  ( (tuple2!65605 (_1!36105 List!63414) (_2!36105 List!63414)) )
))
(declare-fun lt!2275548 () tuple2!65604)

(declare-fun lambda!308177 () Int)

(assert (=> bs!1334119 (= (and (= (_1!36105 lt!2275548) s!2326) (= (reg!16034 (regOne!31922 r!7292)) (regOne!31922 r!7292)) (= lt!2275560 (regTwo!31922 r!7292))) (= lambda!308177 lambda!308172))))

(assert (=> bs!1334119 (not (= lambda!308177 lambda!308173))))

(declare-fun bs!1334120 () Bool)

(assert (= bs!1334120 (and b!5710952 b!5710968)))

(assert (=> bs!1334120 (= (and (= (_1!36105 lt!2275548) s!2326) (= (reg!16034 (regOne!31922 r!7292)) lt!2275560) (= lt!2275560 (regTwo!31922 r!7292))) (= lambda!308177 lambda!308175))))

(assert (=> bs!1334120 (not (= lambda!308177 lambda!308176))))

(assert (=> b!5710952 true))

(assert (=> b!5710952 true))

(assert (=> b!5710952 true))

(declare-fun lambda!308178 () Int)

(assert (=> bs!1334120 (not (= lambda!308178 lambda!308175))))

(assert (=> bs!1334119 (not (= lambda!308178 lambda!308173))))

(assert (=> bs!1334120 (not (= lambda!308178 lambda!308176))))

(assert (=> b!5710952 (not (= lambda!308178 lambda!308177))))

(assert (=> bs!1334119 (not (= lambda!308178 lambda!308172))))

(assert (=> b!5710952 true))

(assert (=> b!5710952 true))

(assert (=> b!5710952 true))

(declare-fun lambda!308179 () Int)

(assert (=> bs!1334120 (not (= lambda!308179 lambda!308175))))

(assert (=> bs!1334119 (= (and (= (_1!36105 lt!2275548) s!2326) (= (reg!16034 (regOne!31922 r!7292)) (regOne!31922 r!7292)) (= lt!2275560 (regTwo!31922 r!7292))) (= lambda!308179 lambda!308173))))

(assert (=> b!5710952 (not (= lambda!308179 lambda!308177))))

(assert (=> bs!1334119 (not (= lambda!308179 lambda!308172))))

(assert (=> bs!1334120 (= (and (= (_1!36105 lt!2275548) s!2326) (= (reg!16034 (regOne!31922 r!7292)) lt!2275560) (= lt!2275560 (regTwo!31922 r!7292))) (= lambda!308179 lambda!308176))))

(assert (=> b!5710952 (not (= lambda!308179 lambda!308178))))

(assert (=> b!5710952 true))

(assert (=> b!5710952 true))

(assert (=> b!5710952 true))

(declare-fun b!5710940 () Bool)

(declare-fun res!2410975 () Bool)

(declare-fun e!3512539 () Bool)

(assert (=> b!5710940 (=> res!2410975 e!3512539)))

(declare-fun matchR!7890 (Regex!15705 List!63414) Bool)

(assert (=> b!5710940 (= res!2410975 (not (matchR!7890 lt!2275560 (_1!36105 lt!2275548))))))

(declare-fun b!5710941 () Bool)

(declare-fun res!2410972 () Bool)

(declare-fun e!3512556 () Bool)

(assert (=> b!5710941 (=> res!2410972 e!3512556)))

(get-info :version)

(assert (=> b!5710941 (= res!2410972 (or ((_ is EmptyExpr!15705) r!7292) ((_ is EmptyLang!15705) r!7292) ((_ is ElementMatch!15705) r!7292) ((_ is Union!15705) r!7292) (not ((_ is Concat!24550) r!7292))))))

(declare-fun b!5710942 () Bool)

(declare-fun e!3512535 () Bool)

(declare-fun lt!2275517 () tuple2!65604)

(assert (=> b!5710942 (= e!3512535 (matchR!7890 (reg!16034 (regOne!31922 r!7292)) (_1!36105 lt!2275517)))))

(declare-fun b!5710943 () Bool)

(declare-fun e!3512543 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63415 0))(
  ( (Nil!63291) (Cons!63291 (h!69739 Regex!15705) (t!376735 List!63415)) )
))
(declare-datatypes ((Context!10178 0))(
  ( (Context!10179 (exprs!5589 List!63415)) )
))
(declare-fun lt!2275547 () (InoxSet Context!10178))

(declare-fun matchZipper!1843 ((InoxSet Context!10178) List!63414) Bool)

(assert (=> b!5710943 (= e!3512543 (matchZipper!1843 lt!2275547 (t!376734 s!2326)))))

(declare-fun b!5710944 () Bool)

(declare-fun res!2410994 () Bool)

(declare-fun e!3512552 () Bool)

(assert (=> b!5710944 (=> res!2410994 e!3512552)))

(assert (=> b!5710944 (= res!2410994 (or ((_ is Concat!24550) (regOne!31922 r!7292)) (not ((_ is Star!15705) (regOne!31922 r!7292)))))))

(declare-fun b!5710945 () Bool)

(declare-fun e!3512534 () Bool)

(declare-fun e!3512554 () Bool)

(assert (=> b!5710945 (= e!3512534 e!3512554)))

(declare-fun res!2410977 () Bool)

(assert (=> b!5710945 (=> res!2410977 e!3512554)))

(declare-fun lt!2275519 () Context!10178)

(declare-fun lt!2275552 () Regex!15705)

(declare-datatypes ((List!63416 0))(
  ( (Nil!63292) (Cons!63292 (h!69740 Context!10178) (t!376736 List!63416)) )
))
(declare-fun unfocusZipper!1447 (List!63416) Regex!15705)

(assert (=> b!5710945 (= res!2410977 (not (= (unfocusZipper!1447 (Cons!63292 lt!2275519 Nil!63292)) lt!2275552)))))

(declare-fun lt!2275546 () Regex!15705)

(assert (=> b!5710945 (= lt!2275552 (Concat!24550 (reg!16034 (regOne!31922 r!7292)) lt!2275546))))

(declare-fun e!3512537 () Bool)

(assert (=> b!5710946 (= e!3512537 e!3512552)))

(declare-fun res!2410990 () Bool)

(assert (=> b!5710946 (=> res!2410990 e!3512552)))

(assert (=> b!5710946 (= res!2410990 (or (and ((_ is ElementMatch!15705) (regOne!31922 r!7292)) (= (c!1006621 (regOne!31922 r!7292)) (h!69738 s!2326))) ((_ is Union!15705) (regOne!31922 r!7292))))))

(declare-datatypes ((Unit!156352 0))(
  ( (Unit!156353) )
))
(declare-fun lt!2275528 () Unit!156352)

(declare-fun e!3512547 () Unit!156352)

(assert (=> b!5710946 (= lt!2275528 e!3512547)))

(declare-fun c!1006620 () Bool)

(declare-fun zl!343 () List!63416)

(declare-fun nullable!5737 (Regex!15705) Bool)

(assert (=> b!5710946 (= c!1006620 (nullable!5737 (h!69739 (exprs!5589 (h!69740 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!10178))

(declare-fun lambda!308174 () Int)

(declare-fun flatMap!1318 ((InoxSet Context!10178) Int) (InoxSet Context!10178))

(declare-fun derivationStepZipperUp!973 (Context!10178 C!31680) (InoxSet Context!10178))

(assert (=> b!5710946 (= (flatMap!1318 z!1189 lambda!308174) (derivationStepZipperUp!973 (h!69740 zl!343) (h!69738 s!2326)))))

(declare-fun lt!2275553 () Unit!156352)

(declare-fun lemmaFlatMapOnSingletonSet!850 ((InoxSet Context!10178) Context!10178 Int) Unit!156352)

(assert (=> b!5710946 (= lt!2275553 (lemmaFlatMapOnSingletonSet!850 z!1189 (h!69740 zl!343) lambda!308174))))

(declare-fun lt!2275527 () Context!10178)

(assert (=> b!5710946 (= lt!2275547 (derivationStepZipperUp!973 lt!2275527 (h!69738 s!2326)))))

(declare-fun lt!2275534 () (InoxSet Context!10178))

(declare-fun derivationStepZipperDown!1047 (Regex!15705 Context!10178 C!31680) (InoxSet Context!10178))

(assert (=> b!5710946 (= lt!2275534 (derivationStepZipperDown!1047 (h!69739 (exprs!5589 (h!69740 zl!343))) lt!2275527 (h!69738 s!2326)))))

(assert (=> b!5710946 (= lt!2275527 (Context!10179 (t!376735 (exprs!5589 (h!69740 zl!343)))))))

(declare-fun lt!2275544 () (InoxSet Context!10178))

(assert (=> b!5710946 (= lt!2275544 (derivationStepZipperUp!973 (Context!10179 (Cons!63291 (h!69739 (exprs!5589 (h!69740 zl!343))) (t!376735 (exprs!5589 (h!69740 zl!343))))) (h!69738 s!2326)))))

(declare-fun b!5710947 () Bool)

(declare-fun res!2410991 () Bool)

(declare-fun e!3512546 () Bool)

(assert (=> b!5710947 (=> (not res!2410991) (not e!3512546))))

(declare-fun toList!9489 ((InoxSet Context!10178)) List!63416)

(assert (=> b!5710947 (= res!2410991 (= (toList!9489 z!1189) zl!343))))

(declare-fun b!5710948 () Bool)

(declare-fun res!2410996 () Bool)

(assert (=> b!5710948 (=> res!2410996 e!3512539)))

(declare-fun isEmpty!35158 (List!63414) Bool)

(assert (=> b!5710948 (= res!2410996 (isEmpty!35158 (_1!36105 lt!2275548)))))

(declare-fun b!5710949 () Bool)

(declare-fun e!3512544 () Bool)

(assert (=> b!5710949 (= e!3512552 e!3512544)))

(declare-fun res!2410970 () Bool)

(assert (=> b!5710949 (=> res!2410970 e!3512544)))

(declare-fun lt!2275531 () (InoxSet Context!10178))

(assert (=> b!5710949 (= res!2410970 (not (= lt!2275534 lt!2275531)))))

(declare-fun lt!2275533 () Context!10178)

(assert (=> b!5710949 (= lt!2275531 (derivationStepZipperDown!1047 (reg!16034 (regOne!31922 r!7292)) lt!2275533 (h!69738 s!2326)))))

(declare-fun lt!2275557 () List!63415)

(assert (=> b!5710949 (= lt!2275533 (Context!10179 lt!2275557))))

(assert (=> b!5710949 (= lt!2275557 (Cons!63291 lt!2275560 (t!376735 (exprs!5589 (h!69740 zl!343)))))))

(assert (=> b!5710949 (= lt!2275560 (Star!15705 (reg!16034 (regOne!31922 r!7292))))))

(declare-fun b!5710950 () Bool)

(declare-fun res!2410988 () Bool)

(assert (=> b!5710950 (=> res!2410988 e!3512556)))

(declare-fun isEmpty!35159 (List!63416) Bool)

(assert (=> b!5710950 (= res!2410988 (not (isEmpty!35159 (t!376736 zl!343))))))

(declare-fun b!5710951 () Bool)

(declare-fun e!3512540 () Bool)

(declare-fun tp!1582941 () Bool)

(assert (=> b!5710951 (= e!3512540 tp!1582941)))

(declare-fun e!3512542 () Bool)

(assert (=> b!5710952 (= e!3512539 e!3512542)))

(declare-fun res!2410997 () Bool)

(assert (=> b!5710952 (=> res!2410997 e!3512542)))

(declare-fun lt!2275525 () List!63414)

(assert (=> b!5710952 (= res!2410997 (not (= (_1!36105 lt!2275548) lt!2275525)))))

(declare-fun ++!13897 (List!63414 List!63414) List!63414)

(assert (=> b!5710952 (= lt!2275525 (++!13897 (_1!36105 lt!2275517) (_2!36105 lt!2275517)))))

(declare-datatypes ((Option!15714 0))(
  ( (None!15713) (Some!15713 (v!51768 tuple2!65604)) )
))
(declare-fun lt!2275529 () Option!15714)

(declare-fun get!21817 (Option!15714) tuple2!65604)

(assert (=> b!5710952 (= lt!2275517 (get!21817 lt!2275529))))

(declare-fun Exists!2805 (Int) Bool)

(assert (=> b!5710952 (= (Exists!2805 lambda!308177) (Exists!2805 lambda!308179))))

(declare-fun lt!2275551 () Unit!156352)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1434 (Regex!15705 Regex!15705 List!63414) Unit!156352)

(assert (=> b!5710952 (= lt!2275551 (lemmaExistCutMatchRandMatchRSpecEquivalent!1434 (reg!16034 (regOne!31922 r!7292)) lt!2275560 (_1!36105 lt!2275548)))))

(assert (=> b!5710952 (= (Exists!2805 lambda!308177) (Exists!2805 lambda!308178))))

(declare-fun lt!2275523 () Unit!156352)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!542 (Regex!15705 List!63414) Unit!156352)

(assert (=> b!5710952 (= lt!2275523 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!542 (reg!16034 (regOne!31922 r!7292)) (_1!36105 lt!2275548)))))

(declare-fun isDefined!12417 (Option!15714) Bool)

(assert (=> b!5710952 (= (isDefined!12417 lt!2275529) (Exists!2805 lambda!308177))))

(declare-fun findConcatSeparation!2128 (Regex!15705 Regex!15705 List!63414 List!63414 List!63414) Option!15714)

(assert (=> b!5710952 (= lt!2275529 (findConcatSeparation!2128 (reg!16034 (regOne!31922 r!7292)) lt!2275560 Nil!63290 (_1!36105 lt!2275548) (_1!36105 lt!2275548)))))

(declare-fun lt!2275538 () Unit!156352)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1892 (Regex!15705 Regex!15705 List!63414) Unit!156352)

(assert (=> b!5710952 (= lt!2275538 (lemmaFindConcatSeparationEquivalentToExists!1892 (reg!16034 (regOne!31922 r!7292)) lt!2275560 (_1!36105 lt!2275548)))))

(declare-fun matchRSpec!2808 (Regex!15705 List!63414) Bool)

(assert (=> b!5710952 (matchRSpec!2808 lt!2275560 (_1!36105 lt!2275548))))

(declare-fun lt!2275535 () Unit!156352)

(declare-fun mainMatchTheorem!2808 (Regex!15705 List!63414) Unit!156352)

(assert (=> b!5710952 (= lt!2275535 (mainMatchTheorem!2808 lt!2275560 (_1!36105 lt!2275548)))))

(declare-fun b!5710953 () Bool)

(declare-fun res!2410992 () Bool)

(assert (=> b!5710953 (=> res!2410992 e!3512539)))

(assert (=> b!5710953 (= res!2410992 (not (matchR!7890 (regTwo!31922 r!7292) (_2!36105 lt!2275548))))))

(declare-fun b!5710954 () Bool)

(declare-fun Unit!156354 () Unit!156352)

(assert (=> b!5710954 (= e!3512547 Unit!156354)))

(declare-fun lt!2275518 () Unit!156352)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!730 ((InoxSet Context!10178) (InoxSet Context!10178) List!63414) Unit!156352)

(assert (=> b!5710954 (= lt!2275518 (lemmaZipperConcatMatchesSameAsBothZippers!730 lt!2275534 lt!2275547 (t!376734 s!2326)))))

(declare-fun res!2410987 () Bool)

(assert (=> b!5710954 (= res!2410987 (matchZipper!1843 lt!2275534 (t!376734 s!2326)))))

(assert (=> b!5710954 (=> res!2410987 e!3512543)))

(assert (=> b!5710954 (= (matchZipper!1843 ((_ map or) lt!2275534 lt!2275547) (t!376734 s!2326)) e!3512543)))

(declare-fun b!5710955 () Bool)

(declare-fun res!2410969 () Bool)

(assert (=> b!5710955 (=> res!2410969 e!3512552)))

(declare-fun e!3512545 () Bool)

(assert (=> b!5710955 (= res!2410969 e!3512545)))

(declare-fun res!2410999 () Bool)

(assert (=> b!5710955 (=> (not res!2410999) (not e!3512545))))

(assert (=> b!5710955 (= res!2410999 ((_ is Concat!24550) (regOne!31922 r!7292)))))

(declare-fun b!5710956 () Bool)

(declare-fun res!2410968 () Bool)

(assert (=> b!5710956 (=> res!2410968 e!3512556)))

(declare-fun generalisedUnion!1568 (List!63415) Regex!15705)

(declare-fun unfocusZipperList!1133 (List!63416) List!63415)

(assert (=> b!5710956 (= res!2410968 (not (= r!7292 (generalisedUnion!1568 (unfocusZipperList!1133 zl!343)))))))

(declare-fun b!5710957 () Bool)

(declare-fun res!2410973 () Bool)

(declare-fun e!3512555 () Bool)

(assert (=> b!5710957 (=> res!2410973 e!3512555)))

(assert (=> b!5710957 (= res!2410973 (not (= (unfocusZipper!1447 (Cons!63292 lt!2275533 Nil!63292)) lt!2275546)))))

(declare-fun b!5710958 () Bool)

(declare-fun Unit!156355 () Unit!156352)

(assert (=> b!5710958 (= e!3512547 Unit!156355)))

(declare-fun b!5710959 () Bool)

(declare-fun e!3512549 () Bool)

(assert (=> b!5710959 (= e!3512549 e!3512534)))

(declare-fun res!2410981 () Bool)

(assert (=> b!5710959 (=> res!2410981 e!3512534)))

(assert (=> b!5710959 (= res!2410981 (not (= r!7292 lt!2275546)))))

(assert (=> b!5710959 (= lt!2275546 (Concat!24550 lt!2275560 (regTwo!31922 r!7292)))))

(declare-fun b!5710960 () Bool)

(declare-fun res!2410971 () Bool)

(assert (=> b!5710960 (=> res!2410971 e!3512537)))

(declare-fun isEmpty!35160 (List!63415) Bool)

(assert (=> b!5710960 (= res!2410971 (isEmpty!35160 (t!376735 (exprs!5589 (h!69740 zl!343)))))))

(declare-fun b!5710961 () Bool)

(declare-fun e!3512538 () Bool)

(assert (=> b!5710961 (= e!3512538 (not e!3512556))))

(declare-fun res!2410995 () Bool)

(assert (=> b!5710961 (=> res!2410995 e!3512556)))

(assert (=> b!5710961 (= res!2410995 (not ((_ is Cons!63292) zl!343)))))

(declare-fun lt!2275514 () Bool)

(declare-fun lt!2275530 () Bool)

(assert (=> b!5710961 (= lt!2275514 lt!2275530)))

(assert (=> b!5710961 (= lt!2275530 (matchRSpec!2808 r!7292 s!2326))))

(assert (=> b!5710961 (= lt!2275514 (matchR!7890 r!7292 s!2326))))

(declare-fun lt!2275520 () Unit!156352)

(assert (=> b!5710961 (= lt!2275520 (mainMatchTheorem!2808 r!7292 s!2326))))

(declare-fun b!5710962 () Bool)

(assert (=> b!5710962 (= e!3512554 e!3512555)))

(declare-fun res!2410986 () Bool)

(assert (=> b!5710962 (=> res!2410986 e!3512555)))

(declare-fun lt!2275539 () Context!10178)

(assert (=> b!5710962 (= res!2410986 (not (= (unfocusZipper!1447 (Cons!63292 lt!2275539 Nil!63292)) (reg!16034 (regOne!31922 r!7292)))))))

(declare-fun lt!2275540 () (InoxSet Context!10178))

(assert (=> b!5710962 (= (flatMap!1318 lt!2275540 lambda!308174) (derivationStepZipperUp!973 lt!2275533 (h!69738 s!2326)))))

(declare-fun lt!2275515 () Unit!156352)

(assert (=> b!5710962 (= lt!2275515 (lemmaFlatMapOnSingletonSet!850 lt!2275540 lt!2275533 lambda!308174))))

(declare-fun lt!2275536 () (InoxSet Context!10178))

(assert (=> b!5710962 (= (flatMap!1318 lt!2275536 lambda!308174) (derivationStepZipperUp!973 lt!2275539 (h!69738 s!2326)))))

(declare-fun lt!2275526 () Unit!156352)

(assert (=> b!5710962 (= lt!2275526 (lemmaFlatMapOnSingletonSet!850 lt!2275536 lt!2275539 lambda!308174))))

(declare-fun lt!2275555 () (InoxSet Context!10178))

(assert (=> b!5710962 (= lt!2275555 (derivationStepZipperUp!973 lt!2275533 (h!69738 s!2326)))))

(declare-fun lt!2275543 () (InoxSet Context!10178))

(assert (=> b!5710962 (= lt!2275543 (derivationStepZipperUp!973 lt!2275539 (h!69738 s!2326)))))

(assert (=> b!5710962 (= lt!2275540 (store ((as const (Array Context!10178 Bool)) false) lt!2275533 true))))

(assert (=> b!5710962 (= lt!2275536 (store ((as const (Array Context!10178 Bool)) false) lt!2275539 true))))

(assert (=> b!5710962 (= lt!2275539 (Context!10179 (Cons!63291 (reg!16034 (regOne!31922 r!7292)) Nil!63291)))))

(declare-fun b!5710963 () Bool)

(declare-fun e!3512553 () Bool)

(assert (=> b!5710963 (= e!3512553 (or (not lt!2275514) lt!2275530))))

(declare-fun b!5710964 () Bool)

(declare-fun res!2410980 () Bool)

(assert (=> b!5710964 (=> res!2410980 e!3512556)))

(declare-fun generalisedConcat!1320 (List!63415) Regex!15705)

(assert (=> b!5710964 (= res!2410980 (not (= r!7292 (generalisedConcat!1320 (exprs!5589 (h!69740 zl!343))))))))

(declare-fun b!5710965 () Bool)

(declare-fun res!2410978 () Bool)

(assert (=> b!5710965 (=> res!2410978 e!3512556)))

(assert (=> b!5710965 (= res!2410978 (not ((_ is Cons!63291) (exprs!5589 (h!69740 zl!343)))))))

(declare-fun b!5710966 () Bool)

(assert (=> b!5710966 (= e!3512546 e!3512538)))

(declare-fun res!2410979 () Bool)

(assert (=> b!5710966 (=> (not res!2410979) (not e!3512538))))

(declare-fun lt!2275554 () Regex!15705)

(assert (=> b!5710966 (= res!2410979 (= r!7292 lt!2275554))))

(assert (=> b!5710966 (= lt!2275554 (unfocusZipper!1447 zl!343))))

(declare-fun b!5710967 () Bool)

(declare-fun e!3512536 () Bool)

(declare-fun tp!1582942 () Bool)

(declare-fun tp!1582939 () Bool)

(assert (=> b!5710967 (= e!3512536 (and tp!1582942 tp!1582939))))

(declare-fun setNonEmpty!38243 () Bool)

(declare-fun setElem!38243 () Context!10178)

(declare-fun setRes!38243 () Bool)

(declare-fun tp!1582934 () Bool)

(declare-fun inv!82509 (Context!10178) Bool)

(assert (=> setNonEmpty!38243 (= setRes!38243 (and tp!1582934 (inv!82509 setElem!38243) e!3512540))))

(declare-fun setRest!38243 () (InoxSet Context!10178))

(assert (=> setNonEmpty!38243 (= z!1189 ((_ map or) (store ((as const (Array Context!10178 Bool)) false) setElem!38243 true) setRest!38243))))

(declare-fun e!3512550 () Bool)

(assert (=> b!5710968 (= e!3512550 e!3512539)))

(declare-fun res!2410993 () Bool)

(assert (=> b!5710968 (=> res!2410993 e!3512539)))

(assert (=> b!5710968 (= res!2410993 (not (= (++!13897 (_1!36105 lt!2275548) (_2!36105 lt!2275548)) s!2326)))))

(declare-fun lt!2275559 () Option!15714)

(assert (=> b!5710968 (= lt!2275548 (get!21817 lt!2275559))))

(assert (=> b!5710968 (= (Exists!2805 lambda!308175) (Exists!2805 lambda!308176))))

(declare-fun lt!2275542 () Unit!156352)

(assert (=> b!5710968 (= lt!2275542 (lemmaExistCutMatchRandMatchRSpecEquivalent!1434 lt!2275560 (regTwo!31922 r!7292) s!2326))))

(assert (=> b!5710968 (= (isDefined!12417 lt!2275559) (Exists!2805 lambda!308175))))

(assert (=> b!5710968 (= lt!2275559 (findConcatSeparation!2128 lt!2275560 (regTwo!31922 r!7292) Nil!63290 s!2326 s!2326))))

(declare-fun lt!2275545 () Unit!156352)

(assert (=> b!5710968 (= lt!2275545 (lemmaFindConcatSeparationEquivalentToExists!1892 lt!2275560 (regTwo!31922 r!7292) s!2326))))

(declare-fun b!5710969 () Bool)

(assert (=> b!5710969 (= e!3512544 e!3512549)))

(declare-fun res!2410985 () Bool)

(assert (=> b!5710969 (=> res!2410985 e!3512549)))

(declare-fun lt!2275524 () (InoxSet Context!10178))

(assert (=> b!5710969 (= res!2410985 (not (= lt!2275524 lt!2275531)))))

(declare-fun lt!2275558 () (InoxSet Context!10178))

(assert (=> b!5710969 (= (flatMap!1318 lt!2275558 lambda!308174) (derivationStepZipperUp!973 lt!2275519 (h!69738 s!2326)))))

(declare-fun lt!2275522 () Unit!156352)

(assert (=> b!5710969 (= lt!2275522 (lemmaFlatMapOnSingletonSet!850 lt!2275558 lt!2275519 lambda!308174))))

(declare-fun lt!2275549 () (InoxSet Context!10178))

(assert (=> b!5710969 (= lt!2275549 (derivationStepZipperUp!973 lt!2275519 (h!69738 s!2326)))))

(declare-fun derivationStepZipper!1788 ((InoxSet Context!10178) C!31680) (InoxSet Context!10178))

(assert (=> b!5710969 (= lt!2275524 (derivationStepZipper!1788 lt!2275558 (h!69738 s!2326)))))

(assert (=> b!5710969 (= lt!2275558 (store ((as const (Array Context!10178 Bool)) false) lt!2275519 true))))

(assert (=> b!5710969 (= lt!2275519 (Context!10179 (Cons!63291 (reg!16034 (regOne!31922 r!7292)) lt!2275557)))))

(assert (=> b!5710970 (= e!3512556 e!3512537)))

(declare-fun res!2410984 () Bool)

(assert (=> b!5710970 (=> res!2410984 e!3512537)))

(declare-fun lt!2275532 () Bool)

(assert (=> b!5710970 (= res!2410984 (or (not (= lt!2275514 lt!2275532)) ((_ is Nil!63290) s!2326)))))

(assert (=> b!5710970 (= (Exists!2805 lambda!308172) (Exists!2805 lambda!308173))))

(declare-fun lt!2275541 () Unit!156352)

(assert (=> b!5710970 (= lt!2275541 (lemmaExistCutMatchRandMatchRSpecEquivalent!1434 (regOne!31922 r!7292) (regTwo!31922 r!7292) s!2326))))

(assert (=> b!5710970 (= lt!2275532 (Exists!2805 lambda!308172))))

(assert (=> b!5710970 (= lt!2275532 (isDefined!12417 (findConcatSeparation!2128 (regOne!31922 r!7292) (regTwo!31922 r!7292) Nil!63290 s!2326 s!2326)))))

(declare-fun lt!2275550 () Unit!156352)

(assert (=> b!5710970 (= lt!2275550 (lemmaFindConcatSeparationEquivalentToExists!1892 (regOne!31922 r!7292) (regTwo!31922 r!7292) s!2326))))

(declare-fun b!5710971 () Bool)

(declare-fun tp!1582938 () Bool)

(assert (=> b!5710971 (= e!3512536 tp!1582938)))

(declare-fun setIsEmpty!38243 () Bool)

(assert (=> setIsEmpty!38243 setRes!38243))

(declare-fun e!3512541 () Bool)

(declare-fun tp!1582940 () Bool)

(declare-fun e!3512548 () Bool)

(declare-fun b!5710972 () Bool)

(assert (=> b!5710972 (= e!3512541 (and (inv!82509 (h!69740 zl!343)) e!3512548 tp!1582940))))

(declare-fun b!5710973 () Bool)

(declare-fun res!2410976 () Bool)

(assert (=> b!5710973 (=> res!2410976 e!3512549)))

(assert (=> b!5710973 (= res!2410976 (not (= lt!2275554 r!7292)))))

(declare-fun b!5710974 () Bool)

(declare-fun tp_is_empty!40663 () Bool)

(assert (=> b!5710974 (= e!3512536 tp_is_empty!40663)))

(declare-fun b!5710975 () Bool)

(declare-fun tp!1582933 () Bool)

(assert (=> b!5710975 (= e!3512548 tp!1582933)))

(declare-fun b!5710976 () Bool)

(declare-fun tp!1582935 () Bool)

(declare-fun tp!1582936 () Bool)

(assert (=> b!5710976 (= e!3512536 (and tp!1582935 tp!1582936))))

(declare-fun b!5710977 () Bool)

(assert (=> b!5710977 (= e!3512555 e!3512550)))

(declare-fun res!2410982 () Bool)

(assert (=> b!5710977 (=> res!2410982 e!3512550)))

(assert (=> b!5710977 (= res!2410982 (not lt!2275514))))

(assert (=> b!5710977 e!3512553))

(declare-fun res!2410989 () Bool)

(assert (=> b!5710977 (=> (not res!2410989) (not e!3512553))))

(assert (=> b!5710977 (= res!2410989 (= (matchR!7890 lt!2275552 s!2326) (matchRSpec!2808 lt!2275552 s!2326)))))

(declare-fun lt!2275521 () Unit!156352)

(assert (=> b!5710977 (= lt!2275521 (mainMatchTheorem!2808 lt!2275552 s!2326))))

(declare-fun res!2410998 () Bool)

(assert (=> start!588108 (=> (not res!2410998) (not e!3512546))))

(declare-fun validRegex!7441 (Regex!15705) Bool)

(assert (=> start!588108 (= res!2410998 (validRegex!7441 r!7292))))

(assert (=> start!588108 e!3512546))

(assert (=> start!588108 e!3512536))

(declare-fun condSetEmpty!38243 () Bool)

(assert (=> start!588108 (= condSetEmpty!38243 (= z!1189 ((as const (Array Context!10178 Bool)) false)))))

(assert (=> start!588108 setRes!38243))

(assert (=> start!588108 e!3512541))

(declare-fun e!3512551 () Bool)

(assert (=> start!588108 e!3512551))

(declare-fun b!5710978 () Bool)

(declare-fun tp!1582937 () Bool)

(assert (=> b!5710978 (= e!3512551 (and tp_is_empty!40663 tp!1582937))))

(declare-fun b!5710979 () Bool)

(assert (=> b!5710979 (= e!3512545 (nullable!5737 (regOne!31922 (regOne!31922 r!7292))))))

(declare-fun b!5710980 () Bool)

(assert (=> b!5710980 (= e!3512542 e!3512535)))

(declare-fun res!2410974 () Bool)

(assert (=> b!5710980 (=> res!2410974 e!3512535)))

(declare-fun lt!2275516 () List!63414)

(assert (=> b!5710980 (= res!2410974 (not (= lt!2275516 s!2326)))))

(declare-fun lt!2275556 () List!63414)

(assert (=> b!5710980 (= lt!2275516 (++!13897 (_1!36105 lt!2275517) lt!2275556))))

(assert (=> b!5710980 (= lt!2275516 (++!13897 lt!2275525 (_2!36105 lt!2275548)))))

(assert (=> b!5710980 (= lt!2275556 (++!13897 (_2!36105 lt!2275517) (_2!36105 lt!2275548)))))

(declare-fun lt!2275537 () Unit!156352)

(declare-fun lemmaConcatAssociativity!2872 (List!63414 List!63414 List!63414) Unit!156352)

(assert (=> b!5710980 (= lt!2275537 (lemmaConcatAssociativity!2872 (_1!36105 lt!2275517) (_2!36105 lt!2275517) (_2!36105 lt!2275548)))))

(declare-fun b!5710981 () Bool)

(declare-fun res!2410983 () Bool)

(assert (=> b!5710981 (=> res!2410983 e!3512549)))

(assert (=> b!5710981 (= res!2410983 (not (= (matchZipper!1843 lt!2275558 s!2326) (matchZipper!1843 lt!2275524 (t!376734 s!2326)))))))

(assert (= (and start!588108 res!2410998) b!5710947))

(assert (= (and b!5710947 res!2410991) b!5710966))

(assert (= (and b!5710966 res!2410979) b!5710961))

(assert (= (and b!5710961 (not res!2410995)) b!5710950))

(assert (= (and b!5710950 (not res!2410988)) b!5710964))

(assert (= (and b!5710964 (not res!2410980)) b!5710965))

(assert (= (and b!5710965 (not res!2410978)) b!5710956))

(assert (= (and b!5710956 (not res!2410968)) b!5710941))

(assert (= (and b!5710941 (not res!2410972)) b!5710970))

(assert (= (and b!5710970 (not res!2410984)) b!5710960))

(assert (= (and b!5710960 (not res!2410971)) b!5710946))

(assert (= (and b!5710946 c!1006620) b!5710954))

(assert (= (and b!5710946 (not c!1006620)) b!5710958))

(assert (= (and b!5710954 (not res!2410987)) b!5710943))

(assert (= (and b!5710946 (not res!2410990)) b!5710955))

(assert (= (and b!5710955 res!2410999) b!5710979))

(assert (= (and b!5710955 (not res!2410969)) b!5710944))

(assert (= (and b!5710944 (not res!2410994)) b!5710949))

(assert (= (and b!5710949 (not res!2410970)) b!5710969))

(assert (= (and b!5710969 (not res!2410985)) b!5710981))

(assert (= (and b!5710981 (not res!2410983)) b!5710973))

(assert (= (and b!5710973 (not res!2410976)) b!5710959))

(assert (= (and b!5710959 (not res!2410981)) b!5710945))

(assert (= (and b!5710945 (not res!2410977)) b!5710962))

(assert (= (and b!5710962 (not res!2410986)) b!5710957))

(assert (= (and b!5710957 (not res!2410973)) b!5710977))

(assert (= (and b!5710977 res!2410989) b!5710963))

(assert (= (and b!5710977 (not res!2410982)) b!5710968))

(assert (= (and b!5710968 (not res!2410993)) b!5710940))

(assert (= (and b!5710940 (not res!2410975)) b!5710953))

(assert (= (and b!5710953 (not res!2410992)) b!5710948))

(assert (= (and b!5710948 (not res!2410996)) b!5710952))

(assert (= (and b!5710952 (not res!2410997)) b!5710980))

(assert (= (and b!5710980 (not res!2410974)) b!5710942))

(assert (= (and start!588108 ((_ is ElementMatch!15705) r!7292)) b!5710974))

(assert (= (and start!588108 ((_ is Concat!24550) r!7292)) b!5710976))

(assert (= (and start!588108 ((_ is Star!15705) r!7292)) b!5710971))

(assert (= (and start!588108 ((_ is Union!15705) r!7292)) b!5710967))

(assert (= (and start!588108 condSetEmpty!38243) setIsEmpty!38243))

(assert (= (and start!588108 (not condSetEmpty!38243)) setNonEmpty!38243))

(assert (= setNonEmpty!38243 b!5710951))

(assert (= b!5710972 b!5710975))

(assert (= (and start!588108 ((_ is Cons!63292) zl!343)) b!5710972))

(assert (= (and start!588108 ((_ is Cons!63290) s!2326)) b!5710978))

(declare-fun m!6664544 () Bool)

(assert (=> start!588108 m!6664544))

(declare-fun m!6664546 () Bool)

(assert (=> b!5710979 m!6664546))

(declare-fun m!6664548 () Bool)

(assert (=> b!5710964 m!6664548))

(declare-fun m!6664550 () Bool)

(assert (=> b!5710947 m!6664550))

(declare-fun m!6664552 () Bool)

(assert (=> b!5710957 m!6664552))

(declare-fun m!6664554 () Bool)

(assert (=> b!5710950 m!6664554))

(declare-fun m!6664556 () Bool)

(assert (=> b!5710966 m!6664556))

(declare-fun m!6664558 () Bool)

(assert (=> b!5710952 m!6664558))

(declare-fun m!6664560 () Bool)

(assert (=> b!5710952 m!6664560))

(declare-fun m!6664562 () Bool)

(assert (=> b!5710952 m!6664562))

(declare-fun m!6664564 () Bool)

(assert (=> b!5710952 m!6664564))

(assert (=> b!5710952 m!6664562))

(declare-fun m!6664566 () Bool)

(assert (=> b!5710952 m!6664566))

(declare-fun m!6664568 () Bool)

(assert (=> b!5710952 m!6664568))

(assert (=> b!5710952 m!6664562))

(declare-fun m!6664570 () Bool)

(assert (=> b!5710952 m!6664570))

(declare-fun m!6664572 () Bool)

(assert (=> b!5710952 m!6664572))

(declare-fun m!6664574 () Bool)

(assert (=> b!5710952 m!6664574))

(declare-fun m!6664576 () Bool)

(assert (=> b!5710952 m!6664576))

(declare-fun m!6664578 () Bool)

(assert (=> b!5710952 m!6664578))

(declare-fun m!6664580 () Bool)

(assert (=> b!5710952 m!6664580))

(declare-fun m!6664582 () Bool)

(assert (=> setNonEmpty!38243 m!6664582))

(declare-fun m!6664584 () Bool)

(assert (=> b!5710970 m!6664584))

(declare-fun m!6664586 () Bool)

(assert (=> b!5710970 m!6664586))

(declare-fun m!6664588 () Bool)

(assert (=> b!5710970 m!6664588))

(declare-fun m!6664590 () Bool)

(assert (=> b!5710970 m!6664590))

(declare-fun m!6664592 () Bool)

(assert (=> b!5710970 m!6664592))

(assert (=> b!5710970 m!6664590))

(assert (=> b!5710970 m!6664586))

(declare-fun m!6664594 () Bool)

(assert (=> b!5710970 m!6664594))

(declare-fun m!6664596 () Bool)

(assert (=> b!5710945 m!6664596))

(declare-fun m!6664598 () Bool)

(assert (=> b!5710949 m!6664598))

(declare-fun m!6664600 () Bool)

(assert (=> b!5710956 m!6664600))

(assert (=> b!5710956 m!6664600))

(declare-fun m!6664602 () Bool)

(assert (=> b!5710956 m!6664602))

(declare-fun m!6664604 () Bool)

(assert (=> b!5710942 m!6664604))

(declare-fun m!6664606 () Bool)

(assert (=> b!5710968 m!6664606))

(declare-fun m!6664608 () Bool)

(assert (=> b!5710968 m!6664608))

(assert (=> b!5710968 m!6664606))

(declare-fun m!6664610 () Bool)

(assert (=> b!5710968 m!6664610))

(declare-fun m!6664612 () Bool)

(assert (=> b!5710968 m!6664612))

(declare-fun m!6664614 () Bool)

(assert (=> b!5710968 m!6664614))

(declare-fun m!6664616 () Bool)

(assert (=> b!5710968 m!6664616))

(declare-fun m!6664618 () Bool)

(assert (=> b!5710968 m!6664618))

(declare-fun m!6664620 () Bool)

(assert (=> b!5710968 m!6664620))

(declare-fun m!6664622 () Bool)

(assert (=> b!5710953 m!6664622))

(declare-fun m!6664624 () Bool)

(assert (=> b!5710962 m!6664624))

(declare-fun m!6664626 () Bool)

(assert (=> b!5710962 m!6664626))

(declare-fun m!6664628 () Bool)

(assert (=> b!5710962 m!6664628))

(declare-fun m!6664630 () Bool)

(assert (=> b!5710962 m!6664630))

(declare-fun m!6664632 () Bool)

(assert (=> b!5710962 m!6664632))

(declare-fun m!6664634 () Bool)

(assert (=> b!5710962 m!6664634))

(declare-fun m!6664636 () Bool)

(assert (=> b!5710962 m!6664636))

(declare-fun m!6664638 () Bool)

(assert (=> b!5710962 m!6664638))

(declare-fun m!6664640 () Bool)

(assert (=> b!5710962 m!6664640))

(declare-fun m!6664642 () Bool)

(assert (=> b!5710961 m!6664642))

(declare-fun m!6664644 () Bool)

(assert (=> b!5710961 m!6664644))

(declare-fun m!6664646 () Bool)

(assert (=> b!5710961 m!6664646))

(declare-fun m!6664648 () Bool)

(assert (=> b!5710972 m!6664648))

(declare-fun m!6664650 () Bool)

(assert (=> b!5710948 m!6664650))

(declare-fun m!6664652 () Bool)

(assert (=> b!5710943 m!6664652))

(declare-fun m!6664654 () Bool)

(assert (=> b!5710946 m!6664654))

(declare-fun m!6664656 () Bool)

(assert (=> b!5710946 m!6664656))

(declare-fun m!6664658 () Bool)

(assert (=> b!5710946 m!6664658))

(declare-fun m!6664660 () Bool)

(assert (=> b!5710946 m!6664660))

(declare-fun m!6664662 () Bool)

(assert (=> b!5710946 m!6664662))

(declare-fun m!6664664 () Bool)

(assert (=> b!5710946 m!6664664))

(declare-fun m!6664666 () Bool)

(assert (=> b!5710946 m!6664666))

(declare-fun m!6664668 () Bool)

(assert (=> b!5710954 m!6664668))

(declare-fun m!6664670 () Bool)

(assert (=> b!5710954 m!6664670))

(declare-fun m!6664672 () Bool)

(assert (=> b!5710954 m!6664672))

(declare-fun m!6664674 () Bool)

(assert (=> b!5710980 m!6664674))

(declare-fun m!6664676 () Bool)

(assert (=> b!5710980 m!6664676))

(declare-fun m!6664678 () Bool)

(assert (=> b!5710980 m!6664678))

(declare-fun m!6664680 () Bool)

(assert (=> b!5710980 m!6664680))

(declare-fun m!6664682 () Bool)

(assert (=> b!5710960 m!6664682))

(declare-fun m!6664684 () Bool)

(assert (=> b!5710977 m!6664684))

(declare-fun m!6664686 () Bool)

(assert (=> b!5710977 m!6664686))

(declare-fun m!6664688 () Bool)

(assert (=> b!5710977 m!6664688))

(declare-fun m!6664690 () Bool)

(assert (=> b!5710981 m!6664690))

(declare-fun m!6664692 () Bool)

(assert (=> b!5710981 m!6664692))

(declare-fun m!6664694 () Bool)

(assert (=> b!5710940 m!6664694))

(declare-fun m!6664696 () Bool)

(assert (=> b!5710969 m!6664696))

(declare-fun m!6664698 () Bool)

(assert (=> b!5710969 m!6664698))

(declare-fun m!6664700 () Bool)

(assert (=> b!5710969 m!6664700))

(declare-fun m!6664702 () Bool)

(assert (=> b!5710969 m!6664702))

(declare-fun m!6664704 () Bool)

(assert (=> b!5710969 m!6664704))

(check-sat (not b!5710940) (not b!5710953) (not b!5710980) (not setNonEmpty!38243) (not b!5710967) (not b!5710951) (not b!5710950) (not b!5710977) (not b!5710969) (not b!5710952) (not b!5710961) (not b!5710978) (not b!5710942) (not b!5710960) (not b!5710946) (not b!5710947) (not b!5710957) (not b!5710979) (not b!5710971) (not b!5710964) (not b!5710968) (not b!5710966) (not b!5710972) (not start!588108) (not b!5710976) (not b!5710975) (not b!5710981) (not b!5710954) (not b!5710962) (not b!5710948) (not b!5710945) (not b!5710943) (not b!5710956) (not b!5710949) (not b!5710970) tp_is_empty!40663)
(check-sat)
(get-model)

(declare-fun d!1801732 () Bool)

(assert (=> d!1801732 (= (get!21817 lt!2275529) (v!51768 lt!2275529))))

(assert (=> b!5710952 d!1801732))

(declare-fun bs!1334185 () Bool)

(declare-fun d!1801734 () Bool)

(assert (= bs!1334185 (and d!1801734 b!5710952)))

(declare-fun lambda!308209 () Int)

(assert (=> bs!1334185 (not (= lambda!308209 lambda!308179))))

(declare-fun bs!1334186 () Bool)

(assert (= bs!1334186 (and d!1801734 b!5710968)))

(assert (=> bs!1334186 (= (and (= (_1!36105 lt!2275548) s!2326) (= (reg!16034 (regOne!31922 r!7292)) lt!2275560) (= lt!2275560 (regTwo!31922 r!7292))) (= lambda!308209 lambda!308175))))

(declare-fun bs!1334187 () Bool)

(assert (= bs!1334187 (and d!1801734 b!5710970)))

(assert (=> bs!1334187 (not (= lambda!308209 lambda!308173))))

(assert (=> bs!1334185 (= lambda!308209 lambda!308177)))

(assert (=> bs!1334187 (= (and (= (_1!36105 lt!2275548) s!2326) (= (reg!16034 (regOne!31922 r!7292)) (regOne!31922 r!7292)) (= lt!2275560 (regTwo!31922 r!7292))) (= lambda!308209 lambda!308172))))

(assert (=> bs!1334186 (not (= lambda!308209 lambda!308176))))

(assert (=> bs!1334185 (not (= lambda!308209 lambda!308178))))

(assert (=> d!1801734 true))

(assert (=> d!1801734 true))

(assert (=> d!1801734 true))

(assert (=> d!1801734 (= (isDefined!12417 (findConcatSeparation!2128 (reg!16034 (regOne!31922 r!7292)) lt!2275560 Nil!63290 (_1!36105 lt!2275548) (_1!36105 lt!2275548))) (Exists!2805 lambda!308209))))

(declare-fun lt!2275610 () Unit!156352)

(declare-fun choose!43169 (Regex!15705 Regex!15705 List!63414) Unit!156352)

(assert (=> d!1801734 (= lt!2275610 (choose!43169 (reg!16034 (regOne!31922 r!7292)) lt!2275560 (_1!36105 lt!2275548)))))

(assert (=> d!1801734 (validRegex!7441 (reg!16034 (regOne!31922 r!7292)))))

(assert (=> d!1801734 (= (lemmaFindConcatSeparationEquivalentToExists!1892 (reg!16034 (regOne!31922 r!7292)) lt!2275560 (_1!36105 lt!2275548)) lt!2275610)))

(declare-fun bs!1334188 () Bool)

(assert (= bs!1334188 d!1801734))

(declare-fun m!6664942 () Bool)

(assert (=> bs!1334188 m!6664942))

(declare-fun m!6664944 () Bool)

(assert (=> bs!1334188 m!6664944))

(declare-fun m!6664946 () Bool)

(assert (=> bs!1334188 m!6664946))

(assert (=> bs!1334188 m!6664570))

(declare-fun m!6664948 () Bool)

(assert (=> bs!1334188 m!6664948))

(assert (=> bs!1334188 m!6664570))

(assert (=> b!5710952 d!1801734))

(declare-fun bs!1334196 () Bool)

(declare-fun d!1801754 () Bool)

(assert (= bs!1334196 (and d!1801754 b!5710952)))

(declare-fun lambda!308225 () Int)

(assert (=> bs!1334196 (not (= lambda!308225 lambda!308179))))

(declare-fun bs!1334197 () Bool)

(assert (= bs!1334197 (and d!1801754 b!5710968)))

(assert (=> bs!1334197 (= (and (= (_1!36105 lt!2275548) s!2326) (= (reg!16034 (regOne!31922 r!7292)) lt!2275560) (= lt!2275560 (regTwo!31922 r!7292))) (= lambda!308225 lambda!308175))))

(declare-fun bs!1334198 () Bool)

(assert (= bs!1334198 (and d!1801754 b!5710970)))

(assert (=> bs!1334198 (not (= lambda!308225 lambda!308173))))

(assert (=> bs!1334196 (= lambda!308225 lambda!308177)))

(assert (=> bs!1334198 (= (and (= (_1!36105 lt!2275548) s!2326) (= (reg!16034 (regOne!31922 r!7292)) (regOne!31922 r!7292)) (= lt!2275560 (regTwo!31922 r!7292))) (= lambda!308225 lambda!308172))))

(assert (=> bs!1334197 (not (= lambda!308225 lambda!308176))))

(assert (=> bs!1334196 (not (= lambda!308225 lambda!308178))))

(declare-fun bs!1334199 () Bool)

(assert (= bs!1334199 (and d!1801754 d!1801734)))

(assert (=> bs!1334199 (= lambda!308225 lambda!308209)))

(assert (=> d!1801754 true))

(assert (=> d!1801754 true))

(assert (=> d!1801754 true))

(declare-fun lambda!308227 () Int)

(assert (=> bs!1334196 (= lambda!308227 lambda!308179)))

(declare-fun bs!1334203 () Bool)

(assert (= bs!1334203 d!1801754))

(assert (=> bs!1334203 (not (= lambda!308227 lambda!308225))))

(assert (=> bs!1334197 (not (= lambda!308227 lambda!308175))))

(assert (=> bs!1334198 (= (and (= (_1!36105 lt!2275548) s!2326) (= (reg!16034 (regOne!31922 r!7292)) (regOne!31922 r!7292)) (= lt!2275560 (regTwo!31922 r!7292))) (= lambda!308227 lambda!308173))))

(assert (=> bs!1334196 (not (= lambda!308227 lambda!308177))))

(assert (=> bs!1334198 (not (= lambda!308227 lambda!308172))))

(assert (=> bs!1334197 (= (and (= (_1!36105 lt!2275548) s!2326) (= (reg!16034 (regOne!31922 r!7292)) lt!2275560) (= lt!2275560 (regTwo!31922 r!7292))) (= lambda!308227 lambda!308176))))

(assert (=> bs!1334196 (not (= lambda!308227 lambda!308178))))

(assert (=> bs!1334199 (not (= lambda!308227 lambda!308209))))

(assert (=> d!1801754 true))

(assert (=> d!1801754 true))

(assert (=> d!1801754 true))

(assert (=> d!1801754 (= (Exists!2805 lambda!308225) (Exists!2805 lambda!308227))))

(declare-fun lt!2275622 () Unit!156352)

(declare-fun choose!43170 (Regex!15705 Regex!15705 List!63414) Unit!156352)

(assert (=> d!1801754 (= lt!2275622 (choose!43170 (reg!16034 (regOne!31922 r!7292)) lt!2275560 (_1!36105 lt!2275548)))))

(assert (=> d!1801754 (validRegex!7441 (reg!16034 (regOne!31922 r!7292)))))

(assert (=> d!1801754 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1434 (reg!16034 (regOne!31922 r!7292)) lt!2275560 (_1!36105 lt!2275548)) lt!2275622)))

(declare-fun m!6665012 () Bool)

(assert (=> bs!1334203 m!6665012))

(declare-fun m!6665016 () Bool)

(assert (=> bs!1334203 m!6665016))

(declare-fun m!6665018 () Bool)

(assert (=> bs!1334203 m!6665018))

(assert (=> bs!1334203 m!6664946))

(assert (=> b!5710952 d!1801754))

(declare-fun d!1801776 () Bool)

(declare-fun choose!43171 (Int) Bool)

(assert (=> d!1801776 (= (Exists!2805 lambda!308177) (choose!43171 lambda!308177))))

(declare-fun bs!1334205 () Bool)

(assert (= bs!1334205 d!1801776))

(declare-fun m!6665030 () Bool)

(assert (=> bs!1334205 m!6665030))

(assert (=> b!5710952 d!1801776))

(declare-fun d!1801782 () Bool)

(declare-fun isEmpty!35162 (Option!15714) Bool)

(assert (=> d!1801782 (= (isDefined!12417 lt!2275529) (not (isEmpty!35162 lt!2275529)))))

(declare-fun bs!1334207 () Bool)

(assert (= bs!1334207 d!1801782))

(declare-fun m!6665044 () Bool)

(assert (=> bs!1334207 m!6665044))

(assert (=> b!5710952 d!1801782))

(declare-fun d!1801788 () Bool)

(assert (=> d!1801788 (= (Exists!2805 lambda!308179) (choose!43171 lambda!308179))))

(declare-fun bs!1334208 () Bool)

(assert (= bs!1334208 d!1801788))

(declare-fun m!6665050 () Bool)

(assert (=> bs!1334208 m!6665050))

(assert (=> b!5710952 d!1801788))

(declare-fun d!1801792 () Bool)

(assert (=> d!1801792 (= (matchR!7890 lt!2275560 (_1!36105 lt!2275548)) (matchRSpec!2808 lt!2275560 (_1!36105 lt!2275548)))))

(declare-fun lt!2275627 () Unit!156352)

(declare-fun choose!43172 (Regex!15705 List!63414) Unit!156352)

(assert (=> d!1801792 (= lt!2275627 (choose!43172 lt!2275560 (_1!36105 lt!2275548)))))

(assert (=> d!1801792 (validRegex!7441 lt!2275560)))

(assert (=> d!1801792 (= (mainMatchTheorem!2808 lt!2275560 (_1!36105 lt!2275548)) lt!2275627)))

(declare-fun bs!1334210 () Bool)

(assert (= bs!1334210 d!1801792))

(assert (=> bs!1334210 m!6664694))

(assert (=> bs!1334210 m!6664568))

(declare-fun m!6665054 () Bool)

(assert (=> bs!1334210 m!6665054))

(declare-fun m!6665056 () Bool)

(assert (=> bs!1334210 m!6665056))

(assert (=> b!5710952 d!1801792))

(declare-fun bs!1334233 () Bool)

(declare-fun d!1801796 () Bool)

(assert (= bs!1334233 (and d!1801796 b!5710952)))

(declare-fun lambda!308234 () Int)

(assert (=> bs!1334233 (not (= lambda!308234 lambda!308179))))

(declare-fun bs!1334234 () Bool)

(assert (= bs!1334234 (and d!1801796 d!1801754)))

(assert (=> bs!1334234 (= (= (Star!15705 (reg!16034 (regOne!31922 r!7292))) lt!2275560) (= lambda!308234 lambda!308225))))

(declare-fun bs!1334235 () Bool)

(assert (= bs!1334235 (and d!1801796 b!5710968)))

(assert (=> bs!1334235 (= (and (= (_1!36105 lt!2275548) s!2326) (= (reg!16034 (regOne!31922 r!7292)) lt!2275560) (= (Star!15705 (reg!16034 (regOne!31922 r!7292))) (regTwo!31922 r!7292))) (= lambda!308234 lambda!308175))))

(declare-fun bs!1334236 () Bool)

(assert (= bs!1334236 (and d!1801796 b!5710970)))

(assert (=> bs!1334236 (not (= lambda!308234 lambda!308173))))

(assert (=> bs!1334233 (= (= (Star!15705 (reg!16034 (regOne!31922 r!7292))) lt!2275560) (= lambda!308234 lambda!308177))))

(assert (=> bs!1334236 (= (and (= (_1!36105 lt!2275548) s!2326) (= (reg!16034 (regOne!31922 r!7292)) (regOne!31922 r!7292)) (= (Star!15705 (reg!16034 (regOne!31922 r!7292))) (regTwo!31922 r!7292))) (= lambda!308234 lambda!308172))))

(assert (=> bs!1334234 (not (= lambda!308234 lambda!308227))))

(assert (=> bs!1334235 (not (= lambda!308234 lambda!308176))))

(assert (=> bs!1334233 (not (= lambda!308234 lambda!308178))))

(declare-fun bs!1334242 () Bool)

(assert (= bs!1334242 (and d!1801796 d!1801734)))

(assert (=> bs!1334242 (= (= (Star!15705 (reg!16034 (regOne!31922 r!7292))) lt!2275560) (= lambda!308234 lambda!308209))))

(assert (=> d!1801796 true))

(assert (=> d!1801796 true))

(declare-fun lambda!308236 () Int)

(assert (=> bs!1334233 (not (= lambda!308236 lambda!308179))))

(assert (=> bs!1334234 (not (= lambda!308236 lambda!308225))))

(assert (=> bs!1334235 (not (= lambda!308236 lambda!308175))))

(assert (=> bs!1334236 (not (= lambda!308236 lambda!308173))))

(assert (=> bs!1334233 (not (= lambda!308236 lambda!308177))))

(assert (=> bs!1334236 (not (= lambda!308236 lambda!308172))))

(assert (=> bs!1334234 (not (= lambda!308236 lambda!308227))))

(declare-fun bs!1334244 () Bool)

(assert (= bs!1334244 d!1801796))

(assert (=> bs!1334244 (not (= lambda!308236 lambda!308234))))

(assert (=> bs!1334235 (not (= lambda!308236 lambda!308176))))

(assert (=> bs!1334233 (= (= (Star!15705 (reg!16034 (regOne!31922 r!7292))) lt!2275560) (= lambda!308236 lambda!308178))))

(assert (=> bs!1334242 (not (= lambda!308236 lambda!308209))))

(assert (=> d!1801796 true))

(assert (=> d!1801796 true))

(assert (=> d!1801796 (= (Exists!2805 lambda!308234) (Exists!2805 lambda!308236))))

(declare-fun lt!2275634 () Unit!156352)

(declare-fun choose!43173 (Regex!15705 List!63414) Unit!156352)

(assert (=> d!1801796 (= lt!2275634 (choose!43173 (reg!16034 (regOne!31922 r!7292)) (_1!36105 lt!2275548)))))

(assert (=> d!1801796 (validRegex!7441 (reg!16034 (regOne!31922 r!7292)))))

(assert (=> d!1801796 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!542 (reg!16034 (regOne!31922 r!7292)) (_1!36105 lt!2275548)) lt!2275634)))

(declare-fun m!6665102 () Bool)

(assert (=> bs!1334244 m!6665102))

(declare-fun m!6665104 () Bool)

(assert (=> bs!1334244 m!6665104))

(declare-fun m!6665106 () Bool)

(assert (=> bs!1334244 m!6665106))

(assert (=> bs!1334244 m!6664946))

(assert (=> b!5710952 d!1801796))

(declare-fun b!5711411 () Bool)

(declare-fun e!3512791 () Bool)

(declare-fun lt!2275639 () List!63414)

(assert (=> b!5711411 (= e!3512791 (or (not (= (_2!36105 lt!2275517) Nil!63290)) (= lt!2275639 (_1!36105 lt!2275517))))))

(declare-fun b!5711408 () Bool)

(declare-fun e!3512792 () List!63414)

(assert (=> b!5711408 (= e!3512792 (_2!36105 lt!2275517))))

(declare-fun b!5711409 () Bool)

(assert (=> b!5711409 (= e!3512792 (Cons!63290 (h!69738 (_1!36105 lt!2275517)) (++!13897 (t!376734 (_1!36105 lt!2275517)) (_2!36105 lt!2275517))))))

(declare-fun d!1801812 () Bool)

(assert (=> d!1801812 e!3512791))

(declare-fun res!2411178 () Bool)

(assert (=> d!1801812 (=> (not res!2411178) (not e!3512791))))

(declare-fun content!11491 (List!63414) (InoxSet C!31680))

(assert (=> d!1801812 (= res!2411178 (= (content!11491 lt!2275639) ((_ map or) (content!11491 (_1!36105 lt!2275517)) (content!11491 (_2!36105 lt!2275517)))))))

(assert (=> d!1801812 (= lt!2275639 e!3512792)))

(declare-fun c!1006743 () Bool)

(assert (=> d!1801812 (= c!1006743 ((_ is Nil!63290) (_1!36105 lt!2275517)))))

(assert (=> d!1801812 (= (++!13897 (_1!36105 lt!2275517) (_2!36105 lt!2275517)) lt!2275639)))

(declare-fun b!5711410 () Bool)

(declare-fun res!2411179 () Bool)

(assert (=> b!5711410 (=> (not res!2411179) (not e!3512791))))

(declare-fun size!40019 (List!63414) Int)

(assert (=> b!5711410 (= res!2411179 (= (size!40019 lt!2275639) (+ (size!40019 (_1!36105 lt!2275517)) (size!40019 (_2!36105 lt!2275517)))))))

(assert (= (and d!1801812 c!1006743) b!5711408))

(assert (= (and d!1801812 (not c!1006743)) b!5711409))

(assert (= (and d!1801812 res!2411178) b!5711410))

(assert (= (and b!5711410 res!2411179) b!5711411))

(declare-fun m!6665114 () Bool)

(assert (=> b!5711409 m!6665114))

(declare-fun m!6665116 () Bool)

(assert (=> d!1801812 m!6665116))

(declare-fun m!6665118 () Bool)

(assert (=> d!1801812 m!6665118))

(declare-fun m!6665120 () Bool)

(assert (=> d!1801812 m!6665120))

(declare-fun m!6665122 () Bool)

(assert (=> b!5711410 m!6665122))

(declare-fun m!6665124 () Bool)

(assert (=> b!5711410 m!6665124))

(declare-fun m!6665126 () Bool)

(assert (=> b!5711410 m!6665126))

(assert (=> b!5710952 d!1801812))

(declare-fun d!1801816 () Bool)

(assert (=> d!1801816 (= (Exists!2805 lambda!308178) (choose!43171 lambda!308178))))

(declare-fun bs!1334245 () Bool)

(assert (= bs!1334245 d!1801816))

(declare-fun m!6665128 () Bool)

(assert (=> bs!1334245 m!6665128))

(assert (=> b!5710952 d!1801816))

(declare-fun b!5711464 () Bool)

(declare-fun e!3512825 () Option!15714)

(assert (=> b!5711464 (= e!3512825 None!15713)))

(declare-fun b!5711465 () Bool)

(declare-fun res!2411208 () Bool)

(declare-fun e!3512823 () Bool)

(assert (=> b!5711465 (=> (not res!2411208) (not e!3512823))))

(declare-fun lt!2275655 () Option!15714)

(assert (=> b!5711465 (= res!2411208 (matchR!7890 lt!2275560 (_2!36105 (get!21817 lt!2275655))))))

(declare-fun b!5711466 () Bool)

(declare-fun e!3512826 () Bool)

(assert (=> b!5711466 (= e!3512826 (matchR!7890 lt!2275560 (_1!36105 lt!2275548)))))

(declare-fun b!5711467 () Bool)

(declare-fun e!3512822 () Option!15714)

(assert (=> b!5711467 (= e!3512822 e!3512825)))

(declare-fun c!1006757 () Bool)

(assert (=> b!5711467 (= c!1006757 ((_ is Nil!63290) (_1!36105 lt!2275548)))))

(declare-fun d!1801820 () Bool)

(declare-fun e!3512824 () Bool)

(assert (=> d!1801820 e!3512824))

(declare-fun res!2411206 () Bool)

(assert (=> d!1801820 (=> res!2411206 e!3512824)))

(assert (=> d!1801820 (= res!2411206 e!3512823)))

(declare-fun res!2411210 () Bool)

(assert (=> d!1801820 (=> (not res!2411210) (not e!3512823))))

(assert (=> d!1801820 (= res!2411210 (isDefined!12417 lt!2275655))))

(assert (=> d!1801820 (= lt!2275655 e!3512822)))

(declare-fun c!1006758 () Bool)

(assert (=> d!1801820 (= c!1006758 e!3512826)))

(declare-fun res!2411209 () Bool)

(assert (=> d!1801820 (=> (not res!2411209) (not e!3512826))))

(assert (=> d!1801820 (= res!2411209 (matchR!7890 (reg!16034 (regOne!31922 r!7292)) Nil!63290))))

(assert (=> d!1801820 (validRegex!7441 (reg!16034 (regOne!31922 r!7292)))))

(assert (=> d!1801820 (= (findConcatSeparation!2128 (reg!16034 (regOne!31922 r!7292)) lt!2275560 Nil!63290 (_1!36105 lt!2275548) (_1!36105 lt!2275548)) lt!2275655)))

(declare-fun b!5711468 () Bool)

(assert (=> b!5711468 (= e!3512823 (= (++!13897 (_1!36105 (get!21817 lt!2275655)) (_2!36105 (get!21817 lt!2275655))) (_1!36105 lt!2275548)))))

(declare-fun b!5711469 () Bool)

(assert (=> b!5711469 (= e!3512824 (not (isDefined!12417 lt!2275655)))))

(declare-fun b!5711470 () Bool)

(assert (=> b!5711470 (= e!3512822 (Some!15713 (tuple2!65605 Nil!63290 (_1!36105 lt!2275548))))))

(declare-fun b!5711471 () Bool)

(declare-fun lt!2275654 () Unit!156352)

(declare-fun lt!2275653 () Unit!156352)

(assert (=> b!5711471 (= lt!2275654 lt!2275653)))

(assert (=> b!5711471 (= (++!13897 (++!13897 Nil!63290 (Cons!63290 (h!69738 (_1!36105 lt!2275548)) Nil!63290)) (t!376734 (_1!36105 lt!2275548))) (_1!36105 lt!2275548))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2062 (List!63414 C!31680 List!63414 List!63414) Unit!156352)

(assert (=> b!5711471 (= lt!2275653 (lemmaMoveElementToOtherListKeepsConcatEq!2062 Nil!63290 (h!69738 (_1!36105 lt!2275548)) (t!376734 (_1!36105 lt!2275548)) (_1!36105 lt!2275548)))))

(assert (=> b!5711471 (= e!3512825 (findConcatSeparation!2128 (reg!16034 (regOne!31922 r!7292)) lt!2275560 (++!13897 Nil!63290 (Cons!63290 (h!69738 (_1!36105 lt!2275548)) Nil!63290)) (t!376734 (_1!36105 lt!2275548)) (_1!36105 lt!2275548)))))

(declare-fun b!5711472 () Bool)

(declare-fun res!2411207 () Bool)

(assert (=> b!5711472 (=> (not res!2411207) (not e!3512823))))

(assert (=> b!5711472 (= res!2411207 (matchR!7890 (reg!16034 (regOne!31922 r!7292)) (_1!36105 (get!21817 lt!2275655))))))

(assert (= (and d!1801820 res!2411209) b!5711466))

(assert (= (and d!1801820 c!1006758) b!5711470))

(assert (= (and d!1801820 (not c!1006758)) b!5711467))

(assert (= (and b!5711467 c!1006757) b!5711464))

(assert (= (and b!5711467 (not c!1006757)) b!5711471))

(assert (= (and d!1801820 res!2411210) b!5711472))

(assert (= (and b!5711472 res!2411207) b!5711465))

(assert (= (and b!5711465 res!2411208) b!5711468))

(assert (= (and d!1801820 (not res!2411206)) b!5711469))

(declare-fun m!6665170 () Bool)

(assert (=> b!5711472 m!6665170))

(declare-fun m!6665172 () Bool)

(assert (=> b!5711472 m!6665172))

(declare-fun m!6665174 () Bool)

(assert (=> d!1801820 m!6665174))

(declare-fun m!6665176 () Bool)

(assert (=> d!1801820 m!6665176))

(assert (=> d!1801820 m!6664946))

(assert (=> b!5711465 m!6665170))

(declare-fun m!6665178 () Bool)

(assert (=> b!5711465 m!6665178))

(assert (=> b!5711466 m!6664694))

(declare-fun m!6665180 () Bool)

(assert (=> b!5711471 m!6665180))

(assert (=> b!5711471 m!6665180))

(declare-fun m!6665182 () Bool)

(assert (=> b!5711471 m!6665182))

(declare-fun m!6665184 () Bool)

(assert (=> b!5711471 m!6665184))

(assert (=> b!5711471 m!6665180))

(declare-fun m!6665186 () Bool)

(assert (=> b!5711471 m!6665186))

(assert (=> b!5711469 m!6665174))

(assert (=> b!5711468 m!6665170))

(declare-fun m!6665188 () Bool)

(assert (=> b!5711468 m!6665188))

(assert (=> b!5710952 d!1801820))

(declare-fun bs!1334307 () Bool)

(declare-fun b!5711568 () Bool)

(assert (= bs!1334307 (and b!5711568 b!5710952)))

(declare-fun lambda!308246 () Int)

(assert (=> bs!1334307 (not (= lambda!308246 lambda!308179))))

(declare-fun bs!1334308 () Bool)

(assert (= bs!1334308 (and b!5711568 d!1801754)))

(assert (=> bs!1334308 (not (= lambda!308246 lambda!308225))))

(declare-fun bs!1334309 () Bool)

(assert (= bs!1334309 (and b!5711568 b!5710968)))

(assert (=> bs!1334309 (not (= lambda!308246 lambda!308175))))

(declare-fun bs!1334310 () Bool)

(assert (= bs!1334310 (and b!5711568 b!5710970)))

(assert (=> bs!1334310 (not (= lambda!308246 lambda!308173))))

(assert (=> bs!1334307 (not (= lambda!308246 lambda!308177))))

(assert (=> bs!1334310 (not (= lambda!308246 lambda!308172))))

(assert (=> bs!1334308 (not (= lambda!308246 lambda!308227))))

(declare-fun bs!1334311 () Bool)

(assert (= bs!1334311 (and b!5711568 d!1801796)))

(assert (=> bs!1334311 (= (and (= (reg!16034 lt!2275560) (reg!16034 (regOne!31922 r!7292))) (= lt!2275560 (Star!15705 (reg!16034 (regOne!31922 r!7292))))) (= lambda!308246 lambda!308236))))

(assert (=> bs!1334311 (not (= lambda!308246 lambda!308234))))

(assert (=> bs!1334309 (not (= lambda!308246 lambda!308176))))

(assert (=> bs!1334307 (= (= (reg!16034 lt!2275560) (reg!16034 (regOne!31922 r!7292))) (= lambda!308246 lambda!308178))))

(declare-fun bs!1334312 () Bool)

(assert (= bs!1334312 (and b!5711568 d!1801734)))

(assert (=> bs!1334312 (not (= lambda!308246 lambda!308209))))

(assert (=> b!5711568 true))

(assert (=> b!5711568 true))

(declare-fun bs!1334313 () Bool)

(declare-fun b!5711561 () Bool)

(assert (= bs!1334313 (and b!5711561 b!5710952)))

(declare-fun lambda!308247 () Int)

(assert (=> bs!1334313 (= (and (= (regOne!31922 lt!2275560) (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 lt!2275560) lt!2275560)) (= lambda!308247 lambda!308179))))

(declare-fun bs!1334314 () Bool)

(assert (= bs!1334314 (and b!5711561 d!1801754)))

(assert (=> bs!1334314 (not (= lambda!308247 lambda!308225))))

(declare-fun bs!1334316 () Bool)

(assert (= bs!1334316 (and b!5711561 b!5710968)))

(assert (=> bs!1334316 (not (= lambda!308247 lambda!308175))))

(declare-fun bs!1334317 () Bool)

(assert (= bs!1334317 (and b!5711561 b!5710970)))

(assert (=> bs!1334317 (= (and (= (_1!36105 lt!2275548) s!2326) (= (regOne!31922 lt!2275560) (regOne!31922 r!7292)) (= (regTwo!31922 lt!2275560) (regTwo!31922 r!7292))) (= lambda!308247 lambda!308173))))

(assert (=> bs!1334313 (not (= lambda!308247 lambda!308177))))

(declare-fun bs!1334321 () Bool)

(assert (= bs!1334321 (and b!5711561 b!5711568)))

(assert (=> bs!1334321 (not (= lambda!308247 lambda!308246))))

(assert (=> bs!1334317 (not (= lambda!308247 lambda!308172))))

(assert (=> bs!1334314 (= (and (= (regOne!31922 lt!2275560) (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 lt!2275560) lt!2275560)) (= lambda!308247 lambda!308227))))

(declare-fun bs!1334322 () Bool)

(assert (= bs!1334322 (and b!5711561 d!1801796)))

(assert (=> bs!1334322 (not (= lambda!308247 lambda!308236))))

(assert (=> bs!1334322 (not (= lambda!308247 lambda!308234))))

(assert (=> bs!1334316 (= (and (= (_1!36105 lt!2275548) s!2326) (= (regOne!31922 lt!2275560) lt!2275560) (= (regTwo!31922 lt!2275560) (regTwo!31922 r!7292))) (= lambda!308247 lambda!308176))))

(assert (=> bs!1334313 (not (= lambda!308247 lambda!308178))))

(declare-fun bs!1334323 () Bool)

(assert (= bs!1334323 (and b!5711561 d!1801734)))

(assert (=> bs!1334323 (not (= lambda!308247 lambda!308209))))

(assert (=> b!5711561 true))

(assert (=> b!5711561 true))

(declare-fun e!3512877 () Bool)

(declare-fun call!435990 () Bool)

(assert (=> b!5711561 (= e!3512877 call!435990)))

(declare-fun b!5711562 () Bool)

(declare-fun e!3512879 () Bool)

(assert (=> b!5711562 (= e!3512879 (matchRSpec!2808 (regTwo!31923 lt!2275560) (_1!36105 lt!2275548)))))

(declare-fun bm!435984 () Bool)

(declare-fun call!435989 () Bool)

(assert (=> bm!435984 (= call!435989 (isEmpty!35158 (_1!36105 lt!2275548)))))

(declare-fun d!1801836 () Bool)

(declare-fun c!1006777 () Bool)

(assert (=> d!1801836 (= c!1006777 ((_ is EmptyExpr!15705) lt!2275560))))

(declare-fun e!3512878 () Bool)

(assert (=> d!1801836 (= (matchRSpec!2808 lt!2275560 (_1!36105 lt!2275548)) e!3512878)))

(declare-fun b!5711563 () Bool)

(declare-fun c!1006775 () Bool)

(assert (=> b!5711563 (= c!1006775 ((_ is ElementMatch!15705) lt!2275560))))

(declare-fun e!3512873 () Bool)

(declare-fun e!3512875 () Bool)

(assert (=> b!5711563 (= e!3512873 e!3512875)))

(declare-fun b!5711564 () Bool)

(assert (=> b!5711564 (= e!3512878 e!3512873)))

(declare-fun res!2411247 () Bool)

(assert (=> b!5711564 (= res!2411247 (not ((_ is EmptyLang!15705) lt!2275560)))))

(assert (=> b!5711564 (=> (not res!2411247) (not e!3512873))))

(declare-fun b!5711565 () Bool)

(assert (=> b!5711565 (= e!3512875 (= (_1!36105 lt!2275548) (Cons!63290 (c!1006621 lt!2275560) Nil!63290)))))

(declare-fun b!5711566 () Bool)

(declare-fun e!3512876 () Bool)

(assert (=> b!5711566 (= e!3512876 e!3512879)))

(declare-fun res!2411246 () Bool)

(assert (=> b!5711566 (= res!2411246 (matchRSpec!2808 (regOne!31923 lt!2275560) (_1!36105 lt!2275548)))))

(assert (=> b!5711566 (=> res!2411246 e!3512879)))

(declare-fun b!5711567 () Bool)

(assert (=> b!5711567 (= e!3512876 e!3512877)))

(declare-fun c!1006776 () Bool)

(assert (=> b!5711567 (= c!1006776 ((_ is Star!15705) lt!2275560))))

(declare-fun e!3512874 () Bool)

(assert (=> b!5711568 (= e!3512874 call!435990)))

(declare-fun b!5711569 () Bool)

(declare-fun c!1006778 () Bool)

(assert (=> b!5711569 (= c!1006778 ((_ is Union!15705) lt!2275560))))

(assert (=> b!5711569 (= e!3512875 e!3512876)))

(declare-fun bm!435985 () Bool)

(assert (=> bm!435985 (= call!435990 (Exists!2805 (ite c!1006776 lambda!308246 lambda!308247)))))

(declare-fun b!5711570 () Bool)

(declare-fun res!2411248 () Bool)

(assert (=> b!5711570 (=> res!2411248 e!3512874)))

(assert (=> b!5711570 (= res!2411248 call!435989)))

(assert (=> b!5711570 (= e!3512877 e!3512874)))

(declare-fun b!5711571 () Bool)

(assert (=> b!5711571 (= e!3512878 call!435989)))

(assert (= (and d!1801836 c!1006777) b!5711571))

(assert (= (and d!1801836 (not c!1006777)) b!5711564))

(assert (= (and b!5711564 res!2411247) b!5711563))

(assert (= (and b!5711563 c!1006775) b!5711565))

(assert (= (and b!5711563 (not c!1006775)) b!5711569))

(assert (= (and b!5711569 c!1006778) b!5711566))

(assert (= (and b!5711569 (not c!1006778)) b!5711567))

(assert (= (and b!5711566 (not res!2411246)) b!5711562))

(assert (= (and b!5711567 c!1006776) b!5711570))

(assert (= (and b!5711567 (not c!1006776)) b!5711561))

(assert (= (and b!5711570 (not res!2411248)) b!5711568))

(assert (= (or b!5711568 b!5711561) bm!435985))

(assert (= (or b!5711571 b!5711570) bm!435984))

(declare-fun m!6665246 () Bool)

(assert (=> b!5711562 m!6665246))

(assert (=> bm!435984 m!6664650))

(declare-fun m!6665248 () Bool)

(assert (=> b!5711566 m!6665248))

(declare-fun m!6665250 () Bool)

(assert (=> bm!435985 m!6665250))

(assert (=> b!5710952 d!1801836))

(declare-fun d!1801860 () Bool)

(declare-fun lambda!308250 () Int)

(declare-fun forall!14844 (List!63415 Int) Bool)

(assert (=> d!1801860 (= (inv!82509 (h!69740 zl!343)) (forall!14844 (exprs!5589 (h!69740 zl!343)) lambda!308250))))

(declare-fun bs!1334324 () Bool)

(assert (= bs!1334324 d!1801860))

(declare-fun m!6665252 () Bool)

(assert (=> bs!1334324 m!6665252))

(assert (=> b!5710972 d!1801860))

(declare-fun b!5711633 () Bool)

(declare-fun e!3512911 () Bool)

(declare-fun head!12098 (List!63414) C!31680)

(assert (=> b!5711633 (= e!3512911 (= (head!12098 (_2!36105 lt!2275548)) (c!1006621 (regTwo!31922 r!7292))))))

(declare-fun b!5711634 () Bool)

(declare-fun e!3512913 () Bool)

(declare-fun lt!2275664 () Bool)

(declare-fun call!435993 () Bool)

(assert (=> b!5711634 (= e!3512913 (= lt!2275664 call!435993))))

(declare-fun b!5711635 () Bool)

(declare-fun e!3512910 () Bool)

(assert (=> b!5711635 (= e!3512910 (nullable!5737 (regTwo!31922 r!7292)))))

(declare-fun b!5711636 () Bool)

(declare-fun res!2411267 () Bool)

(assert (=> b!5711636 (=> (not res!2411267) (not e!3512911))))

(declare-fun tail!11193 (List!63414) List!63414)

(assert (=> b!5711636 (= res!2411267 (isEmpty!35158 (tail!11193 (_2!36105 lt!2275548))))))

(declare-fun b!5711637 () Bool)

(declare-fun res!2411269 () Bool)

(declare-fun e!3512909 () Bool)

(assert (=> b!5711637 (=> res!2411269 e!3512909)))

(assert (=> b!5711637 (= res!2411269 e!3512911)))

(declare-fun res!2411266 () Bool)

(assert (=> b!5711637 (=> (not res!2411266) (not e!3512911))))

(assert (=> b!5711637 (= res!2411266 lt!2275664)))

(declare-fun b!5711638 () Bool)

(declare-fun e!3512908 () Bool)

(assert (=> b!5711638 (= e!3512913 e!3512908)))

(declare-fun c!1006785 () Bool)

(assert (=> b!5711638 (= c!1006785 ((_ is EmptyLang!15705) (regTwo!31922 r!7292)))))

(declare-fun b!5711639 () Bool)

(declare-fun res!2411265 () Bool)

(assert (=> b!5711639 (=> (not res!2411265) (not e!3512911))))

(assert (=> b!5711639 (= res!2411265 (not call!435993))))

(declare-fun b!5711640 () Bool)

(declare-fun e!3512914 () Bool)

(assert (=> b!5711640 (= e!3512909 e!3512914)))

(declare-fun res!2411270 () Bool)

(assert (=> b!5711640 (=> (not res!2411270) (not e!3512914))))

(assert (=> b!5711640 (= res!2411270 (not lt!2275664))))

(declare-fun b!5711641 () Bool)

(declare-fun res!2411271 () Bool)

(assert (=> b!5711641 (=> res!2411271 e!3512909)))

(assert (=> b!5711641 (= res!2411271 (not ((_ is ElementMatch!15705) (regTwo!31922 r!7292))))))

(assert (=> b!5711641 (= e!3512908 e!3512909)))

(declare-fun b!5711642 () Bool)

(declare-fun e!3512912 () Bool)

(assert (=> b!5711642 (= e!3512914 e!3512912)))

(declare-fun res!2411268 () Bool)

(assert (=> b!5711642 (=> res!2411268 e!3512912)))

(assert (=> b!5711642 (= res!2411268 call!435993)))

(declare-fun d!1801862 () Bool)

(assert (=> d!1801862 e!3512913))

(declare-fun c!1006786 () Bool)

(assert (=> d!1801862 (= c!1006786 ((_ is EmptyExpr!15705) (regTwo!31922 r!7292)))))

(assert (=> d!1801862 (= lt!2275664 e!3512910)))

(declare-fun c!1006787 () Bool)

(assert (=> d!1801862 (= c!1006787 (isEmpty!35158 (_2!36105 lt!2275548)))))

(assert (=> d!1801862 (validRegex!7441 (regTwo!31922 r!7292))))

(assert (=> d!1801862 (= (matchR!7890 (regTwo!31922 r!7292) (_2!36105 lt!2275548)) lt!2275664)))

(declare-fun bm!435988 () Bool)

(assert (=> bm!435988 (= call!435993 (isEmpty!35158 (_2!36105 lt!2275548)))))

(declare-fun b!5711643 () Bool)

(declare-fun derivativeStep!4511 (Regex!15705 C!31680) Regex!15705)

(assert (=> b!5711643 (= e!3512910 (matchR!7890 (derivativeStep!4511 (regTwo!31922 r!7292) (head!12098 (_2!36105 lt!2275548))) (tail!11193 (_2!36105 lt!2275548))))))

(declare-fun b!5711644 () Bool)

(assert (=> b!5711644 (= e!3512912 (not (= (head!12098 (_2!36105 lt!2275548)) (c!1006621 (regTwo!31922 r!7292)))))))

(declare-fun b!5711645 () Bool)

(assert (=> b!5711645 (= e!3512908 (not lt!2275664))))

(declare-fun b!5711646 () Bool)

(declare-fun res!2411272 () Bool)

(assert (=> b!5711646 (=> res!2411272 e!3512912)))

(assert (=> b!5711646 (= res!2411272 (not (isEmpty!35158 (tail!11193 (_2!36105 lt!2275548)))))))

(assert (= (and d!1801862 c!1006787) b!5711635))

(assert (= (and d!1801862 (not c!1006787)) b!5711643))

(assert (= (and d!1801862 c!1006786) b!5711634))

(assert (= (and d!1801862 (not c!1006786)) b!5711638))

(assert (= (and b!5711638 c!1006785) b!5711645))

(assert (= (and b!5711638 (not c!1006785)) b!5711641))

(assert (= (and b!5711641 (not res!2411271)) b!5711637))

(assert (= (and b!5711637 res!2411266) b!5711639))

(assert (= (and b!5711639 res!2411265) b!5711636))

(assert (= (and b!5711636 res!2411267) b!5711633))

(assert (= (and b!5711637 (not res!2411269)) b!5711640))

(assert (= (and b!5711640 res!2411270) b!5711642))

(assert (= (and b!5711642 (not res!2411268)) b!5711646))

(assert (= (and b!5711646 (not res!2411272)) b!5711644))

(assert (= (or b!5711634 b!5711639 b!5711642) bm!435988))

(declare-fun m!6665254 () Bool)

(assert (=> d!1801862 m!6665254))

(declare-fun m!6665256 () Bool)

(assert (=> d!1801862 m!6665256))

(assert (=> bm!435988 m!6665254))

(declare-fun m!6665258 () Bool)

(assert (=> b!5711644 m!6665258))

(declare-fun m!6665260 () Bool)

(assert (=> b!5711635 m!6665260))

(assert (=> b!5711633 m!6665258))

(declare-fun m!6665262 () Bool)

(assert (=> b!5711646 m!6665262))

(assert (=> b!5711646 m!6665262))

(declare-fun m!6665264 () Bool)

(assert (=> b!5711646 m!6665264))

(assert (=> b!5711643 m!6665258))

(assert (=> b!5711643 m!6665258))

(declare-fun m!6665266 () Bool)

(assert (=> b!5711643 m!6665266))

(assert (=> b!5711643 m!6665262))

(assert (=> b!5711643 m!6665266))

(assert (=> b!5711643 m!6665262))

(declare-fun m!6665268 () Bool)

(assert (=> b!5711643 m!6665268))

(assert (=> b!5711636 m!6665262))

(assert (=> b!5711636 m!6665262))

(assert (=> b!5711636 m!6665264))

(assert (=> b!5710953 d!1801862))

(declare-fun d!1801864 () Bool)

(declare-fun e!3512917 () Bool)

(assert (=> d!1801864 (= (matchZipper!1843 ((_ map or) lt!2275534 lt!2275547) (t!376734 s!2326)) e!3512917)))

(declare-fun res!2411275 () Bool)

(assert (=> d!1801864 (=> res!2411275 e!3512917)))

(assert (=> d!1801864 (= res!2411275 (matchZipper!1843 lt!2275534 (t!376734 s!2326)))))

(declare-fun lt!2275667 () Unit!156352)

(declare-fun choose!43174 ((InoxSet Context!10178) (InoxSet Context!10178) List!63414) Unit!156352)

(assert (=> d!1801864 (= lt!2275667 (choose!43174 lt!2275534 lt!2275547 (t!376734 s!2326)))))

(assert (=> d!1801864 (= (lemmaZipperConcatMatchesSameAsBothZippers!730 lt!2275534 lt!2275547 (t!376734 s!2326)) lt!2275667)))

(declare-fun b!5711649 () Bool)

(assert (=> b!5711649 (= e!3512917 (matchZipper!1843 lt!2275547 (t!376734 s!2326)))))

(assert (= (and d!1801864 (not res!2411275)) b!5711649))

(assert (=> d!1801864 m!6664672))

(assert (=> d!1801864 m!6664670))

(declare-fun m!6665270 () Bool)

(assert (=> d!1801864 m!6665270))

(assert (=> b!5711649 m!6664652))

(assert (=> b!5710954 d!1801864))

(declare-fun d!1801866 () Bool)

(declare-fun c!1006790 () Bool)

(assert (=> d!1801866 (= c!1006790 (isEmpty!35158 (t!376734 s!2326)))))

(declare-fun e!3512920 () Bool)

(assert (=> d!1801866 (= (matchZipper!1843 lt!2275534 (t!376734 s!2326)) e!3512920)))

(declare-fun b!5711654 () Bool)

(declare-fun nullableZipper!1659 ((InoxSet Context!10178)) Bool)

(assert (=> b!5711654 (= e!3512920 (nullableZipper!1659 lt!2275534))))

(declare-fun b!5711655 () Bool)

(assert (=> b!5711655 (= e!3512920 (matchZipper!1843 (derivationStepZipper!1788 lt!2275534 (head!12098 (t!376734 s!2326))) (tail!11193 (t!376734 s!2326))))))

(assert (= (and d!1801866 c!1006790) b!5711654))

(assert (= (and d!1801866 (not c!1006790)) b!5711655))

(declare-fun m!6665272 () Bool)

(assert (=> d!1801866 m!6665272))

(declare-fun m!6665274 () Bool)

(assert (=> b!5711654 m!6665274))

(declare-fun m!6665276 () Bool)

(assert (=> b!5711655 m!6665276))

(assert (=> b!5711655 m!6665276))

(declare-fun m!6665278 () Bool)

(assert (=> b!5711655 m!6665278))

(declare-fun m!6665280 () Bool)

(assert (=> b!5711655 m!6665280))

(assert (=> b!5711655 m!6665278))

(assert (=> b!5711655 m!6665280))

(declare-fun m!6665282 () Bool)

(assert (=> b!5711655 m!6665282))

(assert (=> b!5710954 d!1801866))

(declare-fun d!1801868 () Bool)

(declare-fun c!1006791 () Bool)

(assert (=> d!1801868 (= c!1006791 (isEmpty!35158 (t!376734 s!2326)))))

(declare-fun e!3512921 () Bool)

(assert (=> d!1801868 (= (matchZipper!1843 ((_ map or) lt!2275534 lt!2275547) (t!376734 s!2326)) e!3512921)))

(declare-fun b!5711656 () Bool)

(assert (=> b!5711656 (= e!3512921 (nullableZipper!1659 ((_ map or) lt!2275534 lt!2275547)))))

(declare-fun b!5711657 () Bool)

(assert (=> b!5711657 (= e!3512921 (matchZipper!1843 (derivationStepZipper!1788 ((_ map or) lt!2275534 lt!2275547) (head!12098 (t!376734 s!2326))) (tail!11193 (t!376734 s!2326))))))

(assert (= (and d!1801868 c!1006791) b!5711656))

(assert (= (and d!1801868 (not c!1006791)) b!5711657))

(assert (=> d!1801868 m!6665272))

(declare-fun m!6665284 () Bool)

(assert (=> b!5711656 m!6665284))

(assert (=> b!5711657 m!6665276))

(assert (=> b!5711657 m!6665276))

(declare-fun m!6665286 () Bool)

(assert (=> b!5711657 m!6665286))

(assert (=> b!5711657 m!6665280))

(assert (=> b!5711657 m!6665286))

(assert (=> b!5711657 m!6665280))

(declare-fun m!6665288 () Bool)

(assert (=> b!5711657 m!6665288))

(assert (=> b!5710954 d!1801868))

(declare-fun bs!1334325 () Bool)

(declare-fun d!1801870 () Bool)

(assert (= bs!1334325 (and d!1801870 d!1801860)))

(declare-fun lambda!308253 () Int)

(assert (=> bs!1334325 (= lambda!308253 lambda!308250)))

(declare-fun e!3512939 () Bool)

(assert (=> d!1801870 e!3512939))

(declare-fun res!2411280 () Bool)

(assert (=> d!1801870 (=> (not res!2411280) (not e!3512939))))

(declare-fun lt!2275670 () Regex!15705)

(assert (=> d!1801870 (= res!2411280 (validRegex!7441 lt!2275670))))

(declare-fun e!3512935 () Regex!15705)

(assert (=> d!1801870 (= lt!2275670 e!3512935)))

(declare-fun c!1006800 () Bool)

(declare-fun e!3512936 () Bool)

(assert (=> d!1801870 (= c!1006800 e!3512936)))

(declare-fun res!2411281 () Bool)

(assert (=> d!1801870 (=> (not res!2411281) (not e!3512936))))

(assert (=> d!1801870 (= res!2411281 ((_ is Cons!63291) (unfocusZipperList!1133 zl!343)))))

(assert (=> d!1801870 (forall!14844 (unfocusZipperList!1133 zl!343) lambda!308253)))

(assert (=> d!1801870 (= (generalisedUnion!1568 (unfocusZipperList!1133 zl!343)) lt!2275670)))

(declare-fun b!5711678 () Bool)

(declare-fun e!3512937 () Bool)

(declare-fun isUnion!658 (Regex!15705) Bool)

(assert (=> b!5711678 (= e!3512937 (isUnion!658 lt!2275670))))

(declare-fun b!5711679 () Bool)

(declare-fun head!12099 (List!63415) Regex!15705)

(assert (=> b!5711679 (= e!3512937 (= lt!2275670 (head!12099 (unfocusZipperList!1133 zl!343))))))

(declare-fun b!5711680 () Bool)

(declare-fun e!3512934 () Regex!15705)

(assert (=> b!5711680 (= e!3512934 EmptyLang!15705)))

(declare-fun b!5711681 () Bool)

(assert (=> b!5711681 (= e!3512936 (isEmpty!35160 (t!376735 (unfocusZipperList!1133 zl!343))))))

(declare-fun b!5711682 () Bool)

(declare-fun e!3512938 () Bool)

(declare-fun isEmptyLang!1228 (Regex!15705) Bool)

(assert (=> b!5711682 (= e!3512938 (isEmptyLang!1228 lt!2275670))))

(declare-fun b!5711683 () Bool)

(assert (=> b!5711683 (= e!3512939 e!3512938)))

(declare-fun c!1006803 () Bool)

(assert (=> b!5711683 (= c!1006803 (isEmpty!35160 (unfocusZipperList!1133 zl!343)))))

(declare-fun b!5711684 () Bool)

(assert (=> b!5711684 (= e!3512935 e!3512934)))

(declare-fun c!1006802 () Bool)

(assert (=> b!5711684 (= c!1006802 ((_ is Cons!63291) (unfocusZipperList!1133 zl!343)))))

(declare-fun b!5711685 () Bool)

(assert (=> b!5711685 (= e!3512938 e!3512937)))

(declare-fun c!1006801 () Bool)

(declare-fun tail!11194 (List!63415) List!63415)

(assert (=> b!5711685 (= c!1006801 (isEmpty!35160 (tail!11194 (unfocusZipperList!1133 zl!343))))))

(declare-fun b!5711686 () Bool)

(assert (=> b!5711686 (= e!3512934 (Union!15705 (h!69739 (unfocusZipperList!1133 zl!343)) (generalisedUnion!1568 (t!376735 (unfocusZipperList!1133 zl!343)))))))

(declare-fun b!5711687 () Bool)

(assert (=> b!5711687 (= e!3512935 (h!69739 (unfocusZipperList!1133 zl!343)))))

(assert (= (and d!1801870 res!2411281) b!5711681))

(assert (= (and d!1801870 c!1006800) b!5711687))

(assert (= (and d!1801870 (not c!1006800)) b!5711684))

(assert (= (and b!5711684 c!1006802) b!5711686))

(assert (= (and b!5711684 (not c!1006802)) b!5711680))

(assert (= (and d!1801870 res!2411280) b!5711683))

(assert (= (and b!5711683 c!1006803) b!5711682))

(assert (= (and b!5711683 (not c!1006803)) b!5711685))

(assert (= (and b!5711685 c!1006801) b!5711679))

(assert (= (and b!5711685 (not c!1006801)) b!5711678))

(assert (=> b!5711685 m!6664600))

(declare-fun m!6665290 () Bool)

(assert (=> b!5711685 m!6665290))

(assert (=> b!5711685 m!6665290))

(declare-fun m!6665292 () Bool)

(assert (=> b!5711685 m!6665292))

(declare-fun m!6665294 () Bool)

(assert (=> b!5711681 m!6665294))

(declare-fun m!6665296 () Bool)

(assert (=> b!5711682 m!6665296))

(assert (=> b!5711679 m!6664600))

(declare-fun m!6665298 () Bool)

(assert (=> b!5711679 m!6665298))

(assert (=> b!5711683 m!6664600))

(declare-fun m!6665300 () Bool)

(assert (=> b!5711683 m!6665300))

(declare-fun m!6665302 () Bool)

(assert (=> b!5711686 m!6665302))

(declare-fun m!6665304 () Bool)

(assert (=> b!5711678 m!6665304))

(declare-fun m!6665306 () Bool)

(assert (=> d!1801870 m!6665306))

(assert (=> d!1801870 m!6664600))

(declare-fun m!6665308 () Bool)

(assert (=> d!1801870 m!6665308))

(assert (=> b!5710956 d!1801870))

(declare-fun bs!1334326 () Bool)

(declare-fun d!1801872 () Bool)

(assert (= bs!1334326 (and d!1801872 d!1801860)))

(declare-fun lambda!308256 () Int)

(assert (=> bs!1334326 (= lambda!308256 lambda!308250)))

(declare-fun bs!1334327 () Bool)

(assert (= bs!1334327 (and d!1801872 d!1801870)))

(assert (=> bs!1334327 (= lambda!308256 lambda!308253)))

(declare-fun lt!2275673 () List!63415)

(assert (=> d!1801872 (forall!14844 lt!2275673 lambda!308256)))

(declare-fun e!3512942 () List!63415)

(assert (=> d!1801872 (= lt!2275673 e!3512942)))

(declare-fun c!1006806 () Bool)

(assert (=> d!1801872 (= c!1006806 ((_ is Cons!63292) zl!343))))

(assert (=> d!1801872 (= (unfocusZipperList!1133 zl!343) lt!2275673)))

(declare-fun b!5711692 () Bool)

(assert (=> b!5711692 (= e!3512942 (Cons!63291 (generalisedConcat!1320 (exprs!5589 (h!69740 zl!343))) (unfocusZipperList!1133 (t!376736 zl!343))))))

(declare-fun b!5711693 () Bool)

(assert (=> b!5711693 (= e!3512942 Nil!63291)))

(assert (= (and d!1801872 c!1006806) b!5711692))

(assert (= (and d!1801872 (not c!1006806)) b!5711693))

(declare-fun m!6665310 () Bool)

(assert (=> d!1801872 m!6665310))

(assert (=> b!5711692 m!6664548))

(declare-fun m!6665312 () Bool)

(assert (=> b!5711692 m!6665312))

(assert (=> b!5710956 d!1801872))

(declare-fun d!1801874 () Bool)

(declare-fun lt!2275676 () Regex!15705)

(assert (=> d!1801874 (validRegex!7441 lt!2275676)))

(assert (=> d!1801874 (= lt!2275676 (generalisedUnion!1568 (unfocusZipperList!1133 (Cons!63292 lt!2275533 Nil!63292))))))

(assert (=> d!1801874 (= (unfocusZipper!1447 (Cons!63292 lt!2275533 Nil!63292)) lt!2275676)))

(declare-fun bs!1334328 () Bool)

(assert (= bs!1334328 d!1801874))

(declare-fun m!6665314 () Bool)

(assert (=> bs!1334328 m!6665314))

(declare-fun m!6665316 () Bool)

(assert (=> bs!1334328 m!6665316))

(assert (=> bs!1334328 m!6665316))

(declare-fun m!6665318 () Bool)

(assert (=> bs!1334328 m!6665318))

(assert (=> b!5710957 d!1801874))

(declare-fun bs!1334329 () Bool)

(declare-fun d!1801876 () Bool)

(assert (= bs!1334329 (and d!1801876 d!1801860)))

(declare-fun lambda!308257 () Int)

(assert (=> bs!1334329 (= lambda!308257 lambda!308250)))

(declare-fun bs!1334330 () Bool)

(assert (= bs!1334330 (and d!1801876 d!1801870)))

(assert (=> bs!1334330 (= lambda!308257 lambda!308253)))

(declare-fun bs!1334331 () Bool)

(assert (= bs!1334331 (and d!1801876 d!1801872)))

(assert (=> bs!1334331 (= lambda!308257 lambda!308256)))

(assert (=> d!1801876 (= (inv!82509 setElem!38243) (forall!14844 (exprs!5589 setElem!38243) lambda!308257))))

(declare-fun bs!1334332 () Bool)

(assert (= bs!1334332 d!1801876))

(declare-fun m!6665320 () Bool)

(assert (=> bs!1334332 m!6665320))

(assert (=> setNonEmpty!38243 d!1801876))

(declare-fun d!1801878 () Bool)

(declare-fun e!3512945 () Bool)

(assert (=> d!1801878 e!3512945))

(declare-fun res!2411284 () Bool)

(assert (=> d!1801878 (=> (not res!2411284) (not e!3512945))))

(declare-fun lt!2275679 () List!63416)

(declare-fun noDuplicate!1639 (List!63416) Bool)

(assert (=> d!1801878 (= res!2411284 (noDuplicate!1639 lt!2275679))))

(declare-fun choose!43175 ((InoxSet Context!10178)) List!63416)

(assert (=> d!1801878 (= lt!2275679 (choose!43175 z!1189))))

(assert (=> d!1801878 (= (toList!9489 z!1189) lt!2275679)))

(declare-fun b!5711696 () Bool)

(declare-fun content!11492 (List!63416) (InoxSet Context!10178))

(assert (=> b!5711696 (= e!3512945 (= (content!11492 lt!2275679) z!1189))))

(assert (= (and d!1801878 res!2411284) b!5711696))

(declare-fun m!6665322 () Bool)

(assert (=> d!1801878 m!6665322))

(declare-fun m!6665324 () Bool)

(assert (=> d!1801878 m!6665324))

(declare-fun m!6665326 () Bool)

(assert (=> b!5711696 m!6665326))

(assert (=> b!5710947 d!1801878))

(declare-fun bs!1334333 () Bool)

(declare-fun d!1801880 () Bool)

(assert (= bs!1334333 (and d!1801880 b!5710952)))

(declare-fun lambda!308258 () Int)

(assert (=> bs!1334333 (not (= lambda!308258 lambda!308179))))

(declare-fun bs!1334334 () Bool)

(assert (= bs!1334334 (and d!1801880 d!1801754)))

(assert (=> bs!1334334 (= (and (= s!2326 (_1!36105 lt!2275548)) (= lt!2275560 (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308258 lambda!308225))))

(declare-fun bs!1334335 () Bool)

(assert (= bs!1334335 (and d!1801880 b!5711561)))

(assert (=> bs!1334335 (not (= lambda!308258 lambda!308247))))

(declare-fun bs!1334336 () Bool)

(assert (= bs!1334336 (and d!1801880 b!5710968)))

(assert (=> bs!1334336 (= lambda!308258 lambda!308175)))

(declare-fun bs!1334337 () Bool)

(assert (= bs!1334337 (and d!1801880 b!5710970)))

(assert (=> bs!1334337 (not (= lambda!308258 lambda!308173))))

(assert (=> bs!1334333 (= (and (= s!2326 (_1!36105 lt!2275548)) (= lt!2275560 (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308258 lambda!308177))))

(declare-fun bs!1334338 () Bool)

(assert (= bs!1334338 (and d!1801880 b!5711568)))

(assert (=> bs!1334338 (not (= lambda!308258 lambda!308246))))

(assert (=> bs!1334337 (= (= lt!2275560 (regOne!31922 r!7292)) (= lambda!308258 lambda!308172))))

(assert (=> bs!1334334 (not (= lambda!308258 lambda!308227))))

(declare-fun bs!1334339 () Bool)

(assert (= bs!1334339 (and d!1801880 d!1801796)))

(assert (=> bs!1334339 (not (= lambda!308258 lambda!308236))))

(assert (=> bs!1334339 (= (and (= s!2326 (_1!36105 lt!2275548)) (= lt!2275560 (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) (Star!15705 (reg!16034 (regOne!31922 r!7292))))) (= lambda!308258 lambda!308234))))

(assert (=> bs!1334336 (not (= lambda!308258 lambda!308176))))

(assert (=> bs!1334333 (not (= lambda!308258 lambda!308178))))

(declare-fun bs!1334340 () Bool)

(assert (= bs!1334340 (and d!1801880 d!1801734)))

(assert (=> bs!1334340 (= (and (= s!2326 (_1!36105 lt!2275548)) (= lt!2275560 (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308258 lambda!308209))))

(assert (=> d!1801880 true))

(assert (=> d!1801880 true))

(assert (=> d!1801880 true))

(assert (=> d!1801880 (= (isDefined!12417 (findConcatSeparation!2128 lt!2275560 (regTwo!31922 r!7292) Nil!63290 s!2326 s!2326)) (Exists!2805 lambda!308258))))

(declare-fun lt!2275680 () Unit!156352)

(assert (=> d!1801880 (= lt!2275680 (choose!43169 lt!2275560 (regTwo!31922 r!7292) s!2326))))

(assert (=> d!1801880 (validRegex!7441 lt!2275560)))

(assert (=> d!1801880 (= (lemmaFindConcatSeparationEquivalentToExists!1892 lt!2275560 (regTwo!31922 r!7292) s!2326) lt!2275680)))

(declare-fun bs!1334341 () Bool)

(assert (= bs!1334341 d!1801880))

(declare-fun m!6665328 () Bool)

(assert (=> bs!1334341 m!6665328))

(declare-fun m!6665330 () Bool)

(assert (=> bs!1334341 m!6665330))

(assert (=> bs!1334341 m!6665056))

(assert (=> bs!1334341 m!6664610))

(declare-fun m!6665332 () Bool)

(assert (=> bs!1334341 m!6665332))

(assert (=> bs!1334341 m!6664610))

(assert (=> b!5710968 d!1801880))

(declare-fun d!1801882 () Bool)

(assert (=> d!1801882 (= (isDefined!12417 lt!2275559) (not (isEmpty!35162 lt!2275559)))))

(declare-fun bs!1334342 () Bool)

(assert (= bs!1334342 d!1801882))

(declare-fun m!6665334 () Bool)

(assert (=> bs!1334342 m!6665334))

(assert (=> b!5710968 d!1801882))

(declare-fun b!5711697 () Bool)

(declare-fun e!3512949 () Option!15714)

(assert (=> b!5711697 (= e!3512949 None!15713)))

(declare-fun b!5711698 () Bool)

(declare-fun res!2411287 () Bool)

(declare-fun e!3512947 () Bool)

(assert (=> b!5711698 (=> (not res!2411287) (not e!3512947))))

(declare-fun lt!2275683 () Option!15714)

(assert (=> b!5711698 (= res!2411287 (matchR!7890 (regTwo!31922 r!7292) (_2!36105 (get!21817 lt!2275683))))))

(declare-fun b!5711699 () Bool)

(declare-fun e!3512950 () Bool)

(assert (=> b!5711699 (= e!3512950 (matchR!7890 (regTwo!31922 r!7292) s!2326))))

(declare-fun b!5711700 () Bool)

(declare-fun e!3512946 () Option!15714)

(assert (=> b!5711700 (= e!3512946 e!3512949)))

(declare-fun c!1006807 () Bool)

(assert (=> b!5711700 (= c!1006807 ((_ is Nil!63290) s!2326))))

(declare-fun d!1801884 () Bool)

(declare-fun e!3512948 () Bool)

(assert (=> d!1801884 e!3512948))

(declare-fun res!2411285 () Bool)

(assert (=> d!1801884 (=> res!2411285 e!3512948)))

(assert (=> d!1801884 (= res!2411285 e!3512947)))

(declare-fun res!2411289 () Bool)

(assert (=> d!1801884 (=> (not res!2411289) (not e!3512947))))

(assert (=> d!1801884 (= res!2411289 (isDefined!12417 lt!2275683))))

(assert (=> d!1801884 (= lt!2275683 e!3512946)))

(declare-fun c!1006808 () Bool)

(assert (=> d!1801884 (= c!1006808 e!3512950)))

(declare-fun res!2411288 () Bool)

(assert (=> d!1801884 (=> (not res!2411288) (not e!3512950))))

(assert (=> d!1801884 (= res!2411288 (matchR!7890 lt!2275560 Nil!63290))))

(assert (=> d!1801884 (validRegex!7441 lt!2275560)))

(assert (=> d!1801884 (= (findConcatSeparation!2128 lt!2275560 (regTwo!31922 r!7292) Nil!63290 s!2326 s!2326) lt!2275683)))

(declare-fun b!5711701 () Bool)

(assert (=> b!5711701 (= e!3512947 (= (++!13897 (_1!36105 (get!21817 lt!2275683)) (_2!36105 (get!21817 lt!2275683))) s!2326))))

(declare-fun b!5711702 () Bool)

(assert (=> b!5711702 (= e!3512948 (not (isDefined!12417 lt!2275683)))))

(declare-fun b!5711703 () Bool)

(assert (=> b!5711703 (= e!3512946 (Some!15713 (tuple2!65605 Nil!63290 s!2326)))))

(declare-fun b!5711704 () Bool)

(declare-fun lt!2275682 () Unit!156352)

(declare-fun lt!2275681 () Unit!156352)

(assert (=> b!5711704 (= lt!2275682 lt!2275681)))

(assert (=> b!5711704 (= (++!13897 (++!13897 Nil!63290 (Cons!63290 (h!69738 s!2326) Nil!63290)) (t!376734 s!2326)) s!2326)))

(assert (=> b!5711704 (= lt!2275681 (lemmaMoveElementToOtherListKeepsConcatEq!2062 Nil!63290 (h!69738 s!2326) (t!376734 s!2326) s!2326))))

(assert (=> b!5711704 (= e!3512949 (findConcatSeparation!2128 lt!2275560 (regTwo!31922 r!7292) (++!13897 Nil!63290 (Cons!63290 (h!69738 s!2326) Nil!63290)) (t!376734 s!2326) s!2326))))

(declare-fun b!5711705 () Bool)

(declare-fun res!2411286 () Bool)

(assert (=> b!5711705 (=> (not res!2411286) (not e!3512947))))

(assert (=> b!5711705 (= res!2411286 (matchR!7890 lt!2275560 (_1!36105 (get!21817 lt!2275683))))))

(assert (= (and d!1801884 res!2411288) b!5711699))

(assert (= (and d!1801884 c!1006808) b!5711703))

(assert (= (and d!1801884 (not c!1006808)) b!5711700))

(assert (= (and b!5711700 c!1006807) b!5711697))

(assert (= (and b!5711700 (not c!1006807)) b!5711704))

(assert (= (and d!1801884 res!2411289) b!5711705))

(assert (= (and b!5711705 res!2411286) b!5711698))

(assert (= (and b!5711698 res!2411287) b!5711701))

(assert (= (and d!1801884 (not res!2411285)) b!5711702))

(declare-fun m!6665336 () Bool)

(assert (=> b!5711705 m!6665336))

(declare-fun m!6665338 () Bool)

(assert (=> b!5711705 m!6665338))

(declare-fun m!6665340 () Bool)

(assert (=> d!1801884 m!6665340))

(declare-fun m!6665342 () Bool)

(assert (=> d!1801884 m!6665342))

(assert (=> d!1801884 m!6665056))

(assert (=> b!5711698 m!6665336))

(declare-fun m!6665344 () Bool)

(assert (=> b!5711698 m!6665344))

(declare-fun m!6665346 () Bool)

(assert (=> b!5711699 m!6665346))

(declare-fun m!6665348 () Bool)

(assert (=> b!5711704 m!6665348))

(assert (=> b!5711704 m!6665348))

(declare-fun m!6665350 () Bool)

(assert (=> b!5711704 m!6665350))

(declare-fun m!6665352 () Bool)

(assert (=> b!5711704 m!6665352))

(assert (=> b!5711704 m!6665348))

(declare-fun m!6665354 () Bool)

(assert (=> b!5711704 m!6665354))

(assert (=> b!5711702 m!6665340))

(assert (=> b!5711701 m!6665336))

(declare-fun m!6665356 () Bool)

(assert (=> b!5711701 m!6665356))

(assert (=> b!5710968 d!1801884))

(declare-fun d!1801886 () Bool)

(assert (=> d!1801886 (= (get!21817 lt!2275559) (v!51768 lt!2275559))))

(assert (=> b!5710968 d!1801886))

(declare-fun d!1801888 () Bool)

(assert (=> d!1801888 (= (Exists!2805 lambda!308175) (choose!43171 lambda!308175))))

(declare-fun bs!1334343 () Bool)

(assert (= bs!1334343 d!1801888))

(declare-fun m!6665358 () Bool)

(assert (=> bs!1334343 m!6665358))

(assert (=> b!5710968 d!1801888))

(declare-fun bs!1334344 () Bool)

(declare-fun d!1801890 () Bool)

(assert (= bs!1334344 (and d!1801890 b!5710952)))

(declare-fun lambda!308259 () Int)

(assert (=> bs!1334344 (not (= lambda!308259 lambda!308179))))

(declare-fun bs!1334345 () Bool)

(assert (= bs!1334345 (and d!1801890 d!1801754)))

(assert (=> bs!1334345 (= (and (= s!2326 (_1!36105 lt!2275548)) (= lt!2275560 (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308259 lambda!308225))))

(declare-fun bs!1334346 () Bool)

(assert (= bs!1334346 (and d!1801890 b!5711561)))

(assert (=> bs!1334346 (not (= lambda!308259 lambda!308247))))

(declare-fun bs!1334347 () Bool)

(assert (= bs!1334347 (and d!1801890 b!5710968)))

(assert (=> bs!1334347 (= lambda!308259 lambda!308175)))

(declare-fun bs!1334348 () Bool)

(assert (= bs!1334348 (and d!1801890 b!5710970)))

(assert (=> bs!1334348 (not (= lambda!308259 lambda!308173))))

(assert (=> bs!1334344 (= (and (= s!2326 (_1!36105 lt!2275548)) (= lt!2275560 (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308259 lambda!308177))))

(declare-fun bs!1334349 () Bool)

(assert (= bs!1334349 (and d!1801890 b!5711568)))

(assert (=> bs!1334349 (not (= lambda!308259 lambda!308246))))

(assert (=> bs!1334348 (= (= lt!2275560 (regOne!31922 r!7292)) (= lambda!308259 lambda!308172))))

(assert (=> bs!1334345 (not (= lambda!308259 lambda!308227))))

(declare-fun bs!1334350 () Bool)

(assert (= bs!1334350 (and d!1801890 d!1801796)))

(assert (=> bs!1334350 (not (= lambda!308259 lambda!308236))))

(assert (=> bs!1334350 (= (and (= s!2326 (_1!36105 lt!2275548)) (= lt!2275560 (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) (Star!15705 (reg!16034 (regOne!31922 r!7292))))) (= lambda!308259 lambda!308234))))

(declare-fun bs!1334351 () Bool)

(assert (= bs!1334351 (and d!1801890 d!1801880)))

(assert (=> bs!1334351 (= lambda!308259 lambda!308258)))

(assert (=> bs!1334347 (not (= lambda!308259 lambda!308176))))

(assert (=> bs!1334344 (not (= lambda!308259 lambda!308178))))

(declare-fun bs!1334352 () Bool)

(assert (= bs!1334352 (and d!1801890 d!1801734)))

(assert (=> bs!1334352 (= (and (= s!2326 (_1!36105 lt!2275548)) (= lt!2275560 (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308259 lambda!308209))))

(assert (=> d!1801890 true))

(assert (=> d!1801890 true))

(assert (=> d!1801890 true))

(declare-fun lambda!308260 () Int)

(assert (=> bs!1334344 (= (and (= s!2326 (_1!36105 lt!2275548)) (= lt!2275560 (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308260 lambda!308179))))

(assert (=> bs!1334345 (not (= lambda!308260 lambda!308225))))

(assert (=> bs!1334346 (= (and (= s!2326 (_1!36105 lt!2275548)) (= lt!2275560 (regOne!31922 lt!2275560)) (= (regTwo!31922 r!7292) (regTwo!31922 lt!2275560))) (= lambda!308260 lambda!308247))))

(assert (=> bs!1334347 (not (= lambda!308260 lambda!308175))))

(assert (=> bs!1334348 (= (= lt!2275560 (regOne!31922 r!7292)) (= lambda!308260 lambda!308173))))

(declare-fun bs!1334353 () Bool)

(assert (= bs!1334353 d!1801890))

(assert (=> bs!1334353 (not (= lambda!308260 lambda!308259))))

(assert (=> bs!1334344 (not (= lambda!308260 lambda!308177))))

(assert (=> bs!1334349 (not (= lambda!308260 lambda!308246))))

(assert (=> bs!1334348 (not (= lambda!308260 lambda!308172))))

(assert (=> bs!1334345 (= (and (= s!2326 (_1!36105 lt!2275548)) (= lt!2275560 (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308260 lambda!308227))))

(assert (=> bs!1334350 (not (= lambda!308260 lambda!308236))))

(assert (=> bs!1334350 (not (= lambda!308260 lambda!308234))))

(assert (=> bs!1334351 (not (= lambda!308260 lambda!308258))))

(assert (=> bs!1334347 (= lambda!308260 lambda!308176)))

(assert (=> bs!1334344 (not (= lambda!308260 lambda!308178))))

(assert (=> bs!1334352 (not (= lambda!308260 lambda!308209))))

(assert (=> d!1801890 true))

(assert (=> d!1801890 true))

(assert (=> d!1801890 true))

(assert (=> d!1801890 (= (Exists!2805 lambda!308259) (Exists!2805 lambda!308260))))

(declare-fun lt!2275684 () Unit!156352)

(assert (=> d!1801890 (= lt!2275684 (choose!43170 lt!2275560 (regTwo!31922 r!7292) s!2326))))

(assert (=> d!1801890 (validRegex!7441 lt!2275560)))

(assert (=> d!1801890 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1434 lt!2275560 (regTwo!31922 r!7292) s!2326) lt!2275684)))

(declare-fun m!6665360 () Bool)

(assert (=> bs!1334353 m!6665360))

(declare-fun m!6665362 () Bool)

(assert (=> bs!1334353 m!6665362))

(declare-fun m!6665364 () Bool)

(assert (=> bs!1334353 m!6665364))

(assert (=> bs!1334353 m!6665056))

(assert (=> b!5710968 d!1801890))

(declare-fun d!1801892 () Bool)

(assert (=> d!1801892 (= (Exists!2805 lambda!308176) (choose!43171 lambda!308176))))

(declare-fun bs!1334354 () Bool)

(assert (= bs!1334354 d!1801892))

(declare-fun m!6665366 () Bool)

(assert (=> bs!1334354 m!6665366))

(assert (=> b!5710968 d!1801892))

(declare-fun b!5711709 () Bool)

(declare-fun e!3512951 () Bool)

(declare-fun lt!2275685 () List!63414)

(assert (=> b!5711709 (= e!3512951 (or (not (= (_2!36105 lt!2275548) Nil!63290)) (= lt!2275685 (_1!36105 lt!2275548))))))

(declare-fun b!5711706 () Bool)

(declare-fun e!3512952 () List!63414)

(assert (=> b!5711706 (= e!3512952 (_2!36105 lt!2275548))))

(declare-fun b!5711707 () Bool)

(assert (=> b!5711707 (= e!3512952 (Cons!63290 (h!69738 (_1!36105 lt!2275548)) (++!13897 (t!376734 (_1!36105 lt!2275548)) (_2!36105 lt!2275548))))))

(declare-fun d!1801894 () Bool)

(assert (=> d!1801894 e!3512951))

(declare-fun res!2411290 () Bool)

(assert (=> d!1801894 (=> (not res!2411290) (not e!3512951))))

(assert (=> d!1801894 (= res!2411290 (= (content!11491 lt!2275685) ((_ map or) (content!11491 (_1!36105 lt!2275548)) (content!11491 (_2!36105 lt!2275548)))))))

(assert (=> d!1801894 (= lt!2275685 e!3512952)))

(declare-fun c!1006809 () Bool)

(assert (=> d!1801894 (= c!1006809 ((_ is Nil!63290) (_1!36105 lt!2275548)))))

(assert (=> d!1801894 (= (++!13897 (_1!36105 lt!2275548) (_2!36105 lt!2275548)) lt!2275685)))

(declare-fun b!5711708 () Bool)

(declare-fun res!2411291 () Bool)

(assert (=> b!5711708 (=> (not res!2411291) (not e!3512951))))

(assert (=> b!5711708 (= res!2411291 (= (size!40019 lt!2275685) (+ (size!40019 (_1!36105 lt!2275548)) (size!40019 (_2!36105 lt!2275548)))))))

(assert (= (and d!1801894 c!1006809) b!5711706))

(assert (= (and d!1801894 (not c!1006809)) b!5711707))

(assert (= (and d!1801894 res!2411290) b!5711708))

(assert (= (and b!5711708 res!2411291) b!5711709))

(declare-fun m!6665368 () Bool)

(assert (=> b!5711707 m!6665368))

(declare-fun m!6665370 () Bool)

(assert (=> d!1801894 m!6665370))

(declare-fun m!6665372 () Bool)

(assert (=> d!1801894 m!6665372))

(declare-fun m!6665374 () Bool)

(assert (=> d!1801894 m!6665374))

(declare-fun m!6665376 () Bool)

(assert (=> b!5711708 m!6665376))

(declare-fun m!6665378 () Bool)

(assert (=> b!5711708 m!6665378))

(declare-fun m!6665380 () Bool)

(assert (=> b!5711708 m!6665380))

(assert (=> b!5710968 d!1801894))

(declare-fun d!1801896 () Bool)

(assert (=> d!1801896 (= (isEmpty!35158 (_1!36105 lt!2275548)) ((_ is Nil!63290) (_1!36105 lt!2275548)))))

(assert (=> b!5710948 d!1801896))

(declare-fun d!1801898 () Bool)

(declare-fun choose!43176 ((InoxSet Context!10178) Int) (InoxSet Context!10178))

(assert (=> d!1801898 (= (flatMap!1318 lt!2275558 lambda!308174) (choose!43176 lt!2275558 lambda!308174))))

(declare-fun bs!1334355 () Bool)

(assert (= bs!1334355 d!1801898))

(declare-fun m!6665382 () Bool)

(assert (=> bs!1334355 m!6665382))

(assert (=> b!5710969 d!1801898))

(declare-fun b!5711720 () Bool)

(declare-fun call!435996 () (InoxSet Context!10178))

(declare-fun e!3512959 () (InoxSet Context!10178))

(assert (=> b!5711720 (= e!3512959 ((_ map or) call!435996 (derivationStepZipperUp!973 (Context!10179 (t!376735 (exprs!5589 lt!2275519))) (h!69738 s!2326))))))

(declare-fun d!1801900 () Bool)

(declare-fun c!1006815 () Bool)

(declare-fun e!3512961 () Bool)

(assert (=> d!1801900 (= c!1006815 e!3512961)))

(declare-fun res!2411294 () Bool)

(assert (=> d!1801900 (=> (not res!2411294) (not e!3512961))))

(assert (=> d!1801900 (= res!2411294 ((_ is Cons!63291) (exprs!5589 lt!2275519)))))

(assert (=> d!1801900 (= (derivationStepZipperUp!973 lt!2275519 (h!69738 s!2326)) e!3512959)))

(declare-fun b!5711721 () Bool)

(declare-fun e!3512960 () (InoxSet Context!10178))

(assert (=> b!5711721 (= e!3512960 call!435996)))

(declare-fun b!5711722 () Bool)

(assert (=> b!5711722 (= e!3512960 ((as const (Array Context!10178 Bool)) false))))

(declare-fun bm!435991 () Bool)

(assert (=> bm!435991 (= call!435996 (derivationStepZipperDown!1047 (h!69739 (exprs!5589 lt!2275519)) (Context!10179 (t!376735 (exprs!5589 lt!2275519))) (h!69738 s!2326)))))

(declare-fun b!5711723 () Bool)

(assert (=> b!5711723 (= e!3512959 e!3512960)))

(declare-fun c!1006814 () Bool)

(assert (=> b!5711723 (= c!1006814 ((_ is Cons!63291) (exprs!5589 lt!2275519)))))

(declare-fun b!5711724 () Bool)

(assert (=> b!5711724 (= e!3512961 (nullable!5737 (h!69739 (exprs!5589 lt!2275519))))))

(assert (= (and d!1801900 res!2411294) b!5711724))

(assert (= (and d!1801900 c!1006815) b!5711720))

(assert (= (and d!1801900 (not c!1006815)) b!5711723))

(assert (= (and b!5711723 c!1006814) b!5711721))

(assert (= (and b!5711723 (not c!1006814)) b!5711722))

(assert (= (or b!5711720 b!5711721) bm!435991))

(declare-fun m!6665384 () Bool)

(assert (=> b!5711720 m!6665384))

(declare-fun m!6665386 () Bool)

(assert (=> bm!435991 m!6665386))

(declare-fun m!6665388 () Bool)

(assert (=> b!5711724 m!6665388))

(assert (=> b!5710969 d!1801900))

(declare-fun d!1801902 () Bool)

(declare-fun dynLambda!24768 (Int Context!10178) (InoxSet Context!10178))

(assert (=> d!1801902 (= (flatMap!1318 lt!2275558 lambda!308174) (dynLambda!24768 lambda!308174 lt!2275519))))

(declare-fun lt!2275688 () Unit!156352)

(declare-fun choose!43177 ((InoxSet Context!10178) Context!10178 Int) Unit!156352)

(assert (=> d!1801902 (= lt!2275688 (choose!43177 lt!2275558 lt!2275519 lambda!308174))))

(assert (=> d!1801902 (= lt!2275558 (store ((as const (Array Context!10178 Bool)) false) lt!2275519 true))))

(assert (=> d!1801902 (= (lemmaFlatMapOnSingletonSet!850 lt!2275558 lt!2275519 lambda!308174) lt!2275688)))

(declare-fun b_lambda!215895 () Bool)

(assert (=> (not b_lambda!215895) (not d!1801902)))

(declare-fun bs!1334356 () Bool)

(assert (= bs!1334356 d!1801902))

(assert (=> bs!1334356 m!6664702))

(declare-fun m!6665390 () Bool)

(assert (=> bs!1334356 m!6665390))

(declare-fun m!6665392 () Bool)

(assert (=> bs!1334356 m!6665392))

(assert (=> bs!1334356 m!6664698))

(assert (=> b!5710969 d!1801902))

(declare-fun bs!1334357 () Bool)

(declare-fun d!1801904 () Bool)

(assert (= bs!1334357 (and d!1801904 b!5710946)))

(declare-fun lambda!308263 () Int)

(assert (=> bs!1334357 (= lambda!308263 lambda!308174)))

(assert (=> d!1801904 true))

(assert (=> d!1801904 (= (derivationStepZipper!1788 lt!2275558 (h!69738 s!2326)) (flatMap!1318 lt!2275558 lambda!308263))))

(declare-fun bs!1334358 () Bool)

(assert (= bs!1334358 d!1801904))

(declare-fun m!6665394 () Bool)

(assert (=> bs!1334358 m!6665394))

(assert (=> b!5710969 d!1801904))

(declare-fun b!5711749 () Bool)

(declare-fun e!3512976 () (InoxSet Context!10178))

(declare-fun call!436013 () (InoxSet Context!10178))

(declare-fun call!436009 () (InoxSet Context!10178))

(assert (=> b!5711749 (= e!3512976 ((_ map or) call!436013 call!436009))))

(declare-fun c!1006832 () Bool)

(declare-fun call!436012 () List!63415)

(declare-fun bm!436005 () Bool)

(declare-fun c!1006830 () Bool)

(declare-fun c!1006828 () Bool)

(assert (=> bm!436005 (= call!436009 (derivationStepZipperDown!1047 (ite c!1006830 (regTwo!31923 (reg!16034 (regOne!31922 r!7292))) (ite c!1006832 (regTwo!31922 (reg!16034 (regOne!31922 r!7292))) (ite c!1006828 (regOne!31922 (reg!16034 (regOne!31922 r!7292))) (reg!16034 (reg!16034 (regOne!31922 r!7292)))))) (ite (or c!1006830 c!1006832) lt!2275533 (Context!10179 call!436012)) (h!69738 s!2326)))))

(declare-fun bm!436006 () Bool)

(declare-fun call!436014 () List!63415)

(declare-fun $colon$colon!1726 (List!63415 Regex!15705) List!63415)

(assert (=> bm!436006 (= call!436014 ($colon$colon!1726 (exprs!5589 lt!2275533) (ite (or c!1006832 c!1006828) (regTwo!31922 (reg!16034 (regOne!31922 r!7292))) (reg!16034 (regOne!31922 r!7292)))))))

(declare-fun b!5711750 () Bool)

(declare-fun e!3512978 () (InoxSet Context!10178))

(declare-fun call!436010 () (InoxSet Context!10178))

(assert (=> b!5711750 (= e!3512978 call!436010)))

(declare-fun b!5711751 () Bool)

(declare-fun c!1006831 () Bool)

(assert (=> b!5711751 (= c!1006831 ((_ is Star!15705) (reg!16034 (regOne!31922 r!7292))))))

(declare-fun e!3512979 () (InoxSet Context!10178))

(assert (=> b!5711751 (= e!3512978 e!3512979)))

(declare-fun b!5711752 () Bool)

(assert (=> b!5711752 (= e!3512979 ((as const (Array Context!10178 Bool)) false))))

(declare-fun b!5711753 () Bool)

(declare-fun e!3512974 () (InoxSet Context!10178))

(assert (=> b!5711753 (= e!3512974 (store ((as const (Array Context!10178 Bool)) false) lt!2275533 true))))

(declare-fun bm!436007 () Bool)

(assert (=> bm!436007 (= call!436013 (derivationStepZipperDown!1047 (ite c!1006830 (regOne!31923 (reg!16034 (regOne!31922 r!7292))) (regOne!31922 (reg!16034 (regOne!31922 r!7292)))) (ite c!1006830 lt!2275533 (Context!10179 call!436014)) (h!69738 s!2326)))))

(declare-fun d!1801906 () Bool)

(declare-fun c!1006829 () Bool)

(assert (=> d!1801906 (= c!1006829 (and ((_ is ElementMatch!15705) (reg!16034 (regOne!31922 r!7292))) (= (c!1006621 (reg!16034 (regOne!31922 r!7292))) (h!69738 s!2326))))))

(assert (=> d!1801906 (= (derivationStepZipperDown!1047 (reg!16034 (regOne!31922 r!7292)) lt!2275533 (h!69738 s!2326)) e!3512974)))

(declare-fun bm!436004 () Bool)

(assert (=> bm!436004 (= call!436012 call!436014)))

(declare-fun bm!436008 () Bool)

(declare-fun call!436011 () (InoxSet Context!10178))

(assert (=> bm!436008 (= call!436011 call!436009)))

(declare-fun b!5711754 () Bool)

(assert (=> b!5711754 (= e!3512974 e!3512976)))

(assert (=> b!5711754 (= c!1006830 ((_ is Union!15705) (reg!16034 (regOne!31922 r!7292))))))

(declare-fun b!5711755 () Bool)

(declare-fun e!3512977 () (InoxSet Context!10178))

(assert (=> b!5711755 (= e!3512977 ((_ map or) call!436013 call!436011))))

(declare-fun b!5711756 () Bool)

(declare-fun e!3512975 () Bool)

(assert (=> b!5711756 (= c!1006832 e!3512975)))

(declare-fun res!2411297 () Bool)

(assert (=> b!5711756 (=> (not res!2411297) (not e!3512975))))

(assert (=> b!5711756 (= res!2411297 ((_ is Concat!24550) (reg!16034 (regOne!31922 r!7292))))))

(assert (=> b!5711756 (= e!3512976 e!3512977)))

(declare-fun bm!436009 () Bool)

(assert (=> bm!436009 (= call!436010 call!436011)))

(declare-fun b!5711757 () Bool)

(assert (=> b!5711757 (= e!3512977 e!3512978)))

(assert (=> b!5711757 (= c!1006828 ((_ is Concat!24550) (reg!16034 (regOne!31922 r!7292))))))

(declare-fun b!5711758 () Bool)

(assert (=> b!5711758 (= e!3512979 call!436010)))

(declare-fun b!5711759 () Bool)

(assert (=> b!5711759 (= e!3512975 (nullable!5737 (regOne!31922 (reg!16034 (regOne!31922 r!7292)))))))

(assert (= (and d!1801906 c!1006829) b!5711753))

(assert (= (and d!1801906 (not c!1006829)) b!5711754))

(assert (= (and b!5711754 c!1006830) b!5711749))

(assert (= (and b!5711754 (not c!1006830)) b!5711756))

(assert (= (and b!5711756 res!2411297) b!5711759))

(assert (= (and b!5711756 c!1006832) b!5711755))

(assert (= (and b!5711756 (not c!1006832)) b!5711757))

(assert (= (and b!5711757 c!1006828) b!5711750))

(assert (= (and b!5711757 (not c!1006828)) b!5711751))

(assert (= (and b!5711751 c!1006831) b!5711758))

(assert (= (and b!5711751 (not c!1006831)) b!5711752))

(assert (= (or b!5711750 b!5711758) bm!436004))

(assert (= (or b!5711750 b!5711758) bm!436009))

(assert (= (or b!5711755 bm!436004) bm!436006))

(assert (= (or b!5711755 bm!436009) bm!436008))

(assert (= (or b!5711749 bm!436008) bm!436005))

(assert (= (or b!5711749 b!5711755) bm!436007))

(assert (=> b!5711753 m!6664630))

(declare-fun m!6665396 () Bool)

(assert (=> bm!436006 m!6665396))

(declare-fun m!6665398 () Bool)

(assert (=> bm!436007 m!6665398))

(declare-fun m!6665400 () Bool)

(assert (=> b!5711759 m!6665400))

(declare-fun m!6665402 () Bool)

(assert (=> bm!436005 m!6665402))

(assert (=> b!5710949 d!1801906))

(declare-fun d!1801908 () Bool)

(assert (=> d!1801908 (= (Exists!2805 lambda!308173) (choose!43171 lambda!308173))))

(declare-fun bs!1334359 () Bool)

(assert (= bs!1334359 d!1801908))

(declare-fun m!6665404 () Bool)

(assert (=> bs!1334359 m!6665404))

(assert (=> b!5710970 d!1801908))

(declare-fun b!5711760 () Bool)

(declare-fun e!3512983 () Option!15714)

(assert (=> b!5711760 (= e!3512983 None!15713)))

(declare-fun b!5711761 () Bool)

(declare-fun res!2411300 () Bool)

(declare-fun e!3512981 () Bool)

(assert (=> b!5711761 (=> (not res!2411300) (not e!3512981))))

(declare-fun lt!2275691 () Option!15714)

(assert (=> b!5711761 (= res!2411300 (matchR!7890 (regTwo!31922 r!7292) (_2!36105 (get!21817 lt!2275691))))))

(declare-fun b!5711762 () Bool)

(declare-fun e!3512984 () Bool)

(assert (=> b!5711762 (= e!3512984 (matchR!7890 (regTwo!31922 r!7292) s!2326))))

(declare-fun b!5711763 () Bool)

(declare-fun e!3512980 () Option!15714)

(assert (=> b!5711763 (= e!3512980 e!3512983)))

(declare-fun c!1006833 () Bool)

(assert (=> b!5711763 (= c!1006833 ((_ is Nil!63290) s!2326))))

(declare-fun d!1801910 () Bool)

(declare-fun e!3512982 () Bool)

(assert (=> d!1801910 e!3512982))

(declare-fun res!2411298 () Bool)

(assert (=> d!1801910 (=> res!2411298 e!3512982)))

(assert (=> d!1801910 (= res!2411298 e!3512981)))

(declare-fun res!2411302 () Bool)

(assert (=> d!1801910 (=> (not res!2411302) (not e!3512981))))

(assert (=> d!1801910 (= res!2411302 (isDefined!12417 lt!2275691))))

(assert (=> d!1801910 (= lt!2275691 e!3512980)))

(declare-fun c!1006834 () Bool)

(assert (=> d!1801910 (= c!1006834 e!3512984)))

(declare-fun res!2411301 () Bool)

(assert (=> d!1801910 (=> (not res!2411301) (not e!3512984))))

(assert (=> d!1801910 (= res!2411301 (matchR!7890 (regOne!31922 r!7292) Nil!63290))))

(assert (=> d!1801910 (validRegex!7441 (regOne!31922 r!7292))))

(assert (=> d!1801910 (= (findConcatSeparation!2128 (regOne!31922 r!7292) (regTwo!31922 r!7292) Nil!63290 s!2326 s!2326) lt!2275691)))

(declare-fun b!5711764 () Bool)

(assert (=> b!5711764 (= e!3512981 (= (++!13897 (_1!36105 (get!21817 lt!2275691)) (_2!36105 (get!21817 lt!2275691))) s!2326))))

(declare-fun b!5711765 () Bool)

(assert (=> b!5711765 (= e!3512982 (not (isDefined!12417 lt!2275691)))))

(declare-fun b!5711766 () Bool)

(assert (=> b!5711766 (= e!3512980 (Some!15713 (tuple2!65605 Nil!63290 s!2326)))))

(declare-fun b!5711767 () Bool)

(declare-fun lt!2275690 () Unit!156352)

(declare-fun lt!2275689 () Unit!156352)

(assert (=> b!5711767 (= lt!2275690 lt!2275689)))

(assert (=> b!5711767 (= (++!13897 (++!13897 Nil!63290 (Cons!63290 (h!69738 s!2326) Nil!63290)) (t!376734 s!2326)) s!2326)))

(assert (=> b!5711767 (= lt!2275689 (lemmaMoveElementToOtherListKeepsConcatEq!2062 Nil!63290 (h!69738 s!2326) (t!376734 s!2326) s!2326))))

(assert (=> b!5711767 (= e!3512983 (findConcatSeparation!2128 (regOne!31922 r!7292) (regTwo!31922 r!7292) (++!13897 Nil!63290 (Cons!63290 (h!69738 s!2326) Nil!63290)) (t!376734 s!2326) s!2326))))

(declare-fun b!5711768 () Bool)

(declare-fun res!2411299 () Bool)

(assert (=> b!5711768 (=> (not res!2411299) (not e!3512981))))

(assert (=> b!5711768 (= res!2411299 (matchR!7890 (regOne!31922 r!7292) (_1!36105 (get!21817 lt!2275691))))))

(assert (= (and d!1801910 res!2411301) b!5711762))

(assert (= (and d!1801910 c!1006834) b!5711766))

(assert (= (and d!1801910 (not c!1006834)) b!5711763))

(assert (= (and b!5711763 c!1006833) b!5711760))

(assert (= (and b!5711763 (not c!1006833)) b!5711767))

(assert (= (and d!1801910 res!2411302) b!5711768))

(assert (= (and b!5711768 res!2411299) b!5711761))

(assert (= (and b!5711761 res!2411300) b!5711764))

(assert (= (and d!1801910 (not res!2411298)) b!5711765))

(declare-fun m!6665406 () Bool)

(assert (=> b!5711768 m!6665406))

(declare-fun m!6665408 () Bool)

(assert (=> b!5711768 m!6665408))

(declare-fun m!6665410 () Bool)

(assert (=> d!1801910 m!6665410))

(declare-fun m!6665412 () Bool)

(assert (=> d!1801910 m!6665412))

(declare-fun m!6665414 () Bool)

(assert (=> d!1801910 m!6665414))

(assert (=> b!5711761 m!6665406))

(declare-fun m!6665416 () Bool)

(assert (=> b!5711761 m!6665416))

(assert (=> b!5711762 m!6665346))

(assert (=> b!5711767 m!6665348))

(assert (=> b!5711767 m!6665348))

(assert (=> b!5711767 m!6665350))

(assert (=> b!5711767 m!6665352))

(assert (=> b!5711767 m!6665348))

(declare-fun m!6665418 () Bool)

(assert (=> b!5711767 m!6665418))

(assert (=> b!5711765 m!6665410))

(assert (=> b!5711764 m!6665406))

(declare-fun m!6665420 () Bool)

(assert (=> b!5711764 m!6665420))

(assert (=> b!5710970 d!1801910))

(declare-fun d!1801912 () Bool)

(assert (=> d!1801912 (= (Exists!2805 lambda!308172) (choose!43171 lambda!308172))))

(declare-fun bs!1334360 () Bool)

(assert (= bs!1334360 d!1801912))

(declare-fun m!6665422 () Bool)

(assert (=> bs!1334360 m!6665422))

(assert (=> b!5710970 d!1801912))

(declare-fun bs!1334361 () Bool)

(declare-fun d!1801914 () Bool)

(assert (= bs!1334361 (and d!1801914 b!5710952)))

(declare-fun lambda!308264 () Int)

(assert (=> bs!1334361 (not (= lambda!308264 lambda!308179))))

(declare-fun bs!1334362 () Bool)

(assert (= bs!1334362 (and d!1801914 d!1801754)))

(assert (=> bs!1334362 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (regOne!31922 r!7292) (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308264 lambda!308225))))

(declare-fun bs!1334363 () Bool)

(assert (= bs!1334363 (and d!1801914 b!5711561)))

(assert (=> bs!1334363 (not (= lambda!308264 lambda!308247))))

(declare-fun bs!1334364 () Bool)

(assert (= bs!1334364 (and d!1801914 b!5710968)))

(assert (=> bs!1334364 (= (= (regOne!31922 r!7292) lt!2275560) (= lambda!308264 lambda!308175))))

(declare-fun bs!1334365 () Bool)

(assert (= bs!1334365 (and d!1801914 d!1801890)))

(assert (=> bs!1334365 (= (= (regOne!31922 r!7292) lt!2275560) (= lambda!308264 lambda!308259))))

(assert (=> bs!1334361 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (regOne!31922 r!7292) (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308264 lambda!308177))))

(declare-fun bs!1334366 () Bool)

(assert (= bs!1334366 (and d!1801914 b!5711568)))

(assert (=> bs!1334366 (not (= lambda!308264 lambda!308246))))

(declare-fun bs!1334367 () Bool)

(assert (= bs!1334367 (and d!1801914 b!5710970)))

(assert (=> bs!1334367 (= lambda!308264 lambda!308172)))

(assert (=> bs!1334362 (not (= lambda!308264 lambda!308227))))

(declare-fun bs!1334368 () Bool)

(assert (= bs!1334368 (and d!1801914 d!1801796)))

(assert (=> bs!1334368 (not (= lambda!308264 lambda!308236))))

(assert (=> bs!1334368 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (regOne!31922 r!7292) (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) (Star!15705 (reg!16034 (regOne!31922 r!7292))))) (= lambda!308264 lambda!308234))))

(declare-fun bs!1334369 () Bool)

(assert (= bs!1334369 (and d!1801914 d!1801880)))

(assert (=> bs!1334369 (= (= (regOne!31922 r!7292) lt!2275560) (= lambda!308264 lambda!308258))))

(assert (=> bs!1334365 (not (= lambda!308264 lambda!308260))))

(assert (=> bs!1334367 (not (= lambda!308264 lambda!308173))))

(assert (=> bs!1334364 (not (= lambda!308264 lambda!308176))))

(assert (=> bs!1334361 (not (= lambda!308264 lambda!308178))))

(declare-fun bs!1334370 () Bool)

(assert (= bs!1334370 (and d!1801914 d!1801734)))

(assert (=> bs!1334370 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (regOne!31922 r!7292) (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308264 lambda!308209))))

(assert (=> d!1801914 true))

(assert (=> d!1801914 true))

(assert (=> d!1801914 true))

(assert (=> d!1801914 (= (isDefined!12417 (findConcatSeparation!2128 (regOne!31922 r!7292) (regTwo!31922 r!7292) Nil!63290 s!2326 s!2326)) (Exists!2805 lambda!308264))))

(declare-fun lt!2275692 () Unit!156352)

(assert (=> d!1801914 (= lt!2275692 (choose!43169 (regOne!31922 r!7292) (regTwo!31922 r!7292) s!2326))))

(assert (=> d!1801914 (validRegex!7441 (regOne!31922 r!7292))))

(assert (=> d!1801914 (= (lemmaFindConcatSeparationEquivalentToExists!1892 (regOne!31922 r!7292) (regTwo!31922 r!7292) s!2326) lt!2275692)))

(declare-fun bs!1334371 () Bool)

(assert (= bs!1334371 d!1801914))

(declare-fun m!6665424 () Bool)

(assert (=> bs!1334371 m!6665424))

(declare-fun m!6665426 () Bool)

(assert (=> bs!1334371 m!6665426))

(assert (=> bs!1334371 m!6665414))

(assert (=> bs!1334371 m!6664586))

(assert (=> bs!1334371 m!6664588))

(assert (=> bs!1334371 m!6664586))

(assert (=> b!5710970 d!1801914))

(declare-fun bs!1334372 () Bool)

(declare-fun d!1801916 () Bool)

(assert (= bs!1334372 (and d!1801916 b!5710952)))

(declare-fun lambda!308265 () Int)

(assert (=> bs!1334372 (not (= lambda!308265 lambda!308179))))

(declare-fun bs!1334373 () Bool)

(assert (= bs!1334373 (and d!1801916 d!1801754)))

(assert (=> bs!1334373 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (regOne!31922 r!7292) (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308265 lambda!308225))))

(declare-fun bs!1334374 () Bool)

(assert (= bs!1334374 (and d!1801916 b!5711561)))

(assert (=> bs!1334374 (not (= lambda!308265 lambda!308247))))

(declare-fun bs!1334375 () Bool)

(assert (= bs!1334375 (and d!1801916 d!1801890)))

(assert (=> bs!1334375 (= (= (regOne!31922 r!7292) lt!2275560) (= lambda!308265 lambda!308259))))

(assert (=> bs!1334372 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (regOne!31922 r!7292) (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308265 lambda!308177))))

(declare-fun bs!1334376 () Bool)

(assert (= bs!1334376 (and d!1801916 b!5711568)))

(assert (=> bs!1334376 (not (= lambda!308265 lambda!308246))))

(declare-fun bs!1334377 () Bool)

(assert (= bs!1334377 (and d!1801916 b!5710970)))

(assert (=> bs!1334377 (= lambda!308265 lambda!308172)))

(assert (=> bs!1334373 (not (= lambda!308265 lambda!308227))))

(declare-fun bs!1334378 () Bool)

(assert (= bs!1334378 (and d!1801916 d!1801796)))

(assert (=> bs!1334378 (not (= lambda!308265 lambda!308236))))

(assert (=> bs!1334378 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (regOne!31922 r!7292) (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) (Star!15705 (reg!16034 (regOne!31922 r!7292))))) (= lambda!308265 lambda!308234))))

(declare-fun bs!1334379 () Bool)

(assert (= bs!1334379 (and d!1801916 d!1801880)))

(assert (=> bs!1334379 (= (= (regOne!31922 r!7292) lt!2275560) (= lambda!308265 lambda!308258))))

(declare-fun bs!1334380 () Bool)

(assert (= bs!1334380 (and d!1801916 b!5710968)))

(assert (=> bs!1334380 (= (= (regOne!31922 r!7292) lt!2275560) (= lambda!308265 lambda!308175))))

(declare-fun bs!1334381 () Bool)

(assert (= bs!1334381 (and d!1801916 d!1801914)))

(assert (=> bs!1334381 (= lambda!308265 lambda!308264)))

(assert (=> bs!1334375 (not (= lambda!308265 lambda!308260))))

(assert (=> bs!1334377 (not (= lambda!308265 lambda!308173))))

(assert (=> bs!1334380 (not (= lambda!308265 lambda!308176))))

(assert (=> bs!1334372 (not (= lambda!308265 lambda!308178))))

(declare-fun bs!1334382 () Bool)

(assert (= bs!1334382 (and d!1801916 d!1801734)))

(assert (=> bs!1334382 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (regOne!31922 r!7292) (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308265 lambda!308209))))

(assert (=> d!1801916 true))

(assert (=> d!1801916 true))

(assert (=> d!1801916 true))

(declare-fun lambda!308266 () Int)

(assert (=> bs!1334372 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (regOne!31922 r!7292) (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308266 lambda!308179))))

(assert (=> bs!1334373 (not (= lambda!308266 lambda!308225))))

(assert (=> bs!1334374 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (regOne!31922 r!7292) (regOne!31922 lt!2275560)) (= (regTwo!31922 r!7292) (regTwo!31922 lt!2275560))) (= lambda!308266 lambda!308247))))

(declare-fun bs!1334383 () Bool)

(assert (= bs!1334383 d!1801916))

(assert (=> bs!1334383 (not (= lambda!308266 lambda!308265))))

(assert (=> bs!1334375 (not (= lambda!308266 lambda!308259))))

(assert (=> bs!1334372 (not (= lambda!308266 lambda!308177))))

(assert (=> bs!1334376 (not (= lambda!308266 lambda!308246))))

(assert (=> bs!1334377 (not (= lambda!308266 lambda!308172))))

(assert (=> bs!1334373 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (regOne!31922 r!7292) (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308266 lambda!308227))))

(assert (=> bs!1334378 (not (= lambda!308266 lambda!308236))))

(assert (=> bs!1334378 (not (= lambda!308266 lambda!308234))))

(assert (=> bs!1334379 (not (= lambda!308266 lambda!308258))))

(assert (=> bs!1334380 (not (= lambda!308266 lambda!308175))))

(assert (=> bs!1334381 (not (= lambda!308266 lambda!308264))))

(assert (=> bs!1334375 (= (= (regOne!31922 r!7292) lt!2275560) (= lambda!308266 lambda!308260))))

(assert (=> bs!1334377 (= lambda!308266 lambda!308173)))

(assert (=> bs!1334380 (= (= (regOne!31922 r!7292) lt!2275560) (= lambda!308266 lambda!308176))))

(assert (=> bs!1334372 (not (= lambda!308266 lambda!308178))))

(assert (=> bs!1334382 (not (= lambda!308266 lambda!308209))))

(assert (=> d!1801916 true))

(assert (=> d!1801916 true))

(assert (=> d!1801916 true))

(assert (=> d!1801916 (= (Exists!2805 lambda!308265) (Exists!2805 lambda!308266))))

(declare-fun lt!2275693 () Unit!156352)

(assert (=> d!1801916 (= lt!2275693 (choose!43170 (regOne!31922 r!7292) (regTwo!31922 r!7292) s!2326))))

(assert (=> d!1801916 (validRegex!7441 (regOne!31922 r!7292))))

(assert (=> d!1801916 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1434 (regOne!31922 r!7292) (regTwo!31922 r!7292) s!2326) lt!2275693)))

(declare-fun m!6665428 () Bool)

(assert (=> bs!1334383 m!6665428))

(declare-fun m!6665430 () Bool)

(assert (=> bs!1334383 m!6665430))

(declare-fun m!6665432 () Bool)

(assert (=> bs!1334383 m!6665432))

(assert (=> bs!1334383 m!6665414))

(assert (=> b!5710970 d!1801916))

(declare-fun d!1801918 () Bool)

(assert (=> d!1801918 (= (isDefined!12417 (findConcatSeparation!2128 (regOne!31922 r!7292) (regTwo!31922 r!7292) Nil!63290 s!2326 s!2326)) (not (isEmpty!35162 (findConcatSeparation!2128 (regOne!31922 r!7292) (regTwo!31922 r!7292) Nil!63290 s!2326 s!2326))))))

(declare-fun bs!1334384 () Bool)

(assert (= bs!1334384 d!1801918))

(assert (=> bs!1334384 m!6664586))

(declare-fun m!6665434 () Bool)

(assert (=> bs!1334384 m!6665434))

(assert (=> b!5710970 d!1801918))

(declare-fun d!1801920 () Bool)

(assert (=> d!1801920 (= (isEmpty!35159 (t!376736 zl!343)) ((_ is Nil!63292) (t!376736 zl!343)))))

(assert (=> b!5710950 d!1801920))

(declare-fun b!5711769 () Bool)

(declare-fun e!3512988 () Bool)

(assert (=> b!5711769 (= e!3512988 (= (head!12098 (_1!36105 lt!2275517)) (c!1006621 (reg!16034 (regOne!31922 r!7292)))))))

(declare-fun b!5711770 () Bool)

(declare-fun e!3512990 () Bool)

(declare-fun lt!2275694 () Bool)

(declare-fun call!436015 () Bool)

(assert (=> b!5711770 (= e!3512990 (= lt!2275694 call!436015))))

(declare-fun b!5711771 () Bool)

(declare-fun e!3512987 () Bool)

(assert (=> b!5711771 (= e!3512987 (nullable!5737 (reg!16034 (regOne!31922 r!7292))))))

(declare-fun b!5711772 () Bool)

(declare-fun res!2411305 () Bool)

(assert (=> b!5711772 (=> (not res!2411305) (not e!3512988))))

(assert (=> b!5711772 (= res!2411305 (isEmpty!35158 (tail!11193 (_1!36105 lt!2275517))))))

(declare-fun b!5711773 () Bool)

(declare-fun res!2411307 () Bool)

(declare-fun e!3512986 () Bool)

(assert (=> b!5711773 (=> res!2411307 e!3512986)))

(assert (=> b!5711773 (= res!2411307 e!3512988)))

(declare-fun res!2411304 () Bool)

(assert (=> b!5711773 (=> (not res!2411304) (not e!3512988))))

(assert (=> b!5711773 (= res!2411304 lt!2275694)))

(declare-fun b!5711774 () Bool)

(declare-fun e!3512985 () Bool)

(assert (=> b!5711774 (= e!3512990 e!3512985)))

(declare-fun c!1006835 () Bool)

(assert (=> b!5711774 (= c!1006835 ((_ is EmptyLang!15705) (reg!16034 (regOne!31922 r!7292))))))

(declare-fun b!5711775 () Bool)

(declare-fun res!2411303 () Bool)

(assert (=> b!5711775 (=> (not res!2411303) (not e!3512988))))

(assert (=> b!5711775 (= res!2411303 (not call!436015))))

(declare-fun b!5711776 () Bool)

(declare-fun e!3512991 () Bool)

(assert (=> b!5711776 (= e!3512986 e!3512991)))

(declare-fun res!2411308 () Bool)

(assert (=> b!5711776 (=> (not res!2411308) (not e!3512991))))

(assert (=> b!5711776 (= res!2411308 (not lt!2275694))))

(declare-fun b!5711777 () Bool)

(declare-fun res!2411309 () Bool)

(assert (=> b!5711777 (=> res!2411309 e!3512986)))

(assert (=> b!5711777 (= res!2411309 (not ((_ is ElementMatch!15705) (reg!16034 (regOne!31922 r!7292)))))))

(assert (=> b!5711777 (= e!3512985 e!3512986)))

(declare-fun b!5711778 () Bool)

(declare-fun e!3512989 () Bool)

(assert (=> b!5711778 (= e!3512991 e!3512989)))

(declare-fun res!2411306 () Bool)

(assert (=> b!5711778 (=> res!2411306 e!3512989)))

(assert (=> b!5711778 (= res!2411306 call!436015)))

(declare-fun d!1801922 () Bool)

(assert (=> d!1801922 e!3512990))

(declare-fun c!1006836 () Bool)

(assert (=> d!1801922 (= c!1006836 ((_ is EmptyExpr!15705) (reg!16034 (regOne!31922 r!7292))))))

(assert (=> d!1801922 (= lt!2275694 e!3512987)))

(declare-fun c!1006837 () Bool)

(assert (=> d!1801922 (= c!1006837 (isEmpty!35158 (_1!36105 lt!2275517)))))

(assert (=> d!1801922 (validRegex!7441 (reg!16034 (regOne!31922 r!7292)))))

(assert (=> d!1801922 (= (matchR!7890 (reg!16034 (regOne!31922 r!7292)) (_1!36105 lt!2275517)) lt!2275694)))

(declare-fun bm!436010 () Bool)

(assert (=> bm!436010 (= call!436015 (isEmpty!35158 (_1!36105 lt!2275517)))))

(declare-fun b!5711779 () Bool)

(assert (=> b!5711779 (= e!3512987 (matchR!7890 (derivativeStep!4511 (reg!16034 (regOne!31922 r!7292)) (head!12098 (_1!36105 lt!2275517))) (tail!11193 (_1!36105 lt!2275517))))))

(declare-fun b!5711780 () Bool)

(assert (=> b!5711780 (= e!3512989 (not (= (head!12098 (_1!36105 lt!2275517)) (c!1006621 (reg!16034 (regOne!31922 r!7292))))))))

(declare-fun b!5711781 () Bool)

(assert (=> b!5711781 (= e!3512985 (not lt!2275694))))

(declare-fun b!5711782 () Bool)

(declare-fun res!2411310 () Bool)

(assert (=> b!5711782 (=> res!2411310 e!3512989)))

(assert (=> b!5711782 (= res!2411310 (not (isEmpty!35158 (tail!11193 (_1!36105 lt!2275517)))))))

(assert (= (and d!1801922 c!1006837) b!5711771))

(assert (= (and d!1801922 (not c!1006837)) b!5711779))

(assert (= (and d!1801922 c!1006836) b!5711770))

(assert (= (and d!1801922 (not c!1006836)) b!5711774))

(assert (= (and b!5711774 c!1006835) b!5711781))

(assert (= (and b!5711774 (not c!1006835)) b!5711777))

(assert (= (and b!5711777 (not res!2411309)) b!5711773))

(assert (= (and b!5711773 res!2411304) b!5711775))

(assert (= (and b!5711775 res!2411303) b!5711772))

(assert (= (and b!5711772 res!2411305) b!5711769))

(assert (= (and b!5711773 (not res!2411307)) b!5711776))

(assert (= (and b!5711776 res!2411308) b!5711778))

(assert (= (and b!5711778 (not res!2411306)) b!5711782))

(assert (= (and b!5711782 (not res!2411310)) b!5711780))

(assert (= (or b!5711770 b!5711775 b!5711778) bm!436010))

(declare-fun m!6665436 () Bool)

(assert (=> d!1801922 m!6665436))

(assert (=> d!1801922 m!6664946))

(assert (=> bm!436010 m!6665436))

(declare-fun m!6665438 () Bool)

(assert (=> b!5711780 m!6665438))

(declare-fun m!6665440 () Bool)

(assert (=> b!5711771 m!6665440))

(assert (=> b!5711769 m!6665438))

(declare-fun m!6665442 () Bool)

(assert (=> b!5711782 m!6665442))

(assert (=> b!5711782 m!6665442))

(declare-fun m!6665444 () Bool)

(assert (=> b!5711782 m!6665444))

(assert (=> b!5711779 m!6665438))

(assert (=> b!5711779 m!6665438))

(declare-fun m!6665446 () Bool)

(assert (=> b!5711779 m!6665446))

(assert (=> b!5711779 m!6665442))

(assert (=> b!5711779 m!6665446))

(assert (=> b!5711779 m!6665442))

(declare-fun m!6665448 () Bool)

(assert (=> b!5711779 m!6665448))

(assert (=> b!5711772 m!6665442))

(assert (=> b!5711772 m!6665442))

(assert (=> b!5711772 m!6665444))

(assert (=> b!5710942 d!1801922))

(declare-fun bs!1334385 () Bool)

(declare-fun d!1801924 () Bool)

(assert (= bs!1334385 (and d!1801924 d!1801860)))

(declare-fun lambda!308269 () Int)

(assert (=> bs!1334385 (= lambda!308269 lambda!308250)))

(declare-fun bs!1334386 () Bool)

(assert (= bs!1334386 (and d!1801924 d!1801870)))

(assert (=> bs!1334386 (= lambda!308269 lambda!308253)))

(declare-fun bs!1334387 () Bool)

(assert (= bs!1334387 (and d!1801924 d!1801872)))

(assert (=> bs!1334387 (= lambda!308269 lambda!308256)))

(declare-fun bs!1334388 () Bool)

(assert (= bs!1334388 (and d!1801924 d!1801876)))

(assert (=> bs!1334388 (= lambda!308269 lambda!308257)))

(declare-fun b!5711803 () Bool)

(declare-fun e!3513005 () Regex!15705)

(declare-fun e!3513008 () Regex!15705)

(assert (=> b!5711803 (= e!3513005 e!3513008)))

(declare-fun c!1006848 () Bool)

(assert (=> b!5711803 (= c!1006848 ((_ is Cons!63291) (exprs!5589 (h!69740 zl!343))))))

(declare-fun b!5711804 () Bool)

(assert (=> b!5711804 (= e!3513008 EmptyExpr!15705)))

(declare-fun b!5711805 () Bool)

(declare-fun e!3513004 () Bool)

(declare-fun lt!2275697 () Regex!15705)

(declare-fun isConcat!740 (Regex!15705) Bool)

(assert (=> b!5711805 (= e!3513004 (isConcat!740 lt!2275697))))

(declare-fun b!5711806 () Bool)

(declare-fun e!3513007 () Bool)

(assert (=> b!5711806 (= e!3513007 (isEmpty!35160 (t!376735 (exprs!5589 (h!69740 zl!343)))))))

(declare-fun b!5711807 () Bool)

(declare-fun e!3513006 () Bool)

(assert (=> b!5711807 (= e!3513006 e!3513004)))

(declare-fun c!1006849 () Bool)

(assert (=> b!5711807 (= c!1006849 (isEmpty!35160 (tail!11194 (exprs!5589 (h!69740 zl!343)))))))

(declare-fun b!5711808 () Bool)

(declare-fun isEmptyExpr!1217 (Regex!15705) Bool)

(assert (=> b!5711808 (= e!3513006 (isEmptyExpr!1217 lt!2275697))))

(declare-fun b!5711809 () Bool)

(assert (=> b!5711809 (= e!3513004 (= lt!2275697 (head!12099 (exprs!5589 (h!69740 zl!343)))))))

(declare-fun b!5711810 () Bool)

(assert (=> b!5711810 (= e!3513005 (h!69739 (exprs!5589 (h!69740 zl!343))))))

(declare-fun b!5711811 () Bool)

(declare-fun e!3513009 () Bool)

(assert (=> b!5711811 (= e!3513009 e!3513006)))

(declare-fun c!1006846 () Bool)

(assert (=> b!5711811 (= c!1006846 (isEmpty!35160 (exprs!5589 (h!69740 zl!343))))))

(declare-fun b!5711812 () Bool)

(assert (=> b!5711812 (= e!3513008 (Concat!24550 (h!69739 (exprs!5589 (h!69740 zl!343))) (generalisedConcat!1320 (t!376735 (exprs!5589 (h!69740 zl!343))))))))

(assert (=> d!1801924 e!3513009))

(declare-fun res!2411315 () Bool)

(assert (=> d!1801924 (=> (not res!2411315) (not e!3513009))))

(assert (=> d!1801924 (= res!2411315 (validRegex!7441 lt!2275697))))

(assert (=> d!1801924 (= lt!2275697 e!3513005)))

(declare-fun c!1006847 () Bool)

(assert (=> d!1801924 (= c!1006847 e!3513007)))

(declare-fun res!2411316 () Bool)

(assert (=> d!1801924 (=> (not res!2411316) (not e!3513007))))

(assert (=> d!1801924 (= res!2411316 ((_ is Cons!63291) (exprs!5589 (h!69740 zl!343))))))

(assert (=> d!1801924 (forall!14844 (exprs!5589 (h!69740 zl!343)) lambda!308269)))

(assert (=> d!1801924 (= (generalisedConcat!1320 (exprs!5589 (h!69740 zl!343))) lt!2275697)))

(assert (= (and d!1801924 res!2411316) b!5711806))

(assert (= (and d!1801924 c!1006847) b!5711810))

(assert (= (and d!1801924 (not c!1006847)) b!5711803))

(assert (= (and b!5711803 c!1006848) b!5711812))

(assert (= (and b!5711803 (not c!1006848)) b!5711804))

(assert (= (and d!1801924 res!2411315) b!5711811))

(assert (= (and b!5711811 c!1006846) b!5711808))

(assert (= (and b!5711811 (not c!1006846)) b!5711807))

(assert (= (and b!5711807 c!1006849) b!5711809))

(assert (= (and b!5711807 (not c!1006849)) b!5711805))

(declare-fun m!6665450 () Bool)

(assert (=> b!5711807 m!6665450))

(assert (=> b!5711807 m!6665450))

(declare-fun m!6665452 () Bool)

(assert (=> b!5711807 m!6665452))

(declare-fun m!6665454 () Bool)

(assert (=> b!5711811 m!6665454))

(declare-fun m!6665456 () Bool)

(assert (=> b!5711809 m!6665456))

(assert (=> b!5711806 m!6664682))

(declare-fun m!6665458 () Bool)

(assert (=> b!5711808 m!6665458))

(declare-fun m!6665460 () Bool)

(assert (=> b!5711812 m!6665460))

(declare-fun m!6665462 () Bool)

(assert (=> b!5711805 m!6665462))

(declare-fun m!6665464 () Bool)

(assert (=> d!1801924 m!6665464))

(declare-fun m!6665466 () Bool)

(assert (=> d!1801924 m!6665466))

(assert (=> b!5710964 d!1801924))

(declare-fun d!1801926 () Bool)

(declare-fun c!1006850 () Bool)

(assert (=> d!1801926 (= c!1006850 (isEmpty!35158 (t!376734 s!2326)))))

(declare-fun e!3513010 () Bool)

(assert (=> d!1801926 (= (matchZipper!1843 lt!2275547 (t!376734 s!2326)) e!3513010)))

(declare-fun b!5711813 () Bool)

(assert (=> b!5711813 (= e!3513010 (nullableZipper!1659 lt!2275547))))

(declare-fun b!5711814 () Bool)

(assert (=> b!5711814 (= e!3513010 (matchZipper!1843 (derivationStepZipper!1788 lt!2275547 (head!12098 (t!376734 s!2326))) (tail!11193 (t!376734 s!2326))))))

(assert (= (and d!1801926 c!1006850) b!5711813))

(assert (= (and d!1801926 (not c!1006850)) b!5711814))

(assert (=> d!1801926 m!6665272))

(declare-fun m!6665468 () Bool)

(assert (=> b!5711813 m!6665468))

(assert (=> b!5711814 m!6665276))

(assert (=> b!5711814 m!6665276))

(declare-fun m!6665470 () Bool)

(assert (=> b!5711814 m!6665470))

(assert (=> b!5711814 m!6665280))

(assert (=> b!5711814 m!6665470))

(assert (=> b!5711814 m!6665280))

(declare-fun m!6665472 () Bool)

(assert (=> b!5711814 m!6665472))

(assert (=> b!5710943 d!1801926))

(declare-fun d!1801928 () Bool)

(declare-fun lt!2275698 () Regex!15705)

(assert (=> d!1801928 (validRegex!7441 lt!2275698)))

(assert (=> d!1801928 (= lt!2275698 (generalisedUnion!1568 (unfocusZipperList!1133 zl!343)))))

(assert (=> d!1801928 (= (unfocusZipper!1447 zl!343) lt!2275698)))

(declare-fun bs!1334389 () Bool)

(assert (= bs!1334389 d!1801928))

(declare-fun m!6665474 () Bool)

(assert (=> bs!1334389 m!6665474))

(assert (=> bs!1334389 m!6664600))

(assert (=> bs!1334389 m!6664600))

(assert (=> bs!1334389 m!6664602))

(assert (=> b!5710966 d!1801928))

(declare-fun d!1801930 () Bool)

(declare-fun lt!2275699 () Regex!15705)

(assert (=> d!1801930 (validRegex!7441 lt!2275699)))

(assert (=> d!1801930 (= lt!2275699 (generalisedUnion!1568 (unfocusZipperList!1133 (Cons!63292 lt!2275519 Nil!63292))))))

(assert (=> d!1801930 (= (unfocusZipper!1447 (Cons!63292 lt!2275519 Nil!63292)) lt!2275699)))

(declare-fun bs!1334390 () Bool)

(assert (= bs!1334390 d!1801930))

(declare-fun m!6665476 () Bool)

(assert (=> bs!1334390 m!6665476))

(declare-fun m!6665478 () Bool)

(assert (=> bs!1334390 m!6665478))

(assert (=> bs!1334390 m!6665478))

(declare-fun m!6665480 () Bool)

(assert (=> bs!1334390 m!6665480))

(assert (=> b!5710945 d!1801930))

(declare-fun e!3513011 () (InoxSet Context!10178))

(declare-fun call!436016 () (InoxSet Context!10178))

(declare-fun b!5711815 () Bool)

(assert (=> b!5711815 (= e!3513011 ((_ map or) call!436016 (derivationStepZipperUp!973 (Context!10179 (t!376735 (exprs!5589 lt!2275527))) (h!69738 s!2326))))))

(declare-fun d!1801932 () Bool)

(declare-fun c!1006852 () Bool)

(declare-fun e!3513013 () Bool)

(assert (=> d!1801932 (= c!1006852 e!3513013)))

(declare-fun res!2411317 () Bool)

(assert (=> d!1801932 (=> (not res!2411317) (not e!3513013))))

(assert (=> d!1801932 (= res!2411317 ((_ is Cons!63291) (exprs!5589 lt!2275527)))))

(assert (=> d!1801932 (= (derivationStepZipperUp!973 lt!2275527 (h!69738 s!2326)) e!3513011)))

(declare-fun b!5711816 () Bool)

(declare-fun e!3513012 () (InoxSet Context!10178))

(assert (=> b!5711816 (= e!3513012 call!436016)))

(declare-fun b!5711817 () Bool)

(assert (=> b!5711817 (= e!3513012 ((as const (Array Context!10178 Bool)) false))))

(declare-fun bm!436011 () Bool)

(assert (=> bm!436011 (= call!436016 (derivationStepZipperDown!1047 (h!69739 (exprs!5589 lt!2275527)) (Context!10179 (t!376735 (exprs!5589 lt!2275527))) (h!69738 s!2326)))))

(declare-fun b!5711818 () Bool)

(assert (=> b!5711818 (= e!3513011 e!3513012)))

(declare-fun c!1006851 () Bool)

(assert (=> b!5711818 (= c!1006851 ((_ is Cons!63291) (exprs!5589 lt!2275527)))))

(declare-fun b!5711819 () Bool)

(assert (=> b!5711819 (= e!3513013 (nullable!5737 (h!69739 (exprs!5589 lt!2275527))))))

(assert (= (and d!1801932 res!2411317) b!5711819))

(assert (= (and d!1801932 c!1006852) b!5711815))

(assert (= (and d!1801932 (not c!1006852)) b!5711818))

(assert (= (and b!5711818 c!1006851) b!5711816))

(assert (= (and b!5711818 (not c!1006851)) b!5711817))

(assert (= (or b!5711815 b!5711816) bm!436011))

(declare-fun m!6665482 () Bool)

(assert (=> b!5711815 m!6665482))

(declare-fun m!6665484 () Bool)

(assert (=> bm!436011 m!6665484))

(declare-fun m!6665486 () Bool)

(assert (=> b!5711819 m!6665486))

(assert (=> b!5710946 d!1801932))

(declare-fun e!3513014 () (InoxSet Context!10178))

(declare-fun b!5711820 () Bool)

(declare-fun call!436017 () (InoxSet Context!10178))

(assert (=> b!5711820 (= e!3513014 ((_ map or) call!436017 (derivationStepZipperUp!973 (Context!10179 (t!376735 (exprs!5589 (Context!10179 (Cons!63291 (h!69739 (exprs!5589 (h!69740 zl!343))) (t!376735 (exprs!5589 (h!69740 zl!343)))))))) (h!69738 s!2326))))))

(declare-fun d!1801934 () Bool)

(declare-fun c!1006854 () Bool)

(declare-fun e!3513016 () Bool)

(assert (=> d!1801934 (= c!1006854 e!3513016)))

(declare-fun res!2411318 () Bool)

(assert (=> d!1801934 (=> (not res!2411318) (not e!3513016))))

(assert (=> d!1801934 (= res!2411318 ((_ is Cons!63291) (exprs!5589 (Context!10179 (Cons!63291 (h!69739 (exprs!5589 (h!69740 zl!343))) (t!376735 (exprs!5589 (h!69740 zl!343))))))))))

(assert (=> d!1801934 (= (derivationStepZipperUp!973 (Context!10179 (Cons!63291 (h!69739 (exprs!5589 (h!69740 zl!343))) (t!376735 (exprs!5589 (h!69740 zl!343))))) (h!69738 s!2326)) e!3513014)))

(declare-fun b!5711821 () Bool)

(declare-fun e!3513015 () (InoxSet Context!10178))

(assert (=> b!5711821 (= e!3513015 call!436017)))

(declare-fun b!5711822 () Bool)

(assert (=> b!5711822 (= e!3513015 ((as const (Array Context!10178 Bool)) false))))

(declare-fun bm!436012 () Bool)

(assert (=> bm!436012 (= call!436017 (derivationStepZipperDown!1047 (h!69739 (exprs!5589 (Context!10179 (Cons!63291 (h!69739 (exprs!5589 (h!69740 zl!343))) (t!376735 (exprs!5589 (h!69740 zl!343))))))) (Context!10179 (t!376735 (exprs!5589 (Context!10179 (Cons!63291 (h!69739 (exprs!5589 (h!69740 zl!343))) (t!376735 (exprs!5589 (h!69740 zl!343)))))))) (h!69738 s!2326)))))

(declare-fun b!5711823 () Bool)

(assert (=> b!5711823 (= e!3513014 e!3513015)))

(declare-fun c!1006853 () Bool)

(assert (=> b!5711823 (= c!1006853 ((_ is Cons!63291) (exprs!5589 (Context!10179 (Cons!63291 (h!69739 (exprs!5589 (h!69740 zl!343))) (t!376735 (exprs!5589 (h!69740 zl!343))))))))))

(declare-fun b!5711824 () Bool)

(assert (=> b!5711824 (= e!3513016 (nullable!5737 (h!69739 (exprs!5589 (Context!10179 (Cons!63291 (h!69739 (exprs!5589 (h!69740 zl!343))) (t!376735 (exprs!5589 (h!69740 zl!343)))))))))))

(assert (= (and d!1801934 res!2411318) b!5711824))

(assert (= (and d!1801934 c!1006854) b!5711820))

(assert (= (and d!1801934 (not c!1006854)) b!5711823))

(assert (= (and b!5711823 c!1006853) b!5711821))

(assert (= (and b!5711823 (not c!1006853)) b!5711822))

(assert (= (or b!5711820 b!5711821) bm!436012))

(declare-fun m!6665488 () Bool)

(assert (=> b!5711820 m!6665488))

(declare-fun m!6665490 () Bool)

(assert (=> bm!436012 m!6665490))

(declare-fun m!6665492 () Bool)

(assert (=> b!5711824 m!6665492))

(assert (=> b!5710946 d!1801934))

(declare-fun d!1801936 () Bool)

(assert (=> d!1801936 (= (flatMap!1318 z!1189 lambda!308174) (choose!43176 z!1189 lambda!308174))))

(declare-fun bs!1334391 () Bool)

(assert (= bs!1334391 d!1801936))

(declare-fun m!6665494 () Bool)

(assert (=> bs!1334391 m!6665494))

(assert (=> b!5710946 d!1801936))

(declare-fun b!5711825 () Bool)

(declare-fun call!436018 () (InoxSet Context!10178))

(declare-fun e!3513017 () (InoxSet Context!10178))

(assert (=> b!5711825 (= e!3513017 ((_ map or) call!436018 (derivationStepZipperUp!973 (Context!10179 (t!376735 (exprs!5589 (h!69740 zl!343)))) (h!69738 s!2326))))))

(declare-fun d!1801938 () Bool)

(declare-fun c!1006856 () Bool)

(declare-fun e!3513019 () Bool)

(assert (=> d!1801938 (= c!1006856 e!3513019)))

(declare-fun res!2411319 () Bool)

(assert (=> d!1801938 (=> (not res!2411319) (not e!3513019))))

(assert (=> d!1801938 (= res!2411319 ((_ is Cons!63291) (exprs!5589 (h!69740 zl!343))))))

(assert (=> d!1801938 (= (derivationStepZipperUp!973 (h!69740 zl!343) (h!69738 s!2326)) e!3513017)))

(declare-fun b!5711826 () Bool)

(declare-fun e!3513018 () (InoxSet Context!10178))

(assert (=> b!5711826 (= e!3513018 call!436018)))

(declare-fun b!5711827 () Bool)

(assert (=> b!5711827 (= e!3513018 ((as const (Array Context!10178 Bool)) false))))

(declare-fun bm!436013 () Bool)

(assert (=> bm!436013 (= call!436018 (derivationStepZipperDown!1047 (h!69739 (exprs!5589 (h!69740 zl!343))) (Context!10179 (t!376735 (exprs!5589 (h!69740 zl!343)))) (h!69738 s!2326)))))

(declare-fun b!5711828 () Bool)

(assert (=> b!5711828 (= e!3513017 e!3513018)))

(declare-fun c!1006855 () Bool)

(assert (=> b!5711828 (= c!1006855 ((_ is Cons!63291) (exprs!5589 (h!69740 zl!343))))))

(declare-fun b!5711829 () Bool)

(assert (=> b!5711829 (= e!3513019 (nullable!5737 (h!69739 (exprs!5589 (h!69740 zl!343)))))))

(assert (= (and d!1801938 res!2411319) b!5711829))

(assert (= (and d!1801938 c!1006856) b!5711825))

(assert (= (and d!1801938 (not c!1006856)) b!5711828))

(assert (= (and b!5711828 c!1006855) b!5711826))

(assert (= (and b!5711828 (not c!1006855)) b!5711827))

(assert (= (or b!5711825 b!5711826) bm!436013))

(declare-fun m!6665496 () Bool)

(assert (=> b!5711825 m!6665496))

(declare-fun m!6665498 () Bool)

(assert (=> bm!436013 m!6665498))

(assert (=> b!5711829 m!6664656))

(assert (=> b!5710946 d!1801938))

(declare-fun b!5711830 () Bool)

(declare-fun e!3513022 () (InoxSet Context!10178))

(declare-fun call!436023 () (InoxSet Context!10178))

(declare-fun call!436019 () (InoxSet Context!10178))

(assert (=> b!5711830 (= e!3513022 ((_ map or) call!436023 call!436019))))

(declare-fun call!436022 () List!63415)

(declare-fun bm!436015 () Bool)

(declare-fun c!1006861 () Bool)

(declare-fun c!1006859 () Bool)

(declare-fun c!1006857 () Bool)

(assert (=> bm!436015 (= call!436019 (derivationStepZipperDown!1047 (ite c!1006859 (regTwo!31923 (h!69739 (exprs!5589 (h!69740 zl!343)))) (ite c!1006861 (regTwo!31922 (h!69739 (exprs!5589 (h!69740 zl!343)))) (ite c!1006857 (regOne!31922 (h!69739 (exprs!5589 (h!69740 zl!343)))) (reg!16034 (h!69739 (exprs!5589 (h!69740 zl!343))))))) (ite (or c!1006859 c!1006861) lt!2275527 (Context!10179 call!436022)) (h!69738 s!2326)))))

(declare-fun bm!436016 () Bool)

(declare-fun call!436024 () List!63415)

(assert (=> bm!436016 (= call!436024 ($colon$colon!1726 (exprs!5589 lt!2275527) (ite (or c!1006861 c!1006857) (regTwo!31922 (h!69739 (exprs!5589 (h!69740 zl!343)))) (h!69739 (exprs!5589 (h!69740 zl!343))))))))

(declare-fun b!5711831 () Bool)

(declare-fun e!3513024 () (InoxSet Context!10178))

(declare-fun call!436020 () (InoxSet Context!10178))

(assert (=> b!5711831 (= e!3513024 call!436020)))

(declare-fun b!5711832 () Bool)

(declare-fun c!1006860 () Bool)

(assert (=> b!5711832 (= c!1006860 ((_ is Star!15705) (h!69739 (exprs!5589 (h!69740 zl!343)))))))

(declare-fun e!3513025 () (InoxSet Context!10178))

(assert (=> b!5711832 (= e!3513024 e!3513025)))

(declare-fun b!5711833 () Bool)

(assert (=> b!5711833 (= e!3513025 ((as const (Array Context!10178 Bool)) false))))

(declare-fun b!5711834 () Bool)

(declare-fun e!3513020 () (InoxSet Context!10178))

(assert (=> b!5711834 (= e!3513020 (store ((as const (Array Context!10178 Bool)) false) lt!2275527 true))))

(declare-fun bm!436017 () Bool)

(assert (=> bm!436017 (= call!436023 (derivationStepZipperDown!1047 (ite c!1006859 (regOne!31923 (h!69739 (exprs!5589 (h!69740 zl!343)))) (regOne!31922 (h!69739 (exprs!5589 (h!69740 zl!343))))) (ite c!1006859 lt!2275527 (Context!10179 call!436024)) (h!69738 s!2326)))))

(declare-fun d!1801940 () Bool)

(declare-fun c!1006858 () Bool)

(assert (=> d!1801940 (= c!1006858 (and ((_ is ElementMatch!15705) (h!69739 (exprs!5589 (h!69740 zl!343)))) (= (c!1006621 (h!69739 (exprs!5589 (h!69740 zl!343)))) (h!69738 s!2326))))))

(assert (=> d!1801940 (= (derivationStepZipperDown!1047 (h!69739 (exprs!5589 (h!69740 zl!343))) lt!2275527 (h!69738 s!2326)) e!3513020)))

(declare-fun bm!436014 () Bool)

(assert (=> bm!436014 (= call!436022 call!436024)))

(declare-fun bm!436018 () Bool)

(declare-fun call!436021 () (InoxSet Context!10178))

(assert (=> bm!436018 (= call!436021 call!436019)))

(declare-fun b!5711835 () Bool)

(assert (=> b!5711835 (= e!3513020 e!3513022)))

(assert (=> b!5711835 (= c!1006859 ((_ is Union!15705) (h!69739 (exprs!5589 (h!69740 zl!343)))))))

(declare-fun b!5711836 () Bool)

(declare-fun e!3513023 () (InoxSet Context!10178))

(assert (=> b!5711836 (= e!3513023 ((_ map or) call!436023 call!436021))))

(declare-fun b!5711837 () Bool)

(declare-fun e!3513021 () Bool)

(assert (=> b!5711837 (= c!1006861 e!3513021)))

(declare-fun res!2411320 () Bool)

(assert (=> b!5711837 (=> (not res!2411320) (not e!3513021))))

(assert (=> b!5711837 (= res!2411320 ((_ is Concat!24550) (h!69739 (exprs!5589 (h!69740 zl!343)))))))

(assert (=> b!5711837 (= e!3513022 e!3513023)))

(declare-fun bm!436019 () Bool)

(assert (=> bm!436019 (= call!436020 call!436021)))

(declare-fun b!5711838 () Bool)

(assert (=> b!5711838 (= e!3513023 e!3513024)))

(assert (=> b!5711838 (= c!1006857 ((_ is Concat!24550) (h!69739 (exprs!5589 (h!69740 zl!343)))))))

(declare-fun b!5711839 () Bool)

(assert (=> b!5711839 (= e!3513025 call!436020)))

(declare-fun b!5711840 () Bool)

(assert (=> b!5711840 (= e!3513021 (nullable!5737 (regOne!31922 (h!69739 (exprs!5589 (h!69740 zl!343))))))))

(assert (= (and d!1801940 c!1006858) b!5711834))

(assert (= (and d!1801940 (not c!1006858)) b!5711835))

(assert (= (and b!5711835 c!1006859) b!5711830))

(assert (= (and b!5711835 (not c!1006859)) b!5711837))

(assert (= (and b!5711837 res!2411320) b!5711840))

(assert (= (and b!5711837 c!1006861) b!5711836))

(assert (= (and b!5711837 (not c!1006861)) b!5711838))

(assert (= (and b!5711838 c!1006857) b!5711831))

(assert (= (and b!5711838 (not c!1006857)) b!5711832))

(assert (= (and b!5711832 c!1006860) b!5711839))

(assert (= (and b!5711832 (not c!1006860)) b!5711833))

(assert (= (or b!5711831 b!5711839) bm!436014))

(assert (= (or b!5711831 b!5711839) bm!436019))

(assert (= (or b!5711836 bm!436014) bm!436016))

(assert (= (or b!5711836 bm!436019) bm!436018))

(assert (= (or b!5711830 bm!436018) bm!436015))

(assert (= (or b!5711830 b!5711836) bm!436017))

(declare-fun m!6665500 () Bool)

(assert (=> b!5711834 m!6665500))

(declare-fun m!6665502 () Bool)

(assert (=> bm!436016 m!6665502))

(declare-fun m!6665504 () Bool)

(assert (=> bm!436017 m!6665504))

(declare-fun m!6665506 () Bool)

(assert (=> b!5711840 m!6665506))

(declare-fun m!6665508 () Bool)

(assert (=> bm!436015 m!6665508))

(assert (=> b!5710946 d!1801940))

(declare-fun d!1801942 () Bool)

(declare-fun nullableFct!1805 (Regex!15705) Bool)

(assert (=> d!1801942 (= (nullable!5737 (h!69739 (exprs!5589 (h!69740 zl!343)))) (nullableFct!1805 (h!69739 (exprs!5589 (h!69740 zl!343)))))))

(declare-fun bs!1334392 () Bool)

(assert (= bs!1334392 d!1801942))

(declare-fun m!6665510 () Bool)

(assert (=> bs!1334392 m!6665510))

(assert (=> b!5710946 d!1801942))

(declare-fun d!1801944 () Bool)

(assert (=> d!1801944 (= (flatMap!1318 z!1189 lambda!308174) (dynLambda!24768 lambda!308174 (h!69740 zl!343)))))

(declare-fun lt!2275700 () Unit!156352)

(assert (=> d!1801944 (= lt!2275700 (choose!43177 z!1189 (h!69740 zl!343) lambda!308174))))

(assert (=> d!1801944 (= z!1189 (store ((as const (Array Context!10178 Bool)) false) (h!69740 zl!343) true))))

(assert (=> d!1801944 (= (lemmaFlatMapOnSingletonSet!850 z!1189 (h!69740 zl!343) lambda!308174) lt!2275700)))

(declare-fun b_lambda!215897 () Bool)

(assert (=> (not b_lambda!215897) (not d!1801944)))

(declare-fun bs!1334393 () Bool)

(assert (= bs!1334393 d!1801944))

(assert (=> bs!1334393 m!6664658))

(declare-fun m!6665512 () Bool)

(assert (=> bs!1334393 m!6665512))

(declare-fun m!6665514 () Bool)

(assert (=> bs!1334393 m!6665514))

(declare-fun m!6665516 () Bool)

(assert (=> bs!1334393 m!6665516))

(assert (=> b!5710946 d!1801944))

(declare-fun b!5711841 () Bool)

(declare-fun e!3513029 () Bool)

(assert (=> b!5711841 (= e!3513029 (= (head!12098 s!2326) (c!1006621 lt!2275552)))))

(declare-fun b!5711842 () Bool)

(declare-fun e!3513031 () Bool)

(declare-fun lt!2275701 () Bool)

(declare-fun call!436025 () Bool)

(assert (=> b!5711842 (= e!3513031 (= lt!2275701 call!436025))))

(declare-fun b!5711843 () Bool)

(declare-fun e!3513028 () Bool)

(assert (=> b!5711843 (= e!3513028 (nullable!5737 lt!2275552))))

(declare-fun b!5711844 () Bool)

(declare-fun res!2411323 () Bool)

(assert (=> b!5711844 (=> (not res!2411323) (not e!3513029))))

(assert (=> b!5711844 (= res!2411323 (isEmpty!35158 (tail!11193 s!2326)))))

(declare-fun b!5711845 () Bool)

(declare-fun res!2411325 () Bool)

(declare-fun e!3513027 () Bool)

(assert (=> b!5711845 (=> res!2411325 e!3513027)))

(assert (=> b!5711845 (= res!2411325 e!3513029)))

(declare-fun res!2411322 () Bool)

(assert (=> b!5711845 (=> (not res!2411322) (not e!3513029))))

(assert (=> b!5711845 (= res!2411322 lt!2275701)))

(declare-fun b!5711846 () Bool)

(declare-fun e!3513026 () Bool)

(assert (=> b!5711846 (= e!3513031 e!3513026)))

(declare-fun c!1006862 () Bool)

(assert (=> b!5711846 (= c!1006862 ((_ is EmptyLang!15705) lt!2275552))))

(declare-fun b!5711847 () Bool)

(declare-fun res!2411321 () Bool)

(assert (=> b!5711847 (=> (not res!2411321) (not e!3513029))))

(assert (=> b!5711847 (= res!2411321 (not call!436025))))

(declare-fun b!5711848 () Bool)

(declare-fun e!3513032 () Bool)

(assert (=> b!5711848 (= e!3513027 e!3513032)))

(declare-fun res!2411326 () Bool)

(assert (=> b!5711848 (=> (not res!2411326) (not e!3513032))))

(assert (=> b!5711848 (= res!2411326 (not lt!2275701))))

(declare-fun b!5711849 () Bool)

(declare-fun res!2411327 () Bool)

(assert (=> b!5711849 (=> res!2411327 e!3513027)))

(assert (=> b!5711849 (= res!2411327 (not ((_ is ElementMatch!15705) lt!2275552)))))

(assert (=> b!5711849 (= e!3513026 e!3513027)))

(declare-fun b!5711850 () Bool)

(declare-fun e!3513030 () Bool)

(assert (=> b!5711850 (= e!3513032 e!3513030)))

(declare-fun res!2411324 () Bool)

(assert (=> b!5711850 (=> res!2411324 e!3513030)))

(assert (=> b!5711850 (= res!2411324 call!436025)))

(declare-fun d!1801946 () Bool)

(assert (=> d!1801946 e!3513031))

(declare-fun c!1006863 () Bool)

(assert (=> d!1801946 (= c!1006863 ((_ is EmptyExpr!15705) lt!2275552))))

(assert (=> d!1801946 (= lt!2275701 e!3513028)))

(declare-fun c!1006864 () Bool)

(assert (=> d!1801946 (= c!1006864 (isEmpty!35158 s!2326))))

(assert (=> d!1801946 (validRegex!7441 lt!2275552)))

(assert (=> d!1801946 (= (matchR!7890 lt!2275552 s!2326) lt!2275701)))

(declare-fun bm!436020 () Bool)

(assert (=> bm!436020 (= call!436025 (isEmpty!35158 s!2326))))

(declare-fun b!5711851 () Bool)

(assert (=> b!5711851 (= e!3513028 (matchR!7890 (derivativeStep!4511 lt!2275552 (head!12098 s!2326)) (tail!11193 s!2326)))))

(declare-fun b!5711852 () Bool)

(assert (=> b!5711852 (= e!3513030 (not (= (head!12098 s!2326) (c!1006621 lt!2275552))))))

(declare-fun b!5711853 () Bool)

(assert (=> b!5711853 (= e!3513026 (not lt!2275701))))

(declare-fun b!5711854 () Bool)

(declare-fun res!2411328 () Bool)

(assert (=> b!5711854 (=> res!2411328 e!3513030)))

(assert (=> b!5711854 (= res!2411328 (not (isEmpty!35158 (tail!11193 s!2326))))))

(assert (= (and d!1801946 c!1006864) b!5711843))

(assert (= (and d!1801946 (not c!1006864)) b!5711851))

(assert (= (and d!1801946 c!1006863) b!5711842))

(assert (= (and d!1801946 (not c!1006863)) b!5711846))

(assert (= (and b!5711846 c!1006862) b!5711853))

(assert (= (and b!5711846 (not c!1006862)) b!5711849))

(assert (= (and b!5711849 (not res!2411327)) b!5711845))

(assert (= (and b!5711845 res!2411322) b!5711847))

(assert (= (and b!5711847 res!2411321) b!5711844))

(assert (= (and b!5711844 res!2411323) b!5711841))

(assert (= (and b!5711845 (not res!2411325)) b!5711848))

(assert (= (and b!5711848 res!2411326) b!5711850))

(assert (= (and b!5711850 (not res!2411324)) b!5711854))

(assert (= (and b!5711854 (not res!2411328)) b!5711852))

(assert (= (or b!5711842 b!5711847 b!5711850) bm!436020))

(declare-fun m!6665518 () Bool)

(assert (=> d!1801946 m!6665518))

(declare-fun m!6665520 () Bool)

(assert (=> d!1801946 m!6665520))

(assert (=> bm!436020 m!6665518))

(declare-fun m!6665522 () Bool)

(assert (=> b!5711852 m!6665522))

(declare-fun m!6665524 () Bool)

(assert (=> b!5711843 m!6665524))

(assert (=> b!5711841 m!6665522))

(declare-fun m!6665526 () Bool)

(assert (=> b!5711854 m!6665526))

(assert (=> b!5711854 m!6665526))

(declare-fun m!6665528 () Bool)

(assert (=> b!5711854 m!6665528))

(assert (=> b!5711851 m!6665522))

(assert (=> b!5711851 m!6665522))

(declare-fun m!6665530 () Bool)

(assert (=> b!5711851 m!6665530))

(assert (=> b!5711851 m!6665526))

(assert (=> b!5711851 m!6665530))

(assert (=> b!5711851 m!6665526))

(declare-fun m!6665532 () Bool)

(assert (=> b!5711851 m!6665532))

(assert (=> b!5711844 m!6665526))

(assert (=> b!5711844 m!6665526))

(assert (=> b!5711844 m!6665528))

(assert (=> b!5710977 d!1801946))

(declare-fun bs!1334394 () Bool)

(declare-fun b!5711862 () Bool)

(assert (= bs!1334394 (and b!5711862 b!5710952)))

(declare-fun lambda!308270 () Int)

(assert (=> bs!1334394 (not (= lambda!308270 lambda!308179))))

(declare-fun bs!1334395 () Bool)

(assert (= bs!1334395 (and b!5711862 d!1801754)))

(assert (=> bs!1334395 (not (= lambda!308270 lambda!308225))))

(declare-fun bs!1334396 () Bool)

(assert (= bs!1334396 (and b!5711862 b!5711561)))

(assert (=> bs!1334396 (not (= lambda!308270 lambda!308247))))

(declare-fun bs!1334397 () Bool)

(assert (= bs!1334397 (and b!5711862 d!1801890)))

(assert (=> bs!1334397 (not (= lambda!308270 lambda!308259))))

(assert (=> bs!1334394 (not (= lambda!308270 lambda!308177))))

(declare-fun bs!1334398 () Bool)

(assert (= bs!1334398 (and b!5711862 b!5711568)))

(assert (=> bs!1334398 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (reg!16034 lt!2275552) (reg!16034 lt!2275560)) (= lt!2275552 lt!2275560)) (= lambda!308270 lambda!308246))))

(declare-fun bs!1334399 () Bool)

(assert (= bs!1334399 (and b!5711862 b!5710970)))

(assert (=> bs!1334399 (not (= lambda!308270 lambda!308172))))

(assert (=> bs!1334395 (not (= lambda!308270 lambda!308227))))

(declare-fun bs!1334400 () Bool)

(assert (= bs!1334400 (and b!5711862 d!1801796)))

(assert (=> bs!1334400 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (reg!16034 lt!2275552) (reg!16034 (regOne!31922 r!7292))) (= lt!2275552 (Star!15705 (reg!16034 (regOne!31922 r!7292))))) (= lambda!308270 lambda!308236))))

(assert (=> bs!1334400 (not (= lambda!308270 lambda!308234))))

(declare-fun bs!1334401 () Bool)

(assert (= bs!1334401 (and b!5711862 d!1801880)))

(assert (=> bs!1334401 (not (= lambda!308270 lambda!308258))))

(declare-fun bs!1334402 () Bool)

(assert (= bs!1334402 (and b!5711862 b!5710968)))

(assert (=> bs!1334402 (not (= lambda!308270 lambda!308175))))

(declare-fun bs!1334403 () Bool)

(assert (= bs!1334403 (and b!5711862 d!1801914)))

(assert (=> bs!1334403 (not (= lambda!308270 lambda!308264))))

(assert (=> bs!1334397 (not (= lambda!308270 lambda!308260))))

(assert (=> bs!1334399 (not (= lambda!308270 lambda!308173))))

(declare-fun bs!1334404 () Bool)

(assert (= bs!1334404 (and b!5711862 d!1801916)))

(assert (=> bs!1334404 (not (= lambda!308270 lambda!308265))))

(assert (=> bs!1334404 (not (= lambda!308270 lambda!308266))))

(assert (=> bs!1334402 (not (= lambda!308270 lambda!308176))))

(assert (=> bs!1334394 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (reg!16034 lt!2275552) (reg!16034 (regOne!31922 r!7292))) (= lt!2275552 lt!2275560)) (= lambda!308270 lambda!308178))))

(declare-fun bs!1334405 () Bool)

(assert (= bs!1334405 (and b!5711862 d!1801734)))

(assert (=> bs!1334405 (not (= lambda!308270 lambda!308209))))

(assert (=> b!5711862 true))

(assert (=> b!5711862 true))

(declare-fun bs!1334406 () Bool)

(declare-fun b!5711855 () Bool)

(assert (= bs!1334406 (and b!5711855 b!5710952)))

(declare-fun lambda!308271 () Int)

(assert (=> bs!1334406 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (regOne!31922 lt!2275552) (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 lt!2275552) lt!2275560)) (= lambda!308271 lambda!308179))))

(declare-fun bs!1334407 () Bool)

(assert (= bs!1334407 (and b!5711855 d!1801754)))

(assert (=> bs!1334407 (not (= lambda!308271 lambda!308225))))

(declare-fun bs!1334408 () Bool)

(assert (= bs!1334408 (and b!5711855 b!5711561)))

(assert (=> bs!1334408 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (regOne!31922 lt!2275552) (regOne!31922 lt!2275560)) (= (regTwo!31922 lt!2275552) (regTwo!31922 lt!2275560))) (= lambda!308271 lambda!308247))))

(declare-fun bs!1334409 () Bool)

(assert (= bs!1334409 (and b!5711855 d!1801890)))

(assert (=> bs!1334409 (not (= lambda!308271 lambda!308259))))

(declare-fun bs!1334410 () Bool)

(assert (= bs!1334410 (and b!5711855 b!5711862)))

(assert (=> bs!1334410 (not (= lambda!308271 lambda!308270))))

(assert (=> bs!1334406 (not (= lambda!308271 lambda!308177))))

(declare-fun bs!1334411 () Bool)

(assert (= bs!1334411 (and b!5711855 b!5711568)))

(assert (=> bs!1334411 (not (= lambda!308271 lambda!308246))))

(declare-fun bs!1334412 () Bool)

(assert (= bs!1334412 (and b!5711855 b!5710970)))

(assert (=> bs!1334412 (not (= lambda!308271 lambda!308172))))

(assert (=> bs!1334407 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (regOne!31922 lt!2275552) (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 lt!2275552) lt!2275560)) (= lambda!308271 lambda!308227))))

(declare-fun bs!1334413 () Bool)

(assert (= bs!1334413 (and b!5711855 d!1801796)))

(assert (=> bs!1334413 (not (= lambda!308271 lambda!308236))))

(assert (=> bs!1334413 (not (= lambda!308271 lambda!308234))))

(declare-fun bs!1334414 () Bool)

(assert (= bs!1334414 (and b!5711855 d!1801880)))

(assert (=> bs!1334414 (not (= lambda!308271 lambda!308258))))

(declare-fun bs!1334415 () Bool)

(assert (= bs!1334415 (and b!5711855 b!5710968)))

(assert (=> bs!1334415 (not (= lambda!308271 lambda!308175))))

(declare-fun bs!1334416 () Bool)

(assert (= bs!1334416 (and b!5711855 d!1801914)))

(assert (=> bs!1334416 (not (= lambda!308271 lambda!308264))))

(assert (=> bs!1334409 (= (and (= (regOne!31922 lt!2275552) lt!2275560) (= (regTwo!31922 lt!2275552) (regTwo!31922 r!7292))) (= lambda!308271 lambda!308260))))

(assert (=> bs!1334412 (= (and (= (regOne!31922 lt!2275552) (regOne!31922 r!7292)) (= (regTwo!31922 lt!2275552) (regTwo!31922 r!7292))) (= lambda!308271 lambda!308173))))

(declare-fun bs!1334417 () Bool)

(assert (= bs!1334417 (and b!5711855 d!1801916)))

(assert (=> bs!1334417 (not (= lambda!308271 lambda!308265))))

(assert (=> bs!1334417 (= (and (= (regOne!31922 lt!2275552) (regOne!31922 r!7292)) (= (regTwo!31922 lt!2275552) (regTwo!31922 r!7292))) (= lambda!308271 lambda!308266))))

(assert (=> bs!1334415 (= (and (= (regOne!31922 lt!2275552) lt!2275560) (= (regTwo!31922 lt!2275552) (regTwo!31922 r!7292))) (= lambda!308271 lambda!308176))))

(assert (=> bs!1334406 (not (= lambda!308271 lambda!308178))))

(declare-fun bs!1334418 () Bool)

(assert (= bs!1334418 (and b!5711855 d!1801734)))

(assert (=> bs!1334418 (not (= lambda!308271 lambda!308209))))

(assert (=> b!5711855 true))

(assert (=> b!5711855 true))

(declare-fun e!3513037 () Bool)

(declare-fun call!436027 () Bool)

(assert (=> b!5711855 (= e!3513037 call!436027)))

(declare-fun b!5711856 () Bool)

(declare-fun e!3513039 () Bool)

(assert (=> b!5711856 (= e!3513039 (matchRSpec!2808 (regTwo!31923 lt!2275552) s!2326))))

(declare-fun bm!436021 () Bool)

(declare-fun call!436026 () Bool)

(assert (=> bm!436021 (= call!436026 (isEmpty!35158 s!2326))))

(declare-fun d!1801948 () Bool)

(declare-fun c!1006867 () Bool)

(assert (=> d!1801948 (= c!1006867 ((_ is EmptyExpr!15705) lt!2275552))))

(declare-fun e!3513038 () Bool)

(assert (=> d!1801948 (= (matchRSpec!2808 lt!2275552 s!2326) e!3513038)))

(declare-fun b!5711857 () Bool)

(declare-fun c!1006865 () Bool)

(assert (=> b!5711857 (= c!1006865 ((_ is ElementMatch!15705) lt!2275552))))

(declare-fun e!3513033 () Bool)

(declare-fun e!3513035 () Bool)

(assert (=> b!5711857 (= e!3513033 e!3513035)))

(declare-fun b!5711858 () Bool)

(assert (=> b!5711858 (= e!3513038 e!3513033)))

(declare-fun res!2411330 () Bool)

(assert (=> b!5711858 (= res!2411330 (not ((_ is EmptyLang!15705) lt!2275552)))))

(assert (=> b!5711858 (=> (not res!2411330) (not e!3513033))))

(declare-fun b!5711859 () Bool)

(assert (=> b!5711859 (= e!3513035 (= s!2326 (Cons!63290 (c!1006621 lt!2275552) Nil!63290)))))

(declare-fun b!5711860 () Bool)

(declare-fun e!3513036 () Bool)

(assert (=> b!5711860 (= e!3513036 e!3513039)))

(declare-fun res!2411329 () Bool)

(assert (=> b!5711860 (= res!2411329 (matchRSpec!2808 (regOne!31923 lt!2275552) s!2326))))

(assert (=> b!5711860 (=> res!2411329 e!3513039)))

(declare-fun b!5711861 () Bool)

(assert (=> b!5711861 (= e!3513036 e!3513037)))

(declare-fun c!1006866 () Bool)

(assert (=> b!5711861 (= c!1006866 ((_ is Star!15705) lt!2275552))))

(declare-fun e!3513034 () Bool)

(assert (=> b!5711862 (= e!3513034 call!436027)))

(declare-fun b!5711863 () Bool)

(declare-fun c!1006868 () Bool)

(assert (=> b!5711863 (= c!1006868 ((_ is Union!15705) lt!2275552))))

(assert (=> b!5711863 (= e!3513035 e!3513036)))

(declare-fun bm!436022 () Bool)

(assert (=> bm!436022 (= call!436027 (Exists!2805 (ite c!1006866 lambda!308270 lambda!308271)))))

(declare-fun b!5711864 () Bool)

(declare-fun res!2411331 () Bool)

(assert (=> b!5711864 (=> res!2411331 e!3513034)))

(assert (=> b!5711864 (= res!2411331 call!436026)))

(assert (=> b!5711864 (= e!3513037 e!3513034)))

(declare-fun b!5711865 () Bool)

(assert (=> b!5711865 (= e!3513038 call!436026)))

(assert (= (and d!1801948 c!1006867) b!5711865))

(assert (= (and d!1801948 (not c!1006867)) b!5711858))

(assert (= (and b!5711858 res!2411330) b!5711857))

(assert (= (and b!5711857 c!1006865) b!5711859))

(assert (= (and b!5711857 (not c!1006865)) b!5711863))

(assert (= (and b!5711863 c!1006868) b!5711860))

(assert (= (and b!5711863 (not c!1006868)) b!5711861))

(assert (= (and b!5711860 (not res!2411329)) b!5711856))

(assert (= (and b!5711861 c!1006866) b!5711864))

(assert (= (and b!5711861 (not c!1006866)) b!5711855))

(assert (= (and b!5711864 (not res!2411331)) b!5711862))

(assert (= (or b!5711862 b!5711855) bm!436022))

(assert (= (or b!5711865 b!5711864) bm!436021))

(declare-fun m!6665534 () Bool)

(assert (=> b!5711856 m!6665534))

(assert (=> bm!436021 m!6665518))

(declare-fun m!6665536 () Bool)

(assert (=> b!5711860 m!6665536))

(declare-fun m!6665538 () Bool)

(assert (=> bm!436022 m!6665538))

(assert (=> b!5710977 d!1801948))

(declare-fun d!1801950 () Bool)

(assert (=> d!1801950 (= (matchR!7890 lt!2275552 s!2326) (matchRSpec!2808 lt!2275552 s!2326))))

(declare-fun lt!2275702 () Unit!156352)

(assert (=> d!1801950 (= lt!2275702 (choose!43172 lt!2275552 s!2326))))

(assert (=> d!1801950 (validRegex!7441 lt!2275552)))

(assert (=> d!1801950 (= (mainMatchTheorem!2808 lt!2275552 s!2326) lt!2275702)))

(declare-fun bs!1334419 () Bool)

(assert (= bs!1334419 d!1801950))

(assert (=> bs!1334419 m!6664684))

(assert (=> bs!1334419 m!6664686))

(declare-fun m!6665540 () Bool)

(assert (=> bs!1334419 m!6665540))

(assert (=> bs!1334419 m!6665520))

(assert (=> b!5710977 d!1801950))

(declare-fun d!1801952 () Bool)

(assert (=> d!1801952 (= (nullable!5737 (regOne!31922 (regOne!31922 r!7292))) (nullableFct!1805 (regOne!31922 (regOne!31922 r!7292))))))

(declare-fun bs!1334420 () Bool)

(assert (= bs!1334420 d!1801952))

(declare-fun m!6665542 () Bool)

(assert (=> bs!1334420 m!6665542))

(assert (=> b!5710979 d!1801952))

(declare-fun d!1801954 () Bool)

(assert (=> d!1801954 (= (isEmpty!35160 (t!376735 (exprs!5589 (h!69740 zl!343)))) ((_ is Nil!63291) (t!376735 (exprs!5589 (h!69740 zl!343)))))))

(assert (=> b!5710960 d!1801954))

(declare-fun b!5711869 () Bool)

(declare-fun e!3513040 () Bool)

(declare-fun lt!2275703 () List!63414)

(assert (=> b!5711869 (= e!3513040 (or (not (= lt!2275556 Nil!63290)) (= lt!2275703 (_1!36105 lt!2275517))))))

(declare-fun b!5711866 () Bool)

(declare-fun e!3513041 () List!63414)

(assert (=> b!5711866 (= e!3513041 lt!2275556)))

(declare-fun b!5711867 () Bool)

(assert (=> b!5711867 (= e!3513041 (Cons!63290 (h!69738 (_1!36105 lt!2275517)) (++!13897 (t!376734 (_1!36105 lt!2275517)) lt!2275556)))))

(declare-fun d!1801956 () Bool)

(assert (=> d!1801956 e!3513040))

(declare-fun res!2411332 () Bool)

(assert (=> d!1801956 (=> (not res!2411332) (not e!3513040))))

(assert (=> d!1801956 (= res!2411332 (= (content!11491 lt!2275703) ((_ map or) (content!11491 (_1!36105 lt!2275517)) (content!11491 lt!2275556))))))

(assert (=> d!1801956 (= lt!2275703 e!3513041)))

(declare-fun c!1006869 () Bool)

(assert (=> d!1801956 (= c!1006869 ((_ is Nil!63290) (_1!36105 lt!2275517)))))

(assert (=> d!1801956 (= (++!13897 (_1!36105 lt!2275517) lt!2275556) lt!2275703)))

(declare-fun b!5711868 () Bool)

(declare-fun res!2411333 () Bool)

(assert (=> b!5711868 (=> (not res!2411333) (not e!3513040))))

(assert (=> b!5711868 (= res!2411333 (= (size!40019 lt!2275703) (+ (size!40019 (_1!36105 lt!2275517)) (size!40019 lt!2275556))))))

(assert (= (and d!1801956 c!1006869) b!5711866))

(assert (= (and d!1801956 (not c!1006869)) b!5711867))

(assert (= (and d!1801956 res!2411332) b!5711868))

(assert (= (and b!5711868 res!2411333) b!5711869))

(declare-fun m!6665544 () Bool)

(assert (=> b!5711867 m!6665544))

(declare-fun m!6665546 () Bool)

(assert (=> d!1801956 m!6665546))

(assert (=> d!1801956 m!6665118))

(declare-fun m!6665548 () Bool)

(assert (=> d!1801956 m!6665548))

(declare-fun m!6665550 () Bool)

(assert (=> b!5711868 m!6665550))

(assert (=> b!5711868 m!6665124))

(declare-fun m!6665552 () Bool)

(assert (=> b!5711868 m!6665552))

(assert (=> b!5710980 d!1801956))

(declare-fun e!3513042 () Bool)

(declare-fun b!5711873 () Bool)

(declare-fun lt!2275704 () List!63414)

(assert (=> b!5711873 (= e!3513042 (or (not (= (_2!36105 lt!2275548) Nil!63290)) (= lt!2275704 lt!2275525)))))

(declare-fun b!5711870 () Bool)

(declare-fun e!3513043 () List!63414)

(assert (=> b!5711870 (= e!3513043 (_2!36105 lt!2275548))))

(declare-fun b!5711871 () Bool)

(assert (=> b!5711871 (= e!3513043 (Cons!63290 (h!69738 lt!2275525) (++!13897 (t!376734 lt!2275525) (_2!36105 lt!2275548))))))

(declare-fun d!1801958 () Bool)

(assert (=> d!1801958 e!3513042))

(declare-fun res!2411334 () Bool)

(assert (=> d!1801958 (=> (not res!2411334) (not e!3513042))))

(assert (=> d!1801958 (= res!2411334 (= (content!11491 lt!2275704) ((_ map or) (content!11491 lt!2275525) (content!11491 (_2!36105 lt!2275548)))))))

(assert (=> d!1801958 (= lt!2275704 e!3513043)))

(declare-fun c!1006870 () Bool)

(assert (=> d!1801958 (= c!1006870 ((_ is Nil!63290) lt!2275525))))

(assert (=> d!1801958 (= (++!13897 lt!2275525 (_2!36105 lt!2275548)) lt!2275704)))

(declare-fun b!5711872 () Bool)

(declare-fun res!2411335 () Bool)

(assert (=> b!5711872 (=> (not res!2411335) (not e!3513042))))

(assert (=> b!5711872 (= res!2411335 (= (size!40019 lt!2275704) (+ (size!40019 lt!2275525) (size!40019 (_2!36105 lt!2275548)))))))

(assert (= (and d!1801958 c!1006870) b!5711870))

(assert (= (and d!1801958 (not c!1006870)) b!5711871))

(assert (= (and d!1801958 res!2411334) b!5711872))

(assert (= (and b!5711872 res!2411335) b!5711873))

(declare-fun m!6665554 () Bool)

(assert (=> b!5711871 m!6665554))

(declare-fun m!6665556 () Bool)

(assert (=> d!1801958 m!6665556))

(declare-fun m!6665558 () Bool)

(assert (=> d!1801958 m!6665558))

(assert (=> d!1801958 m!6665374))

(declare-fun m!6665560 () Bool)

(assert (=> b!5711872 m!6665560))

(declare-fun m!6665562 () Bool)

(assert (=> b!5711872 m!6665562))

(assert (=> b!5711872 m!6665380))

(assert (=> b!5710980 d!1801958))

(declare-fun b!5711877 () Bool)

(declare-fun e!3513044 () Bool)

(declare-fun lt!2275705 () List!63414)

(assert (=> b!5711877 (= e!3513044 (or (not (= (_2!36105 lt!2275548) Nil!63290)) (= lt!2275705 (_2!36105 lt!2275517))))))

(declare-fun b!5711874 () Bool)

(declare-fun e!3513045 () List!63414)

(assert (=> b!5711874 (= e!3513045 (_2!36105 lt!2275548))))

(declare-fun b!5711875 () Bool)

(assert (=> b!5711875 (= e!3513045 (Cons!63290 (h!69738 (_2!36105 lt!2275517)) (++!13897 (t!376734 (_2!36105 lt!2275517)) (_2!36105 lt!2275548))))))

(declare-fun d!1801960 () Bool)

(assert (=> d!1801960 e!3513044))

(declare-fun res!2411336 () Bool)

(assert (=> d!1801960 (=> (not res!2411336) (not e!3513044))))

(assert (=> d!1801960 (= res!2411336 (= (content!11491 lt!2275705) ((_ map or) (content!11491 (_2!36105 lt!2275517)) (content!11491 (_2!36105 lt!2275548)))))))

(assert (=> d!1801960 (= lt!2275705 e!3513045)))

(declare-fun c!1006871 () Bool)

(assert (=> d!1801960 (= c!1006871 ((_ is Nil!63290) (_2!36105 lt!2275517)))))

(assert (=> d!1801960 (= (++!13897 (_2!36105 lt!2275517) (_2!36105 lt!2275548)) lt!2275705)))

(declare-fun b!5711876 () Bool)

(declare-fun res!2411337 () Bool)

(assert (=> b!5711876 (=> (not res!2411337) (not e!3513044))))

(assert (=> b!5711876 (= res!2411337 (= (size!40019 lt!2275705) (+ (size!40019 (_2!36105 lt!2275517)) (size!40019 (_2!36105 lt!2275548)))))))

(assert (= (and d!1801960 c!1006871) b!5711874))

(assert (= (and d!1801960 (not c!1006871)) b!5711875))

(assert (= (and d!1801960 res!2411336) b!5711876))

(assert (= (and b!5711876 res!2411337) b!5711877))

(declare-fun m!6665564 () Bool)

(assert (=> b!5711875 m!6665564))

(declare-fun m!6665566 () Bool)

(assert (=> d!1801960 m!6665566))

(assert (=> d!1801960 m!6665120))

(assert (=> d!1801960 m!6665374))

(declare-fun m!6665568 () Bool)

(assert (=> b!5711876 m!6665568))

(assert (=> b!5711876 m!6665126))

(assert (=> b!5711876 m!6665380))

(assert (=> b!5710980 d!1801960))

(declare-fun d!1801962 () Bool)

(assert (=> d!1801962 (= (++!13897 (++!13897 (_1!36105 lt!2275517) (_2!36105 lt!2275517)) (_2!36105 lt!2275548)) (++!13897 (_1!36105 lt!2275517) (++!13897 (_2!36105 lt!2275517) (_2!36105 lt!2275548))))))

(declare-fun lt!2275708 () Unit!156352)

(declare-fun choose!43179 (List!63414 List!63414 List!63414) Unit!156352)

(assert (=> d!1801962 (= lt!2275708 (choose!43179 (_1!36105 lt!2275517) (_2!36105 lt!2275517) (_2!36105 lt!2275548)))))

(assert (=> d!1801962 (= (lemmaConcatAssociativity!2872 (_1!36105 lt!2275517) (_2!36105 lt!2275517) (_2!36105 lt!2275548)) lt!2275708)))

(declare-fun bs!1334421 () Bool)

(assert (= bs!1334421 d!1801962))

(assert (=> bs!1334421 m!6664574))

(assert (=> bs!1334421 m!6664678))

(assert (=> bs!1334421 m!6664678))

(declare-fun m!6665570 () Bool)

(assert (=> bs!1334421 m!6665570))

(declare-fun m!6665572 () Bool)

(assert (=> bs!1334421 m!6665572))

(assert (=> bs!1334421 m!6664574))

(declare-fun m!6665574 () Bool)

(assert (=> bs!1334421 m!6665574))

(assert (=> b!5710980 d!1801962))

(declare-fun b!5711896 () Bool)

(declare-fun e!3513062 () Bool)

(declare-fun call!436034 () Bool)

(assert (=> b!5711896 (= e!3513062 call!436034)))

(declare-fun bm!436029 () Bool)

(declare-fun c!1006876 () Bool)

(assert (=> bm!436029 (= call!436034 (validRegex!7441 (ite c!1006876 (regTwo!31923 r!7292) (regTwo!31922 r!7292))))))

(declare-fun c!1006877 () Bool)

(declare-fun bm!436030 () Bool)

(declare-fun call!436035 () Bool)

(assert (=> bm!436030 (= call!436035 (validRegex!7441 (ite c!1006877 (reg!16034 r!7292) (ite c!1006876 (regOne!31923 r!7292) (regOne!31922 r!7292)))))))

(declare-fun b!5711897 () Bool)

(declare-fun e!3513066 () Bool)

(declare-fun e!3513061 () Bool)

(assert (=> b!5711897 (= e!3513066 e!3513061)))

(assert (=> b!5711897 (= c!1006876 ((_ is Union!15705) r!7292))))

(declare-fun b!5711898 () Bool)

(declare-fun e!3513060 () Bool)

(assert (=> b!5711898 (= e!3513060 call!436035)))

(declare-fun b!5711899 () Bool)

(declare-fun res!2411350 () Bool)

(declare-fun e!3513064 () Bool)

(assert (=> b!5711899 (=> (not res!2411350) (not e!3513064))))

(declare-fun call!436036 () Bool)

(assert (=> b!5711899 (= res!2411350 call!436036)))

(assert (=> b!5711899 (= e!3513061 e!3513064)))

(declare-fun d!1801964 () Bool)

(declare-fun res!2411349 () Bool)

(declare-fun e!3513065 () Bool)

(assert (=> d!1801964 (=> res!2411349 e!3513065)))

(assert (=> d!1801964 (= res!2411349 ((_ is ElementMatch!15705) r!7292))))

(assert (=> d!1801964 (= (validRegex!7441 r!7292) e!3513065)))

(declare-fun b!5711900 () Bool)

(assert (=> b!5711900 (= e!3513064 call!436034)))

(declare-fun b!5711901 () Bool)

(declare-fun e!3513063 () Bool)

(assert (=> b!5711901 (= e!3513063 e!3513062)))

(declare-fun res!2411348 () Bool)

(assert (=> b!5711901 (=> (not res!2411348) (not e!3513062))))

(assert (=> b!5711901 (= res!2411348 call!436036)))

(declare-fun b!5711902 () Bool)

(assert (=> b!5711902 (= e!3513066 e!3513060)))

(declare-fun res!2411352 () Bool)

(assert (=> b!5711902 (= res!2411352 (not (nullable!5737 (reg!16034 r!7292))))))

(assert (=> b!5711902 (=> (not res!2411352) (not e!3513060))))

(declare-fun b!5711903 () Bool)

(assert (=> b!5711903 (= e!3513065 e!3513066)))

(assert (=> b!5711903 (= c!1006877 ((_ is Star!15705) r!7292))))

(declare-fun bm!436031 () Bool)

(assert (=> bm!436031 (= call!436036 call!436035)))

(declare-fun b!5711904 () Bool)

(declare-fun res!2411351 () Bool)

(assert (=> b!5711904 (=> res!2411351 e!3513063)))

(assert (=> b!5711904 (= res!2411351 (not ((_ is Concat!24550) r!7292)))))

(assert (=> b!5711904 (= e!3513061 e!3513063)))

(assert (= (and d!1801964 (not res!2411349)) b!5711903))

(assert (= (and b!5711903 c!1006877) b!5711902))

(assert (= (and b!5711903 (not c!1006877)) b!5711897))

(assert (= (and b!5711902 res!2411352) b!5711898))

(assert (= (and b!5711897 c!1006876) b!5711899))

(assert (= (and b!5711897 (not c!1006876)) b!5711904))

(assert (= (and b!5711899 res!2411350) b!5711900))

(assert (= (and b!5711904 (not res!2411351)) b!5711901))

(assert (= (and b!5711901 res!2411348) b!5711896))

(assert (= (or b!5711900 b!5711896) bm!436029))

(assert (= (or b!5711899 b!5711901) bm!436031))

(assert (= (or b!5711898 bm!436031) bm!436030))

(declare-fun m!6665576 () Bool)

(assert (=> bm!436029 m!6665576))

(declare-fun m!6665578 () Bool)

(assert (=> bm!436030 m!6665578))

(declare-fun m!6665580 () Bool)

(assert (=> b!5711902 m!6665580))

(assert (=> start!588108 d!1801964))

(declare-fun bs!1334422 () Bool)

(declare-fun b!5711912 () Bool)

(assert (= bs!1334422 (and b!5711912 b!5710952)))

(declare-fun lambda!308272 () Int)

(assert (=> bs!1334422 (not (= lambda!308272 lambda!308179))))

(declare-fun bs!1334423 () Bool)

(assert (= bs!1334423 (and b!5711912 d!1801754)))

(assert (=> bs!1334423 (not (= lambda!308272 lambda!308225))))

(declare-fun bs!1334424 () Bool)

(assert (= bs!1334424 (and b!5711912 b!5711561)))

(assert (=> bs!1334424 (not (= lambda!308272 lambda!308247))))

(declare-fun bs!1334425 () Bool)

(assert (= bs!1334425 (and b!5711912 d!1801890)))

(assert (=> bs!1334425 (not (= lambda!308272 lambda!308259))))

(declare-fun bs!1334426 () Bool)

(assert (= bs!1334426 (and b!5711912 b!5711862)))

(assert (=> bs!1334426 (= (and (= (reg!16034 r!7292) (reg!16034 lt!2275552)) (= r!7292 lt!2275552)) (= lambda!308272 lambda!308270))))

(assert (=> bs!1334422 (not (= lambda!308272 lambda!308177))))

(declare-fun bs!1334427 () Bool)

(assert (= bs!1334427 (and b!5711912 b!5711568)))

(assert (=> bs!1334427 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (reg!16034 r!7292) (reg!16034 lt!2275560)) (= r!7292 lt!2275560)) (= lambda!308272 lambda!308246))))

(declare-fun bs!1334428 () Bool)

(assert (= bs!1334428 (and b!5711912 b!5711855)))

(assert (=> bs!1334428 (not (= lambda!308272 lambda!308271))))

(declare-fun bs!1334429 () Bool)

(assert (= bs!1334429 (and b!5711912 b!5710970)))

(assert (=> bs!1334429 (not (= lambda!308272 lambda!308172))))

(assert (=> bs!1334423 (not (= lambda!308272 lambda!308227))))

(declare-fun bs!1334430 () Bool)

(assert (= bs!1334430 (and b!5711912 d!1801796)))

(assert (=> bs!1334430 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (reg!16034 r!7292) (reg!16034 (regOne!31922 r!7292))) (= r!7292 (Star!15705 (reg!16034 (regOne!31922 r!7292))))) (= lambda!308272 lambda!308236))))

(assert (=> bs!1334430 (not (= lambda!308272 lambda!308234))))

(declare-fun bs!1334431 () Bool)

(assert (= bs!1334431 (and b!5711912 d!1801880)))

(assert (=> bs!1334431 (not (= lambda!308272 lambda!308258))))

(declare-fun bs!1334432 () Bool)

(assert (= bs!1334432 (and b!5711912 b!5710968)))

(assert (=> bs!1334432 (not (= lambda!308272 lambda!308175))))

(declare-fun bs!1334433 () Bool)

(assert (= bs!1334433 (and b!5711912 d!1801914)))

(assert (=> bs!1334433 (not (= lambda!308272 lambda!308264))))

(assert (=> bs!1334425 (not (= lambda!308272 lambda!308260))))

(assert (=> bs!1334429 (not (= lambda!308272 lambda!308173))))

(declare-fun bs!1334434 () Bool)

(assert (= bs!1334434 (and b!5711912 d!1801916)))

(assert (=> bs!1334434 (not (= lambda!308272 lambda!308265))))

(assert (=> bs!1334434 (not (= lambda!308272 lambda!308266))))

(assert (=> bs!1334432 (not (= lambda!308272 lambda!308176))))

(assert (=> bs!1334422 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (reg!16034 r!7292) (reg!16034 (regOne!31922 r!7292))) (= r!7292 lt!2275560)) (= lambda!308272 lambda!308178))))

(declare-fun bs!1334435 () Bool)

(assert (= bs!1334435 (and b!5711912 d!1801734)))

(assert (=> bs!1334435 (not (= lambda!308272 lambda!308209))))

(assert (=> b!5711912 true))

(assert (=> b!5711912 true))

(declare-fun bs!1334436 () Bool)

(declare-fun b!5711905 () Bool)

(assert (= bs!1334436 (and b!5711905 d!1801754)))

(declare-fun lambda!308273 () Int)

(assert (=> bs!1334436 (not (= lambda!308273 lambda!308225))))

(declare-fun bs!1334437 () Bool)

(assert (= bs!1334437 (and b!5711905 b!5711561)))

(assert (=> bs!1334437 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (regOne!31922 r!7292) (regOne!31922 lt!2275560)) (= (regTwo!31922 r!7292) (regTwo!31922 lt!2275560))) (= lambda!308273 lambda!308247))))

(declare-fun bs!1334438 () Bool)

(assert (= bs!1334438 (and b!5711905 d!1801890)))

(assert (=> bs!1334438 (not (= lambda!308273 lambda!308259))))

(declare-fun bs!1334439 () Bool)

(assert (= bs!1334439 (and b!5711905 b!5711862)))

(assert (=> bs!1334439 (not (= lambda!308273 lambda!308270))))

(declare-fun bs!1334440 () Bool)

(assert (= bs!1334440 (and b!5711905 b!5710952)))

(assert (=> bs!1334440 (not (= lambda!308273 lambda!308177))))

(declare-fun bs!1334441 () Bool)

(assert (= bs!1334441 (and b!5711905 b!5711568)))

(assert (=> bs!1334441 (not (= lambda!308273 lambda!308246))))

(declare-fun bs!1334442 () Bool)

(assert (= bs!1334442 (and b!5711905 b!5711855)))

(assert (=> bs!1334442 (= (and (= (regOne!31922 r!7292) (regOne!31922 lt!2275552)) (= (regTwo!31922 r!7292) (regTwo!31922 lt!2275552))) (= lambda!308273 lambda!308271))))

(declare-fun bs!1334443 () Bool)

(assert (= bs!1334443 (and b!5711905 b!5710970)))

(assert (=> bs!1334443 (not (= lambda!308273 lambda!308172))))

(assert (=> bs!1334436 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (regOne!31922 r!7292) (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308273 lambda!308227))))

(declare-fun bs!1334444 () Bool)

(assert (= bs!1334444 (and b!5711905 d!1801796)))

(assert (=> bs!1334444 (not (= lambda!308273 lambda!308236))))

(assert (=> bs!1334444 (not (= lambda!308273 lambda!308234))))

(declare-fun bs!1334445 () Bool)

(assert (= bs!1334445 (and b!5711905 d!1801880)))

(assert (=> bs!1334445 (not (= lambda!308273 lambda!308258))))

(assert (=> bs!1334440 (= (and (= s!2326 (_1!36105 lt!2275548)) (= (regOne!31922 r!7292) (reg!16034 (regOne!31922 r!7292))) (= (regTwo!31922 r!7292) lt!2275560)) (= lambda!308273 lambda!308179))))

(declare-fun bs!1334446 () Bool)

(assert (= bs!1334446 (and b!5711905 b!5711912)))

(assert (=> bs!1334446 (not (= lambda!308273 lambda!308272))))

(declare-fun bs!1334447 () Bool)

(assert (= bs!1334447 (and b!5711905 b!5710968)))

(assert (=> bs!1334447 (not (= lambda!308273 lambda!308175))))

(declare-fun bs!1334448 () Bool)

(assert (= bs!1334448 (and b!5711905 d!1801914)))

(assert (=> bs!1334448 (not (= lambda!308273 lambda!308264))))

(assert (=> bs!1334438 (= (= (regOne!31922 r!7292) lt!2275560) (= lambda!308273 lambda!308260))))

(assert (=> bs!1334443 (= lambda!308273 lambda!308173)))

(declare-fun bs!1334449 () Bool)

(assert (= bs!1334449 (and b!5711905 d!1801916)))

(assert (=> bs!1334449 (not (= lambda!308273 lambda!308265))))

(assert (=> bs!1334449 (= lambda!308273 lambda!308266)))

(assert (=> bs!1334447 (= (= (regOne!31922 r!7292) lt!2275560) (= lambda!308273 lambda!308176))))

(assert (=> bs!1334440 (not (= lambda!308273 lambda!308178))))

(declare-fun bs!1334450 () Bool)

(assert (= bs!1334450 (and b!5711905 d!1801734)))

(assert (=> bs!1334450 (not (= lambda!308273 lambda!308209))))

(assert (=> b!5711905 true))

(assert (=> b!5711905 true))

(declare-fun e!3513071 () Bool)

(declare-fun call!436038 () Bool)

(assert (=> b!5711905 (= e!3513071 call!436038)))

(declare-fun b!5711906 () Bool)

(declare-fun e!3513073 () Bool)

(assert (=> b!5711906 (= e!3513073 (matchRSpec!2808 (regTwo!31923 r!7292) s!2326))))

(declare-fun bm!436032 () Bool)

(declare-fun call!436037 () Bool)

(assert (=> bm!436032 (= call!436037 (isEmpty!35158 s!2326))))

(declare-fun d!1801966 () Bool)

(declare-fun c!1006880 () Bool)

(assert (=> d!1801966 (= c!1006880 ((_ is EmptyExpr!15705) r!7292))))

(declare-fun e!3513072 () Bool)

(assert (=> d!1801966 (= (matchRSpec!2808 r!7292 s!2326) e!3513072)))

(declare-fun b!5711907 () Bool)

(declare-fun c!1006878 () Bool)

(assert (=> b!5711907 (= c!1006878 ((_ is ElementMatch!15705) r!7292))))

(declare-fun e!3513067 () Bool)

(declare-fun e!3513069 () Bool)

(assert (=> b!5711907 (= e!3513067 e!3513069)))

(declare-fun b!5711908 () Bool)

(assert (=> b!5711908 (= e!3513072 e!3513067)))

(declare-fun res!2411354 () Bool)

(assert (=> b!5711908 (= res!2411354 (not ((_ is EmptyLang!15705) r!7292)))))

(assert (=> b!5711908 (=> (not res!2411354) (not e!3513067))))

(declare-fun b!5711909 () Bool)

(assert (=> b!5711909 (= e!3513069 (= s!2326 (Cons!63290 (c!1006621 r!7292) Nil!63290)))))

(declare-fun b!5711910 () Bool)

(declare-fun e!3513070 () Bool)

(assert (=> b!5711910 (= e!3513070 e!3513073)))

(declare-fun res!2411353 () Bool)

(assert (=> b!5711910 (= res!2411353 (matchRSpec!2808 (regOne!31923 r!7292) s!2326))))

(assert (=> b!5711910 (=> res!2411353 e!3513073)))

(declare-fun b!5711911 () Bool)

(assert (=> b!5711911 (= e!3513070 e!3513071)))

(declare-fun c!1006879 () Bool)

(assert (=> b!5711911 (= c!1006879 ((_ is Star!15705) r!7292))))

(declare-fun e!3513068 () Bool)

(assert (=> b!5711912 (= e!3513068 call!436038)))

(declare-fun b!5711913 () Bool)

(declare-fun c!1006881 () Bool)

(assert (=> b!5711913 (= c!1006881 ((_ is Union!15705) r!7292))))

(assert (=> b!5711913 (= e!3513069 e!3513070)))

(declare-fun bm!436033 () Bool)

(assert (=> bm!436033 (= call!436038 (Exists!2805 (ite c!1006879 lambda!308272 lambda!308273)))))

(declare-fun b!5711914 () Bool)

(declare-fun res!2411355 () Bool)

(assert (=> b!5711914 (=> res!2411355 e!3513068)))

(assert (=> b!5711914 (= res!2411355 call!436037)))

(assert (=> b!5711914 (= e!3513071 e!3513068)))

(declare-fun b!5711915 () Bool)

(assert (=> b!5711915 (= e!3513072 call!436037)))

(assert (= (and d!1801966 c!1006880) b!5711915))

(assert (= (and d!1801966 (not c!1006880)) b!5711908))

(assert (= (and b!5711908 res!2411354) b!5711907))

(assert (= (and b!5711907 c!1006878) b!5711909))

(assert (= (and b!5711907 (not c!1006878)) b!5711913))

(assert (= (and b!5711913 c!1006881) b!5711910))

(assert (= (and b!5711913 (not c!1006881)) b!5711911))

(assert (= (and b!5711910 (not res!2411353)) b!5711906))

(assert (= (and b!5711911 c!1006879) b!5711914))

(assert (= (and b!5711911 (not c!1006879)) b!5711905))

(assert (= (and b!5711914 (not res!2411355)) b!5711912))

(assert (= (or b!5711912 b!5711905) bm!436033))

(assert (= (or b!5711915 b!5711914) bm!436032))

(declare-fun m!6665582 () Bool)

(assert (=> b!5711906 m!6665582))

(assert (=> bm!436032 m!6665518))

(declare-fun m!6665584 () Bool)

(assert (=> b!5711910 m!6665584))

(declare-fun m!6665586 () Bool)

(assert (=> bm!436033 m!6665586))

(assert (=> b!5710961 d!1801966))

(declare-fun b!5711916 () Bool)

(declare-fun e!3513077 () Bool)

(assert (=> b!5711916 (= e!3513077 (= (head!12098 s!2326) (c!1006621 r!7292)))))

(declare-fun b!5711917 () Bool)

(declare-fun e!3513079 () Bool)

(declare-fun lt!2275709 () Bool)

(declare-fun call!436039 () Bool)

(assert (=> b!5711917 (= e!3513079 (= lt!2275709 call!436039))))

(declare-fun b!5711918 () Bool)

(declare-fun e!3513076 () Bool)

(assert (=> b!5711918 (= e!3513076 (nullable!5737 r!7292))))

(declare-fun b!5711919 () Bool)

(declare-fun res!2411358 () Bool)

(assert (=> b!5711919 (=> (not res!2411358) (not e!3513077))))

(assert (=> b!5711919 (= res!2411358 (isEmpty!35158 (tail!11193 s!2326)))))

(declare-fun b!5711920 () Bool)

(declare-fun res!2411360 () Bool)

(declare-fun e!3513075 () Bool)

(assert (=> b!5711920 (=> res!2411360 e!3513075)))

(assert (=> b!5711920 (= res!2411360 e!3513077)))

(declare-fun res!2411357 () Bool)

(assert (=> b!5711920 (=> (not res!2411357) (not e!3513077))))

(assert (=> b!5711920 (= res!2411357 lt!2275709)))

(declare-fun b!5711921 () Bool)

(declare-fun e!3513074 () Bool)

(assert (=> b!5711921 (= e!3513079 e!3513074)))

(declare-fun c!1006882 () Bool)

(assert (=> b!5711921 (= c!1006882 ((_ is EmptyLang!15705) r!7292))))

(declare-fun b!5711922 () Bool)

(declare-fun res!2411356 () Bool)

(assert (=> b!5711922 (=> (not res!2411356) (not e!3513077))))

(assert (=> b!5711922 (= res!2411356 (not call!436039))))

(declare-fun b!5711923 () Bool)

(declare-fun e!3513080 () Bool)

(assert (=> b!5711923 (= e!3513075 e!3513080)))

(declare-fun res!2411361 () Bool)

(assert (=> b!5711923 (=> (not res!2411361) (not e!3513080))))

(assert (=> b!5711923 (= res!2411361 (not lt!2275709))))

(declare-fun b!5711924 () Bool)

(declare-fun res!2411362 () Bool)

(assert (=> b!5711924 (=> res!2411362 e!3513075)))

(assert (=> b!5711924 (= res!2411362 (not ((_ is ElementMatch!15705) r!7292)))))

(assert (=> b!5711924 (= e!3513074 e!3513075)))

(declare-fun b!5711925 () Bool)

(declare-fun e!3513078 () Bool)

(assert (=> b!5711925 (= e!3513080 e!3513078)))

(declare-fun res!2411359 () Bool)

(assert (=> b!5711925 (=> res!2411359 e!3513078)))

(assert (=> b!5711925 (= res!2411359 call!436039)))

(declare-fun d!1801968 () Bool)

(assert (=> d!1801968 e!3513079))

(declare-fun c!1006883 () Bool)

(assert (=> d!1801968 (= c!1006883 ((_ is EmptyExpr!15705) r!7292))))

(assert (=> d!1801968 (= lt!2275709 e!3513076)))

(declare-fun c!1006884 () Bool)

(assert (=> d!1801968 (= c!1006884 (isEmpty!35158 s!2326))))

(assert (=> d!1801968 (validRegex!7441 r!7292)))

(assert (=> d!1801968 (= (matchR!7890 r!7292 s!2326) lt!2275709)))

(declare-fun bm!436034 () Bool)

(assert (=> bm!436034 (= call!436039 (isEmpty!35158 s!2326))))

(declare-fun b!5711926 () Bool)

(assert (=> b!5711926 (= e!3513076 (matchR!7890 (derivativeStep!4511 r!7292 (head!12098 s!2326)) (tail!11193 s!2326)))))

(declare-fun b!5711927 () Bool)

(assert (=> b!5711927 (= e!3513078 (not (= (head!12098 s!2326) (c!1006621 r!7292))))))

(declare-fun b!5711928 () Bool)

(assert (=> b!5711928 (= e!3513074 (not lt!2275709))))

(declare-fun b!5711929 () Bool)

(declare-fun res!2411363 () Bool)

(assert (=> b!5711929 (=> res!2411363 e!3513078)))

(assert (=> b!5711929 (= res!2411363 (not (isEmpty!35158 (tail!11193 s!2326))))))

(assert (= (and d!1801968 c!1006884) b!5711918))

(assert (= (and d!1801968 (not c!1006884)) b!5711926))

(assert (= (and d!1801968 c!1006883) b!5711917))

(assert (= (and d!1801968 (not c!1006883)) b!5711921))

(assert (= (and b!5711921 c!1006882) b!5711928))

(assert (= (and b!5711921 (not c!1006882)) b!5711924))

(assert (= (and b!5711924 (not res!2411362)) b!5711920))

(assert (= (and b!5711920 res!2411357) b!5711922))

(assert (= (and b!5711922 res!2411356) b!5711919))

(assert (= (and b!5711919 res!2411358) b!5711916))

(assert (= (and b!5711920 (not res!2411360)) b!5711923))

(assert (= (and b!5711923 res!2411361) b!5711925))

(assert (= (and b!5711925 (not res!2411359)) b!5711929))

(assert (= (and b!5711929 (not res!2411363)) b!5711927))

(assert (= (or b!5711917 b!5711922 b!5711925) bm!436034))

(assert (=> d!1801968 m!6665518))

(assert (=> d!1801968 m!6664544))

(assert (=> bm!436034 m!6665518))

(assert (=> b!5711927 m!6665522))

(declare-fun m!6665588 () Bool)

(assert (=> b!5711918 m!6665588))

(assert (=> b!5711916 m!6665522))

(assert (=> b!5711929 m!6665526))

(assert (=> b!5711929 m!6665526))

(assert (=> b!5711929 m!6665528))

(assert (=> b!5711926 m!6665522))

(assert (=> b!5711926 m!6665522))

(declare-fun m!6665590 () Bool)

(assert (=> b!5711926 m!6665590))

(assert (=> b!5711926 m!6665526))

(assert (=> b!5711926 m!6665590))

(assert (=> b!5711926 m!6665526))

(declare-fun m!6665592 () Bool)

(assert (=> b!5711926 m!6665592))

(assert (=> b!5711919 m!6665526))

(assert (=> b!5711919 m!6665526))

(assert (=> b!5711919 m!6665528))

(assert (=> b!5710961 d!1801968))

(declare-fun d!1801970 () Bool)

(assert (=> d!1801970 (= (matchR!7890 r!7292 s!2326) (matchRSpec!2808 r!7292 s!2326))))

(declare-fun lt!2275710 () Unit!156352)

(assert (=> d!1801970 (= lt!2275710 (choose!43172 r!7292 s!2326))))

(assert (=> d!1801970 (validRegex!7441 r!7292)))

(assert (=> d!1801970 (= (mainMatchTheorem!2808 r!7292 s!2326) lt!2275710)))

(declare-fun bs!1334451 () Bool)

(assert (= bs!1334451 d!1801970))

(assert (=> bs!1334451 m!6664644))

(assert (=> bs!1334451 m!6664642))

(declare-fun m!6665594 () Bool)

(assert (=> bs!1334451 m!6665594))

(assert (=> bs!1334451 m!6664544))

(assert (=> b!5710961 d!1801970))

(declare-fun b!5711930 () Bool)

(declare-fun e!3513084 () Bool)

(assert (=> b!5711930 (= e!3513084 (= (head!12098 (_1!36105 lt!2275548)) (c!1006621 lt!2275560)))))

(declare-fun b!5711931 () Bool)

(declare-fun e!3513086 () Bool)

(declare-fun lt!2275711 () Bool)

(declare-fun call!436040 () Bool)

(assert (=> b!5711931 (= e!3513086 (= lt!2275711 call!436040))))

(declare-fun b!5711932 () Bool)

(declare-fun e!3513083 () Bool)

(assert (=> b!5711932 (= e!3513083 (nullable!5737 lt!2275560))))

(declare-fun b!5711933 () Bool)

(declare-fun res!2411366 () Bool)

(assert (=> b!5711933 (=> (not res!2411366) (not e!3513084))))

(assert (=> b!5711933 (= res!2411366 (isEmpty!35158 (tail!11193 (_1!36105 lt!2275548))))))

(declare-fun b!5711934 () Bool)

(declare-fun res!2411368 () Bool)

(declare-fun e!3513082 () Bool)

(assert (=> b!5711934 (=> res!2411368 e!3513082)))

(assert (=> b!5711934 (= res!2411368 e!3513084)))

(declare-fun res!2411365 () Bool)

(assert (=> b!5711934 (=> (not res!2411365) (not e!3513084))))

(assert (=> b!5711934 (= res!2411365 lt!2275711)))

(declare-fun b!5711935 () Bool)

(declare-fun e!3513081 () Bool)

(assert (=> b!5711935 (= e!3513086 e!3513081)))

(declare-fun c!1006885 () Bool)

(assert (=> b!5711935 (= c!1006885 ((_ is EmptyLang!15705) lt!2275560))))

(declare-fun b!5711936 () Bool)

(declare-fun res!2411364 () Bool)

(assert (=> b!5711936 (=> (not res!2411364) (not e!3513084))))

(assert (=> b!5711936 (= res!2411364 (not call!436040))))

(declare-fun b!5711937 () Bool)

(declare-fun e!3513087 () Bool)

(assert (=> b!5711937 (= e!3513082 e!3513087)))

(declare-fun res!2411369 () Bool)

(assert (=> b!5711937 (=> (not res!2411369) (not e!3513087))))

(assert (=> b!5711937 (= res!2411369 (not lt!2275711))))

(declare-fun b!5711938 () Bool)

(declare-fun res!2411370 () Bool)

(assert (=> b!5711938 (=> res!2411370 e!3513082)))

(assert (=> b!5711938 (= res!2411370 (not ((_ is ElementMatch!15705) lt!2275560)))))

(assert (=> b!5711938 (= e!3513081 e!3513082)))

(declare-fun b!5711939 () Bool)

(declare-fun e!3513085 () Bool)

(assert (=> b!5711939 (= e!3513087 e!3513085)))

(declare-fun res!2411367 () Bool)

(assert (=> b!5711939 (=> res!2411367 e!3513085)))

(assert (=> b!5711939 (= res!2411367 call!436040)))

(declare-fun d!1801972 () Bool)

(assert (=> d!1801972 e!3513086))

(declare-fun c!1006886 () Bool)

(assert (=> d!1801972 (= c!1006886 ((_ is EmptyExpr!15705) lt!2275560))))

(assert (=> d!1801972 (= lt!2275711 e!3513083)))

(declare-fun c!1006887 () Bool)

(assert (=> d!1801972 (= c!1006887 (isEmpty!35158 (_1!36105 lt!2275548)))))

(assert (=> d!1801972 (validRegex!7441 lt!2275560)))

(assert (=> d!1801972 (= (matchR!7890 lt!2275560 (_1!36105 lt!2275548)) lt!2275711)))

(declare-fun bm!436035 () Bool)

(assert (=> bm!436035 (= call!436040 (isEmpty!35158 (_1!36105 lt!2275548)))))

(declare-fun b!5711940 () Bool)

(assert (=> b!5711940 (= e!3513083 (matchR!7890 (derivativeStep!4511 lt!2275560 (head!12098 (_1!36105 lt!2275548))) (tail!11193 (_1!36105 lt!2275548))))))

(declare-fun b!5711941 () Bool)

(assert (=> b!5711941 (= e!3513085 (not (= (head!12098 (_1!36105 lt!2275548)) (c!1006621 lt!2275560))))))

(declare-fun b!5711942 () Bool)

(assert (=> b!5711942 (= e!3513081 (not lt!2275711))))

(declare-fun b!5711943 () Bool)

(declare-fun res!2411371 () Bool)

(assert (=> b!5711943 (=> res!2411371 e!3513085)))

(assert (=> b!5711943 (= res!2411371 (not (isEmpty!35158 (tail!11193 (_1!36105 lt!2275548)))))))

(assert (= (and d!1801972 c!1006887) b!5711932))

(assert (= (and d!1801972 (not c!1006887)) b!5711940))

(assert (= (and d!1801972 c!1006886) b!5711931))

(assert (= (and d!1801972 (not c!1006886)) b!5711935))

(assert (= (and b!5711935 c!1006885) b!5711942))

(assert (= (and b!5711935 (not c!1006885)) b!5711938))

(assert (= (and b!5711938 (not res!2411370)) b!5711934))

(assert (= (and b!5711934 res!2411365) b!5711936))

(assert (= (and b!5711936 res!2411364) b!5711933))

(assert (= (and b!5711933 res!2411366) b!5711930))

(assert (= (and b!5711934 (not res!2411368)) b!5711937))

(assert (= (and b!5711937 res!2411369) b!5711939))

(assert (= (and b!5711939 (not res!2411367)) b!5711943))

(assert (= (and b!5711943 (not res!2411371)) b!5711941))

(assert (= (or b!5711931 b!5711936 b!5711939) bm!436035))

(assert (=> d!1801972 m!6664650))

(assert (=> d!1801972 m!6665056))

(assert (=> bm!436035 m!6664650))

(declare-fun m!6665596 () Bool)

(assert (=> b!5711941 m!6665596))

(declare-fun m!6665598 () Bool)

(assert (=> b!5711932 m!6665598))

(assert (=> b!5711930 m!6665596))

(declare-fun m!6665600 () Bool)

(assert (=> b!5711943 m!6665600))

(assert (=> b!5711943 m!6665600))

(declare-fun m!6665602 () Bool)

(assert (=> b!5711943 m!6665602))

(assert (=> b!5711940 m!6665596))

(assert (=> b!5711940 m!6665596))

(declare-fun m!6665604 () Bool)

(assert (=> b!5711940 m!6665604))

(assert (=> b!5711940 m!6665600))

(assert (=> b!5711940 m!6665604))

(assert (=> b!5711940 m!6665600))

(declare-fun m!6665606 () Bool)

(assert (=> b!5711940 m!6665606))

(assert (=> b!5711933 m!6665600))

(assert (=> b!5711933 m!6665600))

(assert (=> b!5711933 m!6665602))

(assert (=> b!5710940 d!1801972))

(declare-fun d!1801974 () Bool)

(declare-fun c!1006888 () Bool)

(assert (=> d!1801974 (= c!1006888 (isEmpty!35158 s!2326))))

(declare-fun e!3513088 () Bool)

(assert (=> d!1801974 (= (matchZipper!1843 lt!2275558 s!2326) e!3513088)))

(declare-fun b!5711944 () Bool)

(assert (=> b!5711944 (= e!3513088 (nullableZipper!1659 lt!2275558))))

(declare-fun b!5711945 () Bool)

(assert (=> b!5711945 (= e!3513088 (matchZipper!1843 (derivationStepZipper!1788 lt!2275558 (head!12098 s!2326)) (tail!11193 s!2326)))))

(assert (= (and d!1801974 c!1006888) b!5711944))

(assert (= (and d!1801974 (not c!1006888)) b!5711945))

(assert (=> d!1801974 m!6665518))

(declare-fun m!6665608 () Bool)

(assert (=> b!5711944 m!6665608))

(assert (=> b!5711945 m!6665522))

(assert (=> b!5711945 m!6665522))

(declare-fun m!6665610 () Bool)

(assert (=> b!5711945 m!6665610))

(assert (=> b!5711945 m!6665526))

(assert (=> b!5711945 m!6665610))

(assert (=> b!5711945 m!6665526))

(declare-fun m!6665612 () Bool)

(assert (=> b!5711945 m!6665612))

(assert (=> b!5710981 d!1801974))

(declare-fun d!1801976 () Bool)

(declare-fun c!1006889 () Bool)

(assert (=> d!1801976 (= c!1006889 (isEmpty!35158 (t!376734 s!2326)))))

(declare-fun e!3513089 () Bool)

(assert (=> d!1801976 (= (matchZipper!1843 lt!2275524 (t!376734 s!2326)) e!3513089)))

(declare-fun b!5711946 () Bool)

(assert (=> b!5711946 (= e!3513089 (nullableZipper!1659 lt!2275524))))

(declare-fun b!5711947 () Bool)

(assert (=> b!5711947 (= e!3513089 (matchZipper!1843 (derivationStepZipper!1788 lt!2275524 (head!12098 (t!376734 s!2326))) (tail!11193 (t!376734 s!2326))))))

(assert (= (and d!1801976 c!1006889) b!5711946))

(assert (= (and d!1801976 (not c!1006889)) b!5711947))

(assert (=> d!1801976 m!6665272))

(declare-fun m!6665614 () Bool)

(assert (=> b!5711946 m!6665614))

(assert (=> b!5711947 m!6665276))

(assert (=> b!5711947 m!6665276))

(declare-fun m!6665616 () Bool)

(assert (=> b!5711947 m!6665616))

(assert (=> b!5711947 m!6665280))

(assert (=> b!5711947 m!6665616))

(assert (=> b!5711947 m!6665280))

(declare-fun m!6665618 () Bool)

(assert (=> b!5711947 m!6665618))

(assert (=> b!5710981 d!1801976))

(declare-fun e!3513090 () (InoxSet Context!10178))

(declare-fun b!5711948 () Bool)

(declare-fun call!436041 () (InoxSet Context!10178))

(assert (=> b!5711948 (= e!3513090 ((_ map or) call!436041 (derivationStepZipperUp!973 (Context!10179 (t!376735 (exprs!5589 lt!2275533))) (h!69738 s!2326))))))

(declare-fun d!1801978 () Bool)

(declare-fun c!1006891 () Bool)

(declare-fun e!3513092 () Bool)

(assert (=> d!1801978 (= c!1006891 e!3513092)))

(declare-fun res!2411372 () Bool)

(assert (=> d!1801978 (=> (not res!2411372) (not e!3513092))))

(assert (=> d!1801978 (= res!2411372 ((_ is Cons!63291) (exprs!5589 lt!2275533)))))

(assert (=> d!1801978 (= (derivationStepZipperUp!973 lt!2275533 (h!69738 s!2326)) e!3513090)))

(declare-fun b!5711949 () Bool)

(declare-fun e!3513091 () (InoxSet Context!10178))

(assert (=> b!5711949 (= e!3513091 call!436041)))

(declare-fun b!5711950 () Bool)

(assert (=> b!5711950 (= e!3513091 ((as const (Array Context!10178 Bool)) false))))

(declare-fun bm!436036 () Bool)

(assert (=> bm!436036 (= call!436041 (derivationStepZipperDown!1047 (h!69739 (exprs!5589 lt!2275533)) (Context!10179 (t!376735 (exprs!5589 lt!2275533))) (h!69738 s!2326)))))

(declare-fun b!5711951 () Bool)

(assert (=> b!5711951 (= e!3513090 e!3513091)))

(declare-fun c!1006890 () Bool)

(assert (=> b!5711951 (= c!1006890 ((_ is Cons!63291) (exprs!5589 lt!2275533)))))

(declare-fun b!5711952 () Bool)

(assert (=> b!5711952 (= e!3513092 (nullable!5737 (h!69739 (exprs!5589 lt!2275533))))))

(assert (= (and d!1801978 res!2411372) b!5711952))

(assert (= (and d!1801978 c!1006891) b!5711948))

(assert (= (and d!1801978 (not c!1006891)) b!5711951))

(assert (= (and b!5711951 c!1006890) b!5711949))

(assert (= (and b!5711951 (not c!1006890)) b!5711950))

(assert (= (or b!5711948 b!5711949) bm!436036))

(declare-fun m!6665620 () Bool)

(assert (=> b!5711948 m!6665620))

(declare-fun m!6665622 () Bool)

(assert (=> bm!436036 m!6665622))

(declare-fun m!6665624 () Bool)

(assert (=> b!5711952 m!6665624))

(assert (=> b!5710962 d!1801978))

(declare-fun d!1801980 () Bool)

(assert (=> d!1801980 (= (flatMap!1318 lt!2275536 lambda!308174) (choose!43176 lt!2275536 lambda!308174))))

(declare-fun bs!1334452 () Bool)

(assert (= bs!1334452 d!1801980))

(declare-fun m!6665626 () Bool)

(assert (=> bs!1334452 m!6665626))

(assert (=> b!5710962 d!1801980))

(declare-fun d!1801982 () Bool)

(assert (=> d!1801982 (= (flatMap!1318 lt!2275536 lambda!308174) (dynLambda!24768 lambda!308174 lt!2275539))))

(declare-fun lt!2275712 () Unit!156352)

(assert (=> d!1801982 (= lt!2275712 (choose!43177 lt!2275536 lt!2275539 lambda!308174))))

(assert (=> d!1801982 (= lt!2275536 (store ((as const (Array Context!10178 Bool)) false) lt!2275539 true))))

(assert (=> d!1801982 (= (lemmaFlatMapOnSingletonSet!850 lt!2275536 lt!2275539 lambda!308174) lt!2275712)))

(declare-fun b_lambda!215899 () Bool)

(assert (=> (not b_lambda!215899) (not d!1801982)))

(declare-fun bs!1334453 () Bool)

(assert (= bs!1334453 d!1801982))

(assert (=> bs!1334453 m!6664634))

(declare-fun m!6665628 () Bool)

(assert (=> bs!1334453 m!6665628))

(declare-fun m!6665630 () Bool)

(assert (=> bs!1334453 m!6665630))

(assert (=> bs!1334453 m!6664636))

(assert (=> b!5710962 d!1801982))

(declare-fun d!1801984 () Bool)

(assert (=> d!1801984 (= (flatMap!1318 lt!2275540 lambda!308174) (choose!43176 lt!2275540 lambda!308174))))

(declare-fun bs!1334454 () Bool)

(assert (= bs!1334454 d!1801984))

(declare-fun m!6665632 () Bool)

(assert (=> bs!1334454 m!6665632))

(assert (=> b!5710962 d!1801984))

(declare-fun call!436042 () (InoxSet Context!10178))

(declare-fun e!3513093 () (InoxSet Context!10178))

(declare-fun b!5711953 () Bool)

(assert (=> b!5711953 (= e!3513093 ((_ map or) call!436042 (derivationStepZipperUp!973 (Context!10179 (t!376735 (exprs!5589 lt!2275539))) (h!69738 s!2326))))))

(declare-fun d!1801986 () Bool)

(declare-fun c!1006893 () Bool)

(declare-fun e!3513095 () Bool)

(assert (=> d!1801986 (= c!1006893 e!3513095)))

(declare-fun res!2411373 () Bool)

(assert (=> d!1801986 (=> (not res!2411373) (not e!3513095))))

(assert (=> d!1801986 (= res!2411373 ((_ is Cons!63291) (exprs!5589 lt!2275539)))))

(assert (=> d!1801986 (= (derivationStepZipperUp!973 lt!2275539 (h!69738 s!2326)) e!3513093)))

(declare-fun b!5711954 () Bool)

(declare-fun e!3513094 () (InoxSet Context!10178))

(assert (=> b!5711954 (= e!3513094 call!436042)))

(declare-fun b!5711955 () Bool)

(assert (=> b!5711955 (= e!3513094 ((as const (Array Context!10178 Bool)) false))))

(declare-fun bm!436037 () Bool)

(assert (=> bm!436037 (= call!436042 (derivationStepZipperDown!1047 (h!69739 (exprs!5589 lt!2275539)) (Context!10179 (t!376735 (exprs!5589 lt!2275539))) (h!69738 s!2326)))))

(declare-fun b!5711956 () Bool)

(assert (=> b!5711956 (= e!3513093 e!3513094)))

(declare-fun c!1006892 () Bool)

(assert (=> b!5711956 (= c!1006892 ((_ is Cons!63291) (exprs!5589 lt!2275539)))))

(declare-fun b!5711957 () Bool)

(assert (=> b!5711957 (= e!3513095 (nullable!5737 (h!69739 (exprs!5589 lt!2275539))))))

(assert (= (and d!1801986 res!2411373) b!5711957))

(assert (= (and d!1801986 c!1006893) b!5711953))

(assert (= (and d!1801986 (not c!1006893)) b!5711956))

(assert (= (and b!5711956 c!1006892) b!5711954))

(assert (= (and b!5711956 (not c!1006892)) b!5711955))

(assert (= (or b!5711953 b!5711954) bm!436037))

(declare-fun m!6665634 () Bool)

(assert (=> b!5711953 m!6665634))

(declare-fun m!6665636 () Bool)

(assert (=> bm!436037 m!6665636))

(declare-fun m!6665638 () Bool)

(assert (=> b!5711957 m!6665638))

(assert (=> b!5710962 d!1801986))

(declare-fun d!1801988 () Bool)

(assert (=> d!1801988 (= (flatMap!1318 lt!2275540 lambda!308174) (dynLambda!24768 lambda!308174 lt!2275533))))

(declare-fun lt!2275713 () Unit!156352)

(assert (=> d!1801988 (= lt!2275713 (choose!43177 lt!2275540 lt!2275533 lambda!308174))))

(assert (=> d!1801988 (= lt!2275540 (store ((as const (Array Context!10178 Bool)) false) lt!2275533 true))))

(assert (=> d!1801988 (= (lemmaFlatMapOnSingletonSet!850 lt!2275540 lt!2275533 lambda!308174) lt!2275713)))

(declare-fun b_lambda!215901 () Bool)

(assert (=> (not b_lambda!215901) (not d!1801988)))

(declare-fun bs!1334455 () Bool)

(assert (= bs!1334455 d!1801988))

(assert (=> bs!1334455 m!6664638))

(declare-fun m!6665640 () Bool)

(assert (=> bs!1334455 m!6665640))

(declare-fun m!6665642 () Bool)

(assert (=> bs!1334455 m!6665642))

(assert (=> bs!1334455 m!6664630))

(assert (=> b!5710962 d!1801988))

(declare-fun d!1801990 () Bool)

(declare-fun lt!2275714 () Regex!15705)

(assert (=> d!1801990 (validRegex!7441 lt!2275714)))

(assert (=> d!1801990 (= lt!2275714 (generalisedUnion!1568 (unfocusZipperList!1133 (Cons!63292 lt!2275539 Nil!63292))))))

(assert (=> d!1801990 (= (unfocusZipper!1447 (Cons!63292 lt!2275539 Nil!63292)) lt!2275714)))

(declare-fun bs!1334456 () Bool)

(assert (= bs!1334456 d!1801990))

(declare-fun m!6665644 () Bool)

(assert (=> bs!1334456 m!6665644))

(declare-fun m!6665646 () Bool)

(assert (=> bs!1334456 m!6665646))

(assert (=> bs!1334456 m!6665646))

(declare-fun m!6665648 () Bool)

(assert (=> bs!1334456 m!6665648))

(assert (=> b!5710962 d!1801990))

(declare-fun condSetEmpty!38249 () Bool)

(assert (=> setNonEmpty!38243 (= condSetEmpty!38249 (= setRest!38243 ((as const (Array Context!10178 Bool)) false)))))

(declare-fun setRes!38249 () Bool)

(assert (=> setNonEmpty!38243 (= tp!1582934 setRes!38249)))

(declare-fun setIsEmpty!38249 () Bool)

(assert (=> setIsEmpty!38249 setRes!38249))

(declare-fun setElem!38249 () Context!10178)

(declare-fun e!3513098 () Bool)

(declare-fun tp!1583005 () Bool)

(declare-fun setNonEmpty!38249 () Bool)

(assert (=> setNonEmpty!38249 (= setRes!38249 (and tp!1583005 (inv!82509 setElem!38249) e!3513098))))

(declare-fun setRest!38249 () (InoxSet Context!10178))

(assert (=> setNonEmpty!38249 (= setRest!38243 ((_ map or) (store ((as const (Array Context!10178 Bool)) false) setElem!38249 true) setRest!38249))))

(declare-fun b!5711962 () Bool)

(declare-fun tp!1583006 () Bool)

(assert (=> b!5711962 (= e!3513098 tp!1583006)))

(assert (= (and setNonEmpty!38243 condSetEmpty!38249) setIsEmpty!38249))

(assert (= (and setNonEmpty!38243 (not condSetEmpty!38249)) setNonEmpty!38249))

(assert (= setNonEmpty!38249 b!5711962))

(declare-fun m!6665650 () Bool)

(assert (=> setNonEmpty!38249 m!6665650))

(declare-fun b!5711970 () Bool)

(declare-fun e!3513104 () Bool)

(declare-fun tp!1583011 () Bool)

(assert (=> b!5711970 (= e!3513104 tp!1583011)))

(declare-fun e!3513103 () Bool)

(declare-fun b!5711969 () Bool)

(declare-fun tp!1583012 () Bool)

(assert (=> b!5711969 (= e!3513103 (and (inv!82509 (h!69740 (t!376736 zl!343))) e!3513104 tp!1583012))))

(assert (=> b!5710972 (= tp!1582940 e!3513103)))

(assert (= b!5711969 b!5711970))

(assert (= (and b!5710972 ((_ is Cons!63292) (t!376736 zl!343))) b!5711969))

(declare-fun m!6665652 () Bool)

(assert (=> b!5711969 m!6665652))

(declare-fun b!5711975 () Bool)

(declare-fun e!3513107 () Bool)

(declare-fun tp!1583015 () Bool)

(assert (=> b!5711975 (= e!3513107 (and tp_is_empty!40663 tp!1583015))))

(assert (=> b!5710978 (= tp!1582937 e!3513107)))

(assert (= (and b!5710978 ((_ is Cons!63290) (t!376734 s!2326))) b!5711975))

(declare-fun b!5711980 () Bool)

(declare-fun e!3513110 () Bool)

(declare-fun tp!1583020 () Bool)

(declare-fun tp!1583021 () Bool)

(assert (=> b!5711980 (= e!3513110 (and tp!1583020 tp!1583021))))

(assert (=> b!5710975 (= tp!1582933 e!3513110)))

(assert (= (and b!5710975 ((_ is Cons!63291) (exprs!5589 (h!69740 zl!343)))) b!5711980))

(declare-fun b!5711994 () Bool)

(declare-fun e!3513113 () Bool)

(declare-fun tp!1583035 () Bool)

(declare-fun tp!1583032 () Bool)

(assert (=> b!5711994 (= e!3513113 (and tp!1583035 tp!1583032))))

(declare-fun b!5711992 () Bool)

(declare-fun tp!1583033 () Bool)

(declare-fun tp!1583036 () Bool)

(assert (=> b!5711992 (= e!3513113 (and tp!1583033 tp!1583036))))

(assert (=> b!5710971 (= tp!1582938 e!3513113)))

(declare-fun b!5711993 () Bool)

(declare-fun tp!1583034 () Bool)

(assert (=> b!5711993 (= e!3513113 tp!1583034)))

(declare-fun b!5711991 () Bool)

(assert (=> b!5711991 (= e!3513113 tp_is_empty!40663)))

(assert (= (and b!5710971 ((_ is ElementMatch!15705) (reg!16034 r!7292))) b!5711991))

(assert (= (and b!5710971 ((_ is Concat!24550) (reg!16034 r!7292))) b!5711992))

(assert (= (and b!5710971 ((_ is Star!15705) (reg!16034 r!7292))) b!5711993))

(assert (= (and b!5710971 ((_ is Union!15705) (reg!16034 r!7292))) b!5711994))

(declare-fun b!5711995 () Bool)

(declare-fun e!3513114 () Bool)

(declare-fun tp!1583037 () Bool)

(declare-fun tp!1583038 () Bool)

(assert (=> b!5711995 (= e!3513114 (and tp!1583037 tp!1583038))))

(assert (=> b!5710951 (= tp!1582941 e!3513114)))

(assert (= (and b!5710951 ((_ is Cons!63291) (exprs!5589 setElem!38243))) b!5711995))

(declare-fun b!5711999 () Bool)

(declare-fun e!3513115 () Bool)

(declare-fun tp!1583042 () Bool)

(declare-fun tp!1583039 () Bool)

(assert (=> b!5711999 (= e!3513115 (and tp!1583042 tp!1583039))))

(declare-fun b!5711997 () Bool)

(declare-fun tp!1583040 () Bool)

(declare-fun tp!1583043 () Bool)

(assert (=> b!5711997 (= e!3513115 (and tp!1583040 tp!1583043))))

(assert (=> b!5710967 (= tp!1582942 e!3513115)))

(declare-fun b!5711998 () Bool)

(declare-fun tp!1583041 () Bool)

(assert (=> b!5711998 (= e!3513115 tp!1583041)))

(declare-fun b!5711996 () Bool)

(assert (=> b!5711996 (= e!3513115 tp_is_empty!40663)))

(assert (= (and b!5710967 ((_ is ElementMatch!15705) (regOne!31923 r!7292))) b!5711996))

(assert (= (and b!5710967 ((_ is Concat!24550) (regOne!31923 r!7292))) b!5711997))

(assert (= (and b!5710967 ((_ is Star!15705) (regOne!31923 r!7292))) b!5711998))

(assert (= (and b!5710967 ((_ is Union!15705) (regOne!31923 r!7292))) b!5711999))

(declare-fun b!5712003 () Bool)

(declare-fun e!3513116 () Bool)

(declare-fun tp!1583047 () Bool)

(declare-fun tp!1583044 () Bool)

(assert (=> b!5712003 (= e!3513116 (and tp!1583047 tp!1583044))))

(declare-fun b!5712001 () Bool)

(declare-fun tp!1583045 () Bool)

(declare-fun tp!1583048 () Bool)

(assert (=> b!5712001 (= e!3513116 (and tp!1583045 tp!1583048))))

(assert (=> b!5710967 (= tp!1582939 e!3513116)))

(declare-fun b!5712002 () Bool)

(declare-fun tp!1583046 () Bool)

(assert (=> b!5712002 (= e!3513116 tp!1583046)))

(declare-fun b!5712000 () Bool)

(assert (=> b!5712000 (= e!3513116 tp_is_empty!40663)))

(assert (= (and b!5710967 ((_ is ElementMatch!15705) (regTwo!31923 r!7292))) b!5712000))

(assert (= (and b!5710967 ((_ is Concat!24550) (regTwo!31923 r!7292))) b!5712001))

(assert (= (and b!5710967 ((_ is Star!15705) (regTwo!31923 r!7292))) b!5712002))

(assert (= (and b!5710967 ((_ is Union!15705) (regTwo!31923 r!7292))) b!5712003))

(declare-fun b!5712007 () Bool)

(declare-fun e!3513117 () Bool)

(declare-fun tp!1583052 () Bool)

(declare-fun tp!1583049 () Bool)

(assert (=> b!5712007 (= e!3513117 (and tp!1583052 tp!1583049))))

(declare-fun b!5712005 () Bool)

(declare-fun tp!1583050 () Bool)

(declare-fun tp!1583053 () Bool)

(assert (=> b!5712005 (= e!3513117 (and tp!1583050 tp!1583053))))

(assert (=> b!5710976 (= tp!1582935 e!3513117)))

(declare-fun b!5712006 () Bool)

(declare-fun tp!1583051 () Bool)

(assert (=> b!5712006 (= e!3513117 tp!1583051)))

(declare-fun b!5712004 () Bool)

(assert (=> b!5712004 (= e!3513117 tp_is_empty!40663)))

(assert (= (and b!5710976 ((_ is ElementMatch!15705) (regOne!31922 r!7292))) b!5712004))

(assert (= (and b!5710976 ((_ is Concat!24550) (regOne!31922 r!7292))) b!5712005))

(assert (= (and b!5710976 ((_ is Star!15705) (regOne!31922 r!7292))) b!5712006))

(assert (= (and b!5710976 ((_ is Union!15705) (regOne!31922 r!7292))) b!5712007))

(declare-fun b!5712011 () Bool)

(declare-fun e!3513118 () Bool)

(declare-fun tp!1583057 () Bool)

(declare-fun tp!1583054 () Bool)

(assert (=> b!5712011 (= e!3513118 (and tp!1583057 tp!1583054))))

(declare-fun b!5712009 () Bool)

(declare-fun tp!1583055 () Bool)

(declare-fun tp!1583058 () Bool)

(assert (=> b!5712009 (= e!3513118 (and tp!1583055 tp!1583058))))

(assert (=> b!5710976 (= tp!1582936 e!3513118)))

(declare-fun b!5712010 () Bool)

(declare-fun tp!1583056 () Bool)

(assert (=> b!5712010 (= e!3513118 tp!1583056)))

(declare-fun b!5712008 () Bool)

(assert (=> b!5712008 (= e!3513118 tp_is_empty!40663)))

(assert (= (and b!5710976 ((_ is ElementMatch!15705) (regTwo!31922 r!7292))) b!5712008))

(assert (= (and b!5710976 ((_ is Concat!24550) (regTwo!31922 r!7292))) b!5712009))

(assert (= (and b!5710976 ((_ is Star!15705) (regTwo!31922 r!7292))) b!5712010))

(assert (= (and b!5710976 ((_ is Union!15705) (regTwo!31922 r!7292))) b!5712011))

(declare-fun b_lambda!215903 () Bool)

(assert (= b_lambda!215899 (or b!5710946 b_lambda!215903)))

(declare-fun bs!1334457 () Bool)

(declare-fun d!1801992 () Bool)

(assert (= bs!1334457 (and d!1801992 b!5710946)))

(assert (=> bs!1334457 (= (dynLambda!24768 lambda!308174 lt!2275539) (derivationStepZipperUp!973 lt!2275539 (h!69738 s!2326)))))

(assert (=> bs!1334457 m!6664624))

(assert (=> d!1801982 d!1801992))

(declare-fun b_lambda!215905 () Bool)

(assert (= b_lambda!215901 (or b!5710946 b_lambda!215905)))

(declare-fun bs!1334458 () Bool)

(declare-fun d!1801994 () Bool)

(assert (= bs!1334458 (and d!1801994 b!5710946)))

(assert (=> bs!1334458 (= (dynLambda!24768 lambda!308174 lt!2275533) (derivationStepZipperUp!973 lt!2275533 (h!69738 s!2326)))))

(assert (=> bs!1334458 m!6664628))

(assert (=> d!1801988 d!1801994))

(declare-fun b_lambda!215907 () Bool)

(assert (= b_lambda!215897 (or b!5710946 b_lambda!215907)))

(declare-fun bs!1334459 () Bool)

(declare-fun d!1801996 () Bool)

(assert (= bs!1334459 (and d!1801996 b!5710946)))

(assert (=> bs!1334459 (= (dynLambda!24768 lambda!308174 (h!69740 zl!343)) (derivationStepZipperUp!973 (h!69740 zl!343) (h!69738 s!2326)))))

(assert (=> bs!1334459 m!6664654))

(assert (=> d!1801944 d!1801996))

(declare-fun b_lambda!215909 () Bool)

(assert (= b_lambda!215895 (or b!5710946 b_lambda!215909)))

(declare-fun bs!1334460 () Bool)

(declare-fun d!1801998 () Bool)

(assert (= bs!1334460 (and d!1801998 b!5710946)))

(assert (=> bs!1334460 (= (dynLambda!24768 lambda!308174 lt!2275519) (derivationStepZipperUp!973 lt!2275519 (h!69738 s!2326)))))

(assert (=> bs!1334460 m!6664696))

(assert (=> d!1801902 d!1801998))

(check-sat (not d!1801952) (not d!1801898) (not b!5711701) (not b!5711471) (not d!1801962) (not d!1801930) (not b!5711808) (not b!5711918) (not bm!436007) (not b!5711635) (not d!1801876) (not d!1801884) (not b!5711764) (not b!5711468) (not b!5711772) (not d!1801936) (not b!5711953) (not d!1801902) (not b!5711943) (not d!1801956) (not b!5711696) (not b!5711771) (not b!5711656) (not b!5711761) (not b!5711957) (not b!5711947) (not b!5711649) (not b!5711829) (not d!1801890) (not b_lambda!215905) (not b_lambda!215909) (not d!1801942) (not b!5711851) (not bm!436005) (not b!5711946) (not b!5711679) (not b!5711994) (not d!1801950) (not b!5711708) (not b!5712001) (not d!1801888) (not d!1801866) (not bm!436021) (not b!5711767) (not b!5711702) (not bm!436030) (not b!5711765) (not b!5711705) (not d!1801820) (not d!1801792) (not bm!436017) (not d!1801982) (not b!5711469) (not d!1801958) (not b!5711970) (not b!5711657) (not b!5711843) (not bs!1334458) (not b!5711472) (not d!1801892) (not b!5712002) (not b!5711941) (not b!5711975) (not b!5711952) (not bm!436022) (not d!1801928) (not b_lambda!215903) (not b!5711932) (not d!1801916) (not b!5711930) (not d!1801946) (not b!5711871) (not d!1801812) (not b!5711910) (not d!1801788) (not bm!436006) (not b!5712006) (not bs!1334457) (not b!5711867) (not b!5711998) (not b!5711815) (not b!5711969) (not b!5711844) (not b!5711762) (not d!1801988) (not d!1801974) (not b!5711806) (not d!1801922) (not b!5711465) (not b!5711820) (not b!5711811) (not bm!436032) (not b!5711852) (not d!1801868) (not d!1801860) (not b!5711779) (not b!5711929) (not bm!436037) (not bm!436020) (not d!1801972) (not b!5711933) (not b!5711699) (not d!1801980) (not b!5711868) (not d!1801914) (not bm!435984) (not setNonEmpty!38249) (not b!5711919) (not b!5711927) (not bm!436010) (not b!5711410) (not b!5711633) (not b!5711840) (not bs!1334460) (not bm!436015) (not b!5711875) (not bm!435991) (not b!5711824) (not b!5711780) (not b!5711466) (not d!1801894) (not b!5711926) (not b!5711686) (not b!5711992) (not b!5711782) (not b!5711962) (not d!1801878) (not b!5711812) (not bm!436033) (not b!5711854) (not b!5711724) (not d!1801880) (not d!1801904) (not b!5711945) (not b!5711562) (not d!1801816) (not bs!1334459) (not d!1801870) (not bm!436013) (not b!5711944) (not d!1801862) (not b!5711698) (not b!5711999) (not bm!436012) (not d!1801872) (not b!5711872) (not d!1801984) (not b!5711409) (not b!5711566) (not b!5711902) (not b!5711704) (not b!5711876) (not b!5711805) (not d!1801734) (not d!1801970) (not d!1801944) (not d!1801910) (not d!1801976) (not d!1801776) (not d!1801754) (not b!5711819) (not b!5711940) (not bm!436036) (not b!5711678) (not b!5711809) (not d!1801968) (not b!5711643) (not b!5711906) (not b!5711655) (not d!1801990) (not b!5711707) (not d!1801926) (not b!5711916) (not bm!436029) (not bm!436011) (not d!1801960) (not b!5711807) (not b!5711683) (not b!5712009) (not b!5711993) (not b!5711997) (not b!5711644) (not d!1801918) (not b!5711825) (not b!5711948) (not b!5711692) (not b!5711685) (not b!5711720) (not b!5712011) (not b!5711646) (not b!5712010) (not b!5711841) tp_is_empty!40663 (not bm!436016) (not b!5711814) (not b!5711768) (not b!5712007) (not b!5711681) (not b_lambda!215907) (not b!5711636) (not b!5711759) (not b!5712003) (not b!5711813) (not d!1801882) (not d!1801796) (not b!5711654) (not d!1801912) (not d!1801864) (not d!1801908) (not bm!435988) (not b!5711682) (not bm!436035) (not bm!435985) (not b!5711995) (not b!5711856) (not b!5711860) (not b!5711980) (not d!1801924) (not d!1801782) (not bm!436034) (not d!1801874) (not b!5711769) (not b!5712005))
(check-sat)
