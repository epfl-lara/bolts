; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573558 () Bool)

(assert start!573558)

(declare-fun b!5484549 () Bool)

(assert (=> b!5484549 true))

(assert (=> b!5484549 true))

(declare-fun lambda!293135 () Int)

(declare-fun lambda!293134 () Int)

(assert (=> b!5484549 (not (= lambda!293135 lambda!293134))))

(assert (=> b!5484549 true))

(assert (=> b!5484549 true))

(declare-fun lambda!293136 () Int)

(assert (=> b!5484549 (not (= lambda!293136 lambda!293134))))

(assert (=> b!5484549 (not (= lambda!293136 lambda!293135))))

(assert (=> b!5484549 true))

(assert (=> b!5484549 true))

(declare-fun b!5484561 () Bool)

(assert (=> b!5484561 true))

(declare-fun b!5484565 () Bool)

(assert (=> b!5484565 true))

(declare-fun b!5484540 () Bool)

(declare-fun e!3394034 () Bool)

(declare-fun tp!1506927 () Bool)

(declare-fun tp!1506922 () Bool)

(assert (=> b!5484540 (= e!3394034 (and tp!1506927 tp!1506922))))

(declare-fun b!5484541 () Bool)

(declare-fun res!2338674 () Bool)

(declare-fun e!3394033 () Bool)

(assert (=> b!5484541 (=> res!2338674 e!3394033)))

(declare-datatypes ((C!31032 0))(
  ( (C!31033 (val!25218 Int)) )
))
(declare-datatypes ((Regex!15381 0))(
  ( (ElementMatch!15381 (c!958293 C!31032)) (Concat!24226 (regOne!31274 Regex!15381) (regTwo!31274 Regex!15381)) (EmptyExpr!15381) (Star!15381 (reg!15710 Regex!15381)) (EmptyLang!15381) (Union!15381 (regOne!31275 Regex!15381) (regTwo!31275 Regex!15381)) )
))
(declare-fun r!7292 () Regex!15381)

(declare-datatypes ((List!62442 0))(
  ( (Nil!62318) (Cons!62318 (h!68766 Regex!15381) (t!375673 List!62442)) )
))
(declare-datatypes ((Context!9530 0))(
  ( (Context!9531 (exprs!5265 List!62442)) )
))
(declare-datatypes ((List!62443 0))(
  ( (Nil!62319) (Cons!62319 (h!68767 Context!9530) (t!375674 List!62443)) )
))
(declare-fun zl!343 () List!62443)

(declare-fun generalisedConcat!1050 (List!62442) Regex!15381)

(assert (=> b!5484541 (= res!2338674 (not (= r!7292 (generalisedConcat!1050 (exprs!5265 (h!68767 zl!343))))))))

(declare-fun b!5484542 () Bool)

(declare-fun tp!1506918 () Bool)

(declare-fun tp!1506920 () Bool)

(assert (=> b!5484542 (= e!3394034 (and tp!1506918 tp!1506920))))

(declare-fun b!5484543 () Bool)

(declare-fun res!2338688 () Bool)

(assert (=> b!5484543 (=> res!2338688 e!3394033)))

(declare-fun generalisedUnion!1310 (List!62442) Regex!15381)

(declare-fun unfocusZipperList!823 (List!62443) List!62442)

(assert (=> b!5484543 (= res!2338688 (not (= r!7292 (generalisedUnion!1310 (unfocusZipperList!823 zl!343)))))))

(declare-fun b!5484544 () Bool)

(declare-fun res!2338682 () Bool)

(declare-fun e!3394020 () Bool)

