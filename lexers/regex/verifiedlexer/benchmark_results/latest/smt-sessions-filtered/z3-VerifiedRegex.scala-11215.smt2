; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!586556 () Bool)

(assert start!586556)

(declare-fun b!5681978 () Bool)

(assert (=> b!5681978 true))

(assert (=> b!5681978 true))

(declare-fun lambda!306192 () Int)

(declare-fun lambda!306191 () Int)

(assert (=> b!5681978 (not (= lambda!306192 lambda!306191))))

(assert (=> b!5681978 true))

(assert (=> b!5681978 true))

(declare-fun b!5681968 () Bool)

(assert (=> b!5681968 true))

(declare-fun b!5681961 () Bool)

(declare-fun e!3496957 () Bool)

(declare-fun e!3496953 () Bool)

(assert (=> b!5681961 (= e!3496957 e!3496953)))

(declare-fun res!2400921 () Bool)

(assert (=> b!5681961 (=> (not res!2400921) (not e!3496953))))

(declare-datatypes ((C!31624 0))(
  ( (C!31625 (val!25514 Int)) )
))
(declare-datatypes ((Regex!15677 0))(
  ( (ElementMatch!15677 (c!999855 C!31624)) (Concat!24522 (regOne!31866 Regex!15677) (regTwo!31866 Regex!15677)) (EmptyExpr!15677) (Star!15677 (reg!16006 Regex!15677)) (EmptyLang!15677) (Union!15677 (regOne!31867 Regex!15677) (regTwo!31867 Regex!15677)) )
))
(declare-fun r!7292 () Regex!15677)

(declare-fun lt!2270530 () Regex!15677)

(assert (=> b!5681961 (= res!2400921 (= r!7292 lt!2270530))))

(declare-datatypes ((List!63330 0))(
  ( (Nil!63206) (Cons!63206 (h!69654 Regex!15677) (t!376644 List!63330)) )
))
(declare-datatypes ((Context!10122 0))(
  ( (Context!10123 (exprs!5561 List!63330)) )
))
(declare-datatypes ((List!63331 0))(
  ( (Nil!63207) (Cons!63207 (h!69655 Context!10122) (t!376645 List!63331)) )
))
(declare-fun zl!343 () List!63331)

(declare-fun unfocusZipper!1419 (List!63331) Regex!15677)

(assert (=> b!5681961 (= lt!2270530 (unfocusZipper!1419 zl!343))))

(declare-fun b!5681962 () Bool)

(declare-fun e!3496949 () Bool)

(declare-fun tp!1575542 () Bool)

(assert (=> b!5681962 (= e!3496949 tp!1575542)))

(declare-fun tp!1575545 () Bool)

(declare-fun e!3496956 () Bool)

(declare-fun setNonEmpty!38023 () Bool)

(declare-fun setElem!38023 () Context!10122)

(declare-fun setRes!38023 () Bool)

(declare-fun inv!82439 (Context!10122) Bool)

(assert (=> setNonEmpty!38023 (= setRes!38023 (and tp!1575545 (inv!82439 setElem!38023) e!3496956))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10122))

(declare-fun setRest!38023 () (InoxSet Context!10122))

(assert (=> setNonEmpty!38023 (= z!1189 ((_ map or) (store ((as const (Array Context!10122 Bool)) false) setElem!38023 true) setRest!38023))))

(declare-fun b!5681963 () Bool)

(declare-fun e!3496944 () Bool)

(declare-fun lt!2270540 () (InoxSet Context!10122))

(declare-datatypes ((List!63332 0))(
  ( (Nil!63208) (Cons!63208 (h!69656 C!31624) (t!376646 List!63332)) )
))
(declare-fun s!2326 () List!63332)

(declare-fun matchZipper!1815 ((InoxSet Context!10122) List!63332) Bool)

(assert (=> b!5681963 (= e!3496944 (matchZipper!1815 lt!2270540 (t!376646 s!2326)))))

