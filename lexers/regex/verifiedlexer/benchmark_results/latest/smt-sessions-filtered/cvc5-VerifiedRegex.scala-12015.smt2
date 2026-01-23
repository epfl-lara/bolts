; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!673910 () Bool)

(assert start!673910)

(declare-fun b!7002810 () Bool)

(assert (=> b!7002810 true))

(declare-fun b!7002799 () Bool)

(assert (=> b!7002799 true))

(declare-fun b!7002786 () Bool)

(assert (=> b!7002786 true))

(declare-fun b!7002780 () Bool)

(declare-fun res!2856754 () Bool)

(declare-fun e!4209245 () Bool)

(assert (=> b!7002780 (=> res!2856754 e!4209245)))

(declare-datatypes ((C!34822 0))(
  ( (C!34823 (val!27113 Int)) )
))
(declare-datatypes ((Regex!17276 0))(
  ( (ElementMatch!17276 (c!1300138 C!34822)) (Concat!26121 (regOne!35064 Regex!17276) (regTwo!35064 Regex!17276)) (EmptyExpr!17276) (Star!17276 (reg!17605 Regex!17276)) (EmptyLang!17276) (Union!17276 (regOne!35065 Regex!17276) (regTwo!35065 Regex!17276)) )
))
(declare-datatypes ((List!67373 0))(
  ( (Nil!67249) (Cons!67249 (h!73697 Regex!17276) (t!381126 List!67373)) )
))
(declare-datatypes ((Context!12544 0))(
  ( (Context!12545 (exprs!6772 List!67373)) )
))
(declare-fun lt!2497513 () Context!12544)

(declare-fun isEmpty!39269 (List!67373) Bool)

(assert (=> b!7002780 (= res!2856754 (isEmpty!39269 (exprs!6772 lt!2497513)))))

(declare-fun b!7002781 () Bool)

(declare-fun res!2856760 () Bool)

(assert (=> b!7002781 (=> res!2856760 e!4209245)))

(assert (=> b!7002781 (= res!2856760 (not (is-Cons!67249 (exprs!6772 lt!2497513))))))

(declare-fun b!7002782 () Bool)

(declare-fun e!4209227 () Bool)

(declare-fun e!4209249 () Bool)

(assert (=> b!7002782 (= e!4209227 e!4209249)))

(declare-fun res!2856756 () Bool)

(assert (=> b!7002782 (=> res!2856756 e!4209249)))

(declare-fun lt!2497456 () (Set Context!12544))

(declare-datatypes ((List!67374 0))(
  ( (Nil!67250) (Cons!67250 (h!73698 C!34822) (t!381127 List!67374)) )
))
(declare-fun s!7408 () List!67374)

(declare-fun matchZipper!2816 ((Set Context!12544) List!67374) Bool)

(assert (=> b!7002782 (= res!2856756 (not (matchZipper!2816 lt!2497456 s!7408)))))

(declare-fun lambda!405831 () Int)

(declare-datatypes ((Unit!161212 0))(
  ( (Unit!161213) )
))
(declare-fun lt!2497504 () Unit!161212)

(declare-fun ct2!306 () Context!12544)

(declare-fun lt!2497506 () List!67373)

(declare-fun lemmaConcatPreservesForall!612 (List!67373 List!67373 Int) Unit!161212)

(assert (=> b!7002782 (= lt!2497504 (lemmaConcatPreservesForall!612 lt!2497506 (exprs!6772 ct2!306) lambda!405831))))

(declare-fun b!7002783 () Bool)

(declare-fun res!2856744 () Bool)

(declare-fun e!4209233 () Bool)

(assert (=> b!7002783 (=> res!2856744 e!4209233)))

(declare-fun lt!2497509 () (Set Context!12544))

(declare-datatypes ((tuple2!67898 0))(
  ( (tuple2!67899 (_1!37252 List!67374) (_2!37252 List!67374)) )
))
(declare-fun lt!2497514 () tuple2!67898)

(assert (=> b!7002783 (= res!2856744 (not (matchZipper!2816 lt!2497509 (_2!37252 lt!2497514))))))

(declare-fun b!7002784 () Bool)

(declare-fun res!2856765 () Bool)

(declare-fun e!4209239 () Bool)

(assert (=> b!7002784 (=> (not res!2856765) (not e!4209239))))

(assert (=> b!7002784 (= res!2856765 (is-Cons!67250 s!7408))))

(declare-fun b!7002785 () Bool)

(declare-fun e!4209237 () Bool)

(assert (=> b!7002785 (= e!4209245 e!4209237)))

(declare-fun res!2856749 () Bool)

(assert (=> b!7002785 (=> res!2856749 e!4209237)))

(declare-fun nullable!7036 (Regex!17276) Bool)

(assert (=> b!7002785 (= res!2856749 (not (nullable!7036 (h!73697 (exprs!6772 lt!2497513)))))))

(declare-fun lt!2497453 () Context!12544)

(assert (=> b!7002785 (= lt!2497453 (Context!12545 lt!2497506))))

(declare-fun tail!13320 (List!67373) List!67373)

(assert (=> b!7002785 (= lt!2497506 (tail!13320 (exprs!6772 lt!2497513)))))

(declare-fun res!2856743 () Bool)

(assert (=> start!673910 (=> (not res!2856743) (not e!4209239))))

(declare-fun lt!2497502 () (Set Context!12544))

(assert (=> start!673910 (= res!2856743 (matchZipper!2816 lt!2497502 s!7408))))

(declare-fun z1!570 () (Set Context!12544))

(declare-fun appendTo!397 ((Set Context!12544) Context!12544) (Set Context!12544))

(assert (=> start!673910 (= lt!2497502 (appendTo!397 z1!570 ct2!306))))

(assert (=> start!673910 e!4209239))

(declare-fun condSetEmpty!48144 () Bool)

(assert (=> start!673910 (= condSetEmpty!48144 (= z1!570 (as set.empty (Set Context!12544))))))

(declare-fun setRes!48144 () Bool)

(assert (=> start!673910 setRes!48144))

(declare-fun e!4209226 () Bool)

(declare-fun inv!86050 (Context!12544) Bool)

(assert (=> start!673910 (and (inv!86050 ct2!306) e!4209226)))

(declare-fun e!4209246 () Bool)

(assert (=> start!673910 e!4209246))

(declare-fun e!4209234 () Bool)

(assert (=> b!7002786 (= e!4209234 e!4209245)))

(declare-fun res!2856747 () Bool)

(assert (=> b!7002786 (=> res!2856747 e!4209245)))

(declare-fun lt!2497462 () (Set Context!12544))

(declare-fun lt!2497511 () (Set Context!12544))

(declare-fun derivationStepZipper!2756 ((Set Context!12544) C!34822) (Set Context!12544))

(assert (=> b!7002786 (= res!2856747 (not (= (derivationStepZipper!2756 lt!2497511 (h!73698 s!7408)) lt!2497462)))))

(declare-fun lambda!405832 () Int)

(declare-fun lt!2497488 () Context!12544)

(declare-fun flatMap!2262 ((Set Context!12544) Int) (Set Context!12544))

(declare-fun derivationStepZipperUp!1926 (Context!12544 C!34822) (Set Context!12544))

(assert (=> b!7002786 (= (flatMap!2262 lt!2497511 lambda!405832) (derivationStepZipperUp!1926 lt!2497488 (h!73698 s!7408)))))

(declare-fun lt!2497466 () Unit!161212)

(declare-fun lemmaFlatMapOnSingletonSet!1777 ((Set Context!12544) Context!12544 Int) Unit!161212)

(assert (=> b!7002786 (= lt!2497466 (lemmaFlatMapOnSingletonSet!1777 lt!2497511 lt!2497488 lambda!405832))))

(assert (=> b!7002786 (= lt!2497462 (derivationStepZipperUp!1926 lt!2497488 (h!73698 s!7408)))))

(declare-fun lt!2497461 () Unit!161212)

(assert (=> b!7002786 (= lt!2497461 (lemmaConcatPreservesForall!612 (exprs!6772 lt!2497513) (exprs!6772 ct2!306) lambda!405831))))

(declare-fun b!7002787 () Bool)

(declare-fun e!4209247 () Bool)

(declare-fun lt!2497483 () (Set Context!12544))

(declare-fun lt!2497469 () List!67374)

(assert (=> b!7002787 (= e!4209247 (matchZipper!2816 lt!2497483 lt!2497469))))

(declare-fun b!7002788 () Bool)

(declare-fun e!4209248 () Bool)

(assert (=> b!7002788 (= e!4209248 e!4209227)))

(declare-fun res!2856757 () Bool)

(assert (=> b!7002788 (=> res!2856757 e!4209227)))

(declare-fun lt!2497486 () (Set Context!12544))

(assert (=> b!7002788 (= res!2856757 (not (= (derivationStepZipper!2756 lt!2497456 (h!73698 s!7408)) lt!2497486)))))

(declare-fun lt!2497481 () Unit!161212)

(assert (=> b!7002788 (= lt!2497481 (lemmaConcatPreservesForall!612 lt!2497506 (exprs!6772 ct2!306) lambda!405831))))

(declare-fun lt!2497495 () Unit!161212)

(assert (=> b!7002788 (= lt!2497495 (lemmaConcatPreservesForall!612 lt!2497506 (exprs!6772 ct2!306) lambda!405831))))

(declare-fun lt!2497493 () Context!12544)

(assert (=> b!7002788 (= (flatMap!2262 lt!2497456 lambda!405832) (derivationStepZipperUp!1926 lt!2497493 (h!73698 s!7408)))))

(declare-fun lt!2497465 () Unit!161212)

(assert (=> b!7002788 (= lt!2497465 (lemmaFlatMapOnSingletonSet!1777 lt!2497456 lt!2497493 lambda!405832))))

(assert (=> b!7002788 (= lt!2497456 (set.insert lt!2497493 (as set.empty (Set Context!12544))))))

(declare-fun lt!2497473 () Unit!161212)

(assert (=> b!7002788 (= lt!2497473 (lemmaConcatPreservesForall!612 lt!2497506 (exprs!6772 ct2!306) lambda!405831))))

(declare-fun lt!2497455 () Unit!161212)

(assert (=> b!7002788 (= lt!2497455 (lemmaConcatPreservesForall!612 lt!2497506 (exprs!6772 ct2!306) lambda!405831))))

(declare-fun b!7002789 () Bool)

(declare-fun tp!1931320 () Bool)

(assert (=> b!7002789 (= e!4209226 tp!1931320)))

(declare-fun b!7002790 () Bool)

(declare-fun e!4209228 () Bool)

(declare-fun e!4209236 () Bool)

(assert (=> b!7002790 (= e!4209228 e!4209236)))

(declare-fun res!2856738 () Bool)

(assert (=> b!7002790 (=> res!2856738 e!4209236)))

(declare-fun lt!2497478 () (Set Context!12544))

(declare-fun lt!2497475 () (Set Context!12544))

(assert (=> b!7002790 (= res!2856738 (not (= lt!2497478 lt!2497475)))))

(declare-fun lt!2497500 () (Set Context!12544))

(assert (=> b!7002790 (= lt!2497475 (set.union lt!2497500 lt!2497483))))

(assert (=> b!7002790 (= lt!2497483 (derivationStepZipperUp!1926 lt!2497453 (h!73698 s!7408)))))

(declare-fun derivationStepZipperDown!1994 (Regex!17276 Context!12544 C!34822) (Set Context!12544))

(assert (=> b!7002790 (= lt!2497500 (derivationStepZipperDown!1994 (h!73697 (exprs!6772 lt!2497513)) lt!2497453 (h!73698 s!7408)))))

(declare-fun b!7002791 () Bool)

(declare-fun res!2856764 () Bool)

(declare-fun e!4209243 () Bool)

(assert (=> b!7002791 (=> res!2856764 e!4209243)))

(declare-fun lt!2497476 () (Set Context!12544))

(assert (=> b!7002791 (= res!2856764 (not (matchZipper!2816 lt!2497476 lt!2497469)))))

(declare-fun b!7002792 () Bool)

(declare-fun e!4209244 () Bool)

(declare-fun e!4209230 () Bool)

(assert (=> b!7002792 (= e!4209244 e!4209230)))

(declare-fun res!2856748 () Bool)

(assert (=> b!7002792 (=> res!2856748 e!4209230)))

(declare-fun e!4209235 () Bool)

(assert (=> b!7002792 (= res!2856748 e!4209235)))

(declare-fun res!2856761 () Bool)

(assert (=> b!7002792 (=> (not res!2856761) (not e!4209235))))

(declare-fun lt!2497498 () Bool)

(declare-fun lt!2497487 () Bool)

(assert (=> b!7002792 (= res!2856761 (not (= lt!2497498 lt!2497487)))))

(assert (=> b!7002792 (= lt!2497498 (matchZipper!2816 lt!2497462 (t!381127 s!7408)))))

(declare-fun lt!2497501 () Unit!161212)

(assert (=> b!7002792 (= lt!2497501 (lemmaConcatPreservesForall!612 lt!2497506 (exprs!6772 ct2!306) lambda!405831))))

(declare-fun lt!2497497 () (Set Context!12544))

(declare-fun e!4209231 () Bool)

(assert (=> b!7002792 (= (matchZipper!2816 lt!2497497 (t!381127 s!7408)) e!4209231)))

(declare-fun res!2856746 () Bool)

(assert (=> b!7002792 (=> res!2856746 e!4209231)))

(assert (=> b!7002792 (= res!2856746 lt!2497487)))

(declare-fun lt!2497494 () (Set Context!12544))

(assert (=> b!7002792 (= lt!2497487 (matchZipper!2816 lt!2497494 (t!381127 s!7408)))))

(declare-fun lt!2497482 () Unit!161212)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1449 ((Set Context!12544) (Set Context!12544) List!67374) Unit!161212)

(assert (=> b!7002792 (= lt!2497482 (lemmaZipperConcatMatchesSameAsBothZippers!1449 lt!2497494 lt!2497486 (t!381127 s!7408)))))

(declare-fun lt!2497467 () Unit!161212)

(assert (=> b!7002792 (= lt!2497467 (lemmaConcatPreservesForall!612 lt!2497506 (exprs!6772 ct2!306) lambda!405831))))

(declare-fun lt!2497474 () Unit!161212)

(assert (=> b!7002792 (= lt!2497474 (lemmaConcatPreservesForall!612 lt!2497506 (exprs!6772 ct2!306) lambda!405831))))

(declare-fun b!7002793 () Bool)

(declare-fun res!2856742 () Bool)

(assert (=> b!7002793 (=> res!2856742 e!4209230)))

(assert (=> b!7002793 (= res!2856742 (not lt!2497498))))

(declare-fun b!7002794 () Bool)

(declare-fun e!4209242 () Bool)

(assert (=> b!7002794 (= e!4209242 (not (matchZipper!2816 lt!2497483 lt!2497469)))))

(declare-fun b!7002795 () Bool)

(declare-fun e!4209241 () Bool)

(assert (=> b!7002795 (= e!4209241 e!4209233)))

(declare-fun res!2856752 () Bool)

(assert (=> b!7002795 (=> res!2856752 e!4209233)))

(declare-fun lt!2497470 () (Set Context!12544))

(assert (=> b!7002795 (= res!2856752 (not (matchZipper!2816 lt!2497470 (_1!37252 lt!2497514))))))

(declare-datatypes ((Option!16781 0))(
  ( (None!16780) (Some!16780 (v!53058 tuple2!67898)) )
))
(declare-fun lt!2497477 () Option!16781)

(declare-fun get!23584 (Option!16781) tuple2!67898)

(assert (=> b!7002795 (= lt!2497514 (get!23584 lt!2497477))))

(declare-fun isDefined!13482 (Option!16781) Bool)

(assert (=> b!7002795 (isDefined!13482 lt!2497477)))

(declare-fun findConcatSeparationZippers!297 ((Set Context!12544) (Set Context!12544) List!67374 List!67374 List!67374) Option!16781)

(assert (=> b!7002795 (= lt!2497477 (findConcatSeparationZippers!297 lt!2497470 lt!2497509 Nil!67250 s!7408 s!7408))))

(assert (=> b!7002795 (= lt!2497509 (set.insert ct2!306 (as set.empty (Set Context!12544))))))

(declare-fun lt!2497508 () Unit!161212)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!297 ((Set Context!12544) Context!12544 List!67374) Unit!161212)

(assert (=> b!7002795 (= lt!2497508 (lemmaConcatZipperMatchesStringThenFindConcatDefined!297 lt!2497470 ct2!306 s!7408))))

(declare-fun setIsEmpty!48144 () Bool)

(assert (=> setIsEmpty!48144 setRes!48144))

(declare-fun b!7002796 () Bool)

(assert (=> b!7002796 (= e!4209237 e!4209244)))

(declare-fun res!2856763 () Bool)

(assert (=> b!7002796 (=> res!2856763 e!4209244)))

(assert (=> b!7002796 (= res!2856763 (not (= lt!2497462 lt!2497497)))))

(assert (=> b!7002796 (= lt!2497497 (set.union lt!2497494 lt!2497486))))

(assert (=> b!7002796 (= lt!2497486 (derivationStepZipperUp!1926 lt!2497493 (h!73698 s!7408)))))

(assert (=> b!7002796 (= lt!2497494 (derivationStepZipperDown!1994 (h!73697 (exprs!6772 lt!2497513)) lt!2497493 (h!73698 s!7408)))))

(declare-fun ++!15253 (List!67373 List!67373) List!67373)

(assert (=> b!7002796 (= lt!2497493 (Context!12545 (++!15253 lt!2497506 (exprs!6772 ct2!306))))))

(declare-fun lt!2497468 () Unit!161212)

(assert (=> b!7002796 (= lt!2497468 (lemmaConcatPreservesForall!612 lt!2497506 (exprs!6772 ct2!306) lambda!405831))))

(declare-fun lt!2497499 () Unit!161212)

(assert (=> b!7002796 (= lt!2497499 (lemmaConcatPreservesForall!612 lt!2497506 (exprs!6772 ct2!306) lambda!405831))))

(declare-fun b!7002797 () Bool)

(declare-fun e!4209238 () Bool)

(declare-fun tp!1931322 () Bool)

(assert (=> b!7002797 (= e!4209238 tp!1931322)))

(declare-fun b!7002798 () Bool)

(declare-fun res!2856758 () Bool)

(assert (=> b!7002798 (=> res!2856758 e!4209241)))

(declare-fun lt!2497485 () Int)

(declare-datatypes ((List!67375 0))(
  ( (Nil!67251) (Cons!67251 (h!73699 Context!12544) (t!381128 List!67375)) )
))
(declare-fun zipperDepthTotal!497 (List!67375) Int)

(assert (=> b!7002798 (= res!2856758 (>= (zipperDepthTotal!497 (Cons!67251 lt!2497453 Nil!67251)) lt!2497485))))

(declare-fun e!4209229 () Bool)

(declare-fun e!4209240 () Bool)

(assert (=> b!7002799 (= e!4209229 e!4209240)))

(declare-fun res!2856766 () Bool)

(assert (=> b!7002799 (=> res!2856766 e!4209240)))

(declare-fun lt!2497463 () Context!12544)

(assert (=> b!7002799 (= res!2856766 (or (not (= lt!2497488 lt!2497463)) (not (set.member lt!2497513 z1!570))))))

(assert (=> b!7002799 (= lt!2497488 (Context!12545 (++!15253 (exprs!6772 lt!2497513) (exprs!6772 ct2!306))))))

(declare-fun lt!2497472 () Unit!161212)

(assert (=> b!7002799 (= lt!2497472 (lemmaConcatPreservesForall!612 (exprs!6772 lt!2497513) (exprs!6772 ct2!306) lambda!405831))))

(declare-fun lambda!405830 () Int)

(declare-fun mapPost2!131 ((Set Context!12544) Int Context!12544) Context!12544)

