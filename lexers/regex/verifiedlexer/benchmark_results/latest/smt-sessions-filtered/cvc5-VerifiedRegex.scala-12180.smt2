; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!685498 () Bool)

(assert start!685498)

(declare-fun b!7063679 () Bool)

(assert (=> b!7063679 true))

(declare-fun b!7063661 () Bool)

(assert (=> b!7063661 true))

(declare-fun b!7063683 () Bool)

(assert (=> b!7063683 true))

(declare-fun bs!1879384 () Bool)

(declare-fun b!7063666 () Bool)

(assert (= bs!1879384 (and b!7063666 b!7063679)))

(declare-fun lambda!422983 () Int)

(declare-fun lambda!422979 () Int)

(assert (=> bs!1879384 (not (= lambda!422983 lambda!422979))))

(declare-fun b!7063658 () Bool)

(declare-fun e!4246599 () Bool)

(declare-datatypes ((C!35482 0))(
  ( (C!35483 (val!27443 Int)) )
))
(declare-datatypes ((Regex!17606 0))(
  ( (ElementMatch!17606 (c!1316807 C!35482)) (Concat!26451 (regOne!35724 Regex!17606) (regTwo!35724 Regex!17606)) (EmptyExpr!17606) (Star!17606 (reg!17935 Regex!17606)) (EmptyLang!17606) (Union!17606 (regOne!35725 Regex!17606) (regTwo!35725 Regex!17606)) )
))
(declare-datatypes ((List!68344 0))(
  ( (Nil!68220) (Cons!68220 (h!74668 Regex!17606) (t!382125 List!68344)) )
))
(declare-datatypes ((Context!13204 0))(
  ( (Context!13205 (exprs!7102 List!68344)) )
))
(declare-fun lt!2538687 () (Set Context!13204))

(declare-datatypes ((List!68345 0))(
  ( (Nil!68221) (Cons!68221 (h!74669 C!35482) (t!382126 List!68345)) )
))
(declare-fun s!7408 () List!68345)

(declare-fun matchZipper!3146 ((Set Context!13204) List!68345) Bool)

(assert (=> b!7063658 (= e!4246599 (not (matchZipper!3146 lt!2538687 (t!382126 s!7408))))))

(declare-fun lt!2538656 () List!68344)

(declare-fun ct2!306 () Context!13204)

(declare-fun lambda!422981 () Int)

(declare-datatypes ((Unit!161892 0))(
  ( (Unit!161893) )
))
(declare-fun lt!2538697 () Unit!161892)

(declare-fun lemmaConcatPreservesForall!917 (List!68344 List!68344 Int) Unit!161892)

(assert (=> b!7063658 (= lt!2538697 (lemmaConcatPreservesForall!917 lt!2538656 (exprs!7102 ct2!306) lambda!422981))))

(declare-fun b!7063659 () Bool)

(declare-fun res!2884240 () Bool)

(declare-fun e!4246612 () Bool)

(assert (=> b!7063659 (=> res!2884240 e!4246612)))

(declare-datatypes ((tuple2!68214 0))(
  ( (tuple2!68215 (_1!37410 List!68345) (_2!37410 List!68345)) )
))
(declare-fun lt!2538657 () tuple2!68214)

(declare-fun ++!15709 (List!68345 List!68345) List!68345)

(assert (=> b!7063659 (= res!2884240 (not (= (++!15709 (_1!37410 lt!2538657) (_2!37410 lt!2538657)) s!7408)))))

(declare-fun b!7063660 () Bool)

(declare-fun e!4246602 () Bool)

(declare-fun e!4246609 () Bool)

(assert (=> b!7063660 (= e!4246602 e!4246609)))

(declare-fun res!2884238 () Bool)

(assert (=> b!7063660 (=> res!2884238 e!4246609)))

(assert (=> b!7063660 (= res!2884238 (not (matchZipper!3146 lt!2538687 (t!382126 s!7408))))))

(declare-fun lt!2538675 () Unit!161892)

(assert (=> b!7063660 (= lt!2538675 (lemmaConcatPreservesForall!917 lt!2538656 (exprs!7102 ct2!306) lambda!422981))))

(declare-fun e!4246613 () Bool)

(declare-fun e!4246597 () Bool)

(assert (=> b!7063661 (= e!4246613 e!4246597)))

(declare-fun res!2884239 () Bool)

(assert (=> b!7063661 (=> res!2884239 e!4246597)))

(declare-fun lt!2538642 () Context!13204)

(declare-fun z1!570 () (Set Context!13204))

(declare-fun lt!2538695 () Context!13204)

(declare-fun lt!2538686 () Context!13204)

(assert (=> b!7063661 (= res!2884239 (or (not (= lt!2538642 lt!2538695)) (not (set.member lt!2538686 z1!570))))))

(declare-fun ++!15710 (List!68344 List!68344) List!68344)

(assert (=> b!7063661 (= lt!2538642 (Context!13205 (++!15710 (exprs!7102 lt!2538686) (exprs!7102 ct2!306))))))

(declare-fun lt!2538644 () Unit!161892)

(assert (=> b!7063661 (= lt!2538644 (lemmaConcatPreservesForall!917 (exprs!7102 lt!2538686) (exprs!7102 ct2!306) lambda!422981))))

(declare-fun lambda!422980 () Int)

(declare-fun mapPost2!435 ((Set Context!13204) Int Context!13204) Context!13204)

(assert (=> b!7063661 (= lt!2538686 (mapPost2!435 z1!570 lambda!422980 lt!2538695))))

(declare-fun b!7063662 () Bool)

(declare-fun e!4246611 () Bool)

(assert (=> b!7063662 (= e!4246609 e!4246611)))

(declare-fun res!2884235 () Bool)

(assert (=> b!7063662 (=> res!2884235 e!4246611)))

(declare-fun lt!2538678 () (Set Context!13204))

(declare-fun derivationStepZipper!3056 ((Set Context!13204) C!35482) (Set Context!13204))

(assert (=> b!7063662 (= res!2884235 (not (= (derivationStepZipper!3056 lt!2538678 (h!74669 s!7408)) lt!2538687)))))

(declare-fun lt!2538663 () Unit!161892)

(assert (=> b!7063662 (= lt!2538663 (lemmaConcatPreservesForall!917 lt!2538656 (exprs!7102 ct2!306) lambda!422981))))

(declare-fun lt!2538643 () Unit!161892)

(assert (=> b!7063662 (= lt!2538643 (lemmaConcatPreservesForall!917 lt!2538656 (exprs!7102 ct2!306) lambda!422981))))

(declare-fun lt!2538701 () Context!13204)

(declare-fun lambda!422982 () Int)

(declare-fun flatMap!2532 ((Set Context!13204) Int) (Set Context!13204))

(declare-fun derivationStepZipperUp!2190 (Context!13204 C!35482) (Set Context!13204))

(assert (=> b!7063662 (= (flatMap!2532 lt!2538678 lambda!422982) (derivationStepZipperUp!2190 lt!2538701 (h!74669 s!7408)))))

(declare-fun lt!2538698 () Unit!161892)

(declare-fun lemmaFlatMapOnSingletonSet!2041 ((Set Context!13204) Context!13204 Int) Unit!161892)

(assert (=> b!7063662 (= lt!2538698 (lemmaFlatMapOnSingletonSet!2041 lt!2538678 lt!2538701 lambda!422982))))

(assert (=> b!7063662 (= lt!2538678 (set.insert lt!2538701 (as set.empty (Set Context!13204))))))

(declare-fun lt!2538661 () Unit!161892)

(assert (=> b!7063662 (= lt!2538661 (lemmaConcatPreservesForall!917 lt!2538656 (exprs!7102 ct2!306) lambda!422981))))

(declare-fun lt!2538674 () Unit!161892)

(assert (=> b!7063662 (= lt!2538674 (lemmaConcatPreservesForall!917 lt!2538656 (exprs!7102 ct2!306) lambda!422981))))

(declare-fun b!7063663 () Bool)

(declare-fun e!4246606 () Bool)

(assert (=> b!7063663 (= e!4246606 e!4246612)))

(declare-fun res!2884243 () Bool)

(assert (=> b!7063663 (=> res!2884243 e!4246612)))

(declare-fun lt!2538680 () (Set Context!13204))

(assert (=> b!7063663 (= res!2884243 (not (matchZipper!3146 lt!2538680 (_1!37410 lt!2538657))))))

(declare-datatypes ((Option!16939 0))(
  ( (None!16938) (Some!16938 (v!53232 tuple2!68214)) )
))
(declare-fun lt!2538638 () Option!16939)

(declare-fun get!23893 (Option!16939) tuple2!68214)

(assert (=> b!7063663 (= lt!2538657 (get!23893 lt!2538638))))

(declare-fun isDefined!13640 (Option!16939) Bool)

(assert (=> b!7063663 (isDefined!13640 lt!2538638)))

(declare-fun lt!2538690 () (Set Context!13204))

(declare-fun findConcatSeparationZippers!455 ((Set Context!13204) (Set Context!13204) List!68345 List!68345 List!68345) Option!16939)

(assert (=> b!7063663 (= lt!2538638 (findConcatSeparationZippers!455 lt!2538680 lt!2538690 Nil!68221 s!7408 s!7408))))

(assert (=> b!7063663 (= lt!2538690 (set.insert ct2!306 (as set.empty (Set Context!13204))))))

(declare-fun lt!2538658 () Unit!161892)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!443 ((Set Context!13204) Context!13204 List!68345) Unit!161892)

(assert (=> b!7063663 (= lt!2538658 (lemmaConcatZipperMatchesStringThenFindConcatDefined!443 lt!2538680 ct2!306 s!7408))))

(declare-fun b!7063664 () Bool)

(declare-fun e!4246594 () Bool)

(assert (=> b!7063664 (= e!4246594 e!4246606)))

(declare-fun res!2884242 () Bool)

(assert (=> b!7063664 (=> res!2884242 e!4246606)))

(declare-fun lt!2538662 () Int)

(declare-fun lt!2538672 () Context!13204)

(declare-fun contextDepthTotal!542 (Context!13204) Int)

(assert (=> b!7063664 (= res!2884242 (<= lt!2538662 (contextDepthTotal!542 lt!2538672)))))

(declare-fun lt!2538681 () Int)

(assert (=> b!7063664 (<= lt!2538662 lt!2538681)))

(declare-datatypes ((List!68346 0))(
  ( (Nil!68222) (Cons!68222 (h!74670 Context!13204) (t!382127 List!68346)) )
))
(declare-fun lt!2538688 () List!68346)

(declare-fun zipperDepthTotal!571 (List!68346) Int)

(assert (=> b!7063664 (= lt!2538681 (zipperDepthTotal!571 lt!2538688))))

(assert (=> b!7063664 (= lt!2538662 (contextDepthTotal!542 lt!2538686))))

(declare-fun lt!2538649 () Unit!161892)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!109 (List!68346 Context!13204) Unit!161892)

(assert (=> b!7063664 (= lt!2538649 (lemmaTotalDepthZipperLargerThanOfAnyContext!109 lt!2538688 lt!2538686))))

(declare-fun toList!10947 ((Set Context!13204)) List!68346)

(assert (=> b!7063664 (= lt!2538688 (toList!10947 z1!570))))

(declare-fun lt!2538647 () Unit!161892)

(assert (=> b!7063664 (= lt!2538647 (lemmaConcatPreservesForall!917 lt!2538656 (exprs!7102 ct2!306) lambda!422981))))

(declare-fun lt!2538693 () Unit!161892)

(assert (=> b!7063664 (= lt!2538693 (lemmaConcatPreservesForall!917 lt!2538656 (exprs!7102 ct2!306) lambda!422981))))

(declare-fun lt!2538653 () Unit!161892)

(assert (=> b!7063664 (= lt!2538653 (lemmaConcatPreservesForall!917 lt!2538656 (exprs!7102 ct2!306) lambda!422981))))

(assert (=> b!7063664 (= (flatMap!2532 lt!2538680 lambda!422982) (derivationStepZipperUp!2190 lt!2538672 (h!74669 s!7408)))))

(declare-fun lt!2538641 () Unit!161892)

(assert (=> b!7063664 (= lt!2538641 (lemmaFlatMapOnSingletonSet!2041 lt!2538680 lt!2538672 lambda!422982))))

(declare-fun map!15942 ((Set Context!13204) Int) (Set Context!13204))

(assert (=> b!7063664 (= (map!15942 lt!2538680 lambda!422980) (set.insert (Context!13205 (++!15710 lt!2538656 (exprs!7102 ct2!306))) (as set.empty (Set Context!13204))))))

(declare-fun lt!2538683 () Unit!161892)

(assert (=> b!7063664 (= lt!2538683 (lemmaConcatPreservesForall!917 lt!2538656 (exprs!7102 ct2!306) lambda!422981))))

(declare-fun lt!2538659 () Unit!161892)

(declare-fun lemmaMapOnSingletonSet!423 ((Set Context!13204) Context!13204 Int) Unit!161892)

(assert (=> b!7063664 (= lt!2538659 (lemmaMapOnSingletonSet!423 lt!2538680 lt!2538672 lambda!422980))))

(assert (=> b!7063664 (= lt!2538680 (set.insert lt!2538672 (as set.empty (Set Context!13204))))))

(declare-fun b!7063665 () Bool)

(assert (=> b!7063665 (= e!4246611 e!4246594)))

(declare-fun res!2884232 () Bool)

(assert (=> b!7063665 (=> res!2884232 e!4246594)))

(assert (=> b!7063665 (= res!2884232 (not (matchZipper!3146 lt!2538678 s!7408)))))

(declare-fun lt!2538652 () Unit!161892)

(assert (=> b!7063665 (= lt!2538652 (lemmaConcatPreservesForall!917 lt!2538656 (exprs!7102 ct2!306) lambda!422981))))

(declare-fun e!4246604 () Unit!161892)

(declare-fun Unit!161894 () Unit!161892)

(assert (=> b!7063666 (= e!4246604 Unit!161894)))

(declare-fun lt!2538699 () Context!13204)

(declare-fun getWitness!1685 ((Set Context!13204) Int) Context!13204)

(assert (=> b!7063666 (= lt!2538699 (getWitness!1685 lt!2538680 lambda!422983))))

(declare-fun lt!2538692 () Unit!161892)

(declare-fun lemmaContainsThenExists!138 ((Set Context!13204) Context!13204 Int) Unit!161892)

(assert (=> b!7063666 (= lt!2538692 (lemmaContainsThenExists!138 lt!2538680 lt!2538672 lambda!422983))))

(declare-fun exists!3622 ((Set Context!13204) Int) Bool)

(assert (=> b!7063666 (exists!3622 lt!2538680 lambda!422983)))

(declare-fun lt!2538670 () (Set Context!13204))

(assert (=> b!7063666 (= lt!2538670 (set.insert lt!2538686 (as set.empty (Set Context!13204))))))

(declare-fun lt!2538684 () Unit!161892)

(assert (=> b!7063666 (= lt!2538684 (lemmaContainsThenExists!138 lt!2538670 lt!2538686 lambda!422983))))

(assert (=> b!7063666 (exists!3622 lt!2538670 lambda!422983)))

(declare-fun lt!2538691 () Unit!161892)

(declare-fun call!641851 () Unit!161892)

(assert (=> b!7063666 (= lt!2538691 call!641851)))

(declare-fun call!641852 () Bool)

(assert (=> b!7063666 call!641852))

(declare-fun b!7063667 () Bool)

(declare-fun res!2884249 () Bool)

(assert (=> b!7063667 (=> res!2884249 e!4246602)))

(declare-fun lt!2538664 () Bool)

(assert (=> b!7063667 (= res!2884249 (not lt!2538664))))

(declare-fun b!7063668 () Bool)

(declare-fun res!2884253 () Bool)

(assert (=> b!7063668 (=> res!2884253 e!4246612)))

(assert (=> b!7063668 (= res!2884253 (not (matchZipper!3146 lt!2538690 (_2!37410 lt!2538657))))))

(declare-fun setElem!50058 () Context!13204)

(declare-fun e!4246607 () Bool)

(declare-fun setNonEmpty!50058 () Bool)

(declare-fun setRes!50058 () Bool)

(declare-fun tp!1941327 () Bool)

(declare-fun inv!86875 (Context!13204) Bool)

(assert (=> setNonEmpty!50058 (= setRes!50058 (and tp!1941327 (inv!86875 setElem!50058) e!4246607))))

(declare-fun setRest!50058 () (Set Context!13204))

(assert (=> setNonEmpty!50058 (= z1!570 (set.union (set.insert setElem!50058 (as set.empty (Set Context!13204))) setRest!50058))))

(declare-fun b!7063669 () Bool)

(declare-fun e!4246600 () Bool)

(declare-fun lt!2538668 () (Set Context!13204))

(declare-fun lt!2538660 () List!68345)

(assert (=> b!7063669 (= e!4246600 (matchZipper!3146 lt!2538668 lt!2538660))))

(declare-fun bm!641847 () Bool)

(declare-fun call!641853 () Option!16939)

(assert (=> bm!641847 (= call!641852 (isDefined!13640 call!641853))))

(declare-fun b!7063670 () Bool)

(declare-fun tp!1941329 () Bool)

(assert (=> b!7063670 (= e!4246607 tp!1941329)))

(declare-fun b!7063671 () Bool)

(declare-fun res!2884237 () Bool)

(declare-fun e!4246601 () Bool)

(assert (=> b!7063671 (=> res!2884237 e!4246601)))

(declare-fun isEmpty!39802 (List!68344) Bool)

(assert (=> b!7063671 (= res!2884237 (isEmpty!39802 (exprs!7102 lt!2538686)))))

(declare-fun b!7063672 () Bool)

(declare-fun e!4246598 () Bool)

(assert (=> b!7063672 (= e!4246601 e!4246598)))

(declare-fun res!2884248 () Bool)

(assert (=> b!7063672 (=> res!2884248 e!4246598)))

(declare-fun nullable!7289 (Regex!17606) Bool)

(assert (=> b!7063672 (= res!2884248 (not (nullable!7289 (h!74668 (exprs!7102 lt!2538686)))))))

(assert (=> b!7063672 (= lt!2538672 (Context!13205 lt!2538656))))

(declare-fun tail!13760 (List!68344) List!68344)

(assert (=> b!7063672 (= lt!2538656 (tail!13760 (exprs!7102 lt!2538686)))))

(declare-fun b!7063673 () Bool)

(declare-fun e!4246605 () Bool)

(assert (=> b!7063673 (= e!4246605 (matchZipper!3146 lt!2538687 (t!382126 s!7408)))))

(declare-fun b!7063674 () Bool)

(declare-fun e!4246595 () Bool)

(declare-fun tp_is_empty!44437 () Bool)

(declare-fun tp!1941330 () Bool)

(assert (=> b!7063674 (= e!4246595 (and tp_is_empty!44437 tp!1941330))))

(declare-fun b!7063675 () Bool)

(declare-fun res!2884245 () Bool)

(assert (=> b!7063675 (=> res!2884245 e!4246606)))

(assert (=> b!7063675 (= res!2884245 (>= (zipperDepthTotal!571 (Cons!68222 lt!2538672 Nil!68222)) lt!2538681))))

(declare-fun bm!641846 () Bool)

(declare-fun lt!2538648 () (Set Context!13204))

(declare-fun c!1316806 () Bool)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!55 ((Set Context!13204) (Set Context!13204) List!68345 List!68345 List!68345 List!68345 List!68345) Unit!161892)

(assert (=> bm!641846 (= call!641851 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!55 (ite c!1316806 lt!2538670 lt!2538648) lt!2538690 (_1!37410 lt!2538657) (_2!37410 lt!2538657) s!7408 Nil!68221 s!7408))))

(declare-fun res!2884234 () Bool)

(declare-fun e!4246603 () Bool)

(assert (=> start!685498 (=> (not res!2884234) (not e!4246603))))

(declare-fun lt!2538685 () (Set Context!13204))

(assert (=> start!685498 (= res!2884234 (matchZipper!3146 lt!2538685 s!7408))))

(declare-fun appendTo!727 ((Set Context!13204) Context!13204) (Set Context!13204))

(assert (=> start!685498 (= lt!2538685 (appendTo!727 z1!570 ct2!306))))

(assert (=> start!685498 e!4246603))

(declare-fun condSetEmpty!50058 () Bool)

(assert (=> start!685498 (= condSetEmpty!50058 (= z1!570 (as set.empty (Set Context!13204))))))

(assert (=> start!685498 setRes!50058))

(declare-fun e!4246608 () Bool)

(assert (=> start!685498 (and (inv!86875 ct2!306) e!4246608)))

(assert (=> start!685498 e!4246595))

(declare-fun bm!641848 () Bool)

(assert (=> bm!641848 (= call!641853 (findConcatSeparationZippers!455 (ite c!1316806 lt!2538670 lt!2538648) lt!2538690 Nil!68221 s!7408 s!7408))))

(declare-fun setIsEmpty!50058 () Bool)

(assert (=> setIsEmpty!50058 setRes!50058))

(declare-fun b!7063676 () Bool)

(declare-fun tp!1941328 () Bool)

(assert (=> b!7063676 (= e!4246608 tp!1941328)))

(declare-fun b!7063677 () Bool)

(declare-fun res!2884250 () Bool)

(assert (=> b!7063677 (=> (not res!2884250) (not e!4246603))))

(assert (=> b!7063677 (= res!2884250 (is-Cons!68221 s!7408))))

(declare-fun b!7063678 () Bool)

(declare-fun e!4246610 () Bool)

(assert (=> b!7063678 (= e!4246610 e!4246602)))

(declare-fun res!2884246 () Bool)

(assert (=> b!7063678 (=> res!2884246 e!4246602)))

(assert (=> b!7063678 (= res!2884246 e!4246599)))

(declare-fun res!2884254 () Bool)

(assert (=> b!7063678 (=> (not res!2884254) (not e!4246599))))

(declare-fun lt!2538646 () Bool)

(assert (=> b!7063678 (= res!2884254 (not (= lt!2538664 lt!2538646)))))

