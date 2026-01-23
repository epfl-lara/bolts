; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!676536 () Bool)

(assert start!676536)

(declare-fun b!7017961 () Bool)

(assert (=> b!7017961 true))

(declare-fun b!7017952 () Bool)

(assert (=> b!7017952 true))

(declare-fun b!7017954 () Bool)

(assert (=> b!7017954 true))

(declare-fun e!4218637 () Bool)

(declare-fun e!4218629 () Bool)

(assert (=> b!7017952 (= e!4218637 e!4218629)))

(declare-fun res!2864334 () Bool)

(assert (=> b!7017952 (=> res!2864334 e!4218629)))

(declare-datatypes ((C!34994 0))(
  ( (C!34995 (val!27199 Int)) )
))
(declare-datatypes ((Regex!17362 0))(
  ( (ElementMatch!17362 (c!1304039 C!34994)) (Concat!26207 (regOne!35236 Regex!17362) (regTwo!35236 Regex!17362)) (EmptyExpr!17362) (Star!17362 (reg!17691 Regex!17362)) (EmptyLang!17362) (Union!17362 (regOne!35237 Regex!17362) (regTwo!35237 Regex!17362)) )
))
(declare-datatypes ((List!67631 0))(
  ( (Nil!67507) (Cons!67507 (h!73955 Regex!17362) (t!381386 List!67631)) )
))
(declare-datatypes ((Context!12716 0))(
  ( (Context!12717 (exprs!6858 List!67631)) )
))
(declare-fun lt!2509466 () Context!12716)

(declare-fun lt!2509474 () Context!12716)

(declare-fun z1!570 () (Set Context!12716))

(declare-fun lt!2509467 () Context!12716)

(assert (=> b!7017952 (= res!2864334 (or (not (= lt!2509466 lt!2509467)) (not (set.member lt!2509474 z1!570))))))

(declare-fun ct2!306 () Context!12716)

(declare-fun ++!15388 (List!67631 List!67631) List!67631)

(assert (=> b!7017952 (= lt!2509466 (Context!12717 (++!15388 (exprs!6858 lt!2509474) (exprs!6858 ct2!306))))))

(declare-datatypes ((Unit!161406 0))(
  ( (Unit!161407) )
))
(declare-fun lt!2509492 () Unit!161406)

(declare-fun lambda!410426 () Int)

(declare-fun lemmaConcatPreservesForall!698 (List!67631 List!67631 Int) Unit!161406)

(assert (=> b!7017952 (= lt!2509492 (lemmaConcatPreservesForall!698 (exprs!6858 lt!2509474) (exprs!6858 ct2!306) lambda!410426))))

(declare-fun lambda!410425 () Int)

(declare-fun mapPost2!217 ((Set Context!12716) Int Context!12716) Context!12716)

(assert (=> b!7017952 (= lt!2509474 (mapPost2!217 z1!570 lambda!410425 lt!2509467))))

(declare-fun b!7017953 () Bool)

(declare-fun e!4218631 () Bool)

(declare-fun e!4218635 () Bool)

(assert (=> b!7017953 (= e!4218631 e!4218635)))

(declare-fun res!2864336 () Bool)

(assert (=> b!7017953 (=> res!2864336 e!4218635)))

(declare-fun lt!2509483 () (Set Context!12716))

(declare-datatypes ((List!67632 0))(
  ( (Nil!67508) (Cons!67508 (h!73956 C!34994) (t!381387 List!67632)) )
))
(declare-datatypes ((tuple2!68006 0))(
  ( (tuple2!68007 (_1!37306 List!67632) (_2!37306 List!67632)) )
))
(declare-fun lt!2509485 () tuple2!68006)

(declare-fun matchZipper!2902 ((Set Context!12716) List!67632) Bool)

(assert (=> b!7017953 (= res!2864336 (not (matchZipper!2902 lt!2509483 (_1!37306 lt!2509485))))))

(declare-datatypes ((Option!16835 0))(
  ( (None!16834) (Some!16834 (v!53112 tuple2!68006)) )
))
(declare-fun lt!2509465 () Option!16835)

(declare-fun get!23675 (Option!16835) tuple2!68006)

(assert (=> b!7017953 (= lt!2509485 (get!23675 lt!2509465))))

(declare-fun isDefined!13536 (Option!16835) Bool)

(assert (=> b!7017953 (isDefined!13536 lt!2509465)))

(declare-fun s!7408 () List!67632)

(declare-fun lt!2509476 () (Set Context!12716))

(declare-fun findConcatSeparationZippers!351 ((Set Context!12716) (Set Context!12716) List!67632 List!67632 List!67632) Option!16835)

(assert (=> b!7017953 (= lt!2509465 (findConcatSeparationZippers!351 lt!2509483 lt!2509476 Nil!67508 (t!381387 s!7408) (t!381387 s!7408)))))

(assert (=> b!7017953 (= lt!2509476 (set.insert ct2!306 (as set.empty (Set Context!12716))))))

(declare-fun lt!2509480 () Unit!161406)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!351 ((Set Context!12716) Context!12716 List!67632) Unit!161406)

(assert (=> b!7017953 (= lt!2509480 (lemmaConcatZipperMatchesStringThenFindConcatDefined!351 lt!2509483 ct2!306 (t!381387 s!7408)))))

(declare-fun lt!2509472 () (Set Context!12716))

(declare-fun appendTo!483 ((Set Context!12716) Context!12716) (Set Context!12716))

(assert (=> b!7017953 (= lt!2509472 (appendTo!483 lt!2509483 ct2!306))))

(declare-fun lt!2509470 () Context!12716)

(declare-fun derivationStepZipperDown!2080 (Regex!17362 Context!12716 C!34994) (Set Context!12716))

(assert (=> b!7017953 (= lt!2509483 (derivationStepZipperDown!2080 (h!73955 (exprs!6858 lt!2509474)) lt!2509470 (h!73956 s!7408)))))

(declare-fun lt!2509481 () List!67631)

(declare-fun lt!2509463 () Unit!161406)

(assert (=> b!7017953 (= lt!2509463 (lemmaConcatPreservesForall!698 lt!2509481 (exprs!6858 ct2!306) lambda!410426))))

(declare-fun lt!2509482 () Unit!161406)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!53 (Context!12716 Regex!17362 C!34994 Context!12716) Unit!161406)

(assert (=> b!7017953 (= lt!2509482 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!53 lt!2509470 (h!73955 (exprs!6858 lt!2509474)) (h!73956 s!7408) ct2!306))))

(declare-fun e!4218633 () Bool)

(declare-fun e!4218625 () Bool)

(assert (=> b!7017954 (= e!4218633 e!4218625)))

(declare-fun res!2864338 () Bool)

(assert (=> b!7017954 (=> res!2864338 e!4218625)))

(declare-fun lt!2509471 () (Set Context!12716))

(declare-fun lt!2509486 () (Set Context!12716))

(declare-fun derivationStepZipper!2842 ((Set Context!12716) C!34994) (Set Context!12716))

(assert (=> b!7017954 (= res!2864338 (not (= (derivationStepZipper!2842 lt!2509471 (h!73956 s!7408)) lt!2509486)))))

(declare-fun lambda!410427 () Int)

(declare-fun flatMap!2348 ((Set Context!12716) Int) (Set Context!12716))

(declare-fun derivationStepZipperUp!2012 (Context!12716 C!34994) (Set Context!12716))

(assert (=> b!7017954 (= (flatMap!2348 lt!2509471 lambda!410427) (derivationStepZipperUp!2012 lt!2509466 (h!73956 s!7408)))))

(declare-fun lt!2509489 () Unit!161406)

(declare-fun lemmaFlatMapOnSingletonSet!1863 ((Set Context!12716) Context!12716 Int) Unit!161406)

(assert (=> b!7017954 (= lt!2509489 (lemmaFlatMapOnSingletonSet!1863 lt!2509471 lt!2509466 lambda!410427))))

(assert (=> b!7017954 (= lt!2509486 (derivationStepZipperUp!2012 lt!2509466 (h!73956 s!7408)))))

(declare-fun lt!2509487 () Unit!161406)

(assert (=> b!7017954 (= lt!2509487 (lemmaConcatPreservesForall!698 (exprs!6858 lt!2509474) (exprs!6858 ct2!306) lambda!410426))))

(declare-fun b!7017955 () Bool)

(declare-fun res!2864337 () Bool)

(assert (=> b!7017955 (=> res!2864337 e!4218625)))

(assert (=> b!7017955 (= res!2864337 (not (is-Cons!67507 (exprs!6858 lt!2509474))))))

(declare-fun b!7017956 () Bool)

(declare-fun e!4218628 () Bool)

(declare-fun e!4218636 () Bool)

(assert (=> b!7017956 (= e!4218628 e!4218636)))

(declare-fun res!2864331 () Bool)

(assert (=> b!7017956 (=> res!2864331 e!4218636)))

(declare-fun lt!2509484 () (Set Context!12716))

(declare-fun lt!2509464 () List!67632)

(assert (=> b!7017956 (= res!2864331 (not (matchZipper!2902 lt!2509484 lt!2509464)))))

(assert (=> b!7017956 (= lt!2509464 (Cons!67508 (h!73956 s!7408) (_1!37306 lt!2509485)))))

(declare-fun b!7017957 () Bool)

(declare-fun e!4218632 () Bool)

(declare-fun tp_is_empty!43949 () Bool)

(declare-fun tp!1933485 () Bool)

(assert (=> b!7017957 (= e!4218632 (and tp_is_empty!43949 tp!1933485))))

(declare-fun b!7017958 () Bool)

(declare-fun res!2864342 () Bool)

(assert (=> b!7017958 (=> res!2864342 e!4218637)))

(declare-fun lt!2509468 () (Set Context!12716))

(assert (=> b!7017958 (= res!2864342 (not (set.member lt!2509467 lt!2509468)))))

(declare-fun b!7017959 () Bool)

(assert (=> b!7017959 (= e!4218635 e!4218628)))

(declare-fun res!2864341 () Bool)

(assert (=> b!7017959 (=> res!2864341 e!4218628)))

(declare-fun lt!2509475 () (Set Context!12716))

(declare-fun lt!2509490 () (Set Context!12716))

(assert (=> b!7017959 (= res!2864341 (or (not (= lt!2509475 lt!2509490)) (not (= lt!2509475 lt!2509483))))))

(assert (=> b!7017959 (= (flatMap!2348 lt!2509484 lambda!410427) (derivationStepZipperUp!2012 lt!2509474 (h!73956 s!7408)))))

(declare-fun lt!2509491 () Unit!161406)

(assert (=> b!7017959 (= lt!2509491 (lemmaFlatMapOnSingletonSet!1863 lt!2509484 lt!2509474 lambda!410427))))

(assert (=> b!7017959 (= lt!2509490 (derivationStepZipperUp!2012 lt!2509474 (h!73956 s!7408)))))

(assert (=> b!7017959 (= lt!2509475 (derivationStepZipper!2842 lt!2509484 (h!73956 s!7408)))))

(assert (=> b!7017959 (= lt!2509484 (set.insert lt!2509474 (as set.empty (Set Context!12716))))))

(declare-fun e!4218627 () Bool)

(declare-fun setNonEmpty!48579 () Bool)

(declare-fun tp!1933484 () Bool)

(declare-fun setElem!48579 () Context!12716)

(declare-fun setRes!48579 () Bool)

(declare-fun inv!86265 (Context!12716) Bool)

(assert (=> setNonEmpty!48579 (= setRes!48579 (and tp!1933484 (inv!86265 setElem!48579) e!4218627))))

(declare-fun setRest!48579 () (Set Context!12716))

(assert (=> setNonEmpty!48579 (= z1!570 (set.union (set.insert setElem!48579 (as set.empty (Set Context!12716))) setRest!48579))))

(declare-fun b!7017960 () Bool)

(declare-fun res!2864328 () Bool)

(declare-fun e!4218630 () Bool)

(assert (=> b!7017960 (=> (not res!2864328) (not e!4218630))))

(assert (=> b!7017960 (= res!2864328 (is-Cons!67508 s!7408))))

(assert (=> b!7017961 (= e!4218630 (not e!4218637))))

(declare-fun res!2864343 () Bool)

(assert (=> b!7017961 (=> res!2864343 e!4218637)))

(declare-fun lt!2509488 () (Set Context!12716))

(assert (=> b!7017961 (= res!2864343 (not (matchZipper!2902 lt!2509488 s!7408)))))

(assert (=> b!7017961 (= lt!2509488 (set.insert lt!2509467 (as set.empty (Set Context!12716))))))

(declare-fun lambda!410424 () Int)

(declare-fun getWitness!1324 ((Set Context!12716) Int) Context!12716)

(assert (=> b!7017961 (= lt!2509467 (getWitness!1324 lt!2509468 lambda!410424))))

(declare-datatypes ((List!67633 0))(
  ( (Nil!67509) (Cons!67509 (h!73957 Context!12716) (t!381388 List!67633)) )
))
(declare-fun lt!2509477 () List!67633)

(declare-fun exists!3231 (List!67633 Int) Bool)

(assert (=> b!7017961 (exists!3231 lt!2509477 lambda!410424)))

(declare-fun lt!2509478 () Unit!161406)

(declare-fun lemmaZipperMatchesExistsMatchingContext!331 (List!67633 List!67632) Unit!161406)

(assert (=> b!7017961 (= lt!2509478 (lemmaZipperMatchesExistsMatchingContext!331 lt!2509477 s!7408))))

(declare-fun toList!10722 ((Set Context!12716)) List!67633)

(assert (=> b!7017961 (= lt!2509477 (toList!10722 lt!2509468))))

(declare-fun res!2864339 () Bool)

(assert (=> start!676536 (=> (not res!2864339) (not e!4218630))))

(assert (=> start!676536 (= res!2864339 (matchZipper!2902 lt!2509468 s!7408))))

(assert (=> start!676536 (= lt!2509468 (appendTo!483 z1!570 ct2!306))))

(assert (=> start!676536 e!4218630))

(declare-fun condSetEmpty!48579 () Bool)

(assert (=> start!676536 (= condSetEmpty!48579 (= z1!570 (as set.empty (Set Context!12716))))))

(assert (=> start!676536 setRes!48579))

