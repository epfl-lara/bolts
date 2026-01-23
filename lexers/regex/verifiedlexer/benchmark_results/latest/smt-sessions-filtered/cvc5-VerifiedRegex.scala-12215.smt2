; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!688250 () Bool)

(assert start!688250)

(declare-fun b!7078402 () Bool)

(assert (=> b!7078402 true))

(declare-fun b!7078404 () Bool)

(assert (=> b!7078404 true))

(declare-fun b!7078406 () Bool)

(assert (=> b!7078406 true))

(declare-fun bs!1881685 () Bool)

(declare-fun b!7078409 () Bool)

(assert (= bs!1881685 (and b!7078409 b!7078402)))

(declare-fun lambda!427204 () Int)

(declare-fun lambda!427200 () Int)

(declare-datatypes ((C!35622 0))(
  ( (C!35623 (val!27513 Int)) )
))
(declare-datatypes ((List!68554 0))(
  ( (Nil!68430) (Cons!68430 (h!74878 C!35622) (t!382339 List!68554)) )
))
(declare-fun s!7408 () List!68554)

(declare-fun lt!2550547 () List!68554)

(assert (=> bs!1881685 (= (= lt!2550547 s!7408) (= lambda!427204 lambda!427200))))

(assert (=> b!7078409 true))

(declare-fun b!7078393 () Bool)

(declare-fun res!2891304 () Bool)

(declare-fun e!4255530 () Bool)

(assert (=> b!7078393 (=> res!2891304 e!4255530)))

(declare-datatypes ((tuple2!68310 0))(
  ( (tuple2!68311 (_1!37458 List!68554) (_2!37458 List!68554)) )
))
(declare-fun lt!2550546 () tuple2!68310)

(declare-fun ++!15827 (List!68554 List!68554) List!68554)

(assert (=> b!7078393 (= res!2891304 (not (= (++!15827 (_1!37458 lt!2550546) (_2!37458 lt!2550546)) (t!382339 s!7408))))))

(declare-fun b!7078394 () Bool)

(declare-fun e!4255537 () Bool)

(assert (=> b!7078394 (= e!4255530 e!4255537)))

(declare-fun res!2891297 () Bool)

(assert (=> b!7078394 (=> res!2891297 e!4255537)))

(declare-datatypes ((Regex!17676 0))(
  ( (ElementMatch!17676 (c!1320881 C!35622)) (Concat!26521 (regOne!35864 Regex!17676) (regTwo!35864 Regex!17676)) (EmptyExpr!17676) (Star!17676 (reg!18005 Regex!17676)) (EmptyLang!17676) (Union!17676 (regOne!35865 Regex!17676) (regTwo!35865 Regex!17676)) )
))
(declare-datatypes ((List!68555 0))(
  ( (Nil!68431) (Cons!68431 (h!74879 Regex!17676) (t!382340 List!68555)) )
))
(declare-datatypes ((Context!13344 0))(
  ( (Context!13345 (exprs!7172 List!68555)) )
))
(declare-fun lt!2550572 () (Set Context!13344))

(declare-fun lt!2550544 () (Set Context!13344))

(declare-fun lt!2550553 () (Set Context!13344))

(assert (=> b!7078394 (= res!2891297 (or (not (= lt!2550544 lt!2550553)) (not (= lt!2550544 lt!2550572))))))

(declare-fun lambda!427203 () Int)

(declare-fun lt!2550560 () Context!13344)

(declare-fun lt!2550561 () (Set Context!13344))

(declare-fun flatMap!2602 ((Set Context!13344) Int) (Set Context!13344))

(declare-fun derivationStepZipperUp!2260 (Context!13344 C!35622) (Set Context!13344))

(assert (=> b!7078394 (= (flatMap!2602 lt!2550561 lambda!427203) (derivationStepZipperUp!2260 lt!2550560 (h!74878 s!7408)))))

(declare-datatypes ((Unit!162063 0))(
  ( (Unit!162064) )
))
(declare-fun lt!2550555 () Unit!162063)

(declare-fun lemmaFlatMapOnSingletonSet!2111 ((Set Context!13344) Context!13344 Int) Unit!162063)

(assert (=> b!7078394 (= lt!2550555 (lemmaFlatMapOnSingletonSet!2111 lt!2550561 lt!2550560 lambda!427203))))

(assert (=> b!7078394 (= lt!2550553 (derivationStepZipperUp!2260 lt!2550560 (h!74878 s!7408)))))

(declare-fun derivationStepZipper!3126 ((Set Context!13344) C!35622) (Set Context!13344))

(assert (=> b!7078394 (= lt!2550544 (derivationStepZipper!3126 lt!2550561 (h!74878 s!7408)))))

(assert (=> b!7078394 (= lt!2550561 (set.insert lt!2550560 (as set.empty (Set Context!13344))))))

(declare-fun b!7078395 () Bool)

(declare-fun res!2891298 () Bool)

(declare-fun e!4255536 () Bool)

(assert (=> b!7078395 (=> (not res!2891298) (not e!4255536))))

(assert (=> b!7078395 (= res!2891298 (is-Cons!68430 s!7408))))

(declare-fun b!7078396 () Bool)

(declare-fun res!2891309 () Bool)

(declare-fun e!4255531 () Bool)

(assert (=> b!7078396 (=> res!2891309 e!4255531)))

(assert (=> b!7078396 (= res!2891309 (not (is-Cons!68431 (exprs!7172 lt!2550560))))))

(declare-fun b!7078397 () Bool)

(declare-fun e!4255539 () Bool)

(assert (=> b!7078397 (= e!4255531 e!4255539)))

(declare-fun res!2891312 () Bool)

(assert (=> b!7078397 (=> res!2891312 e!4255539)))

(declare-fun nullable!7359 (Regex!17676) Bool)

(assert (=> b!7078397 (= res!2891312 (nullable!7359 (h!74879 (exprs!7172 lt!2550560))))))

(declare-fun lt!2550569 () Context!13344)

(declare-fun lt!2550556 () List!68555)

(assert (=> b!7078397 (= lt!2550569 (Context!13345 lt!2550556))))

(declare-fun tail!13879 (List!68555) List!68555)

(assert (=> b!7078397 (= lt!2550556 (tail!13879 (exprs!7172 lt!2550560)))))

(declare-fun b!7078398 () Bool)

(declare-fun res!2891307 () Bool)

(assert (=> b!7078398 (=> res!2891307 e!4255530)))

(declare-fun lt!2550567 () (Set Context!13344))

(declare-fun matchZipper!3216 ((Set Context!13344) List!68554) Bool)

(assert (=> b!7078398 (= res!2891307 (not (matchZipper!3216 lt!2550567 (_2!37458 lt!2550546))))))

(declare-fun b!7078399 () Bool)

(declare-fun e!4255538 () Bool)

(declare-fun tp_is_empty!44577 () Bool)

(declare-fun tp!1943161 () Bool)

(assert (=> b!7078399 (= e!4255538 (and tp_is_empty!44577 tp!1943161))))

(declare-fun b!7078400 () Bool)

(declare-fun e!4255528 () Bool)

(declare-fun tp!1943159 () Bool)

(assert (=> b!7078400 (= e!4255528 tp!1943159)))

(declare-fun setNonEmpty!50428 () Bool)

(declare-fun setElem!50428 () Context!13344)

(declare-fun tp!1943162 () Bool)

(declare-fun setRes!50428 () Bool)

(declare-fun inv!87050 (Context!13344) Bool)

(assert (=> setNonEmpty!50428 (= setRes!50428 (and tp!1943162 (inv!87050 setElem!50428) e!4255528))))

(declare-fun z1!570 () (Set Context!13344))

(declare-fun setRest!50428 () (Set Context!13344))

(assert (=> setNonEmpty!50428 (= z1!570 (set.union (set.insert setElem!50428 (as set.empty (Set Context!13344))) setRest!50428))))

(declare-fun b!7078401 () Bool)

(declare-fun e!4255535 () Bool)

(declare-fun tp!1943160 () Bool)

(assert (=> b!7078401 (= e!4255535 tp!1943160)))

(declare-fun e!4255534 () Bool)

(assert (=> b!7078402 (= e!4255536 (not e!4255534))))

(declare-fun res!2891303 () Bool)

(assert (=> b!7078402 (=> res!2891303 e!4255534)))

(declare-fun lt!2550552 () (Set Context!13344))

(assert (=> b!7078402 (= res!2891303 (not (matchZipper!3216 lt!2550552 s!7408)))))

(declare-fun lt!2550573 () Context!13344)

(assert (=> b!7078402 (= lt!2550552 (set.insert lt!2550573 (as set.empty (Set Context!13344))))))

(declare-fun lt!2550545 () (Set Context!13344))

(declare-fun getWitness!1796 ((Set Context!13344) Int) Context!13344)

(assert (=> b!7078402 (= lt!2550573 (getWitness!1796 lt!2550545 lambda!427200))))

(declare-datatypes ((List!68556 0))(
  ( (Nil!68432) (Cons!68432 (h!74880 Context!13344) (t!382341 List!68556)) )
))
(declare-fun lt!2550562 () List!68556)

(declare-fun exists!3747 (List!68556 Int) Bool)

(assert (=> b!7078402 (exists!3747 lt!2550562 lambda!427200)))

(declare-fun lt!2550570 () Unit!162063)

(declare-fun lemmaZipperMatchesExistsMatchingContext!597 (List!68556 List!68554) Unit!162063)

(assert (=> b!7078402 (= lt!2550570 (lemmaZipperMatchesExistsMatchingContext!597 lt!2550562 s!7408))))

(declare-fun toList!11017 ((Set Context!13344)) List!68556)

(assert (=> b!7078402 (= lt!2550562 (toList!11017 lt!2550545))))

(declare-fun b!7078403 () Bool)

(declare-fun res!2891305 () Bool)

(assert (=> b!7078403 (=> res!2891305 e!4255531)))

(declare-fun isEmpty!39945 (List!68555) Bool)

(assert (=> b!7078403 (= res!2891305 (isEmpty!39945 (exprs!7172 lt!2550560)))))

(declare-fun e!4255532 () Bool)

(assert (=> b!7078404 (= e!4255534 e!4255532)))

(declare-fun res!2891299 () Bool)

(assert (=> b!7078404 (=> res!2891299 e!4255532)))

(declare-fun lt!2550575 () Context!13344)

(assert (=> b!7078404 (= res!2891299 (or (not (= lt!2550575 lt!2550573)) (not (set.member lt!2550560 z1!570))))))

(declare-fun ct2!306 () Context!13344)

(declare-fun ++!15828 (List!68555 List!68555) List!68555)

(assert (=> b!7078404 (= lt!2550575 (Context!13345 (++!15828 (exprs!7172 lt!2550560) (exprs!7172 ct2!306))))))

(declare-fun lambda!427202 () Int)

(declare-fun lt!2550557 () Unit!162063)

(declare-fun lemmaConcatPreservesForall!987 (List!68555 List!68555 Int) Unit!162063)

(assert (=> b!7078404 (= lt!2550557 (lemmaConcatPreservesForall!987 (exprs!7172 lt!2550560) (exprs!7172 ct2!306) lambda!427202))))

(declare-fun lambda!427201 () Int)

(declare-fun mapPost2!505 ((Set Context!13344) Int Context!13344) Context!13344)

(assert (=> b!7078404 (= lt!2550560 (mapPost2!505 z1!570 lambda!427201 lt!2550573))))

(declare-fun b!7078405 () Bool)

(declare-fun e!4255527 () Bool)

(assert (=> b!7078405 (= e!4255537 e!4255527)))

(declare-fun res!2891301 () Bool)

(assert (=> b!7078405 (=> res!2891301 e!4255527)))

(assert (=> b!7078405 (= res!2891301 (not (matchZipper!3216 lt!2550561 lt!2550547)))))

(assert (=> b!7078405 (= lt!2550547 (Cons!68430 (h!74878 s!7408) (_1!37458 lt!2550546)))))

(declare-fun e!4255533 () Bool)

(assert (=> b!7078406 (= e!4255533 e!4255531)))

(declare-fun res!2891310 () Bool)

(assert (=> b!7078406 (=> res!2891310 e!4255531)))

(declare-fun lt!2550548 () (Set Context!13344))

(declare-fun lt!2550549 () (Set Context!13344))

(assert (=> b!7078406 (= res!2891310 (not (= (derivationStepZipper!3126 lt!2550548 (h!74878 s!7408)) lt!2550549)))))

(assert (=> b!7078406 (= (flatMap!2602 lt!2550548 lambda!427203) (derivationStepZipperUp!2260 lt!2550575 (h!74878 s!7408)))))

(declare-fun lt!2550565 () Unit!162063)

(assert (=> b!7078406 (= lt!2550565 (lemmaFlatMapOnSingletonSet!2111 lt!2550548 lt!2550575 lambda!427203))))

(assert (=> b!7078406 (= lt!2550549 (derivationStepZipperUp!2260 lt!2550575 (h!74878 s!7408)))))

(declare-fun lt!2550574 () Unit!162063)

(assert (=> b!7078406 (= lt!2550574 (lemmaConcatPreservesForall!987 (exprs!7172 lt!2550560) (exprs!7172 ct2!306) lambda!427202))))

(declare-fun res!2891306 () Bool)

(assert (=> start!688250 (=> (not res!2891306) (not e!4255536))))

(assert (=> start!688250 (= res!2891306 (matchZipper!3216 lt!2550545 s!7408))))

(declare-fun appendTo!797 ((Set Context!13344) Context!13344) (Set Context!13344))

(assert (=> start!688250 (= lt!2550545 (appendTo!797 z1!570 ct2!306))))

(assert (=> start!688250 e!4255536))

(declare-fun condSetEmpty!50428 () Bool)

(assert (=> start!688250 (= condSetEmpty!50428 (= z1!570 (as set.empty (Set Context!13344))))))

(assert (=> start!688250 setRes!50428))

(assert (=> start!688250 (and (inv!87050 ct2!306) e!4255535)))

(assert (=> start!688250 e!4255538))

(declare-fun b!7078407 () Bool)

(assert (=> b!7078407 (= e!4255532 e!4255533)))

(declare-fun res!2891300 () Bool)

(assert (=> b!7078407 (=> res!2891300 e!4255533)))

(assert (=> b!7078407 (= res!2891300 (not (= lt!2550548 lt!2550552)))))

(assert (=> b!7078407 (= lt!2550548 (set.insert lt!2550575 (as set.empty (Set Context!13344))))))

(declare-fun lt!2550543 () Unit!162063)

(assert (=> b!7078407 (= lt!2550543 (lemmaConcatPreservesForall!987 (exprs!7172 lt!2550560) (exprs!7172 ct2!306) lambda!427202))))

(declare-fun setIsEmpty!50428 () Bool)

(assert (=> setIsEmpty!50428 setRes!50428))

(declare-fun b!7078408 () Bool)

(declare-fun e!4255529 () Bool)

(assert (=> b!7078408 (= e!4255529 e!4255530)))

(declare-fun res!2891311 () Bool)

(assert (=> b!7078408 (=> res!2891311 e!4255530)))

(assert (=> b!7078408 (= res!2891311 (not (matchZipper!3216 lt!2550572 (_1!37458 lt!2550546))))))

(declare-datatypes ((Option!16987 0))(
  ( (None!16986) (Some!16986 (v!53280 tuple2!68310)) )
))
(declare-fun lt!2550558 () Option!16987)

