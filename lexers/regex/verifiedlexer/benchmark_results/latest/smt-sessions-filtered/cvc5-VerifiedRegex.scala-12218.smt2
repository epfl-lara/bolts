; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!688494 () Bool)

(assert start!688494)

(declare-fun b!7079548 () Bool)

(assert (=> b!7079548 true))

(declare-fun b!7079534 () Bool)

(assert (=> b!7079534 true))

(declare-fun b!7079543 () Bool)

(assert (=> b!7079543 true))

(declare-fun bs!1881889 () Bool)

(declare-fun b!7079541 () Bool)

(assert (= bs!1881889 (and b!7079541 b!7079548)))

(declare-fun lambda!427478 () Int)

(declare-datatypes ((C!35634 0))(
  ( (C!35635 (val!27519 Int)) )
))
(declare-datatypes ((List!68572 0))(
  ( (Nil!68448) (Cons!68448 (h!74896 C!35634) (t!382357 List!68572)) )
))
(declare-fun lt!2551441 () List!68572)

(declare-fun lambda!427482 () Int)

(declare-fun s!7408 () List!68572)

(assert (=> bs!1881889 (= (= lt!2551441 s!7408) (= lambda!427482 lambda!427478))))

(assert (=> b!7079541 true))

(declare-fun res!2891813 () Bool)

(declare-fun e!4256193 () Bool)

(assert (=> start!688494 (=> (not res!2891813) (not e!4256193))))

(declare-datatypes ((Regex!17682 0))(
  ( (ElementMatch!17682 (c!1321217 C!35634)) (Concat!26527 (regOne!35876 Regex!17682) (regTwo!35876 Regex!17682)) (EmptyExpr!17682) (Star!17682 (reg!18011 Regex!17682)) (EmptyLang!17682) (Union!17682 (regOne!35877 Regex!17682) (regTwo!35877 Regex!17682)) )
))
(declare-datatypes ((List!68573 0))(
  ( (Nil!68449) (Cons!68449 (h!74897 Regex!17682) (t!382358 List!68573)) )
))
(declare-datatypes ((Context!13356 0))(
  ( (Context!13357 (exprs!7178 List!68573)) )
))
(declare-fun lt!2551421 () (Set Context!13356))

(declare-fun matchZipper!3222 ((Set Context!13356) List!68572) Bool)

(assert (=> start!688494 (= res!2891813 (matchZipper!3222 lt!2551421 s!7408))))

(declare-fun z1!570 () (Set Context!13356))

(declare-fun ct2!306 () Context!13356)

(declare-fun appendTo!803 ((Set Context!13356) Context!13356) (Set Context!13356))

(assert (=> start!688494 (= lt!2551421 (appendTo!803 z1!570 ct2!306))))

(assert (=> start!688494 e!4256193))

(declare-fun condSetEmpty!50458 () Bool)

(assert (=> start!688494 (= condSetEmpty!50458 (= z1!570 (as set.empty (Set Context!13356))))))

(declare-fun setRes!50458 () Bool)

(assert (=> start!688494 setRes!50458))

(declare-fun e!4256202 () Bool)

(declare-fun inv!87065 (Context!13356) Bool)

(assert (=> start!688494 (and (inv!87065 ct2!306) e!4256202)))

(declare-fun e!4256201 () Bool)

(assert (=> start!688494 e!4256201))

(declare-fun b!7079529 () Bool)

(declare-fun res!2891815 () Bool)

(declare-fun e!4256196 () Bool)

(assert (=> b!7079529 (=> res!2891815 e!4256196)))

(declare-datatypes ((tuple2!68322 0))(
  ( (tuple2!68323 (_1!37464 List!68572) (_2!37464 List!68572)) )
))
(declare-fun lt!2551431 () tuple2!68322)

(declare-fun ++!15839 (List!68572 List!68572) List!68572)

(assert (=> b!7079529 (= res!2891815 (not (= (++!15839 lt!2551441 (_2!37464 lt!2551431)) s!7408)))))

(declare-fun b!7079530 () Bool)

(declare-fun e!4256200 () Bool)

(declare-fun e!4256199 () Bool)

(assert (=> b!7079530 (= e!4256200 e!4256199)))

(declare-fun res!2891822 () Bool)

(assert (=> b!7079530 (=> res!2891822 e!4256199)))

(declare-fun lt!2551416 () (Set Context!13356))

(assert (=> b!7079530 (= res!2891822 (not (matchZipper!3222 lt!2551416 (_1!37464 lt!2551431))))))

(declare-datatypes ((Option!16993 0))(
  ( (None!16992) (Some!16992 (v!53286 tuple2!68322)) )
))
(declare-fun lt!2551414 () Option!16993)

(declare-fun get!23985 (Option!16993) tuple2!68322)

(assert (=> b!7079530 (= lt!2551431 (get!23985 lt!2551414))))

(declare-fun isDefined!13694 (Option!16993) Bool)

(assert (=> b!7079530 (isDefined!13694 lt!2551414)))

(declare-fun lt!2551428 () (Set Context!13356))

(declare-fun findConcatSeparationZippers!509 ((Set Context!13356) (Set Context!13356) List!68572 List!68572 List!68572) Option!16993)

(assert (=> b!7079530 (= lt!2551414 (findConcatSeparationZippers!509 lt!2551416 lt!2551428 Nil!68448 (t!382357 s!7408) (t!382357 s!7408)))))

(assert (=> b!7079530 (= lt!2551428 (set.insert ct2!306 (as set.empty (Set Context!13356))))))

(declare-datatypes ((Unit!162075 0))(
  ( (Unit!162076) )
))
(declare-fun lt!2551430 () Unit!162075)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!497 ((Set Context!13356) Context!13356 List!68572) Unit!162075)

(assert (=> b!7079530 (= lt!2551430 (lemmaConcatZipperMatchesStringThenFindConcatDefined!497 lt!2551416 ct2!306 (t!382357 s!7408)))))

(declare-fun lt!2551445 () (Set Context!13356))

(assert (=> b!7079530 (= lt!2551445 (appendTo!803 lt!2551416 ct2!306))))

(declare-fun lt!2551443 () Context!13356)

(declare-fun lt!2551418 () Context!13356)

(declare-fun derivationStepZipperDown!2316 (Regex!17682 Context!13356 C!35634) (Set Context!13356))

(assert (=> b!7079530 (= lt!2551416 (derivationStepZipperDown!2316 (h!74897 (exprs!7178 lt!2551443)) lt!2551418 (h!74896 s!7408)))))

(declare-fun lt!2551423 () Unit!162075)

(declare-fun lt!2551426 () List!68573)

(declare-fun lambda!427480 () Int)

(declare-fun lemmaConcatPreservesForall!993 (List!68573 List!68573 Int) Unit!162075)

(assert (=> b!7079530 (= lt!2551423 (lemmaConcatPreservesForall!993 lt!2551426 (exprs!7178 ct2!306) lambda!427480))))

(declare-fun lt!2551436 () Unit!162075)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!149 (Context!13356 Regex!17682 C!35634 Context!13356) Unit!162075)

(assert (=> b!7079530 (= lt!2551436 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!149 lt!2551418 (h!74897 (exprs!7178 lt!2551443)) (h!74896 s!7408) ct2!306))))

(declare-fun b!7079531 () Bool)

(declare-fun e!4256190 () Bool)

(declare-fun e!4256197 () Bool)

(assert (=> b!7079531 (= e!4256190 e!4256197)))

(declare-fun res!2891828 () Bool)

(assert (=> b!7079531 (=> res!2891828 e!4256197)))

(declare-fun nullable!7365 (Regex!17682) Bool)

(assert (=> b!7079531 (= res!2891828 (nullable!7365 (h!74897 (exprs!7178 lt!2551443))))))

(assert (=> b!7079531 (= lt!2551418 (Context!13357 lt!2551426))))

(declare-fun tail!13889 (List!68573) List!68573)

(assert (=> b!7079531 (= lt!2551426 (tail!13889 (exprs!7178 lt!2551443)))))

(declare-fun b!7079532 () Bool)

(declare-fun isPrefix!5863 (List!68572 List!68572) Bool)

(assert (=> b!7079532 (= e!4256196 (isPrefix!5863 Nil!68448 lt!2551441))))

(declare-fun b!7079533 () Bool)

(declare-fun e!4256198 () Bool)

(declare-fun tp!1943300 () Bool)

(assert (=> b!7079533 (= e!4256198 tp!1943300)))

(declare-fun e!4256195 () Bool)

(declare-fun e!4256191 () Bool)

(assert (=> b!7079534 (= e!4256195 e!4256191)))

(declare-fun res!2891827 () Bool)

(assert (=> b!7079534 (=> res!2891827 e!4256191)))

(declare-fun lt!2551439 () Context!13356)

(declare-fun lt!2551424 () Context!13356)

(assert (=> b!7079534 (= res!2891827 (or (not (= lt!2551424 lt!2551439)) (not (set.member lt!2551443 z1!570))))))

(declare-fun ++!15840 (List!68573 List!68573) List!68573)

(assert (=> b!7079534 (= lt!2551424 (Context!13357 (++!15840 (exprs!7178 lt!2551443) (exprs!7178 ct2!306))))))

(declare-fun lt!2551432 () Unit!162075)

(assert (=> b!7079534 (= lt!2551432 (lemmaConcatPreservesForall!993 (exprs!7178 lt!2551443) (exprs!7178 ct2!306) lambda!427480))))

(declare-fun lambda!427479 () Int)

(declare-fun mapPost2!511 ((Set Context!13356) Int Context!13356) Context!13356)

(assert (=> b!7079534 (= lt!2551443 (mapPost2!511 z1!570 lambda!427479 lt!2551439))))

(declare-fun setIsEmpty!50458 () Bool)

(assert (=> setIsEmpty!50458 setRes!50458))

(declare-fun b!7079535 () Bool)

(declare-fun tp_is_empty!44589 () Bool)

(declare-fun tp!1943302 () Bool)

(assert (=> b!7079535 (= e!4256201 (and tp_is_empty!44589 tp!1943302))))

(declare-fun setNonEmpty!50458 () Bool)

(declare-fun tp!1943299 () Bool)

(declare-fun setElem!50458 () Context!13356)

(assert (=> setNonEmpty!50458 (= setRes!50458 (and tp!1943299 (inv!87065 setElem!50458) e!4256198))))

(declare-fun setRest!50458 () (Set Context!13356))

(assert (=> setNonEmpty!50458 (= z1!570 (set.union (set.insert setElem!50458 (as set.empty (Set Context!13356))) setRest!50458))))

(declare-fun b!7079536 () Bool)

(declare-fun e!4256192 () Bool)

(assert (=> b!7079536 (= e!4256199 e!4256192)))

(declare-fun res!2891825 () Bool)

(assert (=> b!7079536 (=> res!2891825 e!4256192)))

(declare-fun lt!2551438 () (Set Context!13356))

(declare-fun lt!2551420 () (Set Context!13356))

(assert (=> b!7079536 (= res!2891825 (or (not (= lt!2551420 lt!2551438)) (not (= lt!2551420 lt!2551416))))))

(declare-fun lt!2551440 () (Set Context!13356))

(declare-fun lambda!427481 () Int)

(declare-fun flatMap!2608 ((Set Context!13356) Int) (Set Context!13356))

(declare-fun derivationStepZipperUp!2266 (Context!13356 C!35634) (Set Context!13356))

(assert (=> b!7079536 (= (flatMap!2608 lt!2551440 lambda!427481) (derivationStepZipperUp!2266 lt!2551443 (h!74896 s!7408)))))

(declare-fun lt!2551417 () Unit!162075)

(declare-fun lemmaFlatMapOnSingletonSet!2117 ((Set Context!13356) Context!13356 Int) Unit!162075)

(assert (=> b!7079536 (= lt!2551417 (lemmaFlatMapOnSingletonSet!2117 lt!2551440 lt!2551443 lambda!427481))))

(assert (=> b!7079536 (= lt!2551438 (derivationStepZipperUp!2266 lt!2551443 (h!74896 s!7408)))))

(declare-fun derivationStepZipper!3132 ((Set Context!13356) C!35634) (Set Context!13356))

(assert (=> b!7079536 (= lt!2551420 (derivationStepZipper!3132 lt!2551440 (h!74896 s!7408)))))

(assert (=> b!7079536 (= lt!2551440 (set.insert lt!2551443 (as set.empty (Set Context!13356))))))

(declare-fun b!7079537 () Bool)

(assert (=> b!7079537 (= e!4256197 e!4256200)))

(declare-fun res!2891821 () Bool)

(assert (=> b!7079537 (=> res!2891821 e!4256200)))

(assert (=> b!7079537 (= res!2891821 (not (matchZipper!3222 lt!2551445 (t!382357 s!7408))))))

(assert (=> b!7079537 (= lt!2551445 (derivationStepZipperDown!2316 (h!74897 (exprs!7178 lt!2551443)) (Context!13357 (++!15840 lt!2551426 (exprs!7178 ct2!306))) (h!74896 s!7408)))))

(declare-fun lt!2551444 () Unit!162075)

(assert (=> b!7079537 (= lt!2551444 (lemmaConcatPreservesForall!993 lt!2551426 (exprs!7178 ct2!306) lambda!427480))))

(declare-fun b!7079538 () Bool)

(declare-fun e!4256189 () Bool)

(assert (=> b!7079538 (= e!4256192 e!4256189)))

(declare-fun res!2891817 () Bool)

(assert (=> b!7079538 (=> res!2891817 e!4256189)))

(assert (=> b!7079538 (= res!2891817 (not (matchZipper!3222 lt!2551440 lt!2551441)))))

(assert (=> b!7079538 (= lt!2551441 (Cons!68448 (h!74896 s!7408) (_1!37464 lt!2551431)))))

(declare-fun b!7079539 () Bool)

(declare-fun e!4256194 () Bool)

(assert (=> b!7079539 (= e!4256191 e!4256194)))

(declare-fun res!2891819 () Bool)

(assert (=> b!7079539 (=> res!2891819 e!4256194)))

(declare-fun lt!2551415 () (Set Context!13356))

(declare-fun lt!2551425 () (Set Context!13356))

(assert (=> b!7079539 (= res!2891819 (not (= lt!2551415 lt!2551425)))))

(assert (=> b!7079539 (= lt!2551415 (set.insert lt!2551424 (as set.empty (Set Context!13356))))))

(declare-fun lt!2551437 () Unit!162075)

(assert (=> b!7079539 (= lt!2551437 (lemmaConcatPreservesForall!993 (exprs!7178 lt!2551443) (exprs!7178 ct2!306) lambda!427480))))

(declare-fun b!7079540 () Bool)

(declare-fun res!2891824 () Bool)

(assert (=> b!7079540 (=> res!2891824 e!4256195)))

(assert (=> b!7079540 (= res!2891824 (not (set.member lt!2551439 lt!2551421)))))

(assert (=> b!7079541 (= e!4256189 e!4256196)))

(declare-fun res!2891818 () Bool)

(assert (=> b!7079541 (=> res!2891818 e!4256196)))

(assert (=> b!7079541 (= res!2891818 (not (matchZipper!3222 z1!570 lt!2551441)))))

(declare-datatypes ((List!68574 0))(
  ( (Nil!68450) (Cons!68450 (h!74898 Context!13356) (t!382359 List!68574)) )
))
(declare-fun lt!2551435 () List!68574)

(declare-fun content!13862 (List!68574) (Set Context!13356))

(assert (=> b!7079541 (matchZipper!3222 (content!13862 lt!2551435) lt!2551441)))

(declare-fun lt!2551433 () Unit!162075)

(declare-fun lemmaExistsMatchingContextThenMatchingString!67 (List!68574 List!68572) Unit!162075)

(assert (=> b!7079541 (= lt!2551433 (lemmaExistsMatchingContextThenMatchingString!67 lt!2551435 lt!2551441))))

(declare-fun toList!11023 ((Set Context!13356)) List!68574)

(assert (=> b!7079541 (= lt!2551435 (toList!11023 z1!570))))

(declare-fun exists!3759 ((Set Context!13356) Int) Bool)

(assert (=> b!7079541 (exists!3759 z1!570 lambda!427482)))