(declare-fun lt!2538676 () (Set Context!13204))

(assert (=> b!7063678 (= lt!2538664 (matchZipper!3146 lt!2538676 (t!382126 s!7408)))))

(declare-fun lt!2538666 () Unit!161892)

(assert (=> b!7063678 (= lt!2538666 (lemmaConcatPreservesForall!917 lt!2538656 (exprs!7102 ct2!306) lambda!422981))))

(declare-fun lt!2538639 () (Set Context!13204))

(assert (=> b!7063678 (= (matchZipper!3146 lt!2538639 (t!382126 s!7408)) e!4246605)))

(declare-fun res!2884244 () Bool)

(assert (=> b!7063678 (=> res!2884244 e!4246605)))

(assert (=> b!7063678 (= res!2884244 lt!2538646)))

(declare-fun lt!2538677 () (Set Context!13204))

(assert (=> b!7063678 (= lt!2538646 (matchZipper!3146 lt!2538677 (t!382126 s!7408)))))

(declare-fun lt!2538700 () Unit!161892)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1619 ((Set Context!13204) (Set Context!13204) List!68345) Unit!161892)

(assert (=> b!7063678 (= lt!2538700 (lemmaZipperConcatMatchesSameAsBothZippers!1619 lt!2538677 lt!2538687 (t!382126 s!7408)))))

(declare-fun lt!2538650 () Unit!161892)

(assert (=> b!7063678 (= lt!2538650 (lemmaConcatPreservesForall!917 lt!2538656 (exprs!7102 ct2!306) lambda!422981))))

(declare-fun lt!2538645 () Unit!161892)

(assert (=> b!7063678 (= lt!2538645 (lemmaConcatPreservesForall!917 lt!2538656 (exprs!7102 ct2!306) lambda!422981))))

(assert (=> b!7063679 (= e!4246603 (not e!4246613))))

(declare-fun res!2884236 () Bool)

(assert (=> b!7063679 (=> res!2884236 e!4246613)))

(declare-fun lt!2538651 () (Set Context!13204))

(assert (=> b!7063679 (= res!2884236 (not (matchZipper!3146 lt!2538651 s!7408)))))

(assert (=> b!7063679 (= lt!2538651 (set.insert lt!2538695 (as set.empty (Set Context!13204))))))

(assert (=> b!7063679 (= lt!2538695 (getWitness!1685 lt!2538685 lambda!422979))))

(declare-fun lt!2538654 () List!68346)

(declare-fun exists!3623 (List!68346 Int) Bool)

(assert (=> b!7063679 (exists!3623 lt!2538654 lambda!422979)))

(declare-fun lt!2538682 () Unit!161892)

(declare-fun lemmaZipperMatchesExistsMatchingContext!527 (List!68346 List!68345) Unit!161892)

(assert (=> b!7063679 (= lt!2538682 (lemmaZipperMatchesExistsMatchingContext!527 lt!2538654 s!7408))))

(assert (=> b!7063679 (= lt!2538654 (toList!10947 lt!2538685))))

(declare-fun b!7063680 () Bool)

(assert (=> b!7063680 (= e!4246598 e!4246610)))

(declare-fun res!2884233 () Bool)

(assert (=> b!7063680 (=> res!2884233 e!4246610)))

(assert (=> b!7063680 (= res!2884233 (not (= lt!2538676 lt!2538639)))))

(assert (=> b!7063680 (= lt!2538639 (set.union lt!2538677 lt!2538687))))

(assert (=> b!7063680 (= lt!2538687 (derivationStepZipperUp!2190 lt!2538701 (h!74669 s!7408)))))

(declare-fun derivationStepZipperDown!2240 (Regex!17606 Context!13204 C!35482) (Set Context!13204))

(assert (=> b!7063680 (= lt!2538677 (derivationStepZipperDown!2240 (h!74668 (exprs!7102 lt!2538686)) lt!2538701 (h!74669 s!7408)))))

(assert (=> b!7063680 (= lt!2538701 (Context!13205 (++!15710 lt!2538656 (exprs!7102 ct2!306))))))

(declare-fun lt!2538665 () Unit!161892)

(assert (=> b!7063680 (= lt!2538665 (lemmaConcatPreservesForall!917 lt!2538656 (exprs!7102 ct2!306) lambda!422981))))

(declare-fun lt!2538689 () Unit!161892)

(assert (=> b!7063680 (= lt!2538689 (lemmaConcatPreservesForall!917 lt!2538656 (exprs!7102 ct2!306) lambda!422981))))

(declare-fun b!7063681 () Bool)

(declare-fun res!2884252 () Bool)

(assert (=> b!7063681 (=> res!2884252 e!4246601)))

(assert (=> b!7063681 (= res!2884252 (not (is-Cons!68220 (exprs!7102 lt!2538686))))))

(declare-fun b!7063682 () Bool)

(declare-fun Unit!161895 () Unit!161892)

(assert (=> b!7063682 (= e!4246604 Unit!161895)))

(assert (=> b!7063682 (= lt!2538648 (set.insert lt!2538686 (as set.empty (Set Context!13204))))))

(declare-fun lt!2538640 () Unit!161892)

(assert (=> b!7063682 (= lt!2538640 (lemmaFlatMapOnSingletonSet!2041 lt!2538648 lt!2538686 lambda!422982))))

(assert (=> b!7063682 (= (flatMap!2532 lt!2538648 lambda!422982) (derivationStepZipperUp!2190 lt!2538686 (h!74669 s!7408)))))

(declare-fun lt!2538696 () (Set Context!13204))

(assert (=> b!7063682 (= lt!2538696 (derivationStepZipperDown!2240 (h!74668 (exprs!7102 lt!2538686)) lt!2538672 (h!74669 s!7408)))))

(assert (=> b!7063682 (= lt!2538668 (derivationStepZipperUp!2190 lt!2538672 (h!74669 s!7408)))))

(declare-fun tail!13761 (List!68345) List!68345)

(assert (=> b!7063682 (= lt!2538660 (tail!13761 (_1!37410 lt!2538657)))))

(declare-fun lt!2538673 () Unit!161892)

(assert (=> b!7063682 (= lt!2538673 (lemmaZipperConcatMatchesSameAsBothZippers!1619 lt!2538696 lt!2538668 lt!2538660))))

(declare-fun res!2884247 () Bool)

(assert (=> b!7063682 (= res!2884247 (matchZipper!3146 lt!2538696 lt!2538660))))

(assert (=> b!7063682 (=> res!2884247 e!4246600)))

(assert (=> b!7063682 (= (matchZipper!3146 (set.union lt!2538696 lt!2538668) lt!2538660) e!4246600)))

(declare-fun lt!2538667 () Unit!161892)

(assert (=> b!7063682 (= lt!2538667 (lemmaFlatMapOnSingletonSet!2041 lt!2538680 lt!2538672 lambda!422982))))

(assert (=> b!7063682 (= (flatMap!2532 lt!2538680 lambda!422982) (derivationStepZipperUp!2190 lt!2538672 (h!74669 s!7408)))))

(declare-fun lt!2538637 () Unit!161892)

(assert (=> b!7063682 (= lt!2538637 call!641851)))

(assert (=> b!7063682 call!641852))

(declare-fun e!4246596 () Bool)

(assert (=> b!7063683 (= e!4246596 e!4246601)))

(declare-fun res!2884241 () Bool)

(assert (=> b!7063683 (=> res!2884241 e!4246601)))

(declare-fun lt!2538694 () (Set Context!13204))

(assert (=> b!7063683 (= res!2884241 (not (= (derivationStepZipper!3056 lt!2538694 (h!74669 s!7408)) lt!2538676)))))

(assert (=> b!7063683 (= (flatMap!2532 lt!2538694 lambda!422982) (derivationStepZipperUp!2190 lt!2538642 (h!74669 s!7408)))))

(declare-fun lt!2538679 () Unit!161892)

(assert (=> b!7063683 (= lt!2538679 (lemmaFlatMapOnSingletonSet!2041 lt!2538694 lt!2538642 lambda!422982))))

(assert (=> b!7063683 (= lt!2538676 (derivationStepZipperUp!2190 lt!2538642 (h!74669 s!7408)))))

(declare-fun lt!2538671 () Unit!161892)

(assert (=> b!7063683 (= lt!2538671 (lemmaConcatPreservesForall!917 (exprs!7102 lt!2538686) (exprs!7102 ct2!306) lambda!422981))))

(declare-fun b!7063684 () Bool)

(assert (=> b!7063684 (= e!4246612 (matchZipper!3146 (set.insert lt!2538686 (as set.empty (Set Context!13204))) (_1!37410 (get!23893 (findConcatSeparationZippers!455 (set.insert (Context!13205 (tail!13760 (exprs!7102 (mapPost2!435 z1!570 lambda!422980 lt!2538695)))) (as set.empty (Set Context!13204))) lt!2538690 Nil!68221 s!7408 s!7408)))))))

(declare-fun lt!2538655 () Unit!161892)

(assert (=> b!7063684 (= lt!2538655 e!4246604)))

(declare-fun isEmpty!39803 (List!68345) Bool)

(assert (=> b!7063684 (= c!1316806 (isEmpty!39803 (_1!37410 lt!2538657)))))

(declare-fun b!7063685 () Bool)

(assert (=> b!7063685 (= e!4246597 e!4246596)))

(declare-fun res!2884251 () Bool)

(assert (=> b!7063685 (=> res!2884251 e!4246596)))

(assert (=> b!7063685 (= res!2884251 (not (= lt!2538694 lt!2538651)))))

(assert (=> b!7063685 (= lt!2538694 (set.insert lt!2538642 (as set.empty (Set Context!13204))))))

(declare-fun lt!2538669 () Unit!161892)

(assert (=> b!7063685 (= lt!2538669 (lemmaConcatPreservesForall!917 (exprs!7102 lt!2538686) (exprs!7102 ct2!306) lambda!422981))))

(declare-fun b!7063686 () Bool)

(declare-fun res!2884231 () Bool)

(assert (=> b!7063686 (=> res!2884231 e!4246613)))

(assert (=> b!7063686 (= res!2884231 (not (set.member lt!2538695 lt!2538685)))))

(assert (= (and start!685498 res!2884234) b!7063677))

(assert (= (and b!7063677 res!2884250) b!7063679))

(assert (= (and b!7063679 (not res!2884236)) b!7063686))

(assert (= (and b!7063686 (not res!2884231)) b!7063661))

(assert (= (and b!7063661 (not res!2884239)) b!7063685))

(assert (= (and b!7063685 (not res!2884251)) b!7063683))

(assert (= (and b!7063683 (not res!2884241)) b!7063681))

(assert (= (and b!7063681 (not res!2884252)) b!7063671))

(assert (= (and b!7063671 (not res!2884237)) b!7063672))

(assert (= (and b!7063672 (not res!2884248)) b!7063680))

(assert (= (and b!7063680 (not res!2884233)) b!7063678))

(assert (= (and b!7063678 (not res!2884244)) b!7063673))

(assert (= (and b!7063678 res!2884254) b!7063658))

(assert (= (and b!7063678 (not res!2884246)) b!7063667))

(assert (= (and b!7063667 (not res!2884249)) b!7063660))

(assert (= (and b!7063660 (not res!2884238)) b!7063662))

(assert (= (and b!7063662 (not res!2884235)) b!7063665))

(assert (= (and b!7063665 (not res!2884232)) b!7063664))

(assert (= (and b!7063664 (not res!2884242)) b!7063675))

(assert (= (and b!7063675 (not res!2884245)) b!7063663))

(assert (= (and b!7063663 (not res!2884243)) b!7063668))

(assert (= (and b!7063668 (not res!2884253)) b!7063659))

(assert (= (and b!7063659 (not res!2884240)) b!7063684))

(assert (= (and b!7063684 c!1316806) b!7063666))

(assert (= (and b!7063684 (not c!1316806)) b!7063682))

(assert (= (and b!7063682 (not res!2884247)) b!7063669))

(assert (= (or b!7063666 b!7063682) bm!641846))

(assert (= (or b!7063666 b!7063682) bm!641848))

(assert (= (or b!7063666 b!7063682) bm!641847))

(assert (= (and start!685498 condSetEmpty!50058) setIsEmpty!50058))

(assert (= (and start!685498 (not condSetEmpty!50058)) setNonEmpty!50058))

(assert (= setNonEmpty!50058 b!7063670))

(assert (= start!685498 b!7063676))

(assert (= (and start!685498 (is-Cons!68221 s!7408)) b!7063674))

(declare-fun m!7785212 () Bool)

(assert (=> b!7063678 m!7785212))

(declare-fun m!7785214 () Bool)

(assert (=> b!7063678 m!7785214))

(declare-fun m!7785216 () Bool)

(assert (=> b!7063678 m!7785216))

(declare-fun m!7785218 () Bool)

(assert (=> b!7063678 m!7785218))

(assert (=> b!7063678 m!7785216))

(assert (=> b!7063678 m!7785216))

(declare-fun m!7785220 () Bool)

(assert (=> b!7063678 m!7785220))

(declare-fun m!7785222 () Bool)

(assert (=> bm!641848 m!7785222))

(declare-fun m!7785224 () Bool)

(assert (=> bm!641846 m!7785224))

(declare-fun m!7785226 () Bool)

(assert (=> b!7063684 m!7785226))

(declare-fun m!7785228 () Bool)

(assert (=> b!7063684 m!7785228))

(declare-fun m!7785230 () Bool)

(assert (=> b!7063684 m!7785230))

(declare-fun m!7785232 () Bool)

(assert (=> b!7063684 m!7785232))

(declare-fun m!7785234 () Bool)

(assert (=> b!7063684 m!7785234))

(declare-fun m!7785236 () Bool)

(assert (=> b!7063684 m!7785236))

(declare-fun m!7785238 () Bool)

(assert (=> b!7063684 m!7785238))

(assert (=> b!7063684 m!7785226))

(assert (=> b!7063684 m!7785236))

(assert (=> b!7063684 m!7785232))

(declare-fun m!7785240 () Bool)

(assert (=> b!7063684 m!7785240))

(declare-fun m!7785242 () Bool)

(assert (=> b!7063669 m!7785242))

(declare-fun m!7785244 () Bool)

(assert (=> b!7063663 m!7785244))

(declare-fun m!7785246 () Bool)

(assert (=> b!7063663 m!7785246))

(declare-fun m!7785248 () Bool)

(assert (=> b!7063663 m!7785248))

(declare-fun m!7785250 () Bool)

(assert (=> b!7063663 m!7785250))

(declare-fun m!7785252 () Bool)

(assert (=> b!7063663 m!7785252))

(declare-fun m!7785254 () Bool)

(assert (=> b!7063663 m!7785254))

(declare-fun m!7785256 () Bool)

(assert (=> b!7063659 m!7785256))

(declare-fun m!7785258 () Bool)

(assert (=> b!7063685 m!7785258))

(declare-fun m!7785260 () Bool)

(assert (=> b!7063685 m!7785260))

(declare-fun m!7785262 () Bool)

(assert (=> b!7063673 m!7785262))

(declare-fun m!7785264 () Bool)

(assert (=> start!685498 m!7785264))

(declare-fun m!7785266 () Bool)

(assert (=> start!685498 m!7785266))

(declare-fun m!7785268 () Bool)

(assert (=> start!685498 m!7785268))

(declare-fun m!7785270 () Bool)

(assert (=> b!7063686 m!7785270))

(declare-fun m!7785272 () Bool)

(assert (=> bm!641847 m!7785272))

(declare-fun m!7785274 () Bool)

(assert (=> b!7063668 m!7785274))

(declare-fun m!7785276 () Bool)

(assert (=> b!7063666 m!7785276))

(assert (=> b!7063666 m!7785232))

(declare-fun m!7785278 () Bool)

(assert (=> b!7063666 m!7785278))

(declare-fun m!7785280 () Bool)

(assert (=> b!7063666 m!7785280))

(declare-fun m!7785282 () Bool)

(assert (=> b!7063666 m!7785282))

(declare-fun m!7785284 () Bool)

(assert (=> b!7063666 m!7785284))

(assert (=> b!7063662 m!7785216))

(declare-fun m!7785286 () Bool)

(assert (=> b!7063662 m!7785286))

(declare-fun m!7785288 () Bool)

(assert (=> b!7063662 m!7785288))

(declare-fun m!7785290 () Bool)

(assert (=> b!7063662 m!7785290))

(declare-fun m!7785292 () Bool)

(assert (=> b!7063662 m!7785292))

(assert (=> b!7063662 m!7785216))

(declare-fun m!7785294 () Bool)

(assert (=> b!7063662 m!7785294))

(assert (=> b!7063662 m!7785216))

(assert (=> b!7063662 m!7785216))

(assert (=> b!7063682 m!7785232))

(declare-fun m!7785296 () Bool)

(assert (=> b!7063682 m!7785296))

(declare-fun m!7785298 () Bool)

(assert (=> b!7063682 m!7785298))

(declare-fun m!7785300 () Bool)

(assert (=> b!7063682 m!7785300))

(declare-fun m!7785302 () Bool)

(assert (=> b!7063682 m!7785302))

(declare-fun m!7785304 () Bool)

(assert (=> b!7063682 m!7785304))

(declare-fun m!7785306 () Bool)

(assert (=> b!7063682 m!7785306))

(declare-fun m!7785308 () Bool)

(assert (=> b!7063682 m!7785308))

(declare-fun m!7785310 () Bool)

(assert (=> b!7063682 m!7785310))

(declare-fun m!7785312 () Bool)

(assert (=> b!7063682 m!7785312))

(declare-fun m!7785314 () Bool)

(assert (=> b!7063682 m!7785314))

(declare-fun m!7785316 () Bool)

(assert (=> b!7063682 m!7785316))

(declare-fun m!7785318 () Bool)

(assert (=> b!7063665 m!7785318))

(assert (=> b!7063665 m!7785216))

(assert (=> b!7063683 m!7785260))

(declare-fun m!7785320 () Bool)

(assert (=> b!7063683 m!7785320))

(declare-fun m!7785322 () Bool)

(assert (=> b!7063683 m!7785322))

(declare-fun m!7785324 () Bool)

(assert (=> b!7063683 m!7785324))

(declare-fun m!7785326 () Bool)

(assert (=> b!7063683 m!7785326))

(declare-fun m!7785328 () Bool)

(assert (=> b!7063679 m!7785328))

(declare-fun m!7785330 () Bool)

(assert (=> b!7063679 m!7785330))

(declare-fun m!7785332 () Bool)

(assert (=> b!7063679 m!7785332))

(declare-fun m!7785334 () Bool)

(assert (=> b!7063679 m!7785334))

(declare-fun m!7785336 () Bool)

(assert (=> b!7063679 m!7785336))

(declare-fun m!7785338 () Bool)

(assert (=> b!7063679 m!7785338))

(declare-fun m!7785340 () Bool)

(assert (=> b!7063664 m!7785340))

(declare-fun m!7785342 () Bool)

(assert (=> b!7063664 m!7785342))

(assert (=> b!7063664 m!7785216))

(declare-fun m!7785344 () Bool)

(assert (=> b!7063664 m!7785344))

(assert (=> b!7063664 m!7785216))

(declare-fun m!7785346 () Bool)

(assert (=> b!7063664 m!7785346))

(assert (=> b!7063664 m!7785216))

(assert (=> b!7063664 m!7785216))

(assert (=> b!7063664 m!7785308))

(declare-fun m!7785348 () Bool)

(assert (=> b!7063664 m!7785348))

(declare-fun m!7785350 () Bool)

(assert (=> b!7063664 m!7785350))

(declare-fun m!7785352 () Bool)

(assert (=> b!7063664 m!7785352))

(assert (=> b!7063664 m!7785314))

(declare-fun m!7785354 () Bool)

(assert (=> b!7063664 m!7785354))

(declare-fun m!7785356 () Bool)

(assert (=> b!7063664 m!7785356))

(assert (=> b!7063664 m!7785316))

(declare-fun m!7785358 () Bool)

(assert (=> b!7063664 m!7785358))

(declare-fun m!7785360 () Bool)

(assert (=> setNonEmpty!50058 m!7785360))

(assert (=> b!7063658 m!7785262))

(assert (=> b!7063658 m!7785216))

(declare-fun m!7785362 () Bool)

(assert (=> b!7063675 m!7785362))

(declare-fun m!7785364 () Bool)

(assert (=> b!7063661 m!7785364))

(declare-fun m!7785366 () Bool)

(assert (=> b!7063661 m!7785366))

(assert (=> b!7063661 m!7785260))

(assert (=> b!7063661 m!7785240))

(assert (=> b!7063660 m!7785262))

(assert (=> b!7063660 m!7785216))

(declare-fun m!7785368 () Bool)

(assert (=> b!7063672 m!7785368))

(declare-fun m!7785370 () Bool)

(assert (=> b!7063672 m!7785370))

(declare-fun m!7785372 () Bool)

(assert (=> b!7063671 m!7785372))

(declare-fun m!7785374 () Bool)

(assert (=> b!7063680 m!7785374))

(assert (=> b!7063680 m!7785216))

(assert (=> b!7063680 m!7785346))

(assert (=> b!7063680 m!7785216))

(assert (=> b!7063680 m!7785294))

(push 1)

(assert tp_is_empty!44437)

(assert (not setNonEmpty!50058))

(assert (not bm!641848))

(assert (not b!7063660))

(assert (not b!7063661))

(assert (not b!7063684))

(assert (not b!7063674))

(assert (not b!7063666))

(assert (not b!7063669))

(assert (not b!7063659))

(assert (not b!7063680))

(assert (not b!7063672))

(assert (not b!7063673))

(assert (not b!7063676))

(assert (not b!7063668))

(assert (not b!7063665))

(assert (not b!7063683))

(assert (not b!7063670))

(assert (not bm!641846))

(assert (not b!7063679))

(assert (not b!7063685))

(assert (not b!7063658))

(assert (not b!7063678))

(assert (not b!7063662))

(assert (not b!7063664))

