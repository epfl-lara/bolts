; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!641894 () Bool)

(assert start!641894)

(declare-fun b!6550625 () Bool)

(assert (=> b!6550625 true))

(assert (=> b!6550625 true))

(declare-fun lambda!363841 () Int)

(declare-fun lambda!363840 () Int)

(assert (=> b!6550625 (not (= lambda!363841 lambda!363840))))

(assert (=> b!6550625 true))

(assert (=> b!6550625 true))

(declare-fun b!6550617 () Bool)

(assert (=> b!6550617 true))

(declare-fun b!6550609 () Bool)

(assert (=> b!6550609 true))

(declare-fun bs!1672265 () Bool)

(declare-fun b!6550588 () Bool)

(assert (= bs!1672265 (and b!6550588 b!6550625)))

(declare-datatypes ((C!33120 0))(
  ( (C!33121 (val!26262 Int)) )
))
(declare-datatypes ((Regex!16425 0))(
  ( (ElementMatch!16425 (c!1203224 C!33120)) (Concat!25270 (regOne!33362 Regex!16425) (regTwo!33362 Regex!16425)) (EmptyExpr!16425) (Star!16425 (reg!16754 Regex!16425)) (EmptyLang!16425) (Union!16425 (regOne!33363 Regex!16425) (regTwo!33363 Regex!16425)) )
))
(declare-fun r!7292 () Regex!16425)

(declare-fun lt!2402353 () Regex!16425)

(declare-fun lambda!363845 () Int)

(assert (=> bs!1672265 (= (= lt!2402353 (regOne!33362 r!7292)) (= lambda!363845 lambda!363840))))

(assert (=> bs!1672265 (not (= lambda!363845 lambda!363841))))

(assert (=> b!6550588 true))

(assert (=> b!6550588 true))

(assert (=> b!6550588 true))

(declare-fun b!6550585 () Bool)

(declare-fun e!3966029 () Bool)

(declare-fun e!3966042 () Bool)

(assert (=> b!6550585 (= e!3966029 e!3966042)))

(declare-fun res!2687453 () Bool)

(assert (=> b!6550585 (=> res!2687453 e!3966042)))

(declare-fun e!3966030 () Bool)

(assert (=> b!6550585 (= res!2687453 e!3966030)))

(declare-fun res!2687469 () Bool)

(assert (=> b!6550585 (=> (not res!2687469) (not e!3966030))))

(declare-fun lt!2402328 () Bool)

(assert (=> b!6550585 (= res!2687469 (not lt!2402328))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65574 0))(
  ( (Nil!65450) (Cons!65450 (h!71898 Regex!16425) (t!379216 List!65574)) )
))
(declare-datatypes ((Context!11618 0))(
  ( (Context!11619 (exprs!6309 List!65574)) )
))
(declare-fun lt!2402371 () (InoxSet Context!11618))

(declare-datatypes ((List!65575 0))(
  ( (Nil!65451) (Cons!65451 (h!71899 C!33120) (t!379217 List!65575)) )
))
(declare-fun s!2326 () List!65575)

(declare-fun matchZipper!2437 ((InoxSet Context!11618) List!65575) Bool)

(assert (=> b!6550585 (= lt!2402328 (matchZipper!2437 lt!2402371 (t!379217 s!2326)))))

(declare-fun b!6550586 () Bool)

(declare-fun res!2687468 () Bool)

(assert (=> b!6550586 (=> res!2687468 e!3966029)))

(declare-fun z!1189 () (InoxSet Context!11618))

(assert (=> b!6550586 (= res!2687468 (not (matchZipper!2437 z!1189 s!2326)))))

(declare-fun b!6550587 () Bool)

(declare-fun res!2687444 () Bool)

(declare-fun e!3966026 () Bool)

(assert (=> b!6550587 (=> (not res!2687444) (not e!3966026))))

(declare-datatypes ((List!65576 0))(
  ( (Nil!65452) (Cons!65452 (h!71900 Context!11618) (t!379218 List!65576)) )
))
(declare-fun zl!343 () List!65576)

(declare-fun toList!10209 ((InoxSet Context!11618)) List!65576)

(assert (=> b!6550587 (= res!2687444 (= (toList!10209 z!1189) zl!343))))

(declare-fun e!3966040 () Bool)

(declare-fun e!3966034 () Bool)

(assert (=> b!6550588 (= e!3966040 e!3966034)))

(declare-fun res!2687439 () Bool)

(assert (=> b!6550588 (=> res!2687439 e!3966034)))

(declare-fun validRegex!8161 (Regex!16425) Bool)

(assert (=> b!6550588 (= res!2687439 (not (validRegex!8161 lt!2402353)))))

(declare-datatypes ((tuple2!66808 0))(
  ( (tuple2!66809 (_1!36707 List!65575) (_2!36707 List!65575)) )
))
(declare-datatypes ((Option!16316 0))(
  ( (None!16315) (Some!16315 (v!52500 tuple2!66808)) )
))
(declare-fun isDefined!13019 (Option!16316) Bool)

(declare-fun findConcatSeparation!2730 (Regex!16425 Regex!16425 List!65575 List!65575 List!65575) Option!16316)

(declare-fun Exists!3495 (Int) Bool)

(assert (=> b!6550588 (= (isDefined!13019 (findConcatSeparation!2730 lt!2402353 (regTwo!33362 r!7292) Nil!65451 s!2326 s!2326)) (Exists!3495 lambda!363845))))

(declare-datatypes ((Unit!159035 0))(
  ( (Unit!159036) )
))
(declare-fun lt!2402363 () Unit!159035)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2494 (Regex!16425 Regex!16425 List!65575) Unit!159035)

(assert (=> b!6550588 (= lt!2402363 (lemmaFindConcatSeparationEquivalentToExists!2494 lt!2402353 (regTwo!33362 r!7292) s!2326))))

(declare-fun lt!2402360 () Regex!16425)

(declare-fun matchRSpec!3526 (Regex!16425 List!65575) Bool)

(assert (=> b!6550588 (matchRSpec!3526 lt!2402360 s!2326)))

(declare-fun lt!2402332 () Unit!159035)

(declare-fun mainMatchTheorem!3526 (Regex!16425 List!65575) Unit!159035)

(assert (=> b!6550588 (= lt!2402332 (mainMatchTheorem!3526 lt!2402360 s!2326))))

(declare-fun matchR!8608 (Regex!16425 List!65575) Bool)

(assert (=> b!6550588 (matchR!8608 lt!2402360 s!2326)))

(assert (=> b!6550588 (= lt!2402360 (Concat!25270 lt!2402353 (regTwo!33362 r!7292)))))

(declare-fun lt!2402375 () Regex!16425)

(assert (=> b!6550588 (= lt!2402353 (Concat!25270 (reg!16754 (regOne!33362 r!7292)) lt!2402375))))

(declare-fun lt!2402352 () Unit!159035)

(declare-fun lemmaConcatAssociative!122 (Regex!16425 Regex!16425 Regex!16425 List!65575) Unit!159035)

(assert (=> b!6550588 (= lt!2402352 (lemmaConcatAssociative!122 (reg!16754 (regOne!33362 r!7292)) lt!2402375 (regTwo!33362 r!7292) s!2326))))

(declare-fun e!3966035 () Bool)

(assert (=> b!6550588 e!3966035))

(declare-fun res!2687446 () Bool)

(assert (=> b!6550588 (=> (not res!2687446) (not e!3966035))))

(declare-fun lt!2402338 () Regex!16425)

(declare-fun lt!2402331 () List!65575)

(assert (=> b!6550588 (= res!2687446 (matchR!8608 lt!2402338 lt!2402331))))

(declare-fun lt!2402333 () tuple2!66808)

(declare-fun lt!2402339 () Unit!159035)

(declare-fun lt!2402336 () Regex!16425)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!346 (Regex!16425 Regex!16425 List!65575 List!65575) Unit!159035)

(assert (=> b!6550588 (= lt!2402339 (lemmaTwoRegexMatchThenConcatMatchesConcatString!346 (reg!16754 (regOne!33362 r!7292)) lt!2402336 (_1!36707 lt!2402333) (_2!36707 lt!2402333)))))

(assert (=> b!6550588 (matchR!8608 lt!2402336 (_2!36707 lt!2402333))))

(declare-fun lt!2402377 () Unit!159035)

(declare-fun lt!2402364 () List!65576)

(declare-fun lt!2402373 () (InoxSet Context!11618))

(declare-fun theoremZipperRegexEquiv!861 ((InoxSet Context!11618) List!65576 Regex!16425 List!65575) Unit!159035)

(assert (=> b!6550588 (= lt!2402377 (theoremZipperRegexEquiv!861 lt!2402373 lt!2402364 lt!2402336 (_2!36707 lt!2402333)))))

(assert (=> b!6550588 (matchR!8608 (reg!16754 (regOne!33362 r!7292)) (_1!36707 lt!2402333))))

(declare-fun lt!2402329 () Unit!159035)

(declare-fun lt!2402341 () List!65576)

(declare-fun lt!2402368 () (InoxSet Context!11618))

(assert (=> b!6550588 (= lt!2402329 (theoremZipperRegexEquiv!861 lt!2402368 lt!2402341 (reg!16754 (regOne!33362 r!7292)) (_1!36707 lt!2402333)))))

(declare-fun lt!2402350 () List!65574)

(declare-fun lt!2402340 () List!65574)

(declare-fun ++!14552 (List!65574 List!65574) List!65574)

(assert (=> b!6550588 (matchZipper!2437 (store ((as const (Array Context!11618 Bool)) false) (Context!11619 (++!14552 lt!2402350 lt!2402340)) true) lt!2402331)))

(declare-fun lambda!363844 () Int)

(declare-fun lt!2402370 () Unit!159035)

(declare-fun lemmaConcatPreservesForall!398 (List!65574 List!65574 Int) Unit!159035)

(assert (=> b!6550588 (= lt!2402370 (lemmaConcatPreservesForall!398 lt!2402350 lt!2402340 lambda!363844))))

(declare-fun lt!2402366 () Context!11618)

(declare-fun lt!2402367 () Context!11618)

(declare-fun lt!2402337 () Unit!159035)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!206 (Context!11618 Context!11618 List!65575 List!65575) Unit!159035)

(assert (=> b!6550588 (= lt!2402337 (lemmaConcatenateContextMatchesConcatOfStrings!206 lt!2402367 lt!2402366 (_1!36707 lt!2402333) (_2!36707 lt!2402333)))))

(declare-fun b!6550589 () Bool)

(assert (=> b!6550589 (= e!3966034 (validRegex!8161 (regTwo!33362 r!7292)))))

(declare-fun b!6550590 () Bool)

(declare-fun res!2687447 () Bool)

(declare-fun e!3966039 () Bool)

(assert (=> b!6550590 (=> res!2687447 e!3966039)))

(declare-fun lt!2402354 () Regex!16425)

(assert (=> b!6550590 (= res!2687447 (not (= lt!2402354 r!7292)))))

(declare-fun b!6550591 () Bool)

(declare-fun e!3966028 () Bool)

(declare-fun tp!1811413 () Bool)

(assert (=> b!6550591 (= e!3966028 tp!1811413)))

(declare-fun b!6550592 () Bool)

(declare-fun e!3966031 () Bool)

(declare-fun tp!1811406 () Bool)

(declare-fun tp!1811408 () Bool)

(assert (=> b!6550592 (= e!3966031 (and tp!1811406 tp!1811408))))

(declare-fun setNonEmpty!44706 () Bool)

(declare-fun setRes!44706 () Bool)

(declare-fun setElem!44706 () Context!11618)

(declare-fun e!3966043 () Bool)

(declare-fun tp!1811415 () Bool)

(declare-fun inv!84309 (Context!11618) Bool)

(assert (=> setNonEmpty!44706 (= setRes!44706 (and tp!1811415 (inv!84309 setElem!44706) e!3966043))))

(declare-fun setRest!44706 () (InoxSet Context!11618))

(assert (=> setNonEmpty!44706 (= z!1189 ((_ map or) (store ((as const (Array Context!11618 Bool)) false) setElem!44706 true) setRest!44706))))

(declare-fun b!6550593 () Bool)

(declare-fun res!2687458 () Bool)

(declare-fun e!3966044 () Bool)

(assert (=> b!6550593 (=> res!2687458 e!3966044)))

(declare-fun isEmpty!37677 (List!65576) Bool)

(assert (=> b!6550593 (= res!2687458 (not (isEmpty!37677 (t!379218 zl!343))))))

(declare-fun b!6550594 () Bool)

(declare-fun res!2687443 () Bool)

(assert (=> b!6550594 (=> res!2687443 e!3966042)))

(declare-fun lt!2402378 () Bool)

(assert (=> b!6550594 (= res!2687443 (or (not lt!2402328) (not lt!2402378)))))

(declare-fun b!6550595 () Bool)

(declare-fun e!3966037 () Bool)

(assert (=> b!6550595 (= e!3966037 e!3966040)))

(declare-fun res!2687437 () Bool)

(assert (=> b!6550595 (=> res!2687437 e!3966040)))

(assert (=> b!6550595 (= res!2687437 (not (= s!2326 lt!2402331)))))

(declare-fun ++!14553 (List!65575 List!65575) List!65575)

(assert (=> b!6550595 (= lt!2402331 (++!14553 (_1!36707 lt!2402333) (_2!36707 lt!2402333)))))

(declare-fun lt!2402348 () Option!16316)

(declare-fun get!22719 (Option!16316) tuple2!66808)

(assert (=> b!6550595 (= lt!2402333 (get!22719 lt!2402348))))

(assert (=> b!6550595 (isDefined!13019 lt!2402348)))

(declare-fun findConcatSeparationZippers!190 ((InoxSet Context!11618) (InoxSet Context!11618) List!65575 List!65575 List!65575) Option!16316)

(assert (=> b!6550595 (= lt!2402348 (findConcatSeparationZippers!190 lt!2402368 lt!2402373 Nil!65451 s!2326 s!2326))))

(declare-fun lt!2402379 () Unit!159035)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!190 ((InoxSet Context!11618) Context!11618 List!65575) Unit!159035)

(assert (=> b!6550595 (= lt!2402379 (lemmaConcatZipperMatchesStringThenFindConcatDefined!190 lt!2402368 lt!2402366 s!2326))))

(declare-fun b!6550596 () Bool)

(declare-fun tp!1811411 () Bool)

(assert (=> b!6550596 (= e!3966031 tp!1811411)))

(declare-fun b!6550597 () Bool)

(declare-fun tp!1811409 () Bool)

(assert (=> b!6550597 (= e!3966043 tp!1811409)))

(declare-fun b!6550598 () Bool)

(declare-fun res!2687459 () Bool)

(assert (=> b!6550598 (=> res!2687459 e!3966044)))

(get-info :version)

(assert (=> b!6550598 (= res!2687459 (not ((_ is Cons!65450) (exprs!6309 (h!71900 zl!343)))))))

(declare-fun b!6550599 () Bool)

(declare-fun e!3966022 () Bool)

(declare-fun tp!1811414 () Bool)

(assert (=> b!6550599 (= e!3966022 (and (inv!84309 (h!71900 zl!343)) e!3966028 tp!1811414))))

(declare-fun b!6550600 () Bool)

(declare-fun res!2687451 () Bool)

(assert (=> b!6550600 (=> res!2687451 e!3966044)))

(assert (=> b!6550600 (= res!2687451 (or ((_ is EmptyExpr!16425) r!7292) ((_ is EmptyLang!16425) r!7292) ((_ is ElementMatch!16425) r!7292) ((_ is Union!16425) r!7292) (not ((_ is Concat!25270) r!7292))))))

(declare-fun b!6550601 () Bool)

(declare-fun e!3966032 () Bool)

(assert (=> b!6550601 (= e!3966026 e!3966032)))

(declare-fun res!2687462 () Bool)

(assert (=> b!6550601 (=> (not res!2687462) (not e!3966032))))

(assert (=> b!6550601 (= res!2687462 (= r!7292 lt!2402354))))

(declare-fun unfocusZipper!2167 (List!65576) Regex!16425)

(assert (=> b!6550601 (= lt!2402354 (unfocusZipper!2167 zl!343))))

(declare-fun res!2687441 () Bool)

(assert (=> start!641894 (=> (not res!2687441) (not e!3966026))))

(assert (=> start!641894 (= res!2687441 (validRegex!8161 r!7292))))

(assert (=> start!641894 e!3966026))

(assert (=> start!641894 e!3966031))

(declare-fun condSetEmpty!44706 () Bool)

(assert (=> start!641894 (= condSetEmpty!44706 (= z!1189 ((as const (Array Context!11618 Bool)) false)))))

(assert (=> start!641894 setRes!44706))

(assert (=> start!641894 e!3966022))

(declare-fun e!3966046 () Bool)

(assert (=> start!641894 e!3966046))

(declare-fun b!6550602 () Bool)

(declare-fun res!2687438 () Bool)

(assert (=> b!6550602 (=> res!2687438 e!3966044)))

(declare-fun generalisedConcat!2022 (List!65574) Regex!16425)

(assert (=> b!6550602 (= res!2687438 (not (= r!7292 (generalisedConcat!2022 (exprs!6309 (h!71900 zl!343))))))))

(declare-fun b!6550603 () Bool)

(declare-fun res!2687470 () Bool)

(assert (=> b!6550603 (=> res!2687470 e!3966029)))

(declare-fun lt!2402351 () Bool)

(assert (=> b!6550603 (= res!2687470 (not lt!2402351))))

(declare-fun b!6550604 () Bool)

(declare-fun e!3966025 () Bool)

(declare-fun lt!2402343 () (InoxSet Context!11618))

(assert (=> b!6550604 (= e!3966025 (matchZipper!2437 lt!2402343 (t!379217 s!2326)))))

(declare-fun b!6550605 () Bool)

(declare-fun tp_is_empty!42103 () Bool)

(assert (=> b!6550605 (= e!3966031 tp_is_empty!42103)))

(declare-fun b!6550606 () Bool)

(declare-fun res!2687449 () Bool)

(declare-fun e!3966045 () Bool)

(assert (=> b!6550606 (=> res!2687449 e!3966045)))

(declare-fun isEmpty!37678 (List!65574) Bool)

(assert (=> b!6550606 (= res!2687449 (isEmpty!37678 (t!379216 (exprs!6309 (h!71900 zl!343)))))))

(declare-fun b!6550607 () Bool)

(declare-fun tp!1811410 () Bool)

(assert (=> b!6550607 (= e!3966046 (and tp_is_empty!42103 tp!1811410))))

(declare-fun b!6550608 () Bool)

(declare-fun e!3966033 () Bool)

(declare-fun e!3966027 () Bool)

(assert (=> b!6550608 (= e!3966033 e!3966027)))

(declare-fun res!2687460 () Bool)

(assert (=> b!6550608 (=> res!2687460 e!3966027)))

(declare-fun lt!2402359 () Context!11618)

(assert (=> b!6550608 (= res!2687460 (not (= (unfocusZipper!2167 (Cons!65452 lt!2402359 Nil!65452)) lt!2402338)))))

(assert (=> b!6550608 (= lt!2402338 (Concat!25270 (reg!16754 (regOne!33362 r!7292)) lt!2402336))))

(assert (=> b!6550609 (= e!3966042 e!3966037)))

(declare-fun res!2687457 () Bool)

(assert (=> b!6550609 (=> res!2687457 e!3966037)))

(declare-fun lt!2402355 () (InoxSet Context!11618))

(declare-fun appendTo!186 ((InoxSet Context!11618) Context!11618) (InoxSet Context!11618))

(assert (=> b!6550609 (= res!2687457 (not (= (appendTo!186 lt!2402368 lt!2402366) lt!2402355)))))

(declare-fun lambda!363843 () Int)

(declare-fun map!14946 ((InoxSet Context!11618) Int) (InoxSet Context!11618))

(assert (=> b!6550609 (= (map!14946 lt!2402368 lambda!363843) (store ((as const (Array Context!11618 Bool)) false) (Context!11619 (++!14552 lt!2402350 lt!2402340)) true))))

(declare-fun lt!2402334 () Unit!159035)

(assert (=> b!6550609 (= lt!2402334 (lemmaConcatPreservesForall!398 lt!2402350 lt!2402340 lambda!363844))))

(declare-fun lt!2402346 () Unit!159035)

(declare-fun lemmaMapOnSingletonSet!208 ((InoxSet Context!11618) Context!11618 Int) Unit!159035)

(assert (=> b!6550609 (= lt!2402346 (lemmaMapOnSingletonSet!208 lt!2402368 lt!2402367 lambda!363843))))

(declare-fun b!6550610 () Bool)

(declare-fun e!3966021 () Bool)

(declare-fun nullable!6418 (Regex!16425) Bool)

(assert (=> b!6550610 (= e!3966021 (nullable!6418 (regOne!33362 (regOne!33362 r!7292))))))

(declare-fun b!6550611 () Bool)

(declare-fun e!3966036 () Bool)

(declare-fun e!3966023 () Bool)

(assert (=> b!6550611 (= e!3966036 e!3966023)))

(declare-fun res!2687436 () Bool)

(assert (=> b!6550611 (=> res!2687436 e!3966023)))

(declare-fun lt!2402376 () (InoxSet Context!11618))

(assert (=> b!6550611 (= res!2687436 (not (= lt!2402371 lt!2402376)))))

(declare-fun derivationStepZipperDown!1673 (Regex!16425 Context!11618 C!33120) (InoxSet Context!11618))

(assert (=> b!6550611 (= lt!2402376 (derivationStepZipperDown!1673 (reg!16754 (regOne!33362 r!7292)) lt!2402366 (h!71899 s!2326)))))

(assert (=> b!6550611 (= lt!2402366 (Context!11619 lt!2402340))))

(assert (=> b!6550611 (= lt!2402340 (Cons!65450 lt!2402375 (t!379216 (exprs!6309 (h!71900 zl!343)))))))

(assert (=> b!6550611 (= lt!2402375 (Star!16425 (reg!16754 (regOne!33362 r!7292))))))

(declare-fun b!6550612 () Bool)

(assert (=> b!6550612 (= e!3966039 e!3966033)))

(declare-fun res!2687463 () Bool)

(assert (=> b!6550612 (=> res!2687463 e!3966033)))

(assert (=> b!6550612 (= res!2687463 (not (= r!7292 lt!2402336)))))

(assert (=> b!6550612 (= lt!2402336 (Concat!25270 lt!2402375 (regTwo!33362 r!7292)))))

(declare-fun b!6550613 () Bool)

(assert (=> b!6550613 (= e!3966032 (not e!3966044))))

(declare-fun res!2687455 () Bool)

(assert (=> b!6550613 (=> res!2687455 e!3966044)))

(assert (=> b!6550613 (= res!2687455 (not ((_ is Cons!65452) zl!343)))))

(declare-fun lt!2402342 () Bool)

(assert (=> b!6550613 (= lt!2402342 (matchRSpec!3526 r!7292 s!2326))))

(assert (=> b!6550613 (= lt!2402342 (matchR!8608 r!7292 s!2326))))

(declare-fun lt!2402380 () Unit!159035)

(assert (=> b!6550613 (= lt!2402380 (mainMatchTheorem!3526 r!7292 s!2326))))

(declare-fun b!6550614 () Bool)

(declare-fun e!3966020 () Bool)

(declare-fun e!3966038 () Bool)

(assert (=> b!6550614 (= e!3966020 e!3966038)))

(declare-fun res!2687452 () Bool)

(assert (=> b!6550614 (=> res!2687452 e!3966038)))

(assert (=> b!6550614 (= res!2687452 (not (= (unfocusZipper!2167 lt!2402364) lt!2402336)))))

(assert (=> b!6550614 (= lt!2402364 (Cons!65452 lt!2402366 Nil!65452))))

(declare-fun b!6550615 () Bool)

(assert (=> b!6550615 (= e!3966027 e!3966020)))

(declare-fun res!2687442 () Bool)

(assert (=> b!6550615 (=> res!2687442 e!3966020)))

(assert (=> b!6550615 (= res!2687442 (not (= (unfocusZipper!2167 lt!2402341) (reg!16754 (regOne!33362 r!7292)))))))

(assert (=> b!6550615 (= lt!2402341 (Cons!65452 lt!2402367 Nil!65452))))

(declare-fun lambda!363842 () Int)

(declare-fun flatMap!1930 ((InoxSet Context!11618) Int) (InoxSet Context!11618))

(declare-fun derivationStepZipperUp!1599 (Context!11618 C!33120) (InoxSet Context!11618))

(assert (=> b!6550615 (= (flatMap!1930 lt!2402373 lambda!363842) (derivationStepZipperUp!1599 lt!2402366 (h!71899 s!2326)))))

(declare-fun lt!2402345 () Unit!159035)

(declare-fun lemmaFlatMapOnSingletonSet!1456 ((InoxSet Context!11618) Context!11618 Int) Unit!159035)

(assert (=> b!6550615 (= lt!2402345 (lemmaFlatMapOnSingletonSet!1456 lt!2402373 lt!2402366 lambda!363842))))

(assert (=> b!6550615 (= (flatMap!1930 lt!2402368 lambda!363842) (derivationStepZipperUp!1599 lt!2402367 (h!71899 s!2326)))))

(declare-fun lt!2402330 () Unit!159035)

(assert (=> b!6550615 (= lt!2402330 (lemmaFlatMapOnSingletonSet!1456 lt!2402368 lt!2402367 lambda!363842))))

(declare-fun lt!2402335 () (InoxSet Context!11618))

(assert (=> b!6550615 (= lt!2402335 (derivationStepZipperUp!1599 lt!2402366 (h!71899 s!2326)))))

(declare-fun lt!2402356 () (InoxSet Context!11618))

(assert (=> b!6550615 (= lt!2402356 (derivationStepZipperUp!1599 lt!2402367 (h!71899 s!2326)))))

(assert (=> b!6550615 (= lt!2402373 (store ((as const (Array Context!11618 Bool)) false) lt!2402366 true))))

(assert (=> b!6550615 (= lt!2402368 (store ((as const (Array Context!11618 Bool)) false) lt!2402367 true))))

(assert (=> b!6550615 (= lt!2402367 (Context!11619 lt!2402350))))

(assert (=> b!6550615 (= lt!2402350 (Cons!65450 (reg!16754 (regOne!33362 r!7292)) Nil!65450))))

(declare-fun b!6550616 () Bool)

(declare-fun tp!1811412 () Bool)

(declare-fun tp!1811407 () Bool)

(assert (=> b!6550616 (= e!3966031 (and tp!1811412 tp!1811407))))

(assert (=> b!6550617 (= e!3966045 e!3966036)))

(declare-fun res!2687464 () Bool)

(assert (=> b!6550617 (=> res!2687464 e!3966036)))

(assert (=> b!6550617 (= res!2687464 (or (and ((_ is ElementMatch!16425) (regOne!33362 r!7292)) (= (c!1203224 (regOne!33362 r!7292)) (h!71899 s!2326))) ((_ is Union!16425) (regOne!33362 r!7292))))))

(declare-fun lt!2402372 () Unit!159035)

(declare-fun e!3966041 () Unit!159035)

(assert (=> b!6550617 (= lt!2402372 e!3966041)))

(declare-fun c!1203223 () Bool)

(assert (=> b!6550617 (= c!1203223 lt!2402351)))

(assert (=> b!6550617 (= lt!2402351 (nullable!6418 (h!71898 (exprs!6309 (h!71900 zl!343)))))))

(assert (=> b!6550617 (= (flatMap!1930 z!1189 lambda!363842) (derivationStepZipperUp!1599 (h!71900 zl!343) (h!71899 s!2326)))))

(declare-fun lt!2402362 () Unit!159035)

(assert (=> b!6550617 (= lt!2402362 (lemmaFlatMapOnSingletonSet!1456 z!1189 (h!71900 zl!343) lambda!363842))))

(declare-fun lt!2402357 () Context!11618)

(assert (=> b!6550617 (= lt!2402343 (derivationStepZipperUp!1599 lt!2402357 (h!71899 s!2326)))))

(assert (=> b!6550617 (= lt!2402371 (derivationStepZipperDown!1673 (h!71898 (exprs!6309 (h!71900 zl!343))) lt!2402357 (h!71899 s!2326)))))

(assert (=> b!6550617 (= lt!2402357 (Context!11619 (t!379216 (exprs!6309 (h!71900 zl!343)))))))

(declare-fun lt!2402365 () (InoxSet Context!11618))

(assert (=> b!6550617 (= lt!2402365 (derivationStepZipperUp!1599 (Context!11619 (Cons!65450 (h!71898 (exprs!6309 (h!71900 zl!343))) (t!379216 (exprs!6309 (h!71900 zl!343))))) (h!71899 s!2326)))))

(declare-fun b!6550618 () Bool)

(declare-fun Unit!159037 () Unit!159035)

(assert (=> b!6550618 (= e!3966041 Unit!159037)))

(declare-fun lt!2402327 () Unit!159035)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1256 ((InoxSet Context!11618) (InoxSet Context!11618) List!65575) Unit!159035)

(assert (=> b!6550618 (= lt!2402327 (lemmaZipperConcatMatchesSameAsBothZippers!1256 lt!2402371 lt!2402343 (t!379217 s!2326)))))

(declare-fun res!2687466 () Bool)

(assert (=> b!6550618 (= res!2687466 (matchZipper!2437 lt!2402371 (t!379217 s!2326)))))

(assert (=> b!6550618 (=> res!2687466 e!3966025)))

(assert (=> b!6550618 (= (matchZipper!2437 ((_ map or) lt!2402371 lt!2402343) (t!379217 s!2326)) e!3966025)))

(declare-fun b!6550619 () Bool)

(declare-fun Unit!159038 () Unit!159035)

(assert (=> b!6550619 (= e!3966041 Unit!159038)))

(declare-fun b!6550620 () Bool)

(declare-fun e!3966024 () Bool)

(assert (=> b!6550620 (= e!3966024 e!3966039)))

(declare-fun res!2687440 () Bool)

(assert (=> b!6550620 (=> res!2687440 e!3966039)))

(declare-fun lt!2402347 () (InoxSet Context!11618))

(assert (=> b!6550620 (= res!2687440 (not (= lt!2402378 (matchZipper!2437 lt!2402347 (t!379217 s!2326)))))))

(assert (=> b!6550620 (= lt!2402378 (matchZipper!2437 lt!2402355 s!2326))))

(declare-fun b!6550621 () Bool)

(assert (=> b!6550621 (= e!3966023 e!3966024)))

(declare-fun res!2687454 () Bool)

(assert (=> b!6550621 (=> res!2687454 e!3966024)))

(assert (=> b!6550621 (= res!2687454 (not (= lt!2402347 lt!2402376)))))

(assert (=> b!6550621 (= (flatMap!1930 lt!2402355 lambda!363842) (derivationStepZipperUp!1599 lt!2402359 (h!71899 s!2326)))))

(declare-fun lt!2402344 () Unit!159035)

(assert (=> b!6550621 (= lt!2402344 (lemmaFlatMapOnSingletonSet!1456 lt!2402355 lt!2402359 lambda!363842))))

(declare-fun lt!2402369 () (InoxSet Context!11618))

(assert (=> b!6550621 (= lt!2402369 (derivationStepZipperUp!1599 lt!2402359 (h!71899 s!2326)))))

(declare-fun derivationStepZipper!2391 ((InoxSet Context!11618) C!33120) (InoxSet Context!11618))

(assert (=> b!6550621 (= lt!2402347 (derivationStepZipper!2391 lt!2402355 (h!71899 s!2326)))))

(assert (=> b!6550621 (= lt!2402355 (store ((as const (Array Context!11618 Bool)) false) lt!2402359 true))))

(assert (=> b!6550621 (= lt!2402359 (Context!11619 (Cons!65450 (reg!16754 (regOne!33362 r!7292)) lt!2402340)))))

(declare-fun setIsEmpty!44706 () Bool)

(assert (=> setIsEmpty!44706 setRes!44706))

(declare-fun b!6550622 () Bool)

(declare-fun res!2687456 () Bool)

(assert (=> b!6550622 (=> res!2687456 e!3966040)))

(assert (=> b!6550622 (= res!2687456 (not (matchZipper!2437 lt!2402368 (_1!36707 lt!2402333))))))

(declare-fun b!6550623 () Bool)

(declare-fun lt!2402349 () Bool)

(assert (=> b!6550623 (= e!3966035 lt!2402349)))

(declare-fun b!6550624 () Bool)

(declare-fun res!2687445 () Bool)

(assert (=> b!6550624 (=> res!2687445 e!3966036)))

(assert (=> b!6550624 (= res!2687445 e!3966021)))

(declare-fun res!2687435 () Bool)

(assert (=> b!6550624 (=> (not res!2687435) (not e!3966021))))

(assert (=> b!6550624 (= res!2687435 ((_ is Concat!25270) (regOne!33362 r!7292)))))

(assert (=> b!6550625 (= e!3966044 e!3966045)))

(declare-fun res!2687450 () Bool)

(assert (=> b!6550625 (=> res!2687450 e!3966045)))

(declare-fun lt!2402374 () Bool)

(assert (=> b!6550625 (= res!2687450 (or (not (= lt!2402342 lt!2402374)) ((_ is Nil!65451) s!2326)))))

(assert (=> b!6550625 (= (Exists!3495 lambda!363840) (Exists!3495 lambda!363841))))

(declare-fun lt!2402326 () Unit!159035)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2032 (Regex!16425 Regex!16425 List!65575) Unit!159035)

(assert (=> b!6550625 (= lt!2402326 (lemmaExistCutMatchRandMatchRSpecEquivalent!2032 (regOne!33362 r!7292) (regTwo!33362 r!7292) s!2326))))

(assert (=> b!6550625 (= lt!2402374 (Exists!3495 lambda!363840))))

(assert (=> b!6550625 (= lt!2402374 (isDefined!13019 (findConcatSeparation!2730 (regOne!33362 r!7292) (regTwo!33362 r!7292) Nil!65451 s!2326 s!2326)))))

(declare-fun lt!2402358 () Unit!159035)

(assert (=> b!6550625 (= lt!2402358 (lemmaFindConcatSeparationEquivalentToExists!2494 (regOne!33362 r!7292) (regTwo!33362 r!7292) s!2326))))

(declare-fun b!6550626 () Bool)

(declare-fun res!2687465 () Bool)

(assert (=> b!6550626 (=> res!2687465 e!3966040)))

(assert (=> b!6550626 (= res!2687465 (not (matchZipper!2437 lt!2402373 (_2!36707 lt!2402333))))))

(declare-fun b!6550627 () Bool)