(declare-fun lt!2551413 () Unit!162075)

(declare-fun lemmaContainsThenExists!174 ((Set Context!13356) Context!13356 Int) Unit!162075)

(assert (=> b!7079541 (= lt!2551413 (lemmaContainsThenExists!174 z1!570 lt!2551443 lambda!427482))))

(assert (=> b!7079541 (isDefined!13694 (findConcatSeparationZippers!509 lt!2551440 lt!2551428 Nil!68448 s!7408 s!7408))))

(declare-fun lt!2551442 () Unit!162075)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!95 ((Set Context!13356) (Set Context!13356) List!68572 List!68572 List!68572 List!68572 List!68572) Unit!162075)

(assert (=> b!7079541 (= lt!2551442 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!95 lt!2551440 lt!2551428 lt!2551441 (_2!37464 lt!2551431) s!7408 Nil!68448 s!7408))))

(declare-fun b!7079542 () Bool)

(declare-fun res!2891814 () Bool)

(assert (=> b!7079542 (=> res!2891814 e!4256190)))

(declare-fun isEmpty!39959 (List!68573) Bool)

(assert (=> b!7079542 (= res!2891814 (isEmpty!39959 (exprs!7178 lt!2551443)))))

(assert (=> b!7079543 (= e!4256194 e!4256190)))

(declare-fun res!2891826 () Bool)

(assert (=> b!7079543 (=> res!2891826 e!4256190)))

(declare-fun lt!2551422 () (Set Context!13356))

(assert (=> b!7079543 (= res!2891826 (not (= (derivationStepZipper!3132 lt!2551415 (h!74896 s!7408)) lt!2551422)))))

(assert (=> b!7079543 (= (flatMap!2608 lt!2551415 lambda!427481) (derivationStepZipperUp!2266 lt!2551424 (h!74896 s!7408)))))

(declare-fun lt!2551429 () Unit!162075)

(assert (=> b!7079543 (= lt!2551429 (lemmaFlatMapOnSingletonSet!2117 lt!2551415 lt!2551424 lambda!427481))))

(assert (=> b!7079543 (= lt!2551422 (derivationStepZipperUp!2266 lt!2551424 (h!74896 s!7408)))))

(declare-fun lt!2551419 () Unit!162075)

(assert (=> b!7079543 (= lt!2551419 (lemmaConcatPreservesForall!993 (exprs!7178 lt!2551443) (exprs!7178 ct2!306) lambda!427480))))

(declare-fun b!7079544 () Bool)

(declare-fun res!2891820 () Bool)

(assert (=> b!7079544 (=> (not res!2891820) (not e!4256193))))

(assert (=> b!7079544 (= res!2891820 (is-Cons!68448 s!7408))))

(declare-fun b!7079545 () Bool)

(declare-fun res!2891812 () Bool)

(assert (=> b!7079545 (=> res!2891812 e!4256190)))

(assert (=> b!7079545 (= res!2891812 (not (is-Cons!68449 (exprs!7178 lt!2551443))))))

(declare-fun b!7079546 () Bool)

(declare-fun tp!1943301 () Bool)

(assert (=> b!7079546 (= e!4256202 tp!1943301)))

(declare-fun b!7079547 () Bool)

(declare-fun res!2891816 () Bool)

(assert (=> b!7079547 (=> res!2891816 e!4256199)))

(assert (=> b!7079547 (= res!2891816 (not (matchZipper!3222 lt!2551428 (_2!37464 lt!2551431))))))

(assert (=> b!7079548 (= e!4256193 (not e!4256195))))

(declare-fun res!2891811 () Bool)

(assert (=> b!7079548 (=> res!2891811 e!4256195)))

(assert (=> b!7079548 (= res!2891811 (not (matchZipper!3222 lt!2551425 s!7408)))))

(assert (=> b!7079548 (= lt!2551425 (set.insert lt!2551439 (as set.empty (Set Context!13356))))))

(declare-fun getWitness!1806 ((Set Context!13356) Int) Context!13356)

(assert (=> b!7079548 (= lt!2551439 (getWitness!1806 lt!2551421 lambda!427478))))

(declare-fun lt!2551434 () List!68574)

(declare-fun exists!3760 (List!68574 Int) Bool)

(assert (=> b!7079548 (exists!3760 lt!2551434 lambda!427478)))

(declare-fun lt!2551427 () Unit!162075)

(declare-fun lemmaZipperMatchesExistsMatchingContext!603 (List!68574 List!68572) Unit!162075)

(assert (=> b!7079548 (= lt!2551427 (lemmaZipperMatchesExistsMatchingContext!603 lt!2551434 s!7408))))

(assert (=> b!7079548 (= lt!2551434 (toList!11023 lt!2551421))))

(declare-fun b!7079549 () Bool)

(declare-fun res!2891823 () Bool)

(assert (=> b!7079549 (=> res!2891823 e!4256199)))

(assert (=> b!7079549 (= res!2891823 (not (= (++!15839 (_1!37464 lt!2551431) (_2!37464 lt!2551431)) (t!382357 s!7408))))))

(assert (= (and start!688494 res!2891813) b!7079544))

(assert (= (and b!7079544 res!2891820) b!7079548))

(assert (= (and b!7079548 (not res!2891811)) b!7079540))

(assert (= (and b!7079540 (not res!2891824)) b!7079534))

(assert (= (and b!7079534 (not res!2891827)) b!7079539))

(assert (= (and b!7079539 (not res!2891819)) b!7079543))

(assert (= (and b!7079543 (not res!2891826)) b!7079545))

(assert (= (and b!7079545 (not res!2891812)) b!7079542))

(assert (= (and b!7079542 (not res!2891814)) b!7079531))

(assert (= (and b!7079531 (not res!2891828)) b!7079537))

(assert (= (and b!7079537 (not res!2891821)) b!7079530))

(assert (= (and b!7079530 (not res!2891822)) b!7079547))

(assert (= (and b!7079547 (not res!2891816)) b!7079549))

(assert (= (and b!7079549 (not res!2891823)) b!7079536))

(assert (= (and b!7079536 (not res!2891825)) b!7079538))

(assert (= (and b!7079538 (not res!2891817)) b!7079541))

(assert (= (and b!7079541 (not res!2891818)) b!7079529))

(assert (= (and b!7079529 (not res!2891815)) b!7079532))

(assert (= (and start!688494 condSetEmpty!50458) setIsEmpty!50458))

(assert (= (and start!688494 (not condSetEmpty!50458)) setNonEmpty!50458))

(assert (= setNonEmpty!50458 b!7079533))

(assert (= start!688494 b!7079546))

(assert (= (and start!688494 (is-Cons!68448 s!7408)) b!7079535))

(declare-fun m!7809548 () Bool)

(assert (=> b!7079530 m!7809548))

(declare-fun m!7809550 () Bool)

(assert (=> b!7079530 m!7809550))

(declare-fun m!7809552 () Bool)

(assert (=> b!7079530 m!7809552))

(declare-fun m!7809554 () Bool)

(assert (=> b!7079530 m!7809554))

(declare-fun m!7809556 () Bool)

(assert (=> b!7079530 m!7809556))

(declare-fun m!7809558 () Bool)

(assert (=> b!7079530 m!7809558))

(declare-fun m!7809560 () Bool)

(assert (=> b!7079530 m!7809560))

(declare-fun m!7809562 () Bool)

(assert (=> b!7079530 m!7809562))

(declare-fun m!7809564 () Bool)

(assert (=> b!7079530 m!7809564))

(declare-fun m!7809566 () Bool)

(assert (=> b!7079530 m!7809566))

(declare-fun m!7809568 () Bool)

(assert (=> b!7079537 m!7809568))

(declare-fun m!7809570 () Bool)

(assert (=> b!7079537 m!7809570))

(declare-fun m!7809572 () Bool)

(assert (=> b!7079537 m!7809572))

(assert (=> b!7079537 m!7809558))

(declare-fun m!7809574 () Bool)

(assert (=> b!7079538 m!7809574))

(declare-fun m!7809576 () Bool)

(assert (=> b!7079540 m!7809576))

(declare-fun m!7809578 () Bool)

(assert (=> b!7079531 m!7809578))

(declare-fun m!7809580 () Bool)

(assert (=> b!7079531 m!7809580))

(declare-fun m!7809582 () Bool)

(assert (=> start!688494 m!7809582))

(declare-fun m!7809584 () Bool)

(assert (=> start!688494 m!7809584))

(declare-fun m!7809586 () Bool)

(assert (=> start!688494 m!7809586))

(declare-fun m!7809588 () Bool)

(assert (=> b!7079543 m!7809588))

(declare-fun m!7809590 () Bool)

(assert (=> b!7079543 m!7809590))

(declare-fun m!7809592 () Bool)

(assert (=> b!7079543 m!7809592))

(declare-fun m!7809594 () Bool)

(assert (=> b!7079543 m!7809594))

(declare-fun m!7809596 () Bool)

(assert (=> b!7079543 m!7809596))

(declare-fun m!7809598 () Bool)

(assert (=> b!7079532 m!7809598))

(declare-fun m!7809600 () Bool)

(assert (=> b!7079548 m!7809600))

(declare-fun m!7809602 () Bool)

(assert (=> b!7079548 m!7809602))

(declare-fun m!7809604 () Bool)

(assert (=> b!7079548 m!7809604))

(declare-fun m!7809606 () Bool)

(assert (=> b!7079548 m!7809606))

(declare-fun m!7809608 () Bool)

(assert (=> b!7079548 m!7809608))

(declare-fun m!7809610 () Bool)

(assert (=> b!7079548 m!7809610))

(declare-fun m!7809612 () Bool)

(assert (=> b!7079534 m!7809612))

(declare-fun m!7809614 () Bool)

(assert (=> b!7079534 m!7809614))

(assert (=> b!7079534 m!7809594))

(declare-fun m!7809616 () Bool)

(assert (=> b!7079534 m!7809616))

(declare-fun m!7809618 () Bool)

(assert (=> b!7079539 m!7809618))

(assert (=> b!7079539 m!7809594))

(declare-fun m!7809620 () Bool)

(assert (=> b!7079536 m!7809620))

(declare-fun m!7809622 () Bool)

(assert (=> b!7079536 m!7809622))

(declare-fun m!7809624 () Bool)

(assert (=> b!7079536 m!7809624))

(declare-fun m!7809626 () Bool)

(assert (=> b!7079536 m!7809626))

(declare-fun m!7809628 () Bool)

(assert (=> b!7079536 m!7809628))

(declare-fun m!7809630 () Bool)

(assert (=> b!7079547 m!7809630))

(declare-fun m!7809632 () Bool)

(assert (=> b!7079549 m!7809632))

(declare-fun m!7809634 () Bool)

(assert (=> setNonEmpty!50458 m!7809634))

(declare-fun m!7809636 () Bool)

(assert (=> b!7079541 m!7809636))

(declare-fun m!7809638 () Bool)

(assert (=> b!7079541 m!7809638))

(assert (=> b!7079541 m!7809638))

(declare-fun m!7809640 () Bool)

(assert (=> b!7079541 m!7809640))

(declare-fun m!7809642 () Bool)

(assert (=> b!7079541 m!7809642))

(declare-fun m!7809644 () Bool)

(assert (=> b!7079541 m!7809644))

(declare-fun m!7809646 () Bool)

(assert (=> b!7079541 m!7809646))

(declare-fun m!7809648 () Bool)

(assert (=> b!7079541 m!7809648))

(declare-fun m!7809650 () Bool)

(assert (=> b!7079541 m!7809650))

(declare-fun m!7809652 () Bool)

(assert (=> b!7079541 m!7809652))

(assert (=> b!7079541 m!7809648))

(declare-fun m!7809654 () Bool)

(assert (=> b!7079541 m!7809654))

(declare-fun m!7809656 () Bool)

(assert (=> b!7079542 m!7809656))

(declare-fun m!7809658 () Bool)

(assert (=> b!7079529 m!7809658))

(push 1)

(assert (not b!7079539))

(assert (not b!7079549))

(assert (not b!7079542))

(assert (not setNonEmpty!50458))

(assert (not b!7079541))

(assert (not b!7079534))

(assert tp_is_empty!44589)

(assert (not b!7079546))

(assert (not b!7079547))

(assert (not b!7079533))

(assert (not start!688494))

(assert (not b!7079548))

(assert (not b!7079531))

(assert (not b!7079536))

(assert (not b!7079538))

(assert (not b!7079543))

(assert (not b!7079535))

(assert (not b!7079537))

(assert (not b!7079530))

(assert (not b!7079529))

(assert (not b!7079532))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2214277 () Bool)

(declare-fun nullableFct!2835 (Regex!17682) Bool)

(assert (=> d!2214277 (= (nullable!7365 (h!74897 (exprs!7178 lt!2551443))) (nullableFct!2835 (h!74897 (exprs!7178 lt!2551443))))))

(declare-fun bs!1881891 () Bool)

(assert (= bs!1881891 d!2214277))

(declare-fun m!7809772 () Bool)

(assert (=> bs!1881891 m!7809772))

(assert (=> b!7079531 d!2214277))

(declare-fun d!2214279 () Bool)

(assert (=> d!2214279 (= (tail!13889 (exprs!7178 lt!2551443)) (t!382358 (exprs!7178 lt!2551443)))))

(assert (=> b!7079531 d!2214279))

(declare-fun b!7079635 () Bool)

(declare-fun e!4256251 () Bool)

(declare-fun tail!13891 (List!68572) List!68572)

(assert (=> b!7079635 (= e!4256251 (isPrefix!5863 (tail!13891 Nil!68448) (tail!13891 lt!2551441)))))

(declare-fun d!2214281 () Bool)

(declare-fun e!4256253 () Bool)

(assert (=> d!2214281 e!4256253))

(declare-fun res!2891894 () Bool)

(assert (=> d!2214281 (=> res!2891894 e!4256253)))

(declare-fun lt!2551549 () Bool)

(assert (=> d!2214281 (= res!2891894 (not lt!2551549))))

(declare-fun e!4256252 () Bool)

(assert (=> d!2214281 (= lt!2551549 e!4256252)))

(declare-fun res!2891895 () Bool)

(assert (=> d!2214281 (=> res!2891895 e!4256252)))

(assert (=> d!2214281 (= res!2891895 (is-Nil!68448 Nil!68448))))

(assert (=> d!2214281 (= (isPrefix!5863 Nil!68448 lt!2551441) lt!2551549)))

(declare-fun b!7079634 () Bool)

(declare-fun res!2891893 () Bool)

(assert (=> b!7079634 (=> (not res!2891893) (not e!4256251))))

(declare-fun head!14432 (List!68572) C!35634)

(assert (=> b!7079634 (= res!2891893 (= (head!14432 Nil!68448) (head!14432 lt!2551441)))))

(declare-fun b!7079633 () Bool)

(assert (=> b!7079633 (= e!4256252 e!4256251)))

(declare-fun res!2891892 () Bool)

(assert (=> b!7079633 (=> (not res!2891892) (not e!4256251))))

(assert (=> b!7079633 (= res!2891892 (not (is-Nil!68448 lt!2551441)))))

(declare-fun b!7079636 () Bool)

(declare-fun size!41252 (List!68572) Int)

(assert (=> b!7079636 (= e!4256253 (>= (size!41252 lt!2551441) (size!41252 Nil!68448)))))

(assert (= (and d!2214281 (not res!2891895)) b!7079633))

(assert (= (and b!7079633 res!2891892) b!7079634))

(assert (= (and b!7079634 res!2891893) b!7079635))

(assert (= (and d!2214281 (not res!2891894)) b!7079636))

(declare-fun m!7809774 () Bool)

(assert (=> b!7079635 m!7809774))

(declare-fun m!7809776 () Bool)

(assert (=> b!7079635 m!7809776))

(assert (=> b!7079635 m!7809774))

(assert (=> b!7079635 m!7809776))

(declare-fun m!7809778 () Bool)

(assert (=> b!7079635 m!7809778))

(declare-fun m!7809780 () Bool)

(assert (=> b!7079634 m!7809780))

(declare-fun m!7809782 () Bool)

(assert (=> b!7079634 m!7809782))

(declare-fun m!7809784 () Bool)

