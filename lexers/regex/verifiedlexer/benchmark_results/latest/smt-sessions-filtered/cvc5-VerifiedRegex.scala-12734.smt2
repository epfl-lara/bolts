; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!703938 () Bool)

(assert start!703938)

(declare-fun b!7242664 () Bool)

(assert (=> b!7242664 true))

(declare-fun b!7242660 () Bool)

(assert (=> b!7242660 true))

(declare-fun b!7242656 () Bool)

(declare-fun e!4342416 () Bool)

(declare-fun tp!2035743 () Bool)

(assert (=> b!7242656 (= e!4342416 tp!2035743)))

(declare-fun b!7242657 () Bool)

(declare-fun e!4342423 () Bool)

(declare-fun e!4342424 () Bool)

(assert (=> b!7242657 (= e!4342423 e!4342424)))

(declare-fun res!2938024 () Bool)

(assert (=> b!7242657 (=> (not res!2938024) (not e!4342424))))

(declare-datatypes ((C!37426 0))(
  ( (C!37427 (val!28661 Int)) )
))
(declare-datatypes ((Regex!18576 0))(
  ( (ElementMatch!18576 (c!1345078 C!37426)) (Concat!27421 (regOne!37664 Regex!18576) (regTwo!37664 Regex!18576)) (EmptyExpr!18576) (Star!18576 (reg!18905 Regex!18576)) (EmptyLang!18576) (Union!18576 (regOne!37665 Regex!18576) (regTwo!37665 Regex!18576)) )
))
(declare-datatypes ((List!70325 0))(
  ( (Nil!70201) (Cons!70201 (h!76649 Regex!18576) (t!384376 List!70325)) )
))
(declare-datatypes ((Context!15032 0))(
  ( (Context!15033 (exprs!8016 List!70325)) )
))
(declare-fun ct1!232 () Context!15032)

(declare-datatypes ((List!70326 0))(
  ( (Nil!70202) (Cons!70202 (h!76650 C!37426) (t!384377 List!70326)) )
))
(declare-fun s1!1971 () List!70326)

(assert (=> b!7242657 (= res!2938024 (and (not (is-Nil!70201 (exprs!8016 ct1!232))) (is-Cons!70202 s1!1971)))))

(declare-fun lt!2580670 () (Set Context!15032))

(declare-fun lt!2580687 () Context!15032)

(assert (=> b!7242657 (= lt!2580670 (set.insert lt!2580687 (as set.empty (Set Context!15032))))))

(declare-fun lt!2580674 () List!70325)

(assert (=> b!7242657 (= lt!2580687 (Context!15033 lt!2580674))))

(declare-fun ct2!328 () Context!15032)

(declare-fun ++!16436 (List!70325 List!70325) List!70325)

(assert (=> b!7242657 (= lt!2580674 (++!16436 (exprs!8016 ct1!232) (exprs!8016 ct2!328)))))

(declare-fun lambda!442308 () Int)

(declare-datatypes ((Unit!163738 0))(
  ( (Unit!163739) )
))
(declare-fun lt!2580671 () Unit!163738)

(declare-fun lemmaConcatPreservesForall!1385 (List!70325 List!70325 Int) Unit!163738)

(assert (=> b!7242657 (= lt!2580671 (lemmaConcatPreservesForall!1385 (exprs!8016 ct1!232) (exprs!8016 ct2!328) lambda!442308))))

(declare-fun b!7242658 () Bool)

(declare-fun e!4342418 () Bool)

(declare-fun e!4342421 () Bool)

(assert (=> b!7242658 (= e!4342418 e!4342421)))

(declare-fun res!2938022 () Bool)

(assert (=> b!7242658 (=> res!2938022 e!4342421)))

(declare-fun isEmpty!40443 (List!70325) Bool)

(assert (=> b!7242658 (= res!2938022 (isEmpty!40443 (exprs!8016 ct1!232)))))

(declare-fun lt!2580673 () (Set Context!15032))

(declare-fun derivationStepZipperUp!2430 (Context!15032 C!37426) (Set Context!15032))

(assert (=> b!7242658 (= lt!2580673 (derivationStepZipperUp!2430 ct1!232 (h!76650 s1!1971)))))

(declare-fun lt!2580672 () Context!15032)

(declare-fun lt!2580675 () Unit!163738)

(assert (=> b!7242658 (= lt!2580675 (lemmaConcatPreservesForall!1385 (exprs!8016 lt!2580672) (exprs!8016 ct2!328) lambda!442308))))

(declare-fun s2!1849 () List!70326)

(declare-fun matchZipper!3486 ((Set Context!15032) List!70326) Bool)

(declare-fun ++!16437 (List!70326 List!70326) List!70326)

(assert (=> b!7242658 (matchZipper!3486 (set.insert (Context!15033 (++!16436 (exprs!8016 lt!2580672) (exprs!8016 ct2!328))) (as set.empty (Set Context!15032))) (++!16437 (t!384377 s1!1971) s2!1849))))

(declare-fun lt!2580681 () Unit!163738)

(assert (=> b!7242658 (= lt!2580681 (lemmaConcatPreservesForall!1385 (exprs!8016 lt!2580672) (exprs!8016 ct2!328) lambda!442308))))

(declare-fun lt!2580679 () Unit!163738)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!349 (Context!15032 Context!15032 List!70326 List!70326) Unit!163738)

(assert (=> b!7242658 (= lt!2580679 (lemmaConcatenateContextMatchesConcatOfStrings!349 lt!2580672 ct2!328 (t!384377 s1!1971) s2!1849))))

(declare-fun lt!2580668 () (Set Context!15032))

(declare-fun lambda!442309 () Int)

(declare-fun getWitness!2120 ((Set Context!15032) Int) Context!15032)

(assert (=> b!7242658 (= lt!2580672 (getWitness!2120 lt!2580668 lambda!442309))))

(declare-fun b!7242659 () Bool)

(declare-fun e!4342417 () Bool)

(assert (=> b!7242659 (= e!4342424 e!4342417)))

(declare-fun res!2938023 () Bool)

(assert (=> b!7242659 (=> (not res!2938023) (not e!4342417))))

(assert (=> b!7242659 (= res!2938023 (matchZipper!3486 lt!2580668 (t!384377 s1!1971)))))

(declare-fun lt!2580677 () (Set Context!15032))

(declare-fun derivationStepZipper!3364 ((Set Context!15032) C!37426) (Set Context!15032))

(assert (=> b!7242659 (= lt!2580668 (derivationStepZipper!3364 lt!2580677 (h!76650 s1!1971)))))

(declare-fun lt!2580688 () (Set Context!15032))

(declare-fun lt!2580686 () Context!15032)

(declare-fun b!7242661 () Bool)

(declare-fun e!4342425 () Bool)

(assert (=> b!7242661 (= e!4342425 (= lt!2580673 (set.union lt!2580688 (derivationStepZipperUp!2430 lt!2580686 (h!76650 s1!1971)))))))

(declare-fun b!7242662 () Bool)

(declare-fun e!4342419 () Bool)

(declare-fun tp!2035741 () Bool)

(assert (=> b!7242662 (= e!4342419 tp!2035741)))

(declare-fun b!7242663 () Bool)

(declare-fun e!4342420 () Bool)

(declare-fun tp_is_empty!46617 () Bool)

(declare-fun tp!2035744 () Bool)

(assert (=> b!7242663 (= e!4342420 (and tp_is_empty!46617 tp!2035744))))

(assert (=> b!7242664 (= e!4342417 (not e!4342418))))

(declare-fun res!2938025 () Bool)

(assert (=> b!7242664 (=> res!2938025 e!4342418)))

(declare-fun exists!4271 ((Set Context!15032) Int) Bool)

(assert (=> b!7242664 (= res!2938025 (not (exists!4271 lt!2580668 lambda!442309)))))

(declare-datatypes ((List!70327 0))(
  ( (Nil!70203) (Cons!70203 (h!76651 Context!15032) (t!384378 List!70327)) )
))
(declare-fun lt!2580678 () List!70327)

(declare-fun exists!4272 (List!70327 Int) Bool)

(assert (=> b!7242664 (exists!4272 lt!2580678 lambda!442309)))

(declare-fun lt!2580669 () Unit!163738)

(declare-fun lemmaZipperMatchesExistsMatchingContext!703 (List!70327 List!70326) Unit!163738)

(assert (=> b!7242664 (= lt!2580669 (lemmaZipperMatchesExistsMatchingContext!703 lt!2580678 (t!384377 s1!1971)))))

(declare-fun toList!11422 ((Set Context!15032)) List!70327)

(assert (=> b!7242664 (= lt!2580678 (toList!11422 lt!2580668))))

(declare-fun b!7242665 () Bool)

(declare-fun e!4342422 () Bool)

(assert (=> b!7242665 (= e!4342421 e!4342422)))

(declare-fun res!2938026 () Bool)

(assert (=> b!7242665 (=> res!2938026 e!4342422)))

(assert (=> b!7242665 (= res!2938026 (isEmpty!40443 lt!2580674))))

(declare-fun lt!2580683 () Unit!163738)

(assert (=> b!7242665 (= lt!2580683 (lemmaConcatPreservesForall!1385 (exprs!8016 ct1!232) (exprs!8016 ct2!328) lambda!442308))))

(declare-fun lt!2580676 () (Set Context!15032))

(assert (=> b!7242665 (= lt!2580676 (derivationStepZipperUp!2430 lt!2580687 (h!76650 s1!1971)))))

(declare-fun lt!2580680 () Unit!163738)

(assert (=> b!7242665 (= lt!2580680 (lemmaConcatPreservesForall!1385 (exprs!8016 ct1!232) (exprs!8016 ct2!328) lambda!442308))))

(declare-fun derivationStepZipperDown!2600 (Regex!18576 Context!15032 C!37426) (Set Context!15032))

(assert (=> b!7242665 (= lt!2580688 (derivationStepZipperDown!2600 (h!76649 (exprs!8016 ct1!232)) lt!2580686 (h!76650 s1!1971)))))

(declare-fun tail!14236 (List!70325) List!70325)

(assert (=> b!7242665 (= lt!2580686 (Context!15033 (tail!14236 (exprs!8016 ct1!232))))))

(assert (=> b!7242660 (= e!4342422 e!4342425)))