(assert (=> b!7002799 (= lt!2497513 (mapPost2!131 z1!570 lambda!405830 lt!2497463))))

(declare-fun b!7002800 () Bool)

(assert (=> b!7002800 (= e!4209243 (not (= (_1!37252 lt!2497514) Nil!67250)))))

(declare-fun b!7002801 () Bool)

(assert (=> b!7002801 (= e!4209235 (not (matchZipper!2816 lt!2497486 (t!381127 s!7408))))))

(declare-fun lt!2497479 () Unit!161212)

(assert (=> b!7002801 (= lt!2497479 (lemmaConcatPreservesForall!612 lt!2497506 (exprs!6772 ct2!306) lambda!405831))))

(declare-fun b!7002802 () Bool)

(declare-fun res!2856736 () Bool)

(assert (=> b!7002802 (=> res!2856736 e!4209233)))

(declare-fun isEmpty!39270 (List!67374) Bool)

(assert (=> b!7002802 (= res!2856736 (isEmpty!39270 (_1!37252 lt!2497514)))))

(declare-fun b!7002803 () Bool)

(declare-fun tp_is_empty!43777 () Bool)

(declare-fun tp!1931319 () Bool)

(assert (=> b!7002803 (= e!4209246 (and tp_is_empty!43777 tp!1931319))))

(declare-fun b!7002804 () Bool)

(assert (=> b!7002804 (= e!4209240 e!4209234)))

(declare-fun res!2856753 () Bool)

(assert (=> b!7002804 (=> res!2856753 e!4209234)))

(declare-fun lt!2497510 () (Set Context!12544))

(assert (=> b!7002804 (= res!2856753 (not (= lt!2497511 lt!2497510)))))

(assert (=> b!7002804 (= lt!2497511 (set.insert lt!2497488 (as set.empty (Set Context!12544))))))

(declare-fun lt!2497480 () Unit!161212)

(assert (=> b!7002804 (= lt!2497480 (lemmaConcatPreservesForall!612 (exprs!6772 lt!2497513) (exprs!6772 ct2!306) lambda!405831))))

(declare-fun b!7002805 () Bool)

(declare-fun res!2856739 () Bool)

(assert (=> b!7002805 (=> res!2856739 e!4209233)))

(declare-fun ++!15254 (List!67374 List!67374) List!67374)

(assert (=> b!7002805 (= res!2856739 (not (= (++!15254 (_1!37252 lt!2497514) (_2!37252 lt!2497514)) s!7408)))))

(declare-fun b!7002806 () Bool)

(assert (=> b!7002806 (= e!4209233 e!4209228)))

(declare-fun res!2856741 () Bool)

(assert (=> b!7002806 (=> res!2856741 e!4209228)))

(declare-fun lt!2497484 () (Set Context!12544))

(assert (=> b!7002806 (= res!2856741 (not (= (derivationStepZipper!2756 lt!2497484 (h!73698 s!7408)) lt!2497478)))))

(assert (=> b!7002806 (= lt!2497478 (derivationStepZipperUp!1926 lt!2497513 (h!73698 s!7408)))))

(assert (=> b!7002806 (= (flatMap!2262 lt!2497484 lambda!405832) (derivationStepZipperUp!1926 lt!2497513 (h!73698 s!7408)))))

(declare-fun lt!2497490 () Unit!161212)

(assert (=> b!7002806 (= lt!2497490 (lemmaFlatMapOnSingletonSet!1777 lt!2497484 lt!2497513 lambda!405832))))

(assert (=> b!7002806 (= lt!2497484 (set.insert lt!2497513 (as set.empty (Set Context!12544))))))

(declare-fun b!7002807 () Bool)

(assert (=> b!7002807 (= e!4209230 e!4209248)))

(declare-fun res!2856755 () Bool)

(assert (=> b!7002807 (=> res!2856755 e!4209248)))

(assert (=> b!7002807 (= res!2856755 (not (matchZipper!2816 lt!2497486 (t!381127 s!7408))))))

(declare-fun lt!2497496 () Unit!161212)

(assert (=> b!7002807 (= lt!2497496 (lemmaConcatPreservesForall!612 lt!2497506 (exprs!6772 ct2!306) lambda!405831))))

(declare-fun b!7002808 () Bool)

(declare-fun e!4209232 () Bool)

(assert (=> b!7002808 (= e!4209232 e!4209243)))

(declare-fun res!2856762 () Bool)

(assert (=> b!7002808 (=> res!2856762 e!4209243)))

(declare-fun lt!2497491 () C!34822)

(assert (=> b!7002808 (= res!2856762 (not (= (derivationStepZipper!2756 lt!2497470 lt!2497491) lt!2497476)))))

(assert (=> b!7002808 (= lt!2497476 (derivationStepZipperUp!1926 lt!2497453 lt!2497491))))

(declare-fun head!14147 (List!67374) C!34822)

(assert (=> b!7002808 (= lt!2497491 (head!14147 (_1!37252 lt!2497514)))))

(assert (=> b!7002808 (= (flatMap!2262 lt!2497470 lambda!405832) (derivationStepZipperUp!1926 lt!2497453 (h!73698 s!7408)))))

(declare-fun lt!2497454 () Unit!161212)

(assert (=> b!7002808 (= lt!2497454 (lemmaFlatMapOnSingletonSet!1777 lt!2497470 lt!2497453 lambda!405832))))

(declare-fun b!7002809 () Bool)

(assert (=> b!7002809 (= e!4209249 e!4209241)))

(declare-fun res!2856751 () Bool)

(assert (=> b!7002809 (=> res!2856751 e!4209241)))

(declare-fun lt!2497512 () Int)

(declare-fun contextDepthTotal!469 (Context!12544) Int)

(assert (=> b!7002809 (= res!2856751 (<= lt!2497512 (contextDepthTotal!469 lt!2497453)))))

(assert (=> b!7002809 (<= lt!2497512 lt!2497485)))

(declare-fun lt!2497460 () List!67375)

(assert (=> b!7002809 (= lt!2497485 (zipperDepthTotal!497 lt!2497460))))

(assert (=> b!7002809 (= lt!2497512 (contextDepthTotal!469 lt!2497513))))

(declare-fun lt!2497505 () Unit!161212)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!37 (List!67375 Context!12544) Unit!161212)

(assert (=> b!7002809 (= lt!2497505 (lemmaTotalDepthZipperLargerThanOfAnyContext!37 lt!2497460 lt!2497513))))

(declare-fun toList!10636 ((Set Context!12544)) List!67375)

(assert (=> b!7002809 (= lt!2497460 (toList!10636 z1!570))))

(declare-fun lt!2497459 () Unit!161212)

(assert (=> b!7002809 (= lt!2497459 (lemmaConcatPreservesForall!612 lt!2497506 (exprs!6772 ct2!306) lambda!405831))))

(declare-fun lt!2497457 () Unit!161212)

(assert (=> b!7002809 (= lt!2497457 (lemmaConcatPreservesForall!612 lt!2497506 (exprs!6772 ct2!306) lambda!405831))))

(declare-fun lt!2497515 () Unit!161212)

(assert (=> b!7002809 (= lt!2497515 (lemmaConcatPreservesForall!612 lt!2497506 (exprs!6772 ct2!306) lambda!405831))))

(assert (=> b!7002809 (= (flatMap!2262 lt!2497470 lambda!405832) (derivationStepZipperUp!1926 lt!2497453 (h!73698 s!7408)))))

(declare-fun lt!2497503 () Unit!161212)

(assert (=> b!7002809 (= lt!2497503 (lemmaFlatMapOnSingletonSet!1777 lt!2497470 lt!2497453 lambda!405832))))

(declare-fun map!15561 ((Set Context!12544) Int) (Set Context!12544))

(assert (=> b!7002809 (= (map!15561 lt!2497470 lambda!405830) (set.insert (Context!12545 (++!15253 lt!2497506 (exprs!6772 ct2!306))) (as set.empty (Set Context!12544))))))

(declare-fun lt!2497492 () Unit!161212)

(assert (=> b!7002809 (= lt!2497492 (lemmaConcatPreservesForall!612 lt!2497506 (exprs!6772 ct2!306) lambda!405831))))

(declare-fun lt!2497507 () Unit!161212)

(declare-fun lemmaMapOnSingletonSet!341 ((Set Context!12544) Context!12544 Int) Unit!161212)

(assert (=> b!7002809 (= lt!2497507 (lemmaMapOnSingletonSet!341 lt!2497470 lt!2497453 lambda!405830))))

(assert (=> b!7002809 (= lt!2497470 (set.insert lt!2497453 (as set.empty (Set Context!12544))))))

(assert (=> b!7002810 (= e!4209239 (not e!4209229))))

(declare-fun res!2856745 () Bool)

(assert (=> b!7002810 (=> res!2856745 e!4209229)))

(assert (=> b!7002810 (= res!2856745 (not (matchZipper!2816 lt!2497510 s!7408)))))

(assert (=> b!7002810 (= lt!2497510 (set.insert lt!2497463 (as set.empty (Set Context!12544))))))

(declare-fun lambda!405829 () Int)

(declare-fun getWitness!1200 ((Set Context!12544) Int) Context!12544)

(assert (=> b!7002810 (= lt!2497463 (getWitness!1200 lt!2497502 lambda!405829))))

(declare-fun lt!2497471 () List!67375)

(declare-fun exists!3096 (List!67375 Int) Bool)

(assert (=> b!7002810 (exists!3096 lt!2497471 lambda!405829)))

(declare-fun lt!2497458 () Unit!161212)

(declare-fun lemmaZipperMatchesExistsMatchingContext!245 (List!67375 List!67374) Unit!161212)

(assert (=> b!7002810 (= lt!2497458 (lemmaZipperMatchesExistsMatchingContext!245 lt!2497471 s!7408))))

(assert (=> b!7002810 (= lt!2497471 (toList!10636 lt!2497502))))

(declare-fun b!7002811 () Bool)

(declare-fun res!2856759 () Bool)

(assert (=> b!7002811 (=> res!2856759 e!4209229)))

(assert (=> b!7002811 (= res!2856759 (not (set.member lt!2497463 lt!2497502)))))

(declare-fun setElem!48144 () Context!12544)

(declare-fun tp!1931321 () Bool)

(declare-fun setNonEmpty!48144 () Bool)

(assert (=> setNonEmpty!48144 (= setRes!48144 (and tp!1931321 (inv!86050 setElem!48144) e!4209238))))

(declare-fun setRest!48144 () (Set Context!12544))

(assert (=> setNonEmpty!48144 (= z1!570 (set.union (set.insert setElem!48144 (as set.empty (Set Context!12544))) setRest!48144))))

(declare-fun b!7002812 () Bool)

(assert (=> b!7002812 (= e!4209231 (matchZipper!2816 lt!2497486 (t!381127 s!7408)))))

(declare-fun b!7002813 () Bool)

(assert (=> b!7002813 (= e!4209236 e!4209232)))

(declare-fun res!2856740 () Bool)

(assert (=> b!7002813 (=> res!2856740 e!4209232)))

(assert (=> b!7002813 (= res!2856740 e!4209242)))

(declare-fun res!2856737 () Bool)

(assert (=> b!7002813 (=> (not res!2856737) (not e!4209242))))

(declare-fun lt!2497489 () Bool)

(assert (=> b!7002813 (= res!2856737 (not (= (matchZipper!2816 lt!2497484 (_1!37252 lt!2497514)) lt!2497489)))))

(assert (=> b!7002813 (= (matchZipper!2816 lt!2497475 lt!2497469) e!4209247)))

(declare-fun res!2856750 () Bool)

(assert (=> b!7002813 (=> res!2856750 e!4209247)))

(assert (=> b!7002813 (= res!2856750 lt!2497489)))

(assert (=> b!7002813 (= lt!2497489 (matchZipper!2816 lt!2497500 lt!2497469))))

(declare-fun lt!2497464 () Unit!161212)

(assert (=> b!7002813 (= lt!2497464 (lemmaZipperConcatMatchesSameAsBothZippers!1449 lt!2497500 lt!2497483 lt!2497469))))

(declare-fun tail!13321 (List!67374) List!67374)

(assert (=> b!7002813 (= lt!2497469 (tail!13321 (_1!37252 lt!2497514)))))

(assert (= (and start!673910 res!2856743) b!7002784))

(assert (= (and b!7002784 res!2856765) b!7002810))

(assert (= (and b!7002810 (not res!2856745)) b!7002811))

(assert (= (and b!7002811 (not res!2856759)) b!7002799))

(assert (= (and b!7002799 (not res!2856766)) b!7002804))

(assert (= (and b!7002804 (not res!2856753)) b!7002786))

(assert (= (and b!7002786 (not res!2856747)) b!7002781))

(assert (= (and b!7002781 (not res!2856760)) b!7002780))

(assert (= (and b!7002780 (not res!2856754)) b!7002785))

(assert (= (and b!7002785 (not res!2856749)) b!7002796))

(assert (= (and b!7002796 (not res!2856763)) b!7002792))

(assert (= (and b!7002792 (not res!2856746)) b!7002812))

(assert (= (and b!7002792 res!2856761) b!7002801))

(assert (= (and b!7002792 (not res!2856748)) b!7002793))

(assert (= (and b!7002793 (not res!2856742)) b!7002807))

(assert (= (and b!7002807 (not res!2856755)) b!7002788))

(assert (= (and b!7002788 (not res!2856757)) b!7002782))

(assert (= (and b!7002782 (not res!2856756)) b!7002809))

(assert (= (and b!7002809 (not res!2856751)) b!7002798))

(assert (= (and b!7002798 (not res!2856758)) b!7002795))

(assert (= (and b!7002795 (not res!2856752)) b!7002783))

(assert (= (and b!7002783 (not res!2856744)) b!7002805))

(assert (= (and b!7002805 (not res!2856739)) b!7002802))

(assert (= (and b!7002802 (not res!2856736)) b!7002806))

(assert (= (and b!7002806 (not res!2856741)) b!7002790))

(assert (= (and b!7002790 (not res!2856738)) b!7002813))

(assert (= (and b!7002813 (not res!2856750)) b!7002787))

(assert (= (and b!7002813 res!2856737) b!7002794))

(assert (= (and b!7002813 (not res!2856740)) b!7002808))

(assert (= (and b!7002808 (not res!2856762)) b!7002791))

(assert (= (and b!7002791 (not res!2856764)) b!7002800))

(assert (= (and start!673910 condSetEmpty!48144) setIsEmpty!48144))

(assert (= (and start!673910 (not condSetEmpty!48144)) setNonEmpty!48144))

(assert (= setNonEmpty!48144 b!7002797))

(assert (= start!673910 b!7002789))

(assert (= (and start!673910 (is-Cons!67250 s!7408)) b!7002803))

(declare-fun m!7697866 () Bool)

(assert (=> b!7002780 m!7697866))

(declare-fun m!7697868 () Bool)

(assert (=> b!7002804 m!7697868))

(declare-fun m!7697870 () Bool)

(assert (=> b!7002804 m!7697870))

(declare-fun m!7697872 () Bool)

(assert (=> b!7002782 m!7697872))

(declare-fun m!7697874 () Bool)

(assert (=> b!7002782 m!7697874))

(declare-fun m!7697876 () Bool)

(assert (=> b!7002806 m!7697876))

(declare-fun m!7697878 () Bool)

(assert (=> b!7002806 m!7697878))

(declare-fun m!7697880 () Bool)

(assert (=> b!7002806 m!7697880))

(declare-fun m!7697882 () Bool)

(assert (=> b!7002806 m!7697882))

(declare-fun m!7697884 () Bool)

(assert (=> b!7002806 m!7697884))

(declare-fun m!7697886 () Bool)

(assert (=> b!7002810 m!7697886))

(declare-fun m!7697888 () Bool)

(assert (=> b!7002810 m!7697888))

(declare-fun m!7697890 () Bool)

(assert (=> b!7002810 m!7697890))

(declare-fun m!7697892 () Bool)

(assert (=> b!7002810 m!7697892))

(declare-fun m!7697894 () Bool)

(assert (=> b!7002810 m!7697894))

(declare-fun m!7697896 () Bool)

(assert (=> b!7002810 m!7697896))

(declare-fun m!7697898 () Bool)

(assert (=> b!7002786 m!7697898))

(assert (=> b!7002786 m!7697870))

(declare-fun m!7697900 () Bool)

(assert (=> b!7002786 m!7697900))

(declare-fun m!7697902 () Bool)

(assert (=> b!7002786 m!7697902))

(declare-fun m!7697904 () Bool)

(assert (=> b!7002786 m!7697904))

(assert (=> b!7002792 m!7697874))

(declare-fun m!7697906 () Bool)

(assert (=> b!7002792 m!7697906))

(declare-fun m!7697908 () Bool)

(assert (=> b!7002792 m!7697908))

(declare-fun m!7697910 () Bool)

(assert (=> b!7002792 m!7697910))

(assert (=> b!7002792 m!7697874))

(assert (=> b!7002792 m!7697874))

(declare-fun m!7697912 () Bool)

(assert (=> b!7002792 m!7697912))

(declare-fun m!7697914 () Bool)

(assert (=> start!673910 m!7697914))

(declare-fun m!7697916 () Bool)

(assert (=> start!673910 m!7697916))

(declare-fun m!7697918 () Bool)

(assert (=> start!673910 m!7697918))

(declare-fun m!7697920 () Bool)

(assert (=> b!7002812 m!7697920))

(declare-fun m!7697922 () Bool)

(assert (=> b!7002805 m!7697922))

(declare-fun m!7697924 () Bool)

(assert (=> b!7002791 m!7697924))

(assert (=> b!7002809 m!7697874))

(declare-fun m!7697926 () Bool)

(assert (=> b!7002809 m!7697926))

(declare-fun m!7697928 () Bool)

(assert (=> b!7002809 m!7697928))

(declare-fun m!7697930 () Bool)

(assert (=> b!7002809 m!7697930))

(assert (=> b!7002809 m!7697874))

(declare-fun m!7697932 () Bool)

(assert (=> b!7002809 m!7697932))

(declare-fun m!7697934 () Bool)

(assert (=> b!7002809 m!7697934))

(declare-fun m!7697936 () Bool)

(assert (=> b!7002809 m!7697936))

(declare-fun m!7697938 () Bool)

(assert (=> b!7002809 m!7697938))

(declare-fun m!7697940 () Bool)

(assert (=> b!7002809 m!7697940))

(assert (=> b!7002809 m!7697874))

(declare-fun m!7697942 () Bool)

(assert (=> b!7002809 m!7697942))

(declare-fun m!7697944 () Bool)

(assert (=> b!7002809 m!7697944))

(declare-fun m!7697946 () Bool)

(assert (=> b!7002809 m!7697946))

(declare-fun m!7697948 () Bool)

(assert (=> b!7002809 m!7697948))

(declare-fun m!7697950 () Bool)

(assert (=> b!7002809 m!7697950))

(assert (=> b!7002809 m!7697874))

(assert (=> b!7002807 m!7697920))

(assert (=> b!7002807 m!7697874))

(assert (=> b!7002808 m!7697926))

(assert (=> b!7002808 m!7697928))

(declare-fun m!7697952 () Bool)

(assert (=> b!7002808 m!7697952))

(declare-fun m!7697954 () Bool)

(assert (=> b!7002808 m!7697954))

(assert (=> b!7002808 m!7697950))

(declare-fun m!7697956 () Bool)

(assert (=> b!7002808 m!7697956))

(declare-fun m!7697958 () Bool)

(assert (=> b!7002811 m!7697958))

(declare-fun m!7697960 () Bool)

(assert (=> b!7002795 m!7697960))

(declare-fun m!7697962 () Bool)

(assert (=> b!7002795 m!7697962))

(declare-fun m!7697964 () Bool)

(assert (=> b!7002795 m!7697964))