(declare-fun e!4218626 () Bool)

(assert (=> start!676536 (and (inv!86265 ct2!306) e!4218626)))

(assert (=> start!676536 e!4218632))

(declare-fun b!7017962 () Bool)

(declare-fun e!4218634 () Bool)

(assert (=> b!7017962 (= e!4218625 e!4218634)))

(declare-fun res!2864340 () Bool)

(assert (=> b!7017962 (=> res!2864340 e!4218634)))

(declare-fun nullable!7122 (Regex!17362) Bool)

(assert (=> b!7017962 (= res!2864340 (nullable!7122 (h!73955 (exprs!6858 lt!2509474))))))

(assert (=> b!7017962 (= lt!2509470 (Context!12717 lt!2509481))))

(declare-fun tail!13458 (List!67631) List!67631)

(assert (=> b!7017962 (= lt!2509481 (tail!13458 (exprs!6858 lt!2509474)))))

(declare-fun b!7017963 () Bool)

(declare-fun tp!1933482 () Bool)

(assert (=> b!7017963 (= e!4218627 tp!1933482)))

(declare-fun b!7017964 () Bool)

(assert (=> b!7017964 (= e!4218629 e!4218633)))

(declare-fun res!2864333 () Bool)

(assert (=> b!7017964 (=> res!2864333 e!4218633)))

(assert (=> b!7017964 (= res!2864333 (not (= lt!2509471 lt!2509488)))))

(assert (=> b!7017964 (= lt!2509471 (set.insert lt!2509466 (as set.empty (Set Context!12716))))))

(declare-fun lt!2509479 () Unit!161406)

(assert (=> b!7017964 (= lt!2509479 (lemmaConcatPreservesForall!698 (exprs!6858 lt!2509474) (exprs!6858 ct2!306) lambda!410426))))

(declare-fun b!7017965 () Bool)

(declare-fun ++!15389 (List!67632 List!67632) List!67632)

(assert (=> b!7017965 (= e!4218636 (= (++!15389 Nil!67508 s!7408) s!7408))))

(assert (=> b!7017965 (isDefined!13536 (findConcatSeparationZippers!351 lt!2509484 lt!2509476 Nil!67508 s!7408 s!7408))))

(declare-fun lt!2509469 () Unit!161406)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!23 ((Set Context!12716) (Set Context!12716) List!67632 List!67632 List!67632 List!67632 List!67632) Unit!161406)

(assert (=> b!7017965 (= lt!2509469 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!23 lt!2509484 lt!2509476 lt!2509464 (_2!37306 lt!2509485) s!7408 Nil!67508 s!7408))))

(declare-fun setIsEmpty!48579 () Bool)

(assert (=> setIsEmpty!48579 setRes!48579))

(declare-fun b!7017966 () Bool)

(declare-fun res!2864330 () Bool)

(assert (=> b!7017966 (=> res!2864330 e!4218635)))

(assert (=> b!7017966 (= res!2864330 (not (= (++!15389 (_1!37306 lt!2509485) (_2!37306 lt!2509485)) (t!381387 s!7408))))))

(declare-fun b!7017967 () Bool)

(declare-fun res!2864329 () Bool)

(assert (=> b!7017967 (=> res!2864329 e!4218625)))

(declare-fun isEmpty!39427 (List!67631) Bool)

(assert (=> b!7017967 (= res!2864329 (isEmpty!39427 (exprs!6858 lt!2509474)))))

(declare-fun b!7017968 () Bool)

(assert (=> b!7017968 (= e!4218634 e!4218631)))

(declare-fun res!2864335 () Bool)

(assert (=> b!7017968 (=> res!2864335 e!4218631)))

(assert (=> b!7017968 (= res!2864335 (not (matchZipper!2902 lt!2509472 (t!381387 s!7408))))))

(assert (=> b!7017968 (= lt!2509472 (derivationStepZipperDown!2080 (h!73955 (exprs!6858 lt!2509474)) (Context!12717 (++!15388 lt!2509481 (exprs!6858 ct2!306))) (h!73956 s!7408)))))

(declare-fun lt!2509473 () Unit!161406)

(assert (=> b!7017968 (= lt!2509473 (lemmaConcatPreservesForall!698 lt!2509481 (exprs!6858 ct2!306) lambda!410426))))

(declare-fun b!7017969 () Bool)

(declare-fun tp!1933483 () Bool)

(assert (=> b!7017969 (= e!4218626 tp!1933483)))

(declare-fun b!7017970 () Bool)

(declare-fun res!2864332 () Bool)

(assert (=> b!7017970 (=> res!2864332 e!4218635)))

(assert (=> b!7017970 (= res!2864332 (not (matchZipper!2902 lt!2509476 (_2!37306 lt!2509485))))))

(assert (= (and start!676536 res!2864339) b!7017960))

(assert (= (and b!7017960 res!2864328) b!7017961))

(assert (= (and b!7017961 (not res!2864343)) b!7017958))

(assert (= (and b!7017958 (not res!2864342)) b!7017952))

(assert (= (and b!7017952 (not res!2864334)) b!7017964))

(assert (= (and b!7017964 (not res!2864333)) b!7017954))

(assert (= (and b!7017954 (not res!2864338)) b!7017955))

(assert (= (and b!7017955 (not res!2864337)) b!7017967))

(assert (= (and b!7017967 (not res!2864329)) b!7017962))

(assert (= (and b!7017962 (not res!2864340)) b!7017968))

(assert (= (and b!7017968 (not res!2864335)) b!7017953))

(assert (= (and b!7017953 (not res!2864336)) b!7017970))

(assert (= (and b!7017970 (not res!2864332)) b!7017966))

(assert (= (and b!7017966 (not res!2864330)) b!7017959))

(assert (= (and b!7017959 (not res!2864341)) b!7017956))

(assert (= (and b!7017956 (not res!2864331)) b!7017965))

(assert (= (and start!676536 condSetEmpty!48579) setIsEmpty!48579))

(assert (= (and start!676536 (not condSetEmpty!48579)) setNonEmpty!48579))

(assert (= setNonEmpty!48579 b!7017963))

(assert (= start!676536 b!7017969))

(assert (= (and start!676536 (is-Cons!67508 s!7408)) b!7017957))

(declare-fun m!7718192 () Bool)

(assert (=> b!7017967 m!7718192))

(declare-fun m!7718194 () Bool)

(assert (=> start!676536 m!7718194))

(declare-fun m!7718196 () Bool)

(assert (=> start!676536 m!7718196))

(declare-fun m!7718198 () Bool)

(assert (=> start!676536 m!7718198))

(declare-fun m!7718200 () Bool)

(assert (=> b!7017962 m!7718200))

(declare-fun m!7718202 () Bool)

(assert (=> b!7017962 m!7718202))

(declare-fun m!7718204 () Bool)

(assert (=> b!7017966 m!7718204))

(declare-fun m!7718206 () Bool)

(assert (=> b!7017956 m!7718206))

(declare-fun m!7718208 () Bool)

(assert (=> b!7017953 m!7718208))

(declare-fun m!7718210 () Bool)

(assert (=> b!7017953 m!7718210))

(declare-fun m!7718212 () Bool)

(assert (=> b!7017953 m!7718212))

(declare-fun m!7718214 () Bool)

(assert (=> b!7017953 m!7718214))

(declare-fun m!7718216 () Bool)

(assert (=> b!7017953 m!7718216))

(declare-fun m!7718218 () Bool)

(assert (=> b!7017953 m!7718218))

(declare-fun m!7718220 () Bool)

(assert (=> b!7017953 m!7718220))

(declare-fun m!7718222 () Bool)

(assert (=> b!7017953 m!7718222))

(declare-fun m!7718224 () Bool)

(assert (=> b!7017953 m!7718224))

(declare-fun m!7718226 () Bool)

(assert (=> b!7017953 m!7718226))

(declare-fun m!7718228 () Bool)

(assert (=> b!7017961 m!7718228))

(declare-fun m!7718230 () Bool)

(assert (=> b!7017961 m!7718230))

(declare-fun m!7718232 () Bool)

(assert (=> b!7017961 m!7718232))

(declare-fun m!7718234 () Bool)

(assert (=> b!7017961 m!7718234))

(declare-fun m!7718236 () Bool)

(assert (=> b!7017961 m!7718236))

(declare-fun m!7718238 () Bool)

(assert (=> b!7017961 m!7718238))

(declare-fun m!7718240 () Bool)

(assert (=> b!7017968 m!7718240))

(declare-fun m!7718242 () Bool)

(assert (=> b!7017968 m!7718242))

(declare-fun m!7718244 () Bool)

(assert (=> b!7017968 m!7718244))

(assert (=> b!7017968 m!7718226))

(declare-fun m!7718246 () Bool)

(assert (=> b!7017952 m!7718246))

(declare-fun m!7718248 () Bool)

(assert (=> b!7017952 m!7718248))

(declare-fun m!7718250 () Bool)

(assert (=> b!7017952 m!7718250))

(declare-fun m!7718252 () Bool)

(assert (=> b!7017952 m!7718252))

(declare-fun m!7718254 () Bool)

(assert (=> b!7017965 m!7718254))

(declare-fun m!7718256 () Bool)

(assert (=> b!7017965 m!7718256))

(assert (=> b!7017965 m!7718256))

(declare-fun m!7718258 () Bool)

(assert (=> b!7017965 m!7718258))

(declare-fun m!7718260 () Bool)

(assert (=> b!7017965 m!7718260))

(declare-fun m!7718262 () Bool)

(assert (=> setNonEmpty!48579 m!7718262))

(declare-fun m!7718264 () Bool)

(assert (=> b!7017964 m!7718264))

(assert (=> b!7017964 m!7718250))

(declare-fun m!7718266 () Bool)

(assert (=> b!7017970 m!7718266))

(declare-fun m!7718268 () Bool)

(assert (=> b!7017958 m!7718268))

(declare-fun m!7718270 () Bool)

(assert (=> b!7017959 m!7718270))

(declare-fun m!7718272 () Bool)

(assert (=> b!7017959 m!7718272))

(declare-fun m!7718274 () Bool)

(assert (=> b!7017959 m!7718274))

(declare-fun m!7718276 () Bool)

(assert (=> b!7017959 m!7718276))

(declare-fun m!7718278 () Bool)

(assert (=> b!7017959 m!7718278))

(assert (=> b!7017954 m!7718250))

(declare-fun m!7718280 () Bool)

(assert (=> b!7017954 m!7718280))

(declare-fun m!7718282 () Bool)

(assert (=> b!7017954 m!7718282))

(declare-fun m!7718284 () Bool)

(assert (=> b!7017954 m!7718284))

(declare-fun m!7718286 () Bool)

(assert (=> b!7017954 m!7718286))

(push 1)

(assert (not b!7017965))

(assert (not b!7017954))

(assert (not b!7017952))

(assert (not b!7017968))

(assert (not b!7017953))

(assert (not b!7017956))

(assert (not b!7017957))

(assert (not b!7017962))

(assert tp_is_empty!43949)

(assert (not b!7017963))

(assert (not setNonEmpty!48579))

(assert (not b!7017970))

(assert (not b!7017959))

(assert (not b!7017967))

(assert (not b!7017961))

(assert (not b!7017969))

(assert (not b!7017964))

(assert (not start!676536))

(assert (not b!7017966))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1867107 () Bool)

(declare-fun d!2187611 () Bool)

(assert (= bs!1867107 (and d!2187611 b!7017952)))

(declare-fun lambda!410456 () Int)

(assert (=> bs!1867107 (= lambda!410456 lambda!410426)))

(declare-fun forall!16277 (List!67631 Int) Bool)

(assert (=> d!2187611 (= (inv!86265 setElem!48579) (forall!16277 (exprs!6858 setElem!48579) lambda!410456))))

(declare-fun bs!1867108 () Bool)

(assert (= bs!1867108 d!2187611))

(declare-fun m!7718384 () Bool)

(assert (=> bs!1867108 m!7718384))

(assert (=> setNonEmpty!48579 d!2187611))

(declare-fun d!2187613 () Bool)

(declare-fun c!1304053 () Bool)

(declare-fun isEmpty!39429 (List!67632) Bool)

(assert (=> d!2187613 (= c!1304053 (isEmpty!39429 (t!381387 s!7408)))))

(declare-fun e!4218679 () Bool)

(assert (=> d!2187613 (= (matchZipper!2902 lt!2509472 (t!381387 s!7408)) e!4218679)))

(declare-fun b!7018044 () Bool)

(declare-fun nullableZipper!2509 ((Set Context!12716)) Bool)

(assert (=> b!7018044 (= e!4218679 (nullableZipper!2509 lt!2509472))))

(declare-fun b!7018045 () Bool)

(declare-fun head!14199 (List!67632) C!34994)

(declare-fun tail!13460 (List!67632) List!67632)

(assert (=> b!7018045 (= e!4218679 (matchZipper!2902 (derivationStepZipper!2842 lt!2509472 (head!14199 (t!381387 s!7408))) (tail!13460 (t!381387 s!7408))))))

(assert (= (and d!2187613 c!1304053) b!7018044))

(assert (= (and d!2187613 (not c!1304053)) b!7018045))

(declare-fun m!7718386 () Bool)

(assert (=> d!2187613 m!7718386))

(declare-fun m!7718388 () Bool)

(assert (=> b!7018044 m!7718388))

(declare-fun m!7718390 () Bool)

(assert (=> b!7018045 m!7718390))

(assert (=> b!7018045 m!7718390))

(declare-fun m!7718392 () Bool)

(assert (=> b!7018045 m!7718392))

(declare-fun m!7718394 () Bool)

(assert (=> b!7018045 m!7718394))

(assert (=> b!7018045 m!7718392))

(assert (=> b!7018045 m!7718394))

(declare-fun m!7718396 () Bool)

(assert (=> b!7018045 m!7718396))

(assert (=> b!7017968 d!2187613))

(declare-fun b!7018068 () Bool)

(declare-fun e!4218697 () Bool)

(assert (=> b!7018068 (= e!4218697 (nullable!7122 (regOne!35236 (h!73955 (exprs!6858 lt!2509474)))))))

(declare-fun bm!637494 () Bool)

(declare-fun call!637502 () (Set Context!12716))

