; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!676652 () Bool)

(assert start!676652)

(declare-fun b!7018842 () Bool)

(assert (=> b!7018842 true))

(declare-fun b!7018846 () Bool)

(assert (=> b!7018846 true))

(declare-fun b!7018850 () Bool)

(assert (=> b!7018850 true))

(declare-fun bs!1867197 () Bool)

(declare-fun b!7018843 () Bool)

(assert (= bs!1867197 (and b!7018843 b!7018842)))

(declare-fun lambda!410720 () Int)

(declare-fun lambda!410716 () Int)

(declare-datatypes ((C!35010 0))(
  ( (C!35011 (val!27207 Int)) )
))
(declare-datatypes ((List!67655 0))(
  ( (Nil!67531) (Cons!67531 (h!73979 C!35010) (t!381410 List!67655)) )
))
(declare-fun lt!2510382 () List!67655)

(declare-fun s!7408 () List!67655)

(assert (=> bs!1867197 (= (= lt!2510382 s!7408) (= lambda!410720 lambda!410716))))

(assert (=> b!7018843 true))

(declare-fun b!7018836 () Bool)

(declare-fun res!2864857 () Bool)

(declare-fun e!4219148 () Bool)

(assert (=> b!7018836 (=> (not res!2864857) (not e!4219148))))

(assert (=> b!7018836 (= res!2864857 (is-Cons!67531 s!7408))))

(declare-fun b!7018837 () Bool)

(declare-fun e!4219153 () Bool)

(declare-fun tp!1933613 () Bool)

(assert (=> b!7018837 (= e!4219153 tp!1933613)))

(declare-fun b!7018838 () Bool)

(declare-fun e!4219156 () Bool)

(declare-fun e!4219151 () Bool)

(assert (=> b!7018838 (= e!4219156 e!4219151)))

(declare-fun res!2864859 () Bool)

(assert (=> b!7018838 (=> res!2864859 e!4219151)))

(declare-datatypes ((Regex!17370 0))(
  ( (ElementMatch!17370 (c!1304269 C!35010)) (Concat!26215 (regOne!35252 Regex!17370) (regTwo!35252 Regex!17370)) (EmptyExpr!17370) (Star!17370 (reg!17699 Regex!17370)) (EmptyLang!17370) (Union!17370 (regOne!35253 Regex!17370) (regTwo!35253 Regex!17370)) )
))
(declare-datatypes ((List!67656 0))(
  ( (Nil!67532) (Cons!67532 (h!73980 Regex!17370) (t!381411 List!67656)) )
))
(declare-datatypes ((Context!12732 0))(
  ( (Context!12733 (exprs!6866 List!67656)) )
))
(declare-fun lt!2510388 () Context!12732)

(declare-fun nullable!7130 (Regex!17370) Bool)

(assert (=> b!7018838 (= res!2864859 (nullable!7130 (h!73980 (exprs!6866 lt!2510388))))))

(declare-fun lt!2510376 () Context!12732)

(declare-fun lt!2510379 () List!67656)

(assert (=> b!7018838 (= lt!2510376 (Context!12733 lt!2510379))))

(declare-fun tail!13468 (List!67656) List!67656)

(assert (=> b!7018838 (= lt!2510379 (tail!13468 (exprs!6866 lt!2510388)))))

(declare-fun b!7018839 () Bool)

(declare-fun res!2864855 () Bool)

(assert (=> b!7018839 (=> res!2864855 e!4219156)))

(declare-fun isEmpty!39439 (List!67656) Bool)

(assert (=> b!7018839 (= res!2864855 (isEmpty!39439 (exprs!6866 lt!2510388)))))

(declare-fun b!7018840 () Bool)

(declare-fun res!2864854 () Bool)

(declare-fun e!4219149 () Bool)

(assert (=> b!7018840 (=> res!2864854 e!4219149)))

(declare-fun lt!2510395 () Context!12732)

(declare-fun lt!2510398 () (Set Context!12732))

(assert (=> b!7018840 (= res!2864854 (not (set.member lt!2510395 lt!2510398)))))

(declare-fun b!7018841 () Bool)

(declare-fun e!4219155 () Bool)

(declare-fun tp!1933612 () Bool)

(assert (=> b!7018841 (= e!4219155 tp!1933612)))

(declare-fun setRes!48609 () Bool)

(declare-fun setElem!48609 () Context!12732)

(declare-fun tp!1933614 () Bool)

(declare-fun setNonEmpty!48609 () Bool)

(declare-fun inv!86285 (Context!12732) Bool)

(assert (=> setNonEmpty!48609 (= setRes!48609 (and tp!1933614 (inv!86285 setElem!48609) e!4219153))))

(declare-fun z1!570 () (Set Context!12732))

(declare-fun setRest!48609 () (Set Context!12732))

(assert (=> setNonEmpty!48609 (= z1!570 (set.union (set.insert setElem!48609 (as set.empty (Set Context!12732))) setRest!48609))))

(declare-fun e!4219150 () Bool)

(declare-fun ++!15404 (List!67655 List!67655) List!67655)

(assert (=> b!7018843 (= e!4219150 (= (++!15404 Nil!67531 s!7408) s!7408))))

(declare-fun lt!2510393 () (Set Context!12732))

(declare-datatypes ((tuple2!68022 0))(
  ( (tuple2!68023 (_1!37314 List!67655) (_2!37314 List!67655)) )
))
(declare-datatypes ((Option!16843 0))(
  ( (None!16842) (Some!16842 (v!53120 tuple2!68022)) )
))
(declare-fun isDefined!13544 (Option!16843) Bool)

(declare-fun findConcatSeparationZippers!359 ((Set Context!12732) (Set Context!12732) List!67655 List!67655 List!67655) Option!16843)

(assert (=> b!7018843 (isDefined!13544 (findConcatSeparationZippers!359 z1!570 lt!2510393 Nil!67531 s!7408 s!7408))))

(declare-fun lt!2510380 () tuple2!68022)

(declare-datatypes ((Unit!161422 0))(
  ( (Unit!161423) )
))
(declare-fun lt!2510374 () Unit!161422)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!31 ((Set Context!12732) (Set Context!12732) List!67655 List!67655 List!67655 List!67655 List!67655) Unit!161422)

(assert (=> b!7018843 (= lt!2510374 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!31 z1!570 lt!2510393 lt!2510382 (_2!37314 lt!2510380) s!7408 Nil!67531 s!7408))))

(declare-datatypes ((List!67657 0))(
  ( (Nil!67533) (Cons!67533 (h!73981 Context!12732) (t!381412 List!67657)) )
))
(declare-fun lt!2510368 () List!67657)

(declare-fun matchZipper!2910 ((Set Context!12732) List!67655) Bool)

(declare-fun content!13437 (List!67657) (Set Context!12732))

(assert (=> b!7018843 (matchZipper!2910 (content!13437 lt!2510368) lt!2510382)))

(declare-fun lt!2510392 () Unit!161422)

(declare-fun lemmaExistsMatchingContextThenMatchingString!33 (List!67657 List!67655) Unit!161422)

(assert (=> b!7018843 (= lt!2510392 (lemmaExistsMatchingContextThenMatchingString!33 lt!2510368 lt!2510382))))

(declare-fun toList!10730 ((Set Context!12732)) List!67657)

(assert (=> b!7018843 (= lt!2510368 (toList!10730 z1!570))))

(declare-fun exists!3245 ((Set Context!12732) Int) Bool)

(assert (=> b!7018843 (exists!3245 z1!570 lambda!410720)))

(declare-fun lt!2510370 () Unit!161422)

(declare-fun lemmaContainsThenExists!104 ((Set Context!12732) Context!12732 Int) Unit!161422)

(assert (=> b!7018843 (= lt!2510370 (lemmaContainsThenExists!104 z1!570 lt!2510388 lambda!410720))))

(declare-fun lt!2510397 () (Set Context!12732))

(assert (=> b!7018843 (isDefined!13544 (findConcatSeparationZippers!359 lt!2510397 lt!2510393 Nil!67531 s!7408 s!7408))))

(declare-fun lt!2510387 () Unit!161422)

(assert (=> b!7018843 (= lt!2510387 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!31 lt!2510397 lt!2510393 lt!2510382 (_2!37314 lt!2510380) s!7408 Nil!67531 s!7408))))

(declare-fun b!7018844 () Bool)

(declare-fun e!4219158 () Bool)

(assert (=> b!7018844 (= e!4219158 e!4219150)))

(declare-fun res!2864848 () Bool)

(assert (=> b!7018844 (=> res!2864848 e!4219150)))

(assert (=> b!7018844 (= res!2864848 (not (matchZipper!2910 lt!2510397 lt!2510382)))))

(assert (=> b!7018844 (= lt!2510382 (Cons!67531 (h!73979 s!7408) (_1!37314 lt!2510380)))))

(declare-fun setIsEmpty!48609 () Bool)

(assert (=> setIsEmpty!48609 setRes!48609))

(declare-fun b!7018845 () Bool)

(declare-fun res!2864858 () Bool)

(assert (=> b!7018845 (=> res!2864858 e!4219156)))

(assert (=> b!7018845 (= res!2864858 (not (is-Cons!67532 (exprs!6866 lt!2510388))))))

(declare-fun e!4219154 () Bool)

(assert (=> b!7018846 (= e!4219149 e!4219154)))

(declare-fun res!2864845 () Bool)

(assert (=> b!7018846 (=> res!2864845 e!4219154)))

(declare-fun lt!2510391 () Context!12732)

(assert (=> b!7018846 (= res!2864845 (or (not (= lt!2510391 lt!2510395)) (not (set.member lt!2510388 z1!570))))))

(declare-fun ct2!306 () Context!12732)

(declare-fun ++!15405 (List!67656 List!67656) List!67656)

(assert (=> b!7018846 (= lt!2510391 (Context!12733 (++!15405 (exprs!6866 lt!2510388) (exprs!6866 ct2!306))))))

(declare-fun lt!2510384 () Unit!161422)

(declare-fun lambda!410718 () Int)

(declare-fun lemmaConcatPreservesForall!706 (List!67656 List!67656 Int) Unit!161422)

(assert (=> b!7018846 (= lt!2510384 (lemmaConcatPreservesForall!706 (exprs!6866 lt!2510388) (exprs!6866 ct2!306) lambda!410718))))

(declare-fun lambda!410717 () Int)

(declare-fun mapPost2!225 ((Set Context!12732) Int Context!12732) Context!12732)

(assert (=> b!7018846 (= lt!2510388 (mapPost2!225 z1!570 lambda!410717 lt!2510395))))

(declare-fun res!2864853 () Bool)

(assert (=> start!676652 (=> (not res!2864853) (not e!4219148))))

(assert (=> start!676652 (= res!2864853 (matchZipper!2910 lt!2510398 s!7408))))

(declare-fun appendTo!491 ((Set Context!12732) Context!12732) (Set Context!12732))

(assert (=> start!676652 (= lt!2510398 (appendTo!491 z1!570 ct2!306))))

(assert (=> start!676652 e!4219148))

(declare-fun condSetEmpty!48609 () Bool)

(assert (=> start!676652 (= condSetEmpty!48609 (= z1!570 (as set.empty (Set Context!12732))))))

(assert (=> start!676652 setRes!48609))

(assert (=> start!676652 (and (inv!86285 ct2!306) e!4219155)))

(declare-fun e!4219147 () Bool)

(assert (=> start!676652 e!4219147))

(assert (=> b!7018842 (= e!4219148 (not e!4219149))))

(declare-fun res!2864849 () Bool)

(assert (=> b!7018842 (=> res!2864849 e!4219149)))

(declare-fun lt!2510373 () (Set Context!12732))

(assert (=> b!7018842 (= res!2864849 (not (matchZipper!2910 lt!2510373 s!7408)))))

(assert (=> b!7018842 (= lt!2510373 (set.insert lt!2510395 (as set.empty (Set Context!12732))))))

(declare-fun getWitness!1334 ((Set Context!12732) Int) Context!12732)

(assert (=> b!7018842 (= lt!2510395 (getWitness!1334 lt!2510398 lambda!410716))))

(declare-fun lt!2510386 () List!67657)

(declare-fun exists!3246 (List!67657 Int) Bool)

(assert (=> b!7018842 (exists!3246 lt!2510386 lambda!410716)))

(declare-fun lt!2510369 () Unit!161422)

(declare-fun lemmaZipperMatchesExistsMatchingContext!339 (List!67657 List!67655) Unit!161422)

(assert (=> b!7018842 (= lt!2510369 (lemmaZipperMatchesExistsMatchingContext!339 lt!2510386 s!7408))))

(assert (=> b!7018842 (= lt!2510386 (toList!10730 lt!2510398))))

(declare-fun b!7018847 () Bool)

(declare-fun e!4219159 () Bool)

(declare-fun e!4219152 () Bool)

(assert (=> b!7018847 (= e!4219159 e!4219152)))

(declare-fun res!2864852 () Bool)

(assert (=> b!7018847 (=> res!2864852 e!4219152)))

(declare-fun lt!2510396 () (Set Context!12732))

(assert (=> b!7018847 (= res!2864852 (not (matchZipper!2910 lt!2510396 (_1!37314 lt!2510380))))))

(declare-fun lt!2510367 () Option!16843)

(declare-fun get!23687 (Option!16843) tuple2!68022)

(assert (=> b!7018847 (= lt!2510380 (get!23687 lt!2510367))))

(assert (=> b!7018847 (isDefined!13544 lt!2510367)))

(assert (=> b!7018847 (= lt!2510367 (findConcatSeparationZippers!359 lt!2510396 lt!2510393 Nil!67531 (t!381410 s!7408) (t!381410 s!7408)))))

(assert (=> b!7018847 (= lt!2510393 (set.insert ct2!306 (as set.empty (Set Context!12732))))))

(declare-fun lt!2510400 () Unit!161422)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!359 ((Set Context!12732) Context!12732 List!67655) Unit!161422)

(assert (=> b!7018847 (= lt!2510400 (lemmaConcatZipperMatchesStringThenFindConcatDefined!359 lt!2510396 ct2!306 (t!381410 s!7408)))))

(declare-fun lt!2510385 () (Set Context!12732))

(assert (=> b!7018847 (= lt!2510385 (appendTo!491 lt!2510396 ct2!306))))

(declare-fun derivationStepZipperDown!2088 (Regex!17370 Context!12732 C!35010) (Set Context!12732))

(assert (=> b!7018847 (= lt!2510396 (derivationStepZipperDown!2088 (h!73980 (exprs!6866 lt!2510388)) lt!2510376 (h!73979 s!7408)))))

(declare-fun lt!2510383 () Unit!161422)

(assert (=> b!7018847 (= lt!2510383 (lemmaConcatPreservesForall!706 lt!2510379 (exprs!6866 ct2!306) lambda!410718))))

(declare-fun lt!2510371 () Unit!161422)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!61 (Context!12732 Regex!17370 C!35010 Context!12732) Unit!161422)

(assert (=> b!7018847 (= lt!2510371 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!61 lt!2510376 (h!73980 (exprs!6866 lt!2510388)) (h!73979 s!7408) ct2!306))))

(declare-fun b!7018848 () Bool)

(assert (=> b!7018848 (= e!4219151 e!4219159)))

(declare-fun res!2864846 () Bool)

(assert (=> b!7018848 (=> res!2864846 e!4219159)))

(assert (=> b!7018848 (= res!2864846 (not (matchZipper!2910 lt!2510385 (t!381410 s!7408))))))

(assert (=> b!7018848 (= lt!2510385 (derivationStepZipperDown!2088 (h!73980 (exprs!6866 lt!2510388)) (Context!12733 (++!15405 lt!2510379 (exprs!6866 ct2!306))) (h!73979 s!7408)))))

(declare-fun lt!2510377 () Unit!161422)

(assert (=> b!7018848 (= lt!2510377 (lemmaConcatPreservesForall!706 lt!2510379 (exprs!6866 ct2!306) lambda!410718))))

(declare-fun b!7018849 () Bool)

(declare-fun tp_is_empty!43965 () Bool)

(declare-fun tp!1933615 () Bool)

(assert (=> b!7018849 (= e!4219147 (and tp_is_empty!43965 tp!1933615))))

(declare-fun e!4219157 () Bool)

(assert (=> b!7018850 (= e!4219157 e!4219156)))

(declare-fun res!2864850 () Bool)

(assert (=> b!7018850 (=> res!2864850 e!4219156)))

(declare-fun lt!2510394 () (Set Context!12732))

(declare-fun lt!2510399 () (Set Context!12732))

