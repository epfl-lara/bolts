; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!568114 () Bool)

(assert start!568114)

(declare-fun b!5409555 () Bool)

(assert (=> b!5409555 true))

(assert (=> b!5409555 true))

(declare-fun lambda!282268 () Int)

(declare-fun lambda!282267 () Int)

(assert (=> b!5409555 (not (= lambda!282268 lambda!282267))))

(assert (=> b!5409555 true))

(assert (=> b!5409555 true))

(declare-fun b!5409548 () Bool)

(assert (=> b!5409548 true))

(declare-fun b!5409547 () Bool)

(assert (=> b!5409547 true))

(declare-fun bs!1249534 () Bool)

(declare-fun b!5409536 () Bool)

(assert (= bs!1249534 (and b!5409536 b!5409555)))

(declare-datatypes ((C!30640 0))(
  ( (C!30641 (val!25022 Int)) )
))
(declare-datatypes ((Regex!15185 0))(
  ( (ElementMatch!15185 (c!943121 C!30640)) (Concat!24030 (regOne!30882 Regex!15185) (regTwo!30882 Regex!15185)) (EmptyExpr!15185) (Star!15185 (reg!15514 Regex!15185)) (EmptyLang!15185) (Union!15185 (regOne!30883 Regex!15185) (regTwo!30883 Regex!15185)) )
))
(declare-fun r!7292 () Regex!15185)

(declare-fun lambda!282272 () Int)

(declare-fun lt!2205624 () Regex!15185)

(assert (=> bs!1249534 (= (= lt!2205624 (regOne!30882 r!7292)) (= lambda!282272 lambda!282267))))

(assert (=> bs!1249534 (not (= lambda!282272 lambda!282268))))

(assert (=> b!5409536 true))

(assert (=> b!5409536 true))

(assert (=> b!5409536 true))

(declare-fun lambda!282273 () Int)

(assert (=> bs!1249534 (not (= lambda!282273 lambda!282267))))

(assert (=> bs!1249534 (= (= lt!2205624 (regOne!30882 r!7292)) (= lambda!282273 lambda!282268))))

(assert (=> b!5409536 (not (= lambda!282273 lambda!282272))))

(assert (=> b!5409536 true))

(assert (=> b!5409536 true))

(assert (=> b!5409536 true))

(declare-fun b!5409530 () Bool)

(declare-fun e!3353470 () Bool)

(declare-fun tp_is_empty!39623 () Bool)

(declare-fun tp!1495490 () Bool)

(assert (=> b!5409530 (= e!3353470 (and tp_is_empty!39623 tp!1495490))))

(declare-fun b!5409531 () Bool)

(declare-fun res!2300433 () Bool)

(declare-fun e!3353488 () Bool)

(assert (=> b!5409531 (=> res!2300433 e!3353488)))

(declare-datatypes ((List!61854 0))(
  ( (Nil!61730) (Cons!61730 (h!68178 Regex!15185) (t!375077 List!61854)) )
))
(declare-datatypes ((Context!9138 0))(
  ( (Context!9139 (exprs!5069 List!61854)) )
))
(declare-datatypes ((List!61855 0))(
  ( (Nil!61731) (Cons!61731 (h!68179 Context!9138) (t!375078 List!61855)) )
))
(declare-fun zl!343 () List!61855)

(declare-fun isEmpty!33724 (List!61855) Bool)

(assert (=> b!5409531 (= res!2300433 (not (isEmpty!33724 (t!375078 zl!343))))))

(declare-fun b!5409532 () Bool)

(declare-fun e!3353486 () Bool)

(declare-fun e!3353481 () Bool)

(assert (=> b!5409532 (= e!3353486 e!3353481)))

(declare-fun res!2300426 () Bool)

(assert (=> b!5409532 (=> (not res!2300426) (not e!3353481))))

(declare-fun lt!2205615 () Regex!15185)

(assert (=> b!5409532 (= res!2300426 (= r!7292 lt!2205615))))

(declare-fun unfocusZipper!927 (List!61855) Regex!15185)

(assert (=> b!5409532 (= lt!2205615 (unfocusZipper!927 zl!343))))

(declare-fun b!5409533 () Bool)

(declare-fun e!3353485 () Bool)

(declare-fun e!3353492 () Bool)

(assert (=> b!5409533 (= e!3353485 e!3353492)))

(declare-fun res!2300416 () Bool)

(assert (=> b!5409533 (=> res!2300416 e!3353492)))

(declare-fun lt!2205620 () List!61855)

(assert (=> b!5409533 (= res!2300416 (not (= (unfocusZipper!927 lt!2205620) (reg!15514 (regOne!30882 r!7292)))))))

(declare-fun lt!2205601 () Context!9138)

(assert (=> b!5409533 (= lt!2205620 (Cons!61731 lt!2205601 Nil!61731))))

(declare-datatypes ((List!61856 0))(
  ( (Nil!61732) (Cons!61732 (h!68180 C!30640) (t!375079 List!61856)) )
))
(declare-fun s!2326 () List!61856)

(declare-fun lambda!282269 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2205640 () (InoxSet Context!9138))

(declare-fun lt!2205599 () Context!9138)

(declare-fun flatMap!912 ((InoxSet Context!9138) Int) (InoxSet Context!9138))

(declare-fun derivationStepZipperUp!557 (Context!9138 C!30640) (InoxSet Context!9138))

(assert (=> b!5409533 (= (flatMap!912 lt!2205640 lambda!282269) (derivationStepZipperUp!557 lt!2205599 (h!68180 s!2326)))))

(declare-datatypes ((Unit!154262 0))(
  ( (Unit!154263) )
))
(declare-fun lt!2205613 () Unit!154262)

(declare-fun lemmaFlatMapOnSingletonSet!444 ((InoxSet Context!9138) Context!9138 Int) Unit!154262)

(assert (=> b!5409533 (= lt!2205613 (lemmaFlatMapOnSingletonSet!444 lt!2205640 lt!2205599 lambda!282269))))

(declare-fun lt!2205645 () (InoxSet Context!9138))

(assert (=> b!5409533 (= (flatMap!912 lt!2205645 lambda!282269) (derivationStepZipperUp!557 lt!2205601 (h!68180 s!2326)))))

(declare-fun lt!2205623 () Unit!154262)

(assert (=> b!5409533 (= lt!2205623 (lemmaFlatMapOnSingletonSet!444 lt!2205645 lt!2205601 lambda!282269))))

