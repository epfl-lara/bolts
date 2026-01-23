; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!676642 () Bool)

(assert start!676642)

(declare-fun b!7018501 () Bool)

(assert (=> b!7018501 true))

(declare-fun b!7018511 () Bool)

(assert (=> b!7018511 true))

(declare-fun b!7018497 () Bool)

(assert (=> b!7018497 true))

(declare-fun setIsEmpty!48594 () Bool)

(declare-fun setRes!48594 () Bool)

(assert (=> setIsEmpty!48594 setRes!48594))

(declare-fun e!4218946 () Bool)

(declare-fun e!4218949 () Bool)

(assert (=> b!7018497 (= e!4218946 e!4218949)))

(declare-fun res!2864589 () Bool)

(assert (=> b!7018497 (=> res!2864589 e!4218949)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35000 0))(
  ( (C!35001 (val!27202 Int)) )
))
(declare-datatypes ((Regex!17365 0))(
  ( (ElementMatch!17365 (c!1304196 C!35000)) (Concat!26210 (regOne!35242 Regex!17365) (regTwo!35242 Regex!17365)) (EmptyExpr!17365) (Star!17365 (reg!17694 Regex!17365)) (EmptyLang!17365) (Union!17365 (regOne!35243 Regex!17365) (regTwo!35243 Regex!17365)) )
))
(declare-datatypes ((List!67640 0))(
  ( (Nil!67516) (Cons!67516 (h!73964 Regex!17365) (t!381395 List!67640)) )
))
(declare-datatypes ((Context!12722 0))(
  ( (Context!12723 (exprs!6861 List!67640)) )
))
(declare-fun lt!2509885 () (InoxSet Context!12722))

(declare-fun lt!2509865 () (InoxSet Context!12722))

(declare-datatypes ((List!67641 0))(
  ( (Nil!67517) (Cons!67517 (h!73965 C!35000) (t!381396 List!67641)) )
))
(declare-fun s!7408 () List!67641)

(declare-fun derivationStepZipper!2845 ((InoxSet Context!12722) C!35000) (InoxSet Context!12722))

(assert (=> b!7018497 (= res!2864589 (not (= (derivationStepZipper!2845 lt!2509885 (h!73965 s!7408)) lt!2509865)))))

(declare-fun lambda!410567 () Int)

(declare-fun lt!2509871 () Context!12722)

(declare-fun flatMap!2351 ((InoxSet Context!12722) Int) (InoxSet Context!12722))

(declare-fun derivationStepZipperUp!2015 (Context!12722 C!35000) (InoxSet Context!12722))

(assert (=> b!7018497 (= (flatMap!2351 lt!2509885 lambda!410567) (derivationStepZipperUp!2015 lt!2509871 (h!73965 s!7408)))))

(declare-datatypes ((Unit!161412 0))(
  ( (Unit!161413) )
))
(declare-fun lt!2509870 () Unit!161412)

(declare-fun lemmaFlatMapOnSingletonSet!1866 ((InoxSet Context!12722) Context!12722 Int) Unit!161412)

(assert (=> b!7018497 (= lt!2509870 (lemmaFlatMapOnSingletonSet!1866 lt!2509885 lt!2509871 lambda!410567))))

(assert (=> b!7018497 (= lt!2509865 (derivationStepZipperUp!2015 lt!2509871 (h!73965 s!7408)))))

(declare-fun lambda!410566 () Int)

(declare-fun lt!2509877 () Unit!161412)

(declare-fun ct2!306 () Context!12722)

(declare-fun lt!2509864 () Context!12722)

(declare-fun lemmaConcatPreservesForall!701 (List!67640 List!67640 Int) Unit!161412)

(assert (=> b!7018497 (= lt!2509877 (lemmaConcatPreservesForall!701 (exprs!6861 lt!2509864) (exprs!6861 ct2!306) lambda!410566))))

(declare-fun b!7018498 () Bool)