(assert (not b!7063675))

(assert (not b!7063682))

(assert (not b!7063671))

(assert (not bm!641847))

(assert (not start!685498))

(assert (not b!7063663))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1879386 () Bool)

(declare-fun d!2208445 () Bool)

(assert (= bs!1879386 (and d!2208445 b!7063661)))

(declare-fun lambda!423061 () Int)

(assert (=> bs!1879386 (= lambda!423061 lambda!422981)))

(declare-fun forall!16552 (List!68344 Int) Bool)

(assert (=> d!2208445 (= (inv!86875 setElem!50058) (forall!16552 (exprs!7102 setElem!50058) lambda!423061))))

(declare-fun bs!1879387 () Bool)

(assert (= bs!1879387 d!2208445))

(declare-fun m!7785540 () Bool)

(assert (=> bs!1879387 m!7785540))

(assert (=> setNonEmpty!50058 d!2208445))

(declare-fun d!2208447 () Bool)

(assert (=> d!2208447 (forall!16552 (++!15710 (exprs!7102 lt!2538686) (exprs!7102 ct2!306)) lambda!422981)))

(declare-fun lt!2538905 () Unit!161892)

(declare-fun choose!53972 (List!68344 List!68344 Int) Unit!161892)

(assert (=> d!2208447 (= lt!2538905 (choose!53972 (exprs!7102 lt!2538686) (exprs!7102 ct2!306) lambda!422981))))

(assert (=> d!2208447 (forall!16552 (exprs!7102 lt!2538686) lambda!422981)))

(assert (=> d!2208447 (= (lemmaConcatPreservesForall!917 (exprs!7102 lt!2538686) (exprs!7102 ct2!306) lambda!422981) lt!2538905)))

(declare-fun bs!1879388 () Bool)

(assert (= bs!1879388 d!2208447))

(assert (=> bs!1879388 m!7785366))

(assert (=> bs!1879388 m!7785366))

(declare-fun m!7785542 () Bool)

(assert (=> bs!1879388 m!7785542))

(declare-fun m!7785544 () Bool)

(assert (=> bs!1879388 m!7785544))

(declare-fun m!7785546 () Bool)

(assert (=> bs!1879388 m!7785546))

(assert (=> b!7063685 d!2208447))

(declare-fun d!2208449 () Bool)

(declare-fun c!1316840 () Bool)

(assert (=> d!2208449 (= c!1316840 (isEmpty!39803 (_2!37410 lt!2538657)))))

(declare-fun e!4246676 () Bool)

(assert (=> d!2208449 (= (matchZipper!3146 lt!2538690 (_2!37410 lt!2538657)) e!4246676)))

(declare-fun b!7063790 () Bool)

(declare-fun nullableZipper!2676 ((Set Context!13204)) Bool)

(assert (=> b!7063790 (= e!4246676 (nullableZipper!2676 lt!2538690))))

(declare-fun b!7063791 () Bool)

(declare-fun head!14382 (List!68345) C!35482)

(assert (=> b!7063791 (= e!4246676 (matchZipper!3146 (derivationStepZipper!3056 lt!2538690 (head!14382 (_2!37410 lt!2538657))) (tail!13761 (_2!37410 lt!2538657))))))

(assert (= (and d!2208449 c!1316840) b!7063790))

(assert (= (and d!2208449 (not c!1316840)) b!7063791))

(declare-fun m!7785548 () Bool)

(assert (=> d!2208449 m!7785548))

(declare-fun m!7785550 () Bool)

(assert (=> b!7063790 m!7785550))

(declare-fun m!7785552 () Bool)

(assert (=> b!7063791 m!7785552))

(assert (=> b!7063791 m!7785552))

(declare-fun m!7785554 () Bool)

(assert (=> b!7063791 m!7785554))

(declare-fun m!7785556 () Bool)

(assert (=> b!7063791 m!7785556))

(assert (=> b!7063791 m!7785554))

(assert (=> b!7063791 m!7785556))

(declare-fun m!7785558 () Bool)

(assert (=> b!7063791 m!7785558))

(assert (=> b!7063668 d!2208449))

(declare-fun d!2208451 () Bool)

(assert (=> d!2208451 (exists!3622 lt!2538680 lambda!422983)))

(declare-fun lt!2538908 () Unit!161892)

(declare-fun choose!53973 ((Set Context!13204) Context!13204 Int) Unit!161892)

(assert (=> d!2208451 (= lt!2538908 (choose!53973 lt!2538680 lt!2538672 lambda!422983))))

(assert (=> d!2208451 (set.member lt!2538672 lt!2538680)))

(assert (=> d!2208451 (= (lemmaContainsThenExists!138 lt!2538680 lt!2538672 lambda!422983) lt!2538908)))

(declare-fun bs!1879389 () Bool)

(assert (= bs!1879389 d!2208451))

(assert (=> bs!1879389 m!7785282))

(declare-fun m!7785560 () Bool)

(assert (=> bs!1879389 m!7785560))

(declare-fun m!7785562 () Bool)

(assert (=> bs!1879389 m!7785562))

(assert (=> b!7063666 d!2208451))

(declare-fun d!2208453 () Bool)

(assert (=> d!2208453 (exists!3622 lt!2538670 lambda!422983)))

(declare-fun lt!2538909 () Unit!161892)

(assert (=> d!2208453 (= lt!2538909 (choose!53973 lt!2538670 lt!2538686 lambda!422983))))

(assert (=> d!2208453 (set.member lt!2538686 lt!2538670)))

(assert (=> d!2208453 (= (lemmaContainsThenExists!138 lt!2538670 lt!2538686 lambda!422983) lt!2538909)))

(declare-fun bs!1879390 () Bool)

(assert (= bs!1879390 d!2208453))

(assert (=> bs!1879390 m!7785284))

(declare-fun m!7785564 () Bool)

(assert (=> bs!1879390 m!7785564))

(declare-fun m!7785566 () Bool)

(assert (=> bs!1879390 m!7785566))

(assert (=> b!7063666 d!2208453))

(declare-fun d!2208455 () Bool)

(declare-fun e!4246680 () Bool)

(assert (=> d!2208455 e!4246680))

(declare-fun res!2884330 () Bool)

(assert (=> d!2208455 (=> (not res!2884330) (not e!4246680))))

(declare-fun lt!2538912 () Context!13204)

(declare-fun dynLambda!27706 (Int Context!13204) Bool)

(assert (=> d!2208455 (= res!2884330 (dynLambda!27706 lambda!422983 lt!2538912))))

(declare-fun getWitness!1687 (List!68346 Int) Context!13204)

(assert (=> d!2208455 (= lt!2538912 (getWitness!1687 (toList!10947 lt!2538680) lambda!422983))))

(assert (=> d!2208455 (exists!3622 lt!2538680 lambda!422983)))

(assert (=> d!2208455 (= (getWitness!1685 lt!2538680 lambda!422983) lt!2538912)))

(declare-fun b!7063794 () Bool)

(assert (=> b!7063794 (= e!4246680 (set.member lt!2538912 lt!2538680))))

(assert (= (and d!2208455 res!2884330) b!7063794))

(declare-fun b_lambda!269407 () Bool)

(assert (=> (not b_lambda!269407) (not d!2208455)))

(declare-fun m!7785568 () Bool)

(assert (=> d!2208455 m!7785568))

(declare-fun m!7785570 () Bool)

(assert (=> d!2208455 m!7785570))

(assert (=> d!2208455 m!7785570))

(declare-fun m!7785572 () Bool)

(assert (=> d!2208455 m!7785572))

(assert (=> d!2208455 m!7785282))

(declare-fun m!7785574 () Bool)

(assert (=> b!7063794 m!7785574))

(assert (=> b!7063666 d!2208455))

(declare-fun d!2208457 () Bool)

(declare-fun lt!2538915 () Bool)

(assert (=> d!2208457 (= lt!2538915 (exists!3623 (toList!10947 lt!2538680) lambda!422983))))

(declare-fun choose!53974 ((Set Context!13204) Int) Bool)

(assert (=> d!2208457 (= lt!2538915 (choose!53974 lt!2538680 lambda!422983))))

(assert (=> d!2208457 (= (exists!3622 lt!2538680 lambda!422983) lt!2538915)))

(declare-fun bs!1879391 () Bool)

(assert (= bs!1879391 d!2208457))

(assert (=> bs!1879391 m!7785570))

(assert (=> bs!1879391 m!7785570))

(declare-fun m!7785576 () Bool)

(assert (=> bs!1879391 m!7785576))

(declare-fun m!7785578 () Bool)

(assert (=> bs!1879391 m!7785578))

(assert (=> b!7063666 d!2208457))

(declare-fun d!2208459 () Bool)

(declare-fun lt!2538916 () Bool)

(assert (=> d!2208459 (= lt!2538916 (exists!3623 (toList!10947 lt!2538670) lambda!422983))))

(assert (=> d!2208459 (= lt!2538916 (choose!53974 lt!2538670 lambda!422983))))

(assert (=> d!2208459 (= (exists!3622 lt!2538670 lambda!422983) lt!2538916)))

(declare-fun bs!1879392 () Bool)

(assert (= bs!1879392 d!2208459))

(declare-fun m!7785580 () Bool)

(assert (=> bs!1879392 m!7785580))

(assert (=> bs!1879392 m!7785580))

(declare-fun m!7785582 () Bool)

(assert (=> bs!1879392 m!7785582))

(declare-fun m!7785584 () Bool)

(assert (=> bs!1879392 m!7785584))

(assert (=> b!7063666 d!2208459))

(declare-fun d!2208461 () Bool)

(assert (=> d!2208461 (= (get!23893 (findConcatSeparationZippers!455 (set.insert (Context!13205 (tail!13760 (exprs!7102 (mapPost2!435 z1!570 lambda!422980 lt!2538695)))) (as set.empty (Set Context!13204))) lt!2538690 Nil!68221 s!7408 s!7408)) (v!53232 (findConcatSeparationZippers!455 (set.insert (Context!13205 (tail!13760 (exprs!7102 (mapPost2!435 z1!570 lambda!422980 lt!2538695)))) (as set.empty (Set Context!13204))) lt!2538690 Nil!68221 s!7408 s!7408)))))

(assert (=> b!7063684 d!2208461))

(declare-fun b!7063813 () Bool)

(declare-fun e!4246692 () Bool)

(declare-fun lt!2538923 () Option!16939)

(assert (=> b!7063813 (= e!4246692 (= (++!15709 (_1!37410 (get!23893 lt!2538923)) (_2!37410 (get!23893 lt!2538923))) s!7408))))

(declare-fun b!7063814 () Bool)

(declare-fun e!4246695 () Option!16939)

(assert (=> b!7063814 (= e!4246695 (Some!16938 (tuple2!68215 Nil!68221 s!7408)))))

(declare-fun b!7063815 () Bool)

(declare-fun res!2884345 () Bool)

(assert (=> b!7063815 (=> (not res!2884345) (not e!4246692))))

(assert (=> b!7063815 (= res!2884345 (matchZipper!3146 (set.insert (Context!13205 (tail!13760 (exprs!7102 (mapPost2!435 z1!570 lambda!422980 lt!2538695)))) (as set.empty (Set Context!13204))) (_1!37410 (get!23893 lt!2538923))))))

(declare-fun b!7063816 () Bool)

(declare-fun e!4246693 () Option!16939)

(assert (=> b!7063816 (= e!4246695 e!4246693)))

(declare-fun c!1316845 () Bool)

(assert (=> b!7063816 (= c!1316845 (is-Nil!68221 s!7408))))

(declare-fun b!7063817 () Bool)

(declare-fun res!2884342 () Bool)

(assert (=> b!7063817 (=> (not res!2884342) (not e!4246692))))

(assert (=> b!7063817 (= res!2884342 (matchZipper!3146 lt!2538690 (_2!37410 (get!23893 lt!2538923))))))

(declare-fun b!7063818 () Bool)

(declare-fun lt!2538924 () Unit!161892)

(declare-fun lt!2538925 () Unit!161892)

(assert (=> b!7063818 (= lt!2538924 lt!2538925)))