(declare-fun m!7697966 () Bool)

(assert (=> b!7002795 m!7697966))

(declare-fun m!7697968 () Bool)

(assert (=> b!7002795 m!7697968))

(declare-fun m!7697970 () Bool)

(assert (=> b!7002795 m!7697970))

(declare-fun m!7697972 () Bool)

(assert (=> b!7002788 m!7697972))

(declare-fun m!7697974 () Bool)

(assert (=> b!7002788 m!7697974))

(assert (=> b!7002788 m!7697874))

(declare-fun m!7697976 () Bool)

(assert (=> b!7002788 m!7697976))

(declare-fun m!7697978 () Bool)

(assert (=> b!7002788 m!7697978))

(assert (=> b!7002788 m!7697874))

(assert (=> b!7002788 m!7697874))

(assert (=> b!7002788 m!7697874))

(declare-fun m!7697980 () Bool)

(assert (=> b!7002788 m!7697980))

(declare-fun m!7697982 () Bool)

(assert (=> b!7002799 m!7697982))

(declare-fun m!7697984 () Bool)

(assert (=> b!7002799 m!7697984))

(assert (=> b!7002799 m!7697870))

(declare-fun m!7697986 () Bool)

(assert (=> b!7002799 m!7697986))

(assert (=> b!7002796 m!7697874))

(assert (=> b!7002796 m!7697976))

(assert (=> b!7002796 m!7697944))

(declare-fun m!7697988 () Bool)

(assert (=> b!7002796 m!7697988))

(assert (=> b!7002796 m!7697874))

(declare-fun m!7697990 () Bool)

(assert (=> b!7002813 m!7697990))

(declare-fun m!7697992 () Bool)

(assert (=> b!7002813 m!7697992))

(declare-fun m!7697994 () Bool)

(assert (=> b!7002813 m!7697994))

(declare-fun m!7697996 () Bool)

(assert (=> b!7002813 m!7697996))

(declare-fun m!7697998 () Bool)

(assert (=> b!7002813 m!7697998))

(declare-fun m!7698000 () Bool)

(assert (=> b!7002798 m!7698000))

(declare-fun m!7698002 () Bool)

(assert (=> b!7002785 m!7698002))

(declare-fun m!7698004 () Bool)

(assert (=> b!7002785 m!7698004))

(declare-fun m!7698006 () Bool)

(assert (=> b!7002787 m!7698006))

(assert (=> b!7002794 m!7698006))

(assert (=> b!7002790 m!7697928))

(declare-fun m!7698008 () Bool)

(assert (=> b!7002790 m!7698008))

(assert (=> b!7002801 m!7697920))

(assert (=> b!7002801 m!7697874))

(declare-fun m!7698010 () Bool)

(assert (=> b!7002802 m!7698010))

(declare-fun m!7698012 () Bool)

(assert (=> setNonEmpty!48144 m!7698012))

(declare-fun m!7698014 () Bool)

(assert (=> b!7002783 m!7698014))

(push 1)

(assert (not b!7002791))

(assert (not b!7002794))

(assert (not b!7002786))

(assert (not b!7002806))

(assert (not b!7002798))

(assert (not b!7002783))

(assert (not b!7002795))

(assert (not b!7002797))

(assert (not b!7002813))

(assert tp_is_empty!43777)

(assert (not start!673910))

(assert (not b!7002789))

(assert (not b!7002808))

(assert (not b!7002803))

(assert (not b!7002782))

(assert (not b!7002812))

(assert (not b!7002805))

(assert (not b!7002799))

(assert (not b!7002809))

(assert (not b!7002804))

(assert (not b!7002792))

(assert (not b!7002807))

(assert (not b!7002790))

(assert (not b!7002796))

(assert (not b!7002787))

(assert (not b!7002785))

(assert (not b!7002780))

(assert (not setNonEmpty!48144))

(assert (not b!7002810))

(assert (not b!7002788))

(assert (not b!7002801))

(assert (not b!7002802))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2182900 () Bool)

(declare-fun c!1300160 () Bool)

(assert (=> d!2182900 (= c!1300160 (isEmpty!39270 s!7408))))

(declare-fun e!4209324 () Bool)

(assert (=> d!2182900 (= (matchZipper!2816 lt!2497510 s!7408) e!4209324)))

(declare-fun b!7002932 () Bool)

(declare-fun nullableZipper!2467 ((Set Context!12544)) Bool)

(assert (=> b!7002932 (= e!4209324 (nullableZipper!2467 lt!2497510))))

(declare-fun b!7002933 () Bool)

(assert (=> b!7002933 (= e!4209324 (matchZipper!2816 (derivationStepZipper!2756 lt!2497510 (head!14147 s!7408)) (tail!13321 s!7408)))))

(assert (= (and d!2182900 c!1300160) b!7002932))

(assert (= (and d!2182900 (not c!1300160)) b!7002933))

(declare-fun m!7698166 () Bool)

(assert (=> d!2182900 m!7698166))

(declare-fun m!7698168 () Bool)

(assert (=> b!7002932 m!7698168))

(declare-fun m!7698170 () Bool)

(assert (=> b!7002933 m!7698170))

(assert (=> b!7002933 m!7698170))

(declare-fun m!7698172 () Bool)

(assert (=> b!7002933 m!7698172))

(declare-fun m!7698174 () Bool)

(assert (=> b!7002933 m!7698174))

(assert (=> b!7002933 m!7698172))

(assert (=> b!7002933 m!7698174))

(declare-fun m!7698176 () Bool)

(assert (=> b!7002933 m!7698176))

(assert (=> b!7002810 d!2182900))

(declare-fun d!2182902 () Bool)

(declare-fun e!4209327 () Bool)

(assert (=> d!2182902 e!4209327))

(declare-fun res!2856863 () Bool)

(assert (=> d!2182902 (=> (not res!2856863) (not e!4209327))))

(declare-fun lt!2497711 () Context!12544)

(declare-fun dynLambda!27018 (Int Context!12544) Bool)

(assert (=> d!2182902 (= res!2856863 (dynLambda!27018 lambda!405829 lt!2497711))))

(declare-fun getWitness!1202 (List!67375 Int) Context!12544)

(assert (=> d!2182902 (= lt!2497711 (getWitness!1202 (toList!10636 lt!2497502) lambda!405829))))

(declare-fun exists!3098 ((Set Context!12544) Int) Bool)

(assert (=> d!2182902 (exists!3098 lt!2497502 lambda!405829)))

(assert (=> d!2182902 (= (getWitness!1200 lt!2497502 lambda!405829) lt!2497711)))

(declare-fun b!7002936 () Bool)

(assert (=> b!7002936 (= e!4209327 (set.member lt!2497711 lt!2497502))))

(assert (= (and d!2182902 res!2856863) b!7002936))

(declare-fun b_lambda!263839 () Bool)

(assert (=> (not b_lambda!263839) (not d!2182902)))

(declare-fun m!7698178 () Bool)

(assert (=> d!2182902 m!7698178))

(assert (=> d!2182902 m!7697894))

(assert (=> d!2182902 m!7697894))

(declare-fun m!7698180 () Bool)

(assert (=> d!2182902 m!7698180))

(declare-fun m!7698182 () Bool)

(assert (=> d!2182902 m!7698182))

(declare-fun m!7698184 () Bool)

(assert (=> b!7002936 m!7698184))

(assert (=> b!7002810 d!2182902))

(declare-fun bs!1865063 () Bool)

(declare-fun d!2182904 () Bool)

(assert (= bs!1865063 (and d!2182904 b!7002810)))

(declare-fun lambda!405899 () Int)

(assert (=> bs!1865063 (not (= lambda!405899 lambda!405829))))

(assert (=> d!2182904 true))

(declare-fun order!27985 () Int)

(declare-fun dynLambda!27019 (Int Int) Int)

(assert (=> d!2182904 (< (dynLambda!27019 order!27985 lambda!405829) (dynLambda!27019 order!27985 lambda!405899))))

(declare-fun forall!16193 (List!67375 Int) Bool)

(assert (=> d!2182904 (= (exists!3096 lt!2497471 lambda!405829) (not (forall!16193 lt!2497471 lambda!405899)))))

(declare-fun bs!1865064 () Bool)

(assert (= bs!1865064 d!2182904))

(declare-fun m!7698186 () Bool)

(assert (=> bs!1865064 m!7698186))

(assert (=> b!7002810 d!2182904))

(declare-fun d!2182906 () Bool)

(declare-fun e!4209330 () Bool)

(assert (=> d!2182906 e!4209330))

(declare-fun res!2856866 () Bool)

(assert (=> d!2182906 (=> (not res!2856866) (not e!4209330))))

(declare-fun lt!2497714 () List!67375)

(declare-fun noDuplicate!2548 (List!67375) Bool)

(assert (=> d!2182906 (= res!2856866 (noDuplicate!2548 lt!2497714))))

(declare-fun choose!52530 ((Set Context!12544)) List!67375)

(assert (=> d!2182906 (= lt!2497714 (choose!52530 lt!2497502))))

(assert (=> d!2182906 (= (toList!10636 lt!2497502) lt!2497714)))

(declare-fun b!7002941 () Bool)

(declare-fun content!13327 (List!67375) (Set Context!12544))

(assert (=> b!7002941 (= e!4209330 (= (content!13327 lt!2497714) lt!2497502))))

(assert (= (and d!2182906 res!2856866) b!7002941))

(declare-fun m!7698188 () Bool)

(assert (=> d!2182906 m!7698188))

(declare-fun m!7698190 () Bool)

(assert (=> d!2182906 m!7698190))

(declare-fun m!7698192 () Bool)

(assert (=> b!7002941 m!7698192))

(assert (=> b!7002810 d!2182906))

(declare-fun bs!1865065 () Bool)

(declare-fun d!2182908 () Bool)

(assert (= bs!1865065 (and d!2182908 b!7002810)))

(declare-fun lambda!405902 () Int)

(assert (=> bs!1865065 (= lambda!405902 lambda!405829)))

(declare-fun bs!1865066 () Bool)

(assert (= bs!1865066 (and d!2182908 d!2182904)))

(assert (=> bs!1865066 (not (= lambda!405902 lambda!405899))))

(assert (=> d!2182908 true))

(assert (=> d!2182908 (exists!3096 lt!2497471 lambda!405902)))

(declare-fun lt!2497717 () Unit!161212)

(declare-fun choose!52531 (List!67375 List!67374) Unit!161212)

(assert (=> d!2182908 (= lt!2497717 (choose!52531 lt!2497471 s!7408))))

(assert (=> d!2182908 (matchZipper!2816 (content!13327 lt!2497471) s!7408)))

(assert (=> d!2182908 (= (lemmaZipperMatchesExistsMatchingContext!245 lt!2497471 s!7408) lt!2497717)))

(declare-fun bs!1865067 () Bool)

(assert (= bs!1865067 d!2182908))

(declare-fun m!7698194 () Bool)

(assert (=> bs!1865067 m!7698194))

(declare-fun m!7698196 () Bool)

(assert (=> bs!1865067 m!7698196))

(declare-fun m!7698198 () Bool)

(assert (=> bs!1865067 m!7698198))

(assert (=> bs!1865067 m!7698198))

(declare-fun m!7698200 () Bool)

(assert (=> bs!1865067 m!7698200))

(assert (=> b!7002810 d!2182908))

(declare-fun b!7002952 () Bool)

(declare-fun e!4209339 () (Set Context!12544))

(assert (=> b!7002952 (= e!4209339 (as set.empty (Set Context!12544)))))

(declare-fun b!7002953 () Bool)

(declare-fun call!635865 () (Set Context!12544))

(assert (=> b!7002953 (= e!4209339 call!635865)))

(declare-fun d!2182910 () Bool)

(declare-fun c!1300168 () Bool)

(declare-fun e!4209338 () Bool)

(assert (=> d!2182910 (= c!1300168 e!4209338)))

(declare-fun res!2856869 () Bool)

(assert (=> d!2182910 (=> (not res!2856869) (not e!4209338))))

(assert (=> d!2182910 (= res!2856869 (is-Cons!67249 (exprs!6772 lt!2497453)))))

(declare-fun e!4209337 () (Set Context!12544))

(assert (=> d!2182910 (= (derivationStepZipperUp!1926 lt!2497453 (h!73698 s!7408)) e!4209337)))

(declare-fun b!7002954 () Bool)

(assert (=> b!7002954 (= e!4209338 (nullable!7036 (h!73697 (exprs!6772 lt!2497453))))))

(declare-fun b!7002955 () Bool)

(assert (=> b!7002955 (= e!4209337 (set.union call!635865 (derivationStepZipperUp!1926 (Context!12545 (t!381126 (exprs!6772 lt!2497453))) (h!73698 s!7408))))))

(declare-fun b!7002956 () Bool)

(assert (=> b!7002956 (= e!4209337 e!4209339)))

(declare-fun c!1300167 () Bool)

(assert (=> b!7002956 (= c!1300167 (is-Cons!67249 (exprs!6772 lt!2497453)))))

(declare-fun bm!635860 () Bool)

(assert (=> bm!635860 (= call!635865 (derivationStepZipperDown!1994 (h!73697 (exprs!6772 lt!2497453)) (Context!12545 (t!381126 (exprs!6772 lt!2497453))) (h!73698 s!7408)))))

(assert (= (and d!2182910 res!2856869) b!7002954))

(assert (= (and d!2182910 c!1300168) b!7002955))

(assert (= (and d!2182910 (not c!1300168)) b!7002956))

(assert (= (and b!7002956 c!1300167) b!7002953))

(assert (= (and b!7002956 (not c!1300167)) b!7002952))

(assert (= (or b!7002955 b!7002953) bm!635860))

(declare-fun m!7698202 () Bool)

(assert (=> b!7002954 m!7698202))

(declare-fun m!7698204 () Bool)

(assert (=> b!7002955 m!7698204))

(declare-fun m!7698206 () Bool)

(assert (=> bm!635860 m!7698206))

(assert (=> b!7002790 d!2182910))

(declare-fun bm!635873 () Bool)

(declare-fun call!635881 () (Set Context!12544))

(declare-fun call!635880 () (Set Context!12544))

(assert (=> bm!635873 (= call!635881 call!635880)))

(declare-fun b!7002979 () Bool)

(declare-fun e!4209357 () (Set Context!12544))

(declare-fun call!635879 () (Set Context!12544))

(assert (=> b!7002979 (= e!4209357 (set.union call!635879 call!635881))))

(declare-fun bm!635874 () Bool)

(declare-fun c!1300179 () Bool)

(declare-fun call!635883 () List!67373)

(declare-fun c!1300181 () Bool)

(declare-fun c!1300180 () Bool)

(assert (=> bm!635874 (= call!635880 (derivationStepZipperDown!1994 (ite c!1300180 (regOne!35065 (h!73697 (exprs!6772 lt!2497513))) (ite c!1300179 (regTwo!35064 (h!73697 (exprs!6772 lt!2497513))) (ite c!1300181 (regOne!35064 (h!73697 (exprs!6772 lt!2497513))) (reg!17605 (h!73697 (exprs!6772 lt!2497513)))))) (ite (or c!1300180 c!1300179) lt!2497453 (Context!12545 call!635883)) (h!73698 s!7408)))))

(declare-fun b!7002980 () Bool)

(declare-fun e!4209355 () (Set Context!12544))

(declare-fun call!635882 () (Set Context!12544))

(assert (=> b!7002980 (= e!4209355 call!635882)))

(declare-fun bm!635875 () Bool)

(declare-fun call!635878 () List!67373)

(assert (=> bm!635875 (= call!635883 call!635878)))

(declare-fun bm!635876 () Bool)

(declare-fun $colon$colon!2510 (List!67373 Regex!17276) List!67373)

(assert (=> bm!635876 (= call!635878 ($colon$colon!2510 (exprs!6772 lt!2497453) (ite (or c!1300179 c!1300181) (regTwo!35064 (h!73697 (exprs!6772 lt!2497513))) (h!73697 (exprs!6772 lt!2497513)))))))

(declare-fun b!7002981 () Bool)

(declare-fun e!4209353 () (Set Context!12544))

(assert (=> b!7002981 (= e!4209353 (set.insert lt!2497453 (as set.empty (Set Context!12544))))))

(declare-fun b!7002982 () Bool)

(declare-fun e!4209354 () (Set Context!12544))

(assert (=> b!7002982 (= e!4209354 (as set.empty (Set Context!12544)))))

(declare-fun d!2182912 () Bool)

(declare-fun c!1300182 () Bool)

(assert (=> d!2182912 (= c!1300182 (and (is-ElementMatch!17276 (h!73697 (exprs!6772 lt!2497513))) (= (c!1300138 (h!73697 (exprs!6772 lt!2497513))) (h!73698 s!7408))))))

(assert (=> d!2182912 (= (derivationStepZipperDown!1994 (h!73697 (exprs!6772 lt!2497513)) lt!2497453 (h!73698 s!7408)) e!4209353)))

(declare-fun b!7002983 () Bool)

(declare-fun e!4209352 () Bool)

(assert (=> b!7002983 (= e!4209352 (nullable!7036 (regOne!35064 (h!73697 (exprs!6772 lt!2497513)))))))

(declare-fun b!7002984 () Bool)

(declare-fun c!1300183 () Bool)

(assert (=> b!7002984 (= c!1300183 (is-Star!17276 (h!73697 (exprs!6772 lt!2497513))))))

(assert (=> b!7002984 (= e!4209355 e!4209354)))

(declare-fun bm!635877 () Bool)

(assert (=> bm!635877 (= call!635879 (derivationStepZipperDown!1994 (ite c!1300180 (regTwo!35065 (h!73697 (exprs!6772 lt!2497513))) (regOne!35064 (h!73697 (exprs!6772 lt!2497513)))) (ite c!1300180 lt!2497453 (Context!12545 call!635878)) (h!73698 s!7408)))))

(declare-fun bm!635878 () Bool)

(assert (=> bm!635878 (= call!635882 call!635881)))

(declare-fun b!7002985 () Bool)

(assert (=> b!7002985 (= e!4209357 e!4209355)))

(assert (=> b!7002985 (= c!1300181 (is-Concat!26121 (h!73697 (exprs!6772 lt!2497513))))))

(declare-fun b!7002986 () Bool)

(assert (=> b!7002986 (= c!1300179 e!4209352)))

(declare-fun res!2856872 () Bool)

(assert (=> b!7002986 (=> (not res!2856872) (not e!4209352))))

(assert (=> b!7002986 (= res!2856872 (is-Concat!26121 (h!73697 (exprs!6772 lt!2497513))))))

(declare-fun e!4209356 () (Set Context!12544))

(assert (=> b!7002986 (= e!4209356 e!4209357)))

(declare-fun b!7002987 () Bool)

(assert (=> b!7002987 (= e!4209354 call!635882)))

(declare-fun b!7002988 () Bool)

(assert (=> b!7002988 (= e!4209353 e!4209356)))

(assert (=> b!7002988 (= c!1300180 (is-Union!17276 (h!73697 (exprs!6772 lt!2497513))))))

(declare-fun b!7002989 () Bool)

(assert (=> b!7002989 (= e!4209356 (set.union call!635880 call!635879))))

(assert (= (and d!2182912 c!1300182) b!7002981))

(assert (= (and d!2182912 (not c!1300182)) b!7002988))

(assert (= (and b!7002988 c!1300180) b!7002989))

(assert (= (and b!7002988 (not c!1300180)) b!7002986))

(assert (= (and b!7002986 res!2856872) b!7002983))

(assert (= (and b!7002986 c!1300179) b!7002979))

(assert (= (and b!7002986 (not c!1300179)) b!7002985))

(assert (= (and b!7002985 c!1300181) b!7002980))

(assert (= (and b!7002985 (not c!1300181)) b!7002984))

(assert (= (and b!7002984 c!1300183) b!7002987))