(assert (=> b!6550627 (= e!3966030 (not (matchZipper!2437 lt!2402343 (t!379217 s!2326))))))

(declare-fun b!6550628 () Bool)

(assert (=> b!6550628 (= e!3966038 e!3966029)))

(declare-fun res!2687448 () Bool)

(assert (=> b!6550628 (=> res!2687448 e!3966029)))

(assert (=> b!6550628 (= res!2687448 lt!2402342)))

(assert (=> b!6550628 (= lt!2402349 (matchRSpec!3526 lt!2402338 s!2326))))

(assert (=> b!6550628 (= lt!2402349 (matchR!8608 lt!2402338 s!2326))))

(declare-fun lt!2402361 () Unit!159035)

(assert (=> b!6550628 (= lt!2402361 (mainMatchTheorem!3526 lt!2402338 s!2326))))

(declare-fun b!6550629 () Bool)

(declare-fun res!2687467 () Bool)

(assert (=> b!6550629 (=> res!2687467 e!3966036)))

(assert (=> b!6550629 (= res!2687467 (or ((_ is Concat!25270) (regOne!33362 r!7292)) (not ((_ is Star!16425) (regOne!33362 r!7292)))))))

(declare-fun b!6550630 () Bool)

(declare-fun res!2687461 () Bool)

(assert (=> b!6550630 (=> res!2687461 e!3966044)))

(declare-fun generalisedUnion!2269 (List!65574) Regex!16425)

(declare-fun unfocusZipperList!1846 (List!65576) List!65574)

(assert (=> b!6550630 (= res!2687461 (not (= r!7292 (generalisedUnion!2269 (unfocusZipperList!1846 zl!343)))))))

(assert (= (and start!641894 res!2687441) b!6550587))

(assert (= (and b!6550587 res!2687444) b!6550601))

(assert (= (and b!6550601 res!2687462) b!6550613))

(assert (= (and b!6550613 (not res!2687455)) b!6550593))

(assert (= (and b!6550593 (not res!2687458)) b!6550602))

(assert (= (and b!6550602 (not res!2687438)) b!6550598))

(assert (= (and b!6550598 (not res!2687459)) b!6550630))

(assert (= (and b!6550630 (not res!2687461)) b!6550600))

(assert (= (and b!6550600 (not res!2687451)) b!6550625))

(assert (= (and b!6550625 (not res!2687450)) b!6550606))

(assert (= (and b!6550606 (not res!2687449)) b!6550617))

(assert (= (and b!6550617 c!1203223) b!6550618))

(assert (= (and b!6550617 (not c!1203223)) b!6550619))

(assert (= (and b!6550618 (not res!2687466)) b!6550604))

(assert (= (and b!6550617 (not res!2687464)) b!6550624))

(assert (= (and b!6550624 res!2687435) b!6550610))

(assert (= (and b!6550624 (not res!2687445)) b!6550629))

(assert (= (and b!6550629 (not res!2687467)) b!6550611))

(assert (= (and b!6550611 (not res!2687436)) b!6550621))

(assert (= (and b!6550621 (not res!2687454)) b!6550620))

(assert (= (and b!6550620 (not res!2687440)) b!6550590))

(assert (= (and b!6550590 (not res!2687447)) b!6550612))

(assert (= (and b!6550612 (not res!2687463)) b!6550608))

(assert (= (and b!6550608 (not res!2687460)) b!6550615))

(assert (= (and b!6550615 (not res!2687442)) b!6550614))

(assert (= (and b!6550614 (not res!2687452)) b!6550628))

(assert (= (and b!6550628 (not res!2687448)) b!6550586))

(assert (= (and b!6550586 (not res!2687468)) b!6550603))

(assert (= (and b!6550603 (not res!2687470)) b!6550585))

(assert (= (and b!6550585 res!2687469) b!6550627))

(assert (= (and b!6550585 (not res!2687453)) b!6550594))

(assert (= (and b!6550594 (not res!2687443)) b!6550609))

(assert (= (and b!6550609 (not res!2687457)) b!6550595))

(assert (= (and b!6550595 (not res!2687437)) b!6550622))

(assert (= (and b!6550622 (not res!2687456)) b!6550626))

(assert (= (and b!6550626 (not res!2687465)) b!6550588))

(assert (= (and b!6550588 res!2687446) b!6550623))

(assert (= (and b!6550588 (not res!2687439)) b!6550589))

(assert (= (and start!641894 ((_ is ElementMatch!16425) r!7292)) b!6550605))

(assert (= (and start!641894 ((_ is Concat!25270) r!7292)) b!6550592))

(assert (= (and start!641894 ((_ is Star!16425) r!7292)) b!6550596))

(assert (= (and start!641894 ((_ is Union!16425) r!7292)) b!6550616))

(assert (= (and start!641894 condSetEmpty!44706) setIsEmpty!44706))

(assert (= (and start!641894 (not condSetEmpty!44706)) setNonEmpty!44706))

(assert (= setNonEmpty!44706 b!6550597))

(assert (= b!6550599 b!6550591))

(assert (= (and start!641894 ((_ is Cons!65452) zl!343)) b!6550599))

(assert (= (and start!641894 ((_ is Cons!65451) s!2326)) b!6550607))

(declare-fun m!7333018 () Bool)

(assert (=> b!6550620 m!7333018))

(declare-fun m!7333020 () Bool)

(assert (=> b!6550620 m!7333020))

(declare-fun m!7333022 () Bool)

(assert (=> b!6550630 m!7333022))

(assert (=> b!6550630 m!7333022))

(declare-fun m!7333024 () Bool)

(assert (=> b!6550630 m!7333024))

(declare-fun m!7333026 () Bool)

(assert (=> b!6550618 m!7333026))

(declare-fun m!7333028 () Bool)

(assert (=> b!6550618 m!7333028))

(declare-fun m!7333030 () Bool)

(assert (=> b!6550618 m!7333030))

(declare-fun m!7333032 () Bool)

(assert (=> b!6550614 m!7333032))

(declare-fun m!7333034 () Bool)

(assert (=> b!6550593 m!7333034))

(declare-fun m!7333036 () Bool)

(assert (=> b!6550602 m!7333036))

(declare-fun m!7333038 () Bool)

(assert (=> b!6550615 m!7333038))

(declare-fun m!7333040 () Bool)

(assert (=> b!6550615 m!7333040))

(declare-fun m!7333042 () Bool)

(assert (=> b!6550615 m!7333042))

(declare-fun m!7333044 () Bool)

(assert (=> b!6550615 m!7333044))

(declare-fun m!7333046 () Bool)

(assert (=> b!6550615 m!7333046))

(declare-fun m!7333048 () Bool)

(assert (=> b!6550615 m!7333048))

(declare-fun m!7333050 () Bool)

(assert (=> b!6550615 m!7333050))

(declare-fun m!7333052 () Bool)

(assert (=> b!6550615 m!7333052))

(declare-fun m!7333054 () Bool)

(assert (=> b!6550615 m!7333054))

(declare-fun m!7333056 () Bool)

(assert (=> b!6550627 m!7333056))

(assert (=> b!6550585 m!7333028))

(declare-fun m!7333058 () Bool)

(assert (=> b!6550609 m!7333058))

(declare-fun m!7333060 () Bool)

(assert (=> b!6550609 m!7333060))

(declare-fun m!7333062 () Bool)

(assert (=> b!6550609 m!7333062))

(declare-fun m!7333064 () Bool)

(assert (=> b!6550609 m!7333064))

(declare-fun m!7333066 () Bool)

(assert (=> b!6550609 m!7333066))

(declare-fun m!7333068 () Bool)

(assert (=> b!6550609 m!7333068))

(declare-fun m!7333070 () Bool)

(assert (=> b!6550622 m!7333070))

(declare-fun m!7333072 () Bool)

(assert (=> b!6550599 m!7333072))

(declare-fun m!7333074 () Bool)

(assert (=> b!6550587 m!7333074))

(declare-fun m!7333076 () Bool)

(assert (=> b!6550626 m!7333076))

(declare-fun m!7333078 () Bool)

(assert (=> b!6550617 m!7333078))

(declare-fun m!7333080 () Bool)

(assert (=> b!6550617 m!7333080))

(declare-fun m!7333082 () Bool)

(assert (=> b!6550617 m!7333082))

(declare-fun m!7333084 () Bool)

(assert (=> b!6550617 m!7333084))

(declare-fun m!7333086 () Bool)

(assert (=> b!6550617 m!7333086))

(declare-fun m!7333088 () Bool)

(assert (=> b!6550617 m!7333088))

(declare-fun m!7333090 () Bool)

(assert (=> b!6550617 m!7333090))

(declare-fun m!7333092 () Bool)

(assert (=> setNonEmpty!44706 m!7333092))

(declare-fun m!7333094 () Bool)

(assert (=> b!6550613 m!7333094))

(declare-fun m!7333096 () Bool)

(assert (=> b!6550613 m!7333096))

(declare-fun m!7333098 () Bool)

(assert (=> b!6550613 m!7333098))

(declare-fun m!7333100 () Bool)

(assert (=> b!6550606 m!7333100))

(declare-fun m!7333102 () Bool)

(assert (=> b!6550608 m!7333102))

(declare-fun m!7333104 () Bool)

(assert (=> b!6550610 m!7333104))

(declare-fun m!7333106 () Bool)

(assert (=> b!6550628 m!7333106))

(declare-fun m!7333108 () Bool)

(assert (=> b!6550628 m!7333108))

(declare-fun m!7333110 () Bool)

(assert (=> b!6550628 m!7333110))

(declare-fun m!7333112 () Bool)

(assert (=> b!6550589 m!7333112))

(declare-fun m!7333114 () Bool)

(assert (=> b!6550586 m!7333114))

(declare-fun m!7333116 () Bool)

(assert (=> b!6550625 m!7333116))

(declare-fun m!7333118 () Bool)

(assert (=> b!6550625 m!7333118))

(declare-fun m!7333120 () Bool)

(assert (=> b!6550625 m!7333120))

(declare-fun m!7333122 () Bool)

(assert (=> b!6550625 m!7333122))

(declare-fun m!7333124 () Bool)

(assert (=> b!6550625 m!7333124))

(assert (=> b!6550625 m!7333122))

(assert (=> b!6550625 m!7333118))

(declare-fun m!7333126 () Bool)

(assert (=> b!6550625 m!7333126))

(declare-fun m!7333128 () Bool)

(assert (=> b!6550621 m!7333128))

(declare-fun m!7333130 () Bool)

(assert (=> b!6550621 m!7333130))

(declare-fun m!7333132 () Bool)

(assert (=> b!6550621 m!7333132))

(declare-fun m!7333134 () Bool)

(assert (=> b!6550621 m!7333134))

(declare-fun m!7333136 () Bool)

(assert (=> b!6550621 m!7333136))

(declare-fun m!7333138 () Bool)

(assert (=> b!6550595 m!7333138))

(declare-fun m!7333140 () Bool)

(assert (=> b!6550595 m!7333140))

(declare-fun m!7333142 () Bool)

(assert (=> b!6550595 m!7333142))

(declare-fun m!7333144 () Bool)

(assert (=> b!6550595 m!7333144))

(declare-fun m!7333146 () Bool)

(assert (=> b!6550595 m!7333146))

(declare-fun m!7333148 () Bool)

(assert (=> b!6550611 m!7333148))

(assert (=> b!6550604 m!7333056))

(declare-fun m!7333150 () Bool)

(assert (=> start!641894 m!7333150))

(declare-fun m!7333152 () Bool)

(assert (=> b!6550588 m!7333152))

(declare-fun m!7333154 () Bool)

(assert (=> b!6550588 m!7333154))

(declare-fun m!7333156 () Bool)

(assert (=> b!6550588 m!7333156))

(assert (=> b!6550588 m!7333068))

(declare-fun m!7333158 () Bool)

(assert (=> b!6550588 m!7333158))

(assert (=> b!6550588 m!7333068))

(declare-fun m!7333160 () Bool)

(assert (=> b!6550588 m!7333160))

(declare-fun m!7333162 () Bool)

(assert (=> b!6550588 m!7333162))

(declare-fun m!7333164 () Bool)

(assert (=> b!6550588 m!7333164))

(declare-fun m!7333166 () Bool)

(assert (=> b!6550588 m!7333166))

(declare-fun m!7333168 () Bool)

(assert (=> b!6550588 m!7333168))

(declare-fun m!7333170 () Bool)

(assert (=> b!6550588 m!7333170))

(declare-fun m!7333172 () Bool)

(assert (=> b!6550588 m!7333172))

(assert (=> b!6550588 m!7333060))

(declare-fun m!7333174 () Bool)

(assert (=> b!6550588 m!7333174))

(assert (=> b!6550588 m!7333154))

(declare-fun m!7333176 () Bool)

(assert (=> b!6550588 m!7333176))

(declare-fun m!7333178 () Bool)

(assert (=> b!6550588 m!7333178))

(declare-fun m!7333180 () Bool)

(assert (=> b!6550588 m!7333180))

(assert (=> b!6550588 m!7333058))

(declare-fun m!7333182 () Bool)

(assert (=> b!6550588 m!7333182))

(declare-fun m!7333184 () Bool)

(assert (=> b!6550588 m!7333184))

(declare-fun m!7333186 () Bool)

(assert (=> b!6550601 m!7333186))

(check-sat (not b!6550597) (not setNonEmpty!44706) (not b!6550606) (not b!6550626) (not b!6550615) (not b!6550591) (not b!6550618) (not b!6550599) (not b!6550620) (not b!6550587) (not b!6550601) (not b!6550611) (not b!6550610) (not b!6550588) (not b!6550608) (not b!6550617) (not b!6550613) (not b!6550621) (not b!6550596) (not b!6550614) (not b!6550625) (not b!6550595) tp_is_empty!42103 (not b!6550616) (not b!6550585) (not b!6550609) (not b!6550604) (not b!6550593) (not b!6550622) (not b!6550630) (not b!6550602) (not b!6550592) (not b!6550627) (not b!6550586) (not b!6550589) (not b!6550607) (not start!641894) (not b!6550628))
(check-sat)
(get-model)

(declare-fun d!2055896 () Bool)

(assert (=> d!2055896 (= (isEmpty!37678 (t!379216 (exprs!6309 (h!71900 zl!343)))) ((_ is Nil!65450) (t!379216 (exprs!6309 (h!71900 zl!343)))))))

(assert (=> b!6550606 d!2055896))

(declare-fun d!2055898 () Bool)

(declare-fun c!1203227 () Bool)

(declare-fun isEmpty!37680 (List!65575) Bool)

(assert (=> d!2055898 (= c!1203227 (isEmpty!37680 s!2326))))

(declare-fun e!3966049 () Bool)

(assert (=> d!2055898 (= (matchZipper!2437 z!1189 s!2326) e!3966049)))

(declare-fun b!6550643 () Bool)

(declare-fun nullableZipper!2170 ((InoxSet Context!11618)) Bool)

(assert (=> b!6550643 (= e!3966049 (nullableZipper!2170 z!1189))))

(declare-fun b!6550644 () Bool)

(declare-fun head!13300 (List!65575) C!33120)

(declare-fun tail!12385 (List!65575) List!65575)

(assert (=> b!6550644 (= e!3966049 (matchZipper!2437 (derivationStepZipper!2391 z!1189 (head!13300 s!2326)) (tail!12385 s!2326)))))

(assert (= (and d!2055898 c!1203227) b!6550643))

(assert (= (and d!2055898 (not c!1203227)) b!6550644))

(declare-fun m!7333188 () Bool)

(assert (=> d!2055898 m!7333188))

(declare-fun m!7333190 () Bool)

(assert (=> b!6550643 m!7333190))

(declare-fun m!7333192 () Bool)

(assert (=> b!6550644 m!7333192))

(assert (=> b!6550644 m!7333192))

(declare-fun m!7333194 () Bool)

(assert (=> b!6550644 m!7333194))

(declare-fun m!7333196 () Bool)

(assert (=> b!6550644 m!7333196))

(assert (=> b!6550644 m!7333194))

(assert (=> b!6550644 m!7333196))

(declare-fun m!7333198 () Bool)

(assert (=> b!6550644 m!7333198))

(assert (=> b!6550586 d!2055898))

(declare-fun d!2055900 () Bool)

(declare-fun c!1203228 () Bool)

(assert (=> d!2055900 (= c!1203228 (isEmpty!37680 (t!379217 s!2326)))))

(declare-fun e!3966050 () Bool)

(assert (=> d!2055900 (= (matchZipper!2437 lt!2402371 (t!379217 s!2326)) e!3966050)))

(declare-fun b!6550645 () Bool)

(assert (=> b!6550645 (= e!3966050 (nullableZipper!2170 lt!2402371))))

(declare-fun b!6550646 () Bool)

(assert (=> b!6550646 (= e!3966050 (matchZipper!2437 (derivationStepZipper!2391 lt!2402371 (head!13300 (t!379217 s!2326))) (tail!12385 (t!379217 s!2326))))))

(assert (= (and d!2055900 c!1203228) b!6550645))

(assert (= (and d!2055900 (not c!1203228)) b!6550646))

(declare-fun m!7333200 () Bool)

(assert (=> d!2055900 m!7333200))

(declare-fun m!7333202 () Bool)

(assert (=> b!6550645 m!7333202))

(declare-fun m!7333204 () Bool)

(assert (=> b!6550646 m!7333204))

(assert (=> b!6550646 m!7333204))

(declare-fun m!7333206 () Bool)

(assert (=> b!6550646 m!7333206))

(declare-fun m!7333208 () Bool)

(assert (=> b!6550646 m!7333208))

(assert (=> b!6550646 m!7333206))

(assert (=> b!6550646 m!7333208))

(declare-fun m!7333210 () Bool)

(assert (=> b!6550646 m!7333210))

(assert (=> b!6550585 d!2055900))

(declare-fun d!2055902 () Bool)

(declare-fun c!1203229 () Bool)

(assert (=> d!2055902 (= c!1203229 (isEmpty!37680 (_2!36707 lt!2402333)))))

(declare-fun e!3966051 () Bool)

(assert (=> d!2055902 (= (matchZipper!2437 lt!2402373 (_2!36707 lt!2402333)) e!3966051)))

(declare-fun b!6550647 () Bool)

(assert (=> b!6550647 (= e!3966051 (nullableZipper!2170 lt!2402373))))

(declare-fun b!6550648 () Bool)

(assert (=> b!6550648 (= e!3966051 (matchZipper!2437 (derivationStepZipper!2391 lt!2402373 (head!13300 (_2!36707 lt!2402333))) (tail!12385 (_2!36707 lt!2402333))))))

(assert (= (and d!2055902 c!1203229) b!6550647))

(assert (= (and d!2055902 (not c!1203229)) b!6550648))

(declare-fun m!7333212 () Bool)

(assert (=> d!2055902 m!7333212))

(declare-fun m!7333214 () Bool)

(assert (=> b!6550647 m!7333214))

(declare-fun m!7333216 () Bool)

(assert (=> b!6550648 m!7333216))

(assert (=> b!6550648 m!7333216))

(declare-fun m!7333218 () Bool)

(assert (=> b!6550648 m!7333218))

(declare-fun m!7333220 () Bool)

(assert (=> b!6550648 m!7333220))

(assert (=> b!6550648 m!7333218))

(assert (=> b!6550648 m!7333220))

(declare-fun m!7333222 () Bool)

(assert (=> b!6550648 m!7333222))

(assert (=> b!6550626 d!2055902))

(declare-fun d!2055904 () Bool)

(declare-fun e!3966054 () Bool)

(assert (=> d!2055904 e!3966054))

(declare-fun res!2687475 () Bool)

(assert (=> d!2055904 (=> (not res!2687475) (not e!3966054))))

(declare-fun lt!2402383 () List!65576)

(declare-fun noDuplicate!2230 (List!65576) Bool)

(assert (=> d!2055904 (= res!2687475 (noDuplicate!2230 lt!2402383))))

(declare-fun choose!48728 ((InoxSet Context!11618)) List!65576)

(assert (=> d!2055904 (= lt!2402383 (choose!48728 z!1189))))

(assert (=> d!2055904 (= (toList!10209 z!1189) lt!2402383)))

(declare-fun b!6550651 () Bool)

(declare-fun content!12555 (List!65576) (InoxSet Context!11618))

(assert (=> b!6550651 (= e!3966054 (= (content!12555 lt!2402383) z!1189))))

(assert (= (and d!2055904 res!2687475) b!6550651))

(declare-fun m!7333224 () Bool)

(assert (=> d!2055904 m!7333224))

(declare-fun m!7333226 () Bool)

(assert (=> d!2055904 m!7333226))

(declare-fun m!7333228 () Bool)

(assert (=> b!6550651 m!7333228))

(assert (=> b!6550587 d!2055904))

(declare-fun bs!1672271 () Bool)

(declare-fun b!6550710 () Bool)

(assert (= bs!1672271 (and b!6550710 b!6550625)))

(declare-fun lambda!363853 () Int)

(assert (=> bs!1672271 (not (= lambda!363853 lambda!363840))))

(assert (=> bs!1672271 (not (= lambda!363853 lambda!363841))))

(declare-fun bs!1672272 () Bool)

(assert (= bs!1672272 (and b!6550710 b!6550588)))

(assert (=> bs!1672272 (not (= lambda!363853 lambda!363845))))

(assert (=> b!6550710 true))

(assert (=> b!6550710 true))

(declare-fun bs!1672273 () Bool)

(declare-fun b!6550715 () Bool)

(assert (= bs!1672273 (and b!6550715 b!6550625)))

(declare-fun lambda!363854 () Int)

(assert (=> bs!1672273 (not (= lambda!363854 lambda!363840))))

(assert (=> bs!1672273 (= (and (= (regOne!33362 lt!2402338) (regOne!33362 r!7292)) (= (regTwo!33362 lt!2402338) (regTwo!33362 r!7292))) (= lambda!363854 lambda!363841))))

(declare-fun bs!1672274 () Bool)

(assert (= bs!1672274 (and b!6550715 b!6550588)))

(assert (=> bs!1672274 (not (= lambda!363854 lambda!363845))))

(declare-fun bs!1672275 () Bool)

(assert (= bs!1672275 (and b!6550715 b!6550710)))

(assert (=> bs!1672275 (not (= lambda!363854 lambda!363853))))

(assert (=> b!6550715 true))

(assert (=> b!6550715 true))

(declare-fun b!6550708 () Bool)

(declare-fun e!3966089 () Bool)

(declare-fun call!569739 () Bool)

(assert (=> b!6550708 (= e!3966089 call!569739)))

(declare-fun d!2055908 () Bool)

(declare-fun c!1203250 () Bool)

(assert (=> d!2055908 (= c!1203250 ((_ is EmptyExpr!16425) lt!2402338))))

(assert (=> d!2055908 (= (matchRSpec!3526 lt!2402338 s!2326) e!3966089)))

(declare-fun b!6550709 () Bool)

(declare-fun res!2687499 () Bool)

(declare-fun e!3966085 () Bool)

(assert (=> b!6550709 (=> res!2687499 e!3966085)))

(assert (=> b!6550709 (= res!2687499 call!569739)))

(declare-fun e!3966086 () Bool)

(assert (=> b!6550709 (= e!3966086 e!3966085)))

(declare-fun call!569738 () Bool)

(assert (=> b!6550710 (= e!3966085 call!569738)))

(declare-fun b!6550711 () Bool)

(declare-fun e!3966088 () Bool)

(assert (=> b!6550711 (= e!3966089 e!3966088)))

(declare-fun res!2687498 () Bool)

(assert (=> b!6550711 (= res!2687498 (not ((_ is EmptyLang!16425) lt!2402338)))))

(assert (=> b!6550711 (=> (not res!2687498) (not e!3966088))))

(declare-fun b!6550712 () Bool)

(declare-fun c!1203247 () Bool)

(assert (=> b!6550712 (= c!1203247 ((_ is Union!16425) lt!2402338))))

(declare-fun e!3966087 () Bool)

(declare-fun e!3966091 () Bool)

(assert (=> b!6550712 (= e!3966087 e!3966091)))

(declare-fun b!6550713 () Bool)

(declare-fun e!3966090 () Bool)

(assert (=> b!6550713 (= e!3966090 (matchRSpec!3526 (regTwo!33363 lt!2402338) s!2326))))

(declare-fun b!6550714 () Bool)

(assert (=> b!6550714 (= e!3966091 e!3966086)))

(declare-fun c!1203249 () Bool)

(assert (=> b!6550714 (= c!1203249 ((_ is Star!16425) lt!2402338))))

(assert (=> b!6550715 (= e!3966086 call!569738)))

(declare-fun b!6550716 () Bool)

(assert (=> b!6550716 (= e!3966091 e!3966090)))

(declare-fun res!2687500 () Bool)

(assert (=> b!6550716 (= res!2687500 (matchRSpec!3526 (regOne!33363 lt!2402338) s!2326))))

(assert (=> b!6550716 (=> res!2687500 e!3966090)))

(declare-fun b!6550717 () Bool)

(declare-fun c!1203248 () Bool)

(assert (=> b!6550717 (= c!1203248 ((_ is ElementMatch!16425) lt!2402338))))

(assert (=> b!6550717 (= e!3966088 e!3966087)))

(declare-fun b!6550718 () Bool)

(assert (=> b!6550718 (= e!3966087 (= s!2326 (Cons!65451 (c!1203224 lt!2402338) Nil!65451)))))

(declare-fun bm!569733 () Bool)

(assert (=> bm!569733 (= call!569738 (Exists!3495 (ite c!1203249 lambda!363853 lambda!363854)))))

(declare-fun bm!569734 () Bool)

(assert (=> bm!569734 (= call!569739 (isEmpty!37680 s!2326))))

(assert (= (and d!2055908 c!1203250) b!6550708))

(assert (= (and d!2055908 (not c!1203250)) b!6550711))

(assert (= (and b!6550711 res!2687498) b!6550717))

(assert (= (and b!6550717 c!1203248) b!6550718))

(assert (= (and b!6550717 (not c!1203248)) b!6550712))

(assert (= (and b!6550712 c!1203247) b!6550716))

(assert (= (and b!6550712 (not c!1203247)) b!6550714))

(assert (= (and b!6550716 (not res!2687500)) b!6550713))

(assert (= (and b!6550714 c!1203249) b!6550709))

(assert (= (and b!6550714 (not c!1203249)) b!6550715))

(assert (= (and b!6550709 (not res!2687499)) b!6550710))

(assert (= (or b!6550710 b!6550715) bm!569733))

(assert (= (or b!6550708 b!6550709) bm!569734))

(declare-fun m!7333306 () Bool)

(assert (=> b!6550713 m!7333306))

(declare-fun m!7333308 () Bool)

(assert (=> b!6550716 m!7333308))

(declare-fun m!7333310 () Bool)

(assert (=> bm!569733 m!7333310))

(assert (=> bm!569734 m!7333188))

(assert (=> b!6550628 d!2055908))

(declare-fun b!6550791 () Bool)

(declare-fun e!3966131 () Bool)

(assert (=> b!6550791 (= e!3966131 (nullable!6418 lt!2402338))))

(declare-fun b!6550792 () Bool)

(declare-fun res!2687542 () Bool)

(declare-fun e!3966134 () Bool)

(assert (=> b!6550792 (=> (not res!2687542) (not e!3966134))))

(declare-fun call!569745 () Bool)

(assert (=> b!6550792 (= res!2687542 (not call!569745))))

(declare-fun d!2055928 () Bool)

(declare-fun e!3966135 () Bool)

(assert (=> d!2055928 e!3966135))

(declare-fun c!1203272 () Bool)

(assert (=> d!2055928 (= c!1203272 ((_ is EmptyExpr!16425) lt!2402338))))

(declare-fun lt!2402406 () Bool)

(assert (=> d!2055928 (= lt!2402406 e!3966131)))

(declare-fun c!1203271 () Bool)

(assert (=> d!2055928 (= c!1203271 (isEmpty!37680 s!2326))))

(assert (=> d!2055928 (validRegex!8161 lt!2402338)))

(assert (=> d!2055928 (= (matchR!8608 lt!2402338 s!2326) lt!2402406)))

(declare-fun b!6550793 () Bool)

(assert (=> b!6550793 (= e!3966134 (= (head!13300 s!2326) (c!1203224 lt!2402338)))))

(declare-fun b!6550794 () Bool)

(declare-fun e!3966137 () Bool)

(assert (=> b!6550794 (= e!3966135 e!3966137)))

(declare-fun c!1203270 () Bool)

(assert (=> b!6550794 (= c!1203270 ((_ is EmptyLang!16425) lt!2402338))))

(declare-fun b!6550795 () Bool)

(declare-fun res!2687535 () Bool)

(assert (=> b!6550795 (=> (not res!2687535) (not e!3966134))))

(assert (=> b!6550795 (= res!2687535 (isEmpty!37680 (tail!12385 s!2326)))))

(declare-fun b!6550796 () Bool)

(assert (=> b!6550796 (= e!3966137 (not lt!2402406))))

(declare-fun b!6550797 () Bool)

(declare-fun res!2687537 () Bool)

(declare-fun e!3966133 () Bool)

(assert (=> b!6550797 (=> res!2687537 e!3966133)))

(assert (=> b!6550797 (= res!2687537 (not ((_ is ElementMatch!16425) lt!2402338)))))

(assert (=> b!6550797 (= e!3966137 e!3966133)))

(declare-fun bm!569740 () Bool)

(assert (=> bm!569740 (= call!569745 (isEmpty!37680 s!2326))))

(declare-fun b!6550798 () Bool)

(declare-fun res!2687541 () Bool)

(assert (=> b!6550798 (=> res!2687541 e!3966133)))

(assert (=> b!6550798 (= res!2687541 e!3966134)))

(declare-fun res!2687538 () Bool)

(assert (=> b!6550798 (=> (not res!2687538) (not e!3966134))))

(assert (=> b!6550798 (= res!2687538 lt!2402406)))

(declare-fun b!6550799 () Bool)

(declare-fun derivativeStep!5108 (Regex!16425 C!33120) Regex!16425)

(assert (=> b!6550799 (= e!3966131 (matchR!8608 (derivativeStep!5108 lt!2402338 (head!13300 s!2326)) (tail!12385 s!2326)))))

(declare-fun b!6550800 () Bool)

(assert (=> b!6550800 (= e!3966135 (= lt!2402406 call!569745))))

(declare-fun b!6550801 () Bool)

(declare-fun e!3966136 () Bool)

(assert (=> b!6550801 (= e!3966133 e!3966136)))

(declare-fun res!2687539 () Bool)

(assert (=> b!6550801 (=> (not res!2687539) (not e!3966136))))

(assert (=> b!6550801 (= res!2687539 (not lt!2402406))))

(declare-fun b!6550802 () Bool)

(declare-fun e!3966132 () Bool)

(assert (=> b!6550802 (= e!3966132 (not (= (head!13300 s!2326) (c!1203224 lt!2402338))))))

(declare-fun b!6550803 () Bool)

(declare-fun res!2687540 () Bool)

(assert (=> b!6550803 (=> res!2687540 e!3966132)))

(assert (=> b!6550803 (= res!2687540 (not (isEmpty!37680 (tail!12385 s!2326))))))

(declare-fun b!6550804 () Bool)

(assert (=> b!6550804 (= e!3966136 e!3966132)))

(declare-fun res!2687536 () Bool)

(assert (=> b!6550804 (=> res!2687536 e!3966132)))

(assert (=> b!6550804 (= res!2687536 call!569745)))

(assert (= (and d!2055928 c!1203271) b!6550791))

(assert (= (and d!2055928 (not c!1203271)) b!6550799))

(assert (= (and d!2055928 c!1203272) b!6550800))

(assert (= (and d!2055928 (not c!1203272)) b!6550794))

(assert (= (and b!6550794 c!1203270) b!6550796))

(assert (= (and b!6550794 (not c!1203270)) b!6550797))

(assert (= (and b!6550797 (not res!2687537)) b!6550798))

(assert (= (and b!6550798 res!2687538) b!6550792))

(assert (= (and b!6550792 res!2687542) b!6550795))

(assert (= (and b!6550795 res!2687535) b!6550793))

(assert (= (and b!6550798 (not res!2687541)) b!6550801))

(assert (= (and b!6550801 res!2687539) b!6550804))

(assert (= (and b!6550804 (not res!2687536)) b!6550803))

(assert (= (and b!6550803 (not res!2687540)) b!6550802))

(assert (= (or b!6550800 b!6550792 b!6550804) bm!569740))

(assert (=> b!6550799 m!7333192))

(assert (=> b!6550799 m!7333192))

(declare-fun m!7333354 () Bool)

(assert (=> b!6550799 m!7333354))

(assert (=> b!6550799 m!7333196))

(assert (=> b!6550799 m!7333354))

(assert (=> b!6550799 m!7333196))

(declare-fun m!7333356 () Bool)

(assert (=> b!6550799 m!7333356))

(declare-fun m!7333358 () Bool)

(assert (=> b!6550791 m!7333358))

(assert (=> b!6550802 m!7333192))

(assert (=> b!6550793 m!7333192))

(assert (=> bm!569740 m!7333188))

(assert (=> b!6550803 m!7333196))

(assert (=> b!6550803 m!7333196))

(declare-fun m!7333360 () Bool)

(assert (=> b!6550803 m!7333360))

(assert (=> b!6550795 m!7333196))

(assert (=> b!6550795 m!7333196))

(assert (=> b!6550795 m!7333360))

(assert (=> d!2055928 m!7333188))

(declare-fun m!7333362 () Bool)

(assert (=> d!2055928 m!7333362))

(assert (=> b!6550628 d!2055928))

(declare-fun d!2055944 () Bool)

(assert (=> d!2055944 (= (matchR!8608 lt!2402338 s!2326) (matchRSpec!3526 lt!2402338 s!2326))))

(declare-fun lt!2402410 () Unit!159035)

(declare-fun choose!48730 (Regex!16425 List!65575) Unit!159035)

(assert (=> d!2055944 (= lt!2402410 (choose!48730 lt!2402338 s!2326))))

(assert (=> d!2055944 (validRegex!8161 lt!2402338)))

(assert (=> d!2055944 (= (mainMatchTheorem!3526 lt!2402338 s!2326) lt!2402410)))

(declare-fun bs!1672280 () Bool)

(assert (= bs!1672280 d!2055944))

(assert (=> bs!1672280 m!7333108))

(assert (=> bs!1672280 m!7333106))

(declare-fun m!7333366 () Bool)

(assert (=> bs!1672280 m!7333366))

(assert (=> bs!1672280 m!7333362))

(assert (=> b!6550628 d!2055944))

(declare-fun d!2055948 () Bool)

