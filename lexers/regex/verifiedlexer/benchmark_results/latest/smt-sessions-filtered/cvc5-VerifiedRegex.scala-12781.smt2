; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!706900 () Bool)

(assert start!706900)

(declare-fun b!7257365 () Bool)

(assert (=> b!7257365 true))

(declare-fun b!7257361 () Bool)

(assert (=> b!7257361 true))

(declare-fun b!7257355 () Bool)

(declare-datatypes ((Unit!163948 0))(
  ( (Unit!163949) )
))
(declare-fun e!4351721 () Unit!163948)

(declare-fun Unit!163950 () Unit!163948)

(assert (=> b!7257355 (= e!4351721 Unit!163950)))

(declare-fun lambda!445471 () Int)

(declare-fun lt!2588112 () Unit!163948)

(declare-datatypes ((C!37614 0))(
  ( (C!37615 (val!28755 Int)) )
))
(declare-datatypes ((Regex!18670 0))(
  ( (ElementMatch!18670 (c!1349608 C!37614)) (Concat!27515 (regOne!37852 Regex!18670) (regTwo!37852 Regex!18670)) (EmptyExpr!18670) (Star!18670 (reg!18999 Regex!18670)) (EmptyLang!18670) (Union!18670 (regOne!37853 Regex!18670) (regTwo!37853 Regex!18670)) )
))
(declare-datatypes ((List!70590 0))(
  ( (Nil!70466) (Cons!70466 (h!76914 Regex!18670) (t!384654 List!70590)) )
))
(declare-datatypes ((Context!15220 0))(
  ( (Context!15221 (exprs!8110 List!70590)) )
))
(declare-fun ct1!232 () Context!15220)

(declare-fun ct2!328 () Context!15220)

(declare-fun lemmaConcatPreservesForall!1477 (List!70590 List!70590 Int) Unit!163948)

(assert (=> b!7257355 (= lt!2588112 (lemmaConcatPreservesForall!1477 (exprs!8110 ct1!232) (exprs!8110 ct2!328) lambda!445471))))

(declare-fun lt!2588108 () (Set Context!15220))

(declare-fun lt!2588111 () Context!15220)

(declare-datatypes ((List!70591 0))(
  ( (Nil!70467) (Cons!70467 (h!76915 C!37614) (t!384655 List!70591)) )
))
(declare-fun s1!1971 () List!70591)

(declare-fun derivationStepZipperUp!2494 (Context!15220 C!37614) (Set Context!15220))

(assert (=> b!7257355 (= lt!2588108 (derivationStepZipperUp!2494 lt!2588111 (h!76915 s1!1971)))))

(declare-fun lt!2588124 () (Set Context!15220))

(declare-fun lt!2588104 () Unit!163948)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1725 ((Set Context!15220) (Set Context!15220) List!70591) Unit!163948)

(assert (=> b!7257355 (= lt!2588104 (lemmaZipperConcatMatchesSameAsBothZippers!1725 lt!2588124 lt!2588108 (t!384655 s1!1971)))))

(declare-fun res!2942897 () Bool)

(declare-fun matchZipper!3580 ((Set Context!15220) List!70591) Bool)

(assert (=> b!7257355 (= res!2942897 (matchZipper!3580 lt!2588124 (t!384655 s1!1971)))))

(declare-fun e!4351720 () Bool)

(assert (=> b!7257355 (=> res!2942897 e!4351720)))

(assert (=> b!7257355 (= (matchZipper!3580 (set.union lt!2588124 lt!2588108) (t!384655 s1!1971)) e!4351720)))

(declare-fun lt!2588127 () Unit!163948)

(assert (=> b!7257355 (= lt!2588127 (lemmaConcatPreservesForall!1477 (exprs!8110 ct1!232) (exprs!8110 ct2!328) lambda!445471))))

(declare-fun lt!2588120 () (Set Context!15220))

(declare-fun lt!2588126 () Context!15220)

(assert (=> b!7257355 (= lt!2588120 (derivationStepZipperUp!2494 lt!2588126 (h!76915 s1!1971)))))

(declare-fun lt!2588113 () List!70591)

(declare-fun lt!2588109 () (Set Context!15220))

(declare-fun lt!2588103 () Unit!163948)

(assert (=> b!7257355 (= lt!2588103 (lemmaZipperConcatMatchesSameAsBothZippers!1725 lt!2588109 lt!2588120 lt!2588113))))

(declare-fun res!2942889 () Bool)

(assert (=> b!7257355 (= res!2942889 (matchZipper!3580 lt!2588109 lt!2588113))))

(declare-fun e!4351711 () Bool)

(assert (=> b!7257355 (=> res!2942889 e!4351711)))

(assert (=> b!7257355 (= (matchZipper!3580 (set.union lt!2588109 lt!2588120) lt!2588113) e!4351711)))

(declare-fun b!7257356 () Bool)

(declare-fun e!4351712 () Bool)

(declare-fun tp!2038349 () Bool)

(assert (=> b!7257356 (= e!4351712 tp!2038349)))

(declare-fun b!7257357 () Bool)

(declare-fun e!4351722 () Bool)

(declare-fun tp!2038350 () Bool)

(assert (=> b!7257357 (= e!4351722 tp!2038350)))

(declare-fun res!2942893 () Bool)

(declare-fun e!4351723 () Bool)

(assert (=> start!706900 (=> (not res!2942893) (not e!4351723))))

(declare-fun lt!2588106 () (Set Context!15220))

(assert (=> start!706900 (= res!2942893 (matchZipper!3580 lt!2588106 s1!1971))))

(assert (=> start!706900 (= lt!2588106 (set.insert ct1!232 (as set.empty (Set Context!15220))))))

(assert (=> start!706900 e!4351723))

(declare-fun inv!89686 (Context!15220) Bool)

(assert (=> start!706900 (and (inv!89686 ct1!232) e!4351712)))

(declare-fun e!4351719 () Bool)

(assert (=> start!706900 e!4351719))

(declare-fun e!4351717 () Bool)

(assert (=> start!706900 e!4351717))

(assert (=> start!706900 (and (inv!89686 ct2!328) e!4351722)))

(declare-fun b!7257358 () Bool)

(declare-fun tp_is_empty!46805 () Bool)

(declare-fun tp!2038348 () Bool)

(assert (=> b!7257358 (= e!4351717 (and tp_is_empty!46805 tp!2038348))))

(declare-fun b!7257359 () Bool)

(declare-fun e!4351718 () Bool)

(declare-fun e!4351714 () Bool)

(assert (=> b!7257359 (= e!4351718 e!4351714)))

(declare-fun res!2942894 () Bool)

(assert (=> b!7257359 (=> (not res!2942894) (not e!4351714))))

(declare-fun lt!2588100 () (Set Context!15220))

(assert (=> b!7257359 (= res!2942894 (matchZipper!3580 lt!2588100 (t!384655 s1!1971)))))

(declare-fun derivationStepZipper!3448 ((Set Context!15220) C!37614) (Set Context!15220))

(assert (=> b!7257359 (= lt!2588100 (derivationStepZipper!3448 lt!2588106 (h!76915 s1!1971)))))

(declare-fun b!7257360 () Bool)

(declare-fun Unit!163951 () Unit!163948)

(assert (=> b!7257360 (= e!4351721 Unit!163951)))

(declare-fun e!4351716 () Bool)

(declare-fun lt!2588135 () Context!15220)

(assert (=> b!7257361 (= e!4351716 (inv!89686 lt!2588135))))

(declare-fun lt!2588134 () Unit!163948)

(declare-fun lt!2588105 () Context!15220)

(assert (=> b!7257361 (= lt!2588134 (lemmaConcatPreservesForall!1477 (exprs!8110 lt!2588105) (exprs!8110 ct2!328) lambda!445471))))

(declare-fun lt!2588099 () (Set Context!15220))

(assert (=> b!7257361 (set.member lt!2588135 (derivationStepZipper!3448 lt!2588099 (h!76915 s1!1971)))))

(declare-fun lt!2588116 () Unit!163948)

(assert (=> b!7257361 (= lt!2588116 (lemmaConcatPreservesForall!1477 (exprs!8110 lt!2588105) (exprs!8110 ct2!328) lambda!445471))))

(declare-fun lt!2588121 () (Set Context!15220))

(assert (=> b!7257361 (set.member lt!2588135 lt!2588121)))

(declare-fun lt!2588131 () Unit!163948)

(assert (=> b!7257361 (= lt!2588131 (lemmaConcatPreservesForall!1477 (exprs!8110 ct1!232) (exprs!8110 ct2!328) lambda!445471))))

(declare-fun lt!2588110 () Unit!163948)

(assert (=> b!7257361 (= lt!2588110 (lemmaConcatPreservesForall!1477 (exprs!8110 lt!2588105) (exprs!8110 ct2!328) lambda!445471))))

(declare-fun lt!2588102 () Unit!163948)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!25 (Context!15220 Context!15220 Context!15220 C!37614) Unit!163948)

(assert (=> b!7257361 (= lt!2588102 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!25 ct1!232 ct2!328 lt!2588105 (h!76915 s1!1971)))))

(declare-fun s2!1849 () List!70591)

(declare-fun tail!14364 (List!70591) List!70591)

(declare-fun ++!16602 (List!70591 List!70591) List!70591)

(assert (=> b!7257361 (= (tail!14364 (++!16602 s1!1971 s2!1849)) lt!2588113)))

(declare-fun lt!2588129 () Unit!163948)

(assert (=> b!7257361 (= lt!2588129 e!4351721)))

(declare-fun c!1349607 () Bool)

(declare-fun nullable!7930 (Regex!18670) Bool)

(assert (=> b!7257361 (= c!1349607 (nullable!7930 (h!76914 (exprs!8110 ct1!232))))))

(declare-fun lambda!445473 () Int)

(declare-fun lt!2588128 () Context!15220)

(declare-fun flatMap!2835 ((Set Context!15220) Int) (Set Context!15220))

(assert (=> b!7257361 (= (flatMap!2835 lt!2588099 lambda!445473) (derivationStepZipperUp!2494 lt!2588128 (h!76915 s1!1971)))))

(declare-fun lt!2588101 () Unit!163948)

(declare-fun lemmaFlatMapOnSingletonSet!2239 ((Set Context!15220) Context!15220 Int) Unit!163948)

(assert (=> b!7257361 (= lt!2588101 (lemmaFlatMapOnSingletonSet!2239 lt!2588099 lt!2588128 lambda!445473))))

(declare-fun lt!2588122 () Unit!163948)

(assert (=> b!7257361 (= lt!2588122 (lemmaConcatPreservesForall!1477 (exprs!8110 ct1!232) (exprs!8110 ct2!328) lambda!445471))))

(assert (=> b!7257361 (= (flatMap!2835 lt!2588106 lambda!445473) (derivationStepZipperUp!2494 ct1!232 (h!76915 s1!1971)))))

(declare-fun lt!2588117 () Unit!163948)

(assert (=> b!7257361 (= lt!2588117 (lemmaFlatMapOnSingletonSet!2239 lt!2588106 ct1!232 lambda!445473))))

(declare-fun derivationStepZipperDown!2664 (Regex!18670 Context!15220 C!37614) (Set Context!15220))

(assert (=> b!7257361 (= lt!2588109 (derivationStepZipperDown!2664 (h!76914 (exprs!8110 ct1!232)) lt!2588126 (h!76915 s1!1971)))))

(declare-fun lt!2588107 () List!70590)

(declare-fun tail!14365 (List!70590) List!70590)

(assert (=> b!7257361 (= lt!2588126 (Context!15221 (tail!14365 lt!2588107)))))

(declare-fun b!7257362 () Bool)

(declare-fun tp!2038347 () Bool)

(assert (=> b!7257362 (= e!4351719 (and tp_is_empty!46805 tp!2038347))))

(declare-fun b!7257363 () Bool)

(assert (=> b!7257363 (= e!4351723 e!4351718)))

(declare-fun res!2942892 () Bool)

(assert (=> b!7257363 (=> (not res!2942892) (not e!4351718))))

(assert (=> b!7257363 (= res!2942892 (and (not (is-Nil!70466 (exprs!8110 ct1!232))) (is-Cons!70467 s1!1971)))))

(assert (=> b!7257363 (= lt!2588099 (set.insert lt!2588128 (as set.empty (Set Context!15220))))))

(assert (=> b!7257363 (= lt!2588128 (Context!15221 lt!2588107))))

(declare-fun ++!16603 (List!70590 List!70590) List!70590)

(assert (=> b!7257363 (= lt!2588107 (++!16603 (exprs!8110 ct1!232) (exprs!8110 ct2!328)))))

(declare-fun lt!2588114 () Unit!163948)

(assert (=> b!7257363 (= lt!2588114 (lemmaConcatPreservesForall!1477 (exprs!8110 ct1!232) (exprs!8110 ct2!328) lambda!445471))))

(declare-fun b!7257364 () Bool)

(assert (=> b!7257364 (= e!4351711 (matchZipper!3580 lt!2588120 lt!2588113))))

(declare-fun e!4351713 () Bool)

(assert (=> b!7257365 (= e!4351714 (not e!4351713))))

(declare-fun res!2942895 () Bool)

(assert (=> b!7257365 (=> res!2942895 e!4351713)))

(declare-fun lambda!445472 () Int)

(declare-fun exists!4418 ((Set Context!15220) Int) Bool)

(assert (=> b!7257365 (= res!2942895 (not (exists!4418 lt!2588100 lambda!445472)))))

(declare-datatypes ((List!70592 0))(
  ( (Nil!70468) (Cons!70468 (h!76916 Context!15220) (t!384656 List!70592)) )
))
(declare-fun lt!2588125 () List!70592)

(declare-fun exists!4419 (List!70592 Int) Bool)

(assert (=> b!7257365 (exists!4419 lt!2588125 lambda!445472)))

(declare-fun lt!2588119 () Unit!163948)