(assert (= (and b!7002984 (not c!1300183)) b!7002982))

(assert (= (or b!7002980 b!7002987) bm!635875))

(assert (= (or b!7002980 b!7002987) bm!635878))

(assert (= (or b!7002979 bm!635878) bm!635873))

(assert (= (or b!7002979 bm!635875) bm!635876))

(assert (= (or b!7002989 bm!635873) bm!635874))

(assert (= (or b!7002989 b!7002979) bm!635877))

(declare-fun m!7698208 () Bool)

(assert (=> bm!635876 m!7698208))

(declare-fun m!7698210 () Bool)

(assert (=> b!7002983 m!7698210))

(declare-fun m!7698212 () Bool)

(assert (=> bm!635874 m!7698212))

(assert (=> b!7002981 m!7697940))

(declare-fun m!7698214 () Bool)

(assert (=> bm!635877 m!7698214))

(assert (=> b!7002790 d!2182912))

(declare-fun d!2182914 () Bool)

(assert (=> d!2182914 (= (head!14147 (_1!37252 lt!2497514)) (h!73698 (_1!37252 lt!2497514)))))

(assert (=> b!7002808 d!2182914))

(declare-fun bs!1865068 () Bool)

(declare-fun d!2182916 () Bool)

(assert (= bs!1865068 (and d!2182916 b!7002786)))

(declare-fun lambda!405905 () Int)

(assert (=> bs!1865068 (= (= lt!2497491 (h!73698 s!7408)) (= lambda!405905 lambda!405832))))

(assert (=> d!2182916 true))

(assert (=> d!2182916 (= (derivationStepZipper!2756 lt!2497470 lt!2497491) (flatMap!2262 lt!2497470 lambda!405905))))

(declare-fun bs!1865069 () Bool)

(assert (= bs!1865069 d!2182916))

(declare-fun m!7698216 () Bool)

(assert (=> bs!1865069 m!7698216))

(assert (=> b!7002808 d!2182916))

(declare-fun d!2182918 () Bool)

(declare-fun dynLambda!27020 (Int Context!12544) (Set Context!12544))

(assert (=> d!2182918 (= (flatMap!2262 lt!2497470 lambda!405832) (dynLambda!27020 lambda!405832 lt!2497453))))

(declare-fun lt!2497720 () Unit!161212)

(declare-fun choose!52532 ((Set Context!12544) Context!12544 Int) Unit!161212)

(assert (=> d!2182918 (= lt!2497720 (choose!52532 lt!2497470 lt!2497453 lambda!405832))))

(assert (=> d!2182918 (= lt!2497470 (set.insert lt!2497453 (as set.empty (Set Context!12544))))))

(assert (=> d!2182918 (= (lemmaFlatMapOnSingletonSet!1777 lt!2497470 lt!2497453 lambda!405832) lt!2497720)))

(declare-fun b_lambda!263841 () Bool)

(assert (=> (not b_lambda!263841) (not d!2182918)))

(declare-fun bs!1865070 () Bool)

(assert (= bs!1865070 d!2182918))

(assert (=> bs!1865070 m!7697950))

(declare-fun m!7698218 () Bool)

(assert (=> bs!1865070 m!7698218))

(declare-fun m!7698220 () Bool)

(assert (=> bs!1865070 m!7698220))

(assert (=> bs!1865070 m!7697940))

(assert (=> b!7002808 d!2182918))

(declare-fun d!2182920 () Bool)

(declare-fun choose!52533 ((Set Context!12544) Int) (Set Context!12544))

(assert (=> d!2182920 (= (flatMap!2262 lt!2497470 lambda!405832) (choose!52533 lt!2497470 lambda!405832))))

(declare-fun bs!1865071 () Bool)

(assert (= bs!1865071 d!2182920))

(declare-fun m!7698222 () Bool)

(assert (=> bs!1865071 m!7698222))

(assert (=> b!7002808 d!2182920))

(declare-fun b!7002992 () Bool)

(declare-fun e!4209360 () (Set Context!12544))

(assert (=> b!7002992 (= e!4209360 (as set.empty (Set Context!12544)))))

(declare-fun b!7002993 () Bool)

(declare-fun call!635884 () (Set Context!12544))

(assert (=> b!7002993 (= e!4209360 call!635884)))

(declare-fun d!2182922 () Bool)

(declare-fun c!1300187 () Bool)

(declare-fun e!4209359 () Bool)

(assert (=> d!2182922 (= c!1300187 e!4209359)))

(declare-fun res!2856873 () Bool)

(assert (=> d!2182922 (=> (not res!2856873) (not e!4209359))))

(assert (=> d!2182922 (= res!2856873 (is-Cons!67249 (exprs!6772 lt!2497453)))))

(declare-fun e!4209358 () (Set Context!12544))

(assert (=> d!2182922 (= (derivationStepZipperUp!1926 lt!2497453 lt!2497491) e!4209358)))

(declare-fun b!7002994 () Bool)

(assert (=> b!7002994 (= e!4209359 (nullable!7036 (h!73697 (exprs!6772 lt!2497453))))))

(declare-fun b!7002995 () Bool)

(assert (=> b!7002995 (= e!4209358 (set.union call!635884 (derivationStepZipperUp!1926 (Context!12545 (t!381126 (exprs!6772 lt!2497453))) lt!2497491)))))

(declare-fun b!7002996 () Bool)

(assert (=> b!7002996 (= e!4209358 e!4209360)))

(declare-fun c!1300186 () Bool)

(assert (=> b!7002996 (= c!1300186 (is-Cons!67249 (exprs!6772 lt!2497453)))))

(declare-fun bm!635879 () Bool)

(assert (=> bm!635879 (= call!635884 (derivationStepZipperDown!1994 (h!73697 (exprs!6772 lt!2497453)) (Context!12545 (t!381126 (exprs!6772 lt!2497453))) lt!2497491))))

(assert (= (and d!2182922 res!2856873) b!7002994))

(assert (= (and d!2182922 c!1300187) b!7002995))

(assert (= (and d!2182922 (not c!1300187)) b!7002996))

(assert (= (and b!7002996 c!1300186) b!7002993))

(assert (= (and b!7002996 (not c!1300186)) b!7002992))

(assert (= (or b!7002995 b!7002993) bm!635879))

(assert (=> b!7002994 m!7698202))

(declare-fun m!7698224 () Bool)

(assert (=> b!7002995 m!7698224))

(declare-fun m!7698226 () Bool)

(assert (=> bm!635879 m!7698226))

(assert (=> b!7002808 d!2182922))

(assert (=> b!7002808 d!2182910))

(declare-fun d!2182924 () Bool)

(declare-fun forall!16194 (List!67373 Int) Bool)

(assert (=> d!2182924 (forall!16194 (++!15253 lt!2497506 (exprs!6772 ct2!306)) lambda!405831)))

(declare-fun lt!2497723 () Unit!161212)

(declare-fun choose!52534 (List!67373 List!67373 Int) Unit!161212)

(assert (=> d!2182924 (= lt!2497723 (choose!52534 lt!2497506 (exprs!6772 ct2!306) lambda!405831))))

(assert (=> d!2182924 (forall!16194 lt!2497506 lambda!405831)))

(assert (=> d!2182924 (= (lemmaConcatPreservesForall!612 lt!2497506 (exprs!6772 ct2!306) lambda!405831) lt!2497723)))

(declare-fun bs!1865072 () Bool)

(assert (= bs!1865072 d!2182924))

(assert (=> bs!1865072 m!7697944))

(assert (=> bs!1865072 m!7697944))

(declare-fun m!7698228 () Bool)

(assert (=> bs!1865072 m!7698228))

(declare-fun m!7698230 () Bool)

(assert (=> bs!1865072 m!7698230))

(declare-fun m!7698232 () Bool)

(assert (=> bs!1865072 m!7698232))

(assert (=> b!7002788 d!2182924))

(declare-fun b!7002997 () Bool)

(declare-fun e!4209363 () (Set Context!12544))

(assert (=> b!7002997 (= e!4209363 (as set.empty (Set Context!12544)))))

(declare-fun b!7002998 () Bool)

(declare-fun call!635885 () (Set Context!12544))

(assert (=> b!7002998 (= e!4209363 call!635885)))

(declare-fun d!2182926 () Bool)

(declare-fun c!1300189 () Bool)

(declare-fun e!4209362 () Bool)

(assert (=> d!2182926 (= c!1300189 e!4209362)))

(declare-fun res!2856874 () Bool)

(assert (=> d!2182926 (=> (not res!2856874) (not e!4209362))))

(assert (=> d!2182926 (= res!2856874 (is-Cons!67249 (exprs!6772 lt!2497493)))))

(declare-fun e!4209361 () (Set Context!12544))

(assert (=> d!2182926 (= (derivationStepZipperUp!1926 lt!2497493 (h!73698 s!7408)) e!4209361)))

(declare-fun b!7002999 () Bool)

(assert (=> b!7002999 (= e!4209362 (nullable!7036 (h!73697 (exprs!6772 lt!2497493))))))

(declare-fun b!7003000 () Bool)

(assert (=> b!7003000 (= e!4209361 (set.union call!635885 (derivationStepZipperUp!1926 (Context!12545 (t!381126 (exprs!6772 lt!2497493))) (h!73698 s!7408))))))

(declare-fun b!7003001 () Bool)

(assert (=> b!7003001 (= e!4209361 e!4209363)))

(declare-fun c!1300188 () Bool)

(assert (=> b!7003001 (= c!1300188 (is-Cons!67249 (exprs!6772 lt!2497493)))))

(declare-fun bm!635880 () Bool)

(assert (=> bm!635880 (= call!635885 (derivationStepZipperDown!1994 (h!73697 (exprs!6772 lt!2497493)) (Context!12545 (t!381126 (exprs!6772 lt!2497493))) (h!73698 s!7408)))))

(assert (= (and d!2182926 res!2856874) b!7002999))

(assert (= (and d!2182926 c!1300189) b!7003000))

(assert (= (and d!2182926 (not c!1300189)) b!7003001))

(assert (= (and b!7003001 c!1300188) b!7002998))

(assert (= (and b!7003001 (not c!1300188)) b!7002997))

(assert (= (or b!7003000 b!7002998) bm!635880))

(declare-fun m!7698234 () Bool)

(assert (=> b!7002999 m!7698234))

(declare-fun m!7698236 () Bool)

(assert (=> b!7003000 m!7698236))

(declare-fun m!7698238 () Bool)

(assert (=> bm!635880 m!7698238))

(assert (=> b!7002788 d!2182926))

(declare-fun d!2182928 () Bool)

(assert (=> d!2182928 (= (flatMap!2262 lt!2497456 lambda!405832) (choose!52533 lt!2497456 lambda!405832))))

(declare-fun bs!1865073 () Bool)

(assert (= bs!1865073 d!2182928))

(declare-fun m!7698240 () Bool)

(assert (=> bs!1865073 m!7698240))

(assert (=> b!7002788 d!2182928))

(declare-fun bs!1865074 () Bool)

(declare-fun d!2182930 () Bool)

(assert (= bs!1865074 (and d!2182930 b!7002786)))

(declare-fun lambda!405906 () Int)

(assert (=> bs!1865074 (= lambda!405906 lambda!405832)))

(declare-fun bs!1865075 () Bool)

(assert (= bs!1865075 (and d!2182930 d!2182916)))

(assert (=> bs!1865075 (= (= (h!73698 s!7408) lt!2497491) (= lambda!405906 lambda!405905))))

(assert (=> d!2182930 true))

(assert (=> d!2182930 (= (derivationStepZipper!2756 lt!2497456 (h!73698 s!7408)) (flatMap!2262 lt!2497456 lambda!405906))))

(declare-fun bs!1865076 () Bool)

(assert (= bs!1865076 d!2182930))

(declare-fun m!7698242 () Bool)

(assert (=> bs!1865076 m!7698242))

(assert (=> b!7002788 d!2182930))

(declare-fun d!2182932 () Bool)

(assert (=> d!2182932 (= (flatMap!2262 lt!2497456 lambda!405832) (dynLambda!27020 lambda!405832 lt!2497493))))

(declare-fun lt!2497724 () Unit!161212)

(assert (=> d!2182932 (= lt!2497724 (choose!52532 lt!2497456 lt!2497493 lambda!405832))))

(assert (=> d!2182932 (= lt!2497456 (set.insert lt!2497493 (as set.empty (Set Context!12544))))))

(assert (=> d!2182932 (= (lemmaFlatMapOnSingletonSet!1777 lt!2497456 lt!2497493 lambda!405832) lt!2497724)))

(declare-fun b_lambda!263843 () Bool)

(assert (=> (not b_lambda!263843) (not d!2182932)))

(declare-fun bs!1865077 () Bool)

(assert (= bs!1865077 d!2182932))

(assert (=> bs!1865077 m!7697978))

(declare-fun m!7698244 () Bool)

(assert (=> bs!1865077 m!7698244))

(declare-fun m!7698246 () Bool)

(assert (=> bs!1865077 m!7698246))

(assert (=> bs!1865077 m!7697974))

(assert (=> b!7002788 d!2182932))

(declare-fun d!2182934 () Bool)

(declare-fun choose!52535 ((Set Context!12544) Int) (Set Context!12544))

(assert (=> d!2182934 (= (map!15561 lt!2497470 lambda!405830) (choose!52535 lt!2497470 lambda!405830))))

(declare-fun bs!1865078 () Bool)

(assert (= bs!1865078 d!2182934))

(declare-fun m!7698248 () Bool)

(assert (=> bs!1865078 m!7698248))

(assert (=> b!7002809 d!2182934))

(declare-fun d!2182936 () Bool)

(assert (=> d!2182936 (<= (contextDepthTotal!469 lt!2497513) (zipperDepthTotal!497 lt!2497460))))

(declare-fun lt!2497727 () Unit!161212)

(declare-fun choose!52536 (List!67375 Context!12544) Unit!161212)

(assert (=> d!2182936 (= lt!2497727 (choose!52536 lt!2497460 lt!2497513))))

(declare-fun contains!20427 (List!67375 Context!12544) Bool)

(assert (=> d!2182936 (contains!20427 lt!2497460 lt!2497513)))

(assert (=> d!2182936 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!37 lt!2497460 lt!2497513) lt!2497727)))

(declare-fun bs!1865079 () Bool)

(assert (= bs!1865079 d!2182936))

(assert (=> bs!1865079 m!7697946))

(assert (=> bs!1865079 m!7697934))

(declare-fun m!7698250 () Bool)

(assert (=> bs!1865079 m!7698250))

(declare-fun m!7698252 () Bool)

(assert (=> bs!1865079 m!7698252))

(assert (=> b!7002809 d!2182936))

(declare-fun d!2182938 () Bool)

(declare-fun lt!2497730 () Int)

(assert (=> d!2182938 (>= lt!2497730 0)))

(declare-fun e!4209366 () Int)

(assert (=> d!2182938 (= lt!2497730 e!4209366)))

(declare-fun c!1300193 () Bool)

(assert (=> d!2182938 (= c!1300193 (is-Cons!67251 lt!2497460))))

(assert (=> d!2182938 (= (zipperDepthTotal!497 lt!2497460) lt!2497730)))

(declare-fun b!7003006 () Bool)

(assert (=> b!7003006 (= e!4209366 (+ (contextDepthTotal!469 (h!73699 lt!2497460)) (zipperDepthTotal!497 (t!381128 lt!2497460))))))

(declare-fun b!7003007 () Bool)

(assert (=> b!7003007 (= e!4209366 0)))

(assert (= (and d!2182938 c!1300193) b!7003006))

(assert (= (and d!2182938 (not c!1300193)) b!7003007))

(declare-fun m!7698254 () Bool)

(assert (=> b!7003006 m!7698254))

(declare-fun m!7698256 () Bool)

(assert (=> b!7003006 m!7698256))

(assert (=> b!7002809 d!2182938))

(declare-fun d!2182940 () Bool)

(declare-fun lt!2497733 () Int)

(assert (=> d!2182940 (>= lt!2497733 0)))

(declare-fun e!4209369 () Int)

(assert (=> d!2182940 (= lt!2497733 e!4209369)))

(declare-fun c!1300197 () Bool)

(assert (=> d!2182940 (= c!1300197 (is-Cons!67249 (exprs!6772 lt!2497453)))))

(assert (=> d!2182940 (= (contextDepthTotal!469 lt!2497453) lt!2497733)))

(declare-fun b!7003012 () Bool)

(declare-fun regexDepthTotal!285 (Regex!17276) Int)

(assert (=> b!7003012 (= e!4209369 (+ (regexDepthTotal!285 (h!73697 (exprs!6772 lt!2497453))) (contextDepthTotal!469 (Context!12545 (t!381126 (exprs!6772 lt!2497453))))))))

(declare-fun b!7003013 () Bool)

(assert (=> b!7003013 (= e!4209369 1)))

(assert (= (and d!2182940 c!1300197) b!7003012))

(assert (= (and d!2182940 (not c!1300197)) b!7003013))

(declare-fun m!7698258 () Bool)

(assert (=> b!7003012 m!7698258))

(declare-fun m!7698260 () Bool)

(assert (=> b!7003012 m!7698260))

(assert (=> b!7002809 d!2182940))

(declare-fun b!7003023 () Bool)

(declare-fun e!4209374 () List!67373)

(assert (=> b!7003023 (= e!4209374 (Cons!67249 (h!73697 lt!2497506) (++!15253 (t!381126 lt!2497506) (exprs!6772 ct2!306))))))

(declare-fun b!7003024 () Bool)

(declare-fun res!2856879 () Bool)

(declare-fun e!4209375 () Bool)

(assert (=> b!7003024 (=> (not res!2856879) (not e!4209375))))

(declare-fun lt!2497736 () List!67373)

(declare-fun size!40947 (List!67373) Int)

(assert (=> b!7003024 (= res!2856879 (= (size!40947 lt!2497736) (+ (size!40947 lt!2497506) (size!40947 (exprs!6772 ct2!306)))))))

(declare-fun b!7003025 () Bool)

(assert (=> b!7003025 (= e!4209375 (or (not (= (exprs!6772 ct2!306) Nil!67249)) (= lt!2497736 lt!2497506)))))

(declare-fun d!2182942 () Bool)

(assert (=> d!2182942 e!4209375))

(declare-fun res!2856880 () Bool)

(assert (=> d!2182942 (=> (not res!2856880) (not e!4209375))))

(declare-fun content!13328 (List!67373) (Set Regex!17276))

(assert (=> d!2182942 (= res!2856880 (= (content!13328 lt!2497736) (set.union (content!13328 lt!2497506) (content!13328 (exprs!6772 ct2!306)))))))

(assert (=> d!2182942 (= lt!2497736 e!4209374)))

(declare-fun c!1300200 () Bool)

(assert (=> d!2182942 (= c!1300200 (is-Nil!67249 lt!2497506))))

(assert (=> d!2182942 (= (++!15253 lt!2497506 (exprs!6772 ct2!306)) lt!2497736)))

(declare-fun b!7003022 () Bool)

(assert (=> b!7003022 (= e!4209374 (exprs!6772 ct2!306))))

(assert (= (and d!2182942 c!1300200) b!7003022))

(assert (= (and d!2182942 (not c!1300200)) b!7003023))

(assert (= (and d!2182942 res!2856880) b!7003024))

(assert (= (and b!7003024 res!2856879) b!7003025))

(declare-fun m!7698262 () Bool)

(assert (=> b!7003023 m!7698262))

(declare-fun m!7698264 () Bool)

(assert (=> b!7003024 m!7698264))

(declare-fun m!7698266 () Bool)

(assert (=> b!7003024 m!7698266))

(declare-fun m!7698268 () Bool)

(assert (=> b!7003024 m!7698268))

(declare-fun m!7698270 () Bool)

(assert (=> d!2182942 m!7698270))

