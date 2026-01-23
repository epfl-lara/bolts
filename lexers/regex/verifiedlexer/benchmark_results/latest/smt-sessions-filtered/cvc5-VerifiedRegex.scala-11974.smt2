; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!670834 () Bool)

(assert start!670834)

(declare-fun b!6985383 () Bool)

(assert (=> b!6985383 true))

(declare-fun b!6985381 () Bool)

(assert (=> b!6985381 true))

(declare-fun b!6985387 () Bool)

(assert (=> b!6985387 true))

(declare-fun b!6985379 () Bool)

(declare-fun e!4198438 () Bool)

(declare-fun e!4198445 () Bool)

(assert (=> b!6985379 (= e!4198438 e!4198445)))

(declare-fun res!2848499 () Bool)

(assert (=> b!6985379 (=> res!2848499 e!4198445)))

(declare-datatypes ((C!34658 0))(
  ( (C!34659 (val!27031 Int)) )
))
(declare-datatypes ((Regex!17194 0))(
  ( (ElementMatch!17194 (c!1295296 C!34658)) (Concat!26039 (regOne!34900 Regex!17194) (regTwo!34900 Regex!17194)) (EmptyExpr!17194) (Star!17194 (reg!17523 Regex!17194)) (EmptyLang!17194) (Union!17194 (regOne!34901 Regex!17194) (regTwo!34901 Regex!17194)) )
))
(declare-datatypes ((List!67127 0))(
  ( (Nil!67003) (Cons!67003 (h!73451 Regex!17194) (t!380874 List!67127)) )
))
(declare-datatypes ((Context!12380 0))(
  ( (Context!12381 (exprs!6690 List!67127)) )
))
(declare-fun lt!2483778 () (Set Context!12380))

(declare-fun lt!2483793 () (Set Context!12380))

(assert (=> b!6985379 (= res!2848499 (not (= lt!2483778 lt!2483793)))))

(declare-fun lt!2483780 () Context!12380)

(assert (=> b!6985379 (= lt!2483778 (set.insert lt!2483780 (as set.empty (Set Context!12380))))))

(declare-datatypes ((Unit!161043 0))(
  ( (Unit!161044) )
))
(declare-fun lt!2483790 () Unit!161043)

(declare-fun lt!2483789 () Context!12380)

(declare-fun ct2!306 () Context!12380)

(declare-fun lambda!400168 () Int)

(declare-fun lemmaConcatPreservesForall!530 (List!67127 List!67127 Int) Unit!161043)

(assert (=> b!6985379 (= lt!2483790 (lemmaConcatPreservesForall!530 (exprs!6690 lt!2483789) (exprs!6690 ct2!306) lambda!400168))))

(declare-fun b!6985380 () Bool)

(declare-fun res!2848493 () Bool)

(declare-fun e!4198441 () Bool)

(assert (=> b!6985380 (=> res!2848493 e!4198441)))

(declare-fun lt!2483795 () Context!12380)

(declare-fun lt!2483785 () (Set Context!12380))

(assert (=> b!6985380 (= res!2848493 (not (set.member lt!2483795 lt!2483785)))))

(assert (=> b!6985381 (= e!4198441 e!4198438)))

(declare-fun res!2848492 () Bool)

(assert (=> b!6985381 (=> res!2848492 e!4198438)))

(declare-fun z1!570 () (Set Context!12380))

(assert (=> b!6985381 (= res!2848492 (or (not (= lt!2483780 lt!2483795)) (not (set.member lt!2483789 z1!570))))))

(declare-fun ++!15139 (List!67127 List!67127) List!67127)

(assert (=> b!6985381 (= lt!2483780 (Context!12381 (++!15139 (exprs!6690 lt!2483789) (exprs!6690 ct2!306))))))

(declare-fun lt!2483792 () Unit!161043)

(assert (=> b!6985381 (= lt!2483792 (lemmaConcatPreservesForall!530 (exprs!6690 lt!2483789) (exprs!6690 ct2!306) lambda!400168))))

(declare-fun lambda!400167 () Int)

(declare-fun mapPost2!49 ((Set Context!12380) Int Context!12380) Context!12380)

(assert (=> b!6985381 (= lt!2483789 (mapPost2!49 z1!570 lambda!400167 lt!2483795))))

(declare-fun b!6985382 () Bool)

(declare-fun e!4198435 () Bool)

(declare-fun e!4198439 () Bool)

(assert (=> b!6985382 (= e!4198435 e!4198439)))

(declare-fun res!2848495 () Bool)

(assert (=> b!6985382 (=> res!2848495 e!4198439)))

(declare-fun lt!2483782 () (Set Context!12380))

(declare-fun lt!2483769 () (Set Context!12380))

(assert (=> b!6985382 (= res!2848495 (not (= lt!2483782 lt!2483769)))))

(declare-fun lt!2483771 () (Set Context!12380))

(declare-fun lt!2483787 () (Set Context!12380))

(assert (=> b!6985382 (= lt!2483769 (set.union lt!2483771 lt!2483787))))

(declare-fun lt!2483774 () Context!12380)

(declare-datatypes ((List!67128 0))(
  ( (Nil!67004) (Cons!67004 (h!73452 C!34658) (t!380875 List!67128)) )
))
(declare-fun s!7408 () List!67128)

(declare-fun derivationStepZipperUp!1844 (Context!12380 C!34658) (Set Context!12380))

(assert (=> b!6985382 (= lt!2483787 (derivationStepZipperUp!1844 lt!2483774 (h!73452 s!7408)))))

(declare-fun derivationStepZipperDown!1912 (Regex!17194 Context!12380 C!34658) (Set Context!12380))

(assert (=> b!6985382 (= lt!2483771 (derivationStepZipperDown!1912 (h!73451 (exprs!6690 lt!2483789)) lt!2483774 (h!73452 s!7408)))))

(declare-fun lt!2483781 () List!67127)

(assert (=> b!6985382 (= lt!2483774 (Context!12381 (++!15139 lt!2483781 (exprs!6690 ct2!306))))))

(declare-fun lt!2483794 () Unit!161043)

(assert (=> b!6985382 (= lt!2483794 (lemmaConcatPreservesForall!530 lt!2483781 (exprs!6690 ct2!306) lambda!400168))))

(declare-fun lt!2483783 () Unit!161043)

(assert (=> b!6985382 (= lt!2483783 (lemmaConcatPreservesForall!530 lt!2483781 (exprs!6690 ct2!306) lambda!400168))))

(declare-fun setElem!47670 () Context!12380)

(declare-fun e!4198444 () Bool)

(declare-fun setRes!47670 () Bool)

(declare-fun tp!1929016 () Bool)

(declare-fun setNonEmpty!47670 () Bool)

(declare-fun inv!85845 (Context!12380) Bool)

(assert (=> setNonEmpty!47670 (= setRes!47670 (and tp!1929016 (inv!85845 setElem!47670) e!4198444))))

(declare-fun setRest!47670 () (Set Context!12380))

(assert (=> setNonEmpty!47670 (= z1!570 (set.union (set.insert setElem!47670 (as set.empty (Set Context!12380))) setRest!47670))))

(declare-fun res!2848502 () Bool)

(declare-fun e!4198443 () Bool)

(assert (=> start!670834 (=> (not res!2848502) (not e!4198443))))

(declare-fun matchZipper!2734 ((Set Context!12380) List!67128) Bool)

(assert (=> start!670834 (= res!2848502 (matchZipper!2734 lt!2483785 s!7408))))

(declare-fun appendTo!315 ((Set Context!12380) Context!12380) (Set Context!12380))

(assert (=> start!670834 (= lt!2483785 (appendTo!315 z1!570 ct2!306))))

(assert (=> start!670834 e!4198443))

(declare-fun condSetEmpty!47670 () Bool)

(assert (=> start!670834 (= condSetEmpty!47670 (= z1!570 (as set.empty (Set Context!12380))))))

(assert (=> start!670834 setRes!47670))

(declare-fun e!4198440 () Bool)

(assert (=> start!670834 (and (inv!85845 ct2!306) e!4198440)))

(declare-fun e!4198442 () Bool)

(assert (=> start!670834 e!4198442))

(assert (=> b!6985383 (= e!4198443 (not e!4198441))))

(declare-fun res!2848500 () Bool)

(assert (=> b!6985383 (=> res!2848500 e!4198441)))

(assert (=> b!6985383 (= res!2848500 (not (matchZipper!2734 lt!2483793 s!7408)))))

(assert (=> b!6985383 (= lt!2483793 (set.insert lt!2483795 (as set.empty (Set Context!12380))))))

(declare-fun lambda!400166 () Int)

(declare-fun getWitness!1079 ((Set Context!12380) Int) Context!12380)

(assert (=> b!6985383 (= lt!2483795 (getWitness!1079 lt!2483785 lambda!400166))))

(declare-datatypes ((List!67129 0))(
  ( (Nil!67005) (Cons!67005 (h!73453 Context!12380) (t!380876 List!67129)) )
))
(declare-fun lt!2483777 () List!67129)

(declare-fun exists!2968 (List!67129 Int) Bool)

(assert (=> b!6985383 (exists!2968 lt!2483777 lambda!400166)))

(declare-fun lt!2483773 () Unit!161043)

(declare-fun lemmaZipperMatchesExistsMatchingContext!163 (List!67129 List!67128) Unit!161043)

(assert (=> b!6985383 (= lt!2483773 (lemmaZipperMatchesExistsMatchingContext!163 lt!2483777 s!7408))))

(declare-fun toList!10554 ((Set Context!12380)) List!67129)

(assert (=> b!6985383 (= lt!2483777 (toList!10554 lt!2483785))))

(declare-fun b!6985384 () Bool)

(declare-fun e!4198448 () Bool)

(assert (=> b!6985384 (= e!4198448 (matchZipper!2734 lt!2483787 (t!380875 s!7408)))))

(declare-fun b!6985385 () Bool)

(declare-fun res!2848501 () Bool)

(declare-fun e!4198437 () Bool)