(declare-fun lt!2205612 () (InoxSet Context!9138))

(assert (=> b!5409533 (= lt!2205612 (derivationStepZipperUp!557 lt!2205599 (h!68180 s!2326)))))

(declare-fun lt!2205634 () (InoxSet Context!9138))

(assert (=> b!5409533 (= lt!2205634 (derivationStepZipperUp!557 lt!2205601 (h!68180 s!2326)))))

(assert (=> b!5409533 (= lt!2205640 (store ((as const (Array Context!9138 Bool)) false) lt!2205599 true))))

(assert (=> b!5409533 (= lt!2205645 (store ((as const (Array Context!9138 Bool)) false) lt!2205601 true))))

(declare-fun lt!2205600 () List!61854)

(assert (=> b!5409533 (= lt!2205601 (Context!9139 lt!2205600))))

(assert (=> b!5409533 (= lt!2205600 (Cons!61730 (reg!15514 (regOne!30882 r!7292)) Nil!61730))))

(declare-fun b!5409534 () Bool)

(declare-fun res!2300407 () Bool)

(declare-fun e!3353477 () Bool)

(assert (=> b!5409534 (=> res!2300407 e!3353477)))

(assert (=> b!5409534 (= res!2300407 (not (= lt!2205615 r!7292)))))

(declare-fun b!5409535 () Bool)

(declare-fun e!3353478 () Bool)

(declare-fun lt!2205590 () Bool)

(assert (=> b!5409535 (= e!3353478 lt!2205590)))

(declare-fun e!3353466 () Bool)

(declare-fun e!3353467 () Bool)

(assert (=> b!5409536 (= e!3353466 e!3353467)))

(declare-fun res!2300405 () Bool)

(assert (=> b!5409536 (=> res!2300405 e!3353467)))

(declare-datatypes ((tuple2!64768 0))(
  ( (tuple2!64769 (_1!35687 List!61856) (_2!35687 List!61856)) )
))
(declare-fun lt!2205617 () tuple2!64768)

(declare-fun matchR!7370 (Regex!15185 List!61856) Bool)

(assert (=> b!5409536 (= res!2300405 (not (matchR!7370 lt!2205624 (_1!35687 lt!2205617))))))

(declare-datatypes ((Option!15296 0))(
  ( (None!15295) (Some!15295 (v!51324 tuple2!64768)) )
))
(declare-fun lt!2205647 () Option!15296)

(declare-fun get!21280 (Option!15296) tuple2!64768)

(assert (=> b!5409536 (= lt!2205617 (get!21280 lt!2205647))))

(declare-fun Exists!2366 (Int) Bool)

(assert (=> b!5409536 (= (Exists!2366 lambda!282272) (Exists!2366 lambda!282273))))

(declare-fun lt!2205607 () Unit!154262)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1020 (Regex!15185 Regex!15185 List!61856) Unit!154262)

(assert (=> b!5409536 (= lt!2205607 (lemmaExistCutMatchRandMatchRSpecEquivalent!1020 lt!2205624 (regTwo!30882 r!7292) s!2326))))

(declare-fun isDefined!11999 (Option!15296) Bool)

(assert (=> b!5409536 (= (isDefined!11999 lt!2205647) (Exists!2366 lambda!282272))))

(declare-fun findConcatSeparation!1710 (Regex!15185 Regex!15185 List!61856 List!61856 List!61856) Option!15296)

(assert (=> b!5409536 (= lt!2205647 (findConcatSeparation!1710 lt!2205624 (regTwo!30882 r!7292) Nil!61732 s!2326 s!2326))))

(declare-fun lt!2205614 () Unit!154262)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1474 (Regex!15185 Regex!15185 List!61856) Unit!154262)

(assert (=> b!5409536 (= lt!2205614 (lemmaFindConcatSeparationEquivalentToExists!1474 lt!2205624 (regTwo!30882 r!7292) s!2326))))

(declare-fun lt!2205637 () Regex!15185)

(declare-fun matchRSpec!2288 (Regex!15185 List!61856) Bool)

(assert (=> b!5409536 (matchRSpec!2288 lt!2205637 s!2326)))

(declare-fun lt!2205628 () Unit!154262)

(declare-fun mainMatchTheorem!2288 (Regex!15185 List!61856) Unit!154262)

(assert (=> b!5409536 (= lt!2205628 (mainMatchTheorem!2288 lt!2205637 s!2326))))

(assert (=> b!5409536 (matchR!7370 lt!2205637 s!2326)))

(assert (=> b!5409536 (= lt!2205637 (Concat!24030 lt!2205624 (regTwo!30882 r!7292)))))

(declare-fun lt!2205644 () Regex!15185)

(assert (=> b!5409536 (= lt!2205624 (Concat!24030 (reg!15514 (regOne!30882 r!7292)) lt!2205644))))

(declare-fun lt!2205609 () Unit!154262)

(declare-fun lemmaConcatAssociative!38 (Regex!15185 Regex!15185 Regex!15185 List!61856) Unit!154262)

(assert (=> b!5409536 (= lt!2205609 (lemmaConcatAssociative!38 (reg!15514 (regOne!30882 r!7292)) lt!2205644 (regTwo!30882 r!7292) s!2326))))

(assert (=> b!5409536 e!3353478))

(declare-fun res!2300439 () Bool)

(assert (=> b!5409536 (=> (not res!2300439) (not e!3353478))))

(declare-fun lt!2205608 () Regex!15185)

(declare-fun lt!2205606 () List!61856)

(assert (=> b!5409536 (= res!2300439 (matchR!7370 lt!2205608 lt!2205606))))

(declare-fun lt!2205646 () Regex!15185)

(declare-fun lt!2205621 () tuple2!64768)

(declare-fun lt!2205591 () Unit!154262)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!208 (Regex!15185 Regex!15185 List!61856 List!61856) Unit!154262)

(assert (=> b!5409536 (= lt!2205591 (lemmaTwoRegexMatchThenConcatMatchesConcatString!208 (reg!15514 (regOne!30882 r!7292)) lt!2205646 (_1!35687 lt!2205621) (_2!35687 lt!2205621)))))

(assert (=> b!5409536 (matchR!7370 lt!2205646 (_2!35687 lt!2205621))))

(declare-fun lt!2205636 () Unit!154262)

(declare-fun lt!2205616 () List!61855)

(declare-fun theoremZipperRegexEquiv!499 ((InoxSet Context!9138) List!61855 Regex!15185 List!61856) Unit!154262)

