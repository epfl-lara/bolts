; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!587362 () Bool)

(assert start!587362)

(declare-fun b!5696080 () Bool)

(assert (=> b!5696080 true))

(assert (=> b!5696080 true))

(declare-fun lambda!307027 () Int)

(declare-fun lambda!307026 () Int)

(assert (=> b!5696080 (not (= lambda!307027 lambda!307026))))

(assert (=> b!5696080 true))

(assert (=> b!5696080 true))

(declare-fun b!5696083 () Bool)

(assert (=> b!5696083 true))

(declare-fun bs!1327777 () Bool)

(declare-fun b!5696070 () Bool)

(assert (= bs!1327777 (and b!5696070 b!5696080)))

(declare-datatypes ((C!31650 0))(
  ( (C!31651 (val!25527 Int)) )
))
(declare-datatypes ((Regex!15690 0))(
  ( (ElementMatch!15690 (c!1002952 C!31650)) (Concat!24535 (regOne!31892 Regex!15690) (regTwo!31892 Regex!15690)) (EmptyExpr!15690) (Star!15690 (reg!16019 Regex!15690)) (EmptyLang!15690) (Union!15690 (regOne!31893 Regex!15690) (regTwo!31893 Regex!15690)) )
))
(declare-fun r!7292 () Regex!15690)

(declare-fun lambda!307029 () Int)

(declare-fun lt!2272512 () Regex!15690)

(assert (=> bs!1327777 (= (= lt!2272512 (regOne!31892 r!7292)) (= lambda!307029 lambda!307026))))

(assert (=> bs!1327777 (not (= lambda!307029 lambda!307027))))

(assert (=> b!5696070 true))

(assert (=> b!5696070 true))

(assert (=> b!5696070 true))

(declare-fun lambda!307030 () Int)

(assert (=> bs!1327777 (not (= lambda!307030 lambda!307026))))

(assert (=> bs!1327777 (= (= lt!2272512 (regOne!31892 r!7292)) (= lambda!307030 lambda!307027))))

(assert (=> b!5696070 (not (= lambda!307030 lambda!307029))))

(assert (=> b!5696070 true))

(assert (=> b!5696070 true))

(assert (=> b!5696070 true))

(declare-fun b!5696058 () Bool)

(declare-fun e!3504394 () Bool)

(declare-fun lt!2272532 () Bool)

(declare-fun lt!2272528 () Bool)

(assert (=> b!5696058 (= e!3504394 (or (not lt!2272532) lt!2272528))))

(declare-fun b!5696059 () Bool)

(declare-fun e!3504393 () Bool)

(declare-fun tp!1580090 () Bool)

(declare-fun tp!1580092 () Bool)

(assert (=> b!5696059 (= e!3504393 (and tp!1580090 tp!1580092))))

(declare-fun b!5696060 () Bool)

(declare-fun e!3504380 () Bool)

(declare-fun tp_is_empty!40633 () Bool)

(declare-fun tp!1580093 () Bool)

(assert (=> b!5696060 (= e!3504380 (and tp_is_empty!40633 tp!1580093))))

(declare-fun b!5696061 () Bool)

(declare-fun res!2405423 () Bool)

(declare-fun e!3504376 () Bool)

(assert (=> b!5696061 (=> res!2405423 e!3504376)))

(declare-fun e!3504384 () Bool)

(assert (=> b!5696061 (= res!2405423 e!3504384)))

(declare-fun res!2405421 () Bool)

(assert (=> b!5696061 (=> (not res!2405421) (not e!3504384))))

(assert (=> b!5696061 (= res!2405421 (is-Concat!24535 (regOne!31892 r!7292)))))

(declare-fun b!5696062 () Bool)

(declare-fun e!3504389 () Bool)

(declare-fun e!3504387 () Bool)

(assert (=> b!5696062 (= e!3504389 e!3504387)))

(declare-fun res!2405435 () Bool)

(assert (=> b!5696062 (=> res!2405435 e!3504387)))

(declare-fun lt!2272544 () Regex!15690)

(assert (=> b!5696062 (= res!2405435 (not (= r!7292 lt!2272544)))))

(assert (=> b!5696062 (= lt!2272544 (Concat!24535 lt!2272512 (regTwo!31892 r!7292)))))

(declare-fun b!5696063 () Bool)

(declare-fun res!2405427 () Bool)

(declare-fun e!3504390 () Bool)

(assert (=> b!5696063 (=> res!2405427 e!3504390)))

(declare-datatypes ((List!63369 0))(
  ( (Nil!63245) (Cons!63245 (h!69693 Regex!15690) (t!376687 List!63369)) )
))
(declare-datatypes ((Context!10148 0))(
  ( (Context!10149 (exprs!5574 List!63369)) )
))
(declare-datatypes ((List!63370 0))(
  ( (Nil!63246) (Cons!63246 (h!69694 Context!10148) (t!376688 List!63370)) )
))
(declare-fun zl!343 () List!63370)

(assert (=> b!5696063 (= res!2405427 (not (is-Cons!63245 (exprs!5574 (h!69694 zl!343)))))))

(declare-fun b!5696064 () Bool)

(declare-fun res!2405418 () Bool)

(assert (=> b!5696064 (=> res!2405418 e!3504376)))

(assert (=> b!5696064 (= res!2405418 (or (is-Concat!24535 (regOne!31892 r!7292)) (not (is-Star!15690 (regOne!31892 r!7292)))))))

(declare-fun b!5696065 () Bool)

(declare-fun nullable!5722 (Regex!15690) Bool)

(assert (=> b!5696065 (= e!3504384 (nullable!5722 (regOne!31892 (regOne!31892 r!7292))))))

(declare-fun b!5696066 () Bool)

(assert (=> b!5696066 (= e!3504393 tp_is_empty!40633)))

(declare-fun b!5696067 () Bool)

(declare-fun e!3504395 () Bool)

(assert (=> b!5696067 (= e!3504395 e!3504389)))

(declare-fun res!2405411 () Bool)

(assert (=> b!5696067 (=> res!2405411 e!3504389)))

(declare-fun lt!2272521 () (Set Context!10148))

(declare-fun lt!2272538 () (Set Context!10148))

(assert (=> b!5696067 (= res!2405411 (not (= lt!2272521 lt!2272538)))))

(declare-datatypes ((List!63371 0))(
  ( (Nil!63247) (Cons!63247 (h!69695 C!31650) (t!376689 List!63371)) )
))
(declare-fun s!2326 () List!63371)

(declare-fun lambda!307028 () Int)

(declare-fun lt!2272537 () (Set Context!10148))

(declare-fun lt!2272529 () Context!10148)

(declare-fun flatMap!1303 ((Set Context!10148) Int) (Set Context!10148))

(declare-fun derivationStepZipperUp!958 (Context!10148 C!31650) (Set Context!10148))

(assert (=> b!5696067 (= (flatMap!1303 lt!2272537 lambda!307028) (derivationStepZipperUp!958 lt!2272529 (h!69695 s!2326)))))

(declare-datatypes ((Unit!156292 0))(
  ( (Unit!156293) )
))
(declare-fun lt!2272518 () Unit!156292)

(declare-fun lemmaFlatMapOnSingletonSet!835 ((Set Context!10148) Context!10148 Int) Unit!156292)

(assert (=> b!5696067 (= lt!2272518 (lemmaFlatMapOnSingletonSet!835 lt!2272537 lt!2272529 lambda!307028))))

(declare-fun lt!2272514 () (Set Context!10148))

(assert (=> b!5696067 (= lt!2272514 (derivationStepZipperUp!958 lt!2272529 (h!69695 s!2326)))))

(declare-fun derivationStepZipper!1773 ((Set Context!10148) C!31650) (Set Context!10148))

(assert (=> b!5696067 (= lt!2272521 (derivationStepZipper!1773 lt!2272537 (h!69695 s!2326)))))

(assert (=> b!5696067 (= lt!2272537 (set.insert lt!2272529 (as set.empty (Set Context!10148))))))

(declare-fun lt!2272519 () List!63369)

(assert (=> b!5696067 (= lt!2272529 (Context!10149 (Cons!63245 (reg!16019 (regOne!31892 r!7292)) lt!2272519)))))

(declare-fun b!5696068 () Bool)

(declare-fun tp!1580096 () Bool)

(declare-fun tp!1580095 () Bool)

(assert (=> b!5696068 (= e!3504393 (and tp!1580096 tp!1580095))))

(declare-fun b!5696069 () Bool)

(declare-fun e!3504377 () Unit!156292)

(declare-fun Unit!156294 () Unit!156292)

(assert (=> b!5696069 (= e!3504377 Unit!156294)))

(declare-fun e!3504381 () Bool)

(declare-fun e!3504382 () Bool)

(assert (=> b!5696070 (= e!3504381 e!3504382)))

(declare-fun res!2405415 () Bool)

(assert (=> b!5696070 (=> res!2405415 e!3504382)))

(declare-datatypes ((tuple2!65574 0))(
  ( (tuple2!65575 (_1!36090 List!63371) (_2!36090 List!63371)) )
))
(declare-fun lt!2272540 () tuple2!65574)

(declare-fun ++!13882 (List!63371 List!63371) List!63371)

(assert (=> b!5696070 (= res!2405415 (not (= (++!13882 (_1!36090 lt!2272540) (_2!36090 lt!2272540)) s!2326)))))

(declare-datatypes ((Option!15699 0))(
  ( (None!15698) (Some!15698 (v!51751 tuple2!65574)) )
))
(declare-fun lt!2272542 () Option!15699)

(declare-fun get!21795 (Option!15699) tuple2!65574)

(assert (=> b!5696070 (= lt!2272540 (get!21795 lt!2272542))))

(declare-fun Exists!2790 (Int) Bool)

(assert (=> b!5696070 (= (Exists!2790 lambda!307029) (Exists!2790 lambda!307030))))

(declare-fun lt!2272522 () Unit!156292)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1419 (Regex!15690 Regex!15690 List!63371) Unit!156292)

(assert (=> b!5696070 (= lt!2272522 (lemmaExistCutMatchRandMatchRSpecEquivalent!1419 lt!2272512 (regTwo!31892 r!7292) s!2326))))

(declare-fun isDefined!12402 (Option!15699) Bool)

(assert (=> b!5696070 (= (isDefined!12402 lt!2272542) (Exists!2790 lambda!307029))))

(declare-fun findConcatSeparation!2113 (Regex!15690 Regex!15690 List!63371 List!63371 List!63371) Option!15699)

(assert (=> b!5696070 (= lt!2272542 (findConcatSeparation!2113 lt!2272512 (regTwo!31892 r!7292) Nil!63247 s!2326 s!2326))))

(declare-fun lt!2272516 () Unit!156292)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1877 (Regex!15690 Regex!15690 List!63371) Unit!156292)

(assert (=> b!5696070 (= lt!2272516 (lemmaFindConcatSeparationEquivalentToExists!1877 lt!2272512 (regTwo!31892 r!7292) s!2326))))

(declare-fun e!3504385 () Bool)

(declare-fun e!3504388 () Bool)

(declare-fun tp!1580087 () Bool)

(declare-fun b!5696071 () Bool)

(declare-fun inv!82473 (Context!10148) Bool)

(assert (=> b!5696071 (= e!3504388 (and (inv!82473 (h!69694 zl!343)) e!3504385 tp!1580087))))

(declare-fun b!5696072 () Bool)

(declare-fun res!2405414 () Bool)

(declare-fun e!3504392 () Bool)

(assert (=> b!5696072 (=> res!2405414 e!3504392)))

(declare-fun isEmpty!35103 (List!63369) Bool)

(assert (=> b!5696072 (= res!2405414 (isEmpty!35103 (t!376687 (exprs!5574 (h!69694 zl!343)))))))

(declare-fun b!5696073 () Bool)

(declare-fun res!2405417 () Bool)

(assert (=> b!5696073 (=> res!2405417 e!3504389)))

(declare-fun lt!2272546 () Regex!15690)

(assert (=> b!5696073 (= res!2405417 (not (= lt!2272546 r!7292)))))

(declare-fun b!5696074 () Bool)

(declare-fun res!2405419 () Bool)

(assert (=> b!5696074 (=> res!2405419 e!3504390)))

(declare-fun isEmpty!35104 (List!63370) Bool)

(assert (=> b!5696074 (= res!2405419 (not (isEmpty!35104 (t!376688 zl!343))))))

(declare-fun b!5696075 () Bool)

(declare-fun res!2405413 () Bool)

(assert (=> b!5696075 (=> res!2405413 e!3504390)))

(assert (=> b!5696075 (= res!2405413 (or (is-EmptyExpr!15690 r!7292) (is-EmptyLang!15690 r!7292) (is-ElementMatch!15690 r!7292) (is-Union!15690 r!7292) (not (is-Concat!24535 r!7292))))))

(declare-fun b!5696076 () Bool)

(declare-fun tp!1580091 () Bool)

(assert (=> b!5696076 (= e!3504393 tp!1580091)))

(declare-fun b!5696077 () Bool)

(declare-fun e!3504378 () Bool)

(declare-fun tp!1580094 () Bool)

(assert (=> b!5696077 (= e!3504378 tp!1580094)))

(declare-fun b!5696078 () Bool)

(declare-fun e!3504383 () Bool)

(declare-fun e!3504391 () Bool)

(assert (=> b!5696078 (= e!3504383 e!3504391)))

(declare-fun res!2405422 () Bool)

(assert (=> b!5696078 (=> res!2405422 e!3504391)))

(declare-fun lt!2272524 () Context!10148)

(declare-fun unfocusZipper!1432 (List!63370) Regex!15690)

(assert (=> b!5696078 (= res!2405422 (not (= (unfocusZipper!1432 (Cons!63246 lt!2272524 Nil!63246)) (reg!16019 (regOne!31892 r!7292)))))))

(declare-fun lt!2272536 () (Set Context!10148))

(declare-fun lt!2272547 () Context!10148)

(assert (=> b!5696078 (= (flatMap!1303 lt!2272536 lambda!307028) (derivationStepZipperUp!958 lt!2272547 (h!69695 s!2326)))))

(declare-fun lt!2272531 () Unit!156292)

(assert (=> b!5696078 (= lt!2272531 (lemmaFlatMapOnSingletonSet!835 lt!2272536 lt!2272547 lambda!307028))))

(declare-fun lt!2272526 () (Set Context!10148))

(assert (=> b!5696078 (= (flatMap!1303 lt!2272526 lambda!307028) (derivationStepZipperUp!958 lt!2272524 (h!69695 s!2326)))))

(declare-fun lt!2272511 () Unit!156292)

(assert (=> b!5696078 (= lt!2272511 (lemmaFlatMapOnSingletonSet!835 lt!2272526 lt!2272524 lambda!307028))))

(declare-fun lt!2272530 () (Set Context!10148))

(assert (=> b!5696078 (= lt!2272530 (derivationStepZipperUp!958 lt!2272547 (h!69695 s!2326)))))

(declare-fun lt!2272543 () (Set Context!10148))

(assert (=> b!5696078 (= lt!2272543 (derivationStepZipperUp!958 lt!2272524 (h!69695 s!2326)))))

(assert (=> b!5696078 (= lt!2272536 (set.insert lt!2272547 (as set.empty (Set Context!10148))))))

(assert (=> b!5696078 (= lt!2272526 (set.insert lt!2272524 (as set.empty (Set Context!10148))))))

(assert (=> b!5696078 (= lt!2272524 (Context!10149 (Cons!63245 (reg!16019 (regOne!31892 r!7292)) Nil!63245)))))

(declare-fun b!5696079 () Bool)

(declare-fun matchR!7875 (Regex!15690 List!63371) Bool)

(assert (=> b!5696079 (= e!3504382 (matchR!7875 (regTwo!31892 r!7292) (_2!36090 lt!2272540)))))

(assert (=> b!5696080 (= e!3504390 e!3504392)))

(declare-fun res!2405434 () Bool)

(assert (=> b!5696080 (=> res!2405434 e!3504392)))

(declare-fun lt!2272533 () Bool)

(assert (=> b!5696080 (= res!2405434 (or (not (= lt!2272532 lt!2272533)) (is-Nil!63247 s!2326)))))

(assert (=> b!5696080 (= (Exists!2790 lambda!307026) (Exists!2790 lambda!307027))))

(declare-fun lt!2272541 () Unit!156292)

(assert (=> b!5696080 (= lt!2272541 (lemmaExistCutMatchRandMatchRSpecEquivalent!1419 (regOne!31892 r!7292) (regTwo!31892 r!7292) s!2326))))

(assert (=> b!5696080 (= lt!2272533 (Exists!2790 lambda!307026))))

(assert (=> b!5696080 (= lt!2272533 (isDefined!12402 (findConcatSeparation!2113 (regOne!31892 r!7292) (regTwo!31892 r!7292) Nil!63247 s!2326 s!2326)))))

(declare-fun lt!2272527 () Unit!156292)

(assert (=> b!5696080 (= lt!2272527 (lemmaFindConcatSeparationEquivalentToExists!1877 (regOne!31892 r!7292) (regTwo!31892 r!7292) s!2326))))

(declare-fun setIsEmpty!38136 () Bool)

(declare-fun setRes!38136 () Bool)

(assert (=> setIsEmpty!38136 setRes!38136))

(declare-fun b!5696081 () Bool)

(declare-fun e!3504386 () Bool)

(declare-fun lt!2272535 () (Set Context!10148))

(declare-fun matchZipper!1828 ((Set Context!10148) List!63371) Bool)

(assert (=> b!5696081 (= e!3504386 (matchZipper!1828 lt!2272535 (t!376689 s!2326)))))

(declare-fun b!5696082 () Bool)

(declare-fun res!2405412 () Bool)

(assert (=> b!5696082 (=> res!2405412 e!3504390)))

(declare-fun generalisedConcat!1305 (List!63369) Regex!15690)

(assert (=> b!5696082 (= res!2405412 (not (= r!7292 (generalisedConcat!1305 (exprs!5574 (h!69694 zl!343))))))))

(declare-fun setElem!38136 () Context!10148)

(declare-fun setNonEmpty!38136 () Bool)

(declare-fun tp!1580088 () Bool)

(assert (=> setNonEmpty!38136 (= setRes!38136 (and tp!1580088 (inv!82473 setElem!38136) e!3504378))))

(declare-fun z!1189 () (Set Context!10148))

(declare-fun setRest!38136 () (Set Context!10148))

(assert (=> setNonEmpty!38136 (= z!1189 (set.union (set.insert setElem!38136 (as set.empty (Set Context!10148))) setRest!38136))))

(assert (=> b!5696083 (= e!3504392 e!3504376)))

(declare-fun res!2405425 () Bool)

(assert (=> b!5696083 (=> res!2405425 e!3504376)))

(assert (=> b!5696083 (= res!2405425 (or (and (is-ElementMatch!15690 (regOne!31892 r!7292)) (= (c!1002952 (regOne!31892 r!7292)) (h!69695 s!2326))) (is-Union!15690 (regOne!31892 r!7292))))))

(declare-fun lt!2272520 () Unit!156292)

(assert (=> b!5696083 (= lt!2272520 e!3504377)))

(declare-fun c!1002951 () Bool)

(assert (=> b!5696083 (= c!1002951 (nullable!5722 (h!69693 (exprs!5574 (h!69694 zl!343)))))))

(assert (=> b!5696083 (= (flatMap!1303 z!1189 lambda!307028) (derivationStepZipperUp!958 (h!69694 zl!343) (h!69695 s!2326)))))

(declare-fun lt!2272515 () Unit!156292)

(assert (=> b!5696083 (= lt!2272515 (lemmaFlatMapOnSingletonSet!835 z!1189 (h!69694 zl!343) lambda!307028))))

(declare-fun lt!2272523 () Context!10148)

(assert (=> b!5696083 (= lt!2272535 (derivationStepZipperUp!958 lt!2272523 (h!69695 s!2326)))))

(declare-fun lt!2272545 () (Set Context!10148))

(declare-fun derivationStepZipperDown!1032 (Regex!15690 Context!10148 C!31650) (Set Context!10148))

(assert (=> b!5696083 (= lt!2272545 (derivationStepZipperDown!1032 (h!69693 (exprs!5574 (h!69694 zl!343))) lt!2272523 (h!69695 s!2326)))))

(assert (=> b!5696083 (= lt!2272523 (Context!10149 (t!376687 (exprs!5574 (h!69694 zl!343)))))))

(declare-fun lt!2272539 () (Set Context!10148))

(assert (=> b!5696083 (= lt!2272539 (derivationStepZipperUp!958 (Context!10149 (Cons!63245 (h!69693 (exprs!5574 (h!69694 zl!343))) (t!376687 (exprs!5574 (h!69694 zl!343))))) (h!69695 s!2326)))))

(declare-fun b!5696084 () Bool)

(declare-fun Unit!156295 () Unit!156292)

(assert (=> b!5696084 (= e!3504377 Unit!156295)))

(declare-fun lt!2272517 () Unit!156292)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!715 ((Set Context!10148) (Set Context!10148) List!63371) Unit!156292)

(assert (=> b!5696084 (= lt!2272517 (lemmaZipperConcatMatchesSameAsBothZippers!715 lt!2272545 lt!2272535 (t!376689 s!2326)))))

(declare-fun res!2405432 () Bool)

(assert (=> b!5696084 (= res!2405432 (matchZipper!1828 lt!2272545 (t!376689 s!2326)))))

(assert (=> b!5696084 (=> res!2405432 e!3504386)))

(assert (=> b!5696084 (= (matchZipper!1828 (set.union lt!2272545 lt!2272535) (t!376689 s!2326)) e!3504386)))

(declare-fun b!5696085 () Bool)

(declare-fun e!3504379 () Bool)

(assert (=> b!5696085 (= e!3504379 (not e!3504390))))

(declare-fun res!2405408 () Bool)

(assert (=> b!5696085 (=> res!2405408 e!3504390)))

(assert (=> b!5696085 (= res!2405408 (not (is-Cons!63246 zl!343)))))

(assert (=> b!5696085 (= lt!2272532 lt!2272528)))

(declare-fun matchRSpec!2793 (Regex!15690 List!63371) Bool)

(assert (=> b!5696085 (= lt!2272528 (matchRSpec!2793 r!7292 s!2326))))

(assert (=> b!5696085 (= lt!2272532 (matchR!7875 r!7292 s!2326))))

(declare-fun lt!2272525 () Unit!156292)

(declare-fun mainMatchTheorem!2793 (Regex!15690 List!63371) Unit!156292)

(assert (=> b!5696085 (= lt!2272525 (mainMatchTheorem!2793 r!7292 s!2326))))

(declare-fun b!5696086 () Bool)

(declare-fun res!2405416 () Bool)

(assert (=> b!5696086 (=> res!2405416 e!3504390)))

(declare-fun generalisedUnion!1553 (List!63369) Regex!15690)

(declare-fun unfocusZipperList!1118 (List!63370) List!63369)

(assert (=> b!5696086 (= res!2405416 (not (= r!7292 (generalisedUnion!1553 (unfocusZipperList!1118 zl!343)))))))

(declare-fun b!5696087 () Bool)

(declare-fun res!2405424 () Bool)

(assert (=> b!5696087 (=> res!2405424 e!3504391)))

(assert (=> b!5696087 (= res!2405424 (not (= (unfocusZipper!1432 (Cons!63246 lt!2272547 Nil!63246)) lt!2272544)))))

(declare-fun b!5696088 () Bool)

(declare-fun res!2405433 () Bool)

(assert (=> b!5696088 (=> res!2405433 e!3504389)))

(assert (=> b!5696088 (= res!2405433 (not (= (matchZipper!1828 lt!2272537 s!2326) (matchZipper!1828 lt!2272521 (t!376689 s!2326)))))))

(declare-fun b!5696089 () Bool)

(declare-fun res!2405431 () Bool)

(declare-fun e!3504375 () Bool)

(assert (=> b!5696089 (=> (not res!2405431) (not e!3504375))))

(declare-fun toList!9474 ((Set Context!10148)) List!63370)

(assert (=> b!5696089 (= res!2405431 (= (toList!9474 z!1189) zl!343))))

(declare-fun b!5696090 () Bool)

(assert (=> b!5696090 (= e!3504376 e!3504395)))

(declare-fun res!2405428 () Bool)

(assert (=> b!5696090 (=> res!2405428 e!3504395)))

(assert (=> b!5696090 (= res!2405428 (not (= lt!2272545 lt!2272538)))))

(assert (=> b!5696090 (= lt!2272538 (derivationStepZipperDown!1032 (reg!16019 (regOne!31892 r!7292)) lt!2272547 (h!69695 s!2326)))))

(assert (=> b!5696090 (= lt!2272547 (Context!10149 lt!2272519))))

(assert (=> b!5696090 (= lt!2272519 (Cons!63245 lt!2272512 (t!376687 (exprs!5574 (h!69694 zl!343)))))))

(assert (=> b!5696090 (= lt!2272512 (Star!15690 (reg!16019 (regOne!31892 r!7292))))))

(declare-fun b!5696091 () Bool)

(assert (=> b!5696091 (= e!3504391 e!3504381)))

(declare-fun res!2405426 () Bool)

(assert (=> b!5696091 (=> res!2405426 e!3504381)))

(assert (=> b!5696091 (= res!2405426 (not lt!2272532))))

(assert (=> b!5696091 e!3504394))

(declare-fun res!2405420 () Bool)

(assert (=> b!5696091 (=> (not res!2405420) (not e!3504394))))

(declare-fun lt!2272513 () Regex!15690)

(assert (=> b!5696091 (= res!2405420 (= (matchR!7875 lt!2272513 s!2326) (matchRSpec!2793 lt!2272513 s!2326)))))