(declare-fun b!5681964 () Bool)

(declare-fun res!2400928 () Bool)

(declare-fun e!3496945 () Bool)

(assert (=> b!5681964 (=> res!2400928 e!3496945)))

(get-info :version)

(assert (=> b!5681964 (= res!2400928 (not ((_ is Cons!63206) (exprs!5561 (h!69655 zl!343)))))))

(declare-fun b!5681965 () Bool)

(declare-fun res!2400927 () Bool)

(assert (=> b!5681965 (=> res!2400927 e!3496945)))

(declare-fun generalisedConcat!1292 (List!63330) Regex!15677)

(assert (=> b!5681965 (= res!2400927 (not (= r!7292 (generalisedConcat!1292 (exprs!5561 (h!69655 zl!343))))))))

(declare-fun b!5681966 () Bool)

(declare-fun res!2400915 () Bool)

(declare-fun e!3496950 () Bool)

(assert (=> b!5681966 (=> res!2400915 e!3496950)))

(declare-fun isEmpty!35057 (List!63330) Bool)

(assert (=> b!5681966 (= res!2400915 (isEmpty!35057 (t!376644 (exprs!5561 (h!69655 zl!343)))))))

(declare-fun b!5681967 () Bool)

(declare-fun e!3496955 () Bool)

(declare-fun e!3496952 () Bool)

(assert (=> b!5681967 (= e!3496955 e!3496952)))

(declare-fun res!2400930 () Bool)

(assert (=> b!5681967 (=> res!2400930 e!3496952)))

(declare-fun lt!2270535 () (InoxSet Context!10122))

(declare-fun lt!2270543 () (InoxSet Context!10122))

(assert (=> b!5681967 (= res!2400930 (not (= lt!2270535 lt!2270543)))))

(declare-fun lt!2270537 () Context!10122)

(declare-fun lambda!306193 () Int)

(declare-fun lt!2270536 () (InoxSet Context!10122))

(declare-fun flatMap!1290 ((InoxSet Context!10122) Int) (InoxSet Context!10122))

(declare-fun derivationStepZipperUp!945 (Context!10122 C!31624) (InoxSet Context!10122))

(assert (=> b!5681967 (= (flatMap!1290 lt!2270536 lambda!306193) (derivationStepZipperUp!945 lt!2270537 (h!69656 s!2326)))))

(declare-datatypes ((Unit!156240 0))(
  ( (Unit!156241) )
))
(declare-fun lt!2270542 () Unit!156240)

(declare-fun lemmaFlatMapOnSingletonSet!822 ((InoxSet Context!10122) Context!10122 Int) Unit!156240)

(assert (=> b!5681967 (= lt!2270542 (lemmaFlatMapOnSingletonSet!822 lt!2270536 lt!2270537 lambda!306193))))

(declare-fun lt!2270532 () (InoxSet Context!10122))

(assert (=> b!5681967 (= lt!2270532 (derivationStepZipperUp!945 lt!2270537 (h!69656 s!2326)))))

(declare-fun derivationStepZipper!1760 ((InoxSet Context!10122) C!31624) (InoxSet Context!10122))

(assert (=> b!5681967 (= lt!2270535 (derivationStepZipper!1760 lt!2270536 (h!69656 s!2326)))))

(assert (=> b!5681967 (= lt!2270536 (store ((as const (Array Context!10122 Bool)) false) lt!2270537 true))))

(declare-fun lt!2270538 () List!63330)

(assert (=> b!5681967 (= lt!2270537 (Context!10123 (Cons!63206 (reg!16006 (regOne!31866 r!7292)) lt!2270538)))))

(declare-fun e!3496951 () Bool)

(assert (=> b!5681968 (= e!3496950 e!3496951)))

(declare-fun res!2400926 () Bool)

(assert (=> b!5681968 (=> res!2400926 e!3496951)))