(declare-fun lemmaZipperMatchesExistsMatchingContext!773 (List!70592 List!70591) Unit!163948)

(assert (=> b!7257365 (= lt!2588119 (lemmaZipperMatchesExistsMatchingContext!773 lt!2588125 (t!384655 s1!1971)))))

(declare-fun toList!11499 ((Set Context!15220)) List!70592)

(assert (=> b!7257365 (= lt!2588125 (toList!11499 lt!2588100))))

(declare-fun b!7257366 () Bool)

(declare-fun res!2942890 () Bool)

(assert (=> b!7257366 (=> (not res!2942890) (not e!4351723))))

(assert (=> b!7257366 (= res!2942890 (matchZipper!3580 (set.insert ct2!328 (as set.empty (Set Context!15220))) s2!1849))))

(declare-fun b!7257367 () Bool)

(assert (=> b!7257367 (= e!4351720 (matchZipper!3580 lt!2588108 (t!384655 s1!1971)))))

(declare-fun b!7257368 () Bool)

(declare-fun e!4351715 () Bool)

(assert (=> b!7257368 (= e!4351715 e!4351716)))

(declare-fun res!2942891 () Bool)

(assert (=> b!7257368 (=> res!2942891 e!4351716)))

(declare-fun isEmpty!40580 (List!70590) Bool)

(assert (=> b!7257368 (= res!2942891 (isEmpty!40580 lt!2588107))))

(declare-fun lt!2588130 () Unit!163948)

(assert (=> b!7257368 (= lt!2588130 (lemmaConcatPreservesForall!1477 (exprs!8110 ct1!232) (exprs!8110 ct2!328) lambda!445471))))

(assert (=> b!7257368 (= lt!2588121 (derivationStepZipperUp!2494 lt!2588128 (h!76915 s1!1971)))))

(declare-fun lt!2588123 () Unit!163948)

(assert (=> b!7257368 (= lt!2588123 (lemmaConcatPreservesForall!1477 (exprs!8110 ct1!232) (exprs!8110 ct2!328) lambda!445471))))

(assert (=> b!7257368 (= lt!2588124 (derivationStepZipperDown!2664 (h!76914 (exprs!8110 ct1!232)) lt!2588111 (h!76915 s1!1971)))))

(assert (=> b!7257368 (= lt!2588111 (Context!15221 (tail!14365 (exprs!8110 ct1!232))))))

(declare-fun b!7257369 () Bool)

(assert (=> b!7257369 (= e!4351713 e!4351715)))

(declare-fun res!2942896 () Bool)

(assert (=> b!7257369 (=> res!2942896 e!4351715)))

(assert (=> b!7257369 (= res!2942896 (isEmpty!40580 (exprs!8110 ct1!232)))))

(declare-fun lt!2588133 () (Set Context!15220))

(assert (=> b!7257369 (= lt!2588133 (derivationStepZipperUp!2494 ct1!232 (h!76915 s1!1971)))))

(declare-fun lt!2588118 () Unit!163948)

(assert (=> b!7257369 (= lt!2588118 (lemmaConcatPreservesForall!1477 (exprs!8110 lt!2588105) (exprs!8110 ct2!328) lambda!445471))))

(assert (=> b!7257369 (matchZipper!3580 (set.insert lt!2588135 (as set.empty (Set Context!15220))) lt!2588113)))

(assert (=> b!7257369 (= lt!2588113 (++!16602 (t!384655 s1!1971) s2!1849))))

(assert (=> b!7257369 (= lt!2588135 (Context!15221 (++!16603 (exprs!8110 lt!2588105) (exprs!8110 ct2!328))))))

(declare-fun lt!2588132 () Unit!163948)

(assert (=> b!7257369 (= lt!2588132 (lemmaConcatPreservesForall!1477 (exprs!8110 lt!2588105) (exprs!8110 ct2!328) lambda!445471))))

(declare-fun lt!2588115 () Unit!163948)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!415 (Context!15220 Context!15220 List!70591 List!70591) Unit!163948)

(assert (=> b!7257369 (= lt!2588115 (lemmaConcatenateContextMatchesConcatOfStrings!415 lt!2588105 ct2!328 (t!384655 s1!1971) s2!1849))))

(declare-fun getWitness!2244 ((Set Context!15220) Int) Context!15220)

(assert (=> b!7257369 (= lt!2588105 (getWitness!2244 lt!2588100 lambda!445472))))

(assert (= (and start!706900 res!2942893) b!7257366))

(assert (= (and b!7257366 res!2942890) b!7257363))

(assert (= (and b!7257363 res!2942892) b!7257359))

(assert (= (and b!7257359 res!2942894) b!7257365))

(assert (= (and b!7257365 (not res!2942895)) b!7257369))

(assert (= (and b!7257369 (not res!2942896)) b!7257368))

(assert (= (and b!7257368 (not res!2942891)) b!7257361))

(assert (= (and b!7257361 c!1349607) b!7257355))

(assert (= (and b!7257361 (not c!1349607)) b!7257360))

(assert (= (and b!7257355 (not res!2942897)) b!7257367))

(assert (= (and b!7257355 (not res!2942889)) b!7257364))

(assert (= start!706900 b!7257356))

(assert (= (and start!706900 (is-Cons!70467 s1!1971)) b!7257362))

(assert (= (and start!706900 (is-Cons!70467 s2!1849)) b!7257358))

(assert (= start!706900 b!7257357))

(declare-fun m!7939482 () Bool)

(assert (=> b!7257366 m!7939482))

(assert (=> b!7257366 m!7939482))

(declare-fun m!7939484 () Bool)

(assert (=> b!7257366 m!7939484))

(declare-fun m!7939486 () Bool)

(assert (=> b!7257363 m!7939486))

(declare-fun m!7939488 () Bool)

(assert (=> b!7257363 m!7939488))

(declare-fun m!7939490 () Bool)

(assert (=> b!7257363 m!7939490))

(declare-fun m!7939492 () Bool)

(assert (=> b!7257369 m!7939492))

(declare-fun m!7939494 () Bool)

(assert (=> b!7257369 m!7939494))

(declare-fun m!7939496 () Bool)

(assert (=> b!7257369 m!7939496))

(declare-fun m!7939498 () Bool)

(assert (=> b!7257369 m!7939498))

(declare-fun m!7939500 () Bool)

(assert (=> b!7257369 m!7939500))

(assert (=> b!7257369 m!7939496))

(declare-fun m!7939502 () Bool)

(assert (=> b!7257369 m!7939502))

(declare-fun m!7939504 () Bool)

(assert (=> b!7257369 m!7939504))

(declare-fun m!7939506 () Bool)

(assert (=> b!7257369 m!7939506))

(assert (=> b!7257369 m!7939494))

(declare-fun m!7939508 () Bool)

(assert (=> b!7257369 m!7939508))

(declare-fun m!7939510 () Bool)

(assert (=> b!7257365 m!7939510))

(declare-fun m!7939512 () Bool)

(assert (=> b!7257365 m!7939512))

(declare-fun m!7939514 () Bool)

(assert (=> b!7257365 m!7939514))

(declare-fun m!7939516 () Bool)

(assert (=> b!7257365 m!7939516))

(declare-fun m!7939518 () Bool)

(assert (=> b!7257367 m!7939518))

(assert (=> b!7257368 m!7939490))

(assert (=> b!7257368 m!7939490))

(declare-fun m!7939520 () Bool)

(assert (=> b!7257368 m!7939520))

(declare-fun m!7939522 () Bool)

(assert (=> b!7257368 m!7939522))

(declare-fun m!7939524 () Bool)

(assert (=> b!7257368 m!7939524))

(declare-fun m!7939526 () Bool)

(assert (=> b!7257368 m!7939526))

(declare-fun m!7939528 () Bool)

(assert (=> b!7257359 m!7939528))

(declare-fun m!7939530 () Bool)

(assert (=> b!7257359 m!7939530))

(declare-fun m!7939532 () Bool)

(assert (=> b!7257355 m!7939532))

(declare-fun m!7939534 () Bool)

(assert (=> b!7257355 m!7939534))

(declare-fun m!7939536 () Bool)

(assert (=> b!7257355 m!7939536))

(declare-fun m!7939538 () Bool)

(assert (=> b!7257355 m!7939538))

(assert (=> b!7257355 m!7939490))

(declare-fun m!7939540 () Bool)

(assert (=> b!7257355 m!7939540))

(declare-fun m!7939542 () Bool)

(assert (=> b!7257355 m!7939542))

(declare-fun m!7939544 () Bool)

(assert (=> b!7257355 m!7939544))

(assert (=> b!7257355 m!7939490))

(declare-fun m!7939546 () Bool)

(assert (=> b!7257355 m!7939546))

(declare-fun m!7939548 () Bool)

(assert (=> b!7257364 m!7939548))

(declare-fun m!7939550 () Bool)

(assert (=> start!706900 m!7939550))

(declare-fun m!7939552 () Bool)

(assert (=> start!706900 m!7939552))

(declare-fun m!7939554 () Bool)

(assert (=> start!706900 m!7939554))

(declare-fun m!7939556 () Bool)

(assert (=> start!706900 m!7939556))

(declare-fun m!7939558 () Bool)

(assert (=> b!7257361 m!7939558))

(declare-fun m!7939560 () Bool)

(assert (=> b!7257361 m!7939560))

(assert (=> b!7257361 m!7939496))

(declare-fun m!7939562 () Bool)

(assert (=> b!7257361 m!7939562))

(declare-fun m!7939564 () Bool)

(assert (=> b!7257361 m!7939564))

(declare-fun m!7939566 () Bool)

(assert (=> b!7257361 m!7939566))

(assert (=> b!7257361 m!7939502))

(declare-fun m!7939568 () Bool)

(assert (=> b!7257361 m!7939568))

(assert (=> b!7257361 m!7939496))

(assert (=> b!7257361 m!7939490))

(declare-fun m!7939570 () Bool)

(assert (=> b!7257361 m!7939570))

(declare-fun m!7939572 () Bool)

(assert (=> b!7257361 m!7939572))

(assert (=> b!7257361 m!7939496))

(assert (=> b!7257361 m!7939526))

(declare-fun m!7939574 () Bool)

(assert (=> b!7257361 m!7939574))

(declare-fun m!7939576 () Bool)

(assert (=> b!7257361 m!7939576))

(declare-fun m!7939578 () Bool)

(assert (=> b!7257361 m!7939578))

(declare-fun m!7939580 () Bool)

(assert (=> b!7257361 m!7939580))

(assert (=> b!7257361 m!7939568))

(declare-fun m!7939582 () Bool)

(assert (=> b!7257361 m!7939582))

(declare-fun m!7939584 () Bool)

(assert (=> b!7257361 m!7939584))

(assert (=> b!7257361 m!7939490))

(push 1)

(assert (not b!7257361))

(assert (not b!7257363))

(assert (not start!706900))

(assert (not b!7257362))

(assert (not b!7257368))

(assert (not b!7257364))

(assert tp_is_empty!46805)

(assert (not b!7257359))

(assert (not b!7257358))

(assert (not b!7257367))

(assert (not b!7257366))

(assert (not b!7257365))

(assert (not b!7257355))

(assert (not b!7257369))

(assert (not b!7257357))

(assert (not b!7257356))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2257214 () Bool)

(declare-fun lt!2588249 () Bool)

(assert (=> d!2257214 (= lt!2588249 (exists!4419 (toList!11499 lt!2588100) lambda!445472))))

(declare-fun choose!56138 ((Set Context!15220) Int) Bool)

(assert (=> d!2257214 (= lt!2588249 (choose!56138 lt!2588100 lambda!445472))))

(assert (=> d!2257214 (= (exists!4418 lt!2588100 lambda!445472) lt!2588249)))

(declare-fun bs!1907969 () Bool)

(assert (= bs!1907969 d!2257214))

(assert (=> bs!1907969 m!7939516))

(assert (=> bs!1907969 m!7939516))

(declare-fun m!7939690 () Bool)

(assert (=> bs!1907969 m!7939690))

(declare-fun m!7939692 () Bool)

(assert (=> bs!1907969 m!7939692))

(assert (=> b!7257365 d!2257214))

(declare-fun bs!1907970 () Bool)

(declare-fun d!2257216 () Bool)

(assert (= bs!1907970 (and d!2257216 b!7257365)))

(declare-fun lambda!445513 () Int)

(assert (=> bs!1907970 (not (= lambda!445513 lambda!445472))))

(assert (=> d!2257216 true))

(declare-fun order!29017 () Int)

(declare-fun dynLambda!28794 (Int Int) Int)

(assert (=> d!2257216 (< (dynLambda!28794 order!29017 lambda!445472) (dynLambda!28794 order!29017 lambda!445513))))

(declare-fun forall!17525 (List!70592 Int) Bool)

(assert (=> d!2257216 (= (exists!4419 lt!2588125 lambda!445472) (not (forall!17525 lt!2588125 lambda!445513)))))

(declare-fun bs!1907971 () Bool)

(assert (= bs!1907971 d!2257216))

(declare-fun m!7939694 () Bool)

(assert (=> bs!1907971 m!7939694))

(assert (=> b!7257365 d!2257216))

(declare-fun bs!1907972 () Bool)

(declare-fun d!2257218 () Bool)

(assert (= bs!1907972 (and d!2257218 b!7257365)))

(declare-fun lambda!445516 () Int)

(assert (=> bs!1907972 (= lambda!445516 lambda!445472)))

(declare-fun bs!1907973 () Bool)

(assert (= bs!1907973 (and d!2257218 d!2257216)))

(assert (=> bs!1907973 (not (= lambda!445516 lambda!445513))))

(assert (=> d!2257218 true))

(assert (=> d!2257218 (exists!4419 lt!2588125 lambda!445516)))

(declare-fun lt!2588252 () Unit!163948)

(declare-fun choose!56139 (List!70592 List!70591) Unit!163948)

(assert (=> d!2257218 (= lt!2588252 (choose!56139 lt!2588125 (t!384655 s1!1971)))))