(assert (=> b!6985385 (=> res!2848501 e!4198437)))

(declare-fun isEmpty!39111 (List!67127) Bool)

(assert (=> b!6985385 (= res!2848501 (isEmpty!39111 (exprs!6690 lt!2483789)))))

(declare-fun b!6985386 () Bool)

(declare-fun tp_is_empty!43613 () Bool)

(declare-fun tp!1929017 () Bool)

(assert (=> b!6985386 (= e!4198442 (and tp_is_empty!43613 tp!1929017))))

(assert (=> b!6985387 (= e!4198445 e!4198437)))

(declare-fun res!2848488 () Bool)

(assert (=> b!6985387 (=> res!2848488 e!4198437)))

(declare-fun derivationStepZipper!2674 ((Set Context!12380) C!34658) (Set Context!12380))

(assert (=> b!6985387 (= res!2848488 (not (= (derivationStepZipper!2674 lt!2483778 (h!73452 s!7408)) lt!2483782)))))

(declare-fun lambda!400169 () Int)

(declare-fun flatMap!2180 ((Set Context!12380) Int) (Set Context!12380))

(assert (=> b!6985387 (= (flatMap!2180 lt!2483778 lambda!400169) (derivationStepZipperUp!1844 lt!2483780 (h!73452 s!7408)))))

(declare-fun lt!2483788 () Unit!161043)

(declare-fun lemmaFlatMapOnSingletonSet!1695 ((Set Context!12380) Context!12380 Int) Unit!161043)

(assert (=> b!6985387 (= lt!2483788 (lemmaFlatMapOnSingletonSet!1695 lt!2483778 lt!2483780 lambda!400169))))

(assert (=> b!6985387 (= lt!2483782 (derivationStepZipperUp!1844 lt!2483780 (h!73452 s!7408)))))

(declare-fun lt!2483786 () Unit!161043)

(assert (=> b!6985387 (= lt!2483786 (lemmaConcatPreservesForall!530 (exprs!6690 lt!2483789) (exprs!6690 ct2!306) lambda!400168))))

(declare-fun b!6985388 () Bool)

(declare-fun res!2848489 () Bool)

(assert (=> b!6985388 (=> (not res!2848489) (not e!4198443))))

(assert (=> b!6985388 (= res!2848489 (is-Cons!67004 s!7408))))

(declare-fun b!6985389 () Bool)

(declare-fun tp!1929015 () Bool)

(assert (=> b!6985389 (= e!4198444 tp!1929015)))

(declare-fun b!6985390 () Bool)

(assert (=> b!6985390 (= e!4198437 e!4198435)))

(declare-fun res!2848496 () Bool)

(assert (=> b!6985390 (=> res!2848496 e!4198435)))

(declare-fun nullable!6954 (Regex!17194) Bool)

(assert (=> b!6985390 (= res!2848496 (not (nullable!6954 (h!73451 (exprs!6690 lt!2483789)))))))

(declare-fun tail!13187 (List!67127) List!67127)

(assert (=> b!6985390 (= lt!2483781 (tail!13187 (exprs!6690 lt!2483789)))))

(declare-fun b!6985391 () Bool)

(declare-fun res!2848487 () Bool)

(declare-fun e!4198436 () Bool)

(assert (=> b!6985391 (=> res!2848487 e!4198436)))

(declare-fun lt!2483784 () Bool)

(assert (=> b!6985391 (= res!2848487 (not lt!2483784))))

(declare-fun b!6985392 () Bool)

(assert (=> b!6985392 (= e!4198439 e!4198436)))

(declare-fun res!2848490 () Bool)

(assert (=> b!6985392 (=> res!2848490 e!4198436)))

(declare-fun e!4198446 () Bool)

(assert (=> b!6985392 (= res!2848490 e!4198446)))

(declare-fun res!2848497 () Bool)

(assert (=> b!6985392 (=> (not res!2848497) (not e!4198446))))

(declare-fun lt!2483776 () Bool)

(assert (=> b!6985392 (= res!2848497 (not (= lt!2483784 lt!2483776)))))

(assert (=> b!6985392 (= lt!2483784 (matchZipper!2734 lt!2483782 (t!380875 s!7408)))))

(declare-fun lt!2483772 () Unit!161043)

(assert (=> b!6985392 (= lt!2483772 (lemmaConcatPreservesForall!530 lt!2483781 (exprs!6690 ct2!306) lambda!400168))))

(assert (=> b!6985392 (= (matchZipper!2734 lt!2483769 (t!380875 s!7408)) e!4198448)))

(declare-fun res!2848494 () Bool)

(assert (=> b!6985392 (=> res!2848494 e!4198448)))

(assert (=> b!6985392 (= res!2848494 lt!2483776)))

(assert (=> b!6985392 (= lt!2483776 (matchZipper!2734 lt!2483771 (t!380875 s!7408)))))

(declare-fun lt!2483791 () Unit!161043)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1367 ((Set Context!12380) (Set Context!12380) List!67128) Unit!161043)

(assert (=> b!6985392 (= lt!2483791 (lemmaZipperConcatMatchesSameAsBothZippers!1367 lt!2483771 lt!2483787 (t!380875 s!7408)))))

(declare-fun lt!2483770 () Unit!161043)

(assert (=> b!6985392 (= lt!2483770 (lemmaConcatPreservesForall!530 lt!2483781 (exprs!6690 ct2!306) lambda!400168))))

(declare-fun lt!2483775 () Unit!161043)

(assert (=> b!6985392 (= lt!2483775 (lemmaConcatPreservesForall!530 lt!2483781 (exprs!6690 ct2!306) lambda!400168))))

(declare-fun b!6985393 () Bool)

(assert (=> b!6985393 (= e!4198446 (not (matchZipper!2734 lt!2483787 (t!380875 s!7408))))))

(declare-fun lt!2483779 () Unit!161043)

(assert (=> b!6985393 (= lt!2483779 (lemmaConcatPreservesForall!530 lt!2483781 (exprs!6690 ct2!306) lambda!400168))))

(declare-fun b!6985394 () Bool)

(declare-fun e!4198447 () Bool)

(declare-fun forall!16098 (List!67127 Int) Bool)

(assert (=> b!6985394 (= e!4198447 (forall!16098 (exprs!6690 ct2!306) lambda!400168))))

(declare-fun b!6985395 () Bool)

(declare-fun res!2848498 () Bool)

(assert (=> b!6985395 (=> res!2848498 e!4198437)))

(assert (=> b!6985395 (= res!2848498 (not (is-Cons!67003 (exprs!6690 lt!2483789))))))

(declare-fun b!6985396 () Bool)

(assert (=> b!6985396 (= e!4198436 e!4198447)))

(declare-fun res!2848491 () Bool)

(assert (=> b!6985396 (=> res!2848491 e!4198447)))

(assert (=> b!6985396 (= res!2848491 (not (forall!16098 lt!2483781 lambda!400168)))))

(declare-fun setIsEmpty!47670 () Bool)

(assert (=> setIsEmpty!47670 setRes!47670))

(declare-fun b!6985397 () Bool)

(declare-fun tp!1929018 () Bool)

(assert (=> b!6985397 (= e!4198440 tp!1929018)))

(assert (= (and start!670834 res!2848502) b!6985388))

(assert (= (and b!6985388 res!2848489) b!6985383))

(assert (= (and b!6985383 (not res!2848500)) b!6985380))

(assert (= (and b!6985380 (not res!2848493)) b!6985381))

(assert (= (and b!6985381 (not res!2848492)) b!6985379))

(assert (= (and b!6985379 (not res!2848499)) b!6985387))

(assert (= (and b!6985387 (not res!2848488)) b!6985395))

(assert (= (and b!6985395 (not res!2848498)) b!6985385))

(assert (= (and b!6985385 (not res!2848501)) b!6985390))

(assert (= (and b!6985390 (not res!2848496)) b!6985382))

(assert (= (and b!6985382 (not res!2848495)) b!6985392))

(assert (= (and b!6985392 (not res!2848494)) b!6985384))

(assert (= (and b!6985392 res!2848497) b!6985393))

(assert (= (and b!6985392 (not res!2848490)) b!6985391))

(assert (= (and b!6985391 (not res!2848487)) b!6985396))

(assert (= (and b!6985396 (not res!2848491)) b!6985394))

(assert (= (and start!670834 condSetEmpty!47670) setIsEmpty!47670))

(assert (= (and start!670834 (not condSetEmpty!47670)) setNonEmpty!47670))

(assert (= setNonEmpty!47670 b!6985389))

(assert (= start!670834 b!6985397))

(assert (= (and start!670834 (is-Cons!67004 s!7408)) b!6985386))

(declare-fun m!7672884 () Bool)

(assert (=> b!6985379 m!7672884))

(declare-fun m!7672886 () Bool)

(assert (=> b!6985379 m!7672886))

(declare-fun m!7672888 () Bool)

(assert (=> setNonEmpty!47670 m!7672888))

(declare-fun m!7672890 () Bool)

(assert (=> b!6985380 m!7672890))

(declare-fun m!7672892 () Bool)

(assert (=> b!6985381 m!7672892))

(declare-fun m!7672894 () Bool)

(assert (=> b!6985381 m!7672894))

(assert (=> b!6985381 m!7672886))

(declare-fun m!7672896 () Bool)

(assert (=> b!6985381 m!7672896))

(declare-fun m!7672898 () Bool)

(assert (=> b!6985384 m!7672898))

(assert (=> b!6985393 m!7672898))

(declare-fun m!7672900 () Bool)

(assert (=> b!6985393 m!7672900))

(declare-fun m!7672902 () Bool)

(assert (=> b!6985382 m!7672902))

(assert (=> b!6985382 m!7672900))

(declare-fun m!7672904 () Bool)

(assert (=> b!6985382 m!7672904))

(assert (=> b!6985382 m!7672900))

(declare-fun m!7672906 () Bool)

(assert (=> b!6985382 m!7672906))

(declare-fun m!7672908 () Bool)

