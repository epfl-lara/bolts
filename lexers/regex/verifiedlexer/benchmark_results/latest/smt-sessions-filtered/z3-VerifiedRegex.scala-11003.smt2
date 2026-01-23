; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570290 () Bool)

(assert start!570290)

(declare-fun b!5437981 () Bool)

(assert (=> b!5437981 true))

(assert (=> b!5437981 true))

(declare-fun lambda!286042 () Int)

(declare-fun lambda!286041 () Int)

(assert (=> b!5437981 (not (= lambda!286042 lambda!286041))))

(assert (=> b!5437981 true))

(assert (=> b!5437981 true))

(declare-fun b!5437972 () Bool)

(assert (=> b!5437972 true))

(declare-fun b!5437963 () Bool)

(declare-fun e!3368896 () Bool)

(declare-fun e!3368897 () Bool)

(assert (=> b!5437963 (= e!3368896 (not e!3368897))))

(declare-fun res!2315223 () Bool)

(assert (=> b!5437963 (=> res!2315223 e!3368897)))

(declare-datatypes ((C!30776 0))(
  ( (C!30777 (val!25090 Int)) )
))
(declare-datatypes ((Regex!15253 0))(
  ( (ElementMatch!15253 (c!948805 C!30776)) (Concat!24098 (regOne!31018 Regex!15253) (regTwo!31018 Regex!15253)) (EmptyExpr!15253) (Star!15253 (reg!15582 Regex!15253)) (EmptyLang!15253) (Union!15253 (regOne!31019 Regex!15253) (regTwo!31019 Regex!15253)) )
))
(declare-datatypes ((List!62058 0))(
  ( (Nil!61934) (Cons!61934 (h!68382 Regex!15253) (t!375283 List!62058)) )
))
(declare-datatypes ((Context!9274 0))(
  ( (Context!9275 (exprs!5137 List!62058)) )
))
(declare-datatypes ((List!62059 0))(
  ( (Nil!61935) (Cons!61935 (h!68383 Context!9274) (t!375284 List!62059)) )
))
(declare-fun zl!343 () List!62059)

(get-info :version)

(assert (=> b!5437963 (= res!2315223 (not ((_ is Cons!61935) zl!343)))))

(declare-fun lt!2218282 () Bool)

(declare-fun r!7292 () Regex!15253)

(declare-datatypes ((List!62060 0))(
  ( (Nil!61936) (Cons!61936 (h!68384 C!30776) (t!375285 List!62060)) )
))
(declare-fun s!2326 () List!62060)

(declare-fun matchRSpec!2356 (Regex!15253 List!62060) Bool)

(assert (=> b!5437963 (= lt!2218282 (matchRSpec!2356 r!7292 s!2326))))

(declare-fun matchR!7438 (Regex!15253 List!62060) Bool)

(assert (=> b!5437963 (= lt!2218282 (matchR!7438 r!7292 s!2326))))

(declare-datatypes ((Unit!154554 0))(
  ( (Unit!154555) )
))
(declare-fun lt!2218285 () Unit!154554)

(declare-fun mainMatchTheorem!2356 (Regex!15253 List!62060) Unit!154554)

(assert (=> b!5437963 (= lt!2218285 (mainMatchTheorem!2356 r!7292 s!2326))))

(declare-fun b!5437964 () Bool)

(declare-fun res!2315219 () Bool)

(assert (=> b!5437964 (=> (not res!2315219) (not e!3368896))))

(declare-fun unfocusZipper!995 (List!62059) Regex!15253)

(assert (=> b!5437964 (= res!2315219 (= r!7292 (unfocusZipper!995 zl!343)))))

(declare-fun res!2315214 () Bool)

(assert (=> start!570290 (=> (not res!2315214) (not e!3368896))))

(declare-fun validRegex!6989 (Regex!15253) Bool)

(assert (=> start!570290 (= res!2315214 (validRegex!6989 r!7292))))

(assert (=> start!570290 e!3368896))

(declare-fun e!3368892 () Bool)

(assert (=> start!570290 e!3368892))

(declare-fun condSetEmpty!35535 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9274))

(assert (=> start!570290 (= condSetEmpty!35535 (= z!1189 ((as const (Array Context!9274 Bool)) false)))))

(declare-fun setRes!35535 () Bool)

