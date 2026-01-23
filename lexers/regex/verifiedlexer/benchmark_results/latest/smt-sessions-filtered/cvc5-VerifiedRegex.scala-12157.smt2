; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!683798 () Bool)

(assert start!683798)

(declare-fun b!7053317 () Bool)

(assert (=> b!7053317 true))

(declare-fun b!7053318 () Bool)

(assert (=> b!7053318 true))

(declare-fun b!7053310 () Bool)

(assert (=> b!7053310 true))

(declare-fun e!4240310 () Bool)

(declare-fun e!4240306 () Bool)

(assert (=> b!7053310 (= e!4240310 e!4240306)))

(declare-fun res!2879505 () Bool)

(assert (=> b!7053310 (=> res!2879505 e!4240306)))

(declare-datatypes ((C!35390 0))(
  ( (C!35391 (val!27397 Int)) )
))
(declare-datatypes ((Regex!17560 0))(
  ( (ElementMatch!17560 (c!1313843 C!35390)) (Concat!26405 (regOne!35632 Regex!17560) (regTwo!35632 Regex!17560)) (EmptyExpr!17560) (Star!17560 (reg!17889 Regex!17560)) (EmptyLang!17560) (Union!17560 (regOne!35633 Regex!17560) (regTwo!35633 Regex!17560)) )
))
(declare-datatypes ((List!68206 0))(
  ( (Nil!68082) (Cons!68082 (h!74530 Regex!17560) (t!381985 List!68206)) )
))
(declare-datatypes ((Context!13112 0))(
  ( (Context!13113 (exprs!7056 List!68206)) )
))
(declare-fun lt!2530632 () (Set Context!13112))

(declare-fun lt!2530629 () (Set Context!13112))

(declare-datatypes ((List!68207 0))(
  ( (Nil!68083) (Cons!68083 (h!74531 C!35390) (t!381986 List!68207)) )
))
(declare-fun s!7408 () List!68207)

(declare-fun derivationStepZipper!3010 ((Set Context!13112) C!35390) (Set Context!13112))

(assert (=> b!7053310 (= res!2879505 (not (= (derivationStepZipper!3010 lt!2530632 (h!74531 s!7408)) lt!2530629)))))

(declare-fun lambda!419649 () Int)

(declare-fun lt!2530633 () Context!13112)

(declare-fun flatMap!2486 ((Set Context!13112) Int) (Set Context!13112))

(declare-fun derivationStepZipperUp!2144 (Context!13112 C!35390) (Set Context!13112))

(assert (=> b!7053310 (= (flatMap!2486 lt!2530632 lambda!419649) (derivationStepZipperUp!2144 lt!2530633 (h!74531 s!7408)))))

(declare-datatypes ((Unit!161793 0))(
  ( (Unit!161794) )
))
(declare-fun lt!2530634 () Unit!161793)

(declare-fun lemmaFlatMapOnSingletonSet!1995 ((Set Context!13112) Context!13112 Int) Unit!161793)

(assert (=> b!7053310 (= lt!2530634 (lemmaFlatMapOnSingletonSet!1995 lt!2530632 lt!2530633 lambda!419649))))

(assert (=> b!7053310 (= lt!2530629 (derivationStepZipperUp!2144 lt!2530633 (h!74531 s!7408)))))

(declare-fun lambda!419648 () Int)

(declare-fun lt!2530631 () Context!13112)

(declare-fun ct2!306 () Context!13112)

(declare-fun lt!2530620 () Unit!161793)

(declare-fun lemmaConcatPreservesForall!871 (List!68206 List!68206 Int) Unit!161793)

(assert (=> b!7053310 (= lt!2530620 (lemmaConcatPreservesForall!871 (exprs!7056 lt!2530631) (exprs!7056 ct2!306) lambda!419648))))

(declare-fun b!7053311 () Bool)

(declare-fun e!4240304 () Bool)

(declare-fun e!4240307 () Bool)

(assert (=> b!7053311 (= e!4240304 e!4240307)))

(declare-fun res!2879515 () Bool)

(assert (=> b!7053311 (=> res!2879515 e!4240307)))

(declare-fun lt!2530623 () Context!13112)

(declare-fun derivationStepZipperDown!2194 (Regex!17560 Context!13112 C!35390) (Set Context!13112))

(assert (=> b!7053311 (= res!2879515 (not (= lt!2530629 (set.union (derivationStepZipperDown!2194 (h!74530 (exprs!7056 lt!2530631)) lt!2530623 (h!74531 s!7408)) (derivationStepZipperUp!2144 lt!2530623 (h!74531 s!7408))))))))

(declare-fun lt!2530635 () List!68206)

(declare-fun ++!15643 (List!68206 List!68206) List!68206)

(assert (=> b!7053311 (= lt!2530623 (Context!13113 (++!15643 lt!2530635 (exprs!7056 ct2!306))))))

(declare-fun lt!2530627 () Unit!161793)

(assert (=> b!7053311 (= lt!2530627 (lemmaConcatPreservesForall!871 lt!2530635 (exprs!7056 ct2!306) lambda!419648))))

(declare-fun lt!2530621 () Unit!161793)

(assert (=> b!7053311 (= lt!2530621 (lemmaConcatPreservesForall!871 lt!2530635 (exprs!7056 ct2!306) lambda!419648))))

(declare-fun b!7053312 () Bool)

(assert (=> b!7053312 (= e!4240306 e!4240304)))

(declare-fun res!2879507 () Bool)

(assert (=> b!7053312 (=> res!2879507 e!4240304)))

(declare-fun nullable!7243 (Regex!17560) Bool)

(assert (=> b!7053312 (= res!2879507 (not (nullable!7243 (h!74530 (exprs!7056 lt!2530631)))))))

(declare-fun tail!13682 (List!68206) List!68206)

(assert (=> b!7053312 (= lt!2530635 (tail!13682 (exprs!7056 lt!2530631)))))

(declare-fun b!7053313 () Bool)

(declare-fun res!2879514 () Bool)

(declare-fun e!4240309 () Bool)

(assert (=> b!7053313 (=> res!2879514 e!4240309)))

(declare-fun lt!2530628 () Context!13112)

(declare-fun lt!2530624 () (Set Context!13112))

(assert (=> b!7053313 (= res!2879514 (not (set.member lt!2530628 lt!2530624)))))

(declare-fun b!7053314 () Bool)

(declare-fun res!2879511 () Bool)

(assert (=> b!7053314 (=> res!2879511 e!4240306)))

(assert (=> b!7053314 (= res!2879511 (not (is-Cons!68082 (exprs!7056 lt!2530631))))))

(declare-fun b!7053315 () Bool)

(declare-fun e!4240308 () Bool)

(declare-fun tp!1939834 () Bool)

(assert (=> b!7053315 (= e!4240308 tp!1939834)))

(declare-fun b!7053316 () Bool)

(declare-fun res!2879510 () Bool)

(assert (=> b!7053316 (=> res!2879510 e!4240306)))

(declare-fun isEmpty!39710 (List!68206) Bool)

(assert (=> b!7053316 (= res!2879510 (isEmpty!39710 (exprs!7056 lt!2530631)))))

(declare-fun e!4240305 () Bool)

(assert (=> b!7053317 (= e!4240305 (not e!4240309))))

(declare-fun res!2879512 () Bool)

(assert (=> b!7053317 (=> res!2879512 e!4240309)))

(declare-fun lt!2530626 () (Set Context!13112))

(declare-fun matchZipper!3100 ((Set Context!13112) List!68207) Bool)

(assert (=> b!7053317 (= res!2879512 (not (matchZipper!3100 lt!2530626 s!7408)))))

(assert (=> b!7053317 (= lt!2530626 (set.insert lt!2530628 (as set.empty (Set Context!13112))))))

(declare-fun lambda!419646 () Int)

(declare-fun getWitness!1617 ((Set Context!13112) Int) Context!13112)

(assert (=> b!7053317 (= lt!2530628 (getWitness!1617 lt!2530624 lambda!419646))))

