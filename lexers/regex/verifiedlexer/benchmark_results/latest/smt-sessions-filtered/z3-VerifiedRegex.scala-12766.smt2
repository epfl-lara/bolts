; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!705560 () Bool)

(assert start!705560)

(declare-fun b!7250169 () Bool)

(assert (=> b!7250169 true))

(declare-fun b!7250165 () Bool)

(assert (=> b!7250165 true))

(declare-fun b!7250162 () Bool)

(declare-fun e!4347210 () Bool)

(declare-fun e!4347218 () Bool)

(assert (=> b!7250162 (= e!4347210 e!4347218)))

(declare-fun res!2940542 () Bool)

(assert (=> b!7250162 (=> res!2940542 e!4347218)))

(declare-datatypes ((C!37556 0))(
  ( (C!37557 (val!28726 Int)) )
))
(declare-datatypes ((Regex!18641 0))(
  ( (ElementMatch!18641 (c!1347255 C!37556)) (Concat!27486 (regOne!37794 Regex!18641) (regTwo!37794 Regex!18641)) (EmptyExpr!18641) (Star!18641 (reg!18970 Regex!18641)) (EmptyLang!18641) (Union!18641 (regOne!37795 Regex!18641) (regTwo!37795 Regex!18641)) )
))
(declare-datatypes ((List!70503 0))(
  ( (Nil!70379) (Cons!70379 (h!76827 Regex!18641) (t!384557 List!70503)) )
))
(declare-fun lt!2584604 () List!70503)

(declare-fun isEmpty!40531 (List!70503) Bool)

(assert (=> b!7250162 (= res!2940542 (isEmpty!40531 lt!2584604))))

(declare-datatypes ((Unit!163867 0))(
  ( (Unit!163868) )
))
(declare-fun lt!2584609 () Unit!163867)

(declare-datatypes ((Context!15162 0))(
  ( (Context!15163 (exprs!8081 List!70503)) )
))
(declare-fun ct1!232 () Context!15162)

(declare-fun lambda!444046 () Int)

(declare-fun ct2!328 () Context!15162)

(declare-fun lemmaConcatPreservesForall!1448 (List!70503 List!70503 Int) Unit!163867)