(declare-fun call!637503 () (Set Context!12716))

(assert (=> bm!637494 (= call!637502 call!637503)))

(declare-fun b!7018069 () Bool)

(declare-fun e!4218694 () (Set Context!12716))

(declare-fun call!637504 () (Set Context!12716))

(assert (=> b!7018069 (= e!4218694 (set.union call!637504 call!637503))))

(declare-fun b!7018070 () Bool)

(declare-fun c!1304064 () Bool)

(assert (=> b!7018070 (= c!1304064 e!4218697)))

(declare-fun res!2864395 () Bool)

(assert (=> b!7018070 (=> (not res!2864395) (not e!4218697))))

(assert (=> b!7018070 (= res!2864395 (is-Concat!26207 (h!73955 (exprs!6858 lt!2509474))))))

(declare-fun e!4218695 () (Set Context!12716))

(assert (=> b!7018070 (= e!4218694 e!4218695)))

(declare-fun b!7018071 () Bool)

(declare-fun e!4218692 () (Set Context!12716))

(assert (=> b!7018071 (= e!4218695 e!4218692)))

(declare-fun c!1304068 () Bool)

(assert (=> b!7018071 (= c!1304068 (is-Concat!26207 (h!73955 (exprs!6858 lt!2509474))))))

(declare-fun bm!637495 () Bool)

(declare-fun call!637499 () List!67631)

(declare-fun c!1304067 () Bool)

(assert (=> bm!637495 (= call!637504 (derivationStepZipperDown!2080 (ite c!1304067 (regOne!35237 (h!73955 (exprs!6858 lt!2509474))) (regOne!35236 (h!73955 (exprs!6858 lt!2509474)))) (ite c!1304067 (Context!12717 (++!15388 lt!2509481 (exprs!6858 ct2!306))) (Context!12717 call!637499)) (h!73956 s!7408)))))

(declare-fun b!7018072 () Bool)

(declare-fun call!637500 () (Set Context!12716))

(assert (=> b!7018072 (= e!4218692 call!637500)))

(declare-fun b!7018073 () Bool)

(declare-fun e!4218693 () (Set Context!12716))

(assert (=> b!7018073 (= e!4218693 call!637500)))

(declare-fun d!2187615 () Bool)

(declare-fun c!1304066 () Bool)

(assert (=> d!2187615 (= c!1304066 (and (is-ElementMatch!17362 (h!73955 (exprs!6858 lt!2509474))) (= (c!1304039 (h!73955 (exprs!6858 lt!2509474))) (h!73956 s!7408))))))

(declare-fun e!4218696 () (Set Context!12716))

(assert (=> d!2187615 (= (derivationStepZipperDown!2080 (h!73955 (exprs!6858 lt!2509474)) (Context!12717 (++!15388 lt!2509481 (exprs!6858 ct2!306))) (h!73956 s!7408)) e!4218696)))

(declare-fun bm!637496 () Bool)

(declare-fun $colon$colon!2549 (List!67631 Regex!17362) List!67631)

(assert (=> bm!637496 (= call!637499 ($colon$colon!2549 (exprs!6858 (Context!12717 (++!15388 lt!2509481 (exprs!6858 ct2!306)))) (ite (or c!1304064 c!1304068) (regTwo!35236 (h!73955 (exprs!6858 lt!2509474))) (h!73955 (exprs!6858 lt!2509474)))))))

(declare-fun b!7018074 () Bool)

(assert (=> b!7018074 (= e!4218696 e!4218694)))

(assert (=> b!7018074 (= c!1304067 (is-Union!17362 (h!73955 (exprs!6858 lt!2509474))))))

(declare-fun b!7018075 () Bool)

(assert (=> b!7018075 (= e!4218695 (set.union call!637504 call!637502))))

(declare-fun b!7018076 () Bool)

(assert (=> b!7018076 (= e!4218696 (set.insert (Context!12717 (++!15388 lt!2509481 (exprs!6858 ct2!306))) (as set.empty (Set Context!12716))))))

(declare-fun bm!637497 () Bool)

(assert (=> bm!637497 (= call!637500 call!637502)))

(declare-fun bm!637498 () Bool)

(declare-fun call!637501 () List!67631)

(assert (=> bm!637498 (= call!637501 call!637499)))

(declare-fun b!7018077 () Bool)

(declare-fun c!1304065 () Bool)

(assert (=> b!7018077 (= c!1304065 (is-Star!17362 (h!73955 (exprs!6858 lt!2509474))))))

(assert (=> b!7018077 (= e!4218692 e!4218693)))

(declare-fun b!7018078 () Bool)

(assert (=> b!7018078 (= e!4218693 (as set.empty (Set Context!12716)))))

(declare-fun bm!637499 () Bool)

(assert (=> bm!637499 (= call!637503 (derivationStepZipperDown!2080 (ite c!1304067 (regTwo!35237 (h!73955 (exprs!6858 lt!2509474))) (ite c!1304064 (regTwo!35236 (h!73955 (exprs!6858 lt!2509474))) (ite c!1304068 (regOne!35236 (h!73955 (exprs!6858 lt!2509474))) (reg!17691 (h!73955 (exprs!6858 lt!2509474)))))) (ite (or c!1304067 c!1304064) (Context!12717 (++!15388 lt!2509481 (exprs!6858 ct2!306))) (Context!12717 call!637501)) (h!73956 s!7408)))))

(assert (= (and d!2187615 c!1304066) b!7018076))

(assert (= (and d!2187615 (not c!1304066)) b!7018074))

(assert (= (and b!7018074 c!1304067) b!7018069))

(assert (= (and b!7018074 (not c!1304067)) b!7018070))

(assert (= (and b!7018070 res!2864395) b!7018068))

(assert (= (and b!7018070 c!1304064) b!7018075))

(assert (= (and b!7018070 (not c!1304064)) b!7018071))

(assert (= (and b!7018071 c!1304068) b!7018072))

(assert (= (and b!7018071 (not c!1304068)) b!7018077))

(assert (= (and b!7018077 c!1304065) b!7018073))

(assert (= (and b!7018077 (not c!1304065)) b!7018078))

(assert (= (or b!7018072 b!7018073) bm!637498))

(assert (= (or b!7018072 b!7018073) bm!637497))

(assert (= (or b!7018075 bm!637497) bm!637494))

(assert (= (or b!7018075 bm!637498) bm!637496))

(assert (= (or b!7018069 b!7018075) bm!637495))

(assert (= (or b!7018069 bm!637494) bm!637499))

(declare-fun m!7718398 () Bool)

(assert (=> bm!637499 m!7718398))

(declare-fun m!7718400 () Bool)

(assert (=> bm!637495 m!7718400))

(declare-fun m!7718402 () Bool)

(assert (=> b!7018076 m!7718402))

(declare-fun m!7718404 () Bool)

(assert (=> bm!637496 m!7718404))

(declare-fun m!7718406 () Bool)

(assert (=> b!7018068 m!7718406))

(assert (=> b!7017968 d!2187615))

(declare-fun b!7018088 () Bool)

(declare-fun e!4218702 () List!67631)

(assert (=> b!7018088 (= e!4218702 (Cons!67507 (h!73955 lt!2509481) (++!15388 (t!381386 lt!2509481) (exprs!6858 ct2!306))))))

(declare-fun d!2187617 () Bool)

(declare-fun e!4218703 () Bool)

(assert (=> d!2187617 e!4218703))

(declare-fun res!2864400 () Bool)

(assert (=> d!2187617 (=> (not res!2864400) (not e!4218703))))

(declare-fun lt!2509587 () List!67631)

(declare-fun content!13429 (List!67631) (Set Regex!17362))

(assert (=> d!2187617 (= res!2864400 (= (content!13429 lt!2509587) (set.union (content!13429 lt!2509481) (content!13429 (exprs!6858 ct2!306)))))))

(assert (=> d!2187617 (= lt!2509587 e!4218702)))

(declare-fun c!1304071 () Bool)

(assert (=> d!2187617 (= c!1304071 (is-Nil!67507 lt!2509481))))

(assert (=> d!2187617 (= (++!15388 lt!2509481 (exprs!6858 ct2!306)) lt!2509587)))

(declare-fun b!7018089 () Bool)

(declare-fun res!2864401 () Bool)

(assert (=> b!7018089 (=> (not res!2864401) (not e!4218703))))

(declare-fun size!41006 (List!67631) Int)

(assert (=> b!7018089 (= res!2864401 (= (size!41006 lt!2509587) (+ (size!41006 lt!2509481) (size!41006 (exprs!6858 ct2!306)))))))

(declare-fun b!7018090 () Bool)

(assert (=> b!7018090 (= e!4218703 (or (not (= (exprs!6858 ct2!306) Nil!67507)) (= lt!2509587 lt!2509481)))))

(declare-fun b!7018087 () Bool)

(assert (=> b!7018087 (= e!4218702 (exprs!6858 ct2!306))))

(assert (= (and d!2187617 c!1304071) b!7018087))

(assert (= (and d!2187617 (not c!1304071)) b!7018088))

(assert (= (and d!2187617 res!2864400) b!7018089))

(assert (= (and b!7018089 res!2864401) b!7018090))

(declare-fun m!7718408 () Bool)

(assert (=> b!7018088 m!7718408))

(declare-fun m!7718410 () Bool)

(assert (=> d!2187617 m!7718410))

(declare-fun m!7718412 () Bool)

(assert (=> d!2187617 m!7718412))

(declare-fun m!7718414 () Bool)

(assert (=> d!2187617 m!7718414))

(declare-fun m!7718416 () Bool)

(assert (=> b!7018089 m!7718416))

(declare-fun m!7718418 () Bool)

(assert (=> b!7018089 m!7718418))

(declare-fun m!7718420 () Bool)

(assert (=> b!7018089 m!7718420))

(assert (=> b!7017968 d!2187617))

(declare-fun d!2187619 () Bool)

(assert (=> d!2187619 (forall!16277 (++!15388 lt!2509481 (exprs!6858 ct2!306)) lambda!410426)))

(declare-fun lt!2509590 () Unit!161406)

(declare-fun choose!52871 (List!67631 List!67631 Int) Unit!161406)

(assert (=> d!2187619 (= lt!2509590 (choose!52871 lt!2509481 (exprs!6858 ct2!306) lambda!410426))))

(assert (=> d!2187619 (forall!16277 lt!2509481 lambda!410426)))

(assert (=> d!2187619 (= (lemmaConcatPreservesForall!698 lt!2509481 (exprs!6858 ct2!306) lambda!410426) lt!2509590)))

(declare-fun bs!1867109 () Bool)

(assert (= bs!1867109 d!2187619))

(assert (=> bs!1867109 m!7718242))

(assert (=> bs!1867109 m!7718242))

(declare-fun m!7718422 () Bool)

(assert (=> bs!1867109 m!7718422))

(declare-fun m!7718424 () Bool)

(assert (=> bs!1867109 m!7718424))

(declare-fun m!7718426 () Bool)

(assert (=> bs!1867109 m!7718426))

(assert (=> b!7017968 d!2187619))

(declare-fun d!2187621 () Bool)

(declare-fun choose!52872 ((Set Context!12716) Int) (Set Context!12716))

(assert (=> d!2187621 (= (flatMap!2348 lt!2509484 lambda!410427) (choose!52872 lt!2509484 lambda!410427))))

(declare-fun bs!1867110 () Bool)

(assert (= bs!1867110 d!2187621))

(declare-fun m!7718428 () Bool)

(assert (=> bs!1867110 m!7718428))

(assert (=> b!7017959 d!2187621))

(declare-fun d!2187623 () Bool)

(declare-fun c!1304076 () Bool)

(declare-fun e!4218710 () Bool)

(assert (=> d!2187623 (= c!1304076 e!4218710)))

(declare-fun res!2864405 () Bool)

(assert (=> d!2187623 (=> (not res!2864405) (not e!4218710))))

(assert (=> d!2187623 (= res!2864405 (is-Cons!67507 (exprs!6858 lt!2509474)))))

(declare-fun e!4218711 () (Set Context!12716))

(assert (=> d!2187623 (= (derivationStepZipperUp!2012 lt!2509474 (h!73956 s!7408)) e!4218711)))

(declare-fun b!7018101 () Bool)

(declare-fun e!4218712 () (Set Context!12716))

(assert (=> b!7018101 (= e!4218712 (as set.empty (Set Context!12716)))))

(declare-fun b!7018102 () Bool)

(declare-fun call!637507 () (Set Context!12716))

(assert (=> b!7018102 (= e!4218712 call!637507)))

(declare-fun b!7018103 () Bool)

(assert (=> b!7018103 (= e!4218710 (nullable!7122 (h!73955 (exprs!6858 lt!2509474))))))

(declare-fun b!7018104 () Bool)

(assert (=> b!7018104 (= e!4218711 (set.union call!637507 (derivationStepZipperUp!2012 (Context!12717 (t!381386 (exprs!6858 lt!2509474))) (h!73956 s!7408))))))

(declare-fun bm!637502 () Bool)

(assert (=> bm!637502 (= call!637507 (derivationStepZipperDown!2080 (h!73955 (exprs!6858 lt!2509474)) (Context!12717 (t!381386 (exprs!6858 lt!2509474))) (h!73956 s!7408)))))

(declare-fun b!7018105 () Bool)

(assert (=> b!7018105 (= e!4218711 e!4218712)))

(declare-fun c!1304077 () Bool)

(assert (=> b!7018105 (= c!1304077 (is-Cons!67507 (exprs!6858 lt!2509474)))))

(assert (= (and d!2187623 res!2864405) b!7018103))

(assert (= (and d!2187623 c!1304076) b!7018104))

(assert (= (and d!2187623 (not c!1304076)) b!7018105))

(assert (= (and b!7018105 c!1304077) b!7018102))

(assert (= (and b!7018105 (not c!1304077)) b!7018101))

(assert (= (or b!7018104 b!7018102) bm!637502))

(assert (=> b!7018103 m!7718200))

(declare-fun m!7718430 () Bool)

(assert (=> b!7018104 m!7718430))

(declare-fun m!7718432 () Bool)

(assert (=> bm!637502 m!7718432))

(assert (=> b!7017959 d!2187623))

