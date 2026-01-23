; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!603698 () Bool)

(assert start!603698)

(declare-fun b!5941954 () Bool)

(assert (=> b!5941954 true))

(assert (=> b!5941954 true))

(declare-fun lambda!324101 () Int)

(declare-fun lambda!324100 () Int)

(assert (=> b!5941954 (not (= lambda!324101 lambda!324100))))

(assert (=> b!5941954 true))

(assert (=> b!5941954 true))

(declare-fun b!5941971 () Bool)

(assert (=> b!5941971 true))

(declare-fun e!3635734 () Bool)

(declare-fun e!3635741 () Bool)

(assert (=> b!5941954 (= e!3635734 e!3635741)))

(declare-fun res!2488431 () Bool)

(assert (=> b!5941954 (=> res!2488431 e!3635741)))

(declare-datatypes ((C!32244 0))(
  ( (C!32245 (val!25824 Int)) )
))
(declare-datatypes ((List!64260 0))(
  ( (Nil!64136) (Cons!64136 (h!70584 C!32244) (t!377667 List!64260)) )
))
(declare-fun s!2326 () List!64260)

(declare-fun lt!2311956 () Bool)

(declare-fun lt!2311961 () Bool)

(get-info :version)

(assert (=> b!5941954 (= res!2488431 (or (not (= lt!2311961 lt!2311956)) ((_ is Nil!64136) s!2326)))))

(declare-fun Exists!3057 (Int) Bool)

(assert (=> b!5941954 (= (Exists!3057 lambda!324100) (Exists!3057 lambda!324101))))

(declare-datatypes ((Unit!157245 0))(
  ( (Unit!157246) )
))
(declare-fun lt!2311949 () Unit!157245)

(declare-datatypes ((Regex!15987 0))(
  ( (ElementMatch!15987 (c!1056714 C!32244)) (Concat!24832 (regOne!32486 Regex!15987) (regTwo!32486 Regex!15987)) (EmptyExpr!15987) (Star!15987 (reg!16316 Regex!15987)) (EmptyLang!15987) (Union!15987 (regOne!32487 Regex!15987) (regTwo!32487 Regex!15987)) )
))
(declare-fun r!7292 () Regex!15987)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1594 (Regex!15987 Regex!15987 List!64260) Unit!157245)

(assert (=> b!5941954 (= lt!2311949 (lemmaExistCutMatchRandMatchRSpecEquivalent!1594 (regOne!32486 r!7292) (regTwo!32486 r!7292) s!2326))))

(assert (=> b!5941954 (= lt!2311956 (Exists!3057 lambda!324100))))

(declare-datatypes ((tuple2!65932 0))(
  ( (tuple2!65933 (_1!36269 List!64260) (_2!36269 List!64260)) )
))
(declare-datatypes ((Option!15878 0))(
  ( (None!15877) (Some!15877 (v!51978 tuple2!65932)) )
))
(declare-fun isDefined!12581 (Option!15878) Bool)

(declare-fun findConcatSeparation!2292 (Regex!15987 Regex!15987 List!64260 List!64260 List!64260) Option!15878)

(assert (=> b!5941954 (= lt!2311956 (isDefined!12581 (findConcatSeparation!2292 (regOne!32486 r!7292) (regTwo!32486 r!7292) Nil!64136 s!2326 s!2326)))))

(declare-fun lt!2311950 () Unit!157245)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2056 (Regex!15987 Regex!15987 List!64260) Unit!157245)

(assert (=> b!5941954 (= lt!2311950 (lemmaFindConcatSeparationEquivalentToExists!2056 (regOne!32486 r!7292) (regTwo!32486 r!7292) s!2326))))

(declare-fun b!5941955 () Bool)

(declare-fun e!3635742 () Bool)

(declare-fun tp!1653391 () Bool)

(declare-fun tp!1653397 () Bool)

(assert (=> b!5941955 (= e!3635742 (and tp!1653391 tp!1653397))))

(declare-fun tp!1653394 () Bool)

(declare-datatypes ((List!64261 0))(
  ( (Nil!64137) (Cons!64137 (h!70585 Regex!15987) (t!377668 List!64261)) )
))
(declare-datatypes ((Context!10742 0))(
  ( (Context!10743 (exprs!5871 List!64261)) )
))
(declare-fun setElem!40369 () Context!10742)

(declare-fun setNonEmpty!40369 () Bool)

(declare-fun e!3635735 () Bool)

(declare-fun setRes!40369 () Bool)

(declare-fun inv!83214 (Context!10742) Bool)

(assert (=> setNonEmpty!40369 (= setRes!40369 (and tp!1653394 (inv!83214 setElem!40369) e!3635735))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10742))

(declare-fun setRest!40369 () (InoxSet Context!10742))

(assert (=> setNonEmpty!40369 (= z!1189 ((_ map or) (store ((as const (Array Context!10742 Bool)) false) setElem!40369 true) setRest!40369))))

(declare-fun b!5941956 () Bool)

(declare-fun e!3635732 () Bool)

(declare-fun e!3635740 () Bool)

(assert (=> b!5941956 (= e!3635732 e!3635740)))

(declare-fun res!2488429 () Bool)

(assert (=> b!5941956 (=> res!2488429 e!3635740)))

(declare-fun nullable!5982 (Regex!15987) Bool)

(assert (=> b!5941956 (= res!2488429 (not (nullable!5982 (regOne!32486 r!7292))))))

(declare-fun lt!2311940 () Context!10742)

(declare-fun lt!2311951 () (InoxSet Context!10742))

(declare-fun derivationStepZipperDown!1237 (Regex!15987 Context!10742 C!32244) (InoxSet Context!10742))

(assert (=> b!5941956 (= lt!2311951 (derivationStepZipperDown!1237 (regTwo!32486 r!7292) lt!2311940 (h!70584 s!2326)))))

(declare-fun lt!2311946 () (InoxSet Context!10742))

(declare-fun lt!2311944 () Context!10742)

(assert (=> b!5941956 (= lt!2311946 (derivationStepZipperDown!1237 (regOne!32486 r!7292) lt!2311944 (h!70584 s!2326)))))

(declare-fun lt!2311954 () (InoxSet Context!10742))

(declare-fun lambda!324102 () Int)

(declare-fun flatMap!1500 ((InoxSet Context!10742) Int) (InoxSet Context!10742))

(declare-fun derivationStepZipperUp!1163 (Context!10742 C!32244) (InoxSet Context!10742))

(assert (=> b!5941956 (= (flatMap!1500 lt!2311954 lambda!324102) (derivationStepZipperUp!1163 lt!2311944 (h!70584 s!2326)))))

(declare-fun lt!2311965 () Unit!157245)

(declare-fun lemmaFlatMapOnSingletonSet!1026 ((InoxSet Context!10742) Context!10742 Int) Unit!157245)

(assert (=> b!5941956 (= lt!2311965 (lemmaFlatMapOnSingletonSet!1026 lt!2311954 lt!2311944 lambda!324102))))

(declare-fun lt!2311942 () (InoxSet Context!10742))

(declare-fun lt!2311958 () Context!10742)

(assert (=> b!5941956 (= (flatMap!1500 lt!2311942 lambda!324102) (derivationStepZipperUp!1163 lt!2311958 (h!70584 s!2326)))))

(declare-fun lt!2311960 () Unit!157245)

(assert (=> b!5941956 (= lt!2311960 (lemmaFlatMapOnSingletonSet!1026 lt!2311942 lt!2311958 lambda!324102))))

(declare-fun lt!2311955 () (InoxSet Context!10742))

(assert (=> b!5941956 (= lt!2311955 (derivationStepZipperUp!1163 lt!2311944 (h!70584 s!2326)))))

(declare-fun lt!2311964 () (InoxSet Context!10742))

(assert (=> b!5941956 (= lt!2311964 (derivationStepZipperUp!1163 lt!2311958 (h!70584 s!2326)))))

(assert (=> b!5941956 (= lt!2311954 (store ((as const (Array Context!10742 Bool)) false) lt!2311944 true))))

(declare-fun lt!2311952 () List!64261)

(assert (=> b!5941956 (= lt!2311944 (Context!10743 lt!2311952))))

(assert (=> b!5941956 (= lt!2311942 (store ((as const (Array Context!10742 Bool)) false) lt!2311958 true))))

(assert (=> b!5941956 (= lt!2311958 (Context!10743 (Cons!64137 (regOne!32486 r!7292) lt!2311952)))))

(assert (=> b!5941956 (= lt!2311952 (Cons!64137 (regTwo!32486 r!7292) Nil!64137))))

(declare-fun b!5941957 () Bool)

(declare-fun res!2488428 () Bool)

(assert (=> b!5941957 (=> res!2488428 e!3635734)))

(assert (=> b!5941957 (= res!2488428 (or ((_ is EmptyExpr!15987) r!7292) ((_ is EmptyLang!15987) r!7292) ((_ is ElementMatch!15987) r!7292) ((_ is Union!15987) r!7292) (not ((_ is Concat!24832) r!7292))))))

(declare-fun b!5941958 () Bool)

(declare-fun res!2488439 () Bool)

(declare-fun e!3635736 () Bool)

(assert (=> b!5941958 (=> (not res!2488439) (not e!3635736))))

(declare-datatypes ((List!64262 0))(
  ( (Nil!64138) (Cons!64138 (h!70586 Context!10742) (t!377669 List!64262)) )
))
(declare-fun zl!343 () List!64262)

(declare-fun unfocusZipper!1729 (List!64262) Regex!15987)

(assert (=> b!5941958 (= res!2488439 (= r!7292 (unfocusZipper!1729 zl!343)))))

(declare-fun b!5941959 () Bool)

(declare-fun tp!1653399 () Bool)

(assert (=> b!5941959 (= e!3635735 tp!1653399)))

(declare-fun b!5941960 () Bool)

(declare-fun res!2488430 () Bool)

(assert (=> b!5941960 (=> res!2488430 e!3635741)))

(declare-fun isEmpty!36009 (List!64261) Bool)

(assert (=> b!5941960 (= res!2488430 (not (isEmpty!36009 (t!377668 (exprs!5871 (h!70586 zl!343))))))))

(declare-fun b!5941961 () Bool)

(declare-fun tp!1653393 () Bool)

(declare-fun tp!1653395 () Bool)

(assert (=> b!5941961 (= e!3635742 (and tp!1653393 tp!1653395))))

(declare-fun b!5941962 () Bool)

(declare-fun res!2488445 () Bool)

(declare-fun e!3635737 () Bool)

(assert (=> b!5941962 (=> res!2488445 e!3635737)))

(declare-fun matchZipper!2023 ((InoxSet Context!10742) List!64260) Bool)

(declare-fun derivationStepZipper!1968 ((InoxSet Context!10742) C!32244) (InoxSet Context!10742))

(assert (=> b!5941962 (= res!2488445 (not (= (matchZipper!2023 lt!2311942 s!2326) (matchZipper!2023 (derivationStepZipper!1968 lt!2311942 (h!70584 s!2326)) (t!377667 s!2326)))))))

(declare-fun b!5941963 () Bool)

(declare-fun res!2488438 () Bool)

(assert (=> b!5941963 (=> res!2488438 e!3635737)))

(assert (=> b!5941963 (= res!2488438 (not (= (matchZipper!2023 lt!2311954 s!2326) (matchZipper!2023 (derivationStepZipper!1968 lt!2311954 (h!70584 s!2326)) (t!377667 s!2326)))))))

(declare-fun b!5941964 () Bool)

(declare-fun tp!1653392 () Bool)

(assert (=> b!5941964 (= e!3635742 tp!1653392)))

(declare-fun res!2488442 () Bool)

(assert (=> start!603698 (=> (not res!2488442) (not e!3635736))))

(declare-fun validRegex!7723 (Regex!15987) Bool)

(assert (=> start!603698 (= res!2488442 (validRegex!7723 r!7292))))

(assert (=> start!603698 e!3635736))

(assert (=> start!603698 e!3635742))

(declare-fun condSetEmpty!40369 () Bool)

(assert (=> start!603698 (= condSetEmpty!40369 (= z!1189 ((as const (Array Context!10742 Bool)) false)))))

(assert (=> start!603698 setRes!40369))

(declare-fun e!3635739 () Bool)

(assert (=> start!603698 e!3635739))

(declare-fun e!3635731 () Bool)

(assert (=> start!603698 e!3635731))

(declare-fun b!5941965 () Bool)

(declare-fun res!2488437 () Bool)

(assert (=> b!5941965 (=> res!2488437 e!3635734)))

(assert (=> b!5941965 (= res!2488437 (not ((_ is Cons!64137) (exprs!5871 (h!70586 zl!343)))))))

(declare-fun b!5941966 () Bool)

(declare-fun res!2488427 () Bool)

(assert (=> b!5941966 (=> (not res!2488427) (not e!3635736))))

(declare-fun toList!9771 ((InoxSet Context!10742)) List!64262)

(assert (=> b!5941966 (= res!2488427 (= (toList!9771 z!1189) zl!343))))

(declare-fun b!5941967 () Bool)

(declare-fun tp_is_empty!41227 () Bool)

(assert (=> b!5941967 (= e!3635742 tp_is_empty!41227)))

(declare-fun b!5941968 () Bool)

(declare-fun e!3635729 () Bool)

(declare-fun tp!1653396 () Bool)

(assert (=> b!5941968 (= e!3635729 tp!1653396)))

(declare-fun b!5941969 () Bool)

(assert (=> b!5941969 (= e!3635736 (not e!3635734))))

(declare-fun res!2488446 () Bool)

(assert (=> b!5941969 (=> res!2488446 e!3635734)))

(assert (=> b!5941969 (= res!2488446 (not ((_ is Cons!64138) zl!343)))))

(declare-fun matchRSpec!3088 (Regex!15987 List!64260) Bool)

(assert (=> b!5941969 (= lt!2311961 (matchRSpec!3088 r!7292 s!2326))))

(declare-fun matchR!8170 (Regex!15987 List!64260) Bool)

(assert (=> b!5941969 (= lt!2311961 (matchR!8170 r!7292 s!2326))))

(declare-fun lt!2311962 () Unit!157245)

(declare-fun mainMatchTheorem!3088 (Regex!15987 List!64260) Unit!157245)

(assert (=> b!5941969 (= lt!2311962 (mainMatchTheorem!3088 r!7292 s!2326))))

(declare-fun b!5941970 () Bool)

(declare-fun e!3635730 () Bool)

(assert (=> b!5941970 (= e!3635740 e!3635730)))

(declare-fun res!2488436 () Bool)

(assert (=> b!5941970 (=> res!2488436 e!3635730)))

(declare-fun lt!2311966 () (InoxSet Context!10742))

(declare-fun lt!2311953 () (InoxSet Context!10742))

(assert (=> b!5941970 (= res!2488436 (not (= lt!2311966 lt!2311953)))))

(assert (=> b!5941970 (= lt!2311953 ((_ map or) lt!2311946 lt!2311951))))

(declare-fun e!3635738 () Bool)

(assert (=> b!5941971 (= e!3635738 e!3635732)))

(declare-fun res!2488432 () Bool)

(assert (=> b!5941971 (=> res!2488432 e!3635732)))

(declare-fun lt!2311941 () (InoxSet Context!10742))

(assert (=> b!5941971 (= res!2488432 (not (= lt!2311966 lt!2311941)))))

(assert (=> b!5941971 (= (flatMap!1500 z!1189 lambda!324102) (derivationStepZipperUp!1163 (h!70586 zl!343) (h!70584 s!2326)))))

(declare-fun lt!2311957 () Unit!157245)

(assert (=> b!5941971 (= lt!2311957 (lemmaFlatMapOnSingletonSet!1026 z!1189 (h!70586 zl!343) lambda!324102))))

(declare-fun b!5941972 () Bool)

(declare-fun res!2488441 () Bool)

(assert (=> b!5941972 (=> res!2488441 e!3635734)))

(declare-fun generalisedConcat!1584 (List!64261) Regex!15987)

(assert (=> b!5941972 (= res!2488441 (not (= r!7292 (generalisedConcat!1584 (exprs!5871 (h!70586 zl!343))))))))

(declare-fun b!5941973 () Bool)

(declare-fun e!3635733 () Bool)

(assert (=> b!5941973 (= e!3635733 (matchZipper!2023 lt!2311951 (t!377667 s!2326)))))

(declare-fun b!5941974 () Bool)

(declare-fun tp!1653398 () Bool)

(assert (=> b!5941974 (= e!3635739 (and (inv!83214 (h!70586 zl!343)) e!3635729 tp!1653398))))

(declare-fun b!5941975 () Bool)

(declare-fun res!2488433 () Bool)

(assert (=> b!5941975 (=> res!2488433 e!3635737)))

(assert (=> b!5941975 (= res!2488433 (or (not (= lt!2311964 ((_ map or) lt!2311946 lt!2311955))) (not (= lt!2311964 lt!2311953)) (not (= lt!2311964 lt!2311966))))))

(declare-fun b!5941976 () Bool)

(declare-fun tp!1653400 () Bool)

(assert (=> b!5941976 (= e!3635731 (and tp_is_empty!41227 tp!1653400))))

(declare-fun b!5941977 () Bool)

(declare-fun lt!2311943 () Context!10742)

(assert (=> b!5941977 (= e!3635737 (inv!83214 lt!2311943))))

(declare-fun setIsEmpty!40369 () Bool)

(assert (=> setIsEmpty!40369 setRes!40369))

(declare-fun b!5941978 () Bool)

(declare-fun res!2488443 () Bool)

(assert (=> b!5941978 (=> res!2488443 e!3635734)))

(declare-fun isEmpty!36010 (List!64262) Bool)

(assert (=> b!5941978 (= res!2488443 (not (isEmpty!36010 (t!377669 zl!343))))))

(declare-fun b!5941979 () Bool)

(assert (=> b!5941979 (= e!3635741 e!3635738)))

(declare-fun res!2488435 () Bool)

(assert (=> b!5941979 (=> res!2488435 e!3635738)))

(declare-fun lt!2311959 () (InoxSet Context!10742))

(assert (=> b!5941979 (= res!2488435 (not (= lt!2311959 lt!2311941)))))

(assert (=> b!5941979 (= lt!2311941 (derivationStepZipperDown!1237 r!7292 lt!2311940 (h!70584 s!2326)))))

