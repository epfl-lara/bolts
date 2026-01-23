; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!675266 () Bool)

(assert start!675266)

(declare-fun b!7010856 () Bool)

(assert (=> b!7010856 true))

(declare-fun b!7010850 () Bool)

(assert (=> b!7010850 true))

(declare-fun b!7010846 () Bool)

(assert (=> b!7010846 true))

(declare-fun setNonEmpty!48368 () Bool)

(declare-datatypes ((C!34910 0))(
  ( (C!34911 (val!27157 Int)) )
))
(declare-datatypes ((Regex!17320 0))(
  ( (ElementMatch!17320 (c!1302278 C!34910)) (Concat!26165 (regOne!35152 Regex!17320) (regTwo!35152 Regex!17320)) (EmptyExpr!17320) (Star!17320 (reg!17649 Regex!17320)) (EmptyLang!17320) (Union!17320 (regOne!35153 Regex!17320) (regTwo!35153 Regex!17320)) )
))
(declare-datatypes ((List!67505 0))(
  ( (Nil!67381) (Cons!67381 (h!73829 Regex!17320) (t!381260 List!67505)) )
))
(declare-datatypes ((Context!12632 0))(
  ( (Context!12633 (exprs!6816 List!67505)) )
))
(declare-fun setElem!48368 () Context!12632)

(declare-fun setRes!48368 () Bool)

(declare-fun e!4214267 () Bool)

(declare-fun tp!1932414 () Bool)

(declare-fun inv!86160 (Context!12632) Bool)

(assert (=> setNonEmpty!48368 (= setRes!48368 (and tp!1932414 (inv!86160 setElem!48368) e!4214267))))

(declare-fun z1!570 () (Set Context!12632))

(declare-fun setRest!48368 () (Set Context!12632))

(assert (=> setNonEmpty!48368 (= z1!570 (set.union (set.insert setElem!48368 (as set.empty (Set Context!12632))) setRest!48368))))

(declare-fun e!4214270 () Bool)

(declare-fun e!4214262 () Bool)

(assert (=> b!7010846 (= e!4214270 e!4214262)))

(declare-fun res!2860765 () Bool)

(assert (=> b!7010846 (=> res!2860765 e!4214262)))

(declare-fun lt!2504411 () (Set Context!12632))

(declare-datatypes ((List!67506 0))(
  ( (Nil!67382) (Cons!67382 (h!73830 C!34910) (t!381261 List!67506)) )
))
(declare-fun s!7408 () List!67506)

(declare-fun lt!2504429 () (Set Context!12632))

(declare-fun derivationStepZipper!2800 ((Set Context!12632) C!34910) (Set Context!12632))

(assert (=> b!7010846 (= res!2860765 (not (= (derivationStepZipper!2800 lt!2504411 (h!73830 s!7408)) lt!2504429)))))

(declare-fun lambda!408559 () Int)

(declare-fun lt!2504431 () Context!12632)

(declare-fun flatMap!2306 ((Set Context!12632) Int) (Set Context!12632))

(declare-fun derivationStepZipperUp!1970 (Context!12632 C!34910) (Set Context!12632))

(assert (=> b!7010846 (= (flatMap!2306 lt!2504411 lambda!408559) (derivationStepZipperUp!1970 lt!2504431 (h!73830 s!7408)))))

(declare-datatypes ((Unit!161318 0))(
  ( (Unit!161319) )
))
(declare-fun lt!2504427 () Unit!161318)

(declare-fun lemmaFlatMapOnSingletonSet!1821 ((Set Context!12632) Context!12632 Int) Unit!161318)

(assert (=> b!7010846 (= lt!2504427 (lemmaFlatMapOnSingletonSet!1821 lt!2504411 lt!2504431 lambda!408559))))

(assert (=> b!7010846 (= lt!2504429 (derivationStepZipperUp!1970 lt!2504431 (h!73830 s!7408)))))

(declare-fun lt!2504404 () Unit!161318)

(declare-fun lambda!408558 () Int)

(declare-fun ct2!306 () Context!12632)

(declare-fun lt!2504399 () Context!12632)

(declare-fun lemmaConcatPreservesForall!656 (List!67505 List!67505 Int) Unit!161318)

(assert (=> b!7010846 (= lt!2504404 (lemmaConcatPreservesForall!656 (exprs!6816 lt!2504399) (exprs!6816 ct2!306) lambda!408558))))

(declare-fun b!7010847 () Bool)

(declare-fun e!4214264 () Bool)

(assert (=> b!7010847 (= e!4214262 e!4214264)))

(declare-fun res!2860761 () Bool)

(assert (=> b!7010847 (=> res!2860761 e!4214264)))

(declare-fun nullable!7080 (Regex!17320) Bool)

(assert (=> b!7010847 (= res!2860761 (not (nullable!7080 (h!73829 (exprs!6816 lt!2504399)))))))

(declare-fun lt!2504416 () Context!12632)

(declare-fun lt!2504432 () List!67505)

(assert (=> b!7010847 (= lt!2504416 (Context!12633 lt!2504432))))

(declare-fun tail!13396 (List!67505) List!67505)

(assert (=> b!7010847 (= lt!2504432 (tail!13396 (exprs!6816 lt!2504399)))))

(declare-fun b!7010848 () Bool)

(declare-fun res!2860779 () Bool)

(declare-fun e!4214269 () Bool)

(assert (=> b!7010848 (=> res!2860779 e!4214269)))

(declare-fun lt!2504412 () Bool)

(assert (=> b!7010848 (= res!2860779 (not lt!2504412))))

(declare-fun b!7010849 () Bool)

(declare-fun e!4214266 () Bool)

(declare-fun lt!2504395 () (Set Context!12632))

(declare-fun matchZipper!2860 ((Set Context!12632) List!67506) Bool)

(assert (=> b!7010849 (= e!4214266 (not (matchZipper!2860 lt!2504395 (t!381261 s!7408))))))

(declare-fun lt!2504435 () Unit!161318)

(assert (=> b!7010849 (= lt!2504435 (lemmaConcatPreservesForall!656 lt!2504432 (exprs!6816 ct2!306) lambda!408558))))

(declare-fun e!4214263 () Bool)

(declare-fun e!4214260 () Bool)

(assert (=> b!7010850 (= e!4214263 e!4214260)))

(declare-fun res!2860782 () Bool)

(assert (=> b!7010850 (=> res!2860782 e!4214260)))

(declare-fun lt!2504420 () Context!12632)

(assert (=> b!7010850 (= res!2860782 (or (not (= lt!2504431 lt!2504420)) (not (set.member lt!2504399 z1!570))))))

(declare-fun ++!15319 (List!67505 List!67505) List!67505)

(assert (=> b!7010850 (= lt!2504431 (Context!12633 (++!15319 (exprs!6816 lt!2504399) (exprs!6816 ct2!306))))))

(declare-fun lt!2504423 () Unit!161318)

(assert (=> b!7010850 (= lt!2504423 (lemmaConcatPreservesForall!656 (exprs!6816 lt!2504399) (exprs!6816 ct2!306) lambda!408558))))

(declare-fun lambda!408557 () Int)

(declare-fun mapPost2!175 ((Set Context!12632) Int Context!12632) Context!12632)

(assert (=> b!7010850 (= lt!2504399 (mapPost2!175 z1!570 lambda!408557 lt!2504420))))

(declare-fun b!7010851 () Bool)

(declare-fun e!4214268 () Bool)

(declare-fun validRegex!8890 (Regex!17320) Bool)

(assert (=> b!7010851 (= e!4214268 (validRegex!8890 (h!73829 (exprs!6816 lt!2504399))))))

(declare-fun b!7010852 () Bool)

(declare-fun e!4214265 () Bool)

(assert (=> b!7010852 (= e!4214269 e!4214265)))

(declare-fun res!2860764 () Bool)

(assert (=> b!7010852 (=> res!2860764 e!4214265)))

(assert (=> b!7010852 (= res!2860764 (matchZipper!2860 lt!2504395 (t!381261 s!7408)))))

(declare-fun lt!2504397 () Unit!161318)

(assert (=> b!7010852 (= lt!2504397 (lemmaConcatPreservesForall!656 lt!2504432 (exprs!6816 ct2!306) lambda!408558))))

(declare-fun b!7010853 () Bool)

(declare-fun res!2860777 () Bool)

(assert (=> b!7010853 (=> res!2860777 e!4214262)))

(assert (=> b!7010853 (= res!2860777 (not (is-Cons!67381 (exprs!6816 lt!2504399))))))

(declare-fun b!7010854 () Bool)

(declare-fun res!2860775 () Bool)

(declare-fun e!4214256 () Bool)

(assert (=> b!7010854 (=> (not res!2860775) (not e!4214256))))

(assert (=> b!7010854 (= res!2860775 (is-Cons!67382 s!7408))))

(declare-fun b!7010855 () Bool)

(declare-fun res!2860774 () Bool)

(assert (=> b!7010855 (=> res!2860774 e!4214262)))

(declare-fun isEmpty!39354 (List!67505) Bool)

(assert (=> b!7010855 (= res!2860774 (isEmpty!39354 (exprs!6816 lt!2504399)))))

(assert (=> b!7010856 (= e!4214256 (not e!4214263))))

(declare-fun res!2860762 () Bool)

(assert (=> b!7010856 (=> res!2860762 e!4214263)))

(declare-fun lt!2504406 () (Set Context!12632))

(assert (=> b!7010856 (= res!2860762 (not (matchZipper!2860 lt!2504406 s!7408)))))

(assert (=> b!7010856 (= lt!2504406 (set.insert lt!2504420 (as set.empty (Set Context!12632))))))

(declare-fun lt!2504405 () (Set Context!12632))

(declare-fun lambda!408556 () Int)

(declare-fun getWitness!1263 ((Set Context!12632) Int) Context!12632)

(assert (=> b!7010856 (= lt!2504420 (getWitness!1263 lt!2504405 lambda!408556))))

(declare-datatypes ((List!67507 0))(
  ( (Nil!67383) (Cons!67383 (h!73831 Context!12632) (t!381262 List!67507)) )
))
(declare-fun lt!2504402 () List!67507)

(declare-fun exists!3165 (List!67507 Int) Bool)

(assert (=> b!7010856 (exists!3165 lt!2504402 lambda!408556)))

(declare-fun lt!2504407 () Unit!161318)

(declare-fun lemmaZipperMatchesExistsMatchingContext!289 (List!67507 List!67506) Unit!161318)

(assert (=> b!7010856 (= lt!2504407 (lemmaZipperMatchesExistsMatchingContext!289 lt!2504402 s!7408))))

(declare-fun toList!10680 ((Set Context!12632)) List!67507)

(assert (=> b!7010856 (= lt!2504402 (toList!10680 lt!2504405))))

(declare-fun b!7010857 () Bool)

(declare-fun e!4214272 () Bool)

(assert (=> b!7010857 (= e!4214272 e!4214269)))

(declare-fun res!2860771 () Bool)

(assert (=> b!7010857 (=> res!2860771 e!4214269)))

(assert (=> b!7010857 (= res!2860771 e!4214266)))

(declare-fun res!2860772 () Bool)

(assert (=> b!7010857 (=> (not res!2860772) (not e!4214266))))

(declare-fun lt!2504424 () Bool)

(assert (=> b!7010857 (= res!2860772 (not (= lt!2504412 lt!2504424)))))

(assert (=> b!7010857 (= lt!2504412 (matchZipper!2860 lt!2504429 (t!381261 s!7408)))))

(declare-fun lt!2504428 () Unit!161318)

(assert (=> b!7010857 (= lt!2504428 (lemmaConcatPreservesForall!656 lt!2504432 (exprs!6816 ct2!306) lambda!408558))))

(declare-fun lt!2504426 () (Set Context!12632))

(declare-fun e!4214258 () Bool)

(assert (=> b!7010857 (= (matchZipper!2860 lt!2504426 (t!381261 s!7408)) e!4214258)))

(declare-fun res!2860773 () Bool)

(assert (=> b!7010857 (=> res!2860773 e!4214258)))

(assert (=> b!7010857 (= res!2860773 lt!2504424)))

(declare-fun lt!2504417 () (Set Context!12632))

(assert (=> b!7010857 (= lt!2504424 (matchZipper!2860 lt!2504417 (t!381261 s!7408)))))

(declare-fun lt!2504408 () Unit!161318)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1493 ((Set Context!12632) (Set Context!12632) List!67506) Unit!161318)

(assert (=> b!7010857 (= lt!2504408 (lemmaZipperConcatMatchesSameAsBothZippers!1493 lt!2504417 lt!2504395 (t!381261 s!7408)))))

(declare-fun lt!2504434 () Unit!161318)

(assert (=> b!7010857 (= lt!2504434 (lemmaConcatPreservesForall!656 lt!2504432 (exprs!6816 ct2!306) lambda!408558))))

(declare-fun lt!2504410 () Unit!161318)

(assert (=> b!7010857 (= lt!2504410 (lemmaConcatPreservesForall!656 lt!2504432 (exprs!6816 ct2!306) lambda!408558))))

(declare-fun b!7010858 () Bool)

(assert (=> b!7010858 (= e!4214264 e!4214272)))

(declare-fun res!2860776 () Bool)

(assert (=> b!7010858 (=> res!2860776 e!4214272)))

(assert (=> b!7010858 (= res!2860776 (not (= lt!2504429 lt!2504426)))))

(assert (=> b!7010858 (= lt!2504426 (set.union lt!2504417 lt!2504395))))

(declare-fun lt!2504433 () Context!12632)

(assert (=> b!7010858 (= lt!2504395 (derivationStepZipperUp!1970 lt!2504433 (h!73830 s!7408)))))

(declare-fun derivationStepZipperDown!2038 (Regex!17320 Context!12632 C!34910) (Set Context!12632))

(assert (=> b!7010858 (= lt!2504417 (derivationStepZipperDown!2038 (h!73829 (exprs!6816 lt!2504399)) lt!2504433 (h!73830 s!7408)))))

(assert (=> b!7010858 (= lt!2504433 (Context!12633 (++!15319 lt!2504432 (exprs!6816 ct2!306))))))

(declare-fun lt!2504413 () Unit!161318)

(assert (=> b!7010858 (= lt!2504413 (lemmaConcatPreservesForall!656 lt!2504432 (exprs!6816 ct2!306) lambda!408558))))

(declare-fun lt!2504409 () Unit!161318)

(assert (=> b!7010858 (= lt!2504409 (lemmaConcatPreservesForall!656 lt!2504432 (exprs!6816 ct2!306) lambda!408558))))

(declare-fun res!2860768 () Bool)

(assert (=> start!675266 (=> (not res!2860768) (not e!4214256))))

(assert (=> start!675266 (= res!2860768 (matchZipper!2860 lt!2504405 s!7408))))

(declare-fun appendTo!441 ((Set Context!12632) Context!12632) (Set Context!12632))

(assert (=> start!675266 (= lt!2504405 (appendTo!441 z1!570 ct2!306))))

(assert (=> start!675266 e!4214256))

(declare-fun condSetEmpty!48368 () Bool)

(assert (=> start!675266 (= condSetEmpty!48368 (= z1!570 (as set.empty (Set Context!12632))))))

(assert (=> start!675266 setRes!48368))

(declare-fun e!4214259 () Bool)

(assert (=> start!675266 (and (inv!86160 ct2!306) e!4214259)))

(declare-fun e!4214257 () Bool)

(assert (=> start!675266 e!4214257))

