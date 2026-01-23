; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!689132 () Bool)

(assert start!689132)

(declare-fun b!7082338 () Bool)

(assert (=> b!7082338 true))

(declare-fun b!7082339 () Bool)

(assert (=> b!7082339 true))

(declare-fun b!7082333 () Bool)

(assert (=> b!7082333 true))

(declare-fun bs!1882374 () Bool)

(declare-fun b!7082331 () Bool)

(assert (= bs!1882374 (and b!7082331 b!7082338)))

(declare-datatypes ((C!35676 0))(
  ( (C!35677 (val!27540 Int)) )
))
(declare-datatypes ((List!68635 0))(
  ( (Nil!68511) (Cons!68511 (h!74959 C!35676) (t!382420 List!68635)) )
))
(declare-fun s!7408 () List!68635)

(declare-fun lambda!428295 () Int)

(declare-fun lambda!428291 () Int)

(assert (=> bs!1882374 (= (= Nil!68511 s!7408) (= lambda!428295 lambda!428291))))

(declare-fun e!4257864 () Bool)

(assert (=> b!7082331 (= e!4257864 true)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17703 0))(
  ( (ElementMatch!17703 (c!1321952 C!35676)) (Concat!26548 (regOne!35918 Regex!17703) (regTwo!35918 Regex!17703)) (EmptyExpr!17703) (Star!17703 (reg!18032 Regex!17703)) (EmptyLang!17703) (Union!17703 (regOne!35919 Regex!17703) (regTwo!35919 Regex!17703)) )
))
(declare-datatypes ((List!68636 0))(
  ( (Nil!68512) (Cons!68512 (h!74960 Regex!17703) (t!382421 List!68636)) )
))
(declare-datatypes ((Context!13398 0))(
  ( (Context!13399 (exprs!7199 List!68636)) )
))
(declare-fun z1!570 () (InoxSet Context!13398))

(declare-datatypes ((tuple2!68344 0))(
  ( (tuple2!68345 (_1!37475 List!68635) (_2!37475 List!68635)) )
))
(declare-datatypes ((Option!17004 0))(
  ( (None!17003) (Some!17003 (v!53297 tuple2!68344)) )
))
(declare-fun lt!2553485 () Option!17004)

(declare-fun lt!2553474 () (InoxSet Context!13398))

(declare-fun findConcatSeparationZippers!520 ((InoxSet Context!13398) (InoxSet Context!13398) List!68635 List!68635 List!68635) Option!17004)

(assert (=> b!7082331 (= lt!2553485 (findConcatSeparationZippers!520 z1!570 lt!2553474 Nil!68511 s!7408 s!7408))))

(declare-datatypes ((List!68637 0))(
  ( (Nil!68513) (Cons!68513 (h!74961 Context!13398) (t!382422 List!68637)) )
))
(declare-fun lt!2553478 () List!68637)

(declare-fun matchZipper!3243 ((InoxSet Context!13398) List!68635) Bool)

(declare-fun content!13893 (List!68637) (InoxSet Context!13398))

(assert (=> b!7082331 (matchZipper!3243 (content!13893 lt!2553478) Nil!68511)))

(declare-datatypes ((Unit!162117 0))(
  ( (Unit!162118) )
))
(declare-fun lt!2553483 () Unit!162117)

(declare-fun lemmaExistsMatchingContextThenMatchingString!76 (List!68637 List!68635) Unit!162117)

(assert (=> b!7082331 (= lt!2553483 (lemmaExistsMatchingContextThenMatchingString!76 lt!2553478 Nil!68511))))

(declare-fun toList!11044 ((InoxSet Context!13398)) List!68637)

(assert (=> b!7082331 (= lt!2553478 (toList!11044 z1!570))))

(declare-fun exists!3795 ((InoxSet Context!13398) Int) Bool)

(assert (=> b!7082331 (exists!3795 z1!570 lambda!428295)))

(declare-fun lt!2553471 () Unit!162117)

(declare-fun lt!2553487 () Context!13398)

(declare-fun lemmaContainsThenExists!185 ((InoxSet Context!13398) Context!13398 Int) Unit!162117)