(assert (=> b!7079636 m!7809784))

(declare-fun m!7809786 () Bool)

(assert (=> b!7079636 m!7809786))

(assert (=> b!7079532 d!2214281))

(declare-fun d!2214283 () Bool)

(declare-fun lt!2551552 () Bool)

(assert (=> d!2214283 (= lt!2551552 (exists!3760 (toList!11023 z1!570) lambda!427482))))

(declare-fun choose!54426 ((Set Context!13356) Int) Bool)

(assert (=> d!2214283 (= lt!2551552 (choose!54426 z1!570 lambda!427482))))

(assert (=> d!2214283 (= (exists!3759 z1!570 lambda!427482) lt!2551552)))

(declare-fun bs!1881892 () Bool)

(assert (= bs!1881892 d!2214283))

(assert (=> bs!1881892 m!7809642))

(assert (=> bs!1881892 m!7809642))

(declare-fun m!7809788 () Bool)

(assert (=> bs!1881892 m!7809788))

(declare-fun m!7809790 () Bool)

(assert (=> bs!1881892 m!7809790))

(assert (=> b!7079541 d!2214283))

(declare-fun d!2214285 () Bool)

(assert (=> d!2214285 (isDefined!13694 (findConcatSeparationZippers!509 lt!2551440 lt!2551428 Nil!68448 s!7408 s!7408))))

(declare-fun lt!2551555 () Unit!162075)

(declare-fun choose!54427 ((Set Context!13356) (Set Context!13356) List!68572 List!68572 List!68572 List!68572 List!68572) Unit!162075)

(assert (=> d!2214285 (= lt!2551555 (choose!54427 lt!2551440 lt!2551428 lt!2551441 (_2!37464 lt!2551431) s!7408 Nil!68448 s!7408))))

(assert (=> d!2214285 (matchZipper!3222 lt!2551440 lt!2551441)))

(assert (=> d!2214285 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!95 lt!2551440 lt!2551428 lt!2551441 (_2!37464 lt!2551431) s!7408 Nil!68448 s!7408) lt!2551555)))

(declare-fun bs!1881893 () Bool)

(assert (= bs!1881893 d!2214285))

(assert (=> bs!1881893 m!7809648))

(assert (=> bs!1881893 m!7809648))

(assert (=> bs!1881893 m!7809650))

(declare-fun m!7809792 () Bool)

(assert (=> bs!1881893 m!7809792))

(assert (=> bs!1881893 m!7809574))

(assert (=> b!7079541 d!2214285))

(declare-fun d!2214287 () Bool)

(declare-fun c!1321233 () Bool)

(assert (=> d!2214287 (= c!1321233 (is-Nil!68450 lt!2551435))))

(declare-fun e!4256256 () (Set Context!13356))

(assert (=> d!2214287 (= (content!13862 lt!2551435) e!4256256)))

(declare-fun b!7079641 () Bool)

(assert (=> b!7079641 (= e!4256256 (as set.empty (Set Context!13356)))))

(declare-fun b!7079642 () Bool)

(assert (=> b!7079642 (= e!4256256 (set.union (set.insert (h!74898 lt!2551435) (as set.empty (Set Context!13356))) (content!13862 (t!382359 lt!2551435))))))

(assert (= (and d!2214287 c!1321233) b!7079641))

(assert (= (and d!2214287 (not c!1321233)) b!7079642))

(declare-fun m!7809794 () Bool)

(assert (=> b!7079642 m!7809794))

(declare-fun m!7809796 () Bool)

(assert (=> b!7079642 m!7809796))

(assert (=> b!7079541 d!2214287))

(declare-fun d!2214289 () Bool)

(declare-fun e!4256259 () Bool)

(assert (=> d!2214289 e!4256259))

(declare-fun res!2891898 () Bool)

(assert (=> d!2214289 (=> (not res!2891898) (not e!4256259))))

(declare-fun lt!2551558 () List!68574)

(declare-fun noDuplicate!2751 (List!68574) Bool)

(assert (=> d!2214289 (= res!2891898 (noDuplicate!2751 lt!2551558))))

(declare-fun choose!54428 ((Set Context!13356)) List!68574)

(assert (=> d!2214289 (= lt!2551558 (choose!54428 z1!570))))

(assert (=> d!2214289 (= (toList!11023 z1!570) lt!2551558)))

(declare-fun b!7079645 () Bool)

(assert (=> b!7079645 (= e!4256259 (= (content!13862 lt!2551558) z1!570))))

(assert (= (and d!2214289 res!2891898) b!7079645))

(declare-fun m!7809798 () Bool)

(assert (=> d!2214289 m!7809798))

(declare-fun m!7809800 () Bool)

(assert (=> d!2214289 m!7809800))

(declare-fun m!7809802 () Bool)

(assert (=> b!7079645 m!7809802))

(assert (=> b!7079541 d!2214289))

(declare-fun d!2214291 () Bool)

(declare-fun c!1321236 () Bool)

(declare-fun isEmpty!39961 (List!68572) Bool)

(assert (=> d!2214291 (= c!1321236 (isEmpty!39961 lt!2551441))))

(declare-fun e!4256262 () Bool)

(assert (=> d!2214291 (= (matchZipper!3222 z1!570 lt!2551441) e!4256262)))

(declare-fun b!7079650 () Bool)

(declare-fun nullableZipper!2723 ((Set Context!13356)) Bool)

(assert (=> b!7079650 (= e!4256262 (nullableZipper!2723 z1!570))))

(declare-fun b!7079651 () Bool)

(assert (=> b!7079651 (= e!4256262 (matchZipper!3222 (derivationStepZipper!3132 z1!570 (head!14432 lt!2551441)) (tail!13891 lt!2551441)))))

(assert (= (and d!2214291 c!1321236) b!7079650))

(assert (= (and d!2214291 (not c!1321236)) b!7079651))

(declare-fun m!7809804 () Bool)

(assert (=> d!2214291 m!7809804))

(declare-fun m!7809806 () Bool)

(assert (=> b!7079650 m!7809806))

(assert (=> b!7079651 m!7809782))

(assert (=> b!7079651 m!7809782))

(declare-fun m!7809808 () Bool)

(assert (=> b!7079651 m!7809808))

(assert (=> b!7079651 m!7809776))

(assert (=> b!7079651 m!7809808))

(assert (=> b!7079651 m!7809776))

(declare-fun m!7809810 () Bool)

(assert (=> b!7079651 m!7809810))

(assert (=> b!7079541 d!2214291))

(declare-fun b!7079670 () Bool)

(declare-fun res!2891911 () Bool)

(declare-fun e!4256275 () Bool)

(assert (=> b!7079670 (=> (not res!2891911) (not e!4256275))))

(declare-fun lt!2551567 () Option!16993)

(assert (=> b!7079670 (= res!2891911 (matchZipper!3222 lt!2551440 (_1!37464 (get!23985 lt!2551567))))))

(declare-fun b!7079671 () Bool)

(declare-fun e!4256274 () Option!16993)

(assert (=> b!7079671 (= e!4256274 (Some!16992 (tuple2!68323 Nil!68448 s!7408)))))

(declare-fun b!7079672 () Bool)

(declare-fun e!4256273 () Option!16993)

(assert (=> b!7079672 (= e!4256274 e!4256273)))

(declare-fun c!1321241 () Bool)

(assert (=> b!7079672 (= c!1321241 (is-Nil!68448 s!7408))))

(declare-fun b!7079673 () Bool)

(assert (=> b!7079673 (= e!4256275 (= (++!15839 (_1!37464 (get!23985 lt!2551567)) (_2!37464 (get!23985 lt!2551567))) s!7408))))

(declare-fun d!2214293 () Bool)

(declare-fun e!4256277 () Bool)

(assert (=> d!2214293 e!4256277))

(declare-fun res!2891912 () Bool)

(assert (=> d!2214293 (=> res!2891912 e!4256277)))

(assert (=> d!2214293 (= res!2891912 e!4256275)))

(declare-fun res!2891913 () Bool)

(assert (=> d!2214293 (=> (not res!2891913) (not e!4256275))))

(assert (=> d!2214293 (= res!2891913 (isDefined!13694 lt!2551567))))

(assert (=> d!2214293 (= lt!2551567 e!4256274)))

(declare-fun c!1321242 () Bool)

(declare-fun e!4256276 () Bool)

(assert (=> d!2214293 (= c!1321242 e!4256276)))

(declare-fun res!2891910 () Bool)

(assert (=> d!2214293 (=> (not res!2891910) (not e!4256276))))

(assert (=> d!2214293 (= res!2891910 (matchZipper!3222 lt!2551440 Nil!68448))))

(assert (=> d!2214293 (= (++!15839 Nil!68448 s!7408) s!7408)))

(assert (=> d!2214293 (= (findConcatSeparationZippers!509 lt!2551440 lt!2551428 Nil!68448 s!7408 s!7408) lt!2551567)))

(declare-fun b!7079674 () Bool)

(declare-fun lt!2551566 () Unit!162075)

(declare-fun lt!2551565 () Unit!162075)

(assert (=> b!7079674 (= lt!2551566 lt!2551565)))