(assert (=> b!5484544 (=> res!2338682 e!3394020)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2240396 () (InoxSet Context!9530))

(declare-datatypes ((List!62444 0))(
  ( (Nil!62320) (Cons!62320 (h!68768 C!31032) (t!375675 List!62444)) )
))
(declare-datatypes ((tuple2!65156 0))(
  ( (tuple2!65157 (_1!35881 List!62444) (_2!35881 List!62444)) )
))
(declare-fun lt!2240422 () tuple2!65156)

(declare-fun matchZipper!1599 ((InoxSet Context!9530) List!62444) Bool)

(assert (=> b!5484544 (= res!2338682 (not (matchZipper!1599 lt!2240396 (_2!35881 lt!2240422))))))

(declare-fun b!5484545 () Bool)

(declare-fun res!2338695 () Bool)

(declare-fun e!3394021 () Bool)

(assert (=> b!5484545 (=> res!2338695 e!3394021)))

(declare-fun lt!2240393 () Regex!15381)

(assert (=> b!5484545 (= res!2338695 (or (not (= lt!2240393 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5484546 () Bool)

(declare-fun e!3394023 () Bool)

(declare-fun e!3394022 () Bool)

(assert (=> b!5484546 (= e!3394023 e!3394022)))

(declare-fun res!2338683 () Bool)

(assert (=> b!5484546 (=> res!2338683 e!3394022)))

(declare-fun lt!2240411 () Bool)

(assert (=> b!5484546 (= res!2338683 lt!2240411)))

(declare-fun lt!2240423 () Regex!15381)

(declare-fun s!2326 () List!62444)

(declare-fun matchRSpec!2484 (Regex!15381 List!62444) Bool)

(assert (=> b!5484546 (= lt!2240411 (matchRSpec!2484 lt!2240423 s!2326))))

(declare-fun matchR!7566 (Regex!15381 List!62444) Bool)

(assert (=> b!5484546 (= lt!2240411 (matchR!7566 lt!2240423 s!2326))))

(declare-datatypes ((Unit!155212 0))(
  ( (Unit!155213) )
))
(declare-fun lt!2240421 () Unit!155212)

(declare-fun mainMatchTheorem!2484 (Regex!15381 List!62444) Unit!155212)

(assert (=> b!5484546 (= lt!2240421 (mainMatchTheorem!2484 lt!2240423 s!2326))))

(declare-fun b!5484547 () Bool)

(declare-fun e!3394017 () Bool)

(assert (=> b!5484547 (= e!3394021 e!3394017)))

(declare-fun res!2338685 () Bool)

(assert (=> b!5484547 (=> res!2338685 e!3394017)))

(declare-fun lt!2240419 () Context!9530)

(declare-fun unfocusZipper!1123 (List!62443) Regex!15381)

(assert (=> b!5484547 (= res!2338685 (not (= (unfocusZipper!1123 (Cons!62319 lt!2240419 Nil!62319)) lt!2240423)))))

(assert (=> b!5484547 (= lt!2240423 (Concat!24226 (reg!15710 r!7292) r!7292))))

(declare-fun b!5484548 () Bool)

(declare-fun res!2338687 () Bool)

(assert (=> b!5484548 (=> res!2338687 e!3394033)))

(get-info :version)

(assert (=> b!5484548 (= res!2338687 (not ((_ is Cons!62318) (exprs!5265 (h!68767 zl!343)))))))

(declare-fun b!5484550 () Bool)

(declare-fun e!3394018 () Bool)

(declare-fun tp!1506923 () Bool)

(assert (=> b!5484550 (= e!3394018 tp!1506923)))

(declare-fun b!5484551 () Bool)

(declare-fun tp!1506926 () Bool)

(declare-fun e!3394027 () Bool)

(declare-fun inv!81699 (Context!9530) Bool)

(assert (=> b!5484551 (= e!3394027 (and (inv!81699 (h!68767 zl!343)) e!3394018 tp!1506926))))

(declare-fun b!5484552 () Bool)

(declare-fun res!2338690 () Bool)

(assert (=> b!5484552 (=> res!2338690 e!3394033)))

(declare-fun isEmpty!34262 (List!62443) Bool)

(assert (=> b!5484552 (= res!2338690 (not (isEmpty!34262 (t!375674 zl!343))))))

(declare-fun b!5484553 () Bool)

(declare-fun res!2338676 () Bool)

(assert (=> b!5484553 (=> res!2338676 e!3394022)))

(declare-fun z!1189 () (InoxSet Context!9530))

(assert (=> b!5484553 (= res!2338676 (not (matchZipper!1599 z!1189 s!2326)))))

(declare-fun b!5484554 () Bool)

(declare-fun e!3394019 () Bool)

(assert (=> b!5484554 (= e!3394019 e!3394023)))

(declare-fun res!2338698 () Bool)

(assert (=> b!5484554 (=> res!2338698 e!3394023)))

(declare-fun lt!2240410 () List!62443)

(assert (=> b!5484554 (= res!2338698 (not (= (unfocusZipper!1123 lt!2240410) r!7292)))))

(declare-fun lt!2240416 () Context!9530)

(assert (=> b!5484554 (= lt!2240410 (Cons!62319 lt!2240416 Nil!62319))))

(declare-fun b!5484555 () Bool)

(declare-fun res!2338697 () Bool)

(assert (=> b!5484555 (=> res!2338697 e!3394021)))

(declare-fun lt!2240424 () (InoxSet Context!9530))

(declare-fun derivationStepZipper!1576 ((InoxSet Context!9530) C!31032) (InoxSet Context!9530))

(assert (=> b!5484555 (= res!2338697 (not (= (matchZipper!1599 lt!2240424 s!2326) (matchZipper!1599 (derivationStepZipper!1576 lt!2240424 (h!68768 s!2326)) (t!375675 s!2326)))))))

(declare-fun b!5484556 () Bool)

(declare-fun e!3394032 () Bool)

(declare-fun lt!2240414 () Bool)

(assert (=> b!5484556 (= e!3394032 lt!2240414)))

(declare-fun b!5484557 () Bool)

(declare-fun e!3394026 () Bool)

(assert (=> b!5484557 (= e!3394017 e!3394026)))

(declare-fun res!2338691 () Bool)

(assert (=> b!5484557 (=> res!2338691 e!3394026)))

(declare-fun lt!2240400 () (InoxSet Context!9530))

(assert (=> b!5484557 (= res!2338691 (not (= lt!2240400 (derivationStepZipper!1576 lt!2240396 (h!68768 s!2326)))))))

(declare-fun lambda!293137 () Int)

(declare-fun flatMap!1084 ((InoxSet Context!9530) Int) (InoxSet Context!9530))

(declare-fun derivationStepZipperUp!733 (Context!9530 C!31032) (InoxSet Context!9530))

(assert (=> b!5484557 (= (flatMap!1084 lt!2240396 lambda!293137) (derivationStepZipperUp!733 lt!2240416 (h!68768 s!2326)))))

(declare-fun lt!2240394 () Unit!155212)

(declare-fun lemmaFlatMapOnSingletonSet!616 ((InoxSet Context!9530) Context!9530 Int) Unit!155212)

(assert (=> b!5484557 (= lt!2240394 (lemmaFlatMapOnSingletonSet!616 lt!2240396 lt!2240416 lambda!293137))))

(declare-fun lt!2240404 () (InoxSet Context!9530))

(declare-fun lt!2240389 () Context!9530)

(assert (=> b!5484557 (= (flatMap!1084 lt!2240404 lambda!293137) (derivationStepZipperUp!733 lt!2240389 (h!68768 s!2326)))))

(declare-fun lt!2240417 () Unit!155212)

(assert (=> b!5484557 (= lt!2240417 (lemmaFlatMapOnSingletonSet!616 lt!2240404 lt!2240389 lambda!293137))))

(declare-fun lt!2240407 () (InoxSet Context!9530))

(assert (=> b!5484557 (= lt!2240407 (derivationStepZipperUp!733 lt!2240416 (h!68768 s!2326)))))

(declare-fun lt!2240409 () (InoxSet Context!9530))

(assert (=> b!5484557 (= lt!2240409 (derivationStepZipperUp!733 lt!2240389 (h!68768 s!2326)))))

(assert (=> b!5484557 (= lt!2240396 (store ((as const (Array Context!9530 Bool)) false) lt!2240416 true))))

(assert (=> b!5484557 (= lt!2240404 (store ((as const (Array Context!9530 Bool)) false) lt!2240389 true))))

(declare-fun lt!2240398 () List!62442)

(assert (=> b!5484557 (= lt!2240389 (Context!9531 lt!2240398))))

(assert (=> b!5484557 (= lt!2240398 (Cons!62318 (reg!15710 r!7292) Nil!62318))))

(declare-fun b!5484558 () Bool)

(declare-fun res!2338692 () Bool)

(assert (=> b!5484558 (=> res!2338692 e!3394033)))

(assert (=> b!5484558 (= res!2338692 (or ((_ is EmptyExpr!15381) r!7292) ((_ is EmptyLang!15381) r!7292) ((_ is ElementMatch!15381) r!7292) ((_ is Union!15381) r!7292) ((_ is Concat!24226) r!7292)))))

(declare-fun b!5484559 () Bool)

(declare-fun e!3394029 () Bool)

(assert (=> b!5484559 (= e!3394029 e!3394020)))

(declare-fun res!2338686 () Bool)

(assert (=> b!5484559 (=> res!2338686 e!3394020)))

(declare-fun lt!2240385 () List!62444)

(assert (=> b!5484559 (= res!2338686 (not (= s!2326 lt!2240385)))))

(declare-fun ++!13735 (List!62444 List!62444) List!62444)

(assert (=> b!5484559 (= lt!2240385 (++!13735 (_1!35881 lt!2240422) (_2!35881 lt!2240422)))))

(declare-datatypes ((Option!15490 0))(
  ( (None!15489) (Some!15489 (v!51518 tuple2!65156)) )
))
(declare-fun lt!2240405 () Option!15490)

(declare-fun get!21496 (Option!15490) tuple2!65156)

(assert (=> b!5484559 (= lt!2240422 (get!21496 lt!2240405))))

(declare-fun isDefined!12193 (Option!15490) Bool)

(assert (=> b!5484559 (isDefined!12193 lt!2240405)))

(declare-fun findConcatSeparationZippers!108 ((InoxSet Context!9530) (InoxSet Context!9530) List!62444 List!62444 List!62444) Option!15490)

(assert (=> b!5484559 (= lt!2240405 (findConcatSeparationZippers!108 lt!2240404 lt!2240396 Nil!62320 s!2326 s!2326))))

(declare-fun lt!2240399 () Unit!155212)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!108 ((InoxSet Context!9530) Context!9530 List!62444) Unit!155212)

(assert (=> b!5484559 (= lt!2240399 (lemmaConcatZipperMatchesStringThenFindConcatDefined!108 lt!2240404 lt!2240416 s!2326))))

(declare-fun b!5484560 () Bool)

(declare-fun tp_is_empty!40015 () Bool)

(assert (=> b!5484560 (= e!3394034 tp_is_empty!40015)))

(declare-fun e!3394031 () Bool)

(declare-fun e!3394025 () Bool)

(assert (=> b!5484561 (= e!3394031 e!3394025)))

(declare-fun res!2338696 () Bool)

(assert (=> b!5484561 (=> res!2338696 e!3394025)))

(declare-fun lt!2240391 () (InoxSet Context!9530))

(assert (=> b!5484561 (= res!2338696 (not (= lt!2240400 lt!2240391)))))

(assert (=> b!5484561 (= (flatMap!1084 z!1189 lambda!293137) (derivationStepZipperUp!733 (h!68767 zl!343) (h!68768 s!2326)))))

(declare-fun lt!2240425 () Unit!155212)

(assert (=> b!5484561 (= lt!2240425 (lemmaFlatMapOnSingletonSet!616 z!1189 (h!68767 zl!343) lambda!293137))))

(declare-fun b!5484562 () Bool)

(declare-fun res!2338679 () Bool)

(declare-fun e!3394024 () Bool)

(assert (=> b!5484562 (=> res!2338679 e!3394024)))

(assert (=> b!5484562 (= res!2338679 ((_ is Nil!62320) s!2326))))

(declare-fun b!5484563 () Bool)

(declare-fun validRegex!7117 (Regex!15381) Bool)

(assert (=> b!5484563 (= e!3394020 (validRegex!7117 lt!2240423))))

(assert (=> b!5484563 (matchR!7566 lt!2240423 lt!2240385)))

(declare-fun lt!2240397 () Unit!155212)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!260 (Regex!15381 Regex!15381 List!62444 List!62444) Unit!155212)

(assert (=> b!5484563 (= lt!2240397 (lemmaTwoRegexMatchThenConcatMatchesConcatString!260 (reg!15710 r!7292) r!7292 (_1!35881 lt!2240422) (_2!35881 lt!2240422)))))

(assert (=> b!5484563 (matchR!7566 r!7292 (_2!35881 lt!2240422))))

(declare-fun lt!2240408 () Unit!155212)

(declare-fun theoremZipperRegexEquiv!589 ((InoxSet Context!9530) List!62443 Regex!15381 List!62444) Unit!155212)

(assert (=> b!5484563 (= lt!2240408 (theoremZipperRegexEquiv!589 lt!2240396 lt!2240410 r!7292 (_2!35881 lt!2240422)))))

(assert (=> b!5484563 (matchR!7566 (reg!15710 r!7292) (_1!35881 lt!2240422))))

(declare-fun lt!2240413 () Unit!155212)

(declare-fun lt!2240401 () List!62443)

(assert (=> b!5484563 (= lt!2240413 (theoremZipperRegexEquiv!589 lt!2240404 lt!2240401 (reg!15710 r!7292) (_1!35881 lt!2240422)))))

(declare-fun lt!2240392 () List!62442)

(declare-fun ++!13736 (List!62442 List!62442) List!62442)

(assert (=> b!5484563 (matchZipper!1599 (store ((as const (Array Context!9530 Bool)) false) (Context!9531 (++!13736 lt!2240398 lt!2240392)) true) lt!2240385)))

(declare-fun lambda!293139 () Int)

(declare-fun lt!2240402 () Unit!155212)

(declare-fun lemmaConcatPreservesForall!282 (List!62442 List!62442 Int) Unit!155212)

(assert (=> b!5484563 (= lt!2240402 (lemmaConcatPreservesForall!282 lt!2240398 lt!2240392 lambda!293139))))

(declare-fun lt!2240420 () Unit!155212)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!122 (Context!9530 Context!9530 List!62444 List!62444) Unit!155212)

(assert (=> b!5484563 (= lt!2240420 (lemmaConcatenateContextMatchesConcatOfStrings!122 lt!2240389 lt!2240416 (_1!35881 lt!2240422) (_2!35881 lt!2240422)))))

(declare-fun b!5484564 () Bool)

(declare-fun e!3394036 () Bool)

(declare-fun tp!1506921 () Bool)

(assert (=> b!5484564 (= e!3394036 (and tp_is_empty!40015 tp!1506921))))

(assert (=> b!5484565 (= e!3394022 e!3394029)))

(declare-fun res!2338694 () Bool)

(assert (=> b!5484565 (=> res!2338694 e!3394029)))

(declare-fun appendTo!100 ((InoxSet Context!9530) Context!9530) (InoxSet Context!9530))

(assert (=> b!5484565 (= res!2338694 (not (= (appendTo!100 lt!2240404 lt!2240416) lt!2240424)))))

(declare-fun lambda!293138 () Int)

(declare-fun map!14328 ((InoxSet Context!9530) Int) (InoxSet Context!9530))

(assert (=> b!5484565 (= (map!14328 lt!2240404 lambda!293138) (store ((as const (Array Context!9530 Bool)) false) (Context!9531 (++!13736 lt!2240398 lt!2240392)) true))))

(declare-fun lt!2240406 () Unit!155212)

(assert (=> b!5484565 (= lt!2240406 (lemmaConcatPreservesForall!282 lt!2240398 lt!2240392 lambda!293139))))

(declare-fun lt!2240418 () Unit!155212)

(declare-fun lemmaMapOnSingletonSet!112 ((InoxSet Context!9530) Context!9530 Int) Unit!155212)

(assert (=> b!5484565 (= lt!2240418 (lemmaMapOnSingletonSet!112 lt!2240404 lt!2240389 lambda!293138))))

(declare-fun b!5484566 () Bool)

(declare-fun tp!1506925 () Bool)

(assert (=> b!5484566 (= e!3394034 tp!1506925)))

(declare-fun b!5484567 () Bool)

(declare-fun e!3394030 () Bool)

(assert (=> b!5484567 (= e!3394030 (not e!3394033))))

(declare-fun res!2338678 () Bool)

(assert (=> b!5484567 (=> res!2338678 e!3394033)))

(assert (=> b!5484567 (= res!2338678 (not ((_ is Cons!62319) zl!343)))))

(declare-fun lt!2240415 () Bool)

(assert (=> b!5484567 (= lt!2240415 (matchRSpec!2484 r!7292 s!2326))))

(assert (=> b!5484567 (= lt!2240415 (matchR!7566 r!7292 s!2326))))

(declare-fun lt!2240388 () Unit!155212)

(assert (=> b!5484567 (= lt!2240388 (mainMatchTheorem!2484 r!7292 s!2326))))

(declare-fun b!5484568 () Bool)

(declare-fun e!3394035 () Bool)

(declare-fun tp!1506919 () Bool)

(assert (=> b!5484568 (= e!3394035 tp!1506919)))

(declare-fun b!5484569 () Bool)

(declare-fun res!2338680 () Bool)

(declare-fun e!3394028 () Bool)

(assert (=> b!5484569 (=> (not res!2338680) (not e!3394028))))

(declare-fun toList!9165 ((InoxSet Context!9530)) List!62443)

(assert (=> b!5484569 (= res!2338680 (= (toList!9165 z!1189) zl!343))))

(declare-fun b!5484570 () Bool)

(assert (=> b!5484570 (= e!3394025 e!3394021)))

(declare-fun res!2338699 () Bool)

(assert (=> b!5484570 (=> res!2338699 e!3394021)))

(declare-fun derivationStepZipperDown!807 (Regex!15381 Context!9530 C!31032) (InoxSet Context!9530))

(assert (=> b!5484570 (= res!2338699 (not (= lt!2240400 (derivationStepZipperDown!807 (reg!15710 r!7292) lt!2240416 (h!68768 s!2326)))))))

(assert (=> b!5484570 (= lt!2240416 (Context!9531 lt!2240392))))

(assert (=> b!5484570 (= (flatMap!1084 lt!2240424 lambda!293137) (derivationStepZipperUp!733 lt!2240419 (h!68768 s!2326)))))

(declare-fun lt!2240386 () Unit!155212)

(assert (=> b!5484570 (= lt!2240386 (lemmaFlatMapOnSingletonSet!616 lt!2240424 lt!2240419 lambda!293137))))

(declare-fun lt!2240412 () (InoxSet Context!9530))

(assert (=> b!5484570 (= lt!2240412 (derivationStepZipperUp!733 lt!2240419 (h!68768 s!2326)))))

(assert (=> b!5484570 (= lt!2240424 (store ((as const (Array Context!9530 Bool)) false) lt!2240419 true))))

(assert (=> b!5484570 (= lt!2240419 (Context!9531 (Cons!62318 (reg!15710 r!7292) lt!2240392)))))

(assert (=> b!5484570 (= lt!2240392 (Cons!62318 r!7292 Nil!62318))))

(declare-fun res!2338693 () Bool)

(assert (=> start!573558 (=> (not res!2338693) (not e!3394028))))

(assert (=> start!573558 (= res!2338693 (validRegex!7117 r!7292))))

(assert (=> start!573558 e!3394028))

(assert (=> start!573558 e!3394034))

(declare-fun condSetEmpty!36099 () Bool)

(assert (=> start!573558 (= condSetEmpty!36099 (= z!1189 ((as const (Array Context!9530 Bool)) false)))))

(declare-fun setRes!36099 () Bool)

(assert (=> start!573558 setRes!36099))

(assert (=> start!573558 e!3394027))

(assert (=> start!573558 e!3394036))

(assert (=> b!5484549 (= e!3394033 e!3394024)))

(declare-fun res!2338681 () Bool)

(assert (=> b!5484549 (=> res!2338681 e!3394024)))

(assert (=> b!5484549 (= res!2338681 (not (= lt!2240415 e!3394032)))))

(declare-fun res!2338700 () Bool)

(assert (=> b!5484549 (=> res!2338700 e!3394032)))

(declare-fun isEmpty!34263 (List!62444) Bool)

(assert (=> b!5484549 (= res!2338700 (isEmpty!34263 s!2326))))

(declare-fun Exists!2560 (Int) Bool)

(assert (=> b!5484549 (= (Exists!2560 lambda!293134) (Exists!2560 lambda!293136))))

(declare-fun lt!2240390 () Unit!155212)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1210 (Regex!15381 Regex!15381 List!62444) Unit!155212)

(assert (=> b!5484549 (= lt!2240390 (lemmaExistCutMatchRandMatchRSpecEquivalent!1210 (reg!15710 r!7292) r!7292 s!2326))))

(assert (=> b!5484549 (= (Exists!2560 lambda!293134) (Exists!2560 lambda!293135))))

(declare-fun lt!2240395 () Unit!155212)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!534 (Regex!15381 List!62444) Unit!155212)

(assert (=> b!5484549 (= lt!2240395 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!534 (reg!15710 r!7292) s!2326))))