(declare-datatypes ((List!68208 0))(
  ( (Nil!68084) (Cons!68084 (h!74532 Context!13112) (t!381987 List!68208)) )
))
(declare-fun lt!2530617 () List!68208)

(declare-fun exists!3543 (List!68208 Int) Bool)

(assert (=> b!7053317 (exists!3543 lt!2530617 lambda!419646)))

(declare-fun lt!2530618 () Unit!161793)

(declare-fun lemmaZipperMatchesExistsMatchingContext!481 (List!68208 List!68207) Unit!161793)

(assert (=> b!7053317 (= lt!2530618 (lemmaZipperMatchesExistsMatchingContext!481 lt!2530617 s!7408))))

(declare-fun toList!10901 ((Set Context!13112)) List!68208)

(assert (=> b!7053317 (= lt!2530617 (toList!10901 lt!2530624))))

(declare-fun e!4240302 () Bool)

(assert (=> b!7053318 (= e!4240309 e!4240302)))

(declare-fun res!2879508 () Bool)

(assert (=> b!7053318 (=> res!2879508 e!4240302)))

(declare-fun z1!570 () (Set Context!13112))

(assert (=> b!7053318 (= res!2879508 (or (not (= lt!2530633 lt!2530628)) (not (set.member lt!2530631 z1!570))))))

(assert (=> b!7053318 (= lt!2530633 (Context!13113 (++!15643 (exprs!7056 lt!2530631) (exprs!7056 ct2!306))))))

(declare-fun lt!2530630 () Unit!161793)

(assert (=> b!7053318 (= lt!2530630 (lemmaConcatPreservesForall!871 (exprs!7056 lt!2530631) (exprs!7056 ct2!306) lambda!419648))))

(declare-fun lambda!419647 () Int)

(declare-fun mapPost2!389 ((Set Context!13112) Int Context!13112) Context!13112)

(assert (=> b!7053318 (= lt!2530631 (mapPost2!389 z1!570 lambda!419647 lt!2530628))))

(declare-fun res!2879509 () Bool)

(assert (=> start!683798 (=> (not res!2879509) (not e!4240305))))

(assert (=> start!683798 (= res!2879509 (matchZipper!3100 lt!2530624 s!7408))))

(declare-fun appendTo!681 ((Set Context!13112) Context!13112) (Set Context!13112))

(assert (=> start!683798 (= lt!2530624 (appendTo!681 z1!570 ct2!306))))

(assert (=> start!683798 e!4240305))

(declare-fun condSetEmpty!49780 () Bool)

(assert (=> start!683798 (= condSetEmpty!49780 (= z1!570 (as set.empty (Set Context!13112))))))

(declare-fun setRes!49780 () Bool)

(assert (=> start!683798 setRes!49780))

(declare-fun e!4240303 () Bool)

(declare-fun inv!86760 (Context!13112) Bool)

(assert (=> start!683798 (and (inv!86760 ct2!306) e!4240303)))

(declare-fun e!4240311 () Bool)

(assert (=> start!683798 e!4240311))

(declare-fun setIsEmpty!49780 () Bool)

(assert (=> setIsEmpty!49780 setRes!49780))

(declare-fun b!7053319 () Bool)

(assert (=> b!7053319 (= e!4240302 e!4240310)))

(declare-fun res!2879506 () Bool)

(assert (=> b!7053319 (=> res!2879506 e!4240310)))

(assert (=> b!7053319 (= res!2879506 (not (= lt!2530632 lt!2530626)))))

(assert (=> b!7053319 (= lt!2530632 (set.insert lt!2530633 (as set.empty (Set Context!13112))))))

(declare-fun lt!2530625 () Unit!161793)

(assert (=> b!7053319 (= lt!2530625 (lemmaConcatPreservesForall!871 (exprs!7056 lt!2530631) (exprs!7056 ct2!306) lambda!419648))))

(declare-fun b!7053320 () Bool)

(declare-fun res!2879513 () Bool)

(assert (=> b!7053320 (=> (not res!2879513) (not e!4240305))))

(assert (=> b!7053320 (= res!2879513 (is-Cons!68083 s!7408))))

(declare-fun b!7053321 () Bool)

(declare-fun tp_is_empty!44345 () Bool)

(declare-fun tp!1939831 () Bool)

(assert (=> b!7053321 (= e!4240311 (and tp_is_empty!44345 tp!1939831))))

(declare-fun b!7053322 () Bool)

(declare-fun tp!1939832 () Bool)

(assert (=> b!7053322 (= e!4240303 tp!1939832)))

(declare-fun b!7053323 () Bool)

(assert (=> b!7053323 (= e!4240307 (inv!86760 lt!2530623))))

(declare-fun lt!2530619 () Unit!161793)

(assert (=> b!7053323 (= lt!2530619 (lemmaConcatPreservesForall!871 lt!2530635 (exprs!7056 ct2!306) lambda!419648))))

(declare-fun lt!2530622 () Unit!161793)

(assert (=> b!7053323 (= lt!2530622 (lemmaConcatPreservesForall!871 lt!2530635 (exprs!7056 ct2!306) lambda!419648))))

(declare-fun setNonEmpty!49780 () Bool)

(declare-fun tp!1939833 () Bool)

(declare-fun setElem!49780 () Context!13112)

(assert (=> setNonEmpty!49780 (= setRes!49780 (and tp!1939833 (inv!86760 setElem!49780) e!4240308))))

(declare-fun setRest!49780 () (Set Context!13112))

(assert (=> setNonEmpty!49780 (= z1!570 (set.union (set.insert setElem!49780 (as set.empty (Set Context!13112))) setRest!49780))))

(assert (= (and start!683798 res!2879509) b!7053320))

(assert (= (and b!7053320 res!2879513) b!7053317))

(assert (= (and b!7053317 (not res!2879512)) b!7053313))

(assert (= (and b!7053313 (not res!2879514)) b!7053318))

(assert (= (and b!7053318 (not res!2879508)) b!7053319))

(assert (= (and b!7053319 (not res!2879506)) b!7053310))

(assert (= (and b!7053310 (not res!2879505)) b!7053314))

(assert (= (and b!7053314 (not res!2879511)) b!7053316))

(assert (= (and b!7053316 (not res!2879510)) b!7053312))

(assert (= (and b!7053312 (not res!2879507)) b!7053311))

(assert (= (and b!7053311 (not res!2879515)) b!7053323))

(assert (= (and start!683798 condSetEmpty!49780) setIsEmpty!49780))

(assert (= (and start!683798 (not condSetEmpty!49780)) setNonEmpty!49780))

(assert (= setNonEmpty!49780 b!7053315))

(assert (= start!683798 b!7053322))

(assert (= (and start!683798 (is-Cons!68083 s!7408)) b!7053321))

(declare-fun m!7770346 () Bool)

(assert (=> b!7053316 m!7770346))

(declare-fun m!7770348 () Bool)

(assert (=> setNonEmpty!49780 m!7770348))

(declare-fun m!7770350 () Bool)

(assert (=> b!7053311 m!7770350))

(declare-fun m!7770352 () Bool)

(assert (=> b!7053311 m!7770352))

(declare-fun m!7770354 () Bool)

(assert (=> b!7053311 m!7770354))

(assert (=> b!7053311 m!7770354))

(declare-fun m!7770356 () Bool)

(assert (=> b!7053311 m!7770356))

(declare-fun m!7770358 () Bool)

(assert (=> b!7053310 m!7770358))

(declare-fun m!7770360 () Bool)

(assert (=> b!7053310 m!7770360))

(declare-fun m!7770362 () Bool)

(assert (=> b!7053310 m!7770362))

(declare-fun m!7770364 () Bool)

(assert (=> b!7053310 m!7770364))

(declare-fun m!7770366 () Bool)

(assert (=> b!7053310 m!7770366))

(declare-fun m!7770368 () Bool)

(assert (=> b!7053312 m!7770368))

(declare-fun m!7770370 () Bool)

