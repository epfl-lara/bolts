; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!642204 () Bool)

(assert start!642204)

(declare-fun b!6553411 () Bool)

(assert (=> b!6553411 true))

(assert (=> b!6553411 true))

(declare-fun lambda!364125 () Int)

(declare-fun lambda!364124 () Int)

(assert (=> b!6553411 (not (= lambda!364125 lambda!364124))))

(assert (=> b!6553411 true))

(assert (=> b!6553411 true))

(declare-fun b!6553405 () Bool)

(assert (=> b!6553405 true))

(declare-fun b!6553392 () Bool)

(assert (=> b!6553392 true))

(declare-fun bs!1672774 () Bool)

(declare-fun b!6553399 () Bool)

(assert (= bs!1672774 (and b!6553399 b!6553411)))

(declare-datatypes ((C!33126 0))(
  ( (C!33127 (val!26265 Int)) )
))
(declare-datatypes ((Regex!16428 0))(
  ( (ElementMatch!16428 (c!1203875 C!33126)) (Concat!25273 (regOne!33368 Regex!16428) (regTwo!33368 Regex!16428)) (EmptyExpr!16428) (Star!16428 (reg!16757 Regex!16428)) (EmptyLang!16428) (Union!16428 (regOne!33369 Regex!16428) (regTwo!33369 Regex!16428)) )
))
(declare-fun r!7292 () Regex!16428)

(declare-fun lambda!364129 () Int)

(declare-fun lt!2403289 () Regex!16428)

(assert (=> bs!1672774 (= (= lt!2403289 (regOne!33368 r!7292)) (= lambda!364129 lambda!364124))))

(assert (=> bs!1672774 (not (= lambda!364129 lambda!364125))))

(assert (=> b!6553399 true))

(assert (=> b!6553399 true))

(assert (=> b!6553399 true))

(declare-fun lambda!364130 () Int)

(assert (=> bs!1672774 (not (= lambda!364130 lambda!364124))))

(assert (=> bs!1672774 (= (= lt!2403289 (regOne!33368 r!7292)) (= lambda!364130 lambda!364125))))

(assert (=> b!6553399 (not (= lambda!364130 lambda!364129))))

(assert (=> b!6553399 true))

(assert (=> b!6553399 true))

(assert (=> b!6553399 true))

(declare-fun b!6553369 () Bool)

(declare-fun e!3967584 () Bool)

(declare-datatypes ((List!65583 0))(
  ( (Nil!65459) (Cons!65459 (h!71907 Regex!16428) (t!379225 List!65583)) )
))
(declare-datatypes ((Context!11624 0))(
  ( (Context!11625 (exprs!6312 List!65583)) )
))
(declare-fun lt!2403315 () (Set Context!11624))

(declare-datatypes ((List!65584 0))(
  ( (Nil!65460) (Cons!65460 (h!71908 C!33126) (t!379226 List!65584)) )
))
(declare-fun s!2326 () List!65584)

(declare-fun matchZipper!2440 ((Set Context!11624) List!65584) Bool)

(assert (=> b!6553369 (= e!3967584 (matchZipper!2440 lt!2403315 (t!379226 s!2326)))))

(declare-fun b!6553370 () Bool)

(declare-fun e!3967583 () Bool)

(declare-fun e!3967563 () Bool)

(assert (=> b!6553370 (= e!3967583 e!3967563)))

(declare-fun res!2688701 () Bool)

(assert (=> b!6553370 (=> res!2688701 e!3967563)))

(declare-datatypes ((List!65585 0))(
  ( (Nil!65461) (Cons!65461 (h!71909 Context!11624) (t!379227 List!65585)) )
))
(declare-fun lt!2403287 () List!65585)

(declare-fun lt!2403267 () Regex!16428)

(declare-fun unfocusZipper!2170 (List!65585) Regex!16428)

(assert (=> b!6553370 (= res!2688701 (not (= (unfocusZipper!2170 lt!2403287) lt!2403267)))))

(declare-fun lt!2403313 () Context!11624)

(assert (=> b!6553370 (= lt!2403287 (Cons!65461 lt!2403313 Nil!65461))))

(declare-fun b!6553371 () Bool)

(declare-fun e!3967576 () Bool)

(declare-fun lt!2403277 () Bool)

(assert (=> b!6553371 (= e!3967576 lt!2403277)))

(declare-fun setIsEmpty!44727 () Bool)

(declare-fun setRes!44727 () Bool)

(assert (=> setIsEmpty!44727 setRes!44727))

(declare-fun b!6553372 () Bool)

(declare-fun e!3967588 () Bool)

(declare-fun e!3967573 () Bool)

(assert (=> b!6553372 (= e!3967588 e!3967573)))

(declare-fun res!2688722 () Bool)

(assert (=> b!6553372 (=> res!2688722 e!3967573)))

(declare-fun lt!2403281 () Context!11624)

(declare-fun lt!2403304 () Regex!16428)

(assert (=> b!6553372 (= res!2688722 (not (= (unfocusZipper!2170 (Cons!65461 lt!2403281 Nil!65461)) lt!2403304)))))

(assert (=> b!6553372 (= lt!2403304 (Concat!25273 (reg!16757 (regOne!33368 r!7292)) lt!2403267))))

(declare-fun b!6553373 () Bool)

(declare-fun e!3967569 () Bool)

(declare-fun tp!1811733 () Bool)

(assert (=> b!6553373 (= e!3967569 tp!1811733)))

(declare-fun b!6553374 () Bool)

(declare-fun res!2688700 () Bool)

(declare-fun e!3967566 () Bool)

(assert (=> b!6553374 (=> res!2688700 e!3967566)))

(declare-fun lt!2403312 () Regex!16428)

(assert (=> b!6553374 (= res!2688700 (not (= lt!2403312 r!7292)))))

(declare-fun b!6553375 () Bool)

(declare-fun e!3967580 () Bool)

(declare-fun tp!1811730 () Bool)

(declare-fun tp!1811731 () Bool)

(assert (=> b!6553375 (= e!3967580 (and tp!1811730 tp!1811731))))

(declare-fun b!6553376 () Bool)

(declare-fun e!3967567 () Bool)

(declare-fun e!3967577 () Bool)

(assert (=> b!6553376 (= e!3967567 e!3967577)))

(declare-fun res!2688696 () Bool)

(assert (=> b!6553376 (=> (not res!2688696) (not e!3967577))))

(assert (=> b!6553376 (= res!2688696 (= r!7292 lt!2403312))))

(declare-fun zl!343 () List!65585)

(assert (=> b!6553376 (= lt!2403312 (unfocusZipper!2170 zl!343))))

(declare-fun b!6553377 () Bool)

(declare-fun e!3967572 () Bool)

(declare-fun e!3967568 () Bool)

(assert (=> b!6553377 (= e!3967572 e!3967568)))

(declare-fun res!2688695 () Bool)

(assert (=> b!6553377 (=> res!2688695 e!3967568)))

(declare-fun e!3967586 () Bool)

(assert (=> b!6553377 (= res!2688695 e!3967586)))

(declare-fun res!2688690 () Bool)

(assert (=> b!6553377 (=> (not res!2688690) (not e!3967586))))

(declare-fun lt!2403268 () Bool)

(assert (=> b!6553377 (= res!2688690 (not lt!2403268))))

(declare-fun lt!2403291 () (Set Context!11624))

(assert (=> b!6553377 (= lt!2403268 (matchZipper!2440 lt!2403291 (t!379226 s!2326)))))

(declare-fun b!6553378 () Bool)

(declare-fun e!3967564 () Bool)

(declare-fun tp!1811734 () Bool)

(assert (=> b!6553378 (= e!3967564 tp!1811734)))

(declare-fun b!6553379 () Bool)

(assert (=> b!6553379 (= e!3967586 (not (matchZipper!2440 lt!2403315 (t!379226 s!2326))))))

(declare-fun b!6553380 () Bool)

(declare-fun e!3967570 () Bool)

(declare-fun tp!1811729 () Bool)

(declare-fun inv!84318 (Context!11624) Bool)

(assert (=> b!6553380 (= e!3967570 (and (inv!84318 (h!71909 zl!343)) e!3967569 tp!1811729))))

(declare-fun b!6553381 () Bool)

(declare-fun res!2688717 () Bool)

(assert (=> b!6553381 (=> res!2688717 e!3967572)))

(declare-fun z!1189 () (Set Context!11624))

(assert (=> b!6553381 (= res!2688717 (not (matchZipper!2440 z!1189 s!2326)))))

(declare-fun b!6553382 () Bool)

(declare-fun e!3967575 () Bool)

(assert (=> b!6553382 (= e!3967577 (not e!3967575))))

(declare-fun res!2688699 () Bool)

(assert (=> b!6553382 (=> res!2688699 e!3967575)))

(assert (=> b!6553382 (= res!2688699 (not (is-Cons!65461 zl!343)))))

(declare-fun lt!2403276 () Bool)

(declare-fun matchRSpec!3529 (Regex!16428 List!65584) Bool)

(assert (=> b!6553382 (= lt!2403276 (matchRSpec!3529 r!7292 s!2326))))

(declare-fun matchR!8611 (Regex!16428 List!65584) Bool)

(assert (=> b!6553382 (= lt!2403276 (matchR!8611 r!7292 s!2326))))

(declare-datatypes ((Unit!159047 0))(
  ( (Unit!159048) )
))
(declare-fun lt!2403284 () Unit!159047)

(declare-fun mainMatchTheorem!3529 (Regex!16428 List!65584) Unit!159047)

(assert (=> b!6553382 (= lt!2403284 (mainMatchTheorem!3529 r!7292 s!2326))))

(declare-fun b!6553383 () Bool)

(assert (=> b!6553383 (= e!3967566 e!3967588)))

(declare-fun res!2688712 () Bool)

(assert (=> b!6553383 (=> res!2688712 e!3967588)))

(assert (=> b!6553383 (= res!2688712 (not (= r!7292 lt!2403267)))))

(declare-fun lt!2403296 () Regex!16428)

(assert (=> b!6553383 (= lt!2403267 (Concat!25273 lt!2403296 (regTwo!33368 r!7292)))))

(declare-fun b!6553384 () Bool)

(declare-fun e!3967571 () Bool)

(declare-fun tp_is_empty!42109 () Bool)

(declare-fun tp!1811735 () Bool)

(assert (=> b!6553384 (= e!3967571 (and tp_is_empty!42109 tp!1811735))))

(declare-fun b!6553385 () Bool)

(declare-fun e!3967589 () Bool)

(assert (=> b!6553385 (= e!3967589 e!3967566)))

(declare-fun res!2688715 () Bool)

(assert (=> b!6553385 (=> res!2688715 e!3967566)))

(declare-fun lt!2403306 () (Set Context!11624))

(declare-fun lt!2403299 () Bool)

(assert (=> b!6553385 (= res!2688715 (not (= lt!2403299 (matchZipper!2440 lt!2403306 (t!379226 s!2326)))))))

(declare-fun lt!2403297 () (Set Context!11624))

(assert (=> b!6553385 (= lt!2403299 (matchZipper!2440 lt!2403297 s!2326))))

(declare-fun b!6553386 () Bool)

(declare-fun e!3967582 () Bool)

(declare-fun nullable!6421 (Regex!16428) Bool)

(assert (=> b!6553386 (= e!3967582 (nullable!6421 (regOne!33368 (regOne!33368 r!7292))))))

(declare-fun b!6553387 () Bool)

(declare-fun res!2688691 () Bool)

(assert (=> b!6553387 (=> res!2688691 e!3967575)))

(assert (=> b!6553387 (= res!2688691 (or (is-EmptyExpr!16428 r!7292) (is-EmptyLang!16428 r!7292) (is-ElementMatch!16428 r!7292) (is-Union!16428 r!7292) (not (is-Concat!25273 r!7292))))))

(declare-fun b!6553388 () Bool)

(declare-fun e!3967578 () Bool)

(declare-fun e!3967565 () Bool)

(assert (=> b!6553388 (= e!3967578 e!3967565)))

(declare-fun res!2688724 () Bool)

(assert (=> b!6553388 (=> res!2688724 e!3967565)))

(declare-fun lt!2403280 () (Set Context!11624))

(assert (=> b!6553388 (= res!2688724 (not (= lt!2403291 lt!2403280)))))

(declare-fun derivationStepZipperDown!1676 (Regex!16428 Context!11624 C!33126) (Set Context!11624))

(assert (=> b!6553388 (= lt!2403280 (derivationStepZipperDown!1676 (reg!16757 (regOne!33368 r!7292)) lt!2403313 (h!71908 s!2326)))))

(declare-fun lt!2403275 () List!65583)

(assert (=> b!6553388 (= lt!2403313 (Context!11625 lt!2403275))))

(assert (=> b!6553388 (= lt!2403275 (Cons!65459 lt!2403296 (t!379225 (exprs!6312 (h!71909 zl!343)))))))

(assert (=> b!6553388 (= lt!2403296 (Star!16428 (reg!16757 (regOne!33368 r!7292))))))

(declare-fun b!6553389 () Bool)

(declare-fun res!2688714 () Bool)

(declare-fun e!3967579 () Bool)

(assert (=> b!6553389 (=> res!2688714 e!3967579)))

(declare-fun isEmpty!37691 (List!65583) Bool)

(assert (=> b!6553389 (= res!2688714 (isEmpty!37691 (t!379225 (exprs!6312 (h!71909 zl!343)))))))

(declare-fun b!6553390 () Bool)

(declare-fun e!3967574 () Unit!159047)

(declare-fun Unit!159049 () Unit!159047)

(assert (=> b!6553390 (= e!3967574 Unit!159049)))

(declare-fun lt!2403301 () Unit!159047)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1259 ((Set Context!11624) (Set Context!11624) List!65584) Unit!159047)

(assert (=> b!6553390 (= lt!2403301 (lemmaZipperConcatMatchesSameAsBothZippers!1259 lt!2403291 lt!2403315 (t!379226 s!2326)))))

(declare-fun res!2688702 () Bool)

(assert (=> b!6553390 (= res!2688702 (matchZipper!2440 lt!2403291 (t!379226 s!2326)))))

(assert (=> b!6553390 (=> res!2688702 e!3967584)))

(assert (=> b!6553390 (= (matchZipper!2440 (set.union lt!2403291 lt!2403315) (t!379226 s!2326)) e!3967584)))

(declare-fun b!6553391 () Bool)

(assert (=> b!6553391 (= e!3967565 e!3967589)))

(declare-fun res!2688694 () Bool)

(assert (=> b!6553391 (=> res!2688694 e!3967589)))

(assert (=> b!6553391 (= res!2688694 (not (= lt!2403306 lt!2403280)))))

(declare-fun lambda!364126 () Int)

(declare-fun flatMap!1933 ((Set Context!11624) Int) (Set Context!11624))

(declare-fun derivationStepZipperUp!1602 (Context!11624 C!33126) (Set Context!11624))

(assert (=> b!6553391 (= (flatMap!1933 lt!2403297 lambda!364126) (derivationStepZipperUp!1602 lt!2403281 (h!71908 s!2326)))))

(declare-fun lt!2403298 () Unit!159047)

(declare-fun lemmaFlatMapOnSingletonSet!1459 ((Set Context!11624) Context!11624 Int) Unit!159047)

(assert (=> b!6553391 (= lt!2403298 (lemmaFlatMapOnSingletonSet!1459 lt!2403297 lt!2403281 lambda!364126))))

(declare-fun lt!2403271 () (Set Context!11624))

(assert (=> b!6553391 (= lt!2403271 (derivationStepZipperUp!1602 lt!2403281 (h!71908 s!2326)))))

(declare-fun derivationStepZipper!2394 ((Set Context!11624) C!33126) (Set Context!11624))

(assert (=> b!6553391 (= lt!2403306 (derivationStepZipper!2394 lt!2403297 (h!71908 s!2326)))))

(assert (=> b!6553391 (= lt!2403297 (set.insert lt!2403281 (as set.empty (Set Context!11624))))))

(assert (=> b!6553391 (= lt!2403281 (Context!11625 (Cons!65459 (reg!16757 (regOne!33368 r!7292)) lt!2403275)))))

(declare-fun e!3967587 () Bool)

(assert (=> b!6553392 (= e!3967568 e!3967587)))

(declare-fun res!2688716 () Bool)

(assert (=> b!6553392 (=> res!2688716 e!3967587)))

(declare-fun lt!2403260 () (Set Context!11624))

(declare-fun appendTo!189 ((Set Context!11624) Context!11624) (Set Context!11624))

(assert (=> b!6553392 (= res!2688716 (not (= (appendTo!189 lt!2403260 lt!2403313) lt!2403297)))))

(declare-fun lt!2403314 () List!65583)

(declare-fun lambda!364127 () Int)

(declare-fun map!14951 ((Set Context!11624) Int) (Set Context!11624))

(declare-fun ++!14558 (List!65583 List!65583) List!65583)

(assert (=> b!6553392 (= (map!14951 lt!2403260 lambda!364127) (set.insert (Context!11625 (++!14558 lt!2403314 lt!2403275)) (as set.empty (Set Context!11624))))))

(declare-fun lt!2403302 () Unit!159047)

(declare-fun lambda!364128 () Int)

(declare-fun lemmaConcatPreservesForall!401 (List!65583 List!65583 Int) Unit!159047)

(assert (=> b!6553392 (= lt!2403302 (lemmaConcatPreservesForall!401 lt!2403314 lt!2403275 lambda!364128))))

(declare-fun lt!2403261 () Context!11624)

(declare-fun lt!2403285 () Unit!159047)

(declare-fun lemmaMapOnSingletonSet!211 ((Set Context!11624) Context!11624 Int) Unit!159047)

(assert (=> b!6553392 (= lt!2403285 (lemmaMapOnSingletonSet!211 lt!2403260 lt!2403261 lambda!364127))))

(declare-fun b!6553393 () Bool)

(declare-fun Unit!159050 () Unit!159047)

(assert (=> b!6553393 (= e!3967574 Unit!159050)))

(declare-fun b!6553394 () Bool)

(declare-fun e!3967585 () Bool)

(declare-fun validRegex!8164 (Regex!16428) Bool)

(assert (=> b!6553394 (= e!3967585 (validRegex!8164 (reg!16757 (regOne!33368 r!7292))))))

(declare-datatypes ((tuple2!66814 0))(
  ( (tuple2!66815 (_1!36710 List!65584) (_2!36710 List!65584)) )
))
(declare-fun lt!2403292 () tuple2!66814)

(assert (=> b!6553394 (matchRSpec!3529 lt!2403289 (_1!36710 lt!2403292))))

(declare-fun lt!2403263 () Unit!159047)

(assert (=> b!6553394 (= lt!2403263 (mainMatchTheorem!3529 lt!2403289 (_1!36710 lt!2403292)))))

(declare-fun b!6553395 () Bool)

(declare-fun tp!1811736 () Bool)

(declare-fun tp!1811737 () Bool)

(assert (=> b!6553395 (= e!3967580 (and tp!1811736 tp!1811737))))

(declare-fun b!6553396 () Bool)

(declare-fun res!2688708 () Bool)

(declare-fun e!3967581 () Bool)

(assert (=> b!6553396 (=> res!2688708 e!3967581)))

(declare-fun lt!2403310 () tuple2!66814)

(assert (=> b!6553396 (= res!2688708 (not (matchZipper!2440 lt!2403260 (_1!36710 lt!2403310))))))

(declare-fun b!6553397 () Bool)

(declare-fun res!2688721 () Bool)

(assert (=> b!6553397 (=> res!2688721 e!3967575)))

(assert (=> b!6553397 (= res!2688721 (not (is-Cons!65459 (exprs!6312 (h!71909 zl!343)))))))

(declare-fun b!6553398 () Bool)

(declare-fun res!2688710 () Bool)

(assert (=> b!6553398 (=> res!2688710 e!3967575)))

(declare-fun generalisedUnion!2272 (List!65583) Regex!16428)

(declare-fun unfocusZipperList!1849 (List!65585) List!65583)

(assert (=> b!6553398 (= res!2688710 (not (= r!7292 (generalisedUnion!2272 (unfocusZipperList!1849 zl!343)))))))

(assert (=> b!6553399 (= e!3967581 e!3967585)))

(declare-fun res!2688719 () Bool)

(assert (=> b!6553399 (=> res!2688719 e!3967585)))

(assert (=> b!6553399 (= res!2688719 (not (matchR!8611 lt!2403289 (_1!36710 lt!2403292))))))

(declare-datatypes ((Option!16319 0))(
  ( (None!16318) (Some!16318 (v!52503 tuple2!66814)) )
))
(declare-fun lt!2403295 () Option!16319)

(declare-fun get!22724 (Option!16319) tuple2!66814)

(assert (=> b!6553399 (= lt!2403292 (get!22724 lt!2403295))))

(declare-fun Exists!3498 (Int) Bool)

(assert (=> b!6553399 (= (Exists!3498 lambda!364129) (Exists!3498 lambda!364130))))

(declare-fun lt!2403282 () Unit!159047)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2035 (Regex!16428 Regex!16428 List!65584) Unit!159047)

(assert (=> b!6553399 (= lt!2403282 (lemmaExistCutMatchRandMatchRSpecEquivalent!2035 lt!2403289 (regTwo!33368 r!7292) s!2326))))

(declare-fun isDefined!13022 (Option!16319) Bool)

(assert (=> b!6553399 (= (isDefined!13022 lt!2403295) (Exists!3498 lambda!364129))))

(declare-fun findConcatSeparation!2733 (Regex!16428 Regex!16428 List!65584 List!65584 List!65584) Option!16319)

(assert (=> b!6553399 (= lt!2403295 (findConcatSeparation!2733 lt!2403289 (regTwo!33368 r!7292) Nil!65460 s!2326 s!2326))))

(declare-fun lt!2403273 () Unit!159047)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2497 (Regex!16428 Regex!16428 List!65584) Unit!159047)

(assert (=> b!6553399 (= lt!2403273 (lemmaFindConcatSeparationEquivalentToExists!2497 lt!2403289 (regTwo!33368 r!7292) s!2326))))

(declare-fun lt!2403317 () Regex!16428)

(assert (=> b!6553399 (matchRSpec!3529 lt!2403317 s!2326)))

(declare-fun lt!2403269 () Unit!159047)

(assert (=> b!6553399 (= lt!2403269 (mainMatchTheorem!3529 lt!2403317 s!2326))))

(assert (=> b!6553399 (matchR!8611 lt!2403317 s!2326)))

(assert (=> b!6553399 (= lt!2403317 (Concat!25273 lt!2403289 (regTwo!33368 r!7292)))))

(assert (=> b!6553399 (= lt!2403289 (Concat!25273 (reg!16757 (regOne!33368 r!7292)) lt!2403296))))

(declare-fun lt!2403272 () Unit!159047)

(declare-fun lemmaConcatAssociative!125 (Regex!16428 Regex!16428 Regex!16428 List!65584) Unit!159047)

(assert (=> b!6553399 (= lt!2403272 (lemmaConcatAssociative!125 (reg!16757 (regOne!33368 r!7292)) lt!2403296 (regTwo!33368 r!7292) s!2326))))

(assert (=> b!6553399 e!3967576))

(declare-fun res!2688705 () Bool)

(assert (=> b!6553399 (=> (not res!2688705) (not e!3967576))))

(declare-fun lt!2403316 () List!65584)

(assert (=> b!6553399 (= res!2688705 (matchR!8611 lt!2403304 lt!2403316))))

(declare-fun lt!2403264 () Unit!159047)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!349 (Regex!16428 Regex!16428 List!65584 List!65584) Unit!159047)

(assert (=> b!6553399 (= lt!2403264 (lemmaTwoRegexMatchThenConcatMatchesConcatString!349 (reg!16757 (regOne!33368 r!7292)) lt!2403267 (_1!36710 lt!2403310) (_2!36710 lt!2403310)))))

(assert (=> b!6553399 (matchR!8611 lt!2403267 (_2!36710 lt!2403310))))

(declare-fun lt!2403294 () Unit!159047)

(declare-fun lt!2403293 () (Set Context!11624))

(declare-fun theoremZipperRegexEquiv!864 ((Set Context!11624) List!65585 Regex!16428 List!65584) Unit!159047)

(assert (=> b!6553399 (= lt!2403294 (theoremZipperRegexEquiv!864 lt!2403293 lt!2403287 lt!2403267 (_2!36710 lt!2403310)))))

(assert (=> b!6553399 (matchR!8611 (reg!16757 (regOne!33368 r!7292)) (_1!36710 lt!2403310))))

(declare-fun lt!2403290 () Unit!159047)

(declare-fun lt!2403279 () List!65585)

(assert (=> b!6553399 (= lt!2403290 (theoremZipperRegexEquiv!864 lt!2403260 lt!2403279 (reg!16757 (regOne!33368 r!7292)) (_1!36710 lt!2403310)))))

(assert (=> b!6553399 (matchZipper!2440 (set.insert (Context!11625 (++!14558 lt!2403314 lt!2403275)) (as set.empty (Set Context!11624))) lt!2403316)))

(declare-fun lt!2403307 () Unit!159047)

(assert (=> b!6553399 (= lt!2403307 (lemmaConcatPreservesForall!401 lt!2403314 lt!2403275 lambda!364128))))

(declare-fun lt!2403303 () Unit!159047)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!209 (Context!11624 Context!11624 List!65584 List!65584) Unit!159047)

(assert (=> b!6553399 (= lt!2403303 (lemmaConcatenateContextMatchesConcatOfStrings!209 lt!2403261 lt!2403313 (_1!36710 lt!2403310) (_2!36710 lt!2403310)))))

(declare-fun b!6553400 () Bool)

(declare-fun tp!1811732 () Bool)

(assert (=> b!6553400 (= e!3967580 tp!1811732)))

(declare-fun b!6553401 () Bool)

(assert (=> b!6553401 (= e!3967580 tp_is_empty!42109)))

(declare-fun b!6553402 () Bool)

(declare-fun res!2688703 () Bool)

(assert (=> b!6553402 (=> res!2688703 e!3967575)))

(declare-fun generalisedConcat!2025 (List!65583) Regex!16428)

(assert (=> b!6553402 (= res!2688703 (not (= r!7292 (generalisedConcat!2025 (exprs!6312 (h!71909 zl!343))))))))

(declare-fun b!6553403 () Bool)

(declare-fun res!2688718 () Bool)

(assert (=> b!6553403 (=> res!2688718 e!3967568)))

(assert (=> b!6553403 (= res!2688718 (or (not lt!2403268) (not lt!2403299)))))

(declare-fun b!6553404 () Bool)

(assert (=> b!6553404 (= e!3967573 e!3967583)))

(declare-fun res!2688707 () Bool)

(assert (=> b!6553404 (=> res!2688707 e!3967583)))

(assert (=> b!6553404 (= res!2688707 (not (= (unfocusZipper!2170 lt!2403279) (reg!16757 (regOne!33368 r!7292)))))))

(assert (=> b!6553404 (= lt!2403279 (Cons!65461 lt!2403261 Nil!65461))))

(assert (=> b!6553404 (= (flatMap!1933 lt!2403293 lambda!364126) (derivationStepZipperUp!1602 lt!2403313 (h!71908 s!2326)))))

(declare-fun lt!2403288 () Unit!159047)

(assert (=> b!6553404 (= lt!2403288 (lemmaFlatMapOnSingletonSet!1459 lt!2403293 lt!2403313 lambda!364126))))

(assert (=> b!6553404 (= (flatMap!1933 lt!2403260 lambda!364126) (derivationStepZipperUp!1602 lt!2403261 (h!71908 s!2326)))))

(declare-fun lt!2403270 () Unit!159047)

(assert (=> b!6553404 (= lt!2403270 (lemmaFlatMapOnSingletonSet!1459 lt!2403260 lt!2403261 lambda!364126))))

(declare-fun lt!2403309 () (Set Context!11624))

(assert (=> b!6553404 (= lt!2403309 (derivationStepZipperUp!1602 lt!2403313 (h!71908 s!2326)))))

(declare-fun lt!2403259 () (Set Context!11624))

(assert (=> b!6553404 (= lt!2403259 (derivationStepZipperUp!1602 lt!2403261 (h!71908 s!2326)))))

(assert (=> b!6553404 (= lt!2403293 (set.insert lt!2403313 (as set.empty (Set Context!11624))))))

(assert (=> b!6553404 (= lt!2403260 (set.insert lt!2403261 (as set.empty (Set Context!11624))))))

(assert (=> b!6553404 (= lt!2403261 (Context!11625 lt!2403314))))

(assert (=> b!6553404 (= lt!2403314 (Cons!65459 (reg!16757 (regOne!33368 r!7292)) Nil!65459))))

(assert (=> b!6553405 (= e!3967579 e!3967578)))

(declare-fun res!2688693 () Bool)

(assert (=> b!6553405 (=> res!2688693 e!3967578)))

(assert (=> b!6553405 (= res!2688693 (or (and (is-ElementMatch!16428 (regOne!33368 r!7292)) (= (c!1203875 (regOne!33368 r!7292)) (h!71908 s!2326))) (is-Union!16428 (regOne!33368 r!7292))))))

(declare-fun lt!2403311 () Unit!159047)

(assert (=> b!6553405 (= lt!2403311 e!3967574)))

(declare-fun c!1203874 () Bool)

(declare-fun lt!2403266 () Bool)

(assert (=> b!6553405 (= c!1203874 lt!2403266)))

(assert (=> b!6553405 (= lt!2403266 (nullable!6421 (h!71907 (exprs!6312 (h!71909 zl!343)))))))

(assert (=> b!6553405 (= (flatMap!1933 z!1189 lambda!364126) (derivationStepZipperUp!1602 (h!71909 zl!343) (h!71908 s!2326)))))

(declare-fun lt!2403300 () Unit!159047)

(assert (=> b!6553405 (= lt!2403300 (lemmaFlatMapOnSingletonSet!1459 z!1189 (h!71909 zl!343) lambda!364126))))

(declare-fun lt!2403308 () Context!11624)

(assert (=> b!6553405 (= lt!2403315 (derivationStepZipperUp!1602 lt!2403308 (h!71908 s!2326)))))

(assert (=> b!6553405 (= lt!2403291 (derivationStepZipperDown!1676 (h!71907 (exprs!6312 (h!71909 zl!343))) lt!2403308 (h!71908 s!2326)))))

(assert (=> b!6553405 (= lt!2403308 (Context!11625 (t!379225 (exprs!6312 (h!71909 zl!343)))))))

(declare-fun lt!2403274 () (Set Context!11624))

(assert (=> b!6553405 (= lt!2403274 (derivationStepZipperUp!1602 (Context!11625 (Cons!65459 (h!71907 (exprs!6312 (h!71909 zl!343))) (t!379225 (exprs!6312 (h!71909 zl!343))))) (h!71908 s!2326)))))

(declare-fun b!6553406 () Bool)

(declare-fun res!2688698 () Bool)

(assert (=> b!6553406 (=> res!2688698 e!3967578)))

(assert (=> b!6553406 (= res!2688698 (or (is-Concat!25273 (regOne!33368 r!7292)) (not (is-Star!16428 (regOne!33368 r!7292)))))))

(declare-fun b!6553407 () Bool)

(declare-fun res!2688711 () Bool)

(assert (=> b!6553407 (=> res!2688711 e!3967572)))

(assert (=> b!6553407 (= res!2688711 (not lt!2403266))))

(declare-fun b!6553408 () Bool)

(declare-fun res!2688709 () Bool)

(assert (=> b!6553408 (=> res!2688709 e!3967581)))

(assert (=> b!6553408 (= res!2688709 (not (matchZipper!2440 lt!2403293 (_2!36710 lt!2403310))))))

(declare-fun b!6553409 () Bool)

(declare-fun res!2688706 () Bool)

(assert (=> b!6553409 (=> (not res!2688706) (not e!3967567))))

(declare-fun toList!10212 ((Set Context!11624)) List!65585)

(assert (=> b!6553409 (= res!2688706 (= (toList!10212 z!1189) zl!343))))

(declare-fun b!6553410 () Bool)

(assert (=> b!6553410 (= e!3967563 e!3967572)))

(declare-fun res!2688720 () Bool)

(assert (=> b!6553410 (=> res!2688720 e!3967572)))

(assert (=> b!6553410 (= res!2688720 lt!2403276)))

(assert (=> b!6553410 (= lt!2403277 (matchRSpec!3529 lt!2403304 s!2326))))

(assert (=> b!6553410 (= lt!2403277 (matchR!8611 lt!2403304 s!2326))))

(declare-fun lt!2403262 () Unit!159047)

(assert (=> b!6553410 (= lt!2403262 (mainMatchTheorem!3529 lt!2403304 s!2326))))

(assert (=> b!6553411 (= e!3967575 e!3967579)))

(declare-fun res!2688723 () Bool)

(assert (=> b!6553411 (=> res!2688723 e!3967579)))

(declare-fun lt!2403305 () Bool)

(assert (=> b!6553411 (= res!2688723 (or (not (= lt!2403276 lt!2403305)) (is-Nil!65460 s!2326)))))

(assert (=> b!6553411 (= (Exists!3498 lambda!364124) (Exists!3498 lambda!364125))))

(declare-fun lt!2403278 () Unit!159047)

(assert (=> b!6553411 (= lt!2403278 (lemmaExistCutMatchRandMatchRSpecEquivalent!2035 (regOne!33368 r!7292) (regTwo!33368 r!7292) s!2326))))

(assert (=> b!6553411 (= lt!2403305 (Exists!3498 lambda!364124))))

(assert (=> b!6553411 (= lt!2403305 (isDefined!13022 (findConcatSeparation!2733 (regOne!33368 r!7292) (regTwo!33368 r!7292) Nil!65460 s!2326 s!2326)))))

(declare-fun lt!2403286 () Unit!159047)

(assert (=> b!6553411 (= lt!2403286 (lemmaFindConcatSeparationEquivalentToExists!2497 (regOne!33368 r!7292) (regTwo!33368 r!7292) s!2326))))

(declare-fun b!6553412 () Bool)

(declare-fun res!2688692 () Bool)

(assert (=> b!6553412 (=> res!2688692 e!3967575)))

(declare-fun isEmpty!37692 (List!65585) Bool)

(assert (=> b!6553412 (= res!2688692 (not (isEmpty!37692 (t!379227 zl!343))))))

(declare-fun b!6553413 () Bool)

(declare-fun res!2688689 () Bool)

(assert (=> b!6553413 (=> res!2688689 e!3967578)))

(assert (=> b!6553413 (= res!2688689 e!3967582)))

(declare-fun res!2688704 () Bool)

(assert (=> b!6553413 (=> (not res!2688704) (not e!3967582))))

(assert (=> b!6553413 (= res!2688704 (is-Concat!25273 (regOne!33368 r!7292)))))

(declare-fun res!2688713 () Bool)

(assert (=> start!642204 (=> (not res!2688713) (not e!3967567))))

(assert (=> start!642204 (= res!2688713 (validRegex!8164 r!7292))))

(assert (=> start!642204 e!3967567))

(assert (=> start!642204 e!3967580))

(declare-fun condSetEmpty!44727 () Bool)

(assert (=> start!642204 (= condSetEmpty!44727 (= z!1189 (as set.empty (Set Context!11624))))))

(assert (=> start!642204 setRes!44727))

(assert (=> start!642204 e!3967570))

(assert (=> start!642204 e!3967571))

(declare-fun setElem!44727 () Context!11624)

(declare-fun setNonEmpty!44727 () Bool)

(declare-fun tp!1811728 () Bool)

(assert (=> setNonEmpty!44727 (= setRes!44727 (and tp!1811728 (inv!84318 setElem!44727) e!3967564))))

(declare-fun setRest!44727 () (Set Context!11624))

(assert (=> setNonEmpty!44727 (= z!1189 (set.union (set.insert setElem!44727 (as set.empty (Set Context!11624))) setRest!44727))))

(declare-fun b!6553414 () Bool)

(assert (=> b!6553414 (= e!3967587 e!3967581)))

(declare-fun res!2688697 () Bool)

(assert (=> b!6553414 (=> res!2688697 e!3967581)))

(assert (=> b!6553414 (= res!2688697 (not (= s!2326 lt!2403316)))))

(declare-fun ++!14559 (List!65584 List!65584) List!65584)

(assert (=> b!6553414 (= lt!2403316 (++!14559 (_1!36710 lt!2403310) (_2!36710 lt!2403310)))))

(declare-fun lt!2403283 () Option!16319)

(assert (=> b!6553414 (= lt!2403310 (get!22724 lt!2403283))))

(assert (=> b!6553414 (isDefined!13022 lt!2403283)))

(declare-fun findConcatSeparationZippers!193 ((Set Context!11624) (Set Context!11624) List!65584 List!65584 List!65584) Option!16319)

(assert (=> b!6553414 (= lt!2403283 (findConcatSeparationZippers!193 lt!2403260 lt!2403293 Nil!65460 s!2326 s!2326))))

(declare-fun lt!2403265 () Unit!159047)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!193 ((Set Context!11624) Context!11624 List!65584) Unit!159047)

(assert (=> b!6553414 (= lt!2403265 (lemmaConcatZipperMatchesStringThenFindConcatDefined!193 lt!2403260 lt!2403313 s!2326))))

(assert (= (and start!642204 res!2688713) b!6553409))

(assert (= (and b!6553409 res!2688706) b!6553376))

(assert (= (and b!6553376 res!2688696) b!6553382))

(assert (= (and b!6553382 (not res!2688699)) b!6553412))

(assert (= (and b!6553412 (not res!2688692)) b!6553402))

(assert (= (and b!6553402 (not res!2688703)) b!6553397))

(assert (= (and b!6553397 (not res!2688721)) b!6553398))

(assert (= (and b!6553398 (not res!2688710)) b!6553387))

(assert (= (and b!6553387 (not res!2688691)) b!6553411))

(assert (= (and b!6553411 (not res!2688723)) b!6553389))