(declare-fun res!2864586 () Bool)

(declare-fun e!4218952 () Bool)

(assert (=> b!7018498 (=> res!2864586 e!4218952)))

(declare-fun lt!2509882 () Context!12722)

(declare-fun lt!2509863 () (InoxSet Context!12722))

(assert (=> b!7018498 (= res!2864586 (not (select lt!2509863 lt!2509882)))))

(declare-fun e!4218945 () Bool)

(declare-fun tp!1933552 () Bool)

(declare-fun setNonEmpty!48594 () Bool)

(declare-fun setElem!48594 () Context!12722)

(declare-fun inv!86271 (Context!12722) Bool)

(assert (=> setNonEmpty!48594 (= setRes!48594 (and tp!1933552 (inv!86271 setElem!48594) e!4218945))))

(declare-fun z1!570 () (InoxSet Context!12722))

(declare-fun setRest!48594 () (InoxSet Context!12722))

(assert (=> setNonEmpty!48594 (= z1!570 ((_ map or) (store ((as const (Array Context!12722 Bool)) false) setElem!48594 true) setRest!48594))))

(declare-fun b!7018499 () Bool)

(declare-fun e!4218950 () Bool)

(declare-fun e!4218940 () Bool)

(assert (=> b!7018499 (= e!4218950 e!4218940)))

(declare-fun res!2864581 () Bool)

(assert (=> b!7018499 (=> res!2864581 e!4218940)))

(declare-fun lt!2509875 () (InoxSet Context!12722))

(declare-fun lt!2509891 () List!67641)

(declare-fun matchZipper!2905 ((InoxSet Context!12722) List!67641) Bool)

(assert (=> b!7018499 (= res!2864581 (not (matchZipper!2905 lt!2509875 lt!2509891)))))

(declare-datatypes ((tuple2!68012 0))(
  ( (tuple2!68013 (_1!37309 List!67641) (_2!37309 List!67641)) )
))
(declare-fun lt!2509874 () tuple2!68012)

(assert (=> b!7018499 (= lt!2509891 (Cons!67517 (h!73965 s!7408) (_1!37309 lt!2509874)))))

(declare-fun b!7018500 () Bool)

(declare-fun res!2864592 () Bool)

(assert (=> b!7018500 (=> res!2864592 e!4218949)))

(get-info :version)

(assert (=> b!7018500 (= res!2864592 (not ((_ is Cons!67516) (exprs!6861 lt!2509864))))))

(declare-fun e!4218951 () Bool)

(assert (=> b!7018501 (= e!4218951 (not e!4218952))))

(declare-fun res!2864593 () Bool)

(assert (=> b!7018501 (=> res!2864593 e!4218952)))

(declare-fun lt!2509862 () (InoxSet Context!12722))

(assert (=> b!7018501 (= res!2864593 (not (matchZipper!2905 lt!2509862 s!7408)))))

(assert (=> b!7018501 (= lt!2509862 (store ((as const (Array Context!12722 Bool)) false) lt!2509882 true))))

(declare-fun lambda!410564 () Int)

(declare-fun getWitness!1329 ((InoxSet Context!12722) Int) Context!12722)

(assert (=> b!7018501 (= lt!2509882 (getWitness!1329 lt!2509863 lambda!410564))))

(declare-datatypes ((List!67642 0))(
  ( (Nil!67518) (Cons!67518 (h!73966 Context!12722) (t!381397 List!67642)) )
))
(declare-fun lt!2509867 () List!67642)

(declare-fun exists!3236 (List!67642 Int) Bool)

(assert (=> b!7018501 (exists!3236 lt!2509867 lambda!410564)))

(declare-fun lt!2509876 () Unit!161412)

(declare-fun lemmaZipperMatchesExistsMatchingContext!334 (List!67642 List!67641) Unit!161412)

(assert (=> b!7018501 (= lt!2509876 (lemmaZipperMatchesExistsMatchingContext!334 lt!2509867 s!7408))))