(assert (=> b!7053312 m!7770370))

(declare-fun m!7770372 () Bool)

(assert (=> b!7053323 m!7770372))

(assert (=> b!7053323 m!7770354))

(assert (=> b!7053323 m!7770354))

(declare-fun m!7770374 () Bool)

(assert (=> start!683798 m!7770374))

(declare-fun m!7770376 () Bool)

(assert (=> start!683798 m!7770376))

(declare-fun m!7770378 () Bool)

(assert (=> start!683798 m!7770378))

(declare-fun m!7770380 () Bool)

(assert (=> b!7053313 m!7770380))

(declare-fun m!7770382 () Bool)

(assert (=> b!7053317 m!7770382))

(declare-fun m!7770384 () Bool)

(assert (=> b!7053317 m!7770384))

(declare-fun m!7770386 () Bool)

(assert (=> b!7053317 m!7770386))

(declare-fun m!7770388 () Bool)

(assert (=> b!7053317 m!7770388))

(declare-fun m!7770390 () Bool)

(assert (=> b!7053317 m!7770390))

(declare-fun m!7770392 () Bool)

(assert (=> b!7053317 m!7770392))

(declare-fun m!7770394 () Bool)

(assert (=> b!7053318 m!7770394))

(declare-fun m!7770396 () Bool)

(assert (=> b!7053318 m!7770396))

(assert (=> b!7053318 m!7770360))

(declare-fun m!7770398 () Bool)

(assert (=> b!7053318 m!7770398))

(declare-fun m!7770400 () Bool)

(assert (=> b!7053319 m!7770400))

(assert (=> b!7053319 m!7770360))

(push 1)

(assert (not b!7053310))

(assert (not b!7053321))

(assert tp_is_empty!44345)

(assert (not b!7053318))

(assert (not b!7053312))

(assert (not setNonEmpty!49780))

(assert (not b!7053323))

(assert (not start!683798))

(assert (not b!7053315))

(assert (not b!7053316))

(assert (not b!7053311))

(assert (not b!7053317))

(assert (not b!7053319))

(assert (not b!7053322))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2204152 () Bool)

(declare-fun c!1313855 () Bool)

(declare-fun isEmpty!39712 (List!68207) Bool)

(assert (=> d!2204152 (= c!1313855 (isEmpty!39712 s!7408))))

(declare-fun e!4240344 () Bool)

(assert (=> d!2204152 (= (matchZipper!3100 lt!2530624 s!7408) e!4240344)))

(declare-fun b!7053382 () Bool)

(declare-fun nullableZipper!2649 ((Set Context!13112)) Bool)

(assert (=> b!7053382 (= e!4240344 (nullableZipper!2649 lt!2530624))))

(declare-fun b!7053383 () Bool)

(declare-fun head!14350 (List!68207) C!35390)

(declare-fun tail!13684 (List!68207) List!68207)

(assert (=> b!7053383 (= e!4240344 (matchZipper!3100 (derivationStepZipper!3010 lt!2530624 (head!14350 s!7408)) (tail!13684 s!7408)))))

(assert (= (and d!2204152 c!1313855) b!7053382))

(assert (= (and d!2204152 (not c!1313855)) b!7053383))

(declare-fun m!7770458 () Bool)

(assert (=> d!2204152 m!7770458))

(declare-fun m!7770460 () Bool)

(assert (=> b!7053382 m!7770460))

(declare-fun m!7770462 () Bool)

(assert (=> b!7053383 m!7770462))

(assert (=> b!7053383 m!7770462))

(declare-fun m!7770464 () Bool)

(assert (=> b!7053383 m!7770464))

(declare-fun m!7770466 () Bool)

(assert (=> b!7053383 m!7770466))

(assert (=> b!7053383 m!7770464))

(assert (=> b!7053383 m!7770466))

(declare-fun m!7770468 () Bool)

(assert (=> b!7053383 m!7770468))

(assert (=> start!683798 d!2204152))

(declare-fun bs!1876689 () Bool)

(declare-fun d!2204154 () Bool)

(assert (= bs!1876689 (and d!2204154 b!7053318)))

(declare-fun lambda!419682 () Int)

(assert (=> bs!1876689 (= lambda!419682 lambda!419647)))

(assert (=> d!2204154 true))

(declare-fun map!15879 ((Set Context!13112) Int) (Set Context!13112))

(assert (=> d!2204154 (= (appendTo!681 z1!570 ct2!306) (map!15879 z1!570 lambda!419682))))

(declare-fun bs!1876690 () Bool)

(assert (= bs!1876690 d!2204154))

(declare-fun m!7770470 () Bool)

(assert (=> bs!1876690 m!7770470))

(assert (=> start!683798 d!2204154))

(declare-fun bs!1876691 () Bool)

(declare-fun d!2204156 () Bool)

(assert (= bs!1876691 (and d!2204156 b!7053318)))

(declare-fun lambda!419685 () Int)

(assert (=> bs!1876691 (= lambda!419685 lambda!419648)))

(declare-fun forall!16501 (List!68206 Int) Bool)

(assert (=> d!2204156 (= (inv!86760 ct2!306) (forall!16501 (exprs!7056 ct2!306) lambda!419685))))

(declare-fun bs!1876692 () Bool)

(assert (= bs!1876692 d!2204156))

(declare-fun m!7770472 () Bool)

(assert (=> bs!1876692 m!7770472))

(assert (=> start!683798 d!2204156))

(declare-fun d!2204158 () Bool)

(assert (=> d!2204158 (forall!16501 (++!15643 lt!2530635 (exprs!7056 ct2!306)) lambda!419648)))

(declare-fun lt!2530699 () Unit!161793)

(declare-fun choose!53756 (List!68206 List!68206 Int) Unit!161793)

(assert (=> d!2204158 (= lt!2530699 (choose!53756 lt!2530635 (exprs!7056 ct2!306) lambda!419648))))

(assert (=> d!2204158 (forall!16501 lt!2530635 lambda!419648)))

(assert (=> d!2204158 (= (lemmaConcatPreservesForall!871 lt!2530635 (exprs!7056 ct2!306) lambda!419648) lt!2530699)))

(declare-fun bs!1876693 () Bool)

(assert (= bs!1876693 d!2204158))

(assert (=> bs!1876693 m!7770352))

(assert (=> bs!1876693 m!7770352))

(declare-fun m!7770474 () Bool)

(assert (=> bs!1876693 m!7770474))

(declare-fun m!7770476 () Bool)

(assert (=> bs!1876693 m!7770476))

(declare-fun m!7770478 () Bool)

(assert (=> bs!1876693 m!7770478))

(assert (=> b!7053311 d!2204158))

(declare-fun bm!640679 () Bool)

(declare-fun call!640687 () (Set Context!13112))

(declare-fun call!640689 () (Set Context!13112))

(assert (=> bm!640679 (= call!640687 call!640689)))

(declare-fun b!7053406 () Bool)

(declare-fun c!1313871 () Bool)

(assert (=> b!7053406 (= c!1313871 (is-Star!17560 (h!74530 (exprs!7056 lt!2530631))))))

(declare-fun e!4240362 () (Set Context!13112))

(declare-fun e!4240361 () (Set Context!13112))

(assert (=> b!7053406 (= e!4240362 e!4240361)))

(declare-fun bm!640680 () Bool)

(declare-fun call!640688 () List!68206)

(declare-fun c!1313869 () Bool)

(declare-fun call!640685 () (Set Context!13112))

(assert (=> bm!640680 (= call!640685 (derivationStepZipperDown!2194 (ite c!1313869 (regOne!35633 (h!74530 (exprs!7056 lt!2530631))) (regOne!35632 (h!74530 (exprs!7056 lt!2530631)))) (ite c!1313869 lt!2530623 (Context!13113 call!640688)) (h!74531 s!7408)))))

(declare-fun b!7053407 () Bool)

(declare-fun e!4240360 () (Set Context!13112))