(declare-fun get!23976 (Option!16987) tuple2!68310)

(assert (=> b!7078408 (= lt!2550546 (get!23976 lt!2550558))))

(declare-fun isDefined!13688 (Option!16987) Bool)

(assert (=> b!7078408 (isDefined!13688 lt!2550558)))

(declare-fun findConcatSeparationZippers!503 ((Set Context!13344) (Set Context!13344) List!68554 List!68554 List!68554) Option!16987)

(assert (=> b!7078408 (= lt!2550558 (findConcatSeparationZippers!503 lt!2550572 lt!2550567 Nil!68430 (t!382339 s!7408) (t!382339 s!7408)))))

(assert (=> b!7078408 (= lt!2550567 (set.insert ct2!306 (as set.empty (Set Context!13344))))))

(declare-fun lt!2550571 () Unit!162063)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!491 ((Set Context!13344) Context!13344 List!68554) Unit!162063)

(assert (=> b!7078408 (= lt!2550571 (lemmaConcatZipperMatchesStringThenFindConcatDefined!491 lt!2550572 ct2!306 (t!382339 s!7408)))))

(declare-fun lt!2550559 () (Set Context!13344))

(assert (=> b!7078408 (= lt!2550559 (appendTo!797 lt!2550572 ct2!306))))

(declare-fun derivationStepZipperDown!2310 (Regex!17676 Context!13344 C!35622) (Set Context!13344))

(assert (=> b!7078408 (= lt!2550572 (derivationStepZipperDown!2310 (h!74879 (exprs!7172 lt!2550560)) lt!2550569 (h!74878 s!7408)))))

(declare-fun lt!2550566 () Unit!162063)

(assert (=> b!7078408 (= lt!2550566 (lemmaConcatPreservesForall!987 lt!2550556 (exprs!7172 ct2!306) lambda!427202))))

(declare-fun lt!2550564 () Unit!162063)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!143 (Context!13344 Regex!17676 C!35622 Context!13344) Unit!162063)

(assert (=> b!7078408 (= lt!2550564 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!143 lt!2550569 (h!74879 (exprs!7172 lt!2550560)) (h!74878 s!7408) ct2!306))))

(assert (=> b!7078409 (= e!4255527 (matchZipper!3216 z1!570 lt!2550547))))

(declare-fun lt!2550551 () List!68556)

(declare-fun content!13848 (List!68556) (Set Context!13344))

(assert (=> b!7078409 (matchZipper!3216 (content!13848 lt!2550551) lt!2550547)))

(declare-fun lt!2550554 () Unit!162063)

(declare-fun lemmaExistsMatchingContextThenMatchingString!61 (List!68556 List!68554) Unit!162063)

(assert (=> b!7078409 (= lt!2550554 (lemmaExistsMatchingContextThenMatchingString!61 lt!2550551 lt!2550547))))

(assert (=> b!7078409 (= lt!2550551 (toList!11017 z1!570))))

(declare-fun exists!3748 ((Set Context!13344) Int) Bool)

(assert (=> b!7078409 (exists!3748 z1!570 lambda!427204)))

(declare-fun lt!2550563 () Unit!162063)

(declare-fun lemmaContainsThenExists!168 ((Set Context!13344) Context!13344 Int) Unit!162063)

(assert (=> b!7078409 (= lt!2550563 (lemmaContainsThenExists!168 z1!570 lt!2550560 lambda!427204))))

(assert (=> b!7078409 (isDefined!13688 (findConcatSeparationZippers!503 lt!2550561 lt!2550567 Nil!68430 s!7408 s!7408))))

(declare-fun lt!2550568 () Unit!162063)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!89 ((Set Context!13344) (Set Context!13344) List!68554 List!68554 List!68554 List!68554 List!68554) Unit!162063)

(assert (=> b!7078409 (= lt!2550568 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!89 lt!2550561 lt!2550567 lt!2550547 (_2!37458 lt!2550546) s!7408 Nil!68430 s!7408))))

(declare-fun b!7078410 () Bool)

(declare-fun res!2891308 () Bool)

(assert (=> b!7078410 (=> res!2891308 e!4255534)))

(assert (=> b!7078410 (= res!2891308 (not (set.member lt!2550573 lt!2550545)))))

(declare-fun b!7078411 () Bool)

(assert (=> b!7078411 (= e!4255539 e!4255529)))

(declare-fun res!2891302 () Bool)

(assert (=> b!7078411 (=> res!2891302 e!4255529)))

(assert (=> b!7078411 (= res!2891302 (not (matchZipper!3216 lt!2550559 (t!382339 s!7408))))))

(assert (=> b!7078411 (= lt!2550559 (derivationStepZipperDown!2310 (h!74879 (exprs!7172 lt!2550560)) (Context!13345 (++!15828 lt!2550556 (exprs!7172 ct2!306))) (h!74878 s!7408)))))

(declare-fun lt!2550550 () Unit!162063)

(assert (=> b!7078411 (= lt!2550550 (lemmaConcatPreservesForall!987 lt!2550556 (exprs!7172 ct2!306) lambda!427202))))

(assert (= (and start!688250 res!2891306) b!7078395))

(assert (= (and b!7078395 res!2891298) b!7078402))

(assert (= (and b!7078402 (not res!2891303)) b!7078410))

(assert (= (and b!7078410 (not res!2891308)) b!7078404))

(assert (= (and b!7078404 (not res!2891299)) b!7078407))

(assert (= (and b!7078407 (not res!2891300)) b!7078406))

(assert (= (and b!7078406 (not res!2891310)) b!7078396))

(assert (= (and b!7078396 (not res!2891309)) b!7078403))

(assert (= (and b!7078403 (not res!2891305)) b!7078397))

(assert (= (and b!7078397 (not res!2891312)) b!7078411))

(assert (= (and b!7078411 (not res!2891302)) b!7078408))

(assert (= (and b!7078408 (not res!2891311)) b!7078398))

(assert (= (and b!7078398 (not res!2891307)) b!7078393))

(assert (= (and b!7078393 (not res!2891304)) b!7078394))

(assert (= (and b!7078394 (not res!2891297)) b!7078405))

(assert (= (and b!7078405 (not res!2891301)) b!7078409))

(assert (= (and start!688250 condSetEmpty!50428) setIsEmpty!50428))

(assert (= (and start!688250 (not condSetEmpty!50428)) setNonEmpty!50428))

(assert (= setNonEmpty!50428 b!7078400))

(assert (= start!688250 b!7078401))

(assert (= (and start!688250 (is-Cons!68430 s!7408)) b!7078399))

(declare-fun m!7807596 () Bool)

(assert (=> b!7078408 m!7807596))

(declare-fun m!7807598 () Bool)

(assert (=> b!7078408 m!7807598))

(declare-fun m!7807600 () Bool)

(assert (=> b!7078408 m!7807600))

(declare-fun m!7807602 () Bool)

(assert (=> b!7078408 m!7807602))

(declare-fun m!7807604 () Bool)

(assert (=> b!7078408 m!7807604))

(declare-fun m!7807606 () Bool)

(assert (=> b!7078408 m!7807606))

(declare-fun m!7807608 () Bool)

(assert (=> b!7078408 m!7807608))

(declare-fun m!7807610 () Bool)

(assert (=> b!7078408 m!7807610))

(declare-fun m!7807612 () Bool)

(assert (=> b!7078408 m!7807612))

(declare-fun m!7807614 () Bool)

(assert (=> b!7078408 m!7807614))

(declare-fun m!7807616 () Bool)

(assert (=> b!7078398 m!7807616))

(declare-fun m!7807618 () Bool)

(assert (=> b!7078397 m!7807618))

(declare-fun m!7807620 () Bool)

(assert (=> b!7078397 m!7807620))

(declare-fun m!7807622 () Bool)

(assert (=> b!7078404 m!7807622))

(declare-fun m!7807624 () Bool)

(assert (=> b!7078404 m!7807624))

(declare-fun m!7807626 () Bool)

(assert (=> b!7078404 m!7807626))

(declare-fun m!7807628 () Bool)

(assert (=> b!7078404 m!7807628))

(declare-fun m!7807630 () Bool)

(assert (=> b!7078394 m!7807630))

(declare-fun m!7807632 () Bool)

(assert (=> b!7078394 m!7807632))

(declare-fun m!7807634 () Bool)

(assert (=> b!7078394 m!7807634))

(declare-fun m!7807636 () Bool)

(assert (=> b!7078394 m!7807636))

(declare-fun m!7807638 () Bool)

(assert (=> b!7078394 m!7807638))

(declare-fun m!7807640 () Bool)

(assert (=> b!7078410 m!7807640))

(declare-fun m!7807642 () Bool)

(assert (=> b!7078403 m!7807642))

(declare-fun m!7807644 () Bool)

(assert (=> b!7078411 m!7807644))

(declare-fun m!7807646 () Bool)

(assert (=> b!7078411 m!7807646))

(declare-fun m!7807648 () Bool)

(assert (=> b!7078411 m!7807648))

(assert (=> b!7078411 m!7807600))

(declare-fun m!7807650 () Bool)

(assert (=> b!7078406 m!7807650))

(declare-fun m!7807652 () Bool)

(assert (=> b!7078406 m!7807652))

(declare-fun m!7807654 () Bool)

(assert (=> b!7078406 m!7807654))

(assert (=> b!7078406 m!7807626))

(declare-fun m!7807656 () Bool)

(assert (=> b!7078406 m!7807656))

(declare-fun m!7807658 () Bool)

(assert (=> start!688250 m!7807658))

(declare-fun m!7807660 () Bool)

(assert (=> start!688250 m!7807660))

(declare-fun m!7807662 () Bool)

(assert (=> start!688250 m!7807662))

(declare-fun m!7807664 () Bool)

(assert (=> setNonEmpty!50428 m!7807664))

(declare-fun m!7807666 () Bool)

(assert (=> b!7078402 m!7807666))

(declare-fun m!7807668 () Bool)

(assert (=> b!7078402 m!7807668))

(declare-fun m!7807670 () Bool)

(assert (=> b!7078402 m!7807670))

(declare-fun m!7807672 () Bool)

(assert (=> b!7078402 m!7807672))

(declare-fun m!7807674 () Bool)

(assert (=> b!7078402 m!7807674))

(declare-fun m!7807676 () Bool)

(assert (=> b!7078402 m!7807676))

(declare-fun m!7807678 () Bool)

(assert (=> b!7078407 m!7807678))

(assert (=> b!7078407 m!7807626))

(declare-fun m!7807680 () Bool)

(assert (=> b!7078393 m!7807680))

(declare-fun m!7807682 () Bool)

(assert (=> b!7078409 m!7807682))

(declare-fun m!7807684 () Bool)

(assert (=> b!7078409 m!7807684))

(declare-fun m!7807686 () Bool)

(assert (=> b!7078409 m!7807686))

(declare-fun m!7807688 () Bool)

(assert (=> b!7078409 m!7807688))

(declare-fun m!7807690 () Bool)

(assert (=> b!7078409 m!7807690))

(declare-fun m!7807692 () Bool)

(assert (=> b!7078409 m!7807692))

(assert (=> b!7078409 m!7807692))

(declare-fun m!7807694 () Bool)

(assert (=> b!7078409 m!7807694))

(declare-fun m!7807696 () Bool)

(assert (=> b!7078409 m!7807696))

(declare-fun m!7807698 () Bool)

(assert (=> b!7078409 m!7807698))

(assert (=> b!7078409 m!7807690))

(declare-fun m!7807700 () Bool)

(assert (=> b!7078409 m!7807700))

(declare-fun m!7807702 () Bool)

(assert (=> b!7078405 m!7807702))

(push 1)

(assert (not b!7078403))

(assert (not setNonEmpty!50428))

(assert (not b!7078409))

(assert (not b!7078404))

(assert (not b!7078393))

(assert (not b!7078408))

(assert tp_is_empty!44577)

(assert (not b!7078406))

(assert (not b!7078394))

(assert (not b!7078407))

(assert (not b!7078405))

(assert (not b!7078398))

(assert (not b!7078411))

(assert (not b!7078399))

(assert (not b!7078402))

(assert (not b!7078400))

(assert (not b!7078397))

(assert (not b!7078401))

(assert (not start!688250))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7078489 () Bool)

(declare-fun e!4255583 () List!68554)

(assert (=> b!7078489 (= e!4255583 (_2!37458 lt!2550546))))

(declare-fun b!7078492 () Bool)

(declare-fun e!4255584 () Bool)

(declare-fun lt!2550679 () List!68554)

(assert (=> b!7078492 (= e!4255584 (or (not (= (_2!37458 lt!2550546) Nil!68430)) (= lt!2550679 (_1!37458 lt!2550546))))))

(declare-fun b!7078490 () Bool)

(assert (=> b!7078490 (= e!4255583 (Cons!68430 (h!74878 (_1!37458 lt!2550546)) (++!15827 (t!382339 (_1!37458 lt!2550546)) (_2!37458 lt!2550546))))))

(declare-fun b!7078491 () Bool)

(declare-fun res!2891366 () Bool)

(assert (=> b!7078491 (=> (not res!2891366) (not e!4255584))))

(declare-fun size!41244 (List!68554) Int)

(assert (=> b!7078491 (= res!2891366 (= (size!41244 lt!2550679) (+ (size!41244 (_1!37458 lt!2550546)) (size!41244 (_2!37458 lt!2550546)))))))

(declare-fun d!2213854 () Bool)

(assert (=> d!2213854 e!4255584))

(declare-fun res!2891367 () Bool)

(assert (=> d!2213854 (=> (not res!2891367) (not e!4255584))))

(declare-fun content!13850 (List!68554) (Set C!35622))

(assert (=> d!2213854 (= res!2891367 (= (content!13850 lt!2550679) (set.union (content!13850 (_1!37458 lt!2550546)) (content!13850 (_2!37458 lt!2550546)))))))

(assert (=> d!2213854 (= lt!2550679 e!4255583)))

(declare-fun c!1320897 () Bool)

(assert (=> d!2213854 (= c!1320897 (is-Nil!68430 (_1!37458 lt!2550546)))))

(assert (=> d!2213854 (= (++!15827 (_1!37458 lt!2550546) (_2!37458 lt!2550546)) lt!2550679)))

(assert (= (and d!2213854 c!1320897) b!7078489))

(assert (= (and d!2213854 (not c!1320897)) b!7078490))

(assert (= (and d!2213854 res!2891367) b!7078491))

(assert (= (and b!7078491 res!2891366) b!7078492))

(declare-fun m!7807812 () Bool)

(assert (=> b!7078490 m!7807812))

(declare-fun m!7807814 () Bool)

(assert (=> b!7078491 m!7807814))

(declare-fun m!7807816 () Bool)

(assert (=> b!7078491 m!7807816))

(declare-fun m!7807818 () Bool)

(assert (=> b!7078491 m!7807818))

(declare-fun m!7807820 () Bool)

(assert (=> d!2213854 m!7807820))

(declare-fun m!7807822 () Bool)

(assert (=> d!2213854 m!7807822))

(declare-fun m!7807824 () Bool)

(assert (=> d!2213854 m!7807824))

(assert (=> b!7078393 d!2213854))

(declare-fun d!2213856 () Bool)