(declare-fun toList!10725 ((InoxSet Context!12722)) List!67642)

(assert (=> b!7018501 (= lt!2509867 (toList!10725 lt!2509863))))

(declare-fun b!7018502 () Bool)

(declare-fun e!4218944 () Bool)

(declare-fun e!4218942 () Bool)

(assert (=> b!7018502 (= e!4218944 e!4218942)))

(declare-fun res!2864583 () Bool)

(assert (=> b!7018502 (=> res!2864583 e!4218942)))

(declare-fun lt!2509868 () (InoxSet Context!12722))

(assert (=> b!7018502 (= res!2864583 (not (matchZipper!2905 lt!2509868 (t!381396 s!7408))))))

(declare-fun lt!2509886 () List!67640)

(declare-fun derivationStepZipperDown!2083 (Regex!17365 Context!12722 C!35000) (InoxSet Context!12722))

(declare-fun ++!15394 (List!67640 List!67640) List!67640)

(assert (=> b!7018502 (= lt!2509868 (derivationStepZipperDown!2083 (h!73964 (exprs!6861 lt!2509864)) (Context!12723 (++!15394 lt!2509886 (exprs!6861 ct2!306))) (h!73965 s!7408)))))

(declare-fun lt!2509869 () Unit!161412)

(assert (=> b!7018502 (= lt!2509869 (lemmaConcatPreservesForall!701 lt!2509886 (exprs!6861 ct2!306) lambda!410566))))

(declare-fun b!7018503 () Bool)

(declare-fun res!2864594 () Bool)

(declare-fun e!4218941 () Bool)

(assert (=> b!7018503 (=> res!2864594 e!4218941)))

(declare-fun lt!2509890 () (InoxSet Context!12722))

(assert (=> b!7018503 (= res!2864594 (not (matchZipper!2905 lt!2509890 (_2!37309 lt!2509874))))))

(declare-fun b!7018504 () Bool)

(declare-fun e!4218947 () Bool)

(assert (=> b!7018504 (= e!4218947 e!4218946)))

(declare-fun res!2864584 () Bool)

(assert (=> b!7018504 (=> res!2864584 e!4218946)))

(assert (=> b!7018504 (= res!2864584 (not (= lt!2509885 lt!2509862)))))

(assert (=> b!7018504 (= lt!2509885 (store ((as const (Array Context!12722 Bool)) false) lt!2509871 true))))

(declare-fun lt!2509879 () Unit!161412)

(assert (=> b!7018504 (= lt!2509879 (lemmaConcatPreservesForall!701 (exprs!6861 lt!2509864) (exprs!6861 ct2!306) lambda!410566))))

(declare-fun b!7018506 () Bool)

(assert (=> b!7018506 (= e!4218949 e!4218944)))

(declare-fun res!2864582 () Bool)

(assert (=> b!7018506 (=> res!2864582 e!4218944)))

(declare-fun nullable!7125 (Regex!17365) Bool)

(assert (=> b!7018506 (= res!2864582 (nullable!7125 (h!73964 (exprs!6861 lt!2509864))))))

(declare-fun lt!2509887 () Context!12722)

(assert (=> b!7018506 (= lt!2509887 (Context!12723 lt!2509886))))

(declare-fun tail!13463 (List!67640) List!67640)

(assert (=> b!7018506 (= lt!2509886 (tail!13463 (exprs!6861 lt!2509864)))))

(declare-fun b!7018507 () Bool)

(assert (=> b!7018507 (= e!4218941 e!4218950)))

(declare-fun res!2864587 () Bool)

(assert (=> b!7018507 (=> res!2864587 e!4218950)))

(declare-fun lt!2509883 () (InoxSet Context!12722))

(declare-fun lt!2509884 () (InoxSet Context!12722))

(declare-fun lt!2509889 () (InoxSet Context!12722))

