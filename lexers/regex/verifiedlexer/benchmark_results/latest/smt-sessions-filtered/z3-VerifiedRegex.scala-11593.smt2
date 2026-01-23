; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!642518 () Bool)

(assert start!642518)

(declare-fun b!6556588 () Bool)

(assert (=> b!6556588 true))

(assert (=> b!6556588 true))

(declare-fun lambda!364497 () Int)

(declare-fun lambda!364496 () Int)

(assert (=> b!6556588 (not (= lambda!364497 lambda!364496))))

(assert (=> b!6556588 true))

(assert (=> b!6556588 true))

(declare-fun b!6556601 () Bool)

(assert (=> b!6556601 true))

(declare-fun b!6556611 () Bool)

(assert (=> b!6556611 true))

(declare-fun bs!1673417 () Bool)

(declare-fun b!6556596 () Bool)

(assert (= bs!1673417 (and b!6556596 b!6556588)))

(declare-datatypes ((C!33136 0))(
  ( (C!33137 (val!26270 Int)) )
))
(declare-datatypes ((Regex!16433 0))(
  ( (ElementMatch!16433 (c!1204578 C!33136)) (Concat!25278 (regOne!33378 Regex!16433) (regTwo!33378 Regex!16433)) (EmptyExpr!16433) (Star!16433 (reg!16762 Regex!16433)) (EmptyLang!16433) (Union!16433 (regOne!33379 Regex!16433) (regTwo!33379 Regex!16433)) )
))
(declare-fun r!7292 () Regex!16433)

(declare-fun lambda!364501 () Int)

(declare-fun lt!2404586 () Regex!16433)

(assert (=> bs!1673417 (= (= lt!2404586 (regOne!33378 r!7292)) (= lambda!364501 lambda!364496))))

(assert (=> bs!1673417 (not (= lambda!364501 lambda!364497))))

(assert (=> b!6556596 true))

(assert (=> b!6556596 true))

(assert (=> b!6556596 true))

(declare-fun lambda!364502 () Int)

(assert (=> bs!1673417 (not (= lambda!364502 lambda!364496))))

(assert (=> bs!1673417 (= (= lt!2404586 (regOne!33378 r!7292)) (= lambda!364502 lambda!364497))))

(assert (=> b!6556596 (not (= lambda!364502 lambda!364501))))

(assert (=> b!6556596 true))

(assert (=> b!6556596 true))

(assert (=> b!6556596 true))

(declare-fun bs!1673418 () Bool)

(declare-fun b!6556608 () Bool)

(assert (= bs!1673418 (and b!6556608 b!6556588)))

(declare-datatypes ((List!65598 0))(
  ( (Nil!65474) (Cons!65474 (h!71922 C!33136) (t!379240 List!65598)) )
))
(declare-fun s!2326 () List!65598)

(declare-datatypes ((tuple2!66824 0))(
  ( (tuple2!66825 (_1!36715 List!65598) (_2!36715 List!65598)) )
))
(declare-fun lt!2404638 () tuple2!66824)

(declare-fun lambda!364503 () Int)

(declare-fun lt!2404592 () Regex!16433)

(assert (=> bs!1673418 (= (and (= (_1!36715 lt!2404638) s!2326) (= (reg!16762 (regOne!33378 r!7292)) (regOne!33378 r!7292)) (= lt!2404592 (regTwo!33378 r!7292))) (= lambda!364503 lambda!364496))))

(assert (=> bs!1673418 (not (= lambda!364503 lambda!364497))))

(declare-fun bs!1673419 () Bool)

(assert (= bs!1673419 (and b!6556608 b!6556596)))

(assert (=> bs!1673419 (= (and (= (_1!36715 lt!2404638) s!2326) (= (reg!16762 (regOne!33378 r!7292)) lt!2404586) (= lt!2404592 (regTwo!33378 r!7292))) (= lambda!364503 lambda!364501))))

(assert (=> bs!1673419 (not (= lambda!364503 lambda!364502))))

(assert (=> b!6556608 true))

(assert (=> b!6556608 true))

(assert (=> b!6556608 true))

(declare-fun b!6556581 () Bool)

(declare-fun e!3969345 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65599 0))(
  ( (Nil!65475) (Cons!65475 (h!71923 Regex!16433) (t!379241 List!65599)) )
))
(declare-datatypes ((Context!11634 0))(
  ( (Context!11635 (exprs!6317 List!65599)) )
))
(declare-fun lt!2404593 () (InoxSet Context!11634))

(declare-fun matchZipper!2445 ((InoxSet Context!11634) List!65598) Bool)

(assert (=> b!6556581 (= e!3969345 (matchZipper!2445 lt!2404593 (t!379240 s!2326)))))

(declare-fun b!6556582 () Bool)

(declare-datatypes ((Unit!159067 0))(
  ( (Unit!159068) )
))
(declare-fun e!3969357 () Unit!159067)

(declare-fun Unit!159069 () Unit!159067)

(assert (=> b!6556582 (= e!3969357 Unit!159069)))

(declare-fun b!6556583 () Bool)

(declare-fun e!3969352 () Bool)

(declare-fun tp!1812113 () Bool)

(declare-fun tp!1812111 () Bool)

(assert (=> b!6556583 (= e!3969352 (and tp!1812113 tp!1812111))))

(declare-fun b!6556584 () Bool)

(declare-fun res!2690259 () Bool)

(declare-fun e!3969369 () Bool)

(assert (=> b!6556584 (=> res!2690259 e!3969369)))

(get-info :version)

(assert (=> b!6556584 (= res!2690259 (or ((_ is EmptyExpr!16433) r!7292) ((_ is EmptyLang!16433) r!7292) ((_ is ElementMatch!16433) r!7292) ((_ is Union!16433) r!7292) (not ((_ is Concat!25278) r!7292))))))

(declare-fun setIsEmpty!44754 () Bool)

(declare-fun setRes!44754 () Bool)

(assert (=> setIsEmpty!44754 setRes!44754))

(declare-fun b!6556585 () Bool)

(declare-fun e!3969351 () Bool)

(declare-fun nullable!6426 (Regex!16433) Bool)

(assert (=> b!6556585 (= e!3969351 (nullable!6426 (regOne!33378 (regOne!33378 r!7292))))))

(declare-fun b!6556586 () Bool)

(declare-fun e!3969363 () Bool)

(declare-fun e!3969346 () Bool)

(assert (=> b!6556586 (= e!3969363 e!3969346)))

(declare-fun res!2690280 () Bool)

(assert (=> b!6556586 (=> res!2690280 e!3969346)))

(declare-fun lt!2404606 () List!65598)

(assert (=> b!6556586 (= res!2690280 (not (= s!2326 lt!2404606)))))

(declare-fun lt!2404601 () tuple2!66824)

(declare-fun ++!14568 (List!65598 List!65598) List!65598)

(assert (=> b!6556586 (= lt!2404606 (++!14568 (_1!36715 lt!2404601) (_2!36715 lt!2404601)))))

(declare-datatypes ((Option!16324 0))(
  ( (None!16323) (Some!16323 (v!52508 tuple2!66824)) )
))
(declare-fun lt!2404581 () Option!16324)

(declare-fun get!22731 (Option!16324) tuple2!66824)

(assert (=> b!6556586 (= lt!2404601 (get!22731 lt!2404581))))

(declare-fun isDefined!13027 (Option!16324) Bool)

(assert (=> b!6556586 (isDefined!13027 lt!2404581)))

(declare-fun lt!2404597 () (InoxSet Context!11634))

(declare-fun lt!2404621 () (InoxSet Context!11634))

(declare-fun findConcatSeparationZippers!198 ((InoxSet Context!11634) (InoxSet Context!11634) List!65598 List!65598 List!65598) Option!16324)

(assert (=> b!6556586 (= lt!2404581 (findConcatSeparationZippers!198 lt!2404597 lt!2404621 Nil!65474 s!2326 s!2326))))

(declare-fun lt!2404607 () Unit!159067)

(declare-fun lt!2404612 () Context!11634)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!198 ((InoxSet Context!11634) Context!11634 List!65598) Unit!159067)

(assert (=> b!6556586 (= lt!2404607 (lemmaConcatZipperMatchesStringThenFindConcatDefined!198 lt!2404597 lt!2404612 s!2326))))

(declare-fun b!6556587 () Bool)

(declare-fun res!2690262 () Bool)

(declare-fun e!3969349 () Bool)

(assert (=> b!6556587 (=> res!2690262 e!3969349)))

(declare-fun lt!2404603 () Bool)

(declare-fun lt!2404634 () Bool)

(assert (=> b!6556587 (= res!2690262 (or (not lt!2404603) (not lt!2404634)))))

(declare-fun e!3969364 () Bool)

(assert (=> b!6556588 (= e!3969369 e!3969364)))

(declare-fun res!2690266 () Bool)

(assert (=> b!6556588 (=> res!2690266 e!3969364)))

(declare-fun lt!2404635 () Bool)

(declare-fun lt!2404610 () Bool)

(assert (=> b!6556588 (= res!2690266 (or (not (= lt!2404610 lt!2404635)) ((_ is Nil!65474) s!2326)))))

(declare-fun Exists!3503 (Int) Bool)

(assert (=> b!6556588 (= (Exists!3503 lambda!364496) (Exists!3503 lambda!364497))))

(declare-fun lt!2404589 () Unit!159067)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2040 (Regex!16433 Regex!16433 List!65598) Unit!159067)

(assert (=> b!6556588 (= lt!2404589 (lemmaExistCutMatchRandMatchRSpecEquivalent!2040 (regOne!33378 r!7292) (regTwo!33378 r!7292) s!2326))))

(assert (=> b!6556588 (= lt!2404635 (Exists!3503 lambda!364496))))

(declare-fun findConcatSeparation!2738 (Regex!16433 Regex!16433 List!65598 List!65598 List!65598) Option!16324)

(assert (=> b!6556588 (= lt!2404635 (isDefined!13027 (findConcatSeparation!2738 (regOne!33378 r!7292) (regTwo!33378 r!7292) Nil!65474 s!2326 s!2326)))))

(declare-fun lt!2404599 () Unit!159067)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2502 (Regex!16433 Regex!16433 List!65598) Unit!159067)

(assert (=> b!6556588 (= lt!2404599 (lemmaFindConcatSeparationEquivalentToExists!2502 (regOne!33378 r!7292) (regTwo!33378 r!7292) s!2326))))

(declare-fun b!6556589 () Bool)

(declare-fun e!3969356 () Bool)

(declare-fun e!3969347 () Bool)

(assert (=> b!6556589 (= e!3969356 e!3969347)))

(declare-fun res!2690272 () Bool)

(assert (=> b!6556589 (=> res!2690272 e!3969347)))

(declare-datatypes ((List!65600 0))(
  ( (Nil!65476) (Cons!65476 (h!71924 Context!11634) (t!379242 List!65600)) )
))
(declare-fun lt!2404622 () List!65600)

(declare-fun lt!2404611 () Regex!16433)

(declare-fun unfocusZipper!2175 (List!65600) Regex!16433)

(assert (=> b!6556589 (= res!2690272 (not (= (unfocusZipper!2175 lt!2404622) lt!2404611)))))

(assert (=> b!6556589 (= lt!2404622 (Cons!65476 lt!2404612 Nil!65476))))

(declare-fun b!6556590 () Bool)

(declare-fun res!2690254 () Bool)

(assert (=> b!6556590 (=> res!2690254 e!3969369)))

(declare-fun zl!343 () List!65600)

(declare-fun isEmpty!37709 (List!65600) Bool)

(assert (=> b!6556590 (= res!2690254 (not (isEmpty!37709 (t!379242 zl!343))))))

(declare-fun b!6556591 () Bool)

(declare-fun e!3969350 () Bool)

(declare-fun lt!2404626 () Bool)

(assert (=> b!6556591 (= e!3969350 lt!2404626)))

(declare-fun b!6556592 () Bool)

(declare-fun e!3969370 () Bool)

(declare-fun e!3969348 () Bool)

(assert (=> b!6556592 (= e!3969370 e!3969348)))

(declare-fun res!2690252 () Bool)

(assert (=> b!6556592 (=> res!2690252 e!3969348)))

(declare-fun lt!2404620 () (InoxSet Context!11634))

(assert (=> b!6556592 (= res!2690252 (not (= lt!2404634 (matchZipper!2445 lt!2404620 (t!379240 s!2326)))))))

(declare-fun lt!2404633 () (InoxSet Context!11634))

(assert (=> b!6556592 (= lt!2404634 (matchZipper!2445 lt!2404633 s!2326))))

(declare-fun b!6556593 () Bool)

(declare-fun res!2690275 () Bool)

(assert (=> b!6556593 (=> res!2690275 e!3969346)))

(assert (=> b!6556593 (= res!2690275 (not (matchZipper!2445 lt!2404597 (_1!36715 lt!2404601))))))

(declare-fun e!3969365 () Bool)

(declare-fun e!3969344 () Bool)

(declare-fun tp!1812115 () Bool)

(declare-fun b!6556594 () Bool)

(declare-fun inv!84329 (Context!11634) Bool)

(assert (=> b!6556594 (= e!3969344 (and (inv!84329 (h!71924 zl!343)) e!3969365 tp!1812115))))

(declare-fun b!6556595 () Bool)

(declare-fun res!2690273 () Bool)

(assert (=> b!6556595 (=> res!2690273 e!3969369)))

(declare-fun generalisedUnion!2277 (List!65599) Regex!16433)

(declare-fun unfocusZipperList!1854 (List!65600) List!65599)

(assert (=> b!6556595 (= res!2690273 (not (= r!7292 (generalisedUnion!2277 (unfocusZipperList!1854 zl!343)))))))

(declare-fun e!3969368 () Bool)

(assert (=> b!6556596 (= e!3969346 e!3969368)))

(declare-fun res!2690249 () Bool)

(assert (=> b!6556596 (=> res!2690249 e!3969368)))

(declare-fun matchR!8616 (Regex!16433 List!65598) Bool)

(assert (=> b!6556596 (= res!2690249 (not (matchR!8616 lt!2404586 (_1!36715 lt!2404638))))))

(declare-fun lt!2404630 () Option!16324)

(assert (=> b!6556596 (= lt!2404638 (get!22731 lt!2404630))))

(assert (=> b!6556596 (= (Exists!3503 lambda!364501) (Exists!3503 lambda!364502))))

(declare-fun lt!2404636 () Unit!159067)

(assert (=> b!6556596 (= lt!2404636 (lemmaExistCutMatchRandMatchRSpecEquivalent!2040 lt!2404586 (regTwo!33378 r!7292) s!2326))))

(assert (=> b!6556596 (= (isDefined!13027 lt!2404630) (Exists!3503 lambda!364501))))

(assert (=> b!6556596 (= lt!2404630 (findConcatSeparation!2738 lt!2404586 (regTwo!33378 r!7292) Nil!65474 s!2326 s!2326))))

(declare-fun lt!2404627 () Unit!159067)

(assert (=> b!6556596 (= lt!2404627 (lemmaFindConcatSeparationEquivalentToExists!2502 lt!2404586 (regTwo!33378 r!7292) s!2326))))

(declare-fun lt!2404616 () Regex!16433)

(declare-fun matchRSpec!3534 (Regex!16433 List!65598) Bool)

(assert (=> b!6556596 (matchRSpec!3534 lt!2404616 s!2326)))

(declare-fun lt!2404585 () Unit!159067)

(declare-fun mainMatchTheorem!3534 (Regex!16433 List!65598) Unit!159067)

(assert (=> b!6556596 (= lt!2404585 (mainMatchTheorem!3534 lt!2404616 s!2326))))

(assert (=> b!6556596 (matchR!8616 lt!2404616 s!2326)))

(assert (=> b!6556596 (= lt!2404616 (Concat!25278 lt!2404586 (regTwo!33378 r!7292)))))

(assert (=> b!6556596 (= lt!2404586 (Concat!25278 (reg!16762 (regOne!33378 r!7292)) lt!2404592))))

(declare-fun lt!2404598 () Unit!159067)

(declare-fun lemmaConcatAssociative!130 (Regex!16433 Regex!16433 Regex!16433 List!65598) Unit!159067)

(assert (=> b!6556596 (= lt!2404598 (lemmaConcatAssociative!130 (reg!16762 (regOne!33378 r!7292)) lt!2404592 (regTwo!33378 r!7292) s!2326))))

(assert (=> b!6556596 e!3969350))

(declare-fun res!2690260 () Bool)

(assert (=> b!6556596 (=> (not res!2690260) (not e!3969350))))

(declare-fun lt!2404594 () Regex!16433)

(assert (=> b!6556596 (= res!2690260 (matchR!8616 lt!2404594 lt!2404606))))

(declare-fun lt!2404608 () Unit!159067)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!354 (Regex!16433 Regex!16433 List!65598 List!65598) Unit!159067)

(assert (=> b!6556596 (= lt!2404608 (lemmaTwoRegexMatchThenConcatMatchesConcatString!354 (reg!16762 (regOne!33378 r!7292)) lt!2404611 (_1!36715 lt!2404601) (_2!36715 lt!2404601)))))

(assert (=> b!6556596 (matchR!8616 lt!2404611 (_2!36715 lt!2404601))))

(declare-fun lt!2404590 () Unit!159067)

(declare-fun theoremZipperRegexEquiv!869 ((InoxSet Context!11634) List!65600 Regex!16433 List!65598) Unit!159067)

(assert (=> b!6556596 (= lt!2404590 (theoremZipperRegexEquiv!869 lt!2404621 lt!2404622 lt!2404611 (_2!36715 lt!2404601)))))

(assert (=> b!6556596 (matchR!8616 (reg!16762 (regOne!33378 r!7292)) (_1!36715 lt!2404601))))

(declare-fun lt!2404623 () Unit!159067)

(declare-fun lt!2404625 () List!65600)

(assert (=> b!6556596 (= lt!2404623 (theoremZipperRegexEquiv!869 lt!2404597 lt!2404625 (reg!16762 (regOne!33378 r!7292)) (_1!36715 lt!2404601)))))

(declare-fun lt!2404624 () List!65599)

(declare-fun lt!2404588 () List!65599)

(declare-fun ++!14569 (List!65599 List!65599) List!65599)

(assert (=> b!6556596 (matchZipper!2445 (store ((as const (Array Context!11634 Bool)) false) (Context!11635 (++!14569 lt!2404624 lt!2404588)) true) lt!2404606)))

(declare-fun lt!2404615 () Unit!159067)

(declare-fun lambda!364500 () Int)

(declare-fun lemmaConcatPreservesForall!406 (List!65599 List!65599 Int) Unit!159067)

(assert (=> b!6556596 (= lt!2404615 (lemmaConcatPreservesForall!406 lt!2404624 lt!2404588 lambda!364500))))

(declare-fun lt!2404618 () Context!11634)

(declare-fun lt!2404583 () Unit!159067)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!214 (Context!11634 Context!11634 List!65598 List!65598) Unit!159067)

(assert (=> b!6556596 (= lt!2404583 (lemmaConcatenateContextMatchesConcatOfStrings!214 lt!2404618 lt!2404612 (_1!36715 lt!2404601) (_2!36715 lt!2404601)))))

(declare-fun b!6556597 () Bool)

(declare-fun e!3969359 () Bool)

(assert (=> b!6556597 (= e!3969348 e!3969359)))

(declare-fun res!2690271 () Bool)

(assert (=> b!6556597 (=> res!2690271 e!3969359)))

(assert (=> b!6556597 (= res!2690271 (not (= r!7292 lt!2404611)))))

(assert (=> b!6556597 (= lt!2404611 (Concat!25278 lt!2404592 (regTwo!33378 r!7292)))))

(declare-fun b!6556598 () Bool)

(declare-fun e!3969362 () Bool)

(assert (=> b!6556598 (= e!3969362 (not (matchZipper!2445 lt!2404593 (t!379240 s!2326))))))

(declare-fun b!6556599 () Bool)

(declare-fun e!3969361 () Bool)

(declare-fun e!3969367 () Bool)

(assert (=> b!6556599 (= e!3969361 e!3969367)))

(declare-fun res!2690277 () Bool)

(assert (=> b!6556599 (=> res!2690277 e!3969367)))

(declare-fun lt!2404632 () (InoxSet Context!11634))

(declare-fun lt!2404595 () (InoxSet Context!11634))

(assert (=> b!6556599 (= res!2690277 (not (= lt!2404632 lt!2404595)))))

(declare-fun derivationStepZipperDown!1681 (Regex!16433 Context!11634 C!33136) (InoxSet Context!11634))

(assert (=> b!6556599 (= lt!2404595 (derivationStepZipperDown!1681 (reg!16762 (regOne!33378 r!7292)) lt!2404612 (h!71922 s!2326)))))

(assert (=> b!6556599 (= lt!2404612 (Context!11635 lt!2404588))))

(assert (=> b!6556599 (= lt!2404588 (Cons!65475 lt!2404592 (t!379241 (exprs!6317 (h!71924 zl!343)))))))

(assert (=> b!6556599 (= lt!2404592 (Star!16433 (reg!16762 (regOne!33378 r!7292))))))

(declare-fun b!6556600 () Bool)

(declare-fun e!3969354 () Bool)

(declare-fun tp!1812110 () Bool)

(assert (=> b!6556600 (= e!3969354 tp!1812110)))

(assert (=> b!6556601 (= e!3969364 e!3969361)))

(declare-fun res!2690283 () Bool)

(assert (=> b!6556601 (=> res!2690283 e!3969361)))

(assert (=> b!6556601 (= res!2690283 (or (and ((_ is ElementMatch!16433) (regOne!33378 r!7292)) (= (c!1204578 (regOne!33378 r!7292)) (h!71922 s!2326))) ((_ is Union!16433) (regOne!33378 r!7292))))))

(declare-fun lt!2404580 () Unit!159067)

(assert (=> b!6556601 (= lt!2404580 e!3969357)))

(declare-fun c!1204577 () Bool)

(declare-fun lt!2404628 () Bool)

(assert (=> b!6556601 (= c!1204577 lt!2404628)))

(assert (=> b!6556601 (= lt!2404628 (nullable!6426 (h!71923 (exprs!6317 (h!71924 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!11634))

(declare-fun lambda!364498 () Int)

(declare-fun flatMap!1938 ((InoxSet Context!11634) Int) (InoxSet Context!11634))

(declare-fun derivationStepZipperUp!1607 (Context!11634 C!33136) (InoxSet Context!11634))

(assert (=> b!6556601 (= (flatMap!1938 z!1189 lambda!364498) (derivationStepZipperUp!1607 (h!71924 zl!343) (h!71922 s!2326)))))

(declare-fun lt!2404596 () Unit!159067)

(declare-fun lemmaFlatMapOnSingletonSet!1464 ((InoxSet Context!11634) Context!11634 Int) Unit!159067)

(assert (=> b!6556601 (= lt!2404596 (lemmaFlatMapOnSingletonSet!1464 z!1189 (h!71924 zl!343) lambda!364498))))

(declare-fun lt!2404602 () Context!11634)

(assert (=> b!6556601 (= lt!2404593 (derivationStepZipperUp!1607 lt!2404602 (h!71922 s!2326)))))

(assert (=> b!6556601 (= lt!2404632 (derivationStepZipperDown!1681 (h!71923 (exprs!6317 (h!71924 zl!343))) lt!2404602 (h!71922 s!2326)))))

(assert (=> b!6556601 (= lt!2404602 (Context!11635 (t!379241 (exprs!6317 (h!71924 zl!343)))))))

(declare-fun lt!2404604 () (InoxSet Context!11634))

(assert (=> b!6556601 (= lt!2404604 (derivationStepZipperUp!1607 (Context!11635 (Cons!65475 (h!71923 (exprs!6317 (h!71924 zl!343))) (t!379241 (exprs!6317 (h!71924 zl!343))))) (h!71922 s!2326)))))

(declare-fun b!6556602 () Bool)

(declare-fun e!3969360 () Bool)

(assert (=> b!6556602 (= e!3969359 e!3969360)))

(declare-fun res!2690284 () Bool)

(assert (=> b!6556602 (=> res!2690284 e!3969360)))

(declare-fun lt!2404614 () Context!11634)

(assert (=> b!6556602 (= res!2690284 (not (= (unfocusZipper!2175 (Cons!65476 lt!2404614 Nil!65476)) lt!2404594)))))

(assert (=> b!6556602 (= lt!2404594 (Concat!25278 (reg!16762 (regOne!33378 r!7292)) lt!2404611))))

(declare-fun b!6556603 () Bool)

(declare-fun res!2690261 () Bool)

(assert (=> b!6556603 (=> res!2690261 e!3969369)))

(assert (=> b!6556603 (= res!2690261 (not ((_ is Cons!65475) (exprs!6317 (h!71924 zl!343)))))))

(declare-fun res!2690257 () Bool)

(declare-fun e!3969353 () Bool)

(assert (=> start!642518 (=> (not res!2690257) (not e!3969353))))

(declare-fun validRegex!8169 (Regex!16433) Bool)

(assert (=> start!642518 (= res!2690257 (validRegex!8169 r!7292))))

(assert (=> start!642518 e!3969353))

(assert (=> start!642518 e!3969352))

(declare-fun condSetEmpty!44754 () Bool)

(assert (=> start!642518 (= condSetEmpty!44754 (= z!1189 ((as const (Array Context!11634 Bool)) false)))))

(assert (=> start!642518 setRes!44754))

(assert (=> start!642518 e!3969344))

(declare-fun e!3969355 () Bool)

(assert (=> start!642518 e!3969355))

(declare-fun b!6556604 () Bool)

(declare-fun tp!1812117 () Bool)

(assert (=> b!6556604 (= e!3969365 tp!1812117)))

(declare-fun b!6556605 () Bool)

(assert (=> b!6556605 (= e!3969367 e!3969370)))

(declare-fun res!2690270 () Bool)

(assert (=> b!6556605 (=> res!2690270 e!3969370)))

(assert (=> b!6556605 (= res!2690270 (not (= lt!2404620 lt!2404595)))))

(assert (=> b!6556605 (= (flatMap!1938 lt!2404633 lambda!364498) (derivationStepZipperUp!1607 lt!2404614 (h!71922 s!2326)))))

(declare-fun lt!2404617 () Unit!159067)

(assert (=> b!6556605 (= lt!2404617 (lemmaFlatMapOnSingletonSet!1464 lt!2404633 lt!2404614 lambda!364498))))

(declare-fun lt!2404609 () (InoxSet Context!11634))

(assert (=> b!6556605 (= lt!2404609 (derivationStepZipperUp!1607 lt!2404614 (h!71922 s!2326)))))

(declare-fun derivationStepZipper!2399 ((InoxSet Context!11634) C!33136) (InoxSet Context!11634))

(assert (=> b!6556605 (= lt!2404620 (derivationStepZipper!2399 lt!2404633 (h!71922 s!2326)))))

(assert (=> b!6556605 (= lt!2404633 (store ((as const (Array Context!11634 Bool)) false) lt!2404614 true))))

(assert (=> b!6556605 (= lt!2404614 (Context!11635 (Cons!65475 (reg!16762 (regOne!33378 r!7292)) lt!2404588)))))

(declare-fun b!6556606 () Bool)

(declare-fun res!2690250 () Bool)

(assert (=> b!6556606 (=> (not res!2690250) (not e!3969353))))

(declare-fun toList!10217 ((InoxSet Context!11634)) List!65600)

(assert (=> b!6556606 (= res!2690250 (= (toList!10217 z!1189) zl!343))))

(declare-fun b!6556607 () Bool)

(declare-fun res!2690274 () Bool)

(assert (=> b!6556607 (=> res!2690274 e!3969346)))

(assert (=> b!6556607 (= res!2690274 (not (matchZipper!2445 lt!2404621 (_2!36715 lt!2404601))))))

(assert (=> b!6556608 (= e!3969368 (validRegex!8169 (reg!16762 (regOne!33378 r!7292))))))

(assert (=> b!6556608 (= (isDefined!13027 (findConcatSeparation!2738 (reg!16762 (regOne!33378 r!7292)) lt!2404592 Nil!65474 (_1!36715 lt!2404638) (_1!36715 lt!2404638))) (Exists!3503 lambda!364503))))

(declare-fun lt!2404637 () Unit!159067)

(assert (=> b!6556608 (= lt!2404637 (lemmaFindConcatSeparationEquivalentToExists!2502 (reg!16762 (regOne!33378 r!7292)) lt!2404592 (_1!36715 lt!2404638)))))

(assert (=> b!6556608 (matchRSpec!3534 lt!2404586 (_1!36715 lt!2404638))))

(declare-fun lt!2404582 () Unit!159067)

(assert (=> b!6556608 (= lt!2404582 (mainMatchTheorem!3534 lt!2404586 (_1!36715 lt!2404638)))))

(declare-fun b!6556609 () Bool)

(declare-fun res!2690253 () Bool)

(assert (=> b!6556609 (=> res!2690253 e!3969364)))

(declare-fun isEmpty!37710 (List!65599) Bool)

(assert (=> b!6556609 (= res!2690253 (isEmpty!37710 (t!379241 (exprs!6317 (h!71924 zl!343)))))))

(declare-fun setElem!44754 () Context!11634)

(declare-fun setNonEmpty!44754 () Bool)

(declare-fun tp!1812118 () Bool)

(assert (=> setNonEmpty!44754 (= setRes!44754 (and tp!1812118 (inv!84329 setElem!44754) e!3969354))))

(declare-fun setRest!44754 () (InoxSet Context!11634))

(assert (=> setNonEmpty!44754 (= z!1189 ((_ map or) (store ((as const (Array Context!11634 Bool)) false) setElem!44754 true) setRest!44754))))

(declare-fun b!6556610 () Bool)

(declare-fun res!2690267 () Bool)

(assert (=> b!6556610 (=> res!2690267 e!3969348)))

(declare-fun lt!2404631 () Regex!16433)

(assert (=> b!6556610 (= res!2690267 (not (= lt!2404631 r!7292)))))

(assert (=> b!6556611 (= e!3969349 e!3969363)))

(declare-fun res!2690256 () Bool)

(assert (=> b!6556611 (=> res!2690256 e!3969363)))

(declare-fun appendTo!194 ((InoxSet Context!11634) Context!11634) (InoxSet Context!11634))

(assert (=> b!6556611 (= res!2690256 (not (= (appendTo!194 lt!2404597 lt!2404612) lt!2404633)))))

(declare-fun lambda!364499 () Int)

(declare-fun map!14958 ((InoxSet Context!11634) Int) (InoxSet Context!11634))

(assert (=> b!6556611 (= (map!14958 lt!2404597 lambda!364499) (store ((as const (Array Context!11634 Bool)) false) (Context!11635 (++!14569 lt!2404624 lt!2404588)) true))))

(declare-fun lt!2404579 () Unit!159067)

(assert (=> b!6556611 (= lt!2404579 (lemmaConcatPreservesForall!406 lt!2404624 lt!2404588 lambda!364500))))

(declare-fun lt!2404605 () Unit!159067)

(declare-fun lemmaMapOnSingletonSet!216 ((InoxSet Context!11634) Context!11634 Int) Unit!159067)

(assert (=> b!6556611 (= lt!2404605 (lemmaMapOnSingletonSet!216 lt!2404597 lt!2404618 lambda!364499))))

(declare-fun b!6556612 () Bool)

(declare-fun res!2690269 () Bool)

(assert (=> b!6556612 (=> res!2690269 e!3969369)))

(declare-fun generalisedConcat!2030 (List!65599) Regex!16433)

(assert (=> b!6556612 (= res!2690269 (not (= r!7292 (generalisedConcat!2030 (exprs!6317 (h!71924 zl!343))))))))

(declare-fun b!6556613 () Bool)

(declare-fun res!2690276 () Bool)

(assert (=> b!6556613 (=> res!2690276 e!3969361)))

(assert (=> b!6556613 (= res!2690276 (or ((_ is Concat!25278) (regOne!33378 r!7292)) (not ((_ is Star!16433) (regOne!33378 r!7292)))))))

(declare-fun b!6556614 () Bool)

(declare-fun e!3969366 () Bool)

(assert (=> b!6556614 (= e!3969366 e!3969349)))

(declare-fun res!2690279 () Bool)

(assert (=> b!6556614 (=> res!2690279 e!3969349)))

(assert (=> b!6556614 (= res!2690279 e!3969362)))

(declare-fun res!2690278 () Bool)

(assert (=> b!6556614 (=> (not res!2690278) (not e!3969362))))

(assert (=> b!6556614 (= res!2690278 (not lt!2404603))))

(assert (=> b!6556614 (= lt!2404603 (matchZipper!2445 lt!2404632 (t!379240 s!2326)))))

(declare-fun b!6556615 () Bool)

(declare-fun tp_is_empty!42119 () Bool)

(assert (=> b!6556615 (= e!3969352 tp_is_empty!42119)))

(declare-fun b!6556616 () Bool)

(declare-fun e!3969358 () Bool)

(assert (=> b!6556616 (= e!3969358 (not e!3969369))))

(declare-fun res!2690268 () Bool)

(assert (=> b!6556616 (=> res!2690268 e!3969369)))

(assert (=> b!6556616 (= res!2690268 (not ((_ is Cons!65476) zl!343)))))

(assert (=> b!6556616 (= lt!2404610 (matchRSpec!3534 r!7292 s!2326))))

(assert (=> b!6556616 (= lt!2404610 (matchR!8616 r!7292 s!2326))))

(declare-fun lt!2404591 () Unit!159067)

(assert (=> b!6556616 (= lt!2404591 (mainMatchTheorem!3534 r!7292 s!2326))))

(declare-fun b!6556617 () Bool)

(declare-fun tp!1812119 () Bool)

(assert (=> b!6556617 (= e!3969355 (and tp_is_empty!42119 tp!1812119))))

(declare-fun b!6556618 () Bool)

(declare-fun res!2690264 () Bool)

(assert (=> b!6556618 (=> res!2690264 e!3969366)))

(assert (=> b!6556618 (= res!2690264 (not (matchZipper!2445 z!1189 s!2326)))))

(declare-fun b!6556619 () Bool)

(assert (=> b!6556619 (= e!3969347 e!3969366)))

(declare-fun res!2690255 () Bool)

(assert (=> b!6556619 (=> res!2690255 e!3969366)))

(assert (=> b!6556619 (= res!2690255 lt!2404610)))

(assert (=> b!6556619 (= lt!2404626 (matchRSpec!3534 lt!2404594 s!2326))))

(assert (=> b!6556619 (= lt!2404626 (matchR!8616 lt!2404594 s!2326))))

(declare-fun lt!2404600 () Unit!159067)

(assert (=> b!6556619 (= lt!2404600 (mainMatchTheorem!3534 lt!2404594 s!2326))))

(declare-fun b!6556620 () Bool)

(declare-fun res!2690263 () Bool)

(assert (=> b!6556620 (=> res!2690263 e!3969366)))

(assert (=> b!6556620 (= res!2690263 (not lt!2404628))))

(declare-fun b!6556621 () Bool)

(assert (=> b!6556621 (= e!3969353 e!3969358)))

(declare-fun res!2690281 () Bool)

(assert (=> b!6556621 (=> (not res!2690281) (not e!3969358))))

(assert (=> b!6556621 (= res!2690281 (= r!7292 lt!2404631))))

(assert (=> b!6556621 (= lt!2404631 (unfocusZipper!2175 zl!343))))

(declare-fun b!6556622 () Bool)

(declare-fun tp!1812114 () Bool)

(assert (=> b!6556622 (= e!3969352 tp!1812114)))

(declare-fun b!6556623 () Bool)

(assert (=> b!6556623 (= e!3969360 e!3969356)))

(declare-fun res!2690282 () Bool)

(assert (=> b!6556623 (=> res!2690282 e!3969356)))

(assert (=> b!6556623 (= res!2690282 (not (= (unfocusZipper!2175 lt!2404625) (reg!16762 (regOne!33378 r!7292)))))))

(assert (=> b!6556623 (= lt!2404625 (Cons!65476 lt!2404618 Nil!65476))))

(assert (=> b!6556623 (= (flatMap!1938 lt!2404621 lambda!364498) (derivationStepZipperUp!1607 lt!2404612 (h!71922 s!2326)))))

(declare-fun lt!2404619 () Unit!159067)

(assert (=> b!6556623 (= lt!2404619 (lemmaFlatMapOnSingletonSet!1464 lt!2404621 lt!2404612 lambda!364498))))

(assert (=> b!6556623 (= (flatMap!1938 lt!2404597 lambda!364498) (derivationStepZipperUp!1607 lt!2404618 (h!71922 s!2326)))))

(declare-fun lt!2404629 () Unit!159067)

(assert (=> b!6556623 (= lt!2404629 (lemmaFlatMapOnSingletonSet!1464 lt!2404597 lt!2404618 lambda!364498))))

(declare-fun lt!2404613 () (InoxSet Context!11634))

(assert (=> b!6556623 (= lt!2404613 (derivationStepZipperUp!1607 lt!2404612 (h!71922 s!2326)))))

(declare-fun lt!2404584 () (InoxSet Context!11634))

(assert (=> b!6556623 (= lt!2404584 (derivationStepZipperUp!1607 lt!2404618 (h!71922 s!2326)))))

(assert (=> b!6556623 (= lt!2404621 (store ((as const (Array Context!11634 Bool)) false) lt!2404612 true))))

(assert (=> b!6556623 (= lt!2404597 (store ((as const (Array Context!11634 Bool)) false) lt!2404618 true))))

(assert (=> b!6556623 (= lt!2404618 (Context!11635 lt!2404624))))

(assert (=> b!6556623 (= lt!2404624 (Cons!65475 (reg!16762 (regOne!33378 r!7292)) Nil!65475))))

(declare-fun b!6556624 () Bool)

(declare-fun Unit!159070 () Unit!159067)

(assert (=> b!6556624 (= e!3969357 Unit!159070)))

(declare-fun lt!2404587 () Unit!159067)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1264 ((InoxSet Context!11634) (InoxSet Context!11634) List!65598) Unit!159067)

(assert (=> b!6556624 (= lt!2404587 (lemmaZipperConcatMatchesSameAsBothZippers!1264 lt!2404632 lt!2404593 (t!379240 s!2326)))))

(declare-fun res!2690251 () Bool)

(assert (=> b!6556624 (= res!2690251 (matchZipper!2445 lt!2404632 (t!379240 s!2326)))))

(assert (=> b!6556624 (=> res!2690251 e!3969345)))

(assert (=> b!6556624 (= (matchZipper!2445 ((_ map or) lt!2404632 lt!2404593) (t!379240 s!2326)) e!3969345)))

(declare-fun b!6556625 () Bool)

(declare-fun tp!1812116 () Bool)

(declare-fun tp!1812112 () Bool)

(assert (=> b!6556625 (= e!3969352 (and tp!1812116 tp!1812112))))

(declare-fun b!6556626 () Bool)

(declare-fun res!2690258 () Bool)

(assert (=> b!6556626 (=> res!2690258 e!3969361)))

(assert (=> b!6556626 (= res!2690258 e!3969351)))

(declare-fun res!2690265 () Bool)

(assert (=> b!6556626 (=> (not res!2690265) (not e!3969351))))

(assert (=> b!6556626 (= res!2690265 ((_ is Concat!25278) (regOne!33378 r!7292)))))

(assert (= (and start!642518 res!2690257) b!6556606))

(assert (= (and b!6556606 res!2690250) b!6556621))

(assert (= (and b!6556621 res!2690281) b!6556616))

(assert (= (and b!6556616 (not res!2690268)) b!6556590))

(assert (= (and b!6556590 (not res!2690254)) b!6556612))

(assert (= (and b!6556612 (not res!2690269)) b!6556603))

(assert (= (and b!6556603 (not res!2690261)) b!6556595))

(assert (= (and b!6556595 (not res!2690273)) b!6556584))

(assert (= (and b!6556584 (not res!2690259)) b!6556588))

(assert (= (and b!6556588 (not res!2690266)) b!6556609))

(assert (= (and b!6556609 (not res!2690253)) b!6556601))

(assert (= (and b!6556601 c!1204577) b!6556624))

(assert (= (and b!6556601 (not c!1204577)) b!6556582))

(assert (= (and b!6556624 (not res!2690251)) b!6556581))

(assert (= (and b!6556601 (not res!2690283)) b!6556626))

(assert (= (and b!6556626 res!2690265) b!6556585))

(assert (= (and b!6556626 (not res!2690258)) b!6556613))

(assert (= (and b!6556613 (not res!2690276)) b!6556599))

(assert (= (and b!6556599 (not res!2690277)) b!6556605))

(assert (= (and b!6556605 (not res!2690270)) b!6556592))

(assert (= (and b!6556592 (not res!2690252)) b!6556610))

(assert (= (and b!6556610 (not res!2690267)) b!6556597))

(assert (= (and b!6556597 (not res!2690271)) b!6556602))

(assert (= (and b!6556602 (not res!2690284)) b!6556623))

(assert (= (and b!6556623 (not res!2690282)) b!6556589))

(assert (= (and b!6556589 (not res!2690272)) b!6556619))

(assert (= (and b!6556619 (not res!2690255)) b!6556618))

(assert (= (and b!6556618 (not res!2690264)) b!6556620))

(assert (= (and b!6556620 (not res!2690263)) b!6556614))

(assert (= (and b!6556614 res!2690278) b!6556598))

(assert (= (and b!6556614 (not res!2690279)) b!6556587))

(assert (= (and b!6556587 (not res!2690262)) b!6556611))

(assert (= (and b!6556611 (not res!2690256)) b!6556586))

(assert (= (and b!6556586 (not res!2690280)) b!6556593))

(assert (= (and b!6556593 (not res!2690275)) b!6556607))

(assert (= (and b!6556607 (not res!2690274)) b!6556596))

(assert (= (and b!6556596 res!2690260) b!6556591))

(assert (= (and b!6556596 (not res!2690249)) b!6556608))

(assert (= (and start!642518 ((_ is ElementMatch!16433) r!7292)) b!6556615))

(assert (= (and start!642518 ((_ is Concat!25278) r!7292)) b!6556583))

(assert (= (and start!642518 ((_ is Star!16433) r!7292)) b!6556622))

(assert (= (and start!642518 ((_ is Union!16433) r!7292)) b!6556625))

(assert (= (and start!642518 condSetEmpty!44754) setIsEmpty!44754))

(assert (= (and start!642518 (not condSetEmpty!44754)) setNonEmpty!44754))

(assert (= setNonEmpty!44754 b!6556600))

(assert (= b!6556594 b!6556604))

(assert (= (and start!642518 ((_ is Cons!65476) zl!343)) b!6556594))

(assert (= (and start!642518 ((_ is Cons!65474) s!2326)) b!6556617))

(declare-fun m!7338644 () Bool)

(assert (=> b!6556623 m!7338644))

(declare-fun m!7338646 () Bool)

(assert (=> b!6556623 m!7338646))

(declare-fun m!7338648 () Bool)

(assert (=> b!6556623 m!7338648))

(declare-fun m!7338650 () Bool)

(assert (=> b!6556623 m!7338650))

(declare-fun m!7338652 () Bool)

(assert (=> b!6556623 m!7338652))

(declare-fun m!7338654 () Bool)

(assert (=> b!6556623 m!7338654))

(declare-fun m!7338656 () Bool)

(assert (=> b!6556623 m!7338656))

(declare-fun m!7338658 () Bool)

(assert (=> b!6556623 m!7338658))

(declare-fun m!7338660 () Bool)

(assert (=> b!6556623 m!7338660))

(declare-fun m!7338662 () Bool)

(assert (=> b!6556619 m!7338662))

(declare-fun m!7338664 () Bool)

(assert (=> b!6556619 m!7338664))

(declare-fun m!7338666 () Bool)

(assert (=> b!6556619 m!7338666))

(declare-fun m!7338668 () Bool)

(assert (=> b!6556588 m!7338668))

(declare-fun m!7338670 () Bool)

(assert (=> b!6556588 m!7338670))

(declare-fun m!7338672 () Bool)

(assert (=> b!6556588 m!7338672))

(declare-fun m!7338674 () Bool)

(assert (=> b!6556588 m!7338674))

(assert (=> b!6556588 m!7338670))

(declare-fun m!7338676 () Bool)

(assert (=> b!6556588 m!7338676))

(assert (=> b!6556588 m!7338672))

(declare-fun m!7338678 () Bool)

(assert (=> b!6556588 m!7338678))

(declare-fun m!7338680 () Bool)

(assert (=> b!6556605 m!7338680))

(declare-fun m!7338682 () Bool)

(assert (=> b!6556605 m!7338682))

(declare-fun m!7338684 () Bool)

(assert (=> b!6556605 m!7338684))

(declare-fun m!7338686 () Bool)

(assert (=> b!6556605 m!7338686))

(declare-fun m!7338688 () Bool)

(assert (=> b!6556605 m!7338688))

(declare-fun m!7338690 () Bool)

(assert (=> b!6556601 m!7338690))

(declare-fun m!7338692 () Bool)

(assert (=> b!6556601 m!7338692))

(declare-fun m!7338694 () Bool)

(assert (=> b!6556601 m!7338694))

(declare-fun m!7338696 () Bool)

(assert (=> b!6556601 m!7338696))

(declare-fun m!7338698 () Bool)

(assert (=> b!6556601 m!7338698))

(declare-fun m!7338700 () Bool)

(assert (=> b!6556601 m!7338700))

(declare-fun m!7338702 () Bool)

(assert (=> b!6556601 m!7338702))

(declare-fun m!7338704 () Bool)

(assert (=> b!6556602 m!7338704))

(declare-fun m!7338706 () Bool)

(assert (=> b!6556606 m!7338706))

(declare-fun m!7338708 () Bool)

(assert (=> b!6556593 m!7338708))

(declare-fun m!7338710 () Bool)

(assert (=> b!6556581 m!7338710))

(declare-fun m!7338712 () Bool)

(assert (=> b!6556616 m!7338712))

(declare-fun m!7338714 () Bool)

(assert (=> b!6556616 m!7338714))

(declare-fun m!7338716 () Bool)

(assert (=> b!6556616 m!7338716))

(assert (=> b!6556598 m!7338710))

(declare-fun m!7338718 () Bool)

(assert (=> b!6556614 m!7338718))

(declare-fun m!7338720 () Bool)

(assert (=> b!6556609 m!7338720))

(declare-fun m!7338722 () Bool)

(assert (=> start!642518 m!7338722))

(declare-fun m!7338724 () Bool)

(assert (=> b!6556599 m!7338724))

(declare-fun m!7338726 () Bool)

(assert (=> b!6556611 m!7338726))

(declare-fun m!7338728 () Bool)

(assert (=> b!6556611 m!7338728))

(declare-fun m!7338730 () Bool)

(assert (=> b!6556611 m!7338730))

(declare-fun m!7338732 () Bool)

(assert (=> b!6556611 m!7338732))

(declare-fun m!7338734 () Bool)

(assert (=> b!6556611 m!7338734))

(declare-fun m!7338736 () Bool)

(assert (=> b!6556611 m!7338736))

(declare-fun m!7338738 () Bool)

(assert (=> b!6556621 m!7338738))

(declare-fun m!7338740 () Bool)

(assert (=> b!6556624 m!7338740))

(assert (=> b!6556624 m!7338718))

(declare-fun m!7338742 () Bool)

(assert (=> b!6556624 m!7338742))

(declare-fun m!7338744 () Bool)

(assert (=> b!6556594 m!7338744))

(declare-fun m!7338746 () Bool)

(assert (=> b!6556608 m!7338746))

(declare-fun m!7338748 () Bool)

(assert (=> b!6556608 m!7338748))

(declare-fun m!7338750 () Bool)

(assert (=> b!6556608 m!7338750))

(declare-fun m!7338752 () Bool)

(assert (=> b!6556608 m!7338752))

(assert (=> b!6556608 m!7338748))

(declare-fun m!7338754 () Bool)

(assert (=> b!6556608 m!7338754))

(declare-fun m!7338756 () Bool)

(assert (=> b!6556608 m!7338756))

(declare-fun m!7338758 () Bool)

(assert (=> b!6556608 m!7338758))

(declare-fun m!7338760 () Bool)

(assert (=> b!6556595 m!7338760))

(assert (=> b!6556595 m!7338760))

(declare-fun m!7338762 () Bool)

(assert (=> b!6556595 m!7338762))

(declare-fun m!7338764 () Bool)

(assert (=> b!6556586 m!7338764))

(declare-fun m!7338766 () Bool)

(assert (=> b!6556586 m!7338766))

(declare-fun m!7338768 () Bool)

(assert (=> b!6556586 m!7338768))

(declare-fun m!7338770 () Bool)

(assert (=> b!6556586 m!7338770))

(declare-fun m!7338772 () Bool)

(assert (=> b!6556586 m!7338772))

(declare-fun m!7338774 () Bool)

(assert (=> b!6556612 m!7338774))

(declare-fun m!7338776 () Bool)

(assert (=> b!6556592 m!7338776))

(declare-fun m!7338778 () Bool)

(assert (=> b!6556592 m!7338778))

(declare-fun m!7338780 () Bool)

(assert (=> b!6556596 m!7338780))

(assert (=> b!6556596 m!7338726))

(declare-fun m!7338782 () Bool)

(assert (=> b!6556596 m!7338782))

(declare-fun m!7338784 () Bool)

(assert (=> b!6556596 m!7338784))

(declare-fun m!7338786 () Bool)

(assert (=> b!6556596 m!7338786))

(declare-fun m!7338788 () Bool)

(assert (=> b!6556596 m!7338788))

(declare-fun m!7338790 () Bool)

(assert (=> b!6556596 m!7338790))

(declare-fun m!7338792 () Bool)

(assert (=> b!6556596 m!7338792))

(declare-fun m!7338794 () Bool)

(assert (=> b!6556596 m!7338794))

(declare-fun m!7338796 () Bool)

(assert (=> b!6556596 m!7338796))

(declare-fun m!7338798 () Bool)

(assert (=> b!6556596 m!7338798))

(assert (=> b!6556596 m!7338726))

(declare-fun m!7338800 () Bool)

(assert (=> b!6556596 m!7338800))

(declare-fun m!7338802 () Bool)

(assert (=> b!6556596 m!7338802))

(declare-fun m!7338804 () Bool)

(assert (=> b!6556596 m!7338804))

(assert (=> b!6556596 m!7338732))

(assert (=> b!6556596 m!7338804))

(declare-fun m!7338806 () Bool)

(assert (=> b!6556596 m!7338806))

(declare-fun m!7338808 () Bool)

(assert (=> b!6556596 m!7338808))

(declare-fun m!7338810 () Bool)

(assert (=> b!6556596 m!7338810))

(declare-fun m!7338812 () Bool)

(assert (=> b!6556596 m!7338812))

(assert (=> b!6556596 m!7338734))

(declare-fun m!7338814 () Bool)

(assert (=> b!6556596 m!7338814))

(declare-fun m!7338816 () Bool)

(assert (=> b!6556596 m!7338816))

(declare-fun m!7338818 () Bool)

(assert (=> b!6556596 m!7338818))

(declare-fun m!7338820 () Bool)

(assert (=> b!6556589 m!7338820))

(declare-fun m!7338822 () Bool)

(assert (=> setNonEmpty!44754 m!7338822))

(declare-fun m!7338824 () Bool)

(assert (=> b!6556618 m!7338824))

(declare-fun m!7338826 () Bool)

(assert (=> b!6556590 m!7338826))

(declare-fun m!7338828 () Bool)

(assert (=> b!6556585 m!7338828))

(declare-fun m!7338830 () Bool)

(assert (=> b!6556607 m!7338830))

(check-sat (not b!6556624) (not b!6556619) (not b!6556596) (not b!6556623) tp_is_empty!42119 (not b!6556588) (not b!6556586) (not b!6556607) (not b!6556617) (not b!6556581) (not b!6556609) (not b!6556606) (not b!6556602) (not b!6556599) (not setNonEmpty!44754) (not b!6556601) (not b!6556600) (not b!6556604) (not b!6556583) (not start!642518) (not b!6556595) (not b!6556590) (not b!6556594) (not b!6556598) (not b!6556621) (not b!6556611) (not b!6556625) (not b!6556593) (not b!6556614) (not b!6556612) (not b!6556605) (not b!6556616) (not b!6556622) (not b!6556618) (not b!6556585) (not b!6556592) (not b!6556589) (not b!6556608))
(check-sat)
(get-model)

(declare-fun d!2057342 () Bool)

(declare-fun c!1204590 () Bool)

(declare-fun isEmpty!37713 (List!65598) Bool)

(assert (=> d!2057342 (= c!1204590 (isEmpty!37713 (t!379240 s!2326)))))

(declare-fun e!3969397 () Bool)

(assert (=> d!2057342 (= (matchZipper!2445 lt!2404593 (t!379240 s!2326)) e!3969397)))

(declare-fun b!6556686 () Bool)

(declare-fun nullableZipper!2178 ((InoxSet Context!11634)) Bool)

(assert (=> b!6556686 (= e!3969397 (nullableZipper!2178 lt!2404593))))

(declare-fun b!6556687 () Bool)

(declare-fun head!13316 (List!65598) C!33136)

(declare-fun tail!12401 (List!65598) List!65598)

(assert (=> b!6556687 (= e!3969397 (matchZipper!2445 (derivationStepZipper!2399 lt!2404593 (head!13316 (t!379240 s!2326))) (tail!12401 (t!379240 s!2326))))))

(assert (= (and d!2057342 c!1204590) b!6556686))

(assert (= (and d!2057342 (not c!1204590)) b!6556687))

(declare-fun m!7338884 () Bool)

(assert (=> d!2057342 m!7338884))

(declare-fun m!7338886 () Bool)

(assert (=> b!6556686 m!7338886))

(declare-fun m!7338888 () Bool)

(assert (=> b!6556687 m!7338888))

(assert (=> b!6556687 m!7338888))

(declare-fun m!7338890 () Bool)

(assert (=> b!6556687 m!7338890))

(declare-fun m!7338892 () Bool)

(assert (=> b!6556687 m!7338892))

(assert (=> b!6556687 m!7338890))

(assert (=> b!6556687 m!7338892))

(declare-fun m!7338894 () Bool)

(assert (=> b!6556687 m!7338894))

(assert (=> b!6556598 d!2057342))

(declare-fun d!2057350 () Bool)

(declare-fun c!1204591 () Bool)

(assert (=> d!2057350 (= c!1204591 (isEmpty!37713 s!2326))))

(declare-fun e!3969398 () Bool)

(assert (=> d!2057350 (= (matchZipper!2445 z!1189 s!2326) e!3969398)))

(declare-fun b!6556688 () Bool)

(assert (=> b!6556688 (= e!3969398 (nullableZipper!2178 z!1189))))

(declare-fun b!6556689 () Bool)

(assert (=> b!6556689 (= e!3969398 (matchZipper!2445 (derivationStepZipper!2399 z!1189 (head!13316 s!2326)) (tail!12401 s!2326)))))

(assert (= (and d!2057350 c!1204591) b!6556688))

(assert (= (and d!2057350 (not c!1204591)) b!6556689))

(declare-fun m!7338898 () Bool)

(assert (=> d!2057350 m!7338898))

(declare-fun m!7338900 () Bool)

(assert (=> b!6556688 m!7338900))

(declare-fun m!7338902 () Bool)

(assert (=> b!6556689 m!7338902))

(assert (=> b!6556689 m!7338902))

(declare-fun m!7338904 () Bool)

(assert (=> b!6556689 m!7338904))

(declare-fun m!7338906 () Bool)

(assert (=> b!6556689 m!7338906))

(assert (=> b!6556689 m!7338904))

(assert (=> b!6556689 m!7338906))

(declare-fun m!7338908 () Bool)

(assert (=> b!6556689 m!7338908))

(assert (=> b!6556618 d!2057350))

(declare-fun bs!1673441 () Bool)

(declare-fun b!6556796 () Bool)

(assert (= bs!1673441 (and b!6556796 b!6556596)))

(declare-fun lambda!364520 () Int)

(assert (=> bs!1673441 (not (= lambda!364520 lambda!364502))))

(assert (=> bs!1673441 (not (= lambda!364520 lambda!364501))))

(declare-fun bs!1673442 () Bool)

(assert (= bs!1673442 (and b!6556796 b!6556588)))

(assert (=> bs!1673442 (not (= lambda!364520 lambda!364496))))

(assert (=> bs!1673442 (not (= lambda!364520 lambda!364497))))

(declare-fun bs!1673443 () Bool)

(assert (= bs!1673443 (and b!6556796 b!6556608)))

(assert (=> bs!1673443 (not (= lambda!364520 lambda!364503))))

(assert (=> b!6556796 true))

(assert (=> b!6556796 true))

(declare-fun bs!1673444 () Bool)

(declare-fun b!6556790 () Bool)

(assert (= bs!1673444 (and b!6556790 b!6556596)))

(declare-fun lambda!364521 () Int)

(assert (=> bs!1673444 (= (and (= (regOne!33378 lt!2404594) lt!2404586) (= (regTwo!33378 lt!2404594) (regTwo!33378 r!7292))) (= lambda!364521 lambda!364502))))

(assert (=> bs!1673444 (not (= lambda!364521 lambda!364501))))

(declare-fun bs!1673445 () Bool)

(assert (= bs!1673445 (and b!6556790 b!6556588)))

(assert (=> bs!1673445 (not (= lambda!364521 lambda!364496))))

(assert (=> bs!1673445 (= (and (= (regOne!33378 lt!2404594) (regOne!33378 r!7292)) (= (regTwo!33378 lt!2404594) (regTwo!33378 r!7292))) (= lambda!364521 lambda!364497))))

(declare-fun bs!1673446 () Bool)

(assert (= bs!1673446 (and b!6556790 b!6556796)))

(assert (=> bs!1673446 (not (= lambda!364521 lambda!364520))))

(declare-fun bs!1673447 () Bool)

(assert (= bs!1673447 (and b!6556790 b!6556608)))

(assert (=> bs!1673447 (not (= lambda!364521 lambda!364503))))

(assert (=> b!6556790 true))

(assert (=> b!6556790 true))

(declare-fun b!6556787 () Bool)

(declare-fun e!3969456 () Bool)

(assert (=> b!6556787 (= e!3969456 (= s!2326 (Cons!65474 (c!1204578 lt!2404594) Nil!65474)))))

(declare-fun b!6556788 () Bool)

(declare-fun e!3969453 () Bool)

(declare-fun e!3969459 () Bool)

(assert (=> b!6556788 (= e!3969453 e!3969459)))

(declare-fun c!1204630 () Bool)

(assert (=> b!6556788 (= c!1204630 ((_ is Star!16433) lt!2404594))))

(declare-fun d!2057354 () Bool)

(declare-fun c!1204632 () Bool)

(assert (=> d!2057354 (= c!1204632 ((_ is EmptyExpr!16433) lt!2404594))))

(declare-fun e!3969454 () Bool)

(assert (=> d!2057354 (= (matchRSpec!3534 lt!2404594 s!2326) e!3969454)))

(declare-fun b!6556789 () Bool)

(declare-fun e!3969455 () Bool)

(assert (=> b!6556789 (= e!3969453 e!3969455)))

(declare-fun res!2690341 () Bool)

(assert (=> b!6556789 (= res!2690341 (matchRSpec!3534 (regOne!33379 lt!2404594) s!2326))))

(assert (=> b!6556789 (=> res!2690341 e!3969455)))

(declare-fun call!570285 () Bool)

(assert (=> b!6556790 (= e!3969459 call!570285)))

(declare-fun bm!570279 () Bool)

(declare-fun call!570284 () Bool)

(assert (=> bm!570279 (= call!570284 (isEmpty!37713 s!2326))))

(declare-fun bm!570280 () Bool)

(assert (=> bm!570280 (= call!570285 (Exists!3503 (ite c!1204630 lambda!364520 lambda!364521)))))

(declare-fun b!6556791 () Bool)

(declare-fun c!1204629 () Bool)

(assert (=> b!6556791 (= c!1204629 ((_ is Union!16433) lt!2404594))))

(assert (=> b!6556791 (= e!3969456 e!3969453)))

(declare-fun b!6556792 () Bool)

(declare-fun e!3969458 () Bool)

(assert (=> b!6556792 (= e!3969454 e!3969458)))

(declare-fun res!2690339 () Bool)

(assert (=> b!6556792 (= res!2690339 (not ((_ is EmptyLang!16433) lt!2404594)))))

(assert (=> b!6556792 (=> (not res!2690339) (not e!3969458))))

(declare-fun b!6556793 () Bool)

(declare-fun res!2690340 () Bool)

(declare-fun e!3969457 () Bool)

(assert (=> b!6556793 (=> res!2690340 e!3969457)))

(assert (=> b!6556793 (= res!2690340 call!570284)))

(assert (=> b!6556793 (= e!3969459 e!3969457)))

(declare-fun b!6556794 () Bool)

(assert (=> b!6556794 (= e!3969455 (matchRSpec!3534 (regTwo!33379 lt!2404594) s!2326))))

(declare-fun b!6556795 () Bool)

(assert (=> b!6556795 (= e!3969454 call!570284)))

(assert (=> b!6556796 (= e!3969457 call!570285)))

(declare-fun b!6556797 () Bool)

(declare-fun c!1204631 () Bool)

(assert (=> b!6556797 (= c!1204631 ((_ is ElementMatch!16433) lt!2404594))))

(assert (=> b!6556797 (= e!3969458 e!3969456)))

(assert (= (and d!2057354 c!1204632) b!6556795))

(assert (= (and d!2057354 (not c!1204632)) b!6556792))

(assert (= (and b!6556792 res!2690339) b!6556797))

(assert (= (and b!6556797 c!1204631) b!6556787))

(assert (= (and b!6556797 (not c!1204631)) b!6556791))

(assert (= (and b!6556791 c!1204629) b!6556789))

(assert (= (and b!6556791 (not c!1204629)) b!6556788))

(assert (= (and b!6556789 (not res!2690341)) b!6556794))

(assert (= (and b!6556788 c!1204630) b!6556793))

(assert (= (and b!6556788 (not c!1204630)) b!6556790))

(assert (= (and b!6556793 (not res!2690340)) b!6556796))

(assert (= (or b!6556796 b!6556790) bm!570280))

(assert (= (or b!6556795 b!6556793) bm!570279))

(declare-fun m!7338962 () Bool)

(assert (=> b!6556789 m!7338962))

(assert (=> bm!570279 m!7338898))

(declare-fun m!7338964 () Bool)

(assert (=> bm!570280 m!7338964))

(declare-fun m!7338966 () Bool)

(assert (=> b!6556794 m!7338966))

(assert (=> b!6556619 d!2057354))

(declare-fun b!6556853 () Bool)

(declare-fun e!3969489 () Bool)

(assert (=> b!6556853 (= e!3969489 (nullable!6426 lt!2404594))))

(declare-fun b!6556854 () Bool)

(declare-fun e!3969494 () Bool)

(declare-fun e!3969495 () Bool)

(assert (=> b!6556854 (= e!3969494 e!3969495)))

(declare-fun res!2690375 () Bool)

(assert (=> b!6556854 (=> res!2690375 e!3969495)))

(declare-fun call!570288 () Bool)

(assert (=> b!6556854 (= res!2690375 call!570288)))

(declare-fun bm!570283 () Bool)

(assert (=> bm!570283 (= call!570288 (isEmpty!37713 s!2326))))

(declare-fun b!6556856 () Bool)

(declare-fun e!3969492 () Bool)

(assert (=> b!6556856 (= e!3969492 (= (head!13316 s!2326) (c!1204578 lt!2404594)))))

(declare-fun b!6556857 () Bool)

(declare-fun res!2690378 () Bool)

(assert (=> b!6556857 (=> (not res!2690378) (not e!3969492))))

(assert (=> b!6556857 (= res!2690378 (not call!570288))))

(declare-fun b!6556858 () Bool)

(declare-fun res!2690377 () Bool)

(assert (=> b!6556858 (=> (not res!2690377) (not e!3969492))))

(assert (=> b!6556858 (= res!2690377 (isEmpty!37713 (tail!12401 s!2326)))))

(declare-fun b!6556859 () Bool)

(declare-fun res!2690374 () Bool)

(declare-fun e!3969491 () Bool)

(assert (=> b!6556859 (=> res!2690374 e!3969491)))

(assert (=> b!6556859 (= res!2690374 e!3969492)))

(declare-fun res!2690376 () Bool)

(assert (=> b!6556859 (=> (not res!2690376) (not e!3969492))))

(declare-fun lt!2404671 () Bool)

(assert (=> b!6556859 (= res!2690376 lt!2404671)))

(declare-fun b!6556860 () Bool)

(declare-fun e!3969490 () Bool)

(assert (=> b!6556860 (= e!3969490 (not lt!2404671))))

(declare-fun b!6556861 () Bool)

(declare-fun e!3969493 () Bool)

(assert (=> b!6556861 (= e!3969493 e!3969490)))

(declare-fun c!1204645 () Bool)

(assert (=> b!6556861 (= c!1204645 ((_ is EmptyLang!16433) lt!2404594))))

(declare-fun b!6556862 () Bool)

(assert (=> b!6556862 (= e!3969491 e!3969494)))

(declare-fun res!2690380 () Bool)

(assert (=> b!6556862 (=> (not res!2690380) (not e!3969494))))

(assert (=> b!6556862 (= res!2690380 (not lt!2404671))))

(declare-fun b!6556863 () Bool)

(declare-fun res!2690373 () Bool)

(assert (=> b!6556863 (=> res!2690373 e!3969491)))

(assert (=> b!6556863 (= res!2690373 (not ((_ is ElementMatch!16433) lt!2404594)))))

(assert (=> b!6556863 (= e!3969490 e!3969491)))

(declare-fun b!6556864 () Bool)

(declare-fun res!2690379 () Bool)

(assert (=> b!6556864 (=> res!2690379 e!3969495)))

(assert (=> b!6556864 (= res!2690379 (not (isEmpty!37713 (tail!12401 s!2326))))))

(declare-fun b!6556855 () Bool)

(assert (=> b!6556855 (= e!3969495 (not (= (head!13316 s!2326) (c!1204578 lt!2404594))))))

(declare-fun d!2057380 () Bool)

(assert (=> d!2057380 e!3969493))

(declare-fun c!1204647 () Bool)

(assert (=> d!2057380 (= c!1204647 ((_ is EmptyExpr!16433) lt!2404594))))

(assert (=> d!2057380 (= lt!2404671 e!3969489)))

(declare-fun c!1204646 () Bool)

(assert (=> d!2057380 (= c!1204646 (isEmpty!37713 s!2326))))

(assert (=> d!2057380 (validRegex!8169 lt!2404594)))

(assert (=> d!2057380 (= (matchR!8616 lt!2404594 s!2326) lt!2404671)))

(declare-fun b!6556865 () Bool)

(declare-fun derivativeStep!5116 (Regex!16433 C!33136) Regex!16433)

(assert (=> b!6556865 (= e!3969489 (matchR!8616 (derivativeStep!5116 lt!2404594 (head!13316 s!2326)) (tail!12401 s!2326)))))

(declare-fun b!6556866 () Bool)

(assert (=> b!6556866 (= e!3969493 (= lt!2404671 call!570288))))

(assert (= (and d!2057380 c!1204646) b!6556853))

(assert (= (and d!2057380 (not c!1204646)) b!6556865))

(assert (= (and d!2057380 c!1204647) b!6556866))

(assert (= (and d!2057380 (not c!1204647)) b!6556861))

(assert (= (and b!6556861 c!1204645) b!6556860))

(assert (= (and b!6556861 (not c!1204645)) b!6556863))

(assert (= (and b!6556863 (not res!2690373)) b!6556859))

(assert (= (and b!6556859 res!2690376) b!6556857))

(assert (= (and b!6556857 res!2690378) b!6556858))

(assert (= (and b!6556858 res!2690377) b!6556856))

(assert (= (and b!6556859 (not res!2690374)) b!6556862))

(assert (= (and b!6556862 res!2690380) b!6556854))

(assert (= (and b!6556854 (not res!2690375)) b!6556864))

(assert (= (and b!6556864 (not res!2690379)) b!6556855))

(assert (= (or b!6556866 b!6556854 b!6556857) bm!570283))

(assert (=> b!6556864 m!7338906))

(assert (=> b!6556864 m!7338906))

(declare-fun m!7338994 () Bool)

(assert (=> b!6556864 m!7338994))

(assert (=> b!6556856 m!7338902))

(declare-fun m!7338996 () Bool)

(assert (=> b!6556853 m!7338996))

(assert (=> b!6556858 m!7338906))

(assert (=> b!6556858 m!7338906))

(assert (=> b!6556858 m!7338994))

(assert (=> bm!570283 m!7338898))

(assert (=> d!2057380 m!7338898))

(declare-fun m!7338998 () Bool)

(assert (=> d!2057380 m!7338998))

(assert (=> b!6556855 m!7338902))

(assert (=> b!6556865 m!7338902))

(assert (=> b!6556865 m!7338902))

(declare-fun m!7339000 () Bool)

(assert (=> b!6556865 m!7339000))

(assert (=> b!6556865 m!7338906))

(assert (=> b!6556865 m!7339000))

(assert (=> b!6556865 m!7338906))

(declare-fun m!7339002 () Bool)

(assert (=> b!6556865 m!7339002))

(assert (=> b!6556619 d!2057380))

(declare-fun d!2057388 () Bool)

(assert (=> d!2057388 (= (matchR!8616 lt!2404594 s!2326) (matchRSpec!3534 lt!2404594 s!2326))))

(declare-fun lt!2404677 () Unit!159067)

(declare-fun choose!48860 (Regex!16433 List!65598) Unit!159067)

(assert (=> d!2057388 (= lt!2404677 (choose!48860 lt!2404594 s!2326))))

(assert (=> d!2057388 (validRegex!8169 lt!2404594)))

(assert (=> d!2057388 (= (mainMatchTheorem!3534 lt!2404594 s!2326) lt!2404677)))

(declare-fun bs!1673449 () Bool)

(assert (= bs!1673449 d!2057388))

(assert (=> bs!1673449 m!7338664))

(assert (=> bs!1673449 m!7338662))

(declare-fun m!7339004 () Bool)

(assert (=> bs!1673449 m!7339004))

(assert (=> bs!1673449 m!7338998))

(assert (=> b!6556619 d!2057388))

(declare-fun bs!1673450 () Bool)

(declare-fun d!2057390 () Bool)

(assert (= bs!1673450 (and d!2057390 b!6556611)))

(declare-fun lambda!364524 () Int)

(assert (=> bs!1673450 (= lambda!364524 lambda!364500)))

(declare-fun b!6556906 () Bool)

(declare-fun e!3969524 () Bool)

(declare-fun e!3969520 () Bool)

(assert (=> b!6556906 (= e!3969524 e!3969520)))

(declare-fun c!1204662 () Bool)

(assert (=> b!6556906 (= c!1204662 (isEmpty!37710 (unfocusZipperList!1854 zl!343)))))

(declare-fun b!6556907 () Bool)

(declare-fun e!3969519 () Regex!16433)

(assert (=> b!6556907 (= e!3969519 (h!71923 (unfocusZipperList!1854 zl!343)))))

(declare-fun b!6556908 () Bool)

(declare-fun lt!2404686 () Regex!16433)

(declare-fun isEmptyLang!1819 (Regex!16433) Bool)

(assert (=> b!6556908 (= e!3969520 (isEmptyLang!1819 lt!2404686))))

(declare-fun b!6556909 () Bool)

(declare-fun e!3969522 () Regex!16433)

(assert (=> b!6556909 (= e!3969522 (Union!16433 (h!71923 (unfocusZipperList!1854 zl!343)) (generalisedUnion!2277 (t!379241 (unfocusZipperList!1854 zl!343)))))))

(declare-fun b!6556911 () Bool)

(declare-fun e!3969521 () Bool)

(assert (=> b!6556911 (= e!3969521 (isEmpty!37710 (t!379241 (unfocusZipperList!1854 zl!343))))))

(declare-fun b!6556912 () Bool)

(assert (=> b!6556912 (= e!3969522 EmptyLang!16433)))

(declare-fun b!6556913 () Bool)

(declare-fun e!3969523 () Bool)

(declare-fun head!13317 (List!65599) Regex!16433)

(assert (=> b!6556913 (= e!3969523 (= lt!2404686 (head!13317 (unfocusZipperList!1854 zl!343))))))

(assert (=> d!2057390 e!3969524))

(declare-fun res!2690395 () Bool)

(assert (=> d!2057390 (=> (not res!2690395) (not e!3969524))))

(assert (=> d!2057390 (= res!2690395 (validRegex!8169 lt!2404686))))

(assert (=> d!2057390 (= lt!2404686 e!3969519)))

(declare-fun c!1204663 () Bool)

(assert (=> d!2057390 (= c!1204663 e!3969521)))

(declare-fun res!2690394 () Bool)

(assert (=> d!2057390 (=> (not res!2690394) (not e!3969521))))

(assert (=> d!2057390 (= res!2690394 ((_ is Cons!65475) (unfocusZipperList!1854 zl!343)))))

(declare-fun forall!15604 (List!65599 Int) Bool)

(assert (=> d!2057390 (forall!15604 (unfocusZipperList!1854 zl!343) lambda!364524)))

(assert (=> d!2057390 (= (generalisedUnion!2277 (unfocusZipperList!1854 zl!343)) lt!2404686)))

(declare-fun b!6556910 () Bool)

(assert (=> b!6556910 (= e!3969519 e!3969522)))

(declare-fun c!1204664 () Bool)

(assert (=> b!6556910 (= c!1204664 ((_ is Cons!65475) (unfocusZipperList!1854 zl!343)))))

(declare-fun b!6556914 () Bool)

(assert (=> b!6556914 (= e!3969520 e!3969523)))

(declare-fun c!1204661 () Bool)

(declare-fun tail!12402 (List!65599) List!65599)

(assert (=> b!6556914 (= c!1204661 (isEmpty!37710 (tail!12402 (unfocusZipperList!1854 zl!343))))))

(declare-fun b!6556915 () Bool)

(declare-fun isUnion!1249 (Regex!16433) Bool)

(assert (=> b!6556915 (= e!3969523 (isUnion!1249 lt!2404686))))

(assert (= (and d!2057390 res!2690394) b!6556911))

(assert (= (and d!2057390 c!1204663) b!6556907))

(assert (= (and d!2057390 (not c!1204663)) b!6556910))

(assert (= (and b!6556910 c!1204664) b!6556909))

(assert (= (and b!6556910 (not c!1204664)) b!6556912))

(assert (= (and d!2057390 res!2690395) b!6556906))

(assert (= (and b!6556906 c!1204662) b!6556908))

(assert (= (and b!6556906 (not c!1204662)) b!6556914))

(assert (= (and b!6556914 c!1204661) b!6556913))

(assert (= (and b!6556914 (not c!1204661)) b!6556915))

(declare-fun m!7339046 () Bool)

(assert (=> b!6556915 m!7339046))

(declare-fun m!7339048 () Bool)

(assert (=> d!2057390 m!7339048))

(assert (=> d!2057390 m!7338760))

(declare-fun m!7339050 () Bool)

(assert (=> d!2057390 m!7339050))

(declare-fun m!7339052 () Bool)

(assert (=> b!6556911 m!7339052))

(assert (=> b!6556906 m!7338760))

(declare-fun m!7339054 () Bool)

(assert (=> b!6556906 m!7339054))

(declare-fun m!7339056 () Bool)

(assert (=> b!6556909 m!7339056))

(declare-fun m!7339058 () Bool)

(assert (=> b!6556908 m!7339058))

(assert (=> b!6556914 m!7338760))

(declare-fun m!7339060 () Bool)

(assert (=> b!6556914 m!7339060))

(assert (=> b!6556914 m!7339060))

(declare-fun m!7339062 () Bool)

(assert (=> b!6556914 m!7339062))

(assert (=> b!6556913 m!7338760))

(declare-fun m!7339064 () Bool)

(assert (=> b!6556913 m!7339064))

(assert (=> b!6556595 d!2057390))

(declare-fun bs!1673454 () Bool)

(declare-fun d!2057402 () Bool)

(assert (= bs!1673454 (and d!2057402 b!6556611)))

(declare-fun lambda!364527 () Int)

(assert (=> bs!1673454 (= lambda!364527 lambda!364500)))

(declare-fun bs!1673455 () Bool)

(assert (= bs!1673455 (and d!2057402 d!2057390)))

(assert (=> bs!1673455 (= lambda!364527 lambda!364524)))

(declare-fun lt!2404693 () List!65599)

(assert (=> d!2057402 (forall!15604 lt!2404693 lambda!364527)))

(declare-fun e!3969527 () List!65599)

(assert (=> d!2057402 (= lt!2404693 e!3969527)))

(declare-fun c!1204667 () Bool)

(assert (=> d!2057402 (= c!1204667 ((_ is Cons!65476) zl!343))))

(assert (=> d!2057402 (= (unfocusZipperList!1854 zl!343) lt!2404693)))

(declare-fun b!6556920 () Bool)

(assert (=> b!6556920 (= e!3969527 (Cons!65475 (generalisedConcat!2030 (exprs!6317 (h!71924 zl!343))) (unfocusZipperList!1854 (t!379242 zl!343))))))

(declare-fun b!6556921 () Bool)

(assert (=> b!6556921 (= e!3969527 Nil!65475)))

(assert (= (and d!2057402 c!1204667) b!6556920))

(assert (= (and d!2057402 (not c!1204667)) b!6556921))

(declare-fun m!7339074 () Bool)

(assert (=> d!2057402 m!7339074))

(assert (=> b!6556920 m!7338774))

(declare-fun m!7339076 () Bool)

(assert (=> b!6556920 m!7339076))

(assert (=> b!6556595 d!2057402))

(declare-fun b!6556922 () Bool)

(declare-fun e!3969528 () Bool)

(assert (=> b!6556922 (= e!3969528 (nullable!6426 lt!2404616))))

(declare-fun b!6556923 () Bool)

(declare-fun e!3969533 () Bool)

(declare-fun e!3969534 () Bool)

(assert (=> b!6556923 (= e!3969533 e!3969534)))

(declare-fun res!2690398 () Bool)

(assert (=> b!6556923 (=> res!2690398 e!3969534)))

(declare-fun call!570289 () Bool)

(assert (=> b!6556923 (= res!2690398 call!570289)))

(declare-fun bm!570284 () Bool)

(assert (=> bm!570284 (= call!570289 (isEmpty!37713 s!2326))))

(declare-fun b!6556925 () Bool)

(declare-fun e!3969531 () Bool)

(assert (=> b!6556925 (= e!3969531 (= (head!13316 s!2326) (c!1204578 lt!2404616)))))

(declare-fun b!6556926 () Bool)

(declare-fun res!2690401 () Bool)

(assert (=> b!6556926 (=> (not res!2690401) (not e!3969531))))

(assert (=> b!6556926 (= res!2690401 (not call!570289))))

(declare-fun b!6556927 () Bool)

(declare-fun res!2690400 () Bool)

(assert (=> b!6556927 (=> (not res!2690400) (not e!3969531))))

(assert (=> b!6556927 (= res!2690400 (isEmpty!37713 (tail!12401 s!2326)))))

(declare-fun b!6556928 () Bool)

(declare-fun res!2690397 () Bool)

(declare-fun e!3969530 () Bool)

(assert (=> b!6556928 (=> res!2690397 e!3969530)))

(assert (=> b!6556928 (= res!2690397 e!3969531)))

(declare-fun res!2690399 () Bool)

(assert (=> b!6556928 (=> (not res!2690399) (not e!3969531))))

(declare-fun lt!2404694 () Bool)

(assert (=> b!6556928 (= res!2690399 lt!2404694)))

(declare-fun b!6556929 () Bool)

(declare-fun e!3969529 () Bool)

(assert (=> b!6556929 (= e!3969529 (not lt!2404694))))

(declare-fun b!6556930 () Bool)

(declare-fun e!3969532 () Bool)

(assert (=> b!6556930 (= e!3969532 e!3969529)))

(declare-fun c!1204669 () Bool)

(assert (=> b!6556930 (= c!1204669 ((_ is EmptyLang!16433) lt!2404616))))

(declare-fun b!6556931 () Bool)

(assert (=> b!6556931 (= e!3969530 e!3969533)))

(declare-fun res!2690403 () Bool)

(assert (=> b!6556931 (=> (not res!2690403) (not e!3969533))))

(assert (=> b!6556931 (= res!2690403 (not lt!2404694))))

(declare-fun b!6556932 () Bool)

(declare-fun res!2690396 () Bool)

(assert (=> b!6556932 (=> res!2690396 e!3969530)))

(assert (=> b!6556932 (= res!2690396 (not ((_ is ElementMatch!16433) lt!2404616)))))

(assert (=> b!6556932 (= e!3969529 e!3969530)))

(declare-fun b!6556933 () Bool)

(declare-fun res!2690402 () Bool)

(assert (=> b!6556933 (=> res!2690402 e!3969534)))

(assert (=> b!6556933 (= res!2690402 (not (isEmpty!37713 (tail!12401 s!2326))))))

(declare-fun b!6556924 () Bool)

(assert (=> b!6556924 (= e!3969534 (not (= (head!13316 s!2326) (c!1204578 lt!2404616))))))

(declare-fun d!2057408 () Bool)

(assert (=> d!2057408 e!3969532))

(declare-fun c!1204671 () Bool)

(assert (=> d!2057408 (= c!1204671 ((_ is EmptyExpr!16433) lt!2404616))))

(assert (=> d!2057408 (= lt!2404694 e!3969528)))

(declare-fun c!1204670 () Bool)

(assert (=> d!2057408 (= c!1204670 (isEmpty!37713 s!2326))))

(assert (=> d!2057408 (validRegex!8169 lt!2404616)))

(assert (=> d!2057408 (= (matchR!8616 lt!2404616 s!2326) lt!2404694)))

(declare-fun b!6556934 () Bool)

(assert (=> b!6556934 (= e!3969528 (matchR!8616 (derivativeStep!5116 lt!2404616 (head!13316 s!2326)) (tail!12401 s!2326)))))

(declare-fun b!6556935 () Bool)

(assert (=> b!6556935 (= e!3969532 (= lt!2404694 call!570289))))

(assert (= (and d!2057408 c!1204670) b!6556922))

(assert (= (and d!2057408 (not c!1204670)) b!6556934))

(assert (= (and d!2057408 c!1204671) b!6556935))

(assert (= (and d!2057408 (not c!1204671)) b!6556930))

(assert (= (and b!6556930 c!1204669) b!6556929))

(assert (= (and b!6556930 (not c!1204669)) b!6556932))

(assert (= (and b!6556932 (not res!2690396)) b!6556928))

(assert (= (and b!6556928 res!2690399) b!6556926))

(assert (= (and b!6556926 res!2690401) b!6556927))

(assert (= (and b!6556927 res!2690400) b!6556925))

(assert (= (and b!6556928 (not res!2690397)) b!6556931))

(assert (= (and b!6556931 res!2690403) b!6556923))

(assert (= (and b!6556923 (not res!2690398)) b!6556933))

(assert (= (and b!6556933 (not res!2690402)) b!6556924))

(assert (= (or b!6556935 b!6556923 b!6556926) bm!570284))

(assert (=> b!6556933 m!7338906))

(assert (=> b!6556933 m!7338906))

(assert (=> b!6556933 m!7338994))

(assert (=> b!6556925 m!7338902))

(declare-fun m!7339078 () Bool)

(assert (=> b!6556922 m!7339078))

(assert (=> b!6556927 m!7338906))

(assert (=> b!6556927 m!7338906))

(assert (=> b!6556927 m!7338994))

(assert (=> bm!570284 m!7338898))

(assert (=> d!2057408 m!7338898))

(declare-fun m!7339080 () Bool)

(assert (=> d!2057408 m!7339080))

(assert (=> b!6556924 m!7338902))

(assert (=> b!6556934 m!7338902))

(assert (=> b!6556934 m!7338902))

(declare-fun m!7339082 () Bool)

(assert (=> b!6556934 m!7339082))

(assert (=> b!6556934 m!7338906))

(assert (=> b!6556934 m!7339082))

(assert (=> b!6556934 m!7338906))

(declare-fun m!7339084 () Bool)

(assert (=> b!6556934 m!7339084))

(assert (=> b!6556596 d!2057408))

(declare-fun b!6556951 () Bool)

(declare-fun e!3969542 () List!65599)

(assert (=> b!6556951 (= e!3969542 (Cons!65475 (h!71923 lt!2404624) (++!14569 (t!379241 lt!2404624) lt!2404588)))))

(declare-fun b!6556952 () Bool)

(declare-fun res!2690409 () Bool)

(declare-fun e!3969541 () Bool)

(assert (=> b!6556952 (=> (not res!2690409) (not e!3969541))))

(declare-fun lt!2404701 () List!65599)

(declare-fun size!40515 (List!65599) Int)

(assert (=> b!6556952 (= res!2690409 (= (size!40515 lt!2404701) (+ (size!40515 lt!2404624) (size!40515 lt!2404588))))))

(declare-fun d!2057410 () Bool)

(assert (=> d!2057410 e!3969541))

(declare-fun res!2690408 () Bool)

(assert (=> d!2057410 (=> (not res!2690408) (not e!3969541))))

(declare-fun content!12579 (List!65599) (InoxSet Regex!16433))

(assert (=> d!2057410 (= res!2690408 (= (content!12579 lt!2404701) ((_ map or) (content!12579 lt!2404624) (content!12579 lt!2404588))))))

(assert (=> d!2057410 (= lt!2404701 e!3969542)))

(declare-fun c!1204676 () Bool)

(assert (=> d!2057410 (= c!1204676 ((_ is Nil!65475) lt!2404624))))

(assert (=> d!2057410 (= (++!14569 lt!2404624 lt!2404588) lt!2404701)))

(declare-fun b!6556950 () Bool)

(assert (=> b!6556950 (= e!3969542 lt!2404588)))

(declare-fun b!6556953 () Bool)

(assert (=> b!6556953 (= e!3969541 (or (not (= lt!2404588 Nil!65475)) (= lt!2404701 lt!2404624)))))

(assert (= (and d!2057410 c!1204676) b!6556950))

(assert (= (and d!2057410 (not c!1204676)) b!6556951))

(assert (= (and d!2057410 res!2690408) b!6556952))

(assert (= (and b!6556952 res!2690409) b!6556953))

(declare-fun m!7339088 () Bool)

(assert (=> b!6556951 m!7339088))

(declare-fun m!7339090 () Bool)

(assert (=> b!6556952 m!7339090))

(declare-fun m!7339092 () Bool)

(assert (=> b!6556952 m!7339092))

(declare-fun m!7339094 () Bool)

(assert (=> b!6556952 m!7339094))

(declare-fun m!7339096 () Bool)

(assert (=> d!2057410 m!7339096))

(declare-fun m!7339098 () Bool)

(assert (=> d!2057410 m!7339098))

(declare-fun m!7339100 () Bool)

(assert (=> d!2057410 m!7339100))

(assert (=> b!6556596 d!2057410))

(declare-fun bs!1673459 () Bool)

(declare-fun d!2057414 () Bool)

(assert (= bs!1673459 (and d!2057414 b!6556611)))

(declare-fun lambda!364535 () Int)

(assert (=> bs!1673459 (= lambda!364535 lambda!364500)))

(declare-fun bs!1673460 () Bool)

(assert (= bs!1673460 (and d!2057414 d!2057390)))

(assert (=> bs!1673460 (= lambda!364535 lambda!364524)))

(declare-fun bs!1673461 () Bool)

(assert (= bs!1673461 (and d!2057414 d!2057402)))

(assert (=> bs!1673461 (= lambda!364535 lambda!364527)))

(assert (=> d!2057414 (matchZipper!2445 (store ((as const (Array Context!11634 Bool)) false) (Context!11635 (++!14569 (exprs!6317 lt!2404618) (exprs!6317 lt!2404612))) true) (++!14568 (_1!36715 lt!2404601) (_2!36715 lt!2404601)))))

(declare-fun lt!2404714 () Unit!159067)

(assert (=> d!2057414 (= lt!2404714 (lemmaConcatPreservesForall!406 (exprs!6317 lt!2404618) (exprs!6317 lt!2404612) lambda!364535))))

(declare-fun lt!2404713 () Unit!159067)

(declare-fun choose!48866 (Context!11634 Context!11634 List!65598 List!65598) Unit!159067)

(assert (=> d!2057414 (= lt!2404713 (choose!48866 lt!2404618 lt!2404612 (_1!36715 lt!2404601) (_2!36715 lt!2404601)))))

(assert (=> d!2057414 (matchZipper!2445 (store ((as const (Array Context!11634 Bool)) false) lt!2404618 true) (_1!36715 lt!2404601))))

(assert (=> d!2057414 (= (lemmaConcatenateContextMatchesConcatOfStrings!214 lt!2404618 lt!2404612 (_1!36715 lt!2404601) (_2!36715 lt!2404601)) lt!2404713)))

(declare-fun bs!1673462 () Bool)

(assert (= bs!1673462 d!2057414))

(assert (=> bs!1673462 m!7338654))

(declare-fun m!7339144 () Bool)

(assert (=> bs!1673462 m!7339144))

(declare-fun m!7339146 () Bool)

(assert (=> bs!1673462 m!7339146))

(assert (=> bs!1673462 m!7338772))

(declare-fun m!7339148 () Bool)

(assert (=> bs!1673462 m!7339148))

(declare-fun m!7339150 () Bool)

(assert (=> bs!1673462 m!7339150))

(assert (=> bs!1673462 m!7338772))

(declare-fun m!7339152 () Bool)

(assert (=> bs!1673462 m!7339152))

(assert (=> bs!1673462 m!7338654))

(declare-fun m!7339154 () Bool)

(assert (=> bs!1673462 m!7339154))

(assert (=> bs!1673462 m!7339146))

(assert (=> b!6556596 d!2057414))

(declare-fun d!2057422 () Bool)

(assert (=> d!2057422 (= (matchR!8616 (Concat!25278 (Concat!25278 (reg!16762 (regOne!33378 r!7292)) lt!2404592) (regTwo!33378 r!7292)) s!2326) (matchR!8616 (Concat!25278 (reg!16762 (regOne!33378 r!7292)) (Concat!25278 lt!2404592 (regTwo!33378 r!7292))) s!2326))))

(declare-fun lt!2404720 () Unit!159067)

(declare-fun choose!48867 (Regex!16433 Regex!16433 Regex!16433 List!65598) Unit!159067)

(assert (=> d!2057422 (= lt!2404720 (choose!48867 (reg!16762 (regOne!33378 r!7292)) lt!2404592 (regTwo!33378 r!7292) s!2326))))

(declare-fun e!3969568 () Bool)

(assert (=> d!2057422 e!3969568))

(declare-fun res!2690435 () Bool)

(assert (=> d!2057422 (=> (not res!2690435) (not e!3969568))))

(assert (=> d!2057422 (= res!2690435 (validRegex!8169 (reg!16762 (regOne!33378 r!7292))))))

(assert (=> d!2057422 (= (lemmaConcatAssociative!130 (reg!16762 (regOne!33378 r!7292)) lt!2404592 (regTwo!33378 r!7292) s!2326) lt!2404720)))

(declare-fun b!6556993 () Bool)

(declare-fun res!2690436 () Bool)

(assert (=> b!6556993 (=> (not res!2690436) (not e!3969568))))

(assert (=> b!6556993 (= res!2690436 (validRegex!8169 lt!2404592))))

(declare-fun b!6556994 () Bool)

(assert (=> b!6556994 (= e!3969568 (validRegex!8169 (regTwo!33378 r!7292)))))

(assert (= (and d!2057422 res!2690435) b!6556993))

(assert (= (and b!6556993 res!2690436) b!6556994))

(declare-fun m!7339160 () Bool)

(assert (=> d!2057422 m!7339160))

(declare-fun m!7339162 () Bool)

(assert (=> d!2057422 m!7339162))

(declare-fun m!7339164 () Bool)

(assert (=> d!2057422 m!7339164))

(assert (=> d!2057422 m!7338746))

(declare-fun m!7339166 () Bool)

(assert (=> b!6556993 m!7339166))

(declare-fun m!7339168 () Bool)

(assert (=> b!6556994 m!7339168))

(assert (=> b!6556596 d!2057422))

(declare-fun d!2057426 () Bool)

(assert (=> d!2057426 (forall!15604 (++!14569 lt!2404624 lt!2404588) lambda!364500)))

(declare-fun lt!2404723 () Unit!159067)

(declare-fun choose!48868 (List!65599 List!65599 Int) Unit!159067)

(assert (=> d!2057426 (= lt!2404723 (choose!48868 lt!2404624 lt!2404588 lambda!364500))))

(assert (=> d!2057426 (forall!15604 lt!2404624 lambda!364500)))

(assert (=> d!2057426 (= (lemmaConcatPreservesForall!406 lt!2404624 lt!2404588 lambda!364500) lt!2404723)))

(declare-fun bs!1673464 () Bool)

(assert (= bs!1673464 d!2057426))

(assert (=> bs!1673464 m!7338734))

(assert (=> bs!1673464 m!7338734))

(declare-fun m!7339170 () Bool)

(assert (=> bs!1673464 m!7339170))

(declare-fun m!7339172 () Bool)

(assert (=> bs!1673464 m!7339172))

(declare-fun m!7339174 () Bool)

(assert (=> bs!1673464 m!7339174))

(assert (=> b!6556596 d!2057426))

(declare-fun bs!1673471 () Bool)

(declare-fun d!2057428 () Bool)

(assert (= bs!1673471 (and d!2057428 b!6556596)))

(declare-fun lambda!364539 () Int)

(assert (=> bs!1673471 (not (= lambda!364539 lambda!364502))))

(declare-fun bs!1673472 () Bool)

(assert (= bs!1673472 (and d!2057428 b!6556790)))

(assert (=> bs!1673472 (not (= lambda!364539 lambda!364521))))

(assert (=> bs!1673471 (= lambda!364539 lambda!364501)))

(declare-fun bs!1673473 () Bool)

(assert (= bs!1673473 (and d!2057428 b!6556588)))

(assert (=> bs!1673473 (= (= lt!2404586 (regOne!33378 r!7292)) (= lambda!364539 lambda!364496))))

(assert (=> bs!1673473 (not (= lambda!364539 lambda!364497))))

(declare-fun bs!1673474 () Bool)

(assert (= bs!1673474 (and d!2057428 b!6556796)))

(assert (=> bs!1673474 (not (= lambda!364539 lambda!364520))))

(declare-fun bs!1673475 () Bool)

(assert (= bs!1673475 (and d!2057428 b!6556608)))

(assert (=> bs!1673475 (= (and (= s!2326 (_1!36715 lt!2404638)) (= lt!2404586 (reg!16762 (regOne!33378 r!7292))) (= (regTwo!33378 r!7292) lt!2404592)) (= lambda!364539 lambda!364503))))

(assert (=> d!2057428 true))

(assert (=> d!2057428 true))

(assert (=> d!2057428 true))

(assert (=> d!2057428 (= (isDefined!13027 (findConcatSeparation!2738 lt!2404586 (regTwo!33378 r!7292) Nil!65474 s!2326 s!2326)) (Exists!3503 lambda!364539))))

(declare-fun lt!2404727 () Unit!159067)

(declare-fun choose!48869 (Regex!16433 Regex!16433 List!65598) Unit!159067)

(assert (=> d!2057428 (= lt!2404727 (choose!48869 lt!2404586 (regTwo!33378 r!7292) s!2326))))

(assert (=> d!2057428 (validRegex!8169 lt!2404586)))

(assert (=> d!2057428 (= (lemmaFindConcatSeparationEquivalentToExists!2502 lt!2404586 (regTwo!33378 r!7292) s!2326) lt!2404727)))

(declare-fun bs!1673476 () Bool)

(assert (= bs!1673476 d!2057428))

(declare-fun m!7339186 () Bool)

(assert (=> bs!1673476 m!7339186))

(declare-fun m!7339188 () Bool)

(assert (=> bs!1673476 m!7339188))

(assert (=> bs!1673476 m!7338790))

(declare-fun m!7339190 () Bool)

(assert (=> bs!1673476 m!7339190))

(assert (=> bs!1673476 m!7338790))

(declare-fun m!7339192 () Bool)

(assert (=> bs!1673476 m!7339192))

(assert (=> b!6556596 d!2057428))

(declare-fun d!2057434 () Bool)

(assert (=> d!2057434 (matchR!8616 (Concat!25278 (reg!16762 (regOne!33378 r!7292)) lt!2404611) (++!14568 (_1!36715 lt!2404601) (_2!36715 lt!2404601)))))

(declare-fun lt!2404730 () Unit!159067)

(declare-fun choose!48871 (Regex!16433 Regex!16433 List!65598 List!65598) Unit!159067)

(assert (=> d!2057434 (= lt!2404730 (choose!48871 (reg!16762 (regOne!33378 r!7292)) lt!2404611 (_1!36715 lt!2404601) (_2!36715 lt!2404601)))))

(declare-fun e!3969598 () Bool)

(assert (=> d!2057434 e!3969598))

(declare-fun res!2690464 () Bool)

(assert (=> d!2057434 (=> (not res!2690464) (not e!3969598))))

(assert (=> d!2057434 (= res!2690464 (validRegex!8169 (reg!16762 (regOne!33378 r!7292))))))

(assert (=> d!2057434 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!354 (reg!16762 (regOne!33378 r!7292)) lt!2404611 (_1!36715 lt!2404601) (_2!36715 lt!2404601)) lt!2404730)))

(declare-fun b!6557042 () Bool)

(assert (=> b!6557042 (= e!3969598 (validRegex!8169 lt!2404611))))

(assert (= (and d!2057434 res!2690464) b!6557042))

(assert (=> d!2057434 m!7338772))

(assert (=> d!2057434 m!7338772))

(declare-fun m!7339194 () Bool)

(assert (=> d!2057434 m!7339194))

(declare-fun m!7339196 () Bool)

(assert (=> d!2057434 m!7339196))

(assert (=> d!2057434 m!7338746))

(declare-fun m!7339198 () Bool)

(assert (=> b!6557042 m!7339198))

(assert (=> b!6556596 d!2057434))

(declare-fun d!2057436 () Bool)

(declare-fun c!1204694 () Bool)

(assert (=> d!2057436 (= c!1204694 (isEmpty!37713 lt!2404606))))

(declare-fun e!3969599 () Bool)

(assert (=> d!2057436 (= (matchZipper!2445 (store ((as const (Array Context!11634 Bool)) false) (Context!11635 (++!14569 lt!2404624 lt!2404588)) true) lt!2404606) e!3969599)))

(declare-fun b!6557043 () Bool)

(assert (=> b!6557043 (= e!3969599 (nullableZipper!2178 (store ((as const (Array Context!11634 Bool)) false) (Context!11635 (++!14569 lt!2404624 lt!2404588)) true)))))

(declare-fun b!6557044 () Bool)

(assert (=> b!6557044 (= e!3969599 (matchZipper!2445 (derivationStepZipper!2399 (store ((as const (Array Context!11634 Bool)) false) (Context!11635 (++!14569 lt!2404624 lt!2404588)) true) (head!13316 lt!2404606)) (tail!12401 lt!2404606)))))

(assert (= (and d!2057436 c!1204694) b!6557043))

(assert (= (and d!2057436 (not c!1204694)) b!6557044))

(declare-fun m!7339200 () Bool)

(assert (=> d!2057436 m!7339200))

(assert (=> b!6557043 m!7338726))

(declare-fun m!7339202 () Bool)

(assert (=> b!6557043 m!7339202))

(declare-fun m!7339204 () Bool)

(assert (=> b!6557044 m!7339204))

(assert (=> b!6557044 m!7338726))

(assert (=> b!6557044 m!7339204))

(declare-fun m!7339206 () Bool)

(assert (=> b!6557044 m!7339206))

(declare-fun m!7339208 () Bool)

(assert (=> b!6557044 m!7339208))

(assert (=> b!6557044 m!7339206))

(assert (=> b!6557044 m!7339208))

(declare-fun m!7339210 () Bool)

(assert (=> b!6557044 m!7339210))

(assert (=> b!6556596 d!2057436))

(declare-fun d!2057438 () Bool)

(assert (=> d!2057438 (= (get!22731 lt!2404630) (v!52508 lt!2404630))))

(assert (=> b!6556596 d!2057438))

(declare-fun b!6557112 () Bool)

(declare-fun e!3969643 () Option!16324)

(assert (=> b!6557112 (= e!3969643 None!16323)))

(declare-fun b!6557114 () Bool)

(declare-fun e!3969644 () Bool)

(declare-fun lt!2404743 () Option!16324)

(assert (=> b!6557114 (= e!3969644 (= (++!14568 (_1!36715 (get!22731 lt!2404743)) (_2!36715 (get!22731 lt!2404743))) s!2326))))

(declare-fun b!6557115 () Bool)

(declare-fun e!3969640 () Option!16324)

(assert (=> b!6557115 (= e!3969640 (Some!16323 (tuple2!66825 Nil!65474 s!2326)))))

(declare-fun b!6557116 () Bool)

(declare-fun e!3969642 () Bool)

(assert (=> b!6557116 (= e!3969642 (not (isDefined!13027 lt!2404743)))))

(declare-fun b!6557117 () Bool)

(declare-fun res!2690486 () Bool)

(assert (=> b!6557117 (=> (not res!2690486) (not e!3969644))))

(assert (=> b!6557117 (= res!2690486 (matchR!8616 (regTwo!33378 r!7292) (_2!36715 (get!22731 lt!2404743))))))

(declare-fun b!6557118 () Bool)

(declare-fun e!3969641 () Bool)

(assert (=> b!6557118 (= e!3969641 (matchR!8616 (regTwo!33378 r!7292) s!2326))))

(declare-fun b!6557119 () Bool)

(declare-fun res!2690487 () Bool)

(assert (=> b!6557119 (=> (not res!2690487) (not e!3969644))))

(assert (=> b!6557119 (= res!2690487 (matchR!8616 lt!2404586 (_1!36715 (get!22731 lt!2404743))))))

(declare-fun b!6557120 () Bool)

(assert (=> b!6557120 (= e!3969640 e!3969643)))

(declare-fun c!1204718 () Bool)

(assert (=> b!6557120 (= c!1204718 ((_ is Nil!65474) s!2326))))

(declare-fun d!2057440 () Bool)

(assert (=> d!2057440 e!3969642))

(declare-fun res!2690489 () Bool)

(assert (=> d!2057440 (=> res!2690489 e!3969642)))

(assert (=> d!2057440 (= res!2690489 e!3969644)))

(declare-fun res!2690488 () Bool)

(assert (=> d!2057440 (=> (not res!2690488) (not e!3969644))))

(assert (=> d!2057440 (= res!2690488 (isDefined!13027 lt!2404743))))

(assert (=> d!2057440 (= lt!2404743 e!3969640)))

(declare-fun c!1204719 () Bool)

(assert (=> d!2057440 (= c!1204719 e!3969641)))

(declare-fun res!2690490 () Bool)

(assert (=> d!2057440 (=> (not res!2690490) (not e!3969641))))

(assert (=> d!2057440 (= res!2690490 (matchR!8616 lt!2404586 Nil!65474))))

(assert (=> d!2057440 (validRegex!8169 lt!2404586)))

(assert (=> d!2057440 (= (findConcatSeparation!2738 lt!2404586 (regTwo!33378 r!7292) Nil!65474 s!2326 s!2326) lt!2404743)))

(declare-fun b!6557113 () Bool)

(declare-fun lt!2404744 () Unit!159067)

(declare-fun lt!2404742 () Unit!159067)

(assert (=> b!6557113 (= lt!2404744 lt!2404742)))

(assert (=> b!6557113 (= (++!14568 (++!14568 Nil!65474 (Cons!65474 (h!71922 s!2326) Nil!65474)) (t!379240 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2576 (List!65598 C!33136 List!65598 List!65598) Unit!159067)

(assert (=> b!6557113 (= lt!2404742 (lemmaMoveElementToOtherListKeepsConcatEq!2576 Nil!65474 (h!71922 s!2326) (t!379240 s!2326) s!2326))))

(assert (=> b!6557113 (= e!3969643 (findConcatSeparation!2738 lt!2404586 (regTwo!33378 r!7292) (++!14568 Nil!65474 (Cons!65474 (h!71922 s!2326) Nil!65474)) (t!379240 s!2326) s!2326))))

(assert (= (and d!2057440 res!2690490) b!6557118))

(assert (= (and d!2057440 c!1204719) b!6557115))

(assert (= (and d!2057440 (not c!1204719)) b!6557120))

(assert (= (and b!6557120 c!1204718) b!6557112))

(assert (= (and b!6557120 (not c!1204718)) b!6557113))

(assert (= (and d!2057440 res!2690488) b!6557119))

(assert (= (and b!6557119 res!2690487) b!6557117))

(assert (= (and b!6557117 res!2690486) b!6557114))

(assert (= (and d!2057440 (not res!2690489)) b!6557116))

(declare-fun m!7339312 () Bool)

(assert (=> d!2057440 m!7339312))

(declare-fun m!7339314 () Bool)

(assert (=> d!2057440 m!7339314))

(assert (=> d!2057440 m!7339186))

(declare-fun m!7339316 () Bool)

(assert (=> b!6557118 m!7339316))

(declare-fun m!7339318 () Bool)

(assert (=> b!6557113 m!7339318))

(assert (=> b!6557113 m!7339318))

(declare-fun m!7339320 () Bool)

(assert (=> b!6557113 m!7339320))

(declare-fun m!7339322 () Bool)

(assert (=> b!6557113 m!7339322))

(assert (=> b!6557113 m!7339318))

(declare-fun m!7339324 () Bool)

(assert (=> b!6557113 m!7339324))

(declare-fun m!7339326 () Bool)

(assert (=> b!6557119 m!7339326))

(declare-fun m!7339328 () Bool)

(assert (=> b!6557119 m!7339328))

(assert (=> b!6557116 m!7339312))

(assert (=> b!6557117 m!7339326))

(declare-fun m!7339330 () Bool)

(assert (=> b!6557117 m!7339330))

(assert (=> b!6557114 m!7339326))

(declare-fun m!7339332 () Bool)

(assert (=> b!6557114 m!7339332))

(assert (=> b!6556596 d!2057440))

(declare-fun d!2057480 () Bool)

(assert (=> d!2057480 (= (matchR!8616 lt!2404616 s!2326) (matchRSpec!3534 lt!2404616 s!2326))))

(declare-fun lt!2404745 () Unit!159067)

(assert (=> d!2057480 (= lt!2404745 (choose!48860 lt!2404616 s!2326))))

(assert (=> d!2057480 (validRegex!8169 lt!2404616)))

(assert (=> d!2057480 (= (mainMatchTheorem!3534 lt!2404616 s!2326) lt!2404745)))

(declare-fun bs!1673499 () Bool)

(assert (= bs!1673499 d!2057480))

(assert (=> bs!1673499 m!7338806))

(assert (=> bs!1673499 m!7338782))

(declare-fun m!7339334 () Bool)

(assert (=> bs!1673499 m!7339334))

(assert (=> bs!1673499 m!7339080))

(assert (=> b!6556596 d!2057480))

(declare-fun b!6557121 () Bool)

(declare-fun e!3969645 () Bool)

(assert (=> b!6557121 (= e!3969645 (nullable!6426 (reg!16762 (regOne!33378 r!7292))))))

(declare-fun b!6557122 () Bool)

(declare-fun e!3969650 () Bool)

(declare-fun e!3969651 () Bool)

(assert (=> b!6557122 (= e!3969650 e!3969651)))

(declare-fun res!2690493 () Bool)

(assert (=> b!6557122 (=> res!2690493 e!3969651)))

(declare-fun call!570316 () Bool)

(assert (=> b!6557122 (= res!2690493 call!570316)))

(declare-fun bm!570311 () Bool)

(assert (=> bm!570311 (= call!570316 (isEmpty!37713 (_1!36715 lt!2404601)))))

(declare-fun b!6557124 () Bool)

(declare-fun e!3969648 () Bool)

(assert (=> b!6557124 (= e!3969648 (= (head!13316 (_1!36715 lt!2404601)) (c!1204578 (reg!16762 (regOne!33378 r!7292)))))))

(declare-fun b!6557125 () Bool)

(declare-fun res!2690496 () Bool)

(assert (=> b!6557125 (=> (not res!2690496) (not e!3969648))))

(assert (=> b!6557125 (= res!2690496 (not call!570316))))

(declare-fun b!6557126 () Bool)

(declare-fun res!2690495 () Bool)

(assert (=> b!6557126 (=> (not res!2690495) (not e!3969648))))

(assert (=> b!6557126 (= res!2690495 (isEmpty!37713 (tail!12401 (_1!36715 lt!2404601))))))

(declare-fun b!6557127 () Bool)

(declare-fun res!2690492 () Bool)

(declare-fun e!3969647 () Bool)

(assert (=> b!6557127 (=> res!2690492 e!3969647)))

(assert (=> b!6557127 (= res!2690492 e!3969648)))

(declare-fun res!2690494 () Bool)

(assert (=> b!6557127 (=> (not res!2690494) (not e!3969648))))

(declare-fun lt!2404746 () Bool)

(assert (=> b!6557127 (= res!2690494 lt!2404746)))

(declare-fun b!6557128 () Bool)

(declare-fun e!3969646 () Bool)

(assert (=> b!6557128 (= e!3969646 (not lt!2404746))))

(declare-fun b!6557129 () Bool)

(declare-fun e!3969649 () Bool)

(assert (=> b!6557129 (= e!3969649 e!3969646)))

(declare-fun c!1204720 () Bool)

(assert (=> b!6557129 (= c!1204720 ((_ is EmptyLang!16433) (reg!16762 (regOne!33378 r!7292))))))

(declare-fun b!6557130 () Bool)

(assert (=> b!6557130 (= e!3969647 e!3969650)))

(declare-fun res!2690498 () Bool)

(assert (=> b!6557130 (=> (not res!2690498) (not e!3969650))))

(assert (=> b!6557130 (= res!2690498 (not lt!2404746))))

(declare-fun b!6557131 () Bool)

(declare-fun res!2690491 () Bool)

(assert (=> b!6557131 (=> res!2690491 e!3969647)))

(assert (=> b!6557131 (= res!2690491 (not ((_ is ElementMatch!16433) (reg!16762 (regOne!33378 r!7292)))))))

(assert (=> b!6557131 (= e!3969646 e!3969647)))

(declare-fun b!6557132 () Bool)

(declare-fun res!2690497 () Bool)

(assert (=> b!6557132 (=> res!2690497 e!3969651)))

(assert (=> b!6557132 (= res!2690497 (not (isEmpty!37713 (tail!12401 (_1!36715 lt!2404601)))))))

(declare-fun b!6557123 () Bool)

(assert (=> b!6557123 (= e!3969651 (not (= (head!13316 (_1!36715 lt!2404601)) (c!1204578 (reg!16762 (regOne!33378 r!7292))))))))

(declare-fun d!2057482 () Bool)

(assert (=> d!2057482 e!3969649))

(declare-fun c!1204722 () Bool)

(assert (=> d!2057482 (= c!1204722 ((_ is EmptyExpr!16433) (reg!16762 (regOne!33378 r!7292))))))

(assert (=> d!2057482 (= lt!2404746 e!3969645)))

(declare-fun c!1204721 () Bool)

(assert (=> d!2057482 (= c!1204721 (isEmpty!37713 (_1!36715 lt!2404601)))))

(assert (=> d!2057482 (validRegex!8169 (reg!16762 (regOne!33378 r!7292)))))

(assert (=> d!2057482 (= (matchR!8616 (reg!16762 (regOne!33378 r!7292)) (_1!36715 lt!2404601)) lt!2404746)))

(declare-fun b!6557133 () Bool)

(assert (=> b!6557133 (= e!3969645 (matchR!8616 (derivativeStep!5116 (reg!16762 (regOne!33378 r!7292)) (head!13316 (_1!36715 lt!2404601))) (tail!12401 (_1!36715 lt!2404601))))))

(declare-fun b!6557134 () Bool)

(assert (=> b!6557134 (= e!3969649 (= lt!2404746 call!570316))))

(assert (= (and d!2057482 c!1204721) b!6557121))

(assert (= (and d!2057482 (not c!1204721)) b!6557133))

(assert (= (and d!2057482 c!1204722) b!6557134))

(assert (= (and d!2057482 (not c!1204722)) b!6557129))

(assert (= (and b!6557129 c!1204720) b!6557128))

(assert (= (and b!6557129 (not c!1204720)) b!6557131))

(assert (= (and b!6557131 (not res!2690491)) b!6557127))

(assert (= (and b!6557127 res!2690494) b!6557125))

(assert (= (and b!6557125 res!2690496) b!6557126))

(assert (= (and b!6557126 res!2690495) b!6557124))

(assert (= (and b!6557127 (not res!2690492)) b!6557130))

(assert (= (and b!6557130 res!2690498) b!6557122))

(assert (= (and b!6557122 (not res!2690493)) b!6557132))

(assert (= (and b!6557132 (not res!2690497)) b!6557123))

(assert (= (or b!6557134 b!6557122 b!6557125) bm!570311))

(declare-fun m!7339336 () Bool)

(assert (=> b!6557132 m!7339336))

(assert (=> b!6557132 m!7339336))

(declare-fun m!7339338 () Bool)

(assert (=> b!6557132 m!7339338))

(declare-fun m!7339340 () Bool)

(assert (=> b!6557124 m!7339340))

(declare-fun m!7339342 () Bool)

(assert (=> b!6557121 m!7339342))

(assert (=> b!6557126 m!7339336))

(assert (=> b!6557126 m!7339336))

(assert (=> b!6557126 m!7339338))

(declare-fun m!7339344 () Bool)

(assert (=> bm!570311 m!7339344))

(assert (=> d!2057482 m!7339344))

(assert (=> d!2057482 m!7338746))

(assert (=> b!6557123 m!7339340))

(assert (=> b!6557133 m!7339340))

(assert (=> b!6557133 m!7339340))

(declare-fun m!7339346 () Bool)

(assert (=> b!6557133 m!7339346))

(assert (=> b!6557133 m!7339336))

(assert (=> b!6557133 m!7339346))

(assert (=> b!6557133 m!7339336))

(declare-fun m!7339348 () Bool)

(assert (=> b!6557133 m!7339348))

(assert (=> b!6556596 d!2057482))

(declare-fun b!6557135 () Bool)

(declare-fun e!3969652 () Bool)

(assert (=> b!6557135 (= e!3969652 (nullable!6426 lt!2404586))))

(declare-fun b!6557136 () Bool)

(declare-fun e!3969657 () Bool)

(declare-fun e!3969658 () Bool)

(assert (=> b!6557136 (= e!3969657 e!3969658)))

(declare-fun res!2690501 () Bool)

(assert (=> b!6557136 (=> res!2690501 e!3969658)))

(declare-fun call!570317 () Bool)

(assert (=> b!6557136 (= res!2690501 call!570317)))

(declare-fun bm!570312 () Bool)

(assert (=> bm!570312 (= call!570317 (isEmpty!37713 (_1!36715 lt!2404638)))))

(declare-fun b!6557138 () Bool)

(declare-fun e!3969655 () Bool)

(assert (=> b!6557138 (= e!3969655 (= (head!13316 (_1!36715 lt!2404638)) (c!1204578 lt!2404586)))))

(declare-fun b!6557139 () Bool)

(declare-fun res!2690504 () Bool)

(assert (=> b!6557139 (=> (not res!2690504) (not e!3969655))))

(assert (=> b!6557139 (= res!2690504 (not call!570317))))

(declare-fun b!6557140 () Bool)

(declare-fun res!2690503 () Bool)

(assert (=> b!6557140 (=> (not res!2690503) (not e!3969655))))

(assert (=> b!6557140 (= res!2690503 (isEmpty!37713 (tail!12401 (_1!36715 lt!2404638))))))

(declare-fun b!6557141 () Bool)

(declare-fun res!2690500 () Bool)

(declare-fun e!3969654 () Bool)

(assert (=> b!6557141 (=> res!2690500 e!3969654)))

(assert (=> b!6557141 (= res!2690500 e!3969655)))

(declare-fun res!2690502 () Bool)

(assert (=> b!6557141 (=> (not res!2690502) (not e!3969655))))

(declare-fun lt!2404747 () Bool)

(assert (=> b!6557141 (= res!2690502 lt!2404747)))

(declare-fun b!6557142 () Bool)

(declare-fun e!3969653 () Bool)

(assert (=> b!6557142 (= e!3969653 (not lt!2404747))))

(declare-fun b!6557143 () Bool)

(declare-fun e!3969656 () Bool)

(assert (=> b!6557143 (= e!3969656 e!3969653)))

(declare-fun c!1204723 () Bool)

(assert (=> b!6557143 (= c!1204723 ((_ is EmptyLang!16433) lt!2404586))))

(declare-fun b!6557144 () Bool)

(assert (=> b!6557144 (= e!3969654 e!3969657)))

(declare-fun res!2690506 () Bool)

(assert (=> b!6557144 (=> (not res!2690506) (not e!3969657))))

(assert (=> b!6557144 (= res!2690506 (not lt!2404747))))

(declare-fun b!6557145 () Bool)

(declare-fun res!2690499 () Bool)

(assert (=> b!6557145 (=> res!2690499 e!3969654)))

(assert (=> b!6557145 (= res!2690499 (not ((_ is ElementMatch!16433) lt!2404586)))))

(assert (=> b!6557145 (= e!3969653 e!3969654)))

(declare-fun b!6557146 () Bool)

(declare-fun res!2690505 () Bool)

(assert (=> b!6557146 (=> res!2690505 e!3969658)))

(assert (=> b!6557146 (= res!2690505 (not (isEmpty!37713 (tail!12401 (_1!36715 lt!2404638)))))))

(declare-fun b!6557137 () Bool)

(assert (=> b!6557137 (= e!3969658 (not (= (head!13316 (_1!36715 lt!2404638)) (c!1204578 lt!2404586))))))

(declare-fun d!2057484 () Bool)

(assert (=> d!2057484 e!3969656))

(declare-fun c!1204725 () Bool)

(assert (=> d!2057484 (= c!1204725 ((_ is EmptyExpr!16433) lt!2404586))))

(assert (=> d!2057484 (= lt!2404747 e!3969652)))

(declare-fun c!1204724 () Bool)

(assert (=> d!2057484 (= c!1204724 (isEmpty!37713 (_1!36715 lt!2404638)))))

(assert (=> d!2057484 (validRegex!8169 lt!2404586)))

(assert (=> d!2057484 (= (matchR!8616 lt!2404586 (_1!36715 lt!2404638)) lt!2404747)))

(declare-fun b!6557147 () Bool)

(assert (=> b!6557147 (= e!3969652 (matchR!8616 (derivativeStep!5116 lt!2404586 (head!13316 (_1!36715 lt!2404638))) (tail!12401 (_1!36715 lt!2404638))))))

(declare-fun b!6557148 () Bool)

(assert (=> b!6557148 (= e!3969656 (= lt!2404747 call!570317))))

(assert (= (and d!2057484 c!1204724) b!6557135))

(assert (= (and d!2057484 (not c!1204724)) b!6557147))

(assert (= (and d!2057484 c!1204725) b!6557148))

(assert (= (and d!2057484 (not c!1204725)) b!6557143))

(assert (= (and b!6557143 c!1204723) b!6557142))

(assert (= (and b!6557143 (not c!1204723)) b!6557145))

(assert (= (and b!6557145 (not res!2690499)) b!6557141))

(assert (= (and b!6557141 res!2690502) b!6557139))

(assert (= (and b!6557139 res!2690504) b!6557140))

(assert (= (and b!6557140 res!2690503) b!6557138))

(assert (= (and b!6557141 (not res!2690500)) b!6557144))

(assert (= (and b!6557144 res!2690506) b!6557136))

(assert (= (and b!6557136 (not res!2690501)) b!6557146))

(assert (= (and b!6557146 (not res!2690505)) b!6557137))

(assert (= (or b!6557148 b!6557136 b!6557139) bm!570312))

(declare-fun m!7339350 () Bool)

(assert (=> b!6557146 m!7339350))

(assert (=> b!6557146 m!7339350))

(declare-fun m!7339352 () Bool)

(assert (=> b!6557146 m!7339352))

(declare-fun m!7339354 () Bool)

(assert (=> b!6557138 m!7339354))

(declare-fun m!7339356 () Bool)

(assert (=> b!6557135 m!7339356))

(assert (=> b!6557140 m!7339350))

(assert (=> b!6557140 m!7339350))

(assert (=> b!6557140 m!7339352))

(declare-fun m!7339358 () Bool)

(assert (=> bm!570312 m!7339358))

(assert (=> d!2057484 m!7339358))

(assert (=> d!2057484 m!7339186))

(assert (=> b!6557137 m!7339354))

(assert (=> b!6557147 m!7339354))

(assert (=> b!6557147 m!7339354))

(declare-fun m!7339360 () Bool)

(assert (=> b!6557147 m!7339360))

(assert (=> b!6557147 m!7339350))

(assert (=> b!6557147 m!7339360))

(assert (=> b!6557147 m!7339350))

(declare-fun m!7339362 () Bool)

(assert (=> b!6557147 m!7339362))

(assert (=> b!6556596 d!2057484))

(declare-fun d!2057486 () Bool)

(declare-fun isEmpty!37714 (Option!16324) Bool)

(assert (=> d!2057486 (= (isDefined!13027 lt!2404630) (not (isEmpty!37714 lt!2404630)))))

(declare-fun bs!1673500 () Bool)

(assert (= bs!1673500 d!2057486))

(declare-fun m!7339364 () Bool)

(assert (=> bs!1673500 m!7339364))

(assert (=> b!6556596 d!2057486))

(declare-fun b!6557163 () Bool)

(declare-fun e!3969667 () Bool)

(assert (=> b!6557163 (= e!3969667 (nullable!6426 lt!2404594))))

(declare-fun b!6557164 () Bool)

(declare-fun e!3969672 () Bool)

(declare-fun e!3969673 () Bool)

(assert (=> b!6557164 (= e!3969672 e!3969673)))

(declare-fun res!2690513 () Bool)

(assert (=> b!6557164 (=> res!2690513 e!3969673)))

(declare-fun call!570318 () Bool)

(assert (=> b!6557164 (= res!2690513 call!570318)))

(declare-fun bm!570313 () Bool)

(assert (=> bm!570313 (= call!570318 (isEmpty!37713 lt!2404606))))

(declare-fun b!6557168 () Bool)

(declare-fun e!3969670 () Bool)

(assert (=> b!6557168 (= e!3969670 (= (head!13316 lt!2404606) (c!1204578 lt!2404594)))))

(declare-fun b!6557169 () Bool)

(declare-fun res!2690516 () Bool)

(assert (=> b!6557169 (=> (not res!2690516) (not e!3969670))))

(assert (=> b!6557169 (= res!2690516 (not call!570318))))

(declare-fun b!6557170 () Bool)

(declare-fun res!2690515 () Bool)

(assert (=> b!6557170 (=> (not res!2690515) (not e!3969670))))

(assert (=> b!6557170 (= res!2690515 (isEmpty!37713 (tail!12401 lt!2404606)))))

(declare-fun b!6557171 () Bool)

(declare-fun res!2690512 () Bool)

(declare-fun e!3969669 () Bool)

(assert (=> b!6557171 (=> res!2690512 e!3969669)))

(assert (=> b!6557171 (= res!2690512 e!3969670)))

(declare-fun res!2690514 () Bool)

(assert (=> b!6557171 (=> (not res!2690514) (not e!3969670))))

(declare-fun lt!2404750 () Bool)

(assert (=> b!6557171 (= res!2690514 lt!2404750)))

(declare-fun b!6557172 () Bool)

(declare-fun e!3969668 () Bool)

(assert (=> b!6557172 (= e!3969668 (not lt!2404750))))

(declare-fun b!6557173 () Bool)

(declare-fun e!3969671 () Bool)

(assert (=> b!6557173 (= e!3969671 e!3969668)))

(declare-fun c!1204730 () Bool)

(assert (=> b!6557173 (= c!1204730 ((_ is EmptyLang!16433) lt!2404594))))

(declare-fun b!6557174 () Bool)

(assert (=> b!6557174 (= e!3969669 e!3969672)))

(declare-fun res!2690518 () Bool)

(assert (=> b!6557174 (=> (not res!2690518) (not e!3969672))))

(assert (=> b!6557174 (= res!2690518 (not lt!2404750))))

(declare-fun b!6557175 () Bool)

(declare-fun res!2690511 () Bool)

(assert (=> b!6557175 (=> res!2690511 e!3969669)))

(assert (=> b!6557175 (= res!2690511 (not ((_ is ElementMatch!16433) lt!2404594)))))

(assert (=> b!6557175 (= e!3969668 e!3969669)))

(declare-fun b!6557176 () Bool)

(declare-fun res!2690517 () Bool)

(assert (=> b!6557176 (=> res!2690517 e!3969673)))

(assert (=> b!6557176 (= res!2690517 (not (isEmpty!37713 (tail!12401 lt!2404606))))))

(declare-fun b!6557167 () Bool)

(assert (=> b!6557167 (= e!3969673 (not (= (head!13316 lt!2404606) (c!1204578 lt!2404594))))))

(declare-fun d!2057488 () Bool)

(assert (=> d!2057488 e!3969671))

(declare-fun c!1204732 () Bool)

(assert (=> d!2057488 (= c!1204732 ((_ is EmptyExpr!16433) lt!2404594))))

(assert (=> d!2057488 (= lt!2404750 e!3969667)))

(declare-fun c!1204731 () Bool)

(assert (=> d!2057488 (= c!1204731 (isEmpty!37713 lt!2404606))))

(assert (=> d!2057488 (validRegex!8169 lt!2404594)))

(assert (=> d!2057488 (= (matchR!8616 lt!2404594 lt!2404606) lt!2404750)))

(declare-fun b!6557177 () Bool)

(assert (=> b!6557177 (= e!3969667 (matchR!8616 (derivativeStep!5116 lt!2404594 (head!13316 lt!2404606)) (tail!12401 lt!2404606)))))

(declare-fun b!6557178 () Bool)

(assert (=> b!6557178 (= e!3969671 (= lt!2404750 call!570318))))

(assert (= (and d!2057488 c!1204731) b!6557163))

(assert (= (and d!2057488 (not c!1204731)) b!6557177))

(assert (= (and d!2057488 c!1204732) b!6557178))

(assert (= (and d!2057488 (not c!1204732)) b!6557173))

(assert (= (and b!6557173 c!1204730) b!6557172))

(assert (= (and b!6557173 (not c!1204730)) b!6557175))

(assert (= (and b!6557175 (not res!2690511)) b!6557171))

(assert (= (and b!6557171 res!2690514) b!6557169))

(assert (= (and b!6557169 res!2690516) b!6557170))

(assert (= (and b!6557170 res!2690515) b!6557168))

(assert (= (and b!6557171 (not res!2690512)) b!6557174))

(assert (= (and b!6557174 res!2690518) b!6557164))

(assert (= (and b!6557164 (not res!2690513)) b!6557176))

(assert (= (and b!6557176 (not res!2690517)) b!6557167))

(assert (= (or b!6557178 b!6557164 b!6557169) bm!570313))

(assert (=> b!6557176 m!7339208))

(assert (=> b!6557176 m!7339208))

(declare-fun m!7339366 () Bool)

(assert (=> b!6557176 m!7339366))

(assert (=> b!6557168 m!7339204))

(assert (=> b!6557163 m!7338996))

(assert (=> b!6557170 m!7339208))

(assert (=> b!6557170 m!7339208))

(assert (=> b!6557170 m!7339366))

(assert (=> bm!570313 m!7339200))

(assert (=> d!2057488 m!7339200))

(assert (=> d!2057488 m!7338998))

(assert (=> b!6557167 m!7339204))

(assert (=> b!6557177 m!7339204))

(assert (=> b!6557177 m!7339204))

(declare-fun m!7339368 () Bool)

(assert (=> b!6557177 m!7339368))

(assert (=> b!6557177 m!7339208))

(assert (=> b!6557177 m!7339368))

(assert (=> b!6557177 m!7339208))

(declare-fun m!7339370 () Bool)

(assert (=> b!6557177 m!7339370))

(assert (=> b!6556596 d!2057488))

(declare-fun d!2057490 () Bool)

(assert (=> d!2057490 (= (matchR!8616 (reg!16762 (regOne!33378 r!7292)) (_1!36715 lt!2404601)) (matchZipper!2445 lt!2404597 (_1!36715 lt!2404601)))))

(declare-fun lt!2404754 () Unit!159067)

(declare-fun choose!48872 ((InoxSet Context!11634) List!65600 Regex!16433 List!65598) Unit!159067)

(assert (=> d!2057490 (= lt!2404754 (choose!48872 lt!2404597 lt!2404625 (reg!16762 (regOne!33378 r!7292)) (_1!36715 lt!2404601)))))

(assert (=> d!2057490 (validRegex!8169 (reg!16762 (regOne!33378 r!7292)))))

(assert (=> d!2057490 (= (theoremZipperRegexEquiv!869 lt!2404597 lt!2404625 (reg!16762 (regOne!33378 r!7292)) (_1!36715 lt!2404601)) lt!2404754)))

(declare-fun bs!1673502 () Bool)

(assert (= bs!1673502 d!2057490))

(assert (=> bs!1673502 m!7338814))

(assert (=> bs!1673502 m!7338708))

(declare-fun m!7339390 () Bool)

(assert (=> bs!1673502 m!7339390))

(assert (=> bs!1673502 m!7338746))

(assert (=> b!6556596 d!2057490))

(declare-fun bs!1673503 () Bool)

(declare-fun d!2057496 () Bool)

(assert (= bs!1673503 (and d!2057496 b!6556596)))

(declare-fun lambda!364553 () Int)

(assert (=> bs!1673503 (not (= lambda!364553 lambda!364502))))

(declare-fun bs!1673504 () Bool)

(assert (= bs!1673504 (and d!2057496 d!2057428)))

(assert (=> bs!1673504 (= lambda!364553 lambda!364539)))

(declare-fun bs!1673505 () Bool)

(assert (= bs!1673505 (and d!2057496 b!6556790)))

(assert (=> bs!1673505 (not (= lambda!364553 lambda!364521))))

(assert (=> bs!1673503 (= lambda!364553 lambda!364501)))

(declare-fun bs!1673506 () Bool)

(assert (= bs!1673506 (and d!2057496 b!6556588)))

(assert (=> bs!1673506 (= (= lt!2404586 (regOne!33378 r!7292)) (= lambda!364553 lambda!364496))))

(assert (=> bs!1673506 (not (= lambda!364553 lambda!364497))))

(declare-fun bs!1673507 () Bool)

(assert (= bs!1673507 (and d!2057496 b!6556796)))

(assert (=> bs!1673507 (not (= lambda!364553 lambda!364520))))

(declare-fun bs!1673508 () Bool)

(assert (= bs!1673508 (and d!2057496 b!6556608)))

(assert (=> bs!1673508 (= (and (= s!2326 (_1!36715 lt!2404638)) (= lt!2404586 (reg!16762 (regOne!33378 r!7292))) (= (regTwo!33378 r!7292) lt!2404592)) (= lambda!364553 lambda!364503))))

(assert (=> d!2057496 true))

(assert (=> d!2057496 true))

(assert (=> d!2057496 true))

(declare-fun lambda!364554 () Int)

(assert (=> bs!1673503 (= lambda!364554 lambda!364502)))

(assert (=> bs!1673504 (not (= lambda!364554 lambda!364539))))

(assert (=> bs!1673505 (= (and (= lt!2404586 (regOne!33378 lt!2404594)) (= (regTwo!33378 r!7292) (regTwo!33378 lt!2404594))) (= lambda!364554 lambda!364521))))

(assert (=> bs!1673503 (not (= lambda!364554 lambda!364501))))

(assert (=> bs!1673506 (not (= lambda!364554 lambda!364496))))

(assert (=> bs!1673506 (= (= lt!2404586 (regOne!33378 r!7292)) (= lambda!364554 lambda!364497))))

(declare-fun bs!1673509 () Bool)

(assert (= bs!1673509 d!2057496))

(assert (=> bs!1673509 (not (= lambda!364554 lambda!364553))))

(assert (=> bs!1673507 (not (= lambda!364554 lambda!364520))))

(assert (=> bs!1673508 (not (= lambda!364554 lambda!364503))))

(assert (=> d!2057496 true))

(assert (=> d!2057496 true))

(assert (=> d!2057496 true))

(assert (=> d!2057496 (= (Exists!3503 lambda!364553) (Exists!3503 lambda!364554))))

(declare-fun lt!2404762 () Unit!159067)

(declare-fun choose!48873 (Regex!16433 Regex!16433 List!65598) Unit!159067)

(assert (=> d!2057496 (= lt!2404762 (choose!48873 lt!2404586 (regTwo!33378 r!7292) s!2326))))

(assert (=> d!2057496 (validRegex!8169 lt!2404586)))

(assert (=> d!2057496 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2040 lt!2404586 (regTwo!33378 r!7292) s!2326) lt!2404762)))

(declare-fun m!7339416 () Bool)

(assert (=> bs!1673509 m!7339416))

(declare-fun m!7339418 () Bool)

(assert (=> bs!1673509 m!7339418))

(declare-fun m!7339420 () Bool)

(assert (=> bs!1673509 m!7339420))

(assert (=> bs!1673509 m!7339186))

(assert (=> b!6556596 d!2057496))

(declare-fun bs!1673511 () Bool)

(declare-fun b!6557257 () Bool)

(assert (= bs!1673511 (and b!6557257 b!6556596)))

(declare-fun lambda!364555 () Int)

(assert (=> bs!1673511 (not (= lambda!364555 lambda!364502))))

(declare-fun bs!1673512 () Bool)

(assert (= bs!1673512 (and b!6557257 d!2057428)))

(assert (=> bs!1673512 (not (= lambda!364555 lambda!364539))))

(declare-fun bs!1673513 () Bool)

(assert (= bs!1673513 (and b!6557257 b!6556790)))

(assert (=> bs!1673513 (not (= lambda!364555 lambda!364521))))

(assert (=> bs!1673511 (not (= lambda!364555 lambda!364501))))

(declare-fun bs!1673514 () Bool)

(assert (= bs!1673514 (and b!6557257 b!6556588)))

(assert (=> bs!1673514 (not (= lambda!364555 lambda!364496))))

(assert (=> bs!1673514 (not (= lambda!364555 lambda!364497))))

(declare-fun bs!1673515 () Bool)

(assert (= bs!1673515 (and b!6557257 d!2057496)))

(assert (=> bs!1673515 (not (= lambda!364555 lambda!364554))))

(assert (=> bs!1673515 (not (= lambda!364555 lambda!364553))))

(declare-fun bs!1673516 () Bool)

(assert (= bs!1673516 (and b!6557257 b!6556796)))

(assert (=> bs!1673516 (= (and (= (reg!16762 lt!2404616) (reg!16762 lt!2404594)) (= lt!2404616 lt!2404594)) (= lambda!364555 lambda!364520))))

(declare-fun bs!1673517 () Bool)

(assert (= bs!1673517 (and b!6557257 b!6556608)))

(assert (=> bs!1673517 (not (= lambda!364555 lambda!364503))))

(assert (=> b!6557257 true))

(assert (=> b!6557257 true))

(declare-fun bs!1673518 () Bool)

(declare-fun b!6557251 () Bool)

(assert (= bs!1673518 (and b!6557251 b!6556596)))

(declare-fun lambda!364556 () Int)

(assert (=> bs!1673518 (= (and (= (regOne!33378 lt!2404616) lt!2404586) (= (regTwo!33378 lt!2404616) (regTwo!33378 r!7292))) (= lambda!364556 lambda!364502))))

(declare-fun bs!1673519 () Bool)

(assert (= bs!1673519 (and b!6557251 d!2057428)))

(assert (=> bs!1673519 (not (= lambda!364556 lambda!364539))))

(declare-fun bs!1673520 () Bool)

(assert (= bs!1673520 (and b!6557251 b!6556790)))

(assert (=> bs!1673520 (= (and (= (regOne!33378 lt!2404616) (regOne!33378 lt!2404594)) (= (regTwo!33378 lt!2404616) (regTwo!33378 lt!2404594))) (= lambda!364556 lambda!364521))))

(assert (=> bs!1673518 (not (= lambda!364556 lambda!364501))))

(declare-fun bs!1673521 () Bool)

(assert (= bs!1673521 (and b!6557251 b!6557257)))

(assert (=> bs!1673521 (not (= lambda!364556 lambda!364555))))

(declare-fun bs!1673522 () Bool)

(assert (= bs!1673522 (and b!6557251 b!6556588)))

(assert (=> bs!1673522 (not (= lambda!364556 lambda!364496))))

(assert (=> bs!1673522 (= (and (= (regOne!33378 lt!2404616) (regOne!33378 r!7292)) (= (regTwo!33378 lt!2404616) (regTwo!33378 r!7292))) (= lambda!364556 lambda!364497))))

(declare-fun bs!1673523 () Bool)

(assert (= bs!1673523 (and b!6557251 d!2057496)))

(assert (=> bs!1673523 (= (and (= (regOne!33378 lt!2404616) lt!2404586) (= (regTwo!33378 lt!2404616) (regTwo!33378 r!7292))) (= lambda!364556 lambda!364554))))

(assert (=> bs!1673523 (not (= lambda!364556 lambda!364553))))

(declare-fun bs!1673524 () Bool)

(assert (= bs!1673524 (and b!6557251 b!6556796)))

(assert (=> bs!1673524 (not (= lambda!364556 lambda!364520))))

(declare-fun bs!1673525 () Bool)

(assert (= bs!1673525 (and b!6557251 b!6556608)))

(assert (=> bs!1673525 (not (= lambda!364556 lambda!364503))))

(assert (=> b!6557251 true))

(assert (=> b!6557251 true))

(declare-fun b!6557248 () Bool)

(declare-fun e!3969716 () Bool)

(assert (=> b!6557248 (= e!3969716 (= s!2326 (Cons!65474 (c!1204578 lt!2404616) Nil!65474)))))

(declare-fun b!6557249 () Bool)

(declare-fun e!3969713 () Bool)

(declare-fun e!3969719 () Bool)

(assert (=> b!6557249 (= e!3969713 e!3969719)))

(declare-fun c!1204752 () Bool)

(assert (=> b!6557249 (= c!1204752 ((_ is Star!16433) lt!2404616))))

(declare-fun d!2057504 () Bool)

(declare-fun c!1204754 () Bool)

(assert (=> d!2057504 (= c!1204754 ((_ is EmptyExpr!16433) lt!2404616))))

(declare-fun e!3969714 () Bool)

(assert (=> d!2057504 (= (matchRSpec!3534 lt!2404616 s!2326) e!3969714)))

(declare-fun b!6557250 () Bool)

(declare-fun e!3969715 () Bool)

(assert (=> b!6557250 (= e!3969713 e!3969715)))

(declare-fun res!2690558 () Bool)

(assert (=> b!6557250 (= res!2690558 (matchRSpec!3534 (regOne!33379 lt!2404616) s!2326))))

(assert (=> b!6557250 (=> res!2690558 e!3969715)))

(declare-fun call!570323 () Bool)

(assert (=> b!6557251 (= e!3969719 call!570323)))

(declare-fun bm!570317 () Bool)

(declare-fun call!570322 () Bool)

(assert (=> bm!570317 (= call!570322 (isEmpty!37713 s!2326))))

(declare-fun bm!570318 () Bool)

(assert (=> bm!570318 (= call!570323 (Exists!3503 (ite c!1204752 lambda!364555 lambda!364556)))))

(declare-fun b!6557252 () Bool)

(declare-fun c!1204751 () Bool)

(assert (=> b!6557252 (= c!1204751 ((_ is Union!16433) lt!2404616))))

(assert (=> b!6557252 (= e!3969716 e!3969713)))

(declare-fun b!6557253 () Bool)

(declare-fun e!3969718 () Bool)

(assert (=> b!6557253 (= e!3969714 e!3969718)))

(declare-fun res!2690556 () Bool)

(assert (=> b!6557253 (= res!2690556 (not ((_ is EmptyLang!16433) lt!2404616)))))

(assert (=> b!6557253 (=> (not res!2690556) (not e!3969718))))

(declare-fun b!6557254 () Bool)

(declare-fun res!2690557 () Bool)

(declare-fun e!3969717 () Bool)

(assert (=> b!6557254 (=> res!2690557 e!3969717)))

(assert (=> b!6557254 (= res!2690557 call!570322)))

(assert (=> b!6557254 (= e!3969719 e!3969717)))

(declare-fun b!6557255 () Bool)

(assert (=> b!6557255 (= e!3969715 (matchRSpec!3534 (regTwo!33379 lt!2404616) s!2326))))

(declare-fun b!6557256 () Bool)

(assert (=> b!6557256 (= e!3969714 call!570322)))

(assert (=> b!6557257 (= e!3969717 call!570323)))

(declare-fun b!6557258 () Bool)

(declare-fun c!1204753 () Bool)

(assert (=> b!6557258 (= c!1204753 ((_ is ElementMatch!16433) lt!2404616))))

(assert (=> b!6557258 (= e!3969718 e!3969716)))

(assert (= (and d!2057504 c!1204754) b!6557256))

(assert (= (and d!2057504 (not c!1204754)) b!6557253))

(assert (= (and b!6557253 res!2690556) b!6557258))

(assert (= (and b!6557258 c!1204753) b!6557248))

(assert (= (and b!6557258 (not c!1204753)) b!6557252))

(assert (= (and b!6557252 c!1204751) b!6557250))

(assert (= (and b!6557252 (not c!1204751)) b!6557249))

(assert (= (and b!6557250 (not res!2690558)) b!6557255))

(assert (= (and b!6557249 c!1204752) b!6557254))

(assert (= (and b!6557249 (not c!1204752)) b!6557251))

(assert (= (and b!6557254 (not res!2690557)) b!6557257))

(assert (= (or b!6557257 b!6557251) bm!570318))

(assert (= (or b!6557256 b!6557254) bm!570317))

(declare-fun m!7339426 () Bool)

(assert (=> b!6557250 m!7339426))

(assert (=> bm!570317 m!7338898))

(declare-fun m!7339428 () Bool)

(assert (=> bm!570318 m!7339428))

(declare-fun m!7339430 () Bool)

(assert (=> b!6557255 m!7339430))

(assert (=> b!6556596 d!2057504))

(declare-fun d!2057510 () Bool)

(declare-fun choose!48874 (Int) Bool)

(assert (=> d!2057510 (= (Exists!3503 lambda!364502) (choose!48874 lambda!364502))))

(declare-fun bs!1673526 () Bool)

(assert (= bs!1673526 d!2057510))

(declare-fun m!7339432 () Bool)

(assert (=> bs!1673526 m!7339432))

(assert (=> b!6556596 d!2057510))

(declare-fun d!2057512 () Bool)

(assert (=> d!2057512 (= (matchR!8616 lt!2404611 (_2!36715 lt!2404601)) (matchZipper!2445 lt!2404621 (_2!36715 lt!2404601)))))

(declare-fun lt!2404768 () Unit!159067)

(assert (=> d!2057512 (= lt!2404768 (choose!48872 lt!2404621 lt!2404622 lt!2404611 (_2!36715 lt!2404601)))))

(assert (=> d!2057512 (validRegex!8169 lt!2404611)))

(assert (=> d!2057512 (= (theoremZipperRegexEquiv!869 lt!2404621 lt!2404622 lt!2404611 (_2!36715 lt!2404601)) lt!2404768)))

(declare-fun bs!1673528 () Bool)

(assert (= bs!1673528 d!2057512))

(assert (=> bs!1673528 m!7338796))

(assert (=> bs!1673528 m!7338830))

(declare-fun m!7339436 () Bool)

(assert (=> bs!1673528 m!7339436))

(assert (=> bs!1673528 m!7339198))

(assert (=> b!6556596 d!2057512))

(declare-fun d!2057516 () Bool)

(assert (=> d!2057516 (= (Exists!3503 lambda!364501) (choose!48874 lambda!364501))))

(declare-fun bs!1673530 () Bool)

(assert (= bs!1673530 d!2057516))

(declare-fun m!7339438 () Bool)

(assert (=> bs!1673530 m!7339438))

(assert (=> b!6556596 d!2057516))

(declare-fun b!6557259 () Bool)

(declare-fun e!3969720 () Bool)

(assert (=> b!6557259 (= e!3969720 (nullable!6426 lt!2404611))))

(declare-fun b!6557260 () Bool)

(declare-fun e!3969725 () Bool)

(declare-fun e!3969726 () Bool)

(assert (=> b!6557260 (= e!3969725 e!3969726)))

(declare-fun res!2690561 () Bool)

(assert (=> b!6557260 (=> res!2690561 e!3969726)))

(declare-fun call!570324 () Bool)

(assert (=> b!6557260 (= res!2690561 call!570324)))

(declare-fun bm!570319 () Bool)

(assert (=> bm!570319 (= call!570324 (isEmpty!37713 (_2!36715 lt!2404601)))))

(declare-fun b!6557262 () Bool)

(declare-fun e!3969723 () Bool)

(assert (=> b!6557262 (= e!3969723 (= (head!13316 (_2!36715 lt!2404601)) (c!1204578 lt!2404611)))))

(declare-fun b!6557263 () Bool)

(declare-fun res!2690564 () Bool)

(assert (=> b!6557263 (=> (not res!2690564) (not e!3969723))))

(assert (=> b!6557263 (= res!2690564 (not call!570324))))

(declare-fun b!6557264 () Bool)

(declare-fun res!2690563 () Bool)

(assert (=> b!6557264 (=> (not res!2690563) (not e!3969723))))

(assert (=> b!6557264 (= res!2690563 (isEmpty!37713 (tail!12401 (_2!36715 lt!2404601))))))

(declare-fun b!6557265 () Bool)

(declare-fun res!2690560 () Bool)

(declare-fun e!3969722 () Bool)

(assert (=> b!6557265 (=> res!2690560 e!3969722)))

(assert (=> b!6557265 (= res!2690560 e!3969723)))

(declare-fun res!2690562 () Bool)

(assert (=> b!6557265 (=> (not res!2690562) (not e!3969723))))

(declare-fun lt!2404770 () Bool)

(assert (=> b!6557265 (= res!2690562 lt!2404770)))

(declare-fun b!6557266 () Bool)

(declare-fun e!3969721 () Bool)

(assert (=> b!6557266 (= e!3969721 (not lt!2404770))))

(declare-fun b!6557267 () Bool)

(declare-fun e!3969724 () Bool)

(assert (=> b!6557267 (= e!3969724 e!3969721)))

(declare-fun c!1204755 () Bool)

(assert (=> b!6557267 (= c!1204755 ((_ is EmptyLang!16433) lt!2404611))))

(declare-fun b!6557268 () Bool)

(assert (=> b!6557268 (= e!3969722 e!3969725)))

(declare-fun res!2690566 () Bool)

(assert (=> b!6557268 (=> (not res!2690566) (not e!3969725))))

(assert (=> b!6557268 (= res!2690566 (not lt!2404770))))

(declare-fun b!6557269 () Bool)

(declare-fun res!2690559 () Bool)

(assert (=> b!6557269 (=> res!2690559 e!3969722)))

(assert (=> b!6557269 (= res!2690559 (not ((_ is ElementMatch!16433) lt!2404611)))))

(assert (=> b!6557269 (= e!3969721 e!3969722)))

(declare-fun b!6557270 () Bool)

(declare-fun res!2690565 () Bool)

(assert (=> b!6557270 (=> res!2690565 e!3969726)))

(assert (=> b!6557270 (= res!2690565 (not (isEmpty!37713 (tail!12401 (_2!36715 lt!2404601)))))))

(declare-fun b!6557261 () Bool)

(assert (=> b!6557261 (= e!3969726 (not (= (head!13316 (_2!36715 lt!2404601)) (c!1204578 lt!2404611))))))

(declare-fun d!2057518 () Bool)

(assert (=> d!2057518 e!3969724))

(declare-fun c!1204757 () Bool)

(assert (=> d!2057518 (= c!1204757 ((_ is EmptyExpr!16433) lt!2404611))))

(assert (=> d!2057518 (= lt!2404770 e!3969720)))

(declare-fun c!1204756 () Bool)

(assert (=> d!2057518 (= c!1204756 (isEmpty!37713 (_2!36715 lt!2404601)))))

(assert (=> d!2057518 (validRegex!8169 lt!2404611)))

(assert (=> d!2057518 (= (matchR!8616 lt!2404611 (_2!36715 lt!2404601)) lt!2404770)))

(declare-fun b!6557271 () Bool)

(assert (=> b!6557271 (= e!3969720 (matchR!8616 (derivativeStep!5116 lt!2404611 (head!13316 (_2!36715 lt!2404601))) (tail!12401 (_2!36715 lt!2404601))))))

(declare-fun b!6557272 () Bool)

(assert (=> b!6557272 (= e!3969724 (= lt!2404770 call!570324))))

(assert (= (and d!2057518 c!1204756) b!6557259))

(assert (= (and d!2057518 (not c!1204756)) b!6557271))

(assert (= (and d!2057518 c!1204757) b!6557272))

(assert (= (and d!2057518 (not c!1204757)) b!6557267))

(assert (= (and b!6557267 c!1204755) b!6557266))

(assert (= (and b!6557267 (not c!1204755)) b!6557269))

(assert (= (and b!6557269 (not res!2690559)) b!6557265))

(assert (= (and b!6557265 res!2690562) b!6557263))

(assert (= (and b!6557263 res!2690564) b!6557264))

(assert (= (and b!6557264 res!2690563) b!6557262))

(assert (= (and b!6557265 (not res!2690560)) b!6557268))

(assert (= (and b!6557268 res!2690566) b!6557260))

(assert (= (and b!6557260 (not res!2690561)) b!6557270))

(assert (= (and b!6557270 (not res!2690565)) b!6557261))

(assert (= (or b!6557272 b!6557260 b!6557263) bm!570319))

(declare-fun m!7339446 () Bool)

(assert (=> b!6557270 m!7339446))

(assert (=> b!6557270 m!7339446))

(declare-fun m!7339448 () Bool)

(assert (=> b!6557270 m!7339448))

(declare-fun m!7339450 () Bool)

(assert (=> b!6557262 m!7339450))

(declare-fun m!7339452 () Bool)

(assert (=> b!6557259 m!7339452))

(assert (=> b!6557264 m!7339446))

(assert (=> b!6557264 m!7339446))

(assert (=> b!6557264 m!7339448))

(declare-fun m!7339454 () Bool)

(assert (=> bm!570319 m!7339454))

(assert (=> d!2057518 m!7339454))

(assert (=> d!2057518 m!7339198))

(assert (=> b!6557261 m!7339450))

(assert (=> b!6557271 m!7339450))

(assert (=> b!6557271 m!7339450))

(declare-fun m!7339456 () Bool)

(assert (=> b!6557271 m!7339456))

(assert (=> b!6557271 m!7339446))

(assert (=> b!6557271 m!7339456))

(assert (=> b!6557271 m!7339446))

(declare-fun m!7339458 () Bool)

(assert (=> b!6557271 m!7339458))

(assert (=> b!6556596 d!2057518))

(declare-fun bs!1673539 () Bool)

(declare-fun b!6557282 () Bool)

(assert (= bs!1673539 (and b!6557282 b!6557251)))

(declare-fun lambda!364558 () Int)

(assert (=> bs!1673539 (not (= lambda!364558 lambda!364556))))

(declare-fun bs!1673541 () Bool)

(assert (= bs!1673541 (and b!6557282 b!6556596)))

(assert (=> bs!1673541 (not (= lambda!364558 lambda!364502))))

(declare-fun bs!1673542 () Bool)

(assert (= bs!1673542 (and b!6557282 d!2057428)))

(assert (=> bs!1673542 (not (= lambda!364558 lambda!364539))))

(declare-fun bs!1673543 () Bool)

(assert (= bs!1673543 (and b!6557282 b!6556790)))

(assert (=> bs!1673543 (not (= lambda!364558 lambda!364521))))

(assert (=> bs!1673541 (not (= lambda!364558 lambda!364501))))

(declare-fun bs!1673544 () Bool)

(assert (= bs!1673544 (and b!6557282 b!6557257)))

(assert (=> bs!1673544 (= (and (= (reg!16762 r!7292) (reg!16762 lt!2404616)) (= r!7292 lt!2404616)) (= lambda!364558 lambda!364555))))

(declare-fun bs!1673545 () Bool)

(assert (= bs!1673545 (and b!6557282 b!6556588)))

(assert (=> bs!1673545 (not (= lambda!364558 lambda!364496))))

(assert (=> bs!1673545 (not (= lambda!364558 lambda!364497))))

(declare-fun bs!1673546 () Bool)

(assert (= bs!1673546 (and b!6557282 d!2057496)))

(assert (=> bs!1673546 (not (= lambda!364558 lambda!364554))))

(assert (=> bs!1673546 (not (= lambda!364558 lambda!364553))))

(declare-fun bs!1673548 () Bool)

(assert (= bs!1673548 (and b!6557282 b!6556796)))

(assert (=> bs!1673548 (= (and (= (reg!16762 r!7292) (reg!16762 lt!2404594)) (= r!7292 lt!2404594)) (= lambda!364558 lambda!364520))))

(declare-fun bs!1673549 () Bool)

(assert (= bs!1673549 (and b!6557282 b!6556608)))

(assert (=> bs!1673549 (not (= lambda!364558 lambda!364503))))

(assert (=> b!6557282 true))

(assert (=> b!6557282 true))

(declare-fun bs!1673550 () Bool)

(declare-fun b!6557276 () Bool)

(assert (= bs!1673550 (and b!6557276 b!6557251)))

(declare-fun lambda!364560 () Int)

(assert (=> bs!1673550 (= (and (= (regOne!33378 r!7292) (regOne!33378 lt!2404616)) (= (regTwo!33378 r!7292) (regTwo!33378 lt!2404616))) (= lambda!364560 lambda!364556))))

(declare-fun bs!1673551 () Bool)

(assert (= bs!1673551 (and b!6557276 b!6556596)))

(assert (=> bs!1673551 (= (= (regOne!33378 r!7292) lt!2404586) (= lambda!364560 lambda!364502))))

(declare-fun bs!1673552 () Bool)

(assert (= bs!1673552 (and b!6557276 d!2057428)))

(assert (=> bs!1673552 (not (= lambda!364560 lambda!364539))))

(declare-fun bs!1673553 () Bool)

(assert (= bs!1673553 (and b!6557276 b!6556790)))

(assert (=> bs!1673553 (= (and (= (regOne!33378 r!7292) (regOne!33378 lt!2404594)) (= (regTwo!33378 r!7292) (regTwo!33378 lt!2404594))) (= lambda!364560 lambda!364521))))

(assert (=> bs!1673551 (not (= lambda!364560 lambda!364501))))

(declare-fun bs!1673554 () Bool)

(assert (= bs!1673554 (and b!6557276 b!6556588)))

(assert (=> bs!1673554 (not (= lambda!364560 lambda!364496))))

(assert (=> bs!1673554 (= lambda!364560 lambda!364497)))

(declare-fun bs!1673555 () Bool)

(assert (= bs!1673555 (and b!6557276 d!2057496)))

(assert (=> bs!1673555 (= (= (regOne!33378 r!7292) lt!2404586) (= lambda!364560 lambda!364554))))

(assert (=> bs!1673555 (not (= lambda!364560 lambda!364553))))

(declare-fun bs!1673556 () Bool)

(assert (= bs!1673556 (and b!6557276 b!6556796)))

(assert (=> bs!1673556 (not (= lambda!364560 lambda!364520))))

(declare-fun bs!1673557 () Bool)

(assert (= bs!1673557 (and b!6557276 b!6556608)))

(assert (=> bs!1673557 (not (= lambda!364560 lambda!364503))))

(declare-fun bs!1673558 () Bool)

(assert (= bs!1673558 (and b!6557276 b!6557282)))

(assert (=> bs!1673558 (not (= lambda!364560 lambda!364558))))

(declare-fun bs!1673559 () Bool)

(assert (= bs!1673559 (and b!6557276 b!6557257)))

(assert (=> bs!1673559 (not (= lambda!364560 lambda!364555))))

(assert (=> b!6557276 true))

(assert (=> b!6557276 true))

(declare-fun b!6557273 () Bool)

(declare-fun e!3969730 () Bool)

(assert (=> b!6557273 (= e!3969730 (= s!2326 (Cons!65474 (c!1204578 r!7292) Nil!65474)))))

(declare-fun b!6557274 () Bool)

(declare-fun e!3969727 () Bool)

(declare-fun e!3969733 () Bool)

(assert (=> b!6557274 (= e!3969727 e!3969733)))

(declare-fun c!1204759 () Bool)

(assert (=> b!6557274 (= c!1204759 ((_ is Star!16433) r!7292))))

(declare-fun d!2057524 () Bool)

(declare-fun c!1204761 () Bool)

(assert (=> d!2057524 (= c!1204761 ((_ is EmptyExpr!16433) r!7292))))

(declare-fun e!3969728 () Bool)

(assert (=> d!2057524 (= (matchRSpec!3534 r!7292 s!2326) e!3969728)))

(declare-fun b!6557275 () Bool)

(declare-fun e!3969729 () Bool)

(assert (=> b!6557275 (= e!3969727 e!3969729)))

(declare-fun res!2690569 () Bool)

(assert (=> b!6557275 (= res!2690569 (matchRSpec!3534 (regOne!33379 r!7292) s!2326))))

(assert (=> b!6557275 (=> res!2690569 e!3969729)))

(declare-fun call!570326 () Bool)

(assert (=> b!6557276 (= e!3969733 call!570326)))

(declare-fun bm!570320 () Bool)

(declare-fun call!570325 () Bool)

(assert (=> bm!570320 (= call!570325 (isEmpty!37713 s!2326))))

(declare-fun bm!570321 () Bool)

(assert (=> bm!570321 (= call!570326 (Exists!3503 (ite c!1204759 lambda!364558 lambda!364560)))))

(declare-fun b!6557277 () Bool)

(declare-fun c!1204758 () Bool)

(assert (=> b!6557277 (= c!1204758 ((_ is Union!16433) r!7292))))

(assert (=> b!6557277 (= e!3969730 e!3969727)))

(declare-fun b!6557278 () Bool)

(declare-fun e!3969732 () Bool)

(assert (=> b!6557278 (= e!3969728 e!3969732)))

(declare-fun res!2690567 () Bool)

(assert (=> b!6557278 (= res!2690567 (not ((_ is EmptyLang!16433) r!7292)))))

(assert (=> b!6557278 (=> (not res!2690567) (not e!3969732))))

(declare-fun b!6557279 () Bool)

(declare-fun res!2690568 () Bool)

(declare-fun e!3969731 () Bool)

(assert (=> b!6557279 (=> res!2690568 e!3969731)))

(assert (=> b!6557279 (= res!2690568 call!570325)))

(assert (=> b!6557279 (= e!3969733 e!3969731)))

(declare-fun b!6557280 () Bool)

(assert (=> b!6557280 (= e!3969729 (matchRSpec!3534 (regTwo!33379 r!7292) s!2326))))

(declare-fun b!6557281 () Bool)

(assert (=> b!6557281 (= e!3969728 call!570325)))

(assert (=> b!6557282 (= e!3969731 call!570326)))

(declare-fun b!6557283 () Bool)

(declare-fun c!1204760 () Bool)

(assert (=> b!6557283 (= c!1204760 ((_ is ElementMatch!16433) r!7292))))

(assert (=> b!6557283 (= e!3969732 e!3969730)))

(assert (= (and d!2057524 c!1204761) b!6557281))

(assert (= (and d!2057524 (not c!1204761)) b!6557278))

(assert (= (and b!6557278 res!2690567) b!6557283))

(assert (= (and b!6557283 c!1204760) b!6557273))

(assert (= (and b!6557283 (not c!1204760)) b!6557277))

(assert (= (and b!6557277 c!1204758) b!6557275))

(assert (= (and b!6557277 (not c!1204758)) b!6557274))

(assert (= (and b!6557275 (not res!2690569)) b!6557280))

(assert (= (and b!6557274 c!1204759) b!6557279))

(assert (= (and b!6557274 (not c!1204759)) b!6557276))

(assert (= (and b!6557279 (not res!2690568)) b!6557282))

(assert (= (or b!6557282 b!6557276) bm!570321))

(assert (= (or b!6557281 b!6557279) bm!570320))

(declare-fun m!7339478 () Bool)

(assert (=> b!6557275 m!7339478))

(assert (=> bm!570320 m!7338898))

(declare-fun m!7339482 () Bool)

(assert (=> bm!570321 m!7339482))

(declare-fun m!7339484 () Bool)

(assert (=> b!6557280 m!7339484))

(assert (=> b!6556616 d!2057524))

(declare-fun b!6557302 () Bool)

(declare-fun e!3969741 () Bool)

(assert (=> b!6557302 (= e!3969741 (nullable!6426 r!7292))))

(declare-fun b!6557304 () Bool)

(declare-fun e!3969750 () Bool)

(declare-fun e!3969752 () Bool)

(assert (=> b!6557304 (= e!3969750 e!3969752)))

(declare-fun res!2690579 () Bool)

(assert (=> b!6557304 (=> res!2690579 e!3969752)))

(declare-fun call!570328 () Bool)

(assert (=> b!6557304 (= res!2690579 call!570328)))

(declare-fun bm!570323 () Bool)

(assert (=> bm!570323 (= call!570328 (isEmpty!37713 s!2326))))

(declare-fun b!6557308 () Bool)

(declare-fun e!3969746 () Bool)

(assert (=> b!6557308 (= e!3969746 (= (head!13316 s!2326) (c!1204578 r!7292)))))

(declare-fun b!6557310 () Bool)

(declare-fun res!2690587 () Bool)

(assert (=> b!6557310 (=> (not res!2690587) (not e!3969746))))

(assert (=> b!6557310 (= res!2690587 (not call!570328))))

(declare-fun b!6557312 () Bool)

(declare-fun res!2690584 () Bool)

(assert (=> b!6557312 (=> (not res!2690584) (not e!3969746))))

(assert (=> b!6557312 (= res!2690584 (isEmpty!37713 (tail!12401 s!2326)))))

(declare-fun b!6557313 () Bool)

(declare-fun res!2690577 () Bool)

(declare-fun e!3969744 () Bool)

(assert (=> b!6557313 (=> res!2690577 e!3969744)))

(assert (=> b!6557313 (= res!2690577 e!3969746)))

(declare-fun res!2690583 () Bool)

(assert (=> b!6557313 (=> (not res!2690583) (not e!3969746))))

(declare-fun lt!2404775 () Bool)

(assert (=> b!6557313 (= res!2690583 lt!2404775)))

(declare-fun b!6557314 () Bool)

(declare-fun e!3969743 () Bool)

(assert (=> b!6557314 (= e!3969743 (not lt!2404775))))

(declare-fun b!6557315 () Bool)

(declare-fun e!3969748 () Bool)

(assert (=> b!6557315 (= e!3969748 e!3969743)))

(declare-fun c!1204764 () Bool)

(assert (=> b!6557315 (= c!1204764 ((_ is EmptyLang!16433) r!7292))))

(declare-fun b!6557316 () Bool)

(assert (=> b!6557316 (= e!3969744 e!3969750)))

(declare-fun res!2690590 () Bool)

(assert (=> b!6557316 (=> (not res!2690590) (not e!3969750))))

(assert (=> b!6557316 (= res!2690590 (not lt!2404775))))

(declare-fun b!6557317 () Bool)

(declare-fun res!2690576 () Bool)

(assert (=> b!6557317 (=> res!2690576 e!3969744)))

(assert (=> b!6557317 (= res!2690576 (not ((_ is ElementMatch!16433) r!7292)))))

(assert (=> b!6557317 (= e!3969743 e!3969744)))

(declare-fun b!6557318 () Bool)

(declare-fun res!2690589 () Bool)

(assert (=> b!6557318 (=> res!2690589 e!3969752)))

(assert (=> b!6557318 (= res!2690589 (not (isEmpty!37713 (tail!12401 s!2326))))))

(declare-fun b!6557306 () Bool)

(assert (=> b!6557306 (= e!3969752 (not (= (head!13316 s!2326) (c!1204578 r!7292))))))

(declare-fun d!2057530 () Bool)

(assert (=> d!2057530 e!3969748))

(declare-fun c!1204769 () Bool)

(assert (=> d!2057530 (= c!1204769 ((_ is EmptyExpr!16433) r!7292))))

(assert (=> d!2057530 (= lt!2404775 e!3969741)))

(declare-fun c!1204765 () Bool)

(assert (=> d!2057530 (= c!1204765 (isEmpty!37713 s!2326))))

(assert (=> d!2057530 (validRegex!8169 r!7292)))

(assert (=> d!2057530 (= (matchR!8616 r!7292 s!2326) lt!2404775)))

(declare-fun b!6557319 () Bool)

(assert (=> b!6557319 (= e!3969741 (matchR!8616 (derivativeStep!5116 r!7292 (head!13316 s!2326)) (tail!12401 s!2326)))))

(declare-fun b!6557320 () Bool)

(assert (=> b!6557320 (= e!3969748 (= lt!2404775 call!570328))))

(assert (= (and d!2057530 c!1204765) b!6557302))

(assert (= (and d!2057530 (not c!1204765)) b!6557319))

(assert (= (and d!2057530 c!1204769) b!6557320))

(assert (= (and d!2057530 (not c!1204769)) b!6557315))

(assert (= (and b!6557315 c!1204764) b!6557314))

(assert (= (and b!6557315 (not c!1204764)) b!6557317))

(assert (= (and b!6557317 (not res!2690576)) b!6557313))

(assert (= (and b!6557313 res!2690583) b!6557310))

(assert (= (and b!6557310 res!2690587) b!6557312))

(assert (= (and b!6557312 res!2690584) b!6557308))

(assert (= (and b!6557313 (not res!2690577)) b!6557316))

(assert (= (and b!6557316 res!2690590) b!6557304))

(assert (= (and b!6557304 (not res!2690579)) b!6557318))

(assert (= (and b!6557318 (not res!2690589)) b!6557306))

(assert (= (or b!6557320 b!6557304 b!6557310) bm!570323))

(assert (=> b!6557318 m!7338906))

(assert (=> b!6557318 m!7338906))

(assert (=> b!6557318 m!7338994))

(assert (=> b!6557308 m!7338902))

(declare-fun m!7339490 () Bool)

(assert (=> b!6557302 m!7339490))

(assert (=> b!6557312 m!7338906))

(assert (=> b!6557312 m!7338906))

(assert (=> b!6557312 m!7338994))

(assert (=> bm!570323 m!7338898))

(assert (=> d!2057530 m!7338898))

(assert (=> d!2057530 m!7338722))

(assert (=> b!6557306 m!7338902))

(assert (=> b!6557319 m!7338902))

(assert (=> b!6557319 m!7338902))

(declare-fun m!7339496 () Bool)

(assert (=> b!6557319 m!7339496))

(assert (=> b!6557319 m!7338906))

(assert (=> b!6557319 m!7339496))

(assert (=> b!6557319 m!7338906))

(declare-fun m!7339498 () Bool)

(assert (=> b!6557319 m!7339498))

(assert (=> b!6556616 d!2057530))

(declare-fun d!2057534 () Bool)

(assert (=> d!2057534 (= (matchR!8616 r!7292 s!2326) (matchRSpec!3534 r!7292 s!2326))))

(declare-fun lt!2404777 () Unit!159067)

(assert (=> d!2057534 (= lt!2404777 (choose!48860 r!7292 s!2326))))

(assert (=> d!2057534 (validRegex!8169 r!7292)))

(assert (=> d!2057534 (= (mainMatchTheorem!3534 r!7292 s!2326) lt!2404777)))

(declare-fun bs!1673561 () Bool)

(assert (= bs!1673561 d!2057534))

(assert (=> bs!1673561 m!7338714))

(assert (=> bs!1673561 m!7338712))

(declare-fun m!7339502 () Bool)

(assert (=> bs!1673561 m!7339502))

(assert (=> bs!1673561 m!7338722))

(assert (=> b!6556616 d!2057534))

(declare-fun bs!1673562 () Bool)

(declare-fun d!2057538 () Bool)

(assert (= bs!1673562 (and d!2057538 b!6556611)))

(declare-fun lambda!364563 () Int)

(assert (=> bs!1673562 (= lambda!364563 lambda!364500)))

(declare-fun bs!1673563 () Bool)

(assert (= bs!1673563 (and d!2057538 d!2057390)))

(assert (=> bs!1673563 (= lambda!364563 lambda!364524)))

(declare-fun bs!1673564 () Bool)

(assert (= bs!1673564 (and d!2057538 d!2057402)))

(assert (=> bs!1673564 (= lambda!364563 lambda!364527)))

(declare-fun bs!1673565 () Bool)

(assert (= bs!1673565 (and d!2057538 d!2057414)))

(assert (=> bs!1673565 (= lambda!364563 lambda!364535)))

(assert (=> d!2057538 (= (inv!84329 (h!71924 zl!343)) (forall!15604 (exprs!6317 (h!71924 zl!343)) lambda!364563))))

(declare-fun bs!1673566 () Bool)

(assert (= bs!1673566 d!2057538))

(declare-fun m!7339504 () Bool)

(assert (=> bs!1673566 m!7339504))

(assert (=> b!6556594 d!2057538))

(declare-fun d!2057540 () Bool)

(declare-fun c!1204770 () Bool)

(assert (=> d!2057540 (= c!1204770 (isEmpty!37713 (t!379240 s!2326)))))

(declare-fun e!3969753 () Bool)

(assert (=> d!2057540 (= (matchZipper!2445 lt!2404632 (t!379240 s!2326)) e!3969753)))

(declare-fun b!6557321 () Bool)

(assert (=> b!6557321 (= e!3969753 (nullableZipper!2178 lt!2404632))))

(declare-fun b!6557322 () Bool)

(assert (=> b!6557322 (= e!3969753 (matchZipper!2445 (derivationStepZipper!2399 lt!2404632 (head!13316 (t!379240 s!2326))) (tail!12401 (t!379240 s!2326))))))

(assert (= (and d!2057540 c!1204770) b!6557321))

(assert (= (and d!2057540 (not c!1204770)) b!6557322))

(assert (=> d!2057540 m!7338884))

(declare-fun m!7339506 () Bool)

(assert (=> b!6557321 m!7339506))

(assert (=> b!6557322 m!7338888))

(assert (=> b!6557322 m!7338888))

(declare-fun m!7339508 () Bool)

(assert (=> b!6557322 m!7339508))

(assert (=> b!6557322 m!7338892))

(assert (=> b!6557322 m!7339508))

(assert (=> b!6557322 m!7338892))

(declare-fun m!7339510 () Bool)

(assert (=> b!6557322 m!7339510))

(assert (=> b!6556614 d!2057540))

(declare-fun d!2057542 () Bool)

(declare-fun e!3969759 () Bool)

(assert (=> d!2057542 (= (matchZipper!2445 ((_ map or) lt!2404632 lt!2404593) (t!379240 s!2326)) e!3969759)))

(declare-fun res!2690596 () Bool)

(assert (=> d!2057542 (=> res!2690596 e!3969759)))

(assert (=> d!2057542 (= res!2690596 (matchZipper!2445 lt!2404632 (t!379240 s!2326)))))

(declare-fun lt!2404783 () Unit!159067)

(declare-fun choose!48877 ((InoxSet Context!11634) (InoxSet Context!11634) List!65598) Unit!159067)

(assert (=> d!2057542 (= lt!2404783 (choose!48877 lt!2404632 lt!2404593 (t!379240 s!2326)))))

(assert (=> d!2057542 (= (lemmaZipperConcatMatchesSameAsBothZippers!1264 lt!2404632 lt!2404593 (t!379240 s!2326)) lt!2404783)))

(declare-fun b!6557328 () Bool)

(assert (=> b!6557328 (= e!3969759 (matchZipper!2445 lt!2404593 (t!379240 s!2326)))))

(assert (= (and d!2057542 (not res!2690596)) b!6557328))

(assert (=> d!2057542 m!7338742))

(assert (=> d!2057542 m!7338718))

(declare-fun m!7339516 () Bool)

(assert (=> d!2057542 m!7339516))

(assert (=> b!6557328 m!7338710))

(assert (=> b!6556624 d!2057542))

(assert (=> b!6556624 d!2057540))

(declare-fun d!2057546 () Bool)

(declare-fun c!1204771 () Bool)

(assert (=> d!2057546 (= c!1204771 (isEmpty!37713 (t!379240 s!2326)))))

(declare-fun e!3969760 () Bool)

(assert (=> d!2057546 (= (matchZipper!2445 ((_ map or) lt!2404632 lt!2404593) (t!379240 s!2326)) e!3969760)))

(declare-fun b!6557329 () Bool)

(assert (=> b!6557329 (= e!3969760 (nullableZipper!2178 ((_ map or) lt!2404632 lt!2404593)))))

(declare-fun b!6557330 () Bool)

(assert (=> b!6557330 (= e!3969760 (matchZipper!2445 (derivationStepZipper!2399 ((_ map or) lt!2404632 lt!2404593) (head!13316 (t!379240 s!2326))) (tail!12401 (t!379240 s!2326))))))

(assert (= (and d!2057546 c!1204771) b!6557329))

(assert (= (and d!2057546 (not c!1204771)) b!6557330))

(assert (=> d!2057546 m!7338884))

(declare-fun m!7339518 () Bool)

(assert (=> b!6557329 m!7339518))

(assert (=> b!6557330 m!7338888))

(assert (=> b!6557330 m!7338888))

(declare-fun m!7339520 () Bool)

(assert (=> b!6557330 m!7339520))

(assert (=> b!6557330 m!7338892))

(assert (=> b!6557330 m!7339520))

(assert (=> b!6557330 m!7338892))

(declare-fun m!7339522 () Bool)

(assert (=> b!6557330 m!7339522))

(assert (=> b!6556624 d!2057546))

(declare-fun d!2057548 () Bool)

(declare-fun lt!2404786 () Regex!16433)

(assert (=> d!2057548 (validRegex!8169 lt!2404786)))

(assert (=> d!2057548 (= lt!2404786 (generalisedUnion!2277 (unfocusZipperList!1854 (Cons!65476 lt!2404614 Nil!65476))))))

(assert (=> d!2057548 (= (unfocusZipper!2175 (Cons!65476 lt!2404614 Nil!65476)) lt!2404786)))

(declare-fun bs!1673567 () Bool)

(assert (= bs!1673567 d!2057548))

(declare-fun m!7339524 () Bool)

(assert (=> bs!1673567 m!7339524))

(declare-fun m!7339526 () Bool)

(assert (=> bs!1673567 m!7339526))

(assert (=> bs!1673567 m!7339526))

(declare-fun m!7339528 () Bool)

(assert (=> bs!1673567 m!7339528))

(assert (=> b!6556602 d!2057548))

(declare-fun d!2057550 () Bool)

(declare-fun lt!2404787 () Regex!16433)

(assert (=> d!2057550 (validRegex!8169 lt!2404787)))

(assert (=> d!2057550 (= lt!2404787 (generalisedUnion!2277 (unfocusZipperList!1854 lt!2404625)))))

(assert (=> d!2057550 (= (unfocusZipper!2175 lt!2404625) lt!2404787)))

(declare-fun bs!1673568 () Bool)

(assert (= bs!1673568 d!2057550))

(declare-fun m!7339530 () Bool)

(assert (=> bs!1673568 m!7339530))

(declare-fun m!7339532 () Bool)

(assert (=> bs!1673568 m!7339532))

(assert (=> bs!1673568 m!7339532))

(declare-fun m!7339534 () Bool)

(assert (=> bs!1673568 m!7339534))

(assert (=> b!6556623 d!2057550))

(declare-fun d!2057552 () Bool)

(declare-fun dynLambda!26038 (Int Context!11634) (InoxSet Context!11634))

(assert (=> d!2057552 (= (flatMap!1938 lt!2404597 lambda!364498) (dynLambda!26038 lambda!364498 lt!2404618))))

(declare-fun lt!2404794 () Unit!159067)

(declare-fun choose!48878 ((InoxSet Context!11634) Context!11634 Int) Unit!159067)

(assert (=> d!2057552 (= lt!2404794 (choose!48878 lt!2404597 lt!2404618 lambda!364498))))

(assert (=> d!2057552 (= lt!2404597 (store ((as const (Array Context!11634 Bool)) false) lt!2404618 true))))

(assert (=> d!2057552 (= (lemmaFlatMapOnSingletonSet!1464 lt!2404597 lt!2404618 lambda!364498) lt!2404794)))

(declare-fun b_lambda!248091 () Bool)

(assert (=> (not b_lambda!248091) (not d!2057552)))

(declare-fun bs!1673570 () Bool)

(assert (= bs!1673570 d!2057552))

(assert (=> bs!1673570 m!7338652))

(declare-fun m!7339536 () Bool)

(assert (=> bs!1673570 m!7339536))

(declare-fun m!7339538 () Bool)

(assert (=> bs!1673570 m!7339538))

(assert (=> bs!1673570 m!7338654))

(assert (=> b!6556623 d!2057552))

(declare-fun b!6557371 () Bool)

(declare-fun e!3969784 () (InoxSet Context!11634))

(declare-fun call!570333 () (InoxSet Context!11634))

(assert (=> b!6557371 (= e!3969784 call!570333)))

(declare-fun b!6557372 () Bool)

(declare-fun e!3969782 () (InoxSet Context!11634))

(assert (=> b!6557372 (= e!3969782 e!3969784)))

(declare-fun c!1204783 () Bool)

(assert (=> b!6557372 (= c!1204783 ((_ is Cons!65475) (exprs!6317 lt!2404612)))))

(declare-fun bm!570328 () Bool)

(assert (=> bm!570328 (= call!570333 (derivationStepZipperDown!1681 (h!71923 (exprs!6317 lt!2404612)) (Context!11635 (t!379241 (exprs!6317 lt!2404612))) (h!71922 s!2326)))))

(declare-fun d!2057554 () Bool)

(declare-fun c!1204784 () Bool)

(declare-fun e!3969783 () Bool)

(assert (=> d!2057554 (= c!1204784 e!3969783)))

(declare-fun res!2690615 () Bool)

(assert (=> d!2057554 (=> (not res!2690615) (not e!3969783))))

(assert (=> d!2057554 (= res!2690615 ((_ is Cons!65475) (exprs!6317 lt!2404612)))))

(assert (=> d!2057554 (= (derivationStepZipperUp!1607 lt!2404612 (h!71922 s!2326)) e!3969782)))

(declare-fun b!6557373 () Bool)

(assert (=> b!6557373 (= e!3969782 ((_ map or) call!570333 (derivationStepZipperUp!1607 (Context!11635 (t!379241 (exprs!6317 lt!2404612))) (h!71922 s!2326))))))

(declare-fun b!6557374 () Bool)

(assert (=> b!6557374 (= e!3969783 (nullable!6426 (h!71923 (exprs!6317 lt!2404612))))))

(declare-fun b!6557375 () Bool)

(assert (=> b!6557375 (= e!3969784 ((as const (Array Context!11634 Bool)) false))))

(assert (= (and d!2057554 res!2690615) b!6557374))

(assert (= (and d!2057554 c!1204784) b!6557373))

(assert (= (and d!2057554 (not c!1204784)) b!6557372))

(assert (= (and b!6557372 c!1204783) b!6557371))

(assert (= (and b!6557372 (not c!1204783)) b!6557375))

(assert (= (or b!6557373 b!6557371) bm!570328))

(declare-fun m!7339580 () Bool)

(assert (=> bm!570328 m!7339580))

(declare-fun m!7339582 () Bool)

(assert (=> b!6557373 m!7339582))

(declare-fun m!7339584 () Bool)

(assert (=> b!6557374 m!7339584))

(assert (=> b!6556623 d!2057554))

(declare-fun d!2057564 () Bool)

(declare-fun choose!48879 ((InoxSet Context!11634) Int) (InoxSet Context!11634))

(assert (=> d!2057564 (= (flatMap!1938 lt!2404621 lambda!364498) (choose!48879 lt!2404621 lambda!364498))))

(declare-fun bs!1673573 () Bool)

(assert (= bs!1673573 d!2057564))

(declare-fun m!7339586 () Bool)

(assert (=> bs!1673573 m!7339586))

(assert (=> b!6556623 d!2057564))

(declare-fun d!2057566 () Bool)

(assert (=> d!2057566 (= (flatMap!1938 lt!2404597 lambda!364498) (choose!48879 lt!2404597 lambda!364498))))

(declare-fun bs!1673574 () Bool)

(assert (= bs!1673574 d!2057566))

(declare-fun m!7339588 () Bool)

(assert (=> bs!1673574 m!7339588))

(assert (=> b!6556623 d!2057566))

(declare-fun b!6557376 () Bool)

(declare-fun e!3969787 () (InoxSet Context!11634))

(declare-fun call!570334 () (InoxSet Context!11634))

(assert (=> b!6557376 (= e!3969787 call!570334)))

(declare-fun b!6557377 () Bool)

(declare-fun e!3969785 () (InoxSet Context!11634))

(assert (=> b!6557377 (= e!3969785 e!3969787)))

(declare-fun c!1204785 () Bool)

(assert (=> b!6557377 (= c!1204785 ((_ is Cons!65475) (exprs!6317 lt!2404618)))))

(declare-fun bm!570329 () Bool)

(assert (=> bm!570329 (= call!570334 (derivationStepZipperDown!1681 (h!71923 (exprs!6317 lt!2404618)) (Context!11635 (t!379241 (exprs!6317 lt!2404618))) (h!71922 s!2326)))))

(declare-fun d!2057568 () Bool)

(declare-fun c!1204786 () Bool)

(declare-fun e!3969786 () Bool)

(assert (=> d!2057568 (= c!1204786 e!3969786)))

(declare-fun res!2690616 () Bool)

(assert (=> d!2057568 (=> (not res!2690616) (not e!3969786))))

(assert (=> d!2057568 (= res!2690616 ((_ is Cons!65475) (exprs!6317 lt!2404618)))))

(assert (=> d!2057568 (= (derivationStepZipperUp!1607 lt!2404618 (h!71922 s!2326)) e!3969785)))

(declare-fun b!6557378 () Bool)

(assert (=> b!6557378 (= e!3969785 ((_ map or) call!570334 (derivationStepZipperUp!1607 (Context!11635 (t!379241 (exprs!6317 lt!2404618))) (h!71922 s!2326))))))

(declare-fun b!6557379 () Bool)

(assert (=> b!6557379 (= e!3969786 (nullable!6426 (h!71923 (exprs!6317 lt!2404618))))))

(declare-fun b!6557380 () Bool)

(assert (=> b!6557380 (= e!3969787 ((as const (Array Context!11634 Bool)) false))))

(assert (= (and d!2057568 res!2690616) b!6557379))

(assert (= (and d!2057568 c!1204786) b!6557378))

(assert (= (and d!2057568 (not c!1204786)) b!6557377))

(assert (= (and b!6557377 c!1204785) b!6557376))

(assert (= (and b!6557377 (not c!1204785)) b!6557380))

(assert (= (or b!6557378 b!6557376) bm!570329))

(declare-fun m!7339590 () Bool)

(assert (=> bm!570329 m!7339590))

(declare-fun m!7339592 () Bool)

(assert (=> b!6557378 m!7339592))

(declare-fun m!7339594 () Bool)

(assert (=> b!6557379 m!7339594))

(assert (=> b!6556623 d!2057568))

(declare-fun d!2057570 () Bool)

(assert (=> d!2057570 (= (flatMap!1938 lt!2404621 lambda!364498) (dynLambda!26038 lambda!364498 lt!2404612))))

(declare-fun lt!2404799 () Unit!159067)

(assert (=> d!2057570 (= lt!2404799 (choose!48878 lt!2404621 lt!2404612 lambda!364498))))

(assert (=> d!2057570 (= lt!2404621 (store ((as const (Array Context!11634 Bool)) false) lt!2404612 true))))

(assert (=> d!2057570 (= (lemmaFlatMapOnSingletonSet!1464 lt!2404621 lt!2404612 lambda!364498) lt!2404799)))

(declare-fun b_lambda!248093 () Bool)

(assert (=> (not b_lambda!248093) (not d!2057570)))

(declare-fun bs!1673575 () Bool)

(assert (= bs!1673575 d!2057570))

(assert (=> bs!1673575 m!7338660))

(declare-fun m!7339596 () Bool)

(assert (=> bs!1673575 m!7339596))

(declare-fun m!7339598 () Bool)

(assert (=> bs!1673575 m!7339598))

(assert (=> bs!1673575 m!7338650))

(assert (=> b!6556623 d!2057570))

(declare-fun d!2057572 () Bool)

(declare-fun lt!2404800 () Regex!16433)

(assert (=> d!2057572 (validRegex!8169 lt!2404800)))

(assert (=> d!2057572 (= lt!2404800 (generalisedUnion!2277 (unfocusZipperList!1854 zl!343)))))

(assert (=> d!2057572 (= (unfocusZipper!2175 zl!343) lt!2404800)))

(declare-fun bs!1673576 () Bool)

(assert (= bs!1673576 d!2057572))

(declare-fun m!7339600 () Bool)

(assert (=> bs!1673576 m!7339600))

(assert (=> bs!1673576 m!7338760))

(assert (=> bs!1673576 m!7338760))

(assert (=> bs!1673576 m!7338762))

(assert (=> b!6556621 d!2057572))

(assert (=> b!6556581 d!2057342))

(declare-fun b!6557434 () Bool)

(declare-fun e!3969819 () (InoxSet Context!11634))

(declare-fun call!570353 () (InoxSet Context!11634))

(declare-fun call!570355 () (InoxSet Context!11634))

(assert (=> b!6557434 (= e!3969819 ((_ map or) call!570353 call!570355))))

(declare-fun bm!570345 () Bool)

(declare-fun call!570352 () (InoxSet Context!11634))

(assert (=> bm!570345 (= call!570352 call!570355)))

(declare-fun b!6557435 () Bool)

(declare-fun e!3969818 () (InoxSet Context!11634))

(assert (=> b!6557435 (= e!3969818 call!570352)))

(declare-fun b!6557436 () Bool)

(declare-fun e!3969817 () (InoxSet Context!11634))

(declare-fun e!3969820 () (InoxSet Context!11634))

(assert (=> b!6557436 (= e!3969817 e!3969820)))

(declare-fun c!1204805 () Bool)

(assert (=> b!6557436 (= c!1204805 ((_ is Union!16433) (h!71923 (exprs!6317 (h!71924 zl!343)))))))

(declare-fun bm!570346 () Bool)

(declare-fun call!570354 () List!65599)

(declare-fun call!570351 () List!65599)

(assert (=> bm!570346 (= call!570354 call!570351)))

(declare-fun bm!570347 () Bool)

(assert (=> bm!570347 (= call!570353 (derivationStepZipperDown!1681 (ite c!1204805 (regOne!33379 (h!71923 (exprs!6317 (h!71924 zl!343)))) (regOne!33378 (h!71923 (exprs!6317 (h!71924 zl!343))))) (ite c!1204805 lt!2404602 (Context!11635 call!570351)) (h!71922 s!2326)))))

(declare-fun b!6557437 () Bool)

(declare-fun call!570350 () (InoxSet Context!11634))

(assert (=> b!6557437 (= e!3969820 ((_ map or) call!570353 call!570350))))

(declare-fun b!6557438 () Bool)

(declare-fun e!3969822 () (InoxSet Context!11634))

(assert (=> b!6557438 (= e!3969822 call!570352)))

(declare-fun b!6557439 () Bool)

(assert (=> b!6557439 (= e!3969818 ((as const (Array Context!11634 Bool)) false))))

(declare-fun b!6557440 () Bool)

(declare-fun e!3969821 () Bool)

(assert (=> b!6557440 (= e!3969821 (nullable!6426 (regOne!33378 (h!71923 (exprs!6317 (h!71924 zl!343))))))))

(declare-fun c!1204804 () Bool)

(declare-fun bm!570348 () Bool)

(declare-fun c!1204808 () Bool)

(declare-fun $colon$colon!2274 (List!65599 Regex!16433) List!65599)

(assert (=> bm!570348 (= call!570351 ($colon$colon!2274 (exprs!6317 lt!2404602) (ite (or c!1204808 c!1204804) (regTwo!33378 (h!71923 (exprs!6317 (h!71924 zl!343)))) (h!71923 (exprs!6317 (h!71924 zl!343))))))))

(declare-fun b!6557441 () Bool)

(assert (=> b!6557441 (= c!1204808 e!3969821)))

(declare-fun res!2690636 () Bool)

(assert (=> b!6557441 (=> (not res!2690636) (not e!3969821))))

(assert (=> b!6557441 (= res!2690636 ((_ is Concat!25278) (h!71923 (exprs!6317 (h!71924 zl!343)))))))

(assert (=> b!6557441 (= e!3969820 e!3969819)))

(declare-fun b!6557442 () Bool)

(assert (=> b!6557442 (= e!3969817 (store ((as const (Array Context!11634 Bool)) false) lt!2404602 true))))

(declare-fun d!2057574 () Bool)

(declare-fun c!1204806 () Bool)

(assert (=> d!2057574 (= c!1204806 (and ((_ is ElementMatch!16433) (h!71923 (exprs!6317 (h!71924 zl!343)))) (= (c!1204578 (h!71923 (exprs!6317 (h!71924 zl!343)))) (h!71922 s!2326))))))

(assert (=> d!2057574 (= (derivationStepZipperDown!1681 (h!71923 (exprs!6317 (h!71924 zl!343))) lt!2404602 (h!71922 s!2326)) e!3969817)))

(declare-fun b!6557443 () Bool)

(declare-fun c!1204807 () Bool)

(assert (=> b!6557443 (= c!1204807 ((_ is Star!16433) (h!71923 (exprs!6317 (h!71924 zl!343)))))))

(assert (=> b!6557443 (= e!3969822 e!3969818)))

(declare-fun b!6557444 () Bool)

(assert (=> b!6557444 (= e!3969819 e!3969822)))

(assert (=> b!6557444 (= c!1204804 ((_ is Concat!25278) (h!71923 (exprs!6317 (h!71924 zl!343)))))))

(declare-fun bm!570349 () Bool)

(assert (=> bm!570349 (= call!570350 (derivationStepZipperDown!1681 (ite c!1204805 (regTwo!33379 (h!71923 (exprs!6317 (h!71924 zl!343)))) (ite c!1204808 (regTwo!33378 (h!71923 (exprs!6317 (h!71924 zl!343)))) (ite c!1204804 (regOne!33378 (h!71923 (exprs!6317 (h!71924 zl!343)))) (reg!16762 (h!71923 (exprs!6317 (h!71924 zl!343))))))) (ite (or c!1204805 c!1204808) lt!2404602 (Context!11635 call!570354)) (h!71922 s!2326)))))

(declare-fun bm!570350 () Bool)

(assert (=> bm!570350 (= call!570355 call!570350)))

(assert (= (and d!2057574 c!1204806) b!6557442))

(assert (= (and d!2057574 (not c!1204806)) b!6557436))

(assert (= (and b!6557436 c!1204805) b!6557437))

(assert (= (and b!6557436 (not c!1204805)) b!6557441))

(assert (= (and b!6557441 res!2690636) b!6557440))

(assert (= (and b!6557441 c!1204808) b!6557434))

(assert (= (and b!6557441 (not c!1204808)) b!6557444))

(assert (= (and b!6557444 c!1204804) b!6557438))

(assert (= (and b!6557444 (not c!1204804)) b!6557443))

(assert (= (and b!6557443 c!1204807) b!6557435))

(assert (= (and b!6557443 (not c!1204807)) b!6557439))

(assert (= (or b!6557438 b!6557435) bm!570346))

(assert (= (or b!6557438 b!6557435) bm!570345))

(assert (= (or b!6557434 bm!570346) bm!570348))

(assert (= (or b!6557434 bm!570345) bm!570350))

(assert (= (or b!6557437 bm!570350) bm!570349))

(assert (= (or b!6557437 b!6557434) bm!570347))

(declare-fun m!7339636 () Bool)

(assert (=> bm!570348 m!7339636))

(declare-fun m!7339638 () Bool)

(assert (=> bm!570349 m!7339638))

(declare-fun m!7339640 () Bool)

(assert (=> b!6557440 m!7339640))

(declare-fun m!7339642 () Bool)

(assert (=> b!6557442 m!7339642))

(declare-fun m!7339644 () Bool)

(assert (=> bm!570347 m!7339644))

(assert (=> b!6556601 d!2057574))

(declare-fun d!2057586 () Bool)

(declare-fun nullableFct!2352 (Regex!16433) Bool)

(assert (=> d!2057586 (= (nullable!6426 (h!71923 (exprs!6317 (h!71924 zl!343)))) (nullableFct!2352 (h!71923 (exprs!6317 (h!71924 zl!343)))))))

(declare-fun bs!1673612 () Bool)

(assert (= bs!1673612 d!2057586))

(declare-fun m!7339646 () Bool)

(assert (=> bs!1673612 m!7339646))

(assert (=> b!6556601 d!2057586))

(declare-fun b!6557445 () Bool)

(declare-fun e!3969825 () (InoxSet Context!11634))

(declare-fun call!570356 () (InoxSet Context!11634))

(assert (=> b!6557445 (= e!3969825 call!570356)))

(declare-fun b!6557446 () Bool)

(declare-fun e!3969823 () (InoxSet Context!11634))

(assert (=> b!6557446 (= e!3969823 e!3969825)))

(declare-fun c!1204809 () Bool)

(assert (=> b!6557446 (= c!1204809 ((_ is Cons!65475) (exprs!6317 (Context!11635 (Cons!65475 (h!71923 (exprs!6317 (h!71924 zl!343))) (t!379241 (exprs!6317 (h!71924 zl!343))))))))))

(declare-fun bm!570351 () Bool)

(assert (=> bm!570351 (= call!570356 (derivationStepZipperDown!1681 (h!71923 (exprs!6317 (Context!11635 (Cons!65475 (h!71923 (exprs!6317 (h!71924 zl!343))) (t!379241 (exprs!6317 (h!71924 zl!343))))))) (Context!11635 (t!379241 (exprs!6317 (Context!11635 (Cons!65475 (h!71923 (exprs!6317 (h!71924 zl!343))) (t!379241 (exprs!6317 (h!71924 zl!343)))))))) (h!71922 s!2326)))))

(declare-fun d!2057588 () Bool)

(declare-fun c!1204810 () Bool)

(declare-fun e!3969824 () Bool)

(assert (=> d!2057588 (= c!1204810 e!3969824)))

(declare-fun res!2690637 () Bool)

(assert (=> d!2057588 (=> (not res!2690637) (not e!3969824))))

(assert (=> d!2057588 (= res!2690637 ((_ is Cons!65475) (exprs!6317 (Context!11635 (Cons!65475 (h!71923 (exprs!6317 (h!71924 zl!343))) (t!379241 (exprs!6317 (h!71924 zl!343))))))))))

(assert (=> d!2057588 (= (derivationStepZipperUp!1607 (Context!11635 (Cons!65475 (h!71923 (exprs!6317 (h!71924 zl!343))) (t!379241 (exprs!6317 (h!71924 zl!343))))) (h!71922 s!2326)) e!3969823)))

(declare-fun b!6557447 () Bool)

(assert (=> b!6557447 (= e!3969823 ((_ map or) call!570356 (derivationStepZipperUp!1607 (Context!11635 (t!379241 (exprs!6317 (Context!11635 (Cons!65475 (h!71923 (exprs!6317 (h!71924 zl!343))) (t!379241 (exprs!6317 (h!71924 zl!343)))))))) (h!71922 s!2326))))))

(declare-fun b!6557448 () Bool)

(assert (=> b!6557448 (= e!3969824 (nullable!6426 (h!71923 (exprs!6317 (Context!11635 (Cons!65475 (h!71923 (exprs!6317 (h!71924 zl!343))) (t!379241 (exprs!6317 (h!71924 zl!343)))))))))))

(declare-fun b!6557449 () Bool)

(assert (=> b!6557449 (= e!3969825 ((as const (Array Context!11634 Bool)) false))))

(assert (= (and d!2057588 res!2690637) b!6557448))

(assert (= (and d!2057588 c!1204810) b!6557447))

(assert (= (and d!2057588 (not c!1204810)) b!6557446))

(assert (= (and b!6557446 c!1204809) b!6557445))

(assert (= (and b!6557446 (not c!1204809)) b!6557449))

(assert (= (or b!6557447 b!6557445) bm!570351))

(declare-fun m!7339650 () Bool)

(assert (=> bm!570351 m!7339650))

(declare-fun m!7339652 () Bool)

(assert (=> b!6557447 m!7339652))

(declare-fun m!7339654 () Bool)

(assert (=> b!6557448 m!7339654))

(assert (=> b!6556601 d!2057588))

(declare-fun d!2057592 () Bool)

(assert (=> d!2057592 (= (flatMap!1938 z!1189 lambda!364498) (dynLambda!26038 lambda!364498 (h!71924 zl!343)))))

(declare-fun lt!2404806 () Unit!159067)

(assert (=> d!2057592 (= lt!2404806 (choose!48878 z!1189 (h!71924 zl!343) lambda!364498))))

(assert (=> d!2057592 (= z!1189 (store ((as const (Array Context!11634 Bool)) false) (h!71924 zl!343) true))))

(assert (=> d!2057592 (= (lemmaFlatMapOnSingletonSet!1464 z!1189 (h!71924 zl!343) lambda!364498) lt!2404806)))

(declare-fun b_lambda!248095 () Bool)

(assert (=> (not b_lambda!248095) (not d!2057592)))

(declare-fun bs!1673615 () Bool)

(assert (= bs!1673615 d!2057592))

(assert (=> bs!1673615 m!7338692))

(declare-fun m!7339656 () Bool)

(assert (=> bs!1673615 m!7339656))

(declare-fun m!7339658 () Bool)

(assert (=> bs!1673615 m!7339658))

(declare-fun m!7339660 () Bool)

(assert (=> bs!1673615 m!7339660))

(assert (=> b!6556601 d!2057592))

(declare-fun b!6557461 () Bool)

(declare-fun e!3969835 () (InoxSet Context!11634))

(declare-fun call!570359 () (InoxSet Context!11634))

(assert (=> b!6557461 (= e!3969835 call!570359)))

(declare-fun b!6557462 () Bool)

(declare-fun e!3969833 () (InoxSet Context!11634))

(assert (=> b!6557462 (= e!3969833 e!3969835)))

(declare-fun c!1204815 () Bool)

(assert (=> b!6557462 (= c!1204815 ((_ is Cons!65475) (exprs!6317 (h!71924 zl!343))))))

(declare-fun bm!570354 () Bool)

(assert (=> bm!570354 (= call!570359 (derivationStepZipperDown!1681 (h!71923 (exprs!6317 (h!71924 zl!343))) (Context!11635 (t!379241 (exprs!6317 (h!71924 zl!343)))) (h!71922 s!2326)))))

(declare-fun d!2057594 () Bool)

(declare-fun c!1204816 () Bool)

(declare-fun e!3969834 () Bool)

(assert (=> d!2057594 (= c!1204816 e!3969834)))

(declare-fun res!2690641 () Bool)

(assert (=> d!2057594 (=> (not res!2690641) (not e!3969834))))

(assert (=> d!2057594 (= res!2690641 ((_ is Cons!65475) (exprs!6317 (h!71924 zl!343))))))

(assert (=> d!2057594 (= (derivationStepZipperUp!1607 (h!71924 zl!343) (h!71922 s!2326)) e!3969833)))

(declare-fun b!6557463 () Bool)

(assert (=> b!6557463 (= e!3969833 ((_ map or) call!570359 (derivationStepZipperUp!1607 (Context!11635 (t!379241 (exprs!6317 (h!71924 zl!343)))) (h!71922 s!2326))))))

(declare-fun b!6557464 () Bool)

(assert (=> b!6557464 (= e!3969834 (nullable!6426 (h!71923 (exprs!6317 (h!71924 zl!343)))))))

(declare-fun b!6557465 () Bool)

(assert (=> b!6557465 (= e!3969835 ((as const (Array Context!11634 Bool)) false))))

(assert (= (and d!2057594 res!2690641) b!6557464))

(assert (= (and d!2057594 c!1204816) b!6557463))

(assert (= (and d!2057594 (not c!1204816)) b!6557462))

(assert (= (and b!6557462 c!1204815) b!6557461))

(assert (= (and b!6557462 (not c!1204815)) b!6557465))

(assert (= (or b!6557463 b!6557461) bm!570354))

(declare-fun m!7339662 () Bool)

(assert (=> bm!570354 m!7339662))

(declare-fun m!7339664 () Bool)

(assert (=> b!6557463 m!7339664))

(assert (=> b!6557464 m!7338698))

(assert (=> b!6556601 d!2057594))

(declare-fun b!6557466 () Bool)

(declare-fun e!3969838 () (InoxSet Context!11634))

(declare-fun call!570360 () (InoxSet Context!11634))

(assert (=> b!6557466 (= e!3969838 call!570360)))

(declare-fun b!6557467 () Bool)

(declare-fun e!3969836 () (InoxSet Context!11634))

(assert (=> b!6557467 (= e!3969836 e!3969838)))

(declare-fun c!1204817 () Bool)

(assert (=> b!6557467 (= c!1204817 ((_ is Cons!65475) (exprs!6317 lt!2404602)))))

(declare-fun bm!570355 () Bool)

(assert (=> bm!570355 (= call!570360 (derivationStepZipperDown!1681 (h!71923 (exprs!6317 lt!2404602)) (Context!11635 (t!379241 (exprs!6317 lt!2404602))) (h!71922 s!2326)))))

(declare-fun d!2057596 () Bool)

(declare-fun c!1204818 () Bool)

(declare-fun e!3969837 () Bool)

(assert (=> d!2057596 (= c!1204818 e!3969837)))

(declare-fun res!2690642 () Bool)

(assert (=> d!2057596 (=> (not res!2690642) (not e!3969837))))

(assert (=> d!2057596 (= res!2690642 ((_ is Cons!65475) (exprs!6317 lt!2404602)))))

(assert (=> d!2057596 (= (derivationStepZipperUp!1607 lt!2404602 (h!71922 s!2326)) e!3969836)))

(declare-fun b!6557468 () Bool)

(assert (=> b!6557468 (= e!3969836 ((_ map or) call!570360 (derivationStepZipperUp!1607 (Context!11635 (t!379241 (exprs!6317 lt!2404602))) (h!71922 s!2326))))))

(declare-fun b!6557469 () Bool)

(assert (=> b!6557469 (= e!3969837 (nullable!6426 (h!71923 (exprs!6317 lt!2404602))))))

(declare-fun b!6557470 () Bool)

(assert (=> b!6557470 (= e!3969838 ((as const (Array Context!11634 Bool)) false))))

(assert (= (and d!2057596 res!2690642) b!6557469))

(assert (= (and d!2057596 c!1204818) b!6557468))

(assert (= (and d!2057596 (not c!1204818)) b!6557467))

(assert (= (and b!6557467 c!1204817) b!6557466))

(assert (= (and b!6557467 (not c!1204817)) b!6557470))

(assert (= (or b!6557468 b!6557466) bm!570355))

(declare-fun m!7339666 () Bool)

(assert (=> bm!570355 m!7339666))

(declare-fun m!7339668 () Bool)

(assert (=> b!6557468 m!7339668))

(declare-fun m!7339670 () Bool)

(assert (=> b!6557469 m!7339670))

(assert (=> b!6556601 d!2057596))

(declare-fun d!2057598 () Bool)

(assert (=> d!2057598 (= (flatMap!1938 z!1189 lambda!364498) (choose!48879 z!1189 lambda!364498))))

(declare-fun bs!1673624 () Bool)

(assert (= bs!1673624 d!2057598))

(declare-fun m!7339672 () Bool)

(assert (=> bs!1673624 m!7339672))

(assert (=> b!6556601 d!2057598))

(declare-fun b!6557471 () Bool)

(declare-fun e!3969841 () (InoxSet Context!11634))

(declare-fun call!570364 () (InoxSet Context!11634))

(declare-fun call!570366 () (InoxSet Context!11634))

(assert (=> b!6557471 (= e!3969841 ((_ map or) call!570364 call!570366))))

(declare-fun bm!570356 () Bool)

(declare-fun call!570363 () (InoxSet Context!11634))

(assert (=> bm!570356 (= call!570363 call!570366)))

(declare-fun b!6557472 () Bool)

(declare-fun e!3969840 () (InoxSet Context!11634))

(assert (=> b!6557472 (= e!3969840 call!570363)))

(declare-fun b!6557473 () Bool)

(declare-fun e!3969839 () (InoxSet Context!11634))

(declare-fun e!3969842 () (InoxSet Context!11634))

(assert (=> b!6557473 (= e!3969839 e!3969842)))

(declare-fun c!1204820 () Bool)

(assert (=> b!6557473 (= c!1204820 ((_ is Union!16433) (reg!16762 (regOne!33378 r!7292))))))

(declare-fun bm!570357 () Bool)

(declare-fun call!570365 () List!65599)

(declare-fun call!570362 () List!65599)

(assert (=> bm!570357 (= call!570365 call!570362)))

(declare-fun bm!570358 () Bool)

(assert (=> bm!570358 (= call!570364 (derivationStepZipperDown!1681 (ite c!1204820 (regOne!33379 (reg!16762 (regOne!33378 r!7292))) (regOne!33378 (reg!16762 (regOne!33378 r!7292)))) (ite c!1204820 lt!2404612 (Context!11635 call!570362)) (h!71922 s!2326)))))

(declare-fun b!6557474 () Bool)

(declare-fun call!570361 () (InoxSet Context!11634))

(assert (=> b!6557474 (= e!3969842 ((_ map or) call!570364 call!570361))))

(declare-fun b!6557475 () Bool)

(declare-fun e!3969844 () (InoxSet Context!11634))

(assert (=> b!6557475 (= e!3969844 call!570363)))

(declare-fun b!6557476 () Bool)

(assert (=> b!6557476 (= e!3969840 ((as const (Array Context!11634 Bool)) false))))

(declare-fun b!6557477 () Bool)

(declare-fun e!3969843 () Bool)

(assert (=> b!6557477 (= e!3969843 (nullable!6426 (regOne!33378 (reg!16762 (regOne!33378 r!7292)))))))

(declare-fun c!1204823 () Bool)

(declare-fun c!1204819 () Bool)

(declare-fun bm!570359 () Bool)

(assert (=> bm!570359 (= call!570362 ($colon$colon!2274 (exprs!6317 lt!2404612) (ite (or c!1204823 c!1204819) (regTwo!33378 (reg!16762 (regOne!33378 r!7292))) (reg!16762 (regOne!33378 r!7292)))))))

(declare-fun b!6557478 () Bool)

(assert (=> b!6557478 (= c!1204823 e!3969843)))

(declare-fun res!2690643 () Bool)

(assert (=> b!6557478 (=> (not res!2690643) (not e!3969843))))

(assert (=> b!6557478 (= res!2690643 ((_ is Concat!25278) (reg!16762 (regOne!33378 r!7292))))))

(assert (=> b!6557478 (= e!3969842 e!3969841)))

(declare-fun b!6557479 () Bool)

(assert (=> b!6557479 (= e!3969839 (store ((as const (Array Context!11634 Bool)) false) lt!2404612 true))))

(declare-fun d!2057600 () Bool)

(declare-fun c!1204821 () Bool)

(assert (=> d!2057600 (= c!1204821 (and ((_ is ElementMatch!16433) (reg!16762 (regOne!33378 r!7292))) (= (c!1204578 (reg!16762 (regOne!33378 r!7292))) (h!71922 s!2326))))))

(assert (=> d!2057600 (= (derivationStepZipperDown!1681 (reg!16762 (regOne!33378 r!7292)) lt!2404612 (h!71922 s!2326)) e!3969839)))

(declare-fun b!6557480 () Bool)

(declare-fun c!1204822 () Bool)

(assert (=> b!6557480 (= c!1204822 ((_ is Star!16433) (reg!16762 (regOne!33378 r!7292))))))

(assert (=> b!6557480 (= e!3969844 e!3969840)))

(declare-fun b!6557481 () Bool)

(assert (=> b!6557481 (= e!3969841 e!3969844)))

(assert (=> b!6557481 (= c!1204819 ((_ is Concat!25278) (reg!16762 (regOne!33378 r!7292))))))

(declare-fun bm!570360 () Bool)

(assert (=> bm!570360 (= call!570361 (derivationStepZipperDown!1681 (ite c!1204820 (regTwo!33379 (reg!16762 (regOne!33378 r!7292))) (ite c!1204823 (regTwo!33378 (reg!16762 (regOne!33378 r!7292))) (ite c!1204819 (regOne!33378 (reg!16762 (regOne!33378 r!7292))) (reg!16762 (reg!16762 (regOne!33378 r!7292)))))) (ite (or c!1204820 c!1204823) lt!2404612 (Context!11635 call!570365)) (h!71922 s!2326)))))

(declare-fun bm!570361 () Bool)

(assert (=> bm!570361 (= call!570366 call!570361)))

(assert (= (and d!2057600 c!1204821) b!6557479))

(assert (= (and d!2057600 (not c!1204821)) b!6557473))

(assert (= (and b!6557473 c!1204820) b!6557474))

(assert (= (and b!6557473 (not c!1204820)) b!6557478))

(assert (= (and b!6557478 res!2690643) b!6557477))

(assert (= (and b!6557478 c!1204823) b!6557471))

(assert (= (and b!6557478 (not c!1204823)) b!6557481))

(assert (= (and b!6557481 c!1204819) b!6557475))

(assert (= (and b!6557481 (not c!1204819)) b!6557480))

(assert (= (and b!6557480 c!1204822) b!6557472))

(assert (= (and b!6557480 (not c!1204822)) b!6557476))

(assert (= (or b!6557475 b!6557472) bm!570357))

(assert (= (or b!6557475 b!6557472) bm!570356))

(assert (= (or b!6557471 bm!570357) bm!570359))

(assert (= (or b!6557471 bm!570356) bm!570361))

(assert (= (or b!6557474 bm!570361) bm!570360))

(assert (= (or b!6557474 b!6557471) bm!570358))

(declare-fun m!7339674 () Bool)

(assert (=> bm!570359 m!7339674))

(declare-fun m!7339676 () Bool)

(assert (=> bm!570360 m!7339676))

(declare-fun m!7339678 () Bool)

(assert (=> b!6557477 m!7339678))

(assert (=> b!6557479 m!7338650))

(declare-fun m!7339680 () Bool)

(assert (=> bm!570358 m!7339680))

(assert (=> b!6556599 d!2057600))

(declare-fun b!6557482 () Bool)

(declare-fun e!3969848 () Option!16324)

(assert (=> b!6557482 (= e!3969848 None!16323)))

(declare-fun b!6557484 () Bool)

(declare-fun e!3969849 () Bool)

(declare-fun lt!2404808 () Option!16324)

(assert (=> b!6557484 (= e!3969849 (= (++!14568 (_1!36715 (get!22731 lt!2404808)) (_2!36715 (get!22731 lt!2404808))) s!2326))))

(declare-fun b!6557485 () Bool)

(declare-fun e!3969845 () Option!16324)

(assert (=> b!6557485 (= e!3969845 (Some!16323 (tuple2!66825 Nil!65474 s!2326)))))

(declare-fun b!6557486 () Bool)

(declare-fun e!3969847 () Bool)

(assert (=> b!6557486 (= e!3969847 (not (isDefined!13027 lt!2404808)))))

(declare-fun b!6557487 () Bool)

(declare-fun res!2690644 () Bool)

(assert (=> b!6557487 (=> (not res!2690644) (not e!3969849))))

(assert (=> b!6557487 (= res!2690644 (matchR!8616 (regTwo!33378 r!7292) (_2!36715 (get!22731 lt!2404808))))))

(declare-fun b!6557488 () Bool)

(declare-fun e!3969846 () Bool)

(assert (=> b!6557488 (= e!3969846 (matchR!8616 (regTwo!33378 r!7292) s!2326))))

(declare-fun b!6557489 () Bool)

(declare-fun res!2690645 () Bool)

(assert (=> b!6557489 (=> (not res!2690645) (not e!3969849))))

(assert (=> b!6557489 (= res!2690645 (matchR!8616 (regOne!33378 r!7292) (_1!36715 (get!22731 lt!2404808))))))

(declare-fun b!6557490 () Bool)

(assert (=> b!6557490 (= e!3969845 e!3969848)))

(declare-fun c!1204824 () Bool)

(assert (=> b!6557490 (= c!1204824 ((_ is Nil!65474) s!2326))))

(declare-fun d!2057602 () Bool)

(assert (=> d!2057602 e!3969847))

(declare-fun res!2690647 () Bool)

(assert (=> d!2057602 (=> res!2690647 e!3969847)))

(assert (=> d!2057602 (= res!2690647 e!3969849)))

(declare-fun res!2690646 () Bool)

(assert (=> d!2057602 (=> (not res!2690646) (not e!3969849))))

(assert (=> d!2057602 (= res!2690646 (isDefined!13027 lt!2404808))))

(assert (=> d!2057602 (= lt!2404808 e!3969845)))

(declare-fun c!1204825 () Bool)

(assert (=> d!2057602 (= c!1204825 e!3969846)))

(declare-fun res!2690648 () Bool)

(assert (=> d!2057602 (=> (not res!2690648) (not e!3969846))))

(assert (=> d!2057602 (= res!2690648 (matchR!8616 (regOne!33378 r!7292) Nil!65474))))

(assert (=> d!2057602 (validRegex!8169 (regOne!33378 r!7292))))

(assert (=> d!2057602 (= (findConcatSeparation!2738 (regOne!33378 r!7292) (regTwo!33378 r!7292) Nil!65474 s!2326 s!2326) lt!2404808)))

(declare-fun b!6557483 () Bool)

(declare-fun lt!2404809 () Unit!159067)

(declare-fun lt!2404807 () Unit!159067)

(assert (=> b!6557483 (= lt!2404809 lt!2404807)))

(assert (=> b!6557483 (= (++!14568 (++!14568 Nil!65474 (Cons!65474 (h!71922 s!2326) Nil!65474)) (t!379240 s!2326)) s!2326)))

(assert (=> b!6557483 (= lt!2404807 (lemmaMoveElementToOtherListKeepsConcatEq!2576 Nil!65474 (h!71922 s!2326) (t!379240 s!2326) s!2326))))

(assert (=> b!6557483 (= e!3969848 (findConcatSeparation!2738 (regOne!33378 r!7292) (regTwo!33378 r!7292) (++!14568 Nil!65474 (Cons!65474 (h!71922 s!2326) Nil!65474)) (t!379240 s!2326) s!2326))))

(assert (= (and d!2057602 res!2690648) b!6557488))

(assert (= (and d!2057602 c!1204825) b!6557485))

(assert (= (and d!2057602 (not c!1204825)) b!6557490))

(assert (= (and b!6557490 c!1204824) b!6557482))

(assert (= (and b!6557490 (not c!1204824)) b!6557483))

(assert (= (and d!2057602 res!2690646) b!6557489))

(assert (= (and b!6557489 res!2690645) b!6557487))

(assert (= (and b!6557487 res!2690644) b!6557484))

(assert (= (and d!2057602 (not res!2690647)) b!6557486))

(declare-fun m!7339682 () Bool)

(assert (=> d!2057602 m!7339682))

(declare-fun m!7339684 () Bool)

(assert (=> d!2057602 m!7339684))

(declare-fun m!7339686 () Bool)

(assert (=> d!2057602 m!7339686))

(assert (=> b!6557488 m!7339316))

(assert (=> b!6557483 m!7339318))

(assert (=> b!6557483 m!7339318))

(assert (=> b!6557483 m!7339320))

(assert (=> b!6557483 m!7339322))

(assert (=> b!6557483 m!7339318))

(declare-fun m!7339688 () Bool)

(assert (=> b!6557483 m!7339688))

(declare-fun m!7339690 () Bool)

(assert (=> b!6557489 m!7339690))

(declare-fun m!7339692 () Bool)

(assert (=> b!6557489 m!7339692))

(assert (=> b!6557486 m!7339682))

(assert (=> b!6557487 m!7339690))

(declare-fun m!7339694 () Bool)

(assert (=> b!6557487 m!7339694))

(assert (=> b!6557484 m!7339690))

(declare-fun m!7339696 () Bool)

(assert (=> b!6557484 m!7339696))

(assert (=> b!6556588 d!2057602))

(declare-fun d!2057604 () Bool)

(assert (=> d!2057604 (= (Exists!3503 lambda!364497) (choose!48874 lambda!364497))))

(declare-fun bs!1673641 () Bool)

(assert (= bs!1673641 d!2057604))

(declare-fun m!7339698 () Bool)

(assert (=> bs!1673641 m!7339698))

(assert (=> b!6556588 d!2057604))

(declare-fun d!2057606 () Bool)

(assert (=> d!2057606 (= (Exists!3503 lambda!364496) (choose!48874 lambda!364496))))

(declare-fun bs!1673642 () Bool)

(assert (= bs!1673642 d!2057606))

(declare-fun m!7339700 () Bool)

(assert (=> bs!1673642 m!7339700))

(assert (=> b!6556588 d!2057606))

(declare-fun bs!1673643 () Bool)

(declare-fun d!2057608 () Bool)

(assert (= bs!1673643 (and d!2057608 b!6557251)))

(declare-fun lambda!364575 () Int)

(assert (=> bs!1673643 (not (= lambda!364575 lambda!364556))))

(declare-fun bs!1673644 () Bool)

(assert (= bs!1673644 (and d!2057608 b!6556596)))

(assert (=> bs!1673644 (not (= lambda!364575 lambda!364502))))

(declare-fun bs!1673645 () Bool)

(assert (= bs!1673645 (and d!2057608 d!2057428)))

(assert (=> bs!1673645 (= (= (regOne!33378 r!7292) lt!2404586) (= lambda!364575 lambda!364539))))

(declare-fun bs!1673646 () Bool)

(assert (= bs!1673646 (and d!2057608 b!6556790)))

(assert (=> bs!1673646 (not (= lambda!364575 lambda!364521))))

(assert (=> bs!1673644 (= (= (regOne!33378 r!7292) lt!2404586) (= lambda!364575 lambda!364501))))

(declare-fun bs!1673647 () Bool)

(assert (= bs!1673647 (and d!2057608 b!6556588)))

(assert (=> bs!1673647 (= lambda!364575 lambda!364496)))

(assert (=> bs!1673647 (not (= lambda!364575 lambda!364497))))

(declare-fun bs!1673648 () Bool)

(assert (= bs!1673648 (and d!2057608 d!2057496)))

(assert (=> bs!1673648 (not (= lambda!364575 lambda!364554))))

(declare-fun bs!1673650 () Bool)

(assert (= bs!1673650 (and d!2057608 b!6557276)))

(assert (=> bs!1673650 (not (= lambda!364575 lambda!364560))))

(assert (=> bs!1673648 (= (= (regOne!33378 r!7292) lt!2404586) (= lambda!364575 lambda!364553))))

(declare-fun bs!1673651 () Bool)

(assert (= bs!1673651 (and d!2057608 b!6556796)))

(assert (=> bs!1673651 (not (= lambda!364575 lambda!364520))))

(declare-fun bs!1673652 () Bool)

(assert (= bs!1673652 (and d!2057608 b!6556608)))

(assert (=> bs!1673652 (= (and (= s!2326 (_1!36715 lt!2404638)) (= (regOne!33378 r!7292) (reg!16762 (regOne!33378 r!7292))) (= (regTwo!33378 r!7292) lt!2404592)) (= lambda!364575 lambda!364503))))

(declare-fun bs!1673653 () Bool)

(assert (= bs!1673653 (and d!2057608 b!6557282)))

(assert (=> bs!1673653 (not (= lambda!364575 lambda!364558))))

(declare-fun bs!1673654 () Bool)

(assert (= bs!1673654 (and d!2057608 b!6557257)))

(assert (=> bs!1673654 (not (= lambda!364575 lambda!364555))))

(assert (=> d!2057608 true))

(assert (=> d!2057608 true))

(assert (=> d!2057608 true))

(assert (=> d!2057608 (= (isDefined!13027 (findConcatSeparation!2738 (regOne!33378 r!7292) (regTwo!33378 r!7292) Nil!65474 s!2326 s!2326)) (Exists!3503 lambda!364575))))

(declare-fun lt!2404810 () Unit!159067)

(assert (=> d!2057608 (= lt!2404810 (choose!48869 (regOne!33378 r!7292) (regTwo!33378 r!7292) s!2326))))

(assert (=> d!2057608 (validRegex!8169 (regOne!33378 r!7292))))

(assert (=> d!2057608 (= (lemmaFindConcatSeparationEquivalentToExists!2502 (regOne!33378 r!7292) (regTwo!33378 r!7292) s!2326) lt!2404810)))

(declare-fun bs!1673656 () Bool)

(assert (= bs!1673656 d!2057608))

(assert (=> bs!1673656 m!7339686))

(declare-fun m!7339714 () Bool)

(assert (=> bs!1673656 m!7339714))

(assert (=> bs!1673656 m!7338672))

(assert (=> bs!1673656 m!7338674))

(assert (=> bs!1673656 m!7338672))

(declare-fun m!7339716 () Bool)

(assert (=> bs!1673656 m!7339716))

(assert (=> b!6556588 d!2057608))

(declare-fun bs!1673663 () Bool)

(declare-fun d!2057616 () Bool)

(assert (= bs!1673663 (and d!2057616 b!6557251)))

(declare-fun lambda!364577 () Int)

(assert (=> bs!1673663 (not (= lambda!364577 lambda!364556))))

(declare-fun bs!1673664 () Bool)

(assert (= bs!1673664 (and d!2057616 d!2057608)))

(assert (=> bs!1673664 (= lambda!364577 lambda!364575)))

(declare-fun bs!1673666 () Bool)

(assert (= bs!1673666 (and d!2057616 b!6556596)))

(assert (=> bs!1673666 (not (= lambda!364577 lambda!364502))))

(declare-fun bs!1673667 () Bool)

(assert (= bs!1673667 (and d!2057616 d!2057428)))

(assert (=> bs!1673667 (= (= (regOne!33378 r!7292) lt!2404586) (= lambda!364577 lambda!364539))))

(declare-fun bs!1673669 () Bool)

(assert (= bs!1673669 (and d!2057616 b!6556790)))

(assert (=> bs!1673669 (not (= lambda!364577 lambda!364521))))

(assert (=> bs!1673666 (= (= (regOne!33378 r!7292) lt!2404586) (= lambda!364577 lambda!364501))))

(declare-fun bs!1673672 () Bool)

(assert (= bs!1673672 (and d!2057616 b!6556588)))

(assert (=> bs!1673672 (= lambda!364577 lambda!364496)))

(assert (=> bs!1673672 (not (= lambda!364577 lambda!364497))))

(declare-fun bs!1673675 () Bool)

(assert (= bs!1673675 (and d!2057616 d!2057496)))

(assert (=> bs!1673675 (not (= lambda!364577 lambda!364554))))

(declare-fun bs!1673677 () Bool)

(assert (= bs!1673677 (and d!2057616 b!6557276)))

(assert (=> bs!1673677 (not (= lambda!364577 lambda!364560))))

(assert (=> bs!1673675 (= (= (regOne!33378 r!7292) lt!2404586) (= lambda!364577 lambda!364553))))

(declare-fun bs!1673678 () Bool)

(assert (= bs!1673678 (and d!2057616 b!6556796)))

(assert (=> bs!1673678 (not (= lambda!364577 lambda!364520))))

(declare-fun bs!1673679 () Bool)

(assert (= bs!1673679 (and d!2057616 b!6556608)))

(assert (=> bs!1673679 (= (and (= s!2326 (_1!36715 lt!2404638)) (= (regOne!33378 r!7292) (reg!16762 (regOne!33378 r!7292))) (= (regTwo!33378 r!7292) lt!2404592)) (= lambda!364577 lambda!364503))))

(declare-fun bs!1673680 () Bool)

(assert (= bs!1673680 (and d!2057616 b!6557282)))

(assert (=> bs!1673680 (not (= lambda!364577 lambda!364558))))

(declare-fun bs!1673681 () Bool)

(assert (= bs!1673681 (and d!2057616 b!6557257)))

(assert (=> bs!1673681 (not (= lambda!364577 lambda!364555))))

(assert (=> d!2057616 true))

(assert (=> d!2057616 true))

(assert (=> d!2057616 true))

(declare-fun lambda!364579 () Int)

(assert (=> bs!1673663 (= (and (= (regOne!33378 r!7292) (regOne!33378 lt!2404616)) (= (regTwo!33378 r!7292) (regTwo!33378 lt!2404616))) (= lambda!364579 lambda!364556))))

(assert (=> bs!1673664 (not (= lambda!364579 lambda!364575))))

(assert (=> bs!1673666 (= (= (regOne!33378 r!7292) lt!2404586) (= lambda!364579 lambda!364502))))

(assert (=> bs!1673667 (not (= lambda!364579 lambda!364539))))

(assert (=> bs!1673669 (= (and (= (regOne!33378 r!7292) (regOne!33378 lt!2404594)) (= (regTwo!33378 r!7292) (regTwo!33378 lt!2404594))) (= lambda!364579 lambda!364521))))

(assert (=> bs!1673666 (not (= lambda!364579 lambda!364501))))

(assert (=> bs!1673672 (not (= lambda!364579 lambda!364496))))

(assert (=> bs!1673672 (= lambda!364579 lambda!364497)))

(assert (=> bs!1673675 (= (= (regOne!33378 r!7292) lt!2404586) (= lambda!364579 lambda!364554))))

(assert (=> bs!1673677 (= lambda!364579 lambda!364560)))

(declare-fun bs!1673692 () Bool)

(assert (= bs!1673692 d!2057616))

(assert (=> bs!1673692 (not (= lambda!364579 lambda!364577))))

(assert (=> bs!1673675 (not (= lambda!364579 lambda!364553))))

(assert (=> bs!1673678 (not (= lambda!364579 lambda!364520))))

(assert (=> bs!1673679 (not (= lambda!364579 lambda!364503))))

(assert (=> bs!1673680 (not (= lambda!364579 lambda!364558))))

(assert (=> bs!1673681 (not (= lambda!364579 lambda!364555))))

(assert (=> d!2057616 true))

(assert (=> d!2057616 true))

(assert (=> d!2057616 true))

(assert (=> d!2057616 (= (Exists!3503 lambda!364577) (Exists!3503 lambda!364579))))

(declare-fun lt!2404813 () Unit!159067)

(assert (=> d!2057616 (= lt!2404813 (choose!48873 (regOne!33378 r!7292) (regTwo!33378 r!7292) s!2326))))

(assert (=> d!2057616 (validRegex!8169 (regOne!33378 r!7292))))

(assert (=> d!2057616 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2040 (regOne!33378 r!7292) (regTwo!33378 r!7292) s!2326) lt!2404813)))

(declare-fun m!7339718 () Bool)

(assert (=> bs!1673692 m!7339718))

(declare-fun m!7339720 () Bool)

(assert (=> bs!1673692 m!7339720))

(declare-fun m!7339722 () Bool)

(assert (=> bs!1673692 m!7339722))

(assert (=> bs!1673692 m!7339686))

(assert (=> b!6556588 d!2057616))

(declare-fun d!2057618 () Bool)

(assert (=> d!2057618 (= (isDefined!13027 (findConcatSeparation!2738 (regOne!33378 r!7292) (regTwo!33378 r!7292) Nil!65474 s!2326 s!2326)) (not (isEmpty!37714 (findConcatSeparation!2738 (regOne!33378 r!7292) (regTwo!33378 r!7292) Nil!65474 s!2326 s!2326))))))

(declare-fun bs!1673698 () Bool)

(assert (= bs!1673698 d!2057618))

(assert (=> bs!1673698 m!7338672))

(declare-fun m!7339724 () Bool)

(assert (=> bs!1673698 m!7339724))

(assert (=> b!6556588 d!2057618))

(declare-fun d!2057620 () Bool)

(assert (=> d!2057620 (= (isEmpty!37710 (t!379241 (exprs!6317 (h!71924 zl!343)))) ((_ is Nil!65475) (t!379241 (exprs!6317 (h!71924 zl!343)))))))

(assert (=> b!6556609 d!2057620))

(declare-fun d!2057624 () Bool)

(assert (=> d!2057624 (= (isDefined!13027 lt!2404581) (not (isEmpty!37714 lt!2404581)))))

(declare-fun bs!1673699 () Bool)

(assert (= bs!1673699 d!2057624))

(declare-fun m!7339732 () Bool)

(assert (=> bs!1673699 m!7339732))

(assert (=> b!6556586 d!2057624))

(declare-fun d!2057626 () Bool)

(assert (=> d!2057626 (= (get!22731 lt!2404581) (v!52508 lt!2404581))))

(assert (=> b!6556586 d!2057626))

(declare-fun d!2057628 () Bool)

(assert (=> d!2057628 (isDefined!13027 (findConcatSeparationZippers!198 lt!2404597 (store ((as const (Array Context!11634 Bool)) false) lt!2404612 true) Nil!65474 s!2326 s!2326))))

(declare-fun lt!2404820 () Unit!159067)

(declare-fun choose!48883 ((InoxSet Context!11634) Context!11634 List!65598) Unit!159067)

(assert (=> d!2057628 (= lt!2404820 (choose!48883 lt!2404597 lt!2404612 s!2326))))

(assert (=> d!2057628 (matchZipper!2445 (appendTo!194 lt!2404597 lt!2404612) s!2326)))

(assert (=> d!2057628 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!198 lt!2404597 lt!2404612 s!2326) lt!2404820)))

(declare-fun bs!1673706 () Bool)

(assert (= bs!1673706 d!2057628))

(assert (=> bs!1673706 m!7338730))

(declare-fun m!7339744 () Bool)

(assert (=> bs!1673706 m!7339744))

(assert (=> bs!1673706 m!7338730))

(assert (=> bs!1673706 m!7338650))

(assert (=> bs!1673706 m!7338650))

(declare-fun m!7339746 () Bool)

(assert (=> bs!1673706 m!7339746))

(declare-fun m!7339748 () Bool)

(assert (=> bs!1673706 m!7339748))

(assert (=> bs!1673706 m!7339746))

(declare-fun m!7339750 () Bool)

(assert (=> bs!1673706 m!7339750))

(assert (=> b!6556586 d!2057628))

(declare-fun b!6557568 () Bool)

(declare-fun e!3969894 () List!65598)

(assert (=> b!6557568 (= e!3969894 (_2!36715 lt!2404601))))

(declare-fun b!6557570 () Bool)

(declare-fun res!2690678 () Bool)

(declare-fun e!3969893 () Bool)

(assert (=> b!6557570 (=> (not res!2690678) (not e!3969893))))

(declare-fun lt!2404824 () List!65598)

(declare-fun size!40516 (List!65598) Int)

(assert (=> b!6557570 (= res!2690678 (= (size!40516 lt!2404824) (+ (size!40516 (_1!36715 lt!2404601)) (size!40516 (_2!36715 lt!2404601)))))))

(declare-fun b!6557571 () Bool)

(assert (=> b!6557571 (= e!3969893 (or (not (= (_2!36715 lt!2404601) Nil!65474)) (= lt!2404824 (_1!36715 lt!2404601))))))

(declare-fun b!6557569 () Bool)

(assert (=> b!6557569 (= e!3969894 (Cons!65474 (h!71922 (_1!36715 lt!2404601)) (++!14568 (t!379240 (_1!36715 lt!2404601)) (_2!36715 lt!2404601))))))

(declare-fun d!2057636 () Bool)

(assert (=> d!2057636 e!3969893))

(declare-fun res!2690679 () Bool)

(assert (=> d!2057636 (=> (not res!2690679) (not e!3969893))))

(declare-fun content!12581 (List!65598) (InoxSet C!33136))

(assert (=> d!2057636 (= res!2690679 (= (content!12581 lt!2404824) ((_ map or) (content!12581 (_1!36715 lt!2404601)) (content!12581 (_2!36715 lt!2404601)))))))

(assert (=> d!2057636 (= lt!2404824 e!3969894)))

(declare-fun c!1204850 () Bool)

(assert (=> d!2057636 (= c!1204850 ((_ is Nil!65474) (_1!36715 lt!2404601)))))

(assert (=> d!2057636 (= (++!14568 (_1!36715 lt!2404601) (_2!36715 lt!2404601)) lt!2404824)))

(assert (= (and d!2057636 c!1204850) b!6557568))

(assert (= (and d!2057636 (not c!1204850)) b!6557569))

(assert (= (and d!2057636 res!2690679) b!6557570))

(assert (= (and b!6557570 res!2690678) b!6557571))

(declare-fun m!7339772 () Bool)

(assert (=> b!6557570 m!7339772))

(declare-fun m!7339774 () Bool)

(assert (=> b!6557570 m!7339774))

(declare-fun m!7339776 () Bool)

(assert (=> b!6557570 m!7339776))

(declare-fun m!7339778 () Bool)

(assert (=> b!6557569 m!7339778))

(declare-fun m!7339780 () Bool)

(assert (=> d!2057636 m!7339780))

(declare-fun m!7339782 () Bool)

(assert (=> d!2057636 m!7339782))

(declare-fun m!7339784 () Bool)

(assert (=> d!2057636 m!7339784))

(assert (=> b!6556586 d!2057636))

(declare-fun b!6557650 () Bool)

(declare-fun e!3969933 () Option!16324)

(declare-fun e!3969935 () Option!16324)

(assert (=> b!6557650 (= e!3969933 e!3969935)))

(declare-fun c!1204858 () Bool)

(assert (=> b!6557650 (= c!1204858 ((_ is Nil!65474) s!2326))))

(declare-fun b!6557651 () Bool)

(assert (=> b!6557651 (= e!3969933 (Some!16323 (tuple2!66825 Nil!65474 s!2326)))))

(declare-fun b!6557652 () Bool)

(declare-fun e!3969934 () Bool)

(declare-fun lt!2404835 () Option!16324)

(assert (=> b!6557652 (= e!3969934 (= (++!14568 (_1!36715 (get!22731 lt!2404835)) (_2!36715 (get!22731 lt!2404835))) s!2326))))

(declare-fun b!6557653 () Bool)

(assert (=> b!6557653 (= e!3969935 None!16323)))

(declare-fun b!6557654 () Bool)

(declare-fun res!2690690 () Bool)

(assert (=> b!6557654 (=> (not res!2690690) (not e!3969934))))

(assert (=> b!6557654 (= res!2690690 (matchZipper!2445 lt!2404597 (_1!36715 (get!22731 lt!2404835))))))

(declare-fun b!6557655 () Bool)

(declare-fun lt!2404836 () Unit!159067)

(declare-fun lt!2404837 () Unit!159067)

(assert (=> b!6557655 (= lt!2404836 lt!2404837)))

(assert (=> b!6557655 (= (++!14568 (++!14568 Nil!65474 (Cons!65474 (h!71922 s!2326) Nil!65474)) (t!379240 s!2326)) s!2326)))

(assert (=> b!6557655 (= lt!2404837 (lemmaMoveElementToOtherListKeepsConcatEq!2576 Nil!65474 (h!71922 s!2326) (t!379240 s!2326) s!2326))))

(assert (=> b!6557655 (= e!3969935 (findConcatSeparationZippers!198 lt!2404597 lt!2404621 (++!14568 Nil!65474 (Cons!65474 (h!71922 s!2326) Nil!65474)) (t!379240 s!2326) s!2326))))

(declare-fun d!2057640 () Bool)

(declare-fun e!3969931 () Bool)

(assert (=> d!2057640 e!3969931))

(declare-fun res!2690691 () Bool)

(assert (=> d!2057640 (=> res!2690691 e!3969931)))

(assert (=> d!2057640 (= res!2690691 e!3969934)))

(declare-fun res!2690694 () Bool)

(assert (=> d!2057640 (=> (not res!2690694) (not e!3969934))))

(assert (=> d!2057640 (= res!2690694 (isDefined!13027 lt!2404835))))

(assert (=> d!2057640 (= lt!2404835 e!3969933)))

(declare-fun c!1204859 () Bool)

(declare-fun e!3969932 () Bool)

(assert (=> d!2057640 (= c!1204859 e!3969932)))

(declare-fun res!2690693 () Bool)

(assert (=> d!2057640 (=> (not res!2690693) (not e!3969932))))

(assert (=> d!2057640 (= res!2690693 (matchZipper!2445 lt!2404597 Nil!65474))))

(assert (=> d!2057640 (= (++!14568 Nil!65474 s!2326) s!2326)))

(assert (=> d!2057640 (= (findConcatSeparationZippers!198 lt!2404597 lt!2404621 Nil!65474 s!2326 s!2326) lt!2404835)))

(declare-fun b!6557656 () Bool)

(assert (=> b!6557656 (= e!3969932 (matchZipper!2445 lt!2404621 s!2326))))

(declare-fun b!6557657 () Bool)

(declare-fun res!2690692 () Bool)

(assert (=> b!6557657 (=> (not res!2690692) (not e!3969934))))

(assert (=> b!6557657 (= res!2690692 (matchZipper!2445 lt!2404621 (_2!36715 (get!22731 lt!2404835))))))

(declare-fun b!6557658 () Bool)

(assert (=> b!6557658 (= e!3969931 (not (isDefined!13027 lt!2404835)))))

(assert (= (and d!2057640 res!2690693) b!6557656))

(assert (= (and d!2057640 c!1204859) b!6557651))

(assert (= (and d!2057640 (not c!1204859)) b!6557650))

(assert (= (and b!6557650 c!1204858) b!6557653))

(assert (= (and b!6557650 (not c!1204858)) b!6557655))

(assert (= (and d!2057640 res!2690694) b!6557654))

(assert (= (and b!6557654 res!2690690) b!6557657))

(assert (= (and b!6557657 res!2690692) b!6557652))

(assert (= (and d!2057640 (not res!2690691)) b!6557658))

(declare-fun m!7339798 () Bool)

(assert (=> b!6557658 m!7339798))

(declare-fun m!7339800 () Bool)

(assert (=> b!6557654 m!7339800))

(declare-fun m!7339802 () Bool)

(assert (=> b!6557654 m!7339802))

(assert (=> b!6557652 m!7339800))

(declare-fun m!7339804 () Bool)

(assert (=> b!6557652 m!7339804))

(assert (=> d!2057640 m!7339798))

(declare-fun m!7339806 () Bool)

(assert (=> d!2057640 m!7339806))

(declare-fun m!7339808 () Bool)

(assert (=> d!2057640 m!7339808))

(assert (=> b!6557655 m!7339318))

(assert (=> b!6557655 m!7339318))

(assert (=> b!6557655 m!7339320))

(assert (=> b!6557655 m!7339322))

(assert (=> b!6557655 m!7339318))

(declare-fun m!7339810 () Bool)

(assert (=> b!6557655 m!7339810))

(assert (=> b!6557657 m!7339800))

(declare-fun m!7339812 () Bool)

(assert (=> b!6557657 m!7339812))

(declare-fun m!7339814 () Bool)

(assert (=> b!6557656 m!7339814))

(assert (=> b!6556586 d!2057640))

(declare-fun d!2057652 () Bool)

(declare-fun c!1204860 () Bool)

(assert (=> d!2057652 (= c!1204860 (isEmpty!37713 (_2!36715 lt!2404601)))))

(declare-fun e!3969936 () Bool)

(assert (=> d!2057652 (= (matchZipper!2445 lt!2404621 (_2!36715 lt!2404601)) e!3969936)))

(declare-fun b!6557659 () Bool)

(assert (=> b!6557659 (= e!3969936 (nullableZipper!2178 lt!2404621))))

(declare-fun b!6557660 () Bool)

(assert (=> b!6557660 (= e!3969936 (matchZipper!2445 (derivationStepZipper!2399 lt!2404621 (head!13316 (_2!36715 lt!2404601))) (tail!12401 (_2!36715 lt!2404601))))))

(assert (= (and d!2057652 c!1204860) b!6557659))

(assert (= (and d!2057652 (not c!1204860)) b!6557660))

(assert (=> d!2057652 m!7339454))

(declare-fun m!7339816 () Bool)

(assert (=> b!6557659 m!7339816))

(assert (=> b!6557660 m!7339450))

(assert (=> b!6557660 m!7339450))

(declare-fun m!7339818 () Bool)

(assert (=> b!6557660 m!7339818))

(assert (=> b!6557660 m!7339446))

(assert (=> b!6557660 m!7339818))

(assert (=> b!6557660 m!7339446))

(declare-fun m!7339820 () Bool)

(assert (=> b!6557660 m!7339820))

(assert (=> b!6556607 d!2057652))

(declare-fun b!6557679 () Bool)

(declare-fun e!3969952 () Bool)

(declare-fun call!570378 () Bool)

(assert (=> b!6557679 (= e!3969952 call!570378)))

(declare-fun b!6557680 () Bool)

(declare-fun e!3969951 () Bool)

(declare-fun e!3969953 () Bool)

(assert (=> b!6557680 (= e!3969951 e!3969953)))

(declare-fun res!2690708 () Bool)

(assert (=> b!6557680 (=> (not res!2690708) (not e!3969953))))

(declare-fun call!570379 () Bool)

(assert (=> b!6557680 (= res!2690708 call!570379)))

(declare-fun b!6557681 () Bool)

(declare-fun e!3969955 () Bool)

(declare-fun e!3969957 () Bool)

(assert (=> b!6557681 (= e!3969955 e!3969957)))

(declare-fun c!1204865 () Bool)

(assert (=> b!6557681 (= c!1204865 ((_ is Star!16433) (reg!16762 (regOne!33378 r!7292))))))

(declare-fun bm!570372 () Bool)

(declare-fun c!1204866 () Bool)

(assert (=> bm!570372 (= call!570379 (validRegex!8169 (ite c!1204866 (regOne!33379 (reg!16762 (regOne!33378 r!7292))) (regOne!33378 (reg!16762 (regOne!33378 r!7292))))))))

(declare-fun d!2057654 () Bool)

(declare-fun res!2690706 () Bool)

(assert (=> d!2057654 (=> res!2690706 e!3969955)))

(assert (=> d!2057654 (= res!2690706 ((_ is ElementMatch!16433) (reg!16762 (regOne!33378 r!7292))))))

(assert (=> d!2057654 (= (validRegex!8169 (reg!16762 (regOne!33378 r!7292))) e!3969955)))

(declare-fun b!6557682 () Bool)

(declare-fun res!2690705 () Bool)

(assert (=> b!6557682 (=> res!2690705 e!3969951)))

(assert (=> b!6557682 (= res!2690705 (not ((_ is Concat!25278) (reg!16762 (regOne!33378 r!7292)))))))

(declare-fun e!3969954 () Bool)

(assert (=> b!6557682 (= e!3969954 e!3969951)))

(declare-fun b!6557683 () Bool)

(declare-fun e!3969956 () Bool)

(declare-fun call!570377 () Bool)

(assert (=> b!6557683 (= e!3969956 call!570377)))

(declare-fun bm!570373 () Bool)

(assert (=> bm!570373 (= call!570377 (validRegex!8169 (ite c!1204865 (reg!16762 (reg!16762 (regOne!33378 r!7292))) (ite c!1204866 (regTwo!33379 (reg!16762 (regOne!33378 r!7292))) (regTwo!33378 (reg!16762 (regOne!33378 r!7292)))))))))

(declare-fun b!6557684 () Bool)

(assert (=> b!6557684 (= e!3969957 e!3969954)))

(assert (=> b!6557684 (= c!1204866 ((_ is Union!16433) (reg!16762 (regOne!33378 r!7292))))))

(declare-fun b!6557685 () Bool)

(assert (=> b!6557685 (= e!3969953 call!570378)))

(declare-fun b!6557686 () Bool)

(declare-fun res!2690707 () Bool)

(assert (=> b!6557686 (=> (not res!2690707) (not e!3969952))))

(assert (=> b!6557686 (= res!2690707 call!570379)))

(assert (=> b!6557686 (= e!3969954 e!3969952)))

(declare-fun b!6557687 () Bool)

(assert (=> b!6557687 (= e!3969957 e!3969956)))

(declare-fun res!2690709 () Bool)

(assert (=> b!6557687 (= res!2690709 (not (nullable!6426 (reg!16762 (reg!16762 (regOne!33378 r!7292))))))))

(assert (=> b!6557687 (=> (not res!2690709) (not e!3969956))))

(declare-fun bm!570374 () Bool)

(assert (=> bm!570374 (= call!570378 call!570377)))

(assert (= (and d!2057654 (not res!2690706)) b!6557681))

(assert (= (and b!6557681 c!1204865) b!6557687))

(assert (= (and b!6557681 (not c!1204865)) b!6557684))

(assert (= (and b!6557687 res!2690709) b!6557683))

(assert (= (and b!6557684 c!1204866) b!6557686))

(assert (= (and b!6557684 (not c!1204866)) b!6557682))

(assert (= (and b!6557686 res!2690707) b!6557679))

(assert (= (and b!6557682 (not res!2690705)) b!6557680))

(assert (= (and b!6557680 res!2690708) b!6557685))

(assert (= (or b!6557679 b!6557685) bm!570374))

(assert (= (or b!6557686 b!6557680) bm!570372))

(assert (= (or b!6557683 bm!570374) bm!570373))

(declare-fun m!7339822 () Bool)

(assert (=> bm!570372 m!7339822))

(declare-fun m!7339824 () Bool)

(assert (=> bm!570373 m!7339824))

(declare-fun m!7339826 () Bool)

(assert (=> b!6557687 m!7339826))

(assert (=> b!6556608 d!2057654))

(declare-fun bs!1673723 () Bool)

(declare-fun d!2057656 () Bool)

(assert (= bs!1673723 (and d!2057656 b!6557251)))

(declare-fun lambda!364587 () Int)

(assert (=> bs!1673723 (not (= lambda!364587 lambda!364556))))

(declare-fun bs!1673724 () Bool)

(assert (= bs!1673724 (and d!2057656 d!2057616)))

(assert (=> bs!1673724 (not (= lambda!364587 lambda!364579))))

(declare-fun bs!1673725 () Bool)

(assert (= bs!1673725 (and d!2057656 d!2057608)))

(assert (=> bs!1673725 (= (and (= (_1!36715 lt!2404638) s!2326) (= (reg!16762 (regOne!33378 r!7292)) (regOne!33378 r!7292)) (= lt!2404592 (regTwo!33378 r!7292))) (= lambda!364587 lambda!364575))))

(declare-fun bs!1673726 () Bool)

(assert (= bs!1673726 (and d!2057656 b!6556596)))

(assert (=> bs!1673726 (not (= lambda!364587 lambda!364502))))

(declare-fun bs!1673727 () Bool)

(assert (= bs!1673727 (and d!2057656 d!2057428)))

(assert (=> bs!1673727 (= (and (= (_1!36715 lt!2404638) s!2326) (= (reg!16762 (regOne!33378 r!7292)) lt!2404586) (= lt!2404592 (regTwo!33378 r!7292))) (= lambda!364587 lambda!364539))))

(declare-fun bs!1673728 () Bool)

(assert (= bs!1673728 (and d!2057656 b!6556790)))

(assert (=> bs!1673728 (not (= lambda!364587 lambda!364521))))

(assert (=> bs!1673726 (= (and (= (_1!36715 lt!2404638) s!2326) (= (reg!16762 (regOne!33378 r!7292)) lt!2404586) (= lt!2404592 (regTwo!33378 r!7292))) (= lambda!364587 lambda!364501))))

(declare-fun bs!1673729 () Bool)

(assert (= bs!1673729 (and d!2057656 b!6556588)))

(assert (=> bs!1673729 (= (and (= (_1!36715 lt!2404638) s!2326) (= (reg!16762 (regOne!33378 r!7292)) (regOne!33378 r!7292)) (= lt!2404592 (regTwo!33378 r!7292))) (= lambda!364587 lambda!364496))))

(assert (=> bs!1673729 (not (= lambda!364587 lambda!364497))))

(declare-fun bs!1673730 () Bool)

(assert (= bs!1673730 (and d!2057656 d!2057496)))

(assert (=> bs!1673730 (not (= lambda!364587 lambda!364554))))

(declare-fun bs!1673731 () Bool)

(assert (= bs!1673731 (and d!2057656 b!6557276)))

(assert (=> bs!1673731 (not (= lambda!364587 lambda!364560))))

(assert (=> bs!1673724 (= (and (= (_1!36715 lt!2404638) s!2326) (= (reg!16762 (regOne!33378 r!7292)) (regOne!33378 r!7292)) (= lt!2404592 (regTwo!33378 r!7292))) (= lambda!364587 lambda!364577))))

(assert (=> bs!1673730 (= (and (= (_1!36715 lt!2404638) s!2326) (= (reg!16762 (regOne!33378 r!7292)) lt!2404586) (= lt!2404592 (regTwo!33378 r!7292))) (= lambda!364587 lambda!364553))))

(declare-fun bs!1673732 () Bool)

(assert (= bs!1673732 (and d!2057656 b!6556796)))

(assert (=> bs!1673732 (not (= lambda!364587 lambda!364520))))

(declare-fun bs!1673733 () Bool)

(assert (= bs!1673733 (and d!2057656 b!6556608)))

(assert (=> bs!1673733 (= lambda!364587 lambda!364503)))

(declare-fun bs!1673734 () Bool)

(assert (= bs!1673734 (and d!2057656 b!6557282)))

(assert (=> bs!1673734 (not (= lambda!364587 lambda!364558))))

(declare-fun bs!1673735 () Bool)

(assert (= bs!1673735 (and d!2057656 b!6557257)))

(assert (=> bs!1673735 (not (= lambda!364587 lambda!364555))))

(assert (=> d!2057656 true))

(assert (=> d!2057656 true))

(assert (=> d!2057656 true))

(assert (=> d!2057656 (= (isDefined!13027 (findConcatSeparation!2738 (reg!16762 (regOne!33378 r!7292)) lt!2404592 Nil!65474 (_1!36715 lt!2404638) (_1!36715 lt!2404638))) (Exists!3503 lambda!364587))))

(declare-fun lt!2404838 () Unit!159067)

(assert (=> d!2057656 (= lt!2404838 (choose!48869 (reg!16762 (regOne!33378 r!7292)) lt!2404592 (_1!36715 lt!2404638)))))

(assert (=> d!2057656 (validRegex!8169 (reg!16762 (regOne!33378 r!7292)))))

(assert (=> d!2057656 (= (lemmaFindConcatSeparationEquivalentToExists!2502 (reg!16762 (regOne!33378 r!7292)) lt!2404592 (_1!36715 lt!2404638)) lt!2404838)))

(declare-fun bs!1673736 () Bool)

(assert (= bs!1673736 d!2057656))

(assert (=> bs!1673736 m!7338746))

(declare-fun m!7339828 () Bool)

(assert (=> bs!1673736 m!7339828))

(assert (=> bs!1673736 m!7338748))

(assert (=> bs!1673736 m!7338754))

(assert (=> bs!1673736 m!7338748))

(declare-fun m!7339830 () Bool)

(assert (=> bs!1673736 m!7339830))

(assert (=> b!6556608 d!2057656))

(declare-fun d!2057658 () Bool)

(assert (=> d!2057658 (= (matchR!8616 lt!2404586 (_1!36715 lt!2404638)) (matchRSpec!3534 lt!2404586 (_1!36715 lt!2404638)))))

(declare-fun lt!2404839 () Unit!159067)

(assert (=> d!2057658 (= lt!2404839 (choose!48860 lt!2404586 (_1!36715 lt!2404638)))))

(assert (=> d!2057658 (validRegex!8169 lt!2404586)))

(assert (=> d!2057658 (= (mainMatchTheorem!3534 lt!2404586 (_1!36715 lt!2404638)) lt!2404839)))

(declare-fun bs!1673737 () Bool)

(assert (= bs!1673737 d!2057658))

(assert (=> bs!1673737 m!7338786))

(assert (=> bs!1673737 m!7338756))

(declare-fun m!7339832 () Bool)

(assert (=> bs!1673737 m!7339832))

(assert (=> bs!1673737 m!7339186))

(assert (=> b!6556608 d!2057658))

(declare-fun b!6557688 () Bool)

(declare-fun e!3969961 () Option!16324)

(assert (=> b!6557688 (= e!3969961 None!16323)))

(declare-fun b!6557690 () Bool)

(declare-fun e!3969962 () Bool)

(declare-fun lt!2404841 () Option!16324)

(assert (=> b!6557690 (= e!3969962 (= (++!14568 (_1!36715 (get!22731 lt!2404841)) (_2!36715 (get!22731 lt!2404841))) (_1!36715 lt!2404638)))))

(declare-fun b!6557691 () Bool)

(declare-fun e!3969958 () Option!16324)

(assert (=> b!6557691 (= e!3969958 (Some!16323 (tuple2!66825 Nil!65474 (_1!36715 lt!2404638))))))

(declare-fun b!6557692 () Bool)

(declare-fun e!3969960 () Bool)

(assert (=> b!6557692 (= e!3969960 (not (isDefined!13027 lt!2404841)))))

(declare-fun b!6557693 () Bool)

(declare-fun res!2690710 () Bool)

(assert (=> b!6557693 (=> (not res!2690710) (not e!3969962))))

(assert (=> b!6557693 (= res!2690710 (matchR!8616 lt!2404592 (_2!36715 (get!22731 lt!2404841))))))

(declare-fun b!6557694 () Bool)

(declare-fun e!3969959 () Bool)

(assert (=> b!6557694 (= e!3969959 (matchR!8616 lt!2404592 (_1!36715 lt!2404638)))))

(declare-fun b!6557695 () Bool)

(declare-fun res!2690711 () Bool)

(assert (=> b!6557695 (=> (not res!2690711) (not e!3969962))))

(assert (=> b!6557695 (= res!2690711 (matchR!8616 (reg!16762 (regOne!33378 r!7292)) (_1!36715 (get!22731 lt!2404841))))))

(declare-fun b!6557696 () Bool)

(assert (=> b!6557696 (= e!3969958 e!3969961)))

(declare-fun c!1204867 () Bool)

(assert (=> b!6557696 (= c!1204867 ((_ is Nil!65474) (_1!36715 lt!2404638)))))

(declare-fun d!2057660 () Bool)

(assert (=> d!2057660 e!3969960))

(declare-fun res!2690713 () Bool)

(assert (=> d!2057660 (=> res!2690713 e!3969960)))

(assert (=> d!2057660 (= res!2690713 e!3969962)))

(declare-fun res!2690712 () Bool)

(assert (=> d!2057660 (=> (not res!2690712) (not e!3969962))))

(assert (=> d!2057660 (= res!2690712 (isDefined!13027 lt!2404841))))

(assert (=> d!2057660 (= lt!2404841 e!3969958)))

(declare-fun c!1204868 () Bool)

(assert (=> d!2057660 (= c!1204868 e!3969959)))

(declare-fun res!2690714 () Bool)

(assert (=> d!2057660 (=> (not res!2690714) (not e!3969959))))

(assert (=> d!2057660 (= res!2690714 (matchR!8616 (reg!16762 (regOne!33378 r!7292)) Nil!65474))))

(assert (=> d!2057660 (validRegex!8169 (reg!16762 (regOne!33378 r!7292)))))

(assert (=> d!2057660 (= (findConcatSeparation!2738 (reg!16762 (regOne!33378 r!7292)) lt!2404592 Nil!65474 (_1!36715 lt!2404638) (_1!36715 lt!2404638)) lt!2404841)))

(declare-fun b!6557689 () Bool)

(declare-fun lt!2404842 () Unit!159067)

(declare-fun lt!2404840 () Unit!159067)

(assert (=> b!6557689 (= lt!2404842 lt!2404840)))

(assert (=> b!6557689 (= (++!14568 (++!14568 Nil!65474 (Cons!65474 (h!71922 (_1!36715 lt!2404638)) Nil!65474)) (t!379240 (_1!36715 lt!2404638))) (_1!36715 lt!2404638))))

(assert (=> b!6557689 (= lt!2404840 (lemmaMoveElementToOtherListKeepsConcatEq!2576 Nil!65474 (h!71922 (_1!36715 lt!2404638)) (t!379240 (_1!36715 lt!2404638)) (_1!36715 lt!2404638)))))

(assert (=> b!6557689 (= e!3969961 (findConcatSeparation!2738 (reg!16762 (regOne!33378 r!7292)) lt!2404592 (++!14568 Nil!65474 (Cons!65474 (h!71922 (_1!36715 lt!2404638)) Nil!65474)) (t!379240 (_1!36715 lt!2404638)) (_1!36715 lt!2404638)))))

(assert (= (and d!2057660 res!2690714) b!6557694))

(assert (= (and d!2057660 c!1204868) b!6557691))

(assert (= (and d!2057660 (not c!1204868)) b!6557696))

(assert (= (and b!6557696 c!1204867) b!6557688))

(assert (= (and b!6557696 (not c!1204867)) b!6557689))

(assert (= (and d!2057660 res!2690712) b!6557695))

(assert (= (and b!6557695 res!2690711) b!6557693))

(assert (= (and b!6557693 res!2690710) b!6557690))

(assert (= (and d!2057660 (not res!2690713)) b!6557692))

(declare-fun m!7339834 () Bool)

(assert (=> d!2057660 m!7339834))

(declare-fun m!7339836 () Bool)

(assert (=> d!2057660 m!7339836))

(assert (=> d!2057660 m!7338746))

(declare-fun m!7339838 () Bool)

(assert (=> b!6557694 m!7339838))

(declare-fun m!7339840 () Bool)

(assert (=> b!6557689 m!7339840))

(assert (=> b!6557689 m!7339840))

(declare-fun m!7339842 () Bool)

(assert (=> b!6557689 m!7339842))

(declare-fun m!7339844 () Bool)

(assert (=> b!6557689 m!7339844))

(assert (=> b!6557689 m!7339840))

(declare-fun m!7339846 () Bool)

(assert (=> b!6557689 m!7339846))

(declare-fun m!7339848 () Bool)

(assert (=> b!6557695 m!7339848))

(declare-fun m!7339850 () Bool)

(assert (=> b!6557695 m!7339850))

(assert (=> b!6557692 m!7339834))

(assert (=> b!6557693 m!7339848))

(declare-fun m!7339852 () Bool)

(assert (=> b!6557693 m!7339852))

(assert (=> b!6557690 m!7339848))

(declare-fun m!7339854 () Bool)

(assert (=> b!6557690 m!7339854))

(assert (=> b!6556608 d!2057660))

(declare-fun bs!1673738 () Bool)

(declare-fun b!6557706 () Bool)

(assert (= bs!1673738 (and b!6557706 b!6557251)))

(declare-fun lambda!364588 () Int)

(assert (=> bs!1673738 (not (= lambda!364588 lambda!364556))))

(declare-fun bs!1673739 () Bool)

(assert (= bs!1673739 (and b!6557706 d!2057616)))

(assert (=> bs!1673739 (not (= lambda!364588 lambda!364579))))

(declare-fun bs!1673740 () Bool)

(assert (= bs!1673740 (and b!6557706 d!2057608)))

(assert (=> bs!1673740 (not (= lambda!364588 lambda!364575))))

(declare-fun bs!1673741 () Bool)

(assert (= bs!1673741 (and b!6557706 b!6556596)))

(assert (=> bs!1673741 (not (= lambda!364588 lambda!364502))))

(declare-fun bs!1673742 () Bool)

(assert (= bs!1673742 (and b!6557706 d!2057428)))

(assert (=> bs!1673742 (not (= lambda!364588 lambda!364539))))

(declare-fun bs!1673743 () Bool)

(assert (= bs!1673743 (and b!6557706 b!6556790)))

(assert (=> bs!1673743 (not (= lambda!364588 lambda!364521))))

(assert (=> bs!1673741 (not (= lambda!364588 lambda!364501))))

(declare-fun bs!1673744 () Bool)

(assert (= bs!1673744 (and b!6557706 b!6556588)))

(assert (=> bs!1673744 (not (= lambda!364588 lambda!364496))))

(assert (=> bs!1673744 (not (= lambda!364588 lambda!364497))))

(declare-fun bs!1673745 () Bool)

(assert (= bs!1673745 (and b!6557706 b!6557276)))

(assert (=> bs!1673745 (not (= lambda!364588 lambda!364560))))

(assert (=> bs!1673739 (not (= lambda!364588 lambda!364577))))

(declare-fun bs!1673746 () Bool)

(assert (= bs!1673746 (and b!6557706 d!2057496)))

(assert (=> bs!1673746 (not (= lambda!364588 lambda!364553))))

(declare-fun bs!1673747 () Bool)

(assert (= bs!1673747 (and b!6557706 b!6556796)))

(assert (=> bs!1673747 (= (and (= (_1!36715 lt!2404638) s!2326) (= (reg!16762 lt!2404586) (reg!16762 lt!2404594)) (= lt!2404586 lt!2404594)) (= lambda!364588 lambda!364520))))

(declare-fun bs!1673748 () Bool)

(assert (= bs!1673748 (and b!6557706 b!6556608)))

(assert (=> bs!1673748 (not (= lambda!364588 lambda!364503))))

(declare-fun bs!1673749 () Bool)

(assert (= bs!1673749 (and b!6557706 b!6557282)))

(assert (=> bs!1673749 (= (and (= (_1!36715 lt!2404638) s!2326) (= (reg!16762 lt!2404586) (reg!16762 r!7292)) (= lt!2404586 r!7292)) (= lambda!364588 lambda!364558))))

(declare-fun bs!1673750 () Bool)

(assert (= bs!1673750 (and b!6557706 b!6557257)))

(assert (=> bs!1673750 (= (and (= (_1!36715 lt!2404638) s!2326) (= (reg!16762 lt!2404586) (reg!16762 lt!2404616)) (= lt!2404586 lt!2404616)) (= lambda!364588 lambda!364555))))

(declare-fun bs!1673751 () Bool)

(assert (= bs!1673751 (and b!6557706 d!2057656)))

(assert (=> bs!1673751 (not (= lambda!364588 lambda!364587))))

(assert (=> bs!1673746 (not (= lambda!364588 lambda!364554))))

(assert (=> b!6557706 true))

(assert (=> b!6557706 true))

(declare-fun bs!1673752 () Bool)

(declare-fun b!6557700 () Bool)

(assert (= bs!1673752 (and b!6557700 b!6557251)))

(declare-fun lambda!364589 () Int)

(assert (=> bs!1673752 (= (and (= (_1!36715 lt!2404638) s!2326) (= (regOne!33378 lt!2404586) (regOne!33378 lt!2404616)) (= (regTwo!33378 lt!2404586) (regTwo!33378 lt!2404616))) (= lambda!364589 lambda!364556))))

(declare-fun bs!1673753 () Bool)

(assert (= bs!1673753 (and b!6557700 d!2057616)))

(assert (=> bs!1673753 (= (and (= (_1!36715 lt!2404638) s!2326) (= (regOne!33378 lt!2404586) (regOne!33378 r!7292)) (= (regTwo!33378 lt!2404586) (regTwo!33378 r!7292))) (= lambda!364589 lambda!364579))))

(declare-fun bs!1673754 () Bool)

(assert (= bs!1673754 (and b!6557700 d!2057608)))

(assert (=> bs!1673754 (not (= lambda!364589 lambda!364575))))

(declare-fun bs!1673755 () Bool)

(assert (= bs!1673755 (and b!6557700 b!6556596)))

(assert (=> bs!1673755 (= (and (= (_1!36715 lt!2404638) s!2326) (= (regOne!33378 lt!2404586) lt!2404586) (= (regTwo!33378 lt!2404586) (regTwo!33378 r!7292))) (= lambda!364589 lambda!364502))))

(declare-fun bs!1673756 () Bool)

(assert (= bs!1673756 (and b!6557700 d!2057428)))

(assert (=> bs!1673756 (not (= lambda!364589 lambda!364539))))

(declare-fun bs!1673757 () Bool)

(assert (= bs!1673757 (and b!6557700 b!6557706)))

(assert (=> bs!1673757 (not (= lambda!364589 lambda!364588))))

(declare-fun bs!1673758 () Bool)

(assert (= bs!1673758 (and b!6557700 b!6556790)))

(assert (=> bs!1673758 (= (and (= (_1!36715 lt!2404638) s!2326) (= (regOne!33378 lt!2404586) (regOne!33378 lt!2404594)) (= (regTwo!33378 lt!2404586) (regTwo!33378 lt!2404594))) (= lambda!364589 lambda!364521))))

(assert (=> bs!1673755 (not (= lambda!364589 lambda!364501))))

(declare-fun bs!1673759 () Bool)

(assert (= bs!1673759 (and b!6557700 b!6556588)))

(assert (=> bs!1673759 (not (= lambda!364589 lambda!364496))))

(assert (=> bs!1673759 (= (and (= (_1!36715 lt!2404638) s!2326) (= (regOne!33378 lt!2404586) (regOne!33378 r!7292)) (= (regTwo!33378 lt!2404586) (regTwo!33378 r!7292))) (= lambda!364589 lambda!364497))))

(declare-fun bs!1673760 () Bool)

(assert (= bs!1673760 (and b!6557700 b!6557276)))

(assert (=> bs!1673760 (= (and (= (_1!36715 lt!2404638) s!2326) (= (regOne!33378 lt!2404586) (regOne!33378 r!7292)) (= (regTwo!33378 lt!2404586) (regTwo!33378 r!7292))) (= lambda!364589 lambda!364560))))

(assert (=> bs!1673753 (not (= lambda!364589 lambda!364577))))

(declare-fun bs!1673761 () Bool)

(assert (= bs!1673761 (and b!6557700 d!2057496)))

(assert (=> bs!1673761 (not (= lambda!364589 lambda!364553))))

(declare-fun bs!1673762 () Bool)

(assert (= bs!1673762 (and b!6557700 b!6556796)))

(assert (=> bs!1673762 (not (= lambda!364589 lambda!364520))))

(declare-fun bs!1673763 () Bool)

(assert (= bs!1673763 (and b!6557700 b!6556608)))

(assert (=> bs!1673763 (not (= lambda!364589 lambda!364503))))

(declare-fun bs!1673764 () Bool)

(assert (= bs!1673764 (and b!6557700 b!6557282)))

(assert (=> bs!1673764 (not (= lambda!364589 lambda!364558))))

(declare-fun bs!1673765 () Bool)

(assert (= bs!1673765 (and b!6557700 b!6557257)))

(assert (=> bs!1673765 (not (= lambda!364589 lambda!364555))))

(declare-fun bs!1673766 () Bool)

(assert (= bs!1673766 (and b!6557700 d!2057656)))

(assert (=> bs!1673766 (not (= lambda!364589 lambda!364587))))

(assert (=> bs!1673761 (= (and (= (_1!36715 lt!2404638) s!2326) (= (regOne!33378 lt!2404586) lt!2404586) (= (regTwo!33378 lt!2404586) (regTwo!33378 r!7292))) (= lambda!364589 lambda!364554))))

(assert (=> b!6557700 true))

(assert (=> b!6557700 true))

(declare-fun b!6557697 () Bool)

(declare-fun e!3969966 () Bool)

(assert (=> b!6557697 (= e!3969966 (= (_1!36715 lt!2404638) (Cons!65474 (c!1204578 lt!2404586) Nil!65474)))))

(declare-fun b!6557698 () Bool)

(declare-fun e!3969963 () Bool)

(declare-fun e!3969969 () Bool)

(assert (=> b!6557698 (= e!3969963 e!3969969)))

(declare-fun c!1204870 () Bool)

(assert (=> b!6557698 (= c!1204870 ((_ is Star!16433) lt!2404586))))

(declare-fun d!2057662 () Bool)

(declare-fun c!1204872 () Bool)

(assert (=> d!2057662 (= c!1204872 ((_ is EmptyExpr!16433) lt!2404586))))

(declare-fun e!3969964 () Bool)

(assert (=> d!2057662 (= (matchRSpec!3534 lt!2404586 (_1!36715 lt!2404638)) e!3969964)))

(declare-fun b!6557699 () Bool)

(declare-fun e!3969965 () Bool)

(assert (=> b!6557699 (= e!3969963 e!3969965)))

(declare-fun res!2690717 () Bool)

(assert (=> b!6557699 (= res!2690717 (matchRSpec!3534 (regOne!33379 lt!2404586) (_1!36715 lt!2404638)))))

(assert (=> b!6557699 (=> res!2690717 e!3969965)))

(declare-fun call!570381 () Bool)

(assert (=> b!6557700 (= e!3969969 call!570381)))

(declare-fun bm!570375 () Bool)

(declare-fun call!570380 () Bool)

(assert (=> bm!570375 (= call!570380 (isEmpty!37713 (_1!36715 lt!2404638)))))

(declare-fun bm!570376 () Bool)

(assert (=> bm!570376 (= call!570381 (Exists!3503 (ite c!1204870 lambda!364588 lambda!364589)))))

(declare-fun b!6557701 () Bool)

(declare-fun c!1204869 () Bool)

(assert (=> b!6557701 (= c!1204869 ((_ is Union!16433) lt!2404586))))

(assert (=> b!6557701 (= e!3969966 e!3969963)))

(declare-fun b!6557702 () Bool)

(declare-fun e!3969968 () Bool)

(assert (=> b!6557702 (= e!3969964 e!3969968)))

(declare-fun res!2690715 () Bool)

(assert (=> b!6557702 (= res!2690715 (not ((_ is EmptyLang!16433) lt!2404586)))))

(assert (=> b!6557702 (=> (not res!2690715) (not e!3969968))))

(declare-fun b!6557703 () Bool)

(declare-fun res!2690716 () Bool)

(declare-fun e!3969967 () Bool)

(assert (=> b!6557703 (=> res!2690716 e!3969967)))

(assert (=> b!6557703 (= res!2690716 call!570380)))

(assert (=> b!6557703 (= e!3969969 e!3969967)))

(declare-fun b!6557704 () Bool)

(assert (=> b!6557704 (= e!3969965 (matchRSpec!3534 (regTwo!33379 lt!2404586) (_1!36715 lt!2404638)))))

(declare-fun b!6557705 () Bool)

(assert (=> b!6557705 (= e!3969964 call!570380)))

(assert (=> b!6557706 (= e!3969967 call!570381)))

(declare-fun b!6557707 () Bool)

(declare-fun c!1204871 () Bool)

(assert (=> b!6557707 (= c!1204871 ((_ is ElementMatch!16433) lt!2404586))))

(assert (=> b!6557707 (= e!3969968 e!3969966)))

(assert (= (and d!2057662 c!1204872) b!6557705))

(assert (= (and d!2057662 (not c!1204872)) b!6557702))

(assert (= (and b!6557702 res!2690715) b!6557707))

(assert (= (and b!6557707 c!1204871) b!6557697))

(assert (= (and b!6557707 (not c!1204871)) b!6557701))

(assert (= (and b!6557701 c!1204869) b!6557699))

(assert (= (and b!6557701 (not c!1204869)) b!6557698))

(assert (= (and b!6557699 (not res!2690717)) b!6557704))

(assert (= (and b!6557698 c!1204870) b!6557703))

(assert (= (and b!6557698 (not c!1204870)) b!6557700))

(assert (= (and b!6557703 (not res!2690716)) b!6557706))

(assert (= (or b!6557706 b!6557700) bm!570376))

(assert (= (or b!6557705 b!6557703) bm!570375))

(declare-fun m!7339856 () Bool)

(assert (=> b!6557699 m!7339856))

(assert (=> bm!570375 m!7339358))

(declare-fun m!7339858 () Bool)

(assert (=> bm!570376 m!7339858))

(declare-fun m!7339860 () Bool)

(assert (=> b!6557704 m!7339860))

(assert (=> b!6556608 d!2057662))

(declare-fun d!2057664 () Bool)

(assert (=> d!2057664 (= (Exists!3503 lambda!364503) (choose!48874 lambda!364503))))

(declare-fun bs!1673767 () Bool)

(assert (= bs!1673767 d!2057664))

(declare-fun m!7339862 () Bool)

(assert (=> bs!1673767 m!7339862))

(assert (=> b!6556608 d!2057664))

(declare-fun d!2057666 () Bool)

(assert (=> d!2057666 (= (isDefined!13027 (findConcatSeparation!2738 (reg!16762 (regOne!33378 r!7292)) lt!2404592 Nil!65474 (_1!36715 lt!2404638) (_1!36715 lt!2404638))) (not (isEmpty!37714 (findConcatSeparation!2738 (reg!16762 (regOne!33378 r!7292)) lt!2404592 Nil!65474 (_1!36715 lt!2404638) (_1!36715 lt!2404638)))))))

(declare-fun bs!1673768 () Bool)

(assert (= bs!1673768 d!2057666))

(assert (=> bs!1673768 m!7338748))

(declare-fun m!7339864 () Bool)

(assert (=> bs!1673768 m!7339864))

(assert (=> b!6556608 d!2057666))

(declare-fun d!2057668 () Bool)

(declare-fun e!3969972 () Bool)

(assert (=> d!2057668 e!3969972))

(declare-fun res!2690720 () Bool)

(assert (=> d!2057668 (=> (not res!2690720) (not e!3969972))))

(declare-fun lt!2404845 () List!65600)

(declare-fun noDuplicate!2238 (List!65600) Bool)

(assert (=> d!2057668 (= res!2690720 (noDuplicate!2238 lt!2404845))))

(declare-fun choose!48884 ((InoxSet Context!11634)) List!65600)

(assert (=> d!2057668 (= lt!2404845 (choose!48884 z!1189))))

(assert (=> d!2057668 (= (toList!10217 z!1189) lt!2404845)))

(declare-fun b!6557710 () Bool)

(declare-fun content!12582 (List!65600) (InoxSet Context!11634))

(assert (=> b!6557710 (= e!3969972 (= (content!12582 lt!2404845) z!1189))))

(assert (= (and d!2057668 res!2690720) b!6557710))

(declare-fun m!7339866 () Bool)

(assert (=> d!2057668 m!7339866))

(declare-fun m!7339868 () Bool)

(assert (=> d!2057668 m!7339868))

(declare-fun m!7339870 () Bool)

(assert (=> b!6557710 m!7339870))

(assert (=> b!6556606 d!2057668))

(declare-fun d!2057670 () Bool)

(assert (=> d!2057670 (= (nullable!6426 (regOne!33378 (regOne!33378 r!7292))) (nullableFct!2352 (regOne!33378 (regOne!33378 r!7292))))))

(declare-fun bs!1673769 () Bool)

(assert (= bs!1673769 d!2057670))

(declare-fun m!7339872 () Bool)

(assert (=> bs!1673769 m!7339872))

(assert (=> b!6556585 d!2057670))

(declare-fun d!2057672 () Bool)

(assert (=> d!2057672 (= (flatMap!1938 lt!2404633 lambda!364498) (choose!48879 lt!2404633 lambda!364498))))

(declare-fun bs!1673770 () Bool)

(assert (= bs!1673770 d!2057672))

(declare-fun m!7339874 () Bool)

(assert (=> bs!1673770 m!7339874))

(assert (=> b!6556605 d!2057672))

(declare-fun b!6557711 () Bool)

(declare-fun e!3969975 () (InoxSet Context!11634))

(declare-fun call!570382 () (InoxSet Context!11634))

(assert (=> b!6557711 (= e!3969975 call!570382)))

(declare-fun b!6557712 () Bool)

(declare-fun e!3969973 () (InoxSet Context!11634))

(assert (=> b!6557712 (= e!3969973 e!3969975)))

(declare-fun c!1204873 () Bool)

(assert (=> b!6557712 (= c!1204873 ((_ is Cons!65475) (exprs!6317 lt!2404614)))))

(declare-fun bm!570377 () Bool)

(assert (=> bm!570377 (= call!570382 (derivationStepZipperDown!1681 (h!71923 (exprs!6317 lt!2404614)) (Context!11635 (t!379241 (exprs!6317 lt!2404614))) (h!71922 s!2326)))))

(declare-fun d!2057674 () Bool)

(declare-fun c!1204874 () Bool)

(declare-fun e!3969974 () Bool)

(assert (=> d!2057674 (= c!1204874 e!3969974)))

(declare-fun res!2690721 () Bool)

(assert (=> d!2057674 (=> (not res!2690721) (not e!3969974))))

(assert (=> d!2057674 (= res!2690721 ((_ is Cons!65475) (exprs!6317 lt!2404614)))))

(assert (=> d!2057674 (= (derivationStepZipperUp!1607 lt!2404614 (h!71922 s!2326)) e!3969973)))

(declare-fun b!6557713 () Bool)

(assert (=> b!6557713 (= e!3969973 ((_ map or) call!570382 (derivationStepZipperUp!1607 (Context!11635 (t!379241 (exprs!6317 lt!2404614))) (h!71922 s!2326))))))

(declare-fun b!6557714 () Bool)

(assert (=> b!6557714 (= e!3969974 (nullable!6426 (h!71923 (exprs!6317 lt!2404614))))))

(declare-fun b!6557715 () Bool)

(assert (=> b!6557715 (= e!3969975 ((as const (Array Context!11634 Bool)) false))))

(assert (= (and d!2057674 res!2690721) b!6557714))

(assert (= (and d!2057674 c!1204874) b!6557713))

(assert (= (and d!2057674 (not c!1204874)) b!6557712))

(assert (= (and b!6557712 c!1204873) b!6557711))

(assert (= (and b!6557712 (not c!1204873)) b!6557715))

(assert (= (or b!6557713 b!6557711) bm!570377))

(declare-fun m!7339876 () Bool)

(assert (=> bm!570377 m!7339876))

(declare-fun m!7339878 () Bool)

(assert (=> b!6557713 m!7339878))

(declare-fun m!7339880 () Bool)

(assert (=> b!6557714 m!7339880))

(assert (=> b!6556605 d!2057674))

(declare-fun d!2057676 () Bool)

(assert (=> d!2057676 (= (flatMap!1938 lt!2404633 lambda!364498) (dynLambda!26038 lambda!364498 lt!2404614))))

(declare-fun lt!2404846 () Unit!159067)

(assert (=> d!2057676 (= lt!2404846 (choose!48878 lt!2404633 lt!2404614 lambda!364498))))

(assert (=> d!2057676 (= lt!2404633 (store ((as const (Array Context!11634 Bool)) false) lt!2404614 true))))

(assert (=> d!2057676 (= (lemmaFlatMapOnSingletonSet!1464 lt!2404633 lt!2404614 lambda!364498) lt!2404846)))

(declare-fun b_lambda!248107 () Bool)

(assert (=> (not b_lambda!248107) (not d!2057676)))

(declare-fun bs!1673771 () Bool)

(assert (= bs!1673771 d!2057676))

(assert (=> bs!1673771 m!7338680))

(declare-fun m!7339882 () Bool)

(assert (=> bs!1673771 m!7339882))

(declare-fun m!7339884 () Bool)

(assert (=> bs!1673771 m!7339884))

(assert (=> bs!1673771 m!7338686))

(assert (=> b!6556605 d!2057676))

(declare-fun bs!1673772 () Bool)

(declare-fun d!2057678 () Bool)

(assert (= bs!1673772 (and d!2057678 b!6556601)))

(declare-fun lambda!364592 () Int)

(assert (=> bs!1673772 (= lambda!364592 lambda!364498)))

(assert (=> d!2057678 true))

(assert (=> d!2057678 (= (derivationStepZipper!2399 lt!2404633 (h!71922 s!2326)) (flatMap!1938 lt!2404633 lambda!364592))))

(declare-fun bs!1673773 () Bool)

(assert (= bs!1673773 d!2057678))

(declare-fun m!7339886 () Bool)

(assert (=> bs!1673773 m!7339886))

(assert (=> b!6556605 d!2057678))

(declare-fun b!6557718 () Bool)

(declare-fun e!3969977 () Bool)

(declare-fun call!570384 () Bool)

(assert (=> b!6557718 (= e!3969977 call!570384)))

(declare-fun b!6557719 () Bool)

(declare-fun e!3969976 () Bool)

(declare-fun e!3969978 () Bool)

(assert (=> b!6557719 (= e!3969976 e!3969978)))

(declare-fun res!2690725 () Bool)

(assert (=> b!6557719 (=> (not res!2690725) (not e!3969978))))

(declare-fun call!570385 () Bool)

(assert (=> b!6557719 (= res!2690725 call!570385)))

(declare-fun b!6557720 () Bool)

(declare-fun e!3969980 () Bool)

(declare-fun e!3969982 () Bool)

(assert (=> b!6557720 (= e!3969980 e!3969982)))

(declare-fun c!1204877 () Bool)

(assert (=> b!6557720 (= c!1204877 ((_ is Star!16433) r!7292))))

(declare-fun bm!570378 () Bool)

(declare-fun c!1204878 () Bool)

(assert (=> bm!570378 (= call!570385 (validRegex!8169 (ite c!1204878 (regOne!33379 r!7292) (regOne!33378 r!7292))))))

(declare-fun d!2057680 () Bool)

(declare-fun res!2690723 () Bool)

(assert (=> d!2057680 (=> res!2690723 e!3969980)))

(assert (=> d!2057680 (= res!2690723 ((_ is ElementMatch!16433) r!7292))))

(assert (=> d!2057680 (= (validRegex!8169 r!7292) e!3969980)))

(declare-fun b!6557721 () Bool)

(declare-fun res!2690722 () Bool)

(assert (=> b!6557721 (=> res!2690722 e!3969976)))

(assert (=> b!6557721 (= res!2690722 (not ((_ is Concat!25278) r!7292)))))

(declare-fun e!3969979 () Bool)

(assert (=> b!6557721 (= e!3969979 e!3969976)))

(declare-fun b!6557722 () Bool)

(declare-fun e!3969981 () Bool)

(declare-fun call!570383 () Bool)

(assert (=> b!6557722 (= e!3969981 call!570383)))

(declare-fun bm!570379 () Bool)

(assert (=> bm!570379 (= call!570383 (validRegex!8169 (ite c!1204877 (reg!16762 r!7292) (ite c!1204878 (regTwo!33379 r!7292) (regTwo!33378 r!7292)))))))

(declare-fun b!6557723 () Bool)

(assert (=> b!6557723 (= e!3969982 e!3969979)))

(assert (=> b!6557723 (= c!1204878 ((_ is Union!16433) r!7292))))

(declare-fun b!6557724 () Bool)

(assert (=> b!6557724 (= e!3969978 call!570384)))

(declare-fun b!6557725 () Bool)

(declare-fun res!2690724 () Bool)

(assert (=> b!6557725 (=> (not res!2690724) (not e!3969977))))

(assert (=> b!6557725 (= res!2690724 call!570385)))

(assert (=> b!6557725 (= e!3969979 e!3969977)))

(declare-fun b!6557726 () Bool)

(assert (=> b!6557726 (= e!3969982 e!3969981)))

(declare-fun res!2690726 () Bool)

(assert (=> b!6557726 (= res!2690726 (not (nullable!6426 (reg!16762 r!7292))))))

(assert (=> b!6557726 (=> (not res!2690726) (not e!3969981))))

(declare-fun bm!570380 () Bool)

(assert (=> bm!570380 (= call!570384 call!570383)))

(assert (= (and d!2057680 (not res!2690723)) b!6557720))

(assert (= (and b!6557720 c!1204877) b!6557726))

(assert (= (and b!6557720 (not c!1204877)) b!6557723))

(assert (= (and b!6557726 res!2690726) b!6557722))

(assert (= (and b!6557723 c!1204878) b!6557725))

(assert (= (and b!6557723 (not c!1204878)) b!6557721))

(assert (= (and b!6557725 res!2690724) b!6557718))

(assert (= (and b!6557721 (not res!2690722)) b!6557719))

(assert (= (and b!6557719 res!2690725) b!6557724))

(assert (= (or b!6557718 b!6557724) bm!570380))

(assert (= (or b!6557725 b!6557719) bm!570378))

(assert (= (or b!6557722 bm!570380) bm!570379))

(declare-fun m!7339888 () Bool)

(assert (=> bm!570378 m!7339888))

(declare-fun m!7339890 () Bool)

(assert (=> bm!570379 m!7339890))

(declare-fun m!7339892 () Bool)

(assert (=> b!6557726 m!7339892))

(assert (=> start!642518 d!2057680))

(declare-fun d!2057682 () Bool)

(declare-fun c!1204879 () Bool)

(assert (=> d!2057682 (= c!1204879 (isEmpty!37713 (_1!36715 lt!2404601)))))

(declare-fun e!3969983 () Bool)

(assert (=> d!2057682 (= (matchZipper!2445 lt!2404597 (_1!36715 lt!2404601)) e!3969983)))

(declare-fun b!6557727 () Bool)

(assert (=> b!6557727 (= e!3969983 (nullableZipper!2178 lt!2404597))))

(declare-fun b!6557728 () Bool)

(assert (=> b!6557728 (= e!3969983 (matchZipper!2445 (derivationStepZipper!2399 lt!2404597 (head!13316 (_1!36715 lt!2404601))) (tail!12401 (_1!36715 lt!2404601))))))

(assert (= (and d!2057682 c!1204879) b!6557727))

(assert (= (and d!2057682 (not c!1204879)) b!6557728))

(assert (=> d!2057682 m!7339344))

(declare-fun m!7339894 () Bool)

(assert (=> b!6557727 m!7339894))

(assert (=> b!6557728 m!7339340))

(assert (=> b!6557728 m!7339340))

(declare-fun m!7339896 () Bool)

(assert (=> b!6557728 m!7339896))

(assert (=> b!6557728 m!7339336))

(assert (=> b!6557728 m!7339896))

(assert (=> b!6557728 m!7339336))

(declare-fun m!7339898 () Bool)

(assert (=> b!6557728 m!7339898))

(assert (=> b!6556593 d!2057682))

(declare-fun d!2057684 () Bool)

(declare-fun c!1204880 () Bool)

(assert (=> d!2057684 (= c!1204880 (isEmpty!37713 (t!379240 s!2326)))))

(declare-fun e!3969984 () Bool)

(assert (=> d!2057684 (= (matchZipper!2445 lt!2404620 (t!379240 s!2326)) e!3969984)))

(declare-fun b!6557729 () Bool)

(assert (=> b!6557729 (= e!3969984 (nullableZipper!2178 lt!2404620))))

(declare-fun b!6557730 () Bool)

(assert (=> b!6557730 (= e!3969984 (matchZipper!2445 (derivationStepZipper!2399 lt!2404620 (head!13316 (t!379240 s!2326))) (tail!12401 (t!379240 s!2326))))))

(assert (= (and d!2057684 c!1204880) b!6557729))

(assert (= (and d!2057684 (not c!1204880)) b!6557730))

(assert (=> d!2057684 m!7338884))

(declare-fun m!7339900 () Bool)

(assert (=> b!6557729 m!7339900))

(assert (=> b!6557730 m!7338888))

(assert (=> b!6557730 m!7338888))

(declare-fun m!7339902 () Bool)

(assert (=> b!6557730 m!7339902))

(assert (=> b!6557730 m!7338892))

(assert (=> b!6557730 m!7339902))

(assert (=> b!6557730 m!7338892))

(declare-fun m!7339904 () Bool)

(assert (=> b!6557730 m!7339904))

(assert (=> b!6556592 d!2057684))

(declare-fun d!2057686 () Bool)

(declare-fun c!1204881 () Bool)

(assert (=> d!2057686 (= c!1204881 (isEmpty!37713 s!2326))))

(declare-fun e!3969985 () Bool)

(assert (=> d!2057686 (= (matchZipper!2445 lt!2404633 s!2326) e!3969985)))

(declare-fun b!6557731 () Bool)

(assert (=> b!6557731 (= e!3969985 (nullableZipper!2178 lt!2404633))))

(declare-fun b!6557732 () Bool)

(assert (=> b!6557732 (= e!3969985 (matchZipper!2445 (derivationStepZipper!2399 lt!2404633 (head!13316 s!2326)) (tail!12401 s!2326)))))

(assert (= (and d!2057686 c!1204881) b!6557731))

(assert (= (and d!2057686 (not c!1204881)) b!6557732))

(assert (=> d!2057686 m!7338898))

(declare-fun m!7339906 () Bool)

(assert (=> b!6557731 m!7339906))

(assert (=> b!6557732 m!7338902))

(assert (=> b!6557732 m!7338902))

(declare-fun m!7339908 () Bool)

(assert (=> b!6557732 m!7339908))

(assert (=> b!6557732 m!7338906))

(assert (=> b!6557732 m!7339908))

(assert (=> b!6557732 m!7338906))

(declare-fun m!7339910 () Bool)

(assert (=> b!6557732 m!7339910))

(assert (=> b!6556592 d!2057686))

(declare-fun bs!1673774 () Bool)

(declare-fun d!2057688 () Bool)

(assert (= bs!1673774 (and d!2057688 d!2057390)))

(declare-fun lambda!364595 () Int)

(assert (=> bs!1673774 (= lambda!364595 lambda!364524)))

(declare-fun bs!1673775 () Bool)

(assert (= bs!1673775 (and d!2057688 d!2057402)))

(assert (=> bs!1673775 (= lambda!364595 lambda!364527)))

(declare-fun bs!1673776 () Bool)

(assert (= bs!1673776 (and d!2057688 d!2057538)))

(assert (=> bs!1673776 (= lambda!364595 lambda!364563)))

(declare-fun bs!1673777 () Bool)

(assert (= bs!1673777 (and d!2057688 d!2057414)))

(assert (=> bs!1673777 (= lambda!364595 lambda!364535)))

(declare-fun bs!1673778 () Bool)

(assert (= bs!1673778 (and d!2057688 b!6556611)))

(assert (=> bs!1673778 (= lambda!364595 lambda!364500)))

(declare-fun e!3970003 () Bool)

(assert (=> d!2057688 e!3970003))

(declare-fun res!2690731 () Bool)

(assert (=> d!2057688 (=> (not res!2690731) (not e!3970003))))

(declare-fun lt!2404849 () Regex!16433)

(assert (=> d!2057688 (= res!2690731 (validRegex!8169 lt!2404849))))

(declare-fun e!3970001 () Regex!16433)

(assert (=> d!2057688 (= lt!2404849 e!3970001)))

(declare-fun c!1204892 () Bool)

(declare-fun e!3970002 () Bool)

(assert (=> d!2057688 (= c!1204892 e!3970002)))

(declare-fun res!2690732 () Bool)

(assert (=> d!2057688 (=> (not res!2690732) (not e!3970002))))

(assert (=> d!2057688 (= res!2690732 ((_ is Cons!65475) (exprs!6317 (h!71924 zl!343))))))

(assert (=> d!2057688 (forall!15604 (exprs!6317 (h!71924 zl!343)) lambda!364595)))

(assert (=> d!2057688 (= (generalisedConcat!2030 (exprs!6317 (h!71924 zl!343))) lt!2404849)))

(declare-fun b!6557753 () Bool)

(assert (=> b!6557753 (= e!3970002 (isEmpty!37710 (t!379241 (exprs!6317 (h!71924 zl!343)))))))

(declare-fun b!6557754 () Bool)

(declare-fun e!3969998 () Bool)

(declare-fun isEmptyExpr!1811 (Regex!16433) Bool)

(assert (=> b!6557754 (= e!3969998 (isEmptyExpr!1811 lt!2404849))))

(declare-fun b!6557755 () Bool)

(declare-fun e!3969999 () Regex!16433)

(assert (=> b!6557755 (= e!3969999 EmptyExpr!16433)))

(declare-fun b!6557756 () Bool)

(assert (=> b!6557756 (= e!3970001 (h!71923 (exprs!6317 (h!71924 zl!343))))))

(declare-fun b!6557757 () Bool)

(declare-fun e!3970000 () Bool)

(assert (=> b!6557757 (= e!3969998 e!3970000)))

(declare-fun c!1204891 () Bool)

(assert (=> b!6557757 (= c!1204891 (isEmpty!37710 (tail!12402 (exprs!6317 (h!71924 zl!343)))))))

(declare-fun b!6557758 () Bool)

(declare-fun isConcat!1334 (Regex!16433) Bool)

(assert (=> b!6557758 (= e!3970000 (isConcat!1334 lt!2404849))))

(declare-fun b!6557759 () Bool)

(assert (=> b!6557759 (= e!3970000 (= lt!2404849 (head!13317 (exprs!6317 (h!71924 zl!343)))))))

(declare-fun b!6557760 () Bool)

(assert (=> b!6557760 (= e!3970003 e!3969998)))

(declare-fun c!1204890 () Bool)

(assert (=> b!6557760 (= c!1204890 (isEmpty!37710 (exprs!6317 (h!71924 zl!343))))))

(declare-fun b!6557761 () Bool)

(assert (=> b!6557761 (= e!3970001 e!3969999)))

(declare-fun c!1204893 () Bool)

(assert (=> b!6557761 (= c!1204893 ((_ is Cons!65475) (exprs!6317 (h!71924 zl!343))))))

(declare-fun b!6557762 () Bool)

(assert (=> b!6557762 (= e!3969999 (Concat!25278 (h!71923 (exprs!6317 (h!71924 zl!343))) (generalisedConcat!2030 (t!379241 (exprs!6317 (h!71924 zl!343))))))))

(assert (= (and d!2057688 res!2690732) b!6557753))

(assert (= (and d!2057688 c!1204892) b!6557756))

(assert (= (and d!2057688 (not c!1204892)) b!6557761))

(assert (= (and b!6557761 c!1204893) b!6557762))

(assert (= (and b!6557761 (not c!1204893)) b!6557755))

(assert (= (and d!2057688 res!2690731) b!6557760))

(assert (= (and b!6557760 c!1204890) b!6557754))

(assert (= (and b!6557760 (not c!1204890)) b!6557757))

(assert (= (and b!6557757 c!1204891) b!6557759))

(assert (= (and b!6557757 (not c!1204891)) b!6557758))

(declare-fun m!7339912 () Bool)

(assert (=> b!6557760 m!7339912))

(assert (=> b!6557753 m!7338720))

(declare-fun m!7339914 () Bool)

(assert (=> d!2057688 m!7339914))

(declare-fun m!7339916 () Bool)

(assert (=> d!2057688 m!7339916))

(declare-fun m!7339918 () Bool)

(assert (=> b!6557754 m!7339918))

(declare-fun m!7339920 () Bool)

(assert (=> b!6557758 m!7339920))

(declare-fun m!7339922 () Bool)

(assert (=> b!6557759 m!7339922))

(declare-fun m!7339924 () Bool)

(assert (=> b!6557757 m!7339924))

(assert (=> b!6557757 m!7339924))

(declare-fun m!7339926 () Bool)

(assert (=> b!6557757 m!7339926))

(declare-fun m!7339928 () Bool)

(assert (=> b!6557762 m!7339928))

(assert (=> b!6556612 d!2057688))

(declare-fun d!2057690 () Bool)

(assert (=> d!2057690 (= (isEmpty!37709 (t!379242 zl!343)) ((_ is Nil!65476) (t!379242 zl!343)))))

(assert (=> b!6556590 d!2057690))

(declare-fun bs!1673779 () Bool)

(declare-fun d!2057692 () Bool)

(assert (= bs!1673779 (and d!2057692 b!6556611)))

(declare-fun lambda!364600 () Int)

(assert (=> bs!1673779 (= (= (exprs!6317 lt!2404612) lt!2404588) (= lambda!364600 lambda!364499))))

(assert (=> d!2057692 true))

(assert (=> d!2057692 (= (appendTo!194 lt!2404597 lt!2404612) (map!14958 lt!2404597 lambda!364600))))

(declare-fun bs!1673780 () Bool)

(assert (= bs!1673780 d!2057692))

(declare-fun m!7339930 () Bool)

(assert (=> bs!1673780 m!7339930))

(assert (=> b!6556611 d!2057692))

(assert (=> b!6556611 d!2057410))

(declare-fun d!2057694 () Bool)

(declare-fun choose!48885 ((InoxSet Context!11634) Int) (InoxSet Context!11634))

(assert (=> d!2057694 (= (map!14958 lt!2404597 lambda!364499) (choose!48885 lt!2404597 lambda!364499))))

(declare-fun bs!1673781 () Bool)

(assert (= bs!1673781 d!2057694))

(declare-fun m!7339932 () Bool)

(assert (=> bs!1673781 m!7339932))

(assert (=> b!6556611 d!2057694))

(assert (=> b!6556611 d!2057426))

(declare-fun d!2057696 () Bool)

(declare-fun dynLambda!26039 (Int Context!11634) Context!11634)

(assert (=> d!2057696 (= (map!14958 lt!2404597 lambda!364499) (store ((as const (Array Context!11634 Bool)) false) (dynLambda!26039 lambda!364499 lt!2404618) true))))

(declare-fun lt!2404854 () Unit!159067)

(declare-fun choose!48886 ((InoxSet Context!11634) Context!11634 Int) Unit!159067)

(assert (=> d!2057696 (= lt!2404854 (choose!48886 lt!2404597 lt!2404618 lambda!364499))))

(assert (=> d!2057696 (= lt!2404597 (store ((as const (Array Context!11634 Bool)) false) lt!2404618 true))))

(assert (=> d!2057696 (= (lemmaMapOnSingletonSet!216 lt!2404597 lt!2404618 lambda!364499) lt!2404854)))

(declare-fun b_lambda!248109 () Bool)

(assert (=> (not b_lambda!248109) (not d!2057696)))

(declare-fun bs!1673782 () Bool)

(assert (= bs!1673782 d!2057696))

(declare-fun m!7339934 () Bool)

(assert (=> bs!1673782 m!7339934))

(declare-fun m!7339936 () Bool)

(assert (=> bs!1673782 m!7339936))

(declare-fun m!7339938 () Bool)

(assert (=> bs!1673782 m!7339938))

(assert (=> bs!1673782 m!7338736))

(assert (=> bs!1673782 m!7339936))

(assert (=> bs!1673782 m!7338654))

(assert (=> b!6556611 d!2057696))

(declare-fun bs!1673783 () Bool)

(declare-fun d!2057698 () Bool)

(assert (= bs!1673783 (and d!2057698 d!2057390)))

(declare-fun lambda!364601 () Int)

(assert (=> bs!1673783 (= lambda!364601 lambda!364524)))

(declare-fun bs!1673784 () Bool)

(assert (= bs!1673784 (and d!2057698 d!2057402)))

(assert (=> bs!1673784 (= lambda!364601 lambda!364527)))

(declare-fun bs!1673785 () Bool)

(assert (= bs!1673785 (and d!2057698 d!2057538)))

(assert (=> bs!1673785 (= lambda!364601 lambda!364563)))

(declare-fun bs!1673786 () Bool)

(assert (= bs!1673786 (and d!2057698 d!2057414)))

(assert (=> bs!1673786 (= lambda!364601 lambda!364535)))

(declare-fun bs!1673787 () Bool)

(assert (= bs!1673787 (and d!2057698 b!6556611)))

(assert (=> bs!1673787 (= lambda!364601 lambda!364500)))

(declare-fun bs!1673788 () Bool)

(assert (= bs!1673788 (and d!2057698 d!2057688)))

(assert (=> bs!1673788 (= lambda!364601 lambda!364595)))

(assert (=> d!2057698 (= (inv!84329 setElem!44754) (forall!15604 (exprs!6317 setElem!44754) lambda!364601))))

(declare-fun bs!1673789 () Bool)

(assert (= bs!1673789 d!2057698))

(declare-fun m!7339940 () Bool)

(assert (=> bs!1673789 m!7339940))

(assert (=> setNonEmpty!44754 d!2057698))

(declare-fun d!2057700 () Bool)

(declare-fun lt!2404855 () Regex!16433)

(assert (=> d!2057700 (validRegex!8169 lt!2404855)))

(assert (=> d!2057700 (= lt!2404855 (generalisedUnion!2277 (unfocusZipperList!1854 lt!2404622)))))

(assert (=> d!2057700 (= (unfocusZipper!2175 lt!2404622) lt!2404855)))

(declare-fun bs!1673790 () Bool)

(assert (= bs!1673790 d!2057700))

(declare-fun m!7339942 () Bool)

(assert (=> bs!1673790 m!7339942))

(declare-fun m!7339944 () Bool)

(assert (=> bs!1673790 m!7339944))

(assert (=> bs!1673790 m!7339944))

(declare-fun m!7339946 () Bool)

(assert (=> bs!1673790 m!7339946))

(assert (=> b!6556589 d!2057700))

(declare-fun b!6557777 () Bool)

(declare-fun e!3970006 () Bool)

(declare-fun tp!1812188 () Bool)

(assert (=> b!6557777 (= e!3970006 tp!1812188)))

(declare-fun b!6557778 () Bool)

(declare-fun tp!1812191 () Bool)

(declare-fun tp!1812189 () Bool)

(assert (=> b!6557778 (= e!3970006 (and tp!1812191 tp!1812189))))

(declare-fun b!6557775 () Bool)

(assert (=> b!6557775 (= e!3970006 tp_is_empty!42119)))

(assert (=> b!6556583 (= tp!1812113 e!3970006)))

(declare-fun b!6557776 () Bool)

(declare-fun tp!1812192 () Bool)

(declare-fun tp!1812190 () Bool)

(assert (=> b!6557776 (= e!3970006 (and tp!1812192 tp!1812190))))

(assert (= (and b!6556583 ((_ is ElementMatch!16433) (regOne!33378 r!7292))) b!6557775))

(assert (= (and b!6556583 ((_ is Concat!25278) (regOne!33378 r!7292))) b!6557776))

(assert (= (and b!6556583 ((_ is Star!16433) (regOne!33378 r!7292))) b!6557777))

(assert (= (and b!6556583 ((_ is Union!16433) (regOne!33378 r!7292))) b!6557778))

(declare-fun b!6557781 () Bool)

(declare-fun e!3970007 () Bool)

(declare-fun tp!1812193 () Bool)

(assert (=> b!6557781 (= e!3970007 tp!1812193)))

(declare-fun b!6557782 () Bool)

(declare-fun tp!1812196 () Bool)

(declare-fun tp!1812194 () Bool)

(assert (=> b!6557782 (= e!3970007 (and tp!1812196 tp!1812194))))

(declare-fun b!6557779 () Bool)

(assert (=> b!6557779 (= e!3970007 tp_is_empty!42119)))

(assert (=> b!6556583 (= tp!1812111 e!3970007)))

(declare-fun b!6557780 () Bool)

(declare-fun tp!1812197 () Bool)

(declare-fun tp!1812195 () Bool)

(assert (=> b!6557780 (= e!3970007 (and tp!1812197 tp!1812195))))

(assert (= (and b!6556583 ((_ is ElementMatch!16433) (regTwo!33378 r!7292))) b!6557779))

(assert (= (and b!6556583 ((_ is Concat!25278) (regTwo!33378 r!7292))) b!6557780))

(assert (= (and b!6556583 ((_ is Star!16433) (regTwo!33378 r!7292))) b!6557781))

(assert (= (and b!6556583 ((_ is Union!16433) (regTwo!33378 r!7292))) b!6557782))

(declare-fun b!6557787 () Bool)

(declare-fun e!3970010 () Bool)

(declare-fun tp!1812202 () Bool)

(declare-fun tp!1812203 () Bool)

(assert (=> b!6557787 (= e!3970010 (and tp!1812202 tp!1812203))))

(assert (=> b!6556604 (= tp!1812117 e!3970010)))

(assert (= (and b!6556604 ((_ is Cons!65475) (exprs!6317 (h!71924 zl!343)))) b!6557787))

(declare-fun b!6557792 () Bool)

(declare-fun e!3970013 () Bool)

(declare-fun tp!1812206 () Bool)

(assert (=> b!6557792 (= e!3970013 (and tp_is_empty!42119 tp!1812206))))

(assert (=> b!6556617 (= tp!1812119 e!3970013)))

(assert (= (and b!6556617 ((_ is Cons!65474) (t!379240 s!2326))) b!6557792))

(declare-fun b!6557795 () Bool)

(declare-fun e!3970014 () Bool)

(declare-fun tp!1812207 () Bool)

(assert (=> b!6557795 (= e!3970014 tp!1812207)))

(declare-fun b!6557796 () Bool)

(declare-fun tp!1812210 () Bool)

(declare-fun tp!1812208 () Bool)

(assert (=> b!6557796 (= e!3970014 (and tp!1812210 tp!1812208))))

(declare-fun b!6557793 () Bool)

(assert (=> b!6557793 (= e!3970014 tp_is_empty!42119)))

(assert (=> b!6556622 (= tp!1812114 e!3970014)))

(declare-fun b!6557794 () Bool)

(declare-fun tp!1812211 () Bool)

(declare-fun tp!1812209 () Bool)

(assert (=> b!6557794 (= e!3970014 (and tp!1812211 tp!1812209))))

(assert (= (and b!6556622 ((_ is ElementMatch!16433) (reg!16762 r!7292))) b!6557793))

(assert (= (and b!6556622 ((_ is Concat!25278) (reg!16762 r!7292))) b!6557794))

(assert (= (and b!6556622 ((_ is Star!16433) (reg!16762 r!7292))) b!6557795))

(assert (= (and b!6556622 ((_ is Union!16433) (reg!16762 r!7292))) b!6557796))

(declare-fun b!6557799 () Bool)

(declare-fun e!3970015 () Bool)

(declare-fun tp!1812212 () Bool)

(assert (=> b!6557799 (= e!3970015 tp!1812212)))

(declare-fun b!6557800 () Bool)

(declare-fun tp!1812215 () Bool)

(declare-fun tp!1812213 () Bool)

(assert (=> b!6557800 (= e!3970015 (and tp!1812215 tp!1812213))))

(declare-fun b!6557797 () Bool)

(assert (=> b!6557797 (= e!3970015 tp_is_empty!42119)))

(assert (=> b!6556625 (= tp!1812116 e!3970015)))

(declare-fun b!6557798 () Bool)

(declare-fun tp!1812216 () Bool)

(declare-fun tp!1812214 () Bool)

(assert (=> b!6557798 (= e!3970015 (and tp!1812216 tp!1812214))))

(assert (= (and b!6556625 ((_ is ElementMatch!16433) (regOne!33379 r!7292))) b!6557797))

(assert (= (and b!6556625 ((_ is Concat!25278) (regOne!33379 r!7292))) b!6557798))

(assert (= (and b!6556625 ((_ is Star!16433) (regOne!33379 r!7292))) b!6557799))

(assert (= (and b!6556625 ((_ is Union!16433) (regOne!33379 r!7292))) b!6557800))

(declare-fun b!6557803 () Bool)

(declare-fun e!3970016 () Bool)

(declare-fun tp!1812217 () Bool)

(assert (=> b!6557803 (= e!3970016 tp!1812217)))

(declare-fun b!6557804 () Bool)

(declare-fun tp!1812220 () Bool)

(declare-fun tp!1812218 () Bool)

(assert (=> b!6557804 (= e!3970016 (and tp!1812220 tp!1812218))))

(declare-fun b!6557801 () Bool)

(assert (=> b!6557801 (= e!3970016 tp_is_empty!42119)))

(assert (=> b!6556625 (= tp!1812112 e!3970016)))

(declare-fun b!6557802 () Bool)

(declare-fun tp!1812221 () Bool)

(declare-fun tp!1812219 () Bool)

(assert (=> b!6557802 (= e!3970016 (and tp!1812221 tp!1812219))))

(assert (= (and b!6556625 ((_ is ElementMatch!16433) (regTwo!33379 r!7292))) b!6557801))

(assert (= (and b!6556625 ((_ is Concat!25278) (regTwo!33379 r!7292))) b!6557802))

(assert (= (and b!6556625 ((_ is Star!16433) (regTwo!33379 r!7292))) b!6557803))

(assert (= (and b!6556625 ((_ is Union!16433) (regTwo!33379 r!7292))) b!6557804))

(declare-fun condSetEmpty!44760 () Bool)

(assert (=> setNonEmpty!44754 (= condSetEmpty!44760 (= setRest!44754 ((as const (Array Context!11634 Bool)) false)))))

(declare-fun setRes!44760 () Bool)

(assert (=> setNonEmpty!44754 (= tp!1812118 setRes!44760)))

(declare-fun setIsEmpty!44760 () Bool)

(assert (=> setIsEmpty!44760 setRes!44760))

(declare-fun tp!1812227 () Bool)

(declare-fun setElem!44760 () Context!11634)

(declare-fun e!3970019 () Bool)

(declare-fun setNonEmpty!44760 () Bool)

(assert (=> setNonEmpty!44760 (= setRes!44760 (and tp!1812227 (inv!84329 setElem!44760) e!3970019))))

(declare-fun setRest!44760 () (InoxSet Context!11634))

(assert (=> setNonEmpty!44760 (= setRest!44754 ((_ map or) (store ((as const (Array Context!11634 Bool)) false) setElem!44760 true) setRest!44760))))

(declare-fun b!6557809 () Bool)

(declare-fun tp!1812226 () Bool)

(assert (=> b!6557809 (= e!3970019 tp!1812226)))

(assert (= (and setNonEmpty!44754 condSetEmpty!44760) setIsEmpty!44760))

(assert (= (and setNonEmpty!44754 (not condSetEmpty!44760)) setNonEmpty!44760))

(assert (= setNonEmpty!44760 b!6557809))

(declare-fun m!7339948 () Bool)

(assert (=> setNonEmpty!44760 m!7339948))

(declare-fun b!6557817 () Bool)

(declare-fun e!3970025 () Bool)

(declare-fun tp!1812232 () Bool)

(assert (=> b!6557817 (= e!3970025 tp!1812232)))

(declare-fun e!3970024 () Bool)

(declare-fun tp!1812233 () Bool)

(declare-fun b!6557816 () Bool)

(assert (=> b!6557816 (= e!3970024 (and (inv!84329 (h!71924 (t!379242 zl!343))) e!3970025 tp!1812233))))

(assert (=> b!6556594 (= tp!1812115 e!3970024)))

(assert (= b!6557816 b!6557817))

(assert (= (and b!6556594 ((_ is Cons!65476) (t!379242 zl!343))) b!6557816))

(declare-fun m!7339950 () Bool)

(assert (=> b!6557816 m!7339950))

(declare-fun b!6557818 () Bool)

(declare-fun e!3970026 () Bool)

(declare-fun tp!1812234 () Bool)

(declare-fun tp!1812235 () Bool)

(assert (=> b!6557818 (= e!3970026 (and tp!1812234 tp!1812235))))

(assert (=> b!6556600 (= tp!1812110 e!3970026)))

(assert (= (and b!6556600 ((_ is Cons!65475) (exprs!6317 setElem!44754))) b!6557818))

(declare-fun b_lambda!248111 () Bool)

(assert (= b_lambda!248107 (or b!6556601 b_lambda!248111)))

(declare-fun bs!1673791 () Bool)

(declare-fun d!2057702 () Bool)

(assert (= bs!1673791 (and d!2057702 b!6556601)))

(assert (=> bs!1673791 (= (dynLambda!26038 lambda!364498 lt!2404614) (derivationStepZipperUp!1607 lt!2404614 (h!71922 s!2326)))))

(assert (=> bs!1673791 m!7338682))

(assert (=> d!2057676 d!2057702))

(declare-fun b_lambda!248113 () Bool)

(assert (= b_lambda!248109 (or b!6556611 b_lambda!248113)))

(declare-fun bs!1673792 () Bool)

(declare-fun d!2057704 () Bool)

(assert (= bs!1673792 (and d!2057704 b!6556611)))

(declare-fun lt!2404856 () Unit!159067)

(assert (=> bs!1673792 (= lt!2404856 (lemmaConcatPreservesForall!406 (exprs!6317 lt!2404618) lt!2404588 lambda!364500))))

(assert (=> bs!1673792 (= (dynLambda!26039 lambda!364499 lt!2404618) (Context!11635 (++!14569 (exprs!6317 lt!2404618) lt!2404588)))))

(declare-fun m!7339952 () Bool)

(assert (=> bs!1673792 m!7339952))

(declare-fun m!7339954 () Bool)

(assert (=> bs!1673792 m!7339954))

(assert (=> d!2057696 d!2057704))

(declare-fun b_lambda!248115 () Bool)

(assert (= b_lambda!248091 (or b!6556601 b_lambda!248115)))

(declare-fun bs!1673793 () Bool)

(declare-fun d!2057706 () Bool)

(assert (= bs!1673793 (and d!2057706 b!6556601)))

(assert (=> bs!1673793 (= (dynLambda!26038 lambda!364498 lt!2404618) (derivationStepZipperUp!1607 lt!2404618 (h!71922 s!2326)))))

(assert (=> bs!1673793 m!7338646))

(assert (=> d!2057552 d!2057706))

(declare-fun b_lambda!248117 () Bool)

(assert (= b_lambda!248095 (or b!6556601 b_lambda!248117)))

(declare-fun bs!1673794 () Bool)

(declare-fun d!2057708 () Bool)

(assert (= bs!1673794 (and d!2057708 b!6556601)))

(assert (=> bs!1673794 (= (dynLambda!26038 lambda!364498 (h!71924 zl!343)) (derivationStepZipperUp!1607 (h!71924 zl!343) (h!71922 s!2326)))))

(assert (=> bs!1673794 m!7338696))

(assert (=> d!2057592 d!2057708))

(declare-fun b_lambda!248119 () Bool)

(assert (= b_lambda!248093 (or b!6556601 b_lambda!248119)))

(declare-fun bs!1673795 () Bool)

(declare-fun d!2057710 () Bool)

(assert (= bs!1673795 (and d!2057710 b!6556601)))

(assert (=> bs!1673795 (= (dynLambda!26038 lambda!364498 lt!2404612) (derivationStepZipperUp!1607 lt!2404612 (h!71922 s!2326)))))

(assert (=> bs!1673795 m!7338656))

(assert (=> d!2057570 d!2057710))

(check-sat (not b!6557328) (not b!6556906) (not b!6556794) (not bs!1673795) (not bm!570321) (not b!6557140) (not b_lambda!248113) (not b!6556993) (not b!6557121) (not bs!1673793) (not d!2057598) (not b!6557804) (not b!6557713) (not d!2057684) (not b!6557754) (not bm!570329) (not b!6557264) (not d!2057572) (not d!2057640) (not bm!570360) (not b!6557124) (not b!6556908) (not b!6556686) (not d!2057410) (not d!2057666) (not b!6557795) (not b!6557488) (not b!6557818) (not b!6557117) (not bm!570379) (not d!2057380) (not b!6557757) (not d!2057542) (not b!6557318) (not b!6557119) (not b!6557484) (not d!2057518) (not b!6556920) (not b!6557147) (not d!2057696) (not b!6557126) (not d!2057592) (not b!6556922) (not b!6556789) (not d!2057570) (not bm!570373) (not b_lambda!248117) (not bm!570320) (not d!2057510) (not setNonEmpty!44760) (not b!6556913) (not b!6557796) (not b!6556925) (not d!2057668) (not b!6557373) (not d!2057546) (not b!6557780) (not b!6556687) (not b!6557655) (not bm!570313) (not d!2057484) (not b!6557133) (not bm!570354) (not b!6557468) (not bm!570311) (not d!2057390) (not b!6556856) (not d!2057534) (not b!6557322) (not b!6557689) (not b!6557329) (not b!6557727) (not d!2057350) (not d!2057436) (not d!2057694) (not b!6557168) (not b_lambda!248111) (not d!2057482) (not b!6557759) (not b!6557690) (not d!2057608) (not b!6557308) (not b!6557753) (not d!2057672) (not bm!570319) (not b!6557464) (not b!6557762) (not d!2057628) (not bm!570349) (not b!6556865) (not b!6557280) (not b!6556689) (not bm!570377) (not d!2057602) (not b!6557469) (not d!2057540) (not b!6556909) (not b!6557374) (not b!6557137) (not bm!570359) (not b!6557710) (not bs!1673791) (not d!2057652) (not b_lambda!248119) (not b!6557259) (not d!2057676) (not b!6557138) (not bm!570279) (not d!2057434) (not b!6557261) (not b!6557800) (not b!6557123) (not b!6556924) (not b!6557695) (not b!6557114) (not b!6557132) (not b!6556855) (not b!6556933) (not d!2057516) (not bm!570348) (not d!2057496) (not b!6557440) (not b!6556915) (not d!2057586) (not d!2057426) (not b!6557487) (not bm!570317) (not b!6557306) (not b!6557778) (not d!2057414) (not d!2057422) (not b!6557652) (not d!2057658) (not d!2057616) (not d!2057480) (not b!6557477) (not b!6557486) (not d!2057660) (not b!6556858) (not b!6557167) (not b!6557262) (not b!6557378) (not b!6557760) (not b!6557271) (not bm!570323) (not bm!570283) (not d!2057402) (not b!6557817) (not d!2057688) (not b!6557781) (not d!2057548) (not b!6557170) (not b!6557782) (not b!6557275) (not b!6557250) (not b!6557730) (not b!6557302) (not d!2057488) (not b!6557319) (not b!6556934) (not b!6556911) (not b!6557270) tp_is_empty!42119 (not b!6557483) (not bm!570375) (not b!6557687) (not bm!570372) (not b!6557447) (not d!2057342) (not b!6557042) (not d!2057566) (not b!6557693) (not b!6557809) (not b!6557569) (not d!2057686) (not b!6557043) (not b!6557726) (not d!2057388) (not b!6557379) (not d!2057550) (not b!6556688) (not b!6557321) (not b!6557654) (not b!6557146) (not b!6557135) (not d!2057604) (not bm!570347) (not b!6556951) (not d!2057606) (not b!6557787) (not b!6557116) (not b!6557570) (not b!6557692) (not d!2057538) (not b!6557176) (not b!6557816) (not bm!570328) (not d!2057656) (not bm!570312) (not b!6556927) (not b!6557659) (not b_lambda!248115) (not b!6557798) (not d!2057700) (not bm!570358) (not d!2057698) (not bm!570351) (not b!6557792) (not b!6557177) (not bs!1673792) (not b!6556994) (not d!2057530) (not d!2057692) (not d!2057564) (not b!6557463) (not bm!570378) (not d!2057552) (not d!2057428) (not bm!570376) (not d!2057408) (not d!2057624) (not d!2057512) (not d!2057636) (not b!6557694) (not b!6557255) (not b!6557660) (not b!6557794) (not b!6557728) (not b!6557758) (not b!6557732) (not d!2057670) (not b!6557448) (not bm!570280) (not b!6557118) (not b!6557799) (not b!6557802) (not b!6557729) (not bs!1673794) (not b!6557044) (not d!2057618) (not d!2057486) (not b!6557731) (not b!6557163) (not b!6557330) (not b!6557777) (not b!6557714) (not b!6557489) (not b!6557658) (not b!6557776) (not b!6556914) (not b!6556952) (not b!6557656) (not d!2057664) (not b!6557699) (not d!2057440) (not b!6557704) (not b!6557657) (not d!2057678) (not b!6557803) (not b!6557113) (not b!6556864) (not d!2057490) (not bm!570318) (not bm!570284) (not bm!570355) (not b!6557312) (not b!6556853) (not d!2057682))
(check-sat)
