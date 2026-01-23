; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!676990 () Bool)

(assert start!676990)

(declare-fun b!7020342 () Bool)

(assert (=> b!7020342 true))

(declare-fun b!7020351 () Bool)

(assert (=> b!7020351 true))

(declare-fun b!7020352 () Bool)

(assert (=> b!7020352 true))

(declare-fun b!7020340 () Bool)

(declare-fun e!4220059 () Bool)

(declare-fun e!4220058 () Bool)

(assert (=> b!7020340 (= e!4220059 e!4220058)))

(declare-fun res!2865569 () Bool)

(assert (=> b!7020340 (=> res!2865569 e!4220058)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35036 0))(
  ( (C!35037 (val!27220 Int)) )
))
(declare-datatypes ((Regex!17383 0))(
  ( (ElementMatch!17383 (c!1304652 C!35036)) (Concat!26228 (regOne!35278 Regex!17383) (regTwo!35278 Regex!17383)) (EmptyExpr!17383) (Star!17383 (reg!17712 Regex!17383)) (EmptyLang!17383) (Union!17383 (regOne!35279 Regex!17383) (regTwo!35279 Regex!17383)) )
))
(declare-datatypes ((List!67694 0))(
  ( (Nil!67570) (Cons!67570 (h!74018 Regex!17383) (t!381449 List!67694)) )
))
(declare-datatypes ((Context!12758 0))(
  ( (Context!12759 (exprs!6879 List!67694)) )
))
(declare-fun lt!2511426 () (InoxSet Context!12758))

(declare-fun lt!2511417 () (InoxSet Context!12758))

(assert (=> b!7020340 (= res!2865569 (not (= lt!2511426 lt!2511417)))))

(declare-fun lt!2511422 () Context!12758)

(assert (=> b!7020340 (= lt!2511426 (store ((as const (Array Context!12758 Bool)) false) lt!2511422 true))))

(declare-fun lambda!411172 () Int)

(declare-datatypes ((Unit!161448 0))(
  ( (Unit!161449) )
))
(declare-fun lt!2511424 () Unit!161448)

(declare-fun ct2!306 () Context!12758)

(declare-fun lt!2511419 () Context!12758)

(declare-fun lemmaConcatPreservesForall!719 (List!67694 List!67694 Int) Unit!161448)

(assert (=> b!7020340 (= lt!2511424 (lemmaConcatPreservesForall!719 (exprs!6879 lt!2511419) (exprs!6879 ct2!306) lambda!411172))))

(declare-fun b!7020341 () Bool)

(declare-fun res!2865568 () Bool)

(declare-fun e!4220068 () Bool)

(assert (=> b!7020341 (=> res!2865568 e!4220068)))

(get-info :version)

(assert (=> b!7020341 (= res!2865568 ((_ is Cons!67570) (exprs!6879 lt!2511419)))))

(declare-fun e!4220060 () Bool)

(declare-fun e!4220067 () Bool)

(assert (=> b!7020342 (= e!4220060 (not e!4220067))))

(declare-fun res!2865570 () Bool)

(assert (=> b!7020342 (=> res!2865570 e!4220067)))

(declare-datatypes ((List!67695 0))(
  ( (Nil!67571) (Cons!67571 (h!74019 C!35036) (t!381450 List!67695)) )
))
(declare-fun s!7408 () List!67695)

(declare-fun matchZipper!2923 ((InoxSet Context!12758) List!67695) Bool)

(assert (=> b!7020342 (= res!2865570 (not (matchZipper!2923 lt!2511417 s!7408)))))

(declare-fun lt!2511414 () Context!12758)

(assert (=> b!7020342 (= lt!2511417 (store ((as const (Array Context!12758 Bool)) false) lt!2511414 true))))

(declare-fun lt!2511413 () (InoxSet Context!12758))

(declare-fun lambda!411170 () Int)

(declare-fun getWitness!1352 ((InoxSet Context!12758) Int) Context!12758)

(assert (=> b!7020342 (= lt!2511414 (getWitness!1352 lt!2511413 lambda!411170))))

(declare-datatypes ((List!67696 0))(
  ( (Nil!67572) (Cons!67572 (h!74020 Context!12758) (t!381451 List!67696)) )
))
(declare-fun lt!2511416 () List!67696)

(declare-fun exists!3263 (List!67696 Int) Bool)

(assert (=> b!7020342 (exists!3263 lt!2511416 lambda!411170)))

(declare-fun lt!2511420 () Unit!161448)

(declare-fun lemmaZipperMatchesExistsMatchingContext!352 (List!67696 List!67695) Unit!161448)