(declare-fun derivationStepZipper!2850 ((Set Context!12732) C!35010) (Set Context!12732))

(assert (=> b!7018850 (= res!2864850 (not (= (derivationStepZipper!2850 lt!2510394 (h!73979 s!7408)) lt!2510399)))))

(declare-fun lambda!410719 () Int)

(declare-fun flatMap!2356 ((Set Context!12732) Int) (Set Context!12732))

(declare-fun derivationStepZipperUp!2020 (Context!12732 C!35010) (Set Context!12732))

(assert (=> b!7018850 (= (flatMap!2356 lt!2510394 lambda!410719) (derivationStepZipperUp!2020 lt!2510391 (h!73979 s!7408)))))

(declare-fun lt!2510375 () Unit!161422)

(declare-fun lemmaFlatMapOnSingletonSet!1871 ((Set Context!12732) Context!12732 Int) Unit!161422)

(assert (=> b!7018850 (= lt!2510375 (lemmaFlatMapOnSingletonSet!1871 lt!2510394 lt!2510391 lambda!410719))))

(assert (=> b!7018850 (= lt!2510399 (derivationStepZipperUp!2020 lt!2510391 (h!73979 s!7408)))))

(declare-fun lt!2510378 () Unit!161422)

(assert (=> b!7018850 (= lt!2510378 (lemmaConcatPreservesForall!706 (exprs!6866 lt!2510388) (exprs!6866 ct2!306) lambda!410718))))

(declare-fun b!7018851 () Bool)

(assert (=> b!7018851 (= e!4219154 e!4219157)))

(declare-fun res!2864851 () Bool)

(assert (=> b!7018851 (=> res!2864851 e!4219157)))

(assert (=> b!7018851 (= res!2864851 (not (= lt!2510394 lt!2510373)))))

(assert (=> b!7018851 (= lt!2510394 (set.insert lt!2510391 (as set.empty (Set Context!12732))))))

(declare-fun lt!2510372 () Unit!161422)

(assert (=> b!7018851 (= lt!2510372 (lemmaConcatPreservesForall!706 (exprs!6866 lt!2510388) (exprs!6866 ct2!306) lambda!410718))))

(declare-fun b!7018852 () Bool)

(declare-fun res!2864844 () Bool)

(assert (=> b!7018852 (=> res!2864844 e!4219152)))

(assert (=> b!7018852 (= res!2864844 (not (= (++!15404 (_1!37314 lt!2510380) (_2!37314 lt!2510380)) (t!381410 s!7408))))))

(declare-fun b!7018853 () Bool)

(assert (=> b!7018853 (= e!4219152 e!4219158)))

(declare-fun res!2864856 () Bool)

(assert (=> b!7018853 (=> res!2864856 e!4219158)))

(declare-fun lt!2510389 () (Set Context!12732))

(declare-fun lt!2510390 () (Set Context!12732))

(assert (=> b!7018853 (= res!2864856 (or (not (= lt!2510389 lt!2510390)) (not (= lt!2510389 lt!2510396))))))

(assert (=> b!7018853 (= (flatMap!2356 lt!2510397 lambda!410719) (derivationStepZipperUp!2020 lt!2510388 (h!73979 s!7408)))))

(declare-fun lt!2510381 () Unit!161422)

(assert (=> b!7018853 (= lt!2510381 (lemmaFlatMapOnSingletonSet!1871 lt!2510397 lt!2510388 lambda!410719))))

(assert (=> b!7018853 (= lt!2510390 (derivationStepZipperUp!2020 lt!2510388 (h!73979 s!7408)))))

(assert (=> b!7018853 (= lt!2510389 (derivationStepZipper!2850 lt!2510397 (h!73979 s!7408)))))

(assert (=> b!7018853 (= lt!2510397 (set.insert lt!2510388 (as set.empty (Set Context!12732))))))

(declare-fun b!7018854 () Bool)

(declare-fun res!2864847 () Bool)

(assert (=> b!7018854 (=> res!2864847 e!4219152)))

(assert (=> b!7018854 (= res!2864847 (not (matchZipper!2910 lt!2510393 (_2!37314 lt!2510380))))))

(assert (= (and start!676652 res!2864853) b!7018836))

(assert (= (and b!7018836 res!2864857) b!7018842))

(assert (= (and b!7018842 (not res!2864849)) b!7018840))

(assert (= (and b!7018840 (not res!2864854)) b!7018846))

(assert (= (and b!7018846 (not res!2864845)) b!7018851))

(assert (= (and b!7018851 (not res!2864851)) b!7018850))

(assert (= (and b!7018850 (not res!2864850)) b!7018845))

(assert (= (and b!7018845 (not res!2864858)) b!7018839))

(assert (= (and b!7018839 (not res!2864855)) b!7018838))

(assert (= (and b!7018838 (not res!2864859)) b!7018848))

(assert (= (and b!7018848 (not res!2864846)) b!7018847))

(assert (= (and b!7018847 (not res!2864852)) b!7018854))

(assert (= (and b!7018854 (not res!2864847)) b!7018852))

(assert (= (and b!7018852 (not res!2864844)) b!7018853))

(assert (= (and b!7018853 (not res!2864856)) b!7018844))

(assert (= (and b!7018844 (not res!2864848)) b!7018843))

(assert (= (and start!676652 condSetEmpty!48609) setIsEmpty!48609))

(assert (= (and start!676652 (not condSetEmpty!48609)) setNonEmpty!48609))

(assert (= setNonEmpty!48609 b!7018837))

(assert (= start!676652 b!7018841))

(assert (= (and start!676652 (is-Cons!67531 s!7408)) b!7018849))

(declare-fun m!7719624 () Bool)

(assert (=> b!7018844 m!7719624))

(declare-fun m!7719626 () Bool)

(assert (=> b!7018847 m!7719626))

(declare-fun m!7719628 () Bool)

(assert (=> b!7018847 m!7719628))

(declare-fun m!7719630 () Bool)

(assert (=> b!7018847 m!7719630))

(declare-fun m!7719632 () Bool)

(assert (=> b!7018847 m!7719632))

(declare-fun m!7719634 () Bool)

(assert (=> b!7018847 m!7719634))

(declare-fun m!7719636 () Bool)

(assert (=> b!7018847 m!7719636))

(declare-fun m!7719638 () Bool)

(assert (=> b!7018847 m!7719638))

(declare-fun m!7719640 () Bool)

(assert (=> b!7018847 m!7719640))

(declare-fun m!7719642 () Bool)

(assert (=> b!7018847 m!7719642))

(declare-fun m!7719644 () Bool)

(assert (=> b!7018847 m!7719644))

(declare-fun m!7719646 () Bool)

(assert (=> b!7018838 m!7719646))

(declare-fun m!7719648 () Bool)

(assert (=> b!7018838 m!7719648))

(declare-fun m!7719650 () Bool)

(assert (=> setNonEmpty!48609 m!7719650))

(declare-fun m!7719652 () Bool)

(assert (=> b!7018853 m!7719652))

(declare-fun m!7719654 () Bool)

(assert (=> b!7018853 m!7719654))

(declare-fun m!7719656 () Bool)

(assert (=> b!7018853 m!7719656))

(declare-fun m!7719658 () Bool)

(assert (=> b!7018853 m!7719658))

(declare-fun m!7719660 () Bool)

(assert (=> b!7018853 m!7719660))

(declare-fun m!7719662 () Bool)

(assert (=> start!676652 m!7719662))

(declare-fun m!7719664 () Bool)

(assert (=> start!676652 m!7719664))

(declare-fun m!7719666 () Bool)

(assert (=> start!676652 m!7719666))

(declare-fun m!7719668 () Bool)

(assert (=> b!7018843 m!7719668))

(declare-fun m!7719670 () Bool)

(assert (=> b!7018843 m!7719670))

(declare-fun m!7719672 () Bool)

(assert (=> b!7018843 m!7719672))

(assert (=> b!7018843 m!7719670))

(declare-fun m!7719674 () Bool)

(assert (=> b!7018843 m!7719674))

(declare-fun m!7719676 () Bool)

(assert (=> b!7018843 m!7719676))

(declare-fun m!7719678 () Bool)

(assert (=> b!7018843 m!7719678))

(declare-fun m!7719680 () Bool)

(assert (=> b!7018843 m!7719680))

(declare-fun m!7719682 () Bool)

(assert (=> b!7018843 m!7719682))

(assert (=> b!7018843 m!7719676))

(declare-fun m!7719684 () Bool)

(assert (=> b!7018843 m!7719684))

(declare-fun m!7719686 () Bool)

(assert (=> b!7018843 m!7719686))

(declare-fun m!7719688 () Bool)

(assert (=> b!7018843 m!7719688))

(assert (=> b!7018843 m!7719680))

(declare-fun m!7719690 () Bool)

(assert (=> b!7018843 m!7719690))

(declare-fun m!7719692 () Bool)

(assert (=> b!7018843 m!7719692))

(declare-fun m!7719694 () Bool)

(assert (=> b!7018852 m!7719694))

(declare-fun m!7719696 () Bool)

(assert (=> b!7018842 m!7719696))

(declare-fun m!7719698 () Bool)

(assert (=> b!7018842 m!7719698))

(declare-fun m!7719700 () Bool)

(assert (=> b!7018842 m!7719700))

(declare-fun m!7719702 () Bool)

(assert (=> b!7018842 m!7719702))

(declare-fun m!7719704 () Bool)

(assert (=> b!7018842 m!7719704))

(declare-fun m!7719706 () Bool)

(assert (=> b!7018842 m!7719706))

(declare-fun m!7719708 () Bool)

(assert (=> b!7018846 m!7719708))

(declare-fun m!7719710 () Bool)

(assert (=> b!7018846 m!7719710))

(declare-fun m!7719712 () Bool)

(assert (=> b!7018846 m!7719712))

(declare-fun m!7719714 () Bool)

(assert (=> b!7018846 m!7719714))

(declare-fun m!7719716 () Bool)

(assert (=> b!7018840 m!7719716))

(declare-fun m!7719718 () Bool)

(assert (=> b!7018848 m!7719718))

(declare-fun m!7719720 () Bool)

(assert (=> b!7018848 m!7719720))

(declare-fun m!7719722 () Bool)

(assert (=> b!7018848 m!7719722))

(assert (=> b!7018848 m!7719640))

(declare-fun m!7719724 () Bool)

(assert (=> b!7018851 m!7719724))

(assert (=> b!7018851 m!7719712))

(declare-fun m!7719726 () Bool)

(assert (=> b!7018839 m!7719726))

(declare-fun m!7719728 () Bool)

(assert (=> b!7018850 m!7719728))

(declare-fun m!7719730 () Bool)

(assert (=> b!7018850 m!7719730))

(declare-fun m!7719732 () Bool)

(assert (=> b!7018850 m!7719732))

(declare-fun m!7719734 () Bool)

(assert (=> b!7018850 m!7719734))

(assert (=> b!7018850 m!7719712))

(declare-fun m!7719736 () Bool)

(assert (=> b!7018854 m!7719736))

(push 1)

(assert tp_is_empty!43965)

(assert (not b!7018852))

(assert (not b!7018837))

(assert (not b!7018843))

(assert (not b!7018846))

(assert (not b!7018849))

(assert (not b!7018842))

(assert (not setNonEmpty!48609))

(assert (not b!7018844))

(assert (not b!7018850))

(assert (not b!7018839))

(assert (not b!7018854))

(assert (not b!7018847))

(assert (not b!7018838))

(assert (not b!7018841))

(assert (not b!7018848))

(assert (not start!676652))

(assert (not b!7018851))

(assert (not b!7018853))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7018933 () Bool)

(declare-fun e!4219203 () List!67656)

(assert (=> b!7018933 (= e!4219203 (Cons!67532 (h!73980 (exprs!6866 lt!2510388)) (++!15405 (t!381411 (exprs!6866 lt!2510388)) (exprs!6866 ct2!306))))))

(declare-fun d!2187799 () Bool)

(declare-fun e!4219204 () Bool)

(assert (=> d!2187799 e!4219204))

(declare-fun res!2864914 () Bool)

(assert (=> d!2187799 (=> (not res!2864914) (not e!4219204))))

(declare-fun lt!2510507 () List!67656)

(declare-fun content!13439 (List!67656) (Set Regex!17370))

(assert (=> d!2187799 (= res!2864914 (= (content!13439 lt!2510507) (set.union (content!13439 (exprs!6866 lt!2510388)) (content!13439 (exprs!6866 ct2!306)))))))

(assert (=> d!2187799 (= lt!2510507 e!4219203)))

(declare-fun c!1304285 () Bool)

(assert (=> d!2187799 (= c!1304285 (is-Nil!67532 (exprs!6866 lt!2510388)))))

(assert (=> d!2187799 (= (++!15405 (exprs!6866 lt!2510388) (exprs!6866 ct2!306)) lt!2510507)))

(declare-fun b!7018935 () Bool)

(assert (=> b!7018935 (= e!4219204 (or (not (= (exprs!6866 ct2!306) Nil!67532)) (= lt!2510507 (exprs!6866 lt!2510388))))))

(declare-fun b!7018932 () Bool)

(assert (=> b!7018932 (= e!4219203 (exprs!6866 ct2!306))))

(declare-fun b!7018934 () Bool)

(declare-fun res!2864915 () Bool)

(assert (=> b!7018934 (=> (not res!2864915) (not e!4219204))))

(declare-fun size!41010 (List!67656) Int)

(assert (=> b!7018934 (= res!2864915 (= (size!41010 lt!2510507) (+ (size!41010 (exprs!6866 lt!2510388)) (size!41010 (exprs!6866 ct2!306)))))))

(assert (= (and d!2187799 c!1304285) b!7018932))

(assert (= (and d!2187799 (not c!1304285)) b!7018933))

(assert (= (and d!2187799 res!2864914) b!7018934))

(assert (= (and b!7018934 res!2864915) b!7018935))

(declare-fun m!7719852 () Bool)

(assert (=> b!7018933 m!7719852))

(declare-fun m!7719854 () Bool)

(assert (=> d!2187799 m!7719854))

(declare-fun m!7719856 () Bool)

(assert (=> d!2187799 m!7719856))

(declare-fun m!7719858 () Bool)

(assert (=> d!2187799 m!7719858))

(declare-fun m!7719860 () Bool)

(assert (=> b!7018934 m!7719860))

(declare-fun m!7719862 () Bool)

(assert (=> b!7018934 m!7719862))

(declare-fun m!7719864 () Bool)

(assert (=> b!7018934 m!7719864))

(assert (=> b!7018846 d!2187799))

(declare-fun d!2187801 () Bool)

(declare-fun forall!16281 (List!67656 Int) Bool)

(assert (=> d!2187801 (forall!16281 (++!15405 (exprs!6866 lt!2510388) (exprs!6866 ct2!306)) lambda!410718)))

(declare-fun lt!2510510 () Unit!161422)

(declare-fun choose!52888 (List!67656 List!67656 Int) Unit!161422)

(assert (=> d!2187801 (= lt!2510510 (choose!52888 (exprs!6866 lt!2510388) (exprs!6866 ct2!306) lambda!410718))))

(assert (=> d!2187801 (forall!16281 (exprs!6866 lt!2510388) lambda!410718)))

(assert (=> d!2187801 (= (lemmaConcatPreservesForall!706 (exprs!6866 lt!2510388) (exprs!6866 ct2!306) lambda!410718) lt!2510510)))

(declare-fun bs!1867199 () Bool)

(assert (= bs!1867199 d!2187801))

(assert (=> bs!1867199 m!7719710))

(assert (=> bs!1867199 m!7719710))

(declare-fun m!7719866 () Bool)

(assert (=> bs!1867199 m!7719866))

(declare-fun m!7719868 () Bool)

(assert (=> bs!1867199 m!7719868))

(declare-fun m!7719870 () Bool)

(assert (=> bs!1867199 m!7719870))

(assert (=> b!7018846 d!2187801))

(declare-fun d!2187803 () Bool)

(declare-fun e!4219207 () Bool)

(assert (=> d!2187803 e!4219207))

(declare-fun res!2864918 () Bool)

(assert (=> d!2187803 (=> (not res!2864918) (not e!4219207))))

(declare-fun lt!2510513 () Context!12732)

(declare-fun dynLambda!27197 (Int Context!12732) Context!12732)

(assert (=> d!2187803 (= res!2864918 (= lt!2510395 (dynLambda!27197 lambda!410717 lt!2510513)))))

(declare-fun choose!52889 ((Set Context!12732) Int Context!12732) Context!12732)

