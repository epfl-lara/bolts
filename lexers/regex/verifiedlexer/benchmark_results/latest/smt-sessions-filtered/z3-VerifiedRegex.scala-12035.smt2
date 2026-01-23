; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!675156 () Bool)

(assert start!675156)

(declare-fun b!7010221 () Bool)

(assert (=> b!7010221 true))

(declare-fun b!7010213 () Bool)

(assert (=> b!7010213 true))

(declare-fun b!7010204 () Bool)

(assert (=> b!7010204 true))

(declare-fun b!7010203 () Bool)

(declare-fun res!2860458 () Bool)

(declare-fun e!4213876 () Bool)

(assert (=> b!7010203 (=> res!2860458 e!4213876)))

(declare-fun lt!2503942 () Bool)

(assert (=> b!7010203 (= res!2860458 (not lt!2503942))))

(declare-fun e!4213869 () Bool)

(declare-fun e!4213877 () Bool)

(assert (=> b!7010204 (= e!4213869 e!4213877)))

(declare-fun res!2860450 () Bool)

(assert (=> b!7010204 (=> res!2860450 e!4213877)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!34904 0))(
  ( (C!34905 (val!27154 Int)) )
))
(declare-datatypes ((Regex!17317 0))(
  ( (ElementMatch!17317 (c!1302115 C!34904)) (Concat!26162 (regOne!35146 Regex!17317) (regTwo!35146 Regex!17317)) (EmptyExpr!17317) (Star!17317 (reg!17646 Regex!17317)) (EmptyLang!17317) (Union!17317 (regOne!35147 Regex!17317) (regTwo!35147 Regex!17317)) )
))
(declare-datatypes ((List!67496 0))(
  ( (Nil!67372) (Cons!67372 (h!73820 Regex!17317) (t!381251 List!67496)) )
))
(declare-datatypes ((Context!12626 0))(
  ( (Context!12627 (exprs!6813 List!67496)) )
))
(declare-fun lt!2503947 () (InoxSet Context!12626))

(declare-fun lt!2503928 () (InoxSet Context!12626))

(declare-datatypes ((List!67497 0))(
  ( (Nil!67373) (Cons!67373 (h!73821 C!34904) (t!381252 List!67497)) )
))
(declare-fun s!7408 () List!67497)

(declare-fun derivationStepZipper!2797 ((InoxSet Context!12626) C!34904) (InoxSet Context!12626))

(assert (=> b!7010204 (= res!2860450 (not (= (derivationStepZipper!2797 lt!2503928 (h!73821 s!7408)) lt!2503947)))))

(declare-fun lambda!408381 () Int)

(declare-fun lt!2503920 () Context!12626)

(declare-fun flatMap!2303 ((InoxSet Context!12626) Int) (InoxSet Context!12626))

(declare-fun derivationStepZipperUp!1967 (Context!12626 C!34904) (InoxSet Context!12626))

(assert (=> b!7010204 (= (flatMap!2303 lt!2503928 lambda!408381) (derivationStepZipperUp!1967 lt!2503920 (h!73821 s!7408)))))

(declare-datatypes ((Unit!161312 0))(
  ( (Unit!161313) )
))
(declare-fun lt!2503914 () Unit!161312)

(declare-fun lemmaFlatMapOnSingletonSet!1818 ((InoxSet Context!12626) Context!12626 Int) Unit!161312)

(assert (=> b!7010204 (= lt!2503914 (lemmaFlatMapOnSingletonSet!1818 lt!2503928 lt!2503920 lambda!408381))))

(assert (=> b!7010204 (= lt!2503947 (derivationStepZipperUp!1967 lt!2503920 (h!73821 s!7408)))))

(declare-fun lt!2503915 () Unit!161312)

(declare-fun ct2!306 () Context!12626)

(declare-fun lt!2503918 () Context!12626)

(declare-fun lambda!408380 () Int)

(declare-fun lemmaConcatPreservesForall!653 (List!67496 List!67496 Int) Unit!161312)

(assert (=> b!7010204 (= lt!2503915 (lemmaConcatPreservesForall!653 (exprs!6813 lt!2503918) (exprs!6813 ct2!306) lambda!408380))))

(declare-fun b!7010205 () Bool)

(declare-fun e!4213863 () Bool)