(declare-fun c!1203275 () Bool)

(assert (=> d!2055948 (= c!1203275 (isEmpty!37680 (t!379217 s!2326)))))

(declare-fun e!3966138 () Bool)

(assert (=> d!2055948 (= (matchZipper!2437 lt!2402343 (t!379217 s!2326)) e!3966138)))

(declare-fun b!6550807 () Bool)

(assert (=> b!6550807 (= e!3966138 (nullableZipper!2170 lt!2402343))))

(declare-fun b!6550808 () Bool)

(assert (=> b!6550808 (= e!3966138 (matchZipper!2437 (derivationStepZipper!2391 lt!2402343 (head!13300 (t!379217 s!2326))) (tail!12385 (t!379217 s!2326))))))

(assert (= (and d!2055948 c!1203275) b!6550807))

(assert (= (and d!2055948 (not c!1203275)) b!6550808))

(assert (=> d!2055948 m!7333200))

(declare-fun m!7333368 () Bool)

(assert (=> b!6550807 m!7333368))

(assert (=> b!6550808 m!7333204))

(assert (=> b!6550808 m!7333204))

(declare-fun m!7333370 () Bool)

(assert (=> b!6550808 m!7333370))

(assert (=> b!6550808 m!7333208))

(assert (=> b!6550808 m!7333370))

(assert (=> b!6550808 m!7333208))

(declare-fun m!7333372 () Bool)

(assert (=> b!6550808 m!7333372))

(assert (=> b!6550627 d!2055948))

(declare-fun b!6550863 () Bool)

(declare-fun e!3966173 () Option!16316)

(assert (=> b!6550863 (= e!3966173 (Some!16315 (tuple2!66809 Nil!65451 s!2326)))))

(declare-fun d!2055950 () Bool)

(declare-fun e!3966172 () Bool)

(assert (=> d!2055950 e!3966172))

(declare-fun res!2687559 () Bool)

(assert (=> d!2055950 (=> res!2687559 e!3966172)))

(declare-fun e!3966170 () Bool)

(assert (=> d!2055950 (= res!2687559 e!3966170)))

(declare-fun res!2687562 () Bool)

(assert (=> d!2055950 (=> (not res!2687562) (not e!3966170))))

(declare-fun lt!2402422 () Option!16316)

(assert (=> d!2055950 (= res!2687562 (isDefined!13019 lt!2402422))))

(assert (=> d!2055950 (= lt!2402422 e!3966173)))

(declare-fun c!1203296 () Bool)

(declare-fun e!3966171 () Bool)

(assert (=> d!2055950 (= c!1203296 e!3966171)))

(declare-fun res!2687563 () Bool)

(assert (=> d!2055950 (=> (not res!2687563) (not e!3966171))))

(assert (=> d!2055950 (= res!2687563 (matchR!8608 (regOne!33362 r!7292) Nil!65451))))

(assert (=> d!2055950 (validRegex!8161 (regOne!33362 r!7292))))

(assert (=> d!2055950 (= (findConcatSeparation!2730 (regOne!33362 r!7292) (regTwo!33362 r!7292) Nil!65451 s!2326 s!2326) lt!2402422)))

(declare-fun b!6550864 () Bool)

(declare-fun e!3966174 () Option!16316)

(assert (=> b!6550864 (= e!3966174 None!16315)))

(declare-fun b!6550865 () Bool)

(declare-fun res!2687560 () Bool)

(assert (=> b!6550865 (=> (not res!2687560) (not e!3966170))))

(assert (=> b!6550865 (= res!2687560 (matchR!8608 (regOne!33362 r!7292) (_1!36707 (get!22719 lt!2402422))))))

(declare-fun b!6550866 () Bool)

(declare-fun res!2687561 () Bool)

(assert (=> b!6550866 (=> (not res!2687561) (not e!3966170))))

(assert (=> b!6550866 (= res!2687561 (matchR!8608 (regTwo!33362 r!7292) (_2!36707 (get!22719 lt!2402422))))))

(declare-fun b!6550867 () Bool)

(declare-fun lt!2402421 () Unit!159035)

(declare-fun lt!2402420 () Unit!159035)

(assert (=> b!6550867 (= lt!2402421 lt!2402420)))