(declare-fun b!7010859 () Bool)

(declare-fun tp_is_empty!43865 () Bool)

(declare-fun tp!1932411 () Bool)

(assert (=> b!7010859 (= e!4214257 (and tp_is_empty!43865 tp!1932411))))

(declare-fun b!7010860 () Bool)

(declare-fun tp!1932413 () Bool)

(assert (=> b!7010860 (= e!4214259 tp!1932413)))

(declare-fun b!7010861 () Bool)

(declare-fun res!2860780 () Bool)

(declare-fun e!4214261 () Bool)

(assert (=> b!7010861 (=> res!2860780 e!4214261)))

(declare-fun lt!2504401 () (Set Context!12632))

(declare-datatypes ((tuple2!67946 0))(
  ( (tuple2!67947 (_1!37276 List!67506) (_2!37276 List!67506)) )
))
(declare-fun lt!2504430 () tuple2!67946)

(assert (=> b!7010861 (= res!2860780 (not (matchZipper!2860 lt!2504401 (_2!37276 lt!2504430))))))

(declare-fun b!7010862 () Bool)

(declare-fun res!2860769 () Bool)

(assert (=> b!7010862 (=> res!2860769 e!4214261)))

(declare-fun ++!15320 (List!67506 List!67506) List!67506)

(assert (=> b!7010862 (= res!2860769 (not (= (++!15320 (_1!37276 lt!2504430) (_2!37276 lt!2504430)) (t!381261 s!7408))))))

(declare-fun b!7010863 () Bool)

(assert (=> b!7010863 (= e!4214260 e!4214270)))

(declare-fun res!2860763 () Bool)

(assert (=> b!7010863 (=> res!2860763 e!4214270)))

(assert (=> b!7010863 (= res!2860763 (not (= lt!2504411 lt!2504406)))))

(assert (=> b!7010863 (= lt!2504411 (set.insert lt!2504431 (as set.empty (Set Context!12632))))))

(declare-fun lt!2504422 () Unit!161318)

(assert (=> b!7010863 (= lt!2504422 (lemmaConcatPreservesForall!656 (exprs!6816 lt!2504399) (exprs!6816 ct2!306) lambda!408558))))

(declare-fun b!7010864 () Bool)

(assert (=> b!7010864 (= e!4214261 e!4214268)))

(declare-fun res!2860767 () Bool)

(assert (=> b!7010864 (=> res!2860767 e!4214268)))

(declare-fun lt!2504415 () (Set Context!12632))

(declare-fun lt!2504403 () (Set Context!12632))

(assert (=> b!7010864 (= res!2860767 (not (= lt!2504415 lt!2504403)))))

(declare-fun lt!2504436 () (Set Context!12632))

(assert (=> b!7010864 (= (flatMap!2306 lt!2504436 lambda!408559) (derivationStepZipperUp!1970 lt!2504399 (h!73830 s!7408)))))

(declare-fun lt!2504400 () Unit!161318)

(assert (=> b!7010864 (= lt!2504400 (lemmaFlatMapOnSingletonSet!1821 lt!2504436 lt!2504399 lambda!408559))))

(assert (=> b!7010864 (= lt!2504403 (derivationStepZipperUp!1970 lt!2504399 (h!73830 s!7408)))))

(assert (=> b!7010864 (= lt!2504415 (derivationStepZipper!2800 lt!2504436 (h!73830 s!7408)))))

(assert (=> b!7010864 (= lt!2504436 (set.insert lt!2504399 (as set.empty (Set Context!12632))))))

(declare-fun b!7010865 () Bool)

(declare-fun res!2860781 () Bool)

(assert (=> b!7010865 (=> res!2860781 e!4214263)))

(assert (=> b!7010865 (= res!2860781 (not (set.member lt!2504420 lt!2504405)))))

(declare-fun b!7010866 () Bool)

(assert (=> b!7010866 (= e!4214258 (matchZipper!2860 lt!2504395 (t!381261 s!7408)))))

(declare-fun b!7010867 () Bool)

(declare-fun res!2860766 () Bool)

(assert (=> b!7010867 (=> res!2860766 e!4214268)))

(declare-fun lt!2504425 () (Set Context!12632))

(assert (=> b!7010867 (= res!2860766 (not (= lt!2504415 (set.union lt!2504425 (derivationStepZipperUp!1970 lt!2504416 (h!73830 s!7408))))))))

(declare-fun b!7010868 () Bool)

(declare-fun e!4214271 () Bool)

(assert (=> b!7010868 (= e!4214265 e!4214271)))

(declare-fun res!2860770 () Bool)

(assert (=> b!7010868 (=> res!2860770 e!4214271)))

(assert (=> b!7010868 (= res!2860770 (not lt!2504424))))

(declare-fun lt!2504421 () Unit!161318)

(assert (=> b!7010868 (= lt!2504421 (lemmaConcatPreservesForall!656 lt!2504432 (exprs!6816 ct2!306) lambda!408558))))

(declare-fun lt!2504396 () Unit!161318)

(assert (=> b!7010868 (= lt!2504396 (lemmaConcatPreservesForall!656 lt!2504432 (exprs!6816 ct2!306) lambda!408558))))

(declare-fun setIsEmpty!48368 () Bool)

(assert (=> setIsEmpty!48368 setRes!48368))

(declare-fun b!7010869 () Bool)

(declare-fun tp!1932412 () Bool)

(assert (=> b!7010869 (= e!4214267 tp!1932412)))

(declare-fun b!7010870 () Bool)

(assert (=> b!7010870 (= e!4214271 e!4214261)))

(declare-fun res!2860778 () Bool)

(assert (=> b!7010870 (=> res!2860778 e!4214261)))

(assert (=> b!7010870 (= res!2860778 (not (matchZipper!2860 lt!2504425 (_1!37276 lt!2504430))))))

(declare-datatypes ((Option!16805 0))(
  ( (None!16804) (Some!16804 (v!53082 tuple2!67946)) )
))
(declare-fun lt!2504398 () Option!16805)

(declare-fun get!23627 (Option!16805) tuple2!67946)

(assert (=> b!7010870 (= lt!2504430 (get!23627 lt!2504398))))

(declare-fun isDefined!13506 (Option!16805) Bool)

(assert (=> b!7010870 (isDefined!13506 lt!2504398)))

(declare-fun findConcatSeparationZippers!321 ((Set Context!12632) (Set Context!12632) List!67506 List!67506 List!67506) Option!16805)

(assert (=> b!7010870 (= lt!2504398 (findConcatSeparationZippers!321 lt!2504425 lt!2504401 Nil!67382 (t!381261 s!7408) (t!381261 s!7408)))))

(assert (=> b!7010870 (= lt!2504401 (set.insert ct2!306 (as set.empty (Set Context!12632))))))

(declare-fun lt!2504419 () Unit!161318)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!321 ((Set Context!12632) Context!12632 List!67506) Unit!161318)

(assert (=> b!7010870 (= lt!2504419 (lemmaConcatZipperMatchesStringThenFindConcatDefined!321 lt!2504425 ct2!306 (t!381261 s!7408)))))

(declare-fun lt!2504414 () Unit!161318)

(assert (=> b!7010870 (= lt!2504414 (lemmaConcatPreservesForall!656 lt!2504432 (exprs!6816 ct2!306) lambda!408558))))

(assert (=> b!7010870 (= lt!2504417 (appendTo!441 lt!2504425 ct2!306))))

(assert (=> b!7010870 (= lt!2504425 (derivationStepZipperDown!2038 (h!73829 (exprs!6816 lt!2504399)) lt!2504416 (h!73830 s!7408)))))

(declare-fun lt!2504418 () Unit!161318)

(assert (=> b!7010870 (= lt!2504418 (lemmaConcatPreservesForall!656 lt!2504432 (exprs!6816 ct2!306) lambda!408558))))

(declare-fun lt!2504394 () Unit!161318)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!19 (Context!12632 Regex!17320 C!34910 Context!12632) Unit!161318)

(assert (=> b!7010870 (= lt!2504394 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!19 lt!2504416 (h!73829 (exprs!6816 lt!2504399)) (h!73830 s!7408) ct2!306))))

(assert (= (and start!675266 res!2860768) b!7010854))

(assert (= (and b!7010854 res!2860775) b!7010856))

(assert (= (and b!7010856 (not res!2860762)) b!7010865))

(assert (= (and b!7010865 (not res!2860781)) b!7010850))

(assert (= (and b!7010850 (not res!2860782)) b!7010863))

(assert (= (and b!7010863 (not res!2860763)) b!7010846))

(assert (= (and b!7010846 (not res!2860765)) b!7010853))

(assert (= (and b!7010853 (not res!2860777)) b!7010855))

(assert (= (and b!7010855 (not res!2860774)) b!7010847))

(assert (= (and b!7010847 (not res!2860761)) b!7010858))

(assert (= (and b!7010858 (not res!2860776)) b!7010857))

(assert (= (and b!7010857 (not res!2860773)) b!7010866))

(assert (= (and b!7010857 res!2860772) b!7010849))

(assert (= (and b!7010857 (not res!2860771)) b!7010848))

(assert (= (and b!7010848 (not res!2860779)) b!7010852))

(assert (= (and b!7010852 (not res!2860764)) b!7010868))

(assert (= (and b!7010868 (not res!2860770)) b!7010870))

(assert (= (and b!7010870 (not res!2860778)) b!7010861))

(assert (= (and b!7010861 (not res!2860780)) b!7010862))

(assert (= (and b!7010862 (not res!2860769)) b!7010864))

(assert (= (and b!7010864 (not res!2860767)) b!7010867))

(assert (= (and b!7010867 (not res!2860766)) b!7010851))

(assert (= (and start!675266 condSetEmpty!48368) setIsEmpty!48368))

(assert (= (and start!675266 (not condSetEmpty!48368)) setNonEmpty!48368))

(assert (= setNonEmpty!48368 b!7010869))

(assert (= start!675266 b!7010860))

(assert (= (and start!675266 (is-Cons!67382 s!7408)) b!7010859))

(declare-fun m!7708838 () Bool)

(assert (=> b!7010865 m!7708838))

(declare-fun m!7708840 () Bool)

(assert (=> b!7010858 m!7708840))

(declare-fun m!7708842 () Bool)

(assert (=> b!7010858 m!7708842))

(declare-fun m!7708844 () Bool)

(assert (=> b!7010858 m!7708844))

(declare-fun m!7708846 () Bool)

(assert (=> b!7010858 m!7708846))

(assert (=> b!7010858 m!7708846))

(declare-fun m!7708848 () Bool)

(assert (=> b!7010857 m!7708848))

(assert (=> b!7010857 m!7708846))

(declare-fun m!7708850 () Bool)

(assert (=> b!7010857 m!7708850))

(assert (=> b!7010857 m!7708846))

(declare-fun m!7708852 () Bool)

(assert (=> b!7010857 m!7708852))

(declare-fun m!7708854 () Bool)

(assert (=> b!7010857 m!7708854))

(assert (=> b!7010857 m!7708846))

(declare-fun m!7708856 () Bool)

(assert (=> b!7010864 m!7708856))

(declare-fun m!7708858 () Bool)

(assert (=> b!7010864 m!7708858))

(declare-fun m!7708860 () Bool)

(assert (=> b!7010864 m!7708860))

(declare-fun m!7708862 () Bool)

(assert (=> b!7010864 m!7708862))

(declare-fun m!7708864 () Bool)

(assert (=> b!7010864 m!7708864))

(declare-fun m!7708866 () Bool)

(assert (=> b!7010870 m!7708866))

(declare-fun m!7708868 () Bool)

(assert (=> b!7010870 m!7708868))

(declare-fun m!7708870 () Bool)

(assert (=> b!7010870 m!7708870))

(declare-fun m!7708872 () Bool)

(assert (=> b!7010870 m!7708872))

(declare-fun m!7708874 () Bool)

(assert (=> b!7010870 m!7708874))

(declare-fun m!7708876 () Bool)

(assert (=> b!7010870 m!7708876))

(declare-fun m!7708878 () Bool)

(assert (=> b!7010870 m!7708878))

(declare-fun m!7708880 () Bool)

(assert (=> b!7010870 m!7708880))

(assert (=> b!7010870 m!7708846))

(declare-fun m!7708882 () Bool)

(assert (=> b!7010870 m!7708882))

(assert (=> b!7010870 m!7708846))

(declare-fun m!7708884 () Bool)

(assert (=> start!675266 m!7708884))

(declare-fun m!7708886 () Bool)

(assert (=> start!675266 m!7708886))

(declare-fun m!7708888 () Bool)

(assert (=> start!675266 m!7708888))

(declare-fun m!7708890 () Bool)

(assert (=> b!7010866 m!7708890))

(declare-fun m!7708892 () Bool)

(assert (=> b!7010861 m!7708892))

(declare-fun m!7708894 () Bool)

(assert (=> setNonEmpty!48368 m!7708894))

(declare-fun m!7708896 () Bool)

(assert (=> b!7010867 m!7708896))

(declare-fun m!7708898 () Bool)

(assert (=> b!7010862 m!7708898))

(declare-fun m!7708900 () Bool)

(assert (=> b!7010850 m!7708900))

(declare-fun m!7708902 () Bool)

(assert (=> b!7010850 m!7708902))

(declare-fun m!7708904 () Bool)

(assert (=> b!7010850 m!7708904))

(declare-fun m!7708906 () Bool)

(assert (=> b!7010850 m!7708906))

(declare-fun m!7708908 () Bool)

(assert (=> b!7010863 m!7708908))

(assert (=> b!7010863 m!7708904))

(declare-fun m!7708910 () Bool)

(assert (=> b!7010851 m!7708910))

(declare-fun m!7708912 () Bool)

(assert (=> b!7010846 m!7708912))

(declare-fun m!7708914 () Bool)

(assert (=> b!7010846 m!7708914))

(declare-fun m!7708916 () Bool)

(assert (=> b!7010846 m!7708916))

(assert (=> b!7010846 m!7708904))

(declare-fun m!7708918 () Bool)

(assert (=> b!7010846 m!7708918))

(declare-fun m!7708920 () Bool)

(assert (=> b!7010855 m!7708920))

(assert (=> b!7010849 m!7708890))

(assert (=> b!7010849 m!7708846))

(assert (=> b!7010852 m!7708890))

(assert (=> b!7010852 m!7708846))

(assert (=> b!7010868 m!7708846))

(assert (=> b!7010868 m!7708846))

(declare-fun m!7708922 () Bool)

(assert (=> b!7010847 m!7708922))

(declare-fun m!7708924 () Bool)

(assert (=> b!7010847 m!7708924))

(declare-fun m!7708926 () Bool)

(assert (=> b!7010856 m!7708926))

(declare-fun m!7708928 () Bool)

(assert (=> b!7010856 m!7708928))

(declare-fun m!7708930 () Bool)

(assert (=> b!7010856 m!7708930))

(declare-fun m!7708932 () Bool)

(assert (=> b!7010856 m!7708932))

(declare-fun m!7708934 () Bool)

(assert (=> b!7010856 m!7708934))

(declare-fun m!7708936 () Bool)

(assert (=> b!7010856 m!7708936))

(push 1)

(assert (not b!7010849))

(assert (not b!7010856))

(assert (not b!7010850))

(assert (not b!7010870))

(assert (not b!7010861))

(assert (not b!7010859))

(assert (not b!7010855))

(assert tp_is_empty!43865)

(assert (not start!675266))

(assert (not b!7010862))