(assert (=> start!570290 setRes!35535))

(declare-fun e!3368902 () Bool)

(assert (=> start!570290 e!3368902))

(declare-fun e!3368900 () Bool)

(assert (=> start!570290 e!3368900))

(declare-fun b!5437965 () Bool)

(declare-fun res!2315229 () Bool)

(assert (=> b!5437965 (=> res!2315229 e!3368897)))

(assert (=> b!5437965 (= res!2315229 (or ((_ is EmptyExpr!15253) r!7292) ((_ is EmptyLang!15253) r!7292) ((_ is ElementMatch!15253) r!7292) ((_ is Union!15253) r!7292) (not ((_ is Concat!24098) r!7292))))))

(declare-fun b!5437966 () Bool)

(declare-fun e!3368894 () Bool)

(declare-fun lt!2218289 () (InoxSet Context!9274))

(declare-fun matchZipper!1497 ((InoxSet Context!9274) List!62060) Bool)

(assert (=> b!5437966 (= e!3368894 (matchZipper!1497 lt!2218289 (t!375285 s!2326)))))

(declare-fun b!5437967 () Bool)

(declare-fun res!2315224 () Bool)

(assert (=> b!5437967 (=> res!2315224 e!3368897)))

(assert (=> b!5437967 (= res!2315224 (not ((_ is Cons!61934) (exprs!5137 (h!68383 zl!343)))))))

(declare-fun b!5437968 () Bool)

(declare-fun tp!1499493 () Bool)

(assert (=> b!5437968 (= e!3368892 tp!1499493)))

(declare-fun b!5437969 () Bool)

(declare-fun res!2315216 () Bool)

(declare-fun e!3368899 () Bool)

(assert (=> b!5437969 (=> res!2315216 e!3368899)))

(declare-fun e!3368893 () Bool)

(assert (=> b!5437969 (= res!2315216 e!3368893)))

(declare-fun res!2315220 () Bool)

(assert (=> b!5437969 (=> (not res!2315220) (not e!3368893))))

(assert (=> b!5437969 (= res!2315220 ((_ is Concat!24098) (regOne!31018 r!7292)))))

(declare-fun setIsEmpty!35535 () Bool)

(assert (=> setIsEmpty!35535 setRes!35535))

(declare-fun b!5437970 () Bool)

(declare-fun e!3368901 () Bool)

(declare-fun tp!1499492 () Bool)

(assert (=> b!5437970 (= e!3368901 tp!1499492)))

(declare-fun b!5437971 () Bool)

(declare-fun tp_is_empty!39759 () Bool)

(declare-fun tp!1499487 () Bool)

(assert (=> b!5437971 (= e!3368900 (and tp_is_empty!39759 tp!1499487))))

(declare-fun e!3368898 () Bool)

(assert (=> b!5437972 (= e!3368898 e!3368899)))

(declare-fun res!2315228 () Bool)

(assert (=> b!5437972 (=> res!2315228 e!3368899)))

(assert (=> b!5437972 (= res!2315228 (or (and ((_ is ElementMatch!15253) (regOne!31018 r!7292)) (= (c!948805 (regOne!31018 r!7292)) (h!68384 s!2326))) ((_ is Union!15253) (regOne!31018 r!7292))))))

(declare-fun lt!2218288 () Unit!154554)

(declare-fun e!3368895 () Unit!154554)

(assert (=> b!5437972 (= lt!2218288 e!3368895)))

(declare-fun c!948804 () Bool)

(declare-fun nullable!5422 (Regex!15253) Bool)

(assert (=> b!5437972 (= c!948804 (nullable!5422 (h!68382 (exprs!5137 (h!68383 zl!343)))))))

(declare-fun lambda!286043 () Int)

(declare-fun flatMap!980 ((InoxSet Context!9274) Int) (InoxSet Context!9274))

(declare-fun derivationStepZipperUp!625 (Context!9274 C!30776) (InoxSet Context!9274))

(assert (=> b!5437972 (= (flatMap!980 z!1189 lambda!286043) (derivationStepZipperUp!625 (h!68383 zl!343) (h!68384 s!2326)))))

(declare-fun lt!2218280 () Unit!154554)

(declare-fun lemmaFlatMapOnSingletonSet!512 ((InoxSet Context!9274) Context!9274 Int) Unit!154554)