(assert (=> b!7018507 (= res!2864587 (or (not (= lt!2509889 lt!2509883)) (not (= lt!2509889 lt!2509884))))))

(assert (=> b!7018507 (= (flatMap!2351 lt!2509875 lambda!410567) (derivationStepZipperUp!2015 lt!2509864 (h!73965 s!7408)))))

(declare-fun lt!2509866 () Unit!161412)

(assert (=> b!7018507 (= lt!2509866 (lemmaFlatMapOnSingletonSet!1866 lt!2509875 lt!2509864 lambda!410567))))

(assert (=> b!7018507 (= lt!2509883 (derivationStepZipperUp!2015 lt!2509864 (h!73965 s!7408)))))

(assert (=> b!7018507 (= lt!2509889 (derivationStepZipper!2845 lt!2509875 (h!73965 s!7408)))))

(assert (=> b!7018507 (= lt!2509875 (store ((as const (Array Context!12722 Bool)) false) lt!2509864 true))))

(declare-fun b!7018508 () Bool)

(declare-fun res!2864591 () Bool)

(assert (=> b!7018508 (=> res!2864591 e!4218949)))

(declare-fun isEmpty!39434 (List!67640) Bool)

(assert (=> b!7018508 (= res!2864591 (isEmpty!39434 (exprs!6861 lt!2509864)))))

(declare-fun b!7018509 () Bool)

(assert (=> b!7018509 (= e!4218940 true)))

(declare-fun lt!2509878 () Bool)

(declare-fun lambda!410565 () Int)

(declare-datatypes ((Option!16838 0))(
  ( (None!16837) (Some!16837 (v!53115 tuple2!68012)) )
))
(declare-fun get!23679 (Option!16838) tuple2!68012)

(declare-fun findConcatSeparationZippers!354 ((InoxSet Context!12722) (InoxSet Context!12722) List!67641 List!67641 List!67641) Option!16838)

(declare-fun mapPost2!220 ((InoxSet Context!12722) Int Context!12722) Context!12722)

(assert (=> b!7018509 (= lt!2509878 (matchZipper!2905 lt!2509875 (Cons!67517 (h!73965 s!7408) (_1!37309 (get!23679 (findConcatSeparationZippers!354 (derivationStepZipperDown!2083 (h!73964 (exprs!6861 (mapPost2!220 z1!570 lambda!410565 lt!2509882))) (Context!12723 (tail!13463 (exprs!6861 (mapPost2!220 z1!570 lambda!410565 lt!2509882)))) (h!73965 s!7408)) lt!2509890 Nil!67517 (t!381396 s!7408) (t!381396 s!7408)))))))))

(declare-fun isDefined!13539 (Option!16838) Bool)

(assert (=> b!7018509 (isDefined!13539 (findConcatSeparationZippers!354 lt!2509875 lt!2509890 Nil!67517 s!7408 s!7408))))

(declare-fun lt!2509872 () Unit!161412)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!26 ((InoxSet Context!12722) (InoxSet Context!12722) List!67641 List!67641 List!67641 List!67641 List!67641) Unit!161412)

(assert (=> b!7018509 (= lt!2509872 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!26 lt!2509875 lt!2509890 lt!2509891 (_2!37309 lt!2509874) s!7408 Nil!67517 s!7408))))

(declare-fun b!7018510 () Bool)

(declare-fun res!2864580 () Bool)

(assert (=> b!7018510 (=> (not res!2864580) (not e!4218951))))

(assert (=> b!7018510 (= res!2864580 ((_ is Cons!67517) s!7408))))

(assert (=> b!7018511 (= e!4218952 e!4218947)))

(declare-fun res!2864588 () Bool)

(assert (=> b!7018511 (=> res!2864588 e!4218947)))

(assert (=> b!7018511 (= res!2864588 (or (not (= lt!2509871 lt!2509882)) (not (select z1!570 lt!2509864))))))

(assert (=> b!7018511 (= lt!2509871 (Context!12723 (++!15394 (exprs!6861 lt!2509864) (exprs!6861 ct2!306))))))