(assert (=> b!7063818 (= (++!15709 (++!15709 Nil!68221 (Cons!68221 (h!74669 s!7408) Nil!68221)) (t!382126 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2962 (List!68345 C!35482 List!68345 List!68345) Unit!161892)

(assert (=> b!7063818 (= lt!2538925 (lemmaMoveElementToOtherListKeepsConcatEq!2962 Nil!68221 (h!74669 s!7408) (t!382126 s!7408) s!7408))))

(assert (=> b!7063818 (= e!4246693 (findConcatSeparationZippers!455 (set.insert (Context!13205 (tail!13760 (exprs!7102 (mapPost2!435 z1!570 lambda!422980 lt!2538695)))) (as set.empty (Set Context!13204))) lt!2538690 (++!15709 Nil!68221 (Cons!68221 (h!74669 s!7408) Nil!68221)) (t!382126 s!7408) s!7408))))

(declare-fun b!7063819 () Bool)

(declare-fun e!4246691 () Bool)

(assert (=> b!7063819 (= e!4246691 (matchZipper!3146 lt!2538690 s!7408))))

(declare-fun b!7063820 () Bool)

(declare-fun e!4246694 () Bool)

(assert (=> b!7063820 (= e!4246694 (not (isDefined!13640 lt!2538923)))))

(declare-fun b!7063821 () Bool)

(assert (=> b!7063821 (= e!4246693 None!16938)))

(declare-fun d!2208463 () Bool)

(assert (=> d!2208463 e!4246694))

(declare-fun res!2884343 () Bool)

(assert (=> d!2208463 (=> res!2884343 e!4246694)))

(assert (=> d!2208463 (= res!2884343 e!4246692)))

(declare-fun res!2884344 () Bool)

(assert (=> d!2208463 (=> (not res!2884344) (not e!4246692))))

(assert (=> d!2208463 (= res!2884344 (isDefined!13640 lt!2538923))))

(assert (=> d!2208463 (= lt!2538923 e!4246695)))

(declare-fun c!1316846 () Bool)

(assert (=> d!2208463 (= c!1316846 e!4246691)))

(declare-fun res!2884341 () Bool)

(assert (=> d!2208463 (=> (not res!2884341) (not e!4246691))))

(assert (=> d!2208463 (= res!2884341 (matchZipper!3146 (set.insert (Context!13205 (tail!13760 (exprs!7102 (mapPost2!435 z1!570 lambda!422980 lt!2538695)))) (as set.empty (Set Context!13204))) Nil!68221))))

(assert (=> d!2208463 (= (++!15709 Nil!68221 s!7408) s!7408)))

(assert (=> d!2208463 (= (findConcatSeparationZippers!455 (set.insert (Context!13205 (tail!13760 (exprs!7102 (mapPost2!435 z1!570 lambda!422980 lt!2538695)))) (as set.empty (Set Context!13204))) lt!2538690 Nil!68221 s!7408 s!7408) lt!2538923)))

(assert (= (and d!2208463 res!2884341) b!7063819))

(assert (= (and d!2208463 c!1316846) b!7063814))

(assert (= (and d!2208463 (not c!1316846)) b!7063816))

(assert (= (and b!7063816 c!1316845) b!7063821))

(assert (= (and b!7063816 (not c!1316845)) b!7063818))

(assert (= (and d!2208463 res!2884344) b!7063815))

(assert (= (and b!7063815 res!2884345) b!7063817))

(assert (= (and b!7063817 res!2884342) b!7063813))

(assert (= (and d!2208463 (not res!2884343)) b!7063820))

(declare-fun m!7785586 () Bool)

(assert (=> b!7063819 m!7785586))

(declare-fun m!7785588 () Bool)

(assert (=> b!7063820 m!7785588))

(assert (=> d!2208463 m!7785588))

(assert (=> d!2208463 m!7785226))

(declare-fun m!7785590 () Bool)

(assert (=> d!2208463 m!7785590))

(declare-fun m!7785592 () Bool)

(assert (=> d!2208463 m!7785592))

(declare-fun m!7785594 () Bool)

(assert (=> b!7063813 m!7785594))

(declare-fun m!7785596 () Bool)

(assert (=> b!7063813 m!7785596))

(assert (=> b!7063815 m!7785594))

(assert (=> b!7063815 m!7785226))

(declare-fun m!7785598 () Bool)

(assert (=> b!7063815 m!7785598))

(declare-fun m!7785600 () Bool)

(assert (=> b!7063818 m!7785600))

(assert (=> b!7063818 m!7785600))

(declare-fun m!7785602 () Bool)

(assert (=> b!7063818 m!7785602))

(declare-fun m!7785604 () Bool)

(assert (=> b!7063818 m!7785604))

(assert (=> b!7063818 m!7785226))

(assert (=> b!7063818 m!7785600))

(declare-fun m!7785606 () Bool)

(assert (=> b!7063818 m!7785606))

(assert (=> b!7063817 m!7785594))

(declare-fun m!7785608 () Bool)

(assert (=> b!7063817 m!7785608))

(assert (=> b!7063684 d!2208463))

(declare-fun d!2208465 () Bool)

(declare-fun e!4246698 () Bool)

(assert (=> d!2208465 e!4246698))

(declare-fun res!2884348 () Bool)

(assert (=> d!2208465 (=> (not res!2884348) (not e!4246698))))

(declare-fun lt!2538928 () Context!13204)

(declare-fun dynLambda!27707 (Int Context!13204) Context!13204)

(assert (=> d!2208465 (= res!2884348 (= lt!2538695 (dynLambda!27707 lambda!422980 lt!2538928)))))

(declare-fun choose!53975 ((Set Context!13204) Int Context!13204) Context!13204)

(assert (=> d!2208465 (= lt!2538928 (choose!53975 z1!570 lambda!422980 lt!2538695))))

(assert (=> d!2208465 (set.member lt!2538695 (map!15942 z1!570 lambda!422980))))

(assert (=> d!2208465 (= (mapPost2!435 z1!570 lambda!422980 lt!2538695) lt!2538928)))

(declare-fun b!7063825 () Bool)

(assert (=> b!7063825 (= e!4246698 (set.member lt!2538928 z1!570))))

(assert (= (and d!2208465 res!2884348) b!7063825))

(declare-fun b_lambda!269409 () Bool)

(assert (=> (not b_lambda!269409) (not d!2208465)))

(declare-fun m!7785610 () Bool)

(assert (=> d!2208465 m!7785610))

(declare-fun m!7785612 () Bool)

(assert (=> d!2208465 m!7785612))

(declare-fun m!7785614 () Bool)

(assert (=> d!2208465 m!7785614))

(declare-fun m!7785616 () Bool)

(assert (=> d!2208465 m!7785616))

(declare-fun m!7785618 () Bool)

(assert (=> b!7063825 m!7785618))

(assert (=> b!7063684 d!2208465))

(declare-fun c!1316847 () Bool)

(declare-fun d!2208467 () Bool)

(assert (=> d!2208467 (= c!1316847 (isEmpty!39803 (_1!37410 (get!23893 (findConcatSeparationZippers!455 (set.insert (Context!13205 (tail!13760 (exprs!7102 (mapPost2!435 z1!570 lambda!422980 lt!2538695)))) (as set.empty (Set Context!13204))) lt!2538690 Nil!68221 s!7408 s!7408)))))))

(declare-fun e!4246699 () Bool)

(assert (=> d!2208467 (= (matchZipper!3146 (set.insert lt!2538686 (as set.empty (Set Context!13204))) (_1!37410 (get!23893 (findConcatSeparationZippers!455 (set.insert (Context!13205 (tail!13760 (exprs!7102 (mapPost2!435 z1!570 lambda!422980 lt!2538695)))) (as set.empty (Set Context!13204))) lt!2538690 Nil!68221 s!7408 s!7408)))) e!4246699)))

(declare-fun b!7063826 () Bool)

(assert (=> b!7063826 (= e!4246699 (nullableZipper!2676 (set.insert lt!2538686 (as set.empty (Set Context!13204)))))))

(declare-fun b!7063827 () Bool)

(assert (=> b!7063827 (= e!4246699 (matchZipper!3146 (derivationStepZipper!3056 (set.insert lt!2538686 (as set.empty (Set Context!13204))) (head!14382 (_1!37410 (get!23893 (findConcatSeparationZippers!455 (set.insert (Context!13205 (tail!13760 (exprs!7102 (mapPost2!435 z1!570 lambda!422980 lt!2538695)))) (as set.empty (Set Context!13204))) lt!2538690 Nil!68221 s!7408 s!7408))))) (tail!13761 (_1!37410 (get!23893 (findConcatSeparationZippers!455 (set.insert (Context!13205 (tail!13760 (exprs!7102 (mapPost2!435 z1!570 lambda!422980 lt!2538695)))) (as set.empty (Set Context!13204))) lt!2538690 Nil!68221 s!7408 s!7408))))))))

(assert (= (and d!2208467 c!1316847) b!7063826))

(assert (= (and d!2208467 (not c!1316847)) b!7063827))

(declare-fun m!7785620 () Bool)

(assert (=> d!2208467 m!7785620))

(assert (=> b!7063826 m!7785232))

(declare-fun m!7785622 () Bool)

(assert (=> b!7063826 m!7785622))

(declare-fun m!7785624 () Bool)

(assert (=> b!7063827 m!7785624))

(assert (=> b!7063827 m!7785232))

(assert (=> b!7063827 m!7785624))

(declare-fun m!7785626 () Bool)

(assert (=> b!7063827 m!7785626))

(declare-fun m!7785628 () Bool)

(assert (=> b!7063827 m!7785628))

(assert (=> b!7063827 m!7785626))

(assert (=> b!7063827 m!7785628))

(declare-fun m!7785630 () Bool)

(assert (=> b!7063827 m!7785630))

(assert (=> b!7063684 d!2208467))

(declare-fun d!2208469 () Bool)

(assert (=> d!2208469 (= (tail!13760 (exprs!7102 (mapPost2!435 z1!570 lambda!422980 lt!2538695))) (t!382125 (exprs!7102 (mapPost2!435 z1!570 lambda!422980 lt!2538695))))))

(assert (=> b!7063684 d!2208469))

(declare-fun d!2208471 () Bool)

(assert (=> d!2208471 (= (isEmpty!39803 (_1!37410 lt!2538657)) (is-Nil!68221 (_1!37410 lt!2538657)))))

(assert (=> b!7063684 d!2208471))

(declare-fun b!7063838 () Bool)

(declare-fun e!4246707 () (Set Context!13204))

(assert (=> b!7063838 (= e!4246707 (as set.empty (Set Context!13204)))))

(declare-fun b!7063839 () Bool)

(declare-fun e!4246708 () (Set Context!13204))

(assert (=> b!7063839 (= e!4246708 e!4246707)))

(declare-fun c!1316852 () Bool)

(assert (=> b!7063839 (= c!1316852 (is-Cons!68220 (exprs!7102 lt!2538686)))))

(declare-fun b!7063840 () Bool)

(declare-fun call!641865 () (Set Context!13204))

(assert (=> b!7063840 (= e!4246707 call!641865)))

(declare-fun b!7063841 () Bool)

(assert (=> b!7063841 (= e!4246708 (set.union call!641865 (derivationStepZipperUp!2190 (Context!13205 (t!382125 (exprs!7102 lt!2538686))) (h!74669 s!7408))))))

(declare-fun bm!641860 () Bool)

(assert (=> bm!641860 (= call!641865 (derivationStepZipperDown!2240 (h!74668 (exprs!7102 lt!2538686)) (Context!13205 (t!382125 (exprs!7102 lt!2538686))) (h!74669 s!7408)))))

(declare-fun d!2208473 () Bool)

(declare-fun c!1316853 () Bool)

(declare-fun e!4246706 () Bool)

(assert (=> d!2208473 (= c!1316853 e!4246706)))

(declare-fun res!2884351 () Bool)

(assert (=> d!2208473 (=> (not res!2884351) (not e!4246706))))

(assert (=> d!2208473 (= res!2884351 (is-Cons!68220 (exprs!7102 lt!2538686)))))

(assert (=> d!2208473 (= (derivationStepZipperUp!2190 lt!2538686 (h!74669 s!7408)) e!4246708)))

(declare-fun b!7063842 () Bool)

(assert (=> b!7063842 (= e!4246706 (nullable!7289 (h!74668 (exprs!7102 lt!2538686))))))

(assert (= (and d!2208473 res!2884351) b!7063842))

(assert (= (and d!2208473 c!1316853) b!7063841))

(assert (= (and d!2208473 (not c!1316853)) b!7063839))

(assert (= (and b!7063839 c!1316852) b!7063840))

(assert (= (and b!7063839 (not c!1316852)) b!7063838))

(assert (= (or b!7063841 b!7063840) bm!641860))

(declare-fun m!7785632 () Bool)

(assert (=> b!7063841 m!7785632))

(declare-fun m!7785634 () Bool)

(assert (=> bm!641860 m!7785634))

(assert (=> b!7063842 m!7785368))

(assert (=> b!7063682 d!2208473))

(declare-fun d!2208475 () Bool)

(declare-fun c!1316854 () Bool)

(assert (=> d!2208475 (= c!1316854 (isEmpty!39803 lt!2538660))))

(declare-fun e!4246709 () Bool)

(assert (=> d!2208475 (= (matchZipper!3146 (set.union lt!2538696 lt!2538668) lt!2538660) e!4246709)))

(declare-fun b!7063843 () Bool)

(assert (=> b!7063843 (= e!4246709 (nullableZipper!2676 (set.union lt!2538696 lt!2538668)))))

(declare-fun b!7063844 () Bool)

(assert (=> b!7063844 (= e!4246709 (matchZipper!3146 (derivationStepZipper!3056 (set.union lt!2538696 lt!2538668) (head!14382 lt!2538660)) (tail!13761 lt!2538660)))))

(assert (= (and d!2208475 c!1316854) b!7063843))

(assert (= (and d!2208475 (not c!1316854)) b!7063844))

(declare-fun m!7785636 () Bool)

(assert (=> d!2208475 m!7785636))

(declare-fun m!7785638 () Bool)

(assert (=> b!7063843 m!7785638))

(declare-fun m!7785640 () Bool)

(assert (=> b!7063844 m!7785640))

(assert (=> b!7063844 m!7785640))

(declare-fun m!7785642 () Bool)

(assert (=> b!7063844 m!7785642))

(declare-fun m!7785644 () Bool)

(assert (=> b!7063844 m!7785644))

(assert (=> b!7063844 m!7785642))

(assert (=> b!7063844 m!7785644))

(declare-fun m!7785646 () Bool)

(assert (=> b!7063844 m!7785646))

(assert (=> b!7063682 d!2208475))

(declare-fun d!2208477 () Bool)

(declare-fun choose!53976 ((Set Context!13204) Int) (Set Context!13204))

(assert (=> d!2208477 (= (flatMap!2532 lt!2538648 lambda!422982) (choose!53976 lt!2538648 lambda!422982))))

(declare-fun bs!1879393 () Bool)

(assert (= bs!1879393 d!2208477))

(declare-fun m!7785648 () Bool)

(assert (=> bs!1879393 m!7785648))

(assert (=> b!7063682 d!2208477))

(declare-fun d!2208479 () Bool)

(declare-fun dynLambda!27708 (Int Context!13204) (Set Context!13204))

(assert (=> d!2208479 (= (flatMap!2532 lt!2538680 lambda!422982) (dynLambda!27708 lambda!422982 lt!2538672))))

(declare-fun lt!2538931 () Unit!161892)

(declare-fun choose!53977 ((Set Context!13204) Context!13204 Int) Unit!161892)

(assert (=> d!2208479 (= lt!2538931 (choose!53977 lt!2538680 lt!2538672 lambda!422982))))

(assert (=> d!2208479 (= lt!2538680 (set.insert lt!2538672 (as set.empty (Set Context!13204))))))

(assert (=> d!2208479 (= (lemmaFlatMapOnSingletonSet!2041 lt!2538680 lt!2538672 lambda!422982) lt!2538931)))

(declare-fun b_lambda!269411 () Bool)

(assert (=> (not b_lambda!269411) (not d!2208479)))

(declare-fun bs!1879394 () Bool)

(assert (= bs!1879394 d!2208479))

(assert (=> bs!1879394 m!7785314))

(declare-fun m!7785650 () Bool)

(assert (=> bs!1879394 m!7785650))

(declare-fun m!7785652 () Bool)

(assert (=> bs!1879394 m!7785652))

(assert (=> bs!1879394 m!7785340))

(assert (=> b!7063682 d!2208479))

(declare-fun d!2208481 () Bool)

(assert (=> d!2208481 (= (tail!13761 (_1!37410 lt!2538657)) (t!382126 (_1!37410 lt!2538657)))))

(assert (=> b!7063682 d!2208481))

(declare-fun d!2208483 () Bool)

(declare-fun c!1316855 () Bool)

(assert (=> d!2208483 (= c!1316855 (isEmpty!39803 lt!2538660))))

(declare-fun e!4246710 () Bool)

(assert (=> d!2208483 (= (matchZipper!3146 lt!2538696 lt!2538660) e!4246710)))

(declare-fun b!7063845 () Bool)

(assert (=> b!7063845 (= e!4246710 (nullableZipper!2676 lt!2538696))))

(declare-fun b!7063846 () Bool)

(assert (=> b!7063846 (= e!4246710 (matchZipper!3146 (derivationStepZipper!3056 lt!2538696 (head!14382 lt!2538660)) (tail!13761 lt!2538660)))))

(assert (= (and d!2208483 c!1316855) b!7063845))

(assert (= (and d!2208483 (not c!1316855)) b!7063846))

(assert (=> d!2208483 m!7785636))

(declare-fun m!7785654 () Bool)

(assert (=> b!7063845 m!7785654))

(assert (=> b!7063846 m!7785640))

(assert (=> b!7063846 m!7785640))

(declare-fun m!7785656 () Bool)

(assert (=> b!7063846 m!7785656))

(assert (=> b!7063846 m!7785644))

(assert (=> b!7063846 m!7785656))

(assert (=> b!7063846 m!7785644))

(declare-fun m!7785658 () Bool)

(assert (=> b!7063846 m!7785658))

(assert (=> b!7063682 d!2208483))

(declare-fun e!4246713 () Bool)

(declare-fun d!2208485 () Bool)

(assert (=> d!2208485 (= (matchZipper!3146 (set.union lt!2538696 lt!2538668) lt!2538660) e!4246713)))

(declare-fun res!2884354 () Bool)

(assert (=> d!2208485 (=> res!2884354 e!4246713)))

(assert (=> d!2208485 (= res!2884354 (matchZipper!3146 lt!2538696 lt!2538660))))

(declare-fun lt!2538934 () Unit!161892)

(declare-fun choose!53978 ((Set Context!13204) (Set Context!13204) List!68345) Unit!161892)

(assert (=> d!2208485 (= lt!2538934 (choose!53978 lt!2538696 lt!2538668 lt!2538660))))

(assert (=> d!2208485 (= (lemmaZipperConcatMatchesSameAsBothZippers!1619 lt!2538696 lt!2538668 lt!2538660) lt!2538934)))

(declare-fun b!7063849 () Bool)

(assert (=> b!7063849 (= e!4246713 (matchZipper!3146 lt!2538668 lt!2538660))))

(assert (= (and d!2208485 (not res!2884354)) b!7063849))

(assert (=> d!2208485 m!7785300))

(assert (=> d!2208485 m!7785310))

(declare-fun m!7785660 () Bool)

(assert (=> d!2208485 m!7785660))

(assert (=> b!7063849 m!7785242))

(assert (=> b!7063682 d!2208485))

(declare-fun b!7063850 () Bool)

(declare-fun e!4246715 () (Set Context!13204))

(assert (=> b!7063850 (= e!4246715 (as set.empty (Set Context!13204)))))

(declare-fun b!7063851 () Bool)

(declare-fun e!4246716 () (Set Context!13204))

(assert (=> b!7063851 (= e!4246716 e!4246715)))

(declare-fun c!1316856 () Bool)

(assert (=> b!7063851 (= c!1316856 (is-Cons!68220 (exprs!7102 lt!2538672)))))

(declare-fun b!7063852 () Bool)

(declare-fun call!641866 () (Set Context!13204))

(assert (=> b!7063852 (= e!4246715 call!641866)))

(declare-fun b!7063853 () Bool)

(assert (=> b!7063853 (= e!4246716 (set.union call!641866 (derivationStepZipperUp!2190 (Context!13205 (t!382125 (exprs!7102 lt!2538672))) (h!74669 s!7408))))))

(declare-fun bm!641861 () Bool)

(assert (=> bm!641861 (= call!641866 (derivationStepZipperDown!2240 (h!74668 (exprs!7102 lt!2538672)) (Context!13205 (t!382125 (exprs!7102 lt!2538672))) (h!74669 s!7408)))))

(declare-fun d!2208487 () Bool)

(declare-fun c!1316857 () Bool)

(declare-fun e!4246714 () Bool)

(assert (=> d!2208487 (= c!1316857 e!4246714)))

(declare-fun res!2884355 () Bool)

(assert (=> d!2208487 (=> (not res!2884355) (not e!4246714))))

(assert (=> d!2208487 (= res!2884355 (is-Cons!68220 (exprs!7102 lt!2538672)))))

(assert (=> d!2208487 (= (derivationStepZipperUp!2190 lt!2538672 (h!74669 s!7408)) e!4246716)))

(declare-fun b!7063854 () Bool)

(assert (=> b!7063854 (= e!4246714 (nullable!7289 (h!74668 (exprs!7102 lt!2538672))))))

(assert (= (and d!2208487 res!2884355) b!7063854))

(assert (= (and d!2208487 c!1316857) b!7063853))

(assert (= (and d!2208487 (not c!1316857)) b!7063851))

(assert (= (and b!7063851 c!1316856) b!7063852))

(assert (= (and b!7063851 (not c!1316856)) b!7063850))

(assert (= (or b!7063853 b!7063852) bm!641861))

(declare-fun m!7785662 () Bool)

(assert (=> b!7063853 m!7785662))

(declare-fun m!7785664 () Bool)

(assert (=> bm!641861 m!7785664))

(declare-fun m!7785666 () Bool)

(assert (=> b!7063854 m!7785666))

(assert (=> b!7063682 d!2208487))

(declare-fun d!2208489 () Bool)

(assert (=> d!2208489 (= (flatMap!2532 lt!2538680 lambda!422982) (choose!53976 lt!2538680 lambda!422982))))

(declare-fun bs!1879395 () Bool)

(assert (= bs!1879395 d!2208489))

(declare-fun m!7785668 () Bool)

(assert (=> bs!1879395 m!7785668))

(assert (=> b!7063682 d!2208489))

(declare-fun d!2208491 () Bool)

(assert (=> d!2208491 (= (flatMap!2532 lt!2538648 lambda!422982) (dynLambda!27708 lambda!422982 lt!2538686))))

(declare-fun lt!2538935 () Unit!161892)

(assert (=> d!2208491 (= lt!2538935 (choose!53977 lt!2538648 lt!2538686 lambda!422982))))

(assert (=> d!2208491 (= lt!2538648 (set.insert lt!2538686 (as set.empty (Set Context!13204))))))

(assert (=> d!2208491 (= (lemmaFlatMapOnSingletonSet!2041 lt!2538648 lt!2538686 lambda!422982) lt!2538935)))

(declare-fun b_lambda!269413 () Bool)

(assert (=> (not b_lambda!269413) (not d!2208491)))

(declare-fun bs!1879396 () Bool)

(assert (= bs!1879396 d!2208491))

(assert (=> bs!1879396 m!7785306))

(declare-fun m!7785670 () Bool)

(assert (=> bs!1879396 m!7785670))

(declare-fun m!7785672 () Bool)

(assert (=> bs!1879396 m!7785672))

(assert (=> bs!1879396 m!7785232))

(assert (=> b!7063682 d!2208491))

(declare-fun b!7063877 () Bool)

(declare-fun e!4246730 () (Set Context!13204))

(declare-fun call!641883 () (Set Context!13204))

(declare-fun call!641884 () (Set Context!13204))

(assert (=> b!7063877 (= e!4246730 (set.union call!641883 call!641884))))

(declare-fun d!2208493 () Bool)

(declare-fun c!1316870 () Bool)

(assert (=> d!2208493 (= c!1316870 (and (is-ElementMatch!17606 (h!74668 (exprs!7102 lt!2538686))) (= (c!1316807 (h!74668 (exprs!7102 lt!2538686))) (h!74669 s!7408))))))

(declare-fun e!4246732 () (Set Context!13204))

(assert (=> d!2208493 (= (derivationStepZipperDown!2240 (h!74668 (exprs!7102 lt!2538686)) lt!2538672 (h!74669 s!7408)) e!4246732)))

(declare-fun b!7063878 () Bool)

(declare-fun e!4246733 () (Set Context!13204))

(declare-fun call!641879 () (Set Context!13204))

(assert (=> b!7063878 (= e!4246733 call!641879)))

(declare-fun c!1316871 () Bool)

(declare-fun bm!641874 () Bool)

(declare-fun call!641881 () List!68344)

(declare-fun c!1316872 () Bool)

(declare-fun c!1316869 () Bool)

(declare-fun call!641882 () (Set Context!13204))

(assert (=> bm!641874 (= call!641882 (derivationStepZipperDown!2240 (ite c!1316869 (regTwo!35725 (h!74668 (exprs!7102 lt!2538686))) (ite c!1316872 (regTwo!35724 (h!74668 (exprs!7102 lt!2538686))) (ite c!1316871 (regOne!35724 (h!74668 (exprs!7102 lt!2538686))) (reg!17935 (h!74668 (exprs!7102 lt!2538686)))))) (ite (or c!1316869 c!1316872) lt!2538672 (Context!13205 call!641881)) (h!74669 s!7408)))))

(declare-fun b!7063879 () Bool)

(declare-fun e!4246729 () (Set Context!13204))

(assert (=> b!7063879 (= e!4246732 e!4246729)))

(assert (=> b!7063879 (= c!1316869 (is-Union!17606 (h!74668 (exprs!7102 lt!2538686))))))

(declare-fun bm!641875 () Bool)

(assert (=> bm!641875 (= call!641879 call!641884)))

(declare-fun bm!641876 () Bool)

(declare-fun call!641880 () List!68344)

(assert (=> bm!641876 (= call!641881 call!641880)))

(declare-fun b!7063880 () Bool)

(declare-fun e!4246731 () Bool)

(assert (=> b!7063880 (= e!4246731 (nullable!7289 (regOne!35724 (h!74668 (exprs!7102 lt!2538686)))))))

(declare-fun bm!641877 () Bool)

(assert (=> bm!641877 (= call!641883 (derivationStepZipperDown!2240 (ite c!1316869 (regOne!35725 (h!74668 (exprs!7102 lt!2538686))) (regOne!35724 (h!74668 (exprs!7102 lt!2538686)))) (ite c!1316869 lt!2538672 (Context!13205 call!641880)) (h!74669 s!7408)))))

(declare-fun b!7063881 () Bool)

(assert (=> b!7063881 (= e!4246729 (set.union call!641883 call!641882))))

(declare-fun b!7063882 () Bool)

(assert (=> b!7063882 (= c!1316872 e!4246731)))

(declare-fun res!2884358 () Bool)

(assert (=> b!7063882 (=> (not res!2884358) (not e!4246731))))

(assert (=> b!7063882 (= res!2884358 (is-Concat!26451 (h!74668 (exprs!7102 lt!2538686))))))

(assert (=> b!7063882 (= e!4246729 e!4246730)))

(declare-fun b!7063883 () Bool)

(assert (=> b!7063883 (= e!4246732 (set.insert lt!2538672 (as set.empty (Set Context!13204))))))

(declare-fun b!7063884 () Bool)

(declare-fun c!1316868 () Bool)

(assert (=> b!7063884 (= c!1316868 (is-Star!17606 (h!74668 (exprs!7102 lt!2538686))))))

(declare-fun e!4246734 () (Set Context!13204))

(assert (=> b!7063884 (= e!4246733 e!4246734)))

(declare-fun bm!641878 () Bool)

(declare-fun $colon$colon!2637 (List!68344 Regex!17606) List!68344)

(assert (=> bm!641878 (= call!641880 ($colon$colon!2637 (exprs!7102 lt!2538672) (ite (or c!1316872 c!1316871) (regTwo!35724 (h!74668 (exprs!7102 lt!2538686))) (h!74668 (exprs!7102 lt!2538686)))))))

(declare-fun b!7063885 () Bool)

(assert (=> b!7063885 (= e!4246734 (as set.empty (Set Context!13204)))))

(declare-fun b!7063886 () Bool)

(assert (=> b!7063886 (= e!4246734 call!641879)))

(declare-fun bm!641879 () Bool)

(assert (=> bm!641879 (= call!641884 call!641882)))

(declare-fun b!7063887 () Bool)

(assert (=> b!7063887 (= e!4246730 e!4246733)))

(assert (=> b!7063887 (= c!1316871 (is-Concat!26451 (h!74668 (exprs!7102 lt!2538686))))))

(assert (= (and d!2208493 c!1316870) b!7063883))

(assert (= (and d!2208493 (not c!1316870)) b!7063879))

(assert (= (and b!7063879 c!1316869) b!7063881))

(assert (= (and b!7063879 (not c!1316869)) b!7063882))

(assert (= (and b!7063882 res!2884358) b!7063880))

(assert (= (and b!7063882 c!1316872) b!7063877))

(assert (= (and b!7063882 (not c!1316872)) b!7063887))

(assert (= (and b!7063887 c!1316871) b!7063878))

(assert (= (and b!7063887 (not c!1316871)) b!7063884))

(assert (= (and b!7063884 c!1316868) b!7063886))

(assert (= (and b!7063884 (not c!1316868)) b!7063885))

(assert (= (or b!7063878 b!7063886) bm!641876))

(assert (= (or b!7063878 b!7063886) bm!641875))

(assert (= (or b!7063877 bm!641875) bm!641879))

(assert (= (or b!7063877 bm!641876) bm!641878))

(assert (= (or b!7063881 b!7063877) bm!641877))

(assert (= (or b!7063881 bm!641879) bm!641874))

(assert (=> b!7063883 m!7785340))

(declare-fun m!7785674 () Bool)

(assert (=> bm!641877 m!7785674))

(declare-fun m!7785676 () Bool)

(assert (=> bm!641878 m!7785676))

(declare-fun m!7785678 () Bool)

(assert (=> b!7063880 m!7785678))

(declare-fun m!7785680 () Bool)

(assert (=> bm!641874 m!7785680))

(assert (=> b!7063682 d!2208493))

(declare-fun d!2208495 () Bool)

(declare-fun c!1316873 () Bool)

(assert (=> d!2208495 (= c!1316873 (isEmpty!39803 s!7408))))

(declare-fun e!4246735 () Bool)

(assert (=> d!2208495 (= (matchZipper!3146 lt!2538678 s!7408) e!4246735)))

(declare-fun b!7063888 () Bool)

(assert (=> b!7063888 (= e!4246735 (nullableZipper!2676 lt!2538678))))

(declare-fun b!7063889 () Bool)

(assert (=> b!7063889 (= e!4246735 (matchZipper!3146 (derivationStepZipper!3056 lt!2538678 (head!14382 s!7408)) (tail!13761 s!7408)))))

(assert (= (and d!2208495 c!1316873) b!7063888))

(assert (= (and d!2208495 (not c!1316873)) b!7063889))

(declare-fun m!7785682 () Bool)

(assert (=> d!2208495 m!7785682))

(declare-fun m!7785684 () Bool)

(assert (=> b!7063888 m!7785684))

(declare-fun m!7785686 () Bool)

(assert (=> b!7063889 m!7785686))

(assert (=> b!7063889 m!7785686))

(declare-fun m!7785688 () Bool)

(assert (=> b!7063889 m!7785688))

(declare-fun m!7785690 () Bool)

(assert (=> b!7063889 m!7785690))

(assert (=> b!7063889 m!7785688))

(assert (=> b!7063889 m!7785690))

(declare-fun m!7785692 () Bool)

(assert (=> b!7063889 m!7785692))

(assert (=> b!7063665 d!2208495))

(declare-fun d!2208497 () Bool)

(assert (=> d!2208497 (forall!16552 (++!15710 lt!2538656 (exprs!7102 ct2!306)) lambda!422981)))

(declare-fun lt!2538936 () Unit!161892)

(assert (=> d!2208497 (= lt!2538936 (choose!53972 lt!2538656 (exprs!7102 ct2!306) lambda!422981))))

(assert (=> d!2208497 (forall!16552 lt!2538656 lambda!422981)))

(assert (=> d!2208497 (= (lemmaConcatPreservesForall!917 lt!2538656 (exprs!7102 ct2!306) lambda!422981) lt!2538936)))

(declare-fun bs!1879397 () Bool)

(assert (= bs!1879397 d!2208497))

(assert (=> bs!1879397 m!7785346))

(assert (=> bs!1879397 m!7785346))

(declare-fun m!7785694 () Bool)

(assert (=> bs!1879397 m!7785694))

(declare-fun m!7785696 () Bool)

(assert (=> bs!1879397 m!7785696))

(declare-fun m!7785698 () Bool)

(assert (=> bs!1879397 m!7785698))

(assert (=> b!7063665 d!2208497))

(declare-fun b!7063890 () Bool)

(declare-fun e!4246737 () (Set Context!13204))

(assert (=> b!7063890 (= e!4246737 (as set.empty (Set Context!13204)))))

(declare-fun b!7063891 () Bool)

(declare-fun e!4246738 () (Set Context!13204))

(assert (=> b!7063891 (= e!4246738 e!4246737)))

(declare-fun c!1316874 () Bool)

(assert (=> b!7063891 (= c!1316874 (is-Cons!68220 (exprs!7102 lt!2538642)))))

(declare-fun b!7063892 () Bool)

(declare-fun call!641885 () (Set Context!13204))

(assert (=> b!7063892 (= e!4246737 call!641885)))

(declare-fun b!7063893 () Bool)

(assert (=> b!7063893 (= e!4246738 (set.union call!641885 (derivationStepZipperUp!2190 (Context!13205 (t!382125 (exprs!7102 lt!2538642))) (h!74669 s!7408))))))

(declare-fun bm!641880 () Bool)

(assert (=> bm!641880 (= call!641885 (derivationStepZipperDown!2240 (h!74668 (exprs!7102 lt!2538642)) (Context!13205 (t!382125 (exprs!7102 lt!2538642))) (h!74669 s!7408)))))

(declare-fun d!2208499 () Bool)

(declare-fun c!1316875 () Bool)

(declare-fun e!4246736 () Bool)

(assert (=> d!2208499 (= c!1316875 e!4246736)))

(declare-fun res!2884359 () Bool)

(assert (=> d!2208499 (=> (not res!2884359) (not e!4246736))))

(assert (=> d!2208499 (= res!2884359 (is-Cons!68220 (exprs!7102 lt!2538642)))))

(assert (=> d!2208499 (= (derivationStepZipperUp!2190 lt!2538642 (h!74669 s!7408)) e!4246738)))

(declare-fun b!7063894 () Bool)

(assert (=> b!7063894 (= e!4246736 (nullable!7289 (h!74668 (exprs!7102 lt!2538642))))))

(assert (= (and d!2208499 res!2884359) b!7063894))

(assert (= (and d!2208499 c!1316875) b!7063893))

(assert (= (and d!2208499 (not c!1316875)) b!7063891))

(assert (= (and b!7063891 c!1316874) b!7063892))

(assert (= (and b!7063891 (not c!1316874)) b!7063890))

(assert (= (or b!7063893 b!7063892) bm!641880))

(declare-fun m!7785700 () Bool)

(assert (=> b!7063893 m!7785700))

(declare-fun m!7785702 () Bool)

(assert (=> bm!641880 m!7785702))

(declare-fun m!7785704 () Bool)

(assert (=> b!7063894 m!7785704))

(assert (=> b!7063683 d!2208499))

(declare-fun d!2208501 () Bool)

(assert (=> d!2208501 (= (flatMap!2532 lt!2538694 lambda!422982) (dynLambda!27708 lambda!422982 lt!2538642))))

(declare-fun lt!2538937 () Unit!161892)

(assert (=> d!2208501 (= lt!2538937 (choose!53977 lt!2538694 lt!2538642 lambda!422982))))

(assert (=> d!2208501 (= lt!2538694 (set.insert lt!2538642 (as set.empty (Set Context!13204))))))

(assert (=> d!2208501 (= (lemmaFlatMapOnSingletonSet!2041 lt!2538694 lt!2538642 lambda!422982) lt!2538937)))

(declare-fun b_lambda!269415 () Bool)

(assert (=> (not b_lambda!269415) (not d!2208501)))

(declare-fun bs!1879398 () Bool)

(assert (= bs!1879398 d!2208501))

(assert (=> bs!1879398 m!7785322))

(declare-fun m!7785706 () Bool)

(assert (=> bs!1879398 m!7785706))

(declare-fun m!7785708 () Bool)

(assert (=> bs!1879398 m!7785708))

(assert (=> bs!1879398 m!7785258))

(assert (=> b!7063683 d!2208501))

(declare-fun bs!1879399 () Bool)

(declare-fun d!2208503 () Bool)

(assert (= bs!1879399 (and d!2208503 b!7063683)))

(declare-fun lambda!423064 () Int)

(assert (=> bs!1879399 (= lambda!423064 lambda!422982)))

(assert (=> d!2208503 true))

(assert (=> d!2208503 (= (derivationStepZipper!3056 lt!2538694 (h!74669 s!7408)) (flatMap!2532 lt!2538694 lambda!423064))))

(declare-fun bs!1879400 () Bool)

(assert (= bs!1879400 d!2208503))

(declare-fun m!7785710 () Bool)

(assert (=> bs!1879400 m!7785710))

(assert (=> b!7063683 d!2208503))

(assert (=> b!7063683 d!2208447))

(declare-fun d!2208505 () Bool)

(assert (=> d!2208505 (= (flatMap!2532 lt!2538694 lambda!422982) (choose!53976 lt!2538694 lambda!422982))))

(declare-fun bs!1879401 () Bool)

(assert (= bs!1879401 d!2208505))

(declare-fun m!7785712 () Bool)

(assert (=> bs!1879401 m!7785712))

(assert (=> b!7063683 d!2208505))

(declare-fun d!2208507 () Bool)

(declare-fun nullableFct!2791 (Regex!17606) Bool)

(assert (=> d!2208507 (= (nullable!7289 (h!74668 (exprs!7102 lt!2538686))) (nullableFct!2791 (h!74668 (exprs!7102 lt!2538686))))))

(declare-fun bs!1879402 () Bool)

(assert (= bs!1879402 d!2208507))

(declare-fun m!7785714 () Bool)

(assert (=> bs!1879402 m!7785714))

(assert (=> b!7063672 d!2208507))

(declare-fun d!2208509 () Bool)

(assert (=> d!2208509 (= (tail!13760 (exprs!7102 lt!2538686)) (t!382125 (exprs!7102 lt!2538686)))))

(assert (=> b!7063672 d!2208509))

(declare-fun d!2208511 () Bool)

(declare-fun c!1316878 () Bool)

(assert (=> d!2208511 (= c!1316878 (isEmpty!39803 (t!382126 s!7408)))))

(declare-fun e!4246739 () Bool)

(assert (=> d!2208511 (= (matchZipper!3146 lt!2538687 (t!382126 s!7408)) e!4246739)))

(declare-fun b!7063897 () Bool)

(assert (=> b!7063897 (= e!4246739 (nullableZipper!2676 lt!2538687))))

(declare-fun b!7063898 () Bool)

(assert (=> b!7063898 (= e!4246739 (matchZipper!3146 (derivationStepZipper!3056 lt!2538687 (head!14382 (t!382126 s!7408))) (tail!13761 (t!382126 s!7408))))))

(assert (= (and d!2208511 c!1316878) b!7063897))

(assert (= (and d!2208511 (not c!1316878)) b!7063898))

(declare-fun m!7785716 () Bool)

(assert (=> d!2208511 m!7785716))

(declare-fun m!7785718 () Bool)

(assert (=> b!7063897 m!7785718))

(declare-fun m!7785720 () Bool)

(assert (=> b!7063898 m!7785720))

(assert (=> b!7063898 m!7785720))

(declare-fun m!7785722 () Bool)

(assert (=> b!7063898 m!7785722))

(declare-fun m!7785724 () Bool)

(assert (=> b!7063898 m!7785724))

(assert (=> b!7063898 m!7785722))

(assert (=> b!7063898 m!7785724))

(declare-fun m!7785726 () Bool)

(assert (=> b!7063898 m!7785726))

(assert (=> b!7063673 d!2208511))

(declare-fun d!2208513 () Bool)

(assert (=> d!2208513 (= (isEmpty!39802 (exprs!7102 lt!2538686)) (is-Nil!68220 (exprs!7102 lt!2538686)))))

(assert (=> b!7063671 d!2208513))

(declare-fun d!2208515 () Bool)

(declare-fun c!1316879 () Bool)

(assert (=> d!2208515 (= c!1316879 (isEmpty!39803 lt!2538660))))

(declare-fun e!4246740 () Bool)

(assert (=> d!2208515 (= (matchZipper!3146 lt!2538668 lt!2538660) e!4246740)))

(declare-fun b!7063899 () Bool)

(assert (=> b!7063899 (= e!4246740 (nullableZipper!2676 lt!2538668))))

(declare-fun b!7063900 () Bool)

(assert (=> b!7063900 (= e!4246740 (matchZipper!3146 (derivationStepZipper!3056 lt!2538668 (head!14382 lt!2538660)) (tail!13761 lt!2538660)))))

(assert (= (and d!2208515 c!1316879) b!7063899))

(assert (= (and d!2208515 (not c!1316879)) b!7063900))

(assert (=> d!2208515 m!7785636))

(declare-fun m!7785728 () Bool)

(assert (=> b!7063899 m!7785728))

(assert (=> b!7063900 m!7785640))

(assert (=> b!7063900 m!7785640))

(declare-fun m!7785730 () Bool)

(assert (=> b!7063900 m!7785730))

(assert (=> b!7063900 m!7785644))

(assert (=> b!7063900 m!7785730))

(assert (=> b!7063900 m!7785644))

(declare-fun m!7785732 () Bool)

(assert (=> b!7063900 m!7785732))

(assert (=> b!7063669 d!2208515))

(declare-fun d!2208517 () Bool)

(declare-fun isEmpty!39806 (Option!16939) Bool)

(assert (=> d!2208517 (= (isDefined!13640 call!641853) (not (isEmpty!39806 call!641853)))))

(declare-fun bs!1879403 () Bool)

(assert (= bs!1879403 d!2208517))

(declare-fun m!7785734 () Bool)

(assert (=> bs!1879403 m!7785734))

(assert (=> bm!641847 d!2208517))

(declare-fun b!7063911 () Bool)

(declare-fun res!2884365 () Bool)

(declare-fun e!4246746 () Bool)

(assert (=> b!7063911 (=> (not res!2884365) (not e!4246746))))

(declare-fun lt!2538940 () List!68345)

(declare-fun size!41177 (List!68345) Int)

(assert (=> b!7063911 (= res!2884365 (= (size!41177 lt!2538940) (+ (size!41177 (_1!37410 lt!2538657)) (size!41177 (_2!37410 lt!2538657)))))))

(declare-fun b!7063910 () Bool)

(declare-fun e!4246745 () List!68345)

(assert (=> b!7063910 (= e!4246745 (Cons!68221 (h!74669 (_1!37410 lt!2538657)) (++!15709 (t!382126 (_1!37410 lt!2538657)) (_2!37410 lt!2538657))))))

(declare-fun b!7063909 () Bool)

(assert (=> b!7063909 (= e!4246745 (_2!37410 lt!2538657))))

(declare-fun b!7063912 () Bool)

(assert (=> b!7063912 (= e!4246746 (or (not (= (_2!37410 lt!2538657) Nil!68221)) (= lt!2538940 (_1!37410 lt!2538657))))))

(declare-fun d!2208519 () Bool)

(assert (=> d!2208519 e!4246746))

(declare-fun res!2884364 () Bool)

(assert (=> d!2208519 (=> (not res!2884364) (not e!4246746))))

(declare-fun content!13726 (List!68345) (Set C!35482))

(assert (=> d!2208519 (= res!2884364 (= (content!13726 lt!2538940) (set.union (content!13726 (_1!37410 lt!2538657)) (content!13726 (_2!37410 lt!2538657)))))))

(assert (=> d!2208519 (= lt!2538940 e!4246745)))

(declare-fun c!1316882 () Bool)

(assert (=> d!2208519 (= c!1316882 (is-Nil!68221 (_1!37410 lt!2538657)))))

(assert (=> d!2208519 (= (++!15709 (_1!37410 lt!2538657) (_2!37410 lt!2538657)) lt!2538940)))

(assert (= (and d!2208519 c!1316882) b!7063909))

(assert (= (and d!2208519 (not c!1316882)) b!7063910))

(assert (= (and d!2208519 res!2884364) b!7063911))

(assert (= (and b!7063911 res!2884365) b!7063912))

(declare-fun m!7785736 () Bool)

(assert (=> b!7063911 m!7785736))

(declare-fun m!7785738 () Bool)

(assert (=> b!7063911 m!7785738))

(declare-fun m!7785740 () Bool)

(assert (=> b!7063911 m!7785740))

(declare-fun m!7785742 () Bool)

(assert (=> b!7063910 m!7785742))

(declare-fun m!7785744 () Bool)

(assert (=> d!2208519 m!7785744))

(declare-fun m!7785746 () Bool)

(assert (=> d!2208519 m!7785746))

(declare-fun m!7785748 () Bool)

(assert (=> d!2208519 m!7785748))

(assert (=> b!7063659 d!2208519))

(declare-fun d!2208521 () Bool)

(declare-fun c!1316883 () Bool)

(assert (=> d!2208521 (= c!1316883 (isEmpty!39803 s!7408))))

(declare-fun e!4246747 () Bool)

(assert (=> d!2208521 (= (matchZipper!3146 lt!2538685 s!7408) e!4246747)))

(declare-fun b!7063913 () Bool)

(assert (=> b!7063913 (= e!4246747 (nullableZipper!2676 lt!2538685))))

(declare-fun b!7063914 () Bool)

(assert (=> b!7063914 (= e!4246747 (matchZipper!3146 (derivationStepZipper!3056 lt!2538685 (head!14382 s!7408)) (tail!13761 s!7408)))))

(assert (= (and d!2208521 c!1316883) b!7063913))

(assert (= (and d!2208521 (not c!1316883)) b!7063914))

(assert (=> d!2208521 m!7785682))

(declare-fun m!7785750 () Bool)

(assert (=> b!7063913 m!7785750))

(assert (=> b!7063914 m!7785686))

(assert (=> b!7063914 m!7785686))

(declare-fun m!7785752 () Bool)

(assert (=> b!7063914 m!7785752))

(assert (=> b!7063914 m!7785690))

(assert (=> b!7063914 m!7785752))

(assert (=> b!7063914 m!7785690))

(declare-fun m!7785754 () Bool)

(assert (=> b!7063914 m!7785754))

(assert (=> start!685498 d!2208521))

(declare-fun bs!1879404 () Bool)

(declare-fun d!2208523 () Bool)

(assert (= bs!1879404 (and d!2208523 b!7063661)))

(declare-fun lambda!423069 () Int)

(assert (=> bs!1879404 (= lambda!423069 lambda!422980)))

(assert (=> d!2208523 true))

(assert (=> d!2208523 (= (appendTo!727 z1!570 ct2!306) (map!15942 z1!570 lambda!423069))))

(declare-fun bs!1879405 () Bool)

(assert (= bs!1879405 d!2208523))

(declare-fun m!7785756 () Bool)

(assert (=> bs!1879405 m!7785756))

(assert (=> start!685498 d!2208523))

(declare-fun bs!1879406 () Bool)

(declare-fun d!2208525 () Bool)

(assert (= bs!1879406 (and d!2208525 b!7063661)))

(declare-fun lambda!423070 () Int)

(assert (=> bs!1879406 (= lambda!423070 lambda!422981)))

(declare-fun bs!1879407 () Bool)

(assert (= bs!1879407 (and d!2208525 d!2208445)))

(assert (=> bs!1879407 (= lambda!423070 lambda!423061)))

(assert (=> d!2208525 (= (inv!86875 ct2!306) (forall!16552 (exprs!7102 ct2!306) lambda!423070))))

(declare-fun bs!1879408 () Bool)

(assert (= bs!1879408 d!2208525))

(declare-fun m!7785758 () Bool)

(assert (=> bs!1879408 m!7785758))

(assert (=> start!685498 d!2208525))

(assert (=> b!7063660 d!2208511))

(assert (=> b!7063660 d!2208497))

(declare-fun b!7063915 () Bool)

(declare-fun e!4246749 () Bool)

(declare-fun lt!2538943 () Option!16939)

(assert (=> b!7063915 (= e!4246749 (= (++!15709 (_1!37410 (get!23893 lt!2538943)) (_2!37410 (get!23893 lt!2538943))) s!7408))))

(declare-fun b!7063916 () Bool)

(declare-fun e!4246752 () Option!16939)

(assert (=> b!7063916 (= e!4246752 (Some!16938 (tuple2!68215 Nil!68221 s!7408)))))

(declare-fun b!7063917 () Bool)

(declare-fun res!2884370 () Bool)

(assert (=> b!7063917 (=> (not res!2884370) (not e!4246749))))

(assert (=> b!7063917 (= res!2884370 (matchZipper!3146 (ite c!1316806 lt!2538670 lt!2538648) (_1!37410 (get!23893 lt!2538943))))))

(declare-fun b!7063918 () Bool)

(declare-fun e!4246750 () Option!16939)

(assert (=> b!7063918 (= e!4246752 e!4246750)))

(declare-fun c!1316885 () Bool)

(assert (=> b!7063918 (= c!1316885 (is-Nil!68221 s!7408))))

(declare-fun b!7063919 () Bool)

(declare-fun res!2884367 () Bool)

(assert (=> b!7063919 (=> (not res!2884367) (not e!4246749))))

(assert (=> b!7063919 (= res!2884367 (matchZipper!3146 lt!2538690 (_2!37410 (get!23893 lt!2538943))))))

(declare-fun b!7063920 () Bool)

(declare-fun lt!2538944 () Unit!161892)

(declare-fun lt!2538945 () Unit!161892)

(assert (=> b!7063920 (= lt!2538944 lt!2538945)))

(assert (=> b!7063920 (= (++!15709 (++!15709 Nil!68221 (Cons!68221 (h!74669 s!7408) Nil!68221)) (t!382126 s!7408)) s!7408)))

(assert (=> b!7063920 (= lt!2538945 (lemmaMoveElementToOtherListKeepsConcatEq!2962 Nil!68221 (h!74669 s!7408) (t!382126 s!7408) s!7408))))

(assert (=> b!7063920 (= e!4246750 (findConcatSeparationZippers!455 (ite c!1316806 lt!2538670 lt!2538648) lt!2538690 (++!15709 Nil!68221 (Cons!68221 (h!74669 s!7408) Nil!68221)) (t!382126 s!7408) s!7408))))

(declare-fun b!7063921 () Bool)

(declare-fun e!4246748 () Bool)

(assert (=> b!7063921 (= e!4246748 (matchZipper!3146 lt!2538690 s!7408))))

(declare-fun b!7063922 () Bool)

(declare-fun e!4246751 () Bool)

(assert (=> b!7063922 (= e!4246751 (not (isDefined!13640 lt!2538943)))))

(declare-fun b!7063923 () Bool)

(assert (=> b!7063923 (= e!4246750 None!16938)))

(declare-fun d!2208527 () Bool)

(assert (=> d!2208527 e!4246751))

(declare-fun res!2884368 () Bool)

(assert (=> d!2208527 (=> res!2884368 e!4246751)))

(assert (=> d!2208527 (= res!2884368 e!4246749)))

(declare-fun res!2884369 () Bool)

(assert (=> d!2208527 (=> (not res!2884369) (not e!4246749))))

(assert (=> d!2208527 (= res!2884369 (isDefined!13640 lt!2538943))))

(assert (=> d!2208527 (= lt!2538943 e!4246752)))

(declare-fun c!1316886 () Bool)

(assert (=> d!2208527 (= c!1316886 e!4246748)))

(declare-fun res!2884366 () Bool)

(assert (=> d!2208527 (=> (not res!2884366) (not e!4246748))))

(assert (=> d!2208527 (= res!2884366 (matchZipper!3146 (ite c!1316806 lt!2538670 lt!2538648) Nil!68221))))

(assert (=> d!2208527 (= (++!15709 Nil!68221 s!7408) s!7408)))

(assert (=> d!2208527 (= (findConcatSeparationZippers!455 (ite c!1316806 lt!2538670 lt!2538648) lt!2538690 Nil!68221 s!7408 s!7408) lt!2538943)))

(assert (= (and d!2208527 res!2884366) b!7063921))

(assert (= (and d!2208527 c!1316886) b!7063916))

(assert (= (and d!2208527 (not c!1316886)) b!7063918))

(assert (= (and b!7063918 c!1316885) b!7063923))

(assert (= (and b!7063918 (not c!1316885)) b!7063920))

(assert (= (and d!2208527 res!2884369) b!7063917))

(assert (= (and b!7063917 res!2884370) b!7063919))

(assert (= (and b!7063919 res!2884367) b!7063915))

(assert (= (and d!2208527 (not res!2884368)) b!7063922))

(assert (=> b!7063921 m!7785586))

(declare-fun m!7785760 () Bool)

(assert (=> b!7063922 m!7785760))

(assert (=> d!2208527 m!7785760))

(declare-fun m!7785762 () Bool)

(assert (=> d!2208527 m!7785762))

(assert (=> d!2208527 m!7785592))

(declare-fun m!7785764 () Bool)

(assert (=> b!7063915 m!7785764))

(declare-fun m!7785766 () Bool)

(assert (=> b!7063915 m!7785766))

(assert (=> b!7063917 m!7785764))

(declare-fun m!7785768 () Bool)

(assert (=> b!7063917 m!7785768))

(assert (=> b!7063920 m!7785600))

(assert (=> b!7063920 m!7785600))

(assert (=> b!7063920 m!7785602))

(assert (=> b!7063920 m!7785604))

(assert (=> b!7063920 m!7785600))

(declare-fun m!7785770 () Bool)

(assert (=> b!7063920 m!7785770))

(assert (=> b!7063919 m!7785764))

(declare-fun m!7785772 () Bool)

(assert (=> b!7063919 m!7785772))

(assert (=> bm!641848 d!2208527))

(assert (=> b!7063658 d!2208511))

(assert (=> b!7063658 d!2208497))

(declare-fun d!2208529 () Bool)

(declare-fun lt!2538948 () Int)

(assert (=> d!2208529 (>= lt!2538948 0)))

(declare-fun e!4246755 () Int)

(assert (=> d!2208529 (= lt!2538948 e!4246755)))

(declare-fun c!1316889 () Bool)

(assert (=> d!2208529 (= c!1316889 (is-Cons!68222 (Cons!68222 lt!2538672 Nil!68222)))))

(assert (=> d!2208529 (= (zipperDepthTotal!571 (Cons!68222 lt!2538672 Nil!68222)) lt!2538948)))

(declare-fun b!7063928 () Bool)

(assert (=> b!7063928 (= e!4246755 (+ (contextDepthTotal!542 (h!74670 (Cons!68222 lt!2538672 Nil!68222))) (zipperDepthTotal!571 (t!382127 (Cons!68222 lt!2538672 Nil!68222)))))))

(declare-fun b!7063929 () Bool)

(assert (=> b!7063929 (= e!4246755 0)))

(assert (= (and d!2208529 c!1316889) b!7063928))

(assert (= (and d!2208529 (not c!1316889)) b!7063929))

(declare-fun m!7785774 () Bool)

(assert (=> b!7063928 m!7785774))

(declare-fun m!7785776 () Bool)

(assert (=> b!7063928 m!7785776))

(assert (=> b!7063675 d!2208529))

(assert (=> b!7063664 d!2208489))

(declare-fun d!2208531 () Bool)

(assert (=> d!2208531 (<= (contextDepthTotal!542 lt!2538686) (zipperDepthTotal!571 lt!2538688))))

(declare-fun lt!2538951 () Unit!161892)

(declare-fun choose!53979 (List!68346 Context!13204) Unit!161892)

(assert (=> d!2208531 (= lt!2538951 (choose!53979 lt!2538688 lt!2538686))))

(declare-fun contains!20493 (List!68346 Context!13204) Bool)

(assert (=> d!2208531 (contains!20493 lt!2538688 lt!2538686)))

(assert (=> d!2208531 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!109 lt!2538688 lt!2538686) lt!2538951)))

(declare-fun bs!1879409 () Bool)

(assert (= bs!1879409 d!2208531))

(assert (=> bs!1879409 m!7785358))

(assert (=> bs!1879409 m!7785354))

(declare-fun m!7785778 () Bool)

(assert (=> bs!1879409 m!7785778))

(declare-fun m!7785780 () Bool)

(assert (=> bs!1879409 m!7785780))

(assert (=> b!7063664 d!2208531))

(declare-fun d!2208533 () Bool)

(declare-fun e!4246758 () Bool)

(assert (=> d!2208533 e!4246758))

(declare-fun res!2884373 () Bool)

(assert (=> d!2208533 (=> (not res!2884373) (not e!4246758))))

(declare-fun lt!2538954 () List!68346)

(declare-fun noDuplicate!2705 (List!68346) Bool)

(assert (=> d!2208533 (= res!2884373 (noDuplicate!2705 lt!2538954))))

(declare-fun choose!53980 ((Set Context!13204)) List!68346)

(assert (=> d!2208533 (= lt!2538954 (choose!53980 z1!570))))

(assert (=> d!2208533 (= (toList!10947 z1!570) lt!2538954)))

(declare-fun b!7063932 () Bool)

(declare-fun content!13727 (List!68346) (Set Context!13204))

(assert (=> b!7063932 (= e!4246758 (= (content!13727 lt!2538954) z1!570))))

(assert (= (and d!2208533 res!2884373) b!7063932))

(declare-fun m!7785782 () Bool)

(assert (=> d!2208533 m!7785782))

(declare-fun m!7785784 () Bool)

(assert (=> d!2208533 m!7785784))

(declare-fun m!7785786 () Bool)

(assert (=> b!7063932 m!7785786))

(assert (=> b!7063664 d!2208533))

(declare-fun d!2208535 () Bool)

(declare-fun choose!53981 ((Set Context!13204) Int) (Set Context!13204))

(assert (=> d!2208535 (= (map!15942 lt!2538680 lambda!422980) (choose!53981 lt!2538680 lambda!422980))))

(declare-fun bs!1879410 () Bool)

(assert (= bs!1879410 d!2208535))

(declare-fun m!7785788 () Bool)

(assert (=> bs!1879410 m!7785788))

(assert (=> b!7063664 d!2208535))

(assert (=> b!7063664 d!2208497))

(assert (=> b!7063664 d!2208479))

(declare-fun b!7063942 () Bool)

(declare-fun e!4246763 () List!68344)

(assert (=> b!7063942 (= e!4246763 (Cons!68220 (h!74668 lt!2538656) (++!15710 (t!382125 lt!2538656) (exprs!7102 ct2!306))))))

(declare-fun d!2208537 () Bool)

(declare-fun e!4246764 () Bool)

(assert (=> d!2208537 e!4246764))

(declare-fun res!2884378 () Bool)

(assert (=> d!2208537 (=> (not res!2884378) (not e!4246764))))

(declare-fun lt!2538957 () List!68344)

(declare-fun content!13728 (List!68344) (Set Regex!17606))

(assert (=> d!2208537 (= res!2884378 (= (content!13728 lt!2538957) (set.union (content!13728 lt!2538656) (content!13728 (exprs!7102 ct2!306)))))))

(assert (=> d!2208537 (= lt!2538957 e!4246763)))

(declare-fun c!1316893 () Bool)

(assert (=> d!2208537 (= c!1316893 (is-Nil!68220 lt!2538656))))

(assert (=> d!2208537 (= (++!15710 lt!2538656 (exprs!7102 ct2!306)) lt!2538957)))

(declare-fun b!7063943 () Bool)

(declare-fun res!2884379 () Bool)

(assert (=> b!7063943 (=> (not res!2884379) (not e!4246764))))

(declare-fun size!41178 (List!68344) Int)

(assert (=> b!7063943 (= res!2884379 (= (size!41178 lt!2538957) (+ (size!41178 lt!2538656) (size!41178 (exprs!7102 ct2!306)))))))

(declare-fun b!7063941 () Bool)

(assert (=> b!7063941 (= e!4246763 (exprs!7102 ct2!306))))

(declare-fun b!7063944 () Bool)

(assert (=> b!7063944 (= e!4246764 (or (not (= (exprs!7102 ct2!306) Nil!68220)) (= lt!2538957 lt!2538656)))))

(assert (= (and d!2208537 c!1316893) b!7063941))

(assert (= (and d!2208537 (not c!1316893)) b!7063942))

(assert (= (and d!2208537 res!2884378) b!7063943))

(assert (= (and b!7063943 res!2884379) b!7063944))

(declare-fun m!7785790 () Bool)

(assert (=> b!7063942 m!7785790))

(declare-fun m!7785792 () Bool)

(assert (=> d!2208537 m!7785792))

(declare-fun m!7785794 () Bool)

(assert (=> d!2208537 m!7785794))

(declare-fun m!7785796 () Bool)

(assert (=> d!2208537 m!7785796))

(declare-fun m!7785798 () Bool)

(assert (=> b!7063943 m!7785798))

(declare-fun m!7785800 () Bool)

(assert (=> b!7063943 m!7785800))

(declare-fun m!7785802 () Bool)

(assert (=> b!7063943 m!7785802))

(assert (=> b!7063664 d!2208537))

(declare-fun d!2208539 () Bool)

(declare-fun lt!2538958 () Int)

(assert (=> d!2208539 (>= lt!2538958 0)))

(declare-fun e!4246765 () Int)

(assert (=> d!2208539 (= lt!2538958 e!4246765)))

(declare-fun c!1316894 () Bool)

(assert (=> d!2208539 (= c!1316894 (is-Cons!68222 lt!2538688))))

(assert (=> d!2208539 (= (zipperDepthTotal!571 lt!2538688) lt!2538958)))

(declare-fun b!7063945 () Bool)

(assert (=> b!7063945 (= e!4246765 (+ (contextDepthTotal!542 (h!74670 lt!2538688)) (zipperDepthTotal!571 (t!382127 lt!2538688))))))

(declare-fun b!7063946 () Bool)

(assert (=> b!7063946 (= e!4246765 0)))

(assert (= (and d!2208539 c!1316894) b!7063945))

(assert (= (and d!2208539 (not c!1316894)) b!7063946))

(declare-fun m!7785804 () Bool)

(assert (=> b!7063945 m!7785804))

(declare-fun m!7785806 () Bool)

(assert (=> b!7063945 m!7785806))

(assert (=> b!7063664 d!2208539))

(declare-fun d!2208541 () Bool)

(assert (=> d!2208541 (= (map!15942 lt!2538680 lambda!422980) (set.insert (dynLambda!27707 lambda!422980 lt!2538672) (as set.empty (Set Context!13204))))))

(declare-fun lt!2538961 () Unit!161892)

(declare-fun choose!53982 ((Set Context!13204) Context!13204 Int) Unit!161892)

(assert (=> d!2208541 (= lt!2538961 (choose!53982 lt!2538680 lt!2538672 lambda!422980))))

(assert (=> d!2208541 (= lt!2538680 (set.insert lt!2538672 (as set.empty (Set Context!13204))))))

(assert (=> d!2208541 (= (lemmaMapOnSingletonSet!423 lt!2538680 lt!2538672 lambda!422980) lt!2538961)))

(declare-fun b_lambda!269417 () Bool)

(assert (=> (not b_lambda!269417) (not d!2208541)))

(declare-fun bs!1879411 () Bool)

(assert (= bs!1879411 d!2208541))

(assert (=> bs!1879411 m!7785356))

(assert (=> bs!1879411 m!7785340))

(declare-fun m!7785808 () Bool)

(assert (=> bs!1879411 m!7785808))

(declare-fun m!7785810 () Bool)

(assert (=> bs!1879411 m!7785810))

(declare-fun m!7785812 () Bool)

(assert (=> bs!1879411 m!7785812))

(assert (=> bs!1879411 m!7785808))

(assert (=> b!7063664 d!2208541))

(assert (=> b!7063664 d!2208487))

(declare-fun d!2208543 () Bool)

(declare-fun lt!2538964 () Int)

(assert (=> d!2208543 (>= lt!2538964 0)))

(declare-fun e!4246768 () Int)

(assert (=> d!2208543 (= lt!2538964 e!4246768)))

(declare-fun c!1316898 () Bool)

(assert (=> d!2208543 (= c!1316898 (is-Cons!68220 (exprs!7102 lt!2538672)))))

(assert (=> d!2208543 (= (contextDepthTotal!542 lt!2538672) lt!2538964)))

(declare-fun b!7063951 () Bool)

(declare-fun regexDepthTotal!323 (Regex!17606) Int)

(assert (=> b!7063951 (= e!4246768 (+ (regexDepthTotal!323 (h!74668 (exprs!7102 lt!2538672))) (contextDepthTotal!542 (Context!13205 (t!382125 (exprs!7102 lt!2538672))))))))

(declare-fun b!7063952 () Bool)

(assert (=> b!7063952 (= e!4246768 1)))

(assert (= (and d!2208543 c!1316898) b!7063951))

(assert (= (and d!2208543 (not c!1316898)) b!7063952))

(declare-fun m!7785814 () Bool)

(assert (=> b!7063951 m!7785814))

(declare-fun m!7785816 () Bool)

(assert (=> b!7063951 m!7785816))

(assert (=> b!7063664 d!2208543))

(declare-fun d!2208545 () Bool)

(declare-fun lt!2538965 () Int)

(assert (=> d!2208545 (>= lt!2538965 0)))

(declare-fun e!4246769 () Int)

(assert (=> d!2208545 (= lt!2538965 e!4246769)))

(declare-fun c!1316899 () Bool)

(assert (=> d!2208545 (= c!1316899 (is-Cons!68220 (exprs!7102 lt!2538686)))))

(assert (=> d!2208545 (= (contextDepthTotal!542 lt!2538686) lt!2538965)))

(declare-fun b!7063953 () Bool)

(assert (=> b!7063953 (= e!4246769 (+ (regexDepthTotal!323 (h!74668 (exprs!7102 lt!2538686))) (contextDepthTotal!542 (Context!13205 (t!382125 (exprs!7102 lt!2538686))))))))

(declare-fun b!7063954 () Bool)

(assert (=> b!7063954 (= e!4246769 1)))

(assert (= (and d!2208545 c!1316899) b!7063953))

(assert (= (and d!2208545 (not c!1316899)) b!7063954))

(declare-fun m!7785818 () Bool)

(assert (=> b!7063953 m!7785818))

(declare-fun m!7785820 () Bool)

(assert (=> b!7063953 m!7785820))

(assert (=> b!7063664 d!2208545))

(declare-fun d!2208547 () Bool)

(assert (=> d!2208547 (isDefined!13640 (findConcatSeparationZippers!455 (ite c!1316806 lt!2538670 lt!2538648) lt!2538690 Nil!68221 s!7408 s!7408))))

(declare-fun lt!2538968 () Unit!161892)

(declare-fun choose!53983 ((Set Context!13204) (Set Context!13204) List!68345 List!68345 List!68345 List!68345 List!68345) Unit!161892)

(assert (=> d!2208547 (= lt!2538968 (choose!53983 (ite c!1316806 lt!2538670 lt!2538648) lt!2538690 (_1!37410 lt!2538657) (_2!37410 lt!2538657) s!7408 Nil!68221 s!7408))))

(assert (=> d!2208547 (matchZipper!3146 (ite c!1316806 lt!2538670 lt!2538648) (_1!37410 lt!2538657))))

(assert (=> d!2208547 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!55 (ite c!1316806 lt!2538670 lt!2538648) lt!2538690 (_1!37410 lt!2538657) (_2!37410 lt!2538657) s!7408 Nil!68221 s!7408) lt!2538968)))