(assert (=> b!5409536 (= lt!2205636 (theoremZipperRegexEquiv!499 lt!2205640 lt!2205616 lt!2205646 (_2!35687 lt!2205621)))))

(assert (=> b!5409536 (matchR!7370 (reg!15514 (regOne!30882 r!7292)) (_1!35687 lt!2205621))))

(declare-fun lt!2205627 () Unit!154262)

(assert (=> b!5409536 (= lt!2205627 (theoremZipperRegexEquiv!499 lt!2205645 lt!2205620 (reg!15514 (regOne!30882 r!7292)) (_1!35687 lt!2205621)))))

(declare-fun lt!2205595 () List!61854)

(declare-fun matchZipper!1429 ((InoxSet Context!9138) List!61856) Bool)

(declare-fun ++!13543 (List!61854 List!61854) List!61854)

(assert (=> b!5409536 (matchZipper!1429 (store ((as const (Array Context!9138 Bool)) false) (Context!9139 (++!13543 lt!2205600 lt!2205595)) true) lt!2205606)))

(declare-fun lambda!282271 () Int)

(declare-fun lt!2205598 () Unit!154262)

(declare-fun lemmaConcatPreservesForall!210 (List!61854 List!61854 Int) Unit!154262)

(assert (=> b!5409536 (= lt!2205598 (lemmaConcatPreservesForall!210 lt!2205600 lt!2205595 lambda!282271))))

(declare-fun lt!2205602 () Unit!154262)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!58 (Context!9138 Context!9138 List!61856 List!61856) Unit!154262)

(assert (=> b!5409536 (= lt!2205602 (lemmaConcatenateContextMatchesConcatOfStrings!58 lt!2205601 lt!2205599 (_1!35687 lt!2205621) (_2!35687 lt!2205621)))))

(declare-fun b!5409537 () Bool)

(declare-fun e!3353480 () Bool)

(assert (=> b!5409537 (= e!3353480 e!3353485)))

(declare-fun res!2300422 () Bool)

(assert (=> b!5409537 (=> res!2300422 e!3353485)))

(declare-fun lt!2205648 () Context!9138)

(assert (=> b!5409537 (= res!2300422 (not (= (unfocusZipper!927 (Cons!61731 lt!2205648 Nil!61731)) lt!2205608)))))

(assert (=> b!5409537 (= lt!2205608 (Concat!24030 (reg!15514 (regOne!30882 r!7292)) lt!2205646))))

(declare-fun b!5409538 () Bool)

(declare-fun e!3353471 () Unit!154262)

(declare-fun Unit!154264 () Unit!154262)

(assert (=> b!5409538 (= e!3353471 Unit!154264)))

(declare-fun b!5409539 () Bool)

(declare-fun e!3353483 () Bool)

(assert (=> b!5409539 (= e!3353483 e!3353477)))

(declare-fun res!2300424 () Bool)

(assert (=> b!5409539 (=> res!2300424 e!3353477)))

(declare-fun lt!2205592 () (InoxSet Context!9138))

(declare-fun lt!2205619 () Bool)

(assert (=> b!5409539 (= res!2300424 (not (= lt!2205619 (matchZipper!1429 lt!2205592 (t!375079 s!2326)))))))

(declare-fun lt!2205605 () (InoxSet Context!9138))

(assert (=> b!5409539 (= lt!2205619 (matchZipper!1429 lt!2205605 s!2326))))

(declare-fun b!5409541 () Bool)

(declare-fun e!3353468 () Bool)

(declare-fun e!3353490 () Bool)

(assert (=> b!5409541 (= e!3353468 e!3353490)))

(declare-fun res!2300409 () Bool)

(assert (=> b!5409541 (=> res!2300409 e!3353490)))

(declare-fun e!3353469 () Bool)

(assert (=> b!5409541 (= res!2300409 e!3353469)))

(declare-fun res!2300420 () Bool)

(assert (=> b!5409541 (=> (not res!2300420) (not e!3353469))))

(declare-fun lt!2205639 () Bool)

(assert (=> b!5409541 (= res!2300420 (not lt!2205639))))

(declare-fun lt!2205603 () (InoxSet Context!9138))

(assert (=> b!5409541 (= lt!2205639 (matchZipper!1429 lt!2205603 (t!375079 s!2326)))))

(declare-fun b!5409542 () Bool)

(declare-fun Unit!154265 () Unit!154262)

(assert (=> b!5409542 (= e!3353471 Unit!154265)))

(declare-fun lt!2205631 () (InoxSet Context!9138))

(declare-fun lt!2205633 () Unit!154262)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!422 ((InoxSet Context!9138) (InoxSet Context!9138) List!61856) Unit!154262)

(assert (=> b!5409542 (= lt!2205633 (lemmaZipperConcatMatchesSameAsBothZippers!422 lt!2205603 lt!2205631 (t!375079 s!2326)))))

(declare-fun res!2300436 () Bool)

(assert (=> b!5409542 (= res!2300436 (matchZipper!1429 lt!2205603 (t!375079 s!2326)))))

(declare-fun e!3353489 () Bool)

(assert (=> b!5409542 (=> res!2300436 e!3353489)))

(assert (=> b!5409542 (= (matchZipper!1429 ((_ map or) lt!2205603 lt!2205631) (t!375079 s!2326)) e!3353489)))

(declare-fun e!3353484 () Bool)

(declare-fun e!3353472 () Bool)

(declare-fun tp!1495493 () Bool)

(declare-fun b!5409543 () Bool)

(declare-fun inv!81209 (Context!9138) Bool)

(assert (=> b!5409543 (= e!3353484 (and (inv!81209 (h!68179 zl!343)) e!3353472 tp!1495493))))

(declare-fun b!5409544 () Bool)

(declare-fun e!3353474 () Bool)

(assert (=> b!5409544 (= e!3353474 e!3353483)))

(declare-fun res!2300417 () Bool)

(assert (=> b!5409544 (=> res!2300417 e!3353483)))

(declare-fun lt!2205626 () (InoxSet Context!9138))

(assert (=> b!5409544 (= res!2300417 (not (= lt!2205592 lt!2205626)))))

(assert (=> b!5409544 (= (flatMap!912 lt!2205605 lambda!282269) (derivationStepZipperUp!557 lt!2205648 (h!68180 s!2326)))))

(declare-fun lt!2205594 () Unit!154262)