(assert (not b!7010852))

(assert (not b!7010860))

(assert (not b!7010867))

(assert (not b!7010864))

(assert (not b!7010857))

(assert (not b!7010858))

(assert (not b!7010847))

(assert (not b!7010868))

(assert (not b!7010869))

(assert (not b!7010863))

(assert (not setNonEmpty!48368))

(assert (not b!7010866))

(assert (not b!7010846))

(assert (not b!7010851))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2185440 () Bool)

(declare-fun choose!52711 ((Set Context!12632) Int) (Set Context!12632))

(assert (=> d!2185440 (= (flatMap!2306 lt!2504436 lambda!408559) (choose!52711 lt!2504436 lambda!408559))))

(declare-fun bs!1866153 () Bool)

(assert (= bs!1866153 d!2185440))

(declare-fun m!7709038 () Bool)

(assert (=> bs!1866153 m!7709038))

(assert (=> b!7010864 d!2185440))

(declare-fun bm!636765 () Bool)

(declare-fun call!636770 () (Set Context!12632))

(assert (=> bm!636765 (= call!636770 (derivationStepZipperDown!2038 (h!73829 (exprs!6816 lt!2504399)) (Context!12633 (t!381260 (exprs!6816 lt!2504399))) (h!73830 s!7408)))))

(declare-fun b!7010968 () Bool)

(declare-fun e!4214331 () (Set Context!12632))

(assert (=> b!7010968 (= e!4214331 (as set.empty (Set Context!12632)))))

(declare-fun b!7010969 () Bool)

(declare-fun e!4214330 () (Set Context!12632))

(assert (=> b!7010969 (= e!4214330 e!4214331)))

(declare-fun c!1302295 () Bool)

(assert (=> b!7010969 (= c!1302295 (is-Cons!67381 (exprs!6816 lt!2504399)))))

(declare-fun d!2185442 () Bool)

(declare-fun c!1302294 () Bool)

(declare-fun e!4214332 () Bool)

(assert (=> d!2185442 (= c!1302294 e!4214332)))

(declare-fun res!2860852 () Bool)

(assert (=> d!2185442 (=> (not res!2860852) (not e!4214332))))

(assert (=> d!2185442 (= res!2860852 (is-Cons!67381 (exprs!6816 lt!2504399)))))

(assert (=> d!2185442 (= (derivationStepZipperUp!1970 lt!2504399 (h!73830 s!7408)) e!4214330)))

(declare-fun b!7010970 () Bool)

(assert (=> b!7010970 (= e!4214330 (set.union call!636770 (derivationStepZipperUp!1970 (Context!12633 (t!381260 (exprs!6816 lt!2504399))) (h!73830 s!7408))))))

(declare-fun b!7010971 () Bool)

(assert (=> b!7010971 (= e!4214331 call!636770)))

(declare-fun b!7010972 () Bool)

(assert (=> b!7010972 (= e!4214332 (nullable!7080 (h!73829 (exprs!6816 lt!2504399))))))

(assert (= (and d!2185442 res!2860852) b!7010972))

(assert (= (and d!2185442 c!1302294) b!7010970))

(assert (= (and d!2185442 (not c!1302294)) b!7010969))

(assert (= (and b!7010969 c!1302295) b!7010971))

(assert (= (and b!7010969 (not c!1302295)) b!7010968))

(assert (= (or b!7010970 b!7010971) bm!636765))

(declare-fun m!7709040 () Bool)

(assert (=> bm!636765 m!7709040))

(declare-fun m!7709042 () Bool)

(assert (=> b!7010970 m!7709042))

(assert (=> b!7010972 m!7708922))

(assert (=> b!7010864 d!2185442))

(declare-fun d!2185444 () Bool)

(declare-fun dynLambda!27106 (Int Context!12632) (Set Context!12632))

(assert (=> d!2185444 (= (flatMap!2306 lt!2504436 lambda!408559) (dynLambda!27106 lambda!408559 lt!2504399))))

(declare-fun lt!2504570 () Unit!161318)

(declare-fun choose!52712 ((Set Context!12632) Context!12632 Int) Unit!161318)

(assert (=> d!2185444 (= lt!2504570 (choose!52712 lt!2504436 lt!2504399 lambda!408559))))

(assert (=> d!2185444 (= lt!2504436 (set.insert lt!2504399 (as set.empty (Set Context!12632))))))

(assert (=> d!2185444 (= (lemmaFlatMapOnSingletonSet!1821 lt!2504436 lt!2504399 lambda!408559) lt!2504570)))

(declare-fun b_lambda!264375 () Bool)

(assert (=> (not b_lambda!264375) (not d!2185444)))

(declare-fun bs!1866154 () Bool)

(assert (= bs!1866154 d!2185444))

(assert (=> bs!1866154 m!7708856))

(declare-fun m!7709044 () Bool)

(assert (=> bs!1866154 m!7709044))

(declare-fun m!7709046 () Bool)

(assert (=> bs!1866154 m!7709046))

(assert (=> bs!1866154 m!7708858))

(assert (=> b!7010864 d!2185444))

(declare-fun bs!1866155 () Bool)

(declare-fun d!2185446 () Bool)

(assert (= bs!1866155 (and d!2185446 b!7010846)))

(declare-fun lambda!408606 () Int)

(assert (=> bs!1866155 (= lambda!408606 lambda!408559)))

(assert (=> d!2185446 true))

(assert (=> d!2185446 (= (derivationStepZipper!2800 lt!2504436 (h!73830 s!7408)) (flatMap!2306 lt!2504436 lambda!408606))))

(declare-fun bs!1866156 () Bool)

(assert (= bs!1866156 d!2185446))

(declare-fun m!7709048 () Bool)

(assert (=> bs!1866156 m!7709048))

(assert (=> b!7010864 d!2185446))

(declare-fun d!2185448 () Bool)

(assert (=> d!2185448 (= (isEmpty!39354 (exprs!6816 lt!2504399)) (is-Nil!67381 (exprs!6816 lt!2504399)))))

(assert (=> b!7010855 d!2185448))

(declare-fun d!2185450 () Bool)

(declare-fun c!1302300 () Bool)

(declare-fun isEmpty!39356 (List!67506) Bool)

(assert (=> d!2185450 (= c!1302300 (isEmpty!39356 (_2!37276 lt!2504430)))))

(declare-fun e!4214335 () Bool)

(assert (=> d!2185450 (= (matchZipper!2860 lt!2504401 (_2!37276 lt!2504430)) e!4214335)))

(declare-fun b!7010979 () Bool)

(declare-fun nullableZipper!2489 ((Set Context!12632)) Bool)

(assert (=> b!7010979 (= e!4214335 (nullableZipper!2489 lt!2504401))))

(declare-fun b!7010980 () Bool)

(declare-fun head!14175 (List!67506) C!34910)

(declare-fun tail!13398 (List!67506) List!67506)

(assert (=> b!7010980 (= e!4214335 (matchZipper!2860 (derivationStepZipper!2800 lt!2504401 (head!14175 (_2!37276 lt!2504430))) (tail!13398 (_2!37276 lt!2504430))))))

(assert (= (and d!2185450 c!1302300) b!7010979))

(assert (= (and d!2185450 (not c!1302300)) b!7010980))

(declare-fun m!7709050 () Bool)

(assert (=> d!2185450 m!7709050))

(declare-fun m!7709052 () Bool)

(assert (=> b!7010979 m!7709052))

(declare-fun m!7709054 () Bool)

(assert (=> b!7010980 m!7709054))

(assert (=> b!7010980 m!7709054))

(declare-fun m!7709056 () Bool)

(assert (=> b!7010980 m!7709056))

(declare-fun m!7709058 () Bool)

(assert (=> b!7010980 m!7709058))

(assert (=> b!7010980 m!7709056))

(assert (=> b!7010980 m!7709058))

(declare-fun m!7709060 () Bool)

(assert (=> b!7010980 m!7709060))

(assert (=> b!7010861 d!2185450))

(declare-fun b!7010991 () Bool)

(declare-fun res!2860858 () Bool)

(declare-fun e!4214340 () Bool)

(assert (=> b!7010991 (=> (not res!2860858) (not e!4214340))))

(declare-fun lt!2504573 () List!67505)

(declare-fun size!40975 (List!67505) Int)

(assert (=> b!7010991 (= res!2860858 (= (size!40975 lt!2504573) (+ (size!40975 (exprs!6816 lt!2504399)) (size!40975 (exprs!6816 ct2!306)))))))

(declare-fun b!7010989 () Bool)

(declare-fun e!4214341 () List!67505)

(assert (=> b!7010989 (= e!4214341 (exprs!6816 ct2!306))))

(declare-fun d!2185452 () Bool)

(assert (=> d!2185452 e!4214340))

(declare-fun res!2860857 () Bool)

(assert (=> d!2185452 (=> (not res!2860857) (not e!4214340))))

(declare-fun content!13376 (List!67505) (Set Regex!17320))

(assert (=> d!2185452 (= res!2860857 (= (content!13376 lt!2504573) (set.union (content!13376 (exprs!6816 lt!2504399)) (content!13376 (exprs!6816 ct2!306)))))))

(assert (=> d!2185452 (= lt!2504573 e!4214341)))

(declare-fun c!1302303 () Bool)

(assert (=> d!2185452 (= c!1302303 (is-Nil!67381 (exprs!6816 lt!2504399)))))

(assert (=> d!2185452 (= (++!15319 (exprs!6816 lt!2504399) (exprs!6816 ct2!306)) lt!2504573)))

(declare-fun b!7010990 () Bool)

(assert (=> b!7010990 (= e!4214341 (Cons!67381 (h!73829 (exprs!6816 lt!2504399)) (++!15319 (t!381260 (exprs!6816 lt!2504399)) (exprs!6816 ct2!306))))))

(declare-fun b!7010992 () Bool)

(assert (=> b!7010992 (= e!4214340 (or (not (= (exprs!6816 ct2!306) Nil!67381)) (= lt!2504573 (exprs!6816 lt!2504399))))))

(assert (= (and d!2185452 c!1302303) b!7010989))

(assert (= (and d!2185452 (not c!1302303)) b!7010990))

(assert (= (and d!2185452 res!2860857) b!7010991))

(assert (= (and b!7010991 res!2860858) b!7010992))

(declare-fun m!7709062 () Bool)

(assert (=> b!7010991 m!7709062))

(declare-fun m!7709064 () Bool)

(assert (=> b!7010991 m!7709064))

(declare-fun m!7709066 () Bool)

(assert (=> b!7010991 m!7709066))

(declare-fun m!7709068 () Bool)

(assert (=> d!2185452 m!7709068))

(declare-fun m!7709070 () Bool)

(assert (=> d!2185452 m!7709070))

(declare-fun m!7709072 () Bool)

(assert (=> d!2185452 m!7709072))

(declare-fun m!7709074 () Bool)

(assert (=> b!7010990 m!7709074))

(assert (=> b!7010850 d!2185452))

(declare-fun d!2185454 () Bool)

(declare-fun forall!16237 (List!67505 Int) Bool)

(assert (=> d!2185454 (forall!16237 (++!15319 (exprs!6816 lt!2504399) (exprs!6816 ct2!306)) lambda!408558)))

(declare-fun lt!2504576 () Unit!161318)

(declare-fun choose!52713 (List!67505 List!67505 Int) Unit!161318)

(assert (=> d!2185454 (= lt!2504576 (choose!52713 (exprs!6816 lt!2504399) (exprs!6816 ct2!306) lambda!408558))))

(assert (=> d!2185454 (forall!16237 (exprs!6816 lt!2504399) lambda!408558)))

(assert (=> d!2185454 (= (lemmaConcatPreservesForall!656 (exprs!6816 lt!2504399) (exprs!6816 ct2!306) lambda!408558) lt!2504576)))

(declare-fun bs!1866157 () Bool)

(assert (= bs!1866157 d!2185454))

(assert (=> bs!1866157 m!7708902))

(assert (=> bs!1866157 m!7708902))

(declare-fun m!7709076 () Bool)

(assert (=> bs!1866157 m!7709076))

(declare-fun m!7709078 () Bool)

(assert (=> bs!1866157 m!7709078))

(declare-fun m!7709080 () Bool)

(assert (=> bs!1866157 m!7709080))

(assert (=> b!7010850 d!2185454))

(declare-fun d!2185456 () Bool)

(declare-fun e!4214344 () Bool)

(assert (=> d!2185456 e!4214344))

(declare-fun res!2860861 () Bool)

(assert (=> d!2185456 (=> (not res!2860861) (not e!4214344))))

(declare-fun lt!2504579 () Context!12632)

(declare-fun dynLambda!27107 (Int Context!12632) Context!12632)

(assert (=> d!2185456 (= res!2860861 (= lt!2504420 (dynLambda!27107 lambda!408557 lt!2504579)))))

(declare-fun choose!52714 ((Set Context!12632) Int Context!12632) Context!12632)

(assert (=> d!2185456 (= lt!2504579 (choose!52714 z1!570 lambda!408557 lt!2504420))))

(declare-fun map!15613 ((Set Context!12632) Int) (Set Context!12632))

(assert (=> d!2185456 (set.member lt!2504420 (map!15613 z1!570 lambda!408557))))

(assert (=> d!2185456 (= (mapPost2!175 z1!570 lambda!408557 lt!2504420) lt!2504579)))

(declare-fun b!7010996 () Bool)

(assert (=> b!7010996 (= e!4214344 (set.member lt!2504579 z1!570))))

(assert (= (and d!2185456 res!2860861) b!7010996))

(declare-fun b_lambda!264377 () Bool)

(assert (=> (not b_lambda!264377) (not d!2185456)))

(declare-fun m!7709082 () Bool)

(assert (=> d!2185456 m!7709082))

(declare-fun m!7709084 () Bool)

(assert (=> d!2185456 m!7709084))

(declare-fun m!7709086 () Bool)

(assert (=> d!2185456 m!7709086))

(declare-fun m!7709088 () Bool)

(assert (=> d!2185456 m!7709088))

(declare-fun m!7709090 () Bool)

(assert (=> b!7010996 m!7709090))

(assert (=> b!7010850 d!2185456))

(declare-fun b!7011015 () Bool)

(declare-fun e!4214359 () Bool)

(declare-fun call!636777 () Bool)

(assert (=> b!7011015 (= e!4214359 call!636777)))

(declare-fun b!7011016 () Bool)

(declare-fun e!4214361 () Bool)

(declare-fun call!636778 () Bool)

(assert (=> b!7011016 (= e!4214361 call!636778)))

(declare-fun d!2185458 () Bool)

(declare-fun res!2860873 () Bool)

(declare-fun e!4214364 () Bool)

(assert (=> d!2185458 (=> res!2860873 e!4214364)))

(assert (=> d!2185458 (= res!2860873 (is-ElementMatch!17320 (h!73829 (exprs!6816 lt!2504399))))))

(assert (=> d!2185458 (= (validRegex!8890 (h!73829 (exprs!6816 lt!2504399))) e!4214364)))

(declare-fun b!7011017 () Bool)

(declare-fun res!2860876 () Bool)

(declare-fun e!4214365 () Bool)

(assert (=> b!7011017 (=> res!2860876 e!4214365)))

(assert (=> b!7011017 (= res!2860876 (not (is-Concat!26165 (h!73829 (exprs!6816 lt!2504399)))))))

(declare-fun e!4214363 () Bool)

(assert (=> b!7011017 (= e!4214363 e!4214365)))

(declare-fun bm!636772 () Bool)