(declare-fun bs!1879412 () Bool)

(assert (= bs!1879412 d!2208547))

(assert (=> bs!1879412 m!7785222))

(assert (=> bs!1879412 m!7785222))

(declare-fun m!7785822 () Bool)

(assert (=> bs!1879412 m!7785822))

(declare-fun m!7785824 () Bool)

(assert (=> bs!1879412 m!7785824))

(declare-fun m!7785826 () Bool)

(assert (=> bs!1879412 m!7785826))

(assert (=> bm!641846 d!2208547))

(assert (=> b!7063680 d!2208537))

(declare-fun b!7063955 () Bool)

(declare-fun e!4246771 () (Set Context!13204))

(assert (=> b!7063955 (= e!4246771 (as set.empty (Set Context!13204)))))

(declare-fun b!7063956 () Bool)

(declare-fun e!4246772 () (Set Context!13204))

(assert (=> b!7063956 (= e!4246772 e!4246771)))

(declare-fun c!1316900 () Bool)

(assert (=> b!7063956 (= c!1316900 (is-Cons!68220 (exprs!7102 lt!2538701)))))

(declare-fun b!7063957 () Bool)

(declare-fun call!641886 () (Set Context!13204))

(assert (=> b!7063957 (= e!4246771 call!641886)))

(declare-fun b!7063958 () Bool)