(assert (=> b!6550867 (= (++!14553 (++!14553 Nil!65451 (Cons!65451 (h!71899 s!2326) Nil!65451)) (t!379217 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2568 (List!65575 C!33120 List!65575 List!65575) Unit!159035)

(assert (=> b!6550867 (= lt!2402420 (lemmaMoveElementToOtherListKeepsConcatEq!2568 Nil!65451 (h!71899 s!2326) (t!379217 s!2326) s!2326))))

(assert (=> b!6550867 (= e!3966174 (findConcatSeparation!2730 (regOne!33362 r!7292) (regTwo!33362 r!7292) (++!14553 Nil!65451 (Cons!65451 (h!71899 s!2326) Nil!65451)) (t!379217 s!2326) s!2326))))

(declare-fun b!6550868 () Bool)

(assert (=> b!6550868 (= e!3966172 (not (isDefined!13019 lt!2402422)))))

(declare-fun b!6550869 () Bool)

(assert (=> b!6550869 (= e!3966173 e!3966174)))

(declare-fun c!1203295 () Bool)

(assert (=> b!6550869 (= c!1203295 ((_ is Nil!65451) s!2326))))

(declare-fun b!6550870 () Bool)

(assert (=> b!6550870 (= e!3966170 (= (++!14553 (_1!36707 (get!22719 lt!2402422)) (_2!36707 (get!22719 lt!2402422))) s!2326))))

(declare-fun b!6550871 () Bool)

(assert (=> b!6550871 (= e!3966171 (matchR!8608 (regTwo!33362 r!7292) s!2326))))

(assert (= (and d!2055950 res!2687563) b!6550871))

(assert (= (and d!2055950 c!1203296) b!6550863))

(assert (= (and d!2055950 (not c!1203296)) b!6550869))

(assert (= (and b!6550869 c!1203295) b!6550864))

(assert (= (and b!6550869 (not c!1203295)) b!6550867))

(assert (= (and d!2055950 res!2687562) b!6550865))

(assert (= (and b!6550865 res!2687560) b!6550866))

(assert (= (and b!6550866 res!2687561) b!6550870))

(assert (= (and d!2055950 (not res!2687559)) b!6550868))

(declare-fun m!7333396 () Bool)

(assert (=> b!6550871 m!7333396))

(declare-fun m!7333398 () Bool)

(assert (=> b!6550866 m!7333398))

(declare-fun m!7333400 () Bool)

(assert (=> b!6550866 m!7333400))

(assert (=> b!6550870 m!7333398))

(declare-fun m!7333402 () Bool)

(assert (=> b!6550870 m!7333402))

(declare-fun m!7333404 () Bool)

(assert (=> b!6550867 m!7333404))

(assert (=> b!6550867 m!7333404))

(declare-fun m!7333406 () Bool)

(assert (=> b!6550867 m!7333406))

(declare-fun m!7333408 () Bool)

(assert (=> b!6550867 m!7333408))

(assert (=> b!6550867 m!7333404))

(declare-fun m!7333410 () Bool)

(assert (=> b!6550867 m!7333410))

(assert (=> b!6550865 m!7333398))

(declare-fun m!7333412 () Bool)

(assert (=> b!6550865 m!7333412))

(declare-fun m!7333414 () Bool)

(assert (=> d!2055950 m!7333414))

(declare-fun m!7333416 () Bool)

(assert (=> d!2055950 m!7333416))

(declare-fun m!7333418 () Bool)

(assert (=> d!2055950 m!7333418))

(assert (=> b!6550868 m!7333414))

(assert (=> b!6550625 d!2055950))

(declare-fun d!2055960 () Bool)

(declare-fun choose!48733 (Int) Bool)

(assert (=> d!2055960 (= (Exists!3495 lambda!363841) (choose!48733 lambda!363841))))

(declare-fun bs!1672281 () Bool)

(assert (= bs!1672281 d!2055960))

(declare-fun m!7333420 () Bool)

(assert (=> bs!1672281 m!7333420))

(assert (=> b!6550625 d!2055960))

(declare-fun d!2055962 () Bool)

(assert (=> d!2055962 (= (Exists!3495 lambda!363840) (choose!48733 lambda!363840))))

(declare-fun bs!1672282 () Bool)

(assert (= bs!1672282 d!2055962))

(declare-fun m!7333422 () Bool)

(assert (=> bs!1672282 m!7333422))

(assert (=> b!6550625 d!2055962))

(declare-fun bs!1672283 () Bool)

(declare-fun d!2055964 () Bool)

(assert (= bs!1672283 (and d!2055964 b!6550715)))

(declare-fun lambda!363860 () Int)

(assert (=> bs!1672283 (not (= lambda!363860 lambda!363854))))

(declare-fun bs!1672284 () Bool)

(assert (= bs!1672284 (and d!2055964 b!6550710)))

(assert (=> bs!1672284 (not (= lambda!363860 lambda!363853))))

(declare-fun bs!1672285 () Bool)

(assert (= bs!1672285 (and d!2055964 b!6550625)))

(assert (=> bs!1672285 (not (= lambda!363860 lambda!363841))))

(assert (=> bs!1672285 (= lambda!363860 lambda!363840)))

(declare-fun bs!1672286 () Bool)

(assert (= bs!1672286 (and d!2055964 b!6550588)))

(assert (=> bs!1672286 (= (= (regOne!33362 r!7292) lt!2402353) (= lambda!363860 lambda!363845))))

(assert (=> d!2055964 true))

(assert (=> d!2055964 true))

(assert (=> d!2055964 true))

(assert (=> d!2055964 (= (isDefined!13019 (findConcatSeparation!2730 (regOne!33362 r!7292) (regTwo!33362 r!7292) Nil!65451 s!2326 s!2326)) (Exists!3495 lambda!363860))))

(declare-fun lt!2402425 () Unit!159035)

(declare-fun choose!48734 (Regex!16425 Regex!16425 List!65575) Unit!159035)

(assert (=> d!2055964 (= lt!2402425 (choose!48734 (regOne!33362 r!7292) (regTwo!33362 r!7292) s!2326))))

(assert (=> d!2055964 (validRegex!8161 (regOne!33362 r!7292))))

(assert (=> d!2055964 (= (lemmaFindConcatSeparationEquivalentToExists!2494 (regOne!33362 r!7292) (regTwo!33362 r!7292) s!2326) lt!2402425)))

(declare-fun bs!1672287 () Bool)

(assert (= bs!1672287 d!2055964))

(assert (=> bs!1672287 m!7333118))

(declare-fun m!7333424 () Bool)

(assert (=> bs!1672287 m!7333424))

(assert (=> bs!1672287 m!7333418))

(assert (=> bs!1672287 m!7333118))

(assert (=> bs!1672287 m!7333120))

(declare-fun m!7333426 () Bool)

(assert (=> bs!1672287 m!7333426))

(assert (=> b!6550625 d!2055964))

(declare-fun bs!1672290 () Bool)

(declare-fun d!2055966 () Bool)

(assert (= bs!1672290 (and d!2055966 b!6550715)))

(declare-fun lambda!363865 () Int)

(assert (=> bs!1672290 (not (= lambda!363865 lambda!363854))))

(declare-fun bs!1672291 () Bool)

(assert (= bs!1672291 (and d!2055966 b!6550710)))

(assert (=> bs!1672291 (not (= lambda!363865 lambda!363853))))

(declare-fun bs!1672292 () Bool)

(assert (= bs!1672292 (and d!2055966 d!2055964)))

(assert (=> bs!1672292 (= lambda!363865 lambda!363860)))

(declare-fun bs!1672293 () Bool)

(assert (= bs!1672293 (and d!2055966 b!6550625)))

(assert (=> bs!1672293 (not (= lambda!363865 lambda!363841))))

(assert (=> bs!1672293 (= lambda!363865 lambda!363840)))

(declare-fun bs!1672294 () Bool)

(assert (= bs!1672294 (and d!2055966 b!6550588)))

(assert (=> bs!1672294 (= (= (regOne!33362 r!7292) lt!2402353) (= lambda!363865 lambda!363845))))

(assert (=> d!2055966 true))

(assert (=> d!2055966 true))

(assert (=> d!2055966 true))

(declare-fun lambda!363866 () Int)

(assert (=> bs!1672290 (= (and (= (regOne!33362 r!7292) (regOne!33362 lt!2402338)) (= (regTwo!33362 r!7292) (regTwo!33362 lt!2402338))) (= lambda!363866 lambda!363854))))

(assert (=> bs!1672291 (not (= lambda!363866 lambda!363853))))

(assert (=> bs!1672292 (not (= lambda!363866 lambda!363860))))

(assert (=> bs!1672293 (= lambda!363866 lambda!363841)))

(declare-fun bs!1672295 () Bool)

(assert (= bs!1672295 d!2055966))

(assert (=> bs!1672295 (not (= lambda!363866 lambda!363865))))

(assert (=> bs!1672293 (not (= lambda!363866 lambda!363840))))

(assert (=> bs!1672294 (not (= lambda!363866 lambda!363845))))

(assert (=> d!2055966 true))

(assert (=> d!2055966 true))

(assert (=> d!2055966 true))

(assert (=> d!2055966 (= (Exists!3495 lambda!363865) (Exists!3495 lambda!363866))))

(declare-fun lt!2402437 () Unit!159035)

(declare-fun choose!48735 (Regex!16425 Regex!16425 List!65575) Unit!159035)

(assert (=> d!2055966 (= lt!2402437 (choose!48735 (regOne!33362 r!7292) (regTwo!33362 r!7292) s!2326))))

(assert (=> d!2055966 (validRegex!8161 (regOne!33362 r!7292))))

(assert (=> d!2055966 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2032 (regOne!33362 r!7292) (regTwo!33362 r!7292) s!2326) lt!2402437)))

(declare-fun m!7333450 () Bool)

(assert (=> bs!1672295 m!7333450))

(declare-fun m!7333452 () Bool)

(assert (=> bs!1672295 m!7333452))

(declare-fun m!7333454 () Bool)

(assert (=> bs!1672295 m!7333454))

(assert (=> bs!1672295 m!7333418))

(assert (=> b!6550625 d!2055966))

(declare-fun d!2055974 () Bool)

(declare-fun isEmpty!37682 (Option!16316) Bool)

(assert (=> d!2055974 (= (isDefined!13019 (findConcatSeparation!2730 (regOne!33362 r!7292) (regTwo!33362 r!7292) Nil!65451 s!2326 s!2326)) (not (isEmpty!37682 (findConcatSeparation!2730 (regOne!33362 r!7292) (regTwo!33362 r!7292) Nil!65451 s!2326 s!2326))))))

(declare-fun bs!1672296 () Bool)

(assert (= bs!1672296 d!2055974))

(assert (=> bs!1672296 m!7333118))

(declare-fun m!7333456 () Bool)

(assert (=> bs!1672296 m!7333456))

(assert (=> b!6550625 d!2055974))

(assert (=> b!6550604 d!2055948))

(declare-fun b!6550949 () Bool)

(declare-fun e!3966218 () Bool)

(assert (=> b!6550949 (= e!3966218 (nullable!6418 (regOne!33362 (reg!16754 (regOne!33362 r!7292)))))))

(declare-fun b!6550950 () Bool)

(declare-fun c!1203316 () Bool)

(assert (=> b!6550950 (= c!1203316 e!3966218)))

(declare-fun res!2687605 () Bool)

(assert (=> b!6550950 (=> (not res!2687605) (not e!3966218))))

(assert (=> b!6550950 (= res!2687605 ((_ is Concat!25270) (reg!16754 (regOne!33362 r!7292))))))

(declare-fun e!3966220 () (InoxSet Context!11618))

(declare-fun e!3966216 () (InoxSet Context!11618))

(assert (=> b!6550950 (= e!3966220 e!3966216)))

(declare-fun b!6550951 () Bool)

(declare-fun e!3966221 () (InoxSet Context!11618))

(declare-fun call!569781 () (InoxSet Context!11618))

(assert (=> b!6550951 (= e!3966221 call!569781)))

(declare-fun bm!569771 () Bool)

(declare-fun call!569779 () List!65574)

(declare-fun call!569780 () List!65574)

(assert (=> bm!569771 (= call!569779 call!569780)))

(declare-fun call!569777 () (InoxSet Context!11618))

(declare-fun c!1203319 () Bool)

(declare-fun bm!569772 () Bool)

(assert (=> bm!569772 (= call!569777 (derivationStepZipperDown!1673 (ite c!1203319 (regTwo!33363 (reg!16754 (regOne!33362 r!7292))) (regOne!33362 (reg!16754 (regOne!33362 r!7292)))) (ite c!1203319 lt!2402366 (Context!11619 call!569780)) (h!71899 s!2326)))))

(declare-fun d!2055976 () Bool)

(declare-fun c!1203317 () Bool)

(assert (=> d!2055976 (= c!1203317 (and ((_ is ElementMatch!16425) (reg!16754 (regOne!33362 r!7292))) (= (c!1203224 (reg!16754 (regOne!33362 r!7292))) (h!71899 s!2326))))))

(declare-fun e!3966217 () (InoxSet Context!11618))

(assert (=> d!2055976 (= (derivationStepZipperDown!1673 (reg!16754 (regOne!33362 r!7292)) lt!2402366 (h!71899 s!2326)) e!3966217)))

(declare-fun c!1203318 () Bool)

(declare-fun call!569776 () (InoxSet Context!11618))

(declare-fun bm!569773 () Bool)

(assert (=> bm!569773 (= call!569776 (derivationStepZipperDown!1673 (ite c!1203319 (regOne!33363 (reg!16754 (regOne!33362 r!7292))) (ite c!1203316 (regTwo!33362 (reg!16754 (regOne!33362 r!7292))) (ite c!1203318 (regOne!33362 (reg!16754 (regOne!33362 r!7292))) (reg!16754 (reg!16754 (regOne!33362 r!7292)))))) (ite (or c!1203319 c!1203316) lt!2402366 (Context!11619 call!569779)) (h!71899 s!2326)))))

(declare-fun b!6550952 () Bool)

(declare-fun c!1203315 () Bool)

(assert (=> b!6550952 (= c!1203315 ((_ is Star!16425) (reg!16754 (regOne!33362 r!7292))))))

(declare-fun e!3966219 () (InoxSet Context!11618))

(assert (=> b!6550952 (= e!3966219 e!3966221)))

(declare-fun bm!569774 () Bool)

(declare-fun $colon$colon!2266 (List!65574 Regex!16425) List!65574)

(assert (=> bm!569774 (= call!569780 ($colon$colon!2266 (exprs!6309 lt!2402366) (ite (or c!1203316 c!1203318) (regTwo!33362 (reg!16754 (regOne!33362 r!7292))) (reg!16754 (regOne!33362 r!7292)))))))

(declare-fun b!6550953 () Bool)

(assert (=> b!6550953 (= e!3966221 ((as const (Array Context!11618 Bool)) false))))

(declare-fun b!6550954 () Bool)

(assert (=> b!6550954 (= e!3966219 call!569781)))

(declare-fun bm!569775 () Bool)

(declare-fun call!569778 () (InoxSet Context!11618))

(assert (=> bm!569775 (= call!569778 call!569776)))

(declare-fun b!6550955 () Bool)

(assert (=> b!6550955 (= e!3966217 (store ((as const (Array Context!11618 Bool)) false) lt!2402366 true))))

(declare-fun bm!569776 () Bool)

(assert (=> bm!569776 (= call!569781 call!569778)))

(declare-fun b!6550956 () Bool)

(assert (=> b!6550956 (= e!3966216 ((_ map or) call!569777 call!569778))))

(declare-fun b!6550957 () Bool)

(assert (=> b!6550957 (= e!3966220 ((_ map or) call!569776 call!569777))))

(declare-fun b!6550958 () Bool)

(assert (=> b!6550958 (= e!3966216 e!3966219)))

(assert (=> b!6550958 (= c!1203318 ((_ is Concat!25270) (reg!16754 (regOne!33362 r!7292))))))

(declare-fun b!6550959 () Bool)

(assert (=> b!6550959 (= e!3966217 e!3966220)))

(assert (=> b!6550959 (= c!1203319 ((_ is Union!16425) (reg!16754 (regOne!33362 r!7292))))))

(assert (= (and d!2055976 c!1203317) b!6550955))

(assert (= (and d!2055976 (not c!1203317)) b!6550959))

(assert (= (and b!6550959 c!1203319) b!6550957))

(assert (= (and b!6550959 (not c!1203319)) b!6550950))

(assert (= (and b!6550950 res!2687605) b!6550949))

(assert (= (and b!6550950 c!1203316) b!6550956))

(assert (= (and b!6550950 (not c!1203316)) b!6550958))

(assert (= (and b!6550958 c!1203318) b!6550954))

(assert (= (and b!6550958 (not c!1203318)) b!6550952))

(assert (= (and b!6550952 c!1203315) b!6550951))

(assert (= (and b!6550952 (not c!1203315)) b!6550953))

(assert (= (or b!6550954 b!6550951) bm!569771))

(assert (= (or b!6550954 b!6550951) bm!569776))

(assert (= (or b!6550956 bm!569771) bm!569774))

(assert (= (or b!6550956 bm!569776) bm!569775))

(assert (= (or b!6550957 b!6550956) bm!569772))

(assert (= (or b!6550957 bm!569775) bm!569773))

(declare-fun m!7333462 () Bool)

(assert (=> bm!569773 m!7333462))

(declare-fun m!7333464 () Bool)

(assert (=> b!6550949 m!7333464))

(declare-fun m!7333466 () Bool)

(assert (=> bm!569774 m!7333466))

(declare-fun m!7333468 () Bool)

(assert (=> bm!569772 m!7333468))

(assert (=> b!6550955 m!7333044))

(assert (=> b!6550611 d!2055976))

(declare-fun bs!1672304 () Bool)

(declare-fun b!6550962 () Bool)

(assert (= bs!1672304 (and b!6550962 b!6550715)))

(declare-fun lambda!363876 () Int)

(assert (=> bs!1672304 (not (= lambda!363876 lambda!363854))))

(declare-fun bs!1672305 () Bool)

(assert (= bs!1672305 (and b!6550962 d!2055966)))

(assert (=> bs!1672305 (not (= lambda!363876 lambda!363866))))

(declare-fun bs!1672306 () Bool)

(assert (= bs!1672306 (and b!6550962 b!6550710)))

(assert (=> bs!1672306 (= (and (= (reg!16754 r!7292) (reg!16754 lt!2402338)) (= r!7292 lt!2402338)) (= lambda!363876 lambda!363853))))

(declare-fun bs!1672307 () Bool)

(assert (= bs!1672307 (and b!6550962 d!2055964)))

(assert (=> bs!1672307 (not (= lambda!363876 lambda!363860))))

(declare-fun bs!1672308 () Bool)

(assert (= bs!1672308 (and b!6550962 b!6550625)))

(assert (=> bs!1672308 (not (= lambda!363876 lambda!363841))))

(assert (=> bs!1672305 (not (= lambda!363876 lambda!363865))))

(assert (=> bs!1672308 (not (= lambda!363876 lambda!363840))))

(declare-fun bs!1672311 () Bool)

(assert (= bs!1672311 (and b!6550962 b!6550588)))

(assert (=> bs!1672311 (not (= lambda!363876 lambda!363845))))

(assert (=> b!6550962 true))

(assert (=> b!6550962 true))

(declare-fun bs!1672315 () Bool)

(declare-fun b!6550967 () Bool)

(assert (= bs!1672315 (and b!6550967 b!6550715)))

(declare-fun lambda!363878 () Int)

(assert (=> bs!1672315 (= (and (= (regOne!33362 r!7292) (regOne!33362 lt!2402338)) (= (regTwo!33362 r!7292) (regTwo!33362 lt!2402338))) (= lambda!363878 lambda!363854))))

(declare-fun bs!1672316 () Bool)

(assert (= bs!1672316 (and b!6550967 d!2055966)))

(assert (=> bs!1672316 (= lambda!363878 lambda!363866)))

(declare-fun bs!1672317 () Bool)

(assert (= bs!1672317 (and b!6550967 b!6550710)))

(assert (=> bs!1672317 (not (= lambda!363878 lambda!363853))))

(declare-fun bs!1672318 () Bool)

(assert (= bs!1672318 (and b!6550967 d!2055964)))

(assert (=> bs!1672318 (not (= lambda!363878 lambda!363860))))

(declare-fun bs!1672319 () Bool)

(assert (= bs!1672319 (and b!6550967 b!6550625)))

(assert (=> bs!1672319 (= lambda!363878 lambda!363841)))

(assert (=> bs!1672316 (not (= lambda!363878 lambda!363865))))

(declare-fun bs!1672320 () Bool)

(assert (= bs!1672320 (and b!6550967 b!6550962)))

(assert (=> bs!1672320 (not (= lambda!363878 lambda!363876))))

(assert (=> bs!1672319 (not (= lambda!363878 lambda!363840))))

(declare-fun bs!1672321 () Bool)

(assert (= bs!1672321 (and b!6550967 b!6550588)))

(assert (=> bs!1672321 (not (= lambda!363878 lambda!363845))))

(assert (=> b!6550967 true))

(assert (=> b!6550967 true))

(declare-fun b!6550960 () Bool)

(declare-fun e!3966226 () Bool)

(declare-fun call!569783 () Bool)

(assert (=> b!6550960 (= e!3966226 call!569783)))

(declare-fun d!2055980 () Bool)

(declare-fun c!1203323 () Bool)

(assert (=> d!2055980 (= c!1203323 ((_ is EmptyExpr!16425) r!7292))))

(assert (=> d!2055980 (= (matchRSpec!3526 r!7292 s!2326) e!3966226)))

(declare-fun b!6550961 () Bool)

(declare-fun res!2687607 () Bool)

(declare-fun e!3966222 () Bool)

(assert (=> b!6550961 (=> res!2687607 e!3966222)))

(assert (=> b!6550961 (= res!2687607 call!569783)))

(declare-fun e!3966223 () Bool)

(assert (=> b!6550961 (= e!3966223 e!3966222)))

(declare-fun call!569782 () Bool)

(assert (=> b!6550962 (= e!3966222 call!569782)))

(declare-fun b!6550963 () Bool)

(declare-fun e!3966225 () Bool)

(assert (=> b!6550963 (= e!3966226 e!3966225)))

(declare-fun res!2687606 () Bool)

(assert (=> b!6550963 (= res!2687606 (not ((_ is EmptyLang!16425) r!7292)))))

(assert (=> b!6550963 (=> (not res!2687606) (not e!3966225))))

(declare-fun b!6550964 () Bool)

(declare-fun c!1203320 () Bool)

(assert (=> b!6550964 (= c!1203320 ((_ is Union!16425) r!7292))))

(declare-fun e!3966224 () Bool)

(declare-fun e!3966228 () Bool)

(assert (=> b!6550964 (= e!3966224 e!3966228)))

(declare-fun b!6550965 () Bool)

(declare-fun e!3966227 () Bool)

(assert (=> b!6550965 (= e!3966227 (matchRSpec!3526 (regTwo!33363 r!7292) s!2326))))

(declare-fun b!6550966 () Bool)

(assert (=> b!6550966 (= e!3966228 e!3966223)))

(declare-fun c!1203322 () Bool)

(assert (=> b!6550966 (= c!1203322 ((_ is Star!16425) r!7292))))

(assert (=> b!6550967 (= e!3966223 call!569782)))

(declare-fun b!6550968 () Bool)

(assert (=> b!6550968 (= e!3966228 e!3966227)))

(declare-fun res!2687608 () Bool)

(assert (=> b!6550968 (= res!2687608 (matchRSpec!3526 (regOne!33363 r!7292) s!2326))))

(assert (=> b!6550968 (=> res!2687608 e!3966227)))

(declare-fun b!6550969 () Bool)

(declare-fun c!1203321 () Bool)

(assert (=> b!6550969 (= c!1203321 ((_ is ElementMatch!16425) r!7292))))

(assert (=> b!6550969 (= e!3966225 e!3966224)))

(declare-fun b!6550970 () Bool)

(assert (=> b!6550970 (= e!3966224 (= s!2326 (Cons!65451 (c!1203224 r!7292) Nil!65451)))))

(declare-fun bm!569777 () Bool)

(assert (=> bm!569777 (= call!569782 (Exists!3495 (ite c!1203322 lambda!363876 lambda!363878)))))

(declare-fun bm!569778 () Bool)

(assert (=> bm!569778 (= call!569783 (isEmpty!37680 s!2326))))

(assert (= (and d!2055980 c!1203323) b!6550960))

(assert (= (and d!2055980 (not c!1203323)) b!6550963))

(assert (= (and b!6550963 res!2687606) b!6550969))

(assert (= (and b!6550969 c!1203321) b!6550970))

(assert (= (and b!6550969 (not c!1203321)) b!6550964))

(assert (= (and b!6550964 c!1203320) b!6550968))

(assert (= (and b!6550964 (not c!1203320)) b!6550966))

(assert (= (and b!6550968 (not res!2687608)) b!6550965))

(assert (= (and b!6550966 c!1203322) b!6550961))

(assert (= (and b!6550966 (not c!1203322)) b!6550967))

(assert (= (and b!6550961 (not res!2687607)) b!6550962))

(assert (= (or b!6550962 b!6550967) bm!569777))

(assert (= (or b!6550960 b!6550961) bm!569778))

(declare-fun m!7333486 () Bool)

(assert (=> b!6550965 m!7333486))

(declare-fun m!7333488 () Bool)

(assert (=> b!6550968 m!7333488))

(declare-fun m!7333490 () Bool)

(assert (=> bm!569777 m!7333490))

(assert (=> bm!569778 m!7333188))

(assert (=> b!6550613 d!2055980))

(declare-fun b!6550971 () Bool)

(declare-fun e!3966229 () Bool)

(assert (=> b!6550971 (= e!3966229 (nullable!6418 r!7292))))

(declare-fun b!6550972 () Bool)

(declare-fun res!2687616 () Bool)

(declare-fun e!3966232 () Bool)

(assert (=> b!6550972 (=> (not res!2687616) (not e!3966232))))

(declare-fun call!569784 () Bool)

(assert (=> b!6550972 (= res!2687616 (not call!569784))))

(declare-fun d!2055990 () Bool)

(declare-fun e!3966233 () Bool)

(assert (=> d!2055990 e!3966233))

(declare-fun c!1203326 () Bool)

(assert (=> d!2055990 (= c!1203326 ((_ is EmptyExpr!16425) r!7292))))

(declare-fun lt!2402445 () Bool)

(assert (=> d!2055990 (= lt!2402445 e!3966229)))

(declare-fun c!1203325 () Bool)

(assert (=> d!2055990 (= c!1203325 (isEmpty!37680 s!2326))))

(assert (=> d!2055990 (validRegex!8161 r!7292)))

(assert (=> d!2055990 (= (matchR!8608 r!7292 s!2326) lt!2402445)))

(declare-fun b!6550973 () Bool)

(assert (=> b!6550973 (= e!3966232 (= (head!13300 s!2326) (c!1203224 r!7292)))))

(declare-fun b!6550974 () Bool)

(declare-fun e!3966235 () Bool)

(assert (=> b!6550974 (= e!3966233 e!3966235)))

(declare-fun c!1203324 () Bool)

(assert (=> b!6550974 (= c!1203324 ((_ is EmptyLang!16425) r!7292))))

(declare-fun b!6550975 () Bool)

(declare-fun res!2687609 () Bool)

(assert (=> b!6550975 (=> (not res!2687609) (not e!3966232))))

(assert (=> b!6550975 (= res!2687609 (isEmpty!37680 (tail!12385 s!2326)))))

(declare-fun b!6550976 () Bool)

(assert (=> b!6550976 (= e!3966235 (not lt!2402445))))

(declare-fun b!6550977 () Bool)

(declare-fun res!2687611 () Bool)

(declare-fun e!3966231 () Bool)

(assert (=> b!6550977 (=> res!2687611 e!3966231)))

(assert (=> b!6550977 (= res!2687611 (not ((_ is ElementMatch!16425) r!7292)))))

(assert (=> b!6550977 (= e!3966235 e!3966231)))

(declare-fun bm!569779 () Bool)

(assert (=> bm!569779 (= call!569784 (isEmpty!37680 s!2326))))

(declare-fun b!6550978 () Bool)

(declare-fun res!2687615 () Bool)

(assert (=> b!6550978 (=> res!2687615 e!3966231)))

(assert (=> b!6550978 (= res!2687615 e!3966232)))

(declare-fun res!2687612 () Bool)

(assert (=> b!6550978 (=> (not res!2687612) (not e!3966232))))

(assert (=> b!6550978 (= res!2687612 lt!2402445)))

(declare-fun b!6550979 () Bool)

(assert (=> b!6550979 (= e!3966229 (matchR!8608 (derivativeStep!5108 r!7292 (head!13300 s!2326)) (tail!12385 s!2326)))))

(declare-fun b!6550980 () Bool)

(assert (=> b!6550980 (= e!3966233 (= lt!2402445 call!569784))))

(declare-fun b!6550981 () Bool)

(declare-fun e!3966234 () Bool)

(assert (=> b!6550981 (= e!3966231 e!3966234)))

(declare-fun res!2687613 () Bool)

(assert (=> b!6550981 (=> (not res!2687613) (not e!3966234))))

(assert (=> b!6550981 (= res!2687613 (not lt!2402445))))

(declare-fun b!6550982 () Bool)

(declare-fun e!3966230 () Bool)

(assert (=> b!6550982 (= e!3966230 (not (= (head!13300 s!2326) (c!1203224 r!7292))))))

(declare-fun b!6550983 () Bool)

(declare-fun res!2687614 () Bool)

(assert (=> b!6550983 (=> res!2687614 e!3966230)))

(assert (=> b!6550983 (= res!2687614 (not (isEmpty!37680 (tail!12385 s!2326))))))

(declare-fun b!6550984 () Bool)

(assert (=> b!6550984 (= e!3966234 e!3966230)))

(declare-fun res!2687610 () Bool)

(assert (=> b!6550984 (=> res!2687610 e!3966230)))

(assert (=> b!6550984 (= res!2687610 call!569784)))

(assert (= (and d!2055990 c!1203325) b!6550971))

(assert (= (and d!2055990 (not c!1203325)) b!6550979))

(assert (= (and d!2055990 c!1203326) b!6550980))

(assert (= (and d!2055990 (not c!1203326)) b!6550974))

(assert (= (and b!6550974 c!1203324) b!6550976))

(assert (= (and b!6550974 (not c!1203324)) b!6550977))

(assert (= (and b!6550977 (not res!2687611)) b!6550978))

(assert (= (and b!6550978 res!2687612) b!6550972))

(assert (= (and b!6550972 res!2687616) b!6550975))

(assert (= (and b!6550975 res!2687609) b!6550973))

(assert (= (and b!6550978 (not res!2687615)) b!6550981))

(assert (= (and b!6550981 res!2687613) b!6550984))

(assert (= (and b!6550984 (not res!2687610)) b!6550983))

(assert (= (and b!6550983 (not res!2687614)) b!6550982))

(assert (= (or b!6550980 b!6550972 b!6550984) bm!569779))

(assert (=> b!6550979 m!7333192))

(assert (=> b!6550979 m!7333192))

(declare-fun m!7333492 () Bool)

(assert (=> b!6550979 m!7333492))

(assert (=> b!6550979 m!7333196))

(assert (=> b!6550979 m!7333492))

(assert (=> b!6550979 m!7333196))

(declare-fun m!7333494 () Bool)

(assert (=> b!6550979 m!7333494))

(declare-fun m!7333496 () Bool)

(assert (=> b!6550971 m!7333496))

(assert (=> b!6550982 m!7333192))

(assert (=> b!6550973 m!7333192))

(assert (=> bm!569779 m!7333188))

(assert (=> b!6550983 m!7333196))

(assert (=> b!6550983 m!7333196))

(assert (=> b!6550983 m!7333360))

(assert (=> b!6550975 m!7333196))

(assert (=> b!6550975 m!7333196))

(assert (=> b!6550975 m!7333360))

(assert (=> d!2055990 m!7333188))

(assert (=> d!2055990 m!7333150))

(assert (=> b!6550613 d!2055990))

(declare-fun d!2055992 () Bool)

(assert (=> d!2055992 (= (matchR!8608 r!7292 s!2326) (matchRSpec!3526 r!7292 s!2326))))

(declare-fun lt!2402446 () Unit!159035)

(assert (=> d!2055992 (= lt!2402446 (choose!48730 r!7292 s!2326))))

(assert (=> d!2055992 (validRegex!8161 r!7292)))

(assert (=> d!2055992 (= (mainMatchTheorem!3526 r!7292 s!2326) lt!2402446)))

(declare-fun bs!1672322 () Bool)

(assert (= bs!1672322 d!2055992))

(assert (=> bs!1672322 m!7333096))

(assert (=> bs!1672322 m!7333094))

(declare-fun m!7333498 () Bool)

(assert (=> bs!1672322 m!7333498))

(assert (=> bs!1672322 m!7333150))

(assert (=> b!6550613 d!2055992))

(declare-fun bs!1672323 () Bool)

(declare-fun d!2055994 () Bool)

(assert (= bs!1672323 (and d!2055994 b!6550609)))

(declare-fun lambda!363885 () Int)

(assert (=> bs!1672323 (= (= (exprs!6309 lt!2402366) lt!2402340) (= lambda!363885 lambda!363843))))

(assert (=> d!2055994 true))

(assert (=> d!2055994 (= (appendTo!186 lt!2402368 lt!2402366) (map!14946 lt!2402368 lambda!363885))))

(declare-fun bs!1672324 () Bool)

(assert (= bs!1672324 d!2055994))

(declare-fun m!7333500 () Bool)

(assert (=> bs!1672324 m!7333500))

(assert (=> b!6550609 d!2055994))

(declare-fun b!6551027 () Bool)

(declare-fun e!3966259 () List!65574)

(assert (=> b!6551027 (= e!3966259 lt!2402340)))

(declare-fun b!6551029 () Bool)

(declare-fun res!2687637 () Bool)

(declare-fun e!3966258 () Bool)

(assert (=> b!6551029 (=> (not res!2687637) (not e!3966258))))

(declare-fun lt!2402451 () List!65574)

(declare-fun size!40498 (List!65574) Int)

(assert (=> b!6551029 (= res!2687637 (= (size!40498 lt!2402451) (+ (size!40498 lt!2402350) (size!40498 lt!2402340))))))

(declare-fun d!2055996 () Bool)

(assert (=> d!2055996 e!3966258))

(declare-fun res!2687638 () Bool)

(assert (=> d!2055996 (=> (not res!2687638) (not e!3966258))))

(declare-fun content!12556 (List!65574) (InoxSet Regex!16425))

(assert (=> d!2055996 (= res!2687638 (= (content!12556 lt!2402451) ((_ map or) (content!12556 lt!2402350) (content!12556 lt!2402340))))))

(assert (=> d!2055996 (= lt!2402451 e!3966259)))

(declare-fun c!1203338 () Bool)

(assert (=> d!2055996 (= c!1203338 ((_ is Nil!65450) lt!2402350))))

(assert (=> d!2055996 (= (++!14552 lt!2402350 lt!2402340) lt!2402451)))

(declare-fun b!6551030 () Bool)

(assert (=> b!6551030 (= e!3966258 (or (not (= lt!2402340 Nil!65450)) (= lt!2402451 lt!2402350)))))

(declare-fun b!6551028 () Bool)

(assert (=> b!6551028 (= e!3966259 (Cons!65450 (h!71898 lt!2402350) (++!14552 (t!379216 lt!2402350) lt!2402340)))))

(assert (= (and d!2055996 c!1203338) b!6551027))

(assert (= (and d!2055996 (not c!1203338)) b!6551028))

(assert (= (and d!2055996 res!2687638) b!6551029))

(assert (= (and b!6551029 res!2687637) b!6551030))

(declare-fun m!7333502 () Bool)

(assert (=> b!6551029 m!7333502))

(declare-fun m!7333504 () Bool)

(assert (=> b!6551029 m!7333504))

(declare-fun m!7333506 () Bool)

(assert (=> b!6551029 m!7333506))

(declare-fun m!7333508 () Bool)

(assert (=> d!2055996 m!7333508))

(declare-fun m!7333510 () Bool)

(assert (=> d!2055996 m!7333510))

(declare-fun m!7333512 () Bool)

(assert (=> d!2055996 m!7333512))

(declare-fun m!7333514 () Bool)

(assert (=> b!6551028 m!7333514))

(assert (=> b!6550609 d!2055996))

(declare-fun d!2055998 () Bool)

(declare-fun forall!15597 (List!65574 Int) Bool)

(assert (=> d!2055998 (forall!15597 (++!14552 lt!2402350 lt!2402340) lambda!363844)))

(declare-fun lt!2402454 () Unit!159035)

(declare-fun choose!48740 (List!65574 List!65574 Int) Unit!159035)

(assert (=> d!2055998 (= lt!2402454 (choose!48740 lt!2402350 lt!2402340 lambda!363844))))

(assert (=> d!2055998 (forall!15597 lt!2402350 lambda!363844)))

(assert (=> d!2055998 (= (lemmaConcatPreservesForall!398 lt!2402350 lt!2402340 lambda!363844) lt!2402454)))

(declare-fun bs!1672329 () Bool)

(assert (= bs!1672329 d!2055998))

(assert (=> bs!1672329 m!7333060))

(assert (=> bs!1672329 m!7333060))

(declare-fun m!7333516 () Bool)

(assert (=> bs!1672329 m!7333516))

(declare-fun m!7333518 () Bool)

(assert (=> bs!1672329 m!7333518))

(declare-fun m!7333520 () Bool)

(assert (=> bs!1672329 m!7333520))

(assert (=> b!6550609 d!2055998))

(declare-fun d!2056000 () Bool)

(declare-fun choose!48741 ((InoxSet Context!11618) Int) (InoxSet Context!11618))

(assert (=> d!2056000 (= (map!14946 lt!2402368 lambda!363843) (choose!48741 lt!2402368 lambda!363843))))

(declare-fun bs!1672330 () Bool)

(assert (= bs!1672330 d!2056000))

(declare-fun m!7333522 () Bool)

(assert (=> bs!1672330 m!7333522))

(assert (=> b!6550609 d!2056000))

(declare-fun d!2056002 () Bool)

(declare-fun dynLambda!26021 (Int Context!11618) Context!11618)

(assert (=> d!2056002 (= (map!14946 lt!2402368 lambda!363843) (store ((as const (Array Context!11618 Bool)) false) (dynLambda!26021 lambda!363843 lt!2402367) true))))

(declare-fun lt!2402457 () Unit!159035)

(declare-fun choose!48742 ((InoxSet Context!11618) Context!11618 Int) Unit!159035)

(assert (=> d!2056002 (= lt!2402457 (choose!48742 lt!2402368 lt!2402367 lambda!363843))))

(assert (=> d!2056002 (= lt!2402368 (store ((as const (Array Context!11618 Bool)) false) lt!2402367 true))))

(assert (=> d!2056002 (= (lemmaMapOnSingletonSet!208 lt!2402368 lt!2402367 lambda!363843) lt!2402457)))

(declare-fun b_lambda!247923 () Bool)

(assert (=> (not b_lambda!247923) (not d!2056002)))

(declare-fun bs!1672336 () Bool)

(assert (= bs!1672336 d!2056002))

(assert (=> bs!1672336 m!7333050))

(assert (=> bs!1672336 m!7333062))

(declare-fun m!7333530 () Bool)

(assert (=> bs!1672336 m!7333530))

(declare-fun m!7333532 () Bool)

(assert (=> bs!1672336 m!7333532))

(declare-fun m!7333534 () Bool)

(assert (=> bs!1672336 m!7333534))

(assert (=> bs!1672336 m!7333530))

(assert (=> b!6550609 d!2056002))

(declare-fun d!2056006 () Bool)

(declare-fun lt!2402460 () Regex!16425)

(assert (=> d!2056006 (validRegex!8161 lt!2402460)))

(assert (=> d!2056006 (= lt!2402460 (generalisedUnion!2269 (unfocusZipperList!1846 (Cons!65452 lt!2402359 Nil!65452))))))

(assert (=> d!2056006 (= (unfocusZipper!2167 (Cons!65452 lt!2402359 Nil!65452)) lt!2402460)))

(declare-fun bs!1672337 () Bool)

(assert (= bs!1672337 d!2056006))

(declare-fun m!7333536 () Bool)

(assert (=> bs!1672337 m!7333536))

(declare-fun m!7333538 () Bool)

(assert (=> bs!1672337 m!7333538))

(assert (=> bs!1672337 m!7333538))

(declare-fun m!7333540 () Bool)

(assert (=> bs!1672337 m!7333540))

(assert (=> b!6550608 d!2056006))

(declare-fun b!6551042 () Bool)

(declare-fun e!3966270 () Option!16316)

(assert (=> b!6551042 (= e!3966270 (Some!16315 (tuple2!66809 Nil!65451 s!2326)))))

(declare-fun d!2056008 () Bool)

(declare-fun e!3966269 () Bool)

(assert (=> d!2056008 e!3966269))

(declare-fun res!2687642 () Bool)

(assert (=> d!2056008 (=> res!2687642 e!3966269)))

(declare-fun e!3966267 () Bool)

(assert (=> d!2056008 (= res!2687642 e!3966267)))

(declare-fun res!2687645 () Bool)

(assert (=> d!2056008 (=> (not res!2687645) (not e!3966267))))

(declare-fun lt!2402463 () Option!16316)

(assert (=> d!2056008 (= res!2687645 (isDefined!13019 lt!2402463))))

(assert (=> d!2056008 (= lt!2402463 e!3966270)))

(declare-fun c!1203344 () Bool)

(declare-fun e!3966268 () Bool)

(assert (=> d!2056008 (= c!1203344 e!3966268)))

(declare-fun res!2687646 () Bool)

(assert (=> d!2056008 (=> (not res!2687646) (not e!3966268))))

(assert (=> d!2056008 (= res!2687646 (matchR!8608 lt!2402353 Nil!65451))))

(assert (=> d!2056008 (validRegex!8161 lt!2402353)))

(assert (=> d!2056008 (= (findConcatSeparation!2730 lt!2402353 (regTwo!33362 r!7292) Nil!65451 s!2326 s!2326) lt!2402463)))

(declare-fun b!6551043 () Bool)

(declare-fun e!3966271 () Option!16316)

(assert (=> b!6551043 (= e!3966271 None!16315)))

(declare-fun b!6551044 () Bool)

(declare-fun res!2687643 () Bool)

(assert (=> b!6551044 (=> (not res!2687643) (not e!3966267))))

(assert (=> b!6551044 (= res!2687643 (matchR!8608 lt!2402353 (_1!36707 (get!22719 lt!2402463))))))

(declare-fun b!6551045 () Bool)

(declare-fun res!2687644 () Bool)

(assert (=> b!6551045 (=> (not res!2687644) (not e!3966267))))

(assert (=> b!6551045 (= res!2687644 (matchR!8608 (regTwo!33362 r!7292) (_2!36707 (get!22719 lt!2402463))))))

(declare-fun b!6551046 () Bool)

(declare-fun lt!2402462 () Unit!159035)

(declare-fun lt!2402461 () Unit!159035)

(assert (=> b!6551046 (= lt!2402462 lt!2402461)))

(assert (=> b!6551046 (= (++!14553 (++!14553 Nil!65451 (Cons!65451 (h!71899 s!2326) Nil!65451)) (t!379217 s!2326)) s!2326)))

(assert (=> b!6551046 (= lt!2402461 (lemmaMoveElementToOtherListKeepsConcatEq!2568 Nil!65451 (h!71899 s!2326) (t!379217 s!2326) s!2326))))

(assert (=> b!6551046 (= e!3966271 (findConcatSeparation!2730 lt!2402353 (regTwo!33362 r!7292) (++!14553 Nil!65451 (Cons!65451 (h!71899 s!2326) Nil!65451)) (t!379217 s!2326) s!2326))))

(declare-fun b!6551047 () Bool)

(assert (=> b!6551047 (= e!3966269 (not (isDefined!13019 lt!2402463)))))

(declare-fun b!6551048 () Bool)

(assert (=> b!6551048 (= e!3966270 e!3966271)))

(declare-fun c!1203343 () Bool)

(assert (=> b!6551048 (= c!1203343 ((_ is Nil!65451) s!2326))))

(declare-fun b!6551049 () Bool)

(assert (=> b!6551049 (= e!3966267 (= (++!14553 (_1!36707 (get!22719 lt!2402463)) (_2!36707 (get!22719 lt!2402463))) s!2326))))

(declare-fun b!6551050 () Bool)

(assert (=> b!6551050 (= e!3966268 (matchR!8608 (regTwo!33362 r!7292) s!2326))))

(assert (= (and d!2056008 res!2687646) b!6551050))

(assert (= (and d!2056008 c!1203344) b!6551042))

(assert (= (and d!2056008 (not c!1203344)) b!6551048))

(assert (= (and b!6551048 c!1203343) b!6551043))

(assert (= (and b!6551048 (not c!1203343)) b!6551046))

(assert (= (and d!2056008 res!2687645) b!6551044))

(assert (= (and b!6551044 res!2687643) b!6551045))

(assert (= (and b!6551045 res!2687644) b!6551049))

(assert (= (and d!2056008 (not res!2687642)) b!6551047))

(assert (=> b!6551050 m!7333396))

(declare-fun m!7333542 () Bool)

(assert (=> b!6551045 m!7333542))

(declare-fun m!7333544 () Bool)

(assert (=> b!6551045 m!7333544))

(assert (=> b!6551049 m!7333542))

(declare-fun m!7333546 () Bool)

(assert (=> b!6551049 m!7333546))

(assert (=> b!6551046 m!7333404))

(assert (=> b!6551046 m!7333404))

(assert (=> b!6551046 m!7333406))

(assert (=> b!6551046 m!7333408))

(assert (=> b!6551046 m!7333404))

(declare-fun m!7333548 () Bool)

(assert (=> b!6551046 m!7333548))

(assert (=> b!6551044 m!7333542))

(declare-fun m!7333550 () Bool)

(assert (=> b!6551044 m!7333550))

(declare-fun m!7333552 () Bool)

(assert (=> d!2056008 m!7333552))

(declare-fun m!7333554 () Bool)

(assert (=> d!2056008 m!7333554))

(assert (=> d!2056008 m!7333174))

(assert (=> b!6551047 m!7333552))

(assert (=> b!6550588 d!2056008))

(declare-fun d!2056010 () Bool)

(assert (=> d!2056010 (= (isDefined!13019 (findConcatSeparation!2730 lt!2402353 (regTwo!33362 r!7292) Nil!65451 s!2326 s!2326)) (not (isEmpty!37682 (findConcatSeparation!2730 lt!2402353 (regTwo!33362 r!7292) Nil!65451 s!2326 s!2326))))))

(declare-fun bs!1672338 () Bool)

(assert (= bs!1672338 d!2056010))

(assert (=> bs!1672338 m!7333154))

(declare-fun m!7333556 () Bool)

(assert (=> bs!1672338 m!7333556))

(assert (=> b!6550588 d!2056010))

(declare-fun d!2056012 () Bool)

(assert (=> d!2056012 (= (matchR!8608 (Concat!25270 (Concat!25270 (reg!16754 (regOne!33362 r!7292)) lt!2402375) (regTwo!33362 r!7292)) s!2326) (matchR!8608 (Concat!25270 (reg!16754 (regOne!33362 r!7292)) (Concat!25270 lt!2402375 (regTwo!33362 r!7292))) s!2326))))

(declare-fun lt!2402468 () Unit!159035)

(declare-fun choose!48743 (Regex!16425 Regex!16425 Regex!16425 List!65575) Unit!159035)

(assert (=> d!2056012 (= lt!2402468 (choose!48743 (reg!16754 (regOne!33362 r!7292)) lt!2402375 (regTwo!33362 r!7292) s!2326))))

(declare-fun e!3966288 () Bool)

(assert (=> d!2056012 e!3966288))

(declare-fun res!2687667 () Bool)

(assert (=> d!2056012 (=> (not res!2687667) (not e!3966288))))

(assert (=> d!2056012 (= res!2687667 (validRegex!8161 (reg!16754 (regOne!33362 r!7292))))))

(assert (=> d!2056012 (= (lemmaConcatAssociative!122 (reg!16754 (regOne!33362 r!7292)) lt!2402375 (regTwo!33362 r!7292) s!2326) lt!2402468)))

(declare-fun b!6551083 () Bool)

(declare-fun res!2687668 () Bool)

(assert (=> b!6551083 (=> (not res!2687668) (not e!3966288))))

(assert (=> b!6551083 (= res!2687668 (validRegex!8161 lt!2402375))))

(declare-fun b!6551084 () Bool)

(assert (=> b!6551084 (= e!3966288 (validRegex!8161 (regTwo!33362 r!7292)))))

(assert (= (and d!2056012 res!2687667) b!6551083))

(assert (= (and b!6551083 res!2687668) b!6551084))

(declare-fun m!7333558 () Bool)

(assert (=> d!2056012 m!7333558))

(declare-fun m!7333560 () Bool)

(assert (=> d!2056012 m!7333560))

(declare-fun m!7333562 () Bool)

(assert (=> d!2056012 m!7333562))

(declare-fun m!7333564 () Bool)

(assert (=> d!2056012 m!7333564))

(declare-fun m!7333566 () Bool)

(assert (=> b!6551083 m!7333566))

(assert (=> b!6551084 m!7333112))

(assert (=> b!6550588 d!2056012))

(declare-fun bs!1672340 () Bool)

(declare-fun d!2056014 () Bool)

(assert (= bs!1672340 (and d!2056014 b!6550609)))

(declare-fun lambda!363892 () Int)

(assert (=> bs!1672340 (= lambda!363892 lambda!363844)))

(assert (=> d!2056014 (matchZipper!2437 (store ((as const (Array Context!11618 Bool)) false) (Context!11619 (++!14552 (exprs!6309 lt!2402367) (exprs!6309 lt!2402366))) true) (++!14553 (_1!36707 lt!2402333) (_2!36707 lt!2402333)))))

(declare-fun lt!2402478 () Unit!159035)

(assert (=> d!2056014 (= lt!2402478 (lemmaConcatPreservesForall!398 (exprs!6309 lt!2402367) (exprs!6309 lt!2402366) lambda!363892))))

(declare-fun lt!2402477 () Unit!159035)

(declare-fun choose!48744 (Context!11618 Context!11618 List!65575 List!65575) Unit!159035)

(assert (=> d!2056014 (= lt!2402477 (choose!48744 lt!2402367 lt!2402366 (_1!36707 lt!2402333) (_2!36707 lt!2402333)))))

(assert (=> d!2056014 (matchZipper!2437 (store ((as const (Array Context!11618 Bool)) false) lt!2402367 true) (_1!36707 lt!2402333))))

(assert (=> d!2056014 (= (lemmaConcatenateContextMatchesConcatOfStrings!206 lt!2402367 lt!2402366 (_1!36707 lt!2402333) (_2!36707 lt!2402333)) lt!2402477)))

(declare-fun bs!1672341 () Bool)

(assert (= bs!1672341 d!2056014))

(assert (=> bs!1672341 m!7333050))

(declare-fun m!7333580 () Bool)

(assert (=> bs!1672341 m!7333580))

(declare-fun m!7333582 () Bool)

(assert (=> bs!1672341 m!7333582))

(assert (=> bs!1672341 m!7333146))

(declare-fun m!7333584 () Bool)

(assert (=> bs!1672341 m!7333584))

(assert (=> bs!1672341 m!7333582))

(declare-fun m!7333586 () Bool)

(assert (=> bs!1672341 m!7333586))

(assert (=> bs!1672341 m!7333050))

(declare-fun m!7333588 () Bool)

(assert (=> bs!1672341 m!7333588))

(declare-fun m!7333590 () Bool)

(assert (=> bs!1672341 m!7333590))

(assert (=> bs!1672341 m!7333146))

(assert (=> b!6550588 d!2056014))

(declare-fun bs!1672342 () Bool)

(declare-fun b!6551119 () Bool)

(assert (= bs!1672342 (and b!6551119 b!6550715)))

(declare-fun lambda!363893 () Int)

(assert (=> bs!1672342 (not (= lambda!363893 lambda!363854))))

(declare-fun bs!1672343 () Bool)

(assert (= bs!1672343 (and b!6551119 d!2055966)))

(assert (=> bs!1672343 (not (= lambda!363893 lambda!363866))))

(declare-fun bs!1672344 () Bool)

(assert (= bs!1672344 (and b!6551119 b!6550710)))

(assert (=> bs!1672344 (= (and (= (reg!16754 lt!2402360) (reg!16754 lt!2402338)) (= lt!2402360 lt!2402338)) (= lambda!363893 lambda!363853))))

(declare-fun bs!1672345 () Bool)

(assert (= bs!1672345 (and b!6551119 d!2055964)))

(assert (=> bs!1672345 (not (= lambda!363893 lambda!363860))))

(declare-fun bs!1672346 () Bool)

(assert (= bs!1672346 (and b!6551119 b!6550625)))

(assert (=> bs!1672346 (not (= lambda!363893 lambda!363841))))

(declare-fun bs!1672347 () Bool)

(assert (= bs!1672347 (and b!6551119 b!6550967)))

(assert (=> bs!1672347 (not (= lambda!363893 lambda!363878))))

(assert (=> bs!1672343 (not (= lambda!363893 lambda!363865))))

(declare-fun bs!1672348 () Bool)

(assert (= bs!1672348 (and b!6551119 b!6550962)))

(assert (=> bs!1672348 (= (and (= (reg!16754 lt!2402360) (reg!16754 r!7292)) (= lt!2402360 r!7292)) (= lambda!363893 lambda!363876))))

(assert (=> bs!1672346 (not (= lambda!363893 lambda!363840))))

(declare-fun bs!1672349 () Bool)

(assert (= bs!1672349 (and b!6551119 b!6550588)))

(assert (=> bs!1672349 (not (= lambda!363893 lambda!363845))))

(assert (=> b!6551119 true))

(assert (=> b!6551119 true))

(declare-fun bs!1672350 () Bool)

(declare-fun b!6551124 () Bool)

(assert (= bs!1672350 (and b!6551124 b!6550715)))

(declare-fun lambda!363894 () Int)

(assert (=> bs!1672350 (= (and (= (regOne!33362 lt!2402360) (regOne!33362 lt!2402338)) (= (regTwo!33362 lt!2402360) (regTwo!33362 lt!2402338))) (= lambda!363894 lambda!363854))))

(declare-fun bs!1672351 () Bool)

(assert (= bs!1672351 (and b!6551124 d!2055966)))

(assert (=> bs!1672351 (= (and (= (regOne!33362 lt!2402360) (regOne!33362 r!7292)) (= (regTwo!33362 lt!2402360) (regTwo!33362 r!7292))) (= lambda!363894 lambda!363866))))

(declare-fun bs!1672352 () Bool)

(assert (= bs!1672352 (and b!6551124 b!6550710)))

(assert (=> bs!1672352 (not (= lambda!363894 lambda!363853))))

(declare-fun bs!1672353 () Bool)

(assert (= bs!1672353 (and b!6551124 d!2055964)))

(assert (=> bs!1672353 (not (= lambda!363894 lambda!363860))))

(declare-fun bs!1672354 () Bool)

(assert (= bs!1672354 (and b!6551124 b!6550625)))

(assert (=> bs!1672354 (= (and (= (regOne!33362 lt!2402360) (regOne!33362 r!7292)) (= (regTwo!33362 lt!2402360) (regTwo!33362 r!7292))) (= lambda!363894 lambda!363841))))

(declare-fun bs!1672355 () Bool)

(assert (= bs!1672355 (and b!6551124 b!6550967)))

(assert (=> bs!1672355 (= (and (= (regOne!33362 lt!2402360) (regOne!33362 r!7292)) (= (regTwo!33362 lt!2402360) (regTwo!33362 r!7292))) (= lambda!363894 lambda!363878))))

(assert (=> bs!1672351 (not (= lambda!363894 lambda!363865))))

(declare-fun bs!1672356 () Bool)

(assert (= bs!1672356 (and b!6551124 b!6550962)))

(assert (=> bs!1672356 (not (= lambda!363894 lambda!363876))))

(declare-fun bs!1672357 () Bool)

(assert (= bs!1672357 (and b!6551124 b!6551119)))

(assert (=> bs!1672357 (not (= lambda!363894 lambda!363893))))

(assert (=> bs!1672354 (not (= lambda!363894 lambda!363840))))

(declare-fun bs!1672358 () Bool)

(assert (= bs!1672358 (and b!6551124 b!6550588)))

(assert (=> bs!1672358 (not (= lambda!363894 lambda!363845))))

(assert (=> b!6551124 true))

(assert (=> b!6551124 true))

(declare-fun b!6551117 () Bool)

(declare-fun e!3966314 () Bool)

(declare-fun call!569799 () Bool)

(assert (=> b!6551117 (= e!3966314 call!569799)))

(declare-fun d!2056020 () Bool)

(declare-fun c!1203361 () Bool)

(assert (=> d!2056020 (= c!1203361 ((_ is EmptyExpr!16425) lt!2402360))))

(assert (=> d!2056020 (= (matchRSpec!3526 lt!2402360 s!2326) e!3966314)))

(declare-fun b!6551118 () Bool)

(declare-fun res!2687688 () Bool)

(declare-fun e!3966310 () Bool)

(assert (=> b!6551118 (=> res!2687688 e!3966310)))

(assert (=> b!6551118 (= res!2687688 call!569799)))

(declare-fun e!3966311 () Bool)

(assert (=> b!6551118 (= e!3966311 e!3966310)))

(declare-fun call!569798 () Bool)

(assert (=> b!6551119 (= e!3966310 call!569798)))

(declare-fun b!6551120 () Bool)

(declare-fun e!3966313 () Bool)

(assert (=> b!6551120 (= e!3966314 e!3966313)))

(declare-fun res!2687687 () Bool)

(assert (=> b!6551120 (= res!2687687 (not ((_ is EmptyLang!16425) lt!2402360)))))

(assert (=> b!6551120 (=> (not res!2687687) (not e!3966313))))

(declare-fun b!6551121 () Bool)

(declare-fun c!1203358 () Bool)

(assert (=> b!6551121 (= c!1203358 ((_ is Union!16425) lt!2402360))))

(declare-fun e!3966312 () Bool)

(declare-fun e!3966316 () Bool)

(assert (=> b!6551121 (= e!3966312 e!3966316)))

(declare-fun b!6551122 () Bool)

(declare-fun e!3966315 () Bool)

(assert (=> b!6551122 (= e!3966315 (matchRSpec!3526 (regTwo!33363 lt!2402360) s!2326))))

(declare-fun b!6551123 () Bool)

(assert (=> b!6551123 (= e!3966316 e!3966311)))

(declare-fun c!1203360 () Bool)

(assert (=> b!6551123 (= c!1203360 ((_ is Star!16425) lt!2402360))))

(assert (=> b!6551124 (= e!3966311 call!569798)))

(declare-fun b!6551125 () Bool)

(assert (=> b!6551125 (= e!3966316 e!3966315)))

(declare-fun res!2687689 () Bool)

(assert (=> b!6551125 (= res!2687689 (matchRSpec!3526 (regOne!33363 lt!2402360) s!2326))))

(assert (=> b!6551125 (=> res!2687689 e!3966315)))

(declare-fun b!6551126 () Bool)

(declare-fun c!1203359 () Bool)

(assert (=> b!6551126 (= c!1203359 ((_ is ElementMatch!16425) lt!2402360))))

(assert (=> b!6551126 (= e!3966313 e!3966312)))

(declare-fun b!6551127 () Bool)

(assert (=> b!6551127 (= e!3966312 (= s!2326 (Cons!65451 (c!1203224 lt!2402360) Nil!65451)))))

(declare-fun bm!569793 () Bool)

(assert (=> bm!569793 (= call!569798 (Exists!3495 (ite c!1203360 lambda!363893 lambda!363894)))))

(declare-fun bm!569794 () Bool)

(assert (=> bm!569794 (= call!569799 (isEmpty!37680 s!2326))))

(assert (= (and d!2056020 c!1203361) b!6551117))

(assert (= (and d!2056020 (not c!1203361)) b!6551120))

(assert (= (and b!6551120 res!2687687) b!6551126))

(assert (= (and b!6551126 c!1203359) b!6551127))

(assert (= (and b!6551126 (not c!1203359)) b!6551121))

(assert (= (and b!6551121 c!1203358) b!6551125))

(assert (= (and b!6551121 (not c!1203358)) b!6551123))

(assert (= (and b!6551125 (not res!2687689)) b!6551122))

(assert (= (and b!6551123 c!1203360) b!6551118))

(assert (= (and b!6551123 (not c!1203360)) b!6551124))

(assert (= (and b!6551118 (not res!2687688)) b!6551119))

(assert (= (or b!6551119 b!6551124) bm!569793))

(assert (= (or b!6551117 b!6551118) bm!569794))

(declare-fun m!7333604 () Bool)

(assert (=> b!6551122 m!7333604))

(declare-fun m!7333606 () Bool)

(assert (=> b!6551125 m!7333606))

(declare-fun m!7333608 () Bool)

(assert (=> bm!569793 m!7333608))

(assert (=> bm!569794 m!7333188))

(assert (=> b!6550588 d!2056020))

(assert (=> b!6550588 d!2055996))

(declare-fun d!2056026 () Bool)

(assert (=> d!2056026 (= (matchR!8608 lt!2402336 (_2!36707 lt!2402333)) (matchZipper!2437 lt!2402373 (_2!36707 lt!2402333)))))

(declare-fun lt!2402488 () Unit!159035)

(declare-fun choose!48746 ((InoxSet Context!11618) List!65576 Regex!16425 List!65575) Unit!159035)

(assert (=> d!2056026 (= lt!2402488 (choose!48746 lt!2402373 lt!2402364 lt!2402336 (_2!36707 lt!2402333)))))

(assert (=> d!2056026 (validRegex!8161 lt!2402336)))

(assert (=> d!2056026 (= (theoremZipperRegexEquiv!861 lt!2402373 lt!2402364 lt!2402336 (_2!36707 lt!2402333)) lt!2402488)))

(declare-fun bs!1672361 () Bool)

(assert (= bs!1672361 d!2056026))

(assert (=> bs!1672361 m!7333162))

(assert (=> bs!1672361 m!7333076))

(declare-fun m!7333632 () Bool)

(assert (=> bs!1672361 m!7333632))

(declare-fun m!7333634 () Bool)

(assert (=> bs!1672361 m!7333634))

(assert (=> b!6550588 d!2056026))

(declare-fun d!2056034 () Bool)

(assert (=> d!2056034 (= (matchR!8608 lt!2402360 s!2326) (matchRSpec!3526 lt!2402360 s!2326))))

(declare-fun lt!2402489 () Unit!159035)

(assert (=> d!2056034 (= lt!2402489 (choose!48730 lt!2402360 s!2326))))

(assert (=> d!2056034 (validRegex!8161 lt!2402360)))

(assert (=> d!2056034 (= (mainMatchTheorem!3526 lt!2402360 s!2326) lt!2402489)))

(declare-fun bs!1672362 () Bool)

(assert (= bs!1672362 d!2056034))

(assert (=> bs!1672362 m!7333180))

(assert (=> bs!1672362 m!7333172))

(declare-fun m!7333638 () Bool)

(assert (=> bs!1672362 m!7333638))

(declare-fun m!7333642 () Bool)

(assert (=> bs!1672362 m!7333642))

(assert (=> b!6550588 d!2056034))

(assert (=> b!6550588 d!2055998))

(declare-fun d!2056036 () Bool)

(assert (=> d!2056036 (matchR!8608 (Concat!25270 (reg!16754 (regOne!33362 r!7292)) lt!2402336) (++!14553 (_1!36707 lt!2402333) (_2!36707 lt!2402333)))))

(declare-fun lt!2402493 () Unit!159035)

(declare-fun choose!48747 (Regex!16425 Regex!16425 List!65575 List!65575) Unit!159035)

(assert (=> d!2056036 (= lt!2402493 (choose!48747 (reg!16754 (regOne!33362 r!7292)) lt!2402336 (_1!36707 lt!2402333) (_2!36707 lt!2402333)))))

(declare-fun e!3966346 () Bool)

(assert (=> d!2056036 e!3966346))

(declare-fun res!2687718 () Bool)

(assert (=> d!2056036 (=> (not res!2687718) (not e!3966346))))

(assert (=> d!2056036 (= res!2687718 (validRegex!8161 (reg!16754 (regOne!33362 r!7292))))))

(assert (=> d!2056036 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!346 (reg!16754 (regOne!33362 r!7292)) lt!2402336 (_1!36707 lt!2402333) (_2!36707 lt!2402333)) lt!2402493)))

(declare-fun b!6551178 () Bool)

(assert (=> b!6551178 (= e!3966346 (validRegex!8161 lt!2402336))))