(assert (=> b!5484549 (= lt!2240414 (Exists!2560 lambda!293134))))

(declare-fun findConcatSeparation!1904 (Regex!15381 Regex!15381 List!62444 List!62444 List!62444) Option!15490)

(assert (=> b!5484549 (= lt!2240414 (isDefined!12193 (findConcatSeparation!1904 (reg!15710 r!7292) r!7292 Nil!62320 s!2326 s!2326)))))

(declare-fun lt!2240403 () Unit!155212)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1668 (Regex!15381 Regex!15381 List!62444) Unit!155212)

(assert (=> b!5484549 (= lt!2240403 (lemmaFindConcatSeparationEquivalentToExists!1668 (reg!15710 r!7292) r!7292 s!2326))))

(declare-fun setElem!36099 () Context!9530)

(declare-fun tp!1506924 () Bool)

(declare-fun setNonEmpty!36099 () Bool)

(assert (=> setNonEmpty!36099 (= setRes!36099 (and tp!1506924 (inv!81699 setElem!36099) e!3394035))))

(declare-fun setRest!36099 () (InoxSet Context!9530))

(assert (=> setNonEmpty!36099 (= z!1189 ((_ map or) (store ((as const (Array Context!9530 Bool)) false) setElem!36099 true) setRest!36099))))