(declare-fun res!2938027 () Bool)

(assert (=> b!7242660 (=> res!2938027 e!4342425)))

(declare-fun nullable!7869 (Regex!18576) Bool)

(assert (=> b!7242660 (= res!2938027 (not (nullable!7869 (h!76649 (exprs!8016 ct1!232)))))))

(declare-fun lambda!442310 () Int)

(declare-fun flatMap!2764 ((Set Context!15032) Int) (Set Context!15032))

(assert (=> b!7242660 (= (flatMap!2764 lt!2580670 lambda!442310) (derivationStepZipperUp!2430 lt!2580687 (h!76650 s1!1971)))))

(declare-fun lt!2580685 () Unit!163738)

(declare-fun lemmaFlatMapOnSingletonSet!2187 ((Set Context!15032) Context!15032 Int) Unit!163738)

(assert (=> b!7242660 (= lt!2580685 (lemmaFlatMapOnSingletonSet!2187 lt!2580670 lt!2580687 lambda!442310))))

(declare-fun lt!2580684 () Unit!163738)

(assert (=> b!7242660 (= lt!2580684 (lemmaConcatPreservesForall!1385 (exprs!8016 ct1!232) (exprs!8016 ct2!328) lambda!442308))))

(assert (=> b!7242660 (= (flatMap!2764 lt!2580677 lambda!442310) (derivationStepZipperUp!2430 ct1!232 (h!76650 s1!1971)))))

(declare-fun lt!2580682 () Unit!163738)

(assert (=> b!7242660 (= lt!2580682 (lemmaFlatMapOnSingletonSet!2187 lt!2580677 ct1!232 lambda!442310))))

(declare-fun lt!2580667 () (Set Context!15032))

(assert (=> b!7242660 (= lt!2580667 (derivationStepZipperDown!2600 (h!76649 (exprs!8016 ct1!232)) (Context!15033 (tail!14236 lt!2580674)) (h!76650 s1!1971)))))

(declare-fun res!2938021 () Bool)

(assert (=> start!703938 (=> (not res!2938021) (not e!4342423))))

(assert (=> start!703938 (= res!2938021 (matchZipper!3486 lt!2580677 s1!1971))))

(assert (=> start!703938 (= lt!2580677 (set.insert ct1!232 (as set.empty (Set Context!15032))))))

(assert (=> start!703938 e!4342423))

(declare-fun inv!89451 (Context!15032) Bool)

(assert (=> start!703938 (and (inv!89451 ct1!232) e!4342416)))

(declare-fun e!4342426 () Bool)

(assert (=> start!703938 e!4342426))

(assert (=> start!703938 e!4342420))

(assert (=> start!703938 (and (inv!89451 ct2!328) e!4342419)))

(declare-fun b!7242666 () Bool)

(declare-fun tp!2035742 () Bool)

(assert (=> b!7242666 (= e!4342426 (and tp_is_empty!46617 tp!2035742))))

(declare-fun b!7242667 () Bool)

(declare-fun res!2938028 () Bool)

(assert (=> b!7242667 (=> (not res!2938028) (not e!4342423))))

(assert (=> b!7242667 (= res!2938028 (matchZipper!3486 (set.insert ct2!328 (as set.empty (Set Context!15032))) s2!1849))))

(assert (= (and start!703938 res!2938021) b!7242667))

(assert (= (and b!7242667 res!2938028) b!7242657))

(assert (= (and b!7242657 res!2938024) b!7242659))

(assert (= (and b!7242659 res!2938023) b!7242664))

(assert (= (and b!7242664 (not res!2938025)) b!7242658))

(assert (= (and b!7242658 (not res!2938022)) b!7242665))

(assert (= (and b!7242665 (not res!2938026)) b!7242660))

(assert (= (and b!7242660 (not res!2938027)) b!7242661))

(assert (= start!703938 b!7242656))

(assert (= (and start!703938 (is-Cons!70202 s1!1971)) b!7242666))

(assert (= (and start!703938 (is-Cons!70202 s2!1849)) b!7242663))

(assert (= start!703938 b!7242662))

(declare-fun m!7917612 () Bool)

(assert (=> b!7242667 m!7917612))

(assert (=> b!7242667 m!7917612))

(declare-fun m!7917614 () Bool)

(assert (=> b!7242667 m!7917614))

(declare-fun m!7917616 () Bool)

(assert (=> b!7242658 m!7917616))

(declare-fun m!7917618 () Bool)

(assert (=> b!7242658 m!7917618))

(declare-fun m!7917620 () Bool)

(assert (=> b!7242658 m!7917620))

(assert (=> b!7242658 m!7917616))

(declare-fun m!7917622 () Bool)

(assert (=> b!7242658 m!7917622))

(assert (=> b!7242658 m!7917618))

(declare-fun m!7917624 () Bool)

(assert (=> b!7242658 m!7917624))

(declare-fun m!7917626 () Bool)

(assert (=> b!7242658 m!7917626))

(declare-fun m!7917628 () Bool)

(assert (=> b!7242658 m!7917628))

(assert (=> b!7242658 m!7917628))

(declare-fun m!7917630 () Bool)

(assert (=> b!7242658 m!7917630))

(declare-fun m!7917632 () Bool)

(assert (=> b!7242658 m!7917632))

(declare-fun m!7917634 () Bool)

(assert (=> b!7242664 m!7917634))

(declare-fun m!7917636 () Bool)

(assert (=> b!7242664 m!7917636))

(declare-fun m!7917638 () Bool)

(assert (=> b!7242664 m!7917638))

(declare-fun m!7917640 () Bool)

(assert (=> b!7242664 m!7917640))

(declare-fun m!7917642 () Bool)

(assert (=> b!7242665 m!7917642))

(declare-fun m!7917644 () Bool)

(assert (=> b!7242665 m!7917644))

(declare-fun m!7917646 () Bool)

(assert (=> b!7242665 m!7917646))

(declare-fun m!7917648 () Bool)

(assert (=> b!7242665 m!7917648))

(declare-fun m!7917650 () Bool)

(assert (=> b!7242665 m!7917650))

(assert (=> b!7242665 m!7917644))

(declare-fun m!7917652 () Bool)

(assert (=> b!7242657 m!7917652))

(declare-fun m!7917654 () Bool)

(assert (=> b!7242657 m!7917654))

(assert (=> b!7242657 m!7917644))

(declare-fun m!7917656 () Bool)

(assert (=> b!7242661 m!7917656))

(declare-fun m!7917658 () Bool)

(assert (=> b!7242659 m!7917658))

(declare-fun m!7917660 () Bool)

(assert (=> b!7242659 m!7917660))

(declare-fun m!7917662 () Bool)

(assert (=> b!7242660 m!7917662))

(assert (=> b!7242660 m!7917644))

(assert (=> b!7242660 m!7917646))

(declare-fun m!7917664 () Bool)

(assert (=> b!7242660 m!7917664))

(assert (=> b!7242660 m!7917630))

(declare-fun m!7917666 () Bool)

(assert (=> b!7242660 m!7917666))

(declare-fun m!7917668 () Bool)

(assert (=> b!7242660 m!7917668))

(declare-fun m!7917670 () Bool)

(assert (=> b!7242660 m!7917670))

(declare-fun m!7917672 () Bool)

(assert (=> b!7242660 m!7917672))

(declare-fun m!7917674 () Bool)

(assert (=> b!7242660 m!7917674))

(declare-fun m!7917676 () Bool)

(assert (=> start!703938 m!7917676))

(declare-fun m!7917678 () Bool)

(assert (=> start!703938 m!7917678))

(declare-fun m!7917680 () Bool)

(assert (=> start!703938 m!7917680))

(declare-fun m!7917682 () Bool)

(assert (=> start!703938 m!7917682))

(push 1)

(assert (not b!7242664))

(assert (not b!7242657))

(assert (not b!7242659))

(assert (not start!703938))

(assert (not b!7242667))

(assert tp_is_empty!46617)

(assert (not b!7242656))

(assert (not b!7242663))

(assert (not b!7242661))

(assert (not b!7242666))

(assert (not b!7242662))

(assert (not b!7242665))

(assert (not b!7242660))