(declare-fun lt!2509881 () Unit!161412)

(assert (=> b!7018511 (= lt!2509881 (lemmaConcatPreservesForall!701 (exprs!6861 lt!2509864) (exprs!6861 ct2!306) lambda!410566))))

(assert (=> b!7018511 (= lt!2509864 (mapPost2!220 z1!570 lambda!410565 lt!2509882))))

(declare-fun b!7018512 () Bool)

(declare-fun e!4218948 () Bool)

(declare-fun tp_is_empty!43955 () Bool)

(declare-fun tp!1933554 () Bool)

(assert (=> b!7018512 (= e!4218948 (and tp_is_empty!43955 tp!1933554))))

(declare-fun res!2864595 () Bool)

(assert (=> start!676642 (=> (not res!2864595) (not e!4218951))))

(assert (=> start!676642 (= res!2864595 (matchZipper!2905 lt!2509863 s!7408))))

(declare-fun appendTo!486 ((InoxSet Context!12722) Context!12722) (InoxSet Context!12722))

(assert (=> start!676642 (= lt!2509863 (appendTo!486 z1!570 ct2!306))))

(assert (=> start!676642 e!4218951))

(declare-fun condSetEmpty!48594 () Bool)

(assert (=> start!676642 (= condSetEmpty!48594 (= z1!570 ((as const (Array Context!12722 Bool)) false)))))

(assert (=> start!676642 setRes!48594))

(declare-fun e!4218943 () Bool)

(assert (=> start!676642 (and (inv!86271 ct2!306) e!4218943)))

(assert (=> start!676642 e!4218948))

(declare-fun b!7018505 () Bool)

(declare-fun res!2864585 () Bool)

(assert (=> b!7018505 (=> res!2864585 e!4218941)))

(declare-fun ++!15395 (List!67641 List!67641) List!67641)

(assert (=> b!7018505 (= res!2864585 (not (= (++!15395 (_1!37309 lt!2509874) (_2!37309 lt!2509874)) (t!381396 s!7408))))))

(declare-fun b!7018513 () Bool)

(assert (=> b!7018513 (= e!4218942 e!4218941)))

(declare-fun res!2864590 () Bool)

(assert (=> b!7018513 (=> res!2864590 e!4218941)))

(assert (=> b!7018513 (= res!2864590 (not (matchZipper!2905 lt!2509884 (_1!37309 lt!2509874))))))

(declare-fun lt!2509888 () Option!16838)

(assert (=> b!7018513 (= lt!2509874 (get!23679 lt!2509888))))

(assert (=> b!7018513 (isDefined!13539 lt!2509888)))

(assert (=> b!7018513 (= lt!2509888 (findConcatSeparationZippers!354 lt!2509884 lt!2509890 Nil!67517 (t!381396 s!7408) (t!381396 s!7408)))))

(assert (=> b!7018513 (= lt!2509890 (store ((as const (Array Context!12722 Bool)) false) ct2!306 true))))

(declare-fun lt!2509873 () Unit!161412)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!354 ((InoxSet Context!12722) Context!12722 List!67641) Unit!161412)

(assert (=> b!7018513 (= lt!2509873 (lemmaConcatZipperMatchesStringThenFindConcatDefined!354 lt!2509884 ct2!306 (t!381396 s!7408)))))

(assert (=> b!7018513 (= lt!2509868 (appendTo!486 lt!2509884 ct2!306))))

(assert (=> b!7018513 (= lt!2509884 (derivationStepZipperDown!2083 (h!73964 (exprs!6861 lt!2509864)) lt!2509887 (h!73965 s!7408)))))

(declare-fun lt!2509880 () Unit!161412)

(assert (=> b!7018513 (= lt!2509880 (lemmaConcatPreservesForall!701 lt!2509886 (exprs!6861 ct2!306) lambda!410566))))

