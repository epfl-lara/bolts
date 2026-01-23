; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!707246 () Bool)

(assert start!707246)

(declare-fun b!7259025 () Bool)

(assert (=> b!7259025 true))

(declare-fun b!7259019 () Bool)

(assert (=> b!7259019 true))

(declare-fun bs!1908255 () Bool)

(assert (= bs!1908255 (and b!7259019 b!7259025)))

(declare-fun lambda!446099 () Int)

(declare-datatypes ((C!37636 0))(
  ( (C!37637 (val!28766 Int)) )
))
(declare-datatypes ((List!70623 0))(
  ( (Nil!70499) (Cons!70499 (h!76947 C!37636) (t!384687 List!70623)) )
))
(declare-fun lt!2589806 () List!70623)

(declare-fun s1!1971 () List!70623)

(declare-fun lambda!446101 () Int)

(assert (=> bs!1908255 (= (= lt!2589806 (t!384687 s1!1971)) (= lambda!446101 lambda!446099))))

(assert (=> b!7259019 true))

(declare-fun b!7259011 () Bool)

(declare-fun e!4352789 () Bool)

(declare-fun e!4352795 () Bool)

(assert (=> b!7259011 (= e!4352789 e!4352795)))

(declare-fun res!2943477 () Bool)

(assert (=> b!7259011 (=> res!2943477 e!4352795)))

(declare-datatypes ((Regex!18681 0))(
  ( (ElementMatch!18681 (c!1350206 C!37636)) (Concat!27526 (regOne!37874 Regex!18681) (regTwo!37874 Regex!18681)) (EmptyExpr!18681) (Star!18681 (reg!19010 Regex!18681)) (EmptyLang!18681) (Union!18681 (regOne!37875 Regex!18681) (regTwo!37875 Regex!18681)) )
))
(declare-datatypes ((List!70624 0))(
  ( (Nil!70500) (Cons!70500 (h!76948 Regex!18681) (t!384688 List!70624)) )
))
(declare-fun lt!2589807 () List!70624)

(declare-fun isEmpty!40596 (List!70624) Bool)

(assert (=> b!7259011 (= res!2943477 (isEmpty!40596 lt!2589807))))

(declare-fun lambda!446098 () Int)

(declare-datatypes ((Context!15242 0))(
  ( (Context!15243 (exprs!8121 List!70624)) )
))
(declare-fun ct1!232 () Context!15242)

(declare-datatypes ((Unit!163992 0))(
  ( (Unit!163993) )
))
(declare-fun lt!2589789 () Unit!163992)

(declare-fun ct2!328 () Context!15242)

(declare-fun lemmaConcatPreservesForall!1488 (List!70624 List!70624 Int) Unit!163992)

(assert (=> b!7259011 (= lt!2589789 (lemmaConcatPreservesForall!1488 (exprs!8121 ct1!232) (exprs!8121 ct2!328) lambda!446098))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2589810 () (InoxSet Context!15242))

(declare-fun lt!2589787 () Context!15242)

(declare-fun derivationStepZipperUp!2505 (Context!15242 C!37636) (InoxSet Context!15242))

(assert (=> b!7259011 (= lt!2589810 (derivationStepZipperUp!2505 lt!2589787 (h!76947 s1!1971)))))

(declare-fun lt!2589812 () Unit!163992)

(assert (=> b!7259011 (= lt!2589812 (lemmaConcatPreservesForall!1488 (exprs!8121 ct1!232) (exprs!8121 ct2!328) lambda!446098))))

(declare-fun lt!2589817 () (InoxSet Context!15242))

(declare-fun lt!2589780 () Context!15242)

(declare-fun derivationStepZipperDown!2675 (Regex!18681 Context!15242 C!37636) (InoxSet Context!15242))

(assert (=> b!7259011 (= lt!2589817 (derivationStepZipperDown!2675 (h!76948 (exprs!8121 ct1!232)) lt!2589780 (h!76947 s1!1971)))))

(declare-fun tail!14386 (List!70624) List!70624)

(assert (=> b!7259011 (= lt!2589780 (Context!15243 (tail!14386 (exprs!8121 ct1!232))))))

(declare-fun b!7259012 () Bool)

(declare-fun res!2943483 () Bool)

(declare-fun e!4352792 () Bool)

(assert (=> b!7259012 (=> (not res!2943483) (not e!4352792))))

(declare-fun s2!1849 () List!70623)

(declare-fun matchZipper!3591 ((InoxSet Context!15242) List!70623) Bool)

(assert (=> b!7259012 (= res!2943483 (matchZipper!3591 (store ((as const (Array Context!15242 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7259013 () Bool)

(declare-fun e!4352798 () Bool)

(declare-fun lt!2589798 () (InoxSet Context!15242))

(assert (=> b!7259013 (= e!4352798 (matchZipper!3591 lt!2589798 lt!2589806))))

(declare-fun b!7259014 () Bool)

(declare-fun e!4352788 () Bool)

(declare-fun tp!2038578 () Bool)

(assert (=> b!7259014 (= e!4352788 tp!2038578)))

(declare-fun b!7259015 () Bool)

(declare-fun e!4352794 () Bool)

(declare-fun lt!2589788 () (InoxSet Context!15242))

(assert (=> b!7259015 (= e!4352794 (matchZipper!3591 lt!2589788 (t!384687 s1!1971)))))

(declare-fun b!7259016 () Bool)

(declare-fun e!4352801 () Bool)

(declare-fun exists!4440 ((InoxSet Context!15242) Int) Bool)

(assert (=> b!7259016 (= e!4352801 (exists!4440 lt!2589798 lambda!446101))))

(declare-fun b!7259017 () Bool)

(declare-fun e!4352802 () Bool)

(declare-fun tp_is_empty!46827 () Bool)

(declare-fun tp!2038575 () Bool)

(assert (=> b!7259017 (= e!4352802 (and tp_is_empty!46827 tp!2038575))))

(declare-fun b!7259018 () Bool)

(declare-fun e!4352797 () Unit!163992)

(declare-fun Unit!163994 () Unit!163992)

(assert (=> b!7259018 (= e!4352797 Unit!163994)))

(declare-fun res!2943480 () Bool)

(assert (=> start!707246 (=> (not res!2943480) (not e!4352792))))

(declare-fun lt!2589785 () (InoxSet Context!15242))

(assert (=> start!707246 (= res!2943480 (matchZipper!3591 lt!2589785 s1!1971))))

(assert (=> start!707246 (= lt!2589785 (store ((as const (Array Context!15242 Bool)) false) ct1!232 true))))

(assert (=> start!707246 e!4352792))

(declare-fun e!4352799 () Bool)

(declare-fun inv!89712 (Context!15242) Bool)

(assert (=> start!707246 (and (inv!89712 ct1!232) e!4352799)))

(assert (=> start!707246 e!4352802))

(declare-fun e!4352800 () Bool)

(assert (=> start!707246 e!4352800))

(assert (=> start!707246 (and (inv!89712 ct2!328) e!4352788)))

(declare-fun lt!2589797 () (InoxSet Context!15242))

(declare-fun lt!2589811 () List!70623)

(assert (=> b!7259019 (= e!4352795 (matchZipper!3591 lt!2589797 lt!2589811))))

(declare-fun lt!2589804 () Unit!163992)

(assert (=> b!7259019 (= lt!2589804 (lemmaConcatPreservesForall!1488 (exprs!8121 ct1!232) (exprs!8121 ct2!328) lambda!446098))))

(assert (=> b!7259019 e!4352798))

(declare-fun res!2943475 () Bool)

(assert (=> b!7259019 (=> (not res!2943475) (not e!4352798))))

(declare-datatypes ((List!70625 0))(
  ( (Nil!70501) (Cons!70501 (h!76949 Context!15242) (t!384689 List!70625)) )
))
(declare-fun lt!2589782 () List!70625)

(declare-fun content!14674 (List!70625) (InoxSet Context!15242))

(assert (=> b!7259019 (= res!2943475 (matchZipper!3591 (content!14674 lt!2589782) lt!2589806))))

(declare-fun lt!2589809 () Unit!163992)

(declare-fun lemmaExistsMatchingContextThenMatchingString!90 (List!70625 List!70623) Unit!163992)

(assert (=> b!7259019 (= lt!2589809 (lemmaExistsMatchingContextThenMatchingString!90 lt!2589782 lt!2589806))))

(declare-fun toList!11510 ((InoxSet Context!15242)) List!70625)

(assert (=> b!7259019 (= lt!2589782 (toList!11510 lt!2589798))))

(assert (=> b!7259019 e!4352801))

(declare-fun res!2943478 () Bool)

(assert (=> b!7259019 (=> (not res!2943478) (not e!4352801))))

(assert (=> b!7259019 (= res!2943478 (exists!4440 lt!2589798 lambda!446101))))

(declare-fun lt!2589802 () Unit!163992)

(declare-fun lt!2589808 () Context!15242)

(declare-fun lemmaContainsThenExists!229 ((InoxSet Context!15242) Context!15242 Int) Unit!163992)

(assert (=> b!7259019 (= lt!2589802 (lemmaContainsThenExists!229 lt!2589798 lt!2589808 lambda!446101))))

(declare-fun lt!2589815 () Unit!163992)

(declare-fun lt!2589778 () Context!15242)

(assert (=> b!7259019 (= lt!2589815 (lemmaConcatPreservesForall!1488 (exprs!8121 lt!2589778) (exprs!8121 ct2!328) lambda!446098))))

(assert (=> b!7259019 (select lt!2589798 lt!2589808)))

(declare-fun lt!2589793 () Unit!163992)

(assert (=> b!7259019 (= lt!2589793 (lemmaConcatPreservesForall!1488 (exprs!8121 lt!2589778) (exprs!8121 ct2!328) lambda!446098))))

(assert (=> b!7259019 (select lt!2589810 lt!2589808)))

(declare-fun lt!2589792 () Unit!163992)

(assert (=> b!7259019 (= lt!2589792 (lemmaConcatPreservesForall!1488 (exprs!8121 ct1!232) (exprs!8121 ct2!328) lambda!446098))))

(declare-fun lt!2589816 () Unit!163992)

(assert (=> b!7259019 (= lt!2589816 (lemmaConcatPreservesForall!1488 (exprs!8121 lt!2589778) (exprs!8121 ct2!328) lambda!446098))))

(declare-fun lt!2589791 () Unit!163992)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!36 (Context!15242 Context!15242 Context!15242 C!37636) Unit!163992)

(assert (=> b!7259019 (= lt!2589791 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!36 ct1!232 ct2!328 lt!2589778 (h!76947 s1!1971)))))

(declare-fun tail!14387 (List!70623) List!70623)

(assert (=> b!7259019 (= (tail!14387 lt!2589811) lt!2589806)))

(declare-fun ++!16624 (List!70623 List!70623) List!70623)

(assert (=> b!7259019 (= lt!2589811 (++!16624 s1!1971 s2!1849))))

(declare-fun lt!2589805 () Unit!163992)

(assert (=> b!7259019 (= lt!2589805 e!4352797)))

(declare-fun c!1350205 () Bool)

(declare-fun nullable!7941 (Regex!18681) Bool)

(assert (=> b!7259019 (= c!1350205 (nullable!7941 (h!76948 (exprs!8121 ct1!232))))))

(declare-fun lambda!446100 () Int)

(declare-fun flatMap!2846 ((InoxSet Context!15242) Int) (InoxSet Context!15242))

(assert (=> b!7259019 (= (flatMap!2846 lt!2589797 lambda!446100) (derivationStepZipperUp!2505 lt!2589787 (h!76947 s1!1971)))))

(declare-fun lt!2589799 () Unit!163992)

(declare-fun lemmaFlatMapOnSingletonSet!2250 ((InoxSet Context!15242) Context!15242 Int) Unit!163992)

(assert (=> b!7259019 (= lt!2589799 (lemmaFlatMapOnSingletonSet!2250 lt!2589797 lt!2589787 lambda!446100))))

(declare-fun lt!2589781 () Unit!163992)

(assert (=> b!7259019 (= lt!2589781 (lemmaConcatPreservesForall!1488 (exprs!8121 ct1!232) (exprs!8121 ct2!328) lambda!446098))))

(assert (=> b!7259019 (= (flatMap!2846 lt!2589785 lambda!446100) (derivationStepZipperUp!2505 ct1!232 (h!76947 s1!1971)))))

(declare-fun lt!2589776 () Unit!163992)

(assert (=> b!7259019 (= lt!2589776 (lemmaFlatMapOnSingletonSet!2250 lt!2589785 ct1!232 lambda!446100))))

(declare-fun lt!2589796 () (InoxSet Context!15242))

(declare-fun lt!2589777 () Context!15242)

(assert (=> b!7259019 (= lt!2589796 (derivationStepZipperDown!2675 (h!76948 (exprs!8121 ct1!232)) lt!2589777 (h!76947 s1!1971)))))

(assert (=> b!7259019 (= lt!2589777 (Context!15243 (tail!14386 lt!2589807)))))

(declare-fun b!7259020 () Bool)

(declare-fun tp!2038577 () Bool)

(assert (=> b!7259020 (= e!4352800 (and tp_is_empty!46827 tp!2038577))))

(declare-fun b!7259021 () Bool)

(declare-fun tp!2038576 () Bool)

(assert (=> b!7259021 (= e!4352799 tp!2038576)))

(declare-fun b!7259022 () Bool)

(declare-fun e!4352793 () Bool)

(assert (=> b!7259022 (= e!4352792 e!4352793)))

(declare-fun res!2943473 () Bool)

(assert (=> b!7259022 (=> (not res!2943473) (not e!4352793))))

(get-info :version)

(assert (=> b!7259022 (= res!2943473 (and (not ((_ is Nil!70500) (exprs!8121 ct1!232))) ((_ is Cons!70499) s1!1971)))))

(assert (=> b!7259022 (= lt!2589797 (store ((as const (Array Context!15242 Bool)) false) lt!2589787 true))))

(assert (=> b!7259022 (= lt!2589787 (Context!15243 lt!2589807))))

(declare-fun ++!16625 (List!70624 List!70624) List!70624)

(assert (=> b!7259022 (= lt!2589807 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328)))))

(declare-fun lt!2589801 () Unit!163992)

(assert (=> b!7259022 (= lt!2589801 (lemmaConcatPreservesForall!1488 (exprs!8121 ct1!232) (exprs!8121 ct2!328) lambda!446098))))

(declare-fun b!7259023 () Bool)

(declare-fun e!4352796 () Bool)

(assert (=> b!7259023 (= e!4352796 e!4352789)))

(declare-fun res!2943476 () Bool)

(assert (=> b!7259023 (=> res!2943476 e!4352789)))

(assert (=> b!7259023 (= res!2943476 (isEmpty!40596 (exprs!8121 ct1!232)))))

(declare-fun lt!2589795 () (InoxSet Context!15242))

(assert (=> b!7259023 (= lt!2589795 (derivationStepZipperUp!2505 ct1!232 (h!76947 s1!1971)))))

(declare-fun lt!2589800 () Unit!163992)

(assert (=> b!7259023 (= lt!2589800 (lemmaConcatPreservesForall!1488 (exprs!8121 lt!2589778) (exprs!8121 ct2!328) lambda!446098))))

(assert (=> b!7259023 (matchZipper!3591 (store ((as const (Array Context!15242 Bool)) false) lt!2589808 true) lt!2589806)))

(assert (=> b!7259023 (= lt!2589806 (++!16624 (t!384687 s1!1971) s2!1849))))

(assert (=> b!7259023 (= lt!2589808 (Context!15243 (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328))))))

(declare-fun lt!2589786 () Unit!163992)

(assert (=> b!7259023 (= lt!2589786 (lemmaConcatPreservesForall!1488 (exprs!8121 lt!2589778) (exprs!8121 ct2!328) lambda!446098))))

(declare-fun lt!2589783 () Unit!163992)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!426 (Context!15242 Context!15242 List!70623 List!70623) Unit!163992)

(assert (=> b!7259023 (= lt!2589783 (lemmaConcatenateContextMatchesConcatOfStrings!426 lt!2589778 ct2!328 (t!384687 s1!1971) s2!1849))))

(declare-fun lt!2589813 () (InoxSet Context!15242))

(declare-fun getWitness!2260 ((InoxSet Context!15242) Int) Context!15242)

(assert (=> b!7259023 (= lt!2589778 (getWitness!2260 lt!2589813 lambda!446099))))

(declare-fun b!7259024 () Bool)

(declare-fun e!4352790 () Bool)

(assert (=> b!7259024 (= e!4352793 e!4352790)))

(declare-fun res!2943474 () Bool)

(assert (=> b!7259024 (=> (not res!2943474) (not e!4352790))))

(assert (=> b!7259024 (= res!2943474 (matchZipper!3591 lt!2589813 (t!384687 s1!1971)))))

(declare-fun derivationStepZipper!3459 ((InoxSet Context!15242) C!37636) (InoxSet Context!15242))

(assert (=> b!7259024 (= lt!2589813 (derivationStepZipper!3459 lt!2589785 (h!76947 s1!1971)))))

(assert (=> b!7259025 (= e!4352790 (not e!4352796))))

(declare-fun res!2943482 () Bool)

(assert (=> b!7259025 (=> res!2943482 e!4352796)))

(assert (=> b!7259025 (= res!2943482 (not (exists!4440 lt!2589813 lambda!446099)))))

(declare-fun lt!2589775 () List!70625)

(declare-fun exists!4441 (List!70625 Int) Bool)

(assert (=> b!7259025 (exists!4441 lt!2589775 lambda!446099)))

(declare-fun lt!2589784 () Unit!163992)

(declare-fun lemmaZipperMatchesExistsMatchingContext!784 (List!70625 List!70623) Unit!163992)

(assert (=> b!7259025 (= lt!2589784 (lemmaZipperMatchesExistsMatchingContext!784 lt!2589775 (t!384687 s1!1971)))))

(assert (=> b!7259025 (= lt!2589775 (toList!11510 lt!2589813))))

(assert (=> b!7259025 (= lt!2589798 (derivationStepZipper!3459 lt!2589797 (h!76947 s1!1971)))))

(declare-fun b!7259026 () Bool)

(declare-fun Unit!163995 () Unit!163992)

(assert (=> b!7259026 (= e!4352797 Unit!163995)))

(declare-fun lt!2589779 () Unit!163992)

(assert (=> b!7259026 (= lt!2589779 (lemmaConcatPreservesForall!1488 (exprs!8121 ct1!232) (exprs!8121 ct2!328) lambda!446098))))

(assert (=> b!7259026 (= lt!2589788 (derivationStepZipperUp!2505 lt!2589780 (h!76947 s1!1971)))))

(declare-fun lt!2589803 () Unit!163992)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1736 ((InoxSet Context!15242) (InoxSet Context!15242) List!70623) Unit!163992)

(assert (=> b!7259026 (= lt!2589803 (lemmaZipperConcatMatchesSameAsBothZippers!1736 lt!2589817 lt!2589788 (t!384687 s1!1971)))))

(declare-fun res!2943481 () Bool)

(assert (=> b!7259026 (= res!2943481 (matchZipper!3591 lt!2589817 (t!384687 s1!1971)))))

(assert (=> b!7259026 (=> res!2943481 e!4352794)))

(assert (=> b!7259026 (= (matchZipper!3591 ((_ map or) lt!2589817 lt!2589788) (t!384687 s1!1971)) e!4352794)))

(declare-fun lt!2589790 () Unit!163992)

(assert (=> b!7259026 (= lt!2589790 (lemmaConcatPreservesForall!1488 (exprs!8121 ct1!232) (exprs!8121 ct2!328) lambda!446098))))

(declare-fun lt!2589794 () (InoxSet Context!15242))

(assert (=> b!7259026 (= lt!2589794 (derivationStepZipperUp!2505 lt!2589777 (h!76947 s1!1971)))))

(declare-fun lt!2589814 () Unit!163992)

(assert (=> b!7259026 (= lt!2589814 (lemmaZipperConcatMatchesSameAsBothZippers!1736 lt!2589796 lt!2589794 lt!2589806))))

(declare-fun res!2943479 () Bool)

(assert (=> b!7259026 (= res!2943479 (matchZipper!3591 lt!2589796 lt!2589806))))

(declare-fun e!4352791 () Bool)

(assert (=> b!7259026 (=> res!2943479 e!4352791)))

(assert (=> b!7259026 (= (matchZipper!3591 ((_ map or) lt!2589796 lt!2589794) lt!2589806) e!4352791)))

(declare-fun b!7259027 () Bool)

(assert (=> b!7259027 (= e!4352791 (matchZipper!3591 lt!2589794 lt!2589806))))

(assert (= (and start!707246 res!2943480) b!7259012))

(assert (= (and b!7259012 res!2943483) b!7259022))

(assert (= (and b!7259022 res!2943473) b!7259024))

(assert (= (and b!7259024 res!2943474) b!7259025))

(assert (= (and b!7259025 (not res!2943482)) b!7259023))

(assert (= (and b!7259023 (not res!2943476)) b!7259011))

(assert (= (and b!7259011 (not res!2943477)) b!7259019))

(assert (= (and b!7259019 c!1350205) b!7259026))

(assert (= (and b!7259019 (not c!1350205)) b!7259018))

(assert (= (and b!7259026 (not res!2943481)) b!7259015))

(assert (= (and b!7259026 (not res!2943479)) b!7259027))

(assert (= (and b!7259019 res!2943478) b!7259016))

(assert (= (and b!7259019 res!2943475) b!7259013))

(assert (= start!707246 b!7259021))

(assert (= (and start!707246 ((_ is Cons!70499) s1!1971)) b!7259017))

(assert (= (and start!707246 ((_ is Cons!70499) s2!1849)) b!7259020))

(assert (= start!707246 b!7259014))

(declare-fun m!7942512 () Bool)

(assert (=> b!7259015 m!7942512))

(declare-fun m!7942514 () Bool)

(assert (=> b!7259022 m!7942514))

(declare-fun m!7942516 () Bool)

(assert (=> b!7259022 m!7942516))

(declare-fun m!7942518 () Bool)

(assert (=> b!7259022 m!7942518))

(declare-fun m!7942520 () Bool)

(assert (=> start!707246 m!7942520))

(declare-fun m!7942522 () Bool)

(assert (=> start!707246 m!7942522))

(declare-fun m!7942524 () Bool)

(assert (=> start!707246 m!7942524))

(declare-fun m!7942526 () Bool)

(assert (=> start!707246 m!7942526))

(declare-fun m!7942528 () Bool)

(assert (=> b!7259012 m!7942528))

(assert (=> b!7259012 m!7942528))

(declare-fun m!7942530 () Bool)

(assert (=> b!7259012 m!7942530))

(declare-fun m!7942532 () Bool)

(assert (=> b!7259024 m!7942532))

(declare-fun m!7942534 () Bool)

(assert (=> b!7259024 m!7942534))

(declare-fun m!7942536 () Bool)

(assert (=> b!7259011 m!7942536))

(declare-fun m!7942538 () Bool)

(assert (=> b!7259011 m!7942538))

(declare-fun m!7942540 () Bool)

(assert (=> b!7259011 m!7942540))

(assert (=> b!7259011 m!7942518))

(declare-fun m!7942542 () Bool)

(assert (=> b!7259011 m!7942542))

(assert (=> b!7259011 m!7942518))

(assert (=> b!7259026 m!7942518))

(assert (=> b!7259026 m!7942518))

(declare-fun m!7942544 () Bool)

(assert (=> b!7259026 m!7942544))

(declare-fun m!7942546 () Bool)

(assert (=> b!7259026 m!7942546))

(declare-fun m!7942548 () Bool)

(assert (=> b!7259026 m!7942548))

(declare-fun m!7942550 () Bool)

(assert (=> b!7259026 m!7942550))

(declare-fun m!7942552 () Bool)

(assert (=> b!7259026 m!7942552))

(declare-fun m!7942554 () Bool)

(assert (=> b!7259026 m!7942554))

(declare-fun m!7942556 () Bool)

(assert (=> b!7259026 m!7942556))

(declare-fun m!7942558 () Bool)

(assert (=> b!7259026 m!7942558))

(declare-fun m!7942560 () Bool)

(assert (=> b!7259019 m!7942560))

(declare-fun m!7942562 () Bool)

(assert (=> b!7259019 m!7942562))

(declare-fun m!7942564 () Bool)

(assert (=> b!7259019 m!7942564))

(declare-fun m!7942566 () Bool)

(assert (=> b!7259019 m!7942566))

(declare-fun m!7942568 () Bool)

(assert (=> b!7259019 m!7942568))

(assert (=> b!7259019 m!7942518))

(declare-fun m!7942570 () Bool)

(assert (=> b!7259019 m!7942570))

(declare-fun m!7942572 () Bool)

(assert (=> b!7259019 m!7942572))

(declare-fun m!7942574 () Bool)

(assert (=> b!7259019 m!7942574))

(declare-fun m!7942576 () Bool)

(assert (=> b!7259019 m!7942576))

(declare-fun m!7942578 () Bool)

(assert (=> b!7259019 m!7942578))

(declare-fun m!7942580 () Bool)

(assert (=> b!7259019 m!7942580))

(assert (=> b!7259019 m!7942562))

(declare-fun m!7942582 () Bool)

(assert (=> b!7259019 m!7942582))

(assert (=> b!7259019 m!7942536))

(declare-fun m!7942584 () Bool)

(assert (=> b!7259019 m!7942584))

(declare-fun m!7942586 () Bool)

(assert (=> b!7259019 m!7942586))

(assert (=> b!7259019 m!7942518))

(declare-fun m!7942588 () Bool)

(assert (=> b!7259019 m!7942588))

(declare-fun m!7942590 () Bool)

(assert (=> b!7259019 m!7942590))

(declare-fun m!7942592 () Bool)

(assert (=> b!7259019 m!7942592))

(assert (=> b!7259019 m!7942562))

(assert (=> b!7259019 m!7942518))

(declare-fun m!7942594 () Bool)

(assert (=> b!7259019 m!7942594))

(declare-fun m!7942596 () Bool)

(assert (=> b!7259019 m!7942596))

(assert (=> b!7259019 m!7942570))

(declare-fun m!7942598 () Bool)

(assert (=> b!7259019 m!7942598))

(declare-fun m!7942600 () Bool)

(assert (=> b!7259019 m!7942600))

(declare-fun m!7942602 () Bool)

(assert (=> b!7259013 m!7942602))

(assert (=> b!7259016 m!7942574))

(declare-fun m!7942604 () Bool)

(assert (=> b!7259025 m!7942604))

(declare-fun m!7942606 () Bool)

(assert (=> b!7259025 m!7942606))

(declare-fun m!7942608 () Bool)

(assert (=> b!7259025 m!7942608))

(declare-fun m!7942610 () Bool)

(assert (=> b!7259025 m!7942610))

(declare-fun m!7942612 () Bool)

(assert (=> b!7259025 m!7942612))

(declare-fun m!7942614 () Bool)

(assert (=> b!7259023 m!7942614))

(assert (=> b!7259023 m!7942562))

(declare-fun m!7942616 () Bool)

(assert (=> b!7259023 m!7942616))

(declare-fun m!7942618 () Bool)

(assert (=> b!7259023 m!7942618))

(declare-fun m!7942620 () Bool)

(assert (=> b!7259023 m!7942620))

(assert (=> b!7259023 m!7942566))

(assert (=> b!7259023 m!7942618))

(declare-fun m!7942622 () Bool)

(assert (=> b!7259023 m!7942622))

(assert (=> b!7259023 m!7942562))

(declare-fun m!7942624 () Bool)

(assert (=> b!7259023 m!7942624))

(declare-fun m!7942626 () Bool)

(assert (=> b!7259023 m!7942626))

(declare-fun m!7942628 () Bool)

(assert (=> b!7259027 m!7942628))

(check-sat (not b!7259011) (not b!7259017) (not b!7259026) (not b!7259015) (not b!7259012) (not b!7259014) (not b!7259022) (not b!7259027) (not b!7259023) tp_is_empty!46827 (not b!7259021) (not start!707246) (not b!7259020) (not b!7259013) (not b!7259024) (not b!7259019) (not b!7259025) (not b!7259016))
(check-sat)
(get-model)

(declare-fun d!2257991 () Bool)

(declare-fun forall!17537 (List!70624 Int) Bool)

(assert (=> d!2257991 (forall!17537 (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328)) lambda!446098)))

(declare-fun lt!2589875 () Unit!163992)

(declare-fun choose!56201 (List!70624 List!70624 Int) Unit!163992)

(assert (=> d!2257991 (= lt!2589875 (choose!56201 (exprs!8121 lt!2589778) (exprs!8121 ct2!328) lambda!446098))))

(assert (=> d!2257991 (forall!17537 (exprs!8121 lt!2589778) lambda!446098)))

(assert (=> d!2257991 (= (lemmaConcatPreservesForall!1488 (exprs!8121 lt!2589778) (exprs!8121 ct2!328) lambda!446098) lt!2589875)))

(declare-fun bs!1908300 () Bool)

(assert (= bs!1908300 d!2257991))

(assert (=> bs!1908300 m!7942626))

(assert (=> bs!1908300 m!7942626))

(declare-fun m!7942934 () Bool)

(assert (=> bs!1908300 m!7942934))

(declare-fun m!7942936 () Bool)

(assert (=> bs!1908300 m!7942936))

(declare-fun m!7942938 () Bool)

(assert (=> bs!1908300 m!7942938))

(assert (=> b!7259019 d!2257991))

(declare-fun call!661622 () (InoxSet Context!15242))

(declare-fun e!4352905 () (InoxSet Context!15242))

(declare-fun b!7259211 () Bool)

(assert (=> b!7259211 (= e!4352905 ((_ map or) call!661622 (derivationStepZipperUp!2505 (Context!15243 (t!384688 (exprs!8121 lt!2589787))) (h!76947 s1!1971))))))

(declare-fun bm!661617 () Bool)

(assert (=> bm!661617 (= call!661622 (derivationStepZipperDown!2675 (h!76948 (exprs!8121 lt!2589787)) (Context!15243 (t!384688 (exprs!8121 lt!2589787))) (h!76947 s1!1971)))))

(declare-fun b!7259212 () Bool)

(declare-fun e!4352907 () (InoxSet Context!15242))

(assert (=> b!7259212 (= e!4352907 call!661622)))

(declare-fun d!2257993 () Bool)

(declare-fun c!1350277 () Bool)

(declare-fun e!4352906 () Bool)

(assert (=> d!2257993 (= c!1350277 e!4352906)))

(declare-fun res!2943523 () Bool)

(assert (=> d!2257993 (=> (not res!2943523) (not e!4352906))))

(assert (=> d!2257993 (= res!2943523 ((_ is Cons!70500) (exprs!8121 lt!2589787)))))

(assert (=> d!2257993 (= (derivationStepZipperUp!2505 lt!2589787 (h!76947 s1!1971)) e!4352905)))

(declare-fun b!7259213 () Bool)

(assert (=> b!7259213 (= e!4352905 e!4352907)))

(declare-fun c!1350276 () Bool)

(assert (=> b!7259213 (= c!1350276 ((_ is Cons!70500) (exprs!8121 lt!2589787)))))

(declare-fun b!7259214 () Bool)

(assert (=> b!7259214 (= e!4352907 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259215 () Bool)

(assert (=> b!7259215 (= e!4352906 (nullable!7941 (h!76948 (exprs!8121 lt!2589787))))))

(assert (= (and d!2257993 res!2943523) b!7259215))

(assert (= (and d!2257993 c!1350277) b!7259211))

(assert (= (and d!2257993 (not c!1350277)) b!7259213))

(assert (= (and b!7259213 c!1350276) b!7259212))

(assert (= (and b!7259213 (not c!1350276)) b!7259214))

(assert (= (or b!7259211 b!7259212) bm!661617))

(declare-fun m!7942940 () Bool)

(assert (=> b!7259211 m!7942940))

(declare-fun m!7942942 () Bool)

(assert (=> bm!661617 m!7942942))

(declare-fun m!7942944 () Bool)

(assert (=> b!7259215 m!7942944))

(assert (=> b!7259019 d!2257993))

(declare-fun d!2257995 () Bool)

(assert (=> d!2257995 (forall!17537 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328)) lambda!446098)))

(declare-fun lt!2589876 () Unit!163992)

(assert (=> d!2257995 (= lt!2589876 (choose!56201 (exprs!8121 ct1!232) (exprs!8121 ct2!328) lambda!446098))))

(assert (=> d!2257995 (forall!17537 (exprs!8121 ct1!232) lambda!446098)))

(assert (=> d!2257995 (= (lemmaConcatPreservesForall!1488 (exprs!8121 ct1!232) (exprs!8121 ct2!328) lambda!446098) lt!2589876)))

(declare-fun bs!1908301 () Bool)

(assert (= bs!1908301 d!2257995))

(assert (=> bs!1908301 m!7942516))

(assert (=> bs!1908301 m!7942516))

(declare-fun m!7942946 () Bool)

(assert (=> bs!1908301 m!7942946))

(declare-fun m!7942948 () Bool)

(assert (=> bs!1908301 m!7942948))

(declare-fun m!7942950 () Bool)

(assert (=> bs!1908301 m!7942950))

(assert (=> b!7259019 d!2257995))

(declare-fun d!2257997 () Bool)

(declare-fun c!1350280 () Bool)

(declare-fun isEmpty!40598 (List!70623) Bool)

(assert (=> d!2257997 (= c!1350280 (isEmpty!40598 lt!2589811))))

(declare-fun e!4352910 () Bool)

(assert (=> d!2257997 (= (matchZipper!3591 lt!2589797 lt!2589811) e!4352910)))

(declare-fun b!7259220 () Bool)

(declare-fun nullableZipper!2936 ((InoxSet Context!15242)) Bool)

(assert (=> b!7259220 (= e!4352910 (nullableZipper!2936 lt!2589797))))

(declare-fun b!7259221 () Bool)

(declare-fun head!14933 (List!70623) C!37636)

(assert (=> b!7259221 (= e!4352910 (matchZipper!3591 (derivationStepZipper!3459 lt!2589797 (head!14933 lt!2589811)) (tail!14387 lt!2589811)))))

(assert (= (and d!2257997 c!1350280) b!7259220))

(assert (= (and d!2257997 (not c!1350280)) b!7259221))

(declare-fun m!7942952 () Bool)

(assert (=> d!2257997 m!7942952))

(declare-fun m!7942954 () Bool)

(assert (=> b!7259220 m!7942954))

(declare-fun m!7942956 () Bool)

(assert (=> b!7259221 m!7942956))

(assert (=> b!7259221 m!7942956))

(declare-fun m!7942958 () Bool)

(assert (=> b!7259221 m!7942958))

(assert (=> b!7259221 m!7942590))

(assert (=> b!7259221 m!7942958))

(assert (=> b!7259221 m!7942590))

(declare-fun m!7942960 () Bool)

(assert (=> b!7259221 m!7942960))

(assert (=> b!7259019 d!2257997))

(declare-fun d!2257999 () Bool)

(declare-fun e!4352913 () Bool)

(assert (=> d!2257999 e!4352913))

(declare-fun res!2943526 () Bool)

(assert (=> d!2257999 (=> (not res!2943526) (not e!4352913))))

(declare-fun lt!2589879 () List!70625)

(declare-fun noDuplicate!3011 (List!70625) Bool)

(assert (=> d!2257999 (= res!2943526 (noDuplicate!3011 lt!2589879))))

(declare-fun choose!56202 ((InoxSet Context!15242)) List!70625)

(assert (=> d!2257999 (= lt!2589879 (choose!56202 lt!2589798))))

(assert (=> d!2257999 (= (toList!11510 lt!2589798) lt!2589879)))

(declare-fun b!7259224 () Bool)

(assert (=> b!7259224 (= e!4352913 (= (content!14674 lt!2589879) lt!2589798))))

(assert (= (and d!2257999 res!2943526) b!7259224))

(declare-fun m!7942962 () Bool)

(assert (=> d!2257999 m!7942962))

(declare-fun m!7942964 () Bool)

(assert (=> d!2257999 m!7942964))

(declare-fun m!7942966 () Bool)

(assert (=> b!7259224 m!7942966))

(assert (=> b!7259019 d!2257999))

(declare-fun d!2258001 () Bool)

(declare-fun dynLambda!28812 (Int Context!15242) (InoxSet Context!15242))

(assert (=> d!2258001 (= (flatMap!2846 lt!2589797 lambda!446100) (dynLambda!28812 lambda!446100 lt!2589787))))

(declare-fun lt!2589882 () Unit!163992)

(declare-fun choose!56203 ((InoxSet Context!15242) Context!15242 Int) Unit!163992)

(assert (=> d!2258001 (= lt!2589882 (choose!56203 lt!2589797 lt!2589787 lambda!446100))))

(assert (=> d!2258001 (= lt!2589797 (store ((as const (Array Context!15242 Bool)) false) lt!2589787 true))))

(assert (=> d!2258001 (= (lemmaFlatMapOnSingletonSet!2250 lt!2589797 lt!2589787 lambda!446100) lt!2589882)))

(declare-fun b_lambda!279157 () Bool)

(assert (=> (not b_lambda!279157) (not d!2258001)))

(declare-fun bs!1908302 () Bool)

(assert (= bs!1908302 d!2258001))

(assert (=> bs!1908302 m!7942588))

(declare-fun m!7942968 () Bool)

(assert (=> bs!1908302 m!7942968))

(declare-fun m!7942970 () Bool)

(assert (=> bs!1908302 m!7942970))

(assert (=> bs!1908302 m!7942514))

(assert (=> b!7259019 d!2258001))

(declare-fun b!7259234 () Bool)

(declare-fun e!4352918 () List!70623)

(assert (=> b!7259234 (= e!4352918 (Cons!70499 (h!76947 s1!1971) (++!16624 (t!384687 s1!1971) s2!1849)))))

(declare-fun lt!2589885 () List!70623)

(declare-fun e!4352919 () Bool)

(declare-fun b!7259236 () Bool)

(assert (=> b!7259236 (= e!4352919 (or (not (= s2!1849 Nil!70499)) (= lt!2589885 s1!1971)))))

(declare-fun b!7259233 () Bool)

(assert (=> b!7259233 (= e!4352918 s2!1849)))

(declare-fun d!2258003 () Bool)

(assert (=> d!2258003 e!4352919))

(declare-fun res!2943532 () Bool)

(assert (=> d!2258003 (=> (not res!2943532) (not e!4352919))))

(declare-fun content!14677 (List!70623) (InoxSet C!37636))

(assert (=> d!2258003 (= res!2943532 (= (content!14677 lt!2589885) ((_ map or) (content!14677 s1!1971) (content!14677 s2!1849))))))

(assert (=> d!2258003 (= lt!2589885 e!4352918)))

(declare-fun c!1350283 () Bool)

(assert (=> d!2258003 (= c!1350283 ((_ is Nil!70499) s1!1971))))

(assert (=> d!2258003 (= (++!16624 s1!1971 s2!1849) lt!2589885)))

(declare-fun b!7259235 () Bool)

(declare-fun res!2943531 () Bool)

(assert (=> b!7259235 (=> (not res!2943531) (not e!4352919))))

(declare-fun size!41760 (List!70623) Int)

(assert (=> b!7259235 (= res!2943531 (= (size!41760 lt!2589885) (+ (size!41760 s1!1971) (size!41760 s2!1849))))))

(assert (= (and d!2258003 c!1350283) b!7259233))

(assert (= (and d!2258003 (not c!1350283)) b!7259234))

(assert (= (and d!2258003 res!2943532) b!7259235))

(assert (= (and b!7259235 res!2943531) b!7259236))

(assert (=> b!7259234 m!7942622))

(declare-fun m!7942972 () Bool)

(assert (=> d!2258003 m!7942972))

(declare-fun m!7942974 () Bool)

(assert (=> d!2258003 m!7942974))

(declare-fun m!7942976 () Bool)

(assert (=> d!2258003 m!7942976))

(declare-fun m!7942978 () Bool)

(assert (=> b!7259235 m!7942978))

(declare-fun m!7942980 () Bool)

(assert (=> b!7259235 m!7942980))

(declare-fun m!7942982 () Bool)

(assert (=> b!7259235 m!7942982))

(assert (=> b!7259019 d!2258003))

(declare-fun d!2258005 () Bool)

(declare-fun c!1350286 () Bool)

(assert (=> d!2258005 (= c!1350286 ((_ is Nil!70501) lt!2589782))))

(declare-fun e!4352922 () (InoxSet Context!15242))

(assert (=> d!2258005 (= (content!14674 lt!2589782) e!4352922)))

(declare-fun b!7259241 () Bool)

(assert (=> b!7259241 (= e!4352922 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259242 () Bool)

(assert (=> b!7259242 (= e!4352922 ((_ map or) (store ((as const (Array Context!15242 Bool)) false) (h!76949 lt!2589782) true) (content!14674 (t!384689 lt!2589782))))))

(assert (= (and d!2258005 c!1350286) b!7259241))

(assert (= (and d!2258005 (not c!1350286)) b!7259242))

(declare-fun m!7942984 () Bool)

(assert (=> b!7259242 m!7942984))

(declare-fun m!7942986 () Bool)

(assert (=> b!7259242 m!7942986))

(assert (=> b!7259019 d!2258005))

(declare-fun d!2258007 () Bool)

(declare-fun c!1350287 () Bool)

(assert (=> d!2258007 (= c!1350287 (isEmpty!40598 lt!2589806))))

(declare-fun e!4352923 () Bool)

(assert (=> d!2258007 (= (matchZipper!3591 (content!14674 lt!2589782) lt!2589806) e!4352923)))

(declare-fun b!7259243 () Bool)

(assert (=> b!7259243 (= e!4352923 (nullableZipper!2936 (content!14674 lt!2589782)))))

(declare-fun b!7259244 () Bool)

(assert (=> b!7259244 (= e!4352923 (matchZipper!3591 (derivationStepZipper!3459 (content!14674 lt!2589782) (head!14933 lt!2589806)) (tail!14387 lt!2589806)))))

(assert (= (and d!2258007 c!1350287) b!7259243))

(assert (= (and d!2258007 (not c!1350287)) b!7259244))

(declare-fun m!7942988 () Bool)

(assert (=> d!2258007 m!7942988))

(assert (=> b!7259243 m!7942570))

(declare-fun m!7942990 () Bool)

(assert (=> b!7259243 m!7942990))

(declare-fun m!7942992 () Bool)

(assert (=> b!7259244 m!7942992))

(assert (=> b!7259244 m!7942570))

(assert (=> b!7259244 m!7942992))

(declare-fun m!7942994 () Bool)

(assert (=> b!7259244 m!7942994))

(declare-fun m!7942996 () Bool)

(assert (=> b!7259244 m!7942996))

(assert (=> b!7259244 m!7942994))

(assert (=> b!7259244 m!7942996))

(declare-fun m!7942998 () Bool)

(assert (=> b!7259244 m!7942998))

(assert (=> b!7259019 d!2258007))

(declare-fun e!4352924 () (InoxSet Context!15242))

(declare-fun b!7259245 () Bool)

(declare-fun call!661623 () (InoxSet Context!15242))

(assert (=> b!7259245 (= e!4352924 ((_ map or) call!661623 (derivationStepZipperUp!2505 (Context!15243 (t!384688 (exprs!8121 ct1!232))) (h!76947 s1!1971))))))

(declare-fun bm!661618 () Bool)

(assert (=> bm!661618 (= call!661623 (derivationStepZipperDown!2675 (h!76948 (exprs!8121 ct1!232)) (Context!15243 (t!384688 (exprs!8121 ct1!232))) (h!76947 s1!1971)))))

(declare-fun b!7259246 () Bool)

(declare-fun e!4352926 () (InoxSet Context!15242))

(assert (=> b!7259246 (= e!4352926 call!661623)))

(declare-fun d!2258009 () Bool)

(declare-fun c!1350289 () Bool)

(declare-fun e!4352925 () Bool)

(assert (=> d!2258009 (= c!1350289 e!4352925)))

(declare-fun res!2943533 () Bool)

(assert (=> d!2258009 (=> (not res!2943533) (not e!4352925))))

(assert (=> d!2258009 (= res!2943533 ((_ is Cons!70500) (exprs!8121 ct1!232)))))

(assert (=> d!2258009 (= (derivationStepZipperUp!2505 ct1!232 (h!76947 s1!1971)) e!4352924)))

(declare-fun b!7259247 () Bool)

(assert (=> b!7259247 (= e!4352924 e!4352926)))

(declare-fun c!1350288 () Bool)

(assert (=> b!7259247 (= c!1350288 ((_ is Cons!70500) (exprs!8121 ct1!232)))))

(declare-fun b!7259248 () Bool)

(assert (=> b!7259248 (= e!4352926 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259249 () Bool)

(assert (=> b!7259249 (= e!4352925 (nullable!7941 (h!76948 (exprs!8121 ct1!232))))))

(assert (= (and d!2258009 res!2943533) b!7259249))

(assert (= (and d!2258009 c!1350289) b!7259245))

(assert (= (and d!2258009 (not c!1350289)) b!7259247))

(assert (= (and b!7259247 c!1350288) b!7259246))

(assert (= (and b!7259247 (not c!1350288)) b!7259248))

(assert (= (or b!7259245 b!7259246) bm!661618))

(declare-fun m!7943000 () Bool)

(assert (=> b!7259245 m!7943000))

(declare-fun m!7943002 () Bool)

(assert (=> bm!661618 m!7943002))

(assert (=> b!7259249 m!7942584))

(assert (=> b!7259019 d!2258009))

(declare-fun d!2258011 () Bool)

(declare-fun choose!56204 ((InoxSet Context!15242) Int) (InoxSet Context!15242))

(assert (=> d!2258011 (= (flatMap!2846 lt!2589797 lambda!446100) (choose!56204 lt!2589797 lambda!446100))))

(declare-fun bs!1908303 () Bool)

(assert (= bs!1908303 d!2258011))

(declare-fun m!7943004 () Bool)

(assert (=> bs!1908303 m!7943004))

(assert (=> b!7259019 d!2258011))

(declare-fun d!2258013 () Bool)

(declare-fun lt!2589888 () Bool)

(assert (=> d!2258013 (= lt!2589888 (exists!4441 (toList!11510 lt!2589798) lambda!446101))))

(declare-fun choose!56205 ((InoxSet Context!15242) Int) Bool)

(assert (=> d!2258013 (= lt!2589888 (choose!56205 lt!2589798 lambda!446101))))

(assert (=> d!2258013 (= (exists!4440 lt!2589798 lambda!446101) lt!2589888)))

(declare-fun bs!1908304 () Bool)

(assert (= bs!1908304 d!2258013))

(assert (=> bs!1908304 m!7942560))

(assert (=> bs!1908304 m!7942560))

(declare-fun m!7943006 () Bool)

(assert (=> bs!1908304 m!7943006))

(declare-fun m!7943008 () Bool)

(assert (=> bs!1908304 m!7943008))

(assert (=> b!7259019 d!2258013))

(declare-fun d!2258015 () Bool)

(assert (=> d!2258015 (= (flatMap!2846 lt!2589785 lambda!446100) (choose!56204 lt!2589785 lambda!446100))))

(declare-fun bs!1908305 () Bool)

(assert (= bs!1908305 d!2258015))

(declare-fun m!7943010 () Bool)

(assert (=> bs!1908305 m!7943010))

(assert (=> b!7259019 d!2258015))

(declare-fun c!1350304 () Bool)

(declare-fun c!1350302 () Bool)

(declare-fun bm!661631 () Bool)

(declare-fun c!1350301 () Bool)

(declare-fun call!661639 () List!70624)

(declare-fun call!661638 () (InoxSet Context!15242))

(assert (=> bm!661631 (= call!661638 (derivationStepZipperDown!2675 (ite c!1350301 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350304 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350302 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232)))))) (ite (or c!1350301 c!1350304) lt!2589777 (Context!15243 call!661639)) (h!76947 s1!1971)))))

(declare-fun bm!661632 () Bool)

(declare-fun call!661637 () (InoxSet Context!15242))

(declare-fun call!661641 () (InoxSet Context!15242))

(assert (=> bm!661632 (= call!661637 call!661641)))

(declare-fun b!7259272 () Bool)

(declare-fun e!4352944 () (InoxSet Context!15242))

(declare-fun e!4352942 () (InoxSet Context!15242))

(assert (=> b!7259272 (= e!4352944 e!4352942)))

(assert (=> b!7259272 (= c!1350301 ((_ is Union!18681) (h!76948 (exprs!8121 ct1!232))))))

(declare-fun d!2258017 () Bool)

(declare-fun c!1350300 () Bool)

(assert (=> d!2258017 (= c!1350300 (and ((_ is ElementMatch!18681) (h!76948 (exprs!8121 ct1!232))) (= (c!1350206 (h!76948 (exprs!8121 ct1!232))) (h!76947 s1!1971))))))

(assert (=> d!2258017 (= (derivationStepZipperDown!2675 (h!76948 (exprs!8121 ct1!232)) lt!2589777 (h!76947 s1!1971)) e!4352944)))

(declare-fun b!7259273 () Bool)

(declare-fun e!4352939 () Bool)

(assert (=> b!7259273 (= c!1350304 e!4352939)))

(declare-fun res!2943536 () Bool)

(assert (=> b!7259273 (=> (not res!2943536) (not e!4352939))))

(assert (=> b!7259273 (= res!2943536 ((_ is Concat!27526) (h!76948 (exprs!8121 ct1!232))))))

(declare-fun e!4352943 () (InoxSet Context!15242))

(assert (=> b!7259273 (= e!4352942 e!4352943)))

(declare-fun b!7259274 () Bool)

(declare-fun call!661640 () (InoxSet Context!15242))

(assert (=> b!7259274 (= e!4352942 ((_ map or) call!661638 call!661640))))

(declare-fun bm!661633 () Bool)

(assert (=> bm!661633 (= call!661641 call!661638)))

(declare-fun b!7259275 () Bool)

(assert (=> b!7259275 (= e!4352939 (nullable!7941 (regOne!37874 (h!76948 (exprs!8121 ct1!232)))))))

(declare-fun b!7259276 () Bool)

(declare-fun c!1350303 () Bool)

(assert (=> b!7259276 (= c!1350303 ((_ is Star!18681) (h!76948 (exprs!8121 ct1!232))))))

(declare-fun e!4352940 () (InoxSet Context!15242))

(declare-fun e!4352941 () (InoxSet Context!15242))

(assert (=> b!7259276 (= e!4352940 e!4352941)))

(declare-fun bm!661634 () Bool)

(declare-fun call!661636 () List!70624)

(assert (=> bm!661634 (= call!661639 call!661636)))

(declare-fun bm!661635 () Bool)

(declare-fun $colon$colon!2938 (List!70624 Regex!18681) List!70624)

(assert (=> bm!661635 (= call!661636 ($colon$colon!2938 (exprs!8121 lt!2589777) (ite (or c!1350304 c!1350302) (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (h!76948 (exprs!8121 ct1!232)))))))

(declare-fun b!7259277 () Bool)

(assert (=> b!7259277 (= e!4352941 call!661637)))

(declare-fun b!7259278 () Bool)

(assert (=> b!7259278 (= e!4352940 call!661637)))

(declare-fun b!7259279 () Bool)

(assert (=> b!7259279 (= e!4352943 e!4352940)))

(assert (=> b!7259279 (= c!1350302 ((_ is Concat!27526) (h!76948 (exprs!8121 ct1!232))))))

(declare-fun b!7259280 () Bool)

(assert (=> b!7259280 (= e!4352943 ((_ map or) call!661640 call!661641))))

(declare-fun b!7259281 () Bool)

(assert (=> b!7259281 (= e!4352941 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259282 () Bool)

(assert (=> b!7259282 (= e!4352944 (store ((as const (Array Context!15242 Bool)) false) lt!2589777 true))))

(declare-fun bm!661636 () Bool)

(assert (=> bm!661636 (= call!661640 (derivationStepZipperDown!2675 (ite c!1350301 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232)))) (ite c!1350301 lt!2589777 (Context!15243 call!661636)) (h!76947 s1!1971)))))

(assert (= (and d!2258017 c!1350300) b!7259282))

(assert (= (and d!2258017 (not c!1350300)) b!7259272))

(assert (= (and b!7259272 c!1350301) b!7259274))

(assert (= (and b!7259272 (not c!1350301)) b!7259273))

(assert (= (and b!7259273 res!2943536) b!7259275))

(assert (= (and b!7259273 c!1350304) b!7259280))

(assert (= (and b!7259273 (not c!1350304)) b!7259279))

(assert (= (and b!7259279 c!1350302) b!7259278))

(assert (= (and b!7259279 (not c!1350302)) b!7259276))

(assert (= (and b!7259276 c!1350303) b!7259277))

(assert (= (and b!7259276 (not c!1350303)) b!7259281))

(assert (= (or b!7259278 b!7259277) bm!661634))

(assert (= (or b!7259278 b!7259277) bm!661632))

(assert (= (or b!7259280 bm!661634) bm!661635))

(assert (= (or b!7259280 bm!661632) bm!661633))

(assert (= (or b!7259274 b!7259280) bm!661636))

(assert (= (or b!7259274 bm!661633) bm!661631))

(declare-fun m!7943012 () Bool)

(assert (=> bm!661631 m!7943012))

(declare-fun m!7943014 () Bool)

(assert (=> b!7259282 m!7943014))

(declare-fun m!7943016 () Bool)

(assert (=> b!7259275 m!7943016))

(declare-fun m!7943018 () Bool)

(assert (=> bm!661635 m!7943018))

(declare-fun m!7943020 () Bool)

(assert (=> bm!661636 m!7943020))

(assert (=> b!7259019 d!2258017))

(declare-fun d!2258019 () Bool)

(assert (=> d!2258019 (exists!4440 lt!2589798 lambda!446101)))

(declare-fun lt!2589891 () Unit!163992)

(declare-fun choose!56206 ((InoxSet Context!15242) Context!15242 Int) Unit!163992)

(assert (=> d!2258019 (= lt!2589891 (choose!56206 lt!2589798 lt!2589808 lambda!446101))))

(assert (=> d!2258019 (select lt!2589798 lt!2589808)))

(assert (=> d!2258019 (= (lemmaContainsThenExists!229 lt!2589798 lt!2589808 lambda!446101) lt!2589891)))

(declare-fun bs!1908306 () Bool)

(assert (= bs!1908306 d!2258019))

(assert (=> bs!1908306 m!7942574))

(declare-fun m!7943022 () Bool)

(assert (=> bs!1908306 m!7943022))

(assert (=> bs!1908306 m!7942596))

(assert (=> b!7259019 d!2258019))

(declare-fun d!2258021 () Bool)

(assert (=> d!2258021 (= (tail!14386 lt!2589807) (t!384688 lt!2589807))))

(assert (=> b!7259019 d!2258021))

(declare-fun bs!1908307 () Bool)

(declare-fun d!2258023 () Bool)

(assert (= bs!1908307 (and d!2258023 b!7259022)))

(declare-fun lambda!446131 () Int)

(assert (=> bs!1908307 (= lambda!446131 lambda!446098)))

(assert (=> d!2258023 (select (derivationStepZipperUp!2505 (Context!15243 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328))) (h!76947 s1!1971)) (Context!15243 (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328))))))

(declare-fun lt!2589900 () Unit!163992)

(assert (=> d!2258023 (= lt!2589900 (lemmaConcatPreservesForall!1488 (exprs!8121 ct1!232) (exprs!8121 ct2!328) lambda!446131))))

(declare-fun lt!2589899 () Unit!163992)

(assert (=> d!2258023 (= lt!2589899 (lemmaConcatPreservesForall!1488 (exprs!8121 lt!2589778) (exprs!8121 ct2!328) lambda!446131))))

(declare-fun lt!2589898 () Unit!163992)

(declare-fun choose!56207 (Context!15242 Context!15242 Context!15242 C!37636) Unit!163992)

(assert (=> d!2258023 (= lt!2589898 (choose!56207 ct1!232 ct2!328 lt!2589778 (h!76947 s1!1971)))))

(assert (=> d!2258023 (select (derivationStepZipperUp!2505 ct1!232 (h!76947 s1!1971)) lt!2589778)))

(assert (=> d!2258023 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!36 ct1!232 ct2!328 lt!2589778 (h!76947 s1!1971)) lt!2589898)))

(declare-fun bs!1908308 () Bool)

(assert (= bs!1908308 d!2258023))

(declare-fun m!7943024 () Bool)

(assert (=> bs!1908308 m!7943024))

(declare-fun m!7943026 () Bool)

(assert (=> bs!1908308 m!7943026))

(assert (=> bs!1908308 m!7942566))

(declare-fun m!7943028 () Bool)

(assert (=> bs!1908308 m!7943028))

(declare-fun m!7943030 () Bool)

(assert (=> bs!1908308 m!7943030))

(declare-fun m!7943032 () Bool)

(assert (=> bs!1908308 m!7943032))

(assert (=> bs!1908308 m!7942626))

(assert (=> bs!1908308 m!7942516))

(declare-fun m!7943034 () Bool)

(assert (=> bs!1908308 m!7943034))

(assert (=> b!7259019 d!2258023))

(declare-fun d!2258025 () Bool)

(declare-fun nullableFct!3123 (Regex!18681) Bool)

(assert (=> d!2258025 (= (nullable!7941 (h!76948 (exprs!8121 ct1!232))) (nullableFct!3123 (h!76948 (exprs!8121 ct1!232))))))

(declare-fun bs!1908309 () Bool)

(assert (= bs!1908309 d!2258025))

(declare-fun m!7943036 () Bool)

(assert (=> bs!1908309 m!7943036))

(assert (=> b!7259019 d!2258025))

(declare-fun bs!1908310 () Bool)

(declare-fun d!2258027 () Bool)

(assert (= bs!1908310 (and d!2258027 b!7259025)))

(declare-fun lambda!446134 () Int)

(assert (=> bs!1908310 (= (= lt!2589806 (t!384687 s1!1971)) (= lambda!446134 lambda!446099))))

(declare-fun bs!1908311 () Bool)

(assert (= bs!1908311 (and d!2258027 b!7259019)))

(assert (=> bs!1908311 (= lambda!446134 lambda!446101)))

(assert (=> d!2258027 true))

(assert (=> d!2258027 (matchZipper!3591 (content!14674 lt!2589782) lt!2589806)))

(declare-fun lt!2589903 () Unit!163992)

(declare-fun choose!56208 (List!70625 List!70623) Unit!163992)

(assert (=> d!2258027 (= lt!2589903 (choose!56208 lt!2589782 lt!2589806))))

(assert (=> d!2258027 (exists!4441 lt!2589782 lambda!446134)))

(assert (=> d!2258027 (= (lemmaExistsMatchingContextThenMatchingString!90 lt!2589782 lt!2589806) lt!2589903)))

(declare-fun bs!1908312 () Bool)

(assert (= bs!1908312 d!2258027))

(assert (=> bs!1908312 m!7942570))

(assert (=> bs!1908312 m!7942570))

(assert (=> bs!1908312 m!7942572))

(declare-fun m!7943038 () Bool)

(assert (=> bs!1908312 m!7943038))

(declare-fun m!7943040 () Bool)

(assert (=> bs!1908312 m!7943040))

(assert (=> b!7259019 d!2258027))

(declare-fun d!2258029 () Bool)

(assert (=> d!2258029 (= (tail!14387 lt!2589811) (t!384687 lt!2589811))))

(assert (=> b!7259019 d!2258029))

(declare-fun d!2258031 () Bool)

(assert (=> d!2258031 (= (flatMap!2846 lt!2589785 lambda!446100) (dynLambda!28812 lambda!446100 ct1!232))))

(declare-fun lt!2589904 () Unit!163992)

(assert (=> d!2258031 (= lt!2589904 (choose!56203 lt!2589785 ct1!232 lambda!446100))))

(assert (=> d!2258031 (= lt!2589785 (store ((as const (Array Context!15242 Bool)) false) ct1!232 true))))

(assert (=> d!2258031 (= (lemmaFlatMapOnSingletonSet!2250 lt!2589785 ct1!232 lambda!446100) lt!2589904)))

(declare-fun b_lambda!279159 () Bool)

(assert (=> (not b_lambda!279159) (not d!2258031)))

(declare-fun bs!1908313 () Bool)

(assert (= bs!1908313 d!2258031))

(assert (=> bs!1908313 m!7942598))

(declare-fun m!7943042 () Bool)

(assert (=> bs!1908313 m!7943042))

(declare-fun m!7943044 () Bool)

(assert (=> bs!1908313 m!7943044))

(assert (=> bs!1908313 m!7942522))

(assert (=> b!7259019 d!2258031))

(declare-fun d!2258033 () Bool)

(declare-fun c!1350308 () Bool)

(assert (=> d!2258033 (= c!1350308 (isEmpty!40598 lt!2589806))))

(declare-fun e!4352946 () Bool)

(assert (=> d!2258033 (= (matchZipper!3591 ((_ map or) lt!2589796 lt!2589794) lt!2589806) e!4352946)))

(declare-fun b!7259283 () Bool)

(assert (=> b!7259283 (= e!4352946 (nullableZipper!2936 ((_ map or) lt!2589796 lt!2589794)))))

(declare-fun b!7259284 () Bool)

(assert (=> b!7259284 (= e!4352946 (matchZipper!3591 (derivationStepZipper!3459 ((_ map or) lt!2589796 lt!2589794) (head!14933 lt!2589806)) (tail!14387 lt!2589806)))))

(assert (= (and d!2258033 c!1350308) b!7259283))

(assert (= (and d!2258033 (not c!1350308)) b!7259284))

(assert (=> d!2258033 m!7942988))

(declare-fun m!7943046 () Bool)

(assert (=> b!7259283 m!7943046))

(assert (=> b!7259284 m!7942992))

(assert (=> b!7259284 m!7942992))

(declare-fun m!7943048 () Bool)

(assert (=> b!7259284 m!7943048))

(assert (=> b!7259284 m!7942996))

(assert (=> b!7259284 m!7943048))

(assert (=> b!7259284 m!7942996))

(declare-fun m!7943050 () Bool)

(assert (=> b!7259284 m!7943050))

(assert (=> b!7259026 d!2258033))

(declare-fun d!2258035 () Bool)

(declare-fun c!1350309 () Bool)

(assert (=> d!2258035 (= c!1350309 (isEmpty!40598 lt!2589806))))

(declare-fun e!4352947 () Bool)

(assert (=> d!2258035 (= (matchZipper!3591 lt!2589796 lt!2589806) e!4352947)))

(declare-fun b!7259285 () Bool)

(assert (=> b!7259285 (= e!4352947 (nullableZipper!2936 lt!2589796))))

(declare-fun b!7259286 () Bool)

(assert (=> b!7259286 (= e!4352947 (matchZipper!3591 (derivationStepZipper!3459 lt!2589796 (head!14933 lt!2589806)) (tail!14387 lt!2589806)))))

(assert (= (and d!2258035 c!1350309) b!7259285))

(assert (= (and d!2258035 (not c!1350309)) b!7259286))

(assert (=> d!2258035 m!7942988))

(declare-fun m!7943052 () Bool)

(assert (=> b!7259285 m!7943052))

(assert (=> b!7259286 m!7942992))

(assert (=> b!7259286 m!7942992))

(declare-fun m!7943054 () Bool)

(assert (=> b!7259286 m!7943054))

(assert (=> b!7259286 m!7942996))

(assert (=> b!7259286 m!7943054))

(assert (=> b!7259286 m!7942996))

(declare-fun m!7943056 () Bool)

(assert (=> b!7259286 m!7943056))

(assert (=> b!7259026 d!2258035))

(declare-fun e!4352950 () Bool)

(declare-fun d!2258037 () Bool)

(assert (=> d!2258037 (= (matchZipper!3591 ((_ map or) lt!2589796 lt!2589794) lt!2589806) e!4352950)))

(declare-fun res!2943539 () Bool)

(assert (=> d!2258037 (=> res!2943539 e!4352950)))

(assert (=> d!2258037 (= res!2943539 (matchZipper!3591 lt!2589796 lt!2589806))))

(declare-fun lt!2589907 () Unit!163992)

(declare-fun choose!56209 ((InoxSet Context!15242) (InoxSet Context!15242) List!70623) Unit!163992)

(assert (=> d!2258037 (= lt!2589907 (choose!56209 lt!2589796 lt!2589794 lt!2589806))))

(assert (=> d!2258037 (= (lemmaZipperConcatMatchesSameAsBothZippers!1736 lt!2589796 lt!2589794 lt!2589806) lt!2589907)))

(declare-fun b!7259289 () Bool)

(assert (=> b!7259289 (= e!4352950 (matchZipper!3591 lt!2589794 lt!2589806))))

(assert (= (and d!2258037 (not res!2943539)) b!7259289))

(assert (=> d!2258037 m!7942552))

(assert (=> d!2258037 m!7942550))

(declare-fun m!7943058 () Bool)

(assert (=> d!2258037 m!7943058))

(assert (=> b!7259289 m!7942628))

(assert (=> b!7259026 d!2258037))

(declare-fun e!4352951 () (InoxSet Context!15242))

(declare-fun call!661642 () (InoxSet Context!15242))

(declare-fun b!7259290 () Bool)

(assert (=> b!7259290 (= e!4352951 ((_ map or) call!661642 (derivationStepZipperUp!2505 (Context!15243 (t!384688 (exprs!8121 lt!2589780))) (h!76947 s1!1971))))))

(declare-fun bm!661637 () Bool)

(assert (=> bm!661637 (= call!661642 (derivationStepZipperDown!2675 (h!76948 (exprs!8121 lt!2589780)) (Context!15243 (t!384688 (exprs!8121 lt!2589780))) (h!76947 s1!1971)))))

(declare-fun b!7259291 () Bool)

(declare-fun e!4352953 () (InoxSet Context!15242))

(assert (=> b!7259291 (= e!4352953 call!661642)))

(declare-fun d!2258039 () Bool)

(declare-fun c!1350311 () Bool)

(declare-fun e!4352952 () Bool)

(assert (=> d!2258039 (= c!1350311 e!4352952)))

(declare-fun res!2943540 () Bool)

(assert (=> d!2258039 (=> (not res!2943540) (not e!4352952))))

(assert (=> d!2258039 (= res!2943540 ((_ is Cons!70500) (exprs!8121 lt!2589780)))))

(assert (=> d!2258039 (= (derivationStepZipperUp!2505 lt!2589780 (h!76947 s1!1971)) e!4352951)))

(declare-fun b!7259292 () Bool)

(assert (=> b!7259292 (= e!4352951 e!4352953)))

(declare-fun c!1350310 () Bool)

(assert (=> b!7259292 (= c!1350310 ((_ is Cons!70500) (exprs!8121 lt!2589780)))))

(declare-fun b!7259293 () Bool)

(assert (=> b!7259293 (= e!4352953 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259294 () Bool)

(assert (=> b!7259294 (= e!4352952 (nullable!7941 (h!76948 (exprs!8121 lt!2589780))))))

(assert (= (and d!2258039 res!2943540) b!7259294))

(assert (= (and d!2258039 c!1350311) b!7259290))

(assert (= (and d!2258039 (not c!1350311)) b!7259292))

(assert (= (and b!7259292 c!1350310) b!7259291))

(assert (= (and b!7259292 (not c!1350310)) b!7259293))

(assert (= (or b!7259290 b!7259291) bm!661637))

(declare-fun m!7943060 () Bool)

(assert (=> b!7259290 m!7943060))

(declare-fun m!7943062 () Bool)

(assert (=> bm!661637 m!7943062))

(declare-fun m!7943064 () Bool)

(assert (=> b!7259294 m!7943064))

(assert (=> b!7259026 d!2258039))

(declare-fun d!2258041 () Bool)

(declare-fun c!1350312 () Bool)

(assert (=> d!2258041 (= c!1350312 (isEmpty!40598 (t!384687 s1!1971)))))

(declare-fun e!4352954 () Bool)

(assert (=> d!2258041 (= (matchZipper!3591 lt!2589817 (t!384687 s1!1971)) e!4352954)))

(declare-fun b!7259295 () Bool)

(assert (=> b!7259295 (= e!4352954 (nullableZipper!2936 lt!2589817))))

(declare-fun b!7259296 () Bool)

(assert (=> b!7259296 (= e!4352954 (matchZipper!3591 (derivationStepZipper!3459 lt!2589817 (head!14933 (t!384687 s1!1971))) (tail!14387 (t!384687 s1!1971))))))

(assert (= (and d!2258041 c!1350312) b!7259295))

(assert (= (and d!2258041 (not c!1350312)) b!7259296))

(declare-fun m!7943066 () Bool)

(assert (=> d!2258041 m!7943066))

(declare-fun m!7943068 () Bool)

(assert (=> b!7259295 m!7943068))

(declare-fun m!7943070 () Bool)

(assert (=> b!7259296 m!7943070))

(assert (=> b!7259296 m!7943070))

(declare-fun m!7943072 () Bool)

(assert (=> b!7259296 m!7943072))

(declare-fun m!7943074 () Bool)

(assert (=> b!7259296 m!7943074))

(assert (=> b!7259296 m!7943072))

(assert (=> b!7259296 m!7943074))

(declare-fun m!7943076 () Bool)

(assert (=> b!7259296 m!7943076))

(assert (=> b!7259026 d!2258041))

(declare-fun b!7259297 () Bool)

(declare-fun e!4352955 () (InoxSet Context!15242))

(declare-fun call!661643 () (InoxSet Context!15242))

(assert (=> b!7259297 (= e!4352955 ((_ map or) call!661643 (derivationStepZipperUp!2505 (Context!15243 (t!384688 (exprs!8121 lt!2589777))) (h!76947 s1!1971))))))

(declare-fun bm!661638 () Bool)

(assert (=> bm!661638 (= call!661643 (derivationStepZipperDown!2675 (h!76948 (exprs!8121 lt!2589777)) (Context!15243 (t!384688 (exprs!8121 lt!2589777))) (h!76947 s1!1971)))))

(declare-fun b!7259298 () Bool)

(declare-fun e!4352957 () (InoxSet Context!15242))

(assert (=> b!7259298 (= e!4352957 call!661643)))

(declare-fun d!2258043 () Bool)

(declare-fun c!1350314 () Bool)

(declare-fun e!4352956 () Bool)

(assert (=> d!2258043 (= c!1350314 e!4352956)))

(declare-fun res!2943541 () Bool)

(assert (=> d!2258043 (=> (not res!2943541) (not e!4352956))))

(assert (=> d!2258043 (= res!2943541 ((_ is Cons!70500) (exprs!8121 lt!2589777)))))

(assert (=> d!2258043 (= (derivationStepZipperUp!2505 lt!2589777 (h!76947 s1!1971)) e!4352955)))

(declare-fun b!7259299 () Bool)

(assert (=> b!7259299 (= e!4352955 e!4352957)))

(declare-fun c!1350313 () Bool)

(assert (=> b!7259299 (= c!1350313 ((_ is Cons!70500) (exprs!8121 lt!2589777)))))

(declare-fun b!7259300 () Bool)

(assert (=> b!7259300 (= e!4352957 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259301 () Bool)

(assert (=> b!7259301 (= e!4352956 (nullable!7941 (h!76948 (exprs!8121 lt!2589777))))))

(assert (= (and d!2258043 res!2943541) b!7259301))

(assert (= (and d!2258043 c!1350314) b!7259297))

(assert (= (and d!2258043 (not c!1350314)) b!7259299))

(assert (= (and b!7259299 c!1350313) b!7259298))

(assert (= (and b!7259299 (not c!1350313)) b!7259300))

(assert (= (or b!7259297 b!7259298) bm!661638))

(declare-fun m!7943078 () Bool)

(assert (=> b!7259297 m!7943078))

(declare-fun m!7943080 () Bool)

(assert (=> bm!661638 m!7943080))

(declare-fun m!7943082 () Bool)

(assert (=> b!7259301 m!7943082))

(assert (=> b!7259026 d!2258043))

(assert (=> b!7259026 d!2257995))

(declare-fun d!2258045 () Bool)

(declare-fun c!1350315 () Bool)

(assert (=> d!2258045 (= c!1350315 (isEmpty!40598 (t!384687 s1!1971)))))

(declare-fun e!4352958 () Bool)

(assert (=> d!2258045 (= (matchZipper!3591 ((_ map or) lt!2589817 lt!2589788) (t!384687 s1!1971)) e!4352958)))

(declare-fun b!7259302 () Bool)

(assert (=> b!7259302 (= e!4352958 (nullableZipper!2936 ((_ map or) lt!2589817 lt!2589788)))))

(declare-fun b!7259303 () Bool)

(assert (=> b!7259303 (= e!4352958 (matchZipper!3591 (derivationStepZipper!3459 ((_ map or) lt!2589817 lt!2589788) (head!14933 (t!384687 s1!1971))) (tail!14387 (t!384687 s1!1971))))))

(assert (= (and d!2258045 c!1350315) b!7259302))

(assert (= (and d!2258045 (not c!1350315)) b!7259303))

(assert (=> d!2258045 m!7943066))

(declare-fun m!7943084 () Bool)

(assert (=> b!7259302 m!7943084))

(assert (=> b!7259303 m!7943070))

(assert (=> b!7259303 m!7943070))

(declare-fun m!7943086 () Bool)

(assert (=> b!7259303 m!7943086))

(assert (=> b!7259303 m!7943074))

(assert (=> b!7259303 m!7943086))

(assert (=> b!7259303 m!7943074))

(declare-fun m!7943088 () Bool)

(assert (=> b!7259303 m!7943088))

(assert (=> b!7259026 d!2258045))

(declare-fun d!2258047 () Bool)

(declare-fun e!4352959 () Bool)

(assert (=> d!2258047 (= (matchZipper!3591 ((_ map or) lt!2589817 lt!2589788) (t!384687 s1!1971)) e!4352959)))

(declare-fun res!2943542 () Bool)

(assert (=> d!2258047 (=> res!2943542 e!4352959)))

(assert (=> d!2258047 (= res!2943542 (matchZipper!3591 lt!2589817 (t!384687 s1!1971)))))

(declare-fun lt!2589908 () Unit!163992)

(assert (=> d!2258047 (= lt!2589908 (choose!56209 lt!2589817 lt!2589788 (t!384687 s1!1971)))))

(assert (=> d!2258047 (= (lemmaZipperConcatMatchesSameAsBothZippers!1736 lt!2589817 lt!2589788 (t!384687 s1!1971)) lt!2589908)))

(declare-fun b!7259304 () Bool)

(assert (=> b!7259304 (= e!4352959 (matchZipper!3591 lt!2589788 (t!384687 s1!1971)))))

(assert (= (and d!2258047 (not res!2943542)) b!7259304))

(assert (=> d!2258047 m!7942558))

(assert (=> d!2258047 m!7942546))

(declare-fun m!7943090 () Bool)

(assert (=> d!2258047 m!7943090))

(assert (=> b!7259304 m!7942512))

(assert (=> b!7259026 d!2258047))

(declare-fun d!2258049 () Bool)

(declare-fun c!1350316 () Bool)

(assert (=> d!2258049 (= c!1350316 (isEmpty!40598 (t!384687 s1!1971)))))

(declare-fun e!4352960 () Bool)

(assert (=> d!2258049 (= (matchZipper!3591 lt!2589788 (t!384687 s1!1971)) e!4352960)))

(declare-fun b!7259305 () Bool)

(assert (=> b!7259305 (= e!4352960 (nullableZipper!2936 lt!2589788))))

(declare-fun b!7259306 () Bool)

(assert (=> b!7259306 (= e!4352960 (matchZipper!3591 (derivationStepZipper!3459 lt!2589788 (head!14933 (t!384687 s1!1971))) (tail!14387 (t!384687 s1!1971))))))

(assert (= (and d!2258049 c!1350316) b!7259305))

(assert (= (and d!2258049 (not c!1350316)) b!7259306))

(assert (=> d!2258049 m!7943066))

(declare-fun m!7943092 () Bool)

(assert (=> b!7259305 m!7943092))

(assert (=> b!7259306 m!7943070))

(assert (=> b!7259306 m!7943070))

(declare-fun m!7943094 () Bool)

(assert (=> b!7259306 m!7943094))

(assert (=> b!7259306 m!7943074))

(assert (=> b!7259306 m!7943094))

(assert (=> b!7259306 m!7943074))

(declare-fun m!7943096 () Bool)

(assert (=> b!7259306 m!7943096))

(assert (=> b!7259015 d!2258049))

(assert (=> b!7259016 d!2258013))

(declare-fun d!2258051 () Bool)

(declare-fun c!1350317 () Bool)

(assert (=> d!2258051 (= c!1350317 (isEmpty!40598 lt!2589806))))

(declare-fun e!4352961 () Bool)

(assert (=> d!2258051 (= (matchZipper!3591 lt!2589794 lt!2589806) e!4352961)))

(declare-fun b!7259307 () Bool)

(assert (=> b!7259307 (= e!4352961 (nullableZipper!2936 lt!2589794))))

(declare-fun b!7259308 () Bool)

(assert (=> b!7259308 (= e!4352961 (matchZipper!3591 (derivationStepZipper!3459 lt!2589794 (head!14933 lt!2589806)) (tail!14387 lt!2589806)))))

(assert (= (and d!2258051 c!1350317) b!7259307))

(assert (= (and d!2258051 (not c!1350317)) b!7259308))

(assert (=> d!2258051 m!7942988))

(declare-fun m!7943098 () Bool)

(assert (=> b!7259307 m!7943098))

(assert (=> b!7259308 m!7942992))

(assert (=> b!7259308 m!7942992))

(declare-fun m!7943100 () Bool)

(assert (=> b!7259308 m!7943100))

(assert (=> b!7259308 m!7942996))

(assert (=> b!7259308 m!7943100))

(assert (=> b!7259308 m!7942996))

(declare-fun m!7943102 () Bool)

(assert (=> b!7259308 m!7943102))

(assert (=> b!7259027 d!2258051))

(declare-fun d!2258053 () Bool)

(declare-fun c!1350318 () Bool)

(assert (=> d!2258053 (= c!1350318 (isEmpty!40598 lt!2589806))))

(declare-fun e!4352962 () Bool)

(assert (=> d!2258053 (= (matchZipper!3591 lt!2589798 lt!2589806) e!4352962)))

(declare-fun b!7259309 () Bool)

(assert (=> b!7259309 (= e!4352962 (nullableZipper!2936 lt!2589798))))

(declare-fun b!7259310 () Bool)

(assert (=> b!7259310 (= e!4352962 (matchZipper!3591 (derivationStepZipper!3459 lt!2589798 (head!14933 lt!2589806)) (tail!14387 lt!2589806)))))

(assert (= (and d!2258053 c!1350318) b!7259309))

(assert (= (and d!2258053 (not c!1350318)) b!7259310))

(assert (=> d!2258053 m!7942988))

(declare-fun m!7943104 () Bool)

(assert (=> b!7259309 m!7943104))

(assert (=> b!7259310 m!7942992))

(assert (=> b!7259310 m!7942992))

(declare-fun m!7943106 () Bool)

(assert (=> b!7259310 m!7943106))

(assert (=> b!7259310 m!7942996))

(assert (=> b!7259310 m!7943106))

(assert (=> b!7259310 m!7942996))

(declare-fun m!7943108 () Bool)

(assert (=> b!7259310 m!7943108))

(assert (=> b!7259013 d!2258053))

(declare-fun d!2258055 () Bool)

(declare-fun c!1350319 () Bool)

(assert (=> d!2258055 (= c!1350319 (isEmpty!40598 s2!1849))))

(declare-fun e!4352963 () Bool)

(assert (=> d!2258055 (= (matchZipper!3591 (store ((as const (Array Context!15242 Bool)) false) ct2!328 true) s2!1849) e!4352963)))

(declare-fun b!7259311 () Bool)

(assert (=> b!7259311 (= e!4352963 (nullableZipper!2936 (store ((as const (Array Context!15242 Bool)) false) ct2!328 true)))))

(declare-fun b!7259312 () Bool)

(assert (=> b!7259312 (= e!4352963 (matchZipper!3591 (derivationStepZipper!3459 (store ((as const (Array Context!15242 Bool)) false) ct2!328 true) (head!14933 s2!1849)) (tail!14387 s2!1849)))))

(assert (= (and d!2258055 c!1350319) b!7259311))

(assert (= (and d!2258055 (not c!1350319)) b!7259312))

(declare-fun m!7943110 () Bool)

(assert (=> d!2258055 m!7943110))

(assert (=> b!7259311 m!7942528))

(declare-fun m!7943112 () Bool)

(assert (=> b!7259311 m!7943112))

(declare-fun m!7943114 () Bool)

(assert (=> b!7259312 m!7943114))

(assert (=> b!7259312 m!7942528))

(assert (=> b!7259312 m!7943114))

(declare-fun m!7943116 () Bool)

(assert (=> b!7259312 m!7943116))

(declare-fun m!7943118 () Bool)

(assert (=> b!7259312 m!7943118))

(assert (=> b!7259312 m!7943116))

(assert (=> b!7259312 m!7943118))

(declare-fun m!7943120 () Bool)

(assert (=> b!7259312 m!7943120))

(assert (=> b!7259012 d!2258055))

(declare-fun d!2258057 () Bool)

(assert (=> d!2258057 (= (isEmpty!40596 (exprs!8121 ct1!232)) ((_ is Nil!70500) (exprs!8121 ct1!232)))))

(assert (=> b!7259023 d!2258057))

(declare-fun b!7259314 () Bool)

(declare-fun e!4352964 () List!70623)

(assert (=> b!7259314 (= e!4352964 (Cons!70499 (h!76947 (t!384687 s1!1971)) (++!16624 (t!384687 (t!384687 s1!1971)) s2!1849)))))

(declare-fun b!7259316 () Bool)

(declare-fun e!4352965 () Bool)

(declare-fun lt!2589909 () List!70623)

(assert (=> b!7259316 (= e!4352965 (or (not (= s2!1849 Nil!70499)) (= lt!2589909 (t!384687 s1!1971))))))

(declare-fun b!7259313 () Bool)

(assert (=> b!7259313 (= e!4352964 s2!1849)))

(declare-fun d!2258059 () Bool)

(assert (=> d!2258059 e!4352965))

(declare-fun res!2943544 () Bool)

(assert (=> d!2258059 (=> (not res!2943544) (not e!4352965))))

(assert (=> d!2258059 (= res!2943544 (= (content!14677 lt!2589909) ((_ map or) (content!14677 (t!384687 s1!1971)) (content!14677 s2!1849))))))

(assert (=> d!2258059 (= lt!2589909 e!4352964)))

(declare-fun c!1350320 () Bool)

(assert (=> d!2258059 (= c!1350320 ((_ is Nil!70499) (t!384687 s1!1971)))))

(assert (=> d!2258059 (= (++!16624 (t!384687 s1!1971) s2!1849) lt!2589909)))

(declare-fun b!7259315 () Bool)

(declare-fun res!2943543 () Bool)

(assert (=> b!7259315 (=> (not res!2943543) (not e!4352965))))

(assert (=> b!7259315 (= res!2943543 (= (size!41760 lt!2589909) (+ (size!41760 (t!384687 s1!1971)) (size!41760 s2!1849))))))

(assert (= (and d!2258059 c!1350320) b!7259313))

(assert (= (and d!2258059 (not c!1350320)) b!7259314))

(assert (= (and d!2258059 res!2943544) b!7259315))

(assert (= (and b!7259315 res!2943543) b!7259316))

(declare-fun m!7943122 () Bool)

(assert (=> b!7259314 m!7943122))

(declare-fun m!7943124 () Bool)

(assert (=> d!2258059 m!7943124))

(declare-fun m!7943126 () Bool)

(assert (=> d!2258059 m!7943126))

(assert (=> d!2258059 m!7942976))

(declare-fun m!7943128 () Bool)

(assert (=> b!7259315 m!7943128))

(declare-fun m!7943130 () Bool)

(assert (=> b!7259315 m!7943130))

(assert (=> b!7259315 m!7942982))

(assert (=> b!7259023 d!2258059))

(declare-fun d!2258061 () Bool)

(declare-fun e!4352968 () Bool)

(assert (=> d!2258061 e!4352968))

(declare-fun res!2943547 () Bool)

(assert (=> d!2258061 (=> (not res!2943547) (not e!4352968))))

(declare-fun lt!2589912 () Context!15242)

(declare-fun dynLambda!28813 (Int Context!15242) Bool)

(assert (=> d!2258061 (= res!2943547 (dynLambda!28813 lambda!446099 lt!2589912))))

(declare-fun getWitness!2262 (List!70625 Int) Context!15242)

(assert (=> d!2258061 (= lt!2589912 (getWitness!2262 (toList!11510 lt!2589813) lambda!446099))))

(assert (=> d!2258061 (exists!4440 lt!2589813 lambda!446099)))

(assert (=> d!2258061 (= (getWitness!2260 lt!2589813 lambda!446099) lt!2589912)))

(declare-fun b!7259319 () Bool)

(assert (=> b!7259319 (= e!4352968 (select lt!2589813 lt!2589912))))

(assert (= (and d!2258061 res!2943547) b!7259319))

(declare-fun b_lambda!279161 () Bool)

(assert (=> (not b_lambda!279161) (not d!2258061)))

(declare-fun m!7943132 () Bool)

(assert (=> d!2258061 m!7943132))

(assert (=> d!2258061 m!7942610))

(assert (=> d!2258061 m!7942610))

(declare-fun m!7943134 () Bool)

(assert (=> d!2258061 m!7943134))

(assert (=> d!2258061 m!7942608))

(declare-fun m!7943136 () Bool)

(assert (=> b!7259319 m!7943136))

(assert (=> b!7259023 d!2258061))

(assert (=> b!7259023 d!2258009))

(assert (=> b!7259023 d!2257991))

(declare-fun d!2258063 () Bool)

(declare-fun c!1350321 () Bool)

(assert (=> d!2258063 (= c!1350321 (isEmpty!40598 lt!2589806))))

(declare-fun e!4352969 () Bool)

(assert (=> d!2258063 (= (matchZipper!3591 (store ((as const (Array Context!15242 Bool)) false) lt!2589808 true) lt!2589806) e!4352969)))

(declare-fun b!7259320 () Bool)

(assert (=> b!7259320 (= e!4352969 (nullableZipper!2936 (store ((as const (Array Context!15242 Bool)) false) lt!2589808 true)))))

(declare-fun b!7259321 () Bool)

(assert (=> b!7259321 (= e!4352969 (matchZipper!3591 (derivationStepZipper!3459 (store ((as const (Array Context!15242 Bool)) false) lt!2589808 true) (head!14933 lt!2589806)) (tail!14387 lt!2589806)))))

(assert (= (and d!2258063 c!1350321) b!7259320))

(assert (= (and d!2258063 (not c!1350321)) b!7259321))

(assert (=> d!2258063 m!7942988))

(assert (=> b!7259320 m!7942618))

(declare-fun m!7943138 () Bool)

(assert (=> b!7259320 m!7943138))

(assert (=> b!7259321 m!7942992))

(assert (=> b!7259321 m!7942618))

(assert (=> b!7259321 m!7942992))

(declare-fun m!7943140 () Bool)

(assert (=> b!7259321 m!7943140))

(assert (=> b!7259321 m!7942996))

(assert (=> b!7259321 m!7943140))

(assert (=> b!7259321 m!7942996))

(declare-fun m!7943142 () Bool)

(assert (=> b!7259321 m!7943142))

(assert (=> b!7259023 d!2258063))

(declare-fun b!7259330 () Bool)

(declare-fun e!4352975 () List!70624)

(assert (=> b!7259330 (= e!4352975 (exprs!8121 ct2!328))))

(declare-fun b!7259332 () Bool)

(declare-fun res!2943552 () Bool)

(declare-fun e!4352974 () Bool)

(assert (=> b!7259332 (=> (not res!2943552) (not e!4352974))))

(declare-fun lt!2589915 () List!70624)

(declare-fun size!41761 (List!70624) Int)

(assert (=> b!7259332 (= res!2943552 (= (size!41761 lt!2589915) (+ (size!41761 (exprs!8121 lt!2589778)) (size!41761 (exprs!8121 ct2!328)))))))

(declare-fun b!7259333 () Bool)

(assert (=> b!7259333 (= e!4352974 (or (not (= (exprs!8121 ct2!328) Nil!70500)) (= lt!2589915 (exprs!8121 lt!2589778))))))

(declare-fun d!2258065 () Bool)

(assert (=> d!2258065 e!4352974))

(declare-fun res!2943553 () Bool)

(assert (=> d!2258065 (=> (not res!2943553) (not e!4352974))))

(declare-fun content!14678 (List!70624) (InoxSet Regex!18681))

(assert (=> d!2258065 (= res!2943553 (= (content!14678 lt!2589915) ((_ map or) (content!14678 (exprs!8121 lt!2589778)) (content!14678 (exprs!8121 ct2!328)))))))

(assert (=> d!2258065 (= lt!2589915 e!4352975)))

(declare-fun c!1350324 () Bool)

(assert (=> d!2258065 (= c!1350324 ((_ is Nil!70500) (exprs!8121 lt!2589778)))))

(assert (=> d!2258065 (= (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328)) lt!2589915)))

(declare-fun b!7259331 () Bool)

(assert (=> b!7259331 (= e!4352975 (Cons!70500 (h!76948 (exprs!8121 lt!2589778)) (++!16625 (t!384688 (exprs!8121 lt!2589778)) (exprs!8121 ct2!328))))))

(assert (= (and d!2258065 c!1350324) b!7259330))

(assert (= (and d!2258065 (not c!1350324)) b!7259331))

(assert (= (and d!2258065 res!2943553) b!7259332))

(assert (= (and b!7259332 res!2943552) b!7259333))

(declare-fun m!7943144 () Bool)

(assert (=> b!7259332 m!7943144))

(declare-fun m!7943146 () Bool)

(assert (=> b!7259332 m!7943146))

(declare-fun m!7943148 () Bool)

(assert (=> b!7259332 m!7943148))

(declare-fun m!7943150 () Bool)

(assert (=> d!2258065 m!7943150))

(declare-fun m!7943152 () Bool)

(assert (=> d!2258065 m!7943152))

(declare-fun m!7943154 () Bool)

(assert (=> d!2258065 m!7943154))

(declare-fun m!7943156 () Bool)

(assert (=> b!7259331 m!7943156))

(assert (=> b!7259023 d!2258065))

(declare-fun bs!1908314 () Bool)

(declare-fun d!2258067 () Bool)

(assert (= bs!1908314 (and d!2258067 b!7259022)))

(declare-fun lambda!446137 () Int)

(assert (=> bs!1908314 (= lambda!446137 lambda!446098)))

(declare-fun bs!1908315 () Bool)

(assert (= bs!1908315 (and d!2258067 d!2258023)))

(assert (=> bs!1908315 (= lambda!446137 lambda!446131)))

(assert (=> d!2258067 (matchZipper!3591 (store ((as const (Array Context!15242 Bool)) false) (Context!15243 (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328))) true) (++!16624 (t!384687 s1!1971) s2!1849))))

(declare-fun lt!2589921 () Unit!163992)

(assert (=> d!2258067 (= lt!2589921 (lemmaConcatPreservesForall!1488 (exprs!8121 lt!2589778) (exprs!8121 ct2!328) lambda!446137))))

(declare-fun lt!2589920 () Unit!163992)

(declare-fun choose!56210 (Context!15242 Context!15242 List!70623 List!70623) Unit!163992)

(assert (=> d!2258067 (= lt!2589920 (choose!56210 lt!2589778 ct2!328 (t!384687 s1!1971) s2!1849))))

(assert (=> d!2258067 (matchZipper!3591 (store ((as const (Array Context!15242 Bool)) false) lt!2589778 true) (t!384687 s1!1971))))

(assert (=> d!2258067 (= (lemmaConcatenateContextMatchesConcatOfStrings!426 lt!2589778 ct2!328 (t!384687 s1!1971) s2!1849) lt!2589920)))

(declare-fun bs!1908316 () Bool)

(assert (= bs!1908316 d!2258067))

(declare-fun m!7943158 () Bool)

(assert (=> bs!1908316 m!7943158))

(declare-fun m!7943160 () Bool)

(assert (=> bs!1908316 m!7943160))

(assert (=> bs!1908316 m!7943160))

(assert (=> bs!1908316 m!7942622))

(declare-fun m!7943162 () Bool)

(assert (=> bs!1908316 m!7943162))

(assert (=> bs!1908316 m!7942626))

(declare-fun m!7943164 () Bool)

(assert (=> bs!1908316 m!7943164))

(assert (=> bs!1908316 m!7942622))

(assert (=> bs!1908316 m!7943158))

(declare-fun m!7943166 () Bool)

(assert (=> bs!1908316 m!7943166))

(declare-fun m!7943168 () Bool)

(assert (=> bs!1908316 m!7943168))

(assert (=> b!7259023 d!2258067))

(declare-fun d!2258069 () Bool)

(declare-fun lt!2589922 () Bool)

(assert (=> d!2258069 (= lt!2589922 (exists!4441 (toList!11510 lt!2589813) lambda!446099))))

(assert (=> d!2258069 (= lt!2589922 (choose!56205 lt!2589813 lambda!446099))))

(assert (=> d!2258069 (= (exists!4440 lt!2589813 lambda!446099) lt!2589922)))

(declare-fun bs!1908317 () Bool)

(assert (= bs!1908317 d!2258069))

(assert (=> bs!1908317 m!7942610))

(assert (=> bs!1908317 m!7942610))

(declare-fun m!7943170 () Bool)

(assert (=> bs!1908317 m!7943170))

(declare-fun m!7943172 () Bool)

(assert (=> bs!1908317 m!7943172))

(assert (=> b!7259025 d!2258069))

(declare-fun d!2258071 () Bool)

(declare-fun e!4352976 () Bool)

(assert (=> d!2258071 e!4352976))

(declare-fun res!2943554 () Bool)

(assert (=> d!2258071 (=> (not res!2943554) (not e!4352976))))

(declare-fun lt!2589923 () List!70625)

(assert (=> d!2258071 (= res!2943554 (noDuplicate!3011 lt!2589923))))

(assert (=> d!2258071 (= lt!2589923 (choose!56202 lt!2589813))))

(assert (=> d!2258071 (= (toList!11510 lt!2589813) lt!2589923)))

(declare-fun b!7259334 () Bool)

(assert (=> b!7259334 (= e!4352976 (= (content!14674 lt!2589923) lt!2589813))))

(assert (= (and d!2258071 res!2943554) b!7259334))

(declare-fun m!7943174 () Bool)

(assert (=> d!2258071 m!7943174))

(declare-fun m!7943176 () Bool)

(assert (=> d!2258071 m!7943176))

(declare-fun m!7943178 () Bool)

(assert (=> b!7259334 m!7943178))

(assert (=> b!7259025 d!2258071))

(declare-fun bs!1908318 () Bool)

(declare-fun d!2258073 () Bool)

(assert (= bs!1908318 (and d!2258073 b!7259025)))

(declare-fun lambda!446140 () Int)

(assert (=> bs!1908318 (= lambda!446140 lambda!446099)))

(declare-fun bs!1908319 () Bool)

(assert (= bs!1908319 (and d!2258073 b!7259019)))

(assert (=> bs!1908319 (= (= (t!384687 s1!1971) lt!2589806) (= lambda!446140 lambda!446101))))

(declare-fun bs!1908320 () Bool)

(assert (= bs!1908320 (and d!2258073 d!2258027)))

(assert (=> bs!1908320 (= (= (t!384687 s1!1971) lt!2589806) (= lambda!446140 lambda!446134))))

(assert (=> d!2258073 true))

(assert (=> d!2258073 (exists!4441 lt!2589775 lambda!446140)))

(declare-fun lt!2589926 () Unit!163992)

(declare-fun choose!56211 (List!70625 List!70623) Unit!163992)

(assert (=> d!2258073 (= lt!2589926 (choose!56211 lt!2589775 (t!384687 s1!1971)))))

(assert (=> d!2258073 (matchZipper!3591 (content!14674 lt!2589775) (t!384687 s1!1971))))

(assert (=> d!2258073 (= (lemmaZipperMatchesExistsMatchingContext!784 lt!2589775 (t!384687 s1!1971)) lt!2589926)))

(declare-fun bs!1908321 () Bool)

(assert (= bs!1908321 d!2258073))

(declare-fun m!7943180 () Bool)

(assert (=> bs!1908321 m!7943180))

(declare-fun m!7943182 () Bool)

(assert (=> bs!1908321 m!7943182))

(declare-fun m!7943184 () Bool)

(assert (=> bs!1908321 m!7943184))

(assert (=> bs!1908321 m!7943184))

(declare-fun m!7943186 () Bool)

(assert (=> bs!1908321 m!7943186))

(assert (=> b!7259025 d!2258073))

(declare-fun bs!1908322 () Bool)

(declare-fun d!2258075 () Bool)

(assert (= bs!1908322 (and d!2258075 b!7259019)))

(declare-fun lambda!446143 () Int)

(assert (=> bs!1908322 (= lambda!446143 lambda!446100)))

(assert (=> d!2258075 true))

(assert (=> d!2258075 (= (derivationStepZipper!3459 lt!2589797 (h!76947 s1!1971)) (flatMap!2846 lt!2589797 lambda!446143))))

(declare-fun bs!1908323 () Bool)

(assert (= bs!1908323 d!2258075))

(declare-fun m!7943188 () Bool)

(assert (=> bs!1908323 m!7943188))

(assert (=> b!7259025 d!2258075))

(declare-fun bs!1908324 () Bool)

(declare-fun d!2258077 () Bool)

(assert (= bs!1908324 (and d!2258077 b!7259025)))

(declare-fun lambda!446146 () Int)

(assert (=> bs!1908324 (not (= lambda!446146 lambda!446099))))

(declare-fun bs!1908325 () Bool)

(assert (= bs!1908325 (and d!2258077 b!7259019)))

(assert (=> bs!1908325 (not (= lambda!446146 lambda!446101))))

(declare-fun bs!1908326 () Bool)

(assert (= bs!1908326 (and d!2258077 d!2258027)))

(assert (=> bs!1908326 (not (= lambda!446146 lambda!446134))))

(declare-fun bs!1908327 () Bool)

(assert (= bs!1908327 (and d!2258077 d!2258073)))

(assert (=> bs!1908327 (not (= lambda!446146 lambda!446140))))

(assert (=> d!2258077 true))

(declare-fun order!29033 () Int)

(declare-fun dynLambda!28814 (Int Int) Int)

(assert (=> d!2258077 (< (dynLambda!28814 order!29033 lambda!446099) (dynLambda!28814 order!29033 lambda!446146))))

(declare-fun forall!17538 (List!70625 Int) Bool)

(assert (=> d!2258077 (= (exists!4441 lt!2589775 lambda!446099) (not (forall!17538 lt!2589775 lambda!446146)))))

(declare-fun bs!1908328 () Bool)

(assert (= bs!1908328 d!2258077))

(declare-fun m!7943190 () Bool)

(assert (=> bs!1908328 m!7943190))

(assert (=> b!7259025 d!2258077))

(declare-fun d!2258079 () Bool)

(declare-fun c!1350329 () Bool)

(assert (=> d!2258079 (= c!1350329 (isEmpty!40598 (t!384687 s1!1971)))))

(declare-fun e!4352977 () Bool)

(assert (=> d!2258079 (= (matchZipper!3591 lt!2589813 (t!384687 s1!1971)) e!4352977)))

(declare-fun b!7259339 () Bool)

(assert (=> b!7259339 (= e!4352977 (nullableZipper!2936 lt!2589813))))

(declare-fun b!7259340 () Bool)

(assert (=> b!7259340 (= e!4352977 (matchZipper!3591 (derivationStepZipper!3459 lt!2589813 (head!14933 (t!384687 s1!1971))) (tail!14387 (t!384687 s1!1971))))))

(assert (= (and d!2258079 c!1350329) b!7259339))

(assert (= (and d!2258079 (not c!1350329)) b!7259340))

(assert (=> d!2258079 m!7943066))

(declare-fun m!7943192 () Bool)

(assert (=> b!7259339 m!7943192))

(assert (=> b!7259340 m!7943070))

(assert (=> b!7259340 m!7943070))

(declare-fun m!7943194 () Bool)

(assert (=> b!7259340 m!7943194))

(assert (=> b!7259340 m!7943074))

(assert (=> b!7259340 m!7943194))

(assert (=> b!7259340 m!7943074))

(declare-fun m!7943196 () Bool)

(assert (=> b!7259340 m!7943196))

(assert (=> b!7259024 d!2258079))

(declare-fun bs!1908329 () Bool)

(declare-fun d!2258081 () Bool)

(assert (= bs!1908329 (and d!2258081 b!7259019)))

(declare-fun lambda!446147 () Int)

(assert (=> bs!1908329 (= lambda!446147 lambda!446100)))

(declare-fun bs!1908330 () Bool)

(assert (= bs!1908330 (and d!2258081 d!2258075)))

(assert (=> bs!1908330 (= lambda!446147 lambda!446143)))

(assert (=> d!2258081 true))

(assert (=> d!2258081 (= (derivationStepZipper!3459 lt!2589785 (h!76947 s1!1971)) (flatMap!2846 lt!2589785 lambda!446147))))

(declare-fun bs!1908331 () Bool)

(assert (= bs!1908331 d!2258081))

(declare-fun m!7943198 () Bool)

(assert (=> bs!1908331 m!7943198))

(assert (=> b!7259024 d!2258081))

(declare-fun d!2258083 () Bool)

(declare-fun c!1350330 () Bool)

(assert (=> d!2258083 (= c!1350330 (isEmpty!40598 s1!1971))))

(declare-fun e!4352978 () Bool)

(assert (=> d!2258083 (= (matchZipper!3591 lt!2589785 s1!1971) e!4352978)))

(declare-fun b!7259341 () Bool)

(assert (=> b!7259341 (= e!4352978 (nullableZipper!2936 lt!2589785))))

(declare-fun b!7259342 () Bool)

(assert (=> b!7259342 (= e!4352978 (matchZipper!3591 (derivationStepZipper!3459 lt!2589785 (head!14933 s1!1971)) (tail!14387 s1!1971)))))

(assert (= (and d!2258083 c!1350330) b!7259341))

(assert (= (and d!2258083 (not c!1350330)) b!7259342))

(declare-fun m!7943200 () Bool)

(assert (=> d!2258083 m!7943200))

(declare-fun m!7943202 () Bool)

(assert (=> b!7259341 m!7943202))

(declare-fun m!7943204 () Bool)

(assert (=> b!7259342 m!7943204))

(assert (=> b!7259342 m!7943204))

(declare-fun m!7943206 () Bool)

(assert (=> b!7259342 m!7943206))

(declare-fun m!7943208 () Bool)

(assert (=> b!7259342 m!7943208))

(assert (=> b!7259342 m!7943206))

(assert (=> b!7259342 m!7943208))

(declare-fun m!7943210 () Bool)

(assert (=> b!7259342 m!7943210))

(assert (=> start!707246 d!2258083))

(declare-fun bs!1908332 () Bool)

(declare-fun d!2258085 () Bool)

(assert (= bs!1908332 (and d!2258085 b!7259022)))

(declare-fun lambda!446150 () Int)

(assert (=> bs!1908332 (= lambda!446150 lambda!446098)))

(declare-fun bs!1908333 () Bool)

(assert (= bs!1908333 (and d!2258085 d!2258023)))

(assert (=> bs!1908333 (= lambda!446150 lambda!446131)))

(declare-fun bs!1908334 () Bool)

(assert (= bs!1908334 (and d!2258085 d!2258067)))

(assert (=> bs!1908334 (= lambda!446150 lambda!446137)))

(assert (=> d!2258085 (= (inv!89712 ct1!232) (forall!17537 (exprs!8121 ct1!232) lambda!446150))))

(declare-fun bs!1908335 () Bool)

(assert (= bs!1908335 d!2258085))

(declare-fun m!7943212 () Bool)

(assert (=> bs!1908335 m!7943212))

(assert (=> start!707246 d!2258085))

(declare-fun bs!1908336 () Bool)

(declare-fun d!2258087 () Bool)

(assert (= bs!1908336 (and d!2258087 b!7259022)))

(declare-fun lambda!446151 () Int)

(assert (=> bs!1908336 (= lambda!446151 lambda!446098)))

(declare-fun bs!1908337 () Bool)

(assert (= bs!1908337 (and d!2258087 d!2258023)))

(assert (=> bs!1908337 (= lambda!446151 lambda!446131)))

(declare-fun bs!1908338 () Bool)

(assert (= bs!1908338 (and d!2258087 d!2258067)))

(assert (=> bs!1908338 (= lambda!446151 lambda!446137)))

(declare-fun bs!1908339 () Bool)

(assert (= bs!1908339 (and d!2258087 d!2258085)))

(assert (=> bs!1908339 (= lambda!446151 lambda!446150)))

(assert (=> d!2258087 (= (inv!89712 ct2!328) (forall!17537 (exprs!8121 ct2!328) lambda!446151))))

(declare-fun bs!1908340 () Bool)

(assert (= bs!1908340 d!2258087))

(declare-fun m!7943214 () Bool)

(assert (=> bs!1908340 m!7943214))

(assert (=> start!707246 d!2258087))

(declare-fun b!7259343 () Bool)

(declare-fun e!4352980 () List!70624)

(assert (=> b!7259343 (= e!4352980 (exprs!8121 ct2!328))))

(declare-fun b!7259345 () Bool)

(declare-fun res!2943555 () Bool)

(declare-fun e!4352979 () Bool)

(assert (=> b!7259345 (=> (not res!2943555) (not e!4352979))))

(declare-fun lt!2589927 () List!70624)

(assert (=> b!7259345 (= res!2943555 (= (size!41761 lt!2589927) (+ (size!41761 (exprs!8121 ct1!232)) (size!41761 (exprs!8121 ct2!328)))))))

(declare-fun b!7259346 () Bool)

(assert (=> b!7259346 (= e!4352979 (or (not (= (exprs!8121 ct2!328) Nil!70500)) (= lt!2589927 (exprs!8121 ct1!232))))))

(declare-fun d!2258089 () Bool)

(assert (=> d!2258089 e!4352979))

(declare-fun res!2943556 () Bool)

(assert (=> d!2258089 (=> (not res!2943556) (not e!4352979))))

(assert (=> d!2258089 (= res!2943556 (= (content!14678 lt!2589927) ((_ map or) (content!14678 (exprs!8121 ct1!232)) (content!14678 (exprs!8121 ct2!328)))))))

(assert (=> d!2258089 (= lt!2589927 e!4352980)))

(declare-fun c!1350331 () Bool)

(assert (=> d!2258089 (= c!1350331 ((_ is Nil!70500) (exprs!8121 ct1!232)))))

(assert (=> d!2258089 (= (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328)) lt!2589927)))

(declare-fun b!7259344 () Bool)

(assert (=> b!7259344 (= e!4352980 (Cons!70500 (h!76948 (exprs!8121 ct1!232)) (++!16625 (t!384688 (exprs!8121 ct1!232)) (exprs!8121 ct2!328))))))

(assert (= (and d!2258089 c!1350331) b!7259343))

(assert (= (and d!2258089 (not c!1350331)) b!7259344))

(assert (= (and d!2258089 res!2943556) b!7259345))

(assert (= (and b!7259345 res!2943555) b!7259346))

(declare-fun m!7943216 () Bool)

(assert (=> b!7259345 m!7943216))

(declare-fun m!7943218 () Bool)

(assert (=> b!7259345 m!7943218))

(assert (=> b!7259345 m!7943148))

(declare-fun m!7943220 () Bool)

(assert (=> d!2258089 m!7943220))

(declare-fun m!7943222 () Bool)

(assert (=> d!2258089 m!7943222))

(assert (=> d!2258089 m!7943154))

(declare-fun m!7943224 () Bool)

(assert (=> b!7259344 m!7943224))

(assert (=> b!7259022 d!2258089))

(assert (=> b!7259022 d!2257995))

(declare-fun d!2258091 () Bool)

(assert (=> d!2258091 (= (tail!14386 (exprs!8121 ct1!232)) (t!384688 (exprs!8121 ct1!232)))))

(assert (=> b!7259011 d!2258091))

(assert (=> b!7259011 d!2257993))

(assert (=> b!7259011 d!2257995))

(declare-fun c!1350336 () Bool)

(declare-fun c!1350333 () Bool)

(declare-fun bm!661639 () Bool)

(declare-fun call!661647 () List!70624)

(declare-fun c!1350334 () Bool)

(declare-fun call!661646 () (InoxSet Context!15242))

(assert (=> bm!661639 (= call!661646 (derivationStepZipperDown!2675 (ite c!1350333 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350336 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350334 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232)))))) (ite (or c!1350333 c!1350336) lt!2589780 (Context!15243 call!661647)) (h!76947 s1!1971)))))

(declare-fun bm!661640 () Bool)

(declare-fun call!661645 () (InoxSet Context!15242))

(declare-fun call!661649 () (InoxSet Context!15242))

(assert (=> bm!661640 (= call!661645 call!661649)))

(declare-fun b!7259347 () Bool)

(declare-fun e!4352986 () (InoxSet Context!15242))

(declare-fun e!4352984 () (InoxSet Context!15242))

(assert (=> b!7259347 (= e!4352986 e!4352984)))

(assert (=> b!7259347 (= c!1350333 ((_ is Union!18681) (h!76948 (exprs!8121 ct1!232))))))

(declare-fun d!2258093 () Bool)

(declare-fun c!1350332 () Bool)

(assert (=> d!2258093 (= c!1350332 (and ((_ is ElementMatch!18681) (h!76948 (exprs!8121 ct1!232))) (= (c!1350206 (h!76948 (exprs!8121 ct1!232))) (h!76947 s1!1971))))))

(assert (=> d!2258093 (= (derivationStepZipperDown!2675 (h!76948 (exprs!8121 ct1!232)) lt!2589780 (h!76947 s1!1971)) e!4352986)))

(declare-fun b!7259348 () Bool)

(declare-fun e!4352981 () Bool)

(assert (=> b!7259348 (= c!1350336 e!4352981)))

(declare-fun res!2943557 () Bool)

(assert (=> b!7259348 (=> (not res!2943557) (not e!4352981))))

(assert (=> b!7259348 (= res!2943557 ((_ is Concat!27526) (h!76948 (exprs!8121 ct1!232))))))

(declare-fun e!4352985 () (InoxSet Context!15242))

(assert (=> b!7259348 (= e!4352984 e!4352985)))

(declare-fun b!7259349 () Bool)

(declare-fun call!661648 () (InoxSet Context!15242))

(assert (=> b!7259349 (= e!4352984 ((_ map or) call!661646 call!661648))))

(declare-fun bm!661641 () Bool)

(assert (=> bm!661641 (= call!661649 call!661646)))

(declare-fun b!7259350 () Bool)

(assert (=> b!7259350 (= e!4352981 (nullable!7941 (regOne!37874 (h!76948 (exprs!8121 ct1!232)))))))

(declare-fun b!7259351 () Bool)

(declare-fun c!1350335 () Bool)

(assert (=> b!7259351 (= c!1350335 ((_ is Star!18681) (h!76948 (exprs!8121 ct1!232))))))

(declare-fun e!4352982 () (InoxSet Context!15242))

(declare-fun e!4352983 () (InoxSet Context!15242))

(assert (=> b!7259351 (= e!4352982 e!4352983)))

(declare-fun bm!661642 () Bool)

(declare-fun call!661644 () List!70624)

(assert (=> bm!661642 (= call!661647 call!661644)))

(declare-fun bm!661643 () Bool)

(assert (=> bm!661643 (= call!661644 ($colon$colon!2938 (exprs!8121 lt!2589780) (ite (or c!1350336 c!1350334) (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (h!76948 (exprs!8121 ct1!232)))))))

(declare-fun b!7259352 () Bool)

(assert (=> b!7259352 (= e!4352983 call!661645)))

(declare-fun b!7259353 () Bool)

(assert (=> b!7259353 (= e!4352982 call!661645)))

(declare-fun b!7259354 () Bool)

(assert (=> b!7259354 (= e!4352985 e!4352982)))

(assert (=> b!7259354 (= c!1350334 ((_ is Concat!27526) (h!76948 (exprs!8121 ct1!232))))))

(declare-fun b!7259355 () Bool)

(assert (=> b!7259355 (= e!4352985 ((_ map or) call!661648 call!661649))))

(declare-fun b!7259356 () Bool)

(assert (=> b!7259356 (= e!4352983 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259357 () Bool)

(assert (=> b!7259357 (= e!4352986 (store ((as const (Array Context!15242 Bool)) false) lt!2589780 true))))

(declare-fun bm!661644 () Bool)

(assert (=> bm!661644 (= call!661648 (derivationStepZipperDown!2675 (ite c!1350333 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232)))) (ite c!1350333 lt!2589780 (Context!15243 call!661644)) (h!76947 s1!1971)))))

(assert (= (and d!2258093 c!1350332) b!7259357))

(assert (= (and d!2258093 (not c!1350332)) b!7259347))

(assert (= (and b!7259347 c!1350333) b!7259349))

(assert (= (and b!7259347 (not c!1350333)) b!7259348))

(assert (= (and b!7259348 res!2943557) b!7259350))

(assert (= (and b!7259348 c!1350336) b!7259355))

(assert (= (and b!7259348 (not c!1350336)) b!7259354))

(assert (= (and b!7259354 c!1350334) b!7259353))

(assert (= (and b!7259354 (not c!1350334)) b!7259351))

(assert (= (and b!7259351 c!1350335) b!7259352))

(assert (= (and b!7259351 (not c!1350335)) b!7259356))

(assert (= (or b!7259353 b!7259352) bm!661642))

(assert (= (or b!7259353 b!7259352) bm!661640))

(assert (= (or b!7259355 bm!661642) bm!661643))

(assert (= (or b!7259355 bm!661640) bm!661641))

(assert (= (or b!7259349 b!7259355) bm!661644))

(assert (= (or b!7259349 bm!661641) bm!661639))

(declare-fun m!7943226 () Bool)

(assert (=> bm!661639 m!7943226))

(declare-fun m!7943228 () Bool)

(assert (=> b!7259357 m!7943228))

(assert (=> b!7259350 m!7943016))

(declare-fun m!7943230 () Bool)

(assert (=> bm!661643 m!7943230))

(declare-fun m!7943232 () Bool)

(assert (=> bm!661644 m!7943232))

(assert (=> b!7259011 d!2258093))

(declare-fun d!2258095 () Bool)

(assert (=> d!2258095 (= (isEmpty!40596 lt!2589807) ((_ is Nil!70500) lt!2589807))))

(assert (=> b!7259011 d!2258095))

(declare-fun b!7259362 () Bool)

(declare-fun e!4352989 () Bool)

(declare-fun tp!2038595 () Bool)

(declare-fun tp!2038596 () Bool)

(assert (=> b!7259362 (= e!4352989 (and tp!2038595 tp!2038596))))

(assert (=> b!7259014 (= tp!2038578 e!4352989)))

(assert (= (and b!7259014 ((_ is Cons!70500) (exprs!8121 ct2!328))) b!7259362))

(declare-fun b!7259363 () Bool)

(declare-fun e!4352990 () Bool)

(declare-fun tp!2038597 () Bool)

(declare-fun tp!2038598 () Bool)

(assert (=> b!7259363 (= e!4352990 (and tp!2038597 tp!2038598))))

(assert (=> b!7259021 (= tp!2038576 e!4352990)))

(assert (= (and b!7259021 ((_ is Cons!70500) (exprs!8121 ct1!232))) b!7259363))

(declare-fun b!7259368 () Bool)

(declare-fun e!4352993 () Bool)

(declare-fun tp!2038601 () Bool)

(assert (=> b!7259368 (= e!4352993 (and tp_is_empty!46827 tp!2038601))))

(assert (=> b!7259020 (= tp!2038577 e!4352993)))

(assert (= (and b!7259020 ((_ is Cons!70499) (t!384687 s2!1849))) b!7259368))

(declare-fun b!7259369 () Bool)

(declare-fun e!4352994 () Bool)

(declare-fun tp!2038602 () Bool)

(assert (=> b!7259369 (= e!4352994 (and tp_is_empty!46827 tp!2038602))))

(assert (=> b!7259017 (= tp!2038575 e!4352994)))

(assert (= (and b!7259017 ((_ is Cons!70499) (t!384687 s1!1971))) b!7259369))

(declare-fun b_lambda!279163 () Bool)

(assert (= b_lambda!279157 (or b!7259019 b_lambda!279163)))

(declare-fun bs!1908341 () Bool)

(declare-fun d!2258097 () Bool)

(assert (= bs!1908341 (and d!2258097 b!7259019)))

(assert (=> bs!1908341 (= (dynLambda!28812 lambda!446100 lt!2589787) (derivationStepZipperUp!2505 lt!2589787 (h!76947 s1!1971)))))

(assert (=> bs!1908341 m!7942536))

(assert (=> d!2258001 d!2258097))

(declare-fun b_lambda!279165 () Bool)

(assert (= b_lambda!279161 (or b!7259025 b_lambda!279165)))

(declare-fun bs!1908342 () Bool)

(declare-fun d!2258099 () Bool)

(assert (= bs!1908342 (and d!2258099 b!7259025)))

(assert (=> bs!1908342 (= (dynLambda!28813 lambda!446099 lt!2589912) (matchZipper!3591 (store ((as const (Array Context!15242 Bool)) false) lt!2589912 true) (t!384687 s1!1971)))))

(declare-fun m!7943234 () Bool)

(assert (=> bs!1908342 m!7943234))

(assert (=> bs!1908342 m!7943234))

(declare-fun m!7943236 () Bool)

(assert (=> bs!1908342 m!7943236))

(assert (=> d!2258061 d!2258099))

(declare-fun b_lambda!279167 () Bool)

(assert (= b_lambda!279159 (or b!7259019 b_lambda!279167)))

(declare-fun bs!1908343 () Bool)

(declare-fun d!2258101 () Bool)

(assert (= bs!1908343 (and d!2258101 b!7259019)))

(assert (=> bs!1908343 (= (dynLambda!28812 lambda!446100 ct1!232) (derivationStepZipperUp!2505 ct1!232 (h!76947 s1!1971)))))

(assert (=> bs!1908343 m!7942566))

(assert (=> d!2258031 d!2258101))

(check-sat (not d!2258051) (not d!2258067) (not d!2258089) (not bs!1908342) (not d!2258085) (not d!2258033) (not b!7259312) (not b!7259368) (not b!7259342) (not d!2257991) (not d!2258011) (not d!2258041) (not d!2258003) (not b!7259283) (not b!7259307) (not d!2258007) (not d!2258061) (not d!2258071) (not bs!1908343) (not d!2257995) (not d!2258049) (not b!7259285) (not b!7259215) (not bs!1908341) (not b!7259297) (not bm!661635) (not b!7259245) (not b!7259331) (not b!7259305) (not d!2258087) (not b!7259308) (not b!7259339) (not d!2258015) (not b!7259340) (not d!2258023) (not d!2258077) (not b!7259286) (not b!7259303) (not b!7259341) (not b!7259220) (not b!7259304) (not b!7259350) (not d!2258059) (not d!2258081) (not d!2258079) (not b!7259289) (not b!7259243) (not b!7259211) (not b!7259344) (not bm!661639) (not bm!661618) (not b_lambda!279165) (not b_lambda!279163) (not d!2257999) (not d!2258035) (not d!2258037) (not b!7259334) (not bm!661644) (not d!2258045) (not b!7259235) (not d!2258083) (not b!7259314) (not d!2258025) (not b!7259249) (not b!7259309) (not b!7259332) (not b!7259244) (not d!2258065) (not b!7259284) (not d!2258031) (not b!7259369) (not b!7259362) (not d!2257997) (not bm!661643) (not b!7259315) (not b!7259311) (not b!7259320) (not bm!661631) (not d!2258069) (not d!2258063) (not b!7259296) (not b!7259295) (not b!7259321) (not d!2258073) (not b!7259363) (not d!2258027) tp_is_empty!46827 (not bm!661637) (not b!7259294) (not b!7259345) (not d!2258019) (not b!7259224) (not bm!661638) (not b!7259242) (not b!7259234) (not b_lambda!279167) (not d!2258001) (not d!2258055) (not b!7259306) (not b!7259221) (not bm!661617) (not b!7259310) (not b!7259302) (not d!2258075) (not b!7259275) (not d!2258013) (not d!2258047) (not d!2258053) (not b!7259290) (not bm!661636) (not b!7259301))
(check-sat)
(get-model)

(declare-fun c!1350455 () Bool)

(declare-fun call!661711 () (InoxSet Context!15242))

(declare-fun c!1350457 () Bool)

(declare-fun call!661712 () List!70624)

(declare-fun c!1350454 () Bool)

(declare-fun bm!661704 () Bool)

(assert (=> bm!661704 (= call!661711 (derivationStepZipperDown!2675 (ite c!1350454 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350457 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350455 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232)))))) (ite (or c!1350454 c!1350457) (Context!15243 (t!384688 (exprs!8121 ct1!232))) (Context!15243 call!661712)) (h!76947 s1!1971)))))

(declare-fun bm!661705 () Bool)

(declare-fun call!661710 () (InoxSet Context!15242))

(declare-fun call!661714 () (InoxSet Context!15242))

(assert (=> bm!661705 (= call!661710 call!661714)))

(declare-fun b!7259704 () Bool)

(declare-fun e!4353207 () (InoxSet Context!15242))

(declare-fun e!4353205 () (InoxSet Context!15242))

(assert (=> b!7259704 (= e!4353207 e!4353205)))

(assert (=> b!7259704 (= c!1350454 ((_ is Union!18681) (h!76948 (exprs!8121 ct1!232))))))

(declare-fun d!2258401 () Bool)

(declare-fun c!1350453 () Bool)

(assert (=> d!2258401 (= c!1350453 (and ((_ is ElementMatch!18681) (h!76948 (exprs!8121 ct1!232))) (= (c!1350206 (h!76948 (exprs!8121 ct1!232))) (h!76947 s1!1971))))))

(assert (=> d!2258401 (= (derivationStepZipperDown!2675 (h!76948 (exprs!8121 ct1!232)) (Context!15243 (t!384688 (exprs!8121 ct1!232))) (h!76947 s1!1971)) e!4353207)))

(declare-fun b!7259705 () Bool)

(declare-fun e!4353202 () Bool)

(assert (=> b!7259705 (= c!1350457 e!4353202)))

(declare-fun res!2943648 () Bool)

(assert (=> b!7259705 (=> (not res!2943648) (not e!4353202))))

(assert (=> b!7259705 (= res!2943648 ((_ is Concat!27526) (h!76948 (exprs!8121 ct1!232))))))

(declare-fun e!4353206 () (InoxSet Context!15242))

(assert (=> b!7259705 (= e!4353205 e!4353206)))

(declare-fun b!7259706 () Bool)

(declare-fun call!661713 () (InoxSet Context!15242))

(assert (=> b!7259706 (= e!4353205 ((_ map or) call!661711 call!661713))))

(declare-fun bm!661706 () Bool)

(assert (=> bm!661706 (= call!661714 call!661711)))

(declare-fun b!7259707 () Bool)

(assert (=> b!7259707 (= e!4353202 (nullable!7941 (regOne!37874 (h!76948 (exprs!8121 ct1!232)))))))

(declare-fun b!7259708 () Bool)

(declare-fun c!1350456 () Bool)

(assert (=> b!7259708 (= c!1350456 ((_ is Star!18681) (h!76948 (exprs!8121 ct1!232))))))

(declare-fun e!4353203 () (InoxSet Context!15242))

(declare-fun e!4353204 () (InoxSet Context!15242))

(assert (=> b!7259708 (= e!4353203 e!4353204)))

(declare-fun bm!661707 () Bool)

(declare-fun call!661709 () List!70624)

(assert (=> bm!661707 (= call!661712 call!661709)))

(declare-fun bm!661708 () Bool)

(assert (=> bm!661708 (= call!661709 ($colon$colon!2938 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 ct1!232)))) (ite (or c!1350457 c!1350455) (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (h!76948 (exprs!8121 ct1!232)))))))

(declare-fun b!7259709 () Bool)

(assert (=> b!7259709 (= e!4353204 call!661710)))

(declare-fun b!7259710 () Bool)

(assert (=> b!7259710 (= e!4353203 call!661710)))

(declare-fun b!7259711 () Bool)

(assert (=> b!7259711 (= e!4353206 e!4353203)))

(assert (=> b!7259711 (= c!1350455 ((_ is Concat!27526) (h!76948 (exprs!8121 ct1!232))))))

(declare-fun b!7259712 () Bool)

(assert (=> b!7259712 (= e!4353206 ((_ map or) call!661713 call!661714))))

(declare-fun b!7259713 () Bool)

(assert (=> b!7259713 (= e!4353204 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259714 () Bool)

(assert (=> b!7259714 (= e!4353207 (store ((as const (Array Context!15242 Bool)) false) (Context!15243 (t!384688 (exprs!8121 ct1!232))) true))))

(declare-fun bm!661709 () Bool)

(assert (=> bm!661709 (= call!661713 (derivationStepZipperDown!2675 (ite c!1350454 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232)))) (ite c!1350454 (Context!15243 (t!384688 (exprs!8121 ct1!232))) (Context!15243 call!661709)) (h!76947 s1!1971)))))

(assert (= (and d!2258401 c!1350453) b!7259714))

(assert (= (and d!2258401 (not c!1350453)) b!7259704))

(assert (= (and b!7259704 c!1350454) b!7259706))

(assert (= (and b!7259704 (not c!1350454)) b!7259705))

(assert (= (and b!7259705 res!2943648) b!7259707))

(assert (= (and b!7259705 c!1350457) b!7259712))

(assert (= (and b!7259705 (not c!1350457)) b!7259711))

(assert (= (and b!7259711 c!1350455) b!7259710))

(assert (= (and b!7259711 (not c!1350455)) b!7259708))

(assert (= (and b!7259708 c!1350456) b!7259709))

(assert (= (and b!7259708 (not c!1350456)) b!7259713))

(assert (= (or b!7259710 b!7259709) bm!661707))

(assert (= (or b!7259710 b!7259709) bm!661705))

(assert (= (or b!7259712 bm!661707) bm!661708))

(assert (= (or b!7259712 bm!661705) bm!661706))

(assert (= (or b!7259706 b!7259712) bm!661709))

(assert (= (or b!7259706 bm!661706) bm!661704))

(declare-fun m!7943758 () Bool)

(assert (=> bm!661704 m!7943758))

(declare-fun m!7943760 () Bool)

(assert (=> b!7259714 m!7943760))

(assert (=> b!7259707 m!7943016))

(declare-fun m!7943762 () Bool)

(assert (=> bm!661708 m!7943762))

(declare-fun m!7943764 () Bool)

(assert (=> bm!661709 m!7943764))

(assert (=> bm!661618 d!2258401))

(declare-fun b!7259727 () Bool)

(declare-fun e!4353218 () Context!15242)

(declare-fun e!4353216 () Context!15242)

(assert (=> b!7259727 (= e!4353218 e!4353216)))

(declare-fun c!1350463 () Bool)

(assert (=> b!7259727 (= c!1350463 ((_ is Cons!70501) (toList!11510 lt!2589813)))))

(declare-fun b!7259728 () Bool)

(assert (=> b!7259728 (= e!4353216 (getWitness!2262 (t!384689 (toList!11510 lt!2589813)) lambda!446099))))

(declare-fun b!7259729 () Bool)

(declare-fun e!4353219 () Bool)

(declare-fun lt!2589967 () Context!15242)

(declare-fun contains!20749 (List!70625 Context!15242) Bool)

(assert (=> b!7259729 (= e!4353219 (contains!20749 (toList!11510 lt!2589813) lt!2589967))))

(declare-fun b!7259730 () Bool)

(assert (=> b!7259730 (= e!4353218 (h!76949 (toList!11510 lt!2589813)))))

(declare-fun b!7259731 () Bool)

(declare-fun e!4353217 () Bool)

(assert (=> b!7259731 (= e!4353217 (dynLambda!28813 lambda!446099 (h!76949 (toList!11510 lt!2589813))))))

(declare-fun b!7259732 () Bool)

(declare-fun lt!2589968 () Unit!163992)

(declare-fun Unit!163996 () Unit!163992)

(assert (=> b!7259732 (= lt!2589968 Unit!163996)))

(assert (=> b!7259732 false))

(declare-fun head!14934 (List!70625) Context!15242)

(assert (=> b!7259732 (= e!4353216 (head!14934 (toList!11510 lt!2589813)))))

(declare-fun d!2258403 () Bool)

(assert (=> d!2258403 e!4353219))

(declare-fun res!2943653 () Bool)

(assert (=> d!2258403 (=> (not res!2943653) (not e!4353219))))

(assert (=> d!2258403 (= res!2943653 (dynLambda!28813 lambda!446099 lt!2589967))))

(assert (=> d!2258403 (= lt!2589967 e!4353218)))

(declare-fun c!1350462 () Bool)

(assert (=> d!2258403 (= c!1350462 e!4353217)))

(declare-fun res!2943654 () Bool)

(assert (=> d!2258403 (=> (not res!2943654) (not e!4353217))))

(assert (=> d!2258403 (= res!2943654 ((_ is Cons!70501) (toList!11510 lt!2589813)))))

(assert (=> d!2258403 (exists!4441 (toList!11510 lt!2589813) lambda!446099)))

(assert (=> d!2258403 (= (getWitness!2262 (toList!11510 lt!2589813) lambda!446099) lt!2589967)))

(assert (= (and d!2258403 res!2943654) b!7259731))

(assert (= (and d!2258403 c!1350462) b!7259730))

(assert (= (and d!2258403 (not c!1350462)) b!7259727))

(assert (= (and b!7259727 c!1350463) b!7259728))

(assert (= (and b!7259727 (not c!1350463)) b!7259732))

(assert (= (and d!2258403 res!2943653) b!7259729))

(declare-fun b_lambda!279215 () Bool)

(assert (=> (not b_lambda!279215) (not b!7259731)))

(declare-fun b_lambda!279217 () Bool)

(assert (=> (not b_lambda!279217) (not d!2258403)))

(declare-fun m!7943766 () Bool)

(assert (=> b!7259728 m!7943766))

(assert (=> b!7259729 m!7942610))

(declare-fun m!7943768 () Bool)

(assert (=> b!7259729 m!7943768))

(assert (=> b!7259732 m!7942610))

(declare-fun m!7943770 () Bool)

(assert (=> b!7259732 m!7943770))

(declare-fun m!7943772 () Bool)

(assert (=> b!7259731 m!7943772))

(declare-fun m!7943774 () Bool)

(assert (=> d!2258403 m!7943774))

(assert (=> d!2258403 m!7942610))

(assert (=> d!2258403 m!7943170))

(assert (=> d!2258061 d!2258403))

(assert (=> d!2258061 d!2258071))

(assert (=> d!2258061 d!2258069))

(declare-fun d!2258405 () Bool)

(declare-fun lt!2589971 () Int)

(assert (=> d!2258405 (>= lt!2589971 0)))

(declare-fun e!4353222 () Int)

(assert (=> d!2258405 (= lt!2589971 e!4353222)))

(declare-fun c!1350466 () Bool)

(assert (=> d!2258405 (= c!1350466 ((_ is Nil!70499) lt!2589885))))

(assert (=> d!2258405 (= (size!41760 lt!2589885) lt!2589971)))

(declare-fun b!7259737 () Bool)

(assert (=> b!7259737 (= e!4353222 0)))

(declare-fun b!7259738 () Bool)

(assert (=> b!7259738 (= e!4353222 (+ 1 (size!41760 (t!384687 lt!2589885))))))

(assert (= (and d!2258405 c!1350466) b!7259737))

(assert (= (and d!2258405 (not c!1350466)) b!7259738))

(declare-fun m!7943776 () Bool)

(assert (=> b!7259738 m!7943776))

(assert (=> b!7259235 d!2258405))

(declare-fun d!2258407 () Bool)

(declare-fun lt!2589972 () Int)

(assert (=> d!2258407 (>= lt!2589972 0)))

(declare-fun e!4353223 () Int)

(assert (=> d!2258407 (= lt!2589972 e!4353223)))

(declare-fun c!1350467 () Bool)

(assert (=> d!2258407 (= c!1350467 ((_ is Nil!70499) s1!1971))))

(assert (=> d!2258407 (= (size!41760 s1!1971) lt!2589972)))

(declare-fun b!7259739 () Bool)

(assert (=> b!7259739 (= e!4353223 0)))

(declare-fun b!7259740 () Bool)

(assert (=> b!7259740 (= e!4353223 (+ 1 (size!41760 (t!384687 s1!1971))))))

(assert (= (and d!2258407 c!1350467) b!7259739))

(assert (= (and d!2258407 (not c!1350467)) b!7259740))

(assert (=> b!7259740 m!7943130))

(assert (=> b!7259235 d!2258407))

(declare-fun d!2258409 () Bool)

(declare-fun lt!2589973 () Int)

(assert (=> d!2258409 (>= lt!2589973 0)))

(declare-fun e!4353224 () Int)

(assert (=> d!2258409 (= lt!2589973 e!4353224)))

(declare-fun c!1350468 () Bool)

(assert (=> d!2258409 (= c!1350468 ((_ is Nil!70499) s2!1849))))

(assert (=> d!2258409 (= (size!41760 s2!1849) lt!2589973)))

(declare-fun b!7259741 () Bool)

(assert (=> b!7259741 (= e!4353224 0)))

(declare-fun b!7259742 () Bool)

(assert (=> b!7259742 (= e!4353224 (+ 1 (size!41760 (t!384687 s2!1849))))))

(assert (= (and d!2258409 c!1350468) b!7259741))

(assert (= (and d!2258409 (not c!1350468)) b!7259742))

(declare-fun m!7943778 () Bool)

(assert (=> b!7259742 m!7943778))

(assert (=> b!7259235 d!2258409))

(declare-fun bs!1908774 () Bool)

(declare-fun d!2258411 () Bool)

(assert (= bs!1908774 (and d!2258411 b!7259025)))

(declare-fun lambda!446197 () Int)

(assert (=> bs!1908774 (not (= lambda!446197 lambda!446099))))

(declare-fun bs!1908775 () Bool)

(assert (= bs!1908775 (and d!2258411 d!2258073)))

(assert (=> bs!1908775 (not (= lambda!446197 lambda!446140))))

(declare-fun bs!1908776 () Bool)

(assert (= bs!1908776 (and d!2258411 d!2258027)))

(assert (=> bs!1908776 (not (= lambda!446197 lambda!446134))))

(declare-fun bs!1908777 () Bool)

(assert (= bs!1908777 (and d!2258411 b!7259019)))

(assert (=> bs!1908777 (not (= lambda!446197 lambda!446101))))

(declare-fun bs!1908778 () Bool)

(assert (= bs!1908778 (and d!2258411 d!2258077)))

(assert (=> bs!1908778 (not (= lambda!446197 lambda!446146))))

(assert (=> d!2258411 (= (nullableZipper!2936 (store ((as const (Array Context!15242 Bool)) false) ct2!328 true)) (exists!4440 (store ((as const (Array Context!15242 Bool)) false) ct2!328 true) lambda!446197))))

(declare-fun bs!1908779 () Bool)

(assert (= bs!1908779 d!2258411))

(assert (=> bs!1908779 m!7942528))

(declare-fun m!7943780 () Bool)

(assert (=> bs!1908779 m!7943780))

(assert (=> b!7259311 d!2258411))

(assert (=> bs!1908341 d!2257993))

(declare-fun d!2258413 () Bool)

(assert (=> d!2258413 (= (nullable!7941 (h!76948 (exprs!8121 lt!2589777))) (nullableFct!3123 (h!76948 (exprs!8121 lt!2589777))))))

(declare-fun bs!1908780 () Bool)

(assert (= bs!1908780 d!2258413))

(declare-fun m!7943782 () Bool)

(assert (=> bs!1908780 m!7943782))

(assert (=> b!7259301 d!2258413))

(declare-fun bm!661710 () Bool)

(declare-fun call!661717 () (InoxSet Context!15242))

(declare-fun call!661718 () List!70624)

(declare-fun c!1350475 () Bool)

(declare-fun c!1350472 () Bool)

(declare-fun c!1350473 () Bool)

(assert (=> bm!661710 (= call!661717 (derivationStepZipperDown!2675 (ite c!1350472 (regOne!37875 (h!76948 (exprs!8121 lt!2589777))) (ite c!1350475 (regTwo!37874 (h!76948 (exprs!8121 lt!2589777))) (ite c!1350473 (regOne!37874 (h!76948 (exprs!8121 lt!2589777))) (reg!19010 (h!76948 (exprs!8121 lt!2589777)))))) (ite (or c!1350472 c!1350475) (Context!15243 (t!384688 (exprs!8121 lt!2589777))) (Context!15243 call!661718)) (h!76947 s1!1971)))))

(declare-fun bm!661711 () Bool)

(declare-fun call!661716 () (InoxSet Context!15242))

(declare-fun call!661720 () (InoxSet Context!15242))

(assert (=> bm!661711 (= call!661716 call!661720)))

(declare-fun b!7259743 () Bool)

(declare-fun e!4353230 () (InoxSet Context!15242))

(declare-fun e!4353228 () (InoxSet Context!15242))

(assert (=> b!7259743 (= e!4353230 e!4353228)))

(assert (=> b!7259743 (= c!1350472 ((_ is Union!18681) (h!76948 (exprs!8121 lt!2589777))))))

(declare-fun d!2258415 () Bool)

(declare-fun c!1350471 () Bool)

(assert (=> d!2258415 (= c!1350471 (and ((_ is ElementMatch!18681) (h!76948 (exprs!8121 lt!2589777))) (= (c!1350206 (h!76948 (exprs!8121 lt!2589777))) (h!76947 s1!1971))))))

(assert (=> d!2258415 (= (derivationStepZipperDown!2675 (h!76948 (exprs!8121 lt!2589777)) (Context!15243 (t!384688 (exprs!8121 lt!2589777))) (h!76947 s1!1971)) e!4353230)))

(declare-fun b!7259744 () Bool)

(declare-fun e!4353225 () Bool)

(assert (=> b!7259744 (= c!1350475 e!4353225)))

(declare-fun res!2943655 () Bool)

(assert (=> b!7259744 (=> (not res!2943655) (not e!4353225))))

(assert (=> b!7259744 (= res!2943655 ((_ is Concat!27526) (h!76948 (exprs!8121 lt!2589777))))))

(declare-fun e!4353229 () (InoxSet Context!15242))

(assert (=> b!7259744 (= e!4353228 e!4353229)))

(declare-fun b!7259745 () Bool)

(declare-fun call!661719 () (InoxSet Context!15242))

(assert (=> b!7259745 (= e!4353228 ((_ map or) call!661717 call!661719))))

(declare-fun bm!661712 () Bool)

(assert (=> bm!661712 (= call!661720 call!661717)))

(declare-fun b!7259746 () Bool)

(assert (=> b!7259746 (= e!4353225 (nullable!7941 (regOne!37874 (h!76948 (exprs!8121 lt!2589777)))))))

(declare-fun b!7259747 () Bool)

(declare-fun c!1350474 () Bool)

(assert (=> b!7259747 (= c!1350474 ((_ is Star!18681) (h!76948 (exprs!8121 lt!2589777))))))

(declare-fun e!4353226 () (InoxSet Context!15242))

(declare-fun e!4353227 () (InoxSet Context!15242))

(assert (=> b!7259747 (= e!4353226 e!4353227)))

(declare-fun bm!661713 () Bool)

(declare-fun call!661715 () List!70624)

(assert (=> bm!661713 (= call!661718 call!661715)))

(declare-fun bm!661714 () Bool)

(assert (=> bm!661714 (= call!661715 ($colon$colon!2938 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589777)))) (ite (or c!1350475 c!1350473) (regTwo!37874 (h!76948 (exprs!8121 lt!2589777))) (h!76948 (exprs!8121 lt!2589777)))))))

(declare-fun b!7259748 () Bool)

(assert (=> b!7259748 (= e!4353227 call!661716)))

(declare-fun b!7259749 () Bool)

(assert (=> b!7259749 (= e!4353226 call!661716)))

(declare-fun b!7259750 () Bool)

(assert (=> b!7259750 (= e!4353229 e!4353226)))

(assert (=> b!7259750 (= c!1350473 ((_ is Concat!27526) (h!76948 (exprs!8121 lt!2589777))))))

(declare-fun b!7259751 () Bool)

(assert (=> b!7259751 (= e!4353229 ((_ map or) call!661719 call!661720))))

(declare-fun b!7259752 () Bool)

(assert (=> b!7259752 (= e!4353227 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259753 () Bool)

(assert (=> b!7259753 (= e!4353230 (store ((as const (Array Context!15242 Bool)) false) (Context!15243 (t!384688 (exprs!8121 lt!2589777))) true))))

(declare-fun bm!661715 () Bool)

(assert (=> bm!661715 (= call!661719 (derivationStepZipperDown!2675 (ite c!1350472 (regTwo!37875 (h!76948 (exprs!8121 lt!2589777))) (regOne!37874 (h!76948 (exprs!8121 lt!2589777)))) (ite c!1350472 (Context!15243 (t!384688 (exprs!8121 lt!2589777))) (Context!15243 call!661715)) (h!76947 s1!1971)))))

(assert (= (and d!2258415 c!1350471) b!7259753))

(assert (= (and d!2258415 (not c!1350471)) b!7259743))

(assert (= (and b!7259743 c!1350472) b!7259745))

(assert (= (and b!7259743 (not c!1350472)) b!7259744))

(assert (= (and b!7259744 res!2943655) b!7259746))

(assert (= (and b!7259744 c!1350475) b!7259751))

(assert (= (and b!7259744 (not c!1350475)) b!7259750))

(assert (= (and b!7259750 c!1350473) b!7259749))

(assert (= (and b!7259750 (not c!1350473)) b!7259747))

(assert (= (and b!7259747 c!1350474) b!7259748))

(assert (= (and b!7259747 (not c!1350474)) b!7259752))

(assert (= (or b!7259749 b!7259748) bm!661713))

(assert (= (or b!7259749 b!7259748) bm!661711))

(assert (= (or b!7259751 bm!661713) bm!661714))

(assert (= (or b!7259751 bm!661711) bm!661712))

(assert (= (or b!7259745 b!7259751) bm!661715))

(assert (= (or b!7259745 bm!661712) bm!661710))

(declare-fun m!7943784 () Bool)

(assert (=> bm!661710 m!7943784))

(declare-fun m!7943786 () Bool)

(assert (=> b!7259753 m!7943786))

(declare-fun m!7943788 () Bool)

(assert (=> b!7259746 m!7943788))

(declare-fun m!7943790 () Bool)

(assert (=> bm!661714 m!7943790))

(declare-fun m!7943792 () Bool)

(assert (=> bm!661715 m!7943792))

(assert (=> bm!661638 d!2258415))

(declare-fun bs!1908781 () Bool)

(declare-fun d!2258417 () Bool)

(assert (= bs!1908781 (and d!2258417 b!7259025)))

(declare-fun lambda!446198 () Int)

(assert (=> bs!1908781 (not (= lambda!446198 lambda!446099))))

(declare-fun bs!1908782 () Bool)

(assert (= bs!1908782 (and d!2258417 d!2258073)))

(assert (=> bs!1908782 (not (= lambda!446198 lambda!446140))))

(declare-fun bs!1908783 () Bool)

(assert (= bs!1908783 (and d!2258417 d!2258027)))

(assert (=> bs!1908783 (not (= lambda!446198 lambda!446134))))

(declare-fun bs!1908784 () Bool)

(assert (= bs!1908784 (and d!2258417 b!7259019)))

(assert (=> bs!1908784 (not (= lambda!446198 lambda!446101))))

(declare-fun bs!1908785 () Bool)

(assert (= bs!1908785 (and d!2258417 d!2258411)))

(assert (=> bs!1908785 (not (= lambda!446198 lambda!446197))))

(declare-fun bs!1908786 () Bool)

(assert (= bs!1908786 (and d!2258417 d!2258077)))

(assert (=> bs!1908786 (= lambda!446198 lambda!446146)))

(assert (=> d!2258417 true))

(assert (=> d!2258417 (< (dynLambda!28814 order!29033 lambda!446099) (dynLambda!28814 order!29033 lambda!446198))))

(assert (=> d!2258417 (= (exists!4441 (toList!11510 lt!2589813) lambda!446099) (not (forall!17538 (toList!11510 lt!2589813) lambda!446198)))))

(declare-fun bs!1908787 () Bool)

(assert (= bs!1908787 d!2258417))

(assert (=> bs!1908787 m!7942610))

(declare-fun m!7943794 () Bool)

(assert (=> bs!1908787 m!7943794))

(assert (=> d!2258069 d!2258417))

(assert (=> d!2258069 d!2258071))

(declare-fun d!2258419 () Bool)

(declare-fun res!2943658 () Bool)

(assert (=> d!2258419 (= res!2943658 (exists!4441 (toList!11510 lt!2589813) lambda!446099))))

(assert (=> d!2258419 true))

(assert (=> d!2258419 (= (choose!56205 lt!2589813 lambda!446099) res!2943658)))

(declare-fun bs!1908788 () Bool)

(assert (= bs!1908788 d!2258419))

(assert (=> bs!1908788 m!7942610))

(assert (=> bs!1908788 m!7942610))

(assert (=> bs!1908788 m!7943170))

(assert (=> d!2258069 d!2258419))

(declare-fun d!2258421 () Bool)

(declare-fun lt!2589976 () Int)

(assert (=> d!2258421 (>= lt!2589976 0)))

(declare-fun e!4353233 () Int)

(assert (=> d!2258421 (= lt!2589976 e!4353233)))

(declare-fun c!1350478 () Bool)

(assert (=> d!2258421 (= c!1350478 ((_ is Nil!70500) lt!2589927))))

(assert (=> d!2258421 (= (size!41761 lt!2589927) lt!2589976)))

(declare-fun b!7259758 () Bool)

(assert (=> b!7259758 (= e!4353233 0)))

(declare-fun b!7259759 () Bool)

(assert (=> b!7259759 (= e!4353233 (+ 1 (size!41761 (t!384688 lt!2589927))))))

(assert (= (and d!2258421 c!1350478) b!7259758))

(assert (= (and d!2258421 (not c!1350478)) b!7259759))

(declare-fun m!7943796 () Bool)

(assert (=> b!7259759 m!7943796))

(assert (=> b!7259345 d!2258421))

(declare-fun d!2258423 () Bool)

(declare-fun lt!2589977 () Int)

(assert (=> d!2258423 (>= lt!2589977 0)))

(declare-fun e!4353234 () Int)

(assert (=> d!2258423 (= lt!2589977 e!4353234)))

(declare-fun c!1350479 () Bool)

(assert (=> d!2258423 (= c!1350479 ((_ is Nil!70500) (exprs!8121 ct1!232)))))

(assert (=> d!2258423 (= (size!41761 (exprs!8121 ct1!232)) lt!2589977)))

(declare-fun b!7259760 () Bool)

(assert (=> b!7259760 (= e!4353234 0)))

(declare-fun b!7259761 () Bool)

(assert (=> b!7259761 (= e!4353234 (+ 1 (size!41761 (t!384688 (exprs!8121 ct1!232)))))))

(assert (= (and d!2258423 c!1350479) b!7259760))

(assert (= (and d!2258423 (not c!1350479)) b!7259761))

(declare-fun m!7943798 () Bool)

(assert (=> b!7259761 m!7943798))

(assert (=> b!7259345 d!2258423))

(declare-fun d!2258425 () Bool)

(declare-fun lt!2589978 () Int)

(assert (=> d!2258425 (>= lt!2589978 0)))

(declare-fun e!4353235 () Int)

(assert (=> d!2258425 (= lt!2589978 e!4353235)))

(declare-fun c!1350480 () Bool)

(assert (=> d!2258425 (= c!1350480 ((_ is Nil!70500) (exprs!8121 ct2!328)))))

(assert (=> d!2258425 (= (size!41761 (exprs!8121 ct2!328)) lt!2589978)))

(declare-fun b!7259762 () Bool)

(assert (=> b!7259762 (= e!4353235 0)))

(declare-fun b!7259763 () Bool)

(assert (=> b!7259763 (= e!4353235 (+ 1 (size!41761 (t!384688 (exprs!8121 ct2!328)))))))

(assert (= (and d!2258425 c!1350480) b!7259762))

(assert (= (and d!2258425 (not c!1350480)) b!7259763))

(declare-fun m!7943800 () Bool)

(assert (=> b!7259763 m!7943800))

(assert (=> b!7259345 d!2258425))

(declare-fun d!2258427 () Bool)

(declare-fun c!1350483 () Bool)

(assert (=> d!2258427 (= c!1350483 ((_ is Nil!70500) lt!2589915))))

(declare-fun e!4353238 () (InoxSet Regex!18681))

(assert (=> d!2258427 (= (content!14678 lt!2589915) e!4353238)))

(declare-fun b!7259768 () Bool)

(assert (=> b!7259768 (= e!4353238 ((as const (Array Regex!18681 Bool)) false))))

(declare-fun b!7259769 () Bool)

(assert (=> b!7259769 (= e!4353238 ((_ map or) (store ((as const (Array Regex!18681 Bool)) false) (h!76948 lt!2589915) true) (content!14678 (t!384688 lt!2589915))))))

(assert (= (and d!2258427 c!1350483) b!7259768))

(assert (= (and d!2258427 (not c!1350483)) b!7259769))

(declare-fun m!7943802 () Bool)

(assert (=> b!7259769 m!7943802))

(declare-fun m!7943804 () Bool)

(assert (=> b!7259769 m!7943804))

(assert (=> d!2258065 d!2258427))

(declare-fun d!2258429 () Bool)

(declare-fun c!1350484 () Bool)

(assert (=> d!2258429 (= c!1350484 ((_ is Nil!70500) (exprs!8121 lt!2589778)))))

(declare-fun e!4353239 () (InoxSet Regex!18681))

(assert (=> d!2258429 (= (content!14678 (exprs!8121 lt!2589778)) e!4353239)))

(declare-fun b!7259770 () Bool)

(assert (=> b!7259770 (= e!4353239 ((as const (Array Regex!18681 Bool)) false))))

(declare-fun b!7259771 () Bool)

(assert (=> b!7259771 (= e!4353239 ((_ map or) (store ((as const (Array Regex!18681 Bool)) false) (h!76948 (exprs!8121 lt!2589778)) true) (content!14678 (t!384688 (exprs!8121 lt!2589778)))))))

(assert (= (and d!2258429 c!1350484) b!7259770))

(assert (= (and d!2258429 (not c!1350484)) b!7259771))

(declare-fun m!7943806 () Bool)

(assert (=> b!7259771 m!7943806))

(declare-fun m!7943808 () Bool)

(assert (=> b!7259771 m!7943808))

(assert (=> d!2258065 d!2258429))

(declare-fun d!2258431 () Bool)

(declare-fun c!1350485 () Bool)

(assert (=> d!2258431 (= c!1350485 ((_ is Nil!70500) (exprs!8121 ct2!328)))))

(declare-fun e!4353240 () (InoxSet Regex!18681))

(assert (=> d!2258431 (= (content!14678 (exprs!8121 ct2!328)) e!4353240)))

(declare-fun b!7259772 () Bool)

(assert (=> b!7259772 (= e!4353240 ((as const (Array Regex!18681 Bool)) false))))

(declare-fun b!7259773 () Bool)

(assert (=> b!7259773 (= e!4353240 ((_ map or) (store ((as const (Array Regex!18681 Bool)) false) (h!76948 (exprs!8121 ct2!328)) true) (content!14678 (t!384688 (exprs!8121 ct2!328)))))))

(assert (= (and d!2258431 c!1350485) b!7259772))

(assert (= (and d!2258431 (not c!1350485)) b!7259773))

(declare-fun m!7943810 () Bool)

(assert (=> b!7259773 m!7943810))

(declare-fun m!7943812 () Bool)

(assert (=> b!7259773 m!7943812))

(assert (=> d!2258065 d!2258431))

(declare-fun d!2258433 () Bool)

(declare-fun res!2943663 () Bool)

(declare-fun e!4353245 () Bool)

(assert (=> d!2258433 (=> res!2943663 e!4353245)))

(assert (=> d!2258433 (= res!2943663 ((_ is Nil!70500) (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328))))))

(assert (=> d!2258433 (= (forall!17537 (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328)) lambda!446098) e!4353245)))

(declare-fun b!7259778 () Bool)

(declare-fun e!4353246 () Bool)

(assert (=> b!7259778 (= e!4353245 e!4353246)))

(declare-fun res!2943664 () Bool)

(assert (=> b!7259778 (=> (not res!2943664) (not e!4353246))))

(declare-fun dynLambda!28816 (Int Regex!18681) Bool)

(assert (=> b!7259778 (= res!2943664 (dynLambda!28816 lambda!446098 (h!76948 (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328)))))))

(declare-fun b!7259779 () Bool)

(assert (=> b!7259779 (= e!4353246 (forall!17537 (t!384688 (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328))) lambda!446098))))

(assert (= (and d!2258433 (not res!2943663)) b!7259778))

(assert (= (and b!7259778 res!2943664) b!7259779))

(declare-fun b_lambda!279219 () Bool)

(assert (=> (not b_lambda!279219) (not b!7259778)))

(declare-fun m!7943814 () Bool)

(assert (=> b!7259778 m!7943814))

(declare-fun m!7943816 () Bool)

(assert (=> b!7259779 m!7943816))

(assert (=> d!2257991 d!2258433))

(assert (=> d!2257991 d!2258065))

(declare-fun d!2258435 () Bool)

(assert (=> d!2258435 (forall!17537 (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328)) lambda!446098)))

(assert (=> d!2258435 true))

(declare-fun _$78!800 () Unit!163992)

(assert (=> d!2258435 (= (choose!56201 (exprs!8121 lt!2589778) (exprs!8121 ct2!328) lambda!446098) _$78!800)))

(declare-fun bs!1908789 () Bool)

(assert (= bs!1908789 d!2258435))

(assert (=> bs!1908789 m!7942626))

(assert (=> bs!1908789 m!7942626))

(assert (=> bs!1908789 m!7942934))

(assert (=> d!2257991 d!2258435))

(declare-fun d!2258437 () Bool)

(declare-fun res!2943665 () Bool)

(declare-fun e!4353247 () Bool)

(assert (=> d!2258437 (=> res!2943665 e!4353247)))

(assert (=> d!2258437 (= res!2943665 ((_ is Nil!70500) (exprs!8121 lt!2589778)))))

(assert (=> d!2258437 (= (forall!17537 (exprs!8121 lt!2589778) lambda!446098) e!4353247)))

(declare-fun b!7259780 () Bool)

(declare-fun e!4353248 () Bool)

(assert (=> b!7259780 (= e!4353247 e!4353248)))

(declare-fun res!2943666 () Bool)

(assert (=> b!7259780 (=> (not res!2943666) (not e!4353248))))

(assert (=> b!7259780 (= res!2943666 (dynLambda!28816 lambda!446098 (h!76948 (exprs!8121 lt!2589778))))))

(declare-fun b!7259781 () Bool)

(assert (=> b!7259781 (= e!4353248 (forall!17537 (t!384688 (exprs!8121 lt!2589778)) lambda!446098))))

(assert (= (and d!2258437 (not res!2943665)) b!7259780))

(assert (= (and b!7259780 res!2943666) b!7259781))

(declare-fun b_lambda!279221 () Bool)

(assert (=> (not b_lambda!279221) (not b!7259780)))

(declare-fun m!7943818 () Bool)

(assert (=> b!7259780 m!7943818))

(declare-fun m!7943820 () Bool)

(assert (=> b!7259781 m!7943820))

(assert (=> d!2257991 d!2258437))

(assert (=> d!2258001 d!2258011))

(declare-fun d!2258439 () Bool)

(assert (=> d!2258439 (= (flatMap!2846 lt!2589797 lambda!446100) (dynLambda!28812 lambda!446100 lt!2589787))))

(assert (=> d!2258439 true))

(declare-fun _$13!4608 () Unit!163992)

(assert (=> d!2258439 (= (choose!56203 lt!2589797 lt!2589787 lambda!446100) _$13!4608)))

(declare-fun b_lambda!279223 () Bool)

(assert (=> (not b_lambda!279223) (not d!2258439)))

(declare-fun bs!1908790 () Bool)

(assert (= bs!1908790 d!2258439))

(assert (=> bs!1908790 m!7942588))

(assert (=> bs!1908790 m!7942968))

(assert (=> d!2258001 d!2258439))

(declare-fun d!2258441 () Bool)

(declare-fun c!1350488 () Bool)

(assert (=> d!2258441 (= c!1350488 ((_ is Nil!70499) lt!2589885))))

(declare-fun e!4353251 () (InoxSet C!37636))

(assert (=> d!2258441 (= (content!14677 lt!2589885) e!4353251)))

(declare-fun b!7259786 () Bool)

(assert (=> b!7259786 (= e!4353251 ((as const (Array C!37636 Bool)) false))))

(declare-fun b!7259787 () Bool)

(assert (=> b!7259787 (= e!4353251 ((_ map or) (store ((as const (Array C!37636 Bool)) false) (h!76947 lt!2589885) true) (content!14677 (t!384687 lt!2589885))))))

(assert (= (and d!2258441 c!1350488) b!7259786))

(assert (= (and d!2258441 (not c!1350488)) b!7259787))

(declare-fun m!7943822 () Bool)

(assert (=> b!7259787 m!7943822))

(declare-fun m!7943824 () Bool)

(assert (=> b!7259787 m!7943824))

(assert (=> d!2258003 d!2258441))

(declare-fun d!2258443 () Bool)

(declare-fun c!1350489 () Bool)

(assert (=> d!2258443 (= c!1350489 ((_ is Nil!70499) s1!1971))))

(declare-fun e!4353252 () (InoxSet C!37636))

(assert (=> d!2258443 (= (content!14677 s1!1971) e!4353252)))

(declare-fun b!7259788 () Bool)

(assert (=> b!7259788 (= e!4353252 ((as const (Array C!37636 Bool)) false))))

(declare-fun b!7259789 () Bool)

(assert (=> b!7259789 (= e!4353252 ((_ map or) (store ((as const (Array C!37636 Bool)) false) (h!76947 s1!1971) true) (content!14677 (t!384687 s1!1971))))))

(assert (= (and d!2258443 c!1350489) b!7259788))

(assert (= (and d!2258443 (not c!1350489)) b!7259789))

(declare-fun m!7943826 () Bool)

(assert (=> b!7259789 m!7943826))

(assert (=> b!7259789 m!7943126))

(assert (=> d!2258003 d!2258443))

(declare-fun d!2258445 () Bool)

(declare-fun c!1350490 () Bool)

(assert (=> d!2258445 (= c!1350490 ((_ is Nil!70499) s2!1849))))

(declare-fun e!4353253 () (InoxSet C!37636))

(assert (=> d!2258445 (= (content!14677 s2!1849) e!4353253)))

(declare-fun b!7259790 () Bool)

(assert (=> b!7259790 (= e!4353253 ((as const (Array C!37636 Bool)) false))))

(declare-fun b!7259791 () Bool)

(assert (=> b!7259791 (= e!4353253 ((_ map or) (store ((as const (Array C!37636 Bool)) false) (h!76947 s2!1849) true) (content!14677 (t!384687 s2!1849))))))

(assert (= (and d!2258445 c!1350490) b!7259790))

(assert (= (and d!2258445 (not c!1350490)) b!7259791))

(declare-fun m!7943828 () Bool)

(assert (=> b!7259791 m!7943828))

(declare-fun m!7943830 () Bool)

(assert (=> b!7259791 m!7943830))

(assert (=> d!2258003 d!2258445))

(assert (=> d!2258019 d!2258013))

(declare-fun d!2258447 () Bool)

(assert (=> d!2258447 (exists!4440 lt!2589798 lambda!446101)))

(assert (=> d!2258447 true))

(declare-fun _$17!660 () Unit!163992)

(assert (=> d!2258447 (= (choose!56206 lt!2589798 lt!2589808 lambda!446101) _$17!660)))

(declare-fun bs!1908791 () Bool)

(assert (= bs!1908791 d!2258447))

(assert (=> bs!1908791 m!7942574))

(assert (=> d!2258019 d!2258447))

(declare-fun bs!1908792 () Bool)

(declare-fun d!2258449 () Bool)

(assert (= bs!1908792 (and d!2258449 d!2258073)))

(declare-fun lambda!446199 () Int)

(assert (=> bs!1908792 (not (= lambda!446199 lambda!446140))))

(declare-fun bs!1908793 () Bool)

(assert (= bs!1908793 (and d!2258449 d!2258027)))

(assert (=> bs!1908793 (not (= lambda!446199 lambda!446134))))

(declare-fun bs!1908794 () Bool)

(assert (= bs!1908794 (and d!2258449 b!7259019)))

(assert (=> bs!1908794 (not (= lambda!446199 lambda!446101))))

(declare-fun bs!1908795 () Bool)

(assert (= bs!1908795 (and d!2258449 d!2258411)))

(assert (=> bs!1908795 (= lambda!446199 lambda!446197)))

(declare-fun bs!1908796 () Bool)

(assert (= bs!1908796 (and d!2258449 d!2258077)))

(assert (=> bs!1908796 (not (= lambda!446199 lambda!446146))))

(declare-fun bs!1908797 () Bool)

(assert (= bs!1908797 (and d!2258449 d!2258417)))

(assert (=> bs!1908797 (not (= lambda!446199 lambda!446198))))

(declare-fun bs!1908798 () Bool)

(assert (= bs!1908798 (and d!2258449 b!7259025)))

(assert (=> bs!1908798 (not (= lambda!446199 lambda!446099))))

(assert (=> d!2258449 (= (nullableZipper!2936 lt!2589798) (exists!4440 lt!2589798 lambda!446199))))

(declare-fun bs!1908799 () Bool)

(assert (= bs!1908799 d!2258449))

(declare-fun m!7943832 () Bool)

(assert (=> bs!1908799 m!7943832))

(assert (=> b!7259309 d!2258449))

(declare-fun c!1350492 () Bool)

(declare-fun bm!661716 () Bool)

(declare-fun call!661723 () (InoxSet Context!15242))

(declare-fun call!661724 () List!70624)

(declare-fun c!1350493 () Bool)

(declare-fun c!1350495 () Bool)

(assert (=> bm!661716 (= call!661723 (derivationStepZipperDown!2675 (ite c!1350492 (regOne!37875 (ite c!1350333 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350336 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350334 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))) (ite c!1350495 (regTwo!37874 (ite c!1350333 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350336 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350334 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))) (ite c!1350493 (regOne!37874 (ite c!1350333 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350336 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350334 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))) (reg!19010 (ite c!1350333 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350336 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350334 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232)))))))))) (ite (or c!1350492 c!1350495) (ite (or c!1350333 c!1350336) lt!2589780 (Context!15243 call!661647)) (Context!15243 call!661724)) (h!76947 s1!1971)))))

(declare-fun bm!661717 () Bool)

(declare-fun call!661722 () (InoxSet Context!15242))

(declare-fun call!661726 () (InoxSet Context!15242))

(assert (=> bm!661717 (= call!661722 call!661726)))

(declare-fun b!7259792 () Bool)

(declare-fun e!4353260 () (InoxSet Context!15242))

(declare-fun e!4353258 () (InoxSet Context!15242))

(assert (=> b!7259792 (= e!4353260 e!4353258)))

(assert (=> b!7259792 (= c!1350492 ((_ is Union!18681) (ite c!1350333 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350336 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350334 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))))))

(declare-fun d!2258451 () Bool)

(declare-fun c!1350491 () Bool)

(assert (=> d!2258451 (= c!1350491 (and ((_ is ElementMatch!18681) (ite c!1350333 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350336 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350334 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))) (= (c!1350206 (ite c!1350333 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350336 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350334 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))) (h!76947 s1!1971))))))

(assert (=> d!2258451 (= (derivationStepZipperDown!2675 (ite c!1350333 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350336 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350334 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232)))))) (ite (or c!1350333 c!1350336) lt!2589780 (Context!15243 call!661647)) (h!76947 s1!1971)) e!4353260)))

(declare-fun b!7259793 () Bool)

(declare-fun e!4353255 () Bool)

(assert (=> b!7259793 (= c!1350495 e!4353255)))

(declare-fun res!2943667 () Bool)

(assert (=> b!7259793 (=> (not res!2943667) (not e!4353255))))

(assert (=> b!7259793 (= res!2943667 ((_ is Concat!27526) (ite c!1350333 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350336 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350334 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))))))

(declare-fun e!4353259 () (InoxSet Context!15242))

(assert (=> b!7259793 (= e!4353258 e!4353259)))

(declare-fun b!7259794 () Bool)

(declare-fun call!661725 () (InoxSet Context!15242))

(assert (=> b!7259794 (= e!4353258 ((_ map or) call!661723 call!661725))))

(declare-fun bm!661718 () Bool)

(assert (=> bm!661718 (= call!661726 call!661723)))

(declare-fun b!7259795 () Bool)

(assert (=> b!7259795 (= e!4353255 (nullable!7941 (regOne!37874 (ite c!1350333 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350336 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350334 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232)))))))))))

(declare-fun c!1350494 () Bool)

(declare-fun b!7259796 () Bool)

(assert (=> b!7259796 (= c!1350494 ((_ is Star!18681) (ite c!1350333 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350336 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350334 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))))))

(declare-fun e!4353256 () (InoxSet Context!15242))

(declare-fun e!4353257 () (InoxSet Context!15242))

(assert (=> b!7259796 (= e!4353256 e!4353257)))

(declare-fun bm!661719 () Bool)

(declare-fun call!661721 () List!70624)

(assert (=> bm!661719 (= call!661724 call!661721)))

(declare-fun bm!661720 () Bool)

(assert (=> bm!661720 (= call!661721 ($colon$colon!2938 (exprs!8121 (ite (or c!1350333 c!1350336) lt!2589780 (Context!15243 call!661647))) (ite (or c!1350495 c!1350493) (regTwo!37874 (ite c!1350333 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350336 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350334 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))) (ite c!1350333 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350336 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350334 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232)))))))))))

(declare-fun b!7259797 () Bool)

(assert (=> b!7259797 (= e!4353257 call!661722)))

(declare-fun b!7259798 () Bool)

(assert (=> b!7259798 (= e!4353256 call!661722)))

(declare-fun b!7259799 () Bool)

(assert (=> b!7259799 (= e!4353259 e!4353256)))

(assert (=> b!7259799 (= c!1350493 ((_ is Concat!27526) (ite c!1350333 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350336 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350334 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))))))

(declare-fun b!7259800 () Bool)

(assert (=> b!7259800 (= e!4353259 ((_ map or) call!661725 call!661726))))

(declare-fun b!7259801 () Bool)

(assert (=> b!7259801 (= e!4353257 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259802 () Bool)

(assert (=> b!7259802 (= e!4353260 (store ((as const (Array Context!15242 Bool)) false) (ite (or c!1350333 c!1350336) lt!2589780 (Context!15243 call!661647)) true))))

(declare-fun bm!661721 () Bool)

(assert (=> bm!661721 (= call!661725 (derivationStepZipperDown!2675 (ite c!1350492 (regTwo!37875 (ite c!1350333 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350336 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350334 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))) (regOne!37874 (ite c!1350333 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350336 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350334 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232)))))))) (ite c!1350492 (ite (or c!1350333 c!1350336) lt!2589780 (Context!15243 call!661647)) (Context!15243 call!661721)) (h!76947 s1!1971)))))

(assert (= (and d!2258451 c!1350491) b!7259802))

(assert (= (and d!2258451 (not c!1350491)) b!7259792))

(assert (= (and b!7259792 c!1350492) b!7259794))

(assert (= (and b!7259792 (not c!1350492)) b!7259793))

(assert (= (and b!7259793 res!2943667) b!7259795))

(assert (= (and b!7259793 c!1350495) b!7259800))

(assert (= (and b!7259793 (not c!1350495)) b!7259799))

(assert (= (and b!7259799 c!1350493) b!7259798))

(assert (= (and b!7259799 (not c!1350493)) b!7259796))

(assert (= (and b!7259796 c!1350494) b!7259797))

(assert (= (and b!7259796 (not c!1350494)) b!7259801))

(assert (= (or b!7259798 b!7259797) bm!661719))

(assert (= (or b!7259798 b!7259797) bm!661717))

(assert (= (or b!7259800 bm!661719) bm!661720))

(assert (= (or b!7259800 bm!661717) bm!661718))

(assert (= (or b!7259794 b!7259800) bm!661721))

(assert (= (or b!7259794 bm!661718) bm!661716))

(declare-fun m!7943834 () Bool)

(assert (=> bm!661716 m!7943834))

(declare-fun m!7943836 () Bool)

(assert (=> b!7259802 m!7943836))

(declare-fun m!7943838 () Bool)

(assert (=> b!7259795 m!7943838))

(declare-fun m!7943840 () Bool)

(assert (=> bm!661720 m!7943840))

(declare-fun m!7943842 () Bool)

(assert (=> bm!661721 m!7943842))

(assert (=> bm!661639 d!2258451))

(declare-fun d!2258453 () Bool)

(declare-fun c!1350496 () Bool)

(assert (=> d!2258453 (= c!1350496 (isEmpty!40598 (tail!14387 lt!2589806)))))

(declare-fun e!4353261 () Bool)

(assert (=> d!2258453 (= (matchZipper!3591 (derivationStepZipper!3459 (store ((as const (Array Context!15242 Bool)) false) lt!2589808 true) (head!14933 lt!2589806)) (tail!14387 lt!2589806)) e!4353261)))

(declare-fun b!7259803 () Bool)

(assert (=> b!7259803 (= e!4353261 (nullableZipper!2936 (derivationStepZipper!3459 (store ((as const (Array Context!15242 Bool)) false) lt!2589808 true) (head!14933 lt!2589806))))))

(declare-fun b!7259804 () Bool)

(assert (=> b!7259804 (= e!4353261 (matchZipper!3591 (derivationStepZipper!3459 (derivationStepZipper!3459 (store ((as const (Array Context!15242 Bool)) false) lt!2589808 true) (head!14933 lt!2589806)) (head!14933 (tail!14387 lt!2589806))) (tail!14387 (tail!14387 lt!2589806))))))

(assert (= (and d!2258453 c!1350496) b!7259803))

(assert (= (and d!2258453 (not c!1350496)) b!7259804))

(assert (=> d!2258453 m!7942996))

(declare-fun m!7943844 () Bool)

(assert (=> d!2258453 m!7943844))

(assert (=> b!7259803 m!7943140))

(declare-fun m!7943846 () Bool)

(assert (=> b!7259803 m!7943846))

(assert (=> b!7259804 m!7942996))

(declare-fun m!7943848 () Bool)

(assert (=> b!7259804 m!7943848))

(assert (=> b!7259804 m!7943140))

(assert (=> b!7259804 m!7943848))

(declare-fun m!7943850 () Bool)

(assert (=> b!7259804 m!7943850))

(assert (=> b!7259804 m!7942996))

(declare-fun m!7943852 () Bool)

(assert (=> b!7259804 m!7943852))

(assert (=> b!7259804 m!7943850))

(assert (=> b!7259804 m!7943852))

(declare-fun m!7943854 () Bool)

(assert (=> b!7259804 m!7943854))

(assert (=> b!7259321 d!2258453))

(declare-fun bs!1908800 () Bool)

(declare-fun d!2258455 () Bool)

(assert (= bs!1908800 (and d!2258455 b!7259019)))

(declare-fun lambda!446200 () Int)

(assert (=> bs!1908800 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446200 lambda!446100))))

(declare-fun bs!1908801 () Bool)

(assert (= bs!1908801 (and d!2258455 d!2258075)))

(assert (=> bs!1908801 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446200 lambda!446143))))

(declare-fun bs!1908802 () Bool)

(assert (= bs!1908802 (and d!2258455 d!2258081)))

(assert (=> bs!1908802 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446200 lambda!446147))))

(assert (=> d!2258455 true))

(assert (=> d!2258455 (= (derivationStepZipper!3459 (store ((as const (Array Context!15242 Bool)) false) lt!2589808 true) (head!14933 lt!2589806)) (flatMap!2846 (store ((as const (Array Context!15242 Bool)) false) lt!2589808 true) lambda!446200))))

(declare-fun bs!1908803 () Bool)

(assert (= bs!1908803 d!2258455))

(assert (=> bs!1908803 m!7942618))

(declare-fun m!7943856 () Bool)

(assert (=> bs!1908803 m!7943856))

(assert (=> b!7259321 d!2258455))

(declare-fun d!2258457 () Bool)

(assert (=> d!2258457 (= (head!14933 lt!2589806) (h!76947 lt!2589806))))

(assert (=> b!7259321 d!2258457))

(declare-fun d!2258459 () Bool)

(assert (=> d!2258459 (= (tail!14387 lt!2589806) (t!384687 lt!2589806))))

(assert (=> b!7259321 d!2258459))

(declare-fun d!2258461 () Bool)

(declare-fun c!1350497 () Bool)

(assert (=> d!2258461 (= c!1350497 ((_ is Nil!70501) (t!384689 lt!2589782)))))

(declare-fun e!4353262 () (InoxSet Context!15242))

(assert (=> d!2258461 (= (content!14674 (t!384689 lt!2589782)) e!4353262)))

(declare-fun b!7259805 () Bool)

(assert (=> b!7259805 (= e!4353262 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259806 () Bool)

(assert (=> b!7259806 (= e!4353262 ((_ map or) (store ((as const (Array Context!15242 Bool)) false) (h!76949 (t!384689 lt!2589782)) true) (content!14674 (t!384689 (t!384689 lt!2589782)))))))

(assert (= (and d!2258461 c!1350497) b!7259805))

(assert (= (and d!2258461 (not c!1350497)) b!7259806))

(declare-fun m!7943858 () Bool)

(assert (=> b!7259806 m!7943858))

(declare-fun m!7943860 () Bool)

(assert (=> b!7259806 m!7943860))

(assert (=> b!7259242 d!2258461))

(declare-fun bs!1908804 () Bool)

(declare-fun d!2258463 () Bool)

(assert (= bs!1908804 (and d!2258463 d!2258073)))

(declare-fun lambda!446201 () Int)

(assert (=> bs!1908804 (not (= lambda!446201 lambda!446140))))

(declare-fun bs!1908805 () Bool)

(assert (= bs!1908805 (and d!2258463 d!2258449)))

(assert (=> bs!1908805 (= lambda!446201 lambda!446199)))

(declare-fun bs!1908806 () Bool)

(assert (= bs!1908806 (and d!2258463 d!2258027)))

(assert (=> bs!1908806 (not (= lambda!446201 lambda!446134))))

(declare-fun bs!1908807 () Bool)

(assert (= bs!1908807 (and d!2258463 b!7259019)))

(assert (=> bs!1908807 (not (= lambda!446201 lambda!446101))))

(declare-fun bs!1908808 () Bool)

(assert (= bs!1908808 (and d!2258463 d!2258411)))

(assert (=> bs!1908808 (= lambda!446201 lambda!446197)))

(declare-fun bs!1908809 () Bool)

(assert (= bs!1908809 (and d!2258463 d!2258077)))

(assert (=> bs!1908809 (not (= lambda!446201 lambda!446146))))

(declare-fun bs!1908810 () Bool)

(assert (= bs!1908810 (and d!2258463 d!2258417)))

(assert (=> bs!1908810 (not (= lambda!446201 lambda!446198))))

(declare-fun bs!1908811 () Bool)

(assert (= bs!1908811 (and d!2258463 b!7259025)))

(assert (=> bs!1908811 (not (= lambda!446201 lambda!446099))))

(assert (=> d!2258463 (= (nullableZipper!2936 lt!2589785) (exists!4440 lt!2589785 lambda!446201))))

(declare-fun bs!1908812 () Bool)

(assert (= bs!1908812 d!2258463))

(declare-fun m!7943862 () Bool)

(assert (=> bs!1908812 m!7943862))

(assert (=> b!7259341 d!2258463))

(declare-fun d!2258465 () Bool)

(assert (=> d!2258465 (= (isEmpty!40598 lt!2589806) ((_ is Nil!70499) lt!2589806))))

(assert (=> d!2258063 d!2258465))

(declare-fun d!2258467 () Bool)

(declare-fun c!1350498 () Bool)

(assert (=> d!2258467 (= c!1350498 ((_ is Nil!70501) lt!2589879))))

(declare-fun e!4353263 () (InoxSet Context!15242))

(assert (=> d!2258467 (= (content!14674 lt!2589879) e!4353263)))

(declare-fun b!7259807 () Bool)

(assert (=> b!7259807 (= e!4353263 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259808 () Bool)

(assert (=> b!7259808 (= e!4353263 ((_ map or) (store ((as const (Array Context!15242 Bool)) false) (h!76949 lt!2589879) true) (content!14674 (t!384689 lt!2589879))))))

(assert (= (and d!2258467 c!1350498) b!7259807))

(assert (= (and d!2258467 (not c!1350498)) b!7259808))

(declare-fun m!7943864 () Bool)

(assert (=> b!7259808 m!7943864))

(declare-fun m!7943866 () Bool)

(assert (=> b!7259808 m!7943866))

(assert (=> b!7259224 d!2258467))

(declare-fun d!2258469 () Bool)

(declare-fun c!1350499 () Bool)

(assert (=> d!2258469 (= c!1350499 (isEmpty!40598 (tail!14387 s2!1849)))))

(declare-fun e!4353264 () Bool)

(assert (=> d!2258469 (= (matchZipper!3591 (derivationStepZipper!3459 (store ((as const (Array Context!15242 Bool)) false) ct2!328 true) (head!14933 s2!1849)) (tail!14387 s2!1849)) e!4353264)))

(declare-fun b!7259809 () Bool)

(assert (=> b!7259809 (= e!4353264 (nullableZipper!2936 (derivationStepZipper!3459 (store ((as const (Array Context!15242 Bool)) false) ct2!328 true) (head!14933 s2!1849))))))

(declare-fun b!7259810 () Bool)

(assert (=> b!7259810 (= e!4353264 (matchZipper!3591 (derivationStepZipper!3459 (derivationStepZipper!3459 (store ((as const (Array Context!15242 Bool)) false) ct2!328 true) (head!14933 s2!1849)) (head!14933 (tail!14387 s2!1849))) (tail!14387 (tail!14387 s2!1849))))))

(assert (= (and d!2258469 c!1350499) b!7259809))

(assert (= (and d!2258469 (not c!1350499)) b!7259810))

(assert (=> d!2258469 m!7943118))

(declare-fun m!7943868 () Bool)

(assert (=> d!2258469 m!7943868))

(assert (=> b!7259809 m!7943116))

(declare-fun m!7943870 () Bool)

(assert (=> b!7259809 m!7943870))

(assert (=> b!7259810 m!7943118))

(declare-fun m!7943872 () Bool)

(assert (=> b!7259810 m!7943872))

(assert (=> b!7259810 m!7943116))

(assert (=> b!7259810 m!7943872))

(declare-fun m!7943874 () Bool)

(assert (=> b!7259810 m!7943874))

(assert (=> b!7259810 m!7943118))

(declare-fun m!7943876 () Bool)

(assert (=> b!7259810 m!7943876))

(assert (=> b!7259810 m!7943874))

(assert (=> b!7259810 m!7943876))

(declare-fun m!7943878 () Bool)

(assert (=> b!7259810 m!7943878))

(assert (=> b!7259312 d!2258469))

(declare-fun bs!1908813 () Bool)

(declare-fun d!2258471 () Bool)

(assert (= bs!1908813 (and d!2258471 b!7259019)))

(declare-fun lambda!446202 () Int)

(assert (=> bs!1908813 (= (= (head!14933 s2!1849) (h!76947 s1!1971)) (= lambda!446202 lambda!446100))))

(declare-fun bs!1908814 () Bool)

(assert (= bs!1908814 (and d!2258471 d!2258075)))

(assert (=> bs!1908814 (= (= (head!14933 s2!1849) (h!76947 s1!1971)) (= lambda!446202 lambda!446143))))

(declare-fun bs!1908815 () Bool)

(assert (= bs!1908815 (and d!2258471 d!2258081)))

(assert (=> bs!1908815 (= (= (head!14933 s2!1849) (h!76947 s1!1971)) (= lambda!446202 lambda!446147))))

(declare-fun bs!1908816 () Bool)

(assert (= bs!1908816 (and d!2258471 d!2258455)))

(assert (=> bs!1908816 (= (= (head!14933 s2!1849) (head!14933 lt!2589806)) (= lambda!446202 lambda!446200))))

(assert (=> d!2258471 true))

(assert (=> d!2258471 (= (derivationStepZipper!3459 (store ((as const (Array Context!15242 Bool)) false) ct2!328 true) (head!14933 s2!1849)) (flatMap!2846 (store ((as const (Array Context!15242 Bool)) false) ct2!328 true) lambda!446202))))

(declare-fun bs!1908817 () Bool)

(assert (= bs!1908817 d!2258471))

(assert (=> bs!1908817 m!7942528))

(declare-fun m!7943880 () Bool)

(assert (=> bs!1908817 m!7943880))

(assert (=> b!7259312 d!2258471))

(declare-fun d!2258473 () Bool)

(assert (=> d!2258473 (= (head!14933 s2!1849) (h!76947 s2!1849))))

(assert (=> b!7259312 d!2258473))

(declare-fun d!2258475 () Bool)

(assert (=> d!2258475 (= (tail!14387 s2!1849) (t!384687 s2!1849))))

(assert (=> b!7259312 d!2258475))

(declare-fun b!7259811 () Bool)

(declare-fun call!661727 () (InoxSet Context!15242))

(declare-fun e!4353265 () (InoxSet Context!15242))

(assert (=> b!7259811 (= e!4353265 ((_ map or) call!661727 (derivationStepZipperUp!2505 (Context!15243 (t!384688 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589787)))))) (h!76947 s1!1971))))))

(declare-fun bm!661722 () Bool)

(assert (=> bm!661722 (= call!661727 (derivationStepZipperDown!2675 (h!76948 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589787))))) (Context!15243 (t!384688 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589787)))))) (h!76947 s1!1971)))))

(declare-fun b!7259812 () Bool)

(declare-fun e!4353267 () (InoxSet Context!15242))

(assert (=> b!7259812 (= e!4353267 call!661727)))

(declare-fun d!2258477 () Bool)

(declare-fun c!1350501 () Bool)

(declare-fun e!4353266 () Bool)

(assert (=> d!2258477 (= c!1350501 e!4353266)))

(declare-fun res!2943668 () Bool)

(assert (=> d!2258477 (=> (not res!2943668) (not e!4353266))))

(assert (=> d!2258477 (= res!2943668 ((_ is Cons!70500) (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589787))))))))

(assert (=> d!2258477 (= (derivationStepZipperUp!2505 (Context!15243 (t!384688 (exprs!8121 lt!2589787))) (h!76947 s1!1971)) e!4353265)))

(declare-fun b!7259813 () Bool)

(assert (=> b!7259813 (= e!4353265 e!4353267)))

(declare-fun c!1350500 () Bool)

(assert (=> b!7259813 (= c!1350500 ((_ is Cons!70500) (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589787))))))))

(declare-fun b!7259814 () Bool)

(assert (=> b!7259814 (= e!4353267 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259815 () Bool)

(assert (=> b!7259815 (= e!4353266 (nullable!7941 (h!76948 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589787)))))))))

(assert (= (and d!2258477 res!2943668) b!7259815))

(assert (= (and d!2258477 c!1350501) b!7259811))

(assert (= (and d!2258477 (not c!1350501)) b!7259813))

(assert (= (and b!7259813 c!1350500) b!7259812))

(assert (= (and b!7259813 (not c!1350500)) b!7259814))

(assert (= (or b!7259811 b!7259812) bm!661722))

(declare-fun m!7943882 () Bool)

(assert (=> b!7259811 m!7943882))

(declare-fun m!7943884 () Bool)

(assert (=> bm!661722 m!7943884))

(declare-fun m!7943886 () Bool)

(assert (=> b!7259815 m!7943886))

(assert (=> b!7259211 d!2258477))

(declare-fun bs!1908818 () Bool)

(declare-fun d!2258479 () Bool)

(assert (= bs!1908818 (and d!2258479 d!2258073)))

(declare-fun lambda!446203 () Int)

(assert (=> bs!1908818 (not (= lambda!446203 lambda!446140))))

(declare-fun bs!1908819 () Bool)

(assert (= bs!1908819 (and d!2258479 d!2258449)))

(assert (=> bs!1908819 (= lambda!446203 lambda!446199)))

(declare-fun bs!1908820 () Bool)

(assert (= bs!1908820 (and d!2258479 d!2258027)))

(assert (=> bs!1908820 (not (= lambda!446203 lambda!446134))))

(declare-fun bs!1908821 () Bool)

(assert (= bs!1908821 (and d!2258479 b!7259019)))

(assert (=> bs!1908821 (not (= lambda!446203 lambda!446101))))

(declare-fun bs!1908822 () Bool)

(assert (= bs!1908822 (and d!2258479 d!2258411)))

(assert (=> bs!1908822 (= lambda!446203 lambda!446197)))

(declare-fun bs!1908823 () Bool)

(assert (= bs!1908823 (and d!2258479 d!2258417)))

(assert (=> bs!1908823 (not (= lambda!446203 lambda!446198))))

(declare-fun bs!1908824 () Bool)

(assert (= bs!1908824 (and d!2258479 b!7259025)))

(assert (=> bs!1908824 (not (= lambda!446203 lambda!446099))))

(declare-fun bs!1908825 () Bool)

(assert (= bs!1908825 (and d!2258479 d!2258463)))

(assert (=> bs!1908825 (= lambda!446203 lambda!446201)))

(declare-fun bs!1908826 () Bool)

(assert (= bs!1908826 (and d!2258479 d!2258077)))

(assert (=> bs!1908826 (not (= lambda!446203 lambda!446146))))

(assert (=> d!2258479 (= (nullableZipper!2936 (content!14674 lt!2589782)) (exists!4440 (content!14674 lt!2589782) lambda!446203))))

(declare-fun bs!1908827 () Bool)

(assert (= bs!1908827 d!2258479))

(assert (=> bs!1908827 m!7942570))

(declare-fun m!7943888 () Bool)

(assert (=> bs!1908827 m!7943888))

(assert (=> b!7259243 d!2258479))

(declare-fun call!661730 () (InoxSet Context!15242))

(declare-fun c!1350503 () Bool)

(declare-fun c!1350504 () Bool)

(declare-fun c!1350506 () Bool)

(declare-fun bm!661723 () Bool)

(declare-fun call!661731 () List!70624)

(assert (=> bm!661723 (= call!661730 (derivationStepZipperDown!2675 (ite c!1350503 (regOne!37875 (ite c!1350301 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))) (ite c!1350506 (regTwo!37874 (ite c!1350301 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))) (ite c!1350504 (regOne!37874 (ite c!1350301 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))) (reg!19010 (ite c!1350301 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232)))))))) (ite (or c!1350503 c!1350506) (ite c!1350301 lt!2589777 (Context!15243 call!661636)) (Context!15243 call!661731)) (h!76947 s1!1971)))))

(declare-fun bm!661724 () Bool)

(declare-fun call!661729 () (InoxSet Context!15242))

(declare-fun call!661733 () (InoxSet Context!15242))

(assert (=> bm!661724 (= call!661729 call!661733)))

(declare-fun b!7259816 () Bool)

(declare-fun e!4353273 () (InoxSet Context!15242))

(declare-fun e!4353271 () (InoxSet Context!15242))

(assert (=> b!7259816 (= e!4353273 e!4353271)))

(assert (=> b!7259816 (= c!1350503 ((_ is Union!18681) (ite c!1350301 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))))))

(declare-fun c!1350502 () Bool)

(declare-fun d!2258481 () Bool)

(assert (=> d!2258481 (= c!1350502 (and ((_ is ElementMatch!18681) (ite c!1350301 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))) (= (c!1350206 (ite c!1350301 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))) (h!76947 s1!1971))))))

(assert (=> d!2258481 (= (derivationStepZipperDown!2675 (ite c!1350301 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232)))) (ite c!1350301 lt!2589777 (Context!15243 call!661636)) (h!76947 s1!1971)) e!4353273)))

(declare-fun b!7259817 () Bool)

(declare-fun e!4353268 () Bool)

(assert (=> b!7259817 (= c!1350506 e!4353268)))

(declare-fun res!2943669 () Bool)

(assert (=> b!7259817 (=> (not res!2943669) (not e!4353268))))

(assert (=> b!7259817 (= res!2943669 ((_ is Concat!27526) (ite c!1350301 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))))))

(declare-fun e!4353272 () (InoxSet Context!15242))

(assert (=> b!7259817 (= e!4353271 e!4353272)))

(declare-fun b!7259818 () Bool)

(declare-fun call!661732 () (InoxSet Context!15242))

(assert (=> b!7259818 (= e!4353271 ((_ map or) call!661730 call!661732))))

(declare-fun bm!661725 () Bool)

(assert (=> bm!661725 (= call!661733 call!661730)))

(declare-fun b!7259819 () Bool)

(assert (=> b!7259819 (= e!4353268 (nullable!7941 (regOne!37874 (ite c!1350301 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232)))))))))

(declare-fun b!7259820 () Bool)

(declare-fun c!1350505 () Bool)

(assert (=> b!7259820 (= c!1350505 ((_ is Star!18681) (ite c!1350301 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))))))

(declare-fun e!4353269 () (InoxSet Context!15242))

(declare-fun e!4353270 () (InoxSet Context!15242))

(assert (=> b!7259820 (= e!4353269 e!4353270)))

(declare-fun bm!661726 () Bool)

(declare-fun call!661728 () List!70624)

(assert (=> bm!661726 (= call!661731 call!661728)))

(declare-fun bm!661727 () Bool)

(assert (=> bm!661727 (= call!661728 ($colon$colon!2938 (exprs!8121 (ite c!1350301 lt!2589777 (Context!15243 call!661636))) (ite (or c!1350506 c!1350504) (regTwo!37874 (ite c!1350301 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))) (ite c!1350301 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232)))))))))

(declare-fun b!7259821 () Bool)

(assert (=> b!7259821 (= e!4353270 call!661729)))

(declare-fun b!7259822 () Bool)

(assert (=> b!7259822 (= e!4353269 call!661729)))

(declare-fun b!7259823 () Bool)

(assert (=> b!7259823 (= e!4353272 e!4353269)))

(assert (=> b!7259823 (= c!1350504 ((_ is Concat!27526) (ite c!1350301 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))))))

(declare-fun b!7259824 () Bool)

(assert (=> b!7259824 (= e!4353272 ((_ map or) call!661732 call!661733))))

(declare-fun b!7259825 () Bool)

(assert (=> b!7259825 (= e!4353270 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259826 () Bool)

(assert (=> b!7259826 (= e!4353273 (store ((as const (Array Context!15242 Bool)) false) (ite c!1350301 lt!2589777 (Context!15243 call!661636)) true))))

(declare-fun bm!661728 () Bool)

(assert (=> bm!661728 (= call!661732 (derivationStepZipperDown!2675 (ite c!1350503 (regTwo!37875 (ite c!1350301 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))) (regOne!37874 (ite c!1350301 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232)))))) (ite c!1350503 (ite c!1350301 lt!2589777 (Context!15243 call!661636)) (Context!15243 call!661728)) (h!76947 s1!1971)))))

(assert (= (and d!2258481 c!1350502) b!7259826))

(assert (= (and d!2258481 (not c!1350502)) b!7259816))

(assert (= (and b!7259816 c!1350503) b!7259818))

(assert (= (and b!7259816 (not c!1350503)) b!7259817))

(assert (= (and b!7259817 res!2943669) b!7259819))

(assert (= (and b!7259817 c!1350506) b!7259824))

(assert (= (and b!7259817 (not c!1350506)) b!7259823))

(assert (= (and b!7259823 c!1350504) b!7259822))

(assert (= (and b!7259823 (not c!1350504)) b!7259820))

(assert (= (and b!7259820 c!1350505) b!7259821))

(assert (= (and b!7259820 (not c!1350505)) b!7259825))

(assert (= (or b!7259822 b!7259821) bm!661726))

(assert (= (or b!7259822 b!7259821) bm!661724))

(assert (= (or b!7259824 bm!661726) bm!661727))

(assert (= (or b!7259824 bm!661724) bm!661725))

(assert (= (or b!7259818 b!7259824) bm!661728))

(assert (= (or b!7259818 bm!661725) bm!661723))

(declare-fun m!7943890 () Bool)

(assert (=> bm!661723 m!7943890))

(declare-fun m!7943892 () Bool)

(assert (=> b!7259826 m!7943892))

(declare-fun m!7943894 () Bool)

(assert (=> b!7259819 m!7943894))

(declare-fun m!7943896 () Bool)

(assert (=> bm!661727 m!7943896))

(declare-fun m!7943898 () Bool)

(assert (=> bm!661728 m!7943898))

(assert (=> bm!661636 d!2258481))

(declare-fun d!2258483 () Bool)

(assert (=> d!2258483 (= (isEmpty!40598 s2!1849) ((_ is Nil!70499) s2!1849))))

(assert (=> d!2258055 d!2258483))

(declare-fun bs!1908828 () Bool)

(declare-fun d!2258485 () Bool)

(assert (= bs!1908828 (and d!2258485 d!2258479)))

(declare-fun lambda!446204 () Int)

(assert (=> bs!1908828 (= lambda!446204 lambda!446203)))

(declare-fun bs!1908829 () Bool)

(assert (= bs!1908829 (and d!2258485 d!2258073)))

(assert (=> bs!1908829 (not (= lambda!446204 lambda!446140))))

(declare-fun bs!1908830 () Bool)

(assert (= bs!1908830 (and d!2258485 d!2258449)))

(assert (=> bs!1908830 (= lambda!446204 lambda!446199)))

(declare-fun bs!1908831 () Bool)

(assert (= bs!1908831 (and d!2258485 d!2258027)))

(assert (=> bs!1908831 (not (= lambda!446204 lambda!446134))))

(declare-fun bs!1908832 () Bool)

(assert (= bs!1908832 (and d!2258485 b!7259019)))

(assert (=> bs!1908832 (not (= lambda!446204 lambda!446101))))

(declare-fun bs!1908833 () Bool)

(assert (= bs!1908833 (and d!2258485 d!2258411)))

(assert (=> bs!1908833 (= lambda!446204 lambda!446197)))

(declare-fun bs!1908834 () Bool)

(assert (= bs!1908834 (and d!2258485 d!2258417)))

(assert (=> bs!1908834 (not (= lambda!446204 lambda!446198))))

(declare-fun bs!1908835 () Bool)

(assert (= bs!1908835 (and d!2258485 b!7259025)))

(assert (=> bs!1908835 (not (= lambda!446204 lambda!446099))))

(declare-fun bs!1908836 () Bool)

(assert (= bs!1908836 (and d!2258485 d!2258463)))

(assert (=> bs!1908836 (= lambda!446204 lambda!446201)))

(declare-fun bs!1908837 () Bool)

(assert (= bs!1908837 (and d!2258485 d!2258077)))

(assert (=> bs!1908837 (not (= lambda!446204 lambda!446146))))

(assert (=> d!2258485 (= (nullableZipper!2936 lt!2589794) (exists!4440 lt!2589794 lambda!446204))))

(declare-fun bs!1908838 () Bool)

(assert (= bs!1908838 d!2258485))

(declare-fun m!7943900 () Bool)

(assert (=> bs!1908838 m!7943900))

(assert (=> b!7259307 d!2258485))

(declare-fun d!2258487 () Bool)

(declare-fun res!2943670 () Bool)

(declare-fun e!4353274 () Bool)

(assert (=> d!2258487 (=> res!2943670 e!4353274)))

(assert (=> d!2258487 (= res!2943670 ((_ is Nil!70500) (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328))))))

(assert (=> d!2258487 (= (forall!17537 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328)) lambda!446098) e!4353274)))

(declare-fun b!7259827 () Bool)

(declare-fun e!4353275 () Bool)

(assert (=> b!7259827 (= e!4353274 e!4353275)))

(declare-fun res!2943671 () Bool)

(assert (=> b!7259827 (=> (not res!2943671) (not e!4353275))))

(assert (=> b!7259827 (= res!2943671 (dynLambda!28816 lambda!446098 (h!76948 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328)))))))

(declare-fun b!7259828 () Bool)

(assert (=> b!7259828 (= e!4353275 (forall!17537 (t!384688 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328))) lambda!446098))))

(assert (= (and d!2258487 (not res!2943670)) b!7259827))

(assert (= (and b!7259827 res!2943671) b!7259828))

(declare-fun b_lambda!279225 () Bool)

(assert (=> (not b_lambda!279225) (not b!7259827)))

(declare-fun m!7943902 () Bool)

(assert (=> b!7259827 m!7943902))

(declare-fun m!7943904 () Bool)

(assert (=> b!7259828 m!7943904))

(assert (=> d!2257995 d!2258487))

(assert (=> d!2257995 d!2258089))

(declare-fun d!2258489 () Bool)

(assert (=> d!2258489 (forall!17537 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328)) lambda!446098)))

(assert (=> d!2258489 true))

(declare-fun _$78!801 () Unit!163992)

(assert (=> d!2258489 (= (choose!56201 (exprs!8121 ct1!232) (exprs!8121 ct2!328) lambda!446098) _$78!801)))

(declare-fun bs!1908839 () Bool)

(assert (= bs!1908839 d!2258489))

(assert (=> bs!1908839 m!7942516))

(assert (=> bs!1908839 m!7942516))

(assert (=> bs!1908839 m!7942946))

(assert (=> d!2257995 d!2258489))

(declare-fun d!2258491 () Bool)

(declare-fun res!2943672 () Bool)

(declare-fun e!4353276 () Bool)

(assert (=> d!2258491 (=> res!2943672 e!4353276)))

(assert (=> d!2258491 (= res!2943672 ((_ is Nil!70500) (exprs!8121 ct1!232)))))

(assert (=> d!2258491 (= (forall!17537 (exprs!8121 ct1!232) lambda!446098) e!4353276)))

(declare-fun b!7259829 () Bool)

(declare-fun e!4353277 () Bool)

(assert (=> b!7259829 (= e!4353276 e!4353277)))

(declare-fun res!2943673 () Bool)

(assert (=> b!7259829 (=> (not res!2943673) (not e!4353277))))

(assert (=> b!7259829 (= res!2943673 (dynLambda!28816 lambda!446098 (h!76948 (exprs!8121 ct1!232))))))

(declare-fun b!7259830 () Bool)

(assert (=> b!7259830 (= e!4353277 (forall!17537 (t!384688 (exprs!8121 ct1!232)) lambda!446098))))

(assert (= (and d!2258491 (not res!2943672)) b!7259829))

(assert (= (and b!7259829 res!2943673) b!7259830))

(declare-fun b_lambda!279227 () Bool)

(assert (=> (not b_lambda!279227) (not b!7259829)))

(declare-fun m!7943906 () Bool)

(assert (=> b!7259829 m!7943906))

(declare-fun m!7943908 () Bool)

(assert (=> b!7259830 m!7943908))

(assert (=> d!2257995 d!2258491))

(declare-fun d!2258493 () Bool)

(assert (=> d!2258493 (= ($colon$colon!2938 (exprs!8121 lt!2589780) (ite (or c!1350336 c!1350334) (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (h!76948 (exprs!8121 ct1!232)))) (Cons!70500 (ite (or c!1350336 c!1350334) (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (h!76948 (exprs!8121 ct1!232))) (exprs!8121 lt!2589780)))))

(assert (=> bm!661643 d!2258493))

(declare-fun bs!1908840 () Bool)

(declare-fun d!2258495 () Bool)

(assert (= bs!1908840 (and d!2258495 d!2258479)))

(declare-fun lambda!446205 () Int)

(assert (=> bs!1908840 (= lambda!446205 lambda!446203)))

(declare-fun bs!1908841 () Bool)

(assert (= bs!1908841 (and d!2258495 d!2258073)))

(assert (=> bs!1908841 (not (= lambda!446205 lambda!446140))))

(declare-fun bs!1908842 () Bool)

(assert (= bs!1908842 (and d!2258495 d!2258449)))

(assert (=> bs!1908842 (= lambda!446205 lambda!446199)))

(declare-fun bs!1908843 () Bool)

(assert (= bs!1908843 (and d!2258495 d!2258027)))

(assert (=> bs!1908843 (not (= lambda!446205 lambda!446134))))

(declare-fun bs!1908844 () Bool)

(assert (= bs!1908844 (and d!2258495 d!2258411)))

(assert (=> bs!1908844 (= lambda!446205 lambda!446197)))

(declare-fun bs!1908845 () Bool)

(assert (= bs!1908845 (and d!2258495 d!2258417)))

(assert (=> bs!1908845 (not (= lambda!446205 lambda!446198))))

(declare-fun bs!1908846 () Bool)

(assert (= bs!1908846 (and d!2258495 b!7259025)))

(assert (=> bs!1908846 (not (= lambda!446205 lambda!446099))))

(declare-fun bs!1908847 () Bool)

(assert (= bs!1908847 (and d!2258495 b!7259019)))

(assert (=> bs!1908847 (not (= lambda!446205 lambda!446101))))

(declare-fun bs!1908848 () Bool)

(assert (= bs!1908848 (and d!2258495 d!2258485)))

(assert (=> bs!1908848 (= lambda!446205 lambda!446204)))

(declare-fun bs!1908849 () Bool)

(assert (= bs!1908849 (and d!2258495 d!2258463)))

(assert (=> bs!1908849 (= lambda!446205 lambda!446201)))

(declare-fun bs!1908850 () Bool)

(assert (= bs!1908850 (and d!2258495 d!2258077)))

(assert (=> bs!1908850 (not (= lambda!446205 lambda!446146))))

(assert (=> d!2258495 (= (nullableZipper!2936 lt!2589817) (exists!4440 lt!2589817 lambda!446205))))

(declare-fun bs!1908851 () Bool)

(assert (= bs!1908851 d!2258495))

(declare-fun m!7943910 () Bool)

(assert (=> bs!1908851 m!7943910))

(assert (=> b!7259295 d!2258495))

(declare-fun d!2258497 () Bool)

(declare-fun c!1350507 () Bool)

(assert (=> d!2258497 (= c!1350507 (isEmpty!40598 (tail!14387 s1!1971)))))

(declare-fun e!4353278 () Bool)

(assert (=> d!2258497 (= (matchZipper!3591 (derivationStepZipper!3459 lt!2589785 (head!14933 s1!1971)) (tail!14387 s1!1971)) e!4353278)))

(declare-fun b!7259831 () Bool)

(assert (=> b!7259831 (= e!4353278 (nullableZipper!2936 (derivationStepZipper!3459 lt!2589785 (head!14933 s1!1971))))))

(declare-fun b!7259832 () Bool)

(assert (=> b!7259832 (= e!4353278 (matchZipper!3591 (derivationStepZipper!3459 (derivationStepZipper!3459 lt!2589785 (head!14933 s1!1971)) (head!14933 (tail!14387 s1!1971))) (tail!14387 (tail!14387 s1!1971))))))

(assert (= (and d!2258497 c!1350507) b!7259831))

(assert (= (and d!2258497 (not c!1350507)) b!7259832))

(assert (=> d!2258497 m!7943208))

(declare-fun m!7943912 () Bool)

(assert (=> d!2258497 m!7943912))

(assert (=> b!7259831 m!7943206))

(declare-fun m!7943914 () Bool)

(assert (=> b!7259831 m!7943914))

(assert (=> b!7259832 m!7943208))

(declare-fun m!7943916 () Bool)

(assert (=> b!7259832 m!7943916))

(assert (=> b!7259832 m!7943206))

(assert (=> b!7259832 m!7943916))

(declare-fun m!7943918 () Bool)

(assert (=> b!7259832 m!7943918))

(assert (=> b!7259832 m!7943208))

(declare-fun m!7943920 () Bool)

(assert (=> b!7259832 m!7943920))

(assert (=> b!7259832 m!7943918))

(assert (=> b!7259832 m!7943920))

(declare-fun m!7943922 () Bool)

(assert (=> b!7259832 m!7943922))

(assert (=> b!7259342 d!2258497))

(declare-fun bs!1908852 () Bool)

(declare-fun d!2258499 () Bool)

(assert (= bs!1908852 (and d!2258499 d!2258455)))

(declare-fun lambda!446206 () Int)

(assert (=> bs!1908852 (= (= (head!14933 s1!1971) (head!14933 lt!2589806)) (= lambda!446206 lambda!446200))))

(declare-fun bs!1908853 () Bool)

(assert (= bs!1908853 (and d!2258499 b!7259019)))

(assert (=> bs!1908853 (= (= (head!14933 s1!1971) (h!76947 s1!1971)) (= lambda!446206 lambda!446100))))

(declare-fun bs!1908854 () Bool)

(assert (= bs!1908854 (and d!2258499 d!2258471)))

(assert (=> bs!1908854 (= (= (head!14933 s1!1971) (head!14933 s2!1849)) (= lambda!446206 lambda!446202))))

(declare-fun bs!1908855 () Bool)

(assert (= bs!1908855 (and d!2258499 d!2258081)))

(assert (=> bs!1908855 (= (= (head!14933 s1!1971) (h!76947 s1!1971)) (= lambda!446206 lambda!446147))))

(declare-fun bs!1908856 () Bool)

(assert (= bs!1908856 (and d!2258499 d!2258075)))

(assert (=> bs!1908856 (= (= (head!14933 s1!1971) (h!76947 s1!1971)) (= lambda!446206 lambda!446143))))

(assert (=> d!2258499 true))

(assert (=> d!2258499 (= (derivationStepZipper!3459 lt!2589785 (head!14933 s1!1971)) (flatMap!2846 lt!2589785 lambda!446206))))

(declare-fun bs!1908857 () Bool)

(assert (= bs!1908857 d!2258499))

(declare-fun m!7943924 () Bool)

(assert (=> bs!1908857 m!7943924))

(assert (=> b!7259342 d!2258499))

(declare-fun d!2258501 () Bool)

(assert (=> d!2258501 (= (head!14933 s1!1971) (h!76947 s1!1971))))

(assert (=> b!7259342 d!2258501))

(declare-fun d!2258503 () Bool)

(assert (=> d!2258503 (= (tail!14387 s1!1971) (t!384687 s1!1971))))

(assert (=> b!7259342 d!2258503))

(declare-fun bs!1908858 () Bool)

(declare-fun d!2258505 () Bool)

(assert (= bs!1908858 (and d!2258505 d!2258479)))

(declare-fun lambda!446207 () Int)

(assert (=> bs!1908858 (= lambda!446207 lambda!446203)))

(declare-fun bs!1908859 () Bool)

(assert (= bs!1908859 (and d!2258505 d!2258073)))

(assert (=> bs!1908859 (not (= lambda!446207 lambda!446140))))

(declare-fun bs!1908860 () Bool)

(assert (= bs!1908860 (and d!2258505 d!2258449)))

(assert (=> bs!1908860 (= lambda!446207 lambda!446199)))

(declare-fun bs!1908861 () Bool)

(assert (= bs!1908861 (and d!2258505 d!2258027)))

(assert (=> bs!1908861 (not (= lambda!446207 lambda!446134))))

(declare-fun bs!1908862 () Bool)

(assert (= bs!1908862 (and d!2258505 d!2258495)))

(assert (=> bs!1908862 (= lambda!446207 lambda!446205)))

(declare-fun bs!1908863 () Bool)

(assert (= bs!1908863 (and d!2258505 d!2258411)))

(assert (=> bs!1908863 (= lambda!446207 lambda!446197)))

(declare-fun bs!1908864 () Bool)

(assert (= bs!1908864 (and d!2258505 d!2258417)))

(assert (=> bs!1908864 (not (= lambda!446207 lambda!446198))))

(declare-fun bs!1908865 () Bool)

(assert (= bs!1908865 (and d!2258505 b!7259025)))

(assert (=> bs!1908865 (not (= lambda!446207 lambda!446099))))

(declare-fun bs!1908866 () Bool)

(assert (= bs!1908866 (and d!2258505 b!7259019)))

(assert (=> bs!1908866 (not (= lambda!446207 lambda!446101))))

(declare-fun bs!1908867 () Bool)

(assert (= bs!1908867 (and d!2258505 d!2258485)))

(assert (=> bs!1908867 (= lambda!446207 lambda!446204)))

(declare-fun bs!1908868 () Bool)

(assert (= bs!1908868 (and d!2258505 d!2258463)))

(assert (=> bs!1908868 (= lambda!446207 lambda!446201)))

(declare-fun bs!1908869 () Bool)

(assert (= bs!1908869 (and d!2258505 d!2258077)))

(assert (=> bs!1908869 (not (= lambda!446207 lambda!446146))))

(assert (=> d!2258505 (= (nullableZipper!2936 lt!2589813) (exists!4440 lt!2589813 lambda!446207))))

(declare-fun bs!1908870 () Bool)

(assert (= bs!1908870 d!2258505))

(declare-fun m!7943926 () Bool)

(assert (=> bs!1908870 m!7943926))

(assert (=> b!7259339 d!2258505))

(declare-fun d!2258507 () Bool)

(declare-fun c!1350508 () Bool)

(assert (=> d!2258507 (= c!1350508 (isEmpty!40598 (tail!14387 lt!2589806)))))

(declare-fun e!4353279 () Bool)

(assert (=> d!2258507 (= (matchZipper!3591 (derivationStepZipper!3459 lt!2589798 (head!14933 lt!2589806)) (tail!14387 lt!2589806)) e!4353279)))

(declare-fun b!7259833 () Bool)

(assert (=> b!7259833 (= e!4353279 (nullableZipper!2936 (derivationStepZipper!3459 lt!2589798 (head!14933 lt!2589806))))))

(declare-fun b!7259834 () Bool)

(assert (=> b!7259834 (= e!4353279 (matchZipper!3591 (derivationStepZipper!3459 (derivationStepZipper!3459 lt!2589798 (head!14933 lt!2589806)) (head!14933 (tail!14387 lt!2589806))) (tail!14387 (tail!14387 lt!2589806))))))

(assert (= (and d!2258507 c!1350508) b!7259833))

(assert (= (and d!2258507 (not c!1350508)) b!7259834))

(assert (=> d!2258507 m!7942996))

(assert (=> d!2258507 m!7943844))

(assert (=> b!7259833 m!7943106))

(declare-fun m!7943928 () Bool)

(assert (=> b!7259833 m!7943928))

(assert (=> b!7259834 m!7942996))

(assert (=> b!7259834 m!7943848))

(assert (=> b!7259834 m!7943106))

(assert (=> b!7259834 m!7943848))

(declare-fun m!7943930 () Bool)

(assert (=> b!7259834 m!7943930))

(assert (=> b!7259834 m!7942996))

(assert (=> b!7259834 m!7943852))

(assert (=> b!7259834 m!7943930))

(assert (=> b!7259834 m!7943852))

(declare-fun m!7943932 () Bool)

(assert (=> b!7259834 m!7943932))

(assert (=> b!7259310 d!2258507))

(declare-fun bs!1908871 () Bool)

(declare-fun d!2258509 () Bool)

(assert (= bs!1908871 (and d!2258509 d!2258455)))

(declare-fun lambda!446208 () Int)

(assert (=> bs!1908871 (= lambda!446208 lambda!446200)))

(declare-fun bs!1908872 () Bool)

(assert (= bs!1908872 (and d!2258509 d!2258499)))

(assert (=> bs!1908872 (= (= (head!14933 lt!2589806) (head!14933 s1!1971)) (= lambda!446208 lambda!446206))))

(declare-fun bs!1908873 () Bool)

(assert (= bs!1908873 (and d!2258509 b!7259019)))

(assert (=> bs!1908873 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446208 lambda!446100))))

(declare-fun bs!1908874 () Bool)

(assert (= bs!1908874 (and d!2258509 d!2258471)))

(assert (=> bs!1908874 (= (= (head!14933 lt!2589806) (head!14933 s2!1849)) (= lambda!446208 lambda!446202))))

(declare-fun bs!1908875 () Bool)

(assert (= bs!1908875 (and d!2258509 d!2258081)))

(assert (=> bs!1908875 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446208 lambda!446147))))

(declare-fun bs!1908876 () Bool)

(assert (= bs!1908876 (and d!2258509 d!2258075)))

(assert (=> bs!1908876 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446208 lambda!446143))))

(assert (=> d!2258509 true))

(assert (=> d!2258509 (= (derivationStepZipper!3459 lt!2589798 (head!14933 lt!2589806)) (flatMap!2846 lt!2589798 lambda!446208))))

(declare-fun bs!1908877 () Bool)

(assert (= bs!1908877 d!2258509))

(declare-fun m!7943934 () Bool)

(assert (=> bs!1908877 m!7943934))

(assert (=> b!7259310 d!2258509))

(assert (=> b!7259310 d!2258457))

(assert (=> b!7259310 d!2258459))

(assert (=> d!2258053 d!2258465))

(declare-fun bs!1908878 () Bool)

(declare-fun d!2258511 () Bool)

(assert (= bs!1908878 (and d!2258511 d!2258479)))

(declare-fun lambda!446209 () Int)

(assert (=> bs!1908878 (= lambda!446209 lambda!446203)))

(declare-fun bs!1908879 () Bool)

(assert (= bs!1908879 (and d!2258511 d!2258073)))

(assert (=> bs!1908879 (not (= lambda!446209 lambda!446140))))

(declare-fun bs!1908880 () Bool)

(assert (= bs!1908880 (and d!2258511 d!2258449)))

(assert (=> bs!1908880 (= lambda!446209 lambda!446199)))

(declare-fun bs!1908881 () Bool)

(assert (= bs!1908881 (and d!2258511 d!2258027)))

(assert (=> bs!1908881 (not (= lambda!446209 lambda!446134))))

(declare-fun bs!1908882 () Bool)

(assert (= bs!1908882 (and d!2258511 d!2258495)))

(assert (=> bs!1908882 (= lambda!446209 lambda!446205)))

(declare-fun bs!1908883 () Bool)

(assert (= bs!1908883 (and d!2258511 d!2258505)))

(assert (=> bs!1908883 (= lambda!446209 lambda!446207)))

(declare-fun bs!1908884 () Bool)

(assert (= bs!1908884 (and d!2258511 d!2258411)))

(assert (=> bs!1908884 (= lambda!446209 lambda!446197)))

(declare-fun bs!1908885 () Bool)

(assert (= bs!1908885 (and d!2258511 d!2258417)))

(assert (=> bs!1908885 (not (= lambda!446209 lambda!446198))))

(declare-fun bs!1908886 () Bool)

(assert (= bs!1908886 (and d!2258511 b!7259025)))

(assert (=> bs!1908886 (not (= lambda!446209 lambda!446099))))

(declare-fun bs!1908887 () Bool)

(assert (= bs!1908887 (and d!2258511 b!7259019)))

(assert (=> bs!1908887 (not (= lambda!446209 lambda!446101))))

(declare-fun bs!1908888 () Bool)

(assert (= bs!1908888 (and d!2258511 d!2258485)))

(assert (=> bs!1908888 (= lambda!446209 lambda!446204)))

(declare-fun bs!1908889 () Bool)

(assert (= bs!1908889 (and d!2258511 d!2258463)))

(assert (=> bs!1908889 (= lambda!446209 lambda!446201)))

(declare-fun bs!1908890 () Bool)

(assert (= bs!1908890 (and d!2258511 d!2258077)))

(assert (=> bs!1908890 (not (= lambda!446209 lambda!446146))))

(assert (=> d!2258511 (= (nullableZipper!2936 lt!2589788) (exists!4440 lt!2589788 lambda!446209))))

(declare-fun bs!1908891 () Bool)

(assert (= bs!1908891 d!2258511))

(declare-fun m!7943936 () Bool)

(assert (=> bs!1908891 m!7943936))

(assert (=> b!7259305 d!2258511))

(assert (=> bs!1908343 d!2258009))

(declare-fun d!2258513 () Bool)

(assert (=> d!2258513 (= (nullable!7941 (h!76948 (exprs!8121 lt!2589787))) (nullableFct!3123 (h!76948 (exprs!8121 lt!2589787))))))

(declare-fun bs!1908892 () Bool)

(assert (= bs!1908892 d!2258513))

(declare-fun m!7943938 () Bool)

(assert (=> bs!1908892 m!7943938))

(assert (=> b!7259215 d!2258513))

(declare-fun d!2258515 () Bool)

(assert (=> d!2258515 true))

(declare-fun setRes!53610 () Bool)

(assert (=> d!2258515 setRes!53610))

(declare-fun condSetEmpty!53610 () Bool)

(declare-fun res!2943676 () (InoxSet Context!15242))

(assert (=> d!2258515 (= condSetEmpty!53610 (= res!2943676 ((as const (Array Context!15242 Bool)) false)))))

(assert (=> d!2258515 (= (choose!56204 lt!2589797 lambda!446100) res!2943676)))

(declare-fun setIsEmpty!53610 () Bool)

(assert (=> setIsEmpty!53610 setRes!53610))

(declare-fun setNonEmpty!53610 () Bool)

(declare-fun setElem!53610 () Context!15242)

(declare-fun e!4353282 () Bool)

(declare-fun tp!2038649 () Bool)

(assert (=> setNonEmpty!53610 (= setRes!53610 (and tp!2038649 (inv!89712 setElem!53610) e!4353282))))

(declare-fun setRest!53610 () (InoxSet Context!15242))

(assert (=> setNonEmpty!53610 (= res!2943676 ((_ map or) (store ((as const (Array Context!15242 Bool)) false) setElem!53610 true) setRest!53610))))

(declare-fun b!7259837 () Bool)

(declare-fun tp!2038650 () Bool)

(assert (=> b!7259837 (= e!4353282 tp!2038650)))

(assert (= (and d!2258515 condSetEmpty!53610) setIsEmpty!53610))

(assert (= (and d!2258515 (not condSetEmpty!53610)) setNonEmpty!53610))

(assert (= setNonEmpty!53610 b!7259837))

(declare-fun m!7943940 () Bool)

(assert (=> setNonEmpty!53610 m!7943940))

(assert (=> d!2258011 d!2258515))

(declare-fun bm!661729 () Bool)

(declare-fun c!1350510 () Bool)

(declare-fun call!661736 () (InoxSet Context!15242))

(declare-fun call!661737 () List!70624)

(declare-fun c!1350513 () Bool)

(declare-fun c!1350511 () Bool)

(assert (=> bm!661729 (= call!661736 (derivationStepZipperDown!2675 (ite c!1350510 (regOne!37875 (h!76948 (exprs!8121 lt!2589787))) (ite c!1350513 (regTwo!37874 (h!76948 (exprs!8121 lt!2589787))) (ite c!1350511 (regOne!37874 (h!76948 (exprs!8121 lt!2589787))) (reg!19010 (h!76948 (exprs!8121 lt!2589787)))))) (ite (or c!1350510 c!1350513) (Context!15243 (t!384688 (exprs!8121 lt!2589787))) (Context!15243 call!661737)) (h!76947 s1!1971)))))

(declare-fun bm!661730 () Bool)

(declare-fun call!661735 () (InoxSet Context!15242))

(declare-fun call!661739 () (InoxSet Context!15242))

(assert (=> bm!661730 (= call!661735 call!661739)))

(declare-fun b!7259838 () Bool)

(declare-fun e!4353288 () (InoxSet Context!15242))

(declare-fun e!4353286 () (InoxSet Context!15242))

(assert (=> b!7259838 (= e!4353288 e!4353286)))

(assert (=> b!7259838 (= c!1350510 ((_ is Union!18681) (h!76948 (exprs!8121 lt!2589787))))))

(declare-fun d!2258517 () Bool)

(declare-fun c!1350509 () Bool)

(assert (=> d!2258517 (= c!1350509 (and ((_ is ElementMatch!18681) (h!76948 (exprs!8121 lt!2589787))) (= (c!1350206 (h!76948 (exprs!8121 lt!2589787))) (h!76947 s1!1971))))))

(assert (=> d!2258517 (= (derivationStepZipperDown!2675 (h!76948 (exprs!8121 lt!2589787)) (Context!15243 (t!384688 (exprs!8121 lt!2589787))) (h!76947 s1!1971)) e!4353288)))

(declare-fun b!7259839 () Bool)

(declare-fun e!4353283 () Bool)

(assert (=> b!7259839 (= c!1350513 e!4353283)))

(declare-fun res!2943677 () Bool)

(assert (=> b!7259839 (=> (not res!2943677) (not e!4353283))))

(assert (=> b!7259839 (= res!2943677 ((_ is Concat!27526) (h!76948 (exprs!8121 lt!2589787))))))

(declare-fun e!4353287 () (InoxSet Context!15242))

(assert (=> b!7259839 (= e!4353286 e!4353287)))

(declare-fun b!7259840 () Bool)

(declare-fun call!661738 () (InoxSet Context!15242))

(assert (=> b!7259840 (= e!4353286 ((_ map or) call!661736 call!661738))))

(declare-fun bm!661731 () Bool)

(assert (=> bm!661731 (= call!661739 call!661736)))

(declare-fun b!7259841 () Bool)

(assert (=> b!7259841 (= e!4353283 (nullable!7941 (regOne!37874 (h!76948 (exprs!8121 lt!2589787)))))))

(declare-fun b!7259842 () Bool)

(declare-fun c!1350512 () Bool)

(assert (=> b!7259842 (= c!1350512 ((_ is Star!18681) (h!76948 (exprs!8121 lt!2589787))))))

(declare-fun e!4353284 () (InoxSet Context!15242))

(declare-fun e!4353285 () (InoxSet Context!15242))

(assert (=> b!7259842 (= e!4353284 e!4353285)))

(declare-fun bm!661732 () Bool)

(declare-fun call!661734 () List!70624)

(assert (=> bm!661732 (= call!661737 call!661734)))

(declare-fun bm!661733 () Bool)

(assert (=> bm!661733 (= call!661734 ($colon$colon!2938 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589787)))) (ite (or c!1350513 c!1350511) (regTwo!37874 (h!76948 (exprs!8121 lt!2589787))) (h!76948 (exprs!8121 lt!2589787)))))))

(declare-fun b!7259843 () Bool)

(assert (=> b!7259843 (= e!4353285 call!661735)))

(declare-fun b!7259844 () Bool)

(assert (=> b!7259844 (= e!4353284 call!661735)))

(declare-fun b!7259845 () Bool)

(assert (=> b!7259845 (= e!4353287 e!4353284)))

(assert (=> b!7259845 (= c!1350511 ((_ is Concat!27526) (h!76948 (exprs!8121 lt!2589787))))))

(declare-fun b!7259846 () Bool)

(assert (=> b!7259846 (= e!4353287 ((_ map or) call!661738 call!661739))))

(declare-fun b!7259847 () Bool)

(assert (=> b!7259847 (= e!4353285 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259848 () Bool)

(assert (=> b!7259848 (= e!4353288 (store ((as const (Array Context!15242 Bool)) false) (Context!15243 (t!384688 (exprs!8121 lt!2589787))) true))))

(declare-fun bm!661734 () Bool)

(assert (=> bm!661734 (= call!661738 (derivationStepZipperDown!2675 (ite c!1350510 (regTwo!37875 (h!76948 (exprs!8121 lt!2589787))) (regOne!37874 (h!76948 (exprs!8121 lt!2589787)))) (ite c!1350510 (Context!15243 (t!384688 (exprs!8121 lt!2589787))) (Context!15243 call!661734)) (h!76947 s1!1971)))))

(assert (= (and d!2258517 c!1350509) b!7259848))

(assert (= (and d!2258517 (not c!1350509)) b!7259838))

(assert (= (and b!7259838 c!1350510) b!7259840))

(assert (= (and b!7259838 (not c!1350510)) b!7259839))

(assert (= (and b!7259839 res!2943677) b!7259841))

(assert (= (and b!7259839 c!1350513) b!7259846))

(assert (= (and b!7259839 (not c!1350513)) b!7259845))

(assert (= (and b!7259845 c!1350511) b!7259844))

(assert (= (and b!7259845 (not c!1350511)) b!7259842))

(assert (= (and b!7259842 c!1350512) b!7259843))

(assert (= (and b!7259842 (not c!1350512)) b!7259847))

(assert (= (or b!7259844 b!7259843) bm!661732))

(assert (= (or b!7259844 b!7259843) bm!661730))

(assert (= (or b!7259846 bm!661732) bm!661733))

(assert (= (or b!7259846 bm!661730) bm!661731))

(assert (= (or b!7259840 b!7259846) bm!661734))

(assert (= (or b!7259840 bm!661731) bm!661729))

(declare-fun m!7943942 () Bool)

(assert (=> bm!661729 m!7943942))

(declare-fun m!7943944 () Bool)

(assert (=> b!7259848 m!7943944))

(declare-fun m!7943946 () Bool)

(assert (=> b!7259841 m!7943946))

(declare-fun m!7943948 () Bool)

(assert (=> bm!661733 m!7943948))

(declare-fun m!7943950 () Bool)

(assert (=> bm!661734 m!7943950))

(assert (=> bm!661617 d!2258517))

(declare-fun d!2258519 () Bool)

(assert (=> d!2258519 (= (isEmpty!40598 s1!1971) ((_ is Nil!70499) s1!1971))))

(assert (=> d!2258083 d!2258519))

(declare-fun e!4353289 () (InoxSet Context!15242))

(declare-fun b!7259849 () Bool)

(declare-fun call!661740 () (InoxSet Context!15242))

(assert (=> b!7259849 (= e!4353289 ((_ map or) call!661740 (derivationStepZipperUp!2505 (Context!15243 (t!384688 (exprs!8121 (Context!15243 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328)))))) (h!76947 s1!1971))))))

(declare-fun bm!661735 () Bool)

(assert (=> bm!661735 (= call!661740 (derivationStepZipperDown!2675 (h!76948 (exprs!8121 (Context!15243 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328))))) (Context!15243 (t!384688 (exprs!8121 (Context!15243 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328)))))) (h!76947 s1!1971)))))

(declare-fun b!7259850 () Bool)

(declare-fun e!4353291 () (InoxSet Context!15242))

(assert (=> b!7259850 (= e!4353291 call!661740)))

(declare-fun d!2258521 () Bool)

(declare-fun c!1350515 () Bool)

(declare-fun e!4353290 () Bool)

(assert (=> d!2258521 (= c!1350515 e!4353290)))

(declare-fun res!2943678 () Bool)

(assert (=> d!2258521 (=> (not res!2943678) (not e!4353290))))

(assert (=> d!2258521 (= res!2943678 ((_ is Cons!70500) (exprs!8121 (Context!15243 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328))))))))

(assert (=> d!2258521 (= (derivationStepZipperUp!2505 (Context!15243 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328))) (h!76947 s1!1971)) e!4353289)))

(declare-fun b!7259851 () Bool)

(assert (=> b!7259851 (= e!4353289 e!4353291)))

(declare-fun c!1350514 () Bool)

(assert (=> b!7259851 (= c!1350514 ((_ is Cons!70500) (exprs!8121 (Context!15243 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328))))))))

(declare-fun b!7259852 () Bool)

(assert (=> b!7259852 (= e!4353291 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259853 () Bool)

(assert (=> b!7259853 (= e!4353290 (nullable!7941 (h!76948 (exprs!8121 (Context!15243 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328)))))))))

(assert (= (and d!2258521 res!2943678) b!7259853))

(assert (= (and d!2258521 c!1350515) b!7259849))

(assert (= (and d!2258521 (not c!1350515)) b!7259851))

(assert (= (and b!7259851 c!1350514) b!7259850))

(assert (= (and b!7259851 (not c!1350514)) b!7259852))

(assert (= (or b!7259849 b!7259850) bm!661735))

(declare-fun m!7943952 () Bool)

(assert (=> b!7259849 m!7943952))

(declare-fun m!7943954 () Bool)

(assert (=> bm!661735 m!7943954))

(declare-fun m!7943956 () Bool)

(assert (=> b!7259853 m!7943956))

(assert (=> d!2258023 d!2258521))

(assert (=> d!2258023 d!2258065))

(assert (=> d!2258023 d!2258089))

(declare-fun d!2258523 () Bool)

(assert (=> d!2258523 (forall!17537 (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328)) lambda!446131)))

(declare-fun lt!2589979 () Unit!163992)

(assert (=> d!2258523 (= lt!2589979 (choose!56201 (exprs!8121 lt!2589778) (exprs!8121 ct2!328) lambda!446131))))

(assert (=> d!2258523 (forall!17537 (exprs!8121 lt!2589778) lambda!446131)))

(assert (=> d!2258523 (= (lemmaConcatPreservesForall!1488 (exprs!8121 lt!2589778) (exprs!8121 ct2!328) lambda!446131) lt!2589979)))

(declare-fun bs!1908893 () Bool)

(assert (= bs!1908893 d!2258523))

(assert (=> bs!1908893 m!7942626))

(assert (=> bs!1908893 m!7942626))

(declare-fun m!7943958 () Bool)

(assert (=> bs!1908893 m!7943958))

(declare-fun m!7943960 () Bool)

(assert (=> bs!1908893 m!7943960))

(declare-fun m!7943962 () Bool)

(assert (=> bs!1908893 m!7943962))

(assert (=> d!2258023 d!2258523))

(assert (=> d!2258023 d!2258009))

(declare-fun d!2258525 () Bool)

(assert (=> d!2258525 (forall!17537 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328)) lambda!446131)))

(declare-fun lt!2589980 () Unit!163992)

(assert (=> d!2258525 (= lt!2589980 (choose!56201 (exprs!8121 ct1!232) (exprs!8121 ct2!328) lambda!446131))))

(assert (=> d!2258525 (forall!17537 (exprs!8121 ct1!232) lambda!446131)))

(assert (=> d!2258525 (= (lemmaConcatPreservesForall!1488 (exprs!8121 ct1!232) (exprs!8121 ct2!328) lambda!446131) lt!2589980)))

(declare-fun bs!1908894 () Bool)

(assert (= bs!1908894 d!2258525))

(assert (=> bs!1908894 m!7942516))

(assert (=> bs!1908894 m!7942516))

(declare-fun m!7943964 () Bool)

(assert (=> bs!1908894 m!7943964))

(declare-fun m!7943966 () Bool)

(assert (=> bs!1908894 m!7943966))

(declare-fun m!7943968 () Bool)

(assert (=> bs!1908894 m!7943968))

(assert (=> d!2258023 d!2258525))

(declare-fun bs!1908895 () Bool)

(declare-fun d!2258527 () Bool)

(assert (= bs!1908895 (and d!2258527 b!7259022)))

(declare-fun lambda!446214 () Int)

(assert (=> bs!1908895 (= lambda!446214 lambda!446098)))

(declare-fun bs!1908896 () Bool)

(assert (= bs!1908896 (and d!2258527 d!2258023)))

(assert (=> bs!1908896 (= lambda!446214 lambda!446131)))

(declare-fun bs!1908897 () Bool)

(assert (= bs!1908897 (and d!2258527 d!2258087)))

(assert (=> bs!1908897 (= lambda!446214 lambda!446151)))

(declare-fun bs!1908898 () Bool)

(assert (= bs!1908898 (and d!2258527 d!2258085)))

(assert (=> bs!1908898 (= lambda!446214 lambda!446150)))

(declare-fun bs!1908899 () Bool)

(assert (= bs!1908899 (and d!2258527 d!2258067)))

(assert (=> bs!1908899 (= lambda!446214 lambda!446137)))

(assert (=> d!2258527 (select (derivationStepZipperUp!2505 (Context!15243 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328))) (h!76947 s1!1971)) (Context!15243 (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328))))))

(declare-fun lt!2589986 () Unit!163992)

(assert (=> d!2258527 (= lt!2589986 (lemmaConcatPreservesForall!1488 (exprs!8121 ct1!232) (exprs!8121 ct2!328) lambda!446214))))

(declare-fun lt!2589985 () Unit!163992)

(assert (=> d!2258527 (= lt!2589985 (lemmaConcatPreservesForall!1488 (exprs!8121 lt!2589778) (exprs!8121 ct2!328) lambda!446214))))

(assert (=> d!2258527 true))

(declare-fun _$58!752 () Unit!163992)

(assert (=> d!2258527 (= (choose!56207 ct1!232 ct2!328 lt!2589778 (h!76947 s1!1971)) _$58!752)))

(declare-fun bs!1908900 () Bool)

(assert (= bs!1908900 d!2258527))

(assert (=> bs!1908900 m!7942516))

(assert (=> bs!1908900 m!7942626))

(assert (=> bs!1908900 m!7943024))

(declare-fun m!7943970 () Bool)

(assert (=> bs!1908900 m!7943970))

(assert (=> bs!1908900 m!7943028))

(declare-fun m!7943972 () Bool)

(assert (=> bs!1908900 m!7943972))

(assert (=> d!2258023 d!2258527))

(declare-fun call!661743 () (InoxSet Context!15242))

(declare-fun c!1350521 () Bool)

(declare-fun bm!661736 () Bool)

(declare-fun call!661744 () List!70624)

(declare-fun c!1350518 () Bool)

(declare-fun c!1350519 () Bool)

(assert (=> bm!661736 (= call!661743 (derivationStepZipperDown!2675 (ite c!1350518 (regOne!37875 (ite c!1350301 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350304 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350302 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))) (ite c!1350521 (regTwo!37874 (ite c!1350301 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350304 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350302 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))) (ite c!1350519 (regOne!37874 (ite c!1350301 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350304 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350302 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))) (reg!19010 (ite c!1350301 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350304 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350302 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232)))))))))) (ite (or c!1350518 c!1350521) (ite (or c!1350301 c!1350304) lt!2589777 (Context!15243 call!661639)) (Context!15243 call!661744)) (h!76947 s1!1971)))))

(declare-fun bm!661737 () Bool)

(declare-fun call!661742 () (InoxSet Context!15242))

(declare-fun call!661746 () (InoxSet Context!15242))

(assert (=> bm!661737 (= call!661742 call!661746)))

(declare-fun b!7259854 () Bool)

(declare-fun e!4353297 () (InoxSet Context!15242))

(declare-fun e!4353295 () (InoxSet Context!15242))

(assert (=> b!7259854 (= e!4353297 e!4353295)))

(assert (=> b!7259854 (= c!1350518 ((_ is Union!18681) (ite c!1350301 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350304 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350302 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))))))

(declare-fun d!2258529 () Bool)

(declare-fun c!1350517 () Bool)

(assert (=> d!2258529 (= c!1350517 (and ((_ is ElementMatch!18681) (ite c!1350301 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350304 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350302 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))) (= (c!1350206 (ite c!1350301 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350304 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350302 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))) (h!76947 s1!1971))))))

(assert (=> d!2258529 (= (derivationStepZipperDown!2675 (ite c!1350301 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350304 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350302 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232)))))) (ite (or c!1350301 c!1350304) lt!2589777 (Context!15243 call!661639)) (h!76947 s1!1971)) e!4353297)))

(declare-fun b!7259855 () Bool)

(declare-fun e!4353292 () Bool)

(assert (=> b!7259855 (= c!1350521 e!4353292)))

(declare-fun res!2943679 () Bool)

(assert (=> b!7259855 (=> (not res!2943679) (not e!4353292))))

(assert (=> b!7259855 (= res!2943679 ((_ is Concat!27526) (ite c!1350301 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350304 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350302 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))))))

(declare-fun e!4353296 () (InoxSet Context!15242))

(assert (=> b!7259855 (= e!4353295 e!4353296)))

(declare-fun b!7259856 () Bool)

(declare-fun call!661745 () (InoxSet Context!15242))

(assert (=> b!7259856 (= e!4353295 ((_ map or) call!661743 call!661745))))

(declare-fun bm!661738 () Bool)

(assert (=> bm!661738 (= call!661746 call!661743)))

(declare-fun b!7259857 () Bool)

(assert (=> b!7259857 (= e!4353292 (nullable!7941 (regOne!37874 (ite c!1350301 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350304 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350302 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232)))))))))))

(declare-fun c!1350520 () Bool)

(declare-fun b!7259858 () Bool)

(assert (=> b!7259858 (= c!1350520 ((_ is Star!18681) (ite c!1350301 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350304 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350302 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))))))

(declare-fun e!4353293 () (InoxSet Context!15242))

(declare-fun e!4353294 () (InoxSet Context!15242))

(assert (=> b!7259858 (= e!4353293 e!4353294)))

(declare-fun bm!661739 () Bool)

(declare-fun call!661741 () List!70624)

(assert (=> bm!661739 (= call!661744 call!661741)))

(declare-fun bm!661740 () Bool)

(assert (=> bm!661740 (= call!661741 ($colon$colon!2938 (exprs!8121 (ite (or c!1350301 c!1350304) lt!2589777 (Context!15243 call!661639))) (ite (or c!1350521 c!1350519) (regTwo!37874 (ite c!1350301 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350304 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350302 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))) (ite c!1350301 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350304 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350302 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232)))))))))))

(declare-fun b!7259859 () Bool)

(assert (=> b!7259859 (= e!4353294 call!661742)))

(declare-fun b!7259860 () Bool)

(assert (=> b!7259860 (= e!4353293 call!661742)))

(declare-fun b!7259861 () Bool)

(assert (=> b!7259861 (= e!4353296 e!4353293)))

(assert (=> b!7259861 (= c!1350519 ((_ is Concat!27526) (ite c!1350301 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350304 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350302 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))))))

(declare-fun b!7259862 () Bool)

(assert (=> b!7259862 (= e!4353296 ((_ map or) call!661745 call!661746))))

(declare-fun b!7259863 () Bool)

(assert (=> b!7259863 (= e!4353294 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259864 () Bool)

(assert (=> b!7259864 (= e!4353297 (store ((as const (Array Context!15242 Bool)) false) (ite (or c!1350301 c!1350304) lt!2589777 (Context!15243 call!661639)) true))))

(declare-fun bm!661741 () Bool)

(assert (=> bm!661741 (= call!661745 (derivationStepZipperDown!2675 (ite c!1350518 (regTwo!37875 (ite c!1350301 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350304 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350302 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232))))))) (regOne!37874 (ite c!1350301 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (ite c!1350304 (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (ite c!1350302 (regOne!37874 (h!76948 (exprs!8121 ct1!232))) (reg!19010 (h!76948 (exprs!8121 ct1!232)))))))) (ite c!1350518 (ite (or c!1350301 c!1350304) lt!2589777 (Context!15243 call!661639)) (Context!15243 call!661741)) (h!76947 s1!1971)))))

(assert (= (and d!2258529 c!1350517) b!7259864))

(assert (= (and d!2258529 (not c!1350517)) b!7259854))

(assert (= (and b!7259854 c!1350518) b!7259856))

(assert (= (and b!7259854 (not c!1350518)) b!7259855))

(assert (= (and b!7259855 res!2943679) b!7259857))

(assert (= (and b!7259855 c!1350521) b!7259862))

(assert (= (and b!7259855 (not c!1350521)) b!7259861))

(assert (= (and b!7259861 c!1350519) b!7259860))

(assert (= (and b!7259861 (not c!1350519)) b!7259858))

(assert (= (and b!7259858 c!1350520) b!7259859))

(assert (= (and b!7259858 (not c!1350520)) b!7259863))

(assert (= (or b!7259860 b!7259859) bm!661739))

(assert (= (or b!7259860 b!7259859) bm!661737))

(assert (= (or b!7259862 bm!661739) bm!661740))

(assert (= (or b!7259862 bm!661737) bm!661738))

(assert (= (or b!7259856 b!7259862) bm!661741))

(assert (= (or b!7259856 bm!661738) bm!661736))

(declare-fun m!7943974 () Bool)

(assert (=> bm!661736 m!7943974))

(declare-fun m!7943976 () Bool)

(assert (=> b!7259864 m!7943976))

(declare-fun m!7943978 () Bool)

(assert (=> b!7259857 m!7943978))

(declare-fun m!7943980 () Bool)

(assert (=> bm!661740 m!7943980))

(declare-fun m!7943982 () Bool)

(assert (=> bm!661741 m!7943982))

(assert (=> bm!661631 d!2258529))

(declare-fun d!2258531 () Bool)

(declare-fun c!1350522 () Bool)

(assert (=> d!2258531 (= c!1350522 (isEmpty!40598 (tail!14387 lt!2589806)))))

(declare-fun e!4353298 () Bool)

(assert (=> d!2258531 (= (matchZipper!3591 (derivationStepZipper!3459 lt!2589794 (head!14933 lt!2589806)) (tail!14387 lt!2589806)) e!4353298)))

(declare-fun b!7259865 () Bool)

(assert (=> b!7259865 (= e!4353298 (nullableZipper!2936 (derivationStepZipper!3459 lt!2589794 (head!14933 lt!2589806))))))

(declare-fun b!7259866 () Bool)

(assert (=> b!7259866 (= e!4353298 (matchZipper!3591 (derivationStepZipper!3459 (derivationStepZipper!3459 lt!2589794 (head!14933 lt!2589806)) (head!14933 (tail!14387 lt!2589806))) (tail!14387 (tail!14387 lt!2589806))))))

(assert (= (and d!2258531 c!1350522) b!7259865))

(assert (= (and d!2258531 (not c!1350522)) b!7259866))

(assert (=> d!2258531 m!7942996))

(assert (=> d!2258531 m!7943844))

(assert (=> b!7259865 m!7943100))

(declare-fun m!7943984 () Bool)

(assert (=> b!7259865 m!7943984))

(assert (=> b!7259866 m!7942996))

(assert (=> b!7259866 m!7943848))

(assert (=> b!7259866 m!7943100))

(assert (=> b!7259866 m!7943848))

(declare-fun m!7943986 () Bool)

(assert (=> b!7259866 m!7943986))

(assert (=> b!7259866 m!7942996))

(assert (=> b!7259866 m!7943852))

(assert (=> b!7259866 m!7943986))

(assert (=> b!7259866 m!7943852))

(declare-fun m!7943988 () Bool)

(assert (=> b!7259866 m!7943988))

(assert (=> b!7259308 d!2258531))

(declare-fun bs!1908901 () Bool)

(declare-fun d!2258533 () Bool)

(assert (= bs!1908901 (and d!2258533 d!2258455)))

(declare-fun lambda!446215 () Int)

(assert (=> bs!1908901 (= lambda!446215 lambda!446200)))

(declare-fun bs!1908902 () Bool)

(assert (= bs!1908902 (and d!2258533 d!2258499)))

(assert (=> bs!1908902 (= (= (head!14933 lt!2589806) (head!14933 s1!1971)) (= lambda!446215 lambda!446206))))

(declare-fun bs!1908903 () Bool)

(assert (= bs!1908903 (and d!2258533 b!7259019)))

(assert (=> bs!1908903 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446215 lambda!446100))))

(declare-fun bs!1908904 () Bool)

(assert (= bs!1908904 (and d!2258533 d!2258471)))

(assert (=> bs!1908904 (= (= (head!14933 lt!2589806) (head!14933 s2!1849)) (= lambda!446215 lambda!446202))))

(declare-fun bs!1908905 () Bool)

(assert (= bs!1908905 (and d!2258533 d!2258509)))

(assert (=> bs!1908905 (= lambda!446215 lambda!446208)))

(declare-fun bs!1908906 () Bool)

(assert (= bs!1908906 (and d!2258533 d!2258081)))

(assert (=> bs!1908906 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446215 lambda!446147))))

(declare-fun bs!1908907 () Bool)

(assert (= bs!1908907 (and d!2258533 d!2258075)))

(assert (=> bs!1908907 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446215 lambda!446143))))

(assert (=> d!2258533 true))

(assert (=> d!2258533 (= (derivationStepZipper!3459 lt!2589794 (head!14933 lt!2589806)) (flatMap!2846 lt!2589794 lambda!446215))))

(declare-fun bs!1908908 () Bool)

(assert (= bs!1908908 d!2258533))

(declare-fun m!7943990 () Bool)

(assert (=> bs!1908908 m!7943990))

(assert (=> b!7259308 d!2258533))

(assert (=> b!7259308 d!2258457))

(assert (=> b!7259308 d!2258459))

(declare-fun d!2258535 () Bool)

(assert (=> d!2258535 (= (flatMap!2846 lt!2589797 lambda!446143) (choose!56204 lt!2589797 lambda!446143))))

(declare-fun bs!1908909 () Bool)

(assert (= bs!1908909 d!2258535))

(declare-fun m!7943992 () Bool)

(assert (=> bs!1908909 m!7943992))

(assert (=> d!2258075 d!2258535))

(declare-fun bs!1908910 () Bool)

(declare-fun d!2258537 () Bool)

(assert (= bs!1908910 (and d!2258537 d!2258479)))

(declare-fun lambda!446216 () Int)

(assert (=> bs!1908910 (= lambda!446216 lambda!446203)))

(declare-fun bs!1908911 () Bool)

(assert (= bs!1908911 (and d!2258537 d!2258073)))

(assert (=> bs!1908911 (not (= lambda!446216 lambda!446140))))

(declare-fun bs!1908912 () Bool)

(assert (= bs!1908912 (and d!2258537 d!2258027)))

(assert (=> bs!1908912 (not (= lambda!446216 lambda!446134))))

(declare-fun bs!1908913 () Bool)

(assert (= bs!1908913 (and d!2258537 d!2258495)))

(assert (=> bs!1908913 (= lambda!446216 lambda!446205)))

(declare-fun bs!1908914 () Bool)

(assert (= bs!1908914 (and d!2258537 d!2258505)))

(assert (=> bs!1908914 (= lambda!446216 lambda!446207)))

(declare-fun bs!1908915 () Bool)

(assert (= bs!1908915 (and d!2258537 d!2258411)))

(assert (=> bs!1908915 (= lambda!446216 lambda!446197)))

(declare-fun bs!1908916 () Bool)

(assert (= bs!1908916 (and d!2258537 d!2258417)))

(assert (=> bs!1908916 (not (= lambda!446216 lambda!446198))))

(declare-fun bs!1908917 () Bool)

(assert (= bs!1908917 (and d!2258537 b!7259025)))

(assert (=> bs!1908917 (not (= lambda!446216 lambda!446099))))

(declare-fun bs!1908918 () Bool)

(assert (= bs!1908918 (and d!2258537 d!2258449)))

(assert (=> bs!1908918 (= lambda!446216 lambda!446199)))

(declare-fun bs!1908919 () Bool)

(assert (= bs!1908919 (and d!2258537 d!2258511)))

(assert (=> bs!1908919 (= lambda!446216 lambda!446209)))

(declare-fun bs!1908920 () Bool)

(assert (= bs!1908920 (and d!2258537 b!7259019)))

(assert (=> bs!1908920 (not (= lambda!446216 lambda!446101))))

(declare-fun bs!1908921 () Bool)

(assert (= bs!1908921 (and d!2258537 d!2258485)))

(assert (=> bs!1908921 (= lambda!446216 lambda!446204)))

(declare-fun bs!1908922 () Bool)

(assert (= bs!1908922 (and d!2258537 d!2258463)))

(assert (=> bs!1908922 (= lambda!446216 lambda!446201)))

(declare-fun bs!1908923 () Bool)

(assert (= bs!1908923 (and d!2258537 d!2258077)))

(assert (=> bs!1908923 (not (= lambda!446216 lambda!446146))))

(assert (=> d!2258537 (= (nullableZipper!2936 lt!2589797) (exists!4440 lt!2589797 lambda!446216))))

(declare-fun bs!1908924 () Bool)

(assert (= bs!1908924 d!2258537))

(declare-fun m!7943994 () Bool)

(assert (=> bs!1908924 m!7943994))

(assert (=> b!7259220 d!2258537))

(declare-fun bs!1908925 () Bool)

(declare-fun d!2258539 () Bool)

(assert (= bs!1908925 (and d!2258539 d!2258479)))

(declare-fun lambda!446217 () Int)

(assert (=> bs!1908925 (= lambda!446217 lambda!446203)))

(declare-fun bs!1908926 () Bool)

(assert (= bs!1908926 (and d!2258539 d!2258537)))

(assert (=> bs!1908926 (= lambda!446217 lambda!446216)))

(declare-fun bs!1908927 () Bool)

(assert (= bs!1908927 (and d!2258539 d!2258073)))

(assert (=> bs!1908927 (not (= lambda!446217 lambda!446140))))

(declare-fun bs!1908928 () Bool)

(assert (= bs!1908928 (and d!2258539 d!2258027)))

(assert (=> bs!1908928 (not (= lambda!446217 lambda!446134))))

(declare-fun bs!1908929 () Bool)

(assert (= bs!1908929 (and d!2258539 d!2258495)))

(assert (=> bs!1908929 (= lambda!446217 lambda!446205)))

(declare-fun bs!1908930 () Bool)

(assert (= bs!1908930 (and d!2258539 d!2258505)))

(assert (=> bs!1908930 (= lambda!446217 lambda!446207)))

(declare-fun bs!1908931 () Bool)

(assert (= bs!1908931 (and d!2258539 d!2258411)))

(assert (=> bs!1908931 (= lambda!446217 lambda!446197)))

(declare-fun bs!1908932 () Bool)

(assert (= bs!1908932 (and d!2258539 d!2258417)))

(assert (=> bs!1908932 (not (= lambda!446217 lambda!446198))))

(declare-fun bs!1908933 () Bool)

(assert (= bs!1908933 (and d!2258539 b!7259025)))

(assert (=> bs!1908933 (not (= lambda!446217 lambda!446099))))

(declare-fun bs!1908934 () Bool)

(assert (= bs!1908934 (and d!2258539 d!2258449)))

(assert (=> bs!1908934 (= lambda!446217 lambda!446199)))

(declare-fun bs!1908935 () Bool)

(assert (= bs!1908935 (and d!2258539 d!2258511)))

(assert (=> bs!1908935 (= lambda!446217 lambda!446209)))

(declare-fun bs!1908936 () Bool)

(assert (= bs!1908936 (and d!2258539 b!7259019)))

(assert (=> bs!1908936 (not (= lambda!446217 lambda!446101))))

(declare-fun bs!1908937 () Bool)

(assert (= bs!1908937 (and d!2258539 d!2258485)))

(assert (=> bs!1908937 (= lambda!446217 lambda!446204)))

(declare-fun bs!1908938 () Bool)

(assert (= bs!1908938 (and d!2258539 d!2258463)))

(assert (=> bs!1908938 (= lambda!446217 lambda!446201)))

(declare-fun bs!1908939 () Bool)

(assert (= bs!1908939 (and d!2258539 d!2258077)))

(assert (=> bs!1908939 (not (= lambda!446217 lambda!446146))))

(assert (=> d!2258539 (= (nullableZipper!2936 lt!2589796) (exists!4440 lt!2589796 lambda!446217))))

(declare-fun bs!1908940 () Bool)

(assert (= bs!1908940 d!2258539))

(declare-fun m!7943996 () Bool)

(assert (=> bs!1908940 m!7943996))

(assert (=> b!7259285 d!2258539))

(declare-fun call!661747 () (InoxSet Context!15242))

(declare-fun b!7259867 () Bool)

(declare-fun e!4353299 () (InoxSet Context!15242))

(assert (=> b!7259867 (= e!4353299 ((_ map or) call!661747 (derivationStepZipperUp!2505 (Context!15243 (t!384688 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589780)))))) (h!76947 s1!1971))))))

(declare-fun bm!661742 () Bool)

(assert (=> bm!661742 (= call!661747 (derivationStepZipperDown!2675 (h!76948 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589780))))) (Context!15243 (t!384688 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589780)))))) (h!76947 s1!1971)))))

(declare-fun b!7259868 () Bool)

(declare-fun e!4353301 () (InoxSet Context!15242))

(assert (=> b!7259868 (= e!4353301 call!661747)))

(declare-fun d!2258541 () Bool)

(declare-fun c!1350524 () Bool)

(declare-fun e!4353300 () Bool)

(assert (=> d!2258541 (= c!1350524 e!4353300)))

(declare-fun res!2943680 () Bool)

(assert (=> d!2258541 (=> (not res!2943680) (not e!4353300))))

(assert (=> d!2258541 (= res!2943680 ((_ is Cons!70500) (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589780))))))))

(assert (=> d!2258541 (= (derivationStepZipperUp!2505 (Context!15243 (t!384688 (exprs!8121 lt!2589780))) (h!76947 s1!1971)) e!4353299)))

(declare-fun b!7259869 () Bool)

(assert (=> b!7259869 (= e!4353299 e!4353301)))

(declare-fun c!1350523 () Bool)

(assert (=> b!7259869 (= c!1350523 ((_ is Cons!70500) (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589780))))))))

(declare-fun b!7259870 () Bool)

(assert (=> b!7259870 (= e!4353301 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259871 () Bool)

(assert (=> b!7259871 (= e!4353300 (nullable!7941 (h!76948 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589780)))))))))

(assert (= (and d!2258541 res!2943680) b!7259871))

(assert (= (and d!2258541 c!1350524) b!7259867))

(assert (= (and d!2258541 (not c!1350524)) b!7259869))

(assert (= (and b!7259869 c!1350523) b!7259868))

(assert (= (and b!7259869 (not c!1350523)) b!7259870))

(assert (= (or b!7259867 b!7259868) bm!661742))

(declare-fun m!7943998 () Bool)

(assert (=> b!7259867 m!7943998))

(declare-fun m!7944000 () Bool)

(assert (=> bm!661742 m!7944000))

(declare-fun m!7944002 () Bool)

(assert (=> b!7259871 m!7944002))

(assert (=> b!7259290 d!2258541))

(declare-fun bs!1908941 () Bool)

(declare-fun d!2258543 () Bool)

(assert (= bs!1908941 (and d!2258543 d!2258479)))

(declare-fun lambda!446218 () Int)

(assert (=> bs!1908941 (not (= lambda!446218 lambda!446203))))

(declare-fun bs!1908942 () Bool)

(assert (= bs!1908942 (and d!2258543 d!2258537)))

(assert (=> bs!1908942 (not (= lambda!446218 lambda!446216))))

(declare-fun bs!1908943 () Bool)

(assert (= bs!1908943 (and d!2258543 d!2258073)))

(assert (=> bs!1908943 (not (= lambda!446218 lambda!446140))))

(declare-fun bs!1908944 () Bool)

(assert (= bs!1908944 (and d!2258543 d!2258027)))

(assert (=> bs!1908944 (not (= lambda!446218 lambda!446134))))

(declare-fun bs!1908945 () Bool)

(assert (= bs!1908945 (and d!2258543 d!2258495)))

(assert (=> bs!1908945 (not (= lambda!446218 lambda!446205))))

(declare-fun bs!1908946 () Bool)

(assert (= bs!1908946 (and d!2258543 d!2258505)))

(assert (=> bs!1908946 (not (= lambda!446218 lambda!446207))))

(declare-fun bs!1908947 () Bool)

(assert (= bs!1908947 (and d!2258543 d!2258411)))

(assert (=> bs!1908947 (not (= lambda!446218 lambda!446197))))

(declare-fun bs!1908948 () Bool)

(assert (= bs!1908948 (and d!2258543 d!2258539)))

(assert (=> bs!1908948 (not (= lambda!446218 lambda!446217))))

(declare-fun bs!1908949 () Bool)

(assert (= bs!1908949 (and d!2258543 d!2258417)))

(assert (=> bs!1908949 (= (= lambda!446101 lambda!446099) (= lambda!446218 lambda!446198))))

(declare-fun bs!1908950 () Bool)

(assert (= bs!1908950 (and d!2258543 b!7259025)))

(assert (=> bs!1908950 (not (= lambda!446218 lambda!446099))))

(declare-fun bs!1908951 () Bool)

(assert (= bs!1908951 (and d!2258543 d!2258449)))

(assert (=> bs!1908951 (not (= lambda!446218 lambda!446199))))

(declare-fun bs!1908952 () Bool)

(assert (= bs!1908952 (and d!2258543 d!2258511)))

(assert (=> bs!1908952 (not (= lambda!446218 lambda!446209))))

(declare-fun bs!1908953 () Bool)

(assert (= bs!1908953 (and d!2258543 b!7259019)))

(assert (=> bs!1908953 (not (= lambda!446218 lambda!446101))))

(declare-fun bs!1908954 () Bool)

(assert (= bs!1908954 (and d!2258543 d!2258485)))

(assert (=> bs!1908954 (not (= lambda!446218 lambda!446204))))

(declare-fun bs!1908955 () Bool)

(assert (= bs!1908955 (and d!2258543 d!2258463)))

(assert (=> bs!1908955 (not (= lambda!446218 lambda!446201))))

(declare-fun bs!1908956 () Bool)

(assert (= bs!1908956 (and d!2258543 d!2258077)))

(assert (=> bs!1908956 (= (= lambda!446101 lambda!446099) (= lambda!446218 lambda!446146))))

(assert (=> d!2258543 true))

(assert (=> d!2258543 (< (dynLambda!28814 order!29033 lambda!446101) (dynLambda!28814 order!29033 lambda!446218))))

(assert (=> d!2258543 (= (exists!4441 (toList!11510 lt!2589798) lambda!446101) (not (forall!17538 (toList!11510 lt!2589798) lambda!446218)))))

(declare-fun bs!1908957 () Bool)

(assert (= bs!1908957 d!2258543))

(assert (=> bs!1908957 m!7942560))

(declare-fun m!7944004 () Bool)

(assert (=> bs!1908957 m!7944004))

(assert (=> d!2258013 d!2258543))

(assert (=> d!2258013 d!2257999))

(declare-fun d!2258545 () Bool)

(declare-fun res!2943681 () Bool)

(assert (=> d!2258545 (= res!2943681 (exists!4441 (toList!11510 lt!2589798) lambda!446101))))

(assert (=> d!2258545 true))

(assert (=> d!2258545 (= (choose!56205 lt!2589798 lambda!446101) res!2943681)))

(declare-fun bs!1908958 () Bool)

(assert (= bs!1908958 d!2258545))

(assert (=> bs!1908958 m!7942560))

(assert (=> bs!1908958 m!7942560))

(assert (=> bs!1908958 m!7943006))

(assert (=> d!2258013 d!2258545))

(assert (=> d!2258031 d!2258015))

(declare-fun d!2258547 () Bool)

(assert (=> d!2258547 (= (flatMap!2846 lt!2589785 lambda!446100) (dynLambda!28812 lambda!446100 ct1!232))))

(assert (=> d!2258547 true))

(declare-fun _$13!4609 () Unit!163992)

(assert (=> d!2258547 (= (choose!56203 lt!2589785 ct1!232 lambda!446100) _$13!4609)))

(declare-fun b_lambda!279229 () Bool)

(assert (=> (not b_lambda!279229) (not d!2258547)))

(declare-fun bs!1908959 () Bool)

(assert (= bs!1908959 d!2258547))

(assert (=> bs!1908959 m!7942598))

(assert (=> bs!1908959 m!7943042))

(assert (=> d!2258031 d!2258547))

(declare-fun d!2258549 () Bool)

(declare-fun res!2943682 () Bool)

(declare-fun e!4353302 () Bool)

(assert (=> d!2258549 (=> res!2943682 e!4353302)))

(assert (=> d!2258549 (= res!2943682 ((_ is Nil!70500) (exprs!8121 ct2!328)))))

(assert (=> d!2258549 (= (forall!17537 (exprs!8121 ct2!328) lambda!446151) e!4353302)))

(declare-fun b!7259872 () Bool)

(declare-fun e!4353303 () Bool)

(assert (=> b!7259872 (= e!4353302 e!4353303)))

(declare-fun res!2943683 () Bool)

(assert (=> b!7259872 (=> (not res!2943683) (not e!4353303))))

(assert (=> b!7259872 (= res!2943683 (dynLambda!28816 lambda!446151 (h!76948 (exprs!8121 ct2!328))))))

(declare-fun b!7259873 () Bool)

(assert (=> b!7259873 (= e!4353303 (forall!17537 (t!384688 (exprs!8121 ct2!328)) lambda!446151))))

(assert (= (and d!2258549 (not res!2943682)) b!7259872))

(assert (= (and b!7259872 res!2943683) b!7259873))

(declare-fun b_lambda!279231 () Bool)

(assert (=> (not b_lambda!279231) (not b!7259872)))

(declare-fun m!7944006 () Bool)

(assert (=> b!7259872 m!7944006))

(declare-fun m!7944008 () Bool)

(assert (=> b!7259873 m!7944008))

(assert (=> d!2258087 d!2258549))

(declare-fun d!2258551 () Bool)

(declare-fun c!1350525 () Bool)

(assert (=> d!2258551 (= c!1350525 (isEmpty!40598 (tail!14387 lt!2589806)))))

(declare-fun e!4353304 () Bool)

(assert (=> d!2258551 (= (matchZipper!3591 (derivationStepZipper!3459 (content!14674 lt!2589782) (head!14933 lt!2589806)) (tail!14387 lt!2589806)) e!4353304)))

(declare-fun b!7259874 () Bool)

(assert (=> b!7259874 (= e!4353304 (nullableZipper!2936 (derivationStepZipper!3459 (content!14674 lt!2589782) (head!14933 lt!2589806))))))

(declare-fun b!7259875 () Bool)

(assert (=> b!7259875 (= e!4353304 (matchZipper!3591 (derivationStepZipper!3459 (derivationStepZipper!3459 (content!14674 lt!2589782) (head!14933 lt!2589806)) (head!14933 (tail!14387 lt!2589806))) (tail!14387 (tail!14387 lt!2589806))))))

(assert (= (and d!2258551 c!1350525) b!7259874))

(assert (= (and d!2258551 (not c!1350525)) b!7259875))

(assert (=> d!2258551 m!7942996))

(assert (=> d!2258551 m!7943844))

(assert (=> b!7259874 m!7942994))

(declare-fun m!7944010 () Bool)

(assert (=> b!7259874 m!7944010))

(assert (=> b!7259875 m!7942996))

(assert (=> b!7259875 m!7943848))

(assert (=> b!7259875 m!7942994))

(assert (=> b!7259875 m!7943848))

(declare-fun m!7944012 () Bool)

(assert (=> b!7259875 m!7944012))

(assert (=> b!7259875 m!7942996))

(assert (=> b!7259875 m!7943852))

(assert (=> b!7259875 m!7944012))

(assert (=> b!7259875 m!7943852))

(declare-fun m!7944014 () Bool)

(assert (=> b!7259875 m!7944014))

(assert (=> b!7259244 d!2258551))

(declare-fun bs!1908960 () Bool)

(declare-fun d!2258553 () Bool)

(assert (= bs!1908960 (and d!2258553 d!2258455)))

(declare-fun lambda!446219 () Int)

(assert (=> bs!1908960 (= lambda!446219 lambda!446200)))

(declare-fun bs!1908961 () Bool)

(assert (= bs!1908961 (and d!2258553 d!2258499)))

(assert (=> bs!1908961 (= (= (head!14933 lt!2589806) (head!14933 s1!1971)) (= lambda!446219 lambda!446206))))

(declare-fun bs!1908962 () Bool)

(assert (= bs!1908962 (and d!2258553 b!7259019)))

(assert (=> bs!1908962 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446219 lambda!446100))))

(declare-fun bs!1908963 () Bool)

(assert (= bs!1908963 (and d!2258553 d!2258471)))

(assert (=> bs!1908963 (= (= (head!14933 lt!2589806) (head!14933 s2!1849)) (= lambda!446219 lambda!446202))))

(declare-fun bs!1908964 () Bool)

(assert (= bs!1908964 (and d!2258553 d!2258509)))

(assert (=> bs!1908964 (= lambda!446219 lambda!446208)))

(declare-fun bs!1908965 () Bool)

(assert (= bs!1908965 (and d!2258553 d!2258533)))

(assert (=> bs!1908965 (= lambda!446219 lambda!446215)))

(declare-fun bs!1908966 () Bool)

(assert (= bs!1908966 (and d!2258553 d!2258081)))

(assert (=> bs!1908966 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446219 lambda!446147))))

(declare-fun bs!1908967 () Bool)

(assert (= bs!1908967 (and d!2258553 d!2258075)))

(assert (=> bs!1908967 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446219 lambda!446143))))

(assert (=> d!2258553 true))

(assert (=> d!2258553 (= (derivationStepZipper!3459 (content!14674 lt!2589782) (head!14933 lt!2589806)) (flatMap!2846 (content!14674 lt!2589782) lambda!446219))))

(declare-fun bs!1908968 () Bool)

(assert (= bs!1908968 d!2258553))

(assert (=> bs!1908968 m!7942570))

(declare-fun m!7944016 () Bool)

(assert (=> bs!1908968 m!7944016))

(assert (=> b!7259244 d!2258553))

(assert (=> b!7259244 d!2258457))

(assert (=> b!7259244 d!2258459))

(declare-fun d!2258555 () Bool)

(assert (=> d!2258555 (= (flatMap!2846 lt!2589785 lambda!446147) (choose!56204 lt!2589785 lambda!446147))))

(declare-fun bs!1908969 () Bool)

(assert (= bs!1908969 d!2258555))

(declare-fun m!7944018 () Bool)

(assert (=> bs!1908969 m!7944018))

(assert (=> d!2258081 d!2258555))

(assert (=> d!2258007 d!2258465))

(assert (=> d!2258051 d!2258465))

(declare-fun d!2258557 () Bool)

(declare-fun res!2943688 () Bool)

(declare-fun e!4353309 () Bool)

(assert (=> d!2258557 (=> res!2943688 e!4353309)))

(assert (=> d!2258557 (= res!2943688 ((_ is Nil!70501) lt!2589879))))

(assert (=> d!2258557 (= (noDuplicate!3011 lt!2589879) e!4353309)))

(declare-fun b!7259880 () Bool)

(declare-fun e!4353310 () Bool)

(assert (=> b!7259880 (= e!4353309 e!4353310)))

(declare-fun res!2943689 () Bool)

(assert (=> b!7259880 (=> (not res!2943689) (not e!4353310))))

(assert (=> b!7259880 (= res!2943689 (not (contains!20749 (t!384689 lt!2589879) (h!76949 lt!2589879))))))

(declare-fun b!7259881 () Bool)

(assert (=> b!7259881 (= e!4353310 (noDuplicate!3011 (t!384689 lt!2589879)))))

(assert (= (and d!2258557 (not res!2943688)) b!7259880))

(assert (= (and b!7259880 res!2943689) b!7259881))

(declare-fun m!7944020 () Bool)

(assert (=> b!7259880 m!7944020))

(declare-fun m!7944022 () Bool)

(assert (=> b!7259881 m!7944022))

(assert (=> d!2257999 d!2258557))

(declare-fun d!2258559 () Bool)

(declare-fun e!4353318 () Bool)

(assert (=> d!2258559 e!4353318))

(declare-fun res!2943694 () Bool)

(assert (=> d!2258559 (=> (not res!2943694) (not e!4353318))))

(declare-fun res!2943695 () List!70625)

(assert (=> d!2258559 (= res!2943694 (noDuplicate!3011 res!2943695))))

(declare-fun e!4353317 () Bool)

(assert (=> d!2258559 e!4353317))

(assert (=> d!2258559 (= (choose!56202 lt!2589798) res!2943695)))

(declare-fun b!7259889 () Bool)

(declare-fun e!4353319 () Bool)

(declare-fun tp!2038655 () Bool)

(assert (=> b!7259889 (= e!4353319 tp!2038655)))

(declare-fun tp!2038656 () Bool)

(declare-fun b!7259888 () Bool)

(assert (=> b!7259888 (= e!4353317 (and (inv!89712 (h!76949 res!2943695)) e!4353319 tp!2038656))))

(declare-fun b!7259890 () Bool)

(assert (=> b!7259890 (= e!4353318 (= (content!14674 res!2943695) lt!2589798))))

(assert (= b!7259888 b!7259889))

(assert (= (and d!2258559 ((_ is Cons!70501) res!2943695)) b!7259888))

(assert (= (and d!2258559 res!2943694) b!7259890))

(declare-fun m!7944024 () Bool)

(assert (=> d!2258559 m!7944024))

(declare-fun m!7944026 () Bool)

(assert (=> b!7259888 m!7944026))

(declare-fun m!7944028 () Bool)

(assert (=> b!7259890 m!7944028))

(assert (=> d!2257999 d!2258559))

(declare-fun d!2258561 () Bool)

(assert (=> d!2258561 (= ($colon$colon!2938 (exprs!8121 lt!2589777) (ite (or c!1350304 c!1350302) (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (h!76948 (exprs!8121 ct1!232)))) (Cons!70500 (ite (or c!1350304 c!1350302) (regTwo!37874 (h!76948 (exprs!8121 ct1!232))) (h!76948 (exprs!8121 ct1!232))) (exprs!8121 lt!2589777)))))

(assert (=> bm!661635 d!2258561))

(declare-fun d!2258563 () Bool)

(declare-fun c!1350526 () Bool)

(assert (=> d!2258563 (= c!1350526 (isEmpty!40598 (tail!14387 (t!384687 s1!1971))))))

(declare-fun e!4353320 () Bool)

(assert (=> d!2258563 (= (matchZipper!3591 (derivationStepZipper!3459 lt!2589817 (head!14933 (t!384687 s1!1971))) (tail!14387 (t!384687 s1!1971))) e!4353320)))

(declare-fun b!7259891 () Bool)

(assert (=> b!7259891 (= e!4353320 (nullableZipper!2936 (derivationStepZipper!3459 lt!2589817 (head!14933 (t!384687 s1!1971)))))))

(declare-fun b!7259892 () Bool)

(assert (=> b!7259892 (= e!4353320 (matchZipper!3591 (derivationStepZipper!3459 (derivationStepZipper!3459 lt!2589817 (head!14933 (t!384687 s1!1971))) (head!14933 (tail!14387 (t!384687 s1!1971)))) (tail!14387 (tail!14387 (t!384687 s1!1971)))))))

(assert (= (and d!2258563 c!1350526) b!7259891))

(assert (= (and d!2258563 (not c!1350526)) b!7259892))

(assert (=> d!2258563 m!7943074))

(declare-fun m!7944030 () Bool)

(assert (=> d!2258563 m!7944030))

(assert (=> b!7259891 m!7943072))

(declare-fun m!7944032 () Bool)

(assert (=> b!7259891 m!7944032))

(assert (=> b!7259892 m!7943074))

(declare-fun m!7944034 () Bool)

(assert (=> b!7259892 m!7944034))

(assert (=> b!7259892 m!7943072))

(assert (=> b!7259892 m!7944034))

(declare-fun m!7944036 () Bool)

(assert (=> b!7259892 m!7944036))

(assert (=> b!7259892 m!7943074))

(declare-fun m!7944038 () Bool)

(assert (=> b!7259892 m!7944038))

(assert (=> b!7259892 m!7944036))

(assert (=> b!7259892 m!7944038))

(declare-fun m!7944040 () Bool)

(assert (=> b!7259892 m!7944040))

(assert (=> b!7259296 d!2258563))

(declare-fun bs!1908970 () Bool)

(declare-fun d!2258565 () Bool)

(assert (= bs!1908970 (and d!2258565 d!2258455)))

(declare-fun lambda!446220 () Int)

(assert (=> bs!1908970 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589806)) (= lambda!446220 lambda!446200))))

(declare-fun bs!1908971 () Bool)

(assert (= bs!1908971 (and d!2258565 d!2258499)))

(assert (=> bs!1908971 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 s1!1971)) (= lambda!446220 lambda!446206))))

(declare-fun bs!1908972 () Bool)

(assert (= bs!1908972 (and d!2258565 b!7259019)))

(assert (=> bs!1908972 (= (= (head!14933 (t!384687 s1!1971)) (h!76947 s1!1971)) (= lambda!446220 lambda!446100))))

(declare-fun bs!1908973 () Bool)

(assert (= bs!1908973 (and d!2258565 d!2258471)))

(assert (=> bs!1908973 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 s2!1849)) (= lambda!446220 lambda!446202))))

(declare-fun bs!1908974 () Bool)

(assert (= bs!1908974 (and d!2258565 d!2258509)))

(assert (=> bs!1908974 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589806)) (= lambda!446220 lambda!446208))))

(declare-fun bs!1908975 () Bool)

(assert (= bs!1908975 (and d!2258565 d!2258533)))

(assert (=> bs!1908975 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589806)) (= lambda!446220 lambda!446215))))

(declare-fun bs!1908976 () Bool)

(assert (= bs!1908976 (and d!2258565 d!2258081)))

(assert (=> bs!1908976 (= (= (head!14933 (t!384687 s1!1971)) (h!76947 s1!1971)) (= lambda!446220 lambda!446147))))

(declare-fun bs!1908977 () Bool)

(assert (= bs!1908977 (and d!2258565 d!2258553)))

(assert (=> bs!1908977 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589806)) (= lambda!446220 lambda!446219))))

(declare-fun bs!1908978 () Bool)

(assert (= bs!1908978 (and d!2258565 d!2258075)))

(assert (=> bs!1908978 (= (= (head!14933 (t!384687 s1!1971)) (h!76947 s1!1971)) (= lambda!446220 lambda!446143))))

(assert (=> d!2258565 true))

(assert (=> d!2258565 (= (derivationStepZipper!3459 lt!2589817 (head!14933 (t!384687 s1!1971))) (flatMap!2846 lt!2589817 lambda!446220))))

(declare-fun bs!1908979 () Bool)

(assert (= bs!1908979 d!2258565))

(declare-fun m!7944042 () Bool)

(assert (=> bs!1908979 m!7944042))

(assert (=> b!7259296 d!2258565))

(declare-fun d!2258567 () Bool)

(assert (=> d!2258567 (= (head!14933 (t!384687 s1!1971)) (h!76947 (t!384687 s1!1971)))))

(assert (=> b!7259296 d!2258567))

(declare-fun d!2258569 () Bool)

(assert (=> d!2258569 (= (tail!14387 (t!384687 s1!1971)) (t!384687 (t!384687 s1!1971)))))

(assert (=> b!7259296 d!2258569))

(declare-fun d!2258571 () Bool)

(assert (=> d!2258571 (= (nullable!7941 (regOne!37874 (h!76948 (exprs!8121 ct1!232)))) (nullableFct!3123 (regOne!37874 (h!76948 (exprs!8121 ct1!232)))))))

(declare-fun bs!1908980 () Bool)

(assert (= bs!1908980 d!2258571))

(declare-fun m!7944044 () Bool)

(assert (=> bs!1908980 m!7944044))

(assert (=> b!7259350 d!2258571))

(assert (=> d!2258037 d!2258033))

(assert (=> d!2258037 d!2258035))

(declare-fun d!2258573 () Bool)

(declare-fun e!4353323 () Bool)

(assert (=> d!2258573 (= (matchZipper!3591 ((_ map or) lt!2589796 lt!2589794) lt!2589806) e!4353323)))

(declare-fun res!2943698 () Bool)

(assert (=> d!2258573 (=> res!2943698 e!4353323)))

(assert (=> d!2258573 (= res!2943698 (matchZipper!3591 lt!2589796 lt!2589806))))

(assert (=> d!2258573 true))

(declare-fun _$48!2554 () Unit!163992)

(assert (=> d!2258573 (= (choose!56209 lt!2589796 lt!2589794 lt!2589806) _$48!2554)))

(declare-fun b!7259895 () Bool)

(assert (=> b!7259895 (= e!4353323 (matchZipper!3591 lt!2589794 lt!2589806))))

(assert (= (and d!2258573 (not res!2943698)) b!7259895))

(assert (=> d!2258573 m!7942552))

(assert (=> d!2258573 m!7942550))

(assert (=> b!7259895 m!7942628))

(assert (=> d!2258037 d!2258573))

(declare-fun bs!1908981 () Bool)

(declare-fun d!2258575 () Bool)

(assert (= bs!1908981 (and d!2258575 d!2258479)))

(declare-fun lambda!446221 () Int)

(assert (=> bs!1908981 (= lambda!446221 lambda!446203)))

(declare-fun bs!1908982 () Bool)

(assert (= bs!1908982 (and d!2258575 d!2258537)))

(assert (=> bs!1908982 (= lambda!446221 lambda!446216)))

(declare-fun bs!1908983 () Bool)

(assert (= bs!1908983 (and d!2258575 d!2258073)))

(assert (=> bs!1908983 (not (= lambda!446221 lambda!446140))))

(declare-fun bs!1908984 () Bool)

(assert (= bs!1908984 (and d!2258575 d!2258027)))

(assert (=> bs!1908984 (not (= lambda!446221 lambda!446134))))

(declare-fun bs!1908985 () Bool)

(assert (= bs!1908985 (and d!2258575 d!2258543)))

(assert (=> bs!1908985 (not (= lambda!446221 lambda!446218))))

(declare-fun bs!1908986 () Bool)

(assert (= bs!1908986 (and d!2258575 d!2258495)))

(assert (=> bs!1908986 (= lambda!446221 lambda!446205)))

(declare-fun bs!1908987 () Bool)

(assert (= bs!1908987 (and d!2258575 d!2258505)))

(assert (=> bs!1908987 (= lambda!446221 lambda!446207)))

(declare-fun bs!1908988 () Bool)

(assert (= bs!1908988 (and d!2258575 d!2258411)))

(assert (=> bs!1908988 (= lambda!446221 lambda!446197)))

(declare-fun bs!1908989 () Bool)

(assert (= bs!1908989 (and d!2258575 d!2258539)))

(assert (=> bs!1908989 (= lambda!446221 lambda!446217)))

(declare-fun bs!1908990 () Bool)

(assert (= bs!1908990 (and d!2258575 d!2258417)))

(assert (=> bs!1908990 (not (= lambda!446221 lambda!446198))))

(declare-fun bs!1908991 () Bool)

(assert (= bs!1908991 (and d!2258575 b!7259025)))

(assert (=> bs!1908991 (not (= lambda!446221 lambda!446099))))

(declare-fun bs!1908992 () Bool)

(assert (= bs!1908992 (and d!2258575 d!2258449)))

(assert (=> bs!1908992 (= lambda!446221 lambda!446199)))

(declare-fun bs!1908993 () Bool)

(assert (= bs!1908993 (and d!2258575 d!2258511)))

(assert (=> bs!1908993 (= lambda!446221 lambda!446209)))

(declare-fun bs!1908994 () Bool)

(assert (= bs!1908994 (and d!2258575 b!7259019)))

(assert (=> bs!1908994 (not (= lambda!446221 lambda!446101))))

(declare-fun bs!1908995 () Bool)

(assert (= bs!1908995 (and d!2258575 d!2258485)))

(assert (=> bs!1908995 (= lambda!446221 lambda!446204)))

(declare-fun bs!1908996 () Bool)

(assert (= bs!1908996 (and d!2258575 d!2258463)))

(assert (=> bs!1908996 (= lambda!446221 lambda!446201)))

(declare-fun bs!1908997 () Bool)

(assert (= bs!1908997 (and d!2258575 d!2258077)))

(assert (=> bs!1908997 (not (= lambda!446221 lambda!446146))))

(assert (=> d!2258575 (= (nullableZipper!2936 ((_ map or) lt!2589796 lt!2589794)) (exists!4440 ((_ map or) lt!2589796 lt!2589794) lambda!446221))))

(declare-fun bs!1908998 () Bool)

(assert (= bs!1908998 d!2258575))

(declare-fun m!7944046 () Bool)

(assert (=> bs!1908998 m!7944046))

(assert (=> b!7259283 d!2258575))

(declare-fun d!2258577 () Bool)

(declare-fun c!1350527 () Bool)

(assert (=> d!2258577 (= c!1350527 (isEmpty!40598 (tail!14387 (t!384687 s1!1971))))))

(declare-fun e!4353324 () Bool)

(assert (=> d!2258577 (= (matchZipper!3591 (derivationStepZipper!3459 lt!2589813 (head!14933 (t!384687 s1!1971))) (tail!14387 (t!384687 s1!1971))) e!4353324)))

(declare-fun b!7259896 () Bool)

(assert (=> b!7259896 (= e!4353324 (nullableZipper!2936 (derivationStepZipper!3459 lt!2589813 (head!14933 (t!384687 s1!1971)))))))

(declare-fun b!7259897 () Bool)

(assert (=> b!7259897 (= e!4353324 (matchZipper!3591 (derivationStepZipper!3459 (derivationStepZipper!3459 lt!2589813 (head!14933 (t!384687 s1!1971))) (head!14933 (tail!14387 (t!384687 s1!1971)))) (tail!14387 (tail!14387 (t!384687 s1!1971)))))))

(assert (= (and d!2258577 c!1350527) b!7259896))

(assert (= (and d!2258577 (not c!1350527)) b!7259897))

(assert (=> d!2258577 m!7943074))

(assert (=> d!2258577 m!7944030))

(assert (=> b!7259896 m!7943194))

(declare-fun m!7944048 () Bool)

(assert (=> b!7259896 m!7944048))

(assert (=> b!7259897 m!7943074))

(assert (=> b!7259897 m!7944034))

(assert (=> b!7259897 m!7943194))

(assert (=> b!7259897 m!7944034))

(declare-fun m!7944050 () Bool)

(assert (=> b!7259897 m!7944050))

(assert (=> b!7259897 m!7943074))

(assert (=> b!7259897 m!7944038))

(assert (=> b!7259897 m!7944050))

(assert (=> b!7259897 m!7944038))

(declare-fun m!7944052 () Bool)

(assert (=> b!7259897 m!7944052))

(assert (=> b!7259340 d!2258577))

(declare-fun bs!1908999 () Bool)

(declare-fun d!2258579 () Bool)

(assert (= bs!1908999 (and d!2258579 d!2258455)))

(declare-fun lambda!446222 () Int)

(assert (=> bs!1908999 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589806)) (= lambda!446222 lambda!446200))))

(declare-fun bs!1909000 () Bool)

(assert (= bs!1909000 (and d!2258579 d!2258499)))

(assert (=> bs!1909000 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 s1!1971)) (= lambda!446222 lambda!446206))))

(declare-fun bs!1909001 () Bool)

(assert (= bs!1909001 (and d!2258579 b!7259019)))

(assert (=> bs!1909001 (= (= (head!14933 (t!384687 s1!1971)) (h!76947 s1!1971)) (= lambda!446222 lambda!446100))))

(declare-fun bs!1909002 () Bool)

(assert (= bs!1909002 (and d!2258579 d!2258471)))

(assert (=> bs!1909002 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 s2!1849)) (= lambda!446222 lambda!446202))))

(declare-fun bs!1909003 () Bool)

(assert (= bs!1909003 (and d!2258579 d!2258565)))

(assert (=> bs!1909003 (= lambda!446222 lambda!446220)))

(declare-fun bs!1909004 () Bool)

(assert (= bs!1909004 (and d!2258579 d!2258509)))

(assert (=> bs!1909004 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589806)) (= lambda!446222 lambda!446208))))

(declare-fun bs!1909005 () Bool)

(assert (= bs!1909005 (and d!2258579 d!2258533)))

(assert (=> bs!1909005 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589806)) (= lambda!446222 lambda!446215))))

(declare-fun bs!1909006 () Bool)

(assert (= bs!1909006 (and d!2258579 d!2258081)))

(assert (=> bs!1909006 (= (= (head!14933 (t!384687 s1!1971)) (h!76947 s1!1971)) (= lambda!446222 lambda!446147))))

(declare-fun bs!1909007 () Bool)

(assert (= bs!1909007 (and d!2258579 d!2258553)))

(assert (=> bs!1909007 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589806)) (= lambda!446222 lambda!446219))))

(declare-fun bs!1909008 () Bool)

(assert (= bs!1909008 (and d!2258579 d!2258075)))

(assert (=> bs!1909008 (= (= (head!14933 (t!384687 s1!1971)) (h!76947 s1!1971)) (= lambda!446222 lambda!446143))))

(assert (=> d!2258579 true))

(assert (=> d!2258579 (= (derivationStepZipper!3459 lt!2589813 (head!14933 (t!384687 s1!1971))) (flatMap!2846 lt!2589813 lambda!446222))))

(declare-fun bs!1909009 () Bool)

(assert (= bs!1909009 d!2258579))

(declare-fun m!7944054 () Bool)

(assert (=> bs!1909009 m!7944054))

(assert (=> b!7259340 d!2258579))

(assert (=> b!7259340 d!2258567))

(assert (=> b!7259340 d!2258569))

(declare-fun b!7259899 () Bool)

(declare-fun e!4353325 () List!70623)

(assert (=> b!7259899 (= e!4353325 (Cons!70499 (h!76947 (t!384687 (t!384687 s1!1971))) (++!16624 (t!384687 (t!384687 (t!384687 s1!1971))) s2!1849)))))

(declare-fun e!4353326 () Bool)

(declare-fun lt!2589987 () List!70623)

(declare-fun b!7259901 () Bool)

(assert (=> b!7259901 (= e!4353326 (or (not (= s2!1849 Nil!70499)) (= lt!2589987 (t!384687 (t!384687 s1!1971)))))))

(declare-fun b!7259898 () Bool)

(assert (=> b!7259898 (= e!4353325 s2!1849)))

(declare-fun d!2258581 () Bool)

(assert (=> d!2258581 e!4353326))

(declare-fun res!2943700 () Bool)

(assert (=> d!2258581 (=> (not res!2943700) (not e!4353326))))

(assert (=> d!2258581 (= res!2943700 (= (content!14677 lt!2589987) ((_ map or) (content!14677 (t!384687 (t!384687 s1!1971))) (content!14677 s2!1849))))))

(assert (=> d!2258581 (= lt!2589987 e!4353325)))

(declare-fun c!1350528 () Bool)

(assert (=> d!2258581 (= c!1350528 ((_ is Nil!70499) (t!384687 (t!384687 s1!1971))))))

(assert (=> d!2258581 (= (++!16624 (t!384687 (t!384687 s1!1971)) s2!1849) lt!2589987)))

(declare-fun b!7259900 () Bool)

(declare-fun res!2943699 () Bool)

(assert (=> b!7259900 (=> (not res!2943699) (not e!4353326))))

(assert (=> b!7259900 (= res!2943699 (= (size!41760 lt!2589987) (+ (size!41760 (t!384687 (t!384687 s1!1971))) (size!41760 s2!1849))))))

(assert (= (and d!2258581 c!1350528) b!7259898))

(assert (= (and d!2258581 (not c!1350528)) b!7259899))

(assert (= (and d!2258581 res!2943700) b!7259900))

(assert (= (and b!7259900 res!2943699) b!7259901))

(declare-fun m!7944056 () Bool)

(assert (=> b!7259899 m!7944056))

(declare-fun m!7944058 () Bool)

(assert (=> d!2258581 m!7944058))

(declare-fun m!7944060 () Bool)

(assert (=> d!2258581 m!7944060))

(assert (=> d!2258581 m!7942976))

(declare-fun m!7944062 () Bool)

(assert (=> b!7259900 m!7944062))

(declare-fun m!7944064 () Bool)

(assert (=> b!7259900 m!7944064))

(assert (=> b!7259900 m!7942982))

(assert (=> b!7259314 d!2258581))

(declare-fun d!2258583 () Bool)

(assert (=> d!2258583 (= (isEmpty!40598 (t!384687 s1!1971)) ((_ is Nil!70499) (t!384687 s1!1971)))))

(assert (=> d!2258079 d!2258583))

(declare-fun d!2258585 () Bool)

(declare-fun c!1350529 () Bool)

(assert (=> d!2258585 (= c!1350529 (isEmpty!40598 (tail!14387 (t!384687 s1!1971))))))

(declare-fun e!4353327 () Bool)

(assert (=> d!2258585 (= (matchZipper!3591 (derivationStepZipper!3459 lt!2589788 (head!14933 (t!384687 s1!1971))) (tail!14387 (t!384687 s1!1971))) e!4353327)))

(declare-fun b!7259902 () Bool)

(assert (=> b!7259902 (= e!4353327 (nullableZipper!2936 (derivationStepZipper!3459 lt!2589788 (head!14933 (t!384687 s1!1971)))))))

(declare-fun b!7259903 () Bool)

(assert (=> b!7259903 (= e!4353327 (matchZipper!3591 (derivationStepZipper!3459 (derivationStepZipper!3459 lt!2589788 (head!14933 (t!384687 s1!1971))) (head!14933 (tail!14387 (t!384687 s1!1971)))) (tail!14387 (tail!14387 (t!384687 s1!1971)))))))

(assert (= (and d!2258585 c!1350529) b!7259902))

(assert (= (and d!2258585 (not c!1350529)) b!7259903))

(assert (=> d!2258585 m!7943074))

(assert (=> d!2258585 m!7944030))

(assert (=> b!7259902 m!7943094))

(declare-fun m!7944066 () Bool)

(assert (=> b!7259902 m!7944066))

(assert (=> b!7259903 m!7943074))

(assert (=> b!7259903 m!7944034))

(assert (=> b!7259903 m!7943094))

(assert (=> b!7259903 m!7944034))

(declare-fun m!7944068 () Bool)

(assert (=> b!7259903 m!7944068))

(assert (=> b!7259903 m!7943074))

(assert (=> b!7259903 m!7944038))

(assert (=> b!7259903 m!7944068))

(assert (=> b!7259903 m!7944038))

(declare-fun m!7944070 () Bool)

(assert (=> b!7259903 m!7944070))

(assert (=> b!7259306 d!2258585))

(declare-fun bs!1909010 () Bool)

(declare-fun d!2258587 () Bool)

(assert (= bs!1909010 (and d!2258587 d!2258455)))

(declare-fun lambda!446223 () Int)

(assert (=> bs!1909010 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589806)) (= lambda!446223 lambda!446200))))

(declare-fun bs!1909011 () Bool)

(assert (= bs!1909011 (and d!2258587 d!2258499)))

(assert (=> bs!1909011 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 s1!1971)) (= lambda!446223 lambda!446206))))

(declare-fun bs!1909012 () Bool)

(assert (= bs!1909012 (and d!2258587 b!7259019)))

(assert (=> bs!1909012 (= (= (head!14933 (t!384687 s1!1971)) (h!76947 s1!1971)) (= lambda!446223 lambda!446100))))

(declare-fun bs!1909013 () Bool)

(assert (= bs!1909013 (and d!2258587 d!2258471)))

(assert (=> bs!1909013 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 s2!1849)) (= lambda!446223 lambda!446202))))

(declare-fun bs!1909014 () Bool)

(assert (= bs!1909014 (and d!2258587 d!2258565)))

(assert (=> bs!1909014 (= lambda!446223 lambda!446220)))

(declare-fun bs!1909015 () Bool)

(assert (= bs!1909015 (and d!2258587 d!2258509)))

(assert (=> bs!1909015 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589806)) (= lambda!446223 lambda!446208))))

(declare-fun bs!1909016 () Bool)

(assert (= bs!1909016 (and d!2258587 d!2258533)))

(assert (=> bs!1909016 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589806)) (= lambda!446223 lambda!446215))))

(declare-fun bs!1909017 () Bool)

(assert (= bs!1909017 (and d!2258587 d!2258553)))

(assert (=> bs!1909017 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589806)) (= lambda!446223 lambda!446219))))

(declare-fun bs!1909018 () Bool)

(assert (= bs!1909018 (and d!2258587 d!2258075)))

(assert (=> bs!1909018 (= (= (head!14933 (t!384687 s1!1971)) (h!76947 s1!1971)) (= lambda!446223 lambda!446143))))

(declare-fun bs!1909019 () Bool)

(assert (= bs!1909019 (and d!2258587 d!2258579)))

(assert (=> bs!1909019 (= lambda!446223 lambda!446222)))

(declare-fun bs!1909020 () Bool)

(assert (= bs!1909020 (and d!2258587 d!2258081)))

(assert (=> bs!1909020 (= (= (head!14933 (t!384687 s1!1971)) (h!76947 s1!1971)) (= lambda!446223 lambda!446147))))

(assert (=> d!2258587 true))

(assert (=> d!2258587 (= (derivationStepZipper!3459 lt!2589788 (head!14933 (t!384687 s1!1971))) (flatMap!2846 lt!2589788 lambda!446223))))

(declare-fun bs!1909021 () Bool)

(assert (= bs!1909021 d!2258587))

(declare-fun m!7944072 () Bool)

(assert (=> bs!1909021 m!7944072))

(assert (=> b!7259306 d!2258587))

(assert (=> b!7259306 d!2258567))

(assert (=> b!7259306 d!2258569))

(declare-fun bs!1909022 () Bool)

(declare-fun d!2258589 () Bool)

(assert (= bs!1909022 (and d!2258589 d!2258479)))

(declare-fun lambda!446224 () Int)

(assert (=> bs!1909022 (= lambda!446224 lambda!446203)))

(declare-fun bs!1909023 () Bool)

(assert (= bs!1909023 (and d!2258589 d!2258537)))

(assert (=> bs!1909023 (= lambda!446224 lambda!446216)))

(declare-fun bs!1909024 () Bool)

(assert (= bs!1909024 (and d!2258589 d!2258073)))

(assert (=> bs!1909024 (not (= lambda!446224 lambda!446140))))

(declare-fun bs!1909025 () Bool)

(assert (= bs!1909025 (and d!2258589 d!2258027)))

(assert (=> bs!1909025 (not (= lambda!446224 lambda!446134))))

(declare-fun bs!1909026 () Bool)

(assert (= bs!1909026 (and d!2258589 d!2258543)))

(assert (=> bs!1909026 (not (= lambda!446224 lambda!446218))))

(declare-fun bs!1909027 () Bool)

(assert (= bs!1909027 (and d!2258589 d!2258505)))

(assert (=> bs!1909027 (= lambda!446224 lambda!446207)))

(declare-fun bs!1909028 () Bool)

(assert (= bs!1909028 (and d!2258589 d!2258411)))

(assert (=> bs!1909028 (= lambda!446224 lambda!446197)))

(declare-fun bs!1909029 () Bool)

(assert (= bs!1909029 (and d!2258589 d!2258539)))

(assert (=> bs!1909029 (= lambda!446224 lambda!446217)))

(declare-fun bs!1909030 () Bool)

(assert (= bs!1909030 (and d!2258589 d!2258417)))

(assert (=> bs!1909030 (not (= lambda!446224 lambda!446198))))

(declare-fun bs!1909031 () Bool)

(assert (= bs!1909031 (and d!2258589 b!7259025)))

(assert (=> bs!1909031 (not (= lambda!446224 lambda!446099))))

(declare-fun bs!1909032 () Bool)

(assert (= bs!1909032 (and d!2258589 d!2258449)))

(assert (=> bs!1909032 (= lambda!446224 lambda!446199)))

(declare-fun bs!1909033 () Bool)

(assert (= bs!1909033 (and d!2258589 d!2258511)))

(assert (=> bs!1909033 (= lambda!446224 lambda!446209)))

(declare-fun bs!1909034 () Bool)

(assert (= bs!1909034 (and d!2258589 d!2258575)))

(assert (=> bs!1909034 (= lambda!446224 lambda!446221)))

(declare-fun bs!1909035 () Bool)

(assert (= bs!1909035 (and d!2258589 d!2258495)))

(assert (=> bs!1909035 (= lambda!446224 lambda!446205)))

(declare-fun bs!1909036 () Bool)

(assert (= bs!1909036 (and d!2258589 b!7259019)))

(assert (=> bs!1909036 (not (= lambda!446224 lambda!446101))))

(declare-fun bs!1909037 () Bool)

(assert (= bs!1909037 (and d!2258589 d!2258485)))

(assert (=> bs!1909037 (= lambda!446224 lambda!446204)))

(declare-fun bs!1909038 () Bool)

(assert (= bs!1909038 (and d!2258589 d!2258463)))

(assert (=> bs!1909038 (= lambda!446224 lambda!446201)))

(declare-fun bs!1909039 () Bool)

(assert (= bs!1909039 (and d!2258589 d!2258077)))

(assert (=> bs!1909039 (not (= lambda!446224 lambda!446146))))

(assert (=> d!2258589 (= (nullableZipper!2936 ((_ map or) lt!2589817 lt!2589788)) (exists!4440 ((_ map or) lt!2589817 lt!2589788) lambda!446224))))

(declare-fun bs!1909040 () Bool)

(assert (= bs!1909040 d!2258589))

(declare-fun m!7944074 () Bool)

(assert (=> bs!1909040 m!7944074))

(assert (=> b!7259302 d!2258589))

(assert (=> d!2258041 d!2258583))

(assert (=> d!2258049 d!2258583))

(declare-fun d!2258591 () Bool)

(assert (=> d!2258591 (= (isEmpty!40598 lt!2589811) ((_ is Nil!70499) lt!2589811))))

(assert (=> d!2257997 d!2258591))

(assert (=> b!7259289 d!2258051))

(declare-fun b!7259904 () Bool)

(declare-fun e!4353329 () List!70624)

(assert (=> b!7259904 (= e!4353329 (exprs!8121 ct2!328))))

(declare-fun b!7259906 () Bool)

(declare-fun res!2943701 () Bool)

(declare-fun e!4353328 () Bool)

(assert (=> b!7259906 (=> (not res!2943701) (not e!4353328))))

(declare-fun lt!2589988 () List!70624)

(assert (=> b!7259906 (= res!2943701 (= (size!41761 lt!2589988) (+ (size!41761 (t!384688 (exprs!8121 lt!2589778))) (size!41761 (exprs!8121 ct2!328)))))))

(declare-fun b!7259907 () Bool)

(assert (=> b!7259907 (= e!4353328 (or (not (= (exprs!8121 ct2!328) Nil!70500)) (= lt!2589988 (t!384688 (exprs!8121 lt!2589778)))))))

(declare-fun d!2258593 () Bool)

(assert (=> d!2258593 e!4353328))

(declare-fun res!2943702 () Bool)

(assert (=> d!2258593 (=> (not res!2943702) (not e!4353328))))

(assert (=> d!2258593 (= res!2943702 (= (content!14678 lt!2589988) ((_ map or) (content!14678 (t!384688 (exprs!8121 lt!2589778))) (content!14678 (exprs!8121 ct2!328)))))))

(assert (=> d!2258593 (= lt!2589988 e!4353329)))

(declare-fun c!1350530 () Bool)

(assert (=> d!2258593 (= c!1350530 ((_ is Nil!70500) (t!384688 (exprs!8121 lt!2589778))))))

(assert (=> d!2258593 (= (++!16625 (t!384688 (exprs!8121 lt!2589778)) (exprs!8121 ct2!328)) lt!2589988)))

(declare-fun b!7259905 () Bool)

(assert (=> b!7259905 (= e!4353329 (Cons!70500 (h!76948 (t!384688 (exprs!8121 lt!2589778))) (++!16625 (t!384688 (t!384688 (exprs!8121 lt!2589778))) (exprs!8121 ct2!328))))))

(assert (= (and d!2258593 c!1350530) b!7259904))

(assert (= (and d!2258593 (not c!1350530)) b!7259905))

(assert (= (and d!2258593 res!2943702) b!7259906))

(assert (= (and b!7259906 res!2943701) b!7259907))

(declare-fun m!7944076 () Bool)

(assert (=> b!7259906 m!7944076))

(declare-fun m!7944078 () Bool)

(assert (=> b!7259906 m!7944078))

(assert (=> b!7259906 m!7943148))

(declare-fun m!7944080 () Bool)

(assert (=> d!2258593 m!7944080))

(assert (=> d!2258593 m!7943808))

(assert (=> d!2258593 m!7943154))

(declare-fun m!7944082 () Bool)

(assert (=> b!7259905 m!7944082))

(assert (=> b!7259331 d!2258593))

(declare-fun d!2258595 () Bool)

(declare-fun c!1350531 () Bool)

(assert (=> d!2258595 (= c!1350531 (isEmpty!40598 (tail!14387 lt!2589806)))))

(declare-fun e!4353330 () Bool)

(assert (=> d!2258595 (= (matchZipper!3591 (derivationStepZipper!3459 lt!2589796 (head!14933 lt!2589806)) (tail!14387 lt!2589806)) e!4353330)))

(declare-fun b!7259908 () Bool)

(assert (=> b!7259908 (= e!4353330 (nullableZipper!2936 (derivationStepZipper!3459 lt!2589796 (head!14933 lt!2589806))))))

(declare-fun b!7259909 () Bool)

(assert (=> b!7259909 (= e!4353330 (matchZipper!3591 (derivationStepZipper!3459 (derivationStepZipper!3459 lt!2589796 (head!14933 lt!2589806)) (head!14933 (tail!14387 lt!2589806))) (tail!14387 (tail!14387 lt!2589806))))))

(assert (= (and d!2258595 c!1350531) b!7259908))

(assert (= (and d!2258595 (not c!1350531)) b!7259909))

(assert (=> d!2258595 m!7942996))

(assert (=> d!2258595 m!7943844))

(assert (=> b!7259908 m!7943054))

(declare-fun m!7944084 () Bool)

(assert (=> b!7259908 m!7944084))

(assert (=> b!7259909 m!7942996))

(assert (=> b!7259909 m!7943848))

(assert (=> b!7259909 m!7943054))

(assert (=> b!7259909 m!7943848))

(declare-fun m!7944086 () Bool)

(assert (=> b!7259909 m!7944086))

(assert (=> b!7259909 m!7942996))

(assert (=> b!7259909 m!7943852))

(assert (=> b!7259909 m!7944086))

(assert (=> b!7259909 m!7943852))

(declare-fun m!7944088 () Bool)

(assert (=> b!7259909 m!7944088))

(assert (=> b!7259286 d!2258595))

(declare-fun bs!1909041 () Bool)

(declare-fun d!2258597 () Bool)

(assert (= bs!1909041 (and d!2258597 d!2258455)))

(declare-fun lambda!446225 () Int)

(assert (=> bs!1909041 (= lambda!446225 lambda!446200)))

(declare-fun bs!1909042 () Bool)

(assert (= bs!1909042 (and d!2258597 b!7259019)))

(assert (=> bs!1909042 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446225 lambda!446100))))

(declare-fun bs!1909043 () Bool)

(assert (= bs!1909043 (and d!2258597 d!2258471)))

(assert (=> bs!1909043 (= (= (head!14933 lt!2589806) (head!14933 s2!1849)) (= lambda!446225 lambda!446202))))

(declare-fun bs!1909044 () Bool)

(assert (= bs!1909044 (and d!2258597 d!2258565)))

(assert (=> bs!1909044 (= (= (head!14933 lt!2589806) (head!14933 (t!384687 s1!1971))) (= lambda!446225 lambda!446220))))

(declare-fun bs!1909045 () Bool)

(assert (= bs!1909045 (and d!2258597 d!2258509)))

(assert (=> bs!1909045 (= lambda!446225 lambda!446208)))

(declare-fun bs!1909046 () Bool)

(assert (= bs!1909046 (and d!2258597 d!2258533)))

(assert (=> bs!1909046 (= lambda!446225 lambda!446215)))

(declare-fun bs!1909047 () Bool)

(assert (= bs!1909047 (and d!2258597 d!2258553)))

(assert (=> bs!1909047 (= lambda!446225 lambda!446219)))

(declare-fun bs!1909048 () Bool)

(assert (= bs!1909048 (and d!2258597 d!2258075)))

(assert (=> bs!1909048 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446225 lambda!446143))))

(declare-fun bs!1909049 () Bool)

(assert (= bs!1909049 (and d!2258597 d!2258499)))

(assert (=> bs!1909049 (= (= (head!14933 lt!2589806) (head!14933 s1!1971)) (= lambda!446225 lambda!446206))))

(declare-fun bs!1909050 () Bool)

(assert (= bs!1909050 (and d!2258597 d!2258587)))

(assert (=> bs!1909050 (= (= (head!14933 lt!2589806) (head!14933 (t!384687 s1!1971))) (= lambda!446225 lambda!446223))))

(declare-fun bs!1909051 () Bool)

(assert (= bs!1909051 (and d!2258597 d!2258579)))

(assert (=> bs!1909051 (= (= (head!14933 lt!2589806) (head!14933 (t!384687 s1!1971))) (= lambda!446225 lambda!446222))))

(declare-fun bs!1909052 () Bool)

(assert (= bs!1909052 (and d!2258597 d!2258081)))

(assert (=> bs!1909052 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446225 lambda!446147))))

(assert (=> d!2258597 true))

(assert (=> d!2258597 (= (derivationStepZipper!3459 lt!2589796 (head!14933 lt!2589806)) (flatMap!2846 lt!2589796 lambda!446225))))

(declare-fun bs!1909053 () Bool)

(assert (= bs!1909053 d!2258597))

(declare-fun m!7944090 () Bool)

(assert (=> bs!1909053 m!7944090))

(assert (=> b!7259286 d!2258597))

(assert (=> b!7259286 d!2258457))

(assert (=> b!7259286 d!2258459))

(declare-fun d!2258599 () Bool)

(declare-fun res!2943703 () Bool)

(declare-fun e!4353331 () Bool)

(assert (=> d!2258599 (=> res!2943703 e!4353331)))

(assert (=> d!2258599 (= res!2943703 ((_ is Nil!70500) (exprs!8121 ct1!232)))))

(assert (=> d!2258599 (= (forall!17537 (exprs!8121 ct1!232) lambda!446150) e!4353331)))

(declare-fun b!7259910 () Bool)

(declare-fun e!4353332 () Bool)

(assert (=> b!7259910 (= e!4353331 e!4353332)))

(declare-fun res!2943704 () Bool)

(assert (=> b!7259910 (=> (not res!2943704) (not e!4353332))))

(assert (=> b!7259910 (= res!2943704 (dynLambda!28816 lambda!446150 (h!76948 (exprs!8121 ct1!232))))))

(declare-fun b!7259911 () Bool)

(assert (=> b!7259911 (= e!4353332 (forall!17537 (t!384688 (exprs!8121 ct1!232)) lambda!446150))))

(assert (= (and d!2258599 (not res!2943703)) b!7259910))

(assert (= (and b!7259910 res!2943704) b!7259911))

(declare-fun b_lambda!279233 () Bool)

(assert (=> (not b_lambda!279233) (not b!7259910)))

(declare-fun m!7944092 () Bool)

(assert (=> b!7259910 m!7944092))

(declare-fun m!7944094 () Bool)

(assert (=> b!7259911 m!7944094))

(assert (=> d!2258085 d!2258599))

(assert (=> b!7259234 d!2258059))

(declare-fun d!2258601 () Bool)

(declare-fun c!1350532 () Bool)

(assert (=> d!2258601 (= c!1350532 ((_ is Nil!70499) lt!2589909))))

(declare-fun e!4353333 () (InoxSet C!37636))

(assert (=> d!2258601 (= (content!14677 lt!2589909) e!4353333)))

(declare-fun b!7259912 () Bool)

(assert (=> b!7259912 (= e!4353333 ((as const (Array C!37636 Bool)) false))))

(declare-fun b!7259913 () Bool)

(assert (=> b!7259913 (= e!4353333 ((_ map or) (store ((as const (Array C!37636 Bool)) false) (h!76947 lt!2589909) true) (content!14677 (t!384687 lt!2589909))))))

(assert (= (and d!2258601 c!1350532) b!7259912))

(assert (= (and d!2258601 (not c!1350532)) b!7259913))

(declare-fun m!7944096 () Bool)

(assert (=> b!7259913 m!7944096))

(declare-fun m!7944098 () Bool)

(assert (=> b!7259913 m!7944098))

(assert (=> d!2258059 d!2258601))

(declare-fun d!2258603 () Bool)

(declare-fun c!1350533 () Bool)

(assert (=> d!2258603 (= c!1350533 ((_ is Nil!70499) (t!384687 s1!1971)))))

(declare-fun e!4353334 () (InoxSet C!37636))

(assert (=> d!2258603 (= (content!14677 (t!384687 s1!1971)) e!4353334)))

(declare-fun b!7259914 () Bool)

(assert (=> b!7259914 (= e!4353334 ((as const (Array C!37636 Bool)) false))))

(declare-fun b!7259915 () Bool)

(assert (=> b!7259915 (= e!4353334 ((_ map or) (store ((as const (Array C!37636 Bool)) false) (h!76947 (t!384687 s1!1971)) true) (content!14677 (t!384687 (t!384687 s1!1971)))))))

(assert (= (and d!2258603 c!1350533) b!7259914))

(assert (= (and d!2258603 (not c!1350533)) b!7259915))

(declare-fun m!7944100 () Bool)

(assert (=> b!7259915 m!7944100))

(assert (=> b!7259915 m!7944060))

(assert (=> d!2258059 d!2258603))

(assert (=> d!2258059 d!2258445))

(declare-fun d!2258605 () Bool)

(declare-fun res!2943709 () Bool)

(declare-fun e!4353339 () Bool)

(assert (=> d!2258605 (=> res!2943709 e!4353339)))

(assert (=> d!2258605 (= res!2943709 ((_ is Nil!70501) lt!2589775))))

(assert (=> d!2258605 (= (forall!17538 lt!2589775 lambda!446146) e!4353339)))

(declare-fun b!7259920 () Bool)

(declare-fun e!4353340 () Bool)

(assert (=> b!7259920 (= e!4353339 e!4353340)))

(declare-fun res!2943710 () Bool)

(assert (=> b!7259920 (=> (not res!2943710) (not e!4353340))))

(assert (=> b!7259920 (= res!2943710 (dynLambda!28813 lambda!446146 (h!76949 lt!2589775)))))

(declare-fun b!7259921 () Bool)

(assert (=> b!7259921 (= e!4353340 (forall!17538 (t!384689 lt!2589775) lambda!446146))))

(assert (= (and d!2258605 (not res!2943709)) b!7259920))

(assert (= (and b!7259920 res!2943710) b!7259921))

(declare-fun b_lambda!279235 () Bool)

(assert (=> (not b_lambda!279235) (not b!7259920)))

(declare-fun m!7944102 () Bool)

(assert (=> b!7259920 m!7944102))

(declare-fun m!7944104 () Bool)

(assert (=> b!7259921 m!7944104))

(assert (=> d!2258077 d!2258605))

(declare-fun d!2258607 () Bool)

(declare-fun c!1350534 () Bool)

(assert (=> d!2258607 (= c!1350534 (isEmpty!40598 (tail!14387 lt!2589811)))))

(declare-fun e!4353341 () Bool)

(assert (=> d!2258607 (= (matchZipper!3591 (derivationStepZipper!3459 lt!2589797 (head!14933 lt!2589811)) (tail!14387 lt!2589811)) e!4353341)))

(declare-fun b!7259922 () Bool)

(assert (=> b!7259922 (= e!4353341 (nullableZipper!2936 (derivationStepZipper!3459 lt!2589797 (head!14933 lt!2589811))))))

(declare-fun b!7259923 () Bool)

(assert (=> b!7259923 (= e!4353341 (matchZipper!3591 (derivationStepZipper!3459 (derivationStepZipper!3459 lt!2589797 (head!14933 lt!2589811)) (head!14933 (tail!14387 lt!2589811))) (tail!14387 (tail!14387 lt!2589811))))))

(assert (= (and d!2258607 c!1350534) b!7259922))

(assert (= (and d!2258607 (not c!1350534)) b!7259923))

(assert (=> d!2258607 m!7942590))

(declare-fun m!7944106 () Bool)

(assert (=> d!2258607 m!7944106))

(assert (=> b!7259922 m!7942958))

(declare-fun m!7944108 () Bool)

(assert (=> b!7259922 m!7944108))

(assert (=> b!7259923 m!7942590))

(declare-fun m!7944110 () Bool)

(assert (=> b!7259923 m!7944110))

(assert (=> b!7259923 m!7942958))

(assert (=> b!7259923 m!7944110))

(declare-fun m!7944112 () Bool)

(assert (=> b!7259923 m!7944112))

(assert (=> b!7259923 m!7942590))

(declare-fun m!7944114 () Bool)

(assert (=> b!7259923 m!7944114))

(assert (=> b!7259923 m!7944112))

(assert (=> b!7259923 m!7944114))

(declare-fun m!7944116 () Bool)

(assert (=> b!7259923 m!7944116))

(assert (=> b!7259221 d!2258607))

(declare-fun bs!1909054 () Bool)

(declare-fun d!2258609 () Bool)

(assert (= bs!1909054 (and d!2258609 d!2258455)))

(declare-fun lambda!446226 () Int)

(assert (=> bs!1909054 (= (= (head!14933 lt!2589811) (head!14933 lt!2589806)) (= lambda!446226 lambda!446200))))

(declare-fun bs!1909055 () Bool)

(assert (= bs!1909055 (and d!2258609 d!2258471)))

(assert (=> bs!1909055 (= (= (head!14933 lt!2589811) (head!14933 s2!1849)) (= lambda!446226 lambda!446202))))

(declare-fun bs!1909056 () Bool)

(assert (= bs!1909056 (and d!2258609 d!2258565)))

(assert (=> bs!1909056 (= (= (head!14933 lt!2589811) (head!14933 (t!384687 s1!1971))) (= lambda!446226 lambda!446220))))

(declare-fun bs!1909057 () Bool)

(assert (= bs!1909057 (and d!2258609 d!2258509)))

(assert (=> bs!1909057 (= (= (head!14933 lt!2589811) (head!14933 lt!2589806)) (= lambda!446226 lambda!446208))))

(declare-fun bs!1909058 () Bool)

(assert (= bs!1909058 (and d!2258609 d!2258533)))

(assert (=> bs!1909058 (= (= (head!14933 lt!2589811) (head!14933 lt!2589806)) (= lambda!446226 lambda!446215))))

(declare-fun bs!1909059 () Bool)

(assert (= bs!1909059 (and d!2258609 d!2258553)))

(assert (=> bs!1909059 (= (= (head!14933 lt!2589811) (head!14933 lt!2589806)) (= lambda!446226 lambda!446219))))

(declare-fun bs!1909060 () Bool)

(assert (= bs!1909060 (and d!2258609 d!2258075)))

(assert (=> bs!1909060 (= (= (head!14933 lt!2589811) (h!76947 s1!1971)) (= lambda!446226 lambda!446143))))

(declare-fun bs!1909061 () Bool)

(assert (= bs!1909061 (and d!2258609 d!2258499)))

(assert (=> bs!1909061 (= (= (head!14933 lt!2589811) (head!14933 s1!1971)) (= lambda!446226 lambda!446206))))

(declare-fun bs!1909062 () Bool)

(assert (= bs!1909062 (and d!2258609 d!2258587)))

(assert (=> bs!1909062 (= (= (head!14933 lt!2589811) (head!14933 (t!384687 s1!1971))) (= lambda!446226 lambda!446223))))

(declare-fun bs!1909063 () Bool)

(assert (= bs!1909063 (and d!2258609 b!7259019)))

(assert (=> bs!1909063 (= (= (head!14933 lt!2589811) (h!76947 s1!1971)) (= lambda!446226 lambda!446100))))

(declare-fun bs!1909064 () Bool)

(assert (= bs!1909064 (and d!2258609 d!2258597)))

(assert (=> bs!1909064 (= (= (head!14933 lt!2589811) (head!14933 lt!2589806)) (= lambda!446226 lambda!446225))))

(declare-fun bs!1909065 () Bool)

(assert (= bs!1909065 (and d!2258609 d!2258579)))

(assert (=> bs!1909065 (= (= (head!14933 lt!2589811) (head!14933 (t!384687 s1!1971))) (= lambda!446226 lambda!446222))))

(declare-fun bs!1909066 () Bool)

(assert (= bs!1909066 (and d!2258609 d!2258081)))

(assert (=> bs!1909066 (= (= (head!14933 lt!2589811) (h!76947 s1!1971)) (= lambda!446226 lambda!446147))))

(assert (=> d!2258609 true))

(assert (=> d!2258609 (= (derivationStepZipper!3459 lt!2589797 (head!14933 lt!2589811)) (flatMap!2846 lt!2589797 lambda!446226))))

(declare-fun bs!1909067 () Bool)

(assert (= bs!1909067 d!2258609))

(declare-fun m!7944118 () Bool)

(assert (=> bs!1909067 m!7944118))

(assert (=> b!7259221 d!2258609))

(declare-fun d!2258611 () Bool)

(assert (=> d!2258611 (= (head!14933 lt!2589811) (h!76947 lt!2589811))))

(assert (=> b!7259221 d!2258611))

(assert (=> b!7259221 d!2258029))

(assert (=> b!7259304 d!2258049))

(declare-fun d!2258613 () Bool)

(declare-fun c!1350535 () Bool)

(assert (=> d!2258613 (= c!1350535 (isEmpty!40598 (t!384687 s1!1971)))))

(declare-fun e!4353342 () Bool)

(assert (=> d!2258613 (= (matchZipper!3591 (store ((as const (Array Context!15242 Bool)) false) lt!2589912 true) (t!384687 s1!1971)) e!4353342)))

(declare-fun b!7259924 () Bool)

(assert (=> b!7259924 (= e!4353342 (nullableZipper!2936 (store ((as const (Array Context!15242 Bool)) false) lt!2589912 true)))))

(declare-fun b!7259925 () Bool)

(assert (=> b!7259925 (= e!4353342 (matchZipper!3591 (derivationStepZipper!3459 (store ((as const (Array Context!15242 Bool)) false) lt!2589912 true) (head!14933 (t!384687 s1!1971))) (tail!14387 (t!384687 s1!1971))))))

(assert (= (and d!2258613 c!1350535) b!7259924))

(assert (= (and d!2258613 (not c!1350535)) b!7259925))

(assert (=> d!2258613 m!7943066))

(assert (=> b!7259924 m!7943234))

(declare-fun m!7944120 () Bool)

(assert (=> b!7259924 m!7944120))

(assert (=> b!7259925 m!7943070))

(assert (=> b!7259925 m!7943234))

(assert (=> b!7259925 m!7943070))

(declare-fun m!7944122 () Bool)

(assert (=> b!7259925 m!7944122))

(assert (=> b!7259925 m!7943074))

(assert (=> b!7259925 m!7944122))

(assert (=> b!7259925 m!7943074))

(declare-fun m!7944124 () Bool)

(assert (=> b!7259925 m!7944124))

(assert (=> bs!1908342 d!2258613))

(declare-fun d!2258615 () Bool)

(assert (=> d!2258615 (= (nullable!7941 (h!76948 (exprs!8121 lt!2589780))) (nullableFct!3123 (h!76948 (exprs!8121 lt!2589780))))))

(declare-fun bs!1909068 () Bool)

(assert (= bs!1909068 d!2258615))

(declare-fun m!7944126 () Bool)

(assert (=> bs!1909068 m!7944126))

(assert (=> b!7259294 d!2258615))

(assert (=> d!2258047 d!2258045))

(assert (=> d!2258047 d!2258041))

(declare-fun d!2258617 () Bool)

(declare-fun e!4353343 () Bool)

(assert (=> d!2258617 (= (matchZipper!3591 ((_ map or) lt!2589817 lt!2589788) (t!384687 s1!1971)) e!4353343)))

(declare-fun res!2943711 () Bool)

(assert (=> d!2258617 (=> res!2943711 e!4353343)))

(assert (=> d!2258617 (= res!2943711 (matchZipper!3591 lt!2589817 (t!384687 s1!1971)))))

(assert (=> d!2258617 true))

(declare-fun _$48!2555 () Unit!163992)

(assert (=> d!2258617 (= (choose!56209 lt!2589817 lt!2589788 (t!384687 s1!1971)) _$48!2555)))

(declare-fun b!7259926 () Bool)

(assert (=> b!7259926 (= e!4353343 (matchZipper!3591 lt!2589788 (t!384687 s1!1971)))))

(assert (= (and d!2258617 (not res!2943711)) b!7259926))

(assert (=> d!2258617 m!7942558))

(assert (=> d!2258617 m!7942546))

(assert (=> b!7259926 m!7942512))

(assert (=> d!2258047 d!2258617))

(declare-fun c!1350538 () Bool)

(declare-fun call!661751 () List!70624)

(declare-fun c!1350537 () Bool)

(declare-fun bm!661743 () Bool)

(declare-fun c!1350540 () Bool)

(declare-fun call!661750 () (InoxSet Context!15242))

(assert (=> bm!661743 (= call!661750 (derivationStepZipperDown!2675 (ite c!1350537 (regOne!37875 (h!76948 (exprs!8121 lt!2589780))) (ite c!1350540 (regTwo!37874 (h!76948 (exprs!8121 lt!2589780))) (ite c!1350538 (regOne!37874 (h!76948 (exprs!8121 lt!2589780))) (reg!19010 (h!76948 (exprs!8121 lt!2589780)))))) (ite (or c!1350537 c!1350540) (Context!15243 (t!384688 (exprs!8121 lt!2589780))) (Context!15243 call!661751)) (h!76947 s1!1971)))))

(declare-fun bm!661744 () Bool)

(declare-fun call!661749 () (InoxSet Context!15242))

(declare-fun call!661753 () (InoxSet Context!15242))

(assert (=> bm!661744 (= call!661749 call!661753)))

(declare-fun b!7259927 () Bool)

(declare-fun e!4353349 () (InoxSet Context!15242))

(declare-fun e!4353347 () (InoxSet Context!15242))

(assert (=> b!7259927 (= e!4353349 e!4353347)))

(assert (=> b!7259927 (= c!1350537 ((_ is Union!18681) (h!76948 (exprs!8121 lt!2589780))))))

(declare-fun d!2258619 () Bool)

(declare-fun c!1350536 () Bool)

(assert (=> d!2258619 (= c!1350536 (and ((_ is ElementMatch!18681) (h!76948 (exprs!8121 lt!2589780))) (= (c!1350206 (h!76948 (exprs!8121 lt!2589780))) (h!76947 s1!1971))))))

(assert (=> d!2258619 (= (derivationStepZipperDown!2675 (h!76948 (exprs!8121 lt!2589780)) (Context!15243 (t!384688 (exprs!8121 lt!2589780))) (h!76947 s1!1971)) e!4353349)))

(declare-fun b!7259928 () Bool)

(declare-fun e!4353344 () Bool)

(assert (=> b!7259928 (= c!1350540 e!4353344)))

(declare-fun res!2943712 () Bool)

(assert (=> b!7259928 (=> (not res!2943712) (not e!4353344))))

(assert (=> b!7259928 (= res!2943712 ((_ is Concat!27526) (h!76948 (exprs!8121 lt!2589780))))))

(declare-fun e!4353348 () (InoxSet Context!15242))

(assert (=> b!7259928 (= e!4353347 e!4353348)))

(declare-fun b!7259929 () Bool)

(declare-fun call!661752 () (InoxSet Context!15242))

(assert (=> b!7259929 (= e!4353347 ((_ map or) call!661750 call!661752))))

(declare-fun bm!661745 () Bool)

(assert (=> bm!661745 (= call!661753 call!661750)))

(declare-fun b!7259930 () Bool)

(assert (=> b!7259930 (= e!4353344 (nullable!7941 (regOne!37874 (h!76948 (exprs!8121 lt!2589780)))))))

(declare-fun b!7259931 () Bool)

(declare-fun c!1350539 () Bool)

(assert (=> b!7259931 (= c!1350539 ((_ is Star!18681) (h!76948 (exprs!8121 lt!2589780))))))

(declare-fun e!4353345 () (InoxSet Context!15242))

(declare-fun e!4353346 () (InoxSet Context!15242))

(assert (=> b!7259931 (= e!4353345 e!4353346)))

(declare-fun bm!661746 () Bool)

(declare-fun call!661748 () List!70624)

(assert (=> bm!661746 (= call!661751 call!661748)))

(declare-fun bm!661747 () Bool)

(assert (=> bm!661747 (= call!661748 ($colon$colon!2938 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589780)))) (ite (or c!1350540 c!1350538) (regTwo!37874 (h!76948 (exprs!8121 lt!2589780))) (h!76948 (exprs!8121 lt!2589780)))))))

(declare-fun b!7259932 () Bool)

(assert (=> b!7259932 (= e!4353346 call!661749)))

(declare-fun b!7259933 () Bool)

(assert (=> b!7259933 (= e!4353345 call!661749)))

(declare-fun b!7259934 () Bool)

(assert (=> b!7259934 (= e!4353348 e!4353345)))

(assert (=> b!7259934 (= c!1350538 ((_ is Concat!27526) (h!76948 (exprs!8121 lt!2589780))))))

(declare-fun b!7259935 () Bool)

(assert (=> b!7259935 (= e!4353348 ((_ map or) call!661752 call!661753))))

(declare-fun b!7259936 () Bool)

(assert (=> b!7259936 (= e!4353346 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259937 () Bool)

(assert (=> b!7259937 (= e!4353349 (store ((as const (Array Context!15242 Bool)) false) (Context!15243 (t!384688 (exprs!8121 lt!2589780))) true))))

(declare-fun bm!661748 () Bool)

(assert (=> bm!661748 (= call!661752 (derivationStepZipperDown!2675 (ite c!1350537 (regTwo!37875 (h!76948 (exprs!8121 lt!2589780))) (regOne!37874 (h!76948 (exprs!8121 lt!2589780)))) (ite c!1350537 (Context!15243 (t!384688 (exprs!8121 lt!2589780))) (Context!15243 call!661748)) (h!76947 s1!1971)))))

(assert (= (and d!2258619 c!1350536) b!7259937))

(assert (= (and d!2258619 (not c!1350536)) b!7259927))

(assert (= (and b!7259927 c!1350537) b!7259929))

(assert (= (and b!7259927 (not c!1350537)) b!7259928))

(assert (= (and b!7259928 res!2943712) b!7259930))

(assert (= (and b!7259928 c!1350540) b!7259935))

(assert (= (and b!7259928 (not c!1350540)) b!7259934))

(assert (= (and b!7259934 c!1350538) b!7259933))

(assert (= (and b!7259934 (not c!1350538)) b!7259931))

(assert (= (and b!7259931 c!1350539) b!7259932))

(assert (= (and b!7259931 (not c!1350539)) b!7259936))

(assert (= (or b!7259933 b!7259932) bm!661746))

(assert (= (or b!7259933 b!7259932) bm!661744))

(assert (= (or b!7259935 bm!661746) bm!661747))

(assert (= (or b!7259935 bm!661744) bm!661745))

(assert (= (or b!7259929 b!7259935) bm!661748))

(assert (= (or b!7259929 bm!661745) bm!661743))

(declare-fun m!7944128 () Bool)

(assert (=> bm!661743 m!7944128))

(declare-fun m!7944130 () Bool)

(assert (=> b!7259937 m!7944130))

(declare-fun m!7944132 () Bool)

(assert (=> b!7259930 m!7944132))

(declare-fun m!7944134 () Bool)

(assert (=> bm!661747 m!7944134))

(declare-fun m!7944136 () Bool)

(assert (=> bm!661748 m!7944136))

(assert (=> bm!661637 d!2258619))

(assert (=> d!2258035 d!2258465))

(declare-fun b!7259938 () Bool)

(declare-fun call!661754 () (InoxSet Context!15242))

(declare-fun e!4353350 () (InoxSet Context!15242))

(assert (=> b!7259938 (= e!4353350 ((_ map or) call!661754 (derivationStepZipperUp!2505 (Context!15243 (t!384688 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 ct1!232)))))) (h!76947 s1!1971))))))

(declare-fun bm!661749 () Bool)

(assert (=> bm!661749 (= call!661754 (derivationStepZipperDown!2675 (h!76948 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 ct1!232))))) (Context!15243 (t!384688 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 ct1!232)))))) (h!76947 s1!1971)))))

(declare-fun b!7259939 () Bool)

(declare-fun e!4353352 () (InoxSet Context!15242))

(assert (=> b!7259939 (= e!4353352 call!661754)))

(declare-fun d!2258621 () Bool)

(declare-fun c!1350542 () Bool)

(declare-fun e!4353351 () Bool)

(assert (=> d!2258621 (= c!1350542 e!4353351)))

(declare-fun res!2943713 () Bool)

(assert (=> d!2258621 (=> (not res!2943713) (not e!4353351))))

(assert (=> d!2258621 (= res!2943713 ((_ is Cons!70500) (exprs!8121 (Context!15243 (t!384688 (exprs!8121 ct1!232))))))))

(assert (=> d!2258621 (= (derivationStepZipperUp!2505 (Context!15243 (t!384688 (exprs!8121 ct1!232))) (h!76947 s1!1971)) e!4353350)))

(declare-fun b!7259940 () Bool)

(assert (=> b!7259940 (= e!4353350 e!4353352)))

(declare-fun c!1350541 () Bool)

(assert (=> b!7259940 (= c!1350541 ((_ is Cons!70500) (exprs!8121 (Context!15243 (t!384688 (exprs!8121 ct1!232))))))))

(declare-fun b!7259941 () Bool)

(assert (=> b!7259941 (= e!4353352 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259942 () Bool)

(assert (=> b!7259942 (= e!4353351 (nullable!7941 (h!76948 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 ct1!232)))))))))

(assert (= (and d!2258621 res!2943713) b!7259942))

(assert (= (and d!2258621 c!1350542) b!7259938))

(assert (= (and d!2258621 (not c!1350542)) b!7259940))

(assert (= (and b!7259940 c!1350541) b!7259939))

(assert (= (and b!7259940 (not c!1350541)) b!7259941))

(assert (= (or b!7259938 b!7259939) bm!661749))

(declare-fun m!7944138 () Bool)

(assert (=> b!7259938 m!7944138))

(declare-fun m!7944140 () Bool)

(assert (=> bm!661749 m!7944140))

(declare-fun m!7944142 () Bool)

(assert (=> b!7259942 m!7944142))

(assert (=> b!7259245 d!2258621))

(declare-fun b!7259943 () Bool)

(declare-fun e!4353354 () List!70624)

(assert (=> b!7259943 (= e!4353354 (exprs!8121 ct2!328))))

(declare-fun b!7259945 () Bool)

(declare-fun res!2943714 () Bool)

(declare-fun e!4353353 () Bool)

(assert (=> b!7259945 (=> (not res!2943714) (not e!4353353))))

(declare-fun lt!2589989 () List!70624)

(assert (=> b!7259945 (= res!2943714 (= (size!41761 lt!2589989) (+ (size!41761 (t!384688 (exprs!8121 ct1!232))) (size!41761 (exprs!8121 ct2!328)))))))

(declare-fun b!7259946 () Bool)

(assert (=> b!7259946 (= e!4353353 (or (not (= (exprs!8121 ct2!328) Nil!70500)) (= lt!2589989 (t!384688 (exprs!8121 ct1!232)))))))

(declare-fun d!2258623 () Bool)

(assert (=> d!2258623 e!4353353))

(declare-fun res!2943715 () Bool)

(assert (=> d!2258623 (=> (not res!2943715) (not e!4353353))))

(assert (=> d!2258623 (= res!2943715 (= (content!14678 lt!2589989) ((_ map or) (content!14678 (t!384688 (exprs!8121 ct1!232))) (content!14678 (exprs!8121 ct2!328)))))))

(assert (=> d!2258623 (= lt!2589989 e!4353354)))

(declare-fun c!1350543 () Bool)

(assert (=> d!2258623 (= c!1350543 ((_ is Nil!70500) (t!384688 (exprs!8121 ct1!232))))))

(assert (=> d!2258623 (= (++!16625 (t!384688 (exprs!8121 ct1!232)) (exprs!8121 ct2!328)) lt!2589989)))

(declare-fun b!7259944 () Bool)

(assert (=> b!7259944 (= e!4353354 (Cons!70500 (h!76948 (t!384688 (exprs!8121 ct1!232))) (++!16625 (t!384688 (t!384688 (exprs!8121 ct1!232))) (exprs!8121 ct2!328))))))

(assert (= (and d!2258623 c!1350543) b!7259943))

(assert (= (and d!2258623 (not c!1350543)) b!7259944))

(assert (= (and d!2258623 res!2943715) b!7259945))

(assert (= (and b!7259945 res!2943714) b!7259946))

(declare-fun m!7944144 () Bool)

(assert (=> b!7259945 m!7944144))

(assert (=> b!7259945 m!7943798))

(assert (=> b!7259945 m!7943148))

(declare-fun m!7944146 () Bool)

(assert (=> d!2258623 m!7944146))

(declare-fun m!7944148 () Bool)

(assert (=> d!2258623 m!7944148))

(assert (=> d!2258623 m!7943154))

(declare-fun m!7944150 () Bool)

(assert (=> b!7259944 m!7944150))

(assert (=> b!7259344 d!2258623))

(declare-fun b!7259947 () Bool)

(declare-fun call!661755 () (InoxSet Context!15242))

(declare-fun e!4353355 () (InoxSet Context!15242))

(assert (=> b!7259947 (= e!4353355 ((_ map or) call!661755 (derivationStepZipperUp!2505 (Context!15243 (t!384688 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589777)))))) (h!76947 s1!1971))))))

(declare-fun bm!661750 () Bool)

(assert (=> bm!661750 (= call!661755 (derivationStepZipperDown!2675 (h!76948 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589777))))) (Context!15243 (t!384688 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589777)))))) (h!76947 s1!1971)))))

(declare-fun b!7259948 () Bool)

(declare-fun e!4353357 () (InoxSet Context!15242))

(assert (=> b!7259948 (= e!4353357 call!661755)))

(declare-fun d!2258625 () Bool)

(declare-fun c!1350545 () Bool)

(declare-fun e!4353356 () Bool)

(assert (=> d!2258625 (= c!1350545 e!4353356)))

(declare-fun res!2943716 () Bool)

(assert (=> d!2258625 (=> (not res!2943716) (not e!4353356))))

(assert (=> d!2258625 (= res!2943716 ((_ is Cons!70500) (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589777))))))))

(assert (=> d!2258625 (= (derivationStepZipperUp!2505 (Context!15243 (t!384688 (exprs!8121 lt!2589777))) (h!76947 s1!1971)) e!4353355)))

(declare-fun b!7259949 () Bool)

(assert (=> b!7259949 (= e!4353355 e!4353357)))

(declare-fun c!1350544 () Bool)

(assert (=> b!7259949 (= c!1350544 ((_ is Cons!70500) (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589777))))))))

(declare-fun b!7259950 () Bool)

(assert (=> b!7259950 (= e!4353357 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259951 () Bool)

(assert (=> b!7259951 (= e!4353356 (nullable!7941 (h!76948 (exprs!8121 (Context!15243 (t!384688 (exprs!8121 lt!2589777)))))))))

(assert (= (and d!2258625 res!2943716) b!7259951))

(assert (= (and d!2258625 c!1350545) b!7259947))

(assert (= (and d!2258625 (not c!1350545)) b!7259949))

(assert (= (and b!7259949 c!1350544) b!7259948))

(assert (= (and b!7259949 (not c!1350544)) b!7259950))

(assert (= (or b!7259947 b!7259948) bm!661750))

(declare-fun m!7944152 () Bool)

(assert (=> b!7259947 m!7944152))

(declare-fun m!7944154 () Bool)

(assert (=> bm!661750 m!7944154))

(declare-fun m!7944156 () Bool)

(assert (=> b!7259951 m!7944156))

(assert (=> b!7259297 d!2258625))

(declare-fun bs!1909069 () Bool)

(declare-fun d!2258627 () Bool)

(assert (= bs!1909069 (and d!2258627 d!2258479)))

(declare-fun lambda!446227 () Int)

(assert (=> bs!1909069 (not (= lambda!446227 lambda!446203))))

(declare-fun bs!1909070 () Bool)

(assert (= bs!1909070 (and d!2258627 d!2258073)))

(assert (=> bs!1909070 (not (= lambda!446227 lambda!446140))))

(declare-fun bs!1909071 () Bool)

(assert (= bs!1909071 (and d!2258627 d!2258027)))

(assert (=> bs!1909071 (not (= lambda!446227 lambda!446134))))

(declare-fun bs!1909072 () Bool)

(assert (= bs!1909072 (and d!2258627 d!2258543)))

(assert (=> bs!1909072 (= (= lambda!446140 lambda!446101) (= lambda!446227 lambda!446218))))

(declare-fun bs!1909073 () Bool)

(assert (= bs!1909073 (and d!2258627 d!2258505)))

(assert (=> bs!1909073 (not (= lambda!446227 lambda!446207))))

(declare-fun bs!1909074 () Bool)

(assert (= bs!1909074 (and d!2258627 d!2258411)))

(assert (=> bs!1909074 (not (= lambda!446227 lambda!446197))))

(declare-fun bs!1909075 () Bool)

(assert (= bs!1909075 (and d!2258627 d!2258539)))

(assert (=> bs!1909075 (not (= lambda!446227 lambda!446217))))

(declare-fun bs!1909076 () Bool)

(assert (= bs!1909076 (and d!2258627 d!2258589)))

(assert (=> bs!1909076 (not (= lambda!446227 lambda!446224))))

(declare-fun bs!1909077 () Bool)

(assert (= bs!1909077 (and d!2258627 d!2258537)))

(assert (=> bs!1909077 (not (= lambda!446227 lambda!446216))))

(declare-fun bs!1909078 () Bool)

(assert (= bs!1909078 (and d!2258627 d!2258417)))

(assert (=> bs!1909078 (= (= lambda!446140 lambda!446099) (= lambda!446227 lambda!446198))))

(declare-fun bs!1909079 () Bool)

(assert (= bs!1909079 (and d!2258627 b!7259025)))

(assert (=> bs!1909079 (not (= lambda!446227 lambda!446099))))

(declare-fun bs!1909080 () Bool)

(assert (= bs!1909080 (and d!2258627 d!2258449)))

(assert (=> bs!1909080 (not (= lambda!446227 lambda!446199))))

(declare-fun bs!1909081 () Bool)

(assert (= bs!1909081 (and d!2258627 d!2258511)))

(assert (=> bs!1909081 (not (= lambda!446227 lambda!446209))))

(declare-fun bs!1909082 () Bool)

(assert (= bs!1909082 (and d!2258627 d!2258575)))

(assert (=> bs!1909082 (not (= lambda!446227 lambda!446221))))

(declare-fun bs!1909083 () Bool)

(assert (= bs!1909083 (and d!2258627 d!2258495)))

(assert (=> bs!1909083 (not (= lambda!446227 lambda!446205))))

(declare-fun bs!1909084 () Bool)

(assert (= bs!1909084 (and d!2258627 b!7259019)))

(assert (=> bs!1909084 (not (= lambda!446227 lambda!446101))))

(declare-fun bs!1909085 () Bool)

(assert (= bs!1909085 (and d!2258627 d!2258485)))

(assert (=> bs!1909085 (not (= lambda!446227 lambda!446204))))

(declare-fun bs!1909086 () Bool)

(assert (= bs!1909086 (and d!2258627 d!2258463)))

(assert (=> bs!1909086 (not (= lambda!446227 lambda!446201))))

(declare-fun bs!1909087 () Bool)

(assert (= bs!1909087 (and d!2258627 d!2258077)))

(assert (=> bs!1909087 (= (= lambda!446140 lambda!446099) (= lambda!446227 lambda!446146))))

(assert (=> d!2258627 true))

(assert (=> d!2258627 (< (dynLambda!28814 order!29033 lambda!446140) (dynLambda!28814 order!29033 lambda!446227))))

(assert (=> d!2258627 (= (exists!4441 lt!2589775 lambda!446140) (not (forall!17538 lt!2589775 lambda!446227)))))

(declare-fun bs!1909088 () Bool)

(assert (= bs!1909088 d!2258627))

(declare-fun m!7944158 () Bool)

(assert (=> bs!1909088 m!7944158))

(assert (=> d!2258073 d!2258627))

(declare-fun bs!1909089 () Bool)

(declare-fun d!2258629 () Bool)

(assert (= bs!1909089 (and d!2258629 d!2258479)))

(declare-fun lambda!446230 () Int)

(assert (=> bs!1909089 (not (= lambda!446230 lambda!446203))))

(declare-fun bs!1909090 () Bool)

(assert (= bs!1909090 (and d!2258629 d!2258627)))

(assert (=> bs!1909090 (not (= lambda!446230 lambda!446227))))

(declare-fun bs!1909091 () Bool)

(assert (= bs!1909091 (and d!2258629 d!2258073)))

(assert (=> bs!1909091 (= lambda!446230 lambda!446140)))

(declare-fun bs!1909092 () Bool)

(assert (= bs!1909092 (and d!2258629 d!2258027)))

(assert (=> bs!1909092 (= (= (t!384687 s1!1971) lt!2589806) (= lambda!446230 lambda!446134))))

(declare-fun bs!1909093 () Bool)

(assert (= bs!1909093 (and d!2258629 d!2258543)))

(assert (=> bs!1909093 (not (= lambda!446230 lambda!446218))))

(declare-fun bs!1909094 () Bool)

(assert (= bs!1909094 (and d!2258629 d!2258505)))

(assert (=> bs!1909094 (not (= lambda!446230 lambda!446207))))

(declare-fun bs!1909095 () Bool)

(assert (= bs!1909095 (and d!2258629 d!2258411)))

(assert (=> bs!1909095 (not (= lambda!446230 lambda!446197))))

(declare-fun bs!1909096 () Bool)

(assert (= bs!1909096 (and d!2258629 d!2258539)))

(assert (=> bs!1909096 (not (= lambda!446230 lambda!446217))))

(declare-fun bs!1909097 () Bool)

(assert (= bs!1909097 (and d!2258629 d!2258589)))

(assert (=> bs!1909097 (not (= lambda!446230 lambda!446224))))

(declare-fun bs!1909098 () Bool)

(assert (= bs!1909098 (and d!2258629 d!2258537)))

(assert (=> bs!1909098 (not (= lambda!446230 lambda!446216))))

(declare-fun bs!1909099 () Bool)

(assert (= bs!1909099 (and d!2258629 d!2258417)))

(assert (=> bs!1909099 (not (= lambda!446230 lambda!446198))))

(declare-fun bs!1909100 () Bool)

(assert (= bs!1909100 (and d!2258629 b!7259025)))

(assert (=> bs!1909100 (= lambda!446230 lambda!446099)))

(declare-fun bs!1909101 () Bool)

(assert (= bs!1909101 (and d!2258629 d!2258449)))

(assert (=> bs!1909101 (not (= lambda!446230 lambda!446199))))

(declare-fun bs!1909102 () Bool)

(assert (= bs!1909102 (and d!2258629 d!2258511)))

(assert (=> bs!1909102 (not (= lambda!446230 lambda!446209))))

(declare-fun bs!1909103 () Bool)

(assert (= bs!1909103 (and d!2258629 d!2258575)))

(assert (=> bs!1909103 (not (= lambda!446230 lambda!446221))))

(declare-fun bs!1909104 () Bool)

(assert (= bs!1909104 (and d!2258629 d!2258495)))

(assert (=> bs!1909104 (not (= lambda!446230 lambda!446205))))

(declare-fun bs!1909105 () Bool)

(assert (= bs!1909105 (and d!2258629 b!7259019)))

(assert (=> bs!1909105 (= (= (t!384687 s1!1971) lt!2589806) (= lambda!446230 lambda!446101))))

(declare-fun bs!1909106 () Bool)

(assert (= bs!1909106 (and d!2258629 d!2258485)))

(assert (=> bs!1909106 (not (= lambda!446230 lambda!446204))))

(declare-fun bs!1909107 () Bool)

(assert (= bs!1909107 (and d!2258629 d!2258463)))

(assert (=> bs!1909107 (not (= lambda!446230 lambda!446201))))

(declare-fun bs!1909108 () Bool)

(assert (= bs!1909108 (and d!2258629 d!2258077)))

(assert (=> bs!1909108 (not (= lambda!446230 lambda!446146))))

(assert (=> d!2258629 true))

(assert (=> d!2258629 (exists!4441 lt!2589775 lambda!446230)))

(assert (=> d!2258629 true))

(declare-fun _$60!1255 () Unit!163992)

(assert (=> d!2258629 (= (choose!56211 lt!2589775 (t!384687 s1!1971)) _$60!1255)))

(declare-fun bs!1909109 () Bool)

(assert (= bs!1909109 d!2258629))

(declare-fun m!7944160 () Bool)

(assert (=> bs!1909109 m!7944160))

(assert (=> d!2258073 d!2258629))

(declare-fun d!2258631 () Bool)

(declare-fun c!1350548 () Bool)

(assert (=> d!2258631 (= c!1350548 (isEmpty!40598 (t!384687 s1!1971)))))

(declare-fun e!4353358 () Bool)

(assert (=> d!2258631 (= (matchZipper!3591 (content!14674 lt!2589775) (t!384687 s1!1971)) e!4353358)))

(declare-fun b!7259952 () Bool)

(assert (=> b!7259952 (= e!4353358 (nullableZipper!2936 (content!14674 lt!2589775)))))

(declare-fun b!7259953 () Bool)

(assert (=> b!7259953 (= e!4353358 (matchZipper!3591 (derivationStepZipper!3459 (content!14674 lt!2589775) (head!14933 (t!384687 s1!1971))) (tail!14387 (t!384687 s1!1971))))))

(assert (= (and d!2258631 c!1350548) b!7259952))

(assert (= (and d!2258631 (not c!1350548)) b!7259953))

(assert (=> d!2258631 m!7943066))

(assert (=> b!7259952 m!7943184))

(declare-fun m!7944162 () Bool)

(assert (=> b!7259952 m!7944162))

(assert (=> b!7259953 m!7943070))

(assert (=> b!7259953 m!7943184))

(assert (=> b!7259953 m!7943070))

(declare-fun m!7944164 () Bool)

(assert (=> b!7259953 m!7944164))

(assert (=> b!7259953 m!7943074))

(assert (=> b!7259953 m!7944164))

(assert (=> b!7259953 m!7943074))

(declare-fun m!7944166 () Bool)

(assert (=> b!7259953 m!7944166))

(assert (=> d!2258073 d!2258631))

(declare-fun d!2258633 () Bool)

(declare-fun c!1350549 () Bool)

(assert (=> d!2258633 (= c!1350549 ((_ is Nil!70501) lt!2589775))))

(declare-fun e!4353359 () (InoxSet Context!15242))

(assert (=> d!2258633 (= (content!14674 lt!2589775) e!4353359)))

(declare-fun b!7259954 () Bool)

(assert (=> b!7259954 (= e!4353359 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259955 () Bool)

(assert (=> b!7259955 (= e!4353359 ((_ map or) (store ((as const (Array Context!15242 Bool)) false) (h!76949 lt!2589775) true) (content!14674 (t!384689 lt!2589775))))))

(assert (= (and d!2258633 c!1350549) b!7259954))

(assert (= (and d!2258633 (not c!1350549)) b!7259955))

(declare-fun m!7944168 () Bool)

(assert (=> b!7259955 m!7944168))

(declare-fun m!7944170 () Bool)

(assert (=> b!7259955 m!7944170))

(assert (=> d!2258073 d!2258633))

(declare-fun d!2258635 () Bool)

(declare-fun c!1350550 () Bool)

(assert (=> d!2258635 (= c!1350550 (isEmpty!40598 (tail!14387 (t!384687 s1!1971))))))

(declare-fun e!4353360 () Bool)

(assert (=> d!2258635 (= (matchZipper!3591 (derivationStepZipper!3459 ((_ map or) lt!2589817 lt!2589788) (head!14933 (t!384687 s1!1971))) (tail!14387 (t!384687 s1!1971))) e!4353360)))

(declare-fun b!7259956 () Bool)

(assert (=> b!7259956 (= e!4353360 (nullableZipper!2936 (derivationStepZipper!3459 ((_ map or) lt!2589817 lt!2589788) (head!14933 (t!384687 s1!1971)))))))

(declare-fun b!7259957 () Bool)

(assert (=> b!7259957 (= e!4353360 (matchZipper!3591 (derivationStepZipper!3459 (derivationStepZipper!3459 ((_ map or) lt!2589817 lt!2589788) (head!14933 (t!384687 s1!1971))) (head!14933 (tail!14387 (t!384687 s1!1971)))) (tail!14387 (tail!14387 (t!384687 s1!1971)))))))

(assert (= (and d!2258635 c!1350550) b!7259956))

(assert (= (and d!2258635 (not c!1350550)) b!7259957))

(assert (=> d!2258635 m!7943074))

(assert (=> d!2258635 m!7944030))

(assert (=> b!7259956 m!7943086))

(declare-fun m!7944172 () Bool)

(assert (=> b!7259956 m!7944172))

(assert (=> b!7259957 m!7943074))

(assert (=> b!7259957 m!7944034))

(assert (=> b!7259957 m!7943086))

(assert (=> b!7259957 m!7944034))

(declare-fun m!7944174 () Bool)

(assert (=> b!7259957 m!7944174))

(assert (=> b!7259957 m!7943074))

(assert (=> b!7259957 m!7944038))

(assert (=> b!7259957 m!7944174))

(assert (=> b!7259957 m!7944038))

(declare-fun m!7944176 () Bool)

(assert (=> b!7259957 m!7944176))

(assert (=> b!7259303 d!2258635))

(declare-fun bs!1909110 () Bool)

(declare-fun d!2258637 () Bool)

(assert (= bs!1909110 (and d!2258637 d!2258455)))

(declare-fun lambda!446231 () Int)

(assert (=> bs!1909110 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589806)) (= lambda!446231 lambda!446200))))

(declare-fun bs!1909111 () Bool)

(assert (= bs!1909111 (and d!2258637 d!2258609)))

(assert (=> bs!1909111 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589811)) (= lambda!446231 lambda!446226))))

(declare-fun bs!1909112 () Bool)

(assert (= bs!1909112 (and d!2258637 d!2258471)))

(assert (=> bs!1909112 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 s2!1849)) (= lambda!446231 lambda!446202))))

(declare-fun bs!1909113 () Bool)

(assert (= bs!1909113 (and d!2258637 d!2258565)))

(assert (=> bs!1909113 (= lambda!446231 lambda!446220)))

(declare-fun bs!1909114 () Bool)

(assert (= bs!1909114 (and d!2258637 d!2258509)))

(assert (=> bs!1909114 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589806)) (= lambda!446231 lambda!446208))))

(declare-fun bs!1909115 () Bool)

(assert (= bs!1909115 (and d!2258637 d!2258533)))

(assert (=> bs!1909115 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589806)) (= lambda!446231 lambda!446215))))

(declare-fun bs!1909116 () Bool)

(assert (= bs!1909116 (and d!2258637 d!2258553)))

(assert (=> bs!1909116 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589806)) (= lambda!446231 lambda!446219))))

(declare-fun bs!1909117 () Bool)

(assert (= bs!1909117 (and d!2258637 d!2258075)))

(assert (=> bs!1909117 (= (= (head!14933 (t!384687 s1!1971)) (h!76947 s1!1971)) (= lambda!446231 lambda!446143))))

(declare-fun bs!1909118 () Bool)

(assert (= bs!1909118 (and d!2258637 d!2258499)))

(assert (=> bs!1909118 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 s1!1971)) (= lambda!446231 lambda!446206))))

(declare-fun bs!1909119 () Bool)

(assert (= bs!1909119 (and d!2258637 d!2258587)))

(assert (=> bs!1909119 (= lambda!446231 lambda!446223)))

(declare-fun bs!1909120 () Bool)

(assert (= bs!1909120 (and d!2258637 b!7259019)))

(assert (=> bs!1909120 (= (= (head!14933 (t!384687 s1!1971)) (h!76947 s1!1971)) (= lambda!446231 lambda!446100))))

(declare-fun bs!1909121 () Bool)

(assert (= bs!1909121 (and d!2258637 d!2258597)))

(assert (=> bs!1909121 (= (= (head!14933 (t!384687 s1!1971)) (head!14933 lt!2589806)) (= lambda!446231 lambda!446225))))

(declare-fun bs!1909122 () Bool)

(assert (= bs!1909122 (and d!2258637 d!2258579)))

(assert (=> bs!1909122 (= lambda!446231 lambda!446222)))

(declare-fun bs!1909123 () Bool)

(assert (= bs!1909123 (and d!2258637 d!2258081)))

(assert (=> bs!1909123 (= (= (head!14933 (t!384687 s1!1971)) (h!76947 s1!1971)) (= lambda!446231 lambda!446147))))

(assert (=> d!2258637 true))

(assert (=> d!2258637 (= (derivationStepZipper!3459 ((_ map or) lt!2589817 lt!2589788) (head!14933 (t!384687 s1!1971))) (flatMap!2846 ((_ map or) lt!2589817 lt!2589788) lambda!446231))))

(declare-fun bs!1909124 () Bool)

(assert (= bs!1909124 d!2258637))

(declare-fun m!7944178 () Bool)

(assert (=> bs!1909124 m!7944178))

(assert (=> b!7259303 d!2258637))

(assert (=> b!7259303 d!2258567))

(assert (=> b!7259303 d!2258569))

(declare-fun d!2258639 () Bool)

(assert (=> d!2258639 true))

(declare-fun setRes!53611 () Bool)

(assert (=> d!2258639 setRes!53611))

(declare-fun condSetEmpty!53611 () Bool)

(declare-fun res!2943717 () (InoxSet Context!15242))

(assert (=> d!2258639 (= condSetEmpty!53611 (= res!2943717 ((as const (Array Context!15242 Bool)) false)))))

(assert (=> d!2258639 (= (choose!56204 lt!2589785 lambda!446100) res!2943717)))

(declare-fun setIsEmpty!53611 () Bool)

(assert (=> setIsEmpty!53611 setRes!53611))

(declare-fun setNonEmpty!53611 () Bool)

(declare-fun setElem!53611 () Context!15242)

(declare-fun tp!2038657 () Bool)

(declare-fun e!4353361 () Bool)

(assert (=> setNonEmpty!53611 (= setRes!53611 (and tp!2038657 (inv!89712 setElem!53611) e!4353361))))

(declare-fun setRest!53611 () (InoxSet Context!15242))

(assert (=> setNonEmpty!53611 (= res!2943717 ((_ map or) (store ((as const (Array Context!15242 Bool)) false) setElem!53611 true) setRest!53611))))

(declare-fun b!7259958 () Bool)

(declare-fun tp!2038658 () Bool)

(assert (=> b!7259958 (= e!4353361 tp!2038658)))

(assert (= (and d!2258639 condSetEmpty!53611) setIsEmpty!53611))

(assert (= (and d!2258639 (not condSetEmpty!53611)) setNonEmpty!53611))

(assert (= setNonEmpty!53611 b!7259958))

(declare-fun m!7944180 () Bool)

(assert (=> setNonEmpty!53611 m!7944180))

(assert (=> d!2258015 d!2258639))

(declare-fun d!2258641 () Bool)

(declare-fun c!1350551 () Bool)

(assert (=> d!2258641 (= c!1350551 (isEmpty!40598 (tail!14387 lt!2589806)))))

(declare-fun e!4353362 () Bool)

(assert (=> d!2258641 (= (matchZipper!3591 (derivationStepZipper!3459 ((_ map or) lt!2589796 lt!2589794) (head!14933 lt!2589806)) (tail!14387 lt!2589806)) e!4353362)))

(declare-fun b!7259959 () Bool)

(assert (=> b!7259959 (= e!4353362 (nullableZipper!2936 (derivationStepZipper!3459 ((_ map or) lt!2589796 lt!2589794) (head!14933 lt!2589806))))))

(declare-fun b!7259960 () Bool)

(assert (=> b!7259960 (= e!4353362 (matchZipper!3591 (derivationStepZipper!3459 (derivationStepZipper!3459 ((_ map or) lt!2589796 lt!2589794) (head!14933 lt!2589806)) (head!14933 (tail!14387 lt!2589806))) (tail!14387 (tail!14387 lt!2589806))))))

(assert (= (and d!2258641 c!1350551) b!7259959))

(assert (= (and d!2258641 (not c!1350551)) b!7259960))

(assert (=> d!2258641 m!7942996))

(assert (=> d!2258641 m!7943844))

(assert (=> b!7259959 m!7943048))

(declare-fun m!7944182 () Bool)

(assert (=> b!7259959 m!7944182))

(assert (=> b!7259960 m!7942996))

(assert (=> b!7259960 m!7943848))

(assert (=> b!7259960 m!7943048))

(assert (=> b!7259960 m!7943848))

(declare-fun m!7944184 () Bool)

(assert (=> b!7259960 m!7944184))

(assert (=> b!7259960 m!7942996))

(assert (=> b!7259960 m!7943852))

(assert (=> b!7259960 m!7944184))

(assert (=> b!7259960 m!7943852))

(declare-fun m!7944186 () Bool)

(assert (=> b!7259960 m!7944186))

(assert (=> b!7259284 d!2258641))

(declare-fun bs!1909125 () Bool)

(declare-fun d!2258643 () Bool)

(assert (= bs!1909125 (and d!2258643 d!2258455)))

(declare-fun lambda!446232 () Int)

(assert (=> bs!1909125 (= lambda!446232 lambda!446200)))

(declare-fun bs!1909126 () Bool)

(assert (= bs!1909126 (and d!2258643 d!2258609)))

(assert (=> bs!1909126 (= (= (head!14933 lt!2589806) (head!14933 lt!2589811)) (= lambda!446232 lambda!446226))))

(declare-fun bs!1909127 () Bool)

(assert (= bs!1909127 (and d!2258643 d!2258471)))

(assert (=> bs!1909127 (= (= (head!14933 lt!2589806) (head!14933 s2!1849)) (= lambda!446232 lambda!446202))))

(declare-fun bs!1909128 () Bool)

(assert (= bs!1909128 (and d!2258643 d!2258565)))

(assert (=> bs!1909128 (= (= (head!14933 lt!2589806) (head!14933 (t!384687 s1!1971))) (= lambda!446232 lambda!446220))))

(declare-fun bs!1909129 () Bool)

(assert (= bs!1909129 (and d!2258643 d!2258509)))

(assert (=> bs!1909129 (= lambda!446232 lambda!446208)))

(declare-fun bs!1909130 () Bool)

(assert (= bs!1909130 (and d!2258643 d!2258533)))

(assert (=> bs!1909130 (= lambda!446232 lambda!446215)))

(declare-fun bs!1909131 () Bool)

(assert (= bs!1909131 (and d!2258643 d!2258075)))

(assert (=> bs!1909131 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446232 lambda!446143))))

(declare-fun bs!1909132 () Bool)

(assert (= bs!1909132 (and d!2258643 d!2258499)))

(assert (=> bs!1909132 (= (= (head!14933 lt!2589806) (head!14933 s1!1971)) (= lambda!446232 lambda!446206))))

(declare-fun bs!1909133 () Bool)

(assert (= bs!1909133 (and d!2258643 d!2258587)))

(assert (=> bs!1909133 (= (= (head!14933 lt!2589806) (head!14933 (t!384687 s1!1971))) (= lambda!446232 lambda!446223))))

(declare-fun bs!1909134 () Bool)

(assert (= bs!1909134 (and d!2258643 b!7259019)))

(assert (=> bs!1909134 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446232 lambda!446100))))

(declare-fun bs!1909135 () Bool)

(assert (= bs!1909135 (and d!2258643 d!2258597)))

(assert (=> bs!1909135 (= lambda!446232 lambda!446225)))

(declare-fun bs!1909136 () Bool)

(assert (= bs!1909136 (and d!2258643 d!2258579)))

(assert (=> bs!1909136 (= (= (head!14933 lt!2589806) (head!14933 (t!384687 s1!1971))) (= lambda!446232 lambda!446222))))

(declare-fun bs!1909137 () Bool)

(assert (= bs!1909137 (and d!2258643 d!2258081)))

(assert (=> bs!1909137 (= (= (head!14933 lt!2589806) (h!76947 s1!1971)) (= lambda!446232 lambda!446147))))

(declare-fun bs!1909138 () Bool)

(assert (= bs!1909138 (and d!2258643 d!2258637)))

(assert (=> bs!1909138 (= (= (head!14933 lt!2589806) (head!14933 (t!384687 s1!1971))) (= lambda!446232 lambda!446231))))

(declare-fun bs!1909139 () Bool)

(assert (= bs!1909139 (and d!2258643 d!2258553)))

(assert (=> bs!1909139 (= lambda!446232 lambda!446219)))

(assert (=> d!2258643 true))

(assert (=> d!2258643 (= (derivationStepZipper!3459 ((_ map or) lt!2589796 lt!2589794) (head!14933 lt!2589806)) (flatMap!2846 ((_ map or) lt!2589796 lt!2589794) lambda!446232))))

(declare-fun bs!1909140 () Bool)

(assert (= bs!1909140 d!2258643))

(declare-fun m!7944188 () Bool)

(assert (=> bs!1909140 m!7944188))

(assert (=> b!7259284 d!2258643))

(assert (=> b!7259284 d!2258457))

(assert (=> b!7259284 d!2258459))

(assert (=> d!2258027 d!2258007))

(assert (=> d!2258027 d!2258005))

(declare-fun d!2258645 () Bool)

(assert (=> d!2258645 (matchZipper!3591 (content!14674 lt!2589782) lt!2589806)))

(assert (=> d!2258645 true))

(declare-fun _$61!515 () Unit!163992)

(assert (=> d!2258645 (= (choose!56208 lt!2589782 lt!2589806) _$61!515)))

(declare-fun bs!1909141 () Bool)

(assert (= bs!1909141 d!2258645))

(assert (=> bs!1909141 m!7942570))

(assert (=> bs!1909141 m!7942570))

(assert (=> bs!1909141 m!7942572))

(assert (=> d!2258027 d!2258645))

(declare-fun bs!1909142 () Bool)

(declare-fun d!2258647 () Bool)

(assert (= bs!1909142 (and d!2258647 d!2258479)))

(declare-fun lambda!446233 () Int)

(assert (=> bs!1909142 (not (= lambda!446233 lambda!446203))))

(declare-fun bs!1909143 () Bool)

(assert (= bs!1909143 (and d!2258647 d!2258627)))

(assert (=> bs!1909143 (= (= lambda!446134 lambda!446140) (= lambda!446233 lambda!446227))))

(declare-fun bs!1909144 () Bool)

(assert (= bs!1909144 (and d!2258647 d!2258073)))

(assert (=> bs!1909144 (not (= lambda!446233 lambda!446140))))

(declare-fun bs!1909145 () Bool)

(assert (= bs!1909145 (and d!2258647 d!2258027)))

(assert (=> bs!1909145 (not (= lambda!446233 lambda!446134))))

(declare-fun bs!1909146 () Bool)

(assert (= bs!1909146 (and d!2258647 d!2258543)))

(assert (=> bs!1909146 (= (= lambda!446134 lambda!446101) (= lambda!446233 lambda!446218))))

(declare-fun bs!1909147 () Bool)

(assert (= bs!1909147 (and d!2258647 d!2258505)))

(assert (=> bs!1909147 (not (= lambda!446233 lambda!446207))))

(declare-fun bs!1909148 () Bool)

(assert (= bs!1909148 (and d!2258647 d!2258411)))

(assert (=> bs!1909148 (not (= lambda!446233 lambda!446197))))

(declare-fun bs!1909149 () Bool)

(assert (= bs!1909149 (and d!2258647 d!2258539)))

(assert (=> bs!1909149 (not (= lambda!446233 lambda!446217))))

(declare-fun bs!1909150 () Bool)

(assert (= bs!1909150 (and d!2258647 d!2258589)))

(assert (=> bs!1909150 (not (= lambda!446233 lambda!446224))))

(declare-fun bs!1909151 () Bool)

(assert (= bs!1909151 (and d!2258647 d!2258537)))

(assert (=> bs!1909151 (not (= lambda!446233 lambda!446216))))

(declare-fun bs!1909152 () Bool)

(assert (= bs!1909152 (and d!2258647 d!2258417)))

(assert (=> bs!1909152 (= (= lambda!446134 lambda!446099) (= lambda!446233 lambda!446198))))

(declare-fun bs!1909153 () Bool)

(assert (= bs!1909153 (and d!2258647 b!7259025)))

(assert (=> bs!1909153 (not (= lambda!446233 lambda!446099))))

(declare-fun bs!1909154 () Bool)

(assert (= bs!1909154 (and d!2258647 d!2258449)))

(assert (=> bs!1909154 (not (= lambda!446233 lambda!446199))))

(declare-fun bs!1909155 () Bool)

(assert (= bs!1909155 (and d!2258647 d!2258511)))

(assert (=> bs!1909155 (not (= lambda!446233 lambda!446209))))

(declare-fun bs!1909156 () Bool)

(assert (= bs!1909156 (and d!2258647 d!2258575)))

(assert (=> bs!1909156 (not (= lambda!446233 lambda!446221))))

(declare-fun bs!1909157 () Bool)

(assert (= bs!1909157 (and d!2258647 d!2258495)))

(assert (=> bs!1909157 (not (= lambda!446233 lambda!446205))))

(declare-fun bs!1909158 () Bool)

(assert (= bs!1909158 (and d!2258647 b!7259019)))

(assert (=> bs!1909158 (not (= lambda!446233 lambda!446101))))

(declare-fun bs!1909159 () Bool)

(assert (= bs!1909159 (and d!2258647 d!2258485)))

(assert (=> bs!1909159 (not (= lambda!446233 lambda!446204))))

(declare-fun bs!1909160 () Bool)

(assert (= bs!1909160 (and d!2258647 d!2258629)))

(assert (=> bs!1909160 (not (= lambda!446233 lambda!446230))))

(declare-fun bs!1909161 () Bool)

(assert (= bs!1909161 (and d!2258647 d!2258463)))

(assert (=> bs!1909161 (not (= lambda!446233 lambda!446201))))

(declare-fun bs!1909162 () Bool)

(assert (= bs!1909162 (and d!2258647 d!2258077)))

(assert (=> bs!1909162 (= (= lambda!446134 lambda!446099) (= lambda!446233 lambda!446146))))

(assert (=> d!2258647 true))

(assert (=> d!2258647 (< (dynLambda!28814 order!29033 lambda!446134) (dynLambda!28814 order!29033 lambda!446233))))

(assert (=> d!2258647 (= (exists!4441 lt!2589782 lambda!446134) (not (forall!17538 lt!2589782 lambda!446233)))))

(declare-fun bs!1909163 () Bool)

(assert (= bs!1909163 d!2258647))

(declare-fun m!7944190 () Bool)

(assert (=> bs!1909163 m!7944190))

(assert (=> d!2258027 d!2258647))

(declare-fun d!2258649 () Bool)

(declare-fun lt!2589990 () Int)

(assert (=> d!2258649 (>= lt!2589990 0)))

(declare-fun e!4353363 () Int)

(assert (=> d!2258649 (= lt!2589990 e!4353363)))

(declare-fun c!1350552 () Bool)

(assert (=> d!2258649 (= c!1350552 ((_ is Nil!70500) lt!2589915))))

(assert (=> d!2258649 (= (size!41761 lt!2589915) lt!2589990)))

(declare-fun b!7259961 () Bool)

(assert (=> b!7259961 (= e!4353363 0)))

(declare-fun b!7259962 () Bool)

(assert (=> b!7259962 (= e!4353363 (+ 1 (size!41761 (t!384688 lt!2589915))))))

(assert (= (and d!2258649 c!1350552) b!7259961))

(assert (= (and d!2258649 (not c!1350552)) b!7259962))

(declare-fun m!7944192 () Bool)

(assert (=> b!7259962 m!7944192))

(assert (=> b!7259332 d!2258649))

(declare-fun d!2258651 () Bool)

(declare-fun lt!2589991 () Int)

(assert (=> d!2258651 (>= lt!2589991 0)))

(declare-fun e!4353364 () Int)

(assert (=> d!2258651 (= lt!2589991 e!4353364)))

(declare-fun c!1350553 () Bool)

(assert (=> d!2258651 (= c!1350553 ((_ is Nil!70500) (exprs!8121 lt!2589778)))))

(assert (=> d!2258651 (= (size!41761 (exprs!8121 lt!2589778)) lt!2589991)))

(declare-fun b!7259963 () Bool)

(assert (=> b!7259963 (= e!4353364 0)))

(declare-fun b!7259964 () Bool)

(assert (=> b!7259964 (= e!4353364 (+ 1 (size!41761 (t!384688 (exprs!8121 lt!2589778)))))))

(assert (= (and d!2258651 c!1350553) b!7259963))

(assert (= (and d!2258651 (not c!1350553)) b!7259964))

(assert (=> b!7259964 m!7944078))

(assert (=> b!7259332 d!2258651))

(assert (=> b!7259332 d!2258425))

(assert (=> d!2258033 d!2258465))

(declare-fun d!2258653 () Bool)

(declare-fun c!1350554 () Bool)

(assert (=> d!2258653 (= c!1350554 ((_ is Nil!70500) lt!2589927))))

(declare-fun e!4353365 () (InoxSet Regex!18681))

(assert (=> d!2258653 (= (content!14678 lt!2589927) e!4353365)))

(declare-fun b!7259965 () Bool)

(assert (=> b!7259965 (= e!4353365 ((as const (Array Regex!18681 Bool)) false))))

(declare-fun b!7259966 () Bool)

(assert (=> b!7259966 (= e!4353365 ((_ map or) (store ((as const (Array Regex!18681 Bool)) false) (h!76948 lt!2589927) true) (content!14678 (t!384688 lt!2589927))))))

(assert (= (and d!2258653 c!1350554) b!7259965))

(assert (= (and d!2258653 (not c!1350554)) b!7259966))

(declare-fun m!7944194 () Bool)

(assert (=> b!7259966 m!7944194))

(declare-fun m!7944196 () Bool)

(assert (=> b!7259966 m!7944196))

(assert (=> d!2258089 d!2258653))

(declare-fun d!2258655 () Bool)

(declare-fun c!1350555 () Bool)

(assert (=> d!2258655 (= c!1350555 ((_ is Nil!70500) (exprs!8121 ct1!232)))))

(declare-fun e!4353366 () (InoxSet Regex!18681))

(assert (=> d!2258655 (= (content!14678 (exprs!8121 ct1!232)) e!4353366)))

(declare-fun b!7259967 () Bool)

(assert (=> b!7259967 (= e!4353366 ((as const (Array Regex!18681 Bool)) false))))

(declare-fun b!7259968 () Bool)

(assert (=> b!7259968 (= e!4353366 ((_ map or) (store ((as const (Array Regex!18681 Bool)) false) (h!76948 (exprs!8121 ct1!232)) true) (content!14678 (t!384688 (exprs!8121 ct1!232)))))))

(assert (= (and d!2258655 c!1350555) b!7259967))

(assert (= (and d!2258655 (not c!1350555)) b!7259968))

(declare-fun m!7944198 () Bool)

(assert (=> b!7259968 m!7944198))

(assert (=> b!7259968 m!7944148))

(assert (=> d!2258089 d!2258655))

(assert (=> d!2258089 d!2258431))

(declare-fun bs!1909164 () Bool)

(declare-fun d!2258657 () Bool)

(assert (= bs!1909164 (and d!2258657 d!2258479)))

(declare-fun lambda!446234 () Int)

(assert (=> bs!1909164 (= lambda!446234 lambda!446203)))

(declare-fun bs!1909165 () Bool)

(assert (= bs!1909165 (and d!2258657 d!2258627)))

(assert (=> bs!1909165 (not (= lambda!446234 lambda!446227))))

(declare-fun bs!1909166 () Bool)

(assert (= bs!1909166 (and d!2258657 d!2258647)))

(assert (=> bs!1909166 (not (= lambda!446234 lambda!446233))))

(declare-fun bs!1909167 () Bool)

(assert (= bs!1909167 (and d!2258657 d!2258073)))

(assert (=> bs!1909167 (not (= lambda!446234 lambda!446140))))

(declare-fun bs!1909168 () Bool)

(assert (= bs!1909168 (and d!2258657 d!2258027)))

(assert (=> bs!1909168 (not (= lambda!446234 lambda!446134))))

(declare-fun bs!1909169 () Bool)

(assert (= bs!1909169 (and d!2258657 d!2258543)))

(assert (=> bs!1909169 (not (= lambda!446234 lambda!446218))))

(declare-fun bs!1909170 () Bool)

(assert (= bs!1909170 (and d!2258657 d!2258505)))

(assert (=> bs!1909170 (= lambda!446234 lambda!446207)))

(declare-fun bs!1909171 () Bool)

(assert (= bs!1909171 (and d!2258657 d!2258411)))

(assert (=> bs!1909171 (= lambda!446234 lambda!446197)))

(declare-fun bs!1909172 () Bool)

(assert (= bs!1909172 (and d!2258657 d!2258539)))

(assert (=> bs!1909172 (= lambda!446234 lambda!446217)))

(declare-fun bs!1909173 () Bool)

(assert (= bs!1909173 (and d!2258657 d!2258589)))

(assert (=> bs!1909173 (= lambda!446234 lambda!446224)))

(declare-fun bs!1909174 () Bool)

(assert (= bs!1909174 (and d!2258657 d!2258537)))

(assert (=> bs!1909174 (= lambda!446234 lambda!446216)))

(declare-fun bs!1909175 () Bool)

(assert (= bs!1909175 (and d!2258657 d!2258417)))

(assert (=> bs!1909175 (not (= lambda!446234 lambda!446198))))

(declare-fun bs!1909176 () Bool)

(assert (= bs!1909176 (and d!2258657 b!7259025)))

(assert (=> bs!1909176 (not (= lambda!446234 lambda!446099))))

(declare-fun bs!1909177 () Bool)

(assert (= bs!1909177 (and d!2258657 d!2258449)))

(assert (=> bs!1909177 (= lambda!446234 lambda!446199)))

(declare-fun bs!1909178 () Bool)

(assert (= bs!1909178 (and d!2258657 d!2258511)))

(assert (=> bs!1909178 (= lambda!446234 lambda!446209)))

(declare-fun bs!1909179 () Bool)

(assert (= bs!1909179 (and d!2258657 d!2258575)))

(assert (=> bs!1909179 (= lambda!446234 lambda!446221)))

(declare-fun bs!1909180 () Bool)

(assert (= bs!1909180 (and d!2258657 d!2258495)))

(assert (=> bs!1909180 (= lambda!446234 lambda!446205)))

(declare-fun bs!1909181 () Bool)

(assert (= bs!1909181 (and d!2258657 b!7259019)))

(assert (=> bs!1909181 (not (= lambda!446234 lambda!446101))))

(declare-fun bs!1909182 () Bool)

(assert (= bs!1909182 (and d!2258657 d!2258485)))

(assert (=> bs!1909182 (= lambda!446234 lambda!446204)))

(declare-fun bs!1909183 () Bool)

(assert (= bs!1909183 (and d!2258657 d!2258629)))

(assert (=> bs!1909183 (not (= lambda!446234 lambda!446230))))

(declare-fun bs!1909184 () Bool)

(assert (= bs!1909184 (and d!2258657 d!2258463)))

(assert (=> bs!1909184 (= lambda!446234 lambda!446201)))

(declare-fun bs!1909185 () Bool)

(assert (= bs!1909185 (and d!2258657 d!2258077)))

(assert (=> bs!1909185 (not (= lambda!446234 lambda!446146))))

(assert (=> d!2258657 (= (nullableZipper!2936 (store ((as const (Array Context!15242 Bool)) false) lt!2589808 true)) (exists!4440 (store ((as const (Array Context!15242 Bool)) false) lt!2589808 true) lambda!446234))))

(declare-fun bs!1909186 () Bool)

(assert (= bs!1909186 d!2258657))

(assert (=> bs!1909186 m!7942618))

(declare-fun m!7944200 () Bool)

(assert (=> bs!1909186 m!7944200))

(assert (=> b!7259320 d!2258657))

(declare-fun d!2258659 () Bool)

(declare-fun lt!2589992 () Int)

(assert (=> d!2258659 (>= lt!2589992 0)))

(declare-fun e!4353367 () Int)

(assert (=> d!2258659 (= lt!2589992 e!4353367)))

(declare-fun c!1350556 () Bool)

(assert (=> d!2258659 (= c!1350556 ((_ is Nil!70499) lt!2589909))))

(assert (=> d!2258659 (= (size!41760 lt!2589909) lt!2589992)))

(declare-fun b!7259969 () Bool)

(assert (=> b!7259969 (= e!4353367 0)))

(declare-fun b!7259970 () Bool)

(assert (=> b!7259970 (= e!4353367 (+ 1 (size!41760 (t!384687 lt!2589909))))))

(assert (= (and d!2258659 c!1350556) b!7259969))

(assert (= (and d!2258659 (not c!1350556)) b!7259970))

(declare-fun m!7944202 () Bool)

(assert (=> b!7259970 m!7944202))

(assert (=> b!7259315 d!2258659))

(declare-fun d!2258661 () Bool)

(declare-fun lt!2589993 () Int)

(assert (=> d!2258661 (>= lt!2589993 0)))

(declare-fun e!4353368 () Int)

(assert (=> d!2258661 (= lt!2589993 e!4353368)))

(declare-fun c!1350557 () Bool)

(assert (=> d!2258661 (= c!1350557 ((_ is Nil!70499) (t!384687 s1!1971)))))

(assert (=> d!2258661 (= (size!41760 (t!384687 s1!1971)) lt!2589993)))

(declare-fun b!7259971 () Bool)

(assert (=> b!7259971 (= e!4353368 0)))

(declare-fun b!7259972 () Bool)

(assert (=> b!7259972 (= e!4353368 (+ 1 (size!41760 (t!384687 (t!384687 s1!1971)))))))

(assert (= (and d!2258661 c!1350557) b!7259971))

(assert (= (and d!2258661 (not c!1350557)) b!7259972))

(assert (=> b!7259972 m!7944064))

(assert (=> b!7259315 d!2258661))

(assert (=> b!7259315 d!2258409))

(assert (=> b!7259275 d!2258571))

(assert (=> d!2258045 d!2258583))

(declare-fun d!2258663 () Bool)

(declare-fun c!1350558 () Bool)

(assert (=> d!2258663 (= c!1350558 ((_ is Nil!70501) lt!2589923))))

(declare-fun e!4353369 () (InoxSet Context!15242))

(assert (=> d!2258663 (= (content!14674 lt!2589923) e!4353369)))

(declare-fun b!7259973 () Bool)

(assert (=> b!7259973 (= e!4353369 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259974 () Bool)

(assert (=> b!7259974 (= e!4353369 ((_ map or) (store ((as const (Array Context!15242 Bool)) false) (h!76949 lt!2589923) true) (content!14674 (t!384689 lt!2589923))))))

(assert (= (and d!2258663 c!1350558) b!7259973))

(assert (= (and d!2258663 (not c!1350558)) b!7259974))

(declare-fun m!7944204 () Bool)

(assert (=> b!7259974 m!7944204))

(declare-fun m!7944206 () Bool)

(assert (=> b!7259974 m!7944206))

(assert (=> b!7259334 d!2258663))

(declare-fun d!2258665 () Bool)

(declare-fun res!2943718 () Bool)

(declare-fun e!4353370 () Bool)

(assert (=> d!2258665 (=> res!2943718 e!4353370)))

(assert (=> d!2258665 (= res!2943718 ((_ is Nil!70501) lt!2589923))))

(assert (=> d!2258665 (= (noDuplicate!3011 lt!2589923) e!4353370)))

(declare-fun b!7259975 () Bool)

(declare-fun e!4353371 () Bool)

(assert (=> b!7259975 (= e!4353370 e!4353371)))

(declare-fun res!2943719 () Bool)

(assert (=> b!7259975 (=> (not res!2943719) (not e!4353371))))

(assert (=> b!7259975 (= res!2943719 (not (contains!20749 (t!384689 lt!2589923) (h!76949 lt!2589923))))))

(declare-fun b!7259976 () Bool)

(assert (=> b!7259976 (= e!4353371 (noDuplicate!3011 (t!384689 lt!2589923)))))

(assert (= (and d!2258665 (not res!2943718)) b!7259975))

(assert (= (and b!7259975 res!2943719) b!7259976))

(declare-fun m!7944208 () Bool)

(assert (=> b!7259975 m!7944208))

(declare-fun m!7944210 () Bool)

(assert (=> b!7259976 m!7944210))

(assert (=> d!2258071 d!2258665))

(declare-fun d!2258667 () Bool)

(declare-fun e!4353373 () Bool)

(assert (=> d!2258667 e!4353373))

(declare-fun res!2943720 () Bool)

(assert (=> d!2258667 (=> (not res!2943720) (not e!4353373))))

(declare-fun res!2943721 () List!70625)

(assert (=> d!2258667 (= res!2943720 (noDuplicate!3011 res!2943721))))

(declare-fun e!4353372 () Bool)

(assert (=> d!2258667 e!4353372))

(assert (=> d!2258667 (= (choose!56202 lt!2589813) res!2943721)))

(declare-fun b!7259978 () Bool)

(declare-fun e!4353374 () Bool)

(declare-fun tp!2038659 () Bool)

(assert (=> b!7259978 (= e!4353374 tp!2038659)))

(declare-fun tp!2038660 () Bool)

(declare-fun b!7259977 () Bool)

(assert (=> b!7259977 (= e!4353372 (and (inv!89712 (h!76949 res!2943721)) e!4353374 tp!2038660))))

(declare-fun b!7259979 () Bool)

(assert (=> b!7259979 (= e!4353373 (= (content!14674 res!2943721) lt!2589813))))

(assert (= b!7259977 b!7259978))

(assert (= (and d!2258667 ((_ is Cons!70501) res!2943721)) b!7259977))

(assert (= (and d!2258667 res!2943720) b!7259979))

(declare-fun m!7944212 () Bool)

(assert (=> d!2258667 m!7944212))

(declare-fun m!7944214 () Bool)

(assert (=> b!7259977 m!7944214))

(declare-fun m!7944216 () Bool)

(assert (=> b!7259979 m!7944216))

(assert (=> d!2258071 d!2258667))

(declare-fun call!661758 () (InoxSet Context!15242))

(declare-fun call!661759 () List!70624)

(declare-fun bm!661751 () Bool)

(declare-fun c!1350563 () Bool)

(declare-fun c!1350560 () Bool)

(declare-fun c!1350561 () Bool)

(assert (=> bm!661751 (= call!661758 (derivationStepZipperDown!2675 (ite c!1350560 (regOne!37875 (ite c!1350333 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))) (ite c!1350563 (regTwo!37874 (ite c!1350333 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))) (ite c!1350561 (regOne!37874 (ite c!1350333 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))) (reg!19010 (ite c!1350333 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232)))))))) (ite (or c!1350560 c!1350563) (ite c!1350333 lt!2589780 (Context!15243 call!661644)) (Context!15243 call!661759)) (h!76947 s1!1971)))))

(declare-fun bm!661752 () Bool)

(declare-fun call!661757 () (InoxSet Context!15242))

(declare-fun call!661761 () (InoxSet Context!15242))

(assert (=> bm!661752 (= call!661757 call!661761)))

(declare-fun b!7259980 () Bool)

(declare-fun e!4353380 () (InoxSet Context!15242))

(declare-fun e!4353378 () (InoxSet Context!15242))

(assert (=> b!7259980 (= e!4353380 e!4353378)))

(assert (=> b!7259980 (= c!1350560 ((_ is Union!18681) (ite c!1350333 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))))))

(declare-fun d!2258669 () Bool)

(declare-fun c!1350559 () Bool)

(assert (=> d!2258669 (= c!1350559 (and ((_ is ElementMatch!18681) (ite c!1350333 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))) (= (c!1350206 (ite c!1350333 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))) (h!76947 s1!1971))))))

(assert (=> d!2258669 (= (derivationStepZipperDown!2675 (ite c!1350333 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232)))) (ite c!1350333 lt!2589780 (Context!15243 call!661644)) (h!76947 s1!1971)) e!4353380)))

(declare-fun b!7259981 () Bool)

(declare-fun e!4353375 () Bool)

(assert (=> b!7259981 (= c!1350563 e!4353375)))

(declare-fun res!2943722 () Bool)

(assert (=> b!7259981 (=> (not res!2943722) (not e!4353375))))

(assert (=> b!7259981 (= res!2943722 ((_ is Concat!27526) (ite c!1350333 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))))))

(declare-fun e!4353379 () (InoxSet Context!15242))

(assert (=> b!7259981 (= e!4353378 e!4353379)))

(declare-fun b!7259982 () Bool)

(declare-fun call!661760 () (InoxSet Context!15242))

(assert (=> b!7259982 (= e!4353378 ((_ map or) call!661758 call!661760))))

(declare-fun bm!661753 () Bool)

(assert (=> bm!661753 (= call!661761 call!661758)))

(declare-fun b!7259983 () Bool)

(assert (=> b!7259983 (= e!4353375 (nullable!7941 (regOne!37874 (ite c!1350333 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232)))))))))

(declare-fun b!7259984 () Bool)

(declare-fun c!1350562 () Bool)

(assert (=> b!7259984 (= c!1350562 ((_ is Star!18681) (ite c!1350333 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))))))

(declare-fun e!4353376 () (InoxSet Context!15242))

(declare-fun e!4353377 () (InoxSet Context!15242))

(assert (=> b!7259984 (= e!4353376 e!4353377)))

(declare-fun bm!661754 () Bool)

(declare-fun call!661756 () List!70624)

(assert (=> bm!661754 (= call!661759 call!661756)))

(declare-fun bm!661755 () Bool)

(assert (=> bm!661755 (= call!661756 ($colon$colon!2938 (exprs!8121 (ite c!1350333 lt!2589780 (Context!15243 call!661644))) (ite (or c!1350563 c!1350561) (regTwo!37874 (ite c!1350333 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))) (ite c!1350333 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232)))))))))

(declare-fun b!7259985 () Bool)

(assert (=> b!7259985 (= e!4353377 call!661757)))

(declare-fun b!7259986 () Bool)

(assert (=> b!7259986 (= e!4353376 call!661757)))

(declare-fun b!7259987 () Bool)

(assert (=> b!7259987 (= e!4353379 e!4353376)))

(assert (=> b!7259987 (= c!1350561 ((_ is Concat!27526) (ite c!1350333 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))))))

(declare-fun b!7259988 () Bool)

(assert (=> b!7259988 (= e!4353379 ((_ map or) call!661760 call!661761))))

(declare-fun b!7259989 () Bool)

(assert (=> b!7259989 (= e!4353377 ((as const (Array Context!15242 Bool)) false))))

(declare-fun b!7259990 () Bool)

(assert (=> b!7259990 (= e!4353380 (store ((as const (Array Context!15242 Bool)) false) (ite c!1350333 lt!2589780 (Context!15243 call!661644)) true))))

(declare-fun bm!661756 () Bool)

(assert (=> bm!661756 (= call!661760 (derivationStepZipperDown!2675 (ite c!1350560 (regTwo!37875 (ite c!1350333 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))) (regOne!37874 (ite c!1350333 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232)))))) (ite c!1350560 (ite c!1350333 lt!2589780 (Context!15243 call!661644)) (Context!15243 call!661756)) (h!76947 s1!1971)))))

(assert (= (and d!2258669 c!1350559) b!7259990))

(assert (= (and d!2258669 (not c!1350559)) b!7259980))

(assert (= (and b!7259980 c!1350560) b!7259982))

(assert (= (and b!7259980 (not c!1350560)) b!7259981))

(assert (= (and b!7259981 res!2943722) b!7259983))

(assert (= (and b!7259981 c!1350563) b!7259988))

(assert (= (and b!7259981 (not c!1350563)) b!7259987))

(assert (= (and b!7259987 c!1350561) b!7259986))

(assert (= (and b!7259987 (not c!1350561)) b!7259984))

(assert (= (and b!7259984 c!1350562) b!7259985))

(assert (= (and b!7259984 (not c!1350562)) b!7259989))

(assert (= (or b!7259986 b!7259985) bm!661754))

(assert (= (or b!7259986 b!7259985) bm!661752))

(assert (= (or b!7259988 bm!661754) bm!661755))

(assert (= (or b!7259988 bm!661752) bm!661753))

(assert (= (or b!7259982 b!7259988) bm!661756))

(assert (= (or b!7259982 bm!661753) bm!661751))

(declare-fun m!7944218 () Bool)

(assert (=> bm!661751 m!7944218))

(declare-fun m!7944220 () Bool)

(assert (=> b!7259990 m!7944220))

(declare-fun m!7944222 () Bool)

(assert (=> b!7259983 m!7944222))

(declare-fun m!7944224 () Bool)

(assert (=> bm!661755 m!7944224))

(declare-fun m!7944226 () Bool)

(assert (=> bm!661756 m!7944226))

(assert (=> bm!661644 d!2258669))

(assert (=> d!2258067 d!2258065))

(declare-fun bs!1909187 () Bool)

(declare-fun d!2258671 () Bool)

(assert (= bs!1909187 (and d!2258671 b!7259022)))

(declare-fun lambda!446237 () Int)

(assert (=> bs!1909187 (= lambda!446237 lambda!446098)))

(declare-fun bs!1909188 () Bool)

(assert (= bs!1909188 (and d!2258671 d!2258023)))

(assert (=> bs!1909188 (= lambda!446237 lambda!446131)))

(declare-fun bs!1909189 () Bool)

(assert (= bs!1909189 (and d!2258671 d!2258087)))

(assert (=> bs!1909189 (= lambda!446237 lambda!446151)))

(declare-fun bs!1909190 () Bool)

(assert (= bs!1909190 (and d!2258671 d!2258527)))

(assert (=> bs!1909190 (= lambda!446237 lambda!446214)))

(declare-fun bs!1909191 () Bool)

(assert (= bs!1909191 (and d!2258671 d!2258085)))

(assert (=> bs!1909191 (= lambda!446237 lambda!446150)))

(declare-fun bs!1909192 () Bool)

(assert (= bs!1909192 (and d!2258671 d!2258067)))

(assert (=> bs!1909192 (= lambda!446237 lambda!446137)))

(assert (=> d!2258671 (matchZipper!3591 (store ((as const (Array Context!15242 Bool)) false) (Context!15243 (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328))) true) (++!16624 (t!384687 s1!1971) s2!1849))))

(declare-fun lt!2589996 () Unit!163992)

(assert (=> d!2258671 (= lt!2589996 (lemmaConcatPreservesForall!1488 (exprs!8121 lt!2589778) (exprs!8121 ct2!328) lambda!446237))))

(assert (=> d!2258671 true))

(declare-fun _$56!536 () Unit!163992)

(assert (=> d!2258671 (= (choose!56210 lt!2589778 ct2!328 (t!384687 s1!1971) s2!1849) _$56!536)))

(declare-fun bs!1909193 () Bool)

(assert (= bs!1909193 d!2258671))

(assert (=> bs!1909193 m!7942622))

(declare-fun m!7944228 () Bool)

(assert (=> bs!1909193 m!7944228))

(assert (=> bs!1909193 m!7942626))

(assert (=> bs!1909193 m!7943160))

(assert (=> bs!1909193 m!7943160))

(assert (=> bs!1909193 m!7942622))

(assert (=> bs!1909193 m!7943162))

(assert (=> d!2258067 d!2258671))

(assert (=> d!2258067 d!2258059))

(declare-fun d!2258673 () Bool)

(declare-fun c!1350564 () Bool)

(assert (=> d!2258673 (= c!1350564 (isEmpty!40598 (t!384687 s1!1971)))))

(declare-fun e!4353381 () Bool)

(assert (=> d!2258673 (= (matchZipper!3591 (store ((as const (Array Context!15242 Bool)) false) lt!2589778 true) (t!384687 s1!1971)) e!4353381)))

(declare-fun b!7259991 () Bool)

(assert (=> b!7259991 (= e!4353381 (nullableZipper!2936 (store ((as const (Array Context!15242 Bool)) false) lt!2589778 true)))))

(declare-fun b!7259992 () Bool)

(assert (=> b!7259992 (= e!4353381 (matchZipper!3591 (derivationStepZipper!3459 (store ((as const (Array Context!15242 Bool)) false) lt!2589778 true) (head!14933 (t!384687 s1!1971))) (tail!14387 (t!384687 s1!1971))))))

(assert (= (and d!2258673 c!1350564) b!7259991))

(assert (= (and d!2258673 (not c!1350564)) b!7259992))

(assert (=> d!2258673 m!7943066))

(assert (=> b!7259991 m!7943158))

(declare-fun m!7944230 () Bool)

(assert (=> b!7259991 m!7944230))

(assert (=> b!7259992 m!7943070))

(assert (=> b!7259992 m!7943158))

(assert (=> b!7259992 m!7943070))

(declare-fun m!7944232 () Bool)

(assert (=> b!7259992 m!7944232))

(assert (=> b!7259992 m!7943074))

(assert (=> b!7259992 m!7944232))

(assert (=> b!7259992 m!7943074))

(declare-fun m!7944234 () Bool)

(assert (=> b!7259992 m!7944234))

(assert (=> d!2258067 d!2258673))

(declare-fun d!2258675 () Bool)

(declare-fun c!1350565 () Bool)

(assert (=> d!2258675 (= c!1350565 (isEmpty!40598 (++!16624 (t!384687 s1!1971) s2!1849)))))

(declare-fun e!4353382 () Bool)

(assert (=> d!2258675 (= (matchZipper!3591 (store ((as const (Array Context!15242 Bool)) false) (Context!15243 (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328))) true) (++!16624 (t!384687 s1!1971) s2!1849)) e!4353382)))

(declare-fun b!7259993 () Bool)

(assert (=> b!7259993 (= e!4353382 (nullableZipper!2936 (store ((as const (Array Context!15242 Bool)) false) (Context!15243 (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328))) true)))))

(declare-fun b!7259994 () Bool)

(assert (=> b!7259994 (= e!4353382 (matchZipper!3591 (derivationStepZipper!3459 (store ((as const (Array Context!15242 Bool)) false) (Context!15243 (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328))) true) (head!14933 (++!16624 (t!384687 s1!1971) s2!1849))) (tail!14387 (++!16624 (t!384687 s1!1971) s2!1849))))))

(assert (= (and d!2258675 c!1350565) b!7259993))

(assert (= (and d!2258675 (not c!1350565)) b!7259994))

(assert (=> d!2258675 m!7942622))

(declare-fun m!7944236 () Bool)

(assert (=> d!2258675 m!7944236))

(assert (=> b!7259993 m!7943160))

(declare-fun m!7944238 () Bool)

(assert (=> b!7259993 m!7944238))

(assert (=> b!7259994 m!7942622))

(declare-fun m!7944240 () Bool)

(assert (=> b!7259994 m!7944240))

(assert (=> b!7259994 m!7943160))

(assert (=> b!7259994 m!7944240))

(declare-fun m!7944242 () Bool)

(assert (=> b!7259994 m!7944242))

(assert (=> b!7259994 m!7942622))

(declare-fun m!7944244 () Bool)

(assert (=> b!7259994 m!7944244))

(assert (=> b!7259994 m!7944242))

(assert (=> b!7259994 m!7944244))

(declare-fun m!7944246 () Bool)

(assert (=> b!7259994 m!7944246))

(assert (=> d!2258067 d!2258675))

(declare-fun d!2258677 () Bool)

(assert (=> d!2258677 (forall!17537 (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328)) lambda!446137)))

(declare-fun lt!2589997 () Unit!163992)

(assert (=> d!2258677 (= lt!2589997 (choose!56201 (exprs!8121 lt!2589778) (exprs!8121 ct2!328) lambda!446137))))

(assert (=> d!2258677 (forall!17537 (exprs!8121 lt!2589778) lambda!446137)))

(assert (=> d!2258677 (= (lemmaConcatPreservesForall!1488 (exprs!8121 lt!2589778) (exprs!8121 ct2!328) lambda!446137) lt!2589997)))

(declare-fun bs!1909194 () Bool)

(assert (= bs!1909194 d!2258677))

(assert (=> bs!1909194 m!7942626))

(assert (=> bs!1909194 m!7942626))

(declare-fun m!7944248 () Bool)

(assert (=> bs!1909194 m!7944248))

(declare-fun m!7944250 () Bool)

(assert (=> bs!1909194 m!7944250))

(declare-fun m!7944252 () Bool)

(assert (=> bs!1909194 m!7944252))

(assert (=> d!2258067 d!2258677))

(assert (=> b!7259249 d!2258025))

(declare-fun b!7260009 () Bool)

(declare-fun e!4353395 () Bool)

(declare-fun e!4353398 () Bool)

(assert (=> b!7260009 (= e!4353395 e!4353398)))

(declare-fun c!1350568 () Bool)

(assert (=> b!7260009 (= c!1350568 ((_ is Union!18681) (h!76948 (exprs!8121 ct1!232))))))

(declare-fun d!2258679 () Bool)

(declare-fun res!2943734 () Bool)

(declare-fun e!4353400 () Bool)

(assert (=> d!2258679 (=> res!2943734 e!4353400)))

(assert (=> d!2258679 (= res!2943734 ((_ is EmptyExpr!18681) (h!76948 (exprs!8121 ct1!232))))))

(assert (=> d!2258679 (= (nullableFct!3123 (h!76948 (exprs!8121 ct1!232))) e!4353400)))

(declare-fun b!7260010 () Bool)

(declare-fun e!4353397 () Bool)

(assert (=> b!7260010 (= e!4353397 e!4353395)))

(declare-fun res!2943733 () Bool)

(assert (=> b!7260010 (=> res!2943733 e!4353395)))

(assert (=> b!7260010 (= res!2943733 ((_ is Star!18681) (h!76948 (exprs!8121 ct1!232))))))

(declare-fun b!7260011 () Bool)

(declare-fun e!4353396 () Bool)

(assert (=> b!7260011 (= e!4353398 e!4353396)))

(declare-fun res!2943735 () Bool)

(declare-fun call!661767 () Bool)

(assert (=> b!7260011 (= res!2943735 call!661767)))

(assert (=> b!7260011 (=> res!2943735 e!4353396)))

(declare-fun bm!661761 () Bool)

(assert (=> bm!661761 (= call!661767 (nullable!7941 (ite c!1350568 (regOne!37875 (h!76948 (exprs!8121 ct1!232))) (regOne!37874 (h!76948 (exprs!8121 ct1!232))))))))

(declare-fun b!7260012 () Bool)

(declare-fun e!4353399 () Bool)

(assert (=> b!7260012 (= e!4353398 e!4353399)))

(declare-fun res!2943737 () Bool)

(assert (=> b!7260012 (= res!2943737 call!661767)))

(assert (=> b!7260012 (=> (not res!2943737) (not e!4353399))))

(declare-fun bm!661762 () Bool)

(declare-fun call!661766 () Bool)

(assert (=> bm!661762 (= call!661766 (nullable!7941 (ite c!1350568 (regTwo!37875 (h!76948 (exprs!8121 ct1!232))) (regTwo!37874 (h!76948 (exprs!8121 ct1!232))))))))

(declare-fun b!7260013 () Bool)

(assert (=> b!7260013 (= e!4353400 e!4353397)))

(declare-fun res!2943736 () Bool)

(assert (=> b!7260013 (=> (not res!2943736) (not e!4353397))))

(assert (=> b!7260013 (= res!2943736 (and (not ((_ is EmptyLang!18681) (h!76948 (exprs!8121 ct1!232)))) (not ((_ is ElementMatch!18681) (h!76948 (exprs!8121 ct1!232))))))))

(declare-fun b!7260014 () Bool)

(assert (=> b!7260014 (= e!4353396 call!661766)))

(declare-fun b!7260015 () Bool)

(assert (=> b!7260015 (= e!4353399 call!661766)))

(assert (= (and d!2258679 (not res!2943734)) b!7260013))

(assert (= (and b!7260013 res!2943736) b!7260010))

(assert (= (and b!7260010 (not res!2943733)) b!7260009))

(assert (= (and b!7260009 c!1350568) b!7260011))

(assert (= (and b!7260009 (not c!1350568)) b!7260012))

(assert (= (and b!7260011 (not res!2943735)) b!7260014))

(assert (= (and b!7260012 res!2943737) b!7260015))

(assert (= (or b!7260014 b!7260015) bm!661762))

(assert (= (or b!7260011 b!7260012) bm!661761))

(declare-fun m!7944254 () Bool)

(assert (=> bm!661761 m!7944254))

(declare-fun m!7944256 () Bool)

(assert (=> bm!661762 m!7944256))

(assert (=> d!2258025 d!2258679))

(declare-fun b!7260016 () Bool)

(declare-fun e!4353401 () Bool)

(declare-fun tp!2038661 () Bool)

(assert (=> b!7260016 (= e!4353401 (and tp_is_empty!46827 tp!2038661))))

(assert (=> b!7259369 (= tp!2038602 e!4353401)))

(assert (= (and b!7259369 ((_ is Cons!70499) (t!384687 (t!384687 s1!1971)))) b!7260016))

(declare-fun b!7260017 () Bool)

(declare-fun e!4353402 () Bool)

(declare-fun tp!2038662 () Bool)

(assert (=> b!7260017 (= e!4353402 (and tp_is_empty!46827 tp!2038662))))

(assert (=> b!7259368 (= tp!2038601 e!4353402)))

(assert (= (and b!7259368 ((_ is Cons!70499) (t!384687 (t!384687 s2!1849)))) b!7260017))

(declare-fun e!4353405 () Bool)

(assert (=> b!7259362 (= tp!2038595 e!4353405)))

(declare-fun b!7260029 () Bool)

(declare-fun tp!2038674 () Bool)

(declare-fun tp!2038675 () Bool)

(assert (=> b!7260029 (= e!4353405 (and tp!2038674 tp!2038675))))

(declare-fun b!7260030 () Bool)

(declare-fun tp!2038677 () Bool)

(assert (=> b!7260030 (= e!4353405 tp!2038677)))

(declare-fun b!7260028 () Bool)

(assert (=> b!7260028 (= e!4353405 tp_is_empty!46827)))

(declare-fun b!7260031 () Bool)

(declare-fun tp!2038676 () Bool)

(declare-fun tp!2038673 () Bool)

(assert (=> b!7260031 (= e!4353405 (and tp!2038676 tp!2038673))))

(assert (= (and b!7259362 ((_ is ElementMatch!18681) (h!76948 (exprs!8121 ct2!328)))) b!7260028))

(assert (= (and b!7259362 ((_ is Concat!27526) (h!76948 (exprs!8121 ct2!328)))) b!7260029))

(assert (= (and b!7259362 ((_ is Star!18681) (h!76948 (exprs!8121 ct2!328)))) b!7260030))

(assert (= (and b!7259362 ((_ is Union!18681) (h!76948 (exprs!8121 ct2!328)))) b!7260031))

(declare-fun b!7260032 () Bool)

(declare-fun e!4353406 () Bool)

(declare-fun tp!2038678 () Bool)

(declare-fun tp!2038679 () Bool)

(assert (=> b!7260032 (= e!4353406 (and tp!2038678 tp!2038679))))

(assert (=> b!7259362 (= tp!2038596 e!4353406)))

(assert (= (and b!7259362 ((_ is Cons!70500) (t!384688 (exprs!8121 ct2!328)))) b!7260032))

(declare-fun e!4353407 () Bool)

(assert (=> b!7259363 (= tp!2038597 e!4353407)))

(declare-fun b!7260034 () Bool)

(declare-fun tp!2038681 () Bool)

(declare-fun tp!2038682 () Bool)

(assert (=> b!7260034 (= e!4353407 (and tp!2038681 tp!2038682))))

(declare-fun b!7260035 () Bool)

(declare-fun tp!2038684 () Bool)

(assert (=> b!7260035 (= e!4353407 tp!2038684)))

(declare-fun b!7260033 () Bool)

(assert (=> b!7260033 (= e!4353407 tp_is_empty!46827)))

(declare-fun b!7260036 () Bool)

(declare-fun tp!2038683 () Bool)

(declare-fun tp!2038680 () Bool)

(assert (=> b!7260036 (= e!4353407 (and tp!2038683 tp!2038680))))

(assert (= (and b!7259363 ((_ is ElementMatch!18681) (h!76948 (exprs!8121 ct1!232)))) b!7260033))

(assert (= (and b!7259363 ((_ is Concat!27526) (h!76948 (exprs!8121 ct1!232)))) b!7260034))

(assert (= (and b!7259363 ((_ is Star!18681) (h!76948 (exprs!8121 ct1!232)))) b!7260035))

(assert (= (and b!7259363 ((_ is Union!18681) (h!76948 (exprs!8121 ct1!232)))) b!7260036))

(declare-fun b!7260037 () Bool)

(declare-fun e!4353408 () Bool)

(declare-fun tp!2038685 () Bool)

(declare-fun tp!2038686 () Bool)

(assert (=> b!7260037 (= e!4353408 (and tp!2038685 tp!2038686))))

(assert (=> b!7259363 (= tp!2038598 e!4353408)))

(assert (= (and b!7259363 ((_ is Cons!70500) (t!384688 (exprs!8121 ct1!232)))) b!7260037))

(declare-fun b_lambda!279237 () Bool)

(assert (= b_lambda!279235 (or d!2258077 b_lambda!279237)))

(declare-fun bs!1909195 () Bool)

(declare-fun d!2258681 () Bool)

(assert (= bs!1909195 (and d!2258681 d!2258077)))

(assert (=> bs!1909195 (= (dynLambda!28813 lambda!446146 (h!76949 lt!2589775)) (not (dynLambda!28813 lambda!446099 (h!76949 lt!2589775))))))

(declare-fun b_lambda!279259 () Bool)

(assert (=> (not b_lambda!279259) (not bs!1909195)))

(declare-fun m!7944258 () Bool)

(assert (=> bs!1909195 m!7944258))

(assert (=> b!7259920 d!2258681))

(declare-fun b_lambda!279239 () Bool)

(assert (= b_lambda!279221 (or b!7259022 b_lambda!279239)))

(declare-fun bs!1909196 () Bool)

(declare-fun d!2258683 () Bool)

(assert (= bs!1909196 (and d!2258683 b!7259022)))

(declare-fun validRegex!9549 (Regex!18681) Bool)

(assert (=> bs!1909196 (= (dynLambda!28816 lambda!446098 (h!76948 (exprs!8121 lt!2589778))) (validRegex!9549 (h!76948 (exprs!8121 lt!2589778))))))

(declare-fun m!7944260 () Bool)

(assert (=> bs!1909196 m!7944260))

(assert (=> b!7259780 d!2258683))

(declare-fun b_lambda!279241 () Bool)

(assert (= b_lambda!279225 (or b!7259022 b_lambda!279241)))

(declare-fun bs!1909197 () Bool)

(declare-fun d!2258685 () Bool)

(assert (= bs!1909197 (and d!2258685 b!7259022)))

(assert (=> bs!1909197 (= (dynLambda!28816 lambda!446098 (h!76948 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328)))) (validRegex!9549 (h!76948 (++!16625 (exprs!8121 ct1!232) (exprs!8121 ct2!328)))))))

(declare-fun m!7944262 () Bool)

(assert (=> bs!1909197 m!7944262))

(assert (=> b!7259827 d!2258685))

(declare-fun b_lambda!279243 () Bool)

(assert (= b_lambda!279233 (or d!2258085 b_lambda!279243)))

(declare-fun bs!1909198 () Bool)

(declare-fun d!2258687 () Bool)

(assert (= bs!1909198 (and d!2258687 d!2258085)))

(assert (=> bs!1909198 (= (dynLambda!28816 lambda!446150 (h!76948 (exprs!8121 ct1!232))) (validRegex!9549 (h!76948 (exprs!8121 ct1!232))))))

(declare-fun m!7944264 () Bool)

(assert (=> bs!1909198 m!7944264))

(assert (=> b!7259910 d!2258687))

(declare-fun b_lambda!279245 () Bool)

(assert (= b_lambda!279229 (or b!7259019 b_lambda!279245)))

(assert (=> d!2258547 d!2258101))

(declare-fun b_lambda!279247 () Bool)

(assert (= b_lambda!279223 (or b!7259019 b_lambda!279247)))

(assert (=> d!2258439 d!2258097))

(declare-fun b_lambda!279249 () Bool)

(assert (= b_lambda!279217 (or b!7259025 b_lambda!279249)))

(declare-fun bs!1909199 () Bool)

(declare-fun d!2258689 () Bool)

(assert (= bs!1909199 (and d!2258689 b!7259025)))

(assert (=> bs!1909199 (= (dynLambda!28813 lambda!446099 lt!2589967) (matchZipper!3591 (store ((as const (Array Context!15242 Bool)) false) lt!2589967 true) (t!384687 s1!1971)))))

(declare-fun m!7944266 () Bool)

(assert (=> bs!1909199 m!7944266))

(assert (=> bs!1909199 m!7944266))

(declare-fun m!7944268 () Bool)

(assert (=> bs!1909199 m!7944268))

(assert (=> d!2258403 d!2258689))

(declare-fun b_lambda!279251 () Bool)

(assert (= b_lambda!279215 (or b!7259025 b_lambda!279251)))

(declare-fun bs!1909200 () Bool)

(declare-fun d!2258691 () Bool)

(assert (= bs!1909200 (and d!2258691 b!7259025)))

(assert (=> bs!1909200 (= (dynLambda!28813 lambda!446099 (h!76949 (toList!11510 lt!2589813))) (matchZipper!3591 (store ((as const (Array Context!15242 Bool)) false) (h!76949 (toList!11510 lt!2589813)) true) (t!384687 s1!1971)))))

(declare-fun m!7944270 () Bool)

(assert (=> bs!1909200 m!7944270))

(assert (=> bs!1909200 m!7944270))

(declare-fun m!7944272 () Bool)

(assert (=> bs!1909200 m!7944272))

(assert (=> b!7259731 d!2258691))

(declare-fun b_lambda!279253 () Bool)

(assert (= b_lambda!279231 (or d!2258087 b_lambda!279253)))

(declare-fun bs!1909201 () Bool)

(declare-fun d!2258693 () Bool)

(assert (= bs!1909201 (and d!2258693 d!2258087)))

(assert (=> bs!1909201 (= (dynLambda!28816 lambda!446151 (h!76948 (exprs!8121 ct2!328))) (validRegex!9549 (h!76948 (exprs!8121 ct2!328))))))

(declare-fun m!7944274 () Bool)

(assert (=> bs!1909201 m!7944274))

(assert (=> b!7259872 d!2258693))

(declare-fun b_lambda!279255 () Bool)

(assert (= b_lambda!279227 (or b!7259022 b_lambda!279255)))

(declare-fun bs!1909202 () Bool)

(declare-fun d!2258695 () Bool)

(assert (= bs!1909202 (and d!2258695 b!7259022)))

(assert (=> bs!1909202 (= (dynLambda!28816 lambda!446098 (h!76948 (exprs!8121 ct1!232))) (validRegex!9549 (h!76948 (exprs!8121 ct1!232))))))

(assert (=> bs!1909202 m!7944264))

(assert (=> b!7259829 d!2258695))

(declare-fun b_lambda!279257 () Bool)

(assert (= b_lambda!279219 (or b!7259022 b_lambda!279257)))

(declare-fun bs!1909203 () Bool)

(declare-fun d!2258697 () Bool)

(assert (= bs!1909203 (and d!2258697 b!7259022)))

(assert (=> bs!1909203 (= (dynLambda!28816 lambda!446098 (h!76948 (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328)))) (validRegex!9549 (h!76948 (++!16625 (exprs!8121 lt!2589778) (exprs!8121 ct2!328)))))))

(declare-fun m!7944276 () Bool)

(assert (=> bs!1909203 m!7944276))

(assert (=> b!7259778 d!2258697))

(check-sat (not bm!661736) (not b!7259828) (not bm!661723) (not b!7259867) (not b!7260037) (not b_lambda!279255) (not b!7259972) (not b!7259983) (not b!7259834) (not b!7260031) (not d!2258615) (not bm!661704) (not b!7259874) (not b!7259978) (not b!7259871) (not d!2258403) (not bm!661729) (not setNonEmpty!53610) (not d!2258573) (not b_lambda!279259) (not b!7259738) (not d!2258563) (not b!7259968) (not d!2258629) (not b!7259746) (not b!7259976) (not b!7259993) (not d!2258479) (not b!7259789) (not bm!661709) (not d!2258589) (not b_lambda!279239) (not bm!661755) (not b_lambda!279251) (not bm!661733) (not d!2258671) (not b!7259819) (not d!2258507) (not d!2258453) (not b!7259925) (not b!7259791) (not bs!1909202) (not b!7259773) (not b!7259769) (not d!2258449) (not b_lambda!279247) (not d!2258595) (not bm!661749) (not b!7259740) (not b!7260017) (not bs!1909198) (not b!7259849) (not b!7259707) (not d!2258593) (not d!2258505) (not d!2258535) (not b!7259891) (not b!7259979) (not b!7259881) (not bm!661761) (not b!7259957) (not b!7259890) (not d!2258645) (not b!7259905) (not b!7259962) (not d!2258657) (not b!7259977) (not bm!661722) (not d!2258499) (not d!2258413) (not b!7259732) (not b!7259955) (not b!7259832) (not d!2258439) (not d!2258623) (not b!7259815) (not b!7259857) (not b!7260030) (not b!7260035) (not b!7259992) (not b!7259781) (not d!2258411) (not b!7259906) (not bm!661743) (not d!2258497) (not d!2258635) (not d!2258585) (not b!7259728) (not b!7259899) (not b!7259922) (not d!2258531) (not d!2258627) (not b_lambda!279253) (not b!7259888) (not d!2258587) (not d!2258447) (not d!2258419) (not b_lambda!279257) (not bm!661747) (not b!7259915) (not b!7259803) (not d!2258565) (not b!7259921) (not b!7259804) (not b!7259729) (not b!7259956) (not d!2258609) (not b!7259875) (not b!7259806) (not b!7259966) (not b!7259841) (not b!7259909) (not d!2258417) (not b!7260034) (not b!7259837) (not b!7259811) (not bm!661750) (not d!2258559) (not d!2258435) (not d!2258581) (not b_lambda!279165) (not bm!661708) (not b_lambda!279163) (not d!2258513) (not bm!661741) (not bm!661727) (not d!2258455) (not b!7259830) (not b!7259873) (not b!7259896) (not d!2258527) (not b!7259951) (not b!7260036) (not d!2258577) (not d!2258551) (not d!2258597) (not d!2258643) (not d!2258495) (not d!2258485) (not b!7259953) (not b!7259991) (not b!7259945) (not bs!1909203) (not b!7259942) (not d!2258617) (not d!2258543) (not d!2258647) (not d!2258511) (not b!7259926) (not b!7259911) (not bm!661715) (not b_lambda!279241) (not d!2258579) (not b!7259759) (not b!7259952) (not d!2258667) (not bm!661734) (not b!7259742) (not b!7259787) (not bm!661748) (not bm!661762) (not bm!661735) (not b!7259892) (not b!7259809) (not b!7259947) (not d!2258607) (not d!2258537) (not bm!661742) (not b!7259763) (not b!7259865) (not d!2258469) (not b!7259795) (not bm!661720) (not d!2258525) (not bm!661756) (not b!7259974) (not d!2258555) (not bs!1909201) (not b!7259779) (not bm!661721) (not b!7259895) (not b!7259938) (not d!2258631) (not b!7259771) (not b!7259975) (not bm!661710) (not b!7259958) (not bs!1909200) (not bs!1909197) (not b!7259959) (not b!7259808) (not bm!661751) (not d!2258547) tp_is_empty!46827 (not d!2258677) (not d!2258675) (not d!2258613) (not b!7259970) (not b!7259924) (not b!7259853) (not bs!1909196) (not b!7260032) (not b_lambda!279167) (not d!2258463) (not d!2258533) (not b_lambda!279237) (not bm!661728) (not d!2258471) (not b_lambda!279245) (not b!7259880) (not b!7259944) (not bm!661716) (not b!7259900) (not d!2258509) (not d!2258637) (not d!2258571) (not d!2258539) (not bm!661714) (not b!7259902) (not b!7259889) (not bm!661740) (not b!7259908) (not bs!1909199) (not b!7259831) (not b!7259923) (not b!7259964) (not b!7259897) (not d!2258545) (not b!7260029) (not d!2258575) (not setNonEmpty!53611) (not b!7259994) (not b!7260016) (not b!7259913) (not b!7259903) (not d!2258523) (not b_lambda!279243) (not d!2258641) (not b!7259960) (not b!7259761) (not b!7259810) (not b!7259866) (not d!2258673) (not b_lambda!279249) (not d!2258489) (not b!7259833) (not d!2258553) (not b!7259930))
(check-sat)