(declare-fun call!636779 () Bool)

(declare-fun c!1302309 () Bool)

(assert (=> bm!636772 (= call!636779 (validRegex!8890 (ite c!1302309 (regOne!35153 (h!73829 (exprs!6816 lt!2504399))) (regOne!35152 (h!73829 (exprs!6816 lt!2504399))))))))

(declare-fun b!7011018 () Bool)

(declare-fun e!4214360 () Bool)

(assert (=> b!7011018 (= e!4214360 e!4214361)))

(declare-fun res!2860877 () Bool)

(assert (=> b!7011018 (= res!2860877 (not (nullable!7080 (reg!17649 (h!73829 (exprs!6816 lt!2504399))))))))

(assert (=> b!7011018 (=> (not res!2860877) (not e!4214361))))

(declare-fun c!1302308 () Bool)

(declare-fun bm!636773 () Bool)

(assert (=> bm!636773 (= call!636778 (validRegex!8890 (ite c!1302308 (reg!17649 (h!73829 (exprs!6816 lt!2504399))) (ite c!1302309 (regTwo!35153 (h!73829 (exprs!6816 lt!2504399))) (regTwo!35152 (h!73829 (exprs!6816 lt!2504399)))))))))

(declare-fun b!7011019 () Bool)

(assert (=> b!7011019 (= e!4214364 e!4214360)))

(assert (=> b!7011019 (= c!1302308 (is-Star!17320 (h!73829 (exprs!6816 lt!2504399))))))

(declare-fun b!7011020 () Bool)

(declare-fun e!4214362 () Bool)

(assert (=> b!7011020 (= e!4214362 call!636777)))

(declare-fun bm!636774 () Bool)

(assert (=> bm!636774 (= call!636777 call!636778)))

(declare-fun b!7011021 () Bool)

(assert (=> b!7011021 (= e!4214360 e!4214363)))

(assert (=> b!7011021 (= c!1302309 (is-Union!17320 (h!73829 (exprs!6816 lt!2504399))))))

(declare-fun b!7011022 () Bool)

(declare-fun res!2860875 () Bool)

(assert (=> b!7011022 (=> (not res!2860875) (not e!4214359))))

(assert (=> b!7011022 (= res!2860875 call!636779)))

(assert (=> b!7011022 (= e!4214363 e!4214359)))

(declare-fun b!7011023 () Bool)

(assert (=> b!7011023 (= e!4214365 e!4214362)))

(declare-fun res!2860874 () Bool)

(assert (=> b!7011023 (=> (not res!2860874) (not e!4214362))))

(assert (=> b!7011023 (= res!2860874 call!636779)))

(assert (= (and d!2185458 (not res!2860873)) b!7011019))

(assert (= (and b!7011019 c!1302308) b!7011018))

(assert (= (and b!7011019 (not c!1302308)) b!7011021))

(assert (= (and b!7011018 res!2860877) b!7011016))

(assert (= (and b!7011021 c!1302309) b!7011022))

(assert (= (and b!7011021 (not c!1302309)) b!7011017))

(assert (= (and b!7011022 res!2860875) b!7011015))

(assert (= (and b!7011017 (not res!2860876)) b!7011023))

(assert (= (and b!7011023 res!2860874) b!7011020))

(assert (= (or b!7011015 b!7011020) bm!636774))

(assert (= (or b!7011022 b!7011023) bm!636772))

(assert (= (or b!7011016 bm!636774) bm!636773))

(declare-fun m!7709092 () Bool)

(assert (=> bm!636772 m!7709092))

(declare-fun m!7709094 () Bool)

(assert (=> b!7011018 m!7709094))

(declare-fun m!7709096 () Bool)

(assert (=> bm!636773 m!7709096))

(assert (=> b!7010851 d!2185458))

(declare-fun b!7011034 () Bool)

(declare-fun res!2860883 () Bool)

(declare-fun e!4214371 () Bool)

(assert (=> b!7011034 (=> (not res!2860883) (not e!4214371))))

(declare-fun lt!2504582 () List!67506)

(declare-fun size!40976 (List!67506) Int)

(assert (=> b!7011034 (= res!2860883 (= (size!40976 lt!2504582) (+ (size!40976 (_1!37276 lt!2504430)) (size!40976 (_2!37276 lt!2504430)))))))

(declare-fun b!7011032 () Bool)

(declare-fun e!4214370 () List!67506)

(assert (=> b!7011032 (= e!4214370 (_2!37276 lt!2504430))))

(declare-fun b!7011033 () Bool)

(assert (=> b!7011033 (= e!4214370 (Cons!67382 (h!73830 (_1!37276 lt!2504430)) (++!15320 (t!381261 (_1!37276 lt!2504430)) (_2!37276 lt!2504430))))))

(declare-fun b!7011035 () Bool)

(assert (=> b!7011035 (= e!4214371 (or (not (= (_2!37276 lt!2504430) Nil!67382)) (= lt!2504582 (_1!37276 lt!2504430))))))

(declare-fun d!2185460 () Bool)

(assert (=> d!2185460 e!4214371))

(declare-fun res!2860882 () Bool)

(assert (=> d!2185460 (=> (not res!2860882) (not e!4214371))))

(declare-fun content!13377 (List!67506) (Set C!34910))

(assert (=> d!2185460 (= res!2860882 (= (content!13377 lt!2504582) (set.union (content!13377 (_1!37276 lt!2504430)) (content!13377 (_2!37276 lt!2504430)))))))

(assert (=> d!2185460 (= lt!2504582 e!4214370)))

(declare-fun c!1302312 () Bool)

(assert (=> d!2185460 (= c!1302312 (is-Nil!67382 (_1!37276 lt!2504430)))))

(assert (=> d!2185460 (= (++!15320 (_1!37276 lt!2504430) (_2!37276 lt!2504430)) lt!2504582)))

(assert (= (and d!2185460 c!1302312) b!7011032))

(assert (= (and d!2185460 (not c!1302312)) b!7011033))

(assert (= (and d!2185460 res!2860882) b!7011034))

(assert (= (and b!7011034 res!2860883) b!7011035))

(declare-fun m!7709098 () Bool)

(assert (=> b!7011034 m!7709098))

(declare-fun m!7709100 () Bool)

(assert (=> b!7011034 m!7709100))

(declare-fun m!7709102 () Bool)

(assert (=> b!7011034 m!7709102))

(declare-fun m!7709104 () Bool)

(assert (=> b!7011033 m!7709104))

(declare-fun m!7709106 () Bool)

(assert (=> d!2185460 m!7709106))

(declare-fun m!7709108 () Bool)

(assert (=> d!2185460 m!7709108))

(declare-fun m!7709110 () Bool)

(assert (=> d!2185460 m!7709110))

(assert (=> b!7010862 d!2185460))

(assert (=> b!7010863 d!2185454))

(declare-fun d!2185462 () Bool)

(declare-fun c!1302313 () Bool)

(assert (=> d!2185462 (= c!1302313 (isEmpty!39356 (t!381261 s!7408)))))

(declare-fun e!4214372 () Bool)

(assert (=> d!2185462 (= (matchZipper!2860 lt!2504395 (t!381261 s!7408)) e!4214372)))

(declare-fun b!7011036 () Bool)

(assert (=> b!7011036 (= e!4214372 (nullableZipper!2489 lt!2504395))))

(declare-fun b!7011037 () Bool)

(assert (=> b!7011037 (= e!4214372 (matchZipper!2860 (derivationStepZipper!2800 lt!2504395 (head!14175 (t!381261 s!7408))) (tail!13398 (t!381261 s!7408))))))

(assert (= (and d!2185462 c!1302313) b!7011036))

(assert (= (and d!2185462 (not c!1302313)) b!7011037))

(declare-fun m!7709112 () Bool)

(assert (=> d!2185462 m!7709112))

(declare-fun m!7709114 () Bool)

(assert (=> b!7011036 m!7709114))

(declare-fun m!7709116 () Bool)

(assert (=> b!7011037 m!7709116))

(assert (=> b!7011037 m!7709116))

(declare-fun m!7709118 () Bool)

(assert (=> b!7011037 m!7709118))

(declare-fun m!7709120 () Bool)

(assert (=> b!7011037 m!7709120))

(assert (=> b!7011037 m!7709118))

(assert (=> b!7011037 m!7709120))

(declare-fun m!7709122 () Bool)

(assert (=> b!7011037 m!7709122))

(assert (=> b!7010852 d!2185462))

(declare-fun d!2185464 () Bool)

(assert (=> d!2185464 (forall!16237 (++!15319 lt!2504432 (exprs!6816 ct2!306)) lambda!408558)))

(declare-fun lt!2504583 () Unit!161318)

(assert (=> d!2185464 (= lt!2504583 (choose!52713 lt!2504432 (exprs!6816 ct2!306) lambda!408558))))

(assert (=> d!2185464 (forall!16237 lt!2504432 lambda!408558)))

(assert (=> d!2185464 (= (lemmaConcatPreservesForall!656 lt!2504432 (exprs!6816 ct2!306) lambda!408558) lt!2504583)))

(declare-fun bs!1866158 () Bool)

(assert (= bs!1866158 d!2185464))

(assert (=> bs!1866158 m!7708844))

(assert (=> bs!1866158 m!7708844))

(declare-fun m!7709124 () Bool)

(assert (=> bs!1866158 m!7709124))

(declare-fun m!7709126 () Bool)

(assert (=> bs!1866158 m!7709126))

(declare-fun m!7709128 () Bool)

(assert (=> bs!1866158 m!7709128))

(assert (=> b!7010852 d!2185464))

(declare-fun b!7011060 () Bool)

(declare-fun e!4214387 () (Set Context!12632))

(declare-fun e!4214386 () (Set Context!12632))

(assert (=> b!7011060 (= e!4214387 e!4214386)))

(declare-fun c!1302326 () Bool)

(assert (=> b!7011060 (= c!1302326 (is-Concat!26165 (h!73829 (exprs!6816 lt!2504399))))))

(declare-fun b!7011061 () Bool)

(declare-fun call!636797 () (Set Context!12632))

(declare-fun call!636796 () (Set Context!12632))

(assert (=> b!7011061 (= e!4214387 (set.union call!636797 call!636796))))

(declare-fun b!7011062 () Bool)

(declare-fun call!636795 () (Set Context!12632))

(assert (=> b!7011062 (= e!4214386 call!636795)))

(declare-fun bm!636787 () Bool)

(declare-fun call!636792 () List!67505)

(declare-fun call!636793 () List!67505)

(assert (=> bm!636787 (= call!636792 call!636793)))

(declare-fun b!7011063 () Bool)

(declare-fun e!4214385 () (Set Context!12632))

(assert (=> b!7011063 (= e!4214385 (as set.empty (Set Context!12632)))))

(declare-fun c!1302324 () Bool)

(declare-fun c!1302327 () Bool)

(declare-fun bm!636788 () Bool)

(declare-fun call!636794 () (Set Context!12632))

(assert (=> bm!636788 (= call!636794 (derivationStepZipperDown!2038 (ite c!1302324 (regTwo!35153 (h!73829 (exprs!6816 lt!2504399))) (ite c!1302327 (regTwo!35152 (h!73829 (exprs!6816 lt!2504399))) (ite c!1302326 (regOne!35152 (h!73829 (exprs!6816 lt!2504399))) (reg!17649 (h!73829 (exprs!6816 lt!2504399)))))) (ite (or c!1302324 c!1302327) lt!2504433 (Context!12633 call!636792)) (h!73830 s!7408)))))

(declare-fun bm!636789 () Bool)

(assert (=> bm!636789 (= call!636797 (derivationStepZipperDown!2038 (ite c!1302324 (regOne!35153 (h!73829 (exprs!6816 lt!2504399))) (regOne!35152 (h!73829 (exprs!6816 lt!2504399)))) (ite c!1302324 lt!2504433 (Context!12633 call!636793)) (h!73830 s!7408)))))

(declare-fun b!7011064 () Bool)

(declare-fun e!4214389 () (Set Context!12632))

(declare-fun e!4214388 () (Set Context!12632))

(assert (=> b!7011064 (= e!4214389 e!4214388)))

(assert (=> b!7011064 (= c!1302324 (is-Union!17320 (h!73829 (exprs!6816 lt!2504399))))))

(declare-fun b!7011066 () Bool)

(declare-fun c!1302328 () Bool)

(assert (=> b!7011066 (= c!1302328 (is-Star!17320 (h!73829 (exprs!6816 lt!2504399))))))

(assert (=> b!7011066 (= e!4214386 e!4214385)))

(declare-fun b!7011067 () Bool)

(assert (=> b!7011067 (= e!4214388 (set.union call!636797 call!636794))))

(declare-fun bm!636790 () Bool)

(assert (=> bm!636790 (= call!636796 call!636794)))

(declare-fun b!7011068 () Bool)

(declare-fun e!4214390 () Bool)

(assert (=> b!7011068 (= c!1302327 e!4214390)))

(declare-fun res!2860886 () Bool)

(assert (=> b!7011068 (=> (not res!2860886) (not e!4214390))))

(assert (=> b!7011068 (= res!2860886 (is-Concat!26165 (h!73829 (exprs!6816 lt!2504399))))))

(assert (=> b!7011068 (= e!4214388 e!4214387)))

(declare-fun bm!636791 () Bool)

(declare-fun $colon$colon!2530 (List!67505 Regex!17320) List!67505)

(assert (=> bm!636791 (= call!636793 ($colon$colon!2530 (exprs!6816 lt!2504433) (ite (or c!1302327 c!1302326) (regTwo!35152 (h!73829 (exprs!6816 lt!2504399))) (h!73829 (exprs!6816 lt!2504399)))))))

(declare-fun b!7011069 () Bool)

(assert (=> b!7011069 (= e!4214390 (nullable!7080 (regOne!35152 (h!73829 (exprs!6816 lt!2504399)))))))

(declare-fun bm!636792 () Bool)

(assert (=> bm!636792 (= call!636795 call!636796)))

(declare-fun b!7011070 () Bool)

(assert (=> b!7011070 (= e!4214389 (set.insert lt!2504433 (as set.empty (Set Context!12632))))))

(declare-fun d!2185466 () Bool)

(declare-fun c!1302325 () Bool)

(assert (=> d!2185466 (= c!1302325 (and (is-ElementMatch!17320 (h!73829 (exprs!6816 lt!2504399))) (= (c!1302278 (h!73829 (exprs!6816 lt!2504399))) (h!73830 s!7408))))))

(assert (=> d!2185466 (= (derivationStepZipperDown!2038 (h!73829 (exprs!6816 lt!2504399)) lt!2504433 (h!73830 s!7408)) e!4214389)))

(declare-fun b!7011065 () Bool)

(assert (=> b!7011065 (= e!4214385 call!636795)))

(assert (= (and d!2185466 c!1302325) b!7011070))

(assert (= (and d!2185466 (not c!1302325)) b!7011064))

(assert (= (and b!7011064 c!1302324) b!7011067))

(assert (= (and b!7011064 (not c!1302324)) b!7011068))

(assert (= (and b!7011068 res!2860886) b!7011069))

(assert (= (and b!7011068 c!1302327) b!7011061))

(assert (= (and b!7011068 (not c!1302327)) b!7011060))

(assert (= (and b!7011060 c!1302326) b!7011062))

(assert (= (and b!7011060 (not c!1302326)) b!7011066))

(assert (= (and b!7011066 c!1302328) b!7011065))