(assert (=> b!7053407 (= e!4240360 (set.insert lt!2530623 (as set.empty (Set Context!13112))))))

(declare-fun b!7053408 () Bool)

(declare-fun c!1313870 () Bool)

(declare-fun e!4240358 () Bool)

(assert (=> b!7053408 (= c!1313870 e!4240358)))

(declare-fun res!2879553 () Bool)

(assert (=> b!7053408 (=> (not res!2879553) (not e!4240358))))

(assert (=> b!7053408 (= res!2879553 (is-Concat!26405 (h!74530 (exprs!7056 lt!2530631))))))

(declare-fun e!4240357 () (Set Context!13112))

(declare-fun e!4240359 () (Set Context!13112))

(assert (=> b!7053408 (= e!4240357 e!4240359)))

(declare-fun bm!640681 () Bool)

(declare-fun call!640684 () (Set Context!13112))

(assert (=> bm!640681 (= call!640684 call!640687)))

(declare-fun b!7053409 () Bool)

(assert (=> b!7053409 (= e!4240361 (as set.empty (Set Context!13112)))))

(declare-fun b!7053410 () Bool)

(assert (=> b!7053410 (= e!4240361 call!640684)))

(declare-fun bm!640682 () Bool)

(declare-fun c!1313867 () Bool)

(declare-fun $colon$colon!2614 (List!68206 Regex!17560) List!68206)

(assert (=> bm!640682 (= call!640688 ($colon$colon!2614 (exprs!7056 lt!2530623) (ite (or c!1313870 c!1313867) (regTwo!35632 (h!74530 (exprs!7056 lt!2530631))) (h!74530 (exprs!7056 lt!2530631)))))))

(declare-fun b!7053412 () Bool)

(assert (=> b!7053412 (= e!4240362 call!640684)))

(declare-fun b!7053413 () Bool)

(assert (=> b!7053413 (= e!4240358 (nullable!7243 (regOne!35632 (h!74530 (exprs!7056 lt!2530631)))))))

(declare-fun bm!640683 () Bool)

(declare-fun call!640686 () List!68206)

(assert (=> bm!640683 (= call!640689 (derivationStepZipperDown!2194 (ite c!1313869 (regTwo!35633 (h!74530 (exprs!7056 lt!2530631))) (ite c!1313870 (regTwo!35632 (h!74530 (exprs!7056 lt!2530631))) (ite c!1313867 (regOne!35632 (h!74530 (exprs!7056 lt!2530631))) (reg!17889 (h!74530 (exprs!7056 lt!2530631)))))) (ite (or c!1313869 c!1313870) lt!2530623 (Context!13113 call!640686)) (h!74531 s!7408)))))

(declare-fun b!7053411 () Bool)

(assert (=> b!7053411 (= e!4240357 (set.union call!640685 call!640689))))

(declare-fun d!2204160 () Bool)

(declare-fun c!1313868 () Bool)

(assert (=> d!2204160 (= c!1313868 (and (is-ElementMatch!17560 (h!74530 (exprs!7056 lt!2530631))) (= (c!1313843 (h!74530 (exprs!7056 lt!2530631))) (h!74531 s!7408))))))

(assert (=> d!2204160 (= (derivationStepZipperDown!2194 (h!74530 (exprs!7056 lt!2530631)) lt!2530623 (h!74531 s!7408)) e!4240360)))

(declare-fun b!7053414 () Bool)

(assert (=> b!7053414 (= e!4240360 e!4240357)))

(assert (=> b!7053414 (= c!1313869 (is-Union!17560 (h!74530 (exprs!7056 lt!2530631))))))

(declare-fun b!7053415 () Bool)

(assert (=> b!7053415 (= e!4240359 (set.union call!640685 call!640687))))

(declare-fun bm!640684 () Bool)

(assert (=> bm!640684 (= call!640686 call!640688)))

(declare-fun b!7053416 () Bool)

(assert (=> b!7053416 (= e!4240359 e!4240362)))

(assert (=> b!7053416 (= c!1313867 (is-Concat!26405 (h!74530 (exprs!7056 lt!2530631))))))

(assert (= (and d!2204160 c!1313868) b!7053407))

(assert (= (and d!2204160 (not c!1313868)) b!7053414))

(assert (= (and b!7053414 c!1313869) b!7053411))

(assert (= (and b!7053414 (not c!1313869)) b!7053408))

(assert (= (and b!7053408 res!2879553) b!7053413))

(assert (= (and b!7053408 c!1313870) b!7053415))

(assert (= (and b!7053408 (not c!1313870)) b!7053416))

(assert (= (and b!7053416 c!1313867) b!7053412))

(assert (= (and b!7053416 (not c!1313867)) b!7053406))

(assert (= (and b!7053406 c!1313871) b!7053410))

(assert (= (and b!7053406 (not c!1313871)) b!7053409))

(assert (= (or b!7053412 b!7053410) bm!640684))

(assert (= (or b!7053412 b!7053410) bm!640681))

(assert (= (or b!7053415 bm!640681) bm!640679))

(assert (= (or b!7053415 bm!640684) bm!640682))

(assert (= (or b!7053411 b!7053415) bm!640680))

(assert (= (or b!7053411 bm!640679) bm!640683))

(declare-fun m!7770480 () Bool)

(assert (=> bm!640680 m!7770480))

(declare-fun m!7770482 () Bool)

(assert (=> b!7053413 m!7770482))

(declare-fun m!7770484 () Bool)

(assert (=> bm!640683 m!7770484))

(declare-fun m!7770486 () Bool)

(assert (=> bm!640682 m!7770486))

(declare-fun m!7770488 () Bool)

(assert (=> b!7053407 m!7770488))

(assert (=> b!7053311 d!2204160))

(declare-fun b!7053425 () Bool)

(declare-fun e!4240368 () List!68206)

(assert (=> b!7053425 (= e!4240368 (exprs!7056 ct2!306))))

(declare-fun b!7053427 () Bool)

(declare-fun res!2879559 () Bool)

(declare-fun e!4240367 () Bool)

(assert (=> b!7053427 (=> (not res!2879559) (not e!4240367))))

(declare-fun lt!2530702 () List!68206)

(declare-fun size!41144 (List!68206) Int)

(assert (=> b!7053427 (= res!2879559 (= (size!41144 lt!2530702) (+ (size!41144 lt!2530635) (size!41144 (exprs!7056 ct2!306)))))))

(declare-fun d!2204162 () Bool)

(assert (=> d!2204162 e!4240367))

(declare-fun res!2879558 () Bool)

(assert (=> d!2204162 (=> (not res!2879558) (not e!4240367))))

(declare-fun content!13671 (List!68206) (Set Regex!17560))

(assert (=> d!2204162 (= res!2879558 (= (content!13671 lt!2530702) (set.union (content!13671 lt!2530635) (content!13671 (exprs!7056 ct2!306)))))))

(assert (=> d!2204162 (= lt!2530702 e!4240368)))

(declare-fun c!1313874 () Bool)

(assert (=> d!2204162 (= c!1313874 (is-Nil!68082 lt!2530635))))

(assert (=> d!2204162 (= (++!15643 lt!2530635 (exprs!7056 ct2!306)) lt!2530702)))

(declare-fun b!7053428 () Bool)

(assert (=> b!7053428 (= e!4240367 (or (not (= (exprs!7056 ct2!306) Nil!68082)) (= lt!2530702 lt!2530635)))))

(declare-fun b!7053426 () Bool)

(assert (=> b!7053426 (= e!4240368 (Cons!68082 (h!74530 lt!2530635) (++!15643 (t!381985 lt!2530635) (exprs!7056 ct2!306))))))

(assert (= (and d!2204162 c!1313874) b!7053425))

(assert (= (and d!2204162 (not c!1313874)) b!7053426))

(assert (= (and d!2204162 res!2879558) b!7053427))

(assert (= (and b!7053427 res!2879559) b!7053428))

(declare-fun m!7770490 () Bool)

(assert (=> b!7053427 m!7770490))