(assert (=> b!5681968 (= res!2400926 (or (and ((_ is ElementMatch!15677) (regOne!31866 r!7292)) (= (c!999855 (regOne!31866 r!7292)) (h!69656 s!2326))) ((_ is Union!15677) (regOne!31866 r!7292))))))

(declare-fun lt!2270541 () Unit!156240)

(declare-fun e!3496958 () Unit!156240)

(assert (=> b!5681968 (= lt!2270541 e!3496958)))

(declare-fun c!999854 () Bool)

(declare-fun nullable!5709 (Regex!15677) Bool)

(assert (=> b!5681968 (= c!999854 (nullable!5709 (h!69654 (exprs!5561 (h!69655 zl!343)))))))

(assert (=> b!5681968 (= (flatMap!1290 z!1189 lambda!306193) (derivationStepZipperUp!945 (h!69655 zl!343) (h!69656 s!2326)))))

(declare-fun lt!2270531 () Unit!156240)

(assert (=> b!5681968 (= lt!2270531 (lemmaFlatMapOnSingletonSet!822 z!1189 (h!69655 zl!343) lambda!306193))))

(declare-fun lt!2270529 () Context!10122)

(assert (=> b!5681968 (= lt!2270540 (derivationStepZipperUp!945 lt!2270529 (h!69656 s!2326)))))

(declare-fun lt!2270533 () (InoxSet Context!10122))

(declare-fun derivationStepZipperDown!1019 (Regex!15677 Context!10122 C!31624) (InoxSet Context!10122))

(assert (=> b!5681968 (= lt!2270533 (derivationStepZipperDown!1019 (h!69654 (exprs!5561 (h!69655 zl!343))) lt!2270529 (h!69656 s!2326)))))

(assert (=> b!5681968 (= lt!2270529 (Context!10123 (t!376644 (exprs!5561 (h!69655 zl!343)))))))

(declare-fun lt!2270546 () (InoxSet Context!10122))

(assert (=> b!5681968 (= lt!2270546 (derivationStepZipperUp!945 (Context!10123 (Cons!63206 (h!69654 (exprs!5561 (h!69655 zl!343))) (t!376644 (exprs!5561 (h!69655 zl!343))))) (h!69656 s!2326)))))

(declare-fun b!5681970 () Bool)

(declare-fun res!2400916 () Bool)

(assert (=> b!5681970 (=> res!2400916 e!3496945)))

(declare-fun generalisedUnion!1540 (List!63330) Regex!15677)

(declare-fun unfocusZipperList!1105 (List!63331) List!63330)

(assert (=> b!5681970 (= res!2400916 (not (= r!7292 (generalisedUnion!1540 (unfocusZipperList!1105 zl!343)))))))

(declare-fun b!5681971 () Bool)

(assert (=> b!5681971 (= e!3496951 e!3496955)))

(declare-fun res!2400924 () Bool)

(assert (=> b!5681971 (=> res!2400924 e!3496955)))

(assert (=> b!5681971 (= res!2400924 (not (= lt!2270533 lt!2270543)))))

(assert (=> b!5681971 (= lt!2270543 (derivationStepZipperDown!1019 (reg!16006 (regOne!31866 r!7292)) (Context!10123 lt!2270538) (h!69656 s!2326)))))

(assert (=> b!5681971 (= lt!2270538 (Cons!63206 (Star!15677 (reg!16006 (regOne!31866 r!7292))) (t!376644 (exprs!5561 (h!69655 zl!343)))))))

(declare-fun b!5681972 () Bool)

(declare-fun res!2400931 () Bool)

(assert (=> b!5681972 (=> res!2400931 e!3496945)))

(assert (=> b!5681972 (= res!2400931 (or ((_ is EmptyExpr!15677) r!7292) ((_ is EmptyLang!15677) r!7292) ((_ is ElementMatch!15677) r!7292) ((_ is Union!15677) r!7292) (not ((_ is Concat!24522) r!7292))))))

