; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!637136 () Bool)

(assert start!637136)

(declare-fun b!6481408 () Bool)

(assert (=> b!6481408 true))

(assert (=> b!6481408 true))

(declare-fun lambda!358442 () Int)

(declare-fun lambda!358441 () Int)

(assert (=> b!6481408 (not (= lambda!358442 lambda!358441))))

(assert (=> b!6481408 true))

(assert (=> b!6481408 true))

(declare-fun b!6481403 () Bool)

(assert (=> b!6481403 true))

(declare-fun bs!1644450 () Bool)

(declare-fun b!6481409 () Bool)

(assert (= bs!1644450 (and b!6481409 b!6481408)))

(declare-datatypes ((C!32986 0))(
  ( (C!32987 (val!26195 Int)) )
))
(declare-datatypes ((Regex!16358 0))(
  ( (ElementMatch!16358 (c!1187340 C!32986)) (Concat!25203 (regOne!33228 Regex!16358) (regTwo!33228 Regex!16358)) (EmptyExpr!16358) (Star!16358 (reg!16687 Regex!16358)) (EmptyLang!16358) (Union!16358 (regOne!33229 Regex!16358) (regTwo!33229 Regex!16358)) )
))
(declare-fun r!7292 () Regex!16358)

(declare-fun lt!2386701 () Regex!16358)

(declare-fun lambda!358444 () Int)

(assert (=> bs!1644450 (= (= lt!2386701 (regOne!33228 r!7292)) (= lambda!358444 lambda!358441))))

(assert (=> bs!1644450 (not (= lambda!358444 lambda!358442))))

(assert (=> b!6481409 true))

(assert (=> b!6481409 true))

(assert (=> b!6481409 true))

(declare-fun lambda!358445 () Int)

(assert (=> bs!1644450 (not (= lambda!358445 lambda!358441))))

(assert (=> bs!1644450 (= (= lt!2386701 (regOne!33228 r!7292)) (= lambda!358445 lambda!358442))))

(assert (=> b!6481409 (not (= lambda!358445 lambda!358444))))

(assert (=> b!6481409 true))

(assert (=> b!6481409 true))

(assert (=> b!6481409 true))

(declare-fun bs!1644451 () Bool)

(declare-fun b!6481386 () Bool)

(assert (= bs!1644451 (and b!6481386 b!6481408)))

(declare-datatypes ((List!65373 0))(
  ( (Nil!65249) (Cons!65249 (h!71697 C!32986) (t!378999 List!65373)) )
))
(declare-fun s!2326 () List!65373)

(declare-fun lambda!358446 () Int)

(declare-datatypes ((tuple2!66674 0))(
  ( (tuple2!66675 (_1!36640 List!65373) (_2!36640 List!65373)) )
))
(declare-fun lt!2386691 () tuple2!66674)

(assert (=> bs!1644451 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) (regOne!33228 r!7292)) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358446 lambda!358441))))

(assert (=> bs!1644451 (not (= lambda!358446 lambda!358442))))

(declare-fun bs!1644452 () Bool)

(assert (= bs!1644452 (and b!6481386 b!6481409)))

(assert (=> bs!1644452 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) lt!2386701) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358446 lambda!358444))))

(assert (=> bs!1644452 (not (= lambda!358446 lambda!358445))))

(assert (=> b!6481386 true))

(assert (=> b!6481386 true))

(assert (=> b!6481386 true))

(declare-fun lambda!358447 () Int)

(assert (=> bs!1644452 (not (= lambda!358447 lambda!358444))))

(assert (=> bs!1644451 (not (= lambda!358447 lambda!358441))))

(assert (=> bs!1644452 (not (= lambda!358447 lambda!358445))))

(assert (=> b!6481386 (not (= lambda!358447 lambda!358446))))

(assert (=> bs!1644451 (not (= lambda!358447 lambda!358442))))

(assert (=> b!6481386 true))

(assert (=> b!6481386 true))

(assert (=> b!6481386 true))

(declare-fun lambda!358448 () Int)

(assert (=> bs!1644452 (not (= lambda!358448 lambda!358444))))

(assert (=> bs!1644451 (not (= lambda!358448 lambda!358441))))

(assert (=> bs!1644452 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) lt!2386701) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358448 lambda!358445))))

(assert (=> b!6481386 (not (= lambda!358448 lambda!358446))))

(assert (=> b!6481386 (not (= lambda!358448 lambda!358447))))

(assert (=> bs!1644451 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) (regOne!33228 r!7292)) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358448 lambda!358442))))

(assert (=> b!6481386 true))

(assert (=> b!6481386 true))

(assert (=> b!6481386 true))

(declare-fun b!6481378 () Bool)

(declare-fun e!3928523 () Bool)

(declare-fun e!3928508 () Bool)

(assert (=> b!6481378 (= e!3928523 e!3928508)))

(declare-fun res!2661368 () Bool)

(assert (=> b!6481378 (=> (not res!2661368) (not e!3928508))))

(declare-fun validRegex!8094 (Regex!16358) Bool)

(assert (=> b!6481378 (= res!2661368 (validRegex!8094 (reg!16687 (regOne!33228 r!7292))))))

(declare-datatypes ((List!65374 0))(
  ( (Nil!65250) (Cons!65250 (h!71698 Regex!16358) (t!379000 List!65374)) )
))
(declare-fun lt!2386652 () List!65374)

(declare-fun lt!2386673 () List!65374)

(declare-fun lt!2386675 () List!65373)

(declare-datatypes ((Context!11484 0))(
  ( (Context!11485 (exprs!6242 List!65374)) )
))
(declare-fun matchZipper!2370 ((Set Context!11484) List!65373) Bool)

(declare-fun ++!14426 (List!65374 List!65374) List!65374)

(assert (=> b!6481378 (matchZipper!2370 (set.insert (Context!11485 (++!14426 lt!2386652 lt!2386673)) (as set.empty (Set Context!11484))) lt!2386675)))

(declare-fun lambda!358449 () Int)

(declare-datatypes ((Unit!158763 0))(
  ( (Unit!158764) )
))
(declare-fun lt!2386670 () Unit!158763)

(declare-fun lemmaConcatPreservesForall!337 (List!65374 List!65374 Int) Unit!158763)

(assert (=> b!6481378 (= lt!2386670 (lemmaConcatPreservesForall!337 lt!2386652 lt!2386673 lambda!358449))))

(declare-fun lt!2386651 () Context!11484)

(declare-fun lt!2386693 () Unit!158763)

(declare-fun lt!2386648 () tuple2!66674)

(declare-fun lt!2386659 () List!65373)

(declare-fun lt!2386653 () Context!11484)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!159 (Context!11484 Context!11484 List!65373 List!65373) Unit!158763)

(assert (=> b!6481378 (= lt!2386693 (lemmaConcatenateContextMatchesConcatOfStrings!159 lt!2386653 lt!2386651 (_1!36640 lt!2386648) lt!2386659))))

(declare-fun lt!2386682 () (Set Context!11484))

(assert (=> b!6481378 (matchZipper!2370 lt!2386682 lt!2386659)))

(declare-fun lt!2386666 () Regex!16358)

(declare-fun lt!2386663 () Unit!158763)

(declare-datatypes ((List!65375 0))(
  ( (Nil!65251) (Cons!65251 (h!71699 Context!11484) (t!379001 List!65375)) )
))
(declare-fun lt!2386695 () List!65375)

(declare-fun theoremZipperRegexEquiv!824 ((Set Context!11484) List!65375 Regex!16358 List!65373) Unit!158763)

(assert (=> b!6481378 (= lt!2386663 (theoremZipperRegexEquiv!824 lt!2386682 lt!2386695 lt!2386666 lt!2386659))))

(declare-fun lt!2386685 () (Set Context!11484))

(assert (=> b!6481378 (matchZipper!2370 lt!2386685 (_1!36640 lt!2386648))))

(declare-fun lt!2386665 () Unit!158763)

(declare-fun lt!2386677 () List!65375)

(assert (=> b!6481378 (= lt!2386665 (theoremZipperRegexEquiv!824 lt!2386685 lt!2386677 (reg!16687 (regOne!33228 r!7292)) (_1!36640 lt!2386648)))))

(declare-fun matchR!8541 (Regex!16358 List!65373) Bool)

(assert (=> b!6481378 (matchR!8541 lt!2386666 lt!2386659)))

(declare-fun lt!2386671 () Unit!158763)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!321 (Regex!16358 Regex!16358 List!65373 List!65373) Unit!158763)

(assert (=> b!6481378 (= lt!2386671 (lemmaTwoRegexMatchThenConcatMatchesConcatString!321 lt!2386701 (regTwo!33228 r!7292) (_2!36640 lt!2386648) (_2!36640 lt!2386691)))))

(declare-fun lt!2386680 () List!65373)

(assert (=> b!6481378 (matchR!8541 lt!2386701 lt!2386680)))

(declare-fun lt!2386668 () Unit!158763)

(declare-fun lemmaStarApp!135 (Regex!16358 List!65373 List!65373) Unit!158763)

(assert (=> b!6481378 (= lt!2386668 (lemmaStarApp!135 (reg!16687 (regOne!33228 r!7292)) (_1!36640 lt!2386648) (_2!36640 lt!2386648)))))

(declare-fun b!6481379 () Bool)

(declare-fun e!3928524 () Bool)

(declare-fun e!3928504 () Bool)

(assert (=> b!6481379 (= e!3928524 e!3928504)))

(declare-fun res!2661374 () Bool)

(assert (=> b!6481379 (=> res!2661374 e!3928504)))

(declare-fun lt!2386696 () Bool)

(assert (=> b!6481379 (= res!2661374 (not lt!2386696))))

(declare-fun e!3928501 () Bool)

(assert (=> b!6481379 e!3928501))

(declare-fun res!2661370 () Bool)

(assert (=> b!6481379 (=> (not res!2661370) (not e!3928501))))

(declare-fun lt!2386661 () Regex!16358)

(declare-fun matchRSpec!3459 (Regex!16358 List!65373) Bool)

(assert (=> b!6481379 (= res!2661370 (= (matchR!8541 lt!2386661 s!2326) (matchRSpec!3459 lt!2386661 s!2326)))))

(declare-fun lt!2386654 () Unit!158763)

(declare-fun mainMatchTheorem!3459 (Regex!16358 List!65373) Unit!158763)

(assert (=> b!6481379 (= lt!2386654 (mainMatchTheorem!3459 lt!2386661 s!2326))))

(declare-fun b!6481380 () Bool)

(declare-fun res!2661358 () Bool)

(declare-fun e!3928505 () Bool)

(assert (=> b!6481380 (=> res!2661358 e!3928505)))

(declare-fun e!3928518 () Bool)

(assert (=> b!6481380 (= res!2661358 e!3928518)))

(declare-fun res!2661361 () Bool)

(assert (=> b!6481380 (=> (not res!2661361) (not e!3928518))))

(assert (=> b!6481380 (= res!2661361 (is-Concat!25203 (regOne!33228 r!7292)))))

(declare-fun b!6481381 () Bool)

(declare-fun e!3928525 () Unit!158763)

(declare-fun Unit!158765 () Unit!158763)

(assert (=> b!6481381 (= e!3928525 Unit!158765)))

(declare-fun lt!2386694 () (Set Context!11484))

(declare-fun lt!2386676 () (Set Context!11484))

(declare-fun lt!2386660 () Unit!158763)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1189 ((Set Context!11484) (Set Context!11484) List!65373) Unit!158763)

(assert (=> b!6481381 (= lt!2386660 (lemmaZipperConcatMatchesSameAsBothZippers!1189 lt!2386676 lt!2386694 (t!378999 s!2326)))))

(declare-fun res!2661353 () Bool)

(assert (=> b!6481381 (= res!2661353 (matchZipper!2370 lt!2386676 (t!378999 s!2326)))))

(declare-fun e!3928510 () Bool)

(assert (=> b!6481381 (=> res!2661353 e!3928510)))

(assert (=> b!6481381 (= (matchZipper!2370 (set.union lt!2386676 lt!2386694) (t!378999 s!2326)) e!3928510)))

(declare-fun b!6481382 () Bool)

(declare-fun e!3928517 () Bool)

(declare-fun tp!1795565 () Bool)

(declare-fun tp!1795567 () Bool)

(assert (=> b!6481382 (= e!3928517 (and tp!1795565 tp!1795567))))

(declare-fun b!6481383 () Bool)

(declare-fun lt!2386667 () Bool)

(assert (=> b!6481383 (= e!3928501 (or (not lt!2386696) lt!2386667))))

(declare-fun b!6481384 () Bool)

(declare-fun res!2661364 () Bool)

(declare-fun e!3928520 () Bool)

(assert (=> b!6481384 (=> (not res!2661364) (not e!3928520))))

(declare-fun z!1189 () (Set Context!11484))

(declare-fun zl!343 () List!65375)

(declare-fun toList!10142 ((Set Context!11484)) List!65375)

(assert (=> b!6481384 (= res!2661364 (= (toList!10142 z!1189) zl!343))))

(declare-fun b!6481385 () Bool)

(declare-fun res!2661366 () Bool)

(declare-fun e!3928511 () Bool)

(assert (=> b!6481385 (=> res!2661366 e!3928511)))

(assert (=> b!6481385 (= res!2661366 (not (matchR!8541 (regTwo!33228 r!7292) (_2!36640 lt!2386691))))))

(declare-fun e!3928502 () Bool)

(declare-fun setRes!44148 () Bool)

(declare-fun tp!1795563 () Bool)

(declare-fun setElem!44148 () Context!11484)

(declare-fun setNonEmpty!44148 () Bool)

(declare-fun inv!84143 (Context!11484) Bool)

(assert (=> setNonEmpty!44148 (= setRes!44148 (and tp!1795563 (inv!84143 setElem!44148) e!3928502))))

(declare-fun setRest!44148 () (Set Context!11484))

(assert (=> setNonEmpty!44148 (= z!1189 (set.union (set.insert setElem!44148 (as set.empty (Set Context!11484))) setRest!44148))))

(declare-fun e!3928512 () Bool)

(assert (=> b!6481386 (= e!3928511 e!3928512)))

(declare-fun res!2661341 () Bool)

(assert (=> b!6481386 (=> res!2661341 e!3928512)))

(assert (=> b!6481386 (= res!2661341 (not (= (_1!36640 lt!2386691) lt!2386680)))))

(declare-fun ++!14427 (List!65373 List!65373) List!65373)

(assert (=> b!6481386 (= lt!2386680 (++!14427 (_1!36640 lt!2386648) (_2!36640 lt!2386648)))))

(declare-datatypes ((Option!16249 0))(
  ( (None!16248) (Some!16248 (v!52427 tuple2!66674)) )
))
(declare-fun lt!2386690 () Option!16249)

(declare-fun get!22621 (Option!16249) tuple2!66674)

(assert (=> b!6481386 (= lt!2386648 (get!22621 lt!2386690))))

(declare-fun Exists!3428 (Int) Bool)

(assert (=> b!6481386 (= (Exists!3428 lambda!358446) (Exists!3428 lambda!358448))))

(declare-fun lt!2386700 () Unit!158763)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1965 (Regex!16358 Regex!16358 List!65373) Unit!158763)

(assert (=> b!6481386 (= lt!2386700 (lemmaExistCutMatchRandMatchRSpecEquivalent!1965 (reg!16687 (regOne!33228 r!7292)) lt!2386701 (_1!36640 lt!2386691)))))

(assert (=> b!6481386 (= (Exists!3428 lambda!358446) (Exists!3428 lambda!358447))))

(declare-fun lt!2386678 () Unit!158763)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!649 (Regex!16358 List!65373) Unit!158763)

(assert (=> b!6481386 (= lt!2386678 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!649 (reg!16687 (regOne!33228 r!7292)) (_1!36640 lt!2386691)))))

(declare-fun isDefined!12952 (Option!16249) Bool)

(assert (=> b!6481386 (= (isDefined!12952 lt!2386690) (Exists!3428 lambda!358446))))

(declare-fun findConcatSeparation!2663 (Regex!16358 Regex!16358 List!65373 List!65373 List!65373) Option!16249)

(assert (=> b!6481386 (= lt!2386690 (findConcatSeparation!2663 (reg!16687 (regOne!33228 r!7292)) lt!2386701 Nil!65249 (_1!36640 lt!2386691) (_1!36640 lt!2386691)))))

(declare-fun lt!2386687 () Unit!158763)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2427 (Regex!16358 Regex!16358 List!65373) Unit!158763)

(assert (=> b!6481386 (= lt!2386687 (lemmaFindConcatSeparationEquivalentToExists!2427 (reg!16687 (regOne!33228 r!7292)) lt!2386701 (_1!36640 lt!2386691)))))

(assert (=> b!6481386 (matchRSpec!3459 lt!2386701 (_1!36640 lt!2386691))))

(declare-fun lt!2386686 () Unit!158763)

(assert (=> b!6481386 (= lt!2386686 (mainMatchTheorem!3459 lt!2386701 (_1!36640 lt!2386691)))))

(declare-fun b!6481387 () Bool)

(declare-fun nullable!6351 (Regex!16358) Bool)

(assert (=> b!6481387 (= e!3928518 (nullable!6351 (regOne!33228 (regOne!33228 r!7292))))))

(declare-fun b!6481388 () Bool)

(declare-fun res!2661350 () Bool)

(assert (=> b!6481388 (=> res!2661350 e!3928511)))

(assert (=> b!6481388 (= res!2661350 (not (matchR!8541 lt!2386701 (_1!36640 lt!2386691))))))

(declare-fun tp!1795568 () Bool)

(declare-fun e!3928515 () Bool)

(declare-fun e!3928513 () Bool)

(declare-fun b!6481389 () Bool)

(assert (=> b!6481389 (= e!3928513 (and (inv!84143 (h!71699 zl!343)) e!3928515 tp!1795568))))

(declare-fun b!6481390 () Bool)

(declare-fun res!2661352 () Bool)

(declare-fun e!3928509 () Bool)

(assert (=> b!6481390 (=> res!2661352 e!3928509)))

(declare-fun isEmpty!37435 (List!65375) Bool)

(assert (=> b!6481390 (= res!2661352 (not (isEmpty!37435 (t!379001 zl!343))))))

(declare-fun b!6481391 () Bool)

(declare-fun res!2661346 () Bool)

(assert (=> b!6481391 (=> res!2661346 e!3928523)))

(assert (=> b!6481391 (= res!2661346 (not (matchR!8541 (reg!16687 (regOne!33228 r!7292)) (_1!36640 lt!2386648))))))

(declare-fun b!6481392 () Bool)

(declare-fun e!3928507 () Bool)

(assert (=> b!6481392 (= e!3928520 e!3928507)))

(declare-fun res!2661351 () Bool)

(assert (=> b!6481392 (=> (not res!2661351) (not e!3928507))))

(declare-fun lt!2386655 () Regex!16358)

(assert (=> b!6481392 (= res!2661351 (= r!7292 lt!2386655))))

(declare-fun unfocusZipper!2100 (List!65375) Regex!16358)

(assert (=> b!6481392 (= lt!2386655 (unfocusZipper!2100 zl!343))))

(declare-fun b!6481393 () Bool)

(declare-fun tp!1795564 () Bool)

(declare-fun tp!1795566 () Bool)

(assert (=> b!6481393 (= e!3928517 (and tp!1795564 tp!1795566))))

(declare-fun b!6481394 () Bool)

(declare-fun res!2661369 () Bool)

(assert (=> b!6481394 (=> res!2661369 e!3928509)))

(declare-fun generalisedUnion!2202 (List!65374) Regex!16358)

(declare-fun unfocusZipperList!1779 (List!65375) List!65374)

(assert (=> b!6481394 (= res!2661369 (not (= r!7292 (generalisedUnion!2202 (unfocusZipperList!1779 zl!343)))))))

(declare-fun b!6481395 () Bool)

(declare-fun tp!1795569 () Bool)

(assert (=> b!6481395 (= e!3928515 tp!1795569)))

(declare-fun b!6481396 () Bool)

(declare-fun e!3928503 () Bool)

(declare-fun e!3928514 () Bool)

(assert (=> b!6481396 (= e!3928503 e!3928514)))

(declare-fun res!2661362 () Bool)

(assert (=> b!6481396 (=> res!2661362 e!3928514)))

(assert (=> b!6481396 (= res!2661362 (not (= (unfocusZipper!2100 lt!2386677) (reg!16687 (regOne!33228 r!7292)))))))

(assert (=> b!6481396 (= lt!2386677 (Cons!65251 lt!2386653 Nil!65251))))

(declare-fun lambda!358443 () Int)

(declare-fun flatMap!1863 ((Set Context!11484) Int) (Set Context!11484))

(declare-fun derivationStepZipperUp!1532 (Context!11484 C!32986) (Set Context!11484))

(assert (=> b!6481396 (= (flatMap!1863 lt!2386682 lambda!358443) (derivationStepZipperUp!1532 lt!2386651 (h!71697 s!2326)))))

(declare-fun lt!2386672 () Unit!158763)

(declare-fun lemmaFlatMapOnSingletonSet!1389 ((Set Context!11484) Context!11484 Int) Unit!158763)

(assert (=> b!6481396 (= lt!2386672 (lemmaFlatMapOnSingletonSet!1389 lt!2386682 lt!2386651 lambda!358443))))

(assert (=> b!6481396 (= (flatMap!1863 lt!2386685 lambda!358443) (derivationStepZipperUp!1532 lt!2386653 (h!71697 s!2326)))))

(declare-fun lt!2386647 () Unit!158763)

(assert (=> b!6481396 (= lt!2386647 (lemmaFlatMapOnSingletonSet!1389 lt!2386685 lt!2386653 lambda!358443))))

(declare-fun lt!2386699 () (Set Context!11484))

(assert (=> b!6481396 (= lt!2386699 (derivationStepZipperUp!1532 lt!2386651 (h!71697 s!2326)))))

(declare-fun lt!2386681 () (Set Context!11484))

(assert (=> b!6481396 (= lt!2386681 (derivationStepZipperUp!1532 lt!2386653 (h!71697 s!2326)))))

(assert (=> b!6481396 (= lt!2386682 (set.insert lt!2386651 (as set.empty (Set Context!11484))))))

(assert (=> b!6481396 (= lt!2386685 (set.insert lt!2386653 (as set.empty (Set Context!11484))))))

(assert (=> b!6481396 (= lt!2386653 (Context!11485 lt!2386652))))

(assert (=> b!6481396 (= lt!2386652 (Cons!65250 (reg!16687 (regOne!33228 r!7292)) Nil!65250))))

(declare-fun b!6481397 () Bool)

(declare-fun tp_is_empty!41969 () Bool)

(assert (=> b!6481397 (= e!3928517 tp_is_empty!41969)))

(declare-fun b!6481398 () Bool)

(declare-fun e!3928521 () Bool)

(declare-fun tp!1795561 () Bool)

(assert (=> b!6481398 (= e!3928521 (and tp_is_empty!41969 tp!1795561))))

(declare-fun b!6481399 () Bool)

(declare-fun res!2661360 () Bool)

(declare-fun e!3928516 () Bool)

(assert (=> b!6481399 (=> res!2661360 e!3928516)))

(declare-fun lt!2386684 () (Set Context!11484))

(declare-fun lt!2386674 () (Set Context!11484))

(assert (=> b!6481399 (= res!2661360 (not (= (matchZipper!2370 lt!2386674 s!2326) (matchZipper!2370 lt!2386684 (t!378999 s!2326)))))))

(declare-fun b!6481400 () Bool)

(declare-fun e!3928506 () Bool)

(assert (=> b!6481400 (= e!3928516 e!3928506)))

(declare-fun res!2661347 () Bool)

(assert (=> b!6481400 (=> res!2661347 e!3928506)))

(assert (=> b!6481400 (= res!2661347 (not (= r!7292 lt!2386666)))))

(assert (=> b!6481400 (= lt!2386666 (Concat!25203 lt!2386701 (regTwo!33228 r!7292)))))

(declare-fun b!6481401 () Bool)

(declare-fun res!2661342 () Bool)

(assert (=> b!6481401 (=> res!2661342 e!3928509)))

(assert (=> b!6481401 (= res!2661342 (not (is-Cons!65250 (exprs!6242 (h!71699 zl!343)))))))

(declare-fun b!6481402 () Bool)

(declare-fun res!2661356 () Bool)

(assert (=> b!6481402 (=> res!2661356 e!3928505)))

(assert (=> b!6481402 (= res!2661356 (or (is-Concat!25203 (regOne!33228 r!7292)) (not (is-Star!16358 (regOne!33228 r!7292)))))))

(declare-fun e!3928519 () Bool)

(assert (=> b!6481403 (= e!3928519 e!3928505)))

(declare-fun res!2661365 () Bool)

(assert (=> b!6481403 (=> res!2661365 e!3928505)))

(assert (=> b!6481403 (= res!2661365 (or (and (is-ElementMatch!16358 (regOne!33228 r!7292)) (= (c!1187340 (regOne!33228 r!7292)) (h!71697 s!2326))) (is-Union!16358 (regOne!33228 r!7292))))))

(declare-fun lt!2386697 () Unit!158763)

(assert (=> b!6481403 (= lt!2386697 e!3928525)))

(declare-fun c!1187339 () Bool)

(assert (=> b!6481403 (= c!1187339 (nullable!6351 (h!71698 (exprs!6242 (h!71699 zl!343)))))))

(assert (=> b!6481403 (= (flatMap!1863 z!1189 lambda!358443) (derivationStepZipperUp!1532 (h!71699 zl!343) (h!71697 s!2326)))))

(declare-fun lt!2386669 () Unit!158763)

(assert (=> b!6481403 (= lt!2386669 (lemmaFlatMapOnSingletonSet!1389 z!1189 (h!71699 zl!343) lambda!358443))))

(declare-fun lt!2386683 () Context!11484)

(assert (=> b!6481403 (= lt!2386694 (derivationStepZipperUp!1532 lt!2386683 (h!71697 s!2326)))))

(declare-fun derivationStepZipperDown!1606 (Regex!16358 Context!11484 C!32986) (Set Context!11484))

(assert (=> b!6481403 (= lt!2386676 (derivationStepZipperDown!1606 (h!71698 (exprs!6242 (h!71699 zl!343))) lt!2386683 (h!71697 s!2326)))))

(assert (=> b!6481403 (= lt!2386683 (Context!11485 (t!379000 (exprs!6242 (h!71699 zl!343)))))))

(declare-fun lt!2386664 () (Set Context!11484))

(assert (=> b!6481403 (= lt!2386664 (derivationStepZipperUp!1532 (Context!11485 (Cons!65250 (h!71698 (exprs!6242 (h!71699 zl!343))) (t!379000 (exprs!6242 (h!71699 zl!343))))) (h!71697 s!2326)))))

(declare-fun b!6481404 () Bool)

(declare-fun res!2661354 () Bool)

(assert (=> b!6481404 (=> res!2661354 e!3928511)))

(declare-fun isEmpty!37436 (List!65373) Bool)

(assert (=> b!6481404 (= res!2661354 (isEmpty!37436 (_1!36640 lt!2386691)))))

(declare-fun b!6481405 () Bool)

(declare-fun e!3928522 () Bool)

(assert (=> b!6481405 (= e!3928505 e!3928522)))

(declare-fun res!2661357 () Bool)

(assert (=> b!6481405 (=> res!2661357 e!3928522)))

(declare-fun lt!2386656 () (Set Context!11484))

(assert (=> b!6481405 (= res!2661357 (not (= lt!2386676 lt!2386656)))))

(assert (=> b!6481405 (= lt!2386656 (derivationStepZipperDown!1606 (reg!16687 (regOne!33228 r!7292)) lt!2386651 (h!71697 s!2326)))))

(assert (=> b!6481405 (= lt!2386651 (Context!11485 lt!2386673))))

(assert (=> b!6481405 (= lt!2386673 (Cons!65250 lt!2386701 (t!379000 (exprs!6242 (h!71699 zl!343)))))))

(assert (=> b!6481405 (= lt!2386701 (Star!16358 (reg!16687 (regOne!33228 r!7292))))))

(declare-fun b!6481406 () Bool)

(declare-fun Unit!158766 () Unit!158763)

(assert (=> b!6481406 (= e!3928525 Unit!158766)))

(declare-fun b!6481407 () Bool)

(declare-fun res!2661371 () Bool)

(assert (=> b!6481407 (=> res!2661371 e!3928519)))

(declare-fun isEmpty!37437 (List!65374) Bool)

(assert (=> b!6481407 (= res!2661371 (isEmpty!37437 (t!379000 (exprs!6242 (h!71699 zl!343)))))))

(assert (=> b!6481408 (= e!3928509 e!3928519)))

(declare-fun res!2661367 () Bool)

(assert (=> b!6481408 (=> res!2661367 e!3928519)))

(declare-fun lt!2386650 () Bool)

(assert (=> b!6481408 (= res!2661367 (or (not (= lt!2386696 lt!2386650)) (is-Nil!65249 s!2326)))))

(assert (=> b!6481408 (= (Exists!3428 lambda!358441) (Exists!3428 lambda!358442))))

(declare-fun lt!2386645 () Unit!158763)

(assert (=> b!6481408 (= lt!2386645 (lemmaExistCutMatchRandMatchRSpecEquivalent!1965 (regOne!33228 r!7292) (regTwo!33228 r!7292) s!2326))))

(assert (=> b!6481408 (= lt!2386650 (Exists!3428 lambda!358441))))

(assert (=> b!6481408 (= lt!2386650 (isDefined!12952 (findConcatSeparation!2663 (regOne!33228 r!7292) (regTwo!33228 r!7292) Nil!65249 s!2326 s!2326)))))

(declare-fun lt!2386679 () Unit!158763)

(assert (=> b!6481408 (= lt!2386679 (lemmaFindConcatSeparationEquivalentToExists!2427 (regOne!33228 r!7292) (regTwo!33228 r!7292) s!2326))))

(assert (=> b!6481409 (= e!3928504 e!3928511)))

(declare-fun res!2661375 () Bool)

(assert (=> b!6481409 (=> res!2661375 e!3928511)))

(assert (=> b!6481409 (= res!2661375 (not (= (++!14427 (_1!36640 lt!2386691) (_2!36640 lt!2386691)) s!2326)))))

(declare-fun lt!2386658 () Option!16249)

(assert (=> b!6481409 (= lt!2386691 (get!22621 lt!2386658))))

(assert (=> b!6481409 (= (Exists!3428 lambda!358444) (Exists!3428 lambda!358445))))

(declare-fun lt!2386646 () Unit!158763)

(assert (=> b!6481409 (= lt!2386646 (lemmaExistCutMatchRandMatchRSpecEquivalent!1965 lt!2386701 (regTwo!33228 r!7292) s!2326))))

(assert (=> b!6481409 (= (isDefined!12952 lt!2386658) (Exists!3428 lambda!358444))))

(assert (=> b!6481409 (= lt!2386658 (findConcatSeparation!2663 lt!2386701 (regTwo!33228 r!7292) Nil!65249 s!2326 s!2326))))

(declare-fun lt!2386688 () Unit!158763)

(assert (=> b!6481409 (= lt!2386688 (lemmaFindConcatSeparationEquivalentToExists!2427 lt!2386701 (regTwo!33228 r!7292) s!2326))))

(declare-fun b!6481410 () Bool)

(assert (=> b!6481410 (= e!3928510 (matchZipper!2370 lt!2386694 (t!378999 s!2326)))))

(declare-fun b!6481411 () Bool)

(declare-fun res!2661345 () Bool)

(assert (=> b!6481411 (=> res!2661345 e!3928509)))

(declare-fun generalisedConcat!1955 (List!65374) Regex!16358)

(assert (=> b!6481411 (= res!2661345 (not (= r!7292 (generalisedConcat!1955 (exprs!6242 (h!71699 zl!343))))))))

(declare-fun b!6481412 () Bool)

(assert (=> b!6481412 (= e!3928507 (not e!3928509))))

(declare-fun res!2661343 () Bool)

(assert (=> b!6481412 (=> res!2661343 e!3928509)))

(assert (=> b!6481412 (= res!2661343 (not (is-Cons!65251 zl!343)))))

(assert (=> b!6481412 (= lt!2386696 lt!2386667)))

(assert (=> b!6481412 (= lt!2386667 (matchRSpec!3459 r!7292 s!2326))))

(assert (=> b!6481412 (= lt!2386696 (matchR!8541 r!7292 s!2326))))

(declare-fun lt!2386689 () Unit!158763)

(assert (=> b!6481412 (= lt!2386689 (mainMatchTheorem!3459 r!7292 s!2326))))

(declare-fun setIsEmpty!44148 () Bool)

(assert (=> setIsEmpty!44148 setRes!44148))

(declare-fun b!6481413 () Bool)

(declare-fun tp!1795562 () Bool)

(assert (=> b!6481413 (= e!3928502 tp!1795562)))

(declare-fun b!6481414 () Bool)

(assert (=> b!6481414 (= e!3928512 e!3928523)))

(declare-fun res!2661355 () Bool)

(assert (=> b!6481414 (=> res!2661355 e!3928523)))

(declare-fun lt!2386698 () List!65373)

(assert (=> b!6481414 (= res!2661355 (not (= lt!2386698 s!2326)))))

(assert (=> b!6481414 (= lt!2386698 lt!2386675)))

(assert (=> b!6481414 (= lt!2386675 (++!14427 (_1!36640 lt!2386648) lt!2386659))))

(assert (=> b!6481414 (= lt!2386698 (++!14427 lt!2386680 (_2!36640 lt!2386691)))))

(assert (=> b!6481414 (= lt!2386659 (++!14427 (_2!36640 lt!2386648) (_2!36640 lt!2386691)))))

(declare-fun lt!2386657 () Unit!158763)

(declare-fun lemmaConcatAssociativity!2929 (List!65373 List!65373 List!65373) Unit!158763)

(assert (=> b!6481414 (= lt!2386657 (lemmaConcatAssociativity!2929 (_1!36640 lt!2386648) (_2!36640 lt!2386648) (_2!36640 lt!2386691)))))

(declare-fun b!6481415 () Bool)

(declare-fun res!2661344 () Bool)

(assert (=> b!6481415 (=> res!2661344 e!3928523)))

(assert (=> b!6481415 (= res!2661344 (not (matchR!8541 lt!2386701 (_2!36640 lt!2386648))))))

(declare-fun b!6481416 () Bool)

(declare-fun tp!1795570 () Bool)

(assert (=> b!6481416 (= e!3928517 tp!1795570)))

(declare-fun b!6481417 () Bool)

(assert (=> b!6481417 (= e!3928506 e!3928503)))

(declare-fun res!2661372 () Bool)

(assert (=> b!6481417 (=> res!2661372 e!3928503)))

(declare-fun lt!2386662 () Context!11484)

(assert (=> b!6481417 (= res!2661372 (not (= (unfocusZipper!2100 (Cons!65251 lt!2386662 Nil!65251)) lt!2386661)))))

(assert (=> b!6481417 (= lt!2386661 (Concat!25203 (reg!16687 (regOne!33228 r!7292)) lt!2386666))))

(declare-fun b!6481418 () Bool)

(assert (=> b!6481418 (= e!3928522 e!3928516)))

(declare-fun res!2661359 () Bool)

(assert (=> b!6481418 (=> res!2661359 e!3928516)))

(assert (=> b!6481418 (= res!2661359 (not (= lt!2386684 lt!2386656)))))

(assert (=> b!6481418 (= (flatMap!1863 lt!2386674 lambda!358443) (derivationStepZipperUp!1532 lt!2386662 (h!71697 s!2326)))))

(declare-fun lt!2386649 () Unit!158763)

(assert (=> b!6481418 (= lt!2386649 (lemmaFlatMapOnSingletonSet!1389 lt!2386674 lt!2386662 lambda!358443))))

(declare-fun lt!2386692 () (Set Context!11484))

(assert (=> b!6481418 (= lt!2386692 (derivationStepZipperUp!1532 lt!2386662 (h!71697 s!2326)))))

(declare-fun derivationStepZipper!2324 ((Set Context!11484) C!32986) (Set Context!11484))

(assert (=> b!6481418 (= lt!2386684 (derivationStepZipper!2324 lt!2386674 (h!71697 s!2326)))))

(assert (=> b!6481418 (= lt!2386674 (set.insert lt!2386662 (as set.empty (Set Context!11484))))))

(assert (=> b!6481418 (= lt!2386662 (Context!11485 (Cons!65250 (reg!16687 (regOne!33228 r!7292)) lt!2386673)))))

(declare-fun b!6481419 () Bool)

(assert (=> b!6481419 (= e!3928514 e!3928524)))

(declare-fun res!2661373 () Bool)

(assert (=> b!6481419 (=> res!2661373 e!3928524)))

(assert (=> b!6481419 (= res!2661373 (not (= (unfocusZipper!2100 lt!2386695) lt!2386666)))))

(assert (=> b!6481419 (= lt!2386695 (Cons!65251 lt!2386651 Nil!65251))))

(declare-fun b!6481420 () Bool)

(assert (=> b!6481420 (= e!3928508 (validRegex!8094 lt!2386666))))

(declare-fun res!2661349 () Bool)

(assert (=> start!637136 (=> (not res!2661349) (not e!3928520))))

(assert (=> start!637136 (= res!2661349 (validRegex!8094 r!7292))))

(assert (=> start!637136 e!3928520))

(assert (=> start!637136 e!3928517))

(declare-fun condSetEmpty!44148 () Bool)

(assert (=> start!637136 (= condSetEmpty!44148 (= z!1189 (as set.empty (Set Context!11484))))))

(assert (=> start!637136 setRes!44148))

(assert (=> start!637136 e!3928513))

(assert (=> start!637136 e!3928521))

(declare-fun b!6481421 () Bool)

(declare-fun res!2661348 () Bool)

(assert (=> b!6481421 (=> res!2661348 e!3928509)))

(assert (=> b!6481421 (= res!2661348 (or (is-EmptyExpr!16358 r!7292) (is-EmptyLang!16358 r!7292) (is-ElementMatch!16358 r!7292) (is-Union!16358 r!7292) (not (is-Concat!25203 r!7292))))))

(declare-fun b!6481422 () Bool)

(declare-fun res!2661363 () Bool)

(assert (=> b!6481422 (=> res!2661363 e!3928516)))

(assert (=> b!6481422 (= res!2661363 (not (= lt!2386655 r!7292)))))

(assert (= (and start!637136 res!2661349) b!6481384))

(assert (= (and b!6481384 res!2661364) b!6481392))

(assert (= (and b!6481392 res!2661351) b!6481412))

(assert (= (and b!6481412 (not res!2661343)) b!6481390))

(assert (= (and b!6481390 (not res!2661352)) b!6481411))

(assert (= (and b!6481411 (not res!2661345)) b!6481401))

(assert (= (and b!6481401 (not res!2661342)) b!6481394))

(assert (= (and b!6481394 (not res!2661369)) b!6481421))

(assert (= (and b!6481421 (not res!2661348)) b!6481408))

(assert (= (and b!6481408 (not res!2661367)) b!6481407))

(assert (= (and b!6481407 (not res!2661371)) b!6481403))

(assert (= (and b!6481403 c!1187339) b!6481381))

(assert (= (and b!6481403 (not c!1187339)) b!6481406))

(assert (= (and b!6481381 (not res!2661353)) b!6481410))

(assert (= (and b!6481403 (not res!2661365)) b!6481380))

(assert (= (and b!6481380 res!2661361) b!6481387))

(assert (= (and b!6481380 (not res!2661358)) b!6481402))

(assert (= (and b!6481402 (not res!2661356)) b!6481405))

(assert (= (and b!6481405 (not res!2661357)) b!6481418))

(assert (= (and b!6481418 (not res!2661359)) b!6481399))

(assert (= (and b!6481399 (not res!2661360)) b!6481422))

(assert (= (and b!6481422 (not res!2661363)) b!6481400))

(assert (= (and b!6481400 (not res!2661347)) b!6481417))

(assert (= (and b!6481417 (not res!2661372)) b!6481396))

(assert (= (and b!6481396 (not res!2661362)) b!6481419))

(assert (= (and b!6481419 (not res!2661373)) b!6481379))

(assert (= (and b!6481379 res!2661370) b!6481383))

(assert (= (and b!6481379 (not res!2661374)) b!6481409))

(assert (= (and b!6481409 (not res!2661375)) b!6481388))

(assert (= (and b!6481388 (not res!2661350)) b!6481385))

(assert (= (and b!6481385 (not res!2661366)) b!6481404))

(assert (= (and b!6481404 (not res!2661354)) b!6481386))

(assert (= (and b!6481386 (not res!2661341)) b!6481414))

(assert (= (and b!6481414 (not res!2661355)) b!6481391))

(assert (= (and b!6481391 (not res!2661346)) b!6481415))

(assert (= (and b!6481415 (not res!2661344)) b!6481378))

(assert (= (and b!6481378 res!2661368) b!6481420))

(assert (= (and start!637136 (is-ElementMatch!16358 r!7292)) b!6481397))

(assert (= (and start!637136 (is-Concat!25203 r!7292)) b!6481393))

(assert (= (and start!637136 (is-Star!16358 r!7292)) b!6481416))

(assert (= (and start!637136 (is-Union!16358 r!7292)) b!6481382))

(assert (= (and start!637136 condSetEmpty!44148) setIsEmpty!44148))

(assert (= (and start!637136 (not condSetEmpty!44148)) setNonEmpty!44148))

(assert (= setNonEmpty!44148 b!6481413))

(assert (= b!6481389 b!6481395))

(assert (= (and start!637136 (is-Cons!65251 zl!343)) b!6481389))

(assert (= (and start!637136 (is-Cons!65249 s!2326)) b!6481398))

(declare-fun m!7269574 () Bool)

(assert (=> b!6481381 m!7269574))

(declare-fun m!7269576 () Bool)

(assert (=> b!6481381 m!7269576))

(declare-fun m!7269578 () Bool)

(assert (=> b!6481381 m!7269578))

(declare-fun m!7269580 () Bool)

(assert (=> b!6481404 m!7269580))

(declare-fun m!7269582 () Bool)

(assert (=> b!6481378 m!7269582))

(declare-fun m!7269584 () Bool)

(assert (=> b!6481378 m!7269584))

(declare-fun m!7269586 () Bool)

(assert (=> b!6481378 m!7269586))

(declare-fun m!7269588 () Bool)

(assert (=> b!6481378 m!7269588))

(declare-fun m!7269590 () Bool)

(assert (=> b!6481378 m!7269590))

(declare-fun m!7269592 () Bool)

(assert (=> b!6481378 m!7269592))

(declare-fun m!7269594 () Bool)

(assert (=> b!6481378 m!7269594))

(declare-fun m!7269596 () Bool)

(assert (=> b!6481378 m!7269596))

(declare-fun m!7269598 () Bool)

(assert (=> b!6481378 m!7269598))

(declare-fun m!7269600 () Bool)

(assert (=> b!6481378 m!7269600))

(declare-fun m!7269602 () Bool)

(assert (=> b!6481378 m!7269602))

(declare-fun m!7269604 () Bool)

(assert (=> b!6481378 m!7269604))

(declare-fun m!7269606 () Bool)

(assert (=> b!6481378 m!7269606))

(declare-fun m!7269608 () Bool)

(assert (=> b!6481378 m!7269608))

(assert (=> b!6481378 m!7269606))

(declare-fun m!7269610 () Bool)

(assert (=> b!6481379 m!7269610))

(declare-fun m!7269612 () Bool)

(assert (=> b!6481379 m!7269612))

(declare-fun m!7269614 () Bool)

(assert (=> b!6481379 m!7269614))

(declare-fun m!7269616 () Bool)

(assert (=> b!6481411 m!7269616))

(declare-fun m!7269618 () Bool)

(assert (=> b!6481394 m!7269618))

(assert (=> b!6481394 m!7269618))

(declare-fun m!7269620 () Bool)

(assert (=> b!6481394 m!7269620))

(declare-fun m!7269622 () Bool)

(assert (=> b!6481405 m!7269622))

(declare-fun m!7269624 () Bool)

(assert (=> b!6481403 m!7269624))

(declare-fun m!7269626 () Bool)

(assert (=> b!6481403 m!7269626))

(declare-fun m!7269628 () Bool)

(assert (=> b!6481403 m!7269628))

(declare-fun m!7269630 () Bool)

(assert (=> b!6481403 m!7269630))

(declare-fun m!7269632 () Bool)

(assert (=> b!6481403 m!7269632))

(declare-fun m!7269634 () Bool)

(assert (=> b!6481403 m!7269634))

(declare-fun m!7269636 () Bool)

(assert (=> b!6481403 m!7269636))

(declare-fun m!7269638 () Bool)

(assert (=> b!6481399 m!7269638))

(declare-fun m!7269640 () Bool)

(assert (=> b!6481399 m!7269640))

(declare-fun m!7269642 () Bool)

(assert (=> b!6481396 m!7269642))

(declare-fun m!7269644 () Bool)

(assert (=> b!6481396 m!7269644))

(declare-fun m!7269646 () Bool)

(assert (=> b!6481396 m!7269646))

(declare-fun m!7269648 () Bool)

(assert (=> b!6481396 m!7269648))

(declare-fun m!7269650 () Bool)

(assert (=> b!6481396 m!7269650))

(declare-fun m!7269652 () Bool)

(assert (=> b!6481396 m!7269652))

(declare-fun m!7269654 () Bool)

(assert (=> b!6481396 m!7269654))

(declare-fun m!7269656 () Bool)

(assert (=> b!6481396 m!7269656))

(declare-fun m!7269658 () Bool)

(assert (=> b!6481396 m!7269658))

(declare-fun m!7269660 () Bool)

(assert (=> b!6481412 m!7269660))

(declare-fun m!7269662 () Bool)

(assert (=> b!6481412 m!7269662))

(declare-fun m!7269664 () Bool)

(assert (=> b!6481412 m!7269664))

(declare-fun m!7269666 () Bool)

(assert (=> b!6481389 m!7269666))

(declare-fun m!7269668 () Bool)

(assert (=> b!6481420 m!7269668))

(declare-fun m!7269670 () Bool)

(assert (=> b!6481414 m!7269670))

(declare-fun m!7269672 () Bool)

(assert (=> b!6481414 m!7269672))

(declare-fun m!7269674 () Bool)

(assert (=> b!6481414 m!7269674))

(declare-fun m!7269676 () Bool)

(assert (=> b!6481414 m!7269676))

(declare-fun m!7269678 () Bool)

(assert (=> b!6481417 m!7269678))

(declare-fun m!7269680 () Bool)

(assert (=> b!6481415 m!7269680))

(declare-fun m!7269682 () Bool)

(assert (=> start!637136 m!7269682))

(declare-fun m!7269684 () Bool)

(assert (=> b!6481386 m!7269684))

(declare-fun m!7269686 () Bool)

(assert (=> b!6481386 m!7269686))

(declare-fun m!7269688 () Bool)

(assert (=> b!6481386 m!7269688))

(declare-fun m!7269690 () Bool)

(assert (=> b!6481386 m!7269690))

(declare-fun m!7269692 () Bool)

(assert (=> b!6481386 m!7269692))

(assert (=> b!6481386 m!7269686))

(declare-fun m!7269694 () Bool)

(assert (=> b!6481386 m!7269694))

(assert (=> b!6481386 m!7269686))

(declare-fun m!7269696 () Bool)

(assert (=> b!6481386 m!7269696))

(declare-fun m!7269698 () Bool)

(assert (=> b!6481386 m!7269698))

(declare-fun m!7269700 () Bool)

(assert (=> b!6481386 m!7269700))

(declare-fun m!7269702 () Bool)

(assert (=> b!6481386 m!7269702))

(declare-fun m!7269704 () Bool)

(assert (=> b!6481386 m!7269704))

(declare-fun m!7269706 () Bool)

(assert (=> b!6481386 m!7269706))

(declare-fun m!7269708 () Bool)

(assert (=> b!6481419 m!7269708))

(declare-fun m!7269710 () Bool)

(assert (=> b!6481384 m!7269710))

(declare-fun m!7269712 () Bool)

(assert (=> b!6481407 m!7269712))

(declare-fun m!7269714 () Bool)

(assert (=> b!6481392 m!7269714))

(declare-fun m!7269716 () Bool)

(assert (=> b!6481409 m!7269716))

(declare-fun m!7269718 () Bool)

(assert (=> b!6481409 m!7269718))

(declare-fun m!7269720 () Bool)

(assert (=> b!6481409 m!7269720))

(declare-fun m!7269722 () Bool)

(assert (=> b!6481409 m!7269722))

(declare-fun m!7269724 () Bool)

(assert (=> b!6481409 m!7269724))

(declare-fun m!7269726 () Bool)

(assert (=> b!6481409 m!7269726))

(declare-fun m!7269728 () Bool)

(assert (=> b!6481409 m!7269728))

(assert (=> b!6481409 m!7269722))

(declare-fun m!7269730 () Bool)

(assert (=> b!6481409 m!7269730))

(declare-fun m!7269732 () Bool)

(assert (=> b!6481387 m!7269732))

(declare-fun m!7269734 () Bool)

(assert (=> b!6481391 m!7269734))

(declare-fun m!7269736 () Bool)

(assert (=> b!6481418 m!7269736))

(declare-fun m!7269738 () Bool)

(assert (=> b!6481418 m!7269738))

(declare-fun m!7269740 () Bool)

(assert (=> b!6481418 m!7269740))

(declare-fun m!7269742 () Bool)

(assert (=> b!6481418 m!7269742))

(declare-fun m!7269744 () Bool)

(assert (=> b!6481418 m!7269744))

(declare-fun m!7269746 () Bool)

(assert (=> setNonEmpty!44148 m!7269746))

(declare-fun m!7269748 () Bool)

(assert (=> b!6481385 m!7269748))

(declare-fun m!7269750 () Bool)

(assert (=> b!6481408 m!7269750))

(declare-fun m!7269752 () Bool)

(assert (=> b!6481408 m!7269752))

(declare-fun m!7269754 () Bool)

(assert (=> b!6481408 m!7269754))

(assert (=> b!6481408 m!7269754))

(declare-fun m!7269756 () Bool)

(assert (=> b!6481408 m!7269756))

(declare-fun m!7269758 () Bool)

(assert (=> b!6481408 m!7269758))

(assert (=> b!6481408 m!7269750))

(declare-fun m!7269760 () Bool)

(assert (=> b!6481408 m!7269760))

(declare-fun m!7269762 () Bool)

(assert (=> b!6481390 m!7269762))

(declare-fun m!7269764 () Bool)

(assert (=> b!6481388 m!7269764))

(declare-fun m!7269766 () Bool)

(assert (=> b!6481410 m!7269766))

(push 1)

(assert (not b!6481395))

(assert (not b!6481413))

(assert (not b!6481398))

(assert (not b!6481420))

(assert (not b!6481393))

(assert (not b!6481392))

(assert (not b!6481378))

(assert (not b!6481414))

(assert (not b!6481390))

(assert (not b!6481412))

(assert (not b!6481379))

(assert (not start!637136))

(assert (not b!6481416))

(assert (not b!6481385))

(assert (not b!6481388))

(assert (not b!6481387))

(assert (not b!6481381))

(assert (not b!6481382))

(assert (not b!6481405))

(assert (not b!6481386))

(assert (not b!6481415))

(assert (not b!6481411))

(assert (not b!6481399))

(assert (not b!6481384))

(assert (not b!6481403))

(assert (not b!6481409))

(assert tp_is_empty!41969)

(assert (not b!6481408))

(assert (not b!6481419))

(assert (not b!6481418))

(assert (not b!6481410))

(assert (not setNonEmpty!44148))

(assert (not b!6481391))

(assert (not b!6481394))

(assert (not b!6481404))

(assert (not b!6481389))

(assert (not b!6481417))

(assert (not b!6481407))

(assert (not b!6481396))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6481648 () Bool)

(declare-fun res!2661546 () Bool)

(declare-fun e!3928638 () Bool)

(assert (=> b!6481648 (=> (not res!2661546) (not e!3928638))))

(declare-fun tail!12280 (List!65373) List!65373)

(assert (=> b!6481648 (= res!2661546 (isEmpty!37436 (tail!12280 (_1!36640 lt!2386691))))))

(declare-fun b!6481649 () Bool)

(declare-fun head!13195 (List!65373) C!32986)

(assert (=> b!6481649 (= e!3928638 (= (head!13195 (_1!36640 lt!2386691)) (c!1187340 lt!2386701)))))

(declare-fun b!6481650 () Bool)

(declare-fun res!2661548 () Bool)

(assert (=> b!6481650 (=> (not res!2661548) (not e!3928638))))

(declare-fun call!561002 () Bool)

(assert (=> b!6481650 (= res!2661548 (not call!561002))))

(declare-fun b!6481652 () Bool)

(declare-fun e!3928642 () Bool)

(declare-fun lt!2386875 () Bool)

(assert (=> b!6481652 (= e!3928642 (not lt!2386875))))

(declare-fun b!6481653 () Bool)

(declare-fun e!3928643 () Bool)

(declare-fun e!3928640 () Bool)

(assert (=> b!6481653 (= e!3928643 e!3928640)))

(declare-fun res!2661547 () Bool)

(assert (=> b!6481653 (=> res!2661547 e!3928640)))

(assert (=> b!6481653 (= res!2661547 call!561002)))

(declare-fun b!6481654 () Bool)

(declare-fun e!3928641 () Bool)

(assert (=> b!6481654 (= e!3928641 (nullable!6351 lt!2386701))))

(declare-fun b!6481651 () Bool)

(declare-fun e!3928639 () Bool)

(assert (=> b!6481651 (= e!3928639 (= lt!2386875 call!561002))))

(declare-fun d!2033629 () Bool)

(assert (=> d!2033629 e!3928639))

(declare-fun c!1187361 () Bool)

(assert (=> d!2033629 (= c!1187361 (is-EmptyExpr!16358 lt!2386701))))

(assert (=> d!2033629 (= lt!2386875 e!3928641)))

(declare-fun c!1187362 () Bool)

(assert (=> d!2033629 (= c!1187362 (isEmpty!37436 (_1!36640 lt!2386691)))))

(assert (=> d!2033629 (validRegex!8094 lt!2386701)))

(assert (=> d!2033629 (= (matchR!8541 lt!2386701 (_1!36640 lt!2386691)) lt!2386875)))

(declare-fun b!6481655 () Bool)

(assert (=> b!6481655 (= e!3928640 (not (= (head!13195 (_1!36640 lt!2386691)) (c!1187340 lt!2386701))))))

(declare-fun b!6481656 () Bool)

(declare-fun e!3928637 () Bool)

(assert (=> b!6481656 (= e!3928637 e!3928643)))

(declare-fun res!2661550 () Bool)

(assert (=> b!6481656 (=> (not res!2661550) (not e!3928643))))

(assert (=> b!6481656 (= res!2661550 (not lt!2386875))))

(declare-fun b!6481657 () Bool)

(declare-fun res!2661543 () Bool)

(assert (=> b!6481657 (=> res!2661543 e!3928640)))

(assert (=> b!6481657 (= res!2661543 (not (isEmpty!37436 (tail!12280 (_1!36640 lt!2386691)))))))

(declare-fun b!6481658 () Bool)

(assert (=> b!6481658 (= e!3928639 e!3928642)))

(declare-fun c!1187360 () Bool)

(assert (=> b!6481658 (= c!1187360 (is-EmptyLang!16358 lt!2386701))))

(declare-fun bm!560997 () Bool)

(assert (=> bm!560997 (= call!561002 (isEmpty!37436 (_1!36640 lt!2386691)))))

(declare-fun b!6481659 () Bool)

(declare-fun res!2661544 () Bool)

(assert (=> b!6481659 (=> res!2661544 e!3928637)))

(assert (=> b!6481659 (= res!2661544 (not (is-ElementMatch!16358 lt!2386701)))))

(assert (=> b!6481659 (= e!3928642 e!3928637)))

(declare-fun b!6481660 () Bool)

(declare-fun derivativeStep!5056 (Regex!16358 C!32986) Regex!16358)

(assert (=> b!6481660 (= e!3928641 (matchR!8541 (derivativeStep!5056 lt!2386701 (head!13195 (_1!36640 lt!2386691))) (tail!12280 (_1!36640 lt!2386691))))))

(declare-fun b!6481661 () Bool)

(declare-fun res!2661545 () Bool)

(assert (=> b!6481661 (=> res!2661545 e!3928637)))

(assert (=> b!6481661 (= res!2661545 e!3928638)))

(declare-fun res!2661549 () Bool)

(assert (=> b!6481661 (=> (not res!2661549) (not e!3928638))))

(assert (=> b!6481661 (= res!2661549 lt!2386875)))

(assert (= (and d!2033629 c!1187362) b!6481654))

(assert (= (and d!2033629 (not c!1187362)) b!6481660))

(assert (= (and d!2033629 c!1187361) b!6481651))

(assert (= (and d!2033629 (not c!1187361)) b!6481658))

(assert (= (and b!6481658 c!1187360) b!6481652))

(assert (= (and b!6481658 (not c!1187360)) b!6481659))

(assert (= (and b!6481659 (not res!2661544)) b!6481661))

(assert (= (and b!6481661 res!2661549) b!6481650))

(assert (= (and b!6481650 res!2661548) b!6481648))

(assert (= (and b!6481648 res!2661546) b!6481649))

(assert (= (and b!6481661 (not res!2661545)) b!6481656))

(assert (= (and b!6481656 res!2661550) b!6481653))

(assert (= (and b!6481653 (not res!2661547)) b!6481657))

(assert (= (and b!6481657 (not res!2661543)) b!6481655))

(assert (= (or b!6481651 b!6481650 b!6481653) bm!560997))

(declare-fun m!7269962 () Bool)

(assert (=> b!6481649 m!7269962))

(declare-fun m!7269964 () Bool)

(assert (=> b!6481648 m!7269964))

(assert (=> b!6481648 m!7269964))

(declare-fun m!7269966 () Bool)

(assert (=> b!6481648 m!7269966))

(assert (=> bm!560997 m!7269580))

(assert (=> b!6481655 m!7269962))

(assert (=> b!6481657 m!7269964))

(assert (=> b!6481657 m!7269964))

(assert (=> b!6481657 m!7269966))

(assert (=> b!6481660 m!7269962))

(assert (=> b!6481660 m!7269962))

(declare-fun m!7269968 () Bool)

(assert (=> b!6481660 m!7269968))

(assert (=> b!6481660 m!7269964))

(assert (=> b!6481660 m!7269968))

(assert (=> b!6481660 m!7269964))

(declare-fun m!7269970 () Bool)

(assert (=> b!6481660 m!7269970))

(assert (=> d!2033629 m!7269580))

(declare-fun m!7269972 () Bool)

(assert (=> d!2033629 m!7269972))

(declare-fun m!7269974 () Bool)

(assert (=> b!6481654 m!7269974))

(assert (=> b!6481388 d!2033629))

(declare-fun bs!1644456 () Bool)

(declare-fun d!2033631 () Bool)

(assert (= bs!1644456 (and d!2033631 b!6481409)))

(declare-fun lambda!358493 () Int)

(assert (=> bs!1644456 (= lambda!358493 lambda!358444)))

(declare-fun bs!1644457 () Bool)

(assert (= bs!1644457 (and d!2033631 b!6481408)))

(assert (=> bs!1644457 (= (= lt!2386701 (regOne!33228 r!7292)) (= lambda!358493 lambda!358441))))

(declare-fun bs!1644458 () Bool)

(assert (= bs!1644458 (and d!2033631 b!6481386)))

(assert (=> bs!1644458 (= (and (= s!2326 (_1!36640 lt!2386691)) (= lt!2386701 (reg!16687 (regOne!33228 r!7292))) (= (regTwo!33228 r!7292) lt!2386701)) (= lambda!358493 lambda!358446))))

(assert (=> bs!1644456 (not (= lambda!358493 lambda!358445))))

(assert (=> bs!1644458 (not (= lambda!358493 lambda!358448))))

(assert (=> bs!1644458 (not (= lambda!358493 lambda!358447))))

(assert (=> bs!1644457 (not (= lambda!358493 lambda!358442))))

(assert (=> d!2033631 true))

(assert (=> d!2033631 true))

(assert (=> d!2033631 true))

(assert (=> d!2033631 (= (isDefined!12952 (findConcatSeparation!2663 lt!2386701 (regTwo!33228 r!7292) Nil!65249 s!2326 s!2326)) (Exists!3428 lambda!358493))))

(declare-fun lt!2386878 () Unit!158763)

(declare-fun choose!48050 (Regex!16358 Regex!16358 List!65373) Unit!158763)

(assert (=> d!2033631 (= lt!2386878 (choose!48050 lt!2386701 (regTwo!33228 r!7292) s!2326))))

(assert (=> d!2033631 (validRegex!8094 lt!2386701)))

(assert (=> d!2033631 (= (lemmaFindConcatSeparationEquivalentToExists!2427 lt!2386701 (regTwo!33228 r!7292) s!2326) lt!2386878)))

(declare-fun bs!1644459 () Bool)

(assert (= bs!1644459 d!2033631))

(assert (=> bs!1644459 m!7269972))

(assert (=> bs!1644459 m!7269728))

(declare-fun m!7269976 () Bool)

(assert (=> bs!1644459 m!7269976))

(declare-fun m!7269978 () Bool)

(assert (=> bs!1644459 m!7269978))

(declare-fun m!7269980 () Bool)

(assert (=> bs!1644459 m!7269980))

(assert (=> bs!1644459 m!7269728))

(assert (=> b!6481409 d!2033631))

(declare-fun bs!1644460 () Bool)

(declare-fun d!2033633 () Bool)

(assert (= bs!1644460 (and d!2033633 b!6481409)))

(declare-fun lambda!358498 () Int)

(assert (=> bs!1644460 (= lambda!358498 lambda!358444)))

(declare-fun bs!1644461 () Bool)

(assert (= bs!1644461 (and d!2033633 b!6481408)))

(assert (=> bs!1644461 (= (= lt!2386701 (regOne!33228 r!7292)) (= lambda!358498 lambda!358441))))

(declare-fun bs!1644462 () Bool)

(assert (= bs!1644462 (and d!2033633 d!2033631)))

(assert (=> bs!1644462 (= lambda!358498 lambda!358493)))

(declare-fun bs!1644463 () Bool)

(assert (= bs!1644463 (and d!2033633 b!6481386)))

(assert (=> bs!1644463 (= (and (= s!2326 (_1!36640 lt!2386691)) (= lt!2386701 (reg!16687 (regOne!33228 r!7292))) (= (regTwo!33228 r!7292) lt!2386701)) (= lambda!358498 lambda!358446))))

(assert (=> bs!1644460 (not (= lambda!358498 lambda!358445))))

(assert (=> bs!1644463 (not (= lambda!358498 lambda!358448))))

(assert (=> bs!1644463 (not (= lambda!358498 lambda!358447))))

(assert (=> bs!1644461 (not (= lambda!358498 lambda!358442))))

(assert (=> d!2033633 true))

(assert (=> d!2033633 true))

(assert (=> d!2033633 true))

(declare-fun lambda!358499 () Int)

(assert (=> bs!1644460 (not (= lambda!358499 lambda!358444))))

(assert (=> bs!1644461 (not (= lambda!358499 lambda!358441))))

(declare-fun bs!1644464 () Bool)

(assert (= bs!1644464 d!2033633))

(assert (=> bs!1644464 (not (= lambda!358499 lambda!358498))))

(assert (=> bs!1644462 (not (= lambda!358499 lambda!358493))))

(assert (=> bs!1644463 (not (= lambda!358499 lambda!358446))))

(assert (=> bs!1644460 (= lambda!358499 lambda!358445)))

(assert (=> bs!1644463 (= (and (= s!2326 (_1!36640 lt!2386691)) (= lt!2386701 (reg!16687 (regOne!33228 r!7292))) (= (regTwo!33228 r!7292) lt!2386701)) (= lambda!358499 lambda!358448))))

(assert (=> bs!1644463 (not (= lambda!358499 lambda!358447))))

(assert (=> bs!1644461 (= (= lt!2386701 (regOne!33228 r!7292)) (= lambda!358499 lambda!358442))))

(assert (=> d!2033633 true))

(assert (=> d!2033633 true))

(assert (=> d!2033633 true))

(assert (=> d!2033633 (= (Exists!3428 lambda!358498) (Exists!3428 lambda!358499))))

(declare-fun lt!2386881 () Unit!158763)

(declare-fun choose!48051 (Regex!16358 Regex!16358 List!65373) Unit!158763)

(assert (=> d!2033633 (= lt!2386881 (choose!48051 lt!2386701 (regTwo!33228 r!7292) s!2326))))

(assert (=> d!2033633 (validRegex!8094 lt!2386701)))

(assert (=> d!2033633 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1965 lt!2386701 (regTwo!33228 r!7292) s!2326) lt!2386881)))

(declare-fun m!7269982 () Bool)

(assert (=> bs!1644464 m!7269982))

(declare-fun m!7269984 () Bool)

(assert (=> bs!1644464 m!7269984))

(declare-fun m!7269986 () Bool)

(assert (=> bs!1644464 m!7269986))

(assert (=> bs!1644464 m!7269972))

(assert (=> b!6481409 d!2033633))

(declare-fun d!2033635 () Bool)

(declare-fun choose!48052 (Int) Bool)

(assert (=> d!2033635 (= (Exists!3428 lambda!358445) (choose!48052 lambda!358445))))

(declare-fun bs!1644465 () Bool)

(assert (= bs!1644465 d!2033635))

(declare-fun m!7269988 () Bool)

(assert (=> bs!1644465 m!7269988))

(assert (=> b!6481409 d!2033635))

(declare-fun d!2033637 () Bool)

(assert (=> d!2033637 (= (get!22621 lt!2386658) (v!52427 lt!2386658))))

(assert (=> b!6481409 d!2033637))

(declare-fun b!6481685 () Bool)

(declare-fun e!3928655 () Bool)

(declare-fun lt!2386884 () List!65373)

(assert (=> b!6481685 (= e!3928655 (or (not (= (_2!36640 lt!2386691) Nil!65249)) (= lt!2386884 (_1!36640 lt!2386691))))))

(declare-fun b!6481682 () Bool)

(declare-fun e!3928654 () List!65373)

(assert (=> b!6481682 (= e!3928654 (_2!36640 lt!2386691))))

(declare-fun d!2033639 () Bool)

(assert (=> d!2033639 e!3928655))

(declare-fun res!2661567 () Bool)

(assert (=> d!2033639 (=> (not res!2661567) (not e!3928655))))

(declare-fun content!12418 (List!65373) (Set C!32986))

(assert (=> d!2033639 (= res!2661567 (= (content!12418 lt!2386884) (set.union (content!12418 (_1!36640 lt!2386691)) (content!12418 (_2!36640 lt!2386691)))))))

(assert (=> d!2033639 (= lt!2386884 e!3928654)))

(declare-fun c!1187365 () Bool)

(assert (=> d!2033639 (= c!1187365 (is-Nil!65249 (_1!36640 lt!2386691)))))

(assert (=> d!2033639 (= (++!14427 (_1!36640 lt!2386691) (_2!36640 lt!2386691)) lt!2386884)))

(declare-fun b!6481684 () Bool)

(declare-fun res!2661568 () Bool)

(assert (=> b!6481684 (=> (not res!2661568) (not e!3928655))))

(declare-fun size!40411 (List!65373) Int)

(assert (=> b!6481684 (= res!2661568 (= (size!40411 lt!2386884) (+ (size!40411 (_1!36640 lt!2386691)) (size!40411 (_2!36640 lt!2386691)))))))

(declare-fun b!6481683 () Bool)

(assert (=> b!6481683 (= e!3928654 (Cons!65249 (h!71697 (_1!36640 lt!2386691)) (++!14427 (t!378999 (_1!36640 lt!2386691)) (_2!36640 lt!2386691))))))

(assert (= (and d!2033639 c!1187365) b!6481682))

(assert (= (and d!2033639 (not c!1187365)) b!6481683))

(assert (= (and d!2033639 res!2661567) b!6481684))

(assert (= (and b!6481684 res!2661568) b!6481685))

(declare-fun m!7269990 () Bool)

(assert (=> d!2033639 m!7269990))

(declare-fun m!7269992 () Bool)

(assert (=> d!2033639 m!7269992))

(declare-fun m!7269994 () Bool)

(assert (=> d!2033639 m!7269994))

(declare-fun m!7269996 () Bool)

(assert (=> b!6481684 m!7269996))

(declare-fun m!7269998 () Bool)

(assert (=> b!6481684 m!7269998))

(declare-fun m!7270000 () Bool)

(assert (=> b!6481684 m!7270000))

(declare-fun m!7270002 () Bool)

(assert (=> b!6481683 m!7270002))

(assert (=> b!6481409 d!2033639))

(declare-fun d!2033641 () Bool)

(declare-fun isEmpty!37441 (Option!16249) Bool)

(assert (=> d!2033641 (= (isDefined!12952 lt!2386658) (not (isEmpty!37441 lt!2386658)))))

(declare-fun bs!1644466 () Bool)

(assert (= bs!1644466 d!2033641))

(declare-fun m!7270004 () Bool)

(assert (=> bs!1644466 m!7270004))

(assert (=> b!6481409 d!2033641))

(declare-fun b!6481704 () Bool)

(declare-fun e!3928666 () Option!16249)

(declare-fun e!3928670 () Option!16249)

(assert (=> b!6481704 (= e!3928666 e!3928670)))

(declare-fun c!1187370 () Bool)

(assert (=> b!6481704 (= c!1187370 (is-Nil!65249 s!2326))))

(declare-fun d!2033643 () Bool)

(declare-fun e!3928667 () Bool)

(assert (=> d!2033643 e!3928667))

(declare-fun res!2661583 () Bool)

(assert (=> d!2033643 (=> res!2661583 e!3928667)))

(declare-fun e!3928668 () Bool)

(assert (=> d!2033643 (= res!2661583 e!3928668)))

(declare-fun res!2661582 () Bool)

(assert (=> d!2033643 (=> (not res!2661582) (not e!3928668))))

(declare-fun lt!2386891 () Option!16249)

(assert (=> d!2033643 (= res!2661582 (isDefined!12952 lt!2386891))))

(assert (=> d!2033643 (= lt!2386891 e!3928666)))

(declare-fun c!1187371 () Bool)

(declare-fun e!3928669 () Bool)

(assert (=> d!2033643 (= c!1187371 e!3928669)))

(declare-fun res!2661580 () Bool)

(assert (=> d!2033643 (=> (not res!2661580) (not e!3928669))))

(assert (=> d!2033643 (= res!2661580 (matchR!8541 lt!2386701 Nil!65249))))

(assert (=> d!2033643 (validRegex!8094 lt!2386701)))

(assert (=> d!2033643 (= (findConcatSeparation!2663 lt!2386701 (regTwo!33228 r!7292) Nil!65249 s!2326 s!2326) lt!2386891)))

(declare-fun b!6481705 () Bool)

(assert (=> b!6481705 (= e!3928668 (= (++!14427 (_1!36640 (get!22621 lt!2386891)) (_2!36640 (get!22621 lt!2386891))) s!2326))))

(declare-fun b!6481706 () Bool)

(declare-fun res!2661581 () Bool)

(assert (=> b!6481706 (=> (not res!2661581) (not e!3928668))))

(assert (=> b!6481706 (= res!2661581 (matchR!8541 (regTwo!33228 r!7292) (_2!36640 (get!22621 lt!2386891))))))

(declare-fun b!6481707 () Bool)

(declare-fun res!2661579 () Bool)

(assert (=> b!6481707 (=> (not res!2661579) (not e!3928668))))

(assert (=> b!6481707 (= res!2661579 (matchR!8541 lt!2386701 (_1!36640 (get!22621 lt!2386891))))))

(declare-fun b!6481708 () Bool)

(assert (=> b!6481708 (= e!3928670 None!16248)))

(declare-fun b!6481709 () Bool)

(declare-fun lt!2386892 () Unit!158763)

(declare-fun lt!2386893 () Unit!158763)

(assert (=> b!6481709 (= lt!2386892 lt!2386893)))

(assert (=> b!6481709 (= (++!14427 (++!14427 Nil!65249 (Cons!65249 (h!71697 s!2326) Nil!65249)) (t!378999 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2515 (List!65373 C!32986 List!65373 List!65373) Unit!158763)

(assert (=> b!6481709 (= lt!2386893 (lemmaMoveElementToOtherListKeepsConcatEq!2515 Nil!65249 (h!71697 s!2326) (t!378999 s!2326) s!2326))))

(assert (=> b!6481709 (= e!3928670 (findConcatSeparation!2663 lt!2386701 (regTwo!33228 r!7292) (++!14427 Nil!65249 (Cons!65249 (h!71697 s!2326) Nil!65249)) (t!378999 s!2326) s!2326))))

(declare-fun b!6481710 () Bool)

(assert (=> b!6481710 (= e!3928666 (Some!16248 (tuple2!66675 Nil!65249 s!2326)))))

(declare-fun b!6481711 () Bool)

(assert (=> b!6481711 (= e!3928669 (matchR!8541 (regTwo!33228 r!7292) s!2326))))

(declare-fun b!6481712 () Bool)

(assert (=> b!6481712 (= e!3928667 (not (isDefined!12952 lt!2386891)))))

(assert (= (and d!2033643 res!2661580) b!6481711))

(assert (= (and d!2033643 c!1187371) b!6481710))

(assert (= (and d!2033643 (not c!1187371)) b!6481704))

(assert (= (and b!6481704 c!1187370) b!6481708))

(assert (= (and b!6481704 (not c!1187370)) b!6481709))

(assert (= (and d!2033643 res!2661582) b!6481707))

(assert (= (and b!6481707 res!2661579) b!6481706))

(assert (= (and b!6481706 res!2661581) b!6481705))

(assert (= (and d!2033643 (not res!2661583)) b!6481712))

(declare-fun m!7270006 () Bool)

(assert (=> b!6481709 m!7270006))

(assert (=> b!6481709 m!7270006))

(declare-fun m!7270008 () Bool)

(assert (=> b!6481709 m!7270008))

(declare-fun m!7270010 () Bool)

(assert (=> b!6481709 m!7270010))

(assert (=> b!6481709 m!7270006))

(declare-fun m!7270012 () Bool)

(assert (=> b!6481709 m!7270012))

(declare-fun m!7270014 () Bool)

(assert (=> b!6481707 m!7270014))

(declare-fun m!7270016 () Bool)

(assert (=> b!6481707 m!7270016))

(declare-fun m!7270018 () Bool)

(assert (=> b!6481711 m!7270018))

(declare-fun m!7270020 () Bool)

(assert (=> d!2033643 m!7270020))

(declare-fun m!7270022 () Bool)

(assert (=> d!2033643 m!7270022))

(assert (=> d!2033643 m!7269972))

(assert (=> b!6481705 m!7270014))

(declare-fun m!7270024 () Bool)

(assert (=> b!6481705 m!7270024))

(assert (=> b!6481712 m!7270020))

(assert (=> b!6481706 m!7270014))

(declare-fun m!7270026 () Bool)

(assert (=> b!6481706 m!7270026))

(assert (=> b!6481409 d!2033643))

(declare-fun d!2033645 () Bool)

(assert (=> d!2033645 (= (Exists!3428 lambda!358444) (choose!48052 lambda!358444))))

(declare-fun bs!1644467 () Bool)

(assert (= bs!1644467 d!2033645))

(declare-fun m!7270028 () Bool)

(assert (=> bs!1644467 m!7270028))

(assert (=> b!6481409 d!2033645))

(declare-fun b!6481713 () Bool)

(declare-fun e!3928671 () Option!16249)

(declare-fun e!3928675 () Option!16249)

(assert (=> b!6481713 (= e!3928671 e!3928675)))

(declare-fun c!1187372 () Bool)

(assert (=> b!6481713 (= c!1187372 (is-Nil!65249 s!2326))))

(declare-fun d!2033647 () Bool)

(declare-fun e!3928672 () Bool)

(assert (=> d!2033647 e!3928672))

(declare-fun res!2661588 () Bool)

(assert (=> d!2033647 (=> res!2661588 e!3928672)))

(declare-fun e!3928673 () Bool)

(assert (=> d!2033647 (= res!2661588 e!3928673)))

(declare-fun res!2661587 () Bool)

(assert (=> d!2033647 (=> (not res!2661587) (not e!3928673))))

(declare-fun lt!2386894 () Option!16249)

(assert (=> d!2033647 (= res!2661587 (isDefined!12952 lt!2386894))))

(assert (=> d!2033647 (= lt!2386894 e!3928671)))

(declare-fun c!1187373 () Bool)

(declare-fun e!3928674 () Bool)

(assert (=> d!2033647 (= c!1187373 e!3928674)))

(declare-fun res!2661585 () Bool)

(assert (=> d!2033647 (=> (not res!2661585) (not e!3928674))))

(assert (=> d!2033647 (= res!2661585 (matchR!8541 (regOne!33228 r!7292) Nil!65249))))

(assert (=> d!2033647 (validRegex!8094 (regOne!33228 r!7292))))

(assert (=> d!2033647 (= (findConcatSeparation!2663 (regOne!33228 r!7292) (regTwo!33228 r!7292) Nil!65249 s!2326 s!2326) lt!2386894)))

(declare-fun b!6481714 () Bool)

(assert (=> b!6481714 (= e!3928673 (= (++!14427 (_1!36640 (get!22621 lt!2386894)) (_2!36640 (get!22621 lt!2386894))) s!2326))))

(declare-fun b!6481715 () Bool)

(declare-fun res!2661586 () Bool)

(assert (=> b!6481715 (=> (not res!2661586) (not e!3928673))))

(assert (=> b!6481715 (= res!2661586 (matchR!8541 (regTwo!33228 r!7292) (_2!36640 (get!22621 lt!2386894))))))

(declare-fun b!6481716 () Bool)

(declare-fun res!2661584 () Bool)

(assert (=> b!6481716 (=> (not res!2661584) (not e!3928673))))

(assert (=> b!6481716 (= res!2661584 (matchR!8541 (regOne!33228 r!7292) (_1!36640 (get!22621 lt!2386894))))))

(declare-fun b!6481717 () Bool)

(assert (=> b!6481717 (= e!3928675 None!16248)))

(declare-fun b!6481718 () Bool)

(declare-fun lt!2386895 () Unit!158763)

(declare-fun lt!2386896 () Unit!158763)

(assert (=> b!6481718 (= lt!2386895 lt!2386896)))

(assert (=> b!6481718 (= (++!14427 (++!14427 Nil!65249 (Cons!65249 (h!71697 s!2326) Nil!65249)) (t!378999 s!2326)) s!2326)))

(assert (=> b!6481718 (= lt!2386896 (lemmaMoveElementToOtherListKeepsConcatEq!2515 Nil!65249 (h!71697 s!2326) (t!378999 s!2326) s!2326))))

(assert (=> b!6481718 (= e!3928675 (findConcatSeparation!2663 (regOne!33228 r!7292) (regTwo!33228 r!7292) (++!14427 Nil!65249 (Cons!65249 (h!71697 s!2326) Nil!65249)) (t!378999 s!2326) s!2326))))

(declare-fun b!6481719 () Bool)

(assert (=> b!6481719 (= e!3928671 (Some!16248 (tuple2!66675 Nil!65249 s!2326)))))

(declare-fun b!6481720 () Bool)

(assert (=> b!6481720 (= e!3928674 (matchR!8541 (regTwo!33228 r!7292) s!2326))))

(declare-fun b!6481721 () Bool)

(assert (=> b!6481721 (= e!3928672 (not (isDefined!12952 lt!2386894)))))

(assert (= (and d!2033647 res!2661585) b!6481720))

(assert (= (and d!2033647 c!1187373) b!6481719))

(assert (= (and d!2033647 (not c!1187373)) b!6481713))

(assert (= (and b!6481713 c!1187372) b!6481717))

(assert (= (and b!6481713 (not c!1187372)) b!6481718))

(assert (= (and d!2033647 res!2661587) b!6481716))

(assert (= (and b!6481716 res!2661584) b!6481715))

(assert (= (and b!6481715 res!2661586) b!6481714))

(assert (= (and d!2033647 (not res!2661588)) b!6481721))

(assert (=> b!6481718 m!7270006))

(assert (=> b!6481718 m!7270006))

(assert (=> b!6481718 m!7270008))

(assert (=> b!6481718 m!7270010))

(assert (=> b!6481718 m!7270006))

(declare-fun m!7270030 () Bool)

(assert (=> b!6481718 m!7270030))

(declare-fun m!7270032 () Bool)

(assert (=> b!6481716 m!7270032))

(declare-fun m!7270034 () Bool)

(assert (=> b!6481716 m!7270034))

(assert (=> b!6481720 m!7270018))

(declare-fun m!7270036 () Bool)

(assert (=> d!2033647 m!7270036))

(declare-fun m!7270038 () Bool)

(assert (=> d!2033647 m!7270038))

(declare-fun m!7270040 () Bool)

(assert (=> d!2033647 m!7270040))

(assert (=> b!6481714 m!7270032))

(declare-fun m!7270042 () Bool)

(assert (=> b!6481714 m!7270042))

(assert (=> b!6481721 m!7270036))

(assert (=> b!6481715 m!7270032))

(declare-fun m!7270044 () Bool)

(assert (=> b!6481715 m!7270044))

(assert (=> b!6481408 d!2033647))

(declare-fun d!2033649 () Bool)

(assert (=> d!2033649 (= (Exists!3428 lambda!358441) (choose!48052 lambda!358441))))

(declare-fun bs!1644468 () Bool)

(assert (= bs!1644468 d!2033649))

(declare-fun m!7270046 () Bool)

(assert (=> bs!1644468 m!7270046))

(assert (=> b!6481408 d!2033649))

(declare-fun d!2033651 () Bool)

(assert (=> d!2033651 (= (Exists!3428 lambda!358442) (choose!48052 lambda!358442))))

(declare-fun bs!1644469 () Bool)

(assert (= bs!1644469 d!2033651))

(declare-fun m!7270048 () Bool)

(assert (=> bs!1644469 m!7270048))

(assert (=> b!6481408 d!2033651))

(declare-fun bs!1644470 () Bool)

(declare-fun d!2033653 () Bool)

(assert (= bs!1644470 (and d!2033653 b!6481409)))

(declare-fun lambda!358500 () Int)

(assert (=> bs!1644470 (= (= (regOne!33228 r!7292) lt!2386701) (= lambda!358500 lambda!358444))))

(declare-fun bs!1644471 () Bool)

(assert (= bs!1644471 (and d!2033653 b!6481408)))

(assert (=> bs!1644471 (= lambda!358500 lambda!358441)))

(declare-fun bs!1644472 () Bool)

(assert (= bs!1644472 (and d!2033653 d!2033633)))

(assert (=> bs!1644472 (= (= (regOne!33228 r!7292) lt!2386701) (= lambda!358500 lambda!358498))))

(assert (=> bs!1644472 (not (= lambda!358500 lambda!358499))))

(declare-fun bs!1644473 () Bool)

(assert (= bs!1644473 (and d!2033653 d!2033631)))

(assert (=> bs!1644473 (= (= (regOne!33228 r!7292) lt!2386701) (= lambda!358500 lambda!358493))))

(declare-fun bs!1644474 () Bool)

(assert (= bs!1644474 (and d!2033653 b!6481386)))

(assert (=> bs!1644474 (= (and (= s!2326 (_1!36640 lt!2386691)) (= (regOne!33228 r!7292) (reg!16687 (regOne!33228 r!7292))) (= (regTwo!33228 r!7292) lt!2386701)) (= lambda!358500 lambda!358446))))

(assert (=> bs!1644470 (not (= lambda!358500 lambda!358445))))

(assert (=> bs!1644474 (not (= lambda!358500 lambda!358448))))

(assert (=> bs!1644474 (not (= lambda!358500 lambda!358447))))

(assert (=> bs!1644471 (not (= lambda!358500 lambda!358442))))

(assert (=> d!2033653 true))

(assert (=> d!2033653 true))

(assert (=> d!2033653 true))

(assert (=> d!2033653 (= (isDefined!12952 (findConcatSeparation!2663 (regOne!33228 r!7292) (regTwo!33228 r!7292) Nil!65249 s!2326 s!2326)) (Exists!3428 lambda!358500))))

(declare-fun lt!2386897 () Unit!158763)

(assert (=> d!2033653 (= lt!2386897 (choose!48050 (regOne!33228 r!7292) (regTwo!33228 r!7292) s!2326))))

(assert (=> d!2033653 (validRegex!8094 (regOne!33228 r!7292))))

(assert (=> d!2033653 (= (lemmaFindConcatSeparationEquivalentToExists!2427 (regOne!33228 r!7292) (regTwo!33228 r!7292) s!2326) lt!2386897)))

(declare-fun bs!1644475 () Bool)

(assert (= bs!1644475 d!2033653))

(assert (=> bs!1644475 m!7270040))

(assert (=> bs!1644475 m!7269750))

(assert (=> bs!1644475 m!7269752))

(declare-fun m!7270050 () Bool)

(assert (=> bs!1644475 m!7270050))

(declare-fun m!7270052 () Bool)

(assert (=> bs!1644475 m!7270052))

(assert (=> bs!1644475 m!7269750))

(assert (=> b!6481408 d!2033653))

(declare-fun bs!1644476 () Bool)

(declare-fun d!2033655 () Bool)

(assert (= bs!1644476 (and d!2033655 b!6481409)))

(declare-fun lambda!358501 () Int)

(assert (=> bs!1644476 (= (= (regOne!33228 r!7292) lt!2386701) (= lambda!358501 lambda!358444))))

(declare-fun bs!1644477 () Bool)

(assert (= bs!1644477 (and d!2033655 b!6481408)))

(assert (=> bs!1644477 (= lambda!358501 lambda!358441)))

(declare-fun bs!1644478 () Bool)

(assert (= bs!1644478 (and d!2033655 d!2033633)))

(assert (=> bs!1644478 (= (= (regOne!33228 r!7292) lt!2386701) (= lambda!358501 lambda!358498))))

(assert (=> bs!1644478 (not (= lambda!358501 lambda!358499))))

(declare-fun bs!1644479 () Bool)

(assert (= bs!1644479 (and d!2033655 d!2033631)))

(assert (=> bs!1644479 (= (= (regOne!33228 r!7292) lt!2386701) (= lambda!358501 lambda!358493))))

(declare-fun bs!1644480 () Bool)

(assert (= bs!1644480 (and d!2033655 d!2033653)))

(assert (=> bs!1644480 (= lambda!358501 lambda!358500)))

(declare-fun bs!1644481 () Bool)

(assert (= bs!1644481 (and d!2033655 b!6481386)))

(assert (=> bs!1644481 (= (and (= s!2326 (_1!36640 lt!2386691)) (= (regOne!33228 r!7292) (reg!16687 (regOne!33228 r!7292))) (= (regTwo!33228 r!7292) lt!2386701)) (= lambda!358501 lambda!358446))))

(assert (=> bs!1644476 (not (= lambda!358501 lambda!358445))))

(assert (=> bs!1644481 (not (= lambda!358501 lambda!358448))))

(assert (=> bs!1644481 (not (= lambda!358501 lambda!358447))))

(assert (=> bs!1644477 (not (= lambda!358501 lambda!358442))))

(assert (=> d!2033655 true))

(assert (=> d!2033655 true))

(assert (=> d!2033655 true))

(declare-fun lambda!358502 () Int)

(assert (=> bs!1644476 (not (= lambda!358502 lambda!358444))))

(assert (=> bs!1644477 (not (= lambda!358502 lambda!358441))))

(declare-fun bs!1644482 () Bool)

(assert (= bs!1644482 d!2033655))

(assert (=> bs!1644482 (not (= lambda!358502 lambda!358501))))

(assert (=> bs!1644478 (not (= lambda!358502 lambda!358498))))

(assert (=> bs!1644478 (= (= (regOne!33228 r!7292) lt!2386701) (= lambda!358502 lambda!358499))))

(assert (=> bs!1644479 (not (= lambda!358502 lambda!358493))))

(assert (=> bs!1644480 (not (= lambda!358502 lambda!358500))))

(assert (=> bs!1644481 (not (= lambda!358502 lambda!358446))))

(assert (=> bs!1644476 (= (= (regOne!33228 r!7292) lt!2386701) (= lambda!358502 lambda!358445))))

(assert (=> bs!1644481 (= (and (= s!2326 (_1!36640 lt!2386691)) (= (regOne!33228 r!7292) (reg!16687 (regOne!33228 r!7292))) (= (regTwo!33228 r!7292) lt!2386701)) (= lambda!358502 lambda!358448))))

(assert (=> bs!1644481 (not (= lambda!358502 lambda!358447))))

(assert (=> bs!1644477 (= lambda!358502 lambda!358442)))

(assert (=> d!2033655 true))

(assert (=> d!2033655 true))

(assert (=> d!2033655 true))

(assert (=> d!2033655 (= (Exists!3428 lambda!358501) (Exists!3428 lambda!358502))))

(declare-fun lt!2386898 () Unit!158763)

(assert (=> d!2033655 (= lt!2386898 (choose!48051 (regOne!33228 r!7292) (regTwo!33228 r!7292) s!2326))))

(assert (=> d!2033655 (validRegex!8094 (regOne!33228 r!7292))))

(assert (=> d!2033655 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1965 (regOne!33228 r!7292) (regTwo!33228 r!7292) s!2326) lt!2386898)))

(declare-fun m!7270054 () Bool)

(assert (=> bs!1644482 m!7270054))

(declare-fun m!7270056 () Bool)

(assert (=> bs!1644482 m!7270056))

(declare-fun m!7270058 () Bool)

(assert (=> bs!1644482 m!7270058))

(assert (=> bs!1644482 m!7270040))

(assert (=> b!6481408 d!2033655))

(declare-fun d!2033657 () Bool)

(assert (=> d!2033657 (= (isDefined!12952 (findConcatSeparation!2663 (regOne!33228 r!7292) (regTwo!33228 r!7292) Nil!65249 s!2326 s!2326)) (not (isEmpty!37441 (findConcatSeparation!2663 (regOne!33228 r!7292) (regTwo!33228 r!7292) Nil!65249 s!2326 s!2326))))))

(declare-fun bs!1644483 () Bool)

(assert (= bs!1644483 d!2033657))

(assert (=> bs!1644483 m!7269750))

(declare-fun m!7270060 () Bool)

(assert (=> bs!1644483 m!7270060))

(assert (=> b!6481408 d!2033657))

(declare-fun d!2033659 () Bool)

(declare-fun nullableFct!2291 (Regex!16358) Bool)

(assert (=> d!2033659 (= (nullable!6351 (regOne!33228 (regOne!33228 r!7292))) (nullableFct!2291 (regOne!33228 (regOne!33228 r!7292))))))

(declare-fun bs!1644484 () Bool)

(assert (= bs!1644484 d!2033659))

(declare-fun m!7270062 () Bool)

(assert (=> bs!1644484 m!7270062))

(assert (=> b!6481387 d!2033659))

(declare-fun d!2033661 () Bool)

(assert (=> d!2033661 (= (Exists!3428 lambda!358448) (choose!48052 lambda!358448))))

(declare-fun bs!1644485 () Bool)

(assert (= bs!1644485 d!2033661))

(declare-fun m!7270064 () Bool)

(assert (=> bs!1644485 m!7270064))

(assert (=> b!6481386 d!2033661))

(declare-fun bs!1644486 () Bool)

(declare-fun d!2033663 () Bool)

(assert (= bs!1644486 (and d!2033663 b!6481409)))

(declare-fun lambda!358507 () Int)

(assert (=> bs!1644486 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) lt!2386701) (= (Star!16358 (reg!16687 (regOne!33228 r!7292))) (regTwo!33228 r!7292))) (= lambda!358507 lambda!358444))))

(declare-fun bs!1644487 () Bool)

(assert (= bs!1644487 (and d!2033663 b!6481408)))

(assert (=> bs!1644487 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) (regOne!33228 r!7292)) (= (Star!16358 (reg!16687 (regOne!33228 r!7292))) (regTwo!33228 r!7292))) (= lambda!358507 lambda!358441))))

(declare-fun bs!1644488 () Bool)

(assert (= bs!1644488 (and d!2033663 d!2033655)))

(assert (=> bs!1644488 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) (regOne!33228 r!7292)) (= (Star!16358 (reg!16687 (regOne!33228 r!7292))) (regTwo!33228 r!7292))) (= lambda!358507 lambda!358501))))

(declare-fun bs!1644489 () Bool)

(assert (= bs!1644489 (and d!2033663 d!2033633)))

(assert (=> bs!1644489 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) lt!2386701) (= (Star!16358 (reg!16687 (regOne!33228 r!7292))) (regTwo!33228 r!7292))) (= lambda!358507 lambda!358498))))

(assert (=> bs!1644489 (not (= lambda!358507 lambda!358499))))

(declare-fun bs!1644490 () Bool)

(assert (= bs!1644490 (and d!2033663 d!2033631)))

(assert (=> bs!1644490 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) lt!2386701) (= (Star!16358 (reg!16687 (regOne!33228 r!7292))) (regTwo!33228 r!7292))) (= lambda!358507 lambda!358493))))

(declare-fun bs!1644491 () Bool)

(assert (= bs!1644491 (and d!2033663 d!2033653)))

(assert (=> bs!1644491 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) (regOne!33228 r!7292)) (= (Star!16358 (reg!16687 (regOne!33228 r!7292))) (regTwo!33228 r!7292))) (= lambda!358507 lambda!358500))))

(declare-fun bs!1644492 () Bool)

(assert (= bs!1644492 (and d!2033663 b!6481386)))

(assert (=> bs!1644492 (= (= (Star!16358 (reg!16687 (regOne!33228 r!7292))) lt!2386701) (= lambda!358507 lambda!358446))))

(assert (=> bs!1644488 (not (= lambda!358507 lambda!358502))))

(assert (=> bs!1644486 (not (= lambda!358507 lambda!358445))))

(assert (=> bs!1644492 (not (= lambda!358507 lambda!358448))))

(assert (=> bs!1644492 (not (= lambda!358507 lambda!358447))))

(assert (=> bs!1644487 (not (= lambda!358507 lambda!358442))))

(assert (=> d!2033663 true))

(assert (=> d!2033663 true))

(declare-fun lambda!358508 () Int)

(assert (=> bs!1644487 (not (= lambda!358508 lambda!358441))))

(assert (=> bs!1644488 (not (= lambda!358508 lambda!358501))))

(assert (=> bs!1644489 (not (= lambda!358508 lambda!358498))))

(assert (=> bs!1644489 (not (= lambda!358508 lambda!358499))))

(assert (=> bs!1644490 (not (= lambda!358508 lambda!358493))))

(assert (=> bs!1644491 (not (= lambda!358508 lambda!358500))))

(assert (=> bs!1644492 (not (= lambda!358508 lambda!358446))))

(assert (=> bs!1644488 (not (= lambda!358508 lambda!358502))))

(assert (=> bs!1644486 (not (= lambda!358508 lambda!358444))))

(declare-fun bs!1644493 () Bool)

(assert (= bs!1644493 d!2033663))

(assert (=> bs!1644493 (not (= lambda!358508 lambda!358507))))

(assert (=> bs!1644486 (not (= lambda!358508 lambda!358445))))

(assert (=> bs!1644492 (not (= lambda!358508 lambda!358448))))

(assert (=> bs!1644492 (= (= (Star!16358 (reg!16687 (regOne!33228 r!7292))) lt!2386701) (= lambda!358508 lambda!358447))))

(assert (=> bs!1644487 (not (= lambda!358508 lambda!358442))))

(assert (=> d!2033663 true))

(assert (=> d!2033663 true))

(assert (=> d!2033663 (= (Exists!3428 lambda!358507) (Exists!3428 lambda!358508))))

(declare-fun lt!2386901 () Unit!158763)

(declare-fun choose!48053 (Regex!16358 List!65373) Unit!158763)

(assert (=> d!2033663 (= lt!2386901 (choose!48053 (reg!16687 (regOne!33228 r!7292)) (_1!36640 lt!2386691)))))

(assert (=> d!2033663 (validRegex!8094 (reg!16687 (regOne!33228 r!7292)))))

(assert (=> d!2033663 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!649 (reg!16687 (regOne!33228 r!7292)) (_1!36640 lt!2386691)) lt!2386901)))

(declare-fun m!7270066 () Bool)

(assert (=> bs!1644493 m!7270066))

(declare-fun m!7270068 () Bool)

(assert (=> bs!1644493 m!7270068))

(declare-fun m!7270070 () Bool)

(assert (=> bs!1644493 m!7270070))

(assert (=> bs!1644493 m!7269582))

(assert (=> b!6481386 d!2033663))

(declare-fun bs!1644494 () Bool)

(declare-fun b!6481774 () Bool)

(assert (= bs!1644494 (and b!6481774 b!6481408)))

(declare-fun lambda!358513 () Int)

(assert (=> bs!1644494 (not (= lambda!358513 lambda!358441))))

(declare-fun bs!1644495 () Bool)

(assert (= bs!1644495 (and b!6481774 d!2033655)))

(assert (=> bs!1644495 (not (= lambda!358513 lambda!358501))))

(declare-fun bs!1644496 () Bool)

(assert (= bs!1644496 (and b!6481774 d!2033633)))

(assert (=> bs!1644496 (not (= lambda!358513 lambda!358498))))

(assert (=> bs!1644496 (not (= lambda!358513 lambda!358499))))

(declare-fun bs!1644497 () Bool)

(assert (= bs!1644497 (and b!6481774 d!2033631)))

(assert (=> bs!1644497 (not (= lambda!358513 lambda!358493))))

(declare-fun bs!1644498 () Bool)

(assert (= bs!1644498 (and b!6481774 d!2033653)))

(assert (=> bs!1644498 (not (= lambda!358513 lambda!358500))))

(declare-fun bs!1644499 () Bool)

(assert (= bs!1644499 (and b!6481774 b!6481386)))

(assert (=> bs!1644499 (not (= lambda!358513 lambda!358446))))

(assert (=> bs!1644495 (not (= lambda!358513 lambda!358502))))

(declare-fun bs!1644500 () Bool)

(assert (= bs!1644500 (and b!6481774 d!2033663)))

(assert (=> bs!1644500 (= (and (= (reg!16687 lt!2386701) (reg!16687 (regOne!33228 r!7292))) (= lt!2386701 (Star!16358 (reg!16687 (regOne!33228 r!7292))))) (= lambda!358513 lambda!358508))))

(declare-fun bs!1644501 () Bool)

(assert (= bs!1644501 (and b!6481774 b!6481409)))

(assert (=> bs!1644501 (not (= lambda!358513 lambda!358444))))

(assert (=> bs!1644500 (not (= lambda!358513 lambda!358507))))

(assert (=> bs!1644501 (not (= lambda!358513 lambda!358445))))

(assert (=> bs!1644499 (not (= lambda!358513 lambda!358448))))

(assert (=> bs!1644499 (= (= (reg!16687 lt!2386701) (reg!16687 (regOne!33228 r!7292))) (= lambda!358513 lambda!358447))))

(assert (=> bs!1644494 (not (= lambda!358513 lambda!358442))))

(assert (=> b!6481774 true))

(assert (=> b!6481774 true))

(declare-fun bs!1644502 () Bool)

(declare-fun b!6481772 () Bool)

(assert (= bs!1644502 (and b!6481772 b!6481774)))

(declare-fun lambda!358514 () Int)

(assert (=> bs!1644502 (not (= lambda!358514 lambda!358513))))

(declare-fun bs!1644503 () Bool)

(assert (= bs!1644503 (and b!6481772 b!6481408)))

(assert (=> bs!1644503 (not (= lambda!358514 lambda!358441))))

(declare-fun bs!1644504 () Bool)

(assert (= bs!1644504 (and b!6481772 d!2033655)))

(assert (=> bs!1644504 (not (= lambda!358514 lambda!358501))))

(declare-fun bs!1644505 () Bool)

(assert (= bs!1644505 (and b!6481772 d!2033633)))

(assert (=> bs!1644505 (not (= lambda!358514 lambda!358498))))

(assert (=> bs!1644505 (= (and (= (_1!36640 lt!2386691) s!2326) (= (regOne!33228 lt!2386701) lt!2386701) (= (regTwo!33228 lt!2386701) (regTwo!33228 r!7292))) (= lambda!358514 lambda!358499))))

(declare-fun bs!1644506 () Bool)

(assert (= bs!1644506 (and b!6481772 d!2033631)))

(assert (=> bs!1644506 (not (= lambda!358514 lambda!358493))))

(declare-fun bs!1644507 () Bool)

(assert (= bs!1644507 (and b!6481772 d!2033653)))

(assert (=> bs!1644507 (not (= lambda!358514 lambda!358500))))

(declare-fun bs!1644508 () Bool)

(assert (= bs!1644508 (and b!6481772 b!6481386)))

(assert (=> bs!1644508 (not (= lambda!358514 lambda!358446))))

(assert (=> bs!1644504 (= (and (= (_1!36640 lt!2386691) s!2326) (= (regOne!33228 lt!2386701) (regOne!33228 r!7292)) (= (regTwo!33228 lt!2386701) (regTwo!33228 r!7292))) (= lambda!358514 lambda!358502))))

(declare-fun bs!1644509 () Bool)

(assert (= bs!1644509 (and b!6481772 d!2033663)))

(assert (=> bs!1644509 (not (= lambda!358514 lambda!358508))))

(declare-fun bs!1644510 () Bool)

(assert (= bs!1644510 (and b!6481772 b!6481409)))

(assert (=> bs!1644510 (not (= lambda!358514 lambda!358444))))

(assert (=> bs!1644509 (not (= lambda!358514 lambda!358507))))

(assert (=> bs!1644510 (= (and (= (_1!36640 lt!2386691) s!2326) (= (regOne!33228 lt!2386701) lt!2386701) (= (regTwo!33228 lt!2386701) (regTwo!33228 r!7292))) (= lambda!358514 lambda!358445))))

(assert (=> bs!1644508 (= (and (= (regOne!33228 lt!2386701) (reg!16687 (regOne!33228 r!7292))) (= (regTwo!33228 lt!2386701) lt!2386701)) (= lambda!358514 lambda!358448))))

(assert (=> bs!1644508 (not (= lambda!358514 lambda!358447))))

(assert (=> bs!1644503 (= (and (= (_1!36640 lt!2386691) s!2326) (= (regOne!33228 lt!2386701) (regOne!33228 r!7292)) (= (regTwo!33228 lt!2386701) (regTwo!33228 r!7292))) (= lambda!358514 lambda!358442))))

(assert (=> b!6481772 true))

(assert (=> b!6481772 true))

(declare-fun e!3928702 () Bool)

(declare-fun call!561008 () Bool)

(assert (=> b!6481772 (= e!3928702 call!561008)))

(declare-fun b!6481773 () Bool)

(declare-fun c!1187386 () Bool)

(assert (=> b!6481773 (= c!1187386 (is-ElementMatch!16358 lt!2386701))))

(declare-fun e!3928706 () Bool)

(declare-fun e!3928704 () Bool)

(assert (=> b!6481773 (= e!3928706 e!3928704)))

(declare-fun bm!561002 () Bool)

(declare-fun c!1187387 () Bool)

(assert (=> bm!561002 (= call!561008 (Exists!3428 (ite c!1187387 lambda!358513 lambda!358514)))))

(declare-fun e!3928705 () Bool)

(assert (=> b!6481774 (= e!3928705 call!561008)))

(declare-fun bm!561003 () Bool)

(declare-fun call!561007 () Bool)

(assert (=> bm!561003 (= call!561007 (isEmpty!37436 (_1!36640 lt!2386691)))))

(declare-fun b!6481775 () Bool)

(declare-fun e!3928708 () Bool)

(assert (=> b!6481775 (= e!3928708 (matchRSpec!3459 (regTwo!33229 lt!2386701) (_1!36640 lt!2386691)))))

(declare-fun d!2033667 () Bool)

(declare-fun c!1187385 () Bool)

(assert (=> d!2033667 (= c!1187385 (is-EmptyExpr!16358 lt!2386701))))

(declare-fun e!3928707 () Bool)

(assert (=> d!2033667 (= (matchRSpec!3459 lt!2386701 (_1!36640 lt!2386691)) e!3928707)))

(declare-fun b!6481776 () Bool)

(declare-fun e!3928703 () Bool)

(assert (=> b!6481776 (= e!3928703 e!3928702)))

(assert (=> b!6481776 (= c!1187387 (is-Star!16358 lt!2386701))))

(declare-fun b!6481777 () Bool)

(assert (=> b!6481777 (= e!3928707 e!3928706)))

(declare-fun res!2661619 () Bool)

(assert (=> b!6481777 (= res!2661619 (not (is-EmptyLang!16358 lt!2386701)))))

(assert (=> b!6481777 (=> (not res!2661619) (not e!3928706))))

(declare-fun b!6481778 () Bool)

(assert (=> b!6481778 (= e!3928707 call!561007)))

(declare-fun b!6481779 () Bool)

(declare-fun res!2661620 () Bool)

(assert (=> b!6481779 (=> res!2661620 e!3928705)))

(assert (=> b!6481779 (= res!2661620 call!561007)))

(assert (=> b!6481779 (= e!3928702 e!3928705)))

(declare-fun b!6481780 () Bool)

(assert (=> b!6481780 (= e!3928703 e!3928708)))

(declare-fun res!2661621 () Bool)

(assert (=> b!6481780 (= res!2661621 (matchRSpec!3459 (regOne!33229 lt!2386701) (_1!36640 lt!2386691)))))

(assert (=> b!6481780 (=> res!2661621 e!3928708)))

(declare-fun b!6481781 () Bool)

(assert (=> b!6481781 (= e!3928704 (= (_1!36640 lt!2386691) (Cons!65249 (c!1187340 lt!2386701) Nil!65249)))))

(declare-fun b!6481782 () Bool)

(declare-fun c!1187384 () Bool)

(assert (=> b!6481782 (= c!1187384 (is-Union!16358 lt!2386701))))

(assert (=> b!6481782 (= e!3928704 e!3928703)))

(assert (= (and d!2033667 c!1187385) b!6481778))

(assert (= (and d!2033667 (not c!1187385)) b!6481777))

(assert (= (and b!6481777 res!2661619) b!6481773))

(assert (= (and b!6481773 c!1187386) b!6481781))

(assert (= (and b!6481773 (not c!1187386)) b!6481782))

(assert (= (and b!6481782 c!1187384) b!6481780))

(assert (= (and b!6481782 (not c!1187384)) b!6481776))

(assert (= (and b!6481780 (not res!2661621)) b!6481775))

(assert (= (and b!6481776 c!1187387) b!6481779))

(assert (= (and b!6481776 (not c!1187387)) b!6481772))

(assert (= (and b!6481779 (not res!2661620)) b!6481774))

(assert (= (or b!6481774 b!6481772) bm!561002))

(assert (= (or b!6481778 b!6481779) bm!561003))

(declare-fun m!7270072 () Bool)

(assert (=> bm!561002 m!7270072))

(assert (=> bm!561003 m!7269580))

(declare-fun m!7270074 () Bool)

(assert (=> b!6481775 m!7270074))

(declare-fun m!7270076 () Bool)

(assert (=> b!6481780 m!7270076))

(assert (=> b!6481386 d!2033667))

(declare-fun b!6481783 () Bool)

(declare-fun e!3928709 () Option!16249)

(declare-fun e!3928713 () Option!16249)

(assert (=> b!6481783 (= e!3928709 e!3928713)))

(declare-fun c!1187388 () Bool)

(assert (=> b!6481783 (= c!1187388 (is-Nil!65249 (_1!36640 lt!2386691)))))

(declare-fun d!2033669 () Bool)

(declare-fun e!3928710 () Bool)

(assert (=> d!2033669 e!3928710))

(declare-fun res!2661626 () Bool)

(assert (=> d!2033669 (=> res!2661626 e!3928710)))

(declare-fun e!3928711 () Bool)

(assert (=> d!2033669 (= res!2661626 e!3928711)))

(declare-fun res!2661625 () Bool)

(assert (=> d!2033669 (=> (not res!2661625) (not e!3928711))))

(declare-fun lt!2386904 () Option!16249)

(assert (=> d!2033669 (= res!2661625 (isDefined!12952 lt!2386904))))

(assert (=> d!2033669 (= lt!2386904 e!3928709)))

(declare-fun c!1187389 () Bool)

(declare-fun e!3928712 () Bool)

(assert (=> d!2033669 (= c!1187389 e!3928712)))

(declare-fun res!2661623 () Bool)

(assert (=> d!2033669 (=> (not res!2661623) (not e!3928712))))

(assert (=> d!2033669 (= res!2661623 (matchR!8541 (reg!16687 (regOne!33228 r!7292)) Nil!65249))))

(assert (=> d!2033669 (validRegex!8094 (reg!16687 (regOne!33228 r!7292)))))

(assert (=> d!2033669 (= (findConcatSeparation!2663 (reg!16687 (regOne!33228 r!7292)) lt!2386701 Nil!65249 (_1!36640 lt!2386691) (_1!36640 lt!2386691)) lt!2386904)))

(declare-fun b!6481784 () Bool)

(assert (=> b!6481784 (= e!3928711 (= (++!14427 (_1!36640 (get!22621 lt!2386904)) (_2!36640 (get!22621 lt!2386904))) (_1!36640 lt!2386691)))))

(declare-fun b!6481785 () Bool)

(declare-fun res!2661624 () Bool)

(assert (=> b!6481785 (=> (not res!2661624) (not e!3928711))))

(assert (=> b!6481785 (= res!2661624 (matchR!8541 lt!2386701 (_2!36640 (get!22621 lt!2386904))))))

(declare-fun b!6481786 () Bool)

(declare-fun res!2661622 () Bool)

(assert (=> b!6481786 (=> (not res!2661622) (not e!3928711))))

(assert (=> b!6481786 (= res!2661622 (matchR!8541 (reg!16687 (regOne!33228 r!7292)) (_1!36640 (get!22621 lt!2386904))))))

(declare-fun b!6481787 () Bool)

(assert (=> b!6481787 (= e!3928713 None!16248)))

(declare-fun b!6481788 () Bool)

(declare-fun lt!2386905 () Unit!158763)

(declare-fun lt!2386906 () Unit!158763)

(assert (=> b!6481788 (= lt!2386905 lt!2386906)))

(assert (=> b!6481788 (= (++!14427 (++!14427 Nil!65249 (Cons!65249 (h!71697 (_1!36640 lt!2386691)) Nil!65249)) (t!378999 (_1!36640 lt!2386691))) (_1!36640 lt!2386691))))

(assert (=> b!6481788 (= lt!2386906 (lemmaMoveElementToOtherListKeepsConcatEq!2515 Nil!65249 (h!71697 (_1!36640 lt!2386691)) (t!378999 (_1!36640 lt!2386691)) (_1!36640 lt!2386691)))))

(assert (=> b!6481788 (= e!3928713 (findConcatSeparation!2663 (reg!16687 (regOne!33228 r!7292)) lt!2386701 (++!14427 Nil!65249 (Cons!65249 (h!71697 (_1!36640 lt!2386691)) Nil!65249)) (t!378999 (_1!36640 lt!2386691)) (_1!36640 lt!2386691)))))

(declare-fun b!6481789 () Bool)

(assert (=> b!6481789 (= e!3928709 (Some!16248 (tuple2!66675 Nil!65249 (_1!36640 lt!2386691))))))

(declare-fun b!6481790 () Bool)

(assert (=> b!6481790 (= e!3928712 (matchR!8541 lt!2386701 (_1!36640 lt!2386691)))))

(declare-fun b!6481791 () Bool)

(assert (=> b!6481791 (= e!3928710 (not (isDefined!12952 lt!2386904)))))

(assert (= (and d!2033669 res!2661623) b!6481790))

(assert (= (and d!2033669 c!1187389) b!6481789))

(assert (= (and d!2033669 (not c!1187389)) b!6481783))

(assert (= (and b!6481783 c!1187388) b!6481787))

(assert (= (and b!6481783 (not c!1187388)) b!6481788))

(assert (= (and d!2033669 res!2661625) b!6481786))

(assert (= (and b!6481786 res!2661622) b!6481785))

(assert (= (and b!6481785 res!2661624) b!6481784))

(assert (= (and d!2033669 (not res!2661626)) b!6481791))

(declare-fun m!7270078 () Bool)

(assert (=> b!6481788 m!7270078))

(assert (=> b!6481788 m!7270078))

(declare-fun m!7270080 () Bool)

(assert (=> b!6481788 m!7270080))

(declare-fun m!7270082 () Bool)

(assert (=> b!6481788 m!7270082))

(assert (=> b!6481788 m!7270078))

(declare-fun m!7270084 () Bool)

(assert (=> b!6481788 m!7270084))

(declare-fun m!7270086 () Bool)

(assert (=> b!6481786 m!7270086))

(declare-fun m!7270088 () Bool)

(assert (=> b!6481786 m!7270088))

(assert (=> b!6481790 m!7269764))

(declare-fun m!7270090 () Bool)

(assert (=> d!2033669 m!7270090))

(declare-fun m!7270092 () Bool)

(assert (=> d!2033669 m!7270092))

(assert (=> d!2033669 m!7269582))

(assert (=> b!6481784 m!7270086))

(declare-fun m!7270094 () Bool)

(assert (=> b!6481784 m!7270094))

(assert (=> b!6481791 m!7270090))

(assert (=> b!6481785 m!7270086))

(declare-fun m!7270096 () Bool)

(assert (=> b!6481785 m!7270096))

(assert (=> b!6481386 d!2033669))

(declare-fun d!2033671 () Bool)

(assert (=> d!2033671 (= (isDefined!12952 lt!2386690) (not (isEmpty!37441 lt!2386690)))))

(declare-fun bs!1644511 () Bool)

(assert (= bs!1644511 d!2033671))

(declare-fun m!7270098 () Bool)

(assert (=> bs!1644511 m!7270098))

(assert (=> b!6481386 d!2033671))

(declare-fun d!2033673 () Bool)

(assert (=> d!2033673 (= (Exists!3428 lambda!358447) (choose!48052 lambda!358447))))

(declare-fun bs!1644512 () Bool)

(assert (= bs!1644512 d!2033673))

(declare-fun m!7270100 () Bool)

(assert (=> bs!1644512 m!7270100))

(assert (=> b!6481386 d!2033673))

(declare-fun d!2033675 () Bool)

(assert (=> d!2033675 (= (matchR!8541 lt!2386701 (_1!36640 lt!2386691)) (matchRSpec!3459 lt!2386701 (_1!36640 lt!2386691)))))

(declare-fun lt!2386909 () Unit!158763)

(declare-fun choose!48054 (Regex!16358 List!65373) Unit!158763)

(assert (=> d!2033675 (= lt!2386909 (choose!48054 lt!2386701 (_1!36640 lt!2386691)))))

(assert (=> d!2033675 (validRegex!8094 lt!2386701)))

(assert (=> d!2033675 (= (mainMatchTheorem!3459 lt!2386701 (_1!36640 lt!2386691)) lt!2386909)))

(declare-fun bs!1644513 () Bool)

(assert (= bs!1644513 d!2033675))

(assert (=> bs!1644513 m!7269764))

(assert (=> bs!1644513 m!7269702))

(declare-fun m!7270102 () Bool)

(assert (=> bs!1644513 m!7270102))

(assert (=> bs!1644513 m!7269972))

(assert (=> b!6481386 d!2033675))

(declare-fun bs!1644514 () Bool)

(declare-fun d!2033677 () Bool)

(assert (= bs!1644514 (and d!2033677 b!6481774)))

(declare-fun lambda!358515 () Int)

(assert (=> bs!1644514 (not (= lambda!358515 lambda!358513))))

(declare-fun bs!1644515 () Bool)

(assert (= bs!1644515 (and d!2033677 b!6481408)))

(assert (=> bs!1644515 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) (regOne!33228 r!7292)) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358515 lambda!358441))))

(declare-fun bs!1644516 () Bool)

(assert (= bs!1644516 (and d!2033677 d!2033655)))

(assert (=> bs!1644516 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) (regOne!33228 r!7292)) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358515 lambda!358501))))

(declare-fun bs!1644517 () Bool)

(assert (= bs!1644517 (and d!2033677 d!2033633)))

(assert (=> bs!1644517 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) lt!2386701) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358515 lambda!358498))))

(assert (=> bs!1644517 (not (= lambda!358515 lambda!358499))))

(declare-fun bs!1644518 () Bool)

(assert (= bs!1644518 (and d!2033677 d!2033631)))

(assert (=> bs!1644518 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) lt!2386701) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358515 lambda!358493))))

(declare-fun bs!1644519 () Bool)

(assert (= bs!1644519 (and d!2033677 d!2033653)))

(assert (=> bs!1644519 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) (regOne!33228 r!7292)) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358515 lambda!358500))))

(declare-fun bs!1644520 () Bool)

(assert (= bs!1644520 (and d!2033677 b!6481386)))

(assert (=> bs!1644520 (= lambda!358515 lambda!358446)))

(assert (=> bs!1644516 (not (= lambda!358515 lambda!358502))))

(declare-fun bs!1644521 () Bool)

(assert (= bs!1644521 (and d!2033677 b!6481772)))

(assert (=> bs!1644521 (not (= lambda!358515 lambda!358514))))

(declare-fun bs!1644522 () Bool)

(assert (= bs!1644522 (and d!2033677 d!2033663)))

(assert (=> bs!1644522 (not (= lambda!358515 lambda!358508))))

(declare-fun bs!1644523 () Bool)

(assert (= bs!1644523 (and d!2033677 b!6481409)))

(assert (=> bs!1644523 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) lt!2386701) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358515 lambda!358444))))

(assert (=> bs!1644522 (= (= lt!2386701 (Star!16358 (reg!16687 (regOne!33228 r!7292)))) (= lambda!358515 lambda!358507))))

(assert (=> bs!1644523 (not (= lambda!358515 lambda!358445))))

(assert (=> bs!1644520 (not (= lambda!358515 lambda!358448))))

(assert (=> bs!1644520 (not (= lambda!358515 lambda!358447))))

(assert (=> bs!1644515 (not (= lambda!358515 lambda!358442))))

(assert (=> d!2033677 true))

(assert (=> d!2033677 true))

(assert (=> d!2033677 true))

(assert (=> d!2033677 (= (isDefined!12952 (findConcatSeparation!2663 (reg!16687 (regOne!33228 r!7292)) lt!2386701 Nil!65249 (_1!36640 lt!2386691) (_1!36640 lt!2386691))) (Exists!3428 lambda!358515))))

(declare-fun lt!2386910 () Unit!158763)

(assert (=> d!2033677 (= lt!2386910 (choose!48050 (reg!16687 (regOne!33228 r!7292)) lt!2386701 (_1!36640 lt!2386691)))))

(assert (=> d!2033677 (validRegex!8094 (reg!16687 (regOne!33228 r!7292)))))

(assert (=> d!2033677 (= (lemmaFindConcatSeparationEquivalentToExists!2427 (reg!16687 (regOne!33228 r!7292)) lt!2386701 (_1!36640 lt!2386691)) lt!2386910)))

(declare-fun bs!1644524 () Bool)

(assert (= bs!1644524 d!2033677))

(assert (=> bs!1644524 m!7269582))

(assert (=> bs!1644524 m!7269688))

(declare-fun m!7270104 () Bool)

(assert (=> bs!1644524 m!7270104))

(declare-fun m!7270106 () Bool)

(assert (=> bs!1644524 m!7270106))

(declare-fun m!7270108 () Bool)

(assert (=> bs!1644524 m!7270108))

(assert (=> bs!1644524 m!7269688))

(assert (=> b!6481386 d!2033677))

(declare-fun bs!1644525 () Bool)

(declare-fun d!2033679 () Bool)

(assert (= bs!1644525 (and d!2033679 b!6481774)))

(declare-fun lambda!358516 () Int)

(assert (=> bs!1644525 (not (= lambda!358516 lambda!358513))))

(declare-fun bs!1644526 () Bool)

(assert (= bs!1644526 (and d!2033679 b!6481408)))

(assert (=> bs!1644526 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) (regOne!33228 r!7292)) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358516 lambda!358441))))

(declare-fun bs!1644527 () Bool)

(assert (= bs!1644527 (and d!2033679 d!2033677)))

(assert (=> bs!1644527 (= lambda!358516 lambda!358515)))

(declare-fun bs!1644528 () Bool)

(assert (= bs!1644528 (and d!2033679 d!2033655)))

(assert (=> bs!1644528 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) (regOne!33228 r!7292)) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358516 lambda!358501))))

(declare-fun bs!1644529 () Bool)

(assert (= bs!1644529 (and d!2033679 d!2033633)))

(assert (=> bs!1644529 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) lt!2386701) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358516 lambda!358498))))

(assert (=> bs!1644529 (not (= lambda!358516 lambda!358499))))

(declare-fun bs!1644530 () Bool)

(assert (= bs!1644530 (and d!2033679 d!2033631)))

(assert (=> bs!1644530 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) lt!2386701) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358516 lambda!358493))))

(declare-fun bs!1644531 () Bool)

(assert (= bs!1644531 (and d!2033679 d!2033653)))

(assert (=> bs!1644531 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) (regOne!33228 r!7292)) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358516 lambda!358500))))

(declare-fun bs!1644532 () Bool)

(assert (= bs!1644532 (and d!2033679 b!6481386)))

(assert (=> bs!1644532 (= lambda!358516 lambda!358446)))

(assert (=> bs!1644528 (not (= lambda!358516 lambda!358502))))

(declare-fun bs!1644533 () Bool)

(assert (= bs!1644533 (and d!2033679 b!6481772)))

(assert (=> bs!1644533 (not (= lambda!358516 lambda!358514))))

(declare-fun bs!1644534 () Bool)

(assert (= bs!1644534 (and d!2033679 d!2033663)))

(assert (=> bs!1644534 (not (= lambda!358516 lambda!358508))))

(declare-fun bs!1644535 () Bool)

(assert (= bs!1644535 (and d!2033679 b!6481409)))

(assert (=> bs!1644535 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) lt!2386701) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358516 lambda!358444))))

(assert (=> bs!1644534 (= (= lt!2386701 (Star!16358 (reg!16687 (regOne!33228 r!7292)))) (= lambda!358516 lambda!358507))))

(assert (=> bs!1644535 (not (= lambda!358516 lambda!358445))))

(assert (=> bs!1644532 (not (= lambda!358516 lambda!358448))))

(assert (=> bs!1644532 (not (= lambda!358516 lambda!358447))))

(assert (=> bs!1644526 (not (= lambda!358516 lambda!358442))))

(assert (=> d!2033679 true))

(assert (=> d!2033679 true))

(assert (=> d!2033679 true))

(declare-fun lambda!358517 () Int)

(assert (=> bs!1644525 (not (= lambda!358517 lambda!358513))))

(assert (=> bs!1644526 (not (= lambda!358517 lambda!358441))))

(assert (=> bs!1644527 (not (= lambda!358517 lambda!358515))))

(assert (=> bs!1644528 (not (= lambda!358517 lambda!358501))))

(assert (=> bs!1644529 (not (= lambda!358517 lambda!358498))))

(assert (=> bs!1644529 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) lt!2386701) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358517 lambda!358499))))

(assert (=> bs!1644530 (not (= lambda!358517 lambda!358493))))

(assert (=> bs!1644531 (not (= lambda!358517 lambda!358500))))

(assert (=> bs!1644532 (not (= lambda!358517 lambda!358446))))

(assert (=> bs!1644528 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) (regOne!33228 r!7292)) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358517 lambda!358502))))

(assert (=> bs!1644533 (= (and (= (reg!16687 (regOne!33228 r!7292)) (regOne!33228 lt!2386701)) (= lt!2386701 (regTwo!33228 lt!2386701))) (= lambda!358517 lambda!358514))))

(declare-fun bs!1644536 () Bool)

(assert (= bs!1644536 d!2033679))

(assert (=> bs!1644536 (not (= lambda!358517 lambda!358516))))

(assert (=> bs!1644534 (not (= lambda!358517 lambda!358508))))

(assert (=> bs!1644535 (not (= lambda!358517 lambda!358444))))

(assert (=> bs!1644534 (not (= lambda!358517 lambda!358507))))

(assert (=> bs!1644535 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) lt!2386701) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358517 lambda!358445))))

(assert (=> bs!1644532 (= lambda!358517 lambda!358448)))

(assert (=> bs!1644532 (not (= lambda!358517 lambda!358447))))

(assert (=> bs!1644526 (= (and (= (_1!36640 lt!2386691) s!2326) (= (reg!16687 (regOne!33228 r!7292)) (regOne!33228 r!7292)) (= lt!2386701 (regTwo!33228 r!7292))) (= lambda!358517 lambda!358442))))

(assert (=> d!2033679 true))

(assert (=> d!2033679 true))

(assert (=> d!2033679 true))

(assert (=> d!2033679 (= (Exists!3428 lambda!358516) (Exists!3428 lambda!358517))))

(declare-fun lt!2386911 () Unit!158763)

(assert (=> d!2033679 (= lt!2386911 (choose!48051 (reg!16687 (regOne!33228 r!7292)) lt!2386701 (_1!36640 lt!2386691)))))

(assert (=> d!2033679 (validRegex!8094 (reg!16687 (regOne!33228 r!7292)))))

(assert (=> d!2033679 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1965 (reg!16687 (regOne!33228 r!7292)) lt!2386701 (_1!36640 lt!2386691)) lt!2386911)))

(declare-fun m!7270110 () Bool)

(assert (=> bs!1644536 m!7270110))

(declare-fun m!7270112 () Bool)

(assert (=> bs!1644536 m!7270112))

(declare-fun m!7270114 () Bool)

(assert (=> bs!1644536 m!7270114))

(assert (=> bs!1644536 m!7269582))

(assert (=> b!6481386 d!2033679))

(declare-fun d!2033681 () Bool)

(assert (=> d!2033681 (= (Exists!3428 lambda!358446) (choose!48052 lambda!358446))))

(declare-fun bs!1644537 () Bool)

(assert (= bs!1644537 d!2033681))

(declare-fun m!7270116 () Bool)

(assert (=> bs!1644537 m!7270116))

(assert (=> b!6481386 d!2033681))

(declare-fun d!2033683 () Bool)

(assert (=> d!2033683 (= (get!22621 lt!2386690) (v!52427 lt!2386690))))

(assert (=> b!6481386 d!2033683))

(declare-fun b!6481795 () Bool)

(declare-fun e!3928715 () Bool)

(declare-fun lt!2386912 () List!65373)

(assert (=> b!6481795 (= e!3928715 (or (not (= (_2!36640 lt!2386648) Nil!65249)) (= lt!2386912 (_1!36640 lt!2386648))))))

(declare-fun b!6481792 () Bool)

(declare-fun e!3928714 () List!65373)

(assert (=> b!6481792 (= e!3928714 (_2!36640 lt!2386648))))

(declare-fun d!2033685 () Bool)

(assert (=> d!2033685 e!3928715))

(declare-fun res!2661627 () Bool)

(assert (=> d!2033685 (=> (not res!2661627) (not e!3928715))))

(assert (=> d!2033685 (= res!2661627 (= (content!12418 lt!2386912) (set.union (content!12418 (_1!36640 lt!2386648)) (content!12418 (_2!36640 lt!2386648)))))))

(assert (=> d!2033685 (= lt!2386912 e!3928714)))

(declare-fun c!1187390 () Bool)

(assert (=> d!2033685 (= c!1187390 (is-Nil!65249 (_1!36640 lt!2386648)))))

(assert (=> d!2033685 (= (++!14427 (_1!36640 lt!2386648) (_2!36640 lt!2386648)) lt!2386912)))

(declare-fun b!6481794 () Bool)

(declare-fun res!2661628 () Bool)

(assert (=> b!6481794 (=> (not res!2661628) (not e!3928715))))

(assert (=> b!6481794 (= res!2661628 (= (size!40411 lt!2386912) (+ (size!40411 (_1!36640 lt!2386648)) (size!40411 (_2!36640 lt!2386648)))))))

(declare-fun b!6481793 () Bool)

(assert (=> b!6481793 (= e!3928714 (Cons!65249 (h!71697 (_1!36640 lt!2386648)) (++!14427 (t!378999 (_1!36640 lt!2386648)) (_2!36640 lt!2386648))))))

(assert (= (and d!2033685 c!1187390) b!6481792))

(assert (= (and d!2033685 (not c!1187390)) b!6481793))

(assert (= (and d!2033685 res!2661627) b!6481794))

(assert (= (and b!6481794 res!2661628) b!6481795))

(declare-fun m!7270118 () Bool)

(assert (=> d!2033685 m!7270118))

(declare-fun m!7270120 () Bool)

(assert (=> d!2033685 m!7270120))

(declare-fun m!7270122 () Bool)

(assert (=> d!2033685 m!7270122))

(declare-fun m!7270124 () Bool)

(assert (=> b!6481794 m!7270124))

(declare-fun m!7270126 () Bool)

(assert (=> b!6481794 m!7270126))

(declare-fun m!7270128 () Bool)

(assert (=> b!6481794 m!7270128))

(declare-fun m!7270130 () Bool)

(assert (=> b!6481793 m!7270130))

(assert (=> b!6481386 d!2033685))

(declare-fun bs!1644538 () Bool)

(declare-fun b!6481798 () Bool)

(assert (= bs!1644538 (and b!6481798 b!6481774)))

(declare-fun lambda!358518 () Int)

(assert (=> bs!1644538 (= (and (= s!2326 (_1!36640 lt!2386691)) (= (reg!16687 r!7292) (reg!16687 lt!2386701)) (= r!7292 lt!2386701)) (= lambda!358518 lambda!358513))))

(declare-fun bs!1644539 () Bool)

(assert (= bs!1644539 (and b!6481798 b!6481408)))

(assert (=> bs!1644539 (not (= lambda!358518 lambda!358441))))

(declare-fun bs!1644540 () Bool)

(assert (= bs!1644540 (and b!6481798 d!2033677)))

(assert (=> bs!1644540 (not (= lambda!358518 lambda!358515))))

(declare-fun bs!1644541 () Bool)

(assert (= bs!1644541 (and b!6481798 d!2033655)))

(assert (=> bs!1644541 (not (= lambda!358518 lambda!358501))))

(declare-fun bs!1644542 () Bool)

(assert (= bs!1644542 (and b!6481798 d!2033633)))

(assert (=> bs!1644542 (not (= lambda!358518 lambda!358498))))

(assert (=> bs!1644542 (not (= lambda!358518 lambda!358499))))

(declare-fun bs!1644543 () Bool)

(assert (= bs!1644543 (and b!6481798 d!2033631)))

(assert (=> bs!1644543 (not (= lambda!358518 lambda!358493))))

(declare-fun bs!1644544 () Bool)

(assert (= bs!1644544 (and b!6481798 d!2033653)))

(assert (=> bs!1644544 (not (= lambda!358518 lambda!358500))))

(declare-fun bs!1644545 () Bool)

(assert (= bs!1644545 (and b!6481798 b!6481386)))

(assert (=> bs!1644545 (not (= lambda!358518 lambda!358446))))

(assert (=> bs!1644541 (not (= lambda!358518 lambda!358502))))

(declare-fun bs!1644546 () Bool)

(assert (= bs!1644546 (and b!6481798 b!6481772)))

(assert (=> bs!1644546 (not (= lambda!358518 lambda!358514))))

(declare-fun bs!1644547 () Bool)

(assert (= bs!1644547 (and b!6481798 d!2033679)))

(assert (=> bs!1644547 (not (= lambda!358518 lambda!358516))))

(declare-fun bs!1644548 () Bool)

(assert (= bs!1644548 (and b!6481798 b!6481409)))

(assert (=> bs!1644548 (not (= lambda!358518 lambda!358444))))

(declare-fun bs!1644549 () Bool)

(assert (= bs!1644549 (and b!6481798 d!2033663)))

(assert (=> bs!1644549 (not (= lambda!358518 lambda!358507))))

(assert (=> bs!1644548 (not (= lambda!358518 lambda!358445))))

(assert (=> bs!1644545 (not (= lambda!358518 lambda!358448))))

(assert (=> bs!1644545 (= (and (= s!2326 (_1!36640 lt!2386691)) (= (reg!16687 r!7292) (reg!16687 (regOne!33228 r!7292))) (= r!7292 lt!2386701)) (= lambda!358518 lambda!358447))))

(assert (=> bs!1644539 (not (= lambda!358518 lambda!358442))))

(assert (=> bs!1644549 (= (and (= s!2326 (_1!36640 lt!2386691)) (= (reg!16687 r!7292) (reg!16687 (regOne!33228 r!7292))) (= r!7292 (Star!16358 (reg!16687 (regOne!33228 r!7292))))) (= lambda!358518 lambda!358508))))

(assert (=> bs!1644547 (not (= lambda!358518 lambda!358517))))

(assert (=> b!6481798 true))

(assert (=> b!6481798 true))

(declare-fun bs!1644550 () Bool)

(declare-fun b!6481796 () Bool)

(assert (= bs!1644550 (and b!6481796 b!6481774)))

(declare-fun lambda!358519 () Int)

(assert (=> bs!1644550 (not (= lambda!358519 lambda!358513))))

(declare-fun bs!1644551 () Bool)

(assert (= bs!1644551 (and b!6481796 b!6481408)))

(assert (=> bs!1644551 (not (= lambda!358519 lambda!358441))))

(declare-fun bs!1644552 () Bool)

(assert (= bs!1644552 (and b!6481796 d!2033677)))

(assert (=> bs!1644552 (not (= lambda!358519 lambda!358515))))

(declare-fun bs!1644553 () Bool)

(assert (= bs!1644553 (and b!6481796 d!2033655)))

(assert (=> bs!1644553 (not (= lambda!358519 lambda!358501))))

(declare-fun bs!1644554 () Bool)

(assert (= bs!1644554 (and b!6481796 d!2033633)))

(assert (=> bs!1644554 (= (= (regOne!33228 r!7292) lt!2386701) (= lambda!358519 lambda!358499))))

(declare-fun bs!1644555 () Bool)

(assert (= bs!1644555 (and b!6481796 d!2033631)))

(assert (=> bs!1644555 (not (= lambda!358519 lambda!358493))))

(declare-fun bs!1644556 () Bool)

(assert (= bs!1644556 (and b!6481796 d!2033653)))

(assert (=> bs!1644556 (not (= lambda!358519 lambda!358500))))

(declare-fun bs!1644557 () Bool)

(assert (= bs!1644557 (and b!6481796 b!6481386)))

(assert (=> bs!1644557 (not (= lambda!358519 lambda!358446))))

(assert (=> bs!1644553 (= lambda!358519 lambda!358502)))

(declare-fun bs!1644558 () Bool)

(assert (= bs!1644558 (and b!6481796 b!6481772)))

(assert (=> bs!1644558 (= (and (= s!2326 (_1!36640 lt!2386691)) (= (regOne!33228 r!7292) (regOne!33228 lt!2386701)) (= (regTwo!33228 r!7292) (regTwo!33228 lt!2386701))) (= lambda!358519 lambda!358514))))

(declare-fun bs!1644559 () Bool)

(assert (= bs!1644559 (and b!6481796 d!2033679)))

(assert (=> bs!1644559 (not (= lambda!358519 lambda!358516))))

(declare-fun bs!1644560 () Bool)

(assert (= bs!1644560 (and b!6481796 b!6481409)))

(assert (=> bs!1644560 (not (= lambda!358519 lambda!358444))))

(declare-fun bs!1644561 () Bool)

(assert (= bs!1644561 (and b!6481796 d!2033663)))

(assert (=> bs!1644561 (not (= lambda!358519 lambda!358507))))

(assert (=> bs!1644560 (= (= (regOne!33228 r!7292) lt!2386701) (= lambda!358519 lambda!358445))))

(assert (=> bs!1644557 (= (and (= s!2326 (_1!36640 lt!2386691)) (= (regOne!33228 r!7292) (reg!16687 (regOne!33228 r!7292))) (= (regTwo!33228 r!7292) lt!2386701)) (= lambda!358519 lambda!358448))))

(assert (=> bs!1644554 (not (= lambda!358519 lambda!358498))))

(declare-fun bs!1644562 () Bool)

(assert (= bs!1644562 (and b!6481796 b!6481798)))

(assert (=> bs!1644562 (not (= lambda!358519 lambda!358518))))

(assert (=> bs!1644557 (not (= lambda!358519 lambda!358447))))

(assert (=> bs!1644551 (= lambda!358519 lambda!358442)))

(assert (=> bs!1644561 (not (= lambda!358519 lambda!358508))))

(assert (=> bs!1644559 (= (and (= s!2326 (_1!36640 lt!2386691)) (= (regOne!33228 r!7292) (reg!16687 (regOne!33228 r!7292))) (= (regTwo!33228 r!7292) lt!2386701)) (= lambda!358519 lambda!358517))))

(assert (=> b!6481796 true))

(assert (=> b!6481796 true))

(declare-fun e!3928716 () Bool)

(declare-fun call!561010 () Bool)

(assert (=> b!6481796 (= e!3928716 call!561010)))

(declare-fun b!6481797 () Bool)

(declare-fun c!1187393 () Bool)

(assert (=> b!6481797 (= c!1187393 (is-ElementMatch!16358 r!7292))))

(declare-fun e!3928720 () Bool)

(declare-fun e!3928718 () Bool)

(assert (=> b!6481797 (= e!3928720 e!3928718)))

(declare-fun c!1187394 () Bool)

(declare-fun bm!561004 () Bool)

(assert (=> bm!561004 (= call!561010 (Exists!3428 (ite c!1187394 lambda!358518 lambda!358519)))))

(declare-fun e!3928719 () Bool)

(assert (=> b!6481798 (= e!3928719 call!561010)))

(declare-fun bm!561005 () Bool)

(declare-fun call!561009 () Bool)

(assert (=> bm!561005 (= call!561009 (isEmpty!37436 s!2326))))

(declare-fun b!6481799 () Bool)

(declare-fun e!3928722 () Bool)

(assert (=> b!6481799 (= e!3928722 (matchRSpec!3459 (regTwo!33229 r!7292) s!2326))))

(declare-fun d!2033687 () Bool)

(declare-fun c!1187392 () Bool)

(assert (=> d!2033687 (= c!1187392 (is-EmptyExpr!16358 r!7292))))

(declare-fun e!3928721 () Bool)

(assert (=> d!2033687 (= (matchRSpec!3459 r!7292 s!2326) e!3928721)))

(declare-fun b!6481800 () Bool)

(declare-fun e!3928717 () Bool)

(assert (=> b!6481800 (= e!3928717 e!3928716)))

(assert (=> b!6481800 (= c!1187394 (is-Star!16358 r!7292))))

(declare-fun b!6481801 () Bool)

(assert (=> b!6481801 (= e!3928721 e!3928720)))

(declare-fun res!2661629 () Bool)

(assert (=> b!6481801 (= res!2661629 (not (is-EmptyLang!16358 r!7292)))))

(assert (=> b!6481801 (=> (not res!2661629) (not e!3928720))))

(declare-fun b!6481802 () Bool)

(assert (=> b!6481802 (= e!3928721 call!561009)))

(declare-fun b!6481803 () Bool)

(declare-fun res!2661630 () Bool)

(assert (=> b!6481803 (=> res!2661630 e!3928719)))

(assert (=> b!6481803 (= res!2661630 call!561009)))

(assert (=> b!6481803 (= e!3928716 e!3928719)))

(declare-fun b!6481804 () Bool)

(assert (=> b!6481804 (= e!3928717 e!3928722)))

(declare-fun res!2661631 () Bool)

(assert (=> b!6481804 (= res!2661631 (matchRSpec!3459 (regOne!33229 r!7292) s!2326))))

(assert (=> b!6481804 (=> res!2661631 e!3928722)))

(declare-fun b!6481805 () Bool)

(assert (=> b!6481805 (= e!3928718 (= s!2326 (Cons!65249 (c!1187340 r!7292) Nil!65249)))))

(declare-fun b!6481806 () Bool)

(declare-fun c!1187391 () Bool)

(assert (=> b!6481806 (= c!1187391 (is-Union!16358 r!7292))))

(assert (=> b!6481806 (= e!3928718 e!3928717)))

(assert (= (and d!2033687 c!1187392) b!6481802))

(assert (= (and d!2033687 (not c!1187392)) b!6481801))

(assert (= (and b!6481801 res!2661629) b!6481797))

(assert (= (and b!6481797 c!1187393) b!6481805))

(assert (= (and b!6481797 (not c!1187393)) b!6481806))

(assert (= (and b!6481806 c!1187391) b!6481804))

(assert (= (and b!6481806 (not c!1187391)) b!6481800))

(assert (= (and b!6481804 (not res!2661631)) b!6481799))

(assert (= (and b!6481800 c!1187394) b!6481803))

(assert (= (and b!6481800 (not c!1187394)) b!6481796))

(assert (= (and b!6481803 (not res!2661630)) b!6481798))

(assert (= (or b!6481798 b!6481796) bm!561004))

(assert (= (or b!6481802 b!6481803) bm!561005))

(declare-fun m!7270132 () Bool)

(assert (=> bm!561004 m!7270132))

(declare-fun m!7270134 () Bool)

(assert (=> bm!561005 m!7270134))

(declare-fun m!7270136 () Bool)

(assert (=> b!6481799 m!7270136))

(declare-fun m!7270138 () Bool)

(assert (=> b!6481804 m!7270138))

(assert (=> b!6481412 d!2033687))

(declare-fun b!6481807 () Bool)

(declare-fun res!2661635 () Bool)

(declare-fun e!3928724 () Bool)

(assert (=> b!6481807 (=> (not res!2661635) (not e!3928724))))

(assert (=> b!6481807 (= res!2661635 (isEmpty!37436 (tail!12280 s!2326)))))

(declare-fun b!6481808 () Bool)

(assert (=> b!6481808 (= e!3928724 (= (head!13195 s!2326) (c!1187340 r!7292)))))

(declare-fun b!6481809 () Bool)

(declare-fun res!2661637 () Bool)

(assert (=> b!6481809 (=> (not res!2661637) (not e!3928724))))

(declare-fun call!561011 () Bool)

(assert (=> b!6481809 (= res!2661637 (not call!561011))))

(declare-fun b!6481811 () Bool)

(declare-fun e!3928728 () Bool)

(declare-fun lt!2386913 () Bool)

(assert (=> b!6481811 (= e!3928728 (not lt!2386913))))

(declare-fun b!6481812 () Bool)

(declare-fun e!3928729 () Bool)

(declare-fun e!3928726 () Bool)

(assert (=> b!6481812 (= e!3928729 e!3928726)))

(declare-fun res!2661636 () Bool)

(assert (=> b!6481812 (=> res!2661636 e!3928726)))

(assert (=> b!6481812 (= res!2661636 call!561011)))

(declare-fun b!6481813 () Bool)

(declare-fun e!3928727 () Bool)

(assert (=> b!6481813 (= e!3928727 (nullable!6351 r!7292))))

(declare-fun b!6481810 () Bool)

(declare-fun e!3928725 () Bool)

(assert (=> b!6481810 (= e!3928725 (= lt!2386913 call!561011))))

(declare-fun d!2033689 () Bool)

(assert (=> d!2033689 e!3928725))

(declare-fun c!1187396 () Bool)

(assert (=> d!2033689 (= c!1187396 (is-EmptyExpr!16358 r!7292))))

(assert (=> d!2033689 (= lt!2386913 e!3928727)))

(declare-fun c!1187397 () Bool)

(assert (=> d!2033689 (= c!1187397 (isEmpty!37436 s!2326))))

(assert (=> d!2033689 (validRegex!8094 r!7292)))

(assert (=> d!2033689 (= (matchR!8541 r!7292 s!2326) lt!2386913)))

(declare-fun b!6481814 () Bool)

(assert (=> b!6481814 (= e!3928726 (not (= (head!13195 s!2326) (c!1187340 r!7292))))))

(declare-fun b!6481815 () Bool)

(declare-fun e!3928723 () Bool)

(assert (=> b!6481815 (= e!3928723 e!3928729)))

(declare-fun res!2661639 () Bool)

(assert (=> b!6481815 (=> (not res!2661639) (not e!3928729))))

(assert (=> b!6481815 (= res!2661639 (not lt!2386913))))

(declare-fun b!6481816 () Bool)

(declare-fun res!2661632 () Bool)

(assert (=> b!6481816 (=> res!2661632 e!3928726)))

(assert (=> b!6481816 (= res!2661632 (not (isEmpty!37436 (tail!12280 s!2326))))))

(declare-fun b!6481817 () Bool)

(assert (=> b!6481817 (= e!3928725 e!3928728)))

(declare-fun c!1187395 () Bool)

(assert (=> b!6481817 (= c!1187395 (is-EmptyLang!16358 r!7292))))

(declare-fun bm!561006 () Bool)

(assert (=> bm!561006 (= call!561011 (isEmpty!37436 s!2326))))

(declare-fun b!6481818 () Bool)

(declare-fun res!2661633 () Bool)

(assert (=> b!6481818 (=> res!2661633 e!3928723)))

(assert (=> b!6481818 (= res!2661633 (not (is-ElementMatch!16358 r!7292)))))

(assert (=> b!6481818 (= e!3928728 e!3928723)))

(declare-fun b!6481819 () Bool)

(assert (=> b!6481819 (= e!3928727 (matchR!8541 (derivativeStep!5056 r!7292 (head!13195 s!2326)) (tail!12280 s!2326)))))

(declare-fun b!6481820 () Bool)

(declare-fun res!2661634 () Bool)

(assert (=> b!6481820 (=> res!2661634 e!3928723)))

(assert (=> b!6481820 (= res!2661634 e!3928724)))

(declare-fun res!2661638 () Bool)

(assert (=> b!6481820 (=> (not res!2661638) (not e!3928724))))

(assert (=> b!6481820 (= res!2661638 lt!2386913)))

(assert (= (and d!2033689 c!1187397) b!6481813))

(assert (= (and d!2033689 (not c!1187397)) b!6481819))

(assert (= (and d!2033689 c!1187396) b!6481810))

(assert (= (and d!2033689 (not c!1187396)) b!6481817))

(assert (= (and b!6481817 c!1187395) b!6481811))

(assert (= (and b!6481817 (not c!1187395)) b!6481818))

(assert (= (and b!6481818 (not res!2661633)) b!6481820))

(assert (= (and b!6481820 res!2661638) b!6481809))

(assert (= (and b!6481809 res!2661637) b!6481807))

(assert (= (and b!6481807 res!2661635) b!6481808))

(assert (= (and b!6481820 (not res!2661634)) b!6481815))

(assert (= (and b!6481815 res!2661639) b!6481812))

(assert (= (and b!6481812 (not res!2661636)) b!6481816))

(assert (= (and b!6481816 (not res!2661632)) b!6481814))

(assert (= (or b!6481810 b!6481809 b!6481812) bm!561006))

(declare-fun m!7270140 () Bool)

(assert (=> b!6481808 m!7270140))

(declare-fun m!7270142 () Bool)

(assert (=> b!6481807 m!7270142))

(assert (=> b!6481807 m!7270142))

(declare-fun m!7270144 () Bool)

(assert (=> b!6481807 m!7270144))

(assert (=> bm!561006 m!7270134))

(assert (=> b!6481814 m!7270140))

(assert (=> b!6481816 m!7270142))

(assert (=> b!6481816 m!7270142))

(assert (=> b!6481816 m!7270144))

(assert (=> b!6481819 m!7270140))

(assert (=> b!6481819 m!7270140))

(declare-fun m!7270146 () Bool)

(assert (=> b!6481819 m!7270146))

(assert (=> b!6481819 m!7270142))

(assert (=> b!6481819 m!7270146))

(assert (=> b!6481819 m!7270142))

(declare-fun m!7270148 () Bool)

(assert (=> b!6481819 m!7270148))

(assert (=> d!2033689 m!7270134))

(assert (=> d!2033689 m!7269682))

(declare-fun m!7270150 () Bool)

(assert (=> b!6481813 m!7270150))

(assert (=> b!6481412 d!2033689))

(declare-fun d!2033691 () Bool)

(assert (=> d!2033691 (= (matchR!8541 r!7292 s!2326) (matchRSpec!3459 r!7292 s!2326))))

(declare-fun lt!2386914 () Unit!158763)

(assert (=> d!2033691 (= lt!2386914 (choose!48054 r!7292 s!2326))))

(assert (=> d!2033691 (validRegex!8094 r!7292)))

(assert (=> d!2033691 (= (mainMatchTheorem!3459 r!7292 s!2326) lt!2386914)))

(declare-fun bs!1644563 () Bool)

(assert (= bs!1644563 d!2033691))

(assert (=> bs!1644563 m!7269662))

(assert (=> bs!1644563 m!7269660))

(declare-fun m!7270152 () Bool)

(assert (=> bs!1644563 m!7270152))

(assert (=> bs!1644563 m!7269682))

(assert (=> b!6481412 d!2033691))

(declare-fun b!6481821 () Bool)

(declare-fun res!2661643 () Bool)

(declare-fun e!3928731 () Bool)

(assert (=> b!6481821 (=> (not res!2661643) (not e!3928731))))

(assert (=> b!6481821 (= res!2661643 (isEmpty!37436 (tail!12280 (_1!36640 lt!2386648))))))

(declare-fun b!6481822 () Bool)

(assert (=> b!6481822 (= e!3928731 (= (head!13195 (_1!36640 lt!2386648)) (c!1187340 (reg!16687 (regOne!33228 r!7292)))))))

(declare-fun b!6481823 () Bool)

(declare-fun res!2661645 () Bool)

(assert (=> b!6481823 (=> (not res!2661645) (not e!3928731))))

(declare-fun call!561012 () Bool)

(assert (=> b!6481823 (= res!2661645 (not call!561012))))

(declare-fun b!6481825 () Bool)

(declare-fun e!3928735 () Bool)

(declare-fun lt!2386915 () Bool)

(assert (=> b!6481825 (= e!3928735 (not lt!2386915))))

(declare-fun b!6481826 () Bool)

(declare-fun e!3928736 () Bool)

(declare-fun e!3928733 () Bool)

(assert (=> b!6481826 (= e!3928736 e!3928733)))

(declare-fun res!2661644 () Bool)

(assert (=> b!6481826 (=> res!2661644 e!3928733)))

(assert (=> b!6481826 (= res!2661644 call!561012)))

(declare-fun b!6481827 () Bool)

(declare-fun e!3928734 () Bool)

(assert (=> b!6481827 (= e!3928734 (nullable!6351 (reg!16687 (regOne!33228 r!7292))))))

(declare-fun b!6481824 () Bool)

(declare-fun e!3928732 () Bool)

(assert (=> b!6481824 (= e!3928732 (= lt!2386915 call!561012))))

(declare-fun d!2033693 () Bool)

(assert (=> d!2033693 e!3928732))

(declare-fun c!1187399 () Bool)

(assert (=> d!2033693 (= c!1187399 (is-EmptyExpr!16358 (reg!16687 (regOne!33228 r!7292))))))

(assert (=> d!2033693 (= lt!2386915 e!3928734)))

(declare-fun c!1187400 () Bool)

(assert (=> d!2033693 (= c!1187400 (isEmpty!37436 (_1!36640 lt!2386648)))))

(assert (=> d!2033693 (validRegex!8094 (reg!16687 (regOne!33228 r!7292)))))

(assert (=> d!2033693 (= (matchR!8541 (reg!16687 (regOne!33228 r!7292)) (_1!36640 lt!2386648)) lt!2386915)))

(declare-fun b!6481828 () Bool)

(assert (=> b!6481828 (= e!3928733 (not (= (head!13195 (_1!36640 lt!2386648)) (c!1187340 (reg!16687 (regOne!33228 r!7292))))))))

(declare-fun b!6481829 () Bool)

(declare-fun e!3928730 () Bool)

(assert (=> b!6481829 (= e!3928730 e!3928736)))

(declare-fun res!2661647 () Bool)

(assert (=> b!6481829 (=> (not res!2661647) (not e!3928736))))

(assert (=> b!6481829 (= res!2661647 (not lt!2386915))))

(declare-fun b!6481830 () Bool)

(declare-fun res!2661640 () Bool)

(assert (=> b!6481830 (=> res!2661640 e!3928733)))

(assert (=> b!6481830 (= res!2661640 (not (isEmpty!37436 (tail!12280 (_1!36640 lt!2386648)))))))

(declare-fun b!6481831 () Bool)

(assert (=> b!6481831 (= e!3928732 e!3928735)))

(declare-fun c!1187398 () Bool)

(assert (=> b!6481831 (= c!1187398 (is-EmptyLang!16358 (reg!16687 (regOne!33228 r!7292))))))

(declare-fun bm!561007 () Bool)

(assert (=> bm!561007 (= call!561012 (isEmpty!37436 (_1!36640 lt!2386648)))))

(declare-fun b!6481832 () Bool)

(declare-fun res!2661641 () Bool)

(assert (=> b!6481832 (=> res!2661641 e!3928730)))

(assert (=> b!6481832 (= res!2661641 (not (is-ElementMatch!16358 (reg!16687 (regOne!33228 r!7292)))))))

(assert (=> b!6481832 (= e!3928735 e!3928730)))

(declare-fun b!6481833 () Bool)

(assert (=> b!6481833 (= e!3928734 (matchR!8541 (derivativeStep!5056 (reg!16687 (regOne!33228 r!7292)) (head!13195 (_1!36640 lt!2386648))) (tail!12280 (_1!36640 lt!2386648))))))

(declare-fun b!6481834 () Bool)

(declare-fun res!2661642 () Bool)

(assert (=> b!6481834 (=> res!2661642 e!3928730)))

(assert (=> b!6481834 (= res!2661642 e!3928731)))

(declare-fun res!2661646 () Bool)

(assert (=> b!6481834 (=> (not res!2661646) (not e!3928731))))

(assert (=> b!6481834 (= res!2661646 lt!2386915)))

(assert (= (and d!2033693 c!1187400) b!6481827))

(assert (= (and d!2033693 (not c!1187400)) b!6481833))

(assert (= (and d!2033693 c!1187399) b!6481824))

(assert (= (and d!2033693 (not c!1187399)) b!6481831))

(assert (= (and b!6481831 c!1187398) b!6481825))

(assert (= (and b!6481831 (not c!1187398)) b!6481832))

(assert (= (and b!6481832 (not res!2661641)) b!6481834))

(assert (= (and b!6481834 res!2661646) b!6481823))

(assert (= (and b!6481823 res!2661645) b!6481821))

(assert (= (and b!6481821 res!2661643) b!6481822))

(assert (= (and b!6481834 (not res!2661642)) b!6481829))

(assert (= (and b!6481829 res!2661647) b!6481826))

(assert (= (and b!6481826 (not res!2661644)) b!6481830))

(assert (= (and b!6481830 (not res!2661640)) b!6481828))

(assert (= (or b!6481824 b!6481823 b!6481826) bm!561007))

(declare-fun m!7270154 () Bool)

(assert (=> b!6481822 m!7270154))

(declare-fun m!7270156 () Bool)

(assert (=> b!6481821 m!7270156))

(assert (=> b!6481821 m!7270156))

(declare-fun m!7270158 () Bool)

(assert (=> b!6481821 m!7270158))

(declare-fun m!7270160 () Bool)

(assert (=> bm!561007 m!7270160))

(assert (=> b!6481828 m!7270154))

(assert (=> b!6481830 m!7270156))

(assert (=> b!6481830 m!7270156))

(assert (=> b!6481830 m!7270158))

(assert (=> b!6481833 m!7270154))

(assert (=> b!6481833 m!7270154))

(declare-fun m!7270162 () Bool)

(assert (=> b!6481833 m!7270162))

(assert (=> b!6481833 m!7270156))

(assert (=> b!6481833 m!7270162))

(assert (=> b!6481833 m!7270156))

(declare-fun m!7270164 () Bool)

(assert (=> b!6481833 m!7270164))

(assert (=> d!2033693 m!7270160))

(assert (=> d!2033693 m!7269582))

(declare-fun m!7270166 () Bool)

(assert (=> b!6481827 m!7270166))

(assert (=> b!6481391 d!2033693))

(declare-fun d!2033695 () Bool)

(assert (=> d!2033695 (= (isEmpty!37435 (t!379001 zl!343)) (is-Nil!65251 (t!379001 zl!343)))))

(assert (=> b!6481390 d!2033695))

(declare-fun bs!1644564 () Bool)

(declare-fun d!2033697 () Bool)

(assert (= bs!1644564 (and d!2033697 b!6481378)))

(declare-fun lambda!358522 () Int)

(assert (=> bs!1644564 (= lambda!358522 lambda!358449)))

(declare-fun b!6481867 () Bool)

(declare-fun e!3928757 () Regex!16358)

(declare-fun e!3928760 () Regex!16358)

(assert (=> b!6481867 (= e!3928757 e!3928760)))

(declare-fun c!1187415 () Bool)

(assert (=> b!6481867 (= c!1187415 (is-Cons!65250 (exprs!6242 (h!71699 zl!343))))))

(declare-fun b!6481868 () Bool)

(declare-fun e!3928755 () Bool)

(declare-fun lt!2386921 () Regex!16358)

(declare-fun head!13196 (List!65374) Regex!16358)

(assert (=> b!6481868 (= e!3928755 (= lt!2386921 (head!13196 (exprs!6242 (h!71699 zl!343)))))))

(declare-fun b!6481869 () Bool)

(declare-fun e!3928759 () Bool)

(declare-fun isEmptyExpr!1752 (Regex!16358) Bool)

(assert (=> b!6481869 (= e!3928759 (isEmptyExpr!1752 lt!2386921))))

(declare-fun b!6481870 () Bool)

(declare-fun isConcat!1275 (Regex!16358) Bool)

(assert (=> b!6481870 (= e!3928755 (isConcat!1275 lt!2386921))))

(declare-fun b!6481871 () Bool)

(declare-fun e!3928756 () Bool)

(assert (=> b!6481871 (= e!3928756 (isEmpty!37437 (t!379000 (exprs!6242 (h!71699 zl!343)))))))

(declare-fun b!6481872 () Bool)

(assert (=> b!6481872 (= e!3928760 EmptyExpr!16358)))

(declare-fun b!6481873 () Bool)

(declare-fun e!3928758 () Bool)

(assert (=> b!6481873 (= e!3928758 e!3928759)))

(declare-fun c!1187413 () Bool)

(assert (=> b!6481873 (= c!1187413 (isEmpty!37437 (exprs!6242 (h!71699 zl!343))))))

(assert (=> d!2033697 e!3928758))

(declare-fun res!2661659 () Bool)

(assert (=> d!2033697 (=> (not res!2661659) (not e!3928758))))

(assert (=> d!2033697 (= res!2661659 (validRegex!8094 lt!2386921))))

(assert (=> d!2033697 (= lt!2386921 e!3928757)))

(declare-fun c!1187414 () Bool)

(assert (=> d!2033697 (= c!1187414 e!3928756)))

(declare-fun res!2661658 () Bool)

(assert (=> d!2033697 (=> (not res!2661658) (not e!3928756))))

(assert (=> d!2033697 (= res!2661658 (is-Cons!65250 (exprs!6242 (h!71699 zl!343))))))

(declare-fun forall!15543 (List!65374 Int) Bool)

(assert (=> d!2033697 (forall!15543 (exprs!6242 (h!71699 zl!343)) lambda!358522)))

(assert (=> d!2033697 (= (generalisedConcat!1955 (exprs!6242 (h!71699 zl!343))) lt!2386921)))

(declare-fun b!6481874 () Bool)

(assert (=> b!6481874 (= e!3928757 (h!71698 (exprs!6242 (h!71699 zl!343))))))

(declare-fun b!6481875 () Bool)

(assert (=> b!6481875 (= e!3928760 (Concat!25203 (h!71698 (exprs!6242 (h!71699 zl!343))) (generalisedConcat!1955 (t!379000 (exprs!6242 (h!71699 zl!343))))))))

(declare-fun b!6481876 () Bool)

(assert (=> b!6481876 (= e!3928759 e!3928755)))

(declare-fun c!1187412 () Bool)

(declare-fun tail!12281 (List!65374) List!65374)

(assert (=> b!6481876 (= c!1187412 (isEmpty!37437 (tail!12281 (exprs!6242 (h!71699 zl!343)))))))

(assert (= (and d!2033697 res!2661658) b!6481871))

(assert (= (and d!2033697 c!1187414) b!6481874))

(assert (= (and d!2033697 (not c!1187414)) b!6481867))

(assert (= (and b!6481867 c!1187415) b!6481875))

(assert (= (and b!6481867 (not c!1187415)) b!6481872))

(assert (= (and d!2033697 res!2661659) b!6481873))

(assert (= (and b!6481873 c!1187413) b!6481869))

(assert (= (and b!6481873 (not c!1187413)) b!6481876))

(assert (= (and b!6481876 c!1187412) b!6481868))

(assert (= (and b!6481876 (not c!1187412)) b!6481870))

(declare-fun m!7270206 () Bool)

(assert (=> d!2033697 m!7270206))

(declare-fun m!7270208 () Bool)

(assert (=> d!2033697 m!7270208))

(assert (=> b!6481871 m!7269712))

(declare-fun m!7270210 () Bool)

(assert (=> b!6481870 m!7270210))

(declare-fun m!7270212 () Bool)

(assert (=> b!6481873 m!7270212))

(declare-fun m!7270214 () Bool)

(assert (=> b!6481869 m!7270214))

(declare-fun m!7270216 () Bool)

(assert (=> b!6481868 m!7270216))

(declare-fun m!7270218 () Bool)

(assert (=> b!6481876 m!7270218))

(assert (=> b!6481876 m!7270218))

(declare-fun m!7270220 () Bool)

(assert (=> b!6481876 m!7270220))

(declare-fun m!7270222 () Bool)

(assert (=> b!6481875 m!7270222))

(assert (=> b!6481411 d!2033697))

(declare-fun d!2033705 () Bool)

(declare-fun c!1187418 () Bool)

(assert (=> d!2033705 (= c!1187418 (isEmpty!37436 (t!378999 s!2326)))))

(declare-fun e!3928763 () Bool)

(assert (=> d!2033705 (= (matchZipper!2370 lt!2386694 (t!378999 s!2326)) e!3928763)))

(declare-fun b!6481881 () Bool)

(declare-fun nullableZipper!2117 ((Set Context!11484)) Bool)

(assert (=> b!6481881 (= e!3928763 (nullableZipper!2117 lt!2386694))))

(declare-fun b!6481882 () Bool)

(assert (=> b!6481882 (= e!3928763 (matchZipper!2370 (derivationStepZipper!2324 lt!2386694 (head!13195 (t!378999 s!2326))) (tail!12280 (t!378999 s!2326))))))

(assert (= (and d!2033705 c!1187418) b!6481881))

(assert (= (and d!2033705 (not c!1187418)) b!6481882))

(declare-fun m!7270224 () Bool)

(assert (=> d!2033705 m!7270224))

(declare-fun m!7270226 () Bool)

(assert (=> b!6481881 m!7270226))

(declare-fun m!7270228 () Bool)

(assert (=> b!6481882 m!7270228))

(assert (=> b!6481882 m!7270228))

(declare-fun m!7270230 () Bool)

(assert (=> b!6481882 m!7270230))

(declare-fun m!7270232 () Bool)

(assert (=> b!6481882 m!7270232))

(assert (=> b!6481882 m!7270230))

(assert (=> b!6481882 m!7270232))

(declare-fun m!7270234 () Bool)

(assert (=> b!6481882 m!7270234))

(assert (=> b!6481410 d!2033705))

(declare-fun bs!1644566 () Bool)

(declare-fun d!2033707 () Bool)

(assert (= bs!1644566 (and d!2033707 b!6481378)))

(declare-fun lambda!358525 () Int)

(assert (=> bs!1644566 (= lambda!358525 lambda!358449)))

(declare-fun bs!1644567 () Bool)

(assert (= bs!1644567 (and d!2033707 d!2033697)))

(assert (=> bs!1644567 (= lambda!358525 lambda!358522)))

(assert (=> d!2033707 (= (inv!84143 (h!71699 zl!343)) (forall!15543 (exprs!6242 (h!71699 zl!343)) lambda!358525))))

(declare-fun bs!1644568 () Bool)

(assert (= bs!1644568 d!2033707))

(declare-fun m!7270242 () Bool)

(assert (=> bs!1644568 m!7270242))

(assert (=> b!6481389 d!2033707))

(declare-fun d!2033711 () Bool)

(assert (=> d!2033711 (= (isEmpty!37436 (_1!36640 lt!2386691)) (is-Nil!65249 (_1!36640 lt!2386691)))))

(assert (=> b!6481404 d!2033711))

(declare-fun d!2033713 () Bool)

(declare-fun e!3928766 () Bool)

(assert (=> d!2033713 e!3928766))

(declare-fun res!2661662 () Bool)

(assert (=> d!2033713 (=> (not res!2661662) (not e!3928766))))

(declare-fun lt!2386927 () List!65375)

(declare-fun noDuplicate!2181 (List!65375) Bool)

(assert (=> d!2033713 (= res!2661662 (noDuplicate!2181 lt!2386927))))

(declare-fun choose!48057 ((Set Context!11484)) List!65375)

(assert (=> d!2033713 (= lt!2386927 (choose!48057 z!1189))))

(assert (=> d!2033713 (= (toList!10142 z!1189) lt!2386927)))

(declare-fun b!6481885 () Bool)

(declare-fun content!12420 (List!65375) (Set Context!11484))

(assert (=> b!6481885 (= e!3928766 (= (content!12420 lt!2386927) z!1189))))

(assert (= (and d!2033713 res!2661662) b!6481885))

(declare-fun m!7270246 () Bool)

(assert (=> d!2033713 m!7270246))

(declare-fun m!7270248 () Bool)

(assert (=> d!2033713 m!7270248))

(declare-fun m!7270250 () Bool)

(assert (=> b!6481885 m!7270250))

(assert (=> b!6481384 d!2033713))

(declare-fun bm!561016 () Bool)

(declare-fun call!561023 () Bool)

(declare-fun call!561022 () Bool)

(assert (=> bm!561016 (= call!561023 call!561022)))

(declare-fun b!6481914 () Bool)

(declare-fun e!3928790 () Bool)

(assert (=> b!6481914 (= e!3928790 call!561023)))

(declare-fun b!6481915 () Bool)

(declare-fun e!3928792 () Bool)

(declare-fun e!3928791 () Bool)

(assert (=> b!6481915 (= e!3928792 e!3928791)))

(declare-fun c!1187427 () Bool)

(assert (=> b!6481915 (= c!1187427 (is-Star!16358 r!7292))))

(declare-fun b!6481916 () Bool)

(declare-fun res!2661679 () Bool)

(declare-fun e!3928793 () Bool)

(assert (=> b!6481916 (=> res!2661679 e!3928793)))

(assert (=> b!6481916 (= res!2661679 (not (is-Concat!25203 r!7292)))))

(declare-fun e!3928788 () Bool)

(assert (=> b!6481916 (= e!3928788 e!3928793)))

(declare-fun b!6481917 () Bool)

(declare-fun e!3928787 () Bool)

(assert (=> b!6481917 (= e!3928791 e!3928787)))

(declare-fun res!2661677 () Bool)

(assert (=> b!6481917 (= res!2661677 (not (nullable!6351 (reg!16687 r!7292))))))

(assert (=> b!6481917 (=> (not res!2661677) (not e!3928787))))

(declare-fun b!6481918 () Bool)

(assert (=> b!6481918 (= e!3928787 call!561022)))

(declare-fun b!6481919 () Bool)

(declare-fun e!3928789 () Bool)

(assert (=> b!6481919 (= e!3928789 call!561023)))

(declare-fun b!6481920 () Bool)

(assert (=> b!6481920 (= e!3928793 e!3928790)))

(declare-fun res!2661675 () Bool)

(assert (=> b!6481920 (=> (not res!2661675) (not e!3928790))))

(declare-fun call!561021 () Bool)

(assert (=> b!6481920 (= res!2661675 call!561021)))

(declare-fun d!2033717 () Bool)

(declare-fun res!2661676 () Bool)

(assert (=> d!2033717 (=> res!2661676 e!3928792)))

(assert (=> d!2033717 (= res!2661676 (is-ElementMatch!16358 r!7292))))

(assert (=> d!2033717 (= (validRegex!8094 r!7292) e!3928792)))

(declare-fun b!6481921 () Bool)

(declare-fun res!2661678 () Bool)

(assert (=> b!6481921 (=> (not res!2661678) (not e!3928789))))

(assert (=> b!6481921 (= res!2661678 call!561021)))

(assert (=> b!6481921 (= e!3928788 e!3928789)))

(declare-fun bm!561017 () Bool)

(declare-fun c!1187428 () Bool)

(assert (=> bm!561017 (= call!561021 (validRegex!8094 (ite c!1187428 (regOne!33229 r!7292) (regOne!33228 r!7292))))))

(declare-fun bm!561018 () Bool)

(assert (=> bm!561018 (= call!561022 (validRegex!8094 (ite c!1187427 (reg!16687 r!7292) (ite c!1187428 (regTwo!33229 r!7292) (regTwo!33228 r!7292)))))))

(declare-fun b!6481922 () Bool)

(assert (=> b!6481922 (= e!3928791 e!3928788)))

(assert (=> b!6481922 (= c!1187428 (is-Union!16358 r!7292))))

(assert (= (and d!2033717 (not res!2661676)) b!6481915))

(assert (= (and b!6481915 c!1187427) b!6481917))

(assert (= (and b!6481915 (not c!1187427)) b!6481922))

(assert (= (and b!6481917 res!2661677) b!6481918))

(assert (= (and b!6481922 c!1187428) b!6481921))

(assert (= (and b!6481922 (not c!1187428)) b!6481916))

(assert (= (and b!6481921 res!2661678) b!6481919))

(assert (= (and b!6481916 (not res!2661679)) b!6481920))

(assert (= (and b!6481920 res!2661675) b!6481914))

(assert (= (or b!6481919 b!6481914) bm!561016))

(assert (= (or b!6481921 b!6481920) bm!561017))

(assert (= (or b!6481918 bm!561016) bm!561018))

(declare-fun m!7270252 () Bool)

(assert (=> b!6481917 m!7270252))

(declare-fun m!7270254 () Bool)

(assert (=> bm!561017 m!7270254))

(declare-fun m!7270256 () Bool)

(assert (=> bm!561018 m!7270256))

(assert (=> start!637136 d!2033717))

(declare-fun d!2033719 () Bool)

(declare-fun dynLambda!25921 (Int Context!11484) (Set Context!11484))

(assert (=> d!2033719 (= (flatMap!1863 z!1189 lambda!358443) (dynLambda!25921 lambda!358443 (h!71699 zl!343)))))

(declare-fun lt!2386930 () Unit!158763)

(declare-fun choose!48060 ((Set Context!11484) Context!11484 Int) Unit!158763)

(assert (=> d!2033719 (= lt!2386930 (choose!48060 z!1189 (h!71699 zl!343) lambda!358443))))

(assert (=> d!2033719 (= z!1189 (set.insert (h!71699 zl!343) (as set.empty (Set Context!11484))))))

(assert (=> d!2033719 (= (lemmaFlatMapOnSingletonSet!1389 z!1189 (h!71699 zl!343) lambda!358443) lt!2386930)))

(declare-fun b_lambda!245505 () Bool)

(assert (=> (not b_lambda!245505) (not d!2033719)))

(declare-fun bs!1644570 () Bool)

(assert (= bs!1644570 d!2033719))

(assert (=> bs!1644570 m!7269630))

(declare-fun m!7270264 () Bool)

(assert (=> bs!1644570 m!7270264))

(declare-fun m!7270266 () Bool)

(assert (=> bs!1644570 m!7270266))

(declare-fun m!7270268 () Bool)

(assert (=> bs!1644570 m!7270268))

(assert (=> b!6481403 d!2033719))

(declare-fun b!6481952 () Bool)

(declare-fun e!3928811 () Bool)

(assert (=> b!6481952 (= e!3928811 (nullable!6351 (regOne!33228 (h!71698 (exprs!6242 (h!71699 zl!343))))))))

(declare-fun b!6481953 () Bool)

(declare-fun e!3928809 () (Set Context!11484))

(declare-fun call!561042 () (Set Context!11484))

(declare-fun call!561040 () (Set Context!11484))

(assert (=> b!6481953 (= e!3928809 (set.union call!561042 call!561040))))

(declare-fun bm!561032 () Bool)

(declare-fun call!561041 () List!65374)

(declare-fun call!561037 () List!65374)

(assert (=> bm!561032 (= call!561041 call!561037)))

(declare-fun d!2033723 () Bool)

(declare-fun c!1187447 () Bool)

(assert (=> d!2033723 (= c!1187447 (and (is-ElementMatch!16358 (h!71698 (exprs!6242 (h!71699 zl!343)))) (= (c!1187340 (h!71698 (exprs!6242 (h!71699 zl!343)))) (h!71697 s!2326))))))

(declare-fun e!3928814 () (Set Context!11484))

(assert (=> d!2033723 (= (derivationStepZipperDown!1606 (h!71698 (exprs!6242 (h!71699 zl!343))) lt!2386683 (h!71697 s!2326)) e!3928814)))

(declare-fun b!6481954 () Bool)

(declare-fun e!3928812 () (Set Context!11484))

(declare-fun call!561039 () (Set Context!11484))

(assert (=> b!6481954 (= e!3928812 call!561039)))

(declare-fun c!1187445 () Bool)

(declare-fun c!1187446 () Bool)

(declare-fun bm!561033 () Bool)

(declare-fun $colon$colon!2213 (List!65374 Regex!16358) List!65374)

(assert (=> bm!561033 (= call!561037 ($colon$colon!2213 (exprs!6242 lt!2386683) (ite (or c!1187445 c!1187446) (regTwo!33228 (h!71698 (exprs!6242 (h!71699 zl!343)))) (h!71698 (exprs!6242 (h!71699 zl!343))))))))

(declare-fun b!6481955 () Bool)

(declare-fun e!3928810 () (Set Context!11484))

(assert (=> b!6481955 (= e!3928810 e!3928812)))

(assert (=> b!6481955 (= c!1187446 (is-Concat!25203 (h!71698 (exprs!6242 (h!71699 zl!343)))))))

(declare-fun b!6481956 () Bool)

(declare-fun e!3928813 () (Set Context!11484))

(assert (=> b!6481956 (= e!3928813 (as set.empty (Set Context!11484)))))

(declare-fun b!6481957 () Bool)

(assert (=> b!6481957 (= e!3928814 (set.insert lt!2386683 (as set.empty (Set Context!11484))))))

(declare-fun c!1187444 () Bool)

(declare-fun bm!561034 () Bool)

(assert (=> bm!561034 (= call!561040 (derivationStepZipperDown!1606 (ite c!1187444 (regTwo!33229 (h!71698 (exprs!6242 (h!71699 zl!343)))) (regOne!33228 (h!71698 (exprs!6242 (h!71699 zl!343))))) (ite c!1187444 lt!2386683 (Context!11485 call!561037)) (h!71697 s!2326)))))

(declare-fun bm!561035 () Bool)

(declare-fun call!561038 () (Set Context!11484))

(assert (=> bm!561035 (= call!561039 call!561038)))

(declare-fun bm!561036 () Bool)

(assert (=> bm!561036 (= call!561038 call!561042)))

(declare-fun b!6481958 () Bool)

(assert (=> b!6481958 (= e!3928813 call!561039)))

(declare-fun b!6481959 () Bool)

(assert (=> b!6481959 (= c!1187445 e!3928811)))

(declare-fun res!2661683 () Bool)

(assert (=> b!6481959 (=> (not res!2661683) (not e!3928811))))

(assert (=> b!6481959 (= res!2661683 (is-Concat!25203 (h!71698 (exprs!6242 (h!71699 zl!343)))))))

(assert (=> b!6481959 (= e!3928809 e!3928810)))

(declare-fun b!6481960 () Bool)

(declare-fun c!1187443 () Bool)

(assert (=> b!6481960 (= c!1187443 (is-Star!16358 (h!71698 (exprs!6242 (h!71699 zl!343)))))))

(assert (=> b!6481960 (= e!3928812 e!3928813)))

(declare-fun b!6481961 () Bool)

(assert (=> b!6481961 (= e!3928810 (set.union call!561040 call!561038))))

(declare-fun bm!561037 () Bool)

(assert (=> bm!561037 (= call!561042 (derivationStepZipperDown!1606 (ite c!1187444 (regOne!33229 (h!71698 (exprs!6242 (h!71699 zl!343)))) (ite c!1187445 (regTwo!33228 (h!71698 (exprs!6242 (h!71699 zl!343)))) (ite c!1187446 (regOne!33228 (h!71698 (exprs!6242 (h!71699 zl!343)))) (reg!16687 (h!71698 (exprs!6242 (h!71699 zl!343))))))) (ite (or c!1187444 c!1187445) lt!2386683 (Context!11485 call!561041)) (h!71697 s!2326)))))

(declare-fun b!6481962 () Bool)

(assert (=> b!6481962 (= e!3928814 e!3928809)))

(assert (=> b!6481962 (= c!1187444 (is-Union!16358 (h!71698 (exprs!6242 (h!71699 zl!343)))))))

(assert (= (and d!2033723 c!1187447) b!6481957))

(assert (= (and d!2033723 (not c!1187447)) b!6481962))

(assert (= (and b!6481962 c!1187444) b!6481953))

(assert (= (and b!6481962 (not c!1187444)) b!6481959))

(assert (= (and b!6481959 res!2661683) b!6481952))

(assert (= (and b!6481959 c!1187445) b!6481961))

(assert (= (and b!6481959 (not c!1187445)) b!6481955))

(assert (= (and b!6481955 c!1187446) b!6481954))

(assert (= (and b!6481955 (not c!1187446)) b!6481960))

(assert (= (and b!6481960 c!1187443) b!6481958))

(assert (= (and b!6481960 (not c!1187443)) b!6481956))

(assert (= (or b!6481954 b!6481958) bm!561032))

(assert (= (or b!6481954 b!6481958) bm!561035))

(assert (= (or b!6481961 bm!561032) bm!561033))

(assert (= (or b!6481961 bm!561035) bm!561036))

(assert (= (or b!6481953 b!6481961) bm!561034))

(assert (= (or b!6481953 bm!561036) bm!561037))

(declare-fun m!7270276 () Bool)

(assert (=> b!6481957 m!7270276))

(declare-fun m!7270278 () Bool)

(assert (=> bm!561037 m!7270278))

(declare-fun m!7270280 () Bool)

(assert (=> bm!561034 m!7270280))

(declare-fun m!7270282 () Bool)

(assert (=> b!6481952 m!7270282))

(declare-fun m!7270284 () Bool)

(assert (=> bm!561033 m!7270284))

(assert (=> b!6481403 d!2033723))

(declare-fun d!2033729 () Bool)

(assert (=> d!2033729 (= (nullable!6351 (h!71698 (exprs!6242 (h!71699 zl!343)))) (nullableFct!2291 (h!71698 (exprs!6242 (h!71699 zl!343)))))))

(declare-fun bs!1644574 () Bool)

(assert (= bs!1644574 d!2033729))

(declare-fun m!7270286 () Bool)

(assert (=> bs!1644574 m!7270286))

(assert (=> b!6481403 d!2033729))

(declare-fun b!6481973 () Bool)

(declare-fun e!3928823 () (Set Context!11484))

(assert (=> b!6481973 (= e!3928823 (as set.empty (Set Context!11484)))))

(declare-fun b!6481974 () Bool)

(declare-fun call!561045 () (Set Context!11484))

(assert (=> b!6481974 (= e!3928823 call!561045)))

(declare-fun e!3928821 () (Set Context!11484))

(declare-fun b!6481975 () Bool)

(assert (=> b!6481975 (= e!3928821 (set.union call!561045 (derivationStepZipperUp!1532 (Context!11485 (t!379000 (exprs!6242 (Context!11485 (Cons!65250 (h!71698 (exprs!6242 (h!71699 zl!343))) (t!379000 (exprs!6242 (h!71699 zl!343)))))))) (h!71697 s!2326))))))

(declare-fun d!2033731 () Bool)

(declare-fun c!1187453 () Bool)

(declare-fun e!3928822 () Bool)

(assert (=> d!2033731 (= c!1187453 e!3928822)))

(declare-fun res!2661686 () Bool)

(assert (=> d!2033731 (=> (not res!2661686) (not e!3928822))))

(assert (=> d!2033731 (= res!2661686 (is-Cons!65250 (exprs!6242 (Context!11485 (Cons!65250 (h!71698 (exprs!6242 (h!71699 zl!343))) (t!379000 (exprs!6242 (h!71699 zl!343))))))))))

(assert (=> d!2033731 (= (derivationStepZipperUp!1532 (Context!11485 (Cons!65250 (h!71698 (exprs!6242 (h!71699 zl!343))) (t!379000 (exprs!6242 (h!71699 zl!343))))) (h!71697 s!2326)) e!3928821)))

(declare-fun b!6481976 () Bool)

(assert (=> b!6481976 (= e!3928821 e!3928823)))

(declare-fun c!1187452 () Bool)

(assert (=> b!6481976 (= c!1187452 (is-Cons!65250 (exprs!6242 (Context!11485 (Cons!65250 (h!71698 (exprs!6242 (h!71699 zl!343))) (t!379000 (exprs!6242 (h!71699 zl!343))))))))))

(declare-fun bm!561040 () Bool)

(assert (=> bm!561040 (= call!561045 (derivationStepZipperDown!1606 (h!71698 (exprs!6242 (Context!11485 (Cons!65250 (h!71698 (exprs!6242 (h!71699 zl!343))) (t!379000 (exprs!6242 (h!71699 zl!343))))))) (Context!11485 (t!379000 (exprs!6242 (Context!11485 (Cons!65250 (h!71698 (exprs!6242 (h!71699 zl!343))) (t!379000 (exprs!6242 (h!71699 zl!343)))))))) (h!71697 s!2326)))))

(declare-fun b!6481977 () Bool)

(assert (=> b!6481977 (= e!3928822 (nullable!6351 (h!71698 (exprs!6242 (Context!11485 (Cons!65250 (h!71698 (exprs!6242 (h!71699 zl!343))) (t!379000 (exprs!6242 (h!71699 zl!343)))))))))))

(assert (= (and d!2033731 res!2661686) b!6481977))

(assert (= (and d!2033731 c!1187453) b!6481975))

(assert (= (and d!2033731 (not c!1187453)) b!6481976))

(assert (= (and b!6481976 c!1187452) b!6481974))

(assert (= (and b!6481976 (not c!1187452)) b!6481973))

(assert (= (or b!6481975 b!6481974) bm!561040))

(declare-fun m!7270288 () Bool)

(assert (=> b!6481975 m!7270288))

(declare-fun m!7270290 () Bool)

(assert (=> bm!561040 m!7270290))

(declare-fun m!7270292 () Bool)

(assert (=> b!6481977 m!7270292))

(assert (=> b!6481403 d!2033731))

(declare-fun d!2033733 () Bool)

(declare-fun choose!48061 ((Set Context!11484) Int) (Set Context!11484))

(assert (=> d!2033733 (= (flatMap!1863 z!1189 lambda!358443) (choose!48061 z!1189 lambda!358443))))

(declare-fun bs!1644575 () Bool)

(assert (= bs!1644575 d!2033733))

(declare-fun m!7270294 () Bool)

(assert (=> bs!1644575 m!7270294))

(assert (=> b!6481403 d!2033733))

(declare-fun b!6481978 () Bool)

(declare-fun e!3928826 () (Set Context!11484))

(assert (=> b!6481978 (= e!3928826 (as set.empty (Set Context!11484)))))

(declare-fun b!6481979 () Bool)

(declare-fun call!561046 () (Set Context!11484))

(assert (=> b!6481979 (= e!3928826 call!561046)))

(declare-fun e!3928824 () (Set Context!11484))

(declare-fun b!6481980 () Bool)

(assert (=> b!6481980 (= e!3928824 (set.union call!561046 (derivationStepZipperUp!1532 (Context!11485 (t!379000 (exprs!6242 (h!71699 zl!343)))) (h!71697 s!2326))))))

(declare-fun d!2033735 () Bool)

(declare-fun c!1187455 () Bool)

(declare-fun e!3928825 () Bool)

(assert (=> d!2033735 (= c!1187455 e!3928825)))

(declare-fun res!2661687 () Bool)

(assert (=> d!2033735 (=> (not res!2661687) (not e!3928825))))

(assert (=> d!2033735 (= res!2661687 (is-Cons!65250 (exprs!6242 (h!71699 zl!343))))))

(assert (=> d!2033735 (= (derivationStepZipperUp!1532 (h!71699 zl!343) (h!71697 s!2326)) e!3928824)))

(declare-fun b!6481981 () Bool)

(assert (=> b!6481981 (= e!3928824 e!3928826)))

(declare-fun c!1187454 () Bool)

(assert (=> b!6481981 (= c!1187454 (is-Cons!65250 (exprs!6242 (h!71699 zl!343))))))

(declare-fun bm!561041 () Bool)

(assert (=> bm!561041 (= call!561046 (derivationStepZipperDown!1606 (h!71698 (exprs!6242 (h!71699 zl!343))) (Context!11485 (t!379000 (exprs!6242 (h!71699 zl!343)))) (h!71697 s!2326)))))

(declare-fun b!6481982 () Bool)

(assert (=> b!6481982 (= e!3928825 (nullable!6351 (h!71698 (exprs!6242 (h!71699 zl!343)))))))

(assert (= (and d!2033735 res!2661687) b!6481982))

(assert (= (and d!2033735 c!1187455) b!6481980))

(assert (= (and d!2033735 (not c!1187455)) b!6481981))

(assert (= (and b!6481981 c!1187454) b!6481979))

(assert (= (and b!6481981 (not c!1187454)) b!6481978))

(assert (= (or b!6481980 b!6481979) bm!561041))

(declare-fun m!7270296 () Bool)

(assert (=> b!6481980 m!7270296))

(declare-fun m!7270298 () Bool)

(assert (=> bm!561041 m!7270298))

(assert (=> b!6481982 m!7269634))

(assert (=> b!6481403 d!2033735))

(declare-fun b!6481983 () Bool)

(declare-fun e!3928829 () (Set Context!11484))

(assert (=> b!6481983 (= e!3928829 (as set.empty (Set Context!11484)))))

(declare-fun b!6481984 () Bool)

(declare-fun call!561047 () (Set Context!11484))

(assert (=> b!6481984 (= e!3928829 call!561047)))

(declare-fun b!6481985 () Bool)

(declare-fun e!3928827 () (Set Context!11484))

(assert (=> b!6481985 (= e!3928827 (set.union call!561047 (derivationStepZipperUp!1532 (Context!11485 (t!379000 (exprs!6242 lt!2386683))) (h!71697 s!2326))))))

(declare-fun d!2033737 () Bool)

(declare-fun c!1187457 () Bool)

(declare-fun e!3928828 () Bool)

(assert (=> d!2033737 (= c!1187457 e!3928828)))

(declare-fun res!2661688 () Bool)

(assert (=> d!2033737 (=> (not res!2661688) (not e!3928828))))

(assert (=> d!2033737 (= res!2661688 (is-Cons!65250 (exprs!6242 lt!2386683)))))

(assert (=> d!2033737 (= (derivationStepZipperUp!1532 lt!2386683 (h!71697 s!2326)) e!3928827)))

(declare-fun b!6481986 () Bool)

(assert (=> b!6481986 (= e!3928827 e!3928829)))

(declare-fun c!1187456 () Bool)

(assert (=> b!6481986 (= c!1187456 (is-Cons!65250 (exprs!6242 lt!2386683)))))

(declare-fun bm!561042 () Bool)

(assert (=> bm!561042 (= call!561047 (derivationStepZipperDown!1606 (h!71698 (exprs!6242 lt!2386683)) (Context!11485 (t!379000 (exprs!6242 lt!2386683))) (h!71697 s!2326)))))

(declare-fun b!6481987 () Bool)

(assert (=> b!6481987 (= e!3928828 (nullable!6351 (h!71698 (exprs!6242 lt!2386683))))))

(assert (= (and d!2033737 res!2661688) b!6481987))

(assert (= (and d!2033737 c!1187457) b!6481985))

(assert (= (and d!2033737 (not c!1187457)) b!6481986))

(assert (= (and b!6481986 c!1187456) b!6481984))

(assert (= (and b!6481986 (not c!1187456)) b!6481983))

(assert (= (or b!6481985 b!6481984) bm!561042))

(declare-fun m!7270300 () Bool)

(assert (=> b!6481985 m!7270300))

(declare-fun m!7270302 () Bool)

(assert (=> bm!561042 m!7270302))

(declare-fun m!7270304 () Bool)

(assert (=> b!6481987 m!7270304))

(assert (=> b!6481403 d!2033737))

(declare-fun d!2033739 () Bool)

(assert (=> d!2033739 (= (isEmpty!37437 (t!379000 (exprs!6242 (h!71699 zl!343)))) (is-Nil!65250 (t!379000 (exprs!6242 (h!71699 zl!343)))))))

(assert (=> b!6481407 d!2033739))

(declare-fun bs!1644577 () Bool)

(declare-fun d!2033741 () Bool)

(assert (= bs!1644577 (and d!2033741 b!6481378)))

(declare-fun lambda!358532 () Int)

(assert (=> bs!1644577 (= lambda!358532 lambda!358449)))

(declare-fun bs!1644578 () Bool)

(assert (= bs!1644578 (and d!2033741 d!2033697)))

(assert (=> bs!1644578 (= lambda!358532 lambda!358522)))

(declare-fun bs!1644579 () Bool)

(assert (= bs!1644579 (and d!2033741 d!2033707)))

(assert (=> bs!1644579 (= lambda!358532 lambda!358525)))

(assert (=> d!2033741 (= (inv!84143 setElem!44148) (forall!15543 (exprs!6242 setElem!44148) lambda!358532))))

(declare-fun bs!1644580 () Bool)

(assert (= bs!1644580 d!2033741))

(declare-fun m!7270306 () Bool)

(assert (=> bs!1644580 m!7270306))

(assert (=> setNonEmpty!44148 d!2033741))

(declare-fun b!6481988 () Bool)

(declare-fun res!2661692 () Bool)

(declare-fun e!3928831 () Bool)

(assert (=> b!6481988 (=> (not res!2661692) (not e!3928831))))

(assert (=> b!6481988 (= res!2661692 (isEmpty!37436 (tail!12280 (_2!36640 lt!2386691))))))

(declare-fun b!6481989 () Bool)

(assert (=> b!6481989 (= e!3928831 (= (head!13195 (_2!36640 lt!2386691)) (c!1187340 (regTwo!33228 r!7292))))))

(declare-fun b!6481990 () Bool)

(declare-fun res!2661694 () Bool)

(assert (=> b!6481990 (=> (not res!2661694) (not e!3928831))))

(declare-fun call!561048 () Bool)

(assert (=> b!6481990 (= res!2661694 (not call!561048))))

(declare-fun b!6481992 () Bool)

(declare-fun e!3928835 () Bool)

(declare-fun lt!2386940 () Bool)

(assert (=> b!6481992 (= e!3928835 (not lt!2386940))))

(declare-fun b!6481993 () Bool)

(declare-fun e!3928836 () Bool)

(declare-fun e!3928833 () Bool)

(assert (=> b!6481993 (= e!3928836 e!3928833)))

(declare-fun res!2661693 () Bool)

(assert (=> b!6481993 (=> res!2661693 e!3928833)))

(assert (=> b!6481993 (= res!2661693 call!561048)))

(declare-fun b!6481994 () Bool)

(declare-fun e!3928834 () Bool)

(assert (=> b!6481994 (= e!3928834 (nullable!6351 (regTwo!33228 r!7292)))))

(declare-fun b!6481991 () Bool)

(declare-fun e!3928832 () Bool)

(assert (=> b!6481991 (= e!3928832 (= lt!2386940 call!561048))))

(declare-fun d!2033743 () Bool)

(assert (=> d!2033743 e!3928832))

(declare-fun c!1187459 () Bool)

(assert (=> d!2033743 (= c!1187459 (is-EmptyExpr!16358 (regTwo!33228 r!7292)))))

(assert (=> d!2033743 (= lt!2386940 e!3928834)))

(declare-fun c!1187460 () Bool)

(assert (=> d!2033743 (= c!1187460 (isEmpty!37436 (_2!36640 lt!2386691)))))

(assert (=> d!2033743 (validRegex!8094 (regTwo!33228 r!7292))))

(assert (=> d!2033743 (= (matchR!8541 (regTwo!33228 r!7292) (_2!36640 lt!2386691)) lt!2386940)))

(declare-fun b!6481995 () Bool)

(assert (=> b!6481995 (= e!3928833 (not (= (head!13195 (_2!36640 lt!2386691)) (c!1187340 (regTwo!33228 r!7292)))))))

(declare-fun b!6481996 () Bool)

(declare-fun e!3928830 () Bool)

(assert (=> b!6481996 (= e!3928830 e!3928836)))

(declare-fun res!2661696 () Bool)

(assert (=> b!6481996 (=> (not res!2661696) (not e!3928836))))

(assert (=> b!6481996 (= res!2661696 (not lt!2386940))))

(declare-fun b!6481997 () Bool)

(declare-fun res!2661689 () Bool)

(assert (=> b!6481997 (=> res!2661689 e!3928833)))

(assert (=> b!6481997 (= res!2661689 (not (isEmpty!37436 (tail!12280 (_2!36640 lt!2386691)))))))

(declare-fun b!6481998 () Bool)

(assert (=> b!6481998 (= e!3928832 e!3928835)))

(declare-fun c!1187458 () Bool)

(assert (=> b!6481998 (= c!1187458 (is-EmptyLang!16358 (regTwo!33228 r!7292)))))

(declare-fun bm!561043 () Bool)

(assert (=> bm!561043 (= call!561048 (isEmpty!37436 (_2!36640 lt!2386691)))))

(declare-fun b!6481999 () Bool)

(declare-fun res!2661690 () Bool)

(assert (=> b!6481999 (=> res!2661690 e!3928830)))

(assert (=> b!6481999 (= res!2661690 (not (is-ElementMatch!16358 (regTwo!33228 r!7292))))))

(assert (=> b!6481999 (= e!3928835 e!3928830)))

(declare-fun b!6482000 () Bool)

(assert (=> b!6482000 (= e!3928834 (matchR!8541 (derivativeStep!5056 (regTwo!33228 r!7292) (head!13195 (_2!36640 lt!2386691))) (tail!12280 (_2!36640 lt!2386691))))))

(declare-fun b!6482001 () Bool)

(declare-fun res!2661691 () Bool)

(assert (=> b!6482001 (=> res!2661691 e!3928830)))

(assert (=> b!6482001 (= res!2661691 e!3928831)))

(declare-fun res!2661695 () Bool)

(assert (=> b!6482001 (=> (not res!2661695) (not e!3928831))))

(assert (=> b!6482001 (= res!2661695 lt!2386940)))

(assert (= (and d!2033743 c!1187460) b!6481994))

(assert (= (and d!2033743 (not c!1187460)) b!6482000))

(assert (= (and d!2033743 c!1187459) b!6481991))

(assert (= (and d!2033743 (not c!1187459)) b!6481998))

(assert (= (and b!6481998 c!1187458) b!6481992))

(assert (= (and b!6481998 (not c!1187458)) b!6481999))

(assert (= (and b!6481999 (not res!2661690)) b!6482001))

(assert (= (and b!6482001 res!2661695) b!6481990))

(assert (= (and b!6481990 res!2661694) b!6481988))

(assert (= (and b!6481988 res!2661692) b!6481989))

(assert (= (and b!6482001 (not res!2661691)) b!6481996))

(assert (= (and b!6481996 res!2661696) b!6481993))

(assert (= (and b!6481993 (not res!2661693)) b!6481997))

(assert (= (and b!6481997 (not res!2661689)) b!6481995))

(assert (= (or b!6481991 b!6481990 b!6481993) bm!561043))

(declare-fun m!7270320 () Bool)

(assert (=> b!6481989 m!7270320))

(declare-fun m!7270322 () Bool)

(assert (=> b!6481988 m!7270322))

(assert (=> b!6481988 m!7270322))

(declare-fun m!7270324 () Bool)

(assert (=> b!6481988 m!7270324))

(declare-fun m!7270326 () Bool)

(assert (=> bm!561043 m!7270326))

(assert (=> b!6481995 m!7270320))

(assert (=> b!6481997 m!7270322))

(assert (=> b!6481997 m!7270322))

(assert (=> b!6481997 m!7270324))

(assert (=> b!6482000 m!7270320))

(assert (=> b!6482000 m!7270320))

(declare-fun m!7270328 () Bool)

(assert (=> b!6482000 m!7270328))

(assert (=> b!6482000 m!7270322))

(assert (=> b!6482000 m!7270328))

(assert (=> b!6482000 m!7270322))

(declare-fun m!7270330 () Bool)

(assert (=> b!6482000 m!7270330))

(assert (=> d!2033743 m!7270326))

(declare-fun m!7270332 () Bool)

(assert (=> d!2033743 m!7270332))

(declare-fun m!7270334 () Bool)

(assert (=> b!6481994 m!7270334))

(assert (=> b!6481385 d!2033743))

(declare-fun b!6482002 () Bool)

(declare-fun e!3928839 () Bool)

(assert (=> b!6482002 (= e!3928839 (nullable!6351 (regOne!33228 (reg!16687 (regOne!33228 r!7292)))))))

(declare-fun b!6482003 () Bool)

(declare-fun e!3928837 () (Set Context!11484))

(declare-fun call!561054 () (Set Context!11484))

(declare-fun call!561052 () (Set Context!11484))

(assert (=> b!6482003 (= e!3928837 (set.union call!561054 call!561052))))

(declare-fun bm!561044 () Bool)

(declare-fun call!561053 () List!65374)

(declare-fun call!561049 () List!65374)

(assert (=> bm!561044 (= call!561053 call!561049)))

(declare-fun d!2033747 () Bool)

(declare-fun c!1187465 () Bool)

(assert (=> d!2033747 (= c!1187465 (and (is-ElementMatch!16358 (reg!16687 (regOne!33228 r!7292))) (= (c!1187340 (reg!16687 (regOne!33228 r!7292))) (h!71697 s!2326))))))

(declare-fun e!3928842 () (Set Context!11484))

(assert (=> d!2033747 (= (derivationStepZipperDown!1606 (reg!16687 (regOne!33228 r!7292)) lt!2386651 (h!71697 s!2326)) e!3928842)))

(declare-fun b!6482004 () Bool)

(declare-fun e!3928840 () (Set Context!11484))

(declare-fun call!561051 () (Set Context!11484))

(assert (=> b!6482004 (= e!3928840 call!561051)))

(declare-fun c!1187464 () Bool)

(declare-fun bm!561045 () Bool)

(declare-fun c!1187463 () Bool)

(assert (=> bm!561045 (= call!561049 ($colon$colon!2213 (exprs!6242 lt!2386651) (ite (or c!1187463 c!1187464) (regTwo!33228 (reg!16687 (regOne!33228 r!7292))) (reg!16687 (regOne!33228 r!7292)))))))

(declare-fun b!6482005 () Bool)

(declare-fun e!3928838 () (Set Context!11484))

(assert (=> b!6482005 (= e!3928838 e!3928840)))

(assert (=> b!6482005 (= c!1187464 (is-Concat!25203 (reg!16687 (regOne!33228 r!7292))))))

(declare-fun b!6482006 () Bool)

(declare-fun e!3928841 () (Set Context!11484))

(assert (=> b!6482006 (= e!3928841 (as set.empty (Set Context!11484)))))

(declare-fun b!6482007 () Bool)

(assert (=> b!6482007 (= e!3928842 (set.insert lt!2386651 (as set.empty (Set Context!11484))))))

(declare-fun bm!561046 () Bool)

(declare-fun c!1187462 () Bool)

(assert (=> bm!561046 (= call!561052 (derivationStepZipperDown!1606 (ite c!1187462 (regTwo!33229 (reg!16687 (regOne!33228 r!7292))) (regOne!33228 (reg!16687 (regOne!33228 r!7292)))) (ite c!1187462 lt!2386651 (Context!11485 call!561049)) (h!71697 s!2326)))))

(declare-fun bm!561047 () Bool)

(declare-fun call!561050 () (Set Context!11484))

(assert (=> bm!561047 (= call!561051 call!561050)))

(declare-fun bm!561048 () Bool)

(assert (=> bm!561048 (= call!561050 call!561054)))

(declare-fun b!6482008 () Bool)

(assert (=> b!6482008 (= e!3928841 call!561051)))

(declare-fun b!6482009 () Bool)

(assert (=> b!6482009 (= c!1187463 e!3928839)))

(declare-fun res!2661697 () Bool)

(assert (=> b!6482009 (=> (not res!2661697) (not e!3928839))))

(assert (=> b!6482009 (= res!2661697 (is-Concat!25203 (reg!16687 (regOne!33228 r!7292))))))

(assert (=> b!6482009 (= e!3928837 e!3928838)))

(declare-fun b!6482010 () Bool)

(declare-fun c!1187461 () Bool)

(assert (=> b!6482010 (= c!1187461 (is-Star!16358 (reg!16687 (regOne!33228 r!7292))))))

(assert (=> b!6482010 (= e!3928840 e!3928841)))

(declare-fun b!6482011 () Bool)

(assert (=> b!6482011 (= e!3928838 (set.union call!561052 call!561050))))

(declare-fun bm!561049 () Bool)

(assert (=> bm!561049 (= call!561054 (derivationStepZipperDown!1606 (ite c!1187462 (regOne!33229 (reg!16687 (regOne!33228 r!7292))) (ite c!1187463 (regTwo!33228 (reg!16687 (regOne!33228 r!7292))) (ite c!1187464 (regOne!33228 (reg!16687 (regOne!33228 r!7292))) (reg!16687 (reg!16687 (regOne!33228 r!7292)))))) (ite (or c!1187462 c!1187463) lt!2386651 (Context!11485 call!561053)) (h!71697 s!2326)))))

(declare-fun b!6482012 () Bool)

(assert (=> b!6482012 (= e!3928842 e!3928837)))

(assert (=> b!6482012 (= c!1187462 (is-Union!16358 (reg!16687 (regOne!33228 r!7292))))))

(assert (= (and d!2033747 c!1187465) b!6482007))

(assert (= (and d!2033747 (not c!1187465)) b!6482012))

(assert (= (and b!6482012 c!1187462) b!6482003))

(assert (= (and b!6482012 (not c!1187462)) b!6482009))

(assert (= (and b!6482009 res!2661697) b!6482002))

(assert (= (and b!6482009 c!1187463) b!6482011))

(assert (= (and b!6482009 (not c!1187463)) b!6482005))

(assert (= (and b!6482005 c!1187464) b!6482004))

(assert (= (and b!6482005 (not c!1187464)) b!6482010))

(assert (= (and b!6482010 c!1187461) b!6482008))

(assert (= (and b!6482010 (not c!1187461)) b!6482006))

(assert (= (or b!6482004 b!6482008) bm!561044))

(assert (= (or b!6482004 b!6482008) bm!561047))

(assert (= (or b!6482011 bm!561044) bm!561045))

(assert (= (or b!6482011 bm!561047) bm!561048))

(assert (= (or b!6482003 b!6482011) bm!561046))

(assert (= (or b!6482003 bm!561048) bm!561049))

(assert (=> b!6482007 m!7269656))

(declare-fun m!7270336 () Bool)

(assert (=> bm!561049 m!7270336))

(declare-fun m!7270338 () Bool)

(assert (=> bm!561046 m!7270338))

(declare-fun m!7270340 () Bool)

(assert (=> b!6482002 m!7270340))

(declare-fun m!7270342 () Bool)

(assert (=> bm!561045 m!7270342))

(assert (=> b!6481405 d!2033747))

(declare-fun d!2033749 () Bool)

(declare-fun lt!2386943 () Regex!16358)

(assert (=> d!2033749 (validRegex!8094 lt!2386943)))

(assert (=> d!2033749 (= lt!2386943 (generalisedUnion!2202 (unfocusZipperList!1779 lt!2386695)))))

(assert (=> d!2033749 (= (unfocusZipper!2100 lt!2386695) lt!2386943)))

(declare-fun bs!1644582 () Bool)

(assert (= bs!1644582 d!2033749))

(declare-fun m!7270344 () Bool)

(assert (=> bs!1644582 m!7270344))

(declare-fun m!7270346 () Bool)

(assert (=> bs!1644582 m!7270346))

(assert (=> bs!1644582 m!7270346))

(declare-fun m!7270348 () Bool)

(assert (=> bs!1644582 m!7270348))

(assert (=> b!6481419 d!2033749))

(declare-fun d!2033751 () Bool)

(declare-fun c!1187466 () Bool)

(assert (=> d!2033751 (= c!1187466 (isEmpty!37436 s!2326))))

(declare-fun e!3928843 () Bool)

(assert (=> d!2033751 (= (matchZipper!2370 lt!2386674 s!2326) e!3928843)))

(declare-fun b!6482013 () Bool)

(assert (=> b!6482013 (= e!3928843 (nullableZipper!2117 lt!2386674))))

(declare-fun b!6482014 () Bool)

(assert (=> b!6482014 (= e!3928843 (matchZipper!2370 (derivationStepZipper!2324 lt!2386674 (head!13195 s!2326)) (tail!12280 s!2326)))))

(assert (= (and d!2033751 c!1187466) b!6482013))

(assert (= (and d!2033751 (not c!1187466)) b!6482014))

(assert (=> d!2033751 m!7270134))

(declare-fun m!7270350 () Bool)

(assert (=> b!6482013 m!7270350))

(assert (=> b!6482014 m!7270140))

(assert (=> b!6482014 m!7270140))

(declare-fun m!7270352 () Bool)

(assert (=> b!6482014 m!7270352))

(assert (=> b!6482014 m!7270142))

(assert (=> b!6482014 m!7270352))

(assert (=> b!6482014 m!7270142))

(declare-fun m!7270354 () Bool)

(assert (=> b!6482014 m!7270354))

(assert (=> b!6481399 d!2033751))

(declare-fun d!2033753 () Bool)

(declare-fun c!1187467 () Bool)

(assert (=> d!2033753 (= c!1187467 (isEmpty!37436 (t!378999 s!2326)))))

(declare-fun e!3928844 () Bool)

(assert (=> d!2033753 (= (matchZipper!2370 lt!2386684 (t!378999 s!2326)) e!3928844)))

(declare-fun b!6482015 () Bool)

(assert (=> b!6482015 (= e!3928844 (nullableZipper!2117 lt!2386684))))

(declare-fun b!6482016 () Bool)

(assert (=> b!6482016 (= e!3928844 (matchZipper!2370 (derivationStepZipper!2324 lt!2386684 (head!13195 (t!378999 s!2326))) (tail!12280 (t!378999 s!2326))))))

(assert (= (and d!2033753 c!1187467) b!6482015))

(assert (= (and d!2033753 (not c!1187467)) b!6482016))

(assert (=> d!2033753 m!7270224))

(declare-fun m!7270356 () Bool)

(assert (=> b!6482015 m!7270356))

(assert (=> b!6482016 m!7270228))

(assert (=> b!6482016 m!7270228))

(declare-fun m!7270358 () Bool)

(assert (=> b!6482016 m!7270358))

(assert (=> b!6482016 m!7270232))

(assert (=> b!6482016 m!7270358))

(assert (=> b!6482016 m!7270232))

(declare-fun m!7270360 () Bool)

(assert (=> b!6482016 m!7270360))

(assert (=> b!6481399 d!2033753))

(declare-fun d!2033755 () Bool)

(assert (=> d!2033755 (= (matchR!8541 lt!2386666 lt!2386659) (matchZipper!2370 lt!2386682 lt!2386659))))

(declare-fun lt!2386946 () Unit!158763)

(declare-fun choose!48066 ((Set Context!11484) List!65375 Regex!16358 List!65373) Unit!158763)

(assert (=> d!2033755 (= lt!2386946 (choose!48066 lt!2386682 lt!2386695 lt!2386666 lt!2386659))))

(assert (=> d!2033755 (validRegex!8094 lt!2386666)))

(assert (=> d!2033755 (= (theoremZipperRegexEquiv!824 lt!2386682 lt!2386695 lt!2386666 lt!2386659) lt!2386946)))

(declare-fun bs!1644583 () Bool)

(assert (= bs!1644583 d!2033755))

(assert (=> bs!1644583 m!7269586))

(assert (=> bs!1644583 m!7269588))

(declare-fun m!7270362 () Bool)

(assert (=> bs!1644583 m!7270362))

(assert (=> bs!1644583 m!7269668))

(assert (=> b!6481378 d!2033755))

(declare-fun d!2033757 () Bool)

(assert (=> d!2033757 (forall!15543 (++!14426 lt!2386652 lt!2386673) lambda!358449)))

(declare-fun lt!2386951 () Unit!158763)

(declare-fun choose!48067 (List!65374 List!65374 Int) Unit!158763)

(assert (=> d!2033757 (= lt!2386951 (choose!48067 lt!2386652 lt!2386673 lambda!358449))))

(assert (=> d!2033757 (forall!15543 lt!2386652 lambda!358449)))

(assert (=> d!2033757 (= (lemmaConcatPreservesForall!337 lt!2386652 lt!2386673 lambda!358449) lt!2386951)))

(declare-fun bs!1644584 () Bool)

(assert (= bs!1644584 d!2033757))

(assert (=> bs!1644584 m!7269598))

(assert (=> bs!1644584 m!7269598))

(declare-fun m!7270364 () Bool)

(assert (=> bs!1644584 m!7270364))

(declare-fun m!7270366 () Bool)

(assert (=> bs!1644584 m!7270366))

(declare-fun m!7270368 () Bool)

(assert (=> bs!1644584 m!7270368))

(assert (=> b!6481378 d!2033757))

(declare-fun d!2033759 () Bool)

(declare-fun c!1187474 () Bool)

(assert (=> d!2033759 (= c!1187474 (isEmpty!37436 lt!2386675))))

(declare-fun e!3928859 () Bool)

(assert (=> d!2033759 (= (matchZipper!2370 (set.insert (Context!11485 (++!14426 lt!2386652 lt!2386673)) (as set.empty (Set Context!11484))) lt!2386675) e!3928859)))

(declare-fun b!6482045 () Bool)

(assert (=> b!6482045 (= e!3928859 (nullableZipper!2117 (set.insert (Context!11485 (++!14426 lt!2386652 lt!2386673)) (as set.empty (Set Context!11484)))))))

(declare-fun b!6482046 () Bool)

(assert (=> b!6482046 (= e!3928859 (matchZipper!2370 (derivationStepZipper!2324 (set.insert (Context!11485 (++!14426 lt!2386652 lt!2386673)) (as set.empty (Set Context!11484))) (head!13195 lt!2386675)) (tail!12280 lt!2386675)))))

(assert (= (and d!2033759 c!1187474) b!6482045))

(assert (= (and d!2033759 (not c!1187474)) b!6482046))

(declare-fun m!7270370 () Bool)

(assert (=> d!2033759 m!7270370))

(assert (=> b!6482045 m!7269606))

(declare-fun m!7270372 () Bool)

(assert (=> b!6482045 m!7270372))

(declare-fun m!7270374 () Bool)

(assert (=> b!6482046 m!7270374))

(assert (=> b!6482046 m!7269606))

(assert (=> b!6482046 m!7270374))

(declare-fun m!7270376 () Bool)

(assert (=> b!6482046 m!7270376))

(declare-fun m!7270378 () Bool)

(assert (=> b!6482046 m!7270378))

(assert (=> b!6482046 m!7270376))

(assert (=> b!6482046 m!7270378))

(declare-fun m!7270380 () Bool)

(assert (=> b!6482046 m!7270380))

(assert (=> b!6481378 d!2033759))

(declare-fun bm!561052 () Bool)

(declare-fun call!561059 () Bool)

(declare-fun call!561058 () Bool)

(assert (=> bm!561052 (= call!561059 call!561058)))

(declare-fun b!6482047 () Bool)

(declare-fun e!3928863 () Bool)

(assert (=> b!6482047 (= e!3928863 call!561059)))

(declare-fun b!6482048 () Bool)

(declare-fun e!3928865 () Bool)

(declare-fun e!3928864 () Bool)

(assert (=> b!6482048 (= e!3928865 e!3928864)))

(declare-fun c!1187475 () Bool)

(assert (=> b!6482048 (= c!1187475 (is-Star!16358 (reg!16687 (regOne!33228 r!7292))))))

(declare-fun b!6482049 () Bool)

(declare-fun res!2661718 () Bool)

(declare-fun e!3928866 () Bool)

(assert (=> b!6482049 (=> res!2661718 e!3928866)))

(assert (=> b!6482049 (= res!2661718 (not (is-Concat!25203 (reg!16687 (regOne!33228 r!7292)))))))

(declare-fun e!3928861 () Bool)

(assert (=> b!6482049 (= e!3928861 e!3928866)))

(declare-fun b!6482050 () Bool)

(declare-fun e!3928860 () Bool)

(assert (=> b!6482050 (= e!3928864 e!3928860)))

(declare-fun res!2661716 () Bool)

(assert (=> b!6482050 (= res!2661716 (not (nullable!6351 (reg!16687 (reg!16687 (regOne!33228 r!7292))))))))

(assert (=> b!6482050 (=> (not res!2661716) (not e!3928860))))

(declare-fun b!6482051 () Bool)

(assert (=> b!6482051 (= e!3928860 call!561058)))

(declare-fun b!6482052 () Bool)

(declare-fun e!3928862 () Bool)

(assert (=> b!6482052 (= e!3928862 call!561059)))

(declare-fun b!6482053 () Bool)

(assert (=> b!6482053 (= e!3928866 e!3928863)))

(declare-fun res!2661714 () Bool)

(assert (=> b!6482053 (=> (not res!2661714) (not e!3928863))))

(declare-fun call!561057 () Bool)

(assert (=> b!6482053 (= res!2661714 call!561057)))

(declare-fun d!2033761 () Bool)

(declare-fun res!2661715 () Bool)

(assert (=> d!2033761 (=> res!2661715 e!3928865)))

(assert (=> d!2033761 (= res!2661715 (is-ElementMatch!16358 (reg!16687 (regOne!33228 r!7292))))))

(assert (=> d!2033761 (= (validRegex!8094 (reg!16687 (regOne!33228 r!7292))) e!3928865)))

(declare-fun b!6482054 () Bool)

(declare-fun res!2661717 () Bool)

(assert (=> b!6482054 (=> (not res!2661717) (not e!3928862))))

(assert (=> b!6482054 (= res!2661717 call!561057)))

(assert (=> b!6482054 (= e!3928861 e!3928862)))

(declare-fun bm!561053 () Bool)

(declare-fun c!1187476 () Bool)

(assert (=> bm!561053 (= call!561057 (validRegex!8094 (ite c!1187476 (regOne!33229 (reg!16687 (regOne!33228 r!7292))) (regOne!33228 (reg!16687 (regOne!33228 r!7292))))))))

(declare-fun bm!561054 () Bool)

(assert (=> bm!561054 (= call!561058 (validRegex!8094 (ite c!1187475 (reg!16687 (reg!16687 (regOne!33228 r!7292))) (ite c!1187476 (regTwo!33229 (reg!16687 (regOne!33228 r!7292))) (regTwo!33228 (reg!16687 (regOne!33228 r!7292)))))))))

(declare-fun b!6482055 () Bool)

(assert (=> b!6482055 (= e!3928864 e!3928861)))

(assert (=> b!6482055 (= c!1187476 (is-Union!16358 (reg!16687 (regOne!33228 r!7292))))))

(assert (= (and d!2033761 (not res!2661715)) b!6482048))

(assert (= (and b!6482048 c!1187475) b!6482050))

(assert (= (and b!6482048 (not c!1187475)) b!6482055))

(assert (= (and b!6482050 res!2661716) b!6482051))

(assert (= (and b!6482055 c!1187476) b!6482054))

(assert (= (and b!6482055 (not c!1187476)) b!6482049))

(assert (= (and b!6482054 res!2661717) b!6482052))

(assert (= (and b!6482049 (not res!2661718)) b!6482053))

(assert (= (and b!6482053 res!2661714) b!6482047))

(assert (= (or b!6482052 b!6482047) bm!561052))

(assert (= (or b!6482054 b!6482053) bm!561053))

(assert (= (or b!6482051 bm!561052) bm!561054))

(declare-fun m!7270382 () Bool)

(assert (=> b!6482050 m!7270382))

(declare-fun m!7270384 () Bool)

(assert (=> bm!561053 m!7270384))

(declare-fun m!7270386 () Bool)

(assert (=> bm!561054 m!7270386))

(assert (=> b!6481378 d!2033761))

(declare-fun d!2033763 () Bool)

(assert (=> d!2033763 (matchR!8541 (Star!16358 (reg!16687 (regOne!33228 r!7292))) (++!14427 (_1!36640 lt!2386648) (_2!36640 lt!2386648)))))

(declare-fun lt!2386954 () Unit!158763)

(declare-fun choose!48068 (Regex!16358 List!65373 List!65373) Unit!158763)

(assert (=> d!2033763 (= lt!2386954 (choose!48068 (reg!16687 (regOne!33228 r!7292)) (_1!36640 lt!2386648) (_2!36640 lt!2386648)))))

(assert (=> d!2033763 (validRegex!8094 (Star!16358 (reg!16687 (regOne!33228 r!7292))))))

(assert (=> d!2033763 (= (lemmaStarApp!135 (reg!16687 (regOne!33228 r!7292)) (_1!36640 lt!2386648) (_2!36640 lt!2386648)) lt!2386954)))

(declare-fun bs!1644585 () Bool)

(assert (= bs!1644585 d!2033763))

(assert (=> bs!1644585 m!7269706))

(assert (=> bs!1644585 m!7269706))

(declare-fun m!7270388 () Bool)

(assert (=> bs!1644585 m!7270388))

(declare-fun m!7270390 () Bool)

(assert (=> bs!1644585 m!7270390))

(declare-fun m!7270392 () Bool)

(assert (=> bs!1644585 m!7270392))

(assert (=> b!6481378 d!2033763))

(declare-fun b!6482080 () Bool)

(declare-fun res!2661732 () Bool)

(declare-fun e!3928878 () Bool)

(assert (=> b!6482080 (=> (not res!2661732) (not e!3928878))))

(declare-fun lt!2386958 () List!65374)

(declare-fun size!40414 (List!65374) Int)

(assert (=> b!6482080 (= res!2661732 (= (size!40414 lt!2386958) (+ (size!40414 lt!2386652) (size!40414 lt!2386673))))))

(declare-fun b!6482081 () Bool)

(assert (=> b!6482081 (= e!3928878 (or (not (= lt!2386673 Nil!65250)) (= lt!2386958 lt!2386652)))))

(declare-fun b!6482079 () Bool)

(declare-fun e!3928879 () List!65374)

(assert (=> b!6482079 (= e!3928879 (Cons!65250 (h!71698 lt!2386652) (++!14426 (t!379000 lt!2386652) lt!2386673)))))

(declare-fun d!2033765 () Bool)

(assert (=> d!2033765 e!3928878))

(declare-fun res!2661731 () Bool)

(assert (=> d!2033765 (=> (not res!2661731) (not e!3928878))))

(declare-fun content!12422 (List!65374) (Set Regex!16358))

(assert (=> d!2033765 (= res!2661731 (= (content!12422 lt!2386958) (set.union (content!12422 lt!2386652) (content!12422 lt!2386673))))))

(assert (=> d!2033765 (= lt!2386958 e!3928879)))

(declare-fun c!1187482 () Bool)

(assert (=> d!2033765 (= c!1187482 (is-Nil!65250 lt!2386652))))

(assert (=> d!2033765 (= (++!14426 lt!2386652 lt!2386673) lt!2386958)))

(declare-fun b!6482078 () Bool)

(assert (=> b!6482078 (= e!3928879 lt!2386673)))

(assert (= (and d!2033765 c!1187482) b!6482078))

(assert (= (and d!2033765 (not c!1187482)) b!6482079))

(assert (= (and d!2033765 res!2661731) b!6482080))

(assert (= (and b!6482080 res!2661732) b!6482081))

(declare-fun m!7270408 () Bool)

(assert (=> b!6482080 m!7270408))

(declare-fun m!7270410 () Bool)

(assert (=> b!6482080 m!7270410))

(declare-fun m!7270412 () Bool)

(assert (=> b!6482080 m!7270412))

(declare-fun m!7270414 () Bool)

(assert (=> b!6482079 m!7270414))

(declare-fun m!7270416 () Bool)

(assert (=> d!2033765 m!7270416))

(declare-fun m!7270418 () Bool)

(assert (=> d!2033765 m!7270418))

(declare-fun m!7270420 () Bool)

(assert (=> d!2033765 m!7270420))

(assert (=> b!6481378 d!2033765))

(declare-fun b!6482082 () Bool)

(declare-fun res!2661736 () Bool)

(declare-fun e!3928881 () Bool)

(assert (=> b!6482082 (=> (not res!2661736) (not e!3928881))))

(assert (=> b!6482082 (= res!2661736 (isEmpty!37436 (tail!12280 lt!2386680)))))

(declare-fun b!6482083 () Bool)

(assert (=> b!6482083 (= e!3928881 (= (head!13195 lt!2386680) (c!1187340 lt!2386701)))))

(declare-fun b!6482084 () Bool)

(declare-fun res!2661738 () Bool)

(assert (=> b!6482084 (=> (not res!2661738) (not e!3928881))))

(declare-fun call!561061 () Bool)

(assert (=> b!6482084 (= res!2661738 (not call!561061))))

(declare-fun b!6482086 () Bool)

(declare-fun e!3928885 () Bool)

(declare-fun lt!2386959 () Bool)

(assert (=> b!6482086 (= e!3928885 (not lt!2386959))))

(declare-fun b!6482087 () Bool)

(declare-fun e!3928886 () Bool)

(declare-fun e!3928883 () Bool)

(assert (=> b!6482087 (= e!3928886 e!3928883)))

(declare-fun res!2661737 () Bool)

(assert (=> b!6482087 (=> res!2661737 e!3928883)))

(assert (=> b!6482087 (= res!2661737 call!561061)))

(declare-fun b!6482088 () Bool)

(declare-fun e!3928884 () Bool)

(assert (=> b!6482088 (= e!3928884 (nullable!6351 lt!2386701))))

(declare-fun b!6482085 () Bool)

(declare-fun e!3928882 () Bool)

(assert (=> b!6482085 (= e!3928882 (= lt!2386959 call!561061))))

(declare-fun d!2033769 () Bool)

(assert (=> d!2033769 e!3928882))

(declare-fun c!1187484 () Bool)

(assert (=> d!2033769 (= c!1187484 (is-EmptyExpr!16358 lt!2386701))))

(assert (=> d!2033769 (= lt!2386959 e!3928884)))

(declare-fun c!1187485 () Bool)

(assert (=> d!2033769 (= c!1187485 (isEmpty!37436 lt!2386680))))

(assert (=> d!2033769 (validRegex!8094 lt!2386701)))

(assert (=> d!2033769 (= (matchR!8541 lt!2386701 lt!2386680) lt!2386959)))

(declare-fun b!6482089 () Bool)

(assert (=> b!6482089 (= e!3928883 (not (= (head!13195 lt!2386680) (c!1187340 lt!2386701))))))

(declare-fun b!6482090 () Bool)

(declare-fun e!3928880 () Bool)

(assert (=> b!6482090 (= e!3928880 e!3928886)))

(declare-fun res!2661740 () Bool)

(assert (=> b!6482090 (=> (not res!2661740) (not e!3928886))))

(assert (=> b!6482090 (= res!2661740 (not lt!2386959))))

(declare-fun b!6482091 () Bool)

(declare-fun res!2661733 () Bool)

(assert (=> b!6482091 (=> res!2661733 e!3928883)))

(assert (=> b!6482091 (= res!2661733 (not (isEmpty!37436 (tail!12280 lt!2386680))))))

(declare-fun b!6482092 () Bool)

(assert (=> b!6482092 (= e!3928882 e!3928885)))

(declare-fun c!1187483 () Bool)

(assert (=> b!6482092 (= c!1187483 (is-EmptyLang!16358 lt!2386701))))

(declare-fun bm!561056 () Bool)

(assert (=> bm!561056 (= call!561061 (isEmpty!37436 lt!2386680))))

(declare-fun b!6482093 () Bool)

(declare-fun res!2661734 () Bool)

(assert (=> b!6482093 (=> res!2661734 e!3928880)))

(assert (=> b!6482093 (= res!2661734 (not (is-ElementMatch!16358 lt!2386701)))))

(assert (=> b!6482093 (= e!3928885 e!3928880)))

(declare-fun b!6482094 () Bool)

(assert (=> b!6482094 (= e!3928884 (matchR!8541 (derivativeStep!5056 lt!2386701 (head!13195 lt!2386680)) (tail!12280 lt!2386680)))))

(declare-fun b!6482095 () Bool)

(declare-fun res!2661735 () Bool)

(assert (=> b!6482095 (=> res!2661735 e!3928880)))

(assert (=> b!6482095 (= res!2661735 e!3928881)))

(declare-fun res!2661739 () Bool)

(assert (=> b!6482095 (=> (not res!2661739) (not e!3928881))))

(assert (=> b!6482095 (= res!2661739 lt!2386959)))

(assert (= (and d!2033769 c!1187485) b!6482088))

(assert (= (and d!2033769 (not c!1187485)) b!6482094))

(assert (= (and d!2033769 c!1187484) b!6482085))

(assert (= (and d!2033769 (not c!1187484)) b!6482092))

(assert (= (and b!6482092 c!1187483) b!6482086))

(assert (= (and b!6482092 (not c!1187483)) b!6482093))

(assert (= (and b!6482093 (not res!2661734)) b!6482095))

(assert (= (and b!6482095 res!2661739) b!6482084))

(assert (= (and b!6482084 res!2661738) b!6482082))

(assert (= (and b!6482082 res!2661736) b!6482083))

(assert (= (and b!6482095 (not res!2661735)) b!6482090))

(assert (= (and b!6482090 res!2661740) b!6482087))

(assert (= (and b!6482087 (not res!2661737)) b!6482091))

(assert (= (and b!6482091 (not res!2661733)) b!6482089))

(assert (= (or b!6482085 b!6482084 b!6482087) bm!561056))

(declare-fun m!7270422 () Bool)

(assert (=> b!6482083 m!7270422))

(declare-fun m!7270424 () Bool)

(assert (=> b!6482082 m!7270424))

(assert (=> b!6482082 m!7270424))

(declare-fun m!7270426 () Bool)

(assert (=> b!6482082 m!7270426))

(declare-fun m!7270428 () Bool)

(assert (=> bm!561056 m!7270428))

(assert (=> b!6482089 m!7270422))

(assert (=> b!6482091 m!7270424))

(assert (=> b!6482091 m!7270424))

(assert (=> b!6482091 m!7270426))

(assert (=> b!6482094 m!7270422))

(assert (=> b!6482094 m!7270422))

(declare-fun m!7270430 () Bool)

(assert (=> b!6482094 m!7270430))

(assert (=> b!6482094 m!7270424))

(assert (=> b!6482094 m!7270430))

(assert (=> b!6482094 m!7270424))

(declare-fun m!7270432 () Bool)

(assert (=> b!6482094 m!7270432))

(assert (=> d!2033769 m!7270428))

(assert (=> d!2033769 m!7269972))

(assert (=> b!6482088 m!7269974))

(assert (=> b!6481378 d!2033769))

(declare-fun d!2033771 () Bool)

(declare-fun c!1187486 () Bool)

(assert (=> d!2033771 (= c!1187486 (isEmpty!37436 (_1!36640 lt!2386648)))))

(declare-fun e!3928887 () Bool)

(assert (=> d!2033771 (= (matchZipper!2370 lt!2386685 (_1!36640 lt!2386648)) e!3928887)))

(declare-fun b!6482096 () Bool)

(assert (=> b!6482096 (= e!3928887 (nullableZipper!2117 lt!2386685))))

(declare-fun b!6482097 () Bool)

(assert (=> b!6482097 (= e!3928887 (matchZipper!2370 (derivationStepZipper!2324 lt!2386685 (head!13195 (_1!36640 lt!2386648))) (tail!12280 (_1!36640 lt!2386648))))))

(assert (= (and d!2033771 c!1187486) b!6482096))

(assert (= (and d!2033771 (not c!1187486)) b!6482097))

(assert (=> d!2033771 m!7270160))

(declare-fun m!7270434 () Bool)

(assert (=> b!6482096 m!7270434))

(assert (=> b!6482097 m!7270154))

(assert (=> b!6482097 m!7270154))

(declare-fun m!7270436 () Bool)

(assert (=> b!6482097 m!7270436))

(assert (=> b!6482097 m!7270156))

(assert (=> b!6482097 m!7270436))

(assert (=> b!6482097 m!7270156))

(declare-fun m!7270438 () Bool)

(assert (=> b!6482097 m!7270438))

(assert (=> b!6481378 d!2033771))

(declare-fun b!6482098 () Bool)

(declare-fun res!2661744 () Bool)

(declare-fun e!3928889 () Bool)

(assert (=> b!6482098 (=> (not res!2661744) (not e!3928889))))

(assert (=> b!6482098 (= res!2661744 (isEmpty!37436 (tail!12280 lt!2386659)))))

(declare-fun b!6482099 () Bool)

(assert (=> b!6482099 (= e!3928889 (= (head!13195 lt!2386659) (c!1187340 lt!2386666)))))

(declare-fun b!6482100 () Bool)

(declare-fun res!2661746 () Bool)

(assert (=> b!6482100 (=> (not res!2661746) (not e!3928889))))

(declare-fun call!561062 () Bool)

(assert (=> b!6482100 (= res!2661746 (not call!561062))))

(declare-fun b!6482102 () Bool)

(declare-fun e!3928893 () Bool)

(declare-fun lt!2386960 () Bool)

(assert (=> b!6482102 (= e!3928893 (not lt!2386960))))

(declare-fun b!6482103 () Bool)

(declare-fun e!3928894 () Bool)

(declare-fun e!3928891 () Bool)

(assert (=> b!6482103 (= e!3928894 e!3928891)))

(declare-fun res!2661745 () Bool)

(assert (=> b!6482103 (=> res!2661745 e!3928891)))

(assert (=> b!6482103 (= res!2661745 call!561062)))

(declare-fun b!6482104 () Bool)

(declare-fun e!3928892 () Bool)

(assert (=> b!6482104 (= e!3928892 (nullable!6351 lt!2386666))))

(declare-fun b!6482101 () Bool)

(declare-fun e!3928890 () Bool)

(assert (=> b!6482101 (= e!3928890 (= lt!2386960 call!561062))))

(declare-fun d!2033773 () Bool)

(assert (=> d!2033773 e!3928890))

(declare-fun c!1187488 () Bool)

(assert (=> d!2033773 (= c!1187488 (is-EmptyExpr!16358 lt!2386666))))

(assert (=> d!2033773 (= lt!2386960 e!3928892)))

(declare-fun c!1187489 () Bool)

(assert (=> d!2033773 (= c!1187489 (isEmpty!37436 lt!2386659))))

(assert (=> d!2033773 (validRegex!8094 lt!2386666)))

(assert (=> d!2033773 (= (matchR!8541 lt!2386666 lt!2386659) lt!2386960)))

(declare-fun b!6482105 () Bool)

(assert (=> b!6482105 (= e!3928891 (not (= (head!13195 lt!2386659) (c!1187340 lt!2386666))))))

(declare-fun b!6482106 () Bool)

(declare-fun e!3928888 () Bool)

(assert (=> b!6482106 (= e!3928888 e!3928894)))

(declare-fun res!2661748 () Bool)

(assert (=> b!6482106 (=> (not res!2661748) (not e!3928894))))

(assert (=> b!6482106 (= res!2661748 (not lt!2386960))))

(declare-fun b!6482107 () Bool)

(declare-fun res!2661741 () Bool)

(assert (=> b!6482107 (=> res!2661741 e!3928891)))

(assert (=> b!6482107 (= res!2661741 (not (isEmpty!37436 (tail!12280 lt!2386659))))))

(declare-fun b!6482108 () Bool)

(assert (=> b!6482108 (= e!3928890 e!3928893)))

(declare-fun c!1187487 () Bool)

(assert (=> b!6482108 (= c!1187487 (is-EmptyLang!16358 lt!2386666))))

(declare-fun bm!561057 () Bool)

(assert (=> bm!561057 (= call!561062 (isEmpty!37436 lt!2386659))))

(declare-fun b!6482109 () Bool)

(declare-fun res!2661742 () Bool)

(assert (=> b!6482109 (=> res!2661742 e!3928888)))

(assert (=> b!6482109 (= res!2661742 (not (is-ElementMatch!16358 lt!2386666)))))

(assert (=> b!6482109 (= e!3928893 e!3928888)))

(declare-fun b!6482110 () Bool)

(assert (=> b!6482110 (= e!3928892 (matchR!8541 (derivativeStep!5056 lt!2386666 (head!13195 lt!2386659)) (tail!12280 lt!2386659)))))

(declare-fun b!6482111 () Bool)

(declare-fun res!2661743 () Bool)

(assert (=> b!6482111 (=> res!2661743 e!3928888)))

(assert (=> b!6482111 (= res!2661743 e!3928889)))

(declare-fun res!2661747 () Bool)

(assert (=> b!6482111 (=> (not res!2661747) (not e!3928889))))

(assert (=> b!6482111 (= res!2661747 lt!2386960)))

(assert (= (and d!2033773 c!1187489) b!6482104))

(assert (= (and d!2033773 (not c!1187489)) b!6482110))

(assert (= (and d!2033773 c!1187488) b!6482101))

(assert (= (and d!2033773 (not c!1187488)) b!6482108))

(assert (= (and b!6482108 c!1187487) b!6482102))

(assert (= (and b!6482108 (not c!1187487)) b!6482109))

(assert (= (and b!6482109 (not res!2661742)) b!6482111))

(assert (= (and b!6482111 res!2661747) b!6482100))

(assert (= (and b!6482100 res!2661746) b!6482098))

(assert (= (and b!6482098 res!2661744) b!6482099))

(assert (= (and b!6482111 (not res!2661743)) b!6482106))

(assert (= (and b!6482106 res!2661748) b!6482103))

(assert (= (and b!6482103 (not res!2661745)) b!6482107))

(assert (= (and b!6482107 (not res!2661741)) b!6482105))

(assert (= (or b!6482101 b!6482100 b!6482103) bm!561057))

(declare-fun m!7270440 () Bool)

(assert (=> b!6482099 m!7270440))

(declare-fun m!7270442 () Bool)

(assert (=> b!6482098 m!7270442))

(assert (=> b!6482098 m!7270442))

(declare-fun m!7270444 () Bool)

(assert (=> b!6482098 m!7270444))

(declare-fun m!7270446 () Bool)

(assert (=> bm!561057 m!7270446))

(assert (=> b!6482105 m!7270440))

(assert (=> b!6482107 m!7270442))

(assert (=> b!6482107 m!7270442))

(assert (=> b!6482107 m!7270444))

(assert (=> b!6482110 m!7270440))

(assert (=> b!6482110 m!7270440))

(declare-fun m!7270448 () Bool)

(assert (=> b!6482110 m!7270448))

(assert (=> b!6482110 m!7270442))

(assert (=> b!6482110 m!7270448))

(assert (=> b!6482110 m!7270442))

(declare-fun m!7270450 () Bool)

(assert (=> b!6482110 m!7270450))

(assert (=> d!2033773 m!7270446))

(assert (=> d!2033773 m!7269668))

(declare-fun m!7270452 () Bool)

(assert (=> b!6482104 m!7270452))

(assert (=> b!6481378 d!2033773))

(declare-fun d!2033775 () Bool)

(declare-fun c!1187492 () Bool)

(assert (=> d!2033775 (= c!1187492 (isEmpty!37436 lt!2386659))))

(declare-fun e!3928897 () Bool)

(assert (=> d!2033775 (= (matchZipper!2370 lt!2386682 lt!2386659) e!3928897)))

(declare-fun b!6482116 () Bool)

(assert (=> b!6482116 (= e!3928897 (nullableZipper!2117 lt!2386682))))

(declare-fun b!6482117 () Bool)

(assert (=> b!6482117 (= e!3928897 (matchZipper!2370 (derivationStepZipper!2324 lt!2386682 (head!13195 lt!2386659)) (tail!12280 lt!2386659)))))

(assert (= (and d!2033775 c!1187492) b!6482116))

(assert (= (and d!2033775 (not c!1187492)) b!6482117))

(assert (=> d!2033775 m!7270446))

(declare-fun m!7270454 () Bool)

(assert (=> b!6482116 m!7270454))

(assert (=> b!6482117 m!7270440))

(assert (=> b!6482117 m!7270440))

(declare-fun m!7270456 () Bool)

(assert (=> b!6482117 m!7270456))

(assert (=> b!6482117 m!7270442))

(assert (=> b!6482117 m!7270456))

(assert (=> b!6482117 m!7270442))

(declare-fun m!7270458 () Bool)

(assert (=> b!6482117 m!7270458))

(assert (=> b!6481378 d!2033775))

(declare-fun bs!1644587 () Bool)

(declare-fun d!2033777 () Bool)

(assert (= bs!1644587 (and d!2033777 b!6481378)))

(declare-fun lambda!358535 () Int)

(assert (=> bs!1644587 (= lambda!358535 lambda!358449)))

(declare-fun bs!1644588 () Bool)

(assert (= bs!1644588 (and d!2033777 d!2033697)))

(assert (=> bs!1644588 (= lambda!358535 lambda!358522)))

(declare-fun bs!1644589 () Bool)

(assert (= bs!1644589 (and d!2033777 d!2033707)))

(assert (=> bs!1644589 (= lambda!358535 lambda!358525)))

(declare-fun bs!1644590 () Bool)

(assert (= bs!1644590 (and d!2033777 d!2033741)))

(assert (=> bs!1644590 (= lambda!358535 lambda!358532)))

(assert (=> d!2033777 (matchZipper!2370 (set.insert (Context!11485 (++!14426 (exprs!6242 lt!2386653) (exprs!6242 lt!2386651))) (as set.empty (Set Context!11484))) (++!14427 (_1!36640 lt!2386648) lt!2386659))))

(declare-fun lt!2386969 () Unit!158763)

(assert (=> d!2033777 (= lt!2386969 (lemmaConcatPreservesForall!337 (exprs!6242 lt!2386653) (exprs!6242 lt!2386651) lambda!358535))))

(declare-fun lt!2386968 () Unit!158763)

(declare-fun choose!48072 (Context!11484 Context!11484 List!65373 List!65373) Unit!158763)

(assert (=> d!2033777 (= lt!2386968 (choose!48072 lt!2386653 lt!2386651 (_1!36640 lt!2386648) lt!2386659))))

(assert (=> d!2033777 (matchZipper!2370 (set.insert lt!2386653 (as set.empty (Set Context!11484))) (_1!36640 lt!2386648))))

(assert (=> d!2033777 (= (lemmaConcatenateContextMatchesConcatOfStrings!159 lt!2386653 lt!2386651 (_1!36640 lt!2386648) lt!2386659) lt!2386968)))

(declare-fun bs!1644591 () Bool)

(assert (= bs!1644591 d!2033777))

(assert (=> bs!1644591 m!7269670))

(declare-fun m!7270484 () Bool)

(assert (=> bs!1644591 m!7270484))

(assert (=> bs!1644591 m!7269644))

(declare-fun m!7270486 () Bool)

(assert (=> bs!1644591 m!7270486))

(declare-fun m!7270488 () Bool)

(assert (=> bs!1644591 m!7270488))

(declare-fun m!7270490 () Bool)

(assert (=> bs!1644591 m!7270490))

(declare-fun m!7270492 () Bool)

(assert (=> bs!1644591 m!7270492))

(assert (=> bs!1644591 m!7269644))

(assert (=> bs!1644591 m!7270484))

(assert (=> bs!1644591 m!7269670))

(declare-fun m!7270494 () Bool)

(assert (=> bs!1644591 m!7270494))

(assert (=> b!6481378 d!2033777))

(declare-fun d!2033785 () Bool)

(assert (=> d!2033785 (= (matchR!8541 (reg!16687 (regOne!33228 r!7292)) (_1!36640 lt!2386648)) (matchZipper!2370 lt!2386685 (_1!36640 lt!2386648)))))

(declare-fun lt!2386973 () Unit!158763)

(assert (=> d!2033785 (= lt!2386973 (choose!48066 lt!2386685 lt!2386677 (reg!16687 (regOne!33228 r!7292)) (_1!36640 lt!2386648)))))

(assert (=> d!2033785 (validRegex!8094 (reg!16687 (regOne!33228 r!7292)))))

(assert (=> d!2033785 (= (theoremZipperRegexEquiv!824 lt!2386685 lt!2386677 (reg!16687 (regOne!33228 r!7292)) (_1!36640 lt!2386648)) lt!2386973)))

(declare-fun bs!1644593 () Bool)

(assert (= bs!1644593 d!2033785))

(assert (=> bs!1644593 m!7269734))

(assert (=> bs!1644593 m!7269584))

(declare-fun m!7270498 () Bool)

(assert (=> bs!1644593 m!7270498))

(assert (=> bs!1644593 m!7269582))

(assert (=> b!6481378 d!2033785))

(declare-fun d!2033789 () Bool)

(assert (=> d!2033789 (matchR!8541 (Concat!25203 lt!2386701 (regTwo!33228 r!7292)) (++!14427 (_2!36640 lt!2386648) (_2!36640 lt!2386691)))))

(declare-fun lt!2386979 () Unit!158763)

(declare-fun choose!48073 (Regex!16358 Regex!16358 List!65373 List!65373) Unit!158763)

(assert (=> d!2033789 (= lt!2386979 (choose!48073 lt!2386701 (regTwo!33228 r!7292) (_2!36640 lt!2386648) (_2!36640 lt!2386691)))))

(declare-fun e!3928905 () Bool)

(assert (=> d!2033789 e!3928905))

(declare-fun res!2661753 () Bool)

(assert (=> d!2033789 (=> (not res!2661753) (not e!3928905))))

(assert (=> d!2033789 (= res!2661753 (validRegex!8094 lt!2386701))))

(assert (=> d!2033789 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!321 lt!2386701 (regTwo!33228 r!7292) (_2!36640 lt!2386648) (_2!36640 lt!2386691)) lt!2386979)))

(declare-fun b!6482128 () Bool)

(assert (=> b!6482128 (= e!3928905 (validRegex!8094 (regTwo!33228 r!7292)))))

(assert (= (and d!2033789 res!2661753) b!6482128))

(assert (=> d!2033789 m!7269674))

(assert (=> d!2033789 m!7269674))

(declare-fun m!7270514 () Bool)

(assert (=> d!2033789 m!7270514))

(declare-fun m!7270516 () Bool)

(assert (=> d!2033789 m!7270516))

(assert (=> d!2033789 m!7269972))

(assert (=> b!6482128 m!7270332))

(assert (=> b!6481378 d!2033789))

(declare-fun d!2033795 () Bool)

(assert (=> d!2033795 (= (flatMap!1863 lt!2386674 lambda!358443) (choose!48061 lt!2386674 lambda!358443))))

(declare-fun bs!1644595 () Bool)

(assert (= bs!1644595 d!2033795))

(declare-fun m!7270518 () Bool)

(assert (=> bs!1644595 m!7270518))

(assert (=> b!6481418 d!2033795))

(declare-fun b!6482130 () Bool)

(declare-fun e!3928909 () (Set Context!11484))

(assert (=> b!6482130 (= e!3928909 (as set.empty (Set Context!11484)))))

(declare-fun b!6482131 () Bool)

(declare-fun call!561063 () (Set Context!11484))

(assert (=> b!6482131 (= e!3928909 call!561063)))

(declare-fun e!3928907 () (Set Context!11484))

(declare-fun b!6482132 () Bool)

(assert (=> b!6482132 (= e!3928907 (set.union call!561063 (derivationStepZipperUp!1532 (Context!11485 (t!379000 (exprs!6242 lt!2386662))) (h!71697 s!2326))))))

(declare-fun d!2033797 () Bool)

(declare-fun c!1187497 () Bool)

(declare-fun e!3928908 () Bool)

(assert (=> d!2033797 (= c!1187497 e!3928908)))

(declare-fun res!2661755 () Bool)

(assert (=> d!2033797 (=> (not res!2661755) (not e!3928908))))

(assert (=> d!2033797 (= res!2661755 (is-Cons!65250 (exprs!6242 lt!2386662)))))

(assert (=> d!2033797 (= (derivationStepZipperUp!1532 lt!2386662 (h!71697 s!2326)) e!3928907)))

(declare-fun b!6482133 () Bool)

(assert (=> b!6482133 (= e!3928907 e!3928909)))

(declare-fun c!1187496 () Bool)

(assert (=> b!6482133 (= c!1187496 (is-Cons!65250 (exprs!6242 lt!2386662)))))

(declare-fun bm!561058 () Bool)

(assert (=> bm!561058 (= call!561063 (derivationStepZipperDown!1606 (h!71698 (exprs!6242 lt!2386662)) (Context!11485 (t!379000 (exprs!6242 lt!2386662))) (h!71697 s!2326)))))

(declare-fun b!6482134 () Bool)

(assert (=> b!6482134 (= e!3928908 (nullable!6351 (h!71698 (exprs!6242 lt!2386662))))))

(assert (= (and d!2033797 res!2661755) b!6482134))

(assert (= (and d!2033797 c!1187497) b!6482132))

(assert (= (and d!2033797 (not c!1187497)) b!6482133))

(assert (= (and b!6482133 c!1187496) b!6482131))

(assert (= (and b!6482133 (not c!1187496)) b!6482130))

(assert (= (or b!6482132 b!6482131) bm!561058))

(declare-fun m!7270528 () Bool)

(assert (=> b!6482132 m!7270528))

(declare-fun m!7270530 () Bool)

(assert (=> bm!561058 m!7270530))

(declare-fun m!7270532 () Bool)

(assert (=> b!6482134 m!7270532))

(assert (=> b!6481418 d!2033797))

(declare-fun d!2033801 () Bool)

(assert (=> d!2033801 (= (flatMap!1863 lt!2386674 lambda!358443) (dynLambda!25921 lambda!358443 lt!2386662))))

(declare-fun lt!2386981 () Unit!158763)

(assert (=> d!2033801 (= lt!2386981 (choose!48060 lt!2386674 lt!2386662 lambda!358443))))

(assert (=> d!2033801 (= lt!2386674 (set.insert lt!2386662 (as set.empty (Set Context!11484))))))

(assert (=> d!2033801 (= (lemmaFlatMapOnSingletonSet!1389 lt!2386674 lt!2386662 lambda!358443) lt!2386981)))

(declare-fun b_lambda!245509 () Bool)

(assert (=> (not b_lambda!245509) (not d!2033801)))

(declare-fun bs!1644596 () Bool)

(assert (= bs!1644596 d!2033801))

(assert (=> bs!1644596 m!7269736))

(declare-fun m!7270534 () Bool)

(assert (=> bs!1644596 m!7270534))

(declare-fun m!7270536 () Bool)

(assert (=> bs!1644596 m!7270536))

(assert (=> bs!1644596 m!7269742))

(assert (=> b!6481418 d!2033801))

(declare-fun bs!1644597 () Bool)

(declare-fun d!2033803 () Bool)

(assert (= bs!1644597 (and d!2033803 b!6481403)))

(declare-fun lambda!358538 () Int)

(assert (=> bs!1644597 (= lambda!358538 lambda!358443)))

(assert (=> d!2033803 true))

(assert (=> d!2033803 (= (derivationStepZipper!2324 lt!2386674 (h!71697 s!2326)) (flatMap!1863 lt!2386674 lambda!358538))))

(declare-fun bs!1644598 () Bool)

(assert (= bs!1644598 d!2033803))

(declare-fun m!7270538 () Bool)

(assert (=> bs!1644598 m!7270538))

(assert (=> b!6481418 d!2033803))

(declare-fun d!2033805 () Bool)

(declare-fun lt!2386982 () Regex!16358)

(assert (=> d!2033805 (validRegex!8094 lt!2386982)))

(assert (=> d!2033805 (= lt!2386982 (generalisedUnion!2202 (unfocusZipperList!1779 (Cons!65251 lt!2386662 Nil!65251))))))

(assert (=> d!2033805 (= (unfocusZipper!2100 (Cons!65251 lt!2386662 Nil!65251)) lt!2386982)))

(declare-fun bs!1644599 () Bool)

(assert (= bs!1644599 d!2033805))

(declare-fun m!7270540 () Bool)

(assert (=> bs!1644599 m!7270540))

(declare-fun m!7270542 () Bool)

(assert (=> bs!1644599 m!7270542))

(assert (=> bs!1644599 m!7270542))

(declare-fun m!7270544 () Bool)

(assert (=> bs!1644599 m!7270544))

(assert (=> b!6481417 d!2033805))

(declare-fun d!2033807 () Bool)

(declare-fun e!3928933 () Bool)

(assert (=> d!2033807 (= (matchZipper!2370 (set.union lt!2386676 lt!2386694) (t!378999 s!2326)) e!3928933)))

(declare-fun res!2661773 () Bool)

(assert (=> d!2033807 (=> res!2661773 e!3928933)))

(assert (=> d!2033807 (= res!2661773 (matchZipper!2370 lt!2386676 (t!378999 s!2326)))))

(declare-fun lt!2386985 () Unit!158763)

(declare-fun choose!48075 ((Set Context!11484) (Set Context!11484) List!65373) Unit!158763)

(assert (=> d!2033807 (= lt!2386985 (choose!48075 lt!2386676 lt!2386694 (t!378999 s!2326)))))

(assert (=> d!2033807 (= (lemmaZipperConcatMatchesSameAsBothZippers!1189 lt!2386676 lt!2386694 (t!378999 s!2326)) lt!2386985)))

(declare-fun b!6482166 () Bool)

(assert (=> b!6482166 (= e!3928933 (matchZipper!2370 lt!2386694 (t!378999 s!2326)))))

(assert (= (and d!2033807 (not res!2661773)) b!6482166))

(assert (=> d!2033807 m!7269578))

(assert (=> d!2033807 m!7269576))

(declare-fun m!7270552 () Bool)

(assert (=> d!2033807 m!7270552))

(assert (=> b!6482166 m!7269766))

(assert (=> b!6481381 d!2033807))

(declare-fun d!2033811 () Bool)

(declare-fun c!1187506 () Bool)

(assert (=> d!2033811 (= c!1187506 (isEmpty!37436 (t!378999 s!2326)))))

(declare-fun e!3928934 () Bool)

(assert (=> d!2033811 (= (matchZipper!2370 lt!2386676 (t!378999 s!2326)) e!3928934)))

(declare-fun b!6482167 () Bool)

(assert (=> b!6482167 (= e!3928934 (nullableZipper!2117 lt!2386676))))

(declare-fun b!6482168 () Bool)

(assert (=> b!6482168 (= e!3928934 (matchZipper!2370 (derivationStepZipper!2324 lt!2386676 (head!13195 (t!378999 s!2326))) (tail!12280 (t!378999 s!2326))))))

(assert (= (and d!2033811 c!1187506) b!6482167))

(assert (= (and d!2033811 (not c!1187506)) b!6482168))

(assert (=> d!2033811 m!7270224))

(declare-fun m!7270554 () Bool)

(assert (=> b!6482167 m!7270554))

(assert (=> b!6482168 m!7270228))

(assert (=> b!6482168 m!7270228))

(declare-fun m!7270556 () Bool)

(assert (=> b!6482168 m!7270556))

(assert (=> b!6482168 m!7270232))

(assert (=> b!6482168 m!7270556))

(assert (=> b!6482168 m!7270232))

(declare-fun m!7270558 () Bool)

(assert (=> b!6482168 m!7270558))

(assert (=> b!6481381 d!2033811))

(declare-fun d!2033813 () Bool)

(declare-fun c!1187507 () Bool)

(assert (=> d!2033813 (= c!1187507 (isEmpty!37436 (t!378999 s!2326)))))

(declare-fun e!3928935 () Bool)

(assert (=> d!2033813 (= (matchZipper!2370 (set.union lt!2386676 lt!2386694) (t!378999 s!2326)) e!3928935)))

(declare-fun b!6482169 () Bool)

(assert (=> b!6482169 (= e!3928935 (nullableZipper!2117 (set.union lt!2386676 lt!2386694)))))

(declare-fun b!6482170 () Bool)

(assert (=> b!6482170 (= e!3928935 (matchZipper!2370 (derivationStepZipper!2324 (set.union lt!2386676 lt!2386694) (head!13195 (t!378999 s!2326))) (tail!12280 (t!378999 s!2326))))))

(assert (= (and d!2033813 c!1187507) b!6482169))

(assert (= (and d!2033813 (not c!1187507)) b!6482170))

(assert (=> d!2033813 m!7270224))

(declare-fun m!7270560 () Bool)

(assert (=> b!6482169 m!7270560))

(assert (=> b!6482170 m!7270228))

(assert (=> b!6482170 m!7270228))

(declare-fun m!7270562 () Bool)

(assert (=> b!6482170 m!7270562))

(assert (=> b!6482170 m!7270232))

(assert (=> b!6482170 m!7270562))

(assert (=> b!6482170 m!7270232))

(declare-fun m!7270564 () Bool)

(assert (=> b!6482170 m!7270564))

(assert (=> b!6481381 d!2033813))

(declare-fun b!6482171 () Bool)

(declare-fun res!2661777 () Bool)

(declare-fun e!3928937 () Bool)

(assert (=> b!6482171 (=> (not res!2661777) (not e!3928937))))

(assert (=> b!6482171 (= res!2661777 (isEmpty!37436 (tail!12280 s!2326)))))

(declare-fun b!6482172 () Bool)

(assert (=> b!6482172 (= e!3928937 (= (head!13195 s!2326) (c!1187340 lt!2386661)))))

(declare-fun b!6482173 () Bool)

(declare-fun res!2661779 () Bool)

(assert (=> b!6482173 (=> (not res!2661779) (not e!3928937))))

(declare-fun call!561073 () Bool)

(assert (=> b!6482173 (= res!2661779 (not call!561073))))

(declare-fun b!6482175 () Bool)

(declare-fun e!3928941 () Bool)

(declare-fun lt!2386986 () Bool)

(assert (=> b!6482175 (= e!3928941 (not lt!2386986))))

(declare-fun b!6482176 () Bool)

(declare-fun e!3928942 () Bool)

(declare-fun e!3928939 () Bool)

(assert (=> b!6482176 (= e!3928942 e!3928939)))

(declare-fun res!2661778 () Bool)

(assert (=> b!6482176 (=> res!2661778 e!3928939)))

(assert (=> b!6482176 (= res!2661778 call!561073)))

(declare-fun b!6482177 () Bool)

(declare-fun e!3928940 () Bool)

(assert (=> b!6482177 (= e!3928940 (nullable!6351 lt!2386661))))

(declare-fun b!6482174 () Bool)

(declare-fun e!3928938 () Bool)

(assert (=> b!6482174 (= e!3928938 (= lt!2386986 call!561073))))

(declare-fun d!2033815 () Bool)

(assert (=> d!2033815 e!3928938))

(declare-fun c!1187509 () Bool)

(assert (=> d!2033815 (= c!1187509 (is-EmptyExpr!16358 lt!2386661))))

(assert (=> d!2033815 (= lt!2386986 e!3928940)))

(declare-fun c!1187510 () Bool)

(assert (=> d!2033815 (= c!1187510 (isEmpty!37436 s!2326))))

(assert (=> d!2033815 (validRegex!8094 lt!2386661)))

(assert (=> d!2033815 (= (matchR!8541 lt!2386661 s!2326) lt!2386986)))

(declare-fun b!6482178 () Bool)

(assert (=> b!6482178 (= e!3928939 (not (= (head!13195 s!2326) (c!1187340 lt!2386661))))))

(declare-fun b!6482179 () Bool)

(declare-fun e!3928936 () Bool)

(assert (=> b!6482179 (= e!3928936 e!3928942)))

(declare-fun res!2661781 () Bool)

(assert (=> b!6482179 (=> (not res!2661781) (not e!3928942))))

(assert (=> b!6482179 (= res!2661781 (not lt!2386986))))

(declare-fun b!6482180 () Bool)

(declare-fun res!2661774 () Bool)

(assert (=> b!6482180 (=> res!2661774 e!3928939)))

(assert (=> b!6482180 (= res!2661774 (not (isEmpty!37436 (tail!12280 s!2326))))))

(declare-fun b!6482181 () Bool)

(assert (=> b!6482181 (= e!3928938 e!3928941)))

(declare-fun c!1187508 () Bool)

(assert (=> b!6482181 (= c!1187508 (is-EmptyLang!16358 lt!2386661))))

(declare-fun bm!561068 () Bool)

(assert (=> bm!561068 (= call!561073 (isEmpty!37436 s!2326))))

(declare-fun b!6482182 () Bool)

(declare-fun res!2661775 () Bool)

(assert (=> b!6482182 (=> res!2661775 e!3928936)))

(assert (=> b!6482182 (= res!2661775 (not (is-ElementMatch!16358 lt!2386661)))))

(assert (=> b!6482182 (= e!3928941 e!3928936)))

(declare-fun b!6482183 () Bool)

(assert (=> b!6482183 (= e!3928940 (matchR!8541 (derivativeStep!5056 lt!2386661 (head!13195 s!2326)) (tail!12280 s!2326)))))

(declare-fun b!6482184 () Bool)

(declare-fun res!2661776 () Bool)

(assert (=> b!6482184 (=> res!2661776 e!3928936)))

(assert (=> b!6482184 (= res!2661776 e!3928937)))

(declare-fun res!2661780 () Bool)

(assert (=> b!6482184 (=> (not res!2661780) (not e!3928937))))

(assert (=> b!6482184 (= res!2661780 lt!2386986)))

(assert (= (and d!2033815 c!1187510) b!6482177))

(assert (= (and d!2033815 (not c!1187510)) b!6482183))

(assert (= (and d!2033815 c!1187509) b!6482174))

(assert (= (and d!2033815 (not c!1187509)) b!6482181))

(assert (= (and b!6482181 c!1187508) b!6482175))

(assert (= (and b!6482181 (not c!1187508)) b!6482182))

(assert (= (and b!6482182 (not res!2661775)) b!6482184))

(assert (= (and b!6482184 res!2661780) b!6482173))

(assert (= (and b!6482173 res!2661779) b!6482171))

(assert (= (and b!6482171 res!2661777) b!6482172))

(assert (= (and b!6482184 (not res!2661776)) b!6482179))

(assert (= (and b!6482179 res!2661781) b!6482176))

(assert (= (and b!6482176 (not res!2661778)) b!6482180))

(assert (= (and b!6482180 (not res!2661774)) b!6482178))

(assert (= (or b!6482174 b!6482173 b!6482176) bm!561068))

(assert (=> b!6482172 m!7270140))

(assert (=> b!6482171 m!7270142))

(assert (=> b!6482171 m!7270142))

(assert (=> b!6482171 m!7270144))

(assert (=> bm!561068 m!7270134))

(assert (=> b!6482178 m!7270140))

(assert (=> b!6482180 m!7270142))

(assert (=> b!6482180 m!7270142))

(assert (=> b!6482180 m!7270144))

(assert (=> b!6482183 m!7270140))

(assert (=> b!6482183 m!7270140))

(declare-fun m!7270566 () Bool)

(assert (=> b!6482183 m!7270566))

(assert (=> b!6482183 m!7270142))

(assert (=> b!6482183 m!7270566))

(assert (=> b!6482183 m!7270142))

(declare-fun m!7270568 () Bool)

(assert (=> b!6482183 m!7270568))

(assert (=> d!2033815 m!7270134))

(declare-fun m!7270570 () Bool)

(assert (=> d!2033815 m!7270570))

(declare-fun m!7270572 () Bool)

(assert (=> b!6482177 m!7270572))

(assert (=> b!6481379 d!2033815))

(declare-fun bs!1644600 () Bool)

(declare-fun b!6482195 () Bool)

(assert (= bs!1644600 (and b!6482195 b!6481774)))

(declare-fun lambda!358539 () Int)

(assert (=> bs!1644600 (= (and (= s!2326 (_1!36640 lt!2386691)) (= (reg!16687 lt!2386661) (reg!16687 lt!2386701)) (= lt!2386661 lt!2386701)) (= lambda!358539 lambda!358513))))

(declare-fun bs!1644601 () Bool)

(assert (= bs!1644601 (and b!6482195 b!6481408)))

(assert (=> bs!1644601 (not (= lambda!358539 lambda!358441))))

(declare-fun bs!1644602 () Bool)

(assert (= bs!1644602 (and b!6482195 d!2033677)))

(assert (=> bs!1644602 (not (= lambda!358539 lambda!358515))))

(declare-fun bs!1644603 () Bool)

(assert (= bs!1644603 (and b!6482195 d!2033655)))

(assert (=> bs!1644603 (not (= lambda!358539 lambda!358501))))

(declare-fun bs!1644604 () Bool)

(assert (= bs!1644604 (and b!6482195 d!2033633)))

(assert (=> bs!1644604 (not (= lambda!358539 lambda!358499))))

(declare-fun bs!1644605 () Bool)

(assert (= bs!1644605 (and b!6482195 d!2033631)))

(assert (=> bs!1644605 (not (= lambda!358539 lambda!358493))))

(declare-fun bs!1644606 () Bool)

(assert (= bs!1644606 (and b!6482195 d!2033653)))

(assert (=> bs!1644606 (not (= lambda!358539 lambda!358500))))

(declare-fun bs!1644607 () Bool)

(assert (= bs!1644607 (and b!6482195 b!6481386)))

(assert (=> bs!1644607 (not (= lambda!358539 lambda!358446))))

(declare-fun bs!1644608 () Bool)

(assert (= bs!1644608 (and b!6482195 b!6481772)))

(assert (=> bs!1644608 (not (= lambda!358539 lambda!358514))))

(declare-fun bs!1644609 () Bool)

(assert (= bs!1644609 (and b!6482195 d!2033679)))

(assert (=> bs!1644609 (not (= lambda!358539 lambda!358516))))

(declare-fun bs!1644610 () Bool)

(assert (= bs!1644610 (and b!6482195 b!6481409)))

(assert (=> bs!1644610 (not (= lambda!358539 lambda!358444))))

(declare-fun bs!1644611 () Bool)

(assert (= bs!1644611 (and b!6482195 d!2033663)))

(assert (=> bs!1644611 (not (= lambda!358539 lambda!358507))))

(assert (=> bs!1644610 (not (= lambda!358539 lambda!358445))))

(assert (=> bs!1644607 (not (= lambda!358539 lambda!358448))))

(assert (=> bs!1644604 (not (= lambda!358539 lambda!358498))))

(declare-fun bs!1644612 () Bool)

(assert (= bs!1644612 (and b!6482195 b!6481798)))

(assert (=> bs!1644612 (= (and (= (reg!16687 lt!2386661) (reg!16687 r!7292)) (= lt!2386661 r!7292)) (= lambda!358539 lambda!358518))))

(assert (=> bs!1644603 (not (= lambda!358539 lambda!358502))))

(declare-fun bs!1644613 () Bool)

(assert (= bs!1644613 (and b!6482195 b!6481796)))

(assert (=> bs!1644613 (not (= lambda!358539 lambda!358519))))

(assert (=> bs!1644607 (= (and (= s!2326 (_1!36640 lt!2386691)) (= (reg!16687 lt!2386661) (reg!16687 (regOne!33228 r!7292))) (= lt!2386661 lt!2386701)) (= lambda!358539 lambda!358447))))

(assert (=> bs!1644601 (not (= lambda!358539 lambda!358442))))

(assert (=> bs!1644611 (= (and (= s!2326 (_1!36640 lt!2386691)) (= (reg!16687 lt!2386661) (reg!16687 (regOne!33228 r!7292))) (= lt!2386661 (Star!16358 (reg!16687 (regOne!33228 r!7292))))) (= lambda!358539 lambda!358508))))

(assert (=> bs!1644609 (not (= lambda!358539 lambda!358517))))

(assert (=> b!6482195 true))

(assert (=> b!6482195 true))

(declare-fun bs!1644614 () Bool)

(declare-fun b!6482193 () Bool)

(assert (= bs!1644614 (and b!6482193 b!6481774)))

(declare-fun lambda!358540 () Int)

(assert (=> bs!1644614 (not (= lambda!358540 lambda!358513))))

(declare-fun bs!1644615 () Bool)

(assert (= bs!1644615 (and b!6482193 b!6481408)))

(assert (=> bs!1644615 (not (= lambda!358540 lambda!358441))))

(declare-fun bs!1644616 () Bool)

(assert (= bs!1644616 (and b!6482193 d!2033677)))

(assert (=> bs!1644616 (not (= lambda!358540 lambda!358515))))

(declare-fun bs!1644617 () Bool)

(assert (= bs!1644617 (and b!6482193 d!2033655)))

(assert (=> bs!1644617 (not (= lambda!358540 lambda!358501))))

(declare-fun bs!1644618 () Bool)

(assert (= bs!1644618 (and b!6482193 d!2033633)))

(assert (=> bs!1644618 (= (and (= (regOne!33228 lt!2386661) lt!2386701) (= (regTwo!33228 lt!2386661) (regTwo!33228 r!7292))) (= lambda!358540 lambda!358499))))

(declare-fun bs!1644619 () Bool)

(assert (= bs!1644619 (and b!6482193 d!2033631)))

(assert (=> bs!1644619 (not (= lambda!358540 lambda!358493))))

(declare-fun bs!1644620 () Bool)

(assert (= bs!1644620 (and b!6482193 d!2033653)))

(assert (=> bs!1644620 (not (= lambda!358540 lambda!358500))))

(declare-fun bs!1644621 () Bool)

(assert (= bs!1644621 (and b!6482193 b!6481386)))

(assert (=> bs!1644621 (not (= lambda!358540 lambda!358446))))

(declare-fun bs!1644622 () Bool)

(assert (= bs!1644622 (and b!6482193 b!6481772)))

(assert (=> bs!1644622 (= (and (= s!2326 (_1!36640 lt!2386691)) (= (regOne!33228 lt!2386661) (regOne!33228 lt!2386701)) (= (regTwo!33228 lt!2386661) (regTwo!33228 lt!2386701))) (= lambda!358540 lambda!358514))))

(declare-fun bs!1644624 () Bool)

(assert (= bs!1644624 (and b!6482193 d!2033679)))

(assert (=> bs!1644624 (not (= lambda!358540 lambda!358516))))

(declare-fun bs!1644625 () Bool)

(assert (= bs!1644625 (and b!6482193 b!6481409)))

(assert (=> bs!1644625 (not (= lambda!358540 lambda!358444))))

(declare-fun bs!1644626 () Bool)

(assert (= bs!1644626 (and b!6482193 d!2033663)))

(assert (=> bs!1644626 (not (= lambda!358540 lambda!358507))))

(assert (=> bs!1644625 (= (and (= (regOne!33228 lt!2386661) lt!2386701) (= (regTwo!33228 lt!2386661) (regTwo!33228 r!7292))) (= lambda!358540 lambda!358445))))

(assert (=> bs!1644621 (= (and (= s!2326 (_1!36640 lt!2386691)) (= (regOne!33228 lt!2386661) (reg!16687 (regOne!33228 r!7292))) (= (regTwo!33228 lt!2386661) lt!2386701)) (= lambda!358540 lambda!358448))))

(assert (=> bs!1644618 (not (= lambda!358540 lambda!358498))))

(declare-fun bs!1644627 () Bool)

(assert (= bs!1644627 (and b!6482193 b!6481798)))

(assert (=> bs!1644627 (not (= lambda!358540 lambda!358518))))

(assert (=> bs!1644617 (= (and (= (regOne!33228 lt!2386661) (regOne!33228 r!7292)) (= (regTwo!33228 lt!2386661) (regTwo!33228 r!7292))) (= lambda!358540 lambda!358502))))

(declare-fun bs!1644628 () Bool)

(assert (= bs!1644628 (and b!6482193 b!6481796)))

(assert (=> bs!1644628 (= (and (= (regOne!33228 lt!2386661) (regOne!33228 r!7292)) (= (regTwo!33228 lt!2386661) (regTwo!33228 r!7292))) (= lambda!358540 lambda!358519))))

(declare-fun bs!1644629 () Bool)

(assert (= bs!1644629 (and b!6482193 b!6482195)))

(assert (=> bs!1644629 (not (= lambda!358540 lambda!358539))))

(assert (=> bs!1644621 (not (= lambda!358540 lambda!358447))))

(assert (=> bs!1644615 (= (and (= (regOne!33228 lt!2386661) (regOne!33228 r!7292)) (= (regTwo!33228 lt!2386661) (regTwo!33228 r!7292))) (= lambda!358540 lambda!358442))))

(assert (=> bs!1644626 (not (= lambda!358540 lambda!358508))))

(assert (=> bs!1644624 (= (and (= s!2326 (_1!36640 lt!2386691)) (= (regOne!33228 lt!2386661) (reg!16687 (regOne!33228 r!7292))) (= (regTwo!33228 lt!2386661) lt!2386701)) (= lambda!358540 lambda!358517))))

(assert (=> b!6482193 true))

(assert (=> b!6482193 true))

(declare-fun e!3928947 () Bool)

(declare-fun call!561075 () Bool)

(assert (=> b!6482193 (= e!3928947 call!561075)))

(declare-fun b!6482194 () Bool)

(declare-fun c!1187515 () Bool)

(assert (=> b!6482194 (= c!1187515 (is-ElementMatch!16358 lt!2386661))))

(declare-fun e!3928951 () Bool)

(declare-fun e!3928949 () Bool)

(assert (=> b!6482194 (= e!3928951 e!3928949)))

(declare-fun bm!561069 () Bool)

(declare-fun c!1187516 () Bool)

(assert (=> bm!561069 (= call!561075 (Exists!3428 (ite c!1187516 lambda!358539 lambda!358540)))))

(declare-fun e!3928950 () Bool)

(assert (=> b!6482195 (= e!3928950 call!561075)))

(declare-fun bm!561070 () Bool)

(declare-fun call!561074 () Bool)

(assert (=> bm!561070 (= call!561074 (isEmpty!37436 s!2326))))

(declare-fun b!6482196 () Bool)

(declare-fun e!3928953 () Bool)

(assert (=> b!6482196 (= e!3928953 (matchRSpec!3459 (regTwo!33229 lt!2386661) s!2326))))

(declare-fun d!2033817 () Bool)

(declare-fun c!1187514 () Bool)

(assert (=> d!2033817 (= c!1187514 (is-EmptyExpr!16358 lt!2386661))))

(declare-fun e!3928952 () Bool)

(assert (=> d!2033817 (= (matchRSpec!3459 lt!2386661 s!2326) e!3928952)))

(declare-fun b!6482197 () Bool)

(declare-fun e!3928948 () Bool)

(assert (=> b!6482197 (= e!3928948 e!3928947)))

(assert (=> b!6482197 (= c!1187516 (is-Star!16358 lt!2386661))))

(declare-fun b!6482198 () Bool)

(assert (=> b!6482198 (= e!3928952 e!3928951)))

(declare-fun res!2661786 () Bool)

(assert (=> b!6482198 (= res!2661786 (not (is-EmptyLang!16358 lt!2386661)))))

(assert (=> b!6482198 (=> (not res!2661786) (not e!3928951))))

(declare-fun b!6482199 () Bool)

(assert (=> b!6482199 (= e!3928952 call!561074)))

(declare-fun b!6482200 () Bool)

(declare-fun res!2661787 () Bool)

(assert (=> b!6482200 (=> res!2661787 e!3928950)))

(assert (=> b!6482200 (= res!2661787 call!561074)))

(assert (=> b!6482200 (= e!3928947 e!3928950)))

(declare-fun b!6482201 () Bool)

(assert (=> b!6482201 (= e!3928948 e!3928953)))

(declare-fun res!2661788 () Bool)

(assert (=> b!6482201 (= res!2661788 (matchRSpec!3459 (regOne!33229 lt!2386661) s!2326))))

(assert (=> b!6482201 (=> res!2661788 e!3928953)))

(declare-fun b!6482202 () Bool)

(assert (=> b!6482202 (= e!3928949 (= s!2326 (Cons!65249 (c!1187340 lt!2386661) Nil!65249)))))

(declare-fun b!6482203 () Bool)

(declare-fun c!1187513 () Bool)

(assert (=> b!6482203 (= c!1187513 (is-Union!16358 lt!2386661))))

(assert (=> b!6482203 (= e!3928949 e!3928948)))

(assert (= (and d!2033817 c!1187514) b!6482199))

(assert (= (and d!2033817 (not c!1187514)) b!6482198))

(assert (= (and b!6482198 res!2661786) b!6482194))

(assert (= (and b!6482194 c!1187515) b!6482202))

(assert (= (and b!6482194 (not c!1187515)) b!6482203))

(assert (= (and b!6482203 c!1187513) b!6482201))

(assert (= (and b!6482203 (not c!1187513)) b!6482197))

(assert (= (and b!6482201 (not res!2661788)) b!6482196))

(assert (= (and b!6482197 c!1187516) b!6482200))

(assert (= (and b!6482197 (not c!1187516)) b!6482193))

(assert (= (and b!6482200 (not res!2661787)) b!6482195))

(assert (= (or b!6482195 b!6482193) bm!561069))

(assert (= (or b!6482199 b!6482200) bm!561070))

(declare-fun m!7270608 () Bool)

(assert (=> bm!561069 m!7270608))

(assert (=> bm!561070 m!7270134))

(declare-fun m!7270610 () Bool)

(assert (=> b!6482196 m!7270610))

(declare-fun m!7270612 () Bool)

(assert (=> b!6482201 m!7270612))

(assert (=> b!6481379 d!2033817))

(declare-fun d!2033825 () Bool)

(assert (=> d!2033825 (= (matchR!8541 lt!2386661 s!2326) (matchRSpec!3459 lt!2386661 s!2326))))

(declare-fun lt!2386995 () Unit!158763)

(assert (=> d!2033825 (= lt!2386995 (choose!48054 lt!2386661 s!2326))))

(assert (=> d!2033825 (validRegex!8094 lt!2386661)))

(assert (=> d!2033825 (= (mainMatchTheorem!3459 lt!2386661 s!2326) lt!2386995)))

(declare-fun bs!1644630 () Bool)

(assert (= bs!1644630 d!2033825))

(assert (=> bs!1644630 m!7269610))

(assert (=> bs!1644630 m!7269612))

(declare-fun m!7270628 () Bool)

(assert (=> bs!1644630 m!7270628))

(assert (=> bs!1644630 m!7270570))

(assert (=> b!6481379 d!2033825))

(declare-fun bm!561073 () Bool)

(declare-fun call!561080 () Bool)

(declare-fun call!561079 () Bool)

(assert (=> bm!561073 (= call!561080 call!561079)))

(declare-fun b!6482236 () Bool)

(declare-fun e!3928973 () Bool)

(assert (=> b!6482236 (= e!3928973 call!561080)))

(declare-fun b!6482237 () Bool)

(declare-fun e!3928975 () Bool)

(declare-fun e!3928974 () Bool)

(assert (=> b!6482237 (= e!3928975 e!3928974)))

(declare-fun c!1187524 () Bool)

(assert (=> b!6482237 (= c!1187524 (is-Star!16358 lt!2386666))))

(declare-fun b!6482238 () Bool)

(declare-fun res!2661811 () Bool)

(declare-fun e!3928976 () Bool)

(assert (=> b!6482238 (=> res!2661811 e!3928976)))

(assert (=> b!6482238 (= res!2661811 (not (is-Concat!25203 lt!2386666)))))

(declare-fun e!3928971 () Bool)

(assert (=> b!6482238 (= e!3928971 e!3928976)))

(declare-fun b!6482239 () Bool)

(declare-fun e!3928970 () Bool)

(assert (=> b!6482239 (= e!3928974 e!3928970)))

(declare-fun res!2661809 () Bool)

(assert (=> b!6482239 (= res!2661809 (not (nullable!6351 (reg!16687 lt!2386666))))))

(assert (=> b!6482239 (=> (not res!2661809) (not e!3928970))))

(declare-fun b!6482240 () Bool)

(assert (=> b!6482240 (= e!3928970 call!561079)))

(declare-fun b!6482241 () Bool)

(declare-fun e!3928972 () Bool)

(assert (=> b!6482241 (= e!3928972 call!561080)))

(declare-fun b!6482242 () Bool)

(assert (=> b!6482242 (= e!3928976 e!3928973)))

(declare-fun res!2661807 () Bool)

(assert (=> b!6482242 (=> (not res!2661807) (not e!3928973))))

(declare-fun call!561078 () Bool)

(assert (=> b!6482242 (= res!2661807 call!561078)))

(declare-fun d!2033827 () Bool)

(declare-fun res!2661808 () Bool)

(assert (=> d!2033827 (=> res!2661808 e!3928975)))

(assert (=> d!2033827 (= res!2661808 (is-ElementMatch!16358 lt!2386666))))

(assert (=> d!2033827 (= (validRegex!8094 lt!2386666) e!3928975)))

(declare-fun b!6482243 () Bool)

(declare-fun res!2661810 () Bool)

(assert (=> b!6482243 (=> (not res!2661810) (not e!3928972))))

(assert (=> b!6482243 (= res!2661810 call!561078)))

(assert (=> b!6482243 (= e!3928971 e!3928972)))

(declare-fun bm!561074 () Bool)

(declare-fun c!1187525 () Bool)

(assert (=> bm!561074 (= call!561078 (validRegex!8094 (ite c!1187525 (regOne!33229 lt!2386666) (regOne!33228 lt!2386666))))))

(declare-fun bm!561075 () Bool)

(assert (=> bm!561075 (= call!561079 (validRegex!8094 (ite c!1187524 (reg!16687 lt!2386666) (ite c!1187525 (regTwo!33229 lt!2386666) (regTwo!33228 lt!2386666)))))))

(declare-fun b!6482244 () Bool)

(assert (=> b!6482244 (= e!3928974 e!3928971)))

(assert (=> b!6482244 (= c!1187525 (is-Union!16358 lt!2386666))))

(assert (= (and d!2033827 (not res!2661808)) b!6482237))

(assert (= (and b!6482237 c!1187524) b!6482239))

(assert (= (and b!6482237 (not c!1187524)) b!6482244))

(assert (= (and b!6482239 res!2661809) b!6482240))

(assert (= (and b!6482244 c!1187525) b!6482243))

(assert (= (and b!6482244 (not c!1187525)) b!6482238))

(assert (= (and b!6482243 res!2661810) b!6482241))

(assert (= (and b!6482238 (not res!2661811)) b!6482242))

(assert (= (and b!6482242 res!2661807) b!6482236))

(assert (= (or b!6482241 b!6482236) bm!561073))

(assert (= (or b!6482243 b!6482242) bm!561074))

(assert (= (or b!6482240 bm!561073) bm!561075))

(declare-fun m!7270630 () Bool)

(assert (=> b!6482239 m!7270630))

(declare-fun m!7270632 () Bool)

(assert (=> bm!561074 m!7270632))

(declare-fun m!7270634 () Bool)

(assert (=> bm!561075 m!7270634))

(assert (=> b!6481420 d!2033827))

(declare-fun e!3928978 () Bool)

(declare-fun b!6482248 () Bool)

(declare-fun lt!2386996 () List!65373)

(assert (=> b!6482248 (= e!3928978 (or (not (= lt!2386659 Nil!65249)) (= lt!2386996 (_1!36640 lt!2386648))))))

(declare-fun b!6482245 () Bool)

(declare-fun e!3928977 () List!65373)

(assert (=> b!6482245 (= e!3928977 lt!2386659)))

(declare-fun d!2033833 () Bool)

(assert (=> d!2033833 e!3928978))

(declare-fun res!2661812 () Bool)

(assert (=> d!2033833 (=> (not res!2661812) (not e!3928978))))

(assert (=> d!2033833 (= res!2661812 (= (content!12418 lt!2386996) (set.union (content!12418 (_1!36640 lt!2386648)) (content!12418 lt!2386659))))))

(assert (=> d!2033833 (= lt!2386996 e!3928977)))

(declare-fun c!1187526 () Bool)

(assert (=> d!2033833 (= c!1187526 (is-Nil!65249 (_1!36640 lt!2386648)))))

(assert (=> d!2033833 (= (++!14427 (_1!36640 lt!2386648) lt!2386659) lt!2386996)))

(declare-fun b!6482247 () Bool)

(declare-fun res!2661813 () Bool)

(assert (=> b!6482247 (=> (not res!2661813) (not e!3928978))))

(assert (=> b!6482247 (= res!2661813 (= (size!40411 lt!2386996) (+ (size!40411 (_1!36640 lt!2386648)) (size!40411 lt!2386659))))))

(declare-fun b!6482246 () Bool)

(assert (=> b!6482246 (= e!3928977 (Cons!65249 (h!71697 (_1!36640 lt!2386648)) (++!14427 (t!378999 (_1!36640 lt!2386648)) lt!2386659)))))

(assert (= (and d!2033833 c!1187526) b!6482245))

(assert (= (and d!2033833 (not c!1187526)) b!6482246))

(assert (= (and d!2033833 res!2661812) b!6482247))

(assert (= (and b!6482247 res!2661813) b!6482248))

(declare-fun m!7270638 () Bool)

(assert (=> d!2033833 m!7270638))

(assert (=> d!2033833 m!7270120))

(declare-fun m!7270640 () Bool)

(assert (=> d!2033833 m!7270640))

(declare-fun m!7270642 () Bool)

(assert (=> b!6482247 m!7270642))

(assert (=> b!6482247 m!7270126))

(declare-fun m!7270644 () Bool)

(assert (=> b!6482247 m!7270644))

(declare-fun m!7270646 () Bool)

(assert (=> b!6482246 m!7270646))

(assert (=> b!6481414 d!2033833))

(declare-fun e!3928980 () Bool)

(declare-fun lt!2386997 () List!65373)

(declare-fun b!6482252 () Bool)

(assert (=> b!6482252 (= e!3928980 (or (not (= (_2!36640 lt!2386691) Nil!65249)) (= lt!2386997 lt!2386680)))))

(declare-fun b!6482249 () Bool)

(declare-fun e!3928979 () List!65373)

(assert (=> b!6482249 (= e!3928979 (_2!36640 lt!2386691))))

(declare-fun d!2033837 () Bool)

(assert (=> d!2033837 e!3928980))

(declare-fun res!2661814 () Bool)

(assert (=> d!2033837 (=> (not res!2661814) (not e!3928980))))

(assert (=> d!2033837 (= res!2661814 (= (content!12418 lt!2386997) (set.union (content!12418 lt!2386680) (content!12418 (_2!36640 lt!2386691)))))))

(assert (=> d!2033837 (= lt!2386997 e!3928979)))

(declare-fun c!1187527 () Bool)

(assert (=> d!2033837 (= c!1187527 (is-Nil!65249 lt!2386680))))

(assert (=> d!2033837 (= (++!14427 lt!2386680 (_2!36640 lt!2386691)) lt!2386997)))

(declare-fun b!6482251 () Bool)

(declare-fun res!2661815 () Bool)

(assert (=> b!6482251 (=> (not res!2661815) (not e!3928980))))

(assert (=> b!6482251 (= res!2661815 (= (size!40411 lt!2386997) (+ (size!40411 lt!2386680) (size!40411 (_2!36640 lt!2386691)))))))

(declare-fun b!6482250 () Bool)

(assert (=> b!6482250 (= e!3928979 (Cons!65249 (h!71697 lt!2386680) (++!14427 (t!378999 lt!2386680) (_2!36640 lt!2386691))))))

(assert (= (and d!2033837 c!1187527) b!6482249))

(assert (= (and d!2033837 (not c!1187527)) b!6482250))

(assert (= (and d!2033837 res!2661814) b!6482251))

(assert (= (and b!6482251 res!2661815) b!6482252))

(declare-fun m!7270648 () Bool)

(assert (=> d!2033837 m!7270648))

(declare-fun m!7270650 () Bool)

(assert (=> d!2033837 m!7270650))

(assert (=> d!2033837 m!7269994))

(declare-fun m!7270652 () Bool)

(assert (=> b!6482251 m!7270652))

(declare-fun m!7270654 () Bool)

(assert (=> b!6482251 m!7270654))

(assert (=> b!6482251 m!7270000))

(declare-fun m!7270656 () Bool)

(assert (=> b!6482250 m!7270656))

(assert (=> b!6481414 d!2033837))

(declare-fun b!6482256 () Bool)

(declare-fun e!3928982 () Bool)

(declare-fun lt!2386998 () List!65373)

(assert (=> b!6482256 (= e!3928982 (or (not (= (_2!36640 lt!2386691) Nil!65249)) (= lt!2386998 (_2!36640 lt!2386648))))))

(declare-fun b!6482253 () Bool)

(declare-fun e!3928981 () List!65373)

(assert (=> b!6482253 (= e!3928981 (_2!36640 lt!2386691))))

(declare-fun d!2033839 () Bool)

(assert (=> d!2033839 e!3928982))

(declare-fun res!2661816 () Bool)

(assert (=> d!2033839 (=> (not res!2661816) (not e!3928982))))

(assert (=> d!2033839 (= res!2661816 (= (content!12418 lt!2386998) (set.union (content!12418 (_2!36640 lt!2386648)) (content!12418 (_2!36640 lt!2386691)))))))

(assert (=> d!2033839 (= lt!2386998 e!3928981)))

(declare-fun c!1187528 () Bool)

(assert (=> d!2033839 (= c!1187528 (is-Nil!65249 (_2!36640 lt!2386648)))))

(assert (=> d!2033839 (= (++!14427 (_2!36640 lt!2386648) (_2!36640 lt!2386691)) lt!2386998)))

(declare-fun b!6482255 () Bool)

(declare-fun res!2661817 () Bool)

(assert (=> b!6482255 (=> (not res!2661817) (not e!3928982))))

(assert (=> b!6482255 (= res!2661817 (= (size!40411 lt!2386998) (+ (size!40411 (_2!36640 lt!2386648)) (size!40411 (_2!36640 lt!2386691)))))))

(declare-fun b!6482254 () Bool)

(assert (=> b!6482254 (= e!3928981 (Cons!65249 (h!71697 (_2!36640 lt!2386648)) (++!14427 (t!378999 (_2!36640 lt!2386648)) (_2!36640 lt!2386691))))))

(assert (= (and d!2033839 c!1187528) b!6482253))

(assert (= (and d!2033839 (not c!1187528)) b!6482254))

(assert (= (and d!2033839 res!2661816) b!6482255))

(assert (= (and b!6482255 res!2661817) b!6482256))

(declare-fun m!7270658 () Bool)

(assert (=> d!2033839 m!7270658))

(assert (=> d!2033839 m!7270122))

(assert (=> d!2033839 m!7269994))

(declare-fun m!7270660 () Bool)

(assert (=> b!6482255 m!7270660))

(assert (=> b!6482255 m!7270128))

(assert (=> b!6482255 m!7270000))

(declare-fun m!7270662 () Bool)

(assert (=> b!6482254 m!7270662))

(assert (=> b!6481414 d!2033839))

(declare-fun d!2033841 () Bool)

(assert (=> d!2033841 (= (++!14427 (++!14427 (_1!36640 lt!2386648) (_2!36640 lt!2386648)) (_2!36640 lt!2386691)) (++!14427 (_1!36640 lt!2386648) (++!14427 (_2!36640 lt!2386648) (_2!36640 lt!2386691))))))

(declare-fun lt!2387001 () Unit!158763)

(declare-fun choose!48076 (List!65373 List!65373 List!65373) Unit!158763)

(assert (=> d!2033841 (= lt!2387001 (choose!48076 (_1!36640 lt!2386648) (_2!36640 lt!2386648) (_2!36640 lt!2386691)))))

(assert (=> d!2033841 (= (lemmaConcatAssociativity!2929 (_1!36640 lt!2386648) (_2!36640 lt!2386648) (_2!36640 lt!2386691)) lt!2387001)))

(declare-fun bs!1644632 () Bool)

(assert (= bs!1644632 d!2033841))

(assert (=> bs!1644632 m!7269706))

(declare-fun m!7270664 () Bool)

(assert (=> bs!1644632 m!7270664))

(assert (=> bs!1644632 m!7269706))

(assert (=> bs!1644632 m!7269674))

(assert (=> bs!1644632 m!7269674))

(declare-fun m!7270666 () Bool)

(assert (=> bs!1644632 m!7270666))

(declare-fun m!7270668 () Bool)

(assert (=> bs!1644632 m!7270668))

(assert (=> b!6481414 d!2033841))

(declare-fun d!2033843 () Bool)

(declare-fun lt!2387002 () Regex!16358)

(assert (=> d!2033843 (validRegex!8094 lt!2387002)))

(assert (=> d!2033843 (= lt!2387002 (generalisedUnion!2202 (unfocusZipperList!1779 zl!343)))))

(assert (=> d!2033843 (= (unfocusZipper!2100 zl!343) lt!2387002)))

(declare-fun bs!1644633 () Bool)

(assert (= bs!1644633 d!2033843))

(declare-fun m!7270670 () Bool)

(assert (=> bs!1644633 m!7270670))

(assert (=> bs!1644633 m!7269618))

(assert (=> bs!1644633 m!7269618))

(assert (=> bs!1644633 m!7269620))

(assert (=> b!6481392 d!2033843))

(declare-fun d!2033845 () Bool)

(assert (=> d!2033845 (= (flatMap!1863 lt!2386682 lambda!358443) (choose!48061 lt!2386682 lambda!358443))))

(declare-fun bs!1644634 () Bool)

(assert (= bs!1644634 d!2033845))

(declare-fun m!7270672 () Bool)

(assert (=> bs!1644634 m!7270672))

(assert (=> b!6481396 d!2033845))

(declare-fun d!2033847 () Bool)

(declare-fun lt!2387003 () Regex!16358)

(assert (=> d!2033847 (validRegex!8094 lt!2387003)))

(assert (=> d!2033847 (= lt!2387003 (generalisedUnion!2202 (unfocusZipperList!1779 lt!2386677)))))

(assert (=> d!2033847 (= (unfocusZipper!2100 lt!2386677) lt!2387003)))

(declare-fun bs!1644635 () Bool)

(assert (= bs!1644635 d!2033847))

(declare-fun m!7270674 () Bool)

(assert (=> bs!1644635 m!7270674))

(declare-fun m!7270676 () Bool)

(assert (=> bs!1644635 m!7270676))

(assert (=> bs!1644635 m!7270676))

(declare-fun m!7270678 () Bool)

(assert (=> bs!1644635 m!7270678))

(assert (=> b!6481396 d!2033847))

(declare-fun d!2033849 () Bool)

(assert (=> d!2033849 (= (flatMap!1863 lt!2386685 lambda!358443) (choose!48061 lt!2386685 lambda!358443))))

(declare-fun bs!1644636 () Bool)

(assert (= bs!1644636 d!2033849))

(declare-fun m!7270680 () Bool)

(assert (=> bs!1644636 m!7270680))

(assert (=> b!6481396 d!2033849))

(declare-fun b!6482257 () Bool)

(declare-fun e!3928985 () (Set Context!11484))

(assert (=> b!6482257 (= e!3928985 (as set.empty (Set Context!11484)))))

(declare-fun b!6482258 () Bool)

(declare-fun call!561081 () (Set Context!11484))

(assert (=> b!6482258 (= e!3928985 call!561081)))

(declare-fun e!3928983 () (Set Context!11484))

(declare-fun b!6482259 () Bool)

(assert (=> b!6482259 (= e!3928983 (set.union call!561081 (derivationStepZipperUp!1532 (Context!11485 (t!379000 (exprs!6242 lt!2386653))) (h!71697 s!2326))))))

(declare-fun d!2033851 () Bool)

(declare-fun c!1187530 () Bool)

(declare-fun e!3928984 () Bool)

(assert (=> d!2033851 (= c!1187530 e!3928984)))

(declare-fun res!2661818 () Bool)

(assert (=> d!2033851 (=> (not res!2661818) (not e!3928984))))

(assert (=> d!2033851 (= res!2661818 (is-Cons!65250 (exprs!6242 lt!2386653)))))

(assert (=> d!2033851 (= (derivationStepZipperUp!1532 lt!2386653 (h!71697 s!2326)) e!3928983)))

(declare-fun b!6482260 () Bool)

(assert (=> b!6482260 (= e!3928983 e!3928985)))

(declare-fun c!1187529 () Bool)

(assert (=> b!6482260 (= c!1187529 (is-Cons!65250 (exprs!6242 lt!2386653)))))

(declare-fun bm!561076 () Bool)

(assert (=> bm!561076 (= call!561081 (derivationStepZipperDown!1606 (h!71698 (exprs!6242 lt!2386653)) (Context!11485 (t!379000 (exprs!6242 lt!2386653))) (h!71697 s!2326)))))

(declare-fun b!6482261 () Bool)

(assert (=> b!6482261 (= e!3928984 (nullable!6351 (h!71698 (exprs!6242 lt!2386653))))))

(assert (= (and d!2033851 res!2661818) b!6482261))

(assert (= (and d!2033851 c!1187530) b!6482259))

(assert (= (and d!2033851 (not c!1187530)) b!6482260))

(assert (= (and b!6482260 c!1187529) b!6482258))

(assert (= (and b!6482260 (not c!1187529)) b!6482257))

(assert (= (or b!6482259 b!6482258) bm!561076))

(declare-fun m!7270682 () Bool)

(assert (=> b!6482259 m!7270682))

(declare-fun m!7270684 () Bool)

(assert (=> bm!561076 m!7270684))

(declare-fun m!7270686 () Bool)

(assert (=> b!6482261 m!7270686))

(assert (=> b!6481396 d!2033851))

(declare-fun d!2033853 () Bool)

(assert (=> d!2033853 (= (flatMap!1863 lt!2386682 lambda!358443) (dynLambda!25921 lambda!358443 lt!2386651))))

(declare-fun lt!2387004 () Unit!158763)

(assert (=> d!2033853 (= lt!2387004 (choose!48060 lt!2386682 lt!2386651 lambda!358443))))

(assert (=> d!2033853 (= lt!2386682 (set.insert lt!2386651 (as set.empty (Set Context!11484))))))

(assert (=> d!2033853 (= (lemmaFlatMapOnSingletonSet!1389 lt!2386682 lt!2386651 lambda!358443) lt!2387004)))

(declare-fun b_lambda!245511 () Bool)

(assert (=> (not b_lambda!245511) (not d!2033853)))

(declare-fun bs!1644637 () Bool)

(assert (= bs!1644637 d!2033853))

(assert (=> bs!1644637 m!7269654))

(declare-fun m!7270688 () Bool)

(assert (=> bs!1644637 m!7270688))

(declare-fun m!7270690 () Bool)

(assert (=> bs!1644637 m!7270690))

(assert (=> bs!1644637 m!7269656))

(assert (=> b!6481396 d!2033853))

(declare-fun d!2033855 () Bool)

(assert (=> d!2033855 (= (flatMap!1863 lt!2386685 lambda!358443) (dynLambda!25921 lambda!358443 lt!2386653))))

(declare-fun lt!2387007 () Unit!158763)

(assert (=> d!2033855 (= lt!2387007 (choose!48060 lt!2386685 lt!2386653 lambda!358443))))

(assert (=> d!2033855 (= lt!2386685 (set.insert lt!2386653 (as set.empty (Set Context!11484))))))

(assert (=> d!2033855 (= (lemmaFlatMapOnSingletonSet!1389 lt!2386685 lt!2386653 lambda!358443) lt!2387007)))

(declare-fun b_lambda!245513 () Bool)

(assert (=> (not b_lambda!245513) (not d!2033855)))

(declare-fun bs!1644638 () Bool)

(assert (= bs!1644638 d!2033855))

(assert (=> bs!1644638 m!7269652))

(declare-fun m!7270692 () Bool)

(assert (=> bs!1644638 m!7270692))

(declare-fun m!7270694 () Bool)

(assert (=> bs!1644638 m!7270694))

(assert (=> bs!1644638 m!7269644))

(assert (=> b!6481396 d!2033855))

(declare-fun b!6482262 () Bool)

(declare-fun e!3928988 () (Set Context!11484))

(assert (=> b!6482262 (= e!3928988 (as set.empty (Set Context!11484)))))

(declare-fun b!6482263 () Bool)

(declare-fun call!561082 () (Set Context!11484))

(assert (=> b!6482263 (= e!3928988 call!561082)))

(declare-fun b!6482264 () Bool)

(declare-fun e!3928986 () (Set Context!11484))

(assert (=> b!6482264 (= e!3928986 (set.union call!561082 (derivationStepZipperUp!1532 (Context!11485 (t!379000 (exprs!6242 lt!2386651))) (h!71697 s!2326))))))

(declare-fun d!2033857 () Bool)

(declare-fun c!1187532 () Bool)

(declare-fun e!3928987 () Bool)

(assert (=> d!2033857 (= c!1187532 e!3928987)))

(declare-fun res!2661819 () Bool)

(assert (=> d!2033857 (=> (not res!2661819) (not e!3928987))))

(assert (=> d!2033857 (= res!2661819 (is-Cons!65250 (exprs!6242 lt!2386651)))))

(assert (=> d!2033857 (= (derivationStepZipperUp!1532 lt!2386651 (h!71697 s!2326)) e!3928986)))

(declare-fun b!6482265 () Bool)

(assert (=> b!6482265 (= e!3928986 e!3928988)))

(declare-fun c!1187531 () Bool)

(assert (=> b!6482265 (= c!1187531 (is-Cons!65250 (exprs!6242 lt!2386651)))))

(declare-fun bm!561077 () Bool)

(assert (=> bm!561077 (= call!561082 (derivationStepZipperDown!1606 (h!71698 (exprs!6242 lt!2386651)) (Context!11485 (t!379000 (exprs!6242 lt!2386651))) (h!71697 s!2326)))))

(declare-fun b!6482266 () Bool)

(assert (=> b!6482266 (= e!3928987 (nullable!6351 (h!71698 (exprs!6242 lt!2386651))))))

(assert (= (and d!2033857 res!2661819) b!6482266))

(assert (= (and d!2033857 c!1187532) b!6482264))

(assert (= (and d!2033857 (not c!1187532)) b!6482265))

(assert (= (and b!6482265 c!1187531) b!6482263))

(assert (= (and b!6482265 (not c!1187531)) b!6482262))

(assert (= (or b!6482264 b!6482263) bm!561077))

(declare-fun m!7270696 () Bool)

(assert (=> b!6482264 m!7270696))

(declare-fun m!7270698 () Bool)

(assert (=> bm!561077 m!7270698))

(declare-fun m!7270700 () Bool)

(assert (=> b!6482266 m!7270700))

(assert (=> b!6481396 d!2033857))

(declare-fun b!6482267 () Bool)

(declare-fun res!2661823 () Bool)

(declare-fun e!3928990 () Bool)

(assert (=> b!6482267 (=> (not res!2661823) (not e!3928990))))

(assert (=> b!6482267 (= res!2661823 (isEmpty!37436 (tail!12280 (_2!36640 lt!2386648))))))

(declare-fun b!6482268 () Bool)

(assert (=> b!6482268 (= e!3928990 (= (head!13195 (_2!36640 lt!2386648)) (c!1187340 lt!2386701)))))

(declare-fun b!6482269 () Bool)

(declare-fun res!2661825 () Bool)

(assert (=> b!6482269 (=> (not res!2661825) (not e!3928990))))

(declare-fun call!561083 () Bool)

(assert (=> b!6482269 (= res!2661825 (not call!561083))))

(declare-fun b!6482271 () Bool)

(declare-fun e!3928994 () Bool)

(declare-fun lt!2387008 () Bool)

(assert (=> b!6482271 (= e!3928994 (not lt!2387008))))

(declare-fun b!6482272 () Bool)

(declare-fun e!3928995 () Bool)

(declare-fun e!3928992 () Bool)

(assert (=> b!6482272 (= e!3928995 e!3928992)))

(declare-fun res!2661824 () Bool)

(assert (=> b!6482272 (=> res!2661824 e!3928992)))

(assert (=> b!6482272 (= res!2661824 call!561083)))

(declare-fun b!6482273 () Bool)

(declare-fun e!3928993 () Bool)

(assert (=> b!6482273 (= e!3928993 (nullable!6351 lt!2386701))))

(declare-fun b!6482270 () Bool)

(declare-fun e!3928991 () Bool)

(assert (=> b!6482270 (= e!3928991 (= lt!2387008 call!561083))))

(declare-fun d!2033859 () Bool)

(assert (=> d!2033859 e!3928991))

(declare-fun c!1187534 () Bool)

(assert (=> d!2033859 (= c!1187534 (is-EmptyExpr!16358 lt!2386701))))

(assert (=> d!2033859 (= lt!2387008 e!3928993)))

(declare-fun c!1187535 () Bool)

(assert (=> d!2033859 (= c!1187535 (isEmpty!37436 (_2!36640 lt!2386648)))))

(assert (=> d!2033859 (validRegex!8094 lt!2386701)))

(assert (=> d!2033859 (= (matchR!8541 lt!2386701 (_2!36640 lt!2386648)) lt!2387008)))

(declare-fun b!6482274 () Bool)

(assert (=> b!6482274 (= e!3928992 (not (= (head!13195 (_2!36640 lt!2386648)) (c!1187340 lt!2386701))))))

(declare-fun b!6482275 () Bool)

(declare-fun e!3928989 () Bool)

(assert (=> b!6482275 (= e!3928989 e!3928995)))

(declare-fun res!2661827 () Bool)

(assert (=> b!6482275 (=> (not res!2661827) (not e!3928995))))

(assert (=> b!6482275 (= res!2661827 (not lt!2387008))))

(declare-fun b!6482276 () Bool)

(declare-fun res!2661820 () Bool)

(assert (=> b!6482276 (=> res!2661820 e!3928992)))

(assert (=> b!6482276 (= res!2661820 (not (isEmpty!37436 (tail!12280 (_2!36640 lt!2386648)))))))

(declare-fun b!6482277 () Bool)

(assert (=> b!6482277 (= e!3928991 e!3928994)))

(declare-fun c!1187533 () Bool)

(assert (=> b!6482277 (= c!1187533 (is-EmptyLang!16358 lt!2386701))))

(declare-fun bm!561078 () Bool)

(assert (=> bm!561078 (= call!561083 (isEmpty!37436 (_2!36640 lt!2386648)))))

(declare-fun b!6482278 () Bool)

(declare-fun res!2661821 () Bool)

(assert (=> b!6482278 (=> res!2661821 e!3928989)))

(assert (=> b!6482278 (= res!2661821 (not (is-ElementMatch!16358 lt!2386701)))))

(assert (=> b!6482278 (= e!3928994 e!3928989)))

(declare-fun b!6482279 () Bool)

(assert (=> b!6482279 (= e!3928993 (matchR!8541 (derivativeStep!5056 lt!2386701 (head!13195 (_2!36640 lt!2386648))) (tail!12280 (_2!36640 lt!2386648))))))

(declare-fun b!6482280 () Bool)

(declare-fun res!2661822 () Bool)

(assert (=> b!6482280 (=> res!2661822 e!3928989)))

(assert (=> b!6482280 (= res!2661822 e!3928990)))

(declare-fun res!2661826 () Bool)

(assert (=> b!6482280 (=> (not res!2661826) (not e!3928990))))

(assert (=> b!6482280 (= res!2661826 lt!2387008)))

(assert (= (and d!2033859 c!1187535) b!6482273))

(assert (= (and d!2033859 (not c!1187535)) b!6482279))

(assert (= (and d!2033859 c!1187534) b!6482270))

(assert (= (and d!2033859 (not c!1187534)) b!6482277))

(assert (= (and b!6482277 c!1187533) b!6482271))

(assert (= (and b!6482277 (not c!1187533)) b!6482278))

(assert (= (and b!6482278 (not res!2661821)) b!6482280))

(assert (= (and b!6482280 res!2661826) b!6482269))

(assert (= (and b!6482269 res!2661825) b!6482267))

(assert (= (and b!6482267 res!2661823) b!6482268))

(assert (= (and b!6482280 (not res!2661822)) b!6482275))

(assert (= (and b!6482275 res!2661827) b!6482272))

(assert (= (and b!6482272 (not res!2661824)) b!6482276))

(assert (= (and b!6482276 (not res!2661820)) b!6482274))

(assert (= (or b!6482270 b!6482269 b!6482272) bm!561078))

(declare-fun m!7270702 () Bool)

(assert (=> b!6482268 m!7270702))

(declare-fun m!7270704 () Bool)

(assert (=> b!6482267 m!7270704))

(assert (=> b!6482267 m!7270704))

(declare-fun m!7270706 () Bool)

(assert (=> b!6482267 m!7270706))

(declare-fun m!7270708 () Bool)

(assert (=> bm!561078 m!7270708))

(assert (=> b!6482274 m!7270702))

(assert (=> b!6482276 m!7270704))

(assert (=> b!6482276 m!7270704))

(assert (=> b!6482276 m!7270706))

(assert (=> b!6482279 m!7270702))

(assert (=> b!6482279 m!7270702))

(declare-fun m!7270710 () Bool)

(assert (=> b!6482279 m!7270710))

(assert (=> b!6482279 m!7270704))

(assert (=> b!6482279 m!7270710))

(assert (=> b!6482279 m!7270704))

(declare-fun m!7270712 () Bool)

(assert (=> b!6482279 m!7270712))

(assert (=> d!2033859 m!7270708))

(assert (=> d!2033859 m!7269972))

(assert (=> b!6482273 m!7269974))

(assert (=> b!6481415 d!2033859))

(declare-fun bs!1644643 () Bool)

(declare-fun d!2033861 () Bool)

(assert (= bs!1644643 (and d!2033861 d!2033741)))

(declare-fun lambda!358549 () Int)

(assert (=> bs!1644643 (= lambda!358549 lambda!358532)))

(declare-fun bs!1644644 () Bool)

(assert (= bs!1644644 (and d!2033861 d!2033777)))

(assert (=> bs!1644644 (= lambda!358549 lambda!358535)))

(declare-fun bs!1644645 () Bool)

(assert (= bs!1644645 (and d!2033861 d!2033707)))

(assert (=> bs!1644645 (= lambda!358549 lambda!358525)))

(declare-fun bs!1644646 () Bool)

(assert (= bs!1644646 (and d!2033861 d!2033697)))

(assert (=> bs!1644646 (= lambda!358549 lambda!358522)))

(declare-fun bs!1644647 () Bool)

(assert (= bs!1644647 (and d!2033861 b!6481378)))

(assert (=> bs!1644647 (= lambda!358549 lambda!358449)))

(declare-fun b!6482309 () Bool)

(declare-fun e!3929012 () Bool)

(declare-fun lt!2387012 () Regex!16358)

(assert (=> b!6482309 (= e!3929012 (= lt!2387012 (head!13196 (unfocusZipperList!1779 zl!343))))))

(declare-fun e!3929013 () Bool)

(assert (=> d!2033861 e!3929013))

(declare-fun res!2661841 () Bool)

(assert (=> d!2033861 (=> (not res!2661841) (not e!3929013))))

(assert (=> d!2033861 (= res!2661841 (validRegex!8094 lt!2387012))))

(declare-fun e!3929017 () Regex!16358)

(assert (=> d!2033861 (= lt!2387012 e!3929017)))

(declare-fun c!1187545 () Bool)

(declare-fun e!3929015 () Bool)

(assert (=> d!2033861 (= c!1187545 e!3929015)))

(declare-fun res!2661840 () Bool)

(assert (=> d!2033861 (=> (not res!2661840) (not e!3929015))))

(assert (=> d!2033861 (= res!2661840 (is-Cons!65250 (unfocusZipperList!1779 zl!343)))))

(assert (=> d!2033861 (forall!15543 (unfocusZipperList!1779 zl!343) lambda!358549)))

(assert (=> d!2033861 (= (generalisedUnion!2202 (unfocusZipperList!1779 zl!343)) lt!2387012)))

(declare-fun b!6482310 () Bool)

(declare-fun e!3929014 () Bool)

(declare-fun isEmptyLang!1760 (Regex!16358) Bool)

(assert (=> b!6482310 (= e!3929014 (isEmptyLang!1760 lt!2387012))))

(declare-fun b!6482311 () Bool)

(assert (=> b!6482311 (= e!3929015 (isEmpty!37437 (t!379000 (unfocusZipperList!1779 zl!343))))))

(declare-fun b!6482312 () Bool)

(declare-fun isUnion!1190 (Regex!16358) Bool)

(assert (=> b!6482312 (= e!3929012 (isUnion!1190 lt!2387012))))

(declare-fun b!6482313 () Bool)

(assert (=> b!6482313 (= e!3929017 (h!71698 (unfocusZipperList!1779 zl!343)))))

(declare-fun b!6482314 () Bool)

(declare-fun e!3929016 () Regex!16358)

(assert (=> b!6482314 (= e!3929016 (Union!16358 (h!71698 (unfocusZipperList!1779 zl!343)) (generalisedUnion!2202 (t!379000 (unfocusZipperList!1779 zl!343)))))))

(declare-fun b!6482315 () Bool)

(assert (=> b!6482315 (= e!3929017 e!3929016)))

(declare-fun c!1187546 () Bool)

(assert (=> b!6482315 (= c!1187546 (is-Cons!65250 (unfocusZipperList!1779 zl!343)))))

(declare-fun b!6482316 () Bool)

(assert (=> b!6482316 (= e!3929014 e!3929012)))

(declare-fun c!1187547 () Bool)

(assert (=> b!6482316 (= c!1187547 (isEmpty!37437 (tail!12281 (unfocusZipperList!1779 zl!343))))))

(declare-fun b!6482317 () Bool)

(assert (=> b!6482317 (= e!3929013 e!3929014)))

(declare-fun c!1187544 () Bool)

(assert (=> b!6482317 (= c!1187544 (isEmpty!37437 (unfocusZipperList!1779 zl!343)))))

(declare-fun b!6482318 () Bool)

(assert (=> b!6482318 (= e!3929016 EmptyLang!16358)))

(assert (= (and d!2033861 res!2661840) b!6482311))

(assert (= (and d!2033861 c!1187545) b!6482313))

(assert (= (and d!2033861 (not c!1187545)) b!6482315))

(assert (= (and b!6482315 c!1187546) b!6482314))

(assert (= (and b!6482315 (not c!1187546)) b!6482318))

(assert (= (and d!2033861 res!2661841) b!6482317))

(assert (= (and b!6482317 c!1187544) b!6482310))

(assert (= (and b!6482317 (not c!1187544)) b!6482316))

(assert (= (and b!6482316 c!1187547) b!6482309))

(assert (= (and b!6482316 (not c!1187547)) b!6482312))

(declare-fun m!7270720 () Bool)

(assert (=> d!2033861 m!7270720))

(assert (=> d!2033861 m!7269618))

(declare-fun m!7270722 () Bool)

(assert (=> d!2033861 m!7270722))

(declare-fun m!7270724 () Bool)

(assert (=> b!6482310 m!7270724))

(assert (=> b!6482316 m!7269618))

(declare-fun m!7270726 () Bool)

(assert (=> b!6482316 m!7270726))

(assert (=> b!6482316 m!7270726))

(declare-fun m!7270728 () Bool)

(assert (=> b!6482316 m!7270728))

(declare-fun m!7270730 () Bool)

(assert (=> b!6482314 m!7270730))

(assert (=> b!6482309 m!7269618))

(declare-fun m!7270732 () Bool)

(assert (=> b!6482309 m!7270732))

(declare-fun m!7270734 () Bool)

(assert (=> b!6482311 m!7270734))

(assert (=> b!6482317 m!7269618))

(declare-fun m!7270736 () Bool)

(assert (=> b!6482317 m!7270736))

(declare-fun m!7270738 () Bool)

(assert (=> b!6482312 m!7270738))

(assert (=> b!6481394 d!2033861))

(declare-fun bs!1644648 () Bool)

(declare-fun d!2033865 () Bool)

(assert (= bs!1644648 (and d!2033865 d!2033741)))

(declare-fun lambda!358552 () Int)

(assert (=> bs!1644648 (= lambda!358552 lambda!358532)))

(declare-fun bs!1644649 () Bool)

(assert (= bs!1644649 (and d!2033865 d!2033777)))

(assert (=> bs!1644649 (= lambda!358552 lambda!358535)))

(declare-fun bs!1644650 () Bool)

(assert (= bs!1644650 (and d!2033865 d!2033861)))

(assert (=> bs!1644650 (= lambda!358552 lambda!358549)))

(declare-fun bs!1644651 () Bool)

(assert (= bs!1644651 (and d!2033865 d!2033707)))

(assert (=> bs!1644651 (= lambda!358552 lambda!358525)))

(declare-fun bs!1644652 () Bool)

(assert (= bs!1644652 (and d!2033865 d!2033697)))

(assert (=> bs!1644652 (= lambda!358552 lambda!358522)))

(declare-fun bs!1644653 () Bool)

(assert (= bs!1644653 (and d!2033865 b!6481378)))

(assert (=> bs!1644653 (= lambda!358552 lambda!358449)))

(declare-fun lt!2387015 () List!65374)

(assert (=> d!2033865 (forall!15543 lt!2387015 lambda!358552)))

(declare-fun e!3929020 () List!65374)

(assert (=> d!2033865 (= lt!2387015 e!3929020)))

(declare-fun c!1187550 () Bool)

(assert (=> d!2033865 (= c!1187550 (is-Cons!65251 zl!343))))

(assert (=> d!2033865 (= (unfocusZipperList!1779 zl!343) lt!2387015)))

(declare-fun b!6482323 () Bool)

(assert (=> b!6482323 (= e!3929020 (Cons!65250 (generalisedConcat!1955 (exprs!6242 (h!71699 zl!343))) (unfocusZipperList!1779 (t!379001 zl!343))))))

(declare-fun b!6482324 () Bool)

(assert (=> b!6482324 (= e!3929020 Nil!65250)))

(assert (= (and d!2033865 c!1187550) b!6482323))

(assert (= (and d!2033865 (not c!1187550)) b!6482324))

(declare-fun m!7270740 () Bool)

(assert (=> d!2033865 m!7270740))

(assert (=> b!6482323 m!7269616))

(declare-fun m!7270742 () Bool)

(assert (=> b!6482323 m!7270742))

(assert (=> b!6481394 d!2033865))

(declare-fun b!6482329 () Bool)

(declare-fun e!3929023 () Bool)

(declare-fun tp!1795605 () Bool)

(declare-fun tp!1795606 () Bool)

(assert (=> b!6482329 (= e!3929023 (and tp!1795605 tp!1795606))))

(assert (=> b!6481413 (= tp!1795562 e!3929023)))

(assert (= (and b!6481413 (is-Cons!65250 (exprs!6242 setElem!44148))) b!6482329))

(declare-fun b!6482334 () Bool)

(declare-fun e!3929026 () Bool)

(declare-fun tp!1795609 () Bool)

(assert (=> b!6482334 (= e!3929026 (and tp_is_empty!41969 tp!1795609))))

(assert (=> b!6481398 (= tp!1795561 e!3929026)))

(assert (= (and b!6481398 (is-Cons!65249 (t!378999 s!2326))) b!6482334))

(declare-fun b!6482358 () Bool)

(declare-fun e!3929035 () Bool)

(declare-fun tp!1795623 () Bool)

(declare-fun tp!1795621 () Bool)

(assert (=> b!6482358 (= e!3929035 (and tp!1795623 tp!1795621))))

(declare-fun b!6482357 () Bool)

(declare-fun tp!1795620 () Bool)

(assert (=> b!6482357 (= e!3929035 tp!1795620)))

(assert (=> b!6481393 (= tp!1795564 e!3929035)))

(declare-fun b!6482356 () Bool)

(declare-fun tp!1795622 () Bool)

(declare-fun tp!1795624 () Bool)

(assert (=> b!6482356 (= e!3929035 (and tp!1795622 tp!1795624))))

(declare-fun b!6482355 () Bool)

(assert (=> b!6482355 (= e!3929035 tp_is_empty!41969)))

(assert (= (and b!6481393 (is-ElementMatch!16358 (regOne!33228 r!7292))) b!6482355))

(assert (= (and b!6481393 (is-Concat!25203 (regOne!33228 r!7292))) b!6482356))

(assert (= (and b!6481393 (is-Star!16358 (regOne!33228 r!7292))) b!6482357))

(assert (= (and b!6481393 (is-Union!16358 (regOne!33228 r!7292))) b!6482358))

(declare-fun b!6482362 () Bool)

(declare-fun e!3929036 () Bool)

(declare-fun tp!1795628 () Bool)

(declare-fun tp!1795626 () Bool)

(assert (=> b!6482362 (= e!3929036 (and tp!1795628 tp!1795626))))

(declare-fun b!6482361 () Bool)

(declare-fun tp!1795625 () Bool)

(assert (=> b!6482361 (= e!3929036 tp!1795625)))

(assert (=> b!6481393 (= tp!1795566 e!3929036)))

(declare-fun b!6482360 () Bool)

(declare-fun tp!1795627 () Bool)

(declare-fun tp!1795629 () Bool)

(assert (=> b!6482360 (= e!3929036 (and tp!1795627 tp!1795629))))

(declare-fun b!6482359 () Bool)

(assert (=> b!6482359 (= e!3929036 tp_is_empty!41969)))

(assert (= (and b!6481393 (is-ElementMatch!16358 (regTwo!33228 r!7292))) b!6482359))

(assert (= (and b!6481393 (is-Concat!25203 (regTwo!33228 r!7292))) b!6482360))

(assert (= (and b!6481393 (is-Star!16358 (regTwo!33228 r!7292))) b!6482361))

(assert (= (and b!6481393 (is-Union!16358 (regTwo!33228 r!7292))) b!6482362))

(declare-fun b!6482366 () Bool)

(declare-fun e!3929037 () Bool)

(declare-fun tp!1795633 () Bool)

(declare-fun tp!1795631 () Bool)

(assert (=> b!6482366 (= e!3929037 (and tp!1795633 tp!1795631))))

(declare-fun b!6482365 () Bool)

(declare-fun tp!1795630 () Bool)

(assert (=> b!6482365 (= e!3929037 tp!1795630)))

(assert (=> b!6481382 (= tp!1795565 e!3929037)))

(declare-fun b!6482364 () Bool)

(declare-fun tp!1795632 () Bool)

(declare-fun tp!1795634 () Bool)

(assert (=> b!6482364 (= e!3929037 (and tp!1795632 tp!1795634))))

(declare-fun b!6482363 () Bool)

(assert (=> b!6482363 (= e!3929037 tp_is_empty!41969)))

(assert (= (and b!6481382 (is-ElementMatch!16358 (regOne!33229 r!7292))) b!6482363))

(assert (= (and b!6481382 (is-Concat!25203 (regOne!33229 r!7292))) b!6482364))

(assert (= (and b!6481382 (is-Star!16358 (regOne!33229 r!7292))) b!6482365))

(assert (= (and b!6481382 (is-Union!16358 (regOne!33229 r!7292))) b!6482366))

(declare-fun b!6482370 () Bool)

(declare-fun e!3929038 () Bool)

(declare-fun tp!1795638 () Bool)

(declare-fun tp!1795636 () Bool)

(assert (=> b!6482370 (= e!3929038 (and tp!1795638 tp!1795636))))

(declare-fun b!6482369 () Bool)

(declare-fun tp!1795635 () Bool)

(assert (=> b!6482369 (= e!3929038 tp!1795635)))

(assert (=> b!6481382 (= tp!1795567 e!3929038)))

(declare-fun b!6482368 () Bool)

(declare-fun tp!1795637 () Bool)

(declare-fun tp!1795639 () Bool)

(assert (=> b!6482368 (= e!3929038 (and tp!1795637 tp!1795639))))

(declare-fun b!6482367 () Bool)

(assert (=> b!6482367 (= e!3929038 tp_is_empty!41969)))

(assert (= (and b!6481382 (is-ElementMatch!16358 (regTwo!33229 r!7292))) b!6482367))

(assert (= (and b!6481382 (is-Concat!25203 (regTwo!33229 r!7292))) b!6482368))

(assert (= (and b!6481382 (is-Star!16358 (regTwo!33229 r!7292))) b!6482369))

(assert (= (and b!6481382 (is-Union!16358 (regTwo!33229 r!7292))) b!6482370))

(declare-fun b!6482380 () Bool)

(declare-fun e!3929043 () Bool)

(declare-fun tp!1795643 () Bool)

(declare-fun tp!1795641 () Bool)

(assert (=> b!6482380 (= e!3929043 (and tp!1795643 tp!1795641))))

(declare-fun b!6482379 () Bool)

(declare-fun tp!1795640 () Bool)

(assert (=> b!6482379 (= e!3929043 tp!1795640)))

(assert (=> b!6481416 (= tp!1795570 e!3929043)))

(declare-fun b!6482378 () Bool)

(declare-fun tp!1795642 () Bool)

(declare-fun tp!1795644 () Bool)

(assert (=> b!6482378 (= e!3929043 (and tp!1795642 tp!1795644))))

(declare-fun b!6482377 () Bool)

(assert (=> b!6482377 (= e!3929043 tp_is_empty!41969)))

(assert (= (and b!6481416 (is-ElementMatch!16358 (reg!16687 r!7292))) b!6482377))

(assert (= (and b!6481416 (is-Concat!25203 (reg!16687 r!7292))) b!6482378))

(assert (= (and b!6481416 (is-Star!16358 (reg!16687 r!7292))) b!6482379))

(assert (= (and b!6481416 (is-Union!16358 (reg!16687 r!7292))) b!6482380))

(declare-fun condSetEmpty!44154 () Bool)

(assert (=> setNonEmpty!44148 (= condSetEmpty!44154 (= setRest!44148 (as set.empty (Set Context!11484))))))

(declare-fun setRes!44154 () Bool)

(assert (=> setNonEmpty!44148 (= tp!1795563 setRes!44154)))

(declare-fun setIsEmpty!44154 () Bool)

(assert (=> setIsEmpty!44154 setRes!44154))

(declare-fun setElem!44154 () Context!11484)

(declare-fun tp!1795649 () Bool)

(declare-fun setNonEmpty!44154 () Bool)

(declare-fun e!3929046 () Bool)

(assert (=> setNonEmpty!44154 (= setRes!44154 (and tp!1795649 (inv!84143 setElem!44154) e!3929046))))

(declare-fun setRest!44154 () (Set Context!11484))

(assert (=> setNonEmpty!44154 (= setRest!44148 (set.union (set.insert setElem!44154 (as set.empty (Set Context!11484))) setRest!44154))))

(declare-fun b!6482387 () Bool)

(declare-fun tp!1795650 () Bool)

(assert (=> b!6482387 (= e!3929046 tp!1795650)))

(assert (= (and setNonEmpty!44148 condSetEmpty!44154) setIsEmpty!44154))

(assert (= (and setNonEmpty!44148 (not condSetEmpty!44154)) setNonEmpty!44154))

(assert (= setNonEmpty!44154 b!6482387))

(declare-fun m!7270744 () Bool)

(assert (=> setNonEmpty!44154 m!7270744))

(declare-fun b!6482388 () Bool)

(declare-fun e!3929047 () Bool)

(declare-fun tp!1795651 () Bool)

(declare-fun tp!1795652 () Bool)

(assert (=> b!6482388 (= e!3929047 (and tp!1795651 tp!1795652))))

(assert (=> b!6481395 (= tp!1795569 e!3929047)))

(assert (= (and b!6481395 (is-Cons!65250 (exprs!6242 (h!71699 zl!343)))) b!6482388))

(declare-fun b!6482396 () Bool)

(declare-fun e!3929053 () Bool)

(declare-fun tp!1795657 () Bool)

(assert (=> b!6482396 (= e!3929053 tp!1795657)))

(declare-fun e!3929052 () Bool)

(declare-fun tp!1795658 () Bool)

(declare-fun b!6482395 () Bool)

(assert (=> b!6482395 (= e!3929052 (and (inv!84143 (h!71699 (t!379001 zl!343))) e!3929053 tp!1795658))))

(assert (=> b!6481389 (= tp!1795568 e!3929052)))

(assert (= b!6482395 b!6482396))

(assert (= (and b!6481389 (is-Cons!65251 (t!379001 zl!343))) b!6482395))

(declare-fun m!7270746 () Bool)

(assert (=> b!6482395 m!7270746))

(declare-fun b_lambda!245515 () Bool)

(assert (= b_lambda!245505 (or b!6481403 b_lambda!245515)))

(declare-fun bs!1644654 () Bool)

(declare-fun d!2033867 () Bool)

(assert (= bs!1644654 (and d!2033867 b!6481403)))

(assert (=> bs!1644654 (= (dynLambda!25921 lambda!358443 (h!71699 zl!343)) (derivationStepZipperUp!1532 (h!71699 zl!343) (h!71697 s!2326)))))

(assert (=> bs!1644654 m!7269628))

(assert (=> d!2033719 d!2033867))

(declare-fun b_lambda!245517 () Bool)

(assert (= b_lambda!245509 (or b!6481403 b_lambda!245517)))

(declare-fun bs!1644655 () Bool)

(declare-fun d!2033869 () Bool)

(assert (= bs!1644655 (and d!2033869 b!6481403)))

(assert (=> bs!1644655 (= (dynLambda!25921 lambda!358443 lt!2386662) (derivationStepZipperUp!1532 lt!2386662 (h!71697 s!2326)))))

(assert (=> bs!1644655 m!7269740))

(assert (=> d!2033801 d!2033869))

(declare-fun b_lambda!245519 () Bool)

(assert (= b_lambda!245511 (or b!6481403 b_lambda!245519)))

(declare-fun bs!1644656 () Bool)

(declare-fun d!2033871 () Bool)

(assert (= bs!1644656 (and d!2033871 b!6481403)))

(assert (=> bs!1644656 (= (dynLambda!25921 lambda!358443 lt!2386651) (derivationStepZipperUp!1532 lt!2386651 (h!71697 s!2326)))))

(assert (=> bs!1644656 m!7269646))

(assert (=> d!2033853 d!2033871))

(declare-fun b_lambda!245521 () Bool)

(assert (= b_lambda!245513 (or b!6481403 b_lambda!245521)))

(declare-fun bs!1644657 () Bool)

(declare-fun d!2033873 () Bool)

(assert (= bs!1644657 (and d!2033873 b!6481403)))

(assert (=> bs!1644657 (= (dynLambda!25921 lambda!358443 lt!2386653) (derivationStepZipperUp!1532 lt!2386653 (h!71697 s!2326)))))

(assert (=> bs!1644657 m!7269658))

(assert (=> d!2033855 d!2033873))

(push 1)

(assert (not b!6481794))

(assert (not b!6481648))

(assert (not b!6481649))

(assert (not b!6481917))

(assert (not b!6481977))

(assert (not b!6482132))

(assert (not b!6481716))

(assert (not bm!561075))

(assert (not b!6481988))

(assert (not bm!561005))

(assert (not b!6482080))

(assert (not b!6481785))

(assert (not bs!1644657))

(assert (not d!2033653))

(assert (not b!6482134))

(assert (not d!2033839))

(assert (not b!6481791))

(assert (not b!6481994))

(assert (not bm!561042))

(assert (not b!6482364))

(assert (not d!2033841))

(assert (not b!6482128))

(assert (not b!6481881))

(assert (not b!6482169))

(assert (not b!6481982))

(assert (not b!6482279))

(assert (not d!2033813))

(assert (not d!2033833))

(assert (not b!6481718))

(assert (not b!6482379))

(assert (not d!2033693))

(assert (not bm!561006))

(assert (not d!2033707))

(assert (not d!2033845))

(assert (not b!6482312))

(assert (not d!2033865))

(assert (not b!6481808))

(assert (not b!6482378))

(assert (not b!6481869))

(assert (not d!2033629))

(assert (not bm!561037))

(assert (not bs!1644656))

(assert (not b!6481799))

(assert (not b!6482097))

(assert (not b!6482317))

(assert (not d!2033803))

(assert (not bm!561074))

(assert (not b!6482365))

(assert (not d!2033811))

(assert (not b!6482180))

(assert (not b!6481833))

(assert (not bm!561068))

(assert (not b!6482172))

(assert (not d!2033801))

(assert (not b!6482255))

(assert (not b!6482395))

(assert (not d!2033669))

(assert (not d!2033663))

(assert (not d!2033705))

(assert (not b!6482366))

(assert (not b!6482002))

(assert (not d!2033795))

(assert (not b!6482089))

(assert (not b!6482170))

(assert (not b!6482046))

(assert (not b!6481821))

(assert (not b!6481873))

(assert (not b!6482168))

(assert (not bm!561056))

(assert (not b!6482311))

(assert (not b!6482177))

(assert (not b!6481870))

(assert (not b!6481780))

(assert (not b!6482178))

(assert (not d!2033861))

(assert (not d!2033815))

(assert (not d!2033825))

(assert (not b!6482309))

(assert (not bm!561002))

(assert (not b!6481793))

(assert (not b!6482361))

(assert (not b!6481709))

(assert (not b!6481707))

(assert (not bm!561077))

(assert (not d!2033691))

(assert (not b!6482110))

(assert (not b!6482334))

(assert (not d!2033771))

(assert (not b!6481715))

(assert (not b!6482267))

(assert (not b!6482183))

(assert (not b!6481876))

(assert (not d!2033685))

(assert (not b!6482016))

(assert (not b!6481868))

(assert (not b!6481952))

(assert (not b!6481885))

(assert (not b!6482266))

(assert (not b!6481830))

(assert (not bm!561049))

(assert (not b!6482096))

(assert (not d!2033673))

(assert (not d!2033689))

(assert (not d!2033633))

(assert (not bm!561003))

(assert (not bm!561045))

(assert (not d!2033643))

(assert (not b!6481655))

(assert (not b!6481987))

(assert (not b!6481828))

(assert (not b!6481683))

(assert (not b!6481790))

(assert (not b!6482316))

(assert (not bm!561033))

(assert (not bm!561054))

(assert (not bm!560997))

(assert (not d!2033785))

(assert (not b!6482091))

(assert (not b!6482329))

(assert (not b!6482357))

(assert (not b!6481720))

(assert (not b!6482105))

(assert (not d!2033847))

(assert (not b!6482370))

(assert (not d!2033733))

(assert (not b!6482099))

(assert (not b!6481989))

(assert (not b!6481975))

(assert (not bm!561057))

(assert (not d!2033647))

(assert (not b!6482050))

(assert (not b!6482356))

(assert (not bm!561004))

(assert (not b!6482362))

(assert (not b!6482196))

(assert (not b!6481871))

(assert (not d!2033855))

(assert (not d!2033751))

(assert (not d!2033743))

(assert (not d!2033777))

(assert (not d!2033649))

(assert (not b!6482014))

(assert (not d!2033837))

(assert (not b!6482098))

(assert (not b!6482083))

(assert (not b_lambda!245515))

(assert (not d!2033741))

(assert (not d!2033657))

(assert (not d!2033679))

(assert (not d!2033655))

(assert (not b_lambda!245519))

(assert (not d!2033719))

(assert (not b!6481827))

(assert (not b!6482171))

(assert tp_is_empty!41969)

(assert (not d!2033853))

(assert (not b!6481813))

(assert (not d!2033639))

(assert (not bm!561034))

(assert (not b!6481786))

(assert (not b!6482310))

(assert (not b!6481775))

(assert (not b!6481684))

(assert (not b!6481997))

(assert (not d!2033729))

(assert (not d!2033775))

(assert (not bm!561069))

(assert (not d!2033807))

(assert (not d!2033645))

(assert (not b!6481814))

(assert (not bm!561078))

(assert (not b_lambda!245521))

(assert (not b!6482261))

(assert (not b!6482396))

(assert (not b!6482268))

(assert (not bm!561017))

(assert (not bm!561007))

(assert (not d!2033675))

(assert (not d!2033849))

(assert (not b!6482015))

(assert (not b!6482314))

(assert (not b!6481816))

(assert (not b!6481822))

(assert (not d!2033749))

(assert (not d!2033789))

(assert (not d!2033859))

(assert (not bs!1644654))

(assert (not b!6482167))

(assert (not d!2033805))

(assert (not setNonEmpty!44154))

(assert (not d!2033769))

(assert (not bm!561070))

(assert (not d!2033635))

(assert (not d!2033753))

(assert (not b!6482368))

(assert (not b!6482239))

(assert (not b!6481804))

(assert (not b!6481995))

(assert (not d!2033755))

(assert (not b!6481985))

(assert (not d!2033659))

(assert (not d!2033697))

(assert (not bm!561040))

(assert (not bm!561018))

(assert (not bm!561053))

(assert (not b!6481706))

(assert (not bm!561058))

(assert (not b!6481875))

(assert (not b!6482166))

(assert (not b!6482273))

(assert (not b!6481721))

(assert (not d!2033631))

(assert (not b!6482079))

(assert (not b!6482246))

(assert (not bm!561046))

(assert (not b!6482082))

(assert (not d!2033651))

(assert (not b!6482358))

(assert (not b!6482250))

(assert (not b_lambda!245517))

(assert (not b!6482013))

(assert (not b!6482264))

(assert (not b!6482117))

(assert (not b!6482360))

(assert (not b!6481657))

(assert (not d!2033765))

(assert (not b!6481882))

(assert (not d!2033713))

(assert (not b!6481712))

(assert (not d!2033773))

(assert (not b!6482116))

(assert (not b!6482387))

(assert (not b!6481784))

(assert (not b!6482045))

(assert (not b!6482000))

(assert (not b!6482380))

(assert (not b!6481660))

(assert (not bm!561041))

(assert (not b!6481819))

(assert (not d!2033763))

(assert (not b!6482388))

(assert (not d!2033759))

(assert (not b!6482369))

(assert (not b!6482323))

(assert (not d!2033681))

(assert (not b!6481980))

(assert (not b!6481807))

(assert (not bm!561076))

(assert (not d!2033661))

(assert (not d!2033677))

(assert (not bs!1644655))

(assert (not b!6482107))

(assert (not b!6482104))

(assert (not b!6481711))

(assert (not b!6481714))

(assert (not b!6482247))

(assert (not b!6482276))

(assert (not d!2033843))

(assert (not b!6482094))

(assert (not d!2033641))

(assert (not b!6481705))

(assert (not bm!561043))

(assert (not b!6482259))

(assert (not d!2033757))

(assert (not b!6482274))

(assert (not b!6481788))

(assert (not b!6481654))

(assert (not b!6482201))

(assert (not b!6482251))

(assert (not b!6482088))

(assert (not d!2033671))

(assert (not b!6482254))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

