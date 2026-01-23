; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!703232 () Bool)

(assert start!703232)

(declare-fun b!7239649 () Bool)

(assert (=> b!7239649 true))

(declare-fun b!7239640 () Bool)

(assert (=> b!7239640 true))

(declare-fun bs!1903856 () Bool)

(assert (= bs!1903856 (and b!7239640 b!7239649)))

(declare-fun lambda!441494 () Int)

(declare-datatypes ((C!37370 0))(
  ( (C!37371 (val!28633 Int)) )
))
(declare-datatypes ((List!70252 0))(
  ( (Nil!70128) (Cons!70128 (h!76576 C!37370) (t!384303 List!70252)) )
))
(declare-fun s1!1971 () List!70252)

(declare-fun lambda!441492 () Int)

(declare-fun lt!2578793 () List!70252)

(assert (=> bs!1903856 (= (= lt!2578793 (t!384303 s1!1971)) (= lambda!441494 lambda!441492))))

(assert (=> b!7239640 true))

(declare-fun e!4340461 () Bool)

(declare-datatypes ((Regex!18548 0))(
  ( (ElementMatch!18548 (c!1344196 C!37370)) (Concat!27393 (regOne!37608 Regex!18548) (regTwo!37608 Regex!18548)) (EmptyExpr!18548) (Star!18548 (reg!18877 Regex!18548)) (EmptyLang!18548) (Union!18548 (regOne!37609 Regex!18548) (regTwo!37609 Regex!18548)) )
))
(declare-datatypes ((List!70253 0))(
  ( (Nil!70129) (Cons!70129 (h!76577 Regex!18548) (t!384304 List!70253)) )
))
(declare-datatypes ((Context!14976 0))(
  ( (Context!14977 (exprs!7988 List!70253)) )
))
(declare-fun ct1!232 () Context!14976)

(declare-fun lambda!441491 () Int)

(declare-fun forall!17384 (List!70253 Int) Bool)

(assert (=> b!7239640 (= e!4340461 (forall!17384 (exprs!7988 ct1!232) lambda!441491))))

(declare-fun e!4340467 () Bool)

(assert (=> b!7239640 e!4340467))

(declare-fun res!2936971 () Bool)

(assert (=> b!7239640 (=> (not res!2936971) (not e!4340467))))

(declare-datatypes ((List!70254 0))(
  ( (Nil!70130) (Cons!70130 (h!76578 Context!14976) (t!384305 List!70254)) )
))
(declare-fun lt!2578812 () List!70254)

(declare-fun matchZipper!3458 ((Set Context!14976) List!70252) Bool)

(declare-fun content!14471 (List!70254) (Set Context!14976))

(assert (=> b!7239640 (= res!2936971 (matchZipper!3458 (content!14471 lt!2578812) lt!2578793))))

(declare-datatypes ((Unit!163666 0))(
  ( (Unit!163667) )
))
(declare-fun lt!2578795 () Unit!163666)

(declare-fun lemmaExistsMatchingContextThenMatchingString!77 (List!70254 List!70252) Unit!163666)

(assert (=> b!7239640 (= lt!2578795 (lemmaExistsMatchingContextThenMatchingString!77 lt!2578812 lt!2578793))))

(declare-fun lt!2578796 () (Set Context!14976))

(declare-fun toList!11405 ((Set Context!14976)) List!70254)

(assert (=> b!7239640 (= lt!2578812 (toList!11405 lt!2578796))))

(declare-fun e!4340471 () Bool)

(assert (=> b!7239640 e!4340471))

(declare-fun res!2936967 () Bool)

(assert (=> b!7239640 (=> (not res!2936967) (not e!4340471))))

(declare-fun exists!4239 ((Set Context!14976) Int) Bool)

(assert (=> b!7239640 (= res!2936967 (exists!4239 lt!2578796 lambda!441494))))

(declare-fun lt!2578787 () Context!14976)

(declare-fun lt!2578790 () Unit!163666)

(declare-fun lemmaContainsThenExists!212 ((Set Context!14976) Context!14976 Int) Unit!163666)

(assert (=> b!7239640 (= lt!2578790 (lemmaContainsThenExists!212 lt!2578796 lt!2578787 lambda!441494))))

(declare-fun lt!2578816 () Context!14976)

(declare-fun ct2!328 () Context!14976)

(declare-fun lt!2578821 () Unit!163666)

(declare-fun lemmaConcatPreservesForall!1357 (List!70253 List!70253 Int) Unit!163666)

(assert (=> b!7239640 (= lt!2578821 (lemmaConcatPreservesForall!1357 (exprs!7988 lt!2578816) (exprs!7988 ct2!328) lambda!441491))))

(assert (=> b!7239640 (set.member lt!2578787 lt!2578796)))

(declare-fun lt!2578799 () Unit!163666)

(assert (=> b!7239640 (= lt!2578799 (lemmaConcatPreservesForall!1357 (exprs!7988 lt!2578816) (exprs!7988 ct2!328) lambda!441491))))

(declare-fun lt!2578817 () (Set Context!14976))

(assert (=> b!7239640 (set.member lt!2578787 lt!2578817)))

(declare-fun lt!2578785 () Unit!163666)

(assert (=> b!7239640 (= lt!2578785 (lemmaConcatPreservesForall!1357 (exprs!7988 ct1!232) (exprs!7988 ct2!328) lambda!441491))))

(declare-fun lt!2578794 () Unit!163666)

(assert (=> b!7239640 (= lt!2578794 (lemmaConcatPreservesForall!1357 (exprs!7988 lt!2578816) (exprs!7988 ct2!328) lambda!441491))))

(declare-fun lt!2578819 () Unit!163666)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!13 (Context!14976 Context!14976 Context!14976 C!37370) Unit!163666)

(assert (=> b!7239640 (= lt!2578819 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!13 ct1!232 ct2!328 lt!2578816 (h!76576 s1!1971)))))

(declare-fun s2!1849 () List!70252)

(declare-fun tail!14206 (List!70252) List!70252)

(declare-fun ++!16396 (List!70252 List!70252) List!70252)

(assert (=> b!7239640 (= (tail!14206 (++!16396 s1!1971 s2!1849)) lt!2578793)))

(declare-fun lt!2578810 () Unit!163666)

(declare-fun e!4340463 () Unit!163666)

(assert (=> b!7239640 (= lt!2578810 e!4340463)))

(declare-fun c!1344195 () Bool)

(declare-fun nullable!7861 (Regex!18548) Bool)

(assert (=> b!7239640 (= c!1344195 (nullable!7861 (h!76577 (exprs!7988 ct1!232))))))

(declare-fun lt!2578814 () Context!14976)

(declare-fun lambda!441493 () Int)

(declare-fun lt!2578788 () (Set Context!14976))

(declare-fun flatMap!2752 ((Set Context!14976) Int) (Set Context!14976))

(declare-fun derivationStepZipperUp!2422 (Context!14976 C!37370) (Set Context!14976))

(assert (=> b!7239640 (= (flatMap!2752 lt!2578788 lambda!441493) (derivationStepZipperUp!2422 lt!2578814 (h!76576 s1!1971)))))

(declare-fun lt!2578786 () Unit!163666)

(declare-fun lemmaFlatMapOnSingletonSet!2179 ((Set Context!14976) Context!14976 Int) Unit!163666)

(assert (=> b!7239640 (= lt!2578786 (lemmaFlatMapOnSingletonSet!2179 lt!2578788 lt!2578814 lambda!441493))))

(declare-fun lt!2578809 () Unit!163666)

(assert (=> b!7239640 (= lt!2578809 (lemmaConcatPreservesForall!1357 (exprs!7988 ct1!232) (exprs!7988 ct2!328) lambda!441491))))

(declare-fun lt!2578784 () (Set Context!14976))

(assert (=> b!7239640 (= (flatMap!2752 lt!2578784 lambda!441493) (derivationStepZipperUp!2422 ct1!232 (h!76576 s1!1971)))))

(declare-fun lt!2578800 () Unit!163666)

(assert (=> b!7239640 (= lt!2578800 (lemmaFlatMapOnSingletonSet!2179 lt!2578784 ct1!232 lambda!441493))))

(declare-fun lt!2578808 () Context!14976)

(declare-fun lt!2578822 () (Set Context!14976))

(declare-fun derivationStepZipperDown!2592 (Regex!18548 Context!14976 C!37370) (Set Context!14976))

(assert (=> b!7239640 (= lt!2578822 (derivationStepZipperDown!2592 (h!76577 (exprs!7988 ct1!232)) lt!2578808 (h!76576 s1!1971)))))

(declare-fun lt!2578797 () List!70253)

(declare-fun tail!14207 (List!70253) List!70253)

(assert (=> b!7239640 (= lt!2578808 (Context!14977 (tail!14207 lt!2578797)))))

(declare-fun b!7239641 () Bool)

(declare-fun e!4340472 () Bool)

(assert (=> b!7239641 (= e!4340472 e!4340461)))

(declare-fun res!2936966 () Bool)

(assert (=> b!7239641 (=> res!2936966 e!4340461)))

(declare-fun isEmpty!40411 (List!70253) Bool)

(assert (=> b!7239641 (= res!2936966 (isEmpty!40411 lt!2578797))))

(declare-fun lt!2578792 () Unit!163666)

(assert (=> b!7239641 (= lt!2578792 (lemmaConcatPreservesForall!1357 (exprs!7988 ct1!232) (exprs!7988 ct2!328) lambda!441491))))

(assert (=> b!7239641 (= lt!2578817 (derivationStepZipperUp!2422 lt!2578814 (h!76576 s1!1971)))))

(declare-fun lt!2578803 () Unit!163666)

(assert (=> b!7239641 (= lt!2578803 (lemmaConcatPreservesForall!1357 (exprs!7988 ct1!232) (exprs!7988 ct2!328) lambda!441491))))

(declare-fun lt!2578804 () Context!14976)

(declare-fun lt!2578806 () (Set Context!14976))

(assert (=> b!7239641 (= lt!2578806 (derivationStepZipperDown!2592 (h!76577 (exprs!7988 ct1!232)) lt!2578804 (h!76576 s1!1971)))))

(assert (=> b!7239641 (= lt!2578804 (Context!14977 (tail!14207 (exprs!7988 ct1!232))))))

(declare-fun b!7239642 () Bool)

(assert (=> b!7239642 (= e!4340467 (matchZipper!3458 lt!2578796 lt!2578793))))

(declare-fun b!7239643 () Bool)

(declare-fun e!4340469 () Bool)

(declare-fun tp_is_empty!46561 () Bool)

(declare-fun tp!2035089 () Bool)

(assert (=> b!7239643 (= e!4340469 (and tp_is_empty!46561 tp!2035089))))

(declare-fun b!7239645 () Bool)

(assert (=> b!7239645 (= e!4340471 (exists!4239 lt!2578796 lambda!441494))))

(declare-fun b!7239646 () Bool)

(declare-fun Unit!163668 () Unit!163666)

(assert (=> b!7239646 (= e!4340463 Unit!163668)))

(declare-fun b!7239647 () Bool)

(declare-fun e!4340466 () Bool)

(declare-fun e!4340468 () Bool)

(assert (=> b!7239647 (= e!4340466 e!4340468)))

(declare-fun res!2936968 () Bool)

(assert (=> b!7239647 (=> (not res!2936968) (not e!4340468))))

(assert (=> b!7239647 (= res!2936968 (and (not (is-Nil!70129 (exprs!7988 ct1!232))) (is-Cons!70128 s1!1971)))))

(assert (=> b!7239647 (= lt!2578788 (set.insert lt!2578814 (as set.empty (Set Context!14976))))))

(assert (=> b!7239647 (= lt!2578814 (Context!14977 lt!2578797))))

(declare-fun ++!16397 (List!70253 List!70253) List!70253)

(assert (=> b!7239647 (= lt!2578797 (++!16397 (exprs!7988 ct1!232) (exprs!7988 ct2!328)))))

(declare-fun lt!2578783 () Unit!163666)

(assert (=> b!7239647 (= lt!2578783 (lemmaConcatPreservesForall!1357 (exprs!7988 ct1!232) (exprs!7988 ct2!328) lambda!441491))))

(declare-fun b!7239648 () Bool)

(declare-fun e!4340465 () Bool)

(declare-fun tp!2035090 () Bool)

(assert (=> b!7239648 (= e!4340465 tp!2035090)))

(declare-fun e!4340470 () Bool)

(declare-fun e!4340460 () Bool)

(assert (=> b!7239649 (= e!4340470 (not e!4340460))))

(declare-fun res!2936969 () Bool)

(assert (=> b!7239649 (=> res!2936969 e!4340460)))

(declare-fun lt!2578802 () (Set Context!14976))

(assert (=> b!7239649 (= res!2936969 (not (exists!4239 lt!2578802 lambda!441492)))))

(declare-fun lt!2578807 () List!70254)

(declare-fun exists!4240 (List!70254 Int) Bool)

(assert (=> b!7239649 (exists!4240 lt!2578807 lambda!441492)))

(declare-fun lt!2578791 () Unit!163666)

(declare-fun lemmaZipperMatchesExistsMatchingContext!691 (List!70254 List!70252) Unit!163666)

(assert (=> b!7239649 (= lt!2578791 (lemmaZipperMatchesExistsMatchingContext!691 lt!2578807 (t!384303 s1!1971)))))

(assert (=> b!7239649 (= lt!2578807 (toList!11405 lt!2578802))))

(declare-fun derivationStepZipper!3340 ((Set Context!14976) C!37370) (Set Context!14976))

(assert (=> b!7239649 (= lt!2578796 (derivationStepZipper!3340 lt!2578788 (h!76576 s1!1971)))))

(declare-fun b!7239650 () Bool)

(assert (=> b!7239650 (= e!4340460 e!4340472)))

(declare-fun res!2936965 () Bool)

(assert (=> b!7239650 (=> res!2936965 e!4340472)))

(assert (=> b!7239650 (= res!2936965 (isEmpty!40411 (exprs!7988 ct1!232)))))

(declare-fun lt!2578798 () (Set Context!14976))

(assert (=> b!7239650 (= lt!2578798 (derivationStepZipperUp!2422 ct1!232 (h!76576 s1!1971)))))

(declare-fun lt!2578815 () Unit!163666)

(assert (=> b!7239650 (= lt!2578815 (lemmaConcatPreservesForall!1357 (exprs!7988 lt!2578816) (exprs!7988 ct2!328) lambda!441491))))

(assert (=> b!7239650 (matchZipper!3458 (set.insert lt!2578787 (as set.empty (Set Context!14976))) lt!2578793)))

(assert (=> b!7239650 (= lt!2578793 (++!16396 (t!384303 s1!1971) s2!1849))))

(assert (=> b!7239650 (= lt!2578787 (Context!14977 (++!16397 (exprs!7988 lt!2578816) (exprs!7988 ct2!328))))))

(declare-fun lt!2578813 () Unit!163666)

(assert (=> b!7239650 (= lt!2578813 (lemmaConcatPreservesForall!1357 (exprs!7988 lt!2578816) (exprs!7988 ct2!328) lambda!441491))))

(declare-fun lt!2578823 () Unit!163666)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!339 (Context!14976 Context!14976 List!70252 List!70252) Unit!163666)

(assert (=> b!7239650 (= lt!2578823 (lemmaConcatenateContextMatchesConcatOfStrings!339 lt!2578816 ct2!328 (t!384303 s1!1971) s2!1849))))

(declare-fun getWitness!2095 ((Set Context!14976) Int) Context!14976)

(assert (=> b!7239650 (= lt!2578816 (getWitness!2095 lt!2578802 lambda!441492))))