(assert (= (and d!2056036 res!2687718) b!6551178))

(assert (=> d!2056036 m!7333146))

(assert (=> d!2056036 m!7333146))

(declare-fun m!7333658 () Bool)

(assert (=> d!2056036 m!7333658))

(declare-fun m!7333660 () Bool)

(assert (=> d!2056036 m!7333660))

(assert (=> d!2056036 m!7333564))

(assert (=> b!6551178 m!7333634))

(assert (=> b!6550588 d!2056036))

(declare-fun d!2056042 () Bool)

(assert (=> d!2056042 (= (matchR!8608 (reg!16754 (regOne!33362 r!7292)) (_1!36707 lt!2402333)) (matchZipper!2437 lt!2402368 (_1!36707 lt!2402333)))))

(declare-fun lt!2402494 () Unit!159035)

(assert (=> d!2056042 (= lt!2402494 (choose!48746 lt!2402368 lt!2402341 (reg!16754 (regOne!33362 r!7292)) (_1!36707 lt!2402333)))))

(assert (=> d!2056042 (validRegex!8161 (reg!16754 (regOne!33362 r!7292)))))

(assert (=> d!2056042 (= (theoremZipperRegexEquiv!861 lt!2402368 lt!2402341 (reg!16754 (regOne!33362 r!7292)) (_1!36707 lt!2402333)) lt!2402494)))

(declare-fun bs!1672363 () Bool)

(assert (= bs!1672363 d!2056042))

(assert (=> bs!1672363 m!7333152))

(assert (=> bs!1672363 m!7333070))

(declare-fun m!7333662 () Bool)

(assert (=> bs!1672363 m!7333662))

(assert (=> bs!1672363 m!7333564))

(assert (=> b!6550588 d!2056042))

(declare-fun d!2056044 () Bool)

(declare-fun c!1203373 () Bool)

(assert (=> d!2056044 (= c!1203373 (isEmpty!37680 lt!2402331))))

(declare-fun e!3966347 () Bool)

(assert (=> d!2056044 (= (matchZipper!2437 (store ((as const (Array Context!11618 Bool)) false) (Context!11619 (++!14552 lt!2402350 lt!2402340)) true) lt!2402331) e!3966347)))

(declare-fun b!6551179 () Bool)

(assert (=> b!6551179 (= e!3966347 (nullableZipper!2170 (store ((as const (Array Context!11618 Bool)) false) (Context!11619 (++!14552 lt!2402350 lt!2402340)) true)))))

(declare-fun b!6551180 () Bool)

(assert (=> b!6551180 (= e!3966347 (matchZipper!2437 (derivationStepZipper!2391 (store ((as const (Array Context!11618 Bool)) false) (Context!11619 (++!14552 lt!2402350 lt!2402340)) true) (head!13300 lt!2402331)) (tail!12385 lt!2402331)))))

(assert (= (and d!2056044 c!1203373) b!6551179))

(assert (= (and d!2056044 (not c!1203373)) b!6551180))

(declare-fun m!7333664 () Bool)

(assert (=> d!2056044 m!7333664))

(assert (=> b!6551179 m!7333068))

(declare-fun m!7333666 () Bool)

(assert (=> b!6551179 m!7333666))

(declare-fun m!7333668 () Bool)

(assert (=> b!6551180 m!7333668))

(assert (=> b!6551180 m!7333068))

(assert (=> b!6551180 m!7333668))

(declare-fun m!7333670 () Bool)

(assert (=> b!6551180 m!7333670))

(declare-fun m!7333672 () Bool)

(assert (=> b!6551180 m!7333672))

(assert (=> b!6551180 m!7333670))

(assert (=> b!6551180 m!7333672))

(declare-fun m!7333674 () Bool)

(assert (=> b!6551180 m!7333674))

(assert (=> b!6550588 d!2056044))

(declare-fun b!6551181 () Bool)

(declare-fun e!3966348 () Bool)

(assert (=> b!6551181 (= e!3966348 (nullable!6418 lt!2402360))))

(declare-fun b!6551182 () Bool)

(declare-fun res!2687726 () Bool)

(declare-fun e!3966351 () Bool)

(assert (=> b!6551182 (=> (not res!2687726) (not e!3966351))))

(declare-fun call!569807 () Bool)

(assert (=> b!6551182 (= res!2687726 (not call!569807))))

(declare-fun d!2056046 () Bool)

(declare-fun e!3966352 () Bool)

(assert (=> d!2056046 e!3966352))

(declare-fun c!1203376 () Bool)

(assert (=> d!2056046 (= c!1203376 ((_ is EmptyExpr!16425) lt!2402360))))

(declare-fun lt!2402495 () Bool)

(assert (=> d!2056046 (= lt!2402495 e!3966348)))

(declare-fun c!1203375 () Bool)

(assert (=> d!2056046 (= c!1203375 (isEmpty!37680 s!2326))))

(assert (=> d!2056046 (validRegex!8161 lt!2402360)))

(assert (=> d!2056046 (= (matchR!8608 lt!2402360 s!2326) lt!2402495)))

(declare-fun b!6551183 () Bool)

(assert (=> b!6551183 (= e!3966351 (= (head!13300 s!2326) (c!1203224 lt!2402360)))))

(declare-fun b!6551184 () Bool)

(declare-fun e!3966354 () Bool)

(assert (=> b!6551184 (= e!3966352 e!3966354)))

(declare-fun c!1203374 () Bool)

(assert (=> b!6551184 (= c!1203374 ((_ is EmptyLang!16425) lt!2402360))))

(declare-fun b!6551185 () Bool)

(declare-fun res!2687719 () Bool)

(assert (=> b!6551185 (=> (not res!2687719) (not e!3966351))))

(assert (=> b!6551185 (= res!2687719 (isEmpty!37680 (tail!12385 s!2326)))))

(declare-fun b!6551186 () Bool)

(assert (=> b!6551186 (= e!3966354 (not lt!2402495))))

(declare-fun b!6551187 () Bool)

(declare-fun res!2687721 () Bool)

(declare-fun e!3966350 () Bool)

(assert (=> b!6551187 (=> res!2687721 e!3966350)))

(assert (=> b!6551187 (= res!2687721 (not ((_ is ElementMatch!16425) lt!2402360)))))

(assert (=> b!6551187 (= e!3966354 e!3966350)))

(declare-fun bm!569802 () Bool)

(assert (=> bm!569802 (= call!569807 (isEmpty!37680 s!2326))))

(declare-fun b!6551188 () Bool)

(declare-fun res!2687725 () Bool)

(assert (=> b!6551188 (=> res!2687725 e!3966350)))

(assert (=> b!6551188 (= res!2687725 e!3966351)))

(declare-fun res!2687722 () Bool)

(assert (=> b!6551188 (=> (not res!2687722) (not e!3966351))))

(assert (=> b!6551188 (= res!2687722 lt!2402495)))

(declare-fun b!6551189 () Bool)

(assert (=> b!6551189 (= e!3966348 (matchR!8608 (derivativeStep!5108 lt!2402360 (head!13300 s!2326)) (tail!12385 s!2326)))))

(declare-fun b!6551190 () Bool)

(assert (=> b!6551190 (= e!3966352 (= lt!2402495 call!569807))))

(declare-fun b!6551191 () Bool)

(declare-fun e!3966353 () Bool)

(assert (=> b!6551191 (= e!3966350 e!3966353)))

(declare-fun res!2687723 () Bool)

(assert (=> b!6551191 (=> (not res!2687723) (not e!3966353))))

(assert (=> b!6551191 (= res!2687723 (not lt!2402495))))

(declare-fun b!6551192 () Bool)

(declare-fun e!3966349 () Bool)

(assert (=> b!6551192 (= e!3966349 (not (= (head!13300 s!2326) (c!1203224 lt!2402360))))))

(declare-fun b!6551193 () Bool)

(declare-fun res!2687724 () Bool)

(assert (=> b!6551193 (=> res!2687724 e!3966349)))

(assert (=> b!6551193 (= res!2687724 (not (isEmpty!37680 (tail!12385 s!2326))))))

(declare-fun b!6551194 () Bool)

(assert (=> b!6551194 (= e!3966353 e!3966349)))

(declare-fun res!2687720 () Bool)

(assert (=> b!6551194 (=> res!2687720 e!3966349)))

(assert (=> b!6551194 (= res!2687720 call!569807)))

(assert (= (and d!2056046 c!1203375) b!6551181))

(assert (= (and d!2056046 (not c!1203375)) b!6551189))

(assert (= (and d!2056046 c!1203376) b!6551190))

(assert (= (and d!2056046 (not c!1203376)) b!6551184))

(assert (= (and b!6551184 c!1203374) b!6551186))

(assert (= (and b!6551184 (not c!1203374)) b!6551187))

(assert (= (and b!6551187 (not res!2687721)) b!6551188))

(assert (= (and b!6551188 res!2687722) b!6551182))

(assert (= (and b!6551182 res!2687726) b!6551185))

(assert (= (and b!6551185 res!2687719) b!6551183))

(assert (= (and b!6551188 (not res!2687725)) b!6551191))

(assert (= (and b!6551191 res!2687723) b!6551194))

(assert (= (and b!6551194 (not res!2687720)) b!6551193))

(assert (= (and b!6551193 (not res!2687724)) b!6551192))

(assert (= (or b!6551190 b!6551182 b!6551194) bm!569802))

(assert (=> b!6551189 m!7333192))

(assert (=> b!6551189 m!7333192))

(declare-fun m!7333676 () Bool)

(assert (=> b!6551189 m!7333676))

(assert (=> b!6551189 m!7333196))

(assert (=> b!6551189 m!7333676))

(assert (=> b!6551189 m!7333196))

(declare-fun m!7333678 () Bool)

(assert (=> b!6551189 m!7333678))

(declare-fun m!7333680 () Bool)

(assert (=> b!6551181 m!7333680))

(assert (=> b!6551192 m!7333192))

(assert (=> b!6551183 m!7333192))

(assert (=> bm!569802 m!7333188))

(assert (=> b!6551193 m!7333196))

(assert (=> b!6551193 m!7333196))

(assert (=> b!6551193 m!7333360))

(assert (=> b!6551185 m!7333196))

(assert (=> b!6551185 m!7333196))

(assert (=> b!6551185 m!7333360))

(assert (=> d!2056046 m!7333188))

(assert (=> d!2056046 m!7333642))

(assert (=> b!6550588 d!2056046))

(declare-fun b!6551235 () Bool)

(declare-fun e!3966385 () Bool)

(declare-fun e!3966381 () Bool)

(assert (=> b!6551235 (= e!3966385 e!3966381)))

(declare-fun c!1203386 () Bool)

(assert (=> b!6551235 (= c!1203386 ((_ is Union!16425) lt!2402353))))

(declare-fun b!6551236 () Bool)

(declare-fun e!3966382 () Bool)

(assert (=> b!6551236 (= e!3966382 e!3966385)))

(declare-fun c!1203387 () Bool)

(assert (=> b!6551236 (= c!1203387 ((_ is Star!16425) lt!2402353))))

(declare-fun b!6551237 () Bool)

(declare-fun res!2687753 () Bool)

(declare-fun e!3966383 () Bool)

(assert (=> b!6551237 (=> res!2687753 e!3966383)))

(assert (=> b!6551237 (= res!2687753 (not ((_ is Concat!25270) lt!2402353)))))

(assert (=> b!6551237 (= e!3966381 e!3966383)))

(declare-fun d!2056048 () Bool)

(declare-fun res!2687750 () Bool)

(assert (=> d!2056048 (=> res!2687750 e!3966382)))

(assert (=> d!2056048 (= res!2687750 ((_ is ElementMatch!16425) lt!2402353))))

(assert (=> d!2056048 (= (validRegex!8161 lt!2402353) e!3966382)))

(declare-fun bm!569810 () Bool)

(declare-fun call!569815 () Bool)

(declare-fun call!569817 () Bool)

(assert (=> bm!569810 (= call!569815 call!569817)))

(declare-fun b!6551238 () Bool)

(declare-fun e!3966380 () Bool)

(assert (=> b!6551238 (= e!3966385 e!3966380)))

(declare-fun res!2687752 () Bool)

(assert (=> b!6551238 (= res!2687752 (not (nullable!6418 (reg!16754 lt!2402353))))))

(assert (=> b!6551238 (=> (not res!2687752) (not e!3966380))))

(declare-fun b!6551240 () Bool)

(declare-fun res!2687751 () Bool)

(declare-fun e!3966384 () Bool)

(assert (=> b!6551240 (=> (not res!2687751) (not e!3966384))))

(assert (=> b!6551240 (= res!2687751 call!569815)))

(assert (=> b!6551240 (= e!3966381 e!3966384)))

(declare-fun b!6551242 () Bool)

(declare-fun call!569816 () Bool)

(assert (=> b!6551242 (= e!3966384 call!569816)))

(declare-fun b!6551243 () Bool)

(declare-fun e!3966387 () Bool)

(assert (=> b!6551243 (= e!3966387 call!569816)))

(declare-fun bm!569811 () Bool)

(assert (=> bm!569811 (= call!569817 (validRegex!8161 (ite c!1203387 (reg!16754 lt!2402353) (ite c!1203386 (regOne!33363 lt!2402353) (regOne!33362 lt!2402353)))))))

(declare-fun bm!569812 () Bool)

(assert (=> bm!569812 (= call!569816 (validRegex!8161 (ite c!1203386 (regTwo!33363 lt!2402353) (regTwo!33362 lt!2402353))))))

(declare-fun b!6551245 () Bool)

(assert (=> b!6551245 (= e!3966380 call!569817)))

(declare-fun b!6551247 () Bool)

(assert (=> b!6551247 (= e!3966383 e!3966387)))

(declare-fun res!2687749 () Bool)

(assert (=> b!6551247 (=> (not res!2687749) (not e!3966387))))

(assert (=> b!6551247 (= res!2687749 call!569815)))

(assert (= (and d!2056048 (not res!2687750)) b!6551236))

(assert (= (and b!6551236 c!1203387) b!6551238))

(assert (= (and b!6551236 (not c!1203387)) b!6551235))

(assert (= (and b!6551238 res!2687752) b!6551245))

(assert (= (and b!6551235 c!1203386) b!6551240))

(assert (= (and b!6551235 (not c!1203386)) b!6551237))

(assert (= (and b!6551240 res!2687751) b!6551242))

(assert (= (and b!6551237 (not res!2687753)) b!6551247))

(assert (= (and b!6551247 res!2687749) b!6551243))

(assert (= (or b!6551242 b!6551243) bm!569812))

(assert (= (or b!6551240 b!6551247) bm!569810))

(assert (= (or b!6551245 bm!569810) bm!569811))

(declare-fun m!7333708 () Bool)

(assert (=> b!6551238 m!7333708))

(declare-fun m!7333710 () Bool)

(assert (=> bm!569811 m!7333710))

(declare-fun m!7333712 () Bool)

(assert (=> bm!569812 m!7333712))

(assert (=> b!6550588 d!2056048))

(declare-fun bs!1672365 () Bool)

(declare-fun d!2056056 () Bool)

(assert (= bs!1672365 (and d!2056056 b!6550715)))

(declare-fun lambda!363895 () Int)

(assert (=> bs!1672365 (not (= lambda!363895 lambda!363854))))

(declare-fun bs!1672366 () Bool)

(assert (= bs!1672366 (and d!2056056 d!2055966)))

(assert (=> bs!1672366 (not (= lambda!363895 lambda!363866))))

(declare-fun bs!1672367 () Bool)

(assert (= bs!1672367 (and d!2056056 b!6550710)))

(assert (=> bs!1672367 (not (= lambda!363895 lambda!363853))))

(declare-fun bs!1672368 () Bool)

(assert (= bs!1672368 (and d!2056056 d!2055964)))

(assert (=> bs!1672368 (= (= lt!2402353 (regOne!33362 r!7292)) (= lambda!363895 lambda!363860))))

(declare-fun bs!1672369 () Bool)

(assert (= bs!1672369 (and d!2056056 b!6550625)))

(assert (=> bs!1672369 (not (= lambda!363895 lambda!363841))))

(declare-fun bs!1672370 () Bool)

(assert (= bs!1672370 (and d!2056056 b!6550967)))

(assert (=> bs!1672370 (not (= lambda!363895 lambda!363878))))

(assert (=> bs!1672366 (= (= lt!2402353 (regOne!33362 r!7292)) (= lambda!363895 lambda!363865))))

(declare-fun bs!1672371 () Bool)

(assert (= bs!1672371 (and d!2056056 b!6550962)))

(assert (=> bs!1672371 (not (= lambda!363895 lambda!363876))))

(assert (=> bs!1672369 (= (= lt!2402353 (regOne!33362 r!7292)) (= lambda!363895 lambda!363840))))

(declare-fun bs!1672372 () Bool)

(assert (= bs!1672372 (and d!2056056 b!6550588)))

(assert (=> bs!1672372 (= lambda!363895 lambda!363845)))

(declare-fun bs!1672373 () Bool)

(assert (= bs!1672373 (and d!2056056 b!6551124)))

(assert (=> bs!1672373 (not (= lambda!363895 lambda!363894))))

(declare-fun bs!1672374 () Bool)

(assert (= bs!1672374 (and d!2056056 b!6551119)))

(assert (=> bs!1672374 (not (= lambda!363895 lambda!363893))))

(assert (=> d!2056056 true))

(assert (=> d!2056056 true))

(assert (=> d!2056056 true))

(assert (=> d!2056056 (= (isDefined!13019 (findConcatSeparation!2730 lt!2402353 (regTwo!33362 r!7292) Nil!65451 s!2326 s!2326)) (Exists!3495 lambda!363895))))

(declare-fun lt!2402503 () Unit!159035)

(assert (=> d!2056056 (= lt!2402503 (choose!48734 lt!2402353 (regTwo!33362 r!7292) s!2326))))

(assert (=> d!2056056 (validRegex!8161 lt!2402353)))

(assert (=> d!2056056 (= (lemmaFindConcatSeparationEquivalentToExists!2494 lt!2402353 (regTwo!33362 r!7292) s!2326) lt!2402503)))

(declare-fun bs!1672375 () Bool)

(assert (= bs!1672375 d!2056056))

(assert (=> bs!1672375 m!7333154))

(declare-fun m!7333714 () Bool)

(assert (=> bs!1672375 m!7333714))

(assert (=> bs!1672375 m!7333174))

(assert (=> bs!1672375 m!7333154))

(assert (=> bs!1672375 m!7333156))

(declare-fun m!7333716 () Bool)

(assert (=> bs!1672375 m!7333716))

(assert (=> b!6550588 d!2056056))

(declare-fun b!6551248 () Bool)

(declare-fun e!3966389 () Bool)

(assert (=> b!6551248 (= e!3966389 (nullable!6418 lt!2402338))))

(declare-fun b!6551249 () Bool)

(declare-fun res!2687763 () Bool)

(declare-fun e!3966392 () Bool)

(assert (=> b!6551249 (=> (not res!2687763) (not e!3966392))))

(declare-fun call!569818 () Bool)

(assert (=> b!6551249 (= res!2687763 (not call!569818))))

(declare-fun d!2056058 () Bool)

(declare-fun e!3966393 () Bool)

(assert (=> d!2056058 e!3966393))

(declare-fun c!1203391 () Bool)

(assert (=> d!2056058 (= c!1203391 ((_ is EmptyExpr!16425) lt!2402338))))

(declare-fun lt!2402504 () Bool)

(assert (=> d!2056058 (= lt!2402504 e!3966389)))

(declare-fun c!1203390 () Bool)

(assert (=> d!2056058 (= c!1203390 (isEmpty!37680 lt!2402331))))

(assert (=> d!2056058 (validRegex!8161 lt!2402338)))

(assert (=> d!2056058 (= (matchR!8608 lt!2402338 lt!2402331) lt!2402504)))

(declare-fun b!6551250 () Bool)

(assert (=> b!6551250 (= e!3966392 (= (head!13300 lt!2402331) (c!1203224 lt!2402338)))))

(declare-fun b!6551251 () Bool)

(declare-fun e!3966395 () Bool)

(assert (=> b!6551251 (= e!3966393 e!3966395)))

(declare-fun c!1203389 () Bool)

(assert (=> b!6551251 (= c!1203389 ((_ is EmptyLang!16425) lt!2402338))))

(declare-fun b!6551252 () Bool)

(declare-fun res!2687756 () Bool)

(assert (=> b!6551252 (=> (not res!2687756) (not e!3966392))))

(assert (=> b!6551252 (= res!2687756 (isEmpty!37680 (tail!12385 lt!2402331)))))

(declare-fun b!6551253 () Bool)

(assert (=> b!6551253 (= e!3966395 (not lt!2402504))))

(declare-fun b!6551254 () Bool)

(declare-fun res!2687758 () Bool)

(declare-fun e!3966391 () Bool)

(assert (=> b!6551254 (=> res!2687758 e!3966391)))

(assert (=> b!6551254 (= res!2687758 (not ((_ is ElementMatch!16425) lt!2402338)))))

(assert (=> b!6551254 (= e!3966395 e!3966391)))

(declare-fun bm!569813 () Bool)

(assert (=> bm!569813 (= call!569818 (isEmpty!37680 lt!2402331))))

(declare-fun b!6551255 () Bool)

(declare-fun res!2687762 () Bool)

(assert (=> b!6551255 (=> res!2687762 e!3966391)))

(assert (=> b!6551255 (= res!2687762 e!3966392)))

(declare-fun res!2687759 () Bool)

(assert (=> b!6551255 (=> (not res!2687759) (not e!3966392))))

(assert (=> b!6551255 (= res!2687759 lt!2402504)))

(declare-fun b!6551256 () Bool)

(assert (=> b!6551256 (= e!3966389 (matchR!8608 (derivativeStep!5108 lt!2402338 (head!13300 lt!2402331)) (tail!12385 lt!2402331)))))

(declare-fun b!6551257 () Bool)

(assert (=> b!6551257 (= e!3966393 (= lt!2402504 call!569818))))

(declare-fun b!6551258 () Bool)

(declare-fun e!3966394 () Bool)

(assert (=> b!6551258 (= e!3966391 e!3966394)))

(declare-fun res!2687760 () Bool)

(assert (=> b!6551258 (=> (not res!2687760) (not e!3966394))))

(assert (=> b!6551258 (= res!2687760 (not lt!2402504))))

(declare-fun b!6551259 () Bool)

(declare-fun e!3966390 () Bool)

(assert (=> b!6551259 (= e!3966390 (not (= (head!13300 lt!2402331) (c!1203224 lt!2402338))))))

(declare-fun b!6551260 () Bool)

(declare-fun res!2687761 () Bool)

(assert (=> b!6551260 (=> res!2687761 e!3966390)))

(assert (=> b!6551260 (= res!2687761 (not (isEmpty!37680 (tail!12385 lt!2402331))))))

(declare-fun b!6551261 () Bool)

(assert (=> b!6551261 (= e!3966394 e!3966390)))

(declare-fun res!2687757 () Bool)

(assert (=> b!6551261 (=> res!2687757 e!3966390)))

(assert (=> b!6551261 (= res!2687757 call!569818)))

(assert (= (and d!2056058 c!1203390) b!6551248))

(assert (= (and d!2056058 (not c!1203390)) b!6551256))

(assert (= (and d!2056058 c!1203391) b!6551257))

(assert (= (and d!2056058 (not c!1203391)) b!6551251))

(assert (= (and b!6551251 c!1203389) b!6551253))

(assert (= (and b!6551251 (not c!1203389)) b!6551254))

(assert (= (and b!6551254 (not res!2687758)) b!6551255))

(assert (= (and b!6551255 res!2687759) b!6551249))

(assert (= (and b!6551249 res!2687763) b!6551252))

(assert (= (and b!6551252 res!2687756) b!6551250))

(assert (= (and b!6551255 (not res!2687762)) b!6551258))

(assert (= (and b!6551258 res!2687760) b!6551261))

(assert (= (and b!6551261 (not res!2687757)) b!6551260))

(assert (= (and b!6551260 (not res!2687761)) b!6551259))

(assert (= (or b!6551257 b!6551249 b!6551261) bm!569813))

(assert (=> b!6551256 m!7333668))

(assert (=> b!6551256 m!7333668))

(declare-fun m!7333718 () Bool)

(assert (=> b!6551256 m!7333718))

(assert (=> b!6551256 m!7333672))

(assert (=> b!6551256 m!7333718))

(assert (=> b!6551256 m!7333672))

(declare-fun m!7333720 () Bool)

(assert (=> b!6551256 m!7333720))

(assert (=> b!6551248 m!7333358))

(assert (=> b!6551259 m!7333668))

(assert (=> b!6551250 m!7333668))

(assert (=> bm!569813 m!7333664))

(assert (=> b!6551260 m!7333672))

(assert (=> b!6551260 m!7333672))

(declare-fun m!7333722 () Bool)

(assert (=> b!6551260 m!7333722))

(assert (=> b!6551252 m!7333672))

(assert (=> b!6551252 m!7333672))

(assert (=> b!6551252 m!7333722))

(assert (=> d!2056058 m!7333664))

(assert (=> d!2056058 m!7333362))

(assert (=> b!6550588 d!2056058))

(declare-fun b!6551266 () Bool)

(declare-fun e!3966398 () Bool)

(assert (=> b!6551266 (= e!3966398 (nullable!6418 lt!2402336))))

(declare-fun b!6551267 () Bool)

(declare-fun res!2687775 () Bool)

(declare-fun e!3966401 () Bool)

(assert (=> b!6551267 (=> (not res!2687775) (not e!3966401))))

(declare-fun call!569819 () Bool)

(assert (=> b!6551267 (= res!2687775 (not call!569819))))

(declare-fun d!2056060 () Bool)

(declare-fun e!3966402 () Bool)

(assert (=> d!2056060 e!3966402))

(declare-fun c!1203394 () Bool)

(assert (=> d!2056060 (= c!1203394 ((_ is EmptyExpr!16425) lt!2402336))))

(declare-fun lt!2402507 () Bool)

(assert (=> d!2056060 (= lt!2402507 e!3966398)))

(declare-fun c!1203393 () Bool)

(assert (=> d!2056060 (= c!1203393 (isEmpty!37680 (_2!36707 lt!2402333)))))

(assert (=> d!2056060 (validRegex!8161 lt!2402336)))

(assert (=> d!2056060 (= (matchR!8608 lt!2402336 (_2!36707 lt!2402333)) lt!2402507)))

(declare-fun b!6551268 () Bool)

(assert (=> b!6551268 (= e!3966401 (= (head!13300 (_2!36707 lt!2402333)) (c!1203224 lt!2402336)))))

(declare-fun b!6551269 () Bool)

(declare-fun e!3966404 () Bool)

(assert (=> b!6551269 (= e!3966402 e!3966404)))

(declare-fun c!1203392 () Bool)

(assert (=> b!6551269 (= c!1203392 ((_ is EmptyLang!16425) lt!2402336))))

(declare-fun b!6551270 () Bool)

(declare-fun res!2687768 () Bool)

(assert (=> b!6551270 (=> (not res!2687768) (not e!3966401))))

(assert (=> b!6551270 (= res!2687768 (isEmpty!37680 (tail!12385 (_2!36707 lt!2402333))))))

(declare-fun b!6551271 () Bool)

(assert (=> b!6551271 (= e!3966404 (not lt!2402507))))

(declare-fun b!6551272 () Bool)

(declare-fun res!2687770 () Bool)

(declare-fun e!3966400 () Bool)

(assert (=> b!6551272 (=> res!2687770 e!3966400)))

(assert (=> b!6551272 (= res!2687770 (not ((_ is ElementMatch!16425) lt!2402336)))))

(assert (=> b!6551272 (= e!3966404 e!3966400)))

(declare-fun bm!569814 () Bool)

(assert (=> bm!569814 (= call!569819 (isEmpty!37680 (_2!36707 lt!2402333)))))

(declare-fun b!6551273 () Bool)

(declare-fun res!2687774 () Bool)

(assert (=> b!6551273 (=> res!2687774 e!3966400)))

(assert (=> b!6551273 (= res!2687774 e!3966401)))

(declare-fun res!2687771 () Bool)

(assert (=> b!6551273 (=> (not res!2687771) (not e!3966401))))

(assert (=> b!6551273 (= res!2687771 lt!2402507)))

(declare-fun b!6551274 () Bool)

(assert (=> b!6551274 (= e!3966398 (matchR!8608 (derivativeStep!5108 lt!2402336 (head!13300 (_2!36707 lt!2402333))) (tail!12385 (_2!36707 lt!2402333))))))

(declare-fun b!6551275 () Bool)

(assert (=> b!6551275 (= e!3966402 (= lt!2402507 call!569819))))

(declare-fun b!6551276 () Bool)

(declare-fun e!3966403 () Bool)

(assert (=> b!6551276 (= e!3966400 e!3966403)))

(declare-fun res!2687772 () Bool)

(assert (=> b!6551276 (=> (not res!2687772) (not e!3966403))))

(assert (=> b!6551276 (= res!2687772 (not lt!2402507))))

(declare-fun b!6551277 () Bool)

(declare-fun e!3966399 () Bool)

(assert (=> b!6551277 (= e!3966399 (not (= (head!13300 (_2!36707 lt!2402333)) (c!1203224 lt!2402336))))))

(declare-fun b!6551278 () Bool)

(declare-fun res!2687773 () Bool)

(assert (=> b!6551278 (=> res!2687773 e!3966399)))

(assert (=> b!6551278 (= res!2687773 (not (isEmpty!37680 (tail!12385 (_2!36707 lt!2402333)))))))

(declare-fun b!6551279 () Bool)

(assert (=> b!6551279 (= e!3966403 e!3966399)))

(declare-fun res!2687769 () Bool)

(assert (=> b!6551279 (=> res!2687769 e!3966399)))

(assert (=> b!6551279 (= res!2687769 call!569819)))

(assert (= (and d!2056060 c!1203393) b!6551266))

(assert (= (and d!2056060 (not c!1203393)) b!6551274))

(assert (= (and d!2056060 c!1203394) b!6551275))

(assert (= (and d!2056060 (not c!1203394)) b!6551269))

(assert (= (and b!6551269 c!1203392) b!6551271))

(assert (= (and b!6551269 (not c!1203392)) b!6551272))

(assert (= (and b!6551272 (not res!2687770)) b!6551273))

(assert (= (and b!6551273 res!2687771) b!6551267))

(assert (= (and b!6551267 res!2687775) b!6551270))

(assert (= (and b!6551270 res!2687768) b!6551268))

(assert (= (and b!6551273 (not res!2687774)) b!6551276))

(assert (= (and b!6551276 res!2687772) b!6551279))

(assert (= (and b!6551279 (not res!2687769)) b!6551278))

(assert (= (and b!6551278 (not res!2687773)) b!6551277))

(assert (= (or b!6551275 b!6551267 b!6551279) bm!569814))

(assert (=> b!6551274 m!7333216))

(assert (=> b!6551274 m!7333216))

(declare-fun m!7333732 () Bool)

(assert (=> b!6551274 m!7333732))

(assert (=> b!6551274 m!7333220))

(assert (=> b!6551274 m!7333732))

(assert (=> b!6551274 m!7333220))

(declare-fun m!7333734 () Bool)

(assert (=> b!6551274 m!7333734))

(declare-fun m!7333736 () Bool)

(assert (=> b!6551266 m!7333736))

(assert (=> b!6551277 m!7333216))

(assert (=> b!6551268 m!7333216))

(assert (=> bm!569814 m!7333212))

(assert (=> b!6551278 m!7333220))

(assert (=> b!6551278 m!7333220))

(declare-fun m!7333738 () Bool)

(assert (=> b!6551278 m!7333738))

(assert (=> b!6551270 m!7333220))

(assert (=> b!6551270 m!7333220))

(assert (=> b!6551270 m!7333738))

(assert (=> d!2056060 m!7333212))

(assert (=> d!2056060 m!7333634))

(assert (=> b!6550588 d!2056060))

(declare-fun d!2056066 () Bool)

(assert (=> d!2056066 (= (Exists!3495 lambda!363845) (choose!48733 lambda!363845))))

(declare-fun bs!1672377 () Bool)

(assert (= bs!1672377 d!2056066))

(declare-fun m!7333742 () Bool)

(assert (=> bs!1672377 m!7333742))

(assert (=> b!6550588 d!2056066))

(declare-fun b!6551293 () Bool)

(declare-fun e!3966413 () Bool)

(assert (=> b!6551293 (= e!3966413 (nullable!6418 (reg!16754 (regOne!33362 r!7292))))))

(declare-fun b!6551294 () Bool)

(declare-fun res!2687788 () Bool)

(declare-fun e!3966416 () Bool)

(assert (=> b!6551294 (=> (not res!2687788) (not e!3966416))))

(declare-fun call!569822 () Bool)

(assert (=> b!6551294 (= res!2687788 (not call!569822))))

(declare-fun d!2056068 () Bool)

(declare-fun e!3966417 () Bool)

(assert (=> d!2056068 e!3966417))

(declare-fun c!1203401 () Bool)

(assert (=> d!2056068 (= c!1203401 ((_ is EmptyExpr!16425) (reg!16754 (regOne!33362 r!7292))))))

(declare-fun lt!2402510 () Bool)

(assert (=> d!2056068 (= lt!2402510 e!3966413)))

(declare-fun c!1203400 () Bool)

(assert (=> d!2056068 (= c!1203400 (isEmpty!37680 (_1!36707 lt!2402333)))))

(assert (=> d!2056068 (validRegex!8161 (reg!16754 (regOne!33362 r!7292)))))

(assert (=> d!2056068 (= (matchR!8608 (reg!16754 (regOne!33362 r!7292)) (_1!36707 lt!2402333)) lt!2402510)))

(declare-fun b!6551295 () Bool)

(assert (=> b!6551295 (= e!3966416 (= (head!13300 (_1!36707 lt!2402333)) (c!1203224 (reg!16754 (regOne!33362 r!7292)))))))

(declare-fun b!6551296 () Bool)

(declare-fun e!3966419 () Bool)

(assert (=> b!6551296 (= e!3966417 e!3966419)))

(declare-fun c!1203399 () Bool)

(assert (=> b!6551296 (= c!1203399 ((_ is EmptyLang!16425) (reg!16754 (regOne!33362 r!7292))))))

(declare-fun b!6551297 () Bool)

(declare-fun res!2687781 () Bool)

(assert (=> b!6551297 (=> (not res!2687781) (not e!3966416))))

(assert (=> b!6551297 (= res!2687781 (isEmpty!37680 (tail!12385 (_1!36707 lt!2402333))))))