(assert (=> b!7082331 (= lt!2553471 (lemmaContainsThenExists!185 z1!570 lt!2553487 lambda!428295))))

(declare-fun lt!2553472 () (InoxSet Context!13398))

(declare-fun isDefined!13705 (Option!17004) Bool)

(assert (=> b!7082331 (isDefined!13705 (findConcatSeparationZippers!520 lt!2553472 lt!2553474 Nil!68511 s!7408 s!7408))))

(declare-fun lt!2553489 () Unit!162117)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!106 ((InoxSet Context!13398) (InoxSet Context!13398) List!68635 List!68635 List!68635 List!68635 List!68635) Unit!162117)

(assert (=> b!7082331 (= lt!2553489 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!106 lt!2553472 lt!2553474 Nil!68511 s!7408 s!7408 Nil!68511 s!7408))))

(declare-fun b!7082332 () Bool)

(declare-fun e!4257858 () Bool)

(declare-fun e!4257868 () Bool)

(assert (=> b!7082332 (= e!4257858 e!4257868)))

(declare-fun res!2893173 () Bool)

(assert (=> b!7082332 (=> res!2893173 e!4257868)))

(declare-fun lt!2553473 () (InoxSet Context!13398))

(declare-fun lt!2553475 () (InoxSet Context!13398))

(assert (=> b!7082332 (= res!2893173 (not (= lt!2553473 lt!2553475)))))

(declare-fun lt!2553468 () Context!13398)

(assert (=> b!7082332 (= lt!2553473 (store ((as const (Array Context!13398 Bool)) false) lt!2553468 true))))

(declare-fun lambda!428293 () Int)

(declare-fun lt!2553488 () Unit!162117)

(declare-fun ct2!306 () Context!13398)

(declare-fun lemmaConcatPreservesForall!1014 (List!68636 List!68636 Int) Unit!162117)

(assert (=> b!7082332 (= lt!2553488 (lemmaConcatPreservesForall!1014 (exprs!7199 lt!2553487) (exprs!7199 ct2!306) lambda!428293))))

(declare-fun setIsEmpty!50563 () Bool)

(declare-fun setRes!50563 () Bool)

(assert (=> setIsEmpty!50563 setRes!50563))

(declare-fun e!4257862 () Bool)

(assert (=> b!7082333 (= e!4257868 e!4257862)))

(declare-fun res!2893177 () Bool)

(assert (=> b!7082333 (=> res!2893177 e!4257862)))

(declare-fun lt!2553477 () (InoxSet Context!13398))

(declare-fun derivationStepZipper!3153 ((InoxSet Context!13398) C!35676) (InoxSet Context!13398))

(assert (=> b!7082333 (= res!2893177 (not (= (derivationStepZipper!3153 lt!2553473 (h!74959 s!7408)) lt!2553477)))))

(declare-fun lambda!428294 () Int)

(declare-fun flatMap!2629 ((InoxSet Context!13398) Int) (InoxSet Context!13398))

(declare-fun derivationStepZipperUp!2287 (Context!13398 C!35676) (InoxSet Context!13398))

(assert (=> b!7082333 (= (flatMap!2629 lt!2553473 lambda!428294) (derivationStepZipperUp!2287 lt!2553468 (h!74959 s!7408)))))

(declare-fun lt!2553469 () Unit!162117)

(declare-fun lemmaFlatMapOnSingletonSet!2138 ((InoxSet Context!13398) Context!13398 Int) Unit!162117)

(assert (=> b!7082333 (= lt!2553469 (lemmaFlatMapOnSingletonSet!2138 lt!2553473 lt!2553468 lambda!428294))))

(assert (=> b!7082333 (= lt!2553477 (derivationStepZipperUp!2287 lt!2553468 (h!74959 s!7408)))))

(declare-fun lt!2553486 () Unit!162117)

(assert (=> b!7082333 (= lt!2553486 (lemmaConcatPreservesForall!1014 (exprs!7199 lt!2553487) (exprs!7199 ct2!306) lambda!428293))))

(declare-fun b!7082334 () Bool)

(declare-fun e!4257863 () Bool)

(declare-fun e!4257859 () Bool)

(assert (=> b!7082334 (= e!4257863 e!4257859)))

(declare-fun res!2893172 () Bool)