(assert (= (and b!7011066 (not c!1302328)) b!7011063))

(assert (= (or b!7011062 b!7011065) bm!636787))

(assert (= (or b!7011062 b!7011065) bm!636792))

(assert (= (or b!7011061 bm!636792) bm!636790))

(assert (= (or b!7011061 bm!636787) bm!636791))

(assert (= (or b!7011067 b!7011061) bm!636789))

(assert (= (or b!7011067 bm!636790) bm!636788))

(declare-fun m!7709130 () Bool)

(assert (=> b!7011070 m!7709130))

(declare-fun m!7709132 () Bool)

(assert (=> bm!636788 m!7709132))

(declare-fun m!7709134 () Bool)

(assert (=> b!7011069 m!7709134))

(declare-fun m!7709136 () Bool)

(assert (=> bm!636791 m!7709136))

(declare-fun m!7709138 () Bool)

(assert (=> bm!636789 m!7709138))

(assert (=> b!7010858 d!2185466))

(assert (=> b!7010858 d!2185464))

(declare-fun b!7011073 () Bool)

(declare-fun res!2860888 () Bool)

(declare-fun e!4214391 () Bool)

(assert (=> b!7011073 (=> (not res!2860888) (not e!4214391))))

(declare-fun lt!2504584 () List!67505)

(assert (=> b!7011073 (= res!2860888 (= (size!40975 lt!2504584) (+ (size!40975 lt!2504432) (size!40975 (exprs!6816 ct2!306)))))))

(declare-fun b!7011071 () Bool)

(declare-fun e!4214392 () List!67505)

(assert (=> b!7011071 (= e!4214392 (exprs!6816 ct2!306))))

(declare-fun d!2185468 () Bool)

(assert (=> d!2185468 e!4214391))

(declare-fun res!2860887 () Bool)

(assert (=> d!2185468 (=> (not res!2860887) (not e!4214391))))

(assert (=> d!2185468 (= res!2860887 (= (content!13376 lt!2504584) (set.union (content!13376 lt!2504432) (content!13376 (exprs!6816 ct2!306)))))))

(assert (=> d!2185468 (= lt!2504584 e!4214392)))

(declare-fun c!1302329 () Bool)

(assert (=> d!2185468 (= c!1302329 (is-Nil!67381 lt!2504432))))

(assert (=> d!2185468 (= (++!15319 lt!2504432 (exprs!6816 ct2!306)) lt!2504584)))

(declare-fun b!7011072 () Bool)

(assert (=> b!7011072 (= e!4214392 (Cons!67381 (h!73829 lt!2504432) (++!15319 (t!381260 lt!2504432) (exprs!6816 ct2!306))))))

(declare-fun b!7011074 () Bool)

(assert (=> b!7011074 (= e!4214391 (or (not (= (exprs!6816 ct2!306) Nil!67381)) (= lt!2504584 lt!2504432)))))

(assert (= (and d!2185468 c!1302329) b!7011071))

(assert (= (and d!2185468 (not c!1302329)) b!7011072))

(assert (= (and d!2185468 res!2860887) b!7011073))

(assert (= (and b!7011073 res!2860888) b!7011074))

(declare-fun m!7709140 () Bool)

(assert (=> b!7011073 m!7709140))

(declare-fun m!7709142 () Bool)

(assert (=> b!7011073 m!7709142))

(assert (=> b!7011073 m!7709066))

(declare-fun m!7709144 () Bool)

(assert (=> d!2185468 m!7709144))

(declare-fun m!7709146 () Bool)

(assert (=> d!2185468 m!7709146))

(assert (=> d!2185468 m!7709072))

(declare-fun m!7709148 () Bool)

(assert (=> b!7011072 m!7709148))

(assert (=> b!7010858 d!2185468))

(declare-fun bm!636793 () Bool)

(declare-fun call!636798 () (Set Context!12632))

(assert (=> bm!636793 (= call!636798 (derivationStepZipperDown!2038 (h!73829 (exprs!6816 lt!2504433)) (Context!12633 (t!381260 (exprs!6816 lt!2504433))) (h!73830 s!7408)))))

(declare-fun b!7011075 () Bool)

(declare-fun e!4214394 () (Set Context!12632))

(assert (=> b!7011075 (= e!4214394 (as set.empty (Set Context!12632)))))

(declare-fun b!7011076 () Bool)

(declare-fun e!4214393 () (Set Context!12632))

(assert (=> b!7011076 (= e!4214393 e!4214394)))

(declare-fun c!1302331 () Bool)

(assert (=> b!7011076 (= c!1302331 (is-Cons!67381 (exprs!6816 lt!2504433)))))

(declare-fun d!2185470 () Bool)

(declare-fun c!1302330 () Bool)

(declare-fun e!4214395 () Bool)

(assert (=> d!2185470 (= c!1302330 e!4214395)))

(declare-fun res!2860889 () Bool)

(assert (=> d!2185470 (=> (not res!2860889) (not e!4214395))))

(assert (=> d!2185470 (= res!2860889 (is-Cons!67381 (exprs!6816 lt!2504433)))))

(assert (=> d!2185470 (= (derivationStepZipperUp!1970 lt!2504433 (h!73830 s!7408)) e!4214393)))

(declare-fun b!7011077 () Bool)

(assert (=> b!7011077 (= e!4214393 (set.union call!636798 (derivationStepZipperUp!1970 (Context!12633 (t!381260 (exprs!6816 lt!2504433))) (h!73830 s!7408))))))

(declare-fun b!7011078 () Bool)

(assert (=> b!7011078 (= e!4214394 call!636798)))

(declare-fun b!7011079 () Bool)

(assert (=> b!7011079 (= e!4214395 (nullable!7080 (h!73829 (exprs!6816 lt!2504433))))))

(assert (= (and d!2185470 res!2860889) b!7011079))

(assert (= (and d!2185470 c!1302330) b!7011077))

(assert (= (and d!2185470 (not c!1302330)) b!7011076))

(assert (= (and b!7011076 c!1302331) b!7011078))

(assert (= (and b!7011076 (not c!1302331)) b!7011075))

(assert (= (or b!7011077 b!7011078) bm!636793))

(declare-fun m!7709150 () Bool)

(assert (=> bm!636793 m!7709150))

(declare-fun m!7709152 () Bool)

(assert (=> b!7011077 m!7709152))

(declare-fun m!7709154 () Bool)

(assert (=> b!7011079 m!7709154))

(assert (=> b!7010858 d!2185470))

(declare-fun d!2185472 () Bool)

(declare-fun c!1302332 () Bool)

(assert (=> d!2185472 (= c!1302332 (isEmpty!39356 s!7408))))

(declare-fun e!4214396 () Bool)

(assert (=> d!2185472 (= (matchZipper!2860 lt!2504405 s!7408) e!4214396)))

(declare-fun b!7011080 () Bool)

(assert (=> b!7011080 (= e!4214396 (nullableZipper!2489 lt!2504405))))

(declare-fun b!7011081 () Bool)

(assert (=> b!7011081 (= e!4214396 (matchZipper!2860 (derivationStepZipper!2800 lt!2504405 (head!14175 s!7408)) (tail!13398 s!7408)))))

(assert (= (and d!2185472 c!1302332) b!7011080))

(assert (= (and d!2185472 (not c!1302332)) b!7011081))

(declare-fun m!7709156 () Bool)

(assert (=> d!2185472 m!7709156))

(declare-fun m!7709158 () Bool)

(assert (=> b!7011080 m!7709158))

(declare-fun m!7709160 () Bool)

(assert (=> b!7011081 m!7709160))

(assert (=> b!7011081 m!7709160))

(declare-fun m!7709162 () Bool)

(assert (=> b!7011081 m!7709162))

(declare-fun m!7709164 () Bool)

(assert (=> b!7011081 m!7709164))

(assert (=> b!7011081 m!7709162))

(assert (=> b!7011081 m!7709164))

(declare-fun m!7709166 () Bool)

(assert (=> b!7011081 m!7709166))

(assert (=> start!675266 d!2185472))

(declare-fun bs!1866159 () Bool)

(declare-fun d!2185474 () Bool)

(assert (= bs!1866159 (and d!2185474 b!7010850)))

(declare-fun lambda!408611 () Int)

(assert (=> bs!1866159 (= lambda!408611 lambda!408557)))

(assert (=> d!2185474 true))

(assert (=> d!2185474 (= (appendTo!441 z1!570 ct2!306) (map!15613 z1!570 lambda!408611))))

(declare-fun bs!1866160 () Bool)

(assert (= bs!1866160 d!2185474))

(declare-fun m!7709168 () Bool)

(assert (=> bs!1866160 m!7709168))

(assert (=> start!675266 d!2185474))

(declare-fun bs!1866161 () Bool)

(declare-fun d!2185476 () Bool)

(assert (= bs!1866161 (and d!2185476 b!7010850)))

(declare-fun lambda!408614 () Int)

(assert (=> bs!1866161 (= lambda!408614 lambda!408558)))

(assert (=> d!2185476 (= (inv!86160 ct2!306) (forall!16237 (exprs!6816 ct2!306) lambda!408614))))

(declare-fun bs!1866162 () Bool)

(assert (= bs!1866162 d!2185476))

(declare-fun m!7709170 () Bool)

(assert (=> bs!1866162 m!7709170))

(assert (=> start!675266 d!2185476))

(assert (=> b!7010849 d!2185462))

(assert (=> b!7010849 d!2185464))

(assert (=> b!7010870 d!2185464))

(declare-fun b!7011101 () Bool)

(declare-fun e!4214410 () Option!16805)

(assert (=> b!7011101 (= e!4214410 None!16804)))

(declare-fun b!7011102 () Bool)

(declare-fun e!4214407 () Option!16805)

(assert (=> b!7011102 (= e!4214407 (Some!16804 (tuple2!67947 Nil!67382 (t!381261 s!7408))))))

(declare-fun b!7011103 () Bool)

(declare-fun e!4214409 () Bool)

(assert (=> b!7011103 (= e!4214409 (matchZipper!2860 lt!2504401 (t!381261 s!7408)))))

(declare-fun b!7011104 () Bool)

(declare-fun res!2860903 () Bool)

(declare-fun e!4214411 () Bool)

(assert (=> b!7011104 (=> (not res!2860903) (not e!4214411))))

(declare-fun lt!2504594 () Option!16805)

(assert (=> b!7011104 (= res!2860903 (matchZipper!2860 lt!2504401 (_2!37276 (get!23627 lt!2504594))))))

(declare-fun b!7011105 () Bool)

(declare-fun res!2860902 () Bool)

(assert (=> b!7011105 (=> (not res!2860902) (not e!4214411))))

(assert (=> b!7011105 (= res!2860902 (matchZipper!2860 lt!2504425 (_1!37276 (get!23627 lt!2504594))))))

(declare-fun b!7011106 () Bool)

(assert (=> b!7011106 (= e!4214407 e!4214410)))

(declare-fun c!1302339 () Bool)

(assert (=> b!7011106 (= c!1302339 (is-Nil!67382 (t!381261 s!7408)))))

(declare-fun b!7011107 () Bool)

(declare-fun e!4214408 () Bool)

(assert (=> b!7011107 (= e!4214408 (not (isDefined!13506 lt!2504594)))))

(declare-fun b!7011108 () Bool)

(declare-fun lt!2504593 () Unit!161318)

(declare-fun lt!2504595 () Unit!161318)

(assert (=> b!7011108 (= lt!2504593 lt!2504595)))