(declare-fun content!14657 (List!70592) (Set Context!15220))

(assert (=> d!2257218 (matchZipper!3580 (content!14657 lt!2588125) (t!384655 s1!1971))))

(assert (=> d!2257218 (= (lemmaZipperMatchesExistsMatchingContext!773 lt!2588125 (t!384655 s1!1971)) lt!2588252)))

(declare-fun bs!1907974 () Bool)

(assert (= bs!1907974 d!2257218))

(declare-fun m!7939696 () Bool)

(assert (=> bs!1907974 m!7939696))

(declare-fun m!7939698 () Bool)

(assert (=> bs!1907974 m!7939698))

(declare-fun m!7939700 () Bool)

(assert (=> bs!1907974 m!7939700))

(assert (=> bs!1907974 m!7939700))

(declare-fun m!7939702 () Bool)

(assert (=> bs!1907974 m!7939702))

(assert (=> b!7257365 d!2257218))

(declare-fun d!2257220 () Bool)

(declare-fun e!4351765 () Bool)

(assert (=> d!2257220 e!4351765))

(declare-fun res!2942927 () Bool)

(assert (=> d!2257220 (=> (not res!2942927) (not e!4351765))))

(declare-fun lt!2588255 () List!70592)

(declare-fun noDuplicate!3005 (List!70592) Bool)

(assert (=> d!2257220 (= res!2942927 (noDuplicate!3005 lt!2588255))))

(declare-fun choose!56140 ((Set Context!15220)) List!70592)

(assert (=> d!2257220 (= lt!2588255 (choose!56140 lt!2588100))))

(assert (=> d!2257220 (= (toList!11499 lt!2588100) lt!2588255)))

(declare-fun b!7257427 () Bool)

(assert (=> b!7257427 (= e!4351765 (= (content!14657 lt!2588255) lt!2588100))))

(assert (= (and d!2257220 res!2942927) b!7257427))

(declare-fun m!7939704 () Bool)

(assert (=> d!2257220 m!7939704))

(declare-fun m!7939706 () Bool)

(assert (=> d!2257220 m!7939706))

(declare-fun m!7939708 () Bool)

(assert (=> b!7257427 m!7939708))

(assert (=> b!7257365 d!2257220))

(declare-fun d!2257222 () Bool)

(declare-fun c!1349627 () Bool)

(declare-fun isEmpty!40582 (List!70591) Bool)

(assert (=> d!2257222 (= c!1349627 (isEmpty!40582 (t!384655 s1!1971)))))

(declare-fun e!4351768 () Bool)

(assert (=> d!2257222 (= (matchZipper!3580 lt!2588100 (t!384655 s1!1971)) e!4351768)))

(declare-fun b!7257432 () Bool)

(declare-fun nullableZipper!2930 ((Set Context!15220)) Bool)

(assert (=> b!7257432 (= e!4351768 (nullableZipper!2930 lt!2588100))))

(declare-fun b!7257433 () Bool)

(declare-fun head!14927 (List!70591) C!37614)

(assert (=> b!7257433 (= e!4351768 (matchZipper!3580 (derivationStepZipper!3448 lt!2588100 (head!14927 (t!384655 s1!1971))) (tail!14364 (t!384655 s1!1971))))))

(assert (= (and d!2257222 c!1349627) b!7257432))

(assert (= (and d!2257222 (not c!1349627)) b!7257433))

(declare-fun m!7939710 () Bool)

(assert (=> d!2257222 m!7939710))

(declare-fun m!7939712 () Bool)

(assert (=> b!7257432 m!7939712))

(declare-fun m!7939714 () Bool)

(assert (=> b!7257433 m!7939714))

(assert (=> b!7257433 m!7939714))

(declare-fun m!7939716 () Bool)

(assert (=> b!7257433 m!7939716))

(declare-fun m!7939718 () Bool)

(assert (=> b!7257433 m!7939718))

(assert (=> b!7257433 m!7939716))

(assert (=> b!7257433 m!7939718))

(declare-fun m!7939720 () Bool)

(assert (=> b!7257433 m!7939720))

(assert (=> b!7257359 d!2257222))

(declare-fun bs!1907975 () Bool)

(declare-fun d!2257224 () Bool)

(assert (= bs!1907975 (and d!2257224 b!7257361)))

(declare-fun lambda!445519 () Int)

(assert (=> bs!1907975 (= lambda!445519 lambda!445473)))

(assert (=> d!2257224 true))

(assert (=> d!2257224 (= (derivationStepZipper!3448 lt!2588106 (h!76915 s1!1971)) (flatMap!2835 lt!2588106 lambda!445519))))

(declare-fun bs!1907976 () Bool)

(assert (= bs!1907976 d!2257224))

(declare-fun m!7939722 () Bool)

(assert (=> bs!1907976 m!7939722))

(assert (=> b!7257359 d!2257224))

(declare-fun d!2257226 () Bool)

(declare-fun c!1349630 () Bool)

(assert (=> d!2257226 (= c!1349630 (isEmpty!40582 lt!2588113))))

(declare-fun e!4351769 () Bool)

(assert (=> d!2257226 (= (matchZipper!3580 lt!2588120 lt!2588113) e!4351769)))

(declare-fun b!7257436 () Bool)

(assert (=> b!7257436 (= e!4351769 (nullableZipper!2930 lt!2588120))))

(declare-fun b!7257437 () Bool)

(assert (=> b!7257437 (= e!4351769 (matchZipper!3580 (derivationStepZipper!3448 lt!2588120 (head!14927 lt!2588113)) (tail!14364 lt!2588113)))))

(assert (= (and d!2257226 c!1349630) b!7257436))

(assert (= (and d!2257226 (not c!1349630)) b!7257437))

(declare-fun m!7939724 () Bool)

(assert (=> d!2257226 m!7939724))

(declare-fun m!7939726 () Bool)

(assert (=> b!7257436 m!7939726))

(declare-fun m!7939728 () Bool)

(assert (=> b!7257437 m!7939728))

(assert (=> b!7257437 m!7939728))

(declare-fun m!7939730 () Bool)

(assert (=> b!7257437 m!7939730))

(declare-fun m!7939732 () Bool)

(assert (=> b!7257437 m!7939732))

(assert (=> b!7257437 m!7939730))

(assert (=> b!7257437 m!7939732))

(declare-fun m!7939734 () Bool)

(assert (=> b!7257437 m!7939734))

(assert (=> b!7257364 d!2257226))

(declare-fun d!2257228 () Bool)

(declare-fun forall!17526 (List!70590 Int) Bool)

(assert (=> d!2257228 (forall!17526 (++!16603 (exprs!8110 lt!2588105) (exprs!8110 ct2!328)) lambda!445471)))

(declare-fun lt!2588258 () Unit!163948)

(declare-fun choose!56141 (List!70590 List!70590 Int) Unit!163948)

(assert (=> d!2257228 (= lt!2588258 (choose!56141 (exprs!8110 lt!2588105) (exprs!8110 ct2!328) lambda!445471))))

(assert (=> d!2257228 (forall!17526 (exprs!8110 lt!2588105) lambda!445471)))

(assert (=> d!2257228 (= (lemmaConcatPreservesForall!1477 (exprs!8110 lt!2588105) (exprs!8110 ct2!328) lambda!445471) lt!2588258)))

(declare-fun bs!1907977 () Bool)

(assert (= bs!1907977 d!2257228))

(assert (=> bs!1907977 m!7939506))

(assert (=> bs!1907977 m!7939506))

(declare-fun m!7939736 () Bool)

(assert (=> bs!1907977 m!7939736))

(declare-fun m!7939738 () Bool)

(assert (=> bs!1907977 m!7939738))

(declare-fun m!7939740 () Bool)

(assert (=> bs!1907977 m!7939740))

(assert (=> b!7257369 d!2257228))

(declare-fun d!2257230 () Bool)

(declare-fun c!1349631 () Bool)

(assert (=> d!2257230 (= c!1349631 (isEmpty!40582 lt!2588113))))

(declare-fun e!4351770 () Bool)

(assert (=> d!2257230 (= (matchZipper!3580 (set.insert lt!2588135 (as set.empty (Set Context!15220))) lt!2588113) e!4351770)))

(declare-fun b!7257438 () Bool)

(assert (=> b!7257438 (= e!4351770 (nullableZipper!2930 (set.insert lt!2588135 (as set.empty (Set Context!15220)))))))

(declare-fun b!7257439 () Bool)

(assert (=> b!7257439 (= e!4351770 (matchZipper!3580 (derivationStepZipper!3448 (set.insert lt!2588135 (as set.empty (Set Context!15220))) (head!14927 lt!2588113)) (tail!14364 lt!2588113)))))

(assert (= (and d!2257230 c!1349631) b!7257438))

(assert (= (and d!2257230 (not c!1349631)) b!7257439))

(assert (=> d!2257230 m!7939724))

(assert (=> b!7257438 m!7939494))

(declare-fun m!7939742 () Bool)

(assert (=> b!7257438 m!7939742))

(assert (=> b!7257439 m!7939728))

(assert (=> b!7257439 m!7939494))

(assert (=> b!7257439 m!7939728))

(declare-fun m!7939744 () Bool)

(assert (=> b!7257439 m!7939744))

(assert (=> b!7257439 m!7939732))

(assert (=> b!7257439 m!7939744))

(assert (=> b!7257439 m!7939732))

(declare-fun m!7939746 () Bool)

(assert (=> b!7257439 m!7939746))

(assert (=> b!7257369 d!2257230))

(declare-fun d!2257232 () Bool)

(declare-fun c!1349636 () Bool)

(declare-fun e!4351779 () Bool)

(assert (=> d!2257232 (= c!1349636 e!4351779)))

(declare-fun res!2942930 () Bool)

(assert (=> d!2257232 (=> (not res!2942930) (not e!4351779))))

(assert (=> d!2257232 (= res!2942930 (is-Cons!70466 (exprs!8110 ct1!232)))))

(declare-fun e!4351777 () (Set Context!15220))

(assert (=> d!2257232 (= (derivationStepZipperUp!2494 ct1!232 (h!76915 s1!1971)) e!4351777)))

(declare-fun b!7257450 () Bool)

(declare-fun e!4351778 () (Set Context!15220))

(declare-fun call!661412 () (Set Context!15220))

(assert (=> b!7257450 (= e!4351778 call!661412)))

(declare-fun b!7257451 () Bool)

(assert (=> b!7257451 (= e!4351777 (set.union call!661412 (derivationStepZipperUp!2494 (Context!15221 (t!384654 (exprs!8110 ct1!232))) (h!76915 s1!1971))))))

(declare-fun b!7257452 () Bool)

(assert (=> b!7257452 (= e!4351778 (as set.empty (Set Context!15220)))))

(declare-fun b!7257453 () Bool)

(assert (=> b!7257453 (= e!4351779 (nullable!7930 (h!76914 (exprs!8110 ct1!232))))))

(declare-fun bm!661407 () Bool)

(assert (=> bm!661407 (= call!661412 (derivationStepZipperDown!2664 (h!76914 (exprs!8110 ct1!232)) (Context!15221 (t!384654 (exprs!8110 ct1!232))) (h!76915 s1!1971)))))

(declare-fun b!7257454 () Bool)

(assert (=> b!7257454 (= e!4351777 e!4351778)))

(declare-fun c!1349637 () Bool)

(assert (=> b!7257454 (= c!1349637 (is-Cons!70466 (exprs!8110 ct1!232)))))

(assert (= (and d!2257232 res!2942930) b!7257453))

(assert (= (and d!2257232 c!1349636) b!7257451))

(assert (= (and d!2257232 (not c!1349636)) b!7257454))

(assert (= (and b!7257454 c!1349637) b!7257450))

(assert (= (and b!7257454 (not c!1349637)) b!7257452))

(assert (= (or b!7257451 b!7257450) bm!661407))

(declare-fun m!7939748 () Bool)

(assert (=> b!7257451 m!7939748))

(assert (=> b!7257453 m!7939580))

(declare-fun m!7939750 () Bool)

(assert (=> bm!661407 m!7939750))

(assert (=> b!7257369 d!2257232))

(declare-fun d!2257234 () Bool)

(assert (=> d!2257234 (= (isEmpty!40580 (exprs!8110 ct1!232)) (is-Nil!70466 (exprs!8110 ct1!232)))))

(assert (=> b!7257369 d!2257234))

(declare-fun bs!1907978 () Bool)

(declare-fun d!2257236 () Bool)

(assert (= bs!1907978 (and d!2257236 b!7257363)))

(declare-fun lambda!445522 () Int)

(assert (=> bs!1907978 (= lambda!445522 lambda!445471)))

(assert (=> d!2257236 (matchZipper!3580 (set.insert (Context!15221 (++!16603 (exprs!8110 lt!2588105) (exprs!8110 ct2!328))) (as set.empty (Set Context!15220))) (++!16602 (t!384655 s1!1971) s2!1849))))

(declare-fun lt!2588264 () Unit!163948)

(assert (=> d!2257236 (= lt!2588264 (lemmaConcatPreservesForall!1477 (exprs!8110 lt!2588105) (exprs!8110 ct2!328) lambda!445522))))

(declare-fun lt!2588263 () Unit!163948)

(declare-fun choose!56142 (Context!15220 Context!15220 List!70591 List!70591) Unit!163948)

(assert (=> d!2257236 (= lt!2588263 (choose!56142 lt!2588105 ct2!328 (t!384655 s1!1971) s2!1849))))

(assert (=> d!2257236 (matchZipper!3580 (set.insert lt!2588105 (as set.empty (Set Context!15220))) (t!384655 s1!1971))))

(assert (=> d!2257236 (= (lemmaConcatenateContextMatchesConcatOfStrings!415 lt!2588105 ct2!328 (t!384655 s1!1971) s2!1849) lt!2588263)))

(declare-fun bs!1907979 () Bool)

(assert (= bs!1907979 d!2257236))