(assert (=> d!2213856 (= (isEmpty!39945 (exprs!7172 lt!2550560)) (is-Nil!68431 (exprs!7172 lt!2550560)))))

(assert (=> b!7078403 d!2213856))

(declare-fun d!2213858 () Bool)

(declare-fun e!4255587 () Bool)

(assert (=> d!2213858 e!4255587))

(declare-fun res!2891370 () Bool)

(assert (=> d!2213858 (=> (not res!2891370) (not e!4255587))))

(declare-fun lt!2550682 () Context!13344)

(declare-fun dynLambda!27875 (Int Context!13344) Bool)

(assert (=> d!2213858 (= res!2891370 (dynLambda!27875 lambda!427200 lt!2550682))))

(declare-fun getWitness!1798 (List!68556 Int) Context!13344)

(assert (=> d!2213858 (= lt!2550682 (getWitness!1798 (toList!11017 lt!2550545) lambda!427200))))

(assert (=> d!2213858 (exists!3748 lt!2550545 lambda!427200)))

(assert (=> d!2213858 (= (getWitness!1796 lt!2550545 lambda!427200) lt!2550682)))

(declare-fun b!7078495 () Bool)

(assert (=> b!7078495 (= e!4255587 (set.member lt!2550682 lt!2550545))))

(assert (= (and d!2213858 res!2891370) b!7078495))

(declare-fun b_lambda!270409 () Bool)

(assert (=> (not b_lambda!270409) (not d!2213858)))

(declare-fun m!7807826 () Bool)

(assert (=> d!2213858 m!7807826))

(assert (=> d!2213858 m!7807668))

(assert (=> d!2213858 m!7807668))

(declare-fun m!7807828 () Bool)

(assert (=> d!2213858 m!7807828))

(declare-fun m!7807830 () Bool)

(assert (=> d!2213858 m!7807830))

(declare-fun m!7807832 () Bool)

(assert (=> b!7078495 m!7807832))

(assert (=> b!7078402 d!2213858))

(declare-fun d!2213860 () Bool)

(declare-fun c!1320900 () Bool)

(declare-fun isEmpty!39947 (List!68554) Bool)

(assert (=> d!2213860 (= c!1320900 (isEmpty!39947 s!7408))))

(declare-fun e!4255590 () Bool)

(assert (=> d!2213860 (= (matchZipper!3216 lt!2550552 s!7408) e!4255590)))

(declare-fun b!7078500 () Bool)

(declare-fun nullableZipper!2719 ((Set Context!13344)) Bool)

(assert (=> b!7078500 (= e!4255590 (nullableZipper!2719 lt!2550552))))

(declare-fun b!7078501 () Bool)

(declare-fun head!14428 (List!68554) C!35622)

(declare-fun tail!13881 (List!68554) List!68554)

(assert (=> b!7078501 (= e!4255590 (matchZipper!3216 (derivationStepZipper!3126 lt!2550552 (head!14428 s!7408)) (tail!13881 s!7408)))))

(assert (= (and d!2213860 c!1320900) b!7078500))

(assert (= (and d!2213860 (not c!1320900)) b!7078501))

(declare-fun m!7807834 () Bool)

(assert (=> d!2213860 m!7807834))

(declare-fun m!7807836 () Bool)

(assert (=> b!7078500 m!7807836))

(declare-fun m!7807838 () Bool)

(assert (=> b!7078501 m!7807838))

(assert (=> b!7078501 m!7807838))

(declare-fun m!7807840 () Bool)

(assert (=> b!7078501 m!7807840))

(declare-fun m!7807842 () Bool)

(assert (=> b!7078501 m!7807842))

(assert (=> b!7078501 m!7807840))

(assert (=> b!7078501 m!7807842))

(declare-fun m!7807844 () Bool)

(assert (=> b!7078501 m!7807844))

(assert (=> b!7078402 d!2213860))

(declare-fun bs!1881687 () Bool)

(declare-fun d!2213862 () Bool)

(assert (= bs!1881687 (and d!2213862 b!7078402)))

(declare-fun lambda!427236 () Int)

(assert (=> bs!1881687 (not (= lambda!427236 lambda!427200))))

(declare-fun bs!1881688 () Bool)

(assert (= bs!1881688 (and d!2213862 b!7078409)))

(assert (=> bs!1881688 (not (= lambda!427236 lambda!427204))))

(assert (=> d!2213862 true))

(declare-fun order!28451 () Int)

(declare-fun dynLambda!27876 (Int Int) Int)

(assert (=> d!2213862 (< (dynLambda!27876 order!28451 lambda!427200) (dynLambda!27876 order!28451 lambda!427236))))

(declare-fun forall!16636 (List!68556 Int) Bool)

(assert (=> d!2213862 (= (exists!3747 lt!2550562 lambda!427200) (not (forall!16636 lt!2550562 lambda!427236)))))

(declare-fun bs!1881689 () Bool)

(assert (= bs!1881689 d!2213862))

(declare-fun m!7807846 () Bool)

(assert (=> bs!1881689 m!7807846))

(assert (=> b!7078402 d!2213862))

(declare-fun bs!1881690 () Bool)

(declare-fun d!2213864 () Bool)

(assert (= bs!1881690 (and d!2213864 b!7078402)))

(declare-fun lambda!427239 () Int)

(assert (=> bs!1881690 (= lambda!427239 lambda!427200)))

(declare-fun bs!1881691 () Bool)

(assert (= bs!1881691 (and d!2213864 b!7078409)))

(assert (=> bs!1881691 (= (= s!7408 lt!2550547) (= lambda!427239 lambda!427204))))

(declare-fun bs!1881692 () Bool)

(assert (= bs!1881692 (and d!2213864 d!2213862)))

(assert (=> bs!1881692 (not (= lambda!427239 lambda!427236))))

(assert (=> d!2213864 true))

(assert (=> d!2213864 (exists!3747 lt!2550562 lambda!427239)))

(declare-fun lt!2550685 () Unit!162063)

(declare-fun choose!54379 (List!68556 List!68554) Unit!162063)

(assert (=> d!2213864 (= lt!2550685 (choose!54379 lt!2550562 s!7408))))

(assert (=> d!2213864 (matchZipper!3216 (content!13848 lt!2550562) s!7408)))

(assert (=> d!2213864 (= (lemmaZipperMatchesExistsMatchingContext!597 lt!2550562 s!7408) lt!2550685)))

(declare-fun bs!1881693 () Bool)

(assert (= bs!1881693 d!2213864))

(declare-fun m!7807848 () Bool)

(assert (=> bs!1881693 m!7807848))

(declare-fun m!7807850 () Bool)

(assert (=> bs!1881693 m!7807850))

(declare-fun m!7807852 () Bool)

(assert (=> bs!1881693 m!7807852))

(assert (=> bs!1881693 m!7807852))

(declare-fun m!7807854 () Bool)

(assert (=> bs!1881693 m!7807854))

(assert (=> b!7078402 d!2213864))

(declare-fun d!2213866 () Bool)

(declare-fun e!4255593 () Bool)

(assert (=> d!2213866 e!4255593))

(declare-fun res!2891374 () Bool)

(assert (=> d!2213866 (=> (not res!2891374) (not e!4255593))))

(declare-fun lt!2550688 () List!68556)

(declare-fun noDuplicate!2747 (List!68556) Bool)

(assert (=> d!2213866 (= res!2891374 (noDuplicate!2747 lt!2550688))))

(declare-fun choose!54380 ((Set Context!13344)) List!68556)

(assert (=> d!2213866 (= lt!2550688 (choose!54380 lt!2550545))))

(assert (=> d!2213866 (= (toList!11017 lt!2550545) lt!2550688)))

(declare-fun b!7078506 () Bool)

(assert (=> b!7078506 (= e!4255593 (= (content!13848 lt!2550688) lt!2550545))))

(assert (= (and d!2213866 res!2891374) b!7078506))

(declare-fun m!7807856 () Bool)

(assert (=> d!2213866 m!7807856))

(declare-fun m!7807858 () Bool)

(assert (=> d!2213866 m!7807858))

(declare-fun m!7807860 () Bool)

(assert (=> b!7078506 m!7807860))

(assert (=> b!7078402 d!2213866))

(declare-fun b!7078517 () Bool)

(declare-fun res!2891380 () Bool)

(declare-fun e!4255599 () Bool)

(assert (=> b!7078517 (=> (not res!2891380) (not e!4255599))))

(declare-fun lt!2550691 () List!68555)

(declare-fun size!41245 (List!68555) Int)

(assert (=> b!7078517 (= res!2891380 (= (size!41245 lt!2550691) (+ (size!41245 (exprs!7172 lt!2550560)) (size!41245 (exprs!7172 ct2!306)))))))

(declare-fun b!7078515 () Bool)

(declare-fun e!4255598 () List!68555)

(assert (=> b!7078515 (= e!4255598 (exprs!7172 ct2!306))))

(declare-fun d!2213868 () Bool)

(assert (=> d!2213868 e!4255599))

(declare-fun res!2891379 () Bool)

(assert (=> d!2213868 (=> (not res!2891379) (not e!4255599))))

(declare-fun content!13851 (List!68555) (Set Regex!17676))

(assert (=> d!2213868 (= res!2891379 (= (content!13851 lt!2550691) (set.union (content!13851 (exprs!7172 lt!2550560)) (content!13851 (exprs!7172 ct2!306)))))))

(assert (=> d!2213868 (= lt!2550691 e!4255598)))

(declare-fun c!1320905 () Bool)

(assert (=> d!2213868 (= c!1320905 (is-Nil!68431 (exprs!7172 lt!2550560)))))

(assert (=> d!2213868 (= (++!15828 (exprs!7172 lt!2550560) (exprs!7172 ct2!306)) lt!2550691)))

(declare-fun b!7078518 () Bool)

(assert (=> b!7078518 (= e!4255599 (or (not (= (exprs!7172 ct2!306) Nil!68431)) (= lt!2550691 (exprs!7172 lt!2550560))))))

(declare-fun b!7078516 () Bool)

(assert (=> b!7078516 (= e!4255598 (Cons!68431 (h!74879 (exprs!7172 lt!2550560)) (++!15828 (t!382340 (exprs!7172 lt!2550560)) (exprs!7172 ct2!306))))))

(assert (= (and d!2213868 c!1320905) b!7078515))

(assert (= (and d!2213868 (not c!1320905)) b!7078516))

(assert (= (and d!2213868 res!2891379) b!7078517))

(assert (= (and b!7078517 res!2891380) b!7078518))

(declare-fun m!7807862 () Bool)

(assert (=> b!7078517 m!7807862))

(declare-fun m!7807864 () Bool)

(assert (=> b!7078517 m!7807864))

(declare-fun m!7807866 () Bool)

(assert (=> b!7078517 m!7807866))

(declare-fun m!7807868 () Bool)

(assert (=> d!2213868 m!7807868))

(declare-fun m!7807870 () Bool)

(assert (=> d!2213868 m!7807870))

(declare-fun m!7807872 () Bool)

(assert (=> d!2213868 m!7807872))

(declare-fun m!7807874 () Bool)

(assert (=> b!7078516 m!7807874))

(assert (=> b!7078404 d!2213868))

(declare-fun d!2213870 () Bool)

(declare-fun forall!16637 (List!68555 Int) Bool)

(assert (=> d!2213870 (forall!16637 (++!15828 (exprs!7172 lt!2550560) (exprs!7172 ct2!306)) lambda!427202)))

(declare-fun lt!2550694 () Unit!162063)

(declare-fun choose!54381 (List!68555 List!68555 Int) Unit!162063)

(assert (=> d!2213870 (= lt!2550694 (choose!54381 (exprs!7172 lt!2550560) (exprs!7172 ct2!306) lambda!427202))))

(assert (=> d!2213870 (forall!16637 (exprs!7172 lt!2550560) lambda!427202)))

(assert (=> d!2213870 (= (lemmaConcatPreservesForall!987 (exprs!7172 lt!2550560) (exprs!7172 ct2!306) lambda!427202) lt!2550694)))

(declare-fun bs!1881694 () Bool)

(assert (= bs!1881694 d!2213870))

(assert (=> bs!1881694 m!7807624))

(assert (=> bs!1881694 m!7807624))

(declare-fun m!7807876 () Bool)

(assert (=> bs!1881694 m!7807876))

(declare-fun m!7807878 () Bool)

(assert (=> bs!1881694 m!7807878))

(declare-fun m!7807880 () Bool)

(assert (=> bs!1881694 m!7807880))

(assert (=> b!7078404 d!2213870))

(declare-fun d!2213872 () Bool)

(declare-fun e!4255602 () Bool)

(assert (=> d!2213872 e!4255602))

(declare-fun res!2891383 () Bool)

(assert (=> d!2213872 (=> (not res!2891383) (not e!4255602))))

(declare-fun lt!2550697 () Context!13344)

(declare-fun dynLambda!27877 (Int Context!13344) Context!13344)

(assert (=> d!2213872 (= res!2891383 (= lt!2550573 (dynLambda!27877 lambda!427201 lt!2550697)))))

(declare-fun choose!54382 ((Set Context!13344) Int Context!13344) Context!13344)

(assert (=> d!2213872 (= lt!2550697 (choose!54382 z1!570 lambda!427201 lt!2550573))))

(declare-fun map!16026 ((Set Context!13344) Int) (Set Context!13344))

(assert (=> d!2213872 (set.member lt!2550573 (map!16026 z1!570 lambda!427201))))

(assert (=> d!2213872 (= (mapPost2!505 z1!570 lambda!427201 lt!2550573) lt!2550697)))

(declare-fun b!7078522 () Bool)

(assert (=> b!7078522 (= e!4255602 (set.member lt!2550697 z1!570))))

(assert (= (and d!2213872 res!2891383) b!7078522))

(declare-fun b_lambda!270411 () Bool)

(assert (=> (not b_lambda!270411) (not d!2213872)))

(declare-fun m!7807882 () Bool)

(assert (=> d!2213872 m!7807882))

(declare-fun m!7807884 () Bool)

(assert (=> d!2213872 m!7807884))

(declare-fun m!7807886 () Bool)

(assert (=> d!2213872 m!7807886))

(declare-fun m!7807888 () Bool)

(assert (=> d!2213872 m!7807888))

(declare-fun m!7807890 () Bool)

(assert (=> b!7078522 m!7807890))

(assert (=> b!7078404 d!2213872))

(declare-fun d!2213874 () Bool)

(declare-fun choose!54383 ((Set Context!13344) Int) (Set Context!13344))

(assert (=> d!2213874 (= (flatMap!2602 lt!2550561 lambda!427203) (choose!54383 lt!2550561 lambda!427203))))

(declare-fun bs!1881695 () Bool)

(assert (= bs!1881695 d!2213874))

(declare-fun m!7807892 () Bool)

(assert (=> bs!1881695 m!7807892))

(assert (=> b!7078394 d!2213874))

(declare-fun e!4255610 () (Set Context!13344))

(declare-fun call!643368 () (Set Context!13344))

(declare-fun b!7078534 () Bool)

(assert (=> b!7078534 (= e!4255610 (set.union call!643368 (derivationStepZipperUp!2260 (Context!13345 (t!382340 (exprs!7172 lt!2550560))) (h!74878 s!7408))))))

(declare-fun b!7078535 () Bool)

(declare-fun e!4255611 () (Set Context!13344))

(assert (=> b!7078535 (= e!4255611 (as set.empty (Set Context!13344)))))