(declare-fun setIsEmpty!36099 () Bool)

(assert (=> setIsEmpty!36099 setRes!36099))

(declare-fun b!5484571 () Bool)

(assert (=> b!5484571 (= e!3394028 e!3394030)))

(declare-fun res!2338675 () Bool)

(assert (=> b!5484571 (=> (not res!2338675) (not e!3394030))))

(assert (=> b!5484571 (= res!2338675 (= r!7292 lt!2240393))))

(assert (=> b!5484571 (= lt!2240393 (unfocusZipper!1123 zl!343))))

(declare-fun b!5484572 () Bool)

(declare-fun res!2338689 () Bool)

(assert (=> b!5484572 (=> res!2338689 e!3394020)))

(assert (=> b!5484572 (= res!2338689 (not (matchZipper!1599 lt!2240404 (_1!35881 lt!2240422))))))

(declare-fun b!5484573 () Bool)

(assert (=> b!5484573 (= e!3394024 e!3394031)))

(declare-fun res!2338684 () Bool)

(assert (=> b!5484573 (=> res!2338684 e!3394031)))

(declare-fun lt!2240387 () (InoxSet Context!9530))

(assert (=> b!5484573 (= res!2338684 (not (= lt!2240387 lt!2240391)))))

(assert (=> b!5484573 (= lt!2240391 (derivationStepZipperDown!807 r!7292 (Context!9531 Nil!62318) (h!68768 s!2326)))))