(declare-fun m!7939752 () Bool)

(assert (=> bs!1907979 m!7939752))

(declare-fun m!7939754 () Bool)

(assert (=> bs!1907979 m!7939754))

(declare-fun m!7939756 () Bool)

(assert (=> bs!1907979 m!7939756))

(declare-fun m!7939758 () Bool)

(assert (=> bs!1907979 m!7939758))

(declare-fun m!7939760 () Bool)

(assert (=> bs!1907979 m!7939760))

(assert (=> bs!1907979 m!7939756))

(assert (=> bs!1907979 m!7939752))

(assert (=> bs!1907979 m!7939504))

(declare-fun m!7939762 () Bool)

(assert (=> bs!1907979 m!7939762))

(assert (=> bs!1907979 m!7939506))

(assert (=> bs!1907979 m!7939504))

(assert (=> b!7257369 d!2257236))

(declare-fun d!2257238 () Bool)

(declare-fun e!4351782 () Bool)

(assert (=> d!2257238 e!4351782))

(declare-fun res!2942933 () Bool)

(assert (=> d!2257238 (=> (not res!2942933) (not e!4351782))))

(declare-fun lt!2588267 () Context!15220)

(declare-fun dynLambda!28795 (Int Context!15220) Bool)

(assert (=> d!2257238 (= res!2942933 (dynLambda!28795 lambda!445472 lt!2588267))))

(declare-fun getWitness!2246 (List!70592 Int) Context!15220)

(assert (=> d!2257238 (= lt!2588267 (getWitness!2246 (toList!11499 lt!2588100) lambda!445472))))

(assert (=> d!2257238 (exists!4418 lt!2588100 lambda!445472)))

(assert (=> d!2257238 (= (getWitness!2244 lt!2588100 lambda!445472) lt!2588267)))

(declare-fun b!7257457 () Bool)

(assert (=> b!7257457 (= e!4351782 (set.member lt!2588267 lt!2588100))))

(assert (= (and d!2257238 res!2942933) b!7257457))

(declare-fun b_lambda!279069 () Bool)

(assert (=> (not b_lambda!279069) (not d!2257238)))

(declare-fun m!7939764 () Bool)

(assert (=> d!2257238 m!7939764))

(assert (=> d!2257238 m!7939516))

(assert (=> d!2257238 m!7939516))

(declare-fun m!7939766 () Bool)

(assert (=> d!2257238 m!7939766))

(assert (=> d!2257238 m!7939510))

(declare-fun m!7939768 () Bool)

(assert (=> b!7257457 m!7939768))

(assert (=> b!7257369 d!2257238))

(declare-fun b!7257467 () Bool)

(declare-fun e!4351787 () List!70591)

(assert (=> b!7257467 (= e!4351787 (Cons!70467 (h!76915 (t!384655 s1!1971)) (++!16602 (t!384655 (t!384655 s1!1971)) s2!1849)))))

(declare-fun b!7257468 () Bool)

(declare-fun res!2942938 () Bool)

(declare-fun e!4351788 () Bool)

(assert (=> b!7257468 (=> (not res!2942938) (not e!4351788))))

(declare-fun lt!2588270 () List!70591)

(declare-fun size!41748 (List!70591) Int)

(assert (=> b!7257468 (= res!2942938 (= (size!41748 lt!2588270) (+ (size!41748 (t!384655 s1!1971)) (size!41748 s2!1849))))))

(declare-fun b!7257466 () Bool)

(assert (=> b!7257466 (= e!4351787 s2!1849)))

(declare-fun b!7257469 () Bool)

(assert (=> b!7257469 (= e!4351788 (or (not (= s2!1849 Nil!70467)) (= lt!2588270 (t!384655 s1!1971))))))

(declare-fun d!2257240 () Bool)

(assert (=> d!2257240 e!4351788))

(declare-fun res!2942939 () Bool)

(assert (=> d!2257240 (=> (not res!2942939) (not e!4351788))))

(declare-fun content!14658 (List!70591) (Set C!37614))

(assert (=> d!2257240 (= res!2942939 (= (content!14658 lt!2588270) (set.union (content!14658 (t!384655 s1!1971)) (content!14658 s2!1849))))))

(assert (=> d!2257240 (= lt!2588270 e!4351787)))

(declare-fun c!1349640 () Bool)

(assert (=> d!2257240 (= c!1349640 (is-Nil!70467 (t!384655 s1!1971)))))

(assert (=> d!2257240 (= (++!16602 (t!384655 s1!1971) s2!1849) lt!2588270)))

(assert (= (and d!2257240 c!1349640) b!7257466))

(assert (= (and d!2257240 (not c!1349640)) b!7257467))

(assert (= (and d!2257240 res!2942939) b!7257468))

(assert (= (and b!7257468 res!2942938) b!7257469))

(declare-fun m!7939770 () Bool)

(assert (=> b!7257467 m!7939770))

(declare-fun m!7939772 () Bool)

(assert (=> b!7257468 m!7939772))

(declare-fun m!7939774 () Bool)

(assert (=> b!7257468 m!7939774))

(declare-fun m!7939776 () Bool)

(assert (=> b!7257468 m!7939776))

(declare-fun m!7939778 () Bool)

(assert (=> d!2257240 m!7939778))

(declare-fun m!7939780 () Bool)

(assert (=> d!2257240 m!7939780))

(declare-fun m!7939782 () Bool)

(assert (=> d!2257240 m!7939782))

(assert (=> b!7257369 d!2257240))

(declare-fun d!2257242 () Bool)

(declare-fun e!4351793 () Bool)

(assert (=> d!2257242 e!4351793))

(declare-fun res!2942944 () Bool)

(assert (=> d!2257242 (=> (not res!2942944) (not e!4351793))))

(declare-fun lt!2588273 () List!70590)

(declare-fun content!14659 (List!70590) (Set Regex!18670))

(assert (=> d!2257242 (= res!2942944 (= (content!14659 lt!2588273) (set.union (content!14659 (exprs!8110 lt!2588105)) (content!14659 (exprs!8110 ct2!328)))))))

(declare-fun e!4351794 () List!70590)

(assert (=> d!2257242 (= lt!2588273 e!4351794)))

(declare-fun c!1349643 () Bool)

(assert (=> d!2257242 (= c!1349643 (is-Nil!70466 (exprs!8110 lt!2588105)))))

(assert (=> d!2257242 (= (++!16603 (exprs!8110 lt!2588105) (exprs!8110 ct2!328)) lt!2588273)))

(declare-fun b!7257478 () Bool)

(assert (=> b!7257478 (= e!4351794 (exprs!8110 ct2!328))))

(declare-fun b!7257481 () Bool)

(assert (=> b!7257481 (= e!4351793 (or (not (= (exprs!8110 ct2!328) Nil!70466)) (= lt!2588273 (exprs!8110 lt!2588105))))))

(declare-fun b!7257479 () Bool)

(assert (=> b!7257479 (= e!4351794 (Cons!70466 (h!76914 (exprs!8110 lt!2588105)) (++!16603 (t!384654 (exprs!8110 lt!2588105)) (exprs!8110 ct2!328))))))

(declare-fun b!7257480 () Bool)

(declare-fun res!2942945 () Bool)

(assert (=> b!7257480 (=> (not res!2942945) (not e!4351793))))

(declare-fun size!41749 (List!70590) Int)

(assert (=> b!7257480 (= res!2942945 (= (size!41749 lt!2588273) (+ (size!41749 (exprs!8110 lt!2588105)) (size!41749 (exprs!8110 ct2!328)))))))

(assert (= (and d!2257242 c!1349643) b!7257478))

(assert (= (and d!2257242 (not c!1349643)) b!7257479))

(assert (= (and d!2257242 res!2942944) b!7257480))

(assert (= (and b!7257480 res!2942945) b!7257481))

(declare-fun m!7939784 () Bool)

(assert (=> d!2257242 m!7939784))

(declare-fun m!7939786 () Bool)

(assert (=> d!2257242 m!7939786))

(declare-fun m!7939788 () Bool)

(assert (=> d!2257242 m!7939788))

(declare-fun m!7939790 () Bool)

(assert (=> b!7257479 m!7939790))

(declare-fun m!7939792 () Bool)

(assert (=> b!7257480 m!7939792))

(declare-fun m!7939794 () Bool)

(assert (=> b!7257480 m!7939794))

(declare-fun m!7939796 () Bool)

(assert (=> b!7257480 m!7939796))

(assert (=> b!7257369 d!2257242))

(declare-fun d!2257244 () Bool)

(declare-fun c!1349644 () Bool)

(assert (=> d!2257244 (= c!1349644 (isEmpty!40582 s1!1971))))

(declare-fun e!4351795 () Bool)

(assert (=> d!2257244 (= (matchZipper!3580 lt!2588106 s1!1971) e!4351795)))

(declare-fun b!7257482 () Bool)

(assert (=> b!7257482 (= e!4351795 (nullableZipper!2930 lt!2588106))))

(declare-fun b!7257483 () Bool)

(assert (=> b!7257483 (= e!4351795 (matchZipper!3580 (derivationStepZipper!3448 lt!2588106 (head!14927 s1!1971)) (tail!14364 s1!1971)))))

(assert (= (and d!2257244 c!1349644) b!7257482))

(assert (= (and d!2257244 (not c!1349644)) b!7257483))

(declare-fun m!7939798 () Bool)

(assert (=> d!2257244 m!7939798))

(declare-fun m!7939800 () Bool)

(assert (=> b!7257482 m!7939800))

(declare-fun m!7939802 () Bool)

(assert (=> b!7257483 m!7939802))

(assert (=> b!7257483 m!7939802))

(declare-fun m!7939804 () Bool)

(assert (=> b!7257483 m!7939804))

(declare-fun m!7939806 () Bool)

(assert (=> b!7257483 m!7939806))

(assert (=> b!7257483 m!7939804))

(assert (=> b!7257483 m!7939806))

(declare-fun m!7939808 () Bool)

(assert (=> b!7257483 m!7939808))

(assert (=> start!706900 d!2257244))

(declare-fun bs!1907980 () Bool)

(declare-fun d!2257246 () Bool)

(assert (= bs!1907980 (and d!2257246 b!7257363)))

(declare-fun lambda!445525 () Int)

(assert (=> bs!1907980 (= lambda!445525 lambda!445471)))

(declare-fun bs!1907981 () Bool)

(assert (= bs!1907981 (and d!2257246 d!2257236)))

(assert (=> bs!1907981 (= lambda!445525 lambda!445522)))

(assert (=> d!2257246 (= (inv!89686 ct1!232) (forall!17526 (exprs!8110 ct1!232) lambda!445525))))

(declare-fun bs!1907982 () Bool)

(assert (= bs!1907982 d!2257246))

(declare-fun m!7939810 () Bool)

(assert (=> bs!1907982 m!7939810))

(assert (=> start!706900 d!2257246))

(declare-fun bs!1907983 () Bool)

(declare-fun d!2257248 () Bool)

(assert (= bs!1907983 (and d!2257248 b!7257363)))

(declare-fun lambda!445526 () Int)

(assert (=> bs!1907983 (= lambda!445526 lambda!445471)))

(declare-fun bs!1907984 () Bool)

(assert (= bs!1907984 (and d!2257248 d!2257236)))

(assert (=> bs!1907984 (= lambda!445526 lambda!445522)))

(declare-fun bs!1907985 () Bool)

(assert (= bs!1907985 (and d!2257248 d!2257246)))

(assert (=> bs!1907985 (= lambda!445526 lambda!445525)))

(assert (=> d!2257248 (= (inv!89686 ct2!328) (forall!17526 (exprs!8110 ct2!328) lambda!445526))))

(declare-fun bs!1907986 () Bool)

(assert (= bs!1907986 d!2257248))

(declare-fun m!7939812 () Bool)

(assert (=> bs!1907986 m!7939812))

(assert (=> start!706900 d!2257248))

(declare-fun d!2257250 () Bool)

(declare-fun e!4351796 () Bool)

(assert (=> d!2257250 e!4351796))

(declare-fun res!2942946 () Bool)

(assert (=> d!2257250 (=> (not res!2942946) (not e!4351796))))

(declare-fun lt!2588274 () List!70590)

(assert (=> d!2257250 (= res!2942946 (= (content!14659 lt!2588274) (set.union (content!14659 (exprs!8110 ct1!232)) (content!14659 (exprs!8110 ct2!328)))))))

(declare-fun e!4351797 () List!70590)

(assert (=> d!2257250 (= lt!2588274 e!4351797)))

(declare-fun c!1349645 () Bool)

(assert (=> d!2257250 (= c!1349645 (is-Nil!70466 (exprs!8110 ct1!232)))))

(assert (=> d!2257250 (= (++!16603 (exprs!8110 ct1!232) (exprs!8110 ct2!328)) lt!2588274)))

(declare-fun b!7257484 () Bool)

(assert (=> b!7257484 (= e!4351797 (exprs!8110 ct2!328))))

(declare-fun b!7257487 () Bool)

(assert (=> b!7257487 (= e!4351796 (or (not (= (exprs!8110 ct2!328) Nil!70466)) (= lt!2588274 (exprs!8110 ct1!232))))))

(declare-fun b!7257485 () Bool)

(assert (=> b!7257485 (= e!4351797 (Cons!70466 (h!76914 (exprs!8110 ct1!232)) (++!16603 (t!384654 (exprs!8110 ct1!232)) (exprs!8110 ct2!328))))))

(declare-fun b!7257486 () Bool)

(declare-fun res!2942947 () Bool)

(assert (=> b!7257486 (=> (not res!2942947) (not e!4351796))))

(assert (=> b!7257486 (= res!2942947 (= (size!41749 lt!2588274) (+ (size!41749 (exprs!8110 ct1!232)) (size!41749 (exprs!8110 ct2!328)))))))

(assert (= (and d!2257250 c!1349645) b!7257484))

(assert (= (and d!2257250 (not c!1349645)) b!7257485))