(assert (= (and b!6553389 (not res!2688714)) b!6553405))

(assert (= (and b!6553405 c!1203874) b!6553390))

(assert (= (and b!6553405 (not c!1203874)) b!6553393))

(assert (= (and b!6553390 (not res!2688702)) b!6553369))

(assert (= (and b!6553405 (not res!2688693)) b!6553413))

(assert (= (and b!6553413 res!2688704) b!6553386))

(assert (= (and b!6553413 (not res!2688689)) b!6553406))

(assert (= (and b!6553406 (not res!2688698)) b!6553388))

(assert (= (and b!6553388 (not res!2688724)) b!6553391))

(assert (= (and b!6553391 (not res!2688694)) b!6553385))

(assert (= (and b!6553385 (not res!2688715)) b!6553374))

(assert (= (and b!6553374 (not res!2688700)) b!6553383))

(assert (= (and b!6553383 (not res!2688712)) b!6553372))

(assert (= (and b!6553372 (not res!2688722)) b!6553404))

(assert (= (and b!6553404 (not res!2688707)) b!6553370))

(assert (= (and b!6553370 (not res!2688701)) b!6553410))

(assert (= (and b!6553410 (not res!2688720)) b!6553381))

(assert (= (and b!6553381 (not res!2688717)) b!6553407))

(assert (= (and b!6553407 (not res!2688711)) b!6553377))

(assert (= (and b!6553377 res!2688690) b!6553379))

(assert (= (and b!6553377 (not res!2688695)) b!6553403))

(assert (= (and b!6553403 (not res!2688718)) b!6553392))

(assert (= (and b!6553392 (not res!2688716)) b!6553414))

(assert (= (and b!6553414 (not res!2688697)) b!6553396))

(assert (= (and b!6553396 (not res!2688708)) b!6553408))

(assert (= (and b!6553408 (not res!2688709)) b!6553399))

(assert (= (and b!6553399 res!2688705) b!6553371))

(assert (= (and b!6553399 (not res!2688719)) b!6553394))

(assert (= (and start!642204 (is-ElementMatch!16428 r!7292)) b!6553401))

(assert (= (and start!642204 (is-Concat!25273 r!7292)) b!6553375))

(assert (= (and start!642204 (is-Star!16428 r!7292)) b!6553400))

(assert (= (and start!642204 (is-Union!16428 r!7292)) b!6553395))

(assert (= (and start!642204 condSetEmpty!44727) setIsEmpty!44727))

(assert (= (and start!642204 (not condSetEmpty!44727)) setNonEmpty!44727))

(assert (= setNonEmpty!44727 b!6553378))

(assert (= b!6553380 b!6553373))

(assert (= (and start!642204 (is-Cons!65461 zl!343)) b!6553380))

(assert (= (and start!642204 (is-Cons!65460 s!2326)) b!6553384))

(declare-fun m!7335596 () Bool)

(assert (=> b!6553385 m!7335596))

(declare-fun m!7335598 () Bool)

(assert (=> b!6553385 m!7335598))

(declare-fun m!7335600 () Bool)

(assert (=> b!6553412 m!7335600))

(declare-fun m!7335602 () Bool)

(assert (=> b!6553408 m!7335602))

(declare-fun m!7335604 () Bool)

(assert (=> b!6553409 m!7335604))

(declare-fun m!7335606 () Bool)

(assert (=> b!6553405 m!7335606))

(declare-fun m!7335608 () Bool)

(assert (=> b!6553405 m!7335608))

(declare-fun m!7335610 () Bool)

(assert (=> b!6553405 m!7335610))

(declare-fun m!7335612 () Bool)

(assert (=> b!6553405 m!7335612))

(declare-fun m!7335614 () Bool)

(assert (=> b!6553405 m!7335614))

(declare-fun m!7335616 () Bool)

(assert (=> b!6553405 m!7335616))

(declare-fun m!7335618 () Bool)

(assert (=> b!6553405 m!7335618))

(declare-fun m!7335620 () Bool)

(assert (=> b!6553391 m!7335620))

(declare-fun m!7335622 () Bool)

(assert (=> b!6553391 m!7335622))

(declare-fun m!7335624 () Bool)

(assert (=> b!6553391 m!7335624))

(declare-fun m!7335626 () Bool)

(assert (=> b!6553391 m!7335626))

(declare-fun m!7335628 () Bool)

(assert (=> b!6553391 m!7335628))

(declare-fun m!7335630 () Bool)

(assert (=> b!6553394 m!7335630))

(declare-fun m!7335632 () Bool)

(assert (=> b!6553394 m!7335632))

(declare-fun m!7335634 () Bool)

(assert (=> b!6553394 m!7335634))

(declare-fun m!7335636 () Bool)

(assert (=> b!6553388 m!7335636))

(declare-fun m!7335638 () Bool)

(assert (=> b!6553410 m!7335638))

(declare-fun m!7335640 () Bool)

(assert (=> b!6553410 m!7335640))

(declare-fun m!7335642 () Bool)

(assert (=> b!6553410 m!7335642))

(declare-fun m!7335644 () Bool)

(assert (=> b!6553380 m!7335644))

(declare-fun m!7335646 () Bool)

(assert (=> b!6553369 m!7335646))

(declare-fun m!7335648 () Bool)

(assert (=> b!6553398 m!7335648))

(assert (=> b!6553398 m!7335648))

(declare-fun m!7335650 () Bool)

(assert (=> b!6553398 m!7335650))

(declare-fun m!7335652 () Bool)

(assert (=> b!6553382 m!7335652))

(declare-fun m!7335654 () Bool)

(assert (=> b!6553382 m!7335654))

(declare-fun m!7335656 () Bool)

(assert (=> b!6553382 m!7335656))

(declare-fun m!7335658 () Bool)

(assert (=> b!6553411 m!7335658))

(declare-fun m!7335660 () Bool)

(assert (=> b!6553411 m!7335660))

(declare-fun m!7335662 () Bool)

(assert (=> b!6553411 m!7335662))

(declare-fun m!7335664 () Bool)

(assert (=> b!6553411 m!7335664))

(assert (=> b!6553411 m!7335660))

(declare-fun m!7335666 () Bool)

(assert (=> b!6553411 m!7335666))

(declare-fun m!7335668 () Bool)

(assert (=> b!6553411 m!7335668))

(assert (=> b!6553411 m!7335658))

(declare-fun m!7335670 () Bool)

(assert (=> b!6553377 m!7335670))

(declare-fun m!7335672 () Bool)

(assert (=> b!6553372 m!7335672))

(declare-fun m!7335674 () Bool)

(assert (=> b!6553381 m!7335674))

(declare-fun m!7335676 () Bool)

(assert (=> b!6553392 m!7335676))

(declare-fun m!7335678 () Bool)

(assert (=> b!6553392 m!7335678))

(declare-fun m!7335680 () Bool)

(assert (=> b!6553392 m!7335680))

(declare-fun m!7335682 () Bool)

(assert (=> b!6553392 m!7335682))

(declare-fun m!7335684 () Bool)

(assert (=> b!6553392 m!7335684))

(declare-fun m!7335686 () Bool)

(assert (=> b!6553392 m!7335686))

(declare-fun m!7335688 () Bool)

(assert (=> b!6553389 m!7335688))

(declare-fun m!7335690 () Bool)

(assert (=> b!6553404 m!7335690))

(declare-fun m!7335692 () Bool)

(assert (=> b!6553404 m!7335692))

(declare-fun m!7335694 () Bool)

(assert (=> b!6553404 m!7335694))

(declare-fun m!7335696 () Bool)

(assert (=> b!6553404 m!7335696))

(declare-fun m!7335698 () Bool)

(assert (=> b!6553404 m!7335698))

(declare-fun m!7335700 () Bool)

(assert (=> b!6553404 m!7335700))

(declare-fun m!7335702 () Bool)

(assert (=> b!6553404 m!7335702))

(declare-fun m!7335704 () Bool)

(assert (=> b!6553404 m!7335704))

(declare-fun m!7335706 () Bool)

(assert (=> b!6553404 m!7335706))

(declare-fun m!7335708 () Bool)

(assert (=> b!6553396 m!7335708))

(declare-fun m!7335710 () Bool)

(assert (=> b!6553399 m!7335710))

(declare-fun m!7335712 () Bool)

(assert (=> b!6553399 m!7335712))

(declare-fun m!7335714 () Bool)

(assert (=> b!6553399 m!7335714))

(declare-fun m!7335716 () Bool)

(assert (=> b!6553399 m!7335716))

(declare-fun m!7335718 () Bool)

(assert (=> b!6553399 m!7335718))

(declare-fun m!7335720 () Bool)

(assert (=> b!6553399 m!7335720))

(declare-fun m!7335722 () Bool)

(assert (=> b!6553399 m!7335722))

(declare-fun m!7335724 () Bool)

(assert (=> b!6553399 m!7335724))

(declare-fun m!7335726 () Bool)

(assert (=> b!6553399 m!7335726))

(assert (=> b!6553399 m!7335680))

(declare-fun m!7335728 () Bool)

(assert (=> b!6553399 m!7335728))

(declare-fun m!7335730 () Bool)

(assert (=> b!6553399 m!7335730))

(declare-fun m!7335732 () Bool)

(assert (=> b!6553399 m!7335732))

(declare-fun m!7335734 () Bool)

(assert (=> b!6553399 m!7335734))

(assert (=> b!6553399 m!7335680))

(assert (=> b!6553399 m!7335684))

(declare-fun m!7335736 () Bool)

(assert (=> b!6553399 m!7335736))

(declare-fun m!7335738 () Bool)

(assert (=> b!6553399 m!7335738))

(assert (=> b!6553399 m!7335686))

(declare-fun m!7335740 () Bool)

(assert (=> b!6553399 m!7335740))

(declare-fun m!7335742 () Bool)

(assert (=> b!6553399 m!7335742))

(declare-fun m!7335744 () Bool)

(assert (=> b!6553399 m!7335744))

(declare-fun m!7335746 () Bool)

(assert (=> b!6553399 m!7335746))

(assert (=> b!6553399 m!7335714))

(declare-fun m!7335748 () Bool)

(assert (=> b!6553399 m!7335748))

(declare-fun m!7335750 () Bool)

(assert (=> b!6553376 m!7335750))

(declare-fun m!7335752 () Bool)

(assert (=> b!6553390 m!7335752))

(assert (=> b!6553390 m!7335670))

(declare-fun m!7335754 () Bool)

(assert (=> b!6553390 m!7335754))

(declare-fun m!7335756 () Bool)

(assert (=> b!6553386 m!7335756))

(assert (=> b!6553379 m!7335646))

(declare-fun m!7335758 () Bool)

(assert (=> b!6553414 m!7335758))

(declare-fun m!7335760 () Bool)

(assert (=> b!6553414 m!7335760))

(declare-fun m!7335762 () Bool)

(assert (=> b!6553414 m!7335762))

(declare-fun m!7335764 () Bool)

(assert (=> b!6553414 m!7335764))

(declare-fun m!7335766 () Bool)

(assert (=> b!6553414 m!7335766))

(declare-fun m!7335768 () Bool)

(assert (=> b!6553370 m!7335768))

(declare-fun m!7335770 () Bool)

(assert (=> setNonEmpty!44727 m!7335770))

(declare-fun m!7335772 () Bool)

(assert (=> start!642204 m!7335772))

(declare-fun m!7335774 () Bool)

(assert (=> b!6553402 m!7335774))

(push 1)

(assert (not b!6553385))

(assert (not b!6553402))

(assert (not b!6553395))

(assert (not b!6553369))

(assert (not b!6553412))

(assert (not b!6553409))

(assert (not b!6553400))

(assert (not b!6553384))

(assert (not b!6553376))

(assert (not b!6553414))

(assert (not b!6553408))

(assert (not b!6553410))

(assert (not start!642204))

(assert (not b!6553382))

(assert (not b!6553394))

(assert (not b!6553377))

(assert (not setNonEmpty!44727))

(assert (not b!6553378))

(assert (not b!6553372))

(assert (not b!6553411))

(assert (not b!6553380))

(assert (not b!6553390))

(assert (not b!6553396))

(assert (not b!6553381))

(assert (not b!6553379))

(assert (not b!6553388))

(assert (not b!6553386))

(assert (not b!6553375))

(assert (not b!6553391))

(assert (not b!6553373))

(assert (not b!6553398))

(assert tp_is_empty!42109)

(assert (not b!6553370))

(assert (not b!6553392))

(assert (not b!6553389))

(assert (not b!6553405))

(assert (not b!6553404))

(assert (not b!6553399))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2056598 () Bool)

(declare-fun c!1203893 () Bool)

(declare-fun isEmpty!37695 (List!65584) Bool)

(assert (=> d!2056598 (= c!1203893 (isEmpty!37695 (t!379226 s!2326)))))

(declare-fun e!3967685 () Bool)

(assert (=> d!2056598 (= (matchZipper!2440 lt!2403306 (t!379226 s!2326)) e!3967685)))

(declare-fun b!6553597 () Bool)

(declare-fun nullableZipper!2173 ((Set Context!11624)) Bool)

(assert (=> b!6553597 (= e!3967685 (nullableZipper!2173 lt!2403306))))

(declare-fun b!6553598 () Bool)

(declare-fun head!13307 (List!65584) C!33126)

(declare-fun tail!12392 (List!65584) List!65584)

(assert (=> b!6553598 (= e!3967685 (matchZipper!2440 (derivationStepZipper!2394 lt!2403306 (head!13307 (t!379226 s!2326))) (tail!12392 (t!379226 s!2326))))))

(assert (= (and d!2056598 c!1203893) b!6553597))

(assert (= (and d!2056598 (not c!1203893)) b!6553598))

(declare-fun m!7335956 () Bool)

(assert (=> d!2056598 m!7335956))

(declare-fun m!7335958 () Bool)

(assert (=> b!6553597 m!7335958))

(declare-fun m!7335960 () Bool)

(assert (=> b!6553598 m!7335960))

(assert (=> b!6553598 m!7335960))

(declare-fun m!7335962 () Bool)

(assert (=> b!6553598 m!7335962))

(declare-fun m!7335964 () Bool)

(assert (=> b!6553598 m!7335964))

(assert (=> b!6553598 m!7335962))

(assert (=> b!6553598 m!7335964))

(declare-fun m!7335966 () Bool)

(assert (=> b!6553598 m!7335966))

(assert (=> b!6553385 d!2056598))

(declare-fun d!2056600 () Bool)

(declare-fun c!1203894 () Bool)

(assert (=> d!2056600 (= c!1203894 (isEmpty!37695 s!2326))))

(declare-fun e!3967686 () Bool)

(assert (=> d!2056600 (= (matchZipper!2440 lt!2403297 s!2326) e!3967686)))

(declare-fun b!6553599 () Bool)

(assert (=> b!6553599 (= e!3967686 (nullableZipper!2173 lt!2403297))))

(declare-fun b!6553600 () Bool)

(assert (=> b!6553600 (= e!3967686 (matchZipper!2440 (derivationStepZipper!2394 lt!2403297 (head!13307 s!2326)) (tail!12392 s!2326)))))

(assert (= (and d!2056600 c!1203894) b!6553599))

(assert (= (and d!2056600 (not c!1203894)) b!6553600))

(declare-fun m!7335968 () Bool)

(assert (=> d!2056600 m!7335968))

(declare-fun m!7335970 () Bool)

(assert (=> b!6553599 m!7335970))

(declare-fun m!7335972 () Bool)

(assert (=> b!6553600 m!7335972))

(assert (=> b!6553600 m!7335972))

(declare-fun m!7335974 () Bool)

(assert (=> b!6553600 m!7335974))

(declare-fun m!7335976 () Bool)

(assert (=> b!6553600 m!7335976))

(assert (=> b!6553600 m!7335974))

(assert (=> b!6553600 m!7335976))

(declare-fun m!7335978 () Bool)

(assert (=> b!6553600 m!7335978))

(assert (=> b!6553385 d!2056600))

(declare-fun d!2056602 () Bool)

(declare-fun c!1203899 () Bool)

(declare-fun e!3967693 () Bool)

(assert (=> d!2056602 (= c!1203899 e!3967693)))

(declare-fun res!2688860 () Bool)

(assert (=> d!2056602 (=> (not res!2688860) (not e!3967693))))

(assert (=> d!2056602 (= res!2688860 (is-Cons!65459 (exprs!6312 lt!2403308)))))

(declare-fun e!3967694 () (Set Context!11624))

(assert (=> d!2056602 (= (derivationStepZipperUp!1602 lt!2403308 (h!71908 s!2326)) e!3967694)))

(declare-fun b!6553611 () Bool)

(declare-fun e!3967695 () (Set Context!11624))

(declare-fun call!569992 () (Set Context!11624))

(assert (=> b!6553611 (= e!3967695 call!569992)))

(declare-fun b!6553612 () Bool)

(assert (=> b!6553612 (= e!3967695 (as set.empty (Set Context!11624)))))

(declare-fun b!6553613 () Bool)

(assert (=> b!6553613 (= e!3967694 e!3967695)))

(declare-fun c!1203900 () Bool)

(assert (=> b!6553613 (= c!1203900 (is-Cons!65459 (exprs!6312 lt!2403308)))))

(declare-fun b!6553614 () Bool)

(assert (=> b!6553614 (= e!3967694 (set.union call!569992 (derivationStepZipperUp!1602 (Context!11625 (t!379225 (exprs!6312 lt!2403308))) (h!71908 s!2326))))))

(declare-fun b!6553615 () Bool)

(assert (=> b!6553615 (= e!3967693 (nullable!6421 (h!71907 (exprs!6312 lt!2403308))))))

(declare-fun bm!569987 () Bool)

(assert (=> bm!569987 (= call!569992 (derivationStepZipperDown!1676 (h!71907 (exprs!6312 lt!2403308)) (Context!11625 (t!379225 (exprs!6312 lt!2403308))) (h!71908 s!2326)))))

(assert (= (and d!2056602 res!2688860) b!6553615))

(assert (= (and d!2056602 c!1203899) b!6553614))

(assert (= (and d!2056602 (not c!1203899)) b!6553613))

(assert (= (and b!6553613 c!1203900) b!6553611))

(assert (= (and b!6553613 (not c!1203900)) b!6553612))

(assert (= (or b!6553614 b!6553611) bm!569987))

(declare-fun m!7335980 () Bool)

(assert (=> b!6553614 m!7335980))

(declare-fun m!7335982 () Bool)

(assert (=> b!6553615 m!7335982))

(declare-fun m!7335984 () Bool)

(assert (=> bm!569987 m!7335984))

(assert (=> b!6553405 d!2056602))

(declare-fun b!6553638 () Bool)

(declare-fun e!3967713 () (Set Context!11624))

(declare-fun call!570008 () (Set Context!11624))

(assert (=> b!6553638 (= e!3967713 call!570008)))

(declare-fun b!6553639 () Bool)

(declare-fun e!3967710 () (Set Context!11624))

(declare-fun e!3967711 () (Set Context!11624))

(assert (=> b!6553639 (= e!3967710 e!3967711)))

(declare-fun c!1203911 () Bool)

(assert (=> b!6553639 (= c!1203911 (is-Concat!25273 (h!71907 (exprs!6312 (h!71909 zl!343)))))))

(declare-fun bm!570000 () Bool)

(declare-fun call!570010 () (Set Context!11624))

(assert (=> bm!570000 (= call!570008 call!570010)))

(declare-fun d!2056604 () Bool)

(declare-fun c!1203915 () Bool)

(assert (=> d!2056604 (= c!1203915 (and (is-ElementMatch!16428 (h!71907 (exprs!6312 (h!71909 zl!343)))) (= (c!1203875 (h!71907 (exprs!6312 (h!71909 zl!343)))) (h!71908 s!2326))))))

(declare-fun e!3967709 () (Set Context!11624))

(assert (=> d!2056604 (= (derivationStepZipperDown!1676 (h!71907 (exprs!6312 (h!71909 zl!343))) lt!2403308 (h!71908 s!2326)) e!3967709)))

(declare-fun b!6553640 () Bool)

(assert (=> b!6553640 (= e!3967713 (as set.empty (Set Context!11624)))))

(declare-fun bm!570001 () Bool)

(declare-fun call!570006 () (Set Context!11624))

(declare-fun c!1203913 () Bool)

(declare-fun call!570005 () List!65583)

(assert (=> bm!570001 (= call!570006 (derivationStepZipperDown!1676 (ite c!1203913 (regOne!33369 (h!71907 (exprs!6312 (h!71909 zl!343)))) (regOne!33368 (h!71907 (exprs!6312 (h!71909 zl!343))))) (ite c!1203913 lt!2403308 (Context!11625 call!570005)) (h!71908 s!2326)))))

(declare-fun b!6553641 () Bool)

(declare-fun c!1203912 () Bool)

(assert (=> b!6553641 (= c!1203912 (is-Star!16428 (h!71907 (exprs!6312 (h!71909 zl!343)))))))

(assert (=> b!6553641 (= e!3967711 e!3967713)))

(declare-fun b!6553642 () Bool)

(declare-fun e!3967712 () (Set Context!11624))

(declare-fun call!570007 () (Set Context!11624))

(assert (=> b!6553642 (= e!3967712 (set.union call!570006 call!570007))))

(declare-fun b!6553643 () Bool)

(assert (=> b!6553643 (= e!3967711 call!570008)))

(declare-fun b!6553644 () Bool)

(declare-fun e!3967708 () Bool)

(assert (=> b!6553644 (= e!3967708 (nullable!6421 (regOne!33368 (h!71907 (exprs!6312 (h!71909 zl!343))))))))

(declare-fun b!6553645 () Bool)

(declare-fun c!1203914 () Bool)

(assert (=> b!6553645 (= c!1203914 e!3967708)))

(declare-fun res!2688863 () Bool)

(assert (=> b!6553645 (=> (not res!2688863) (not e!3967708))))

(assert (=> b!6553645 (= res!2688863 (is-Concat!25273 (h!71907 (exprs!6312 (h!71909 zl!343)))))))

(assert (=> b!6553645 (= e!3967712 e!3967710)))

(declare-fun b!6553646 () Bool)

(assert (=> b!6553646 (= e!3967710 (set.union call!570006 call!570010))))

(declare-fun bm!570002 () Bool)

(declare-fun $colon$colon!2269 (List!65583 Regex!16428) List!65583)

(assert (=> bm!570002 (= call!570005 ($colon$colon!2269 (exprs!6312 lt!2403308) (ite (or c!1203914 c!1203911) (regTwo!33368 (h!71907 (exprs!6312 (h!71909 zl!343)))) (h!71907 (exprs!6312 (h!71909 zl!343))))))))

(declare-fun b!6553647 () Bool)

(assert (=> b!6553647 (= e!3967709 (set.insert lt!2403308 (as set.empty (Set Context!11624))))))

(declare-fun b!6553648 () Bool)

(assert (=> b!6553648 (= e!3967709 e!3967712)))

(assert (=> b!6553648 (= c!1203913 (is-Union!16428 (h!71907 (exprs!6312 (h!71909 zl!343)))))))

(declare-fun bm!570003 () Bool)

(declare-fun call!570009 () List!65583)

(assert (=> bm!570003 (= call!570009 call!570005)))

(declare-fun bm!570004 () Bool)

(assert (=> bm!570004 (= call!570007 (derivationStepZipperDown!1676 (ite c!1203913 (regTwo!33369 (h!71907 (exprs!6312 (h!71909 zl!343)))) (ite c!1203914 (regTwo!33368 (h!71907 (exprs!6312 (h!71909 zl!343)))) (ite c!1203911 (regOne!33368 (h!71907 (exprs!6312 (h!71909 zl!343)))) (reg!16757 (h!71907 (exprs!6312 (h!71909 zl!343))))))) (ite (or c!1203913 c!1203914) lt!2403308 (Context!11625 call!570009)) (h!71908 s!2326)))))

(declare-fun bm!570005 () Bool)

(assert (=> bm!570005 (= call!570010 call!570007)))

(assert (= (and d!2056604 c!1203915) b!6553647))

(assert (= (and d!2056604 (not c!1203915)) b!6553648))

(assert (= (and b!6553648 c!1203913) b!6553642))

(assert (= (and b!6553648 (not c!1203913)) b!6553645))

(assert (= (and b!6553645 res!2688863) b!6553644))

(assert (= (and b!6553645 c!1203914) b!6553646))

(assert (= (and b!6553645 (not c!1203914)) b!6553639))

(assert (= (and b!6553639 c!1203911) b!6553643))

(assert (= (and b!6553639 (not c!1203911)) b!6553641))

(assert (= (and b!6553641 c!1203912) b!6553638))

(assert (= (and b!6553641 (not c!1203912)) b!6553640))

(assert (= (or b!6553643 b!6553638) bm!570003))

(assert (= (or b!6553643 b!6553638) bm!570000))

(assert (= (or b!6553646 bm!570003) bm!570002))

(assert (= (or b!6553646 bm!570000) bm!570005))

(assert (= (or b!6553642 bm!570005) bm!570004))

(assert (= (or b!6553642 b!6553646) bm!570001))

(declare-fun m!7335986 () Bool)

(assert (=> bm!570004 m!7335986))

(declare-fun m!7335988 () Bool)

(assert (=> b!6553644 m!7335988))

(declare-fun m!7335990 () Bool)

(assert (=> bm!570001 m!7335990))

(declare-fun m!7335992 () Bool)

(assert (=> b!6553647 m!7335992))

(declare-fun m!7335994 () Bool)

(assert (=> bm!570002 m!7335994))

(assert (=> b!6553405 d!2056604))

(declare-fun d!2056606 () Bool)

(declare-fun c!1203916 () Bool)

(declare-fun e!3967714 () Bool)

(assert (=> d!2056606 (= c!1203916 e!3967714)))

(declare-fun res!2688864 () Bool)

(assert (=> d!2056606 (=> (not res!2688864) (not e!3967714))))

(assert (=> d!2056606 (= res!2688864 (is-Cons!65459 (exprs!6312 (Context!11625 (Cons!65459 (h!71907 (exprs!6312 (h!71909 zl!343))) (t!379225 (exprs!6312 (h!71909 zl!343))))))))))

(declare-fun e!3967715 () (Set Context!11624))

(assert (=> d!2056606 (= (derivationStepZipperUp!1602 (Context!11625 (Cons!65459 (h!71907 (exprs!6312 (h!71909 zl!343))) (t!379225 (exprs!6312 (h!71909 zl!343))))) (h!71908 s!2326)) e!3967715)))

(declare-fun b!6553649 () Bool)

(declare-fun e!3967716 () (Set Context!11624))

(declare-fun call!570011 () (Set Context!11624))

(assert (=> b!6553649 (= e!3967716 call!570011)))

(declare-fun b!6553650 () Bool)

(assert (=> b!6553650 (= e!3967716 (as set.empty (Set Context!11624)))))

(declare-fun b!6553651 () Bool)

(assert (=> b!6553651 (= e!3967715 e!3967716)))

(declare-fun c!1203917 () Bool)

(assert (=> b!6553651 (= c!1203917 (is-Cons!65459 (exprs!6312 (Context!11625 (Cons!65459 (h!71907 (exprs!6312 (h!71909 zl!343))) (t!379225 (exprs!6312 (h!71909 zl!343))))))))))

(declare-fun b!6553652 () Bool)

(assert (=> b!6553652 (= e!3967715 (set.union call!570011 (derivationStepZipperUp!1602 (Context!11625 (t!379225 (exprs!6312 (Context!11625 (Cons!65459 (h!71907 (exprs!6312 (h!71909 zl!343))) (t!379225 (exprs!6312 (h!71909 zl!343)))))))) (h!71908 s!2326))))))

(declare-fun b!6553653 () Bool)

(assert (=> b!6553653 (= e!3967714 (nullable!6421 (h!71907 (exprs!6312 (Context!11625 (Cons!65459 (h!71907 (exprs!6312 (h!71909 zl!343))) (t!379225 (exprs!6312 (h!71909 zl!343)))))))))))

(declare-fun bm!570006 () Bool)

(assert (=> bm!570006 (= call!570011 (derivationStepZipperDown!1676 (h!71907 (exprs!6312 (Context!11625 (Cons!65459 (h!71907 (exprs!6312 (h!71909 zl!343))) (t!379225 (exprs!6312 (h!71909 zl!343))))))) (Context!11625 (t!379225 (exprs!6312 (Context!11625 (Cons!65459 (h!71907 (exprs!6312 (h!71909 zl!343))) (t!379225 (exprs!6312 (h!71909 zl!343)))))))) (h!71908 s!2326)))))

(assert (= (and d!2056606 res!2688864) b!6553653))

(assert (= (and d!2056606 c!1203916) b!6553652))

(assert (= (and d!2056606 (not c!1203916)) b!6553651))

(assert (= (and b!6553651 c!1203917) b!6553649))

(assert (= (and b!6553651 (not c!1203917)) b!6553650))

(assert (= (or b!6553652 b!6553649) bm!570006))

(declare-fun m!7335996 () Bool)

(assert (=> b!6553652 m!7335996))

(declare-fun m!7335998 () Bool)

(assert (=> b!6553653 m!7335998))

(declare-fun m!7336000 () Bool)

(assert (=> bm!570006 m!7336000))

(assert (=> b!6553405 d!2056606))

(declare-fun d!2056608 () Bool)

(declare-fun nullableFct!2347 (Regex!16428) Bool)

(assert (=> d!2056608 (= (nullable!6421 (h!71907 (exprs!6312 (h!71909 zl!343)))) (nullableFct!2347 (h!71907 (exprs!6312 (h!71909 zl!343)))))))

(declare-fun bs!1672776 () Bool)

(assert (= bs!1672776 d!2056608))

(declare-fun m!7336002 () Bool)

(assert (=> bs!1672776 m!7336002))

(assert (=> b!6553405 d!2056608))

(declare-fun d!2056610 () Bool)

(declare-fun choose!48791 ((Set Context!11624) Int) (Set Context!11624))

(assert (=> d!2056610 (= (flatMap!1933 z!1189 lambda!364126) (choose!48791 z!1189 lambda!364126))))

(declare-fun bs!1672777 () Bool)

(assert (= bs!1672777 d!2056610))

(declare-fun m!7336004 () Bool)

(assert (=> bs!1672777 m!7336004))

(assert (=> b!6553405 d!2056610))

(declare-fun d!2056612 () Bool)

(declare-fun dynLambda!26028 (Int Context!11624) (Set Context!11624))

(assert (=> d!2056612 (= (flatMap!1933 z!1189 lambda!364126) (dynLambda!26028 lambda!364126 (h!71909 zl!343)))))

(declare-fun lt!2403499 () Unit!159047)

(declare-fun choose!48792 ((Set Context!11624) Context!11624 Int) Unit!159047)

(assert (=> d!2056612 (= lt!2403499 (choose!48792 z!1189 (h!71909 zl!343) lambda!364126))))

(assert (=> d!2056612 (= z!1189 (set.insert (h!71909 zl!343) (as set.empty (Set Context!11624))))))

(assert (=> d!2056612 (= (lemmaFlatMapOnSingletonSet!1459 z!1189 (h!71909 zl!343) lambda!364126) lt!2403499)))

(declare-fun b_lambda!248001 () Bool)

(assert (=> (not b_lambda!248001) (not d!2056612)))

(declare-fun bs!1672778 () Bool)

(assert (= bs!1672778 d!2056612))

(assert (=> bs!1672778 m!7335608))

(declare-fun m!7336006 () Bool)

(assert (=> bs!1672778 m!7336006))

(declare-fun m!7336008 () Bool)

(assert (=> bs!1672778 m!7336008))

(declare-fun m!7336010 () Bool)

(assert (=> bs!1672778 m!7336010))

(assert (=> b!6553405 d!2056612))

(declare-fun d!2056614 () Bool)

(declare-fun c!1203918 () Bool)

(declare-fun e!3967717 () Bool)

(assert (=> d!2056614 (= c!1203918 e!3967717)))

(declare-fun res!2688865 () Bool)

(assert (=> d!2056614 (=> (not res!2688865) (not e!3967717))))

(assert (=> d!2056614 (= res!2688865 (is-Cons!65459 (exprs!6312 (h!71909 zl!343))))))

(declare-fun e!3967718 () (Set Context!11624))

(assert (=> d!2056614 (= (derivationStepZipperUp!1602 (h!71909 zl!343) (h!71908 s!2326)) e!3967718)))

(declare-fun b!6553654 () Bool)

(declare-fun e!3967719 () (Set Context!11624))

(declare-fun call!570012 () (Set Context!11624))

(assert (=> b!6553654 (= e!3967719 call!570012)))

(declare-fun b!6553655 () Bool)

(assert (=> b!6553655 (= e!3967719 (as set.empty (Set Context!11624)))))

(declare-fun b!6553656 () Bool)

(assert (=> b!6553656 (= e!3967718 e!3967719)))

(declare-fun c!1203919 () Bool)

(assert (=> b!6553656 (= c!1203919 (is-Cons!65459 (exprs!6312 (h!71909 zl!343))))))

(declare-fun b!6553657 () Bool)

(assert (=> b!6553657 (= e!3967718 (set.union call!570012 (derivationStepZipperUp!1602 (Context!11625 (t!379225 (exprs!6312 (h!71909 zl!343)))) (h!71908 s!2326))))))

(declare-fun b!6553658 () Bool)

(assert (=> b!6553658 (= e!3967717 (nullable!6421 (h!71907 (exprs!6312 (h!71909 zl!343)))))))

(declare-fun bm!570007 () Bool)

(assert (=> bm!570007 (= call!570012 (derivationStepZipperDown!1676 (h!71907 (exprs!6312 (h!71909 zl!343))) (Context!11625 (t!379225 (exprs!6312 (h!71909 zl!343)))) (h!71908 s!2326)))))

(assert (= (and d!2056614 res!2688865) b!6553658))

(assert (= (and d!2056614 c!1203918) b!6553657))

(assert (= (and d!2056614 (not c!1203918)) b!6553656))

(assert (= (and b!6553656 c!1203919) b!6553654))

(assert (= (and b!6553656 (not c!1203919)) b!6553655))

(assert (= (or b!6553657 b!6553654) bm!570007))

(declare-fun m!7336012 () Bool)

(assert (=> b!6553657 m!7336012))

(assert (=> b!6553658 m!7335612))

(declare-fun m!7336014 () Bool)

(assert (=> bm!570007 m!7336014))

(assert (=> b!6553405 d!2056614))

(declare-fun bs!1672779 () Bool)

(declare-fun b!6553699 () Bool)

(assert (= bs!1672779 (and b!6553699 b!6553411)))

(declare-fun lambda!364170 () Int)

(assert (=> bs!1672779 (not (= lambda!364170 lambda!364124))))

(assert (=> bs!1672779 (not (= lambda!364170 lambda!364125))))

(declare-fun bs!1672780 () Bool)

(assert (= bs!1672780 (and b!6553699 b!6553399)))

(assert (=> bs!1672780 (not (= lambda!364170 lambda!364129))))

(assert (=> bs!1672780 (not (= lambda!364170 lambda!364130))))

(assert (=> b!6553699 true))

(assert (=> b!6553699 true))

(declare-fun bs!1672781 () Bool)

(declare-fun b!6553700 () Bool)

(assert (= bs!1672781 (and b!6553700 b!6553411)))

(declare-fun lambda!364171 () Int)

(assert (=> bs!1672781 (not (= lambda!364171 lambda!364124))))

(declare-fun bs!1672782 () Bool)

(assert (= bs!1672782 (and b!6553700 b!6553399)))

(assert (=> bs!1672782 (not (= lambda!364171 lambda!364129))))

(assert (=> bs!1672782 (= (= (regOne!33368 r!7292) lt!2403289) (= lambda!364171 lambda!364130))))

(declare-fun bs!1672783 () Bool)

(assert (= bs!1672783 (and b!6553700 b!6553699)))

(assert (=> bs!1672783 (not (= lambda!364171 lambda!364170))))

(assert (=> bs!1672781 (= lambda!364171 lambda!364125)))

(assert (=> b!6553700 true))

(assert (=> b!6553700 true))

(declare-fun b!6553691 () Bool)

(declare-fun e!3967741 () Bool)

(declare-fun e!3967742 () Bool)

(assert (=> b!6553691 (= e!3967741 e!3967742)))

(declare-fun c!1203930 () Bool)

(assert (=> b!6553691 (= c!1203930 (is-Star!16428 r!7292))))

(declare-fun call!570018 () Bool)

(declare-fun bm!570013 () Bool)

(assert (=> bm!570013 (= call!570018 (Exists!3498 (ite c!1203930 lambda!364170 lambda!364171)))))

(declare-fun b!6553692 () Bool)

(declare-fun res!2688883 () Bool)

(declare-fun e!3967744 () Bool)

(assert (=> b!6553692 (=> res!2688883 e!3967744)))

(declare-fun call!570017 () Bool)

(assert (=> b!6553692 (= res!2688883 call!570017)))

(assert (=> b!6553692 (= e!3967742 e!3967744)))

(declare-fun b!6553693 () Bool)

(declare-fun e!3967739 () Bool)

(assert (=> b!6553693 (= e!3967739 (= s!2326 (Cons!65460 (c!1203875 r!7292) Nil!65460)))))

(declare-fun b!6553694 () Bool)

(declare-fun e!3967738 () Bool)

(declare-fun e!3967743 () Bool)

(assert (=> b!6553694 (= e!3967738 e!3967743)))

(declare-fun res!2688885 () Bool)

(assert (=> b!6553694 (= res!2688885 (not (is-EmptyLang!16428 r!7292)))))

(assert (=> b!6553694 (=> (not res!2688885) (not e!3967743))))

(declare-fun b!6553695 () Bool)

(declare-fun c!1203931 () Bool)

(assert (=> b!6553695 (= c!1203931 (is-ElementMatch!16428 r!7292))))