(declare-fun lt!2509892 () Unit!161412)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!56 (Context!12722 Regex!17365 C!35000 Context!12722) Unit!161412)

(assert (=> b!7018513 (= lt!2509892 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!56 lt!2509887 (h!73964 (exprs!6861 lt!2509864)) (h!73965 s!7408) ct2!306))))

(declare-fun b!7018514 () Bool)

(declare-fun tp!1933553 () Bool)

(assert (=> b!7018514 (= e!4218945 tp!1933553)))

(declare-fun b!7018515 () Bool)

(declare-fun tp!1933555 () Bool)

(assert (=> b!7018515 (= e!4218943 tp!1933555)))

(assert (= (and start!676642 res!2864595) b!7018510))

(assert (= (and b!7018510 res!2864580) b!7018501))

(assert (= (and b!7018501 (not res!2864593)) b!7018498))

(assert (= (and b!7018498 (not res!2864586)) b!7018511))

(assert (= (and b!7018511 (not res!2864588)) b!7018504))

(assert (= (and b!7018504 (not res!2864584)) b!7018497))

(assert (= (and b!7018497 (not res!2864589)) b!7018500))

(assert (= (and b!7018500 (not res!2864592)) b!7018508))

(assert (= (and b!7018508 (not res!2864591)) b!7018506))

(assert (= (and b!7018506 (not res!2864582)) b!7018502))

(assert (= (and b!7018502 (not res!2864583)) b!7018513))

(assert (= (and b!7018513 (not res!2864590)) b!7018503))

(assert (= (and b!7018503 (not res!2864594)) b!7018505))

(assert (= (and b!7018505 (not res!2864585)) b!7018507))

(assert (= (and b!7018507 (not res!2864587)) b!7018499))

(assert (= (and b!7018499 (not res!2864581)) b!7018509))

(assert (= (and start!676642 condSetEmpty!48594) setIsEmpty!48594))

(assert (= (and start!676642 (not condSetEmpty!48594)) setNonEmpty!48594))

(assert (= setNonEmpty!48594 b!7018514))

(assert (= start!676642 b!7018515))

(assert (= (and start!676642 ((_ is Cons!67517) s!7408)) b!7018512))

(declare-fun m!7719088 () Bool)

(assert (=> b!7018507 m!7719088))

(declare-fun m!7719090 () Bool)

(assert (=> b!7018507 m!7719090))

(declare-fun m!7719092 () Bool)

(assert (=> b!7018507 m!7719092))

(declare-fun m!7719094 () Bool)

(assert (=> b!7018507 m!7719094))

(declare-fun m!7719096 () Bool)

(assert (=> b!7018507 m!7719096))

(declare-fun m!7719098 () Bool)

(assert (=> setNonEmpty!48594 m!7719098))

(declare-fun m!7719100 () Bool)

(assert (=> b!7018503 m!7719100))

(declare-fun m!7719102 () Bool)

(assert (=> b!7018508 m!7719102))

(declare-fun m!7719104 () Bool)

(assert (=> b!7018506 m!7719104))

(declare-fun m!7719106 () Bool)

(assert (=> b!7018506 m!7719106))

(declare-fun m!7719108 () Bool)

(assert (=> b!7018513 m!7719108))

(declare-fun m!7719110 () Bool)

(assert (=> b!7018513 m!7719110))

(declare-fun m!7719112 () Bool)

(assert (=> b!7018513 m!7719112))

(declare-fun m!7719114 () Bool)

(assert (=> b!7018513 m!7719114))

(declare-fun m!7719116 () Bool)

(assert (=> b!7018513 m!7719116))

(declare-fun m!7719118 () Bool)

(assert (=> b!7018513 m!7719118))

(declare-fun m!7719120 () Bool)

(assert (=> b!7018513 m!7719120))

(declare-fun m!7719122 () Bool)

(assert (=> b!7018513 m!7719122))

(declare-fun m!7719124 () Bool)