(assert (=> b!7020342 (= lt!2511420 (lemmaZipperMatchesExistsMatchingContext!352 lt!2511416 s!7408))))

(declare-fun toList!10743 ((InoxSet Context!12758)) List!67696)

(assert (=> b!7020342 (= lt!2511416 (toList!10743 lt!2511413))))

(declare-fun b!7020343 () Bool)

(declare-fun e!4220061 () Bool)

(declare-fun tp!1933907 () Bool)

(assert (=> b!7020343 (= e!4220061 tp!1933907)))

(declare-fun b!7020344 () Bool)

(declare-fun e!4220063 () Bool)

(declare-fun tp_is_empty!43991 () Bool)

(declare-fun tp!1933906 () Bool)

(assert (=> b!7020344 (= e!4220063 (and tp_is_empty!43991 tp!1933906))))

(declare-fun b!7020345 () Bool)

(declare-fun e!4220066 () Bool)

(declare-fun tp!1933904 () Bool)

(assert (=> b!7020345 (= e!4220066 tp!1933904)))

(declare-fun b!7020346 () Bool)

(declare-fun res!2865564 () Bool)

(assert (=> b!7020346 (=> res!2865564 e!4220067)))

(assert (=> b!7020346 (= res!2865564 (not (select lt!2511413 lt!2511414)))))

(declare-fun b!7020347 () Bool)

(declare-fun res!2865567 () Bool)

(assert (=> b!7020347 (=> (not res!2865567) (not e!4220060))))

(assert (=> b!7020347 (= res!2865567 ((_ is Cons!67571) s!7408))))

(declare-fun b!7020348 () Bool)

(declare-fun e!4220064 () Bool)

(assert (=> b!7020348 (= e!4220068 e!4220064)))

(declare-fun res!2865566 () Bool)

(assert (=> b!7020348 (=> res!2865566 e!4220064)))

(assert (=> b!7020348 (= res!2865566 (not (= lt!2511422 ct2!306)))))

(declare-fun lt!2511411 () Unit!161448)

(assert (=> b!7020348 (= lt!2511411 (lemmaConcatPreservesForall!719 (exprs!6879 lt!2511419) (exprs!6879 ct2!306) lambda!411172))))

(declare-fun setRes!48672 () Bool)

(declare-fun setNonEmpty!48672 () Bool)

(declare-fun setElem!48672 () Context!12758)

(declare-fun tp!1933905 () Bool)

(declare-fun inv!86316 (Context!12758) Bool)

(assert (=> setNonEmpty!48672 (= setRes!48672 (and tp!1933905 (inv!86316 setElem!48672) e!4220066))))

(declare-fun z1!570 () (InoxSet Context!12758))

(declare-fun setRest!48672 () (InoxSet Context!12758))

(assert (=> setNonEmpty!48672 (= z1!570 ((_ map or) (store ((as const (Array Context!12758 Bool)) false) setElem!48672 true) setRest!48672))))

(declare-fun b!7020349 () Bool)

(declare-fun e!4220062 () Bool)

(declare-fun e!4220065 () Bool)

(assert (=> b!7020349 (= e!4220062 e!4220065)))

(declare-fun res!2865571 () Bool)

(assert (=> b!7020349 (=> res!2865571 e!4220065)))

(declare-fun lt!2511425 () Bool)

(assert (=> b!7020349 (= res!2865571 (not lt!2511425))))

(assert (=> b!7020349 (= lt!2511425 true)))

(declare-fun lt!2511412 () (InoxSet Context!12758))

(assert (=> b!7020349 (= lt!2511425 (matchZipper!2923 lt!2511412 Nil!67571))))

(declare-fun lt!2511427 () Unit!161448)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!14 ((InoxSet Context!12758) List!67695) Unit!161448)

(assert (=> b!7020349 (= lt!2511427 (lemmaZipperOfEmptyContextMatchesEmptyString!14 lt!2511412 Nil!67571))))

(assert (=> b!7020349 (= lt!2511412 (store ((as const (Array Context!12758 Bool)) false) lt!2511419 true))))

(declare-fun b!7020350 () Bool)

(assert (=> b!7020350 (= e!4220065 true)))

(declare-fun lt!2511428 () (InoxSet Context!12758))

(declare-datatypes ((tuple2!68032 0))(
  ( (tuple2!68033 (_1!37319 List!67695) (_2!37319 List!67695)) )
))
(declare-datatypes ((Option!16848 0))(
  ( (None!16847) (Some!16847 (v!53125 tuple2!68032)) )
))
(declare-fun isDefined!13549 (Option!16848) Bool)