(declare-fun lt!2272534 () Unit!156292)

(assert (=> b!5696091 (= lt!2272534 (mainMatchTheorem!2793 lt!2272513 s!2326))))

(declare-fun b!5696092 () Bool)

(declare-fun res!2405430 () Bool)

(assert (=> b!5696092 (=> res!2405430 e!3504382)))

(assert (=> b!5696092 (= res!2405430 (not (matchR!7875 lt!2272512 (_1!36090 lt!2272540))))))

(declare-fun b!5696093 () Bool)

(declare-fun tp!1580089 () Bool)

(assert (=> b!5696093 (= e!3504385 tp!1580089)))

(declare-fun b!5696094 () Bool)

(assert (=> b!5696094 (= e!3504387 e!3504383)))

(declare-fun res!2405429 () Bool)

(assert (=> b!5696094 (=> res!2405429 e!3504383)))

(assert (=> b!5696094 (= res!2405429 (not (= (unfocusZipper!1432 (Cons!63246 lt!2272529 Nil!63246)) lt!2272513)))))

(assert (=> b!5696094 (= lt!2272513 (Concat!24535 (reg!16019 (regOne!31892 r!7292)) lt!2272544))))

(declare-fun b!5696095 () Bool)

(assert (=> b!5696095 (= e!3504375 e!3504379)))

(declare-fun res!2405410 () Bool)

(assert (=> b!5696095 (=> (not res!2405410) (not e!3504379))))

(assert (=> b!5696095 (= res!2405410 (= r!7292 lt!2272546))))

(assert (=> b!5696095 (= lt!2272546 (unfocusZipper!1432 zl!343))))

(declare-fun res!2405409 () Bool)

(assert (=> start!587362 (=> (not res!2405409) (not e!3504375))))

(declare-fun validRegex!7426 (Regex!15690) Bool)

(assert (=> start!587362 (= res!2405409 (validRegex!7426 r!7292))))

(assert (=> start!587362 e!3504375))

(assert (=> start!587362 e!3504393))

(declare-fun condSetEmpty!38136 () Bool)

(assert (=> start!587362 (= condSetEmpty!38136 (= z!1189 (as set.empty (Set Context!10148))))))

(assert (=> start!587362 setRes!38136))

(assert (=> start!587362 e!3504388))

(assert (=> start!587362 e!3504380))

(assert (= (and start!587362 res!2405409) b!5696089))

(assert (= (and b!5696089 res!2405431) b!5696095))

(assert (= (and b!5696095 res!2405410) b!5696085))

(assert (= (and b!5696085 (not res!2405408)) b!5696074))

(assert (= (and b!5696074 (not res!2405419)) b!5696082))

(assert (= (and b!5696082 (not res!2405412)) b!5696063))

(assert (= (and b!5696063 (not res!2405427)) b!5696086))

(assert (= (and b!5696086 (not res!2405416)) b!5696075))

(assert (= (and b!5696075 (not res!2405413)) b!5696080))

(assert (= (and b!5696080 (not res!2405434)) b!5696072))

(assert (= (and b!5696072 (not res!2405414)) b!5696083))

(assert (= (and b!5696083 c!1002951) b!5696084))

(assert (= (and b!5696083 (not c!1002951)) b!5696069))

(assert (= (and b!5696084 (not res!2405432)) b!5696081))

(assert (= (and b!5696083 (not res!2405425)) b!5696061))

(assert (= (and b!5696061 res!2405421) b!5696065))

(assert (= (and b!5696061 (not res!2405423)) b!5696064))

(assert (= (and b!5696064 (not res!2405418)) b!5696090))

(assert (= (and b!5696090 (not res!2405428)) b!5696067))

(assert (= (and b!5696067 (not res!2405411)) b!5696088))

(assert (= (and b!5696088 (not res!2405433)) b!5696073))

(assert (= (and b!5696073 (not res!2405417)) b!5696062))

(assert (= (and b!5696062 (not res!2405435)) b!5696094))

(assert (= (and b!5696094 (not res!2405429)) b!5696078))

(assert (= (and b!5696078 (not res!2405422)) b!5696087))

(assert (= (and b!5696087 (not res!2405424)) b!5696091))

(assert (= (and b!5696091 res!2405420) b!5696058))

(assert (= (and b!5696091 (not res!2405426)) b!5696070))

(assert (= (and b!5696070 (not res!2405415)) b!5696092))

(assert (= (and b!5696092 (not res!2405430)) b!5696079))

(assert (= (and start!587362 (is-ElementMatch!15690 r!7292)) b!5696066))

(assert (= (and start!587362 (is-Concat!24535 r!7292)) b!5696068))

(assert (= (and start!587362 (is-Star!15690 r!7292)) b!5696076))

(assert (= (and start!587362 (is-Union!15690 r!7292)) b!5696059))

(assert (= (and start!587362 condSetEmpty!38136) setIsEmpty!38136))

(assert (= (and start!587362 (not condSetEmpty!38136)) setNonEmpty!38136))

(assert (= setNonEmpty!38136 b!5696077))

(assert (= b!5696071 b!5696093))

(assert (= (and start!587362 (is-Cons!63246 zl!343)) b!5696071))

(assert (= (and start!587362 (is-Cons!63247 s!2326)) b!5696060))

(declare-fun m!6652030 () Bool)

(assert (=> b!5696087 m!6652030))

(declare-fun m!6652032 () Bool)

(assert (=> b!5696095 m!6652032))

(declare-fun m!6652034 () Bool)

(assert (=> b!5696085 m!6652034))

(declare-fun m!6652036 () Bool)

(assert (=> b!5696085 m!6652036))

(declare-fun m!6652038 () Bool)

(assert (=> b!5696085 m!6652038))

(declare-fun m!6652040 () Bool)

(assert (=> b!5696074 m!6652040))

(declare-fun m!6652042 () Bool)

(assert (=> b!5696080 m!6652042))

(declare-fun m!6652044 () Bool)

(assert (=> b!5696080 m!6652044))

(declare-fun m!6652046 () Bool)

(assert (=> b!5696080 m!6652046))

(declare-fun m!6652048 () Bool)

(assert (=> b!5696080 m!6652048))

(declare-fun m!6652050 () Bool)

(assert (=> b!5696080 m!6652050))

(assert (=> b!5696080 m!6652042))

(assert (=> b!5696080 m!6652044))

(declare-fun m!6652052 () Bool)

(assert (=> b!5696080 m!6652052))

(declare-fun m!6652054 () Bool)

(assert (=> b!5696070 m!6652054))

(declare-fun m!6652056 () Bool)

(assert (=> b!5696070 m!6652056))

(declare-fun m!6652058 () Bool)

(assert (=> b!5696070 m!6652058))

(declare-fun m!6652060 () Bool)

(assert (=> b!5696070 m!6652060))

(declare-fun m!6652062 () Bool)

(assert (=> b!5696070 m!6652062))

(declare-fun m!6652064 () Bool)

(assert (=> b!5696070 m!6652064))

(declare-fun m!6652066 () Bool)

(assert (=> b!5696070 m!6652066))

(assert (=> b!5696070 m!6652054))

(declare-fun m!6652068 () Bool)

(assert (=> b!5696070 m!6652068))

(declare-fun m!6652070 () Bool)

(assert (=> b!5696072 m!6652070))

(declare-fun m!6652072 () Bool)

(assert (=> b!5696090 m!6652072))

(declare-fun m!6652074 () Bool)

(assert (=> b!5696086 m!6652074))

(assert (=> b!5696086 m!6652074))

(declare-fun m!6652076 () Bool)

(assert (=> b!5696086 m!6652076))

(declare-fun m!6652078 () Bool)

(assert (=> b!5696083 m!6652078))

(declare-fun m!6652080 () Bool)

(assert (=> b!5696083 m!6652080))

(declare-fun m!6652082 () Bool)

(assert (=> b!5696083 m!6652082))

(declare-fun m!6652084 () Bool)

(assert (=> b!5696083 m!6652084))

(declare-fun m!6652086 () Bool)

(assert (=> b!5696083 m!6652086))

(declare-fun m!6652088 () Bool)

(assert (=> b!5696083 m!6652088))

(declare-fun m!6652090 () Bool)

(assert (=> b!5696083 m!6652090))

(declare-fun m!6652092 () Bool)

(assert (=> b!5696092 m!6652092))

(declare-fun m!6652094 () Bool)

(assert (=> b!5696089 m!6652094))

(declare-fun m!6652096 () Bool)

(assert (=> b!5696088 m!6652096))

(declare-fun m!6652098 () Bool)

(assert (=> b!5696088 m!6652098))

(declare-fun m!6652100 () Bool)

(assert (=> b!5696084 m!6652100))

(declare-fun m!6652102 () Bool)

(assert (=> b!5696084 m!6652102))

(declare-fun m!6652104 () Bool)

(assert (=> b!5696084 m!6652104))

(declare-fun m!6652106 () Bool)

(assert (=> b!5696079 m!6652106))

(declare-fun m!6652108 () Bool)

(assert (=> b!5696082 m!6652108))

(declare-fun m!6652110 () Bool)

(assert (=> b!5696065 m!6652110))

(declare-fun m!6652112 () Bool)

(assert (=> b!5696078 m!6652112))

(declare-fun m!6652114 () Bool)

(assert (=> b!5696078 m!6652114))

(declare-fun m!6652116 () Bool)

(assert (=> b!5696078 m!6652116))

(declare-fun m!6652118 () Bool)

(assert (=> b!5696078 m!6652118))

(declare-fun m!6652120 () Bool)

(assert (=> b!5696078 m!6652120))

(declare-fun m!6652122 () Bool)

(assert (=> b!5696078 m!6652122))

(declare-fun m!6652124 () Bool)

(assert (=> b!5696078 m!6652124))

(declare-fun m!6652126 () Bool)

(assert (=> b!5696078 m!6652126))

(declare-fun m!6652128 () Bool)

(assert (=> b!5696078 m!6652128))

(declare-fun m!6652130 () Bool)

(assert (=> start!587362 m!6652130))

(declare-fun m!6652132 () Bool)

(assert (=> b!5696094 m!6652132))

(declare-fun m!6652134 () Bool)

(assert (=> b!5696071 m!6652134))

(declare-fun m!6652136 () Bool)

(assert (=> setNonEmpty!38136 m!6652136))

(declare-fun m!6652138 () Bool)

(assert (=> b!5696091 m!6652138))

(declare-fun m!6652140 () Bool)

(assert (=> b!5696091 m!6652140))

(declare-fun m!6652142 () Bool)

(assert (=> b!5696091 m!6652142))

(declare-fun m!6652144 () Bool)

(assert (=> b!5696067 m!6652144))

(declare-fun m!6652146 () Bool)

(assert (=> b!5696067 m!6652146))

(declare-fun m!6652148 () Bool)

(assert (=> b!5696067 m!6652148))

(declare-fun m!6652150 () Bool)

(assert (=> b!5696067 m!6652150))

(declare-fun m!6652152 () Bool)

(assert (=> b!5696067 m!6652152))

(declare-fun m!6652154 () Bool)

(assert (=> b!5696081 m!6652154))

(push 1)

(assert (not b!5696081))

(assert (not b!5696070))

(assert (not b!5696071))

(assert (not b!5696080))

(assert (not b!5696067))

(assert (not b!5696092))

(assert (not setNonEmpty!38136))

(assert (not b!5696072))

(assert (not start!587362))

(assert (not b!5696091))

(assert (not b!5696082))

(assert (not b!5696094))

(assert (not b!5696079))

(assert (not b!5696095))

(assert (not b!5696086))

(assert (not b!5696088))

(assert (not b!5696068))

(assert (not b!5696077))

(assert (not b!5696085))

(assert (not b!5696084))

(assert tp_is_empty!40633)

(assert (not b!5696065))

(assert (not b!5696060))

(assert (not b!5696074))

(assert (not b!5696089))

(assert (not b!5696083))

(assert (not b!5696059))

(assert (not b!5696093))

(assert (not b!5696090))

(assert (not b!5696078))

(assert (not b!5696087))

(assert (not b!5696076))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1797409 () Bool)

(declare-fun lambda!307058 () Int)

(declare-fun forall!14831 (List!63369 Int) Bool)

(assert (=> d!1797409 (= (inv!82473 setElem!38136) (forall!14831 (exprs!5574 setElem!38136) lambda!307058))))

(declare-fun bs!1327779 () Bool)

(assert (= bs!1327779 d!1797409))

(declare-fun m!6652282 () Bool)

(assert (=> bs!1327779 m!6652282))

(assert (=> setNonEmpty!38136 d!1797409))

(declare-fun bs!1327780 () Bool)

(declare-fun d!1797411 () Bool)

(assert (= bs!1327780 (and d!1797411 d!1797409)))

(declare-fun lambda!307061 () Int)

(assert (=> bs!1327780 (= lambda!307061 lambda!307058)))

(declare-fun e!3504486 () Bool)

(assert (=> d!1797411 e!3504486))

(declare-fun res!2405548 () Bool)

(assert (=> d!1797411 (=> (not res!2405548) (not e!3504486))))

(declare-fun lt!2272661 () Regex!15690)

(assert (=> d!1797411 (= res!2405548 (validRegex!7426 lt!2272661))))

(declare-fun e!3504484 () Regex!15690)

(assert (=> d!1797411 (= lt!2272661 e!3504484)))

(declare-fun c!1002975 () Bool)

(declare-fun e!3504485 () Bool)

(assert (=> d!1797411 (= c!1002975 e!3504485)))

(declare-fun res!2405549 () Bool)

(assert (=> d!1797411 (=> (not res!2405549) (not e!3504485))))

(assert (=> d!1797411 (= res!2405549 (is-Cons!63245 (exprs!5574 (h!69694 zl!343))))))

(assert (=> d!1797411 (forall!14831 (exprs!5574 (h!69694 zl!343)) lambda!307061)))

(assert (=> d!1797411 (= (generalisedConcat!1305 (exprs!5574 (h!69694 zl!343))) lt!2272661)))

(declare-fun b!5696266 () Bool)

(declare-fun e!3504483 () Bool)

(declare-fun isEmptyExpr!1206 (Regex!15690) Bool)

(assert (=> b!5696266 (= e!3504483 (isEmptyExpr!1206 lt!2272661))))

(declare-fun b!5696267 () Bool)

(assert (=> b!5696267 (= e!3504486 e!3504483)))

(declare-fun c!1002976 () Bool)

(assert (=> b!5696267 (= c!1002976 (isEmpty!35103 (exprs!5574 (h!69694 zl!343))))))

(declare-fun b!5696268 () Bool)

(assert (=> b!5696268 (= e!3504484 (h!69693 (exprs!5574 (h!69694 zl!343))))))

(declare-fun b!5696269 () Bool)

(declare-fun e!3504488 () Regex!15690)

(assert (=> b!5696269 (= e!3504488 (Concat!24535 (h!69693 (exprs!5574 (h!69694 zl!343))) (generalisedConcat!1305 (t!376687 (exprs!5574 (h!69694 zl!343))))))))

(declare-fun b!5696270 () Bool)

(declare-fun e!3504487 () Bool)

(declare-fun head!12076 (List!63369) Regex!15690)

(assert (=> b!5696270 (= e!3504487 (= lt!2272661 (head!12076 (exprs!5574 (h!69694 zl!343)))))))

(declare-fun b!5696271 () Bool)

(assert (=> b!5696271 (= e!3504488 EmptyExpr!15690)))

(declare-fun b!5696272 () Bool)

(assert (=> b!5696272 (= e!3504484 e!3504488)))

(declare-fun c!1002974 () Bool)

(assert (=> b!5696272 (= c!1002974 (is-Cons!63245 (exprs!5574 (h!69694 zl!343))))))

(declare-fun b!5696273 () Bool)

(assert (=> b!5696273 (= e!3504483 e!3504487)))

(declare-fun c!1002977 () Bool)

(declare-fun tail!11171 (List!63369) List!63369)

(assert (=> b!5696273 (= c!1002977 (isEmpty!35103 (tail!11171 (exprs!5574 (h!69694 zl!343)))))))

(declare-fun b!5696274 () Bool)

(declare-fun isConcat!729 (Regex!15690) Bool)

(assert (=> b!5696274 (= e!3504487 (isConcat!729 lt!2272661))))

(declare-fun b!5696275 () Bool)

(assert (=> b!5696275 (= e!3504485 (isEmpty!35103 (t!376687 (exprs!5574 (h!69694 zl!343)))))))

(assert (= (and d!1797411 res!2405549) b!5696275))

(assert (= (and d!1797411 c!1002975) b!5696268))

(assert (= (and d!1797411 (not c!1002975)) b!5696272))

(assert (= (and b!5696272 c!1002974) b!5696269))

(assert (= (and b!5696272 (not c!1002974)) b!5696271))

(assert (= (and d!1797411 res!2405548) b!5696267))

(assert (= (and b!5696267 c!1002976) b!5696266))

(assert (= (and b!5696267 (not c!1002976)) b!5696273))

(assert (= (and b!5696273 c!1002977) b!5696270))

(assert (= (and b!5696273 (not c!1002977)) b!5696274))

(declare-fun m!6652284 () Bool)

(assert (=> b!5696267 m!6652284))

(declare-fun m!6652286 () Bool)

(assert (=> b!5696273 m!6652286))

(assert (=> b!5696273 m!6652286))

(declare-fun m!6652288 () Bool)

(assert (=> b!5696273 m!6652288))

(declare-fun m!6652290 () Bool)

(assert (=> b!5696266 m!6652290))

(declare-fun m!6652292 () Bool)

(assert (=> b!5696270 m!6652292))

(declare-fun m!6652294 () Bool)

(assert (=> b!5696274 m!6652294))

(assert (=> b!5696275 m!6652070))

(declare-fun m!6652296 () Bool)

(assert (=> b!5696269 m!6652296))

(declare-fun m!6652298 () Bool)

(assert (=> d!1797411 m!6652298))

(declare-fun m!6652300 () Bool)

(assert (=> d!1797411 m!6652300))

(assert (=> b!5696082 d!1797411))

(declare-fun d!1797413 () Bool)

(declare-fun c!1002980 () Bool)

(declare-fun isEmpty!35107 (List!63371) Bool)

(assert (=> d!1797413 (= c!1002980 (isEmpty!35107 (t!376689 s!2326)))))

(declare-fun e!3504491 () Bool)

(assert (=> d!1797413 (= (matchZipper!1828 lt!2272535 (t!376689 s!2326)) e!3504491)))

(declare-fun b!5696280 () Bool)

(declare-fun nullableZipper!1648 ((Set Context!10148)) Bool)

(assert (=> b!5696280 (= e!3504491 (nullableZipper!1648 lt!2272535))))

(declare-fun b!5696281 () Bool)

(declare-fun head!12077 (List!63371) C!31650)

(declare-fun tail!11172 (List!63371) List!63371)

(assert (=> b!5696281 (= e!3504491 (matchZipper!1828 (derivationStepZipper!1773 lt!2272535 (head!12077 (t!376689 s!2326))) (tail!11172 (t!376689 s!2326))))))

(assert (= (and d!1797413 c!1002980) b!5696280))

(assert (= (and d!1797413 (not c!1002980)) b!5696281))

(declare-fun m!6652302 () Bool)

(assert (=> d!1797413 m!6652302))

(declare-fun m!6652304 () Bool)

(assert (=> b!5696280 m!6652304))

(declare-fun m!6652306 () Bool)

(assert (=> b!5696281 m!6652306))

(assert (=> b!5696281 m!6652306))

(declare-fun m!6652308 () Bool)

(assert (=> b!5696281 m!6652308))

(declare-fun m!6652310 () Bool)

(assert (=> b!5696281 m!6652310))

(assert (=> b!5696281 m!6652308))

(assert (=> b!5696281 m!6652310))

(declare-fun m!6652312 () Bool)

(assert (=> b!5696281 m!6652312))

(assert (=> b!5696081 d!1797413))

(declare-fun d!1797415 () Bool)

(declare-fun nullableFct!1794 (Regex!15690) Bool)

(assert (=> d!1797415 (= (nullable!5722 (regOne!31892 (regOne!31892 r!7292))) (nullableFct!1794 (regOne!31892 (regOne!31892 r!7292))))))

(declare-fun bs!1327781 () Bool)

(assert (= bs!1327781 d!1797415))

(declare-fun m!6652314 () Bool)

(assert (=> bs!1327781 m!6652314))

(assert (=> b!5696065 d!1797415))

(declare-fun d!1797417 () Bool)

(declare-fun e!3504494 () Bool)

(assert (=> d!1797417 (= (matchZipper!1828 (set.union lt!2272545 lt!2272535) (t!376689 s!2326)) e!3504494)))

(declare-fun res!2405552 () Bool)

(assert (=> d!1797417 (=> res!2405552 e!3504494)))

(assert (=> d!1797417 (= res!2405552 (matchZipper!1828 lt!2272545 (t!376689 s!2326)))))

(declare-fun lt!2272664 () Unit!156292)

(declare-fun choose!43070 ((Set Context!10148) (Set Context!10148) List!63371) Unit!156292)

(assert (=> d!1797417 (= lt!2272664 (choose!43070 lt!2272545 lt!2272535 (t!376689 s!2326)))))

(assert (=> d!1797417 (= (lemmaZipperConcatMatchesSameAsBothZippers!715 lt!2272545 lt!2272535 (t!376689 s!2326)) lt!2272664)))

(declare-fun b!5696284 () Bool)

(assert (=> b!5696284 (= e!3504494 (matchZipper!1828 lt!2272535 (t!376689 s!2326)))))

(assert (= (and d!1797417 (not res!2405552)) b!5696284))

(assert (=> d!1797417 m!6652104))

(assert (=> d!1797417 m!6652102))

(declare-fun m!6652316 () Bool)

(assert (=> d!1797417 m!6652316))

(assert (=> b!5696284 m!6652154))

(assert (=> b!5696084 d!1797417))

(declare-fun d!1797419 () Bool)

(declare-fun c!1002981 () Bool)

(assert (=> d!1797419 (= c!1002981 (isEmpty!35107 (t!376689 s!2326)))))

(declare-fun e!3504495 () Bool)

(assert (=> d!1797419 (= (matchZipper!1828 lt!2272545 (t!376689 s!2326)) e!3504495)))

(declare-fun b!5696285 () Bool)

(assert (=> b!5696285 (= e!3504495 (nullableZipper!1648 lt!2272545))))

(declare-fun b!5696286 () Bool)

(assert (=> b!5696286 (= e!3504495 (matchZipper!1828 (derivationStepZipper!1773 lt!2272545 (head!12077 (t!376689 s!2326))) (tail!11172 (t!376689 s!2326))))))

(assert (= (and d!1797419 c!1002981) b!5696285))

(assert (= (and d!1797419 (not c!1002981)) b!5696286))

(assert (=> d!1797419 m!6652302))

(declare-fun m!6652318 () Bool)

(assert (=> b!5696285 m!6652318))

(assert (=> b!5696286 m!6652306))

(assert (=> b!5696286 m!6652306))

(declare-fun m!6652320 () Bool)

(assert (=> b!5696286 m!6652320))

(assert (=> b!5696286 m!6652310))

(assert (=> b!5696286 m!6652320))

(assert (=> b!5696286 m!6652310))

(declare-fun m!6652322 () Bool)

(assert (=> b!5696286 m!6652322))

(assert (=> b!5696084 d!1797419))

(declare-fun d!1797421 () Bool)

(declare-fun c!1002982 () Bool)

(assert (=> d!1797421 (= c!1002982 (isEmpty!35107 (t!376689 s!2326)))))

(declare-fun e!3504496 () Bool)

(assert (=> d!1797421 (= (matchZipper!1828 (set.union lt!2272545 lt!2272535) (t!376689 s!2326)) e!3504496)))

(declare-fun b!5696287 () Bool)

(assert (=> b!5696287 (= e!3504496 (nullableZipper!1648 (set.union lt!2272545 lt!2272535)))))

(declare-fun b!5696288 () Bool)

(assert (=> b!5696288 (= e!3504496 (matchZipper!1828 (derivationStepZipper!1773 (set.union lt!2272545 lt!2272535) (head!12077 (t!376689 s!2326))) (tail!11172 (t!376689 s!2326))))))

(assert (= (and d!1797421 c!1002982) b!5696287))

(assert (= (and d!1797421 (not c!1002982)) b!5696288))

(assert (=> d!1797421 m!6652302))

(declare-fun m!6652324 () Bool)

(assert (=> b!5696287 m!6652324))

(assert (=> b!5696288 m!6652306))

(assert (=> b!5696288 m!6652306))

(declare-fun m!6652326 () Bool)

(assert (=> b!5696288 m!6652326))

(assert (=> b!5696288 m!6652310))

(assert (=> b!5696288 m!6652326))

(assert (=> b!5696288 m!6652310))

(declare-fun m!6652328 () Bool)

(assert (=> b!5696288 m!6652328))

(assert (=> b!5696084 d!1797421))

(declare-fun d!1797423 () Bool)

(declare-fun choose!43071 ((Set Context!10148) Int) (Set Context!10148))

(assert (=> d!1797423 (= (flatMap!1303 z!1189 lambda!307028) (choose!43071 z!1189 lambda!307028))))

(declare-fun bs!1327782 () Bool)

(assert (= bs!1327782 d!1797423))

(declare-fun m!6652330 () Bool)

(assert (=> bs!1327782 m!6652330))

(assert (=> b!5696083 d!1797423))

(declare-fun d!1797425 () Bool)

(declare-fun dynLambda!24747 (Int Context!10148) (Set Context!10148))

(assert (=> d!1797425 (= (flatMap!1303 z!1189 lambda!307028) (dynLambda!24747 lambda!307028 (h!69694 zl!343)))))