(declare-fun d!2187625 () Bool)

(declare-fun dynLambda!27189 (Int Context!12716) (Set Context!12716))

(assert (=> d!2187625 (= (flatMap!2348 lt!2509484 lambda!410427) (dynLambda!27189 lambda!410427 lt!2509474))))

(declare-fun lt!2509593 () Unit!161406)

(declare-fun choose!52873 ((Set Context!12716) Context!12716 Int) Unit!161406)

(assert (=> d!2187625 (= lt!2509593 (choose!52873 lt!2509484 lt!2509474 lambda!410427))))

(assert (=> d!2187625 (= lt!2509484 (set.insert lt!2509474 (as set.empty (Set Context!12716))))))

(assert (=> d!2187625 (= (lemmaFlatMapOnSingletonSet!1863 lt!2509484 lt!2509474 lambda!410427) lt!2509593)))

(declare-fun b_lambda!264883 () Bool)

(assert (=> (not b_lambda!264883) (not d!2187625)))

(declare-fun bs!1867111 () Bool)

(assert (= bs!1867111 d!2187625))

(assert (=> bs!1867111 m!7718272))

(declare-fun m!7718434 () Bool)

(assert (=> bs!1867111 m!7718434))

(declare-fun m!7718436 () Bool)

(assert (=> bs!1867111 m!7718436))

(assert (=> bs!1867111 m!7718274))

(assert (=> b!7017959 d!2187625))

(declare-fun bs!1867112 () Bool)

(declare-fun d!2187627 () Bool)

(assert (= bs!1867112 (and d!2187627 b!7017954)))

(declare-fun lambda!410459 () Int)

(assert (=> bs!1867112 (= lambda!410459 lambda!410427)))

(assert (=> d!2187627 true))

(assert (=> d!2187627 (= (derivationStepZipper!2842 lt!2509484 (h!73956 s!7408)) (flatMap!2348 lt!2509484 lambda!410459))))

(declare-fun bs!1867113 () Bool)

(assert (= bs!1867113 d!2187627))

(declare-fun m!7718438 () Bool)

(assert (=> bs!1867113 m!7718438))

(assert (=> b!7017959 d!2187627))

(declare-fun d!2187629 () Bool)

(assert (=> d!2187629 (= (isEmpty!39427 (exprs!6858 lt!2509474)) (is-Nil!67507 (exprs!6858 lt!2509474)))))

(assert (=> b!7017967 d!2187629))

(declare-fun b!7018109 () Bool)

(declare-fun e!4218713 () List!67631)

(assert (=> b!7018109 (= e!4218713 (Cons!67507 (h!73955 (exprs!6858 lt!2509474)) (++!15388 (t!381386 (exprs!6858 lt!2509474)) (exprs!6858 ct2!306))))))

(declare-fun d!2187631 () Bool)

(declare-fun e!4218714 () Bool)

(assert (=> d!2187631 e!4218714))

(declare-fun res!2864406 () Bool)

(assert (=> d!2187631 (=> (not res!2864406) (not e!4218714))))

(declare-fun lt!2509594 () List!67631)

(assert (=> d!2187631 (= res!2864406 (= (content!13429 lt!2509594) (set.union (content!13429 (exprs!6858 lt!2509474)) (content!13429 (exprs!6858 ct2!306)))))))

(assert (=> d!2187631 (= lt!2509594 e!4218713)))

(declare-fun c!1304080 () Bool)

(assert (=> d!2187631 (= c!1304080 (is-Nil!67507 (exprs!6858 lt!2509474)))))

(assert (=> d!2187631 (= (++!15388 (exprs!6858 lt!2509474) (exprs!6858 ct2!306)) lt!2509594)))

(declare-fun b!7018110 () Bool)

(declare-fun res!2864407 () Bool)

(assert (=> b!7018110 (=> (not res!2864407) (not e!4218714))))

(assert (=> b!7018110 (= res!2864407 (= (size!41006 lt!2509594) (+ (size!41006 (exprs!6858 lt!2509474)) (size!41006 (exprs!6858 ct2!306)))))))

(declare-fun b!7018111 () Bool)

(assert (=> b!7018111 (= e!4218714 (or (not (= (exprs!6858 ct2!306) Nil!67507)) (= lt!2509594 (exprs!6858 lt!2509474))))))

(declare-fun b!7018108 () Bool)

(assert (=> b!7018108 (= e!4218713 (exprs!6858 ct2!306))))

(assert (= (and d!2187631 c!1304080) b!7018108))

(assert (= (and d!2187631 (not c!1304080)) b!7018109))

(assert (= (and d!2187631 res!2864406) b!7018110))

(assert (= (and b!7018110 res!2864407) b!7018111))

(declare-fun m!7718440 () Bool)

(assert (=> b!7018109 m!7718440))

(declare-fun m!7718442 () Bool)

(assert (=> d!2187631 m!7718442))

(declare-fun m!7718444 () Bool)

(assert (=> d!2187631 m!7718444))

(assert (=> d!2187631 m!7718414))

(declare-fun m!7718446 () Bool)

(assert (=> b!7018110 m!7718446))

(declare-fun m!7718448 () Bool)

(assert (=> b!7018110 m!7718448))

(assert (=> b!7018110 m!7718420))

(assert (=> b!7017952 d!2187631))

(declare-fun d!2187633 () Bool)

(assert (=> d!2187633 (forall!16277 (++!15388 (exprs!6858 lt!2509474) (exprs!6858 ct2!306)) lambda!410426)))

(declare-fun lt!2509595 () Unit!161406)

(assert (=> d!2187633 (= lt!2509595 (choose!52871 (exprs!6858 lt!2509474) (exprs!6858 ct2!306) lambda!410426))))

(assert (=> d!2187633 (forall!16277 (exprs!6858 lt!2509474) lambda!410426)))

(assert (=> d!2187633 (= (lemmaConcatPreservesForall!698 (exprs!6858 lt!2509474) (exprs!6858 ct2!306) lambda!410426) lt!2509595)))

(declare-fun bs!1867114 () Bool)

(assert (= bs!1867114 d!2187633))

(assert (=> bs!1867114 m!7718248))

(assert (=> bs!1867114 m!7718248))

(declare-fun m!7718450 () Bool)

(assert (=> bs!1867114 m!7718450))

(declare-fun m!7718452 () Bool)

(assert (=> bs!1867114 m!7718452))

(declare-fun m!7718454 () Bool)

(assert (=> bs!1867114 m!7718454))

(assert (=> b!7017952 d!2187633))

(declare-fun d!2187635 () Bool)

(declare-fun e!4218717 () Bool)

(assert (=> d!2187635 e!4218717))

(declare-fun res!2864410 () Bool)

(assert (=> d!2187635 (=> (not res!2864410) (not e!4218717))))

(declare-fun lt!2509598 () Context!12716)

(declare-fun dynLambda!27190 (Int Context!12716) Context!12716)

(assert (=> d!2187635 (= res!2864410 (= lt!2509467 (dynLambda!27190 lambda!410425 lt!2509598)))))

(declare-fun choose!52874 ((Set Context!12716) Int Context!12716) Context!12716)

(assert (=> d!2187635 (= lt!2509598 (choose!52874 z1!570 lambda!410425 lt!2509467))))

(declare-fun map!15655 ((Set Context!12716) Int) (Set Context!12716))

(assert (=> d!2187635 (set.member lt!2509467 (map!15655 z1!570 lambda!410425))))

(assert (=> d!2187635 (= (mapPost2!217 z1!570 lambda!410425 lt!2509467) lt!2509598)))

(declare-fun b!7018115 () Bool)

(assert (=> b!7018115 (= e!4218717 (set.member lt!2509598 z1!570))))

(assert (= (and d!2187635 res!2864410) b!7018115))

(declare-fun b_lambda!264885 () Bool)

(assert (=> (not b_lambda!264885) (not d!2187635)))

(declare-fun m!7718456 () Bool)

(assert (=> d!2187635 m!7718456))

(declare-fun m!7718458 () Bool)

(assert (=> d!2187635 m!7718458))

(declare-fun m!7718460 () Bool)

(assert (=> d!2187635 m!7718460))

(declare-fun m!7718462 () Bool)

(assert (=> d!2187635 m!7718462))

(declare-fun m!7718464 () Bool)

(assert (=> b!7018115 m!7718464))

(assert (=> b!7017952 d!2187635))

(declare-fun d!2187637 () Bool)

(declare-fun e!4218720 () Bool)

(assert (=> d!2187637 e!4218720))

(declare-fun res!2864413 () Bool)

(assert (=> d!2187637 (=> (not res!2864413) (not e!4218720))))

(declare-fun lt!2509601 () List!67633)

(declare-fun noDuplicate!2586 (List!67633) Bool)

(assert (=> d!2187637 (= res!2864413 (noDuplicate!2586 lt!2509601))))

(declare-fun choose!52875 ((Set Context!12716)) List!67633)

(assert (=> d!2187637 (= lt!2509601 (choose!52875 lt!2509468))))

(assert (=> d!2187637 (= (toList!10722 lt!2509468) lt!2509601)))

(declare-fun b!7018118 () Bool)

(declare-fun content!13430 (List!67633) (Set Context!12716))

(assert (=> b!7018118 (= e!4218720 (= (content!13430 lt!2509601) lt!2509468))))

(assert (= (and d!2187637 res!2864413) b!7018118))

(declare-fun m!7718466 () Bool)

(assert (=> d!2187637 m!7718466))

(declare-fun m!7718468 () Bool)

(assert (=> d!2187637 m!7718468))

(declare-fun m!7718470 () Bool)

(assert (=> b!7018118 m!7718470))

(assert (=> b!7017961 d!2187637))

(declare-fun bs!1867115 () Bool)

(declare-fun d!2187639 () Bool)

(assert (= bs!1867115 (and d!2187639 b!7017961)))

(declare-fun lambda!410462 () Int)

(assert (=> bs!1867115 (not (= lambda!410462 lambda!410424))))

(assert (=> d!2187639 true))

(declare-fun order!28077 () Int)

(declare-fun dynLambda!27191 (Int Int) Int)

(assert (=> d!2187639 (< (dynLambda!27191 order!28077 lambda!410424) (dynLambda!27191 order!28077 lambda!410462))))

(declare-fun forall!16278 (List!67633 Int) Bool)

(assert (=> d!2187639 (= (exists!3231 lt!2509477 lambda!410424) (not (forall!16278 lt!2509477 lambda!410462)))))

(declare-fun bs!1867116 () Bool)

(assert (= bs!1867116 d!2187639))

(declare-fun m!7718472 () Bool)

(assert (=> bs!1867116 m!7718472))

(assert (=> b!7017961 d!2187639))

(declare-fun bs!1867117 () Bool)

(declare-fun d!2187641 () Bool)

(assert (= bs!1867117 (and d!2187641 b!7017961)))

(declare-fun lambda!410465 () Int)

(assert (=> bs!1867117 (= lambda!410465 lambda!410424)))

(declare-fun bs!1867118 () Bool)

(assert (= bs!1867118 (and d!2187641 d!2187639)))

(assert (=> bs!1867118 (not (= lambda!410465 lambda!410462))))

(assert (=> d!2187641 true))

(assert (=> d!2187641 (exists!3231 lt!2509477 lambda!410465)))

(declare-fun lt!2509604 () Unit!161406)

(declare-fun choose!52876 (List!67633 List!67632) Unit!161406)

(assert (=> d!2187641 (= lt!2509604 (choose!52876 lt!2509477 s!7408))))

(assert (=> d!2187641 (matchZipper!2902 (content!13430 lt!2509477) s!7408)))

(assert (=> d!2187641 (= (lemmaZipperMatchesExistsMatchingContext!331 lt!2509477 s!7408) lt!2509604)))

(declare-fun bs!1867119 () Bool)

(assert (= bs!1867119 d!2187641))

(declare-fun m!7718474 () Bool)

(assert (=> bs!1867119 m!7718474))

(declare-fun m!7718476 () Bool)

(assert (=> bs!1867119 m!7718476))

(declare-fun m!7718478 () Bool)

(assert (=> bs!1867119 m!7718478))

(assert (=> bs!1867119 m!7718478))

(declare-fun m!7718480 () Bool)

(assert (=> bs!1867119 m!7718480))

(assert (=> b!7017961 d!2187641))

(declare-fun d!2187645 () Bool)

(declare-fun c!1304083 () Bool)

(assert (=> d!2187645 (= c!1304083 (isEmpty!39429 s!7408))))

(declare-fun e!4218721 () Bool)

(assert (=> d!2187645 (= (matchZipper!2902 lt!2509488 s!7408) e!4218721)))

(declare-fun b!7018121 () Bool)

(assert (=> b!7018121 (= e!4218721 (nullableZipper!2509 lt!2509488))))

(declare-fun b!7018122 () Bool)

(assert (=> b!7018122 (= e!4218721 (matchZipper!2902 (derivationStepZipper!2842 lt!2509488 (head!14199 s!7408)) (tail!13460 s!7408)))))

(assert (= (and d!2187645 c!1304083) b!7018121))

(assert (= (and d!2187645 (not c!1304083)) b!7018122))

(declare-fun m!7718482 () Bool)

(assert (=> d!2187645 m!7718482))

(declare-fun m!7718484 () Bool)

(assert (=> b!7018121 m!7718484))

(declare-fun m!7718486 () Bool)

(assert (=> b!7018122 m!7718486))

(assert (=> b!7018122 m!7718486))

(declare-fun m!7718488 () Bool)

(assert (=> b!7018122 m!7718488))

(declare-fun m!7718490 () Bool)

(assert (=> b!7018122 m!7718490))

(assert (=> b!7018122 m!7718488))

(assert (=> b!7018122 m!7718490))

(declare-fun m!7718492 () Bool)

(assert (=> b!7018122 m!7718492))

(assert (=> b!7017961 d!2187645))

(declare-fun d!2187647 () Bool)

(declare-fun e!4218728 () Bool)

(assert (=> d!2187647 e!4218728))

(declare-fun res!2864418 () Bool)

(assert (=> d!2187647 (=> (not res!2864418) (not e!4218728))))

(declare-fun lt!2509609 () Context!12716)

(declare-fun dynLambda!27192 (Int Context!12716) Bool)