(assert (=> b!5409544 (= lt!2205594 (lemmaFlatMapOnSingletonSet!444 lt!2205605 lt!2205648 lambda!282269))))

(declare-fun lt!2205625 () (InoxSet Context!9138))

(assert (=> b!5409544 (= lt!2205625 (derivationStepZipperUp!557 lt!2205648 (h!68180 s!2326)))))

(declare-fun derivationStepZipper!1424 ((InoxSet Context!9138) C!30640) (InoxSet Context!9138))

(assert (=> b!5409544 (= lt!2205592 (derivationStepZipper!1424 lt!2205605 (h!68180 s!2326)))))

(assert (=> b!5409544 (= lt!2205605 (store ((as const (Array Context!9138 Bool)) false) lt!2205648 true))))

(assert (=> b!5409544 (= lt!2205648 (Context!9139 (Cons!61730 (reg!15514 (regOne!30882 r!7292)) lt!2205595)))))

(declare-fun b!5409545 () Bool)

(declare-fun res!2300423 () Bool)

(assert (=> b!5409545 (=> res!2300423 e!3353488)))

(get-info :version)

(assert (=> b!5409545 (= res!2300423 (not ((_ is Cons!61730) (exprs!5069 (h!68179 zl!343)))))))

(declare-fun b!5409546 () Bool)

(declare-fun e!3353473 () Bool)

(declare-fun tp!1495488 () Bool)

(declare-fun tp!1495491 () Bool)

(assert (=> b!5409546 (= e!3353473 (and tp!1495488 tp!1495491))))

(declare-fun e!3353491 () Bool)

(assert (=> b!5409547 (= e!3353490 e!3353491)))

(declare-fun res!2300425 () Bool)

(assert (=> b!5409547 (=> res!2300425 e!3353491)))

(declare-fun appendTo!44 ((InoxSet Context!9138) Context!9138) (InoxSet Context!9138))

(assert (=> b!5409547 (= res!2300425 (not (= (appendTo!44 lt!2205645 lt!2205599) lt!2205605)))))

(declare-fun lambda!282270 () Int)

(declare-fun map!14162 ((InoxSet Context!9138) Int) (InoxSet Context!9138))

(assert (=> b!5409547 (= (map!14162 lt!2205645 lambda!282270) (store ((as const (Array Context!9138 Bool)) false) (Context!9139 (++!13543 lt!2205600 lt!2205595)) true))))

(declare-fun lt!2205597 () Unit!154262)

(assert (=> b!5409547 (= lt!2205597 (lemmaConcatPreservesForall!210 lt!2205600 lt!2205595 lambda!282271))))

(declare-fun lt!2205618 () Unit!154262)

(declare-fun lemmaMapOnSingletonSet!44 ((InoxSet Context!9138) Context!9138 Int) Unit!154262)

(assert (=> b!5409547 (= lt!2205618 (lemmaMapOnSingletonSet!44 lt!2205645 lt!2205601 lambda!282270))))

(declare-fun e!3353482 () Bool)

(declare-fun e!3353487 () Bool)

(assert (=> b!5409548 (= e!3353482 e!3353487)))

(declare-fun res!2300432 () Bool)

(assert (=> b!5409548 (=> res!2300432 e!3353487)))

(assert (=> b!5409548 (= res!2300432 (or (and ((_ is ElementMatch!15185) (regOne!30882 r!7292)) (= (c!943121 (regOne!30882 r!7292)) (h!68180 s!2326))) ((_ is Union!15185) (regOne!30882 r!7292))))))

(declare-fun lt!2205643 () Unit!154262)

(assert (=> b!5409548 (= lt!2205643 e!3353471)))

(declare-fun c!943120 () Bool)

(declare-fun lt!2205622 () Bool)

(assert (=> b!5409548 (= c!943120 lt!2205622)))

(declare-fun nullable!5354 (Regex!15185) Bool)