(declare-fun lt!2272667 () Unit!156292)

(declare-fun choose!43072 ((Set Context!10148) Context!10148 Int) Unit!156292)

(assert (=> d!1797425 (= lt!2272667 (choose!43072 z!1189 (h!69694 zl!343) lambda!307028))))

(assert (=> d!1797425 (= z!1189 (set.insert (h!69694 zl!343) (as set.empty (Set Context!10148))))))

(assert (=> d!1797425 (= (lemmaFlatMapOnSingletonSet!835 z!1189 (h!69694 zl!343) lambda!307028) lt!2272667)))

(declare-fun b_lambda!215319 () Bool)

(assert (=> (not b_lambda!215319) (not d!1797425)))

(declare-fun bs!1327783 () Bool)

(assert (= bs!1327783 d!1797425))

(assert (=> bs!1327783 m!6652080))

(declare-fun m!6652332 () Bool)

(assert (=> bs!1327783 m!6652332))

(declare-fun m!6652334 () Bool)

(assert (=> bs!1327783 m!6652334))

(declare-fun m!6652336 () Bool)

(assert (=> bs!1327783 m!6652336))

(assert (=> b!5696083 d!1797425))

(declare-fun d!1797427 () Bool)

(declare-fun c!1002987 () Bool)

(declare-fun e!3504504 () Bool)

(assert (=> d!1797427 (= c!1002987 e!3504504)))

(declare-fun res!2405555 () Bool)

(assert (=> d!1797427 (=> (not res!2405555) (not e!3504504))))

(assert (=> d!1797427 (= res!2405555 (is-Cons!63245 (exprs!5574 lt!2272523)))))

(declare-fun e!3504505 () (Set Context!10148))

(assert (=> d!1797427 (= (derivationStepZipperUp!958 lt!2272523 (h!69695 s!2326)) e!3504505)))

(declare-fun b!5696299 () Bool)

(declare-fun e!3504503 () (Set Context!10148))

(assert (=> b!5696299 (= e!3504505 e!3504503)))

(declare-fun c!1002988 () Bool)

(assert (=> b!5696299 (= c!1002988 (is-Cons!63245 (exprs!5574 lt!2272523)))))

(declare-fun b!5696300 () Bool)

(assert (=> b!5696300 (= e!3504504 (nullable!5722 (h!69693 (exprs!5574 lt!2272523))))))

(declare-fun b!5696301 () Bool)

(declare-fun call!433527 () (Set Context!10148))

(assert (=> b!5696301 (= e!3504503 call!433527)))

(declare-fun b!5696302 () Bool)

(assert (=> b!5696302 (= e!3504505 (set.union call!433527 (derivationStepZipperUp!958 (Context!10149 (t!376687 (exprs!5574 lt!2272523))) (h!69695 s!2326))))))

(declare-fun bm!433522 () Bool)

(assert (=> bm!433522 (= call!433527 (derivationStepZipperDown!1032 (h!69693 (exprs!5574 lt!2272523)) (Context!10149 (t!376687 (exprs!5574 lt!2272523))) (h!69695 s!2326)))))

(declare-fun b!5696303 () Bool)

(assert (=> b!5696303 (= e!3504503 (as set.empty (Set Context!10148)))))

(assert (= (and d!1797427 res!2405555) b!5696300))

(assert (= (and d!1797427 c!1002987) b!5696302))

(assert (= (and d!1797427 (not c!1002987)) b!5696299))

(assert (= (and b!5696299 c!1002988) b!5696301))

(assert (= (and b!5696299 (not c!1002988)) b!5696303))

(assert (= (or b!5696302 b!5696301) bm!433522))

(declare-fun m!6652338 () Bool)

(assert (=> b!5696300 m!6652338))

(declare-fun m!6652340 () Bool)

(assert (=> b!5696302 m!6652340))

(declare-fun m!6652342 () Bool)

(assert (=> bm!433522 m!6652342))

(assert (=> b!5696083 d!1797427))

(declare-fun d!1797429 () Bool)

(assert (=> d!1797429 (= (nullable!5722 (h!69693 (exprs!5574 (h!69694 zl!343)))) (nullableFct!1794 (h!69693 (exprs!5574 (h!69694 zl!343)))))))

(declare-fun bs!1327784 () Bool)

(assert (= bs!1327784 d!1797429))

(declare-fun m!6652344 () Bool)

(assert (=> bs!1327784 m!6652344))

(assert (=> b!5696083 d!1797429))

(declare-fun d!1797431 () Bool)

(declare-fun c!1002989 () Bool)

(declare-fun e!3504507 () Bool)

(assert (=> d!1797431 (= c!1002989 e!3504507)))

(declare-fun res!2405556 () Bool)

(assert (=> d!1797431 (=> (not res!2405556) (not e!3504507))))

(assert (=> d!1797431 (= res!2405556 (is-Cons!63245 (exprs!5574 (Context!10149 (Cons!63245 (h!69693 (exprs!5574 (h!69694 zl!343))) (t!376687 (exprs!5574 (h!69694 zl!343))))))))))

(declare-fun e!3504508 () (Set Context!10148))

(assert (=> d!1797431 (= (derivationStepZipperUp!958 (Context!10149 (Cons!63245 (h!69693 (exprs!5574 (h!69694 zl!343))) (t!376687 (exprs!5574 (h!69694 zl!343))))) (h!69695 s!2326)) e!3504508)))

(declare-fun b!5696304 () Bool)

(declare-fun e!3504506 () (Set Context!10148))

(assert (=> b!5696304 (= e!3504508 e!3504506)))

(declare-fun c!1002990 () Bool)

(assert (=> b!5696304 (= c!1002990 (is-Cons!63245 (exprs!5574 (Context!10149 (Cons!63245 (h!69693 (exprs!5574 (h!69694 zl!343))) (t!376687 (exprs!5574 (h!69694 zl!343))))))))))

(declare-fun b!5696305 () Bool)

(assert (=> b!5696305 (= e!3504507 (nullable!5722 (h!69693 (exprs!5574 (Context!10149 (Cons!63245 (h!69693 (exprs!5574 (h!69694 zl!343))) (t!376687 (exprs!5574 (h!69694 zl!343)))))))))))

(declare-fun b!5696306 () Bool)

(declare-fun call!433528 () (Set Context!10148))

(assert (=> b!5696306 (= e!3504506 call!433528)))

(declare-fun b!5696307 () Bool)

(assert (=> b!5696307 (= e!3504508 (set.union call!433528 (derivationStepZipperUp!958 (Context!10149 (t!376687 (exprs!5574 (Context!10149 (Cons!63245 (h!69693 (exprs!5574 (h!69694 zl!343))) (t!376687 (exprs!5574 (h!69694 zl!343)))))))) (h!69695 s!2326))))))

(declare-fun bm!433523 () Bool)

(assert (=> bm!433523 (= call!433528 (derivationStepZipperDown!1032 (h!69693 (exprs!5574 (Context!10149 (Cons!63245 (h!69693 (exprs!5574 (h!69694 zl!343))) (t!376687 (exprs!5574 (h!69694 zl!343))))))) (Context!10149 (t!376687 (exprs!5574 (Context!10149 (Cons!63245 (h!69693 (exprs!5574 (h!69694 zl!343))) (t!376687 (exprs!5574 (h!69694 zl!343)))))))) (h!69695 s!2326)))))

(declare-fun b!5696308 () Bool)

(assert (=> b!5696308 (= e!3504506 (as set.empty (Set Context!10148)))))

(assert (= (and d!1797431 res!2405556) b!5696305))

(assert (= (and d!1797431 c!1002989) b!5696307))

(assert (= (and d!1797431 (not c!1002989)) b!5696304))

(assert (= (and b!5696304 c!1002990) b!5696306))

(assert (= (and b!5696304 (not c!1002990)) b!5696308))

(assert (= (or b!5696307 b!5696306) bm!433523))

(declare-fun m!6652346 () Bool)

(assert (=> b!5696305 m!6652346))

(declare-fun m!6652348 () Bool)

(assert (=> b!5696307 m!6652348))

(declare-fun m!6652350 () Bool)

(assert (=> bm!433523 m!6652350))

(assert (=> b!5696083 d!1797431))

(declare-fun bm!433536 () Bool)

(declare-fun call!433545 () (Set Context!10148))

(declare-fun call!433542 () (Set Context!10148))

(assert (=> bm!433536 (= call!433545 call!433542)))

(declare-fun b!5696331 () Bool)

(declare-fun c!1003002 () Bool)

(assert (=> b!5696331 (= c!1003002 (is-Star!15690 (h!69693 (exprs!5574 (h!69694 zl!343)))))))

(declare-fun e!3504523 () (Set Context!10148))

(declare-fun e!3504524 () (Set Context!10148))

(assert (=> b!5696331 (= e!3504523 e!3504524)))

(declare-fun c!1003003 () Bool)

(declare-fun c!1003001 () Bool)

(declare-fun call!433544 () List!63369)

(declare-fun bm!433537 () Bool)

(declare-fun c!1003004 () Bool)

(assert (=> bm!433537 (= call!433542 (derivationStepZipperDown!1032 (ite c!1003004 (regOne!31893 (h!69693 (exprs!5574 (h!69694 zl!343)))) (ite c!1003003 (regTwo!31892 (h!69693 (exprs!5574 (h!69694 zl!343)))) (ite c!1003001 (regOne!31892 (h!69693 (exprs!5574 (h!69694 zl!343)))) (reg!16019 (h!69693 (exprs!5574 (h!69694 zl!343))))))) (ite (or c!1003004 c!1003003) lt!2272523 (Context!10149 call!433544)) (h!69695 s!2326)))))

(declare-fun b!5696332 () Bool)

(declare-fun e!3504526 () (Set Context!10148))

(assert (=> b!5696332 (= e!3504526 (set.insert lt!2272523 (as set.empty (Set Context!10148))))))

(declare-fun b!5696333 () Bool)

(declare-fun call!433541 () (Set Context!10148))

(assert (=> b!5696333 (= e!3504523 call!433541)))

(declare-fun b!5696334 () Bool)

(assert (=> b!5696334 (= e!3504524 call!433541)))

(declare-fun b!5696335 () Bool)

(declare-fun e!3504525 () Bool)

(assert (=> b!5696335 (= c!1003003 e!3504525)))

(declare-fun res!2405559 () Bool)

(assert (=> b!5696335 (=> (not res!2405559) (not e!3504525))))

(assert (=> b!5696335 (= res!2405559 (is-Concat!24535 (h!69693 (exprs!5574 (h!69694 zl!343)))))))

(declare-fun e!3504521 () (Set Context!10148))

(declare-fun e!3504522 () (Set Context!10148))

(assert (=> b!5696335 (= e!3504521 e!3504522)))

(declare-fun bm!433538 () Bool)

(declare-fun call!433543 () List!63369)

(assert (=> bm!433538 (= call!433544 call!433543)))

(declare-fun bm!433539 () Bool)

(declare-fun $colon$colon!1715 (List!63369 Regex!15690) List!63369)

(assert (=> bm!433539 (= call!433543 ($colon$colon!1715 (exprs!5574 lt!2272523) (ite (or c!1003003 c!1003001) (regTwo!31892 (h!69693 (exprs!5574 (h!69694 zl!343)))) (h!69693 (exprs!5574 (h!69694 zl!343))))))))

(declare-fun b!5696336 () Bool)

(declare-fun call!433546 () (Set Context!10148))

(assert (=> b!5696336 (= e!3504521 (set.union call!433542 call!433546))))

(declare-fun d!1797433 () Bool)

(declare-fun c!1003005 () Bool)

(assert (=> d!1797433 (= c!1003005 (and (is-ElementMatch!15690 (h!69693 (exprs!5574 (h!69694 zl!343)))) (= (c!1002952 (h!69693 (exprs!5574 (h!69694 zl!343)))) (h!69695 s!2326))))))

(assert (=> d!1797433 (= (derivationStepZipperDown!1032 (h!69693 (exprs!5574 (h!69694 zl!343))) lt!2272523 (h!69695 s!2326)) e!3504526)))

(declare-fun bm!433540 () Bool)

(assert (=> bm!433540 (= call!433546 (derivationStepZipperDown!1032 (ite c!1003004 (regTwo!31893 (h!69693 (exprs!5574 (h!69694 zl!343)))) (regOne!31892 (h!69693 (exprs!5574 (h!69694 zl!343))))) (ite c!1003004 lt!2272523 (Context!10149 call!433543)) (h!69695 s!2326)))))

(declare-fun b!5696337 () Bool)

(assert (=> b!5696337 (= e!3504525 (nullable!5722 (regOne!31892 (h!69693 (exprs!5574 (h!69694 zl!343))))))))

(declare-fun b!5696338 () Bool)

(assert (=> b!5696338 (= e!3504522 e!3504523)))

(assert (=> b!5696338 (= c!1003001 (is-Concat!24535 (h!69693 (exprs!5574 (h!69694 zl!343)))))))

(declare-fun b!5696339 () Bool)

(assert (=> b!5696339 (= e!3504526 e!3504521)))

(assert (=> b!5696339 (= c!1003004 (is-Union!15690 (h!69693 (exprs!5574 (h!69694 zl!343)))))))

(declare-fun b!5696340 () Bool)

(assert (=> b!5696340 (= e!3504524 (as set.empty (Set Context!10148)))))

(declare-fun b!5696341 () Bool)

(assert (=> b!5696341 (= e!3504522 (set.union call!433546 call!433545))))

(declare-fun bm!433541 () Bool)

(assert (=> bm!433541 (= call!433541 call!433545)))

(assert (= (and d!1797433 c!1003005) b!5696332))

(assert (= (and d!1797433 (not c!1003005)) b!5696339))

(assert (= (and b!5696339 c!1003004) b!5696336))

(assert (= (and b!5696339 (not c!1003004)) b!5696335))

(assert (= (and b!5696335 res!2405559) b!5696337))

(assert (= (and b!5696335 c!1003003) b!5696341))

(assert (= (and b!5696335 (not c!1003003)) b!5696338))

(assert (= (and b!5696338 c!1003001) b!5696333))

(assert (= (and b!5696338 (not c!1003001)) b!5696331))

(assert (= (and b!5696331 c!1003002) b!5696334))

(assert (= (and b!5696331 (not c!1003002)) b!5696340))

(assert (= (or b!5696333 b!5696334) bm!433538))

(assert (= (or b!5696333 b!5696334) bm!433541))

(assert (= (or b!5696341 bm!433538) bm!433539))

(assert (= (or b!5696341 bm!433541) bm!433536))

(assert (= (or b!5696336 b!5696341) bm!433540))

(assert (= (or b!5696336 bm!433536) bm!433537))

(declare-fun m!6652352 () Bool)

(assert (=> bm!433540 m!6652352))

(declare-fun m!6652354 () Bool)

(assert (=> b!5696332 m!6652354))

(declare-fun m!6652356 () Bool)

(assert (=> bm!433539 m!6652356))

(declare-fun m!6652358 () Bool)

(assert (=> bm!433537 m!6652358))

(declare-fun m!6652360 () Bool)

(assert (=> b!5696337 m!6652360))

(assert (=> b!5696083 d!1797433))

(declare-fun d!1797435 () Bool)

(declare-fun c!1003006 () Bool)

(declare-fun e!3504528 () Bool)

(assert (=> d!1797435 (= c!1003006 e!3504528)))

(declare-fun res!2405560 () Bool)

(assert (=> d!1797435 (=> (not res!2405560) (not e!3504528))))

(assert (=> d!1797435 (= res!2405560 (is-Cons!63245 (exprs!5574 (h!69694 zl!343))))))

(declare-fun e!3504529 () (Set Context!10148))

(assert (=> d!1797435 (= (derivationStepZipperUp!958 (h!69694 zl!343) (h!69695 s!2326)) e!3504529)))

(declare-fun b!5696342 () Bool)

(declare-fun e!3504527 () (Set Context!10148))

(assert (=> b!5696342 (= e!3504529 e!3504527)))

(declare-fun c!1003007 () Bool)

(assert (=> b!5696342 (= c!1003007 (is-Cons!63245 (exprs!5574 (h!69694 zl!343))))))

(declare-fun b!5696343 () Bool)

(assert (=> b!5696343 (= e!3504528 (nullable!5722 (h!69693 (exprs!5574 (h!69694 zl!343)))))))

(declare-fun b!5696344 () Bool)

(declare-fun call!433547 () (Set Context!10148))

(assert (=> b!5696344 (= e!3504527 call!433547)))

(declare-fun b!5696345 () Bool)

(assert (=> b!5696345 (= e!3504529 (set.union call!433547 (derivationStepZipperUp!958 (Context!10149 (t!376687 (exprs!5574 (h!69694 zl!343)))) (h!69695 s!2326))))))

(declare-fun bm!433542 () Bool)

(assert (=> bm!433542 (= call!433547 (derivationStepZipperDown!1032 (h!69693 (exprs!5574 (h!69694 zl!343))) (Context!10149 (t!376687 (exprs!5574 (h!69694 zl!343)))) (h!69695 s!2326)))))

(declare-fun b!5696346 () Bool)

(assert (=> b!5696346 (= e!3504527 (as set.empty (Set Context!10148)))))

(assert (= (and d!1797435 res!2405560) b!5696343))

(assert (= (and d!1797435 c!1003006) b!5696345))

(assert (= (and d!1797435 (not c!1003006)) b!5696342))

(assert (= (and b!5696342 c!1003007) b!5696344))

(assert (= (and b!5696342 (not c!1003007)) b!5696346))

(assert (= (or b!5696345 b!5696344) bm!433542))

(assert (=> b!5696343 m!6652088))

(declare-fun m!6652362 () Bool)

(assert (=> b!5696345 m!6652362))

(declare-fun m!6652364 () Bool)

(assert (=> bm!433542 m!6652364))

(assert (=> b!5696083 d!1797435))

(declare-fun d!1797437 () Bool)

(declare-fun c!1003008 () Bool)

(declare-fun e!3504531 () Bool)

(assert (=> d!1797437 (= c!1003008 e!3504531)))

(declare-fun res!2405561 () Bool)

(assert (=> d!1797437 (=> (not res!2405561) (not e!3504531))))

(assert (=> d!1797437 (= res!2405561 (is-Cons!63245 (exprs!5574 lt!2272547)))))

(declare-fun e!3504532 () (Set Context!10148))

(assert (=> d!1797437 (= (derivationStepZipperUp!958 lt!2272547 (h!69695 s!2326)) e!3504532)))

(declare-fun b!5696347 () Bool)

(declare-fun e!3504530 () (Set Context!10148))

(assert (=> b!5696347 (= e!3504532 e!3504530)))

(declare-fun c!1003009 () Bool)

(assert (=> b!5696347 (= c!1003009 (is-Cons!63245 (exprs!5574 lt!2272547)))))

(declare-fun b!5696348 () Bool)

(assert (=> b!5696348 (= e!3504531 (nullable!5722 (h!69693 (exprs!5574 lt!2272547))))))

(declare-fun b!5696349 () Bool)

(declare-fun call!433548 () (Set Context!10148))

(assert (=> b!5696349 (= e!3504530 call!433548)))

(declare-fun b!5696350 () Bool)

(assert (=> b!5696350 (= e!3504532 (set.union call!433548 (derivationStepZipperUp!958 (Context!10149 (t!376687 (exprs!5574 lt!2272547))) (h!69695 s!2326))))))

(declare-fun bm!433543 () Bool)

(assert (=> bm!433543 (= call!433548 (derivationStepZipperDown!1032 (h!69693 (exprs!5574 lt!2272547)) (Context!10149 (t!376687 (exprs!5574 lt!2272547))) (h!69695 s!2326)))))

(declare-fun b!5696351 () Bool)

(assert (=> b!5696351 (= e!3504530 (as set.empty (Set Context!10148)))))

(assert (= (and d!1797437 res!2405561) b!5696348))

(assert (= (and d!1797437 c!1003008) b!5696350))

(assert (= (and d!1797437 (not c!1003008)) b!5696347))

(assert (= (and b!5696347 c!1003009) b!5696349))

(assert (= (and b!5696347 (not c!1003009)) b!5696351))

(assert (= (or b!5696350 b!5696349) bm!433543))

(declare-fun m!6652366 () Bool)

(assert (=> b!5696348 m!6652366))

(declare-fun m!6652368 () Bool)

(assert (=> b!5696350 m!6652368))

(declare-fun m!6652370 () Bool)

(assert (=> bm!433543 m!6652370))

(assert (=> b!5696078 d!1797437))

(declare-fun d!1797439 () Bool)

(assert (=> d!1797439 (= (flatMap!1303 lt!2272526 lambda!307028) (dynLambda!24747 lambda!307028 lt!2272524))))

(declare-fun lt!2272668 () Unit!156292)

(assert (=> d!1797439 (= lt!2272668 (choose!43072 lt!2272526 lt!2272524 lambda!307028))))

(assert (=> d!1797439 (= lt!2272526 (set.insert lt!2272524 (as set.empty (Set Context!10148))))))

(assert (=> d!1797439 (= (lemmaFlatMapOnSingletonSet!835 lt!2272526 lt!2272524 lambda!307028) lt!2272668)))

(declare-fun b_lambda!215321 () Bool)

(assert (=> (not b_lambda!215321) (not d!1797439)))

(declare-fun bs!1327785 () Bool)

(assert (= bs!1327785 d!1797439))

(assert (=> bs!1327785 m!6652118))

(declare-fun m!6652372 () Bool)

(assert (=> bs!1327785 m!6652372))

(declare-fun m!6652374 () Bool)

(assert (=> bs!1327785 m!6652374))

(assert (=> bs!1327785 m!6652126))

(assert (=> b!5696078 d!1797439))

(declare-fun d!1797441 () Bool)

(declare-fun c!1003010 () Bool)

(declare-fun e!3504534 () Bool)

(assert (=> d!1797441 (= c!1003010 e!3504534)))

(declare-fun res!2405562 () Bool)

(assert (=> d!1797441 (=> (not res!2405562) (not e!3504534))))

(assert (=> d!1797441 (= res!2405562 (is-Cons!63245 (exprs!5574 lt!2272524)))))

(declare-fun e!3504535 () (Set Context!10148))

(assert (=> d!1797441 (= (derivationStepZipperUp!958 lt!2272524 (h!69695 s!2326)) e!3504535)))

(declare-fun b!5696352 () Bool)

(declare-fun e!3504533 () (Set Context!10148))

(assert (=> b!5696352 (= e!3504535 e!3504533)))

(declare-fun c!1003011 () Bool)

(assert (=> b!5696352 (= c!1003011 (is-Cons!63245 (exprs!5574 lt!2272524)))))

(declare-fun b!5696353 () Bool)

(assert (=> b!5696353 (= e!3504534 (nullable!5722 (h!69693 (exprs!5574 lt!2272524))))))

(declare-fun b!5696354 () Bool)

(declare-fun call!433549 () (Set Context!10148))

(assert (=> b!5696354 (= e!3504533 call!433549)))

(declare-fun b!5696355 () Bool)

(assert (=> b!5696355 (= e!3504535 (set.union call!433549 (derivationStepZipperUp!958 (Context!10149 (t!376687 (exprs!5574 lt!2272524))) (h!69695 s!2326))))))

(declare-fun bm!433544 () Bool)

(assert (=> bm!433544 (= call!433549 (derivationStepZipperDown!1032 (h!69693 (exprs!5574 lt!2272524)) (Context!10149 (t!376687 (exprs!5574 lt!2272524))) (h!69695 s!2326)))))

(declare-fun b!5696356 () Bool)

(assert (=> b!5696356 (= e!3504533 (as set.empty (Set Context!10148)))))

(assert (= (and d!1797441 res!2405562) b!5696353))

(assert (= (and d!1797441 c!1003010) b!5696355))

(assert (= (and d!1797441 (not c!1003010)) b!5696352))

(assert (= (and b!5696352 c!1003011) b!5696354))

(assert (= (and b!5696352 (not c!1003011)) b!5696356))

(assert (= (or b!5696355 b!5696354) bm!433544))

(declare-fun m!6652376 () Bool)

(assert (=> b!5696353 m!6652376))

(declare-fun m!6652378 () Bool)

(assert (=> b!5696355 m!6652378))

(declare-fun m!6652380 () Bool)

(assert (=> bm!433544 m!6652380))

(assert (=> b!5696078 d!1797441))

(declare-fun d!1797443 () Bool)

(assert (=> d!1797443 (= (flatMap!1303 lt!2272536 lambda!307028) (choose!43071 lt!2272536 lambda!307028))))

(declare-fun bs!1327786 () Bool)

(assert (= bs!1327786 d!1797443))

(declare-fun m!6652382 () Bool)

(assert (=> bs!1327786 m!6652382))

(assert (=> b!5696078 d!1797443))

(declare-fun d!1797445 () Bool)

(assert (=> d!1797445 (= (flatMap!1303 lt!2272536 lambda!307028) (dynLambda!24747 lambda!307028 lt!2272547))))

(declare-fun lt!2272669 () Unit!156292)

(assert (=> d!1797445 (= lt!2272669 (choose!43072 lt!2272536 lt!2272547 lambda!307028))))

(assert (=> d!1797445 (= lt!2272536 (set.insert lt!2272547 (as set.empty (Set Context!10148))))))

(assert (=> d!1797445 (= (lemmaFlatMapOnSingletonSet!835 lt!2272536 lt!2272547 lambda!307028) lt!2272669)))

(declare-fun b_lambda!215323 () Bool)

(assert (=> (not b_lambda!215323) (not d!1797445)))

(declare-fun bs!1327787 () Bool)

(assert (= bs!1327787 d!1797445))