(assert (=> b!7079674 (= (++!15839 (++!15839 Nil!68448 (Cons!68448 (h!74896 s!7408) Nil!68448)) (t!382357 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2992 (List!68572 C!35634 List!68572 List!68572) Unit!162075)

(assert (=> b!7079674 (= lt!2551565 (lemmaMoveElementToOtherListKeepsConcatEq!2992 Nil!68448 (h!74896 s!7408) (t!382357 s!7408) s!7408))))

(assert (=> b!7079674 (= e!4256273 (findConcatSeparationZippers!509 lt!2551440 lt!2551428 (++!15839 Nil!68448 (Cons!68448 (h!74896 s!7408) Nil!68448)) (t!382357 s!7408) s!7408))))

(declare-fun b!7079675 () Bool)

(assert (=> b!7079675 (= e!4256273 None!16992)))

(declare-fun b!7079676 () Bool)

(declare-fun res!2891909 () Bool)

(assert (=> b!7079676 (=> (not res!2891909) (not e!4256275))))

(assert (=> b!7079676 (= res!2891909 (matchZipper!3222 lt!2551428 (_2!37464 (get!23985 lt!2551567))))))

(declare-fun b!7079677 () Bool)

(assert (=> b!7079677 (= e!4256277 (not (isDefined!13694 lt!2551567)))))

(declare-fun b!7079678 () Bool)

(assert (=> b!7079678 (= e!4256276 (matchZipper!3222 lt!2551428 s!7408))))

(assert (= (and d!2214293 res!2891910) b!7079678))

(assert (= (and d!2214293 c!1321242) b!7079671))

(assert (= (and d!2214293 (not c!1321242)) b!7079672))

(assert (= (and b!7079672 c!1321241) b!7079675))

(assert (= (and b!7079672 (not c!1321241)) b!7079674))

(assert (= (and d!2214293 res!2891913) b!7079670))

(assert (= (and b!7079670 res!2891911) b!7079676))

(assert (= (and b!7079676 res!2891909) b!7079673))

(assert (= (and d!2214293 (not res!2891912)) b!7079677))

(declare-fun m!7809812 () Bool)

(assert (=> b!7079678 m!7809812))

(declare-fun m!7809814 () Bool)

(assert (=> b!7079674 m!7809814))

(assert (=> b!7079674 m!7809814))

(declare-fun m!7809816 () Bool)

(assert (=> b!7079674 m!7809816))

(declare-fun m!7809818 () Bool)

(assert (=> b!7079674 m!7809818))

(assert (=> b!7079674 m!7809814))

(declare-fun m!7809820 () Bool)

(assert (=> b!7079674 m!7809820))

(declare-fun m!7809822 () Bool)

(assert (=> b!7079676 m!7809822))

(declare-fun m!7809824 () Bool)

(assert (=> b!7079676 m!7809824))

(assert (=> b!7079673 m!7809822))

(declare-fun m!7809826 () Bool)

(assert (=> b!7079673 m!7809826))

(declare-fun m!7809828 () Bool)

(assert (=> d!2214293 m!7809828))

(declare-fun m!7809830 () Bool)

(assert (=> d!2214293 m!7809830))

(declare-fun m!7809832 () Bool)

(assert (=> d!2214293 m!7809832))

(assert (=> b!7079670 m!7809822))

(declare-fun m!7809834 () Bool)

(assert (=> b!7079670 m!7809834))

(assert (=> b!7079677 m!7809828))

(assert (=> b!7079541 d!2214293))

(declare-fun d!2214295 () Bool)

(declare-fun isEmpty!39962 (Option!16993) Bool)

(assert (=> d!2214295 (= (isDefined!13694 (findConcatSeparationZippers!509 lt!2551440 lt!2551428 Nil!68448 s!7408 s!7408)) (not (isEmpty!39962 (findConcatSeparationZippers!509 lt!2551440 lt!2551428 Nil!68448 s!7408 s!7408))))))

(declare-fun bs!1881894 () Bool)

(assert (= bs!1881894 d!2214295))

(assert (=> bs!1881894 m!7809648))

(declare-fun m!7809836 () Bool)

(assert (=> bs!1881894 m!7809836))

(assert (=> b!7079541 d!2214295))

(declare-fun d!2214297 () Bool)

(assert (=> d!2214297 (exists!3759 z1!570 lambda!427482)))

(declare-fun lt!2551570 () Unit!162075)

(declare-fun choose!54429 ((Set Context!13356) Context!13356 Int) Unit!162075)

(assert (=> d!2214297 (= lt!2551570 (choose!54429 z1!570 lt!2551443 lambda!427482))))

(assert (=> d!2214297 (set.member lt!2551443 z1!570)))

(assert (=> d!2214297 (= (lemmaContainsThenExists!174 z1!570 lt!2551443 lambda!427482) lt!2551570)))

(declare-fun bs!1881895 () Bool)

(assert (= bs!1881895 d!2214297))

(assert (=> bs!1881895 m!7809652))

(declare-fun m!7809838 () Bool)

(assert (=> bs!1881895 m!7809838))

(assert (=> bs!1881895 m!7809612))

(assert (=> b!7079541 d!2214297))

(declare-fun d!2214299 () Bool)

(declare-fun c!1321243 () Bool)

(assert (=> d!2214299 (= c!1321243 (isEmpty!39961 lt!2551441))))

(declare-fun e!4256279 () Bool)

(assert (=> d!2214299 (= (matchZipper!3222 (content!13862 lt!2551435) lt!2551441) e!4256279)))

(declare-fun b!7079679 () Bool)

(assert (=> b!7079679 (= e!4256279 (nullableZipper!2723 (content!13862 lt!2551435)))))

(declare-fun b!7079680 () Bool)

(assert (=> b!7079680 (= e!4256279 (matchZipper!3222 (derivationStepZipper!3132 (content!13862 lt!2551435) (head!14432 lt!2551441)) (tail!13891 lt!2551441)))))

(assert (= (and d!2214299 c!1321243) b!7079679))

(assert (= (and d!2214299 (not c!1321243)) b!7079680))

(assert (=> d!2214299 m!7809804))

(assert (=> b!7079679 m!7809638))

(declare-fun m!7809840 () Bool)

(assert (=> b!7079679 m!7809840))

(assert (=> b!7079680 m!7809782))

(assert (=> b!7079680 m!7809638))

(assert (=> b!7079680 m!7809782))

(declare-fun m!7809842 () Bool)

(assert (=> b!7079680 m!7809842))

(assert (=> b!7079680 m!7809776))

(assert (=> b!7079680 m!7809842))

(assert (=> b!7079680 m!7809776))

(declare-fun m!7809844 () Bool)

(assert (=> b!7079680 m!7809844))

(assert (=> b!7079541 d!2214299))

(declare-fun bs!1881896 () Bool)

(declare-fun d!2214301 () Bool)

(assert (= bs!1881896 (and d!2214301 b!7079548)))

(declare-fun lambda!427514 () Int)

(assert (=> bs!1881896 (= (= lt!2551441 s!7408) (= lambda!427514 lambda!427478))))

(declare-fun bs!1881897 () Bool)

(assert (= bs!1881897 (and d!2214301 b!7079541)))

(assert (=> bs!1881897 (= lambda!427514 lambda!427482)))

(assert (=> d!2214301 true))

(assert (=> d!2214301 (matchZipper!3222 (content!13862 lt!2551435) lt!2551441)))

(declare-fun lt!2551573 () Unit!162075)

(declare-fun choose!54430 (List!68574 List!68572) Unit!162075)

(assert (=> d!2214301 (= lt!2551573 (choose!54430 lt!2551435 lt!2551441))))

(assert (=> d!2214301 (exists!3760 lt!2551435 lambda!427514)))

(assert (=> d!2214301 (= (lemmaExistsMatchingContextThenMatchingString!67 lt!2551435 lt!2551441) lt!2551573)))

(declare-fun bs!1881898 () Bool)

(assert (= bs!1881898 d!2214301))

(assert (=> bs!1881898 m!7809638))

(assert (=> bs!1881898 m!7809638))

(assert (=> bs!1881898 m!7809640))

(declare-fun m!7809846 () Bool)

(assert (=> bs!1881898 m!7809846))

(declare-fun m!7809848 () Bool)

(assert (=> bs!1881898 m!7809848))

(assert (=> b!7079541 d!2214301))

(declare-fun d!2214303 () Bool)

(assert (=> d!2214303 (= (isEmpty!39959 (exprs!7178 lt!2551443)) (is-Nil!68449 (exprs!7178 lt!2551443)))))

(assert (=> b!7079542 d!2214303))

(declare-fun d!2214305 () Bool)

(declare-fun e!4256282 () Bool)

(assert (=> d!2214305 e!4256282))

(declare-fun res!2891916 () Bool)

(assert (=> d!2214305 (=> (not res!2891916) (not e!4256282))))

(declare-fun lt!2551576 () Context!13356)

(declare-fun dynLambda!27890 (Int Context!13356) Bool)

(assert (=> d!2214305 (= res!2891916 (dynLambda!27890 lambda!427478 lt!2551576))))

(declare-fun getWitness!1808 (List!68574 Int) Context!13356)

(assert (=> d!2214305 (= lt!2551576 (getWitness!1808 (toList!11023 lt!2551421) lambda!427478))))

(assert (=> d!2214305 (exists!3759 lt!2551421 lambda!427478)))

(assert (=> d!2214305 (= (getWitness!1806 lt!2551421 lambda!427478) lt!2551576)))

(declare-fun b!7079683 () Bool)

(assert (=> b!7079683 (= e!4256282 (set.member lt!2551576 lt!2551421))))

(assert (= (and d!2214305 res!2891916) b!7079683))

(declare-fun b_lambda!270473 () Bool)

(assert (=> (not b_lambda!270473) (not d!2214305)))

(declare-fun m!7809850 () Bool)

(assert (=> d!2214305 m!7809850))

(assert (=> d!2214305 m!7809600))

(assert (=> d!2214305 m!7809600))

(declare-fun m!7809852 () Bool)

(assert (=> d!2214305 m!7809852))

(declare-fun m!7809854 () Bool)

(assert (=> d!2214305 m!7809854))

(declare-fun m!7809856 () Bool)

(assert (=> b!7079683 m!7809856))

(assert (=> b!7079548 d!2214305))

(declare-fun d!2214307 () Bool)

(declare-fun c!1321246 () Bool)

(assert (=> d!2214307 (= c!1321246 (isEmpty!39961 s!7408))))

(declare-fun e!4256283 () Bool)

(assert (=> d!2214307 (= (matchZipper!3222 lt!2551425 s!7408) e!4256283)))

(declare-fun b!7079684 () Bool)

(assert (=> b!7079684 (= e!4256283 (nullableZipper!2723 lt!2551425))))

(declare-fun b!7079685 () Bool)

(assert (=> b!7079685 (= e!4256283 (matchZipper!3222 (derivationStepZipper!3132 lt!2551425 (head!14432 s!7408)) (tail!13891 s!7408)))))

(assert (= (and d!2214307 c!1321246) b!7079684))

(assert (= (and d!2214307 (not c!1321246)) b!7079685))

(declare-fun m!7809858 () Bool)

(assert (=> d!2214307 m!7809858))

(declare-fun m!7809860 () Bool)

(assert (=> b!7079684 m!7809860))

(declare-fun m!7809862 () Bool)

(assert (=> b!7079685 m!7809862))

(assert (=> b!7079685 m!7809862))

(declare-fun m!7809864 () Bool)

(assert (=> b!7079685 m!7809864))

(declare-fun m!7809866 () Bool)

(assert (=> b!7079685 m!7809866))

(assert (=> b!7079685 m!7809864))

(assert (=> b!7079685 m!7809866))

(declare-fun m!7809868 () Bool)

(assert (=> b!7079685 m!7809868))

(assert (=> b!7079548 d!2214307))

(declare-fun bs!1881899 () Bool)

(declare-fun d!2214309 () Bool)

(assert (= bs!1881899 (and d!2214309 b!7079548)))

(declare-fun lambda!427517 () Int)

(assert (=> bs!1881899 (not (= lambda!427517 lambda!427478))))

(declare-fun bs!1881900 () Bool)

(assert (= bs!1881900 (and d!2214309 b!7079541)))

(assert (=> bs!1881900 (not (= lambda!427517 lambda!427482))))

(declare-fun bs!1881901 () Bool)

(assert (= bs!1881901 (and d!2214309 d!2214301)))

(assert (=> bs!1881901 (not (= lambda!427517 lambda!427514))))

(assert (=> d!2214309 true))

(declare-fun order!28459 () Int)

(declare-fun dynLambda!27891 (Int Int) Int)

(assert (=> d!2214309 (< (dynLambda!27891 order!28459 lambda!427478) (dynLambda!27891 order!28459 lambda!427517))))

(declare-fun forall!16643 (List!68574 Int) Bool)

(assert (=> d!2214309 (= (exists!3760 lt!2551434 lambda!427478) (not (forall!16643 lt!2551434 lambda!427517)))))

(declare-fun bs!1881902 () Bool)

(assert (= bs!1881902 d!2214309))

(declare-fun m!7809870 () Bool)

(assert (=> bs!1881902 m!7809870))

(assert (=> b!7079548 d!2214309))

(declare-fun bs!1881903 () Bool)

(declare-fun d!2214311 () Bool)

(assert (= bs!1881903 (and d!2214311 b!7079548)))

(declare-fun lambda!427520 () Int)

(assert (=> bs!1881903 (= lambda!427520 lambda!427478)))

(declare-fun bs!1881904 () Bool)

(assert (= bs!1881904 (and d!2214311 b!7079541)))

(assert (=> bs!1881904 (= (= s!7408 lt!2551441) (= lambda!427520 lambda!427482))))

(declare-fun bs!1881905 () Bool)

(assert (= bs!1881905 (and d!2214311 d!2214301)))

(assert (=> bs!1881905 (= (= s!7408 lt!2551441) (= lambda!427520 lambda!427514))))

(declare-fun bs!1881906 () Bool)

(assert (= bs!1881906 (and d!2214311 d!2214309)))

(assert (=> bs!1881906 (not (= lambda!427520 lambda!427517))))

(assert (=> d!2214311 true))

(assert (=> d!2214311 (exists!3760 lt!2551434 lambda!427520)))

(declare-fun lt!2551579 () Unit!162075)

(declare-fun choose!54431 (List!68574 List!68572) Unit!162075)

(assert (=> d!2214311 (= lt!2551579 (choose!54431 lt!2551434 s!7408))))

(assert (=> d!2214311 (matchZipper!3222 (content!13862 lt!2551434) s!7408)))

(assert (=> d!2214311 (= (lemmaZipperMatchesExistsMatchingContext!603 lt!2551434 s!7408) lt!2551579)))

(declare-fun bs!1881907 () Bool)

(assert (= bs!1881907 d!2214311))

(declare-fun m!7809872 () Bool)

(assert (=> bs!1881907 m!7809872))

(declare-fun m!7809874 () Bool)

(assert (=> bs!1881907 m!7809874))

(declare-fun m!7809876 () Bool)

(assert (=> bs!1881907 m!7809876))

(assert (=> bs!1881907 m!7809876))

(declare-fun m!7809878 () Bool)

(assert (=> bs!1881907 m!7809878))

(assert (=> b!7079548 d!2214311))

(declare-fun d!2214313 () Bool)

(declare-fun e!4256284 () Bool)

(assert (=> d!2214313 e!4256284))

(declare-fun res!2891917 () Bool)

(assert (=> d!2214313 (=> (not res!2891917) (not e!4256284))))

(declare-fun lt!2551580 () List!68574)

(assert (=> d!2214313 (= res!2891917 (noDuplicate!2751 lt!2551580))))

(assert (=> d!2214313 (= lt!2551580 (choose!54428 lt!2551421))))

(assert (=> d!2214313 (= (toList!11023 lt!2551421) lt!2551580)))

(declare-fun b!7079688 () Bool)

(assert (=> b!7079688 (= e!4256284 (= (content!13862 lt!2551580) lt!2551421))))

(assert (= (and d!2214313 res!2891917) b!7079688))

(declare-fun m!7809880 () Bool)

(assert (=> d!2214313 m!7809880))

(declare-fun m!7809882 () Bool)

(assert (=> d!2214313 m!7809882))

(declare-fun m!7809884 () Bool)

(assert (=> b!7079688 m!7809884))

(assert (=> b!7079548 d!2214313))

(declare-fun d!2214315 () Bool)

(declare-fun c!1321249 () Bool)

(assert (=> d!2214315 (= c!1321249 (isEmpty!39961 (t!382357 s!7408)))))

(declare-fun e!4256285 () Bool)

(assert (=> d!2214315 (= (matchZipper!3222 lt!2551445 (t!382357 s!7408)) e!4256285)))

(declare-fun b!7079689 () Bool)

(assert (=> b!7079689 (= e!4256285 (nullableZipper!2723 lt!2551445))))

(declare-fun b!7079690 () Bool)

(assert (=> b!7079690 (= e!4256285 (matchZipper!3222 (derivationStepZipper!3132 lt!2551445 (head!14432 (t!382357 s!7408))) (tail!13891 (t!382357 s!7408))))))

(assert (= (and d!2214315 c!1321249) b!7079689))

(assert (= (and d!2214315 (not c!1321249)) b!7079690))

(declare-fun m!7809886 () Bool)

(assert (=> d!2214315 m!7809886))

(declare-fun m!7809888 () Bool)

(assert (=> b!7079689 m!7809888))

(declare-fun m!7809890 () Bool)

(assert (=> b!7079690 m!7809890))

(assert (=> b!7079690 m!7809890))

(declare-fun m!7809892 () Bool)

(assert (=> b!7079690 m!7809892))

(declare-fun m!7809894 () Bool)

(assert (=> b!7079690 m!7809894))

(assert (=> b!7079690 m!7809892))

(assert (=> b!7079690 m!7809894))

(declare-fun m!7809896 () Bool)

(assert (=> b!7079690 m!7809896))

(assert (=> b!7079537 d!2214315))

(declare-fun bm!643485 () Bool)

(declare-fun call!643492 () (Set Context!13356))

(declare-fun call!643495 () (Set Context!13356))

(assert (=> bm!643485 (= call!643492 call!643495)))

(declare-fun b!7079713 () Bool)

(declare-fun e!4256303 () (Set Context!13356))

(assert (=> b!7079713 (= e!4256303 (set.insert (Context!13357 (++!15840 lt!2551426 (exprs!7178 ct2!306))) (as set.empty (Set Context!13356))))))

(declare-fun b!7079714 () Bool)

(declare-fun e!4256299 () (Set Context!13356))

(declare-fun call!643490 () (Set Context!13356))

(assert (=> b!7079714 (= e!4256299 (set.union call!643495 call!643490))))

(declare-fun b!7079715 () Bool)

(declare-fun c!1321260 () Bool)

(assert (=> b!7079715 (= c!1321260 (is-Star!17682 (h!74897 (exprs!7178 lt!2551443))))))

(declare-fun e!4256300 () (Set Context!13356))

(declare-fun e!4256301 () (Set Context!13356))

(assert (=> b!7079715 (= e!4256300 e!4256301)))

(declare-fun bm!643486 () Bool)

(declare-fun c!1321263 () Bool)

(declare-fun c!1321262 () Bool)

(declare-fun call!643493 () List!68573)

(declare-fun c!1321261 () Bool)

(assert (=> bm!643486 (= call!643495 (derivationStepZipperDown!2316 (ite c!1321263 (regOne!35877 (h!74897 (exprs!7178 lt!2551443))) (ite c!1321262 (regTwo!35876 (h!74897 (exprs!7178 lt!2551443))) (ite c!1321261 (regOne!35876 (h!74897 (exprs!7178 lt!2551443))) (reg!18011 (h!74897 (exprs!7178 lt!2551443)))))) (ite (or c!1321263 c!1321262) (Context!13357 (++!15840 lt!2551426 (exprs!7178 ct2!306))) (Context!13357 call!643493)) (h!74896 s!7408)))))

(declare-fun call!643494 () List!68573)

(declare-fun bm!643487 () Bool)

(assert (=> bm!643487 (= call!643490 (derivationStepZipperDown!2316 (ite c!1321263 (regTwo!35877 (h!74897 (exprs!7178 lt!2551443))) (regOne!35876 (h!74897 (exprs!7178 lt!2551443)))) (ite c!1321263 (Context!13357 (++!15840 lt!2551426 (exprs!7178 ct2!306))) (Context!13357 call!643494)) (h!74896 s!7408)))))

(declare-fun bm!643488 () Bool)

(assert (=> bm!643488 (= call!643493 call!643494)))

(declare-fun bm!643489 () Bool)

(declare-fun call!643491 () (Set Context!13356))

(assert (=> bm!643489 (= call!643491 call!643492)))

(declare-fun b!7079716 () Bool)

(assert (=> b!7079716 (= e!4256301 (as set.empty (Set Context!13356)))))

(declare-fun b!7079717 () Bool)

(declare-fun e!4256302 () Bool)

(assert (=> b!7079717 (= e!4256302 (nullable!7365 (regOne!35876 (h!74897 (exprs!7178 lt!2551443)))))))

(declare-fun b!7079718 () Bool)

(assert (=> b!7079718 (= e!4256303 e!4256299)))

(assert (=> b!7079718 (= c!1321263 (is-Union!17682 (h!74897 (exprs!7178 lt!2551443))))))

(declare-fun b!7079719 () Bool)

(declare-fun e!4256298 () (Set Context!13356))

(assert (=> b!7079719 (= e!4256298 e!4256300)))

(assert (=> b!7079719 (= c!1321261 (is-Concat!26527 (h!74897 (exprs!7178 lt!2551443))))))

(declare-fun b!7079720 () Bool)

(assert (=> b!7079720 (= e!4256301 call!643491)))

(declare-fun d!2214317 () Bool)

(declare-fun c!1321264 () Bool)

(assert (=> d!2214317 (= c!1321264 (and (is-ElementMatch!17682 (h!74897 (exprs!7178 lt!2551443))) (= (c!1321217 (h!74897 (exprs!7178 lt!2551443))) (h!74896 s!7408))))))

(assert (=> d!2214317 (= (derivationStepZipperDown!2316 (h!74897 (exprs!7178 lt!2551443)) (Context!13357 (++!15840 lt!2551426 (exprs!7178 ct2!306))) (h!74896 s!7408)) e!4256303)))

(declare-fun b!7079721 () Bool)

(assert (=> b!7079721 (= c!1321262 e!4256302)))

(declare-fun res!2891920 () Bool)

(assert (=> b!7079721 (=> (not res!2891920) (not e!4256302))))

(assert (=> b!7079721 (= res!2891920 (is-Concat!26527 (h!74897 (exprs!7178 lt!2551443))))))

(assert (=> b!7079721 (= e!4256299 e!4256298)))

(declare-fun b!7079722 () Bool)

(assert (=> b!7079722 (= e!4256298 (set.union call!643490 call!643492))))

(declare-fun bm!643490 () Bool)

(declare-fun $colon$colon!2680 (List!68573 Regex!17682) List!68573)

(assert (=> bm!643490 (= call!643494 ($colon$colon!2680 (exprs!7178 (Context!13357 (++!15840 lt!2551426 (exprs!7178 ct2!306)))) (ite (or c!1321262 c!1321261) (regTwo!35876 (h!74897 (exprs!7178 lt!2551443))) (h!74897 (exprs!7178 lt!2551443)))))))

(declare-fun b!7079723 () Bool)

(assert (=> b!7079723 (= e!4256300 call!643491)))

(assert (= (and d!2214317 c!1321264) b!7079713))

(assert (= (and d!2214317 (not c!1321264)) b!7079718))

(assert (= (and b!7079718 c!1321263) b!7079714))

(assert (= (and b!7079718 (not c!1321263)) b!7079721))

(assert (= (and b!7079721 res!2891920) b!7079717))

(assert (= (and b!7079721 c!1321262) b!7079722))

(assert (= (and b!7079721 (not c!1321262)) b!7079719))

(assert (= (and b!7079719 c!1321261) b!7079723))

(assert (= (and b!7079719 (not c!1321261)) b!7079715))

(assert (= (and b!7079715 c!1321260) b!7079720))

(assert (= (and b!7079715 (not c!1321260)) b!7079716))

(assert (= (or b!7079723 b!7079720) bm!643488))

(assert (= (or b!7079723 b!7079720) bm!643489))

(assert (= (or b!7079722 bm!643489) bm!643485))

(assert (= (or b!7079722 bm!643488) bm!643490))

(assert (= (or b!7079714 bm!643485) bm!643486))

(assert (= (or b!7079714 b!7079722) bm!643487))

(declare-fun m!7809898 () Bool)

(assert (=> bm!643487 m!7809898))

(declare-fun m!7809900 () Bool)

(assert (=> b!7079717 m!7809900))

(declare-fun m!7809902 () Bool)

(assert (=> bm!643486 m!7809902))

(declare-fun m!7809904 () Bool)

(assert (=> b!7079713 m!7809904))

(declare-fun m!7809906 () Bool)

(assert (=> bm!643490 m!7809906))

(assert (=> b!7079537 d!2214317))

(declare-fun b!7079734 () Bool)

(declare-fun res!2891927 () Bool)

(declare-fun e!4256309 () Bool)

(assert (=> b!7079734 (=> (not res!2891927) (not e!4256309))))

(declare-fun lt!2551583 () List!68573)

(declare-fun size!41253 (List!68573) Int)

(assert (=> b!7079734 (= res!2891927 (= (size!41253 lt!2551583) (+ (size!41253 lt!2551426) (size!41253 (exprs!7178 ct2!306)))))))

(declare-fun b!7079735 () Bool)

(assert (=> b!7079735 (= e!4256309 (or (not (= (exprs!7178 ct2!306) Nil!68449)) (= lt!2551583 lt!2551426)))))

(declare-fun b!7079732 () Bool)

(declare-fun e!4256308 () List!68573)

(assert (=> b!7079732 (= e!4256308 (exprs!7178 ct2!306))))

(declare-fun d!2214319 () Bool)

(assert (=> d!2214319 e!4256309))

(declare-fun res!2891926 () Bool)

(assert (=> d!2214319 (=> (not res!2891926) (not e!4256309))))

(declare-fun content!13864 (List!68573) (Set Regex!17682))

(assert (=> d!2214319 (= res!2891926 (= (content!13864 lt!2551583) (set.union (content!13864 lt!2551426) (content!13864 (exprs!7178 ct2!306)))))))

(assert (=> d!2214319 (= lt!2551583 e!4256308)))

(declare-fun c!1321267 () Bool)

(assert (=> d!2214319 (= c!1321267 (is-Nil!68449 lt!2551426))))

(assert (=> d!2214319 (= (++!15840 lt!2551426 (exprs!7178 ct2!306)) lt!2551583)))

(declare-fun b!7079733 () Bool)

(assert (=> b!7079733 (= e!4256308 (Cons!68449 (h!74897 lt!2551426) (++!15840 (t!382358 lt!2551426) (exprs!7178 ct2!306))))))

(assert (= (and d!2214319 c!1321267) b!7079732))

(assert (= (and d!2214319 (not c!1321267)) b!7079733))

(assert (= (and d!2214319 res!2891926) b!7079734))

(assert (= (and b!7079734 res!2891927) b!7079735))

(declare-fun m!7809908 () Bool)

(assert (=> b!7079734 m!7809908))

(declare-fun m!7809910 () Bool)

(assert (=> b!7079734 m!7809910))

(declare-fun m!7809912 () Bool)

(assert (=> b!7079734 m!7809912))

(declare-fun m!7809914 () Bool)

(assert (=> d!2214319 m!7809914))

(declare-fun m!7809916 () Bool)

(assert (=> d!2214319 m!7809916))

(declare-fun m!7809918 () Bool)

(assert (=> d!2214319 m!7809918))

(declare-fun m!7809920 () Bool)

(assert (=> b!7079733 m!7809920))

(assert (=> b!7079537 d!2214319))

(declare-fun d!2214321 () Bool)

(declare-fun forall!16644 (List!68573 Int) Bool)

(assert (=> d!2214321 (forall!16644 (++!15840 lt!2551426 (exprs!7178 ct2!306)) lambda!427480)))

(declare-fun lt!2551586 () Unit!162075)

(declare-fun choose!54432 (List!68573 List!68573 Int) Unit!162075)

(assert (=> d!2214321 (= lt!2551586 (choose!54432 lt!2551426 (exprs!7178 ct2!306) lambda!427480))))

(assert (=> d!2214321 (forall!16644 lt!2551426 lambda!427480)))

(assert (=> d!2214321 (= (lemmaConcatPreservesForall!993 lt!2551426 (exprs!7178 ct2!306) lambda!427480) lt!2551586)))

(declare-fun bs!1881908 () Bool)

(assert (= bs!1881908 d!2214321))

(assert (=> bs!1881908 m!7809570))

(assert (=> bs!1881908 m!7809570))

(declare-fun m!7809922 () Bool)

(assert (=> bs!1881908 m!7809922))

(declare-fun m!7809924 () Bool)

(assert (=> bs!1881908 m!7809924))

(declare-fun m!7809926 () Bool)

(assert (=> bs!1881908 m!7809926))

(assert (=> b!7079537 d!2214321))

(declare-fun d!2214323 () Bool)

(declare-fun c!1321268 () Bool)

(assert (=> d!2214323 (= c!1321268 (isEmpty!39961 lt!2551441))))

(declare-fun e!4256310 () Bool)

(assert (=> d!2214323 (= (matchZipper!3222 lt!2551440 lt!2551441) e!4256310)))

(declare-fun b!7079736 () Bool)

(assert (=> b!7079736 (= e!4256310 (nullableZipper!2723 lt!2551440))))

(declare-fun b!7079737 () Bool)

(assert (=> b!7079737 (= e!4256310 (matchZipper!3222 (derivationStepZipper!3132 lt!2551440 (head!14432 lt!2551441)) (tail!13891 lt!2551441)))))

(assert (= (and d!2214323 c!1321268) b!7079736))

(assert (= (and d!2214323 (not c!1321268)) b!7079737))

(assert (=> d!2214323 m!7809804))

(declare-fun m!7809928 () Bool)

(assert (=> b!7079736 m!7809928))

(assert (=> b!7079737 m!7809782))

(assert (=> b!7079737 m!7809782))

(declare-fun m!7809930 () Bool)

(assert (=> b!7079737 m!7809930))

(assert (=> b!7079737 m!7809776))

(assert (=> b!7079737 m!7809930))

(assert (=> b!7079737 m!7809776))

(declare-fun m!7809932 () Bool)

(assert (=> b!7079737 m!7809932))

(assert (=> b!7079538 d!2214323))

(declare-fun b!7079748 () Bool)

(declare-fun res!2891933 () Bool)

(declare-fun e!4256316 () Bool)

(assert (=> b!7079748 (=> (not res!2891933) (not e!4256316))))

(declare-fun lt!2551589 () List!68572)

(assert (=> b!7079748 (= res!2891933 (= (size!41252 lt!2551589) (+ (size!41252 lt!2551441) (size!41252 (_2!37464 lt!2551431)))))))

(declare-fun b!7079746 () Bool)

(declare-fun e!4256315 () List!68572)

(assert (=> b!7079746 (= e!4256315 (_2!37464 lt!2551431))))

(declare-fun b!7079749 () Bool)

(assert (=> b!7079749 (= e!4256316 (or (not (= (_2!37464 lt!2551431) Nil!68448)) (= lt!2551589 lt!2551441)))))

(declare-fun b!7079747 () Bool)

(assert (=> b!7079747 (= e!4256315 (Cons!68448 (h!74896 lt!2551441) (++!15839 (t!382357 lt!2551441) (_2!37464 lt!2551431))))))

(declare-fun d!2214325 () Bool)

(assert (=> d!2214325 e!4256316))

(declare-fun res!2891932 () Bool)

(assert (=> d!2214325 (=> (not res!2891932) (not e!4256316))))

(declare-fun content!13865 (List!68572) (Set C!35634))

(assert (=> d!2214325 (= res!2891932 (= (content!13865 lt!2551589) (set.union (content!13865 lt!2551441) (content!13865 (_2!37464 lt!2551431)))))))

(assert (=> d!2214325 (= lt!2551589 e!4256315)))

(declare-fun c!1321271 () Bool)

(assert (=> d!2214325 (= c!1321271 (is-Nil!68448 lt!2551441))))

(assert (=> d!2214325 (= (++!15839 lt!2551441 (_2!37464 lt!2551431)) lt!2551589)))

(assert (= (and d!2214325 c!1321271) b!7079746))

(assert (= (and d!2214325 (not c!1321271)) b!7079747))

(assert (= (and d!2214325 res!2891932) b!7079748))

(assert (= (and b!7079748 res!2891933) b!7079749))

(declare-fun m!7809934 () Bool)

(assert (=> b!7079748 m!7809934))

(assert (=> b!7079748 m!7809784))

(declare-fun m!7809936 () Bool)

(assert (=> b!7079748 m!7809936))

(declare-fun m!7809938 () Bool)

(assert (=> b!7079747 m!7809938))

(declare-fun m!7809940 () Bool)

(assert (=> d!2214325 m!7809940))

(declare-fun m!7809942 () Bool)

(assert (=> d!2214325 m!7809942))

(declare-fun m!7809944 () Bool)

(assert (=> d!2214325 m!7809944))

(assert (=> b!7079529 d!2214325))

(declare-fun bm!643491 () Bool)

(declare-fun call!643498 () (Set Context!13356))

(declare-fun call!643501 () (Set Context!13356))

(assert (=> bm!643491 (= call!643498 call!643501)))

(declare-fun b!7079750 () Bool)

(declare-fun e!4256322 () (Set Context!13356))

(assert (=> b!7079750 (= e!4256322 (set.insert lt!2551418 (as set.empty (Set Context!13356))))))

(declare-fun b!7079751 () Bool)

(declare-fun e!4256318 () (Set Context!13356))

(declare-fun call!643496 () (Set Context!13356))

(assert (=> b!7079751 (= e!4256318 (set.union call!643501 call!643496))))

(declare-fun b!7079752 () Bool)

(declare-fun c!1321272 () Bool)

(assert (=> b!7079752 (= c!1321272 (is-Star!17682 (h!74897 (exprs!7178 lt!2551443))))))

(declare-fun e!4256319 () (Set Context!13356))

(declare-fun e!4256320 () (Set Context!13356))

(assert (=> b!7079752 (= e!4256319 e!4256320)))

(declare-fun bm!643492 () Bool)

(declare-fun call!643499 () List!68573)

(declare-fun c!1321274 () Bool)

(declare-fun c!1321275 () Bool)

(declare-fun c!1321273 () Bool)

(assert (=> bm!643492 (= call!643501 (derivationStepZipperDown!2316 (ite c!1321275 (regOne!35877 (h!74897 (exprs!7178 lt!2551443))) (ite c!1321274 (regTwo!35876 (h!74897 (exprs!7178 lt!2551443))) (ite c!1321273 (regOne!35876 (h!74897 (exprs!7178 lt!2551443))) (reg!18011 (h!74897 (exprs!7178 lt!2551443)))))) (ite (or c!1321275 c!1321274) lt!2551418 (Context!13357 call!643499)) (h!74896 s!7408)))))

(declare-fun call!643500 () List!68573)

(declare-fun bm!643493 () Bool)

(assert (=> bm!643493 (= call!643496 (derivationStepZipperDown!2316 (ite c!1321275 (regTwo!35877 (h!74897 (exprs!7178 lt!2551443))) (regOne!35876 (h!74897 (exprs!7178 lt!2551443)))) (ite c!1321275 lt!2551418 (Context!13357 call!643500)) (h!74896 s!7408)))))

(declare-fun bm!643494 () Bool)

(assert (=> bm!643494 (= call!643499 call!643500)))

(declare-fun bm!643495 () Bool)

(declare-fun call!643497 () (Set Context!13356))

(assert (=> bm!643495 (= call!643497 call!643498)))

(declare-fun b!7079753 () Bool)

(assert (=> b!7079753 (= e!4256320 (as set.empty (Set Context!13356)))))

(declare-fun b!7079754 () Bool)

(declare-fun e!4256321 () Bool)

(assert (=> b!7079754 (= e!4256321 (nullable!7365 (regOne!35876 (h!74897 (exprs!7178 lt!2551443)))))))

(declare-fun b!7079755 () Bool)

(assert (=> b!7079755 (= e!4256322 e!4256318)))

(assert (=> b!7079755 (= c!1321275 (is-Union!17682 (h!74897 (exprs!7178 lt!2551443))))))

(declare-fun b!7079756 () Bool)

(declare-fun e!4256317 () (Set Context!13356))

(assert (=> b!7079756 (= e!4256317 e!4256319)))

(assert (=> b!7079756 (= c!1321273 (is-Concat!26527 (h!74897 (exprs!7178 lt!2551443))))))

(declare-fun b!7079757 () Bool)

(assert (=> b!7079757 (= e!4256320 call!643497)))

(declare-fun d!2214327 () Bool)

(declare-fun c!1321276 () Bool)

(assert (=> d!2214327 (= c!1321276 (and (is-ElementMatch!17682 (h!74897 (exprs!7178 lt!2551443))) (= (c!1321217 (h!74897 (exprs!7178 lt!2551443))) (h!74896 s!7408))))))

(assert (=> d!2214327 (= (derivationStepZipperDown!2316 (h!74897 (exprs!7178 lt!2551443)) lt!2551418 (h!74896 s!7408)) e!4256322)))

(declare-fun b!7079758 () Bool)

(assert (=> b!7079758 (= c!1321274 e!4256321)))

(declare-fun res!2891934 () Bool)

(assert (=> b!7079758 (=> (not res!2891934) (not e!4256321))))

(assert (=> b!7079758 (= res!2891934 (is-Concat!26527 (h!74897 (exprs!7178 lt!2551443))))))

(assert (=> b!7079758 (= e!4256318 e!4256317)))

(declare-fun b!7079759 () Bool)

(assert (=> b!7079759 (= e!4256317 (set.union call!643496 call!643498))))

(declare-fun bm!643496 () Bool)

(assert (=> bm!643496 (= call!643500 ($colon$colon!2680 (exprs!7178 lt!2551418) (ite (or c!1321274 c!1321273) (regTwo!35876 (h!74897 (exprs!7178 lt!2551443))) (h!74897 (exprs!7178 lt!2551443)))))))

(declare-fun b!7079760 () Bool)

(assert (=> b!7079760 (= e!4256319 call!643497)))

(assert (= (and d!2214327 c!1321276) b!7079750))

(assert (= (and d!2214327 (not c!1321276)) b!7079755))

(assert (= (and b!7079755 c!1321275) b!7079751))

(assert (= (and b!7079755 (not c!1321275)) b!7079758))

(assert (= (and b!7079758 res!2891934) b!7079754))

(assert (= (and b!7079758 c!1321274) b!7079759))

(assert (= (and b!7079758 (not c!1321274)) b!7079756))

(assert (= (and b!7079756 c!1321273) b!7079760))

(assert (= (and b!7079756 (not c!1321273)) b!7079752))

(assert (= (and b!7079752 c!1321272) b!7079757))

(assert (= (and b!7079752 (not c!1321272)) b!7079753))

(assert (= (or b!7079760 b!7079757) bm!643494))

(assert (= (or b!7079760 b!7079757) bm!643495))

(assert (= (or b!7079759 bm!643495) bm!643491))

(assert (= (or b!7079759 bm!643494) bm!643496))

(assert (= (or b!7079751 bm!643491) bm!643492))

(assert (= (or b!7079751 b!7079759) bm!643493))

(declare-fun m!7809946 () Bool)

(assert (=> bm!643493 m!7809946))

(assert (=> b!7079754 m!7809900))

(declare-fun m!7809948 () Bool)

(assert (=> bm!643492 m!7809948))

(declare-fun m!7809950 () Bool)

(assert (=> b!7079750 m!7809950))

(declare-fun m!7809952 () Bool)

(assert (=> bm!643496 m!7809952))

(assert (=> b!7079530 d!2214327))

(declare-fun d!2214329 () Bool)

(assert (=> d!2214329 (isDefined!13694 (findConcatSeparationZippers!509 lt!2551416 (set.insert ct2!306 (as set.empty (Set Context!13356))) Nil!68448 (t!382357 s!7408) (t!382357 s!7408)))))

(declare-fun lt!2551592 () Unit!162075)

(declare-fun choose!54433 ((Set Context!13356) Context!13356 List!68572) Unit!162075)

(assert (=> d!2214329 (= lt!2551592 (choose!54433 lt!2551416 ct2!306 (t!382357 s!7408)))))

(assert (=> d!2214329 (matchZipper!3222 (appendTo!803 lt!2551416 ct2!306) (t!382357 s!7408))))

(assert (=> d!2214329 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!497 lt!2551416 ct2!306 (t!382357 s!7408)) lt!2551592)))

(declare-fun bs!1881909 () Bool)

(assert (= bs!1881909 d!2214329))

(assert (=> bs!1881909 m!7809552))

(declare-fun m!7809954 () Bool)

(assert (=> bs!1881909 m!7809954))

(declare-fun m!7809956 () Bool)

(assert (=> bs!1881909 m!7809956))

(declare-fun m!7809958 () Bool)

(assert (=> bs!1881909 m!7809958))

(assert (=> bs!1881909 m!7809550))

(assert (=> bs!1881909 m!7809550))

(declare-fun m!7809960 () Bool)

(assert (=> bs!1881909 m!7809960))

(assert (=> bs!1881909 m!7809552))

(assert (=> bs!1881909 m!7809956))

(assert (=> b!7079530 d!2214329))

(declare-fun d!2214331 () Bool)

(declare-fun c!1321277 () Bool)

(assert (=> d!2214331 (= c!1321277 (isEmpty!39961 (_1!37464 lt!2551431)))))

(declare-fun e!4256323 () Bool)

(assert (=> d!2214331 (= (matchZipper!3222 lt!2551416 (_1!37464 lt!2551431)) e!4256323)))

(declare-fun b!7079761 () Bool)

(assert (=> b!7079761 (= e!4256323 (nullableZipper!2723 lt!2551416))))

(declare-fun b!7079762 () Bool)

(assert (=> b!7079762 (= e!4256323 (matchZipper!3222 (derivationStepZipper!3132 lt!2551416 (head!14432 (_1!37464 lt!2551431))) (tail!13891 (_1!37464 lt!2551431))))))

(assert (= (and d!2214331 c!1321277) b!7079761))

(assert (= (and d!2214331 (not c!1321277)) b!7079762))

(declare-fun m!7809962 () Bool)

(assert (=> d!2214331 m!7809962))

(declare-fun m!7809964 () Bool)

(assert (=> b!7079761 m!7809964))

(declare-fun m!7809966 () Bool)

(assert (=> b!7079762 m!7809966))

(assert (=> b!7079762 m!7809966))

(declare-fun m!7809968 () Bool)

(assert (=> b!7079762 m!7809968))

(declare-fun m!7809970 () Bool)

(assert (=> b!7079762 m!7809970))

(assert (=> b!7079762 m!7809968))

(assert (=> b!7079762 m!7809970))

(declare-fun m!7809972 () Bool)

(assert (=> b!7079762 m!7809972))

(assert (=> b!7079530 d!2214331))

(assert (=> b!7079530 d!2214321))

(declare-fun d!2214333 () Bool)

(assert (=> d!2214333 (= (isDefined!13694 lt!2551414) (not (isEmpty!39962 lt!2551414)))))

(declare-fun bs!1881910 () Bool)

(assert (= bs!1881910 d!2214333))

(declare-fun m!7809974 () Bool)

(assert (=> bs!1881910 m!7809974))

(assert (=> b!7079530 d!2214333))

(declare-fun d!2214335 () Bool)

(assert (=> d!2214335 (= (get!23985 lt!2551414) (v!53286 lt!2551414))))

(assert (=> b!7079530 d!2214335))

(declare-fun bs!1881911 () Bool)

(declare-fun d!2214337 () Bool)

(assert (= bs!1881911 (and d!2214337 b!7079534)))

(declare-fun lambda!427525 () Int)

(assert (=> bs!1881911 (= lambda!427525 lambda!427479)))

(assert (=> d!2214337 true))

(declare-fun map!16033 ((Set Context!13356) Int) (Set Context!13356))

(assert (=> d!2214337 (= (appendTo!803 lt!2551416 ct2!306) (map!16033 lt!2551416 lambda!427525))))

(declare-fun bs!1881912 () Bool)

(assert (= bs!1881912 d!2214337))

(declare-fun m!7809976 () Bool)

(assert (=> bs!1881912 m!7809976))

(assert (=> b!7079530 d!2214337))

(declare-fun bs!1881913 () Bool)

(declare-fun d!2214339 () Bool)

(assert (= bs!1881913 (and d!2214339 b!7079534)))

(declare-fun lambda!427528 () Int)

(assert (=> bs!1881913 (= lambda!427528 lambda!427480)))

(assert (=> d!2214339 (= (derivationStepZipperDown!2316 (h!74897 (exprs!7178 lt!2551443)) (Context!13357 (++!15840 (exprs!7178 lt!2551418) (exprs!7178 ct2!306))) (h!74896 s!7408)) (appendTo!803 (derivationStepZipperDown!2316 (h!74897 (exprs!7178 lt!2551443)) lt!2551418 (h!74896 s!7408)) ct2!306))))

(declare-fun lt!2551600 () Unit!162075)

(assert (=> d!2214339 (= lt!2551600 (lemmaConcatPreservesForall!993 (exprs!7178 lt!2551418) (exprs!7178 ct2!306) lambda!427528))))

(declare-fun lt!2551599 () Unit!162075)

(declare-fun choose!54434 (Context!13356 Regex!17682 C!35634 Context!13356) Unit!162075)

(assert (=> d!2214339 (= lt!2551599 (choose!54434 lt!2551418 (h!74897 (exprs!7178 lt!2551443)) (h!74896 s!7408) ct2!306))))

(declare-fun validRegex!8991 (Regex!17682) Bool)

(assert (=> d!2214339 (validRegex!8991 (h!74897 (exprs!7178 lt!2551443)))))

(assert (=> d!2214339 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!149 lt!2551418 (h!74897 (exprs!7178 lt!2551443)) (h!74896 s!7408) ct2!306) lt!2551599)))