(assert (=> b!5484573 (= lt!2240387 (derivationStepZipperUp!733 (Context!9531 (Cons!62318 r!7292 Nil!62318)) (h!68768 s!2326)))))

(assert (=> b!5484573 (= lt!2240400 (derivationStepZipper!1576 z!1189 (h!68768 s!2326)))))

(declare-fun b!5484574 () Bool)

(assert (=> b!5484574 (= e!3394026 e!3394019)))

(declare-fun res!2338677 () Bool)

(assert (=> b!5484574 (=> res!2338677 e!3394019)))

(assert (=> b!5484574 (= res!2338677 (not (= (unfocusZipper!1123 lt!2240401) (reg!15710 r!7292))))))

(assert (=> b!5484574 (= lt!2240401 (Cons!62319 lt!2240389 Nil!62319))))

(assert (= (and start!573558 res!2338693) b!5484569))

(assert (= (and b!5484569 res!2338680) b!5484571))

(assert (= (and b!5484571 res!2338675) b!5484567))

(assert (= (and b!5484567 (not res!2338678)) b!5484552))

(assert (= (and b!5484552 (not res!2338690)) b!5484541))

(assert (= (and b!5484541 (not res!2338674)) b!5484548))

(assert (= (and b!5484548 (not res!2338687)) b!5484543))