(assert (=> b!7063958 (= e!4246772 (set.union call!641886 (derivationStepZipperUp!2190 (Context!13205 (t!382125 (exprs!7102 lt!2538701))) (h!74669 s!7408))))))

(declare-fun bm!641881 () Bool)

(assert (=> bm!641881 (= call!641886 (derivationStepZipperDown!2240 (h!74668 (exprs!7102 lt!2538701)) (Context!13205 (t!382125 (exprs!7102 lt!2538701))) (h!74669 s!7408)))))

(declare-fun d!2208549 () Bool)

(declare-fun c!1316901 () Bool)

(declare-fun e!4246770 () Bool)

(assert (=> d!2208549 (= c!1316901 e!4246770)))

(declare-fun res!2884380 () Bool)

(assert (=> d!2208549 (=> (not res!2884380) (not e!4246770))))

(assert (=> d!2208549 (= res!2884380 (is-Cons!68220 (exprs!7102 lt!2538701)))))

(assert (=> d!2208549 (= (derivationStepZipperUp!2190 lt!2538701 (h!74669 s!7408)) e!4246772)))

(declare-fun b!7063959 () Bool)

(assert (=> b!7063959 (= e!4246770 (nullable!7289 (h!74668 (exprs!7102 lt!2538701))))))

(assert (= (and d!2208549 res!2884380) b!7063959))

(assert (= (and d!2208549 c!1316901) b!7063958))

(assert (= (and d!2208549 (not c!1316901)) b!7063956))

(assert (= (and b!7063956 c!1316900) b!7063957))

(assert (= (and b!7063956 (not c!1316900)) b!7063955))

(assert (= (or b!7063958 b!7063957) bm!641881))

(declare-fun m!7785828 () Bool)

(assert (=> b!7063958 m!7785828))

(declare-fun m!7785830 () Bool)

(assert (=> bm!641881 m!7785830))

(declare-fun m!7785832 () Bool)

(assert (=> b!7063959 m!7785832))

(assert (=> b!7063680 d!2208549))

(declare-fun b!7063960 () Bool)

(declare-fun e!4246774 () (Set Context!13204))

(declare-fun call!641891 () (Set Context!13204))

(declare-fun call!641892 () (Set Context!13204))

(assert (=> b!7063960 (= e!4246774 (set.union call!641891 call!641892))))

(declare-fun d!2208551 () Bool)

(declare-fun c!1316904 () Bool)

(assert (=> d!2208551 (= c!1316904 (and (is-ElementMatch!17606 (h!74668 (exprs!7102 lt!2538686))) (= (c!1316807 (h!74668 (exprs!7102 lt!2538686))) (h!74669 s!7408))))))

(declare-fun e!4246776 () (Set Context!13204))

(assert (=> d!2208551 (= (derivationStepZipperDown!2240 (h!74668 (exprs!7102 lt!2538686)) lt!2538701 (h!74669 s!7408)) e!4246776)))

(declare-fun b!7063961 () Bool)

(declare-fun e!4246777 () (Set Context!13204))

(declare-fun call!641887 () (Set Context!13204))

(assert (=> b!7063961 (= e!4246777 call!641887)))

(declare-fun bm!641882 () Bool)

(declare-fun call!641890 () (Set Context!13204))

(declare-fun c!1316906 () Bool)

(declare-fun c!1316905 () Bool)

(declare-fun c!1316903 () Bool)

(declare-fun call!641889 () List!68344)

(assert (=> bm!641882 (= call!641890 (derivationStepZipperDown!2240 (ite c!1316903 (regTwo!35725 (h!74668 (exprs!7102 lt!2538686))) (ite c!1316906 (regTwo!35724 (h!74668 (exprs!7102 lt!2538686))) (ite c!1316905 (regOne!35724 (h!74668 (exprs!7102 lt!2538686))) (reg!17935 (h!74668 (exprs!7102 lt!2538686)))))) (ite (or c!1316903 c!1316906) lt!2538701 (Context!13205 call!641889)) (h!74669 s!7408)))))

(declare-fun b!7063962 () Bool)

(declare-fun e!4246773 () (Set Context!13204))

(assert (=> b!7063962 (= e!4246776 e!4246773)))

(assert (=> b!7063962 (= c!1316903 (is-Union!17606 (h!74668 (exprs!7102 lt!2538686))))))

(declare-fun bm!641883 () Bool)

(assert (=> bm!641883 (= call!641887 call!641892)))

(declare-fun bm!641884 () Bool)

(declare-fun call!641888 () List!68344)

(assert (=> bm!641884 (= call!641889 call!641888)))

(declare-fun b!7063963 () Bool)

(declare-fun e!4246775 () Bool)

(assert (=> b!7063963 (= e!4246775 (nullable!7289 (regOne!35724 (h!74668 (exprs!7102 lt!2538686)))))))

(declare-fun bm!641885 () Bool)

(assert (=> bm!641885 (= call!641891 (derivationStepZipperDown!2240 (ite c!1316903 (regOne!35725 (h!74668 (exprs!7102 lt!2538686))) (regOne!35724 (h!74668 (exprs!7102 lt!2538686)))) (ite c!1316903 lt!2538701 (Context!13205 call!641888)) (h!74669 s!7408)))))

(declare-fun b!7063964 () Bool)

(assert (=> b!7063964 (= e!4246773 (set.union call!641891 call!641890))))

(declare-fun b!7063965 () Bool)

(assert (=> b!7063965 (= c!1316906 e!4246775)))

(declare-fun res!2884381 () Bool)

(assert (=> b!7063965 (=> (not res!2884381) (not e!4246775))))

(assert (=> b!7063965 (= res!2884381 (is-Concat!26451 (h!74668 (exprs!7102 lt!2538686))))))

(assert (=> b!7063965 (= e!4246773 e!4246774)))

(declare-fun b!7063966 () Bool)

(assert (=> b!7063966 (= e!4246776 (set.insert lt!2538701 (as set.empty (Set Context!13204))))))

(declare-fun b!7063967 () Bool)