(assert (=> d!2187647 (= res!2864418 (dynLambda!27192 lambda!410424 lt!2509609))))

(declare-fun getWitness!1326 (List!67633 Int) Context!12716)

(assert (=> d!2187647 (= lt!2509609 (getWitness!1326 (toList!10722 lt!2509468) lambda!410424))))

(declare-fun exists!3233 ((Set Context!12716) Int) Bool)

(assert (=> d!2187647 (exists!3233 lt!2509468 lambda!410424)))

(assert (=> d!2187647 (= (getWitness!1324 lt!2509468 lambda!410424) lt!2509609)))

(declare-fun b!7018131 () Bool)

(assert (=> b!7018131 (= e!4218728 (set.member lt!2509609 lt!2509468))))

(assert (= (and d!2187647 res!2864418) b!7018131))

(declare-fun b_lambda!264887 () Bool)

(assert (=> (not b_lambda!264887) (not d!2187647)))

(declare-fun m!7718494 () Bool)

(assert (=> d!2187647 m!7718494))

(assert (=> d!2187647 m!7718238))

(assert (=> d!2187647 m!7718238))

(declare-fun m!7718496 () Bool)

(assert (=> d!2187647 m!7718496))

(declare-fun m!7718498 () Bool)

(assert (=> d!2187647 m!7718498))

(declare-fun m!7718500 () Bool)

(assert (=> b!7018131 m!7718500))

(assert (=> b!7017961 d!2187647))

(declare-fun d!2187649 () Bool)

(declare-fun c!1304086 () Bool)

(assert (=> d!2187649 (= c!1304086 (isEmpty!39429 (_2!37306 lt!2509485)))))

(declare-fun e!4218729 () Bool)

(assert (=> d!2187649 (= (matchZipper!2902 lt!2509476 (_2!37306 lt!2509485)) e!4218729)))

(declare-fun b!7018134 () Bool)

(assert (=> b!7018134 (= e!4218729 (nullableZipper!2509 lt!2509476))))

(declare-fun b!7018135 () Bool)

(assert (=> b!7018135 (= e!4218729 (matchZipper!2902 (derivationStepZipper!2842 lt!2509476 (head!14199 (_2!37306 lt!2509485))) (tail!13460 (_2!37306 lt!2509485))))))

(assert (= (and d!2187649 c!1304086) b!7018134))

(assert (= (and d!2187649 (not c!1304086)) b!7018135))

(declare-fun m!7718502 () Bool)

(assert (=> d!2187649 m!7718502))

(declare-fun m!7718504 () Bool)

(assert (=> b!7018134 m!7718504))

(declare-fun m!7718506 () Bool)

(assert (=> b!7018135 m!7718506))

(assert (=> b!7018135 m!7718506))

(declare-fun m!7718508 () Bool)

(assert (=> b!7018135 m!7718508))

(declare-fun m!7718510 () Bool)

(assert (=> b!7018135 m!7718510))

(assert (=> b!7018135 m!7718508))

(assert (=> b!7018135 m!7718510))

(declare-fun m!7718512 () Bool)

(assert (=> b!7018135 m!7718512))

(assert (=> b!7017970 d!2187649))

(assert (=> b!7017964 d!2187633))

(declare-fun d!2187651 () Bool)

(declare-fun c!1304087 () Bool)

(declare-fun e!4218730 () Bool)

(assert (=> d!2187651 (= c!1304087 e!4218730)))

(declare-fun res!2864421 () Bool)

(assert (=> d!2187651 (=> (not res!2864421) (not e!4218730))))

(assert (=> d!2187651 (= res!2864421 (is-Cons!67507 (exprs!6858 lt!2509466)))))

(declare-fun e!4218731 () (Set Context!12716))

(assert (=> d!2187651 (= (derivationStepZipperUp!2012 lt!2509466 (h!73956 s!7408)) e!4218731)))

(declare-fun b!7018136 () Bool)

(declare-fun e!4218732 () (Set Context!12716))

(assert (=> b!7018136 (= e!4218732 (as set.empty (Set Context!12716)))))

(declare-fun b!7018137 () Bool)

(declare-fun call!637508 () (Set Context!12716))

(assert (=> b!7018137 (= e!4218732 call!637508)))

(declare-fun b!7018138 () Bool)

(assert (=> b!7018138 (= e!4218730 (nullable!7122 (h!73955 (exprs!6858 lt!2509466))))))

(declare-fun b!7018139 () Bool)

(assert (=> b!7018139 (= e!4218731 (set.union call!637508 (derivationStepZipperUp!2012 (Context!12717 (t!381386 (exprs!6858 lt!2509466))) (h!73956 s!7408))))))

(declare-fun bm!637503 () Bool)

(assert (=> bm!637503 (= call!637508 (derivationStepZipperDown!2080 (h!73955 (exprs!6858 lt!2509466)) (Context!12717 (t!381386 (exprs!6858 lt!2509466))) (h!73956 s!7408)))))

(declare-fun b!7018140 () Bool)

(assert (=> b!7018140 (= e!4218731 e!4218732)))

(declare-fun c!1304088 () Bool)

(assert (=> b!7018140 (= c!1304088 (is-Cons!67507 (exprs!6858 lt!2509466)))))

(assert (= (and d!2187651 res!2864421) b!7018138))

(assert (= (and d!2187651 c!1304087) b!7018139))

(assert (= (and d!2187651 (not c!1304087)) b!7018140))

(assert (= (and b!7018140 c!1304088) b!7018137))

(assert (= (and b!7018140 (not c!1304088)) b!7018136))

(assert (= (or b!7018139 b!7018137) bm!637503))

(declare-fun m!7718514 () Bool)

(assert (=> b!7018138 m!7718514))

(declare-fun m!7718516 () Bool)

(assert (=> b!7018139 m!7718516))

(declare-fun m!7718518 () Bool)

(assert (=> bm!637503 m!7718518))

(assert (=> b!7017954 d!2187651))

(declare-fun d!2187653 () Bool)

(assert (=> d!2187653 (= (flatMap!2348 lt!2509471 lambda!410427) (dynLambda!27189 lambda!410427 lt!2509466))))

(declare-fun lt!2509610 () Unit!161406)

(assert (=> d!2187653 (= lt!2509610 (choose!52873 lt!2509471 lt!2509466 lambda!410427))))

(assert (=> d!2187653 (= lt!2509471 (set.insert lt!2509466 (as set.empty (Set Context!12716))))))

(assert (=> d!2187653 (= (lemmaFlatMapOnSingletonSet!1863 lt!2509471 lt!2509466 lambda!410427) lt!2509610)))

(declare-fun b_lambda!264889 () Bool)

(assert (=> (not b_lambda!264889) (not d!2187653)))

(declare-fun bs!1867120 () Bool)

(assert (= bs!1867120 d!2187653))

(assert (=> bs!1867120 m!7718282))

(declare-fun m!7718520 () Bool)

(assert (=> bs!1867120 m!7718520))

(declare-fun m!7718522 () Bool)

(assert (=> bs!1867120 m!7718522))

(assert (=> bs!1867120 m!7718264))

(assert (=> b!7017954 d!2187653))

(assert (=> b!7017954 d!2187633))

(declare-fun d!2187655 () Bool)

(assert (=> d!2187655 (= (flatMap!2348 lt!2509471 lambda!410427) (choose!52872 lt!2509471 lambda!410427))))

(declare-fun bs!1867121 () Bool)

(assert (= bs!1867121 d!2187655))

(declare-fun m!7718524 () Bool)

(assert (=> bs!1867121 m!7718524))

(assert (=> b!7017954 d!2187655))

(declare-fun bs!1867122 () Bool)

(declare-fun d!2187657 () Bool)

(assert (= bs!1867122 (and d!2187657 b!7017954)))

(declare-fun lambda!410466 () Int)

(assert (=> bs!1867122 (= lambda!410466 lambda!410427)))

(declare-fun bs!1867123 () Bool)

(assert (= bs!1867123 (and d!2187657 d!2187627)))

(assert (=> bs!1867123 (= lambda!410466 lambda!410459)))

(assert (=> d!2187657 true))

(assert (=> d!2187657 (= (derivationStepZipper!2842 lt!2509471 (h!73956 s!7408)) (flatMap!2348 lt!2509471 lambda!410466))))

(declare-fun bs!1867124 () Bool)

(assert (= bs!1867124 d!2187657))

(declare-fun m!7718526 () Bool)

(assert (=> bs!1867124 m!7718526))

(assert (=> b!7017954 d!2187657))

(declare-fun d!2187659 () Bool)

(declare-fun c!1304089 () Bool)

(assert (=> d!2187659 (= c!1304089 (isEmpty!39429 s!7408))))

(declare-fun e!4218733 () Bool)

(assert (=> d!2187659 (= (matchZipper!2902 lt!2509468 s!7408) e!4218733)))

(declare-fun b!7018141 () Bool)

(assert (=> b!7018141 (= e!4218733 (nullableZipper!2509 lt!2509468))))

(declare-fun b!7018142 () Bool)

(assert (=> b!7018142 (= e!4218733 (matchZipper!2902 (derivationStepZipper!2842 lt!2509468 (head!14199 s!7408)) (tail!13460 s!7408)))))

(assert (= (and d!2187659 c!1304089) b!7018141))

(assert (= (and d!2187659 (not c!1304089)) b!7018142))

(assert (=> d!2187659 m!7718482))

(declare-fun m!7718528 () Bool)

(assert (=> b!7018141 m!7718528))

(assert (=> b!7018142 m!7718486))

(assert (=> b!7018142 m!7718486))

(declare-fun m!7718530 () Bool)

(assert (=> b!7018142 m!7718530))

(assert (=> b!7018142 m!7718490))

(assert (=> b!7018142 m!7718530))

(assert (=> b!7018142 m!7718490))

(declare-fun m!7718532 () Bool)

(assert (=> b!7018142 m!7718532))

(assert (=> start!676536 d!2187659))

(declare-fun bs!1867125 () Bool)

(declare-fun d!2187661 () Bool)

(assert (= bs!1867125 (and d!2187661 b!7017952)))

(declare-fun lambda!410471 () Int)

(assert (=> bs!1867125 (= lambda!410471 lambda!410425)))

(assert (=> d!2187661 true))

(assert (=> d!2187661 (= (appendTo!483 z1!570 ct2!306) (map!15655 z1!570 lambda!410471))))

(declare-fun bs!1867126 () Bool)

(assert (= bs!1867126 d!2187661))

(declare-fun m!7718548 () Bool)

(assert (=> bs!1867126 m!7718548))

(assert (=> start!676536 d!2187661))

(declare-fun bs!1867127 () Bool)

(declare-fun d!2187667 () Bool)

(assert (= bs!1867127 (and d!2187667 b!7017952)))

(declare-fun lambda!410472 () Int)

(assert (=> bs!1867127 (= lambda!410472 lambda!410426)))

(declare-fun bs!1867128 () Bool)

(assert (= bs!1867128 (and d!2187667 d!2187611)))

(assert (=> bs!1867128 (= lambda!410472 lambda!410456)))

(assert (=> d!2187667 (= (inv!86265 ct2!306) (forall!16277 (exprs!6858 ct2!306) lambda!410472))))

(declare-fun bs!1867129 () Bool)

(assert (= bs!1867129 d!2187667))

(declare-fun m!7718550 () Bool)

(assert (=> bs!1867129 m!7718550))

(assert (=> start!676536 d!2187667))

(declare-fun b!7018165 () Bool)

(declare-fun res!2864437 () Bool)

(declare-fun e!4218746 () Bool)

(assert (=> b!7018165 (=> (not res!2864437) (not e!4218746))))

(declare-fun lt!2509624 () Option!16835)

(assert (=> b!7018165 (= res!2864437 (matchZipper!2902 lt!2509476 (_2!37306 (get!23675 lt!2509624))))))

(declare-fun b!7018166 () Bool)

(declare-fun res!2864434 () Bool)

(assert (=> b!7018166 (=> (not res!2864434) (not e!4218746))))

(assert (=> b!7018166 (= res!2864434 (matchZipper!2902 lt!2509483 (_1!37306 (get!23675 lt!2509624))))))

(declare-fun b!7018167 () Bool)

(declare-fun lt!2509625 () Unit!161406)

(declare-fun lt!2509623 () Unit!161406)

(assert (=> b!7018167 (= lt!2509625 lt!2509623)))