(assert (=> b!6985385 m!7672908))

(declare-fun m!7672910 () Bool)

(assert (=> b!6985394 m!7672910))

(declare-fun m!7672912 () Bool)

(assert (=> b!6985396 m!7672912))

(assert (=> b!6985392 m!7672900))

(declare-fun m!7672914 () Bool)

(assert (=> b!6985392 m!7672914))

(assert (=> b!6985392 m!7672900))

(declare-fun m!7672916 () Bool)

(assert (=> b!6985392 m!7672916))

(declare-fun m!7672918 () Bool)

(assert (=> b!6985392 m!7672918))

(assert (=> b!6985392 m!7672900))

(declare-fun m!7672920 () Bool)

(assert (=> b!6985392 m!7672920))

(declare-fun m!7672922 () Bool)

(assert (=> b!6985383 m!7672922))

(declare-fun m!7672924 () Bool)

(assert (=> b!6985383 m!7672924))

(declare-fun m!7672926 () Bool)

(assert (=> b!6985383 m!7672926))

(declare-fun m!7672928 () Bool)

(assert (=> b!6985383 m!7672928))

(declare-fun m!7672930 () Bool)

(assert (=> b!6985383 m!7672930))

(declare-fun m!7672932 () Bool)

(assert (=> b!6985383 m!7672932))

(declare-fun m!7672934 () Bool)

(assert (=> b!6985390 m!7672934))

(declare-fun m!7672936 () Bool)

(assert (=> b!6985390 m!7672936))

(declare-fun m!7672938 () Bool)

(assert (=> b!6985387 m!7672938))

(declare-fun m!7672940 () Bool)

(assert (=> b!6985387 m!7672940))

(declare-fun m!7672942 () Bool)

(assert (=> b!6985387 m!7672942))

(declare-fun m!7672944 () Bool)

(assert (=> b!6985387 m!7672944))

(assert (=> b!6985387 m!7672886))

(declare-fun m!7672946 () Bool)

(assert (=> start!670834 m!7672946))

(declare-fun m!7672948 () Bool)

(assert (=> start!670834 m!7672948))

(declare-fun m!7672950 () Bool)

(assert (=> start!670834 m!7672950))

(push 1)

(assert (not setNonEmpty!47670))

(assert (not b!6985383))

(assert (not b!6985384))

(assert (not b!6985379))

(assert (not b!6985390))

(assert (not b!6985389))

(assert (not b!6985394))

(assert (not b!6985385))

(assert (not b!6985397))

(assert (not b!6985386))

(assert (not start!670834))

(assert (not b!6985393))

(assert tp_is_empty!43613)

(assert (not b!6985387))

(assert (not b!6985382))

(assert (not b!6985392))

(assert (not b!6985381))

(assert (not b!6985396))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2175797 () Bool)

(assert (=> d!2175797 (forall!16098 (++!15139 (exprs!6690 lt!2483789) (exprs!6690 ct2!306)) lambda!400168)))

(declare-fun lt!2483881 () Unit!161043)

(declare-fun choose!52152 (List!67127 List!67127 Int) Unit!161043)

(assert (=> d!2175797 (= lt!2483881 (choose!52152 (exprs!6690 lt!2483789) (exprs!6690 ct2!306) lambda!400168))))

(assert (=> d!2175797 (forall!16098 (exprs!6690 lt!2483789) lambda!400168)))

(assert (=> d!2175797 (= (lemmaConcatPreservesForall!530 (exprs!6690 lt!2483789) (exprs!6690 ct2!306) lambda!400168) lt!2483881)))

(declare-fun bs!1861623 () Bool)

(assert (= bs!1861623 d!2175797))

(assert (=> bs!1861623 m!7672894))

(assert (=> bs!1861623 m!7672894))

(declare-fun m!7673020 () Bool)

(assert (=> bs!1861623 m!7673020))

(declare-fun m!7673022 () Bool)

(assert (=> bs!1861623 m!7673022))

(declare-fun m!7673024 () Bool)

(assert (=> bs!1861623 m!7673024))

(assert (=> b!6985379 d!2175797))

(declare-fun d!2175799 () Bool)

(declare-fun nullableFct!2622 (Regex!17194) Bool)

(assert (=> d!2175799 (= (nullable!6954 (h!73451 (exprs!6690 lt!2483789))) (nullableFct!2622 (h!73451 (exprs!6690 lt!2483789))))))

(declare-fun bs!1861624 () Bool)

(assert (= bs!1861624 d!2175799))

(declare-fun m!7673026 () Bool)

(assert (=> bs!1861624 m!7673026))

(assert (=> b!6985390 d!2175799))

(declare-fun d!2175801 () Bool)

(assert (=> d!2175801 (= (tail!13187 (exprs!6690 lt!2483789)) (t!380874 (exprs!6690 lt!2483789)))))

(assert (=> b!6985390 d!2175801))

(declare-fun b!6985476 () Bool)

(declare-fun e!4198496 () List!67127)

(assert (=> b!6985476 (= e!4198496 (Cons!67003 (h!73451 (exprs!6690 lt!2483789)) (++!15139 (t!380874 (exprs!6690 lt!2483789)) (exprs!6690 ct2!306))))))

(declare-fun d!2175803 () Bool)

(declare-fun e!4198495 () Bool)

(assert (=> d!2175803 e!4198495))

(declare-fun res!2848556 () Bool)

(assert (=> d!2175803 (=> (not res!2848556) (not e!4198495))))

(declare-fun lt!2483884 () List!67127)

(declare-fun content!13231 (List!67127) (Set Regex!17194))

(assert (=> d!2175803 (= res!2848556 (= (content!13231 lt!2483884) (set.union (content!13231 (exprs!6690 lt!2483789)) (content!13231 (exprs!6690 ct2!306)))))))

(assert (=> d!2175803 (= lt!2483884 e!4198496)))

(declare-fun c!1295308 () Bool)

(assert (=> d!2175803 (= c!1295308 (is-Nil!67003 (exprs!6690 lt!2483789)))))

(assert (=> d!2175803 (= (++!15139 (exprs!6690 lt!2483789) (exprs!6690 ct2!306)) lt!2483884)))

(declare-fun b!6985478 () Bool)

(assert (=> b!6985478 (= e!4198495 (or (not (= (exprs!6690 ct2!306) Nil!67003)) (= lt!2483884 (exprs!6690 lt!2483789))))))

(declare-fun b!6985475 () Bool)

(assert (=> b!6985475 (= e!4198496 (exprs!6690 ct2!306))))

(declare-fun b!6985477 () Bool)

(declare-fun res!2848557 () Bool)

(assert (=> b!6985477 (=> (not res!2848557) (not e!4198495))))

(declare-fun size!40891 (List!67127) Int)

(assert (=> b!6985477 (= res!2848557 (= (size!40891 lt!2483884) (+ (size!40891 (exprs!6690 lt!2483789)) (size!40891 (exprs!6690 ct2!306)))))))

(assert (= (and d!2175803 c!1295308) b!6985475))

(assert (= (and d!2175803 (not c!1295308)) b!6985476))

(assert (= (and d!2175803 res!2848556) b!6985477))

(assert (= (and b!6985477 res!2848557) b!6985478))

(declare-fun m!7673028 () Bool)

(assert (=> b!6985476 m!7673028))

(declare-fun m!7673030 () Bool)

(assert (=> d!2175803 m!7673030))

(declare-fun m!7673032 () Bool)

(assert (=> d!2175803 m!7673032))

(declare-fun m!7673034 () Bool)

(assert (=> d!2175803 m!7673034))

(declare-fun m!7673036 () Bool)

(assert (=> b!6985477 m!7673036))

(declare-fun m!7673038 () Bool)

(assert (=> b!6985477 m!7673038))

(declare-fun m!7673040 () Bool)

(assert (=> b!6985477 m!7673040))

(assert (=> b!6985381 d!2175803))

(assert (=> b!6985381 d!2175797))

(declare-fun d!2175805 () Bool)

(declare-fun e!4198499 () Bool)

(assert (=> d!2175805 e!4198499))

(declare-fun res!2848560 () Bool)

(assert (=> d!2175805 (=> (not res!2848560) (not e!4198499))))

(declare-fun lt!2483887 () Context!12380)

(declare-fun dynLambda!26830 (Int Context!12380) Context!12380)

(assert (=> d!2175805 (= res!2848560 (= lt!2483795 (dynLambda!26830 lambda!400167 lt!2483887)))))

(declare-fun choose!52153 ((Set Context!12380) Int Context!12380) Context!12380)

(assert (=> d!2175805 (= lt!2483887 (choose!52153 z1!570 lambda!400167 lt!2483795))))

(declare-fun map!15452 ((Set Context!12380) Int) (Set Context!12380))

(assert (=> d!2175805 (set.member lt!2483795 (map!15452 z1!570 lambda!400167))))

(assert (=> d!2175805 (= (mapPost2!49 z1!570 lambda!400167 lt!2483795) lt!2483887)))

(declare-fun b!6985482 () Bool)

(assert (=> b!6985482 (= e!4198499 (set.member lt!2483887 z1!570))))

(assert (= (and d!2175805 res!2848560) b!6985482))

(declare-fun b_lambda!262159 () Bool)

(assert (=> (not b_lambda!262159) (not d!2175805)))

(declare-fun m!7673042 () Bool)

(assert (=> d!2175805 m!7673042))

(declare-fun m!7673044 () Bool)

(assert (=> d!2175805 m!7673044))

(declare-fun m!7673046 () Bool)

(assert (=> d!2175805 m!7673046))

(declare-fun m!7673048 () Bool)

(assert (=> d!2175805 m!7673048))

(declare-fun m!7673050 () Bool)

(assert (=> b!6985482 m!7673050))

(assert (=> b!6985381 d!2175805))

(declare-fun d!2175807 () Bool)

(declare-fun c!1295311 () Bool)

(declare-fun isEmpty!39113 (List!67128) Bool)

(assert (=> d!2175807 (= c!1295311 (isEmpty!39113 s!7408))))