(assert (=> d!2187803 (= lt!2510513 (choose!52889 z1!570 lambda!410717 lt!2510395))))

(declare-fun map!15661 ((Set Context!12732) Int) (Set Context!12732))

(assert (=> d!2187803 (set.member lt!2510395 (map!15661 z1!570 lambda!410717))))

(assert (=> d!2187803 (= (mapPost2!225 z1!570 lambda!410717 lt!2510395) lt!2510513)))

(declare-fun b!7018939 () Bool)

(assert (=> b!7018939 (= e!4219207 (set.member lt!2510513 z1!570))))

(assert (= (and d!2187803 res!2864918) b!7018939))

(declare-fun b_lambda!264915 () Bool)

(assert (=> (not b_lambda!264915) (not d!2187803)))

(declare-fun m!7719872 () Bool)

(assert (=> d!2187803 m!7719872))

(declare-fun m!7719874 () Bool)

(assert (=> d!2187803 m!7719874))

(declare-fun m!7719876 () Bool)

(assert (=> d!2187803 m!7719876))

(declare-fun m!7719878 () Bool)

(assert (=> d!2187803 m!7719878))

(declare-fun m!7719880 () Bool)

(assert (=> b!7018939 m!7719880))

(assert (=> b!7018846 d!2187803))

(declare-fun d!2187805 () Bool)

(declare-fun nullableFct!2704 (Regex!17370) Bool)

(assert (=> d!2187805 (= (nullable!7130 (h!73980 (exprs!6866 lt!2510388))) (nullableFct!2704 (h!73980 (exprs!6866 lt!2510388))))))

(declare-fun bs!1867200 () Bool)

(assert (= bs!1867200 d!2187805))

(declare-fun m!7719882 () Bool)

(assert (=> bs!1867200 m!7719882))

(assert (=> b!7018838 d!2187805))

(declare-fun d!2187807 () Bool)

(assert (=> d!2187807 (= (tail!13468 (exprs!6866 lt!2510388)) (t!381411 (exprs!6866 lt!2510388)))))

(assert (=> b!7018838 d!2187807))

(declare-fun d!2187809 () Bool)

(declare-fun isEmpty!39441 (Option!16843) Bool)

(assert (=> d!2187809 (= (isDefined!13544 lt!2510367) (not (isEmpty!39441 lt!2510367)))))

(declare-fun bs!1867201 () Bool)

(assert (= bs!1867201 d!2187809))

(declare-fun m!7719884 () Bool)

(assert (=> bs!1867201 m!7719884))

(assert (=> b!7018847 d!2187809))

(declare-fun d!2187811 () Bool)

(assert (=> d!2187811 (isDefined!13544 (findConcatSeparationZippers!359 lt!2510396 (set.insert ct2!306 (as set.empty (Set Context!12732))) Nil!67531 (t!381410 s!7408) (t!381410 s!7408)))))

(declare-fun lt!2510516 () Unit!161422)

(declare-fun choose!52890 ((Set Context!12732) Context!12732 List!67655) Unit!161422)

(assert (=> d!2187811 (= lt!2510516 (choose!52890 lt!2510396 ct2!306 (t!381410 s!7408)))))

(assert (=> d!2187811 (matchZipper!2910 (appendTo!491 lt!2510396 ct2!306) (t!381410 s!7408))))

(assert (=> d!2187811 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!359 lt!2510396 ct2!306 (t!381410 s!7408)) lt!2510516)))

(declare-fun bs!1867202 () Bool)

(assert (= bs!1867202 d!2187811))

(assert (=> bs!1867202 m!7719626))

(declare-fun m!7719886 () Bool)

(assert (=> bs!1867202 m!7719886))

(assert (=> bs!1867202 m!7719626))

(declare-fun m!7719888 () Bool)

(assert (=> bs!1867202 m!7719888))

(assert (=> bs!1867202 m!7719886))

(declare-fun m!7719890 () Bool)

(assert (=> bs!1867202 m!7719890))

(assert (=> bs!1867202 m!7719636))

(assert (=> bs!1867202 m!7719636))

(declare-fun m!7719892 () Bool)

(assert (=> bs!1867202 m!7719892))

(assert (=> b!7018847 d!2187811))

(declare-fun bs!1867203 () Bool)

(declare-fun d!2187813 () Bool)

(assert (= bs!1867203 (and d!2187813 b!7018846)))

(declare-fun lambda!410752 () Int)

(assert (=> bs!1867203 (= lambda!410752 lambda!410718)))

(assert (=> d!2187813 (= (derivationStepZipperDown!2088 (h!73980 (exprs!6866 lt!2510388)) (Context!12733 (++!15405 (exprs!6866 lt!2510376) (exprs!6866 ct2!306))) (h!73979 s!7408)) (appendTo!491 (derivationStepZipperDown!2088 (h!73980 (exprs!6866 lt!2510388)) lt!2510376 (h!73979 s!7408)) ct2!306))))

(declare-fun lt!2510522 () Unit!161422)

(assert (=> d!2187813 (= lt!2510522 (lemmaConcatPreservesForall!706 (exprs!6866 lt!2510376) (exprs!6866 ct2!306) lambda!410752))))

(declare-fun lt!2510521 () Unit!161422)

(declare-fun choose!52891 (Context!12732 Regex!17370 C!35010 Context!12732) Unit!161422)

(assert (=> d!2187813 (= lt!2510521 (choose!52891 lt!2510376 (h!73980 (exprs!6866 lt!2510388)) (h!73979 s!7408) ct2!306))))

(declare-fun validRegex!8913 (Regex!17370) Bool)

(assert (=> d!2187813 (validRegex!8913 (h!73980 (exprs!6866 lt!2510388)))))

(assert (=> d!2187813 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!61 lt!2510376 (h!73980 (exprs!6866 lt!2510388)) (h!73979 s!7408) ct2!306) lt!2510521)))

(declare-fun bs!1867204 () Bool)

(assert (= bs!1867204 d!2187813))

(declare-fun m!7719894 () Bool)

(assert (=> bs!1867204 m!7719894))

(declare-fun m!7719896 () Bool)

(assert (=> bs!1867204 m!7719896))

(declare-fun m!7719898 () Bool)

(assert (=> bs!1867204 m!7719898))

(declare-fun m!7719900 () Bool)

(assert (=> bs!1867204 m!7719900))

(declare-fun m!7719902 () Bool)

(assert (=> bs!1867204 m!7719902))

(assert (=> bs!1867204 m!7719638))

(declare-fun m!7719904 () Bool)

(assert (=> bs!1867204 m!7719904))

(assert (=> bs!1867204 m!7719638))

(assert (=> b!7018847 d!2187813))

(declare-fun b!7018974 () Bool)

(declare-fun e!4219231 () (Set Context!12732))

(declare-fun call!637557 () (Set Context!12732))

(assert (=> b!7018974 (= e!4219231 call!637557)))

(declare-fun b!7018975 () Bool)

(declare-fun e!4219226 () (Set Context!12732))

(assert (=> b!7018975 (= e!4219226 (as set.empty (Set Context!12732)))))

(declare-fun call!637559 () (Set Context!12732))

(declare-fun call!637558 () List!67656)

(declare-fun c!1304303 () Bool)

(declare-fun c!1304300 () Bool)

(declare-fun c!1304304 () Bool)

(declare-fun bm!637550 () Bool)

(assert (=> bm!637550 (= call!637559 (derivationStepZipperDown!2088 (ite c!1304304 (regTwo!35253 (h!73980 (exprs!6866 lt!2510388))) (ite c!1304303 (regTwo!35252 (h!73980 (exprs!6866 lt!2510388))) (ite c!1304300 (regOne!35252 (h!73980 (exprs!6866 lt!2510388))) (reg!17699 (h!73980 (exprs!6866 lt!2510388)))))) (ite (or c!1304304 c!1304303) lt!2510376 (Context!12733 call!637558)) (h!73979 s!7408)))))

(declare-fun b!7018976 () Bool)

(declare-fun e!4219230 () (Set Context!12732))

(declare-fun call!637560 () (Set Context!12732))

(assert (=> b!7018976 (= e!4219230 (set.union call!637560 call!637559))))

(declare-fun b!7018977 () Bool)

(declare-fun e!4219228 () (Set Context!12732))

(declare-fun call!637555 () (Set Context!12732))

(assert (=> b!7018977 (= e!4219228 (set.union call!637560 call!637555))))

(declare-fun b!7018978 () Bool)

(assert (=> b!7018978 (= e!4219228 e!4219231)))

(assert (=> b!7018978 (= c!1304300 (is-Concat!26215 (h!73980 (exprs!6866 lt!2510388))))))

(declare-fun bm!637551 () Bool)

(declare-fun call!637556 () List!67656)

(assert (=> bm!637551 (= call!637558 call!637556)))

(declare-fun b!7018979 () Bool)

(declare-fun e!4219229 () (Set Context!12732))

(assert (=> b!7018979 (= e!4219229 (set.insert lt!2510376 (as set.empty (Set Context!12732))))))

(declare-fun b!7018980 () Bool)

(declare-fun e!4219227 () Bool)

(assert (=> b!7018980 (= c!1304303 e!4219227)))

(declare-fun res!2864927 () Bool)

(assert (=> b!7018980 (=> (not res!2864927) (not e!4219227))))

(assert (=> b!7018980 (= res!2864927 (is-Concat!26215 (h!73980 (exprs!6866 lt!2510388))))))

(assert (=> b!7018980 (= e!4219230 e!4219228)))

(declare-fun bm!637552 () Bool)

(assert (=> bm!637552 (= call!637555 call!637559)))

(declare-fun bm!637553 () Bool)

(assert (=> bm!637553 (= call!637560 (derivationStepZipperDown!2088 (ite c!1304304 (regOne!35253 (h!73980 (exprs!6866 lt!2510388))) (regOne!35252 (h!73980 (exprs!6866 lt!2510388)))) (ite c!1304304 lt!2510376 (Context!12733 call!637556)) (h!73979 s!7408)))))

(declare-fun bm!637554 () Bool)

(declare-fun $colon$colon!2551 (List!67656 Regex!17370) List!67656)

(assert (=> bm!637554 (= call!637556 ($colon$colon!2551 (exprs!6866 lt!2510376) (ite (or c!1304303 c!1304300) (regTwo!35252 (h!73980 (exprs!6866 lt!2510388))) (h!73980 (exprs!6866 lt!2510388)))))))

(declare-fun b!7018981 () Bool)

(assert (=> b!7018981 (= e!4219226 call!637557)))

(declare-fun d!2187817 () Bool)

(declare-fun c!1304301 () Bool)

(assert (=> d!2187817 (= c!1304301 (and (is-ElementMatch!17370 (h!73980 (exprs!6866 lt!2510388))) (= (c!1304269 (h!73980 (exprs!6866 lt!2510388))) (h!73979 s!7408))))))

(assert (=> d!2187817 (= (derivationStepZipperDown!2088 (h!73980 (exprs!6866 lt!2510388)) lt!2510376 (h!73979 s!7408)) e!4219229)))

(declare-fun bm!637555 () Bool)

(assert (=> bm!637555 (= call!637557 call!637555)))

(declare-fun b!7018982 () Bool)

(assert (=> b!7018982 (= e!4219229 e!4219230)))

(assert (=> b!7018982 (= c!1304304 (is-Union!17370 (h!73980 (exprs!6866 lt!2510388))))))

(declare-fun b!7018983 () Bool)

(declare-fun c!1304302 () Bool)

(assert (=> b!7018983 (= c!1304302 (is-Star!17370 (h!73980 (exprs!6866 lt!2510388))))))

(assert (=> b!7018983 (= e!4219231 e!4219226)))

(declare-fun b!7018984 () Bool)

(assert (=> b!7018984 (= e!4219227 (nullable!7130 (regOne!35252 (h!73980 (exprs!6866 lt!2510388)))))))

(assert (= (and d!2187817 c!1304301) b!7018979))

(assert (= (and d!2187817 (not c!1304301)) b!7018982))

(assert (= (and b!7018982 c!1304304) b!7018976))

(assert (= (and b!7018982 (not c!1304304)) b!7018980))

(assert (= (and b!7018980 res!2864927) b!7018984))

(assert (= (and b!7018980 c!1304303) b!7018977))

(assert (= (and b!7018980 (not c!1304303)) b!7018978))

(assert (= (and b!7018978 c!1304300) b!7018974))

(assert (= (and b!7018978 (not c!1304300)) b!7018983))

(assert (= (and b!7018983 c!1304302) b!7018981))

(assert (= (and b!7018983 (not c!1304302)) b!7018975))

(assert (= (or b!7018974 b!7018981) bm!637551))

(assert (= (or b!7018974 b!7018981) bm!637555))

(assert (= (or b!7018977 bm!637555) bm!637552))

(assert (= (or b!7018977 bm!637551) bm!637554))

(assert (= (or b!7018976 b!7018977) bm!637553))

(assert (= (or b!7018976 bm!637552) bm!637550))

(declare-fun m!7719920 () Bool)

(assert (=> b!7018984 m!7719920))

(declare-fun m!7719922 () Bool)

(assert (=> bm!637554 m!7719922))

(declare-fun m!7719924 () Bool)

(assert (=> bm!637550 m!7719924))

(declare-fun m!7719926 () Bool)

(assert (=> bm!637553 m!7719926))

(declare-fun m!7719928 () Bool)

(assert (=> b!7018979 m!7719928))

(assert (=> b!7018847 d!2187817))

(declare-fun d!2187821 () Bool)

(assert (=> d!2187821 (forall!16281 (++!15405 lt!2510379 (exprs!6866 ct2!306)) lambda!410718)))

(declare-fun lt!2510528 () Unit!161422)

(assert (=> d!2187821 (= lt!2510528 (choose!52888 lt!2510379 (exprs!6866 ct2!306) lambda!410718))))

(assert (=> d!2187821 (forall!16281 lt!2510379 lambda!410718)))

(assert (=> d!2187821 (= (lemmaConcatPreservesForall!706 lt!2510379 (exprs!6866 ct2!306) lambda!410718) lt!2510528)))

(declare-fun bs!1867205 () Bool)

(assert (= bs!1867205 d!2187821))

(assert (=> bs!1867205 m!7719720))

(assert (=> bs!1867205 m!7719720))

(declare-fun m!7719930 () Bool)

(assert (=> bs!1867205 m!7719930))

(declare-fun m!7719932 () Bool)

(assert (=> bs!1867205 m!7719932))

(declare-fun m!7719934 () Bool)

(assert (=> bs!1867205 m!7719934))

(assert (=> b!7018847 d!2187821))

(declare-fun d!2187823 () Bool)

(declare-fun c!1304307 () Bool)

(declare-fun isEmpty!39442 (List!67655) Bool)

(assert (=> d!2187823 (= c!1304307 (isEmpty!39442 (_1!37314 lt!2510380)))))

(declare-fun e!4219234 () Bool)

(assert (=> d!2187823 (= (matchZipper!2910 lt!2510396 (_1!37314 lt!2510380)) e!4219234)))

(declare-fun b!7018989 () Bool)

(declare-fun nullableZipper!2511 ((Set Context!12732)) Bool)

(assert (=> b!7018989 (= e!4219234 (nullableZipper!2511 lt!2510396))))

(declare-fun b!7018990 () Bool)

(declare-fun head!14201 (List!67655) C!35010)

(declare-fun tail!13470 (List!67655) List!67655)

(assert (=> b!7018990 (= e!4219234 (matchZipper!2910 (derivationStepZipper!2850 lt!2510396 (head!14201 (_1!37314 lt!2510380))) (tail!13470 (_1!37314 lt!2510380))))))

(assert (= (and d!2187823 c!1304307) b!7018989))

(assert (= (and d!2187823 (not c!1304307)) b!7018990))

(declare-fun m!7719942 () Bool)

(assert (=> d!2187823 m!7719942))

(declare-fun m!7719944 () Bool)

(assert (=> b!7018989 m!7719944))

(declare-fun m!7719946 () Bool)

(assert (=> b!7018990 m!7719946))

(assert (=> b!7018990 m!7719946))

(declare-fun m!7719948 () Bool)

(assert (=> b!7018990 m!7719948))

(declare-fun m!7719950 () Bool)

(assert (=> b!7018990 m!7719950))

(assert (=> b!7018990 m!7719948))

(assert (=> b!7018990 m!7719950))

(declare-fun m!7719952 () Bool)

(assert (=> b!7018990 m!7719952))

(assert (=> b!7018847 d!2187823))