(declare-fun tp_is_empty!43859 () Bool)

(declare-fun tp!1932344 () Bool)

(assert (=> b!7010205 (= e!4213863 (and tp_is_empty!43859 tp!1932344))))

(declare-fun res!2860451 () Bool)

(declare-fun e!4213865 () Bool)

(assert (=> start!675156 (=> (not res!2860451) (not e!4213865))))

(declare-fun lt!2503936 () (InoxSet Context!12626))

(declare-fun matchZipper!2857 ((InoxSet Context!12626) List!67497) Bool)

(assert (=> start!675156 (= res!2860451 (matchZipper!2857 lt!2503936 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12626))

(declare-fun appendTo!438 ((InoxSet Context!12626) Context!12626) (InoxSet Context!12626))

(assert (=> start!675156 (= lt!2503936 (appendTo!438 z1!570 ct2!306))))

(assert (=> start!675156 e!4213865))

(declare-fun condSetEmpty!48353 () Bool)

(assert (=> start!675156 (= condSetEmpty!48353 (= z1!570 ((as const (Array Context!12626 Bool)) false)))))

(declare-fun setRes!48353 () Bool)

(assert (=> start!675156 setRes!48353))

(declare-fun e!4213873 () Bool)

(declare-fun inv!86151 (Context!12626) Bool)

(assert (=> start!675156 (and (inv!86151 ct2!306) e!4213873)))

(assert (=> start!675156 e!4213863))

(declare-fun b!7010206 () Bool)

(declare-fun res!2860443 () Bool)

(assert (=> b!7010206 (=> res!2860443 e!4213877)))

(declare-fun isEmpty!39347 (List!67496) Bool)

(assert (=> b!7010206 (= res!2860443 (isEmpty!39347 (exprs!6813 lt!2503918)))))

(declare-fun setIsEmpty!48353 () Bool)

(assert (=> setIsEmpty!48353 setRes!48353))

(declare-fun b!7010207 () Bool)

(declare-fun res!2860456 () Bool)

(assert (=> b!7010207 (=> (not res!2860456) (not e!4213865))))

(get-info :version)

(assert (=> b!7010207 (= res!2860456 ((_ is Cons!67373) s!7408))))

(declare-fun b!7010208 () Bool)

(declare-fun tp!1932343 () Bool)

(assert (=> b!7010208 (= e!4213873 tp!1932343)))

(declare-fun b!7010209 () Bool)

(declare-fun e!4213872 () Bool)

(assert (=> b!7010209 (= e!4213877 e!4213872)))

(declare-fun res!2860455 () Bool)

(assert (=> b!7010209 (=> res!2860455 e!4213872)))

(declare-fun nullable!7077 (Regex!17317) Bool)

(assert (=> b!7010209 (= res!2860455 (not (nullable!7077 (h!73820 (exprs!6813 lt!2503918)))))))

(declare-fun lt!2503913 () Context!12626)

(declare-fun lt!2503938 () List!67496)

(assert (=> b!7010209 (= lt!2503913 (Context!12627 lt!2503938))))

(declare-fun tail!13391 (List!67496) List!67496)

(assert (=> b!7010209 (= lt!2503938 (tail!13391 (exprs!6813 lt!2503918)))))

(declare-fun b!7010210 () Bool)

(declare-fun e!4213870 () Bool)

(assert (=> b!7010210 (= e!4213872 e!4213870)))

(declare-fun res!2860449 () Bool)

(assert (=> b!7010210 (=> res!2860449 e!4213870)))

(declare-fun lt!2503937 () (InoxSet Context!12626))

(assert (=> b!7010210 (= res!2860449 (not (= lt!2503947 lt!2503937)))))

(declare-fun lt!2503924 () (InoxSet Context!12626))

(declare-fun lt!2503945 () (InoxSet Context!12626))

(assert (=> b!7010210 (= lt!2503937 ((_ map or) lt!2503924 lt!2503945))))

(declare-fun lt!2503933 () Context!12626)

(assert (=> b!7010210 (= lt!2503945 (derivationStepZipperUp!1967 lt!2503933 (h!73821 s!7408)))))

(declare-fun derivationStepZipperDown!2035 (Regex!17317 Context!12626 C!34904) (InoxSet Context!12626))

(assert (=> b!7010210 (= lt!2503924 (derivationStepZipperDown!2035 (h!73820 (exprs!6813 lt!2503918)) lt!2503933 (h!73821 s!7408)))))

(declare-fun ++!15313 (List!67496 List!67496) List!67496)

(assert (=> b!7010210 (= lt!2503933 (Context!12627 (++!15313 lt!2503938 (exprs!6813 ct2!306))))))

(declare-fun lt!2503939 () Unit!161312)

(assert (=> b!7010210 (= lt!2503939 (lemmaConcatPreservesForall!653 lt!2503938 (exprs!6813 ct2!306) lambda!408380))))

(declare-fun lt!2503911 () Unit!161312)

(assert (=> b!7010210 (= lt!2503911 (lemmaConcatPreservesForall!653 lt!2503938 (exprs!6813 ct2!306) lambda!408380))))

(declare-fun b!7010211 () Bool)

(declare-fun e!4213864 () Bool)

(assert (=> b!7010211 (= e!4213864 e!4213869)))

(declare-fun res!2860453 () Bool)

(assert (=> b!7010211 (=> res!2860453 e!4213869)))

(declare-fun lt!2503935 () (InoxSet Context!12626))

(assert (=> b!7010211 (= res!2860453 (not (= lt!2503928 lt!2503935)))))

(assert (=> b!7010211 (= lt!2503928 (store ((as const (Array Context!12626 Bool)) false) lt!2503920 true))))

(declare-fun lt!2503925 () Unit!161312)

(assert (=> b!7010211 (= lt!2503925 (lemmaConcatPreservesForall!653 (exprs!6813 lt!2503918) (exprs!6813 ct2!306) lambda!408380))))

(declare-fun b!7010212 () Bool)

(declare-fun e!4213868 () Bool)

(assert (=> b!7010212 (= e!4213876 e!4213868)))

(declare-fun res!2860445 () Bool)

(assert (=> b!7010212 (=> res!2860445 e!4213868)))

(assert (=> b!7010212 (= res!2860445 (matchZipper!2857 lt!2503945 (t!381252 s!7408)))))

(declare-fun lt!2503934 () Unit!161312)

(assert (=> b!7010212 (= lt!2503934 (lemmaConcatPreservesForall!653 lt!2503938 (exprs!6813 ct2!306) lambda!408380))))

(declare-fun e!4213871 () Bool)

(assert (=> b!7010213 (= e!4213871 e!4213864)))

(declare-fun res!2860444 () Bool)

(assert (=> b!7010213 (=> res!2860444 e!4213864)))

(declare-fun lt!2503916 () Context!12626)

(assert (=> b!7010213 (= res!2860444 (or (not (= lt!2503920 lt!2503916)) (not (select z1!570 lt!2503918))))))

(assert (=> b!7010213 (= lt!2503920 (Context!12627 (++!15313 (exprs!6813 lt!2503918) (exprs!6813 ct2!306))))))

(declare-fun lt!2503919 () Unit!161312)

(assert (=> b!7010213 (= lt!2503919 (lemmaConcatPreservesForall!653 (exprs!6813 lt!2503918) (exprs!6813 ct2!306) lambda!408380))))

(declare-fun lambda!408379 () Int)

(declare-fun mapPost2!172 ((InoxSet Context!12626) Int Context!12626) Context!12626)

(assert (=> b!7010213 (= lt!2503918 (mapPost2!172 z1!570 lambda!408379 lt!2503916))))

(declare-fun b!7010214 () Bool)

(declare-fun e!4213875 () Bool)

(declare-fun e!4213866 () Bool)

(assert (=> b!7010214 (= e!4213875 e!4213866)))

(declare-fun res!2860439 () Bool)

(assert (=> b!7010214 (=> res!2860439 e!4213866)))

(declare-fun lt!2503941 () (InoxSet Context!12626))

(declare-datatypes ((tuple2!67940 0))(
  ( (tuple2!67941 (_1!37273 List!67497) (_2!37273 List!67497)) )
))
(declare-fun lt!2503931 () tuple2!67940)

(assert (=> b!7010214 (= res!2860439 (not (matchZipper!2857 lt!2503941 (_1!37273 lt!2503931))))))

(declare-datatypes ((Option!16802 0))(
  ( (None!16801) (Some!16801 (v!53079 tuple2!67940)) )
))
(declare-fun lt!2503908 () Option!16802)

(declare-fun get!23622 (Option!16802) tuple2!67940)

(assert (=> b!7010214 (= lt!2503931 (get!23622 lt!2503908))))

(declare-fun isDefined!13503 (Option!16802) Bool)

(assert (=> b!7010214 (isDefined!13503 lt!2503908)))

(declare-fun lt!2503910 () (InoxSet Context!12626))

(declare-fun findConcatSeparationZippers!318 ((InoxSet Context!12626) (InoxSet Context!12626) List!67497 List!67497 List!67497) Option!16802)

(assert (=> b!7010214 (= lt!2503908 (findConcatSeparationZippers!318 lt!2503941 lt!2503910 Nil!67373 (t!381252 s!7408) (t!381252 s!7408)))))

(assert (=> b!7010214 (= lt!2503910 (store ((as const (Array Context!12626 Bool)) false) ct2!306 true))))

(declare-fun lt!2503912 () Unit!161312)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!318 ((InoxSet Context!12626) Context!12626 List!67497) Unit!161312)

(assert (=> b!7010214 (= lt!2503912 (lemmaConcatZipperMatchesStringThenFindConcatDefined!318 lt!2503941 ct2!306 (t!381252 s!7408)))))

(declare-fun lt!2503927 () Unit!161312)

(assert (=> b!7010214 (= lt!2503927 (lemmaConcatPreservesForall!653 lt!2503938 (exprs!6813 ct2!306) lambda!408380))))

(assert (=> b!7010214 (= lt!2503924 (appendTo!438 lt!2503941 ct2!306))))

(assert (=> b!7010214 (= lt!2503941 (derivationStepZipperDown!2035 (h!73820 (exprs!6813 lt!2503918)) lt!2503913 (h!73821 s!7408)))))

(declare-fun lt!2503943 () Unit!161312)

(assert (=> b!7010214 (= lt!2503943 (lemmaConcatPreservesForall!653 lt!2503938 (exprs!6813 ct2!306) lambda!408380))))

(declare-fun lt!2503917 () Unit!161312)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!16 (Context!12626 Regex!17317 C!34904 Context!12626) Unit!161312)