(assert (=> bs!1327787 m!6652116))

(declare-fun m!6652384 () Bool)

(assert (=> bs!1327787 m!6652384))

(declare-fun m!6652386 () Bool)

(assert (=> bs!1327787 m!6652386))

(assert (=> bs!1327787 m!6652122))

(assert (=> b!5696078 d!1797445))

(declare-fun d!1797447 () Bool)

(declare-fun lt!2272672 () Regex!15690)

(assert (=> d!1797447 (validRegex!7426 lt!2272672)))

(assert (=> d!1797447 (= lt!2272672 (generalisedUnion!1553 (unfocusZipperList!1118 (Cons!63246 lt!2272524 Nil!63246))))))

(assert (=> d!1797447 (= (unfocusZipper!1432 (Cons!63246 lt!2272524 Nil!63246)) lt!2272672)))

(declare-fun bs!1327788 () Bool)

(assert (= bs!1327788 d!1797447))

(declare-fun m!6652388 () Bool)

(assert (=> bs!1327788 m!6652388))

(declare-fun m!6652390 () Bool)

(assert (=> bs!1327788 m!6652390))

(assert (=> bs!1327788 m!6652390))

(declare-fun m!6652392 () Bool)

(assert (=> bs!1327788 m!6652392))

(assert (=> b!5696078 d!1797447))

(declare-fun d!1797449 () Bool)

(assert (=> d!1797449 (= (flatMap!1303 lt!2272526 lambda!307028) (choose!43071 lt!2272526 lambda!307028))))

(declare-fun bs!1327789 () Bool)

(assert (= bs!1327789 d!1797449))

(declare-fun m!6652394 () Bool)

(assert (=> bs!1327789 m!6652394))

(assert (=> b!5696078 d!1797449))

(declare-fun b!5696375 () Bool)

(declare-fun res!2405575 () Bool)

(declare-fun e!3504548 () Bool)

(assert (=> b!5696375 (=> (not res!2405575) (not e!3504548))))

(declare-fun lt!2272681 () Option!15699)

(assert (=> b!5696375 (= res!2405575 (matchR!7875 (regTwo!31892 r!7292) (_2!36090 (get!21795 lt!2272681))))))

(declare-fun b!5696376 () Bool)

(declare-fun e!3504550 () Bool)

(assert (=> b!5696376 (= e!3504550 (matchR!7875 (regTwo!31892 r!7292) s!2326))))

(declare-fun b!5696377 () Bool)

(declare-fun e!3504546 () Bool)

(assert (=> b!5696377 (= e!3504546 (not (isDefined!12402 lt!2272681)))))

(declare-fun b!5696378 () Bool)

(declare-fun e!3504547 () Option!15699)

(assert (=> b!5696378 (= e!3504547 None!15698)))

(declare-fun b!5696379 () Bool)

(declare-fun lt!2272680 () Unit!156292)

(declare-fun lt!2272679 () Unit!156292)

(assert (=> b!5696379 (= lt!2272680 lt!2272679)))