(assert (=> b!5941979 (= lt!2311940 (Context!10743 Nil!64137))))

(assert (=> b!5941979 (= lt!2311959 (derivationStepZipperUp!1163 lt!2311943 (h!70584 s!2326)))))

(assert (=> b!5941979 (= lt!2311943 (Context!10743 (Cons!64137 r!7292 Nil!64137)))))

(assert (=> b!5941979 (= lt!2311966 (derivationStepZipper!1968 z!1189 (h!70584 s!2326)))))

(declare-fun b!5941980 () Bool)

(assert (=> b!5941980 (= e!3635730 e!3635737)))

(declare-fun res!2488440 () Bool)

(assert (=> b!5941980 (=> res!2488440 e!3635737)))

(declare-fun lt!2311948 () Bool)

(assert (=> b!5941980 (= res!2488440 (not (= lt!2311948 (matchZipper!2023 lt!2311966 (t!377667 s!2326)))))))

(declare-fun lt!2311945 () Bool)

(assert (=> b!5941980 (= lt!2311945 lt!2311948)))

(assert (=> b!5941980 (= lt!2311948 e!3635733)))

(declare-fun res!2488434 () Bool)

(assert (=> b!5941980 (=> res!2488434 e!3635733)))

(declare-fun lt!2311947 () Bool)

(assert (=> b!5941980 (= res!2488434 lt!2311947)))

(assert (=> b!5941980 (= lt!2311945 (matchZipper!2023 lt!2311953 (t!377667 s!2326)))))

(assert (=> b!5941980 (= lt!2311947 (matchZipper!2023 lt!2311946 (t!377667 s!2326)))))

(declare-fun lt!2311963 () Unit!157245)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!854 ((InoxSet Context!10742) (InoxSet Context!10742) List!64260) Unit!157245)

(assert (=> b!5941980 (= lt!2311963 (lemmaZipperConcatMatchesSameAsBothZippers!854 lt!2311946 lt!2311951 (t!377667 s!2326)))))

(declare-fun b!5941981 () Bool)

(declare-fun res!2488444 () Bool)

(assert (=> b!5941981 (=> res!2488444 e!3635734)))

(declare-fun generalisedUnion!1831 (List!64261) Regex!15987)

(declare-fun unfocusZipperList!1408 (List!64262) List!64261)

(assert (=> b!5941981 (= res!2488444 (not (= r!7292 (generalisedUnion!1831 (unfocusZipperList!1408 zl!343)))))))

(assert (= (and start!603698 res!2488442) b!5941966))

(assert (= (and b!5941966 res!2488427) b!5941958))

(assert (= (and b!5941958 res!2488439) b!5941969))

(assert (= (and b!5941969 (not res!2488446)) b!5941978))

(assert (= (and b!5941978 (not res!2488443)) b!5941972))

(assert (= (and b!5941972 (not res!2488441)) b!5941965))

(assert (= (and b!5941965 (not res!2488437)) b!5941981))

(assert (= (and b!5941981 (not res!2488444)) b!5941957))

(assert (= (and b!5941957 (not res!2488428)) b!5941954))

(assert (= (and b!5941954 (not res!2488431)) b!5941960))

(assert (= (and b!5941960 (not res!2488430)) b!5941979))

(assert (= (and b!5941979 (not res!2488435)) b!5941971))

(assert (= (and b!5941971 (not res!2488432)) b!5941956))

(assert (= (and b!5941956 (not res!2488429)) b!5941970))

(assert (= (and b!5941970 (not res!2488436)) b!5941980))

(assert (= (and b!5941980 (not res!2488434)) b!5941973))

(assert (= (and b!5941980 (not res!2488440)) b!5941975))

(assert (= (and b!5941975 (not res!2488433)) b!5941962))

(assert (= (and b!5941962 (not res!2488445)) b!5941963))

(assert (= (and b!5941963 (not res!2488438)) b!5941977))

(assert (= (and start!603698 ((_ is ElementMatch!15987) r!7292)) b!5941967))

(assert (= (and start!603698 ((_ is Concat!24832) r!7292)) b!5941961))

(assert (= (and start!603698 ((_ is Star!15987) r!7292)) b!5941964))

(assert (= (and start!603698 ((_ is Union!15987) r!7292)) b!5941955))

(assert (= (and start!603698 condSetEmpty!40369) setIsEmpty!40369))

(assert (= (and start!603698 (not condSetEmpty!40369)) setNonEmpty!40369))

(assert (= setNonEmpty!40369 b!5941959))

(assert (= b!5941974 b!5941968))

(assert (= (and start!603698 ((_ is Cons!64138) zl!343)) b!5941974))

(assert (= (and start!603698 ((_ is Cons!64136) s!2326)) b!5941976))

(declare-fun m!6831440 () Bool)

(assert (=> b!5941981 m!6831440))

(assert (=> b!5941981 m!6831440))

(declare-fun m!6831442 () Bool)

(assert (=> b!5941981 m!6831442))

(declare-fun m!6831444 () Bool)

(assert (=> b!5941972 m!6831444))

(declare-fun m!6831446 () Bool)

(assert (=> b!5941969 m!6831446))

(declare-fun m!6831448 () Bool)

(assert (=> b!5941969 m!6831448))

(declare-fun m!6831450 () Bool)

(assert (=> b!5941969 m!6831450))

(declare-fun m!6831452 () Bool)

(assert (=> b!5941974 m!6831452))

(declare-fun m!6831454 () Bool)

(assert (=> b!5941954 m!6831454))

(declare-fun m!6831456 () Bool)

(assert (=> b!5941954 m!6831456))

(declare-fun m!6831458 () Bool)

(assert (=> b!5941954 m!6831458))

(declare-fun m!6831460 () Bool)

(assert (=> b!5941954 m!6831460))

(declare-fun m!6831462 () Bool)

(assert (=> b!5941954 m!6831462))

(assert (=> b!5941954 m!6831462))

(assert (=> b!5941954 m!6831458))

(declare-fun m!6831464 () Bool)

(assert (=> b!5941954 m!6831464))

(declare-fun m!6831466 () Bool)

(assert (=> b!5941966 m!6831466))

(declare-fun m!6831468 () Bool)

(assert (=> b!5941956 m!6831468))

(declare-fun m!6831470 () Bool)

(assert (=> b!5941956 m!6831470))

(declare-fun m!6831472 () Bool)

(assert (=> b!5941956 m!6831472))

(declare-fun m!6831474 () Bool)

(assert (=> b!5941956 m!6831474))

(declare-fun m!6831476 () Bool)

(assert (=> b!5941956 m!6831476))

(declare-fun m!6831478 () Bool)

(assert (=> b!5941956 m!6831478))

(declare-fun m!6831480 () Bool)

(assert (=> b!5941956 m!6831480))

(declare-fun m!6831482 () Bool)

(assert (=> b!5941956 m!6831482))

(declare-fun m!6831484 () Bool)

(assert (=> b!5941956 m!6831484))

(declare-fun m!6831486 () Bool)

(assert (=> b!5941956 m!6831486))

(declare-fun m!6831488 () Bool)

(assert (=> b!5941956 m!6831488))

(declare-fun m!6831490 () Bool)

(assert (=> b!5941971 m!6831490))

(declare-fun m!6831492 () Bool)

(assert (=> b!5941971 m!6831492))

(declare-fun m!6831494 () Bool)

(assert (=> b!5941971 m!6831494))

(declare-fun m!6831496 () Bool)

(assert (=> setNonEmpty!40369 m!6831496))

(declare-fun m!6831498 () Bool)

(assert (=> start!603698 m!6831498))

(declare-fun m!6831500 () Bool)

(assert (=> b!5941960 m!6831500))

(declare-fun m!6831502 () Bool)

(assert (=> b!5941963 m!6831502))

(declare-fun m!6831504 () Bool)

(assert (=> b!5941963 m!6831504))

(assert (=> b!5941963 m!6831504))

(declare-fun m!6831506 () Bool)

(assert (=> b!5941963 m!6831506))

(declare-fun m!6831508 () Bool)

(assert (=> b!5941980 m!6831508))

(declare-fun m!6831510 () Bool)

(assert (=> b!5941980 m!6831510))

(declare-fun m!6831512 () Bool)

(assert (=> b!5941980 m!6831512))

(declare-fun m!6831514 () Bool)

(assert (=> b!5941980 m!6831514))

(declare-fun m!6831516 () Bool)

(assert (=> b!5941973 m!6831516))

(declare-fun m!6831518 () Bool)

(assert (=> b!5941979 m!6831518))

(declare-fun m!6831520 () Bool)

(assert (=> b!5941979 m!6831520))

(declare-fun m!6831522 () Bool)

(assert (=> b!5941979 m!6831522))

(declare-fun m!6831524 () Bool)

(assert (=> b!5941977 m!6831524))

(declare-fun m!6831526 () Bool)

(assert (=> b!5941978 m!6831526))

(declare-fun m!6831528 () Bool)

(assert (=> b!5941958 m!6831528))

(declare-fun m!6831530 () Bool)

(assert (=> b!5941962 m!6831530))

(declare-fun m!6831532 () Bool)

(assert (=> b!5941962 m!6831532))

(assert (=> b!5941962 m!6831532))

(declare-fun m!6831534 () Bool)

(assert (=> b!5941962 m!6831534))

(check-sat (not b!5941979) (not b!5941968) (not b!5941976) (not b!5941962) (not b!5941960) tp_is_empty!41227 (not b!5941981) (not b!5941980) (not b!5941955) (not b!5941973) (not b!5941971) (not b!5941961) (not b!5941977) (not b!5941966) (not b!5941974) (not b!5941954) (not b!5941969) (not b!5941958) (not b!5941956) (not b!5941964) (not b!5941959) (not b!5941978) (not b!5941972) (not start!603698) (not b!5941963) (not setNonEmpty!40369))
(check-sat)
(get-model)

(declare-fun d!1862757 () Bool)

(declare-fun lambda!324114 () Int)

(declare-fun forall!15069 (List!64261 Int) Bool)

(assert (=> d!1862757 (= (inv!83214 lt!2311943) (forall!15069 (exprs!5871 lt!2311943) lambda!324114))))

(declare-fun bs!1405769 () Bool)

(assert (= bs!1405769 d!1862757))

(declare-fun m!6831566 () Bool)

(assert (=> bs!1405769 m!6831566))

(assert (=> b!5941977 d!1862757))

(declare-fun d!1862761 () Bool)

(declare-fun choose!44775 ((InoxSet Context!10742) Int) (InoxSet Context!10742))

(assert (=> d!1862761 (= (flatMap!1500 lt!2311942 lambda!324102) (choose!44775 lt!2311942 lambda!324102))))

(declare-fun bs!1405771 () Bool)

(assert (= bs!1405771 d!1862761))

(declare-fun m!6831574 () Bool)

(assert (=> bs!1405771 m!6831574))

(assert (=> b!5941956 d!1862761))

(declare-fun d!1862765 () Bool)

(declare-fun dynLambda!25087 (Int Context!10742) (InoxSet Context!10742))

(assert (=> d!1862765 (= (flatMap!1500 lt!2311942 lambda!324102) (dynLambda!25087 lambda!324102 lt!2311958))))

(declare-fun lt!2311978 () Unit!157245)

(declare-fun choose!44777 ((InoxSet Context!10742) Context!10742 Int) Unit!157245)

(assert (=> d!1862765 (= lt!2311978 (choose!44777 lt!2311942 lt!2311958 lambda!324102))))

(assert (=> d!1862765 (= lt!2311942 (store ((as const (Array Context!10742 Bool)) false) lt!2311958 true))))

(assert (=> d!1862765 (= (lemmaFlatMapOnSingletonSet!1026 lt!2311942 lt!2311958 lambda!324102) lt!2311978)))

(declare-fun b_lambda!223225 () Bool)

(assert (=> (not b_lambda!223225) (not d!1862765)))

(declare-fun bs!1405773 () Bool)

(assert (= bs!1405773 d!1862765))

(assert (=> bs!1405773 m!6831476))

(declare-fun m!6831578 () Bool)

(assert (=> bs!1405773 m!6831578))

(declare-fun m!6831580 () Bool)

(assert (=> bs!1405773 m!6831580))

(assert (=> bs!1405773 m!6831468))

(assert (=> b!5941956 d!1862765))

(declare-fun d!1862769 () Bool)

(declare-fun nullableFct!1953 (Regex!15987) Bool)

(assert (=> d!1862769 (= (nullable!5982 (regOne!32486 r!7292)) (nullableFct!1953 (regOne!32486 r!7292)))))

(declare-fun bs!1405774 () Bool)

(assert (= bs!1405774 d!1862769))

(declare-fun m!6831582 () Bool)

(assert (=> bs!1405774 m!6831582))

(assert (=> b!5941956 d!1862769))

(declare-fun b!5942113 () Bool)

(declare-fun e!3635820 () Bool)

(assert (=> b!5942113 (= e!3635820 (nullable!5982 (h!70585 (exprs!5871 lt!2311958))))))

(declare-fun b!5942114 () Bool)

(declare-fun e!3635819 () (InoxSet Context!10742))

(declare-fun call!472473 () (InoxSet Context!10742))

(assert (=> b!5942114 (= e!3635819 call!472473)))

(declare-fun d!1862771 () Bool)

(declare-fun c!1056747 () Bool)

(assert (=> d!1862771 (= c!1056747 e!3635820)))

(declare-fun res!2488510 () Bool)

(assert (=> d!1862771 (=> (not res!2488510) (not e!3635820))))

(assert (=> d!1862771 (= res!2488510 ((_ is Cons!64137) (exprs!5871 lt!2311958)))))

(declare-fun e!3635821 () (InoxSet Context!10742))

(assert (=> d!1862771 (= (derivationStepZipperUp!1163 lt!2311958 (h!70584 s!2326)) e!3635821)))

(declare-fun b!5942115 () Bool)

(assert (=> b!5942115 (= e!3635819 ((as const (Array Context!10742 Bool)) false))))

(declare-fun b!5942116 () Bool)

(assert (=> b!5942116 (= e!3635821 e!3635819)))

(declare-fun c!1056746 () Bool)

(assert (=> b!5942116 (= c!1056746 ((_ is Cons!64137) (exprs!5871 lt!2311958)))))

(declare-fun b!5942117 () Bool)

(assert (=> b!5942117 (= e!3635821 ((_ map or) call!472473 (derivationStepZipperUp!1163 (Context!10743 (t!377668 (exprs!5871 lt!2311958))) (h!70584 s!2326))))))

(declare-fun bm!472468 () Bool)

(assert (=> bm!472468 (= call!472473 (derivationStepZipperDown!1237 (h!70585 (exprs!5871 lt!2311958)) (Context!10743 (t!377668 (exprs!5871 lt!2311958))) (h!70584 s!2326)))))

(assert (= (and d!1862771 res!2488510) b!5942113))

(assert (= (and d!1862771 c!1056747) b!5942117))

(assert (= (and d!1862771 (not c!1056747)) b!5942116))

(assert (= (and b!5942116 c!1056746) b!5942114))

(assert (= (and b!5942116 (not c!1056746)) b!5942115))

(assert (= (or b!5942117 b!5942114) bm!472468))

(declare-fun m!6831584 () Bool)

(assert (=> b!5942113 m!6831584))

(declare-fun m!6831586 () Bool)

(assert (=> b!5942117 m!6831586))

(declare-fun m!6831588 () Bool)

(assert (=> bm!472468 m!6831588))

(assert (=> b!5941956 d!1862771))

(declare-fun b!5942118 () Bool)

(declare-fun e!3635823 () Bool)

(assert (=> b!5942118 (= e!3635823 (nullable!5982 (h!70585 (exprs!5871 lt!2311944))))))

(declare-fun b!5942119 () Bool)

(declare-fun e!3635822 () (InoxSet Context!10742))

(declare-fun call!472474 () (InoxSet Context!10742))

(assert (=> b!5942119 (= e!3635822 call!472474)))

(declare-fun d!1862773 () Bool)

(declare-fun c!1056749 () Bool)

(assert (=> d!1862773 (= c!1056749 e!3635823)))

(declare-fun res!2488511 () Bool)

(assert (=> d!1862773 (=> (not res!2488511) (not e!3635823))))

(assert (=> d!1862773 (= res!2488511 ((_ is Cons!64137) (exprs!5871 lt!2311944)))))

(declare-fun e!3635824 () (InoxSet Context!10742))

(assert (=> d!1862773 (= (derivationStepZipperUp!1163 lt!2311944 (h!70584 s!2326)) e!3635824)))

(declare-fun b!5942120 () Bool)

(assert (=> b!5942120 (= e!3635822 ((as const (Array Context!10742 Bool)) false))))

(declare-fun b!5942121 () Bool)

(assert (=> b!5942121 (= e!3635824 e!3635822)))

(declare-fun c!1056748 () Bool)

(assert (=> b!5942121 (= c!1056748 ((_ is Cons!64137) (exprs!5871 lt!2311944)))))

(declare-fun b!5942122 () Bool)

(assert (=> b!5942122 (= e!3635824 ((_ map or) call!472474 (derivationStepZipperUp!1163 (Context!10743 (t!377668 (exprs!5871 lt!2311944))) (h!70584 s!2326))))))

(declare-fun bm!472469 () Bool)

(assert (=> bm!472469 (= call!472474 (derivationStepZipperDown!1237 (h!70585 (exprs!5871 lt!2311944)) (Context!10743 (t!377668 (exprs!5871 lt!2311944))) (h!70584 s!2326)))))

(assert (= (and d!1862773 res!2488511) b!5942118))

(assert (= (and d!1862773 c!1056749) b!5942122))

(assert (= (and d!1862773 (not c!1056749)) b!5942121))

(assert (= (and b!5942121 c!1056748) b!5942119))

(assert (= (and b!5942121 (not c!1056748)) b!5942120))

(assert (= (or b!5942122 b!5942119) bm!472469))

(declare-fun m!6831590 () Bool)

(assert (=> b!5942118 m!6831590))

(declare-fun m!6831592 () Bool)

(assert (=> b!5942122 m!6831592))

(declare-fun m!6831594 () Bool)

(assert (=> bm!472469 m!6831594))

(assert (=> b!5941956 d!1862773))

(declare-fun bm!472482 () Bool)