(assert (=> b!7010214 (= lt!2503917 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!16 lt!2503913 (h!73820 (exprs!6813 lt!2503918)) (h!73821 s!7408) ct2!306))))

(declare-fun b!7010215 () Bool)

(declare-fun res!2860442 () Bool)

(assert (=> b!7010215 (=> res!2860442 e!4213871)))

(assert (=> b!7010215 (= res!2860442 (not (select lt!2503936 lt!2503916)))))

(declare-fun b!7010216 () Bool)

(assert (=> b!7010216 (= e!4213868 e!4213875)))

(declare-fun res!2860457 () Bool)

(assert (=> b!7010216 (=> res!2860457 e!4213875)))

(declare-fun lt!2503909 () Bool)

(assert (=> b!7010216 (= res!2860457 (not lt!2503909))))

(declare-fun lt!2503946 () Unit!161312)

(assert (=> b!7010216 (= lt!2503946 (lemmaConcatPreservesForall!653 lt!2503938 (exprs!6813 ct2!306) lambda!408380))))

(declare-fun lt!2503921 () Unit!161312)

(assert (=> b!7010216 (= lt!2503921 (lemmaConcatPreservesForall!653 lt!2503938 (exprs!6813 ct2!306) lambda!408380))))

(declare-fun b!7010217 () Bool)