(declare-fun m!7770492 () Bool)

(assert (=> b!7053427 m!7770492))

(declare-fun m!7770494 () Bool)

(assert (=> b!7053427 m!7770494))

(declare-fun m!7770496 () Bool)

(assert (=> d!2204162 m!7770496))

(declare-fun m!7770498 () Bool)

(assert (=> d!2204162 m!7770498))

(declare-fun m!7770500 () Bool)

(assert (=> d!2204162 m!7770500))

(declare-fun m!7770502 () Bool)

(assert (=> b!7053426 m!7770502))

(assert (=> b!7053311 d!2204162))

(declare-fun b!7053439 () Bool)

(declare-fun e!4240377 () (Set Context!13112))

(declare-fun e!4240375 () (Set Context!13112))

(assert (=> b!7053439 (= e!4240377 e!4240375)))

(declare-fun c!1313879 () Bool)

(assert (=> b!7053439 (= c!1313879 (is-Cons!68082 (exprs!7056 lt!2530623)))))

(declare-fun d!2204166 () Bool)

(declare-fun c!1313880 () Bool)

(declare-fun e!4240376 () Bool)

(assert (=> d!2204166 (= c!1313880 e!4240376)))

(declare-fun res!2879562 () Bool)

(assert (=> d!2204166 (=> (not res!2879562) (not e!4240376))))

(assert (=> d!2204166 (= res!2879562 (is-Cons!68082 (exprs!7056 lt!2530623)))))

(assert (=> d!2204166 (= (derivationStepZipperUp!2144 lt!2530623 (h!74531 s!7408)) e!4240377)))

(declare-fun bm!640687 () Bool)

(declare-fun call!640692 () (Set Context!13112))

(assert (=> bm!640687 (= call!640692 (derivationStepZipperDown!2194 (h!74530 (exprs!7056 lt!2530623)) (Context!13113 (t!381985 (exprs!7056 lt!2530623))) (h!74531 s!7408)))))

(declare-fun b!7053440 () Bool)

(assert (=> b!7053440 (= e!4240377 (set.union call!640692 (derivationStepZipperUp!2144 (Context!13113 (t!381985 (exprs!7056 lt!2530623))) (h!74531 s!7408))))))

(declare-fun b!7053441 () Bool)

(assert (=> b!7053441 (= e!4240376 (nullable!7243 (h!74530 (exprs!7056 lt!2530623))))))

(declare-fun b!7053442 () Bool)

(assert (=> b!7053442 (= e!4240375 call!640692)))

(declare-fun b!7053443 () Bool)

(assert (=> b!7053443 (= e!4240375 (as set.empty (Set Context!13112)))))

(assert (= (and d!2204166 res!2879562) b!7053441))

(assert (= (and d!2204166 c!1313880) b!7053440))

(assert (= (and d!2204166 (not c!1313880)) b!7053439))

(assert (= (and b!7053439 c!1313879) b!7053442))

(assert (= (and b!7053439 (not c!1313879)) b!7053443))

(assert (= (or b!7053440 b!7053442) bm!640687))

(declare-fun m!7770504 () Bool)

(assert (=> bm!640687 m!7770504))

(declare-fun m!7770506 () Bool)

(assert (=> b!7053440 m!7770506))

(declare-fun m!7770508 () Bool)

(assert (=> b!7053441 m!7770508))

(assert (=> b!7053311 d!2204166))

(declare-fun d!2204168 () Bool)

(assert (=> d!2204168 (= (isEmpty!39710 (exprs!7056 lt!2530631)) (is-Nil!68082 (exprs!7056 lt!2530631)))))

(assert (=> b!7053316 d!2204168))

(declare-fun d!2204170 () Bool)

(assert (=> d!2204170 (forall!16501 (++!15643 (exprs!7056 lt!2530631) (exprs!7056 ct2!306)) lambda!419648)))

(declare-fun lt!2530706 () Unit!161793)

(assert (=> d!2204170 (= lt!2530706 (choose!53756 (exprs!7056 lt!2530631) (exprs!7056 ct2!306) lambda!419648))))

(assert (=> d!2204170 (forall!16501 (exprs!7056 lt!2530631) lambda!419648)))

(assert (=> d!2204170 (= (lemmaConcatPreservesForall!871 (exprs!7056 lt!2530631) (exprs!7056 ct2!306) lambda!419648) lt!2530706)))

(declare-fun bs!1876695 () Bool)

(assert (= bs!1876695 d!2204170))

(assert (=> bs!1876695 m!7770396))

(assert (=> bs!1876695 m!7770396))

(declare-fun m!7770516 () Bool)

(assert (=> bs!1876695 m!7770516))

(declare-fun m!7770518 () Bool)

(assert (=> bs!1876695 m!7770518))

(declare-fun m!7770520 () Bool)

(assert (=> bs!1876695 m!7770520))

(assert (=> b!7053310 d!2204170))

(declare-fun b!7053444 () Bool)

(declare-fun e!4240380 () (Set Context!13112))

(declare-fun e!4240378 () (Set Context!13112))

(assert (=> b!7053444 (= e!4240380 e!4240378)))

(declare-fun c!1313881 () Bool)

(assert (=> b!7053444 (= c!1313881 (is-Cons!68082 (exprs!7056 lt!2530633)))))

(declare-fun d!2204174 () Bool)

(declare-fun c!1313882 () Bool)

(declare-fun e!4240379 () Bool)

(assert (=> d!2204174 (= c!1313882 e!4240379)))

(declare-fun res!2879563 () Bool)

(assert (=> d!2204174 (=> (not res!2879563) (not e!4240379))))

(assert (=> d!2204174 (= res!2879563 (is-Cons!68082 (exprs!7056 lt!2530633)))))

(assert (=> d!2204174 (= (derivationStepZipperUp!2144 lt!2530633 (h!74531 s!7408)) e!4240380)))

(declare-fun bm!640688 () Bool)

(declare-fun call!640693 () (Set Context!13112))

(assert (=> bm!640688 (= call!640693 (derivationStepZipperDown!2194 (h!74530 (exprs!7056 lt!2530633)) (Context!13113 (t!381985 (exprs!7056 lt!2530633))) (h!74531 s!7408)))))

(declare-fun b!7053445 () Bool)

(assert (=> b!7053445 (= e!4240380 (set.union call!640693 (derivationStepZipperUp!2144 (Context!13113 (t!381985 (exprs!7056 lt!2530633))) (h!74531 s!7408))))))

(declare-fun b!7053446 () Bool)

(assert (=> b!7053446 (= e!4240379 (nullable!7243 (h!74530 (exprs!7056 lt!2530633))))))

(declare-fun b!7053447 () Bool)

(assert (=> b!7053447 (= e!4240378 call!640693)))

(declare-fun b!7053448 () Bool)

(assert (=> b!7053448 (= e!4240378 (as set.empty (Set Context!13112)))))

(assert (= (and d!2204174 res!2879563) b!7053446))

(assert (= (and d!2204174 c!1313882) b!7053445))

(assert (= (and d!2204174 (not c!1313882)) b!7053444))

(assert (= (and b!7053444 c!1313881) b!7053447))

(assert (= (and b!7053444 (not c!1313881)) b!7053448))

(assert (= (or b!7053445 b!7053447) bm!640688))

(declare-fun m!7770522 () Bool)

(assert (=> bm!640688 m!7770522))

(declare-fun m!7770524 () Bool)

(assert (=> b!7053445 m!7770524))

(declare-fun m!7770526 () Bool)

(assert (=> b!7053446 m!7770526))

(assert (=> b!7053310 d!2204174))

(declare-fun d!2204176 () Bool)

(declare-fun dynLambda!27610 (Int Context!13112) (Set Context!13112))

(assert (=> d!2204176 (= (flatMap!2486 lt!2530632 lambda!419649) (dynLambda!27610 lambda!419649 lt!2530633))))

(declare-fun lt!2530709 () Unit!161793)

(declare-fun choose!53757 ((Set Context!13112) Context!13112 Int) Unit!161793)

