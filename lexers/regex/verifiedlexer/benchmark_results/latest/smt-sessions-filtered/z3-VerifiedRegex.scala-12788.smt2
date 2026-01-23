; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!707500 () Bool)

(assert start!707500)

(declare-fun b!7260418 () Bool)

(assert (=> b!7260418 true))

(declare-fun b!7260417 () Bool)

(assert (=> b!7260417 true))

(declare-fun bs!1909261 () Bool)

(assert (= bs!1909261 (and b!7260417 b!7260418)))

(declare-fun lambda!446447 () Int)

(declare-datatypes ((C!37644 0))(
  ( (C!37645 (val!28770 Int)) )
))
(declare-datatypes ((List!70635 0))(
  ( (Nil!70511) (Cons!70511 (h!76959 C!37644) (t!384701 List!70635)) )
))
(declare-fun lt!2590548 () List!70635)

(declare-fun lambda!446445 () Int)

(declare-fun s1!1971 () List!70635)

(assert (=> bs!1909261 (= (= lt!2590548 (t!384701 s1!1971)) (= lambda!446447 lambda!446445))))

(assert (=> b!7260417 true))

(declare-fun e!4353696 () Bool)

(declare-fun e!4353684 () Bool)

(assert (=> b!7260417 (= e!4353696 e!4353684)))

(declare-fun res!2943908 () Bool)

(assert (=> b!7260417 (=> res!2943908 e!4353684)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18685 0))(
  ( (ElementMatch!18685 (c!1350709 C!37644)) (Concat!27530 (regOne!37882 Regex!18685) (regTwo!37882 Regex!18685)) (EmptyExpr!18685) (Star!18685 (reg!19014 Regex!18685)) (EmptyLang!18685) (Union!18685 (regOne!37883 Regex!18685) (regTwo!37883 Regex!18685)) )
))
(declare-datatypes ((List!70636 0))(
  ( (Nil!70512) (Cons!70512 (h!76960 Regex!18685) (t!384702 List!70636)) )
))
(declare-datatypes ((Context!15250 0))(
  ( (Context!15251 (exprs!8125 List!70636)) )
))
(declare-fun lt!2590556 () (InoxSet Context!15250))

(declare-fun lt!2590541 () List!70635)

(declare-fun matchZipper!3595 ((InoxSet Context!15250) List!70635) Bool)

(assert (=> b!7260417 (= res!2943908 (not (matchZipper!3595 lt!2590556 lt!2590541)))))

(declare-datatypes ((Unit!164010 0))(
  ( (Unit!164011) )
))
(declare-fun lt!2590566 () Unit!164010)

(declare-fun lambda!446444 () Int)

(declare-fun ct1!232 () Context!15250)

(declare-fun ct2!328 () Context!15250)

(declare-fun lemmaConcatPreservesForall!1492 (List!70636 List!70636 Int) Unit!164010)

(assert (=> b!7260417 (= lt!2590566 (lemmaConcatPreservesForall!1492 (exprs!8125 ct1!232) (exprs!8125 ct2!328) lambda!446444))))

(declare-fun e!4353691 () Bool)

(assert (=> b!7260417 e!4353691))

(declare-fun res!2943911 () Bool)

(assert (=> b!7260417 (=> (not res!2943911) (not e!4353691))))

(declare-datatypes ((List!70637 0))(
  ( (Nil!70513) (Cons!70513 (h!76961 Context!15250) (t!384703 List!70637)) )
))
(declare-fun lt!2590578 () List!70637)

(declare-fun content!14684 (List!70637) (InoxSet Context!15250))

(assert (=> b!7260417 (= res!2943911 (matchZipper!3595 (content!14684 lt!2590578) lt!2590548))))

(declare-fun lt!2590552 () Unit!164010)

(declare-fun lemmaExistsMatchingContextThenMatchingString!94 (List!70637 List!70635) Unit!164010)

(assert (=> b!7260417 (= lt!2590552 (lemmaExistsMatchingContextThenMatchingString!94 lt!2590578 lt!2590548))))

(declare-fun lt!2590574 () (InoxSet Context!15250))

(declare-fun toList!11514 ((InoxSet Context!15250)) List!70637)

(assert (=> b!7260417 (= lt!2590578 (toList!11514 lt!2590574))))

(declare-fun e!4353695 () Bool)