(declare-fun b!7239651 () Bool)

(declare-fun e!4340462 () Bool)

(declare-fun tp!2035092 () Bool)

(assert (=> b!7239651 (= e!4340462 (and tp_is_empty!46561 tp!2035092))))

(declare-fun b!7239652 () Bool)

(declare-fun e!4340474 () Bool)

(declare-fun tp!2035091 () Bool)

(assert (=> b!7239652 (= e!4340474 tp!2035091)))

(declare-fun b!7239653 () Bool)

(declare-fun e!4340473 () Bool)

(declare-fun lt!2578789 () (Set Context!14976))

(assert (=> b!7239653 (= e!4340473 (matchZipper!3458 lt!2578789 lt!2578793))))

(declare-fun b!7239654 () Bool)

(assert (=> b!7239654 (= e!4340468 e!4340470)))

(declare-fun res!2936975 () Bool)

(assert (=> b!7239654 (=> (not res!2936975) (not e!4340470))))

(assert (=> b!7239654 (= res!2936975 (matchZipper!3458 lt!2578802 (t!384303 s1!1971)))))

(assert (=> b!7239654 (= lt!2578802 (derivationStepZipper!3340 lt!2578784 (h!76576 s1!1971)))))

(declare-fun b!7239655 () Bool)

(declare-fun Unit!163669 () Unit!163666)

(assert (=> b!7239655 (= e!4340463 Unit!163669)))

(declare-fun lt!2578818 () Unit!163666)

(assert (=> b!7239655 (= lt!2578818 (lemmaConcatPreservesForall!1357 (exprs!7988 ct1!232) (exprs!7988 ct2!328) lambda!441491))))

(declare-fun lt!2578801 () (Set Context!14976))

(assert (=> b!7239655 (= lt!2578801 (derivationStepZipperUp!2422 lt!2578804 (h!76576 s1!1971)))))

(declare-fun lt!2578820 () Unit!163666)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1695 ((Set Context!14976) (Set Context!14976) List!70252) Unit!163666)

(assert (=> b!7239655 (= lt!2578820 (lemmaZipperConcatMatchesSameAsBothZippers!1695 lt!2578806 lt!2578801 (t!384303 s1!1971)))))

(declare-fun res!2936973 () Bool)

(assert (=> b!7239655 (= res!2936973 (matchZipper!3458 lt!2578806 (t!384303 s1!1971)))))

(declare-fun e!4340464 () Bool)

(assert (=> b!7239655 (=> res!2936973 e!4340464)))

(assert (=> b!7239655 (= (matchZipper!3458 (set.union lt!2578806 lt!2578801) (t!384303 s1!1971)) e!4340464)))

(declare-fun lt!2578811 () Unit!163666)

(assert (=> b!7239655 (= lt!2578811 (lemmaConcatPreservesForall!1357 (exprs!7988 ct1!232) (exprs!7988 ct2!328) lambda!441491))))

(assert (=> b!7239655 (= lt!2578789 (derivationStepZipperUp!2422 lt!2578808 (h!76576 s1!1971)))))

(declare-fun lt!2578805 () Unit!163666)

(assert (=> b!7239655 (= lt!2578805 (lemmaZipperConcatMatchesSameAsBothZippers!1695 lt!2578822 lt!2578789 lt!2578793))))

(declare-fun res!2936970 () Bool)

(assert (=> b!7239655 (= res!2936970 (matchZipper!3458 lt!2578822 lt!2578793))))

(assert (=> b!7239655 (=> res!2936970 e!4340473)))

(assert (=> b!7239655 (= (matchZipper!3458 (set.union lt!2578822 lt!2578789) lt!2578793) e!4340473)))

(declare-fun b!7239656 () Bool)

(declare-fun res!2936972 () Bool)

(assert (=> b!7239656 (=> (not res!2936972) (not e!4340466))))

(assert (=> b!7239656 (= res!2936972 (matchZipper!3458 (set.insert ct2!328 (as set.empty (Set Context!14976))) s2!1849))))

(declare-fun b!7239644 () Bool)

(assert (=> b!7239644 (= e!4340464 (matchZipper!3458 lt!2578801 (t!384303 s1!1971)))))

(declare-fun res!2936974 () Bool)

(assert (=> start!703232 (=> (not res!2936974) (not e!4340466))))

(assert (=> start!703232 (= res!2936974 (matchZipper!3458 lt!2578784 s1!1971))))

(assert (=> start!703232 (= lt!2578784 (set.insert ct1!232 (as set.empty (Set Context!14976))))))

(assert (=> start!703232 e!4340466))

(declare-fun inv!89381 (Context!14976) Bool)

(assert (=> start!703232 (and (inv!89381 ct1!232) e!4340474)))

(assert (=> start!703232 e!4340469))

(assert (=> start!703232 e!4340462))

(assert (=> start!703232 (and (inv!89381 ct2!328) e!4340465)))

(assert (= (and start!703232 res!2936974) b!7239656))

(assert (= (and b!7239656 res!2936972) b!7239647))

(assert (= (and b!7239647 res!2936968) b!7239654))

(assert (= (and b!7239654 res!2936975) b!7239649))

(assert (= (and b!7239649 (not res!2936969)) b!7239650))

(assert (= (and b!7239650 (not res!2936965)) b!7239641))

(assert (= (and b!7239641 (not res!2936966)) b!7239640))

(assert (= (and b!7239640 c!1344195) b!7239655))

(assert (= (and b!7239640 (not c!1344195)) b!7239646))

(assert (= (and b!7239655 (not res!2936973)) b!7239644))

(assert (= (and b!7239655 (not res!2936970)) b!7239653))

(assert (= (and b!7239640 res!2936967) b!7239645))

(assert (= (and b!7239640 res!2936971) b!7239642))

(assert (= start!703232 b!7239652))

(assert (= (and start!703232 (is-Cons!70128 s1!1971)) b!7239643))

(assert (= (and start!703232 (is-Cons!70128 s2!1849)) b!7239651))

(assert (= start!703232 b!7239648))

(declare-fun m!7912604 () Bool)

(assert (=> b!7239650 m!7912604))

(declare-fun m!7912606 () Bool)

(assert (=> b!7239650 m!7912606))

(declare-fun m!7912608 () Bool)

(assert (=> b!7239650 m!7912608))

(declare-fun m!7912610 () Bool)

(assert (=> b!7239650 m!7912610))

(assert (=> b!7239650 m!7912606))

(declare-fun m!7912612 () Bool)

(assert (=> b!7239650 m!7912612))

(declare-fun m!7912614 () Bool)

(assert (=> b!7239650 m!7912614))

(declare-fun m!7912616 () Bool)

(assert (=> b!7239650 m!7912616))

(declare-fun m!7912618 () Bool)

(assert (=> b!7239650 m!7912618))

(declare-fun m!7912620 () Bool)

(assert (=> b!7239650 m!7912620))

(assert (=> b!7239650 m!7912610))

(declare-fun m!7912622 () Bool)

(assert (=> b!7239640 m!7912622))

(declare-fun m!7912624 () Bool)

(assert (=> b!7239640 m!7912624))

(declare-fun m!7912626 () Bool)

(assert (=> b!7239640 m!7912626))

(declare-fun m!7912628 () Bool)

(assert (=> b!7239640 m!7912628))

(declare-fun m!7912630 () Bool)

(assert (=> b!7239640 m!7912630))

(assert (=> b!7239640 m!7912610))

(assert (=> b!7239640 m!7912624))

(assert (=> b!7239640 m!7912610))

(declare-fun m!7912632 () Bool)

(assert (=> b!7239640 m!7912632))

(declare-fun m!7912634 () Bool)

(assert (=> b!7239640 m!7912634))

(declare-fun m!7912636 () Bool)

(assert (=> b!7239640 m!7912636))

(declare-fun m!7912638 () Bool)

(assert (=> b!7239640 m!7912638))

(declare-fun m!7912640 () Bool)

(assert (=> b!7239640 m!7912640))

(declare-fun m!7912642 () Bool)

(assert (=> b!7239640 m!7912642))

(declare-fun m!7912644 () Bool)

(assert (=> b!7239640 m!7912644))

(declare-fun m!7912646 () Bool)

(assert (=> b!7239640 m!7912646))

(declare-fun m!7912648 () Bool)

(assert (=> b!7239640 m!7912648))

(declare-fun m!7912650 () Bool)

(assert (=> b!7239640 m!7912650))

(assert (=> b!7239640 m!7912610))

(declare-fun m!7912652 () Bool)

(assert (=> b!7239640 m!7912652))

(declare-fun m!7912654 () Bool)

(assert (=> b!7239640 m!7912654))

(declare-fun m!7912656 () Bool)

(assert (=> b!7239640 m!7912656))

(assert (=> b!7239640 m!7912636))

(declare-fun m!7912658 () Bool)

(assert (=> b!7239640 m!7912658))

(declare-fun m!7912660 () Bool)

(assert (=> b!7239640 m!7912660))

(assert (=> b!7239640 m!7912614))

(assert (=> b!7239640 m!7912632))

(declare-fun m!7912662 () Bool)

(assert (=> b!7239640 m!7912662))

(declare-fun m!7912664 () Bool)

(assert (=> start!703232 m!7912664))

(declare-fun m!7912666 () Bool)

(assert (=> start!703232 m!7912666))

(declare-fun m!7912668 () Bool)

(assert (=> start!703232 m!7912668))

(declare-fun m!7912670 () Bool)

(assert (=> start!703232 m!7912670))

(assert (=> b!7239641 m!7912632))

(assert (=> b!7239641 m!7912660))

(declare-fun m!7912672 () Bool)

(assert (=> b!7239641 m!7912672))

(declare-fun m!7912674 () Bool)

(assert (=> b!7239641 m!7912674))

(declare-fun m!7912676 () Bool)

(assert (=> b!7239641 m!7912676))

(assert (=> b!7239641 m!7912632))

(declare-fun m!7912678 () Bool)

(assert (=> b!7239656 m!7912678))

(assert (=> b!7239656 m!7912678))

(declare-fun m!7912680 () Bool)

(assert (=> b!7239656 m!7912680))

(declare-fun m!7912682 () Bool)

(assert (=> b!7239655 m!7912682))

(declare-fun m!7912684 () Bool)

(assert (=> b!7239655 m!7912684))

(declare-fun m!7912686 () Bool)

(assert (=> b!7239655 m!7912686))

(assert (=> b!7239655 m!7912632))

(assert (=> b!7239655 m!7912632))

(declare-fun m!7912688 () Bool)

(assert (=> b!7239655 m!7912688))

(declare-fun m!7912690 () Bool)

(assert (=> b!7239655 m!7912690))

(declare-fun m!7912692 () Bool)

(assert (=> b!7239655 m!7912692))

(declare-fun m!7912694 () Bool)

(assert (=> b!7239655 m!7912694))

(declare-fun m!7912696 () Bool)

(assert (=> b!7239655 m!7912696))

(declare-fun m!7912698 () Bool)

(assert (=> b!7239653 m!7912698))

(declare-fun m!7912700 () Bool)

(assert (=> b!7239642 m!7912700))

(declare-fun m!7912702 () Bool)

(assert (=> b!7239647 m!7912702))

(declare-fun m!7912704 () Bool)

(assert (=> b!7239647 m!7912704))

(assert (=> b!7239647 m!7912632))

(declare-fun m!7912706 () Bool)

(assert (=> b!7239654 m!7912706))

(declare-fun m!7912708 () Bool)

(assert (=> b!7239654 m!7912708))

(declare-fun m!7912710 () Bool)

(assert (=> b!7239644 m!7912710))

(assert (=> b!7239645 m!7912630))

(declare-fun m!7912712 () Bool)

(assert (=> b!7239649 m!7912712))

(declare-fun m!7912714 () Bool)

(assert (=> b!7239649 m!7912714))

(declare-fun m!7912716 () Bool)

(assert (=> b!7239649 m!7912716))

(declare-fun m!7912718 () Bool)

(assert (=> b!7239649 m!7912718))

(declare-fun m!7912720 () Bool)

(assert (=> b!7239649 m!7912720))

(push 1)

(assert (not b!7239650))

(assert (not start!703232))

(assert (not b!7239642))

(assert (not b!7239653))

(assert (not b!7239655))

(assert (not b!7239654))

(assert (not b!7239640))

(assert (not b!7239656))

(assert (not b!7239651))

(assert (not b!7239641))

(assert (not b!7239652))

(assert (not b!7239643))

(assert tp_is_empty!46561)

(assert (not b!7239647))

(assert (not b!7239649))

(assert (not b!7239648))

(assert (not b!7239644))

(assert (not b!7239645))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2248983 () Bool)

(declare-fun c!1344218 () Bool)

(declare-fun isEmpty!40413 (List!70252) Bool)

(assert (=> d!2248983 (= c!1344218 (isEmpty!40413 lt!2578793))))

(declare-fun e!4340522 () Bool)

(assert (=> d!2248983 (= (matchZipper!3458 lt!2578789 lt!2578793) e!4340522)))

(declare-fun b!7239720 () Bool)

(declare-fun nullableZipper!2842 ((Set Context!14976)) Bool)

(assert (=> b!7239720 (= e!4340522 (nullableZipper!2842 lt!2578789))))

(declare-fun b!7239721 () Bool)

(declare-fun head!14831 (List!70252) C!37370)

(assert (=> b!7239721 (= e!4340522 (matchZipper!3458 (derivationStepZipper!3340 lt!2578789 (head!14831 lt!2578793)) (tail!14206 lt!2578793)))))

(assert (= (and d!2248983 c!1344218) b!7239720))

(assert (= (and d!2248983 (not c!1344218)) b!7239721))

(declare-fun m!7912840 () Bool)

(assert (=> d!2248983 m!7912840))

(declare-fun m!7912842 () Bool)

(assert (=> b!7239720 m!7912842))

(declare-fun m!7912844 () Bool)

(assert (=> b!7239721 m!7912844))

(assert (=> b!7239721 m!7912844))

(declare-fun m!7912846 () Bool)

(assert (=> b!7239721 m!7912846))

(declare-fun m!7912848 () Bool)

(assert (=> b!7239721 m!7912848))

(assert (=> b!7239721 m!7912846))

(assert (=> b!7239721 m!7912848))

(declare-fun m!7912850 () Bool)

(assert (=> b!7239721 m!7912850))

(assert (=> b!7239653 d!2248983))

(declare-fun d!2248985 () Bool)

(declare-fun c!1344219 () Bool)

(assert (=> d!2248985 (= c!1344219 (isEmpty!40413 lt!2578793))))

(declare-fun e!4340523 () Bool)

(assert (=> d!2248985 (= (matchZipper!3458 lt!2578796 lt!2578793) e!4340523)))

(declare-fun b!7239722 () Bool)

(assert (=> b!7239722 (= e!4340523 (nullableZipper!2842 lt!2578796))))

(declare-fun b!7239723 () Bool)

(assert (=> b!7239723 (= e!4340523 (matchZipper!3458 (derivationStepZipper!3340 lt!2578796 (head!14831 lt!2578793)) (tail!14206 lt!2578793)))))

(assert (= (and d!2248985 c!1344219) b!7239722))

(assert (= (and d!2248985 (not c!1344219)) b!7239723))

(assert (=> d!2248985 m!7912840))

(declare-fun m!7912852 () Bool)

(assert (=> b!7239722 m!7912852))

(assert (=> b!7239723 m!7912844))

(assert (=> b!7239723 m!7912844))

(declare-fun m!7912854 () Bool)

(assert (=> b!7239723 m!7912854))

(assert (=> b!7239723 m!7912848))

(assert (=> b!7239723 m!7912854))

(assert (=> b!7239723 m!7912848))