(declare-fun e!4198502 () Bool)

(assert (=> d!2175807 (= (matchZipper!2734 lt!2483785 s!7408) e!4198502)))

(declare-fun b!6985487 () Bool)

(declare-fun nullableZipper!2420 ((Set Context!12380)) Bool)

(assert (=> b!6985487 (= e!4198502 (nullableZipper!2420 lt!2483785))))

(declare-fun b!6985488 () Bool)

(declare-fun head!14095 (List!67128) C!34658)

(declare-fun tail!13189 (List!67128) List!67128)

(assert (=> b!6985488 (= e!4198502 (matchZipper!2734 (derivationStepZipper!2674 lt!2483785 (head!14095 s!7408)) (tail!13189 s!7408)))))

(assert (= (and d!2175807 c!1295311) b!6985487))

(assert (= (and d!2175807 (not c!1295311)) b!6985488))

(declare-fun m!7673052 () Bool)

(assert (=> d!2175807 m!7673052))

(declare-fun m!7673054 () Bool)

(assert (=> b!6985487 m!7673054))

(declare-fun m!7673056 () Bool)

(assert (=> b!6985488 m!7673056))

(assert (=> b!6985488 m!7673056))

(declare-fun m!7673058 () Bool)

(assert (=> b!6985488 m!7673058))

(declare-fun m!7673060 () Bool)

(assert (=> b!6985488 m!7673060))

(assert (=> b!6985488 m!7673058))

(assert (=> b!6985488 m!7673060))

(declare-fun m!7673062 () Bool)

(assert (=> b!6985488 m!7673062))

(assert (=> start!670834 d!2175807))

(declare-fun bs!1861625 () Bool)

(declare-fun d!2175809 () Bool)

(assert (= bs!1861625 (and d!2175809 b!6985381)))

(declare-fun lambda!400208 () Int)

(assert (=> bs!1861625 (= lambda!400208 lambda!400167)))

(assert (=> d!2175809 true))

(assert (=> d!2175809 (= (appendTo!315 z1!570 ct2!306) (map!15452 z1!570 lambda!400208))))

(declare-fun bs!1861626 () Bool)

(assert (= bs!1861626 d!2175809))

(declare-fun m!7673064 () Bool)

(assert (=> bs!1861626 m!7673064))

(assert (=> start!670834 d!2175809))

(declare-fun bs!1861627 () Bool)

(declare-fun d!2175811 () Bool)

(assert (= bs!1861627 (and d!2175811 b!6985381)))

(declare-fun lambda!400211 () Int)

(assert (=> bs!1861627 (= lambda!400211 lambda!400168)))

(assert (=> d!2175811 (= (inv!85845 ct2!306) (forall!16098 (exprs!6690 ct2!306) lambda!400211))))

(declare-fun bs!1861628 () Bool)

(assert (= bs!1861628 d!2175811))

(declare-fun m!7673066 () Bool)

(assert (=> bs!1861628 m!7673066))

(assert (=> start!670834 d!2175811))

(declare-fun bs!1861629 () Bool)

(declare-fun d!2175813 () Bool)

(assert (= bs!1861629 (and d!2175813 b!6985381)))

(declare-fun lambda!400212 () Int)

(assert (=> bs!1861629 (= lambda!400212 lambda!400168)))

(declare-fun bs!1861630 () Bool)

(assert (= bs!1861630 (and d!2175813 d!2175811)))

(assert (=> bs!1861630 (= lambda!400212 lambda!400211)))

(assert (=> d!2175813 (= (inv!85845 setElem!47670) (forall!16098 (exprs!6690 setElem!47670) lambda!400212))))

(declare-fun bs!1861631 () Bool)

(assert (= bs!1861631 d!2175813))

(declare-fun m!7673068 () Bool)

(assert (=> bs!1861631 m!7673068))

(assert (=> setNonEmpty!47670 d!2175813))

(declare-fun d!2175815 () Bool)

(assert (=> d!2175815 (forall!16098 (++!15139 lt!2483781 (exprs!6690 ct2!306)) lambda!400168)))

(declare-fun lt!2483890 () Unit!161043)

(assert (=> d!2175815 (= lt!2483890 (choose!52152 lt!2483781 (exprs!6690 ct2!306) lambda!400168))))

(assert (=> d!2175815 (forall!16098 lt!2483781 lambda!400168)))

(assert (=> d!2175815 (= (lemmaConcatPreservesForall!530 lt!2483781 (exprs!6690 ct2!306) lambda!400168) lt!2483890)))

(declare-fun bs!1861632 () Bool)

(assert (= bs!1861632 d!2175815))

(assert (=> bs!1861632 m!7672904))

(assert (=> bs!1861632 m!7672904))

(declare-fun m!7673070 () Bool)

(assert (=> bs!1861632 m!7673070))

(declare-fun m!7673072 () Bool)

(assert (=> bs!1861632 m!7673072))

(assert (=> bs!1861632 m!7672912))

(assert (=> b!6985382 d!2175815))

(declare-fun b!6985490 () Bool)

(declare-fun e!4198504 () List!67127)

(assert (=> b!6985490 (= e!4198504 (Cons!67003 (h!73451 lt!2483781) (++!15139 (t!380874 lt!2483781) (exprs!6690 ct2!306))))))

(declare-fun d!2175817 () Bool)

(declare-fun e!4198503 () Bool)

(assert (=> d!2175817 e!4198503))

(declare-fun res!2848561 () Bool)

(assert (=> d!2175817 (=> (not res!2848561) (not e!4198503))))

(declare-fun lt!2483891 () List!67127)

(assert (=> d!2175817 (= res!2848561 (= (content!13231 lt!2483891) (set.union (content!13231 lt!2483781) (content!13231 (exprs!6690 ct2!306)))))))

(assert (=> d!2175817 (= lt!2483891 e!4198504)))

(declare-fun c!1295313 () Bool)

(assert (=> d!2175817 (= c!1295313 (is-Nil!67003 lt!2483781))))

(assert (=> d!2175817 (= (++!15139 lt!2483781 (exprs!6690 ct2!306)) lt!2483891)))

(declare-fun b!6985492 () Bool)

(assert (=> b!6985492 (= e!4198503 (or (not (= (exprs!6690 ct2!306) Nil!67003)) (= lt!2483891 lt!2483781)))))

(declare-fun b!6985489 () Bool)

(assert (=> b!6985489 (= e!4198504 (exprs!6690 ct2!306))))

(declare-fun b!6985491 () Bool)

(declare-fun res!2848562 () Bool)

(assert (=> b!6985491 (=> (not res!2848562) (not e!4198503))))

(assert (=> b!6985491 (= res!2848562 (= (size!40891 lt!2483891) (+ (size!40891 lt!2483781) (size!40891 (exprs!6690 ct2!306)))))))

(assert (= (and d!2175817 c!1295313) b!6985489))

(assert (= (and d!2175817 (not c!1295313)) b!6985490))

(assert (= (and d!2175817 res!2848561) b!6985491))

(assert (= (and b!6985491 res!2848562) b!6985492))

(declare-fun m!7673074 () Bool)

(assert (=> b!6985490 m!7673074))

(declare-fun m!7673076 () Bool)

(assert (=> d!2175817 m!7673076))

(declare-fun m!7673078 () Bool)

(assert (=> d!2175817 m!7673078))

(assert (=> d!2175817 m!7673034))

(declare-fun m!7673080 () Bool)

(assert (=> b!6985491 m!7673080))

(declare-fun m!7673082 () Bool)

(assert (=> b!6985491 m!7673082))

(assert (=> b!6985491 m!7673040))

(assert (=> b!6985382 d!2175817))

(declare-fun b!6985504 () Bool)

(declare-fun e!4198512 () (Set Context!12380))

(assert (=> b!6985504 (= e!4198512 (as set.empty (Set Context!12380)))))

(declare-fun b!6985505 () Bool)

(declare-fun e!4198513 () Bool)

(assert (=> b!6985505 (= e!4198513 (nullable!6954 (h!73451 (exprs!6690 lt!2483774))))))

(declare-fun b!6985506 () Bool)

(declare-fun call!634074 () (Set Context!12380))

(assert (=> b!6985506 (= e!4198512 call!634074)))

(declare-fun d!2175819 () Bool)

(declare-fun c!1295318 () Bool)

(assert (=> d!2175819 (= c!1295318 e!4198513)))

(declare-fun res!2848565 () Bool)

(assert (=> d!2175819 (=> (not res!2848565) (not e!4198513))))

(assert (=> d!2175819 (= res!2848565 (is-Cons!67003 (exprs!6690 lt!2483774)))))

(declare-fun e!4198511 () (Set Context!12380))

(assert (=> d!2175819 (= (derivationStepZipperUp!1844 lt!2483774 (h!73452 s!7408)) e!4198511)))

(declare-fun b!6985503 () Bool)

(assert (=> b!6985503 (= e!4198511 e!4198512)))

(declare-fun c!1295319 () Bool)

(assert (=> b!6985503 (= c!1295319 (is-Cons!67003 (exprs!6690 lt!2483774)))))

(declare-fun b!6985507 () Bool)

(assert (=> b!6985507 (= e!4198511 (set.union call!634074 (derivationStepZipperUp!1844 (Context!12381 (t!380874 (exprs!6690 lt!2483774))) (h!73452 s!7408))))))

(declare-fun bm!634069 () Bool)

(assert (=> bm!634069 (= call!634074 (derivationStepZipperDown!1912 (h!73451 (exprs!6690 lt!2483774)) (Context!12381 (t!380874 (exprs!6690 lt!2483774))) (h!73452 s!7408)))))

(assert (= (and d!2175819 res!2848565) b!6985505))

(assert (= (and d!2175819 c!1295318) b!6985507))

(assert (= (and d!2175819 (not c!1295318)) b!6985503))

(assert (= (and b!6985503 c!1295319) b!6985506))

(assert (= (and b!6985503 (not c!1295319)) b!6985504))