(assert (=> b!7260417 e!4353695))

(declare-fun res!2943914 () Bool)

(assert (=> b!7260417 (=> (not res!2943914) (not e!4353695))))

(declare-fun exists!4448 ((InoxSet Context!15250) Int) Bool)

(assert (=> b!7260417 (= res!2943914 (exists!4448 lt!2590574 lambda!446447))))

(declare-fun lt!2590573 () Context!15250)

(declare-fun lt!2590543 () Unit!164010)

(declare-fun lemmaContainsThenExists!233 ((InoxSet Context!15250) Context!15250 Int) Unit!164010)

(assert (=> b!7260417 (= lt!2590543 (lemmaContainsThenExists!233 lt!2590574 lt!2590573 lambda!446447))))

(declare-fun lt!2590575 () Unit!164010)

(declare-fun lt!2590564 () Context!15250)

(assert (=> b!7260417 (= lt!2590575 (lemmaConcatPreservesForall!1492 (exprs!8125 lt!2590564) (exprs!8125 ct2!328) lambda!446444))))

(assert (=> b!7260417 (select lt!2590574 lt!2590573)))

(declare-fun lt!2590567 () Unit!164010)

(assert (=> b!7260417 (= lt!2590567 (lemmaConcatPreservesForall!1492 (exprs!8125 lt!2590564) (exprs!8125 ct2!328) lambda!446444))))

(declare-fun lt!2590562 () (InoxSet Context!15250))

(assert (=> b!7260417 (select lt!2590562 lt!2590573)))

(declare-fun lt!2590537 () Unit!164010)

(assert (=> b!7260417 (= lt!2590537 (lemmaConcatPreservesForall!1492 (exprs!8125 ct1!232) (exprs!8125 ct2!328) lambda!446444))))

(declare-fun lt!2590580 () Unit!164010)

(assert (=> b!7260417 (= lt!2590580 (lemmaConcatPreservesForall!1492 (exprs!8125 lt!2590564) (exprs!8125 ct2!328) lambda!446444))))

(declare-fun lt!2590561 () Unit!164010)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!40 (Context!15250 Context!15250 Context!15250 C!37644) Unit!164010)

(assert (=> b!7260417 (= lt!2590561 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!40 ct1!232 ct2!328 lt!2590564 (h!76959 s1!1971)))))

(declare-fun tail!14394 (List!70635) List!70635)

(assert (=> b!7260417 (= (tail!14394 lt!2590541) lt!2590548)))

(declare-fun s2!1849 () List!70635)

(declare-fun ++!16632 (List!70635 List!70635) List!70635)

(assert (=> b!7260417 (= lt!2590541 (++!16632 s1!1971 s2!1849))))

(declare-fun lt!2590568 () Unit!164010)

(declare-fun e!4353693 () Unit!164010)

(assert (=> b!7260417 (= lt!2590568 e!4353693)))

(declare-fun c!1350708 () Bool)

(declare-fun nullable!7945 (Regex!18685) Bool)

(assert (=> b!7260417 (= c!1350708 (nullable!7945 (h!76960 (exprs!8125 ct1!232))))))

(declare-fun lt!2590579 () Context!15250)

(declare-fun lambda!446446 () Int)

(declare-fun flatMap!2850 ((InoxSet Context!15250) Int) (InoxSet Context!15250))

(declare-fun derivationStepZipperUp!2509 (Context!15250 C!37644) (InoxSet Context!15250))

(assert (=> b!7260417 (= (flatMap!2850 lt!2590556 lambda!446446) (derivationStepZipperUp!2509 lt!2590579 (h!76959 s1!1971)))))

(declare-fun lt!2590565 () Unit!164010)

(declare-fun lemmaFlatMapOnSingletonSet!2254 ((InoxSet Context!15250) Context!15250 Int) Unit!164010)

(assert (=> b!7260417 (= lt!2590565 (lemmaFlatMapOnSingletonSet!2254 lt!2590556 lt!2590579 lambda!446446))))

(declare-fun lt!2590558 () Unit!164010)

(assert (=> b!7260417 (= lt!2590558 (lemmaConcatPreservesForall!1492 (exprs!8125 ct1!232) (exprs!8125 ct2!328) lambda!446444))))

(declare-fun lt!2590557 () (InoxSet Context!15250))