(declare-fun b!5681973 () Bool)

(declare-fun res!2400920 () Bool)

(assert (=> b!5681973 (=> (not res!2400920) (not e!3496957))))

(declare-fun toList!9461 ((InoxSet Context!10122)) List!63331)

(assert (=> b!5681973 (= res!2400920 (= (toList!9461 z!1189) zl!343))))

(declare-fun b!5681974 () Bool)

(declare-fun e!3496946 () Bool)

(assert (=> b!5681974 (= e!3496946 (nullable!5709 (regOne!31866 (regOne!31866 r!7292))))))

(declare-fun b!5681975 () Bool)

(declare-fun e!3496954 () Bool)

(declare-fun tp!1575547 () Bool)

(assert (=> b!5681975 (= e!3496954 (and (inv!82439 (h!69655 zl!343)) e!3496949 tp!1575547))))

(declare-fun b!5681976 () Bool)

(declare-fun Unit!156242 () Unit!156240)

(assert (=> b!5681976 (= e!3496958 Unit!156242)))

(declare-fun lt!2270547 () Unit!156240)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!702 ((InoxSet Context!10122) (InoxSet Context!10122) List!63332) Unit!156240)

(assert (=> b!5681976 (= lt!2270547 (lemmaZipperConcatMatchesSameAsBothZippers!702 lt!2270533 lt!2270540 (t!376646 s!2326)))))

(declare-fun res!2400933 () Bool)

(assert (=> b!5681976 (= res!2400933 (matchZipper!1815 lt!2270533 (t!376646 s!2326)))))

(assert (=> b!5681976 (=> res!2400933 e!3496944)))

(assert (=> b!5681976 (= (matchZipper!1815 ((_ map or) lt!2270533 lt!2270540) (t!376646 s!2326)) e!3496944)))

(declare-fun b!5681977 () Bool)

(assert (=> b!5681977 (= e!3496952 (= lt!2270530 r!7292))))

(assert (=> b!5681978 (= e!3496945 e!3496950)))

(declare-fun res!2400932 () Bool)

(assert (=> b!5681978 (=> res!2400932 e!3496950)))

(declare-fun lt!2270534 () Bool)

(declare-fun lt!2270548 () Bool)

(assert (=> b!5681978 (= res!2400932 (or (not (= lt!2270534 lt!2270548)) ((_ is Nil!63208) s!2326)))))

(declare-fun Exists!2777 (Int) Bool)

(assert (=> b!5681978 (= (Exists!2777 lambda!306191) (Exists!2777 lambda!306192))))

(declare-fun lt!2270539 () Unit!156240)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1406 (Regex!15677 Regex!15677 List!63332) Unit!156240)

(assert (=> b!5681978 (= lt!2270539 (lemmaExistCutMatchRandMatchRSpecEquivalent!1406 (regOne!31866 r!7292) (regTwo!31866 r!7292) s!2326))))

(assert (=> b!5681978 (= lt!2270548 (Exists!2777 lambda!306191))))

(declare-datatypes ((tuple2!65548 0))(
  ( (tuple2!65549 (_1!36077 List!63332) (_2!36077 List!63332)) )
))
(declare-datatypes ((Option!15686 0))(
  ( (None!15685) (Some!15685 (v!51734 tuple2!65548)) )
))
(declare-fun isDefined!12389 (Option!15686) Bool)

(declare-fun findConcatSeparation!2100 (Regex!15677 Regex!15677 List!63332 List!63332 List!63332) Option!15686)

(assert (=> b!5681978 (= lt!2270548 (isDefined!12389 (findConcatSeparation!2100 (regOne!31866 r!7292) (regTwo!31866 r!7292) Nil!63208 s!2326 s!2326)))))

(declare-fun lt!2270545 () Unit!156240)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1864 (Regex!15677 Regex!15677 List!63332) Unit!156240)