(declare-fun m!7912856 () Bool)

(assert (=> b!7239723 m!7912856))

(assert (=> b!7239642 d!2248985))

(declare-fun d!2248987 () Bool)

(declare-fun c!1344220 () Bool)

(assert (=> d!2248987 (= c!1344220 (isEmpty!40413 (t!384303 s1!1971)))))

(declare-fun e!4340524 () Bool)

(assert (=> d!2248987 (= (matchZipper!3458 lt!2578802 (t!384303 s1!1971)) e!4340524)))

(declare-fun b!7239724 () Bool)

(assert (=> b!7239724 (= e!4340524 (nullableZipper!2842 lt!2578802))))

(declare-fun b!7239725 () Bool)

(assert (=> b!7239725 (= e!4340524 (matchZipper!3458 (derivationStepZipper!3340 lt!2578802 (head!14831 (t!384303 s1!1971))) (tail!14206 (t!384303 s1!1971))))))

(assert (= (and d!2248987 c!1344220) b!7239724))

(assert (= (and d!2248987 (not c!1344220)) b!7239725))

(declare-fun m!7912858 () Bool)

(assert (=> d!2248987 m!7912858))

(declare-fun m!7912860 () Bool)

(assert (=> b!7239724 m!7912860))

(declare-fun m!7912862 () Bool)

(assert (=> b!7239725 m!7912862))

(assert (=> b!7239725 m!7912862))

(declare-fun m!7912864 () Bool)

(assert (=> b!7239725 m!7912864))

(declare-fun m!7912866 () Bool)

(assert (=> b!7239725 m!7912866))

(assert (=> b!7239725 m!7912864))

(assert (=> b!7239725 m!7912866))

(declare-fun m!7912868 () Bool)

(assert (=> b!7239725 m!7912868))

(assert (=> b!7239654 d!2248987))

(declare-fun bs!1903858 () Bool)

(declare-fun d!2248989 () Bool)

(assert (= bs!1903858 (and d!2248989 b!7239640)))

(declare-fun lambda!441541 () Int)

(assert (=> bs!1903858 (= lambda!441541 lambda!441493)))

(assert (=> d!2248989 true))

(assert (=> d!2248989 (= (derivationStepZipper!3340 lt!2578784 (h!76576 s1!1971)) (flatMap!2752 lt!2578784 lambda!441541))))

(declare-fun bs!1903859 () Bool)

(assert (= bs!1903859 d!2248989))

(declare-fun m!7912870 () Bool)

(assert (=> bs!1903859 m!7912870))

(assert (=> b!7239654 d!2248989))

(declare-fun d!2248991 () Bool)

(declare-fun c!1344223 () Bool)

(assert (=> d!2248991 (= c!1344223 (isEmpty!40413 lt!2578793))))

(declare-fun e!4340525 () Bool)

(assert (=> d!2248991 (= (matchZipper!3458 (set.union lt!2578822 lt!2578789) lt!2578793) e!4340525)))

(declare-fun b!7239728 () Bool)

(assert (=> b!7239728 (= e!4340525 (nullableZipper!2842 (set.union lt!2578822 lt!2578789)))))

(declare-fun b!7239729 () Bool)

(assert (=> b!7239729 (= e!4340525 (matchZipper!3458 (derivationStepZipper!3340 (set.union lt!2578822 lt!2578789) (head!14831 lt!2578793)) (tail!14206 lt!2578793)))))

(assert (= (and d!2248991 c!1344223) b!7239728))

(assert (= (and d!2248991 (not c!1344223)) b!7239729))

(assert (=> d!2248991 m!7912840))

(declare-fun m!7912872 () Bool)

(assert (=> b!7239728 m!7912872))

(assert (=> b!7239729 m!7912844))

(assert (=> b!7239729 m!7912844))

(declare-fun m!7912874 () Bool)

(assert (=> b!7239729 m!7912874))

(assert (=> b!7239729 m!7912848))

(assert (=> b!7239729 m!7912874))

(assert (=> b!7239729 m!7912848))

(declare-fun m!7912876 () Bool)

(assert (=> b!7239729 m!7912876))

(assert (=> b!7239655 d!2248991))

(declare-fun d!2248993 () Bool)

(assert (=> d!2248993 (forall!17384 (++!16397 (exprs!7988 ct1!232) (exprs!7988 ct2!328)) lambda!441491)))

(declare-fun lt!2578949 () Unit!163666)

(declare-fun choose!55727 (List!70253 List!70253 Int) Unit!163666)

(assert (=> d!2248993 (= lt!2578949 (choose!55727 (exprs!7988 ct1!232) (exprs!7988 ct2!328) lambda!441491))))

(assert (=> d!2248993 (forall!17384 (exprs!7988 ct1!232) lambda!441491)))

(assert (=> d!2248993 (= (lemmaConcatPreservesForall!1357 (exprs!7988 ct1!232) (exprs!7988 ct2!328) lambda!441491) lt!2578949)))

(declare-fun bs!1903860 () Bool)

(assert (= bs!1903860 d!2248993))

(assert (=> bs!1903860 m!7912704))

(assert (=> bs!1903860 m!7912704))

(declare-fun m!7912878 () Bool)

(assert (=> bs!1903860 m!7912878))

(declare-fun m!7912880 () Bool)

(assert (=> bs!1903860 m!7912880))

(assert (=> bs!1903860 m!7912642))

(assert (=> b!7239655 d!2248993))

(declare-fun e!4340533 () (Set Context!14976))

(declare-fun b!7239740 () Bool)

(declare-fun call!659275 () (Set Context!14976))

(assert (=> b!7239740 (= e!4340533 (set.union call!659275 (derivationStepZipperUp!2422 (Context!14977 (t!384304 (exprs!7988 lt!2578808))) (h!76576 s1!1971))))))

(declare-fun bm!659270 () Bool)

(assert (=> bm!659270 (= call!659275 (derivationStepZipperDown!2592 (h!76577 (exprs!7988 lt!2578808)) (Context!14977 (t!384304 (exprs!7988 lt!2578808))) (h!76576 s1!1971)))))

(declare-fun d!2248995 () Bool)

(declare-fun c!1344229 () Bool)

(declare-fun e!4340532 () Bool)

(assert (=> d!2248995 (= c!1344229 e!4340532)))

(declare-fun res!2937011 () Bool)

(assert (=> d!2248995 (=> (not res!2937011) (not e!4340532))))

(assert (=> d!2248995 (= res!2937011 (is-Cons!70129 (exprs!7988 lt!2578808)))))

(assert (=> d!2248995 (= (derivationStepZipperUp!2422 lt!2578808 (h!76576 s1!1971)) e!4340533)))

(declare-fun b!7239741 () Bool)

(declare-fun e!4340534 () (Set Context!14976))

(assert (=> b!7239741 (= e!4340534 call!659275)))

(declare-fun b!7239742 () Bool)

(assert (=> b!7239742 (= e!4340533 e!4340534)))

(declare-fun c!1344228 () Bool)

(assert (=> b!7239742 (= c!1344228 (is-Cons!70129 (exprs!7988 lt!2578808)))))

(declare-fun b!7239743 () Bool)

(assert (=> b!7239743 (= e!4340534 (as set.empty (Set Context!14976)))))

(declare-fun b!7239744 () Bool)

(assert (=> b!7239744 (= e!4340532 (nullable!7861 (h!76577 (exprs!7988 lt!2578808))))))

(assert (= (and d!2248995 res!2937011) b!7239744))

(assert (= (and d!2248995 c!1344229) b!7239740))

(assert (= (and d!2248995 (not c!1344229)) b!7239742))

(assert (= (and b!7239742 c!1344228) b!7239741))

(assert (= (and b!7239742 (not c!1344228)) b!7239743))

(assert (= (or b!7239740 b!7239741) bm!659270))

(declare-fun m!7912882 () Bool)

(assert (=> b!7239740 m!7912882))

(declare-fun m!7912884 () Bool)

(assert (=> bm!659270 m!7912884))

(declare-fun m!7912886 () Bool)

(assert (=> b!7239744 m!7912886))

(assert (=> b!7239655 d!2248995))

(declare-fun call!659276 () (Set Context!14976))

(declare-fun b!7239745 () Bool)

(declare-fun e!4340536 () (Set Context!14976))

(assert (=> b!7239745 (= e!4340536 (set.union call!659276 (derivationStepZipperUp!2422 (Context!14977 (t!384304 (exprs!7988 lt!2578804))) (h!76576 s1!1971))))))

(declare-fun bm!659271 () Bool)

(assert (=> bm!659271 (= call!659276 (derivationStepZipperDown!2592 (h!76577 (exprs!7988 lt!2578804)) (Context!14977 (t!384304 (exprs!7988 lt!2578804))) (h!76576 s1!1971)))))

(declare-fun d!2248997 () Bool)

(declare-fun c!1344231 () Bool)

(declare-fun e!4340535 () Bool)

(assert (=> d!2248997 (= c!1344231 e!4340535)))

(declare-fun res!2937012 () Bool)

(assert (=> d!2248997 (=> (not res!2937012) (not e!4340535))))

(assert (=> d!2248997 (= res!2937012 (is-Cons!70129 (exprs!7988 lt!2578804)))))

(assert (=> d!2248997 (= (derivationStepZipperUp!2422 lt!2578804 (h!76576 s1!1971)) e!4340536)))

(declare-fun b!7239746 () Bool)

(declare-fun e!4340537 () (Set Context!14976))

(assert (=> b!7239746 (= e!4340537 call!659276)))

(declare-fun b!7239747 () Bool)

(assert (=> b!7239747 (= e!4340536 e!4340537)))

(declare-fun c!1344230 () Bool)

(assert (=> b!7239747 (= c!1344230 (is-Cons!70129 (exprs!7988 lt!2578804)))))

(declare-fun b!7239748 () Bool)

(assert (=> b!7239748 (= e!4340537 (as set.empty (Set Context!14976)))))

(declare-fun b!7239749 () Bool)

(assert (=> b!7239749 (= e!4340535 (nullable!7861 (h!76577 (exprs!7988 lt!2578804))))))

(assert (= (and d!2248997 res!2937012) b!7239749))

(assert (= (and d!2248997 c!1344231) b!7239745))

(assert (= (and d!2248997 (not c!1344231)) b!7239747))

(assert (= (and b!7239747 c!1344230) b!7239746))

(assert (= (and b!7239747 (not c!1344230)) b!7239748))

(assert (= (or b!7239745 b!7239746) bm!659271))

(declare-fun m!7912888 () Bool)

(assert (=> b!7239745 m!7912888))

(declare-fun m!7912890 () Bool)

(assert (=> bm!659271 m!7912890))

(declare-fun m!7912892 () Bool)

(assert (=> b!7239749 m!7912892))

(assert (=> b!7239655 d!2248997))

(declare-fun d!2248999 () Bool)

(declare-fun c!1344232 () Bool)

(assert (=> d!2248999 (= c!1344232 (isEmpty!40413 (t!384303 s1!1971)))))

(declare-fun e!4340538 () Bool)

(assert (=> d!2248999 (= (matchZipper!3458 lt!2578806 (t!384303 s1!1971)) e!4340538)))

(declare-fun b!7239750 () Bool)

(assert (=> b!7239750 (= e!4340538 (nullableZipper!2842 lt!2578806))))

(declare-fun b!7239751 () Bool)

(assert (=> b!7239751 (= e!4340538 (matchZipper!3458 (derivationStepZipper!3340 lt!2578806 (head!14831 (t!384303 s1!1971))) (tail!14206 (t!384303 s1!1971))))))

(assert (= (and d!2248999 c!1344232) b!7239750))

(assert (= (and d!2248999 (not c!1344232)) b!7239751))

(assert (=> d!2248999 m!7912858))

(declare-fun m!7912894 () Bool)

(assert (=> b!7239750 m!7912894))

(assert (=> b!7239751 m!7912862))

(assert (=> b!7239751 m!7912862))

(declare-fun m!7912896 () Bool)

(assert (=> b!7239751 m!7912896))

(assert (=> b!7239751 m!7912866))

(assert (=> b!7239751 m!7912896))

(assert (=> b!7239751 m!7912866))

(declare-fun m!7912898 () Bool)

(assert (=> b!7239751 m!7912898))

(assert (=> b!7239655 d!2248999))

(declare-fun d!2249001 () Bool)

(declare-fun e!4340541 () Bool)

(assert (=> d!2249001 (= (matchZipper!3458 (set.union lt!2578806 lt!2578801) (t!384303 s1!1971)) e!4340541)))

(declare-fun res!2937015 () Bool)

(assert (=> d!2249001 (=> res!2937015 e!4340541)))

(assert (=> d!2249001 (= res!2937015 (matchZipper!3458 lt!2578806 (t!384303 s1!1971)))))

(declare-fun lt!2578952 () Unit!163666)

(declare-fun choose!55728 ((Set Context!14976) (Set Context!14976) List!70252) Unit!163666)

(assert (=> d!2249001 (= lt!2578952 (choose!55728 lt!2578806 lt!2578801 (t!384303 s1!1971)))))

(assert (=> d!2249001 (= (lemmaZipperConcatMatchesSameAsBothZippers!1695 lt!2578806 lt!2578801 (t!384303 s1!1971)) lt!2578952)))

(declare-fun b!7239754 () Bool)

(assert (=> b!7239754 (= e!4340541 (matchZipper!3458 lt!2578801 (t!384303 s1!1971)))))

(assert (= (and d!2249001 (not res!2937015)) b!7239754))

(assert (=> d!2249001 m!7912682))

(assert (=> d!2249001 m!7912692))

(declare-fun m!7912900 () Bool)

(assert (=> d!2249001 m!7912900))

(assert (=> b!7239754 m!7912710))

(assert (=> b!7239655 d!2249001))

(declare-fun e!4340542 () Bool)

(declare-fun d!2249003 () Bool)

(assert (=> d!2249003 (= (matchZipper!3458 (set.union lt!2578822 lt!2578789) lt!2578793) e!4340542)))

(declare-fun res!2937016 () Bool)

(assert (=> d!2249003 (=> res!2937016 e!4340542)))

(assert (=> d!2249003 (= res!2937016 (matchZipper!3458 lt!2578822 lt!2578793))))

(declare-fun lt!2578953 () Unit!163666)

(assert (=> d!2249003 (= lt!2578953 (choose!55728 lt!2578822 lt!2578789 lt!2578793))))

(assert (=> d!2249003 (= (lemmaZipperConcatMatchesSameAsBothZippers!1695 lt!2578822 lt!2578789 lt!2578793) lt!2578953)))

(declare-fun b!7239755 () Bool)

(assert (=> b!7239755 (= e!4340542 (matchZipper!3458 lt!2578789 lt!2578793))))

(assert (= (and d!2249003 (not res!2937016)) b!7239755))

(assert (=> d!2249003 m!7912694))

(assert (=> d!2249003 m!7912686))

(declare-fun m!7912902 () Bool)

(assert (=> d!2249003 m!7912902))

(assert (=> b!7239755 m!7912698))

(assert (=> b!7239655 d!2249003))

(declare-fun d!2249005 () Bool)

(declare-fun c!1344233 () Bool)

(assert (=> d!2249005 (= c!1344233 (isEmpty!40413 lt!2578793))))

(declare-fun e!4340543 () Bool)

(assert (=> d!2249005 (= (matchZipper!3458 lt!2578822 lt!2578793) e!4340543)))

(declare-fun b!7239756 () Bool)

(assert (=> b!7239756 (= e!4340543 (nullableZipper!2842 lt!2578822))))

(declare-fun b!7239757 () Bool)