(assert (=> b!7260417 (= (flatMap!2850 lt!2590557 lambda!446446) (derivationStepZipperUp!2509 ct1!232 (h!76959 s1!1971)))))

(declare-fun lt!2590549 () Unit!164010)

(assert (=> b!7260417 (= lt!2590549 (lemmaFlatMapOnSingletonSet!2254 lt!2590557 ct1!232 lambda!446446))))

(declare-fun lt!2590559 () Context!15250)

(declare-fun lt!2590555 () (InoxSet Context!15250))

(declare-fun derivationStepZipperDown!2679 (Regex!18685 Context!15250 C!37644) (InoxSet Context!15250))

(assert (=> b!7260417 (= lt!2590555 (derivationStepZipperDown!2679 (h!76960 (exprs!8125 ct1!232)) lt!2590559 (h!76959 s1!1971)))))

(declare-fun lt!2590545 () List!70636)

(declare-fun tail!14395 (List!70636) List!70636)

(assert (=> b!7260417 (= lt!2590559 (Context!15251 (tail!14395 lt!2590545)))))

(declare-fun res!2943913 () Bool)

(declare-fun e!4353687 () Bool)

(assert (=> start!707500 (=> (not res!2943913) (not e!4353687))))

(assert (=> start!707500 (= res!2943913 (matchZipper!3595 lt!2590557 s1!1971))))

(assert (=> start!707500 (= lt!2590557 (store ((as const (Array Context!15250 Bool)) false) ct1!232 true))))

(assert (=> start!707500 e!4353687))

(declare-fun e!4353681 () Bool)

(declare-fun inv!89722 (Context!15250) Bool)

(assert (=> start!707500 (and (inv!89722 ct1!232) e!4353681)))

(declare-fun e!4353685 () Bool)

(assert (=> start!707500 e!4353685))

(declare-fun e!4353692 () Bool)

(assert (=> start!707500 e!4353692))

(declare-fun e!4353690 () Bool)

(assert (=> start!707500 (and (inv!89722 ct2!328) e!4353690)))

(declare-fun e!4353683 () Bool)

(declare-fun e!4353688 () Bool)

(assert (=> b!7260418 (= e!4353683 (not e!4353688))))

(declare-fun res!2943909 () Bool)

(assert (=> b!7260418 (=> res!2943909 e!4353688)))

(declare-fun lt!2590571 () (InoxSet Context!15250))

(assert (=> b!7260418 (= res!2943909 (not (exists!4448 lt!2590571 lambda!446445)))))

(declare-fun lt!2590550 () List!70637)

(declare-fun exists!4449 (List!70637 Int) Bool)

(assert (=> b!7260418 (exists!4449 lt!2590550 lambda!446445)))

(declare-fun lt!2590540 () Unit!164010)

(declare-fun lemmaZipperMatchesExistsMatchingContext!788 (List!70637 List!70635) Unit!164010)

(assert (=> b!7260418 (= lt!2590540 (lemmaZipperMatchesExistsMatchingContext!788 lt!2590550 (t!384701 s1!1971)))))

(assert (=> b!7260418 (= lt!2590550 (toList!11514 lt!2590571))))

(declare-fun derivationStepZipper!3463 ((InoxSet Context!15250) C!37644) (InoxSet Context!15250))

(assert (=> b!7260418 (= lt!2590574 (derivationStepZipper!3463 lt!2590556 (h!76959 s1!1971)))))

(declare-fun b!7260419 () Bool)

(assert (=> b!7260419 (= e!4353695 (exists!4448 lt!2590574 lambda!446447))))

(declare-fun b!7260420 () Bool)

(declare-fun e!4353686 () Bool)

(assert (=> b!7260420 (= e!4353688 e!4353686)))

(declare-fun res!2943916 () Bool)

(assert (=> b!7260420 (=> res!2943916 e!4353686)))

(declare-fun isEmpty!40603 (List!70636) Bool)

(assert (=> b!7260420 (= res!2943916 (isEmpty!40603 (exprs!8125 ct1!232)))))

(declare-fun lt!2590554 () (InoxSet Context!15250))

(assert (=> b!7260420 (= lt!2590554 (derivationStepZipperUp!2509 ct1!232 (h!76959 s1!1971)))))

(declare-fun lt!2590553 () Unit!164010)