(assert (= (or b!6985507 b!6985506) bm!634069))

(declare-fun m!7673084 () Bool)

(assert (=> b!6985505 m!7673084))

(declare-fun m!7673086 () Bool)

(assert (=> b!6985507 m!7673086))

(declare-fun m!7673088 () Bool)

(assert (=> bm!634069 m!7673088))

(assert (=> b!6985382 d!2175819))

(declare-fun c!1295331 () Bool)

(declare-fun call!634087 () (Set Context!12380))

(declare-fun c!1295334 () Bool)

(declare-fun bm!634082 () Bool)

(declare-fun call!634091 () List!67127)

(declare-fun c!1295330 () Bool)

(assert (=> bm!634082 (= call!634087 (derivationStepZipperDown!1912 (ite c!1295330 (regOne!34901 (h!73451 (exprs!6690 lt!2483789))) (ite c!1295334 (regTwo!34900 (h!73451 (exprs!6690 lt!2483789))) (ite c!1295331 (regOne!34900 (h!73451 (exprs!6690 lt!2483789))) (reg!17523 (h!73451 (exprs!6690 lt!2483789)))))) (ite (or c!1295330 c!1295334) lt!2483774 (Context!12381 call!634091)) (h!73452 s!7408)))))

(declare-fun call!634090 () List!67127)

(declare-fun call!634088 () (Set Context!12380))

(declare-fun bm!634083 () Bool)

(assert (=> bm!634083 (= call!634088 (derivationStepZipperDown!1912 (ite c!1295330 (regTwo!34901 (h!73451 (exprs!6690 lt!2483789))) (regOne!34900 (h!73451 (exprs!6690 lt!2483789)))) (ite c!1295330 lt!2483774 (Context!12381 call!634090)) (h!73452 s!7408)))))

(declare-fun b!6985530 () Bool)

(declare-fun c!1295332 () Bool)

(assert (=> b!6985530 (= c!1295332 (is-Star!17194 (h!73451 (exprs!6690 lt!2483789))))))

(declare-fun e!4198529 () (Set Context!12380))

(declare-fun e!4198526 () (Set Context!12380))

(assert (=> b!6985530 (= e!4198529 e!4198526)))

(declare-fun bm!634084 () Bool)

(assert (=> bm!634084 (= call!634091 call!634090)))

(declare-fun b!6985531 () Bool)

(declare-fun e!4198528 () (Set Context!12380))

(declare-fun e!4198527 () (Set Context!12380))

(assert (=> b!6985531 (= e!4198528 e!4198527)))

(assert (=> b!6985531 (= c!1295330 (is-Union!17194 (h!73451 (exprs!6690 lt!2483789))))))

(declare-fun b!6985532 () Bool)

(declare-fun e!4198531 () (Set Context!12380))

(assert (=> b!6985532 (= e!4198531 e!4198529)))

(assert (=> b!6985532 (= c!1295331 (is-Concat!26039 (h!73451 (exprs!6690 lt!2483789))))))

(declare-fun b!6985533 () Bool)

(assert (=> b!6985533 (= e!4198528 (set.insert lt!2483774 (as set.empty (Set Context!12380))))))

(declare-fun b!6985534 () Bool)

(declare-fun e!4198530 () Bool)

(assert (=> b!6985534 (= c!1295334 e!4198530)))

(declare-fun res!2848569 () Bool)

(assert (=> b!6985534 (=> (not res!2848569) (not e!4198530))))

(assert (=> b!6985534 (= res!2848569 (is-Concat!26039 (h!73451 (exprs!6690 lt!2483789))))))

(assert (=> b!6985534 (= e!4198527 e!4198531)))

(declare-fun b!6985535 () Bool)

(assert (=> b!6985535 (= e!4198527 (set.union call!634087 call!634088))))

(declare-fun b!6985536 () Bool)

(assert (=> b!6985536 (= e!4198530 (nullable!6954 (regOne!34900 (h!73451 (exprs!6690 lt!2483789)))))))

(declare-fun bm!634085 () Bool)

(declare-fun call!634089 () (Set Context!12380))

(assert (=> bm!634085 (= call!634089 call!634087)))

(declare-fun d!2175821 () Bool)

(declare-fun c!1295333 () Bool)

(assert (=> d!2175821 (= c!1295333 (and (is-ElementMatch!17194 (h!73451 (exprs!6690 lt!2483789))) (= (c!1295296 (h!73451 (exprs!6690 lt!2483789))) (h!73452 s!7408))))))

(assert (=> d!2175821 (= (derivationStepZipperDown!1912 (h!73451 (exprs!6690 lt!2483789)) lt!2483774 (h!73452 s!7408)) e!4198528)))

(declare-fun b!6985537 () Bool)

(declare-fun call!634092 () (Set Context!12380))

(assert (=> b!6985537 (= e!4198529 call!634092)))

(declare-fun bm!634086 () Bool)

(assert (=> bm!634086 (= call!634092 call!634089)))

(declare-fun bm!634087 () Bool)

(declare-fun $colon$colon!2471 (List!67127 Regex!17194) List!67127)

(assert (=> bm!634087 (= call!634090 ($colon$colon!2471 (exprs!6690 lt!2483774) (ite (or c!1295334 c!1295331) (regTwo!34900 (h!73451 (exprs!6690 lt!2483789))) (h!73451 (exprs!6690 lt!2483789)))))))

(declare-fun b!6985538 () Bool)

(assert (=> b!6985538 (= e!4198526 (as set.empty (Set Context!12380)))))

(declare-fun b!6985539 () Bool)

(assert (=> b!6985539 (= e!4198526 call!634092)))

(declare-fun b!6985540 () Bool)

(assert (=> b!6985540 (= e!4198531 (set.union call!634088 call!634089))))

(assert (= (and d!2175821 c!1295333) b!6985533))

(assert (= (and d!2175821 (not c!1295333)) b!6985531))

(assert (= (and b!6985531 c!1295330) b!6985535))

(assert (= (and b!6985531 (not c!1295330)) b!6985534))

(assert (= (and b!6985534 res!2848569) b!6985536))

(assert (= (and b!6985534 c!1295334) b!6985540))

(assert (= (and b!6985534 (not c!1295334)) b!6985532))

(assert (= (and b!6985532 c!1295331) b!6985537))

(assert (= (and b!6985532 (not c!1295331)) b!6985530))

(assert (= (and b!6985530 c!1295332) b!6985539))

(assert (= (and b!6985530 (not c!1295332)) b!6985538))

(assert (= (or b!6985537 b!6985539) bm!634084))

(assert (= (or b!6985537 b!6985539) bm!634086))

(assert (= (or b!6985540 bm!634086) bm!634085))

(assert (= (or b!6985540 bm!634084) bm!634087))

(assert (= (or b!6985535 bm!634085) bm!634082))

(assert (= (or b!6985535 b!6985540) bm!634083))

(declare-fun m!7673090 () Bool)

(assert (=> b!6985533 m!7673090))

(declare-fun m!7673092 () Bool)

(assert (=> b!6985536 m!7673092))

(declare-fun m!7673094 () Bool)

(assert (=> bm!634083 m!7673094))

(declare-fun m!7673096 () Bool)

(assert (=> bm!634087 m!7673096))

(declare-fun m!7673098 () Bool)

(assert (=> bm!634082 m!7673098))

(assert (=> b!6985382 d!2175821))

(declare-fun d!2175823 () Bool)

(declare-fun c!1295335 () Bool)

(assert (=> d!2175823 (= c!1295335 (isEmpty!39113 (t!380875 s!7408)))))

(declare-fun e!4198532 () Bool)

(assert (=> d!2175823 (= (matchZipper!2734 lt!2483769 (t!380875 s!7408)) e!4198532)))

(declare-fun b!6985541 () Bool)

(assert (=> b!6985541 (= e!4198532 (nullableZipper!2420 lt!2483769))))

(declare-fun b!6985542 () Bool)

(assert (=> b!6985542 (= e!4198532 (matchZipper!2734 (derivationStepZipper!2674 lt!2483769 (head!14095 (t!380875 s!7408))) (tail!13189 (t!380875 s!7408))))))

(assert (= (and d!2175823 c!1295335) b!6985541))

(assert (= (and d!2175823 (not c!1295335)) b!6985542))

(declare-fun m!7673100 () Bool)

(assert (=> d!2175823 m!7673100))

(declare-fun m!7673102 () Bool)

(assert (=> b!6985541 m!7673102))

(declare-fun m!7673104 () Bool)

(assert (=> b!6985542 m!7673104))

(assert (=> b!6985542 m!7673104))

(declare-fun m!7673106 () Bool)

(assert (=> b!6985542 m!7673106))

(declare-fun m!7673108 () Bool)

(assert (=> b!6985542 m!7673108))

(assert (=> b!6985542 m!7673106))

(assert (=> b!6985542 m!7673108))

(declare-fun m!7673110 () Bool)

(assert (=> b!6985542 m!7673110))

(assert (=> b!6985392 d!2175823))

(declare-fun d!2175825 () Bool)

(declare-fun e!4198535 () Bool)

(assert (=> d!2175825 (= (matchZipper!2734 (set.union lt!2483771 lt!2483787) (t!380875 s!7408)) e!4198535)))

(declare-fun res!2848572 () Bool)

(assert (=> d!2175825 (=> res!2848572 e!4198535)))

(assert (=> d!2175825 (= res!2848572 (matchZipper!2734 lt!2483771 (t!380875 s!7408)))))

(declare-fun lt!2483894 () Unit!161043)

(declare-fun choose!52154 ((Set Context!12380) (Set Context!12380) List!67128) Unit!161043)

(assert (=> d!2175825 (= lt!2483894 (choose!52154 lt!2483771 lt!2483787 (t!380875 s!7408)))))

(assert (=> d!2175825 (= (lemmaZipperConcatMatchesSameAsBothZippers!1367 lt!2483771 lt!2483787 (t!380875 s!7408)) lt!2483894)))

(declare-fun b!6985545 () Bool)