(assert (=> b!6553695 (= e!3967743 e!3967739)))

(declare-fun b!6553696 () Bool)

(declare-fun c!1203929 () Bool)

(assert (=> b!6553696 (= c!1203929 (is-Union!16428 r!7292))))

(assert (=> b!6553696 (= e!3967739 e!3967741)))

(declare-fun b!6553697 () Bool)

(assert (=> b!6553697 (= e!3967738 call!570017)))

(declare-fun d!2056616 () Bool)

(declare-fun c!1203928 () Bool)

(assert (=> d!2056616 (= c!1203928 (is-EmptyExpr!16428 r!7292))))

(assert (=> d!2056616 (= (matchRSpec!3529 r!7292 s!2326) e!3967738)))

(declare-fun bm!570012 () Bool)

(assert (=> bm!570012 (= call!570017 (isEmpty!37695 s!2326))))

(declare-fun b!6553698 () Bool)

(declare-fun e!3967740 () Bool)

(assert (=> b!6553698 (= e!3967740 (matchRSpec!3529 (regTwo!33369 r!7292) s!2326))))

(assert (=> b!6553699 (= e!3967744 call!570018)))

(assert (=> b!6553700 (= e!3967742 call!570018)))

(declare-fun b!6553701 () Bool)

(assert (=> b!6553701 (= e!3967741 e!3967740)))

(declare-fun res!2688884 () Bool)

(assert (=> b!6553701 (= res!2688884 (matchRSpec!3529 (regOne!33369 r!7292) s!2326))))

(assert (=> b!6553701 (=> res!2688884 e!3967740)))

(assert (= (and d!2056616 c!1203928) b!6553697))

(assert (= (and d!2056616 (not c!1203928)) b!6553694))

(assert (= (and b!6553694 res!2688885) b!6553695))

(assert (= (and b!6553695 c!1203931) b!6553693))

(assert (= (and b!6553695 (not c!1203931)) b!6553696))

(assert (= (and b!6553696 c!1203929) b!6553701))

(assert (= (and b!6553696 (not c!1203929)) b!6553691))

(assert (= (and b!6553701 (not res!2688884)) b!6553698))

(assert (= (and b!6553691 c!1203930) b!6553692))

(assert (= (and b!6553691 (not c!1203930)) b!6553700))

(assert (= (and b!6553692 (not res!2688883)) b!6553699))

(assert (= (or b!6553699 b!6553700) bm!570013))

(assert (= (or b!6553697 b!6553692) bm!570012))

(declare-fun m!7336016 () Bool)

(assert (=> bm!570013 m!7336016))

(assert (=> bm!570012 m!7335968))

(declare-fun m!7336018 () Bool)

(assert (=> b!6553698 m!7336018))

(declare-fun m!7336020 () Bool)

(assert (=> b!6553701 m!7336020))

(assert (=> b!6553382 d!2056616))

(declare-fun b!6553730 () Bool)

(declare-fun e!3967762 () Bool)

(declare-fun e!3967763 () Bool)

(assert (=> b!6553730 (= e!3967762 e!3967763)))

(declare-fun res!2688908 () Bool)

(assert (=> b!6553730 (=> (not res!2688908) (not e!3967763))))

(declare-fun lt!2403502 () Bool)

(assert (=> b!6553730 (= res!2688908 (not lt!2403502))))

(declare-fun bm!570016 () Bool)

(declare-fun call!570021 () Bool)

(assert (=> bm!570016 (= call!570021 (isEmpty!37695 s!2326))))

(declare-fun d!2056618 () Bool)

(declare-fun e!3967761 () Bool)

(assert (=> d!2056618 e!3967761))

(declare-fun c!1203938 () Bool)

(assert (=> d!2056618 (= c!1203938 (is-EmptyExpr!16428 r!7292))))

(declare-fun e!3967765 () Bool)

(assert (=> d!2056618 (= lt!2403502 e!3967765)))

(declare-fun c!1203939 () Bool)

(assert (=> d!2056618 (= c!1203939 (isEmpty!37695 s!2326))))

(assert (=> d!2056618 (validRegex!8164 r!7292)))

(assert (=> d!2056618 (= (matchR!8611 r!7292 s!2326) lt!2403502)))

(declare-fun b!6553731 () Bool)

(assert (=> b!6553731 (= e!3967765 (nullable!6421 r!7292))))

(declare-fun b!6553732 () Bool)

(declare-fun e!3967764 () Bool)

(assert (=> b!6553732 (= e!3967764 (= (head!13307 s!2326) (c!1203875 r!7292)))))

(declare-fun b!6553733 () Bool)

(declare-fun e!3967759 () Bool)

(assert (=> b!6553733 (= e!3967759 (not lt!2403502))))

(declare-fun b!6553734 () Bool)

(declare-fun res!2688909 () Bool)

(assert (=> b!6553734 (=> res!2688909 e!3967762)))

(assert (=> b!6553734 (= res!2688909 (not (is-ElementMatch!16428 r!7292)))))

(assert (=> b!6553734 (= e!3967759 e!3967762)))

(declare-fun b!6553735 () Bool)

(assert (=> b!6553735 (= e!3967761 e!3967759)))

(declare-fun c!1203940 () Bool)

(assert (=> b!6553735 (= c!1203940 (is-EmptyLang!16428 r!7292))))

(declare-fun b!6553736 () Bool)

(declare-fun res!2688902 () Bool)

(declare-fun e!3967760 () Bool)

(assert (=> b!6553736 (=> res!2688902 e!3967760)))

(assert (=> b!6553736 (= res!2688902 (not (isEmpty!37695 (tail!12392 s!2326))))))

(declare-fun b!6553737 () Bool)

(assert (=> b!6553737 (= e!3967760 (not (= (head!13307 s!2326) (c!1203875 r!7292))))))

(declare-fun b!6553738 () Bool)

(declare-fun res!2688906 () Bool)

(assert (=> b!6553738 (=> (not res!2688906) (not e!3967764))))

(assert (=> b!6553738 (= res!2688906 (isEmpty!37695 (tail!12392 s!2326)))))

(declare-fun b!6553739 () Bool)

(assert (=> b!6553739 (= e!3967761 (= lt!2403502 call!570021))))

(declare-fun b!6553740 () Bool)

(declare-fun derivativeStep!5112 (Regex!16428 C!33126) Regex!16428)

(assert (=> b!6553740 (= e!3967765 (matchR!8611 (derivativeStep!5112 r!7292 (head!13307 s!2326)) (tail!12392 s!2326)))))

(declare-fun b!6553741 () Bool)

(assert (=> b!6553741 (= e!3967763 e!3967760)))

(declare-fun res!2688903 () Bool)

(assert (=> b!6553741 (=> res!2688903 e!3967760)))

(assert (=> b!6553741 (= res!2688903 call!570021)))

(declare-fun b!6553742 () Bool)

(declare-fun res!2688905 () Bool)

(assert (=> b!6553742 (=> (not res!2688905) (not e!3967764))))

(assert (=> b!6553742 (= res!2688905 (not call!570021))))

(declare-fun b!6553743 () Bool)

(declare-fun res!2688907 () Bool)

(assert (=> b!6553743 (=> res!2688907 e!3967762)))

(assert (=> b!6553743 (= res!2688907 e!3967764)))

(declare-fun res!2688904 () Bool)

(assert (=> b!6553743 (=> (not res!2688904) (not e!3967764))))

(assert (=> b!6553743 (= res!2688904 lt!2403502)))

(assert (= (and d!2056618 c!1203939) b!6553731))

(assert (= (and d!2056618 (not c!1203939)) b!6553740))

(assert (= (and d!2056618 c!1203938) b!6553739))

(assert (= (and d!2056618 (not c!1203938)) b!6553735))

(assert (= (and b!6553735 c!1203940) b!6553733))

(assert (= (and b!6553735 (not c!1203940)) b!6553734))

(assert (= (and b!6553734 (not res!2688909)) b!6553743))

(assert (= (and b!6553743 res!2688904) b!6553742))

(assert (= (and b!6553742 res!2688905) b!6553738))

(assert (= (and b!6553738 res!2688906) b!6553732))

(assert (= (and b!6553743 (not res!2688907)) b!6553730))

(assert (= (and b!6553730 res!2688908) b!6553741))

(assert (= (and b!6553741 (not res!2688903)) b!6553736))

(assert (= (and b!6553736 (not res!2688902)) b!6553737))

(assert (= (or b!6553739 b!6553741 b!6553742) bm!570016))

(assert (=> b!6553740 m!7335972))

(assert (=> b!6553740 m!7335972))

(declare-fun m!7336022 () Bool)

(assert (=> b!6553740 m!7336022))

(assert (=> b!6553740 m!7335976))

(assert (=> b!6553740 m!7336022))

(assert (=> b!6553740 m!7335976))

(declare-fun m!7336024 () Bool)

(assert (=> b!6553740 m!7336024))

(assert (=> b!6553736 m!7335976))

(assert (=> b!6553736 m!7335976))

(declare-fun m!7336026 () Bool)

(assert (=> b!6553736 m!7336026))

(assert (=> b!6553732 m!7335972))

(assert (=> d!2056618 m!7335968))

(assert (=> d!2056618 m!7335772))

(assert (=> b!6553737 m!7335972))

(assert (=> bm!570016 m!7335968))

(declare-fun m!7336028 () Bool)

(assert (=> b!6553731 m!7336028))

(assert (=> b!6553738 m!7335976))

(assert (=> b!6553738 m!7335976))

(assert (=> b!6553738 m!7336026))

(assert (=> b!6553382 d!2056618))

(declare-fun d!2056620 () Bool)

(assert (=> d!2056620 (= (matchR!8611 r!7292 s!2326) (matchRSpec!3529 r!7292 s!2326))))

(declare-fun lt!2403505 () Unit!159047)

(declare-fun choose!48793 (Regex!16428 List!65584) Unit!159047)

(assert (=> d!2056620 (= lt!2403505 (choose!48793 r!7292 s!2326))))

(assert (=> d!2056620 (validRegex!8164 r!7292)))

(assert (=> d!2056620 (= (mainMatchTheorem!3529 r!7292 s!2326) lt!2403505)))

(declare-fun bs!1672784 () Bool)

(assert (= bs!1672784 d!2056620))

(assert (=> bs!1672784 m!7335654))

(assert (=> bs!1672784 m!7335652))

(declare-fun m!7336030 () Bool)

(assert (=> bs!1672784 m!7336030))

(assert (=> bs!1672784 m!7335772))

(assert (=> b!6553382 d!2056620))

(declare-fun d!2056622 () Bool)

(declare-fun c!1203941 () Bool)

(declare-fun e!3967766 () Bool)

(assert (=> d!2056622 (= c!1203941 e!3967766)))

(declare-fun res!2688910 () Bool)

(assert (=> d!2056622 (=> (not res!2688910) (not e!3967766))))

(assert (=> d!2056622 (= res!2688910 (is-Cons!65459 (exprs!6312 lt!2403313)))))

(declare-fun e!3967767 () (Set Context!11624))

(assert (=> d!2056622 (= (derivationStepZipperUp!1602 lt!2403313 (h!71908 s!2326)) e!3967767)))

(declare-fun b!6553744 () Bool)

(declare-fun e!3967768 () (Set Context!11624))

(declare-fun call!570022 () (Set Context!11624))

(assert (=> b!6553744 (= e!3967768 call!570022)))

(declare-fun b!6553745 () Bool)

(assert (=> b!6553745 (= e!3967768 (as set.empty (Set Context!11624)))))

(declare-fun b!6553746 () Bool)

(assert (=> b!6553746 (= e!3967767 e!3967768)))

(declare-fun c!1203942 () Bool)

(assert (=> b!6553746 (= c!1203942 (is-Cons!65459 (exprs!6312 lt!2403313)))))

(declare-fun b!6553747 () Bool)

(assert (=> b!6553747 (= e!3967767 (set.union call!570022 (derivationStepZipperUp!1602 (Context!11625 (t!379225 (exprs!6312 lt!2403313))) (h!71908 s!2326))))))

(declare-fun b!6553748 () Bool)

(assert (=> b!6553748 (= e!3967766 (nullable!6421 (h!71907 (exprs!6312 lt!2403313))))))

(declare-fun bm!570017 () Bool)

(assert (=> bm!570017 (= call!570022 (derivationStepZipperDown!1676 (h!71907 (exprs!6312 lt!2403313)) (Context!11625 (t!379225 (exprs!6312 lt!2403313))) (h!71908 s!2326)))))

(assert (= (and d!2056622 res!2688910) b!6553748))

(assert (= (and d!2056622 c!1203941) b!6553747))

(assert (= (and d!2056622 (not c!1203941)) b!6553746))

(assert (= (and b!6553746 c!1203942) b!6553744))

(assert (= (and b!6553746 (not c!1203942)) b!6553745))

(assert (= (or b!6553747 b!6553744) bm!570017))

(declare-fun m!7336032 () Bool)

(assert (=> b!6553747 m!7336032))

(declare-fun m!7336034 () Bool)

(assert (=> b!6553748 m!7336034))

(declare-fun m!7336036 () Bool)

(assert (=> bm!570017 m!7336036))

(assert (=> b!6553404 d!2056622))

(declare-fun d!2056624 () Bool)

(declare-fun lt!2403508 () Regex!16428)

(assert (=> d!2056624 (validRegex!8164 lt!2403508)))

(assert (=> d!2056624 (= lt!2403508 (generalisedUnion!2272 (unfocusZipperList!1849 lt!2403279)))))

(assert (=> d!2056624 (= (unfocusZipper!2170 lt!2403279) lt!2403508)))

(declare-fun bs!1672785 () Bool)

(assert (= bs!1672785 d!2056624))

(declare-fun m!7336038 () Bool)

(assert (=> bs!1672785 m!7336038))

(declare-fun m!7336040 () Bool)

(assert (=> bs!1672785 m!7336040))

(assert (=> bs!1672785 m!7336040))

(declare-fun m!7336042 () Bool)

(assert (=> bs!1672785 m!7336042))

(assert (=> b!6553404 d!2056624))

(declare-fun d!2056626 () Bool)

(assert (=> d!2056626 (= (flatMap!1933 lt!2403293 lambda!364126) (choose!48791 lt!2403293 lambda!364126))))

(declare-fun bs!1672786 () Bool)

(assert (= bs!1672786 d!2056626))

(declare-fun m!7336044 () Bool)

(assert (=> bs!1672786 m!7336044))

(assert (=> b!6553404 d!2056626))

(declare-fun d!2056628 () Bool)

(declare-fun c!1203943 () Bool)

(declare-fun e!3967769 () Bool)

(assert (=> d!2056628 (= c!1203943 e!3967769)))

(declare-fun res!2688911 () Bool)

(assert (=> d!2056628 (=> (not res!2688911) (not e!3967769))))

(assert (=> d!2056628 (= res!2688911 (is-Cons!65459 (exprs!6312 lt!2403261)))))

(declare-fun e!3967770 () (Set Context!11624))

(assert (=> d!2056628 (= (derivationStepZipperUp!1602 lt!2403261 (h!71908 s!2326)) e!3967770)))

(declare-fun b!6553749 () Bool)

(declare-fun e!3967771 () (Set Context!11624))

(declare-fun call!570023 () (Set Context!11624))

(assert (=> b!6553749 (= e!3967771 call!570023)))

(declare-fun b!6553750 () Bool)

(assert (=> b!6553750 (= e!3967771 (as set.empty (Set Context!11624)))))

(declare-fun b!6553751 () Bool)

(assert (=> b!6553751 (= e!3967770 e!3967771)))

(declare-fun c!1203944 () Bool)

(assert (=> b!6553751 (= c!1203944 (is-Cons!65459 (exprs!6312 lt!2403261)))))

(declare-fun b!6553752 () Bool)

(assert (=> b!6553752 (= e!3967770 (set.union call!570023 (derivationStepZipperUp!1602 (Context!11625 (t!379225 (exprs!6312 lt!2403261))) (h!71908 s!2326))))))

(declare-fun b!6553753 () Bool)

(assert (=> b!6553753 (= e!3967769 (nullable!6421 (h!71907 (exprs!6312 lt!2403261))))))

(declare-fun bm!570018 () Bool)

(assert (=> bm!570018 (= call!570023 (derivationStepZipperDown!1676 (h!71907 (exprs!6312 lt!2403261)) (Context!11625 (t!379225 (exprs!6312 lt!2403261))) (h!71908 s!2326)))))

(assert (= (and d!2056628 res!2688911) b!6553753))

(assert (= (and d!2056628 c!1203943) b!6553752))

(assert (= (and d!2056628 (not c!1203943)) b!6553751))

(assert (= (and b!6553751 c!1203944) b!6553749))

(assert (= (and b!6553751 (not c!1203944)) b!6553750))

(assert (= (or b!6553752 b!6553749) bm!570018))

(declare-fun m!7336046 () Bool)

(assert (=> b!6553752 m!7336046))

(declare-fun m!7336048 () Bool)

(assert (=> b!6553753 m!7336048))

(declare-fun m!7336050 () Bool)

(assert (=> bm!570018 m!7336050))

(assert (=> b!6553404 d!2056628))

(declare-fun d!2056630 () Bool)

(assert (=> d!2056630 (= (flatMap!1933 lt!2403260 lambda!364126) (dynLambda!26028 lambda!364126 lt!2403261))))

(declare-fun lt!2403509 () Unit!159047)

(assert (=> d!2056630 (= lt!2403509 (choose!48792 lt!2403260 lt!2403261 lambda!364126))))

(assert (=> d!2056630 (= lt!2403260 (set.insert lt!2403261 (as set.empty (Set Context!11624))))))

(assert (=> d!2056630 (= (lemmaFlatMapOnSingletonSet!1459 lt!2403260 lt!2403261 lambda!364126) lt!2403509)))

(declare-fun b_lambda!248003 () Bool)

(assert (=> (not b_lambda!248003) (not d!2056630)))

(declare-fun bs!1672787 () Bool)

(assert (= bs!1672787 d!2056630))

(assert (=> bs!1672787 m!7335702))

(declare-fun m!7336052 () Bool)

(assert (=> bs!1672787 m!7336052))

(declare-fun m!7336054 () Bool)

(assert (=> bs!1672787 m!7336054))

(assert (=> bs!1672787 m!7335692))

(assert (=> b!6553404 d!2056630))

(declare-fun d!2056632 () Bool)

(assert (=> d!2056632 (= (flatMap!1933 lt!2403260 lambda!364126) (choose!48791 lt!2403260 lambda!364126))))

(declare-fun bs!1672788 () Bool)

(assert (= bs!1672788 d!2056632))

(declare-fun m!7336056 () Bool)

(assert (=> bs!1672788 m!7336056))

(assert (=> b!6553404 d!2056632))

(declare-fun d!2056634 () Bool)

(assert (=> d!2056634 (= (flatMap!1933 lt!2403293 lambda!364126) (dynLambda!26028 lambda!364126 lt!2403313))))

(declare-fun lt!2403510 () Unit!159047)

(assert (=> d!2056634 (= lt!2403510 (choose!48792 lt!2403293 lt!2403313 lambda!364126))))

(assert (=> d!2056634 (= lt!2403293 (set.insert lt!2403313 (as set.empty (Set Context!11624))))))

(assert (=> d!2056634 (= (lemmaFlatMapOnSingletonSet!1459 lt!2403293 lt!2403313 lambda!364126) lt!2403510)))

(declare-fun b_lambda!248005 () Bool)

(assert (=> (not b_lambda!248005) (not d!2056634)))

(declare-fun bs!1672789 () Bool)

(assert (= bs!1672789 d!2056634))

(assert (=> bs!1672789 m!7335690))

(declare-fun m!7336058 () Bool)

(assert (=> bs!1672789 m!7336058))

(declare-fun m!7336060 () Bool)

(assert (=> bs!1672789 m!7336060))

(assert (=> bs!1672789 m!7335694))

(assert (=> b!6553404 d!2056634))

(declare-fun d!2056636 () Bool)

(declare-fun c!1203945 () Bool)

(assert (=> d!2056636 (= c!1203945 (isEmpty!37695 s!2326))))

(declare-fun e!3967772 () Bool)

(assert (=> d!2056636 (= (matchZipper!2440 z!1189 s!2326) e!3967772)))

(declare-fun b!6553754 () Bool)

(assert (=> b!6553754 (= e!3967772 (nullableZipper!2173 z!1189))))

(declare-fun b!6553755 () Bool)

(assert (=> b!6553755 (= e!3967772 (matchZipper!2440 (derivationStepZipper!2394 z!1189 (head!13307 s!2326)) (tail!12392 s!2326)))))

(assert (= (and d!2056636 c!1203945) b!6553754))

(assert (= (and d!2056636 (not c!1203945)) b!6553755))

(assert (=> d!2056636 m!7335968))

(declare-fun m!7336062 () Bool)

(assert (=> b!6553754 m!7336062))

(assert (=> b!6553755 m!7335972))

(assert (=> b!6553755 m!7335972))

(declare-fun m!7336064 () Bool)

(assert (=> b!6553755 m!7336064))

(assert (=> b!6553755 m!7335976))

(assert (=> b!6553755 m!7336064))

(assert (=> b!6553755 m!7335976))

(declare-fun m!7336066 () Bool)

(assert (=> b!6553755 m!7336066))

(assert (=> b!6553381 d!2056636))

(declare-fun bs!1672790 () Bool)

(declare-fun d!2056638 () Bool)

(assert (= bs!1672790 (and d!2056638 b!6553392)))

(declare-fun lambda!364174 () Int)

(assert (=> bs!1672790 (= lambda!364174 lambda!364128)))

(declare-fun b!6553776 () Bool)

(declare-fun e!3967790 () Bool)

(declare-fun lt!2403513 () Regex!16428)

(declare-fun head!13308 (List!65583) Regex!16428)

(assert (=> b!6553776 (= e!3967790 (= lt!2403513 (head!13308 (exprs!6312 (h!71909 zl!343)))))))

(declare-fun b!6553777 () Bool)

(declare-fun e!3967786 () Regex!16428)

(assert (=> b!6553777 (= e!3967786 (Concat!25273 (h!71907 (exprs!6312 (h!71909 zl!343))) (generalisedConcat!2025 (t!379225 (exprs!6312 (h!71909 zl!343))))))))

(declare-fun b!6553778 () Bool)

(declare-fun isConcat!1329 (Regex!16428) Bool)

(assert (=> b!6553778 (= e!3967790 (isConcat!1329 lt!2403513))))

(declare-fun b!6553779 () Bool)

(declare-fun e!3967788 () Regex!16428)

(assert (=> b!6553779 (= e!3967788 e!3967786)))

(declare-fun c!1203955 () Bool)

(assert (=> b!6553779 (= c!1203955 (is-Cons!65459 (exprs!6312 (h!71909 zl!343))))))

(declare-fun b!6553780 () Bool)

(declare-fun e!3967785 () Bool)

(assert (=> b!6553780 (= e!3967785 e!3967790)))

(declare-fun c!1203956 () Bool)

(declare-fun tail!12393 (List!65583) List!65583)

(assert (=> b!6553780 (= c!1203956 (isEmpty!37691 (tail!12393 (exprs!6312 (h!71909 zl!343)))))))

(declare-fun b!6553781 () Bool)

(declare-fun isEmptyExpr!1806 (Regex!16428) Bool)

(assert (=> b!6553781 (= e!3967785 (isEmptyExpr!1806 lt!2403513))))

(declare-fun e!3967789 () Bool)

(assert (=> d!2056638 e!3967789))

(declare-fun res!2688917 () Bool)

(assert (=> d!2056638 (=> (not res!2688917) (not e!3967789))))

(assert (=> d!2056638 (= res!2688917 (validRegex!8164 lt!2403513))))

(assert (=> d!2056638 (= lt!2403513 e!3967788)))

(declare-fun c!1203954 () Bool)

(declare-fun e!3967787 () Bool)

(assert (=> d!2056638 (= c!1203954 e!3967787)))

(declare-fun res!2688916 () Bool)

(assert (=> d!2056638 (=> (not res!2688916) (not e!3967787))))

(assert (=> d!2056638 (= res!2688916 (is-Cons!65459 (exprs!6312 (h!71909 zl!343))))))

(declare-fun forall!15600 (List!65583 Int) Bool)

(assert (=> d!2056638 (forall!15600 (exprs!6312 (h!71909 zl!343)) lambda!364174)))

(assert (=> d!2056638 (= (generalisedConcat!2025 (exprs!6312 (h!71909 zl!343))) lt!2403513)))

(declare-fun b!6553782 () Bool)

(assert (=> b!6553782 (= e!3967788 (h!71907 (exprs!6312 (h!71909 zl!343))))))

(declare-fun b!6553783 () Bool)

(assert (=> b!6553783 (= e!3967789 e!3967785)))

(declare-fun c!1203957 () Bool)

(assert (=> b!6553783 (= c!1203957 (isEmpty!37691 (exprs!6312 (h!71909 zl!343))))))

(declare-fun b!6553784 () Bool)

(assert (=> b!6553784 (= e!3967786 EmptyExpr!16428)))

(declare-fun b!6553785 () Bool)

(assert (=> b!6553785 (= e!3967787 (isEmpty!37691 (t!379225 (exprs!6312 (h!71909 zl!343)))))))

(assert (= (and d!2056638 res!2688916) b!6553785))

(assert (= (and d!2056638 c!1203954) b!6553782))

(assert (= (and d!2056638 (not c!1203954)) b!6553779))

(assert (= (and b!6553779 c!1203955) b!6553777))

(assert (= (and b!6553779 (not c!1203955)) b!6553784))

(assert (= (and d!2056638 res!2688917) b!6553783))

(assert (= (and b!6553783 c!1203957) b!6553781))

(assert (= (and b!6553783 (not c!1203957)) b!6553780))

(assert (= (and b!6553780 c!1203956) b!6553776))

(assert (= (and b!6553780 (not c!1203956)) b!6553778))

(declare-fun m!7336068 () Bool)

(assert (=> b!6553781 m!7336068))

(declare-fun m!7336070 () Bool)

(assert (=> b!6553780 m!7336070))

(assert (=> b!6553780 m!7336070))

(declare-fun m!7336072 () Bool)

(assert (=> b!6553780 m!7336072))

(declare-fun m!7336074 () Bool)

(assert (=> b!6553778 m!7336074))

(declare-fun m!7336076 () Bool)

(assert (=> b!6553777 m!7336076))

(declare-fun m!7336078 () Bool)

(assert (=> d!2056638 m!7336078))

(declare-fun m!7336080 () Bool)

(assert (=> d!2056638 m!7336080))

(assert (=> b!6553785 m!7335688))

(declare-fun m!7336082 () Bool)

(assert (=> b!6553776 m!7336082))

(declare-fun m!7336084 () Bool)

(assert (=> b!6553783 m!7336084))

(assert (=> b!6553402 d!2056638))

(declare-fun b!6553804 () Bool)

(declare-fun res!2688931 () Bool)

(declare-fun e!3967809 () Bool)

(assert (=> b!6553804 (=> (not res!2688931) (not e!3967809))))

(declare-fun call!570030 () Bool)

(assert (=> b!6553804 (= res!2688931 call!570030)))

(declare-fun e!3967810 () Bool)

(assert (=> b!6553804 (= e!3967810 e!3967809)))

(declare-fun bm!570025 () Bool)

(declare-fun call!570032 () Bool)

(declare-fun call!570031 () Bool)

(assert (=> bm!570025 (= call!570032 call!570031)))

(declare-fun b!6553805 () Bool)

(declare-fun res!2688928 () Bool)

(declare-fun e!3967805 () Bool)

(assert (=> b!6553805 (=> res!2688928 e!3967805)))

(assert (=> b!6553805 (= res!2688928 (not (is-Concat!25273 r!7292)))))

(assert (=> b!6553805 (= e!3967810 e!3967805)))

(declare-fun b!6553806 () Bool)

(declare-fun e!3967807 () Bool)

(assert (=> b!6553806 (= e!3967807 call!570031)))

(declare-fun c!1203962 () Bool)

(declare-fun bm!570026 () Bool)

(declare-fun c!1203963 () Bool)

(assert (=> bm!570026 (= call!570031 (validRegex!8164 (ite c!1203962 (reg!16757 r!7292) (ite c!1203963 (regTwo!33369 r!7292) (regTwo!33368 r!7292)))))))

(declare-fun b!6553807 () Bool)

(declare-fun e!3967811 () Bool)

(assert (=> b!6553807 (= e!3967811 e!3967807)))

(declare-fun res!2688932 () Bool)

(assert (=> b!6553807 (= res!2688932 (not (nullable!6421 (reg!16757 r!7292))))))

(assert (=> b!6553807 (=> (not res!2688932) (not e!3967807))))

(declare-fun b!6553808 () Bool)

(declare-fun e!3967806 () Bool)

(assert (=> b!6553808 (= e!3967806 call!570032)))

(declare-fun b!6553809 () Bool)

(assert (=> b!6553809 (= e!3967805 e!3967806)))

(declare-fun res!2688929 () Bool)

(assert (=> b!6553809 (=> (not res!2688929) (not e!3967806))))

(assert (=> b!6553809 (= res!2688929 call!570030)))

(declare-fun b!6553810 () Bool)

(declare-fun e!3967808 () Bool)

(assert (=> b!6553810 (= e!3967808 e!3967811)))

(assert (=> b!6553810 (= c!1203962 (is-Star!16428 r!7292))))

(declare-fun bm!570027 () Bool)

(assert (=> bm!570027 (= call!570030 (validRegex!8164 (ite c!1203963 (regOne!33369 r!7292) (regOne!33368 r!7292))))))

(declare-fun d!2056640 () Bool)

(declare-fun res!2688930 () Bool)

(assert (=> d!2056640 (=> res!2688930 e!3967808)))

(assert (=> d!2056640 (= res!2688930 (is-ElementMatch!16428 r!7292))))

(assert (=> d!2056640 (= (validRegex!8164 r!7292) e!3967808)))

(declare-fun b!6553811 () Bool)

(assert (=> b!6553811 (= e!3967811 e!3967810)))

(assert (=> b!6553811 (= c!1203963 (is-Union!16428 r!7292))))

(declare-fun b!6553812 () Bool)

(assert (=> b!6553812 (= e!3967809 call!570032)))

(assert (= (and d!2056640 (not res!2688930)) b!6553810))

(assert (= (and b!6553810 c!1203962) b!6553807))

(assert (= (and b!6553810 (not c!1203962)) b!6553811))

(assert (= (and b!6553807 res!2688932) b!6553806))

(assert (= (and b!6553811 c!1203963) b!6553804))

(assert (= (and b!6553811 (not c!1203963)) b!6553805))

(assert (= (and b!6553804 res!2688931) b!6553812))

(assert (= (and b!6553805 (not res!2688928)) b!6553809))

(assert (= (and b!6553809 res!2688929) b!6553808))

(assert (= (or b!6553812 b!6553808) bm!570025))

(assert (= (or b!6553804 b!6553809) bm!570027))

(assert (= (or b!6553806 bm!570025) bm!570026))

(declare-fun m!7336086 () Bool)

(assert (=> bm!570026 m!7336086))

(declare-fun m!7336088 () Bool)

(assert (=> b!6553807 m!7336088))

(declare-fun m!7336090 () Bool)

(assert (=> bm!570027 m!7336090))

(assert (=> start!642204 d!2056640))

(declare-fun bs!1672791 () Bool)

(declare-fun d!2056642 () Bool)

(assert (= bs!1672791 (and d!2056642 b!6553392)))

(declare-fun lambda!364177 () Int)

(assert (=> bs!1672791 (= lambda!364177 lambda!364128)))

(declare-fun bs!1672792 () Bool)

(assert (= bs!1672792 (and d!2056642 d!2056638)))

(assert (=> bs!1672792 (= lambda!364177 lambda!364174)))

(assert (=> d!2056642 (= (inv!84318 (h!71909 zl!343)) (forall!15600 (exprs!6312 (h!71909 zl!343)) lambda!364177))))

(declare-fun bs!1672793 () Bool)

(assert (= bs!1672793 d!2056642))

(declare-fun m!7336092 () Bool)

(assert (=> bs!1672793 m!7336092))

(assert (=> b!6553380 d!2056642))

(declare-fun d!2056644 () Bool)

(declare-fun c!1203964 () Bool)

(assert (=> d!2056644 (= c!1203964 (isEmpty!37695 (t!379226 s!2326)))))

(declare-fun e!3967812 () Bool)

(assert (=> d!2056644 (= (matchZipper!2440 lt!2403315 (t!379226 s!2326)) e!3967812)))

(declare-fun b!6553813 () Bool)

(assert (=> b!6553813 (= e!3967812 (nullableZipper!2173 lt!2403315))))

(declare-fun b!6553814 () Bool)

(assert (=> b!6553814 (= e!3967812 (matchZipper!2440 (derivationStepZipper!2394 lt!2403315 (head!13307 (t!379226 s!2326))) (tail!12392 (t!379226 s!2326))))))

(assert (= (and d!2056644 c!1203964) b!6553813))

(assert (= (and d!2056644 (not c!1203964)) b!6553814))

(assert (=> d!2056644 m!7335956))

(declare-fun m!7336094 () Bool)

(assert (=> b!6553813 m!7336094))

(assert (=> b!6553814 m!7335960))

(assert (=> b!6553814 m!7335960))

(declare-fun m!7336096 () Bool)

(assert (=> b!6553814 m!7336096))

(assert (=> b!6553814 m!7335964))

(assert (=> b!6553814 m!7336096))

(assert (=> b!6553814 m!7335964))

(declare-fun m!7336098 () Bool)

(assert (=> b!6553814 m!7336098))

(assert (=> b!6553379 d!2056644))

(declare-fun d!2056646 () Bool)

(declare-fun c!1203965 () Bool)

(assert (=> d!2056646 (= c!1203965 (isEmpty!37695 (t!379226 s!2326)))))

(declare-fun e!3967813 () Bool)

(assert (=> d!2056646 (= (matchZipper!2440 lt!2403291 (t!379226 s!2326)) e!3967813)))

(declare-fun b!6553815 () Bool)

(assert (=> b!6553815 (= e!3967813 (nullableZipper!2173 lt!2403291))))

(declare-fun b!6553816 () Bool)

(assert (=> b!6553816 (= e!3967813 (matchZipper!2440 (derivationStepZipper!2394 lt!2403291 (head!13307 (t!379226 s!2326))) (tail!12392 (t!379226 s!2326))))))

(assert (= (and d!2056646 c!1203965) b!6553815))

(assert (= (and d!2056646 (not c!1203965)) b!6553816))

(assert (=> d!2056646 m!7335956))

(declare-fun m!7336100 () Bool)

(assert (=> b!6553815 m!7336100))

(assert (=> b!6553816 m!7335960))

(assert (=> b!6553816 m!7335960))

(declare-fun m!7336102 () Bool)

(assert (=> b!6553816 m!7336102))

(assert (=> b!6553816 m!7335964))

(assert (=> b!6553816 m!7336102))

(assert (=> b!6553816 m!7335964))

(declare-fun m!7336104 () Bool)

(assert (=> b!6553816 m!7336104))

(assert (=> b!6553377 d!2056646))

(declare-fun bs!1672794 () Bool)

(declare-fun d!2056648 () Bool)

(assert (= bs!1672794 (and d!2056648 b!6553392)))

(declare-fun lambda!364180 () Int)

(assert (=> bs!1672794 (= lambda!364180 lambda!364128)))

(declare-fun bs!1672795 () Bool)

(assert (= bs!1672795 (and d!2056648 d!2056638)))

(assert (=> bs!1672795 (= lambda!364180 lambda!364174)))

(declare-fun bs!1672796 () Bool)

(assert (= bs!1672796 (and d!2056648 d!2056642)))

(assert (=> bs!1672796 (= lambda!364180 lambda!364177)))

(declare-fun b!6553837 () Bool)

(declare-fun e!3967830 () Regex!16428)

(assert (=> b!6553837 (= e!3967830 (Union!16428 (h!71907 (unfocusZipperList!1849 zl!343)) (generalisedUnion!2272 (t!379225 (unfocusZipperList!1849 zl!343)))))))

(declare-fun b!6553838 () Bool)

(declare-fun e!3967831 () Bool)

(declare-fun e!3967828 () Bool)

(assert (=> b!6553838 (= e!3967831 e!3967828)))

(declare-fun c!1203975 () Bool)

(assert (=> b!6553838 (= c!1203975 (isEmpty!37691 (unfocusZipperList!1849 zl!343)))))

(declare-fun b!6553839 () Bool)

(declare-fun e!3967827 () Bool)

(declare-fun lt!2403516 () Regex!16428)

(assert (=> b!6553839 (= e!3967827 (= lt!2403516 (head!13308 (unfocusZipperList!1849 zl!343))))))

(declare-fun b!6553840 () Bool)

(declare-fun isEmptyLang!1815 (Regex!16428) Bool)

(assert (=> b!6553840 (= e!3967828 (isEmptyLang!1815 lt!2403516))))

(declare-fun b!6553841 () Bool)

(declare-fun isUnion!1245 (Regex!16428) Bool)

(assert (=> b!6553841 (= e!3967827 (isUnion!1245 lt!2403516))))

(declare-fun b!6553842 () Bool)

(declare-fun e!3967826 () Regex!16428)

(assert (=> b!6553842 (= e!3967826 e!3967830)))

(declare-fun c!1203977 () Bool)

(assert (=> b!6553842 (= c!1203977 (is-Cons!65459 (unfocusZipperList!1849 zl!343)))))

(declare-fun b!6553843 () Bool)

(assert (=> b!6553843 (= e!3967830 EmptyLang!16428)))

(declare-fun b!6553844 () Bool)

(assert (=> b!6553844 (= e!3967828 e!3967827)))

(declare-fun c!1203974 () Bool)

(assert (=> b!6553844 (= c!1203974 (isEmpty!37691 (tail!12393 (unfocusZipperList!1849 zl!343))))))