(assert (=> b!5437972 (= lt!2218280 (lemmaFlatMapOnSingletonSet!512 z!1189 (h!68383 zl!343) lambda!286043))))

(declare-fun lt!2218286 () Context!9274)

(assert (=> b!5437972 (= lt!2218289 (derivationStepZipperUp!625 lt!2218286 (h!68384 s!2326)))))

(declare-fun lt!2218278 () (InoxSet Context!9274))

(declare-fun derivationStepZipperDown!701 (Regex!15253 Context!9274 C!30776) (InoxSet Context!9274))

(assert (=> b!5437972 (= lt!2218278 (derivationStepZipperDown!701 (h!68382 (exprs!5137 (h!68383 zl!343))) lt!2218286 (h!68384 s!2326)))))

(assert (=> b!5437972 (= lt!2218286 (Context!9275 (t!375283 (exprs!5137 (h!68383 zl!343)))))))

(declare-fun lt!2218281 () (InoxSet Context!9274))

(assert (=> b!5437972 (= lt!2218281 (derivationStepZipperUp!625 (Context!9275 (Cons!61934 (h!68382 (exprs!5137 (h!68383 zl!343))) (t!375283 (exprs!5137 (h!68383 zl!343))))) (h!68384 s!2326)))))

(declare-fun b!5437973 () Bool)

(declare-fun Unit!154556 () Unit!154554)

(assert (=> b!5437973 (= e!3368895 Unit!154556)))

(declare-fun b!5437974 () Bool)

(declare-fun e!3368891 () Bool)

(declare-fun tp!1499484 () Bool)

(assert (=> b!5437974 (= e!3368891 tp!1499484)))

(declare-fun b!5437975 () Bool)

(declare-fun res!2315218 () Bool)

(assert (=> b!5437975 (=> res!2315218 e!3368897)))

(declare-fun isEmpty!33918 (List!62059) Bool)

(assert (=> b!5437975 (= res!2315218 (not (isEmpty!33918 (t!375284 zl!343))))))

(declare-fun b!5437976 () Bool)

(declare-fun e!3368890 () Bool)

(assert (=> b!5437976 (= e!3368890 true)))

(assert (=> b!5437976 (= (matchR!7438 (regTwo!31018 r!7292) s!2326) (matchRSpec!2356 (regTwo!31018 r!7292) s!2326))))

(declare-fun lt!2218284 () Unit!154554)

(assert (=> b!5437976 (= lt!2218284 (mainMatchTheorem!2356 (regTwo!31018 r!7292) s!2326))))

(assert (=> b!5437976 (= (matchR!7438 (regOne!31018 r!7292) s!2326) (matchRSpec!2356 (regOne!31018 r!7292) s!2326))))

(declare-fun lt!2218287 () Unit!154554)

(assert (=> b!5437976 (= lt!2218287 (mainMatchTheorem!2356 (regOne!31018 r!7292) s!2326))))

(declare-fun b!5437977 () Bool)

(assert (=> b!5437977 (= e!3368893 (nullable!5422 (regOne!31018 (regOne!31018 r!7292))))))

(declare-fun b!5437978 () Bool)

(declare-fun tp!1499489 () Bool)

(declare-fun tp!1499485 () Bool)

(assert (=> b!5437978 (= e!3368892 (and tp!1499489 tp!1499485))))

(declare-fun b!5437979 () Bool)

(declare-fun tp!1499491 () Bool)

(declare-fun inv!81379 (Context!9274) Bool)

(assert (=> b!5437979 (= e!3368902 (and (inv!81379 (h!68383 zl!343)) e!3368901 tp!1499491))))

(declare-fun b!5437980 () Bool)

(declare-fun res!2315217 () Bool)

(assert (=> b!5437980 (=> res!2315217 e!3368897)))

(declare-fun generalisedUnion!1182 (List!62058) Regex!15253)

(declare-fun unfocusZipperList!695 (List!62059) List!62058)

(assert (=> b!5437980 (= res!2315217 (not (= r!7292 (generalisedUnion!1182 (unfocusZipperList!695 zl!343)))))))

(declare-fun setElem!35535 () Context!9274)

(declare-fun setNonEmpty!35535 () Bool)

(declare-fun tp!1499488 () Bool)