(declare-fun b!6551298 () Bool)

(assert (=> b!6551298 (= e!3966419 (not lt!2402510))))

(declare-fun b!6551299 () Bool)

(declare-fun res!2687783 () Bool)

(declare-fun e!3966415 () Bool)

(assert (=> b!6551299 (=> res!2687783 e!3966415)))

(assert (=> b!6551299 (= res!2687783 (not ((_ is ElementMatch!16425) (reg!16754 (regOne!33362 r!7292)))))))

(assert (=> b!6551299 (= e!3966419 e!3966415)))

(declare-fun bm!569817 () Bool)

(assert (=> bm!569817 (= call!569822 (isEmpty!37680 (_1!36707 lt!2402333)))))

(declare-fun b!6551300 () Bool)

(declare-fun res!2687787 () Bool)

(assert (=> b!6551300 (=> res!2687787 e!3966415)))

(assert (=> b!6551300 (= res!2687787 e!3966416)))

(declare-fun res!2687784 () Bool)

(assert (=> b!6551300 (=> (not res!2687784) (not e!3966416))))

(assert (=> b!6551300 (= res!2687784 lt!2402510)))

(declare-fun b!6551301 () Bool)

(assert (=> b!6551301 (= e!3966413 (matchR!8608 (derivativeStep!5108 (reg!16754 (regOne!33362 r!7292)) (head!13300 (_1!36707 lt!2402333))) (tail!12385 (_1!36707 lt!2402333))))))

(declare-fun b!6551302 () Bool)

(assert (=> b!6551302 (= e!3966417 (= lt!2402510 call!569822))))

(declare-fun b!6551303 () Bool)

(declare-fun e!3966418 () Bool)

(assert (=> b!6551303 (= e!3966415 e!3966418)))

(declare-fun res!2687785 () Bool)

(assert (=> b!6551303 (=> (not res!2687785) (not e!3966418))))

(assert (=> b!6551303 (= res!2687785 (not lt!2402510))))

(declare-fun b!6551304 () Bool)

(declare-fun e!3966414 () Bool)

(assert (=> b!6551304 (= e!3966414 (not (= (head!13300 (_1!36707 lt!2402333)) (c!1203224 (reg!16754 (regOne!33362 r!7292))))))))

(declare-fun b!6551305 () Bool)

(declare-fun res!2687786 () Bool)

(assert (=> b!6551305 (=> res!2687786 e!3966414)))

(assert (=> b!6551305 (= res!2687786 (not (isEmpty!37680 (tail!12385 (_1!36707 lt!2402333)))))))

(declare-fun b!6551306 () Bool)

(assert (=> b!6551306 (= e!3966418 e!3966414)))

(declare-fun res!2687782 () Bool)

(assert (=> b!6551306 (=> res!2687782 e!3966414)))

(assert (=> b!6551306 (= res!2687782 call!569822)))

(assert (= (and d!2056068 c!1203400) b!6551293))

(assert (= (and d!2056068 (not c!1203400)) b!6551301))

(assert (= (and d!2056068 c!1203401) b!6551302))

(assert (= (and d!2056068 (not c!1203401)) b!6551296))

(assert (= (and b!6551296 c!1203399) b!6551298))

(assert (= (and b!6551296 (not c!1203399)) b!6551299))

(assert (= (and b!6551299 (not res!2687783)) b!6551300))

(assert (= (and b!6551300 res!2687784) b!6551294))

(assert (= (and b!6551294 res!2687788) b!6551297))

(assert (= (and b!6551297 res!2687781) b!6551295))

(assert (= (and b!6551300 (not res!2687787)) b!6551303))

(assert (= (and b!6551303 res!2687785) b!6551306))

(assert (= (and b!6551306 (not res!2687782)) b!6551305))

(assert (= (and b!6551305 (not res!2687786)) b!6551304))

(assert (= (or b!6551302 b!6551294 b!6551306) bm!569817))

(declare-fun m!7333744 () Bool)

(assert (=> b!6551301 m!7333744))

(assert (=> b!6551301 m!7333744))

(declare-fun m!7333746 () Bool)

(assert (=> b!6551301 m!7333746))

(declare-fun m!7333748 () Bool)

(assert (=> b!6551301 m!7333748))

(assert (=> b!6551301 m!7333746))

(assert (=> b!6551301 m!7333748))

(declare-fun m!7333750 () Bool)

(assert (=> b!6551301 m!7333750))

(declare-fun m!7333752 () Bool)

(assert (=> b!6551293 m!7333752))

(assert (=> b!6551304 m!7333744))

(assert (=> b!6551295 m!7333744))

(declare-fun m!7333754 () Bool)

(assert (=> bm!569817 m!7333754))

(assert (=> b!6551305 m!7333748))

(assert (=> b!6551305 m!7333748))

(declare-fun m!7333756 () Bool)

(assert (=> b!6551305 m!7333756))

(assert (=> b!6551297 m!7333748))

(assert (=> b!6551297 m!7333748))

(assert (=> b!6551297 m!7333756))

(assert (=> d!2056068 m!7333754))

(assert (=> d!2056068 m!7333564))

(assert (=> b!6550588 d!2056068))

(declare-fun d!2056070 () Bool)

(declare-fun nullableFct!2344 (Regex!16425) Bool)

(assert (=> d!2056070 (= (nullable!6418 (regOne!33362 (regOne!33362 r!7292))) (nullableFct!2344 (regOne!33362 (regOne!33362 r!7292))))))

(declare-fun bs!1672384 () Bool)

(assert (= bs!1672384 d!2056070))

(declare-fun m!7333758 () Bool)

(assert (=> bs!1672384 m!7333758))

(assert (=> b!6550610 d!2056070))

(declare-fun b!6551307 () Bool)

(declare-fun e!3966425 () Bool)

(declare-fun e!3966421 () Bool)

(assert (=> b!6551307 (= e!3966425 e!3966421)))

(declare-fun c!1203402 () Bool)

(assert (=> b!6551307 (= c!1203402 ((_ is Union!16425) (regTwo!33362 r!7292)))))

(declare-fun b!6551308 () Bool)

(declare-fun e!3966422 () Bool)

(assert (=> b!6551308 (= e!3966422 e!3966425)))

(declare-fun c!1203403 () Bool)

(assert (=> b!6551308 (= c!1203403 ((_ is Star!16425) (regTwo!33362 r!7292)))))

(declare-fun b!6551309 () Bool)

(declare-fun res!2687793 () Bool)

(declare-fun e!3966423 () Bool)

(assert (=> b!6551309 (=> res!2687793 e!3966423)))

(assert (=> b!6551309 (= res!2687793 (not ((_ is Concat!25270) (regTwo!33362 r!7292))))))

(assert (=> b!6551309 (= e!3966421 e!3966423)))

(declare-fun d!2056072 () Bool)

(declare-fun res!2687790 () Bool)

(assert (=> d!2056072 (=> res!2687790 e!3966422)))

(assert (=> d!2056072 (= res!2687790 ((_ is ElementMatch!16425) (regTwo!33362 r!7292)))))

(assert (=> d!2056072 (= (validRegex!8161 (regTwo!33362 r!7292)) e!3966422)))

(declare-fun bm!569818 () Bool)

(declare-fun call!569823 () Bool)

(declare-fun call!569825 () Bool)

(assert (=> bm!569818 (= call!569823 call!569825)))

(declare-fun b!6551310 () Bool)

(declare-fun e!3966420 () Bool)

(assert (=> b!6551310 (= e!3966425 e!3966420)))

(declare-fun res!2687792 () Bool)

(assert (=> b!6551310 (= res!2687792 (not (nullable!6418 (reg!16754 (regTwo!33362 r!7292)))))))

(assert (=> b!6551310 (=> (not res!2687792) (not e!3966420))))

(declare-fun b!6551311 () Bool)

(declare-fun res!2687791 () Bool)

(declare-fun e!3966424 () Bool)

(assert (=> b!6551311 (=> (not res!2687791) (not e!3966424))))

(assert (=> b!6551311 (= res!2687791 call!569823)))

(assert (=> b!6551311 (= e!3966421 e!3966424)))

(declare-fun b!6551312 () Bool)

(declare-fun call!569824 () Bool)

(assert (=> b!6551312 (= e!3966424 call!569824)))

(declare-fun b!6551313 () Bool)

(declare-fun e!3966426 () Bool)

(assert (=> b!6551313 (= e!3966426 call!569824)))

(declare-fun bm!569819 () Bool)

(assert (=> bm!569819 (= call!569825 (validRegex!8161 (ite c!1203403 (reg!16754 (regTwo!33362 r!7292)) (ite c!1203402 (regOne!33363 (regTwo!33362 r!7292)) (regOne!33362 (regTwo!33362 r!7292))))))))

(declare-fun bm!569820 () Bool)

(assert (=> bm!569820 (= call!569824 (validRegex!8161 (ite c!1203402 (regTwo!33363 (regTwo!33362 r!7292)) (regTwo!33362 (regTwo!33362 r!7292)))))))

(declare-fun b!6551314 () Bool)

(assert (=> b!6551314 (= e!3966420 call!569825)))

(declare-fun b!6551315 () Bool)

(assert (=> b!6551315 (= e!3966423 e!3966426)))

(declare-fun res!2687789 () Bool)

(assert (=> b!6551315 (=> (not res!2687789) (not e!3966426))))

(assert (=> b!6551315 (= res!2687789 call!569823)))

(assert (= (and d!2056072 (not res!2687790)) b!6551308))

(assert (= (and b!6551308 c!1203403) b!6551310))

(assert (= (and b!6551308 (not c!1203403)) b!6551307))

(assert (= (and b!6551310 res!2687792) b!6551314))

(assert (= (and b!6551307 c!1203402) b!6551311))

(assert (= (and b!6551307 (not c!1203402)) b!6551309))

(assert (= (and b!6551311 res!2687791) b!6551312))

(assert (= (and b!6551309 (not res!2687793)) b!6551315))

(assert (= (and b!6551315 res!2687789) b!6551313))

(assert (= (or b!6551312 b!6551313) bm!569820))

(assert (= (or b!6551311 b!6551315) bm!569818))

(assert (= (or b!6551314 bm!569818) bm!569819))

(declare-fun m!7333760 () Bool)

(assert (=> b!6551310 m!7333760))

(declare-fun m!7333762 () Bool)

(assert (=> bm!569819 m!7333762))

(declare-fun m!7333764 () Bool)

(assert (=> bm!569820 m!7333764))

(assert (=> b!6550589 d!2056072))

(declare-fun bs!1672394 () Bool)

(declare-fun d!2056074 () Bool)

(assert (= bs!1672394 (and d!2056074 b!6550609)))

(declare-fun lambda!363901 () Int)

(assert (=> bs!1672394 (= lambda!363901 lambda!363844)))

(declare-fun bs!1672396 () Bool)

(assert (= bs!1672396 (and d!2056074 d!2056014)))

(assert (=> bs!1672396 (= lambda!363901 lambda!363892)))

(declare-fun e!3966456 () Bool)

(assert (=> d!2056074 e!3966456))

(declare-fun res!2687815 () Bool)

(assert (=> d!2056074 (=> (not res!2687815) (not e!3966456))))

(declare-fun lt!2402518 () Regex!16425)

(assert (=> d!2056074 (= res!2687815 (validRegex!8161 lt!2402518))))

(declare-fun e!3966459 () Regex!16425)

(assert (=> d!2056074 (= lt!2402518 e!3966459)))

(declare-fun c!1203419 () Bool)

(declare-fun e!3966460 () Bool)

(assert (=> d!2056074 (= c!1203419 e!3966460)))

(declare-fun res!2687814 () Bool)

(assert (=> d!2056074 (=> (not res!2687814) (not e!3966460))))

(assert (=> d!2056074 (= res!2687814 ((_ is Cons!65450) (unfocusZipperList!1846 zl!343)))))

(assert (=> d!2056074 (forall!15597 (unfocusZipperList!1846 zl!343) lambda!363901)))

(assert (=> d!2056074 (= (generalisedUnion!2269 (unfocusZipperList!1846 zl!343)) lt!2402518)))

(declare-fun b!6551362 () Bool)

(declare-fun e!3966458 () Bool)

(assert (=> b!6551362 (= e!3966456 e!3966458)))

(declare-fun c!1203418 () Bool)

(assert (=> b!6551362 (= c!1203418 (isEmpty!37678 (unfocusZipperList!1846 zl!343)))))

(declare-fun b!6551363 () Bool)

(declare-fun e!3966457 () Bool)

(declare-fun head!13301 (List!65574) Regex!16425)

(assert (=> b!6551363 (= e!3966457 (= lt!2402518 (head!13301 (unfocusZipperList!1846 zl!343))))))

(declare-fun b!6551364 () Bool)

(declare-fun e!3966461 () Regex!16425)

(assert (=> b!6551364 (= e!3966461 (Union!16425 (h!71898 (unfocusZipperList!1846 zl!343)) (generalisedUnion!2269 (t!379216 (unfocusZipperList!1846 zl!343)))))))

(declare-fun b!6551365 () Bool)

(assert (=> b!6551365 (= e!3966458 e!3966457)))

(declare-fun c!1203417 () Bool)

(declare-fun tail!12386 (List!65574) List!65574)

(assert (=> b!6551365 (= c!1203417 (isEmpty!37678 (tail!12386 (unfocusZipperList!1846 zl!343))))))

(declare-fun b!6551366 () Bool)

(assert (=> b!6551366 (= e!3966459 e!3966461)))

(declare-fun c!1203420 () Bool)

(assert (=> b!6551366 (= c!1203420 ((_ is Cons!65450) (unfocusZipperList!1846 zl!343)))))

(declare-fun b!6551367 () Bool)

(assert (=> b!6551367 (= e!3966461 EmptyLang!16425)))

(declare-fun b!6551368 () Bool)

(declare-fun isEmptyLang!1811 (Regex!16425) Bool)

(assert (=> b!6551368 (= e!3966458 (isEmptyLang!1811 lt!2402518))))

(declare-fun b!6551369 () Bool)

(declare-fun isUnion!1241 (Regex!16425) Bool)

(assert (=> b!6551369 (= e!3966457 (isUnion!1241 lt!2402518))))

(declare-fun b!6551370 () Bool)

(assert (=> b!6551370 (= e!3966459 (h!71898 (unfocusZipperList!1846 zl!343)))))

(declare-fun b!6551371 () Bool)

(assert (=> b!6551371 (= e!3966460 (isEmpty!37678 (t!379216 (unfocusZipperList!1846 zl!343))))))

(assert (= (and d!2056074 res!2687814) b!6551371))

(assert (= (and d!2056074 c!1203419) b!6551370))

(assert (= (and d!2056074 (not c!1203419)) b!6551366))

(assert (= (and b!6551366 c!1203420) b!6551364))

(assert (= (and b!6551366 (not c!1203420)) b!6551367))

(assert (= (and d!2056074 res!2687815) b!6551362))

(assert (= (and b!6551362 c!1203418) b!6551368))

(assert (= (and b!6551362 (not c!1203418)) b!6551365))

(assert (= (and b!6551365 c!1203417) b!6551363))

(assert (= (and b!6551365 (not c!1203417)) b!6551369))

(declare-fun m!7333796 () Bool)

(assert (=> b!6551364 m!7333796))

(assert (=> b!6551362 m!7333022))

(declare-fun m!7333798 () Bool)

(assert (=> b!6551362 m!7333798))

(assert (=> b!6551363 m!7333022))

(declare-fun m!7333800 () Bool)

(assert (=> b!6551363 m!7333800))

(declare-fun m!7333802 () Bool)

(assert (=> d!2056074 m!7333802))

(assert (=> d!2056074 m!7333022))

(declare-fun m!7333804 () Bool)

(assert (=> d!2056074 m!7333804))

(declare-fun m!7333806 () Bool)

(assert (=> b!6551371 m!7333806))

(declare-fun m!7333808 () Bool)

(assert (=> b!6551369 m!7333808))

(assert (=> b!6551365 m!7333022))

(declare-fun m!7333810 () Bool)

(assert (=> b!6551365 m!7333810))

(assert (=> b!6551365 m!7333810))

(declare-fun m!7333812 () Bool)

(assert (=> b!6551365 m!7333812))

(declare-fun m!7333814 () Bool)

(assert (=> b!6551368 m!7333814))

(assert (=> b!6550630 d!2056074))

(declare-fun bs!1672406 () Bool)

(declare-fun d!2056086 () Bool)

(assert (= bs!1672406 (and d!2056086 b!6550609)))

(declare-fun lambda!363904 () Int)

(assert (=> bs!1672406 (= lambda!363904 lambda!363844)))

(declare-fun bs!1672407 () Bool)

(assert (= bs!1672407 (and d!2056086 d!2056014)))

(assert (=> bs!1672407 (= lambda!363904 lambda!363892)))

(declare-fun bs!1672408 () Bool)

(assert (= bs!1672408 (and d!2056086 d!2056074)))

(assert (=> bs!1672408 (= lambda!363904 lambda!363901)))

(declare-fun lt!2402522 () List!65574)

(assert (=> d!2056086 (forall!15597 lt!2402522 lambda!363904)))

(declare-fun e!3966464 () List!65574)

(assert (=> d!2056086 (= lt!2402522 e!3966464)))

(declare-fun c!1203423 () Bool)

(assert (=> d!2056086 (= c!1203423 ((_ is Cons!65452) zl!343))))

(assert (=> d!2056086 (= (unfocusZipperList!1846 zl!343) lt!2402522)))

(declare-fun b!6551376 () Bool)

(assert (=> b!6551376 (= e!3966464 (Cons!65450 (generalisedConcat!2022 (exprs!6309 (h!71900 zl!343))) (unfocusZipperList!1846 (t!379218 zl!343))))))

(declare-fun b!6551377 () Bool)

(assert (=> b!6551377 (= e!3966464 Nil!65450)))

(assert (= (and d!2056086 c!1203423) b!6551376))

(assert (= (and d!2056086 (not c!1203423)) b!6551377))

(declare-fun m!7333824 () Bool)

(assert (=> d!2056086 m!7333824))

(assert (=> b!6551376 m!7333036))

(declare-fun m!7333826 () Bool)

(assert (=> b!6551376 m!7333826))

(assert (=> b!6550630 d!2056086))

(declare-fun d!2056094 () Bool)

(declare-fun choose!48751 ((InoxSet Context!11618) Int) (InoxSet Context!11618))

(assert (=> d!2056094 (= (flatMap!1930 z!1189 lambda!363842) (choose!48751 z!1189 lambda!363842))))

(declare-fun bs!1672409 () Bool)

(assert (= bs!1672409 d!2056094))

(declare-fun m!7333828 () Bool)

(assert (=> bs!1672409 m!7333828))

(assert (=> b!6550617 d!2056094))

(declare-fun d!2056096 () Bool)

(declare-fun dynLambda!26022 (Int Context!11618) (InoxSet Context!11618))

(assert (=> d!2056096 (= (flatMap!1930 z!1189 lambda!363842) (dynLambda!26022 lambda!363842 (h!71900 zl!343)))))

(declare-fun lt!2402529 () Unit!159035)

(declare-fun choose!48752 ((InoxSet Context!11618) Context!11618 Int) Unit!159035)

(assert (=> d!2056096 (= lt!2402529 (choose!48752 z!1189 (h!71900 zl!343) lambda!363842))))

(assert (=> d!2056096 (= z!1189 (store ((as const (Array Context!11618 Bool)) false) (h!71900 zl!343) true))))

(assert (=> d!2056096 (= (lemmaFlatMapOnSingletonSet!1456 z!1189 (h!71900 zl!343) lambda!363842) lt!2402529)))

(declare-fun b_lambda!247925 () Bool)

(assert (=> (not b_lambda!247925) (not d!2056096)))

(declare-fun bs!1672410 () Bool)

(assert (= bs!1672410 d!2056096))

(assert (=> bs!1672410 m!7333078))

(declare-fun m!7333830 () Bool)

(assert (=> bs!1672410 m!7333830))

(declare-fun m!7333832 () Bool)

(assert (=> bs!1672410 m!7333832))

(declare-fun m!7333834 () Bool)

(assert (=> bs!1672410 m!7333834))

(assert (=> b!6550617 d!2056096))

(declare-fun d!2056098 () Bool)

(assert (=> d!2056098 (= (nullable!6418 (h!71898 (exprs!6309 (h!71900 zl!343)))) (nullableFct!2344 (h!71898 (exprs!6309 (h!71900 zl!343)))))))

(declare-fun bs!1672411 () Bool)

(assert (= bs!1672411 d!2056098))

(declare-fun m!7333836 () Bool)

(assert (=> bs!1672411 m!7333836))

(assert (=> b!6550617 d!2056098))

(declare-fun b!6551399 () Bool)

(declare-fun e!3966479 () (InoxSet Context!11618))

(declare-fun call!569835 () (InoxSet Context!11618))

(assert (=> b!6551399 (= e!3966479 call!569835)))

(declare-fun d!2056100 () Bool)

(declare-fun c!1203432 () Bool)

(declare-fun e!3966480 () Bool)

(assert (=> d!2056100 (= c!1203432 e!3966480)))

(declare-fun res!2687823 () Bool)

(assert (=> d!2056100 (=> (not res!2687823) (not e!3966480))))

(assert (=> d!2056100 (= res!2687823 ((_ is Cons!65450) (exprs!6309 (Context!11619 (Cons!65450 (h!71898 (exprs!6309 (h!71900 zl!343))) (t!379216 (exprs!6309 (h!71900 zl!343))))))))))

(declare-fun e!3966481 () (InoxSet Context!11618))

(assert (=> d!2056100 (= (derivationStepZipperUp!1599 (Context!11619 (Cons!65450 (h!71898 (exprs!6309 (h!71900 zl!343))) (t!379216 (exprs!6309 (h!71900 zl!343))))) (h!71899 s!2326)) e!3966481)))

(declare-fun b!6551400 () Bool)

(assert (=> b!6551400 (= e!3966481 ((_ map or) call!569835 (derivationStepZipperUp!1599 (Context!11619 (t!379216 (exprs!6309 (Context!11619 (Cons!65450 (h!71898 (exprs!6309 (h!71900 zl!343))) (t!379216 (exprs!6309 (h!71900 zl!343)))))))) (h!71899 s!2326))))))

(declare-fun b!6551401 () Bool)

(assert (=> b!6551401 (= e!3966481 e!3966479)))

(declare-fun c!1203431 () Bool)

(assert (=> b!6551401 (= c!1203431 ((_ is Cons!65450) (exprs!6309 (Context!11619 (Cons!65450 (h!71898 (exprs!6309 (h!71900 zl!343))) (t!379216 (exprs!6309 (h!71900 zl!343))))))))))

(declare-fun b!6551402 () Bool)

(assert (=> b!6551402 (= e!3966480 (nullable!6418 (h!71898 (exprs!6309 (Context!11619 (Cons!65450 (h!71898 (exprs!6309 (h!71900 zl!343))) (t!379216 (exprs!6309 (h!71900 zl!343)))))))))))

(declare-fun b!6551403 () Bool)

(assert (=> b!6551403 (= e!3966479 ((as const (Array Context!11618 Bool)) false))))

(declare-fun bm!569830 () Bool)

(assert (=> bm!569830 (= call!569835 (derivationStepZipperDown!1673 (h!71898 (exprs!6309 (Context!11619 (Cons!65450 (h!71898 (exprs!6309 (h!71900 zl!343))) (t!379216 (exprs!6309 (h!71900 zl!343))))))) (Context!11619 (t!379216 (exprs!6309 (Context!11619 (Cons!65450 (h!71898 (exprs!6309 (h!71900 zl!343))) (t!379216 (exprs!6309 (h!71900 zl!343)))))))) (h!71899 s!2326)))))

(assert (= (and d!2056100 res!2687823) b!6551402))

(assert (= (and d!2056100 c!1203432) b!6551400))

(assert (= (and d!2056100 (not c!1203432)) b!6551401))

(assert (= (and b!6551401 c!1203431) b!6551399))

(assert (= (and b!6551401 (not c!1203431)) b!6551403))

(assert (= (or b!6551400 b!6551399) bm!569830))

(declare-fun m!7333862 () Bool)

(assert (=> b!6551400 m!7333862))

(declare-fun m!7333864 () Bool)

(assert (=> b!6551402 m!7333864))

(declare-fun m!7333866 () Bool)

(assert (=> bm!569830 m!7333866))

(assert (=> b!6550617 d!2056100))

(declare-fun b!6551404 () Bool)

(declare-fun e!3966484 () Bool)

(assert (=> b!6551404 (= e!3966484 (nullable!6418 (regOne!33362 (h!71898 (exprs!6309 (h!71900 zl!343))))))))

(declare-fun b!6551405 () Bool)

(declare-fun c!1203434 () Bool)

(assert (=> b!6551405 (= c!1203434 e!3966484)))

(declare-fun res!2687824 () Bool)

(assert (=> b!6551405 (=> (not res!2687824) (not e!3966484))))

(assert (=> b!6551405 (= res!2687824 ((_ is Concat!25270) (h!71898 (exprs!6309 (h!71900 zl!343)))))))

(declare-fun e!3966486 () (InoxSet Context!11618))

(declare-fun e!3966482 () (InoxSet Context!11618))

(assert (=> b!6551405 (= e!3966486 e!3966482)))

(declare-fun b!6551406 () Bool)

(declare-fun e!3966487 () (InoxSet Context!11618))

(declare-fun call!569841 () (InoxSet Context!11618))

(assert (=> b!6551406 (= e!3966487 call!569841)))

(declare-fun bm!569831 () Bool)

(declare-fun call!569839 () List!65574)

(declare-fun call!569840 () List!65574)

(assert (=> bm!569831 (= call!569839 call!569840)))

(declare-fun call!569837 () (InoxSet Context!11618))

(declare-fun bm!569832 () Bool)

(declare-fun c!1203437 () Bool)

(assert (=> bm!569832 (= call!569837 (derivationStepZipperDown!1673 (ite c!1203437 (regTwo!33363 (h!71898 (exprs!6309 (h!71900 zl!343)))) (regOne!33362 (h!71898 (exprs!6309 (h!71900 zl!343))))) (ite c!1203437 lt!2402357 (Context!11619 call!569840)) (h!71899 s!2326)))))

(declare-fun d!2056108 () Bool)

(declare-fun c!1203435 () Bool)

(assert (=> d!2056108 (= c!1203435 (and ((_ is ElementMatch!16425) (h!71898 (exprs!6309 (h!71900 zl!343)))) (= (c!1203224 (h!71898 (exprs!6309 (h!71900 zl!343)))) (h!71899 s!2326))))))

(declare-fun e!3966483 () (InoxSet Context!11618))

(assert (=> d!2056108 (= (derivationStepZipperDown!1673 (h!71898 (exprs!6309 (h!71900 zl!343))) lt!2402357 (h!71899 s!2326)) e!3966483)))

(declare-fun call!569836 () (InoxSet Context!11618))

(declare-fun bm!569833 () Bool)

(declare-fun c!1203436 () Bool)

(assert (=> bm!569833 (= call!569836 (derivationStepZipperDown!1673 (ite c!1203437 (regOne!33363 (h!71898 (exprs!6309 (h!71900 zl!343)))) (ite c!1203434 (regTwo!33362 (h!71898 (exprs!6309 (h!71900 zl!343)))) (ite c!1203436 (regOne!33362 (h!71898 (exprs!6309 (h!71900 zl!343)))) (reg!16754 (h!71898 (exprs!6309 (h!71900 zl!343))))))) (ite (or c!1203437 c!1203434) lt!2402357 (Context!11619 call!569839)) (h!71899 s!2326)))))

(declare-fun b!6551407 () Bool)

(declare-fun c!1203433 () Bool)

(assert (=> b!6551407 (= c!1203433 ((_ is Star!16425) (h!71898 (exprs!6309 (h!71900 zl!343)))))))

(declare-fun e!3966485 () (InoxSet Context!11618))

(assert (=> b!6551407 (= e!3966485 e!3966487)))

(declare-fun bm!569834 () Bool)

(assert (=> bm!569834 (= call!569840 ($colon$colon!2266 (exprs!6309 lt!2402357) (ite (or c!1203434 c!1203436) (regTwo!33362 (h!71898 (exprs!6309 (h!71900 zl!343)))) (h!71898 (exprs!6309 (h!71900 zl!343))))))))

(declare-fun b!6551408 () Bool)

(assert (=> b!6551408 (= e!3966487 ((as const (Array Context!11618 Bool)) false))))

(declare-fun b!6551409 () Bool)

(assert (=> b!6551409 (= e!3966485 call!569841)))

(declare-fun bm!569835 () Bool)

(declare-fun call!569838 () (InoxSet Context!11618))

(assert (=> bm!569835 (= call!569838 call!569836)))

(declare-fun b!6551410 () Bool)

(assert (=> b!6551410 (= e!3966483 (store ((as const (Array Context!11618 Bool)) false) lt!2402357 true))))

(declare-fun bm!569836 () Bool)

(assert (=> bm!569836 (= call!569841 call!569838)))

(declare-fun b!6551411 () Bool)

(assert (=> b!6551411 (= e!3966482 ((_ map or) call!569837 call!569838))))

(declare-fun b!6551412 () Bool)

(assert (=> b!6551412 (= e!3966486 ((_ map or) call!569836 call!569837))))

(declare-fun b!6551413 () Bool)

(assert (=> b!6551413 (= e!3966482 e!3966485)))

(assert (=> b!6551413 (= c!1203436 ((_ is Concat!25270) (h!71898 (exprs!6309 (h!71900 zl!343)))))))

(declare-fun b!6551414 () Bool)

(assert (=> b!6551414 (= e!3966483 e!3966486)))

(assert (=> b!6551414 (= c!1203437 ((_ is Union!16425) (h!71898 (exprs!6309 (h!71900 zl!343)))))))

(assert (= (and d!2056108 c!1203435) b!6551410))

(assert (= (and d!2056108 (not c!1203435)) b!6551414))

(assert (= (and b!6551414 c!1203437) b!6551412))

(assert (= (and b!6551414 (not c!1203437)) b!6551405))

(assert (= (and b!6551405 res!2687824) b!6551404))

(assert (= (and b!6551405 c!1203434) b!6551411))

(assert (= (and b!6551405 (not c!1203434)) b!6551413))

(assert (= (and b!6551413 c!1203436) b!6551409))

(assert (= (and b!6551413 (not c!1203436)) b!6551407))

(assert (= (and b!6551407 c!1203433) b!6551406))

(assert (= (and b!6551407 (not c!1203433)) b!6551408))

(assert (= (or b!6551409 b!6551406) bm!569831))

(assert (= (or b!6551409 b!6551406) bm!569836))

(assert (= (or b!6551411 bm!569831) bm!569834))

(assert (= (or b!6551411 bm!569836) bm!569835))

(assert (= (or b!6551412 b!6551411) bm!569832))

(assert (= (or b!6551412 bm!569835) bm!569833))

(declare-fun m!7333868 () Bool)

(assert (=> bm!569833 m!7333868))

(declare-fun m!7333870 () Bool)

(assert (=> b!6551404 m!7333870))

(declare-fun m!7333872 () Bool)

(assert (=> bm!569834 m!7333872))

(declare-fun m!7333874 () Bool)

(assert (=> bm!569832 m!7333874))

(declare-fun m!7333876 () Bool)

(assert (=> b!6551410 m!7333876))

(assert (=> b!6550617 d!2056108))

(declare-fun b!6551415 () Bool)

(declare-fun e!3966488 () (InoxSet Context!11618))

(declare-fun call!569842 () (InoxSet Context!11618))

(assert (=> b!6551415 (= e!3966488 call!569842)))

(declare-fun d!2056110 () Bool)

(declare-fun c!1203439 () Bool)

(declare-fun e!3966489 () Bool)

(assert (=> d!2056110 (= c!1203439 e!3966489)))

(declare-fun res!2687825 () Bool)

(assert (=> d!2056110 (=> (not res!2687825) (not e!3966489))))

(assert (=> d!2056110 (= res!2687825 ((_ is Cons!65450) (exprs!6309 (h!71900 zl!343))))))

(declare-fun e!3966490 () (InoxSet Context!11618))

(assert (=> d!2056110 (= (derivationStepZipperUp!1599 (h!71900 zl!343) (h!71899 s!2326)) e!3966490)))

(declare-fun b!6551416 () Bool)

(assert (=> b!6551416 (= e!3966490 ((_ map or) call!569842 (derivationStepZipperUp!1599 (Context!11619 (t!379216 (exprs!6309 (h!71900 zl!343)))) (h!71899 s!2326))))))

(declare-fun b!6551417 () Bool)

(assert (=> b!6551417 (= e!3966490 e!3966488)))

(declare-fun c!1203438 () Bool)

(assert (=> b!6551417 (= c!1203438 ((_ is Cons!65450) (exprs!6309 (h!71900 zl!343))))))

(declare-fun b!6551418 () Bool)

(assert (=> b!6551418 (= e!3966489 (nullable!6418 (h!71898 (exprs!6309 (h!71900 zl!343)))))))

(declare-fun b!6551419 () Bool)

(assert (=> b!6551419 (= e!3966488 ((as const (Array Context!11618 Bool)) false))))

(declare-fun bm!569837 () Bool)

(assert (=> bm!569837 (= call!569842 (derivationStepZipperDown!1673 (h!71898 (exprs!6309 (h!71900 zl!343))) (Context!11619 (t!379216 (exprs!6309 (h!71900 zl!343)))) (h!71899 s!2326)))))

(assert (= (and d!2056110 res!2687825) b!6551418))

(assert (= (and d!2056110 c!1203439) b!6551416))

(assert (= (and d!2056110 (not c!1203439)) b!6551417))

(assert (= (and b!6551417 c!1203438) b!6551415))

(assert (= (and b!6551417 (not c!1203438)) b!6551419))

(assert (= (or b!6551416 b!6551415) bm!569837))

(declare-fun m!7333878 () Bool)

(assert (=> b!6551416 m!7333878))

(assert (=> b!6551418 m!7333084))

(declare-fun m!7333880 () Bool)

(assert (=> bm!569837 m!7333880))

(assert (=> b!6550617 d!2056110))

(declare-fun b!6551420 () Bool)

(declare-fun e!3966491 () (InoxSet Context!11618))

(declare-fun call!569843 () (InoxSet Context!11618))

(assert (=> b!6551420 (= e!3966491 call!569843)))

(declare-fun d!2056112 () Bool)

(declare-fun c!1203441 () Bool)

(declare-fun e!3966492 () Bool)

(assert (=> d!2056112 (= c!1203441 e!3966492)))