(assert (=> b!7239757 (= e!4340543 (matchZipper!3458 (derivationStepZipper!3340 lt!2578822 (head!14831 lt!2578793)) (tail!14206 lt!2578793)))))

(assert (= (and d!2249005 c!1344233) b!7239756))

(assert (= (and d!2249005 (not c!1344233)) b!7239757))

(assert (=> d!2249005 m!7912840))

(declare-fun m!7912904 () Bool)

(assert (=> b!7239756 m!7912904))

(assert (=> b!7239757 m!7912844))

(assert (=> b!7239757 m!7912844))

(declare-fun m!7912906 () Bool)

(assert (=> b!7239757 m!7912906))

(assert (=> b!7239757 m!7912848))

(assert (=> b!7239757 m!7912906))

(assert (=> b!7239757 m!7912848))

(declare-fun m!7912908 () Bool)

(assert (=> b!7239757 m!7912908))

(assert (=> b!7239655 d!2249005))

(declare-fun d!2249007 () Bool)

(declare-fun c!1344234 () Bool)

(assert (=> d!2249007 (= c!1344234 (isEmpty!40413 (t!384303 s1!1971)))))

(declare-fun e!4340544 () Bool)

(assert (=> d!2249007 (= (matchZipper!3458 (set.union lt!2578806 lt!2578801) (t!384303 s1!1971)) e!4340544)))

(declare-fun b!7239758 () Bool)

(assert (=> b!7239758 (= e!4340544 (nullableZipper!2842 (set.union lt!2578806 lt!2578801)))))

(declare-fun b!7239759 () Bool)

(assert (=> b!7239759 (= e!4340544 (matchZipper!3458 (derivationStepZipper!3340 (set.union lt!2578806 lt!2578801) (head!14831 (t!384303 s1!1971))) (tail!14206 (t!384303 s1!1971))))))

(assert (= (and d!2249007 c!1344234) b!7239758))

(assert (= (and d!2249007 (not c!1344234)) b!7239759))

(assert (=> d!2249007 m!7912858))

(declare-fun m!7912910 () Bool)

(assert (=> b!7239758 m!7912910))

(assert (=> b!7239759 m!7912862))

(assert (=> b!7239759 m!7912862))

(declare-fun m!7912912 () Bool)

(assert (=> b!7239759 m!7912912))

(assert (=> b!7239759 m!7912866))

(assert (=> b!7239759 m!7912912))

(assert (=> b!7239759 m!7912866))

(declare-fun m!7912914 () Bool)

(assert (=> b!7239759 m!7912914))

(assert (=> b!7239655 d!2249007))

(declare-fun d!2249009 () Bool)

(declare-fun c!1344235 () Bool)

(assert (=> d!2249009 (= c!1344235 (isEmpty!40413 (t!384303 s1!1971)))))

(declare-fun e!4340545 () Bool)

(assert (=> d!2249009 (= (matchZipper!3458 lt!2578801 (t!384303 s1!1971)) e!4340545)))

(declare-fun b!7239760 () Bool)

(assert (=> b!7239760 (= e!4340545 (nullableZipper!2842 lt!2578801))))

(declare-fun b!7239761 () Bool)

(assert (=> b!7239761 (= e!4340545 (matchZipper!3458 (derivationStepZipper!3340 lt!2578801 (head!14831 (t!384303 s1!1971))) (tail!14206 (t!384303 s1!1971))))))

(assert (= (and d!2249009 c!1344235) b!7239760))

(assert (= (and d!2249009 (not c!1344235)) b!7239761))

(assert (=> d!2249009 m!7912858))

(declare-fun m!7912916 () Bool)

(assert (=> b!7239760 m!7912916))

(assert (=> b!7239761 m!7912862))

(assert (=> b!7239761 m!7912862))

(declare-fun m!7912918 () Bool)

(assert (=> b!7239761 m!7912918))

(assert (=> b!7239761 m!7912866))

(assert (=> b!7239761 m!7912918))

(assert (=> b!7239761 m!7912866))

(declare-fun m!7912920 () Bool)

(assert (=> b!7239761 m!7912920))

(assert (=> b!7239644 d!2249009))

(declare-fun d!2249011 () Bool)

(declare-fun lt!2578956 () Bool)

(assert (=> d!2249011 (= lt!2578956 (exists!4240 (toList!11405 lt!2578796) lambda!441494))))

(declare-fun choose!55729 ((Set Context!14976) Int) Bool)

(assert (=> d!2249011 (= lt!2578956 (choose!55729 lt!2578796 lambda!441494))))

(assert (=> d!2249011 (= (exists!4239 lt!2578796 lambda!441494) lt!2578956)))

(declare-fun bs!1903861 () Bool)

(assert (= bs!1903861 d!2249011))

(assert (=> bs!1903861 m!7912652))

(assert (=> bs!1903861 m!7912652))

(declare-fun m!7912922 () Bool)

(assert (=> bs!1903861 m!7912922))

(declare-fun m!7912924 () Bool)

(assert (=> bs!1903861 m!7912924))

(assert (=> b!7239645 d!2249011))

(declare-fun d!2249013 () Bool)

(declare-fun c!1344236 () Bool)

(assert (=> d!2249013 (= c!1344236 (isEmpty!40413 s1!1971))))

(declare-fun e!4340546 () Bool)

(assert (=> d!2249013 (= (matchZipper!3458 lt!2578784 s1!1971) e!4340546)))

(declare-fun b!7239762 () Bool)

(assert (=> b!7239762 (= e!4340546 (nullableZipper!2842 lt!2578784))))

(declare-fun b!7239763 () Bool)

(assert (=> b!7239763 (= e!4340546 (matchZipper!3458 (derivationStepZipper!3340 lt!2578784 (head!14831 s1!1971)) (tail!14206 s1!1971)))))

(assert (= (and d!2249013 c!1344236) b!7239762))

(assert (= (and d!2249013 (not c!1344236)) b!7239763))

(declare-fun m!7912926 () Bool)

(assert (=> d!2249013 m!7912926))

(declare-fun m!7912928 () Bool)

(assert (=> b!7239762 m!7912928))

(declare-fun m!7912930 () Bool)

(assert (=> b!7239763 m!7912930))

(assert (=> b!7239763 m!7912930))

(declare-fun m!7912932 () Bool)

(assert (=> b!7239763 m!7912932))

(declare-fun m!7912934 () Bool)

(assert (=> b!7239763 m!7912934))

(assert (=> b!7239763 m!7912932))

(assert (=> b!7239763 m!7912934))

(declare-fun m!7912936 () Bool)

(assert (=> b!7239763 m!7912936))

(assert (=> start!703232 d!2249013))

(declare-fun bs!1903862 () Bool)

(declare-fun d!2249015 () Bool)

(assert (= bs!1903862 (and d!2249015 b!7239647)))

(declare-fun lambda!441544 () Int)

(assert (=> bs!1903862 (= lambda!441544 lambda!441491)))

(assert (=> d!2249015 (= (inv!89381 ct1!232) (forall!17384 (exprs!7988 ct1!232) lambda!441544))))

(declare-fun bs!1903863 () Bool)

(assert (= bs!1903863 d!2249015))

(declare-fun m!7912938 () Bool)

(assert (=> bs!1903863 m!7912938))

(assert (=> start!703232 d!2249015))

(declare-fun bs!1903864 () Bool)

(declare-fun d!2249017 () Bool)

(assert (= bs!1903864 (and d!2249017 b!7239647)))

(declare-fun lambda!441545 () Int)

(assert (=> bs!1903864 (= lambda!441545 lambda!441491)))

(declare-fun bs!1903865 () Bool)

(assert (= bs!1903865 (and d!2249017 d!2249015)))

(assert (=> bs!1903865 (= lambda!441545 lambda!441544)))

(assert (=> d!2249017 (= (inv!89381 ct2!328) (forall!17384 (exprs!7988 ct2!328) lambda!441545))))

(declare-fun bs!1903866 () Bool)

(assert (= bs!1903866 d!2249017))

(declare-fun m!7912940 () Bool)

(assert (=> bs!1903866 m!7912940))

(assert (=> start!703232 d!2249017))

(declare-fun d!2249019 () Bool)

(declare-fun c!1344237 () Bool)

(assert (=> d!2249019 (= c!1344237 (isEmpty!40413 s2!1849))))

(declare-fun e!4340547 () Bool)

(assert (=> d!2249019 (= (matchZipper!3458 (set.insert ct2!328 (as set.empty (Set Context!14976))) s2!1849) e!4340547)))

(declare-fun b!7239764 () Bool)

(assert (=> b!7239764 (= e!4340547 (nullableZipper!2842 (set.insert ct2!328 (as set.empty (Set Context!14976)))))))

(declare-fun b!7239765 () Bool)

(assert (=> b!7239765 (= e!4340547 (matchZipper!3458 (derivationStepZipper!3340 (set.insert ct2!328 (as set.empty (Set Context!14976))) (head!14831 s2!1849)) (tail!14206 s2!1849)))))

(assert (= (and d!2249019 c!1344237) b!7239764))

(assert (= (and d!2249019 (not c!1344237)) b!7239765))

(declare-fun m!7912942 () Bool)

(assert (=> d!2249019 m!7912942))

(assert (=> b!7239764 m!7912678))

(declare-fun m!7912944 () Bool)

(assert (=> b!7239764 m!7912944))

(declare-fun m!7912946 () Bool)

(assert (=> b!7239765 m!7912946))

(assert (=> b!7239765 m!7912678))

(assert (=> b!7239765 m!7912946))

(declare-fun m!7912948 () Bool)

(assert (=> b!7239765 m!7912948))

(declare-fun m!7912950 () Bool)

(assert (=> b!7239765 m!7912950))

(assert (=> b!7239765 m!7912948))

(assert (=> b!7239765 m!7912950))

(declare-fun m!7912952 () Bool)

(assert (=> b!7239765 m!7912952))

(assert (=> b!7239656 d!2249019))

(declare-fun b!7239774 () Bool)

(declare-fun e!4340553 () List!70253)

(assert (=> b!7239774 (= e!4340553 (exprs!7988 ct2!328))))

(declare-fun b!7239775 () Bool)

(assert (=> b!7239775 (= e!4340553 (Cons!70129 (h!76577 (exprs!7988 ct1!232)) (++!16397 (t!384304 (exprs!7988 ct1!232)) (exprs!7988 ct2!328))))))

(declare-fun b!7239776 () Bool)

(declare-fun res!2937021 () Bool)

(declare-fun e!4340552 () Bool)

(assert (=> b!7239776 (=> (not res!2937021) (not e!4340552))))

(declare-fun lt!2578959 () List!70253)

(declare-fun size!41615 (List!70253) Int)

(assert (=> b!7239776 (= res!2937021 (= (size!41615 lt!2578959) (+ (size!41615 (exprs!7988 ct1!232)) (size!41615 (exprs!7988 ct2!328)))))))

(declare-fun b!7239777 () Bool)

(assert (=> b!7239777 (= e!4340552 (or (not (= (exprs!7988 ct2!328) Nil!70129)) (= lt!2578959 (exprs!7988 ct1!232))))))

(declare-fun d!2249021 () Bool)

(assert (=> d!2249021 e!4340552))

(declare-fun res!2937022 () Bool)

(assert (=> d!2249021 (=> (not res!2937022) (not e!4340552))))

(declare-fun content!14473 (List!70253) (Set Regex!18548))

(assert (=> d!2249021 (= res!2937022 (= (content!14473 lt!2578959) (set.union (content!14473 (exprs!7988 ct1!232)) (content!14473 (exprs!7988 ct2!328)))))))

(assert (=> d!2249021 (= lt!2578959 e!4340553)))

(declare-fun c!1344240 () Bool)

(assert (=> d!2249021 (= c!1344240 (is-Nil!70129 (exprs!7988 ct1!232)))))

(assert (=> d!2249021 (= (++!16397 (exprs!7988 ct1!232) (exprs!7988 ct2!328)) lt!2578959)))

(assert (= (and d!2249021 c!1344240) b!7239774))

(assert (= (and d!2249021 (not c!1344240)) b!7239775))

(assert (= (and d!2249021 res!2937022) b!7239776))

(assert (= (and b!7239776 res!2937021) b!7239777))

(declare-fun m!7912954 () Bool)

(assert (=> b!7239775 m!7912954))

(declare-fun m!7912956 () Bool)

(assert (=> b!7239776 m!7912956))

(declare-fun m!7912958 () Bool)

(assert (=> b!7239776 m!7912958))

(declare-fun m!7912960 () Bool)

(assert (=> b!7239776 m!7912960))

(declare-fun m!7912962 () Bool)

(assert (=> d!2249021 m!7912962))

(declare-fun m!7912964 () Bool)

(assert (=> d!2249021 m!7912964))

(declare-fun m!7912966 () Bool)

(assert (=> d!2249021 m!7912966))

(assert (=> b!7239647 d!2249021))

(assert (=> b!7239647 d!2248993))

(declare-fun bs!1903867 () Bool)

(declare-fun d!2249023 () Bool)

(assert (= bs!1903867 (and d!2249023 b!7239649)))

(declare-fun lambda!441548 () Int)

(assert (=> bs!1903867 (not (= lambda!441548 lambda!441492))))

(declare-fun bs!1903868 () Bool)

(assert (= bs!1903868 (and d!2249023 b!7239640)))

(assert (=> bs!1903868 (not (= lambda!441548 lambda!441494))))

(assert (=> d!2249023 true))

(declare-fun order!28887 () Int)

(declare-fun dynLambda!28620 (Int Int) Int)

(assert (=> d!2249023 (< (dynLambda!28620 order!28887 lambda!441492) (dynLambda!28620 order!28887 lambda!441548))))

(declare-fun forall!17386 (List!70254 Int) Bool)

(assert (=> d!2249023 (= (exists!4240 lt!2578807 lambda!441492) (not (forall!17386 lt!2578807 lambda!441548)))))

(declare-fun bs!1903869 () Bool)

(assert (= bs!1903869 d!2249023))

(declare-fun m!7912968 () Bool)

(assert (=> bs!1903869 m!7912968))

(assert (=> b!7239649 d!2249023))

(declare-fun bs!1903870 () Bool)

(declare-fun d!2249025 () Bool)

(assert (= bs!1903870 (and d!2249025 b!7239640)))

(declare-fun lambda!441549 () Int)

(assert (=> bs!1903870 (= lambda!441549 lambda!441493)))

(declare-fun bs!1903871 () Bool)

(assert (= bs!1903871 (and d!2249025 d!2248989)))

(assert (=> bs!1903871 (= lambda!441549 lambda!441541)))

(assert (=> d!2249025 true))

(assert (=> d!2249025 (= (derivationStepZipper!3340 lt!2578788 (h!76576 s1!1971)) (flatMap!2752 lt!2578788 lambda!441549))))

(declare-fun bs!1903872 () Bool)

(assert (= bs!1903872 d!2249025))

(declare-fun m!7912970 () Bool)

(assert (=> bs!1903872 m!7912970))

(assert (=> b!7239649 d!2249025))

(declare-fun d!2249027 () Bool)

(declare-fun e!4340556 () Bool)

(assert (=> d!2249027 e!4340556))

(declare-fun res!2937025 () Bool)

(assert (=> d!2249027 (=> (not res!2937025) (not e!4340556))))

(declare-fun lt!2578962 () List!70254)

(declare-fun noDuplicate!2950 (List!70254) Bool)

(assert (=> d!2249027 (= res!2937025 (noDuplicate!2950 lt!2578962))))

(declare-fun choose!55730 ((Set Context!14976)) List!70254)

(assert (=> d!2249027 (= lt!2578962 (choose!55730 lt!2578802))))