(declare-fun findConcatSeparationZippers!364 ((InoxSet Context!12758) (InoxSet Context!12758) List!67695 List!67695 List!67695) Option!16848)

(assert (=> b!7020350 (isDefined!13549 (findConcatSeparationZippers!364 lt!2511412 lt!2511428 Nil!67571 s!7408 s!7408))))

(declare-fun lt!2511423 () Unit!161448)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!36 ((InoxSet Context!12758) (InoxSet Context!12758) List!67695 List!67695 List!67695 List!67695 List!67695) Unit!161448)

(assert (=> b!7020350 (= lt!2511423 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!36 lt!2511412 lt!2511428 Nil!67571 s!7408 s!7408 Nil!67571 s!7408))))

(assert (=> b!7020351 (= e!4220067 e!4220059)))

(declare-fun res!2865563 () Bool)

(assert (=> b!7020351 (=> res!2865563 e!4220059)))

(assert (=> b!7020351 (= res!2865563 (or (not (= lt!2511422 lt!2511414)) (not (select z1!570 lt!2511419))))))

(declare-fun ++!15423 (List!67694 List!67694) List!67694)

(assert (=> b!7020351 (= lt!2511422 (Context!12759 (++!15423 (exprs!6879 lt!2511419) (exprs!6879 ct2!306))))))

(declare-fun lt!2511418 () Unit!161448)

(assert (=> b!7020351 (= lt!2511418 (lemmaConcatPreservesForall!719 (exprs!6879 lt!2511419) (exprs!6879 ct2!306) lambda!411172))))

(declare-fun lambda!411171 () Int)

(declare-fun mapPost2!238 ((InoxSet Context!12758) Int Context!12758) Context!12758)

(assert (=> b!7020351 (= lt!2511419 (mapPost2!238 z1!570 lambda!411171 lt!2511414))))

(assert (=> b!7020352 (= e!4220058 e!4220068)))

(declare-fun res!2865562 () Bool)

(assert (=> b!7020352 (=> res!2865562 e!4220068)))

(declare-fun lt!2511415 () (InoxSet Context!12758))

(declare-fun derivationStepZipper!2863 ((InoxSet Context!12758) C!35036) (InoxSet Context!12758))

(assert (=> b!7020352 (= res!2865562 (not (= (derivationStepZipper!2863 lt!2511426 (h!74019 s!7408)) lt!2511415)))))

(declare-fun lambda!411173 () Int)

(declare-fun flatMap!2369 ((InoxSet Context!12758) Int) (InoxSet Context!12758))

(declare-fun derivationStepZipperUp!2033 (Context!12758 C!35036) (InoxSet Context!12758))

(assert (=> b!7020352 (= (flatMap!2369 lt!2511426 lambda!411173) (derivationStepZipperUp!2033 lt!2511422 (h!74019 s!7408)))))

(declare-fun lt!2511410 () Unit!161448)

(declare-fun lemmaFlatMapOnSingletonSet!1884 ((InoxSet Context!12758) Context!12758 Int) Unit!161448)

(assert (=> b!7020352 (= lt!2511410 (lemmaFlatMapOnSingletonSet!1884 lt!2511426 lt!2511422 lambda!411173))))

(assert (=> b!7020352 (= lt!2511415 (derivationStepZipperUp!2033 lt!2511422 (h!74019 s!7408)))))

(declare-fun lt!2511421 () Unit!161448)

(assert (=> b!7020352 (= lt!2511421 (lemmaConcatPreservesForall!719 (exprs!6879 lt!2511419) (exprs!6879 ct2!306) lambda!411172))))

(declare-fun b!7020353 () Bool)

(assert (=> b!7020353 (= e!4220064 e!4220062)))

(declare-fun res!2865565 () Bool)

(assert (=> b!7020353 (=> res!2865565 e!4220062)))

(assert (=> b!7020353 (= res!2865565 (not (matchZipper!2923 lt!2511428 s!7408)))))

(assert (=> b!7020353 (= lt!2511428 (store ((as const (Array Context!12758 Bool)) false) ct2!306 true))))

(declare-fun setIsEmpty!48672 () Bool)

(assert (=> setIsEmpty!48672 setRes!48672))

(declare-fun res!2865561 () Bool)

(assert (=> start!676990 (=> (not res!2865561) (not e!4220060))))

(assert (=> start!676990 (= res!2865561 (matchZipper!2923 lt!2511413 s!7408))))

(declare-fun appendTo!504 ((InoxSet Context!12758) Context!12758) (InoxSet Context!12758))

(assert (=> start!676990 (= lt!2511413 (appendTo!504 z1!570 ct2!306))))

(assert (=> start!676990 e!4220060))

(declare-fun condSetEmpty!48672 () Bool)