(declare-fun bs!1881914 () Bool)

(assert (= bs!1881914 d!2214339))

(declare-fun m!7809978 () Bool)

(assert (=> bs!1881914 m!7809978))

(assert (=> bs!1881914 m!7809564))

(declare-fun m!7809980 () Bool)

(assert (=> bs!1881914 m!7809980))

(declare-fun m!7809982 () Bool)

(assert (=> bs!1881914 m!7809982))

(declare-fun m!7809984 () Bool)

(assert (=> bs!1881914 m!7809984))

(assert (=> bs!1881914 m!7809564))

(declare-fun m!7809986 () Bool)

(assert (=> bs!1881914 m!7809986))

(declare-fun m!7809988 () Bool)

(assert (=> bs!1881914 m!7809988))

(assert (=> b!7079530 d!2214339))

(declare-fun b!7079763 () Bool)

(declare-fun res!2891937 () Bool)

(declare-fun e!4256326 () Bool)

(assert (=> b!7079763 (=> (not res!2891937) (not e!4256326))))

(declare-fun lt!2551603 () Option!16993)

(assert (=> b!7079763 (= res!2891937 (matchZipper!3222 lt!2551416 (_1!37464 (get!23985 lt!2551603))))))

(declare-fun b!7079764 () Bool)

(declare-fun e!4256325 () Option!16993)