(declare-fun b!7019025 () Bool)

(declare-fun e!4219257 () Bool)

(declare-fun lt!2510544 () Option!16843)

(assert (=> b!7019025 (= e!4219257 (not (isDefined!13544 lt!2510544)))))

(declare-fun b!7019026 () Bool)

(declare-fun e!4219255 () Option!16843)

(assert (=> b!7019026 (= e!4219255 None!16842)))

(declare-fun b!7019027 () Bool)

(declare-fun e!4219256 () Bool)

(assert (=> b!7019027 (= e!4219256 (= (++!15404 (_1!37314 (get!23687 lt!2510544)) (_2!37314 (get!23687 lt!2510544))) (t!381410 s!7408)))))

(declare-fun b!7019028 () Bool)

(declare-fun e!4219254 () Bool)

(assert (=> b!7019028 (= e!4219254 (matchZipper!2910 lt!2510393 (t!381410 s!7408)))))

(declare-fun d!2187827 () Bool)

(assert (=> d!2187827 e!4219257))

(declare-fun res!2864949 () Bool)

(assert (=> d!2187827 (=> res!2864949 e!4219257)))

(assert (=> d!2187827 (= res!2864949 e!4219256)))

(declare-fun res!2864947 () Bool)

(assert (=> d!2187827 (=> (not res!2864947) (not e!4219256))))

(assert (=> d!2187827 (= res!2864947 (isDefined!13544 lt!2510544))))

(declare-fun e!4219258 () Option!16843)

(assert (=> d!2187827 (= lt!2510544 e!4219258)))

(declare-fun c!1304316 () Bool)

(assert (=> d!2187827 (= c!1304316 e!4219254)))

(declare-fun res!2864951 () Bool)

(assert (=> d!2187827 (=> (not res!2864951) (not e!4219254))))

(assert (=> d!2187827 (= res!2864951 (matchZipper!2910 lt!2510396 Nil!67531))))

(assert (=> d!2187827 (= (++!15404 Nil!67531 (t!381410 s!7408)) (t!381410 s!7408))))

(assert (=> d!2187827 (= (findConcatSeparationZippers!359 lt!2510396 lt!2510393 Nil!67531 (t!381410 s!7408) (t!381410 s!7408)) lt!2510544)))

(declare-fun b!7019029 () Bool)

(declare-fun lt!2510543 () Unit!161422)

(declare-fun lt!2510542 () Unit!161422)

(assert (=> b!7019029 (= lt!2510543 lt!2510542)))