(assert (=> b!7082334 (=> res!2893172 e!4257859)))

(assert (=> b!7082334 (= res!2893172 (not (matchZipper!3243 lt!2553474 s!7408)))))

(assert (=> b!7082334 (= lt!2553474 (store ((as const (Array Context!13398 Bool)) false) ct2!306 true))))

(declare-fun b!7082335 () Bool)

(declare-fun res!2893174 () Bool)

(assert (=> b!7082335 (=> res!2893174 e!4257862)))

(get-info :version)

(assert (=> b!7082335 (= res!2893174 ((_ is Cons!68512) (exprs!7199 lt!2553487)))))

(declare-fun b!7082336 () Bool)

(declare-fun res!2893176 () Bool)

(declare-fun e!4257860 () Bool)

(assert (=> b!7082336 (=> (not res!2893176) (not e!4257860))))

(assert (=> b!7082336 (= res!2893176 ((_ is Cons!68511) s!7408))))

(declare-fun b!7082337 () Bool)

(declare-fun e!4257867 () Bool)

(declare-fun tp!1943789 () Bool)

(assert (=> b!7082337 (= e!4257867 tp!1943789)))

(declare-fun e!4257865 () Bool)

(assert (=> b!7082338 (= e!4257860 (not e!4257865))))

(declare-fun res!2893179 () Bool)

(assert (=> b!7082338 (=> res!2893179 e!4257865)))

(assert (=> b!7082338 (= res!2893179 (not (matchZipper!3243 lt!2553475 s!7408)))))

(declare-fun lt!2553484 () Context!13398)

(assert (=> b!7082338 (= lt!2553475 (store ((as const (Array Context!13398 Bool)) false) lt!2553484 true))))

(declare-fun lt!2553480 () (InoxSet Context!13398))

(declare-fun getWitness!1839 ((InoxSet Context!13398) Int) Context!13398)

(assert (=> b!7082338 (= lt!2553484 (getWitness!1839 lt!2553480 lambda!428291))))

(declare-fun lt!2553490 () List!68637)

(declare-fun exists!3796 (List!68637 Int) Bool)

(assert (=> b!7082338 (exists!3796 lt!2553490 lambda!428291)))

(declare-fun lt!2553482 () Unit!162117)

(declare-fun lemmaZipperMatchesExistsMatchingContext!624 (List!68637 List!68635) Unit!162117)

(assert (=> b!7082338 (= lt!2553482 (lemmaZipperMatchesExistsMatchingContext!624 lt!2553490 s!7408))))

(assert (=> b!7082338 (= lt!2553490 (toList!11044 lt!2553480))))

(assert (=> b!7082339 (= e!4257865 e!4257858)))

(declare-fun res!2893170 () Bool)

(assert (=> b!7082339 (=> res!2893170 e!4257858)))

(assert (=> b!7082339 (= res!2893170 (or (not (= lt!2553468 lt!2553484)) (not (select z1!570 lt!2553487))))))

(declare-fun ++!15874 (List!68636 List!68636) List!68636)

(assert (=> b!7082339 (= lt!2553468 (Context!13399 (++!15874 (exprs!7199 lt!2553487) (exprs!7199 ct2!306))))))

(declare-fun lt!2553479 () Unit!162117)

(assert (=> b!7082339 (= lt!2553479 (lemmaConcatPreservesForall!1014 (exprs!7199 lt!2553487) (exprs!7199 ct2!306) lambda!428293))))

(declare-fun lambda!428292 () Int)

(declare-fun mapPost2!532 ((InoxSet Context!13398) Int Context!13398) Context!13398)

(assert (=> b!7082339 (= lt!2553487 (mapPost2!532 z1!570 lambda!428292 lt!2553484))))

(declare-fun b!7082340 () Bool)

(assert (=> b!7082340 (= e!4257859 e!4257864)))

(declare-fun res!2893178 () Bool)

(assert (=> b!7082340 (=> res!2893178 e!4257864)))

(declare-fun lt!2553481 () Bool)

(assert (=> b!7082340 (= res!2893178 (not lt!2553481))))

(assert (=> b!7082340 (= lt!2553481 true)))