(declare-fun e!4213874 () Bool)

(assert (=> b!7010217 (= e!4213874 (matchZipper!2857 lt!2503945 (t!381252 s!7408)))))

(declare-fun b!7010218 () Bool)

(declare-fun e!4213862 () Bool)

(assert (=> b!7010218 (= e!4213862 (not (matchZipper!2857 lt!2503945 (t!381252 s!7408))))))

(declare-fun lt!2503940 () Unit!161312)

(assert (=> b!7010218 (= lt!2503940 (lemmaConcatPreservesForall!653 lt!2503938 (exprs!6813 ct2!306) lambda!408380))))

(declare-fun setElem!48353 () Context!12626)

(declare-fun setNonEmpty!48353 () Bool)

(declare-fun tp!1932341 () Bool)

(declare-fun e!4213867 () Bool)

(assert (=> setNonEmpty!48353 (= setRes!48353 (and tp!1932341 (inv!86151 setElem!48353) e!4213867))))

(declare-fun setRest!48353 () (InoxSet Context!12626))

(assert (=> setNonEmpty!48353 (= z1!570 ((_ map or) (store ((as const (Array Context!12626 Bool)) false) setElem!48353 true) setRest!48353))))

(declare-fun b!7010219 () Bool)

(declare-fun res!2860441 () Bool)

