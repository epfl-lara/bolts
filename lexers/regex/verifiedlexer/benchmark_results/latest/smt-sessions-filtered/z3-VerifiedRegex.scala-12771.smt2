; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!705984 () Bool)

(assert start!705984)

(declare-fun b!7252467 () Bool)

(assert (=> b!7252467 true))

(declare-fun b!7252466 () Bool)

(assert (=> b!7252466 true))

(declare-fun b!7252463 () Bool)

(declare-fun res!2941318 () Bool)

(declare-fun e!4348650 () Bool)

(assert (=> b!7252463 (=> res!2941318 e!4348650)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37576 0))(
  ( (C!37577 (val!28736 Int)) )
))
(declare-datatypes ((Regex!18651 0))(
  ( (ElementMatch!18651 (c!1347997 C!37576)) (Concat!27496 (regOne!37814 Regex!18651) (regTwo!37814 Regex!18651)) (EmptyExpr!18651) (Star!18651 (reg!18980 Regex!18651)) (EmptyLang!18651) (Union!18651 (regOne!37815 Regex!18651) (regTwo!37815 Regex!18651)) )
))
(declare-datatypes ((List!70533 0))(
  ( (Nil!70409) (Cons!70409 (h!76857 Regex!18651) (t!384591 List!70533)) )
))
(declare-datatypes ((Context!15182 0))(
  ( (Context!15183 (exprs!8091 List!70533)) )
))
(declare-fun lt!2585610 () (InoxSet Context!15182))

(declare-fun lt!2585599 () (InoxSet Context!15182))

(assert (=> b!7252463 (= res!2941318 (not (= lt!2585610 lt!2585599)))))

(declare-fun b!7252464 () Bool)

(declare-fun res!2941316 () Bool)

(assert (=> b!7252464 (=> res!2941316 e!4348650)))

(declare-fun lt!2585609 () Context!15182)

(declare-fun lt!2585616 () (InoxSet Context!15182))

(declare-datatypes ((List!70534 0))(
  ( (Nil!70410) (Cons!70410 (h!76858 C!37576) (t!384592 List!70534)) )
))
(declare-fun s1!1971 () List!70534)

(declare-fun derivationStepZipperUp!2475 (Context!15182 C!37576) (InoxSet Context!15182))

(assert (=> b!7252464 (= res!2941316 (not (= lt!2585599 ((_ map or) lt!2585616 (derivationStepZipperUp!2475 lt!2585609 (h!76858 s1!1971))))))))

(declare-fun res!2941317 () Bool)

(declare-fun e!4348648 () Bool)

(assert (=> start!705984 (=> (not res!2941317) (not e!4348648))))

(declare-fun lt!2585601 () (InoxSet Context!15182))

(declare-fun matchZipper!3561 ((InoxSet Context!15182) List!70534) Bool)

(assert (=> start!705984 (= res!2941317 (matchZipper!3561 lt!2585601 s1!1971))))

(declare-fun ct1!232 () Context!15182)

(assert (=> start!705984 (= lt!2585601 (store ((as const (Array Context!15182 Bool)) false) ct1!232 true))))

(assert (=> start!705984 e!4348648))

(declare-fun e!4348651 () Bool)

(declare-fun inv!89637 (Context!15182) Bool)

(assert (=> start!705984 (and (inv!89637 ct1!232) e!4348651)))

(declare-fun e!4348652 () Bool)

(assert (=> start!705984 e!4348652))

(declare-fun e!4348646 () Bool)

(assert (=> start!705984 e!4348646))

(declare-fun ct2!328 () Context!15182)

(declare-fun e!4348653 () Bool)

(assert (=> start!705984 (and (inv!89637 ct2!328) e!4348653)))

(declare-fun b!7252465 () Bool)

(declare-fun tp!2037697 () Bool)

(assert (=> b!7252465 (= e!4348653 tp!2037697)))

(declare-fun e!4348645 () Bool)

(assert (=> b!7252466 (= e!4348645 e!4348650)))

(declare-fun res!2941315 () Bool)