(assert (=> b!5696379 (= (++!13882 (++!13882 Nil!63247 (Cons!63247 (h!69695 s!2326) Nil!63247)) (t!376689 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2051 (List!63371 C!31650 List!63371 List!63371) Unit!156292)

(assert (=> b!5696379 (= lt!2272679 (lemmaMoveElementToOtherListKeepsConcatEq!2051 Nil!63247 (h!69695 s!2326) (t!376689 s!2326) s!2326))))

(assert (=> b!5696379 (= e!3504547 (findConcatSeparation!2113 (regOne!31892 r!7292) (regTwo!31892 r!7292) (++!13882 Nil!63247 (Cons!63247 (h!69695 s!2326) Nil!63247)) (t!376689 s!2326) s!2326))))

(declare-fun d!1797451 () Bool)

(assert (=> d!1797451 e!3504546))

(declare-fun res!2405577 () Bool)

(assert (=> d!1797451 (=> res!2405577 e!3504546)))

(assert (=> d!1797451 (= res!2405577 e!3504548)))

(declare-fun res!2405576 () Bool)

(assert (=> d!1797451 (=> (not res!2405576) (not e!3504548))))

(assert (=> d!1797451 (= res!2405576 (isDefined!12402 lt!2272681))))

(declare-fun e!3504549 () Option!15699)

(assert (=> d!1797451 (= lt!2272681 e!3504549)))

(declare-fun c!1003017 () Bool)

(assert (=> d!1797451 (= c!1003017 e!3504550)))

(declare-fun res!2405573 () Bool)

(assert (=> d!1797451 (=> (not res!2405573) (not e!3504550))))

(assert (=> d!1797451 (= res!2405573 (matchR!7875 (regOne!31892 r!7292) Nil!63247))))

(assert (=> d!1797451 (validRegex!7426 (regOne!31892 r!7292))))

(assert (=> d!1797451 (= (findConcatSeparation!2113 (regOne!31892 r!7292) (regTwo!31892 r!7292) Nil!63247 s!2326 s!2326) lt!2272681)))

(declare-fun b!5696380 () Bool)

(assert (=> b!5696380 (= e!3504549 (Some!15698 (tuple2!65575 Nil!63247 s!2326)))))

(declare-fun b!5696381 () Bool)

(assert (=> b!5696381 (= e!3504549 e!3504547)))

(declare-fun c!1003016 () Bool)

(assert (=> b!5696381 (= c!1003016 (is-Nil!63247 s!2326))))

(declare-fun b!5696382 () Bool)

(declare-fun res!2405574 () Bool)

(assert (=> b!5696382 (=> (not res!2405574) (not e!3504548))))

(assert (=> b!5696382 (= res!2405574 (matchR!7875 (regOne!31892 r!7292) (_1!36090 (get!21795 lt!2272681))))))

(declare-fun b!5696383 () Bool)

(assert (=> b!5696383 (= e!3504548 (= (++!13882 (_1!36090 (get!21795 lt!2272681)) (_2!36090 (get!21795 lt!2272681))) s!2326))))

(assert (= (and d!1797451 res!2405573) b!5696376))

(assert (= (and d!1797451 c!1003017) b!5696380))

(assert (= (and d!1797451 (not c!1003017)) b!5696381))

(assert (= (and b!5696381 c!1003016) b!5696378))

(assert (= (and b!5696381 (not c!1003016)) b!5696379))

(assert (= (and d!1797451 res!2405576) b!5696382))

(assert (= (and b!5696382 res!2405574) b!5696375))

(assert (= (and b!5696375 res!2405575) b!5696383))

(assert (= (and d!1797451 (not res!2405577)) b!5696377))

(declare-fun m!6652396 () Bool)

(assert (=> b!5696383 m!6652396))

(declare-fun m!6652398 () Bool)

(assert (=> b!5696383 m!6652398))

(declare-fun m!6652400 () Bool)

(assert (=> d!1797451 m!6652400))

(declare-fun m!6652402 () Bool)

(assert (=> d!1797451 m!6652402))

(declare-fun m!6652404 () Bool)

(assert (=> d!1797451 m!6652404))

(assert (=> b!5696375 m!6652396))

(declare-fun m!6652406 () Bool)

(assert (=> b!5696375 m!6652406))

(declare-fun m!6652408 () Bool)

(assert (=> b!5696379 m!6652408))

(assert (=> b!5696379 m!6652408))

(declare-fun m!6652410 () Bool)

(assert (=> b!5696379 m!6652410))

(declare-fun m!6652412 () Bool)

(assert (=> b!5696379 m!6652412))

(assert (=> b!5696379 m!6652408))

(declare-fun m!6652414 () Bool)

(assert (=> b!5696379 m!6652414))

(declare-fun m!6652416 () Bool)

(assert (=> b!5696376 m!6652416))

(assert (=> b!5696377 m!6652400))

(assert (=> b!5696382 m!6652396))

(declare-fun m!6652418 () Bool)

(assert (=> b!5696382 m!6652418))

(assert (=> b!5696080 d!1797451))

(declare-fun d!1797453 () Bool)

(declare-fun choose!43073 (Int) Bool)

(assert (=> d!1797453 (= (Exists!2790 lambda!307026) (choose!43073 lambda!307026))))

(declare-fun bs!1327790 () Bool)

(assert (= bs!1327790 d!1797453))

(declare-fun m!6652420 () Bool)

(assert (=> bs!1327790 m!6652420))

(assert (=> b!5696080 d!1797453))

(declare-fun bs!1327791 () Bool)

(declare-fun d!1797455 () Bool)

(assert (= bs!1327791 (and d!1797455 b!5696080)))

(declare-fun lambda!307066 () Int)

(assert (=> bs!1327791 (= lambda!307066 lambda!307026)))

(assert (=> bs!1327791 (not (= lambda!307066 lambda!307027))))

(declare-fun bs!1327792 () Bool)

(assert (= bs!1327792 (and d!1797455 b!5696070)))

(assert (=> bs!1327792 (= (= (regOne!31892 r!7292) lt!2272512) (= lambda!307066 lambda!307029))))

(assert (=> bs!1327792 (not (= lambda!307066 lambda!307030))))

(assert (=> d!1797455 true))

(assert (=> d!1797455 true))

(assert (=> d!1797455 true))

(declare-fun lambda!307067 () Int)

(assert (=> bs!1327792 (not (= lambda!307067 lambda!307029))))

(declare-fun bs!1327793 () Bool)

(assert (= bs!1327793 d!1797455))

(assert (=> bs!1327793 (not (= lambda!307067 lambda!307066))))

(assert (=> bs!1327791 (= lambda!307067 lambda!307027)))

(assert (=> bs!1327792 (= (= (regOne!31892 r!7292) lt!2272512) (= lambda!307067 lambda!307030))))

(assert (=> bs!1327791 (not (= lambda!307067 lambda!307026))))

(assert (=> d!1797455 true))

(assert (=> d!1797455 true))

(assert (=> d!1797455 true))

(assert (=> d!1797455 (= (Exists!2790 lambda!307066) (Exists!2790 lambda!307067))))

(declare-fun lt!2272684 () Unit!156292)

(declare-fun choose!43074 (Regex!15690 Regex!15690 List!63371) Unit!156292)

(assert (=> d!1797455 (= lt!2272684 (choose!43074 (regOne!31892 r!7292) (regTwo!31892 r!7292) s!2326))))

(assert (=> d!1797455 (validRegex!7426 (regOne!31892 r!7292))))

(assert (=> d!1797455 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1419 (regOne!31892 r!7292) (regTwo!31892 r!7292) s!2326) lt!2272684)))

(declare-fun m!6652422 () Bool)

(assert (=> bs!1327793 m!6652422))

(declare-fun m!6652424 () Bool)

(assert (=> bs!1327793 m!6652424))

(declare-fun m!6652426 () Bool)

(assert (=> bs!1327793 m!6652426))

(assert (=> bs!1327793 m!6652404))

(assert (=> b!5696080 d!1797455))

(declare-fun d!1797457 () Bool)

(declare-fun isEmpty!35108 (Option!15699) Bool)

(assert (=> d!1797457 (= (isDefined!12402 (findConcatSeparation!2113 (regOne!31892 r!7292) (regTwo!31892 r!7292) Nil!63247 s!2326 s!2326)) (not (isEmpty!35108 (findConcatSeparation!2113 (regOne!31892 r!7292) (regTwo!31892 r!7292) Nil!63247 s!2326 s!2326))))))

(declare-fun bs!1327794 () Bool)

(assert (= bs!1327794 d!1797457))

(assert (=> bs!1327794 m!6652044))

(declare-fun m!6652428 () Bool)

(assert (=> bs!1327794 m!6652428))

(assert (=> b!5696080 d!1797457))

(declare-fun bs!1327795 () Bool)

(declare-fun d!1797459 () Bool)

(assert (= bs!1327795 (and d!1797459 b!5696070)))

(declare-fun lambda!307070 () Int)

(assert (=> bs!1327795 (= (= (regOne!31892 r!7292) lt!2272512) (= lambda!307070 lambda!307029))))

(declare-fun bs!1327796 () Bool)

(assert (= bs!1327796 (and d!1797459 d!1797455)))

(assert (=> bs!1327796 (= lambda!307070 lambda!307066)))

(declare-fun bs!1327797 () Bool)

(assert (= bs!1327797 (and d!1797459 b!5696080)))

(assert (=> bs!1327797 (not (= lambda!307070 lambda!307027))))

(assert (=> bs!1327795 (not (= lambda!307070 lambda!307030))))

(assert (=> bs!1327796 (not (= lambda!307070 lambda!307067))))

(assert (=> bs!1327797 (= lambda!307070 lambda!307026)))

(assert (=> d!1797459 true))

(assert (=> d!1797459 true))

(assert (=> d!1797459 true))

(assert (=> d!1797459 (= (isDefined!12402 (findConcatSeparation!2113 (regOne!31892 r!7292) (regTwo!31892 r!7292) Nil!63247 s!2326 s!2326)) (Exists!2790 lambda!307070))))

(declare-fun lt!2272687 () Unit!156292)

(declare-fun choose!43075 (Regex!15690 Regex!15690 List!63371) Unit!156292)

(assert (=> d!1797459 (= lt!2272687 (choose!43075 (regOne!31892 r!7292) (regTwo!31892 r!7292) s!2326))))

(assert (=> d!1797459 (validRegex!7426 (regOne!31892 r!7292))))

(assert (=> d!1797459 (= (lemmaFindConcatSeparationEquivalentToExists!1877 (regOne!31892 r!7292) (regTwo!31892 r!7292) s!2326) lt!2272687)))

(declare-fun bs!1327798 () Bool)

(assert (= bs!1327798 d!1797459))

(assert (=> bs!1327798 m!6652404))

(assert (=> bs!1327798 m!6652044))

(assert (=> bs!1327798 m!6652046))

(declare-fun m!6652430 () Bool)

(assert (=> bs!1327798 m!6652430))

(declare-fun m!6652432 () Bool)

(assert (=> bs!1327798 m!6652432))

(assert (=> bs!1327798 m!6652044))

(assert (=> b!5696080 d!1797459))

(declare-fun d!1797461 () Bool)

(assert (=> d!1797461 (= (Exists!2790 lambda!307027) (choose!43073 lambda!307027))))

(declare-fun bs!1327799 () Bool)

(assert (= bs!1327799 d!1797461))

(declare-fun m!6652434 () Bool)

(assert (=> bs!1327799 m!6652434))

(assert (=> b!5696080 d!1797461))

(declare-fun bm!433547 () Bool)

(declare-fun call!433552 () Bool)

(assert (=> bm!433547 (= call!433552 (isEmpty!35107 (_2!36090 lt!2272540)))))

(declare-fun b!5696424 () Bool)

(declare-fun res!2405612 () Bool)

(declare-fun e!3504574 () Bool)

(assert (=> b!5696424 (=> res!2405612 e!3504574)))

(assert (=> b!5696424 (= res!2405612 (not (isEmpty!35107 (tail!11172 (_2!36090 lt!2272540)))))))

(declare-fun b!5696425 () Bool)

(assert (=> b!5696425 (= e!3504574 (not (= (head!12077 (_2!36090 lt!2272540)) (c!1002952 (regTwo!31892 r!7292)))))))

(declare-fun d!1797463 () Bool)

(declare-fun e!3504572 () Bool)

(assert (=> d!1797463 e!3504572))

(declare-fun c!1003026 () Bool)

(assert (=> d!1797463 (= c!1003026 (is-EmptyExpr!15690 (regTwo!31892 r!7292)))))

(declare-fun lt!2272690 () Bool)

(declare-fun e!3504577 () Bool)

(assert (=> d!1797463 (= lt!2272690 e!3504577)))

(declare-fun c!1003025 () Bool)

(assert (=> d!1797463 (= c!1003025 (isEmpty!35107 (_2!36090 lt!2272540)))))

(assert (=> d!1797463 (validRegex!7426 (regTwo!31892 r!7292))))

(assert (=> d!1797463 (= (matchR!7875 (regTwo!31892 r!7292) (_2!36090 lt!2272540)) lt!2272690)))

(declare-fun b!5696426 () Bool)

(assert (=> b!5696426 (= e!3504577 (nullable!5722 (regTwo!31892 r!7292)))))

(declare-fun b!5696427 () Bool)

(declare-fun e!3504571 () Bool)

(assert (=> b!5696427 (= e!3504571 (not lt!2272690))))

(declare-fun b!5696428 () Bool)

(assert (=> b!5696428 (= e!3504572 (= lt!2272690 call!433552))))

(declare-fun b!5696429 () Bool)

(declare-fun e!3504576 () Bool)

(assert (=> b!5696429 (= e!3504576 e!3504574)))

(declare-fun res!2405611 () Bool)

(assert (=> b!5696429 (=> res!2405611 e!3504574)))

(assert (=> b!5696429 (= res!2405611 call!433552)))

(declare-fun b!5696430 () Bool)

(declare-fun res!2405607 () Bool)

(declare-fun e!3504575 () Bool)

(assert (=> b!5696430 (=> (not res!2405607) (not e!3504575))))

(assert (=> b!5696430 (= res!2405607 (isEmpty!35107 (tail!11172 (_2!36090 lt!2272540))))))

(declare-fun b!5696431 () Bool)

(declare-fun res!2405609 () Bool)

(declare-fun e!3504573 () Bool)

(assert (=> b!5696431 (=> res!2405609 e!3504573)))

(assert (=> b!5696431 (= res!2405609 (not (is-ElementMatch!15690 (regTwo!31892 r!7292))))))

(assert (=> b!5696431 (= e!3504571 e!3504573)))

(declare-fun b!5696432 () Bool)

(assert (=> b!5696432 (= e!3504575 (= (head!12077 (_2!36090 lt!2272540)) (c!1002952 (regTwo!31892 r!7292))))))

(declare-fun b!5696433 () Bool)

(declare-fun res!2405613 () Bool)

(assert (=> b!5696433 (=> res!2405613 e!3504573)))

(assert (=> b!5696433 (= res!2405613 e!3504575)))

(declare-fun res!2405606 () Bool)

(assert (=> b!5696433 (=> (not res!2405606) (not e!3504575))))

(assert (=> b!5696433 (= res!2405606 lt!2272690)))

(declare-fun b!5696434 () Bool)

(declare-fun res!2405610 () Bool)

(assert (=> b!5696434 (=> (not res!2405610) (not e!3504575))))

(assert (=> b!5696434 (= res!2405610 (not call!433552))))

(declare-fun b!5696435 () Bool)

(declare-fun derivativeStep!4501 (Regex!15690 C!31650) Regex!15690)

(assert (=> b!5696435 (= e!3504577 (matchR!7875 (derivativeStep!4501 (regTwo!31892 r!7292) (head!12077 (_2!36090 lt!2272540))) (tail!11172 (_2!36090 lt!2272540))))))

(declare-fun b!5696436 () Bool)

(assert (=> b!5696436 (= e!3504572 e!3504571)))

(declare-fun c!1003024 () Bool)

(assert (=> b!5696436 (= c!1003024 (is-EmptyLang!15690 (regTwo!31892 r!7292)))))

(declare-fun b!5696437 () Bool)

(assert (=> b!5696437 (= e!3504573 e!3504576)))

(declare-fun res!2405608 () Bool)

(assert (=> b!5696437 (=> (not res!2405608) (not e!3504576))))

(assert (=> b!5696437 (= res!2405608 (not lt!2272690))))

(assert (= (and d!1797463 c!1003025) b!5696426))

(assert (= (and d!1797463 (not c!1003025)) b!5696435))

(assert (= (and d!1797463 c!1003026) b!5696428))

(assert (= (and d!1797463 (not c!1003026)) b!5696436))

(assert (= (and b!5696436 c!1003024) b!5696427))

(assert (= (and b!5696436 (not c!1003024)) b!5696431))

(assert (= (and b!5696431 (not res!2405609)) b!5696433))

(assert (= (and b!5696433 res!2405606) b!5696434))

(assert (= (and b!5696434 res!2405610) b!5696430))

(assert (= (and b!5696430 res!2405607) b!5696432))

(assert (= (and b!5696433 (not res!2405613)) b!5696437))

(assert (= (and b!5696437 res!2405608) b!5696429))

(assert (= (and b!5696429 (not res!2405611)) b!5696424))

(assert (= (and b!5696424 (not res!2405612)) b!5696425))

(assert (= (or b!5696428 b!5696434 b!5696429) bm!433547))

(declare-fun m!6652436 () Bool)

(assert (=> b!5696435 m!6652436))

(assert (=> b!5696435 m!6652436))

(declare-fun m!6652438 () Bool)

(assert (=> b!5696435 m!6652438))

(declare-fun m!6652440 () Bool)

(assert (=> b!5696435 m!6652440))

(assert (=> b!5696435 m!6652438))

(assert (=> b!5696435 m!6652440))

(declare-fun m!6652442 () Bool)

(assert (=> b!5696435 m!6652442))

(assert (=> b!5696432 m!6652436))

(declare-fun m!6652444 () Bool)

(assert (=> d!1797463 m!6652444))

(declare-fun m!6652446 () Bool)

(assert (=> d!1797463 m!6652446))

(assert (=> b!5696424 m!6652440))

(assert (=> b!5696424 m!6652440))

(declare-fun m!6652448 () Bool)

(assert (=> b!5696424 m!6652448))

(assert (=> b!5696425 m!6652436))

(assert (=> bm!433547 m!6652444))

(declare-fun m!6652450 () Bool)

(assert (=> b!5696426 m!6652450))

(assert (=> b!5696430 m!6652440))

(assert (=> b!5696430 m!6652440))

(assert (=> b!5696430 m!6652448))

(assert (=> b!5696079 d!1797463))

(declare-fun bm!433548 () Bool)

(declare-fun call!433553 () Bool)

(assert (=> bm!433548 (= call!433553 (isEmpty!35107 (_1!36090 lt!2272540)))))

(declare-fun b!5696438 () Bool)

(declare-fun res!2405620 () Bool)

(declare-fun e!3504581 () Bool)

(assert (=> b!5696438 (=> res!2405620 e!3504581)))

(assert (=> b!5696438 (= res!2405620 (not (isEmpty!35107 (tail!11172 (_1!36090 lt!2272540)))))))

(declare-fun b!5696439 () Bool)

(assert (=> b!5696439 (= e!3504581 (not (= (head!12077 (_1!36090 lt!2272540)) (c!1002952 lt!2272512))))))

(declare-fun d!1797465 () Bool)

(declare-fun e!3504579 () Bool)

(assert (=> d!1797465 e!3504579))

(declare-fun c!1003029 () Bool)

(assert (=> d!1797465 (= c!1003029 (is-EmptyExpr!15690 lt!2272512))))

(declare-fun lt!2272691 () Bool)

(declare-fun e!3504584 () Bool)

(assert (=> d!1797465 (= lt!2272691 e!3504584)))

(declare-fun c!1003028 () Bool)

(assert (=> d!1797465 (= c!1003028 (isEmpty!35107 (_1!36090 lt!2272540)))))

(assert (=> d!1797465 (validRegex!7426 lt!2272512)))

(assert (=> d!1797465 (= (matchR!7875 lt!2272512 (_1!36090 lt!2272540)) lt!2272691)))

(declare-fun b!5696440 () Bool)

(assert (=> b!5696440 (= e!3504584 (nullable!5722 lt!2272512))))

(declare-fun b!5696441 () Bool)

(declare-fun e!3504578 () Bool)

(assert (=> b!5696441 (= e!3504578 (not lt!2272691))))

(declare-fun b!5696442 () Bool)

(assert (=> b!5696442 (= e!3504579 (= lt!2272691 call!433553))))

(declare-fun b!5696443 () Bool)

(declare-fun e!3504583 () Bool)

(assert (=> b!5696443 (= e!3504583 e!3504581)))

(declare-fun res!2405619 () Bool)

(assert (=> b!5696443 (=> res!2405619 e!3504581)))

(assert (=> b!5696443 (= res!2405619 call!433553)))

(declare-fun b!5696444 () Bool)

(declare-fun res!2405615 () Bool)

(declare-fun e!3504582 () Bool)

(assert (=> b!5696444 (=> (not res!2405615) (not e!3504582))))

(assert (=> b!5696444 (= res!2405615 (isEmpty!35107 (tail!11172 (_1!36090 lt!2272540))))))

(declare-fun b!5696445 () Bool)

(declare-fun res!2405617 () Bool)

(declare-fun e!3504580 () Bool)

(assert (=> b!5696445 (=> res!2405617 e!3504580)))

(assert (=> b!5696445 (= res!2405617 (not (is-ElementMatch!15690 lt!2272512)))))

(assert (=> b!5696445 (= e!3504578 e!3504580)))

(declare-fun b!5696446 () Bool)

(assert (=> b!5696446 (= e!3504582 (= (head!12077 (_1!36090 lt!2272540)) (c!1002952 lt!2272512)))))

(declare-fun b!5696447 () Bool)

(declare-fun res!2405621 () Bool)

(assert (=> b!5696447 (=> res!2405621 e!3504580)))

(assert (=> b!5696447 (= res!2405621 e!3504582)))

(declare-fun res!2405614 () Bool)

(assert (=> b!5696447 (=> (not res!2405614) (not e!3504582))))

(assert (=> b!5696447 (= res!2405614 lt!2272691)))

(declare-fun b!5696448 () Bool)

(declare-fun res!2405618 () Bool)

(assert (=> b!5696448 (=> (not res!2405618) (not e!3504582))))

(assert (=> b!5696448 (= res!2405618 (not call!433553))))

(declare-fun b!5696449 () Bool)

(assert (=> b!5696449 (= e!3504584 (matchR!7875 (derivativeStep!4501 lt!2272512 (head!12077 (_1!36090 lt!2272540))) (tail!11172 (_1!36090 lt!2272540))))))

(declare-fun b!5696450 () Bool)

(assert (=> b!5696450 (= e!3504579 e!3504578)))

(declare-fun c!1003027 () Bool)

(assert (=> b!5696450 (= c!1003027 (is-EmptyLang!15690 lt!2272512))))

(declare-fun b!5696451 () Bool)

(assert (=> b!5696451 (= e!3504580 e!3504583)))

(declare-fun res!2405616 () Bool)

(assert (=> b!5696451 (=> (not res!2405616) (not e!3504583))))

(assert (=> b!5696451 (= res!2405616 (not lt!2272691))))

(assert (= (and d!1797465 c!1003028) b!5696440))

(assert (= (and d!1797465 (not c!1003028)) b!5696449))

(assert (= (and d!1797465 c!1003029) b!5696442))

(assert (= (and d!1797465 (not c!1003029)) b!5696450))

(assert (= (and b!5696450 c!1003027) b!5696441))

(assert (= (and b!5696450 (not c!1003027)) b!5696445))

(assert (= (and b!5696445 (not res!2405617)) b!5696447))

(assert (= (and b!5696447 res!2405614) b!5696448))

(assert (= (and b!5696448 res!2405618) b!5696444))

(assert (= (and b!5696444 res!2405615) b!5696446))

(assert (= (and b!5696447 (not res!2405621)) b!5696451))

(assert (= (and b!5696451 res!2405616) b!5696443))

(assert (= (and b!5696443 (not res!2405619)) b!5696438))

(assert (= (and b!5696438 (not res!2405620)) b!5696439))

(assert (= (or b!5696442 b!5696448 b!5696443) bm!433548))

(declare-fun m!6652452 () Bool)

(assert (=> b!5696449 m!6652452))

(assert (=> b!5696449 m!6652452))

(declare-fun m!6652454 () Bool)

(assert (=> b!5696449 m!6652454))

(declare-fun m!6652456 () Bool)

(assert (=> b!5696449 m!6652456))

(assert (=> b!5696449 m!6652454))

(assert (=> b!5696449 m!6652456))

(declare-fun m!6652458 () Bool)

(assert (=> b!5696449 m!6652458))

(assert (=> b!5696446 m!6652452))

(declare-fun m!6652460 () Bool)

(assert (=> d!1797465 m!6652460))

(declare-fun m!6652462 () Bool)

(assert (=> d!1797465 m!6652462))

(assert (=> b!5696438 m!6652456))

(assert (=> b!5696438 m!6652456))

(declare-fun m!6652464 () Bool)

(assert (=> b!5696438 m!6652464))

(assert (=> b!5696439 m!6652452))

(assert (=> bm!433548 m!6652460))

(declare-fun m!6652466 () Bool)

(assert (=> b!5696440 m!6652466))

(assert (=> b!5696444 m!6652456))

(assert (=> b!5696444 m!6652456))

(assert (=> b!5696444 m!6652464))

(assert (=> b!5696092 d!1797465))

(declare-fun bm!433549 () Bool)

(declare-fun call!433554 () Bool)

(assert (=> bm!433549 (= call!433554 (isEmpty!35107 s!2326))))

(declare-fun b!5696452 () Bool)

(declare-fun res!2405628 () Bool)

(declare-fun e!3504588 () Bool)

(assert (=> b!5696452 (=> res!2405628 e!3504588)))

(assert (=> b!5696452 (= res!2405628 (not (isEmpty!35107 (tail!11172 s!2326))))))

(declare-fun b!5696453 () Bool)

(assert (=> b!5696453 (= e!3504588 (not (= (head!12077 s!2326) (c!1002952 lt!2272513))))))

(declare-fun d!1797467 () Bool)

(declare-fun e!3504586 () Bool)

(assert (=> d!1797467 e!3504586))

(declare-fun c!1003032 () Bool)

(assert (=> d!1797467 (= c!1003032 (is-EmptyExpr!15690 lt!2272513))))

(declare-fun lt!2272692 () Bool)

(declare-fun e!3504591 () Bool)

(assert (=> d!1797467 (= lt!2272692 e!3504591)))

(declare-fun c!1003031 () Bool)

(assert (=> d!1797467 (= c!1003031 (isEmpty!35107 s!2326))))

(assert (=> d!1797467 (validRegex!7426 lt!2272513)))

(assert (=> d!1797467 (= (matchR!7875 lt!2272513 s!2326) lt!2272692)))

(declare-fun b!5696454 () Bool)

(assert (=> b!5696454 (= e!3504591 (nullable!5722 lt!2272513))))

(declare-fun b!5696455 () Bool)

(declare-fun e!3504585 () Bool)

(assert (=> b!5696455 (= e!3504585 (not lt!2272692))))

(declare-fun b!5696456 () Bool)

(assert (=> b!5696456 (= e!3504586 (= lt!2272692 call!433554))))

(declare-fun b!5696457 () Bool)

(declare-fun e!3504590 () Bool)

(assert (=> b!5696457 (= e!3504590 e!3504588)))

(declare-fun res!2405627 () Bool)

(assert (=> b!5696457 (=> res!2405627 e!3504588)))

(assert (=> b!5696457 (= res!2405627 call!433554)))

(declare-fun b!5696458 () Bool)

(declare-fun res!2405623 () Bool)

(declare-fun e!3504589 () Bool)

(assert (=> b!5696458 (=> (not res!2405623) (not e!3504589))))

(assert (=> b!5696458 (= res!2405623 (isEmpty!35107 (tail!11172 s!2326)))))

(declare-fun b!5696459 () Bool)

(declare-fun res!2405625 () Bool)

(declare-fun e!3504587 () Bool)

(assert (=> b!5696459 (=> res!2405625 e!3504587)))

(assert (=> b!5696459 (= res!2405625 (not (is-ElementMatch!15690 lt!2272513)))))

(assert (=> b!5696459 (= e!3504585 e!3504587)))

(declare-fun b!5696460 () Bool)

(assert (=> b!5696460 (= e!3504589 (= (head!12077 s!2326) (c!1002952 lt!2272513)))))

(declare-fun b!5696461 () Bool)

(declare-fun res!2405629 () Bool)

(assert (=> b!5696461 (=> res!2405629 e!3504587)))

(assert (=> b!5696461 (= res!2405629 e!3504589)))

(declare-fun res!2405622 () Bool)

(assert (=> b!5696461 (=> (not res!2405622) (not e!3504589))))

(assert (=> b!5696461 (= res!2405622 lt!2272692)))

(declare-fun b!5696462 () Bool)

(declare-fun res!2405626 () Bool)

(assert (=> b!5696462 (=> (not res!2405626) (not e!3504589))))

(assert (=> b!5696462 (= res!2405626 (not call!433554))))

(declare-fun b!5696463 () Bool)

(assert (=> b!5696463 (= e!3504591 (matchR!7875 (derivativeStep!4501 lt!2272513 (head!12077 s!2326)) (tail!11172 s!2326)))))

(declare-fun b!5696464 () Bool)

(assert (=> b!5696464 (= e!3504586 e!3504585)))

(declare-fun c!1003030 () Bool)

(assert (=> b!5696464 (= c!1003030 (is-EmptyLang!15690 lt!2272513))))

(declare-fun b!5696465 () Bool)

(assert (=> b!5696465 (= e!3504587 e!3504590)))

(declare-fun res!2405624 () Bool)

(assert (=> b!5696465 (=> (not res!2405624) (not e!3504590))))

(assert (=> b!5696465 (= res!2405624 (not lt!2272692))))

(assert (= (and d!1797467 c!1003031) b!5696454))

(assert (= (and d!1797467 (not c!1003031)) b!5696463))

(assert (= (and d!1797467 c!1003032) b!5696456))

(assert (= (and d!1797467 (not c!1003032)) b!5696464))

(assert (= (and b!5696464 c!1003030) b!5696455))

(assert (= (and b!5696464 (not c!1003030)) b!5696459))

(assert (= (and b!5696459 (not res!2405625)) b!5696461))

(assert (= (and b!5696461 res!2405622) b!5696462))

(assert (= (and b!5696462 res!2405626) b!5696458))

(assert (= (and b!5696458 res!2405623) b!5696460))

(assert (= (and b!5696461 (not res!2405629)) b!5696465))

(assert (= (and b!5696465 res!2405624) b!5696457))

(assert (= (and b!5696457 (not res!2405627)) b!5696452))

(assert (= (and b!5696452 (not res!2405628)) b!5696453))

(assert (= (or b!5696456 b!5696462 b!5696457) bm!433549))

(declare-fun m!6652468 () Bool)

(assert (=> b!5696463 m!6652468))

(assert (=> b!5696463 m!6652468))

(declare-fun m!6652470 () Bool)

(assert (=> b!5696463 m!6652470))

(declare-fun m!6652472 () Bool)

(assert (=> b!5696463 m!6652472))

(assert (=> b!5696463 m!6652470))

(assert (=> b!5696463 m!6652472))

(declare-fun m!6652474 () Bool)

(assert (=> b!5696463 m!6652474))

(assert (=> b!5696460 m!6652468))

(declare-fun m!6652476 () Bool)

(assert (=> d!1797467 m!6652476))

(declare-fun m!6652478 () Bool)

(assert (=> d!1797467 m!6652478))

(assert (=> b!5696452 m!6652472))

(assert (=> b!5696452 m!6652472))

(declare-fun m!6652480 () Bool)

(assert (=> b!5696452 m!6652480))

(assert (=> b!5696453 m!6652468))

(assert (=> bm!433549 m!6652476))

(declare-fun m!6652482 () Bool)

(assert (=> b!5696454 m!6652482))

(assert (=> b!5696458 m!6652472))

(assert (=> b!5696458 m!6652472))

(assert (=> b!5696458 m!6652480))

(assert (=> b!5696091 d!1797467))

(declare-fun bs!1327800 () Bool)

(declare-fun b!5696499 () Bool)

(assert (= bs!1327800 (and b!5696499 b!5696070)))

(declare-fun lambda!307075 () Int)

(assert (=> bs!1327800 (not (= lambda!307075 lambda!307029))))

(declare-fun bs!1327801 () Bool)

(assert (= bs!1327801 (and b!5696499 d!1797459)))

(assert (=> bs!1327801 (not (= lambda!307075 lambda!307070))))

(declare-fun bs!1327802 () Bool)

(assert (= bs!1327802 (and b!5696499 d!1797455)))

(assert (=> bs!1327802 (not (= lambda!307075 lambda!307066))))

(declare-fun bs!1327803 () Bool)

(assert (= bs!1327803 (and b!5696499 b!5696080)))

(assert (=> bs!1327803 (not (= lambda!307075 lambda!307027))))

(assert (=> bs!1327800 (not (= lambda!307075 lambda!307030))))

(assert (=> bs!1327802 (not (= lambda!307075 lambda!307067))))

(assert (=> bs!1327803 (not (= lambda!307075 lambda!307026))))

(assert (=> b!5696499 true))

(assert (=> b!5696499 true))

(declare-fun bs!1327804 () Bool)

(declare-fun b!5696503 () Bool)

(assert (= bs!1327804 (and b!5696503 b!5696070)))

(declare-fun lambda!307076 () Int)

(assert (=> bs!1327804 (not (= lambda!307076 lambda!307029))))

(declare-fun bs!1327805 () Bool)

(assert (= bs!1327805 (and b!5696503 d!1797459)))

(assert (=> bs!1327805 (not (= lambda!307076 lambda!307070))))

(declare-fun bs!1327806 () Bool)

(assert (= bs!1327806 (and b!5696503 d!1797455)))

(assert (=> bs!1327806 (not (= lambda!307076 lambda!307066))))

(declare-fun bs!1327807 () Bool)

(assert (= bs!1327807 (and b!5696503 b!5696080)))

(assert (=> bs!1327807 (= (and (= (regOne!31892 lt!2272513) (regOne!31892 r!7292)) (= (regTwo!31892 lt!2272513) (regTwo!31892 r!7292))) (= lambda!307076 lambda!307027))))

(declare-fun bs!1327808 () Bool)

(assert (= bs!1327808 (and b!5696503 b!5696499)))

(assert (=> bs!1327808 (not (= lambda!307076 lambda!307075))))

(assert (=> bs!1327804 (= (and (= (regOne!31892 lt!2272513) lt!2272512) (= (regTwo!31892 lt!2272513) (regTwo!31892 r!7292))) (= lambda!307076 lambda!307030))))

(assert (=> bs!1327806 (= (and (= (regOne!31892 lt!2272513) (regOne!31892 r!7292)) (= (regTwo!31892 lt!2272513) (regTwo!31892 r!7292))) (= lambda!307076 lambda!307067))))

(assert (=> bs!1327807 (not (= lambda!307076 lambda!307026))))

(assert (=> b!5696503 true))

(assert (=> b!5696503 true))

(declare-fun bm!433554 () Bool)

(declare-fun call!433560 () Bool)

(assert (=> bm!433554 (= call!433560 (isEmpty!35107 s!2326))))

(declare-fun d!1797469 () Bool)

(declare-fun c!1003042 () Bool)

(assert (=> d!1797469 (= c!1003042 (is-EmptyExpr!15690 lt!2272513))))

(declare-fun e!3504611 () Bool)

(assert (=> d!1797469 (= (matchRSpec!2793 lt!2272513 s!2326) e!3504611)))

(declare-fun b!5696498 () Bool)

(declare-fun c!1003043 () Bool)

(assert (=> b!5696498 (= c!1003043 (is-Union!15690 lt!2272513))))

(declare-fun e!3504616 () Bool)

(declare-fun e!3504613 () Bool)

(assert (=> b!5696498 (= e!3504616 e!3504613)))

(declare-fun e!3504612 () Bool)

(declare-fun call!433559 () Bool)

(assert (=> b!5696499 (= e!3504612 call!433559)))

(declare-fun b!5696500 () Bool)

(declare-fun e!3504610 () Bool)

(assert (=> b!5696500 (= e!3504613 e!3504610)))

(declare-fun c!1003041 () Bool)

(assert (=> b!5696500 (= c!1003041 (is-Star!15690 lt!2272513))))

(declare-fun bm!433555 () Bool)

(assert (=> bm!433555 (= call!433559 (Exists!2790 (ite c!1003041 lambda!307075 lambda!307076)))))

(declare-fun b!5696501 () Bool)

(declare-fun e!3504615 () Bool)

(assert (=> b!5696501 (= e!3504611 e!3504615)))

(declare-fun res!2405646 () Bool)

(assert (=> b!5696501 (= res!2405646 (not (is-EmptyLang!15690 lt!2272513)))))

(assert (=> b!5696501 (=> (not res!2405646) (not e!3504615))))

(declare-fun b!5696502 () Bool)

(assert (=> b!5696502 (= e!3504616 (= s!2326 (Cons!63247 (c!1002952 lt!2272513) Nil!63247)))))

(assert (=> b!5696503 (= e!3504610 call!433559)))

(declare-fun b!5696504 () Bool)

(declare-fun res!2405648 () Bool)

(assert (=> b!5696504 (=> res!2405648 e!3504612)))

(assert (=> b!5696504 (= res!2405648 call!433560)))

(assert (=> b!5696504 (= e!3504610 e!3504612)))

(declare-fun b!5696505 () Bool)

(assert (=> b!5696505 (= e!3504611 call!433560)))

(declare-fun b!5696506 () Bool)

(declare-fun c!1003044 () Bool)

(assert (=> b!5696506 (= c!1003044 (is-ElementMatch!15690 lt!2272513))))

(assert (=> b!5696506 (= e!3504615 e!3504616)))

(declare-fun b!5696507 () Bool)

(declare-fun e!3504614 () Bool)

(assert (=> b!5696507 (= e!3504613 e!3504614)))

(declare-fun res!2405647 () Bool)

(assert (=> b!5696507 (= res!2405647 (matchRSpec!2793 (regOne!31893 lt!2272513) s!2326))))

(assert (=> b!5696507 (=> res!2405647 e!3504614)))

(declare-fun b!5696508 () Bool)

(assert (=> b!5696508 (= e!3504614 (matchRSpec!2793 (regTwo!31893 lt!2272513) s!2326))))

(assert (= (and d!1797469 c!1003042) b!5696505))

(assert (= (and d!1797469 (not c!1003042)) b!5696501))

(assert (= (and b!5696501 res!2405646) b!5696506))

(assert (= (and b!5696506 c!1003044) b!5696502))

(assert (= (and b!5696506 (not c!1003044)) b!5696498))

(assert (= (and b!5696498 c!1003043) b!5696507))

(assert (= (and b!5696498 (not c!1003043)) b!5696500))

(assert (= (and b!5696507 (not res!2405647)) b!5696508))

(assert (= (and b!5696500 c!1003041) b!5696504))

(assert (= (and b!5696500 (not c!1003041)) b!5696503))

(assert (= (and b!5696504 (not res!2405648)) b!5696499))

(assert (= (or b!5696499 b!5696503) bm!433555))

(assert (= (or b!5696505 b!5696504) bm!433554))

(assert (=> bm!433554 m!6652476))

(declare-fun m!6652484 () Bool)

(assert (=> bm!433555 m!6652484))

(declare-fun m!6652486 () Bool)

(assert (=> b!5696507 m!6652486))

(declare-fun m!6652488 () Bool)

(assert (=> b!5696508 m!6652488))

(assert (=> b!5696091 d!1797469))

(declare-fun d!1797471 () Bool)

(assert (=> d!1797471 (= (matchR!7875 lt!2272513 s!2326) (matchRSpec!2793 lt!2272513 s!2326))))

(declare-fun lt!2272695 () Unit!156292)

(declare-fun choose!43076 (Regex!15690 List!63371) Unit!156292)

(assert (=> d!1797471 (= lt!2272695 (choose!43076 lt!2272513 s!2326))))

(assert (=> d!1797471 (validRegex!7426 lt!2272513)))

(assert (=> d!1797471 (= (mainMatchTheorem!2793 lt!2272513 s!2326) lt!2272695)))

(declare-fun bs!1327809 () Bool)

(assert (= bs!1327809 d!1797471))

(assert (=> bs!1327809 m!6652138))

(assert (=> bs!1327809 m!6652140))

(declare-fun m!6652490 () Bool)

(assert (=> bs!1327809 m!6652490))

(assert (=> bs!1327809 m!6652478))

(assert (=> b!5696091 d!1797471))

(declare-fun d!1797473 () Bool)

(assert (=> d!1797473 (= (isEmpty!35103 (t!376687 (exprs!5574 (h!69694 zl!343)))) (is-Nil!63245 (t!376687 (exprs!5574 (h!69694 zl!343)))))))

(assert (=> b!5696072 d!1797473))

(declare-fun bs!1327810 () Bool)

(declare-fun d!1797475 () Bool)

(assert (= bs!1327810 (and d!1797475 d!1797409)))

(declare-fun lambda!307077 () Int)

(assert (=> bs!1327810 (= lambda!307077 lambda!307058)))

(declare-fun bs!1327811 () Bool)

(assert (= bs!1327811 (and d!1797475 d!1797411)))

(assert (=> bs!1327811 (= lambda!307077 lambda!307061)))

(assert (=> d!1797475 (= (inv!82473 (h!69694 zl!343)) (forall!14831 (exprs!5574 (h!69694 zl!343)) lambda!307077))))

(declare-fun bs!1327812 () Bool)

(assert (= bs!1327812 d!1797475))

(declare-fun m!6652492 () Bool)

(assert (=> bs!1327812 m!6652492))

(assert (=> b!5696071 d!1797475))

(declare-fun d!1797477 () Bool)

(declare-fun lt!2272696 () Regex!15690)

(assert (=> d!1797477 (validRegex!7426 lt!2272696)))

(assert (=> d!1797477 (= lt!2272696 (generalisedUnion!1553 (unfocusZipperList!1118 zl!343)))))

(assert (=> d!1797477 (= (unfocusZipper!1432 zl!343) lt!2272696)))

(declare-fun bs!1327813 () Bool)

(assert (= bs!1327813 d!1797477))

(declare-fun m!6652494 () Bool)

(assert (=> bs!1327813 m!6652494))

(assert (=> bs!1327813 m!6652074))

(assert (=> bs!1327813 m!6652074))

(assert (=> bs!1327813 m!6652076))

(assert (=> b!5696095 d!1797477))

(declare-fun b!5696527 () Bool)

(declare-fun e!3504636 () Bool)

(declare-fun e!3504633 () Bool)

(assert (=> b!5696527 (= e!3504636 e!3504633)))

(declare-fun res!2405659 () Bool)

(assert (=> b!5696527 (=> (not res!2405659) (not e!3504633))))

(declare-fun call!433569 () Bool)

(assert (=> b!5696527 (= res!2405659 call!433569)))

(declare-fun c!1003050 () Bool)

(declare-fun call!433568 () Bool)

(declare-fun bm!433562 () Bool)

(declare-fun c!1003049 () Bool)

(assert (=> bm!433562 (= call!433568 (validRegex!7426 (ite c!1003049 (reg!16019 r!7292) (ite c!1003050 (regOne!31893 r!7292) (regOne!31892 r!7292)))))))

(declare-fun b!5696528 () Bool)

(declare-fun e!3504632 () Bool)

(assert (=> b!5696528 (= e!3504632 call!433568)))

(declare-fun b!5696529 () Bool)

(declare-fun e!3504631 () Bool)

(declare-fun e!3504634 () Bool)

(assert (=> b!5696529 (= e!3504631 e!3504634)))

(assert (=> b!5696529 (= c!1003049 (is-Star!15690 r!7292))))

(declare-fun bm!433563 () Bool)

(assert (=> bm!433563 (= call!433569 call!433568)))

(declare-fun b!5696530 () Bool)

(declare-fun call!433567 () Bool)

(assert (=> b!5696530 (= e!3504633 call!433567)))

(declare-fun b!5696531 () Bool)

(declare-fun res!2405663 () Bool)

(assert (=> b!5696531 (=> res!2405663 e!3504636)))

(assert (=> b!5696531 (= res!2405663 (not (is-Concat!24535 r!7292)))))

(declare-fun e!3504635 () Bool)

(assert (=> b!5696531 (= e!3504635 e!3504636)))

(declare-fun b!5696532 () Bool)

(assert (=> b!5696532 (= e!3504634 e!3504632)))

(declare-fun res!2405660 () Bool)

(assert (=> b!5696532 (= res!2405660 (not (nullable!5722 (reg!16019 r!7292))))))

(assert (=> b!5696532 (=> (not res!2405660) (not e!3504632))))

(declare-fun bm!433564 () Bool)

(assert (=> bm!433564 (= call!433567 (validRegex!7426 (ite c!1003050 (regTwo!31893 r!7292) (regTwo!31892 r!7292))))))

(declare-fun b!5696533 () Bool)

(declare-fun res!2405662 () Bool)

(declare-fun e!3504637 () Bool)

(assert (=> b!5696533 (=> (not res!2405662) (not e!3504637))))

(assert (=> b!5696533 (= res!2405662 call!433569)))

(assert (=> b!5696533 (= e!3504635 e!3504637)))

(declare-fun d!1797479 () Bool)

(declare-fun res!2405661 () Bool)

(assert (=> d!1797479 (=> res!2405661 e!3504631)))

(assert (=> d!1797479 (= res!2405661 (is-ElementMatch!15690 r!7292))))

(assert (=> d!1797479 (= (validRegex!7426 r!7292) e!3504631)))

(declare-fun b!5696534 () Bool)

(assert (=> b!5696534 (= e!3504634 e!3504635)))

(assert (=> b!5696534 (= c!1003050 (is-Union!15690 r!7292))))

(declare-fun b!5696535 () Bool)

(assert (=> b!5696535 (= e!3504637 call!433567)))

(assert (= (and d!1797479 (not res!2405661)) b!5696529))

(assert (= (and b!5696529 c!1003049) b!5696532))

(assert (= (and b!5696529 (not c!1003049)) b!5696534))

(assert (= (and b!5696532 res!2405660) b!5696528))

(assert (= (and b!5696534 c!1003050) b!5696533))

(assert (= (and b!5696534 (not c!1003050)) b!5696531))

(assert (= (and b!5696533 res!2405662) b!5696535))

(assert (= (and b!5696531 (not res!2405663)) b!5696527))

(assert (= (and b!5696527 res!2405659) b!5696530))

(assert (= (or b!5696535 b!5696530) bm!433564))

(assert (= (or b!5696533 b!5696527) bm!433563))

(assert (= (or b!5696528 bm!433563) bm!433562))

(declare-fun m!6652496 () Bool)

(assert (=> bm!433562 m!6652496))

(declare-fun m!6652498 () Bool)

(assert (=> b!5696532 m!6652498))

(declare-fun m!6652500 () Bool)

(assert (=> bm!433564 m!6652500))

(assert (=> start!587362 d!1797479))

(declare-fun d!1797481 () Bool)

(declare-fun lt!2272697 () Regex!15690)

(assert (=> d!1797481 (validRegex!7426 lt!2272697)))

(assert (=> d!1797481 (= lt!2272697 (generalisedUnion!1553 (unfocusZipperList!1118 (Cons!63246 lt!2272529 Nil!63246))))))

(assert (=> d!1797481 (= (unfocusZipper!1432 (Cons!63246 lt!2272529 Nil!63246)) lt!2272697)))

(declare-fun bs!1327814 () Bool)

(assert (= bs!1327814 d!1797481))

(declare-fun m!6652502 () Bool)

(assert (=> bs!1327814 m!6652502))

(declare-fun m!6652504 () Bool)

(assert (=> bs!1327814 m!6652504))

(assert (=> bs!1327814 m!6652504))

(declare-fun m!6652506 () Bool)

(assert (=> bs!1327814 m!6652506))

(assert (=> b!5696094 d!1797481))

(declare-fun d!1797483 () Bool)

(assert (=> d!1797483 (= (isEmpty!35104 (t!376688 zl!343)) (is-Nil!63246 (t!376688 zl!343)))))

(assert (=> b!5696074 d!1797483))

(declare-fun d!1797485 () Bool)

(declare-fun lt!2272698 () Regex!15690)

(assert (=> d!1797485 (validRegex!7426 lt!2272698)))

(assert (=> d!1797485 (= lt!2272698 (generalisedUnion!1553 (unfocusZipperList!1118 (Cons!63246 lt!2272547 Nil!63246))))))

(assert (=> d!1797485 (= (unfocusZipper!1432 (Cons!63246 lt!2272547 Nil!63246)) lt!2272698)))

(declare-fun bs!1327815 () Bool)

(assert (= bs!1327815 d!1797485))

(declare-fun m!6652508 () Bool)

(assert (=> bs!1327815 m!6652508))

(declare-fun m!6652510 () Bool)

(assert (=> bs!1327815 m!6652510))

(assert (=> bs!1327815 m!6652510))

(declare-fun m!6652512 () Bool)

(assert (=> bs!1327815 m!6652512))

(assert (=> b!5696087 d!1797485))

(declare-fun d!1797487 () Bool)

(assert (=> d!1797487 (= (flatMap!1303 lt!2272537 lambda!307028) (choose!43071 lt!2272537 lambda!307028))))

(declare-fun bs!1327816 () Bool)

(assert (= bs!1327816 d!1797487))

(declare-fun m!6652514 () Bool)

(assert (=> bs!1327816 m!6652514))

(assert (=> b!5696067 d!1797487))

(declare-fun d!1797489 () Bool)

(declare-fun c!1003051 () Bool)

(declare-fun e!3504639 () Bool)

(assert (=> d!1797489 (= c!1003051 e!3504639)))

(declare-fun res!2405664 () Bool)

(assert (=> d!1797489 (=> (not res!2405664) (not e!3504639))))

(assert (=> d!1797489 (= res!2405664 (is-Cons!63245 (exprs!5574 lt!2272529)))))

(declare-fun e!3504640 () (Set Context!10148))

(assert (=> d!1797489 (= (derivationStepZipperUp!958 lt!2272529 (h!69695 s!2326)) e!3504640)))

(declare-fun b!5696536 () Bool)

(declare-fun e!3504638 () (Set Context!10148))

(assert (=> b!5696536 (= e!3504640 e!3504638)))

(declare-fun c!1003052 () Bool)

(assert (=> b!5696536 (= c!1003052 (is-Cons!63245 (exprs!5574 lt!2272529)))))

(declare-fun b!5696537 () Bool)

(assert (=> b!5696537 (= e!3504639 (nullable!5722 (h!69693 (exprs!5574 lt!2272529))))))

(declare-fun b!5696538 () Bool)

(declare-fun call!433570 () (Set Context!10148))

(assert (=> b!5696538 (= e!3504638 call!433570)))

(declare-fun b!5696539 () Bool)

(assert (=> b!5696539 (= e!3504640 (set.union call!433570 (derivationStepZipperUp!958 (Context!10149 (t!376687 (exprs!5574 lt!2272529))) (h!69695 s!2326))))))

(declare-fun bm!433565 () Bool)

(assert (=> bm!433565 (= call!433570 (derivationStepZipperDown!1032 (h!69693 (exprs!5574 lt!2272529)) (Context!10149 (t!376687 (exprs!5574 lt!2272529))) (h!69695 s!2326)))))

(declare-fun b!5696540 () Bool)

(assert (=> b!5696540 (= e!3504638 (as set.empty (Set Context!10148)))))

(assert (= (and d!1797489 res!2405664) b!5696537))

(assert (= (and d!1797489 c!1003051) b!5696539))

(assert (= (and d!1797489 (not c!1003051)) b!5696536))

(assert (= (and b!5696536 c!1003052) b!5696538))

(assert (= (and b!5696536 (not c!1003052)) b!5696540))

(assert (= (or b!5696539 b!5696538) bm!433565))

(declare-fun m!6652516 () Bool)

(assert (=> b!5696537 m!6652516))

(declare-fun m!6652518 () Bool)

(assert (=> b!5696539 m!6652518))

(declare-fun m!6652520 () Bool)

(assert (=> bm!433565 m!6652520))

(assert (=> b!5696067 d!1797489))

(declare-fun d!1797491 () Bool)

(assert (=> d!1797491 (= (flatMap!1303 lt!2272537 lambda!307028) (dynLambda!24747 lambda!307028 lt!2272529))))

(declare-fun lt!2272699 () Unit!156292)

(assert (=> d!1797491 (= lt!2272699 (choose!43072 lt!2272537 lt!2272529 lambda!307028))))

(assert (=> d!1797491 (= lt!2272537 (set.insert lt!2272529 (as set.empty (Set Context!10148))))))

(assert (=> d!1797491 (= (lemmaFlatMapOnSingletonSet!835 lt!2272537 lt!2272529 lambda!307028) lt!2272699)))

(declare-fun b_lambda!215325 () Bool)

(assert (=> (not b_lambda!215325) (not d!1797491)))

(declare-fun bs!1327817 () Bool)

(assert (= bs!1327817 d!1797491))

(assert (=> bs!1327817 m!6652152))

(declare-fun m!6652522 () Bool)

(assert (=> bs!1327817 m!6652522))

(declare-fun m!6652524 () Bool)

(assert (=> bs!1327817 m!6652524))

(assert (=> bs!1327817 m!6652146))

(assert (=> b!5696067 d!1797491))

(declare-fun bs!1327818 () Bool)

(declare-fun d!1797493 () Bool)

(assert (= bs!1327818 (and d!1797493 b!5696083)))

(declare-fun lambda!307080 () Int)

(assert (=> bs!1327818 (= lambda!307080 lambda!307028)))

(assert (=> d!1797493 true))

(assert (=> d!1797493 (= (derivationStepZipper!1773 lt!2272537 (h!69695 s!2326)) (flatMap!1303 lt!2272537 lambda!307080))))

(declare-fun bs!1327819 () Bool)

(assert (= bs!1327819 d!1797493))

(declare-fun m!6652526 () Bool)

(assert (=> bs!1327819 m!6652526))

(assert (=> b!5696067 d!1797493))

(declare-fun bs!1327820 () Bool)

(declare-fun d!1797495 () Bool)

(assert (= bs!1327820 (and d!1797495 d!1797409)))

(declare-fun lambda!307083 () Int)

(assert (=> bs!1327820 (= lambda!307083 lambda!307058)))

(declare-fun bs!1327821 () Bool)

(assert (= bs!1327821 (and d!1797495 d!1797411)))

(assert (=> bs!1327821 (= lambda!307083 lambda!307061)))

(declare-fun bs!1327822 () Bool)

(assert (= bs!1327822 (and d!1797495 d!1797475)))

(assert (=> bs!1327822 (= lambda!307083 lambda!307077)))

(declare-fun b!5696563 () Bool)

(declare-fun e!3504658 () Bool)

(declare-fun lt!2272702 () Regex!15690)

(declare-fun isEmptyLang!1217 (Regex!15690) Bool)

(assert (=> b!5696563 (= e!3504658 (isEmptyLang!1217 lt!2272702))))

(declare-fun b!5696564 () Bool)

(declare-fun e!3504655 () Bool)

(assert (=> b!5696564 (= e!3504655 (= lt!2272702 (head!12076 (unfocusZipperList!1118 zl!343))))))

(declare-fun b!5696565 () Bool)

(declare-fun e!3504657 () Regex!15690)

(assert (=> b!5696565 (= e!3504657 EmptyLang!15690)))

(declare-fun b!5696566 () Bool)

(declare-fun e!3504654 () Regex!15690)

(assert (=> b!5696566 (= e!3504654 (h!69693 (unfocusZipperList!1118 zl!343)))))

(declare-fun e!3504653 () Bool)

(assert (=> d!1797495 e!3504653))

(declare-fun res!2405669 () Bool)

(assert (=> d!1797495 (=> (not res!2405669) (not e!3504653))))

(assert (=> d!1797495 (= res!2405669 (validRegex!7426 lt!2272702))))

(assert (=> d!1797495 (= lt!2272702 e!3504654)))

(declare-fun c!1003064 () Bool)

(declare-fun e!3504656 () Bool)

(assert (=> d!1797495 (= c!1003064 e!3504656)))

(declare-fun res!2405670 () Bool)

(assert (=> d!1797495 (=> (not res!2405670) (not e!3504656))))

(assert (=> d!1797495 (= res!2405670 (is-Cons!63245 (unfocusZipperList!1118 zl!343)))))

(assert (=> d!1797495 (forall!14831 (unfocusZipperList!1118 zl!343) lambda!307083)))

(assert (=> d!1797495 (= (generalisedUnion!1553 (unfocusZipperList!1118 zl!343)) lt!2272702)))

(declare-fun b!5696567 () Bool)

(assert (=> b!5696567 (= e!3504653 e!3504658)))

(declare-fun c!1003065 () Bool)

(assert (=> b!5696567 (= c!1003065 (isEmpty!35103 (unfocusZipperList!1118 zl!343)))))

(declare-fun b!5696568 () Bool)

(assert (=> b!5696568 (= e!3504656 (isEmpty!35103 (t!376687 (unfocusZipperList!1118 zl!343))))))

(declare-fun b!5696569 () Bool)

(declare-fun isUnion!647 (Regex!15690) Bool)

(assert (=> b!5696569 (= e!3504655 (isUnion!647 lt!2272702))))

(declare-fun b!5696570 () Bool)

(assert (=> b!5696570 (= e!3504654 e!3504657)))

(declare-fun c!1003066 () Bool)

(assert (=> b!5696570 (= c!1003066 (is-Cons!63245 (unfocusZipperList!1118 zl!343)))))

(declare-fun b!5696571 () Bool)

(assert (=> b!5696571 (= e!3504657 (Union!15690 (h!69693 (unfocusZipperList!1118 zl!343)) (generalisedUnion!1553 (t!376687 (unfocusZipperList!1118 zl!343)))))))

(declare-fun b!5696572 () Bool)

(assert (=> b!5696572 (= e!3504658 e!3504655)))

(declare-fun c!1003063 () Bool)

(assert (=> b!5696572 (= c!1003063 (isEmpty!35103 (tail!11171 (unfocusZipperList!1118 zl!343))))))

(assert (= (and d!1797495 res!2405670) b!5696568))

(assert (= (and d!1797495 c!1003064) b!5696566))

(assert (= (and d!1797495 (not c!1003064)) b!5696570))

(assert (= (and b!5696570 c!1003066) b!5696571))

(assert (= (and b!5696570 (not c!1003066)) b!5696565))

(assert (= (and d!1797495 res!2405669) b!5696567))

(assert (= (and b!5696567 c!1003065) b!5696563))

(assert (= (and b!5696567 (not c!1003065)) b!5696572))

(assert (= (and b!5696572 c!1003063) b!5696564))

(assert (= (and b!5696572 (not c!1003063)) b!5696569))

(assert (=> b!5696572 m!6652074))

(declare-fun m!6652528 () Bool)

(assert (=> b!5696572 m!6652528))

(assert (=> b!5696572 m!6652528))

(declare-fun m!6652530 () Bool)

(assert (=> b!5696572 m!6652530))

(declare-fun m!6652532 () Bool)

(assert (=> d!1797495 m!6652532))

(assert (=> d!1797495 m!6652074))

(declare-fun m!6652534 () Bool)

(assert (=> d!1797495 m!6652534))

(declare-fun m!6652536 () Bool)

(assert (=> b!5696568 m!6652536))

(declare-fun m!6652538 () Bool)

(assert (=> b!5696571 m!6652538))

(assert (=> b!5696567 m!6652074))

(declare-fun m!6652540 () Bool)

(assert (=> b!5696567 m!6652540))

(assert (=> b!5696564 m!6652074))

(declare-fun m!6652542 () Bool)

(assert (=> b!5696564 m!6652542))

(declare-fun m!6652544 () Bool)

(assert (=> b!5696569 m!6652544))

(declare-fun m!6652546 () Bool)

(assert (=> b!5696563 m!6652546))

(assert (=> b!5696086 d!1797495))

(declare-fun bs!1327823 () Bool)

(declare-fun d!1797497 () Bool)

(assert (= bs!1327823 (and d!1797497 d!1797409)))

(declare-fun lambda!307086 () Int)

(assert (=> bs!1327823 (= lambda!307086 lambda!307058)))

(declare-fun bs!1327824 () Bool)

(assert (= bs!1327824 (and d!1797497 d!1797411)))

(assert (=> bs!1327824 (= lambda!307086 lambda!307061)))

(declare-fun bs!1327825 () Bool)

(assert (= bs!1327825 (and d!1797497 d!1797475)))

(assert (=> bs!1327825 (= lambda!307086 lambda!307077)))

(declare-fun bs!1327826 () Bool)

(assert (= bs!1327826 (and d!1797497 d!1797495)))

(assert (=> bs!1327826 (= lambda!307086 lambda!307083)))

(declare-fun lt!2272705 () List!63369)

(assert (=> d!1797497 (forall!14831 lt!2272705 lambda!307086)))

(declare-fun e!3504661 () List!63369)

(assert (=> d!1797497 (= lt!2272705 e!3504661)))

(declare-fun c!1003069 () Bool)

(assert (=> d!1797497 (= c!1003069 (is-Cons!63246 zl!343))))

(assert (=> d!1797497 (= (unfocusZipperList!1118 zl!343) lt!2272705)))

(declare-fun b!5696577 () Bool)

(assert (=> b!5696577 (= e!3504661 (Cons!63245 (generalisedConcat!1305 (exprs!5574 (h!69694 zl!343))) (unfocusZipperList!1118 (t!376688 zl!343))))))

(declare-fun b!5696578 () Bool)

(assert (=> b!5696578 (= e!3504661 Nil!63245)))

(assert (= (and d!1797497 c!1003069) b!5696577))

(assert (= (and d!1797497 (not c!1003069)) b!5696578))

(declare-fun m!6652548 () Bool)

(assert (=> d!1797497 m!6652548))

(assert (=> b!5696577 m!6652108))

(declare-fun m!6652550 () Bool)

(assert (=> b!5696577 m!6652550))

(assert (=> b!5696086 d!1797497))

(declare-fun bs!1327827 () Bool)

(declare-fun b!5696580 () Bool)

(assert (= bs!1327827 (and b!5696580 b!5696070)))

(declare-fun lambda!307087 () Int)

(assert (=> bs!1327827 (not (= lambda!307087 lambda!307029))))

(declare-fun bs!1327828 () Bool)

(assert (= bs!1327828 (and b!5696580 b!5696503)))

(assert (=> bs!1327828 (not (= lambda!307087 lambda!307076))))

(declare-fun bs!1327829 () Bool)

(assert (= bs!1327829 (and b!5696580 d!1797459)))

(assert (=> bs!1327829 (not (= lambda!307087 lambda!307070))))

(declare-fun bs!1327830 () Bool)

(assert (= bs!1327830 (and b!5696580 d!1797455)))

(assert (=> bs!1327830 (not (= lambda!307087 lambda!307066))))

(declare-fun bs!1327831 () Bool)

(assert (= bs!1327831 (and b!5696580 b!5696080)))

(assert (=> bs!1327831 (not (= lambda!307087 lambda!307027))))

(declare-fun bs!1327832 () Bool)

(assert (= bs!1327832 (and b!5696580 b!5696499)))

(assert (=> bs!1327832 (= (and (= (reg!16019 r!7292) (reg!16019 lt!2272513)) (= r!7292 lt!2272513)) (= lambda!307087 lambda!307075))))

(assert (=> bs!1327827 (not (= lambda!307087 lambda!307030))))

(assert (=> bs!1327830 (not (= lambda!307087 lambda!307067))))

(assert (=> bs!1327831 (not (= lambda!307087 lambda!307026))))

(assert (=> b!5696580 true))

(assert (=> b!5696580 true))

(declare-fun bs!1327833 () Bool)

(declare-fun b!5696584 () Bool)

(assert (= bs!1327833 (and b!5696584 b!5696070)))

(declare-fun lambda!307088 () Int)

(assert (=> bs!1327833 (not (= lambda!307088 lambda!307029))))

(declare-fun bs!1327834 () Bool)

(assert (= bs!1327834 (and b!5696584 b!5696503)))

(assert (=> bs!1327834 (= (and (= (regOne!31892 r!7292) (regOne!31892 lt!2272513)) (= (regTwo!31892 r!7292) (regTwo!31892 lt!2272513))) (= lambda!307088 lambda!307076))))

(declare-fun bs!1327835 () Bool)

(assert (= bs!1327835 (and b!5696584 d!1797459)))

(assert (=> bs!1327835 (not (= lambda!307088 lambda!307070))))

(declare-fun bs!1327836 () Bool)

(assert (= bs!1327836 (and b!5696584 d!1797455)))

(assert (=> bs!1327836 (not (= lambda!307088 lambda!307066))))

(declare-fun bs!1327837 () Bool)

(assert (= bs!1327837 (and b!5696584 b!5696080)))

(assert (=> bs!1327837 (= lambda!307088 lambda!307027)))

(declare-fun bs!1327838 () Bool)

(assert (= bs!1327838 (and b!5696584 b!5696499)))

(assert (=> bs!1327838 (not (= lambda!307088 lambda!307075))))

(assert (=> bs!1327833 (= (= (regOne!31892 r!7292) lt!2272512) (= lambda!307088 lambda!307030))))

(assert (=> bs!1327836 (= lambda!307088 lambda!307067)))

(declare-fun bs!1327839 () Bool)

(assert (= bs!1327839 (and b!5696584 b!5696580)))

(assert (=> bs!1327839 (not (= lambda!307088 lambda!307087))))

(assert (=> bs!1327837 (not (= lambda!307088 lambda!307026))))

(assert (=> b!5696584 true))

(assert (=> b!5696584 true))

(declare-fun bm!433566 () Bool)

(declare-fun call!433572 () Bool)

(assert (=> bm!433566 (= call!433572 (isEmpty!35107 s!2326))))

(declare-fun d!1797499 () Bool)

(declare-fun c!1003071 () Bool)

(assert (=> d!1797499 (= c!1003071 (is-EmptyExpr!15690 r!7292))))

(declare-fun e!3504663 () Bool)

(assert (=> d!1797499 (= (matchRSpec!2793 r!7292 s!2326) e!3504663)))

(declare-fun b!5696579 () Bool)

(declare-fun c!1003072 () Bool)

(assert (=> b!5696579 (= c!1003072 (is-Union!15690 r!7292))))

(declare-fun e!3504668 () Bool)

(declare-fun e!3504665 () Bool)

(assert (=> b!5696579 (= e!3504668 e!3504665)))

(declare-fun e!3504664 () Bool)

(declare-fun call!433571 () Bool)

(assert (=> b!5696580 (= e!3504664 call!433571)))

(declare-fun b!5696581 () Bool)

(declare-fun e!3504662 () Bool)

(assert (=> b!5696581 (= e!3504665 e!3504662)))

(declare-fun c!1003070 () Bool)

(assert (=> b!5696581 (= c!1003070 (is-Star!15690 r!7292))))

(declare-fun bm!433567 () Bool)

(assert (=> bm!433567 (= call!433571 (Exists!2790 (ite c!1003070 lambda!307087 lambda!307088)))))

(declare-fun b!5696582 () Bool)

(declare-fun e!3504667 () Bool)

(assert (=> b!5696582 (= e!3504663 e!3504667)))

(declare-fun res!2405671 () Bool)

(assert (=> b!5696582 (= res!2405671 (not (is-EmptyLang!15690 r!7292)))))

(assert (=> b!5696582 (=> (not res!2405671) (not e!3504667))))

(declare-fun b!5696583 () Bool)

(assert (=> b!5696583 (= e!3504668 (= s!2326 (Cons!63247 (c!1002952 r!7292) Nil!63247)))))

(assert (=> b!5696584 (= e!3504662 call!433571)))

(declare-fun b!5696585 () Bool)

(declare-fun res!2405673 () Bool)

(assert (=> b!5696585 (=> res!2405673 e!3504664)))

(assert (=> b!5696585 (= res!2405673 call!433572)))

(assert (=> b!5696585 (= e!3504662 e!3504664)))

(declare-fun b!5696586 () Bool)

(assert (=> b!5696586 (= e!3504663 call!433572)))

(declare-fun b!5696587 () Bool)

(declare-fun c!1003073 () Bool)

(assert (=> b!5696587 (= c!1003073 (is-ElementMatch!15690 r!7292))))

(assert (=> b!5696587 (= e!3504667 e!3504668)))

(declare-fun b!5696588 () Bool)

(declare-fun e!3504666 () Bool)

(assert (=> b!5696588 (= e!3504665 e!3504666)))

(declare-fun res!2405672 () Bool)

(assert (=> b!5696588 (= res!2405672 (matchRSpec!2793 (regOne!31893 r!7292) s!2326))))

(assert (=> b!5696588 (=> res!2405672 e!3504666)))

(declare-fun b!5696589 () Bool)

(assert (=> b!5696589 (= e!3504666 (matchRSpec!2793 (regTwo!31893 r!7292) s!2326))))

(assert (= (and d!1797499 c!1003071) b!5696586))

(assert (= (and d!1797499 (not c!1003071)) b!5696582))

(assert (= (and b!5696582 res!2405671) b!5696587))

(assert (= (and b!5696587 c!1003073) b!5696583))

(assert (= (and b!5696587 (not c!1003073)) b!5696579))

(assert (= (and b!5696579 c!1003072) b!5696588))

(assert (= (and b!5696579 (not c!1003072)) b!5696581))

(assert (= (and b!5696588 (not res!2405672)) b!5696589))

(assert (= (and b!5696581 c!1003070) b!5696585))

(assert (= (and b!5696581 (not c!1003070)) b!5696584))

(assert (= (and b!5696585 (not res!2405673)) b!5696580))

(assert (= (or b!5696580 b!5696584) bm!433567))

(assert (= (or b!5696586 b!5696585) bm!433566))

(assert (=> bm!433566 m!6652476))

(declare-fun m!6652552 () Bool)

(assert (=> bm!433567 m!6652552))

(declare-fun m!6652554 () Bool)

(assert (=> b!5696588 m!6652554))

(declare-fun m!6652556 () Bool)

(assert (=> b!5696589 m!6652556))

(assert (=> b!5696085 d!1797499))

(declare-fun bm!433568 () Bool)

(declare-fun call!433573 () Bool)

(assert (=> bm!433568 (= call!433573 (isEmpty!35107 s!2326))))

(declare-fun b!5696590 () Bool)

(declare-fun res!2405680 () Bool)

(declare-fun e!3504672 () Bool)

(assert (=> b!5696590 (=> res!2405680 e!3504672)))

(assert (=> b!5696590 (= res!2405680 (not (isEmpty!35107 (tail!11172 s!2326))))))

(declare-fun b!5696591 () Bool)

(assert (=> b!5696591 (= e!3504672 (not (= (head!12077 s!2326) (c!1002952 r!7292))))))

(declare-fun d!1797501 () Bool)

(declare-fun e!3504670 () Bool)

(assert (=> d!1797501 e!3504670))

(declare-fun c!1003076 () Bool)

(assert (=> d!1797501 (= c!1003076 (is-EmptyExpr!15690 r!7292))))

(declare-fun lt!2272706 () Bool)

(declare-fun e!3504675 () Bool)

(assert (=> d!1797501 (= lt!2272706 e!3504675)))

(declare-fun c!1003075 () Bool)

(assert (=> d!1797501 (= c!1003075 (isEmpty!35107 s!2326))))

(assert (=> d!1797501 (validRegex!7426 r!7292)))

(assert (=> d!1797501 (= (matchR!7875 r!7292 s!2326) lt!2272706)))

(declare-fun b!5696592 () Bool)

(assert (=> b!5696592 (= e!3504675 (nullable!5722 r!7292))))

(declare-fun b!5696593 () Bool)

(declare-fun e!3504669 () Bool)

(assert (=> b!5696593 (= e!3504669 (not lt!2272706))))

(declare-fun b!5696594 () Bool)

(assert (=> b!5696594 (= e!3504670 (= lt!2272706 call!433573))))

(declare-fun b!5696595 () Bool)

(declare-fun e!3504674 () Bool)

(assert (=> b!5696595 (= e!3504674 e!3504672)))

(declare-fun res!2405679 () Bool)

(assert (=> b!5696595 (=> res!2405679 e!3504672)))

(assert (=> b!5696595 (= res!2405679 call!433573)))

(declare-fun b!5696596 () Bool)

(declare-fun res!2405675 () Bool)

(declare-fun e!3504673 () Bool)

(assert (=> b!5696596 (=> (not res!2405675) (not e!3504673))))

(assert (=> b!5696596 (= res!2405675 (isEmpty!35107 (tail!11172 s!2326)))))

(declare-fun b!5696597 () Bool)

(declare-fun res!2405677 () Bool)

(declare-fun e!3504671 () Bool)

(assert (=> b!5696597 (=> res!2405677 e!3504671)))

(assert (=> b!5696597 (= res!2405677 (not (is-ElementMatch!15690 r!7292)))))

(assert (=> b!5696597 (= e!3504669 e!3504671)))

(declare-fun b!5696598 () Bool)

(assert (=> b!5696598 (= e!3504673 (= (head!12077 s!2326) (c!1002952 r!7292)))))

(declare-fun b!5696599 () Bool)

(declare-fun res!2405681 () Bool)

(assert (=> b!5696599 (=> res!2405681 e!3504671)))

(assert (=> b!5696599 (= res!2405681 e!3504673)))

(declare-fun res!2405674 () Bool)

(assert (=> b!5696599 (=> (not res!2405674) (not e!3504673))))

(assert (=> b!5696599 (= res!2405674 lt!2272706)))

(declare-fun b!5696600 () Bool)

(declare-fun res!2405678 () Bool)

(assert (=> b!5696600 (=> (not res!2405678) (not e!3504673))))

(assert (=> b!5696600 (= res!2405678 (not call!433573))))

(declare-fun b!5696601 () Bool)

(assert (=> b!5696601 (= e!3504675 (matchR!7875 (derivativeStep!4501 r!7292 (head!12077 s!2326)) (tail!11172 s!2326)))))

(declare-fun b!5696602 () Bool)

(assert (=> b!5696602 (= e!3504670 e!3504669)))

(declare-fun c!1003074 () Bool)

(assert (=> b!5696602 (= c!1003074 (is-EmptyLang!15690 r!7292))))

(declare-fun b!5696603 () Bool)

(assert (=> b!5696603 (= e!3504671 e!3504674)))

(declare-fun res!2405676 () Bool)

(assert (=> b!5696603 (=> (not res!2405676) (not e!3504674))))

(assert (=> b!5696603 (= res!2405676 (not lt!2272706))))

(assert (= (and d!1797501 c!1003075) b!5696592))

(assert (= (and d!1797501 (not c!1003075)) b!5696601))

(assert (= (and d!1797501 c!1003076) b!5696594))

(assert (= (and d!1797501 (not c!1003076)) b!5696602))

(assert (= (and b!5696602 c!1003074) b!5696593))

(assert (= (and b!5696602 (not c!1003074)) b!5696597))

(assert (= (and b!5696597 (not res!2405677)) b!5696599))

(assert (= (and b!5696599 res!2405674) b!5696600))

(assert (= (and b!5696600 res!2405678) b!5696596))

(assert (= (and b!5696596 res!2405675) b!5696598))

(assert (= (and b!5696599 (not res!2405681)) b!5696603))

(assert (= (and b!5696603 res!2405676) b!5696595))

(assert (= (and b!5696595 (not res!2405679)) b!5696590))

(assert (= (and b!5696590 (not res!2405680)) b!5696591))

(assert (= (or b!5696594 b!5696600 b!5696595) bm!433568))

(assert (=> b!5696601 m!6652468))

(assert (=> b!5696601 m!6652468))

(declare-fun m!6652558 () Bool)

(assert (=> b!5696601 m!6652558))

(assert (=> b!5696601 m!6652472))

(assert (=> b!5696601 m!6652558))

(assert (=> b!5696601 m!6652472))

(declare-fun m!6652560 () Bool)

(assert (=> b!5696601 m!6652560))

(assert (=> b!5696598 m!6652468))

(assert (=> d!1797501 m!6652476))

(assert (=> d!1797501 m!6652130))

(assert (=> b!5696590 m!6652472))

(assert (=> b!5696590 m!6652472))

(assert (=> b!5696590 m!6652480))

(assert (=> b!5696591 m!6652468))

(assert (=> bm!433568 m!6652476))

(declare-fun m!6652562 () Bool)

(assert (=> b!5696592 m!6652562))

(assert (=> b!5696596 m!6652472))

(assert (=> b!5696596 m!6652472))

(assert (=> b!5696596 m!6652480))

(assert (=> b!5696085 d!1797501))

(declare-fun d!1797503 () Bool)

(assert (=> d!1797503 (= (matchR!7875 r!7292 s!2326) (matchRSpec!2793 r!7292 s!2326))))

(declare-fun lt!2272707 () Unit!156292)

(assert (=> d!1797503 (= lt!2272707 (choose!43076 r!7292 s!2326))))

(assert (=> d!1797503 (validRegex!7426 r!7292)))

(assert (=> d!1797503 (= (mainMatchTheorem!2793 r!7292 s!2326) lt!2272707)))

(declare-fun bs!1327840 () Bool)

(assert (= bs!1327840 d!1797503))

(assert (=> bs!1327840 m!6652036))

(assert (=> bs!1327840 m!6652034))

(declare-fun m!6652564 () Bool)

(assert (=> bs!1327840 m!6652564))

(assert (=> bs!1327840 m!6652130))

(assert (=> b!5696085 d!1797503))

(declare-fun bm!433569 () Bool)

(declare-fun call!433578 () (Set Context!10148))

(declare-fun call!433575 () (Set Context!10148))

(assert (=> bm!433569 (= call!433578 call!433575)))

(declare-fun b!5696604 () Bool)

(declare-fun c!1003078 () Bool)

(assert (=> b!5696604 (= c!1003078 (is-Star!15690 (reg!16019 (regOne!31892 r!7292))))))

(declare-fun e!3504678 () (Set Context!10148))

(declare-fun e!3504679 () (Set Context!10148))

(assert (=> b!5696604 (= e!3504678 e!3504679)))

(declare-fun call!433577 () List!63369)

(declare-fun bm!433570 () Bool)

(declare-fun c!1003079 () Bool)

(declare-fun c!1003080 () Bool)

(declare-fun c!1003077 () Bool)

(assert (=> bm!433570 (= call!433575 (derivationStepZipperDown!1032 (ite c!1003080 (regOne!31893 (reg!16019 (regOne!31892 r!7292))) (ite c!1003079 (regTwo!31892 (reg!16019 (regOne!31892 r!7292))) (ite c!1003077 (regOne!31892 (reg!16019 (regOne!31892 r!7292))) (reg!16019 (reg!16019 (regOne!31892 r!7292)))))) (ite (or c!1003080 c!1003079) lt!2272547 (Context!10149 call!433577)) (h!69695 s!2326)))))

(declare-fun b!5696605 () Bool)

(declare-fun e!3504681 () (Set Context!10148))

(assert (=> b!5696605 (= e!3504681 (set.insert lt!2272547 (as set.empty (Set Context!10148))))))

(declare-fun b!5696606 () Bool)

(declare-fun call!433574 () (Set Context!10148))

(assert (=> b!5696606 (= e!3504678 call!433574)))

(declare-fun b!5696607 () Bool)

(assert (=> b!5696607 (= e!3504679 call!433574)))

(declare-fun b!5696608 () Bool)

(declare-fun e!3504680 () Bool)

(assert (=> b!5696608 (= c!1003079 e!3504680)))

(declare-fun res!2405682 () Bool)

(assert (=> b!5696608 (=> (not res!2405682) (not e!3504680))))

(assert (=> b!5696608 (= res!2405682 (is-Concat!24535 (reg!16019 (regOne!31892 r!7292))))))

(declare-fun e!3504676 () (Set Context!10148))

(declare-fun e!3504677 () (Set Context!10148))

(assert (=> b!5696608 (= e!3504676 e!3504677)))

(declare-fun bm!433571 () Bool)

(declare-fun call!433576 () List!63369)

(assert (=> bm!433571 (= call!433577 call!433576)))

(declare-fun bm!433572 () Bool)

(assert (=> bm!433572 (= call!433576 ($colon$colon!1715 (exprs!5574 lt!2272547) (ite (or c!1003079 c!1003077) (regTwo!31892 (reg!16019 (regOne!31892 r!7292))) (reg!16019 (regOne!31892 r!7292)))))))

(declare-fun b!5696609 () Bool)

(declare-fun call!433579 () (Set Context!10148))

(assert (=> b!5696609 (= e!3504676 (set.union call!433575 call!433579))))

(declare-fun d!1797505 () Bool)

(declare-fun c!1003081 () Bool)

(assert (=> d!1797505 (= c!1003081 (and (is-ElementMatch!15690 (reg!16019 (regOne!31892 r!7292))) (= (c!1002952 (reg!16019 (regOne!31892 r!7292))) (h!69695 s!2326))))))

(assert (=> d!1797505 (= (derivationStepZipperDown!1032 (reg!16019 (regOne!31892 r!7292)) lt!2272547 (h!69695 s!2326)) e!3504681)))

(declare-fun bm!433573 () Bool)

(assert (=> bm!433573 (= call!433579 (derivationStepZipperDown!1032 (ite c!1003080 (regTwo!31893 (reg!16019 (regOne!31892 r!7292))) (regOne!31892 (reg!16019 (regOne!31892 r!7292)))) (ite c!1003080 lt!2272547 (Context!10149 call!433576)) (h!69695 s!2326)))))

(declare-fun b!5696610 () Bool)

(assert (=> b!5696610 (= e!3504680 (nullable!5722 (regOne!31892 (reg!16019 (regOne!31892 r!7292)))))))

(declare-fun b!5696611 () Bool)

(assert (=> b!5696611 (= e!3504677 e!3504678)))

(assert (=> b!5696611 (= c!1003077 (is-Concat!24535 (reg!16019 (regOne!31892 r!7292))))))

(declare-fun b!5696612 () Bool)

(assert (=> b!5696612 (= e!3504681 e!3504676)))

(assert (=> b!5696612 (= c!1003080 (is-Union!15690 (reg!16019 (regOne!31892 r!7292))))))

(declare-fun b!5696613 () Bool)

(assert (=> b!5696613 (= e!3504679 (as set.empty (Set Context!10148)))))

(declare-fun b!5696614 () Bool)

(assert (=> b!5696614 (= e!3504677 (set.union call!433579 call!433578))))

(declare-fun bm!433574 () Bool)

(assert (=> bm!433574 (= call!433574 call!433578)))

(assert (= (and d!1797505 c!1003081) b!5696605))

(assert (= (and d!1797505 (not c!1003081)) b!5696612))

(assert (= (and b!5696612 c!1003080) b!5696609))

(assert (= (and b!5696612 (not c!1003080)) b!5696608))

(assert (= (and b!5696608 res!2405682) b!5696610))

(assert (= (and b!5696608 c!1003079) b!5696614))

(assert (= (and b!5696608 (not c!1003079)) b!5696611))

(assert (= (and b!5696611 c!1003077) b!5696606))

(assert (= (and b!5696611 (not c!1003077)) b!5696604))

(assert (= (and b!5696604 c!1003078) b!5696607))

(assert (= (and b!5696604 (not c!1003078)) b!5696613))

(assert (= (or b!5696606 b!5696607) bm!433571))

(assert (= (or b!5696606 b!5696607) bm!433574))

(assert (= (or b!5696614 bm!433571) bm!433572))

(assert (= (or b!5696614 bm!433574) bm!433569))

(assert (= (or b!5696609 b!5696614) bm!433573))

(assert (= (or b!5696609 bm!433569) bm!433570))

(declare-fun m!6652566 () Bool)

(assert (=> bm!433573 m!6652566))

(assert (=> b!5696605 m!6652122))

(declare-fun m!6652568 () Bool)

(assert (=> bm!433572 m!6652568))

(declare-fun m!6652570 () Bool)

(assert (=> bm!433570 m!6652570))

(declare-fun m!6652572 () Bool)

(assert (=> b!5696610 m!6652572))

(assert (=> b!5696090 d!1797505))

(declare-fun d!1797507 () Bool)

(declare-fun e!3504684 () Bool)

(assert (=> d!1797507 e!3504684))

(declare-fun res!2405685 () Bool)

(assert (=> d!1797507 (=> (not res!2405685) (not e!3504684))))

(declare-fun lt!2272710 () List!63370)

(declare-fun noDuplicate!1629 (List!63370) Bool)

(assert (=> d!1797507 (= res!2405685 (noDuplicate!1629 lt!2272710))))

(declare-fun choose!43080 ((Set Context!10148)) List!63370)

(assert (=> d!1797507 (= lt!2272710 (choose!43080 z!1189))))

(assert (=> d!1797507 (= (toList!9474 z!1189) lt!2272710)))

(declare-fun b!5696617 () Bool)

(declare-fun content!11470 (List!63370) (Set Context!10148))

(assert (=> b!5696617 (= e!3504684 (= (content!11470 lt!2272710) z!1189))))

(assert (= (and d!1797507 res!2405685) b!5696617))

(declare-fun m!6652574 () Bool)

(assert (=> d!1797507 m!6652574))

(declare-fun m!6652576 () Bool)

(assert (=> d!1797507 m!6652576))

(declare-fun m!6652578 () Bool)

(assert (=> b!5696617 m!6652578))

(assert (=> b!5696089 d!1797507))

(declare-fun b!5696618 () Bool)

(declare-fun res!2405688 () Bool)

(declare-fun e!3504687 () Bool)

(assert (=> b!5696618 (=> (not res!2405688) (not e!3504687))))

(declare-fun lt!2272713 () Option!15699)

(assert (=> b!5696618 (= res!2405688 (matchR!7875 (regTwo!31892 r!7292) (_2!36090 (get!21795 lt!2272713))))))

(declare-fun b!5696619 () Bool)

(declare-fun e!3504689 () Bool)

(assert (=> b!5696619 (= e!3504689 (matchR!7875 (regTwo!31892 r!7292) s!2326))))

(declare-fun b!5696620 () Bool)

(declare-fun e!3504685 () Bool)

(assert (=> b!5696620 (= e!3504685 (not (isDefined!12402 lt!2272713)))))

(declare-fun b!5696621 () Bool)

(declare-fun e!3504686 () Option!15699)

(assert (=> b!5696621 (= e!3504686 None!15698)))

(declare-fun b!5696622 () Bool)

(declare-fun lt!2272712 () Unit!156292)

(declare-fun lt!2272711 () Unit!156292)

(assert (=> b!5696622 (= lt!2272712 lt!2272711)))

(assert (=> b!5696622 (= (++!13882 (++!13882 Nil!63247 (Cons!63247 (h!69695 s!2326) Nil!63247)) (t!376689 s!2326)) s!2326)))

(assert (=> b!5696622 (= lt!2272711 (lemmaMoveElementToOtherListKeepsConcatEq!2051 Nil!63247 (h!69695 s!2326) (t!376689 s!2326) s!2326))))

(assert (=> b!5696622 (= e!3504686 (findConcatSeparation!2113 lt!2272512 (regTwo!31892 r!7292) (++!13882 Nil!63247 (Cons!63247 (h!69695 s!2326) Nil!63247)) (t!376689 s!2326) s!2326))))

(declare-fun d!1797509 () Bool)

(assert (=> d!1797509 e!3504685))

(declare-fun res!2405690 () Bool)

(assert (=> d!1797509 (=> res!2405690 e!3504685)))

(assert (=> d!1797509 (= res!2405690 e!3504687)))

(declare-fun res!2405689 () Bool)

(assert (=> d!1797509 (=> (not res!2405689) (not e!3504687))))

(assert (=> d!1797509 (= res!2405689 (isDefined!12402 lt!2272713))))

(declare-fun e!3504688 () Option!15699)

(assert (=> d!1797509 (= lt!2272713 e!3504688)))

(declare-fun c!1003083 () Bool)

(assert (=> d!1797509 (= c!1003083 e!3504689)))

(declare-fun res!2405686 () Bool)

(assert (=> d!1797509 (=> (not res!2405686) (not e!3504689))))

(assert (=> d!1797509 (= res!2405686 (matchR!7875 lt!2272512 Nil!63247))))

(assert (=> d!1797509 (validRegex!7426 lt!2272512)))

(assert (=> d!1797509 (= (findConcatSeparation!2113 lt!2272512 (regTwo!31892 r!7292) Nil!63247 s!2326 s!2326) lt!2272713)))

(declare-fun b!5696623 () Bool)

(assert (=> b!5696623 (= e!3504688 (Some!15698 (tuple2!65575 Nil!63247 s!2326)))))

(declare-fun b!5696624 () Bool)

(assert (=> b!5696624 (= e!3504688 e!3504686)))

(declare-fun c!1003082 () Bool)

(assert (=> b!5696624 (= c!1003082 (is-Nil!63247 s!2326))))

(declare-fun b!5696625 () Bool)

(declare-fun res!2405687 () Bool)

(assert (=> b!5696625 (=> (not res!2405687) (not e!3504687))))

(assert (=> b!5696625 (= res!2405687 (matchR!7875 lt!2272512 (_1!36090 (get!21795 lt!2272713))))))

(declare-fun b!5696626 () Bool)

(assert (=> b!5696626 (= e!3504687 (= (++!13882 (_1!36090 (get!21795 lt!2272713)) (_2!36090 (get!21795 lt!2272713))) s!2326))))

(assert (= (and d!1797509 res!2405686) b!5696619))

(assert (= (and d!1797509 c!1003083) b!5696623))

(assert (= (and d!1797509 (not c!1003083)) b!5696624))

(assert (= (and b!5696624 c!1003082) b!5696621))

(assert (= (and b!5696624 (not c!1003082)) b!5696622))

(assert (= (and d!1797509 res!2405689) b!5696625))

(assert (= (and b!5696625 res!2405687) b!5696618))

(assert (= (and b!5696618 res!2405688) b!5696626))

(assert (= (and d!1797509 (not res!2405690)) b!5696620))

(declare-fun m!6652580 () Bool)

(assert (=> b!5696626 m!6652580))

(declare-fun m!6652582 () Bool)

(assert (=> b!5696626 m!6652582))

(declare-fun m!6652584 () Bool)

(assert (=> d!1797509 m!6652584))

(declare-fun m!6652586 () Bool)

(assert (=> d!1797509 m!6652586))

(assert (=> d!1797509 m!6652462))

(assert (=> b!5696618 m!6652580))

(declare-fun m!6652588 () Bool)

(assert (=> b!5696618 m!6652588))

(assert (=> b!5696622 m!6652408))

(assert (=> b!5696622 m!6652408))

(assert (=> b!5696622 m!6652410))

(assert (=> b!5696622 m!6652412))

(assert (=> b!5696622 m!6652408))

(declare-fun m!6652590 () Bool)

(assert (=> b!5696622 m!6652590))

(assert (=> b!5696619 m!6652416))

(assert (=> b!5696620 m!6652584))

(assert (=> b!5696625 m!6652580))

(declare-fun m!6652592 () Bool)

(assert (=> b!5696625 m!6652592))

(assert (=> b!5696070 d!1797509))

(declare-fun bs!1327841 () Bool)

(declare-fun d!1797511 () Bool)

(assert (= bs!1327841 (and d!1797511 b!5696070)))

(declare-fun lambda!307089 () Int)

(assert (=> bs!1327841 (= lambda!307089 lambda!307029)))

(declare-fun bs!1327842 () Bool)

(assert (= bs!1327842 (and d!1797511 b!5696503)))

(assert (=> bs!1327842 (not (= lambda!307089 lambda!307076))))

(declare-fun bs!1327843 () Bool)

(assert (= bs!1327843 (and d!1797511 d!1797459)))

(assert (=> bs!1327843 (= (= lt!2272512 (regOne!31892 r!7292)) (= lambda!307089 lambda!307070))))

(declare-fun bs!1327844 () Bool)

(assert (= bs!1327844 (and d!1797511 d!1797455)))

(assert (=> bs!1327844 (= (= lt!2272512 (regOne!31892 r!7292)) (= lambda!307089 lambda!307066))))

(declare-fun bs!1327845 () Bool)

(assert (= bs!1327845 (and d!1797511 b!5696584)))

(assert (=> bs!1327845 (not (= lambda!307089 lambda!307088))))

(declare-fun bs!1327846 () Bool)

(assert (= bs!1327846 (and d!1797511 b!5696080)))

(assert (=> bs!1327846 (not (= lambda!307089 lambda!307027))))

(declare-fun bs!1327847 () Bool)

(assert (= bs!1327847 (and d!1797511 b!5696499)))

(assert (=> bs!1327847 (not (= lambda!307089 lambda!307075))))

(assert (=> bs!1327841 (not (= lambda!307089 lambda!307030))))

(assert (=> bs!1327844 (not (= lambda!307089 lambda!307067))))

(declare-fun bs!1327848 () Bool)

(assert (= bs!1327848 (and d!1797511 b!5696580)))

(assert (=> bs!1327848 (not (= lambda!307089 lambda!307087))))

(assert (=> bs!1327846 (= (= lt!2272512 (regOne!31892 r!7292)) (= lambda!307089 lambda!307026))))

(assert (=> d!1797511 true))

(assert (=> d!1797511 true))

(assert (=> d!1797511 true))

(assert (=> d!1797511 (= (isDefined!12402 (findConcatSeparation!2113 lt!2272512 (regTwo!31892 r!7292) Nil!63247 s!2326 s!2326)) (Exists!2790 lambda!307089))))

(declare-fun lt!2272714 () Unit!156292)

(assert (=> d!1797511 (= lt!2272714 (choose!43075 lt!2272512 (regTwo!31892 r!7292) s!2326))))

(assert (=> d!1797511 (validRegex!7426 lt!2272512)))

(assert (=> d!1797511 (= (lemmaFindConcatSeparationEquivalentToExists!1877 lt!2272512 (regTwo!31892 r!7292) s!2326) lt!2272714)))

(declare-fun bs!1327849 () Bool)

(assert (= bs!1327849 d!1797511))

(assert (=> bs!1327849 m!6652462))

(assert (=> bs!1327849 m!6652066))

(declare-fun m!6652594 () Bool)

(assert (=> bs!1327849 m!6652594))

(declare-fun m!6652596 () Bool)

(assert (=> bs!1327849 m!6652596))

(declare-fun m!6652598 () Bool)

(assert (=> bs!1327849 m!6652598))

(assert (=> bs!1327849 m!6652066))

(assert (=> b!5696070 d!1797511))

(declare-fun d!1797513 () Bool)

(assert (=> d!1797513 (= (get!21795 lt!2272542) (v!51751 lt!2272542))))

(assert (=> b!5696070 d!1797513))

(declare-fun bs!1327850 () Bool)

(declare-fun d!1797515 () Bool)

(assert (= bs!1327850 (and d!1797515 b!5696070)))

(declare-fun lambda!307090 () Int)

(assert (=> bs!1327850 (= lambda!307090 lambda!307029)))

(declare-fun bs!1327851 () Bool)

(assert (= bs!1327851 (and d!1797515 b!5696503)))

(assert (=> bs!1327851 (not (= lambda!307090 lambda!307076))))

(declare-fun bs!1327852 () Bool)

(assert (= bs!1327852 (and d!1797515 d!1797459)))

(assert (=> bs!1327852 (= (= lt!2272512 (regOne!31892 r!7292)) (= lambda!307090 lambda!307070))))

(declare-fun bs!1327853 () Bool)

(assert (= bs!1327853 (and d!1797515 d!1797455)))

(assert (=> bs!1327853 (= (= lt!2272512 (regOne!31892 r!7292)) (= lambda!307090 lambda!307066))))

(declare-fun bs!1327854 () Bool)

(assert (= bs!1327854 (and d!1797515 d!1797511)))

(assert (=> bs!1327854 (= lambda!307090 lambda!307089)))

(declare-fun bs!1327855 () Bool)

(assert (= bs!1327855 (and d!1797515 b!5696584)))

(assert (=> bs!1327855 (not (= lambda!307090 lambda!307088))))

(declare-fun bs!1327856 () Bool)

(assert (= bs!1327856 (and d!1797515 b!5696080)))

(assert (=> bs!1327856 (not (= lambda!307090 lambda!307027))))

(declare-fun bs!1327857 () Bool)

(assert (= bs!1327857 (and d!1797515 b!5696499)))

(assert (=> bs!1327857 (not (= lambda!307090 lambda!307075))))

(assert (=> bs!1327850 (not (= lambda!307090 lambda!307030))))

(assert (=> bs!1327853 (not (= lambda!307090 lambda!307067))))

(declare-fun bs!1327858 () Bool)

(assert (= bs!1327858 (and d!1797515 b!5696580)))

(assert (=> bs!1327858 (not (= lambda!307090 lambda!307087))))

(assert (=> bs!1327856 (= (= lt!2272512 (regOne!31892 r!7292)) (= lambda!307090 lambda!307026))))

(assert (=> d!1797515 true))

(assert (=> d!1797515 true))

(assert (=> d!1797515 true))

(declare-fun lambda!307091 () Int)

(assert (=> bs!1327850 (not (= lambda!307091 lambda!307029))))

(assert (=> bs!1327851 (= (and (= lt!2272512 (regOne!31892 lt!2272513)) (= (regTwo!31892 r!7292) (regTwo!31892 lt!2272513))) (= lambda!307091 lambda!307076))))

(assert (=> bs!1327852 (not (= lambda!307091 lambda!307070))))

(assert (=> bs!1327853 (not (= lambda!307091 lambda!307066))))

(assert (=> bs!1327854 (not (= lambda!307091 lambda!307089))))

(assert (=> bs!1327855 (= (= lt!2272512 (regOne!31892 r!7292)) (= lambda!307091 lambda!307088))))

(assert (=> bs!1327856 (= (= lt!2272512 (regOne!31892 r!7292)) (= lambda!307091 lambda!307027))))

(assert (=> bs!1327857 (not (= lambda!307091 lambda!307075))))

(assert (=> bs!1327850 (= lambda!307091 lambda!307030)))

(declare-fun bs!1327859 () Bool)

(assert (= bs!1327859 d!1797515))

(assert (=> bs!1327859 (not (= lambda!307091 lambda!307090))))

(assert (=> bs!1327853 (= (= lt!2272512 (regOne!31892 r!7292)) (= lambda!307091 lambda!307067))))

(assert (=> bs!1327858 (not (= lambda!307091 lambda!307087))))

(assert (=> bs!1327856 (not (= lambda!307091 lambda!307026))))

(assert (=> d!1797515 true))

(assert (=> d!1797515 true))

(assert (=> d!1797515 true))

(assert (=> d!1797515 (= (Exists!2790 lambda!307090) (Exists!2790 lambda!307091))))

(declare-fun lt!2272715 () Unit!156292)

(assert (=> d!1797515 (= lt!2272715 (choose!43074 lt!2272512 (regTwo!31892 r!7292) s!2326))))

(assert (=> d!1797515 (validRegex!7426 lt!2272512)))

(assert (=> d!1797515 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1419 lt!2272512 (regTwo!31892 r!7292) s!2326) lt!2272715)))