(assert (=> d!2204176 (= lt!2530709 (choose!53757 lt!2530632 lt!2530633 lambda!419649))))

(assert (=> d!2204176 (= lt!2530632 (set.insert lt!2530633 (as set.empty (Set Context!13112))))))

(assert (=> d!2204176 (= (lemmaFlatMapOnSingletonSet!1995 lt!2530632 lt!2530633 lambda!419649) lt!2530709)))

(declare-fun b_lambda!268547 () Bool)

(assert (=> (not b_lambda!268547) (not d!2204176)))

(declare-fun bs!1876696 () Bool)

(assert (= bs!1876696 d!2204176))

(assert (=> bs!1876696 m!7770362))

(declare-fun m!7770528 () Bool)

(assert (=> bs!1876696 m!7770528))

(declare-fun m!7770530 () Bool)

(assert (=> bs!1876696 m!7770530))

(assert (=> bs!1876696 m!7770400))

(assert (=> b!7053310 d!2204176))

(declare-fun bs!1876700 () Bool)

(declare-fun d!2204178 () Bool)

(assert (= bs!1876700 (and d!2204178 b!7053310)))

(declare-fun lambda!419691 () Int)

(assert (=> bs!1876700 (= lambda!419691 lambda!419649)))

(assert (=> d!2204178 true))

(assert (=> d!2204178 (= (derivationStepZipper!3010 lt!2530632 (h!74531 s!7408)) (flatMap!2486 lt!2530632 lambda!419691))))

(declare-fun bs!1876701 () Bool)

(assert (= bs!1876701 d!2204178))

(declare-fun m!7770540 () Bool)

(assert (=> bs!1876701 m!7770540))

(assert (=> b!7053310 d!2204178))

(declare-fun d!2204184 () Bool)

(declare-fun choose!53758 ((Set Context!13112) Int) (Set Context!13112))

(assert (=> d!2204184 (= (flatMap!2486 lt!2530632 lambda!419649) (choose!53758 lt!2530632 lambda!419649))))

(declare-fun bs!1876702 () Bool)

(assert (= bs!1876702 d!2204184))

(declare-fun m!7770542 () Bool)

(assert (=> bs!1876702 m!7770542))

(assert (=> b!7053310 d!2204184))

(assert (=> b!7053319 d!2204170))

(declare-fun bs!1876703 () Bool)

(declare-fun d!2204186 () Bool)

(assert (= bs!1876703 (and d!2204186 b!7053318)))

(declare-fun lambda!419692 () Int)

(assert (=> bs!1876703 (= lambda!419692 lambda!419648)))

(declare-fun bs!1876704 () Bool)

(assert (= bs!1876704 (and d!2204186 d!2204156)))

(assert (=> bs!1876704 (= lambda!419692 lambda!419685)))

(assert (=> d!2204186 (= (inv!86760 setElem!49780) (forall!16501 (exprs!7056 setElem!49780) lambda!419692))))

(declare-fun bs!1876705 () Bool)

(assert (= bs!1876705 d!2204186))

(declare-fun m!7770544 () Bool)

(assert (=> bs!1876705 m!7770544))

(assert (=> setNonEmpty!49780 d!2204186))

(declare-fun bs!1876706 () Bool)

(declare-fun d!2204188 () Bool)

(assert (= bs!1876706 (and d!2204188 b!7053318)))

(declare-fun lambda!419693 () Int)

(assert (=> bs!1876706 (= lambda!419693 lambda!419648)))

(declare-fun bs!1876707 () Bool)

(assert (= bs!1876707 (and d!2204188 d!2204156)))

(assert (=> bs!1876707 (= lambda!419693 lambda!419685)))

(declare-fun bs!1876708 () Bool)

(assert (= bs!1876708 (and d!2204188 d!2204186)))

(assert (=> bs!1876708 (= lambda!419693 lambda!419692)))

(assert (=> d!2204188 (= (inv!86760 lt!2530623) (forall!16501 (exprs!7056 lt!2530623) lambda!419693))))

(declare-fun bs!1876709 () Bool)

(assert (= bs!1876709 d!2204188))

(declare-fun m!7770546 () Bool)

(assert (=> bs!1876709 m!7770546))

(assert (=> b!7053323 d!2204188))

(assert (=> b!7053323 d!2204158))

(declare-fun b!7053451 () Bool)

(declare-fun e!4240382 () List!68206)

(assert (=> b!7053451 (= e!4240382 (exprs!7056 ct2!306))))

(declare-fun b!7053453 () Bool)

(declare-fun res!2879565 () Bool)

(declare-fun e!4240381 () Bool)

(assert (=> b!7053453 (=> (not res!2879565) (not e!4240381))))

(declare-fun lt!2530711 () List!68206)

(assert (=> b!7053453 (= res!2879565 (= (size!41144 lt!2530711) (+ (size!41144 (exprs!7056 lt!2530631)) (size!41144 (exprs!7056 ct2!306)))))))

(declare-fun d!2204190 () Bool)

(assert (=> d!2204190 e!4240381))

(declare-fun res!2879564 () Bool)

(assert (=> d!2204190 (=> (not res!2879564) (not e!4240381))))

(assert (=> d!2204190 (= res!2879564 (= (content!13671 lt!2530711) (set.union (content!13671 (exprs!7056 lt!2530631)) (content!13671 (exprs!7056 ct2!306)))))))

(assert (=> d!2204190 (= lt!2530711 e!4240382)))

(declare-fun c!1313885 () Bool)

(assert (=> d!2204190 (= c!1313885 (is-Nil!68082 (exprs!7056 lt!2530631)))))

(assert (=> d!2204190 (= (++!15643 (exprs!7056 lt!2530631) (exprs!7056 ct2!306)) lt!2530711)))

(declare-fun b!7053454 () Bool)

(assert (=> b!7053454 (= e!4240381 (or (not (= (exprs!7056 ct2!306) Nil!68082)) (= lt!2530711 (exprs!7056 lt!2530631))))))

(declare-fun b!7053452 () Bool)

(assert (=> b!7053452 (= e!4240382 (Cons!68082 (h!74530 (exprs!7056 lt!2530631)) (++!15643 (t!381985 (exprs!7056 lt!2530631)) (exprs!7056 ct2!306))))))

(assert (= (and d!2204190 c!1313885) b!7053451))

(assert (= (and d!2204190 (not c!1313885)) b!7053452))

(assert (= (and d!2204190 res!2879564) b!7053453))

(assert (= (and b!7053453 res!2879565) b!7053454))

(declare-fun m!7770548 () Bool)

(assert (=> b!7053453 m!7770548))

(declare-fun m!7770550 () Bool)

(assert (=> b!7053453 m!7770550))

(assert (=> b!7053453 m!7770494))

(declare-fun m!7770552 () Bool)

(assert (=> d!2204190 m!7770552))

(declare-fun m!7770554 () Bool)

(assert (=> d!2204190 m!7770554))

(assert (=> d!2204190 m!7770500))

(declare-fun m!7770556 () Bool)

(assert (=> b!7053452 m!7770556))

(assert (=> b!7053318 d!2204190))

(assert (=> b!7053318 d!2204170))

(declare-fun d!2204192 () Bool)

(declare-fun e!4240385 () Bool)

(assert (=> d!2204192 e!4240385))

(declare-fun res!2879568 () Bool)

(assert (=> d!2204192 (=> (not res!2879568) (not e!4240385))))

(declare-fun lt!2530714 () Context!13112)

(declare-fun dynLambda!27611 (Int Context!13112) Context!13112)

(assert (=> d!2204192 (= res!2879568 (= lt!2530628 (dynLambda!27611 lambda!419647 lt!2530714)))))

(declare-fun choose!53759 ((Set Context!13112) Int Context!13112) Context!13112)

(assert (=> d!2204192 (= lt!2530714 (choose!53759 z1!570 lambda!419647 lt!2530628))))