(declare-fun call!472487 () (InoxSet Context!10742))

(declare-fun call!472492 () List!64261)

(declare-fun c!1056767 () Bool)

(assert (=> bm!472482 (= call!472487 (derivationStepZipperDown!1237 (ite c!1056767 (regOne!32487 (regTwo!32486 r!7292)) (regOne!32486 (regTwo!32486 r!7292))) (ite c!1056767 lt!2311940 (Context!10743 call!472492)) (h!70584 s!2326)))))

(declare-fun b!5942172 () Bool)

(declare-fun e!3635852 () (InoxSet Context!10742))

(assert (=> b!5942172 (= e!3635852 ((as const (Array Context!10742 Bool)) false))))

(declare-fun bm!472483 () Bool)

(declare-fun call!472491 () (InoxSet Context!10742))

(declare-fun call!472490 () (InoxSet Context!10742))

(assert (=> bm!472483 (= call!472491 call!472490)))

(declare-fun b!5942174 () Bool)

(declare-fun e!3635855 () (InoxSet Context!10742))

(declare-fun e!3635856 () (InoxSet Context!10742))

(assert (=> b!5942174 (= e!3635855 e!3635856)))

(declare-fun c!1056768 () Bool)

(assert (=> b!5942174 (= c!1056768 ((_ is Concat!24832) (regTwo!32486 r!7292)))))

(declare-fun b!5942175 () Bool)

(declare-fun call!472488 () (InoxSet Context!10742))

(assert (=> b!5942175 (= e!3635856 call!472488)))

(declare-fun b!5942176 () Bool)

(assert (=> b!5942176 (= e!3635852 call!472488)))

(declare-fun b!5942177 () Bool)

(declare-fun c!1056770 () Bool)

(assert (=> b!5942177 (= c!1056770 ((_ is Star!15987) (regTwo!32486 r!7292)))))

(assert (=> b!5942177 (= e!3635856 e!3635852)))

(declare-fun bm!472484 () Bool)

(assert (=> bm!472484 (= call!472488 call!472491)))

(declare-fun c!1056766 () Bool)

(declare-fun bm!472485 () Bool)

(declare-fun $colon$colon!1873 (List!64261 Regex!15987) List!64261)

(assert (=> bm!472485 (= call!472492 ($colon$colon!1873 (exprs!5871 lt!2311940) (ite (or c!1056766 c!1056768) (regTwo!32486 (regTwo!32486 r!7292)) (regTwo!32486 r!7292))))))

(declare-fun b!5942178 () Bool)

(declare-fun e!3635854 () Bool)

(assert (=> b!5942178 (= c!1056766 e!3635854)))

(declare-fun res!2488529 () Bool)

(assert (=> b!5942178 (=> (not res!2488529) (not e!3635854))))

(assert (=> b!5942178 (= res!2488529 ((_ is Concat!24832) (regTwo!32486 r!7292)))))

(declare-fun e!3635857 () (InoxSet Context!10742))

(assert (=> b!5942178 (= e!3635857 e!3635855)))

(declare-fun b!5942179 () Bool)

(assert (=> b!5942179 (= e!3635855 ((_ map or) call!472487 call!472491))))

(declare-fun b!5942180 () Bool)

(declare-fun e!3635853 () (InoxSet Context!10742))

(assert (=> b!5942180 (= e!3635853 (store ((as const (Array Context!10742 Bool)) false) lt!2311940 true))))

(declare-fun b!5942181 () Bool)

(assert (=> b!5942181 (= e!3635853 e!3635857)))

(assert (=> b!5942181 (= c!1056767 ((_ is Union!15987) (regTwo!32486 r!7292)))))

(declare-fun d!1862775 () Bool)

(declare-fun c!1056769 () Bool)

(assert (=> d!1862775 (= c!1056769 (and ((_ is ElementMatch!15987) (regTwo!32486 r!7292)) (= (c!1056714 (regTwo!32486 r!7292)) (h!70584 s!2326))))))

(assert (=> d!1862775 (= (derivationStepZipperDown!1237 (regTwo!32486 r!7292) lt!2311940 (h!70584 s!2326)) e!3635853)))

(declare-fun b!5942173 () Bool)

(assert (=> b!5942173 (= e!3635857 ((_ map or) call!472487 call!472490))))

(declare-fun b!5942182 () Bool)

(assert (=> b!5942182 (= e!3635854 (nullable!5982 (regOne!32486 (regTwo!32486 r!7292))))))

(declare-fun bm!472486 () Bool)

(declare-fun call!472489 () List!64261)

(assert (=> bm!472486 (= call!472489 call!472492)))

(declare-fun bm!472487 () Bool)

(assert (=> bm!472487 (= call!472490 (derivationStepZipperDown!1237 (ite c!1056767 (regTwo!32487 (regTwo!32486 r!7292)) (ite c!1056766 (regTwo!32486 (regTwo!32486 r!7292)) (ite c!1056768 (regOne!32486 (regTwo!32486 r!7292)) (reg!16316 (regTwo!32486 r!7292))))) (ite (or c!1056767 c!1056766) lt!2311940 (Context!10743 call!472489)) (h!70584 s!2326)))))

(assert (= (and d!1862775 c!1056769) b!5942180))

(assert (= (and d!1862775 (not c!1056769)) b!5942181))

(assert (= (and b!5942181 c!1056767) b!5942173))

(assert (= (and b!5942181 (not c!1056767)) b!5942178))

(assert (= (and b!5942178 res!2488529) b!5942182))

(assert (= (and b!5942178 c!1056766) b!5942179))

(assert (= (and b!5942178 (not c!1056766)) b!5942174))

(assert (= (and b!5942174 c!1056768) b!5942175))

(assert (= (and b!5942174 (not c!1056768)) b!5942177))

(assert (= (and b!5942177 c!1056770) b!5942176))

(assert (= (and b!5942177 (not c!1056770)) b!5942172))

(assert (= (or b!5942175 b!5942176) bm!472486))

(assert (= (or b!5942175 b!5942176) bm!472484))

(assert (= (or b!5942179 bm!472486) bm!472485))

(assert (= (or b!5942179 bm!472484) bm!472483))

(assert (= (or b!5942173 bm!472483) bm!472487))

(assert (= (or b!5942173 b!5942179) bm!472482))

(declare-fun m!6831624 () Bool)

(assert (=> bm!472482 m!6831624))

(declare-fun m!6831626 () Bool)

(assert (=> b!5942182 m!6831626))

(declare-fun m!6831628 () Bool)

(assert (=> bm!472485 m!6831628))

(declare-fun m!6831630 () Bool)

(assert (=> bm!472487 m!6831630))

(declare-fun m!6831632 () Bool)

(assert (=> b!5942180 m!6831632))

(assert (=> b!5941956 d!1862775))

(declare-fun d!1862783 () Bool)

(assert (=> d!1862783 (= (flatMap!1500 lt!2311954 lambda!324102) (dynLambda!25087 lambda!324102 lt!2311944))))

(declare-fun lt!2311990 () Unit!157245)

(assert (=> d!1862783 (= lt!2311990 (choose!44777 lt!2311954 lt!2311944 lambda!324102))))

(assert (=> d!1862783 (= lt!2311954 (store ((as const (Array Context!10742 Bool)) false) lt!2311944 true))))

(assert (=> d!1862783 (= (lemmaFlatMapOnSingletonSet!1026 lt!2311954 lt!2311944 lambda!324102) lt!2311990)))

(declare-fun b_lambda!223227 () Bool)

(assert (=> (not b_lambda!223227) (not d!1862783)))

(declare-fun bs!1405777 () Bool)

(assert (= bs!1405777 d!1862783))

(assert (=> bs!1405777 m!6831470))

(declare-fun m!6831634 () Bool)

(assert (=> bs!1405777 m!6831634))

(declare-fun m!6831636 () Bool)

(assert (=> bs!1405777 m!6831636))

(assert (=> bs!1405777 m!6831472))

(assert (=> b!5941956 d!1862783))

(declare-fun call!472493 () (InoxSet Context!10742))

(declare-fun bm!472488 () Bool)

(declare-fun call!472498 () List!64261)

(declare-fun c!1056772 () Bool)

(assert (=> bm!472488 (= call!472493 (derivationStepZipperDown!1237 (ite c!1056772 (regOne!32487 (regOne!32486 r!7292)) (regOne!32486 (regOne!32486 r!7292))) (ite c!1056772 lt!2311944 (Context!10743 call!472498)) (h!70584 s!2326)))))

(declare-fun b!5942183 () Bool)

(declare-fun e!3635858 () (InoxSet Context!10742))

(assert (=> b!5942183 (= e!3635858 ((as const (Array Context!10742 Bool)) false))))

(declare-fun bm!472489 () Bool)

(declare-fun call!472497 () (InoxSet Context!10742))

(declare-fun call!472496 () (InoxSet Context!10742))

(assert (=> bm!472489 (= call!472497 call!472496)))

(declare-fun b!5942185 () Bool)

(declare-fun e!3635861 () (InoxSet Context!10742))

(declare-fun e!3635862 () (InoxSet Context!10742))

(assert (=> b!5942185 (= e!3635861 e!3635862)))

(declare-fun c!1056773 () Bool)

(assert (=> b!5942185 (= c!1056773 ((_ is Concat!24832) (regOne!32486 r!7292)))))

(declare-fun b!5942186 () Bool)

(declare-fun call!472494 () (InoxSet Context!10742))

(assert (=> b!5942186 (= e!3635862 call!472494)))

(declare-fun b!5942187 () Bool)

(assert (=> b!5942187 (= e!3635858 call!472494)))

(declare-fun b!5942188 () Bool)

(declare-fun c!1056775 () Bool)

(assert (=> b!5942188 (= c!1056775 ((_ is Star!15987) (regOne!32486 r!7292)))))

(assert (=> b!5942188 (= e!3635862 e!3635858)))

(declare-fun bm!472490 () Bool)

(assert (=> bm!472490 (= call!472494 call!472497)))

(declare-fun c!1056771 () Bool)

(declare-fun bm!472491 () Bool)

(assert (=> bm!472491 (= call!472498 ($colon$colon!1873 (exprs!5871 lt!2311944) (ite (or c!1056771 c!1056773) (regTwo!32486 (regOne!32486 r!7292)) (regOne!32486 r!7292))))))

(declare-fun b!5942189 () Bool)

(declare-fun e!3635860 () Bool)

(assert (=> b!5942189 (= c!1056771 e!3635860)))

(declare-fun res!2488530 () Bool)

(assert (=> b!5942189 (=> (not res!2488530) (not e!3635860))))

(assert (=> b!5942189 (= res!2488530 ((_ is Concat!24832) (regOne!32486 r!7292)))))

(declare-fun e!3635863 () (InoxSet Context!10742))

(assert (=> b!5942189 (= e!3635863 e!3635861)))

(declare-fun b!5942190 () Bool)

(assert (=> b!5942190 (= e!3635861 ((_ map or) call!472493 call!472497))))

(declare-fun b!5942191 () Bool)

(declare-fun e!3635859 () (InoxSet Context!10742))

(assert (=> b!5942191 (= e!3635859 (store ((as const (Array Context!10742 Bool)) false) lt!2311944 true))))

(declare-fun b!5942192 () Bool)

(assert (=> b!5942192 (= e!3635859 e!3635863)))

(assert (=> b!5942192 (= c!1056772 ((_ is Union!15987) (regOne!32486 r!7292)))))

(declare-fun d!1862785 () Bool)

(declare-fun c!1056774 () Bool)

(assert (=> d!1862785 (= c!1056774 (and ((_ is ElementMatch!15987) (regOne!32486 r!7292)) (= (c!1056714 (regOne!32486 r!7292)) (h!70584 s!2326))))))

(assert (=> d!1862785 (= (derivationStepZipperDown!1237 (regOne!32486 r!7292) lt!2311944 (h!70584 s!2326)) e!3635859)))

(declare-fun b!5942184 () Bool)

(assert (=> b!5942184 (= e!3635863 ((_ map or) call!472493 call!472496))))

(declare-fun b!5942193 () Bool)

(assert (=> b!5942193 (= e!3635860 (nullable!5982 (regOne!32486 (regOne!32486 r!7292))))))

(declare-fun bm!472492 () Bool)

(declare-fun call!472495 () List!64261)

(assert (=> bm!472492 (= call!472495 call!472498)))

(declare-fun bm!472493 () Bool)

(assert (=> bm!472493 (= call!472496 (derivationStepZipperDown!1237 (ite c!1056772 (regTwo!32487 (regOne!32486 r!7292)) (ite c!1056771 (regTwo!32486 (regOne!32486 r!7292)) (ite c!1056773 (regOne!32486 (regOne!32486 r!7292)) (reg!16316 (regOne!32486 r!7292))))) (ite (or c!1056772 c!1056771) lt!2311944 (Context!10743 call!472495)) (h!70584 s!2326)))))

(assert (= (and d!1862785 c!1056774) b!5942191))

(assert (= (and d!1862785 (not c!1056774)) b!5942192))

(assert (= (and b!5942192 c!1056772) b!5942184))

(assert (= (and b!5942192 (not c!1056772)) b!5942189))

(assert (= (and b!5942189 res!2488530) b!5942193))

(assert (= (and b!5942189 c!1056771) b!5942190))

(assert (= (and b!5942189 (not c!1056771)) b!5942185))

(assert (= (and b!5942185 c!1056773) b!5942186))

(assert (= (and b!5942185 (not c!1056773)) b!5942188))

(assert (= (and b!5942188 c!1056775) b!5942187))

(assert (= (and b!5942188 (not c!1056775)) b!5942183))

(assert (= (or b!5942186 b!5942187) bm!472492))

(assert (= (or b!5942186 b!5942187) bm!472490))

(assert (= (or b!5942190 bm!472492) bm!472491))

(assert (= (or b!5942190 bm!472490) bm!472489))

(assert (= (or b!5942184 bm!472489) bm!472493))

(assert (= (or b!5942184 b!5942190) bm!472488))

(declare-fun m!6831638 () Bool)

(assert (=> bm!472488 m!6831638))

(declare-fun m!6831640 () Bool)

(assert (=> b!5942193 m!6831640))

(declare-fun m!6831642 () Bool)

(assert (=> bm!472491 m!6831642))

(declare-fun m!6831644 () Bool)

(assert (=> bm!472493 m!6831644))

(assert (=> b!5942191 m!6831472))

(assert (=> b!5941956 d!1862785))

(declare-fun d!1862787 () Bool)

(assert (=> d!1862787 (= (flatMap!1500 lt!2311954 lambda!324102) (choose!44775 lt!2311954 lambda!324102))))

(declare-fun bs!1405778 () Bool)

(assert (= bs!1405778 d!1862787))

(declare-fun m!6831646 () Bool)

(assert (=> bs!1405778 m!6831646))

(assert (=> b!5941956 d!1862787))

(declare-fun bs!1405779 () Bool)

(declare-fun d!1862789 () Bool)

(assert (= bs!1405779 (and d!1862789 d!1862757)))

(declare-fun lambda!324118 () Int)

(assert (=> bs!1405779 (= lambda!324118 lambda!324114)))

(assert (=> d!1862789 (= (inv!83214 setElem!40369) (forall!15069 (exprs!5871 setElem!40369) lambda!324118))))

(declare-fun bs!1405780 () Bool)

(assert (= bs!1405780 d!1862789))

(declare-fun m!6831648 () Bool)

(assert (=> bs!1405780 m!6831648))

(assert (=> setNonEmpty!40369 d!1862789))

(declare-fun d!1862791 () Bool)

(declare-fun e!3635868 () Bool)

(assert (=> d!1862791 e!3635868))

(declare-fun res!2488537 () Bool)

(assert (=> d!1862791 (=> (not res!2488537) (not e!3635868))))

(declare-fun lt!2311994 () List!64262)

(declare-fun noDuplicate!1845 (List!64262) Bool)

(assert (=> d!1862791 (= res!2488537 (noDuplicate!1845 lt!2311994))))

(declare-fun choose!44783 ((InoxSet Context!10742)) List!64262)

(assert (=> d!1862791 (= lt!2311994 (choose!44783 z!1189))))

(assert (=> d!1862791 (= (toList!9771 z!1189) lt!2311994)))

(declare-fun b!5942200 () Bool)

(declare-fun content!11832 (List!64262) (InoxSet Context!10742))

(assert (=> b!5942200 (= e!3635868 (= (content!11832 lt!2311994) z!1189))))

(assert (= (and d!1862791 res!2488537) b!5942200))

(declare-fun m!6831654 () Bool)

(assert (=> d!1862791 m!6831654))

(declare-fun m!6831656 () Bool)

(assert (=> d!1862791 m!6831656))

(declare-fun m!6831658 () Bool)

(assert (=> b!5942200 m!6831658))

(assert (=> b!5941966 d!1862791))

(declare-fun d!1862795 () Bool)

(declare-fun c!1056778 () Bool)

(declare-fun isEmpty!36013 (List!64260) Bool)

(assert (=> d!1862795 (= c!1056778 (isEmpty!36013 (t!377667 s!2326)))))

(declare-fun e!3635871 () Bool)

(assert (=> d!1862795 (= (matchZipper!2023 lt!2311951 (t!377667 s!2326)) e!3635871)))

(declare-fun b!5942205 () Bool)

(declare-fun nullableZipper!1793 ((InoxSet Context!10742)) Bool)

(assert (=> b!5942205 (= e!3635871 (nullableZipper!1793 lt!2311951))))

(declare-fun b!5942206 () Bool)

(declare-fun head!12515 (List!64260) C!32244)

(declare-fun tail!11600 (List!64260) List!64260)

(assert (=> b!5942206 (= e!3635871 (matchZipper!2023 (derivationStepZipper!1968 lt!2311951 (head!12515 (t!377667 s!2326))) (tail!11600 (t!377667 s!2326))))))

(assert (= (and d!1862795 c!1056778) b!5942205))

(assert (= (and d!1862795 (not c!1056778)) b!5942206))

(declare-fun m!6831660 () Bool)

(assert (=> d!1862795 m!6831660))

(declare-fun m!6831662 () Bool)

(assert (=> b!5942205 m!6831662))

(declare-fun m!6831664 () Bool)

(assert (=> b!5942206 m!6831664))

(assert (=> b!5942206 m!6831664))