(assert (=> b!7082340 (= lt!2553481 (matchZipper!3243 lt!2553472 Nil!68511))))

(declare-fun lt!2553470 () Unit!162117)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!34 ((InoxSet Context!13398) List!68635) Unit!162117)

(assert (=> b!7082340 (= lt!2553470 (lemmaZipperOfEmptyContextMatchesEmptyString!34 lt!2553472 Nil!68511))))

(assert (=> b!7082340 (= lt!2553472 (store ((as const (Array Context!13398 Bool)) false) lt!2553487 true))))

(declare-fun setNonEmpty!50563 () Bool)

(declare-fun tp!1943791 () Bool)

(declare-fun setElem!50563 () Context!13398)

(declare-fun inv!87116 (Context!13398) Bool)

(assert (=> setNonEmpty!50563 (= setRes!50563 (and tp!1943791 (inv!87116 setElem!50563) e!4257867))))

(declare-fun setRest!50563 () (InoxSet Context!13398))

(assert (=> setNonEmpty!50563 (= z1!570 ((_ map or) (store ((as const (Array Context!13398 Bool)) false) setElem!50563 true) setRest!50563))))

(declare-fun res!2893180 () Bool)

(assert (=> start!689132 (=> (not res!2893180) (not e!4257860))))

(assert (=> start!689132 (= res!2893180 (matchZipper!3243 lt!2553480 s!7408))))

(declare-fun appendTo!824 ((InoxSet Context!13398) Context!13398) (InoxSet Context!13398))

(assert (=> start!689132 (= lt!2553480 (appendTo!824 z1!570 ct2!306))))

(assert (=> start!689132 e!4257860))

(declare-fun condSetEmpty!50563 () Bool)

(assert (=> start!689132 (= condSetEmpty!50563 (= z1!570 ((as const (Array Context!13398 Bool)) false)))))

(assert (=> start!689132 setRes!50563))

(declare-fun e!4257861 () Bool)

(assert (=> start!689132 (and (inv!87116 ct2!306) e!4257861)))

(declare-fun e!4257866 () Bool)

(assert (=> start!689132 e!4257866))

(declare-fun b!7082341 () Bool)

(declare-fun res!2893175 () Bool)

(assert (=> b!7082341 (=> res!2893175 e!4257865)))

(assert (=> b!7082341 (= res!2893175 (not (select lt!2553480 lt!2553484)))))

(declare-fun b!7082342 () Bool)

(assert (=> b!7082342 (= e!4257862 e!4257863)))

(declare-fun res!2893171 () Bool)

(assert (=> b!7082342 (=> res!2893171 e!4257863)))

(assert (=> b!7082342 (= res!2893171 (not (= lt!2553468 ct2!306)))))

(declare-fun lt!2553476 () Unit!162117)

(assert (=> b!7082342 (= lt!2553476 (lemmaConcatPreservesForall!1014 (exprs!7199 lt!2553487) (exprs!7199 ct2!306) lambda!428293))))

(declare-fun b!7082343 () Bool)

(declare-fun tp_is_empty!44631 () Bool)

(declare-fun tp!1943790 () Bool)

(assert (=> b!7082343 (= e!4257866 (and tp_is_empty!44631 tp!1943790))))

(declare-fun b!7082344 () Bool)

(declare-fun tp!1943792 () Bool)

(assert (=> b!7082344 (= e!4257861 tp!1943792)))

(assert (= (and start!689132 res!2893180) b!7082336))

(assert (= (and b!7082336 res!2893176) b!7082338))

(assert (= (and b!7082338 (not res!2893179)) b!7082341))

(assert (= (and b!7082341 (not res!2893175)) b!7082339))

(assert (= (and b!7082339 (not res!2893170)) b!7082332))

(assert (= (and b!7082332 (not res!2893173)) b!7082333))

(assert (= (and b!7082333 (not res!2893177)) b!7082335))

(assert (= (and b!7082335 (not res!2893174)) b!7082342))

(assert (= (and b!7082342 (not res!2893171)) b!7082334))

(assert (= (and b!7082334 (not res!2893172)) b!7082340))

(assert (= (and b!7082340 (not res!2893178)) b!7082331))