(assert (= (and b!5484543 (not res!2338688)) b!5484558))

(assert (= (and b!5484558 (not res!2338692)) b!5484549))

(assert (= (and b!5484549 (not res!2338700)) b!5484556))

(assert (= (and b!5484549 (not res!2338681)) b!5484562))

(assert (= (and b!5484562 (not res!2338679)) b!5484573))

(assert (= (and b!5484573 (not res!2338684)) b!5484561))

(assert (= (and b!5484561 (not res!2338696)) b!5484570))

(assert (= (and b!5484570 (not res!2338699)) b!5484555))

(assert (= (and b!5484555 (not res!2338697)) b!5484545))

(assert (= (and b!5484545 (not res!2338695)) b!5484547))

(assert (= (and b!5484547 (not res!2338685)) b!5484557))

(assert (= (and b!5484557 (not res!2338691)) b!5484574))

(assert (= (and b!5484574 (not res!2338677)) b!5484554))

(assert (= (and b!5484554 (not res!2338698)) b!5484546))

(assert (= (and b!5484546 (not res!2338683)) b!5484553))

(assert (= (and b!5484553 (not res!2338676)) b!5484565))

(assert (= (and b!5484565 (not res!2338694)) b!5484559))

(assert (= (and b!5484559 (not res!2338686)) b!5484572))