(assert (=> b!5681978 (= lt!2270545 (lemmaFindConcatSeparationEquivalentToExists!1864 (regOne!31866 r!7292) (regTwo!31866 r!7292) s!2326))))

(declare-fun b!5681979 () Bool)

(declare-fun res!2400923 () Bool)

(assert (=> b!5681979 (=> res!2400923 e!3496945)))

(declare-fun isEmpty!35058 (List!63331) Bool)

(assert (=> b!5681979 (= res!2400923 (not (isEmpty!35058 (t!376645 zl!343))))))

(declare-fun b!5681980 () Bool)

(declare-fun e!3496947 () Bool)

(declare-fun tp!1575543 () Bool)

(declare-fun tp!1575548 () Bool)

(assert (=> b!5681980 (= e!3496947 (and tp!1575543 tp!1575548))))

(declare-fun b!5681981 () Bool)

(declare-fun Unit!156243 () Unit!156240)

(assert (=> b!5681981 (= e!3496958 Unit!156243)))

(declare-fun b!5681982 () Bool)

(declare-fun res!2400922 () Bool)

(assert (=> b!5681982 (=> res!2400922 e!3496951)))

(assert (=> b!5681982 (= res!2400922 (or ((_ is Concat!24522) (regOne!31866 r!7292)) (not ((_ is Star!15677) (regOne!31866 r!7292)))))))

(declare-fun b!5681983 () Bool)

(declare-fun tp!1575546 () Bool)

(assert (=> b!5681983 (= e!3496956 tp!1575546)))

(declare-fun b!5681984 () Bool)

(declare-fun tp!1575544 () Bool)

(declare-fun tp!1575550 () Bool)

(assert (=> b!5681984 (= e!3496947 (and tp!1575544 tp!1575550))))

(declare-fun b!5681985 () Bool)

(declare-fun e!3496948 () Bool)

(declare-fun tp_is_empty!40607 () Bool)

(declare-fun tp!1575549 () Bool)

(assert (=> b!5681985 (= e!3496948 (and tp_is_empty!40607 tp!1575549))))

(declare-fun b!5681986 () Bool)

(declare-fun res!2400919 () Bool)

(assert (=> b!5681986 (=> res!2400919 e!3496951)))

(assert (=> b!5681986 (= res!2400919 e!3496946)))

(declare-fun res!2400929 () Bool)

(assert (=> b!5681986 (=> (not res!2400929) (not e!3496946))))

(assert (=> b!5681986 (= res!2400929 ((_ is Concat!24522) (regOne!31866 r!7292)))))

(declare-fun b!5681987 () Bool)

(declare-fun tp!1575541 () Bool)

(assert (=> b!5681987 (= e!3496947 tp!1575541)))

(declare-fun b!5681988 () Bool)

(assert (=> b!5681988 (= e!3496947 tp_is_empty!40607)))

(declare-fun b!5681989 () Bool)

(declare-fun res!2400918 () Bool)

(assert (=> b!5681989 (=> res!2400918 e!3496952)))

(assert (=> b!5681989 (= res!2400918 (not (= (matchZipper!1815 lt!2270536 s!2326) (matchZipper!1815 lt!2270535 (t!376646 s!2326)))))))

(declare-fun setIsEmpty!38023 () Bool)

(assert (=> setIsEmpty!38023 setRes!38023))

(declare-fun res!2400917 () Bool)

(assert (=> start!586556 (=> (not res!2400917) (not e!3496957))))

(declare-fun validRegex!7413 (Regex!15677) Bool)

(assert (=> start!586556 (= res!2400917 (validRegex!7413 r!7292))))

(assert (=> start!586556 e!3496957))

(assert (=> start!586556 e!3496947))

(declare-fun condSetEmpty!38023 () Bool)

(assert (=> start!586556 (= condSetEmpty!38023 (= z!1189 ((as const (Array Context!10122 Bool)) false)))))