(assert (=> b!7010219 (=> res!2860441 e!4213866)))

(declare-fun ++!15314 (List!67497 List!67497) List!67497)

(assert (=> b!7010219 (= res!2860441 (not (= (++!15314 (_1!37273 lt!2503931) (_2!37273 lt!2503931)) (t!381252 s!7408))))))

(declare-fun b!7010220 () Bool)

(declare-fun res!2860454 () Bool)

(assert (=> b!7010220 (=> res!2860454 e!4213866)))

(assert (=> b!7010220 (= res!2860454 (not (matchZipper!2857 lt!2503910 (_2!37273 lt!2503931))))))

(assert (=> b!7010221 (= e!4213865 (not e!4213871))))

(declare-fun res!2860446 () Bool)

(assert (=> b!7010221 (=> res!2860446 e!4213871)))

(assert (=> b!7010221 (= res!2860446 (not (matchZipper!2857 lt!2503935 s!7408)))))

(assert (=> b!7010221 (= lt!2503935 (store ((as const (Array Context!12626 Bool)) false) lt!2503916 true))))

(declare-fun lambda!408378 () Int)

(declare-fun getWitness!1259 ((InoxSet Context!12626) Int) Context!12626)

(assert (=> b!7010221 (= lt!2503916 (getWitness!1259 lt!2503936 lambda!408378))))

(declare-datatypes ((List!67498 0))(
  ( (Nil!67374) (Cons!67374 (h!73822 Context!12626) (t!381253 List!67498)) )
))
(declare-fun lt!2503930 () List!67498)

(declare-fun exists!3161 (List!67498 Int) Bool)

(assert (=> b!7010221 (exists!3161 lt!2503930 lambda!408378)))

(declare-fun lt!2503929 () Unit!161312)

(declare-fun lemmaZipperMatchesExistsMatchingContext!286 (List!67498 List!67497) Unit!161312)

(assert (=> b!7010221 (= lt!2503929 (lemmaZipperMatchesExistsMatchingContext!286 lt!2503930 s!7408))))

(declare-fun toList!10677 ((InoxSet Context!12626)) List!67498)

(assert (=> b!7010221 (= lt!2503930 (toList!10677 lt!2503936))))

(declare-fun b!7010222 () Bool)

(assert (=> b!7010222 (= e!4213870 e!4213876)))

(declare-fun res!2860448 () Bool)

(assert (=> b!7010222 (=> res!2860448 e!4213876)))

(assert (=> b!7010222 (= res!2860448 e!4213862)))

(declare-fun res!2860447 () Bool)

(assert (=> b!7010222 (=> (not res!2860447) (not e!4213862))))

(assert (=> b!7010222 (= res!2860447 (not (= lt!2503942 lt!2503909)))))

(assert (=> b!7010222 (= lt!2503942 (matchZipper!2857 lt!2503947 (t!381252 s!7408)))))

(declare-fun lt!2503944 () Unit!161312)

(assert (=> b!7010222 (= lt!2503944 (lemmaConcatPreservesForall!653 lt!2503938 (exprs!6813 ct2!306) lambda!408380))))

(assert (=> b!7010222 (= (matchZipper!2857 lt!2503937 (t!381252 s!7408)) e!4213874)))

(declare-fun res!2860452 () Bool)

(assert (=> b!7010222 (=> res!2860452 e!4213874)))

(assert (=> b!7010222 (= res!2860452 lt!2503909)))

(assert (=> b!7010222 (= lt!2503909 (matchZipper!2857 lt!2503924 (t!381252 s!7408)))))

(declare-fun lt!2503923 () Unit!161312)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1490 ((InoxSet Context!12626) (InoxSet Context!12626) List!67497) Unit!161312)