(assert (= (and d!2257250 res!2942946) b!7257486))

(assert (= (and b!7257486 res!2942947) b!7257487))

(declare-fun m!7939814 () Bool)

(assert (=> d!2257250 m!7939814))

(declare-fun m!7939816 () Bool)

(assert (=> d!2257250 m!7939816))

(assert (=> d!2257250 m!7939788))

(declare-fun m!7939818 () Bool)

(assert (=> b!7257485 m!7939818))

(declare-fun m!7939820 () Bool)

(assert (=> b!7257486 m!7939820))

(declare-fun m!7939822 () Bool)

(assert (=> b!7257486 m!7939822))

(assert (=> b!7257486 m!7939796))

(assert (=> b!7257363 d!2257250))

(declare-fun d!2257252 () Bool)

(assert (=> d!2257252 (forall!17526 (++!16603 (exprs!8110 ct1!232) (exprs!8110 ct2!328)) lambda!445471)))

(declare-fun lt!2588275 () Unit!163948)

(assert (=> d!2257252 (= lt!2588275 (choose!56141 (exprs!8110 ct1!232) (exprs!8110 ct2!328) lambda!445471))))

(assert (=> d!2257252 (forall!17526 (exprs!8110 ct1!232) lambda!445471)))

(assert (=> d!2257252 (= (lemmaConcatPreservesForall!1477 (exprs!8110 ct1!232) (exprs!8110 ct2!328) lambda!445471) lt!2588275)))

(declare-fun bs!1907987 () Bool)

(assert (= bs!1907987 d!2257252))

(assert (=> bs!1907987 m!7939488))

(assert (=> bs!1907987 m!7939488))

(declare-fun m!7939824 () Bool)

(assert (=> bs!1907987 m!7939824))

(declare-fun m!7939826 () Bool)

(assert (=> bs!1907987 m!7939826))

(declare-fun m!7939828 () Bool)

(assert (=> bs!1907987 m!7939828))

(assert (=> b!7257363 d!2257252))

(declare-fun d!2257254 () Bool)

(assert (=> d!2257254 (= (isEmpty!40580 lt!2588107) (is-Nil!70466 lt!2588107))))

(assert (=> b!7257368 d!2257254))

(declare-fun d!2257256 () Bool)

(assert (=> d!2257256 (= (tail!14365 (exprs!8110 ct1!232)) (t!384654 (exprs!8110 ct1!232)))))

(assert (=> b!7257368 d!2257256))

(declare-fun d!2257258 () Bool)

(declare-fun c!1349646 () Bool)

(declare-fun e!4351800 () Bool)

(assert (=> d!2257258 (= c!1349646 e!4351800)))

(declare-fun res!2942948 () Bool)

(assert (=> d!2257258 (=> (not res!2942948) (not e!4351800))))

(assert (=> d!2257258 (= res!2942948 (is-Cons!70466 (exprs!8110 lt!2588128)))))

(declare-fun e!4351798 () (Set Context!15220))

(assert (=> d!2257258 (= (derivationStepZipperUp!2494 lt!2588128 (h!76915 s1!1971)) e!4351798)))

(declare-fun b!7257488 () Bool)

(declare-fun e!4351799 () (Set Context!15220))

(declare-fun call!661413 () (Set Context!15220))

(assert (=> b!7257488 (= e!4351799 call!661413)))

(declare-fun b!7257489 () Bool)

(assert (=> b!7257489 (= e!4351798 (set.union call!661413 (derivationStepZipperUp!2494 (Context!15221 (t!384654 (exprs!8110 lt!2588128))) (h!76915 s1!1971))))))

(declare-fun b!7257490 () Bool)

(assert (=> b!7257490 (= e!4351799 (as set.empty (Set Context!15220)))))

(declare-fun b!7257491 () Bool)

(assert (=> b!7257491 (= e!4351800 (nullable!7930 (h!76914 (exprs!8110 lt!2588128))))))

(declare-fun bm!661408 () Bool)

(assert (=> bm!661408 (= call!661413 (derivationStepZipperDown!2664 (h!76914 (exprs!8110 lt!2588128)) (Context!15221 (t!384654 (exprs!8110 lt!2588128))) (h!76915 s1!1971)))))

(declare-fun b!7257492 () Bool)

(assert (=> b!7257492 (= e!4351798 e!4351799)))

(declare-fun c!1349647 () Bool)

(assert (=> b!7257492 (= c!1349647 (is-Cons!70466 (exprs!8110 lt!2588128)))))

(assert (= (and d!2257258 res!2942948) b!7257491))

(assert (= (and d!2257258 c!1349646) b!7257489))

(assert (= (and d!2257258 (not c!1349646)) b!7257492))

(assert (= (and b!7257492 c!1349647) b!7257488))

(assert (= (and b!7257492 (not c!1349647)) b!7257490))

(assert (= (or b!7257489 b!7257488) bm!661408))

(declare-fun m!7939830 () Bool)

(assert (=> b!7257489 m!7939830))

(declare-fun m!7939832 () Bool)

(assert (=> b!7257491 m!7939832))

(declare-fun m!7939834 () Bool)

(assert (=> bm!661408 m!7939834))

(assert (=> b!7257368 d!2257258))

(declare-fun b!7257515 () Bool)

(declare-fun c!1349660 () Bool)

(assert (=> b!7257515 (= c!1349660 (is-Star!18670 (h!76914 (exprs!8110 ct1!232))))))

(declare-fun e!4351815 () (Set Context!15220))

(declare-fun e!4351816 () (Set Context!15220))

(assert (=> b!7257515 (= e!4351815 e!4351816)))

(declare-fun b!7257516 () Bool)

(declare-fun call!661430 () (Set Context!15220))

(assert (=> b!7257516 (= e!4351815 call!661430)))

(declare-fun bm!661421 () Bool)

(declare-fun call!661429 () (Set Context!15220))

(declare-fun call!661426 () List!70590)

(declare-fun c!1349659 () Bool)

(declare-fun c!1349661 () Bool)

(declare-fun c!1349658 () Bool)

(assert (=> bm!661421 (= call!661429 (derivationStepZipperDown!2664 (ite c!1349661 (regTwo!37853 (h!76914 (exprs!8110 ct1!232))) (ite c!1349659 (regTwo!37852 (h!76914 (exprs!8110 ct1!232))) (ite c!1349658 (regOne!37852 (h!76914 (exprs!8110 ct1!232))) (reg!18999 (h!76914 (exprs!8110 ct1!232)))))) (ite (or c!1349661 c!1349659) lt!2588111 (Context!15221 call!661426)) (h!76915 s1!1971)))))

(declare-fun bm!661422 () Bool)

(declare-fun call!661431 () (Set Context!15220))

(assert (=> bm!661422 (= call!661430 call!661431)))

(declare-fun b!7257517 () Bool)

(declare-fun e!4351818 () (Set Context!15220))

(declare-fun e!4351814 () (Set Context!15220))

(assert (=> b!7257517 (= e!4351818 e!4351814)))

(assert (=> b!7257517 (= c!1349661 (is-Union!18670 (h!76914 (exprs!8110 ct1!232))))))

(declare-fun bm!661423 () Bool)

(declare-fun call!661427 () List!70590)

(assert (=> bm!661423 (= call!661426 call!661427)))

(declare-fun b!7257518 () Bool)

(declare-fun e!4351817 () (Set Context!15220))

(assert (=> b!7257518 (= e!4351817 e!4351815)))

(assert (=> b!7257518 (= c!1349658 (is-Concat!27515 (h!76914 (exprs!8110 ct1!232))))))

(declare-fun d!2257260 () Bool)

(declare-fun c!1349662 () Bool)

(assert (=> d!2257260 (= c!1349662 (and (is-ElementMatch!18670 (h!76914 (exprs!8110 ct1!232))) (= (c!1349608 (h!76914 (exprs!8110 ct1!232))) (h!76915 s1!1971))))))

(assert (=> d!2257260 (= (derivationStepZipperDown!2664 (h!76914 (exprs!8110 ct1!232)) lt!2588111 (h!76915 s1!1971)) e!4351818)))

(declare-fun bm!661424 () Bool)

(declare-fun call!661428 () (Set Context!15220))

(assert (=> bm!661424 (= call!661428 (derivationStepZipperDown!2664 (ite c!1349661 (regOne!37853 (h!76914 (exprs!8110 ct1!232))) (regOne!37852 (h!76914 (exprs!8110 ct1!232)))) (ite c!1349661 lt!2588111 (Context!15221 call!661427)) (h!76915 s1!1971)))))

(declare-fun b!7257519 () Bool)

(assert (=> b!7257519 (= e!4351818 (set.insert lt!2588111 (as set.empty (Set Context!15220))))))

(declare-fun b!7257520 () Bool)

(assert (=> b!7257520 (= e!4351817 (set.union call!661428 call!661431))))

(declare-fun bm!661425 () Bool)

(assert (=> bm!661425 (= call!661431 call!661429)))

(declare-fun bm!661426 () Bool)

(declare-fun $colon$colon!2932 (List!70590 Regex!18670) List!70590)

(assert (=> bm!661426 (= call!661427 ($colon$colon!2932 (exprs!8110 lt!2588111) (ite (or c!1349659 c!1349658) (regTwo!37852 (h!76914 (exprs!8110 ct1!232))) (h!76914 (exprs!8110 ct1!232)))))))

(declare-fun b!7257521 () Bool)

(assert (=> b!7257521 (= e!4351816 call!661430)))

(declare-fun b!7257522 () Bool)

(assert (=> b!7257522 (= e!4351814 (set.union call!661428 call!661429))))

(declare-fun b!7257523 () Bool)

(declare-fun e!4351813 () Bool)

(assert (=> b!7257523 (= c!1349659 e!4351813)))

(declare-fun res!2942951 () Bool)

(assert (=> b!7257523 (=> (not res!2942951) (not e!4351813))))

(assert (=> b!7257523 (= res!2942951 (is-Concat!27515 (h!76914 (exprs!8110 ct1!232))))))

(assert (=> b!7257523 (= e!4351814 e!4351817)))

(declare-fun b!7257524 () Bool)

(assert (=> b!7257524 (= e!4351816 (as set.empty (Set Context!15220)))))

(declare-fun b!7257525 () Bool)

(assert (=> b!7257525 (= e!4351813 (nullable!7930 (regOne!37852 (h!76914 (exprs!8110 ct1!232)))))))

(assert (= (and d!2257260 c!1349662) b!7257519))

(assert (= (and d!2257260 (not c!1349662)) b!7257517))

(assert (= (and b!7257517 c!1349661) b!7257522))

(assert (= (and b!7257517 (not c!1349661)) b!7257523))

(assert (= (and b!7257523 res!2942951) b!7257525))

(assert (= (and b!7257523 c!1349659) b!7257520))

(assert (= (and b!7257523 (not c!1349659)) b!7257518))

(assert (= (and b!7257518 c!1349658) b!7257516))

(assert (= (and b!7257518 (not c!1349658)) b!7257515))

(assert (= (and b!7257515 c!1349660) b!7257521))

(assert (= (and b!7257515 (not c!1349660)) b!7257524))

(assert (= (or b!7257516 b!7257521) bm!661423))

(assert (= (or b!7257516 b!7257521) bm!661422))

(assert (= (or b!7257520 bm!661423) bm!661426))

(assert (= (or b!7257520 bm!661422) bm!661425))

(assert (= (or b!7257522 bm!661425) bm!661421))

(assert (= (or b!7257522 b!7257520) bm!661424))

(declare-fun m!7939836 () Bool)

(assert (=> bm!661426 m!7939836))

(declare-fun m!7939838 () Bool)

(assert (=> bm!661424 m!7939838))

(declare-fun m!7939840 () Bool)

(assert (=> b!7257525 m!7939840))

(declare-fun m!7939842 () Bool)

(assert (=> bm!661421 m!7939842))

(declare-fun m!7939844 () Bool)

(assert (=> b!7257519 m!7939844))

(assert (=> b!7257368 d!2257260))

(assert (=> b!7257368 d!2257252))

(declare-fun d!2257262 () Bool)

(declare-fun c!1349663 () Bool)

(assert (=> d!2257262 (= c!1349663 (isEmpty!40582 (t!384655 s1!1971)))))

(declare-fun e!4351819 () Bool)

(assert (=> d!2257262 (= (matchZipper!3580 lt!2588108 (t!384655 s1!1971)) e!4351819)))

(declare-fun b!7257526 () Bool)

(assert (=> b!7257526 (= e!4351819 (nullableZipper!2930 lt!2588108))))

(declare-fun b!7257527 () Bool)

(assert (=> b!7257527 (= e!4351819 (matchZipper!3580 (derivationStepZipper!3448 lt!2588108 (head!14927 (t!384655 s1!1971))) (tail!14364 (t!384655 s1!1971))))))

(assert (= (and d!2257262 c!1349663) b!7257526))

(assert (= (and d!2257262 (not c!1349663)) b!7257527))

(assert (=> d!2257262 m!7939710))

(declare-fun m!7939846 () Bool)

(assert (=> b!7257526 m!7939846))

(assert (=> b!7257527 m!7939714))

(assert (=> b!7257527 m!7939714))

(declare-fun m!7939848 () Bool)

(assert (=> b!7257527 m!7939848))

(assert (=> b!7257527 m!7939718))

(assert (=> b!7257527 m!7939848))

(assert (=> b!7257527 m!7939718))

(declare-fun m!7939850 () Bool)

(assert (=> b!7257527 m!7939850))

(assert (=> b!7257367 d!2257262))

(declare-fun d!2257264 () Bool)

(declare-fun choose!56143 ((Set Context!15220) Int) (Set Context!15220))

(assert (=> d!2257264 (= (flatMap!2835 lt!2588106 lambda!445473) (choose!56143 lt!2588106 lambda!445473))))

(declare-fun bs!1907988 () Bool)

(assert (= bs!1907988 d!2257264))

(declare-fun m!7939852 () Bool)