(declare-fun c!1316902 () Bool)

(assert (=> b!7063967 (= c!1316902 (is-Star!17606 (h!74668 (exprs!7102 lt!2538686))))))

(declare-fun e!4246778 () (Set Context!13204))

(assert (=> b!7063967 (= e!4246777 e!4246778)))

(declare-fun bm!641886 () Bool)

(assert (=> bm!641886 (= call!641888 ($colon$colon!2637 (exprs!7102 lt!2538701) (ite (or c!1316906 c!1316905) (regTwo!35724 (h!74668 (exprs!7102 lt!2538686))) (h!74668 (exprs!7102 lt!2538686)))))))

(declare-fun b!7063968 () Bool)

(assert (=> b!7063968 (= e!4246778 (as set.empty (Set Context!13204)))))

(declare-fun b!7063969 () Bool)

(assert (=> b!7063969 (= e!4246778 call!641887)))

(declare-fun bm!641887 () Bool)

(assert (=> bm!641887 (= call!641892 call!641890)))

(declare-fun b!7063970 () Bool)

(assert (=> b!7063970 (= e!4246774 e!4246777)))

(assert (=> b!7063970 (= c!1316905 (is-Concat!26451 (h!74668 (exprs!7102 lt!2538686))))))

(assert (= (and d!2208551 c!1316904) b!7063966))

(assert (= (and d!2208551 (not c!1316904)) b!7063962))

(assert (= (and b!7063962 c!1316903) b!7063964))

(assert (= (and b!7063962 (not c!1316903)) b!7063965))

(assert (= (and b!7063965 res!2884381) b!7063963))

(assert (= (and b!7063965 c!1316906) b!7063960))

(assert (= (and b!7063965 (not c!1316906)) b!7063970))

(assert (= (and b!7063970 c!1316905) b!7063961))

(assert (= (and b!7063970 (not c!1316905)) b!7063967))

(assert (= (and b!7063967 c!1316902) b!7063969))

(assert (= (and b!7063967 (not c!1316902)) b!7063968))

(assert (= (or b!7063961 b!7063969) bm!641884))

(assert (= (or b!7063961 b!7063969) bm!641883))

(assert (= (or b!7063960 bm!641883) bm!641887))

(assert (= (or b!7063960 bm!641884) bm!641886))

(assert (= (or b!7063964 b!7063960) bm!641885))

(assert (= (or b!7063964 bm!641887) bm!641882))

(assert (=> b!7063966 m!7785288))

(declare-fun m!7785834 () Bool)

(assert (=> bm!641885 m!7785834))

(declare-fun m!7785836 () Bool)

(assert (=> bm!641886 m!7785836))

(assert (=> b!7063963 m!7785678))

(declare-fun m!7785838 () Bool)

(assert (=> bm!641882 m!7785838))

(assert (=> b!7063680 d!2208551))

(assert (=> b!7063680 d!2208497))

(declare-fun b!7063971 () Bool)

(declare-fun e!4246780 () Bool)

(declare-fun lt!2538969 () Option!16939)

(assert (=> b!7063971 (= e!4246780 (= (++!15709 (_1!37410 (get!23893 lt!2538969)) (_2!37410 (get!23893 lt!2538969))) s!7408))))

(declare-fun b!7063972 () Bool)

(declare-fun e!4246783 () Option!16939)

(assert (=> b!7063972 (= e!4246783 (Some!16938 (tuple2!68215 Nil!68221 s!7408)))))

(declare-fun b!7063973 () Bool)

(declare-fun res!2884386 () Bool)

(assert (=> b!7063973 (=> (not res!2884386) (not e!4246780))))

(assert (=> b!7063973 (= res!2884386 (matchZipper!3146 lt!2538680 (_1!37410 (get!23893 lt!2538969))))))

(declare-fun b!7063974 () Bool)

(declare-fun e!4246781 () Option!16939)

(assert (=> b!7063974 (= e!4246783 e!4246781)))

(declare-fun c!1316907 () Bool)

(assert (=> b!7063974 (= c!1316907 (is-Nil!68221 s!7408))))

(declare-fun b!7063975 () Bool)

(declare-fun res!2884383 () Bool)

(assert (=> b!7063975 (=> (not res!2884383) (not e!4246780))))

(assert (=> b!7063975 (= res!2884383 (matchZipper!3146 lt!2538690 (_2!37410 (get!23893 lt!2538969))))))

(declare-fun b!7063976 () Bool)

(declare-fun lt!2538970 () Unit!161892)

(declare-fun lt!2538971 () Unit!161892)

(assert (=> b!7063976 (= lt!2538970 lt!2538971)))

(assert (=> b!7063976 (= (++!15709 (++!15709 Nil!68221 (Cons!68221 (h!74669 s!7408) Nil!68221)) (t!382126 s!7408)) s!7408)))

(assert (=> b!7063976 (= lt!2538971 (lemmaMoveElementToOtherListKeepsConcatEq!2962 Nil!68221 (h!74669 s!7408) (t!382126 s!7408) s!7408))))

(assert (=> b!7063976 (= e!4246781 (findConcatSeparationZippers!455 lt!2538680 lt!2538690 (++!15709 Nil!68221 (Cons!68221 (h!74669 s!7408) Nil!68221)) (t!382126 s!7408) s!7408))))

(declare-fun b!7063977 () Bool)

(declare-fun e!4246779 () Bool)

(assert (=> b!7063977 (= e!4246779 (matchZipper!3146 lt!2538690 s!7408))))

(declare-fun b!7063978 () Bool)

(declare-fun e!4246782 () Bool)

(assert (=> b!7063978 (= e!4246782 (not (isDefined!13640 lt!2538969)))))

(declare-fun b!7063979 () Bool)

(assert (=> b!7063979 (= e!4246781 None!16938)))

(declare-fun d!2208553 () Bool)

(assert (=> d!2208553 e!4246782))

(declare-fun res!2884384 () Bool)

(assert (=> d!2208553 (=> res!2884384 e!4246782)))

(assert (=> d!2208553 (= res!2884384 e!4246780)))

(declare-fun res!2884385 () Bool)

(assert (=> d!2208553 (=> (not res!2884385) (not e!4246780))))

(assert (=> d!2208553 (= res!2884385 (isDefined!13640 lt!2538969))))

(assert (=> d!2208553 (= lt!2538969 e!4246783)))

(declare-fun c!1316908 () Bool)

(assert (=> d!2208553 (= c!1316908 e!4246779)))

(declare-fun res!2884382 () Bool)

(assert (=> d!2208553 (=> (not res!2884382) (not e!4246779))))

(assert (=> d!2208553 (= res!2884382 (matchZipper!3146 lt!2538680 Nil!68221))))

(assert (=> d!2208553 (= (++!15709 Nil!68221 s!7408) s!7408)))

(assert (=> d!2208553 (= (findConcatSeparationZippers!455 lt!2538680 lt!2538690 Nil!68221 s!7408 s!7408) lt!2538969)))

(assert (= (and d!2208553 res!2884382) b!7063977))

(assert (= (and d!2208553 c!1316908) b!7063972))

(assert (= (and d!2208553 (not c!1316908)) b!7063974))

(assert (= (and b!7063974 c!1316907) b!7063979))

(assert (= (and b!7063974 (not c!1316907)) b!7063976))

(assert (= (and d!2208553 res!2884385) b!7063973))

(assert (= (and b!7063973 res!2884386) b!7063975))

(assert (= (and b!7063975 res!2884383) b!7063971))

(assert (= (and d!2208553 (not res!2884384)) b!7063978))

(assert (=> b!7063977 m!7785586))

(declare-fun m!7785840 () Bool)

(assert (=> b!7063978 m!7785840))

(assert (=> d!2208553 m!7785840))

(declare-fun m!7785842 () Bool)

(assert (=> d!2208553 m!7785842))

(assert (=> d!2208553 m!7785592))

(declare-fun m!7785844 () Bool)

(assert (=> b!7063971 m!7785844))

(declare-fun m!7785846 () Bool)

(assert (=> b!7063971 m!7785846))

(assert (=> b!7063973 m!7785844))

(declare-fun m!7785848 () Bool)

(assert (=> b!7063973 m!7785848))

(assert (=> b!7063976 m!7785600))

(assert (=> b!7063976 m!7785600))

(assert (=> b!7063976 m!7785602))

(assert (=> b!7063976 m!7785604))

(assert (=> b!7063976 m!7785600))

(declare-fun m!7785850 () Bool)

(assert (=> b!7063976 m!7785850))

(assert (=> b!7063975 m!7785844))

(declare-fun m!7785852 () Bool)

(assert (=> b!7063975 m!7785852))

(assert (=> b!7063663 d!2208553))

(declare-fun d!2208555 () Bool)

(assert (=> d!2208555 (= (get!23893 lt!2538638) (v!53232 lt!2538638))))

(assert (=> b!7063663 d!2208555))

(declare-fun d!2208557 () Bool)

(assert (=> d!2208557 (isDefined!13640 (findConcatSeparationZippers!455 lt!2538680 (set.insert ct2!306 (as set.empty (Set Context!13204))) Nil!68221 s!7408 s!7408))))

(declare-fun lt!2538974 () Unit!161892)

(declare-fun choose!53984 ((Set Context!13204) Context!13204 List!68345) Unit!161892)

(assert (=> d!2208557 (= lt!2538974 (choose!53984 lt!2538680 ct2!306 s!7408))))

(assert (=> d!2208557 (matchZipper!3146 (appendTo!727 lt!2538680 ct2!306) s!7408)))

(assert (=> d!2208557 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!443 lt!2538680 ct2!306 s!7408) lt!2538974)))

(declare-fun bs!1879413 () Bool)

(assert (= bs!1879413 d!2208557))

(declare-fun m!7785854 () Bool)

(assert (=> bs!1879413 m!7785854))

(declare-fun m!7785856 () Bool)

(assert (=> bs!1879413 m!7785856))

(assert (=> bs!1879413 m!7785246))

(assert (=> bs!1879413 m!7785246))

(declare-fun m!7785858 () Bool)

(assert (=> bs!1879413 m!7785858))

(assert (=> bs!1879413 m!7785858))

(declare-fun m!7785860 () Bool)

(assert (=> bs!1879413 m!7785860))

(declare-fun m!7785862 () Bool)

(assert (=> bs!1879413 m!7785862))

(assert (=> bs!1879413 m!7785854))

(assert (=> b!7063663 d!2208557))

(declare-fun d!2208559 () Bool)

(assert (=> d!2208559 (= (isDefined!13640 lt!2538638) (not (isEmpty!39806 lt!2538638)))))

(declare-fun bs!1879414 () Bool)

(assert (= bs!1879414 d!2208559))

(declare-fun m!7785864 () Bool)

(assert (=> bs!1879414 m!7785864))

(assert (=> b!7063663 d!2208559))

(declare-fun d!2208561 () Bool)

(declare-fun c!1316909 () Bool)

(assert (=> d!2208561 (= c!1316909 (isEmpty!39803 (_1!37410 lt!2538657)))))

(declare-fun e!4246784 () Bool)

(assert (=> d!2208561 (= (matchZipper!3146 lt!2538680 (_1!37410 lt!2538657)) e!4246784)))

(declare-fun b!7063980 () Bool)

(assert (=> b!7063980 (= e!4246784 (nullableZipper!2676 lt!2538680))))

(declare-fun b!7063981 () Bool)

(assert (=> b!7063981 (= e!4246784 (matchZipper!3146 (derivationStepZipper!3056 lt!2538680 (head!14382 (_1!37410 lt!2538657))) (tail!13761 (_1!37410 lt!2538657))))))

(assert (= (and d!2208561 c!1316909) b!7063980))

(assert (= (and d!2208561 (not c!1316909)) b!7063981))

(assert (=> d!2208561 m!7785228))

(declare-fun m!7785866 () Bool)

(assert (=> b!7063980 m!7785866))

(declare-fun m!7785868 () Bool)

(assert (=> b!7063981 m!7785868))

(assert (=> b!7063981 m!7785868))

(declare-fun m!7785870 () Bool)

(assert (=> b!7063981 m!7785870))

(assert (=> b!7063981 m!7785304))

(assert (=> b!7063981 m!7785870))

(assert (=> b!7063981 m!7785304))

(declare-fun m!7785872 () Bool)

(assert (=> b!7063981 m!7785872))

(assert (=> b!7063663 d!2208561))

(declare-fun d!2208563 () Bool)

(declare-fun c!1316910 () Bool)

(assert (=> d!2208563 (= c!1316910 (isEmpty!39803 (t!382126 s!7408)))))

(declare-fun e!4246785 () Bool)

(assert (=> d!2208563 (= (matchZipper!3146 lt!2538676 (t!382126 s!7408)) e!4246785)))

(declare-fun b!7063982 () Bool)

(assert (=> b!7063982 (= e!4246785 (nullableZipper!2676 lt!2538676))))

(declare-fun b!7063983 () Bool)

(assert (=> b!7063983 (= e!4246785 (matchZipper!3146 (derivationStepZipper!3056 lt!2538676 (head!14382 (t!382126 s!7408))) (tail!13761 (t!382126 s!7408))))))

(assert (= (and d!2208563 c!1316910) b!7063982))

(assert (= (and d!2208563 (not c!1316910)) b!7063983))

(assert (=> d!2208563 m!7785716))

(declare-fun m!7785874 () Bool)

(assert (=> b!7063982 m!7785874))

(assert (=> b!7063983 m!7785720))

(assert (=> b!7063983 m!7785720))

(declare-fun m!7785876 () Bool)

(assert (=> b!7063983 m!7785876))

(assert (=> b!7063983 m!7785724))

(assert (=> b!7063983 m!7785876))

(assert (=> b!7063983 m!7785724))

(declare-fun m!7785878 () Bool)

(assert (=> b!7063983 m!7785878))

(assert (=> b!7063678 d!2208563))

(declare-fun d!2208565 () Bool)

(declare-fun c!1316911 () Bool)

(assert (=> d!2208565 (= c!1316911 (isEmpty!39803 (t!382126 s!7408)))))

(declare-fun e!4246786 () Bool)

(assert (=> d!2208565 (= (matchZipper!3146 lt!2538639 (t!382126 s!7408)) e!4246786)))

(declare-fun b!7063984 () Bool)

(assert (=> b!7063984 (= e!4246786 (nullableZipper!2676 lt!2538639))))

(declare-fun b!7063985 () Bool)

(assert (=> b!7063985 (= e!4246786 (matchZipper!3146 (derivationStepZipper!3056 lt!2538639 (head!14382 (t!382126 s!7408))) (tail!13761 (t!382126 s!7408))))))

(assert (= (and d!2208565 c!1316911) b!7063984))

(assert (= (and d!2208565 (not c!1316911)) b!7063985))

(assert (=> d!2208565 m!7785716))

(declare-fun m!7785880 () Bool)

(assert (=> b!7063984 m!7785880))

(assert (=> b!7063985 m!7785720))

(assert (=> b!7063985 m!7785720))

(declare-fun m!7785882 () Bool)

(assert (=> b!7063985 m!7785882))

(assert (=> b!7063985 m!7785724))

(assert (=> b!7063985 m!7785882))

(assert (=> b!7063985 m!7785724))

(declare-fun m!7785884 () Bool)

(assert (=> b!7063985 m!7785884))

(assert (=> b!7063678 d!2208565))

(assert (=> b!7063678 d!2208497))

(declare-fun d!2208567 () Bool)

(declare-fun c!1316912 () Bool)

(assert (=> d!2208567 (= c!1316912 (isEmpty!39803 (t!382126 s!7408)))))

(declare-fun e!4246787 () Bool)

(assert (=> d!2208567 (= (matchZipper!3146 lt!2538677 (t!382126 s!7408)) e!4246787)))

(declare-fun b!7063986 () Bool)

(assert (=> b!7063986 (= e!4246787 (nullableZipper!2676 lt!2538677))))

(declare-fun b!7063987 () Bool)

(assert (=> b!7063987 (= e!4246787 (matchZipper!3146 (derivationStepZipper!3056 lt!2538677 (head!14382 (t!382126 s!7408))) (tail!13761 (t!382126 s!7408))))))

(assert (= (and d!2208567 c!1316912) b!7063986))

(assert (= (and d!2208567 (not c!1316912)) b!7063987))

(assert (=> d!2208567 m!7785716))

(declare-fun m!7785886 () Bool)

(assert (=> b!7063986 m!7785886))

(assert (=> b!7063987 m!7785720))

(assert (=> b!7063987 m!7785720))

(declare-fun m!7785888 () Bool)

(assert (=> b!7063987 m!7785888))

(assert (=> b!7063987 m!7785724))

(assert (=> b!7063987 m!7785888))

(assert (=> b!7063987 m!7785724))

(declare-fun m!7785890 () Bool)

(assert (=> b!7063987 m!7785890))

(assert (=> b!7063678 d!2208567))

(declare-fun d!2208569 () Bool)

(declare-fun e!4246788 () Bool)

(assert (=> d!2208569 (= (matchZipper!3146 (set.union lt!2538677 lt!2538687) (t!382126 s!7408)) e!4246788)))

(declare-fun res!2884388 () Bool)

(assert (=> d!2208569 (=> res!2884388 e!4246788)))

(assert (=> d!2208569 (= res!2884388 (matchZipper!3146 lt!2538677 (t!382126 s!7408)))))

(declare-fun lt!2538975 () Unit!161892)

(assert (=> d!2208569 (= lt!2538975 (choose!53978 lt!2538677 lt!2538687 (t!382126 s!7408)))))

(assert (=> d!2208569 (= (lemmaZipperConcatMatchesSameAsBothZippers!1619 lt!2538677 lt!2538687 (t!382126 s!7408)) lt!2538975)))

(declare-fun b!7063988 () Bool)

(assert (=> b!7063988 (= e!4246788 (matchZipper!3146 lt!2538687 (t!382126 s!7408)))))

(assert (= (and d!2208569 (not res!2884388)) b!7063988))

(declare-fun m!7785892 () Bool)

(assert (=> d!2208569 m!7785892))

(assert (=> d!2208569 m!7785218))

(declare-fun m!7785894 () Bool)

(assert (=> d!2208569 m!7785894))

(assert (=> b!7063988 m!7785262))

(assert (=> b!7063678 d!2208569))

(assert (=> b!7063662 d!2208497))

(assert (=> b!7063662 d!2208549))

(declare-fun d!2208571 () Bool)

(assert (=> d!2208571 (= (flatMap!2532 lt!2538678 lambda!422982) (choose!53976 lt!2538678 lambda!422982))))

(declare-fun bs!1879415 () Bool)

(assert (= bs!1879415 d!2208571))

(declare-fun m!7785896 () Bool)

(assert (=> bs!1879415 m!7785896))

(assert (=> b!7063662 d!2208571))

(declare-fun bs!1879416 () Bool)

(declare-fun d!2208573 () Bool)

(assert (= bs!1879416 (and d!2208573 b!7063683)))

(declare-fun lambda!423071 () Int)

(assert (=> bs!1879416 (= lambda!423071 lambda!422982)))

(declare-fun bs!1879417 () Bool)

(assert (= bs!1879417 (and d!2208573 d!2208503)))

(assert (=> bs!1879417 (= lambda!423071 lambda!423064)))

(assert (=> d!2208573 true))

(assert (=> d!2208573 (= (derivationStepZipper!3056 lt!2538678 (h!74669 s!7408)) (flatMap!2532 lt!2538678 lambda!423071))))

(declare-fun bs!1879418 () Bool)

(assert (= bs!1879418 d!2208573))

(declare-fun m!7785898 () Bool)

(assert (=> bs!1879418 m!7785898))

(assert (=> b!7063662 d!2208573))

(declare-fun d!2208575 () Bool)

(assert (=> d!2208575 (= (flatMap!2532 lt!2538678 lambda!422982) (dynLambda!27708 lambda!422982 lt!2538701))))

(declare-fun lt!2538976 () Unit!161892)

(assert (=> d!2208575 (= lt!2538976 (choose!53977 lt!2538678 lt!2538701 lambda!422982))))

(assert (=> d!2208575 (= lt!2538678 (set.insert lt!2538701 (as set.empty (Set Context!13204))))))

(assert (=> d!2208575 (= (lemmaFlatMapOnSingletonSet!2041 lt!2538678 lt!2538701 lambda!422982) lt!2538976)))

(declare-fun b_lambda!269419 () Bool)

(assert (=> (not b_lambda!269419) (not d!2208575)))

(declare-fun bs!1879419 () Bool)

(assert (= bs!1879419 d!2208575))

(assert (=> bs!1879419 m!7785286))

(declare-fun m!7785900 () Bool)

(assert (=> bs!1879419 m!7785900))

(declare-fun m!7785902 () Bool)

(assert (=> bs!1879419 m!7785902))

(assert (=> bs!1879419 m!7785288))

(assert (=> b!7063662 d!2208575))

(declare-fun d!2208577 () Bool)

(declare-fun e!4246789 () Bool)

(assert (=> d!2208577 e!4246789))

(declare-fun res!2884389 () Bool)

(assert (=> d!2208577 (=> (not res!2884389) (not e!4246789))))

(declare-fun lt!2538977 () List!68346)

(assert (=> d!2208577 (= res!2884389 (noDuplicate!2705 lt!2538977))))

(assert (=> d!2208577 (= lt!2538977 (choose!53980 lt!2538685))))

(assert (=> d!2208577 (= (toList!10947 lt!2538685) lt!2538977)))

(declare-fun b!7063989 () Bool)

(assert (=> b!7063989 (= e!4246789 (= (content!13727 lt!2538977) lt!2538685))))

(assert (= (and d!2208577 res!2884389) b!7063989))

(declare-fun m!7785904 () Bool)

(assert (=> d!2208577 m!7785904))

(declare-fun m!7785906 () Bool)

(assert (=> d!2208577 m!7785906))

(declare-fun m!7785908 () Bool)

(assert (=> b!7063989 m!7785908))

(assert (=> b!7063679 d!2208577))

(declare-fun d!2208579 () Bool)