(assert (=> b!7260420 (= lt!2590553 (lemmaConcatPreservesForall!1492 (exprs!8125 lt!2590564) (exprs!8125 ct2!328) lambda!446444))))

(assert (=> b!7260420 (matchZipper!3595 (store ((as const (Array Context!15250 Bool)) false) lt!2590573 true) lt!2590548)))

(assert (=> b!7260420 (= lt!2590548 (++!16632 (t!384701 s1!1971) s2!1849))))

(declare-fun ++!16633 (List!70636 List!70636) List!70636)

(assert (=> b!7260420 (= lt!2590573 (Context!15251 (++!16633 (exprs!8125 lt!2590564) (exprs!8125 ct2!328))))))

(declare-fun lt!2590570 () Unit!164010)

(assert (=> b!7260420 (= lt!2590570 (lemmaConcatPreservesForall!1492 (exprs!8125 lt!2590564) (exprs!8125 ct2!328) lambda!446444))))

(declare-fun lt!2590572 () Unit!164010)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!430 (Context!15250 Context!15250 List!70635 List!70635) Unit!164010)

(assert (=> b!7260420 (= lt!2590572 (lemmaConcatenateContextMatchesConcatOfStrings!430 lt!2590564 ct2!328 (t!384701 s1!1971) s2!1849))))

(declare-fun getWitness!2267 ((InoxSet Context!15250) Int) Context!15250)

(assert (=> b!7260420 (= lt!2590564 (getWitness!2267 lt!2590571 lambda!446445))))

(declare-fun b!7260421 () Bool)

(declare-fun e!4353694 () Bool)

(declare-fun lt!2590551 () (InoxSet Context!15250))

(assert (=> b!7260421 (= e!4353694 (matchZipper!3595 lt!2590551 lt!2590548))))

(declare-fun b!7260422 () Bool)

(declare-fun res!2943912 () Bool)

(assert (=> b!7260422 (=> (not res!2943912) (not e!4353687))))