(assert (=> b!7010222 (= lt!2503923 (lemmaZipperConcatMatchesSameAsBothZippers!1490 lt!2503924 lt!2503945 (t!381252 s!7408)))))

(declare-fun lt!2503932 () Unit!161312)

(assert (=> b!7010222 (= lt!2503932 (lemmaConcatPreservesForall!653 lt!2503938 (exprs!6813 ct2!306) lambda!408380))))

(declare-fun lt!2503926 () Unit!161312)

(assert (=> b!7010222 (= lt!2503926 (lemmaConcatPreservesForall!653 lt!2503938 (exprs!6813 ct2!306) lambda!408380))))

(declare-fun b!7010223 () Bool)

(declare-fun res!2860440 () Bool)

(assert (=> b!7010223 (=> res!2860440 e!4213877)))

(assert (=> b!7010223 (= res!2860440 (not ((_ is Cons!67372) (exprs!6813 lt!2503918))))))

(declare-fun b!7010224 () Bool)

(declare-fun tp!1932342 () Bool)

(assert (=> b!7010224 (= e!4213867 tp!1932342)))

(declare-fun b!7010225 () Bool)

(assert (=> b!7010225 (= e!4213866 true)))

(declare-fun lt!2503922 () (InoxSet Context!12626))

(assert (=> b!7010225 (= lt!2503922 (derivationStepZipperUp!1967 lt!2503918 (h!73821 s!7408)))))

(assert (= (and start!675156 res!2860451) b!7010207))

(assert (= (and b!7010207 res!2860456) b!7010221))

(assert (= (and b!7010221 (not res!2860446)) b!7010215))

(assert (= (and b!7010215 (not res!2860442)) b!7010213))

(assert (= (and b!7010213 (not res!2860444)) b!7010211))

(assert (= (and b!7010211 (not res!2860453)) b!7010204))

(assert (= (and b!7010204 (not res!2860450)) b!7010223))

(assert (= (and b!7010223 (not res!2860440)) b!7010206))

(assert (= (and b!7010206 (not res!2860443)) b!7010209))

(assert (= (and b!7010209 (not res!2860455)) b!7010210))

(assert (= (and b!7010210 (not res!2860449)) b!7010222))

(assert (= (and b!7010222 (not res!2860452)) b!7010217))

(assert (= (and b!7010222 res!2860447) b!7010218))

(assert (= (and b!7010222 (not res!2860448)) b!7010203))

(assert (= (and b!7010203 (not res!2860458)) b!7010212))

(assert (= (and b!7010212 (not res!2860445)) b!7010216))

(assert (= (and b!7010216 (not res!2860457)) b!7010214))

(assert (= (and b!7010214 (not res!2860439)) b!7010220))

(assert (= (and b!7010220 (not res!2860454)) b!7010219))

(assert (= (and b!7010219 (not res!2860441)) b!7010225))

(assert (= (and start!675156 condSetEmpty!48353) setIsEmpty!48353))

(assert (= (and start!675156 (not condSetEmpty!48353)) setNonEmpty!48353))

(assert (= setNonEmpty!48353 b!7010224))

(assert (= start!675156 b!7010208))

(assert (= (and start!675156 ((_ is Cons!67373) s!7408)) b!7010205))

(declare-fun m!7707994 () Bool)

(assert (=> b!7010216 m!7707994))

(assert (=> b!7010216 m!7707994))

(assert (=> b!7010210 m!7707994))

(declare-fun m!7707996 () Bool)

(assert (=> b!7010210 m!7707996))

(declare-fun m!7707998 () Bool)

(assert (=> b!7010210 m!7707998))

(assert (=> b!7010210 m!7707994))

(declare-fun m!7708000 () Bool)

(assert (=> b!7010210 m!7708000))

(declare-fun m!7708002 () Bool)

(assert (=> b!7010209 m!7708002))

(declare-fun m!7708004 () Bool)

(assert (=> b!7010209 m!7708004))

(declare-fun m!7708006 () Bool)

(assert (=> b!7010218 m!7708006))

(assert (=> b!7010218 m!7707994))

(declare-fun m!7708008 () Bool)

(assert (=> b!7010215 m!7708008))

(declare-fun m!7708010 () Bool)