(assert (= (and start!689132 condSetEmpty!50563) setIsEmpty!50563))

(assert (= (and start!689132 (not condSetEmpty!50563)) setNonEmpty!50563))

(assert (= setNonEmpty!50563 b!7082337))

(assert (= start!689132 b!7082344))

(assert (= (and start!689132 ((_ is Cons!68511) s!7408)) b!7082343))

(declare-fun m!7813874 () Bool)

(assert (=> b!7082342 m!7813874))

(declare-fun m!7813876 () Bool)

(assert (=> b!7082341 m!7813876))

(declare-fun m!7813878 () Bool)

(assert (=> b!7082331 m!7813878))

(declare-fun m!7813880 () Bool)

(assert (=> b!7082331 m!7813880))

(declare-fun m!7813882 () Bool)

(assert (=> b!7082331 m!7813882))

(declare-fun m!7813884 () Bool)

(assert (=> b!7082331 m!7813884))

(declare-fun m!7813886 () Bool)

(assert (=> b!7082331 m!7813886))

(declare-fun m!7813888 () Bool)

(assert (=> b!7082331 m!7813888))

(declare-fun m!7813890 () Bool)

(assert (=> b!7082331 m!7813890))

(declare-fun m!7813892 () Bool)

(assert (=> b!7082331 m!7813892))

(declare-fun m!7813894 () Bool)

(assert (=> b!7082331 m!7813894))

(declare-fun m!7813896 () Bool)

(assert (=> b!7082331 m!7813896))

(assert (=> b!7082331 m!7813880))

(assert (=> b!7082331 m!7813890))

(declare-fun m!7813898 () Bool)

(assert (=> b!7082340 m!7813898))

(declare-fun m!7813900 () Bool)

(assert (=> b!7082340 m!7813900))

(declare-fun m!7813902 () Bool)

(assert (=> b!7082340 m!7813902))

(declare-fun m!7813904 () Bool)

(assert (=> start!689132 m!7813904))

(declare-fun m!7813906 () Bool)

(assert (=> start!689132 m!7813906))

(declare-fun m!7813908 () Bool)

(assert (=> start!689132 m!7813908))

(declare-fun m!7813910 () Bool)

(assert (=> b!7082339 m!7813910))

(declare-fun m!7813912 () Bool)

(assert (=> b!7082339 m!7813912))

(assert (=> b!7082339 m!7813874))

(declare-fun m!7813914 () Bool)

(assert (=> b!7082339 m!7813914))

(declare-fun m!7813916 () Bool)

(assert (=> b!7082333 m!7813916))

(declare-fun m!7813918 () Bool)

(assert (=> b!7082333 m!7813918))

(declare-fun m!7813920 () Bool)

(assert (=> b!7082333 m!7813920))

(assert (=> b!7082333 m!7813874))

(declare-fun m!7813922 () Bool)

(assert (=> b!7082333 m!7813922))

(declare-fun m!7813924 () Bool)

(assert (=> b!7082338 m!7813924))

(declare-fun m!7813926 () Bool)

(assert (=> b!7082338 m!7813926))

(declare-fun m!7813928 () Bool)

(assert (=> b!7082338 m!7813928))

(declare-fun m!7813930 () Bool)

(assert (=> b!7082338 m!7813930))

(declare-fun m!7813932 () Bool)

(assert (=> b!7082338 m!7813932))

(declare-fun m!7813934 () Bool)

(assert (=> b!7082338 m!7813934))

(declare-fun m!7813936 () Bool)

(assert (=> setNonEmpty!50563 m!7813936))

(declare-fun m!7813938 () Bool)

(assert (=> b!7082334 m!7813938))

(declare-fun m!7813940 () Bool)

(assert (=> b!7082334 m!7813940))

(declare-fun m!7813942 () Bool)

(assert (=> b!7082332 m!7813942))

(assert (=> b!7082332 m!7813874))

(check-sat (not b!7082343) (not b!7082342) (not b!7082339) (not b!7082334) (not b!7082338) (not b!7082333) tp_is_empty!44631 (not b!7082331) (not b!7082337) (not b!7082340) (not start!689132) (not b!7082332) (not setNonEmpty!50563) (not b!7082344))
(check-sat)