(assert (=> b!6985545 (= e!4198535 (matchZipper!2734 lt!2483787 (t!380875 s!7408)))))

(assert (= (and d!2175825 (not res!2848572)) b!6985545))

(declare-fun m!7673112 () Bool)

(assert (=> d!2175825 m!7673112))

(assert (=> d!2175825 m!7672918))

(declare-fun m!7673114 () Bool)

(assert (=> d!2175825 m!7673114))

(assert (=> b!6985545 m!7672898))

(assert (=> b!6985392 d!2175825))

(declare-fun d!2175827 () Bool)

(declare-fun c!1295336 () Bool)

(assert (=> d!2175827 (= c!1295336 (isEmpty!39113 (t!380875 s!7408)))))

(declare-fun e!4198536 () Bool)

(assert (=> d!2175827 (= (matchZipper!2734 lt!2483771 (t!380875 s!7408)) e!4198536)))

(declare-fun b!6985546 () Bool)

(assert (=> b!6985546 (= e!4198536 (nullableZipper!2420 lt!2483771))))

(declare-fun b!6985547 () Bool)

(assert (=> b!6985547 (= e!4198536 (matchZipper!2734 (derivationStepZipper!2674 lt!2483771 (head!14095 (t!380875 s!7408))) (tail!13189 (t!380875 s!7408))))))

(assert (= (and d!2175827 c!1295336) b!6985546))

(assert (= (and d!2175827 (not c!1295336)) b!6985547))

(assert (=> d!2175827 m!7673100))

(declare-fun m!7673116 () Bool)

(assert (=> b!6985546 m!7673116))

(assert (=> b!6985547 m!7673104))

(assert (=> b!6985547 m!7673104))

(declare-fun m!7673118 () Bool)

(assert (=> b!6985547 m!7673118))

(assert (=> b!6985547 m!7673108))

(assert (=> b!6985547 m!7673118))

(assert (=> b!6985547 m!7673108))

(declare-fun m!7673120 () Bool)

(assert (=> b!6985547 m!7673120))

(assert (=> b!6985392 d!2175827))

(declare-fun d!2175829 () Bool)

(declare-fun c!1295337 () Bool)

(assert (=> d!2175829 (= c!1295337 (isEmpty!39113 (t!380875 s!7408)))))

(declare-fun e!4198537 () Bool)

(assert (=> d!2175829 (= (matchZipper!2734 lt!2483782 (t!380875 s!7408)) e!4198537)))

(declare-fun b!6985548 () Bool)

(assert (=> b!6985548 (= e!4198537 (nullableZipper!2420 lt!2483782))))

(declare-fun b!6985549 () Bool)

(assert (=> b!6985549 (= e!4198537 (matchZipper!2734 (derivationStepZipper!2674 lt!2483782 (head!14095 (t!380875 s!7408))) (tail!13189 (t!380875 s!7408))))))

(assert (= (and d!2175829 c!1295337) b!6985548))

(assert (= (and d!2175829 (not c!1295337)) b!6985549))

(assert (=> d!2175829 m!7673100))

(declare-fun m!7673122 () Bool)

(assert (=> b!6985548 m!7673122))

(assert (=> b!6985549 m!7673104))

(assert (=> b!6985549 m!7673104))

(declare-fun m!7673124 () Bool)

(assert (=> b!6985549 m!7673124))

(assert (=> b!6985549 m!7673108))

(assert (=> b!6985549 m!7673124))

(assert (=> b!6985549 m!7673108))

(declare-fun m!7673126 () Bool)

(assert (=> b!6985549 m!7673126))

(assert (=> b!6985392 d!2175829))

(assert (=> b!6985392 d!2175815))

(declare-fun bs!1861633 () Bool)

(declare-fun d!2175831 () Bool)

(assert (= bs!1861633 (and d!2175831 b!6985383)))

(declare-fun lambda!400215 () Int)

(assert (=> bs!1861633 (not (= lambda!400215 lambda!400166))))

(assert (=> d!2175831 true))

(declare-fun order!27883 () Int)

(declare-fun dynLambda!26831 (Int Int) Int)

(assert (=> d!2175831 (< (dynLambda!26831 order!27883 lambda!400166) (dynLambda!26831 order!27883 lambda!400215))))

(declare-fun forall!16100 (List!67129 Int) Bool)

(assert (=> d!2175831 (= (exists!2968 lt!2483777 lambda!400166) (not (forall!16100 lt!2483777 lambda!400215)))))

(declare-fun bs!1861634 () Bool)

(assert (= bs!1861634 d!2175831))

(declare-fun m!7673128 () Bool)

(assert (=> bs!1861634 m!7673128))

(assert (=> b!6985383 d!2175831))

(declare-fun bs!1861635 () Bool)

(declare-fun d!2175833 () Bool)

(assert (= bs!1861635 (and d!2175833 b!6985383)))

(declare-fun lambda!400218 () Int)

(assert (=> bs!1861635 (= lambda!400218 lambda!400166)))

(declare-fun bs!1861636 () Bool)

(assert (= bs!1861636 (and d!2175833 d!2175831)))

(assert (=> bs!1861636 (not (= lambda!400218 lambda!400215))))

(assert (=> d!2175833 true))

(assert (=> d!2175833 (exists!2968 lt!2483777 lambda!400218)))

(declare-fun lt!2483897 () Unit!161043)

(declare-fun choose!52155 (List!67129 List!67128) Unit!161043)

(assert (=> d!2175833 (= lt!2483897 (choose!52155 lt!2483777 s!7408))))

(declare-fun content!13232 (List!67129) (Set Context!12380))

(assert (=> d!2175833 (matchZipper!2734 (content!13232 lt!2483777) s!7408)))

(assert (=> d!2175833 (= (lemmaZipperMatchesExistsMatchingContext!163 lt!2483777 s!7408) lt!2483897)))

(declare-fun bs!1861637 () Bool)

(assert (= bs!1861637 d!2175833))

(declare-fun m!7673130 () Bool)

(assert (=> bs!1861637 m!7673130))

(declare-fun m!7673132 () Bool)

(assert (=> bs!1861637 m!7673132))

(declare-fun m!7673134 () Bool)

(assert (=> bs!1861637 m!7673134))

(assert (=> bs!1861637 m!7673134))

(declare-fun m!7673136 () Bool)

(assert (=> bs!1861637 m!7673136))

(assert (=> b!6985383 d!2175833))

(declare-fun d!2175835 () Bool)

(declare-fun c!1295340 () Bool)

(assert (=> d!2175835 (= c!1295340 (isEmpty!39113 s!7408))))

(declare-fun e!4198538 () Bool)

(assert (=> d!2175835 (= (matchZipper!2734 lt!2483793 s!7408) e!4198538)))

(declare-fun b!6985552 () Bool)

(assert (=> b!6985552 (= e!4198538 (nullableZipper!2420 lt!2483793))))

(declare-fun b!6985553 () Bool)

(assert (=> b!6985553 (= e!4198538 (matchZipper!2734 (derivationStepZipper!2674 lt!2483793 (head!14095 s!7408)) (tail!13189 s!7408)))))

(assert (= (and d!2175835 c!1295340) b!6985552))

(assert (= (and d!2175835 (not c!1295340)) b!6985553))

(assert (=> d!2175835 m!7673052))

(declare-fun m!7673138 () Bool)

(assert (=> b!6985552 m!7673138))

(assert (=> b!6985553 m!7673056))

(assert (=> b!6985553 m!7673056))

(declare-fun m!7673140 () Bool)

(assert (=> b!6985553 m!7673140))

(assert (=> b!6985553 m!7673060))

(assert (=> b!6985553 m!7673140))

(assert (=> b!6985553 m!7673060))

(declare-fun m!7673142 () Bool)

(assert (=> b!6985553 m!7673142))

(assert (=> b!6985383 d!2175835))

(declare-fun d!2175837 () Bool)

(declare-fun e!4198541 () Bool)

(assert (=> d!2175837 e!4198541))

(declare-fun res!2848575 () Bool)

(assert (=> d!2175837 (=> (not res!2848575) (not e!4198541))))

(declare-fun lt!2483900 () List!67129)

(declare-fun noDuplicate!2509 (List!67129) Bool)

(assert (=> d!2175837 (= res!2848575 (noDuplicate!2509 lt!2483900))))

(declare-fun choose!52156 ((Set Context!12380)) List!67129)

(assert (=> d!2175837 (= lt!2483900 (choose!52156 lt!2483785))))

(assert (=> d!2175837 (= (toList!10554 lt!2483785) lt!2483900)))

(declare-fun b!6985556 () Bool)

(assert (=> b!6985556 (= e!4198541 (= (content!13232 lt!2483900) lt!2483785))))

(assert (= (and d!2175837 res!2848575) b!6985556))

(declare-fun m!7673144 () Bool)

(assert (=> d!2175837 m!7673144))

(declare-fun m!7673146 () Bool)

(assert (=> d!2175837 m!7673146))

(declare-fun m!7673148 () Bool)

(assert (=> b!6985556 m!7673148))

(assert (=> b!6985383 d!2175837))

(declare-fun d!2175839 () Bool)

(declare-fun e!4198544 () Bool)

(assert (=> d!2175839 e!4198544))

(declare-fun res!2848578 () Bool)

(assert (=> d!2175839 (=> (not res!2848578) (not e!4198544))))

(declare-fun lt!2483903 () Context!12380)

(declare-fun dynLambda!26832 (Int Context!12380) Bool)

(assert (=> d!2175839 (= res!2848578 (dynLambda!26832 lambda!400166 lt!2483903))))

(declare-fun getWitness!1081 (List!67129 Int) Context!12380)

(assert (=> d!2175839 (= lt!2483903 (getWitness!1081 (toList!10554 lt!2483785) lambda!400166))))

(declare-fun exists!2970 ((Set Context!12380) Int) Bool)

(assert (=> d!2175839 (exists!2970 lt!2483785 lambda!400166)))