(declare-fun m!6652600 () Bool)

(assert (=> bs!1327859 m!6652600))

(declare-fun m!6652602 () Bool)

(assert (=> bs!1327859 m!6652602))

(declare-fun m!6652604 () Bool)

(assert (=> bs!1327859 m!6652604))

(assert (=> bs!1327859 m!6652462))

(assert (=> b!5696070 d!1797515))

(declare-fun d!1797517 () Bool)

(assert (=> d!1797517 (= (isDefined!12402 lt!2272542) (not (isEmpty!35108 lt!2272542)))))

(declare-fun bs!1327860 () Bool)

(assert (= bs!1327860 d!1797517))

(declare-fun m!6652606 () Bool)

(assert (=> bs!1327860 m!6652606))

(assert (=> b!5696070 d!1797517))

(declare-fun d!1797519 () Bool)

(assert (=> d!1797519 (= (Exists!2790 lambda!307029) (choose!43073 lambda!307029))))

(declare-fun bs!1327861 () Bool)

(assert (= bs!1327861 d!1797519))

(declare-fun m!6652608 () Bool)

(assert (=> bs!1327861 m!6652608))

(assert (=> b!5696070 d!1797519))

(declare-fun b!5696635 () Bool)

(declare-fun e!3504695 () List!63371)