(assert (=> b!7018167 (= (++!15389 (++!15389 Nil!67508 (Cons!67508 (h!73956 (t!381387 s!7408)) Nil!67508)) (t!381387 (t!381387 s!7408))) (t!381387 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2905 (List!67632 C!34994 List!67632 List!67632) Unit!161406)

(assert (=> b!7018167 (= lt!2509623 (lemmaMoveElementToOtherListKeepsConcatEq!2905 Nil!67508 (h!73956 (t!381387 s!7408)) (t!381387 (t!381387 s!7408)) (t!381387 s!7408)))))

(declare-fun e!4218750 () Option!16835)

(assert (=> b!7018167 (= e!4218750 (findConcatSeparationZippers!351 lt!2509483 lt!2509476 (++!15389 Nil!67508 (Cons!67508 (h!73956 (t!381387 s!7408)) Nil!67508)) (t!381387 (t!381387 s!7408)) (t!381387 s!7408)))))

(declare-fun d!2187669 () Bool)

(declare-fun e!4218748 () Bool)

(assert (=> d!2187669 e!4218748))

(declare-fun res!2864436 () Bool)

(assert (=> d!2187669 (=> res!2864436 e!4218748)))

(assert (=> d!2187669 (= res!2864436 e!4218746)))

(declare-fun res!2864435 () Bool)

(assert (=> d!2187669 (=> (not res!2864435) (not e!4218746))))

(assert (=> d!2187669 (= res!2864435 (isDefined!13536 lt!2509624))))

(declare-fun e!4218747 () Option!16835)

(assert (=> d!2187669 (= lt!2509624 e!4218747)))

(declare-fun c!1304096 () Bool)

(declare-fun e!4218749 () Bool)

(assert (=> d!2187669 (= c!1304096 e!4218749)))

(declare-fun res!2864438 () Bool)

(assert (=> d!2187669 (=> (not res!2864438) (not e!4218749))))

(assert (=> d!2187669 (= res!2864438 (matchZipper!2902 lt!2509483 Nil!67508))))

(assert (=> d!2187669 (= (++!15389 Nil!67508 (t!381387 s!7408)) (t!381387 s!7408))))

(assert (=> d!2187669 (= (findConcatSeparationZippers!351 lt!2509483 lt!2509476 Nil!67508 (t!381387 s!7408) (t!381387 s!7408)) lt!2509624)))

(declare-fun b!7018168 () Bool)

(assert (=> b!7018168 (= e!4218747 (Some!16834 (tuple2!68007 Nil!67508 (t!381387 s!7408))))))

(declare-fun b!7018169 () Bool)

(assert (=> b!7018169 (= e!4218749 (matchZipper!2902 lt!2509476 (t!381387 s!7408)))))

(declare-fun b!7018170 () Bool)

(assert (=> b!7018170 (= e!4218746 (= (++!15389 (_1!37306 (get!23675 lt!2509624)) (_2!37306 (get!23675 lt!2509624))) (t!381387 s!7408)))))

(declare-fun b!7018171 () Bool)

(assert (=> b!7018171 (= e!4218750 None!16834)))

(declare-fun b!7018172 () Bool)

(assert (=> b!7018172 (= e!4218748 (not (isDefined!13536 lt!2509624)))))

(declare-fun b!7018173 () Bool)

(assert (=> b!7018173 (= e!4218747 e!4218750)))

(declare-fun c!1304097 () Bool)

(assert (=> b!7018173 (= c!1304097 (is-Nil!67508 (t!381387 s!7408)))))

(assert (= (and d!2187669 res!2864438) b!7018169))

(assert (= (and d!2187669 c!1304096) b!7018168))

(assert (= (and d!2187669 (not c!1304096)) b!7018173))

(assert (= (and b!7018173 c!1304097) b!7018171))

(assert (= (and b!7018173 (not c!1304097)) b!7018167))

(assert (= (and d!2187669 res!2864435) b!7018166))

(assert (= (and b!7018166 res!2864434) b!7018165))

(assert (= (and b!7018165 res!2864437) b!7018170))

(assert (= (and d!2187669 (not res!2864436)) b!7018172))

(declare-fun m!7718560 () Bool)

(assert (=> b!7018172 m!7718560))

(declare-fun m!7718562 () Bool)

(assert (=> b!7018167 m!7718562))

(assert (=> b!7018167 m!7718562))

(declare-fun m!7718564 () Bool)

(assert (=> b!7018167 m!7718564))

(declare-fun m!7718566 () Bool)

(assert (=> b!7018167 m!7718566))

(assert (=> b!7018167 m!7718562))

(declare-fun m!7718568 () Bool)

(assert (=> b!7018167 m!7718568))

(assert (=> d!2187669 m!7718560))

(declare-fun m!7718570 () Bool)

(assert (=> d!2187669 m!7718570))

(declare-fun m!7718572 () Bool)

(assert (=> d!2187669 m!7718572))

(declare-fun m!7718574 () Bool)

(assert (=> b!7018165 m!7718574))

(declare-fun m!7718576 () Bool)

(assert (=> b!7018165 m!7718576))

(assert (=> b!7018170 m!7718574))

(declare-fun m!7718578 () Bool)

(assert (=> b!7018170 m!7718578))

(declare-fun m!7718580 () Bool)

(assert (=> b!7018169 m!7718580))

(assert (=> b!7018166 m!7718574))

(declare-fun m!7718582 () Bool)

(assert (=> b!7018166 m!7718582))

(assert (=> b!7017953 d!2187669))

(assert (=> b!7017953 d!2187619))

(declare-fun bs!1867131 () Bool)

(declare-fun d!2187673 () Bool)

(assert (= bs!1867131 (and d!2187673 b!7017952)))

(declare-fun lambda!410475 () Int)

(assert (=> bs!1867131 (= lambda!410475 lambda!410425)))

(declare-fun bs!1867132 () Bool)

(assert (= bs!1867132 (and d!2187673 d!2187661)))

(assert (=> bs!1867132 (= lambda!410475 lambda!410471)))

(assert (=> d!2187673 true))

(assert (=> d!2187673 (= (appendTo!483 lt!2509483 ct2!306) (map!15655 lt!2509483 lambda!410475))))

(declare-fun bs!1867133 () Bool)

(assert (= bs!1867133 d!2187673))

(declare-fun m!7718584 () Bool)

(assert (=> bs!1867133 m!7718584))

(assert (=> b!7017953 d!2187673))

(declare-fun b!7018174 () Bool)

(declare-fun e!4218756 () Bool)

(assert (=> b!7018174 (= e!4218756 (nullable!7122 (regOne!35236 (h!73955 (exprs!6858 lt!2509474)))))))

(declare-fun bm!637504 () Bool)

(declare-fun call!637512 () (Set Context!12716))

(declare-fun call!637513 () (Set Context!12716))

(assert (=> bm!637504 (= call!637512 call!637513)))

(declare-fun b!7018175 () Bool)

(declare-fun e!4218753 () (Set Context!12716))

(declare-fun call!637514 () (Set Context!12716))

(assert (=> b!7018175 (= e!4218753 (set.union call!637514 call!637513))))

(declare-fun b!7018176 () Bool)

(declare-fun c!1304099 () Bool)

(assert (=> b!7018176 (= c!1304099 e!4218756)))

(declare-fun res!2864439 () Bool)

(assert (=> b!7018176 (=> (not res!2864439) (not e!4218756))))

(assert (=> b!7018176 (= res!2864439 (is-Concat!26207 (h!73955 (exprs!6858 lt!2509474))))))

(declare-fun e!4218754 () (Set Context!12716))

(assert (=> b!7018176 (= e!4218753 e!4218754)))

(declare-fun b!7018177 () Bool)

(declare-fun e!4218751 () (Set Context!12716))

(assert (=> b!7018177 (= e!4218754 e!4218751)))

(declare-fun c!1304103 () Bool)

(assert (=> b!7018177 (= c!1304103 (is-Concat!26207 (h!73955 (exprs!6858 lt!2509474))))))

(declare-fun call!637509 () List!67631)

(declare-fun c!1304102 () Bool)

(declare-fun bm!637505 () Bool)

(assert (=> bm!637505 (= call!637514 (derivationStepZipperDown!2080 (ite c!1304102 (regOne!35237 (h!73955 (exprs!6858 lt!2509474))) (regOne!35236 (h!73955 (exprs!6858 lt!2509474)))) (ite c!1304102 lt!2509470 (Context!12717 call!637509)) (h!73956 s!7408)))))

(declare-fun b!7018178 () Bool)

(declare-fun call!637510 () (Set Context!12716))

(assert (=> b!7018178 (= e!4218751 call!637510)))

(declare-fun b!7018179 () Bool)

(declare-fun e!4218752 () (Set Context!12716))

(assert (=> b!7018179 (= e!4218752 call!637510)))

(declare-fun d!2187675 () Bool)

(declare-fun c!1304101 () Bool)

(assert (=> d!2187675 (= c!1304101 (and (is-ElementMatch!17362 (h!73955 (exprs!6858 lt!2509474))) (= (c!1304039 (h!73955 (exprs!6858 lt!2509474))) (h!73956 s!7408))))))

(declare-fun e!4218755 () (Set Context!12716))

(assert (=> d!2187675 (= (derivationStepZipperDown!2080 (h!73955 (exprs!6858 lt!2509474)) lt!2509470 (h!73956 s!7408)) e!4218755)))

(declare-fun bm!637506 () Bool)

(assert (=> bm!637506 (= call!637509 ($colon$colon!2549 (exprs!6858 lt!2509470) (ite (or c!1304099 c!1304103) (regTwo!35236 (h!73955 (exprs!6858 lt!2509474))) (h!73955 (exprs!6858 lt!2509474)))))))

(declare-fun b!7018180 () Bool)

(assert (=> b!7018180 (= e!4218755 e!4218753)))

(assert (=> b!7018180 (= c!1304102 (is-Union!17362 (h!73955 (exprs!6858 lt!2509474))))))

(declare-fun b!7018181 () Bool)

(assert (=> b!7018181 (= e!4218754 (set.union call!637514 call!637512))))

(declare-fun b!7018182 () Bool)

(assert (=> b!7018182 (= e!4218755 (set.insert lt!2509470 (as set.empty (Set Context!12716))))))

(declare-fun bm!637507 () Bool)

(assert (=> bm!637507 (= call!637510 call!637512)))

(declare-fun bm!637508 () Bool)

(declare-fun call!637511 () List!67631)

(assert (=> bm!637508 (= call!637511 call!637509)))

(declare-fun b!7018183 () Bool)

(declare-fun c!1304100 () Bool)

(assert (=> b!7018183 (= c!1304100 (is-Star!17362 (h!73955 (exprs!6858 lt!2509474))))))

(assert (=> b!7018183 (= e!4218751 e!4218752)))

(declare-fun b!7018184 () Bool)

(assert (=> b!7018184 (= e!4218752 (as set.empty (Set Context!12716)))))

(declare-fun bm!637509 () Bool)

(assert (=> bm!637509 (= call!637513 (derivationStepZipperDown!2080 (ite c!1304102 (regTwo!35237 (h!73955 (exprs!6858 lt!2509474))) (ite c!1304099 (regTwo!35236 (h!73955 (exprs!6858 lt!2509474))) (ite c!1304103 (regOne!35236 (h!73955 (exprs!6858 lt!2509474))) (reg!17691 (h!73955 (exprs!6858 lt!2509474)))))) (ite (or c!1304102 c!1304099) lt!2509470 (Context!12717 call!637511)) (h!73956 s!7408)))))

(assert (= (and d!2187675 c!1304101) b!7018182))

(assert (= (and d!2187675 (not c!1304101)) b!7018180))

(assert (= (and b!7018180 c!1304102) b!7018175))

(assert (= (and b!7018180 (not c!1304102)) b!7018176))

(assert (= (and b!7018176 res!2864439) b!7018174))

(assert (= (and b!7018176 c!1304099) b!7018181))

(assert (= (and b!7018176 (not c!1304099)) b!7018177))

(assert (= (and b!7018177 c!1304103) b!7018178))

(assert (= (and b!7018177 (not c!1304103)) b!7018183))

(assert (= (and b!7018183 c!1304100) b!7018179))

(assert (= (and b!7018183 (not c!1304100)) b!7018184))

(assert (= (or b!7018178 b!7018179) bm!637508))

(assert (= (or b!7018178 b!7018179) bm!637507))

(assert (= (or b!7018181 bm!637507) bm!637504))

(assert (= (or b!7018181 bm!637508) bm!637506))

(assert (= (or b!7018175 b!7018181) bm!637505))

(assert (= (or b!7018175 bm!637504) bm!637509))

(declare-fun m!7718586 () Bool)

(assert (=> bm!637509 m!7718586))

(declare-fun m!7718588 () Bool)

(assert (=> bm!637505 m!7718588))

(declare-fun m!7718590 () Bool)

(assert (=> b!7018182 m!7718590))

(declare-fun m!7718592 () Bool)

(assert (=> bm!637506 m!7718592))

(assert (=> b!7018174 m!7718406))

(assert (=> b!7017953 d!2187675))

(declare-fun d!2187677 () Bool)

(assert (=> d!2187677 (= (get!23675 lt!2509465) (v!53112 lt!2509465))))

(assert (=> b!7017953 d!2187677))

(declare-fun bs!1867136 () Bool)

(declare-fun d!2187679 () Bool)

(assert (= bs!1867136 (and d!2187679 b!7017952)))

(declare-fun lambda!410479 () Int)

(assert (=> bs!1867136 (= lambda!410479 lambda!410426)))

(declare-fun bs!1867137 () Bool)

(assert (= bs!1867137 (and d!2187679 d!2187611)))

(assert (=> bs!1867137 (= lambda!410479 lambda!410456)))

(declare-fun bs!1867138 () Bool)

(assert (= bs!1867138 (and d!2187679 d!2187667)))

(assert (=> bs!1867138 (= lambda!410479 lambda!410472)))

(assert (=> d!2187679 (= (derivationStepZipperDown!2080 (h!73955 (exprs!6858 lt!2509474)) (Context!12717 (++!15388 (exprs!6858 lt!2509470) (exprs!6858 ct2!306))) (h!73956 s!7408)) (appendTo!483 (derivationStepZipperDown!2080 (h!73955 (exprs!6858 lt!2509474)) lt!2509470 (h!73956 s!7408)) ct2!306))))

(declare-fun lt!2509637 () Unit!161406)

(assert (=> d!2187679 (= lt!2509637 (lemmaConcatPreservesForall!698 (exprs!6858 lt!2509470) (exprs!6858 ct2!306) lambda!410479))))

(declare-fun lt!2509636 () Unit!161406)

(declare-fun choose!52878 (Context!12716 Regex!17362 C!34994 Context!12716) Unit!161406)

(assert (=> d!2187679 (= lt!2509636 (choose!52878 lt!2509470 (h!73955 (exprs!6858 lt!2509474)) (h!73956 s!7408) ct2!306))))

(declare-fun validRegex!8911 (Regex!17362) Bool)

(assert (=> d!2187679 (validRegex!8911 (h!73955 (exprs!6858 lt!2509474)))))

(assert (=> d!2187679 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!53 lt!2509470 (h!73955 (exprs!6858 lt!2509474)) (h!73956 s!7408) ct2!306) lt!2509636)))

(declare-fun bs!1867139 () Bool)

(assert (= bs!1867139 d!2187679))

(declare-fun m!7718606 () Bool)

(assert (=> bs!1867139 m!7718606))

(declare-fun m!7718608 () Bool)

(assert (=> bs!1867139 m!7718608))

(declare-fun m!7718610 () Bool)

(assert (=> bs!1867139 m!7718610))

(declare-fun m!7718612 () Bool)

(assert (=> bs!1867139 m!7718612))

(assert (=> bs!1867139 m!7718212))

(assert (=> bs!1867139 m!7718212))

(declare-fun m!7718614 () Bool)

(assert (=> bs!1867139 m!7718614))

(declare-fun m!7718616 () Bool)

(assert (=> bs!1867139 m!7718616))

(assert (=> b!7017953 d!2187679))

(declare-fun d!2187683 () Bool)

(assert (=> d!2187683 (isDefined!13536 (findConcatSeparationZippers!351 lt!2509483 (set.insert ct2!306 (as set.empty (Set Context!12716))) Nil!67508 (t!381387 s!7408) (t!381387 s!7408)))))

(declare-fun lt!2509640 () Unit!161406)

(declare-fun choose!52880 ((Set Context!12716) Context!12716 List!67632) Unit!161406)

(assert (=> d!2187683 (= lt!2509640 (choose!52880 lt!2509483 ct2!306 (t!381387 s!7408)))))

(assert (=> d!2187683 (matchZipper!2902 (appendTo!483 lt!2509483 ct2!306) (t!381387 s!7408))))

(assert (=> d!2187683 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!351 lt!2509483 ct2!306 (t!381387 s!7408)) lt!2509640)))