(assert (=> setNonEmpty!35535 (= setRes!35535 (and tp!1499488 (inv!81379 setElem!35535) e!3368891))))

(declare-fun setRest!35535 () (InoxSet Context!9274))

(assert (=> setNonEmpty!35535 (= z!1189 ((_ map or) (store ((as const (Array Context!9274 Bool)) false) setElem!35535 true) setRest!35535))))

(assert (=> b!5437981 (= e!3368897 e!3368898)))

(declare-fun res!2315213 () Bool)

(assert (=> b!5437981 (=> res!2315213 e!3368898)))

(declare-fun lt!2218292 () Bool)

(assert (=> b!5437981 (= res!2315213 (or (not (= lt!2218282 lt!2218292)) ((_ is Nil!61936) s!2326)))))

(declare-fun Exists!2434 (Int) Bool)

(assert (=> b!5437981 (= (Exists!2434 lambda!286041) (Exists!2434 lambda!286042))))

(declare-fun lt!2218290 () Unit!154554)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1088 (Regex!15253 Regex!15253 List!62060) Unit!154554)

(assert (=> b!5437981 (= lt!2218290 (lemmaExistCutMatchRandMatchRSpecEquivalent!1088 (regOne!31018 r!7292) (regTwo!31018 r!7292) s!2326))))

(assert (=> b!5437981 (= lt!2218292 (Exists!2434 lambda!286041))))

(declare-datatypes ((tuple2!64904 0))(
  ( (tuple2!64905 (_1!35755 List!62060) (_2!35755 List!62060)) )
))
(declare-datatypes ((Option!15364 0))(
  ( (None!15363) (Some!15363 (v!51392 tuple2!64904)) )
))
(declare-fun isDefined!12067 (Option!15364) Bool)

(declare-fun findConcatSeparation!1778 (Regex!15253 Regex!15253 List!62060 List!62060 List!62060) Option!15364)

(assert (=> b!5437981 (= lt!2218292 (isDefined!12067 (findConcatSeparation!1778 (regOne!31018 r!7292) (regTwo!31018 r!7292) Nil!61936 s!2326 s!2326)))))

(declare-fun lt!2218283 () Unit!154554)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1542 (Regex!15253 Regex!15253 List!62060) Unit!154554)

(assert (=> b!5437981 (= lt!2218283 (lemmaFindConcatSeparationEquivalentToExists!1542 (regOne!31018 r!7292) (regTwo!31018 r!7292) s!2326))))

(declare-fun b!5437982 () Bool)

(declare-fun Unit!154557 () Unit!154554)

(assert (=> b!5437982 (= e!3368895 Unit!154557)))

(declare-fun lt!2218279 () Unit!154554)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!490 ((InoxSet Context!9274) (InoxSet Context!9274) List!62060) Unit!154554)

(assert (=> b!5437982 (= lt!2218279 (lemmaZipperConcatMatchesSameAsBothZippers!490 lt!2218278 lt!2218289 (t!375285 s!2326)))))

(declare-fun res!2315215 () Bool)

(assert (=> b!5437982 (= res!2315215 (matchZipper!1497 lt!2218278 (t!375285 s!2326)))))

(assert (=> b!5437982 (=> res!2315215 e!3368894)))

(assert (=> b!5437982 (= (matchZipper!1497 ((_ map or) lt!2218278 lt!2218289) (t!375285 s!2326)) e!3368894)))

(declare-fun b!5437983 () Bool)

(declare-fun res!2315225 () Bool)

(assert (=> b!5437983 (=> res!2315225 e!3368899)))

(assert (=> b!5437983 (= res!2315225 (or ((_ is Concat!24098) (regOne!31018 r!7292)) ((_ is Star!15253) (regOne!31018 r!7292)) (not ((_ is EmptyExpr!15253) (regOne!31018 r!7292)))))))

(declare-fun b!5437984 () Bool)

(declare-fun tp!1499490 () Bool)

(declare-fun tp!1499486 () Bool)

(assert (=> b!5437984 (= e!3368892 (and tp!1499490 tp!1499486))))

(declare-fun b!5437985 () Bool)

(declare-fun res!2315226 () Bool)

(assert (=> b!5437985 (=> (not res!2315226) (not e!3368896))))