(declare-fun b!7078536 () Bool)

(assert (=> b!7078536 (= e!4255611 call!643368)))

(declare-fun bm!643363 () Bool)

(assert (=> bm!643363 (= call!643368 (derivationStepZipperDown!2310 (h!74879 (exprs!7172 lt!2550560)) (Context!13345 (t!382340 (exprs!7172 lt!2550560))) (h!74878 s!7408)))))

(declare-fun b!7078537 () Bool)

(assert (=> b!7078537 (= e!4255610 e!4255611)))

(declare-fun c!1320910 () Bool)

(assert (=> b!7078537 (= c!1320910 (is-Cons!68431 (exprs!7172 lt!2550560)))))

(declare-fun d!2213876 () Bool)

(declare-fun c!1320911 () Bool)

(declare-fun e!4255609 () Bool)

(assert (=> d!2213876 (= c!1320911 e!4255609)))

(declare-fun res!2891386 () Bool)

(assert (=> d!2213876 (=> (not res!2891386) (not e!4255609))))

(assert (=> d!2213876 (= res!2891386 (is-Cons!68431 (exprs!7172 lt!2550560)))))

(assert (=> d!2213876 (= (derivationStepZipperUp!2260 lt!2550560 (h!74878 s!7408)) e!4255610)))

(declare-fun b!7078533 () Bool)

(assert (=> b!7078533 (= e!4255609 (nullable!7359 (h!74879 (exprs!7172 lt!2550560))))))

(assert (= (and d!2213876 res!2891386) b!7078533))

(assert (= (and d!2213876 c!1320911) b!7078534))

(assert (= (and d!2213876 (not c!1320911)) b!7078537))

(assert (= (and b!7078537 c!1320910) b!7078536))

(assert (= (and b!7078537 (not c!1320910)) b!7078535))

(assert (= (or b!7078534 b!7078536) bm!643363))

(declare-fun m!7807894 () Bool)

(assert (=> b!7078534 m!7807894))

(declare-fun m!7807896 () Bool)

(assert (=> bm!643363 m!7807896))

(assert (=> b!7078533 m!7807618))

(assert (=> b!7078394 d!2213876))

(declare-fun d!2213878 () Bool)

(declare-fun dynLambda!27878 (Int Context!13344) (Set Context!13344))

(assert (=> d!2213878 (= (flatMap!2602 lt!2550561 lambda!427203) (dynLambda!27878 lambda!427203 lt!2550560))))

(declare-fun lt!2550700 () Unit!162063)

(declare-fun choose!54384 ((Set Context!13344) Context!13344 Int) Unit!162063)

(assert (=> d!2213878 (= lt!2550700 (choose!54384 lt!2550561 lt!2550560 lambda!427203))))

(assert (=> d!2213878 (= lt!2550561 (set.insert lt!2550560 (as set.empty (Set Context!13344))))))

(assert (=> d!2213878 (= (lemmaFlatMapOnSingletonSet!2111 lt!2550561 lt!2550560 lambda!427203) lt!2550700)))

(declare-fun b_lambda!270413 () Bool)

(assert (=> (not b_lambda!270413) (not d!2213878)))

(declare-fun bs!1881696 () Bool)

(assert (= bs!1881696 d!2213878))

(assert (=> bs!1881696 m!7807630))

(declare-fun m!7807898 () Bool)

(assert (=> bs!1881696 m!7807898))

(declare-fun m!7807900 () Bool)

(assert (=> bs!1881696 m!7807900))

(assert (=> bs!1881696 m!7807634))

(assert (=> b!7078394 d!2213878))

(declare-fun bs!1881697 () Bool)

(declare-fun d!2213880 () Bool)

(assert (= bs!1881697 (and d!2213880 b!7078406)))

(declare-fun lambda!427242 () Int)

(assert (=> bs!1881697 (= lambda!427242 lambda!427203)))

(assert (=> d!2213880 true))

(assert (=> d!2213880 (= (derivationStepZipper!3126 lt!2550561 (h!74878 s!7408)) (flatMap!2602 lt!2550561 lambda!427242))))

(declare-fun bs!1881698 () Bool)

(assert (= bs!1881698 d!2213880))

(declare-fun m!7807902 () Bool)

(assert (=> bs!1881698 m!7807902))

(assert (=> b!7078394 d!2213880))

(declare-fun d!2213882 () Bool)

(declare-fun c!1320914 () Bool)

(assert (=> d!2213882 (= c!1320914 (isEmpty!39947 lt!2550547))))

(declare-fun e!4255612 () Bool)

(assert (=> d!2213882 (= (matchZipper!3216 lt!2550561 lt!2550547) e!4255612)))

(declare-fun b!7078540 () Bool)

(assert (=> b!7078540 (= e!4255612 (nullableZipper!2719 lt!2550561))))

(declare-fun b!7078541 () Bool)

(assert (=> b!7078541 (= e!4255612 (matchZipper!3216 (derivationStepZipper!3126 lt!2550561 (head!14428 lt!2550547)) (tail!13881 lt!2550547)))))

(assert (= (and d!2213882 c!1320914) b!7078540))

(assert (= (and d!2213882 (not c!1320914)) b!7078541))

(declare-fun m!7807904 () Bool)

(assert (=> d!2213882 m!7807904))

(declare-fun m!7807906 () Bool)

(assert (=> b!7078540 m!7807906))

(declare-fun m!7807908 () Bool)

(assert (=> b!7078541 m!7807908))

(assert (=> b!7078541 m!7807908))

(declare-fun m!7807910 () Bool)

(assert (=> b!7078541 m!7807910))

(declare-fun m!7807912 () Bool)

(assert (=> b!7078541 m!7807912))

(assert (=> b!7078541 m!7807910))

(assert (=> b!7078541 m!7807912))

(declare-fun m!7807914 () Bool)

(assert (=> b!7078541 m!7807914))

(assert (=> b!7078405 d!2213882))

(declare-fun d!2213884 () Bool)

(declare-fun nullableFct!2831 (Regex!17676) Bool)

(assert (=> d!2213884 (= (nullable!7359 (h!74879 (exprs!7172 lt!2550560))) (nullableFct!2831 (h!74879 (exprs!7172 lt!2550560))))))

(declare-fun bs!1881699 () Bool)

(assert (= bs!1881699 d!2213884))

(declare-fun m!7807916 () Bool)

(assert (=> bs!1881699 m!7807916))

(assert (=> b!7078397 d!2213884))

(declare-fun d!2213886 () Bool)

(assert (=> d!2213886 (= (tail!13879 (exprs!7172 lt!2550560)) (t!382340 (exprs!7172 lt!2550560)))))

(assert (=> b!7078397 d!2213886))

(assert (=> b!7078407 d!2213870))

(declare-fun b!7078543 () Bool)

(declare-fun e!4255614 () (Set Context!13344))

(declare-fun call!643369 () (Set Context!13344))

(assert (=> b!7078543 (= e!4255614 (set.union call!643369 (derivationStepZipperUp!2260 (Context!13345 (t!382340 (exprs!7172 lt!2550575))) (h!74878 s!7408))))))

(declare-fun b!7078544 () Bool)

(declare-fun e!4255615 () (Set Context!13344))

(assert (=> b!7078544 (= e!4255615 (as set.empty (Set Context!13344)))))

(declare-fun b!7078545 () Bool)

(assert (=> b!7078545 (= e!4255615 call!643369)))

(declare-fun bm!643364 () Bool)

(assert (=> bm!643364 (= call!643369 (derivationStepZipperDown!2310 (h!74879 (exprs!7172 lt!2550575)) (Context!13345 (t!382340 (exprs!7172 lt!2550575))) (h!74878 s!7408)))))

(declare-fun b!7078546 () Bool)

(assert (=> b!7078546 (= e!4255614 e!4255615)))

(declare-fun c!1320915 () Bool)

(assert (=> b!7078546 (= c!1320915 (is-Cons!68431 (exprs!7172 lt!2550575)))))

(declare-fun d!2213888 () Bool)

(declare-fun c!1320916 () Bool)

(declare-fun e!4255613 () Bool)

(assert (=> d!2213888 (= c!1320916 e!4255613)))

(declare-fun res!2891387 () Bool)

(assert (=> d!2213888 (=> (not res!2891387) (not e!4255613))))

(assert (=> d!2213888 (= res!2891387 (is-Cons!68431 (exprs!7172 lt!2550575)))))

(assert (=> d!2213888 (= (derivationStepZipperUp!2260 lt!2550575 (h!74878 s!7408)) e!4255614)))

(declare-fun b!7078542 () Bool)

(assert (=> b!7078542 (= e!4255613 (nullable!7359 (h!74879 (exprs!7172 lt!2550575))))))

(assert (= (and d!2213888 res!2891387) b!7078542))

(assert (= (and d!2213888 c!1320916) b!7078543))

(assert (= (and d!2213888 (not c!1320916)) b!7078546))

(assert (= (and b!7078546 c!1320915) b!7078545))

(assert (= (and b!7078546 (not c!1320915)) b!7078544))

(assert (= (or b!7078543 b!7078545) bm!643364))

(declare-fun m!7807918 () Bool)

(assert (=> b!7078543 m!7807918))

(declare-fun m!7807920 () Bool)

(assert (=> bm!643364 m!7807920))

(declare-fun m!7807922 () Bool)

(assert (=> b!7078542 m!7807922))

(assert (=> b!7078406 d!2213888))

(declare-fun d!2213890 () Bool)

(assert (=> d!2213890 (= (flatMap!2602 lt!2550548 lambda!427203) (dynLambda!27878 lambda!427203 lt!2550575))))

(declare-fun lt!2550701 () Unit!162063)

(assert (=> d!2213890 (= lt!2550701 (choose!54384 lt!2550548 lt!2550575 lambda!427203))))

(assert (=> d!2213890 (= lt!2550548 (set.insert lt!2550575 (as set.empty (Set Context!13344))))))

(assert (=> d!2213890 (= (lemmaFlatMapOnSingletonSet!2111 lt!2550548 lt!2550575 lambda!427203) lt!2550701)))

(declare-fun b_lambda!270415 () Bool)

(assert (=> (not b_lambda!270415) (not d!2213890)))

(declare-fun bs!1881700 () Bool)

(assert (= bs!1881700 d!2213890))

(assert (=> bs!1881700 m!7807656))

(declare-fun m!7807924 () Bool)

(assert (=> bs!1881700 m!7807924))

(declare-fun m!7807926 () Bool)

(assert (=> bs!1881700 m!7807926))

(assert (=> bs!1881700 m!7807678))

(assert (=> b!7078406 d!2213890))

(declare-fun bs!1881701 () Bool)

(declare-fun d!2213892 () Bool)

(assert (= bs!1881701 (and d!2213892 b!7078406)))

(declare-fun lambda!427243 () Int)

(assert (=> bs!1881701 (= lambda!427243 lambda!427203)))

(declare-fun bs!1881702 () Bool)

(assert (= bs!1881702 (and d!2213892 d!2213880)))

(assert (=> bs!1881702 (= lambda!427243 lambda!427242)))

(assert (=> d!2213892 true))

(assert (=> d!2213892 (= (derivationStepZipper!3126 lt!2550548 (h!74878 s!7408)) (flatMap!2602 lt!2550548 lambda!427243))))

(declare-fun bs!1881703 () Bool)

(assert (= bs!1881703 d!2213892))

(declare-fun m!7807928 () Bool)

(assert (=> bs!1881703 m!7807928))

(assert (=> b!7078406 d!2213892))

(assert (=> b!7078406 d!2213870))

(declare-fun d!2213894 () Bool)

(assert (=> d!2213894 (= (flatMap!2602 lt!2550548 lambda!427203) (choose!54383 lt!2550548 lambda!427203))))

(declare-fun bs!1881704 () Bool)

(assert (= bs!1881704 d!2213894))

(declare-fun m!7807930 () Bool)

(assert (=> bs!1881704 m!7807930))

(assert (=> b!7078406 d!2213894))

(declare-fun d!2213896 () Bool)

(declare-fun c!1320917 () Bool)

(assert (=> d!2213896 (= c!1320917 (isEmpty!39947 (_2!37458 lt!2550546)))))

(declare-fun e!4255616 () Bool)

(assert (=> d!2213896 (= (matchZipper!3216 lt!2550567 (_2!37458 lt!2550546)) e!4255616)))

(declare-fun b!7078547 () Bool)

(assert (=> b!7078547 (= e!4255616 (nullableZipper!2719 lt!2550567))))

(declare-fun b!7078548 () Bool)

(assert (=> b!7078548 (= e!4255616 (matchZipper!3216 (derivationStepZipper!3126 lt!2550567 (head!14428 (_2!37458 lt!2550546))) (tail!13881 (_2!37458 lt!2550546))))))

(assert (= (and d!2213896 c!1320917) b!7078547))

(assert (= (and d!2213896 (not c!1320917)) b!7078548))

(declare-fun m!7807932 () Bool)

(assert (=> d!2213896 m!7807932))

(declare-fun m!7807934 () Bool)

(assert (=> b!7078547 m!7807934))

(declare-fun m!7807936 () Bool)

(assert (=> b!7078548 m!7807936))

(assert (=> b!7078548 m!7807936))

(declare-fun m!7807938 () Bool)

(assert (=> b!7078548 m!7807938))

(declare-fun m!7807940 () Bool)

(assert (=> b!7078548 m!7807940))

(assert (=> b!7078548 m!7807938))

(assert (=> b!7078548 m!7807940))

(declare-fun m!7807942 () Bool)

(assert (=> b!7078548 m!7807942))

(assert (=> b!7078398 d!2213896))

(declare-fun bs!1881705 () Bool)

(declare-fun d!2213898 () Bool)

(assert (= bs!1881705 (and d!2213898 b!7078404)))

(declare-fun lambda!427246 () Int)

(assert (=> bs!1881705 (= lambda!427246 lambda!427202)))

(assert (=> d!2213898 (= (derivationStepZipperDown!2310 (h!74879 (exprs!7172 lt!2550560)) (Context!13345 (++!15828 (exprs!7172 lt!2550569) (exprs!7172 ct2!306))) (h!74878 s!7408)) (appendTo!797 (derivationStepZipperDown!2310 (h!74879 (exprs!7172 lt!2550560)) lt!2550569 (h!74878 s!7408)) ct2!306))))

(declare-fun lt!2550707 () Unit!162063)

(assert (=> d!2213898 (= lt!2550707 (lemmaConcatPreservesForall!987 (exprs!7172 lt!2550569) (exprs!7172 ct2!306) lambda!427246))))

(declare-fun lt!2550706 () Unit!162063)

(declare-fun choose!54385 (Context!13344 Regex!17676 C!35622 Context!13344) Unit!162063)

(assert (=> d!2213898 (= lt!2550706 (choose!54385 lt!2550569 (h!74879 (exprs!7172 lt!2550560)) (h!74878 s!7408) ct2!306))))

(declare-fun validRegex!8987 (Regex!17676) Bool)

(assert (=> d!2213898 (validRegex!8987 (h!74879 (exprs!7172 lt!2550560)))))

(assert (=> d!2213898 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!143 lt!2550569 (h!74879 (exprs!7172 lt!2550560)) (h!74878 s!7408) ct2!306) lt!2550706)))

(declare-fun bs!1881706 () Bool)

(assert (= bs!1881706 d!2213898))