(assert (= (and b!5484572 (not res!2338689)) b!5484544))

(assert (= (and b!5484544 (not res!2338682)) b!5484563))

(assert (= (and start!573558 ((_ is ElementMatch!15381) r!7292)) b!5484560))

(assert (= (and start!573558 ((_ is Concat!24226) r!7292)) b!5484540))

(assert (= (and start!573558 ((_ is Star!15381) r!7292)) b!5484566))

(assert (= (and start!573558 ((_ is Union!15381) r!7292)) b!5484542))

(assert (= (and start!573558 condSetEmpty!36099) setIsEmpty!36099))

(assert (= (and start!573558 (not condSetEmpty!36099)) setNonEmpty!36099))

(assert (= setNonEmpty!36099 b!5484568))

(assert (= b!5484551 b!5484550))

(assert (= (and start!573558 ((_ is Cons!62319) zl!343)) b!5484551))

(assert (= (and start!573558 ((_ is Cons!62320) s!2326)) b!5484564))

(declare-fun m!6500014 () Bool)

(assert (=> b!5484554 m!6500014))

(declare-fun m!6500016 () Bool)

(assert (=> b!5484569 m!6500016))

(declare-fun m!6500018 () Bool)

(assert (=> b!5484563 m!6500018))

(declare-fun m!6500020 () Bool)

(assert (=> b!5484563 m!6500020))

(declare-fun m!6500022 () Bool)

(assert (=> b!5484563 m!6500022))

(declare-fun m!6500024 () Bool)

(assert (=> b!5484563 m!6500024))

(declare-fun m!6500026 () Bool)

(assert (=> b!5484563 m!6500026))

(declare-fun m!6500028 () Bool)

(assert (=> b!5484563 m!6500028))

(declare-fun m!6500030 () Bool)

(assert (=> b!5484563 m!6500030))

(declare-fun m!6500032 () Bool)

(assert (=> b!5484563 m!6500032))

(declare-fun m!6500034 () Bool)

(assert (=> b!5484563 m!6500034))

(declare-fun m!6500036 () Bool)

(assert (=> b!5484563 m!6500036))

(declare-fun m!6500038 () Bool)

(assert (=> b!5484563 m!6500038))

(assert (=> b!5484563 m!6500022))

(declare-fun m!6500040 () Bool)

(assert (=> b!5484563 m!6500040))

(declare-fun m!6500042 () Bool)

(assert (=> b!5484561 m!6500042))

(declare-fun m!6500044 () Bool)

(assert (=> b!5484561 m!6500044))

(declare-fun m!6500046 () Bool)

(assert (=> b!5484561 m!6500046))

(declare-fun m!6500048 () Bool)

(assert (=> b!5484574 m!6500048))

(declare-fun m!6500050 () Bool)

(assert (=> b!5484541 m!6500050))

(declare-fun m!6500052 () Bool)

(assert (=> b!5484544 m!6500052))

(declare-fun m!6500054 () Bool)

(assert (=> b!5484547 m!6500054))

(declare-fun m!6500056 () Bool)

(assert (=> setNonEmpty!36099 m!6500056))

(declare-fun m!6500058 () Bool)

(assert (=> b!5484567 m!6500058))

(declare-fun m!6500060 () Bool)

(assert (=> b!5484567 m!6500060))

(declare-fun m!6500062 () Bool)

(assert (=> b!5484567 m!6500062))

(declare-fun m!6500064 () Bool)

(assert (=> b!5484543 m!6500064))

(assert (=> b!5484543 m!6500064))

(declare-fun m!6500066 () Bool)

(assert (=> b!5484543 m!6500066))

(declare-fun m!6500068 () Bool)

(assert (=> b!5484552 m!6500068))

(declare-fun m!6500070 () Bool)

(assert (=> b!5484559 m!6500070))

(declare-fun m!6500072 () Bool)

(assert (=> b!5484559 m!6500072))

(declare-fun m!6500074 () Bool)