(assert (=> d!2204192 (set.member lt!2530628 (map!15879 z1!570 lambda!419647))))

(assert (=> d!2204192 (= (mapPost2!389 z1!570 lambda!419647 lt!2530628) lt!2530714)))

(declare-fun b!7053458 () Bool)

(assert (=> b!7053458 (= e!4240385 (set.member lt!2530714 z1!570))))

(assert (= (and d!2204192 res!2879568) b!7053458))

(declare-fun b_lambda!268549 () Bool)

(assert (=> (not b_lambda!268549) (not d!2204192)))

(declare-fun m!7770558 () Bool)

(assert (=> d!2204192 m!7770558))

(declare-fun m!7770560 () Bool)

(assert (=> d!2204192 m!7770560))

(declare-fun m!7770562 () Bool)

(assert (=> d!2204192 m!7770562))

(declare-fun m!7770564 () Bool)

(assert (=> d!2204192 m!7770564))

(declare-fun m!7770566 () Bool)

(assert (=> b!7053458 m!7770566))

(assert (=> b!7053318 d!2204192))

(declare-fun d!2204194 () Bool)

(declare-fun nullableFct!2768 (Regex!17560) Bool)

(assert (=> d!2204194 (= (nullable!7243 (h!74530 (exprs!7056 lt!2530631))) (nullableFct!2768 (h!74530 (exprs!7056 lt!2530631))))))

(declare-fun bs!1876710 () Bool)

(assert (= bs!1876710 d!2204194))

(declare-fun m!7770568 () Bool)

(assert (=> bs!1876710 m!7770568))

(assert (=> b!7053312 d!2204194))

(declare-fun d!2204196 () Bool)

(assert (=> d!2204196 (= (tail!13682 (exprs!7056 lt!2530631)) (t!381985 (exprs!7056 lt!2530631)))))

(assert (=> b!7053312 d!2204196))

(declare-fun bs!1876713 () Bool)

(declare-fun d!2204198 () Bool)

(assert (= bs!1876713 (and d!2204198 b!7053317)))

(declare-fun lambda!419699 () Int)

(assert (=> bs!1876713 (= lambda!419699 lambda!419646)))

(assert (=> d!2204198 true))

(assert (=> d!2204198 (exists!3543 lt!2530617 lambda!419699)))

(declare-fun lt!2530720 () Unit!161793)

(declare-fun choose!53760 (List!68208 List!68207) Unit!161793)

(assert (=> d!2204198 (= lt!2530720 (choose!53760 lt!2530617 s!7408))))

(declare-fun content!13672 (List!68208) (Set Context!13112))

(assert (=> d!2204198 (matchZipper!3100 (content!13672 lt!2530617) s!7408)))

(assert (=> d!2204198 (= (lemmaZipperMatchesExistsMatchingContext!481 lt!2530617 s!7408) lt!2530720)))

(declare-fun bs!1876714 () Bool)

(assert (= bs!1876714 d!2204198))

(declare-fun m!7770578 () Bool)

(assert (=> bs!1876714 m!7770578))

(declare-fun m!7770580 () Bool)

(assert (=> bs!1876714 m!7770580))

(declare-fun m!7770582 () Bool)

(assert (=> bs!1876714 m!7770582))

(assert (=> bs!1876714 m!7770582))

(declare-fun m!7770584 () Bool)

(assert (=> bs!1876714 m!7770584))

(assert (=> b!7053317 d!2204198))

(declare-fun d!2204202 () Bool)

(declare-fun e!4240388 () Bool)

(assert (=> d!2204202 e!4240388))

(declare-fun res!2879571 () Bool)

(assert (=> d!2204202 (=> (not res!2879571) (not e!4240388))))

(declare-fun lt!2530723 () List!68208)

(declare-fun noDuplicate!2683 (List!68208) Bool)

(assert (=> d!2204202 (= res!2879571 (noDuplicate!2683 lt!2530723))))

(declare-fun choose!53761 ((Set Context!13112)) List!68208)

(assert (=> d!2204202 (= lt!2530723 (choose!53761 lt!2530624))))

(assert (=> d!2204202 (= (toList!10901 lt!2530624) lt!2530723)))

(declare-fun b!7053463 () Bool)

(assert (=> b!7053463 (= e!4240388 (= (content!13672 lt!2530723) lt!2530624))))

(assert (= (and d!2204202 res!2879571) b!7053463))

(declare-fun m!7770588 () Bool)

(assert (=> d!2204202 m!7770588))

(declare-fun m!7770590 () Bool)

(assert (=> d!2204202 m!7770590))

(declare-fun m!7770592 () Bool)

(assert (=> b!7053463 m!7770592))

(assert (=> b!7053317 d!2204202))

(declare-fun bs!1876718 () Bool)

(declare-fun d!2204206 () Bool)

(assert (= bs!1876718 (and d!2204206 b!7053317)))

(declare-fun lambda!419705 () Int)

(assert (=> bs!1876718 (not (= lambda!419705 lambda!419646))))

(declare-fun bs!1876719 () Bool)

(assert (= bs!1876719 (and d!2204206 d!2204198)))

(assert (=> bs!1876719 (not (= lambda!419705 lambda!419699))))

(assert (=> d!2204206 true))

(declare-fun order!28299 () Int)

(declare-fun dynLambda!27612 (Int Int) Int)

(assert (=> d!2204206 (< (dynLambda!27612 order!28299 lambda!419646) (dynLambda!27612 order!28299 lambda!419705))))

(declare-fun forall!16502 (List!68208 Int) Bool)

(assert (=> d!2204206 (= (exists!3543 lt!2530617 lambda!419646) (not (forall!16502 lt!2530617 lambda!419705)))))

(declare-fun bs!1876720 () Bool)

(assert (= bs!1876720 d!2204206))

(declare-fun m!7770594 () Bool)

(assert (=> bs!1876720 m!7770594))

(assert (=> b!7053317 d!2204206))

(declare-fun d!2204208 () Bool)

(declare-fun c!1313890 () Bool)

(assert (=> d!2204208 (= c!1313890 (isEmpty!39712 s!7408))))

(declare-fun e!4240389 () Bool)

(assert (=> d!2204208 (= (matchZipper!3100 lt!2530626 s!7408) e!4240389)))

(declare-fun b!7053466 () Bool)

(assert (=> b!7053466 (= e!4240389 (nullableZipper!2649 lt!2530626))))

(declare-fun b!7053467 () Bool)

(assert (=> b!7053467 (= e!4240389 (matchZipper!3100 (derivationStepZipper!3010 lt!2530626 (head!14350 s!7408)) (tail!13684 s!7408)))))

(assert (= (and d!2204208 c!1313890) b!7053466))

(assert (= (and d!2204208 (not c!1313890)) b!7053467))

(assert (=> d!2204208 m!7770458))

(declare-fun m!7770596 () Bool)

(assert (=> b!7053466 m!7770596))

(assert (=> b!7053467 m!7770462))

(assert (=> b!7053467 m!7770462))

(declare-fun m!7770598 () Bool)

(assert (=> b!7053467 m!7770598))

(assert (=> b!7053467 m!7770466))

(assert (=> b!7053467 m!7770598))

(assert (=> b!7053467 m!7770466))

(declare-fun m!7770600 () Bool)

(assert (=> b!7053467 m!7770600))

(assert (=> b!7053317 d!2204208))

(declare-fun d!2204210 () Bool)

(declare-fun e!4240395 () Bool)

(assert (=> d!2204210 e!4240395))

(declare-fun res!2879577 () Bool)

(assert (=> d!2204210 (=> (not res!2879577) (not e!4240395))))

(declare-fun lt!2530729 () Context!13112)

(declare-fun dynLambda!27613 (Int Context!13112) Bool)

(assert (=> d!2204210 (= res!2879577 (dynLambda!27613 lambda!419646 lt!2530729))))

(declare-fun getWitness!1619 (List!68208 Int) Context!13112)

(assert (=> d!2204210 (= lt!2530729 (getWitness!1619 (toList!10901 lt!2530624) lambda!419646))))