(assert (=> b!7079764 (= e!4256325 (Some!16992 (tuple2!68323 Nil!68448 (t!382357 s!7408))))))

(declare-fun b!7079765 () Bool)

(declare-fun e!4256324 () Option!16993)

(assert (=> b!7079765 (= e!4256325 e!4256324)))

(declare-fun c!1321280 () Bool)

(assert (=> b!7079765 (= c!1321280 (is-Nil!68448 (t!382357 s!7408)))))

(declare-fun b!7079766 () Bool)

(assert (=> b!7079766 (= e!4256326 (= (++!15839 (_1!37464 (get!23985 lt!2551603)) (_2!37464 (get!23985 lt!2551603))) (t!382357 s!7408)))))

(declare-fun d!2214341 () Bool)

(declare-fun e!4256328 () Bool)

(assert (=> d!2214341 e!4256328))

(declare-fun res!2891938 () Bool)

(assert (=> d!2214341 (=> res!2891938 e!4256328)))

(assert (=> d!2214341 (= res!2891938 e!4256326)))

(declare-fun res!2891939 () Bool)

(assert (=> d!2214341 (=> (not res!2891939) (not e!4256326))))

(assert (=> d!2214341 (= res!2891939 (isDefined!13694 lt!2551603))))

(assert (=> d!2214341 (= lt!2551603 e!4256325)))

(declare-fun c!1321281 () Bool)

(declare-fun e!4256327 () Bool)

(assert (=> d!2214341 (= c!1321281 e!4256327)))

(declare-fun res!2891936 () Bool)

(assert (=> d!2214341 (=> (not res!2891936) (not e!4256327))))

(assert (=> d!2214341 (= res!2891936 (matchZipper!3222 lt!2551416 Nil!68448))))

(assert (=> d!2214341 (= (++!15839 Nil!68448 (t!382357 s!7408)) (t!382357 s!7408))))

(assert (=> d!2214341 (= (findConcatSeparationZippers!509 lt!2551416 lt!2551428 Nil!68448 (t!382357 s!7408) (t!382357 s!7408)) lt!2551603)))

(declare-fun b!7079767 () Bool)

(declare-fun lt!2551602 () Unit!162075)

(declare-fun lt!2551601 () Unit!162075)

(assert (=> b!7079767 (= lt!2551602 lt!2551601)))

(assert (=> b!7079767 (= (++!15839 (++!15839 Nil!68448 (Cons!68448 (h!74896 (t!382357 s!7408)) Nil!68448)) (t!382357 (t!382357 s!7408))) (t!382357 s!7408))))

(assert (=> b!7079767 (= lt!2551601 (lemmaMoveElementToOtherListKeepsConcatEq!2992 Nil!68448 (h!74896 (t!382357 s!7408)) (t!382357 (t!382357 s!7408)) (t!382357 s!7408)))))

(assert (=> b!7079767 (= e!4256324 (findConcatSeparationZippers!509 lt!2551416 lt!2551428 (++!15839 Nil!68448 (Cons!68448 (h!74896 (t!382357 s!7408)) Nil!68448)) (t!382357 (t!382357 s!7408)) (t!382357 s!7408)))))

(declare-fun b!7079768 () Bool)

(assert (=> b!7079768 (= e!4256324 None!16992)))

(declare-fun b!7079769 () Bool)

(declare-fun res!2891935 () Bool)

(assert (=> b!7079769 (=> (not res!2891935) (not e!4256326))))

(assert (=> b!7079769 (= res!2891935 (matchZipper!3222 lt!2551428 (_2!37464 (get!23985 lt!2551603))))))

(declare-fun b!7079770 () Bool)

(assert (=> b!7079770 (= e!4256328 (not (isDefined!13694 lt!2551603)))))

(declare-fun b!7079771 () Bool)

(assert (=> b!7079771 (= e!4256327 (matchZipper!3222 lt!2551428 (t!382357 s!7408)))))

(assert (= (and d!2214341 res!2891936) b!7079771))

(assert (= (and d!2214341 c!1321281) b!7079764))

(assert (= (and d!2214341 (not c!1321281)) b!7079765))

(assert (= (and b!7079765 c!1321280) b!7079768))

(assert (= (and b!7079765 (not c!1321280)) b!7079767))

(assert (= (and d!2214341 res!2891939) b!7079763))

(assert (= (and b!7079763 res!2891937) b!7079769))

(assert (= (and b!7079769 res!2891935) b!7079766))

(assert (= (and d!2214341 (not res!2891938)) b!7079770))

(declare-fun m!7809990 () Bool)

(assert (=> b!7079771 m!7809990))

(declare-fun m!7809992 () Bool)

(assert (=> b!7079767 m!7809992))

(assert (=> b!7079767 m!7809992))

(declare-fun m!7809994 () Bool)

(assert (=> b!7079767 m!7809994))

(declare-fun m!7809996 () Bool)

(assert (=> b!7079767 m!7809996))

(assert (=> b!7079767 m!7809992))

(declare-fun m!7809998 () Bool)

(assert (=> b!7079767 m!7809998))

(declare-fun m!7810000 () Bool)

(assert (=> b!7079769 m!7810000))

(declare-fun m!7810002 () Bool)

(assert (=> b!7079769 m!7810002))

(assert (=> b!7079766 m!7810000))

(declare-fun m!7810004 () Bool)

(assert (=> b!7079766 m!7810004))

(declare-fun m!7810006 () Bool)

(assert (=> d!2214341 m!7810006))

(declare-fun m!7810008 () Bool)

(assert (=> d!2214341 m!7810008))

(declare-fun m!7810010 () Bool)

(assert (=> d!2214341 m!7810010))

(assert (=> b!7079763 m!7810000))

(declare-fun m!7810012 () Bool)

(assert (=> b!7079763 m!7810012))

(assert (=> b!7079770 m!7810006))

(assert (=> b!7079530 d!2214341))

(declare-fun b!7079774 () Bool)

(declare-fun res!2891941 () Bool)

(declare-fun e!4256330 () Bool)

(assert (=> b!7079774 (=> (not res!2891941) (not e!4256330))))

(declare-fun lt!2551604 () List!68572)

(assert (=> b!7079774 (= res!2891941 (= (size!41252 lt!2551604) (+ (size!41252 (_1!37464 lt!2551431)) (size!41252 (_2!37464 lt!2551431)))))))

(declare-fun b!7079772 () Bool)

(declare-fun e!4256329 () List!68572)

(assert (=> b!7079772 (= e!4256329 (_2!37464 lt!2551431))))

(declare-fun b!7079775 () Bool)

(assert (=> b!7079775 (= e!4256330 (or (not (= (_2!37464 lt!2551431) Nil!68448)) (= lt!2551604 (_1!37464 lt!2551431))))))

(declare-fun b!7079773 () Bool)

(assert (=> b!7079773 (= e!4256329 (Cons!68448 (h!74896 (_1!37464 lt!2551431)) (++!15839 (t!382357 (_1!37464 lt!2551431)) (_2!37464 lt!2551431))))))

(declare-fun d!2214343 () Bool)

(assert (=> d!2214343 e!4256330))

(declare-fun res!2891940 () Bool)

(assert (=> d!2214343 (=> (not res!2891940) (not e!4256330))))

(assert (=> d!2214343 (= res!2891940 (= (content!13865 lt!2551604) (set.union (content!13865 (_1!37464 lt!2551431)) (content!13865 (_2!37464 lt!2551431)))))))

(assert (=> d!2214343 (= lt!2551604 e!4256329)))

(declare-fun c!1321282 () Bool)

(assert (=> d!2214343 (= c!1321282 (is-Nil!68448 (_1!37464 lt!2551431)))))