(assert (=> b!5696635 (= e!3504695 (_2!36090 lt!2272540))))

(declare-fun b!5696636 () Bool)

(assert (=> b!5696636 (= e!3504695 (Cons!63247 (h!69695 (_1!36090 lt!2272540)) (++!13882 (t!376689 (_1!36090 lt!2272540)) (_2!36090 lt!2272540))))))

(declare-fun b!5696637 () Bool)

(declare-fun res!2405695 () Bool)

(declare-fun e!3504694 () Bool)

(assert (=> b!5696637 (=> (not res!2405695) (not e!3504694))))

(declare-fun lt!2272718 () List!63371)

(declare-fun size!40008 (List!63371) Int)

(assert (=> b!5696637 (= res!2405695 (= (size!40008 lt!2272718) (+ (size!40008 (_1!36090 lt!2272540)) (size!40008 (_2!36090 lt!2272540)))))))

(declare-fun d!1797521 () Bool)

(assert (=> d!1797521 e!3504694))

(declare-fun res!2405696 () Bool)

(assert (=> d!1797521 (=> (not res!2405696) (not e!3504694))))

(declare-fun content!11471 (List!63371) (Set C!31650))

(assert (=> d!1797521 (= res!2405696 (= (content!11471 lt!2272718) (set.union (content!11471 (_1!36090 lt!2272540)) (content!11471 (_2!36090 lt!2272540)))))))