(declare-fun m!6831666 () Bool)

(assert (=> b!5942206 m!6831666))

(declare-fun m!6831668 () Bool)

(assert (=> b!5942206 m!6831668))

(assert (=> b!5942206 m!6831666))

(assert (=> b!5942206 m!6831668))

(declare-fun m!6831670 () Bool)

(assert (=> b!5942206 m!6831670))

(assert (=> b!5941973 d!1862795))

(declare-fun d!1862797 () Bool)

(declare-fun c!1056779 () Bool)

(assert (=> d!1862797 (= c!1056779 (isEmpty!36013 s!2326))))

(declare-fun e!3635872 () Bool)

(assert (=> d!1862797 (= (matchZipper!2023 lt!2311942 s!2326) e!3635872)))

(declare-fun b!5942207 () Bool)

(assert (=> b!5942207 (= e!3635872 (nullableZipper!1793 lt!2311942))))

(declare-fun b!5942208 () Bool)

(assert (=> b!5942208 (= e!3635872 (matchZipper!2023 (derivationStepZipper!1968 lt!2311942 (head!12515 s!2326)) (tail!11600 s!2326)))))

(assert (= (and d!1862797 c!1056779) b!5942207))

(assert (= (and d!1862797 (not c!1056779)) b!5942208))

(declare-fun m!6831672 () Bool)

(assert (=> d!1862797 m!6831672))

(declare-fun m!6831674 () Bool)

(assert (=> b!5942207 m!6831674))

(declare-fun m!6831676 () Bool)

(assert (=> b!5942208 m!6831676))

(assert (=> b!5942208 m!6831676))

(declare-fun m!6831678 () Bool)

(assert (=> b!5942208 m!6831678))

(declare-fun m!6831680 () Bool)

(assert (=> b!5942208 m!6831680))

(assert (=> b!5942208 m!6831678))

(assert (=> b!5942208 m!6831680))

(declare-fun m!6831682 () Bool)

(assert (=> b!5942208 m!6831682))

(assert (=> b!5941962 d!1862797))

(declare-fun d!1862799 () Bool)

(declare-fun c!1056780 () Bool)

(assert (=> d!1862799 (= c!1056780 (isEmpty!36013 (t!377667 s!2326)))))

(declare-fun e!3635873 () Bool)

(assert (=> d!1862799 (= (matchZipper!2023 (derivationStepZipper!1968 lt!2311942 (h!70584 s!2326)) (t!377667 s!2326)) e!3635873)))

(declare-fun b!5942209 () Bool)

(assert (=> b!5942209 (= e!3635873 (nullableZipper!1793 (derivationStepZipper!1968 lt!2311942 (h!70584 s!2326))))))

(declare-fun b!5942210 () Bool)

(assert (=> b!5942210 (= e!3635873 (matchZipper!2023 (derivationStepZipper!1968 (derivationStepZipper!1968 lt!2311942 (h!70584 s!2326)) (head!12515 (t!377667 s!2326))) (tail!11600 (t!377667 s!2326))))))

(assert (= (and d!1862799 c!1056780) b!5942209))

(assert (= (and d!1862799 (not c!1056780)) b!5942210))

(assert (=> d!1862799 m!6831660))

(assert (=> b!5942209 m!6831532))

(declare-fun m!6831684 () Bool)

(assert (=> b!5942209 m!6831684))

(assert (=> b!5942210 m!6831664))

(assert (=> b!5942210 m!6831532))

(assert (=> b!5942210 m!6831664))

(declare-fun m!6831686 () Bool)

(assert (=> b!5942210 m!6831686))

(assert (=> b!5942210 m!6831668))

(assert (=> b!5942210 m!6831686))

(assert (=> b!5942210 m!6831668))

(declare-fun m!6831688 () Bool)

(assert (=> b!5942210 m!6831688))

(assert (=> b!5941962 d!1862799))

(declare-fun bs!1405785 () Bool)

(declare-fun d!1862801 () Bool)

(assert (= bs!1405785 (and d!1862801 b!5941971)))

(declare-fun lambda!324124 () Int)

(assert (=> bs!1405785 (= lambda!324124 lambda!324102)))

(assert (=> d!1862801 true))

(assert (=> d!1862801 (= (derivationStepZipper!1968 lt!2311942 (h!70584 s!2326)) (flatMap!1500 lt!2311942 lambda!324124))))

(declare-fun bs!1405786 () Bool)

(assert (= bs!1405786 d!1862801))

(declare-fun m!6831690 () Bool)

(assert (=> bs!1405786 m!6831690))

(assert (=> b!5941962 d!1862801))

(declare-fun d!1862803 () Bool)

(declare-fun choose!44784 (Int) Bool)

(assert (=> d!1862803 (= (Exists!3057 lambda!324101) (choose!44784 lambda!324101))))

(declare-fun bs!1405787 () Bool)

(assert (= bs!1405787 d!1862803))

(declare-fun m!6831692 () Bool)

(assert (=> bs!1405787 m!6831692))

(assert (=> b!5941954 d!1862803))

(declare-fun b!5942254 () Bool)

(declare-fun lt!2312008 () Unit!157245)

(declare-fun lt!2312007 () Unit!157245)

(assert (=> b!5942254 (= lt!2312008 lt!2312007)))

(declare-fun ++!14084 (List!64260 List!64260) List!64260)