(assert (=> start!586556 setRes!38023))

(assert (=> start!586556 e!3496954))

(assert (=> start!586556 e!3496948))

(declare-fun b!5681969 () Bool)

(assert (=> b!5681969 (= e!3496953 (not e!3496945))))

(declare-fun res!2400925 () Bool)

(assert (=> b!5681969 (=> res!2400925 e!3496945)))

(assert (=> b!5681969 (= res!2400925 (not ((_ is Cons!63207) zl!343)))))

(declare-fun matchRSpec!2780 (Regex!15677 List!63332) Bool)

(assert (=> b!5681969 (= lt!2270534 (matchRSpec!2780 r!7292 s!2326))))

(declare-fun matchR!7862 (Regex!15677 List!63332) Bool)

(assert (=> b!5681969 (= lt!2270534 (matchR!7862 r!7292 s!2326))))

(declare-fun lt!2270544 () Unit!156240)

(declare-fun mainMatchTheorem!2780 (Regex!15677 List!63332) Unit!156240)

(assert (=> b!5681969 (= lt!2270544 (mainMatchTheorem!2780 r!7292 s!2326))))

(assert (= (and start!586556 res!2400917) b!5681973))

(assert (= (and b!5681973 res!2400920) b!5681961))

(assert (= (and b!5681961 res!2400921) b!5681969))

(assert (= (and b!5681969 (not res!2400925)) b!5681979))

(assert (= (and b!5681979 (not res!2400923)) b!5681965))

(assert (= (and b!5681965 (not res!2400927)) b!5681964))

(assert (= (and b!5681964 (not res!2400928)) b!5681970))

(assert (= (and b!5681970 (not res!2400916)) b!5681972))

(assert (= (and b!5681972 (not res!2400931)) b!5681978))

(assert (= (and b!5681978 (not res!2400932)) b!5681966))

(assert (= (and b!5681966 (not res!2400915)) b!5681968))

(assert (= (and b!5681968 c!999854) b!5681976))

(assert (= (and b!5681968 (not c!999854)) b!5681981))

(assert (= (and b!5681976 (not res!2400933)) b!5681963))

(assert (= (and b!5681968 (not res!2400926)) b!5681986))

(assert (= (and b!5681986 res!2400929) b!5681974))

(assert (= (and b!5681986 (not res!2400919)) b!5681982))

(assert (= (and b!5681982 (not res!2400922)) b!5681971))

(assert (= (and b!5681971 (not res!2400924)) b!5681967))

(assert (= (and b!5681967 (not res!2400930)) b!5681989))

(assert (= (and b!5681989 (not res!2400918)) b!5681977))

(assert (= (and start!586556 ((_ is ElementMatch!15677) r!7292)) b!5681988))

(assert (= (and start!586556 ((_ is Concat!24522) r!7292)) b!5681984))

(assert (= (and start!586556 ((_ is Star!15677) r!7292)) b!5681987))

(assert (= (and start!586556 ((_ is Union!15677) r!7292)) b!5681980))

(assert (= (and start!586556 condSetEmpty!38023) setIsEmpty!38023))

(assert (= (and start!586556 (not condSetEmpty!38023)) setNonEmpty!38023))

(assert (= setNonEmpty!38023 b!5681983))

(assert (= b!5681975 b!5681962))

(assert (= (and start!586556 ((_ is Cons!63207) zl!343)) b!5681975))

(assert (= (and start!586556 ((_ is Cons!63208) s!2326)) b!5681985))

(declare-fun m!6641116 () Bool)

(assert (=> b!5681963 m!6641116))

(declare-fun m!6641118 () Bool)

(assert (=> b!5681973 m!6641118))

(declare-fun m!6641120 () Bool)

(assert (=> b!5681971 m!6641120))

(declare-fun m!6641122 () Bool)

(assert (=> b!5681974 m!6641122))

(declare-fun m!6641124 () Bool)

(assert (=> b!5681961 m!6641124))