(assert (=> b!7250162 (= lt!2584609 (lemmaConcatPreservesForall!1448 (exprs!8081 ct1!232) (exprs!8081 ct2!328) lambda!444046))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2584603 () (InoxSet Context!15162))

(declare-fun lt!2584611 () Context!15162)

(declare-datatypes ((List!70504 0))(
  ( (Nil!70380) (Cons!70380 (h!76828 C!37556) (t!384558 List!70504)) )
))
(declare-fun s1!1971 () List!70504)

(declare-fun derivationStepZipperUp!2465 (Context!15162 C!37556) (InoxSet Context!15162))

(assert (=> b!7250162 (= lt!2584603 (derivationStepZipperUp!2465 lt!2584611 (h!76828 s1!1971)))))

(declare-fun lt!2584610 () Unit!163867)

(assert (=> b!7250162 (= lt!2584610 (lemmaConcatPreservesForall!1448 (exprs!8081 ct1!232) (exprs!8081 ct2!328) lambda!444046))))

(declare-fun lt!2584619 () (InoxSet Context!15162))

(declare-fun derivationStepZipperDown!2635 (Regex!18641 Context!15162 C!37556) (InoxSet Context!15162))

(declare-fun tail!14314 (List!70503) List!70503)

(assert (=> b!7250162 (= lt!2584619 (derivationStepZipperDown!2635 (h!76827 (exprs!8081 ct1!232)) (Context!15163 (tail!14314 (exprs!8081 ct1!232))) (h!76828 s1!1971)))))

(declare-fun b!7250163 () Bool)

(declare-fun e!4347212 () Bool)

(declare-fun tp_is_empty!46747 () Bool)

(declare-fun tp!2037344 () Bool)

(assert (=> b!7250163 (= e!4347212 (and tp_is_empty!46747 tp!2037344))))

(declare-fun b!7250164 () Bool)

(declare-fun e!4347215 () Bool)

(declare-fun tp!2037346 () Bool)

(assert (=> b!7250164 (= e!4347215 tp!2037346)))

(assert (=> b!7250165 (= e!4347218 true)))

(declare-fun lambda!444048 () Int)

(declare-fun lt!2584623 () (InoxSet Context!15162))

(declare-fun flatMap!2806 ((InoxSet Context!15162) Int) (InoxSet Context!15162))

(assert (=> b!7250165 (= (flatMap!2806 lt!2584623 lambda!444048) (derivationStepZipperUp!2465 lt!2584611 (h!76828 s1!1971)))))

(declare-fun lt!2584621 () Unit!163867)

(declare-fun lemmaFlatMapOnSingletonSet!2210 ((InoxSet Context!15162) Context!15162 Int) Unit!163867)

(assert (=> b!7250165 (= lt!2584621 (lemmaFlatMapOnSingletonSet!2210 lt!2584623 lt!2584611 lambda!444048))))

(declare-fun lt!2584612 () Unit!163867)

(assert (=> b!7250165 (= lt!2584612 (lemmaConcatPreservesForall!1448 (exprs!8081 ct1!232) (exprs!8081 ct2!328) lambda!444046))))

(declare-fun lt!2584622 () (InoxSet Context!15162))

(assert (=> b!7250165 (= (flatMap!2806 lt!2584622 lambda!444048) (derivationStepZipperUp!2465 ct1!232 (h!76828 s1!1971)))))

(declare-fun lt!2584616 () Unit!163867)

(assert (=> b!7250165 (= lt!2584616 (lemmaFlatMapOnSingletonSet!2210 lt!2584622 ct1!232 lambda!444048))))

(declare-fun lt!2584614 () (InoxSet Context!15162))

(assert (=> b!7250165 (= lt!2584614 (derivationStepZipperDown!2635 (h!76827 (exprs!8081 ct1!232)) (Context!15163 (tail!14314 lt!2584604)) (h!76828 s1!1971)))))

(declare-fun res!2940539 () Bool)

(declare-fun e!4347209 () Bool)

(assert (=> start!705560 (=> (not res!2940539) (not e!4347209))))

(declare-fun matchZipper!3551 ((InoxSet Context!15162) List!70504) Bool)

(assert (=> start!705560 (= res!2940539 (matchZipper!3551 lt!2584622 s1!1971))))

(assert (=> start!705560 (= lt!2584622 (store ((as const (Array Context!15162 Bool)) false) ct1!232 true))))

(assert (=> start!705560 e!4347209))

(declare-fun e!4347216 () Bool)

(declare-fun inv!89612 (Context!15162) Bool)

(assert (=> start!705560 (and (inv!89612 ct1!232) e!4347216)))

(declare-fun e!4347211 () Bool)

(assert (=> start!705560 e!4347211))

(assert (=> start!705560 e!4347212))

(assert (=> start!705560 (and (inv!89612 ct2!328) e!4347215)))

(declare-fun b!7250166 () Bool)

(declare-fun res!2940541 () Bool)

(assert (=> b!7250166 (=> (not res!2940541) (not e!4347209))))

(declare-fun s2!1849 () List!70504)

(assert (=> b!7250166 (= res!2940541 (matchZipper!3551 (store ((as const (Array Context!15162 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7250167 () Bool)

(declare-fun tp!2037345 () Bool)

(assert (=> b!7250167 (= e!4347216 tp!2037345)))

(declare-fun b!7250168 () Bool)

(declare-fun e!4347217 () Bool)

(declare-fun e!4347213 () Bool)

(assert (=> b!7250168 (= e!4347217 e!4347213)))

(declare-fun res!2940540 () Bool)

(assert (=> b!7250168 (=> (not res!2940540) (not e!4347213))))

(declare-fun lt!2584618 () (InoxSet Context!15162))

(assert (=> b!7250168 (= res!2940540 (matchZipper!3551 lt!2584618 (t!384558 s1!1971)))))

(declare-fun derivationStepZipper!3419 ((InoxSet Context!15162) C!37556) (InoxSet Context!15162))

(assert (=> b!7250168 (= lt!2584618 (derivationStepZipper!3419 lt!2584622 (h!76828 s1!1971)))))

(declare-fun e!4347214 () Bool)

(assert (=> b!7250169 (= e!4347213 (not e!4347214))))

(declare-fun res!2940536 () Bool)

(assert (=> b!7250169 (=> res!2940536 e!4347214)))

(declare-fun lambda!444047 () Int)

(declare-fun exists!4360 ((InoxSet Context!15162) Int) Bool)

(assert (=> b!7250169 (= res!2940536 (not (exists!4360 lt!2584618 lambda!444047)))))

(declare-datatypes ((List!70505 0))(
  ( (Nil!70381) (Cons!70381 (h!76829 Context!15162) (t!384559 List!70505)) )
))
(declare-fun lt!2584607 () List!70505)

(declare-fun exists!4361 (List!70505 Int) Bool)

(assert (=> b!7250169 (exists!4361 lt!2584607 lambda!444047)))

(declare-fun lt!2584606 () Unit!163867)

(declare-fun lemmaZipperMatchesExistsMatchingContext!744 (List!70505 List!70504) Unit!163867)

(assert (=> b!7250169 (= lt!2584606 (lemmaZipperMatchesExistsMatchingContext!744 lt!2584607 (t!384558 s1!1971)))))

(declare-fun toList!11470 ((InoxSet Context!15162)) List!70505)

(assert (=> b!7250169 (= lt!2584607 (toList!11470 lt!2584618))))

(declare-fun b!7250170 () Bool)

(declare-fun tp!2037343 () Bool)

(assert (=> b!7250170 (= e!4347211 (and tp_is_empty!46747 tp!2037343))))

(declare-fun b!7250171 () Bool)

(assert (=> b!7250171 (= e!4347209 e!4347217)))

(declare-fun res!2940537 () Bool)

(assert (=> b!7250171 (=> (not res!2940537) (not e!4347217))))

(get-info :version)

(assert (=> b!7250171 (= res!2940537 (and (not ((_ is Nil!70379) (exprs!8081 ct1!232))) ((_ is Cons!70380) s1!1971)))))

(assert (=> b!7250171 (= lt!2584623 (store ((as const (Array Context!15162 Bool)) false) lt!2584611 true))))

(assert (=> b!7250171 (= lt!2584611 (Context!15163 lt!2584604))))

(declare-fun ++!16544 (List!70503 List!70503) List!70503)

(assert (=> b!7250171 (= lt!2584604 (++!16544 (exprs!8081 ct1!232) (exprs!8081 ct2!328)))))

(declare-fun lt!2584613 () Unit!163867)

(assert (=> b!7250171 (= lt!2584613 (lemmaConcatPreservesForall!1448 (exprs!8081 ct1!232) (exprs!8081 ct2!328) lambda!444046))))

(declare-fun b!7250172 () Bool)

(assert (=> b!7250172 (= e!4347214 e!4347210)))

(declare-fun res!2940538 () Bool)

(assert (=> b!7250172 (=> res!2940538 e!4347210)))

(assert (=> b!7250172 (= res!2940538 (isEmpty!40531 (exprs!8081 ct1!232)))))

(declare-fun lt!2584615 () (InoxSet Context!15162))

(assert (=> b!7250172 (= lt!2584615 (derivationStepZipperUp!2465 ct1!232 (h!76828 s1!1971)))))

(declare-fun lt!2584605 () Unit!163867)

(declare-fun lt!2584608 () Context!15162)

(assert (=> b!7250172 (= lt!2584605 (lemmaConcatPreservesForall!1448 (exprs!8081 lt!2584608) (exprs!8081 ct2!328) lambda!444046))))

(declare-fun ++!16545 (List!70504 List!70504) List!70504)

(assert (=> b!7250172 (matchZipper!3551 (store ((as const (Array Context!15162 Bool)) false) (Context!15163 (++!16544 (exprs!8081 lt!2584608) (exprs!8081 ct2!328))) true) (++!16545 (t!384558 s1!1971) s2!1849))))

(declare-fun lt!2584617 () Unit!163867)

(assert (=> b!7250172 (= lt!2584617 (lemmaConcatPreservesForall!1448 (exprs!8081 lt!2584608) (exprs!8081 ct2!328) lambda!444046))))

(declare-fun lt!2584620 () Unit!163867)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!386 (Context!15162 Context!15162 List!70504 List!70504) Unit!163867)

(assert (=> b!7250172 (= lt!2584620 (lemmaConcatenateContextMatchesConcatOfStrings!386 lt!2584608 ct2!328 (t!384558 s1!1971) s2!1849))))

(declare-fun getWitness!2197 ((InoxSet Context!15162) Int) Context!15162)

(assert (=> b!7250172 (= lt!2584608 (getWitness!2197 lt!2584618 lambda!444047))))

(assert (= (and start!705560 res!2940539) b!7250166))

(assert (= (and b!7250166 res!2940541) b!7250171))

(assert (= (and b!7250171 res!2940537) b!7250168))

(assert (= (and b!7250168 res!2940540) b!7250169))

(assert (= (and b!7250169 (not res!2940536)) b!7250172))

(assert (= (and b!7250172 (not res!2940538)) b!7250162))

(assert (= (and b!7250162 (not res!2940542)) b!7250165))

(assert (= start!705560 b!7250167))

(assert (= (and start!705560 ((_ is Cons!70380) s1!1971)) b!7250170))

(assert (= (and start!705560 ((_ is Cons!70380) s2!1849)) b!7250163))

(assert (= start!705560 b!7250164))

(declare-fun m!7928810 () Bool)

(assert (=> b!7250165 m!7928810))

(declare-fun m!7928812 () Bool)

(assert (=> b!7250165 m!7928812))

(declare-fun m!7928814 () Bool)

(assert (=> b!7250165 m!7928814))

(declare-fun m!7928816 () Bool)

(assert (=> b!7250165 m!7928816))

(declare-fun m!7928818 () Bool)

(assert (=> b!7250165 m!7928818))

(declare-fun m!7928820 () Bool)

(assert (=> b!7250165 m!7928820))

(declare-fun m!7928822 () Bool)

(assert (=> b!7250165 m!7928822))

(declare-fun m!7928824 () Bool)

(assert (=> b!7250165 m!7928824))

(declare-fun m!7928826 () Bool)

(assert (=> b!7250165 m!7928826))

(declare-fun m!7928828 () Bool)

(assert (=> b!7250166 m!7928828))

(assert (=> b!7250166 m!7928828))

(declare-fun m!7928830 () Bool)

(assert (=> b!7250166 m!7928830))

(assert (=> b!7250162 m!7928814))

(declare-fun m!7928832 () Bool)

(assert (=> b!7250162 m!7928832))

(declare-fun m!7928834 () Bool)

(assert (=> b!7250162 m!7928834))

(assert (=> b!7250162 m!7928818))

(assert (=> b!7250162 m!7928818))

(declare-fun m!7928836 () Bool)

(assert (=> b!7250162 m!7928836))

(declare-fun m!7928838 () Bool)

(assert (=> b!7250169 m!7928838))

(declare-fun m!7928840 () Bool)

(assert (=> b!7250169 m!7928840))

(declare-fun m!7928842 () Bool)

(assert (=> b!7250169 m!7928842))

(declare-fun m!7928844 () Bool)

(assert (=> b!7250169 m!7928844))

(declare-fun m!7928846 () Bool)

(assert (=> start!705560 m!7928846))

(declare-fun m!7928848 () Bool)

(assert (=> start!705560 m!7928848))

(declare-fun m!7928850 () Bool)

(assert (=> start!705560 m!7928850))

(declare-fun m!7928852 () Bool)

(assert (=> start!705560 m!7928852))

(declare-fun m!7928854 () Bool)

(assert (=> b!7250172 m!7928854))

(declare-fun m!7928856 () Bool)

(assert (=> b!7250172 m!7928856))

(declare-fun m!7928858 () Bool)

(assert (=> b!7250172 m!7928858))

(declare-fun m!7928860 () Bool)

(assert (=> b!7250172 m!7928860))

(declare-fun m!7928862 () Bool)

(assert (=> b!7250172 m!7928862))

(declare-fun m!7928864 () Bool)

(assert (=> b!7250172 m!7928864))

(assert (=> b!7250172 m!7928820))

(declare-fun m!7928866 () Bool)

(assert (=> b!7250172 m!7928866))

(assert (=> b!7250172 m!7928856))

(assert (=> b!7250172 m!7928866))

(declare-fun m!7928868 () Bool)

(assert (=> b!7250172 m!7928868))

(assert (=> b!7250172 m!7928862))

(declare-fun m!7928870 () Bool)

(assert (=> b!7250171 m!7928870))

(declare-fun m!7928872 () Bool)

(assert (=> b!7250171 m!7928872))

(assert (=> b!7250171 m!7928818))

(declare-fun m!7928874 () Bool)

(assert (=> b!7250168 m!7928874))

(declare-fun m!7928876 () Bool)

(assert (=> b!7250168 m!7928876))

(check-sat (not b!7250163) (not b!7250164) (not b!7250172) (not b!7250169) (not b!7250168) (not b!7250165) (not b!7250171) (not b!7250162) (not start!705560) tp_is_empty!46747 (not b!7250166) (not b!7250170) (not b!7250167))
(check-sat)