(assert (=> b!5942254 (= (++!14084 (++!14084 Nil!64136 (Cons!64136 (h!70584 s!2326) Nil!64136)) (t!377667 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2179 (List!64260 C!32244 List!64260 List!64260) Unit!157245)

(assert (=> b!5942254 (= lt!2312007 (lemmaMoveElementToOtherListKeepsConcatEq!2179 Nil!64136 (h!70584 s!2326) (t!377667 s!2326) s!2326))))

(declare-fun e!3635901 () Option!15878)

(assert (=> b!5942254 (= e!3635901 (findConcatSeparation!2292 (regOne!32486 r!7292) (regTwo!32486 r!7292) (++!14084 Nil!64136 (Cons!64136 (h!70584 s!2326) Nil!64136)) (t!377667 s!2326) s!2326))))

(declare-fun d!1862805 () Bool)

(declare-fun e!3635897 () Bool)

(assert (=> d!1862805 e!3635897))

(declare-fun res!2488563 () Bool)

(assert (=> d!1862805 (=> res!2488563 e!3635897)))

(declare-fun e!3635900 () Bool)

(assert (=> d!1862805 (= res!2488563 e!3635900)))

(declare-fun res!2488560 () Bool)

(assert (=> d!1862805 (=> (not res!2488560) (not e!3635900))))

(declare-fun lt!2312009 () Option!15878)

(assert (=> d!1862805 (= res!2488560 (isDefined!12581 lt!2312009))))

(declare-fun e!3635899 () Option!15878)

(assert (=> d!1862805 (= lt!2312009 e!3635899)))

(declare-fun c!1056794 () Bool)

(declare-fun e!3635898 () Bool)

(assert (=> d!1862805 (= c!1056794 e!3635898)))

(declare-fun res!2488561 () Bool)

(assert (=> d!1862805 (=> (not res!2488561) (not e!3635898))))

(assert (=> d!1862805 (= res!2488561 (matchR!8170 (regOne!32486 r!7292) Nil!64136))))

(assert (=> d!1862805 (validRegex!7723 (regOne!32486 r!7292))))

(assert (=> d!1862805 (= (findConcatSeparation!2292 (regOne!32486 r!7292) (regTwo!32486 r!7292) Nil!64136 s!2326 s!2326) lt!2312009)))

(declare-fun b!5942255 () Bool)

(assert (=> b!5942255 (= e!3635898 (matchR!8170 (regTwo!32486 r!7292) s!2326))))

(declare-fun b!5942256 () Bool)

(declare-fun res!2488562 () Bool)

(assert (=> b!5942256 (=> (not res!2488562) (not e!3635900))))

(declare-fun get!22093 (Option!15878) tuple2!65932)

(assert (=> b!5942256 (= res!2488562 (matchR!8170 (regTwo!32486 r!7292) (_2!36269 (get!22093 lt!2312009))))))

(declare-fun b!5942257 () Bool)

(declare-fun res!2488559 () Bool)

(assert (=> b!5942257 (=> (not res!2488559) (not e!3635900))))

(assert (=> b!5942257 (= res!2488559 (matchR!8170 (regOne!32486 r!7292) (_1!36269 (get!22093 lt!2312009))))))

(declare-fun b!5942258 () Bool)

(assert (=> b!5942258 (= e!3635900 (= (++!14084 (_1!36269 (get!22093 lt!2312009)) (_2!36269 (get!22093 lt!2312009))) s!2326))))

(declare-fun b!5942259 () Bool)

(assert (=> b!5942259 (= e!3635897 (not (isDefined!12581 lt!2312009)))))

(declare-fun b!5942260 () Bool)

(assert (=> b!5942260 (= e!3635899 (Some!15877 (tuple2!65933 Nil!64136 s!2326)))))

(declare-fun b!5942261 () Bool)

(assert (=> b!5942261 (= e!3635899 e!3635901)))

(declare-fun c!1056793 () Bool)

(assert (=> b!5942261 (= c!1056793 ((_ is Nil!64136) s!2326))))

(declare-fun b!5942262 () Bool)

(assert (=> b!5942262 (= e!3635901 None!15877)))

(assert (= (and d!1862805 res!2488561) b!5942255))

(assert (= (and d!1862805 c!1056794) b!5942260))

(assert (= (and d!1862805 (not c!1056794)) b!5942261))

(assert (= (and b!5942261 c!1056793) b!5942262))

(assert (= (and b!5942261 (not c!1056793)) b!5942254))

(assert (= (and d!1862805 res!2488560) b!5942257))

(assert (= (and b!5942257 res!2488559) b!5942256))

(assert (= (and b!5942256 res!2488562) b!5942258))

(assert (= (and d!1862805 (not res!2488563)) b!5942259))

(declare-fun m!6831716 () Bool)

(assert (=> b!5942255 m!6831716))

(declare-fun m!6831718 () Bool)

(assert (=> b!5942254 m!6831718))

(assert (=> b!5942254 m!6831718))

(declare-fun m!6831720 () Bool)

(assert (=> b!5942254 m!6831720))

(declare-fun m!6831722 () Bool)

(assert (=> b!5942254 m!6831722))

(assert (=> b!5942254 m!6831718))

(declare-fun m!6831724 () Bool)

(assert (=> b!5942254 m!6831724))

(declare-fun m!6831726 () Bool)

(assert (=> b!5942256 m!6831726))

(declare-fun m!6831728 () Bool)

(assert (=> b!5942256 m!6831728))

(declare-fun m!6831730 () Bool)

(assert (=> d!1862805 m!6831730))

(declare-fun m!6831732 () Bool)

(assert (=> d!1862805 m!6831732))

(declare-fun m!6831734 () Bool)

(assert (=> d!1862805 m!6831734))

(assert (=> b!5942259 m!6831730))

(assert (=> b!5942258 m!6831726))

(declare-fun m!6831736 () Bool)

(assert (=> b!5942258 m!6831736))

(assert (=> b!5942257 m!6831726))

(declare-fun m!6831738 () Bool)

(assert (=> b!5942257 m!6831738))

(assert (=> b!5941954 d!1862805))

(declare-fun d!1862817 () Bool)

(assert (=> d!1862817 (= (Exists!3057 lambda!324100) (choose!44784 lambda!324100))))

(declare-fun bs!1405796 () Bool)

(assert (= bs!1405796 d!1862817))

(declare-fun m!6831740 () Bool)

(assert (=> bs!1405796 m!6831740))

(assert (=> b!5941954 d!1862817))

(declare-fun bs!1405799 () Bool)

(declare-fun d!1862819 () Bool)

(assert (= bs!1405799 (and d!1862819 b!5941954)))

(declare-fun lambda!324134 () Int)

(assert (=> bs!1405799 (= lambda!324134 lambda!324100)))

(assert (=> bs!1405799 (not (= lambda!324134 lambda!324101))))

(assert (=> d!1862819 true))

(assert (=> d!1862819 true))

(assert (=> d!1862819 true))

(assert (=> d!1862819 (= (isDefined!12581 (findConcatSeparation!2292 (regOne!32486 r!7292) (regTwo!32486 r!7292) Nil!64136 s!2326 s!2326)) (Exists!3057 lambda!324134))))

(declare-fun lt!2312017 () Unit!157245)

(declare-fun choose!44785 (Regex!15987 Regex!15987 List!64260) Unit!157245)

(assert (=> d!1862819 (= lt!2312017 (choose!44785 (regOne!32486 r!7292) (regTwo!32486 r!7292) s!2326))))

(assert (=> d!1862819 (validRegex!7723 (regOne!32486 r!7292))))

(assert (=> d!1862819 (= (lemmaFindConcatSeparationEquivalentToExists!2056 (regOne!32486 r!7292) (regTwo!32486 r!7292) s!2326) lt!2312017)))

(declare-fun bs!1405800 () Bool)

(assert (= bs!1405800 d!1862819))

(assert (=> bs!1405800 m!6831458))

(assert (=> bs!1405800 m!6831460))

(declare-fun m!6831762 () Bool)

(assert (=> bs!1405800 m!6831762))

(declare-fun m!6831764 () Bool)

(assert (=> bs!1405800 m!6831764))

(assert (=> bs!1405800 m!6831458))

(assert (=> bs!1405800 m!6831734))

(assert (=> b!5941954 d!1862819))

(declare-fun bs!1405811 () Bool)

(declare-fun d!1862823 () Bool)

(assert (= bs!1405811 (and d!1862823 b!5941954)))

(declare-fun lambda!324146 () Int)

(assert (=> bs!1405811 (= lambda!324146 lambda!324100)))

(assert (=> bs!1405811 (not (= lambda!324146 lambda!324101))))

(declare-fun bs!1405812 () Bool)

(assert (= bs!1405812 (and d!1862823 d!1862819)))

(assert (=> bs!1405812 (= lambda!324146 lambda!324134)))

(assert (=> d!1862823 true))

(assert (=> d!1862823 true))

(assert (=> d!1862823 true))

(declare-fun lambda!324147 () Int)

(assert (=> bs!1405811 (not (= lambda!324147 lambda!324100))))

(assert (=> bs!1405811 (= lambda!324147 lambda!324101)))

(assert (=> bs!1405812 (not (= lambda!324147 lambda!324134))))

(declare-fun bs!1405813 () Bool)

(assert (= bs!1405813 d!1862823))

(assert (=> bs!1405813 (not (= lambda!324147 lambda!324146))))

(assert (=> d!1862823 true))

(assert (=> d!1862823 true))

(assert (=> d!1862823 true))

(assert (=> d!1862823 (= (Exists!3057 lambda!324146) (Exists!3057 lambda!324147))))

(declare-fun lt!2312021 () Unit!157245)

(declare-fun choose!44786 (Regex!15987 Regex!15987 List!64260) Unit!157245)

(assert (=> d!1862823 (= lt!2312021 (choose!44786 (regOne!32486 r!7292) (regTwo!32486 r!7292) s!2326))))

(assert (=> d!1862823 (validRegex!7723 (regOne!32486 r!7292))))

(assert (=> d!1862823 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1594 (regOne!32486 r!7292) (regTwo!32486 r!7292) s!2326) lt!2312021)))

(declare-fun m!6831798 () Bool)

(assert (=> bs!1405813 m!6831798))

(declare-fun m!6831800 () Bool)

(assert (=> bs!1405813 m!6831800))

(declare-fun m!6831802 () Bool)

(assert (=> bs!1405813 m!6831802))

(assert (=> bs!1405813 m!6831734))

(assert (=> b!5941954 d!1862823))

(declare-fun d!1862837 () Bool)

(declare-fun isEmpty!36014 (Option!15878) Bool)

(assert (=> d!1862837 (= (isDefined!12581 (findConcatSeparation!2292 (regOne!32486 r!7292) (regTwo!32486 r!7292) Nil!64136 s!2326 s!2326)) (not (isEmpty!36014 (findConcatSeparation!2292 (regOne!32486 r!7292) (regTwo!32486 r!7292) Nil!64136 s!2326 s!2326))))))

(declare-fun bs!1405814 () Bool)

(assert (= bs!1405814 d!1862837))

(assert (=> bs!1405814 m!6831458))

(declare-fun m!6831804 () Bool)

(assert (=> bs!1405814 m!6831804))

(assert (=> b!5941954 d!1862837))

(declare-fun b!5942363 () Bool)

(declare-fun res!2488598 () Bool)

(declare-fun e!3635963 () Bool)

(assert (=> b!5942363 (=> res!2488598 e!3635963)))

(assert (=> b!5942363 (= res!2488598 (not ((_ is Concat!24832) r!7292)))))

(declare-fun e!3635960 () Bool)

(assert (=> b!5942363 (= e!3635960 e!3635963)))

(declare-fun b!5942364 () Bool)

(declare-fun res!2488597 () Bool)

(declare-fun e!3635962 () Bool)

(assert (=> b!5942364 (=> (not res!2488597) (not e!3635962))))

(declare-fun call!472520 () Bool)

(assert (=> b!5942364 (= res!2488597 call!472520)))

(assert (=> b!5942364 (= e!3635960 e!3635962)))

(declare-fun b!5942365 () Bool)

(declare-fun e!3635966 () Bool)

(declare-fun call!472522 () Bool)

(assert (=> b!5942365 (= e!3635966 call!472522)))

(declare-fun b!5942366 () Bool)

(declare-fun e!3635965 () Bool)

(assert (=> b!5942366 (= e!3635965 e!3635960)))

(declare-fun c!1056832 () Bool)

(assert (=> b!5942366 (= c!1056832 ((_ is Union!15987) r!7292))))

(declare-fun b!5942367 () Bool)

(declare-fun e!3635964 () Bool)

(assert (=> b!5942367 (= e!3635965 e!3635964)))

(declare-fun res!2488594 () Bool)

(assert (=> b!5942367 (= res!2488594 (not (nullable!5982 (reg!16316 r!7292))))))

(assert (=> b!5942367 (=> (not res!2488594) (not e!3635964))))

(declare-fun bm!472515 () Bool)

(assert (=> bm!472515 (= call!472522 (validRegex!7723 (ite c!1056832 (regTwo!32487 r!7292) (regTwo!32486 r!7292))))))

(declare-fun b!5942368 () Bool)

(declare-fun e!3635961 () Bool)

(assert (=> b!5942368 (= e!3635961 e!3635965)))

(declare-fun c!1056831 () Bool)

(assert (=> b!5942368 (= c!1056831 ((_ is Star!15987) r!7292))))

(declare-fun bm!472516 () Bool)

(declare-fun call!472521 () Bool)

(assert (=> bm!472516 (= call!472520 call!472521)))

(declare-fun b!5942369 () Bool)

(assert (=> b!5942369 (= e!3635963 e!3635966)))

(declare-fun res!2488595 () Bool)

(assert (=> b!5942369 (=> (not res!2488595) (not e!3635966))))

(assert (=> b!5942369 (= res!2488595 call!472520)))

(declare-fun d!1862839 () Bool)

(declare-fun res!2488596 () Bool)

(assert (=> d!1862839 (=> res!2488596 e!3635961)))

(assert (=> d!1862839 (= res!2488596 ((_ is ElementMatch!15987) r!7292))))

(assert (=> d!1862839 (= (validRegex!7723 r!7292) e!3635961)))

(declare-fun bm!472517 () Bool)

(assert (=> bm!472517 (= call!472521 (validRegex!7723 (ite c!1056831 (reg!16316 r!7292) (ite c!1056832 (regOne!32487 r!7292) (regOne!32486 r!7292)))))))

(declare-fun b!5942370 () Bool)

(assert (=> b!5942370 (= e!3635964 call!472521)))

(declare-fun b!5942371 () Bool)

(assert (=> b!5942371 (= e!3635962 call!472522)))

(assert (= (and d!1862839 (not res!2488596)) b!5942368))

(assert (= (and b!5942368 c!1056831) b!5942367))

(assert (= (and b!5942368 (not c!1056831)) b!5942366))

(assert (= (and b!5942367 res!2488594) b!5942370))

(assert (= (and b!5942366 c!1056832) b!5942364))

(assert (= (and b!5942366 (not c!1056832)) b!5942363))

(assert (= (and b!5942364 res!2488597) b!5942371))

(assert (= (and b!5942363 (not res!2488598)) b!5942369))

(assert (= (and b!5942369 res!2488595) b!5942365))

(assert (= (or b!5942371 b!5942365) bm!472515))

(assert (= (or b!5942364 b!5942369) bm!472516))

(assert (= (or b!5942370 bm!472516) bm!472517))

(declare-fun m!6831806 () Bool)

(assert (=> b!5942367 m!6831806))

(declare-fun m!6831808 () Bool)

(assert (=> bm!472515 m!6831808))

(declare-fun m!6831810 () Bool)

(assert (=> bm!472517 m!6831810))

(assert (=> start!603698 d!1862839))

(declare-fun d!1862841 () Bool)

(declare-fun c!1056833 () Bool)

(assert (=> d!1862841 (= c!1056833 (isEmpty!36013 s!2326))))

(declare-fun e!3635967 () Bool)

(assert (=> d!1862841 (= (matchZipper!2023 lt!2311954 s!2326) e!3635967)))

(declare-fun b!5942372 () Bool)

(assert (=> b!5942372 (= e!3635967 (nullableZipper!1793 lt!2311954))))

(declare-fun b!5942373 () Bool)

(assert (=> b!5942373 (= e!3635967 (matchZipper!2023 (derivationStepZipper!1968 lt!2311954 (head!12515 s!2326)) (tail!11600 s!2326)))))

(assert (= (and d!1862841 c!1056833) b!5942372))

(assert (= (and d!1862841 (not c!1056833)) b!5942373))

(assert (=> d!1862841 m!6831672))

(declare-fun m!6831812 () Bool)

(assert (=> b!5942372 m!6831812))

(assert (=> b!5942373 m!6831676))

(assert (=> b!5942373 m!6831676))

(declare-fun m!6831814 () Bool)

(assert (=> b!5942373 m!6831814))

(assert (=> b!5942373 m!6831680))

(assert (=> b!5942373 m!6831814))

(assert (=> b!5942373 m!6831680))

(declare-fun m!6831816 () Bool)

(assert (=> b!5942373 m!6831816))

(assert (=> b!5941963 d!1862841))

(declare-fun d!1862843 () Bool)

(declare-fun c!1056839 () Bool)

(assert (=> d!1862843 (= c!1056839 (isEmpty!36013 (t!377667 s!2326)))))

(declare-fun e!3635974 () Bool)

(assert (=> d!1862843 (= (matchZipper!2023 (derivationStepZipper!1968 lt!2311954 (h!70584 s!2326)) (t!377667 s!2326)) e!3635974)))

(declare-fun b!5942385 () Bool)

(assert (=> b!5942385 (= e!3635974 (nullableZipper!1793 (derivationStepZipper!1968 lt!2311954 (h!70584 s!2326))))))

(declare-fun b!5942386 () Bool)

(assert (=> b!5942386 (= e!3635974 (matchZipper!2023 (derivationStepZipper!1968 (derivationStepZipper!1968 lt!2311954 (h!70584 s!2326)) (head!12515 (t!377667 s!2326))) (tail!11600 (t!377667 s!2326))))))

(assert (= (and d!1862843 c!1056839) b!5942385))

(assert (= (and d!1862843 (not c!1056839)) b!5942386))

(assert (=> d!1862843 m!6831660))

(assert (=> b!5942385 m!6831504))

(declare-fun m!6831818 () Bool)

(assert (=> b!5942385 m!6831818))

(assert (=> b!5942386 m!6831664))

(assert (=> b!5942386 m!6831504))

(assert (=> b!5942386 m!6831664))

(declare-fun m!6831820 () Bool)

(assert (=> b!5942386 m!6831820))

(assert (=> b!5942386 m!6831668))

(assert (=> b!5942386 m!6831820))

(assert (=> b!5942386 m!6831668))

(declare-fun m!6831822 () Bool)

(assert (=> b!5942386 m!6831822))

(assert (=> b!5941963 d!1862843))

(declare-fun bs!1405815 () Bool)

(declare-fun d!1862845 () Bool)

(assert (= bs!1405815 (and d!1862845 b!5941971)))

(declare-fun lambda!324148 () Int)

(assert (=> bs!1405815 (= lambda!324148 lambda!324102)))

(declare-fun bs!1405816 () Bool)

(assert (= bs!1405816 (and d!1862845 d!1862801)))

(assert (=> bs!1405816 (= lambda!324148 lambda!324124)))

(assert (=> d!1862845 true))

(assert (=> d!1862845 (= (derivationStepZipper!1968 lt!2311954 (h!70584 s!2326)) (flatMap!1500 lt!2311954 lambda!324148))))

(declare-fun bs!1405817 () Bool)

(assert (= bs!1405817 d!1862845))

(declare-fun m!6831824 () Bool)

(assert (=> bs!1405817 m!6831824))

(assert (=> b!5941963 d!1862845))

(declare-fun bs!1405818 () Bool)

(declare-fun d!1862847 () Bool)

(assert (= bs!1405818 (and d!1862847 d!1862757)))

(declare-fun lambda!324149 () Int)

(assert (=> bs!1405818 (= lambda!324149 lambda!324114)))

(declare-fun bs!1405819 () Bool)

(assert (= bs!1405819 (and d!1862847 d!1862789)))

(assert (=> bs!1405819 (= lambda!324149 lambda!324118)))

(assert (=> d!1862847 (= (inv!83214 (h!70586 zl!343)) (forall!15069 (exprs!5871 (h!70586 zl!343)) lambda!324149))))

(declare-fun bs!1405820 () Bool)

(assert (= bs!1405820 d!1862847))

(declare-fun m!6831834 () Bool)

(assert (=> bs!1405820 m!6831834))

(assert (=> b!5941974 d!1862847))

(declare-fun d!1862851 () Bool)

(declare-fun c!1056842 () Bool)

(assert (=> d!1862851 (= c!1056842 (isEmpty!36013 (t!377667 s!2326)))))

(declare-fun e!3635978 () Bool)

(assert (=> d!1862851 (= (matchZipper!2023 lt!2311966 (t!377667 s!2326)) e!3635978)))

(declare-fun b!5942392 () Bool)

(assert (=> b!5942392 (= e!3635978 (nullableZipper!1793 lt!2311966))))

(declare-fun b!5942393 () Bool)

(assert (=> b!5942393 (= e!3635978 (matchZipper!2023 (derivationStepZipper!1968 lt!2311966 (head!12515 (t!377667 s!2326))) (tail!11600 (t!377667 s!2326))))))

(assert (= (and d!1862851 c!1056842) b!5942392))

(assert (= (and d!1862851 (not c!1056842)) b!5942393))

(assert (=> d!1862851 m!6831660))

(declare-fun m!6831836 () Bool)

(assert (=> b!5942392 m!6831836))

(assert (=> b!5942393 m!6831664))

(assert (=> b!5942393 m!6831664))

(declare-fun m!6831840 () Bool)

(assert (=> b!5942393 m!6831840))

(assert (=> b!5942393 m!6831668))

(assert (=> b!5942393 m!6831840))

(assert (=> b!5942393 m!6831668))

(declare-fun m!6831846 () Bool)

(assert (=> b!5942393 m!6831846))

(assert (=> b!5941980 d!1862851))

(declare-fun d!1862855 () Bool)

(declare-fun c!1056843 () Bool)

(assert (=> d!1862855 (= c!1056843 (isEmpty!36013 (t!377667 s!2326)))))

(declare-fun e!3635979 () Bool)

(assert (=> d!1862855 (= (matchZipper!2023 lt!2311953 (t!377667 s!2326)) e!3635979)))

(declare-fun b!5942394 () Bool)

(assert (=> b!5942394 (= e!3635979 (nullableZipper!1793 lt!2311953))))

(declare-fun b!5942395 () Bool)

(assert (=> b!5942395 (= e!3635979 (matchZipper!2023 (derivationStepZipper!1968 lt!2311953 (head!12515 (t!377667 s!2326))) (tail!11600 (t!377667 s!2326))))))

(assert (= (and d!1862855 c!1056843) b!5942394))

(assert (= (and d!1862855 (not c!1056843)) b!5942395))

(assert (=> d!1862855 m!6831660))

(declare-fun m!6831848 () Bool)

(assert (=> b!5942394 m!6831848))

(assert (=> b!5942395 m!6831664))

(assert (=> b!5942395 m!6831664))

(declare-fun m!6831850 () Bool)

(assert (=> b!5942395 m!6831850))

(assert (=> b!5942395 m!6831668))

(assert (=> b!5942395 m!6831850))

(assert (=> b!5942395 m!6831668))

(declare-fun m!6831852 () Bool)

(assert (=> b!5942395 m!6831852))

(assert (=> b!5941980 d!1862855))

(declare-fun d!1862857 () Bool)

(declare-fun c!1056844 () Bool)

(assert (=> d!1862857 (= c!1056844 (isEmpty!36013 (t!377667 s!2326)))))

(declare-fun e!3635980 () Bool)

(assert (=> d!1862857 (= (matchZipper!2023 lt!2311946 (t!377667 s!2326)) e!3635980)))

(declare-fun b!5942396 () Bool)

(assert (=> b!5942396 (= e!3635980 (nullableZipper!1793 lt!2311946))))

(declare-fun b!5942397 () Bool)

(assert (=> b!5942397 (= e!3635980 (matchZipper!2023 (derivationStepZipper!1968 lt!2311946 (head!12515 (t!377667 s!2326))) (tail!11600 (t!377667 s!2326))))))

(assert (= (and d!1862857 c!1056844) b!5942396))

(assert (= (and d!1862857 (not c!1056844)) b!5942397))

(assert (=> d!1862857 m!6831660))

(declare-fun m!6831856 () Bool)

(assert (=> b!5942396 m!6831856))

(assert (=> b!5942397 m!6831664))

(assert (=> b!5942397 m!6831664))

(declare-fun m!6831858 () Bool)

(assert (=> b!5942397 m!6831858))

(assert (=> b!5942397 m!6831668))

(assert (=> b!5942397 m!6831858))

(assert (=> b!5942397 m!6831668))

(declare-fun m!6831860 () Bool)

(assert (=> b!5942397 m!6831860))

(assert (=> b!5941980 d!1862857))

(declare-fun d!1862861 () Bool)

(declare-fun e!3635985 () Bool)

(assert (=> d!1862861 (= (matchZipper!2023 ((_ map or) lt!2311946 lt!2311951) (t!377667 s!2326)) e!3635985)))

(declare-fun res!2488603 () Bool)

(assert (=> d!1862861 (=> res!2488603 e!3635985)))

(assert (=> d!1862861 (= res!2488603 (matchZipper!2023 lt!2311946 (t!377667 s!2326)))))

(declare-fun lt!2312024 () Unit!157245)

(declare-fun choose!44787 ((InoxSet Context!10742) (InoxSet Context!10742) List!64260) Unit!157245)

(assert (=> d!1862861 (= lt!2312024 (choose!44787 lt!2311946 lt!2311951 (t!377667 s!2326)))))

(assert (=> d!1862861 (= (lemmaZipperConcatMatchesSameAsBothZippers!854 lt!2311946 lt!2311951 (t!377667 s!2326)) lt!2312024)))

(declare-fun b!5942404 () Bool)

(assert (=> b!5942404 (= e!3635985 (matchZipper!2023 lt!2311951 (t!377667 s!2326)))))

(assert (= (and d!1862861 (not res!2488603)) b!5942404))

(declare-fun m!6831876 () Bool)

(assert (=> d!1862861 m!6831876))

(assert (=> d!1862861 m!6831512))

(declare-fun m!6831878 () Bool)

(assert (=> d!1862861 m!6831878))

(assert (=> b!5942404 m!6831516))

(assert (=> b!5941980 d!1862861))

(declare-fun d!1862869 () Bool)

(assert (=> d!1862869 (= (isEmpty!36009 (t!377668 (exprs!5871 (h!70586 zl!343)))) ((_ is Nil!64137) (t!377668 (exprs!5871 (h!70586 zl!343)))))))

(assert (=> b!5941960 d!1862869))

(declare-fun bs!1405837 () Bool)

(declare-fun d!1862871 () Bool)

(assert (= bs!1405837 (and d!1862871 d!1862757)))

(declare-fun lambda!324157 () Int)

(assert (=> bs!1405837 (= lambda!324157 lambda!324114)))

(declare-fun bs!1405839 () Bool)

(assert (= bs!1405839 (and d!1862871 d!1862789)))

(assert (=> bs!1405839 (= lambda!324157 lambda!324118)))

(declare-fun bs!1405840 () Bool)

(assert (= bs!1405840 (and d!1862871 d!1862847)))

(assert (=> bs!1405840 (= lambda!324157 lambda!324149)))

(declare-fun b!5942465 () Bool)

(declare-fun e!3636025 () Regex!15987)

(assert (=> b!5942465 (= e!3636025 EmptyExpr!15987)))

(declare-fun b!5942466 () Bool)

(declare-fun e!3636022 () Bool)

(assert (=> b!5942466 (= e!3636022 (isEmpty!36009 (t!377668 (exprs!5871 (h!70586 zl!343)))))))

(declare-fun b!5942467 () Bool)

(declare-fun e!3636023 () Bool)

(declare-fun lt!2312031 () Regex!15987)

(declare-fun isConcat!938 (Regex!15987) Bool)

(assert (=> b!5942467 (= e!3636023 (isConcat!938 lt!2312031))))

(declare-fun b!5942468 () Bool)

(declare-fun e!3636024 () Regex!15987)

(assert (=> b!5942468 (= e!3636024 (h!70585 (exprs!5871 (h!70586 zl!343))))))

(declare-fun b!5942469 () Bool)

(declare-fun e!3636027 () Bool)

(declare-fun isEmptyExpr!1415 (Regex!15987) Bool)

(assert (=> b!5942469 (= e!3636027 (isEmptyExpr!1415 lt!2312031))))

(declare-fun b!5942470 () Bool)

(declare-fun e!3636026 () Bool)

(assert (=> b!5942470 (= e!3636026 e!3636027)))

(declare-fun c!1056872 () Bool)

(assert (=> b!5942470 (= c!1056872 (isEmpty!36009 (exprs!5871 (h!70586 zl!343))))))

(declare-fun b!5942471 () Bool)

(assert (=> b!5942471 (= e!3636025 (Concat!24832 (h!70585 (exprs!5871 (h!70586 zl!343))) (generalisedConcat!1584 (t!377668 (exprs!5871 (h!70586 zl!343))))))))

(declare-fun b!5942472 () Bool)

(assert (=> b!5942472 (= e!3636027 e!3636023)))

(declare-fun c!1056874 () Bool)

(declare-fun tail!11601 (List!64261) List!64261)

(assert (=> b!5942472 (= c!1056874 (isEmpty!36009 (tail!11601 (exprs!5871 (h!70586 zl!343)))))))

(declare-fun b!5942473 () Bool)

(declare-fun head!12516 (List!64261) Regex!15987)

(assert (=> b!5942473 (= e!3636023 (= lt!2312031 (head!12516 (exprs!5871 (h!70586 zl!343)))))))

(declare-fun b!5942474 () Bool)

(assert (=> b!5942474 (= e!3636024 e!3636025)))

(declare-fun c!1056871 () Bool)

(assert (=> b!5942474 (= c!1056871 ((_ is Cons!64137) (exprs!5871 (h!70586 zl!343))))))

(assert (=> d!1862871 e!3636026))

(declare-fun res!2488617 () Bool)

(assert (=> d!1862871 (=> (not res!2488617) (not e!3636026))))

(assert (=> d!1862871 (= res!2488617 (validRegex!7723 lt!2312031))))

(assert (=> d!1862871 (= lt!2312031 e!3636024)))

(declare-fun c!1056873 () Bool)

(assert (=> d!1862871 (= c!1056873 e!3636022)))

(declare-fun res!2488616 () Bool)

(assert (=> d!1862871 (=> (not res!2488616) (not e!3636022))))

(assert (=> d!1862871 (= res!2488616 ((_ is Cons!64137) (exprs!5871 (h!70586 zl!343))))))

(assert (=> d!1862871 (forall!15069 (exprs!5871 (h!70586 zl!343)) lambda!324157)))

(assert (=> d!1862871 (= (generalisedConcat!1584 (exprs!5871 (h!70586 zl!343))) lt!2312031)))

(assert (= (and d!1862871 res!2488616) b!5942466))

(assert (= (and d!1862871 c!1056873) b!5942468))

(assert (= (and d!1862871 (not c!1056873)) b!5942474))

(assert (= (and b!5942474 c!1056871) b!5942471))

(assert (= (and b!5942474 (not c!1056871)) b!5942465))

(assert (= (and d!1862871 res!2488617) b!5942470))

(assert (= (and b!5942470 c!1056872) b!5942469))

(assert (= (and b!5942470 (not c!1056872)) b!5942472))

(assert (= (and b!5942472 c!1056874) b!5942473))

(assert (= (and b!5942472 (not c!1056874)) b!5942467))

(declare-fun m!6831924 () Bool)

(assert (=> d!1862871 m!6831924))

(declare-fun m!6831926 () Bool)

(assert (=> d!1862871 m!6831926))

(declare-fun m!6831928 () Bool)

(assert (=> b!5942469 m!6831928))

(declare-fun m!6831930 () Bool)

(assert (=> b!5942467 m!6831930))

(declare-fun m!6831932 () Bool)

(assert (=> b!5942470 m!6831932))

(declare-fun m!6831934 () Bool)

(assert (=> b!5942473 m!6831934))

(declare-fun m!6831936 () Bool)

(assert (=> b!5942472 m!6831936))

(assert (=> b!5942472 m!6831936))

(declare-fun m!6831938 () Bool)

(assert (=> b!5942472 m!6831938))

(assert (=> b!5942466 m!6831500))

(declare-fun m!6831940 () Bool)

(assert (=> b!5942471 m!6831940))

(assert (=> b!5941972 d!1862871))

(declare-fun d!1862889 () Bool)

(assert (=> d!1862889 (= (flatMap!1500 z!1189 lambda!324102) (choose!44775 z!1189 lambda!324102))))

(declare-fun bs!1405841 () Bool)

(assert (= bs!1405841 d!1862889))

(declare-fun m!6831944 () Bool)

(assert (=> bs!1405841 m!6831944))

(assert (=> b!5941971 d!1862889))

(declare-fun b!5942486 () Bool)

(declare-fun e!3636035 () Bool)

(assert (=> b!5942486 (= e!3636035 (nullable!5982 (h!70585 (exprs!5871 (h!70586 zl!343)))))))

(declare-fun b!5942487 () Bool)

(declare-fun e!3636034 () (InoxSet Context!10742))

(declare-fun call!472538 () (InoxSet Context!10742))

(assert (=> b!5942487 (= e!3636034 call!472538)))

(declare-fun d!1862891 () Bool)

(declare-fun c!1056881 () Bool)

(assert (=> d!1862891 (= c!1056881 e!3636035)))

(declare-fun res!2488619 () Bool)

(assert (=> d!1862891 (=> (not res!2488619) (not e!3636035))))

(assert (=> d!1862891 (= res!2488619 ((_ is Cons!64137) (exprs!5871 (h!70586 zl!343))))))

(declare-fun e!3636036 () (InoxSet Context!10742))

(assert (=> d!1862891 (= (derivationStepZipperUp!1163 (h!70586 zl!343) (h!70584 s!2326)) e!3636036)))

(declare-fun b!5942488 () Bool)

(assert (=> b!5942488 (= e!3636034 ((as const (Array Context!10742 Bool)) false))))

(declare-fun b!5942489 () Bool)

(assert (=> b!5942489 (= e!3636036 e!3636034)))

(declare-fun c!1056880 () Bool)

(assert (=> b!5942489 (= c!1056880 ((_ is Cons!64137) (exprs!5871 (h!70586 zl!343))))))

(declare-fun b!5942490 () Bool)

(assert (=> b!5942490 (= e!3636036 ((_ map or) call!472538 (derivationStepZipperUp!1163 (Context!10743 (t!377668 (exprs!5871 (h!70586 zl!343)))) (h!70584 s!2326))))))

(declare-fun bm!472533 () Bool)

(assert (=> bm!472533 (= call!472538 (derivationStepZipperDown!1237 (h!70585 (exprs!5871 (h!70586 zl!343))) (Context!10743 (t!377668 (exprs!5871 (h!70586 zl!343)))) (h!70584 s!2326)))))

(assert (= (and d!1862891 res!2488619) b!5942486))

(assert (= (and d!1862891 c!1056881) b!5942490))

(assert (= (and d!1862891 (not c!1056881)) b!5942489))

(assert (= (and b!5942489 c!1056880) b!5942487))

(assert (= (and b!5942489 (not c!1056880)) b!5942488))

(assert (= (or b!5942490 b!5942487) bm!472533))

(declare-fun m!6831952 () Bool)

(assert (=> b!5942486 m!6831952))

(declare-fun m!6831954 () Bool)

(assert (=> b!5942490 m!6831954))

(declare-fun m!6831956 () Bool)

(assert (=> bm!472533 m!6831956))

(assert (=> b!5941971 d!1862891))

(declare-fun d!1862895 () Bool)

(assert (=> d!1862895 (= (flatMap!1500 z!1189 lambda!324102) (dynLambda!25087 lambda!324102 (h!70586 zl!343)))))

(declare-fun lt!2312033 () Unit!157245)

(assert (=> d!1862895 (= lt!2312033 (choose!44777 z!1189 (h!70586 zl!343) lambda!324102))))

(assert (=> d!1862895 (= z!1189 (store ((as const (Array Context!10742 Bool)) false) (h!70586 zl!343) true))))

(assert (=> d!1862895 (= (lemmaFlatMapOnSingletonSet!1026 z!1189 (h!70586 zl!343) lambda!324102) lt!2312033)))

(declare-fun b_lambda!223235 () Bool)

(assert (=> (not b_lambda!223235) (not d!1862895)))

(declare-fun bs!1405842 () Bool)

(assert (= bs!1405842 d!1862895))

(assert (=> bs!1405842 m!6831490))

(declare-fun m!6831958 () Bool)

(assert (=> bs!1405842 m!6831958))

(declare-fun m!6831962 () Bool)

(assert (=> bs!1405842 m!6831962))

(declare-fun m!6831964 () Bool)

(assert (=> bs!1405842 m!6831964))

(assert (=> b!5941971 d!1862895))

(declare-fun bs!1405844 () Bool)

(declare-fun d!1862897 () Bool)

(assert (= bs!1405844 (and d!1862897 d!1862757)))

(declare-fun lambda!324160 () Int)

(assert (=> bs!1405844 (= lambda!324160 lambda!324114)))

(declare-fun bs!1405845 () Bool)

(assert (= bs!1405845 (and d!1862897 d!1862789)))

(assert (=> bs!1405845 (= lambda!324160 lambda!324118)))

(declare-fun bs!1405846 () Bool)

(assert (= bs!1405846 (and d!1862897 d!1862847)))

(assert (=> bs!1405846 (= lambda!324160 lambda!324149)))

(declare-fun bs!1405847 () Bool)

(assert (= bs!1405847 (and d!1862897 d!1862871)))

(assert (=> bs!1405847 (= lambda!324160 lambda!324157)))

(declare-fun b!5942533 () Bool)

(declare-fun e!3636064 () Bool)

(declare-fun lt!2312042 () Regex!15987)

(declare-fun isEmptyLang!1424 (Regex!15987) Bool)

(assert (=> b!5942533 (= e!3636064 (isEmptyLang!1424 lt!2312042))))

(declare-fun b!5942534 () Bool)

(declare-fun e!3636065 () Bool)

(assert (=> b!5942534 (= e!3636065 e!3636064)))

(declare-fun c!1056898 () Bool)

(assert (=> b!5942534 (= c!1056898 (isEmpty!36009 (unfocusZipperList!1408 zl!343)))))

(assert (=> d!1862897 e!3636065))

(declare-fun res!2488629 () Bool)

(assert (=> d!1862897 (=> (not res!2488629) (not e!3636065))))

(assert (=> d!1862897 (= res!2488629 (validRegex!7723 lt!2312042))))

(declare-fun e!3636063 () Regex!15987)

(assert (=> d!1862897 (= lt!2312042 e!3636063)))

(declare-fun c!1056900 () Bool)

(declare-fun e!3636066 () Bool)

(assert (=> d!1862897 (= c!1056900 e!3636066)))

(declare-fun res!2488628 () Bool)

(assert (=> d!1862897 (=> (not res!2488628) (not e!3636066))))

(assert (=> d!1862897 (= res!2488628 ((_ is Cons!64137) (unfocusZipperList!1408 zl!343)))))

(assert (=> d!1862897 (forall!15069 (unfocusZipperList!1408 zl!343) lambda!324160)))

(assert (=> d!1862897 (= (generalisedUnion!1831 (unfocusZipperList!1408 zl!343)) lt!2312042)))

(declare-fun b!5942535 () Bool)

(declare-fun e!3636062 () Regex!15987)

(assert (=> b!5942535 (= e!3636062 EmptyLang!15987)))

(declare-fun b!5942536 () Bool)

(assert (=> b!5942536 (= e!3636066 (isEmpty!36009 (t!377668 (unfocusZipperList!1408 zl!343))))))

(declare-fun b!5942537 () Bool)

(declare-fun e!3636061 () Bool)

(assert (=> b!5942537 (= e!3636064 e!3636061)))

(declare-fun c!1056899 () Bool)

(assert (=> b!5942537 (= c!1056899 (isEmpty!36009 (tail!11601 (unfocusZipperList!1408 zl!343))))))

(declare-fun b!5942538 () Bool)

(declare-fun isUnion!854 (Regex!15987) Bool)

(assert (=> b!5942538 (= e!3636061 (isUnion!854 lt!2312042))))

(declare-fun b!5942539 () Bool)

(assert (=> b!5942539 (= e!3636063 (h!70585 (unfocusZipperList!1408 zl!343)))))

(declare-fun b!5942540 () Bool)

(assert (=> b!5942540 (= e!3636062 (Union!15987 (h!70585 (unfocusZipperList!1408 zl!343)) (generalisedUnion!1831 (t!377668 (unfocusZipperList!1408 zl!343)))))))

(declare-fun b!5942541 () Bool)

(assert (=> b!5942541 (= e!3636061 (= lt!2312042 (head!12516 (unfocusZipperList!1408 zl!343))))))

(declare-fun b!5942542 () Bool)

(assert (=> b!5942542 (= e!3636063 e!3636062)))

(declare-fun c!1056901 () Bool)

(assert (=> b!5942542 (= c!1056901 ((_ is Cons!64137) (unfocusZipperList!1408 zl!343)))))

(assert (= (and d!1862897 res!2488628) b!5942536))

(assert (= (and d!1862897 c!1056900) b!5942539))

(assert (= (and d!1862897 (not c!1056900)) b!5942542))

(assert (= (and b!5942542 c!1056901) b!5942540))

(assert (= (and b!5942542 (not c!1056901)) b!5942535))

(assert (= (and d!1862897 res!2488629) b!5942534))

(assert (= (and b!5942534 c!1056898) b!5942533))

(assert (= (and b!5942534 (not c!1056898)) b!5942537))

(assert (= (and b!5942537 c!1056899) b!5942541))

(assert (= (and b!5942537 (not c!1056899)) b!5942538))

(assert (=> b!5942534 m!6831440))

(declare-fun m!6831996 () Bool)

(assert (=> b!5942534 m!6831996))

(declare-fun m!6831998 () Bool)

(assert (=> b!5942533 m!6831998))

(declare-fun m!6832000 () Bool)

(assert (=> b!5942536 m!6832000))

(declare-fun m!6832002 () Bool)

(assert (=> d!1862897 m!6832002))

(assert (=> d!1862897 m!6831440))

(declare-fun m!6832004 () Bool)

(assert (=> d!1862897 m!6832004))

(assert (=> b!5942541 m!6831440))

(declare-fun m!6832006 () Bool)

(assert (=> b!5942541 m!6832006))

(declare-fun m!6832008 () Bool)

(assert (=> b!5942540 m!6832008))

(declare-fun m!6832010 () Bool)

(assert (=> b!5942538 m!6832010))

(assert (=> b!5942537 m!6831440))

(declare-fun m!6832012 () Bool)

(assert (=> b!5942537 m!6832012))

(assert (=> b!5942537 m!6832012))

(declare-fun m!6832014 () Bool)

(assert (=> b!5942537 m!6832014))

(assert (=> b!5941981 d!1862897))

(declare-fun bs!1405849 () Bool)

(declare-fun d!1862909 () Bool)

(assert (= bs!1405849 (and d!1862909 d!1862757)))

(declare-fun lambda!324163 () Int)

(assert (=> bs!1405849 (= lambda!324163 lambda!324114)))

(declare-fun bs!1405850 () Bool)

(assert (= bs!1405850 (and d!1862909 d!1862871)))

(assert (=> bs!1405850 (= lambda!324163 lambda!324157)))

(declare-fun bs!1405852 () Bool)

(assert (= bs!1405852 (and d!1862909 d!1862897)))

(assert (=> bs!1405852 (= lambda!324163 lambda!324160)))

(declare-fun bs!1405853 () Bool)

(assert (= bs!1405853 (and d!1862909 d!1862789)))

(assert (=> bs!1405853 (= lambda!324163 lambda!324118)))

(declare-fun bs!1405855 () Bool)

(assert (= bs!1405855 (and d!1862909 d!1862847)))

(assert (=> bs!1405855 (= lambda!324163 lambda!324149)))

(declare-fun lt!2312045 () List!64261)

(assert (=> d!1862909 (forall!15069 lt!2312045 lambda!324163)))

(declare-fun e!3636092 () List!64261)

(assert (=> d!1862909 (= lt!2312045 e!3636092)))

(declare-fun c!1056904 () Bool)

(assert (=> d!1862909 (= c!1056904 ((_ is Cons!64138) zl!343))))

(assert (=> d!1862909 (= (unfocusZipperList!1408 zl!343) lt!2312045)))

(declare-fun b!5942599 () Bool)

(assert (=> b!5942599 (= e!3636092 (Cons!64137 (generalisedConcat!1584 (exprs!5871 (h!70586 zl!343))) (unfocusZipperList!1408 (t!377669 zl!343))))))

(declare-fun b!5942600 () Bool)

(assert (=> b!5942600 (= e!3636092 Nil!64137)))

(assert (= (and d!1862909 c!1056904) b!5942599))

(assert (= (and d!1862909 (not c!1056904)) b!5942600))

(declare-fun m!6832020 () Bool)

(assert (=> d!1862909 m!6832020))

(assert (=> b!5942599 m!6831444))

(declare-fun m!6832022 () Bool)

(assert (=> b!5942599 m!6832022))

(assert (=> b!5941981 d!1862909))

(declare-fun bs!1405856 () Bool)

(declare-fun b!5942639 () Bool)

(assert (= bs!1405856 (and b!5942639 b!5941954)))

(declare-fun lambda!324168 () Int)

(assert (=> bs!1405856 (not (= lambda!324168 lambda!324100))))

(declare-fun bs!1405857 () Bool)

(assert (= bs!1405857 (and b!5942639 d!1862823)))

(assert (=> bs!1405857 (not (= lambda!324168 lambda!324147))))

(assert (=> bs!1405856 (not (= lambda!324168 lambda!324101))))

(declare-fun bs!1405858 () Bool)

(assert (= bs!1405858 (and b!5942639 d!1862819)))

(assert (=> bs!1405858 (not (= lambda!324168 lambda!324134))))

(assert (=> bs!1405857 (not (= lambda!324168 lambda!324146))))

(assert (=> b!5942639 true))

(assert (=> b!5942639 true))

(declare-fun bs!1405859 () Bool)

(declare-fun b!5942634 () Bool)

(assert (= bs!1405859 (and b!5942634 b!5941954)))

(declare-fun lambda!324169 () Int)

(assert (=> bs!1405859 (not (= lambda!324169 lambda!324100))))

(declare-fun bs!1405860 () Bool)

(assert (= bs!1405860 (and b!5942634 d!1862823)))

(assert (=> bs!1405860 (= lambda!324169 lambda!324147)))

(assert (=> bs!1405859 (= lambda!324169 lambda!324101)))

(declare-fun bs!1405861 () Bool)

(assert (= bs!1405861 (and b!5942634 d!1862819)))

(assert (=> bs!1405861 (not (= lambda!324169 lambda!324134))))

(declare-fun bs!1405862 () Bool)

(assert (= bs!1405862 (and b!5942634 b!5942639)))

(assert (=> bs!1405862 (not (= lambda!324169 lambda!324168))))

(assert (=> bs!1405860 (not (= lambda!324169 lambda!324146))))

(assert (=> b!5942634 true))

(assert (=> b!5942634 true))

(declare-fun b!5942633 () Bool)

(declare-fun e!3636111 () Bool)

(declare-fun e!3636115 () Bool)

(assert (=> b!5942633 (= e!3636111 e!3636115)))

(declare-fun c!1056916 () Bool)

(assert (=> b!5942633 (= c!1056916 ((_ is Star!15987) r!7292))))

(declare-fun bm!472544 () Bool)

(declare-fun call!472550 () Bool)

(assert (=> bm!472544 (= call!472550 (Exists!3057 (ite c!1056916 lambda!324168 lambda!324169)))))

(assert (=> b!5942634 (= e!3636115 call!472550)))

(declare-fun d!1862917 () Bool)

(declare-fun c!1056914 () Bool)

(assert (=> d!1862917 (= c!1056914 ((_ is EmptyExpr!15987) r!7292))))

(declare-fun e!3636112 () Bool)

(assert (=> d!1862917 (= (matchRSpec!3088 r!7292 s!2326) e!3636112)))

(declare-fun b!5942635 () Bool)

(declare-fun e!3636117 () Bool)

(assert (=> b!5942635 (= e!3636112 e!3636117)))

(declare-fun res!2488648 () Bool)

(assert (=> b!5942635 (= res!2488648 (not ((_ is EmptyLang!15987) r!7292)))))

(assert (=> b!5942635 (=> (not res!2488648) (not e!3636117))))

(declare-fun b!5942636 () Bool)

(declare-fun e!3636114 () Bool)

(assert (=> b!5942636 (= e!3636114 (matchRSpec!3088 (regTwo!32487 r!7292) s!2326))))

(declare-fun b!5942637 () Bool)

(declare-fun c!1056913 () Bool)

(assert (=> b!5942637 (= c!1056913 ((_ is ElementMatch!15987) r!7292))))

(declare-fun e!3636113 () Bool)

(assert (=> b!5942637 (= e!3636117 e!3636113)))

(declare-fun b!5942638 () Bool)

(declare-fun res!2488647 () Bool)

(declare-fun e!3636116 () Bool)

(assert (=> b!5942638 (=> res!2488647 e!3636116)))

(declare-fun call!472549 () Bool)

(assert (=> b!5942638 (= res!2488647 call!472549)))

(assert (=> b!5942638 (= e!3636115 e!3636116)))

(declare-fun bm!472545 () Bool)

(assert (=> bm!472545 (= call!472549 (isEmpty!36013 s!2326))))

(assert (=> b!5942639 (= e!3636116 call!472550)))

(declare-fun b!5942640 () Bool)

(assert (=> b!5942640 (= e!3636112 call!472549)))

(declare-fun b!5942641 () Bool)

(declare-fun c!1056915 () Bool)

(assert (=> b!5942641 (= c!1056915 ((_ is Union!15987) r!7292))))

(assert (=> b!5942641 (= e!3636113 e!3636111)))

(declare-fun b!5942642 () Bool)

(assert (=> b!5942642 (= e!3636113 (= s!2326 (Cons!64136 (c!1056714 r!7292) Nil!64136)))))

(declare-fun b!5942643 () Bool)

(assert (=> b!5942643 (= e!3636111 e!3636114)))

(declare-fun res!2488646 () Bool)

(assert (=> b!5942643 (= res!2488646 (matchRSpec!3088 (regOne!32487 r!7292) s!2326))))

(assert (=> b!5942643 (=> res!2488646 e!3636114)))

(assert (= (and d!1862917 c!1056914) b!5942640))

(assert (= (and d!1862917 (not c!1056914)) b!5942635))

(assert (= (and b!5942635 res!2488648) b!5942637))

(assert (= (and b!5942637 c!1056913) b!5942642))

(assert (= (and b!5942637 (not c!1056913)) b!5942641))

(assert (= (and b!5942641 c!1056915) b!5942643))

(assert (= (and b!5942641 (not c!1056915)) b!5942633))

(assert (= (and b!5942643 (not res!2488646)) b!5942636))

(assert (= (and b!5942633 c!1056916) b!5942638))

(assert (= (and b!5942633 (not c!1056916)) b!5942634))

(assert (= (and b!5942638 (not res!2488647)) b!5942639))

(assert (= (or b!5942639 b!5942634) bm!472544))

(assert (= (or b!5942640 b!5942638) bm!472545))

(declare-fun m!6832024 () Bool)

(assert (=> bm!472544 m!6832024))

(declare-fun m!6832026 () Bool)

(assert (=> b!5942636 m!6832026))

(assert (=> bm!472545 m!6831672))

(declare-fun m!6832028 () Bool)

(assert (=> b!5942643 m!6832028))

(assert (=> b!5941969 d!1862917))

(declare-fun b!5942672 () Bool)

(declare-fun e!3636137 () Bool)

(assert (=> b!5942672 (= e!3636137 (nullable!5982 r!7292))))

(declare-fun b!5942673 () Bool)

(declare-fun e!3636136 () Bool)

(declare-fun e!3636134 () Bool)

(assert (=> b!5942673 (= e!3636136 e!3636134)))

(declare-fun res!2488666 () Bool)

(assert (=> b!5942673 (=> res!2488666 e!3636134)))

(declare-fun call!472553 () Bool)

(assert (=> b!5942673 (= res!2488666 call!472553)))

(declare-fun b!5942674 () Bool)

(assert (=> b!5942674 (= e!3636134 (not (= (head!12515 s!2326) (c!1056714 r!7292))))))

(declare-fun b!5942675 () Bool)

(declare-fun e!3636133 () Bool)

(assert (=> b!5942675 (= e!3636133 (= (head!12515 s!2326) (c!1056714 r!7292)))))

(declare-fun b!5942676 () Bool)

(declare-fun res!2488667 () Bool)

(assert (=> b!5942676 (=> (not res!2488667) (not e!3636133))))

(assert (=> b!5942676 (= res!2488667 (not call!472553))))

(declare-fun b!5942677 () Bool)

(declare-fun e!3636138 () Bool)

(declare-fun lt!2312048 () Bool)

(assert (=> b!5942677 (= e!3636138 (not lt!2312048))))

(declare-fun b!5942679 () Bool)

(declare-fun res!2488671 () Bool)

(declare-fun e!3636135 () Bool)

(assert (=> b!5942679 (=> res!2488671 e!3636135)))

(assert (=> b!5942679 (= res!2488671 e!3636133)))

(declare-fun res!2488670 () Bool)

(assert (=> b!5942679 (=> (not res!2488670) (not e!3636133))))

(assert (=> b!5942679 (= res!2488670 lt!2312048)))

(declare-fun b!5942680 () Bool)

(declare-fun res!2488669 () Bool)

(assert (=> b!5942680 (=> res!2488669 e!3636134)))

(assert (=> b!5942680 (= res!2488669 (not (isEmpty!36013 (tail!11600 s!2326))))))

(declare-fun b!5942681 () Bool)

(assert (=> b!5942681 (= e!3636135 e!3636136)))

(declare-fun res!2488672 () Bool)

(assert (=> b!5942681 (=> (not res!2488672) (not e!3636136))))

(assert (=> b!5942681 (= res!2488672 (not lt!2312048))))

(declare-fun b!5942682 () Bool)

(declare-fun derivativeStep!4718 (Regex!15987 C!32244) Regex!15987)

(assert (=> b!5942682 (= e!3636137 (matchR!8170 (derivativeStep!4718 r!7292 (head!12515 s!2326)) (tail!11600 s!2326)))))

(declare-fun b!5942683 () Bool)

(declare-fun e!3636132 () Bool)

(assert (=> b!5942683 (= e!3636132 (= lt!2312048 call!472553))))

(declare-fun b!5942684 () Bool)

(declare-fun res!2488668 () Bool)

(assert (=> b!5942684 (=> (not res!2488668) (not e!3636133))))

(assert (=> b!5942684 (= res!2488668 (isEmpty!36013 (tail!11600 s!2326)))))

(declare-fun bm!472548 () Bool)

(assert (=> bm!472548 (= call!472553 (isEmpty!36013 s!2326))))

(declare-fun b!5942685 () Bool)

(declare-fun res!2488665 () Bool)

(assert (=> b!5942685 (=> res!2488665 e!3636135)))

(assert (=> b!5942685 (= res!2488665 (not ((_ is ElementMatch!15987) r!7292)))))

(assert (=> b!5942685 (= e!3636138 e!3636135)))

(declare-fun d!1862919 () Bool)

(assert (=> d!1862919 e!3636132))

(declare-fun c!1056924 () Bool)

(assert (=> d!1862919 (= c!1056924 ((_ is EmptyExpr!15987) r!7292))))

(assert (=> d!1862919 (= lt!2312048 e!3636137)))

(declare-fun c!1056925 () Bool)

(assert (=> d!1862919 (= c!1056925 (isEmpty!36013 s!2326))))

(assert (=> d!1862919 (validRegex!7723 r!7292)))

(assert (=> d!1862919 (= (matchR!8170 r!7292 s!2326) lt!2312048)))

(declare-fun b!5942678 () Bool)

(assert (=> b!5942678 (= e!3636132 e!3636138)))

(declare-fun c!1056923 () Bool)

(assert (=> b!5942678 (= c!1056923 ((_ is EmptyLang!15987) r!7292))))

(assert (= (and d!1862919 c!1056925) b!5942672))

(assert (= (and d!1862919 (not c!1056925)) b!5942682))

(assert (= (and d!1862919 c!1056924) b!5942683))

(assert (= (and d!1862919 (not c!1056924)) b!5942678))

(assert (= (and b!5942678 c!1056923) b!5942677))

(assert (= (and b!5942678 (not c!1056923)) b!5942685))

(assert (= (and b!5942685 (not res!2488665)) b!5942679))

(assert (= (and b!5942679 res!2488670) b!5942676))

(assert (= (and b!5942676 res!2488667) b!5942684))

(assert (= (and b!5942684 res!2488668) b!5942675))

(assert (= (and b!5942679 (not res!2488671)) b!5942681))

(assert (= (and b!5942681 res!2488672) b!5942673))

(assert (= (and b!5942673 (not res!2488666)) b!5942680))

(assert (= (and b!5942680 (not res!2488669)) b!5942674))

(assert (= (or b!5942683 b!5942673 b!5942676) bm!472548))

(assert (=> b!5942684 m!6831680))

(assert (=> b!5942684 m!6831680))

(declare-fun m!6832030 () Bool)

(assert (=> b!5942684 m!6832030))

(assert (=> bm!472548 m!6831672))

(assert (=> b!5942675 m!6831676))

(declare-fun m!6832032 () Bool)

(assert (=> b!5942672 m!6832032))

(assert (=> d!1862919 m!6831672))

(assert (=> d!1862919 m!6831498))

(assert (=> b!5942680 m!6831680))

(assert (=> b!5942680 m!6831680))

(assert (=> b!5942680 m!6832030))

(assert (=> b!5942682 m!6831676))

(assert (=> b!5942682 m!6831676))

(declare-fun m!6832034 () Bool)

(assert (=> b!5942682 m!6832034))

(assert (=> b!5942682 m!6831680))

(assert (=> b!5942682 m!6832034))

(assert (=> b!5942682 m!6831680))

(declare-fun m!6832036 () Bool)

(assert (=> b!5942682 m!6832036))

(assert (=> b!5942674 m!6831676))

(assert (=> b!5941969 d!1862919))

(declare-fun d!1862921 () Bool)

(assert (=> d!1862921 (= (matchR!8170 r!7292 s!2326) (matchRSpec!3088 r!7292 s!2326))))

(declare-fun lt!2312051 () Unit!157245)

(declare-fun choose!44789 (Regex!15987 List!64260) Unit!157245)

(assert (=> d!1862921 (= lt!2312051 (choose!44789 r!7292 s!2326))))

(assert (=> d!1862921 (validRegex!7723 r!7292)))

(assert (=> d!1862921 (= (mainMatchTheorem!3088 r!7292 s!2326) lt!2312051)))

(declare-fun bs!1405863 () Bool)

(assert (= bs!1405863 d!1862921))

(assert (=> bs!1405863 m!6831448))

(assert (=> bs!1405863 m!6831446))

(declare-fun m!6832038 () Bool)

(assert (=> bs!1405863 m!6832038))

(assert (=> bs!1405863 m!6831498))

(assert (=> b!5941969 d!1862921))

(declare-fun call!472554 () (InoxSet Context!10742))

(declare-fun bm!472549 () Bool)

(declare-fun call!472559 () List!64261)

(declare-fun c!1056927 () Bool)

(assert (=> bm!472549 (= call!472554 (derivationStepZipperDown!1237 (ite c!1056927 (regOne!32487 r!7292) (regOne!32486 r!7292)) (ite c!1056927 lt!2311940 (Context!10743 call!472559)) (h!70584 s!2326)))))

(declare-fun b!5942686 () Bool)

(declare-fun e!3636139 () (InoxSet Context!10742))

(assert (=> b!5942686 (= e!3636139 ((as const (Array Context!10742 Bool)) false))))

(declare-fun bm!472550 () Bool)

(declare-fun call!472558 () (InoxSet Context!10742))

(declare-fun call!472557 () (InoxSet Context!10742))

(assert (=> bm!472550 (= call!472558 call!472557)))

(declare-fun b!5942688 () Bool)

(declare-fun e!3636142 () (InoxSet Context!10742))

(declare-fun e!3636143 () (InoxSet Context!10742))

(assert (=> b!5942688 (= e!3636142 e!3636143)))

(declare-fun c!1056928 () Bool)

(assert (=> b!5942688 (= c!1056928 ((_ is Concat!24832) r!7292))))

(declare-fun b!5942689 () Bool)

(declare-fun call!472555 () (InoxSet Context!10742))

(assert (=> b!5942689 (= e!3636143 call!472555)))

(declare-fun b!5942690 () Bool)

(assert (=> b!5942690 (= e!3636139 call!472555)))

(declare-fun b!5942691 () Bool)

(declare-fun c!1056930 () Bool)

(assert (=> b!5942691 (= c!1056930 ((_ is Star!15987) r!7292))))

(assert (=> b!5942691 (= e!3636143 e!3636139)))

(declare-fun bm!472551 () Bool)

(assert (=> bm!472551 (= call!472555 call!472558)))

(declare-fun c!1056926 () Bool)

(declare-fun bm!472552 () Bool)

(assert (=> bm!472552 (= call!472559 ($colon$colon!1873 (exprs!5871 lt!2311940) (ite (or c!1056926 c!1056928) (regTwo!32486 r!7292) r!7292)))))

(declare-fun b!5942692 () Bool)

(declare-fun e!3636141 () Bool)

(assert (=> b!5942692 (= c!1056926 e!3636141)))

(declare-fun res!2488673 () Bool)

(assert (=> b!5942692 (=> (not res!2488673) (not e!3636141))))

(assert (=> b!5942692 (= res!2488673 ((_ is Concat!24832) r!7292))))

(declare-fun e!3636144 () (InoxSet Context!10742))

(assert (=> b!5942692 (= e!3636144 e!3636142)))

(declare-fun b!5942693 () Bool)

(assert (=> b!5942693 (= e!3636142 ((_ map or) call!472554 call!472558))))

(declare-fun b!5942694 () Bool)

(declare-fun e!3636140 () (InoxSet Context!10742))

(assert (=> b!5942694 (= e!3636140 (store ((as const (Array Context!10742 Bool)) false) lt!2311940 true))))

(declare-fun b!5942695 () Bool)

(assert (=> b!5942695 (= e!3636140 e!3636144)))

(assert (=> b!5942695 (= c!1056927 ((_ is Union!15987) r!7292))))

(declare-fun d!1862923 () Bool)

(declare-fun c!1056929 () Bool)

(assert (=> d!1862923 (= c!1056929 (and ((_ is ElementMatch!15987) r!7292) (= (c!1056714 r!7292) (h!70584 s!2326))))))

(assert (=> d!1862923 (= (derivationStepZipperDown!1237 r!7292 lt!2311940 (h!70584 s!2326)) e!3636140)))

(declare-fun b!5942687 () Bool)

(assert (=> b!5942687 (= e!3636144 ((_ map or) call!472554 call!472557))))

(declare-fun b!5942696 () Bool)

(assert (=> b!5942696 (= e!3636141 (nullable!5982 (regOne!32486 r!7292)))))

(declare-fun bm!472553 () Bool)

(declare-fun call!472556 () List!64261)

(assert (=> bm!472553 (= call!472556 call!472559)))

(declare-fun bm!472554 () Bool)

(assert (=> bm!472554 (= call!472557 (derivationStepZipperDown!1237 (ite c!1056927 (regTwo!32487 r!7292) (ite c!1056926 (regTwo!32486 r!7292) (ite c!1056928 (regOne!32486 r!7292) (reg!16316 r!7292)))) (ite (or c!1056927 c!1056926) lt!2311940 (Context!10743 call!472556)) (h!70584 s!2326)))))

(assert (= (and d!1862923 c!1056929) b!5942694))

(assert (= (and d!1862923 (not c!1056929)) b!5942695))

(assert (= (and b!5942695 c!1056927) b!5942687))

(assert (= (and b!5942695 (not c!1056927)) b!5942692))

(assert (= (and b!5942692 res!2488673) b!5942696))

(assert (= (and b!5942692 c!1056926) b!5942693))

(assert (= (and b!5942692 (not c!1056926)) b!5942688))

(assert (= (and b!5942688 c!1056928) b!5942689))

(assert (= (and b!5942688 (not c!1056928)) b!5942691))

(assert (= (and b!5942691 c!1056930) b!5942690))

(assert (= (and b!5942691 (not c!1056930)) b!5942686))

(assert (= (or b!5942689 b!5942690) bm!472553))

(assert (= (or b!5942689 b!5942690) bm!472551))

(assert (= (or b!5942693 bm!472553) bm!472552))

(assert (= (or b!5942693 bm!472551) bm!472550))

(assert (= (or b!5942687 bm!472550) bm!472554))

(assert (= (or b!5942687 b!5942693) bm!472549))

(declare-fun m!6832040 () Bool)

(assert (=> bm!472549 m!6832040))

(assert (=> b!5942696 m!6831478))

(declare-fun m!6832042 () Bool)

(assert (=> bm!472552 m!6832042))

(declare-fun m!6832044 () Bool)

(assert (=> bm!472554 m!6832044))

(assert (=> b!5942694 m!6831632))

(assert (=> b!5941979 d!1862923))

(declare-fun b!5942697 () Bool)

(declare-fun e!3636146 () Bool)

(assert (=> b!5942697 (= e!3636146 (nullable!5982 (h!70585 (exprs!5871 lt!2311943))))))

(declare-fun b!5942698 () Bool)

(declare-fun e!3636145 () (InoxSet Context!10742))

(declare-fun call!472560 () (InoxSet Context!10742))

(assert (=> b!5942698 (= e!3636145 call!472560)))

(declare-fun d!1862925 () Bool)

(declare-fun c!1056932 () Bool)

(assert (=> d!1862925 (= c!1056932 e!3636146)))

(declare-fun res!2488674 () Bool)

(assert (=> d!1862925 (=> (not res!2488674) (not e!3636146))))

(assert (=> d!1862925 (= res!2488674 ((_ is Cons!64137) (exprs!5871 lt!2311943)))))

(declare-fun e!3636147 () (InoxSet Context!10742))

(assert (=> d!1862925 (= (derivationStepZipperUp!1163 lt!2311943 (h!70584 s!2326)) e!3636147)))

(declare-fun b!5942699 () Bool)

(assert (=> b!5942699 (= e!3636145 ((as const (Array Context!10742 Bool)) false))))

(declare-fun b!5942700 () Bool)

(assert (=> b!5942700 (= e!3636147 e!3636145)))

(declare-fun c!1056931 () Bool)

(assert (=> b!5942700 (= c!1056931 ((_ is Cons!64137) (exprs!5871 lt!2311943)))))

(declare-fun b!5942701 () Bool)

(assert (=> b!5942701 (= e!3636147 ((_ map or) call!472560 (derivationStepZipperUp!1163 (Context!10743 (t!377668 (exprs!5871 lt!2311943))) (h!70584 s!2326))))))

(declare-fun bm!472555 () Bool)

(assert (=> bm!472555 (= call!472560 (derivationStepZipperDown!1237 (h!70585 (exprs!5871 lt!2311943)) (Context!10743 (t!377668 (exprs!5871 lt!2311943))) (h!70584 s!2326)))))

(assert (= (and d!1862925 res!2488674) b!5942697))

(assert (= (and d!1862925 c!1056932) b!5942701))

(assert (= (and d!1862925 (not c!1056932)) b!5942700))

(assert (= (and b!5942700 c!1056931) b!5942698))

(assert (= (and b!5942700 (not c!1056931)) b!5942699))

(assert (= (or b!5942701 b!5942698) bm!472555))

(declare-fun m!6832046 () Bool)

(assert (=> b!5942697 m!6832046))

(declare-fun m!6832048 () Bool)

(assert (=> b!5942701 m!6832048))

(declare-fun m!6832050 () Bool)

(assert (=> bm!472555 m!6832050))

(assert (=> b!5941979 d!1862925))

(declare-fun bs!1405864 () Bool)

(declare-fun d!1862927 () Bool)

(assert (= bs!1405864 (and d!1862927 b!5941971)))

(declare-fun lambda!324170 () Int)

(assert (=> bs!1405864 (= lambda!324170 lambda!324102)))

(declare-fun bs!1405865 () Bool)

(assert (= bs!1405865 (and d!1862927 d!1862801)))

(assert (=> bs!1405865 (= lambda!324170 lambda!324124)))

(declare-fun bs!1405866 () Bool)

(assert (= bs!1405866 (and d!1862927 d!1862845)))

(assert (=> bs!1405866 (= lambda!324170 lambda!324148)))

(assert (=> d!1862927 true))

(assert (=> d!1862927 (= (derivationStepZipper!1968 z!1189 (h!70584 s!2326)) (flatMap!1500 z!1189 lambda!324170))))

(declare-fun bs!1405867 () Bool)

(assert (= bs!1405867 d!1862927))

(declare-fun m!6832052 () Bool)

(assert (=> bs!1405867 m!6832052))

(assert (=> b!5941979 d!1862927))

(declare-fun d!1862929 () Bool)

(assert (=> d!1862929 (= (isEmpty!36010 (t!377669 zl!343)) ((_ is Nil!64138) (t!377669 zl!343)))))

(assert (=> b!5941978 d!1862929))

(declare-fun d!1862931 () Bool)

(declare-fun lt!2312054 () Regex!15987)

(assert (=> d!1862931 (validRegex!7723 lt!2312054)))

(assert (=> d!1862931 (= lt!2312054 (generalisedUnion!1831 (unfocusZipperList!1408 zl!343)))))

(assert (=> d!1862931 (= (unfocusZipper!1729 zl!343) lt!2312054)))

(declare-fun bs!1405868 () Bool)

(assert (= bs!1405868 d!1862931))

(declare-fun m!6832054 () Bool)

(assert (=> bs!1405868 m!6832054))

(assert (=> bs!1405868 m!6831440))

(assert (=> bs!1405868 m!6831440))

(assert (=> bs!1405868 m!6831442))

(assert (=> b!5941958 d!1862931))

(declare-fun b!5942706 () Bool)

(declare-fun e!3636150 () Bool)

(declare-fun tp!1653461 () Bool)

(assert (=> b!5942706 (= e!3636150 (and tp_is_empty!41227 tp!1653461))))

(assert (=> b!5941976 (= tp!1653400 e!3636150)))

(assert (= (and b!5941976 ((_ is Cons!64136) (t!377667 s!2326))) b!5942706))

(declare-fun b!5942711 () Bool)

(declare-fun e!3636153 () Bool)

(declare-fun tp!1653466 () Bool)

(declare-fun tp!1653467 () Bool)

(assert (=> b!5942711 (= e!3636153 (and tp!1653466 tp!1653467))))

(assert (=> b!5941959 (= tp!1653399 e!3636153)))

(assert (= (and b!5941959 ((_ is Cons!64137) (exprs!5871 setElem!40369))) b!5942711))

(declare-fun e!3636156 () Bool)

(assert (=> b!5941955 (= tp!1653391 e!3636156)))

(declare-fun b!5942722 () Bool)

(assert (=> b!5942722 (= e!3636156 tp_is_empty!41227)))

(declare-fun b!5942724 () Bool)

(declare-fun tp!1653482 () Bool)

(assert (=> b!5942724 (= e!3636156 tp!1653482)))

(declare-fun b!5942725 () Bool)

(declare-fun tp!1653478 () Bool)

(declare-fun tp!1653480 () Bool)

(assert (=> b!5942725 (= e!3636156 (and tp!1653478 tp!1653480))))

(declare-fun b!5942723 () Bool)

(declare-fun tp!1653481 () Bool)

(declare-fun tp!1653479 () Bool)

(assert (=> b!5942723 (= e!3636156 (and tp!1653481 tp!1653479))))

(assert (= (and b!5941955 ((_ is ElementMatch!15987) (regOne!32487 r!7292))) b!5942722))

(assert (= (and b!5941955 ((_ is Concat!24832) (regOne!32487 r!7292))) b!5942723))

(assert (= (and b!5941955 ((_ is Star!15987) (regOne!32487 r!7292))) b!5942724))

(assert (= (and b!5941955 ((_ is Union!15987) (regOne!32487 r!7292))) b!5942725))

(declare-fun e!3636157 () Bool)

(assert (=> b!5941955 (= tp!1653397 e!3636157)))

(declare-fun b!5942726 () Bool)

(assert (=> b!5942726 (= e!3636157 tp_is_empty!41227)))

(declare-fun b!5942728 () Bool)

(declare-fun tp!1653487 () Bool)

(assert (=> b!5942728 (= e!3636157 tp!1653487)))

(declare-fun b!5942729 () Bool)

(declare-fun tp!1653483 () Bool)

(declare-fun tp!1653485 () Bool)

(assert (=> b!5942729 (= e!3636157 (and tp!1653483 tp!1653485))))

(declare-fun b!5942727 () Bool)

(declare-fun tp!1653486 () Bool)

(declare-fun tp!1653484 () Bool)

(assert (=> b!5942727 (= e!3636157 (and tp!1653486 tp!1653484))))

(assert (= (and b!5941955 ((_ is ElementMatch!15987) (regTwo!32487 r!7292))) b!5942726))

(assert (= (and b!5941955 ((_ is Concat!24832) (regTwo!32487 r!7292))) b!5942727))

(assert (= (and b!5941955 ((_ is Star!15987) (regTwo!32487 r!7292))) b!5942728))

(assert (= (and b!5941955 ((_ is Union!15987) (regTwo!32487 r!7292))) b!5942729))

(declare-fun e!3636158 () Bool)

(assert (=> b!5941961 (= tp!1653393 e!3636158)))

(declare-fun b!5942730 () Bool)

(assert (=> b!5942730 (= e!3636158 tp_is_empty!41227)))

(declare-fun b!5942732 () Bool)

(declare-fun tp!1653492 () Bool)

(assert (=> b!5942732 (= e!3636158 tp!1653492)))

(declare-fun b!5942733 () Bool)

(declare-fun tp!1653488 () Bool)

(declare-fun tp!1653490 () Bool)

(assert (=> b!5942733 (= e!3636158 (and tp!1653488 tp!1653490))))

(declare-fun b!5942731 () Bool)

(declare-fun tp!1653491 () Bool)

(declare-fun tp!1653489 () Bool)

(assert (=> b!5942731 (= e!3636158 (and tp!1653491 tp!1653489))))

(assert (= (and b!5941961 ((_ is ElementMatch!15987) (regOne!32486 r!7292))) b!5942730))

(assert (= (and b!5941961 ((_ is Concat!24832) (regOne!32486 r!7292))) b!5942731))

(assert (= (and b!5941961 ((_ is Star!15987) (regOne!32486 r!7292))) b!5942732))

(assert (= (and b!5941961 ((_ is Union!15987) (regOne!32486 r!7292))) b!5942733))

(declare-fun e!3636159 () Bool)

(assert (=> b!5941961 (= tp!1653395 e!3636159)))

(declare-fun b!5942734 () Bool)

(assert (=> b!5942734 (= e!3636159 tp_is_empty!41227)))

(declare-fun b!5942736 () Bool)

(declare-fun tp!1653497 () Bool)

(assert (=> b!5942736 (= e!3636159 tp!1653497)))

(declare-fun b!5942737 () Bool)

(declare-fun tp!1653493 () Bool)

(declare-fun tp!1653495 () Bool)

(assert (=> b!5942737 (= e!3636159 (and tp!1653493 tp!1653495))))

(declare-fun b!5942735 () Bool)

(declare-fun tp!1653496 () Bool)

(declare-fun tp!1653494 () Bool)

(assert (=> b!5942735 (= e!3636159 (and tp!1653496 tp!1653494))))

(assert (= (and b!5941961 ((_ is ElementMatch!15987) (regTwo!32486 r!7292))) b!5942734))

(assert (= (and b!5941961 ((_ is Concat!24832) (regTwo!32486 r!7292))) b!5942735))

(assert (= (and b!5941961 ((_ is Star!15987) (regTwo!32486 r!7292))) b!5942736))

(assert (= (and b!5941961 ((_ is Union!15987) (regTwo!32486 r!7292))) b!5942737))

(declare-fun condSetEmpty!40375 () Bool)

(assert (=> setNonEmpty!40369 (= condSetEmpty!40375 (= setRest!40369 ((as const (Array Context!10742 Bool)) false)))))

(declare-fun setRes!40375 () Bool)

(assert (=> setNonEmpty!40369 (= tp!1653394 setRes!40375)))

(declare-fun setIsEmpty!40375 () Bool)

(assert (=> setIsEmpty!40375 setRes!40375))

(declare-fun setNonEmpty!40375 () Bool)

(declare-fun setElem!40375 () Context!10742)

(declare-fun tp!1653502 () Bool)

(declare-fun e!3636162 () Bool)

(assert (=> setNonEmpty!40375 (= setRes!40375 (and tp!1653502 (inv!83214 setElem!40375) e!3636162))))

(declare-fun setRest!40375 () (InoxSet Context!10742))

(assert (=> setNonEmpty!40375 (= setRest!40369 ((_ map or) (store ((as const (Array Context!10742 Bool)) false) setElem!40375 true) setRest!40375))))

(declare-fun b!5942742 () Bool)

(declare-fun tp!1653503 () Bool)

(assert (=> b!5942742 (= e!3636162 tp!1653503)))

(assert (= (and setNonEmpty!40369 condSetEmpty!40375) setIsEmpty!40375))

(assert (= (and setNonEmpty!40369 (not condSetEmpty!40375)) setNonEmpty!40375))

(assert (= setNonEmpty!40375 b!5942742))

(declare-fun m!6832056 () Bool)

(assert (=> setNonEmpty!40375 m!6832056))

(declare-fun b!5942743 () Bool)

(declare-fun e!3636163 () Bool)

(declare-fun tp!1653504 () Bool)

(declare-fun tp!1653505 () Bool)

(assert (=> b!5942743 (= e!3636163 (and tp!1653504 tp!1653505))))

(assert (=> b!5941968 (= tp!1653396 e!3636163)))

(assert (= (and b!5941968 ((_ is Cons!64137) (exprs!5871 (h!70586 zl!343)))) b!5942743))

(declare-fun e!3636164 () Bool)

(assert (=> b!5941964 (= tp!1653392 e!3636164)))

(declare-fun b!5942744 () Bool)

(assert (=> b!5942744 (= e!3636164 tp_is_empty!41227)))

(declare-fun b!5942746 () Bool)

(declare-fun tp!1653510 () Bool)

(assert (=> b!5942746 (= e!3636164 tp!1653510)))

(declare-fun b!5942747 () Bool)

(declare-fun tp!1653506 () Bool)

(declare-fun tp!1653508 () Bool)

(assert (=> b!5942747 (= e!3636164 (and tp!1653506 tp!1653508))))

(declare-fun b!5942745 () Bool)

(declare-fun tp!1653509 () Bool)

(declare-fun tp!1653507 () Bool)

(assert (=> b!5942745 (= e!3636164 (and tp!1653509 tp!1653507))))

(assert (= (and b!5941964 ((_ is ElementMatch!15987) (reg!16316 r!7292))) b!5942744))

(assert (= (and b!5941964 ((_ is Concat!24832) (reg!16316 r!7292))) b!5942745))

(assert (= (and b!5941964 ((_ is Star!15987) (reg!16316 r!7292))) b!5942746))

(assert (= (and b!5941964 ((_ is Union!15987) (reg!16316 r!7292))) b!5942747))

(declare-fun b!5942755 () Bool)

(declare-fun e!3636170 () Bool)

(declare-fun tp!1653515 () Bool)

(assert (=> b!5942755 (= e!3636170 tp!1653515)))

(declare-fun e!3636169 () Bool)

(declare-fun b!5942754 () Bool)

(declare-fun tp!1653516 () Bool)

(assert (=> b!5942754 (= e!3636169 (and (inv!83214 (h!70586 (t!377669 zl!343))) e!3636170 tp!1653516))))

(assert (=> b!5941974 (= tp!1653398 e!3636169)))

(assert (= b!5942754 b!5942755))

(assert (= (and b!5941974 ((_ is Cons!64138) (t!377669 zl!343))) b!5942754))

(declare-fun m!6832058 () Bool)

(assert (=> b!5942754 m!6832058))

(declare-fun b_lambda!223243 () Bool)

(assert (= b_lambda!223225 (or b!5941971 b_lambda!223243)))

(declare-fun bs!1405869 () Bool)

(declare-fun d!1862933 () Bool)

(assert (= bs!1405869 (and d!1862933 b!5941971)))

(assert (=> bs!1405869 (= (dynLambda!25087 lambda!324102 lt!2311958) (derivationStepZipperUp!1163 lt!2311958 (h!70584 s!2326)))))

(assert (=> bs!1405869 m!6831474))

(assert (=> d!1862765 d!1862933))

(declare-fun b_lambda!223245 () Bool)

(assert (= b_lambda!223235 (or b!5941971 b_lambda!223245)))

(declare-fun bs!1405870 () Bool)

(declare-fun d!1862935 () Bool)

(assert (= bs!1405870 (and d!1862935 b!5941971)))

(assert (=> bs!1405870 (= (dynLambda!25087 lambda!324102 (h!70586 zl!343)) (derivationStepZipperUp!1163 (h!70586 zl!343) (h!70584 s!2326)))))

(assert (=> bs!1405870 m!6831492))

(assert (=> d!1862895 d!1862935))

(declare-fun b_lambda!223247 () Bool)

(assert (= b_lambda!223227 (or b!5941971 b_lambda!223247)))

(declare-fun bs!1405871 () Bool)

(declare-fun d!1862937 () Bool)

(assert (= bs!1405871 (and d!1862937 b!5941971)))

(assert (=> bs!1405871 (= (dynLambda!25087 lambda!324102 lt!2311944) (derivationStepZipperUp!1163 lt!2311944 (h!70584 s!2326)))))

(assert (=> bs!1405871 m!6831480))

(assert (=> d!1862783 d!1862937))

(check-sat (not b!5942536) (not b!5942733) (not d!1862889) (not d!1862765) (not b!5942745) (not b!5942711) (not d!1862769) (not d!1862897) (not b!5942755) (not b!5942731) (not bs!1405870) (not d!1862841) (not d!1862931) (not b_lambda!223247) (not b!5942729) (not d!1862761) (not bm!472552) (not b!5942466) (not d!1862819) (not bm!472549) (not d!1862799) (not bm!472493) (not b!5942373) (not b!5942672) (not d!1862927) (not d!1862791) (not bs!1405869) (not b!5942200) (not d!1862847) (not b!5942675) (not b!5942737) (not d!1862789) (not b!5942397) (not b!5942537) (not b!5942486) (not d!1862855) (not b!5942746) (not b!5942205) (not b!5942470) (not b!5942206) (not bm!472533) (not b!5942118) (not b!5942393) (not d!1862787) (not b!5942534) (not b!5942394) (not d!1862843) (not b!5942724) (not d!1862783) (not d!1862757) (not b_lambda!223243) (not b!5942674) (not b!5942697) (not bm!472544) (not d!1862861) (not b!5942254) (not d!1862921) (not b!5942396) (not b!5942541) (not b!5942533) (not b!5942754) (not b!5942372) (not b!5942684) (not d!1862837) (not bm!472548) (not b!5942258) (not d!1862817) (not b!5942193) (not d!1862851) (not bm!472554) (not d!1862871) (not b!5942680) (not b!5942636) (not b!5942386) (not b!5942385) (not b!5942392) (not d!1862845) (not bs!1405871) (not b!5942706) (not bm!472545) (not setNonEmpty!40375) (not b!5942727) (not d!1862823) (not b!5942599) (not d!1862803) (not bm!472469) (not b_lambda!223245) (not d!1862857) (not d!1862909) (not d!1862895) (not b!5942538) (not b!5942367) (not b!5942259) (not b!5942728) (not b!5942207) (not b!5942395) (not b!5942117) (not bm!472555) (not b!5942257) (not b!5942209) (not b!5942208) (not bm!472485) (not d!1862919) (not b!5942256) (not bm!472482) (not b!5942643) (not b!5942701) (not b!5942472) (not b!5942540) (not b!5942210) (not b!5942747) (not b!5942723) (not b!5942404) (not b!5942490) (not b!5942122) (not b!5942467) (not b!5942473) (not b!5942743) (not bm!472517) (not b!5942682) (not bm!472515) (not b!5942735) (not d!1862795) (not b!5942182) tp_is_empty!41227 (not bm!472491) (not bm!472488) (not b!5942113) (not d!1862805) (not b!5942471) (not b!5942469) (not d!1862797) (not b!5942736) (not b!5942732) (not b!5942255) (not d!1862801) (not bm!472468) (not b!5942725) (not b!5942696) (not bm!472487) (not b!5942742))
(check-sat)