(declare-fun m!6641126 () Bool)

(assert (=> b!5681976 m!6641126))

(declare-fun m!6641128 () Bool)

(assert (=> b!5681976 m!6641128))

(declare-fun m!6641130 () Bool)

(assert (=> b!5681976 m!6641130))

(declare-fun m!6641132 () Bool)

(assert (=> b!5681966 m!6641132))

(declare-fun m!6641134 () Bool)

(assert (=> b!5681975 m!6641134))

(declare-fun m!6641136 () Bool)

(assert (=> b!5681967 m!6641136))

(declare-fun m!6641138 () Bool)

(assert (=> b!5681967 m!6641138))

(declare-fun m!6641140 () Bool)

(assert (=> b!5681967 m!6641140))

(declare-fun m!6641142 () Bool)

(assert (=> b!5681967 m!6641142))

(declare-fun m!6641144 () Bool)

(assert (=> b!5681967 m!6641144))

(declare-fun m!6641146 () Bool)

(assert (=> setNonEmpty!38023 m!6641146))

(declare-fun m!6641148 () Bool)

(assert (=> b!5681979 m!6641148))

(declare-fun m!6641150 () Bool)

(assert (=> b!5681969 m!6641150))

(declare-fun m!6641152 () Bool)

(assert (=> b!5681969 m!6641152))

(declare-fun m!6641154 () Bool)

(assert (=> b!5681969 m!6641154))

(declare-fun m!6641156 () Bool)

(assert (=> b!5681965 m!6641156))

(declare-fun m!6641158 () Bool)

(assert (=> b!5681978 m!6641158))

(declare-fun m!6641160 () Bool)

(assert (=> b!5681978 m!6641160))

(declare-fun m!6641162 () Bool)

(assert (=> b!5681978 m!6641162))

(declare-fun m!6641164 () Bool)

(assert (=> b!5681978 m!6641164))

(assert (=> b!5681978 m!6641158))

(declare-fun m!6641166 () Bool)

(assert (=> b!5681978 m!6641166))

(declare-fun m!6641168 () Bool)

(assert (=> b!5681978 m!6641168))

(assert (=> b!5681978 m!6641162))

(declare-fun m!6641170 () Bool)

(assert (=> b!5681970 m!6641170))

(assert (=> b!5681970 m!6641170))

(declare-fun m!6641172 () Bool)

(assert (=> b!5681970 m!6641172))

(declare-fun m!6641174 () Bool)

(assert (=> b!5681989 m!6641174))

(declare-fun m!6641176 () Bool)

(assert (=> b!5681989 m!6641176))

(declare-fun m!6641178 () Bool)

(assert (=> b!5681968 m!6641178))

(declare-fun m!6641180 () Bool)

(assert (=> b!5681968 m!6641180))

(declare-fun m!6641182 () Bool)

(assert (=> b!5681968 m!6641182))

(declare-fun m!6641184 () Bool)

(assert (=> b!5681968 m!6641184))

(declare-fun m!6641186 () Bool)

(assert (=> b!5681968 m!6641186))

(declare-fun m!6641188 () Bool)

(assert (=> b!5681968 m!6641188))

(declare-fun m!6641190 () Bool)

(assert (=> b!5681968 m!6641190))

(declare-fun m!6641192 () Bool)

(assert (=> start!586556 m!6641192))

(check-sat (not b!5681965) (not b!5681978) (not b!5681974) (not setNonEmpty!38023) (not b!5681962) (not b!5681969) (not b!5681976) (not b!5681966) (not b!5681975) (not b!5681985) (not b!5681971) (not b!5681973) (not b!5681983) (not b!5681984) (not b!5681961) (not b!5681970) (not b!5681963) (not start!586556) (not b!5681987) (not b!5681968) tp_is_empty!40607 (not b!5681967) (not b!5681980) (not b!5681989) (not b!5681979))
(check-sat)