(assert (=> bs!1907988 m!7939852))

(assert (=> b!7257361 d!2257264))

(declare-fun d!2257266 () Bool)

(assert (=> d!2257266 (= (flatMap!2835 lt!2588099 lambda!445473) (choose!56143 lt!2588099 lambda!445473))))

(declare-fun bs!1907989 () Bool)

(assert (= bs!1907989 d!2257266))

(declare-fun m!7939854 () Bool)

(assert (=> bs!1907989 m!7939854))

(assert (=> b!7257361 d!2257266))

(assert (=> b!7257361 d!2257228))

(declare-fun d!2257268 () Bool)

(declare-fun nullableFct!3117 (Regex!18670) Bool)

(assert (=> d!2257268 (= (nullable!7930 (h!76914 (exprs!8110 ct1!232))) (nullableFct!3117 (h!76914 (exprs!8110 ct1!232))))))

(declare-fun bs!1907990 () Bool)

(assert (= bs!1907990 d!2257268))

(declare-fun m!7939856 () Bool)

(assert (=> bs!1907990 m!7939856))

(assert (=> b!7257361 d!2257268))

(declare-fun b!7257529 () Bool)

(declare-fun e!4351820 () List!70591)

(assert (=> b!7257529 (= e!4351820 (Cons!70467 (h!76915 s1!1971) (++!16602 (t!384655 s1!1971) s2!1849)))))

(declare-fun b!7257530 () Bool)

(declare-fun res!2942952 () Bool)

(declare-fun e!4351821 () Bool)

(assert (=> b!7257530 (=> (not res!2942952) (not e!4351821))))

(declare-fun lt!2588276 () List!70591)

(assert (=> b!7257530 (= res!2942952 (= (size!41748 lt!2588276) (+ (size!41748 s1!1971) (size!41748 s2!1849))))))

(declare-fun b!7257528 () Bool)

(assert (=> b!7257528 (= e!4351820 s2!1849)))

(declare-fun b!7257531 () Bool)

(assert (=> b!7257531 (= e!4351821 (or (not (= s2!1849 Nil!70467)) (= lt!2588276 s1!1971)))))

(declare-fun d!2257270 () Bool)

(assert (=> d!2257270 e!4351821))

(declare-fun res!2942953 () Bool)

(assert (=> d!2257270 (=> (not res!2942953) (not e!4351821))))

(assert (=> d!2257270 (= res!2942953 (= (content!14658 lt!2588276) (set.union (content!14658 s1!1971) (content!14658 s2!1849))))))

(assert (=> d!2257270 (= lt!2588276 e!4351820)))

(declare-fun c!1349664 () Bool)

(assert (=> d!2257270 (= c!1349664 (is-Nil!70467 s1!1971))))

(assert (=> d!2257270 (= (++!16602 s1!1971 s2!1849) lt!2588276)))

(assert (= (and d!2257270 c!1349664) b!7257528))

(assert (= (and d!2257270 (not c!1349664)) b!7257529))

(assert (= (and d!2257270 res!2942953) b!7257530))

(assert (= (and b!7257530 res!2942952) b!7257531))

(assert (=> b!7257529 m!7939504))

(declare-fun m!7939858 () Bool)

(assert (=> b!7257530 m!7939858))

(declare-fun m!7939860 () Bool)

(assert (=> b!7257530 m!7939860))

(assert (=> b!7257530 m!7939776))

(declare-fun m!7939862 () Bool)

(assert (=> d!2257270 m!7939862))

(declare-fun m!7939864 () Bool)

(assert (=> d!2257270 m!7939864))

(assert (=> d!2257270 m!7939782))

(assert (=> b!7257361 d!2257270))

(declare-fun d!2257272 () Bool)

(assert (=> d!2257272 (= (tail!14365 lt!2588107) (t!384654 lt!2588107))))

(assert (=> b!7257361 d!2257272))

(assert (=> b!7257361 d!2257258))

(assert (=> b!7257361 d!2257252))

(declare-fun bs!1907991 () Bool)

(declare-fun d!2257274 () Bool)

(assert (= bs!1907991 (and d!2257274 b!7257363)))

(declare-fun lambda!445531 () Int)

(assert (=> bs!1907991 (= lambda!445531 lambda!445471)))

(declare-fun bs!1907992 () Bool)

(assert (= bs!1907992 (and d!2257274 d!2257236)))

(assert (=> bs!1907992 (= lambda!445531 lambda!445522)))

(declare-fun bs!1907993 () Bool)

(assert (= bs!1907993 (and d!2257274 d!2257246)))

(assert (=> bs!1907993 (= lambda!445531 lambda!445525)))

(declare-fun bs!1907994 () Bool)

(assert (= bs!1907994 (and d!2257274 d!2257248)))

(assert (=> bs!1907994 (= lambda!445531 lambda!445526)))

(assert (=> d!2257274 (set.member (Context!15221 (++!16603 (exprs!8110 lt!2588105) (exprs!8110 ct2!328))) (derivationStepZipperUp!2494 (Context!15221 (++!16603 (exprs!8110 ct1!232) (exprs!8110 ct2!328))) (h!76915 s1!1971)))))

(declare-fun lt!2588285 () Unit!163948)

(assert (=> d!2257274 (= lt!2588285 (lemmaConcatPreservesForall!1477 (exprs!8110 ct1!232) (exprs!8110 ct2!328) lambda!445531))))

(declare-fun lt!2588284 () Unit!163948)

(assert (=> d!2257274 (= lt!2588284 (lemmaConcatPreservesForall!1477 (exprs!8110 lt!2588105) (exprs!8110 ct2!328) lambda!445531))))

(declare-fun lt!2588283 () Unit!163948)

(declare-fun choose!56144 (Context!15220 Context!15220 Context!15220 C!37614) Unit!163948)

(assert (=> d!2257274 (= lt!2588283 (choose!56144 ct1!232 ct2!328 lt!2588105 (h!76915 s1!1971)))))

(assert (=> d!2257274 (set.member lt!2588105 (derivationStepZipperUp!2494 ct1!232 (h!76915 s1!1971)))))

(assert (=> d!2257274 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!25 ct1!232 ct2!328 lt!2588105 (h!76915 s1!1971)) lt!2588283)))

(declare-fun bs!1907995 () Bool)

(assert (= bs!1907995 d!2257274))

(declare-fun m!7939866 () Bool)

(assert (=> bs!1907995 m!7939866))

(declare-fun m!7939868 () Bool)

(assert (=> bs!1907995 m!7939868))

(assert (=> bs!1907995 m!7939506))

(declare-fun m!7939870 () Bool)

(assert (=> bs!1907995 m!7939870))

(assert (=> bs!1907995 m!7939502))

(declare-fun m!7939872 () Bool)

(assert (=> bs!1907995 m!7939872))

(declare-fun m!7939874 () Bool)

(assert (=> bs!1907995 m!7939874))

(declare-fun m!7939876 () Bool)

(assert (=> bs!1907995 m!7939876))

(assert (=> bs!1907995 m!7939488))

(assert (=> b!7257361 d!2257274))

(declare-fun b!7257532 () Bool)

(declare-fun c!1349668 () Bool)

(assert (=> b!7257532 (= c!1349668 (is-Star!18670 (h!76914 (exprs!8110 ct1!232))))))

(declare-fun e!4351824 () (Set Context!15220))

(declare-fun e!4351825 () (Set Context!15220))

(assert (=> b!7257532 (= e!4351824 e!4351825)))

(declare-fun b!7257533 () Bool)

(declare-fun call!661436 () (Set Context!15220))

(assert (=> b!7257533 (= e!4351824 call!661436)))

(declare-fun c!1349669 () Bool)

(declare-fun bm!661427 () Bool)

(declare-fun c!1349666 () Bool)

(declare-fun call!661432 () List!70590)

(declare-fun call!661435 () (Set Context!15220))

(declare-fun c!1349667 () Bool)

(assert (=> bm!661427 (= call!661435 (derivationStepZipperDown!2664 (ite c!1349669 (regTwo!37853 (h!76914 (exprs!8110 ct1!232))) (ite c!1349667 (regTwo!37852 (h!76914 (exprs!8110 ct1!232))) (ite c!1349666 (regOne!37852 (h!76914 (exprs!8110 ct1!232))) (reg!18999 (h!76914 (exprs!8110 ct1!232)))))) (ite (or c!1349669 c!1349667) lt!2588126 (Context!15221 call!661432)) (h!76915 s1!1971)))))

(declare-fun bm!661428 () Bool)

(declare-fun call!661437 () (Set Context!15220))

(assert (=> bm!661428 (= call!661436 call!661437)))

(declare-fun b!7257534 () Bool)

(declare-fun e!4351827 () (Set Context!15220))

(declare-fun e!4351823 () (Set Context!15220))

(assert (=> b!7257534 (= e!4351827 e!4351823)))

(assert (=> b!7257534 (= c!1349669 (is-Union!18670 (h!76914 (exprs!8110 ct1!232))))))

(declare-fun bm!661429 () Bool)

(declare-fun call!661433 () List!70590)

(assert (=> bm!661429 (= call!661432 call!661433)))

(declare-fun b!7257535 () Bool)

(declare-fun e!4351826 () (Set Context!15220))

(assert (=> b!7257535 (= e!4351826 e!4351824)))

(assert (=> b!7257535 (= c!1349666 (is-Concat!27515 (h!76914 (exprs!8110 ct1!232))))))

(declare-fun d!2257276 () Bool)

(declare-fun c!1349670 () Bool)

(assert (=> d!2257276 (= c!1349670 (and (is-ElementMatch!18670 (h!76914 (exprs!8110 ct1!232))) (= (c!1349608 (h!76914 (exprs!8110 ct1!232))) (h!76915 s1!1971))))))

(assert (=> d!2257276 (= (derivationStepZipperDown!2664 (h!76914 (exprs!8110 ct1!232)) lt!2588126 (h!76915 s1!1971)) e!4351827)))

(declare-fun bm!661430 () Bool)

(declare-fun call!661434 () (Set Context!15220))

(assert (=> bm!661430 (= call!661434 (derivationStepZipperDown!2664 (ite c!1349669 (regOne!37853 (h!76914 (exprs!8110 ct1!232))) (regOne!37852 (h!76914 (exprs!8110 ct1!232)))) (ite c!1349669 lt!2588126 (Context!15221 call!661433)) (h!76915 s1!1971)))))

(declare-fun b!7257536 () Bool)

(assert (=> b!7257536 (= e!4351827 (set.insert lt!2588126 (as set.empty (Set Context!15220))))))

(declare-fun b!7257537 () Bool)

(assert (=> b!7257537 (= e!4351826 (set.union call!661434 call!661437))))

(declare-fun bm!661431 () Bool)

(assert (=> bm!661431 (= call!661437 call!661435)))

(declare-fun bm!661432 () Bool)

(assert (=> bm!661432 (= call!661433 ($colon$colon!2932 (exprs!8110 lt!2588126) (ite (or c!1349667 c!1349666) (regTwo!37852 (h!76914 (exprs!8110 ct1!232))) (h!76914 (exprs!8110 ct1!232)))))))

(declare-fun b!7257538 () Bool)

(assert (=> b!7257538 (= e!4351825 call!661436)))

(declare-fun b!7257539 () Bool)

(assert (=> b!7257539 (= e!4351823 (set.union call!661434 call!661435))))

(declare-fun b!7257540 () Bool)

(declare-fun e!4351822 () Bool)

(assert (=> b!7257540 (= c!1349667 e!4351822)))

(declare-fun res!2942954 () Bool)

(assert (=> b!7257540 (=> (not res!2942954) (not e!4351822))))

(assert (=> b!7257540 (= res!2942954 (is-Concat!27515 (h!76914 (exprs!8110 ct1!232))))))

(assert (=> b!7257540 (= e!4351823 e!4351826)))

(declare-fun b!7257541 () Bool)

(assert (=> b!7257541 (= e!4351825 (as set.empty (Set Context!15220)))))

(declare-fun b!7257542 () Bool)

(assert (=> b!7257542 (= e!4351822 (nullable!7930 (regOne!37852 (h!76914 (exprs!8110 ct1!232)))))))

(assert (= (and d!2257276 c!1349670) b!7257536))

(assert (= (and d!2257276 (not c!1349670)) b!7257534))

(assert (= (and b!7257534 c!1349669) b!7257539))

(assert (= (and b!7257534 (not c!1349669)) b!7257540))

(assert (= (and b!7257540 res!2942954) b!7257542))

(assert (= (and b!7257540 c!1349667) b!7257537))

(assert (= (and b!7257540 (not c!1349667)) b!7257535))

(assert (= (and b!7257535 c!1349666) b!7257533))

(assert (= (and b!7257535 (not c!1349666)) b!7257532))

(assert (= (and b!7257532 c!1349668) b!7257538))

(assert (= (and b!7257532 (not c!1349668)) b!7257541))

(assert (= (or b!7257533 b!7257538) bm!661429))

(assert (= (or b!7257533 b!7257538) bm!661428))

(assert (= (or b!7257537 bm!661429) bm!661432))

(assert (= (or b!7257537 bm!661428) bm!661431))

(assert (= (or b!7257539 bm!661431) bm!661427))

(assert (= (or b!7257539 b!7257537) bm!661430))

(declare-fun m!7939878 () Bool)

(assert (=> bm!661432 m!7939878))

(declare-fun m!7939880 () Bool)

(assert (=> bm!661430 m!7939880))

(assert (=> b!7257542 m!7939840))

(declare-fun m!7939882 () Bool)

(assert (=> bm!661427 m!7939882))

(declare-fun m!7939884 () Bool)

(assert (=> b!7257536 m!7939884))

(assert (=> b!7257361 d!2257276))

(declare-fun bs!1907996 () Bool)

(declare-fun d!2257278 () Bool)

(assert (= bs!1907996 (and d!2257278 d!2257274)))

(declare-fun lambda!445532 () Int)