(declare-fun res!2687826 () Bool)

(assert (=> d!2056112 (=> (not res!2687826) (not e!3966492))))

(assert (=> d!2056112 (= res!2687826 ((_ is Cons!65450) (exprs!6309 lt!2402357)))))

(declare-fun e!3966493 () (InoxSet Context!11618))

(assert (=> d!2056112 (= (derivationStepZipperUp!1599 lt!2402357 (h!71899 s!2326)) e!3966493)))

(declare-fun b!6551421 () Bool)

(assert (=> b!6551421 (= e!3966493 ((_ map or) call!569843 (derivationStepZipperUp!1599 (Context!11619 (t!379216 (exprs!6309 lt!2402357))) (h!71899 s!2326))))))

(declare-fun b!6551422 () Bool)

(assert (=> b!6551422 (= e!3966493 e!3966491)))

(declare-fun c!1203440 () Bool)

(assert (=> b!6551422 (= c!1203440 ((_ is Cons!65450) (exprs!6309 lt!2402357)))))

(declare-fun b!6551423 () Bool)

(assert (=> b!6551423 (= e!3966492 (nullable!6418 (h!71898 (exprs!6309 lt!2402357))))))

(declare-fun b!6551424 () Bool)

(assert (=> b!6551424 (= e!3966491 ((as const (Array Context!11618 Bool)) false))))

(declare-fun bm!569838 () Bool)

(assert (=> bm!569838 (= call!569843 (derivationStepZipperDown!1673 (h!71898 (exprs!6309 lt!2402357)) (Context!11619 (t!379216 (exprs!6309 lt!2402357))) (h!71899 s!2326)))))

(assert (= (and d!2056112 res!2687826) b!6551423))

(assert (= (and d!2056112 c!1203441) b!6551421))

(assert (= (and d!2056112 (not c!1203441)) b!6551422))

(assert (= (and b!6551422 c!1203440) b!6551420))

(assert (= (and b!6551422 (not c!1203440)) b!6551424))

(assert (= (or b!6551421 b!6551420) bm!569838))

(declare-fun m!7333882 () Bool)

(assert (=> b!6551421 m!7333882))

(declare-fun m!7333884 () Bool)

(assert (=> b!6551423 m!7333884))

(declare-fun m!7333886 () Bool)

(assert (=> bm!569838 m!7333886))

(assert (=> b!6550617 d!2056112))

(declare-fun b!6551466 () Bool)

(declare-fun e!3966516 () Bool)

(declare-fun lt!2402537 () List!65575)

(assert (=> b!6551466 (= e!3966516 (or (not (= (_2!36707 lt!2402333) Nil!65451)) (= lt!2402537 (_1!36707 lt!2402333))))))

(declare-fun b!6551464 () Bool)

(declare-fun e!3966517 () List!65575)

(assert (=> b!6551464 (= e!3966517 (Cons!65451 (h!71899 (_1!36707 lt!2402333)) (++!14553 (t!379217 (_1!36707 lt!2402333)) (_2!36707 lt!2402333))))))

(declare-fun d!2056114 () Bool)

(assert (=> d!2056114 e!3966516))

(declare-fun res!2687837 () Bool)

(assert (=> d!2056114 (=> (not res!2687837) (not e!3966516))))

(declare-fun content!12558 (List!65575) (InoxSet C!33120))

(assert (=> d!2056114 (= res!2687837 (= (content!12558 lt!2402537) ((_ map or) (content!12558 (_1!36707 lt!2402333)) (content!12558 (_2!36707 lt!2402333)))))))

(assert (=> d!2056114 (= lt!2402537 e!3966517)))

(declare-fun c!1203456 () Bool)

(assert (=> d!2056114 (= c!1203456 ((_ is Nil!65451) (_1!36707 lt!2402333)))))

(assert (=> d!2056114 (= (++!14553 (_1!36707 lt!2402333) (_2!36707 lt!2402333)) lt!2402537)))

(declare-fun b!6551463 () Bool)

(assert (=> b!6551463 (= e!3966517 (_2!36707 lt!2402333))))

(declare-fun b!6551465 () Bool)

(declare-fun res!2687838 () Bool)

(assert (=> b!6551465 (=> (not res!2687838) (not e!3966516))))

(declare-fun size!40500 (List!65575) Int)

(assert (=> b!6551465 (= res!2687838 (= (size!40500 lt!2402537) (+ (size!40500 (_1!36707 lt!2402333)) (size!40500 (_2!36707 lt!2402333)))))))

(assert (= (and d!2056114 c!1203456) b!6551463))

(assert (= (and d!2056114 (not c!1203456)) b!6551464))

(assert (= (and d!2056114 res!2687837) b!6551465))

(assert (= (and b!6551465 res!2687838) b!6551466))

(declare-fun m!7333890 () Bool)

(assert (=> b!6551464 m!7333890))

(declare-fun m!7333894 () Bool)

(assert (=> d!2056114 m!7333894))

(declare-fun m!7333898 () Bool)

(assert (=> d!2056114 m!7333898))

(declare-fun m!7333900 () Bool)

(assert (=> d!2056114 m!7333900))

(declare-fun m!7333904 () Bool)

(assert (=> b!6551465 m!7333904))

(declare-fun m!7333906 () Bool)

(assert (=> b!6551465 m!7333906))

(declare-fun m!7333914 () Bool)

(assert (=> b!6551465 m!7333914))

(assert (=> b!6550595 d!2056114))

(declare-fun d!2056116 () Bool)

(assert (=> d!2056116 (= (get!22719 lt!2402348) (v!52500 lt!2402348))))

(assert (=> b!6550595 d!2056116))

(declare-fun d!2056120 () Bool)

(assert (=> d!2056120 (isDefined!13019 (findConcatSeparationZippers!190 lt!2402368 (store ((as const (Array Context!11618 Bool)) false) lt!2402366 true) Nil!65451 s!2326 s!2326))))

(declare-fun lt!2402546 () Unit!159035)

(declare-fun choose!48754 ((InoxSet Context!11618) Context!11618 List!65575) Unit!159035)

(assert (=> d!2056120 (= lt!2402546 (choose!48754 lt!2402368 lt!2402366 s!2326))))

(assert (=> d!2056120 (matchZipper!2437 (appendTo!186 lt!2402368 lt!2402366) s!2326)))

(assert (=> d!2056120 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!190 lt!2402368 lt!2402366 s!2326) lt!2402546)))

(declare-fun bs!1672430 () Bool)

(assert (= bs!1672430 d!2056120))

(assert (=> bs!1672430 m!7333044))

(assert (=> bs!1672430 m!7333044))

(declare-fun m!7333956 () Bool)

(assert (=> bs!1672430 m!7333956))

(assert (=> bs!1672430 m!7333066))

(declare-fun m!7333958 () Bool)

(assert (=> bs!1672430 m!7333958))

(declare-fun m!7333960 () Bool)

(assert (=> bs!1672430 m!7333960))

(assert (=> bs!1672430 m!7333066))

(assert (=> bs!1672430 m!7333956))

(declare-fun m!7333962 () Bool)

(assert (=> bs!1672430 m!7333962))

(assert (=> b!6550595 d!2056120))

(declare-fun d!2056138 () Bool)

(assert (=> d!2056138 (= (isDefined!13019 lt!2402348) (not (isEmpty!37682 lt!2402348)))))

(declare-fun bs!1672431 () Bool)

(assert (= bs!1672431 d!2056138))

(declare-fun m!7333964 () Bool)

(assert (=> bs!1672431 m!7333964))

(assert (=> b!6550595 d!2056138))

(declare-fun b!6551528 () Bool)

(declare-fun res!2687866 () Bool)

(declare-fun e!3966552 () Bool)

(assert (=> b!6551528 (=> (not res!2687866) (not e!3966552))))

(declare-fun lt!2402562 () Option!16316)

(assert (=> b!6551528 (= res!2687866 (matchZipper!2437 lt!2402373 (_2!36707 (get!22719 lt!2402562))))))

(declare-fun b!6551529 () Bool)

(declare-fun e!3966551 () Option!16316)

(declare-fun e!3966555 () Option!16316)

(assert (=> b!6551529 (= e!3966551 e!3966555)))

(declare-fun c!1203476 () Bool)

(assert (=> b!6551529 (= c!1203476 ((_ is Nil!65451) s!2326))))

(declare-fun b!6551530 () Bool)

(assert (=> b!6551530 (= e!3966551 (Some!16315 (tuple2!66809 Nil!65451 s!2326)))))

(declare-fun b!6551531 () Bool)

(declare-fun e!3966554 () Bool)

(assert (=> b!6551531 (= e!3966554 (matchZipper!2437 lt!2402373 s!2326))))

(declare-fun b!6551532 () Bool)

(assert (=> b!6551532 (= e!3966555 None!16315)))

(declare-fun d!2056140 () Bool)

(declare-fun e!3966553 () Bool)

(assert (=> d!2056140 e!3966553))

(declare-fun res!2687864 () Bool)

(assert (=> d!2056140 (=> res!2687864 e!3966553)))

(assert (=> d!2056140 (= res!2687864 e!3966552)))

(declare-fun res!2687863 () Bool)

(assert (=> d!2056140 (=> (not res!2687863) (not e!3966552))))

(assert (=> d!2056140 (= res!2687863 (isDefined!13019 lt!2402562))))

(assert (=> d!2056140 (= lt!2402562 e!3966551)))

(declare-fun c!1203477 () Bool)

(assert (=> d!2056140 (= c!1203477 e!3966554)))

(declare-fun res!2687862 () Bool)

(assert (=> d!2056140 (=> (not res!2687862) (not e!3966554))))

(assert (=> d!2056140 (= res!2687862 (matchZipper!2437 lt!2402368 Nil!65451))))

(assert (=> d!2056140 (= (++!14553 Nil!65451 s!2326) s!2326)))

(assert (=> d!2056140 (= (findConcatSeparationZippers!190 lt!2402368 lt!2402373 Nil!65451 s!2326 s!2326) lt!2402562)))

(declare-fun b!6551533 () Bool)

(assert (=> b!6551533 (= e!3966553 (not (isDefined!13019 lt!2402562)))))

(declare-fun b!6551534 () Bool)

(declare-fun lt!2402560 () Unit!159035)

(declare-fun lt!2402561 () Unit!159035)

(assert (=> b!6551534 (= lt!2402560 lt!2402561)))

(assert (=> b!6551534 (= (++!14553 (++!14553 Nil!65451 (Cons!65451 (h!71899 s!2326) Nil!65451)) (t!379217 s!2326)) s!2326)))

(assert (=> b!6551534 (= lt!2402561 (lemmaMoveElementToOtherListKeepsConcatEq!2568 Nil!65451 (h!71899 s!2326) (t!379217 s!2326) s!2326))))

(assert (=> b!6551534 (= e!3966555 (findConcatSeparationZippers!190 lt!2402368 lt!2402373 (++!14553 Nil!65451 (Cons!65451 (h!71899 s!2326) Nil!65451)) (t!379217 s!2326) s!2326))))

(declare-fun b!6551535 () Bool)

(declare-fun res!2687865 () Bool)

(assert (=> b!6551535 (=> (not res!2687865) (not e!3966552))))

(assert (=> b!6551535 (= res!2687865 (matchZipper!2437 lt!2402368 (_1!36707 (get!22719 lt!2402562))))))

(declare-fun b!6551536 () Bool)

(assert (=> b!6551536 (= e!3966552 (= (++!14553 (_1!36707 (get!22719 lt!2402562)) (_2!36707 (get!22719 lt!2402562))) s!2326))))

(assert (= (and d!2056140 res!2687862) b!6551531))

(assert (= (and d!2056140 c!1203477) b!6551530))

(assert (= (and d!2056140 (not c!1203477)) b!6551529))

(assert (= (and b!6551529 c!1203476) b!6551532))

(assert (= (and b!6551529 (not c!1203476)) b!6551534))

(assert (= (and d!2056140 res!2687863) b!6551535))

(assert (= (and b!6551535 res!2687865) b!6551528))

(assert (= (and b!6551528 res!2687866) b!6551536))

(assert (= (and d!2056140 (not res!2687864)) b!6551533))

(declare-fun m!7333990 () Bool)

(assert (=> d!2056140 m!7333990))

(declare-fun m!7333992 () Bool)

(assert (=> d!2056140 m!7333992))

(declare-fun m!7333994 () Bool)

(assert (=> d!2056140 m!7333994))

(declare-fun m!7333996 () Bool)

(assert (=> b!6551528 m!7333996))

(declare-fun m!7333998 () Bool)

(assert (=> b!6551528 m!7333998))

(assert (=> b!6551533 m!7333990))

(assert (=> b!6551535 m!7333996))

(declare-fun m!7334000 () Bool)

(assert (=> b!6551535 m!7334000))

(declare-fun m!7334002 () Bool)

(assert (=> b!6551531 m!7334002))

(assert (=> b!6551534 m!7333404))

(assert (=> b!6551534 m!7333404))

(assert (=> b!6551534 m!7333406))

(assert (=> b!6551534 m!7333408))

(assert (=> b!6551534 m!7333404))

(declare-fun m!7334004 () Bool)

(assert (=> b!6551534 m!7334004))

(assert (=> b!6551536 m!7333996))

(declare-fun m!7334006 () Bool)

(assert (=> b!6551536 m!7334006))

(assert (=> b!6550595 d!2056140))

(declare-fun d!2056156 () Bool)

(declare-fun e!3966570 () Bool)

(assert (=> d!2056156 (= (matchZipper!2437 ((_ map or) lt!2402371 lt!2402343) (t!379217 s!2326)) e!3966570)))

(declare-fun res!2687873 () Bool)

(assert (=> d!2056156 (=> res!2687873 e!3966570)))

(assert (=> d!2056156 (= res!2687873 (matchZipper!2437 lt!2402371 (t!379217 s!2326)))))

(declare-fun lt!2402567 () Unit!159035)

(declare-fun choose!48755 ((InoxSet Context!11618) (InoxSet Context!11618) List!65575) Unit!159035)

(assert (=> d!2056156 (= lt!2402567 (choose!48755 lt!2402371 lt!2402343 (t!379217 s!2326)))))

(assert (=> d!2056156 (= (lemmaZipperConcatMatchesSameAsBothZippers!1256 lt!2402371 lt!2402343 (t!379217 s!2326)) lt!2402567)))

(declare-fun b!6551559 () Bool)

(assert (=> b!6551559 (= e!3966570 (matchZipper!2437 lt!2402343 (t!379217 s!2326)))))

(assert (= (and d!2056156 (not res!2687873)) b!6551559))

(assert (=> d!2056156 m!7333030))

(assert (=> d!2056156 m!7333028))

(declare-fun m!7334008 () Bool)

(assert (=> d!2056156 m!7334008))

(assert (=> b!6551559 m!7333056))

(assert (=> b!6550618 d!2056156))

(assert (=> b!6550618 d!2055900))

(declare-fun d!2056158 () Bool)

(declare-fun c!1203486 () Bool)

(assert (=> d!2056158 (= c!1203486 (isEmpty!37680 (t!379217 s!2326)))))

(declare-fun e!3966571 () Bool)

(assert (=> d!2056158 (= (matchZipper!2437 ((_ map or) lt!2402371 lt!2402343) (t!379217 s!2326)) e!3966571)))

(declare-fun b!6551560 () Bool)

(assert (=> b!6551560 (= e!3966571 (nullableZipper!2170 ((_ map or) lt!2402371 lt!2402343)))))

(declare-fun b!6551561 () Bool)

(assert (=> b!6551561 (= e!3966571 (matchZipper!2437 (derivationStepZipper!2391 ((_ map or) lt!2402371 lt!2402343) (head!13300 (t!379217 s!2326))) (tail!12385 (t!379217 s!2326))))))

(assert (= (and d!2056158 c!1203486) b!6551560))

(assert (= (and d!2056158 (not c!1203486)) b!6551561))

(assert (=> d!2056158 m!7333200))

(declare-fun m!7334010 () Bool)

(assert (=> b!6551560 m!7334010))

(assert (=> b!6551561 m!7333204))

(assert (=> b!6551561 m!7333204))

(declare-fun m!7334012 () Bool)

(assert (=> b!6551561 m!7334012))

(assert (=> b!6551561 m!7333208))

(assert (=> b!6551561 m!7334012))

(assert (=> b!6551561 m!7333208))

(declare-fun m!7334014 () Bool)

(assert (=> b!6551561 m!7334014))

(assert (=> b!6550618 d!2056158))

(declare-fun d!2056160 () Bool)

(declare-fun lt!2402568 () Regex!16425)

(assert (=> d!2056160 (validRegex!8161 lt!2402568)))

(assert (=> d!2056160 (= lt!2402568 (generalisedUnion!2269 (unfocusZipperList!1846 lt!2402364)))))

(assert (=> d!2056160 (= (unfocusZipper!2167 lt!2402364) lt!2402568)))

(declare-fun bs!1672456 () Bool)

(assert (= bs!1672456 d!2056160))

(declare-fun m!7334016 () Bool)

(assert (=> bs!1672456 m!7334016))

(declare-fun m!7334018 () Bool)

(assert (=> bs!1672456 m!7334018))

(assert (=> bs!1672456 m!7334018))

(declare-fun m!7334020 () Bool)

(assert (=> bs!1672456 m!7334020))

(assert (=> b!6550614 d!2056160))

(declare-fun d!2056162 () Bool)

(assert (=> d!2056162 (= (isEmpty!37677 (t!379218 zl!343)) ((_ is Nil!65452) (t!379218 zl!343)))))

(assert (=> b!6550593 d!2056162))

(declare-fun bs!1672464 () Bool)

(declare-fun d!2056164 () Bool)

(assert (= bs!1672464 (and d!2056164 b!6550609)))

(declare-fun lambda!363926 () Int)

(assert (=> bs!1672464 (= lambda!363926 lambda!363844)))

(declare-fun bs!1672465 () Bool)

(assert (= bs!1672465 (and d!2056164 d!2056014)))

(assert (=> bs!1672465 (= lambda!363926 lambda!363892)))

(declare-fun bs!1672466 () Bool)

(assert (= bs!1672466 (and d!2056164 d!2056074)))

(assert (=> bs!1672466 (= lambda!363926 lambda!363901)))

(declare-fun bs!1672467 () Bool)

(assert (= bs!1672467 (and d!2056164 d!2056086)))

(assert (=> bs!1672467 (= lambda!363926 lambda!363904)))

(assert (=> d!2056164 (= (inv!84309 setElem!44706) (forall!15597 (exprs!6309 setElem!44706) lambda!363926))))

(declare-fun bs!1672470 () Bool)

(assert (= bs!1672470 d!2056164))

(declare-fun m!7334050 () Bool)

(assert (=> bs!1672470 m!7334050))

(assert (=> setNonEmpty!44706 d!2056164))

(declare-fun d!2056174 () Bool)

(declare-fun lt!2402571 () Regex!16425)

(assert (=> d!2056174 (validRegex!8161 lt!2402571)))

(assert (=> d!2056174 (= lt!2402571 (generalisedUnion!2269 (unfocusZipperList!1846 lt!2402341)))))

(assert (=> d!2056174 (= (unfocusZipper!2167 lt!2402341) lt!2402571)))

(declare-fun bs!1672471 () Bool)

(assert (= bs!1672471 d!2056174))

(declare-fun m!7334052 () Bool)

(assert (=> bs!1672471 m!7334052))

(declare-fun m!7334054 () Bool)

(assert (=> bs!1672471 m!7334054))

(assert (=> bs!1672471 m!7334054))

(declare-fun m!7334056 () Bool)

(assert (=> bs!1672471 m!7334056))

(assert (=> b!6550615 d!2056174))

(declare-fun b!6551577 () Bool)

(declare-fun e!3966581 () (InoxSet Context!11618))

(declare-fun call!569850 () (InoxSet Context!11618))

(assert (=> b!6551577 (= e!3966581 call!569850)))

(declare-fun d!2056176 () Bool)

(declare-fun c!1203494 () Bool)

(declare-fun e!3966582 () Bool)

(assert (=> d!2056176 (= c!1203494 e!3966582)))

(declare-fun res!2687877 () Bool)

(assert (=> d!2056176 (=> (not res!2687877) (not e!3966582))))

(assert (=> d!2056176 (= res!2687877 ((_ is Cons!65450) (exprs!6309 lt!2402367)))))

(declare-fun e!3966583 () (InoxSet Context!11618))

(assert (=> d!2056176 (= (derivationStepZipperUp!1599 lt!2402367 (h!71899 s!2326)) e!3966583)))

(declare-fun b!6551578 () Bool)

(assert (=> b!6551578 (= e!3966583 ((_ map or) call!569850 (derivationStepZipperUp!1599 (Context!11619 (t!379216 (exprs!6309 lt!2402367))) (h!71899 s!2326))))))

(declare-fun b!6551579 () Bool)

(assert (=> b!6551579 (= e!3966583 e!3966581)))

(declare-fun c!1203493 () Bool)

(assert (=> b!6551579 (= c!1203493 ((_ is Cons!65450) (exprs!6309 lt!2402367)))))

(declare-fun b!6551580 () Bool)

(assert (=> b!6551580 (= e!3966582 (nullable!6418 (h!71898 (exprs!6309 lt!2402367))))))

(declare-fun b!6551581 () Bool)

(assert (=> b!6551581 (= e!3966581 ((as const (Array Context!11618 Bool)) false))))

(declare-fun bm!569845 () Bool)

(assert (=> bm!569845 (= call!569850 (derivationStepZipperDown!1673 (h!71898 (exprs!6309 lt!2402367)) (Context!11619 (t!379216 (exprs!6309 lt!2402367))) (h!71899 s!2326)))))

(assert (= (and d!2056176 res!2687877) b!6551580))

(assert (= (and d!2056176 c!1203494) b!6551578))

(assert (= (and d!2056176 (not c!1203494)) b!6551579))

(assert (= (and b!6551579 c!1203493) b!6551577))

(assert (= (and b!6551579 (not c!1203493)) b!6551581))

(assert (= (or b!6551578 b!6551577) bm!569845))

(declare-fun m!7334064 () Bool)

(assert (=> b!6551578 m!7334064))

(declare-fun m!7334066 () Bool)

(assert (=> b!6551580 m!7334066))

(declare-fun m!7334068 () Bool)

(assert (=> bm!569845 m!7334068))

(assert (=> b!6550615 d!2056176))

(declare-fun b!6551587 () Bool)

(declare-fun e!3966587 () (InoxSet Context!11618))

(declare-fun call!569852 () (InoxSet Context!11618))

(assert (=> b!6551587 (= e!3966587 call!569852)))

(declare-fun d!2056180 () Bool)

(declare-fun c!1203498 () Bool)

(declare-fun e!3966588 () Bool)

(assert (=> d!2056180 (= c!1203498 e!3966588)))

(declare-fun res!2687879 () Bool)

(assert (=> d!2056180 (=> (not res!2687879) (not e!3966588))))

(assert (=> d!2056180 (= res!2687879 ((_ is Cons!65450) (exprs!6309 lt!2402366)))))

(declare-fun e!3966589 () (InoxSet Context!11618))

(assert (=> d!2056180 (= (derivationStepZipperUp!1599 lt!2402366 (h!71899 s!2326)) e!3966589)))

(declare-fun b!6551588 () Bool)

(assert (=> b!6551588 (= e!3966589 ((_ map or) call!569852 (derivationStepZipperUp!1599 (Context!11619 (t!379216 (exprs!6309 lt!2402366))) (h!71899 s!2326))))))

(declare-fun b!6551589 () Bool)

(assert (=> b!6551589 (= e!3966589 e!3966587)))

(declare-fun c!1203497 () Bool)

(assert (=> b!6551589 (= c!1203497 ((_ is Cons!65450) (exprs!6309 lt!2402366)))))

(declare-fun b!6551590 () Bool)

(assert (=> b!6551590 (= e!3966588 (nullable!6418 (h!71898 (exprs!6309 lt!2402366))))))

(declare-fun b!6551591 () Bool)

(assert (=> b!6551591 (= e!3966587 ((as const (Array Context!11618 Bool)) false))))

(declare-fun bm!569847 () Bool)

(assert (=> bm!569847 (= call!569852 (derivationStepZipperDown!1673 (h!71898 (exprs!6309 lt!2402366)) (Context!11619 (t!379216 (exprs!6309 lt!2402366))) (h!71899 s!2326)))))

(assert (= (and d!2056180 res!2687879) b!6551590))

(assert (= (and d!2056180 c!1203498) b!6551588))

(assert (= (and d!2056180 (not c!1203498)) b!6551589))

(assert (= (and b!6551589 c!1203497) b!6551587))

(assert (= (and b!6551589 (not c!1203497)) b!6551591))

(assert (= (or b!6551588 b!6551587) bm!569847))

(declare-fun m!7334074 () Bool)

(assert (=> b!6551588 m!7334074))

(declare-fun m!7334078 () Bool)

(assert (=> b!6551590 m!7334078))

(declare-fun m!7334080 () Bool)

(assert (=> bm!569847 m!7334080))

(assert (=> b!6550615 d!2056180))

(declare-fun d!2056184 () Bool)

(assert (=> d!2056184 (= (flatMap!1930 lt!2402373 lambda!363842) (choose!48751 lt!2402373 lambda!363842))))

(declare-fun bs!1672472 () Bool)

(assert (= bs!1672472 d!2056184))

(declare-fun m!7334082 () Bool)

(assert (=> bs!1672472 m!7334082))

(assert (=> b!6550615 d!2056184))

(declare-fun d!2056186 () Bool)

(assert (=> d!2056186 (= (flatMap!1930 lt!2402373 lambda!363842) (dynLambda!26022 lambda!363842 lt!2402366))))

(declare-fun lt!2402573 () Unit!159035)

(assert (=> d!2056186 (= lt!2402573 (choose!48752 lt!2402373 lt!2402366 lambda!363842))))

(assert (=> d!2056186 (= lt!2402373 (store ((as const (Array Context!11618 Bool)) false) lt!2402366 true))))

(assert (=> d!2056186 (= (lemmaFlatMapOnSingletonSet!1456 lt!2402373 lt!2402366 lambda!363842) lt!2402573)))

(declare-fun b_lambda!247935 () Bool)

(assert (=> (not b_lambda!247935) (not d!2056186)))

(declare-fun bs!1672474 () Bool)

(assert (= bs!1672474 d!2056186))

(assert (=> bs!1672474 m!7333040))

(declare-fun m!7334090 () Bool)

(assert (=> bs!1672474 m!7334090))

(declare-fun m!7334092 () Bool)

(assert (=> bs!1672474 m!7334092))

(assert (=> bs!1672474 m!7333044))

(assert (=> b!6550615 d!2056186))

(declare-fun d!2056190 () Bool)

(assert (=> d!2056190 (= (flatMap!1930 lt!2402368 lambda!363842) (choose!48751 lt!2402368 lambda!363842))))

(declare-fun bs!1672475 () Bool)

(assert (= bs!1672475 d!2056190))

(declare-fun m!7334094 () Bool)

(assert (=> bs!1672475 m!7334094))

(assert (=> b!6550615 d!2056190))

(declare-fun d!2056192 () Bool)

(assert (=> d!2056192 (= (flatMap!1930 lt!2402368 lambda!363842) (dynLambda!26022 lambda!363842 lt!2402367))))

(declare-fun lt!2402574 () Unit!159035)

(assert (=> d!2056192 (= lt!2402574 (choose!48752 lt!2402368 lt!2402367 lambda!363842))))

(assert (=> d!2056192 (= lt!2402368 (store ((as const (Array Context!11618 Bool)) false) lt!2402367 true))))

(assert (=> d!2056192 (= (lemmaFlatMapOnSingletonSet!1456 lt!2402368 lt!2402367 lambda!363842) lt!2402574)))

(declare-fun b_lambda!247937 () Bool)

(assert (=> (not b_lambda!247937) (not d!2056192)))

(declare-fun bs!1672476 () Bool)

(assert (= bs!1672476 d!2056192))

(assert (=> bs!1672476 m!7333038))

(declare-fun m!7334100 () Bool)

(assert (=> bs!1672476 m!7334100))

(declare-fun m!7334102 () Bool)

(assert (=> bs!1672476 m!7334102))

(assert (=> bs!1672476 m!7333050))

(assert (=> b!6550615 d!2056192))

(declare-fun d!2056196 () Bool)

(declare-fun lt!2402575 () Regex!16425)

(assert (=> d!2056196 (validRegex!8161 lt!2402575)))

(assert (=> d!2056196 (= lt!2402575 (generalisedUnion!2269 (unfocusZipperList!1846 zl!343)))))

(assert (=> d!2056196 (= (unfocusZipper!2167 zl!343) lt!2402575)))

(declare-fun bs!1672477 () Bool)

(assert (= bs!1672477 d!2056196))

(declare-fun m!7334104 () Bool)

(assert (=> bs!1672477 m!7334104))

(assert (=> bs!1672477 m!7333022))

(assert (=> bs!1672477 m!7333022))

(assert (=> bs!1672477 m!7333024))

(assert (=> b!6550601 d!2056196))

(declare-fun bs!1672478 () Bool)

(declare-fun d!2056198 () Bool)

(assert (= bs!1672478 (and d!2056198 d!2056074)))

(declare-fun lambda!363929 () Int)

(assert (=> bs!1672478 (= lambda!363929 lambda!363901)))

(declare-fun bs!1672479 () Bool)

(assert (= bs!1672479 (and d!2056198 d!2056086)))

(assert (=> bs!1672479 (= lambda!363929 lambda!363904)))

(declare-fun bs!1672480 () Bool)

(assert (= bs!1672480 (and d!2056198 d!2056164)))

(assert (=> bs!1672480 (= lambda!363929 lambda!363926)))

(declare-fun bs!1672481 () Bool)

(assert (= bs!1672481 (and d!2056198 d!2056014)))

(assert (=> bs!1672481 (= lambda!363929 lambda!363892)))

(declare-fun bs!1672482 () Bool)

(assert (= bs!1672482 (and d!2056198 b!6550609)))

(assert (=> bs!1672482 (= lambda!363929 lambda!363844)))

(declare-fun b!6551684 () Bool)

(declare-fun e!3966638 () Regex!16425)

(assert (=> b!6551684 (= e!3966638 (Concat!25270 (h!71898 (exprs!6309 (h!71900 zl!343))) (generalisedConcat!2022 (t!379216 (exprs!6309 (h!71900 zl!343))))))))

(declare-fun b!6551685 () Bool)

(declare-fun e!3966637 () Bool)

(declare-fun lt!2402581 () Regex!16425)

(declare-fun isConcat!1325 (Regex!16425) Bool)

(assert (=> b!6551685 (= e!3966637 (isConcat!1325 lt!2402581))))

(declare-fun b!6551686 () Bool)

(assert (=> b!6551686 (= e!3966638 EmptyExpr!16425)))

(declare-fun e!3966640 () Bool)

(assert (=> d!2056198 e!3966640))

(declare-fun res!2687889 () Bool)

(assert (=> d!2056198 (=> (not res!2687889) (not e!3966640))))

(assert (=> d!2056198 (= res!2687889 (validRegex!8161 lt!2402581))))

(declare-fun e!3966636 () Regex!16425)

(assert (=> d!2056198 (= lt!2402581 e!3966636)))

(declare-fun c!1203515 () Bool)

(declare-fun e!3966639 () Bool)

(assert (=> d!2056198 (= c!1203515 e!3966639)))

(declare-fun res!2687890 () Bool)

(assert (=> d!2056198 (=> (not res!2687890) (not e!3966639))))

(assert (=> d!2056198 (= res!2687890 ((_ is Cons!65450) (exprs!6309 (h!71900 zl!343))))))

(assert (=> d!2056198 (forall!15597 (exprs!6309 (h!71900 zl!343)) lambda!363929)))

(assert (=> d!2056198 (= (generalisedConcat!2022 (exprs!6309 (h!71900 zl!343))) lt!2402581)))

(declare-fun b!6551687 () Bool)

(declare-fun e!3966641 () Bool)

(assert (=> b!6551687 (= e!3966640 e!3966641)))

(declare-fun c!1203514 () Bool)

(assert (=> b!6551687 (= c!1203514 (isEmpty!37678 (exprs!6309 (h!71900 zl!343))))))

(declare-fun b!6551688 () Bool)

(declare-fun isEmptyExpr!1802 (Regex!16425) Bool)

(assert (=> b!6551688 (= e!3966641 (isEmptyExpr!1802 lt!2402581))))

(declare-fun b!6551689 () Bool)

(assert (=> b!6551689 (= e!3966637 (= lt!2402581 (head!13301 (exprs!6309 (h!71900 zl!343)))))))

(declare-fun b!6551690 () Bool)

(assert (=> b!6551690 (= e!3966641 e!3966637)))

(declare-fun c!1203516 () Bool)

(assert (=> b!6551690 (= c!1203516 (isEmpty!37678 (tail!12386 (exprs!6309 (h!71900 zl!343)))))))

(declare-fun b!6551691 () Bool)

(assert (=> b!6551691 (= e!3966636 e!3966638)))

(declare-fun c!1203517 () Bool)

(assert (=> b!6551691 (= c!1203517 ((_ is Cons!65450) (exprs!6309 (h!71900 zl!343))))))

(declare-fun b!6551692 () Bool)

(assert (=> b!6551692 (= e!3966636 (h!71898 (exprs!6309 (h!71900 zl!343))))))

(declare-fun b!6551693 () Bool)

(assert (=> b!6551693 (= e!3966639 (isEmpty!37678 (t!379216 (exprs!6309 (h!71900 zl!343)))))))

(assert (= (and d!2056198 res!2687890) b!6551693))

(assert (= (and d!2056198 c!1203515) b!6551692))

(assert (= (and d!2056198 (not c!1203515)) b!6551691))

(assert (= (and b!6551691 c!1203517) b!6551684))

(assert (= (and b!6551691 (not c!1203517)) b!6551686))

(assert (= (and d!2056198 res!2687889) b!6551687))

(assert (= (and b!6551687 c!1203514) b!6551688))

(assert (= (and b!6551687 (not c!1203514)) b!6551690))

(assert (= (and b!6551690 c!1203516) b!6551689))

(assert (= (and b!6551690 (not c!1203516)) b!6551685))

(declare-fun m!7334126 () Bool)

(assert (=> b!6551690 m!7334126))

(assert (=> b!6551690 m!7334126))

(declare-fun m!7334132 () Bool)

(assert (=> b!6551690 m!7334132))

(declare-fun m!7334134 () Bool)

(assert (=> b!6551689 m!7334134))

(declare-fun m!7334136 () Bool)