(assert (=> b!7019029 (= (++!15404 (++!15404 Nil!67531 (Cons!67531 (h!73979 (t!381410 s!7408)) Nil!67531)) (t!381410 (t!381410 s!7408))) (t!381410 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2907 (List!67655 C!35010 List!67655 List!67655) Unit!161422)

(assert (=> b!7019029 (= lt!2510542 (lemmaMoveElementToOtherListKeepsConcatEq!2907 Nil!67531 (h!73979 (t!381410 s!7408)) (t!381410 (t!381410 s!7408)) (t!381410 s!7408)))))

(assert (=> b!7019029 (= e!4219255 (findConcatSeparationZippers!359 lt!2510396 lt!2510393 (++!15404 Nil!67531 (Cons!67531 (h!73979 (t!381410 s!7408)) Nil!67531)) (t!381410 (t!381410 s!7408)) (t!381410 s!7408)))))

(declare-fun b!7019030 () Bool)

(assert (=> b!7019030 (= e!4219258 (Some!16842 (tuple2!68023 Nil!67531 (t!381410 s!7408))))))

(declare-fun b!7019031 () Bool)

(declare-fun res!2864948 () Bool)

(assert (=> b!7019031 (=> (not res!2864948) (not e!4219256))))

(assert (=> b!7019031 (= res!2864948 (matchZipper!2910 lt!2510393 (_2!37314 (get!23687 lt!2510544))))))

(declare-fun b!7019032 () Bool)

(declare-fun res!2864950 () Bool)

(assert (=> b!7019032 (=> (not res!2864950) (not e!4219256))))

(assert (=> b!7019032 (= res!2864950 (matchZipper!2910 lt!2510396 (_1!37314 (get!23687 lt!2510544))))))

(declare-fun b!7019033 () Bool)

(assert (=> b!7019033 (= e!4219258 e!4219255)))

(declare-fun c!1304315 () Bool)

(assert (=> b!7019033 (= c!1304315 (is-Nil!67531 (t!381410 s!7408)))))

(assert (= (and d!2187827 res!2864951) b!7019028))

(assert (= (and d!2187827 c!1304316) b!7019030))

(assert (= (and d!2187827 (not c!1304316)) b!7019033))

(assert (= (and b!7019033 c!1304315) b!7019026))

(assert (= (and b!7019033 (not c!1304315)) b!7019029))

(assert (= (and d!2187827 res!2864947) b!7019032))

(assert (= (and b!7019032 res!2864950) b!7019031))

(assert (= (and b!7019031 res!2864948) b!7019027))

(assert (= (and d!2187827 (not res!2864949)) b!7019025))

(declare-fun m!7719978 () Bool)

(assert (=> b!7019031 m!7719978))

(declare-fun m!7719980 () Bool)

(assert (=> b!7019031 m!7719980))

(declare-fun m!7719982 () Bool)

(assert (=> b!7019028 m!7719982))

(declare-fun m!7719984 () Bool)

(assert (=> d!2187827 m!7719984))

(declare-fun m!7719986 () Bool)

(assert (=> d!2187827 m!7719986))

(declare-fun m!7719988 () Bool)

(assert (=> d!2187827 m!7719988))

(assert (=> b!7019027 m!7719978))

(declare-fun m!7719990 () Bool)

(assert (=> b!7019027 m!7719990))

(assert (=> b!7019032 m!7719978))

(declare-fun m!7719992 () Bool)

(assert (=> b!7019032 m!7719992))

(assert (=> b!7019025 m!7719984))

(declare-fun m!7719994 () Bool)

(assert (=> b!7019029 m!7719994))

(assert (=> b!7019029 m!7719994))

(declare-fun m!7719996 () Bool)

(assert (=> b!7019029 m!7719996))

(declare-fun m!7719998 () Bool)

(assert (=> b!7019029 m!7719998))

(assert (=> b!7019029 m!7719994))

(declare-fun m!7720000 () Bool)

(assert (=> b!7019029 m!7720000))

(assert (=> b!7018847 d!2187827))

(declare-fun d!2187835 () Bool)

(assert (=> d!2187835 (= (get!23687 lt!2510367) (v!53120 lt!2510367))))

(assert (=> b!7018847 d!2187835))

(declare-fun bs!1867207 () Bool)

(declare-fun d!2187837 () Bool)

(assert (= bs!1867207 (and d!2187837 b!7018846)))

(declare-fun lambda!410757 () Int)

(assert (=> bs!1867207 (= lambda!410757 lambda!410717)))

(assert (=> d!2187837 true))

(assert (=> d!2187837 (= (appendTo!491 lt!2510396 ct2!306) (map!15661 lt!2510396 lambda!410757))))

(declare-fun bs!1867208 () Bool)

(assert (= bs!1867208 d!2187837))

(declare-fun m!7720002 () Bool)

(assert (=> bs!1867208 m!7720002))

(assert (=> b!7018847 d!2187837))

(declare-fun d!2187839 () Bool)

(assert (=> d!2187839 (= (isEmpty!39439 (exprs!6866 lt!2510388)) (is-Nil!67532 (exprs!6866 lt!2510388)))))

(assert (=> b!7018839 d!2187839))

(declare-fun d!2187841 () Bool)

(declare-fun c!1304320 () Bool)

(assert (=> d!2187841 (= c!1304320 (isEmpty!39442 (t!381410 s!7408)))))

(declare-fun e!4219261 () Bool)

(assert (=> d!2187841 (= (matchZipper!2910 lt!2510385 (t!381410 s!7408)) e!4219261)))

(declare-fun b!7019038 () Bool)

(assert (=> b!7019038 (= e!4219261 (nullableZipper!2511 lt!2510385))))

(declare-fun b!7019039 () Bool)

(assert (=> b!7019039 (= e!4219261 (matchZipper!2910 (derivationStepZipper!2850 lt!2510385 (head!14201 (t!381410 s!7408))) (tail!13470 (t!381410 s!7408))))))

(assert (= (and d!2187841 c!1304320) b!7019038))

(assert (= (and d!2187841 (not c!1304320)) b!7019039))

(declare-fun m!7720004 () Bool)

(assert (=> d!2187841 m!7720004))

(declare-fun m!7720006 () Bool)

(assert (=> b!7019038 m!7720006))

(declare-fun m!7720008 () Bool)

(assert (=> b!7019039 m!7720008))

(assert (=> b!7019039 m!7720008))

(declare-fun m!7720010 () Bool)

(assert (=> b!7019039 m!7720010))

(declare-fun m!7720012 () Bool)

(assert (=> b!7019039 m!7720012))

(assert (=> b!7019039 m!7720010))

(assert (=> b!7019039 m!7720012))

(declare-fun m!7720014 () Bool)

(assert (=> b!7019039 m!7720014))

(assert (=> b!7018848 d!2187841))

(declare-fun b!7019040 () Bool)

(declare-fun e!4219267 () (Set Context!12732))

(declare-fun call!637563 () (Set Context!12732))

(assert (=> b!7019040 (= e!4219267 call!637563)))

(declare-fun b!7019041 () Bool)

(declare-fun e!4219262 () (Set Context!12732))

(assert (=> b!7019041 (= e!4219262 (as set.empty (Set Context!12732)))))

(declare-fun call!637564 () List!67656)

(declare-fun bm!637556 () Bool)

(declare-fun call!637565 () (Set Context!12732))

(declare-fun c!1304324 () Bool)

(declare-fun c!1304321 () Bool)

(declare-fun c!1304325 () Bool)

(assert (=> bm!637556 (= call!637565 (derivationStepZipperDown!2088 (ite c!1304325 (regTwo!35253 (h!73980 (exprs!6866 lt!2510388))) (ite c!1304324 (regTwo!35252 (h!73980 (exprs!6866 lt!2510388))) (ite c!1304321 (regOne!35252 (h!73980 (exprs!6866 lt!2510388))) (reg!17699 (h!73980 (exprs!6866 lt!2510388)))))) (ite (or c!1304325 c!1304324) (Context!12733 (++!15405 lt!2510379 (exprs!6866 ct2!306))) (Context!12733 call!637564)) (h!73979 s!7408)))))

(declare-fun b!7019042 () Bool)

(declare-fun e!4219266 () (Set Context!12732))

(declare-fun call!637566 () (Set Context!12732))

(assert (=> b!7019042 (= e!4219266 (set.union call!637566 call!637565))))

(declare-fun b!7019043 () Bool)

(declare-fun e!4219264 () (Set Context!12732))

(declare-fun call!637561 () (Set Context!12732))

(assert (=> b!7019043 (= e!4219264 (set.union call!637566 call!637561))))

(declare-fun b!7019044 () Bool)

(assert (=> b!7019044 (= e!4219264 e!4219267)))

(assert (=> b!7019044 (= c!1304321 (is-Concat!26215 (h!73980 (exprs!6866 lt!2510388))))))

(declare-fun bm!637557 () Bool)

(declare-fun call!637562 () List!67656)

(assert (=> bm!637557 (= call!637564 call!637562)))

(declare-fun b!7019045 () Bool)

(declare-fun e!4219265 () (Set Context!12732))

(assert (=> b!7019045 (= e!4219265 (set.insert (Context!12733 (++!15405 lt!2510379 (exprs!6866 ct2!306))) (as set.empty (Set Context!12732))))))

(declare-fun b!7019046 () Bool)

(declare-fun e!4219263 () Bool)

(assert (=> b!7019046 (= c!1304324 e!4219263)))

(declare-fun res!2864952 () Bool)

(assert (=> b!7019046 (=> (not res!2864952) (not e!4219263))))

(assert (=> b!7019046 (= res!2864952 (is-Concat!26215 (h!73980 (exprs!6866 lt!2510388))))))

(assert (=> b!7019046 (= e!4219266 e!4219264)))

(declare-fun bm!637558 () Bool)

(assert (=> bm!637558 (= call!637561 call!637565)))

(declare-fun bm!637559 () Bool)

(assert (=> bm!637559 (= call!637566 (derivationStepZipperDown!2088 (ite c!1304325 (regOne!35253 (h!73980 (exprs!6866 lt!2510388))) (regOne!35252 (h!73980 (exprs!6866 lt!2510388)))) (ite c!1304325 (Context!12733 (++!15405 lt!2510379 (exprs!6866 ct2!306))) (Context!12733 call!637562)) (h!73979 s!7408)))))

(declare-fun bm!637560 () Bool)

(assert (=> bm!637560 (= call!637562 ($colon$colon!2551 (exprs!6866 (Context!12733 (++!15405 lt!2510379 (exprs!6866 ct2!306)))) (ite (or c!1304324 c!1304321) (regTwo!35252 (h!73980 (exprs!6866 lt!2510388))) (h!73980 (exprs!6866 lt!2510388)))))))

(declare-fun b!7019047 () Bool)

(assert (=> b!7019047 (= e!4219262 call!637563)))

(declare-fun d!2187843 () Bool)

(declare-fun c!1304322 () Bool)

(assert (=> d!2187843 (= c!1304322 (and (is-ElementMatch!17370 (h!73980 (exprs!6866 lt!2510388))) (= (c!1304269 (h!73980 (exprs!6866 lt!2510388))) (h!73979 s!7408))))))

(assert (=> d!2187843 (= (derivationStepZipperDown!2088 (h!73980 (exprs!6866 lt!2510388)) (Context!12733 (++!15405 lt!2510379 (exprs!6866 ct2!306))) (h!73979 s!7408)) e!4219265)))

(declare-fun bm!637561 () Bool)

(assert (=> bm!637561 (= call!637563 call!637561)))

(declare-fun b!7019048 () Bool)

(assert (=> b!7019048 (= e!4219265 e!4219266)))

(assert (=> b!7019048 (= c!1304325 (is-Union!17370 (h!73980 (exprs!6866 lt!2510388))))))

(declare-fun b!7019049 () Bool)

(declare-fun c!1304323 () Bool)

(assert (=> b!7019049 (= c!1304323 (is-Star!17370 (h!73980 (exprs!6866 lt!2510388))))))

(assert (=> b!7019049 (= e!4219267 e!4219262)))

(declare-fun b!7019050 () Bool)

(assert (=> b!7019050 (= e!4219263 (nullable!7130 (regOne!35252 (h!73980 (exprs!6866 lt!2510388)))))))

(assert (= (and d!2187843 c!1304322) b!7019045))

(assert (= (and d!2187843 (not c!1304322)) b!7019048))

(assert (= (and b!7019048 c!1304325) b!7019042))

(assert (= (and b!7019048 (not c!1304325)) b!7019046))

(assert (= (and b!7019046 res!2864952) b!7019050))

(assert (= (and b!7019046 c!1304324) b!7019043))

(assert (= (and b!7019046 (not c!1304324)) b!7019044))

(assert (= (and b!7019044 c!1304321) b!7019040))

(assert (= (and b!7019044 (not c!1304321)) b!7019049))

(assert (= (and b!7019049 c!1304323) b!7019047))

(assert (= (and b!7019049 (not c!1304323)) b!7019041))

(assert (= (or b!7019040 b!7019047) bm!637557))

(assert (= (or b!7019040 b!7019047) bm!637561))

(assert (= (or b!7019043 bm!637561) bm!637558))

(assert (= (or b!7019043 bm!637557) bm!637560))

(assert (= (or b!7019042 b!7019043) bm!637559))

(assert (= (or b!7019042 bm!637558) bm!637556))

(assert (=> b!7019050 m!7719920))

(declare-fun m!7720016 () Bool)

(assert (=> bm!637560 m!7720016))

(declare-fun m!7720018 () Bool)

(assert (=> bm!637556 m!7720018))

(declare-fun m!7720020 () Bool)

(assert (=> bm!637559 m!7720020))

(declare-fun m!7720022 () Bool)

(assert (=> b!7019045 m!7720022))

(assert (=> b!7018848 d!2187843))

(declare-fun b!7019054 () Bool)

(declare-fun e!4219269 () List!67656)

(assert (=> b!7019054 (= e!4219269 (Cons!67532 (h!73980 lt!2510379) (++!15405 (t!381411 lt!2510379) (exprs!6866 ct2!306))))))

(declare-fun d!2187845 () Bool)

(declare-fun e!4219270 () Bool)

(assert (=> d!2187845 e!4219270))

(declare-fun res!2864953 () Bool)

(assert (=> d!2187845 (=> (not res!2864953) (not e!4219270))))

(declare-fun lt!2510547 () List!67656)

(assert (=> d!2187845 (= res!2864953 (= (content!13439 lt!2510547) (set.union (content!13439 lt!2510379) (content!13439 (exprs!6866 ct2!306)))))))

(assert (=> d!2187845 (= lt!2510547 e!4219269)))

(declare-fun c!1304327 () Bool)

(assert (=> d!2187845 (= c!1304327 (is-Nil!67532 lt!2510379))))

(assert (=> d!2187845 (= (++!15405 lt!2510379 (exprs!6866 ct2!306)) lt!2510547)))

(declare-fun b!7019056 () Bool)

(assert (=> b!7019056 (= e!4219270 (or (not (= (exprs!6866 ct2!306) Nil!67532)) (= lt!2510547 lt!2510379)))))

(declare-fun b!7019053 () Bool)

(assert (=> b!7019053 (= e!4219269 (exprs!6866 ct2!306))))

(declare-fun b!7019055 () Bool)

(declare-fun res!2864954 () Bool)

(assert (=> b!7019055 (=> (not res!2864954) (not e!4219270))))

(assert (=> b!7019055 (= res!2864954 (= (size!41010 lt!2510547) (+ (size!41010 lt!2510379) (size!41010 (exprs!6866 ct2!306)))))))

(assert (= (and d!2187845 c!1304327) b!7019053))

(assert (= (and d!2187845 (not c!1304327)) b!7019054))

(assert (= (and d!2187845 res!2864953) b!7019055))

(assert (= (and b!7019055 res!2864954) b!7019056))

(declare-fun m!7720030 () Bool)

(assert (=> b!7019054 m!7720030))

(declare-fun m!7720034 () Bool)

(assert (=> d!2187845 m!7720034))

(declare-fun m!7720036 () Bool)

(assert (=> d!2187845 m!7720036))

(assert (=> d!2187845 m!7719858))

(declare-fun m!7720040 () Bool)

(assert (=> b!7019055 m!7720040))

(declare-fun m!7720042 () Bool)

(assert (=> b!7019055 m!7720042))

(assert (=> b!7019055 m!7719864))

(assert (=> b!7018848 d!2187845))

(assert (=> b!7018848 d!2187821))

(declare-fun bs!1867209 () Bool)

(declare-fun d!2187847 () Bool)

(assert (= bs!1867209 (and d!2187847 b!7018850)))

(declare-fun lambda!410760 () Int)

(assert (=> bs!1867209 (= lambda!410760 lambda!410719)))

(assert (=> d!2187847 true))

(assert (=> d!2187847 (= (derivationStepZipper!2850 lt!2510394 (h!73979 s!7408)) (flatMap!2356 lt!2510394 lambda!410760))))

(declare-fun bs!1867210 () Bool)

(assert (= bs!1867210 d!2187847))

(declare-fun m!7720046 () Bool)

(assert (=> bs!1867210 m!7720046))

(assert (=> b!7018850 d!2187847))

(declare-fun d!2187851 () Bool)

(declare-fun dynLambda!27198 (Int Context!12732) (Set Context!12732))

(assert (=> d!2187851 (= (flatMap!2356 lt!2510394 lambda!410719) (dynLambda!27198 lambda!410719 lt!2510391))))

(declare-fun lt!2510550 () Unit!161422)

(declare-fun choose!52892 ((Set Context!12732) Context!12732 Int) Unit!161422)

(assert (=> d!2187851 (= lt!2510550 (choose!52892 lt!2510394 lt!2510391 lambda!410719))))

(assert (=> d!2187851 (= lt!2510394 (set.insert lt!2510391 (as set.empty (Set Context!12732))))))

(assert (=> d!2187851 (= (lemmaFlatMapOnSingletonSet!1871 lt!2510394 lt!2510391 lambda!410719) lt!2510550)))

(declare-fun b_lambda!264919 () Bool)

(assert (=> (not b_lambda!264919) (not d!2187851)))

(declare-fun bs!1867211 () Bool)

(assert (= bs!1867211 d!2187851))

(assert (=> bs!1867211 m!7719728))

(declare-fun m!7720048 () Bool)

(assert (=> bs!1867211 m!7720048))

(declare-fun m!7720050 () Bool)

(assert (=> bs!1867211 m!7720050))

(assert (=> bs!1867211 m!7719724))

(assert (=> b!7018850 d!2187851))

(declare-fun d!2187853 () Bool)

(declare-fun choose!52893 ((Set Context!12732) Int) (Set Context!12732))

(assert (=> d!2187853 (= (flatMap!2356 lt!2510394 lambda!410719) (choose!52893 lt!2510394 lambda!410719))))

(declare-fun bs!1867212 () Bool)

(assert (= bs!1867212 d!2187853))

(declare-fun m!7720052 () Bool)

(assert (=> bs!1867212 m!7720052))

(assert (=> b!7018850 d!2187853))

(declare-fun b!7019069 () Bool)

(declare-fun e!4219278 () (Set Context!12732))

(declare-fun call!637569 () (Set Context!12732))

(assert (=> b!7019069 (= e!4219278 call!637569)))

(declare-fun e!4219277 () (Set Context!12732))

(declare-fun b!7019070 () Bool)

(assert (=> b!7019070 (= e!4219277 (set.union call!637569 (derivationStepZipperUp!2020 (Context!12733 (t!381411 (exprs!6866 lt!2510391))) (h!73979 s!7408))))))

(declare-fun bm!637564 () Bool)

(assert (=> bm!637564 (= call!637569 (derivationStepZipperDown!2088 (h!73980 (exprs!6866 lt!2510391)) (Context!12733 (t!381411 (exprs!6866 lt!2510391))) (h!73979 s!7408)))))

(declare-fun b!7019071 () Bool)

(assert (=> b!7019071 (= e!4219277 e!4219278)))

(declare-fun c!1304336 () Bool)

(assert (=> b!7019071 (= c!1304336 (is-Cons!67532 (exprs!6866 lt!2510391)))))

(declare-fun b!7019072 () Bool)

(declare-fun e!4219279 () Bool)

(assert (=> b!7019072 (= e!4219279 (nullable!7130 (h!73980 (exprs!6866 lt!2510391))))))

(declare-fun b!7019073 () Bool)

(assert (=> b!7019073 (= e!4219278 (as set.empty (Set Context!12732)))))

(declare-fun d!2187855 () Bool)

(declare-fun c!1304335 () Bool)

(assert (=> d!2187855 (= c!1304335 e!4219279)))

(declare-fun res!2864957 () Bool)

(assert (=> d!2187855 (=> (not res!2864957) (not e!4219279))))

(assert (=> d!2187855 (= res!2864957 (is-Cons!67532 (exprs!6866 lt!2510391)))))

(assert (=> d!2187855 (= (derivationStepZipperUp!2020 lt!2510391 (h!73979 s!7408)) e!4219277)))

(assert (= (and d!2187855 res!2864957) b!7019072))

(assert (= (and d!2187855 c!1304335) b!7019070))

(assert (= (and d!2187855 (not c!1304335)) b!7019071))

(assert (= (and b!7019071 c!1304336) b!7019069))

(assert (= (and b!7019071 (not c!1304336)) b!7019073))

(assert (= (or b!7019070 b!7019069) bm!637564))

(declare-fun m!7720054 () Bool)

(assert (=> b!7019070 m!7720054))

(declare-fun m!7720056 () Bool)

(assert (=> bm!637564 m!7720056))

(declare-fun m!7720058 () Bool)

(assert (=> b!7019072 m!7720058))

(assert (=> b!7018850 d!2187855))

(assert (=> b!7018850 d!2187801))

(declare-fun d!2187857 () Bool)

(declare-fun c!1304337 () Bool)

(assert (=> d!2187857 (= c!1304337 (isEmpty!39442 s!7408))))

(declare-fun e!4219280 () Bool)

(assert (=> d!2187857 (= (matchZipper!2910 lt!2510398 s!7408) e!4219280)))

(declare-fun b!7019074 () Bool)

(assert (=> b!7019074 (= e!4219280 (nullableZipper!2511 lt!2510398))))

(declare-fun b!7019075 () Bool)

(assert (=> b!7019075 (= e!4219280 (matchZipper!2910 (derivationStepZipper!2850 lt!2510398 (head!14201 s!7408)) (tail!13470 s!7408)))))

(assert (= (and d!2187857 c!1304337) b!7019074))

(assert (= (and d!2187857 (not c!1304337)) b!7019075))

(declare-fun m!7720060 () Bool)

(assert (=> d!2187857 m!7720060))

(declare-fun m!7720062 () Bool)

(assert (=> b!7019074 m!7720062))

(declare-fun m!7720064 () Bool)

(assert (=> b!7019075 m!7720064))

(assert (=> b!7019075 m!7720064))

(declare-fun m!7720066 () Bool)

(assert (=> b!7019075 m!7720066))

(declare-fun m!7720068 () Bool)

(assert (=> b!7019075 m!7720068))

(assert (=> b!7019075 m!7720066))

(assert (=> b!7019075 m!7720068))

(declare-fun m!7720070 () Bool)

(assert (=> b!7019075 m!7720070))

(assert (=> start!676652 d!2187857))

(declare-fun bs!1867215 () Bool)

(declare-fun d!2187859 () Bool)

(assert (= bs!1867215 (and d!2187859 b!7018846)))

(declare-fun lambda!410766 () Int)

(assert (=> bs!1867215 (= lambda!410766 lambda!410717)))

(declare-fun bs!1867216 () Bool)

(assert (= bs!1867216 (and d!2187859 d!2187837)))

(assert (=> bs!1867216 (= lambda!410766 lambda!410757)))

(assert (=> d!2187859 true))

(assert (=> d!2187859 (= (appendTo!491 z1!570 ct2!306) (map!15661 z1!570 lambda!410766))))

(declare-fun bs!1867217 () Bool)

(assert (= bs!1867217 d!2187859))

(declare-fun m!7720074 () Bool)

(assert (=> bs!1867217 m!7720074))

(assert (=> start!676652 d!2187859))

(declare-fun bs!1867218 () Bool)

(declare-fun d!2187863 () Bool)

(assert (= bs!1867218 (and d!2187863 b!7018846)))

(declare-fun lambda!410771 () Int)

(assert (=> bs!1867218 (= lambda!410771 lambda!410718)))

(declare-fun bs!1867219 () Bool)

(assert (= bs!1867219 (and d!2187863 d!2187813)))

(assert (=> bs!1867219 (= lambda!410771 lambda!410752)))

(assert (=> d!2187863 (= (inv!86285 ct2!306) (forall!16281 (exprs!6866 ct2!306) lambda!410771))))

(declare-fun bs!1867220 () Bool)

(assert (= bs!1867220 d!2187863))

(declare-fun m!7720076 () Bool)

(assert (=> bs!1867220 m!7720076))

(assert (=> start!676652 d!2187863))

(declare-fun bs!1867223 () Bool)

(declare-fun d!2187865 () Bool)

(assert (= bs!1867223 (and d!2187865 b!7018842)))

(declare-fun lambda!410775 () Int)

(assert (=> bs!1867223 (not (= lambda!410775 lambda!410716))))

(declare-fun bs!1867224 () Bool)

(assert (= bs!1867224 (and d!2187865 b!7018843)))

(assert (=> bs!1867224 (not (= lambda!410775 lambda!410720))))

(assert (=> d!2187865 true))

(declare-fun order!28081 () Int)

(declare-fun dynLambda!27199 (Int Int) Int)

(assert (=> d!2187865 (< (dynLambda!27199 order!28081 lambda!410716) (dynLambda!27199 order!28081 lambda!410775))))

(declare-fun forall!16282 (List!67657 Int) Bool)

(assert (=> d!2187865 (= (exists!3246 lt!2510386 lambda!410716) (not (forall!16282 lt!2510386 lambda!410775)))))

(declare-fun bs!1867225 () Bool)

(assert (= bs!1867225 d!2187865))

(declare-fun m!7720082 () Bool)

(assert (=> bs!1867225 m!7720082))

(assert (=> b!7018842 d!2187865))

(declare-fun d!2187869 () Bool)

(declare-fun c!1304339 () Bool)

(assert (=> d!2187869 (= c!1304339 (isEmpty!39442 s!7408))))

(declare-fun e!4219282 () Bool)

(assert (=> d!2187869 (= (matchZipper!2910 lt!2510373 s!7408) e!4219282)))

(declare-fun b!7019080 () Bool)

(assert (=> b!7019080 (= e!4219282 (nullableZipper!2511 lt!2510373))))

(declare-fun b!7019081 () Bool)

(assert (=> b!7019081 (= e!4219282 (matchZipper!2910 (derivationStepZipper!2850 lt!2510373 (head!14201 s!7408)) (tail!13470 s!7408)))))

(assert (= (and d!2187869 c!1304339) b!7019080))

(assert (= (and d!2187869 (not c!1304339)) b!7019081))

(assert (=> d!2187869 m!7720060))

(declare-fun m!7720094 () Bool)

(assert (=> b!7019080 m!7720094))

(assert (=> b!7019081 m!7720064))

(assert (=> b!7019081 m!7720064))

(declare-fun m!7720096 () Bool)

(assert (=> b!7019081 m!7720096))

(assert (=> b!7019081 m!7720068))

(assert (=> b!7019081 m!7720096))

(assert (=> b!7019081 m!7720068))

(declare-fun m!7720098 () Bool)

(assert (=> b!7019081 m!7720098))

(assert (=> b!7018842 d!2187869))

(declare-fun bs!1867226 () Bool)

(declare-fun d!2187873 () Bool)

(assert (= bs!1867226 (and d!2187873 b!7018842)))

(declare-fun lambda!410778 () Int)

(assert (=> bs!1867226 (= lambda!410778 lambda!410716)))

(declare-fun bs!1867227 () Bool)

(assert (= bs!1867227 (and d!2187873 b!7018843)))

(assert (=> bs!1867227 (= (= s!7408 lt!2510382) (= lambda!410778 lambda!410720))))

(declare-fun bs!1867228 () Bool)

(assert (= bs!1867228 (and d!2187873 d!2187865)))

(assert (=> bs!1867228 (not (= lambda!410778 lambda!410775))))

(assert (=> d!2187873 true))

(assert (=> d!2187873 (exists!3246 lt!2510386 lambda!410778)))

(declare-fun lt!2510555 () Unit!161422)

(declare-fun choose!52895 (List!67657 List!67655) Unit!161422)

(assert (=> d!2187873 (= lt!2510555 (choose!52895 lt!2510386 s!7408))))

(assert (=> d!2187873 (matchZipper!2910 (content!13437 lt!2510386) s!7408)))

(assert (=> d!2187873 (= (lemmaZipperMatchesExistsMatchingContext!339 lt!2510386 s!7408) lt!2510555)))

(declare-fun bs!1867229 () Bool)

(assert (= bs!1867229 d!2187873))

(declare-fun m!7720100 () Bool)

(assert (=> bs!1867229 m!7720100))

(declare-fun m!7720102 () Bool)

(assert (=> bs!1867229 m!7720102))

(declare-fun m!7720104 () Bool)

(assert (=> bs!1867229 m!7720104))

(assert (=> bs!1867229 m!7720104))

(declare-fun m!7720106 () Bool)

(assert (=> bs!1867229 m!7720106))

(assert (=> b!7018842 d!2187873))

(declare-fun d!2187875 () Bool)

(declare-fun e!4219291 () Bool)

(assert (=> d!2187875 e!4219291))

(declare-fun res!2864962 () Bool)

(assert (=> d!2187875 (=> (not res!2864962) (not e!4219291))))

(declare-fun lt!2510558 () List!67657)

(declare-fun noDuplicate!2588 (List!67657) Bool)

(assert (=> d!2187875 (= res!2864962 (noDuplicate!2588 lt!2510558))))

(declare-fun choose!52896 ((Set Context!12732)) List!67657)

(assert (=> d!2187875 (= lt!2510558 (choose!52896 lt!2510398))))

(assert (=> d!2187875 (= (toList!10730 lt!2510398) lt!2510558)))

(declare-fun b!7019094 () Bool)

(assert (=> b!7019094 (= e!4219291 (= (content!13437 lt!2510558) lt!2510398))))

(assert (= (and d!2187875 res!2864962) b!7019094))

(declare-fun m!7720108 () Bool)

(assert (=> d!2187875 m!7720108))

(declare-fun m!7720110 () Bool)

(assert (=> d!2187875 m!7720110))

(declare-fun m!7720112 () Bool)

(assert (=> b!7019094 m!7720112))

(assert (=> b!7018842 d!2187875))

(declare-fun d!2187877 () Bool)

(declare-fun e!4219297 () Bool)

(assert (=> d!2187877 e!4219297))

(declare-fun res!2864966 () Bool)

(assert (=> d!2187877 (=> (not res!2864966) (not e!4219297))))

(declare-fun lt!2510561 () Context!12732)

(declare-fun dynLambda!27201 (Int Context!12732) Bool)

(assert (=> d!2187877 (= res!2864966 (dynLambda!27201 lambda!410716 lt!2510561))))

(declare-fun getWitness!1336 (List!67657 Int) Context!12732)

(assert (=> d!2187877 (= lt!2510561 (getWitness!1336 (toList!10730 lt!2510398) lambda!410716))))

(assert (=> d!2187877 (exists!3245 lt!2510398 lambda!410716)))

(assert (=> d!2187877 (= (getWitness!1334 lt!2510398 lambda!410716) lt!2510561)))

(declare-fun b!7019102 () Bool)

(assert (=> b!7019102 (= e!4219297 (set.member lt!2510561 lt!2510398))))

(assert (= (and d!2187877 res!2864966) b!7019102))

(declare-fun b_lambda!264921 () Bool)

(assert (=> (not b_lambda!264921) (not d!2187877)))

(declare-fun m!7720118 () Bool)

(assert (=> d!2187877 m!7720118))

(assert (=> d!2187877 m!7719702))

(assert (=> d!2187877 m!7719702))

(declare-fun m!7720122 () Bool)

(assert (=> d!2187877 m!7720122))

(declare-fun m!7720124 () Bool)

(assert (=> d!2187877 m!7720124))

(declare-fun m!7720126 () Bool)

(assert (=> b!7019102 m!7720126))

(assert (=> b!7018842 d!2187877))

(assert (=> b!7018851 d!2187801))

(declare-fun bs!1867230 () Bool)

(declare-fun d!2187881 () Bool)

(assert (= bs!1867230 (and d!2187881 b!7018846)))

(declare-fun lambda!410779 () Int)

(assert (=> bs!1867230 (= lambda!410779 lambda!410718)))

(declare-fun bs!1867231 () Bool)

(assert (= bs!1867231 (and d!2187881 d!2187813)))

(assert (=> bs!1867231 (= lambda!410779 lambda!410752)))

(declare-fun bs!1867232 () Bool)

(assert (= bs!1867232 (and d!2187881 d!2187863)))

(assert (=> bs!1867232 (= lambda!410779 lambda!410771)))

(assert (=> d!2187881 (= (inv!86285 setElem!48609) (forall!16281 (exprs!6866 setElem!48609) lambda!410779))))

(declare-fun bs!1867233 () Bool)

(assert (= bs!1867233 d!2187881))

(declare-fun m!7720128 () Bool)

(assert (=> bs!1867233 m!7720128))

(assert (=> setNonEmpty!48609 d!2187881))

(declare-fun d!2187883 () Bool)

(declare-fun e!4219302 () Bool)

(assert (=> d!2187883 e!4219302))

(declare-fun res!2864972 () Bool)

(assert (=> d!2187883 (=> (not res!2864972) (not e!4219302))))

(declare-fun lt!2510564 () List!67655)

(declare-fun content!13441 (List!67655) (Set C!35010))

(assert (=> d!2187883 (= res!2864972 (= (content!13441 lt!2510564) (set.union (content!13441 (_1!37314 lt!2510380)) (content!13441 (_2!37314 lt!2510380)))))))

(declare-fun e!4219303 () List!67655)

(assert (=> d!2187883 (= lt!2510564 e!4219303)))

(declare-fun c!1304350 () Bool)

(assert (=> d!2187883 (= c!1304350 (is-Nil!67531 (_1!37314 lt!2510380)))))

(assert (=> d!2187883 (= (++!15404 (_1!37314 lt!2510380) (_2!37314 lt!2510380)) lt!2510564)))

(declare-fun b!7019114 () Bool)

(assert (=> b!7019114 (= e!4219302 (or (not (= (_2!37314 lt!2510380) Nil!67531)) (= lt!2510564 (_1!37314 lt!2510380))))))

(declare-fun b!7019113 () Bool)

(declare-fun res!2864971 () Bool)

(assert (=> b!7019113 (=> (not res!2864971) (not e!4219302))))

(declare-fun size!41013 (List!67655) Int)

(assert (=> b!7019113 (= res!2864971 (= (size!41013 lt!2510564) (+ (size!41013 (_1!37314 lt!2510380)) (size!41013 (_2!37314 lt!2510380)))))))

(declare-fun b!7019112 () Bool)

(assert (=> b!7019112 (= e!4219303 (Cons!67531 (h!73979 (_1!37314 lt!2510380)) (++!15404 (t!381410 (_1!37314 lt!2510380)) (_2!37314 lt!2510380))))))

(declare-fun b!7019111 () Bool)

(assert (=> b!7019111 (= e!4219303 (_2!37314 lt!2510380))))

(assert (= (and d!2187883 c!1304350) b!7019111))

(assert (= (and d!2187883 (not c!1304350)) b!7019112))

(assert (= (and d!2187883 res!2864972) b!7019113))

(assert (= (and b!7019113 res!2864971) b!7019114))

(declare-fun m!7720132 () Bool)

(assert (=> d!2187883 m!7720132))

(declare-fun m!7720134 () Bool)

(assert (=> d!2187883 m!7720134))

(declare-fun m!7720136 () Bool)

(assert (=> d!2187883 m!7720136))

(declare-fun m!7720138 () Bool)

(assert (=> b!7019113 m!7720138))

(declare-fun m!7720140 () Bool)

(assert (=> b!7019113 m!7720140))

(declare-fun m!7720142 () Bool)

(assert (=> b!7019113 m!7720142))

(declare-fun m!7720144 () Bool)

(assert (=> b!7019112 m!7720144))

(assert (=> b!7018852 d!2187883))

(declare-fun b!7019115 () Bool)

(declare-fun e!4219307 () Bool)

(declare-fun lt!2510569 () Option!16843)

(assert (=> b!7019115 (= e!4219307 (not (isDefined!13544 lt!2510569)))))

(declare-fun b!7019116 () Bool)

(declare-fun e!4219305 () Option!16843)

(assert (=> b!7019116 (= e!4219305 None!16842)))

(declare-fun b!7019117 () Bool)

(declare-fun e!4219306 () Bool)

(assert (=> b!7019117 (= e!4219306 (= (++!15404 (_1!37314 (get!23687 lt!2510569)) (_2!37314 (get!23687 lt!2510569))) s!7408))))

(declare-fun b!7019118 () Bool)

(declare-fun e!4219304 () Bool)

(assert (=> b!7019118 (= e!4219304 (matchZipper!2910 lt!2510393 s!7408))))

(declare-fun d!2187887 () Bool)

(assert (=> d!2187887 e!4219307))

(declare-fun res!2864975 () Bool)

(assert (=> d!2187887 (=> res!2864975 e!4219307)))

(assert (=> d!2187887 (= res!2864975 e!4219306)))

(declare-fun res!2864973 () Bool)

(assert (=> d!2187887 (=> (not res!2864973) (not e!4219306))))

(assert (=> d!2187887 (= res!2864973 (isDefined!13544 lt!2510569))))

(declare-fun e!4219308 () Option!16843)

(assert (=> d!2187887 (= lt!2510569 e!4219308)))

(declare-fun c!1304352 () Bool)

(assert (=> d!2187887 (= c!1304352 e!4219304)))

(declare-fun res!2864977 () Bool)

(assert (=> d!2187887 (=> (not res!2864977) (not e!4219304))))

(assert (=> d!2187887 (= res!2864977 (matchZipper!2910 z1!570 Nil!67531))))

(assert (=> d!2187887 (= (++!15404 Nil!67531 s!7408) s!7408)))

(assert (=> d!2187887 (= (findConcatSeparationZippers!359 z1!570 lt!2510393 Nil!67531 s!7408 s!7408) lt!2510569)))

(declare-fun b!7019119 () Bool)

(declare-fun lt!2510568 () Unit!161422)

(declare-fun lt!2510567 () Unit!161422)

(assert (=> b!7019119 (= lt!2510568 lt!2510567)))

(assert (=> b!7019119 (= (++!15404 (++!15404 Nil!67531 (Cons!67531 (h!73979 s!7408) Nil!67531)) (t!381410 s!7408)) s!7408)))

(assert (=> b!7019119 (= lt!2510567 (lemmaMoveElementToOtherListKeepsConcatEq!2907 Nil!67531 (h!73979 s!7408) (t!381410 s!7408) s!7408))))

(assert (=> b!7019119 (= e!4219305 (findConcatSeparationZippers!359 z1!570 lt!2510393 (++!15404 Nil!67531 (Cons!67531 (h!73979 s!7408) Nil!67531)) (t!381410 s!7408) s!7408))))

(declare-fun b!7019120 () Bool)

(assert (=> b!7019120 (= e!4219308 (Some!16842 (tuple2!68023 Nil!67531 s!7408)))))

(declare-fun b!7019121 () Bool)

(declare-fun res!2864974 () Bool)

(assert (=> b!7019121 (=> (not res!2864974) (not e!4219306))))

(assert (=> b!7019121 (= res!2864974 (matchZipper!2910 lt!2510393 (_2!37314 (get!23687 lt!2510569))))))

(declare-fun b!7019122 () Bool)

(declare-fun res!2864976 () Bool)

(assert (=> b!7019122 (=> (not res!2864976) (not e!4219306))))

(assert (=> b!7019122 (= res!2864976 (matchZipper!2910 z1!570 (_1!37314 (get!23687 lt!2510569))))))

(declare-fun b!7019123 () Bool)

(assert (=> b!7019123 (= e!4219308 e!4219305)))

(declare-fun c!1304351 () Bool)

(assert (=> b!7019123 (= c!1304351 (is-Nil!67531 s!7408))))

(assert (= (and d!2187887 res!2864977) b!7019118))

(assert (= (and d!2187887 c!1304352) b!7019120))

(assert (= (and d!2187887 (not c!1304352)) b!7019123))

(assert (= (and b!7019123 c!1304351) b!7019116))

(assert (= (and b!7019123 (not c!1304351)) b!7019119))

(assert (= (and d!2187887 res!2864973) b!7019122))

(assert (= (and b!7019122 res!2864976) b!7019121))

(assert (= (and b!7019121 res!2864974) b!7019117))

(assert (= (and d!2187887 (not res!2864975)) b!7019115))

(declare-fun m!7720146 () Bool)

(assert (=> b!7019121 m!7720146))

(declare-fun m!7720148 () Bool)

(assert (=> b!7019121 m!7720148))

(declare-fun m!7720150 () Bool)

(assert (=> b!7019118 m!7720150))

(declare-fun m!7720152 () Bool)

(assert (=> d!2187887 m!7720152))

(declare-fun m!7720154 () Bool)

(assert (=> d!2187887 m!7720154))

(assert (=> d!2187887 m!7719686))

(assert (=> b!7019117 m!7720146))

(declare-fun m!7720156 () Bool)

(assert (=> b!7019117 m!7720156))

(assert (=> b!7019122 m!7720146))

(declare-fun m!7720158 () Bool)

(assert (=> b!7019122 m!7720158))

(assert (=> b!7019115 m!7720152))

(declare-fun m!7720160 () Bool)

(assert (=> b!7019119 m!7720160))

(assert (=> b!7019119 m!7720160))

(declare-fun m!7720162 () Bool)

(assert (=> b!7019119 m!7720162))

(declare-fun m!7720164 () Bool)

(assert (=> b!7019119 m!7720164))

(assert (=> b!7019119 m!7720160))

(declare-fun m!7720168 () Bool)

(assert (=> b!7019119 m!7720168))

(assert (=> b!7018843 d!2187887))

(declare-fun d!2187889 () Bool)

(declare-fun c!1304355 () Bool)

(assert (=> d!2187889 (= c!1304355 (is-Nil!67533 lt!2510368))))

(declare-fun e!4219311 () (Set Context!12732))

(assert (=> d!2187889 (= (content!13437 lt!2510368) e!4219311)))

(declare-fun b!7019128 () Bool)

(assert (=> b!7019128 (= e!4219311 (as set.empty (Set Context!12732)))))

(declare-fun b!7019129 () Bool)

(assert (=> b!7019129 (= e!4219311 (set.union (set.insert (h!73981 lt!2510368) (as set.empty (Set Context!12732))) (content!13437 (t!381412 lt!2510368))))))

(assert (= (and d!2187889 c!1304355) b!7019128))

(assert (= (and d!2187889 (not c!1304355)) b!7019129))

(declare-fun m!7720172 () Bool)

(assert (=> b!7019129 m!7720172))

(declare-fun m!7720174 () Bool)

(assert (=> b!7019129 m!7720174))

(assert (=> b!7018843 d!2187889))

(declare-fun d!2187893 () Bool)

(assert (=> d!2187893 (exists!3245 z1!570 lambda!410720)))

(declare-fun lt!2510573 () Unit!161422)

(declare-fun choose!52898 ((Set Context!12732) Context!12732 Int) Unit!161422)

(assert (=> d!2187893 (= lt!2510573 (choose!52898 z1!570 lt!2510388 lambda!410720))))

(assert (=> d!2187893 (set.member lt!2510388 z1!570)))

(assert (=> d!2187893 (= (lemmaContainsThenExists!104 z1!570 lt!2510388 lambda!410720) lt!2510573)))

(declare-fun bs!1867236 () Bool)

(assert (= bs!1867236 d!2187893))

(assert (=> bs!1867236 m!7719690))

(declare-fun m!7720176 () Bool)

(assert (=> bs!1867236 m!7720176))

(assert (=> bs!1867236 m!7719708))

(assert (=> b!7018843 d!2187893))

(declare-fun bs!1867239 () Bool)

(declare-fun d!2187895 () Bool)

(assert (= bs!1867239 (and d!2187895 b!7018842)))

(declare-fun lambda!410785 () Int)

(assert (=> bs!1867239 (= (= lt!2510382 s!7408) (= lambda!410785 lambda!410716))))

(declare-fun bs!1867240 () Bool)

(assert (= bs!1867240 (and d!2187895 b!7018843)))

(assert (=> bs!1867240 (= lambda!410785 lambda!410720)))

(declare-fun bs!1867241 () Bool)

(assert (= bs!1867241 (and d!2187895 d!2187865)))

(assert (=> bs!1867241 (not (= lambda!410785 lambda!410775))))

(declare-fun bs!1867242 () Bool)

(assert (= bs!1867242 (and d!2187895 d!2187873)))

(assert (=> bs!1867242 (= (= lt!2510382 s!7408) (= lambda!410785 lambda!410778))))

(assert (=> d!2187895 true))

(assert (=> d!2187895 (matchZipper!2910 (content!13437 lt!2510368) lt!2510382)))

(declare-fun lt!2510578 () Unit!161422)

(declare-fun choose!52899 (List!67657 List!67655) Unit!161422)

(assert (=> d!2187895 (= lt!2510578 (choose!52899 lt!2510368 lt!2510382))))

(assert (=> d!2187895 (exists!3246 lt!2510368 lambda!410785)))

(assert (=> d!2187895 (= (lemmaExistsMatchingContextThenMatchingString!33 lt!2510368 lt!2510382) lt!2510578)))

(declare-fun bs!1867244 () Bool)

(assert (= bs!1867244 d!2187895))

(assert (=> bs!1867244 m!7719670))

(assert (=> bs!1867244 m!7719670))

(assert (=> bs!1867244 m!7719672))

(declare-fun m!7720182 () Bool)

(assert (=> bs!1867244 m!7720182))

(declare-fun m!7720184 () Bool)

(assert (=> bs!1867244 m!7720184))

(assert (=> b!7018843 d!2187895))

(declare-fun d!2187901 () Bool)

(declare-fun lt!2510582 () Bool)

(assert (=> d!2187901 (= lt!2510582 (exists!3246 (toList!10730 z1!570) lambda!410720))))

(declare-fun choose!52901 ((Set Context!12732) Int) Bool)

(assert (=> d!2187901 (= lt!2510582 (choose!52901 z1!570 lambda!410720))))

(assert (=> d!2187901 (= (exists!3245 z1!570 lambda!410720) lt!2510582)))

(declare-fun bs!1867245 () Bool)

(assert (= bs!1867245 d!2187901))

(assert (=> bs!1867245 m!7719688))

(assert (=> bs!1867245 m!7719688))

(declare-fun m!7720186 () Bool)

(assert (=> bs!1867245 m!7720186))

(declare-fun m!7720188 () Bool)

(assert (=> bs!1867245 m!7720188))

(assert (=> b!7018843 d!2187901))

(declare-fun d!2187903 () Bool)

(declare-fun c!1304360 () Bool)

(assert (=> d!2187903 (= c!1304360 (isEmpty!39442 lt!2510382))))

(declare-fun e!4219314 () Bool)

(assert (=> d!2187903 (= (matchZipper!2910 (content!13437 lt!2510368) lt!2510382) e!4219314)))

(declare-fun b!7019132 () Bool)

(assert (=> b!7019132 (= e!4219314 (nullableZipper!2511 (content!13437 lt!2510368)))))

(declare-fun b!7019133 () Bool)

(assert (=> b!7019133 (= e!4219314 (matchZipper!2910 (derivationStepZipper!2850 (content!13437 lt!2510368) (head!14201 lt!2510382)) (tail!13470 lt!2510382)))))

(assert (= (and d!2187903 c!1304360) b!7019132))

(assert (= (and d!2187903 (not c!1304360)) b!7019133))

(declare-fun m!7720190 () Bool)

(assert (=> d!2187903 m!7720190))

(assert (=> b!7019132 m!7719670))

(declare-fun m!7720192 () Bool)

(assert (=> b!7019132 m!7720192))

(declare-fun m!7720194 () Bool)

(assert (=> b!7019133 m!7720194))

(assert (=> b!7019133 m!7719670))

(assert (=> b!7019133 m!7720194))

(declare-fun m!7720196 () Bool)

(assert (=> b!7019133 m!7720196))

(declare-fun m!7720198 () Bool)

(assert (=> b!7019133 m!7720198))

(assert (=> b!7019133 m!7720196))

(assert (=> b!7019133 m!7720198))

(declare-fun m!7720200 () Bool)

(assert (=> b!7019133 m!7720200))

(assert (=> b!7018843 d!2187903))

(declare-fun b!7019136 () Bool)

(declare-fun e!4219320 () Bool)

(declare-fun lt!2510587 () Option!16843)

(assert (=> b!7019136 (= e!4219320 (not (isDefined!13544 lt!2510587)))))

(declare-fun b!7019137 () Bool)

(declare-fun e!4219318 () Option!16843)

(assert (=> b!7019137 (= e!4219318 None!16842)))

(declare-fun b!7019138 () Bool)

(declare-fun e!4219319 () Bool)

(assert (=> b!7019138 (= e!4219319 (= (++!15404 (_1!37314 (get!23687 lt!2510587)) (_2!37314 (get!23687 lt!2510587))) s!7408))))

(declare-fun b!7019139 () Bool)

(declare-fun e!4219317 () Bool)

(assert (=> b!7019139 (= e!4219317 (matchZipper!2910 lt!2510393 s!7408))))

(declare-fun d!2187905 () Bool)

(assert (=> d!2187905 e!4219320))

(declare-fun res!2864982 () Bool)

(assert (=> d!2187905 (=> res!2864982 e!4219320)))

(assert (=> d!2187905 (= res!2864982 e!4219319)))

(declare-fun res!2864980 () Bool)

(assert (=> d!2187905 (=> (not res!2864980) (not e!4219319))))

(assert (=> d!2187905 (= res!2864980 (isDefined!13544 lt!2510587))))

(declare-fun e!4219321 () Option!16843)

(assert (=> d!2187905 (= lt!2510587 e!4219321)))

(declare-fun c!1304362 () Bool)

(assert (=> d!2187905 (= c!1304362 e!4219317)))

(declare-fun res!2864984 () Bool)

(assert (=> d!2187905 (=> (not res!2864984) (not e!4219317))))

(assert (=> d!2187905 (= res!2864984 (matchZipper!2910 lt!2510397 Nil!67531))))

(assert (=> d!2187905 (= (++!15404 Nil!67531 s!7408) s!7408)))

(assert (=> d!2187905 (= (findConcatSeparationZippers!359 lt!2510397 lt!2510393 Nil!67531 s!7408 s!7408) lt!2510587)))

(declare-fun b!7019140 () Bool)

(declare-fun lt!2510586 () Unit!161422)

(declare-fun lt!2510585 () Unit!161422)

(assert (=> b!7019140 (= lt!2510586 lt!2510585)))

(assert (=> b!7019140 (= (++!15404 (++!15404 Nil!67531 (Cons!67531 (h!73979 s!7408) Nil!67531)) (t!381410 s!7408)) s!7408)))

(assert (=> b!7019140 (= lt!2510585 (lemmaMoveElementToOtherListKeepsConcatEq!2907 Nil!67531 (h!73979 s!7408) (t!381410 s!7408) s!7408))))

(assert (=> b!7019140 (= e!4219318 (findConcatSeparationZippers!359 lt!2510397 lt!2510393 (++!15404 Nil!67531 (Cons!67531 (h!73979 s!7408) Nil!67531)) (t!381410 s!7408) s!7408))))

(declare-fun b!7019141 () Bool)

(assert (=> b!7019141 (= e!4219321 (Some!16842 (tuple2!68023 Nil!67531 s!7408)))))

(declare-fun b!7019142 () Bool)

(declare-fun res!2864981 () Bool)

(assert (=> b!7019142 (=> (not res!2864981) (not e!4219319))))

(assert (=> b!7019142 (= res!2864981 (matchZipper!2910 lt!2510393 (_2!37314 (get!23687 lt!2510587))))))

(declare-fun b!7019143 () Bool)

(declare-fun res!2864983 () Bool)

(assert (=> b!7019143 (=> (not res!2864983) (not e!4219319))))

(assert (=> b!7019143 (= res!2864983 (matchZipper!2910 lt!2510397 (_1!37314 (get!23687 lt!2510587))))))

(declare-fun b!7019144 () Bool)

(assert (=> b!7019144 (= e!4219321 e!4219318)))

(declare-fun c!1304361 () Bool)

(assert (=> b!7019144 (= c!1304361 (is-Nil!67531 s!7408))))

(assert (= (and d!2187905 res!2864984) b!7019139))

(assert (= (and d!2187905 c!1304362) b!7019141))

(assert (= (and d!2187905 (not c!1304362)) b!7019144))

(assert (= (and b!7019144 c!1304361) b!7019137))

(assert (= (and b!7019144 (not c!1304361)) b!7019140))

(assert (= (and d!2187905 res!2864980) b!7019143))

(assert (= (and b!7019143 res!2864983) b!7019142))

(assert (= (and b!7019142 res!2864981) b!7019138))

(assert (= (and d!2187905 (not res!2864982)) b!7019136))

(declare-fun m!7720202 () Bool)

(assert (=> b!7019142 m!7720202))

(declare-fun m!7720204 () Bool)

(assert (=> b!7019142 m!7720204))

(assert (=> b!7019139 m!7720150))

(declare-fun m!7720208 () Bool)

(assert (=> d!2187905 m!7720208))

(declare-fun m!7720210 () Bool)

(assert (=> d!2187905 m!7720210))

(assert (=> d!2187905 m!7719686))

(assert (=> b!7019138 m!7720202))

(declare-fun m!7720216 () Bool)

(assert (=> b!7019138 m!7720216))

(assert (=> b!7019143 m!7720202))

(declare-fun m!7720218 () Bool)

(assert (=> b!7019143 m!7720218))

(assert (=> b!7019136 m!7720208))

(assert (=> b!7019140 m!7720160))

(assert (=> b!7019140 m!7720160))

(assert (=> b!7019140 m!7720162))

(assert (=> b!7019140 m!7720164))

(assert (=> b!7019140 m!7720160))

(declare-fun m!7720220 () Bool)

(assert (=> b!7019140 m!7720220))

(assert (=> b!7018843 d!2187905))

(declare-fun d!2187909 () Bool)

(assert (=> d!2187909 (= (isDefined!13544 (findConcatSeparationZippers!359 lt!2510397 lt!2510393 Nil!67531 s!7408 s!7408)) (not (isEmpty!39441 (findConcatSeparationZippers!359 lt!2510397 lt!2510393 Nil!67531 s!7408 s!7408))))))

(declare-fun bs!1867246 () Bool)

(assert (= bs!1867246 d!2187909))

(assert (=> bs!1867246 m!7719676))

(declare-fun m!7720222 () Bool)

(assert (=> bs!1867246 m!7720222))

(assert (=> b!7018843 d!2187909))

(declare-fun d!2187911 () Bool)

(declare-fun e!4219323 () Bool)

(assert (=> d!2187911 e!4219323))

(declare-fun res!2864986 () Bool)

(assert (=> d!2187911 (=> (not res!2864986) (not e!4219323))))

(declare-fun lt!2510589 () List!67657)

(assert (=> d!2187911 (= res!2864986 (noDuplicate!2588 lt!2510589))))

(assert (=> d!2187911 (= lt!2510589 (choose!52896 z1!570))))

(assert (=> d!2187911 (= (toList!10730 z1!570) lt!2510589)))

(declare-fun b!7019146 () Bool)

(assert (=> b!7019146 (= e!4219323 (= (content!13437 lt!2510589) z1!570))))

(assert (= (and d!2187911 res!2864986) b!7019146))

(declare-fun m!7720224 () Bool)

(assert (=> d!2187911 m!7720224))

(declare-fun m!7720226 () Bool)

(assert (=> d!2187911 m!7720226))

(declare-fun m!7720228 () Bool)

(assert (=> b!7019146 m!7720228))

(assert (=> b!7018843 d!2187911))

(declare-fun d!2187913 () Bool)

(assert (=> d!2187913 (isDefined!13544 (findConcatSeparationZippers!359 lt!2510397 lt!2510393 Nil!67531 s!7408 s!7408))))

(declare-fun lt!2510592 () Unit!161422)

(declare-fun choose!52906 ((Set Context!12732) (Set Context!12732) List!67655 List!67655 List!67655 List!67655 List!67655) Unit!161422)

(assert (=> d!2187913 (= lt!2510592 (choose!52906 lt!2510397 lt!2510393 lt!2510382 (_2!37314 lt!2510380) s!7408 Nil!67531 s!7408))))

(assert (=> d!2187913 (matchZipper!2910 lt!2510397 lt!2510382)))

(assert (=> d!2187913 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!31 lt!2510397 lt!2510393 lt!2510382 (_2!37314 lt!2510380) s!7408 Nil!67531 s!7408) lt!2510592)))

(declare-fun bs!1867249 () Bool)

(assert (= bs!1867249 d!2187913))

(assert (=> bs!1867249 m!7719676))

(assert (=> bs!1867249 m!7719676))

(assert (=> bs!1867249 m!7719684))

(declare-fun m!7720238 () Bool)

(assert (=> bs!1867249 m!7720238))

(assert (=> bs!1867249 m!7719624))

(assert (=> b!7018843 d!2187913))

(declare-fun d!2187921 () Bool)

(assert (=> d!2187921 (isDefined!13544 (findConcatSeparationZippers!359 z1!570 lt!2510393 Nil!67531 s!7408 s!7408))))

(declare-fun lt!2510593 () Unit!161422)

(assert (=> d!2187921 (= lt!2510593 (choose!52906 z1!570 lt!2510393 lt!2510382 (_2!37314 lt!2510380) s!7408 Nil!67531 s!7408))))

(assert (=> d!2187921 (matchZipper!2910 z1!570 lt!2510382)))

(assert (=> d!2187921 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!31 z1!570 lt!2510393 lt!2510382 (_2!37314 lt!2510380) s!7408 Nil!67531 s!7408) lt!2510593)))