(assert (=> b!5484559 m!6500074))

(declare-fun m!6500076 () Bool)

(assert (=> b!5484559 m!6500076))

(declare-fun m!6500078 () Bool)

(assert (=> b!5484559 m!6500078))

(declare-fun m!6500080 () Bool)

(assert (=> b!5484557 m!6500080))

(declare-fun m!6500082 () Bool)

(assert (=> b!5484557 m!6500082))

(declare-fun m!6500084 () Bool)

(assert (=> b!5484557 m!6500084))

(declare-fun m!6500086 () Bool)

(assert (=> b!5484557 m!6500086))

(declare-fun m!6500088 () Bool)

(assert (=> b!5484557 m!6500088))

(declare-fun m!6500090 () Bool)

(assert (=> b!5484557 m!6500090))

(declare-fun m!6500092 () Bool)

(assert (=> b!5484557 m!6500092))

(declare-fun m!6500094 () Bool)

(assert (=> b!5484557 m!6500094))

(declare-fun m!6500096 () Bool)

(assert (=> b!5484557 m!6500096))

(declare-fun m!6500098 () Bool)

(assert (=> b!5484565 m!6500098))

(assert (=> b!5484565 m!6500018))

(assert (=> b!5484565 m!6500026))

(declare-fun m!6500100 () Bool)

(assert (=> b!5484565 m!6500100))

(assert (=> b!5484565 m!6500022))

(declare-fun m!6500102 () Bool)

(assert (=> b!5484565 m!6500102))

(declare-fun m!6500104 () Bool)

(assert (=> start!573558 m!6500104))

(declare-fun m!6500106 () Bool)

(assert (=> b!5484573 m!6500106))

(declare-fun m!6500108 () Bool)

(assert (=> b!5484573 m!6500108))

(declare-fun m!6500110 () Bool)

(assert (=> b!5484573 m!6500110))

(declare-fun m!6500112 () Bool)

(assert (=> b!5484572 m!6500112))

(declare-fun m!6500114 () Bool)

(assert (=> b!5484570 m!6500114))

(declare-fun m!6500116 () Bool)

(assert (=> b!5484570 m!6500116))

(declare-fun m!6500118 () Bool)

(assert (=> b!5484570 m!6500118))

(declare-fun m!6500120 () Bool)

(assert (=> b!5484570 m!6500120))

(declare-fun m!6500122 () Bool)

(assert (=> b!5484570 m!6500122))

(declare-fun m!6500124 () Bool)

(assert (=> b!5484553 m!6500124))

(declare-fun m!6500126 () Bool)

(assert (=> b!5484555 m!6500126))

(declare-fun m!6500128 () Bool)

(assert (=> b!5484555 m!6500128))

(assert (=> b!5484555 m!6500128))

(declare-fun m!6500130 () Bool)

(assert (=> b!5484555 m!6500130))

(declare-fun m!6500132 () Bool)

(assert (=> b!5484546 m!6500132))

(declare-fun m!6500134 () Bool)

(assert (=> b!5484546 m!6500134))

(declare-fun m!6500136 () Bool)

(assert (=> b!5484546 m!6500136))

(declare-fun m!6500138 () Bool)

(assert (=> b!5484571 m!6500138))

(declare-fun m!6500140 () Bool)

(assert (=> b!5484549 m!6500140))

(declare-fun m!6500142 () Bool)

(assert (=> b!5484549 m!6500142))

(declare-fun m!6500144 () Bool)

(assert (=> b!5484549 m!6500144))

(assert (=> b!5484549 m!6500144))

(declare-fun m!6500146 () Bool)

(assert (=> b!5484549 m!6500146))

(declare-fun m!6500148 () Bool)

(assert (=> b!5484549 m!6500148))

(declare-fun m!6500150 () Bool)

(assert (=> b!5484549 m!6500150))

(assert (=> b!5484549 m!6500140))

(declare-fun m!6500152 () Bool)

(assert (=> b!5484549 m!6500152))

(assert (=> b!5484549 m!6500140))

(declare-fun m!6500154 () Bool)

(assert (=> b!5484549 m!6500154))

(declare-fun m!6500156 () Bool)

(assert (=> b!5484549 m!6500156))

(declare-fun m!6500158 () Bool)

(assert (=> b!5484551 m!6500158))

(check-sat (not b!5484563) (not b!5484566) (not b!5484540) (not b!5484550) (not b!5484543) (not b!5484546) (not b!5484564) (not setNonEmpty!36099) (not b!5484557) (not b!5484554) (not b!5484565) (not b!5484574) (not b!5484572) (not b!5484549) (not b!5484553) (not b!5484559) (not b!5484547) (not b!5484544) (not b!5484542) (not b!5484555) (not b!5484570) (not b!5484571) tp_is_empty!40015 (not b!5484568) (not b!5484567) (not b!5484552) (not b!5484541) (not start!573558) (not b!5484561) (not b!5484551) (not b!5484573) (not b!5484569))
(check-sat)