(assert (=> bs!1881706 m!7807596))

(declare-fun m!7807944 () Bool)

(assert (=> bs!1881706 m!7807944))

(declare-fun m!7807946 () Bool)

(assert (=> bs!1881706 m!7807946))

(declare-fun m!7807948 () Bool)

(assert (=> bs!1881706 m!7807948))

(declare-fun m!7807950 () Bool)

(assert (=> bs!1881706 m!7807950))

(assert (=> bs!1881706 m!7807596))

(declare-fun m!7807952 () Bool)

(assert (=> bs!1881706 m!7807952))

(declare-fun m!7807954 () Bool)

(assert (=> bs!1881706 m!7807954))

(assert (=> b!7078408 d!2213898))

(declare-fun d!2213900 () Bool)

(declare-fun c!1320919 () Bool)

(assert (=> d!2213900 (= c!1320919 (isEmpty!39947 (_1!37458 lt!2550546)))))

(declare-fun e!4255617 () Bool)

(assert (=> d!2213900 (= (matchZipper!3216 lt!2550572 (_1!37458 lt!2550546)) e!4255617)))

(declare-fun b!7078549 () Bool)

(assert (=> b!7078549 (= e!4255617 (nullableZipper!2719 lt!2550572))))

(declare-fun b!7078550 () Bool)

(assert (=> b!7078550 (= e!4255617 (matchZipper!3216 (derivationStepZipper!3126 lt!2550572 (head!14428 (_1!37458 lt!2550546))) (tail!13881 (_1!37458 lt!2550546))))))

(assert (= (and d!2213900 c!1320919) b!7078549))

(assert (= (and d!2213900 (not c!1320919)) b!7078550))

(declare-fun m!7807956 () Bool)

(assert (=> d!2213900 m!7807956))

(declare-fun m!7807958 () Bool)

(assert (=> b!7078549 m!7807958))

(declare-fun m!7807960 () Bool)

(assert (=> b!7078550 m!7807960))

(assert (=> b!7078550 m!7807960))

(declare-fun m!7807962 () Bool)

(assert (=> b!7078550 m!7807962))

(declare-fun m!7807964 () Bool)

(assert (=> b!7078550 m!7807964))

(assert (=> b!7078550 m!7807962))

(assert (=> b!7078550 m!7807964))

(declare-fun m!7807966 () Bool)

(assert (=> b!7078550 m!7807966))

(assert (=> b!7078408 d!2213900))

(declare-fun d!2213902 () Bool)

(assert (=> d!2213902 (forall!16637 (++!15828 lt!2550556 (exprs!7172 ct2!306)) lambda!427202)))

(declare-fun lt!2550708 () Unit!162063)

(assert (=> d!2213902 (= lt!2550708 (choose!54381 lt!2550556 (exprs!7172 ct2!306) lambda!427202))))

(assert (=> d!2213902 (forall!16637 lt!2550556 lambda!427202)))

(assert (=> d!2213902 (= (lemmaConcatPreservesForall!987 lt!2550556 (exprs!7172 ct2!306) lambda!427202) lt!2550708)))

(declare-fun bs!1881707 () Bool)

(assert (= bs!1881707 d!2213902))

(assert (=> bs!1881707 m!7807646))

(assert (=> bs!1881707 m!7807646))

(declare-fun m!7807968 () Bool)

(assert (=> bs!1881707 m!7807968))

(declare-fun m!7807970 () Bool)

(assert (=> bs!1881707 m!7807970))

(declare-fun m!7807972 () Bool)

(assert (=> bs!1881707 m!7807972))

(assert (=> b!7078408 d!2213902))

(declare-fun d!2213904 () Bool)

(assert (=> d!2213904 (isDefined!13688 (findConcatSeparationZippers!503 lt!2550572 (set.insert ct2!306 (as set.empty (Set Context!13344))) Nil!68430 (t!382339 s!7408) (t!382339 s!7408)))))

(declare-fun lt!2550711 () Unit!162063)

(declare-fun choose!54386 ((Set Context!13344) Context!13344 List!68554) Unit!162063)

(assert (=> d!2213904 (= lt!2550711 (choose!54386 lt!2550572 ct2!306 (t!382339 s!7408)))))

(assert (=> d!2213904 (matchZipper!3216 (appendTo!797 lt!2550572 ct2!306) (t!382339 s!7408))))

(assert (=> d!2213904 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!491 lt!2550572 ct2!306 (t!382339 s!7408)) lt!2550711)))

(declare-fun bs!1881708 () Bool)

(assert (= bs!1881708 d!2213904))

(assert (=> bs!1881708 m!7807612))

(declare-fun m!7807974 () Bool)

(assert (=> bs!1881708 m!7807974))

(assert (=> bs!1881708 m!7807612))

(declare-fun m!7807976 () Bool)

(assert (=> bs!1881708 m!7807976))

(assert (=> bs!1881708 m!7807608))

(declare-fun m!7807978 () Bool)

(assert (=> bs!1881708 m!7807978))

(assert (=> bs!1881708 m!7807608))

(assert (=> bs!1881708 m!7807978))

(declare-fun m!7807980 () Bool)

(assert (=> bs!1881708 m!7807980))

(assert (=> b!7078408 d!2213904))

(declare-fun bm!643377 () Bool)

(declare-fun call!643387 () (Set Context!13344))

(declare-fun call!643384 () (Set Context!13344))

(assert (=> bm!643377 (= call!643387 call!643384)))

(declare-fun bm!643378 () Bool)

(declare-fun call!643382 () List!68555)

(declare-fun call!643386 () List!68555)

(assert (=> bm!643378 (= call!643382 call!643386)))

(declare-fun bm!643379 () Bool)

(declare-fun c!1320935 () Bool)

(declare-fun c!1320936 () Bool)

(declare-fun c!1320933 () Bool)

(declare-fun call!643383 () (Set Context!13344))

(assert (=> bm!643379 (= call!643383 (derivationStepZipperDown!2310 (ite c!1320933 (regOne!35865 (h!74879 (exprs!7172 lt!2550560))) (ite c!1320936 (regTwo!35864 (h!74879 (exprs!7172 lt!2550560))) (ite c!1320935 (regOne!35864 (h!74879 (exprs!7172 lt!2550560))) (reg!18005 (h!74879 (exprs!7172 lt!2550560)))))) (ite (or c!1320933 c!1320936) lt!2550569 (Context!13345 call!643382)) (h!74878 s!7408)))))

(declare-fun b!7078581 () Bool)

(declare-fun e!4255636 () (Set Context!13344))

(assert (=> b!7078581 (= e!4255636 call!643387)))

(declare-fun b!7078582 () Bool)

(declare-fun e!4255639 () (Set Context!13344))

(declare-fun e!4255638 () (Set Context!13344))

(assert (=> b!7078582 (= e!4255639 e!4255638)))

(assert (=> b!7078582 (= c!1320933 (is-Union!17676 (h!74879 (exprs!7172 lt!2550560))))))

(declare-fun bm!643380 () Bool)

(assert (=> bm!643380 (= call!643384 call!643383)))

(declare-fun b!7078583 () Bool)

(declare-fun e!4255637 () Bool)

(assert (=> b!7078583 (= e!4255637 (nullable!7359 (regOne!35864 (h!74879 (exprs!7172 lt!2550560)))))))

(declare-fun b!7078584 () Bool)

(declare-fun c!1320934 () Bool)

(assert (=> b!7078584 (= c!1320934 (is-Star!17676 (h!74879 (exprs!7172 lt!2550560))))))

(declare-fun e!4255634 () (Set Context!13344))

(assert (=> b!7078584 (= e!4255636 e!4255634)))

(declare-fun b!7078585 () Bool)

(assert (=> b!7078585 (= e!4255639 (set.insert lt!2550569 (as set.empty (Set Context!13344))))))

(declare-fun bm!643381 () Bool)

(declare-fun call!643385 () (Set Context!13344))

(assert (=> bm!643381 (= call!643385 (derivationStepZipperDown!2310 (ite c!1320933 (regTwo!35865 (h!74879 (exprs!7172 lt!2550560))) (regOne!35864 (h!74879 (exprs!7172 lt!2550560)))) (ite c!1320933 lt!2550569 (Context!13345 call!643386)) (h!74878 s!7408)))))

(declare-fun b!7078586 () Bool)

(assert (=> b!7078586 (= e!4255638 (set.union call!643383 call!643385))))

(declare-fun b!7078587 () Bool)

(assert (=> b!7078587 (= c!1320936 e!4255637)))

(declare-fun res!2891394 () Bool)

(assert (=> b!7078587 (=> (not res!2891394) (not e!4255637))))

(assert (=> b!7078587 (= res!2891394 (is-Concat!26521 (h!74879 (exprs!7172 lt!2550560))))))

(declare-fun e!4255635 () (Set Context!13344))

(assert (=> b!7078587 (= e!4255638 e!4255635)))

(declare-fun b!7078588 () Bool)

(assert (=> b!7078588 (= e!4255634 call!643387)))

(declare-fun b!7078589 () Bool)

(assert (=> b!7078589 (= e!4255635 e!4255636)))

(assert (=> b!7078589 (= c!1320935 (is-Concat!26521 (h!74879 (exprs!7172 lt!2550560))))))

(declare-fun b!7078590 () Bool)

(assert (=> b!7078590 (= e!4255634 (as set.empty (Set Context!13344)))))

(declare-fun d!2213906 () Bool)

(declare-fun c!1320932 () Bool)

(assert (=> d!2213906 (= c!1320932 (and (is-ElementMatch!17676 (h!74879 (exprs!7172 lt!2550560))) (= (c!1320881 (h!74879 (exprs!7172 lt!2550560))) (h!74878 s!7408))))))

(assert (=> d!2213906 (= (derivationStepZipperDown!2310 (h!74879 (exprs!7172 lt!2550560)) lt!2550569 (h!74878 s!7408)) e!4255639)))

(declare-fun bm!643382 () Bool)

(declare-fun $colon$colon!2676 (List!68555 Regex!17676) List!68555)

(assert (=> bm!643382 (= call!643386 ($colon$colon!2676 (exprs!7172 lt!2550569) (ite (or c!1320936 c!1320935) (regTwo!35864 (h!74879 (exprs!7172 lt!2550560))) (h!74879 (exprs!7172 lt!2550560)))))))

(declare-fun b!7078591 () Bool)

(assert (=> b!7078591 (= e!4255635 (set.union call!643385 call!643384))))

(assert (= (and d!2213906 c!1320932) b!7078585))

(assert (= (and d!2213906 (not c!1320932)) b!7078582))

(assert (= (and b!7078582 c!1320933) b!7078586))

(assert (= (and b!7078582 (not c!1320933)) b!7078587))

(assert (= (and b!7078587 res!2891394) b!7078583))

(assert (= (and b!7078587 c!1320936) b!7078591))

(assert (= (and b!7078587 (not c!1320936)) b!7078589))

(assert (= (and b!7078589 c!1320935) b!7078581))

(assert (= (and b!7078589 (not c!1320935)) b!7078584))

(assert (= (and b!7078584 c!1320934) b!7078588))

(assert (= (and b!7078584 (not c!1320934)) b!7078590))

(assert (= (or b!7078581 b!7078588) bm!643378))

(assert (= (or b!7078581 b!7078588) bm!643377))

(assert (= (or b!7078591 bm!643377) bm!643380))

(assert (= (or b!7078591 bm!643378) bm!643382))

(assert (= (or b!7078586 bm!643380) bm!643379))

(assert (= (or b!7078586 b!7078591) bm!643381))

(declare-fun m!7807982 () Bool)

(assert (=> bm!643382 m!7807982))

(declare-fun m!7807984 () Bool)

(assert (=> b!7078585 m!7807984))

(declare-fun m!7807986 () Bool)

(assert (=> b!7078583 m!7807986))

(declare-fun m!7807988 () Bool)

(assert (=> bm!643379 m!7807988))

(declare-fun m!7807990 () Bool)

(assert (=> bm!643381 m!7807990))

(assert (=> b!7078408 d!2213906))

(declare-fun bs!1881709 () Bool)

(declare-fun d!2213910 () Bool)

(assert (= bs!1881709 (and d!2213910 b!7078404)))

(declare-fun lambda!427251 () Int)

(assert (=> bs!1881709 (= lambda!427251 lambda!427201)))

(assert (=> d!2213910 true))

(assert (=> d!2213910 (= (appendTo!797 lt!2550572 ct2!306) (map!16026 lt!2550572 lambda!427251))))

(declare-fun bs!1881710 () Bool)

(assert (= bs!1881710 d!2213910))

(declare-fun m!7808006 () Bool)

(assert (=> bs!1881710 m!7808006))

(assert (=> b!7078408 d!2213910))

(declare-fun d!2213914 () Bool)

(declare-fun e!4255656 () Bool)

(assert (=> d!2213914 e!4255656))

(declare-fun res!2891411 () Bool)

(assert (=> d!2213914 (=> res!2891411 e!4255656)))

(declare-fun e!4255655 () Bool)

(assert (=> d!2213914 (= res!2891411 e!4255655)))

(declare-fun res!2891412 () Bool)

(assert (=> d!2213914 (=> (not res!2891412) (not e!4255655))))

(declare-fun lt!2550730 () Option!16987)

(assert (=> d!2213914 (= res!2891412 (isDefined!13688 lt!2550730))))

(declare-fun e!4255657 () Option!16987)

(assert (=> d!2213914 (= lt!2550730 e!4255657)))

(declare-fun c!1320943 () Bool)

(declare-fun e!4255658 () Bool)

(assert (=> d!2213914 (= c!1320943 e!4255658)))

(declare-fun res!2891410 () Bool)

(assert (=> d!2213914 (=> (not res!2891410) (not e!4255658))))

(assert (=> d!2213914 (= res!2891410 (matchZipper!3216 lt!2550572 Nil!68430))))

(assert (=> d!2213914 (= (++!15827 Nil!68430 (t!382339 s!7408)) (t!382339 s!7408))))

(assert (=> d!2213914 (= (findConcatSeparationZippers!503 lt!2550572 lt!2550567 Nil!68430 (t!382339 s!7408) (t!382339 s!7408)) lt!2550730)))

(declare-fun b!7078618 () Bool)

(assert (=> b!7078618 (= e!4255657 (Some!16986 (tuple2!68311 Nil!68430 (t!382339 s!7408))))))

(declare-fun b!7078619 () Bool)

(declare-fun lt!2550729 () Unit!162063)

(declare-fun lt!2550731 () Unit!162063)

(assert (=> b!7078619 (= lt!2550729 lt!2550731)))