(assert (=> b!7252466 (=> res!2941315 e!4348650)))

(declare-fun nullable!7911 (Regex!18651) Bool)

(assert (=> b!7252466 (= res!2941315 (not (nullable!7911 (h!76857 (exprs!8091 ct1!232)))))))

(declare-fun lt!2585605 () (InoxSet Context!15182))

(declare-fun lt!2585620 () Context!15182)

(declare-fun lambda!444488 () Int)

(declare-fun flatMap!2816 ((InoxSet Context!15182) Int) (InoxSet Context!15182))

(assert (=> b!7252466 (= (flatMap!2816 lt!2585605 lambda!444488) (derivationStepZipperUp!2475 lt!2585620 (h!76858 s1!1971)))))

(declare-datatypes ((Unit!163889 0))(
  ( (Unit!163890) )
))
(declare-fun lt!2585607 () Unit!163889)

(declare-fun lemmaFlatMapOnSingletonSet!2220 ((InoxSet Context!15182) Context!15182 Int) Unit!163889)

(assert (=> b!7252466 (= lt!2585607 (lemmaFlatMapOnSingletonSet!2220 lt!2585605 lt!2585620 lambda!444488))))

(declare-fun lambda!444486 () Int)

(declare-fun lt!2585604 () Unit!163889)

(declare-fun lemmaConcatPreservesForall!1458 (List!70533 List!70533 Int) Unit!163889)

(assert (=> b!7252466 (= lt!2585604 (lemmaConcatPreservesForall!1458 (exprs!8091 ct1!232) (exprs!8091 ct2!328) lambda!444486))))

(assert (=> b!7252466 (= (flatMap!2816 lt!2585601 lambda!444488) (derivationStepZipperUp!2475 ct1!232 (h!76858 s1!1971)))))

(declare-fun lt!2585603 () Unit!163889)

(assert (=> b!7252466 (= lt!2585603 (lemmaFlatMapOnSingletonSet!2220 lt!2585601 ct1!232 lambda!444488))))

(declare-fun lt!2585615 () (InoxSet Context!15182))

(declare-fun lt!2585617 () Context!15182)

(declare-fun derivationStepZipperDown!2645 (Regex!18651 Context!15182 C!37576) (InoxSet Context!15182))

(assert (=> b!7252466 (= lt!2585615 (derivationStepZipperDown!2645 (h!76857 (exprs!8091 ct1!232)) lt!2585617 (h!76858 s1!1971)))))

(declare-fun lt!2585611 () List!70533)

(declare-fun tail!14329 (List!70533) List!70533)

(assert (=> b!7252466 (= lt!2585617 (Context!15183 (tail!14329 lt!2585611)))))

(declare-fun e!4348654 () Bool)

(declare-fun e!4348644 () Bool)

(assert (=> b!7252467 (= e!4348654 (not e!4348644))))

(declare-fun res!2941310 () Bool)

(assert (=> b!7252467 (=> res!2941310 e!4348644)))

(declare-fun lambda!444487 () Int)

(declare-fun exists!4380 ((InoxSet Context!15182) Int) Bool)

(assert (=> b!7252467 (= res!2941310 (not (exists!4380 lt!2585610 lambda!444487)))))

(declare-datatypes ((List!70535 0))(
  ( (Nil!70411) (Cons!70411 (h!76859 Context!15182) (t!384593 List!70535)) )
))
(declare-fun lt!2585623 () List!70535)

(declare-fun exists!4381 (List!70535 Int) Bool)

(assert (=> b!7252467 (exists!4381 lt!2585623 lambda!444487)))

(declare-fun lt!2585619 () Unit!163889)

(declare-fun lemmaZipperMatchesExistsMatchingContext!754 (List!70535 List!70534) Unit!163889)

(assert (=> b!7252467 (= lt!2585619 (lemmaZipperMatchesExistsMatchingContext!754 lt!2585623 (t!384592 s1!1971)))))

(declare-fun toList!11480 ((InoxSet Context!15182)) List!70535)