(assert (=> b!7011108 (= (++!15320 (++!15320 Nil!67382 (Cons!67382 (h!73830 (t!381261 s!7408)) Nil!67382)) (t!381261 (t!381261 s!7408))) (t!381261 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2895 (List!67506 C!34910 List!67506 List!67506) Unit!161318)

(assert (=> b!7011108 (= lt!2504595 (lemmaMoveElementToOtherListKeepsConcatEq!2895 Nil!67382 (h!73830 (t!381261 s!7408)) (t!381261 (t!381261 s!7408)) (t!381261 s!7408)))))

(assert (=> b!7011108 (= e!4214410 (findConcatSeparationZippers!321 lt!2504425 lt!2504401 (++!15320 Nil!67382 (Cons!67382 (h!73830 (t!381261 s!7408)) Nil!67382)) (t!381261 (t!381261 s!7408)) (t!381261 s!7408)))))

(declare-fun d!2185478 () Bool)

(assert (=> d!2185478 e!4214408))

(declare-fun res!2860900 () Bool)

(assert (=> d!2185478 (=> res!2860900 e!4214408)))

(assert (=> d!2185478 (= res!2860900 e!4214411)))

(declare-fun res!2860904 () Bool)

(assert (=> d!2185478 (=> (not res!2860904) (not e!4214411))))

(assert (=> d!2185478 (= res!2860904 (isDefined!13506 lt!2504594))))

(assert (=> d!2185478 (= lt!2504594 e!4214407)))

(declare-fun c!1302338 () Bool)

(assert (=> d!2185478 (= c!1302338 e!4214409)))

(declare-fun res!2860901 () Bool)

(assert (=> d!2185478 (=> (not res!2860901) (not e!4214409))))

(assert (=> d!2185478 (= res!2860901 (matchZipper!2860 lt!2504425 Nil!67382))))

(assert (=> d!2185478 (= (++!15320 Nil!67382 (t!381261 s!7408)) (t!381261 s!7408))))

(assert (=> d!2185478 (= (findConcatSeparationZippers!321 lt!2504425 lt!2504401 Nil!67382 (t!381261 s!7408) (t!381261 s!7408)) lt!2504594)))

(declare-fun b!7011100 () Bool)

(assert (=> b!7011100 (= e!4214411 (= (++!15320 (_1!37276 (get!23627 lt!2504594)) (_2!37276 (get!23627 lt!2504594))) (t!381261 s!7408)))))

(assert (= (and d!2185478 res!2860901) b!7011103))

(assert (= (and d!2185478 c!1302338) b!7011102))

(assert (= (and d!2185478 (not c!1302338)) b!7011106))

(assert (= (and b!7011106 c!1302339) b!7011101))

(assert (= (and b!7011106 (not c!1302339)) b!7011108))

(assert (= (and d!2185478 res!2860904) b!7011105))

(assert (= (and b!7011105 res!2860902) b!7011104))

(assert (= (and b!7011104 res!2860903) b!7011100))

(assert (= (and d!2185478 (not res!2860900)) b!7011107))

(declare-fun m!7709172 () Bool)

(assert (=> d!2185478 m!7709172))

(declare-fun m!7709174 () Bool)

(assert (=> d!2185478 m!7709174))

(declare-fun m!7709176 () Bool)

(assert (=> d!2185478 m!7709176))

(declare-fun m!7709178 () Bool)

(assert (=> b!7011103 m!7709178))

(declare-fun m!7709180 () Bool)

(assert (=> b!7011100 m!7709180))

(declare-fun m!7709182 () Bool)

(assert (=> b!7011100 m!7709182))

(assert (=> b!7011104 m!7709180))

(declare-fun m!7709184 () Bool)

(assert (=> b!7011104 m!7709184))

(assert (=> b!7011107 m!7709172))

(assert (=> b!7011105 m!7709180))

(declare-fun m!7709186 () Bool)

(assert (=> b!7011105 m!7709186))

(declare-fun m!7709188 () Bool)

(assert (=> b!7011108 m!7709188))

(assert (=> b!7011108 m!7709188))

(declare-fun m!7709190 () Bool)

(assert (=> b!7011108 m!7709190))

(declare-fun m!7709192 () Bool)

(assert (=> b!7011108 m!7709192))

(assert (=> b!7011108 m!7709188))

(declare-fun m!7709194 () Bool)

(assert (=> b!7011108 m!7709194))

(assert (=> b!7010870 d!2185478))

(declare-fun d!2185480 () Bool)

(assert (=> d!2185480 (isDefined!13506 (findConcatSeparationZippers!321 lt!2504425 (set.insert ct2!306 (as set.empty (Set Context!12632))) Nil!67382 (t!381261 s!7408) (t!381261 s!7408)))))

(declare-fun lt!2504598 () Unit!161318)

(declare-fun choose!52715 ((Set Context!12632) Context!12632 List!67506) Unit!161318)

(assert (=> d!2185480 (= lt!2504598 (choose!52715 lt!2504425 ct2!306 (t!381261 s!7408)))))

(assert (=> d!2185480 (matchZipper!2860 (appendTo!441 lt!2504425 ct2!306) (t!381261 s!7408))))

(assert (=> d!2185480 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!321 lt!2504425 ct2!306 (t!381261 s!7408)) lt!2504598)))

(declare-fun bs!1866163 () Bool)

(assert (= bs!1866163 d!2185480))

(declare-fun m!7709196 () Bool)

(assert (=> bs!1866163 m!7709196))

(declare-fun m!7709198 () Bool)

(assert (=> bs!1866163 m!7709198))

(assert (=> bs!1866163 m!7708866))

(declare-fun m!7709200 () Bool)

(assert (=> bs!1866163 m!7709200))

(declare-fun m!7709202 () Bool)

(assert (=> bs!1866163 m!7709202))

(assert (=> bs!1866163 m!7708866))

(assert (=> bs!1866163 m!7708872))

(assert (=> bs!1866163 m!7709196))

(assert (=> bs!1866163 m!7708872))

(assert (=> b!7010870 d!2185480))

(declare-fun bs!1866164 () Bool)

(declare-fun d!2185482 () Bool)

(assert (= bs!1866164 (and d!2185482 b!7010850)))

(declare-fun lambda!408615 () Int)

(assert (=> bs!1866164 (= lambda!408615 lambda!408557)))

(declare-fun bs!1866165 () Bool)

(assert (= bs!1866165 (and d!2185482 d!2185474)))

(assert (=> bs!1866165 (= lambda!408615 lambda!408611)))

(assert (=> d!2185482 true))

(assert (=> d!2185482 (= (appendTo!441 lt!2504425 ct2!306) (map!15613 lt!2504425 lambda!408615))))

(declare-fun bs!1866166 () Bool)

(assert (= bs!1866166 d!2185482))

(declare-fun m!7709204 () Bool)

(assert (=> bs!1866166 m!7709204))

(assert (=> b!7010870 d!2185482))

(declare-fun bs!1866167 () Bool)

(declare-fun d!2185484 () Bool)

(assert (= bs!1866167 (and d!2185484 b!7010850)))

(declare-fun lambda!408618 () Int)

(assert (=> bs!1866167 (= lambda!408618 lambda!408558)))

(declare-fun bs!1866168 () Bool)

(assert (= bs!1866168 (and d!2185484 d!2185476)))

(assert (=> bs!1866168 (= lambda!408618 lambda!408614)))

(assert (=> d!2185484 (= (derivationStepZipperDown!2038 (h!73829 (exprs!6816 lt!2504399)) (Context!12633 (++!15319 (exprs!6816 lt!2504416) (exprs!6816 ct2!306))) (h!73830 s!7408)) (appendTo!441 (derivationStepZipperDown!2038 (h!73829 (exprs!6816 lt!2504399)) lt!2504416 (h!73830 s!7408)) ct2!306))))

(declare-fun lt!2504604 () Unit!161318)

(assert (=> d!2185484 (= lt!2504604 (lemmaConcatPreservesForall!656 (exprs!6816 lt!2504416) (exprs!6816 ct2!306) lambda!408618))))

(declare-fun lt!2504603 () Unit!161318)

(declare-fun choose!52716 (Context!12632 Regex!17320 C!34910 Context!12632) Unit!161318)

(assert (=> d!2185484 (= lt!2504603 (choose!52716 lt!2504416 (h!73829 (exprs!6816 lt!2504399)) (h!73830 s!7408) ct2!306))))

(assert (=> d!2185484 (validRegex!8890 (h!73829 (exprs!6816 lt!2504399)))))

(assert (=> d!2185484 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!19 lt!2504416 (h!73829 (exprs!6816 lt!2504399)) (h!73830 s!7408) ct2!306) lt!2504603)))

(declare-fun bs!1866169 () Bool)

(assert (= bs!1866169 d!2185484))

(declare-fun m!7709206 () Bool)

(assert (=> bs!1866169 m!7709206))

(assert (=> bs!1866169 m!7708882))

(declare-fun m!7709208 () Bool)

(assert (=> bs!1866169 m!7709208))

(assert (=> bs!1866169 m!7708910))

(declare-fun m!7709210 () Bool)

(assert (=> bs!1866169 m!7709210))

(declare-fun m!7709212 () Bool)

(assert (=> bs!1866169 m!7709212))

(declare-fun m!7709214 () Bool)

(assert (=> bs!1866169 m!7709214))

(assert (=> bs!1866169 m!7708882))

(assert (=> b!7010870 d!2185484))

(declare-fun d!2185486 () Bool)

(declare-fun isEmpty!39357 (Option!16805) Bool)

(assert (=> d!2185486 (= (isDefined!13506 lt!2504398) (not (isEmpty!39357 lt!2504398)))))

(declare-fun bs!1866170 () Bool)

(assert (= bs!1866170 d!2185486))

(declare-fun m!7709216 () Bool)

(assert (=> bs!1866170 m!7709216))

(assert (=> b!7010870 d!2185486))

(declare-fun d!2185488 () Bool)

(assert (=> d!2185488 (= (get!23627 lt!2504398) (v!53082 lt!2504398))))

(assert (=> b!7010870 d!2185488))

(declare-fun d!2185490 () Bool)

(declare-fun c!1302341 () Bool)

(assert (=> d!2185490 (= c!1302341 (isEmpty!39356 (_1!37276 lt!2504430)))))

(declare-fun e!4214412 () Bool)

(assert (=> d!2185490 (= (matchZipper!2860 lt!2504425 (_1!37276 lt!2504430)) e!4214412)))

(declare-fun b!7011109 () Bool)

(assert (=> b!7011109 (= e!4214412 (nullableZipper!2489 lt!2504425))))

(declare-fun b!7011110 () Bool)

(assert (=> b!7011110 (= e!4214412 (matchZipper!2860 (derivationStepZipper!2800 lt!2504425 (head!14175 (_1!37276 lt!2504430))) (tail!13398 (_1!37276 lt!2504430))))))

(assert (= (and d!2185490 c!1302341) b!7011109))

(assert (= (and d!2185490 (not c!1302341)) b!7011110))

(declare-fun m!7709218 () Bool)

(assert (=> d!2185490 m!7709218))

(declare-fun m!7709220 () Bool)

(assert (=> b!7011109 m!7709220))

(declare-fun m!7709222 () Bool)

(assert (=> b!7011110 m!7709222))

(assert (=> b!7011110 m!7709222))

(declare-fun m!7709224 () Bool)

(assert (=> b!7011110 m!7709224))

(declare-fun m!7709226 () Bool)

(assert (=> b!7011110 m!7709226))

(assert (=> b!7011110 m!7709224))

(assert (=> b!7011110 m!7709226))

(declare-fun m!7709228 () Bool)

(assert (=> b!7011110 m!7709228))

(assert (=> b!7010870 d!2185490))

(declare-fun b!7011111 () Bool)

(declare-fun e!4214415 () (Set Context!12632))

(declare-fun e!4214414 () (Set Context!12632))

(assert (=> b!7011111 (= e!4214415 e!4214414)))

(declare-fun c!1302344 () Bool)

(assert (=> b!7011111 (= c!1302344 (is-Concat!26165 (h!73829 (exprs!6816 lt!2504399))))))

(declare-fun b!7011112 () Bool)

(declare-fun call!636804 () (Set Context!12632))

(declare-fun call!636803 () (Set Context!12632))

(assert (=> b!7011112 (= e!4214415 (set.union call!636804 call!636803))))

(declare-fun b!7011113 () Bool)

(declare-fun call!636802 () (Set Context!12632))

(assert (=> b!7011113 (= e!4214414 call!636802)))

(declare-fun bm!636794 () Bool)

(declare-fun call!636799 () List!67505)

(declare-fun call!636800 () List!67505)

(assert (=> bm!636794 (= call!636799 call!636800)))

(declare-fun b!7011114 () Bool)

(declare-fun e!4214413 () (Set Context!12632))

(assert (=> b!7011114 (= e!4214413 (as set.empty (Set Context!12632)))))

(declare-fun bm!636795 () Bool)

(declare-fun c!1302345 () Bool)

(declare-fun c!1302342 () Bool)

(declare-fun call!636801 () (Set Context!12632))

(assert (=> bm!636795 (= call!636801 (derivationStepZipperDown!2038 (ite c!1302342 (regTwo!35153 (h!73829 (exprs!6816 lt!2504399))) (ite c!1302345 (regTwo!35152 (h!73829 (exprs!6816 lt!2504399))) (ite c!1302344 (regOne!35152 (h!73829 (exprs!6816 lt!2504399))) (reg!17649 (h!73829 (exprs!6816 lt!2504399)))))) (ite (or c!1302342 c!1302345) lt!2504416 (Context!12633 call!636799)) (h!73830 s!7408)))))

(declare-fun bm!636796 () Bool)

(assert (=> bm!636796 (= call!636804 (derivationStepZipperDown!2038 (ite c!1302342 (regOne!35153 (h!73829 (exprs!6816 lt!2504399))) (regOne!35152 (h!73829 (exprs!6816 lt!2504399)))) (ite c!1302342 lt!2504416 (Context!12633 call!636800)) (h!73830 s!7408)))))

(declare-fun b!7011115 () Bool)

(declare-fun e!4214417 () (Set Context!12632))

(declare-fun e!4214416 () (Set Context!12632))

(assert (=> b!7011115 (= e!4214417 e!4214416)))

(assert (=> b!7011115 (= c!1302342 (is-Union!17320 (h!73829 (exprs!6816 lt!2504399))))))

(declare-fun b!7011117 () Bool)

(declare-fun c!1302346 () Bool)

(assert (=> b!7011117 (= c!1302346 (is-Star!17320 (h!73829 (exprs!6816 lt!2504399))))))

(assert (=> b!7011117 (= e!4214414 e!4214413)))

(declare-fun b!7011118 () Bool)

(assert (=> b!7011118 (= e!4214416 (set.union call!636804 call!636801))))

(declare-fun bm!636797 () Bool)

(assert (=> bm!636797 (= call!636803 call!636801)))

(declare-fun b!7011119 () Bool)

(declare-fun e!4214418 () Bool)

(assert (=> b!7011119 (= c!1302345 e!4214418)))

(declare-fun res!2860905 () Bool)

(assert (=> b!7011119 (=> (not res!2860905) (not e!4214418))))

(assert (=> b!7011119 (= res!2860905 (is-Concat!26165 (h!73829 (exprs!6816 lt!2504399))))))

(assert (=> b!7011119 (= e!4214416 e!4214415)))

(declare-fun bm!636798 () Bool)

(assert (=> bm!636798 (= call!636800 ($colon$colon!2530 (exprs!6816 lt!2504416) (ite (or c!1302345 c!1302344) (regTwo!35152 (h!73829 (exprs!6816 lt!2504399))) (h!73829 (exprs!6816 lt!2504399)))))))

(declare-fun b!7011120 () Bool)

(assert (=> b!7011120 (= e!4214418 (nullable!7080 (regOne!35152 (h!73829 (exprs!6816 lt!2504399)))))))

(declare-fun bm!636799 () Bool)

(assert (=> bm!636799 (= call!636802 call!636803)))

(declare-fun b!7011121 () Bool)

(assert (=> b!7011121 (= e!4214417 (set.insert lt!2504416 (as set.empty (Set Context!12632))))))

(declare-fun d!2185492 () Bool)

(declare-fun c!1302343 () Bool)

(assert (=> d!2185492 (= c!1302343 (and (is-ElementMatch!17320 (h!73829 (exprs!6816 lt!2504399))) (= (c!1302278 (h!73829 (exprs!6816 lt!2504399))) (h!73830 s!7408))))))

(assert (=> d!2185492 (= (derivationStepZipperDown!2038 (h!73829 (exprs!6816 lt!2504399)) lt!2504416 (h!73830 s!7408)) e!4214417)))

(declare-fun b!7011116 () Bool)

(assert (=> b!7011116 (= e!4214413 call!636802)))

(assert (= (and d!2185492 c!1302343) b!7011121))

(assert (= (and d!2185492 (not c!1302343)) b!7011115))

(assert (= (and b!7011115 c!1302342) b!7011118))

(assert (= (and b!7011115 (not c!1302342)) b!7011119))

(assert (= (and b!7011119 res!2860905) b!7011120))

(assert (= (and b!7011119 c!1302345) b!7011112))

(assert (= (and b!7011119 (not c!1302345)) b!7011111))

(assert (= (and b!7011111 c!1302344) b!7011113))

(assert (= (and b!7011111 (not c!1302344)) b!7011117))

(assert (= (and b!7011117 c!1302346) b!7011116))

(assert (= (and b!7011117 (not c!1302346)) b!7011114))

(assert (= (or b!7011113 b!7011116) bm!636794))

(assert (= (or b!7011113 b!7011116) bm!636799))

(assert (= (or b!7011112 bm!636799) bm!636797))

(assert (= (or b!7011112 bm!636794) bm!636798))

(assert (= (or b!7011118 b!7011112) bm!636796))

(assert (= (or b!7011118 bm!636797) bm!636795))

(declare-fun m!7709230 () Bool)

(assert (=> b!7011121 m!7709230))

(declare-fun m!7709232 () Bool)

(assert (=> bm!636795 m!7709232))

(assert (=> b!7011120 m!7709134))

(declare-fun m!7709234 () Bool)

(assert (=> bm!636798 m!7709234))

(declare-fun m!7709236 () Bool)

(assert (=> bm!636796 m!7709236))

(assert (=> b!7010870 d!2185492))

(declare-fun bs!1866171 () Bool)

(declare-fun d!2185494 () Bool)

(assert (= bs!1866171 (and d!2185494 b!7010850)))

(declare-fun lambda!408619 () Int)

(assert (=> bs!1866171 (= lambda!408619 lambda!408558)))

(declare-fun bs!1866172 () Bool)

(assert (= bs!1866172 (and d!2185494 d!2185476)))

(assert (=> bs!1866172 (= lambda!408619 lambda!408614)))

(declare-fun bs!1866173 () Bool)

(assert (= bs!1866173 (and d!2185494 d!2185484)))

(assert (=> bs!1866173 (= lambda!408619 lambda!408618)))

(assert (=> d!2185494 (= (inv!86160 setElem!48368) (forall!16237 (exprs!6816 setElem!48368) lambda!408619))))

(declare-fun bs!1866174 () Bool)

(assert (= bs!1866174 d!2185494))

(declare-fun m!7709238 () Bool)

(assert (=> bs!1866174 m!7709238))

(assert (=> setNonEmpty!48368 d!2185494))

(assert (=> b!7010866 d!2185462))