(assert (=> d!1797521 (= lt!2272718 e!3504695)))

(declare-fun c!1003086 () Bool)

(assert (=> d!1797521 (= c!1003086 (is-Nil!63247 (_1!36090 lt!2272540)))))

(assert (=> d!1797521 (= (++!13882 (_1!36090 lt!2272540) (_2!36090 lt!2272540)) lt!2272718)))

(declare-fun b!5696638 () Bool)

(assert (=> b!5696638 (= e!3504694 (or (not (= (_2!36090 lt!2272540) Nil!63247)) (= lt!2272718 (_1!36090 lt!2272540))))))

(assert (= (and d!1797521 c!1003086) b!5696635))

(assert (= (and d!1797521 (not c!1003086)) b!5696636))

(assert (= (and d!1797521 res!2405696) b!5696637))

(assert (= (and b!5696637 res!2405695) b!5696638))

(declare-fun m!6652610 () Bool)

(assert (=> b!5696636 m!6652610))

(declare-fun m!6652612 () Bool)

(assert (=> b!5696637 m!6652612))

(declare-fun m!6652614 () Bool)

(assert (=> b!5696637 m!6652614))

(declare-fun m!6652616 () Bool)

(assert (=> b!5696637 m!6652616))

(declare-fun m!6652618 () Bool)

(assert (=> d!1797521 m!6652618))

(declare-fun m!6652620 () Bool)

(assert (=> d!1797521 m!6652620))

(declare-fun m!6652622 () Bool)

(assert (=> d!1797521 m!6652622))

(assert (=> b!5696070 d!1797521))

(declare-fun d!1797523 () Bool)

(assert (=> d!1797523 (= (Exists!2790 lambda!307030) (choose!43073 lambda!307030))))

(declare-fun bs!1327862 () Bool)

(assert (= bs!1327862 d!1797523))

(declare-fun m!6652624 () Bool)

(assert (=> bs!1327862 m!6652624))

(assert (=> b!5696070 d!1797523))

(declare-fun d!1797525 () Bool)

(declare-fun c!1003087 () Bool)

(assert (=> d!1797525 (= c!1003087 (isEmpty!35107 s!2326))))

(declare-fun e!3504696 () Bool)

(assert (=> d!1797525 (= (matchZipper!1828 lt!2272537 s!2326) e!3504696)))

(declare-fun b!5696639 () Bool)

(assert (=> b!5696639 (= e!3504696 (nullableZipper!1648 lt!2272537))))

(declare-fun b!5696640 () Bool)

(assert (=> b!5696640 (= e!3504696 (matchZipper!1828 (derivationStepZipper!1773 lt!2272537 (head!12077 s!2326)) (tail!11172 s!2326)))))

(assert (= (and d!1797525 c!1003087) b!5696639))

(assert (= (and d!1797525 (not c!1003087)) b!5696640))

(assert (=> d!1797525 m!6652476))

(declare-fun m!6652626 () Bool)

(assert (=> b!5696639 m!6652626))

(assert (=> b!5696640 m!6652468))

(assert (=> b!5696640 m!6652468))

(declare-fun m!6652628 () Bool)

(assert (=> b!5696640 m!6652628))

(assert (=> b!5696640 m!6652472))

(assert (=> b!5696640 m!6652628))

(assert (=> b!5696640 m!6652472))

(declare-fun m!6652630 () Bool)

(assert (=> b!5696640 m!6652630))

(assert (=> b!5696088 d!1797525))

(declare-fun d!1797527 () Bool)

(declare-fun c!1003088 () Bool)

(assert (=> d!1797527 (= c!1003088 (isEmpty!35107 (t!376689 s!2326)))))

(declare-fun e!3504697 () Bool)

(assert (=> d!1797527 (= (matchZipper!1828 lt!2272521 (t!376689 s!2326)) e!3504697)))

(declare-fun b!5696641 () Bool)

(assert (=> b!5696641 (= e!3504697 (nullableZipper!1648 lt!2272521))))

(declare-fun b!5696642 () Bool)

(assert (=> b!5696642 (= e!3504697 (matchZipper!1828 (derivationStepZipper!1773 lt!2272521 (head!12077 (t!376689 s!2326))) (tail!11172 (t!376689 s!2326))))))

(assert (= (and d!1797527 c!1003088) b!5696641))

(assert (= (and d!1797527 (not c!1003088)) b!5696642))

(assert (=> d!1797527 m!6652302))

(declare-fun m!6652632 () Bool)

(assert (=> b!5696641 m!6652632))

(assert (=> b!5696642 m!6652306))

(assert (=> b!5696642 m!6652306))

(declare-fun m!6652634 () Bool)

(assert (=> b!5696642 m!6652634))

(assert (=> b!5696642 m!6652310))

(assert (=> b!5696642 m!6652634))

(assert (=> b!5696642 m!6652310))

(declare-fun m!6652636 () Bool)

(assert (=> b!5696642 m!6652636))

(assert (=> b!5696088 d!1797527))

(declare-fun b!5696655 () Bool)

(declare-fun e!3504700 () Bool)

(declare-fun tp!1580139 () Bool)

(assert (=> b!5696655 (= e!3504700 tp!1580139)))

(declare-fun b!5696654 () Bool)

(declare-fun tp!1580140 () Bool)

(declare-fun tp!1580137 () Bool)

(assert (=> b!5696654 (= e!3504700 (and tp!1580140 tp!1580137))))

(declare-fun b!5696656 () Bool)

(declare-fun tp!1580138 () Bool)

(declare-fun tp!1580141 () Bool)

(assert (=> b!5696656 (= e!3504700 (and tp!1580138 tp!1580141))))

(assert (=> b!5696068 (= tp!1580096 e!3504700)))

(declare-fun b!5696653 () Bool)

(assert (=> b!5696653 (= e!3504700 tp_is_empty!40633)))

(assert (= (and b!5696068 (is-ElementMatch!15690 (regOne!31892 r!7292))) b!5696653))

(assert (= (and b!5696068 (is-Concat!24535 (regOne!31892 r!7292))) b!5696654))

(assert (= (and b!5696068 (is-Star!15690 (regOne!31892 r!7292))) b!5696655))

(assert (= (and b!5696068 (is-Union!15690 (regOne!31892 r!7292))) b!5696656))

(declare-fun b!5696659 () Bool)

(declare-fun e!3504701 () Bool)

(declare-fun tp!1580144 () Bool)

(assert (=> b!5696659 (= e!3504701 tp!1580144)))

(declare-fun b!5696658 () Bool)

(declare-fun tp!1580145 () Bool)

(declare-fun tp!1580142 () Bool)

(assert (=> b!5696658 (= e!3504701 (and tp!1580145 tp!1580142))))

(declare-fun b!5696660 () Bool)

(declare-fun tp!1580143 () Bool)

(declare-fun tp!1580146 () Bool)

(assert (=> b!5696660 (= e!3504701 (and tp!1580143 tp!1580146))))

(assert (=> b!5696068 (= tp!1580095 e!3504701)))

(declare-fun b!5696657 () Bool)

(assert (=> b!5696657 (= e!3504701 tp_is_empty!40633)))

(assert (= (and b!5696068 (is-ElementMatch!15690 (regTwo!31892 r!7292))) b!5696657))

(assert (= (and b!5696068 (is-Concat!24535 (regTwo!31892 r!7292))) b!5696658))

(assert (= (and b!5696068 (is-Star!15690 (regTwo!31892 r!7292))) b!5696659))

(assert (= (and b!5696068 (is-Union!15690 (regTwo!31892 r!7292))) b!5696660))

(declare-fun condSetEmpty!38142 () Bool)

(assert (=> setNonEmpty!38136 (= condSetEmpty!38142 (= setRest!38136 (as set.empty (Set Context!10148))))))

(declare-fun setRes!38142 () Bool)

(assert (=> setNonEmpty!38136 (= tp!1580088 setRes!38142)))

(declare-fun setIsEmpty!38142 () Bool)

(assert (=> setIsEmpty!38142 setRes!38142))

(declare-fun e!3504704 () Bool)

(declare-fun setElem!38142 () Context!10148)

(declare-fun tp!1580151 () Bool)

(declare-fun setNonEmpty!38142 () Bool)

(assert (=> setNonEmpty!38142 (= setRes!38142 (and tp!1580151 (inv!82473 setElem!38142) e!3504704))))

(declare-fun setRest!38142 () (Set Context!10148))

(assert (=> setNonEmpty!38142 (= setRest!38136 (set.union (set.insert setElem!38142 (as set.empty (Set Context!10148))) setRest!38142))))

(declare-fun b!5696665 () Bool)

(declare-fun tp!1580152 () Bool)

(assert (=> b!5696665 (= e!3504704 tp!1580152)))

(assert (= (and setNonEmpty!38136 condSetEmpty!38142) setIsEmpty!38142))

(assert (= (and setNonEmpty!38136 (not condSetEmpty!38142)) setNonEmpty!38142))

(assert (= setNonEmpty!38142 b!5696665))

(declare-fun m!6652638 () Bool)

(assert (=> setNonEmpty!38142 m!6652638))

(declare-fun b!5696670 () Bool)

(declare-fun e!3504707 () Bool)

(declare-fun tp!1580157 () Bool)

(declare-fun tp!1580158 () Bool)

(assert (=> b!5696670 (= e!3504707 (and tp!1580157 tp!1580158))))

(assert (=> b!5696077 (= tp!1580094 e!3504707)))

(assert (= (and b!5696077 (is-Cons!63245 (exprs!5574 setElem!38136))) b!5696670))

(declare-fun b!5696678 () Bool)

(declare-fun e!3504713 () Bool)

(declare-fun tp!1580163 () Bool)

(assert (=> b!5696678 (= e!3504713 tp!1580163)))

(declare-fun e!3504712 () Bool)

(declare-fun b!5696677 () Bool)

(declare-fun tp!1580164 () Bool)

(assert (=> b!5696677 (= e!3504712 (and (inv!82473 (h!69694 (t!376688 zl!343))) e!3504713 tp!1580164))))

(assert (=> b!5696071 (= tp!1580087 e!3504712)))

(assert (= b!5696677 b!5696678))

(assert (= (and b!5696071 (is-Cons!63246 (t!376688 zl!343))) b!5696677))

(declare-fun m!6652640 () Bool)

(assert (=> b!5696677 m!6652640))

(declare-fun b!5696683 () Bool)

(declare-fun e!3504716 () Bool)

(declare-fun tp!1580167 () Bool)

(assert (=> b!5696683 (= e!3504716 (and tp_is_empty!40633 tp!1580167))))

(assert (=> b!5696060 (= tp!1580093 e!3504716)))

(assert (= (and b!5696060 (is-Cons!63247 (t!376689 s!2326))) b!5696683))

(declare-fun b!5696686 () Bool)

(declare-fun e!3504717 () Bool)

(declare-fun tp!1580170 () Bool)

(assert (=> b!5696686 (= e!3504717 tp!1580170)))

(declare-fun b!5696685 () Bool)

(declare-fun tp!1580171 () Bool)

(declare-fun tp!1580168 () Bool)

(assert (=> b!5696685 (= e!3504717 (and tp!1580171 tp!1580168))))

(declare-fun b!5696687 () Bool)

(declare-fun tp!1580169 () Bool)

(declare-fun tp!1580172 () Bool)

(assert (=> b!5696687 (= e!3504717 (and tp!1580169 tp!1580172))))

(assert (=> b!5696076 (= tp!1580091 e!3504717)))

(declare-fun b!5696684 () Bool)

(assert (=> b!5696684 (= e!3504717 tp_is_empty!40633)))

(assert (= (and b!5696076 (is-ElementMatch!15690 (reg!16019 r!7292))) b!5696684))

(assert (= (and b!5696076 (is-Concat!24535 (reg!16019 r!7292))) b!5696685))

(assert (= (and b!5696076 (is-Star!15690 (reg!16019 r!7292))) b!5696686))

(assert (= (and b!5696076 (is-Union!15690 (reg!16019 r!7292))) b!5696687))

(declare-fun b!5696690 () Bool)

(declare-fun e!3504718 () Bool)

(declare-fun tp!1580175 () Bool)

(assert (=> b!5696690 (= e!3504718 tp!1580175)))

(declare-fun b!5696689 () Bool)

(declare-fun tp!1580176 () Bool)

(declare-fun tp!1580173 () Bool)

(assert (=> b!5696689 (= e!3504718 (and tp!1580176 tp!1580173))))

(declare-fun b!5696691 () Bool)

(declare-fun tp!1580174 () Bool)

(declare-fun tp!1580177 () Bool)

(assert (=> b!5696691 (= e!3504718 (and tp!1580174 tp!1580177))))

(assert (=> b!5696059 (= tp!1580090 e!3504718)))

(declare-fun b!5696688 () Bool)

(assert (=> b!5696688 (= e!3504718 tp_is_empty!40633)))

(assert (= (and b!5696059 (is-ElementMatch!15690 (regOne!31893 r!7292))) b!5696688))

(assert (= (and b!5696059 (is-Concat!24535 (regOne!31893 r!7292))) b!5696689))

(assert (= (and b!5696059 (is-Star!15690 (regOne!31893 r!7292))) b!5696690))

(assert (= (and b!5696059 (is-Union!15690 (regOne!31893 r!7292))) b!5696691))

(declare-fun b!5696694 () Bool)

(declare-fun e!3504719 () Bool)

(declare-fun tp!1580180 () Bool)

(assert (=> b!5696694 (= e!3504719 tp!1580180)))

(declare-fun b!5696693 () Bool)

(declare-fun tp!1580181 () Bool)

(declare-fun tp!1580178 () Bool)

(assert (=> b!5696693 (= e!3504719 (and tp!1580181 tp!1580178))))

(declare-fun b!5696695 () Bool)

(declare-fun tp!1580179 () Bool)

(declare-fun tp!1580182 () Bool)

(assert (=> b!5696695 (= e!3504719 (and tp!1580179 tp!1580182))))

(assert (=> b!5696059 (= tp!1580092 e!3504719)))

(declare-fun b!5696692 () Bool)

(assert (=> b!5696692 (= e!3504719 tp_is_empty!40633)))

(assert (= (and b!5696059 (is-ElementMatch!15690 (regTwo!31893 r!7292))) b!5696692))

(assert (= (and b!5696059 (is-Concat!24535 (regTwo!31893 r!7292))) b!5696693))

(assert (= (and b!5696059 (is-Star!15690 (regTwo!31893 r!7292))) b!5696694))

(assert (= (and b!5696059 (is-Union!15690 (regTwo!31893 r!7292))) b!5696695))

(declare-fun b!5696696 () Bool)

(declare-fun e!3504720 () Bool)

(declare-fun tp!1580183 () Bool)

(declare-fun tp!1580184 () Bool)

(assert (=> b!5696696 (= e!3504720 (and tp!1580183 tp!1580184))))

(assert (=> b!5696093 (= tp!1580089 e!3504720)))

(assert (= (and b!5696093 (is-Cons!63245 (exprs!5574 (h!69694 zl!343)))) b!5696696))

(declare-fun b_lambda!215327 () Bool)

(assert (= b_lambda!215319 (or b!5696083 b_lambda!215327)))

(declare-fun bs!1327863 () Bool)

(declare-fun d!1797529 () Bool)

(assert (= bs!1327863 (and d!1797529 b!5696083)))

(assert (=> bs!1327863 (= (dynLambda!24747 lambda!307028 (h!69694 zl!343)) (derivationStepZipperUp!958 (h!69694 zl!343) (h!69695 s!2326)))))

(assert (=> bs!1327863 m!6652084))

(assert (=> d!1797425 d!1797529))

(declare-fun b_lambda!215329 () Bool)

(assert (= b_lambda!215323 (or b!5696083 b_lambda!215329)))

(declare-fun bs!1327864 () Bool)

(declare-fun d!1797531 () Bool)

(assert (= bs!1327864 (and d!1797531 b!5696083)))

(assert (=> bs!1327864 (= (dynLambda!24747 lambda!307028 lt!2272547) (derivationStepZipperUp!958 lt!2272547 (h!69695 s!2326)))))

(assert (=> bs!1327864 m!6652120))

(assert (=> d!1797445 d!1797531))

(declare-fun b_lambda!215331 () Bool)

(assert (= b_lambda!215325 (or b!5696083 b_lambda!215331)))

(declare-fun bs!1327865 () Bool)

(declare-fun d!1797533 () Bool)

(assert (= bs!1327865 (and d!1797533 b!5696083)))

(assert (=> bs!1327865 (= (dynLambda!24747 lambda!307028 lt!2272529) (derivationStepZipperUp!958 lt!2272529 (h!69695 s!2326)))))

(assert (=> bs!1327865 m!6652150))

(assert (=> d!1797491 d!1797533))

(declare-fun b_lambda!215333 () Bool)

(assert (= b_lambda!215321 (or b!5696083 b_lambda!215333)))

(declare-fun bs!1327866 () Bool)

(declare-fun d!1797535 () Bool)

(assert (= bs!1327866 (and d!1797535 b!5696083)))

(assert (=> bs!1327866 (= (dynLambda!24747 lambda!307028 lt!2272524) (derivationStepZipperUp!958 lt!2272524 (h!69695 s!2326)))))

(assert (=> bs!1327866 m!6652128))

(assert (=> d!1797439 d!1797535))

(push 1)

(assert (not b!5696280))

(assert (not b!5696693))

(assert (not d!1797445))

(assert (not bm!433555))

(assert (not d!1797439))

(assert (not b!5696532))

(assert (not b!5696539))

(assert (not bm!433572))

(assert (not d!1797419))

(assert (not bm!433540))

(assert (not b!5696281))

(assert (not b!5696424))

(assert (not b!5696439))

(assert (not b!5696454))

(assert (not d!1797413))

(assert (not d!1797409))

(assert (not bm!433568))

(assert (not b!5696537))

(assert (not bm!433566))

(assert (not d!1797415))

(assert (not b!5696305))

(assert (not b!5696678))

(assert (not bm!433567))

(assert (not b!5696460))

(assert (not b!5696266))

(assert (not d!1797467))

(assert (not d!1797417))

(assert (not b!5696598))

(assert (not d!1797497))

(assert (not b!5696430))

(assert (not bs!1327866))

(assert (not b!5696452))

(assert (not d!1797449))

(assert (not b!5696453))

(assert (not b!5696444))

(assert (not b!5696446))

(assert (not b!5696463))

(assert (not b!5696382))

(assert (not d!1797491))

(assert (not b!5696569))

(assert (not b!5696588))

(assert (not d!1797461))

(assert (not b!5696285))

(assert (not b!5696610))

(assert (not b!5696375))

(assert (not b!5696337))

(assert (not bm!433554))

(assert (not b!5696619))

(assert (not d!1797463))

(assert (not bm!433549))

(assert (not b!5696355))

(assert (not b!5696273))

(assert (not bm!433543))

(assert (not b!5696288))

(assert (not bm!433570))

(assert (not b!5696691))

(assert (not d!1797487))

(assert (not b!5696287))

(assert (not b!5696353))

(assert (not b!5696660))

(assert (not b!5696449))

(assert (not d!1797411))

(assert (not b!5696655))

(assert (not b!5696686))

(assert (not b!5696695))

(assert (not d!1797501))

(assert (not b!5696596))

(assert (not b!5696620))

(assert (not bm!433562))

(assert (not b!5696665))

(assert (not b!5696275))

(assert (not b!5696677))

(assert (not b!5696376))

(assert (not b!5696641))

(assert (not d!1797509))

(assert (not b_lambda!215333))

(assert (not bm!433522))

(assert (not b!5696696))

(assert (not b!5696300))

(assert tp_is_empty!40633)

(assert (not b!5696690))

(assert (not b!5696640))

(assert (not b_lambda!215329))

(assert (not b!5696659))

(assert (not d!1797517))

(assert (not bm!433523))

(assert (not bs!1327865))

(assert (not d!1797459))

(assert (not d!1797485))

(assert (not b!5696507))

(assert (not b!5696656))

(assert (not b!5696379))

(assert (not d!1797477))

(assert (not b!5696345))

(assert (not b!5696639))

(assert (not d!1797493))

(assert (not b!5696689))

(assert (not b!5696348))

(assert (not b!5696577))

(assert (not bm!433539))

(assert (not b!5696625))

(assert (not b!5696622))

(assert (not bm!433565))

(assert (not d!1797507))

(assert (not b!5696508))

(assert (not b!5696592))

(assert (not b!5696658))

(assert (not b!5696564))

(assert (not b!5696670))

(assert (not d!1797471))

(assert (not d!1797525))

(assert (not b_lambda!215331))

(assert (not b!5696274))

(assert (not d!1797453))

(assert (not b!5696432))

(assert (not bs!1327863))

(assert (not b!5696435))

(assert (not b!5696377))

(assert (not d!1797421))

(assert (not b!5696636))

(assert (not b!5696350))

(assert (not bm!433547))

(assert (not b!5696685))

(assert (not b!5696270))

(assert (not b!5696286))

(assert (not b!5696426))

(assert (not d!1797515))

(assert (not d!1797465))

(assert (not b!5696626))

(assert (not b!5696618))

(assert (not b!5696343))

(assert (not b!5696383))

(assert (not d!1797523))

(assert (not bs!1327864))

(assert (not b!5696687))

(assert (not b!5696571))

(assert (not b!5696637))

(assert (not b!5696642))

(assert (not d!1797495))

(assert (not d!1797425))

(assert (not b!5696567))

(assert (not b!5696267))

(assert (not b!5696425))

(assert (not bm!433564))

(assert (not d!1797451))

(assert (not bm!433537))

(assert (not b!5696458))

(assert (not d!1797521))

(assert (not d!1797423))

(assert (not d!1797429))

(assert (not bm!433542))

(assert (not b!5696269))

(assert (not b!5696591))

(assert (not bm!433573))

(assert (not d!1797527))

(assert (not d!1797481))

(assert (not d!1797503))

(assert (not setNonEmpty!38142))

(assert (not d!1797457))

(assert (not bm!433544))

(assert (not b!5696568))

(assert (not d!1797519))

(assert (not d!1797511))

(assert (not b_lambda!215327))

(assert (not b!5696694))

(assert (not b!5696617))

(assert (not bm!433548))

(assert (not b!5696601))

(assert (not d!1797455))

(assert (not b!5696589))

(assert (not b!5696307))

(assert (not d!1797443))

(assert (not b!5696440))

(assert (not d!1797447))

(assert (not b!5696563))

(assert (not b!5696590))

(assert (not b!5696284))

(assert (not b!5696438))

(assert (not b!5696683))

(assert (not d!1797475))

(assert (not b!5696654))

(assert (not b!5696302))

(assert (not b!5696572))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