(declare-fun bs!1867250 () Bool)

(assert (= bs!1867250 d!2187921))

(assert (=> bs!1867250 m!7719680))

(assert (=> bs!1867250 m!7719680))

(assert (=> bs!1867250 m!7719682))

(declare-fun m!7720240 () Bool)

(assert (=> bs!1867250 m!7720240))

(declare-fun m!7720242 () Bool)

(assert (=> bs!1867250 m!7720242))

(assert (=> b!7018843 d!2187921))

(declare-fun d!2187923 () Bool)

(declare-fun e!4219327 () Bool)

(assert (=> d!2187923 e!4219327))

(declare-fun res!2864988 () Bool)

(assert (=> d!2187923 (=> (not res!2864988) (not e!4219327))))

(declare-fun lt!2510594 () List!67655)

(assert (=> d!2187923 (= res!2864988 (= (content!13441 lt!2510594) (set.union (content!13441 Nil!67531) (content!13441 s!7408))))))

(declare-fun e!4219328 () List!67655)

(assert (=> d!2187923 (= lt!2510594 e!4219328)))

(declare-fun c!1304366 () Bool)

(assert (=> d!2187923 (= c!1304366 (is-Nil!67531 Nil!67531))))

(assert (=> d!2187923 (= (++!15404 Nil!67531 s!7408) lt!2510594)))