(assert (=> d!2056648 e!3967831))

(declare-fun res!2688937 () Bool)

(assert (=> d!2056648 (=> (not res!2688937) (not e!3967831))))

(assert (=> d!2056648 (= res!2688937 (validRegex!8164 lt!2403516))))

(assert (=> d!2056648 (= lt!2403516 e!3967826)))

(declare-fun c!1203976 () Bool)

(declare-fun e!3967829 () Bool)

(assert (=> d!2056648 (= c!1203976 e!3967829)))

(declare-fun res!2688938 () Bool)

(assert (=> d!2056648 (=> (not res!2688938) (not e!3967829))))

(assert (=> d!2056648 (= res!2688938 (is-Cons!65459 (unfocusZipperList!1849 zl!343)))))

(assert (=> d!2056648 (forall!15600 (unfocusZipperList!1849 zl!343) lambda!364180)))

(assert (=> d!2056648 (= (generalisedUnion!2272 (unfocusZipperList!1849 zl!343)) lt!2403516)))

(declare-fun b!6553845 () Bool)

(assert (=> b!6553845 (= e!3967829 (isEmpty!37691 (t!379225 (unfocusZipperList!1849 zl!343))))))

(declare-fun b!6553846 () Bool)

(assert (=> b!6553846 (= e!3967826 (h!71907 (unfocusZipperList!1849 zl!343)))))

(assert (= (and d!2056648 res!2688938) b!6553845))

(assert (= (and d!2056648 c!1203976) b!6553846))

(assert (= (and d!2056648 (not c!1203976)) b!6553842))

(assert (= (and b!6553842 c!1203977) b!6553837))

(assert (= (and b!6553842 (not c!1203977)) b!6553843))

(assert (= (and d!2056648 res!2688937) b!6553838))

(assert (= (and b!6553838 c!1203975) b!6553840))

(assert (= (and b!6553838 (not c!1203975)) b!6553844))

(assert (= (and b!6553844 c!1203974) b!6553839))

(assert (= (and b!6553844 (not c!1203974)) b!6553841))

(declare-fun m!7336106 () Bool)

(assert (=> b!6553837 m!7336106))

(declare-fun m!7336108 () Bool)

(assert (=> d!2056648 m!7336108))

(assert (=> d!2056648 m!7335648))

(declare-fun m!7336110 () Bool)

(assert (=> d!2056648 m!7336110))

(assert (=> b!6553844 m!7335648))

(declare-fun m!7336112 () Bool)

(assert (=> b!6553844 m!7336112))

(assert (=> b!6553844 m!7336112))

(declare-fun m!7336114 () Bool)

(assert (=> b!6553844 m!7336114))

(declare-fun m!7336116 () Bool)

(assert (=> b!6553840 m!7336116))

(assert (=> b!6553839 m!7335648))

(declare-fun m!7336118 () Bool)

(assert (=> b!6553839 m!7336118))

(assert (=> b!6553838 m!7335648))

(declare-fun m!7336120 () Bool)

(assert (=> b!6553838 m!7336120))

(declare-fun m!7336122 () Bool)

(assert (=> b!6553845 m!7336122))

(declare-fun m!7336124 () Bool)

(assert (=> b!6553841 m!7336124))

(assert (=> b!6553398 d!2056648))

(declare-fun bs!1672797 () Bool)

(declare-fun d!2056652 () Bool)

(assert (= bs!1672797 (and d!2056652 b!6553392)))

(declare-fun lambda!364183 () Int)

(assert (=> bs!1672797 (= lambda!364183 lambda!364128)))

(declare-fun bs!1672798 () Bool)

(assert (= bs!1672798 (and d!2056652 d!2056638)))

(assert (=> bs!1672798 (= lambda!364183 lambda!364174)))

(declare-fun bs!1672799 () Bool)

(assert (= bs!1672799 (and d!2056652 d!2056642)))

(assert (=> bs!1672799 (= lambda!364183 lambda!364177)))

(declare-fun bs!1672800 () Bool)

(assert (= bs!1672800 (and d!2056652 d!2056648)))

(assert (=> bs!1672800 (= lambda!364183 lambda!364180)))

(declare-fun lt!2403519 () List!65583)

(assert (=> d!2056652 (forall!15600 lt!2403519 lambda!364183)))

(declare-fun e!3967836 () List!65583)

(assert (=> d!2056652 (= lt!2403519 e!3967836)))

(declare-fun c!1203982 () Bool)

(assert (=> d!2056652 (= c!1203982 (is-Cons!65461 zl!343))))

(assert (=> d!2056652 (= (unfocusZipperList!1849 zl!343) lt!2403519)))

(declare-fun b!6553855 () Bool)

(assert (=> b!6553855 (= e!3967836 (Cons!65459 (generalisedConcat!2025 (exprs!6312 (h!71909 zl!343))) (unfocusZipperList!1849 (t!379227 zl!343))))))

(declare-fun b!6553856 () Bool)

(assert (=> b!6553856 (= e!3967836 Nil!65459)))

(assert (= (and d!2056652 c!1203982) b!6553855))

(assert (= (and d!2056652 (not c!1203982)) b!6553856))

(declare-fun m!7336126 () Bool)

(assert (=> d!2056652 m!7336126))

(assert (=> b!6553855 m!7335774))

(declare-fun m!7336128 () Bool)

(assert (=> b!6553855 m!7336128))

(assert (=> b!6553398 d!2056652))

(declare-fun d!2056654 () Bool)

(assert (=> d!2056654 (= (matchR!8611 lt!2403267 (_2!36710 lt!2403310)) (matchZipper!2440 lt!2403293 (_2!36710 lt!2403310)))))

(declare-fun lt!2403522 () Unit!159047)

(declare-fun choose!48794 ((Set Context!11624) List!65585 Regex!16428 List!65584) Unit!159047)

(assert (=> d!2056654 (= lt!2403522 (choose!48794 lt!2403293 lt!2403287 lt!2403267 (_2!36710 lt!2403310)))))

(assert (=> d!2056654 (validRegex!8164 lt!2403267)))

(assert (=> d!2056654 (= (theoremZipperRegexEquiv!864 lt!2403293 lt!2403287 lt!2403267 (_2!36710 lt!2403310)) lt!2403522)))

(declare-fun bs!1672801 () Bool)

(assert (= bs!1672801 d!2056654))

(assert (=> bs!1672801 m!7335718))

(assert (=> bs!1672801 m!7335602))

(declare-fun m!7336154 () Bool)

(assert (=> bs!1672801 m!7336154))

(declare-fun m!7336156 () Bool)

(assert (=> bs!1672801 m!7336156))

(assert (=> b!6553399 d!2056654))

(declare-fun b!6553861 () Bool)

(declare-fun e!3967842 () Bool)

(declare-fun e!3967843 () Bool)

(assert (=> b!6553861 (= e!3967842 e!3967843)))

(declare-fun res!2688945 () Bool)

(assert (=> b!6553861 (=> (not res!2688945) (not e!3967843))))

(declare-fun lt!2403523 () Bool)

(assert (=> b!6553861 (= res!2688945 (not lt!2403523))))

(declare-fun bm!570028 () Bool)

(declare-fun call!570033 () Bool)

(assert (=> bm!570028 (= call!570033 (isEmpty!37695 (_2!36710 lt!2403310)))))

(declare-fun d!2056660 () Bool)

(declare-fun e!3967841 () Bool)

(assert (=> d!2056660 e!3967841))

(declare-fun c!1203985 () Bool)

(assert (=> d!2056660 (= c!1203985 (is-EmptyExpr!16428 lt!2403267))))

(declare-fun e!3967845 () Bool)

(assert (=> d!2056660 (= lt!2403523 e!3967845)))

(declare-fun c!1203986 () Bool)

(assert (=> d!2056660 (= c!1203986 (isEmpty!37695 (_2!36710 lt!2403310)))))

(assert (=> d!2056660 (validRegex!8164 lt!2403267)))

(assert (=> d!2056660 (= (matchR!8611 lt!2403267 (_2!36710 lt!2403310)) lt!2403523)))

(declare-fun b!6553862 () Bool)

(assert (=> b!6553862 (= e!3967845 (nullable!6421 lt!2403267))))

(declare-fun b!6553863 () Bool)

(declare-fun e!3967844 () Bool)

(assert (=> b!6553863 (= e!3967844 (= (head!13307 (_2!36710 lt!2403310)) (c!1203875 lt!2403267)))))

(declare-fun b!6553864 () Bool)

(declare-fun e!3967839 () Bool)

(assert (=> b!6553864 (= e!3967839 (not lt!2403523))))

(declare-fun b!6553865 () Bool)

(declare-fun res!2688946 () Bool)

(assert (=> b!6553865 (=> res!2688946 e!3967842)))

(assert (=> b!6553865 (= res!2688946 (not (is-ElementMatch!16428 lt!2403267)))))

(assert (=> b!6553865 (= e!3967839 e!3967842)))

(declare-fun b!6553866 () Bool)

(assert (=> b!6553866 (= e!3967841 e!3967839)))

(declare-fun c!1203987 () Bool)

(assert (=> b!6553866 (= c!1203987 (is-EmptyLang!16428 lt!2403267))))

(declare-fun b!6553867 () Bool)

(declare-fun res!2688939 () Bool)

(declare-fun e!3967840 () Bool)

(assert (=> b!6553867 (=> res!2688939 e!3967840)))

(assert (=> b!6553867 (= res!2688939 (not (isEmpty!37695 (tail!12392 (_2!36710 lt!2403310)))))))

(declare-fun b!6553868 () Bool)

(assert (=> b!6553868 (= e!3967840 (not (= (head!13307 (_2!36710 lt!2403310)) (c!1203875 lt!2403267))))))

(declare-fun b!6553869 () Bool)

(declare-fun res!2688943 () Bool)

(assert (=> b!6553869 (=> (not res!2688943) (not e!3967844))))

(assert (=> b!6553869 (= res!2688943 (isEmpty!37695 (tail!12392 (_2!36710 lt!2403310))))))

(declare-fun b!6553870 () Bool)

(assert (=> b!6553870 (= e!3967841 (= lt!2403523 call!570033))))

(declare-fun b!6553871 () Bool)

(assert (=> b!6553871 (= e!3967845 (matchR!8611 (derivativeStep!5112 lt!2403267 (head!13307 (_2!36710 lt!2403310))) (tail!12392 (_2!36710 lt!2403310))))))

(declare-fun b!6553872 () Bool)

(assert (=> b!6553872 (= e!3967843 e!3967840)))

(declare-fun res!2688940 () Bool)

(assert (=> b!6553872 (=> res!2688940 e!3967840)))

(assert (=> b!6553872 (= res!2688940 call!570033)))

(declare-fun b!6553873 () Bool)

(declare-fun res!2688942 () Bool)

(assert (=> b!6553873 (=> (not res!2688942) (not e!3967844))))

(assert (=> b!6553873 (= res!2688942 (not call!570033))))

(declare-fun b!6553874 () Bool)

(declare-fun res!2688944 () Bool)

(assert (=> b!6553874 (=> res!2688944 e!3967842)))

(assert (=> b!6553874 (= res!2688944 e!3967844)))

(declare-fun res!2688941 () Bool)

(assert (=> b!6553874 (=> (not res!2688941) (not e!3967844))))

(assert (=> b!6553874 (= res!2688941 lt!2403523)))

(assert (= (and d!2056660 c!1203986) b!6553862))

(assert (= (and d!2056660 (not c!1203986)) b!6553871))

(assert (= (and d!2056660 c!1203985) b!6553870))

(assert (= (and d!2056660 (not c!1203985)) b!6553866))

(assert (= (and b!6553866 c!1203987) b!6553864))

(assert (= (and b!6553866 (not c!1203987)) b!6553865))

(assert (= (and b!6553865 (not res!2688946)) b!6553874))

(assert (= (and b!6553874 res!2688941) b!6553873))

(assert (= (and b!6553873 res!2688942) b!6553869))

(assert (= (and b!6553869 res!2688943) b!6553863))

(assert (= (and b!6553874 (not res!2688944)) b!6553861))

(assert (= (and b!6553861 res!2688945) b!6553872))

(assert (= (and b!6553872 (not res!2688940)) b!6553867))

(assert (= (and b!6553867 (not res!2688939)) b!6553868))

(assert (= (or b!6553870 b!6553872 b!6553873) bm!570028))

(declare-fun m!7336158 () Bool)

(assert (=> b!6553871 m!7336158))

(assert (=> b!6553871 m!7336158))

(declare-fun m!7336160 () Bool)

(assert (=> b!6553871 m!7336160))

(declare-fun m!7336162 () Bool)

(assert (=> b!6553871 m!7336162))

(assert (=> b!6553871 m!7336160))

(assert (=> b!6553871 m!7336162))

(declare-fun m!7336164 () Bool)

(assert (=> b!6553871 m!7336164))

(assert (=> b!6553867 m!7336162))

(assert (=> b!6553867 m!7336162))

(declare-fun m!7336166 () Bool)

(assert (=> b!6553867 m!7336166))

(assert (=> b!6553863 m!7336158))

(declare-fun m!7336168 () Bool)

(assert (=> d!2056660 m!7336168))

(assert (=> d!2056660 m!7336156))

(assert (=> b!6553868 m!7336158))

(assert (=> bm!570028 m!7336168))

(declare-fun m!7336170 () Bool)

(assert (=> b!6553862 m!7336170))

(assert (=> b!6553869 m!7336162))

(assert (=> b!6553869 m!7336162))

(assert (=> b!6553869 m!7336166))

(assert (=> b!6553399 d!2056660))

(declare-fun bs!1672802 () Bool)

(declare-fun d!2056662 () Bool)

(assert (= bs!1672802 (and d!2056662 b!6553411)))

(declare-fun lambda!364188 () Int)

(assert (=> bs!1672802 (= (= lt!2403289 (regOne!33368 r!7292)) (= lambda!364188 lambda!364124))))

(declare-fun bs!1672803 () Bool)

(assert (= bs!1672803 (and d!2056662 b!6553700)))

(assert (=> bs!1672803 (not (= lambda!364188 lambda!364171))))

(declare-fun bs!1672804 () Bool)

(assert (= bs!1672804 (and d!2056662 b!6553399)))

(assert (=> bs!1672804 (= lambda!364188 lambda!364129)))

(assert (=> bs!1672804 (not (= lambda!364188 lambda!364130))))

(declare-fun bs!1672805 () Bool)

(assert (= bs!1672805 (and d!2056662 b!6553699)))

(assert (=> bs!1672805 (not (= lambda!364188 lambda!364170))))

(assert (=> bs!1672802 (not (= lambda!364188 lambda!364125))))

(assert (=> d!2056662 true))

(assert (=> d!2056662 true))

(assert (=> d!2056662 true))

(declare-fun lambda!364189 () Int)

(assert (=> bs!1672802 (not (= lambda!364189 lambda!364124))))

(declare-fun bs!1672806 () Bool)

(assert (= bs!1672806 d!2056662))

(assert (=> bs!1672806 (not (= lambda!364189 lambda!364188))))

(assert (=> bs!1672803 (= (= lt!2403289 (regOne!33368 r!7292)) (= lambda!364189 lambda!364171))))

(assert (=> bs!1672804 (not (= lambda!364189 lambda!364129))))

(assert (=> bs!1672804 (= lambda!364189 lambda!364130)))

(assert (=> bs!1672805 (not (= lambda!364189 lambda!364170))))

(assert (=> bs!1672802 (= (= lt!2403289 (regOne!33368 r!7292)) (= lambda!364189 lambda!364125))))

(assert (=> d!2056662 true))

(assert (=> d!2056662 true))

(assert (=> d!2056662 true))

(assert (=> d!2056662 (= (Exists!3498 lambda!364188) (Exists!3498 lambda!364189))))

(declare-fun lt!2403526 () Unit!159047)

(declare-fun choose!48795 (Regex!16428 Regex!16428 List!65584) Unit!159047)

(assert (=> d!2056662 (= lt!2403526 (choose!48795 lt!2403289 (regTwo!33368 r!7292) s!2326))))

(assert (=> d!2056662 (validRegex!8164 lt!2403289)))

(assert (=> d!2056662 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2035 lt!2403289 (regTwo!33368 r!7292) s!2326) lt!2403526)))

(declare-fun m!7336178 () Bool)

(assert (=> bs!1672806 m!7336178))

(declare-fun m!7336180 () Bool)

(assert (=> bs!1672806 m!7336180))

(declare-fun m!7336182 () Bool)

(assert (=> bs!1672806 m!7336182))

(declare-fun m!7336184 () Bool)

(assert (=> bs!1672806 m!7336184))

(assert (=> b!6553399 d!2056662))

(declare-fun d!2056666 () Bool)

(declare-fun choose!48796 (Int) Bool)

(assert (=> d!2056666 (= (Exists!3498 lambda!364129) (choose!48796 lambda!364129))))

(declare-fun bs!1672808 () Bool)

(assert (= bs!1672808 d!2056666))

(declare-fun m!7336190 () Bool)

(assert (=> bs!1672808 m!7336190))

(assert (=> b!6553399 d!2056666))

(declare-fun d!2056670 () Bool)

(declare-fun isEmpty!37697 (Option!16319) Bool)

(assert (=> d!2056670 (= (isDefined!13022 lt!2403295) (not (isEmpty!37697 lt!2403295)))))

(declare-fun bs!1672809 () Bool)

(assert (= bs!1672809 d!2056670))

(declare-fun m!7336192 () Bool)

(assert (=> bs!1672809 m!7336192))

(assert (=> b!6553399 d!2056670))

(declare-fun d!2056672 () Bool)

(assert (=> d!2056672 (= (Exists!3498 lambda!364130) (choose!48796 lambda!364130))))

(declare-fun bs!1672810 () Bool)

(assert (= bs!1672810 d!2056672))

(declare-fun m!7336194 () Bool)

(assert (=> bs!1672810 m!7336194))

(assert (=> b!6553399 d!2056672))

(declare-fun d!2056674 () Bool)

(assert (=> d!2056674 (= (matchR!8611 (Concat!25273 (Concat!25273 (reg!16757 (regOne!33368 r!7292)) lt!2403296) (regTwo!33368 r!7292)) s!2326) (matchR!8611 (Concat!25273 (reg!16757 (regOne!33368 r!7292)) (Concat!25273 lt!2403296 (regTwo!33368 r!7292))) s!2326))))

(declare-fun lt!2403533 () Unit!159047)

(declare-fun choose!48797 (Regex!16428 Regex!16428 Regex!16428 List!65584) Unit!159047)

(assert (=> d!2056674 (= lt!2403533 (choose!48797 (reg!16757 (regOne!33368 r!7292)) lt!2403296 (regTwo!33368 r!7292) s!2326))))

(declare-fun e!3967864 () Bool)

(assert (=> d!2056674 e!3967864))

(declare-fun res!2688963 () Bool)

(assert (=> d!2056674 (=> (not res!2688963) (not e!3967864))))

(assert (=> d!2056674 (= res!2688963 (validRegex!8164 (reg!16757 (regOne!33368 r!7292))))))

(assert (=> d!2056674 (= (lemmaConcatAssociative!125 (reg!16757 (regOne!33368 r!7292)) lt!2403296 (regTwo!33368 r!7292) s!2326) lt!2403533)))

(declare-fun b!6553907 () Bool)

(declare-fun res!2688964 () Bool)

(assert (=> b!6553907 (=> (not res!2688964) (not e!3967864))))

(assert (=> b!6553907 (= res!2688964 (validRegex!8164 lt!2403296))))

(declare-fun b!6553908 () Bool)

(assert (=> b!6553908 (= e!3967864 (validRegex!8164 (regTwo!33368 r!7292)))))

(assert (= (and d!2056674 res!2688963) b!6553907))

(assert (= (and b!6553907 res!2688964) b!6553908))

(declare-fun m!7336210 () Bool)

(assert (=> d!2056674 m!7336210))

(declare-fun m!7336212 () Bool)

(assert (=> d!2056674 m!7336212))

(declare-fun m!7336214 () Bool)

(assert (=> d!2056674 m!7336214))

(assert (=> d!2056674 m!7335630))

(declare-fun m!7336216 () Bool)

(assert (=> b!6553907 m!7336216))

(declare-fun m!7336218 () Bool)

(assert (=> b!6553908 m!7336218))

(assert (=> b!6553399 d!2056674))

(declare-fun bs!1672817 () Bool)

(declare-fun d!2056684 () Bool)

(assert (= bs!1672817 (and d!2056684 b!6553411)))

(declare-fun lambda!364195 () Int)

(assert (=> bs!1672817 (= (= lt!2403289 (regOne!33368 r!7292)) (= lambda!364195 lambda!364124))))

(declare-fun bs!1672818 () Bool)

(assert (= bs!1672818 (and d!2056684 d!2056662)))

(assert (=> bs!1672818 (= lambda!364195 lambda!364188)))

(assert (=> bs!1672818 (not (= lambda!364195 lambda!364189))))

(declare-fun bs!1672819 () Bool)

(assert (= bs!1672819 (and d!2056684 b!6553700)))

(assert (=> bs!1672819 (not (= lambda!364195 lambda!364171))))

(declare-fun bs!1672820 () Bool)

(assert (= bs!1672820 (and d!2056684 b!6553399)))

(assert (=> bs!1672820 (= lambda!364195 lambda!364129)))

(assert (=> bs!1672820 (not (= lambda!364195 lambda!364130))))

(declare-fun bs!1672821 () Bool)

(assert (= bs!1672821 (and d!2056684 b!6553699)))

(assert (=> bs!1672821 (not (= lambda!364195 lambda!364170))))

(assert (=> bs!1672817 (not (= lambda!364195 lambda!364125))))

(assert (=> d!2056684 true))

(assert (=> d!2056684 true))

(assert (=> d!2056684 true))

(assert (=> d!2056684 (= (isDefined!13022 (findConcatSeparation!2733 lt!2403289 (regTwo!33368 r!7292) Nil!65460 s!2326 s!2326)) (Exists!3498 lambda!364195))))

(declare-fun lt!2403539 () Unit!159047)

(declare-fun choose!48800 (Regex!16428 Regex!16428 List!65584) Unit!159047)

(assert (=> d!2056684 (= lt!2403539 (choose!48800 lt!2403289 (regTwo!33368 r!7292) s!2326))))

(assert (=> d!2056684 (validRegex!8164 lt!2403289)))

(assert (=> d!2056684 (= (lemmaFindConcatSeparationEquivalentToExists!2497 lt!2403289 (regTwo!33368 r!7292) s!2326) lt!2403539)))

(declare-fun bs!1672822 () Bool)

(assert (= bs!1672822 d!2056684))

(assert (=> bs!1672822 m!7336184))

(assert (=> bs!1672822 m!7335716))

(declare-fun m!7336228 () Bool)

(assert (=> bs!1672822 m!7336228))

(declare-fun m!7336230 () Bool)

(assert (=> bs!1672822 m!7336230))

(declare-fun m!7336232 () Bool)

(assert (=> bs!1672822 m!7336232))

(assert (=> bs!1672822 m!7335716))

(assert (=> b!6553399 d!2056684))

(declare-fun lt!2403542 () List!65583)

(declare-fun e!3967871 () Bool)

(declare-fun b!6553924 () Bool)

(assert (=> b!6553924 (= e!3967871 (or (not (= lt!2403275 Nil!65459)) (= lt!2403542 lt!2403314)))))

(declare-fun d!2056690 () Bool)

(assert (=> d!2056690 e!3967871))

(declare-fun res!2688974 () Bool)

(assert (=> d!2056690 (=> (not res!2688974) (not e!3967871))))

(declare-fun content!12565 (List!65583) (Set Regex!16428))

(assert (=> d!2056690 (= res!2688974 (= (content!12565 lt!2403542) (set.union (content!12565 lt!2403314) (content!12565 lt!2403275))))))

(declare-fun e!3967872 () List!65583)

(assert (=> d!2056690 (= lt!2403542 e!3967872)))

(declare-fun c!1203998 () Bool)

(assert (=> d!2056690 (= c!1203998 (is-Nil!65459 lt!2403314))))

(assert (=> d!2056690 (= (++!14558 lt!2403314 lt!2403275) lt!2403542)))

(declare-fun b!6553921 () Bool)

(assert (=> b!6553921 (= e!3967872 lt!2403275)))

(declare-fun b!6553922 () Bool)

(assert (=> b!6553922 (= e!3967872 (Cons!65459 (h!71907 lt!2403314) (++!14558 (t!379225 lt!2403314) lt!2403275)))))

(declare-fun b!6553923 () Bool)

(declare-fun res!2688973 () Bool)

(assert (=> b!6553923 (=> (not res!2688973) (not e!3967871))))

(declare-fun size!40505 (List!65583) Int)

(assert (=> b!6553923 (= res!2688973 (= (size!40505 lt!2403542) (+ (size!40505 lt!2403314) (size!40505 lt!2403275))))))

(assert (= (and d!2056690 c!1203998) b!6553921))

(assert (= (and d!2056690 (not c!1203998)) b!6553922))

(assert (= (and d!2056690 res!2688974) b!6553923))

(assert (= (and b!6553923 res!2688973) b!6553924))

(declare-fun m!7336234 () Bool)

(assert (=> d!2056690 m!7336234))

(declare-fun m!7336236 () Bool)

(assert (=> d!2056690 m!7336236))

(declare-fun m!7336238 () Bool)

(assert (=> d!2056690 m!7336238))

(declare-fun m!7336240 () Bool)

(assert (=> b!6553922 m!7336240))

(declare-fun m!7336242 () Bool)

(assert (=> b!6553923 m!7336242))

(declare-fun m!7336244 () Bool)

(assert (=> b!6553923 m!7336244))

(declare-fun m!7336246 () Bool)

(assert (=> b!6553923 m!7336246))

(assert (=> b!6553399 d!2056690))

(declare-fun b!6553925 () Bool)

(declare-fun e!3967876 () Bool)

(declare-fun e!3967877 () Bool)

(assert (=> b!6553925 (= e!3967876 e!3967877)))

(declare-fun res!2688981 () Bool)

(assert (=> b!6553925 (=> (not res!2688981) (not e!3967877))))

(declare-fun lt!2403543 () Bool)

(assert (=> b!6553925 (= res!2688981 (not lt!2403543))))

(declare-fun bm!570033 () Bool)

(declare-fun call!570038 () Bool)

(assert (=> bm!570033 (= call!570038 (isEmpty!37695 (_1!36710 lt!2403310)))))

(declare-fun d!2056692 () Bool)

(declare-fun e!3967875 () Bool)

(assert (=> d!2056692 e!3967875))

(declare-fun c!1203999 () Bool)

(assert (=> d!2056692 (= c!1203999 (is-EmptyExpr!16428 (reg!16757 (regOne!33368 r!7292))))))

(declare-fun e!3967879 () Bool)

(assert (=> d!2056692 (= lt!2403543 e!3967879)))

(declare-fun c!1204000 () Bool)

(assert (=> d!2056692 (= c!1204000 (isEmpty!37695 (_1!36710 lt!2403310)))))

(assert (=> d!2056692 (validRegex!8164 (reg!16757 (regOne!33368 r!7292)))))

(assert (=> d!2056692 (= (matchR!8611 (reg!16757 (regOne!33368 r!7292)) (_1!36710 lt!2403310)) lt!2403543)))

(declare-fun b!6553926 () Bool)

(assert (=> b!6553926 (= e!3967879 (nullable!6421 (reg!16757 (regOne!33368 r!7292))))))

(declare-fun b!6553927 () Bool)

(declare-fun e!3967878 () Bool)

(assert (=> b!6553927 (= e!3967878 (= (head!13307 (_1!36710 lt!2403310)) (c!1203875 (reg!16757 (regOne!33368 r!7292)))))))

(declare-fun b!6553928 () Bool)

(declare-fun e!3967873 () Bool)

(assert (=> b!6553928 (= e!3967873 (not lt!2403543))))

(declare-fun b!6553929 () Bool)

(declare-fun res!2688982 () Bool)

(assert (=> b!6553929 (=> res!2688982 e!3967876)))

(assert (=> b!6553929 (= res!2688982 (not (is-ElementMatch!16428 (reg!16757 (regOne!33368 r!7292)))))))

(assert (=> b!6553929 (= e!3967873 e!3967876)))

(declare-fun b!6553930 () Bool)

(assert (=> b!6553930 (= e!3967875 e!3967873)))

(declare-fun c!1204001 () Bool)

(assert (=> b!6553930 (= c!1204001 (is-EmptyLang!16428 (reg!16757 (regOne!33368 r!7292))))))

(declare-fun b!6553931 () Bool)

(declare-fun res!2688975 () Bool)

(declare-fun e!3967874 () Bool)

(assert (=> b!6553931 (=> res!2688975 e!3967874)))

(assert (=> b!6553931 (= res!2688975 (not (isEmpty!37695 (tail!12392 (_1!36710 lt!2403310)))))))

(declare-fun b!6553932 () Bool)

(assert (=> b!6553932 (= e!3967874 (not (= (head!13307 (_1!36710 lt!2403310)) (c!1203875 (reg!16757 (regOne!33368 r!7292))))))))

(declare-fun b!6553933 () Bool)

(declare-fun res!2688979 () Bool)

(assert (=> b!6553933 (=> (not res!2688979) (not e!3967878))))

(assert (=> b!6553933 (= res!2688979 (isEmpty!37695 (tail!12392 (_1!36710 lt!2403310))))))

(declare-fun b!6553934 () Bool)

(assert (=> b!6553934 (= e!3967875 (= lt!2403543 call!570038))))

(declare-fun b!6553935 () Bool)

(assert (=> b!6553935 (= e!3967879 (matchR!8611 (derivativeStep!5112 (reg!16757 (regOne!33368 r!7292)) (head!13307 (_1!36710 lt!2403310))) (tail!12392 (_1!36710 lt!2403310))))))

(declare-fun b!6553936 () Bool)

(assert (=> b!6553936 (= e!3967877 e!3967874)))

(declare-fun res!2688976 () Bool)

(assert (=> b!6553936 (=> res!2688976 e!3967874)))

(assert (=> b!6553936 (= res!2688976 call!570038)))

(declare-fun b!6553937 () Bool)

(declare-fun res!2688978 () Bool)

(assert (=> b!6553937 (=> (not res!2688978) (not e!3967878))))

(assert (=> b!6553937 (= res!2688978 (not call!570038))))

(declare-fun b!6553938 () Bool)

(declare-fun res!2688980 () Bool)

(assert (=> b!6553938 (=> res!2688980 e!3967876)))

(assert (=> b!6553938 (= res!2688980 e!3967878)))

(declare-fun res!2688977 () Bool)

(assert (=> b!6553938 (=> (not res!2688977) (not e!3967878))))

(assert (=> b!6553938 (= res!2688977 lt!2403543)))

(assert (= (and d!2056692 c!1204000) b!6553926))

(assert (= (and d!2056692 (not c!1204000)) b!6553935))

(assert (= (and d!2056692 c!1203999) b!6553934))

(assert (= (and d!2056692 (not c!1203999)) b!6553930))

(assert (= (and b!6553930 c!1204001) b!6553928))

(assert (= (and b!6553930 (not c!1204001)) b!6553929))

(assert (= (and b!6553929 (not res!2688982)) b!6553938))

(assert (= (and b!6553938 res!2688977) b!6553937))

(assert (= (and b!6553937 res!2688978) b!6553933))

(assert (= (and b!6553933 res!2688979) b!6553927))

(assert (= (and b!6553938 (not res!2688980)) b!6553925))

(assert (= (and b!6553925 res!2688981) b!6553936))

(assert (= (and b!6553936 (not res!2688976)) b!6553931))

(assert (= (and b!6553931 (not res!2688975)) b!6553932))

(assert (= (or b!6553934 b!6553936 b!6553937) bm!570033))

(declare-fun m!7336248 () Bool)

(assert (=> b!6553935 m!7336248))

(assert (=> b!6553935 m!7336248))

(declare-fun m!7336250 () Bool)

(assert (=> b!6553935 m!7336250))

(declare-fun m!7336252 () Bool)

(assert (=> b!6553935 m!7336252))

(assert (=> b!6553935 m!7336250))

(assert (=> b!6553935 m!7336252))

(declare-fun m!7336254 () Bool)

(assert (=> b!6553935 m!7336254))

(assert (=> b!6553931 m!7336252))

(assert (=> b!6553931 m!7336252))

(declare-fun m!7336256 () Bool)

(assert (=> b!6553931 m!7336256))

(assert (=> b!6553927 m!7336248))

(declare-fun m!7336258 () Bool)

(assert (=> d!2056692 m!7336258))

(assert (=> d!2056692 m!7335630))

(assert (=> b!6553932 m!7336248))

(assert (=> bm!570033 m!7336258))

(declare-fun m!7336260 () Bool)

(assert (=> b!6553926 m!7336260))

(assert (=> b!6553933 m!7336252))

(assert (=> b!6553933 m!7336252))

(assert (=> b!6553933 m!7336256))

(assert (=> b!6553399 d!2056692))

(declare-fun d!2056694 () Bool)

(assert (=> d!2056694 (= (matchR!8611 (reg!16757 (regOne!33368 r!7292)) (_1!36710 lt!2403310)) (matchZipper!2440 lt!2403260 (_1!36710 lt!2403310)))))

(declare-fun lt!2403544 () Unit!159047)

(assert (=> d!2056694 (= lt!2403544 (choose!48794 lt!2403260 lt!2403279 (reg!16757 (regOne!33368 r!7292)) (_1!36710 lt!2403310)))))

(assert (=> d!2056694 (validRegex!8164 (reg!16757 (regOne!33368 r!7292)))))

(assert (=> d!2056694 (= (theoremZipperRegexEquiv!864 lt!2403260 lt!2403279 (reg!16757 (regOne!33368 r!7292)) (_1!36710 lt!2403310)) lt!2403544)))

(declare-fun bs!1672823 () Bool)

(assert (= bs!1672823 d!2056694))

(assert (=> bs!1672823 m!7335724))

(assert (=> bs!1672823 m!7335708))

(declare-fun m!7336262 () Bool)

(assert (=> bs!1672823 m!7336262))

(assert (=> bs!1672823 m!7335630))

(assert (=> b!6553399 d!2056694))

(declare-fun d!2056696 () Bool)

(assert (=> d!2056696 (forall!15600 (++!14558 lt!2403314 lt!2403275) lambda!364128)))

(declare-fun lt!2403547 () Unit!159047)

(declare-fun choose!48801 (List!65583 List!65583 Int) Unit!159047)

(assert (=> d!2056696 (= lt!2403547 (choose!48801 lt!2403314 lt!2403275 lambda!364128))))

(assert (=> d!2056696 (forall!15600 lt!2403314 lambda!364128)))

(assert (=> d!2056696 (= (lemmaConcatPreservesForall!401 lt!2403314 lt!2403275 lambda!364128) lt!2403547)))

(declare-fun bs!1672824 () Bool)

(assert (= bs!1672824 d!2056696))

(assert (=> bs!1672824 m!7335686))

(assert (=> bs!1672824 m!7335686))

(declare-fun m!7336264 () Bool)

(assert (=> bs!1672824 m!7336264))

(declare-fun m!7336266 () Bool)

(assert (=> bs!1672824 m!7336266))

(declare-fun m!7336268 () Bool)

(assert (=> bs!1672824 m!7336268))

(assert (=> b!6553399 d!2056696))

(declare-fun b!6553961 () Bool)

(declare-fun e!3967897 () Bool)

(declare-fun e!3967898 () Bool)

(assert (=> b!6553961 (= e!3967897 e!3967898)))

(declare-fun res!2688995 () Bool)

(assert (=> b!6553961 (=> (not res!2688995) (not e!3967898))))

(declare-fun lt!2403548 () Bool)

(assert (=> b!6553961 (= res!2688995 (not lt!2403548))))

(declare-fun bm!570034 () Bool)

(declare-fun call!570039 () Bool)

(assert (=> bm!570034 (= call!570039 (isEmpty!37695 s!2326))))

(declare-fun d!2056698 () Bool)

(declare-fun e!3967896 () Bool)

(assert (=> d!2056698 e!3967896))

(declare-fun c!1204010 () Bool)

(assert (=> d!2056698 (= c!1204010 (is-EmptyExpr!16428 lt!2403317))))

(declare-fun e!3967900 () Bool)

(assert (=> d!2056698 (= lt!2403548 e!3967900)))

(declare-fun c!1204011 () Bool)

(assert (=> d!2056698 (= c!1204011 (isEmpty!37695 s!2326))))

(assert (=> d!2056698 (validRegex!8164 lt!2403317)))

(assert (=> d!2056698 (= (matchR!8611 lt!2403317 s!2326) lt!2403548)))

(declare-fun b!6553962 () Bool)

(assert (=> b!6553962 (= e!3967900 (nullable!6421 lt!2403317))))

(declare-fun b!6553963 () Bool)

(declare-fun e!3967899 () Bool)

(assert (=> b!6553963 (= e!3967899 (= (head!13307 s!2326) (c!1203875 lt!2403317)))))

(declare-fun b!6553964 () Bool)

(declare-fun e!3967894 () Bool)

(assert (=> b!6553964 (= e!3967894 (not lt!2403548))))

(declare-fun b!6553965 () Bool)

(declare-fun res!2688996 () Bool)

(assert (=> b!6553965 (=> res!2688996 e!3967897)))

(assert (=> b!6553965 (= res!2688996 (not (is-ElementMatch!16428 lt!2403317)))))

(assert (=> b!6553965 (= e!3967894 e!3967897)))

(declare-fun b!6553966 () Bool)

(assert (=> b!6553966 (= e!3967896 e!3967894)))

(declare-fun c!1204012 () Bool)

(assert (=> b!6553966 (= c!1204012 (is-EmptyLang!16428 lt!2403317))))

(declare-fun b!6553967 () Bool)