(assert (=> d!2175839 (= (getWitness!1079 lt!2483785 lambda!400166) lt!2483903)))

(declare-fun b!6985559 () Bool)

(assert (=> b!6985559 (= e!4198544 (set.member lt!2483903 lt!2483785))))

(assert (= (and d!2175839 res!2848578) b!6985559))

(declare-fun b_lambda!262161 () Bool)

(assert (=> (not b_lambda!262161) (not d!2175839)))

(declare-fun m!7673150 () Bool)

(assert (=> d!2175839 m!7673150))

(assert (=> d!2175839 m!7672926))

(assert (=> d!2175839 m!7672926))

(declare-fun m!7673152 () Bool)

(assert (=> d!2175839 m!7673152))

(declare-fun m!7673154 () Bool)

(assert (=> d!2175839 m!7673154))

(declare-fun m!7673156 () Bool)

(assert (=> b!6985559 m!7673156))

(assert (=> b!6985383 d!2175839))

(declare-fun d!2175841 () Bool)

(declare-fun res!2848583 () Bool)

(declare-fun e!4198549 () Bool)

(assert (=> d!2175841 (=> res!2848583 e!4198549)))

(assert (=> d!2175841 (= res!2848583 (is-Nil!67003 (exprs!6690 ct2!306)))))

(assert (=> d!2175841 (= (forall!16098 (exprs!6690 ct2!306) lambda!400168) e!4198549)))

(declare-fun b!6985564 () Bool)

(declare-fun e!4198550 () Bool)

(assert (=> b!6985564 (= e!4198549 e!4198550)))

(declare-fun res!2848584 () Bool)

(assert (=> b!6985564 (=> (not res!2848584) (not e!4198550))))

(declare-fun dynLambda!26833 (Int Regex!17194) Bool)

(assert (=> b!6985564 (= res!2848584 (dynLambda!26833 lambda!400168 (h!73451 (exprs!6690 ct2!306))))))

(declare-fun b!6985565 () Bool)

(assert (=> b!6985565 (= e!4198550 (forall!16098 (t!380874 (exprs!6690 ct2!306)) lambda!400168))))

(assert (= (and d!2175841 (not res!2848583)) b!6985564))

(assert (= (and b!6985564 res!2848584) b!6985565))

(declare-fun b_lambda!262163 () Bool)

(assert (=> (not b_lambda!262163) (not b!6985564)))

(declare-fun m!7673158 () Bool)

(assert (=> b!6985564 m!7673158))

(declare-fun m!7673160 () Bool)

(assert (=> b!6985565 m!7673160))

(assert (=> b!6985394 d!2175841))

(declare-fun d!2175843 () Bool)

(declare-fun c!1295341 () Bool)

(assert (=> d!2175843 (= c!1295341 (isEmpty!39113 (t!380875 s!7408)))))

(declare-fun e!4198551 () Bool)

(assert (=> d!2175843 (= (matchZipper!2734 lt!2483787 (t!380875 s!7408)) e!4198551)))

(declare-fun b!6985566 () Bool)

(assert (=> b!6985566 (= e!4198551 (nullableZipper!2420 lt!2483787))))

(declare-fun b!6985567 () Bool)

(assert (=> b!6985567 (= e!4198551 (matchZipper!2734 (derivationStepZipper!2674 lt!2483787 (head!14095 (t!380875 s!7408))) (tail!13189 (t!380875 s!7408))))))

(assert (= (and d!2175843 c!1295341) b!6985566))

(assert (= (and d!2175843 (not c!1295341)) b!6985567))

(assert (=> d!2175843 m!7673100))

(declare-fun m!7673162 () Bool)

(assert (=> b!6985566 m!7673162))

(assert (=> b!6985567 m!7673104))

(assert (=> b!6985567 m!7673104))

(declare-fun m!7673164 () Bool)

(assert (=> b!6985567 m!7673164))

(assert (=> b!6985567 m!7673108))

(assert (=> b!6985567 m!7673164))

(assert (=> b!6985567 m!7673108))

(declare-fun m!7673166 () Bool)

(assert (=> b!6985567 m!7673166))

(assert (=> b!6985393 d!2175843))

(assert (=> b!6985393 d!2175815))

(assert (=> b!6985384 d!2175843))

(declare-fun d!2175845 () Bool)

(assert (=> d!2175845 (= (isEmpty!39111 (exprs!6690 lt!2483789)) (is-Nil!67003 (exprs!6690 lt!2483789)))))

(assert (=> b!6985385 d!2175845))

(declare-fun d!2175847 () Bool)

(declare-fun res!2848585 () Bool)

(declare-fun e!4198552 () Bool)

(assert (=> d!2175847 (=> res!2848585 e!4198552)))

(assert (=> d!2175847 (= res!2848585 (is-Nil!67003 lt!2483781))))

(assert (=> d!2175847 (= (forall!16098 lt!2483781 lambda!400168) e!4198552)))

(declare-fun b!6985568 () Bool)

(declare-fun e!4198553 () Bool)

(assert (=> b!6985568 (= e!4198552 e!4198553)))

(declare-fun res!2848586 () Bool)

(assert (=> b!6985568 (=> (not res!2848586) (not e!4198553))))

(assert (=> b!6985568 (= res!2848586 (dynLambda!26833 lambda!400168 (h!73451 lt!2483781)))))

(declare-fun b!6985569 () Bool)

(assert (=> b!6985569 (= e!4198553 (forall!16098 (t!380874 lt!2483781) lambda!400168))))

(assert (= (and d!2175847 (not res!2848585)) b!6985568))

(assert (= (and b!6985568 res!2848586) b!6985569))

(declare-fun b_lambda!262165 () Bool)

(assert (=> (not b_lambda!262165) (not b!6985568)))

(declare-fun m!7673168 () Bool)

(assert (=> b!6985568 m!7673168))

(declare-fun m!7673170 () Bool)

(assert (=> b!6985569 m!7673170))

(assert (=> b!6985396 d!2175847))

(declare-fun b!6985571 () Bool)

(declare-fun e!4198555 () (Set Context!12380))

(assert (=> b!6985571 (= e!4198555 (as set.empty (Set Context!12380)))))

(declare-fun b!6985572 () Bool)

(declare-fun e!4198556 () Bool)

(assert (=> b!6985572 (= e!4198556 (nullable!6954 (h!73451 (exprs!6690 lt!2483780))))))

(declare-fun b!6985573 () Bool)

(declare-fun call!634093 () (Set Context!12380))

(assert (=> b!6985573 (= e!4198555 call!634093)))

(declare-fun d!2175849 () Bool)

(declare-fun c!1295342 () Bool)

(assert (=> d!2175849 (= c!1295342 e!4198556)))

(declare-fun res!2848587 () Bool)

(assert (=> d!2175849 (=> (not res!2848587) (not e!4198556))))

(assert (=> d!2175849 (= res!2848587 (is-Cons!67003 (exprs!6690 lt!2483780)))))

(declare-fun e!4198554 () (Set Context!12380))

(assert (=> d!2175849 (= (derivationStepZipperUp!1844 lt!2483780 (h!73452 s!7408)) e!4198554)))

(declare-fun b!6985570 () Bool)

(assert (=> b!6985570 (= e!4198554 e!4198555)))

(declare-fun c!1295343 () Bool)

(assert (=> b!6985570 (= c!1295343 (is-Cons!67003 (exprs!6690 lt!2483780)))))

(declare-fun b!6985574 () Bool)

(assert (=> b!6985574 (= e!4198554 (set.union call!634093 (derivationStepZipperUp!1844 (Context!12381 (t!380874 (exprs!6690 lt!2483780))) (h!73452 s!7408))))))

(declare-fun bm!634088 () Bool)

(assert (=> bm!634088 (= call!634093 (derivationStepZipperDown!1912 (h!73451 (exprs!6690 lt!2483780)) (Context!12381 (t!380874 (exprs!6690 lt!2483780))) (h!73452 s!7408)))))

(assert (= (and d!2175849 res!2848587) b!6985572))

(assert (= (and d!2175849 c!1295342) b!6985574))

(assert (= (and d!2175849 (not c!1295342)) b!6985570))

(assert (= (and b!6985570 c!1295343) b!6985573))

(assert (= (and b!6985570 (not c!1295343)) b!6985571))

(assert (= (or b!6985574 b!6985573) bm!634088))

(declare-fun m!7673172 () Bool)

(assert (=> b!6985572 m!7673172))

(declare-fun m!7673174 () Bool)

(assert (=> b!6985574 m!7673174))

(declare-fun m!7673176 () Bool)

(assert (=> bm!634088 m!7673176))

(assert (=> b!6985387 d!2175849))

(assert (=> b!6985387 d!2175797))

(declare-fun d!2175851 () Bool)

(declare-fun choose!52157 ((Set Context!12380) Int) (Set Context!12380))

(assert (=> d!2175851 (= (flatMap!2180 lt!2483778 lambda!400169) (choose!52157 lt!2483778 lambda!400169))))

(declare-fun bs!1861638 () Bool)

(assert (= bs!1861638 d!2175851))

(declare-fun m!7673178 () Bool)

(assert (=> bs!1861638 m!7673178))

(assert (=> b!6985387 d!2175851))

(declare-fun d!2175853 () Bool)

(declare-fun dynLambda!26834 (Int Context!12380) (Set Context!12380))

(assert (=> d!2175853 (= (flatMap!2180 lt!2483778 lambda!400169) (dynLambda!26834 lambda!400169 lt!2483780))))

(declare-fun lt!2483906 () Unit!161043)

(declare-fun choose!52158 ((Set Context!12380) Context!12380 Int) Unit!161043)

(assert (=> d!2175853 (= lt!2483906 (choose!52158 lt!2483778 lt!2483780 lambda!400169))))

(assert (=> d!2175853 (= lt!2483778 (set.insert lt!2483780 (as set.empty (Set Context!12380))))))

(assert (=> d!2175853 (= (lemmaFlatMapOnSingletonSet!1695 lt!2483778 lt!2483780 lambda!400169) lt!2483906)))