(declare-fun b!7019156 () Bool)

(assert (=> b!7019156 (= e!4219327 (or (not (= s!7408 Nil!67531)) (= lt!2510594 Nil!67531)))))

(declare-fun b!7019155 () Bool)

(declare-fun res!2864987 () Bool)

(assert (=> b!7019155 (=> (not res!2864987) (not e!4219327))))

(assert (=> b!7019155 (= res!2864987 (= (size!41013 lt!2510594) (+ (size!41013 Nil!67531) (size!41013 s!7408))))))

(declare-fun b!7019154 () Bool)

(assert (=> b!7019154 (= e!4219328 (Cons!67531 (h!73979 Nil!67531) (++!15404 (t!381410 Nil!67531) s!7408)))))

(declare-fun b!7019153 () Bool)

(assert (=> b!7019153 (= e!4219328 s!7408)))

(assert (= (and d!2187923 c!1304366) b!7019153))

(assert (= (and d!2187923 (not c!1304366)) b!7019154))

(assert (= (and d!2187923 res!2864988) b!7019155))

(assert (= (and b!7019155 res!2864987) b!7019156))

(declare-fun m!7720244 () Bool)

(assert (=> d!2187923 m!7720244))

(declare-fun m!7720246 () Bool)

(assert (=> d!2187923 m!7720246))

(declare-fun m!7720248 () Bool)

(assert (=> d!2187923 m!7720248))

(declare-fun m!7720250 () Bool)

(assert (=> b!7019155 m!7720250))

(declare-fun m!7720252 () Bool)

(assert (=> b!7019155 m!7720252))

(declare-fun m!7720254 () Bool)

(assert (=> b!7019155 m!7720254))

(declare-fun m!7720256 () Bool)

(assert (=> b!7019154 m!7720256))

(assert (=> b!7018843 d!2187923))

(declare-fun d!2187925 () Bool)

(assert (=> d!2187925 (= (isDefined!13544 (findConcatSeparationZippers!359 z1!570 lt!2510393 Nil!67531 s!7408 s!7408)) (not (isEmpty!39441 (findConcatSeparationZippers!359 z1!570 lt!2510393 Nil!67531 s!7408 s!7408))))))

(declare-fun bs!1867251 () Bool)

(assert (= bs!1867251 d!2187925))

(assert (=> bs!1867251 m!7719680))

(declare-fun m!7720258 () Bool)

(assert (=> bs!1867251 m!7720258))

(assert (=> b!7018843 d!2187925))

(declare-fun d!2187927 () Bool)

(assert (=> d!2187927 (= (flatMap!2356 lt!2510397 lambda!410719) (choose!52893 lt!2510397 lambda!410719))))

(declare-fun bs!1867252 () Bool)

(assert (= bs!1867252 d!2187927))

(declare-fun m!7720260 () Bool)

(assert (=> bs!1867252 m!7720260))

(assert (=> b!7018853 d!2187927))

(declare-fun b!7019157 () Bool)

(declare-fun e!4219330 () (Set Context!12732))

(declare-fun call!637573 () (Set Context!12732))

(assert (=> b!7019157 (= e!4219330 call!637573)))

(declare-fun e!4219329 () (Set Context!12732))

(declare-fun b!7019158 () Bool)

(assert (=> b!7019158 (= e!4219329 (set.union call!637573 (derivationStepZipperUp!2020 (Context!12733 (t!381411 (exprs!6866 lt!2510388))) (h!73979 s!7408))))))

(declare-fun bm!637568 () Bool)