(assert (=> b!7018513 m!7719124))

(declare-fun m!7719126 () Bool)

(assert (=> b!7018513 m!7719126))

(declare-fun m!7719128 () Bool)

(assert (=> b!7018504 m!7719128))

(declare-fun m!7719130 () Bool)

(assert (=> b!7018504 m!7719130))

(declare-fun m!7719132 () Bool)

(assert (=> b!7018509 m!7719132))

(declare-fun m!7719134 () Bool)

(assert (=> b!7018509 m!7719134))

(declare-fun m!7719136 () Bool)

(assert (=> b!7018509 m!7719136))

(declare-fun m!7719138 () Bool)

(assert (=> b!7018509 m!7719138))

(declare-fun m!7719140 () Bool)

(assert (=> b!7018509 m!7719140))

(declare-fun m!7719142 () Bool)

(assert (=> b!7018509 m!7719142))

(declare-fun m!7719144 () Bool)

(assert (=> b!7018509 m!7719144))

(declare-fun m!7719146 () Bool)

(assert (=> b!7018509 m!7719146))

(declare-fun m!7719148 () Bool)

(assert (=> b!7018509 m!7719148))

(assert (=> b!7018509 m!7719142))

(assert (=> b!7018509 m!7719144))

(assert (=> b!7018509 m!7719146))

(assert (=> b!7018509 m!7719136))

(declare-fun m!7719150 () Bool)

(assert (=> b!7018501 m!7719150))

(declare-fun m!7719152 () Bool)

(assert (=> b!7018501 m!7719152))

(declare-fun m!7719154 () Bool)

(assert (=> b!7018501 m!7719154))

(declare-fun m!7719156 () Bool)

(assert (=> b!7018501 m!7719156))

(declare-fun m!7719158 () Bool)

(assert (=> b!7018501 m!7719158))

(declare-fun m!7719160 () Bool)

(assert (=> b!7018501 m!7719160))

(declare-fun m!7719162 () Bool)

(assert (=> b!7018505 m!7719162))

(declare-fun m!7719164 () Bool)

(assert (=> b!7018502 m!7719164))

(declare-fun m!7719166 () Bool)

(assert (=> b!7018502 m!7719166))

(declare-fun m!7719168 () Bool)

(assert (=> b!7018502 m!7719168))

(assert (=> b!7018502 m!7719126))

(declare-fun m!7719170 () Bool)

(assert (=> b!7018498 m!7719170))

(declare-fun m!7719172 () Bool)

(assert (=> start!676642 m!7719172))

(declare-fun m!7719174 () Bool)

(assert (=> start!676642 m!7719174))

(declare-fun m!7719176 () Bool)

(assert (=> start!676642 m!7719176))

(declare-fun m!7719178 () Bool)

(assert (=> b!7018511 m!7719178))

(declare-fun m!7719180 () Bool)

(assert (=> b!7018511 m!7719180))

(assert (=> b!7018511 m!7719130))

(assert (=> b!7018511 m!7719142))

(declare-fun m!7719182 () Bool)

(assert (=> b!7018497 m!7719182))

(declare-fun m!7719184 () Bool)

(assert (=> b!7018497 m!7719184))

(assert (=> b!7018497 m!7719130))

(declare-fun m!7719186 () Bool)

(assert (=> b!7018497 m!7719186))

(declare-fun m!7719188 () Bool)

(assert (=> b!7018497 m!7719188))

(declare-fun m!7719190 () Bool)

(assert (=> b!7018499 m!7719190))

(check-sat (not b!7018501) (not b!7018505) (not b!7018507) (not b!7018508) (not b!7018515) (not b!7018502) (not b!7018504) (not b!7018514) (not b!7018511) (not b!7018503) tp_is_empty!43955 (not b!7018513) (not b!7018497) (not b!7018512) (not start!676642) (not setNonEmpty!48594) (not b!7018506) (not b!7018499) (not b!7018509))
(check-sat)