(declare-fun res!2688989 () Bool)

(declare-fun e!3967895 () Bool)

(assert (=> b!6553967 (=> res!2688989 e!3967895)))

(assert (=> b!6553967 (= res!2688989 (not (isEmpty!37695 (tail!12392 s!2326))))))

(declare-fun b!6553968 () Bool)

(assert (=> b!6553968 (= e!3967895 (not (= (head!13307 s!2326) (c!1203875 lt!2403317))))))

(declare-fun b!6553969 () Bool)

(declare-fun res!2688993 () Bool)

(assert (=> b!6553969 (=> (not res!2688993) (not e!3967899))))

(assert (=> b!6553969 (= res!2688993 (isEmpty!37695 (tail!12392 s!2326)))))

(declare-fun b!6553970 () Bool)

(assert (=> b!6553970 (= e!3967896 (= lt!2403548 call!570039))))

(declare-fun b!6553971 () Bool)

(assert (=> b!6553971 (= e!3967900 (matchR!8611 (derivativeStep!5112 lt!2403317 (head!13307 s!2326)) (tail!12392 s!2326)))))

(declare-fun b!6553972 () Bool)

(assert (=> b!6553972 (= e!3967898 e!3967895)))

(declare-fun res!2688990 () Bool)

(assert (=> b!6553972 (=> res!2688990 e!3967895)))

(assert (=> b!6553972 (= res!2688990 call!570039)))

(declare-fun b!6553973 () Bool)

(declare-fun res!2688992 () Bool)

(assert (=> b!6553973 (=> (not res!2688992) (not e!3967899))))

(assert (=> b!6553973 (= res!2688992 (not call!570039))))

(declare-fun b!6553974 () Bool)

(declare-fun res!2688994 () Bool)

(assert (=> b!6553974 (=> res!2688994 e!3967897)))

(assert (=> b!6553974 (= res!2688994 e!3967899)))

(declare-fun res!2688991 () Bool)

(assert (=> b!6553974 (=> (not res!2688991) (not e!3967899))))

(assert (=> b!6553974 (= res!2688991 lt!2403548)))

(assert (= (and d!2056698 c!1204011) b!6553962))

(assert (= (and d!2056698 (not c!1204011)) b!6553971))

(assert (= (and d!2056698 c!1204010) b!6553970))

(assert (= (and d!2056698 (not c!1204010)) b!6553966))

(assert (= (and b!6553966 c!1204012) b!6553964))

(assert (= (and b!6553966 (not c!1204012)) b!6553965))

(assert (= (and b!6553965 (not res!2688996)) b!6553974))

(assert (= (and b!6553974 res!2688991) b!6553973))

(assert (= (and b!6553973 res!2688992) b!6553969))

(assert (= (and b!6553969 res!2688993) b!6553963))

(assert (= (and b!6553974 (not res!2688994)) b!6553961))

(assert (= (and b!6553961 res!2688995) b!6553972))

(assert (= (and b!6553972 (not res!2688990)) b!6553967))

(assert (= (and b!6553967 (not res!2688989)) b!6553968))

(assert (= (or b!6553970 b!6553972 b!6553973) bm!570034))

(assert (=> b!6553971 m!7335972))

(assert (=> b!6553971 m!7335972))

(declare-fun m!7336270 () Bool)

(assert (=> b!6553971 m!7336270))

(assert (=> b!6553971 m!7335976))

(assert (=> b!6553971 m!7336270))

(assert (=> b!6553971 m!7335976))

(declare-fun m!7336272 () Bool)

(assert (=> b!6553971 m!7336272))

(assert (=> b!6553967 m!7335976))

(assert (=> b!6553967 m!7335976))

(assert (=> b!6553967 m!7336026))

(assert (=> b!6553963 m!7335972))

(assert (=> d!2056698 m!7335968))

(declare-fun m!7336274 () Bool)

(assert (=> d!2056698 m!7336274))

(assert (=> b!6553968 m!7335972))

(assert (=> bm!570034 m!7335968))

(declare-fun m!7336276 () Bool)

(assert (=> b!6553962 m!7336276))

(assert (=> b!6553969 m!7335976))

(assert (=> b!6553969 m!7335976))

(assert (=> b!6553969 m!7336026))

(assert (=> b!6553399 d!2056698))

(declare-fun bs!1672825 () Bool)

(declare-fun b!6553983 () Bool)

(assert (= bs!1672825 (and b!6553983 b!6553411)))

(declare-fun lambda!364198 () Int)

(assert (=> bs!1672825 (not (= lambda!364198 lambda!364124))))

(declare-fun bs!1672826 () Bool)

(assert (= bs!1672826 (and b!6553983 d!2056662)))

(assert (=> bs!1672826 (not (= lambda!364198 lambda!364188))))

(declare-fun bs!1672827 () Bool)

(assert (= bs!1672827 (and b!6553983 d!2056684)))

(assert (=> bs!1672827 (not (= lambda!364198 lambda!364195))))

(assert (=> bs!1672826 (not (= lambda!364198 lambda!364189))))

(declare-fun bs!1672828 () Bool)

(assert (= bs!1672828 (and b!6553983 b!6553700)))

(assert (=> bs!1672828 (not (= lambda!364198 lambda!364171))))

(declare-fun bs!1672829 () Bool)

(assert (= bs!1672829 (and b!6553983 b!6553399)))

(assert (=> bs!1672829 (not (= lambda!364198 lambda!364129))))

(assert (=> bs!1672829 (not (= lambda!364198 lambda!364130))))

(declare-fun bs!1672830 () Bool)

(assert (= bs!1672830 (and b!6553983 b!6553699)))

(assert (=> bs!1672830 (= (and (= (reg!16757 lt!2403317) (reg!16757 r!7292)) (= lt!2403317 r!7292)) (= lambda!364198 lambda!364170))))

(assert (=> bs!1672825 (not (= lambda!364198 lambda!364125))))

(assert (=> b!6553983 true))

(assert (=> b!6553983 true))

(declare-fun bs!1672831 () Bool)

(declare-fun b!6553984 () Bool)

(assert (= bs!1672831 (and b!6553984 b!6553411)))

(declare-fun lambda!364199 () Int)

(assert (=> bs!1672831 (not (= lambda!364199 lambda!364124))))

(declare-fun bs!1672832 () Bool)

(assert (= bs!1672832 (and b!6553984 d!2056662)))

(assert (=> bs!1672832 (not (= lambda!364199 lambda!364188))))

(declare-fun bs!1672833 () Bool)

(assert (= bs!1672833 (and b!6553984 d!2056684)))

(assert (=> bs!1672833 (not (= lambda!364199 lambda!364195))))

(declare-fun bs!1672834 () Bool)

(assert (= bs!1672834 (and b!6553984 b!6553983)))

(assert (=> bs!1672834 (not (= lambda!364199 lambda!364198))))

(assert (=> bs!1672832 (= (and (= (regOne!33368 lt!2403317) lt!2403289) (= (regTwo!33368 lt!2403317) (regTwo!33368 r!7292))) (= lambda!364199 lambda!364189))))

(declare-fun bs!1672835 () Bool)

(assert (= bs!1672835 (and b!6553984 b!6553700)))

(assert (=> bs!1672835 (= (and (= (regOne!33368 lt!2403317) (regOne!33368 r!7292)) (= (regTwo!33368 lt!2403317) (regTwo!33368 r!7292))) (= lambda!364199 lambda!364171))))

(declare-fun bs!1672836 () Bool)

(assert (= bs!1672836 (and b!6553984 b!6553399)))

(assert (=> bs!1672836 (not (= lambda!364199 lambda!364129))))

(assert (=> bs!1672836 (= (and (= (regOne!33368 lt!2403317) lt!2403289) (= (regTwo!33368 lt!2403317) (regTwo!33368 r!7292))) (= lambda!364199 lambda!364130))))

(declare-fun bs!1672837 () Bool)

(assert (= bs!1672837 (and b!6553984 b!6553699)))

(assert (=> bs!1672837 (not (= lambda!364199 lambda!364170))))

(assert (=> bs!1672831 (= (and (= (regOne!33368 lt!2403317) (regOne!33368 r!7292)) (= (regTwo!33368 lt!2403317) (regTwo!33368 r!7292))) (= lambda!364199 lambda!364125))))

(assert (=> b!6553984 true))

(assert (=> b!6553984 true))

(declare-fun b!6553975 () Bool)

(declare-fun e!3967904 () Bool)

(declare-fun e!3967905 () Bool)

(assert (=> b!6553975 (= e!3967904 e!3967905)))

(declare-fun c!1204015 () Bool)

(assert (=> b!6553975 (= c!1204015 (is-Star!16428 lt!2403317))))

(declare-fun bm!570036 () Bool)

(declare-fun call!570041 () Bool)

(assert (=> bm!570036 (= call!570041 (Exists!3498 (ite c!1204015 lambda!364198 lambda!364199)))))

(declare-fun b!6553976 () Bool)

(declare-fun res!2688997 () Bool)

(declare-fun e!3967907 () Bool)

(assert (=> b!6553976 (=> res!2688997 e!3967907)))

(declare-fun call!570040 () Bool)

(assert (=> b!6553976 (= res!2688997 call!570040)))

(assert (=> b!6553976 (= e!3967905 e!3967907)))

(declare-fun b!6553977 () Bool)

(declare-fun e!3967902 () Bool)

(assert (=> b!6553977 (= e!3967902 (= s!2326 (Cons!65460 (c!1203875 lt!2403317) Nil!65460)))))

(declare-fun b!6553978 () Bool)

(declare-fun e!3967901 () Bool)

(declare-fun e!3967906 () Bool)

(assert (=> b!6553978 (= e!3967901 e!3967906)))

(declare-fun res!2688999 () Bool)

(assert (=> b!6553978 (= res!2688999 (not (is-EmptyLang!16428 lt!2403317)))))

(assert (=> b!6553978 (=> (not res!2688999) (not e!3967906))))

(declare-fun b!6553979 () Bool)

(declare-fun c!1204016 () Bool)

(assert (=> b!6553979 (= c!1204016 (is-ElementMatch!16428 lt!2403317))))

(assert (=> b!6553979 (= e!3967906 e!3967902)))

(declare-fun b!6553980 () Bool)

(declare-fun c!1204014 () Bool)

(assert (=> b!6553980 (= c!1204014 (is-Union!16428 lt!2403317))))

(assert (=> b!6553980 (= e!3967902 e!3967904)))

(declare-fun b!6553981 () Bool)

(assert (=> b!6553981 (= e!3967901 call!570040)))

(declare-fun d!2056700 () Bool)

(declare-fun c!1204013 () Bool)

(assert (=> d!2056700 (= c!1204013 (is-EmptyExpr!16428 lt!2403317))))

(assert (=> d!2056700 (= (matchRSpec!3529 lt!2403317 s!2326) e!3967901)))

(declare-fun bm!570035 () Bool)

(assert (=> bm!570035 (= call!570040 (isEmpty!37695 s!2326))))

(declare-fun b!6553982 () Bool)

(declare-fun e!3967903 () Bool)

(assert (=> b!6553982 (= e!3967903 (matchRSpec!3529 (regTwo!33369 lt!2403317) s!2326))))

(assert (=> b!6553983 (= e!3967907 call!570041)))

(assert (=> b!6553984 (= e!3967905 call!570041)))

(declare-fun b!6553985 () Bool)

(assert (=> b!6553985 (= e!3967904 e!3967903)))

(declare-fun res!2688998 () Bool)

(assert (=> b!6553985 (= res!2688998 (matchRSpec!3529 (regOne!33369 lt!2403317) s!2326))))

(assert (=> b!6553985 (=> res!2688998 e!3967903)))

(assert (= (and d!2056700 c!1204013) b!6553981))

(assert (= (and d!2056700 (not c!1204013)) b!6553978))

(assert (= (and b!6553978 res!2688999) b!6553979))

(assert (= (and b!6553979 c!1204016) b!6553977))

(assert (= (and b!6553979 (not c!1204016)) b!6553980))

(assert (= (and b!6553980 c!1204014) b!6553985))

(assert (= (and b!6553980 (not c!1204014)) b!6553975))

(assert (= (and b!6553985 (not res!2688998)) b!6553982))

(assert (= (and b!6553975 c!1204015) b!6553976))

(assert (= (and b!6553975 (not c!1204015)) b!6553984))

(assert (= (and b!6553976 (not res!2688997)) b!6553983))

(assert (= (or b!6553983 b!6553984) bm!570036))

(assert (= (or b!6553981 b!6553976) bm!570035))

(declare-fun m!7336278 () Bool)

(assert (=> bm!570036 m!7336278))

(assert (=> bm!570035 m!7335968))

(declare-fun m!7336280 () Bool)

(assert (=> b!6553982 m!7336280))

(declare-fun m!7336282 () Bool)

(assert (=> b!6553985 m!7336282))

(assert (=> b!6553399 d!2056700))

(declare-fun d!2056702 () Bool)

(assert (=> d!2056702 (= (get!22724 lt!2403295) (v!52503 lt!2403295))))

(assert (=> b!6553399 d!2056702))

(declare-fun bs!1672838 () Bool)

(declare-fun d!2056704 () Bool)

(assert (= bs!1672838 (and d!2056704 d!2056648)))

(declare-fun lambda!364204 () Int)

(assert (=> bs!1672838 (= lambda!364204 lambda!364180)))

(declare-fun bs!1672839 () Bool)

(assert (= bs!1672839 (and d!2056704 d!2056638)))

(assert (=> bs!1672839 (= lambda!364204 lambda!364174)))

(declare-fun bs!1672840 () Bool)

(assert (= bs!1672840 (and d!2056704 d!2056652)))

(assert (=> bs!1672840 (= lambda!364204 lambda!364183)))

(declare-fun bs!1672841 () Bool)

(assert (= bs!1672841 (and d!2056704 d!2056642)))

(assert (=> bs!1672841 (= lambda!364204 lambda!364177)))

(declare-fun bs!1672847 () Bool)

(assert (= bs!1672847 (and d!2056704 b!6553392)))

(assert (=> bs!1672847 (= lambda!364204 lambda!364128)))

(assert (=> d!2056704 (matchZipper!2440 (set.insert (Context!11625 (++!14558 (exprs!6312 lt!2403261) (exprs!6312 lt!2403313))) (as set.empty (Set Context!11624))) (++!14559 (_1!36710 lt!2403310) (_2!36710 lt!2403310)))))

(declare-fun lt!2403554 () Unit!159047)

(assert (=> d!2056704 (= lt!2403554 (lemmaConcatPreservesForall!401 (exprs!6312 lt!2403261) (exprs!6312 lt!2403313) lambda!364204))))

(declare-fun lt!2403553 () Unit!159047)

(declare-fun choose!48803 (Context!11624 Context!11624 List!65584 List!65584) Unit!159047)

(assert (=> d!2056704 (= lt!2403553 (choose!48803 lt!2403261 lt!2403313 (_1!36710 lt!2403310) (_2!36710 lt!2403310)))))

(assert (=> d!2056704 (matchZipper!2440 (set.insert lt!2403261 (as set.empty (Set Context!11624))) (_1!36710 lt!2403310))))

(assert (=> d!2056704 (= (lemmaConcatenateContextMatchesConcatOfStrings!209 lt!2403261 lt!2403313 (_1!36710 lt!2403310) (_2!36710 lt!2403310)) lt!2403553)))

(declare-fun bs!1672848 () Bool)

(assert (= bs!1672848 d!2056704))

(declare-fun m!7336292 () Bool)

(assert (=> bs!1672848 m!7336292))

(assert (=> bs!1672848 m!7335762))

(declare-fun m!7336294 () Bool)

(assert (=> bs!1672848 m!7336294))

(assert (=> bs!1672848 m!7336292))

(declare-fun m!7336296 () Bool)

(assert (=> bs!1672848 m!7336296))

(assert (=> bs!1672848 m!7335692))

(declare-fun m!7336298 () Bool)

(assert (=> bs!1672848 m!7336298))

(declare-fun m!7336300 () Bool)

(assert (=> bs!1672848 m!7336300))

(declare-fun m!7336302 () Bool)

(assert (=> bs!1672848 m!7336302))

(assert (=> bs!1672848 m!7335762))

(assert (=> bs!1672848 m!7335692))

(assert (=> b!6553399 d!2056704))

(declare-fun d!2056708 () Bool)

(declare-fun c!1204030 () Bool)

(assert (=> d!2056708 (= c!1204030 (isEmpty!37695 lt!2403316))))

(declare-fun e!3967940 () Bool)

(assert (=> d!2056708 (= (matchZipper!2440 (set.insert (Context!11625 (++!14558 lt!2403314 lt!2403275)) (as set.empty (Set Context!11624))) lt!2403316) e!3967940)))

(declare-fun b!6554049 () Bool)

(assert (=> b!6554049 (= e!3967940 (nullableZipper!2173 (set.insert (Context!11625 (++!14558 lt!2403314 lt!2403275)) (as set.empty (Set Context!11624)))))))

(declare-fun b!6554050 () Bool)

(assert (=> b!6554050 (= e!3967940 (matchZipper!2440 (derivationStepZipper!2394 (set.insert (Context!11625 (++!14558 lt!2403314 lt!2403275)) (as set.empty (Set Context!11624))) (head!13307 lt!2403316)) (tail!12392 lt!2403316)))))

(assert (= (and d!2056708 c!1204030) b!6554049))

(assert (= (and d!2056708 (not c!1204030)) b!6554050))

(declare-fun m!7336312 () Bool)

(assert (=> d!2056708 m!7336312))

(assert (=> b!6554049 m!7335680))

(declare-fun m!7336316 () Bool)

(assert (=> b!6554049 m!7336316))

(declare-fun m!7336318 () Bool)

(assert (=> b!6554050 m!7336318))

(assert (=> b!6554050 m!7335680))

(assert (=> b!6554050 m!7336318))

(declare-fun m!7336322 () Bool)

(assert (=> b!6554050 m!7336322))

(declare-fun m!7336324 () Bool)

(assert (=> b!6554050 m!7336324))

(assert (=> b!6554050 m!7336322))

(assert (=> b!6554050 m!7336324))

(declare-fun m!7336328 () Bool)

(assert (=> b!6554050 m!7336328))

(assert (=> b!6553399 d!2056708))

(declare-fun b!6554051 () Bool)

(declare-fun e!3967944 () Bool)

(declare-fun e!3967945 () Bool)

(assert (=> b!6554051 (= e!3967944 e!3967945)))

(declare-fun res!2689043 () Bool)

(assert (=> b!6554051 (=> (not res!2689043) (not e!3967945))))

(declare-fun lt!2403558 () Bool)

(assert (=> b!6554051 (= res!2689043 (not lt!2403558))))

(declare-fun bm!570046 () Bool)

(declare-fun call!570051 () Bool)

(assert (=> bm!570046 (= call!570051 (isEmpty!37695 lt!2403316))))

(declare-fun d!2056710 () Bool)

(declare-fun e!3967943 () Bool)

(assert (=> d!2056710 e!3967943))

(declare-fun c!1204031 () Bool)

(assert (=> d!2056710 (= c!1204031 (is-EmptyExpr!16428 lt!2403304))))

(declare-fun e!3967947 () Bool)

(assert (=> d!2056710 (= lt!2403558 e!3967947)))

(declare-fun c!1204032 () Bool)

(assert (=> d!2056710 (= c!1204032 (isEmpty!37695 lt!2403316))))

(assert (=> d!2056710 (validRegex!8164 lt!2403304)))

(assert (=> d!2056710 (= (matchR!8611 lt!2403304 lt!2403316) lt!2403558)))

(declare-fun b!6554052 () Bool)

(assert (=> b!6554052 (= e!3967947 (nullable!6421 lt!2403304))))

(declare-fun b!6554053 () Bool)

(declare-fun e!3967946 () Bool)

(assert (=> b!6554053 (= e!3967946 (= (head!13307 lt!2403316) (c!1203875 lt!2403304)))))

(declare-fun b!6554054 () Bool)

(declare-fun e!3967941 () Bool)

(assert (=> b!6554054 (= e!3967941 (not lt!2403558))))

(declare-fun b!6554055 () Bool)

(declare-fun res!2689044 () Bool)

(assert (=> b!6554055 (=> res!2689044 e!3967944)))

(assert (=> b!6554055 (= res!2689044 (not (is-ElementMatch!16428 lt!2403304)))))

(assert (=> b!6554055 (= e!3967941 e!3967944)))

(declare-fun b!6554056 () Bool)

(assert (=> b!6554056 (= e!3967943 e!3967941)))

(declare-fun c!1204033 () Bool)

(assert (=> b!6554056 (= c!1204033 (is-EmptyLang!16428 lt!2403304))))

(declare-fun b!6554057 () Bool)

(declare-fun res!2689037 () Bool)

(declare-fun e!3967942 () Bool)

(assert (=> b!6554057 (=> res!2689037 e!3967942)))

(assert (=> b!6554057 (= res!2689037 (not (isEmpty!37695 (tail!12392 lt!2403316))))))

(declare-fun b!6554058 () Bool)

(assert (=> b!6554058 (= e!3967942 (not (= (head!13307 lt!2403316) (c!1203875 lt!2403304))))))

(declare-fun b!6554059 () Bool)

(declare-fun res!2689041 () Bool)

(assert (=> b!6554059 (=> (not res!2689041) (not e!3967946))))

(assert (=> b!6554059 (= res!2689041 (isEmpty!37695 (tail!12392 lt!2403316)))))

(declare-fun b!6554060 () Bool)

(assert (=> b!6554060 (= e!3967943 (= lt!2403558 call!570051))))

(declare-fun b!6554061 () Bool)

(assert (=> b!6554061 (= e!3967947 (matchR!8611 (derivativeStep!5112 lt!2403304 (head!13307 lt!2403316)) (tail!12392 lt!2403316)))))

(declare-fun b!6554062 () Bool)

(assert (=> b!6554062 (= e!3967945 e!3967942)))

(declare-fun res!2689038 () Bool)

(assert (=> b!6554062 (=> res!2689038 e!3967942)))

(assert (=> b!6554062 (= res!2689038 call!570051)))

(declare-fun b!6554063 () Bool)

(declare-fun res!2689040 () Bool)

(assert (=> b!6554063 (=> (not res!2689040) (not e!3967946))))

(assert (=> b!6554063 (= res!2689040 (not call!570051))))

(declare-fun b!6554064 () Bool)

(declare-fun res!2689042 () Bool)

(assert (=> b!6554064 (=> res!2689042 e!3967944)))

(assert (=> b!6554064 (= res!2689042 e!3967946)))

(declare-fun res!2689039 () Bool)

(assert (=> b!6554064 (=> (not res!2689039) (not e!3967946))))

(assert (=> b!6554064 (= res!2689039 lt!2403558)))

(assert (= (and d!2056710 c!1204032) b!6554052))

(assert (= (and d!2056710 (not c!1204032)) b!6554061))

(assert (= (and d!2056710 c!1204031) b!6554060))

(assert (= (and d!2056710 (not c!1204031)) b!6554056))

(assert (= (and b!6554056 c!1204033) b!6554054))

(assert (= (and b!6554056 (not c!1204033)) b!6554055))

(assert (= (and b!6554055 (not res!2689044)) b!6554064))

(assert (= (and b!6554064 res!2689039) b!6554063))

(assert (= (and b!6554063 res!2689040) b!6554059))

(assert (= (and b!6554059 res!2689041) b!6554053))

(assert (= (and b!6554064 (not res!2689042)) b!6554051))

(assert (= (and b!6554051 res!2689043) b!6554062))

(assert (= (and b!6554062 (not res!2689038)) b!6554057))

(assert (= (and b!6554057 (not res!2689037)) b!6554058))

(assert (= (or b!6554060 b!6554062 b!6554063) bm!570046))

(assert (=> b!6554061 m!7336318))

(assert (=> b!6554061 m!7336318))

(declare-fun m!7336330 () Bool)

(assert (=> b!6554061 m!7336330))

(assert (=> b!6554061 m!7336324))

(assert (=> b!6554061 m!7336330))

(assert (=> b!6554061 m!7336324))

(declare-fun m!7336332 () Bool)

(assert (=> b!6554061 m!7336332))

(assert (=> b!6554057 m!7336324))

(assert (=> b!6554057 m!7336324))

(declare-fun m!7336334 () Bool)

(assert (=> b!6554057 m!7336334))

(assert (=> b!6554053 m!7336318))

(assert (=> d!2056710 m!7336312))

(declare-fun m!7336336 () Bool)

(assert (=> d!2056710 m!7336336))

(assert (=> b!6554058 m!7336318))

(assert (=> bm!570046 m!7336312))

(declare-fun m!7336338 () Bool)

(assert (=> b!6554052 m!7336338))

(assert (=> b!6554059 m!7336324))

(assert (=> b!6554059 m!7336324))

(assert (=> b!6554059 m!7336334))

(assert (=> b!6553399 d!2056710))

(declare-fun d!2056714 () Bool)

(assert (=> d!2056714 (= (matchR!8611 lt!2403317 s!2326) (matchRSpec!3529 lt!2403317 s!2326))))

(declare-fun lt!2403559 () Unit!159047)

(assert (=> d!2056714 (= lt!2403559 (choose!48793 lt!2403317 s!2326))))

(assert (=> d!2056714 (validRegex!8164 lt!2403317)))

(assert (=> d!2056714 (= (mainMatchTheorem!3529 lt!2403317 s!2326) lt!2403559)))

(declare-fun bs!1672849 () Bool)

(assert (= bs!1672849 d!2056714))

(assert (=> bs!1672849 m!7335742))

(assert (=> bs!1672849 m!7335736))

(declare-fun m!7336340 () Bool)

(assert (=> bs!1672849 m!7336340))

(assert (=> bs!1672849 m!7336274))

(assert (=> b!6553399 d!2056714))

(declare-fun b!6554065 () Bool)

(declare-fun e!3967951 () Bool)

(declare-fun e!3967952 () Bool)

(assert (=> b!6554065 (= e!3967951 e!3967952)))

(declare-fun res!2689051 () Bool)

(assert (=> b!6554065 (=> (not res!2689051) (not e!3967952))))

(declare-fun lt!2403560 () Bool)

(assert (=> b!6554065 (= res!2689051 (not lt!2403560))))

(declare-fun bm!570047 () Bool)

(declare-fun call!570052 () Bool)

(assert (=> bm!570047 (= call!570052 (isEmpty!37695 (_1!36710 lt!2403292)))))

(declare-fun d!2056716 () Bool)

(declare-fun e!3967950 () Bool)

(assert (=> d!2056716 e!3967950))

(declare-fun c!1204034 () Bool)

(assert (=> d!2056716 (= c!1204034 (is-EmptyExpr!16428 lt!2403289))))

(declare-fun e!3967954 () Bool)

(assert (=> d!2056716 (= lt!2403560 e!3967954)))

(declare-fun c!1204035 () Bool)

(assert (=> d!2056716 (= c!1204035 (isEmpty!37695 (_1!36710 lt!2403292)))))

(assert (=> d!2056716 (validRegex!8164 lt!2403289)))

(assert (=> d!2056716 (= (matchR!8611 lt!2403289 (_1!36710 lt!2403292)) lt!2403560)))

(declare-fun b!6554066 () Bool)

(assert (=> b!6554066 (= e!3967954 (nullable!6421 lt!2403289))))

(declare-fun b!6554067 () Bool)

(declare-fun e!3967953 () Bool)

(assert (=> b!6554067 (= e!3967953 (= (head!13307 (_1!36710 lt!2403292)) (c!1203875 lt!2403289)))))

(declare-fun b!6554068 () Bool)

(declare-fun e!3967948 () Bool)

(assert (=> b!6554068 (= e!3967948 (not lt!2403560))))

(declare-fun b!6554069 () Bool)

(declare-fun res!2689052 () Bool)

(assert (=> b!6554069 (=> res!2689052 e!3967951)))

(assert (=> b!6554069 (= res!2689052 (not (is-ElementMatch!16428 lt!2403289)))))

(assert (=> b!6554069 (= e!3967948 e!3967951)))

(declare-fun b!6554070 () Bool)

(assert (=> b!6554070 (= e!3967950 e!3967948)))

(declare-fun c!1204036 () Bool)

(assert (=> b!6554070 (= c!1204036 (is-EmptyLang!16428 lt!2403289))))

(declare-fun b!6554071 () Bool)

(declare-fun res!2689045 () Bool)

(declare-fun e!3967949 () Bool)

(assert (=> b!6554071 (=> res!2689045 e!3967949)))

(assert (=> b!6554071 (= res!2689045 (not (isEmpty!37695 (tail!12392 (_1!36710 lt!2403292)))))))

(declare-fun b!6554072 () Bool)

(assert (=> b!6554072 (= e!3967949 (not (= (head!13307 (_1!36710 lt!2403292)) (c!1203875 lt!2403289))))))

(declare-fun b!6554073 () Bool)

(declare-fun res!2689049 () Bool)

(assert (=> b!6554073 (=> (not res!2689049) (not e!3967953))))

(assert (=> b!6554073 (= res!2689049 (isEmpty!37695 (tail!12392 (_1!36710 lt!2403292))))))

(declare-fun b!6554074 () Bool)

(assert (=> b!6554074 (= e!3967950 (= lt!2403560 call!570052))))

(declare-fun b!6554075 () Bool)

(assert (=> b!6554075 (= e!3967954 (matchR!8611 (derivativeStep!5112 lt!2403289 (head!13307 (_1!36710 lt!2403292))) (tail!12392 (_1!36710 lt!2403292))))))

(declare-fun b!6554076 () Bool)

(assert (=> b!6554076 (= e!3967952 e!3967949)))

(declare-fun res!2689046 () Bool)

(assert (=> b!6554076 (=> res!2689046 e!3967949)))

(assert (=> b!6554076 (= res!2689046 call!570052)))

(declare-fun b!6554077 () Bool)

(declare-fun res!2689048 () Bool)

(assert (=> b!6554077 (=> (not res!2689048) (not e!3967953))))

(assert (=> b!6554077 (= res!2689048 (not call!570052))))

(declare-fun b!6554078 () Bool)

(declare-fun res!2689050 () Bool)

(assert (=> b!6554078 (=> res!2689050 e!3967951)))

(assert (=> b!6554078 (= res!2689050 e!3967953)))

(declare-fun res!2689047 () Bool)

(assert (=> b!6554078 (=> (not res!2689047) (not e!3967953))))

(assert (=> b!6554078 (= res!2689047 lt!2403560)))

(assert (= (and d!2056716 c!1204035) b!6554066))

(assert (= (and d!2056716 (not c!1204035)) b!6554075))

(assert (= (and d!2056716 c!1204034) b!6554074))

(assert (= (and d!2056716 (not c!1204034)) b!6554070))

(assert (= (and b!6554070 c!1204036) b!6554068))

(assert (= (and b!6554070 (not c!1204036)) b!6554069))

(assert (= (and b!6554069 (not res!2689052)) b!6554078))

(assert (= (and b!6554078 res!2689047) b!6554077))

(assert (= (and b!6554077 res!2689048) b!6554073))

(assert (= (and b!6554073 res!2689049) b!6554067))

(assert (= (and b!6554078 (not res!2689050)) b!6554065))

(assert (= (and b!6554065 res!2689051) b!6554076))

(assert (= (and b!6554076 (not res!2689046)) b!6554071))

(assert (= (and b!6554071 (not res!2689045)) b!6554072))

(assert (= (or b!6554074 b!6554076 b!6554077) bm!570047))

(declare-fun m!7336342 () Bool)

(assert (=> b!6554075 m!7336342))

(assert (=> b!6554075 m!7336342))

(declare-fun m!7336344 () Bool)

(assert (=> b!6554075 m!7336344))

(declare-fun m!7336346 () Bool)

(assert (=> b!6554075 m!7336346))

(assert (=> b!6554075 m!7336344))

(assert (=> b!6554075 m!7336346))

(declare-fun m!7336348 () Bool)

(assert (=> b!6554075 m!7336348))

(assert (=> b!6554071 m!7336346))

(assert (=> b!6554071 m!7336346))

(declare-fun m!7336350 () Bool)

(assert (=> b!6554071 m!7336350))

(assert (=> b!6554067 m!7336342))

(declare-fun m!7336352 () Bool)

(assert (=> d!2056716 m!7336352))

(assert (=> d!2056716 m!7336184))

(assert (=> b!6554072 m!7336342))

(assert (=> bm!570047 m!7336352))

(declare-fun m!7336354 () Bool)

(assert (=> b!6554066 m!7336354))

(assert (=> b!6554073 m!7336346))

(assert (=> b!6554073 m!7336346))

(assert (=> b!6554073 m!7336350))

(assert (=> b!6553399 d!2056716))

(declare-fun b!6554124 () Bool)

(declare-fun lt!2403574 () Unit!159047)

(declare-fun lt!2403576 () Unit!159047)

(assert (=> b!6554124 (= lt!2403574 lt!2403576)))