(assert (=> bm!637568 (= call!637573 (derivationStepZipperDown!2088 (h!73980 (exprs!6866 lt!2510388)) (Context!12733 (t!381411 (exprs!6866 lt!2510388))) (h!73979 s!7408)))))

(declare-fun b!7019159 () Bool)

(assert (=> b!7019159 (= e!4219329 e!4219330)))

(declare-fun c!1304368 () Bool)

(assert (=> b!7019159 (= c!1304368 (is-Cons!67532 (exprs!6866 lt!2510388)))))

(declare-fun b!7019160 () Bool)

(declare-fun e!4219331 () Bool)

(assert (=> b!7019160 (= e!4219331 (nullable!7130 (h!73980 (exprs!6866 lt!2510388))))))

(declare-fun b!7019161 () Bool)

(assert (=> b!7019161 (= e!4219330 (as set.empty (Set Context!12732)))))

(declare-fun d!2187929 () Bool)

(declare-fun c!1304367 () Bool)

(assert (=> d!2187929 (= c!1304367 e!4219331)))

(declare-fun res!2864989 () Bool)

(assert (=> d!2187929 (=> (not res!2864989) (not e!4219331))))

(assert (=> d!2187929 (= res!2864989 (is-Cons!67532 (exprs!6866 lt!2510388)))))

(assert (=> d!2187929 (= (derivationStepZipperUp!2020 lt!2510388 (h!73979 s!7408)) e!4219329)))

(assert (= (and d!2187929 res!2864989) b!7019160))

(assert (= (and d!2187929 c!1304367) b!7019158))

(assert (= (and d!2187929 (not c!1304367)) b!7019159))

(assert (= (and b!7019159 c!1304368) b!7019157))

(assert (= (and b!7019159 (not c!1304368)) b!7019161))

(assert (= (or b!7019158 b!7019157) bm!637568))

(declare-fun m!7720262 () Bool)

(assert (=> b!7019158 m!7720262))

(declare-fun m!7720264 () Bool)

(assert (=> bm!637568 m!7720264))

(assert (=> b!7019160 m!7719646))

(assert (=> b!7018853 d!2187929))

(declare-fun d!2187931 () Bool)

(assert (=> d!2187931 (= (flatMap!2356 lt!2510397 lambda!410719) (dynLambda!27198 lambda!410719 lt!2510388))))

(declare-fun lt!2510595 () Unit!161422)

(assert (=> d!2187931 (= lt!2510595 (choose!52892 lt!2510397 lt!2510388 lambda!410719))))

(assert (=> d!2187931 (= lt!2510397 (set.insert lt!2510388 (as set.empty (Set Context!12732))))))

(assert (=> d!2187931 (= (lemmaFlatMapOnSingletonSet!1871 lt!2510397 lt!2510388 lambda!410719) lt!2510595)))

(declare-fun b_lambda!264925 () Bool)

(assert (=> (not b_lambda!264925) (not d!2187931)))

(declare-fun bs!1867253 () Bool)

(assert (= bs!1867253 d!2187931))

(assert (=> bs!1867253 m!7719656))

(declare-fun m!7720266 () Bool)

(assert (=> bs!1867253 m!7720266))

(declare-fun m!7720268 () Bool)

(assert (=> bs!1867253 m!7720268))

(assert (=> bs!1867253 m!7719652))

(assert (=> b!7018853 d!2187931))

(declare-fun bs!1867254 () Bool)

(declare-fun d!2187933 () Bool)

(assert (= bs!1867254 (and d!2187933 b!7018850)))

(declare-fun lambda!410786 () Int)

(assert (=> bs!1867254 (= lambda!410786 lambda!410719)))

(declare-fun bs!1867255 () Bool)

(assert (= bs!1867255 (and d!2187933 d!2187847)))

(assert (=> bs!1867255 (= lambda!410786 lambda!410760)))

(assert (=> d!2187933 true))

(assert (=> d!2187933 (= (derivationStepZipper!2850 lt!2510397 (h!73979 s!7408)) (flatMap!2356 lt!2510397 lambda!410786))))

(declare-fun bs!1867256 () Bool)

(assert (= bs!1867256 d!2187933))

(declare-fun m!7720270 () Bool)

(assert (=> bs!1867256 m!7720270))

(assert (=> b!7018853 d!2187933))

(declare-fun d!2187935 () Bool)

(declare-fun c!1304369 () Bool)

(assert (=> d!2187935 (= c!1304369 (isEmpty!39442 lt!2510382))))

(declare-fun e!4219332 () Bool)

(assert (=> d!2187935 (= (matchZipper!2910 lt!2510397 lt!2510382) e!4219332)))

(declare-fun b!7019162 () Bool)

(assert (=> b!7019162 (= e!4219332 (nullableZipper!2511 lt!2510397))))

(declare-fun b!7019163 () Bool)

(assert (=> b!7019163 (= e!4219332 (matchZipper!2910 (derivationStepZipper!2850 lt!2510397 (head!14201 lt!2510382)) (tail!13470 lt!2510382)))))

(assert (= (and d!2187935 c!1304369) b!7019162))

(assert (= (and d!2187935 (not c!1304369)) b!7019163))

(assert (=> d!2187935 m!7720190))

(declare-fun m!7720272 () Bool)

(assert (=> b!7019162 m!7720272))

(assert (=> b!7019163 m!7720194))

(assert (=> b!7019163 m!7720194))

(declare-fun m!7720274 () Bool)

(assert (=> b!7019163 m!7720274))

(assert (=> b!7019163 m!7720198))

(assert (=> b!7019163 m!7720274))

(assert (=> b!7019163 m!7720198))

(declare-fun m!7720276 () Bool)

(assert (=> b!7019163 m!7720276))

(assert (=> b!7018844 d!2187935))

(declare-fun d!2187937 () Bool)

(declare-fun c!1304370 () Bool)

(assert (=> d!2187937 (= c!1304370 (isEmpty!39442 (_2!37314 lt!2510380)))))

(declare-fun e!4219333 () Bool)

(assert (=> d!2187937 (= (matchZipper!2910 lt!2510393 (_2!37314 lt!2510380)) e!4219333)))

(declare-fun b!7019164 () Bool)

(assert (=> b!7019164 (= e!4219333 (nullableZipper!2511 lt!2510393))))

(declare-fun b!7019165 () Bool)

(assert (=> b!7019165 (= e!4219333 (matchZipper!2910 (derivationStepZipper!2850 lt!2510393 (head!14201 (_2!37314 lt!2510380))) (tail!13470 (_2!37314 lt!2510380))))))

(assert (= (and d!2187937 c!1304370) b!7019164))

(assert (= (and d!2187937 (not c!1304370)) b!7019165))

(declare-fun m!7720278 () Bool)

(assert (=> d!2187937 m!7720278))

(declare-fun m!7720280 () Bool)

(assert (=> b!7019164 m!7720280))

(declare-fun m!7720282 () Bool)

(assert (=> b!7019165 m!7720282))

(assert (=> b!7019165 m!7720282))

(declare-fun m!7720284 () Bool)

(assert (=> b!7019165 m!7720284))

(declare-fun m!7720286 () Bool)

(assert (=> b!7019165 m!7720286))

(assert (=> b!7019165 m!7720284))

(assert (=> b!7019165 m!7720286))

(declare-fun m!7720288 () Bool)

(assert (=> b!7019165 m!7720288))

(assert (=> b!7018854 d!2187937))

(declare-fun b!7019170 () Bool)

(declare-fun e!4219336 () Bool)

(declare-fun tp!1933632 () Bool)

(declare-fun tp!1933633 () Bool)

(assert (=> b!7019170 (= e!4219336 (and tp!1933632 tp!1933633))))

(assert (=> b!7018837 (= tp!1933613 e!4219336)))

(assert (= (and b!7018837 (is-Cons!67532 (exprs!6866 setElem!48609))) b!7019170))

(declare-fun condSetEmpty!48615 () Bool)

(assert (=> setNonEmpty!48609 (= condSetEmpty!48615 (= setRest!48609 (as set.empty (Set Context!12732))))))

(declare-fun setRes!48615 () Bool)

(assert (=> setNonEmpty!48609 (= tp!1933614 setRes!48615)))

(declare-fun setIsEmpty!48615 () Bool)

(assert (=> setIsEmpty!48615 setRes!48615))

(declare-fun setNonEmpty!48615 () Bool)

(declare-fun tp!1933639 () Bool)

(declare-fun e!4219339 () Bool)

(declare-fun setElem!48615 () Context!12732)

(assert (=> setNonEmpty!48615 (= setRes!48615 (and tp!1933639 (inv!86285 setElem!48615) e!4219339))))

(declare-fun setRest!48615 () (Set Context!12732))

(assert (=> setNonEmpty!48615 (= setRest!48609 (set.union (set.insert setElem!48615 (as set.empty (Set Context!12732))) setRest!48615))))

(declare-fun b!7019175 () Bool)

(declare-fun tp!1933638 () Bool)

(assert (=> b!7019175 (= e!4219339 tp!1933638)))

(assert (= (and setNonEmpty!48609 condSetEmpty!48615) setIsEmpty!48615))

(assert (= (and setNonEmpty!48609 (not condSetEmpty!48615)) setNonEmpty!48615))

(assert (= setNonEmpty!48615 b!7019175))

(declare-fun m!7720290 () Bool)

(assert (=> setNonEmpty!48615 m!7720290))

(declare-fun b!7019180 () Bool)

(declare-fun e!4219342 () Bool)

(declare-fun tp!1933642 () Bool)

(assert (=> b!7019180 (= e!4219342 (and tp_is_empty!43965 tp!1933642))))

(assert (=> b!7018849 (= tp!1933615 e!4219342)))

(assert (= (and b!7018849 (is-Cons!67531 (t!381410 s!7408))) b!7019180))

(declare-fun b!7019181 () Bool)

(declare-fun e!4219343 () Bool)

(declare-fun tp!1933643 () Bool)

(declare-fun tp!1933644 () Bool)

(assert (=> b!7019181 (= e!4219343 (and tp!1933643 tp!1933644))))

(assert (=> b!7018841 (= tp!1933612 e!4219343)))

(assert (= (and b!7018841 (is-Cons!67532 (exprs!6866 ct2!306))) b!7019181))

(declare-fun b_lambda!264927 () Bool)

(assert (= b_lambda!264925 (or b!7018850 b_lambda!264927)))

(declare-fun bs!1867257 () Bool)

(declare-fun d!2187939 () Bool)

(assert (= bs!1867257 (and d!2187939 b!7018850)))

(assert (=> bs!1867257 (= (dynLambda!27198 lambda!410719 lt!2510388) (derivationStepZipperUp!2020 lt!2510388 (h!73979 s!7408)))))

(assert (=> bs!1867257 m!7719654))

(assert (=> d!2187931 d!2187939))

(declare-fun b_lambda!264929 () Bool)

(assert (= b_lambda!264921 (or b!7018842 b_lambda!264929)))

(declare-fun bs!1867258 () Bool)

(declare-fun d!2187941 () Bool)

(assert (= bs!1867258 (and d!2187941 b!7018842)))

(assert (=> bs!1867258 (= (dynLambda!27201 lambda!410716 lt!2510561) (matchZipper!2910 (set.insert lt!2510561 (as set.empty (Set Context!12732))) s!7408))))

(declare-fun m!7720292 () Bool)

(assert (=> bs!1867258 m!7720292))

(assert (=> bs!1867258 m!7720292))

(declare-fun m!7720294 () Bool)

(assert (=> bs!1867258 m!7720294))

(assert (=> d!2187877 d!2187941))

(declare-fun b_lambda!264931 () Bool)

(assert (= b_lambda!264915 (or b!7018846 b_lambda!264931)))

(declare-fun bs!1867259 () Bool)

(declare-fun d!2187943 () Bool)

(assert (= bs!1867259 (and d!2187943 b!7018846)))

(declare-fun lt!2510596 () Unit!161422)

(assert (=> bs!1867259 (= lt!2510596 (lemmaConcatPreservesForall!706 (exprs!6866 lt!2510513) (exprs!6866 ct2!306) lambda!410718))))

(assert (=> bs!1867259 (= (dynLambda!27197 lambda!410717 lt!2510513) (Context!12733 (++!15405 (exprs!6866 lt!2510513) (exprs!6866 ct2!306))))))

(declare-fun m!7720296 () Bool)

(assert (=> bs!1867259 m!7720296))

(declare-fun m!7720298 () Bool)

(assert (=> bs!1867259 m!7720298))

(assert (=> d!2187803 d!2187943))

(declare-fun b_lambda!264933 () Bool)

(assert (= b_lambda!264919 (or b!7018850 b_lambda!264933)))

(declare-fun bs!1867260 () Bool)

(declare-fun d!2187945 () Bool)

(assert (= bs!1867260 (and d!2187945 b!7018850)))

(assert (=> bs!1867260 (= (dynLambda!27198 lambda!410719 lt!2510391) (derivationStepZipperUp!2020 lt!2510391 (h!73979 s!7408)))))

(assert (=> bs!1867260 m!7719732))

(assert (=> d!2187851 d!2187945))

(push 1)

(assert (not b!7019050))

(assert (not b!7019154))

(assert (not bs!1867260))

(assert (not b!7018984))

(assert (not b!7019025))

(assert (not d!2187887))

(assert (not b!7019081))

(assert (not b!7019121))

(assert (not bm!637550))

(assert (not bm!637556))

(assert (not b!7019094))

(assert (not b!7019070))

(assert (not d!2187875))

(assert (not b!7019039))

(assert (not d!2187923))

(assert (not d!2187895))

(assert (not d!2187921))

(assert (not b!7019029))

(assert (not b!7018989))

(assert (not d!2187873))

(assert (not b!7019146))

(assert (not d!2187865))

(assert (not b!7019112))

(assert (not d!2187893))

(assert (not d!2187935))

(assert (not b!7019028))

(assert (not d!2187911))

(assert (not b!7019129))

(assert (not b_lambda!264933))

(assert (not b!7019133))

(assert (not d!2187881))

(assert (not b!7019138))

(assert (not b!7019032))

(assert (not d!2187809))

(assert (not b!7019181))

(assert (not d!2187901))

(assert (not b!7019118))

(assert (not d!2187859))

(assert (not b!7019113))

(assert (not d!2187847))

(assert (not b!7019055))

(assert (not b!7019175))

(assert (not b!7019158))

(assert (not b!7019162))

(assert tp_is_empty!43965)

(assert (not b!7019027))

(assert (not d!2187937))

(assert (not d!2187827))

(assert (not b!7019072))

(assert (not b!7019117))

(assert (not d!2187811))

(assert (not d!2187877))

(assert (not d!2187799))

(assert (not b!7019122))

(assert (not d!2187837))

(assert (not d!2187913))

(assert (not bm!637554))

(assert (not b!7019031))

(assert (not bm!637568))

(assert (not b!7018933))

(assert (not d!2187863))

(assert (not d!2187883))

(assert (not b!7019038))

(assert (not d!2187927))

(assert (not b!7019119))

(assert (not bm!637564))

(assert (not d!2187905))

(assert (not d!2187813))

(assert (not d!2187821))

(assert (not b!7018990))

(assert (not bs!1867258))

(assert (not b!7019165))

(assert (not d!2187925))

(assert (not d!2187931))

(assert (not bm!637559))

(assert (not b!7019180))

(assert (not b!7019139))

(assert (not d!2187851))

(assert (not b!7019142))

(assert (not d!2187805))

(assert (not b!7019140))

(assert (not b!7019163))

(assert (not d!2187823))

(assert (not b_lambda!264929))

(assert (not bm!637553))

(assert (not b!7019170))

(assert (not b!7019080))

(assert (not d!2187853))

(assert (not b!7019143))

(assert (not b_lambda!264927))

(assert (not b!7019075))

(assert (not b!7019132))

(assert (not bs!1867257))

(assert (not bs!1867259))

(assert (not d!2187841))

(assert (not b_lambda!264931))

(assert (not b!7019136))

(assert (not b!7019054))

(assert (not b!7019164))

(assert (not d!2187903))

(assert (not b!7018934))

(assert (not b!7019155))

(assert (not d!2187801))

(assert (not d!2187803))

(assert (not d!2187845))

(assert (not d!2187933))

(assert (not d!2187857))

(assert (not b!7019115))

(assert (not b!7019074))

(assert (not bm!637560))

(assert (not d!2187909))

(assert (not d!2187869))

(assert (not b!7019160))

(assert (not setNonEmpty!48615))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