(assert (=> b!6551685 m!7334136))

(declare-fun m!7334138 () Bool)

(assert (=> b!6551687 m!7334138))

(declare-fun m!7334140 () Bool)

(assert (=> b!6551688 m!7334140))

(declare-fun m!7334142 () Bool)

(assert (=> d!2056198 m!7334142))

(declare-fun m!7334144 () Bool)

(assert (=> d!2056198 m!7334144))

(declare-fun m!7334146 () Bool)

(assert (=> b!6551684 m!7334146))

(assert (=> b!6551693 m!7333100))

(assert (=> b!6550602 d!2056198))

(declare-fun d!2056212 () Bool)

(declare-fun c!1203518 () Bool)

(assert (=> d!2056212 (= c!1203518 (isEmpty!37680 (_1!36707 lt!2402333)))))

(declare-fun e!3966643 () Bool)

(assert (=> d!2056212 (= (matchZipper!2437 lt!2402368 (_1!36707 lt!2402333)) e!3966643)))

(declare-fun b!6551695 () Bool)

(assert (=> b!6551695 (= e!3966643 (nullableZipper!2170 lt!2402368))))

(declare-fun b!6551696 () Bool)

(assert (=> b!6551696 (= e!3966643 (matchZipper!2437 (derivationStepZipper!2391 lt!2402368 (head!13300 (_1!36707 lt!2402333))) (tail!12385 (_1!36707 lt!2402333))))))

(assert (= (and d!2056212 c!1203518) b!6551695))

(assert (= (and d!2056212 (not c!1203518)) b!6551696))

(assert (=> d!2056212 m!7333754))

(declare-fun m!7334148 () Bool)

(assert (=> b!6551695 m!7334148))

(assert (=> b!6551696 m!7333744))

(assert (=> b!6551696 m!7333744))

(declare-fun m!7334150 () Bool)

(assert (=> b!6551696 m!7334150))

(assert (=> b!6551696 m!7333748))

(assert (=> b!6551696 m!7334150))

(assert (=> b!6551696 m!7333748))

(declare-fun m!7334152 () Bool)

(assert (=> b!6551696 m!7334152))

(assert (=> b!6550622 d!2056212))

(declare-fun d!2056214 () Bool)

(assert (=> d!2056214 (= (flatMap!1930 lt!2402355 lambda!363842) (choose!48751 lt!2402355 lambda!363842))))

(declare-fun bs!1672488 () Bool)

(assert (= bs!1672488 d!2056214))

(declare-fun m!7334154 () Bool)

(assert (=> bs!1672488 m!7334154))

(assert (=> b!6550621 d!2056214))

(declare-fun b!6551697 () Bool)

(declare-fun e!3966644 () (InoxSet Context!11618))

(declare-fun call!569860 () (InoxSet Context!11618))

(assert (=> b!6551697 (= e!3966644 call!569860)))

(declare-fun d!2056216 () Bool)

(declare-fun c!1203520 () Bool)

(declare-fun e!3966645 () Bool)

(assert (=> d!2056216 (= c!1203520 e!3966645)))

(declare-fun res!2687891 () Bool)

(assert (=> d!2056216 (=> (not res!2687891) (not e!3966645))))

(assert (=> d!2056216 (= res!2687891 ((_ is Cons!65450) (exprs!6309 lt!2402359)))))

(declare-fun e!3966646 () (InoxSet Context!11618))

(assert (=> d!2056216 (= (derivationStepZipperUp!1599 lt!2402359 (h!71899 s!2326)) e!3966646)))

(declare-fun b!6551698 () Bool)

(assert (=> b!6551698 (= e!3966646 ((_ map or) call!569860 (derivationStepZipperUp!1599 (Context!11619 (t!379216 (exprs!6309 lt!2402359))) (h!71899 s!2326))))))

(declare-fun b!6551699 () Bool)

(assert (=> b!6551699 (= e!3966646 e!3966644)))

(declare-fun c!1203519 () Bool)

(assert (=> b!6551699 (= c!1203519 ((_ is Cons!65450) (exprs!6309 lt!2402359)))))

(declare-fun b!6551700 () Bool)

(assert (=> b!6551700 (= e!3966645 (nullable!6418 (h!71898 (exprs!6309 lt!2402359))))))

(declare-fun b!6551701 () Bool)

(assert (=> b!6551701 (= e!3966644 ((as const (Array Context!11618 Bool)) false))))

(declare-fun bm!569855 () Bool)

(assert (=> bm!569855 (= call!569860 (derivationStepZipperDown!1673 (h!71898 (exprs!6309 lt!2402359)) (Context!11619 (t!379216 (exprs!6309 lt!2402359))) (h!71899 s!2326)))))

(assert (= (and d!2056216 res!2687891) b!6551700))

(assert (= (and d!2056216 c!1203520) b!6551698))

(assert (= (and d!2056216 (not c!1203520)) b!6551699))

(assert (= (and b!6551699 c!1203519) b!6551697))

(assert (= (and b!6551699 (not c!1203519)) b!6551701))

(assert (= (or b!6551698 b!6551697) bm!569855))

(declare-fun m!7334156 () Bool)

(assert (=> b!6551698 m!7334156))

(declare-fun m!7334158 () Bool)

(assert (=> b!6551700 m!7334158))

(declare-fun m!7334160 () Bool)

(assert (=> bm!569855 m!7334160))

(assert (=> b!6550621 d!2056216))

(declare-fun d!2056218 () Bool)

(assert (=> d!2056218 (= (flatMap!1930 lt!2402355 lambda!363842) (dynLambda!26022 lambda!363842 lt!2402359))))

(declare-fun lt!2402583 () Unit!159035)

(assert (=> d!2056218 (= lt!2402583 (choose!48752 lt!2402355 lt!2402359 lambda!363842))))

(assert (=> d!2056218 (= lt!2402355 (store ((as const (Array Context!11618 Bool)) false) lt!2402359 true))))

(assert (=> d!2056218 (= (lemmaFlatMapOnSingletonSet!1456 lt!2402355 lt!2402359 lambda!363842) lt!2402583)))

(declare-fun b_lambda!247949 () Bool)

(assert (=> (not b_lambda!247949) (not d!2056218)))

(declare-fun bs!1672489 () Bool)

(assert (= bs!1672489 d!2056218))

(assert (=> bs!1672489 m!7333136))

(declare-fun m!7334162 () Bool)

(assert (=> bs!1672489 m!7334162))

(declare-fun m!7334164 () Bool)

(assert (=> bs!1672489 m!7334164))

(assert (=> bs!1672489 m!7333134))

(assert (=> b!6550621 d!2056218))

(declare-fun bs!1672490 () Bool)

(declare-fun d!2056220 () Bool)

(assert (= bs!1672490 (and d!2056220 b!6550617)))

(declare-fun lambda!363932 () Int)

(assert (=> bs!1672490 (= lambda!363932 lambda!363842)))

(assert (=> d!2056220 true))

(assert (=> d!2056220 (= (derivationStepZipper!2391 lt!2402355 (h!71899 s!2326)) (flatMap!1930 lt!2402355 lambda!363932))))

(declare-fun bs!1672491 () Bool)

(assert (= bs!1672491 d!2056220))

(declare-fun m!7334166 () Bool)

(assert (=> bs!1672491 m!7334166))

(assert (=> b!6550621 d!2056220))

(declare-fun b!6551704 () Bool)

(declare-fun e!3966652 () Bool)

(declare-fun e!3966648 () Bool)

(assert (=> b!6551704 (= e!3966652 e!3966648)))

(declare-fun c!1203523 () Bool)

(assert (=> b!6551704 (= c!1203523 ((_ is Union!16425) r!7292))))

(declare-fun b!6551705 () Bool)

(declare-fun e!3966649 () Bool)

(assert (=> b!6551705 (= e!3966649 e!3966652)))

(declare-fun c!1203524 () Bool)

(assert (=> b!6551705 (= c!1203524 ((_ is Star!16425) r!7292))))

(declare-fun b!6551706 () Bool)

(declare-fun res!2687896 () Bool)

(declare-fun e!3966650 () Bool)

(assert (=> b!6551706 (=> res!2687896 e!3966650)))

(assert (=> b!6551706 (= res!2687896 (not ((_ is Concat!25270) r!7292)))))

(assert (=> b!6551706 (= e!3966648 e!3966650)))

(declare-fun d!2056222 () Bool)

(declare-fun res!2687893 () Bool)

(assert (=> d!2056222 (=> res!2687893 e!3966649)))

(assert (=> d!2056222 (= res!2687893 ((_ is ElementMatch!16425) r!7292))))

(assert (=> d!2056222 (= (validRegex!8161 r!7292) e!3966649)))

(declare-fun bm!569856 () Bool)

(declare-fun call!569861 () Bool)

(declare-fun call!569863 () Bool)

(assert (=> bm!569856 (= call!569861 call!569863)))

(declare-fun b!6551707 () Bool)

(declare-fun e!3966647 () Bool)

(assert (=> b!6551707 (= e!3966652 e!3966647)))

(declare-fun res!2687895 () Bool)

(assert (=> b!6551707 (= res!2687895 (not (nullable!6418 (reg!16754 r!7292))))))

(assert (=> b!6551707 (=> (not res!2687895) (not e!3966647))))

(declare-fun b!6551708 () Bool)

(declare-fun res!2687894 () Bool)

(declare-fun e!3966651 () Bool)

(assert (=> b!6551708 (=> (not res!2687894) (not e!3966651))))

(assert (=> b!6551708 (= res!2687894 call!569861)))

(assert (=> b!6551708 (= e!3966648 e!3966651)))

(declare-fun b!6551709 () Bool)

(declare-fun call!569862 () Bool)

(assert (=> b!6551709 (= e!3966651 call!569862)))

(declare-fun b!6551710 () Bool)

(declare-fun e!3966653 () Bool)

(assert (=> b!6551710 (= e!3966653 call!569862)))

(declare-fun bm!569857 () Bool)

(assert (=> bm!569857 (= call!569863 (validRegex!8161 (ite c!1203524 (reg!16754 r!7292) (ite c!1203523 (regOne!33363 r!7292) (regOne!33362 r!7292)))))))

(declare-fun bm!569858 () Bool)

(assert (=> bm!569858 (= call!569862 (validRegex!8161 (ite c!1203523 (regTwo!33363 r!7292) (regTwo!33362 r!7292))))))

(declare-fun b!6551711 () Bool)

(assert (=> b!6551711 (= e!3966647 call!569863)))

(declare-fun b!6551712 () Bool)

(assert (=> b!6551712 (= e!3966650 e!3966653)))

(declare-fun res!2687892 () Bool)

(assert (=> b!6551712 (=> (not res!2687892) (not e!3966653))))

(assert (=> b!6551712 (= res!2687892 call!569861)))

(assert (= (and d!2056222 (not res!2687893)) b!6551705))

(assert (= (and b!6551705 c!1203524) b!6551707))

(assert (= (and b!6551705 (not c!1203524)) b!6551704))

(assert (= (and b!6551707 res!2687895) b!6551711))

(assert (= (and b!6551704 c!1203523) b!6551708))

(assert (= (and b!6551704 (not c!1203523)) b!6551706))

(assert (= (and b!6551708 res!2687894) b!6551709))

(assert (= (and b!6551706 (not res!2687896)) b!6551712))

(assert (= (and b!6551712 res!2687892) b!6551710))

(assert (= (or b!6551709 b!6551710) bm!569858))

(assert (= (or b!6551708 b!6551712) bm!569856))

(assert (= (or b!6551711 bm!569856) bm!569857))

(declare-fun m!7334168 () Bool)

(assert (=> b!6551707 m!7334168))

(declare-fun m!7334170 () Bool)

(assert (=> bm!569857 m!7334170))

(declare-fun m!7334172 () Bool)

(assert (=> bm!569858 m!7334172))

(assert (=> start!641894 d!2056222))

(declare-fun d!2056224 () Bool)

(declare-fun c!1203525 () Bool)

(assert (=> d!2056224 (= c!1203525 (isEmpty!37680 (t!379217 s!2326)))))

(declare-fun e!3966654 () Bool)

(assert (=> d!2056224 (= (matchZipper!2437 lt!2402347 (t!379217 s!2326)) e!3966654)))

(declare-fun b!6551713 () Bool)

(assert (=> b!6551713 (= e!3966654 (nullableZipper!2170 lt!2402347))))

(declare-fun b!6551714 () Bool)

(assert (=> b!6551714 (= e!3966654 (matchZipper!2437 (derivationStepZipper!2391 lt!2402347 (head!13300 (t!379217 s!2326))) (tail!12385 (t!379217 s!2326))))))

(assert (= (and d!2056224 c!1203525) b!6551713))

(assert (= (and d!2056224 (not c!1203525)) b!6551714))

(assert (=> d!2056224 m!7333200))

(declare-fun m!7334174 () Bool)

(assert (=> b!6551713 m!7334174))

(assert (=> b!6551714 m!7333204))

(assert (=> b!6551714 m!7333204))

(declare-fun m!7334176 () Bool)

(assert (=> b!6551714 m!7334176))

(assert (=> b!6551714 m!7333208))

(assert (=> b!6551714 m!7334176))

(assert (=> b!6551714 m!7333208))

(declare-fun m!7334178 () Bool)

(assert (=> b!6551714 m!7334178))

(assert (=> b!6550620 d!2056224))

(declare-fun d!2056226 () Bool)

(declare-fun c!1203526 () Bool)

(assert (=> d!2056226 (= c!1203526 (isEmpty!37680 s!2326))))

(declare-fun e!3966655 () Bool)

(assert (=> d!2056226 (= (matchZipper!2437 lt!2402355 s!2326) e!3966655)))

(declare-fun b!6551715 () Bool)

(assert (=> b!6551715 (= e!3966655 (nullableZipper!2170 lt!2402355))))

(declare-fun b!6551716 () Bool)

(assert (=> b!6551716 (= e!3966655 (matchZipper!2437 (derivationStepZipper!2391 lt!2402355 (head!13300 s!2326)) (tail!12385 s!2326)))))

(assert (= (and d!2056226 c!1203526) b!6551715))

(assert (= (and d!2056226 (not c!1203526)) b!6551716))

(assert (=> d!2056226 m!7333188))

(declare-fun m!7334180 () Bool)

(assert (=> b!6551715 m!7334180))

(assert (=> b!6551716 m!7333192))

(assert (=> b!6551716 m!7333192))

(declare-fun m!7334182 () Bool)

(assert (=> b!6551716 m!7334182))

(assert (=> b!6551716 m!7333196))

(assert (=> b!6551716 m!7334182))

(assert (=> b!6551716 m!7333196))

(declare-fun m!7334184 () Bool)

(assert (=> b!6551716 m!7334184))

(assert (=> b!6550620 d!2056226))

(declare-fun bs!1672492 () Bool)

(declare-fun d!2056228 () Bool)

(assert (= bs!1672492 (and d!2056228 d!2056074)))

(declare-fun lambda!363933 () Int)

(assert (=> bs!1672492 (= lambda!363933 lambda!363901)))

(declare-fun bs!1672493 () Bool)

(assert (= bs!1672493 (and d!2056228 d!2056198)))

(assert (=> bs!1672493 (= lambda!363933 lambda!363929)))

(declare-fun bs!1672494 () Bool)

(assert (= bs!1672494 (and d!2056228 d!2056086)))

(assert (=> bs!1672494 (= lambda!363933 lambda!363904)))

(declare-fun bs!1672495 () Bool)

(assert (= bs!1672495 (and d!2056228 d!2056164)))

(assert (=> bs!1672495 (= lambda!363933 lambda!363926)))

(declare-fun bs!1672496 () Bool)

(assert (= bs!1672496 (and d!2056228 d!2056014)))

(assert (=> bs!1672496 (= lambda!363933 lambda!363892)))

(declare-fun bs!1672497 () Bool)

(assert (= bs!1672497 (and d!2056228 b!6550609)))

(assert (=> bs!1672497 (= lambda!363933 lambda!363844)))

(assert (=> d!2056228 (= (inv!84309 (h!71900 zl!343)) (forall!15597 (exprs!6309 (h!71900 zl!343)) lambda!363933))))

(declare-fun bs!1672498 () Bool)

(assert (= bs!1672498 d!2056228))

(declare-fun m!7334186 () Bool)

(assert (=> bs!1672498 m!7334186))

(assert (=> b!6550599 d!2056228))

(declare-fun b!6551721 () Bool)

(declare-fun e!3966658 () Bool)

(declare-fun tp!1811478 () Bool)

(declare-fun tp!1811479 () Bool)

(assert (=> b!6551721 (= e!3966658 (and tp!1811478 tp!1811479))))

(assert (=> b!6550591 (= tp!1811413 e!3966658)))

(assert (= (and b!6550591 ((_ is Cons!65450) (exprs!6309 (h!71900 zl!343)))) b!6551721))

(declare-fun e!3966661 () Bool)

(assert (=> b!6550616 (= tp!1811412 e!3966661)))

(declare-fun b!6551732 () Bool)

(assert (=> b!6551732 (= e!3966661 tp_is_empty!42103)))

(declare-fun b!6551735 () Bool)

(declare-fun tp!1811493 () Bool)

(declare-fun tp!1811492 () Bool)

(assert (=> b!6551735 (= e!3966661 (and tp!1811493 tp!1811492))))

(declare-fun b!6551734 () Bool)

(declare-fun tp!1811490 () Bool)

(assert (=> b!6551734 (= e!3966661 tp!1811490)))

(declare-fun b!6551733 () Bool)

(declare-fun tp!1811491 () Bool)

(declare-fun tp!1811494 () Bool)

(assert (=> b!6551733 (= e!3966661 (and tp!1811491 tp!1811494))))

(assert (= (and b!6550616 ((_ is ElementMatch!16425) (regOne!33363 r!7292))) b!6551732))

(assert (= (and b!6550616 ((_ is Concat!25270) (regOne!33363 r!7292))) b!6551733))

(assert (= (and b!6550616 ((_ is Star!16425) (regOne!33363 r!7292))) b!6551734))

(assert (= (and b!6550616 ((_ is Union!16425) (regOne!33363 r!7292))) b!6551735))

(declare-fun e!3966662 () Bool)

(assert (=> b!6550616 (= tp!1811407 e!3966662)))

(declare-fun b!6551736 () Bool)

(assert (=> b!6551736 (= e!3966662 tp_is_empty!42103)))

(declare-fun b!6551739 () Bool)

(declare-fun tp!1811498 () Bool)

(declare-fun tp!1811497 () Bool)

(assert (=> b!6551739 (= e!3966662 (and tp!1811498 tp!1811497))))

(declare-fun b!6551738 () Bool)

(declare-fun tp!1811495 () Bool)

(assert (=> b!6551738 (= e!3966662 tp!1811495)))

(declare-fun b!6551737 () Bool)

(declare-fun tp!1811496 () Bool)

(declare-fun tp!1811499 () Bool)

(assert (=> b!6551737 (= e!3966662 (and tp!1811496 tp!1811499))))

(assert (= (and b!6550616 ((_ is ElementMatch!16425) (regTwo!33363 r!7292))) b!6551736))

(assert (= (and b!6550616 ((_ is Concat!25270) (regTwo!33363 r!7292))) b!6551737))

(assert (= (and b!6550616 ((_ is Star!16425) (regTwo!33363 r!7292))) b!6551738))

(assert (= (and b!6550616 ((_ is Union!16425) (regTwo!33363 r!7292))) b!6551739))

(declare-fun b!6551740 () Bool)

(declare-fun e!3966663 () Bool)

(declare-fun tp!1811500 () Bool)

(declare-fun tp!1811501 () Bool)

(assert (=> b!6551740 (= e!3966663 (and tp!1811500 tp!1811501))))

(assert (=> b!6550597 (= tp!1811409 e!3966663)))

(assert (= (and b!6550597 ((_ is Cons!65450) (exprs!6309 setElem!44706))) b!6551740))

(declare-fun e!3966664 () Bool)

(assert (=> b!6550596 (= tp!1811411 e!3966664)))

(declare-fun b!6551741 () Bool)

(assert (=> b!6551741 (= e!3966664 tp_is_empty!42103)))

(declare-fun b!6551744 () Bool)

(declare-fun tp!1811505 () Bool)

(declare-fun tp!1811504 () Bool)

(assert (=> b!6551744 (= e!3966664 (and tp!1811505 tp!1811504))))

(declare-fun b!6551743 () Bool)

(declare-fun tp!1811502 () Bool)

(assert (=> b!6551743 (= e!3966664 tp!1811502)))

(declare-fun b!6551742 () Bool)

(declare-fun tp!1811503 () Bool)

(declare-fun tp!1811506 () Bool)

(assert (=> b!6551742 (= e!3966664 (and tp!1811503 tp!1811506))))

(assert (= (and b!6550596 ((_ is ElementMatch!16425) (reg!16754 r!7292))) b!6551741))

(assert (= (and b!6550596 ((_ is Concat!25270) (reg!16754 r!7292))) b!6551742))

(assert (= (and b!6550596 ((_ is Star!16425) (reg!16754 r!7292))) b!6551743))

(assert (= (and b!6550596 ((_ is Union!16425) (reg!16754 r!7292))) b!6551744))

(declare-fun b!6551749 () Bool)

(declare-fun e!3966667 () Bool)

(declare-fun tp!1811509 () Bool)

(assert (=> b!6551749 (= e!3966667 (and tp_is_empty!42103 tp!1811509))))

(assert (=> b!6550607 (= tp!1811410 e!3966667)))

(assert (= (and b!6550607 ((_ is Cons!65451) (t!379217 s!2326))) b!6551749))

(declare-fun e!3966668 () Bool)

(assert (=> b!6550592 (= tp!1811406 e!3966668)))

(declare-fun b!6551750 () Bool)

(assert (=> b!6551750 (= e!3966668 tp_is_empty!42103)))

(declare-fun b!6551753 () Bool)

(declare-fun tp!1811513 () Bool)

(declare-fun tp!1811512 () Bool)

(assert (=> b!6551753 (= e!3966668 (and tp!1811513 tp!1811512))))

(declare-fun b!6551752 () Bool)

(declare-fun tp!1811510 () Bool)

(assert (=> b!6551752 (= e!3966668 tp!1811510)))

(declare-fun b!6551751 () Bool)

(declare-fun tp!1811511 () Bool)

(declare-fun tp!1811514 () Bool)

(assert (=> b!6551751 (= e!3966668 (and tp!1811511 tp!1811514))))

(assert (= (and b!6550592 ((_ is ElementMatch!16425) (regOne!33362 r!7292))) b!6551750))

(assert (= (and b!6550592 ((_ is Concat!25270) (regOne!33362 r!7292))) b!6551751))

(assert (= (and b!6550592 ((_ is Star!16425) (regOne!33362 r!7292))) b!6551752))

(assert (= (and b!6550592 ((_ is Union!16425) (regOne!33362 r!7292))) b!6551753))

(declare-fun e!3966669 () Bool)

(assert (=> b!6550592 (= tp!1811408 e!3966669)))

(declare-fun b!6551754 () Bool)

(assert (=> b!6551754 (= e!3966669 tp_is_empty!42103)))

(declare-fun b!6551757 () Bool)

(declare-fun tp!1811518 () Bool)

(declare-fun tp!1811517 () Bool)

(assert (=> b!6551757 (= e!3966669 (and tp!1811518 tp!1811517))))

(declare-fun b!6551756 () Bool)

(declare-fun tp!1811515 () Bool)

(assert (=> b!6551756 (= e!3966669 tp!1811515)))

(declare-fun b!6551755 () Bool)

(declare-fun tp!1811516 () Bool)

(declare-fun tp!1811519 () Bool)

(assert (=> b!6551755 (= e!3966669 (and tp!1811516 tp!1811519))))

(assert (= (and b!6550592 ((_ is ElementMatch!16425) (regTwo!33362 r!7292))) b!6551754))

(assert (= (and b!6550592 ((_ is Concat!25270) (regTwo!33362 r!7292))) b!6551755))

(assert (= (and b!6550592 ((_ is Star!16425) (regTwo!33362 r!7292))) b!6551756))

(assert (= (and b!6550592 ((_ is Union!16425) (regTwo!33362 r!7292))) b!6551757))

(declare-fun condSetEmpty!44712 () Bool)

(assert (=> setNonEmpty!44706 (= condSetEmpty!44712 (= setRest!44706 ((as const (Array Context!11618 Bool)) false)))))

(declare-fun setRes!44712 () Bool)

(assert (=> setNonEmpty!44706 (= tp!1811415 setRes!44712)))

(declare-fun setIsEmpty!44712 () Bool)

(assert (=> setIsEmpty!44712 setRes!44712))

(declare-fun setElem!44712 () Context!11618)

(declare-fun e!3966672 () Bool)

(declare-fun setNonEmpty!44712 () Bool)

(declare-fun tp!1811524 () Bool)

(assert (=> setNonEmpty!44712 (= setRes!44712 (and tp!1811524 (inv!84309 setElem!44712) e!3966672))))

(declare-fun setRest!44712 () (InoxSet Context!11618))

(assert (=> setNonEmpty!44712 (= setRest!44706 ((_ map or) (store ((as const (Array Context!11618 Bool)) false) setElem!44712 true) setRest!44712))))

(declare-fun b!6551762 () Bool)

(declare-fun tp!1811525 () Bool)

(assert (=> b!6551762 (= e!3966672 tp!1811525)))

(assert (= (and setNonEmpty!44706 condSetEmpty!44712) setIsEmpty!44712))

(assert (= (and setNonEmpty!44706 (not condSetEmpty!44712)) setNonEmpty!44712))

(assert (= setNonEmpty!44712 b!6551762))

(declare-fun m!7334188 () Bool)

(assert (=> setNonEmpty!44712 m!7334188))

(declare-fun b!6551770 () Bool)

(declare-fun e!3966678 () Bool)

(declare-fun tp!1811530 () Bool)

(assert (=> b!6551770 (= e!3966678 tp!1811530)))

(declare-fun b!6551769 () Bool)

(declare-fun e!3966677 () Bool)

(declare-fun tp!1811531 () Bool)

(assert (=> b!6551769 (= e!3966677 (and (inv!84309 (h!71900 (t!379218 zl!343))) e!3966678 tp!1811531))))

(assert (=> b!6550599 (= tp!1811414 e!3966677)))

(assert (= b!6551769 b!6551770))

(assert (= (and b!6550599 ((_ is Cons!65452) (t!379218 zl!343))) b!6551769))

(declare-fun m!7334190 () Bool)

(assert (=> b!6551769 m!7334190))

(declare-fun b_lambda!247951 () Bool)

(assert (= b_lambda!247935 (or b!6550617 b_lambda!247951)))

(declare-fun bs!1672499 () Bool)

(declare-fun d!2056230 () Bool)

(assert (= bs!1672499 (and d!2056230 b!6550617)))

(assert (=> bs!1672499 (= (dynLambda!26022 lambda!363842 lt!2402366) (derivationStepZipperUp!1599 lt!2402366 (h!71899 s!2326)))))

(assert (=> bs!1672499 m!7333046))

(assert (=> d!2056186 d!2056230))

(declare-fun b_lambda!247953 () Bool)

(assert (= b_lambda!247937 (or b!6550617 b_lambda!247953)))

(declare-fun bs!1672500 () Bool)

(declare-fun d!2056232 () Bool)

(assert (= bs!1672500 (and d!2056232 b!6550617)))

(assert (=> bs!1672500 (= (dynLambda!26022 lambda!363842 lt!2402367) (derivationStepZipperUp!1599 lt!2402367 (h!71899 s!2326)))))

(assert (=> bs!1672500 m!7333054))

(assert (=> d!2056192 d!2056232))

(declare-fun b_lambda!247955 () Bool)

(assert (= b_lambda!247949 (or b!6550617 b_lambda!247955)))

(declare-fun bs!1672501 () Bool)

(declare-fun d!2056234 () Bool)

(assert (= bs!1672501 (and d!2056234 b!6550617)))

(assert (=> bs!1672501 (= (dynLambda!26022 lambda!363842 lt!2402359) (derivationStepZipperUp!1599 lt!2402359 (h!71899 s!2326)))))

(assert (=> bs!1672501 m!7333128))

(assert (=> d!2056218 d!2056234))

(declare-fun b_lambda!247957 () Bool)

(assert (= b_lambda!247923 (or b!6550609 b_lambda!247957)))

(declare-fun bs!1672502 () Bool)

(declare-fun d!2056236 () Bool)

(assert (= bs!1672502 (and d!2056236 b!6550609)))

(declare-fun lt!2402584 () Unit!159035)

(assert (=> bs!1672502 (= lt!2402584 (lemmaConcatPreservesForall!398 (exprs!6309 lt!2402367) lt!2402340 lambda!363844))))

(assert (=> bs!1672502 (= (dynLambda!26021 lambda!363843 lt!2402367) (Context!11619 (++!14552 (exprs!6309 lt!2402367) lt!2402340)))))

(declare-fun m!7334192 () Bool)

(assert (=> bs!1672502 m!7334192))

(declare-fun m!7334194 () Bool)

(assert (=> bs!1672502 m!7334194))

(assert (=> d!2056002 d!2056236))

(declare-fun b_lambda!247959 () Bool)

(assert (= b_lambda!247925 (or b!6550617 b_lambda!247959)))

(declare-fun bs!1672503 () Bool)

(declare-fun d!2056238 () Bool)

(assert (= bs!1672503 (and d!2056238 b!6550617)))

(assert (=> bs!1672503 (= (dynLambda!26022 lambda!363842 (h!71900 zl!343)) (derivationStepZipperUp!1599 (h!71900 zl!343) (h!71899 s!2326)))))

(assert (=> bs!1672503 m!7333080))

(assert (=> d!2056096 d!2056238))

(check-sat (not d!2055944) (not d!2056012) (not b!6551046) (not b!6551418) (not b!6551047) (not b!6551180) (not b!6551531) (not b!6551742) (not b!6551751) (not b!6551369) (not b!6551278) (not b!6550868) (not d!2055950) (not d!2056228) (not b!6551689) (not b!6551762) (not b!6551755) (not b!6550793) (not b!6550643) (not b!6551733) (not d!2056226) (not d!2055974) (not b!6551738) (not d!2056138) (not d!2056042) (not d!2055900) (not b!6551743) (not bs!1672501) (not b!6551713) (not b!6551125) (not d!2056218) (not b!6551580) (not b!6551301) (not b!6551178) (not bm!569774) (not d!2056214) (not d!2056056) (not b!6551559) (not bm!569733) (not b!6550644) (not bm!569819) (not d!2056000) (not b!6551050) (not d!2056158) (not d!2056094) (not d!2056044) (not bs!1672503) (not d!2056006) (not b!6551266) (not d!2056060) (not b!6550648) (not b!6551238) (not b!6551423) (not d!2056174) (not b!6551465) (not b!6551695) (not d!2056196) (not b!6550871) (not b_lambda!247951) (not b_lambda!247959) (not b!6551256) (not d!2055928) (not b!6550949) (not bm!569734) (not b!6551739) (not bs!1672500) (not b!6551252) (not bs!1672499) (not setNonEmpty!44712) (not b!6551684) (not d!2056140) (not b!6551295) (not d!2056156) (not b!6551536) (not b!6550870) (not bm!569813) (not b!6551305) (not b!6550791) (not b!6550651) (not d!2056074) tp_is_empty!42103 (not bm!569793) (not b!6551365) (not b!6551693) (not bm!569802) (not b!6551528) (not b!6551304) (not d!2056190) (not b!6551770) (not b!6551268) (not b!6551698) (not b!6551696) (not b!6551371) (not bm!569811) (not b!6551744) (not d!2056120) (not b_lambda!247953) (not b_lambda!247957) (not b!6551752) (not d!2056192) (not bm!569772) (not b!6551715) (not d!2056198) (not d!2056034) (not b!6550965) (not bm!569820) (not b!6551690) (not b!6551183) (not d!2056014) (not d!2055964) (not b!6551561) (not b!6550979) (not b!6550799) (not b!6551293) (not b!6551083) (not b!6551737) (not b!6550647) (not d!2056058) (not bm!569830) (not b!6550716) (not d!2056008) (not d!2056224) (not b!6551364) (not b!6551416) (not b!6551259) (not b!6550808) (not d!2056096) (not b!6550968) (not bm!569845) (not b!6551707) (not bm!569838) (not b!6551044) (not d!2055898) (not b!6551122) (not b!6550867) (not b!6551402) (not d!2056068) (not b!6551250) (not b!6550982) (not d!2056070) (not d!2056036) (not d!2056184) (not d!2055902) (not b!6551274) (not b!6551716) (not d!2055904) (not bm!569812) (not b!6551464) (not b!6551404) (not bm!569834) (not d!2056002) (not d!2056086) (not bm!569778) (not d!2055998) (not b!6551192) (not b!6551700) (not b!6551534) (not b!6550807) (not b!6550646) (not d!2056026) (not bm!569858) (not b!6551368) (not bm!569779) (not b!6550865) (not b!6551560) (not b!6551363) (not b!6551179) (not bm!569777) (not bm!569833) (not b!6551421) (not b!6551749) (not d!2055960) (not d!2055992) (not d!2056212) (not b!6551578) (not b!6550973) (not d!2055962) (not d!2056164) (not d!2055966) (not b!6550795) (not b!6550645) (not b!6551735) (not b!6551193) (not d!2056066) (not bm!569857) (not b!6550975) (not d!2055994) (not b!6550983) (not b!6551045) (not bm!569740) (not bm!569832) (not b!6551588) (not d!2056114) (not b!6551721) (not b_lambda!247955) (not b!6551049) (not d!2056220) (not b!6550802) (not b!6551753) (not d!2056046) (not b!6551400) (not b!6551270) (not b!6550971) (not b!6551756) (not b!6551028) (not b!6551757) (not b!6551362) (not b!6551310) (not bs!1672502) (not b!6550803) (not b!6551029) (not b!6551688) (not bm!569847) (not bm!569837) (not b!6551535) (not d!2056160) (not b!6551185) (not bm!569773) (not b!6551740) (not b!6551297) (not b!6551260) (not bm!569814) (not b!6550866) (not b!6551277) (not bm!569794) (not b!6551685) (not b!6551181) (not b!6551189) (not b!6551734) (not d!2056098) (not d!2055996) (not d!2055990) (not d!2056010) (not b!6551714) (not b!6551533) (not b!6551769) (not b!6551590) (not bm!569817) (not b!6551687) (not b!6551084) (not d!2055948) (not b!6551376) (not b!6550713) (not b!6551248) (not d!2056186) (not bm!569855))
(check-sat)