(assert (=> d!2249027 (= (toList!11405 lt!2578802) lt!2578962)))

(declare-fun b!7239782 () Bool)

(assert (=> b!7239782 (= e!4340556 (= (content!14471 lt!2578962) lt!2578802))))

(assert (= (and d!2249027 res!2937025) b!7239782))

(declare-fun m!7912972 () Bool)

(assert (=> d!2249027 m!7912972))

(declare-fun m!7912974 () Bool)

(assert (=> d!2249027 m!7912974))

(declare-fun m!7912976 () Bool)

(assert (=> b!7239782 m!7912976))

(assert (=> b!7239649 d!2249027))

(declare-fun d!2249029 () Bool)

(declare-fun lt!2578963 () Bool)

(assert (=> d!2249029 (= lt!2578963 (exists!4240 (toList!11405 lt!2578802) lambda!441492))))

(assert (=> d!2249029 (= lt!2578963 (choose!55729 lt!2578802 lambda!441492))))

(assert (=> d!2249029 (= (exists!4239 lt!2578802 lambda!441492) lt!2578963)))

(declare-fun bs!1903873 () Bool)

(assert (= bs!1903873 d!2249029))

(assert (=> bs!1903873 m!7912712))

(assert (=> bs!1903873 m!7912712))

(declare-fun m!7912978 () Bool)

(assert (=> bs!1903873 m!7912978))

(declare-fun m!7912980 () Bool)

(assert (=> bs!1903873 m!7912980))

(assert (=> b!7239649 d!2249029))

(declare-fun bs!1903874 () Bool)

(declare-fun d!2249031 () Bool)

(assert (= bs!1903874 (and d!2249031 b!7239649)))

(declare-fun lambda!441552 () Int)

(assert (=> bs!1903874 (= lambda!441552 lambda!441492)))

(declare-fun bs!1903875 () Bool)

(assert (= bs!1903875 (and d!2249031 b!7239640)))

(assert (=> bs!1903875 (= (= (t!384303 s1!1971) lt!2578793) (= lambda!441552 lambda!441494))))

(declare-fun bs!1903876 () Bool)

(assert (= bs!1903876 (and d!2249031 d!2249023)))

(assert (=> bs!1903876 (not (= lambda!441552 lambda!441548))))

(assert (=> d!2249031 true))

(assert (=> d!2249031 (exists!4240 lt!2578807 lambda!441552)))

(declare-fun lt!2578966 () Unit!163666)

(declare-fun choose!55731 (List!70254 List!70252) Unit!163666)

(assert (=> d!2249031 (= lt!2578966 (choose!55731 lt!2578807 (t!384303 s1!1971)))))

(assert (=> d!2249031 (matchZipper!3458 (content!14471 lt!2578807) (t!384303 s1!1971))))

(assert (=> d!2249031 (= (lemmaZipperMatchesExistsMatchingContext!691 lt!2578807 (t!384303 s1!1971)) lt!2578966)))

(declare-fun bs!1903877 () Bool)

(assert (= bs!1903877 d!2249031))

(declare-fun m!7912982 () Bool)

(assert (=> bs!1903877 m!7912982))

(declare-fun m!7912984 () Bool)

(assert (=> bs!1903877 m!7912984))

(declare-fun m!7912986 () Bool)

(assert (=> bs!1903877 m!7912986))

(assert (=> bs!1903877 m!7912986))

(declare-fun m!7912988 () Bool)

(assert (=> bs!1903877 m!7912988))

(assert (=> b!7239649 d!2249031))

(declare-fun b!7239783 () Bool)

(declare-fun e!4340558 () List!70253)

(assert (=> b!7239783 (= e!4340558 (exprs!7988 ct2!328))))

(declare-fun b!7239784 () Bool)

(assert (=> b!7239784 (= e!4340558 (Cons!70129 (h!76577 (exprs!7988 lt!2578816)) (++!16397 (t!384304 (exprs!7988 lt!2578816)) (exprs!7988 ct2!328))))))

(declare-fun b!7239785 () Bool)

(declare-fun res!2937026 () Bool)

(declare-fun e!4340557 () Bool)

(assert (=> b!7239785 (=> (not res!2937026) (not e!4340557))))

(declare-fun lt!2578967 () List!70253)

(assert (=> b!7239785 (= res!2937026 (= (size!41615 lt!2578967) (+ (size!41615 (exprs!7988 lt!2578816)) (size!41615 (exprs!7988 ct2!328)))))))

(declare-fun b!7239786 () Bool)

(assert (=> b!7239786 (= e!4340557 (or (not (= (exprs!7988 ct2!328) Nil!70129)) (= lt!2578967 (exprs!7988 lt!2578816))))))

(declare-fun d!2249033 () Bool)

(assert (=> d!2249033 e!4340557))

(declare-fun res!2937027 () Bool)

(assert (=> d!2249033 (=> (not res!2937027) (not e!4340557))))

(assert (=> d!2249033 (= res!2937027 (= (content!14473 lt!2578967) (set.union (content!14473 (exprs!7988 lt!2578816)) (content!14473 (exprs!7988 ct2!328)))))))

(assert (=> d!2249033 (= lt!2578967 e!4340558)))

(declare-fun c!1344243 () Bool)

(assert (=> d!2249033 (= c!1344243 (is-Nil!70129 (exprs!7988 lt!2578816)))))

(assert (=> d!2249033 (= (++!16397 (exprs!7988 lt!2578816) (exprs!7988 ct2!328)) lt!2578967)))

(assert (= (and d!2249033 c!1344243) b!7239783))

(assert (= (and d!2249033 (not c!1344243)) b!7239784))

(assert (= (and d!2249033 res!2937027) b!7239785))

(assert (= (and b!7239785 res!2937026) b!7239786))

(declare-fun m!7912990 () Bool)

(assert (=> b!7239784 m!7912990))

(declare-fun m!7912992 () Bool)

(assert (=> b!7239785 m!7912992))

(declare-fun m!7912994 () Bool)

(assert (=> b!7239785 m!7912994))

(assert (=> b!7239785 m!7912960))

(declare-fun m!7912996 () Bool)

(assert (=> d!2249033 m!7912996))

(declare-fun m!7912998 () Bool)

(assert (=> d!2249033 m!7912998))

(assert (=> d!2249033 m!7912966))

(assert (=> b!7239650 d!2249033))

(declare-fun d!2249035 () Bool)

(assert (=> d!2249035 (= (isEmpty!40411 (exprs!7988 ct1!232)) (is-Nil!70129 (exprs!7988 ct1!232)))))

(assert (=> b!7239650 d!2249035))

(declare-fun d!2249037 () Bool)

(declare-fun c!1344244 () Bool)

(assert (=> d!2249037 (= c!1344244 (isEmpty!40413 lt!2578793))))

(declare-fun e!4340559 () Bool)

(assert (=> d!2249037 (= (matchZipper!3458 (set.insert lt!2578787 (as set.empty (Set Context!14976))) lt!2578793) e!4340559)))

(declare-fun b!7239787 () Bool)

(assert (=> b!7239787 (= e!4340559 (nullableZipper!2842 (set.insert lt!2578787 (as set.empty (Set Context!14976)))))))

(declare-fun b!7239788 () Bool)

(assert (=> b!7239788 (= e!4340559 (matchZipper!3458 (derivationStepZipper!3340 (set.insert lt!2578787 (as set.empty (Set Context!14976))) (head!14831 lt!2578793)) (tail!14206 lt!2578793)))))

(assert (= (and d!2249037 c!1344244) b!7239787))

(assert (= (and d!2249037 (not c!1344244)) b!7239788))

(assert (=> d!2249037 m!7912840))

(assert (=> b!7239787 m!7912606))

(declare-fun m!7913000 () Bool)

(assert (=> b!7239787 m!7913000))

(assert (=> b!7239788 m!7912844))

(assert (=> b!7239788 m!7912606))

(assert (=> b!7239788 m!7912844))

(declare-fun m!7913002 () Bool)

(assert (=> b!7239788 m!7913002))

(assert (=> b!7239788 m!7912848))

(assert (=> b!7239788 m!7913002))

(assert (=> b!7239788 m!7912848))

(declare-fun m!7913004 () Bool)

(assert (=> b!7239788 m!7913004))

(assert (=> b!7239650 d!2249037))

(declare-fun d!2249039 () Bool)

(assert (=> d!2249039 (forall!17384 (++!16397 (exprs!7988 lt!2578816) (exprs!7988 ct2!328)) lambda!441491)))

(declare-fun lt!2578968 () Unit!163666)

(assert (=> d!2249039 (= lt!2578968 (choose!55727 (exprs!7988 lt!2578816) (exprs!7988 ct2!328) lambda!441491))))

(assert (=> d!2249039 (forall!17384 (exprs!7988 lt!2578816) lambda!441491)))

(assert (=> d!2249039 (= (lemmaConcatPreservesForall!1357 (exprs!7988 lt!2578816) (exprs!7988 ct2!328) lambda!441491) lt!2578968)))

(declare-fun bs!1903878 () Bool)

(assert (= bs!1903878 d!2249039))

(assert (=> bs!1903878 m!7912604))

(assert (=> bs!1903878 m!7912604))

(declare-fun m!7913006 () Bool)

(assert (=> bs!1903878 m!7913006))

(declare-fun m!7913008 () Bool)

(assert (=> bs!1903878 m!7913008))

(declare-fun m!7913010 () Bool)

(assert (=> bs!1903878 m!7913010))

(assert (=> b!7239650 d!2249039))

(declare-fun bs!1903879 () Bool)

(declare-fun d!2249041 () Bool)

(assert (= bs!1903879 (and d!2249041 b!7239647)))

(declare-fun lambda!441555 () Int)

(assert (=> bs!1903879 (= lambda!441555 lambda!441491)))

(declare-fun bs!1903880 () Bool)

(assert (= bs!1903880 (and d!2249041 d!2249015)))

(assert (=> bs!1903880 (= lambda!441555 lambda!441544)))

(declare-fun bs!1903881 () Bool)

(assert (= bs!1903881 (and d!2249041 d!2249017)))

(assert (=> bs!1903881 (= lambda!441555 lambda!441545)))

(assert (=> d!2249041 (matchZipper!3458 (set.insert (Context!14977 (++!16397 (exprs!7988 lt!2578816) (exprs!7988 ct2!328))) (as set.empty (Set Context!14976))) (++!16396 (t!384303 s1!1971) s2!1849))))

(declare-fun lt!2578974 () Unit!163666)

(assert (=> d!2249041 (= lt!2578974 (lemmaConcatPreservesForall!1357 (exprs!7988 lt!2578816) (exprs!7988 ct2!328) lambda!441555))))

(declare-fun lt!2578973 () Unit!163666)

(declare-fun choose!55732 (Context!14976 Context!14976 List!70252 List!70252) Unit!163666)

(assert (=> d!2249041 (= lt!2578973 (choose!55732 lt!2578816 ct2!328 (t!384303 s1!1971) s2!1849))))

(assert (=> d!2249041 (matchZipper!3458 (set.insert lt!2578816 (as set.empty (Set Context!14976))) (t!384303 s1!1971))))

(assert (=> d!2249041 (= (lemmaConcatenateContextMatchesConcatOfStrings!339 lt!2578816 ct2!328 (t!384303 s1!1971) s2!1849) lt!2578973)))

(declare-fun bs!1903882 () Bool)

(assert (= bs!1903882 d!2249041))

(declare-fun m!7913012 () Bool)

(assert (=> bs!1903882 m!7913012))

(declare-fun m!7913014 () Bool)

(assert (=> bs!1903882 m!7913014))

(assert (=> bs!1903882 m!7912604))

(assert (=> bs!1903882 m!7913014))

(assert (=> bs!1903882 m!7912616))

(declare-fun m!7913016 () Bool)

(assert (=> bs!1903882 m!7913016))

(declare-fun m!7913018 () Bool)

(assert (=> bs!1903882 m!7913018))

(assert (=> bs!1903882 m!7912616))

(declare-fun m!7913020 () Bool)

(assert (=> bs!1903882 m!7913020))

(assert (=> bs!1903882 m!7913012))

(declare-fun m!7913022 () Bool)

(assert (=> bs!1903882 m!7913022))

(assert (=> b!7239650 d!2249041))

(declare-fun d!2249043 () Bool)

(declare-fun e!4340564 () Bool)

(assert (=> d!2249043 e!4340564))

(declare-fun res!2937032 () Bool)

(assert (=> d!2249043 (=> (not res!2937032) (not e!4340564))))

(declare-fun lt!2578977 () List!70252)

(declare-fun content!14474 (List!70252) (Set C!37370))

(assert (=> d!2249043 (= res!2937032 (= (content!14474 lt!2578977) (set.union (content!14474 (t!384303 s1!1971)) (content!14474 s2!1849))))))

(declare-fun e!4340565 () List!70252)

(assert (=> d!2249043 (= lt!2578977 e!4340565)))

(declare-fun c!1344247 () Bool)

(assert (=> d!2249043 (= c!1344247 (is-Nil!70128 (t!384303 s1!1971)))))

(assert (=> d!2249043 (= (++!16396 (t!384303 s1!1971) s2!1849) lt!2578977)))

(declare-fun b!7239799 () Bool)

(declare-fun res!2937033 () Bool)

(assert (=> b!7239799 (=> (not res!2937033) (not e!4340564))))

(declare-fun size!41616 (List!70252) Int)

(assert (=> b!7239799 (= res!2937033 (= (size!41616 lt!2578977) (+ (size!41616 (t!384303 s1!1971)) (size!41616 s2!1849))))))

(declare-fun b!7239797 () Bool)

(assert (=> b!7239797 (= e!4340565 s2!1849)))

(declare-fun b!7239798 () Bool)

(assert (=> b!7239798 (= e!4340565 (Cons!70128 (h!76576 (t!384303 s1!1971)) (++!16396 (t!384303 (t!384303 s1!1971)) s2!1849)))))

(declare-fun b!7239800 () Bool)

(assert (=> b!7239800 (= e!4340564 (or (not (= s2!1849 Nil!70128)) (= lt!2578977 (t!384303 s1!1971))))))

(assert (= (and d!2249043 c!1344247) b!7239797))

(assert (= (and d!2249043 (not c!1344247)) b!7239798))

(assert (= (and d!2249043 res!2937032) b!7239799))

(assert (= (and b!7239799 res!2937033) b!7239800))

(declare-fun m!7913024 () Bool)

(assert (=> d!2249043 m!7913024))

(declare-fun m!7913026 () Bool)

(assert (=> d!2249043 m!7913026))

(declare-fun m!7913028 () Bool)

(assert (=> d!2249043 m!7913028))

(declare-fun m!7913030 () Bool)

(assert (=> b!7239799 m!7913030))

(declare-fun m!7913032 () Bool)

(assert (=> b!7239799 m!7913032))

(declare-fun m!7913034 () Bool)

(assert (=> b!7239799 m!7913034))

(declare-fun m!7913036 () Bool)

(assert (=> b!7239798 m!7913036))

(assert (=> b!7239650 d!2249043))

(declare-fun d!2249045 () Bool)

(declare-fun e!4340568 () Bool)

(assert (=> d!2249045 e!4340568))

(declare-fun res!2937036 () Bool)

(assert (=> d!2249045 (=> (not res!2937036) (not e!4340568))))

(declare-fun lt!2578980 () Context!14976)

(declare-fun dynLambda!28621 (Int Context!14976) Bool)

(assert (=> d!2249045 (= res!2937036 (dynLambda!28621 lambda!441492 lt!2578980))))

(declare-fun getWitness!2097 (List!70254 Int) Context!14976)