(assert (=> b!7252467 (= lt!2585623 (toList!11480 lt!2585610))))

(declare-fun b!7252468 () Bool)

(declare-fun e!4348647 () Bool)

(assert (=> b!7252468 (= e!4348648 e!4348647)))

(declare-fun res!2941309 () Bool)

(assert (=> b!7252468 (=> (not res!2941309) (not e!4348647))))

(get-info :version)

(assert (=> b!7252468 (= res!2941309 (and (not ((_ is Nil!70409) (exprs!8091 ct1!232))) ((_ is Cons!70410) s1!1971)))))

(assert (=> b!7252468 (= lt!2585605 (store ((as const (Array Context!15182 Bool)) false) lt!2585620 true))))

(assert (=> b!7252468 (= lt!2585620 (Context!15183 lt!2585611))))

(declare-fun ++!16564 (List!70533 List!70533) List!70533)

(assert (=> b!7252468 (= lt!2585611 (++!16564 (exprs!8091 ct1!232) (exprs!8091 ct2!328)))))

(declare-fun lt!2585600 () Unit!163889)

(assert (=> b!7252468 (= lt!2585600 (lemmaConcatPreservesForall!1458 (exprs!8091 ct1!232) (exprs!8091 ct2!328) lambda!444486))))

(declare-fun b!7252469 () Bool)

(assert (=> b!7252469 (= e!4348647 e!4348654)))

(declare-fun res!2941311 () Bool)

(assert (=> b!7252469 (=> (not res!2941311) (not e!4348654))))

(assert (=> b!7252469 (= res!2941311 (matchZipper!3561 lt!2585610 (t!384592 s1!1971)))))

(declare-fun derivationStepZipper!3429 ((InoxSet Context!15182) C!37576) (InoxSet Context!15182))

(assert (=> b!7252469 (= lt!2585610 (derivationStepZipper!3429 lt!2585601 (h!76858 s1!1971)))))

(declare-fun b!7252470 () Bool)

(declare-fun tp_is_empty!46767 () Bool)

(declare-fun tp!2037696 () Bool)

(assert (=> b!7252470 (= e!4348646 (and tp_is_empty!46767 tp!2037696))))

(declare-fun b!7252471 () Bool)

(assert (=> b!7252471 (= e!4348650 true)))

(declare-fun lt!2585612 () (InoxSet Context!15182))

(assert (=> b!7252471 (= lt!2585612 (derivationStepZipperUp!2475 lt!2585617 (h!76858 s1!1971)))))

(declare-fun lt!2585608 () Unit!163889)

(assert (=> b!7252471 (= lt!2585608 (lemmaConcatPreservesForall!1458 (exprs!8091 ct1!232) (exprs!8091 ct2!328) lambda!444486))))

(declare-fun b!7252472 () Bool)

(declare-fun e!4348649 () Bool)

(assert (=> b!7252472 (= e!4348649 e!4348645)))

(declare-fun res!2941312 () Bool)

(assert (=> b!7252472 (=> res!2941312 e!4348645)))

(declare-fun isEmpty!40547 (List!70533) Bool)

(assert (=> b!7252472 (= res!2941312 (isEmpty!40547 lt!2585611))))

(declare-fun lt!2585606 () Unit!163889)

(assert (=> b!7252472 (= lt!2585606 (lemmaConcatPreservesForall!1458 (exprs!8091 ct1!232) (exprs!8091 ct2!328) lambda!444486))))

(declare-fun lt!2585602 () (InoxSet Context!15182))

(assert (=> b!7252472 (= lt!2585602 (derivationStepZipperUp!2475 lt!2585620 (h!76858 s1!1971)))))

(declare-fun lt!2585622 () Unit!163889)

(assert (=> b!7252472 (= lt!2585622 (lemmaConcatPreservesForall!1458 (exprs!8091 ct1!232) (exprs!8091 ct2!328) lambda!444486))))

(assert (=> b!7252472 (= lt!2585616 (derivationStepZipperDown!2645 (h!76857 (exprs!8091 ct1!232)) lt!2585609 (h!76858 s1!1971)))))