(assert (=> bs!1907996 (= lambda!445532 lambda!445531)))

(declare-fun bs!1907997 () Bool)

(assert (= bs!1907997 (and d!2257278 d!2257236)))

(assert (=> bs!1907997 (= lambda!445532 lambda!445522)))

(declare-fun bs!1907998 () Bool)

(assert (= bs!1907998 (and d!2257278 d!2257248)))

(assert (=> bs!1907998 (= lambda!445532 lambda!445526)))

(declare-fun bs!1907999 () Bool)

(assert (= bs!1907999 (and d!2257278 b!7257363)))

(assert (=> bs!1907999 (= lambda!445532 lambda!445471)))

(declare-fun bs!1908000 () Bool)

(assert (= bs!1908000 (and d!2257278 d!2257246)))

(assert (=> bs!1908000 (= lambda!445532 lambda!445525)))

(assert (=> d!2257278 (= (inv!89686 lt!2588135) (forall!17526 (exprs!8110 lt!2588135) lambda!445532))))

(declare-fun bs!1908001 () Bool)

(assert (= bs!1908001 d!2257278))

(declare-fun m!7939886 () Bool)

(assert (=> bs!1908001 m!7939886))

(assert (=> b!7257361 d!2257278))

(declare-fun d!2257280 () Bool)

(declare-fun dynLambda!28796 (Int Context!15220) (Set Context!15220))

(assert (=> d!2257280 (= (flatMap!2835 lt!2588106 lambda!445473) (dynLambda!28796 lambda!445473 ct1!232))))

(declare-fun lt!2588288 () Unit!163948)

(declare-fun choose!56145 ((Set Context!15220) Context!15220 Int) Unit!163948)

(assert (=> d!2257280 (= lt!2588288 (choose!56145 lt!2588106 ct1!232 lambda!445473))))

(assert (=> d!2257280 (= lt!2588106 (set.insert ct1!232 (as set.empty (Set Context!15220))))))

(assert (=> d!2257280 (= (lemmaFlatMapOnSingletonSet!2239 lt!2588106 ct1!232 lambda!445473) lt!2588288)))

(declare-fun b_lambda!279071 () Bool)

(assert (=> (not b_lambda!279071) (not d!2257280)))

(declare-fun bs!1908002 () Bool)

(assert (= bs!1908002 d!2257280))

(assert (=> bs!1908002 m!7939566))

(declare-fun m!7939888 () Bool)

(assert (=> bs!1908002 m!7939888))

(declare-fun m!7939890 () Bool)

(assert (=> bs!1908002 m!7939890))

(assert (=> bs!1908002 m!7939552))

(assert (=> b!7257361 d!2257280))

(assert (=> b!7257361 d!2257232))

(declare-fun d!2257282 () Bool)

(assert (=> d!2257282 (= (flatMap!2835 lt!2588099 lambda!445473) (dynLambda!28796 lambda!445473 lt!2588128))))

(declare-fun lt!2588289 () Unit!163948)

(assert (=> d!2257282 (= lt!2588289 (choose!56145 lt!2588099 lt!2588128 lambda!445473))))

(assert (=> d!2257282 (= lt!2588099 (set.insert lt!2588128 (as set.empty (Set Context!15220))))))

(assert (=> d!2257282 (= (lemmaFlatMapOnSingletonSet!2239 lt!2588099 lt!2588128 lambda!445473) lt!2588289)))

(declare-fun b_lambda!279073 () Bool)

(assert (=> (not b_lambda!279073) (not d!2257282)))

(declare-fun bs!1908003 () Bool)

(assert (= bs!1908003 d!2257282))

(assert (=> bs!1908003 m!7939574))

(declare-fun m!7939892 () Bool)

(assert (=> bs!1908003 m!7939892))

(declare-fun m!7939894 () Bool)

(assert (=> bs!1908003 m!7939894))

(assert (=> bs!1908003 m!7939486))

(assert (=> b!7257361 d!2257282))

(declare-fun bs!1908004 () Bool)

(declare-fun d!2257284 () Bool)

(assert (= bs!1908004 (and d!2257284 b!7257361)))

(declare-fun lambda!445533 () Int)

(assert (=> bs!1908004 (= lambda!445533 lambda!445473)))

(declare-fun bs!1908005 () Bool)

(assert (= bs!1908005 (and d!2257284 d!2257224)))

(assert (=> bs!1908005 (= lambda!445533 lambda!445519)))

(assert (=> d!2257284 true))

(assert (=> d!2257284 (= (derivationStepZipper!3448 lt!2588099 (h!76915 s1!1971)) (flatMap!2835 lt!2588099 lambda!445533))))

(declare-fun bs!1908006 () Bool)

(assert (= bs!1908006 d!2257284))

(declare-fun m!7939896 () Bool)

(assert (=> bs!1908006 m!7939896))

(assert (=> b!7257361 d!2257284))

(declare-fun d!2257286 () Bool)

(assert (=> d!2257286 (= (tail!14364 (++!16602 s1!1971 s2!1849)) (t!384655 (++!16602 s1!1971 s2!1849)))))

(assert (=> b!7257361 d!2257286))

(declare-fun d!2257288 () Bool)

(declare-fun c!1349671 () Bool)

(assert (=> d!2257288 (= c!1349671 (isEmpty!40582 s2!1849))))

(declare-fun e!4351828 () Bool)

(assert (=> d!2257288 (= (matchZipper!3580 (set.insert ct2!328 (as set.empty (Set Context!15220))) s2!1849) e!4351828)))

(declare-fun b!7257543 () Bool)

(assert (=> b!7257543 (= e!4351828 (nullableZipper!2930 (set.insert ct2!328 (as set.empty (Set Context!15220)))))))

(declare-fun b!7257544 () Bool)

(assert (=> b!7257544 (= e!4351828 (matchZipper!3580 (derivationStepZipper!3448 (set.insert ct2!328 (as set.empty (Set Context!15220))) (head!14927 s2!1849)) (tail!14364 s2!1849)))))

(assert (= (and d!2257288 c!1349671) b!7257543))

(assert (= (and d!2257288 (not c!1349671)) b!7257544))

(declare-fun m!7939898 () Bool)

(assert (=> d!2257288 m!7939898))

(assert (=> b!7257543 m!7939482))

(declare-fun m!7939900 () Bool)

(assert (=> b!7257543 m!7939900))

(declare-fun m!7939902 () Bool)

(assert (=> b!7257544 m!7939902))

(assert (=> b!7257544 m!7939482))

(assert (=> b!7257544 m!7939902))

(declare-fun m!7939904 () Bool)

(assert (=> b!7257544 m!7939904))

(declare-fun m!7939906 () Bool)

(assert (=> b!7257544 m!7939906))

(assert (=> b!7257544 m!7939904))

(assert (=> b!7257544 m!7939906))

(declare-fun m!7939908 () Bool)

(assert (=> b!7257544 m!7939908))

(assert (=> b!7257366 d!2257288))

(declare-fun d!2257290 () Bool)

(declare-fun c!1349672 () Bool)

(declare-fun e!4351831 () Bool)

(assert (=> d!2257290 (= c!1349672 e!4351831)))

(declare-fun res!2942955 () Bool)

(assert (=> d!2257290 (=> (not res!2942955) (not e!4351831))))

(assert (=> d!2257290 (= res!2942955 (is-Cons!70466 (exprs!8110 lt!2588111)))))

(declare-fun e!4351829 () (Set Context!15220))

(assert (=> d!2257290 (= (derivationStepZipperUp!2494 lt!2588111 (h!76915 s1!1971)) e!4351829)))

(declare-fun b!7257545 () Bool)

(declare-fun e!4351830 () (Set Context!15220))

(declare-fun call!661438 () (Set Context!15220))

(assert (=> b!7257545 (= e!4351830 call!661438)))

(declare-fun b!7257546 () Bool)

(assert (=> b!7257546 (= e!4351829 (set.union call!661438 (derivationStepZipperUp!2494 (Context!15221 (t!384654 (exprs!8110 lt!2588111))) (h!76915 s1!1971))))))

(declare-fun b!7257547 () Bool)

(assert (=> b!7257547 (= e!4351830 (as set.empty (Set Context!15220)))))

(declare-fun b!7257548 () Bool)

(assert (=> b!7257548 (= e!4351831 (nullable!7930 (h!76914 (exprs!8110 lt!2588111))))))

(declare-fun bm!661433 () Bool)

(assert (=> bm!661433 (= call!661438 (derivationStepZipperDown!2664 (h!76914 (exprs!8110 lt!2588111)) (Context!15221 (t!384654 (exprs!8110 lt!2588111))) (h!76915 s1!1971)))))

(declare-fun b!7257549 () Bool)

(assert (=> b!7257549 (= e!4351829 e!4351830)))

(declare-fun c!1349673 () Bool)

(assert (=> b!7257549 (= c!1349673 (is-Cons!70466 (exprs!8110 lt!2588111)))))

(assert (= (and d!2257290 res!2942955) b!7257548))

(assert (= (and d!2257290 c!1349672) b!7257546))

(assert (= (and d!2257290 (not c!1349672)) b!7257549))

(assert (= (and b!7257549 c!1349673) b!7257545))

(assert (= (and b!7257549 (not c!1349673)) b!7257547))

(assert (= (or b!7257546 b!7257545) bm!661433))

(declare-fun m!7939910 () Bool)

(assert (=> b!7257546 m!7939910))

(declare-fun m!7939912 () Bool)

(assert (=> b!7257548 m!7939912))

(declare-fun m!7939914 () Bool)

(assert (=> bm!661433 m!7939914))

(assert (=> b!7257355 d!2257290))

(declare-fun d!2257292 () Bool)

(declare-fun c!1349674 () Bool)

(assert (=> d!2257292 (= c!1349674 (isEmpty!40582 (t!384655 s1!1971)))))

(declare-fun e!4351832 () Bool)

(assert (=> d!2257292 (= (matchZipper!3580 (set.union lt!2588124 lt!2588108) (t!384655 s1!1971)) e!4351832)))

(declare-fun b!7257550 () Bool)

(assert (=> b!7257550 (= e!4351832 (nullableZipper!2930 (set.union lt!2588124 lt!2588108)))))

(declare-fun b!7257551 () Bool)

(assert (=> b!7257551 (= e!4351832 (matchZipper!3580 (derivationStepZipper!3448 (set.union lt!2588124 lt!2588108) (head!14927 (t!384655 s1!1971))) (tail!14364 (t!384655 s1!1971))))))

(assert (= (and d!2257292 c!1349674) b!7257550))

(assert (= (and d!2257292 (not c!1349674)) b!7257551))

(assert (=> d!2257292 m!7939710))

(declare-fun m!7939916 () Bool)

(assert (=> b!7257550 m!7939916))

(assert (=> b!7257551 m!7939714))

(assert (=> b!7257551 m!7939714))

(declare-fun m!7939918 () Bool)

(assert (=> b!7257551 m!7939918))

(assert (=> b!7257551 m!7939718))

(assert (=> b!7257551 m!7939918))

(assert (=> b!7257551 m!7939718))

(declare-fun m!7939920 () Bool)

(assert (=> b!7257551 m!7939920))

(assert (=> b!7257355 d!2257292))

(declare-fun d!2257294 () Bool)

(declare-fun c!1349675 () Bool)

(assert (=> d!2257294 (= c!1349675 (isEmpty!40582 lt!2588113))))

(declare-fun e!4351833 () Bool)

(assert (=> d!2257294 (= (matchZipper!3580 (set.union lt!2588109 lt!2588120) lt!2588113) e!4351833)))

(declare-fun b!7257552 () Bool)

(assert (=> b!7257552 (= e!4351833 (nullableZipper!2930 (set.union lt!2588109 lt!2588120)))))

(declare-fun b!7257553 () Bool)

(assert (=> b!7257553 (= e!4351833 (matchZipper!3580 (derivationStepZipper!3448 (set.union lt!2588109 lt!2588120) (head!14927 lt!2588113)) (tail!14364 lt!2588113)))))

(assert (= (and d!2257294 c!1349675) b!7257552))

(assert (= (and d!2257294 (not c!1349675)) b!7257553))

(assert (=> d!2257294 m!7939724))

(declare-fun m!7939922 () Bool)

(assert (=> b!7257552 m!7939922))

(assert (=> b!7257553 m!7939728))

(assert (=> b!7257553 m!7939728))

(declare-fun m!7939924 () Bool)

(assert (=> b!7257553 m!7939924))

(assert (=> b!7257553 m!7939732))

(assert (=> b!7257553 m!7939924))

(assert (=> b!7257553 m!7939732))

(declare-fun m!7939926 () Bool)

(assert (=> b!7257553 m!7939926))

(assert (=> b!7257355 d!2257294))

(declare-fun d!2257296 () Bool)

(declare-fun c!1349676 () Bool)

(assert (=> d!2257296 (= c!1349676 (isEmpty!40582 lt!2588113))))

(declare-fun e!4351834 () Bool)

(assert (=> d!2257296 (= (matchZipper!3580 lt!2588109 lt!2588113) e!4351834)))

(declare-fun b!7257554 () Bool)

(assert (=> b!7257554 (= e!4351834 (nullableZipper!2930 lt!2588109))))

(declare-fun b!7257555 () Bool)

(assert (=> b!7257555 (= e!4351834 (matchZipper!3580 (derivationStepZipper!3448 lt!2588109 (head!14927 lt!2588113)) (tail!14364 lt!2588113)))))

(assert (= (and d!2257296 c!1349676) b!7257554))

(assert (= (and d!2257296 (not c!1349676)) b!7257555))

(assert (=> d!2257296 m!7939724))

(declare-fun m!7939928 () Bool)

(assert (=> b!7257554 m!7939928))

(assert (=> b!7257555 m!7939728))

(assert (=> b!7257555 m!7939728))

(declare-fun m!7939930 () Bool)

(assert (=> b!7257555 m!7939930))

(assert (=> b!7257555 m!7939732))