(assert (=> d!2249045 (= lt!2578980 (getWitness!2097 (toList!11405 lt!2578802) lambda!441492))))

(assert (=> d!2249045 (exists!4239 lt!2578802 lambda!441492)))

(assert (=> d!2249045 (= (getWitness!2095 lt!2578802 lambda!441492) lt!2578980)))

(declare-fun b!7239803 () Bool)

(assert (=> b!7239803 (= e!4340568 (set.member lt!2578980 lt!2578802))))

(assert (= (and d!2249045 res!2937036) b!7239803))

(declare-fun b_lambda!277687 () Bool)

(assert (=> (not b_lambda!277687) (not d!2249045)))

(declare-fun m!7913038 () Bool)

(assert (=> d!2249045 m!7913038))

(assert (=> d!2249045 m!7912712))

(assert (=> d!2249045 m!7912712))

(declare-fun m!7913040 () Bool)

(assert (=> d!2249045 m!7913040))

(assert (=> d!2249045 m!7912720))

(declare-fun m!7913042 () Bool)

(assert (=> b!7239803 m!7913042))

(assert (=> b!7239650 d!2249045))

(declare-fun e!4340570 () (Set Context!14976))

(declare-fun call!659277 () (Set Context!14976))

(declare-fun b!7239804 () Bool)

(assert (=> b!7239804 (= e!4340570 (set.union call!659277 (derivationStepZipperUp!2422 (Context!14977 (t!384304 (exprs!7988 ct1!232))) (h!76576 s1!1971))))))

(declare-fun bm!659272 () Bool)

(assert (=> bm!659272 (= call!659277 (derivationStepZipperDown!2592 (h!76577 (exprs!7988 ct1!232)) (Context!14977 (t!384304 (exprs!7988 ct1!232))) (h!76576 s1!1971)))))

(declare-fun d!2249047 () Bool)

(declare-fun c!1344249 () Bool)

(declare-fun e!4340569 () Bool)

(assert (=> d!2249047 (= c!1344249 e!4340569)))

(declare-fun res!2937037 () Bool)

(assert (=> d!2249047 (=> (not res!2937037) (not e!4340569))))

(assert (=> d!2249047 (= res!2937037 (is-Cons!70129 (exprs!7988 ct1!232)))))

(assert (=> d!2249047 (= (derivationStepZipperUp!2422 ct1!232 (h!76576 s1!1971)) e!4340570)))

(declare-fun b!7239805 () Bool)

(declare-fun e!4340571 () (Set Context!14976))

(assert (=> b!7239805 (= e!4340571 call!659277)))

(declare-fun b!7239806 () Bool)

(assert (=> b!7239806 (= e!4340570 e!4340571)))

(declare-fun c!1344248 () Bool)

(assert (=> b!7239806 (= c!1344248 (is-Cons!70129 (exprs!7988 ct1!232)))))

(declare-fun b!7239807 () Bool)

(assert (=> b!7239807 (= e!4340571 (as set.empty (Set Context!14976)))))

(declare-fun b!7239808 () Bool)

(assert (=> b!7239808 (= e!4340569 (nullable!7861 (h!76577 (exprs!7988 ct1!232))))))

(assert (= (and d!2249047 res!2937037) b!7239808))

(assert (= (and d!2249047 c!1344249) b!7239804))

(assert (= (and d!2249047 (not c!1344249)) b!7239806))

(assert (= (and b!7239806 c!1344248) b!7239805))

(assert (= (and b!7239806 (not c!1344248)) b!7239807))

(assert (= (or b!7239804 b!7239805) bm!659272))

(declare-fun m!7913044 () Bool)

(assert (=> b!7239804 m!7913044))

(declare-fun m!7913046 () Bool)

(assert (=> bm!659272 m!7913046))

(assert (=> b!7239808 m!7912654))

(assert (=> b!7239650 d!2249047))

(declare-fun d!2249049 () Bool)

(declare-fun res!2937042 () Bool)

(declare-fun e!4340576 () Bool)

(assert (=> d!2249049 (=> res!2937042 e!4340576)))

(assert (=> d!2249049 (= res!2937042 (is-Nil!70129 (exprs!7988 ct1!232)))))

(assert (=> d!2249049 (= (forall!17384 (exprs!7988 ct1!232) lambda!441491) e!4340576)))

(declare-fun b!7239813 () Bool)

(declare-fun e!4340577 () Bool)

(assert (=> b!7239813 (= e!4340576 e!4340577)))

(declare-fun res!2937043 () Bool)

(assert (=> b!7239813 (=> (not res!2937043) (not e!4340577))))

(declare-fun dynLambda!28622 (Int Regex!18548) Bool)

(assert (=> b!7239813 (= res!2937043 (dynLambda!28622 lambda!441491 (h!76577 (exprs!7988 ct1!232))))))

(declare-fun b!7239814 () Bool)

(assert (=> b!7239814 (= e!4340577 (forall!17384 (t!384304 (exprs!7988 ct1!232)) lambda!441491))))

(assert (= (and d!2249049 (not res!2937042)) b!7239813))

(assert (= (and b!7239813 res!2937043) b!7239814))

(declare-fun b_lambda!277689 () Bool)

(assert (=> (not b_lambda!277689) (not b!7239813)))

(declare-fun m!7913048 () Bool)

(assert (=> b!7239813 m!7913048))

(declare-fun m!7913050 () Bool)

(assert (=> b!7239814 m!7913050))

(assert (=> b!7239640 d!2249049))

(declare-fun d!2249051 () Bool)

(declare-fun c!1344250 () Bool)

(assert (=> d!2249051 (= c!1344250 (isEmpty!40413 lt!2578793))))

(declare-fun e!4340578 () Bool)

(assert (=> d!2249051 (= (matchZipper!3458 (content!14471 lt!2578812) lt!2578793) e!4340578)))

(declare-fun b!7239815 () Bool)

(assert (=> b!7239815 (= e!4340578 (nullableZipper!2842 (content!14471 lt!2578812)))))

(declare-fun b!7239816 () Bool)

(assert (=> b!7239816 (= e!4340578 (matchZipper!3458 (derivationStepZipper!3340 (content!14471 lt!2578812) (head!14831 lt!2578793)) (tail!14206 lt!2578793)))))

(assert (= (and d!2249051 c!1344250) b!7239815))

(assert (= (and d!2249051 (not c!1344250)) b!7239816))

(assert (=> d!2249051 m!7912840))

(assert (=> b!7239815 m!7912624))

(declare-fun m!7913052 () Bool)

(assert (=> b!7239815 m!7913052))

(assert (=> b!7239816 m!7912844))

(assert (=> b!7239816 m!7912624))

(assert (=> b!7239816 m!7912844))

(declare-fun m!7913054 () Bool)

(assert (=> b!7239816 m!7913054))

(assert (=> b!7239816 m!7912848))

(assert (=> b!7239816 m!7913054))

(assert (=> b!7239816 m!7912848))

(declare-fun m!7913056 () Bool)

(assert (=> b!7239816 m!7913056))

(assert (=> b!7239640 d!2249051))

(assert (=> b!7239640 d!2249039))

(assert (=> b!7239640 d!2248993))

(declare-fun d!2249053 () Bool)

(declare-fun nullableFct!3080 (Regex!18548) Bool)

(assert (=> d!2249053 (= (nullable!7861 (h!76577 (exprs!7988 ct1!232))) (nullableFct!3080 (h!76577 (exprs!7988 ct1!232))))))

(declare-fun bs!1903883 () Bool)

(assert (= bs!1903883 d!2249053))

(declare-fun m!7913058 () Bool)

(assert (=> bs!1903883 m!7913058))

(assert (=> b!7239640 d!2249053))

(declare-fun d!2249055 () Bool)

(declare-fun e!4340579 () Bool)

(assert (=> d!2249055 e!4340579))

(declare-fun res!2937044 () Bool)

(assert (=> d!2249055 (=> (not res!2937044) (not e!4340579))))

(declare-fun lt!2578981 () List!70252)

(assert (=> d!2249055 (= res!2937044 (= (content!14474 lt!2578981) (set.union (content!14474 s1!1971) (content!14474 s2!1849))))))

(declare-fun e!4340580 () List!70252)

(assert (=> d!2249055 (= lt!2578981 e!4340580)))

(declare-fun c!1344251 () Bool)

(assert (=> d!2249055 (= c!1344251 (is-Nil!70128 s1!1971))))

(assert (=> d!2249055 (= (++!16396 s1!1971 s2!1849) lt!2578981)))

(declare-fun b!7239819 () Bool)

(declare-fun res!2937045 () Bool)

(assert (=> b!7239819 (=> (not res!2937045) (not e!4340579))))

(assert (=> b!7239819 (= res!2937045 (= (size!41616 lt!2578981) (+ (size!41616 s1!1971) (size!41616 s2!1849))))))

(declare-fun b!7239817 () Bool)

(assert (=> b!7239817 (= e!4340580 s2!1849)))

(declare-fun b!7239818 () Bool)

(assert (=> b!7239818 (= e!4340580 (Cons!70128 (h!76576 s1!1971) (++!16396 (t!384303 s1!1971) s2!1849)))))

(declare-fun b!7239820 () Bool)

(assert (=> b!7239820 (= e!4340579 (or (not (= s2!1849 Nil!70128)) (= lt!2578981 s1!1971)))))

(assert (= (and d!2249055 c!1344251) b!7239817))

(assert (= (and d!2249055 (not c!1344251)) b!7239818))

(assert (= (and d!2249055 res!2937044) b!7239819))

(assert (= (and b!7239819 res!2937045) b!7239820))

(declare-fun m!7913060 () Bool)

(assert (=> d!2249055 m!7913060))

(declare-fun m!7913062 () Bool)

(assert (=> d!2249055 m!7913062))

(assert (=> d!2249055 m!7913028))

(declare-fun m!7913064 () Bool)

(assert (=> b!7239819 m!7913064))

(declare-fun m!7913066 () Bool)

(assert (=> b!7239819 m!7913066))

(assert (=> b!7239819 m!7913034))

(assert (=> b!7239818 m!7912616))

(assert (=> b!7239640 d!2249055))

(declare-fun e!4340582 () (Set Context!14976))

(declare-fun call!659278 () (Set Context!14976))

(declare-fun b!7239821 () Bool)

(assert (=> b!7239821 (= e!4340582 (set.union call!659278 (derivationStepZipperUp!2422 (Context!14977 (t!384304 (exprs!7988 lt!2578814))) (h!76576 s1!1971))))))

(declare-fun bm!659273 () Bool)

(assert (=> bm!659273 (= call!659278 (derivationStepZipperDown!2592 (h!76577 (exprs!7988 lt!2578814)) (Context!14977 (t!384304 (exprs!7988 lt!2578814))) (h!76576 s1!1971)))))

(declare-fun d!2249057 () Bool)

(declare-fun c!1344253 () Bool)

(declare-fun e!4340581 () Bool)

(assert (=> d!2249057 (= c!1344253 e!4340581)))

(declare-fun res!2937046 () Bool)

(assert (=> d!2249057 (=> (not res!2937046) (not e!4340581))))

(assert (=> d!2249057 (= res!2937046 (is-Cons!70129 (exprs!7988 lt!2578814)))))

(assert (=> d!2249057 (= (derivationStepZipperUp!2422 lt!2578814 (h!76576 s1!1971)) e!4340582)))

(declare-fun b!7239822 () Bool)

(declare-fun e!4340583 () (Set Context!14976))

(assert (=> b!7239822 (= e!4340583 call!659278)))

(declare-fun b!7239823 () Bool)

(assert (=> b!7239823 (= e!4340582 e!4340583)))

(declare-fun c!1344252 () Bool)

(assert (=> b!7239823 (= c!1344252 (is-Cons!70129 (exprs!7988 lt!2578814)))))

(declare-fun b!7239824 () Bool)

(assert (=> b!7239824 (= e!4340583 (as set.empty (Set Context!14976)))))

(declare-fun b!7239825 () Bool)

(assert (=> b!7239825 (= e!4340581 (nullable!7861 (h!76577 (exprs!7988 lt!2578814))))))

(assert (= (and d!2249057 res!2937046) b!7239825))

(assert (= (and d!2249057 c!1344253) b!7239821))

(assert (= (and d!2249057 (not c!1344253)) b!7239823))

(assert (= (and b!7239823 c!1344252) b!7239822))

(assert (= (and b!7239823 (not c!1344252)) b!7239824))

(assert (= (or b!7239821 b!7239822) bm!659273))

(declare-fun m!7913068 () Bool)

(assert (=> b!7239821 m!7913068))

(declare-fun m!7913070 () Bool)

(assert (=> bm!659273 m!7913070))

(declare-fun m!7913072 () Bool)

(assert (=> b!7239825 m!7913072))

(assert (=> b!7239640 d!2249057))

(assert (=> b!7239640 d!2249011))

(assert (=> b!7239640 d!2249047))

(declare-fun b!7239848 () Bool)

(declare-fun e!4340601 () (Set Context!14976))

(assert (=> b!7239848 (= e!4340601 (as set.empty (Set Context!14976)))))

(declare-fun bm!659286 () Bool)

(declare-fun call!659294 () List!70253)

(declare-fun call!659293 () (Set Context!14976))

(declare-fun c!1344267 () Bool)

(declare-fun c!1344266 () Bool)

(declare-fun c!1344264 () Bool)

(assert (=> bm!659286 (= call!659293 (derivationStepZipperDown!2592 (ite c!1344267 (regTwo!37609 (h!76577 (exprs!7988 ct1!232))) (ite c!1344264 (regTwo!37608 (h!76577 (exprs!7988 ct1!232))) (ite c!1344266 (regOne!37608 (h!76577 (exprs!7988 ct1!232))) (reg!18877 (h!76577 (exprs!7988 ct1!232)))))) (ite (or c!1344267 c!1344264) lt!2578808 (Context!14977 call!659294)) (h!76576 s1!1971)))))

(declare-fun call!659292 () List!70253)

(declare-fun bm!659287 () Bool)

(declare-fun call!659296 () (Set Context!14976))

(assert (=> bm!659287 (= call!659296 (derivationStepZipperDown!2592 (ite c!1344267 (regOne!37609 (h!76577 (exprs!7988 ct1!232))) (regOne!37608 (h!76577 (exprs!7988 ct1!232)))) (ite c!1344267 lt!2578808 (Context!14977 call!659292)) (h!76576 s1!1971)))))

(declare-fun bm!659288 () Bool)

(assert (=> bm!659288 (= call!659294 call!659292)))

(declare-fun b!7239849 () Bool)

(declare-fun e!4340597 () Bool)

(assert (=> b!7239849 (= c!1344264 e!4340597)))

(declare-fun res!2937049 () Bool)

(assert (=> b!7239849 (=> (not res!2937049) (not e!4340597))))

(assert (=> b!7239849 (= res!2937049 (is-Concat!27393 (h!76577 (exprs!7988 ct1!232))))))

(declare-fun e!4340599 () (Set Context!14976))

(declare-fun e!4340596 () (Set Context!14976))

(assert (=> b!7239849 (= e!4340599 e!4340596)))

(declare-fun b!7239850 () Bool)

(declare-fun c!1344268 () Bool)

(assert (=> b!7239850 (= c!1344268 (is-Star!18548 (h!76577 (exprs!7988 ct1!232))))))

(declare-fun e!4340600 () (Set Context!14976))

(assert (=> b!7239850 (= e!4340600 e!4340601)))

(declare-fun d!2249059 () Bool)

(declare-fun c!1344265 () Bool)

(assert (=> d!2249059 (= c!1344265 (and (is-ElementMatch!18548 (h!76577 (exprs!7988 ct1!232))) (= (c!1344196 (h!76577 (exprs!7988 ct1!232))) (h!76576 s1!1971))))))