(declare-fun exists!3545 ((Set Context!13112) Int) Bool)

(assert (=> d!2204210 (exists!3545 lt!2530624 lambda!419646)))

(assert (=> d!2204210 (= (getWitness!1617 lt!2530624 lambda!419646) lt!2530729)))

(declare-fun b!7053473 () Bool)

(assert (=> b!7053473 (= e!4240395 (set.member lt!2530729 lt!2530624))))

(assert (= (and d!2204210 res!2879577) b!7053473))

(declare-fun b_lambda!268551 () Bool)

(assert (=> (not b_lambda!268551) (not d!2204210)))

(declare-fun m!7770608 () Bool)

(assert (=> d!2204210 m!7770608))

(assert (=> d!2204210 m!7770392))

(assert (=> d!2204210 m!7770392))

(declare-fun m!7770610 () Bool)

(assert (=> d!2204210 m!7770610))

(declare-fun m!7770612 () Bool)

(assert (=> d!2204210 m!7770612))

(declare-fun m!7770614 () Bool)

(assert (=> b!7053473 m!7770614))

(assert (=> b!7053317 d!2204210))

(declare-fun b!7053478 () Bool)

(declare-fun e!4240398 () Bool)

(declare-fun tp!1939849 () Bool)

(assert (=> b!7053478 (= e!4240398 (and tp_is_empty!44345 tp!1939849))))

(assert (=> b!7053321 (= tp!1939831 e!4240398)))

(assert (= (and b!7053321 (is-Cons!68083 (t!381986 s!7408))) b!7053478))

(declare-fun b!7053483 () Bool)

(declare-fun e!4240401 () Bool)

(declare-fun tp!1939854 () Bool)

(declare-fun tp!1939855 () Bool)

(assert (=> b!7053483 (= e!4240401 (and tp!1939854 tp!1939855))))

(assert (=> b!7053315 (= tp!1939834 e!4240401)))

(assert (= (and b!7053315 (is-Cons!68082 (exprs!7056 setElem!49780))) b!7053483))

(declare-fun condSetEmpty!49786 () Bool)

(assert (=> setNonEmpty!49780 (= condSetEmpty!49786 (= setRest!49780 (as set.empty (Set Context!13112))))))

(declare-fun setRes!49786 () Bool)

(assert (=> setNonEmpty!49780 (= tp!1939833 setRes!49786)))

(declare-fun setIsEmpty!49786 () Bool)

(assert (=> setIsEmpty!49786 setRes!49786))

(declare-fun setNonEmpty!49786 () Bool)

(declare-fun e!4240404 () Bool)

(declare-fun tp!1939861 () Bool)

(declare-fun setElem!49786 () Context!13112)

(assert (=> setNonEmpty!49786 (= setRes!49786 (and tp!1939861 (inv!86760 setElem!49786) e!4240404))))

(declare-fun setRest!49786 () (Set Context!13112))

(assert (=> setNonEmpty!49786 (= setRest!49780 (set.union (set.insert setElem!49786 (as set.empty (Set Context!13112))) setRest!49786))))

(declare-fun b!7053488 () Bool)

(declare-fun tp!1939860 () Bool)

(assert (=> b!7053488 (= e!4240404 tp!1939860)))

(assert (= (and setNonEmpty!49780 condSetEmpty!49786) setIsEmpty!49786))

(assert (= (and setNonEmpty!49780 (not condSetEmpty!49786)) setNonEmpty!49786))

(assert (= setNonEmpty!49786 b!7053488))

(declare-fun m!7770616 () Bool)

(assert (=> setNonEmpty!49786 m!7770616))

(declare-fun b!7053489 () Bool)

(declare-fun e!4240405 () Bool)

(declare-fun tp!1939862 () Bool)

(declare-fun tp!1939863 () Bool)

(assert (=> b!7053489 (= e!4240405 (and tp!1939862 tp!1939863))))

(assert (=> b!7053322 (= tp!1939832 e!4240405)))

(assert (= (and b!7053322 (is-Cons!68082 (exprs!7056 ct2!306))) b!7053489))

(declare-fun b_lambda!268553 () Bool)

(assert (= b_lambda!268549 (or b!7053318 b_lambda!268553)))

(declare-fun bs!1876721 () Bool)

(declare-fun d!2204214 () Bool)

(assert (= bs!1876721 (and d!2204214 b!7053318)))

(declare-fun lt!2530730 () Unit!161793)

(assert (=> bs!1876721 (= lt!2530730 (lemmaConcatPreservesForall!871 (exprs!7056 lt!2530714) (exprs!7056 ct2!306) lambda!419648))))

(assert (=> bs!1876721 (= (dynLambda!27611 lambda!419647 lt!2530714) (Context!13113 (++!15643 (exprs!7056 lt!2530714) (exprs!7056 ct2!306))))))

(declare-fun m!7770618 () Bool)

(assert (=> bs!1876721 m!7770618))

(declare-fun m!7770620 () Bool)

(assert (=> bs!1876721 m!7770620))

(assert (=> d!2204192 d!2204214))

(declare-fun b_lambda!268555 () Bool)

(assert (= b_lambda!268547 (or b!7053310 b_lambda!268555)))

(declare-fun bs!1876722 () Bool)

(declare-fun d!2204216 () Bool)

(assert (= bs!1876722 (and d!2204216 b!7053310)))

(assert (=> bs!1876722 (= (dynLambda!27610 lambda!419649 lt!2530633) (derivationStepZipperUp!2144 lt!2530633 (h!74531 s!7408)))))

(assert (=> bs!1876722 m!7770358))

(assert (=> d!2204176 d!2204216))

(declare-fun b_lambda!268557 () Bool)

(assert (= b_lambda!268551 (or b!7053317 b_lambda!268557)))

(declare-fun bs!1876723 () Bool)

(declare-fun d!2204218 () Bool)

(assert (= bs!1876723 (and d!2204218 b!7053317)))

(assert (=> bs!1876723 (= (dynLambda!27613 lambda!419646 lt!2530729) (matchZipper!3100 (set.insert lt!2530729 (as set.empty (Set Context!13112))) s!7408))))

(declare-fun m!7770622 () Bool)

(assert (=> bs!1876723 m!7770622))

(assert (=> bs!1876723 m!7770622))

(declare-fun m!7770624 () Bool)

(assert (=> bs!1876723 m!7770624))

(assert (=> d!2204210 d!2204218))

(push 1)

(assert (not d!2204178))

(assert (not setNonEmpty!49786))

(assert (not b!7053426))

(assert (not b!7053467))

(assert (not b!7053452))

(assert (not b!7053466))

(assert (not b!7053382))

(assert (not d!2204170))

(assert (not d!2204210))

(assert (not d!2204186))

(assert (not d!2204198))

(assert (not b!7053440))

(assert (not d!2204188))

(assert (not d!2204156))

(assert (not bs!1876722))

(assert (not d!2204206))

(assert (not b!7053488))

(assert (not bm!640680))

(assert (not b!7053413))

(assert (not b!7053445))

(assert (not d!2204202))

(assert (not d!2204208))

(assert (not d!2204162))

(assert (not d!2204190))

(assert (not b!7053446))

(assert (not d!2204184))

(assert (not bm!640682))

(assert (not d!2204152))

(assert tp_is_empty!44345)

(assert (not d!2204194))

(assert (not b_lambda!268557))

(assert (not bm!640683))

(assert (not b!7053453))

(assert (not d!2204176))

(assert (not d!2204158))

(assert (not b_lambda!268553))

(assert (not b!7053478))

(assert (not b!7053463))

(assert (not b!7053483))

(assert (not b!7053427))

(assert (not bm!640687))

(assert (not bm!640688))

(assert (not bs!1876723))

(assert (not b_lambda!268555))

(assert (not b!7053441))

(assert (not d!2204154))

(assert (not b!7053489))

(assert (not d!2204192))

(assert (not bs!1876721))

(assert (not b!7053383))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