(assert (=> b!7257555 m!7939930))

(assert (=> b!7257555 m!7939732))

(declare-fun m!7939932 () Bool)

(assert (=> b!7257555 m!7939932))

(assert (=> b!7257355 d!2257296))

(declare-fun d!2257298 () Bool)

(declare-fun c!1349677 () Bool)

(assert (=> d!2257298 (= c!1349677 (isEmpty!40582 (t!384655 s1!1971)))))

(declare-fun e!4351835 () Bool)

(assert (=> d!2257298 (= (matchZipper!3580 lt!2588124 (t!384655 s1!1971)) e!4351835)))

(declare-fun b!7257556 () Bool)

(assert (=> b!7257556 (= e!4351835 (nullableZipper!2930 lt!2588124))))

(declare-fun b!7257557 () Bool)

(assert (=> b!7257557 (= e!4351835 (matchZipper!3580 (derivationStepZipper!3448 lt!2588124 (head!14927 (t!384655 s1!1971))) (tail!14364 (t!384655 s1!1971))))))

(assert (= (and d!2257298 c!1349677) b!7257556))

(assert (= (and d!2257298 (not c!1349677)) b!7257557))

(assert (=> d!2257298 m!7939710))

(declare-fun m!7939934 () Bool)

(assert (=> b!7257556 m!7939934))

(assert (=> b!7257557 m!7939714))

(assert (=> b!7257557 m!7939714))

(declare-fun m!7939936 () Bool)

(assert (=> b!7257557 m!7939936))

(assert (=> b!7257557 m!7939718))

(assert (=> b!7257557 m!7939936))

(assert (=> b!7257557 m!7939718))

(declare-fun m!7939938 () Bool)

(assert (=> b!7257557 m!7939938))

(assert (=> b!7257355 d!2257298))

(assert (=> b!7257355 d!2257252))

(declare-fun e!4351838 () Bool)

(declare-fun d!2257300 () Bool)

(assert (=> d!2257300 (= (matchZipper!3580 (set.union lt!2588109 lt!2588120) lt!2588113) e!4351838)))

(declare-fun res!2942958 () Bool)

(assert (=> d!2257300 (=> res!2942958 e!4351838)))

(assert (=> d!2257300 (= res!2942958 (matchZipper!3580 lt!2588109 lt!2588113))))

(declare-fun lt!2588292 () Unit!163948)

(declare-fun choose!56146 ((Set Context!15220) (Set Context!15220) List!70591) Unit!163948)

(assert (=> d!2257300 (= lt!2588292 (choose!56146 lt!2588109 lt!2588120 lt!2588113))))

(assert (=> d!2257300 (= (lemmaZipperConcatMatchesSameAsBothZippers!1725 lt!2588109 lt!2588120 lt!2588113) lt!2588292)))

(declare-fun b!7257560 () Bool)

(assert (=> b!7257560 (= e!4351838 (matchZipper!3580 lt!2588120 lt!2588113))))

(assert (= (and d!2257300 (not res!2942958)) b!7257560))

(assert (=> d!2257300 m!7939544))

(assert (=> d!2257300 m!7939546))

(declare-fun m!7939940 () Bool)

(assert (=> d!2257300 m!7939940))

(assert (=> b!7257560 m!7939548))

(assert (=> b!7257355 d!2257300))

(declare-fun d!2257302 () Bool)

(declare-fun e!4351839 () Bool)

(assert (=> d!2257302 (= (matchZipper!3580 (set.union lt!2588124 lt!2588108) (t!384655 s1!1971)) e!4351839)))

(declare-fun res!2942959 () Bool)

(assert (=> d!2257302 (=> res!2942959 e!4351839)))

(assert (=> d!2257302 (= res!2942959 (matchZipper!3580 lt!2588124 (t!384655 s1!1971)))))

(declare-fun lt!2588293 () Unit!163948)

(assert (=> d!2257302 (= lt!2588293 (choose!56146 lt!2588124 lt!2588108 (t!384655 s1!1971)))))

(assert (=> d!2257302 (= (lemmaZipperConcatMatchesSameAsBothZippers!1725 lt!2588124 lt!2588108 (t!384655 s1!1971)) lt!2588293)))

(declare-fun b!7257561 () Bool)

(assert (=> b!7257561 (= e!4351839 (matchZipper!3580 lt!2588108 (t!384655 s1!1971)))))

(assert (= (and d!2257302 (not res!2942959)) b!7257561))

(assert (=> d!2257302 m!7939536))

(assert (=> d!2257302 m!7939532))

(declare-fun m!7939942 () Bool)

(assert (=> d!2257302 m!7939942))

(assert (=> b!7257561 m!7939518))

(assert (=> b!7257355 d!2257302))

(declare-fun d!2257304 () Bool)

(declare-fun c!1349678 () Bool)

(declare-fun e!4351842 () Bool)

(assert (=> d!2257304 (= c!1349678 e!4351842)))

(declare-fun res!2942960 () Bool)

(assert (=> d!2257304 (=> (not res!2942960) (not e!4351842))))

(assert (=> d!2257304 (= res!2942960 (is-Cons!70466 (exprs!8110 lt!2588126)))))

(declare-fun e!4351840 () (Set Context!15220))

(assert (=> d!2257304 (= (derivationStepZipperUp!2494 lt!2588126 (h!76915 s1!1971)) e!4351840)))

(declare-fun b!7257562 () Bool)

(declare-fun e!4351841 () (Set Context!15220))

(declare-fun call!661439 () (Set Context!15220))

(assert (=> b!7257562 (= e!4351841 call!661439)))

(declare-fun b!7257563 () Bool)

(assert (=> b!7257563 (= e!4351840 (set.union call!661439 (derivationStepZipperUp!2494 (Context!15221 (t!384654 (exprs!8110 lt!2588126))) (h!76915 s1!1971))))))

(declare-fun b!7257564 () Bool)

(assert (=> b!7257564 (= e!4351841 (as set.empty (Set Context!15220)))))

(declare-fun b!7257565 () Bool)

(assert (=> b!7257565 (= e!4351842 (nullable!7930 (h!76914 (exprs!8110 lt!2588126))))))

(declare-fun bm!661434 () Bool)

(assert (=> bm!661434 (= call!661439 (derivationStepZipperDown!2664 (h!76914 (exprs!8110 lt!2588126)) (Context!15221 (t!384654 (exprs!8110 lt!2588126))) (h!76915 s1!1971)))))

(declare-fun b!7257566 () Bool)

(assert (=> b!7257566 (= e!4351840 e!4351841)))

(declare-fun c!1349679 () Bool)

(assert (=> b!7257566 (= c!1349679 (is-Cons!70466 (exprs!8110 lt!2588126)))))

(assert (= (and d!2257304 res!2942960) b!7257565))

(assert (= (and d!2257304 c!1349678) b!7257563))

(assert (= (and d!2257304 (not c!1349678)) b!7257566))

(assert (= (and b!7257566 c!1349679) b!7257562))

(assert (= (and b!7257566 (not c!1349679)) b!7257564))

(assert (= (or b!7257563 b!7257562) bm!661434))

(declare-fun m!7939944 () Bool)

(assert (=> b!7257563 m!7939944))

(declare-fun m!7939946 () Bool)

(assert (=> b!7257565 m!7939946))

(declare-fun m!7939948 () Bool)

(assert (=> bm!661434 m!7939948))

(assert (=> b!7257355 d!2257304))

(declare-fun b!7257571 () Bool)

(declare-fun e!4351845 () Bool)

(declare-fun tp!2038365 () Bool)

(assert (=> b!7257571 (= e!4351845 (and tp_is_empty!46805 tp!2038365))))

(assert (=> b!7257358 (= tp!2038348 e!4351845)))

(assert (= (and b!7257358 (is-Cons!70467 (t!384655 s2!1849))) b!7257571))

(declare-fun b!7257576 () Bool)

(declare-fun e!4351848 () Bool)

(declare-fun tp!2038370 () Bool)

(declare-fun tp!2038371 () Bool)

(assert (=> b!7257576 (= e!4351848 (and tp!2038370 tp!2038371))))

(assert (=> b!7257357 (= tp!2038350 e!4351848)))

(assert (= (and b!7257357 (is-Cons!70466 (exprs!8110 ct2!328))) b!7257576))

(declare-fun b!7257577 () Bool)

(declare-fun e!4351849 () Bool)

(declare-fun tp!2038372 () Bool)

(assert (=> b!7257577 (= e!4351849 (and tp_is_empty!46805 tp!2038372))))

(assert (=> b!7257362 (= tp!2038347 e!4351849)))

(assert (= (and b!7257362 (is-Cons!70467 (t!384655 s1!1971))) b!7257577))

(declare-fun b!7257578 () Bool)

(declare-fun e!4351850 () Bool)

(declare-fun tp!2038373 () Bool)

(declare-fun tp!2038374 () Bool)

(assert (=> b!7257578 (= e!4351850 (and tp!2038373 tp!2038374))))

(assert (=> b!7257356 (= tp!2038349 e!4351850)))

(assert (= (and b!7257356 (is-Cons!70466 (exprs!8110 ct1!232))) b!7257578))

(declare-fun b_lambda!279075 () Bool)

(assert (= b_lambda!279071 (or b!7257361 b_lambda!279075)))

(declare-fun bs!1908007 () Bool)

(declare-fun d!2257306 () Bool)

(assert (= bs!1908007 (and d!2257306 b!7257361)))

(assert (=> bs!1908007 (= (dynLambda!28796 lambda!445473 ct1!232) (derivationStepZipperUp!2494 ct1!232 (h!76915 s1!1971)))))

(assert (=> bs!1908007 m!7939502))

(assert (=> d!2257280 d!2257306))

(declare-fun b_lambda!279077 () Bool)

(assert (= b_lambda!279073 (or b!7257361 b_lambda!279077)))

(declare-fun bs!1908008 () Bool)

(declare-fun d!2257308 () Bool)

(assert (= bs!1908008 (and d!2257308 b!7257361)))

(assert (=> bs!1908008 (= (dynLambda!28796 lambda!445473 lt!2588128) (derivationStepZipperUp!2494 lt!2588128 (h!76915 s1!1971)))))

(assert (=> bs!1908008 m!7939526))

(assert (=> d!2257282 d!2257308))

(declare-fun b_lambda!279079 () Bool)

(assert (= b_lambda!279069 (or b!7257365 b_lambda!279079)))

(declare-fun bs!1908009 () Bool)

(declare-fun d!2257310 () Bool)

(assert (= bs!1908009 (and d!2257310 b!7257365)))

(assert (=> bs!1908009 (= (dynLambda!28795 lambda!445472 lt!2588267) (matchZipper!3580 (set.insert lt!2588267 (as set.empty (Set Context!15220))) (t!384655 s1!1971)))))

(declare-fun m!7939950 () Bool)

(assert (=> bs!1908009 m!7939950))

(assert (=> bs!1908009 m!7939950))

(declare-fun m!7939952 () Bool)

(assert (=> bs!1908009 m!7939952))

(assert (=> d!2257238 d!2257310))

(push 1)

(assert (not b!7257553))

(assert (not bm!661430))

(assert (not b!7257542))

(assert (not bs!1908009))

(assert (not bm!661432))

(assert (not b!7257557))

(assert (not d!2257220))

(assert (not bm!661427))

(assert (not bs!1908008))

(assert (not bm!661433))

(assert (not d!2257242))

(assert (not d!2257264))

(assert (not b!7257554))

(assert (not bm!661407))

(assert (not b!7257491))

(assert (not b_lambda!279077))

(assert (not b_lambda!279075))

(assert (not b!7257479))

(assert (not bm!661424))

(assert (not d!2257230))

(assert (not d!2257252))

(assert (not bm!661434))

(assert (not b!7257432))

(assert (not d!2257280))

(assert (not d!2257294))

(assert (not b!7257483))

(assert (not d!2257270))

(assert (not b!7257555))

(assert (not d!2257214))

(assert (not b!7257530))

(assert (not d!2257282))

(assert (not d!2257284))

(assert (not b!7257451))

(assert (not bm!661408))

(assert (not d!2257262))

(assert (not bm!661426))

(assert (not b!7257427))

(assert (not d!2257216))

(assert (not bs!1908007))

(assert (not bm!661421))

(assert (not b!7257527))

(assert (not d!2257296))

(assert (not b!7257486))

(assert (not b!7257525))

(assert (not b!7257433))

(assert (not b!7257556))

(assert (not d!2257250))

(assert (not b!7257563))

(assert (not b!7257453))

(assert tp_is_empty!46805)

(assert (not b!7257576))

(assert (not d!2257292))

(assert (not d!2257274))

(assert (not b!7257489))

(assert (not d!2257278))

(assert (not d!2257300))

(assert (not d!2257298))

(assert (not d!2257218))

(assert (not d!2257222))

(assert (not d!2257228))

(assert (not b!7257577))

(assert (not d!2257224))

(assert (not b!7257437))

(assert (not b!7257571))

(assert (not b!7257546))

(assert (not d!2257302))

(assert (not b!7257526))

(assert (not b!7257439))

(assert (not b!7257482))

(assert (not b_lambda!279079))

(assert (not d!2257288))

(assert (not d!2257248))

(assert (not b!7257544))

(assert (not b!7257529))

(assert (not b!7257467))

(assert (not d!2257268))

(assert (not b!7257485))

(assert (not b!7257468))

(assert (not d!2257246))

(assert (not b!7257548))

(assert (not b!7257551))

(assert (not d!2257240))

(assert (not b!7257550))

(assert (not d!2257238))

(assert (not b!7257438))

(assert (not d!2257236))

(assert (not d!2257226))

(assert (not d!2257244))

(assert (not b!7257578))

(assert (not b!7257480))

(assert (not b!7257543))

(assert (not b!7257560))

(assert (not d!2257266))

(assert (not b!7257561))

(assert (not b!7257436))

(assert (not b!7257565))

(assert (not b!7257552))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