(declare-fun e!4340598 () (Set Context!14976))

(assert (=> d!2249059 (= (derivationStepZipperDown!2592 (h!76577 (exprs!7988 ct1!232)) lt!2578808 (h!76576 s1!1971)) e!4340598)))

(declare-fun b!7239851 () Bool)

(declare-fun call!659295 () (Set Context!14976))

(assert (=> b!7239851 (= e!4340596 (set.union call!659296 call!659295))))

(declare-fun bm!659289 () Bool)

(declare-fun call!659291 () (Set Context!14976))

(assert (=> bm!659289 (= call!659291 call!659295)))

(declare-fun b!7239852 () Bool)

(assert (=> b!7239852 (= e!4340597 (nullable!7861 (regOne!37608 (h!76577 (exprs!7988 ct1!232)))))))

(declare-fun bm!659290 () Bool)

(declare-fun $colon$colon!2888 (List!70253 Regex!18548) List!70253)

(assert (=> bm!659290 (= call!659292 ($colon$colon!2888 (exprs!7988 lt!2578808) (ite (or c!1344264 c!1344266) (regTwo!37608 (h!76577 (exprs!7988 ct1!232))) (h!76577 (exprs!7988 ct1!232)))))))

(declare-fun b!7239853 () Bool)

(assert (=> b!7239853 (= e!4340600 call!659291)))

(declare-fun b!7239854 () Bool)

(assert (=> b!7239854 (= e!4340598 (set.insert lt!2578808 (as set.empty (Set Context!14976))))))

(declare-fun b!7239855 () Bool)

(assert (=> b!7239855 (= e!4340596 e!4340600)))

(assert (=> b!7239855 (= c!1344266 (is-Concat!27393 (h!76577 (exprs!7988 ct1!232))))))

(declare-fun b!7239856 () Bool)

(assert (=> b!7239856 (= e!4340601 call!659291)))

(declare-fun b!7239857 () Bool)

(assert (=> b!7239857 (= e!4340598 e!4340599)))

(assert (=> b!7239857 (= c!1344267 (is-Union!18548 (h!76577 (exprs!7988 ct1!232))))))

(declare-fun b!7239858 () Bool)

(assert (=> b!7239858 (= e!4340599 (set.union call!659296 call!659293))))

(declare-fun bm!659291 () Bool)

(assert (=> bm!659291 (= call!659295 call!659293)))

(assert (= (and d!2249059 c!1344265) b!7239854))

(assert (= (and d!2249059 (not c!1344265)) b!7239857))

(assert (= (and b!7239857 c!1344267) b!7239858))

(assert (= (and b!7239857 (not c!1344267)) b!7239849))

(assert (= (and b!7239849 res!2937049) b!7239852))

(assert (= (and b!7239849 c!1344264) b!7239851))

(assert (= (and b!7239849 (not c!1344264)) b!7239855))

(assert (= (and b!7239855 c!1344266) b!7239853))

(assert (= (and b!7239855 (not c!1344266)) b!7239850))

(assert (= (and b!7239850 c!1344268) b!7239856))

(assert (= (and b!7239850 (not c!1344268)) b!7239848))

(assert (= (or b!7239853 b!7239856) bm!659288))

(assert (= (or b!7239853 b!7239856) bm!659289))

(assert (= (or b!7239851 bm!659288) bm!659290))

(assert (= (or b!7239851 bm!659289) bm!659291))

(assert (= (or b!7239858 bm!659291) bm!659286))

(assert (= (or b!7239858 b!7239851) bm!659287))

(declare-fun m!7913074 () Bool)

(assert (=> bm!659287 m!7913074))

(declare-fun m!7913076 () Bool)

(assert (=> bm!659290 m!7913076))

(declare-fun m!7913078 () Bool)

(assert (=> b!7239854 m!7913078))

(declare-fun m!7913080 () Bool)

(assert (=> b!7239852 m!7913080))

(declare-fun m!7913082 () Bool)

(assert (=> bm!659286 m!7913082))

(assert (=> b!7239640 d!2249059))

(declare-fun d!2249061 () Bool)

(declare-fun c!1344271 () Bool)

(assert (=> d!2249061 (= c!1344271 (is-Nil!70130 lt!2578812))))

(declare-fun e!4340604 () (Set Context!14976))

(assert (=> d!2249061 (= (content!14471 lt!2578812) e!4340604)))

(declare-fun b!7239863 () Bool)

(assert (=> b!7239863 (= e!4340604 (as set.empty (Set Context!14976)))))

(declare-fun b!7239864 () Bool)

(assert (=> b!7239864 (= e!4340604 (set.union (set.insert (h!76578 lt!2578812) (as set.empty (Set Context!14976))) (content!14471 (t!384305 lt!2578812))))))

(assert (= (and d!2249061 c!1344271) b!7239863))

(assert (= (and d!2249061 (not c!1344271)) b!7239864))

(declare-fun m!7913084 () Bool)

(assert (=> b!7239864 m!7913084))

(declare-fun m!7913086 () Bool)

(assert (=> b!7239864 m!7913086))

(assert (=> b!7239640 d!2249061))

(declare-fun d!2249063 () Bool)

(declare-fun dynLambda!28623 (Int Context!14976) (Set Context!14976))

(assert (=> d!2249063 (= (flatMap!2752 lt!2578788 lambda!441493) (dynLambda!28623 lambda!441493 lt!2578814))))

(declare-fun lt!2578984 () Unit!163666)

(declare-fun choose!55733 ((Set Context!14976) Context!14976 Int) Unit!163666)

(assert (=> d!2249063 (= lt!2578984 (choose!55733 lt!2578788 lt!2578814 lambda!441493))))

(assert (=> d!2249063 (= lt!2578788 (set.insert lt!2578814 (as set.empty (Set Context!14976))))))

(assert (=> d!2249063 (= (lemmaFlatMapOnSingletonSet!2179 lt!2578788 lt!2578814 lambda!441493) lt!2578984)))

(declare-fun b_lambda!277691 () Bool)

(assert (=> (not b_lambda!277691) (not d!2249063)))

(declare-fun bs!1903884 () Bool)

(assert (= bs!1903884 d!2249063))

(assert (=> bs!1903884 m!7912646))

(declare-fun m!7913088 () Bool)

(assert (=> bs!1903884 m!7913088))

(declare-fun m!7913090 () Bool)

(assert (=> bs!1903884 m!7913090))

(assert (=> bs!1903884 m!7912702))

(assert (=> b!7239640 d!2249063))

(declare-fun d!2249065 () Bool)

(assert (=> d!2249065 (= (flatMap!2752 lt!2578784 lambda!441493) (dynLambda!28623 lambda!441493 ct1!232))))

(declare-fun lt!2578985 () Unit!163666)

(assert (=> d!2249065 (= lt!2578985 (choose!55733 lt!2578784 ct1!232 lambda!441493))))

(assert (=> d!2249065 (= lt!2578784 (set.insert ct1!232 (as set.empty (Set Context!14976))))))

(assert (=> d!2249065 (= (lemmaFlatMapOnSingletonSet!2179 lt!2578784 ct1!232 lambda!441493) lt!2578985)))

(declare-fun b_lambda!277693 () Bool)

(assert (=> (not b_lambda!277693) (not d!2249065)))

(declare-fun bs!1903885 () Bool)

(assert (= bs!1903885 d!2249065))

(assert (=> bs!1903885 m!7912622))

(declare-fun m!7913092 () Bool)

(assert (=> bs!1903885 m!7913092))

(declare-fun m!7913094 () Bool)

(assert (=> bs!1903885 m!7913094))

(assert (=> bs!1903885 m!7912666))

(assert (=> b!7239640 d!2249065))

(declare-fun d!2249067 () Bool)

(declare-fun choose!55734 ((Set Context!14976) Int) (Set Context!14976))

(assert (=> d!2249067 (= (flatMap!2752 lt!2578788 lambda!441493) (choose!55734 lt!2578788 lambda!441493))))

(declare-fun bs!1903886 () Bool)

(assert (= bs!1903886 d!2249067))

(declare-fun m!7913096 () Bool)

(assert (=> bs!1903886 m!7913096))

(assert (=> b!7239640 d!2249067))

(declare-fun d!2249069 () Bool)

(declare-fun e!4340605 () Bool)

(assert (=> d!2249069 e!4340605))

(declare-fun res!2937050 () Bool)

(assert (=> d!2249069 (=> (not res!2937050) (not e!4340605))))

(declare-fun lt!2578986 () List!70254)

(assert (=> d!2249069 (= res!2937050 (noDuplicate!2950 lt!2578986))))

(assert (=> d!2249069 (= lt!2578986 (choose!55730 lt!2578796))))

(assert (=> d!2249069 (= (toList!11405 lt!2578796) lt!2578986)))

(declare-fun b!7239865 () Bool)

(assert (=> b!7239865 (= e!4340605 (= (content!14471 lt!2578986) lt!2578796))))

(assert (= (and d!2249069 res!2937050) b!7239865))

(declare-fun m!7913098 () Bool)

(assert (=> d!2249069 m!7913098))

(declare-fun m!7913100 () Bool)

(assert (=> d!2249069 m!7913100))

(declare-fun m!7913102 () Bool)

(assert (=> b!7239865 m!7913102))

(assert (=> b!7239640 d!2249069))

(declare-fun bs!1903887 () Bool)

(declare-fun d!2249071 () Bool)

(assert (= bs!1903887 (and d!2249071 b!7239649)))

(declare-fun lambda!441558 () Int)

(assert (=> bs!1903887 (= (= lt!2578793 (t!384303 s1!1971)) (= lambda!441558 lambda!441492))))

(declare-fun bs!1903888 () Bool)

(assert (= bs!1903888 (and d!2249071 b!7239640)))

(assert (=> bs!1903888 (= lambda!441558 lambda!441494)))

(declare-fun bs!1903889 () Bool)

(assert (= bs!1903889 (and d!2249071 d!2249023)))

(assert (=> bs!1903889 (not (= lambda!441558 lambda!441548))))

(declare-fun bs!1903890 () Bool)

(assert (= bs!1903890 (and d!2249071 d!2249031)))

(assert (=> bs!1903890 (= (= lt!2578793 (t!384303 s1!1971)) (= lambda!441558 lambda!441552))))

(assert (=> d!2249071 true))

(assert (=> d!2249071 (matchZipper!3458 (content!14471 lt!2578812) lt!2578793)))

(declare-fun lt!2578989 () Unit!163666)

(declare-fun choose!55735 (List!70254 List!70252) Unit!163666)

(assert (=> d!2249071 (= lt!2578989 (choose!55735 lt!2578812 lt!2578793))))

(assert (=> d!2249071 (exists!4240 lt!2578812 lambda!441558)))

(assert (=> d!2249071 (= (lemmaExistsMatchingContextThenMatchingString!77 lt!2578812 lt!2578793) lt!2578989)))

(declare-fun bs!1903891 () Bool)

(assert (= bs!1903891 d!2249071))

(assert (=> bs!1903891 m!7912624))

(assert (=> bs!1903891 m!7912624))

(assert (=> bs!1903891 m!7912626))

(declare-fun m!7913104 () Bool)

(assert (=> bs!1903891 m!7913104))

(declare-fun m!7913106 () Bool)

(assert (=> bs!1903891 m!7913106))

(assert (=> b!7239640 d!2249071))

(declare-fun d!2249073 () Bool)

(assert (=> d!2249073 (= (flatMap!2752 lt!2578784 lambda!441493) (choose!55734 lt!2578784 lambda!441493))))

(declare-fun bs!1903892 () Bool)

(assert (= bs!1903892 d!2249073))

(declare-fun m!7913108 () Bool)

(assert (=> bs!1903892 m!7913108))

(assert (=> b!7239640 d!2249073))

(declare-fun bs!1903893 () Bool)

(declare-fun d!2249075 () Bool)

(assert (= bs!1903893 (and d!2249075 b!7239647)))

(declare-fun lambda!441563 () Int)

(assert (=> bs!1903893 (= lambda!441563 lambda!441491)))

(declare-fun bs!1903894 () Bool)

(assert (= bs!1903894 (and d!2249075 d!2249015)))

(assert (=> bs!1903894 (= lambda!441563 lambda!441544)))

(declare-fun bs!1903895 () Bool)

(assert (= bs!1903895 (and d!2249075 d!2249017)))

(assert (=> bs!1903895 (= lambda!441563 lambda!441545)))

(declare-fun bs!1903896 () Bool)

(assert (= bs!1903896 (and d!2249075 d!2249041)))

(assert (=> bs!1903896 (= lambda!441563 lambda!441555)))

(assert (=> d!2249075 (set.member (Context!14977 (++!16397 (exprs!7988 lt!2578816) (exprs!7988 ct2!328))) (derivationStepZipperUp!2422 (Context!14977 (++!16397 (exprs!7988 ct1!232) (exprs!7988 ct2!328))) (h!76576 s1!1971)))))

(declare-fun lt!2578998 () Unit!163666)

(assert (=> d!2249075 (= lt!2578998 (lemmaConcatPreservesForall!1357 (exprs!7988 ct1!232) (exprs!7988 ct2!328) lambda!441563))))

(declare-fun lt!2578997 () Unit!163666)

(assert (=> d!2249075 (= lt!2578997 (lemmaConcatPreservesForall!1357 (exprs!7988 lt!2578816) (exprs!7988 ct2!328) lambda!441563))))

(declare-fun lt!2578996 () Unit!163666)

(declare-fun choose!55736 (Context!14976 Context!14976 Context!14976 C!37370) Unit!163666)

(assert (=> d!2249075 (= lt!2578996 (choose!55736 ct1!232 ct2!328 lt!2578816 (h!76576 s1!1971)))))

(assert (=> d!2249075 (set.member lt!2578816 (derivationStepZipperUp!2422 ct1!232 (h!76576 s1!1971)))))

(assert (=> d!2249075 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!13 ct1!232 ct2!328 lt!2578816 (h!76576 s1!1971)) lt!2578996)))

(declare-fun bs!1903897 () Bool)

(assert (= bs!1903897 d!2249075))

(assert (=> bs!1903897 m!7912704))

(declare-fun m!7913110 () Bool)

(assert (=> bs!1903897 m!7913110))

(declare-fun m!7913112 () Bool)

(assert (=> bs!1903897 m!7913112))

(declare-fun m!7913114 () Bool)

(assert (=> bs!1903897 m!7913114))

(declare-fun m!7913116 () Bool)

(assert (=> bs!1903897 m!7913116))

(assert (=> bs!1903897 m!7912614))

(declare-fun m!7913118 () Bool)

(assert (=> bs!1903897 m!7913118))

(declare-fun m!7913120 () Bool)

(assert (=> bs!1903897 m!7913120))

(assert (=> bs!1903897 m!7912604))

(assert (=> b!7239640 d!2249075))

(declare-fun d!2249077 () Bool)

(assert (=> d!2249077 (= (tail!14206 (++!16396 s1!1971 s2!1849)) (t!384303 (++!16396 s1!1971 s2!1849)))))

(assert (=> b!7239640 d!2249077))

(declare-fun d!2249079 () Bool)

(assert (=> d!2249079 (exists!4239 lt!2578796 lambda!441494)))

(declare-fun lt!2579001 () Unit!163666)

(declare-fun choose!55737 ((Set Context!14976) Context!14976 Int) Unit!163666)

(assert (=> d!2249079 (= lt!2579001 (choose!55737 lt!2578796 lt!2578787 lambda!441494))))

(assert (=> d!2249079 (set.member lt!2578787 lt!2578796)))