(assert (=> b!7078619 (= (++!15827 (++!15827 Nil!68430 (Cons!68430 (h!74878 (t!382339 s!7408)) Nil!68430)) (t!382339 (t!382339 s!7408))) (t!382339 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2988 (List!68554 C!35622 List!68554 List!68554) Unit!162063)

(assert (=> b!7078619 (= lt!2550731 (lemmaMoveElementToOtherListKeepsConcatEq!2988 Nil!68430 (h!74878 (t!382339 s!7408)) (t!382339 (t!382339 s!7408)) (t!382339 s!7408)))))

(declare-fun e!4255659 () Option!16987)

(assert (=> b!7078619 (= e!4255659 (findConcatSeparationZippers!503 lt!2550572 lt!2550567 (++!15827 Nil!68430 (Cons!68430 (h!74878 (t!382339 s!7408)) Nil!68430)) (t!382339 (t!382339 s!7408)) (t!382339 s!7408)))))

(declare-fun b!7078620 () Bool)

(assert (=> b!7078620 (= e!4255659 None!16986)))

(declare-fun b!7078621 () Bool)

(declare-fun res!2891414 () Bool)

(assert (=> b!7078621 (=> (not res!2891414) (not e!4255655))))

(assert (=> b!7078621 (= res!2891414 (matchZipper!3216 lt!2550572 (_1!37458 (get!23976 lt!2550730))))))

(declare-fun b!7078622 () Bool)

(assert (=> b!7078622 (= e!4255656 (not (isDefined!13688 lt!2550730)))))

(declare-fun b!7078623 () Bool)

(assert (=> b!7078623 (= e!4255658 (matchZipper!3216 lt!2550567 (t!382339 s!7408)))))

(declare-fun b!7078624 () Bool)

(declare-fun res!2891413 () Bool)

(assert (=> b!7078624 (=> (not res!2891413) (not e!4255655))))

(assert (=> b!7078624 (= res!2891413 (matchZipper!3216 lt!2550567 (_2!37458 (get!23976 lt!2550730))))))

(declare-fun b!7078625 () Bool)

(assert (=> b!7078625 (= e!4255655 (= (++!15827 (_1!37458 (get!23976 lt!2550730)) (_2!37458 (get!23976 lt!2550730))) (t!382339 s!7408)))))

(declare-fun b!7078626 () Bool)

(assert (=> b!7078626 (= e!4255657 e!4255659)))

(declare-fun c!1320944 () Bool)

(assert (=> b!7078626 (= c!1320944 (is-Nil!68430 (t!382339 s!7408)))))

(assert (= (and d!2213914 res!2891410) b!7078623))

(assert (= (and d!2213914 c!1320943) b!7078618))

(assert (= (and d!2213914 (not c!1320943)) b!7078626))

(assert (= (and b!7078626 c!1320944) b!7078620))

(assert (= (and b!7078626 (not c!1320944)) b!7078619))

(assert (= (and d!2213914 res!2891412) b!7078621))

(assert (= (and b!7078621 res!2891414) b!7078624))

(assert (= (and b!7078624 res!2891413) b!7078625))

(assert (= (and d!2213914 (not res!2891411)) b!7078622))

(declare-fun m!7808026 () Bool)

(assert (=> b!7078623 m!7808026))

(declare-fun m!7808028 () Bool)

(assert (=> b!7078622 m!7808028))

(assert (=> d!2213914 m!7808028))

(declare-fun m!7808030 () Bool)

(assert (=> d!2213914 m!7808030))

(declare-fun m!7808032 () Bool)

(assert (=> d!2213914 m!7808032))

(declare-fun m!7808034 () Bool)

(assert (=> b!7078624 m!7808034))

(declare-fun m!7808036 () Bool)

(assert (=> b!7078624 m!7808036))

(assert (=> b!7078625 m!7808034))

(declare-fun m!7808038 () Bool)

(assert (=> b!7078625 m!7808038))

(assert (=> b!7078621 m!7808034))

(declare-fun m!7808040 () Bool)

(assert (=> b!7078621 m!7808040))

(declare-fun m!7808042 () Bool)

(assert (=> b!7078619 m!7808042))

(assert (=> b!7078619 m!7808042))

(declare-fun m!7808044 () Bool)

(assert (=> b!7078619 m!7808044))

(declare-fun m!7808046 () Bool)

(assert (=> b!7078619 m!7808046))

(assert (=> b!7078619 m!7808042))

(declare-fun m!7808048 () Bool)

(assert (=> b!7078619 m!7808048))

(assert (=> b!7078408 d!2213914))

(declare-fun d!2213922 () Bool)

(assert (=> d!2213922 (= (get!23976 lt!2550558) (v!53280 lt!2550558))))

(assert (=> b!7078408 d!2213922))

(declare-fun d!2213924 () Bool)

(declare-fun isEmpty!39948 (Option!16987) Bool)

(assert (=> d!2213924 (= (isDefined!13688 lt!2550558) (not (isEmpty!39948 lt!2550558)))))

(declare-fun bs!1881713 () Bool)

(assert (= bs!1881713 d!2213924))

(declare-fun m!7808050 () Bool)

(assert (=> bs!1881713 m!7808050))

(assert (=> b!7078408 d!2213924))

(declare-fun bs!1881714 () Bool)

(declare-fun d!2213926 () Bool)

(assert (= bs!1881714 (and d!2213926 b!7078404)))

(declare-fun lambda!427254 () Int)

(assert (=> bs!1881714 (= lambda!427254 lambda!427202)))

(declare-fun bs!1881715 () Bool)

(assert (= bs!1881715 (and d!2213926 d!2213898)))

(assert (=> bs!1881715 (= lambda!427254 lambda!427246)))

(assert (=> d!2213926 (= (inv!87050 setElem!50428) (forall!16637 (exprs!7172 setElem!50428) lambda!427254))))

(declare-fun bs!1881716 () Bool)

(assert (= bs!1881716 d!2213926))

(declare-fun m!7808052 () Bool)

(assert (=> bs!1881716 m!7808052))

(assert (=> setNonEmpty!50428 d!2213926))

(declare-fun d!2213928 () Bool)

(declare-fun c!1320949 () Bool)

(assert (=> d!2213928 (= c!1320949 (isEmpty!39947 s!7408))))

(declare-fun e!4255666 () Bool)

(assert (=> d!2213928 (= (matchZipper!3216 lt!2550545 s!7408) e!4255666)))

(declare-fun b!7078637 () Bool)

(assert (=> b!7078637 (= e!4255666 (nullableZipper!2719 lt!2550545))))

(declare-fun b!7078638 () Bool)

(assert (=> b!7078638 (= e!4255666 (matchZipper!3216 (derivationStepZipper!3126 lt!2550545 (head!14428 s!7408)) (tail!13881 s!7408)))))

(assert (= (and d!2213928 c!1320949) b!7078637))

(assert (= (and d!2213928 (not c!1320949)) b!7078638))

(assert (=> d!2213928 m!7807834))

(declare-fun m!7808054 () Bool)

(assert (=> b!7078637 m!7808054))

(assert (=> b!7078638 m!7807838))

(assert (=> b!7078638 m!7807838))

(declare-fun m!7808056 () Bool)

(assert (=> b!7078638 m!7808056))

(assert (=> b!7078638 m!7807842))

(assert (=> b!7078638 m!7808056))

(assert (=> b!7078638 m!7807842))

(declare-fun m!7808058 () Bool)

(assert (=> b!7078638 m!7808058))

(assert (=> start!688250 d!2213928))

(declare-fun bs!1881717 () Bool)

(declare-fun d!2213930 () Bool)

(assert (= bs!1881717 (and d!2213930 b!7078404)))

(declare-fun lambda!427255 () Int)

(assert (=> bs!1881717 (= lambda!427255 lambda!427201)))

(declare-fun bs!1881718 () Bool)

(assert (= bs!1881718 (and d!2213930 d!2213910)))

(assert (=> bs!1881718 (= lambda!427255 lambda!427251)))

(assert (=> d!2213930 true))

(assert (=> d!2213930 (= (appendTo!797 z1!570 ct2!306) (map!16026 z1!570 lambda!427255))))

(declare-fun bs!1881719 () Bool)

(assert (= bs!1881719 d!2213930))

(declare-fun m!7808060 () Bool)

(assert (=> bs!1881719 m!7808060))

(assert (=> start!688250 d!2213930))

(declare-fun bs!1881720 () Bool)

(declare-fun d!2213932 () Bool)

(assert (= bs!1881720 (and d!2213932 b!7078404)))

(declare-fun lambda!427256 () Int)

(assert (=> bs!1881720 (= lambda!427256 lambda!427202)))

(declare-fun bs!1881721 () Bool)

(assert (= bs!1881721 (and d!2213932 d!2213898)))

(assert (=> bs!1881721 (= lambda!427256 lambda!427246)))

(declare-fun bs!1881722 () Bool)

(assert (= bs!1881722 (and d!2213932 d!2213926)))

(assert (=> bs!1881722 (= lambda!427256 lambda!427254)))

(assert (=> d!2213932 (= (inv!87050 ct2!306) (forall!16637 (exprs!7172 ct2!306) lambda!427256))))

(declare-fun bs!1881723 () Bool)

(assert (= bs!1881723 d!2213932))

(declare-fun m!7808062 () Bool)

(assert (=> bs!1881723 m!7808062))

(assert (=> start!688250 d!2213932))

(declare-fun d!2213934 () Bool)

(declare-fun lt!2550734 () Bool)

(assert (=> d!2213934 (= lt!2550734 (exists!3747 (toList!11017 z1!570) lambda!427204))))

(declare-fun choose!54387 ((Set Context!13344) Int) Bool)

(assert (=> d!2213934 (= lt!2550734 (choose!54387 z1!570 lambda!427204))))

(assert (=> d!2213934 (= (exists!3748 z1!570 lambda!427204) lt!2550734)))

(declare-fun bs!1881724 () Bool)

(assert (= bs!1881724 d!2213934))

(assert (=> bs!1881724 m!7807684))

(assert (=> bs!1881724 m!7807684))

(declare-fun m!7808068 () Bool)

(assert (=> bs!1881724 m!7808068))

(declare-fun m!7808070 () Bool)

(assert (=> bs!1881724 m!7808070))

(assert (=> b!7078409 d!2213934))

(declare-fun d!2213938 () Bool)

(declare-fun e!4255670 () Bool)

(assert (=> d!2213938 e!4255670))

(declare-fun res!2891418 () Bool)

(assert (=> d!2213938 (=> (not res!2891418) (not e!4255670))))

(declare-fun lt!2550735 () List!68556)

(assert (=> d!2213938 (= res!2891418 (noDuplicate!2747 lt!2550735))))

(assert (=> d!2213938 (= lt!2550735 (choose!54380 z1!570))))

(assert (=> d!2213938 (= (toList!11017 z1!570) lt!2550735)))

(declare-fun b!7078644 () Bool)

(assert (=> b!7078644 (= e!4255670 (= (content!13848 lt!2550735) z1!570))))

(assert (= (and d!2213938 res!2891418) b!7078644))

(declare-fun m!7808072 () Bool)

(assert (=> d!2213938 m!7808072))

(declare-fun m!7808074 () Bool)

(assert (=> d!2213938 m!7808074))

(declare-fun m!7808076 () Bool)

(assert (=> b!7078644 m!7808076))

(assert (=> b!7078409 d!2213938))

(declare-fun d!2213940 () Bool)

(assert (=> d!2213940 (exists!3748 z1!570 lambda!427204)))

(declare-fun lt!2550738 () Unit!162063)

(declare-fun choose!54388 ((Set Context!13344) Context!13344 Int) Unit!162063)

(assert (=> d!2213940 (= lt!2550738 (choose!54388 z1!570 lt!2550560 lambda!427204))))

(assert (=> d!2213940 (set.member lt!2550560 z1!570)))

(assert (=> d!2213940 (= (lemmaContainsThenExists!168 z1!570 lt!2550560 lambda!427204) lt!2550738)))

(declare-fun bs!1881725 () Bool)

(assert (= bs!1881725 d!2213940))

(assert (=> bs!1881725 m!7807696))

(declare-fun m!7808078 () Bool)

(assert (=> bs!1881725 m!7808078))

(assert (=> bs!1881725 m!7807622))

(assert (=> b!7078409 d!2213940))

(declare-fun d!2213942 () Bool)

(declare-fun c!1320952 () Bool)

(assert (=> d!2213942 (= c!1320952 (isEmpty!39947 lt!2550547))))

(declare-fun e!4255672 () Bool)

(assert (=> d!2213942 (= (matchZipper!3216 (content!13848 lt!2550551) lt!2550547) e!4255672)))

(declare-fun b!7078645 () Bool)

(assert (=> b!7078645 (= e!4255672 (nullableZipper!2719 (content!13848 lt!2550551)))))

(declare-fun b!7078646 () Bool)

(assert (=> b!7078646 (= e!4255672 (matchZipper!3216 (derivationStepZipper!3126 (content!13848 lt!2550551) (head!14428 lt!2550547)) (tail!13881 lt!2550547)))))

(assert (= (and d!2213942 c!1320952) b!7078645))

(assert (= (and d!2213942 (not c!1320952)) b!7078646))

(assert (=> d!2213942 m!7807904))

(assert (=> b!7078645 m!7807690))

(declare-fun m!7808080 () Bool)

(assert (=> b!7078645 m!7808080))

(assert (=> b!7078646 m!7807908))

(assert (=> b!7078646 m!7807690))

(assert (=> b!7078646 m!7807908))

(declare-fun m!7808082 () Bool)

(assert (=> b!7078646 m!7808082))

(assert (=> b!7078646 m!7807912))

(assert (=> b!7078646 m!7808082))

(assert (=> b!7078646 m!7807912))

(declare-fun m!7808084 () Bool)

(assert (=> b!7078646 m!7808084))

(assert (=> b!7078409 d!2213942))

(declare-fun d!2213944 () Bool)

(assert (=> d!2213944 (= (isDefined!13688 (findConcatSeparationZippers!503 lt!2550561 lt!2550567 Nil!68430 s!7408 s!7408)) (not (isEmpty!39948 (findConcatSeparationZippers!503 lt!2550561 lt!2550567 Nil!68430 s!7408 s!7408))))))

(declare-fun bs!1881726 () Bool)

(assert (= bs!1881726 d!2213944))

(assert (=> bs!1881726 m!7807692))

(declare-fun m!7808086 () Bool)

(assert (=> bs!1881726 m!7808086))

(assert (=> b!7078409 d!2213944))

(declare-fun d!2213946 () Bool)

(assert (=> d!2213946 (isDefined!13688 (findConcatSeparationZippers!503 lt!2550561 lt!2550567 Nil!68430 s!7408 s!7408))))

(declare-fun lt!2550744 () Unit!162063)

(declare-fun choose!54389 ((Set Context!13344) (Set Context!13344) List!68554 List!68554 List!68554 List!68554 List!68554) Unit!162063)

(assert (=> d!2213946 (= lt!2550744 (choose!54389 lt!2550561 lt!2550567 lt!2550547 (_2!37458 lt!2550546) s!7408 Nil!68430 s!7408))))

(assert (=> d!2213946 (matchZipper!3216 lt!2550561 lt!2550547)))

(assert (=> d!2213946 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!89 lt!2550561 lt!2550567 lt!2550547 (_2!37458 lt!2550546) s!7408 Nil!68430 s!7408) lt!2550744)))

(declare-fun bs!1881728 () Bool)

(assert (= bs!1881728 d!2213946))

(assert (=> bs!1881728 m!7807692))

(assert (=> bs!1881728 m!7807692))

(assert (=> bs!1881728 m!7807694))

(declare-fun m!7808092 () Bool)

(assert (=> bs!1881728 m!7808092))

(assert (=> bs!1881728 m!7807702))

(assert (=> b!7078409 d!2213946))

(declare-fun d!2213950 () Bool)

(declare-fun e!4255674 () Bool)

(assert (=> d!2213950 e!4255674))

(declare-fun res!2891420 () Bool)

(assert (=> d!2213950 (=> res!2891420 e!4255674)))

(declare-fun e!4255673 () Bool)

(assert (=> d!2213950 (= res!2891420 e!4255673)))

(declare-fun res!2891421 () Bool)

(assert (=> d!2213950 (=> (not res!2891421) (not e!4255673))))

(declare-fun lt!2550746 () Option!16987)

(assert (=> d!2213950 (= res!2891421 (isDefined!13688 lt!2550746))))

(declare-fun e!4255675 () Option!16987)

(assert (=> d!2213950 (= lt!2550746 e!4255675)))

(declare-fun c!1320955 () Bool)

(declare-fun e!4255676 () Bool)

(assert (=> d!2213950 (= c!1320955 e!4255676)))

(declare-fun res!2891419 () Bool)

(assert (=> d!2213950 (=> (not res!2891419) (not e!4255676))))

(assert (=> d!2213950 (= res!2891419 (matchZipper!3216 lt!2550561 Nil!68430))))

(assert (=> d!2213950 (= (++!15827 Nil!68430 s!7408) s!7408)))

(assert (=> d!2213950 (= (findConcatSeparationZippers!503 lt!2550561 lt!2550567 Nil!68430 s!7408 s!7408) lt!2550746)))

(declare-fun b!7078647 () Bool)

(assert (=> b!7078647 (= e!4255675 (Some!16986 (tuple2!68311 Nil!68430 s!7408)))))

(declare-fun b!7078648 () Bool)

(declare-fun lt!2550745 () Unit!162063)

(declare-fun lt!2550747 () Unit!162063)

(assert (=> b!7078648 (= lt!2550745 lt!2550747)))

(assert (=> b!7078648 (= (++!15827 (++!15827 Nil!68430 (Cons!68430 (h!74878 s!7408) Nil!68430)) (t!382339 s!7408)) s!7408)))

(assert (=> b!7078648 (= lt!2550747 (lemmaMoveElementToOtherListKeepsConcatEq!2988 Nil!68430 (h!74878 s!7408) (t!382339 s!7408) s!7408))))

(declare-fun e!4255677 () Option!16987)

(assert (=> b!7078648 (= e!4255677 (findConcatSeparationZippers!503 lt!2550561 lt!2550567 (++!15827 Nil!68430 (Cons!68430 (h!74878 s!7408) Nil!68430)) (t!382339 s!7408) s!7408))))

(declare-fun b!7078649 () Bool)

(assert (=> b!7078649 (= e!4255677 None!16986)))

(declare-fun b!7078650 () Bool)

(declare-fun res!2891423 () Bool)

(assert (=> b!7078650 (=> (not res!2891423) (not e!4255673))))

(assert (=> b!7078650 (= res!2891423 (matchZipper!3216 lt!2550561 (_1!37458 (get!23976 lt!2550746))))))

(declare-fun b!7078651 () Bool)

(assert (=> b!7078651 (= e!4255674 (not (isDefined!13688 lt!2550746)))))

(declare-fun b!7078652 () Bool)

(assert (=> b!7078652 (= e!4255676 (matchZipper!3216 lt!2550567 s!7408))))

(declare-fun b!7078653 () Bool)

(declare-fun res!2891422 () Bool)

(assert (=> b!7078653 (=> (not res!2891422) (not e!4255673))))

(assert (=> b!7078653 (= res!2891422 (matchZipper!3216 lt!2550567 (_2!37458 (get!23976 lt!2550746))))))

(declare-fun b!7078654 () Bool)

(assert (=> b!7078654 (= e!4255673 (= (++!15827 (_1!37458 (get!23976 lt!2550746)) (_2!37458 (get!23976 lt!2550746))) s!7408))))

(declare-fun b!7078655 () Bool)

(assert (=> b!7078655 (= e!4255675 e!4255677)))

(declare-fun c!1320956 () Bool)

(assert (=> b!7078655 (= c!1320956 (is-Nil!68430 s!7408))))

(assert (= (and d!2213950 res!2891419) b!7078652))

(assert (= (and d!2213950 c!1320955) b!7078647))

(assert (= (and d!2213950 (not c!1320955)) b!7078655))

(assert (= (and b!7078655 c!1320956) b!7078649))

(assert (= (and b!7078655 (not c!1320956)) b!7078648))

(assert (= (and d!2213950 res!2891421) b!7078650))

(assert (= (and b!7078650 res!2891423) b!7078653))

(assert (= (and b!7078653 res!2891422) b!7078654))

(assert (= (and d!2213950 (not res!2891420)) b!7078651))

(declare-fun m!7808094 () Bool)

(assert (=> b!7078652 m!7808094))

(declare-fun m!7808096 () Bool)

(assert (=> b!7078651 m!7808096))

(assert (=> d!2213950 m!7808096))

(declare-fun m!7808098 () Bool)

(assert (=> d!2213950 m!7808098))

(declare-fun m!7808100 () Bool)

(assert (=> d!2213950 m!7808100))

(declare-fun m!7808102 () Bool)

(assert (=> b!7078653 m!7808102))

(declare-fun m!7808104 () Bool)

(assert (=> b!7078653 m!7808104))

(assert (=> b!7078654 m!7808102))

(declare-fun m!7808108 () Bool)

(assert (=> b!7078654 m!7808108))

(assert (=> b!7078650 m!7808102))

(declare-fun m!7808110 () Bool)

(assert (=> b!7078650 m!7808110))

(declare-fun m!7808112 () Bool)

(assert (=> b!7078648 m!7808112))

(assert (=> b!7078648 m!7808112))

(declare-fun m!7808114 () Bool)

(assert (=> b!7078648 m!7808114))

(declare-fun m!7808116 () Bool)

(assert (=> b!7078648 m!7808116))

(assert (=> b!7078648 m!7808112))

(declare-fun m!7808118 () Bool)

(assert (=> b!7078648 m!7808118))

(assert (=> b!7078409 d!2213950))

(declare-fun bs!1881731 () Bool)

(declare-fun d!2213954 () Bool)

(assert (= bs!1881731 (and d!2213954 b!7078402)))

(declare-fun lambda!427262 () Int)

(assert (=> bs!1881731 (= (= lt!2550547 s!7408) (= lambda!427262 lambda!427200))))

(declare-fun bs!1881732 () Bool)

(assert (= bs!1881732 (and d!2213954 b!7078409)))

(assert (=> bs!1881732 (= lambda!427262 lambda!427204)))

(declare-fun bs!1881733 () Bool)

(assert (= bs!1881733 (and d!2213954 d!2213862)))

(assert (=> bs!1881733 (not (= lambda!427262 lambda!427236))))

(declare-fun bs!1881734 () Bool)

(assert (= bs!1881734 (and d!2213954 d!2213864)))

(assert (=> bs!1881734 (= (= lt!2550547 s!7408) (= lambda!427262 lambda!427239))))

(assert (=> d!2213954 true))

(assert (=> d!2213954 (matchZipper!3216 (content!13848 lt!2550551) lt!2550547)))

(declare-fun lt!2550750 () Unit!162063)

(declare-fun choose!54392 (List!68556 List!68554) Unit!162063)

(assert (=> d!2213954 (= lt!2550750 (choose!54392 lt!2550551 lt!2550547))))

(assert (=> d!2213954 (exists!3747 lt!2550551 lambda!427262)))

(assert (=> d!2213954 (= (lemmaExistsMatchingContextThenMatchingString!61 lt!2550551 lt!2550547) lt!2550750)))

(declare-fun bs!1881735 () Bool)

(assert (= bs!1881735 d!2213954))

(assert (=> bs!1881735 m!7807690))

(assert (=> bs!1881735 m!7807690))

(assert (=> bs!1881735 m!7807700))

(declare-fun m!7808120 () Bool)

(assert (=> bs!1881735 m!7808120))

(declare-fun m!7808122 () Bool)

(assert (=> bs!1881735 m!7808122))

(assert (=> b!7078409 d!2213954))

(declare-fun d!2213956 () Bool)

(declare-fun c!1320960 () Bool)

(assert (=> d!2213956 (= c!1320960 (isEmpty!39947 lt!2550547))))

(declare-fun e!4255678 () Bool)

(assert (=> d!2213956 (= (matchZipper!3216 z1!570 lt!2550547) e!4255678)))

(declare-fun b!7078658 () Bool)

(assert (=> b!7078658 (= e!4255678 (nullableZipper!2719 z1!570))))

(declare-fun b!7078659 () Bool)

(assert (=> b!7078659 (= e!4255678 (matchZipper!3216 (derivationStepZipper!3126 z1!570 (head!14428 lt!2550547)) (tail!13881 lt!2550547)))))

(assert (= (and d!2213956 c!1320960) b!7078658))

(assert (= (and d!2213956 (not c!1320960)) b!7078659))

(assert (=> d!2213956 m!7807904))

(declare-fun m!7808124 () Bool)

(assert (=> b!7078658 m!7808124))

(assert (=> b!7078659 m!7807908))

(assert (=> b!7078659 m!7807908))

(declare-fun m!7808126 () Bool)

(assert (=> b!7078659 m!7808126))

(assert (=> b!7078659 m!7807912))

(assert (=> b!7078659 m!7808126))

(assert (=> b!7078659 m!7807912))

(declare-fun m!7808128 () Bool)

(assert (=> b!7078659 m!7808128))

(assert (=> b!7078409 d!2213956))

(declare-fun d!2213958 () Bool)

(declare-fun c!1320963 () Bool)

(assert (=> d!2213958 (= c!1320963 (is-Nil!68432 lt!2550551))))

(declare-fun e!4255681 () (Set Context!13344))

(assert (=> d!2213958 (= (content!13848 lt!2550551) e!4255681)))

(declare-fun b!7078664 () Bool)

(assert (=> b!7078664 (= e!4255681 (as set.empty (Set Context!13344)))))

(declare-fun b!7078665 () Bool)

(assert (=> b!7078665 (= e!4255681 (set.union (set.insert (h!74880 lt!2550551) (as set.empty (Set Context!13344))) (content!13848 (t!382341 lt!2550551))))))

(assert (= (and d!2213958 c!1320963) b!7078664))

(assert (= (and d!2213958 (not c!1320963)) b!7078665))

(declare-fun m!7808130 () Bool)

(assert (=> b!7078665 m!7808130))

(declare-fun m!7808132 () Bool)

(assert (=> b!7078665 m!7808132))

(assert (=> b!7078409 d!2213958))

(declare-fun d!2213960 () Bool)

(declare-fun c!1320964 () Bool)

(assert (=> d!2213960 (= c!1320964 (isEmpty!39947 (t!382339 s!7408)))))

(declare-fun e!4255682 () Bool)

(assert (=> d!2213960 (= (matchZipper!3216 lt!2550559 (t!382339 s!7408)) e!4255682)))

(declare-fun b!7078666 () Bool)

(assert (=> b!7078666 (= e!4255682 (nullableZipper!2719 lt!2550559))))

(declare-fun b!7078667 () Bool)

(assert (=> b!7078667 (= e!4255682 (matchZipper!3216 (derivationStepZipper!3126 lt!2550559 (head!14428 (t!382339 s!7408))) (tail!13881 (t!382339 s!7408))))))

(assert (= (and d!2213960 c!1320964) b!7078666))

(assert (= (and d!2213960 (not c!1320964)) b!7078667))

(declare-fun m!7808134 () Bool)

(assert (=> d!2213960 m!7808134))

(declare-fun m!7808136 () Bool)

(assert (=> b!7078666 m!7808136))

(declare-fun m!7808138 () Bool)

(assert (=> b!7078667 m!7808138))

(assert (=> b!7078667 m!7808138))

(declare-fun m!7808140 () Bool)

(assert (=> b!7078667 m!7808140))

(declare-fun m!7808142 () Bool)

(assert (=> b!7078667 m!7808142))

(assert (=> b!7078667 m!7808140))

(assert (=> b!7078667 m!7808142))

(declare-fun m!7808144 () Bool)

(assert (=> b!7078667 m!7808144))

(assert (=> b!7078411 d!2213960))

(declare-fun bm!643386 () Bool)

(declare-fun call!643396 () (Set Context!13344))

(declare-fun call!643393 () (Set Context!13344))

(assert (=> bm!643386 (= call!643396 call!643393)))

(declare-fun bm!643387 () Bool)

(declare-fun call!643391 () List!68555)

(declare-fun call!643395 () List!68555)

(assert (=> bm!643387 (= call!643391 call!643395)))

(declare-fun bm!643388 () Bool)

(declare-fun c!1320966 () Bool)

(declare-fun call!643392 () (Set Context!13344))

(declare-fun c!1320968 () Bool)

(declare-fun c!1320969 () Bool)

(assert (=> bm!643388 (= call!643392 (derivationStepZipperDown!2310 (ite c!1320966 (regOne!35865 (h!74879 (exprs!7172 lt!2550560))) (ite c!1320969 (regTwo!35864 (h!74879 (exprs!7172 lt!2550560))) (ite c!1320968 (regOne!35864 (h!74879 (exprs!7172 lt!2550560))) (reg!18005 (h!74879 (exprs!7172 lt!2550560)))))) (ite (or c!1320966 c!1320969) (Context!13345 (++!15828 lt!2550556 (exprs!7172 ct2!306))) (Context!13345 call!643391)) (h!74878 s!7408)))))

(declare-fun b!7078668 () Bool)

(declare-fun e!4255685 () (Set Context!13344))

(assert (=> b!7078668 (= e!4255685 call!643396)))

(declare-fun b!7078669 () Bool)

(declare-fun e!4255688 () (Set Context!13344))

(declare-fun e!4255687 () (Set Context!13344))

(assert (=> b!7078669 (= e!4255688 e!4255687)))

(assert (=> b!7078669 (= c!1320966 (is-Union!17676 (h!74879 (exprs!7172 lt!2550560))))))

(declare-fun bm!643389 () Bool)

(assert (=> bm!643389 (= call!643393 call!643392)))

(declare-fun b!7078670 () Bool)

(declare-fun e!4255686 () Bool)

(assert (=> b!7078670 (= e!4255686 (nullable!7359 (regOne!35864 (h!74879 (exprs!7172 lt!2550560)))))))

(declare-fun b!7078671 () Bool)

(declare-fun c!1320967 () Bool)

(assert (=> b!7078671 (= c!1320967 (is-Star!17676 (h!74879 (exprs!7172 lt!2550560))))))

(declare-fun e!4255683 () (Set Context!13344))

(assert (=> b!7078671 (= e!4255685 e!4255683)))

(declare-fun b!7078672 () Bool)

(assert (=> b!7078672 (= e!4255688 (set.insert (Context!13345 (++!15828 lt!2550556 (exprs!7172 ct2!306))) (as set.empty (Set Context!13344))))))

(declare-fun bm!643390 () Bool)

(declare-fun call!643394 () (Set Context!13344))

(assert (=> bm!643390 (= call!643394 (derivationStepZipperDown!2310 (ite c!1320966 (regTwo!35865 (h!74879 (exprs!7172 lt!2550560))) (regOne!35864 (h!74879 (exprs!7172 lt!2550560)))) (ite c!1320966 (Context!13345 (++!15828 lt!2550556 (exprs!7172 ct2!306))) (Context!13345 call!643395)) (h!74878 s!7408)))))

(declare-fun b!7078673 () Bool)

(assert (=> b!7078673 (= e!4255687 (set.union call!643392 call!643394))))

(declare-fun b!7078674 () Bool)

(assert (=> b!7078674 (= c!1320969 e!4255686)))

(declare-fun res!2891424 () Bool)

(assert (=> b!7078674 (=> (not res!2891424) (not e!4255686))))

(assert (=> b!7078674 (= res!2891424 (is-Concat!26521 (h!74879 (exprs!7172 lt!2550560))))))

(declare-fun e!4255684 () (Set Context!13344))

(assert (=> b!7078674 (= e!4255687 e!4255684)))

(declare-fun b!7078675 () Bool)

(assert (=> b!7078675 (= e!4255683 call!643396)))

(declare-fun b!7078676 () Bool)

(assert (=> b!7078676 (= e!4255684 e!4255685)))

(assert (=> b!7078676 (= c!1320968 (is-Concat!26521 (h!74879 (exprs!7172 lt!2550560))))))

(declare-fun b!7078677 () Bool)

(assert (=> b!7078677 (= e!4255683 (as set.empty (Set Context!13344)))))

(declare-fun d!2213962 () Bool)

(declare-fun c!1320965 () Bool)

(assert (=> d!2213962 (= c!1320965 (and (is-ElementMatch!17676 (h!74879 (exprs!7172 lt!2550560))) (= (c!1320881 (h!74879 (exprs!7172 lt!2550560))) (h!74878 s!7408))))))

(assert (=> d!2213962 (= (derivationStepZipperDown!2310 (h!74879 (exprs!7172 lt!2550560)) (Context!13345 (++!15828 lt!2550556 (exprs!7172 ct2!306))) (h!74878 s!7408)) e!4255688)))

(declare-fun bm!643391 () Bool)

(assert (=> bm!643391 (= call!643395 ($colon$colon!2676 (exprs!7172 (Context!13345 (++!15828 lt!2550556 (exprs!7172 ct2!306)))) (ite (or c!1320969 c!1320968) (regTwo!35864 (h!74879 (exprs!7172 lt!2550560))) (h!74879 (exprs!7172 lt!2550560)))))))

(declare-fun b!7078678 () Bool)

(assert (=> b!7078678 (= e!4255684 (set.union call!643394 call!643393))))

(assert (= (and d!2213962 c!1320965) b!7078672))

(assert (= (and d!2213962 (not c!1320965)) b!7078669))

(assert (= (and b!7078669 c!1320966) b!7078673))

(assert (= (and b!7078669 (not c!1320966)) b!7078674))

(assert (= (and b!7078674 res!2891424) b!7078670))

(assert (= (and b!7078674 c!1320969) b!7078678))

(assert (= (and b!7078674 (not c!1320969)) b!7078676))

(assert (= (and b!7078676 c!1320968) b!7078668))

(assert (= (and b!7078676 (not c!1320968)) b!7078671))

(assert (= (and b!7078671 c!1320967) b!7078675))

(assert (= (and b!7078671 (not c!1320967)) b!7078677))

(assert (= (or b!7078668 b!7078675) bm!643387))

(assert (= (or b!7078668 b!7078675) bm!643386))

(assert (= (or b!7078678 bm!643386) bm!643389))

(assert (= (or b!7078678 bm!643387) bm!643391))

(assert (= (or b!7078673 bm!643389) bm!643388))

(assert (= (or b!7078673 b!7078678) bm!643390))

(declare-fun m!7808146 () Bool)

(assert (=> bm!643391 m!7808146))

(declare-fun m!7808148 () Bool)

(assert (=> b!7078672 m!7808148))

(assert (=> b!7078670 m!7807986))

(declare-fun m!7808150 () Bool)

(assert (=> bm!643388 m!7808150))

(declare-fun m!7808152 () Bool)

(assert (=> bm!643390 m!7808152))

(assert (=> b!7078411 d!2213962))

(declare-fun b!7078681 () Bool)

(declare-fun res!2891426 () Bool)

(declare-fun e!4255690 () Bool)

(assert (=> b!7078681 (=> (not res!2891426) (not e!4255690))))

(declare-fun lt!2550753 () List!68555)

(assert (=> b!7078681 (= res!2891426 (= (size!41245 lt!2550753) (+ (size!41245 lt!2550556) (size!41245 (exprs!7172 ct2!306)))))))

(declare-fun b!7078679 () Bool)

(declare-fun e!4255689 () List!68555)

(assert (=> b!7078679 (= e!4255689 (exprs!7172 ct2!306))))

(declare-fun d!2213964 () Bool)

(assert (=> d!2213964 e!4255690))

(declare-fun res!2891425 () Bool)

(assert (=> d!2213964 (=> (not res!2891425) (not e!4255690))))

(assert (=> d!2213964 (= res!2891425 (= (content!13851 lt!2550753) (set.union (content!13851 lt!2550556) (content!13851 (exprs!7172 ct2!306)))))))

(assert (=> d!2213964 (= lt!2550753 e!4255689)))

(declare-fun c!1320970 () Bool)

(assert (=> d!2213964 (= c!1320970 (is-Nil!68431 lt!2550556))))

(assert (=> d!2213964 (= (++!15828 lt!2550556 (exprs!7172 ct2!306)) lt!2550753)))

(declare-fun b!7078682 () Bool)

(assert (=> b!7078682 (= e!4255690 (or (not (= (exprs!7172 ct2!306) Nil!68431)) (= lt!2550753 lt!2550556)))))

(declare-fun b!7078680 () Bool)

(assert (=> b!7078680 (= e!4255689 (Cons!68431 (h!74879 lt!2550556) (++!15828 (t!382340 lt!2550556) (exprs!7172 ct2!306))))))

(assert (= (and d!2213964 c!1320970) b!7078679))

(assert (= (and d!2213964 (not c!1320970)) b!7078680))

(assert (= (and d!2213964 res!2891425) b!7078681))

(assert (= (and b!7078681 res!2891426) b!7078682))

(declare-fun m!7808154 () Bool)

(assert (=> b!7078681 m!7808154))

(declare-fun m!7808156 () Bool)

(assert (=> b!7078681 m!7808156))

(assert (=> b!7078681 m!7807866))

(declare-fun m!7808158 () Bool)

(assert (=> d!2213964 m!7808158))

(declare-fun m!7808160 () Bool)

(assert (=> d!2213964 m!7808160))

(assert (=> d!2213964 m!7807872))

(declare-fun m!7808164 () Bool)

(assert (=> b!7078680 m!7808164))

(assert (=> b!7078411 d!2213964))

(assert (=> b!7078411 d!2213902))

(declare-fun b!7078687 () Bool)

(declare-fun e!4255693 () Bool)

(declare-fun tp!1943179 () Bool)

(declare-fun tp!1943180 () Bool)

(assert (=> b!7078687 (= e!4255693 (and tp!1943179 tp!1943180))))

(assert (=> b!7078400 (= tp!1943159 e!4255693)))

(assert (= (and b!7078400 (is-Cons!68431 (exprs!7172 setElem!50428))) b!7078687))

(declare-fun b!7078692 () Bool)

(declare-fun e!4255696 () Bool)

(declare-fun tp!1943183 () Bool)

(assert (=> b!7078692 (= e!4255696 (and tp_is_empty!44577 tp!1943183))))

(assert (=> b!7078399 (= tp!1943161 e!4255696)))

(assert (= (and b!7078399 (is-Cons!68430 (t!382339 s!7408))) b!7078692))

(declare-fun condSetEmpty!50434 () Bool)

(assert (=> setNonEmpty!50428 (= condSetEmpty!50434 (= setRest!50428 (as set.empty (Set Context!13344))))))

(declare-fun setRes!50434 () Bool)

(assert (=> setNonEmpty!50428 (= tp!1943162 setRes!50434)))

(declare-fun setIsEmpty!50434 () Bool)

(assert (=> setIsEmpty!50434 setRes!50434))

(declare-fun setNonEmpty!50434 () Bool)

(declare-fun setElem!50434 () Context!13344)

(declare-fun tp!1943188 () Bool)

(declare-fun e!4255699 () Bool)

(assert (=> setNonEmpty!50434 (= setRes!50434 (and tp!1943188 (inv!87050 setElem!50434) e!4255699))))

(declare-fun setRest!50434 () (Set Context!13344))

(assert (=> setNonEmpty!50434 (= setRest!50428 (set.union (set.insert setElem!50434 (as set.empty (Set Context!13344))) setRest!50434))))

(declare-fun b!7078697 () Bool)

(declare-fun tp!1943189 () Bool)

(assert (=> b!7078697 (= e!4255699 tp!1943189)))

(assert (= (and setNonEmpty!50428 condSetEmpty!50434) setIsEmpty!50434))

(assert (= (and setNonEmpty!50428 (not condSetEmpty!50434)) setNonEmpty!50434))

(assert (= setNonEmpty!50434 b!7078697))

(declare-fun m!7808168 () Bool)

(assert (=> setNonEmpty!50434 m!7808168))

(declare-fun b!7078698 () Bool)

(declare-fun e!4255700 () Bool)

(declare-fun tp!1943190 () Bool)

(declare-fun tp!1943191 () Bool)

(assert (=> b!7078698 (= e!4255700 (and tp!1943190 tp!1943191))))

(assert (=> b!7078401 (= tp!1943160 e!4255700)))

(assert (= (and b!7078401 (is-Cons!68431 (exprs!7172 ct2!306))) b!7078698))

(declare-fun b_lambda!270421 () Bool)

(assert (= b_lambda!270409 (or b!7078402 b_lambda!270421)))

(declare-fun bs!1881739 () Bool)

(declare-fun d!2213970 () Bool)

(assert (= bs!1881739 (and d!2213970 b!7078402)))

(assert (=> bs!1881739 (= (dynLambda!27875 lambda!427200 lt!2550682) (matchZipper!3216 (set.insert lt!2550682 (as set.empty (Set Context!13344))) s!7408))))

(declare-fun m!7808170 () Bool)

(assert (=> bs!1881739 m!7808170))

(assert (=> bs!1881739 m!7808170))

(declare-fun m!7808172 () Bool)

(assert (=> bs!1881739 m!7808172))

(assert (=> d!2213858 d!2213970))

(declare-fun b_lambda!270423 () Bool)

(assert (= b_lambda!270411 (or b!7078404 b_lambda!270423)))

(declare-fun bs!1881740 () Bool)

(declare-fun d!2213972 () Bool)

(assert (= bs!1881740 (and d!2213972 b!7078404)))

(declare-fun lt!2550754 () Unit!162063)

(assert (=> bs!1881740 (= lt!2550754 (lemmaConcatPreservesForall!987 (exprs!7172 lt!2550697) (exprs!7172 ct2!306) lambda!427202))))

(assert (=> bs!1881740 (= (dynLambda!27877 lambda!427201 lt!2550697) (Context!13345 (++!15828 (exprs!7172 lt!2550697) (exprs!7172 ct2!306))))))

(declare-fun m!7808174 () Bool)

(assert (=> bs!1881740 m!7808174))

(declare-fun m!7808176 () Bool)

(assert (=> bs!1881740 m!7808176))

(assert (=> d!2213872 d!2213972))

(declare-fun b_lambda!270425 () Bool)

(assert (= b_lambda!270413 (or b!7078406 b_lambda!270425)))

(declare-fun bs!1881741 () Bool)

(declare-fun d!2213974 () Bool)

(assert (= bs!1881741 (and d!2213974 b!7078406)))

(assert (=> bs!1881741 (= (dynLambda!27878 lambda!427203 lt!2550560) (derivationStepZipperUp!2260 lt!2550560 (h!74878 s!7408)))))

(assert (=> bs!1881741 m!7807636))

(assert (=> d!2213878 d!2213974))

(declare-fun b_lambda!270427 () Bool)

(assert (= b_lambda!270415 (or b!7078406 b_lambda!270427)))

(declare-fun bs!1881742 () Bool)

(declare-fun d!2213976 () Bool)

(assert (= bs!1881742 (and d!2213976 b!7078406)))

(assert (=> bs!1881742 (= (dynLambda!27878 lambda!427203 lt!2550575) (derivationStepZipperUp!2260 lt!2550575 (h!74878 s!7408)))))

(assert (=> bs!1881742 m!7807650))

(assert (=> d!2213890 d!2213976))

(push 1)

(assert (not b!7078583))

(assert (not d!2213934))

(assert (not d!2213898))

(assert (not b!7078667))

(assert (not b!7078652))

(assert (not b_lambda!270423))

(assert (not d!2213954))

(assert (not b!7078666))

(assert (not b!7078650))

(assert (not bm!643382))

(assert (not bm!643363))

(assert (not d!2213956))

(assert (not d!2213910))

(assert (not d!2213878))

(assert (not b!7078506))

(assert (not d!2213894))

(assert (not b!7078659))

(assert (not b!7078687))

(assert (not bm!643390))

(assert (not b!7078692))

(assert (not d!2213914))

(assert (not bs!1881740))

(assert (not d!2213926))

(assert (not b!7078490))

(assert (not b!7078543))

(assert (not d!2213964))

(assert (not b!7078517))

(assert (not d!2213896))

(assert (not b!7078653))

(assert (not d!2213946))

(assert (not d!2213904))

(assert (not b!7078637))

(assert (not b!7078646))

(assert (not bm!643391))

(assert (not b_lambda!270421))

(assert (not d!2213854))

(assert (not d!2213872))

(assert (not b!7078547))

(assert (not bm!643379))

(assert (not d!2213860))

(assert (not d!2213864))

(assert (not b!7078658))

(assert (not d!2213874))

(assert (not b!7078501))

(assert (not d!2213866))

(assert tp_is_empty!44577)

(assert (not b!7078665))

(assert (not d!2213890))

(assert (not b!7078534))

(assert (not d!2213862))

(assert (not d!2213884))

(assert (not b!7078548))

(assert (not b!7078645))

(assert (not d!2213900))

(assert (not d!2213940))

(assert (not b_lambda!270427))

(assert (not b!7078651))

(assert (not bs!1881742))

(assert (not bs!1881741))

(assert (not d!2213924))

(assert (not b!7078648))

(assert (not d!2213880))

(assert (not b!7078500))

(assert (not d!2213882))

(assert (not b!7078625))

(assert (not b!7078540))

(assert (not d!2213942))

(assert (not bm!643364))

(assert (not d!2213892))

(assert (not d!2213928))

(assert (not b!7078491))

(assert (not d!2213930))

(assert (not d!2213858))

(assert (not b!7078644))

(assert (not d!2213938))

(assert (not b!7078697))

(assert (not bm!643388))

(assert (not d!2213902))

(assert (not d!2213960))

(assert (not b!7078638))

(assert (not b_lambda!270425))

(assert (not b!7078624))

(assert (not b!7078550))

(assert (not b!7078533))

(assert (not d!2213932))

(assert (not bs!1881739))

(assert (not b!7078516))

(assert (not b!7078670))

(assert (not b!7078654))

(assert (not b!7078680))

(assert (not b!7078549))

(assert (not setNonEmpty!50434))

(assert (not b!7078541))

(assert (not b!7078542))

(assert (not bm!643381))

(assert (not d!2213950))

(assert (not b!7078622))

(assert (not b!7078623))

(assert (not b!7078698))

(assert (not d!2213868))

(assert (not b!7078621))

(assert (not d!2213944))

(assert (not b!7078619))

(assert (not b!7078681))

(assert (not d!2213870))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