(assert (=> b!7010220 m!7708010))

(declare-fun m!7708012 () Bool)

(assert (=> b!7010211 m!7708012))

(declare-fun m!7708014 () Bool)

(assert (=> b!7010211 m!7708014))

(assert (=> b!7010217 m!7708006))

(declare-fun m!7708016 () Bool)

(assert (=> b!7010219 m!7708016))

(assert (=> b!7010212 m!7708006))

(assert (=> b!7010212 m!7707994))

(declare-fun m!7708018 () Bool)

(assert (=> b!7010214 m!7708018))

(assert (=> b!7010214 m!7707994))

(declare-fun m!7708020 () Bool)

(assert (=> b!7010214 m!7708020))

(declare-fun m!7708022 () Bool)

(assert (=> b!7010214 m!7708022))

(declare-fun m!7708024 () Bool)

(assert (=> b!7010214 m!7708024))

(declare-fun m!7708026 () Bool)

(assert (=> b!7010214 m!7708026))

(declare-fun m!7708028 () Bool)

(assert (=> b!7010214 m!7708028))

(assert (=> b!7010214 m!7707994))

(declare-fun m!7708030 () Bool)

(assert (=> b!7010214 m!7708030))

(declare-fun m!7708032 () Bool)

(assert (=> b!7010214 m!7708032))

(declare-fun m!7708034 () Bool)

(assert (=> b!7010214 m!7708034))

(declare-fun m!7708036 () Bool)

(assert (=> b!7010206 m!7708036))

(declare-fun m!7708038 () Bool)

(assert (=> b!7010213 m!7708038))

(declare-fun m!7708040 () Bool)

(assert (=> b!7010213 m!7708040))

(assert (=> b!7010213 m!7708014))

(declare-fun m!7708042 () Bool)

(assert (=> b!7010213 m!7708042))

(declare-fun m!7708044 () Bool)

(assert (=> start!675156 m!7708044))

(declare-fun m!7708046 () Bool)

(assert (=> start!675156 m!7708046))

(declare-fun m!7708048 () Bool)

(assert (=> start!675156 m!7708048))

(declare-fun m!7708050 () Bool)

(assert (=> setNonEmpty!48353 m!7708050))

(declare-fun m!7708052 () Bool)

(assert (=> b!7010204 m!7708052))

(declare-fun m!7708054 () Bool)

(assert (=> b!7010204 m!7708054))

(assert (=> b!7010204 m!7708014))

(declare-fun m!7708056 () Bool)

(assert (=> b!7010204 m!7708056))

(declare-fun m!7708058 () Bool)

(assert (=> b!7010204 m!7708058))

(declare-fun m!7708060 () Bool)

(assert (=> b!7010221 m!7708060))

(declare-fun m!7708062 () Bool)

(assert (=> b!7010221 m!7708062))

(declare-fun m!7708064 () Bool)

(assert (=> b!7010221 m!7708064))

(declare-fun m!7708066 () Bool)

(assert (=> b!7010221 m!7708066))

(declare-fun m!7708068 () Bool)

(assert (=> b!7010221 m!7708068))

(declare-fun m!7708070 () Bool)

(assert (=> b!7010221 m!7708070))

(declare-fun m!7708072 () Bool)

(assert (=> b!7010225 m!7708072))

(declare-fun m!7708074 () Bool)

(assert (=> b!7010222 m!7708074))

(assert (=> b!7010222 m!7707994))

(declare-fun m!7708076 () Bool)

(assert (=> b!7010222 m!7708076))

(assert (=> b!7010222 m!7707994))

(declare-fun m!7708078 () Bool)

(assert (=> b!7010222 m!7708078))

(declare-fun m!7708080 () Bool)

(assert (=> b!7010222 m!7708080))

(assert (=> b!7010222 m!7707994))

(check-sat (not b!7010204) (not b!7010221) (not start!675156) (not b!7010209) (not b!7010211) (not b!7010219) (not setNonEmpty!48353) tp_is_empty!43859 (not b!7010213) (not b!7010205) (not b!7010214) (not b!7010210) (not b!7010212) (not b!7010206) (not b!7010217) (not b!7010222) (not b!7010208) (not b!7010216) (not b!7010220) (not b!7010218) (not b!7010224) (not b!7010225))
(check-sat)