(assert (=> d!2249079 (= (lemmaContainsThenExists!212 lt!2578796 lt!2578787 lambda!441494) lt!2579001)))

(declare-fun bs!1903898 () Bool)

(assert (= bs!1903898 d!2249079))

(assert (=> bs!1903898 m!7912630))

(declare-fun m!7913122 () Bool)

(assert (=> bs!1903898 m!7913122))

(assert (=> bs!1903898 m!7912650))

(assert (=> b!7239640 d!2249079))

(declare-fun d!2249081 () Bool)

(assert (=> d!2249081 (= (tail!14207 lt!2578797) (t!384304 lt!2578797))))

(assert (=> b!7239640 d!2249081))

(declare-fun d!2249083 () Bool)

(assert (=> d!2249083 (= (tail!14207 (exprs!7988 ct1!232)) (t!384304 (exprs!7988 ct1!232)))))

(assert (=> b!7239641 d!2249083))

(assert (=> b!7239641 d!2248993))

(declare-fun b!7239866 () Bool)

(declare-fun e!4340612 () (Set Context!14976))

(assert (=> b!7239866 (= e!4340612 (as set.empty (Set Context!14976)))))

(declare-fun call!659300 () List!70253)

(declare-fun call!659299 () (Set Context!14976))

(declare-fun c!1344278 () Bool)

(declare-fun bm!659292 () Bool)

(declare-fun c!1344277 () Bool)

(declare-fun c!1344275 () Bool)

(assert (=> bm!659292 (= call!659299 (derivationStepZipperDown!2592 (ite c!1344278 (regTwo!37609 (h!76577 (exprs!7988 ct1!232))) (ite c!1344275 (regTwo!37608 (h!76577 (exprs!7988 ct1!232))) (ite c!1344277 (regOne!37608 (h!76577 (exprs!7988 ct1!232))) (reg!18877 (h!76577 (exprs!7988 ct1!232)))))) (ite (or c!1344278 c!1344275) lt!2578804 (Context!14977 call!659300)) (h!76576 s1!1971)))))

(declare-fun call!659298 () List!70253)

(declare-fun call!659302 () (Set Context!14976))

(declare-fun bm!659293 () Bool)

(assert (=> bm!659293 (= call!659302 (derivationStepZipperDown!2592 (ite c!1344278 (regOne!37609 (h!76577 (exprs!7988 ct1!232))) (regOne!37608 (h!76577 (exprs!7988 ct1!232)))) (ite c!1344278 lt!2578804 (Context!14977 call!659298)) (h!76576 s1!1971)))))

(declare-fun bm!659294 () Bool)

(assert (=> bm!659294 (= call!659300 call!659298)))

(declare-fun b!7239867 () Bool)

(declare-fun e!4340608 () Bool)

(assert (=> b!7239867 (= c!1344275 e!4340608)))

(declare-fun res!2937051 () Bool)

(assert (=> b!7239867 (=> (not res!2937051) (not e!4340608))))

(assert (=> b!7239867 (= res!2937051 (is-Concat!27393 (h!76577 (exprs!7988 ct1!232))))))

(declare-fun e!4340610 () (Set Context!14976))

(declare-fun e!4340607 () (Set Context!14976))

(assert (=> b!7239867 (= e!4340610 e!4340607)))

(declare-fun b!7239868 () Bool)

(declare-fun c!1344279 () Bool)

(assert (=> b!7239868 (= c!1344279 (is-Star!18548 (h!76577 (exprs!7988 ct1!232))))))

(declare-fun e!4340611 () (Set Context!14976))

(assert (=> b!7239868 (= e!4340611 e!4340612)))

(declare-fun d!2249085 () Bool)

(declare-fun c!1344276 () Bool)

(assert (=> d!2249085 (= c!1344276 (and (is-ElementMatch!18548 (h!76577 (exprs!7988 ct1!232))) (= (c!1344196 (h!76577 (exprs!7988 ct1!232))) (h!76576 s1!1971))))))

(declare-fun e!4340609 () (Set Context!14976))

(assert (=> d!2249085 (= (derivationStepZipperDown!2592 (h!76577 (exprs!7988 ct1!232)) lt!2578804 (h!76576 s1!1971)) e!4340609)))

(declare-fun b!7239869 () Bool)

(declare-fun call!659301 () (Set Context!14976))

(assert (=> b!7239869 (= e!4340607 (set.union call!659302 call!659301))))

(declare-fun bm!659295 () Bool)

(declare-fun call!659297 () (Set Context!14976))

(assert (=> bm!659295 (= call!659297 call!659301)))

(declare-fun b!7239870 () Bool)

(assert (=> b!7239870 (= e!4340608 (nullable!7861 (regOne!37608 (h!76577 (exprs!7988 ct1!232)))))))

(declare-fun bm!659296 () Bool)

(assert (=> bm!659296 (= call!659298 ($colon$colon!2888 (exprs!7988 lt!2578804) (ite (or c!1344275 c!1344277) (regTwo!37608 (h!76577 (exprs!7988 ct1!232))) (h!76577 (exprs!7988 ct1!232)))))))

(declare-fun b!7239871 () Bool)

(assert (=> b!7239871 (= e!4340611 call!659297)))

(declare-fun b!7239872 () Bool)

(assert (=> b!7239872 (= e!4340609 (set.insert lt!2578804 (as set.empty (Set Context!14976))))))

(declare-fun b!7239873 () Bool)

(assert (=> b!7239873 (= e!4340607 e!4340611)))

(assert (=> b!7239873 (= c!1344277 (is-Concat!27393 (h!76577 (exprs!7988 ct1!232))))))

(declare-fun b!7239874 () Bool)

(assert (=> b!7239874 (= e!4340612 call!659297)))

(declare-fun b!7239875 () Bool)

(assert (=> b!7239875 (= e!4340609 e!4340610)))

(assert (=> b!7239875 (= c!1344278 (is-Union!18548 (h!76577 (exprs!7988 ct1!232))))))

(declare-fun b!7239876 () Bool)

(assert (=> b!7239876 (= e!4340610 (set.union call!659302 call!659299))))

(declare-fun bm!659297 () Bool)

(assert (=> bm!659297 (= call!659301 call!659299)))

(assert (= (and d!2249085 c!1344276) b!7239872))

(assert (= (and d!2249085 (not c!1344276)) b!7239875))

(assert (= (and b!7239875 c!1344278) b!7239876))

(assert (= (and b!7239875 (not c!1344278)) b!7239867))

(assert (= (and b!7239867 res!2937051) b!7239870))

(assert (= (and b!7239867 c!1344275) b!7239869))

(assert (= (and b!7239867 (not c!1344275)) b!7239873))

(assert (= (and b!7239873 c!1344277) b!7239871))

(assert (= (and b!7239873 (not c!1344277)) b!7239868))

(assert (= (and b!7239868 c!1344279) b!7239874))

(assert (= (and b!7239868 (not c!1344279)) b!7239866))

(assert (= (or b!7239871 b!7239874) bm!659294))

(assert (= (or b!7239871 b!7239874) bm!659295))

(assert (= (or b!7239869 bm!659294) bm!659296))

(assert (= (or b!7239869 bm!659295) bm!659297))

(assert (= (or b!7239876 bm!659297) bm!659292))

(assert (= (or b!7239876 b!7239869) bm!659293))

(declare-fun m!7913124 () Bool)

(assert (=> bm!659293 m!7913124))

(declare-fun m!7913126 () Bool)

(assert (=> bm!659296 m!7913126))

(declare-fun m!7913128 () Bool)

(assert (=> b!7239872 m!7913128))

(assert (=> b!7239870 m!7913080))

(declare-fun m!7913130 () Bool)

(assert (=> bm!659292 m!7913130))

(assert (=> b!7239641 d!2249085))

(assert (=> b!7239641 d!2249057))

(declare-fun d!2249087 () Bool)

(assert (=> d!2249087 (= (isEmpty!40411 lt!2578797) (is-Nil!70129 lt!2578797))))

(assert (=> b!7239641 d!2249087))

(declare-fun b!7239881 () Bool)

(declare-fun e!4340615 () Bool)

(declare-fun tp!2035107 () Bool)

(assert (=> b!7239881 (= e!4340615 (and tp_is_empty!46561 tp!2035107))))

(assert (=> b!7239643 (= tp!2035089 e!4340615)))

(assert (= (and b!7239643 (is-Cons!70128 (t!384303 s1!1971))) b!7239881))

(declare-fun b!7239886 () Bool)

(declare-fun e!4340618 () Bool)

(declare-fun tp!2035112 () Bool)

(declare-fun tp!2035113 () Bool)

(assert (=> b!7239886 (= e!4340618 (and tp!2035112 tp!2035113))))

(assert (=> b!7239648 (= tp!2035090 e!4340618)))

(assert (= (and b!7239648 (is-Cons!70129 (exprs!7988 ct2!328))) b!7239886))

(declare-fun b!7239887 () Bool)

(declare-fun e!4340619 () Bool)

(declare-fun tp!2035114 () Bool)

(assert (=> b!7239887 (= e!4340619 (and tp_is_empty!46561 tp!2035114))))

(assert (=> b!7239651 (= tp!2035092 e!4340619)))

(assert (= (and b!7239651 (is-Cons!70128 (t!384303 s2!1849))) b!7239887))

(declare-fun b!7239888 () Bool)

(declare-fun e!4340620 () Bool)

(declare-fun tp!2035115 () Bool)

(declare-fun tp!2035116 () Bool)

(assert (=> b!7239888 (= e!4340620 (and tp!2035115 tp!2035116))))

(assert (=> b!7239652 (= tp!2035091 e!4340620)))

(assert (= (and b!7239652 (is-Cons!70129 (exprs!7988 ct1!232))) b!7239888))

(declare-fun b_lambda!277695 () Bool)

(assert (= b_lambda!277691 (or b!7239640 b_lambda!277695)))

(declare-fun bs!1903899 () Bool)

(declare-fun d!2249089 () Bool)

(assert (= bs!1903899 (and d!2249089 b!7239640)))

(assert (=> bs!1903899 (= (dynLambda!28623 lambda!441493 lt!2578814) (derivationStepZipperUp!2422 lt!2578814 (h!76576 s1!1971)))))

(assert (=> bs!1903899 m!7912660))

(assert (=> d!2249063 d!2249089))

(declare-fun b_lambda!277697 () Bool)

(assert (= b_lambda!277689 (or b!7239647 b_lambda!277697)))

(declare-fun bs!1903900 () Bool)

(declare-fun d!2249091 () Bool)

(assert (= bs!1903900 (and d!2249091 b!7239647)))

(declare-fun validRegex!9529 (Regex!18548) Bool)

(assert (=> bs!1903900 (= (dynLambda!28622 lambda!441491 (h!76577 (exprs!7988 ct1!232))) (validRegex!9529 (h!76577 (exprs!7988 ct1!232))))))

(declare-fun m!7913132 () Bool)

(assert (=> bs!1903900 m!7913132))

(assert (=> b!7239813 d!2249091))

(declare-fun b_lambda!277699 () Bool)

(assert (= b_lambda!277687 (or b!7239649 b_lambda!277699)))

(declare-fun bs!1903901 () Bool)

(declare-fun d!2249093 () Bool)

(assert (= bs!1903901 (and d!2249093 b!7239649)))

(assert (=> bs!1903901 (= (dynLambda!28621 lambda!441492 lt!2578980) (matchZipper!3458 (set.insert lt!2578980 (as set.empty (Set Context!14976))) (t!384303 s1!1971)))))

(declare-fun m!7913134 () Bool)

(assert (=> bs!1903901 m!7913134))

(assert (=> bs!1903901 m!7913134))

(declare-fun m!7913136 () Bool)

(assert (=> bs!1903901 m!7913136))

(assert (=> d!2249045 d!2249093))

(declare-fun b_lambda!277701 () Bool)

(assert (= b_lambda!277693 (or b!7239640 b_lambda!277701)))

(declare-fun bs!1903902 () Bool)

(declare-fun d!2249095 () Bool)

(assert (= bs!1903902 (and d!2249095 b!7239640)))

(assert (=> bs!1903902 (= (dynLambda!28623 lambda!441493 ct1!232) (derivationStepZipperUp!2422 ct1!232 (h!76576 s1!1971)))))

(assert (=> bs!1903902 m!7912614))

(assert (=> d!2249065 d!2249095))

(push 1)

(assert (not b!7239756))

(assert (not b!7239721))

(assert (not b!7239722))

(assert (not bm!659290))

(assert (not b!7239754))

(assert (not b!7239761))

(assert (not b!7239865))

(assert (not b!7239728))

(assert (not d!2249007))

(assert (not b!7239881))

(assert (not b_lambda!277697))

(assert (not b!7239814))

(assert (not b!7239887))

(assert (not b!7239762))

(assert (not bm!659287))

(assert (not b!7239749))

(assert (not b!7239852))

(assert (not d!2249053))

(assert (not b!7239785))

(assert (not d!2248985))

(assert (not d!2248989))

(assert (not d!2249025))

(assert (not b!7239784))

(assert (not b!7239745))

(assert (not d!2249023))

(assert (not d!2249069))

(assert (not b!7239798))

(assert (not b!7239764))

(assert (not d!2248987))

(assert (not b!7239816))

(assert (not d!2249043))

(assert (not d!2249079))

(assert (not b!7239787))

(assert (not bs!1903899))

(assert (not b!7239821))

(assert (not d!2249029))

(assert (not d!2249075))

(assert tp_is_empty!46561)

(assert (not d!2249037))

(assert (not b!7239751))

(assert (not bm!659296))

(assert (not b!7239724))

(assert (not d!2249011))

(assert (not b!7239819))

(assert (not bm!659273))

(assert (not b!7239729))

(assert (not b!7239755))

(assert (not bm!659292))

(assert (not d!2249063))

(assert (not b!7239808))

(assert (not d!2249021))

(assert (not d!2249003))

(assert (not b!7239744))

(assert (not d!2249015))

(assert (not d!2249067))

(assert (not bs!1903901))

(assert (not b!7239804))

(assert (not d!2249039))

(assert (not d!2249013))

(assert (not b!7239825))

(assert (not b!7239864))

(assert (not d!2249005))

(assert (not b!7239725))

(assert (not d!2248991))

(assert (not d!2249027))

(assert (not b!7239788))

(assert (not b!7239782))

(assert (not d!2249031))

(assert (not b!7239870))

(assert (not b!7239758))

(assert (not b!7239750))

(assert (not d!2249045))

(assert (not b!7239799))

(assert (not d!2248983))

(assert (not d!2249017))

(assert (not b!7239763))

(assert (not b!7239776))

(assert (not d!2249041))

(assert (not bs!1903902))

(assert (not bm!659286))

(assert (not bm!659272))

(assert (not d!2249051))

(assert (not d!2249055))

(assert (not b!7239818))

(assert (not b!7239775))

(assert (not d!2249009))

(assert (not b!7239765))

(assert (not bm!659271))

(assert (not b_lambda!277699))

(assert (not d!2248993))

(assert (not d!2249065))

(assert (not b!7239723))

(assert (not b_lambda!277701))

(assert (not b!7239815))

(assert (not d!2249073))

(assert (not d!2249071))

(assert (not d!2249019))

(assert (not d!2248999))

(assert (not b!7239759))

(assert (not b!7239757))

(assert (not b!7239740))

(assert (not b_lambda!277695))

(assert (not d!2249001))

(assert (not b!7239888))

(assert (not b!7239886))

(assert (not d!2249033))

(assert (not bm!659270))

(assert (not b!7239720))

(assert (not bm!659293))

(assert (not b!7239760))

(assert (not bs!1903900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