(assert (not b!7242658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2250333 () Bool)

(assert (=> d!2250333 (= (tail!14236 (exprs!8016 ct1!232)) (t!384376 (exprs!8016 ct1!232)))))

(assert (=> b!7242665 d!2250333))

(declare-fun d!2250335 () Bool)

(assert (=> d!2250335 (= (isEmpty!40443 lt!2580674) (is-Nil!70201 lt!2580674))))

(assert (=> b!7242665 d!2250335))

(declare-fun b!7242744 () Bool)

(declare-fun e!4342481 () (Set Context!15032))

(assert (=> b!7242744 (= e!4342481 (as set.empty (Set Context!15032)))))

(declare-fun b!7242745 () Bool)

(declare-fun c!1345104 () Bool)

(declare-fun e!4342479 () Bool)

(assert (=> b!7242745 (= c!1345104 e!4342479)))

(declare-fun res!2938057 () Bool)

(assert (=> b!7242745 (=> (not res!2938057) (not e!4342479))))

(assert (=> b!7242745 (= res!2938057 (is-Concat!27421 (h!76649 (exprs!8016 ct1!232))))))

(declare-fun e!4342482 () (Set Context!15032))

(declare-fun e!4342483 () (Set Context!15032))

(assert (=> b!7242745 (= e!4342482 e!4342483)))

(declare-fun b!7242746 () Bool)

(declare-fun c!1345107 () Bool)

(assert (=> b!7242746 (= c!1345107 (is-Star!18576 (h!76649 (exprs!8016 ct1!232))))))

(declare-fun e!4342480 () (Set Context!15032))

(assert (=> b!7242746 (= e!4342480 e!4342481)))

(declare-fun call!659532 () List!70325)

(declare-fun c!1345108 () Bool)

(declare-fun call!659530 () (Set Context!15032))

(declare-fun bm!659522 () Bool)

(assert (=> bm!659522 (= call!659530 (derivationStepZipperDown!2600 (ite c!1345108 (regOne!37665 (h!76649 (exprs!8016 ct1!232))) (regOne!37664 (h!76649 (exprs!8016 ct1!232)))) (ite c!1345108 lt!2580686 (Context!15033 call!659532)) (h!76650 s1!1971)))))

(declare-fun d!2250337 () Bool)

(declare-fun c!1345105 () Bool)

(assert (=> d!2250337 (= c!1345105 (and (is-ElementMatch!18576 (h!76649 (exprs!8016 ct1!232))) (= (c!1345078 (h!76649 (exprs!8016 ct1!232))) (h!76650 s1!1971))))))

(declare-fun e!4342478 () (Set Context!15032))

(assert (=> d!2250337 (= (derivationStepZipperDown!2600 (h!76649 (exprs!8016 ct1!232)) lt!2580686 (h!76650 s1!1971)) e!4342478)))

(declare-fun b!7242747 () Bool)

(assert (=> b!7242747 (= e!4342478 (set.insert lt!2580686 (as set.empty (Set Context!15032))))))

(declare-fun b!7242748 () Bool)

(assert (=> b!7242748 (= e!4342479 (nullable!7869 (regOne!37664 (h!76649 (exprs!8016 ct1!232)))))))

(declare-fun b!7242749 () Bool)

(assert (=> b!7242749 (= e!4342483 e!4342480)))

(declare-fun c!1345106 () Bool)

(assert (=> b!7242749 (= c!1345106 (is-Concat!27421 (h!76649 (exprs!8016 ct1!232))))))

(declare-fun b!7242750 () Bool)

(declare-fun call!659531 () (Set Context!15032))

(assert (=> b!7242750 (= e!4342483 (set.union call!659530 call!659531))))

(declare-fun b!7242751 () Bool)

(declare-fun call!659528 () (Set Context!15032))

(assert (=> b!7242751 (= e!4342481 call!659528)))

(declare-fun bm!659523 () Bool)

(declare-fun $colon$colon!2894 (List!70325 Regex!18576) List!70325)

(assert (=> bm!659523 (= call!659532 ($colon$colon!2894 (exprs!8016 lt!2580686) (ite (or c!1345104 c!1345106) (regTwo!37664 (h!76649 (exprs!8016 ct1!232))) (h!76649 (exprs!8016 ct1!232)))))))

(declare-fun b!7242752 () Bool)

(declare-fun call!659529 () (Set Context!15032))

(assert (=> b!7242752 (= e!4342482 (set.union call!659530 call!659529))))

(declare-fun bm!659524 () Bool)

(assert (=> bm!659524 (= call!659528 call!659531)))

(declare-fun b!7242753 () Bool)

(assert (=> b!7242753 (= e!4342480 call!659528)))

(declare-fun call!659527 () List!70325)

(declare-fun bm!659525 () Bool)

(assert (=> bm!659525 (= call!659529 (derivationStepZipperDown!2600 (ite c!1345108 (regTwo!37665 (h!76649 (exprs!8016 ct1!232))) (ite c!1345104 (regTwo!37664 (h!76649 (exprs!8016 ct1!232))) (ite c!1345106 (regOne!37664 (h!76649 (exprs!8016 ct1!232))) (reg!18905 (h!76649 (exprs!8016 ct1!232)))))) (ite (or c!1345108 c!1345104) lt!2580686 (Context!15033 call!659527)) (h!76650 s1!1971)))))

(declare-fun bm!659526 () Bool)

(assert (=> bm!659526 (= call!659527 call!659532)))

(declare-fun bm!659527 () Bool)

(assert (=> bm!659527 (= call!659531 call!659529)))

(declare-fun b!7242754 () Bool)

(assert (=> b!7242754 (= e!4342478 e!4342482)))

(assert (=> b!7242754 (= c!1345108 (is-Union!18576 (h!76649 (exprs!8016 ct1!232))))))

(assert (= (and d!2250337 c!1345105) b!7242747))

(assert (= (and d!2250337 (not c!1345105)) b!7242754))

(assert (= (and b!7242754 c!1345108) b!7242752))

(assert (= (and b!7242754 (not c!1345108)) b!7242745))

(assert (= (and b!7242745 res!2938057) b!7242748))

(assert (= (and b!7242745 c!1345104) b!7242750))

(assert (= (and b!7242745 (not c!1345104)) b!7242749))

(assert (= (and b!7242749 c!1345106) b!7242753))

(assert (= (and b!7242749 (not c!1345106)) b!7242746))

(assert (= (and b!7242746 c!1345107) b!7242751))

(assert (= (and b!7242746 (not c!1345107)) b!7242744))

(assert (= (or b!7242753 b!7242751) bm!659526))

(assert (= (or b!7242753 b!7242751) bm!659524))

(assert (= (or b!7242750 bm!659526) bm!659523))

(assert (= (or b!7242750 bm!659524) bm!659527))

(assert (= (or b!7242752 bm!659527) bm!659525))

(assert (= (or b!7242752 b!7242750) bm!659522))

(declare-fun m!7917756 () Bool)

(assert (=> b!7242748 m!7917756))

(declare-fun m!7917758 () Bool)

(assert (=> bm!659525 m!7917758))

(declare-fun m!7917760 () Bool)

(assert (=> bm!659522 m!7917760))

(declare-fun m!7917762 () Bool)

(assert (=> b!7242747 m!7917762))

(declare-fun m!7917764 () Bool)

(assert (=> bm!659523 m!7917764))

(assert (=> b!7242665 d!2250337))

(declare-fun d!2250341 () Bool)

(declare-fun forall!17415 (List!70325 Int) Bool)

(assert (=> d!2250341 (forall!17415 (++!16436 (exprs!8016 ct1!232) (exprs!8016 ct2!328)) lambda!442308)))

(declare-fun lt!2580757 () Unit!163738)

(declare-fun choose!55814 (List!70325 List!70325 Int) Unit!163738)

(assert (=> d!2250341 (= lt!2580757 (choose!55814 (exprs!8016 ct1!232) (exprs!8016 ct2!328) lambda!442308))))

(assert (=> d!2250341 (forall!17415 (exprs!8016 ct1!232) lambda!442308)))

(assert (=> d!2250341 (= (lemmaConcatPreservesForall!1385 (exprs!8016 ct1!232) (exprs!8016 ct2!328) lambda!442308) lt!2580757)))

(declare-fun bs!1904447 () Bool)

(assert (= bs!1904447 d!2250341))

(assert (=> bs!1904447 m!7917654))

(assert (=> bs!1904447 m!7917654))

(declare-fun m!7917772 () Bool)

(assert (=> bs!1904447 m!7917772))

(declare-fun m!7917774 () Bool)

(assert (=> bs!1904447 m!7917774))

(declare-fun m!7917776 () Bool)

(assert (=> bs!1904447 m!7917776))

(assert (=> b!7242665 d!2250341))

(declare-fun b!7242775 () Bool)

(declare-fun e!4342497 () (Set Context!15032))

(declare-fun call!659537 () (Set Context!15032))

(assert (=> b!7242775 (= e!4342497 call!659537)))

(declare-fun b!7242776 () Bool)

(declare-fun e!4342496 () Bool)

(assert (=> b!7242776 (= e!4342496 (nullable!7869 (h!76649 (exprs!8016 lt!2580687))))))

(declare-fun b!7242777 () Bool)

(declare-fun e!4342498 () (Set Context!15032))

(assert (=> b!7242777 (= e!4342498 (set.union call!659537 (derivationStepZipperUp!2430 (Context!15033 (t!384376 (exprs!8016 lt!2580687))) (h!76650 s1!1971))))))

(declare-fun b!7242778 () Bool)

(assert (=> b!7242778 (= e!4342498 e!4342497)))

(declare-fun c!1345117 () Bool)

(assert (=> b!7242778 (= c!1345117 (is-Cons!70201 (exprs!8016 lt!2580687)))))

(declare-fun bm!659532 () Bool)

(assert (=> bm!659532 (= call!659537 (derivationStepZipperDown!2600 (h!76649 (exprs!8016 lt!2580687)) (Context!15033 (t!384376 (exprs!8016 lt!2580687))) (h!76650 s1!1971)))))

(declare-fun b!7242779 () Bool)

(assert (=> b!7242779 (= e!4342497 (as set.empty (Set Context!15032)))))

(declare-fun d!2250345 () Bool)

(declare-fun c!1345118 () Bool)

(assert (=> d!2250345 (= c!1345118 e!4342496)))

(declare-fun res!2938062 () Bool)

(assert (=> d!2250345 (=> (not res!2938062) (not e!4342496))))

(assert (=> d!2250345 (= res!2938062 (is-Cons!70201 (exprs!8016 lt!2580687)))))

(assert (=> d!2250345 (= (derivationStepZipperUp!2430 lt!2580687 (h!76650 s1!1971)) e!4342498)))

(assert (= (and d!2250345 res!2938062) b!7242776))

(assert (= (and d!2250345 c!1345118) b!7242777))

(assert (= (and d!2250345 (not c!1345118)) b!7242778))

(assert (= (and b!7242778 c!1345117) b!7242775))

(assert (= (and b!7242778 (not c!1345117)) b!7242779))

(assert (= (or b!7242777 b!7242775) bm!659532))

(declare-fun m!7917784 () Bool)

(assert (=> b!7242776 m!7917784))

(declare-fun m!7917786 () Bool)

(assert (=> b!7242777 m!7917786))

(declare-fun m!7917788 () Bool)

(assert (=> bm!659532 m!7917788))

(assert (=> b!7242665 d!2250345))

(declare-fun d!2250351 () Bool)

(declare-fun c!1345121 () Bool)

(declare-fun isEmpty!40445 (List!70326) Bool)

(assert (=> d!2250351 (= c!1345121 (isEmpty!40445 (t!384377 s1!1971)))))

(declare-fun e!4342501 () Bool)

(assert (=> d!2250351 (= (matchZipper!3486 lt!2580668 (t!384377 s1!1971)) e!4342501)))

(declare-fun b!7242784 () Bool)

(declare-fun nullableZipper!2866 ((Set Context!15032)) Bool)

(assert (=> b!7242784 (= e!4342501 (nullableZipper!2866 lt!2580668))))

(declare-fun b!7242785 () Bool)

(declare-fun head!14853 (List!70326) C!37426)

(declare-fun tail!14238 (List!70326) List!70326)

(assert (=> b!7242785 (= e!4342501 (matchZipper!3486 (derivationStepZipper!3364 lt!2580668 (head!14853 (t!384377 s1!1971))) (tail!14238 (t!384377 s1!1971))))))

(assert (= (and d!2250351 c!1345121) b!7242784))

(assert (= (and d!2250351 (not c!1345121)) b!7242785))

(declare-fun m!7917796 () Bool)

(assert (=> d!2250351 m!7917796))

(declare-fun m!7917798 () Bool)

(assert (=> b!7242784 m!7917798))

(declare-fun m!7917800 () Bool)

(assert (=> b!7242785 m!7917800))

(assert (=> b!7242785 m!7917800))

(declare-fun m!7917802 () Bool)

(assert (=> b!7242785 m!7917802))

(declare-fun m!7917804 () Bool)

(assert (=> b!7242785 m!7917804))

(assert (=> b!7242785 m!7917802))

(assert (=> b!7242785 m!7917804))

(declare-fun m!7917806 () Bool)

(assert (=> b!7242785 m!7917806))

(assert (=> b!7242659 d!2250351))

(declare-fun bs!1904449 () Bool)

(declare-fun d!2250357 () Bool)

(assert (= bs!1904449 (and d!2250357 b!7242660)))

(declare-fun lambda!442338 () Int)

(assert (=> bs!1904449 (= lambda!442338 lambda!442310)))

(assert (=> d!2250357 true))

(assert (=> d!2250357 (= (derivationStepZipper!3364 lt!2580677 (h!76650 s1!1971)) (flatMap!2764 lt!2580677 lambda!442338))))

(declare-fun bs!1904450 () Bool)

(assert (= bs!1904450 d!2250357))

(declare-fun m!7917808 () Bool)

(assert (=> bs!1904450 m!7917808))

(assert (=> b!7242659 d!2250357))

(declare-fun d!2250359 () Bool)

(declare-fun lt!2580763 () Bool)

(assert (=> d!2250359 (= lt!2580763 (exists!4272 (toList!11422 lt!2580668) lambda!442309))))

(declare-fun choose!55815 ((Set Context!15032) Int) Bool)

(assert (=> d!2250359 (= lt!2580763 (choose!55815 lt!2580668 lambda!442309))))

(assert (=> d!2250359 (= (exists!4271 lt!2580668 lambda!442309) lt!2580763)))

(declare-fun bs!1904451 () Bool)

(assert (= bs!1904451 d!2250359))

(assert (=> bs!1904451 m!7917640))

(assert (=> bs!1904451 m!7917640))

(declare-fun m!7917810 () Bool)

(assert (=> bs!1904451 m!7917810))

(declare-fun m!7917812 () Bool)

(assert (=> bs!1904451 m!7917812))

(assert (=> b!7242664 d!2250359))

(declare-fun bs!1904452 () Bool)

(declare-fun d!2250361 () Bool)

(assert (= bs!1904452 (and d!2250361 b!7242664)))

(declare-fun lambda!442341 () Int)

(assert (=> bs!1904452 (not (= lambda!442341 lambda!442309))))

(assert (=> d!2250361 true))

(declare-fun order!28907 () Int)

(declare-fun dynLambda!28652 (Int Int) Int)

(assert (=> d!2250361 (< (dynLambda!28652 order!28907 lambda!442309) (dynLambda!28652 order!28907 lambda!442341))))

(declare-fun forall!17416 (List!70327 Int) Bool)

(assert (=> d!2250361 (= (exists!4272 lt!2580678 lambda!442309) (not (forall!17416 lt!2580678 lambda!442341)))))

(declare-fun bs!1904453 () Bool)

(assert (= bs!1904453 d!2250361))

(declare-fun m!7917814 () Bool)

(assert (=> bs!1904453 m!7917814))

(assert (=> b!7242664 d!2250361))

(declare-fun bs!1904454 () Bool)

(declare-fun d!2250363 () Bool)

(assert (= bs!1904454 (and d!2250363 b!7242664)))

(declare-fun lambda!442344 () Int)

(assert (=> bs!1904454 (= lambda!442344 lambda!442309)))

(declare-fun bs!1904455 () Bool)

(assert (= bs!1904455 (and d!2250363 d!2250361)))

(assert (=> bs!1904455 (not (= lambda!442344 lambda!442341))))

(assert (=> d!2250363 true))

(assert (=> d!2250363 (exists!4272 lt!2580678 lambda!442344)))

(declare-fun lt!2580766 () Unit!163738)

(declare-fun choose!55816 (List!70327 List!70326) Unit!163738)

(assert (=> d!2250363 (= lt!2580766 (choose!55816 lt!2580678 (t!384377 s1!1971)))))

(declare-fun content!14507 (List!70327) (Set Context!15032))

(assert (=> d!2250363 (matchZipper!3486 (content!14507 lt!2580678) (t!384377 s1!1971))))

(assert (=> d!2250363 (= (lemmaZipperMatchesExistsMatchingContext!703 lt!2580678 (t!384377 s1!1971)) lt!2580766)))

(declare-fun bs!1904456 () Bool)

(assert (= bs!1904456 d!2250363))

(declare-fun m!7917816 () Bool)

(assert (=> bs!1904456 m!7917816))

(declare-fun m!7917818 () Bool)

(assert (=> bs!1904456 m!7917818))

(declare-fun m!7917820 () Bool)

(assert (=> bs!1904456 m!7917820))

(assert (=> bs!1904456 m!7917820))

(declare-fun m!7917822 () Bool)

(assert (=> bs!1904456 m!7917822))

(assert (=> b!7242664 d!2250363))

(declare-fun d!2250365 () Bool)

(declare-fun e!4342516 () Bool)

(assert (=> d!2250365 e!4342516))

(declare-fun res!2938067 () Bool)

(assert (=> d!2250365 (=> (not res!2938067) (not e!4342516))))

(declare-fun lt!2580769 () List!70327)

(declare-fun noDuplicate!2959 (List!70327) Bool)

(assert (=> d!2250365 (= res!2938067 (noDuplicate!2959 lt!2580769))))

(declare-fun choose!55817 ((Set Context!15032)) List!70327)

(assert (=> d!2250365 (= lt!2580769 (choose!55817 lt!2580668))))

(assert (=> d!2250365 (= (toList!11422 lt!2580668) lt!2580769)))

(declare-fun b!7242814 () Bool)

(assert (=> b!7242814 (= e!4342516 (= (content!14507 lt!2580769) lt!2580668))))

(assert (= (and d!2250365 res!2938067) b!7242814))

(declare-fun m!7917824 () Bool)

(assert (=> d!2250365 m!7917824))

(declare-fun m!7917826 () Bool)

(assert (=> d!2250365 m!7917826))

(declare-fun m!7917828 () Bool)

(assert (=> b!7242814 m!7917828))

(assert (=> b!7242664 d!2250365))

(declare-fun b!7242815 () Bool)

(declare-fun e!4342518 () (Set Context!15032))

(declare-fun call!659546 () (Set Context!15032))

(assert (=> b!7242815 (= e!4342518 call!659546)))

(declare-fun b!7242816 () Bool)

(declare-fun e!4342517 () Bool)

(assert (=> b!7242816 (= e!4342517 (nullable!7869 (h!76649 (exprs!8016 lt!2580686))))))

(declare-fun b!7242817 () Bool)

(declare-fun e!4342519 () (Set Context!15032))

(assert (=> b!7242817 (= e!4342519 (set.union call!659546 (derivationStepZipperUp!2430 (Context!15033 (t!384376 (exprs!8016 lt!2580686))) (h!76650 s1!1971))))))

(declare-fun b!7242818 () Bool)

(assert (=> b!7242818 (= e!4342519 e!4342518)))

(declare-fun c!1345136 () Bool)

(assert (=> b!7242818 (= c!1345136 (is-Cons!70201 (exprs!8016 lt!2580686)))))

(declare-fun bm!659541 () Bool)

(assert (=> bm!659541 (= call!659546 (derivationStepZipperDown!2600 (h!76649 (exprs!8016 lt!2580686)) (Context!15033 (t!384376 (exprs!8016 lt!2580686))) (h!76650 s1!1971)))))

(declare-fun b!7242819 () Bool)

(assert (=> b!7242819 (= e!4342518 (as set.empty (Set Context!15032)))))

(declare-fun d!2250367 () Bool)

(declare-fun c!1345137 () Bool)

(assert (=> d!2250367 (= c!1345137 e!4342517)))

(declare-fun res!2938068 () Bool)

(assert (=> d!2250367 (=> (not res!2938068) (not e!4342517))))

(assert (=> d!2250367 (= res!2938068 (is-Cons!70201 (exprs!8016 lt!2580686)))))

(assert (=> d!2250367 (= (derivationStepZipperUp!2430 lt!2580686 (h!76650 s1!1971)) e!4342519)))

(assert (= (and d!2250367 res!2938068) b!7242816))

(assert (= (and d!2250367 c!1345137) b!7242817))

(assert (= (and d!2250367 (not c!1345137)) b!7242818))

(assert (= (and b!7242818 c!1345136) b!7242815))

(assert (= (and b!7242818 (not c!1345136)) b!7242819))

(assert (= (or b!7242817 b!7242815) bm!659541))

(declare-fun m!7917830 () Bool)

(assert (=> b!7242816 m!7917830))

(declare-fun m!7917832 () Bool)

(assert (=> b!7242817 m!7917832))

(declare-fun m!7917834 () Bool)

(assert (=> bm!659541 m!7917834))

(assert (=> b!7242661 d!2250367))

(declare-fun d!2250369 () Bool)

(declare-fun c!1345138 () Bool)

(assert (=> d!2250369 (= c!1345138 (isEmpty!40445 s1!1971))))

(declare-fun e!4342520 () Bool)

(assert (=> d!2250369 (= (matchZipper!3486 lt!2580677 s1!1971) e!4342520)))

(declare-fun b!7242820 () Bool)

(assert (=> b!7242820 (= e!4342520 (nullableZipper!2866 lt!2580677))))

(declare-fun b!7242821 () Bool)

(assert (=> b!7242821 (= e!4342520 (matchZipper!3486 (derivationStepZipper!3364 lt!2580677 (head!14853 s1!1971)) (tail!14238 s1!1971)))))

(assert (= (and d!2250369 c!1345138) b!7242820))

(assert (= (and d!2250369 (not c!1345138)) b!7242821))

(declare-fun m!7917836 () Bool)

(assert (=> d!2250369 m!7917836))

(declare-fun m!7917838 () Bool)

(assert (=> b!7242820 m!7917838))

(declare-fun m!7917840 () Bool)

(assert (=> b!7242821 m!7917840))

(assert (=> b!7242821 m!7917840))

(declare-fun m!7917842 () Bool)

(assert (=> b!7242821 m!7917842))

(declare-fun m!7917844 () Bool)

(assert (=> b!7242821 m!7917844))

(assert (=> b!7242821 m!7917842))

(assert (=> b!7242821 m!7917844))

(declare-fun m!7917846 () Bool)

(assert (=> b!7242821 m!7917846))

(assert (=> start!703938 d!2250369))

(declare-fun bs!1904457 () Bool)

(declare-fun d!2250371 () Bool)

(assert (= bs!1904457 (and d!2250371 b!7242657)))

(declare-fun lambda!442347 () Int)

(assert (=> bs!1904457 (= lambda!442347 lambda!442308)))

(assert (=> d!2250371 (= (inv!89451 ct1!232) (forall!17415 (exprs!8016 ct1!232) lambda!442347))))

(declare-fun bs!1904458 () Bool)

(assert (= bs!1904458 d!2250371))

(declare-fun m!7917848 () Bool)

(assert (=> bs!1904458 m!7917848))

(assert (=> start!703938 d!2250371))

(declare-fun bs!1904459 () Bool)

(declare-fun d!2250373 () Bool)

(assert (= bs!1904459 (and d!2250373 b!7242657)))

(declare-fun lambda!442348 () Int)

(assert (=> bs!1904459 (= lambda!442348 lambda!442308)))

(declare-fun bs!1904460 () Bool)

(assert (= bs!1904460 (and d!2250373 d!2250371)))

(assert (=> bs!1904460 (= lambda!442348 lambda!442347)))

(assert (=> d!2250373 (= (inv!89451 ct2!328) (forall!17415 (exprs!8016 ct2!328) lambda!442348))))

(declare-fun bs!1904461 () Bool)

(assert (= bs!1904461 d!2250373))

(declare-fun m!7917850 () Bool)

(assert (=> bs!1904461 m!7917850))

(assert (=> start!703938 d!2250373))

(declare-fun b!7242822 () Bool)

(declare-fun e!4342524 () (Set Context!15032))

(assert (=> b!7242822 (= e!4342524 (as set.empty (Set Context!15032)))))

(declare-fun b!7242823 () Bool)

(declare-fun c!1345139 () Bool)

(declare-fun e!4342522 () Bool)

(assert (=> b!7242823 (= c!1345139 e!4342522)))

(declare-fun res!2938069 () Bool)

(assert (=> b!7242823 (=> (not res!2938069) (not e!4342522))))

(assert (=> b!7242823 (= res!2938069 (is-Concat!27421 (h!76649 (exprs!8016 ct1!232))))))

(declare-fun e!4342525 () (Set Context!15032))

(declare-fun e!4342526 () (Set Context!15032))

(assert (=> b!7242823 (= e!4342525 e!4342526)))

(declare-fun b!7242824 () Bool)

(declare-fun c!1345142 () Bool)

(assert (=> b!7242824 (= c!1345142 (is-Star!18576 (h!76649 (exprs!8016 ct1!232))))))

(declare-fun e!4342523 () (Set Context!15032))

(assert (=> b!7242824 (= e!4342523 e!4342524)))

(declare-fun c!1345143 () Bool)

(declare-fun call!659554 () (Set Context!15032))

(declare-fun call!659556 () List!70325)

(declare-fun bm!659546 () Bool)

(assert (=> bm!659546 (= call!659554 (derivationStepZipperDown!2600 (ite c!1345143 (regOne!37665 (h!76649 (exprs!8016 ct1!232))) (regOne!37664 (h!76649 (exprs!8016 ct1!232)))) (ite c!1345143 (Context!15033 (tail!14236 lt!2580674)) (Context!15033 call!659556)) (h!76650 s1!1971)))))

(declare-fun d!2250375 () Bool)

(declare-fun c!1345140 () Bool)

(assert (=> d!2250375 (= c!1345140 (and (is-ElementMatch!18576 (h!76649 (exprs!8016 ct1!232))) (= (c!1345078 (h!76649 (exprs!8016 ct1!232))) (h!76650 s1!1971))))))

(declare-fun e!4342521 () (Set Context!15032))

(assert (=> d!2250375 (= (derivationStepZipperDown!2600 (h!76649 (exprs!8016 ct1!232)) (Context!15033 (tail!14236 lt!2580674)) (h!76650 s1!1971)) e!4342521)))

(declare-fun b!7242825 () Bool)

(assert (=> b!7242825 (= e!4342521 (set.insert (Context!15033 (tail!14236 lt!2580674)) (as set.empty (Set Context!15032))))))

(declare-fun b!7242826 () Bool)

(assert (=> b!7242826 (= e!4342522 (nullable!7869 (regOne!37664 (h!76649 (exprs!8016 ct1!232)))))))

(declare-fun b!7242827 () Bool)

(assert (=> b!7242827 (= e!4342526 e!4342523)))

(declare-fun c!1345141 () Bool)

(assert (=> b!7242827 (= c!1345141 (is-Concat!27421 (h!76649 (exprs!8016 ct1!232))))))

(declare-fun b!7242828 () Bool)

(declare-fun call!659555 () (Set Context!15032))

(assert (=> b!7242828 (= e!4342526 (set.union call!659554 call!659555))))

(declare-fun b!7242829 () Bool)

(declare-fun call!659552 () (Set Context!15032))

(assert (=> b!7242829 (= e!4342524 call!659552)))

(declare-fun bm!659547 () Bool)

(assert (=> bm!659547 (= call!659556 ($colon$colon!2894 (exprs!8016 (Context!15033 (tail!14236 lt!2580674))) (ite (or c!1345139 c!1345141) (regTwo!37664 (h!76649 (exprs!8016 ct1!232))) (h!76649 (exprs!8016 ct1!232)))))))

(declare-fun b!7242830 () Bool)

(declare-fun call!659553 () (Set Context!15032))

(assert (=> b!7242830 (= e!4342525 (set.union call!659554 call!659553))))

(declare-fun bm!659548 () Bool)

(assert (=> bm!659548 (= call!659552 call!659555)))

(declare-fun b!7242831 () Bool)

(assert (=> b!7242831 (= e!4342523 call!659552)))

(declare-fun bm!659549 () Bool)

(declare-fun call!659551 () List!70325)

(assert (=> bm!659549 (= call!659553 (derivationStepZipperDown!2600 (ite c!1345143 (regTwo!37665 (h!76649 (exprs!8016 ct1!232))) (ite c!1345139 (regTwo!37664 (h!76649 (exprs!8016 ct1!232))) (ite c!1345141 (regOne!37664 (h!76649 (exprs!8016 ct1!232))) (reg!18905 (h!76649 (exprs!8016 ct1!232)))))) (ite (or c!1345143 c!1345139) (Context!15033 (tail!14236 lt!2580674)) (Context!15033 call!659551)) (h!76650 s1!1971)))))

(declare-fun bm!659550 () Bool)

(assert (=> bm!659550 (= call!659551 call!659556)))

(declare-fun bm!659551 () Bool)

(assert (=> bm!659551 (= call!659555 call!659553)))

(declare-fun b!7242832 () Bool)

(assert (=> b!7242832 (= e!4342521 e!4342525)))

(assert (=> b!7242832 (= c!1345143 (is-Union!18576 (h!76649 (exprs!8016 ct1!232))))))

(assert (= (and d!2250375 c!1345140) b!7242825))

(assert (= (and d!2250375 (not c!1345140)) b!7242832))

(assert (= (and b!7242832 c!1345143) b!7242830))

(assert (= (and b!7242832 (not c!1345143)) b!7242823))

(assert (= (and b!7242823 res!2938069) b!7242826))

(assert (= (and b!7242823 c!1345139) b!7242828))

(assert (= (and b!7242823 (not c!1345139)) b!7242827))

(assert (= (and b!7242827 c!1345141) b!7242831))

(assert (= (and b!7242827 (not c!1345141)) b!7242824))

(assert (= (and b!7242824 c!1345142) b!7242829))

(assert (= (and b!7242824 (not c!1345142)) b!7242822))

(assert (= (or b!7242831 b!7242829) bm!659550))

(assert (= (or b!7242831 b!7242829) bm!659548))

(assert (= (or b!7242828 bm!659550) bm!659547))

(assert (= (or b!7242828 bm!659548) bm!659551))

(assert (= (or b!7242830 bm!659551) bm!659549))

(assert (= (or b!7242830 b!7242828) bm!659546))

(assert (=> b!7242826 m!7917756))

(declare-fun m!7917852 () Bool)

(assert (=> bm!659549 m!7917852))

(declare-fun m!7917854 () Bool)

(assert (=> bm!659546 m!7917854))

(declare-fun m!7917856 () Bool)

(assert (=> b!7242825 m!7917856))

(declare-fun m!7917858 () Bool)

(assert (=> bm!659547 m!7917858))

(assert (=> b!7242660 d!2250375))

(declare-fun d!2250377 () Bool)

(declare-fun choose!55818 ((Set Context!15032) Int) (Set Context!15032))

(assert (=> d!2250377 (= (flatMap!2764 lt!2580670 lambda!442310) (choose!55818 lt!2580670 lambda!442310))))

(declare-fun bs!1904462 () Bool)

(assert (= bs!1904462 d!2250377))

(declare-fun m!7917860 () Bool)

(assert (=> bs!1904462 m!7917860))

(assert (=> b!7242660 d!2250377))

(declare-fun d!2250379 () Bool)

(declare-fun dynLambda!28653 (Int Context!15032) (Set Context!15032))

(assert (=> d!2250379 (= (flatMap!2764 lt!2580677 lambda!442310) (dynLambda!28653 lambda!442310 ct1!232))))

(declare-fun lt!2580772 () Unit!163738)

(declare-fun choose!55819 ((Set Context!15032) Context!15032 Int) Unit!163738)

(assert (=> d!2250379 (= lt!2580772 (choose!55819 lt!2580677 ct1!232 lambda!442310))))

(assert (=> d!2250379 (= lt!2580677 (set.insert ct1!232 (as set.empty (Set Context!15032))))))

(assert (=> d!2250379 (= (lemmaFlatMapOnSingletonSet!2187 lt!2580677 ct1!232 lambda!442310) lt!2580772)))

(declare-fun b_lambda!277887 () Bool)

(assert (=> (not b_lambda!277887) (not d!2250379)))

(declare-fun bs!1904463 () Bool)

(assert (= bs!1904463 d!2250379))

(assert (=> bs!1904463 m!7917674))

(declare-fun m!7917862 () Bool)

(assert (=> bs!1904463 m!7917862))

(declare-fun m!7917864 () Bool)

(assert (=> bs!1904463 m!7917864))

(assert (=> bs!1904463 m!7917678))

(assert (=> b!7242660 d!2250379))

(declare-fun d!2250381 () Bool)

(declare-fun nullableFct!3084 (Regex!18576) Bool)

(assert (=> d!2250381 (= (nullable!7869 (h!76649 (exprs!8016 ct1!232))) (nullableFct!3084 (h!76649 (exprs!8016 ct1!232))))))

(declare-fun bs!1904464 () Bool)

(assert (= bs!1904464 d!2250381))

(declare-fun m!7917866 () Bool)

(assert (=> bs!1904464 m!7917866))

(assert (=> b!7242660 d!2250381))

(declare-fun d!2250383 () Bool)

(assert (=> d!2250383 (= (tail!14236 lt!2580674) (t!384376 lt!2580674))))

(assert (=> b!7242660 d!2250383))

(declare-fun b!7242833 () Bool)

(declare-fun e!4342528 () (Set Context!15032))

(declare-fun call!659557 () (Set Context!15032))

(assert (=> b!7242833 (= e!4342528 call!659557)))

(declare-fun b!7242834 () Bool)

(declare-fun e!4342527 () Bool)

(assert (=> b!7242834 (= e!4342527 (nullable!7869 (h!76649 (exprs!8016 ct1!232))))))

(declare-fun e!4342529 () (Set Context!15032))

(declare-fun b!7242835 () Bool)

(assert (=> b!7242835 (= e!4342529 (set.union call!659557 (derivationStepZipperUp!2430 (Context!15033 (t!384376 (exprs!8016 ct1!232))) (h!76650 s1!1971))))))

(declare-fun b!7242836 () Bool)

(assert (=> b!7242836 (= e!4342529 e!4342528)))

(declare-fun c!1345144 () Bool)

(assert (=> b!7242836 (= c!1345144 (is-Cons!70201 (exprs!8016 ct1!232)))))

(declare-fun bm!659552 () Bool)

(assert (=> bm!659552 (= call!659557 (derivationStepZipperDown!2600 (h!76649 (exprs!8016 ct1!232)) (Context!15033 (t!384376 (exprs!8016 ct1!232))) (h!76650 s1!1971)))))

(declare-fun b!7242837 () Bool)

(assert (=> b!7242837 (= e!4342528 (as set.empty (Set Context!15032)))))

(declare-fun d!2250385 () Bool)

(declare-fun c!1345145 () Bool)

(assert (=> d!2250385 (= c!1345145 e!4342527)))

(declare-fun res!2938070 () Bool)

(assert (=> d!2250385 (=> (not res!2938070) (not e!4342527))))

(assert (=> d!2250385 (= res!2938070 (is-Cons!70201 (exprs!8016 ct1!232)))))

(assert (=> d!2250385 (= (derivationStepZipperUp!2430 ct1!232 (h!76650 s1!1971)) e!4342529)))

(assert (= (and d!2250385 res!2938070) b!7242834))

(assert (= (and d!2250385 c!1345145) b!7242835))

(assert (= (and d!2250385 (not c!1345145)) b!7242836))

(assert (= (and b!7242836 c!1345144) b!7242833))

(assert (= (and b!7242836 (not c!1345144)) b!7242837))

(assert (= (or b!7242835 b!7242833) bm!659552))

(assert (=> b!7242834 m!7917664))

(declare-fun m!7917868 () Bool)

(assert (=> b!7242835 m!7917868))

(declare-fun m!7917870 () Bool)

(assert (=> bm!659552 m!7917870))

(assert (=> b!7242660 d!2250385))

(assert (=> b!7242660 d!2250341))

(assert (=> b!7242660 d!2250345))

(declare-fun d!2250387 () Bool)

(assert (=> d!2250387 (= (flatMap!2764 lt!2580677 lambda!442310) (choose!55818 lt!2580677 lambda!442310))))

(declare-fun bs!1904465 () Bool)

(assert (= bs!1904465 d!2250387))

(declare-fun m!7917872 () Bool)

(assert (=> bs!1904465 m!7917872))

(assert (=> b!7242660 d!2250387))

(declare-fun d!2250389 () Bool)

(assert (=> d!2250389 (= (flatMap!2764 lt!2580670 lambda!442310) (dynLambda!28653 lambda!442310 lt!2580687))))

(declare-fun lt!2580773 () Unit!163738)

(assert (=> d!2250389 (= lt!2580773 (choose!55819 lt!2580670 lt!2580687 lambda!442310))))

(assert (=> d!2250389 (= lt!2580670 (set.insert lt!2580687 (as set.empty (Set Context!15032))))))

(assert (=> d!2250389 (= (lemmaFlatMapOnSingletonSet!2187 lt!2580670 lt!2580687 lambda!442310) lt!2580773)))

(declare-fun b_lambda!277889 () Bool)

(assert (=> (not b_lambda!277889) (not d!2250389)))

(declare-fun bs!1904466 () Bool)

(assert (= bs!1904466 d!2250389))

(assert (=> bs!1904466 m!7917662))

(declare-fun m!7917874 () Bool)

(assert (=> bs!1904466 m!7917874))

(declare-fun m!7917876 () Bool)

(assert (=> bs!1904466 m!7917876))

(assert (=> bs!1904466 m!7917652))

(assert (=> b!7242660 d!2250389))

(declare-fun b!7242857 () Bool)

(declare-fun e!4342540 () List!70325)

(assert (=> b!7242857 (= e!4342540 (exprs!8016 ct2!328))))

(declare-fun d!2250391 () Bool)

(declare-fun e!4342541 () Bool)

(assert (=> d!2250391 e!4342541))

(declare-fun res!2938077 () Bool)

(assert (=> d!2250391 (=> (not res!2938077) (not e!4342541))))

(declare-fun lt!2580776 () List!70325)

(declare-fun content!14508 (List!70325) (Set Regex!18576))

(assert (=> d!2250391 (= res!2938077 (= (content!14508 lt!2580776) (set.union (content!14508 (exprs!8016 ct1!232)) (content!14508 (exprs!8016 ct2!328)))))))

(assert (=> d!2250391 (= lt!2580776 e!4342540)))

(declare-fun c!1345153 () Bool)

(assert (=> d!2250391 (= c!1345153 (is-Nil!70201 (exprs!8016 ct1!232)))))

(assert (=> d!2250391 (= (++!16436 (exprs!8016 ct1!232) (exprs!8016 ct2!328)) lt!2580776)))

(declare-fun b!7242858 () Bool)

(assert (=> b!7242858 (= e!4342540 (Cons!70201 (h!76649 (exprs!8016 ct1!232)) (++!16436 (t!384376 (exprs!8016 ct1!232)) (exprs!8016 ct2!328))))))

(declare-fun b!7242860 () Bool)

(assert (=> b!7242860 (= e!4342541 (or (not (= (exprs!8016 ct2!328) Nil!70201)) (= lt!2580776 (exprs!8016 ct1!232))))))

(declare-fun b!7242859 () Bool)

(declare-fun res!2938076 () Bool)

(assert (=> b!7242859 (=> (not res!2938076) (not e!4342541))))

(declare-fun size!41641 (List!70325) Int)

(assert (=> b!7242859 (= res!2938076 (= (size!41641 lt!2580776) (+ (size!41641 (exprs!8016 ct1!232)) (size!41641 (exprs!8016 ct2!328)))))))

(assert (= (and d!2250391 c!1345153) b!7242857))

(assert (= (and d!2250391 (not c!1345153)) b!7242858))

(assert (= (and d!2250391 res!2938077) b!7242859))

(assert (= (and b!7242859 res!2938076) b!7242860))

(declare-fun m!7917884 () Bool)

(assert (=> d!2250391 m!7917884))

(declare-fun m!7917886 () Bool)

(assert (=> d!2250391 m!7917886))

(declare-fun m!7917890 () Bool)

(assert (=> d!2250391 m!7917890))

(declare-fun m!7917892 () Bool)

(assert (=> b!7242858 m!7917892))

(declare-fun m!7917894 () Bool)

(assert (=> b!7242859 m!7917894))

(declare-fun m!7917896 () Bool)

(assert (=> b!7242859 m!7917896))

(declare-fun m!7917900 () Bool)

(assert (=> b!7242859 m!7917900))

(assert (=> b!7242657 d!2250391))

(assert (=> b!7242657 d!2250341))

(declare-fun d!2250393 () Bool)

(declare-fun c!1345154 () Bool)

(assert (=> d!2250393 (= c!1345154 (isEmpty!40445 s2!1849))))

(declare-fun e!4342542 () Bool)

(assert (=> d!2250393 (= (matchZipper!3486 (set.insert ct2!328 (as set.empty (Set Context!15032))) s2!1849) e!4342542)))

(declare-fun b!7242861 () Bool)

(assert (=> b!7242861 (= e!4342542 (nullableZipper!2866 (set.insert ct2!328 (as set.empty (Set Context!15032)))))))

(declare-fun b!7242862 () Bool)

(assert (=> b!7242862 (= e!4342542 (matchZipper!3486 (derivationStepZipper!3364 (set.insert ct2!328 (as set.empty (Set Context!15032))) (head!14853 s2!1849)) (tail!14238 s2!1849)))))

(assert (= (and d!2250393 c!1345154) b!7242861))

(assert (= (and d!2250393 (not c!1345154)) b!7242862))

(declare-fun m!7917902 () Bool)

(assert (=> d!2250393 m!7917902))

(assert (=> b!7242861 m!7917612))

(declare-fun m!7917904 () Bool)

(assert (=> b!7242861 m!7917904))

(declare-fun m!7917906 () Bool)

(assert (=> b!7242862 m!7917906))

(assert (=> b!7242862 m!7917612))

(assert (=> b!7242862 m!7917906))

(declare-fun m!7917908 () Bool)

(assert (=> b!7242862 m!7917908))

(declare-fun m!7917910 () Bool)

(assert (=> b!7242862 m!7917910))

(assert (=> b!7242862 m!7917908))

(assert (=> b!7242862 m!7917910))

(declare-fun m!7917912 () Bool)

(assert (=> b!7242862 m!7917912))

(assert (=> b!7242667 d!2250393))

(declare-fun bs!1904467 () Bool)

(declare-fun d!2250397 () Bool)

(assert (= bs!1904467 (and d!2250397 b!7242657)))

(declare-fun lambda!442351 () Int)

(assert (=> bs!1904467 (= lambda!442351 lambda!442308)))

(declare-fun bs!1904468 () Bool)

(assert (= bs!1904468 (and d!2250397 d!2250371)))

(assert (=> bs!1904468 (= lambda!442351 lambda!442347)))

(declare-fun bs!1904469 () Bool)

(assert (= bs!1904469 (and d!2250397 d!2250373)))

(assert (=> bs!1904469 (= lambda!442351 lambda!442348)))

(assert (=> d!2250397 (matchZipper!3486 (set.insert (Context!15033 (++!16436 (exprs!8016 lt!2580672) (exprs!8016 ct2!328))) (as set.empty (Set Context!15032))) (++!16437 (t!384377 s1!1971) s2!1849))))

(declare-fun lt!2580782 () Unit!163738)

(assert (=> d!2250397 (= lt!2580782 (lemmaConcatPreservesForall!1385 (exprs!8016 lt!2580672) (exprs!8016 ct2!328) lambda!442351))))

(declare-fun lt!2580781 () Unit!163738)

(declare-fun choose!55820 (Context!15032 Context!15032 List!70326 List!70326) Unit!163738)

(assert (=> d!2250397 (= lt!2580781 (choose!55820 lt!2580672 ct2!328 (t!384377 s1!1971) s2!1849))))

(assert (=> d!2250397 (matchZipper!3486 (set.insert lt!2580672 (as set.empty (Set Context!15032))) (t!384377 s1!1971))))

(assert (=> d!2250397 (= (lemmaConcatenateContextMatchesConcatOfStrings!349 lt!2580672 ct2!328 (t!384377 s1!1971) s2!1849) lt!2580781)))

(declare-fun bs!1904470 () Bool)

(assert (= bs!1904470 d!2250397))

(declare-fun m!7917914 () Bool)

(assert (=> bs!1904470 m!7917914))

(declare-fun m!7917916 () Bool)

(assert (=> bs!1904470 m!7917916))

(assert (=> bs!1904470 m!7917616))

(assert (=> bs!1904470 m!7917618))

(assert (=> bs!1904470 m!7917620))

(declare-fun m!7917918 () Bool)

(assert (=> bs!1904470 m!7917918))

(assert (=> bs!1904470 m!7917618))

(assert (=> bs!1904470 m!7917914))

(declare-fun m!7917924 () Bool)

(assert (=> bs!1904470 m!7917924))

(assert (=> bs!1904470 m!7917616))

(assert (=> bs!1904470 m!7917626))

(assert (=> b!7242658 d!2250397))

(declare-fun d!2250399 () Bool)

(assert (=> d!2250399 (= (isEmpty!40443 (exprs!8016 ct1!232)) (is-Nil!70201 (exprs!8016 ct1!232)))))

(assert (=> b!7242658 d!2250399))

(declare-fun b!7242869 () Bool)

(declare-fun e!4342546 () List!70325)

(assert (=> b!7242869 (= e!4342546 (exprs!8016 ct2!328))))

(declare-fun d!2250401 () Bool)

(declare-fun e!4342547 () Bool)

(assert (=> d!2250401 e!4342547))

(declare-fun res!2938079 () Bool)

(assert (=> d!2250401 (=> (not res!2938079) (not e!4342547))))

(declare-fun lt!2580783 () List!70325)

(assert (=> d!2250401 (= res!2938079 (= (content!14508 lt!2580783) (set.union (content!14508 (exprs!8016 lt!2580672)) (content!14508 (exprs!8016 ct2!328)))))))

(assert (=> d!2250401 (= lt!2580783 e!4342546)))

(declare-fun c!1345158 () Bool)

(assert (=> d!2250401 (= c!1345158 (is-Nil!70201 (exprs!8016 lt!2580672)))))

(assert (=> d!2250401 (= (++!16436 (exprs!8016 lt!2580672) (exprs!8016 ct2!328)) lt!2580783)))

(declare-fun b!7242870 () Bool)

(assert (=> b!7242870 (= e!4342546 (Cons!70201 (h!76649 (exprs!8016 lt!2580672)) (++!16436 (t!384376 (exprs!8016 lt!2580672)) (exprs!8016 ct2!328))))))

(declare-fun b!7242872 () Bool)

(assert (=> b!7242872 (= e!4342547 (or (not (= (exprs!8016 ct2!328) Nil!70201)) (= lt!2580783 (exprs!8016 lt!2580672))))))

(declare-fun b!7242871 () Bool)

(declare-fun res!2938078 () Bool)

(assert (=> b!7242871 (=> (not res!2938078) (not e!4342547))))

(assert (=> b!7242871 (= res!2938078 (= (size!41641 lt!2580783) (+ (size!41641 (exprs!8016 lt!2580672)) (size!41641 (exprs!8016 ct2!328)))))))

(assert (= (and d!2250401 c!1345158) b!7242869))

(assert (= (and d!2250401 (not c!1345158)) b!7242870))

(assert (= (and d!2250401 res!2938079) b!7242871))

(assert (= (and b!7242871 res!2938078) b!7242872))

(declare-fun m!7917934 () Bool)

(assert (=> d!2250401 m!7917934))

(declare-fun m!7917936 () Bool)

(assert (=> d!2250401 m!7917936))

(assert (=> d!2250401 m!7917890))

(declare-fun m!7917938 () Bool)

(assert (=> b!7242870 m!7917938))

(declare-fun m!7917940 () Bool)

(assert (=> b!7242871 m!7917940))

(declare-fun m!7917942 () Bool)

(assert (=> b!7242871 m!7917942))

(assert (=> b!7242871 m!7917900))

(assert (=> b!7242658 d!2250401))

(declare-fun b!7242885 () Bool)

(declare-fun res!2938085 () Bool)

(declare-fun e!4342552 () Bool)

(assert (=> b!7242885 (=> (not res!2938085) (not e!4342552))))

(declare-fun lt!2580786 () List!70326)

(declare-fun size!41642 (List!70326) Int)

(assert (=> b!7242885 (= res!2938085 (= (size!41642 lt!2580786) (+ (size!41642 (t!384377 s1!1971)) (size!41642 s2!1849))))))

(declare-fun b!7242884 () Bool)

(declare-fun e!4342553 () List!70326)

(assert (=> b!7242884 (= e!4342553 (Cons!70202 (h!76650 (t!384377 s1!1971)) (++!16437 (t!384377 (t!384377 s1!1971)) s2!1849)))))

(declare-fun b!7242883 () Bool)

(assert (=> b!7242883 (= e!4342553 s2!1849)))

(declare-fun b!7242886 () Bool)

(assert (=> b!7242886 (= e!4342552 (or (not (= s2!1849 Nil!70202)) (= lt!2580786 (t!384377 s1!1971))))))

(declare-fun d!2250405 () Bool)

(assert (=> d!2250405 e!4342552))

(declare-fun res!2938084 () Bool)

(assert (=> d!2250405 (=> (not res!2938084) (not e!4342552))))

(declare-fun content!14509 (List!70326) (Set C!37426))

(assert (=> d!2250405 (= res!2938084 (= (content!14509 lt!2580786) (set.union (content!14509 (t!384377 s1!1971)) (content!14509 s2!1849))))))

(assert (=> d!2250405 (= lt!2580786 e!4342553)))

(declare-fun c!1345163 () Bool)

(assert (=> d!2250405 (= c!1345163 (is-Nil!70202 (t!384377 s1!1971)))))

(assert (=> d!2250405 (= (++!16437 (t!384377 s1!1971) s2!1849) lt!2580786)))

(assert (= (and d!2250405 c!1345163) b!7242883))

(assert (= (and d!2250405 (not c!1345163)) b!7242884))

(assert (= (and d!2250405 res!2938084) b!7242885))

(assert (= (and b!7242885 res!2938085) b!7242886))

(declare-fun m!7917946 () Bool)

(assert (=> b!7242885 m!7917946))

(declare-fun m!7917948 () Bool)

(assert (=> b!7242885 m!7917948))

(declare-fun m!7917950 () Bool)

(assert (=> b!7242885 m!7917950))

(declare-fun m!7917952 () Bool)

(assert (=> b!7242884 m!7917952))

(declare-fun m!7917954 () Bool)

(assert (=> d!2250405 m!7917954))

(declare-fun m!7917956 () Bool)

(assert (=> d!2250405 m!7917956))

(declare-fun m!7917958 () Bool)

(assert (=> d!2250405 m!7917958))

(assert (=> b!7242658 d!2250405))

(assert (=> b!7242658 d!2250385))

(declare-fun d!2250409 () Bool)

(declare-fun e!4342557 () Bool)

(assert (=> d!2250409 e!4342557))

(declare-fun res!2938088 () Bool)

(assert (=> d!2250409 (=> (not res!2938088) (not e!4342557))))

(declare-fun lt!2580789 () Context!15032)

(declare-fun dynLambda!28654 (Int Context!15032) Bool)

(assert (=> d!2250409 (= res!2938088 (dynLambda!28654 lambda!442309 lt!2580789))))

(declare-fun getWitness!2122 (List!70327 Int) Context!15032)

(assert (=> d!2250409 (= lt!2580789 (getWitness!2122 (toList!11422 lt!2580668) lambda!442309))))

(assert (=> d!2250409 (exists!4271 lt!2580668 lambda!442309)))

(assert (=> d!2250409 (= (getWitness!2120 lt!2580668 lambda!442309) lt!2580789)))

(declare-fun b!7242891 () Bool)

(assert (=> b!7242891 (= e!4342557 (set.member lt!2580789 lt!2580668))))

(assert (= (and d!2250409 res!2938088) b!7242891))

(declare-fun b_lambda!277891 () Bool)

(assert (=> (not b_lambda!277891) (not d!2250409)))

(declare-fun m!7917972 () Bool)

(assert (=> d!2250409 m!7917972))

(assert (=> d!2250409 m!7917640))

(assert (=> d!2250409 m!7917640))

(declare-fun m!7917974 () Bool)

(assert (=> d!2250409 m!7917974))

(assert (=> d!2250409 m!7917634))

(declare-fun m!7917976 () Bool)

(assert (=> b!7242891 m!7917976))

(assert (=> b!7242658 d!2250409))

(declare-fun d!2250413 () Bool)

(declare-fun c!1345165 () Bool)

(assert (=> d!2250413 (= c!1345165 (isEmpty!40445 (++!16437 (t!384377 s1!1971) s2!1849)))))

(declare-fun e!4342558 () Bool)

(assert (=> d!2250413 (= (matchZipper!3486 (set.insert (Context!15033 (++!16436 (exprs!8016 lt!2580672) (exprs!8016 ct2!328))) (as set.empty (Set Context!15032))) (++!16437 (t!384377 s1!1971) s2!1849)) e!4342558)))

(declare-fun b!7242892 () Bool)

(assert (=> b!7242892 (= e!4342558 (nullableZipper!2866 (set.insert (Context!15033 (++!16436 (exprs!8016 lt!2580672) (exprs!8016 ct2!328))) (as set.empty (Set Context!15032)))))))

(declare-fun b!7242893 () Bool)

(assert (=> b!7242893 (= e!4342558 (matchZipper!3486 (derivationStepZipper!3364 (set.insert (Context!15033 (++!16436 (exprs!8016 lt!2580672) (exprs!8016 ct2!328))) (as set.empty (Set Context!15032))) (head!14853 (++!16437 (t!384377 s1!1971) s2!1849))) (tail!14238 (++!16437 (t!384377 s1!1971) s2!1849))))))

(assert (= (and d!2250413 c!1345165) b!7242892))

(assert (= (and d!2250413 (not c!1345165)) b!7242893))

(assert (=> d!2250413 m!7917618))

(declare-fun m!7917978 () Bool)

(assert (=> d!2250413 m!7917978))

(assert (=> b!7242892 m!7917616))

(declare-fun m!7917980 () Bool)

(assert (=> b!7242892 m!7917980))

(assert (=> b!7242893 m!7917618))

(declare-fun m!7917982 () Bool)

(assert (=> b!7242893 m!7917982))

(assert (=> b!7242893 m!7917616))

(assert (=> b!7242893 m!7917982))

(declare-fun m!7917984 () Bool)

(assert (=> b!7242893 m!7917984))

(assert (=> b!7242893 m!7917618))

(declare-fun m!7917986 () Bool)

(assert (=> b!7242893 m!7917986))

(assert (=> b!7242893 m!7917984))

(assert (=> b!7242893 m!7917986))

(declare-fun m!7917988 () Bool)

(assert (=> b!7242893 m!7917988))

(assert (=> b!7242658 d!2250413))

(declare-fun d!2250415 () Bool)

(assert (=> d!2250415 (forall!17415 (++!16436 (exprs!8016 lt!2580672) (exprs!8016 ct2!328)) lambda!442308)))

(declare-fun lt!2580790 () Unit!163738)

(assert (=> d!2250415 (= lt!2580790 (choose!55814 (exprs!8016 lt!2580672) (exprs!8016 ct2!328) lambda!442308))))

(assert (=> d!2250415 (forall!17415 (exprs!8016 lt!2580672) lambda!442308)))

(assert (=> d!2250415 (= (lemmaConcatPreservesForall!1385 (exprs!8016 lt!2580672) (exprs!8016 ct2!328) lambda!442308) lt!2580790)))

(declare-fun bs!1904475 () Bool)

(assert (= bs!1904475 d!2250415))

(assert (=> bs!1904475 m!7917626))

(assert (=> bs!1904475 m!7917626))

(declare-fun m!7917992 () Bool)

(assert (=> bs!1904475 m!7917992))

(declare-fun m!7917994 () Bool)

(assert (=> bs!1904475 m!7917994))

(declare-fun m!7917996 () Bool)

(assert (=> bs!1904475 m!7917996))

(assert (=> b!7242658 d!2250415))

(declare-fun b!7242898 () Bool)

(declare-fun e!4342561 () Bool)

(declare-fun tp!2035759 () Bool)

(assert (=> b!7242898 (= e!4342561 (and tp_is_empty!46617 tp!2035759))))

(assert (=> b!7242666 (= tp!2035742 e!4342561)))

(assert (= (and b!7242666 (is-Cons!70202 (t!384377 s1!1971))) b!7242898))

(declare-fun b!7242903 () Bool)

(declare-fun e!4342564 () Bool)

(declare-fun tp!2035764 () Bool)

(declare-fun tp!2035765 () Bool)

(assert (=> b!7242903 (= e!4342564 (and tp!2035764 tp!2035765))))

(assert (=> b!7242662 (= tp!2035741 e!4342564)))

(assert (= (and b!7242662 (is-Cons!70201 (exprs!8016 ct2!328))) b!7242903))

(declare-fun b!7242904 () Bool)

(declare-fun e!4342565 () Bool)

(declare-fun tp!2035766 () Bool)

(declare-fun tp!2035767 () Bool)

(assert (=> b!7242904 (= e!4342565 (and tp!2035766 tp!2035767))))

(assert (=> b!7242656 (= tp!2035743 e!4342565)))

(assert (= (and b!7242656 (is-Cons!70201 (exprs!8016 ct1!232))) b!7242904))

(declare-fun b!7242905 () Bool)

(declare-fun e!4342566 () Bool)

(declare-fun tp!2035768 () Bool)

(assert (=> b!7242905 (= e!4342566 (and tp_is_empty!46617 tp!2035768))))

(assert (=> b!7242663 (= tp!2035744 e!4342566)))

(assert (= (and b!7242663 (is-Cons!70202 (t!384377 s2!1849))) b!7242905))

(declare-fun b_lambda!277893 () Bool)

(assert (= b_lambda!277891 (or b!7242664 b_lambda!277893)))

(declare-fun bs!1904479 () Bool)

(declare-fun d!2250421 () Bool)

(assert (= bs!1904479 (and d!2250421 b!7242664)))

(assert (=> bs!1904479 (= (dynLambda!28654 lambda!442309 lt!2580789) (matchZipper!3486 (set.insert lt!2580789 (as set.empty (Set Context!15032))) (t!384377 s1!1971)))))

(declare-fun m!7918000 () Bool)

(assert (=> bs!1904479 m!7918000))

(assert (=> bs!1904479 m!7918000))

(declare-fun m!7918002 () Bool)

(assert (=> bs!1904479 m!7918002))

(assert (=> d!2250409 d!2250421))

(declare-fun b_lambda!277895 () Bool)

(assert (= b_lambda!277887 (or b!7242660 b_lambda!277895)))

(declare-fun bs!1904480 () Bool)

(declare-fun d!2250423 () Bool)

(assert (= bs!1904480 (and d!2250423 b!7242660)))

(assert (=> bs!1904480 (= (dynLambda!28653 lambda!442310 ct1!232) (derivationStepZipperUp!2430 ct1!232 (h!76650 s1!1971)))))

(assert (=> bs!1904480 m!7917630))

(assert (=> d!2250379 d!2250423))

(declare-fun b_lambda!277897 () Bool)

(assert (= b_lambda!277889 (or b!7242660 b_lambda!277897)))

(declare-fun bs!1904481 () Bool)

(declare-fun d!2250425 () Bool)

(assert (= bs!1904481 (and d!2250425 b!7242660)))

(assert (=> bs!1904481 (= (dynLambda!28653 lambda!442310 lt!2580687) (derivationStepZipperUp!2430 lt!2580687 (h!76650 s1!1971)))))

(assert (=> bs!1904481 m!7917646))

(assert (=> d!2250389 d!2250425))

(push 1)

(assert (not d!2250397))

(assert (not bm!659523))

(assert (not d!2250413))

(assert (not b!7242777))

(assert (not b!7242826))

(assert (not b!7242904))

(assert (not d!2250393))

(assert (not b!7242884))

(assert (not b!7242893))

(assert (not d!2250365))

(assert (not b!7242870))

(assert (not d!2250401))

(assert (not bm!659522))

(assert (not d!2250405))

(assert (not b!7242862))

(assert (not bm!659541))

(assert (not b!7242892))

(assert (not d!2250391))

(assert (not bm!659532))

(assert (not d!2250369))

(assert (not b!7242821))

(assert (not b!7242785))

(assert tp_is_empty!46617)

(assert (not bm!659552))

(assert (not b!7242859))

(assert (not bm!659549))

(assert (not b!7242885))

(assert (not b!7242903))

(assert (not d!2250357))

(assert (not b!7242817))

(assert (not d!2250361))

(assert (not b!7242748))

(assert (not bm!659525))

(assert (not bs!1904480))

(assert (not d!2250341))

(assert (not b!7242816))

(assert (not d!2250373))

(assert (not bs!1904481))

(assert (not b!7242835))

(assert (not b!7242858))

(assert (not d!2250363))

(assert (not b_lambda!277893))

(assert (not d!2250371))

(assert (not b!7242776))

(assert (not d!2250381))

(assert (not b!7242898))

(assert (not bm!659547))

(assert (not b!7242834))

(assert (not b!7242814))

(assert (not d!2250387))

(assert (not d!2250409))

(assert (not d!2250379))

(assert (not bs!1904479))

(assert (not d!2250351))

(assert (not b!7242871))

(assert (not d!2250377))

(assert (not b_lambda!277895))

(assert (not d!2250389))

(assert (not b_lambda!277897))

(assert (not b!7242905))

(assert (not d!2250415))

(assert (not b!7242861))

(assert (not b!7242784))

(assert (not d!2250359))

(assert (not b!7242820))

(assert (not bm!659546))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