(declare-fun m!7698272 () Bool)

(assert (=> d!2182942 m!7698272))

(declare-fun m!7698274 () Bool)

(assert (=> d!2182942 m!7698274))

(assert (=> b!7002809 d!2182942))

(declare-fun d!2182944 () Bool)

(declare-fun dynLambda!27021 (Int Context!12544) Context!12544)

(assert (=> d!2182944 (= (map!15561 lt!2497470 lambda!405830) (set.insert (dynLambda!27021 lambda!405830 lt!2497453) (as set.empty (Set Context!12544))))))

(declare-fun lt!2497739 () Unit!161212)

(declare-fun choose!52537 ((Set Context!12544) Context!12544 Int) Unit!161212)

(assert (=> d!2182944 (= lt!2497739 (choose!52537 lt!2497470 lt!2497453 lambda!405830))))

(assert (=> d!2182944 (= lt!2497470 (set.insert lt!2497453 (as set.empty (Set Context!12544))))))

(assert (=> d!2182944 (= (lemmaMapOnSingletonSet!341 lt!2497470 lt!2497453 lambda!405830) lt!2497739)))

(declare-fun b_lambda!263845 () Bool)

(assert (=> (not b_lambda!263845) (not d!2182944)))

(declare-fun bs!1865080 () Bool)

(assert (= bs!1865080 d!2182944))

(assert (=> bs!1865080 m!7697940))

(declare-fun m!7698276 () Bool)

(assert (=> bs!1865080 m!7698276))

(declare-fun m!7698278 () Bool)

(assert (=> bs!1865080 m!7698278))

(assert (=> bs!1865080 m!7697932))

(assert (=> bs!1865080 m!7698278))

(declare-fun m!7698280 () Bool)

(assert (=> bs!1865080 m!7698280))

(assert (=> b!7002809 d!2182944))

(declare-fun d!2182946 () Bool)

(declare-fun lt!2497740 () Int)

(assert (=> d!2182946 (>= lt!2497740 0)))

(declare-fun e!4209376 () Int)

(assert (=> d!2182946 (= lt!2497740 e!4209376)))

(declare-fun c!1300201 () Bool)

(assert (=> d!2182946 (= c!1300201 (is-Cons!67249 (exprs!6772 lt!2497513)))))

(assert (=> d!2182946 (= (contextDepthTotal!469 lt!2497513) lt!2497740)))

(declare-fun b!7003026 () Bool)

(assert (=> b!7003026 (= e!4209376 (+ (regexDepthTotal!285 (h!73697 (exprs!6772 lt!2497513))) (contextDepthTotal!469 (Context!12545 (t!381126 (exprs!6772 lt!2497513))))))))

(declare-fun b!7003027 () Bool)

(assert (=> b!7003027 (= e!4209376 1)))

(assert (= (and d!2182946 c!1300201) b!7003026))

(assert (= (and d!2182946 (not c!1300201)) b!7003027))

(declare-fun m!7698282 () Bool)

(assert (=> b!7003026 m!7698282))

(declare-fun m!7698284 () Bool)

(assert (=> b!7003026 m!7698284))

(assert (=> b!7002809 d!2182946))

(assert (=> b!7002809 d!2182918))

(assert (=> b!7002809 d!2182920))

(assert (=> b!7002809 d!2182910))

(declare-fun d!2182948 () Bool)

(declare-fun e!4209377 () Bool)

(assert (=> d!2182948 e!4209377))

(declare-fun res!2856881 () Bool)

(assert (=> d!2182948 (=> (not res!2856881) (not e!4209377))))

(declare-fun lt!2497741 () List!67375)

(assert (=> d!2182948 (= res!2856881 (noDuplicate!2548 lt!2497741))))

(assert (=> d!2182948 (= lt!2497741 (choose!52530 z1!570))))

(assert (=> d!2182948 (= (toList!10636 z1!570) lt!2497741)))

(declare-fun b!7003028 () Bool)

(assert (=> b!7003028 (= e!4209377 (= (content!13327 lt!2497741) z1!570))))

(assert (= (and d!2182948 res!2856881) b!7003028))

(declare-fun m!7698286 () Bool)

(assert (=> d!2182948 m!7698286))

(declare-fun m!7698288 () Bool)

(assert (=> d!2182948 m!7698288))

(declare-fun m!7698290 () Bool)

(assert (=> b!7003028 m!7698290))

(assert (=> b!7002809 d!2182948))

(assert (=> b!7002809 d!2182924))

(declare-fun d!2182950 () Bool)

(declare-fun c!1300202 () Bool)

(assert (=> d!2182950 (= c!1300202 (isEmpty!39270 s!7408))))

(declare-fun e!4209378 () Bool)

(assert (=> d!2182950 (= (matchZipper!2816 lt!2497502 s!7408) e!4209378)))

(declare-fun b!7003029 () Bool)

(assert (=> b!7003029 (= e!4209378 (nullableZipper!2467 lt!2497502))))

(declare-fun b!7003030 () Bool)

(assert (=> b!7003030 (= e!4209378 (matchZipper!2816 (derivationStepZipper!2756 lt!2497502 (head!14147 s!7408)) (tail!13321 s!7408)))))

(assert (= (and d!2182950 c!1300202) b!7003029))

(assert (= (and d!2182950 (not c!1300202)) b!7003030))

(assert (=> d!2182950 m!7698166))

(declare-fun m!7698292 () Bool)

(assert (=> b!7003029 m!7698292))

(assert (=> b!7003030 m!7698170))

(assert (=> b!7003030 m!7698170))

(declare-fun m!7698294 () Bool)

(assert (=> b!7003030 m!7698294))

(assert (=> b!7003030 m!7698174))

(assert (=> b!7003030 m!7698294))

(assert (=> b!7003030 m!7698174))

(declare-fun m!7698296 () Bool)

(assert (=> b!7003030 m!7698296))

(assert (=> start!673910 d!2182950))

(declare-fun bs!1865081 () Bool)

(declare-fun d!2182952 () Bool)

(assert (= bs!1865081 (and d!2182952 b!7002799)))

(declare-fun lambda!405911 () Int)

(assert (=> bs!1865081 (= lambda!405911 lambda!405830)))

(assert (=> d!2182952 true))

(assert (=> d!2182952 (= (appendTo!397 z1!570 ct2!306) (map!15561 z1!570 lambda!405911))))

(declare-fun bs!1865082 () Bool)

(assert (= bs!1865082 d!2182952))

(declare-fun m!7698298 () Bool)

(assert (=> bs!1865082 m!7698298))

(assert (=> start!673910 d!2182952))

(declare-fun bs!1865083 () Bool)

(declare-fun d!2182954 () Bool)

(assert (= bs!1865083 (and d!2182954 b!7002799)))

(declare-fun lambda!405914 () Int)

(assert (=> bs!1865083 (= lambda!405914 lambda!405831)))

(assert (=> d!2182954 (= (inv!86050 ct2!306) (forall!16194 (exprs!6772 ct2!306) lambda!405914))))

(declare-fun bs!1865084 () Bool)

(assert (= bs!1865084 d!2182954))

(declare-fun m!7698300 () Bool)

(assert (=> bs!1865084 m!7698300))

(assert (=> start!673910 d!2182954))

(declare-fun bs!1865085 () Bool)

(declare-fun d!2182956 () Bool)

(assert (= bs!1865085 (and d!2182956 b!7002799)))

(declare-fun lambda!405915 () Int)

(assert (=> bs!1865085 (= lambda!405915 lambda!405831)))

(declare-fun bs!1865086 () Bool)

(assert (= bs!1865086 (and d!2182956 d!2182954)))

(assert (=> bs!1865086 (= lambda!405915 lambda!405914)))

(assert (=> d!2182956 (= (inv!86050 setElem!48144) (forall!16194 (exprs!6772 setElem!48144) lambda!405915))))

(declare-fun bs!1865087 () Bool)

(assert (= bs!1865087 d!2182956))

(declare-fun m!7698302 () Bool)

(assert (=> bs!1865087 m!7698302))

(assert (=> setNonEmpty!48144 d!2182956))

(declare-fun d!2182958 () Bool)

(declare-fun c!1300204 () Bool)

(assert (=> d!2182958 (= c!1300204 (isEmpty!39270 (t!381127 s!7408)))))

(declare-fun e!4209379 () Bool)

(assert (=> d!2182958 (= (matchZipper!2816 lt!2497497 (t!381127 s!7408)) e!4209379)))

(declare-fun b!7003031 () Bool)

(assert (=> b!7003031 (= e!4209379 (nullableZipper!2467 lt!2497497))))

(declare-fun b!7003032 () Bool)

(assert (=> b!7003032 (= e!4209379 (matchZipper!2816 (derivationStepZipper!2756 lt!2497497 (head!14147 (t!381127 s!7408))) (tail!13321 (t!381127 s!7408))))))

(assert (= (and d!2182958 c!1300204) b!7003031))

(assert (= (and d!2182958 (not c!1300204)) b!7003032))

(declare-fun m!7698304 () Bool)

(assert (=> d!2182958 m!7698304))

(declare-fun m!7698306 () Bool)

(assert (=> b!7003031 m!7698306))

(declare-fun m!7698308 () Bool)

(assert (=> b!7003032 m!7698308))

(assert (=> b!7003032 m!7698308))

(declare-fun m!7698310 () Bool)

(assert (=> b!7003032 m!7698310))

(declare-fun m!7698312 () Bool)

(assert (=> b!7003032 m!7698312))

(assert (=> b!7003032 m!7698310))

(assert (=> b!7003032 m!7698312))

(declare-fun m!7698314 () Bool)

(assert (=> b!7003032 m!7698314))

(assert (=> b!7002792 d!2182958))

(assert (=> b!7002792 d!2182924))

(declare-fun d!2182960 () Bool)

(declare-fun c!1300205 () Bool)

(assert (=> d!2182960 (= c!1300205 (isEmpty!39270 (t!381127 s!7408)))))

(declare-fun e!4209380 () Bool)

(assert (=> d!2182960 (= (matchZipper!2816 lt!2497462 (t!381127 s!7408)) e!4209380)))

(declare-fun b!7003033 () Bool)

(assert (=> b!7003033 (= e!4209380 (nullableZipper!2467 lt!2497462))))

(declare-fun b!7003034 () Bool)

(assert (=> b!7003034 (= e!4209380 (matchZipper!2816 (derivationStepZipper!2756 lt!2497462 (head!14147 (t!381127 s!7408))) (tail!13321 (t!381127 s!7408))))))

(assert (= (and d!2182960 c!1300205) b!7003033))

(assert (= (and d!2182960 (not c!1300205)) b!7003034))

(assert (=> d!2182960 m!7698304))

(declare-fun m!7698316 () Bool)

(assert (=> b!7003033 m!7698316))

(assert (=> b!7003034 m!7698308))

(assert (=> b!7003034 m!7698308))

(declare-fun m!7698318 () Bool)

(assert (=> b!7003034 m!7698318))

(assert (=> b!7003034 m!7698312))

(assert (=> b!7003034 m!7698318))

(assert (=> b!7003034 m!7698312))

(declare-fun m!7698320 () Bool)

(assert (=> b!7003034 m!7698320))

(assert (=> b!7002792 d!2182960))

(declare-fun e!4209383 () Bool)

(declare-fun d!2182962 () Bool)

(assert (=> d!2182962 (= (matchZipper!2816 (set.union lt!2497494 lt!2497486) (t!381127 s!7408)) e!4209383)))

(declare-fun res!2856884 () Bool)

(assert (=> d!2182962 (=> res!2856884 e!4209383)))

(assert (=> d!2182962 (= res!2856884 (matchZipper!2816 lt!2497494 (t!381127 s!7408)))))

(declare-fun lt!2497746 () Unit!161212)

(declare-fun choose!52538 ((Set Context!12544) (Set Context!12544) List!67374) Unit!161212)

(assert (=> d!2182962 (= lt!2497746 (choose!52538 lt!2497494 lt!2497486 (t!381127 s!7408)))))

(assert (=> d!2182962 (= (lemmaZipperConcatMatchesSameAsBothZippers!1449 lt!2497494 lt!2497486 (t!381127 s!7408)) lt!2497746)))

(declare-fun b!7003037 () Bool)

(assert (=> b!7003037 (= e!4209383 (matchZipper!2816 lt!2497486 (t!381127 s!7408)))))

(assert (= (and d!2182962 (not res!2856884)) b!7003037))

(declare-fun m!7698322 () Bool)

(assert (=> d!2182962 m!7698322))

(assert (=> d!2182962 m!7697912))

(declare-fun m!7698324 () Bool)

(assert (=> d!2182962 m!7698324))

(assert (=> b!7003037 m!7697920))

(assert (=> b!7002792 d!2182962))

(declare-fun d!2182964 () Bool)

(declare-fun c!1300206 () Bool)

(assert (=> d!2182964 (= c!1300206 (isEmpty!39270 (t!381127 s!7408)))))

(declare-fun e!4209384 () Bool)

(assert (=> d!2182964 (= (matchZipper!2816 lt!2497494 (t!381127 s!7408)) e!4209384)))

(declare-fun b!7003038 () Bool)

(assert (=> b!7003038 (= e!4209384 (nullableZipper!2467 lt!2497494))))

(declare-fun b!7003039 () Bool)

(assert (=> b!7003039 (= e!4209384 (matchZipper!2816 (derivationStepZipper!2756 lt!2497494 (head!14147 (t!381127 s!7408))) (tail!13321 (t!381127 s!7408))))))

(assert (= (and d!2182964 c!1300206) b!7003038))

(assert (= (and d!2182964 (not c!1300206)) b!7003039))

(assert (=> d!2182964 m!7698304))

(declare-fun m!7698326 () Bool)

(assert (=> b!7003038 m!7698326))

(assert (=> b!7003039 m!7698308))

(assert (=> b!7003039 m!7698308))

(declare-fun m!7698328 () Bool)

(assert (=> b!7003039 m!7698328))

(assert (=> b!7003039 m!7698312))

(assert (=> b!7003039 m!7698328))

(assert (=> b!7003039 m!7698312))

(declare-fun m!7698330 () Bool)

(assert (=> b!7003039 m!7698330))

(assert (=> b!7002792 d!2182964))

(declare-fun d!2182966 () Bool)

(declare-fun c!1300207 () Bool)

(assert (=> d!2182966 (= c!1300207 (isEmpty!39270 (t!381127 s!7408)))))

(declare-fun e!4209385 () Bool)

(assert (=> d!2182966 (= (matchZipper!2816 lt!2497486 (t!381127 s!7408)) e!4209385)))

(declare-fun b!7003040 () Bool)

(assert (=> b!7003040 (= e!4209385 (nullableZipper!2467 lt!2497486))))

(declare-fun b!7003041 () Bool)

(assert (=> b!7003041 (= e!4209385 (matchZipper!2816 (derivationStepZipper!2756 lt!2497486 (head!14147 (t!381127 s!7408))) (tail!13321 (t!381127 s!7408))))))

(assert (= (and d!2182966 c!1300207) b!7003040))

(assert (= (and d!2182966 (not c!1300207)) b!7003041))

(assert (=> d!2182966 m!7698304))

(declare-fun m!7698332 () Bool)

(assert (=> b!7003040 m!7698332))

(assert (=> b!7003041 m!7698308))

(assert (=> b!7003041 m!7698308))

(declare-fun m!7698334 () Bool)

(assert (=> b!7003041 m!7698334))

(assert (=> b!7003041 m!7698312))

(assert (=> b!7003041 m!7698334))

(assert (=> b!7003041 m!7698312))

(declare-fun m!7698336 () Bool)

(assert (=> b!7003041 m!7698336))

(assert (=> b!7002812 d!2182966))

(declare-fun d!2182968 () Bool)

(declare-fun c!1300208 () Bool)

(assert (=> d!2182968 (= c!1300208 (isEmpty!39270 lt!2497469))))

(declare-fun e!4209386 () Bool)

(assert (=> d!2182968 (= (matchZipper!2816 lt!2497476 lt!2497469) e!4209386)))

(declare-fun b!7003042 () Bool)

(assert (=> b!7003042 (= e!4209386 (nullableZipper!2467 lt!2497476))))

(declare-fun b!7003043 () Bool)

(assert (=> b!7003043 (= e!4209386 (matchZipper!2816 (derivationStepZipper!2756 lt!2497476 (head!14147 lt!2497469)) (tail!13321 lt!2497469)))))

(assert (= (and d!2182968 c!1300208) b!7003042))

(assert (= (and d!2182968 (not c!1300208)) b!7003043))

(declare-fun m!7698338 () Bool)

(assert (=> d!2182968 m!7698338))

(declare-fun m!7698340 () Bool)

(assert (=> b!7003042 m!7698340))

(declare-fun m!7698342 () Bool)

(assert (=> b!7003043 m!7698342))

(assert (=> b!7003043 m!7698342))

(declare-fun m!7698344 () Bool)

(assert (=> b!7003043 m!7698344))

(declare-fun m!7698346 () Bool)

(assert (=> b!7003043 m!7698346))

(assert (=> b!7003043 m!7698344))

(assert (=> b!7003043 m!7698346))

(declare-fun m!7698348 () Bool)

(assert (=> b!7003043 m!7698348))

(assert (=> b!7002791 d!2182968))

(declare-fun b!7003062 () Bool)

(declare-fun e!4209400 () Option!16781)

(assert (=> b!7003062 (= e!4209400 None!16780)))

(declare-fun b!7003063 () Bool)

(declare-fun res!2856899 () Bool)

(declare-fun e!4209398 () Bool)

(assert (=> b!7003063 (=> (not res!2856899) (not e!4209398))))

(declare-fun lt!2497755 () Option!16781)

(assert (=> b!7003063 (= res!2856899 (matchZipper!2816 lt!2497470 (_1!37252 (get!23584 lt!2497755))))))

(declare-fun b!7003064 () Bool)

(assert (=> b!7003064 (= e!4209398 (= (++!15254 (_1!37252 (get!23584 lt!2497755)) (_2!37252 (get!23584 lt!2497755))) s!7408))))

(declare-fun b!7003065 () Bool)

(declare-fun e!4209399 () Option!16781)

(assert (=> b!7003065 (= e!4209399 e!4209400)))

(declare-fun c!1300213 () Bool)

(assert (=> b!7003065 (= c!1300213 (is-Nil!67250 s!7408))))

(declare-fun b!7003066 () Bool)

(declare-fun res!2856898 () Bool)

(assert (=> b!7003066 (=> (not res!2856898) (not e!4209398))))

(assert (=> b!7003066 (= res!2856898 (matchZipper!2816 lt!2497509 (_2!37252 (get!23584 lt!2497755))))))

(declare-fun b!7003067 () Bool)

(declare-fun e!4209401 () Bool)

(assert (=> b!7003067 (= e!4209401 (matchZipper!2816 lt!2497509 s!7408))))

(declare-fun b!7003068 () Bool)

(declare-fun e!4209397 () Bool)

(assert (=> b!7003068 (= e!4209397 (not (isDefined!13482 lt!2497755)))))

(declare-fun d!2182970 () Bool)

(assert (=> d!2182970 e!4209397))

(declare-fun res!2856897 () Bool)

(assert (=> d!2182970 (=> res!2856897 e!4209397)))

(assert (=> d!2182970 (= res!2856897 e!4209398)))

(declare-fun res!2856895 () Bool)

(assert (=> d!2182970 (=> (not res!2856895) (not e!4209398))))

(assert (=> d!2182970 (= res!2856895 (isDefined!13482 lt!2497755))))

(assert (=> d!2182970 (= lt!2497755 e!4209399)))

(declare-fun c!1300214 () Bool)

(assert (=> d!2182970 (= c!1300214 e!4209401)))

(declare-fun res!2856896 () Bool)

(assert (=> d!2182970 (=> (not res!2856896) (not e!4209401))))