(declare-fun e!4246790 () Bool)

(assert (=> d!2208579 e!4246790))

(declare-fun res!2884390 () Bool)

(assert (=> d!2208579 (=> (not res!2884390) (not e!4246790))))

(declare-fun lt!2538978 () Context!13204)

(assert (=> d!2208579 (= res!2884390 (dynLambda!27706 lambda!422979 lt!2538978))))

(assert (=> d!2208579 (= lt!2538978 (getWitness!1687 (toList!10947 lt!2538685) lambda!422979))))

(assert (=> d!2208579 (exists!3622 lt!2538685 lambda!422979)))

(assert (=> d!2208579 (= (getWitness!1685 lt!2538685 lambda!422979) lt!2538978)))

(declare-fun b!7063990 () Bool)

(assert (=> b!7063990 (= e!4246790 (set.member lt!2538978 lt!2538685))))

(assert (= (and d!2208579 res!2884390) b!7063990))

(declare-fun b_lambda!269421 () Bool)

(assert (=> (not b_lambda!269421) (not d!2208579)))

(declare-fun m!7785910 () Bool)

(assert (=> d!2208579 m!7785910))

(assert (=> d!2208579 m!7785336))

(assert (=> d!2208579 m!7785336))

(declare-fun m!7785912 () Bool)

(assert (=> d!2208579 m!7785912))

(declare-fun m!7785914 () Bool)

(assert (=> d!2208579 m!7785914))

(declare-fun m!7785916 () Bool)

(assert (=> b!7063990 m!7785916))

(assert (=> b!7063679 d!2208579))

(declare-fun bs!1879420 () Bool)

(declare-fun d!2208581 () Bool)

(assert (= bs!1879420 (and d!2208581 b!7063679)))

(declare-fun lambda!423074 () Int)

(assert (=> bs!1879420 (not (= lambda!423074 lambda!422979))))

(declare-fun bs!1879421 () Bool)

(assert (= bs!1879421 (and d!2208581 b!7063666)))

(assert (=> bs!1879421 (not (= lambda!423074 lambda!422983))))

(assert (=> d!2208581 true))

(declare-fun order!28359 () Int)

(declare-fun dynLambda!27709 (Int Int) Int)

(assert (=> d!2208581 (< (dynLambda!27709 order!28359 lambda!422979) (dynLambda!27709 order!28359 lambda!423074))))

(declare-fun forall!16553 (List!68346 Int) Bool)

(assert (=> d!2208581 (= (exists!3623 lt!2538654 lambda!422979) (not (forall!16553 lt!2538654 lambda!423074)))))

(declare-fun bs!1879422 () Bool)

(assert (= bs!1879422 d!2208581))

(declare-fun m!7785918 () Bool)

(assert (=> bs!1879422 m!7785918))

(assert (=> b!7063679 d!2208581))

(declare-fun bs!1879423 () Bool)

(declare-fun d!2208583 () Bool)

(assert (= bs!1879423 (and d!2208583 b!7063679)))

(declare-fun lambda!423077 () Int)

(assert (=> bs!1879423 (= lambda!423077 lambda!422979)))

(declare-fun bs!1879424 () Bool)

(assert (= bs!1879424 (and d!2208583 b!7063666)))

(assert (=> bs!1879424 (not (= lambda!423077 lambda!422983))))

(declare-fun bs!1879425 () Bool)

(assert (= bs!1879425 (and d!2208583 d!2208581)))

(assert (=> bs!1879425 (not (= lambda!423077 lambda!423074))))

(assert (=> d!2208583 true))

(assert (=> d!2208583 (exists!3623 lt!2538654 lambda!423077)))

(declare-fun lt!2538981 () Unit!161892)

(declare-fun choose!53985 (List!68346 List!68345) Unit!161892)

(assert (=> d!2208583 (= lt!2538981 (choose!53985 lt!2538654 s!7408))))

(assert (=> d!2208583 (matchZipper!3146 (content!13727 lt!2538654) s!7408)))

(assert (=> d!2208583 (= (lemmaZipperMatchesExistsMatchingContext!527 lt!2538654 s!7408) lt!2538981)))

(declare-fun bs!1879426 () Bool)

(assert (= bs!1879426 d!2208583))

(declare-fun m!7785920 () Bool)

(assert (=> bs!1879426 m!7785920))

(declare-fun m!7785922 () Bool)

(assert (=> bs!1879426 m!7785922))

(declare-fun m!7785924 () Bool)

(assert (=> bs!1879426 m!7785924))

(assert (=> bs!1879426 m!7785924))

(declare-fun m!7785926 () Bool)

(assert (=> bs!1879426 m!7785926))

(assert (=> b!7063679 d!2208583))

(declare-fun d!2208585 () Bool)

(declare-fun c!1316915 () Bool)

(assert (=> d!2208585 (= c!1316915 (isEmpty!39803 s!7408))))

(declare-fun e!4246791 () Bool)

(assert (=> d!2208585 (= (matchZipper!3146 lt!2538651 s!7408) e!4246791)))

(declare-fun b!7063993 () Bool)

(assert (=> b!7063993 (= e!4246791 (nullableZipper!2676 lt!2538651))))

(declare-fun b!7063994 () Bool)

(assert (=> b!7063994 (= e!4246791 (matchZipper!3146 (derivationStepZipper!3056 lt!2538651 (head!14382 s!7408)) (tail!13761 s!7408)))))

(assert (= (and d!2208585 c!1316915) b!7063993))

(assert (= (and d!2208585 (not c!1316915)) b!7063994))

(assert (=> d!2208585 m!7785682))

(declare-fun m!7785928 () Bool)

(assert (=> b!7063993 m!7785928))

(assert (=> b!7063994 m!7785686))

(assert (=> b!7063994 m!7785686))

(declare-fun m!7785930 () Bool)

(assert (=> b!7063994 m!7785930))

(assert (=> b!7063994 m!7785690))

(assert (=> b!7063994 m!7785930))

(assert (=> b!7063994 m!7785690))

(declare-fun m!7785932 () Bool)

(assert (=> b!7063994 m!7785932))

(assert (=> b!7063679 d!2208585))

(declare-fun b!7063996 () Bool)

(declare-fun e!4246792 () List!68344)

(assert (=> b!7063996 (= e!4246792 (Cons!68220 (h!74668 (exprs!7102 lt!2538686)) (++!15710 (t!382125 (exprs!7102 lt!2538686)) (exprs!7102 ct2!306))))))

(declare-fun d!2208587 () Bool)

(declare-fun e!4246793 () Bool)

(assert (=> d!2208587 e!4246793))

(declare-fun res!2884391 () Bool)

(assert (=> d!2208587 (=> (not res!2884391) (not e!4246793))))

(declare-fun lt!2538982 () List!68344)

(assert (=> d!2208587 (= res!2884391 (= (content!13728 lt!2538982) (set.union (content!13728 (exprs!7102 lt!2538686)) (content!13728 (exprs!7102 ct2!306)))))))

(assert (=> d!2208587 (= lt!2538982 e!4246792)))

(declare-fun c!1316916 () Bool)

(assert (=> d!2208587 (= c!1316916 (is-Nil!68220 (exprs!7102 lt!2538686)))))

(assert (=> d!2208587 (= (++!15710 (exprs!7102 lt!2538686) (exprs!7102 ct2!306)) lt!2538982)))

(declare-fun b!7063997 () Bool)

(declare-fun res!2884392 () Bool)

(assert (=> b!7063997 (=> (not res!2884392) (not e!4246793))))

(assert (=> b!7063997 (= res!2884392 (= (size!41178 lt!2538982) (+ (size!41178 (exprs!7102 lt!2538686)) (size!41178 (exprs!7102 ct2!306)))))))

(declare-fun b!7063995 () Bool)

(assert (=> b!7063995 (= e!4246792 (exprs!7102 ct2!306))))

(declare-fun b!7063998 () Bool)

(assert (=> b!7063998 (= e!4246793 (or (not (= (exprs!7102 ct2!306) Nil!68220)) (= lt!2538982 (exprs!7102 lt!2538686))))))

(assert (= (and d!2208587 c!1316916) b!7063995))

(assert (= (and d!2208587 (not c!1316916)) b!7063996))

(assert (= (and d!2208587 res!2884391) b!7063997))

(assert (= (and b!7063997 res!2884392) b!7063998))

(declare-fun m!7785934 () Bool)

(assert (=> b!7063996 m!7785934))

(declare-fun m!7785936 () Bool)

(assert (=> d!2208587 m!7785936))

(declare-fun m!7785938 () Bool)

(assert (=> d!2208587 m!7785938))

(assert (=> d!2208587 m!7785796))

(declare-fun m!7785940 () Bool)

(assert (=> b!7063997 m!7785940))

(declare-fun m!7785942 () Bool)

(assert (=> b!7063997 m!7785942))

(assert (=> b!7063997 m!7785802))

(assert (=> b!7063661 d!2208587))

(assert (=> b!7063661 d!2208447))

(assert (=> b!7063661 d!2208465))

(declare-fun condSetEmpty!50064 () Bool)

(assert (=> setNonEmpty!50058 (= condSetEmpty!50064 (= setRest!50058 (as set.empty (Set Context!13204))))))

(declare-fun setRes!50064 () Bool)

(assert (=> setNonEmpty!50058 (= tp!1941327 setRes!50064)))

(declare-fun setIsEmpty!50064 () Bool)

(assert (=> setIsEmpty!50064 setRes!50064))

(declare-fun setElem!50064 () Context!13204)

(declare-fun e!4246796 () Bool)

(declare-fun tp!1941347 () Bool)

(declare-fun setNonEmpty!50064 () Bool)

(assert (=> setNonEmpty!50064 (= setRes!50064 (and tp!1941347 (inv!86875 setElem!50064) e!4246796))))

(declare-fun setRest!50064 () (Set Context!13204))

(assert (=> setNonEmpty!50064 (= setRest!50058 (set.union (set.insert setElem!50064 (as set.empty (Set Context!13204))) setRest!50064))))

(declare-fun b!7064003 () Bool)

(declare-fun tp!1941348 () Bool)

(assert (=> b!7064003 (= e!4246796 tp!1941348)))

(assert (= (and setNonEmpty!50058 condSetEmpty!50064) setIsEmpty!50064))

(assert (= (and setNonEmpty!50058 (not condSetEmpty!50064)) setNonEmpty!50064))

(assert (= setNonEmpty!50064 b!7064003))

(declare-fun m!7785944 () Bool)

(assert (=> setNonEmpty!50064 m!7785944))

(declare-fun b!7064008 () Bool)

(declare-fun e!4246799 () Bool)

(declare-fun tp!1941353 () Bool)

(declare-fun tp!1941354 () Bool)

(assert (=> b!7064008 (= e!4246799 (and tp!1941353 tp!1941354))))

(assert (=> b!7063676 (= tp!1941328 e!4246799)))

(assert (= (and b!7063676 (is-Cons!68220 (exprs!7102 ct2!306))) b!7064008))

(declare-fun b!7064009 () Bool)

(declare-fun e!4246800 () Bool)

(declare-fun tp!1941355 () Bool)

(declare-fun tp!1941356 () Bool)

(assert (=> b!7064009 (= e!4246800 (and tp!1941355 tp!1941356))))

(assert (=> b!7063670 (= tp!1941329 e!4246800)))

(assert (= (and b!7063670 (is-Cons!68220 (exprs!7102 setElem!50058))) b!7064009))

(declare-fun b!7064014 () Bool)

(declare-fun e!4246803 () Bool)

(declare-fun tp!1941359 () Bool)

(assert (=> b!7064014 (= e!4246803 (and tp_is_empty!44437 tp!1941359))))

(assert (=> b!7063674 (= tp!1941330 e!4246803)))

(assert (= (and b!7063674 (is-Cons!68221 (t!382126 s!7408))) b!7064014))

(declare-fun b_lambda!269423 () Bool)

(assert (= b_lambda!269413 (or b!7063683 b_lambda!269423)))

(declare-fun bs!1879427 () Bool)

(declare-fun d!2208589 () Bool)

(assert (= bs!1879427 (and d!2208589 b!7063683)))

(assert (=> bs!1879427 (= (dynLambda!27708 lambda!422982 lt!2538686) (derivationStepZipperUp!2190 lt!2538686 (h!74669 s!7408)))))

(assert (=> bs!1879427 m!7785302))

(assert (=> d!2208491 d!2208589))

(declare-fun b_lambda!269425 () Bool)

(assert (= b_lambda!269407 (or b!7063666 b_lambda!269425)))

(declare-fun bs!1879428 () Bool)

(declare-fun d!2208591 () Bool)

(assert (= bs!1879428 (and d!2208591 b!7063666)))

(declare-fun nullableContext!110 (Context!13204) Bool)

(assert (=> bs!1879428 (= (dynLambda!27706 lambda!422983 lt!2538912) (nullableContext!110 lt!2538912))))

(declare-fun m!7785946 () Bool)

(assert (=> bs!1879428 m!7785946))

(assert (=> d!2208455 d!2208591))

(declare-fun b_lambda!269427 () Bool)

(assert (= b_lambda!269419 (or b!7063683 b_lambda!269427)))

(declare-fun bs!1879429 () Bool)

(declare-fun d!2208593 () Bool)

(assert (= bs!1879429 (and d!2208593 b!7063683)))

(assert (=> bs!1879429 (= (dynLambda!27708 lambda!422982 lt!2538701) (derivationStepZipperUp!2190 lt!2538701 (h!74669 s!7408)))))

(assert (=> bs!1879429 m!7785294))

(assert (=> d!2208575 d!2208593))

(declare-fun b_lambda!269429 () Bool)

(assert (= b_lambda!269409 (or b!7063661 b_lambda!269429)))

(declare-fun bs!1879430 () Bool)

(declare-fun d!2208595 () Bool)

(assert (= bs!1879430 (and d!2208595 b!7063661)))

(declare-fun lt!2538983 () Unit!161892)

(assert (=> bs!1879430 (= lt!2538983 (lemmaConcatPreservesForall!917 (exprs!7102 lt!2538928) (exprs!7102 ct2!306) lambda!422981))))

(assert (=> bs!1879430 (= (dynLambda!27707 lambda!422980 lt!2538928) (Context!13205 (++!15710 (exprs!7102 lt!2538928) (exprs!7102 ct2!306))))))

(declare-fun m!7785948 () Bool)

(assert (=> bs!1879430 m!7785948))

(declare-fun m!7785950 () Bool)

(assert (=> bs!1879430 m!7785950))

(assert (=> d!2208465 d!2208595))

(declare-fun b_lambda!269431 () Bool)

(assert (= b_lambda!269415 (or b!7063683 b_lambda!269431)))

(declare-fun bs!1879431 () Bool)

(declare-fun d!2208597 () Bool)

(assert (= bs!1879431 (and d!2208597 b!7063683)))

(assert (=> bs!1879431 (= (dynLambda!27708 lambda!422982 lt!2538642) (derivationStepZipperUp!2190 lt!2538642 (h!74669 s!7408)))))

(assert (=> bs!1879431 m!7785326))

(assert (=> d!2208501 d!2208597))

(declare-fun b_lambda!269433 () Bool)

(assert (= b_lambda!269417 (or b!7063661 b_lambda!269433)))

(declare-fun bs!1879432 () Bool)

(declare-fun d!2208599 () Bool)

(assert (= bs!1879432 (and d!2208599 b!7063661)))

(declare-fun lt!2538984 () Unit!161892)

(assert (=> bs!1879432 (= lt!2538984 (lemmaConcatPreservesForall!917 (exprs!7102 lt!2538672) (exprs!7102 ct2!306) lambda!422981))))

(assert (=> bs!1879432 (= (dynLambda!27707 lambda!422980 lt!2538672) (Context!13205 (++!15710 (exprs!7102 lt!2538672) (exprs!7102 ct2!306))))))

(declare-fun m!7785952 () Bool)

(assert (=> bs!1879432 m!7785952))

(declare-fun m!7785954 () Bool)

(assert (=> bs!1879432 m!7785954))

(assert (=> d!2208541 d!2208599))

(declare-fun b_lambda!269435 () Bool)

(assert (= b_lambda!269411 (or b!7063683 b_lambda!269435)))

(declare-fun bs!1879433 () Bool)

(declare-fun d!2208601 () Bool)

(assert (= bs!1879433 (and d!2208601 b!7063683)))

(assert (=> bs!1879433 (= (dynLambda!27708 lambda!422982 lt!2538672) (derivationStepZipperUp!2190 lt!2538672 (h!74669 s!7408)))))

(assert (=> bs!1879433 m!7785316))

(assert (=> d!2208479 d!2208601))

(declare-fun b_lambda!269437 () Bool)

(assert (= b_lambda!269421 (or b!7063679 b_lambda!269437)))

(declare-fun bs!1879434 () Bool)

(declare-fun d!2208603 () Bool)

(assert (= bs!1879434 (and d!2208603 b!7063679)))

(assert (=> bs!1879434 (= (dynLambda!27706 lambda!422979 lt!2538978) (matchZipper!3146 (set.insert lt!2538978 (as set.empty (Set Context!13204))) s!7408))))

(declare-fun m!7785956 () Bool)

(assert (=> bs!1879434 m!7785956))

(assert (=> bs!1879434 m!7785956))

(declare-fun m!7785958 () Bool)

(assert (=> bs!1879434 m!7785958))

(assert (=> d!2208579 d!2208603))

(push 1)

(assert (not b!7063880))

(assert tp_is_empty!44437)

(assert (not b!7063911))

(assert (not d!2208453))

(assert (not d!2208521))

(assert (not b!7063959))

(assert (not b!7063987))

(assert (not b!7063899))

(assert (not bs!1879432))

(assert (not b!7063986))

(assert (not d!2208489))

(assert (not bm!641885))

(assert (not b!7063893))

(assert (not b!7063982))

(assert (not b!7063993))

(assert (not b!7063997))

(assert (not bs!1879428))

(assert (not d!2208585))

(assert (not d!2208501))

(assert (not d!2208479))

(assert (not b!7063791))

(assert (not b_lambda!269435))

(assert (not b!7063921))

(assert (not b_lambda!269431))

(assert (not d!2208515))

(assert (not d!2208565))

(assert (not d!2208561))

(assert (not b!7063900))

(assert (not bs!1879427))

(assert (not b!7064008))

(assert (not bm!641861))

(assert (not b!7063996))

(assert (not b!7063963))

(assert (not d!2208523))

(assert (not d!2208535))

(assert (not d!2208507))

(assert (not b!7063980))

(assert (not d!2208553))

(assert (not b!7063922))

(assert (not b!7063976))

(assert (not b!7063945))

(assert (not bs!1879429))

(assert (not bm!641881))

(assert (not b!7063888))

(assert (not d!2208579))

(assert (not b!7063913))

(assert (not b_lambda!269427))

(assert (not d!2208491))

(assert (not bs!1879433))

(assert (not b!7063981))

(assert (not bm!641874))

(assert (not d!2208475))

(assert (not d!2208455))

(assert (not b!7063915))

(assert (not b!7063842))

(assert (not b!7063843))

(assert (not b!7063914))

(assert (not d!2208465))

(assert (not b!7063889))

(assert (not b!7063844))

(assert (not d!2208457))

(assert (not d!2208557))

(assert (not b!7063989))

(assert (not b!7063985))

(assert (not d!2208485))

(assert (not b_lambda!269429))

(assert (not b!7063845))

(assert (not b!7063983))

(assert (not d!2208505))

(assert (not d!2208449))

(assert (not b!7063973))

(assert (not b!7063942))

(assert (not d!2208477))

(assert (not d!2208451))

(assert (not d!2208495))

(assert (not b!7063817))

(assert (not b_lambda!269425))

(assert (not b!7063846))

(assert (not d!2208547))

(assert (not b!7063919))

(assert (not b!7063951))

(assert (not b!7063971))

(assert (not b!7063978))

(assert (not d!2208541))

(assert (not d!2208577))

(assert (not d!2208587))

(assert (not b!7063953))

(assert (not b!7063928))

(assert (not d!2208559))

(assert (not bm!641860))

(assert (not d!2208563))

(assert (not b!7063849))

(assert (not d!2208575))

(assert (not d!2208571))

(assert (not b!7063841))

(assert (not bs!1879434))

(assert (not d!2208533))

(assert (not b!7063975))

(assert (not setNonEmpty!50064))

(assert (not b!7063894))

(assert (not b!7063815))

(assert (not b!7063819))

(assert (not b!7063827))

(assert (not b!7063853))

(assert (not d!2208573))

(assert (not bm!641878))

(assert (not d!2208567))

(assert (not b!7063984))

(assert (not bm!641882))

(assert (not b!7063897))

(assert (not b!7063790))

(assert (not d!2208467))

(assert (not b!7064009))

(assert (not b!7063958))

(assert (not b_lambda!269437))

(assert (not b!7064014))

(assert (not bs!1879430))

(assert (not b!7063994))

(assert (not b!7063988))

(assert (not d!2208581))

(assert (not b!7063920))

(assert (not b!7064003))

(assert (not d!2208527))

(assert (not d!2208525))

(assert (not d!2208531))

(assert (not d!2208519))

(assert (not d!2208463))

(assert (not b!7063932))

(assert (not bm!641886))

(assert (not d!2208583))

(assert (not d!2208459))

(assert (not b!7063977))

(assert (not b!7063854))

(assert (not d!2208569))

(assert (not b!7063898))

(assert (not d!2208497))

(assert (not b!7063818))

(assert (not b!7063820))

(assert (not b!7063826))

(assert (not d!2208517))

(assert (not d!2208503))

(assert (not bm!641877))

(assert (not d!2208511))

(assert (not bs!1879431))

(assert (not b!7063813))

(assert (not b!7063910))

(assert (not bm!641880))

(assert (not b_lambda!269423))

(assert (not d!2208447))

(assert (not b!7063943))

(assert (not d!2208537))

(assert (not b_lambda!269433))

(assert (not d!2208445))

(assert (not b!7063917))

(assert (not d!2208483))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