(declare-fun bs!1867140 () Bool)

(assert (= bs!1867140 d!2187683))

(declare-fun m!7718618 () Bool)

(assert (=> bs!1867140 m!7718618))

(declare-fun m!7718620 () Bool)

(assert (=> bs!1867140 m!7718620))

(assert (=> bs!1867140 m!7718216))

(assert (=> bs!1867140 m!7718208))

(declare-fun m!7718622 () Bool)

(assert (=> bs!1867140 m!7718622))

(declare-fun m!7718624 () Bool)

(assert (=> bs!1867140 m!7718624))

(assert (=> bs!1867140 m!7718208))

(assert (=> bs!1867140 m!7718216))

(assert (=> bs!1867140 m!7718618))

(assert (=> b!7017953 d!2187683))

(declare-fun d!2187685 () Bool)

(declare-fun c!1304115 () Bool)

(assert (=> d!2187685 (= c!1304115 (isEmpty!39429 (_1!37306 lt!2509485)))))

(declare-fun e!4218769 () Bool)

(assert (=> d!2187685 (= (matchZipper!2902 lt!2509483 (_1!37306 lt!2509485)) e!4218769)))

(declare-fun b!7018207 () Bool)

(assert (=> b!7018207 (= e!4218769 (nullableZipper!2509 lt!2509483))))

(declare-fun b!7018208 () Bool)

(assert (=> b!7018208 (= e!4218769 (matchZipper!2902 (derivationStepZipper!2842 lt!2509483 (head!14199 (_1!37306 lt!2509485))) (tail!13460 (_1!37306 lt!2509485))))))

(assert (= (and d!2187685 c!1304115) b!7018207))

(assert (= (and d!2187685 (not c!1304115)) b!7018208))

(declare-fun m!7718626 () Bool)

(assert (=> d!2187685 m!7718626))

(declare-fun m!7718628 () Bool)

(assert (=> b!7018207 m!7718628))

(declare-fun m!7718630 () Bool)

(assert (=> b!7018208 m!7718630))

(assert (=> b!7018208 m!7718630))

(declare-fun m!7718632 () Bool)

(assert (=> b!7018208 m!7718632))

(declare-fun m!7718634 () Bool)

(assert (=> b!7018208 m!7718634))

(assert (=> b!7018208 m!7718632))

(assert (=> b!7018208 m!7718634))

(declare-fun m!7718636 () Bool)

(assert (=> b!7018208 m!7718636))

(assert (=> b!7017953 d!2187685))

(declare-fun d!2187687 () Bool)

(declare-fun isEmpty!39430 (Option!16835) Bool)

(assert (=> d!2187687 (= (isDefined!13536 lt!2509465) (not (isEmpty!39430 lt!2509465)))))

(declare-fun bs!1867141 () Bool)

(assert (= bs!1867141 d!2187687))

(declare-fun m!7718638 () Bool)

(assert (=> bs!1867141 m!7718638))

(assert (=> b!7017953 d!2187687))

(declare-fun d!2187689 () Bool)

(declare-fun nullableFct!2702 (Regex!17362) Bool)

(assert (=> d!2187689 (= (nullable!7122 (h!73955 (exprs!6858 lt!2509474))) (nullableFct!2702 (h!73955 (exprs!6858 lt!2509474))))))

(declare-fun bs!1867142 () Bool)

(assert (= bs!1867142 d!2187689))

(declare-fun m!7718640 () Bool)

(assert (=> bs!1867142 m!7718640))

(assert (=> b!7017962 d!2187689))

(declare-fun d!2187691 () Bool)

(assert (=> d!2187691 (= (tail!13458 (exprs!6858 lt!2509474)) (t!381386 (exprs!6858 lt!2509474)))))

(assert (=> b!7017962 d!2187691))

(declare-fun d!2187693 () Bool)

(declare-fun e!4218775 () Bool)

(assert (=> d!2187693 e!4218775))

(declare-fun res!2864447 () Bool)

(assert (=> d!2187693 (=> (not res!2864447) (not e!4218775))))

(declare-fun lt!2509643 () List!67632)

(declare-fun content!13432 (List!67632) (Set C!34994))

(assert (=> d!2187693 (= res!2864447 (= (content!13432 lt!2509643) (set.union (content!13432 (_1!37306 lt!2509485)) (content!13432 (_2!37306 lt!2509485)))))))

(declare-fun e!4218774 () List!67632)

(assert (=> d!2187693 (= lt!2509643 e!4218774)))

(declare-fun c!1304118 () Bool)

(assert (=> d!2187693 (= c!1304118 (is-Nil!67508 (_1!37306 lt!2509485)))))

(assert (=> d!2187693 (= (++!15389 (_1!37306 lt!2509485) (_2!37306 lt!2509485)) lt!2509643)))

(declare-fun b!7018220 () Bool)

(assert (=> b!7018220 (= e!4218775 (or (not (= (_2!37306 lt!2509485) Nil!67508)) (= lt!2509643 (_1!37306 lt!2509485))))))

(declare-fun b!7018218 () Bool)

(assert (=> b!7018218 (= e!4218774 (Cons!67508 (h!73956 (_1!37306 lt!2509485)) (++!15389 (t!381387 (_1!37306 lt!2509485)) (_2!37306 lt!2509485))))))

(declare-fun b!7018217 () Bool)

(assert (=> b!7018217 (= e!4218774 (_2!37306 lt!2509485))))

(declare-fun b!7018219 () Bool)

(declare-fun res!2864446 () Bool)

(assert (=> b!7018219 (=> (not res!2864446) (not e!4218775))))

(declare-fun size!41008 (List!67632) Int)

(assert (=> b!7018219 (= res!2864446 (= (size!41008 lt!2509643) (+ (size!41008 (_1!37306 lt!2509485)) (size!41008 (_2!37306 lt!2509485)))))))

(assert (= (and d!2187693 c!1304118) b!7018217))

(assert (= (and d!2187693 (not c!1304118)) b!7018218))

(assert (= (and d!2187693 res!2864447) b!7018219))

(assert (= (and b!7018219 res!2864446) b!7018220))

(declare-fun m!7718642 () Bool)

(assert (=> d!2187693 m!7718642))

(declare-fun m!7718644 () Bool)

(assert (=> d!2187693 m!7718644))

(declare-fun m!7718646 () Bool)

(assert (=> d!2187693 m!7718646))

(declare-fun m!7718648 () Bool)

(assert (=> b!7018218 m!7718648))

(declare-fun m!7718650 () Bool)

(assert (=> b!7018219 m!7718650))

(declare-fun m!7718652 () Bool)

(assert (=> b!7018219 m!7718652))

(declare-fun m!7718654 () Bool)

(assert (=> b!7018219 m!7718654))

(assert (=> b!7017966 d!2187693))

(declare-fun d!2187695 () Bool)

(declare-fun c!1304119 () Bool)

(assert (=> d!2187695 (= c!1304119 (isEmpty!39429 lt!2509464))))

(declare-fun e!4218776 () Bool)

(assert (=> d!2187695 (= (matchZipper!2902 lt!2509484 lt!2509464) e!4218776)))

(declare-fun b!7018221 () Bool)

(assert (=> b!7018221 (= e!4218776 (nullableZipper!2509 lt!2509484))))

(declare-fun b!7018222 () Bool)

(assert (=> b!7018222 (= e!4218776 (matchZipper!2902 (derivationStepZipper!2842 lt!2509484 (head!14199 lt!2509464)) (tail!13460 lt!2509464)))))

(assert (= (and d!2187695 c!1304119) b!7018221))

(assert (= (and d!2187695 (not c!1304119)) b!7018222))

(declare-fun m!7718656 () Bool)

(assert (=> d!2187695 m!7718656))

(declare-fun m!7718658 () Bool)

(assert (=> b!7018221 m!7718658))

(declare-fun m!7718660 () Bool)

(assert (=> b!7018222 m!7718660))

(assert (=> b!7018222 m!7718660))

(declare-fun m!7718662 () Bool)

(assert (=> b!7018222 m!7718662))

(declare-fun m!7718664 () Bool)

(assert (=> b!7018222 m!7718664))

(assert (=> b!7018222 m!7718662))

(assert (=> b!7018222 m!7718664))

(declare-fun m!7718666 () Bool)

(assert (=> b!7018222 m!7718666))

(assert (=> b!7017956 d!2187695))

(declare-fun d!2187697 () Bool)

(declare-fun e!4218778 () Bool)

(assert (=> d!2187697 e!4218778))

(declare-fun res!2864449 () Bool)

(assert (=> d!2187697 (=> (not res!2864449) (not e!4218778))))

(declare-fun lt!2509644 () List!67632)

(assert (=> d!2187697 (= res!2864449 (= (content!13432 lt!2509644) (set.union (content!13432 Nil!67508) (content!13432 s!7408))))))

(declare-fun e!4218777 () List!67632)

(assert (=> d!2187697 (= lt!2509644 e!4218777)))

(declare-fun c!1304120 () Bool)

(assert (=> d!2187697 (= c!1304120 (is-Nil!67508 Nil!67508))))

(assert (=> d!2187697 (= (++!15389 Nil!67508 s!7408) lt!2509644)))

(declare-fun b!7018226 () Bool)

(assert (=> b!7018226 (= e!4218778 (or (not (= s!7408 Nil!67508)) (= lt!2509644 Nil!67508)))))

(declare-fun b!7018224 () Bool)

(assert (=> b!7018224 (= e!4218777 (Cons!67508 (h!73956 Nil!67508) (++!15389 (t!381387 Nil!67508) s!7408)))))

(declare-fun b!7018223 () Bool)

(assert (=> b!7018223 (= e!4218777 s!7408)))

(declare-fun b!7018225 () Bool)

(declare-fun res!2864448 () Bool)

(assert (=> b!7018225 (=> (not res!2864448) (not e!4218778))))

(assert (=> b!7018225 (= res!2864448 (= (size!41008 lt!2509644) (+ (size!41008 Nil!67508) (size!41008 s!7408))))))

(assert (= (and d!2187697 c!1304120) b!7018223))

(assert (= (and d!2187697 (not c!1304120)) b!7018224))

(assert (= (and d!2187697 res!2864449) b!7018225))

(assert (= (and b!7018225 res!2864448) b!7018226))

(declare-fun m!7718668 () Bool)

(assert (=> d!2187697 m!7718668))

(declare-fun m!7718670 () Bool)

(assert (=> d!2187697 m!7718670))

(declare-fun m!7718672 () Bool)

(assert (=> d!2187697 m!7718672))

(declare-fun m!7718674 () Bool)

(assert (=> b!7018224 m!7718674))

(declare-fun m!7718676 () Bool)

(assert (=> b!7018225 m!7718676))

(declare-fun m!7718678 () Bool)

(assert (=> b!7018225 m!7718678))

(declare-fun m!7718680 () Bool)

(assert (=> b!7018225 m!7718680))

(assert (=> b!7017965 d!2187697))

(declare-fun d!2187699 () Bool)

(assert (=> d!2187699 (= (isDefined!13536 (findConcatSeparationZippers!351 lt!2509484 lt!2509476 Nil!67508 s!7408 s!7408)) (not (isEmpty!39430 (findConcatSeparationZippers!351 lt!2509484 lt!2509476 Nil!67508 s!7408 s!7408))))))

(declare-fun bs!1867143 () Bool)

(assert (= bs!1867143 d!2187699))

(assert (=> bs!1867143 m!7718256))

(declare-fun m!7718682 () Bool)

(assert (=> bs!1867143 m!7718682))

(assert (=> b!7017965 d!2187699))

(declare-fun b!7018227 () Bool)

(declare-fun res!2864453 () Bool)

(declare-fun e!4218779 () Bool)

(assert (=> b!7018227 (=> (not res!2864453) (not e!4218779))))

(declare-fun lt!2509646 () Option!16835)

(assert (=> b!7018227 (= res!2864453 (matchZipper!2902 lt!2509476 (_2!37306 (get!23675 lt!2509646))))))

(declare-fun b!7018228 () Bool)

(declare-fun res!2864450 () Bool)

(assert (=> b!7018228 (=> (not res!2864450) (not e!4218779))))

(assert (=> b!7018228 (= res!2864450 (matchZipper!2902 lt!2509484 (_1!37306 (get!23675 lt!2509646))))))

(declare-fun b!7018229 () Bool)

(declare-fun lt!2509647 () Unit!161406)

(declare-fun lt!2509645 () Unit!161406)

(assert (=> b!7018229 (= lt!2509647 lt!2509645)))

(assert (=> b!7018229 (= (++!15389 (++!15389 Nil!67508 (Cons!67508 (h!73956 s!7408) Nil!67508)) (t!381387 s!7408)) s!7408)))

(assert (=> b!7018229 (= lt!2509645 (lemmaMoveElementToOtherListKeepsConcatEq!2905 Nil!67508 (h!73956 s!7408) (t!381387 s!7408) s!7408))))

(declare-fun e!4218783 () Option!16835)

(assert (=> b!7018229 (= e!4218783 (findConcatSeparationZippers!351 lt!2509484 lt!2509476 (++!15389 Nil!67508 (Cons!67508 (h!73956 s!7408) Nil!67508)) (t!381387 s!7408) s!7408))))

(declare-fun d!2187701 () Bool)

(declare-fun e!4218781 () Bool)