(assert (=> b!5409548 (= lt!2205622 (nullable!5354 (h!68178 (exprs!5069 (h!68179 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!9138))

(assert (=> b!5409548 (= (flatMap!912 z!1189 lambda!282269) (derivationStepZipperUp!557 (h!68179 zl!343) (h!68180 s!2326)))))

(declare-fun lt!2205635 () Unit!154262)

(assert (=> b!5409548 (= lt!2205635 (lemmaFlatMapOnSingletonSet!444 z!1189 (h!68179 zl!343) lambda!282269))))

(declare-fun lt!2205630 () Context!9138)

(assert (=> b!5409548 (= lt!2205631 (derivationStepZipperUp!557 lt!2205630 (h!68180 s!2326)))))

(declare-fun derivationStepZipperDown!633 (Regex!15185 Context!9138 C!30640) (InoxSet Context!9138))

(assert (=> b!5409548 (= lt!2205603 (derivationStepZipperDown!633 (h!68178 (exprs!5069 (h!68179 zl!343))) lt!2205630 (h!68180 s!2326)))))

(assert (=> b!5409548 (= lt!2205630 (Context!9139 (t!375077 (exprs!5069 (h!68179 zl!343)))))))

(declare-fun lt!2205596 () (InoxSet Context!9138))

(assert (=> b!5409548 (= lt!2205596 (derivationStepZipperUp!557 (Context!9139 (Cons!61730 (h!68178 (exprs!5069 (h!68179 zl!343))) (t!375077 (exprs!5069 (h!68179 zl!343))))) (h!68180 s!2326)))))

(declare-fun b!5409549 () Bool)

(declare-fun e!3353479 () Bool)

(assert (=> b!5409549 (= e!3353479 (nullable!5354 (regOne!30882 (regOne!30882 r!7292))))))

(declare-fun b!5409550 () Bool)

(declare-fun tp!1495489 () Bool)

(assert (=> b!5409550 (= e!3353472 tp!1495489)))

(declare-fun b!5409551 () Bool)

(assert (=> b!5409551 (= e!3353491 e!3353466)))

(declare-fun res!2300415 () Bool)

(assert (=> b!5409551 (=> res!2300415 e!3353466)))

(assert (=> b!5409551 (= res!2300415 (not (= s!2326 lt!2205606)))))

(declare-fun ++!13544 (List!61856 List!61856) List!61856)

(assert (=> b!5409551 (= lt!2205606 (++!13544 (_1!35687 lt!2205621) (_2!35687 lt!2205621)))))

(declare-fun lt!2205629 () Option!15296)

(assert (=> b!5409551 (= lt!2205621 (get!21280 lt!2205629))))

(assert (=> b!5409551 (isDefined!11999 lt!2205629)))

(declare-fun findConcatSeparationZippers!42 ((InoxSet Context!9138) (InoxSet Context!9138) List!61856 List!61856 List!61856) Option!15296)

(assert (=> b!5409551 (= lt!2205629 (findConcatSeparationZippers!42 lt!2205645 lt!2205640 Nil!61732 s!2326 s!2326))))

(declare-fun lt!2205638 () Unit!154262)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!42 ((InoxSet Context!9138) Context!9138 List!61856) Unit!154262)

(assert (=> b!5409551 (= lt!2205638 (lemmaConcatZipperMatchesStringThenFindConcatDefined!42 lt!2205645 lt!2205599 s!2326))))

(declare-fun b!5409552 () Bool)

(assert (=> b!5409552 (= e!3353467 true)))

(assert (=> b!5409552 (matchRSpec!2288 lt!2205624 (_1!35687 lt!2205617))))

(declare-fun lt!2205611 () Unit!154262)

(assert (=> b!5409552 (= lt!2205611 (mainMatchTheorem!2288 lt!2205624 (_1!35687 lt!2205617)))))

(declare-fun b!5409553 () Bool)

(declare-fun res!2300408 () Bool)

(assert (=> b!5409553 (=> res!2300408 e!3353487)))

(assert (=> b!5409553 (= res!2300408 e!3353479)))

(declare-fun res!2300419 () Bool)

(assert (=> b!5409553 (=> (not res!2300419) (not e!3353479))))

(assert (=> b!5409553 (= res!2300419 ((_ is Concat!24030) (regOne!30882 r!7292)))))

(declare-fun b!5409554 () Bool)

(assert (=> b!5409554 (= e!3353477 e!3353480)))

(declare-fun res!2300412 () Bool)

(assert (=> b!5409554 (=> res!2300412 e!3353480)))

(assert (=> b!5409554 (= res!2300412 (not (= r!7292 lt!2205646)))))

(assert (=> b!5409554 (= lt!2205646 (Concat!24030 lt!2205644 (regTwo!30882 r!7292)))))

(assert (=> b!5409555 (= e!3353488 e!3353482)))

(declare-fun res!2300413 () Bool)

(assert (=> b!5409555 (=> res!2300413 e!3353482)))

(declare-fun lt!2205632 () Bool)

(declare-fun lt!2205610 () Bool)

(assert (=> b!5409555 (= res!2300413 (or (not (= lt!2205610 lt!2205632)) ((_ is Nil!61732) s!2326)))))

(assert (=> b!5409555 (= (Exists!2366 lambda!282267) (Exists!2366 lambda!282268))))

(declare-fun lt!2205641 () Unit!154262)

(assert (=> b!5409555 (= lt!2205641 (lemmaExistCutMatchRandMatchRSpecEquivalent!1020 (regOne!30882 r!7292) (regTwo!30882 r!7292) s!2326))))

(assert (=> b!5409555 (= lt!2205632 (Exists!2366 lambda!282267))))

(assert (=> b!5409555 (= lt!2205632 (isDefined!11999 (findConcatSeparation!1710 (regOne!30882 r!7292) (regTwo!30882 r!7292) Nil!61732 s!2326 s!2326)))))

(declare-fun lt!2205604 () Unit!154262)

(assert (=> b!5409555 (= lt!2205604 (lemmaFindConcatSeparationEquivalentToExists!1474 (regOne!30882 r!7292) (regTwo!30882 r!7292) s!2326))))

(declare-fun b!5409556 () Bool)

(declare-fun res!2300414 () Bool)

(assert (=> b!5409556 (=> res!2300414 e!3353487)))

(assert (=> b!5409556 (= res!2300414 (or ((_ is Concat!24030) (regOne!30882 r!7292)) (not ((_ is Star!15185) (regOne!30882 r!7292)))))))

(declare-fun setIsEmpty!35231 () Bool)

(declare-fun setRes!35231 () Bool)

(assert (=> setIsEmpty!35231 setRes!35231))

(declare-fun b!5409557 () Bool)

(assert (=> b!5409557 (= e!3353487 e!3353474)))

(declare-fun res!2300406 () Bool)

(assert (=> b!5409557 (=> res!2300406 e!3353474)))

(assert (=> b!5409557 (= res!2300406 (not (= lt!2205603 lt!2205626)))))

(assert (=> b!5409557 (= lt!2205626 (derivationStepZipperDown!633 (reg!15514 (regOne!30882 r!7292)) lt!2205599 (h!68180 s!2326)))))

(assert (=> b!5409557 (= lt!2205599 (Context!9139 lt!2205595))))

(assert (=> b!5409557 (= lt!2205595 (Cons!61730 lt!2205644 (t!375077 (exprs!5069 (h!68179 zl!343)))))))

(assert (=> b!5409557 (= lt!2205644 (Star!15185 (reg!15514 (regOne!30882 r!7292))))))

(declare-fun b!5409558 () Bool)

(declare-fun res!2300430 () Bool)

(assert (=> b!5409558 (=> res!2300430 e!3353488)))

(assert (=> b!5409558 (= res!2300430 (or ((_ is EmptyExpr!15185) r!7292) ((_ is EmptyLang!15185) r!7292) ((_ is ElementMatch!15185) r!7292) ((_ is Union!15185) r!7292) (not ((_ is Concat!24030) r!7292))))))

(declare-fun b!5409559 () Bool)

(assert (=> b!5409559 (= e!3353469 (not (matchZipper!1429 lt!2205631 (t!375079 s!2326))))))

(declare-fun b!5409560 () Bool)

(declare-fun res!2300404 () Bool)

(assert (=> b!5409560 (=> (not res!2300404) (not e!3353486))))

(declare-fun toList!8969 ((InoxSet Context!9138)) List!61855)

(assert (=> b!5409560 (= res!2300404 (= (toList!8969 z!1189) zl!343))))

(declare-fun b!5409561 () Bool)

(declare-fun tp!1495484 () Bool)

(assert (=> b!5409561 (= e!3353473 tp!1495484)))

(declare-fun b!5409562 () Bool)

(declare-fun res!2300429 () Bool)

(assert (=> b!5409562 (=> res!2300429 e!3353468)))

(assert (=> b!5409562 (= res!2300429 (not lt!2205622))))

(declare-fun b!5409563 () Bool)

(declare-fun res!2300438 () Bool)

(assert (=> b!5409563 (=> res!2300438 e!3353466)))

(assert (=> b!5409563 (= res!2300438 (not (matchZipper!1429 lt!2205645 (_1!35687 lt!2205621))))))

(declare-fun b!5409564 () Bool)

(declare-fun tp!1495485 () Bool)

(declare-fun tp!1495486 () Bool)

(assert (=> b!5409564 (= e!3353473 (and tp!1495485 tp!1495486))))

(declare-fun b!5409565 () Bool)

(declare-fun res!2300421 () Bool)

(assert (=> b!5409565 (=> res!2300421 e!3353466)))

(assert (=> b!5409565 (= res!2300421 (not (matchZipper!1429 lt!2205640 (_2!35687 lt!2205621))))))

(declare-fun b!5409566 () Bool)

(declare-fun e!3353475 () Bool)

(assert (=> b!5409566 (= e!3353475 e!3353468)))

(declare-fun res!2300434 () Bool)

(assert (=> b!5409566 (=> res!2300434 e!3353468)))

(assert (=> b!5409566 (= res!2300434 lt!2205610)))

(assert (=> b!5409566 (= lt!2205590 (matchRSpec!2288 lt!2205608 s!2326))))

(assert (=> b!5409566 (= lt!2205590 (matchR!7370 lt!2205608 s!2326))))

(declare-fun lt!2205642 () Unit!154262)

(assert (=> b!5409566 (= lt!2205642 (mainMatchTheorem!2288 lt!2205608 s!2326))))

(declare-fun e!3353476 () Bool)

(declare-fun setElem!35231 () Context!9138)

(declare-fun tp!1495492 () Bool)

(declare-fun setNonEmpty!35231 () Bool)

(assert (=> setNonEmpty!35231 (= setRes!35231 (and tp!1495492 (inv!81209 setElem!35231) e!3353476))))

(declare-fun setRest!35231 () (InoxSet Context!9138))

(assert (=> setNonEmpty!35231 (= z!1189 ((_ map or) (store ((as const (Array Context!9138 Bool)) false) setElem!35231 true) setRest!35231))))

(declare-fun res!2300411 () Bool)

(assert (=> start!568114 (=> (not res!2300411) (not e!3353486))))

(declare-fun validRegex!6921 (Regex!15185) Bool)

(assert (=> start!568114 (= res!2300411 (validRegex!6921 r!7292))))

(assert (=> start!568114 e!3353486))

(assert (=> start!568114 e!3353473))

(declare-fun condSetEmpty!35231 () Bool)

(assert (=> start!568114 (= condSetEmpty!35231 (= z!1189 ((as const (Array Context!9138 Bool)) false)))))

(assert (=> start!568114 setRes!35231))

(assert (=> start!568114 e!3353484))

(assert (=> start!568114 e!3353470))

(declare-fun b!5409540 () Bool)

(declare-fun tp!1495487 () Bool)

(assert (=> b!5409540 (= e!3353476 tp!1495487)))

(declare-fun b!5409567 () Bool)

(assert (=> b!5409567 (= e!3353492 e!3353475)))

(declare-fun res!2300435 () Bool)

(assert (=> b!5409567 (=> res!2300435 e!3353475)))

(assert (=> b!5409567 (= res!2300435 (not (= (unfocusZipper!927 lt!2205616) lt!2205646)))))

(assert (=> b!5409567 (= lt!2205616 (Cons!61731 lt!2205599 Nil!61731))))

(declare-fun b!5409568 () Bool)

(declare-fun res!2300427 () Bool)

(assert (=> b!5409568 (=> res!2300427 e!3353468)))

(assert (=> b!5409568 (= res!2300427 (not (matchZipper!1429 z!1189 s!2326)))))

(declare-fun b!5409569 () Bool)

(declare-fun res!2300418 () Bool)

(assert (=> b!5409569 (=> res!2300418 e!3353488)))

(declare-fun generalisedUnion!1114 (List!61854) Regex!15185)

(declare-fun unfocusZipperList!627 (List!61855) List!61854)

(assert (=> b!5409569 (= res!2300418 (not (= r!7292 (generalisedUnion!1114 (unfocusZipperList!627 zl!343)))))))

(declare-fun b!5409570 () Bool)

(assert (=> b!5409570 (= e!3353473 tp_is_empty!39623)))

(declare-fun b!5409571 () Bool)

(declare-fun res!2300431 () Bool)

(assert (=> b!5409571 (=> res!2300431 e!3353488)))

(declare-fun generalisedConcat!854 (List!61854) Regex!15185)

(assert (=> b!5409571 (= res!2300431 (not (= r!7292 (generalisedConcat!854 (exprs!5069 (h!68179 zl!343))))))))

(declare-fun b!5409572 () Bool)

(declare-fun res!2300437 () Bool)

(assert (=> b!5409572 (=> res!2300437 e!3353490)))

(assert (=> b!5409572 (= res!2300437 (or (not lt!2205639) (not lt!2205619)))))

(declare-fun b!5409573 () Bool)

(declare-fun res!2300428 () Bool)

(assert (=> b!5409573 (=> res!2300428 e!3353482)))

(declare-fun isEmpty!33725 (List!61854) Bool)

(assert (=> b!5409573 (= res!2300428 (isEmpty!33725 (t!375077 (exprs!5069 (h!68179 zl!343)))))))

(declare-fun b!5409574 () Bool)

(assert (=> b!5409574 (= e!3353481 (not e!3353488))))

(declare-fun res!2300410 () Bool)

(assert (=> b!5409574 (=> res!2300410 e!3353488)))

(assert (=> b!5409574 (= res!2300410 (not ((_ is Cons!61731) zl!343)))))

(assert (=> b!5409574 (= lt!2205610 (matchRSpec!2288 r!7292 s!2326))))

(assert (=> b!5409574 (= lt!2205610 (matchR!7370 r!7292 s!2326))))

(declare-fun lt!2205593 () Unit!154262)

(assert (=> b!5409574 (= lt!2205593 (mainMatchTheorem!2288 r!7292 s!2326))))

(declare-fun b!5409575 () Bool)

(assert (=> b!5409575 (= e!3353489 (matchZipper!1429 lt!2205631 (t!375079 s!2326)))))

(assert (= (and start!568114 res!2300411) b!5409560))

(assert (= (and b!5409560 res!2300404) b!5409532))

(assert (= (and b!5409532 res!2300426) b!5409574))

(assert (= (and b!5409574 (not res!2300410)) b!5409531))

(assert (= (and b!5409531 (not res!2300433)) b!5409571))

(assert (= (and b!5409571 (not res!2300431)) b!5409545))

(assert (= (and b!5409545 (not res!2300423)) b!5409569))

(assert (= (and b!5409569 (not res!2300418)) b!5409558))

(assert (= (and b!5409558 (not res!2300430)) b!5409555))

(assert (= (and b!5409555 (not res!2300413)) b!5409573))

(assert (= (and b!5409573 (not res!2300428)) b!5409548))

(assert (= (and b!5409548 c!943120) b!5409542))

(assert (= (and b!5409548 (not c!943120)) b!5409538))

(assert (= (and b!5409542 (not res!2300436)) b!5409575))

(assert (= (and b!5409548 (not res!2300432)) b!5409553))

(assert (= (and b!5409553 res!2300419) b!5409549))

(assert (= (and b!5409553 (not res!2300408)) b!5409556))

(assert (= (and b!5409556 (not res!2300414)) b!5409557))

(assert (= (and b!5409557 (not res!2300406)) b!5409544))

(assert (= (and b!5409544 (not res!2300417)) b!5409539))

(assert (= (and b!5409539 (not res!2300424)) b!5409534))

(assert (= (and b!5409534 (not res!2300407)) b!5409554))

(assert (= (and b!5409554 (not res!2300412)) b!5409537))

(assert (= (and b!5409537 (not res!2300422)) b!5409533))

(assert (= (and b!5409533 (not res!2300416)) b!5409567))

(assert (= (and b!5409567 (not res!2300435)) b!5409566))

(assert (= (and b!5409566 (not res!2300434)) b!5409568))

(assert (= (and b!5409568 (not res!2300427)) b!5409562))

(assert (= (and b!5409562 (not res!2300429)) b!5409541))

(assert (= (and b!5409541 res!2300420) b!5409559))

(assert (= (and b!5409541 (not res!2300409)) b!5409572))

(assert (= (and b!5409572 (not res!2300437)) b!5409547))

(assert (= (and b!5409547 (not res!2300425)) b!5409551))

(assert (= (and b!5409551 (not res!2300415)) b!5409563))

(assert (= (and b!5409563 (not res!2300438)) b!5409565))

(assert (= (and b!5409565 (not res!2300421)) b!5409536))

(assert (= (and b!5409536 res!2300439) b!5409535))

(assert (= (and b!5409536 (not res!2300405)) b!5409552))

(assert (= (and start!568114 ((_ is ElementMatch!15185) r!7292)) b!5409570))

(assert (= (and start!568114 ((_ is Concat!24030) r!7292)) b!5409546))

(assert (= (and start!568114 ((_ is Star!15185) r!7292)) b!5409561))

(assert (= (and start!568114 ((_ is Union!15185) r!7292)) b!5409564))

(assert (= (and start!568114 condSetEmpty!35231) setIsEmpty!35231))

(assert (= (and start!568114 (not condSetEmpty!35231)) setNonEmpty!35231))

(assert (= setNonEmpty!35231 b!5409540))

(assert (= b!5409543 b!5409550))

(assert (= (and start!568114 ((_ is Cons!61731) zl!343)) b!5409543))

(assert (= (and start!568114 ((_ is Cons!61732) s!2326)) b!5409530))

(declare-fun m!6433538 () Bool)

(assert (=> b!5409569 m!6433538))

(assert (=> b!5409569 m!6433538))

(declare-fun m!6433540 () Bool)

(assert (=> b!5409569 m!6433540))

(declare-fun m!6433542 () Bool)

(assert (=> start!568114 m!6433542))

(declare-fun m!6433544 () Bool)

(assert (=> b!5409574 m!6433544))

(declare-fun m!6433546 () Bool)

(assert (=> b!5409574 m!6433546))

(declare-fun m!6433548 () Bool)

(assert (=> b!5409574 m!6433548))

(declare-fun m!6433550 () Bool)

(assert (=> b!5409549 m!6433550))

(declare-fun m!6433552 () Bool)

(assert (=> b!5409537 m!6433552))

(declare-fun m!6433554 () Bool)

(assert (=> b!5409567 m!6433554))

(declare-fun m!6433556 () Bool)

(assert (=> b!5409568 m!6433556))

(declare-fun m!6433558 () Bool)

(assert (=> b!5409541 m!6433558))

(declare-fun m!6433560 () Bool)

(assert (=> b!5409559 m!6433560))

(declare-fun m!6433562 () Bool)

(assert (=> b!5409544 m!6433562))

(declare-fun m!6433564 () Bool)

(assert (=> b!5409544 m!6433564))

(declare-fun m!6433566 () Bool)

(assert (=> b!5409544 m!6433566))

(declare-fun m!6433568 () Bool)

(assert (=> b!5409544 m!6433568))

(declare-fun m!6433570 () Bool)

(assert (=> b!5409544 m!6433570))

(declare-fun m!6433572 () Bool)

(assert (=> b!5409531 m!6433572))

(declare-fun m!6433574 () Bool)

(assert (=> b!5409563 m!6433574))

(declare-fun m!6433576 () Bool)

(assert (=> b!5409557 m!6433576))

(declare-fun m!6433578 () Bool)

(assert (=> b!5409533 m!6433578))

(declare-fun m!6433580 () Bool)

(assert (=> b!5409533 m!6433580))

(declare-fun m!6433582 () Bool)

(assert (=> b!5409533 m!6433582))

(declare-fun m!6433584 () Bool)

(assert (=> b!5409533 m!6433584))

(declare-fun m!6433586 () Bool)

(assert (=> b!5409533 m!6433586))

(declare-fun m!6433588 () Bool)

(assert (=> b!5409533 m!6433588))

(declare-fun m!6433590 () Bool)

(assert (=> b!5409533 m!6433590))

(declare-fun m!6433592 () Bool)

(assert (=> b!5409533 m!6433592))

(declare-fun m!6433594 () Bool)

(assert (=> b!5409533 m!6433594))

(assert (=> b!5409575 m!6433560))

(declare-fun m!6433596 () Bool)

(assert (=> b!5409571 m!6433596))

(declare-fun m!6433598 () Bool)

(assert (=> b!5409547 m!6433598))

(declare-fun m!6433600 () Bool)

(assert (=> b!5409547 m!6433600))

(declare-fun m!6433602 () Bool)

(assert (=> b!5409547 m!6433602))

(declare-fun m!6433604 () Bool)

(assert (=> b!5409547 m!6433604))

(declare-fun m!6433606 () Bool)

(assert (=> b!5409547 m!6433606))

(declare-fun m!6433608 () Bool)

(assert (=> b!5409547 m!6433608))

(declare-fun m!6433610 () Bool)

(assert (=> b!5409539 m!6433610))

(declare-fun m!6433612 () Bool)

(assert (=> b!5409539 m!6433612))

(declare-fun m!6433614 () Bool)

(assert (=> setNonEmpty!35231 m!6433614))

(declare-fun m!6433616 () Bool)

(assert (=> b!5409532 m!6433616))

(declare-fun m!6433618 () Bool)

(assert (=> b!5409560 m!6433618))

(declare-fun m!6433620 () Bool)

(assert (=> b!5409565 m!6433620))

(declare-fun m!6433622 () Bool)

(assert (=> b!5409543 m!6433622))

(declare-fun m!6433624 () Bool)

(assert (=> b!5409548 m!6433624))

(declare-fun m!6433626 () Bool)

(assert (=> b!5409548 m!6433626))

(declare-fun m!6433628 () Bool)

(assert (=> b!5409548 m!6433628))

(declare-fun m!6433630 () Bool)

(assert (=> b!5409548 m!6433630))

(declare-fun m!6433632 () Bool)

(assert (=> b!5409548 m!6433632))

(declare-fun m!6433634 () Bool)

(assert (=> b!5409548 m!6433634))

(declare-fun m!6433636 () Bool)

(assert (=> b!5409548 m!6433636))

(declare-fun m!6433638 () Bool)

(assert (=> b!5409542 m!6433638))

(assert (=> b!5409542 m!6433558))

(declare-fun m!6433640 () Bool)

(assert (=> b!5409542 m!6433640))

(declare-fun m!6433642 () Bool)

(assert (=> b!5409552 m!6433642))

(declare-fun m!6433644 () Bool)

(assert (=> b!5409552 m!6433644))

(declare-fun m!6433646 () Bool)

(assert (=> b!5409551 m!6433646))

(declare-fun m!6433648 () Bool)

(assert (=> b!5409551 m!6433648))

(declare-fun m!6433650 () Bool)

(assert (=> b!5409551 m!6433650))

(declare-fun m!6433652 () Bool)

(assert (=> b!5409551 m!6433652))

(declare-fun m!6433654 () Bool)

(assert (=> b!5409551 m!6433654))

(declare-fun m!6433656 () Bool)

(assert (=> b!5409566 m!6433656))

(declare-fun m!6433658 () Bool)

(assert (=> b!5409566 m!6433658))

(declare-fun m!6433660 () Bool)

(assert (=> b!5409566 m!6433660))

(declare-fun m!6433662 () Bool)

(assert (=> b!5409573 m!6433662))

(declare-fun m!6433664 () Bool)

(assert (=> b!5409536 m!6433664))

(declare-fun m!6433666 () Bool)

(assert (=> b!5409536 m!6433666))

(declare-fun m!6433668 () Bool)

(assert (=> b!5409536 m!6433668))

(declare-fun m!6433670 () Bool)

(assert (=> b!5409536 m!6433670))

(assert (=> b!5409536 m!6433664))

(declare-fun m!6433672 () Bool)

(assert (=> b!5409536 m!6433672))

(declare-fun m!6433674 () Bool)

(assert (=> b!5409536 m!6433674))

(declare-fun m!6433676 () Bool)

(assert (=> b!5409536 m!6433676))

(assert (=> b!5409536 m!6433598))

(declare-fun m!6433678 () Bool)

(assert (=> b!5409536 m!6433678))

(assert (=> b!5409536 m!6433598))

(declare-fun m!6433680 () Bool)

(assert (=> b!5409536 m!6433680))

(declare-fun m!6433682 () Bool)

(assert (=> b!5409536 m!6433682))

(declare-fun m!6433684 () Bool)

(assert (=> b!5409536 m!6433684))

(assert (=> b!5409536 m!6433600))

(declare-fun m!6433686 () Bool)

(assert (=> b!5409536 m!6433686))

(declare-fun m!6433688 () Bool)

(assert (=> b!5409536 m!6433688))

(declare-fun m!6433690 () Bool)

(assert (=> b!5409536 m!6433690))

(declare-fun m!6433692 () Bool)

(assert (=> b!5409536 m!6433692))

(declare-fun m!6433694 () Bool)

(assert (=> b!5409536 m!6433694))

(declare-fun m!6433696 () Bool)

(assert (=> b!5409536 m!6433696))

(assert (=> b!5409536 m!6433606))

(declare-fun m!6433698 () Bool)

(assert (=> b!5409536 m!6433698))

(declare-fun m!6433700 () Bool)

(assert (=> b!5409536 m!6433700))

(declare-fun m!6433702 () Bool)

(assert (=> b!5409536 m!6433702))

(declare-fun m!6433704 () Bool)

(assert (=> b!5409555 m!6433704))

(declare-fun m!6433706 () Bool)

(assert (=> b!5409555 m!6433706))

(declare-fun m!6433708 () Bool)

(assert (=> b!5409555 m!6433708))

(declare-fun m!6433710 () Bool)

(assert (=> b!5409555 m!6433710))

(declare-fun m!6433712 () Bool)

(assert (=> b!5409555 m!6433712))

(assert (=> b!5409555 m!6433710))

(assert (=> b!5409555 m!6433704))

(declare-fun m!6433714 () Bool)

(assert (=> b!5409555 m!6433714))

(check-sat (not b!5409567) (not setNonEmpty!35231) (not b!5409544) (not b!5409548) (not b!5409574) (not b!5409566) (not b!5409565) (not b!5409557) (not b!5409550) (not b!5409532) (not b!5409560) (not b!5409543) (not b!5409542) (not b!5409568) (not b!5409547) (not b!5409537) (not b!5409569) (not b!5409531) (not b!5409563) (not b!5409546) tp_is_empty!39623 (not b!5409573) (not b!5409555) (not b!5409539) (not b!5409536) (not b!5409540) (not b!5409559) (not b!5409561) (not b!5409530) (not b!5409552) (not b!5409571) (not b!5409551) (not b!5409541) (not b!5409549) (not b!5409575) (not b!5409564) (not b!5409533) (not start!568114))
(check-sat)