(declare-fun toList!9037 ((InoxSet Context!9274)) List!62059)

(assert (=> b!5437985 (= res!2315226 (= (toList!9037 z!1189) zl!343))))

(declare-fun b!5437986 () Bool)

(assert (=> b!5437986 (= e!3368892 tp_is_empty!39759)))

(declare-fun b!5437987 () Bool)

(declare-fun res!2315222 () Bool)

(assert (=> b!5437987 (=> res!2315222 e!3368897)))

(declare-fun generalisedConcat!922 (List!62058) Regex!15253)

(assert (=> b!5437987 (= res!2315222 (not (= r!7292 (generalisedConcat!922 (exprs!5137 (h!68383 zl!343))))))))

(declare-fun b!5437988 () Bool)

(assert (=> b!5437988 (= e!3368899 e!3368890)))

(declare-fun res!2315227 () Bool)

(assert (=> b!5437988 (=> res!2315227 e!3368890)))

(assert (=> b!5437988 (= res!2315227 (or (not (= lt!2218278 ((as const (Array Context!9274 Bool)) false))) (not (= r!7292 (Concat!24098 (regOne!31018 r!7292) (regTwo!31018 r!7292)))) (not (= (regOne!31018 r!7292) EmptyExpr!15253))))))

(assert (=> b!5437988 (not (matchZipper!1497 lt!2218278 (t!375285 s!2326)))))

(declare-fun lt!2218291 () Unit!154554)

(declare-fun lemmaEmptyZipperMatchesNothing!8 ((InoxSet Context!9274) List!62060) Unit!154554)

(assert (=> b!5437988 (= lt!2218291 (lemmaEmptyZipperMatchesNothing!8 lt!2218278 (t!375285 s!2326)))))

(declare-fun b!5437989 () Bool)

(declare-fun res!2315221 () Bool)

(assert (=> b!5437989 (=> res!2315221 e!3368898)))

(declare-fun isEmpty!33919 (List!62058) Bool)

(assert (=> b!5437989 (= res!2315221 (isEmpty!33919 (t!375283 (exprs!5137 (h!68383 zl!343)))))))

(assert (= (and start!570290 res!2315214) b!5437985))

(assert (= (and b!5437985 res!2315226) b!5437964))

(assert (= (and b!5437964 res!2315219) b!5437963))

(assert (= (and b!5437963 (not res!2315223)) b!5437975))

(assert (= (and b!5437975 (not res!2315218)) b!5437987))

(assert (= (and b!5437987 (not res!2315222)) b!5437967))

(assert (= (and b!5437967 (not res!2315224)) b!5437980))

(assert (= (and b!5437980 (not res!2315217)) b!5437965))

(assert (= (and b!5437965 (not res!2315229)) b!5437981))

(assert (= (and b!5437981 (not res!2315213)) b!5437989))

(assert (= (and b!5437989 (not res!2315221)) b!5437972))

(assert (= (and b!5437972 c!948804) b!5437982))

(assert (= (and b!5437972 (not c!948804)) b!5437973))

(assert (= (and b!5437982 (not res!2315215)) b!5437966))

(assert (= (and b!5437972 (not res!2315228)) b!5437969))

(assert (= (and b!5437969 res!2315220) b!5437977))

(assert (= (and b!5437969 (not res!2315216)) b!5437983))

(assert (= (and b!5437983 (not res!2315225)) b!5437988))

(assert (= (and b!5437988 (not res!2315227)) b!5437976))

(assert (= (and start!570290 ((_ is ElementMatch!15253) r!7292)) b!5437986))

(assert (= (and start!570290 ((_ is Concat!24098) r!7292)) b!5437984))

(assert (= (and start!570290 ((_ is Star!15253) r!7292)) b!5437968))

(assert (= (and start!570290 ((_ is Union!15253) r!7292)) b!5437978))

(assert (= (and start!570290 condSetEmpty!35535) setIsEmpty!35535))

(assert (= (and start!570290 (not condSetEmpty!35535)) setNonEmpty!35535))

(assert (= setNonEmpty!35535 b!5437974))

(assert (= b!5437979 b!5437970))

(assert (= (and start!570290 ((_ is Cons!61935) zl!343)) b!5437979))

(assert (= (and start!570290 ((_ is Cons!61936) s!2326)) b!5437971))