(assert (=> d!2187701 e!4218781))

(declare-fun res!2864452 () Bool)

(assert (=> d!2187701 (=> res!2864452 e!4218781)))

(assert (=> d!2187701 (= res!2864452 e!4218779)))

(declare-fun res!2864451 () Bool)

(assert (=> d!2187701 (=> (not res!2864451) (not e!4218779))))

(assert (=> d!2187701 (= res!2864451 (isDefined!13536 lt!2509646))))

(declare-fun e!4218780 () Option!16835)

(assert (=> d!2187701 (= lt!2509646 e!4218780)))

(declare-fun c!1304121 () Bool)

(declare-fun e!4218782 () Bool)

(assert (=> d!2187701 (= c!1304121 e!4218782)))

(declare-fun res!2864454 () Bool)

(assert (=> d!2187701 (=> (not res!2864454) (not e!4218782))))

(assert (=> d!2187701 (= res!2864454 (matchZipper!2902 lt!2509484 Nil!67508))))

(assert (=> d!2187701 (= (++!15389 Nil!67508 s!7408) s!7408)))

(assert (=> d!2187701 (= (findConcatSeparationZippers!351 lt!2509484 lt!2509476 Nil!67508 s!7408 s!7408) lt!2509646)))

(declare-fun b!7018230 () Bool)

(assert (=> b!7018230 (= e!4218780 (Some!16834 (tuple2!68007 Nil!67508 s!7408)))))

(declare-fun b!7018231 () Bool)

(assert (=> b!7018231 (= e!4218782 (matchZipper!2902 lt!2509476 s!7408))))

(declare-fun b!7018232 () Bool)

(assert (=> b!7018232 (= e!4218779 (= (++!15389 (_1!37306 (get!23675 lt!2509646)) (_2!37306 (get!23675 lt!2509646))) s!7408))))

(declare-fun b!7018233 () Bool)

(assert (=> b!7018233 (= e!4218783 None!16834)))

(declare-fun b!7018234 () Bool)

(assert (=> b!7018234 (= e!4218781 (not (isDefined!13536 lt!2509646)))))

(declare-fun b!7018235 () Bool)

(assert (=> b!7018235 (= e!4218780 e!4218783)))

(declare-fun c!1304122 () Bool)

(assert (=> b!7018235 (= c!1304122 (is-Nil!67508 s!7408))))

(assert (= (and d!2187701 res!2864454) b!7018231))

(assert (= (and d!2187701 c!1304121) b!7018230))

(assert (= (and d!2187701 (not c!1304121)) b!7018235))

(assert (= (and b!7018235 c!1304122) b!7018233))

(assert (= (and b!7018235 (not c!1304122)) b!7018229))

(assert (= (and d!2187701 res!2864451) b!7018228))

(assert (= (and b!7018228 res!2864450) b!7018227))

(assert (= (and b!7018227 res!2864453) b!7018232))

(assert (= (and d!2187701 (not res!2864452)) b!7018234))

(declare-fun m!7718684 () Bool)

(assert (=> b!7018234 m!7718684))

(declare-fun m!7718686 () Bool)

(assert (=> b!7018229 m!7718686))

(assert (=> b!7018229 m!7718686))

(declare-fun m!7718688 () Bool)

(assert (=> b!7018229 m!7718688))

(declare-fun m!7718690 () Bool)

(assert (=> b!7018229 m!7718690))

(assert (=> b!7018229 m!7718686))

(declare-fun m!7718692 () Bool)

(assert (=> b!7018229 m!7718692))

(assert (=> d!2187701 m!7718684))

(declare-fun m!7718694 () Bool)

(assert (=> d!2187701 m!7718694))

(assert (=> d!2187701 m!7718254))

(declare-fun m!7718696 () Bool)

(assert (=> b!7018227 m!7718696))

(declare-fun m!7718698 () Bool)

(assert (=> b!7018227 m!7718698))

(assert (=> b!7018232 m!7718696))

(declare-fun m!7718700 () Bool)

(assert (=> b!7018232 m!7718700))

(declare-fun m!7718702 () Bool)

(assert (=> b!7018231 m!7718702))

(assert (=> b!7018228 m!7718696))

(declare-fun m!7718704 () Bool)

(assert (=> b!7018228 m!7718704))

(assert (=> b!7017965 d!2187701))

(declare-fun d!2187703 () Bool)

(assert (=> d!2187703 (isDefined!13536 (findConcatSeparationZippers!351 lt!2509484 lt!2509476 Nil!67508 s!7408 s!7408))))

(declare-fun lt!2509652 () Unit!161406)

(declare-fun choose!52882 ((Set Context!12716) (Set Context!12716) List!67632 List!67632 List!67632 List!67632 List!67632) Unit!161406)

(assert (=> d!2187703 (= lt!2509652 (choose!52882 lt!2509484 lt!2509476 lt!2509464 (_2!37306 lt!2509485) s!7408 Nil!67508 s!7408))))

(assert (=> d!2187703 (matchZipper!2902 lt!2509484 lt!2509464)))

(assert (=> d!2187703 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!23 lt!2509484 lt!2509476 lt!2509464 (_2!37306 lt!2509485) s!7408 Nil!67508 s!7408) lt!2509652)))

(declare-fun bs!1867145 () Bool)

(assert (= bs!1867145 d!2187703))

(assert (=> bs!1867145 m!7718256))

(assert (=> bs!1867145 m!7718256))

(assert (=> bs!1867145 m!7718258))

(declare-fun m!7718718 () Bool)

(assert (=> bs!1867145 m!7718718))

(assert (=> bs!1867145 m!7718206))

(assert (=> b!7017965 d!2187703))

(declare-fun condSetEmpty!48585 () Bool)

(assert (=> setNonEmpty!48579 (= condSetEmpty!48585 (= setRest!48579 (as set.empty (Set Context!12716))))))

(declare-fun setRes!48585 () Bool)

(assert (=> setNonEmpty!48579 (= tp!1933484 setRes!48585)))

(declare-fun setIsEmpty!48585 () Bool)

(assert (=> setIsEmpty!48585 setRes!48585))

(declare-fun e!4218792 () Bool)

(declare-fun setNonEmpty!48585 () Bool)

(declare-fun tp!1933502 () Bool)

(declare-fun setElem!48585 () Context!12716)

(assert (=> setNonEmpty!48585 (= setRes!48585 (and tp!1933502 (inv!86265 setElem!48585) e!4218792))))

(declare-fun setRest!48585 () (Set Context!12716))

(assert (=> setNonEmpty!48585 (= setRest!48579 (set.union (set.insert setElem!48585 (as set.empty (Set Context!12716))) setRest!48585))))

(declare-fun b!7018251 () Bool)

(declare-fun tp!1933503 () Bool)

(assert (=> b!7018251 (= e!4218792 tp!1933503)))

(assert (= (and setNonEmpty!48579 condSetEmpty!48585) setIsEmpty!48585))

(assert (= (and setNonEmpty!48579 (not condSetEmpty!48585)) setNonEmpty!48585))

(assert (= setNonEmpty!48585 b!7018251))

(declare-fun m!7718726 () Bool)

(assert (=> setNonEmpty!48585 m!7718726))

(declare-fun b!7018256 () Bool)

(declare-fun e!4218795 () Bool)

(declare-fun tp!1933508 () Bool)

(declare-fun tp!1933509 () Bool)

(assert (=> b!7018256 (= e!4218795 (and tp!1933508 tp!1933509))))

(assert (=> b!7017963 (= tp!1933482 e!4218795)))

(assert (= (and b!7017963 (is-Cons!67507 (exprs!6858 setElem!48579))) b!7018256))

(declare-fun b!7018261 () Bool)

(declare-fun e!4218798 () Bool)

(declare-fun tp!1933512 () Bool)

(assert (=> b!7018261 (= e!4218798 (and tp_is_empty!43949 tp!1933512))))

(assert (=> b!7017957 (= tp!1933485 e!4218798)))

(assert (= (and b!7017957 (is-Cons!67508 (t!381387 s!7408))) b!7018261))

(declare-fun b!7018262 () Bool)

(declare-fun e!4218799 () Bool)

(declare-fun tp!1933513 () Bool)

(declare-fun tp!1933514 () Bool)

(assert (=> b!7018262 (= e!4218799 (and tp!1933513 tp!1933514))))

(assert (=> b!7017969 (= tp!1933483 e!4218799)))

(assert (= (and b!7017969 (is-Cons!67507 (exprs!6858 ct2!306))) b!7018262))

(declare-fun b_lambda!264891 () Bool)

(assert (= b_lambda!264883 (or b!7017954 b_lambda!264891)))

(declare-fun bs!1867147 () Bool)

(declare-fun d!2187711 () Bool)

(assert (= bs!1867147 (and d!2187711 b!7017954)))

(assert (=> bs!1867147 (= (dynLambda!27189 lambda!410427 lt!2509474) (derivationStepZipperUp!2012 lt!2509474 (h!73956 s!7408)))))

(assert (=> bs!1867147 m!7718270))

(assert (=> d!2187625 d!2187711))

(declare-fun b_lambda!264893 () Bool)

(assert (= b_lambda!264889 (or b!7017954 b_lambda!264893)))

(declare-fun bs!1867148 () Bool)

(declare-fun d!2187713 () Bool)

(assert (= bs!1867148 (and d!2187713 b!7017954)))

(assert (=> bs!1867148 (= (dynLambda!27189 lambda!410427 lt!2509466) (derivationStepZipperUp!2012 lt!2509466 (h!73956 s!7408)))))

(assert (=> bs!1867148 m!7718284))

(assert (=> d!2187653 d!2187713))

(declare-fun b_lambda!264895 () Bool)

(assert (= b_lambda!264885 (or b!7017952 b_lambda!264895)))

(declare-fun bs!1867149 () Bool)

(declare-fun d!2187715 () Bool)

(assert (= bs!1867149 (and d!2187715 b!7017952)))

(declare-fun lt!2509654 () Unit!161406)

(assert (=> bs!1867149 (= lt!2509654 (lemmaConcatPreservesForall!698 (exprs!6858 lt!2509598) (exprs!6858 ct2!306) lambda!410426))))

(assert (=> bs!1867149 (= (dynLambda!27190 lambda!410425 lt!2509598) (Context!12717 (++!15388 (exprs!6858 lt!2509598) (exprs!6858 ct2!306))))))

(declare-fun m!7718728 () Bool)

(assert (=> bs!1867149 m!7718728))

(declare-fun m!7718730 () Bool)

(assert (=> bs!1867149 m!7718730))

(assert (=> d!2187635 d!2187715))

(declare-fun b_lambda!264897 () Bool)

(assert (= b_lambda!264887 (or b!7017961 b_lambda!264897)))

(declare-fun bs!1867150 () Bool)

(declare-fun d!2187717 () Bool)

(assert (= bs!1867150 (and d!2187717 b!7017961)))

(assert (=> bs!1867150 (= (dynLambda!27192 lambda!410424 lt!2509609) (matchZipper!2902 (set.insert lt!2509609 (as set.empty (Set Context!12716))) s!7408))))

(declare-fun m!7718732 () Bool)

(assert (=> bs!1867150 m!7718732))

(assert (=> bs!1867150 m!7718732))

(declare-fun m!7718734 () Bool)

(assert (=> bs!1867150 m!7718734))

(assert (=> d!2187647 d!2187717))

(push 1)

(assert (not b!7018228))

(assert (not d!2187687))

(assert (not bm!637495))

(assert tp_is_empty!43949)

(assert (not b!7018222))

(assert (not b_lambda!264895))

(assert (not b!7018135))

(assert (not b!7018118))

(assert (not d!2187617))

(assert (not b!7018166))

(assert (not b_lambda!264891))

(assert (not b!7018044))

(assert (not d!2187703))

(assert (not b!7018227))

(assert (not bm!637506))

(assert (not d!2187619))

(assert (not b!7018224))

(assert (not b!7018207))

(assert (not b!7018234))

(assert (not b_lambda!264893))

(assert (not d!2187631))

(assert (not b!7018219))

(assert (not bm!637499))

(assert (not b!7018138))

(assert (not d!2187635))

(assert (not d!2187667))

(assert (not d!2187669))

(assert (not bs!1867149))

(assert (not d!2187661))

(assert (not d!2187649))

(assert (not b!7018167))

(assert (not d!2187679))

(assert (not d!2187611))

(assert (not b!7018174))

(assert (not b!7018142))

(assert (not d!2187645))

(assert (not d!2187627))

(assert (not d!2187683))

(assert (not d!2187641))

(assert (not b!7018225))

(assert (not b!7018104))

(assert (not setNonEmpty!48585))

(assert (not b!7018109))

(assert (not b!7018231))

(assert (not bm!637505))

(assert (not b!7018256))

(assert (not b!7018139))

(assert (not b!7018172))

(assert (not d!2187701))

(assert (not b!7018141))

(assert (not d!2187625))

(assert (not b!7018170))

(assert (not b!7018122))

(assert (not d!2187673))

(assert (not b!7018232))

(assert (not b!7018169))

(assert (not d!2187693))

(assert (not d!2187639))

(assert (not d!2187697))

(assert (not b!7018068))

(assert (not b!7018218))

(assert (not d!2187621))

(assert (not b!7018221))

(assert (not b!7018089))

(assert (not b_lambda!264897))

(assert (not b!7018110))

(assert (not d!2187637))

(assert (not bm!637509))

(assert (not d!2187613))

(assert (not bs!1867147))

(assert (not b!7018251))

(assert (not d!2187695))

(assert (not d!2187653))

(assert (not bm!637503))

(assert (not d!2187657))

(assert (not b!7018134))

(assert (not d!2187633))

(assert (not b!7018121))

(assert (not d!2187689))

(assert (not b!7018088))

(assert (not d!2187655))

(assert (not d!2187659))

(assert (not b!7018103))

(assert (not bm!637496))

(assert (not b!7018261))

(assert (not d!2187699))

(assert (not b!7018045))

(assert (not bm!637502))

(assert (not b!7018165))

(assert (not bs!1867148))

(assert (not b!7018262))

(assert (not bs!1867150))

(assert (not b!7018229))

(assert (not d!2187647))

(assert (not d!2187685))

(assert (not b!7018208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