(assert (=> b!6554124 (= (++!14559 (++!14559 Nil!65460 (Cons!65460 (h!71908 s!2326) Nil!65460)) (t!379226 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2571 (List!65584 C!33126 List!65584 List!65584) Unit!159047)

(assert (=> b!6554124 (= lt!2403576 (lemmaMoveElementToOtherListKeepsConcatEq!2571 Nil!65460 (h!71908 s!2326) (t!379226 s!2326) s!2326))))

(declare-fun e!3967983 () Option!16319)

(assert (=> b!6554124 (= e!3967983 (findConcatSeparation!2733 lt!2403289 (regTwo!33368 r!7292) (++!14559 Nil!65460 (Cons!65460 (h!71908 s!2326) Nil!65460)) (t!379226 s!2326) s!2326))))

(declare-fun b!6554125 () Bool)

(assert (=> b!6554125 (= e!3967983 None!16318)))

(declare-fun b!6554126 () Bool)

(declare-fun e!3967980 () Bool)

(declare-fun lt!2403575 () Option!16319)

(assert (=> b!6554126 (= e!3967980 (not (isDefined!13022 lt!2403575)))))

(declare-fun b!6554127 () Bool)

(declare-fun e!3967981 () Option!16319)

(assert (=> b!6554127 (= e!3967981 (Some!16318 (tuple2!66815 Nil!65460 s!2326)))))

(declare-fun b!6554128 () Bool)

(declare-fun e!3967984 () Bool)

(assert (=> b!6554128 (= e!3967984 (matchR!8611 (regTwo!33368 r!7292) s!2326))))

(declare-fun b!6554129 () Bool)

(declare-fun res!2689074 () Bool)

(declare-fun e!3967982 () Bool)

(assert (=> b!6554129 (=> (not res!2689074) (not e!3967982))))

(assert (=> b!6554129 (= res!2689074 (matchR!8611 lt!2403289 (_1!36710 (get!22724 lt!2403575))))))

(declare-fun b!6554130 () Bool)

(assert (=> b!6554130 (= e!3967981 e!3967983)))

(declare-fun c!1204050 () Bool)

(assert (=> b!6554130 (= c!1204050 (is-Nil!65460 s!2326))))

(declare-fun b!6554131 () Bool)

(declare-fun res!2689075 () Bool)

(assert (=> b!6554131 (=> (not res!2689075) (not e!3967982))))

(assert (=> b!6554131 (= res!2689075 (matchR!8611 (regTwo!33368 r!7292) (_2!36710 (get!22724 lt!2403575))))))

(declare-fun b!6554132 () Bool)

(assert (=> b!6554132 (= e!3967982 (= (++!14559 (_1!36710 (get!22724 lt!2403575)) (_2!36710 (get!22724 lt!2403575))) s!2326))))

(declare-fun d!2056718 () Bool)

(assert (=> d!2056718 e!3967980))

(declare-fun res!2689077 () Bool)

(assert (=> d!2056718 (=> res!2689077 e!3967980)))

(assert (=> d!2056718 (= res!2689077 e!3967982)))

(declare-fun res!2689078 () Bool)

(assert (=> d!2056718 (=> (not res!2689078) (not e!3967982))))

(assert (=> d!2056718 (= res!2689078 (isDefined!13022 lt!2403575))))

(assert (=> d!2056718 (= lt!2403575 e!3967981)))

(declare-fun c!1204049 () Bool)

(assert (=> d!2056718 (= c!1204049 e!3967984)))

(declare-fun res!2689076 () Bool)

(assert (=> d!2056718 (=> (not res!2689076) (not e!3967984))))

(assert (=> d!2056718 (= res!2689076 (matchR!8611 lt!2403289 Nil!65460))))

(assert (=> d!2056718 (validRegex!8164 lt!2403289)))

(assert (=> d!2056718 (= (findConcatSeparation!2733 lt!2403289 (regTwo!33368 r!7292) Nil!65460 s!2326 s!2326) lt!2403575)))

(assert (= (and d!2056718 res!2689076) b!6554128))

(assert (= (and d!2056718 c!1204049) b!6554127))

(assert (= (and d!2056718 (not c!1204049)) b!6554130))

(assert (= (and b!6554130 c!1204050) b!6554125))

(assert (= (and b!6554130 (not c!1204050)) b!6554124))

(assert (= (and d!2056718 res!2689078) b!6554129))

(assert (= (and b!6554129 res!2689074) b!6554131))

(assert (= (and b!6554131 res!2689075) b!6554132))

(assert (= (and d!2056718 (not res!2689077)) b!6554126))

(declare-fun m!7336390 () Bool)

(assert (=> b!6554128 m!7336390))

(declare-fun m!7336392 () Bool)

(assert (=> b!6554129 m!7336392))

(declare-fun m!7336394 () Bool)

(assert (=> b!6554129 m!7336394))

(declare-fun m!7336396 () Bool)

(assert (=> b!6554126 m!7336396))

(assert (=> b!6554131 m!7336392))

(declare-fun m!7336398 () Bool)

(assert (=> b!6554131 m!7336398))

(declare-fun m!7336400 () Bool)

(assert (=> b!6554124 m!7336400))

(assert (=> b!6554124 m!7336400))

(declare-fun m!7336402 () Bool)

(assert (=> b!6554124 m!7336402))

(declare-fun m!7336404 () Bool)

(assert (=> b!6554124 m!7336404))

(assert (=> b!6554124 m!7336400))

(declare-fun m!7336406 () Bool)

(assert (=> b!6554124 m!7336406))

(assert (=> d!2056718 m!7336396))

(declare-fun m!7336408 () Bool)

(assert (=> d!2056718 m!7336408))

(assert (=> d!2056718 m!7336184))

(assert (=> b!6554132 m!7336392))

(declare-fun m!7336410 () Bool)

(assert (=> b!6554132 m!7336410))

(assert (=> b!6553399 d!2056718))

(declare-fun d!2056734 () Bool)

(assert (=> d!2056734 (matchR!8611 (Concat!25273 (reg!16757 (regOne!33368 r!7292)) lt!2403267) (++!14559 (_1!36710 lt!2403310) (_2!36710 lt!2403310)))))

(declare-fun lt!2403579 () Unit!159047)

(declare-fun choose!48804 (Regex!16428 Regex!16428 List!65584 List!65584) Unit!159047)

(assert (=> d!2056734 (= lt!2403579 (choose!48804 (reg!16757 (regOne!33368 r!7292)) lt!2403267 (_1!36710 lt!2403310) (_2!36710 lt!2403310)))))

(declare-fun e!3967987 () Bool)

(assert (=> d!2056734 e!3967987))

(declare-fun res!2689081 () Bool)

(assert (=> d!2056734 (=> (not res!2689081) (not e!3967987))))

(assert (=> d!2056734 (= res!2689081 (validRegex!8164 (reg!16757 (regOne!33368 r!7292))))))

(assert (=> d!2056734 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!349 (reg!16757 (regOne!33368 r!7292)) lt!2403267 (_1!36710 lt!2403310) (_2!36710 lt!2403310)) lt!2403579)))

(declare-fun b!6554135 () Bool)

(assert (=> b!6554135 (= e!3967987 (validRegex!8164 lt!2403267))))

(assert (= (and d!2056734 res!2689081) b!6554135))

(assert (=> d!2056734 m!7335762))

(assert (=> d!2056734 m!7335762))

(declare-fun m!7336412 () Bool)

(assert (=> d!2056734 m!7336412))

(declare-fun m!7336414 () Bool)

(assert (=> d!2056734 m!7336414))

(assert (=> d!2056734 m!7335630))

(assert (=> b!6554135 m!7336156))

(assert (=> b!6553399 d!2056734))

(declare-fun d!2056736 () Bool)

(declare-fun lt!2403580 () Regex!16428)

(assert (=> d!2056736 (validRegex!8164 lt!2403580)))

(assert (=> d!2056736 (= lt!2403580 (generalisedUnion!2272 (unfocusZipperList!1849 zl!343)))))

(assert (=> d!2056736 (= (unfocusZipper!2170 zl!343) lt!2403580)))

(declare-fun bs!1672863 () Bool)

(assert (= bs!1672863 d!2056736))

(declare-fun m!7336416 () Bool)

(assert (=> bs!1672863 m!7336416))

(assert (=> bs!1672863 m!7335648))

(assert (=> bs!1672863 m!7335648))

(assert (=> bs!1672863 m!7335650))

(assert (=> b!6553376 d!2056736))

(declare-fun d!2056738 () Bool)

(declare-fun c!1204051 () Bool)

(assert (=> d!2056738 (= c!1204051 (isEmpty!37695 (_1!36710 lt!2403310)))))

(declare-fun e!3967988 () Bool)

(assert (=> d!2056738 (= (matchZipper!2440 lt!2403260 (_1!36710 lt!2403310)) e!3967988)))

(declare-fun b!6554136 () Bool)

(assert (=> b!6554136 (= e!3967988 (nullableZipper!2173 lt!2403260))))

(declare-fun b!6554137 () Bool)

(assert (=> b!6554137 (= e!3967988 (matchZipper!2440 (derivationStepZipper!2394 lt!2403260 (head!13307 (_1!36710 lt!2403310))) (tail!12392 (_1!36710 lt!2403310))))))

(assert (= (and d!2056738 c!1204051) b!6554136))

(assert (= (and d!2056738 (not c!1204051)) b!6554137))

(assert (=> d!2056738 m!7336258))

(declare-fun m!7336418 () Bool)

(assert (=> b!6554136 m!7336418))

(assert (=> b!6554137 m!7336248))

(assert (=> b!6554137 m!7336248))

(declare-fun m!7336420 () Bool)

(assert (=> b!6554137 m!7336420))

(assert (=> b!6554137 m!7336252))

(assert (=> b!6554137 m!7336420))

(assert (=> b!6554137 m!7336252))

(declare-fun m!7336422 () Bool)

(assert (=> b!6554137 m!7336422))

(assert (=> b!6553396 d!2056738))

(declare-fun b!6554138 () Bool)

(declare-fun res!2689085 () Bool)

(declare-fun e!3967993 () Bool)

(assert (=> b!6554138 (=> (not res!2689085) (not e!3967993))))

(declare-fun call!570056 () Bool)

(assert (=> b!6554138 (= res!2689085 call!570056)))

(declare-fun e!3967994 () Bool)

(assert (=> b!6554138 (= e!3967994 e!3967993)))

(declare-fun bm!570051 () Bool)

(declare-fun call!570058 () Bool)

(declare-fun call!570057 () Bool)

(assert (=> bm!570051 (= call!570058 call!570057)))

(declare-fun b!6554139 () Bool)

(declare-fun res!2689082 () Bool)

(declare-fun e!3967989 () Bool)

(assert (=> b!6554139 (=> res!2689082 e!3967989)))

(assert (=> b!6554139 (= res!2689082 (not (is-Concat!25273 (reg!16757 (regOne!33368 r!7292)))))))

(assert (=> b!6554139 (= e!3967994 e!3967989)))

(declare-fun b!6554140 () Bool)

(declare-fun e!3967991 () Bool)

(assert (=> b!6554140 (= e!3967991 call!570057)))

(declare-fun c!1204053 () Bool)

(declare-fun c!1204052 () Bool)

(declare-fun bm!570052 () Bool)

(assert (=> bm!570052 (= call!570057 (validRegex!8164 (ite c!1204052 (reg!16757 (reg!16757 (regOne!33368 r!7292))) (ite c!1204053 (regTwo!33369 (reg!16757 (regOne!33368 r!7292))) (regTwo!33368 (reg!16757 (regOne!33368 r!7292)))))))))

(declare-fun b!6554141 () Bool)

(declare-fun e!3967995 () Bool)

(assert (=> b!6554141 (= e!3967995 e!3967991)))

(declare-fun res!2689086 () Bool)

(assert (=> b!6554141 (= res!2689086 (not (nullable!6421 (reg!16757 (reg!16757 (regOne!33368 r!7292))))))))

(assert (=> b!6554141 (=> (not res!2689086) (not e!3967991))))

(declare-fun b!6554142 () Bool)

(declare-fun e!3967990 () Bool)

(assert (=> b!6554142 (= e!3967990 call!570058)))

(declare-fun b!6554143 () Bool)

(assert (=> b!6554143 (= e!3967989 e!3967990)))

(declare-fun res!2689083 () Bool)

(assert (=> b!6554143 (=> (not res!2689083) (not e!3967990))))

(assert (=> b!6554143 (= res!2689083 call!570056)))

(declare-fun b!6554144 () Bool)

(declare-fun e!3967992 () Bool)

(assert (=> b!6554144 (= e!3967992 e!3967995)))

(assert (=> b!6554144 (= c!1204052 (is-Star!16428 (reg!16757 (regOne!33368 r!7292))))))

(declare-fun bm!570053 () Bool)

(assert (=> bm!570053 (= call!570056 (validRegex!8164 (ite c!1204053 (regOne!33369 (reg!16757 (regOne!33368 r!7292))) (regOne!33368 (reg!16757 (regOne!33368 r!7292))))))))

(declare-fun d!2056740 () Bool)

(declare-fun res!2689084 () Bool)

(assert (=> d!2056740 (=> res!2689084 e!3967992)))

(assert (=> d!2056740 (= res!2689084 (is-ElementMatch!16428 (reg!16757 (regOne!33368 r!7292))))))

(assert (=> d!2056740 (= (validRegex!8164 (reg!16757 (regOne!33368 r!7292))) e!3967992)))

(declare-fun b!6554145 () Bool)

(assert (=> b!6554145 (= e!3967995 e!3967994)))

(assert (=> b!6554145 (= c!1204053 (is-Union!16428 (reg!16757 (regOne!33368 r!7292))))))

(declare-fun b!6554146 () Bool)

(assert (=> b!6554146 (= e!3967993 call!570058)))

(assert (= (and d!2056740 (not res!2689084)) b!6554144))

(assert (= (and b!6554144 c!1204052) b!6554141))

(assert (= (and b!6554144 (not c!1204052)) b!6554145))

(assert (= (and b!6554141 res!2689086) b!6554140))

(assert (= (and b!6554145 c!1204053) b!6554138))

(assert (= (and b!6554145 (not c!1204053)) b!6554139))

(assert (= (and b!6554138 res!2689085) b!6554146))

(assert (= (and b!6554139 (not res!2689082)) b!6554143))

(assert (= (and b!6554143 res!2689083) b!6554142))

(assert (= (or b!6554146 b!6554142) bm!570051))

(assert (= (or b!6554138 b!6554143) bm!570053))

(assert (= (or b!6554140 bm!570051) bm!570052))

(declare-fun m!7336424 () Bool)

(assert (=> bm!570052 m!7336424))

(declare-fun m!7336426 () Bool)

(assert (=> b!6554141 m!7336426))

(declare-fun m!7336428 () Bool)

(assert (=> bm!570053 m!7336428))

(assert (=> b!6553394 d!2056740))

(declare-fun bs!1672864 () Bool)

(declare-fun b!6554155 () Bool)

(assert (= bs!1672864 (and b!6554155 b!6553984)))

(declare-fun lambda!364209 () Int)

(assert (=> bs!1672864 (not (= lambda!364209 lambda!364199))))

(declare-fun bs!1672865 () Bool)

(assert (= bs!1672865 (and b!6554155 b!6553411)))

(assert (=> bs!1672865 (not (= lambda!364209 lambda!364124))))

(declare-fun bs!1672866 () Bool)

(assert (= bs!1672866 (and b!6554155 d!2056662)))

(assert (=> bs!1672866 (not (= lambda!364209 lambda!364188))))

(declare-fun bs!1672867 () Bool)

(assert (= bs!1672867 (and b!6554155 d!2056684)))

(assert (=> bs!1672867 (not (= lambda!364209 lambda!364195))))

(declare-fun bs!1672868 () Bool)

(assert (= bs!1672868 (and b!6554155 b!6553983)))

(assert (=> bs!1672868 (= (and (= (_1!36710 lt!2403292) s!2326) (= (reg!16757 lt!2403289) (reg!16757 lt!2403317)) (= lt!2403289 lt!2403317)) (= lambda!364209 lambda!364198))))

(assert (=> bs!1672866 (not (= lambda!364209 lambda!364189))))

(declare-fun bs!1672869 () Bool)

(assert (= bs!1672869 (and b!6554155 b!6553700)))

(assert (=> bs!1672869 (not (= lambda!364209 lambda!364171))))

(declare-fun bs!1672870 () Bool)

(assert (= bs!1672870 (and b!6554155 b!6553399)))

(assert (=> bs!1672870 (not (= lambda!364209 lambda!364129))))

(assert (=> bs!1672870 (not (= lambda!364209 lambda!364130))))

(declare-fun bs!1672871 () Bool)

(assert (= bs!1672871 (and b!6554155 b!6553699)))

(assert (=> bs!1672871 (= (and (= (_1!36710 lt!2403292) s!2326) (= (reg!16757 lt!2403289) (reg!16757 r!7292)) (= lt!2403289 r!7292)) (= lambda!364209 lambda!364170))))

(assert (=> bs!1672865 (not (= lambda!364209 lambda!364125))))

(assert (=> b!6554155 true))

(assert (=> b!6554155 true))

(declare-fun bs!1672872 () Bool)

(declare-fun b!6554156 () Bool)

(assert (= bs!1672872 (and b!6554156 b!6553984)))

(declare-fun lambda!364210 () Int)

(assert (=> bs!1672872 (= (and (= (_1!36710 lt!2403292) s!2326) (= (regOne!33368 lt!2403289) (regOne!33368 lt!2403317)) (= (regTwo!33368 lt!2403289) (regTwo!33368 lt!2403317))) (= lambda!364210 lambda!364199))))

(declare-fun bs!1672873 () Bool)

(assert (= bs!1672873 (and b!6554156 b!6553411)))

(assert (=> bs!1672873 (not (= lambda!364210 lambda!364124))))

(declare-fun bs!1672874 () Bool)

(assert (= bs!1672874 (and b!6554156 d!2056662)))

(assert (=> bs!1672874 (not (= lambda!364210 lambda!364188))))

(declare-fun bs!1672875 () Bool)

(assert (= bs!1672875 (and b!6554156 d!2056684)))

(assert (=> bs!1672875 (not (= lambda!364210 lambda!364195))))

(declare-fun bs!1672876 () Bool)

(assert (= bs!1672876 (and b!6554156 b!6553983)))

(assert (=> bs!1672876 (not (= lambda!364210 lambda!364198))))

(declare-fun bs!1672877 () Bool)

(assert (= bs!1672877 (and b!6554156 b!6554155)))

(assert (=> bs!1672877 (not (= lambda!364210 lambda!364209))))

(assert (=> bs!1672874 (= (and (= (_1!36710 lt!2403292) s!2326) (= (regOne!33368 lt!2403289) lt!2403289) (= (regTwo!33368 lt!2403289) (regTwo!33368 r!7292))) (= lambda!364210 lambda!364189))))

(declare-fun bs!1672878 () Bool)

(assert (= bs!1672878 (and b!6554156 b!6553700)))

(assert (=> bs!1672878 (= (and (= (_1!36710 lt!2403292) s!2326) (= (regOne!33368 lt!2403289) (regOne!33368 r!7292)) (= (regTwo!33368 lt!2403289) (regTwo!33368 r!7292))) (= lambda!364210 lambda!364171))))

(declare-fun bs!1672879 () Bool)

(assert (= bs!1672879 (and b!6554156 b!6553399)))

(assert (=> bs!1672879 (not (= lambda!364210 lambda!364129))))

(assert (=> bs!1672879 (= (and (= (_1!36710 lt!2403292) s!2326) (= (regOne!33368 lt!2403289) lt!2403289) (= (regTwo!33368 lt!2403289) (regTwo!33368 r!7292))) (= lambda!364210 lambda!364130))))

(declare-fun bs!1672880 () Bool)

(assert (= bs!1672880 (and b!6554156 b!6553699)))

(assert (=> bs!1672880 (not (= lambda!364210 lambda!364170))))

(assert (=> bs!1672873 (= (and (= (_1!36710 lt!2403292) s!2326) (= (regOne!33368 lt!2403289) (regOne!33368 r!7292)) (= (regTwo!33368 lt!2403289) (regTwo!33368 r!7292))) (= lambda!364210 lambda!364125))))

(assert (=> b!6554156 true))

(assert (=> b!6554156 true))

(declare-fun b!6554147 () Bool)

(declare-fun e!3967999 () Bool)

(declare-fun e!3968000 () Bool)

(assert (=> b!6554147 (= e!3967999 e!3968000)))

(declare-fun c!1204056 () Bool)

(assert (=> b!6554147 (= c!1204056 (is-Star!16428 lt!2403289))))

(declare-fun bm!570055 () Bool)

(declare-fun call!570060 () Bool)

(assert (=> bm!570055 (= call!570060 (Exists!3498 (ite c!1204056 lambda!364209 lambda!364210)))))

(declare-fun b!6554148 () Bool)

(declare-fun res!2689087 () Bool)

(declare-fun e!3968002 () Bool)

(assert (=> b!6554148 (=> res!2689087 e!3968002)))

(declare-fun call!570059 () Bool)

(assert (=> b!6554148 (= res!2689087 call!570059)))

(assert (=> b!6554148 (= e!3968000 e!3968002)))

(declare-fun b!6554149 () Bool)

(declare-fun e!3967997 () Bool)

(assert (=> b!6554149 (= e!3967997 (= (_1!36710 lt!2403292) (Cons!65460 (c!1203875 lt!2403289) Nil!65460)))))

(declare-fun b!6554150 () Bool)

(declare-fun e!3967996 () Bool)

(declare-fun e!3968001 () Bool)

(assert (=> b!6554150 (= e!3967996 e!3968001)))

(declare-fun res!2689089 () Bool)

(assert (=> b!6554150 (= res!2689089 (not (is-EmptyLang!16428 lt!2403289)))))

(assert (=> b!6554150 (=> (not res!2689089) (not e!3968001))))

(declare-fun b!6554151 () Bool)

(declare-fun c!1204057 () Bool)

(assert (=> b!6554151 (= c!1204057 (is-ElementMatch!16428 lt!2403289))))

(assert (=> b!6554151 (= e!3968001 e!3967997)))

(declare-fun b!6554152 () Bool)

(declare-fun c!1204055 () Bool)

(assert (=> b!6554152 (= c!1204055 (is-Union!16428 lt!2403289))))

(assert (=> b!6554152 (= e!3967997 e!3967999)))

(declare-fun b!6554153 () Bool)

(assert (=> b!6554153 (= e!3967996 call!570059)))

(declare-fun d!2056742 () Bool)

(declare-fun c!1204054 () Bool)

(assert (=> d!2056742 (= c!1204054 (is-EmptyExpr!16428 lt!2403289))))

(assert (=> d!2056742 (= (matchRSpec!3529 lt!2403289 (_1!36710 lt!2403292)) e!3967996)))

(declare-fun bm!570054 () Bool)

(assert (=> bm!570054 (= call!570059 (isEmpty!37695 (_1!36710 lt!2403292)))))

(declare-fun b!6554154 () Bool)

(declare-fun e!3967998 () Bool)

(assert (=> b!6554154 (= e!3967998 (matchRSpec!3529 (regTwo!33369 lt!2403289) (_1!36710 lt!2403292)))))

(assert (=> b!6554155 (= e!3968002 call!570060)))

(assert (=> b!6554156 (= e!3968000 call!570060)))

(declare-fun b!6554157 () Bool)

(assert (=> b!6554157 (= e!3967999 e!3967998)))

(declare-fun res!2689088 () Bool)

(assert (=> b!6554157 (= res!2689088 (matchRSpec!3529 (regOne!33369 lt!2403289) (_1!36710 lt!2403292)))))

(assert (=> b!6554157 (=> res!2689088 e!3967998)))

(assert (= (and d!2056742 c!1204054) b!6554153))

(assert (= (and d!2056742 (not c!1204054)) b!6554150))

(assert (= (and b!6554150 res!2689089) b!6554151))

(assert (= (and b!6554151 c!1204057) b!6554149))

(assert (= (and b!6554151 (not c!1204057)) b!6554152))

(assert (= (and b!6554152 c!1204055) b!6554157))

(assert (= (and b!6554152 (not c!1204055)) b!6554147))

(assert (= (and b!6554157 (not res!2689088)) b!6554154))

(assert (= (and b!6554147 c!1204056) b!6554148))

(assert (= (and b!6554147 (not c!1204056)) b!6554156))

(assert (= (and b!6554148 (not res!2689087)) b!6554155))

(assert (= (or b!6554155 b!6554156) bm!570055))

(assert (= (or b!6554153 b!6554148) bm!570054))

(declare-fun m!7336430 () Bool)

(assert (=> bm!570055 m!7336430))

(assert (=> bm!570054 m!7336352))

(declare-fun m!7336432 () Bool)

(assert (=> b!6554154 m!7336432))

(declare-fun m!7336434 () Bool)

(assert (=> b!6554157 m!7336434))

(assert (=> b!6553394 d!2056742))

(declare-fun d!2056744 () Bool)

(assert (=> d!2056744 (= (matchR!8611 lt!2403289 (_1!36710 lt!2403292)) (matchRSpec!3529 lt!2403289 (_1!36710 lt!2403292)))))

(declare-fun lt!2403587 () Unit!159047)

(assert (=> d!2056744 (= lt!2403587 (choose!48793 lt!2403289 (_1!36710 lt!2403292)))))

(assert (=> d!2056744 (validRegex!8164 lt!2403289)))

(assert (=> d!2056744 (= (mainMatchTheorem!3529 lt!2403289 (_1!36710 lt!2403292)) lt!2403587)))

(declare-fun bs!1672881 () Bool)

(assert (= bs!1672881 d!2056744))

(assert (=> bs!1672881 m!7335720))

(assert (=> bs!1672881 m!7335632))

(declare-fun m!7336436 () Bool)

(assert (=> bs!1672881 m!7336436))

(assert (=> bs!1672881 m!7336184))

(assert (=> b!6553394 d!2056744))

(declare-fun bs!1672882 () Bool)

(declare-fun d!2056746 () Bool)

(assert (= bs!1672882 (and d!2056746 d!2056704)))

(declare-fun lambda!364211 () Int)

(assert (=> bs!1672882 (= lambda!364211 lambda!364204)))

(declare-fun bs!1672883 () Bool)

(assert (= bs!1672883 (and d!2056746 d!2056648)))

(assert (=> bs!1672883 (= lambda!364211 lambda!364180)))

(declare-fun bs!1672884 () Bool)

(assert (= bs!1672884 (and d!2056746 d!2056638)))

(assert (=> bs!1672884 (= lambda!364211 lambda!364174)))

(declare-fun bs!1672885 () Bool)

(assert (= bs!1672885 (and d!2056746 d!2056652)))

(assert (=> bs!1672885 (= lambda!364211 lambda!364183)))

(declare-fun bs!1672886 () Bool)

(assert (= bs!1672886 (and d!2056746 d!2056642)))

(assert (=> bs!1672886 (= lambda!364211 lambda!364177)))

(declare-fun bs!1672887 () Bool)

(assert (= bs!1672887 (and d!2056746 b!6553392)))

(assert (=> bs!1672887 (= lambda!364211 lambda!364128)))

(assert (=> d!2056746 (= (inv!84318 setElem!44727) (forall!15600 (exprs!6312 setElem!44727) lambda!364211))))

(declare-fun bs!1672888 () Bool)

(assert (= bs!1672888 d!2056746))

(declare-fun m!7336438 () Bool)

(assert (=> bs!1672888 m!7336438))

(assert (=> setNonEmpty!44727 d!2056746))

(declare-fun b!6554215 () Bool)

(declare-fun e!3968037 () Bool)

(assert (=> b!6554215 (= e!3968037 (matchZipper!2440 lt!2403293 s!2326))))

(declare-fun b!6554216 () Bool)

(declare-fun e!3968035 () Option!16319)

(declare-fun e!3968038 () Option!16319)

(assert (=> b!6554216 (= e!3968035 e!3968038)))

(declare-fun c!1204072 () Bool)

(assert (=> b!6554216 (= c!1204072 (is-Nil!65460 s!2326))))

(declare-fun b!6554217 () Bool)

(declare-fun res!2689122 () Bool)

(declare-fun e!3968034 () Bool)

(assert (=> b!6554217 (=> (not res!2689122) (not e!3968034))))

(declare-fun lt!2403604 () Option!16319)

(assert (=> b!6554217 (= res!2689122 (matchZipper!2440 lt!2403260 (_1!36710 (get!22724 lt!2403604))))))

(declare-fun b!6554218 () Bool)

(assert (=> b!6554218 (= e!3968038 None!16318)))

(declare-fun b!6554219 () Bool)

(assert (=> b!6554219 (= e!3968035 (Some!16318 (tuple2!66815 Nil!65460 s!2326)))))

(declare-fun b!6554220 () Bool)

(declare-fun res!2689123 () Bool)

(assert (=> b!6554220 (=> (not res!2689123) (not e!3968034))))

(assert (=> b!6554220 (= res!2689123 (matchZipper!2440 lt!2403293 (_2!36710 (get!22724 lt!2403604))))))

(declare-fun b!6554221 () Bool)

(assert (=> b!6554221 (= e!3968034 (= (++!14559 (_1!36710 (get!22724 lt!2403604)) (_2!36710 (get!22724 lt!2403604))) s!2326))))

(declare-fun b!6554222 () Bool)

(declare-fun lt!2403605 () Unit!159047)

(declare-fun lt!2403603 () Unit!159047)

(assert (=> b!6554222 (= lt!2403605 lt!2403603)))

(assert (=> b!6554222 (= (++!14559 (++!14559 Nil!65460 (Cons!65460 (h!71908 s!2326) Nil!65460)) (t!379226 s!2326)) s!2326)))

(assert (=> b!6554222 (= lt!2403603 (lemmaMoveElementToOtherListKeepsConcatEq!2571 Nil!65460 (h!71908 s!2326) (t!379226 s!2326) s!2326))))

(assert (=> b!6554222 (= e!3968038 (findConcatSeparationZippers!193 lt!2403260 lt!2403293 (++!14559 Nil!65460 (Cons!65460 (h!71908 s!2326) Nil!65460)) (t!379226 s!2326) s!2326))))

(declare-fun d!2056748 () Bool)

(declare-fun e!3968036 () Bool)

(assert (=> d!2056748 e!3968036))

(declare-fun res!2689124 () Bool)

(assert (=> d!2056748 (=> res!2689124 e!3968036)))

(assert (=> d!2056748 (= res!2689124 e!3968034)))

(declare-fun res!2689125 () Bool)

(assert (=> d!2056748 (=> (not res!2689125) (not e!3968034))))

(assert (=> d!2056748 (= res!2689125 (isDefined!13022 lt!2403604))))

(assert (=> d!2056748 (= lt!2403604 e!3968035)))

(declare-fun c!1204071 () Bool)

(assert (=> d!2056748 (= c!1204071 e!3968037)))

(declare-fun res!2689121 () Bool)

(assert (=> d!2056748 (=> (not res!2689121) (not e!3968037))))

(assert (=> d!2056748 (= res!2689121 (matchZipper!2440 lt!2403260 Nil!65460))))

(assert (=> d!2056748 (= (++!14559 Nil!65460 s!2326) s!2326)))

(assert (=> d!2056748 (= (findConcatSeparationZippers!193 lt!2403260 lt!2403293 Nil!65460 s!2326 s!2326) lt!2403604)))

(declare-fun b!6554223 () Bool)

(assert (=> b!6554223 (= e!3968036 (not (isDefined!13022 lt!2403604)))))

(assert (= (and d!2056748 res!2689121) b!6554215))

(assert (= (and d!2056748 c!1204071) b!6554219))

(assert (= (and d!2056748 (not c!1204071)) b!6554216))

(assert (= (and b!6554216 c!1204072) b!6554218))

(assert (= (and b!6554216 (not c!1204072)) b!6554222))

(assert (= (and d!2056748 res!2689125) b!6554217))

(assert (= (and b!6554217 res!2689122) b!6554220))

(assert (= (and b!6554220 res!2689123) b!6554221))

(assert (= (and d!2056748 (not res!2689124)) b!6554223))

(declare-fun m!7336490 () Bool)

(assert (=> b!6554223 m!7336490))

(assert (=> b!6554222 m!7336400))

(assert (=> b!6554222 m!7336400))

(assert (=> b!6554222 m!7336402))

(assert (=> b!6554222 m!7336404))

(assert (=> b!6554222 m!7336400))

(declare-fun m!7336498 () Bool)

(assert (=> b!6554222 m!7336498))

(declare-fun m!7336500 () Bool)

(assert (=> b!6554220 m!7336500))

(declare-fun m!7336502 () Bool)

(assert (=> b!6554220 m!7336502))

(assert (=> b!6554221 m!7336500))

(declare-fun m!7336504 () Bool)

(assert (=> b!6554221 m!7336504))

(declare-fun m!7336506 () Bool)

(assert (=> b!6554215 m!7336506))

(assert (=> d!2056748 m!7336490))

(declare-fun m!7336508 () Bool)

(assert (=> d!2056748 m!7336508))

(declare-fun m!7336510 () Bool)

(assert (=> d!2056748 m!7336510))

(assert (=> b!6554217 m!7336500))

(declare-fun m!7336512 () Bool)

(assert (=> b!6554217 m!7336512))

(assert (=> b!6553414 d!2056748))

(declare-fun d!2056766 () Bool)

(assert (=> d!2056766 (= (get!22724 lt!2403283) (v!52503 lt!2403283))))

(assert (=> b!6553414 d!2056766))

(declare-fun b!6554240 () Bool)

(declare-fun e!3968046 () Bool)

(declare-fun lt!2403613 () List!65584)

(assert (=> b!6554240 (= e!3968046 (or (not (= (_2!36710 lt!2403310) Nil!65460)) (= lt!2403613 (_1!36710 lt!2403310))))))

(declare-fun d!2056768 () Bool)

(assert (=> d!2056768 e!3968046))

(declare-fun res!2689133 () Bool)

(assert (=> d!2056768 (=> (not res!2689133) (not e!3968046))))

(declare-fun content!12569 (List!65584) (Set C!33126))

(assert (=> d!2056768 (= res!2689133 (= (content!12569 lt!2403613) (set.union (content!12569 (_1!36710 lt!2403310)) (content!12569 (_2!36710 lt!2403310)))))))

(declare-fun e!3968047 () List!65584)

(assert (=> d!2056768 (= lt!2403613 e!3968047)))

(declare-fun c!1204076 () Bool)

(assert (=> d!2056768 (= c!1204076 (is-Nil!65460 (_1!36710 lt!2403310)))))

(assert (=> d!2056768 (= (++!14559 (_1!36710 lt!2403310) (_2!36710 lt!2403310)) lt!2403613)))

(declare-fun b!6554237 () Bool)

(assert (=> b!6554237 (= e!3968047 (_2!36710 lt!2403310))))

(declare-fun b!6554239 () Bool)

(declare-fun res!2689134 () Bool)

(assert (=> b!6554239 (=> (not res!2689134) (not e!3968046))))

(declare-fun size!40508 (List!65584) Int)

(assert (=> b!6554239 (= res!2689134 (= (size!40508 lt!2403613) (+ (size!40508 (_1!36710 lt!2403310)) (size!40508 (_2!36710 lt!2403310)))))))

(declare-fun b!6554238 () Bool)

(assert (=> b!6554238 (= e!3968047 (Cons!65460 (h!71908 (_1!36710 lt!2403310)) (++!14559 (t!379226 (_1!36710 lt!2403310)) (_2!36710 lt!2403310))))))

(assert (= (and d!2056768 c!1204076) b!6554237))

(assert (= (and d!2056768 (not c!1204076)) b!6554238))

(assert (= (and d!2056768 res!2689133) b!6554239))

(assert (= (and b!6554239 res!2689134) b!6554240))

(declare-fun m!7336516 () Bool)

(assert (=> d!2056768 m!7336516))

(declare-fun m!7336518 () Bool)

(assert (=> d!2056768 m!7336518))

(declare-fun m!7336520 () Bool)

(assert (=> d!2056768 m!7336520))

(declare-fun m!7336522 () Bool)

(assert (=> b!6554239 m!7336522))

(declare-fun m!7336524 () Bool)

(assert (=> b!6554239 m!7336524))

(declare-fun m!7336526 () Bool)

(assert (=> b!6554239 m!7336526))

(declare-fun m!7336528 () Bool)

(assert (=> b!6554238 m!7336528))

(assert (=> b!6553414 d!2056768))

(declare-fun d!2056772 () Bool)

(assert (=> d!2056772 (isDefined!13022 (findConcatSeparationZippers!193 lt!2403260 (set.insert lt!2403313 (as set.empty (Set Context!11624))) Nil!65460 s!2326 s!2326))))

(declare-fun lt!2403622 () Unit!159047)

(declare-fun choose!48811 ((Set Context!11624) Context!11624 List!65584) Unit!159047)

(assert (=> d!2056772 (= lt!2403622 (choose!48811 lt!2403260 lt!2403313 s!2326))))

(assert (=> d!2056772 (matchZipper!2440 (appendTo!189 lt!2403260 lt!2403313) s!2326)))

(assert (=> d!2056772 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!193 lt!2403260 lt!2403313 s!2326) lt!2403622)))

(declare-fun bs!1672899 () Bool)

(assert (= bs!1672899 d!2056772))

(declare-fun m!7336544 () Bool)

(assert (=> bs!1672899 m!7336544))

(declare-fun m!7336546 () Bool)

(assert (=> bs!1672899 m!7336546))

(assert (=> bs!1672899 m!7335694))

(declare-fun m!7336548 () Bool)

(assert (=> bs!1672899 m!7336548))

(assert (=> bs!1672899 m!7335694))

(assert (=> bs!1672899 m!7336544))

(assert (=> bs!1672899 m!7335676))

(assert (=> bs!1672899 m!7335676))

(declare-fun m!7336550 () Bool)

(assert (=> bs!1672899 m!7336550))

(assert (=> b!6553414 d!2056772))

(declare-fun d!2056780 () Bool)

(assert (=> d!2056780 (= (isDefined!13022 lt!2403283) (not (isEmpty!37697 lt!2403283)))))

(declare-fun bs!1672900 () Bool)

(assert (= bs!1672900 d!2056780))

(declare-fun m!7336552 () Bool)

(assert (=> bs!1672900 m!7336552))

(assert (=> b!6553414 d!2056780))

(declare-fun d!2056782 () Bool)

(declare-fun lt!2403623 () Regex!16428)

(assert (=> d!2056782 (validRegex!8164 lt!2403623)))

(assert (=> d!2056782 (= lt!2403623 (generalisedUnion!2272 (unfocusZipperList!1849 (Cons!65461 lt!2403281 Nil!65461))))))

(assert (=> d!2056782 (= (unfocusZipper!2170 (Cons!65461 lt!2403281 Nil!65461)) lt!2403623)))

(declare-fun bs!1672901 () Bool)

(assert (= bs!1672901 d!2056782))

(declare-fun m!7336554 () Bool)

(assert (=> bs!1672901 m!7336554))

(declare-fun m!7336556 () Bool)

(assert (=> bs!1672901 m!7336556))

(assert (=> bs!1672901 m!7336556))

(declare-fun m!7336558 () Bool)

(assert (=> bs!1672901 m!7336558))

(assert (=> b!6553372 d!2056782))

(declare-fun d!2056784 () Bool)

(declare-fun dynLambda!26031 (Int Context!11624) Context!11624)

(assert (=> d!2056784 (= (map!14951 lt!2403260 lambda!364127) (set.insert (dynLambda!26031 lambda!364127 lt!2403261) (as set.empty (Set Context!11624))))))

(declare-fun lt!2403629 () Unit!159047)

(declare-fun choose!48812 ((Set Context!11624) Context!11624 Int) Unit!159047)

(assert (=> d!2056784 (= lt!2403629 (choose!48812 lt!2403260 lt!2403261 lambda!364127))))

(assert (=> d!2056784 (= lt!2403260 (set.insert lt!2403261 (as set.empty (Set Context!11624))))))

(assert (=> d!2056784 (= (lemmaMapOnSingletonSet!211 lt!2403260 lt!2403261 lambda!364127) lt!2403629)))

(declare-fun b_lambda!248013 () Bool)

(assert (=> (not b_lambda!248013) (not d!2056784)))

(declare-fun bs!1672902 () Bool)

(assert (= bs!1672902 d!2056784))

(declare-fun m!7336576 () Bool)

(assert (=> bs!1672902 m!7336576))

(declare-fun m!7336578 () Bool)

(assert (=> bs!1672902 m!7336578))

(assert (=> bs!1672902 m!7335692))

(assert (=> bs!1672902 m!7335682))

(declare-fun m!7336584 () Bool)

(assert (=> bs!1672902 m!7336584))

(assert (=> bs!1672902 m!7336576))

(assert (=> b!6553392 d!2056784))

(declare-fun bs!1672903 () Bool)

(declare-fun d!2056790 () Bool)

(assert (= bs!1672903 (and d!2056790 b!6553392)))

(declare-fun lambda!364222 () Int)

(assert (=> bs!1672903 (= (= (exprs!6312 lt!2403313) lt!2403275) (= lambda!364222 lambda!364127))))

(assert (=> d!2056790 true))

(assert (=> d!2056790 (= (appendTo!189 lt!2403260 lt!2403313) (map!14951 lt!2403260 lambda!364222))))

(declare-fun bs!1672904 () Bool)

(assert (= bs!1672904 d!2056790))

(declare-fun m!7336592 () Bool)

(assert (=> bs!1672904 m!7336592))

(assert (=> b!6553392 d!2056790))

(assert (=> b!6553392 d!2056690))

(declare-fun d!2056796 () Bool)

(declare-fun choose!48813 ((Set Context!11624) Int) (Set Context!11624))

(assert (=> d!2056796 (= (map!14951 lt!2403260 lambda!364127) (choose!48813 lt!2403260 lambda!364127))))

(declare-fun bs!1672905 () Bool)

(assert (= bs!1672905 d!2056796))

(declare-fun m!7336594 () Bool)

(assert (=> bs!1672905 m!7336594))

(assert (=> b!6553392 d!2056796))

(assert (=> b!6553392 d!2056696))

(declare-fun d!2056798 () Bool)

(declare-fun lt!2403632 () Regex!16428)

(assert (=> d!2056798 (validRegex!8164 lt!2403632)))

(assert (=> d!2056798 (= lt!2403632 (generalisedUnion!2272 (unfocusZipperList!1849 lt!2403287)))))

(assert (=> d!2056798 (= (unfocusZipper!2170 lt!2403287) lt!2403632)))

(declare-fun bs!1672906 () Bool)

(assert (= bs!1672906 d!2056798))

(declare-fun m!7336596 () Bool)

(assert (=> bs!1672906 m!7336596))

(declare-fun m!7336598 () Bool)