(declare-fun b_lambda!262167 () Bool)

(assert (=> (not b_lambda!262167) (not d!2175853)))

(declare-fun bs!1861639 () Bool)

(assert (= bs!1861639 d!2175853))

(assert (=> bs!1861639 m!7672938))

(declare-fun m!7673180 () Bool)

(assert (=> bs!1861639 m!7673180))

(declare-fun m!7673182 () Bool)

(assert (=> bs!1861639 m!7673182))

(assert (=> bs!1861639 m!7672884))

(assert (=> b!6985387 d!2175853))

(declare-fun bs!1861640 () Bool)

(declare-fun d!2175855 () Bool)

(assert (= bs!1861640 (and d!2175855 b!6985387)))

(declare-fun lambda!400221 () Int)

(assert (=> bs!1861640 (= lambda!400221 lambda!400169)))

(assert (=> d!2175855 true))

(assert (=> d!2175855 (= (derivationStepZipper!2674 lt!2483778 (h!73452 s!7408)) (flatMap!2180 lt!2483778 lambda!400221))))

(declare-fun bs!1861641 () Bool)

(assert (= bs!1861641 d!2175855))

(declare-fun m!7673184 () Bool)

(assert (=> bs!1861641 m!7673184))

(assert (=> b!6985387 d!2175855))

(declare-fun b!6985581 () Bool)

(declare-fun e!4198559 () Bool)

(declare-fun tp!1929035 () Bool)

(declare-fun tp!1929036 () Bool)

(assert (=> b!6985581 (= e!4198559 (and tp!1929035 tp!1929036))))

(assert (=> b!6985389 (= tp!1929015 e!4198559)))

(assert (= (and b!6985389 (is-Cons!67003 (exprs!6690 setElem!47670))) b!6985581))

(declare-fun b!6985586 () Bool)

(declare-fun e!4198562 () Bool)

(declare-fun tp!1929039 () Bool)

(assert (=> b!6985586 (= e!4198562 (and tp_is_empty!43613 tp!1929039))))

(assert (=> b!6985386 (= tp!1929017 e!4198562)))

(assert (= (and b!6985386 (is-Cons!67004 (t!380875 s!7408))) b!6985586))

(declare-fun b!6985587 () Bool)

(declare-fun e!4198563 () Bool)

(declare-fun tp!1929040 () Bool)

(declare-fun tp!1929041 () Bool)

(assert (=> b!6985587 (= e!4198563 (and tp!1929040 tp!1929041))))

(assert (=> b!6985397 (= tp!1929018 e!4198563)))

(assert (= (and b!6985397 (is-Cons!67003 (exprs!6690 ct2!306))) b!6985587))

(declare-fun condSetEmpty!47676 () Bool)

(assert (=> setNonEmpty!47670 (= condSetEmpty!47676 (= setRest!47670 (as set.empty (Set Context!12380))))))

(declare-fun setRes!47676 () Bool)

(assert (=> setNonEmpty!47670 (= tp!1929016 setRes!47676)))

(declare-fun setIsEmpty!47676 () Bool)

(assert (=> setIsEmpty!47676 setRes!47676))

(declare-fun setNonEmpty!47676 () Bool)

(declare-fun e!4198566 () Bool)

(declare-fun tp!1929047 () Bool)

(declare-fun setElem!47676 () Context!12380)

(assert (=> setNonEmpty!47676 (= setRes!47676 (and tp!1929047 (inv!85845 setElem!47676) e!4198566))))

(declare-fun setRest!47676 () (Set Context!12380))

(assert (=> setNonEmpty!47676 (= setRest!47670 (set.union (set.insert setElem!47676 (as set.empty (Set Context!12380))) setRest!47676))))

(declare-fun b!6985592 () Bool)

(declare-fun tp!1929046 () Bool)

(assert (=> b!6985592 (= e!4198566 tp!1929046)))

(assert (= (and setNonEmpty!47670 condSetEmpty!47676) setIsEmpty!47676))

(assert (= (and setNonEmpty!47670 (not condSetEmpty!47676)) setNonEmpty!47676))

(assert (= setNonEmpty!47676 b!6985592))

(declare-fun m!7673186 () Bool)

(assert (=> setNonEmpty!47676 m!7673186))

(declare-fun b_lambda!262169 () Bool)

(assert (= b_lambda!262163 (or b!6985381 b_lambda!262169)))

(declare-fun bs!1861642 () Bool)

(declare-fun d!2175857 () Bool)

(assert (= bs!1861642 (and d!2175857 b!6985381)))

(declare-fun validRegex!8849 (Regex!17194) Bool)

(assert (=> bs!1861642 (= (dynLambda!26833 lambda!400168 (h!73451 (exprs!6690 ct2!306))) (validRegex!8849 (h!73451 (exprs!6690 ct2!306))))))

(declare-fun m!7673188 () Bool)

(assert (=> bs!1861642 m!7673188))

(assert (=> b!6985564 d!2175857))

(declare-fun b_lambda!262171 () Bool)

(assert (= b_lambda!262165 (or b!6985381 b_lambda!262171)))

(declare-fun bs!1861643 () Bool)

(declare-fun d!2175859 () Bool)

(assert (= bs!1861643 (and d!2175859 b!6985381)))

(assert (=> bs!1861643 (= (dynLambda!26833 lambda!400168 (h!73451 lt!2483781)) (validRegex!8849 (h!73451 lt!2483781)))))

(declare-fun m!7673190 () Bool)

(assert (=> bs!1861643 m!7673190))

(assert (=> b!6985568 d!2175859))

(declare-fun b_lambda!262173 () Bool)

(assert (= b_lambda!262161 (or b!6985383 b_lambda!262173)))

(declare-fun bs!1861644 () Bool)

(declare-fun d!2175861 () Bool)

(assert (= bs!1861644 (and d!2175861 b!6985383)))

(assert (=> bs!1861644 (= (dynLambda!26832 lambda!400166 lt!2483903) (matchZipper!2734 (set.insert lt!2483903 (as set.empty (Set Context!12380))) s!7408))))

(declare-fun m!7673192 () Bool)

(assert (=> bs!1861644 m!7673192))

(assert (=> bs!1861644 m!7673192))

(declare-fun m!7673194 () Bool)

(assert (=> bs!1861644 m!7673194))

(assert (=> d!2175839 d!2175861))

(declare-fun b_lambda!262175 () Bool)

(assert (= b_lambda!262159 (or b!6985381 b_lambda!262175)))

(declare-fun bs!1861645 () Bool)

(declare-fun d!2175863 () Bool)

(assert (= bs!1861645 (and d!2175863 b!6985381)))

(declare-fun lt!2483907 () Unit!161043)

(assert (=> bs!1861645 (= lt!2483907 (lemmaConcatPreservesForall!530 (exprs!6690 lt!2483887) (exprs!6690 ct2!306) lambda!400168))))

(assert (=> bs!1861645 (= (dynLambda!26830 lambda!400167 lt!2483887) (Context!12381 (++!15139 (exprs!6690 lt!2483887) (exprs!6690 ct2!306))))))

(declare-fun m!7673196 () Bool)

(assert (=> bs!1861645 m!7673196))

(declare-fun m!7673198 () Bool)

(assert (=> bs!1861645 m!7673198))

(assert (=> d!2175805 d!2175863))

(declare-fun b_lambda!262177 () Bool)

(assert (= b_lambda!262167 (or b!6985387 b_lambda!262177)))

(declare-fun bs!1861646 () Bool)

(declare-fun d!2175865 () Bool)

(assert (= bs!1861646 (and d!2175865 b!6985387)))

(assert (=> bs!1861646 (= (dynLambda!26834 lambda!400169 lt!2483780) (derivationStepZipperUp!1844 lt!2483780 (h!73452 s!7408)))))

(assert (=> bs!1861646 m!7672940))

(assert (=> d!2175853 d!2175865))

(push 1)

(assert (not d!2175843))

(assert (not d!2175831))

(assert (not bm!634069))

(assert (not b!6985542))

(assert (not d!2175855))

(assert (not b_lambda!262171))

(assert (not b!6985581))

(assert (not b!6985547))

(assert (not d!2175837))

(assert (not b!6985572))

(assert (not bm!634083))

(assert (not d!2175835))

(assert (not b!6985491))

(assert (not d!2175803))

(assert (not b!6985477))

(assert (not b!6985556))

(assert (not d!2175825))

(assert (not b!6985586))

(assert (not d!2175805))

(assert (not b_lambda!262173))

(assert (not d!2175827))

(assert (not d!2175809))

(assert (not bs!1861643))

(assert (not d!2175799))

(assert (not b!6985553))

(assert (not d!2175797))

(assert (not b!6985507))

(assert (not d!2175853))

(assert (not b!6985566))

(assert (not setNonEmpty!47676))

(assert (not bm!634088))

(assert (not b!6985574))

(assert (not b!6985565))

(assert (not b!6985476))

(assert (not bs!1861644))

(assert (not b!6985569))

(assert (not b!6985552))

(assert (not b_lambda!262177))

(assert (not d!2175829))

(assert (not b!6985541))

(assert (not b_lambda!262175))

(assert (not b!6985587))

(assert tp_is_empty!43613)

(assert (not b!6985505))

(assert (not d!2175851))

(assert (not b!6985487))

(assert (not b!6985548))

(assert (not bs!1861645))

(assert (not b_lambda!262169))

(assert (not d!2175815))

(assert (not b!6985592))

(assert (not d!2175813))

(assert (not b!6985546))

(assert (not b!6985536))

(assert (not b!6985545))

(assert (not d!2175823))

(assert (not d!2175807))

(assert (not b!6985488))

(assert (not d!2175817))

(assert (not d!2175839))

(assert (not bs!1861642))

(assert (not d!2175833))

(assert (not b!6985567))

(assert (not b!6985490))

(assert (not b!6985549))

(assert (not bm!634087))

(assert (not d!2175811))

(assert (not bm!634082))

(assert (not bs!1861646))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