(assert (=> b!7252472 (= lt!2585609 (Context!15183 (tail!14329 (exprs!8091 ct1!232))))))

(declare-fun b!7252473 () Bool)

(declare-fun res!2941313 () Bool)

(assert (=> b!7252473 (=> (not res!2941313) (not e!4348648))))

(declare-fun s2!1849 () List!70534)

(assert (=> b!7252473 (= res!2941313 (matchZipper!3561 (store ((as const (Array Context!15182 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7252474 () Bool)

(assert (=> b!7252474 (= e!4348644 e!4348649)))

(declare-fun res!2941314 () Bool)

(assert (=> b!7252474 (=> res!2941314 e!4348649)))

(assert (=> b!7252474 (= res!2941314 (isEmpty!40547 (exprs!8091 ct1!232)))))

(assert (=> b!7252474 (= lt!2585599 (derivationStepZipperUp!2475 ct1!232 (h!76858 s1!1971)))))

(declare-fun lt!2585613 () Context!15182)

(declare-fun lt!2585614 () Unit!163889)

(assert (=> b!7252474 (= lt!2585614 (lemmaConcatPreservesForall!1458 (exprs!8091 lt!2585613) (exprs!8091 ct2!328) lambda!444486))))

(declare-fun ++!16565 (List!70534 List!70534) List!70534)

(assert (=> b!7252474 (matchZipper!3561 (store ((as const (Array Context!15182 Bool)) false) (Context!15183 (++!16564 (exprs!8091 lt!2585613) (exprs!8091 ct2!328))) true) (++!16565 (t!384592 s1!1971) s2!1849))))

(declare-fun lt!2585621 () Unit!163889)

(assert (=> b!7252474 (= lt!2585621 (lemmaConcatPreservesForall!1458 (exprs!8091 lt!2585613) (exprs!8091 ct2!328) lambda!444486))))

(declare-fun lt!2585618 () Unit!163889)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!396 (Context!15182 Context!15182 List!70534 List!70534) Unit!163889)

(assert (=> b!7252474 (= lt!2585618 (lemmaConcatenateContextMatchesConcatOfStrings!396 lt!2585613 ct2!328 (t!384592 s1!1971) s2!1849))))

(declare-fun getWitness!2213 ((InoxSet Context!15182) Int) Context!15182)

(assert (=> b!7252474 (= lt!2585613 (getWitness!2213 lt!2585610 lambda!444487))))

(declare-fun b!7252475 () Bool)

(declare-fun tp!2037698 () Bool)

(assert (=> b!7252475 (= e!4348652 (and tp_is_empty!46767 tp!2037698))))

(declare-fun b!7252476 () Bool)

(declare-fun tp!2037695 () Bool)

(assert (=> b!7252476 (= e!4348651 tp!2037695)))

(assert (= (and start!705984 res!2941317) b!7252473))

(assert (= (and b!7252473 res!2941313) b!7252468))

(assert (= (and b!7252468 res!2941309) b!7252469))

(assert (= (and b!7252469 res!2941311) b!7252467))

(assert (= (and b!7252467 (not res!2941310)) b!7252474))

(assert (= (and b!7252474 (not res!2941314)) b!7252472))

(assert (= (and b!7252472 (not res!2941312)) b!7252466))

(assert (= (and b!7252466 (not res!2941315)) b!7252464))

(assert (= (and b!7252464 (not res!2941316)) b!7252463))

(assert (= (and b!7252463 (not res!2941318)) b!7252471))

(assert (= start!705984 b!7252476))

(assert (= (and start!705984 ((_ is Cons!70410) s1!1971)) b!7252475))

(assert (= (and start!705984 ((_ is Cons!70410) s2!1849)) b!7252470))

(assert (= start!705984 b!7252465))

(declare-fun m!7932024 () Bool)

(assert (=> b!7252467 m!7932024))

(declare-fun m!7932026 () Bool)

(assert (=> b!7252467 m!7932026))

(declare-fun m!7932028 () Bool)

(assert (=> b!7252467 m!7932028))

(declare-fun m!7932030 () Bool)

(assert (=> b!7252467 m!7932030))

(declare-fun m!7932032 () Bool)

(assert (=> b!7252471 m!7932032))

(declare-fun m!7932034 () Bool)

(assert (=> b!7252471 m!7932034))

(declare-fun m!7932036 () Bool)

(assert (=> b!7252466 m!7932036))

(declare-fun m!7932038 () Bool)

(assert (=> b!7252466 m!7932038))

(declare-fun m!7932040 () Bool)

(assert (=> b!7252466 m!7932040))

(declare-fun m!7932042 () Bool)

(assert (=> b!7252466 m!7932042))

(declare-fun m!7932044 () Bool)

(assert (=> b!7252466 m!7932044))

(declare-fun m!7932046 () Bool)

(assert (=> b!7252466 m!7932046))

(declare-fun m!7932048 () Bool)

(assert (=> b!7252466 m!7932048))

(declare-fun m!7932050 () Bool)

(assert (=> b!7252466 m!7932050))

(declare-fun m!7932052 () Bool)

(assert (=> b!7252466 m!7932052))

(assert (=> b!7252466 m!7932034))

(declare-fun m!7932054 () Bool)

(assert (=> b!7252468 m!7932054))

(declare-fun m!7932056 () Bool)

(assert (=> b!7252468 m!7932056))

(assert (=> b!7252468 m!7932034))

(declare-fun m!7932058 () Bool)

(assert (=> b!7252469 m!7932058))

(declare-fun m!7932060 () Bool)

(assert (=> b!7252469 m!7932060))

(declare-fun m!7932062 () Bool)

(assert (=> start!705984 m!7932062))

(declare-fun m!7932064 () Bool)

(assert (=> start!705984 m!7932064))

(declare-fun m!7932066 () Bool)

(assert (=> start!705984 m!7932066))

(declare-fun m!7932068 () Bool)

(assert (=> start!705984 m!7932068))

(assert (=> b!7252472 m!7932034))

(assert (=> b!7252472 m!7932034))

(declare-fun m!7932070 () Bool)

(assert (=> b!7252472 m!7932070))

(declare-fun m!7932072 () Bool)

(assert (=> b!7252472 m!7932072))

(assert (=> b!7252472 m!7932050))

(declare-fun m!7932074 () Bool)

(assert (=> b!7252472 m!7932074))

(declare-fun m!7932076 () Bool)

(assert (=> b!7252473 m!7932076))

(assert (=> b!7252473 m!7932076))

(declare-fun m!7932078 () Bool)

(assert (=> b!7252473 m!7932078))

(declare-fun m!7932080 () Bool)

(assert (=> b!7252464 m!7932080))

(declare-fun m!7932082 () Bool)

(assert (=> b!7252474 m!7932082))

(declare-fun m!7932084 () Bool)

(assert (=> b!7252474 m!7932084))

(declare-fun m!7932086 () Bool)

(assert (=> b!7252474 m!7932086))

(declare-fun m!7932088 () Bool)

(assert (=> b!7252474 m!7932088))

(declare-fun m!7932090 () Bool)

(assert (=> b!7252474 m!7932090))

(declare-fun m!7932092 () Bool)

(assert (=> b!7252474 m!7932092))

(assert (=> b!7252474 m!7932088))

(declare-fun m!7932094 () Bool)

(assert (=> b!7252474 m!7932094))

(assert (=> b!7252474 m!7932092))

(declare-fun m!7932096 () Bool)

(assert (=> b!7252474 m!7932096))

(assert (=> b!7252474 m!7932042))

(assert (=> b!7252474 m!7932082))

(check-sat (not b!7252472) (not start!705984) (not b!7252464) (not b!7252468) (not b!7252473) (not b!7252465) (not b!7252466) (not b!7252469) (not b!7252476) (not b!7252470) (not b!7252471) (not b!7252475) tp_is_empty!46767 (not b!7252467) (not b!7252474))
(check-sat)