(assert (=> bs!1672906 m!7336598))

(assert (=> bs!1672906 m!7336598))

(declare-fun m!7336600 () Bool)

(assert (=> bs!1672906 m!7336600))

(assert (=> b!6553370 d!2056798))

(declare-fun e!3968079 () Bool)

(declare-fun d!2056800 () Bool)

(assert (=> d!2056800 (= (matchZipper!2440 (set.union lt!2403291 lt!2403315) (t!379226 s!2326)) e!3968079)))

(declare-fun res!2689158 () Bool)

(assert (=> d!2056800 (=> res!2689158 e!3968079)))

(assert (=> d!2056800 (= res!2689158 (matchZipper!2440 lt!2403291 (t!379226 s!2326)))))

(declare-fun lt!2403635 () Unit!159047)

(declare-fun choose!48814 ((Set Context!11624) (Set Context!11624) List!65584) Unit!159047)

(assert (=> d!2056800 (= lt!2403635 (choose!48814 lt!2403291 lt!2403315 (t!379226 s!2326)))))

(assert (=> d!2056800 (= (lemmaZipperConcatMatchesSameAsBothZippers!1259 lt!2403291 lt!2403315 (t!379226 s!2326)) lt!2403635)))

(declare-fun b!6554288 () Bool)

(assert (=> b!6554288 (= e!3968079 (matchZipper!2440 lt!2403315 (t!379226 s!2326)))))

(assert (= (and d!2056800 (not res!2689158)) b!6554288))

(assert (=> d!2056800 m!7335754))

(assert (=> d!2056800 m!7335670))

(declare-fun m!7336610 () Bool)

(assert (=> d!2056800 m!7336610))

(assert (=> b!6554288 m!7335646))

(assert (=> b!6553390 d!2056800))

(assert (=> b!6553390 d!2056646))

(declare-fun d!2056806 () Bool)

(declare-fun c!1204089 () Bool)

(assert (=> d!2056806 (= c!1204089 (isEmpty!37695 (t!379226 s!2326)))))

(declare-fun e!3968080 () Bool)

(assert (=> d!2056806 (= (matchZipper!2440 (set.union lt!2403291 lt!2403315) (t!379226 s!2326)) e!3968080)))

(declare-fun b!6554289 () Bool)

(assert (=> b!6554289 (= e!3968080 (nullableZipper!2173 (set.union lt!2403291 lt!2403315)))))

(declare-fun b!6554290 () Bool)

(assert (=> b!6554290 (= e!3968080 (matchZipper!2440 (derivationStepZipper!2394 (set.union lt!2403291 lt!2403315) (head!13307 (t!379226 s!2326))) (tail!12392 (t!379226 s!2326))))))

(assert (= (and d!2056806 c!1204089) b!6554289))

(assert (= (and d!2056806 (not c!1204089)) b!6554290))

(assert (=> d!2056806 m!7335956))

(declare-fun m!7336612 () Bool)

(assert (=> b!6554289 m!7336612))

(assert (=> b!6554290 m!7335960))

(assert (=> b!6554290 m!7335960))

(declare-fun m!7336614 () Bool)

(assert (=> b!6554290 m!7336614))

(assert (=> b!6554290 m!7335964))

(assert (=> b!6554290 m!7336614))

(assert (=> b!6554290 m!7335964))

(declare-fun m!7336616 () Bool)

(assert (=> b!6554290 m!7336616))

(assert (=> b!6553390 d!2056806))

(declare-fun d!2056808 () Bool)

(assert (=> d!2056808 (= (flatMap!1933 lt!2403297 lambda!364126) (choose!48791 lt!2403297 lambda!364126))))

(declare-fun bs!1672908 () Bool)

(assert (= bs!1672908 d!2056808))

(declare-fun m!7336618 () Bool)

(assert (=> bs!1672908 m!7336618))

(assert (=> b!6553391 d!2056808))

(declare-fun d!2056810 () Bool)

(declare-fun c!1204090 () Bool)

(declare-fun e!3968081 () Bool)

(assert (=> d!2056810 (= c!1204090 e!3968081)))

(declare-fun res!2689159 () Bool)

(assert (=> d!2056810 (=> (not res!2689159) (not e!3968081))))

(assert (=> d!2056810 (= res!2689159 (is-Cons!65459 (exprs!6312 lt!2403281)))))

(declare-fun e!3968082 () (Set Context!11624))

(assert (=> d!2056810 (= (derivationStepZipperUp!1602 lt!2403281 (h!71908 s!2326)) e!3968082)))

(declare-fun b!6554291 () Bool)

(declare-fun e!3968083 () (Set Context!11624))

(declare-fun call!570070 () (Set Context!11624))

(assert (=> b!6554291 (= e!3968083 call!570070)))

(declare-fun b!6554292 () Bool)

(assert (=> b!6554292 (= e!3968083 (as set.empty (Set Context!11624)))))

(declare-fun b!6554293 () Bool)

(assert (=> b!6554293 (= e!3968082 e!3968083)))

(declare-fun c!1204091 () Bool)

(assert (=> b!6554293 (= c!1204091 (is-Cons!65459 (exprs!6312 lt!2403281)))))

(declare-fun b!6554294 () Bool)

(assert (=> b!6554294 (= e!3968082 (set.union call!570070 (derivationStepZipperUp!1602 (Context!11625 (t!379225 (exprs!6312 lt!2403281))) (h!71908 s!2326))))))

(declare-fun b!6554295 () Bool)

(assert (=> b!6554295 (= e!3968081 (nullable!6421 (h!71907 (exprs!6312 lt!2403281))))))

(declare-fun bm!570065 () Bool)

(assert (=> bm!570065 (= call!570070 (derivationStepZipperDown!1676 (h!71907 (exprs!6312 lt!2403281)) (Context!11625 (t!379225 (exprs!6312 lt!2403281))) (h!71908 s!2326)))))

(assert (= (and d!2056810 res!2689159) b!6554295))

(assert (= (and d!2056810 c!1204090) b!6554294))

(assert (= (and d!2056810 (not c!1204090)) b!6554293))

(assert (= (and b!6554293 c!1204091) b!6554291))

(assert (= (and b!6554293 (not c!1204091)) b!6554292))

(assert (= (or b!6554294 b!6554291) bm!570065))

(declare-fun m!7336620 () Bool)

(assert (=> b!6554294 m!7336620))

(declare-fun m!7336622 () Bool)

(assert (=> b!6554295 m!7336622))

(declare-fun m!7336624 () Bool)

(assert (=> bm!570065 m!7336624))

(assert (=> b!6553391 d!2056810))

(declare-fun d!2056812 () Bool)

(assert (=> d!2056812 (= (flatMap!1933 lt!2403297 lambda!364126) (dynLambda!26028 lambda!364126 lt!2403281))))

(declare-fun lt!2403638 () Unit!159047)

(assert (=> d!2056812 (= lt!2403638 (choose!48792 lt!2403297 lt!2403281 lambda!364126))))

(assert (=> d!2056812 (= lt!2403297 (set.insert lt!2403281 (as set.empty (Set Context!11624))))))

(assert (=> d!2056812 (= (lemmaFlatMapOnSingletonSet!1459 lt!2403297 lt!2403281 lambda!364126) lt!2403638)))

(declare-fun b_lambda!248015 () Bool)

(assert (=> (not b_lambda!248015) (not d!2056812)))

(declare-fun bs!1672909 () Bool)

(assert (= bs!1672909 d!2056812))

(assert (=> bs!1672909 m!7335628))

(declare-fun m!7336626 () Bool)

(assert (=> bs!1672909 m!7336626))

(declare-fun m!7336628 () Bool)

(assert (=> bs!1672909 m!7336628))

(assert (=> bs!1672909 m!7335622))

(assert (=> b!6553391 d!2056812))

(declare-fun bs!1672910 () Bool)

(declare-fun d!2056814 () Bool)

(assert (= bs!1672910 (and d!2056814 b!6553405)))

(declare-fun lambda!364225 () Int)

(assert (=> bs!1672910 (= lambda!364225 lambda!364126)))

(assert (=> d!2056814 true))

(assert (=> d!2056814 (= (derivationStepZipper!2394 lt!2403297 (h!71908 s!2326)) (flatMap!1933 lt!2403297 lambda!364225))))

(declare-fun bs!1672911 () Bool)

(assert (= bs!1672911 d!2056814))

(declare-fun m!7336638 () Bool)

(assert (=> bs!1672911 m!7336638))

(assert (=> b!6553391 d!2056814))

(declare-fun d!2056820 () Bool)

(assert (=> d!2056820 (= (isEmpty!37692 (t!379227 zl!343)) (is-Nil!65461 (t!379227 zl!343)))))

(assert (=> b!6553412 d!2056820))

(declare-fun d!2056822 () Bool)

(assert (=> d!2056822 (= (isEmpty!37691 (t!379225 (exprs!6312 (h!71909 zl!343)))) (is-Nil!65459 (t!379225 (exprs!6312 (h!71909 zl!343)))))))

(assert (=> b!6553389 d!2056822))

(declare-fun bs!1672912 () Bool)

(declare-fun b!6554311 () Bool)

(assert (= bs!1672912 (and b!6554311 b!6553984)))

(declare-fun lambda!364226 () Int)

(assert (=> bs!1672912 (not (= lambda!364226 lambda!364199))))

(declare-fun bs!1672913 () Bool)

(assert (= bs!1672913 (and b!6554311 b!6554156)))

(assert (=> bs!1672913 (not (= lambda!364226 lambda!364210))))

(declare-fun bs!1672914 () Bool)

(assert (= bs!1672914 (and b!6554311 b!6553411)))

(assert (=> bs!1672914 (not (= lambda!364226 lambda!364124))))

(declare-fun bs!1672915 () Bool)

(assert (= bs!1672915 (and b!6554311 d!2056662)))

(assert (=> bs!1672915 (not (= lambda!364226 lambda!364188))))

(declare-fun bs!1672916 () Bool)

(assert (= bs!1672916 (and b!6554311 d!2056684)))

(assert (=> bs!1672916 (not (= lambda!364226 lambda!364195))))

(declare-fun bs!1672917 () Bool)

(assert (= bs!1672917 (and b!6554311 b!6553983)))

(assert (=> bs!1672917 (= (and (= (reg!16757 lt!2403304) (reg!16757 lt!2403317)) (= lt!2403304 lt!2403317)) (= lambda!364226 lambda!364198))))

(declare-fun bs!1672918 () Bool)

(assert (= bs!1672918 (and b!6554311 b!6554155)))

(assert (=> bs!1672918 (= (and (= s!2326 (_1!36710 lt!2403292)) (= (reg!16757 lt!2403304) (reg!16757 lt!2403289)) (= lt!2403304 lt!2403289)) (= lambda!364226 lambda!364209))))

(assert (=> bs!1672915 (not (= lambda!364226 lambda!364189))))

(declare-fun bs!1672919 () Bool)

(assert (= bs!1672919 (and b!6554311 b!6553700)))

(assert (=> bs!1672919 (not (= lambda!364226 lambda!364171))))

(declare-fun bs!1672920 () Bool)

(assert (= bs!1672920 (and b!6554311 b!6553399)))

(assert (=> bs!1672920 (not (= lambda!364226 lambda!364129))))

(assert (=> bs!1672920 (not (= lambda!364226 lambda!364130))))

(declare-fun bs!1672921 () Bool)

(assert (= bs!1672921 (and b!6554311 b!6553699)))

(assert (=> bs!1672921 (= (and (= (reg!16757 lt!2403304) (reg!16757 r!7292)) (= lt!2403304 r!7292)) (= lambda!364226 lambda!364170))))

(assert (=> bs!1672914 (not (= lambda!364226 lambda!364125))))

(assert (=> b!6554311 true))

(assert (=> b!6554311 true))

(declare-fun bs!1672922 () Bool)

(declare-fun b!6554312 () Bool)

(assert (= bs!1672922 (and b!6554312 b!6553984)))

(declare-fun lambda!364227 () Int)

(assert (=> bs!1672922 (= (and (= (regOne!33368 lt!2403304) (regOne!33368 lt!2403317)) (= (regTwo!33368 lt!2403304) (regTwo!33368 lt!2403317))) (= lambda!364227 lambda!364199))))

(declare-fun bs!1672923 () Bool)

(assert (= bs!1672923 (and b!6554312 b!6554156)))

(assert (=> bs!1672923 (= (and (= s!2326 (_1!36710 lt!2403292)) (= (regOne!33368 lt!2403304) (regOne!33368 lt!2403289)) (= (regTwo!33368 lt!2403304) (regTwo!33368 lt!2403289))) (= lambda!364227 lambda!364210))))

(declare-fun bs!1672924 () Bool)

(assert (= bs!1672924 (and b!6554312 b!6553411)))

(assert (=> bs!1672924 (not (= lambda!364227 lambda!364124))))

(declare-fun bs!1672925 () Bool)

(assert (= bs!1672925 (and b!6554312 d!2056662)))

(assert (=> bs!1672925 (not (= lambda!364227 lambda!364188))))

(declare-fun bs!1672926 () Bool)

(assert (= bs!1672926 (and b!6554312 d!2056684)))

(assert (=> bs!1672926 (not (= lambda!364227 lambda!364195))))

(declare-fun bs!1672927 () Bool)

(assert (= bs!1672927 (and b!6554312 b!6553983)))

(assert (=> bs!1672927 (not (= lambda!364227 lambda!364198))))

(declare-fun bs!1672928 () Bool)

(assert (= bs!1672928 (and b!6554312 b!6554155)))

(assert (=> bs!1672928 (not (= lambda!364227 lambda!364209))))

(assert (=> bs!1672925 (= (and (= (regOne!33368 lt!2403304) lt!2403289) (= (regTwo!33368 lt!2403304) (regTwo!33368 r!7292))) (= lambda!364227 lambda!364189))))

(declare-fun bs!1672929 () Bool)

(assert (= bs!1672929 (and b!6554312 b!6553700)))

(assert (=> bs!1672929 (= (and (= (regOne!33368 lt!2403304) (regOne!33368 r!7292)) (= (regTwo!33368 lt!2403304) (regTwo!33368 r!7292))) (= lambda!364227 lambda!364171))))

(declare-fun bs!1672930 () Bool)

(assert (= bs!1672930 (and b!6554312 b!6553399)))

(assert (=> bs!1672930 (not (= lambda!364227 lambda!364129))))

(declare-fun bs!1672931 () Bool)

(assert (= bs!1672931 (and b!6554312 b!6553699)))

(assert (=> bs!1672931 (not (= lambda!364227 lambda!364170))))

(assert (=> bs!1672924 (= (and (= (regOne!33368 lt!2403304) (regOne!33368 r!7292)) (= (regTwo!33368 lt!2403304) (regTwo!33368 r!7292))) (= lambda!364227 lambda!364125))))

(declare-fun bs!1672932 () Bool)

(assert (= bs!1672932 (and b!6554312 b!6554311)))

(assert (=> bs!1672932 (not (= lambda!364227 lambda!364226))))

(assert (=> bs!1672930 (= (and (= (regOne!33368 lt!2403304) lt!2403289) (= (regTwo!33368 lt!2403304) (regTwo!33368 r!7292))) (= lambda!364227 lambda!364130))))

(assert (=> b!6554312 true))

(assert (=> b!6554312 true))

(declare-fun b!6554303 () Bool)

(declare-fun e!3968091 () Bool)

(declare-fun e!3968092 () Bool)

(assert (=> b!6554303 (= e!3968091 e!3968092)))

(declare-fun c!1204097 () Bool)

(assert (=> b!6554303 (= c!1204097 (is-Star!16428 lt!2403304))))

(declare-fun bm!570067 () Bool)

(declare-fun call!570072 () Bool)

(assert (=> bm!570067 (= call!570072 (Exists!3498 (ite c!1204097 lambda!364226 lambda!364227)))))

(declare-fun b!6554304 () Bool)

(declare-fun res!2689163 () Bool)

(declare-fun e!3968094 () Bool)

(assert (=> b!6554304 (=> res!2689163 e!3968094)))

(declare-fun call!570071 () Bool)

(assert (=> b!6554304 (= res!2689163 call!570071)))

(assert (=> b!6554304 (= e!3968092 e!3968094)))

(declare-fun b!6554305 () Bool)

(declare-fun e!3968089 () Bool)

(assert (=> b!6554305 (= e!3968089 (= s!2326 (Cons!65460 (c!1203875 lt!2403304) Nil!65460)))))

(declare-fun b!6554306 () Bool)

(declare-fun e!3968088 () Bool)

(declare-fun e!3968093 () Bool)

(assert (=> b!6554306 (= e!3968088 e!3968093)))

(declare-fun res!2689165 () Bool)

(assert (=> b!6554306 (= res!2689165 (not (is-EmptyLang!16428 lt!2403304)))))

(assert (=> b!6554306 (=> (not res!2689165) (not e!3968093))))

(declare-fun b!6554307 () Bool)

(declare-fun c!1204098 () Bool)

(assert (=> b!6554307 (= c!1204098 (is-ElementMatch!16428 lt!2403304))))

(assert (=> b!6554307 (= e!3968093 e!3968089)))

(declare-fun b!6554308 () Bool)

(declare-fun c!1204096 () Bool)

(assert (=> b!6554308 (= c!1204096 (is-Union!16428 lt!2403304))))

(assert (=> b!6554308 (= e!3968089 e!3968091)))

(declare-fun b!6554309 () Bool)

(assert (=> b!6554309 (= e!3968088 call!570071)))

(declare-fun d!2056824 () Bool)

(declare-fun c!1204095 () Bool)

(assert (=> d!2056824 (= c!1204095 (is-EmptyExpr!16428 lt!2403304))))

(assert (=> d!2056824 (= (matchRSpec!3529 lt!2403304 s!2326) e!3968088)))

(declare-fun bm!570066 () Bool)

(assert (=> bm!570066 (= call!570071 (isEmpty!37695 s!2326))))

(declare-fun b!6554310 () Bool)

(declare-fun e!3968090 () Bool)

(assert (=> b!6554310 (= e!3968090 (matchRSpec!3529 (regTwo!33369 lt!2403304) s!2326))))

(assert (=> b!6554311 (= e!3968094 call!570072)))

(assert (=> b!6554312 (= e!3968092 call!570072)))

(declare-fun b!6554313 () Bool)

(assert (=> b!6554313 (= e!3968091 e!3968090)))

(declare-fun res!2689164 () Bool)

(assert (=> b!6554313 (= res!2689164 (matchRSpec!3529 (regOne!33369 lt!2403304) s!2326))))

(assert (=> b!6554313 (=> res!2689164 e!3968090)))

(assert (= (and d!2056824 c!1204095) b!6554309))

(assert (= (and d!2056824 (not c!1204095)) b!6554306))

(assert (= (and b!6554306 res!2689165) b!6554307))

(assert (= (and b!6554307 c!1204098) b!6554305))

(assert (= (and b!6554307 (not c!1204098)) b!6554308))

(assert (= (and b!6554308 c!1204096) b!6554313))

(assert (= (and b!6554308 (not c!1204096)) b!6554303))

(assert (= (and b!6554313 (not res!2689164)) b!6554310))

(assert (= (and b!6554303 c!1204097) b!6554304))

(assert (= (and b!6554303 (not c!1204097)) b!6554312))

(assert (= (and b!6554304 (not res!2689163)) b!6554311))

(assert (= (or b!6554311 b!6554312) bm!570067))

(assert (= (or b!6554309 b!6554304) bm!570066))

(declare-fun m!7336640 () Bool)

(assert (=> bm!570067 m!7336640))

(assert (=> bm!570066 m!7335968))

(declare-fun m!7336642 () Bool)

(assert (=> b!6554310 m!7336642))

(declare-fun m!7336644 () Bool)

(assert (=> b!6554313 m!7336644))

(assert (=> b!6553410 d!2056824))

(declare-fun b!6554314 () Bool)

(declare-fun e!3968098 () Bool)

(declare-fun e!3968099 () Bool)

(assert (=> b!6554314 (= e!3968098 e!3968099)))

(declare-fun res!2689172 () Bool)

(assert (=> b!6554314 (=> (not res!2689172) (not e!3968099))))

(declare-fun lt!2403640 () Bool)

(assert (=> b!6554314 (= res!2689172 (not lt!2403640))))

(declare-fun bm!570068 () Bool)

(declare-fun call!570073 () Bool)

(assert (=> bm!570068 (= call!570073 (isEmpty!37695 s!2326))))

(declare-fun d!2056826 () Bool)

(declare-fun e!3968097 () Bool)

(assert (=> d!2056826 e!3968097))

(declare-fun c!1204099 () Bool)

(assert (=> d!2056826 (= c!1204099 (is-EmptyExpr!16428 lt!2403304))))

(declare-fun e!3968101 () Bool)

(assert (=> d!2056826 (= lt!2403640 e!3968101)))

(declare-fun c!1204100 () Bool)

(assert (=> d!2056826 (= c!1204100 (isEmpty!37695 s!2326))))

(assert (=> d!2056826 (validRegex!8164 lt!2403304)))

(assert (=> d!2056826 (= (matchR!8611 lt!2403304 s!2326) lt!2403640)))

(declare-fun b!6554315 () Bool)

(assert (=> b!6554315 (= e!3968101 (nullable!6421 lt!2403304))))

(declare-fun b!6554316 () Bool)

(declare-fun e!3968100 () Bool)

(assert (=> b!6554316 (= e!3968100 (= (head!13307 s!2326) (c!1203875 lt!2403304)))))

(declare-fun b!6554317 () Bool)

(declare-fun e!3968095 () Bool)

(assert (=> b!6554317 (= e!3968095 (not lt!2403640))))

(declare-fun b!6554318 () Bool)

(declare-fun res!2689173 () Bool)

(assert (=> b!6554318 (=> res!2689173 e!3968098)))

(assert (=> b!6554318 (= res!2689173 (not (is-ElementMatch!16428 lt!2403304)))))

(assert (=> b!6554318 (= e!3968095 e!3968098)))

(declare-fun b!6554319 () Bool)

(assert (=> b!6554319 (= e!3968097 e!3968095)))

(declare-fun c!1204101 () Bool)

(assert (=> b!6554319 (= c!1204101 (is-EmptyLang!16428 lt!2403304))))

(declare-fun b!6554320 () Bool)

(declare-fun res!2689166 () Bool)

(declare-fun e!3968096 () Bool)

(assert (=> b!6554320 (=> res!2689166 e!3968096)))

(assert (=> b!6554320 (= res!2689166 (not (isEmpty!37695 (tail!12392 s!2326))))))

(declare-fun b!6554321 () Bool)

(assert (=> b!6554321 (= e!3968096 (not (= (head!13307 s!2326) (c!1203875 lt!2403304))))))

(declare-fun b!6554322 () Bool)

(declare-fun res!2689170 () Bool)

(assert (=> b!6554322 (=> (not res!2689170) (not e!3968100))))

(assert (=> b!6554322 (= res!2689170 (isEmpty!37695 (tail!12392 s!2326)))))

(declare-fun b!6554323 () Bool)

(assert (=> b!6554323 (= e!3968097 (= lt!2403640 call!570073))))

(declare-fun b!6554324 () Bool)

(assert (=> b!6554324 (= e!3968101 (matchR!8611 (derivativeStep!5112 lt!2403304 (head!13307 s!2326)) (tail!12392 s!2326)))))

(declare-fun b!6554325 () Bool)

(assert (=> b!6554325 (= e!3968099 e!3968096)))

(declare-fun res!2689167 () Bool)

(assert (=> b!6554325 (=> res!2689167 e!3968096)))

(assert (=> b!6554325 (= res!2689167 call!570073)))

(declare-fun b!6554326 () Bool)

(declare-fun res!2689169 () Bool)

(assert (=> b!6554326 (=> (not res!2689169) (not e!3968100))))

(assert (=> b!6554326 (= res!2689169 (not call!570073))))

(declare-fun b!6554327 () Bool)

(declare-fun res!2689171 () Bool)

(assert (=> b!6554327 (=> res!2689171 e!3968098)))

(assert (=> b!6554327 (= res!2689171 e!3968100)))

(declare-fun res!2689168 () Bool)

(assert (=> b!6554327 (=> (not res!2689168) (not e!3968100))))

(assert (=> b!6554327 (= res!2689168 lt!2403640)))

(assert (= (and d!2056826 c!1204100) b!6554315))

(assert (= (and d!2056826 (not c!1204100)) b!6554324))

(assert (= (and d!2056826 c!1204099) b!6554323))

(assert (= (and d!2056826 (not c!1204099)) b!6554319))

(assert (= (and b!6554319 c!1204101) b!6554317))

(assert (= (and b!6554319 (not c!1204101)) b!6554318))

(assert (= (and b!6554318 (not res!2689173)) b!6554327))

(assert (= (and b!6554327 res!2689168) b!6554326))

(assert (= (and b!6554326 res!2689169) b!6554322))

(assert (= (and b!6554322 res!2689170) b!6554316))

(assert (= (and b!6554327 (not res!2689171)) b!6554314))

(assert (= (and b!6554314 res!2689172) b!6554325))

(assert (= (and b!6554325 (not res!2689167)) b!6554320))

(assert (= (and b!6554320 (not res!2689166)) b!6554321))

(assert (= (or b!6554323 b!6554325 b!6554326) bm!570068))

(assert (=> b!6554324 m!7335972))

(assert (=> b!6554324 m!7335972))

(declare-fun m!7336646 () Bool)

(assert (=> b!6554324 m!7336646))

(assert (=> b!6554324 m!7335976))

(assert (=> b!6554324 m!7336646))

(assert (=> b!6554324 m!7335976))

(declare-fun m!7336648 () Bool)

(assert (=> b!6554324 m!7336648))

(assert (=> b!6554320 m!7335976))

(assert (=> b!6554320 m!7335976))

(assert (=> b!6554320 m!7336026))

(assert (=> b!6554316 m!7335972))

(assert (=> d!2056826 m!7335968))

(assert (=> d!2056826 m!7336336))

(assert (=> b!6554321 m!7335972))

(assert (=> bm!570068 m!7335968))

(assert (=> b!6554315 m!7336338))

(assert (=> b!6554322 m!7335976))

(assert (=> b!6554322 m!7335976))

(assert (=> b!6554322 m!7336026))

(assert (=> b!6553410 d!2056826))

(declare-fun d!2056828 () Bool)

(assert (=> d!2056828 (= (matchR!8611 lt!2403304 s!2326) (matchRSpec!3529 lt!2403304 s!2326))))

(declare-fun lt!2403641 () Unit!159047)

(assert (=> d!2056828 (= lt!2403641 (choose!48793 lt!2403304 s!2326))))

(assert (=> d!2056828 (validRegex!8164 lt!2403304)))

(assert (=> d!2056828 (= (mainMatchTheorem!3529 lt!2403304 s!2326) lt!2403641)))

(declare-fun bs!1672933 () Bool)

(assert (= bs!1672933 d!2056828))

(assert (=> bs!1672933 m!7335640))

(assert (=> bs!1672933 m!7335638))

(declare-fun m!7336650 () Bool)

(assert (=> bs!1672933 m!7336650))

(assert (=> bs!1672933 m!7336336))

(assert (=> b!6553410 d!2056828))

(declare-fun b!6554328 () Bool)

(declare-fun lt!2403642 () Unit!159047)

(declare-fun lt!2403646 () Unit!159047)

(assert (=> b!6554328 (= lt!2403642 lt!2403646)))

(assert (=> b!6554328 (= (++!14559 (++!14559 Nil!65460 (Cons!65460 (h!71908 s!2326) Nil!65460)) (t!379226 s!2326)) s!2326)))

(assert (=> b!6554328 (= lt!2403646 (lemmaMoveElementToOtherListKeepsConcatEq!2571 Nil!65460 (h!71908 s!2326) (t!379226 s!2326) s!2326))))

(declare-fun e!3968105 () Option!16319)

(assert (=> b!6554328 (= e!3968105 (findConcatSeparation!2733 (regOne!33368 r!7292) (regTwo!33368 r!7292) (++!14559 Nil!65460 (Cons!65460 (h!71908 s!2326) Nil!65460)) (t!379226 s!2326) s!2326))))

(declare-fun b!6554331 () Bool)

(assert (=> b!6554331 (= e!3968105 None!16318)))

(declare-fun b!6554332 () Bool)

(declare-fun e!3968102 () Bool)

(declare-fun lt!2403643 () Option!16319)

(assert (=> b!6554332 (= e!3968102 (not (isDefined!13022 lt!2403643)))))

(declare-fun b!6554333 () Bool)

(declare-fun e!3968103 () Option!16319)

(assert (=> b!6554333 (= e!3968103 (Some!16318 (tuple2!66815 Nil!65460 s!2326)))))

(declare-fun b!6554334 () Bool)

(declare-fun e!3968106 () Bool)

(assert (=> b!6554334 (= e!3968106 (matchR!8611 (regTwo!33368 r!7292) s!2326))))

(declare-fun b!6554335 () Bool)

(declare-fun res!2689174 () Bool)

(declare-fun e!3968104 () Bool)

(assert (=> b!6554335 (=> (not res!2689174) (not e!3968104))))

(assert (=> b!6554335 (= res!2689174 (matchR!8611 (regOne!33368 r!7292) (_1!36710 (get!22724 lt!2403643))))))

(declare-fun b!6554336 () Bool)

(assert (=> b!6554336 (= e!3968103 e!3968105)))

(declare-fun c!1204103 () Bool)

(assert (=> b!6554336 (= c!1204103 (is-Nil!65460 s!2326))))

(declare-fun b!6554337 () Bool)

(declare-fun res!2689175 () Bool)

(assert (=> b!6554337 (=> (not res!2689175) (not e!3968104))))

(assert (=> b!6554337 (= res!2689175 (matchR!8611 (regTwo!33368 r!7292) (_2!36710 (get!22724 lt!2403643))))))

(declare-fun b!6554338 () Bool)

(assert (=> b!6554338 (= e!3968104 (= (++!14559 (_1!36710 (get!22724 lt!2403643)) (_2!36710 (get!22724 lt!2403643))) s!2326))))

(declare-fun d!2056830 () Bool)

(assert (=> d!2056830 e!3968102))

(declare-fun res!2689177 () Bool)

(assert (=> d!2056830 (=> res!2689177 e!3968102)))

(assert (=> d!2056830 (= res!2689177 e!3968104)))

(declare-fun res!2689178 () Bool)

(assert (=> d!2056830 (=> (not res!2689178) (not e!3968104))))

(assert (=> d!2056830 (= res!2689178 (isDefined!13022 lt!2403643))))

(assert (=> d!2056830 (= lt!2403643 e!3968103)))

(declare-fun c!1204102 () Bool)

(assert (=> d!2056830 (= c!1204102 e!3968106)))

(declare-fun res!2689176 () Bool)

(assert (=> d!2056830 (=> (not res!2689176) (not e!3968106))))

(assert (=> d!2056830 (= res!2689176 (matchR!8611 (regOne!33368 r!7292) Nil!65460))))

(assert (=> d!2056830 (validRegex!8164 (regOne!33368 r!7292))))

(assert (=> d!2056830 (= (findConcatSeparation!2733 (regOne!33368 r!7292) (regTwo!33368 r!7292) Nil!65460 s!2326 s!2326) lt!2403643)))

(assert (= (and d!2056830 res!2689176) b!6554334))

(assert (= (and d!2056830 c!1204102) b!6554333))

(assert (= (and d!2056830 (not c!1204102)) b!6554336))

(assert (= (and b!6554336 c!1204103) b!6554331))

(assert (= (and b!6554336 (not c!1204103)) b!6554328))

(assert (= (and d!2056830 res!2689178) b!6554335))

(assert (= (and b!6554335 res!2689174) b!6554337))

(assert (= (and b!6554337 res!2689175) b!6554338))

(assert (= (and d!2056830 (not res!2689177)) b!6554332))

(assert (=> b!6554334 m!7336390))

(declare-fun m!7336652 () Bool)

(assert (=> b!6554335 m!7336652))

(declare-fun m!7336654 () Bool)

(assert (=> b!6554335 m!7336654))

(declare-fun m!7336656 () Bool)

(assert (=> b!6554332 m!7336656))

(assert (=> b!6554337 m!7336652))

(declare-fun m!7336658 () Bool)

(assert (=> b!6554337 m!7336658))

(assert (=> b!6554328 m!7336400))

(assert (=> b!6554328 m!7336400))

(assert (=> b!6554328 m!7336402))

(assert (=> b!6554328 m!7336404))

(assert (=> b!6554328 m!7336400))

(declare-fun m!7336660 () Bool)

(assert (=> b!6554328 m!7336660))

(assert (=> d!2056830 m!7336656))

(declare-fun m!7336662 () Bool)

(assert (=> d!2056830 m!7336662))

(declare-fun m!7336664 () Bool)

(assert (=> d!2056830 m!7336664))

(assert (=> b!6554338 m!7336652))

(declare-fun m!7336666 () Bool)

(assert (=> b!6554338 m!7336666))

(assert (=> b!6553411 d!2056830))

(declare-fun d!2056832 () Bool)

(assert (=> d!2056832 (= (Exists!3498 lambda!364125) (choose!48796 lambda!364125))))

(declare-fun bs!1672934 () Bool)

(assert (= bs!1672934 d!2056832))

(declare-fun m!7336668 () Bool)

(assert (=> bs!1672934 m!7336668))

(assert (=> b!6553411 d!2056832))

(declare-fun d!2056834 () Bool)

(assert (=> d!2056834 (= (Exists!3498 lambda!364124) (choose!48796 lambda!364124))))

(declare-fun bs!1672935 () Bool)

(assert (= bs!1672935 d!2056834))

(declare-fun m!7336670 () Bool)

(assert (=> bs!1672935 m!7336670))

(assert (=> b!6553411 d!2056834))

(declare-fun bs!1672936 () Bool)

(declare-fun d!2056836 () Bool)

(assert (= bs!1672936 (and d!2056836 b!6553984)))

(declare-fun lambda!364228 () Int)

(assert (=> bs!1672936 (not (= lambda!364228 lambda!364199))))

(declare-fun bs!1672937 () Bool)

(assert (= bs!1672937 (and d!2056836 b!6553411)))

(assert (=> bs!1672937 (= lambda!364228 lambda!364124)))

(declare-fun bs!1672938 () Bool)

(assert (= bs!1672938 (and d!2056836 d!2056662)))

(assert (=> bs!1672938 (= (= (regOne!33368 r!7292) lt!2403289) (= lambda!364228 lambda!364188))))

(declare-fun bs!1672939 () Bool)

(assert (= bs!1672939 (and d!2056836 d!2056684)))

(assert (=> bs!1672939 (= (= (regOne!33368 r!7292) lt!2403289) (= lambda!364228 lambda!364195))))

(declare-fun bs!1672940 () Bool)

(assert (= bs!1672940 (and d!2056836 b!6553983)))

(assert (=> bs!1672940 (not (= lambda!364228 lambda!364198))))

(declare-fun bs!1672941 () Bool)

(assert (= bs!1672941 (and d!2056836 b!6554155)))

(assert (=> bs!1672941 (not (= lambda!364228 lambda!364209))))

(assert (=> bs!1672938 (not (= lambda!364228 lambda!364189))))

(declare-fun bs!1672942 () Bool)

(assert (= bs!1672942 (and d!2056836 b!6553700)))

(assert (=> bs!1672942 (not (= lambda!364228 lambda!364171))))

(declare-fun bs!1672943 () Bool)

(assert (= bs!1672943 (and d!2056836 b!6553399)))

(assert (=> bs!1672943 (= (= (regOne!33368 r!7292) lt!2403289) (= lambda!364228 lambda!364129))))

(declare-fun bs!1672944 () Bool)

(assert (= bs!1672944 (and d!2056836 b!6554312)))

(assert (=> bs!1672944 (not (= lambda!364228 lambda!364227))))

(declare-fun bs!1672945 () Bool)

(assert (= bs!1672945 (and d!2056836 b!6554156)))

(assert (=> bs!1672945 (not (= lambda!364228 lambda!364210))))

(declare-fun bs!1672946 () Bool)

(assert (= bs!1672946 (and d!2056836 b!6553699)))

(assert (=> bs!1672946 (not (= lambda!364228 lambda!364170))))

(assert (=> bs!1672937 (not (= lambda!364228 lambda!364125))))

(declare-fun bs!1672947 () Bool)

(assert (= bs!1672947 (and d!2056836 b!6554311)))

(assert (=> bs!1672947 (not (= lambda!364228 lambda!364226))))

(assert (=> bs!1672943 (not (= lambda!364228 lambda!364130))))

(assert (=> d!2056836 true))

(assert (=> d!2056836 true))

(assert (=> d!2056836 true))

(assert (=> d!2056836 (= (isDefined!13022 (findConcatSeparation!2733 (regOne!33368 r!7292) (regTwo!33368 r!7292) Nil!65460 s!2326 s!2326)) (Exists!3498 lambda!364228))))

(declare-fun lt!2403651 () Unit!159047)

(assert (=> d!2056836 (= lt!2403651 (choose!48800 (regOne!33368 r!7292) (regTwo!33368 r!7292) s!2326))))

(assert (=> d!2056836 (validRegex!8164 (regOne!33368 r!7292))))

(assert (=> d!2056836 (= (lemmaFindConcatSeparationEquivalentToExists!2497 (regOne!33368 r!7292) (regTwo!33368 r!7292) s!2326) lt!2403651)))

(declare-fun bs!1672948 () Bool)

(assert (= bs!1672948 d!2056836))

(assert (=> bs!1672948 m!7336664))

(assert (=> bs!1672948 m!7335660))

(assert (=> bs!1672948 m!7335662))

(declare-fun m!7336672 () Bool)

(assert (=> bs!1672948 m!7336672))

(declare-fun m!7336674 () Bool)

(assert (=> bs!1672948 m!7336674))

(assert (=> bs!1672948 m!7335660))