(assert (=> b!7260422 (= res!2943912 (matchZipper!3595 (store ((as const (Array Context!15250 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7260423 () Bool)

(declare-fun e!4353689 () Bool)

(assert (=> b!7260423 (= e!4353689 e!4353683)))

(declare-fun res!2943915 () Bool)

(assert (=> b!7260423 (=> (not res!2943915) (not e!4353683))))

(assert (=> b!7260423 (= res!2943915 (matchZipper!3595 lt!2590571 (t!384701 s1!1971)))))

(assert (=> b!7260423 (= lt!2590571 (derivationStepZipper!3463 lt!2590557 (h!76959 s1!1971)))))

(declare-fun b!7260424 () Bool)

(declare-fun tp!2038744 () Bool)

(assert (=> b!7260424 (= e!4353690 tp!2038744)))

(declare-fun b!7260425 () Bool)

(declare-fun Unit!164012 () Unit!164010)

(assert (=> b!7260425 (= e!4353693 Unit!164012)))

(declare-fun lt!2590563 () Unit!164010)

(assert (=> b!7260425 (= lt!2590563 (lemmaConcatPreservesForall!1492 (exprs!8125 ct1!232) (exprs!8125 ct2!328) lambda!446444))))

(declare-fun lt!2590576 () (InoxSet Context!15250))

(declare-fun lt!2590542 () Context!15250)

(assert (=> b!7260425 (= lt!2590576 (derivationStepZipperUp!2509 lt!2590542 (h!76959 s1!1971)))))

(declare-fun lt!2590544 () (InoxSet Context!15250))

(declare-fun lt!2590560 () Unit!164010)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1740 ((InoxSet Context!15250) (InoxSet Context!15250) List!70635) Unit!164010)

(assert (=> b!7260425 (= lt!2590560 (lemmaZipperConcatMatchesSameAsBothZippers!1740 lt!2590544 lt!2590576 (t!384701 s1!1971)))))

(declare-fun res!2943918 () Bool)

(assert (=> b!7260425 (= res!2943918 (matchZipper!3595 lt!2590544 (t!384701 s1!1971)))))

(declare-fun e!4353682 () Bool)

(assert (=> b!7260425 (=> res!2943918 e!4353682)))

(assert (=> b!7260425 (= (matchZipper!3595 ((_ map or) lt!2590544 lt!2590576) (t!384701 s1!1971)) e!4353682)))

(declare-fun lt!2590539 () Unit!164010)

(assert (=> b!7260425 (= lt!2590539 (lemmaConcatPreservesForall!1492 (exprs!8125 ct1!232) (exprs!8125 ct2!328) lambda!446444))))

(assert (=> b!7260425 (= lt!2590551 (derivationStepZipperUp!2509 lt!2590559 (h!76959 s1!1971)))))

(declare-fun lt!2590546 () Unit!164010)

(assert (=> b!7260425 (= lt!2590546 (lemmaZipperConcatMatchesSameAsBothZippers!1740 lt!2590555 lt!2590551 lt!2590548))))

(declare-fun res!2943910 () Bool)

(assert (=> b!7260425 (= res!2943910 (matchZipper!3595 lt!2590555 lt!2590548))))

(assert (=> b!7260425 (=> res!2943910 e!4353694)))

(assert (=> b!7260425 (= (matchZipper!3595 ((_ map or) lt!2590555 lt!2590551) lt!2590548) e!4353694)))

(declare-fun b!7260426 () Bool)

(assert (=> b!7260426 (= e!4353686 e!4353696)))

(declare-fun res!2943917 () Bool)

(assert (=> b!7260426 (=> res!2943917 e!4353696)))

(assert (=> b!7260426 (= res!2943917 (isEmpty!40603 lt!2590545))))

(declare-fun lt!2590569 () Unit!164010)

(assert (=> b!7260426 (= lt!2590569 (lemmaConcatPreservesForall!1492 (exprs!8125 ct1!232) (exprs!8125 ct2!328) lambda!446444))))

(assert (=> b!7260426 (= lt!2590562 (derivationStepZipperUp!2509 lt!2590579 (h!76959 s1!1971)))))

(declare-fun lt!2590577 () Unit!164010)

(assert (=> b!7260426 (= lt!2590577 (lemmaConcatPreservesForall!1492 (exprs!8125 ct1!232) (exprs!8125 ct2!328) lambda!446444))))

(assert (=> b!7260426 (= lt!2590544 (derivationStepZipperDown!2679 (h!76960 (exprs!8125 ct1!232)) lt!2590542 (h!76959 s1!1971)))))

(assert (=> b!7260426 (= lt!2590542 (Context!15251 (tail!14395 (exprs!8125 ct1!232))))))

(declare-fun b!7260427 () Bool)

(assert (=> b!7260427 (= e!4353684 true)))

(declare-fun lt!2590547 () Unit!164010)

(assert (=> b!7260427 (= lt!2590547 (lemmaConcatPreservesForall!1492 (exprs!8125 ct1!232) (exprs!8125 ct2!328) lambda!446444))))

(declare-fun b!7260428 () Bool)

(declare-fun tp_is_empty!46835 () Bool)

(declare-fun tp!2038745 () Bool)

(assert (=> b!7260428 (= e!4353692 (and tp_is_empty!46835 tp!2038745))))

(declare-fun b!7260429 () Bool)

(assert (=> b!7260429 (= e!4353691 (matchZipper!3595 lt!2590574 lt!2590548))))

(declare-fun b!7260430 () Bool)

(declare-fun Unit!164013 () Unit!164010)

(assert (=> b!7260430 (= e!4353693 Unit!164013)))

(declare-fun b!7260431 () Bool)

(declare-fun tp!2038743 () Bool)

(assert (=> b!7260431 (= e!4353685 (and tp_is_empty!46835 tp!2038743))))

(declare-fun b!7260432 () Bool)

(declare-fun tp!2038746 () Bool)

(assert (=> b!7260432 (= e!4353681 tp!2038746)))

(declare-fun b!7260433 () Bool)

(assert (=> b!7260433 (= e!4353682 (matchZipper!3595 lt!2590576 (t!384701 s1!1971)))))

(declare-fun b!7260434 () Bool)

(assert (=> b!7260434 (= e!4353687 e!4353689)))

(declare-fun res!2943907 () Bool)

(assert (=> b!7260434 (=> (not res!2943907) (not e!4353689))))

(get-info :version)

(assert (=> b!7260434 (= res!2943907 (and (not ((_ is Nil!70512) (exprs!8125 ct1!232))) ((_ is Cons!70511) s1!1971)))))

(assert (=> b!7260434 (= lt!2590556 (store ((as const (Array Context!15250 Bool)) false) lt!2590579 true))))

(assert (=> b!7260434 (= lt!2590579 (Context!15251 lt!2590545))))

(assert (=> b!7260434 (= lt!2590545 (++!16633 (exprs!8125 ct1!232) (exprs!8125 ct2!328)))))

(declare-fun lt!2590538 () Unit!164010)

(assert (=> b!7260434 (= lt!2590538 (lemmaConcatPreservesForall!1492 (exprs!8125 ct1!232) (exprs!8125 ct2!328) lambda!446444))))

(assert (= (and start!707500 res!2943913) b!7260422))

(assert (= (and b!7260422 res!2943912) b!7260434))

(assert (= (and b!7260434 res!2943907) b!7260423))

(assert (= (and b!7260423 res!2943915) b!7260418))

(assert (= (and b!7260418 (not res!2943909)) b!7260420))

(assert (= (and b!7260420 (not res!2943916)) b!7260426))

(assert (= (and b!7260426 (not res!2943917)) b!7260417))

(assert (= (and b!7260417 c!1350708) b!7260425))

(assert (= (and b!7260417 (not c!1350708)) b!7260430))

(assert (= (and b!7260425 (not res!2943918)) b!7260433))

(assert (= (and b!7260425 (not res!2943910)) b!7260421))

(assert (= (and b!7260417 res!2943914) b!7260419))

(assert (= (and b!7260417 res!2943911) b!7260429))

(assert (= (and b!7260417 (not res!2943908)) b!7260427))

(assert (= start!707500 b!7260432))

(assert (= (and start!707500 ((_ is Cons!70511) s1!1971)) b!7260431))

(assert (= (and start!707500 ((_ is Cons!70511) s2!1849)) b!7260428))

(assert (= start!707500 b!7260424))

(declare-fun m!7944942 () Bool)

(assert (=> start!707500 m!7944942))

(declare-fun m!7944944 () Bool)

(assert (=> start!707500 m!7944944))

(declare-fun m!7944946 () Bool)

(assert (=> start!707500 m!7944946))

(declare-fun m!7944948 () Bool)

(assert (=> start!707500 m!7944948))

(declare-fun m!7944950 () Bool)

(assert (=> b!7260421 m!7944950))

(declare-fun m!7944952 () Bool)

(assert (=> b!7260418 m!7944952))

(declare-fun m!7944954 () Bool)

(assert (=> b!7260418 m!7944954))

(declare-fun m!7944956 () Bool)

(assert (=> b!7260418 m!7944956))

(declare-fun m!7944958 () Bool)

(assert (=> b!7260418 m!7944958))

(declare-fun m!7944960 () Bool)

(assert (=> b!7260418 m!7944960))

(declare-fun m!7944962 () Bool)

(assert (=> b!7260426 m!7944962))

(declare-fun m!7944964 () Bool)

(assert (=> b!7260426 m!7944964))

(declare-fun m!7944966 () Bool)

(assert (=> b!7260426 m!7944966))

(assert (=> b!7260426 m!7944962))

(declare-fun m!7944968 () Bool)

(assert (=> b!7260426 m!7944968))

(declare-fun m!7944970 () Bool)

(assert (=> b!7260426 m!7944970))

(declare-fun m!7944972 () Bool)

(assert (=> b!7260419 m!7944972))

(declare-fun m!7944974 () Bool)

(assert (=> b!7260422 m!7944974))

(assert (=> b!7260422 m!7944974))

(declare-fun m!7944976 () Bool)

(assert (=> b!7260422 m!7944976))

(declare-fun m!7944978 () Bool)

(assert (=> b!7260434 m!7944978))

(declare-fun m!7944980 () Bool)

(assert (=> b!7260434 m!7944980))

(assert (=> b!7260434 m!7944962))

(declare-fun m!7944982 () Bool)

(assert (=> b!7260420 m!7944982))

(declare-fun m!7944984 () Bool)

(assert (=> b!7260420 m!7944984))

(declare-fun m!7944986 () Bool)

(assert (=> b!7260420 m!7944986))

(declare-fun m!7944988 () Bool)

(assert (=> b!7260420 m!7944988))

(assert (=> b!7260420 m!7944988))

(declare-fun m!7944990 () Bool)

(assert (=> b!7260420 m!7944990))

(declare-fun m!7944992 () Bool)

(assert (=> b!7260420 m!7944992))

(declare-fun m!7944994 () Bool)

(assert (=> b!7260420 m!7944994))

(declare-fun m!7944996 () Bool)

(assert (=> b!7260420 m!7944996))

(declare-fun m!7944998 () Bool)

(assert (=> b!7260420 m!7944998))

(assert (=> b!7260420 m!7944996))

(assert (=> b!7260427 m!7944962))

(declare-fun m!7945000 () Bool)

(assert (=> b!7260423 m!7945000))

(declare-fun m!7945002 () Bool)

(assert (=> b!7260423 m!7945002))

(declare-fun m!7945004 () Bool)

(assert (=> b!7260429 m!7945004))

(declare-fun m!7945006 () Bool)

(assert (=> b!7260433 m!7945006))

(assert (=> b!7260417 m!7944962))

(declare-fun m!7945008 () Bool)

(assert (=> b!7260417 m!7945008))

(declare-fun m!7945010 () Bool)

(assert (=> b!7260417 m!7945010))

(declare-fun m!7945012 () Bool)

(assert (=> b!7260417 m!7945012))

(assert (=> b!7260417 m!7944962))

(declare-fun m!7945014 () Bool)

(assert (=> b!7260417 m!7945014))

(declare-fun m!7945016 () Bool)

(assert (=> b!7260417 m!7945016))

(declare-fun m!7945018 () Bool)

(assert (=> b!7260417 m!7945018))

(declare-fun m!7945020 () Bool)

(assert (=> b!7260417 m!7945020))

(declare-fun m!7945022 () Bool)

(assert (=> b!7260417 m!7945022))

(declare-fun m!7945024 () Bool)

(assert (=> b!7260417 m!7945024))

(assert (=> b!7260417 m!7944996))

(assert (=> b!7260417 m!7944962))

(declare-fun m!7945026 () Bool)

(assert (=> b!7260417 m!7945026))

(assert (=> b!7260417 m!7944996))

(declare-fun m!7945028 () Bool)

(assert (=> b!7260417 m!7945028))

(declare-fun m!7945030 () Bool)

(assert (=> b!7260417 m!7945030))

(assert (=> b!7260417 m!7944964))

(declare-fun m!7945032 () Bool)

(assert (=> b!7260417 m!7945032))

(declare-fun m!7945034 () Bool)

(assert (=> b!7260417 m!7945034))

(declare-fun m!7945036 () Bool)

(assert (=> b!7260417 m!7945036))

(declare-fun m!7945038 () Bool)

(assert (=> b!7260417 m!7945038))

(assert (=> b!7260417 m!7944986))

(declare-fun m!7945040 () Bool)

(assert (=> b!7260417 m!7945040))

(assert (=> b!7260417 m!7945014))

(assert (=> b!7260417 m!7944996))

(assert (=> b!7260417 m!7944972))

(declare-fun m!7945042 () Bool)

(assert (=> b!7260417 m!7945042))

(declare-fun m!7945044 () Bool)

(assert (=> b!7260425 m!7945044))

(declare-fun m!7945046 () Bool)

(assert (=> b!7260425 m!7945046))

(declare-fun m!7945048 () Bool)

(assert (=> b!7260425 m!7945048))

(assert (=> b!7260425 m!7944962))

(declare-fun m!7945050 () Bool)

(assert (=> b!7260425 m!7945050))

(declare-fun m!7945052 () Bool)

(assert (=> b!7260425 m!7945052))

(declare-fun m!7945054 () Bool)

(assert (=> b!7260425 m!7945054))

(assert (=> b!7260425 m!7944962))

(declare-fun m!7945056 () Bool)

(assert (=> b!7260425 m!7945056))

(declare-fun m!7945058 () Bool)

(assert (=> b!7260425 m!7945058))

(check-sat (not b!7260426) (not b!7260434) (not b!7260431) (not b!7260429) (not b!7260419) (not b!7260424) (not b!7260421) tp_is_empty!46835 (not b!7260433) (not start!707500) (not b!7260428) (not b!7260427) (not b!7260417) (not b!7260420) (not b!7260423) (not b!7260432) (not b!7260422) (not b!7260418) (not b!7260425))
(check-sat)