(assert (=> d!2214343 (= (++!15839 (_1!37464 lt!2551431) (_2!37464 lt!2551431)) lt!2551604)))

(assert (= (and d!2214343 c!1321282) b!7079772))

(assert (= (and d!2214343 (not c!1321282)) b!7079773))

(assert (= (and d!2214343 res!2891940) b!7079774))

(assert (= (and b!7079774 res!2891941) b!7079775))

(declare-fun m!7810014 () Bool)

(assert (=> b!7079774 m!7810014))

(declare-fun m!7810016 () Bool)

(assert (=> b!7079774 m!7810016))

(assert (=> b!7079774 m!7809936))

(declare-fun m!7810018 () Bool)

(assert (=> b!7079773 m!7810018))

(declare-fun m!7810020 () Bool)

(assert (=> d!2214343 m!7810020))

(declare-fun m!7810022 () Bool)

(assert (=> d!2214343 m!7810022))

(assert (=> d!2214343 m!7809944))

(assert (=> b!7079549 d!2214343))

(declare-fun d!2214345 () Bool)

(assert (=> d!2214345 (forall!16644 (++!15840 (exprs!7178 lt!2551443) (exprs!7178 ct2!306)) lambda!427480)))

(declare-fun lt!2551605 () Unit!162075)

(assert (=> d!2214345 (= lt!2551605 (choose!54432 (exprs!7178 lt!2551443) (exprs!7178 ct2!306) lambda!427480))))

(assert (=> d!2214345 (forall!16644 (exprs!7178 lt!2551443) lambda!427480)))

(assert (=> d!2214345 (= (lemmaConcatPreservesForall!993 (exprs!7178 lt!2551443) (exprs!7178 ct2!306) lambda!427480) lt!2551605)))

(declare-fun bs!1881915 () Bool)

(assert (= bs!1881915 d!2214345))

(assert (=> bs!1881915 m!7809614))

(assert (=> bs!1881915 m!7809614))

(declare-fun m!7810024 () Bool)

(assert (=> bs!1881915 m!7810024))

(declare-fun m!7810026 () Bool)

(assert (=> bs!1881915 m!7810026))

(declare-fun m!7810028 () Bool)

(assert (=> bs!1881915 m!7810028))

(assert (=> b!7079539 d!2214345))

(declare-fun bs!1881916 () Bool)

(declare-fun d!2214347 () Bool)

(assert (= bs!1881916 (and d!2214347 b!7079534)))

(declare-fun lambda!427531 () Int)

(assert (=> bs!1881916 (= lambda!427531 lambda!427480)))

(declare-fun bs!1881917 () Bool)

(assert (= bs!1881917 (and d!2214347 d!2214339)))

(assert (=> bs!1881917 (= lambda!427531 lambda!427528)))

(assert (=> d!2214347 (= (inv!87065 setElem!50458) (forall!16644 (exprs!7178 setElem!50458) lambda!427531))))

(declare-fun bs!1881918 () Bool)

(assert (= bs!1881918 d!2214347))

(declare-fun m!7810030 () Bool)

(assert (=> bs!1881918 m!7810030))

(assert (=> setNonEmpty!50458 d!2214347))

(declare-fun d!2214349 () Bool)

(declare-fun choose!54435 ((Set Context!13356) Int) (Set Context!13356))

(assert (=> d!2214349 (= (flatMap!2608 lt!2551440 lambda!427481) (choose!54435 lt!2551440 lambda!427481))))

(declare-fun bs!1881919 () Bool)

(assert (= bs!1881919 d!2214349))

(declare-fun m!7810032 () Bool)

(assert (=> bs!1881919 m!7810032))

(assert (=> b!7079536 d!2214349))

(declare-fun b!7079786 () Bool)

(declare-fun e!4256338 () (Set Context!13356))

(declare-fun e!4256339 () (Set Context!13356))

(assert (=> b!7079786 (= e!4256338 e!4256339)))

(declare-fun c!1321288 () Bool)

(assert (=> b!7079786 (= c!1321288 (is-Cons!68449 (exprs!7178 lt!2551443)))))

(declare-fun b!7079787 () Bool)

(assert (=> b!7079787 (= e!4256339 (as set.empty (Set Context!13356)))))

(declare-fun b!7079788 () Bool)

(declare-fun call!643504 () (Set Context!13356))

(assert (=> b!7079788 (= e!4256339 call!643504)))

(declare-fun d!2214351 () Bool)

(declare-fun c!1321287 () Bool)

(declare-fun e!4256337 () Bool)

(assert (=> d!2214351 (= c!1321287 e!4256337)))

(declare-fun res!2891944 () Bool)

(assert (=> d!2214351 (=> (not res!2891944) (not e!4256337))))

(assert (=> d!2214351 (= res!2891944 (is-Cons!68449 (exprs!7178 lt!2551443)))))

(assert (=> d!2214351 (= (derivationStepZipperUp!2266 lt!2551443 (h!74896 s!7408)) e!4256338)))

(declare-fun b!7079789 () Bool)

(assert (=> b!7079789 (= e!4256338 (set.union call!643504 (derivationStepZipperUp!2266 (Context!13357 (t!382358 (exprs!7178 lt!2551443))) (h!74896 s!7408))))))

(declare-fun b!7079790 () Bool)

(assert (=> b!7079790 (= e!4256337 (nullable!7365 (h!74897 (exprs!7178 lt!2551443))))))

(declare-fun bm!643499 () Bool)

(assert (=> bm!643499 (= call!643504 (derivationStepZipperDown!2316 (h!74897 (exprs!7178 lt!2551443)) (Context!13357 (t!382358 (exprs!7178 lt!2551443))) (h!74896 s!7408)))))

(assert (= (and d!2214351 res!2891944) b!7079790))

(assert (= (and d!2214351 c!1321287) b!7079789))

(assert (= (and d!2214351 (not c!1321287)) b!7079786))

(assert (= (and b!7079786 c!1321288) b!7079788))

(assert (= (and b!7079786 (not c!1321288)) b!7079787))

(assert (= (or b!7079789 b!7079788) bm!643499))

(declare-fun m!7810034 () Bool)

(assert (=> b!7079789 m!7810034))

(assert (=> b!7079790 m!7809578))

(declare-fun m!7810036 () Bool)

(assert (=> bm!643499 m!7810036))

(assert (=> b!7079536 d!2214351))

(declare-fun d!2214353 () Bool)

(declare-fun dynLambda!27892 (Int Context!13356) (Set Context!13356))

(assert (=> d!2214353 (= (flatMap!2608 lt!2551440 lambda!427481) (dynLambda!27892 lambda!427481 lt!2551443))))

(declare-fun lt!2551608 () Unit!162075)

(declare-fun choose!54436 ((Set Context!13356) Context!13356 Int) Unit!162075)

(assert (=> d!2214353 (= lt!2551608 (choose!54436 lt!2551440 lt!2551443 lambda!427481))))

(assert (=> d!2214353 (= lt!2551440 (set.insert lt!2551443 (as set.empty (Set Context!13356))))))

(assert (=> d!2214353 (= (lemmaFlatMapOnSingletonSet!2117 lt!2551440 lt!2551443 lambda!427481) lt!2551608)))

(declare-fun b_lambda!270475 () Bool)

(assert (=> (not b_lambda!270475) (not d!2214353)))

(declare-fun bs!1881920 () Bool)

(assert (= bs!1881920 d!2214353))

(assert (=> bs!1881920 m!7809624))

(declare-fun m!7810038 () Bool)

(assert (=> bs!1881920 m!7810038))

(declare-fun m!7810040 () Bool)

(assert (=> bs!1881920 m!7810040))

(assert (=> bs!1881920 m!7809628))

(assert (=> b!7079536 d!2214353))

(declare-fun bs!1881921 () Bool)

(declare-fun d!2214355 () Bool)

(assert (= bs!1881921 (and d!2214355 b!7079543)))

(declare-fun lambda!427534 () Int)

(assert (=> bs!1881921 (= lambda!427534 lambda!427481)))

(assert (=> d!2214355 true))

(assert (=> d!2214355 (= (derivationStepZipper!3132 lt!2551440 (h!74896 s!7408)) (flatMap!2608 lt!2551440 lambda!427534))))

(declare-fun bs!1881922 () Bool)

(assert (= bs!1881922 d!2214355))

(declare-fun m!7810042 () Bool)

(assert (=> bs!1881922 m!7810042))

(assert (=> b!7079536 d!2214355))

(declare-fun d!2214357 () Bool)

(declare-fun c!1321291 () Bool)

(assert (=> d!2214357 (= c!1321291 (isEmpty!39961 (_2!37464 lt!2551431)))))

(declare-fun e!4256340 () Bool)

(assert (=> d!2214357 (= (matchZipper!3222 lt!2551428 (_2!37464 lt!2551431)) e!4256340)))

(declare-fun b!7079793 () Bool)

(assert (=> b!7079793 (= e!4256340 (nullableZipper!2723 lt!2551428))))

(declare-fun b!7079794 () Bool)

(assert (=> b!7079794 (= e!4256340 (matchZipper!3222 (derivationStepZipper!3132 lt!2551428 (head!14432 (_2!37464 lt!2551431))) (tail!13891 (_2!37464 lt!2551431))))))

(assert (= (and d!2214357 c!1321291) b!7079793))

(assert (= (and d!2214357 (not c!1321291)) b!7079794))

(declare-fun m!7810044 () Bool)

(assert (=> d!2214357 m!7810044))

(declare-fun m!7810046 () Bool)

(assert (=> b!7079793 m!7810046))

(declare-fun m!7810048 () Bool)

(assert (=> b!7079794 m!7810048))

(assert (=> b!7079794 m!7810048))

(declare-fun m!7810050 () Bool)

(assert (=> b!7079794 m!7810050))

(declare-fun m!7810052 () Bool)

(assert (=> b!7079794 m!7810052))

(assert (=> b!7079794 m!7810050))

(assert (=> b!7079794 m!7810052))

(declare-fun m!7810054 () Bool)

(assert (=> b!7079794 m!7810054))

(assert (=> b!7079547 d!2214357))

(declare-fun b!7079797 () Bool)

(declare-fun res!2891946 () Bool)

(declare-fun e!4256342 () Bool)

(assert (=> b!7079797 (=> (not res!2891946) (not e!4256342))))

(declare-fun lt!2551609 () List!68573)

(assert (=> b!7079797 (= res!2891946 (= (size!41253 lt!2551609) (+ (size!41253 (exprs!7178 lt!2551443)) (size!41253 (exprs!7178 ct2!306)))))))

(declare-fun b!7079798 () Bool)

(assert (=> b!7079798 (= e!4256342 (or (not (= (exprs!7178 ct2!306) Nil!68449)) (= lt!2551609 (exprs!7178 lt!2551443))))))

(declare-fun b!7079795 () Bool)

(declare-fun e!4256341 () List!68573)

(assert (=> b!7079795 (= e!4256341 (exprs!7178 ct2!306))))

(declare-fun d!2214359 () Bool)

(assert (=> d!2214359 e!4256342))

(declare-fun res!2891945 () Bool)

(assert (=> d!2214359 (=> (not res!2891945) (not e!4256342))))

(assert (=> d!2214359 (= res!2891945 (= (content!13864 lt!2551609) (set.union (content!13864 (exprs!7178 lt!2551443)) (content!13864 (exprs!7178 ct2!306)))))))

(assert (=> d!2214359 (= lt!2551609 e!4256341)))

(declare-fun c!1321292 () Bool)

(assert (=> d!2214359 (= c!1321292 (is-Nil!68449 (exprs!7178 lt!2551443)))))

(assert (=> d!2214359 (= (++!15840 (exprs!7178 lt!2551443) (exprs!7178 ct2!306)) lt!2551609)))

(declare-fun b!7079796 () Bool)

(assert (=> b!7079796 (= e!4256341 (Cons!68449 (h!74897 (exprs!7178 lt!2551443)) (++!15840 (t!382358 (exprs!7178 lt!2551443)) (exprs!7178 ct2!306))))))

(assert (= (and d!2214359 c!1321292) b!7079795))

(assert (= (and d!2214359 (not c!1321292)) b!7079796))

(assert (= (and d!2214359 res!2891945) b!7079797))

(assert (= (and b!7079797 res!2891946) b!7079798))

(declare-fun m!7810056 () Bool)

(assert (=> b!7079797 m!7810056))

(declare-fun m!7810058 () Bool)

(assert (=> b!7079797 m!7810058))

(assert (=> b!7079797 m!7809912))

(declare-fun m!7810060 () Bool)

(assert (=> d!2214359 m!7810060))

(declare-fun m!7810062 () Bool)

(assert (=> d!2214359 m!7810062))

(assert (=> d!2214359 m!7809918))

(declare-fun m!7810064 () Bool)

(assert (=> b!7079796 m!7810064))

(assert (=> b!7079534 d!2214359))

(assert (=> b!7079534 d!2214345))

(declare-fun d!2214361 () Bool)

(declare-fun e!4256345 () Bool)

(assert (=> d!2214361 e!4256345))

(declare-fun res!2891949 () Bool)

(assert (=> d!2214361 (=> (not res!2891949) (not e!4256345))))

(declare-fun lt!2551612 () Context!13356)

(declare-fun dynLambda!27893 (Int Context!13356) Context!13356)

(assert (=> d!2214361 (= res!2891949 (= lt!2551439 (dynLambda!27893 lambda!427479 lt!2551612)))))

(declare-fun choose!54437 ((Set Context!13356) Int Context!13356) Context!13356)

(assert (=> d!2214361 (= lt!2551612 (choose!54437 z1!570 lambda!427479 lt!2551439))))

(assert (=> d!2214361 (set.member lt!2551439 (map!16033 z1!570 lambda!427479))))

(assert (=> d!2214361 (= (mapPost2!511 z1!570 lambda!427479 lt!2551439) lt!2551612)))

(declare-fun b!7079802 () Bool)

(assert (=> b!7079802 (= e!4256345 (set.member lt!2551612 z1!570))))

(assert (= (and d!2214361 res!2891949) b!7079802))

(declare-fun b_lambda!270477 () Bool)

(assert (=> (not b_lambda!270477) (not d!2214361)))

(declare-fun m!7810066 () Bool)

(assert (=> d!2214361 m!7810066))

(declare-fun m!7810068 () Bool)

(assert (=> d!2214361 m!7810068))

(declare-fun m!7810070 () Bool)

(assert (=> d!2214361 m!7810070))

(declare-fun m!7810072 () Bool)

(assert (=> d!2214361 m!7810072))

(declare-fun m!7810074 () Bool)

(assert (=> b!7079802 m!7810074))

(assert (=> b!7079534 d!2214361))

(declare-fun bs!1881923 () Bool)

(declare-fun d!2214363 () Bool)

(assert (= bs!1881923 (and d!2214363 b!7079543)))

(declare-fun lambda!427535 () Int)

(assert (=> bs!1881923 (= lambda!427535 lambda!427481)))

(declare-fun bs!1881924 () Bool)

(assert (= bs!1881924 (and d!2214363 d!2214355)))

(assert (=> bs!1881924 (= lambda!427535 lambda!427534)))

(assert (=> d!2214363 true))

(assert (=> d!2214363 (= (derivationStepZipper!3132 lt!2551415 (h!74896 s!7408)) (flatMap!2608 lt!2551415 lambda!427535))))

(declare-fun bs!1881925 () Bool)

(assert (= bs!1881925 d!2214363))

(declare-fun m!7810076 () Bool)

(assert (=> bs!1881925 m!7810076))

(assert (=> b!7079543 d!2214363))

(declare-fun d!2214365 () Bool)

(assert (=> d!2214365 (= (flatMap!2608 lt!2551415 lambda!427481) (dynLambda!27892 lambda!427481 lt!2551424))))

(declare-fun lt!2551613 () Unit!162075)

(assert (=> d!2214365 (= lt!2551613 (choose!54436 lt!2551415 lt!2551424 lambda!427481))))

(assert (=> d!2214365 (= lt!2551415 (set.insert lt!2551424 (as set.empty (Set Context!13356))))))

(assert (=> d!2214365 (= (lemmaFlatMapOnSingletonSet!2117 lt!2551415 lt!2551424 lambda!427481) lt!2551613)))