(declare-fun bm!636800 () Bool)

(declare-fun call!636805 () (Set Context!12632))

(assert (=> bm!636800 (= call!636805 (derivationStepZipperDown!2038 (h!73829 (exprs!6816 lt!2504416)) (Context!12633 (t!381260 (exprs!6816 lt!2504416))) (h!73830 s!7408)))))

(declare-fun b!7011122 () Bool)

(declare-fun e!4214420 () (Set Context!12632))

(assert (=> b!7011122 (= e!4214420 (as set.empty (Set Context!12632)))))

(declare-fun b!7011123 () Bool)

(declare-fun e!4214419 () (Set Context!12632))

(assert (=> b!7011123 (= e!4214419 e!4214420)))

(declare-fun c!1302348 () Bool)

(assert (=> b!7011123 (= c!1302348 (is-Cons!67381 (exprs!6816 lt!2504416)))))

(declare-fun d!2185496 () Bool)

(declare-fun c!1302347 () Bool)

(declare-fun e!4214421 () Bool)

(assert (=> d!2185496 (= c!1302347 e!4214421)))

(declare-fun res!2860906 () Bool)

(assert (=> d!2185496 (=> (not res!2860906) (not e!4214421))))

(assert (=> d!2185496 (= res!2860906 (is-Cons!67381 (exprs!6816 lt!2504416)))))

(assert (=> d!2185496 (= (derivationStepZipperUp!1970 lt!2504416 (h!73830 s!7408)) e!4214419)))

(declare-fun b!7011124 () Bool)

(assert (=> b!7011124 (= e!4214419 (set.union call!636805 (derivationStepZipperUp!1970 (Context!12633 (t!381260 (exprs!6816 lt!2504416))) (h!73830 s!7408))))))

(declare-fun b!7011125 () Bool)

(assert (=> b!7011125 (= e!4214420 call!636805)))

(declare-fun b!7011126 () Bool)

(assert (=> b!7011126 (= e!4214421 (nullable!7080 (h!73829 (exprs!6816 lt!2504416))))))

(assert (= (and d!2185496 res!2860906) b!7011126))

(assert (= (and d!2185496 c!1302347) b!7011124))

(assert (= (and d!2185496 (not c!1302347)) b!7011123))

(assert (= (and b!7011123 c!1302348) b!7011125))

(assert (= (and b!7011123 (not c!1302348)) b!7011122))

(assert (= (or b!7011124 b!7011125) bm!636800))

(declare-fun m!7709240 () Bool)

(assert (=> bm!636800 m!7709240))

(declare-fun m!7709242 () Bool)

(assert (=> b!7011124 m!7709242))

(declare-fun m!7709244 () Bool)

(assert (=> b!7011126 m!7709244))

(assert (=> b!7010867 d!2185496))

(declare-fun bs!1866175 () Bool)

(declare-fun d!2185498 () Bool)

(assert (= bs!1866175 (and d!2185498 b!7010856)))

(declare-fun lambda!408622 () Int)

(assert (=> bs!1866175 (= lambda!408622 lambda!408556)))

(assert (=> d!2185498 true))

(assert (=> d!2185498 (exists!3165 lt!2504402 lambda!408622)))

(declare-fun lt!2504607 () Unit!161318)

(declare-fun choose!52717 (List!67507 List!67506) Unit!161318)

(assert (=> d!2185498 (= lt!2504607 (choose!52717 lt!2504402 s!7408))))

(declare-fun content!13378 (List!67507) (Set Context!12632))

(assert (=> d!2185498 (matchZipper!2860 (content!13378 lt!2504402) s!7408)))

(assert (=> d!2185498 (= (lemmaZipperMatchesExistsMatchingContext!289 lt!2504402 s!7408) lt!2504607)))

(declare-fun bs!1866176 () Bool)

(assert (= bs!1866176 d!2185498))

(declare-fun m!7709246 () Bool)

(assert (=> bs!1866176 m!7709246))

(declare-fun m!7709248 () Bool)

(assert (=> bs!1866176 m!7709248))

(declare-fun m!7709250 () Bool)

(assert (=> bs!1866176 m!7709250))

(assert (=> bs!1866176 m!7709250))

(declare-fun m!7709252 () Bool)

(assert (=> bs!1866176 m!7709252))

(assert (=> b!7010856 d!2185498))

(declare-fun d!2185500 () Bool)

(declare-fun e!4214424 () Bool)

(assert (=> d!2185500 e!4214424))

(declare-fun res!2860909 () Bool)

(assert (=> d!2185500 (=> (not res!2860909) (not e!4214424))))

(declare-fun lt!2504610 () Context!12632)

(declare-fun dynLambda!27108 (Int Context!12632) Bool)

(assert (=> d!2185500 (= res!2860909 (dynLambda!27108 lambda!408556 lt!2504610))))

(declare-fun getWitness!1265 (List!67507 Int) Context!12632)

(assert (=> d!2185500 (= lt!2504610 (getWitness!1265 (toList!10680 lt!2504405) lambda!408556))))

(declare-fun exists!3167 ((Set Context!12632) Int) Bool)

(assert (=> d!2185500 (exists!3167 lt!2504405 lambda!408556)))

(assert (=> d!2185500 (= (getWitness!1263 lt!2504405 lambda!408556) lt!2504610)))

(declare-fun b!7011129 () Bool)

(assert (=> b!7011129 (= e!4214424 (set.member lt!2504610 lt!2504405))))

(assert (= (and d!2185500 res!2860909) b!7011129))

(declare-fun b_lambda!264379 () Bool)

(assert (=> (not b_lambda!264379) (not d!2185500)))

(declare-fun m!7709254 () Bool)

(assert (=> d!2185500 m!7709254))

(assert (=> d!2185500 m!7708930))

(assert (=> d!2185500 m!7708930))

(declare-fun m!7709256 () Bool)

(assert (=> d!2185500 m!7709256))

(declare-fun m!7709258 () Bool)

(assert (=> d!2185500 m!7709258))

(declare-fun m!7709260 () Bool)

(assert (=> b!7011129 m!7709260))

(assert (=> b!7010856 d!2185500))

(declare-fun bs!1866177 () Bool)

(declare-fun d!2185502 () Bool)

(assert (= bs!1866177 (and d!2185502 b!7010856)))

(declare-fun lambda!408625 () Int)

(assert (=> bs!1866177 (not (= lambda!408625 lambda!408556))))

(declare-fun bs!1866178 () Bool)

(assert (= bs!1866178 (and d!2185502 d!2185498)))

(assert (=> bs!1866178 (not (= lambda!408625 lambda!408622))))

(assert (=> d!2185502 true))

(declare-fun order!28033 () Int)

(declare-fun dynLambda!27109 (Int Int) Int)

(assert (=> d!2185502 (< (dynLambda!27109 order!28033 lambda!408556) (dynLambda!27109 order!28033 lambda!408625))))

(declare-fun forall!16238 (List!67507 Int) Bool)

(assert (=> d!2185502 (= (exists!3165 lt!2504402 lambda!408556) (not (forall!16238 lt!2504402 lambda!408625)))))

(declare-fun bs!1866179 () Bool)

(assert (= bs!1866179 d!2185502))

(declare-fun m!7709262 () Bool)

(assert (=> bs!1866179 m!7709262))

(assert (=> b!7010856 d!2185502))

(declare-fun d!2185504 () Bool)

(declare-fun e!4214427 () Bool)

(assert (=> d!2185504 e!4214427))

(declare-fun res!2860912 () Bool)

(assert (=> d!2185504 (=> (not res!2860912) (not e!4214427))))

(declare-fun lt!2504613 () List!67507)

(declare-fun noDuplicate!2567 (List!67507) Bool)

(assert (=> d!2185504 (= res!2860912 (noDuplicate!2567 lt!2504613))))

(declare-fun choose!52718 ((Set Context!12632)) List!67507)

(assert (=> d!2185504 (= lt!2504613 (choose!52718 lt!2504405))))

(assert (=> d!2185504 (= (toList!10680 lt!2504405) lt!2504613)))

(declare-fun b!7011134 () Bool)

(assert (=> b!7011134 (= e!4214427 (= (content!13378 lt!2504613) lt!2504405))))

(assert (= (and d!2185504 res!2860912) b!7011134))

(declare-fun m!7709264 () Bool)

(assert (=> d!2185504 m!7709264))

(declare-fun m!7709266 () Bool)

(assert (=> d!2185504 m!7709266))

(declare-fun m!7709268 () Bool)

(assert (=> b!7011134 m!7709268))

(assert (=> b!7010856 d!2185504))

(declare-fun d!2185506 () Bool)

(declare-fun c!1302351 () Bool)

(assert (=> d!2185506 (= c!1302351 (isEmpty!39356 s!7408))))

(declare-fun e!4214428 () Bool)

(assert (=> d!2185506 (= (matchZipper!2860 lt!2504406 s!7408) e!4214428)))

(declare-fun b!7011135 () Bool)

(assert (=> b!7011135 (= e!4214428 (nullableZipper!2489 lt!2504406))))

(declare-fun b!7011136 () Bool)

(assert (=> b!7011136 (= e!4214428 (matchZipper!2860 (derivationStepZipper!2800 lt!2504406 (head!14175 s!7408)) (tail!13398 s!7408)))))

(assert (= (and d!2185506 c!1302351) b!7011135))

(assert (= (and d!2185506 (not c!1302351)) b!7011136))

(assert (=> d!2185506 m!7709156))

(declare-fun m!7709270 () Bool)

(assert (=> b!7011135 m!7709270))

(assert (=> b!7011136 m!7709160))

(assert (=> b!7011136 m!7709160))

(declare-fun m!7709272 () Bool)

(assert (=> b!7011136 m!7709272))

(assert (=> b!7011136 m!7709164))

(assert (=> b!7011136 m!7709272))

(assert (=> b!7011136 m!7709164))

(declare-fun m!7709274 () Bool)

(assert (=> b!7011136 m!7709274))

(assert (=> b!7010856 d!2185506))

(declare-fun d!2185508 () Bool)

(declare-fun e!4214431 () Bool)

(assert (=> d!2185508 (= (matchZipper!2860 (set.union lt!2504417 lt!2504395) (t!381261 s!7408)) e!4214431)))

(declare-fun res!2860915 () Bool)

(assert (=> d!2185508 (=> res!2860915 e!4214431)))

(assert (=> d!2185508 (= res!2860915 (matchZipper!2860 lt!2504417 (t!381261 s!7408)))))

(declare-fun lt!2504616 () Unit!161318)

(declare-fun choose!52719 ((Set Context!12632) (Set Context!12632) List!67506) Unit!161318)

(assert (=> d!2185508 (= lt!2504616 (choose!52719 lt!2504417 lt!2504395 (t!381261 s!7408)))))

(assert (=> d!2185508 (= (lemmaZipperConcatMatchesSameAsBothZippers!1493 lt!2504417 lt!2504395 (t!381261 s!7408)) lt!2504616)))

(declare-fun b!7011139 () Bool)

(assert (=> b!7011139 (= e!4214431 (matchZipper!2860 lt!2504395 (t!381261 s!7408)))))

(assert (= (and d!2185508 (not res!2860915)) b!7011139))

(declare-fun m!7709276 () Bool)

(assert (=> d!2185508 m!7709276))

(assert (=> d!2185508 m!7708848))

(declare-fun m!7709278 () Bool)

(assert (=> d!2185508 m!7709278))

(assert (=> b!7011139 m!7708890))

(assert (=> b!7010857 d!2185508))

(declare-fun d!2185510 () Bool)

(declare-fun c!1302352 () Bool)

(assert (=> d!2185510 (= c!1302352 (isEmpty!39356 (t!381261 s!7408)))))

(declare-fun e!4214432 () Bool)

(assert (=> d!2185510 (= (matchZipper!2860 lt!2504417 (t!381261 s!7408)) e!4214432)))

(declare-fun b!7011140 () Bool)

(assert (=> b!7011140 (= e!4214432 (nullableZipper!2489 lt!2504417))))

(declare-fun b!7011141 () Bool)

(assert (=> b!7011141 (= e!4214432 (matchZipper!2860 (derivationStepZipper!2800 lt!2504417 (head!14175 (t!381261 s!7408))) (tail!13398 (t!381261 s!7408))))))

(assert (= (and d!2185510 c!1302352) b!7011140))

(assert (= (and d!2185510 (not c!1302352)) b!7011141))

(assert (=> d!2185510 m!7709112))

(declare-fun m!7709280 () Bool)

(assert (=> b!7011140 m!7709280))

(assert (=> b!7011141 m!7709116))

(assert (=> b!7011141 m!7709116))

(declare-fun m!7709282 () Bool)

(assert (=> b!7011141 m!7709282))

(assert (=> b!7011141 m!7709120))

(assert (=> b!7011141 m!7709282))

(assert (=> b!7011141 m!7709120))

(declare-fun m!7709284 () Bool)

(assert (=> b!7011141 m!7709284))

(assert (=> b!7010857 d!2185510))

(declare-fun d!2185512 () Bool)

(declare-fun c!1302353 () Bool)

(assert (=> d!2185512 (= c!1302353 (isEmpty!39356 (t!381261 s!7408)))))

(declare-fun e!4214433 () Bool)

(assert (=> d!2185512 (= (matchZipper!2860 lt!2504429 (t!381261 s!7408)) e!4214433)))

(declare-fun b!7011142 () Bool)

(assert (=> b!7011142 (= e!4214433 (nullableZipper!2489 lt!2504429))))

(declare-fun b!7011143 () Bool)

(assert (=> b!7011143 (= e!4214433 (matchZipper!2860 (derivationStepZipper!2800 lt!2504429 (head!14175 (t!381261 s!7408))) (tail!13398 (t!381261 s!7408))))))

(assert (= (and d!2185512 c!1302353) b!7011142))

(assert (= (and d!2185512 (not c!1302353)) b!7011143))

(assert (=> d!2185512 m!7709112))

(declare-fun m!7709286 () Bool)

(assert (=> b!7011142 m!7709286))

(assert (=> b!7011143 m!7709116))

(assert (=> b!7011143 m!7709116))

(declare-fun m!7709288 () Bool)

(assert (=> b!7011143 m!7709288))

(assert (=> b!7011143 m!7709120))

(assert (=> b!7011143 m!7709288))

(assert (=> b!7011143 m!7709120))

(declare-fun m!7709290 () Bool)

(assert (=> b!7011143 m!7709290))

(assert (=> b!7010857 d!2185512))

(assert (=> b!7010857 d!2185464))

(declare-fun d!2185514 () Bool)

(declare-fun c!1302354 () Bool)

(assert (=> d!2185514 (= c!1302354 (isEmpty!39356 (t!381261 s!7408)))))

(declare-fun e!4214434 () Bool)

(assert (=> d!2185514 (= (matchZipper!2860 lt!2504426 (t!381261 s!7408)) e!4214434)))

(declare-fun b!7011144 () Bool)

(assert (=> b!7011144 (= e!4214434 (nullableZipper!2489 lt!2504426))))

(declare-fun b!7011145 () Bool)

(assert (=> b!7011145 (= e!4214434 (matchZipper!2860 (derivationStepZipper!2800 lt!2504426 (head!14175 (t!381261 s!7408))) (tail!13398 (t!381261 s!7408))))))

(assert (= (and d!2185514 c!1302354) b!7011144))

(assert (= (and d!2185514 (not c!1302354)) b!7011145))

(assert (=> d!2185514 m!7709112))