(declare-fun m!6459740 () Bool)

(assert (=> b!5437988 m!6459740))

(declare-fun m!6459742 () Bool)

(assert (=> b!5437988 m!6459742))

(declare-fun m!6459744 () Bool)

(assert (=> start!570290 m!6459744))

(declare-fun m!6459746 () Bool)

(assert (=> b!5437964 m!6459746))

(declare-fun m!6459748 () Bool)

(assert (=> b!5437981 m!6459748))

(declare-fun m!6459750 () Bool)

(assert (=> b!5437981 m!6459750))

(declare-fun m!6459752 () Bool)

(assert (=> b!5437981 m!6459752))

(declare-fun m!6459754 () Bool)

(assert (=> b!5437981 m!6459754))

(declare-fun m!6459756 () Bool)

(assert (=> b!5437981 m!6459756))

(assert (=> b!5437981 m!6459756))

(assert (=> b!5437981 m!6459748))

(declare-fun m!6459758 () Bool)

(assert (=> b!5437981 m!6459758))

(declare-fun m!6459760 () Bool)

(assert (=> b!5437979 m!6459760))

(declare-fun m!6459762 () Bool)

(assert (=> b!5437987 m!6459762))

(declare-fun m!6459764 () Bool)

(assert (=> b!5437980 m!6459764))

(assert (=> b!5437980 m!6459764))

(declare-fun m!6459766 () Bool)

(assert (=> b!5437980 m!6459766))

(declare-fun m!6459768 () Bool)

(assert (=> b!5437985 m!6459768))

(declare-fun m!6459770 () Bool)

(assert (=> b!5437977 m!6459770))

(declare-fun m!6459772 () Bool)

(assert (=> b!5437976 m!6459772))

(declare-fun m!6459774 () Bool)

(assert (=> b!5437976 m!6459774))

(declare-fun m!6459776 () Bool)

(assert (=> b!5437976 m!6459776))

(declare-fun m!6459778 () Bool)

(assert (=> b!5437976 m!6459778))

(declare-fun m!6459780 () Bool)

(assert (=> b!5437976 m!6459780))

(declare-fun m!6459782 () Bool)

(assert (=> b!5437976 m!6459782))

(declare-fun m!6459784 () Bool)

(assert (=> b!5437963 m!6459784))

(declare-fun m!6459786 () Bool)

(assert (=> b!5437963 m!6459786))

(declare-fun m!6459788 () Bool)

(assert (=> b!5437963 m!6459788))

(declare-fun m!6459790 () Bool)

(assert (=> b!5437972 m!6459790))

(declare-fun m!6459792 () Bool)

(assert (=> b!5437972 m!6459792))

(declare-fun m!6459794 () Bool)

(assert (=> b!5437972 m!6459794))

(declare-fun m!6459796 () Bool)

(assert (=> b!5437972 m!6459796))

(declare-fun m!6459798 () Bool)

(assert (=> b!5437972 m!6459798))

(declare-fun m!6459800 () Bool)

(assert (=> b!5437972 m!6459800))

(declare-fun m!6459802 () Bool)

(assert (=> b!5437972 m!6459802))

(declare-fun m!6459804 () Bool)

(assert (=> b!5437966 m!6459804))

(declare-fun m!6459806 () Bool)

(assert (=> b!5437982 m!6459806))

(assert (=> b!5437982 m!6459740))

(declare-fun m!6459808 () Bool)

(assert (=> b!5437982 m!6459808))

(declare-fun m!6459810 () Bool)

(assert (=> b!5437975 m!6459810))

(declare-fun m!6459812 () Bool)

(assert (=> b!5437989 m!6459812))

(declare-fun m!6459814 () Bool)

(assert (=> setNonEmpty!35535 m!6459814))

(check-sat (not b!5437974) (not b!5437985) (not b!5437977) (not b!5437980) (not setNonEmpty!35535) (not b!5437984) (not b!5437976) (not b!5437978) (not b!5437966) (not start!570290) (not b!5437970) (not b!5437963) (not b!5437975) (not b!5437989) (not b!5437987) (not b!5437979) tp_is_empty!39759 (not b!5437964) (not b!5437988) (not b!5437968) (not b!5437981) (not b!5437972) (not b!5437971) (not b!5437982))
(check-sat)