(assert (=> start!676990 (= condSetEmpty!48672 (= z1!570 ((as const (Array Context!12758 Bool)) false)))))

(assert (=> start!676990 setRes!48672))

(assert (=> start!676990 (and (inv!86316 ct2!306) e!4220061)))

(assert (=> start!676990 e!4220063))

(assert (= (and start!676990 res!2865561) b!7020347))

(assert (= (and b!7020347 res!2865567) b!7020342))

(assert (= (and b!7020342 (not res!2865570)) b!7020346))

(assert (= (and b!7020346 (not res!2865564)) b!7020351))

(assert (= (and b!7020351 (not res!2865563)) b!7020340))

(assert (= (and b!7020340 (not res!2865569)) b!7020352))

(assert (= (and b!7020352 (not res!2865562)) b!7020341))

(assert (= (and b!7020341 (not res!2865568)) b!7020348))

(assert (= (and b!7020348 (not res!2865566)) b!7020353))

(assert (= (and b!7020353 (not res!2865565)) b!7020349))

(assert (= (and b!7020349 (not res!2865571)) b!7020350))

(assert (= (and start!676990 condSetEmpty!48672) setIsEmpty!48672))

(assert (= (and start!676990 (not condSetEmpty!48672)) setNonEmpty!48672))

(assert (= setNonEmpty!48672 b!7020345))

(assert (= start!676990 b!7020343))

(assert (= (and start!676990 ((_ is Cons!67571) s!7408)) b!7020344))

(declare-fun m!7721836 () Bool)

(assert (=> b!7020352 m!7721836))

(declare-fun m!7721838 () Bool)

(assert (=> b!7020352 m!7721838))

(declare-fun m!7721840 () Bool)

(assert (=> b!7020352 m!7721840))

(declare-fun m!7721842 () Bool)

(assert (=> b!7020352 m!7721842))

(declare-fun m!7721844 () Bool)

(assert (=> b!7020352 m!7721844))

(declare-fun m!7721846 () Bool)

(assert (=> b!7020353 m!7721846))

(declare-fun m!7721848 () Bool)

(assert (=> b!7020353 m!7721848))

(declare-fun m!7721850 () Bool)

(assert (=> setNonEmpty!48672 m!7721850))

(declare-fun m!7721852 () Bool)

(assert (=> b!7020350 m!7721852))

(assert (=> b!7020350 m!7721852))

(declare-fun m!7721854 () Bool)

(assert (=> b!7020350 m!7721854))

(declare-fun m!7721856 () Bool)

(assert (=> b!7020350 m!7721856))

(declare-fun m!7721858 () Bool)

(assert (=> b!7020340 m!7721858))

(assert (=> b!7020340 m!7721838))

(declare-fun m!7721860 () Bool)

(assert (=> start!676990 m!7721860))

(declare-fun m!7721862 () Bool)

(assert (=> start!676990 m!7721862))

(declare-fun m!7721864 () Bool)

(assert (=> start!676990 m!7721864))

(declare-fun m!7721866 () Bool)

(assert (=> b!7020351 m!7721866))

(declare-fun m!7721868 () Bool)

(assert (=> b!7020351 m!7721868))

(assert (=> b!7020351 m!7721838))

(declare-fun m!7721870 () Bool)

(assert (=> b!7020351 m!7721870))

(assert (=> b!7020348 m!7721838))

(declare-fun m!7721872 () Bool)

(assert (=> b!7020349 m!7721872))

(declare-fun m!7721874 () Bool)

(assert (=> b!7020349 m!7721874))

(declare-fun m!7721876 () Bool)

(assert (=> b!7020349 m!7721876))

(declare-fun m!7721878 () Bool)

(assert (=> b!7020342 m!7721878))

(declare-fun m!7721880 () Bool)

(assert (=> b!7020342 m!7721880))

(declare-fun m!7721882 () Bool)

(assert (=> b!7020342 m!7721882))

(declare-fun m!7721884 () Bool)

(assert (=> b!7020342 m!7721884))

(declare-fun m!7721886 () Bool)

(assert (=> b!7020342 m!7721886))

(declare-fun m!7721888 () Bool)

(assert (=> b!7020342 m!7721888))

(declare-fun m!7721890 () Bool)

(assert (=> b!7020346 m!7721890))

(check-sat (not b!7020344) (not b!7020353) (not setNonEmpty!48672) (not start!676990) (not b!7020343) (not b!7020345) (not b!7020351) (not b!7020340) (not b!7020348) tp_is_empty!43991 (not b!7020350) (not b!7020342) (not b!7020349) (not b!7020352))
(check-sat)