(declare-fun m!7709292 () Bool)

(assert (=> b!7011144 m!7709292))

(assert (=> b!7011145 m!7709116))

(assert (=> b!7011145 m!7709116))

(declare-fun m!7709294 () Bool)

(assert (=> b!7011145 m!7709294))

(assert (=> b!7011145 m!7709120))

(assert (=> b!7011145 m!7709294))

(assert (=> b!7011145 m!7709120))

(declare-fun m!7709296 () Bool)

(assert (=> b!7011145 m!7709296))

(assert (=> b!7010857 d!2185514))

(assert (=> b!7010846 d!2185454))

(declare-fun bm!636801 () Bool)

(declare-fun call!636806 () (Set Context!12632))

(assert (=> bm!636801 (= call!636806 (derivationStepZipperDown!2038 (h!73829 (exprs!6816 lt!2504431)) (Context!12633 (t!381260 (exprs!6816 lt!2504431))) (h!73830 s!7408)))))

(declare-fun b!7011146 () Bool)

(declare-fun e!4214436 () (Set Context!12632))

(assert (=> b!7011146 (= e!4214436 (as set.empty (Set Context!12632)))))

(declare-fun b!7011147 () Bool)

(declare-fun e!4214435 () (Set Context!12632))

(assert (=> b!7011147 (= e!4214435 e!4214436)))

(declare-fun c!1302356 () Bool)

(assert (=> b!7011147 (= c!1302356 (is-Cons!67381 (exprs!6816 lt!2504431)))))

(declare-fun d!2185516 () Bool)

(declare-fun c!1302355 () Bool)

(declare-fun e!4214437 () Bool)

(assert (=> d!2185516 (= c!1302355 e!4214437)))

(declare-fun res!2860916 () Bool)

(assert (=> d!2185516 (=> (not res!2860916) (not e!4214437))))

(assert (=> d!2185516 (= res!2860916 (is-Cons!67381 (exprs!6816 lt!2504431)))))

(assert (=> d!2185516 (= (derivationStepZipperUp!1970 lt!2504431 (h!73830 s!7408)) e!4214435)))

(declare-fun b!7011148 () Bool)

(assert (=> b!7011148 (= e!4214435 (set.union call!636806 (derivationStepZipperUp!1970 (Context!12633 (t!381260 (exprs!6816 lt!2504431))) (h!73830 s!7408))))))

(declare-fun b!7011149 () Bool)

(assert (=> b!7011149 (= e!4214436 call!636806)))

(declare-fun b!7011150 () Bool)

(assert (=> b!7011150 (= e!4214437 (nullable!7080 (h!73829 (exprs!6816 lt!2504431))))))

(assert (= (and d!2185516 res!2860916) b!7011150))

(assert (= (and d!2185516 c!1302355) b!7011148))

(assert (= (and d!2185516 (not c!1302355)) b!7011147))

(assert (= (and b!7011147 c!1302356) b!7011149))

(assert (= (and b!7011147 (not c!1302356)) b!7011146))

(assert (= (or b!7011148 b!7011149) bm!636801))

(declare-fun m!7709298 () Bool)

(assert (=> bm!636801 m!7709298))

(declare-fun m!7709300 () Bool)

(assert (=> b!7011148 m!7709300))

(declare-fun m!7709302 () Bool)

(assert (=> b!7011150 m!7709302))

(assert (=> b!7010846 d!2185516))

(declare-fun d!2185518 () Bool)

(assert (=> d!2185518 (= (flatMap!2306 lt!2504411 lambda!408559) (choose!52711 lt!2504411 lambda!408559))))

(declare-fun bs!1866180 () Bool)

(assert (= bs!1866180 d!2185518))

(declare-fun m!7709304 () Bool)

(assert (=> bs!1866180 m!7709304))

(assert (=> b!7010846 d!2185518))

(declare-fun bs!1866181 () Bool)

(declare-fun d!2185520 () Bool)

(assert (= bs!1866181 (and d!2185520 b!7010846)))

(declare-fun lambda!408626 () Int)

(assert (=> bs!1866181 (= lambda!408626 lambda!408559)))

(declare-fun bs!1866182 () Bool)

(assert (= bs!1866182 (and d!2185520 d!2185446)))

(assert (=> bs!1866182 (= lambda!408626 lambda!408606)))

(assert (=> d!2185520 true))

(assert (=> d!2185520 (= (derivationStepZipper!2800 lt!2504411 (h!73830 s!7408)) (flatMap!2306 lt!2504411 lambda!408626))))

(declare-fun bs!1866183 () Bool)

(assert (= bs!1866183 d!2185520))

(declare-fun m!7709306 () Bool)

(assert (=> bs!1866183 m!7709306))

(assert (=> b!7010846 d!2185520))

(declare-fun d!2185522 () Bool)

(assert (=> d!2185522 (= (flatMap!2306 lt!2504411 lambda!408559) (dynLambda!27106 lambda!408559 lt!2504431))))

(declare-fun lt!2504617 () Unit!161318)

(assert (=> d!2185522 (= lt!2504617 (choose!52712 lt!2504411 lt!2504431 lambda!408559))))

(assert (=> d!2185522 (= lt!2504411 (set.insert lt!2504431 (as set.empty (Set Context!12632))))))

(assert (=> d!2185522 (= (lemmaFlatMapOnSingletonSet!1821 lt!2504411 lt!2504431 lambda!408559) lt!2504617)))

(declare-fun b_lambda!264381 () Bool)

(assert (=> (not b_lambda!264381) (not d!2185522)))

(declare-fun bs!1866184 () Bool)

(assert (= bs!1866184 d!2185522))

(assert (=> bs!1866184 m!7708916))

(declare-fun m!7709308 () Bool)

(assert (=> bs!1866184 m!7709308))

(declare-fun m!7709310 () Bool)

(assert (=> bs!1866184 m!7709310))

(assert (=> bs!1866184 m!7708908))

(assert (=> b!7010846 d!2185522))

(declare-fun d!2185524 () Bool)

(declare-fun nullableFct!2683 (Regex!17320) Bool)

(assert (=> d!2185524 (= (nullable!7080 (h!73829 (exprs!6816 lt!2504399))) (nullableFct!2683 (h!73829 (exprs!6816 lt!2504399))))))

(declare-fun bs!1866185 () Bool)

(assert (= bs!1866185 d!2185524))

(declare-fun m!7709312 () Bool)

(assert (=> bs!1866185 m!7709312))

(assert (=> b!7010847 d!2185524))

(declare-fun d!2185526 () Bool)

(assert (=> d!2185526 (= (tail!13396 (exprs!6816 lt!2504399)) (t!381260 (exprs!6816 lt!2504399)))))

(assert (=> b!7010847 d!2185526))

(assert (=> b!7010868 d!2185464))

(declare-fun b!7011155 () Bool)

(declare-fun e!4214440 () Bool)

(declare-fun tp!1932429 () Bool)

(assert (=> b!7011155 (= e!4214440 (and tp_is_empty!43865 tp!1932429))))

(assert (=> b!7010859 (= tp!1932411 e!4214440)))

(assert (= (and b!7010859 (is-Cons!67382 (t!381261 s!7408))) b!7011155))

(declare-fun b!7011160 () Bool)

(declare-fun e!4214443 () Bool)

(declare-fun tp!1932434 () Bool)

(declare-fun tp!1932435 () Bool)

(assert (=> b!7011160 (= e!4214443 (and tp!1932434 tp!1932435))))

(assert (=> b!7010869 (= tp!1932412 e!4214443)))

(assert (= (and b!7010869 (is-Cons!67381 (exprs!6816 setElem!48368))) b!7011160))

(declare-fun b!7011161 () Bool)

(declare-fun e!4214444 () Bool)

(declare-fun tp!1932436 () Bool)

(declare-fun tp!1932437 () Bool)

(assert (=> b!7011161 (= e!4214444 (and tp!1932436 tp!1932437))))

(assert (=> b!7010860 (= tp!1932413 e!4214444)))

(assert (= (and b!7010860 (is-Cons!67381 (exprs!6816 ct2!306))) b!7011161))

(declare-fun condSetEmpty!48374 () Bool)

(assert (=> setNonEmpty!48368 (= condSetEmpty!48374 (= setRest!48368 (as set.empty (Set Context!12632))))))

(declare-fun setRes!48374 () Bool)

(assert (=> setNonEmpty!48368 (= tp!1932414 setRes!48374)))

(declare-fun setIsEmpty!48374 () Bool)

(assert (=> setIsEmpty!48374 setRes!48374))

(declare-fun tp!1932442 () Bool)

(declare-fun setElem!48374 () Context!12632)

(declare-fun setNonEmpty!48374 () Bool)

(declare-fun e!4214447 () Bool)

(assert (=> setNonEmpty!48374 (= setRes!48374 (and tp!1932442 (inv!86160 setElem!48374) e!4214447))))

(declare-fun setRest!48374 () (Set Context!12632))

(assert (=> setNonEmpty!48374 (= setRest!48368 (set.union (set.insert setElem!48374 (as set.empty (Set Context!12632))) setRest!48374))))

(declare-fun b!7011166 () Bool)

(declare-fun tp!1932443 () Bool)

(assert (=> b!7011166 (= e!4214447 tp!1932443)))

(assert (= (and setNonEmpty!48368 condSetEmpty!48374) setIsEmpty!48374))

(assert (= (and setNonEmpty!48368 (not condSetEmpty!48374)) setNonEmpty!48374))

(assert (= setNonEmpty!48374 b!7011166))

(declare-fun m!7709314 () Bool)

(assert (=> setNonEmpty!48374 m!7709314))

(declare-fun b_lambda!264383 () Bool)

(assert (= b_lambda!264375 (or b!7010846 b_lambda!264383)))

(declare-fun bs!1866186 () Bool)

(declare-fun d!2185528 () Bool)

(assert (= bs!1866186 (and d!2185528 b!7010846)))

(assert (=> bs!1866186 (= (dynLambda!27106 lambda!408559 lt!2504399) (derivationStepZipperUp!1970 lt!2504399 (h!73830 s!7408)))))

(assert (=> bs!1866186 m!7708860))

(assert (=> d!2185444 d!2185528))

(declare-fun b_lambda!264385 () Bool)

(assert (= b_lambda!264379 (or b!7010856 b_lambda!264385)))

(declare-fun bs!1866187 () Bool)

(declare-fun d!2185530 () Bool)

(assert (= bs!1866187 (and d!2185530 b!7010856)))

(assert (=> bs!1866187 (= (dynLambda!27108 lambda!408556 lt!2504610) (matchZipper!2860 (set.insert lt!2504610 (as set.empty (Set Context!12632))) s!7408))))

(declare-fun m!7709316 () Bool)

(assert (=> bs!1866187 m!7709316))

(assert (=> bs!1866187 m!7709316))

(declare-fun m!7709318 () Bool)

(assert (=> bs!1866187 m!7709318))

(assert (=> d!2185500 d!2185530))

(declare-fun b_lambda!264387 () Bool)

(assert (= b_lambda!264381 (or b!7010846 b_lambda!264387)))

(declare-fun bs!1866188 () Bool)

(declare-fun d!2185532 () Bool)

(assert (= bs!1866188 (and d!2185532 b!7010846)))

(assert (=> bs!1866188 (= (dynLambda!27106 lambda!408559 lt!2504431) (derivationStepZipperUp!1970 lt!2504431 (h!73830 s!7408)))))

(assert (=> bs!1866188 m!7708912))

(assert (=> d!2185522 d!2185532))

(declare-fun b_lambda!264389 () Bool)

(assert (= b_lambda!264377 (or b!7010850 b_lambda!264389)))

(declare-fun bs!1866189 () Bool)

(declare-fun d!2185534 () Bool)

(assert (= bs!1866189 (and d!2185534 b!7010850)))

(declare-fun lt!2504618 () Unit!161318)

(assert (=> bs!1866189 (= lt!2504618 (lemmaConcatPreservesForall!656 (exprs!6816 lt!2504579) (exprs!6816 ct2!306) lambda!408558))))

(assert (=> bs!1866189 (= (dynLambda!27107 lambda!408557 lt!2504579) (Context!12633 (++!15319 (exprs!6816 lt!2504579) (exprs!6816 ct2!306))))))

(declare-fun m!7709320 () Bool)

(assert (=> bs!1866189 m!7709320))

(declare-fun m!7709322 () Bool)

(assert (=> bs!1866189 m!7709322))

(assert (=> d!2185456 d!2185534))

(push 1)

(assert (not d!2185468))

(assert (not bs!1866189))

(assert (not d!2185498))

(assert (not bm!636789))

(assert (not b!7011142))

(assert (not bs!1866188))

(assert (not d!2185444))

(assert (not d!2185450))

(assert (not b!7011108))

(assert (not d!2185508))

(assert (not d!2185446))

(assert (not b!7011135))

(assert (not b!7011033))

(assert (not bs!1866187))

(assert (not b!7011080))

(assert (not bm!636798))

(assert (not b!7011120))

(assert (not b!7011103))

(assert (not d!2185462))

(assert (not d!2185482))

(assert (not b!7010990))

(assert (not b!7011166))

(assert (not b!7011161))

(assert (not d!2185500))

(assert (not d!2185460))

(assert (not d!2185494))

(assert (not b_lambda!264385))

(assert (not d!2185506))

(assert (not b!7011150))

(assert (not b!7011155))

(assert (not d!2185464))

(assert (not b!7011105))

(assert (not b!7011134))

(assert (not b!7011077))

(assert (not bm!636791))

(assert (not bs!1866186))

(assert (not b!7010991))

(assert (not b!7011148))

(assert (not bm!636773))

(assert (not b!7011069))

(assert (not b!7011110))

(assert (not b!7011037))

(assert (not d!2185502))

(assert (not b_lambda!264383))

(assert (not d!2185490))

(assert (not d!2185472))

(assert (not b!7011145))

(assert (not d!2185478))

(assert (not b_lambda!264389))

(assert (not d!2185518))

(assert (not b!7010980))

(assert (not bm!636801))

(assert (not b!7011141))

(assert (not d!2185484))

(assert (not d!2185504))

(assert (not b!7011104))

(assert (not b!7011124))

(assert (not d!2185486))

(assert (not b!7011143))

(assert (not b!7010979))

(assert (not b!7011100))

(assert (not setNonEmpty!48374))

(assert (not b_lambda!264387))

(assert (not b!7011034))

(assert (not bm!636772))

(assert (not b!7011136))

(assert (not b!7010970))

(assert (not bm!636765))

(assert (not b!7011036))

(assert tp_is_empty!43865)

(assert (not d!2185510))

(assert (not b!7011126))

(assert (not bm!636788))

(assert (not b!7011139))

(assert (not d!2185514))

(assert (not bm!636795))

(assert (not d!2185454))

(assert (not bm!636793))

(assert (not b!7011109))

(assert (not bm!636796))

(assert (not b!7011144))

(assert (not b!7011107))

(assert (not d!2185480))

(assert (not d!2185440))

(assert (not bm!636800))

(assert (not b!7011079))

(assert (not d!2185524))

(assert (not d!2185522))

(assert (not d!2185476))

(assert (not b!7010972))

(assert (not d!2185512))

(assert (not b!7011073))

(assert (not b!7011160))

(assert (not d!2185520))

(assert (not b!7011081))

(assert (not d!2185474))

(assert (not b!7011140))

(assert (not b!7011018))

(assert (not b!7011072))

(assert (not d!2185452))

(assert (not d!2185456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