(assert (=> d!2182970 (= res!2856896 (matchZipper!2816 lt!2497470 Nil!67250))))

(assert (=> d!2182970 (= (++!15254 Nil!67250 s!7408) s!7408)))

(assert (=> d!2182970 (= (findConcatSeparationZippers!297 lt!2497470 lt!2497509 Nil!67250 s!7408 s!7408) lt!2497755)))

(declare-fun b!7003069 () Bool)

(declare-fun lt!2497754 () Unit!161212)

(declare-fun lt!2497753 () Unit!161212)

(assert (=> b!7003069 (= lt!2497754 lt!2497753)))

(assert (=> b!7003069 (= (++!15254 (++!15254 Nil!67250 (Cons!67250 (h!73698 s!7408) Nil!67250)) (t!381127 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2887 (List!67374 C!34822 List!67374 List!67374) Unit!161212)

(assert (=> b!7003069 (= lt!2497753 (lemmaMoveElementToOtherListKeepsConcatEq!2887 Nil!67250 (h!73698 s!7408) (t!381127 s!7408) s!7408))))

(assert (=> b!7003069 (= e!4209400 (findConcatSeparationZippers!297 lt!2497470 lt!2497509 (++!15254 Nil!67250 (Cons!67250 (h!73698 s!7408) Nil!67250)) (t!381127 s!7408) s!7408))))

(declare-fun b!7003070 () Bool)

(assert (=> b!7003070 (= e!4209399 (Some!16780 (tuple2!67899 Nil!67250 s!7408)))))

(assert (= (and d!2182970 res!2856896) b!7003067))

(assert (= (and d!2182970 c!1300214) b!7003070))

(assert (= (and d!2182970 (not c!1300214)) b!7003065))

(assert (= (and b!7003065 c!1300213) b!7003062))

(assert (= (and b!7003065 (not c!1300213)) b!7003069))

(assert (= (and d!2182970 res!2856895) b!7003063))

(assert (= (and b!7003063 res!2856899) b!7003066))

(assert (= (and b!7003066 res!2856898) b!7003064))

(assert (= (and d!2182970 (not res!2856897)) b!7003068))

(declare-fun m!7698350 () Bool)

(assert (=> b!7003064 m!7698350))

(declare-fun m!7698352 () Bool)

(assert (=> b!7003064 m!7698352))

(assert (=> b!7003063 m!7698350))

(declare-fun m!7698354 () Bool)

(assert (=> b!7003063 m!7698354))

(declare-fun m!7698356 () Bool)

(assert (=> d!2182970 m!7698356))

(declare-fun m!7698358 () Bool)

(assert (=> d!2182970 m!7698358))

(declare-fun m!7698360 () Bool)

(assert (=> d!2182970 m!7698360))

(declare-fun m!7698362 () Bool)

(assert (=> b!7003067 m!7698362))

(assert (=> b!7003068 m!7698356))

(assert (=> b!7003066 m!7698350))

(declare-fun m!7698364 () Bool)

(assert (=> b!7003066 m!7698364))

(declare-fun m!7698366 () Bool)

(assert (=> b!7003069 m!7698366))

(assert (=> b!7003069 m!7698366))

(declare-fun m!7698368 () Bool)

(assert (=> b!7003069 m!7698368))

(declare-fun m!7698370 () Bool)

(assert (=> b!7003069 m!7698370))

(assert (=> b!7003069 m!7698366))

(declare-fun m!7698372 () Bool)

(assert (=> b!7003069 m!7698372))

(assert (=> b!7002795 d!2182970))

(declare-fun d!2182972 () Bool)

(declare-fun c!1300215 () Bool)

(assert (=> d!2182972 (= c!1300215 (isEmpty!39270 (_1!37252 lt!2497514)))))

(declare-fun e!4209402 () Bool)

(assert (=> d!2182972 (= (matchZipper!2816 lt!2497470 (_1!37252 lt!2497514)) e!4209402)))

(declare-fun b!7003071 () Bool)

(assert (=> b!7003071 (= e!4209402 (nullableZipper!2467 lt!2497470))))

(declare-fun b!7003072 () Bool)

(assert (=> b!7003072 (= e!4209402 (matchZipper!2816 (derivationStepZipper!2756 lt!2497470 (head!14147 (_1!37252 lt!2497514))) (tail!13321 (_1!37252 lt!2497514))))))

(assert (= (and d!2182972 c!1300215) b!7003071))

(assert (= (and d!2182972 (not c!1300215)) b!7003072))

(assert (=> d!2182972 m!7698010))

(declare-fun m!7698374 () Bool)

(assert (=> b!7003071 m!7698374))

(assert (=> b!7003072 m!7697954))

(assert (=> b!7003072 m!7697954))

(declare-fun m!7698376 () Bool)

(assert (=> b!7003072 m!7698376))

(assert (=> b!7003072 m!7697990))

(assert (=> b!7003072 m!7698376))

(assert (=> b!7003072 m!7697990))

(declare-fun m!7698378 () Bool)

(assert (=> b!7003072 m!7698378))

(assert (=> b!7002795 d!2182972))

(declare-fun d!2182974 () Bool)

(declare-fun isEmpty!39273 (Option!16781) Bool)

(assert (=> d!2182974 (= (isDefined!13482 lt!2497477) (not (isEmpty!39273 lt!2497477)))))

(declare-fun bs!1865088 () Bool)

(assert (= bs!1865088 d!2182974))

(declare-fun m!7698380 () Bool)

(assert (=> bs!1865088 m!7698380))

(assert (=> b!7002795 d!2182974))

(declare-fun d!2182976 () Bool)

(assert (=> d!2182976 (= (get!23584 lt!2497477) (v!53058 lt!2497477))))

(assert (=> b!7002795 d!2182976))

(declare-fun d!2182978 () Bool)

(assert (=> d!2182978 (isDefined!13482 (findConcatSeparationZippers!297 lt!2497470 (set.insert ct2!306 (as set.empty (Set Context!12544))) Nil!67250 s!7408 s!7408))))

(declare-fun lt!2497758 () Unit!161212)

(declare-fun choose!52539 ((Set Context!12544) Context!12544 List!67374) Unit!161212)

(assert (=> d!2182978 (= lt!2497758 (choose!52539 lt!2497470 ct2!306 s!7408))))

(assert (=> d!2182978 (matchZipper!2816 (appendTo!397 lt!2497470 ct2!306) s!7408)))

(assert (=> d!2182978 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!297 lt!2497470 ct2!306 s!7408) lt!2497758)))

(declare-fun bs!1865089 () Bool)

(assert (= bs!1865089 d!2182978))

(declare-fun m!7698382 () Bool)

(assert (=> bs!1865089 m!7698382))

(declare-fun m!7698384 () Bool)

(assert (=> bs!1865089 m!7698384))

(assert (=> bs!1865089 m!7697964))

(assert (=> bs!1865089 m!7698382))

(declare-fun m!7698386 () Bool)

(assert (=> bs!1865089 m!7698386))

(declare-fun m!7698388 () Bool)

(assert (=> bs!1865089 m!7698388))

(declare-fun m!7698390 () Bool)

(assert (=> bs!1865089 m!7698390))

(assert (=> bs!1865089 m!7698388))

(assert (=> bs!1865089 m!7697964))

(assert (=> b!7002795 d!2182978))

(declare-fun d!2182980 () Bool)

(declare-fun e!4209403 () Bool)

(assert (=> d!2182980 (= (matchZipper!2816 (set.union lt!2497500 lt!2497483) lt!2497469) e!4209403)))

(declare-fun res!2856900 () Bool)

(assert (=> d!2182980 (=> res!2856900 e!4209403)))

(assert (=> d!2182980 (= res!2856900 (matchZipper!2816 lt!2497500 lt!2497469))))

(declare-fun lt!2497759 () Unit!161212)

(assert (=> d!2182980 (= lt!2497759 (choose!52538 lt!2497500 lt!2497483 lt!2497469))))

(assert (=> d!2182980 (= (lemmaZipperConcatMatchesSameAsBothZippers!1449 lt!2497500 lt!2497483 lt!2497469) lt!2497759)))

(declare-fun b!7003073 () Bool)

(assert (=> b!7003073 (= e!4209403 (matchZipper!2816 lt!2497483 lt!2497469))))

(assert (= (and d!2182980 (not res!2856900)) b!7003073))

(declare-fun m!7698392 () Bool)

(assert (=> d!2182980 m!7698392))

(assert (=> d!2182980 m!7697992))

(declare-fun m!7698394 () Bool)

(assert (=> d!2182980 m!7698394))

(assert (=> b!7003073 m!7698006))

(assert (=> b!7002813 d!2182980))

(declare-fun d!2182982 () Bool)

(declare-fun c!1300216 () Bool)

(assert (=> d!2182982 (= c!1300216 (isEmpty!39270 lt!2497469))))

(declare-fun e!4209404 () Bool)

(assert (=> d!2182982 (= (matchZipper!2816 lt!2497500 lt!2497469) e!4209404)))

(declare-fun b!7003074 () Bool)

(assert (=> b!7003074 (= e!4209404 (nullableZipper!2467 lt!2497500))))

(declare-fun b!7003075 () Bool)

(assert (=> b!7003075 (= e!4209404 (matchZipper!2816 (derivationStepZipper!2756 lt!2497500 (head!14147 lt!2497469)) (tail!13321 lt!2497469)))))

(assert (= (and d!2182982 c!1300216) b!7003074))

(assert (= (and d!2182982 (not c!1300216)) b!7003075))

(assert (=> d!2182982 m!7698338))

(declare-fun m!7698396 () Bool)

(assert (=> b!7003074 m!7698396))

(assert (=> b!7003075 m!7698342))

(assert (=> b!7003075 m!7698342))

(declare-fun m!7698398 () Bool)

(assert (=> b!7003075 m!7698398))

(assert (=> b!7003075 m!7698346))

(assert (=> b!7003075 m!7698398))

(assert (=> b!7003075 m!7698346))

(declare-fun m!7698400 () Bool)

(assert (=> b!7003075 m!7698400))

(assert (=> b!7002813 d!2182982))

(declare-fun d!2182984 () Bool)

(declare-fun c!1300217 () Bool)

(assert (=> d!2182984 (= c!1300217 (isEmpty!39270 (_1!37252 lt!2497514)))))

(declare-fun e!4209405 () Bool)

(assert (=> d!2182984 (= (matchZipper!2816 lt!2497484 (_1!37252 lt!2497514)) e!4209405)))

(declare-fun b!7003076 () Bool)

(assert (=> b!7003076 (= e!4209405 (nullableZipper!2467 lt!2497484))))

(declare-fun b!7003077 () Bool)

(assert (=> b!7003077 (= e!4209405 (matchZipper!2816 (derivationStepZipper!2756 lt!2497484 (head!14147 (_1!37252 lt!2497514))) (tail!13321 (_1!37252 lt!2497514))))))

(assert (= (and d!2182984 c!1300217) b!7003076))

(assert (= (and d!2182984 (not c!1300217)) b!7003077))

(assert (=> d!2182984 m!7698010))

(declare-fun m!7698402 () Bool)

(assert (=> b!7003076 m!7698402))

(assert (=> b!7003077 m!7697954))

(assert (=> b!7003077 m!7697954))

(declare-fun m!7698404 () Bool)

(assert (=> b!7003077 m!7698404))

(assert (=> b!7003077 m!7697990))

(assert (=> b!7003077 m!7698404))

(assert (=> b!7003077 m!7697990))

(declare-fun m!7698406 () Bool)

(assert (=> b!7003077 m!7698406))

(assert (=> b!7002813 d!2182984))

(declare-fun d!2182986 () Bool)

(declare-fun c!1300218 () Bool)

(assert (=> d!2182986 (= c!1300218 (isEmpty!39270 lt!2497469))))

(declare-fun e!4209406 () Bool)

(assert (=> d!2182986 (= (matchZipper!2816 lt!2497475 lt!2497469) e!4209406)))

(declare-fun b!7003078 () Bool)

(assert (=> b!7003078 (= e!4209406 (nullableZipper!2467 lt!2497475))))

(declare-fun b!7003079 () Bool)

(assert (=> b!7003079 (= e!4209406 (matchZipper!2816 (derivationStepZipper!2756 lt!2497475 (head!14147 lt!2497469)) (tail!13321 lt!2497469)))))

(assert (= (and d!2182986 c!1300218) b!7003078))

(assert (= (and d!2182986 (not c!1300218)) b!7003079))

(assert (=> d!2182986 m!7698338))

(declare-fun m!7698408 () Bool)

(assert (=> b!7003078 m!7698408))

(assert (=> b!7003079 m!7698342))

(assert (=> b!7003079 m!7698342))

(declare-fun m!7698410 () Bool)

(assert (=> b!7003079 m!7698410))

(assert (=> b!7003079 m!7698346))

(assert (=> b!7003079 m!7698410))

(assert (=> b!7003079 m!7698346))

(declare-fun m!7698412 () Bool)

(assert (=> b!7003079 m!7698412))

(assert (=> b!7002813 d!2182986))

(declare-fun d!2182988 () Bool)

(assert (=> d!2182988 (= (tail!13321 (_1!37252 lt!2497514)) (t!381127 (_1!37252 lt!2497514)))))

(assert (=> b!7002813 d!2182988))

(declare-fun d!2182990 () Bool)

(declare-fun c!1300219 () Bool)

(assert (=> d!2182990 (= c!1300219 (isEmpty!39270 lt!2497469))))

(declare-fun e!4209407 () Bool)

(assert (=> d!2182990 (= (matchZipper!2816 lt!2497483 lt!2497469) e!4209407)))

(declare-fun b!7003080 () Bool)

(assert (=> b!7003080 (= e!4209407 (nullableZipper!2467 lt!2497483))))

(declare-fun b!7003081 () Bool)

(assert (=> b!7003081 (= e!4209407 (matchZipper!2816 (derivationStepZipper!2756 lt!2497483 (head!14147 lt!2497469)) (tail!13321 lt!2497469)))))

(assert (= (and d!2182990 c!1300219) b!7003080))

(assert (= (and d!2182990 (not c!1300219)) b!7003081))

(assert (=> d!2182990 m!7698338))

(declare-fun m!7698414 () Bool)

(assert (=> b!7003080 m!7698414))

(assert (=> b!7003081 m!7698342))

(assert (=> b!7003081 m!7698342))

(declare-fun m!7698416 () Bool)

(assert (=> b!7003081 m!7698416))

(assert (=> b!7003081 m!7698346))

(assert (=> b!7003081 m!7698416))

(assert (=> b!7003081 m!7698346))

(declare-fun m!7698418 () Bool)

(assert (=> b!7003081 m!7698418))

(assert (=> b!7002794 d!2182990))

(assert (=> b!7002796 d!2182924))

(assert (=> b!7002796 d!2182942))

(declare-fun bm!635881 () Bool)

(declare-fun call!635889 () (Set Context!12544))

(declare-fun call!635888 () (Set Context!12544))

(assert (=> bm!635881 (= call!635889 call!635888)))

(declare-fun b!7003082 () Bool)

(declare-fun e!4209413 () (Set Context!12544))

(declare-fun call!635887 () (Set Context!12544))

(assert (=> b!7003082 (= e!4209413 (set.union call!635887 call!635889))))

(declare-fun bm!635882 () Bool)

(declare-fun c!1300220 () Bool)

(declare-fun c!1300221 () Bool)

(declare-fun c!1300222 () Bool)

(declare-fun call!635891 () List!67373)

(assert (=> bm!635882 (= call!635888 (derivationStepZipperDown!1994 (ite c!1300221 (regOne!35065 (h!73697 (exprs!6772 lt!2497513))) (ite c!1300220 (regTwo!35064 (h!73697 (exprs!6772 lt!2497513))) (ite c!1300222 (regOne!35064 (h!73697 (exprs!6772 lt!2497513))) (reg!17605 (h!73697 (exprs!6772 lt!2497513)))))) (ite (or c!1300221 c!1300220) lt!2497493 (Context!12545 call!635891)) (h!73698 s!7408)))))

(declare-fun b!7003083 () Bool)

(declare-fun e!4209411 () (Set Context!12544))

(declare-fun call!635890 () (Set Context!12544))

(assert (=> b!7003083 (= e!4209411 call!635890)))

(declare-fun bm!635883 () Bool)

(declare-fun call!635886 () List!67373)

(assert (=> bm!635883 (= call!635891 call!635886)))

(declare-fun bm!635884 () Bool)

(assert (=> bm!635884 (= call!635886 ($colon$colon!2510 (exprs!6772 lt!2497493) (ite (or c!1300220 c!1300222) (regTwo!35064 (h!73697 (exprs!6772 lt!2497513))) (h!73697 (exprs!6772 lt!2497513)))))))

(declare-fun b!7003084 () Bool)

(declare-fun e!4209409 () (Set Context!12544))

(assert (=> b!7003084 (= e!4209409 (set.insert lt!2497493 (as set.empty (Set Context!12544))))))

(declare-fun b!7003085 () Bool)

(declare-fun e!4209410 () (Set Context!12544))

(assert (=> b!7003085 (= e!4209410 (as set.empty (Set Context!12544)))))

(declare-fun d!2182992 () Bool)

(declare-fun c!1300223 () Bool)

(assert (=> d!2182992 (= c!1300223 (and (is-ElementMatch!17276 (h!73697 (exprs!6772 lt!2497513))) (= (c!1300138 (h!73697 (exprs!6772 lt!2497513))) (h!73698 s!7408))))))

(assert (=> d!2182992 (= (derivationStepZipperDown!1994 (h!73697 (exprs!6772 lt!2497513)) lt!2497493 (h!73698 s!7408)) e!4209409)))

(declare-fun b!7003086 () Bool)

(declare-fun e!4209408 () Bool)

(assert (=> b!7003086 (= e!4209408 (nullable!7036 (regOne!35064 (h!73697 (exprs!6772 lt!2497513)))))))

(declare-fun b!7003087 () Bool)

(declare-fun c!1300224 () Bool)

(assert (=> b!7003087 (= c!1300224 (is-Star!17276 (h!73697 (exprs!6772 lt!2497513))))))

(assert (=> b!7003087 (= e!4209411 e!4209410)))

(declare-fun bm!635885 () Bool)

(assert (=> bm!635885 (= call!635887 (derivationStepZipperDown!1994 (ite c!1300221 (regTwo!35065 (h!73697 (exprs!6772 lt!2497513))) (regOne!35064 (h!73697 (exprs!6772 lt!2497513)))) (ite c!1300221 lt!2497493 (Context!12545 call!635886)) (h!73698 s!7408)))))

(declare-fun bm!635886 () Bool)

(assert (=> bm!635886 (= call!635890 call!635889)))

(declare-fun b!7003088 () Bool)

(assert (=> b!7003088 (= e!4209413 e!4209411)))

(assert (=> b!7003088 (= c!1300222 (is-Concat!26121 (h!73697 (exprs!6772 lt!2497513))))))

(declare-fun b!7003089 () Bool)

(assert (=> b!7003089 (= c!1300220 e!4209408)))

(declare-fun res!2856901 () Bool)

(assert (=> b!7003089 (=> (not res!2856901) (not e!4209408))))

(assert (=> b!7003089 (= res!2856901 (is-Concat!26121 (h!73697 (exprs!6772 lt!2497513))))))

(declare-fun e!4209412 () (Set Context!12544))

(assert (=> b!7003089 (= e!4209412 e!4209413)))

(declare-fun b!7003090 () Bool)

(assert (=> b!7003090 (= e!4209410 call!635890)))

(declare-fun b!7003091 () Bool)

(assert (=> b!7003091 (= e!4209409 e!4209412)))

(assert (=> b!7003091 (= c!1300221 (is-Union!17276 (h!73697 (exprs!6772 lt!2497513))))))

(declare-fun b!7003092 () Bool)

(assert (=> b!7003092 (= e!4209412 (set.union call!635888 call!635887))))

(assert (= (and d!2182992 c!1300223) b!7003084))

(assert (= (and d!2182992 (not c!1300223)) b!7003091))

(assert (= (and b!7003091 c!1300221) b!7003092))

(assert (= (and b!7003091 (not c!1300221)) b!7003089))

(assert (= (and b!7003089 res!2856901) b!7003086))

(assert (= (and b!7003089 c!1300220) b!7003082))

(assert (= (and b!7003089 (not c!1300220)) b!7003088))

(assert (= (and b!7003088 c!1300222) b!7003083))

(assert (= (and b!7003088 (not c!1300222)) b!7003087))

(assert (= (and b!7003087 c!1300224) b!7003090))

(assert (= (and b!7003087 (not c!1300224)) b!7003085))

(assert (= (or b!7003083 b!7003090) bm!635883))

(assert (= (or b!7003083 b!7003090) bm!635886))

(assert (= (or b!7003082 bm!635886) bm!635881))

(assert (= (or b!7003082 bm!635883) bm!635884))

(assert (= (or b!7003092 bm!635881) bm!635882))

(assert (= (or b!7003092 b!7003082) bm!635885))

(declare-fun m!7698420 () Bool)

(assert (=> bm!635884 m!7698420))

(assert (=> b!7003086 m!7698210))

(declare-fun m!7698422 () Bool)

(assert (=> bm!635882 m!7698422))

(assert (=> b!7003084 m!7697974))

(declare-fun m!7698424 () Bool)

(assert (=> bm!635885 m!7698424))

(assert (=> b!7002796 d!2182992))

(assert (=> b!7002796 d!2182926))

(declare-fun b!7003094 () Bool)

(declare-fun e!4209414 () List!67373)

(assert (=> b!7003094 (= e!4209414 (Cons!67249 (h!73697 (exprs!6772 lt!2497513)) (++!15253 (t!381126 (exprs!6772 lt!2497513)) (exprs!6772 ct2!306))))))

(declare-fun b!7003095 () Bool)

(declare-fun res!2856902 () Bool)

(declare-fun e!4209415 () Bool)

(assert (=> b!7003095 (=> (not res!2856902) (not e!4209415))))

(declare-fun lt!2497760 () List!67373)

(assert (=> b!7003095 (= res!2856902 (= (size!40947 lt!2497760) (+ (size!40947 (exprs!6772 lt!2497513)) (size!40947 (exprs!6772 ct2!306)))))))

(declare-fun b!7003096 () Bool)

(assert (=> b!7003096 (= e!4209415 (or (not (= (exprs!6772 ct2!306) Nil!67249)) (= lt!2497760 (exprs!6772 lt!2497513))))))

(declare-fun d!2182994 () Bool)

(assert (=> d!2182994 e!4209415))

(declare-fun res!2856903 () Bool)

(assert (=> d!2182994 (=> (not res!2856903) (not e!4209415))))

(assert (=> d!2182994 (= res!2856903 (= (content!13328 lt!2497760) (set.union (content!13328 (exprs!6772 lt!2497513)) (content!13328 (exprs!6772 ct2!306)))))))

(assert (=> d!2182994 (= lt!2497760 e!4209414)))

(declare-fun c!1300225 () Bool)

(assert (=> d!2182994 (= c!1300225 (is-Nil!67249 (exprs!6772 lt!2497513)))))

(assert (=> d!2182994 (= (++!15253 (exprs!6772 lt!2497513) (exprs!6772 ct2!306)) lt!2497760)))

(declare-fun b!7003093 () Bool)

(assert (=> b!7003093 (= e!4209414 (exprs!6772 ct2!306))))

(assert (= (and d!2182994 c!1300225) b!7003093))

(assert (= (and d!2182994 (not c!1300225)) b!7003094))

(assert (= (and d!2182994 res!2856903) b!7003095))

(assert (= (and b!7003095 res!2856902) b!7003096))

(declare-fun m!7698426 () Bool)

(assert (=> b!7003094 m!7698426))

(declare-fun m!7698428 () Bool)

(assert (=> b!7003095 m!7698428))

(declare-fun m!7698430 () Bool)

(assert (=> b!7003095 m!7698430))

(assert (=> b!7003095 m!7698268))

(declare-fun m!7698432 () Bool)

(assert (=> d!2182994 m!7698432))

(declare-fun m!7698434 () Bool)

(assert (=> d!2182994 m!7698434))

(assert (=> d!2182994 m!7698274))

(assert (=> b!7002799 d!2182994))

(declare-fun d!2182996 () Bool)

(assert (=> d!2182996 (forall!16194 (++!15253 (exprs!6772 lt!2497513) (exprs!6772 ct2!306)) lambda!405831)))

(declare-fun lt!2497761 () Unit!161212)

(assert (=> d!2182996 (= lt!2497761 (choose!52534 (exprs!6772 lt!2497513) (exprs!6772 ct2!306) lambda!405831))))

(assert (=> d!2182996 (forall!16194 (exprs!6772 lt!2497513) lambda!405831)))

(assert (=> d!2182996 (= (lemmaConcatPreservesForall!612 (exprs!6772 lt!2497513) (exprs!6772 ct2!306) lambda!405831) lt!2497761)))

(declare-fun bs!1865090 () Bool)

(assert (= bs!1865090 d!2182996))

(assert (=> bs!1865090 m!7697984))

(assert (=> bs!1865090 m!7697984))

(declare-fun m!7698436 () Bool)

(assert (=> bs!1865090 m!7698436))

(declare-fun m!7698438 () Bool)

(assert (=> bs!1865090 m!7698438))

(declare-fun m!7698440 () Bool)

(assert (=> bs!1865090 m!7698440))

(assert (=> b!7002799 d!2182996))

(declare-fun d!2182998 () Bool)

(declare-fun e!4209418 () Bool)

(assert (=> d!2182998 e!4209418))

(declare-fun res!2856906 () Bool)

(assert (=> d!2182998 (=> (not res!2856906) (not e!4209418))))

(declare-fun lt!2497764 () Context!12544)

(assert (=> d!2182998 (= res!2856906 (= lt!2497463 (dynLambda!27021 lambda!405830 lt!2497764)))))

(declare-fun choose!52540 ((Set Context!12544) Int Context!12544) Context!12544)

(assert (=> d!2182998 (= lt!2497764 (choose!52540 z1!570 lambda!405830 lt!2497463))))

(assert (=> d!2182998 (set.member lt!2497463 (map!15561 z1!570 lambda!405830))))

(assert (=> d!2182998 (= (mapPost2!131 z1!570 lambda!405830 lt!2497463) lt!2497764)))

(declare-fun b!7003100 () Bool)

(assert (=> b!7003100 (= e!4209418 (set.member lt!2497764 z1!570))))

(assert (= (and d!2182998 res!2856906) b!7003100))

(declare-fun b_lambda!263847 () Bool)

(assert (=> (not b_lambda!263847) (not d!2182998)))

(declare-fun m!7698442 () Bool)

(assert (=> d!2182998 m!7698442))

(declare-fun m!7698444 () Bool)

(assert (=> d!2182998 m!7698444))

(declare-fun m!7698446 () Bool)

(assert (=> d!2182998 m!7698446))

(declare-fun m!7698448 () Bool)

(assert (=> d!2182998 m!7698448))

(declare-fun m!7698450 () Bool)

(assert (=> b!7003100 m!7698450))

(assert (=> b!7002799 d!2182998))

(declare-fun d!2183000 () Bool)

(declare-fun lt!2497765 () Int)

(assert (=> d!2183000 (>= lt!2497765 0)))

(declare-fun e!4209419 () Int)

(assert (=> d!2183000 (= lt!2497765 e!4209419)))

(declare-fun c!1300226 () Bool)

(assert (=> d!2183000 (= c!1300226 (is-Cons!67251 (Cons!67251 lt!2497453 Nil!67251)))))

(assert (=> d!2183000 (= (zipperDepthTotal!497 (Cons!67251 lt!2497453 Nil!67251)) lt!2497765)))

(declare-fun b!7003101 () Bool)

(assert (=> b!7003101 (= e!4209419 (+ (contextDepthTotal!469 (h!73699 (Cons!67251 lt!2497453 Nil!67251))) (zipperDepthTotal!497 (t!381128 (Cons!67251 lt!2497453 Nil!67251)))))))

(declare-fun b!7003102 () Bool)

(assert (=> b!7003102 (= e!4209419 0)))

(assert (= (and d!2183000 c!1300226) b!7003101))

(assert (= (and d!2183000 (not c!1300226)) b!7003102))

(declare-fun m!7698452 () Bool)

(assert (=> b!7003101 m!7698452))

(declare-fun m!7698454 () Bool)

(assert (=> b!7003101 m!7698454))

(assert (=> b!7002798 d!2183000))

(declare-fun d!2183002 () Bool)

(assert (=> d!2183002 (= (isEmpty!39270 (_1!37252 lt!2497514)) (is-Nil!67250 (_1!37252 lt!2497514)))))

(assert (=> b!7002802 d!2183002))

(declare-fun d!2183004 () Bool)

(declare-fun c!1300227 () Bool)

(assert (=> d!2183004 (= c!1300227 (isEmpty!39270 s!7408))))

(declare-fun e!4209420 () Bool)

(assert (=> d!2183004 (= (matchZipper!2816 lt!2497456 s!7408) e!4209420)))

(declare-fun b!7003103 () Bool)

(assert (=> b!7003103 (= e!4209420 (nullableZipper!2467 lt!2497456))))

(declare-fun b!7003104 () Bool)

(assert (=> b!7003104 (= e!4209420 (matchZipper!2816 (derivationStepZipper!2756 lt!2497456 (head!14147 s!7408)) (tail!13321 s!7408)))))

(assert (= (and d!2183004 c!1300227) b!7003103))

(assert (= (and d!2183004 (not c!1300227)) b!7003104))

(assert (=> d!2183004 m!7698166))

(declare-fun m!7698456 () Bool)

(assert (=> b!7003103 m!7698456))

(assert (=> b!7003104 m!7698170))

(assert (=> b!7003104 m!7698170))

(declare-fun m!7698458 () Bool)

(assert (=> b!7003104 m!7698458))

(assert (=> b!7003104 m!7698174))

(assert (=> b!7003104 m!7698458))

(assert (=> b!7003104 m!7698174))

(declare-fun m!7698460 () Bool)

(assert (=> b!7003104 m!7698460))

(assert (=> b!7002782 d!2183004))

(assert (=> b!7002782 d!2182924))

(declare-fun d!2183006 () Bool)

(assert (=> d!2183006 (= (isEmpty!39269 (exprs!6772 lt!2497513)) (is-Nil!67249 (exprs!6772 lt!2497513)))))

(assert (=> b!7002780 d!2183006))

(assert (=> b!7002801 d!2182966))

(assert (=> b!7002801 d!2182924))

(assert (=> b!7002804 d!2182996))

(declare-fun b!7003115 () Bool)

(declare-fun res!2856912 () Bool)

(declare-fun e!4209425 () Bool)

(assert (=> b!7003115 (=> (not res!2856912) (not e!4209425))))

(declare-fun lt!2497768 () List!67374)

(declare-fun size!40948 (List!67374) Int)

(assert (=> b!7003115 (= res!2856912 (= (size!40948 lt!2497768) (+ (size!40948 (_1!37252 lt!2497514)) (size!40948 (_2!37252 lt!2497514)))))))

(declare-fun b!7003116 () Bool)

(assert (=> b!7003116 (= e!4209425 (or (not (= (_2!37252 lt!2497514) Nil!67250)) (= lt!2497768 (_1!37252 lt!2497514))))))

(declare-fun b!7003114 () Bool)

(declare-fun e!4209426 () List!67374)

(assert (=> b!7003114 (= e!4209426 (Cons!67250 (h!73698 (_1!37252 lt!2497514)) (++!15254 (t!381127 (_1!37252 lt!2497514)) (_2!37252 lt!2497514))))))

(declare-fun d!2183008 () Bool)

(assert (=> d!2183008 e!4209425))

(declare-fun res!2856911 () Bool)

(assert (=> d!2183008 (=> (not res!2856911) (not e!4209425))))

(declare-fun content!13329 (List!67374) (Set C!34822))

(assert (=> d!2183008 (= res!2856911 (= (content!13329 lt!2497768) (set.union (content!13329 (_1!37252 lt!2497514)) (content!13329 (_2!37252 lt!2497514)))))))

(assert (=> d!2183008 (= lt!2497768 e!4209426)))

(declare-fun c!1300230 () Bool)

(assert (=> d!2183008 (= c!1300230 (is-Nil!67250 (_1!37252 lt!2497514)))))

(assert (=> d!2183008 (= (++!15254 (_1!37252 lt!2497514) (_2!37252 lt!2497514)) lt!2497768)))

(declare-fun b!7003113 () Bool)

(assert (=> b!7003113 (= e!4209426 (_2!37252 lt!2497514))))

(assert (= (and d!2183008 c!1300230) b!7003113))

(assert (= (and d!2183008 (not c!1300230)) b!7003114))

(assert (= (and d!2183008 res!2856911) b!7003115))

(assert (= (and b!7003115 res!2856912) b!7003116))

(declare-fun m!7698462 () Bool)

(assert (=> b!7003115 m!7698462))

(declare-fun m!7698464 () Bool)

(assert (=> b!7003115 m!7698464))

(declare-fun m!7698466 () Bool)

(assert (=> b!7003115 m!7698466))

(declare-fun m!7698468 () Bool)

(assert (=> b!7003114 m!7698468))

(declare-fun m!7698470 () Bool)

(assert (=> d!2183008 m!7698470))

(declare-fun m!7698472 () Bool)

(assert (=> d!2183008 m!7698472))

(declare-fun m!7698474 () Bool)

(assert (=> d!2183008 m!7698474))

(assert (=> b!7002805 d!2183008))

(declare-fun d!2183010 () Bool)

(declare-fun c!1300231 () Bool)

(assert (=> d!2183010 (= c!1300231 (isEmpty!39270 (_2!37252 lt!2497514)))))

(declare-fun e!4209427 () Bool)

(assert (=> d!2183010 (= (matchZipper!2816 lt!2497509 (_2!37252 lt!2497514)) e!4209427)))

(declare-fun b!7003117 () Bool)

(assert (=> b!7003117 (= e!4209427 (nullableZipper!2467 lt!2497509))))

(declare-fun b!7003118 () Bool)

(assert (=> b!7003118 (= e!4209427 (matchZipper!2816 (derivationStepZipper!2756 lt!2497509 (head!14147 (_2!37252 lt!2497514))) (tail!13321 (_2!37252 lt!2497514))))))

(assert (= (and d!2183010 c!1300231) b!7003117))

(assert (= (and d!2183010 (not c!1300231)) b!7003118))

(declare-fun m!7698476 () Bool)

(assert (=> d!2183010 m!7698476))

(declare-fun m!7698478 () Bool)

(assert (=> b!7003117 m!7698478))

(declare-fun m!7698480 () Bool)

(assert (=> b!7003118 m!7698480))

(assert (=> b!7003118 m!7698480))

(declare-fun m!7698482 () Bool)

(assert (=> b!7003118 m!7698482))

(declare-fun m!7698484 () Bool)

(assert (=> b!7003118 m!7698484))

(assert (=> b!7003118 m!7698482))

(assert (=> b!7003118 m!7698484))

(declare-fun m!7698486 () Bool)

(assert (=> b!7003118 m!7698486))

(assert (=> b!7002783 d!2183010))

(assert (=> b!7002807 d!2182966))

(assert (=> b!7002807 d!2182924))

(assert (=> b!7002787 d!2182990))

(declare-fun d!2183012 () Bool)

(declare-fun nullableFct!2663 (Regex!17276) Bool)

(assert (=> d!2183012 (= (nullable!7036 (h!73697 (exprs!6772 lt!2497513))) (nullableFct!2663 (h!73697 (exprs!6772 lt!2497513))))))

(declare-fun bs!1865091 () Bool)

(assert (= bs!1865091 d!2183012))

(declare-fun m!7698488 () Bool)

(assert (=> bs!1865091 m!7698488))

(assert (=> b!7002785 d!2183012))

(declare-fun d!2183014 () Bool)

(assert (=> d!2183014 (= (tail!13320 (exprs!6772 lt!2497513)) (t!381126 (exprs!6772 lt!2497513)))))

(assert (=> b!7002785 d!2183014))

(declare-fun bs!1865092 () Bool)

(declare-fun d!2183016 () Bool)

(assert (= bs!1865092 (and d!2183016 b!7002786)))

(declare-fun lambda!405916 () Int)

(assert (=> bs!1865092 (= lambda!405916 lambda!405832)))

(declare-fun bs!1865093 () Bool)

(assert (= bs!1865093 (and d!2183016 d!2182916)))

(assert (=> bs!1865093 (= (= (h!73698 s!7408) lt!2497491) (= lambda!405916 lambda!405905))))

(declare-fun bs!1865094 () Bool)

(assert (= bs!1865094 (and d!2183016 d!2182930)))

(assert (=> bs!1865094 (= lambda!405916 lambda!405906)))

(assert (=> d!2183016 true))

(assert (=> d!2183016 (= (derivationStepZipper!2756 lt!2497484 (h!73698 s!7408)) (flatMap!2262 lt!2497484 lambda!405916))))

(declare-fun bs!1865095 () Bool)

(assert (= bs!1865095 d!2183016))

(declare-fun m!7698490 () Bool)

(assert (=> bs!1865095 m!7698490))

(assert (=> b!7002806 d!2183016))

(declare-fun b!7003119 () Bool)

(declare-fun e!4209430 () (Set Context!12544))

(assert (=> b!7003119 (= e!4209430 (as set.empty (Set Context!12544)))))

(declare-fun b!7003120 () Bool)

(declare-fun call!635892 () (Set Context!12544))

(assert (=> b!7003120 (= e!4209430 call!635892)))

(declare-fun d!2183018 () Bool)

(declare-fun c!1300233 () Bool)

(declare-fun e!4209429 () Bool)

(assert (=> d!2183018 (= c!1300233 e!4209429)))

(declare-fun res!2856913 () Bool)

(assert (=> d!2183018 (=> (not res!2856913) (not e!4209429))))

(assert (=> d!2183018 (= res!2856913 (is-Cons!67249 (exprs!6772 lt!2497513)))))

(declare-fun e!4209428 () (Set Context!12544))

(assert (=> d!2183018 (= (derivationStepZipperUp!1926 lt!2497513 (h!73698 s!7408)) e!4209428)))

(declare-fun b!7003121 () Bool)

(assert (=> b!7003121 (= e!4209429 (nullable!7036 (h!73697 (exprs!6772 lt!2497513))))))

(declare-fun b!7003122 () Bool)

(assert (=> b!7003122 (= e!4209428 (set.union call!635892 (derivationStepZipperUp!1926 (Context!12545 (t!381126 (exprs!6772 lt!2497513))) (h!73698 s!7408))))))

(declare-fun b!7003123 () Bool)

(assert (=> b!7003123 (= e!4209428 e!4209430)))

(declare-fun c!1300232 () Bool)

(assert (=> b!7003123 (= c!1300232 (is-Cons!67249 (exprs!6772 lt!2497513)))))

(declare-fun bm!635887 () Bool)

(assert (=> bm!635887 (= call!635892 (derivationStepZipperDown!1994 (h!73697 (exprs!6772 lt!2497513)) (Context!12545 (t!381126 (exprs!6772 lt!2497513))) (h!73698 s!7408)))))

(assert (= (and d!2183018 res!2856913) b!7003121))

(assert (= (and d!2183018 c!1300233) b!7003122))

(assert (= (and d!2183018 (not c!1300233)) b!7003123))

(assert (= (and b!7003123 c!1300232) b!7003120))

(assert (= (and b!7003123 (not c!1300232)) b!7003119))

(assert (= (or b!7003122 b!7003120) bm!635887))

(assert (=> b!7003121 m!7698002))

(declare-fun m!7698492 () Bool)

(assert (=> b!7003122 m!7698492))

(declare-fun m!7698494 () Bool)

(assert (=> bm!635887 m!7698494))

(assert (=> b!7002806 d!2183018))

(declare-fun d!2183020 () Bool)

(assert (=> d!2183020 (= (flatMap!2262 lt!2497484 lambda!405832) (choose!52533 lt!2497484 lambda!405832))))

(declare-fun bs!1865096 () Bool)

(assert (= bs!1865096 d!2183020))

(declare-fun m!7698496 () Bool)

(assert (=> bs!1865096 m!7698496))

(assert (=> b!7002806 d!2183020))

(declare-fun d!2183022 () Bool)

(assert (=> d!2183022 (= (flatMap!2262 lt!2497484 lambda!405832) (dynLambda!27020 lambda!405832 lt!2497513))))

(declare-fun lt!2497769 () Unit!161212)

(assert (=> d!2183022 (= lt!2497769 (choose!52532 lt!2497484 lt!2497513 lambda!405832))))

(assert (=> d!2183022 (= lt!2497484 (set.insert lt!2497513 (as set.empty (Set Context!12544))))))

(assert (=> d!2183022 (= (lemmaFlatMapOnSingletonSet!1777 lt!2497484 lt!2497513 lambda!405832) lt!2497769)))

(declare-fun b_lambda!263849 () Bool)

(assert (=> (not b_lambda!263849) (not d!2183022)))

(declare-fun bs!1865097 () Bool)

(assert (= bs!1865097 d!2183022))

(assert (=> bs!1865097 m!7697876))

(declare-fun m!7698498 () Bool)

(assert (=> bs!1865097 m!7698498))

(declare-fun m!7698500 () Bool)

(assert (=> bs!1865097 m!7698500))

(assert (=> bs!1865097 m!7697884))

(assert (=> b!7002806 d!2183022))

(declare-fun b!7003124 () Bool)

(declare-fun e!4209433 () (Set Context!12544))

(assert (=> b!7003124 (= e!4209433 (as set.empty (Set Context!12544)))))

(declare-fun b!7003125 () Bool)

(declare-fun call!635893 () (Set Context!12544))

(assert (=> b!7003125 (= e!4209433 call!635893)))

(declare-fun d!2183024 () Bool)

(declare-fun c!1300235 () Bool)

(declare-fun e!4209432 () Bool)

(assert (=> d!2183024 (= c!1300235 e!4209432)))

(declare-fun res!2856914 () Bool)

(assert (=> d!2183024 (=> (not res!2856914) (not e!4209432))))

(assert (=> d!2183024 (= res!2856914 (is-Cons!67249 (exprs!6772 lt!2497488)))))

(declare-fun e!4209431 () (Set Context!12544))

(assert (=> d!2183024 (= (derivationStepZipperUp!1926 lt!2497488 (h!73698 s!7408)) e!4209431)))

(declare-fun b!7003126 () Bool)

(assert (=> b!7003126 (= e!4209432 (nullable!7036 (h!73697 (exprs!6772 lt!2497488))))))

(declare-fun b!7003127 () Bool)

(assert (=> b!7003127 (= e!4209431 (set.union call!635893 (derivationStepZipperUp!1926 (Context!12545 (t!381126 (exprs!6772 lt!2497488))) (h!73698 s!7408))))))

(declare-fun b!7003128 () Bool)

(assert (=> b!7003128 (= e!4209431 e!4209433)))

(declare-fun c!1300234 () Bool)

(assert (=> b!7003128 (= c!1300234 (is-Cons!67249 (exprs!6772 lt!2497488)))))

(declare-fun bm!635888 () Bool)

(assert (=> bm!635888 (= call!635893 (derivationStepZipperDown!1994 (h!73697 (exprs!6772 lt!2497488)) (Context!12545 (t!381126 (exprs!6772 lt!2497488))) (h!73698 s!7408)))))

(assert (= (and d!2183024 res!2856914) b!7003126))

(assert (= (and d!2183024 c!1300235) b!7003127))

(assert (= (and d!2183024 (not c!1300235)) b!7003128))

(assert (= (and b!7003128 c!1300234) b!7003125))

(assert (= (and b!7003128 (not c!1300234)) b!7003124))

(assert (= (or b!7003127 b!7003125) bm!635888))

(declare-fun m!7698502 () Bool)

(assert (=> b!7003126 m!7698502))

(declare-fun m!7698504 () Bool)

(assert (=> b!7003127 m!7698504))

(declare-fun m!7698506 () Bool)

(assert (=> bm!635888 m!7698506))

(assert (=> b!7002786 d!2183024))

(declare-fun d!2183026 () Bool)

(assert (=> d!2183026 (= (flatMap!2262 lt!2497511 lambda!405832) (dynLambda!27020 lambda!405832 lt!2497488))))

(declare-fun lt!2497770 () Unit!161212)

(assert (=> d!2183026 (= lt!2497770 (choose!52532 lt!2497511 lt!2497488 lambda!405832))))

(assert (=> d!2183026 (= lt!2497511 (set.insert lt!2497488 (as set.empty (Set Context!12544))))))

(assert (=> d!2183026 (= (lemmaFlatMapOnSingletonSet!1777 lt!2497511 lt!2497488 lambda!405832) lt!2497770)))

(declare-fun b_lambda!263851 () Bool)

(assert (=> (not b_lambda!263851) (not d!2183026)))

(declare-fun bs!1865098 () Bool)

(assert (= bs!1865098 d!2183026))

(assert (=> bs!1865098 m!7697904))

(declare-fun m!7698508 () Bool)

(assert (=> bs!1865098 m!7698508))

(declare-fun m!7698510 () Bool)

(assert (=> bs!1865098 m!7698510))

(assert (=> bs!1865098 m!7697868))

(assert (=> b!7002786 d!2183026))

(declare-fun d!2183028 () Bool)

(assert (=> d!2183028 (= (flatMap!2262 lt!2497511 lambda!405832) (choose!52533 lt!2497511 lambda!405832))))

(declare-fun bs!1865099 () Bool)

(assert (= bs!1865099 d!2183028))

(declare-fun m!7698512 () Bool)

(assert (=> bs!1865099 m!7698512))

(assert (=> b!7002786 d!2183028))

(assert (=> b!7002786 d!2182996))

(declare-fun bs!1865100 () Bool)

(declare-fun d!2183030 () Bool)

(assert (= bs!1865100 (and d!2183030 b!7002786)))

(declare-fun lambda!405917 () Int)

(assert (=> bs!1865100 (= lambda!405917 lambda!405832)))

(declare-fun bs!1865101 () Bool)

(assert (= bs!1865101 (and d!2183030 d!2182916)))

(assert (=> bs!1865101 (= (= (h!73698 s!7408) lt!2497491) (= lambda!405917 lambda!405905))))

(declare-fun bs!1865102 () Bool)

(assert (= bs!1865102 (and d!2183030 d!2182930)))

(assert (=> bs!1865102 (= lambda!405917 lambda!405906)))

(declare-fun bs!1865103 () Bool)

(assert (= bs!1865103 (and d!2183030 d!2183016)))

(assert (=> bs!1865103 (= lambda!405917 lambda!405916)))

(assert (=> d!2183030 true))

(assert (=> d!2183030 (= (derivationStepZipper!2756 lt!2497511 (h!73698 s!7408)) (flatMap!2262 lt!2497511 lambda!405917))))

(declare-fun bs!1865104 () Bool)

(assert (= bs!1865104 d!2183030))

(declare-fun m!7698514 () Bool)

(assert (=> bs!1865104 m!7698514))

(assert (=> b!7002786 d!2183030))

(declare-fun b!7003133 () Bool)

(declare-fun e!4209436 () Bool)

(declare-fun tp!1931339 () Bool)

(declare-fun tp!1931340 () Bool)

(assert (=> b!7003133 (= e!4209436 (and tp!1931339 tp!1931340))))

(assert (=> b!7002789 (= tp!1931320 e!4209436)))

(assert (= (and b!7002789 (is-Cons!67249 (exprs!6772 ct2!306))) b!7003133))

(declare-fun b!7003138 () Bool)

(declare-fun e!4209439 () Bool)

(declare-fun tp!1931343 () Bool)

(assert (=> b!7003138 (= e!4209439 (and tp_is_empty!43777 tp!1931343))))

(assert (=> b!7002803 (= tp!1931319 e!4209439)))

(assert (= (and b!7002803 (is-Cons!67250 (t!381127 s!7408))) b!7003138))

(declare-fun condSetEmpty!48150 () Bool)

(assert (=> setNonEmpty!48144 (= condSetEmpty!48150 (= setRest!48144 (as set.empty (Set Context!12544))))))

(declare-fun setRes!48150 () Bool)

(assert (=> setNonEmpty!48144 (= tp!1931321 setRes!48150)))

(declare-fun setIsEmpty!48150 () Bool)

(assert (=> setIsEmpty!48150 setRes!48150))

(declare-fun setNonEmpty!48150 () Bool)

(declare-fun e!4209442 () Bool)

(declare-fun tp!1931349 () Bool)

(declare-fun setElem!48150 () Context!12544)

(assert (=> setNonEmpty!48150 (= setRes!48150 (and tp!1931349 (inv!86050 setElem!48150) e!4209442))))

(declare-fun setRest!48150 () (Set Context!12544))

(assert (=> setNonEmpty!48150 (= setRest!48144 (set.union (set.insert setElem!48150 (as set.empty (Set Context!12544))) setRest!48150))))

(declare-fun b!7003143 () Bool)

(declare-fun tp!1931348 () Bool)

(assert (=> b!7003143 (= e!4209442 tp!1931348)))

(assert (= (and setNonEmpty!48144 condSetEmpty!48150) setIsEmpty!48150))

(assert (= (and setNonEmpty!48144 (not condSetEmpty!48150)) setNonEmpty!48150))

(assert (= setNonEmpty!48150 b!7003143))

(declare-fun m!7698516 () Bool)

(assert (=> setNonEmpty!48150 m!7698516))

(declare-fun b!7003144 () Bool)

(declare-fun e!4209443 () Bool)

(declare-fun tp!1931350 () Bool)

(declare-fun tp!1931351 () Bool)

(assert (=> b!7003144 (= e!4209443 (and tp!1931350 tp!1931351))))

(assert (=> b!7002797 (= tp!1931322 e!4209443)))

(assert (= (and b!7002797 (is-Cons!67249 (exprs!6772 setElem!48144))) b!7003144))

(declare-fun b_lambda!263853 () Bool)

(assert (= b_lambda!263839 (or b!7002810 b_lambda!263853)))

(declare-fun bs!1865105 () Bool)

(declare-fun d!2183032 () Bool)

(assert (= bs!1865105 (and d!2183032 b!7002810)))

(assert (=> bs!1865105 (= (dynLambda!27018 lambda!405829 lt!2497711) (matchZipper!2816 (set.insert lt!2497711 (as set.empty (Set Context!12544))) s!7408))))

(declare-fun m!7698518 () Bool)

(assert (=> bs!1865105 m!7698518))

(assert (=> bs!1865105 m!7698518))

(declare-fun m!7698520 () Bool)

(assert (=> bs!1865105 m!7698520))

(assert (=> d!2182902 d!2183032))

(declare-fun b_lambda!263855 () Bool)

(assert (= b_lambda!263845 (or b!7002799 b_lambda!263855)))

(declare-fun bs!1865106 () Bool)

(declare-fun d!2183034 () Bool)

(assert (= bs!1865106 (and d!2183034 b!7002799)))

(declare-fun lt!2497771 () Unit!161212)

(assert (=> bs!1865106 (= lt!2497771 (lemmaConcatPreservesForall!612 (exprs!6772 lt!2497453) (exprs!6772 ct2!306) lambda!405831))))

(assert (=> bs!1865106 (= (dynLambda!27021 lambda!405830 lt!2497453) (Context!12545 (++!15253 (exprs!6772 lt!2497453) (exprs!6772 ct2!306))))))

(declare-fun m!7698522 () Bool)

(assert (=> bs!1865106 m!7698522))

(declare-fun m!7698524 () Bool)

(assert (=> bs!1865106 m!7698524))

(assert (=> d!2182944 d!2183034))

(declare-fun b_lambda!263857 () Bool)

(assert (= b_lambda!263849 (or b!7002786 b_lambda!263857)))

(declare-fun bs!1865107 () Bool)

(declare-fun d!2183036 () Bool)

(assert (= bs!1865107 (and d!2183036 b!7002786)))

(assert (=> bs!1865107 (= (dynLambda!27020 lambda!405832 lt!2497513) (derivationStepZipperUp!1926 lt!2497513 (h!73698 s!7408)))))

(assert (=> bs!1865107 m!7697880))

(assert (=> d!2183022 d!2183036))

(declare-fun b_lambda!263859 () Bool)

(assert (= b_lambda!263851 (or b!7002786 b_lambda!263859)))

(declare-fun bs!1865108 () Bool)

(declare-fun d!2183038 () Bool)

(assert (= bs!1865108 (and d!2183038 b!7002786)))

(assert (=> bs!1865108 (= (dynLambda!27020 lambda!405832 lt!2497488) (derivationStepZipperUp!1926 lt!2497488 (h!73698 s!7408)))))

(assert (=> bs!1865108 m!7697900))

(assert (=> d!2183026 d!2183038))

(declare-fun b_lambda!263861 () Bool)

(assert (= b_lambda!263843 (or b!7002786 b_lambda!263861)))

(declare-fun bs!1865109 () Bool)

(declare-fun d!2183040 () Bool)

(assert (= bs!1865109 (and d!2183040 b!7002786)))

(assert (=> bs!1865109 (= (dynLambda!27020 lambda!405832 lt!2497493) (derivationStepZipperUp!1926 lt!2497493 (h!73698 s!7408)))))

(assert (=> bs!1865109 m!7697976))

(assert (=> d!2182932 d!2183040))

(declare-fun b_lambda!263863 () Bool)

(assert (= b_lambda!263841 (or b!7002786 b_lambda!263863)))

(declare-fun bs!1865110 () Bool)

(declare-fun d!2183042 () Bool)

(assert (= bs!1865110 (and d!2183042 b!7002786)))

(assert (=> bs!1865110 (= (dynLambda!27020 lambda!405832 lt!2497453) (derivationStepZipperUp!1926 lt!2497453 (h!73698 s!7408)))))

(assert (=> bs!1865110 m!7697928))

(assert (=> d!2182918 d!2183042))

(declare-fun b_lambda!263865 () Bool)

(assert (= b_lambda!263847 (or b!7002799 b_lambda!263865)))

(declare-fun bs!1865111 () Bool)

(declare-fun d!2183044 () Bool)

(assert (= bs!1865111 (and d!2183044 b!7002799)))

(declare-fun lt!2497772 () Unit!161212)

(assert (=> bs!1865111 (= lt!2497772 (lemmaConcatPreservesForall!612 (exprs!6772 lt!2497764) (exprs!6772 ct2!306) lambda!405831))))

(assert (=> bs!1865111 (= (dynLambda!27021 lambda!405830 lt!2497764) (Context!12545 (++!15253 (exprs!6772 lt!2497764) (exprs!6772 ct2!306))))))

(declare-fun m!7698526 () Bool)

(assert (=> bs!1865111 m!7698526))

(declare-fun m!7698528 () Bool)

(assert (=> bs!1865111 m!7698528))

(assert (=> d!2182998 d!2183044))

(push 1)

(assert (not b!7003067))

(assert (not bm!635888))

(assert (not d!2182942))

(assert (not b!7003126))

(assert (not b!7003075))

(assert (not d!2182904))

(assert (not d!2182916))

(assert (not bm!635874))

(assert (not b!7003029))

(assert (not b!7003031))

(assert (not b!7003066))

(assert (not d!2182906))

(assert (not b!7003037))

(assert (not b!7003039))

(assert (not b!7003074))

(assert (not b_lambda!263863))

(assert (not b!7003144))

(assert (not b!7003032))

(assert (not setNonEmpty!48150))

(assert (not b!7003076))

(assert (not d!2182928))

(assert (not d!2183026))

(assert (not bm!635876))

(assert (not b!7003069))

(assert (not b!7003133))

(assert (not bs!1865107))

(assert (not d!2183012))

(assert (not d!2182962))

(assert (not b!7003080))

(assert (not d!2182936))

(assert (not bs!1865105))

(assert (not b!7003115))

(assert (not b!7002932))

(assert (not d!2182952))

(assert (not d!2182958))

(assert (not d!2182920))

(assert (not bm!635882))

(assert (not d!2182934))

(assert (not b!7002999))

(assert (not b!7003073))

(assert (not d!2182994))

(assert (not d!2183030))

(assert (not b!7003079))

(assert (not d!2182930))

(assert (not d!2183008))

(assert (not d!2182954))

(assert (not d!2182948))

(assert (not bs!1865109))

(assert (not b!7003024))

(assert (not b_lambda!263859))

(assert (not b!7002955))

(assert (not bs!1865111))

(assert (not b!7002941))

(assert (not b!7002933))

(assert (not b!7003006))

(assert (not b!7003121))

(assert (not d!2182932))

(assert (not d!2182902))

(assert (not b!7003012))

(assert (not b!7003026))

(assert (not d!2182978))

(assert (not d!2182996))

(assert (not d!2182990))

(assert (not b!7003086))

(assert (not b!7003094))

(assert (not b!7003138))

(assert (not b!7003081))

(assert (not b!7003023))

(assert (not b!7003095))

(assert (not b!7002995))

(assert (not b_lambda!263857))

(assert (not b!7003043))

(assert (not d!2182950))

(assert (not b_lambda!263853))

(assert (not d!2182964))

(assert (not d!2182960))

(assert (not d!2182984))

(assert (not b!7003034))

(assert (not bm!635885))

(assert (not b!7003071))

(assert (not d!2183016))

(assert (not d!2182918))

(assert (not b!7003114))

(assert (not b!7003000))

(assert (not d!2183028))

(assert (not d!2182968))

(assert (not b!7003068))

(assert (not b_lambda!263865))

(assert (not d!2182970))

(assert (not d!2183022))

(assert (not b!7003117))

(assert (not b!7003072))

(assert (not b!7003101))

(assert (not b!7003118))

(assert (not bm!635884))

(assert (not d!2182982))

(assert (not b!7002954))

(assert (not d!2182972))

(assert (not b!7003030))

(assert (not d!2182956))

(assert (not b!7003028))

(assert (not bm!635877))

(assert (not b!7003078))

(assert (not b!7003041))

(assert (not bm!635879))

(assert (not b!7002983))

(assert (not b!7003038))

(assert (not b!7003033))

(assert (not b!7003063))

(assert (not b!7003122))

(assert (not b!7003042))

(assert (not d!2182974))

(assert (not b!7003104))

(assert (not d!2183020))

(assert (not d!2182966))

(assert (not b!7002994))

(assert (not d!2182986))

(assert (not bm!635860))

(assert tp_is_empty!43777)

(assert (not d!2182908))

(assert (not b!7003103))

(assert (not b!7003077))

(assert (not d!2182980))

(assert (not b!7003040))

(assert (not b!7003064))

(assert (not b_lambda!263855))

(assert (not bm!635880))

(assert (not bm!635887))

(assert (not d!2182998))

(assert (not b!7003127))

(assert (not bs!1865110))

(assert (not b_lambda!263861))

(assert (not d!2183010))

(assert (not bs!1865108))

(assert (not d!2182924))

(assert (not bs!1865106))

(assert (not d!2182900))

(assert (not d!2182944))

(assert (not d!2183004))

(assert (not b!7003143))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