(declare-fun b_lambda!270479 () Bool)

(assert (=> (not b_lambda!270479) (not d!2214365)))

(declare-fun bs!1881926 () Bool)

(assert (= bs!1881926 d!2214365))

(assert (=> bs!1881926 m!7809588))

(declare-fun m!7810078 () Bool)

(assert (=> bs!1881926 m!7810078))

(declare-fun m!7810080 () Bool)

(assert (=> bs!1881926 m!7810080))

(assert (=> bs!1881926 m!7809618))

(assert (=> b!7079543 d!2214365))

(assert (=> b!7079543 d!2214345))

(declare-fun b!7079803 () Bool)

(declare-fun e!4256347 () (Set Context!13356))

(declare-fun e!4256348 () (Set Context!13356))

(assert (=> b!7079803 (= e!4256347 e!4256348)))

(declare-fun c!1321294 () Bool)

(assert (=> b!7079803 (= c!1321294 (is-Cons!68449 (exprs!7178 lt!2551424)))))

(declare-fun b!7079804 () Bool)

(assert (=> b!7079804 (= e!4256348 (as set.empty (Set Context!13356)))))

(declare-fun b!7079805 () Bool)

(declare-fun call!643505 () (Set Context!13356))

(assert (=> b!7079805 (= e!4256348 call!643505)))

(declare-fun d!2214367 () Bool)

(declare-fun c!1321293 () Bool)

(declare-fun e!4256346 () Bool)

(assert (=> d!2214367 (= c!1321293 e!4256346)))

(declare-fun res!2891950 () Bool)

(assert (=> d!2214367 (=> (not res!2891950) (not e!4256346))))

(assert (=> d!2214367 (= res!2891950 (is-Cons!68449 (exprs!7178 lt!2551424)))))

(assert (=> d!2214367 (= (derivationStepZipperUp!2266 lt!2551424 (h!74896 s!7408)) e!4256347)))

(declare-fun b!7079806 () Bool)

(assert (=> b!7079806 (= e!4256347 (set.union call!643505 (derivationStepZipperUp!2266 (Context!13357 (t!382358 (exprs!7178 lt!2551424))) (h!74896 s!7408))))))

(declare-fun b!7079807 () Bool)

(assert (=> b!7079807 (= e!4256346 (nullable!7365 (h!74897 (exprs!7178 lt!2551424))))))

(declare-fun bm!643500 () Bool)

(assert (=> bm!643500 (= call!643505 (derivationStepZipperDown!2316 (h!74897 (exprs!7178 lt!2551424)) (Context!13357 (t!382358 (exprs!7178 lt!2551424))) (h!74896 s!7408)))))

(assert (= (and d!2214367 res!2891950) b!7079807))

(assert (= (and d!2214367 c!1321293) b!7079806))

(assert (= (and d!2214367 (not c!1321293)) b!7079803))

(assert (= (and b!7079803 c!1321294) b!7079805))

(assert (= (and b!7079803 (not c!1321294)) b!7079804))

(assert (= (or b!7079806 b!7079805) bm!643500))

(declare-fun m!7810082 () Bool)

(assert (=> b!7079806 m!7810082))

(declare-fun m!7810084 () Bool)

(assert (=> b!7079807 m!7810084))

(declare-fun m!7810086 () Bool)

(assert (=> bm!643500 m!7810086))

(assert (=> b!7079543 d!2214367))

(declare-fun d!2214369 () Bool)

(assert (=> d!2214369 (= (flatMap!2608 lt!2551415 lambda!427481) (choose!54435 lt!2551415 lambda!427481))))

(declare-fun bs!1881927 () Bool)

(assert (= bs!1881927 d!2214369))

(declare-fun m!7810088 () Bool)

(assert (=> bs!1881927 m!7810088))

(assert (=> b!7079543 d!2214369))

(declare-fun d!2214371 () Bool)

(declare-fun c!1321295 () Bool)

(assert (=> d!2214371 (= c!1321295 (isEmpty!39961 s!7408))))

(declare-fun e!4256349 () Bool)

(assert (=> d!2214371 (= (matchZipper!3222 lt!2551421 s!7408) e!4256349)))

(declare-fun b!7079808 () Bool)

(assert (=> b!7079808 (= e!4256349 (nullableZipper!2723 lt!2551421))))

(declare-fun b!7079809 () Bool)

(assert (=> b!7079809 (= e!4256349 (matchZipper!3222 (derivationStepZipper!3132 lt!2551421 (head!14432 s!7408)) (tail!13891 s!7408)))))

(assert (= (and d!2214371 c!1321295) b!7079808))

(assert (= (and d!2214371 (not c!1321295)) b!7079809))

(assert (=> d!2214371 m!7809858))

(declare-fun m!7810090 () Bool)

(assert (=> b!7079808 m!7810090))

(assert (=> b!7079809 m!7809862))

(assert (=> b!7079809 m!7809862))

(declare-fun m!7810092 () Bool)

(assert (=> b!7079809 m!7810092))

(assert (=> b!7079809 m!7809866))

(assert (=> b!7079809 m!7810092))

(assert (=> b!7079809 m!7809866))

(declare-fun m!7810094 () Bool)

(assert (=> b!7079809 m!7810094))

(assert (=> start!688494 d!2214371))

(declare-fun bs!1881928 () Bool)

(declare-fun d!2214373 () Bool)

(assert (= bs!1881928 (and d!2214373 b!7079534)))

(declare-fun lambda!427536 () Int)

(assert (=> bs!1881928 (= lambda!427536 lambda!427479)))

(declare-fun bs!1881929 () Bool)

(assert (= bs!1881929 (and d!2214373 d!2214337)))

(assert (=> bs!1881929 (= lambda!427536 lambda!427525)))

(assert (=> d!2214373 true))

(assert (=> d!2214373 (= (appendTo!803 z1!570 ct2!306) (map!16033 z1!570 lambda!427536))))

(declare-fun bs!1881930 () Bool)

(assert (= bs!1881930 d!2214373))

(declare-fun m!7810096 () Bool)

(assert (=> bs!1881930 m!7810096))

(assert (=> start!688494 d!2214373))

(declare-fun bs!1881931 () Bool)

(declare-fun d!2214375 () Bool)

(assert (= bs!1881931 (and d!2214375 b!7079534)))

(declare-fun lambda!427537 () Int)

(assert (=> bs!1881931 (= lambda!427537 lambda!427480)))

(declare-fun bs!1881932 () Bool)

(assert (= bs!1881932 (and d!2214375 d!2214339)))

(assert (=> bs!1881932 (= lambda!427537 lambda!427528)))

(declare-fun bs!1881933 () Bool)

(assert (= bs!1881933 (and d!2214375 d!2214347)))

(assert (=> bs!1881933 (= lambda!427537 lambda!427531)))

(assert (=> d!2214375 (= (inv!87065 ct2!306) (forall!16644 (exprs!7178 ct2!306) lambda!427537))))

(declare-fun bs!1881934 () Bool)

(assert (= bs!1881934 d!2214375))

(declare-fun m!7810098 () Bool)

(assert (=> bs!1881934 m!7810098))

(assert (=> start!688494 d!2214375))

(declare-fun b!7079814 () Bool)

(declare-fun e!4256352 () Bool)

(declare-fun tp!1943319 () Bool)

(declare-fun tp!1943320 () Bool)

(assert (=> b!7079814 (= e!4256352 (and tp!1943319 tp!1943320))))

(assert (=> b!7079546 (= tp!1943301 e!4256352)))

(assert (= (and b!7079546 (is-Cons!68449 (exprs!7178 ct2!306))) b!7079814))

(declare-fun condSetEmpty!50464 () Bool)

(assert (=> setNonEmpty!50458 (= condSetEmpty!50464 (= setRest!50458 (as set.empty (Set Context!13356))))))

(declare-fun setRes!50464 () Bool)

(assert (=> setNonEmpty!50458 (= tp!1943299 setRes!50464)))

(declare-fun setIsEmpty!50464 () Bool)

(assert (=> setIsEmpty!50464 setRes!50464))

(declare-fun setNonEmpty!50464 () Bool)

(declare-fun tp!1943325 () Bool)

(declare-fun setElem!50464 () Context!13356)

(declare-fun e!4256355 () Bool)

(assert (=> setNonEmpty!50464 (= setRes!50464 (and tp!1943325 (inv!87065 setElem!50464) e!4256355))))

(declare-fun setRest!50464 () (Set Context!13356))

(assert (=> setNonEmpty!50464 (= setRest!50458 (set.union (set.insert setElem!50464 (as set.empty (Set Context!13356))) setRest!50464))))

(declare-fun b!7079819 () Bool)

(declare-fun tp!1943326 () Bool)

(assert (=> b!7079819 (= e!4256355 tp!1943326)))

(assert (= (and setNonEmpty!50458 condSetEmpty!50464) setIsEmpty!50464))

(assert (= (and setNonEmpty!50458 (not condSetEmpty!50464)) setNonEmpty!50464))

(assert (= setNonEmpty!50464 b!7079819))

(declare-fun m!7810100 () Bool)

(assert (=> setNonEmpty!50464 m!7810100))

(declare-fun b!7079820 () Bool)

(declare-fun e!4256356 () Bool)

(declare-fun tp!1943327 () Bool)

(declare-fun tp!1943328 () Bool)

(assert (=> b!7079820 (= e!4256356 (and tp!1943327 tp!1943328))))

(assert (=> b!7079533 (= tp!1943300 e!4256356)))

(assert (= (and b!7079533 (is-Cons!68449 (exprs!7178 setElem!50458))) b!7079820))

(declare-fun b!7079825 () Bool)

(declare-fun e!4256359 () Bool)

(declare-fun tp!1943331 () Bool)

(assert (=> b!7079825 (= e!4256359 (and tp_is_empty!44589 tp!1943331))))

(assert (=> b!7079535 (= tp!1943302 e!4256359)))

(assert (= (and b!7079535 (is-Cons!68448 (t!382357 s!7408))) b!7079825))

(declare-fun b_lambda!270481 () Bool)

(assert (= b_lambda!270477 (or b!7079534 b_lambda!270481)))

(declare-fun bs!1881935 () Bool)

(declare-fun d!2214377 () Bool)

(assert (= bs!1881935 (and d!2214377 b!7079534)))

(declare-fun lt!2551614 () Unit!162075)

(assert (=> bs!1881935 (= lt!2551614 (lemmaConcatPreservesForall!993 (exprs!7178 lt!2551612) (exprs!7178 ct2!306) lambda!427480))))

(assert (=> bs!1881935 (= (dynLambda!27893 lambda!427479 lt!2551612) (Context!13357 (++!15840 (exprs!7178 lt!2551612) (exprs!7178 ct2!306))))))

(declare-fun m!7810102 () Bool)

(assert (=> bs!1881935 m!7810102))

(declare-fun m!7810104 () Bool)

(assert (=> bs!1881935 m!7810104))

(assert (=> d!2214361 d!2214377))

(declare-fun b_lambda!270483 () Bool)

(assert (= b_lambda!270475 (or b!7079543 b_lambda!270483)))

(declare-fun bs!1881936 () Bool)

(declare-fun d!2214379 () Bool)

(assert (= bs!1881936 (and d!2214379 b!7079543)))

(assert (=> bs!1881936 (= (dynLambda!27892 lambda!427481 lt!2551443) (derivationStepZipperUp!2266 lt!2551443 (h!74896 s!7408)))))

(assert (=> bs!1881936 m!7809620))

(assert (=> d!2214353 d!2214379))

(declare-fun b_lambda!270485 () Bool)

(assert (= b_lambda!270473 (or b!7079548 b_lambda!270485)))

(declare-fun bs!1881937 () Bool)

(declare-fun d!2214381 () Bool)

(assert (= bs!1881937 (and d!2214381 b!7079548)))

(assert (=> bs!1881937 (= (dynLambda!27890 lambda!427478 lt!2551576) (matchZipper!3222 (set.insert lt!2551576 (as set.empty (Set Context!13356))) s!7408))))

(declare-fun m!7810106 () Bool)

(assert (=> bs!1881937 m!7810106))

(assert (=> bs!1881937 m!7810106))

(declare-fun m!7810108 () Bool)

(assert (=> bs!1881937 m!7810108))

(assert (=> d!2214305 d!2214381))

(declare-fun b_lambda!270487 () Bool)

(assert (= b_lambda!270479 (or b!7079543 b_lambda!270487)))

(declare-fun bs!1881938 () Bool)

(declare-fun d!2214383 () Bool)

(assert (= bs!1881938 (and d!2214383 b!7079543)))

(assert (=> bs!1881938 (= (dynLambda!27892 lambda!427481 lt!2551424) (derivationStepZipperUp!2266 lt!2551424 (h!74896 s!7408)))))

(assert (=> bs!1881938 m!7809596))

(assert (=> d!2214365 d!2214383))

(push 1)

(assert (not d!2214311))

(assert (not d!2214361))

(assert (not b_lambda!270481))

(assert (not b_lambda!270485))

(assert (not b!7079773))

(assert (not d!2214295))

(assert (not bm!643492))

(assert (not b!7079645))

(assert (not b!7079766))

(assert (not d!2214373))

(assert (not b!7079770))

(assert (not b!7079689))

(assert (not b_lambda!270487))

(assert (not b!7079793))

(assert (not b!7079642))

(assert (not bm!643493))

(assert (not b!7079806))

(assert (not b!7079677))

(assert (not d!2214309))

(assert (not d!2214291))

(assert (not b!7079790))

(assert (not d!2214345))

(assert (not setNonEmpty!50464))

(assert (not d!2214355))

(assert (not bm!643500))

(assert (not d!2214313))

(assert (not d!2214321))

(assert (not d!2214339))

(assert (not d!2214337))

(assert (not b!7079736))

(assert (not d!2214347))

(assert (not b!7079733))

(assert (not b!7079717))

(assert (not b!7079796))

(assert (not bm!643496))

(assert (not b!7079819))

(assert (not b!7079673))

(assert (not d!2214365))

(assert (not d!2214363))

(assert (not b!7079688))

(assert (not b!7079754))

(assert (not d!2214319))

(assert (not d!2214301))

(assert (not b!7079767))

(assert (not d!2214323))

(assert (not d!2214369))

(assert (not d!2214333))

(assert (not d!2214375))

(assert (not bm!643499))

(assert (not b!7079771))

(assert (not b!7079634))

(assert (not b!7079676))

(assert (not d!2214353))

(assert (not b!7079650))

(assert (not d!2214293))

(assert tp_is_empty!44589)

(assert (not d!2214285))

(assert (not d!2214315))

(assert (not b!7079763))

(assert (not b!7079679))

(assert (not b!7079762))

(assert (not b!7079674))

(assert (not b!7079690))

(assert (not b!7079769))

(assert (not b!7079651))

(assert (not b!7079814))

(assert (not b!7079809))

(assert (not bs!1881935))

(assert (not d!2214325))

(assert (not b!7079748))

(assert (not b!7079747))

(assert (not d!2214307))

(assert (not d!2214299))

(assert (not d!2214297))

(assert (not b!7079684))

(assert (not b!7079737))

(assert (not b!7079774))

(assert (not b!7079794))

(assert (not b!7079734))

(assert (not d!2214283))

(assert (not bs!1881938))

(assert (not b!7079680))

(assert (not bm!643487))

(assert (not b!7079807))

(assert (not b!7079636))

(assert (not d!2214329))

(assert (not bm!643486))

(assert (not b!7079635))

(assert (not b!7079808))

(assert (not b!7079789))

(assert (not d!2214349))

(assert (not bm!643490))

(assert (not b_lambda!270483))

(assert (not b!7079825))

(assert (not d!2214359))

(assert (not b!7079685))

(assert (not bs!1881936))

(assert (not d!2214331))

(assert (not b!7079797))

(assert (not d!2214371))

(assert (not d!2214305))

(assert (not bs!1881937))

(assert (not d!2214277))

(assert (not d!2214343))

(assert (not d!2214341))

(assert (not d!2214357))

(assert (not b!7079761))

(assert (not b!7079820))

(assert (not b!7079670))

(assert (not b!7079678))

(assert (not d!2214289))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