(assert (=> b!6553411 d!2056836))

(declare-fun bs!1672949 () Bool)

(declare-fun d!2056838 () Bool)

(assert (= bs!1672949 (and d!2056838 b!6553984)))

(declare-fun lambda!364229 () Int)

(assert (=> bs!1672949 (not (= lambda!364229 lambda!364199))))

(declare-fun bs!1672950 () Bool)

(assert (= bs!1672950 (and d!2056838 b!6553411)))

(assert (=> bs!1672950 (= lambda!364229 lambda!364124)))

(declare-fun bs!1672951 () Bool)

(assert (= bs!1672951 (and d!2056838 d!2056662)))

(assert (=> bs!1672951 (= (= (regOne!33368 r!7292) lt!2403289) (= lambda!364229 lambda!364188))))

(declare-fun bs!1672952 () Bool)

(assert (= bs!1672952 (and d!2056838 d!2056684)))

(assert (=> bs!1672952 (= (= (regOne!33368 r!7292) lt!2403289) (= lambda!364229 lambda!364195))))

(declare-fun bs!1672953 () Bool)

(assert (= bs!1672953 (and d!2056838 b!6553983)))

(assert (=> bs!1672953 (not (= lambda!364229 lambda!364198))))

(declare-fun bs!1672954 () Bool)

(assert (= bs!1672954 (and d!2056838 b!6554155)))

(assert (=> bs!1672954 (not (= lambda!364229 lambda!364209))))

(assert (=> bs!1672951 (not (= lambda!364229 lambda!364189))))

(declare-fun bs!1672955 () Bool)

(assert (= bs!1672955 (and d!2056838 b!6553700)))

(assert (=> bs!1672955 (not (= lambda!364229 lambda!364171))))

(declare-fun bs!1672956 () Bool)

(assert (= bs!1672956 (and d!2056838 d!2056836)))

(assert (=> bs!1672956 (= lambda!364229 lambda!364228)))

(declare-fun bs!1672957 () Bool)

(assert (= bs!1672957 (and d!2056838 b!6553399)))

(assert (=> bs!1672957 (= (= (regOne!33368 r!7292) lt!2403289) (= lambda!364229 lambda!364129))))

(declare-fun bs!1672958 () Bool)

(assert (= bs!1672958 (and d!2056838 b!6554312)))

(assert (=> bs!1672958 (not (= lambda!364229 lambda!364227))))

(declare-fun bs!1672959 () Bool)

(assert (= bs!1672959 (and d!2056838 b!6554156)))

(assert (=> bs!1672959 (not (= lambda!364229 lambda!364210))))

(declare-fun bs!1672960 () Bool)

(assert (= bs!1672960 (and d!2056838 b!6553699)))

(assert (=> bs!1672960 (not (= lambda!364229 lambda!364170))))

(assert (=> bs!1672950 (not (= lambda!364229 lambda!364125))))

(declare-fun bs!1672961 () Bool)

(assert (= bs!1672961 (and d!2056838 b!6554311)))

(assert (=> bs!1672961 (not (= lambda!364229 lambda!364226))))

(assert (=> bs!1672957 (not (= lambda!364229 lambda!364130))))

(assert (=> d!2056838 true))

(assert (=> d!2056838 true))

(assert (=> d!2056838 true))

(declare-fun lambda!364230 () Int)

(assert (=> bs!1672949 (= (and (= (regOne!33368 r!7292) (regOne!33368 lt!2403317)) (= (regTwo!33368 r!7292) (regTwo!33368 lt!2403317))) (= lambda!364230 lambda!364199))))

(declare-fun bs!1672964 () Bool)

(assert (= bs!1672964 d!2056838))

(assert (=> bs!1672964 (not (= lambda!364230 lambda!364229))))

(assert (=> bs!1672950 (not (= lambda!364230 lambda!364124))))

(assert (=> bs!1672951 (not (= lambda!364230 lambda!364188))))

(assert (=> bs!1672952 (not (= lambda!364230 lambda!364195))))

(assert (=> bs!1672953 (not (= lambda!364230 lambda!364198))))

(assert (=> bs!1672954 (not (= lambda!364230 lambda!364209))))

(assert (=> bs!1672951 (= (= (regOne!33368 r!7292) lt!2403289) (= lambda!364230 lambda!364189))))

(assert (=> bs!1672955 (= lambda!364230 lambda!364171)))

(assert (=> bs!1672956 (not (= lambda!364230 lambda!364228))))

(assert (=> bs!1672957 (not (= lambda!364230 lambda!364129))))

(assert (=> bs!1672958 (= (and (= (regOne!33368 r!7292) (regOne!33368 lt!2403304)) (= (regTwo!33368 r!7292) (regTwo!33368 lt!2403304))) (= lambda!364230 lambda!364227))))

(assert (=> bs!1672959 (= (and (= s!2326 (_1!36710 lt!2403292)) (= (regOne!33368 r!7292) (regOne!33368 lt!2403289)) (= (regTwo!33368 r!7292) (regTwo!33368 lt!2403289))) (= lambda!364230 lambda!364210))))

(assert (=> bs!1672960 (not (= lambda!364230 lambda!364170))))

(assert (=> bs!1672950 (= lambda!364230 lambda!364125)))

(assert (=> bs!1672961 (not (= lambda!364230 lambda!364226))))

(assert (=> bs!1672957 (= (= (regOne!33368 r!7292) lt!2403289) (= lambda!364230 lambda!364130))))

(assert (=> d!2056838 true))

(assert (=> d!2056838 true))

(assert (=> d!2056838 true))

(assert (=> d!2056838 (= (Exists!3498 lambda!364229) (Exists!3498 lambda!364230))))

(declare-fun lt!2403652 () Unit!159047)

(assert (=> d!2056838 (= lt!2403652 (choose!48795 (regOne!33368 r!7292) (regTwo!33368 r!7292) s!2326))))

(assert (=> d!2056838 (validRegex!8164 (regOne!33368 r!7292))))

(assert (=> d!2056838 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2035 (regOne!33368 r!7292) (regTwo!33368 r!7292) s!2326) lt!2403652)))

(declare-fun m!7336698 () Bool)

(assert (=> bs!1672964 m!7336698))

(declare-fun m!7336700 () Bool)

(assert (=> bs!1672964 m!7336700))

(declare-fun m!7336702 () Bool)

(assert (=> bs!1672964 m!7336702))

(assert (=> bs!1672964 m!7336664))

(assert (=> b!6553411 d!2056838))

(declare-fun d!2056846 () Bool)

(assert (=> d!2056846 (= (isDefined!13022 (findConcatSeparation!2733 (regOne!33368 r!7292) (regTwo!33368 r!7292) Nil!65460 s!2326 s!2326)) (not (isEmpty!37697 (findConcatSeparation!2733 (regOne!33368 r!7292) (regTwo!33368 r!7292) Nil!65460 s!2326 s!2326))))))

(declare-fun bs!1672965 () Bool)

(assert (= bs!1672965 d!2056846))

(assert (=> bs!1672965 m!7335660))

(declare-fun m!7336704 () Bool)

(assert (=> bs!1672965 m!7336704))

(assert (=> b!6553411 d!2056846))

(assert (=> b!6553369 d!2056644))

(declare-fun d!2056848 () Bool)

(declare-fun e!3968124 () Bool)

(assert (=> d!2056848 e!3968124))

(declare-fun res!2689196 () Bool)

(assert (=> d!2056848 (=> (not res!2689196) (not e!3968124))))

(declare-fun lt!2403660 () List!65585)

(declare-fun noDuplicate!2234 (List!65585) Bool)

(assert (=> d!2056848 (= res!2689196 (noDuplicate!2234 lt!2403660))))

(declare-fun choose!48818 ((Set Context!11624)) List!65585)

(assert (=> d!2056848 (= lt!2403660 (choose!48818 z!1189))))

(assert (=> d!2056848 (= (toList!10212 z!1189) lt!2403660)))

(declare-fun b!6554366 () Bool)

(declare-fun content!12570 (List!65585) (Set Context!11624))

(assert (=> b!6554366 (= e!3968124 (= (content!12570 lt!2403660) z!1189))))

(assert (= (and d!2056848 res!2689196) b!6554366))

(declare-fun m!7336706 () Bool)

(assert (=> d!2056848 m!7336706))

(declare-fun m!7336708 () Bool)

(assert (=> d!2056848 m!7336708))

(declare-fun m!7336710 () Bool)

(assert (=> b!6554366 m!7336710))

(assert (=> b!6553409 d!2056848))

(declare-fun b!6554367 () Bool)

(declare-fun e!3968130 () (Set Context!11624))

(declare-fun call!570077 () (Set Context!11624))

(assert (=> b!6554367 (= e!3968130 call!570077)))

(declare-fun b!6554368 () Bool)

(declare-fun e!3968127 () (Set Context!11624))

(declare-fun e!3968128 () (Set Context!11624))

(assert (=> b!6554368 (= e!3968127 e!3968128)))

(declare-fun c!1204110 () Bool)

(assert (=> b!6554368 (= c!1204110 (is-Concat!25273 (reg!16757 (regOne!33368 r!7292))))))

(declare-fun bm!570069 () Bool)

(declare-fun call!570079 () (Set Context!11624))

(assert (=> bm!570069 (= call!570077 call!570079)))

(declare-fun d!2056850 () Bool)

(declare-fun c!1204114 () Bool)

(assert (=> d!2056850 (= c!1204114 (and (is-ElementMatch!16428 (reg!16757 (regOne!33368 r!7292))) (= (c!1203875 (reg!16757 (regOne!33368 r!7292))) (h!71908 s!2326))))))

(declare-fun e!3968126 () (Set Context!11624))

(assert (=> d!2056850 (= (derivationStepZipperDown!1676 (reg!16757 (regOne!33368 r!7292)) lt!2403313 (h!71908 s!2326)) e!3968126)))

(declare-fun b!6554369 () Bool)

(assert (=> b!6554369 (= e!3968130 (as set.empty (Set Context!11624)))))

(declare-fun bm!570070 () Bool)

(declare-fun call!570074 () List!65583)

(declare-fun c!1204112 () Bool)

(declare-fun call!570075 () (Set Context!11624))

(assert (=> bm!570070 (= call!570075 (derivationStepZipperDown!1676 (ite c!1204112 (regOne!33369 (reg!16757 (regOne!33368 r!7292))) (regOne!33368 (reg!16757 (regOne!33368 r!7292)))) (ite c!1204112 lt!2403313 (Context!11625 call!570074)) (h!71908 s!2326)))))

(declare-fun b!6554370 () Bool)

(declare-fun c!1204111 () Bool)

(assert (=> b!6554370 (= c!1204111 (is-Star!16428 (reg!16757 (regOne!33368 r!7292))))))

(assert (=> b!6554370 (= e!3968128 e!3968130)))

(declare-fun b!6554371 () Bool)

(declare-fun e!3968129 () (Set Context!11624))

(declare-fun call!570076 () (Set Context!11624))

(assert (=> b!6554371 (= e!3968129 (set.union call!570075 call!570076))))

(declare-fun b!6554372 () Bool)

(assert (=> b!6554372 (= e!3968128 call!570077)))

(declare-fun b!6554373 () Bool)

(declare-fun e!3968125 () Bool)

(assert (=> b!6554373 (= e!3968125 (nullable!6421 (regOne!33368 (reg!16757 (regOne!33368 r!7292)))))))

(declare-fun b!6554374 () Bool)

(declare-fun c!1204113 () Bool)

(assert (=> b!6554374 (= c!1204113 e!3968125)))

(declare-fun res!2689197 () Bool)

(assert (=> b!6554374 (=> (not res!2689197) (not e!3968125))))

(assert (=> b!6554374 (= res!2689197 (is-Concat!25273 (reg!16757 (regOne!33368 r!7292))))))

(assert (=> b!6554374 (= e!3968129 e!3968127)))

(declare-fun b!6554375 () Bool)

(assert (=> b!6554375 (= e!3968127 (set.union call!570075 call!570079))))

(declare-fun bm!570071 () Bool)

(assert (=> bm!570071 (= call!570074 ($colon$colon!2269 (exprs!6312 lt!2403313) (ite (or c!1204113 c!1204110) (regTwo!33368 (reg!16757 (regOne!33368 r!7292))) (reg!16757 (regOne!33368 r!7292)))))))

(declare-fun b!6554378 () Bool)

(assert (=> b!6554378 (= e!3968126 (set.insert lt!2403313 (as set.empty (Set Context!11624))))))

(declare-fun b!6554379 () Bool)

(assert (=> b!6554379 (= e!3968126 e!3968129)))

(assert (=> b!6554379 (= c!1204112 (is-Union!16428 (reg!16757 (regOne!33368 r!7292))))))

(declare-fun bm!570072 () Bool)

(declare-fun call!570078 () List!65583)

(assert (=> bm!570072 (= call!570078 call!570074)))

(declare-fun bm!570073 () Bool)

(assert (=> bm!570073 (= call!570076 (derivationStepZipperDown!1676 (ite c!1204112 (regTwo!33369 (reg!16757 (regOne!33368 r!7292))) (ite c!1204113 (regTwo!33368 (reg!16757 (regOne!33368 r!7292))) (ite c!1204110 (regOne!33368 (reg!16757 (regOne!33368 r!7292))) (reg!16757 (reg!16757 (regOne!33368 r!7292)))))) (ite (or c!1204112 c!1204113) lt!2403313 (Context!11625 call!570078)) (h!71908 s!2326)))))

(declare-fun bm!570074 () Bool)

(assert (=> bm!570074 (= call!570079 call!570076)))

(assert (= (and d!2056850 c!1204114) b!6554378))

(assert (= (and d!2056850 (not c!1204114)) b!6554379))

(assert (= (and b!6554379 c!1204112) b!6554371))

(assert (= (and b!6554379 (not c!1204112)) b!6554374))

(assert (= (and b!6554374 res!2689197) b!6554373))

(assert (= (and b!6554374 c!1204113) b!6554375))

(assert (= (and b!6554374 (not c!1204113)) b!6554368))

(assert (= (and b!6554368 c!1204110) b!6554372))

(assert (= (and b!6554368 (not c!1204110)) b!6554370))

(assert (= (and b!6554370 c!1204111) b!6554367))

(assert (= (and b!6554370 (not c!1204111)) b!6554369))

(assert (= (or b!6554372 b!6554367) bm!570072))

(assert (= (or b!6554372 b!6554367) bm!570069))

(assert (= (or b!6554375 bm!570072) bm!570071))

(assert (= (or b!6554375 bm!570069) bm!570074))

(assert (= (or b!6554371 bm!570074) bm!570073))

(assert (= (or b!6554371 b!6554375) bm!570070))

(declare-fun m!7336712 () Bool)

(assert (=> bm!570073 m!7336712))

(declare-fun m!7336714 () Bool)

(assert (=> b!6554373 m!7336714))

(declare-fun m!7336716 () Bool)

(assert (=> bm!570070 m!7336716))

(assert (=> b!6554378 m!7335694))

(declare-fun m!7336718 () Bool)

(assert (=> bm!570071 m!7336718))

(assert (=> b!6553388 d!2056850))

(declare-fun d!2056852 () Bool)

(assert (=> d!2056852 (= (nullable!6421 (regOne!33368 (regOne!33368 r!7292))) (nullableFct!2347 (regOne!33368 (regOne!33368 r!7292))))))

(declare-fun bs!1672966 () Bool)

(assert (= bs!1672966 d!2056852))

(declare-fun m!7336720 () Bool)

(assert (=> bs!1672966 m!7336720))

(assert (=> b!6553386 d!2056852))

(declare-fun d!2056854 () Bool)

(declare-fun c!1204115 () Bool)

(assert (=> d!2056854 (= c!1204115 (isEmpty!37695 (_2!36710 lt!2403310)))))

(declare-fun e!3968133 () Bool)

(assert (=> d!2056854 (= (matchZipper!2440 lt!2403293 (_2!36710 lt!2403310)) e!3968133)))

(declare-fun b!6554382 () Bool)

(assert (=> b!6554382 (= e!3968133 (nullableZipper!2173 lt!2403293))))

(declare-fun b!6554383 () Bool)

(assert (=> b!6554383 (= e!3968133 (matchZipper!2440 (derivationStepZipper!2394 lt!2403293 (head!13307 (_2!36710 lt!2403310))) (tail!12392 (_2!36710 lt!2403310))))))

(assert (= (and d!2056854 c!1204115) b!6554382))

(assert (= (and d!2056854 (not c!1204115)) b!6554383))

(assert (=> d!2056854 m!7336168))

(declare-fun m!7336722 () Bool)

(assert (=> b!6554382 m!7336722))

(assert (=> b!6554383 m!7336158))

(assert (=> b!6554383 m!7336158))

(declare-fun m!7336724 () Bool)

(assert (=> b!6554383 m!7336724))

(assert (=> b!6554383 m!7336162))

(assert (=> b!6554383 m!7336724))

(assert (=> b!6554383 m!7336162))

(declare-fun m!7336726 () Bool)

(assert (=> b!6554383 m!7336726))

(assert (=> b!6553408 d!2056854))

(declare-fun e!3968136 () Bool)

(assert (=> b!6553375 (= tp!1811730 e!3968136)))

(declare-fun b!6554394 () Bool)

(assert (=> b!6554394 (= e!3968136 tp_is_empty!42109)))

(declare-fun b!6554397 () Bool)

(declare-fun tp!1811778 () Bool)

(declare-fun tp!1811780 () Bool)

(assert (=> b!6554397 (= e!3968136 (and tp!1811778 tp!1811780))))

(declare-fun b!6554396 () Bool)

(declare-fun tp!1811782 () Bool)

(assert (=> b!6554396 (= e!3968136 tp!1811782)))

(declare-fun b!6554395 () Bool)

(declare-fun tp!1811779 () Bool)

(declare-fun tp!1811781 () Bool)

(assert (=> b!6554395 (= e!3968136 (and tp!1811779 tp!1811781))))

(assert (= (and b!6553375 (is-ElementMatch!16428 (regOne!33368 r!7292))) b!6554394))

(assert (= (and b!6553375 (is-Concat!25273 (regOne!33368 r!7292))) b!6554395))

(assert (= (and b!6553375 (is-Star!16428 (regOne!33368 r!7292))) b!6554396))

(assert (= (and b!6553375 (is-Union!16428 (regOne!33368 r!7292))) b!6554397))

(declare-fun e!3968137 () Bool)

(assert (=> b!6553375 (= tp!1811731 e!3968137)))

(declare-fun b!6554398 () Bool)

(assert (=> b!6554398 (= e!3968137 tp_is_empty!42109)))

(declare-fun b!6554401 () Bool)

(declare-fun tp!1811783 () Bool)

(declare-fun tp!1811785 () Bool)

(assert (=> b!6554401 (= e!3968137 (and tp!1811783 tp!1811785))))

(declare-fun b!6554400 () Bool)

(declare-fun tp!1811787 () Bool)

(assert (=> b!6554400 (= e!3968137 tp!1811787)))

(declare-fun b!6554399 () Bool)

(declare-fun tp!1811784 () Bool)

(declare-fun tp!1811786 () Bool)

(assert (=> b!6554399 (= e!3968137 (and tp!1811784 tp!1811786))))

(assert (= (and b!6553375 (is-ElementMatch!16428 (regTwo!33368 r!7292))) b!6554398))

(assert (= (and b!6553375 (is-Concat!25273 (regTwo!33368 r!7292))) b!6554399))

(assert (= (and b!6553375 (is-Star!16428 (regTwo!33368 r!7292))) b!6554400))

(assert (= (and b!6553375 (is-Union!16428 (regTwo!33368 r!7292))) b!6554401))

(declare-fun b!6554409 () Bool)

(declare-fun e!3968143 () Bool)

(declare-fun tp!1811792 () Bool)

(assert (=> b!6554409 (= e!3968143 tp!1811792)))

(declare-fun e!3968142 () Bool)

(declare-fun b!6554408 () Bool)

(declare-fun tp!1811793 () Bool)

(assert (=> b!6554408 (= e!3968142 (and (inv!84318 (h!71909 (t!379227 zl!343))) e!3968143 tp!1811793))))

(assert (=> b!6553380 (= tp!1811729 e!3968142)))

(assert (= b!6554408 b!6554409))

(assert (= (and b!6553380 (is-Cons!65461 (t!379227 zl!343))) b!6554408))

(declare-fun m!7336732 () Bool)

(assert (=> b!6554408 m!7336732))

(declare-fun b!6554414 () Bool)

(declare-fun e!3968146 () Bool)

(declare-fun tp!1811798 () Bool)

(declare-fun tp!1811799 () Bool)

(assert (=> b!6554414 (= e!3968146 (and tp!1811798 tp!1811799))))

(assert (=> b!6553373 (= tp!1811733 e!3968146)))

(assert (= (and b!6553373 (is-Cons!65459 (exprs!6312 (h!71909 zl!343)))) b!6554414))

(declare-fun b!6554415 () Bool)

(declare-fun e!3968147 () Bool)

(declare-fun tp!1811800 () Bool)

(declare-fun tp!1811801 () Bool)

(assert (=> b!6554415 (= e!3968147 (and tp!1811800 tp!1811801))))

(assert (=> b!6553378 (= tp!1811734 e!3968147)))

(assert (= (and b!6553378 (is-Cons!65459 (exprs!6312 setElem!44727))) b!6554415))

(declare-fun e!3968148 () Bool)

(assert (=> b!6553395 (= tp!1811736 e!3968148)))

(declare-fun b!6554416 () Bool)

(assert (=> b!6554416 (= e!3968148 tp_is_empty!42109)))

(declare-fun b!6554419 () Bool)

(declare-fun tp!1811802 () Bool)

(declare-fun tp!1811804 () Bool)

(assert (=> b!6554419 (= e!3968148 (and tp!1811802 tp!1811804))))

(declare-fun b!6554418 () Bool)

(declare-fun tp!1811806 () Bool)

(assert (=> b!6554418 (= e!3968148 tp!1811806)))

(declare-fun b!6554417 () Bool)

(declare-fun tp!1811803 () Bool)

(declare-fun tp!1811805 () Bool)

(assert (=> b!6554417 (= e!3968148 (and tp!1811803 tp!1811805))))

(assert (= (and b!6553395 (is-ElementMatch!16428 (regOne!33369 r!7292))) b!6554416))

(assert (= (and b!6553395 (is-Concat!25273 (regOne!33369 r!7292))) b!6554417))

(assert (= (and b!6553395 (is-Star!16428 (regOne!33369 r!7292))) b!6554418))

(assert (= (and b!6553395 (is-Union!16428 (regOne!33369 r!7292))) b!6554419))

(declare-fun e!3968149 () Bool)

(assert (=> b!6553395 (= tp!1811737 e!3968149)))

(declare-fun b!6554420 () Bool)

(assert (=> b!6554420 (= e!3968149 tp_is_empty!42109)))

(declare-fun b!6554423 () Bool)

(declare-fun tp!1811807 () Bool)

(declare-fun tp!1811809 () Bool)

(assert (=> b!6554423 (= e!3968149 (and tp!1811807 tp!1811809))))

(declare-fun b!6554422 () Bool)

(declare-fun tp!1811811 () Bool)

(assert (=> b!6554422 (= e!3968149 tp!1811811)))

(declare-fun b!6554421 () Bool)

(declare-fun tp!1811808 () Bool)

(declare-fun tp!1811810 () Bool)

(assert (=> b!6554421 (= e!3968149 (and tp!1811808 tp!1811810))))

(assert (= (and b!6553395 (is-ElementMatch!16428 (regTwo!33369 r!7292))) b!6554420))

(assert (= (and b!6553395 (is-Concat!25273 (regTwo!33369 r!7292))) b!6554421))

(assert (= (and b!6553395 (is-Star!16428 (regTwo!33369 r!7292))) b!6554422))

(assert (= (and b!6553395 (is-Union!16428 (regTwo!33369 r!7292))) b!6554423))

(declare-fun e!3968150 () Bool)

(assert (=> b!6553400 (= tp!1811732 e!3968150)))

(declare-fun b!6554424 () Bool)

(assert (=> b!6554424 (= e!3968150 tp_is_empty!42109)))

(declare-fun b!6554427 () Bool)

(declare-fun tp!1811812 () Bool)

(declare-fun tp!1811814 () Bool)

(assert (=> b!6554427 (= e!3968150 (and tp!1811812 tp!1811814))))

(declare-fun b!6554426 () Bool)

(declare-fun tp!1811816 () Bool)

(assert (=> b!6554426 (= e!3968150 tp!1811816)))

(declare-fun b!6554425 () Bool)

(declare-fun tp!1811813 () Bool)

(declare-fun tp!1811815 () Bool)

(assert (=> b!6554425 (= e!3968150 (and tp!1811813 tp!1811815))))

(assert (= (and b!6553400 (is-ElementMatch!16428 (reg!16757 r!7292))) b!6554424))

(assert (= (and b!6553400 (is-Concat!25273 (reg!16757 r!7292))) b!6554425))

(assert (= (and b!6553400 (is-Star!16428 (reg!16757 r!7292))) b!6554426))

(assert (= (and b!6553400 (is-Union!16428 (reg!16757 r!7292))) b!6554427))

(declare-fun b!6554432 () Bool)

(declare-fun e!3968153 () Bool)

(declare-fun tp!1811819 () Bool)

(assert (=> b!6554432 (= e!3968153 (and tp_is_empty!42109 tp!1811819))))

(assert (=> b!6553384 (= tp!1811735 e!3968153)))

(assert (= (and b!6553384 (is-Cons!65460 (t!379226 s!2326))) b!6554432))

(declare-fun condSetEmpty!44733 () Bool)

(assert (=> setNonEmpty!44727 (= condSetEmpty!44733 (= setRest!44727 (as set.empty (Set Context!11624))))))

(declare-fun setRes!44733 () Bool)

(assert (=> setNonEmpty!44727 (= tp!1811728 setRes!44733)))

(declare-fun setIsEmpty!44733 () Bool)

(assert (=> setIsEmpty!44733 setRes!44733))

(declare-fun setNonEmpty!44733 () Bool)

(declare-fun setElem!44733 () Context!11624)

(declare-fun tp!1811824 () Bool)

(declare-fun e!3968156 () Bool)

(assert (=> setNonEmpty!44733 (= setRes!44733 (and tp!1811824 (inv!84318 setElem!44733) e!3968156))))

(declare-fun setRest!44733 () (Set Context!11624))

(assert (=> setNonEmpty!44733 (= setRest!44727 (set.union (set.insert setElem!44733 (as set.empty (Set Context!11624))) setRest!44733))))

(declare-fun b!6554437 () Bool)

(declare-fun tp!1811825 () Bool)

(assert (=> b!6554437 (= e!3968156 tp!1811825)))

(assert (= (and setNonEmpty!44727 condSetEmpty!44733) setIsEmpty!44733))

(assert (= (and setNonEmpty!44727 (not condSetEmpty!44733)) setNonEmpty!44733))

(assert (= setNonEmpty!44733 b!6554437))

(declare-fun m!7336734 () Bool)

(assert (=> setNonEmpty!44733 m!7336734))

(declare-fun b_lambda!248017 () Bool)

(assert (= b_lambda!248015 (or b!6553405 b_lambda!248017)))

(declare-fun bs!1672974 () Bool)

(declare-fun d!2056858 () Bool)

(assert (= bs!1672974 (and d!2056858 b!6553405)))

(assert (=> bs!1672974 (= (dynLambda!26028 lambda!364126 lt!2403281) (derivationStepZipperUp!1602 lt!2403281 (h!71908 s!2326)))))

(assert (=> bs!1672974 m!7335620))

(assert (=> d!2056812 d!2056858))

(declare-fun b_lambda!248019 () Bool)

(assert (= b_lambda!248005 (or b!6553405 b_lambda!248019)))

(declare-fun bs!1672975 () Bool)

(declare-fun d!2056860 () Bool)

(assert (= bs!1672975 (and d!2056860 b!6553405)))

(assert (=> bs!1672975 (= (dynLambda!26028 lambda!364126 lt!2403313) (derivationStepZipperUp!1602 lt!2403313 (h!71908 s!2326)))))

(assert (=> bs!1672975 m!7335698))

(assert (=> d!2056634 d!2056860))

(declare-fun b_lambda!248021 () Bool)

(assert (= b_lambda!248013 (or b!6553392 b_lambda!248021)))

(declare-fun bs!1672976 () Bool)

(declare-fun d!2056862 () Bool)

(assert (= bs!1672976 (and d!2056862 b!6553392)))

(declare-fun lt!2403662 () Unit!159047)

(assert (=> bs!1672976 (= lt!2403662 (lemmaConcatPreservesForall!401 (exprs!6312 lt!2403261) lt!2403275 lambda!364128))))

(assert (=> bs!1672976 (= (dynLambda!26031 lambda!364127 lt!2403261) (Context!11625 (++!14558 (exprs!6312 lt!2403261) lt!2403275)))))

(declare-fun m!7336736 () Bool)

(assert (=> bs!1672976 m!7336736))

(declare-fun m!7336738 () Bool)

(assert (=> bs!1672976 m!7336738))

(assert (=> d!2056784 d!2056862))

(declare-fun b_lambda!248023 () Bool)

(assert (= b_lambda!248003 (or b!6553405 b_lambda!248023)))

(declare-fun bs!1672977 () Bool)

(declare-fun d!2056864 () Bool)

(assert (= bs!1672977 (and d!2056864 b!6553405)))

(assert (=> bs!1672977 (= (dynLambda!26028 lambda!364126 lt!2403261) (derivationStepZipperUp!1602 lt!2403261 (h!71908 s!2326)))))

(assert (=> bs!1672977 m!7335704))

(assert (=> d!2056630 d!2056864))

(declare-fun b_lambda!248025 () Bool)

(assert (= b_lambda!248001 (or b!6553405 b_lambda!248025)))

(declare-fun bs!1672978 () Bool)

(declare-fun d!2056866 () Bool)

(assert (= bs!1672978 (and d!2056866 b!6553405)))

(assert (=> bs!1672978 (= (dynLambda!26028 lambda!364126 (h!71909 zl!343)) (derivationStepZipperUp!1602 (h!71909 zl!343) (h!71908 s!2326)))))

(assert (=> bs!1672978 m!7335618))

(assert (=> d!2056612 d!2056866))

(push 1)

(assert (not b!6553701))

(assert (not b!6554422))

(assert (not d!2056654))

(assert (not b!6554409))

(assert (not bm!570007))

(assert (not d!2056634))

(assert (not b!6554132))

(assert (not b!6554338))

(assert (not b!6553908))

(assert (not d!2056734))

(assert (not b!6554072))

(assert (not d!2056798))

(assert (not d!2056790))

(assert (not b!6553740))

(assert (not b!6553778))

(assert (not b!6554073))

(assert (not bm!570046))

(assert (not bm!570066))

(assert (not b!6553868))

(assert (not bm!570001))

(assert (not d!2056618))

(assert (not b!6553968))

(assert (not d!2056780))

(assert (not bm!570052))

(assert (not b!6554415))

(assert (not d!2056644))

(assert (not b_lambda!248021))

(assert (not b!6553985))

(assert (not b!6554423))

(assert (not d!2056600))

(assert (not b!6554373))

(assert (not b!6554221))

(assert (not b!6554217))

(assert (not bm!570054))

(assert (not d!2056796))

(assert (not b!6553867))

(assert (not b!6554337))

(assert (not b!6554223))

(assert (not b!6553845))

(assert (not b!6554320))

(assert (not b!6553652))

(assert (not d!2056666))

(assert (not b!6554418))

(assert (not d!2056782))

(assert (not b!6553862))

(assert (not bm!570012))

(assert (not b!6553814))

(assert (not bm!570018))

(assert (not b!6553816))

(assert (not b!6553926))

(assert (not bm!570004))

(assert (not b!6554067))

(assert (not setNonEmpty!44733))

(assert (not d!2056738))

(assert (not bm!570047))

(assert (not b!6554157))

(assert (not d!2056692))

(assert (not b!6553969))

(assert (not d!2056698))

(assert (not d!2056670))

(assert (not bs!1672974))

(assert (not b!6554382))

(assert (not b!6553923))

(assert (not bm!570034))

(assert (not d!2056708))

(assert (not b_lambda!248023))

(assert (not bm!570027))

(assert (not b!6553781))

(assert (not b!6554313))

(assert (not b!6553653))

(assert (not b!6553657))

(assert (not d!2056716))

(assert (not b!6553931))

(assert (not b!6554421))

(assert (not b!6553982))

(assert (not bm!570002))

(assert (not d!2056608))

(assert (not d!2056800))

(assert (not b!6553813))

(assert (not d!2056632))

(assert (not b!6554129))

(assert (not b!6554401))

(assert (not d!2056646))

(assert (not b!6553747))

(assert (not b!6554124))

(assert (not b!6553783))

(assert (not b!6554414))

(assert (not b!6554135))

(assert (not bm!570068))

(assert (not b!6553963))

(assert (not b!6553807))

(assert (not b!6554321))

(assert (not b!6554288))

(assert (not b!6553785))

(assert (not bs!1672978))

(assert (not d!2056746))

(assert (not d!2056690))

(assert (not b!6553698))

(assert (not b!6554427))

(assert (not bm!570065))

(assert (not b!6554399))

(assert (not b!6554238))

(assert (not b_lambda!248019))

(assert (not d!2056626))

(assert (not d!2056748))

(assert (not d!2056662))

(assert (not b!6553736))

(assert (not d!2056826))

(assert (not b!6554426))

(assert (not bm!570006))

(assert (not b!6554408))

(assert (not b_lambda!248025))

(assert (not d!2056674))

(assert (not d!2056834))

(assert (not d!2056828))

(assert (not b!6554215))

(assert (not d!2056694))

(assert (not b!6554290))

(assert (not b!6554128))

(assert (not b!6554154))

(assert (not b!6553907))

(assert (not b!6553971))

(assert (not bm!570053))

(assert (not b!6553837))

(assert (not bm!570033))

(assert (not b!6554136))

(assert (not d!2056852))

(assert (not d!2056846))

(assert (not d!2056610))

(assert (not b!6553752))

(assert (not b!6554052))

(assert (not d!2056620))

(assert (not b!6554310))

(assert (not d!2056624))

(assert (not b!6553748))

(assert (not b!6553777))

(assert (not bs!1672977))

(assert (not b!6553614))

(assert (not b!6553776))

(assert (not b!6554295))

(assert (not b!6553599))

(assert (not bm!570017))

(assert (not b!6554058))

(assert (not b!6554335))

(assert (not b!6554066))

(assert (not b!6553780))

(assert (not b!6554432))

(assert (not b!6554395))

(assert (not b!6554425))

(assert (not b!6554322))

(assert (not b!6553840))

(assert (not b!6553753))

(assert (not b!6553932))

(assert (not d!2056718))

(assert (not b!6553597))

(assert (not d!2056854))

(assert (not b!6553839))

(assert (not bm!570055))

(assert (not b!6553644))

(assert (not bm!570026))

(assert (not d!2056696))

(assert (not d!2056736))

(assert (not d!2056636))

(assert (not b!6554137))

(assert (not b!6553737))

(assert (not b!6554126))

(assert (not d!2056772))

(assert (not b!6553755))

(assert (not bm!569987))

(assert (not bm!570016))

(assert (not d!2056832))

(assert (not b!6554239))

(assert (not b!6553600))

(assert (not b!6554075))

(assert (not d!2056838))

(assert (not b!6553732))

(assert (not d!2056704))

(assert (not d!2056652))

(assert (not b!6554059))

(assert (not b!6554383))

(assert (not b!6554328))

(assert (not d!2056806))

(assert tp_is_empty!42109)

(assert (not d!2056714))

(assert (not b!6554141))

(assert (not b!6554289))

(assert (not d!2056848))

(assert (not b!6554437))

(assert (not b!6553967))

(assert (not b!6554400))

(assert (not b!6553855))

(assert (not bs!1672975))

(assert (not d!2056830))

(assert (not b!6553869))

(assert (not b!6554396))

(assert (not d!2056808))

(assert (not bm!570071))

(assert (not b!6554061))

(assert (not b!6554050))

(assert (not bm!570036))

(assert (not b!6553844))

(assert (not d!2056814))

(assert (not b!6554316))

(assert (not b!6553615))

(assert (not b!6553598))

(assert (not b!6554294))

(assert (not b!6554053))

(assert (not b!6553927))

(assert (not b!6554419))

(assert (not b!6554417))

(assert (not b!6553731))

(assert (not b!6553841))

(assert (not b!6554397))

(assert (not b!6553863))

(assert (not b!6553922))

(assert (not b!6554131))

(assert (not b!6554222))

(assert (not b!6553815))

(assert (not d!2056812))

(assert (not d!2056784))

(assert (not b!6553738))

(assert (not b!6554220))

(assert (not d!2056768))

(assert (not b!6553933))

(assert (not b!6554071))

(assert (not bm!570013))

(assert (not b!6554366))

(assert (not d!2056660))

(assert (not b!6554334))

(assert (not d!2056630))

(assert (not b!6553838))

(assert (not bm!570073))

(assert (not d!2056710))

(assert (not bs!1672976))

(assert (not b!6554057))

(assert (not bm!570035))

(assert (not b!6553935))

(assert (not b!6553962))

(assert (not b!6554324))

(assert (not b!6553658))

(assert (not d!2056836))

(assert (not b!6554332))

(assert (not bm!570070))

(assert (not b!6554315))

(assert (not d!2056598))

(assert (not b!6553871))

(assert (not d!2056638))

(assert (not d!2056612))

(assert (not b!6553754))

(assert (not b_lambda!248017))

(assert (not d!2056648))

(assert (not b!6554049))

(assert (not d!2056672))

(assert (not d!2056744))

(assert (not d!2056684))

(assert (not d!2056642))

(assert (not bm!570067))

(assert (not bm!570028))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

