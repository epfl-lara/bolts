; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!598516 () Bool)

(assert start!598516)

(declare-fun b!5849976 () Bool)

(assert (=> b!5849976 true))

(declare-fun res!2463091 () Bool)

(declare-fun e!3587496 () Bool)

(assert (=> start!598516 (=> (not res!2463091) (not e!3587496))))

(declare-datatypes ((C!32104 0))(
  ( (C!32105 (val!25754 Int)) )
))
(declare-datatypes ((Regex!15917 0))(
  ( (ElementMatch!15917 (c!1036885 C!32104)) (Concat!24762 (regOne!32346 Regex!15917) (regTwo!32346 Regex!15917)) (EmptyExpr!15917) (Star!15917 (reg!16246 Regex!15917)) (EmptyLang!15917) (Union!15917 (regOne!32347 Regex!15917) (regTwo!32347 Regex!15917)) )
))
(declare-fun r!7292 () Regex!15917)

(declare-fun validRegex!7653 (Regex!15917) Bool)

(assert (=> start!598516 (= res!2463091 (validRegex!7653 r!7292))))

(assert (=> start!598516 e!3587496))

(declare-fun e!3587487 () Bool)

(assert (=> start!598516 e!3587487))

(declare-fun condSetEmpty!39630 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!64050 0))(
  ( (Nil!63926) (Cons!63926 (h!70374 Regex!15917) (t!377411 List!64050)) )
))
(declare-datatypes ((Context!10602 0))(
  ( (Context!10603 (exprs!5801 List!64050)) )
))
(declare-fun z!1189 () (InoxSet Context!10602))

(assert (=> start!598516 (= condSetEmpty!39630 (= z!1189 ((as const (Array Context!10602 Bool)) false)))))

(declare-fun setRes!39630 () Bool)

(assert (=> start!598516 setRes!39630))

(declare-fun e!3587485 () Bool)

(assert (=> start!598516 e!3587485))

(declare-fun e!3587488 () Bool)

(assert (=> start!598516 e!3587488))

(declare-fun b!5849975 () Bool)

(declare-fun res!2463084 () Bool)

(declare-fun e!3587494 () Bool)

(assert (=> b!5849975 (=> res!2463084 e!3587494)))

(declare-datatypes ((List!64051 0))(
  ( (Nil!63927) (Cons!63927 (h!70375 Context!10602) (t!377412 List!64051)) )
))
(declare-fun zl!343 () List!64051)

(declare-fun generalisedConcat!1514 (List!64050) Regex!15917)

(assert (=> b!5849975 (= res!2463084 (not (= r!7292 (generalisedConcat!1514 (exprs!5801 (h!70375 zl!343))))))))

(declare-fun e!3587484 () Bool)

(declare-fun e!3587486 () Bool)

(assert (=> b!5849976 (= e!3587484 e!3587486)))

(declare-fun res!2463082 () Bool)

(assert (=> b!5849976 (=> res!2463082 e!3587486)))

(declare-datatypes ((List!64052 0))(
  ( (Nil!63928) (Cons!63928 (h!70376 C!32104) (t!377413 List!64052)) )
))
(declare-fun s!2326 () List!64052)

(declare-fun lt!2304321 () (InoxSet Context!10602))

(declare-fun derivationStepZipper!1916 ((InoxSet Context!10602) C!32104) (InoxSet Context!10602))

(assert (=> b!5849976 (= res!2463082 (not (= (derivationStepZipper!1916 z!1189 (h!70376 s!2326)) lt!2304321)))))

(declare-fun lambda!319852 () Int)

(declare-fun flatMap!1448 ((InoxSet Context!10602) Int) (InoxSet Context!10602))

(declare-fun derivationStepZipperUp!1109 (Context!10602 C!32104) (InoxSet Context!10602))

(assert (=> b!5849976 (= (flatMap!1448 z!1189 lambda!319852) (derivationStepZipperUp!1109 (h!70375 zl!343) (h!70376 s!2326)))))

(declare-datatypes ((Unit!157105 0))(
  ( (Unit!157106) )
))
(declare-fun lt!2304322 () Unit!157105)

(declare-fun lemmaFlatMapOnSingletonSet!976 ((InoxSet Context!10602) Context!10602 Int) Unit!157105)

(assert (=> b!5849976 (= lt!2304322 (lemmaFlatMapOnSingletonSet!976 z!1189 (h!70375 zl!343) lambda!319852))))

(declare-fun b!5849977 () Bool)

(declare-fun e!3587495 () Bool)

(declare-fun lt!2304312 () (InoxSet Context!10602))

(declare-fun matchZipper!1983 ((InoxSet Context!10602) List!64052) Bool)

(assert (=> b!5849977 (= e!3587495 (matchZipper!1983 lt!2304312 (t!377413 s!2326)))))

(declare-fun b!5849978 () Bool)

(declare-fun e!3587497 () Bool)

(declare-fun inv!83039 (Context!10602) Bool)

(assert (=> b!5849978 (= e!3587497 (inv!83039 (Context!10603 (Cons!63926 (regOne!32347 r!7292) Nil!63926))))))

(declare-fun b!5849979 () Bool)

(declare-fun tp_is_empty!41087 () Bool)

(declare-fun tp!1618433 () Bool)

(assert (=> b!5849979 (= e!3587488 (and tp_is_empty!41087 tp!1618433))))

(declare-fun b!5849980 () Bool)

(declare-fun res!2463080 () Bool)

(assert (=> b!5849980 (=> res!2463080 e!3587494)))

(declare-fun isEmpty!35784 (List!64051) Bool)

(assert (=> b!5849980 (= res!2463080 (not (isEmpty!35784 (t!377412 zl!343))))))

(declare-fun b!5849981 () Bool)

(declare-fun res!2463088 () Bool)

(assert (=> b!5849981 (=> res!2463088 e!3587494)))

(declare-fun generalisedUnion!1761 (List!64050) Regex!15917)

(declare-fun unfocusZipperList!1338 (List!64051) List!64050)

(assert (=> b!5849981 (= res!2463088 (not (= r!7292 (generalisedUnion!1761 (unfocusZipperList!1338 zl!343)))))))

(declare-fun b!5849982 () Bool)

(declare-fun res!2463079 () Bool)

(assert (=> b!5849982 (=> (not res!2463079) (not e!3587496))))

(declare-fun unfocusZipper!1659 (List!64051) Regex!15917)

(assert (=> b!5849982 (= res!2463079 (= r!7292 (unfocusZipper!1659 zl!343)))))

(declare-fun b!5849983 () Bool)

(declare-fun res!2463087 () Bool)

(assert (=> b!5849983 (=> res!2463087 e!3587494)))

(get-info :version)

(assert (=> b!5849983 (= res!2463087 (not ((_ is Cons!63926) (exprs!5801 (h!70375 zl!343)))))))

(declare-fun b!5849984 () Bool)

(declare-fun res!2463093 () Bool)

(assert (=> b!5849984 (=> res!2463093 e!3587494)))

(assert (=> b!5849984 (= res!2463093 (or ((_ is EmptyExpr!15917) r!7292) ((_ is EmptyLang!15917) r!7292) ((_ is ElementMatch!15917) r!7292) (not ((_ is Union!15917) r!7292))))))

(declare-fun e!3587489 () Bool)

(declare-fun tp!1618439 () Bool)

(declare-fun b!5849985 () Bool)

(assert (=> b!5849985 (= e!3587485 (and (inv!83039 (h!70375 zl!343)) e!3587489 tp!1618439))))

(declare-fun setIsEmpty!39630 () Bool)

(assert (=> setIsEmpty!39630 setRes!39630))

(declare-fun b!5849986 () Bool)

(declare-fun e!3587491 () Bool)

(assert (=> b!5849986 (= e!3587491 e!3587497)))

(declare-fun res!2463089 () Bool)

(assert (=> b!5849986 (=> res!2463089 e!3587497)))

(declare-fun lt!2304316 () Bool)

(declare-fun lt!2304319 () Bool)

(declare-fun lt!2304326 () Bool)

(assert (=> b!5849986 (= res!2463089 (or (not (= lt!2304319 lt!2304316)) (not (= lt!2304319 lt!2304326))))))

(assert (=> b!5849986 (= lt!2304316 lt!2304319)))

(assert (=> b!5849986 (= lt!2304319 e!3587495)))

(declare-fun res!2463081 () Bool)

(assert (=> b!5849986 (=> res!2463081 e!3587495)))

(declare-fun lt!2304313 () (InoxSet Context!10602))

(assert (=> b!5849986 (= res!2463081 (matchZipper!1983 lt!2304313 (t!377413 s!2326)))))

(declare-fun lt!2304317 () Unit!157105)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!818 ((InoxSet Context!10602) (InoxSet Context!10602) List!64052) Unit!157105)

(assert (=> b!5849986 (= lt!2304317 (lemmaZipperConcatMatchesSameAsBothZippers!818 lt!2304313 lt!2304312 (t!377413 s!2326)))))

(declare-fun setElem!39630 () Context!10602)

(declare-fun e!3587493 () Bool)

(declare-fun setNonEmpty!39630 () Bool)

(declare-fun tp!1618436 () Bool)

(assert (=> setNonEmpty!39630 (= setRes!39630 (and tp!1618436 (inv!83039 setElem!39630) e!3587493))))

(declare-fun setRest!39630 () (InoxSet Context!10602))

(assert (=> setNonEmpty!39630 (= z!1189 ((_ map or) (store ((as const (Array Context!10602 Bool)) false) setElem!39630 true) setRest!39630))))

(declare-fun b!5849987 () Bool)

(declare-fun tp!1618437 () Bool)

(assert (=> b!5849987 (= e!3587493 tp!1618437)))

(declare-fun b!5849988 () Bool)

(declare-fun tp!1618440 () Bool)

(assert (=> b!5849988 (= e!3587487 tp!1618440)))

(declare-fun b!5849989 () Bool)

(declare-fun e!3587492 () Bool)

(assert (=> b!5849989 (= e!3587492 e!3587484)))

(declare-fun res!2463094 () Bool)

(assert (=> b!5849989 (=> res!2463094 e!3587484)))

(declare-fun lt!2304323 () (InoxSet Context!10602))

(assert (=> b!5849989 (= res!2463094 (not (= lt!2304323 lt!2304321)))))

(assert (=> b!5849989 (= lt!2304321 ((_ map or) lt!2304313 lt!2304312))))

(declare-fun lt!2304315 () Context!10602)

(declare-fun derivationStepZipperDown!1183 (Regex!15917 Context!10602 C!32104) (InoxSet Context!10602))

(assert (=> b!5849989 (= lt!2304312 (derivationStepZipperDown!1183 (regTwo!32347 r!7292) lt!2304315 (h!70376 s!2326)))))

(assert (=> b!5849989 (= lt!2304313 (derivationStepZipperDown!1183 (regOne!32347 r!7292) lt!2304315 (h!70376 s!2326)))))

(declare-fun b!5849990 () Bool)

(declare-fun e!3587490 () Bool)

(assert (=> b!5849990 (= e!3587494 e!3587490)))

(declare-fun res!2463086 () Bool)

(assert (=> b!5849990 (=> res!2463086 e!3587490)))

(declare-fun lt!2304324 () Bool)

(declare-fun lt!2304327 () Bool)

(declare-fun lt!2304328 () Bool)

(assert (=> b!5849990 (= res!2463086 (or (not (= lt!2304327 (or lt!2304324 lt!2304328))) ((_ is Nil!63928) s!2326)))))

(declare-fun matchRSpec!3018 (Regex!15917 List!64052) Bool)

(assert (=> b!5849990 (= lt!2304328 (matchRSpec!3018 (regTwo!32347 r!7292) s!2326))))

(declare-fun matchR!8100 (Regex!15917 List!64052) Bool)

(assert (=> b!5849990 (= lt!2304328 (matchR!8100 (regTwo!32347 r!7292) s!2326))))

(declare-fun lt!2304320 () Unit!157105)

(declare-fun mainMatchTheorem!3018 (Regex!15917 List!64052) Unit!157105)

(assert (=> b!5849990 (= lt!2304320 (mainMatchTheorem!3018 (regTwo!32347 r!7292) s!2326))))

(assert (=> b!5849990 (= lt!2304324 (matchRSpec!3018 (regOne!32347 r!7292) s!2326))))

(assert (=> b!5849990 (= lt!2304324 (matchR!8100 (regOne!32347 r!7292) s!2326))))

(declare-fun lt!2304318 () Unit!157105)

(assert (=> b!5849990 (= lt!2304318 (mainMatchTheorem!3018 (regOne!32347 r!7292) s!2326))))

(declare-fun b!5849991 () Bool)

(declare-fun tp!1618431 () Bool)

(declare-fun tp!1618435 () Bool)

(assert (=> b!5849991 (= e!3587487 (and tp!1618431 tp!1618435))))

(declare-fun b!5849992 () Bool)

(declare-fun res!2463090 () Bool)

(assert (=> b!5849992 (=> (not res!2463090) (not e!3587496))))

(declare-fun toList!9701 ((InoxSet Context!10602)) List!64051)

(assert (=> b!5849992 (= res!2463090 (= (toList!9701 z!1189) zl!343))))

(declare-fun b!5849993 () Bool)

(assert (=> b!5849993 (= e!3587496 (not e!3587494))))

(declare-fun res!2463085 () Bool)

(assert (=> b!5849993 (=> res!2463085 e!3587494)))

(assert (=> b!5849993 (= res!2463085 (not ((_ is Cons!63927) zl!343)))))

(assert (=> b!5849993 (= lt!2304327 (matchRSpec!3018 r!7292 s!2326))))

(assert (=> b!5849993 (= lt!2304327 (matchR!8100 r!7292 s!2326))))

(declare-fun lt!2304314 () Unit!157105)

(assert (=> b!5849993 (= lt!2304314 (mainMatchTheorem!3018 r!7292 s!2326))))

(declare-fun b!5849994 () Bool)

(assert (=> b!5849994 (= e!3587487 tp_is_empty!41087)))

(declare-fun b!5849995 () Bool)

(declare-fun tp!1618432 () Bool)

(assert (=> b!5849995 (= e!3587489 tp!1618432)))

(declare-fun b!5849996 () Bool)

(declare-fun tp!1618434 () Bool)

(declare-fun tp!1618438 () Bool)

(assert (=> b!5849996 (= e!3587487 (and tp!1618434 tp!1618438))))

(declare-fun b!5849997 () Bool)

(assert (=> b!5849997 (= e!3587486 e!3587491)))

(declare-fun res!2463083 () Bool)

(assert (=> b!5849997 (=> res!2463083 e!3587491)))

(assert (=> b!5849997 (= res!2463083 (not (= lt!2304316 lt!2304326)))))

(assert (=> b!5849997 (= lt!2304326 (matchZipper!1983 z!1189 s!2326))))

(assert (=> b!5849997 (= lt!2304316 (matchZipper!1983 lt!2304321 (t!377413 s!2326)))))

(declare-fun b!5849998 () Bool)

(assert (=> b!5849998 (= e!3587490 e!3587492)))

(declare-fun res!2463092 () Bool)

(assert (=> b!5849998 (=> res!2463092 e!3587492)))

(declare-fun lt!2304325 () (InoxSet Context!10602))

(assert (=> b!5849998 (= res!2463092 (not (= lt!2304325 lt!2304323)))))

(assert (=> b!5849998 (= lt!2304323 (derivationStepZipperDown!1183 r!7292 lt!2304315 (h!70376 s!2326)))))

(assert (=> b!5849998 (= lt!2304315 (Context!10603 Nil!63926))))

(assert (=> b!5849998 (= lt!2304325 (derivationStepZipperUp!1109 (Context!10603 (Cons!63926 r!7292 Nil!63926)) (h!70376 s!2326)))))

(assert (= (and start!598516 res!2463091) b!5849992))

(assert (= (and b!5849992 res!2463090) b!5849982))

(assert (= (and b!5849982 res!2463079) b!5849993))

(assert (= (and b!5849993 (not res!2463085)) b!5849980))

(assert (= (and b!5849980 (not res!2463080)) b!5849975))

(assert (= (and b!5849975 (not res!2463084)) b!5849983))

(assert (= (and b!5849983 (not res!2463087)) b!5849981))

(assert (= (and b!5849981 (not res!2463088)) b!5849984))

(assert (= (and b!5849984 (not res!2463093)) b!5849990))

(assert (= (and b!5849990 (not res!2463086)) b!5849998))

(assert (= (and b!5849998 (not res!2463092)) b!5849989))

(assert (= (and b!5849989 (not res!2463094)) b!5849976))

(assert (= (and b!5849976 (not res!2463082)) b!5849997))

(assert (= (and b!5849997 (not res!2463083)) b!5849986))

(assert (= (and b!5849986 (not res!2463081)) b!5849977))

(assert (= (and b!5849986 (not res!2463089)) b!5849978))

(assert (= (and start!598516 ((_ is ElementMatch!15917) r!7292)) b!5849994))

(assert (= (and start!598516 ((_ is Concat!24762) r!7292)) b!5849991))

(assert (= (and start!598516 ((_ is Star!15917) r!7292)) b!5849988))

(assert (= (and start!598516 ((_ is Union!15917) r!7292)) b!5849996))

(assert (= (and start!598516 condSetEmpty!39630) setIsEmpty!39630))

(assert (= (and start!598516 (not condSetEmpty!39630)) setNonEmpty!39630))

(assert (= setNonEmpty!39630 b!5849987))

(assert (= b!5849985 b!5849995))

(assert (= (and start!598516 ((_ is Cons!63927) zl!343)) b!5849985))

(assert (= (and start!598516 ((_ is Cons!63928) s!2326)) b!5849979))

(declare-fun m!6770236 () Bool)

(assert (=> setNonEmpty!39630 m!6770236))

(declare-fun m!6770238 () Bool)

(assert (=> b!5849975 m!6770238))

(declare-fun m!6770240 () Bool)

(assert (=> b!5849981 m!6770240))

(assert (=> b!5849981 m!6770240))

(declare-fun m!6770242 () Bool)

(assert (=> b!5849981 m!6770242))

(declare-fun m!6770244 () Bool)

(assert (=> b!5849977 m!6770244))

(declare-fun m!6770246 () Bool)

(assert (=> b!5849980 m!6770246))

(declare-fun m!6770248 () Bool)

(assert (=> b!5849997 m!6770248))

(declare-fun m!6770250 () Bool)

(assert (=> b!5849997 m!6770250))

(declare-fun m!6770252 () Bool)

(assert (=> b!5849998 m!6770252))

(declare-fun m!6770254 () Bool)

(assert (=> b!5849998 m!6770254))

(declare-fun m!6770256 () Bool)

(assert (=> b!5849985 m!6770256))

(declare-fun m!6770258 () Bool)

(assert (=> b!5849992 m!6770258))

(declare-fun m!6770260 () Bool)

(assert (=> b!5849990 m!6770260))

(declare-fun m!6770262 () Bool)

(assert (=> b!5849990 m!6770262))

(declare-fun m!6770264 () Bool)

(assert (=> b!5849990 m!6770264))

(declare-fun m!6770266 () Bool)

(assert (=> b!5849990 m!6770266))

(declare-fun m!6770268 () Bool)

(assert (=> b!5849990 m!6770268))

(declare-fun m!6770270 () Bool)

(assert (=> b!5849990 m!6770270))

(declare-fun m!6770272 () Bool)

(assert (=> b!5849978 m!6770272))

(declare-fun m!6770274 () Bool)

(assert (=> b!5849976 m!6770274))

(declare-fun m!6770276 () Bool)

(assert (=> b!5849976 m!6770276))

(declare-fun m!6770278 () Bool)

(assert (=> b!5849976 m!6770278))

(declare-fun m!6770280 () Bool)

(assert (=> b!5849976 m!6770280))

(declare-fun m!6770282 () Bool)

(assert (=> b!5849986 m!6770282))

(declare-fun m!6770284 () Bool)

(assert (=> b!5849986 m!6770284))

(declare-fun m!6770286 () Bool)

(assert (=> b!5849989 m!6770286))

(declare-fun m!6770288 () Bool)

(assert (=> b!5849989 m!6770288))

(declare-fun m!6770290 () Bool)

(assert (=> start!598516 m!6770290))

(declare-fun m!6770292 () Bool)

(assert (=> b!5849993 m!6770292))

(declare-fun m!6770294 () Bool)

(assert (=> b!5849993 m!6770294))

(declare-fun m!6770296 () Bool)

(assert (=> b!5849993 m!6770296))

(declare-fun m!6770298 () Bool)

(assert (=> b!5849982 m!6770298))

(check-sat (not b!5849993) (not b!5849992) (not b!5849991) (not b!5849981) (not setNonEmpty!39630) (not b!5849987) (not b!5849990) (not b!5849975) (not b!5849982) (not b!5849977) (not b!5849988) (not b!5849980) (not b!5849995) (not b!5849979) (not b!5849997) (not b!5849986) tp_is_empty!41087 (not b!5849985) (not b!5849989) (not b!5849978) (not b!5849998) (not start!598516) (not b!5849996) (not b!5849976))
(check-sat)
(get-model)

(declare-fun d!1837418 () Bool)

(assert (=> d!1837418 (= (isEmpty!35784 (t!377412 zl!343)) ((_ is Nil!63927) (t!377412 zl!343)))))

(assert (=> b!5849980 d!1837418))

(declare-fun b!5850419 () Bool)

(assert (=> b!5850419 true))

(assert (=> b!5850419 true))

(declare-fun bs!1378500 () Bool)

(declare-fun b!5850423 () Bool)

(assert (= bs!1378500 (and b!5850423 b!5850419)))

(declare-fun lambda!319885 () Int)

(declare-fun lambda!319884 () Int)

(assert (=> bs!1378500 (not (= lambda!319885 lambda!319884))))

(assert (=> b!5850423 true))

(assert (=> b!5850423 true))

(declare-fun b!5850414 () Bool)

(declare-fun e!3587727 () Bool)

(assert (=> b!5850414 (= e!3587727 (= s!2326 (Cons!63928 (c!1036885 (regTwo!32347 r!7292)) Nil!63928)))))

(declare-fun b!5850415 () Bool)

(declare-fun e!3587728 () Bool)

(declare-fun e!3587730 () Bool)

(assert (=> b!5850415 (= e!3587728 e!3587730)))

(declare-fun c!1037004 () Bool)

(assert (=> b!5850415 (= c!1037004 ((_ is Star!15917) (regTwo!32347 r!7292)))))

(declare-fun b!5850416 () Bool)

(declare-fun e!3587729 () Bool)

(assert (=> b!5850416 (= e!3587728 e!3587729)))

(declare-fun res!2463218 () Bool)

(assert (=> b!5850416 (= res!2463218 (matchRSpec!3018 (regOne!32347 (regTwo!32347 r!7292)) s!2326))))

(assert (=> b!5850416 (=> res!2463218 e!3587729)))

(declare-fun b!5850417 () Bool)

(declare-fun c!1037005 () Bool)

(assert (=> b!5850417 (= c!1037005 ((_ is ElementMatch!15917) (regTwo!32347 r!7292)))))

(declare-fun e!3587731 () Bool)

(assert (=> b!5850417 (= e!3587731 e!3587727)))

(declare-fun call!457765 () Bool)

(declare-fun bm!457760 () Bool)

(declare-fun Exists!2989 (Int) Bool)

(assert (=> bm!457760 (= call!457765 (Exists!2989 (ite c!1037004 lambda!319884 lambda!319885)))))

(declare-fun b!5850418 () Bool)

(declare-fun c!1037003 () Bool)

(assert (=> b!5850418 (= c!1037003 ((_ is Union!15917) (regTwo!32347 r!7292)))))

(assert (=> b!5850418 (= e!3587727 e!3587728)))

(declare-fun e!3587733 () Bool)

(assert (=> b!5850419 (= e!3587733 call!457765)))

(declare-fun b!5850420 () Bool)

(assert (=> b!5850420 (= e!3587729 (matchRSpec!3018 (regTwo!32347 (regTwo!32347 r!7292)) s!2326))))

(declare-fun b!5850421 () Bool)

(declare-fun res!2463219 () Bool)

(assert (=> b!5850421 (=> res!2463219 e!3587733)))

(declare-fun call!457766 () Bool)

(assert (=> b!5850421 (= res!2463219 call!457766)))

(assert (=> b!5850421 (= e!3587730 e!3587733)))

(declare-fun d!1837420 () Bool)

(declare-fun c!1037006 () Bool)

(assert (=> d!1837420 (= c!1037006 ((_ is EmptyExpr!15917) (regTwo!32347 r!7292)))))

(declare-fun e!3587732 () Bool)

(assert (=> d!1837420 (= (matchRSpec!3018 (regTwo!32347 r!7292) s!2326) e!3587732)))

(declare-fun b!5850422 () Bool)

(assert (=> b!5850422 (= e!3587732 call!457766)))

(assert (=> b!5850423 (= e!3587730 call!457765)))

(declare-fun bm!457761 () Bool)

(declare-fun isEmpty!35787 (List!64052) Bool)

(assert (=> bm!457761 (= call!457766 (isEmpty!35787 s!2326))))

(declare-fun b!5850424 () Bool)

(assert (=> b!5850424 (= e!3587732 e!3587731)))

(declare-fun res!2463220 () Bool)

(assert (=> b!5850424 (= res!2463220 (not ((_ is EmptyLang!15917) (regTwo!32347 r!7292))))))

(assert (=> b!5850424 (=> (not res!2463220) (not e!3587731))))

(assert (= (and d!1837420 c!1037006) b!5850422))

(assert (= (and d!1837420 (not c!1037006)) b!5850424))

(assert (= (and b!5850424 res!2463220) b!5850417))

(assert (= (and b!5850417 c!1037005) b!5850414))

(assert (= (and b!5850417 (not c!1037005)) b!5850418))

(assert (= (and b!5850418 c!1037003) b!5850416))

(assert (= (and b!5850418 (not c!1037003)) b!5850415))

(assert (= (and b!5850416 (not res!2463218)) b!5850420))

(assert (= (and b!5850415 c!1037004) b!5850421))

(assert (= (and b!5850415 (not c!1037004)) b!5850423))

(assert (= (and b!5850421 (not res!2463219)) b!5850419))

(assert (= (or b!5850419 b!5850423) bm!457760))

(assert (= (or b!5850422 b!5850421) bm!457761))

(declare-fun m!6770500 () Bool)

(assert (=> b!5850416 m!6770500))

(declare-fun m!6770502 () Bool)

(assert (=> bm!457760 m!6770502))

(declare-fun m!6770504 () Bool)

(assert (=> b!5850420 m!6770504))

(declare-fun m!6770506 () Bool)

(assert (=> bm!457761 m!6770506))

(assert (=> b!5849990 d!1837420))

(declare-fun d!1837436 () Bool)

(assert (=> d!1837436 (= (matchR!8100 (regOne!32347 r!7292) s!2326) (matchRSpec!3018 (regOne!32347 r!7292) s!2326))))

(declare-fun lt!2304362 () Unit!157105)

(declare-fun choose!44369 (Regex!15917 List!64052) Unit!157105)

(assert (=> d!1837436 (= lt!2304362 (choose!44369 (regOne!32347 r!7292) s!2326))))

(assert (=> d!1837436 (validRegex!7653 (regOne!32347 r!7292))))

(assert (=> d!1837436 (= (mainMatchTheorem!3018 (regOne!32347 r!7292) s!2326) lt!2304362)))

(declare-fun bs!1378501 () Bool)

(assert (= bs!1378501 d!1837436))

(assert (=> bs!1378501 m!6770270))

(assert (=> bs!1378501 m!6770266))

(declare-fun m!6770508 () Bool)

(assert (=> bs!1378501 m!6770508))

(declare-fun m!6770510 () Bool)

(assert (=> bs!1378501 m!6770510))

(assert (=> b!5849990 d!1837436))

(declare-fun b!5850457 () Bool)

(declare-fun e!3587752 () Bool)

(declare-fun lt!2304365 () Bool)

(declare-fun call!457769 () Bool)

(assert (=> b!5850457 (= e!3587752 (= lt!2304365 call!457769))))

(declare-fun b!5850458 () Bool)

(declare-fun res!2463240 () Bool)

(declare-fun e!3587753 () Bool)

(assert (=> b!5850458 (=> res!2463240 e!3587753)))

(declare-fun tail!11473 (List!64052) List!64052)

(assert (=> b!5850458 (= res!2463240 (not (isEmpty!35787 (tail!11473 s!2326))))))

(declare-fun b!5850459 () Bool)

(declare-fun res!2463243 () Bool)

(declare-fun e!3587748 () Bool)

(assert (=> b!5850459 (=> res!2463243 e!3587748)))

(declare-fun e!3587754 () Bool)

(assert (=> b!5850459 (= res!2463243 e!3587754)))

(declare-fun res!2463242 () Bool)

(assert (=> b!5850459 (=> (not res!2463242) (not e!3587754))))

(assert (=> b!5850459 (= res!2463242 lt!2304365)))

(declare-fun b!5850460 () Bool)

(declare-fun res!2463237 () Bool)

(assert (=> b!5850460 (=> (not res!2463237) (not e!3587754))))

(assert (=> b!5850460 (= res!2463237 (isEmpty!35787 (tail!11473 s!2326)))))

(declare-fun b!5850461 () Bool)

(declare-fun e!3587750 () Bool)

(assert (=> b!5850461 (= e!3587750 e!3587753)))

(declare-fun res!2463238 () Bool)

(assert (=> b!5850461 (=> res!2463238 e!3587753)))

(assert (=> b!5850461 (= res!2463238 call!457769)))

(declare-fun b!5850462 () Bool)

(declare-fun e!3587751 () Bool)

(declare-fun derivativeStep!4655 (Regex!15917 C!32104) Regex!15917)

(declare-fun head!12388 (List!64052) C!32104)

(assert (=> b!5850462 (= e!3587751 (matchR!8100 (derivativeStep!4655 (regTwo!32347 r!7292) (head!12388 s!2326)) (tail!11473 s!2326)))))

(declare-fun d!1837438 () Bool)

(assert (=> d!1837438 e!3587752))

(declare-fun c!1037015 () Bool)

(assert (=> d!1837438 (= c!1037015 ((_ is EmptyExpr!15917) (regTwo!32347 r!7292)))))

(assert (=> d!1837438 (= lt!2304365 e!3587751)))

(declare-fun c!1037014 () Bool)

(assert (=> d!1837438 (= c!1037014 (isEmpty!35787 s!2326))))

(assert (=> d!1837438 (validRegex!7653 (regTwo!32347 r!7292))))

(assert (=> d!1837438 (= (matchR!8100 (regTwo!32347 r!7292) s!2326) lt!2304365)))

(declare-fun b!5850463 () Bool)

(declare-fun res!2463241 () Bool)

(assert (=> b!5850463 (=> res!2463241 e!3587748)))

(assert (=> b!5850463 (= res!2463241 (not ((_ is ElementMatch!15917) (regTwo!32347 r!7292))))))

(declare-fun e!3587749 () Bool)

(assert (=> b!5850463 (= e!3587749 e!3587748)))

(declare-fun b!5850464 () Bool)

(declare-fun res!2463244 () Bool)

(assert (=> b!5850464 (=> (not res!2463244) (not e!3587754))))

(assert (=> b!5850464 (= res!2463244 (not call!457769))))

(declare-fun bm!457764 () Bool)

(assert (=> bm!457764 (= call!457769 (isEmpty!35787 s!2326))))

(declare-fun b!5850465 () Bool)

(declare-fun nullable!5917 (Regex!15917) Bool)

(assert (=> b!5850465 (= e!3587751 (nullable!5917 (regTwo!32347 r!7292)))))

(declare-fun b!5850466 () Bool)

(assert (=> b!5850466 (= e!3587752 e!3587749)))

(declare-fun c!1037013 () Bool)

(assert (=> b!5850466 (= c!1037013 ((_ is EmptyLang!15917) (regTwo!32347 r!7292)))))

(declare-fun b!5850467 () Bool)

(assert (=> b!5850467 (= e!3587753 (not (= (head!12388 s!2326) (c!1036885 (regTwo!32347 r!7292)))))))

(declare-fun b!5850468 () Bool)

(assert (=> b!5850468 (= e!3587748 e!3587750)))

(declare-fun res!2463239 () Bool)

(assert (=> b!5850468 (=> (not res!2463239) (not e!3587750))))

(assert (=> b!5850468 (= res!2463239 (not lt!2304365))))

(declare-fun b!5850469 () Bool)

(assert (=> b!5850469 (= e!3587749 (not lt!2304365))))

(declare-fun b!5850470 () Bool)

(assert (=> b!5850470 (= e!3587754 (= (head!12388 s!2326) (c!1036885 (regTwo!32347 r!7292))))))

(assert (= (and d!1837438 c!1037014) b!5850465))

(assert (= (and d!1837438 (not c!1037014)) b!5850462))

(assert (= (and d!1837438 c!1037015) b!5850457))

(assert (= (and d!1837438 (not c!1037015)) b!5850466))

(assert (= (and b!5850466 c!1037013) b!5850469))

(assert (= (and b!5850466 (not c!1037013)) b!5850463))

(assert (= (and b!5850463 (not res!2463241)) b!5850459))

(assert (= (and b!5850459 res!2463242) b!5850464))

(assert (= (and b!5850464 res!2463244) b!5850460))

(assert (= (and b!5850460 res!2463237) b!5850470))

(assert (= (and b!5850459 (not res!2463243)) b!5850468))

(assert (= (and b!5850468 res!2463239) b!5850461))

(assert (= (and b!5850461 (not res!2463238)) b!5850458))

(assert (= (and b!5850458 (not res!2463240)) b!5850467))

(assert (= (or b!5850457 b!5850461 b!5850464) bm!457764))

(assert (=> d!1837438 m!6770506))

(declare-fun m!6770512 () Bool)

(assert (=> d!1837438 m!6770512))

(declare-fun m!6770514 () Bool)

(assert (=> b!5850460 m!6770514))

(assert (=> b!5850460 m!6770514))

(declare-fun m!6770516 () Bool)

(assert (=> b!5850460 m!6770516))

(assert (=> b!5850458 m!6770514))

(assert (=> b!5850458 m!6770514))

(assert (=> b!5850458 m!6770516))

(declare-fun m!6770518 () Bool)

(assert (=> b!5850462 m!6770518))

(assert (=> b!5850462 m!6770518))

(declare-fun m!6770520 () Bool)

(assert (=> b!5850462 m!6770520))

(assert (=> b!5850462 m!6770514))

(assert (=> b!5850462 m!6770520))

(assert (=> b!5850462 m!6770514))

(declare-fun m!6770522 () Bool)

(assert (=> b!5850462 m!6770522))

(declare-fun m!6770524 () Bool)

(assert (=> b!5850465 m!6770524))

(assert (=> b!5850467 m!6770518))

(assert (=> bm!457764 m!6770506))

(assert (=> b!5850470 m!6770518))

(assert (=> b!5849990 d!1837438))

(declare-fun d!1837440 () Bool)

(assert (=> d!1837440 (= (matchR!8100 (regTwo!32347 r!7292) s!2326) (matchRSpec!3018 (regTwo!32347 r!7292) s!2326))))

(declare-fun lt!2304366 () Unit!157105)

(assert (=> d!1837440 (= lt!2304366 (choose!44369 (regTwo!32347 r!7292) s!2326))))

(assert (=> d!1837440 (validRegex!7653 (regTwo!32347 r!7292))))

(assert (=> d!1837440 (= (mainMatchTheorem!3018 (regTwo!32347 r!7292) s!2326) lt!2304366)))

(declare-fun bs!1378502 () Bool)

(assert (= bs!1378502 d!1837440))

(assert (=> bs!1378502 m!6770264))

(assert (=> bs!1378502 m!6770260))

(declare-fun m!6770526 () Bool)

(assert (=> bs!1378502 m!6770526))

(assert (=> bs!1378502 m!6770512))

(assert (=> b!5849990 d!1837440))

(declare-fun bs!1378503 () Bool)

(declare-fun b!5850476 () Bool)

(assert (= bs!1378503 (and b!5850476 b!5850419)))

(declare-fun lambda!319886 () Int)

(assert (=> bs!1378503 (= (and (= (reg!16246 (regOne!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292))) (= (regOne!32347 r!7292) (regTwo!32347 r!7292))) (= lambda!319886 lambda!319884))))

(declare-fun bs!1378504 () Bool)

(assert (= bs!1378504 (and b!5850476 b!5850423)))

(assert (=> bs!1378504 (not (= lambda!319886 lambda!319885))))

(assert (=> b!5850476 true))

(assert (=> b!5850476 true))

(declare-fun bs!1378505 () Bool)

(declare-fun b!5850480 () Bool)

(assert (= bs!1378505 (and b!5850480 b!5850419)))

(declare-fun lambda!319887 () Int)

(assert (=> bs!1378505 (not (= lambda!319887 lambda!319884))))

(declare-fun bs!1378506 () Bool)

(assert (= bs!1378506 (and b!5850480 b!5850423)))

(assert (=> bs!1378506 (= (and (= (regOne!32346 (regOne!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292))) (= (regTwo!32346 (regOne!32347 r!7292)) (regTwo!32346 (regTwo!32347 r!7292)))) (= lambda!319887 lambda!319885))))

(declare-fun bs!1378507 () Bool)

(assert (= bs!1378507 (and b!5850480 b!5850476)))

(assert (=> bs!1378507 (not (= lambda!319887 lambda!319886))))

(assert (=> b!5850480 true))

(assert (=> b!5850480 true))

(declare-fun b!5850471 () Bool)

(declare-fun e!3587755 () Bool)

(assert (=> b!5850471 (= e!3587755 (= s!2326 (Cons!63928 (c!1036885 (regOne!32347 r!7292)) Nil!63928)))))

(declare-fun b!5850472 () Bool)

(declare-fun e!3587756 () Bool)

(declare-fun e!3587758 () Bool)

(assert (=> b!5850472 (= e!3587756 e!3587758)))

(declare-fun c!1037017 () Bool)

(assert (=> b!5850472 (= c!1037017 ((_ is Star!15917) (regOne!32347 r!7292)))))

(declare-fun b!5850473 () Bool)

(declare-fun e!3587757 () Bool)

(assert (=> b!5850473 (= e!3587756 e!3587757)))

(declare-fun res!2463245 () Bool)

(assert (=> b!5850473 (= res!2463245 (matchRSpec!3018 (regOne!32347 (regOne!32347 r!7292)) s!2326))))

(assert (=> b!5850473 (=> res!2463245 e!3587757)))

(declare-fun b!5850474 () Bool)

(declare-fun c!1037018 () Bool)

(assert (=> b!5850474 (= c!1037018 ((_ is ElementMatch!15917) (regOne!32347 r!7292)))))

(declare-fun e!3587759 () Bool)

(assert (=> b!5850474 (= e!3587759 e!3587755)))

(declare-fun bm!457765 () Bool)

(declare-fun call!457770 () Bool)

(assert (=> bm!457765 (= call!457770 (Exists!2989 (ite c!1037017 lambda!319886 lambda!319887)))))

(declare-fun b!5850475 () Bool)

(declare-fun c!1037016 () Bool)

(assert (=> b!5850475 (= c!1037016 ((_ is Union!15917) (regOne!32347 r!7292)))))

(assert (=> b!5850475 (= e!3587755 e!3587756)))

(declare-fun e!3587761 () Bool)

(assert (=> b!5850476 (= e!3587761 call!457770)))

(declare-fun b!5850477 () Bool)

(assert (=> b!5850477 (= e!3587757 (matchRSpec!3018 (regTwo!32347 (regOne!32347 r!7292)) s!2326))))

(declare-fun b!5850478 () Bool)

(declare-fun res!2463246 () Bool)

(assert (=> b!5850478 (=> res!2463246 e!3587761)))

(declare-fun call!457771 () Bool)

(assert (=> b!5850478 (= res!2463246 call!457771)))

(assert (=> b!5850478 (= e!3587758 e!3587761)))

(declare-fun d!1837442 () Bool)

(declare-fun c!1037019 () Bool)

(assert (=> d!1837442 (= c!1037019 ((_ is EmptyExpr!15917) (regOne!32347 r!7292)))))

(declare-fun e!3587760 () Bool)

(assert (=> d!1837442 (= (matchRSpec!3018 (regOne!32347 r!7292) s!2326) e!3587760)))

(declare-fun b!5850479 () Bool)

(assert (=> b!5850479 (= e!3587760 call!457771)))

(assert (=> b!5850480 (= e!3587758 call!457770)))

(declare-fun bm!457766 () Bool)

(assert (=> bm!457766 (= call!457771 (isEmpty!35787 s!2326))))

(declare-fun b!5850481 () Bool)

(assert (=> b!5850481 (= e!3587760 e!3587759)))

(declare-fun res!2463247 () Bool)

(assert (=> b!5850481 (= res!2463247 (not ((_ is EmptyLang!15917) (regOne!32347 r!7292))))))

(assert (=> b!5850481 (=> (not res!2463247) (not e!3587759))))

(assert (= (and d!1837442 c!1037019) b!5850479))

(assert (= (and d!1837442 (not c!1037019)) b!5850481))

(assert (= (and b!5850481 res!2463247) b!5850474))

(assert (= (and b!5850474 c!1037018) b!5850471))

(assert (= (and b!5850474 (not c!1037018)) b!5850475))

(assert (= (and b!5850475 c!1037016) b!5850473))

(assert (= (and b!5850475 (not c!1037016)) b!5850472))

(assert (= (and b!5850473 (not res!2463245)) b!5850477))

(assert (= (and b!5850472 c!1037017) b!5850478))

(assert (= (and b!5850472 (not c!1037017)) b!5850480))

(assert (= (and b!5850478 (not res!2463246)) b!5850476))

(assert (= (or b!5850476 b!5850480) bm!457765))

(assert (= (or b!5850479 b!5850478) bm!457766))

(declare-fun m!6770528 () Bool)

(assert (=> b!5850473 m!6770528))

(declare-fun m!6770530 () Bool)

(assert (=> bm!457765 m!6770530))

(declare-fun m!6770532 () Bool)

(assert (=> b!5850477 m!6770532))

(assert (=> bm!457766 m!6770506))

(assert (=> b!5849990 d!1837442))

(declare-fun b!5850482 () Bool)

(declare-fun e!3587766 () Bool)

(declare-fun lt!2304367 () Bool)

(declare-fun call!457772 () Bool)

(assert (=> b!5850482 (= e!3587766 (= lt!2304367 call!457772))))

(declare-fun b!5850483 () Bool)

(declare-fun res!2463251 () Bool)

(declare-fun e!3587767 () Bool)

(assert (=> b!5850483 (=> res!2463251 e!3587767)))

(assert (=> b!5850483 (= res!2463251 (not (isEmpty!35787 (tail!11473 s!2326))))))

(declare-fun b!5850484 () Bool)

(declare-fun res!2463254 () Bool)

(declare-fun e!3587762 () Bool)

(assert (=> b!5850484 (=> res!2463254 e!3587762)))

(declare-fun e!3587768 () Bool)

(assert (=> b!5850484 (= res!2463254 e!3587768)))

(declare-fun res!2463253 () Bool)

(assert (=> b!5850484 (=> (not res!2463253) (not e!3587768))))

(assert (=> b!5850484 (= res!2463253 lt!2304367)))

(declare-fun b!5850485 () Bool)

(declare-fun res!2463248 () Bool)

(assert (=> b!5850485 (=> (not res!2463248) (not e!3587768))))

(assert (=> b!5850485 (= res!2463248 (isEmpty!35787 (tail!11473 s!2326)))))

(declare-fun b!5850486 () Bool)

(declare-fun e!3587764 () Bool)

(assert (=> b!5850486 (= e!3587764 e!3587767)))

(declare-fun res!2463249 () Bool)

(assert (=> b!5850486 (=> res!2463249 e!3587767)))

(assert (=> b!5850486 (= res!2463249 call!457772)))

(declare-fun b!5850487 () Bool)

(declare-fun e!3587765 () Bool)

(assert (=> b!5850487 (= e!3587765 (matchR!8100 (derivativeStep!4655 (regOne!32347 r!7292) (head!12388 s!2326)) (tail!11473 s!2326)))))

(declare-fun d!1837444 () Bool)

(assert (=> d!1837444 e!3587766))

(declare-fun c!1037022 () Bool)

(assert (=> d!1837444 (= c!1037022 ((_ is EmptyExpr!15917) (regOne!32347 r!7292)))))

(assert (=> d!1837444 (= lt!2304367 e!3587765)))

(declare-fun c!1037021 () Bool)

(assert (=> d!1837444 (= c!1037021 (isEmpty!35787 s!2326))))

(assert (=> d!1837444 (validRegex!7653 (regOne!32347 r!7292))))

(assert (=> d!1837444 (= (matchR!8100 (regOne!32347 r!7292) s!2326) lt!2304367)))

(declare-fun b!5850488 () Bool)

(declare-fun res!2463252 () Bool)

(assert (=> b!5850488 (=> res!2463252 e!3587762)))

(assert (=> b!5850488 (= res!2463252 (not ((_ is ElementMatch!15917) (regOne!32347 r!7292))))))

(declare-fun e!3587763 () Bool)

(assert (=> b!5850488 (= e!3587763 e!3587762)))

(declare-fun b!5850489 () Bool)

(declare-fun res!2463255 () Bool)

(assert (=> b!5850489 (=> (not res!2463255) (not e!3587768))))

(assert (=> b!5850489 (= res!2463255 (not call!457772))))

(declare-fun bm!457767 () Bool)

(assert (=> bm!457767 (= call!457772 (isEmpty!35787 s!2326))))

(declare-fun b!5850490 () Bool)

(assert (=> b!5850490 (= e!3587765 (nullable!5917 (regOne!32347 r!7292)))))

(declare-fun b!5850491 () Bool)

(assert (=> b!5850491 (= e!3587766 e!3587763)))

(declare-fun c!1037020 () Bool)

(assert (=> b!5850491 (= c!1037020 ((_ is EmptyLang!15917) (regOne!32347 r!7292)))))

(declare-fun b!5850492 () Bool)

(assert (=> b!5850492 (= e!3587767 (not (= (head!12388 s!2326) (c!1036885 (regOne!32347 r!7292)))))))

(declare-fun b!5850493 () Bool)

(assert (=> b!5850493 (= e!3587762 e!3587764)))

(declare-fun res!2463250 () Bool)

(assert (=> b!5850493 (=> (not res!2463250) (not e!3587764))))

(assert (=> b!5850493 (= res!2463250 (not lt!2304367))))

(declare-fun b!5850494 () Bool)

(assert (=> b!5850494 (= e!3587763 (not lt!2304367))))

(declare-fun b!5850495 () Bool)

(assert (=> b!5850495 (= e!3587768 (= (head!12388 s!2326) (c!1036885 (regOne!32347 r!7292))))))

(assert (= (and d!1837444 c!1037021) b!5850490))

(assert (= (and d!1837444 (not c!1037021)) b!5850487))

(assert (= (and d!1837444 c!1037022) b!5850482))

(assert (= (and d!1837444 (not c!1037022)) b!5850491))

(assert (= (and b!5850491 c!1037020) b!5850494))

(assert (= (and b!5850491 (not c!1037020)) b!5850488))

(assert (= (and b!5850488 (not res!2463252)) b!5850484))

(assert (= (and b!5850484 res!2463253) b!5850489))

(assert (= (and b!5850489 res!2463255) b!5850485))

(assert (= (and b!5850485 res!2463248) b!5850495))

(assert (= (and b!5850484 (not res!2463254)) b!5850493))

(assert (= (and b!5850493 res!2463250) b!5850486))

(assert (= (and b!5850486 (not res!2463249)) b!5850483))

(assert (= (and b!5850483 (not res!2463251)) b!5850492))

(assert (= (or b!5850482 b!5850486 b!5850489) bm!457767))

(assert (=> d!1837444 m!6770506))

(assert (=> d!1837444 m!6770510))

(assert (=> b!5850485 m!6770514))

(assert (=> b!5850485 m!6770514))

(assert (=> b!5850485 m!6770516))

(assert (=> b!5850483 m!6770514))

(assert (=> b!5850483 m!6770514))

(assert (=> b!5850483 m!6770516))

(assert (=> b!5850487 m!6770518))

(assert (=> b!5850487 m!6770518))

(declare-fun m!6770534 () Bool)

(assert (=> b!5850487 m!6770534))

(assert (=> b!5850487 m!6770514))

(assert (=> b!5850487 m!6770534))

(assert (=> b!5850487 m!6770514))

(declare-fun m!6770536 () Bool)

(assert (=> b!5850487 m!6770536))

(declare-fun m!6770538 () Bool)

(assert (=> b!5850490 m!6770538))

(assert (=> b!5850492 m!6770518))

(assert (=> bm!457767 m!6770506))

(assert (=> b!5850495 m!6770518))

(assert (=> b!5849990 d!1837444))

(declare-fun d!1837446 () Bool)

(declare-fun e!3587786 () Bool)

(assert (=> d!1837446 e!3587786))

(declare-fun res!2463261 () Bool)

(assert (=> d!1837446 (=> (not res!2463261) (not e!3587786))))

(declare-fun lt!2304370 () Regex!15917)

(assert (=> d!1837446 (= res!2463261 (validRegex!7653 lt!2304370))))

(declare-fun e!3587784 () Regex!15917)

(assert (=> d!1837446 (= lt!2304370 e!3587784)))

(declare-fun c!1037034 () Bool)

(declare-fun e!3587785 () Bool)

(assert (=> d!1837446 (= c!1037034 e!3587785)))

(declare-fun res!2463260 () Bool)

(assert (=> d!1837446 (=> (not res!2463260) (not e!3587785))))

(assert (=> d!1837446 (= res!2463260 ((_ is Cons!63926) (unfocusZipperList!1338 zl!343)))))

(declare-fun lambda!319890 () Int)

(declare-fun forall!15004 (List!64050 Int) Bool)

(assert (=> d!1837446 (forall!15004 (unfocusZipperList!1338 zl!343) lambda!319890)))

(assert (=> d!1837446 (= (generalisedUnion!1761 (unfocusZipperList!1338 zl!343)) lt!2304370)))

(declare-fun b!5850516 () Bool)

(declare-fun e!3587783 () Regex!15917)

(assert (=> b!5850516 (= e!3587784 e!3587783)))

(declare-fun c!1037033 () Bool)

(assert (=> b!5850516 (= c!1037033 ((_ is Cons!63926) (unfocusZipperList!1338 zl!343)))))

(declare-fun b!5850517 () Bool)

(declare-fun e!3587781 () Bool)

(declare-fun isUnion!790 (Regex!15917) Bool)

(assert (=> b!5850517 (= e!3587781 (isUnion!790 lt!2304370))))

(declare-fun b!5850518 () Bool)

(declare-fun e!3587782 () Bool)

(assert (=> b!5850518 (= e!3587782 e!3587781)))

(declare-fun c!1037031 () Bool)

(declare-fun isEmpty!35788 (List!64050) Bool)

(declare-fun tail!11474 (List!64050) List!64050)

(assert (=> b!5850518 (= c!1037031 (isEmpty!35788 (tail!11474 (unfocusZipperList!1338 zl!343))))))

(declare-fun b!5850519 () Bool)

(declare-fun head!12389 (List!64050) Regex!15917)

(assert (=> b!5850519 (= e!3587781 (= lt!2304370 (head!12389 (unfocusZipperList!1338 zl!343))))))

(declare-fun b!5850520 () Bool)

(assert (=> b!5850520 (= e!3587783 (Union!15917 (h!70374 (unfocusZipperList!1338 zl!343)) (generalisedUnion!1761 (t!377411 (unfocusZipperList!1338 zl!343)))))))

(declare-fun b!5850521 () Bool)

(declare-fun isEmptyLang!1360 (Regex!15917) Bool)

(assert (=> b!5850521 (= e!3587782 (isEmptyLang!1360 lt!2304370))))

(declare-fun b!5850522 () Bool)

(assert (=> b!5850522 (= e!3587786 e!3587782)))

(declare-fun c!1037032 () Bool)

(assert (=> b!5850522 (= c!1037032 (isEmpty!35788 (unfocusZipperList!1338 zl!343)))))

(declare-fun b!5850523 () Bool)

(assert (=> b!5850523 (= e!3587785 (isEmpty!35788 (t!377411 (unfocusZipperList!1338 zl!343))))))

(declare-fun b!5850524 () Bool)

(assert (=> b!5850524 (= e!3587784 (h!70374 (unfocusZipperList!1338 zl!343)))))

(declare-fun b!5850525 () Bool)

(assert (=> b!5850525 (= e!3587783 EmptyLang!15917)))

(assert (= (and d!1837446 res!2463260) b!5850523))

(assert (= (and d!1837446 c!1037034) b!5850524))

(assert (= (and d!1837446 (not c!1037034)) b!5850516))

(assert (= (and b!5850516 c!1037033) b!5850520))

(assert (= (and b!5850516 (not c!1037033)) b!5850525))

(assert (= (and d!1837446 res!2463261) b!5850522))

(assert (= (and b!5850522 c!1037032) b!5850521))

(assert (= (and b!5850522 (not c!1037032)) b!5850518))

(assert (= (and b!5850518 c!1037031) b!5850519))

(assert (= (and b!5850518 (not c!1037031)) b!5850517))

(declare-fun m!6770540 () Bool)

(assert (=> b!5850523 m!6770540))

(declare-fun m!6770542 () Bool)

(assert (=> b!5850517 m!6770542))

(assert (=> b!5850518 m!6770240))

(declare-fun m!6770544 () Bool)

(assert (=> b!5850518 m!6770544))

(assert (=> b!5850518 m!6770544))

(declare-fun m!6770546 () Bool)

(assert (=> b!5850518 m!6770546))

(declare-fun m!6770548 () Bool)

(assert (=> d!1837446 m!6770548))

(assert (=> d!1837446 m!6770240))

(declare-fun m!6770550 () Bool)

(assert (=> d!1837446 m!6770550))

(assert (=> b!5850522 m!6770240))

(declare-fun m!6770552 () Bool)

(assert (=> b!5850522 m!6770552))

(declare-fun m!6770554 () Bool)

(assert (=> b!5850520 m!6770554))

(assert (=> b!5850519 m!6770240))

(declare-fun m!6770556 () Bool)

(assert (=> b!5850519 m!6770556))

(declare-fun m!6770558 () Bool)

(assert (=> b!5850521 m!6770558))

(assert (=> b!5849981 d!1837446))

(declare-fun bs!1378508 () Bool)

(declare-fun d!1837448 () Bool)

(assert (= bs!1378508 (and d!1837448 d!1837446)))

(declare-fun lambda!319893 () Int)

(assert (=> bs!1378508 (= lambda!319893 lambda!319890)))

(declare-fun lt!2304373 () List!64050)

(assert (=> d!1837448 (forall!15004 lt!2304373 lambda!319893)))

(declare-fun e!3587789 () List!64050)

(assert (=> d!1837448 (= lt!2304373 e!3587789)))

(declare-fun c!1037037 () Bool)

(assert (=> d!1837448 (= c!1037037 ((_ is Cons!63927) zl!343))))

(assert (=> d!1837448 (= (unfocusZipperList!1338 zl!343) lt!2304373)))

(declare-fun b!5850530 () Bool)

(assert (=> b!5850530 (= e!3587789 (Cons!63926 (generalisedConcat!1514 (exprs!5801 (h!70375 zl!343))) (unfocusZipperList!1338 (t!377412 zl!343))))))

(declare-fun b!5850531 () Bool)

(assert (=> b!5850531 (= e!3587789 Nil!63926)))

(assert (= (and d!1837448 c!1037037) b!5850530))

(assert (= (and d!1837448 (not c!1037037)) b!5850531))

(declare-fun m!6770560 () Bool)

(assert (=> d!1837448 m!6770560))

(assert (=> b!5850530 m!6770238))

(declare-fun m!6770562 () Bool)

(assert (=> b!5850530 m!6770562))

(assert (=> b!5849981 d!1837448))

(declare-fun bm!457780 () Bool)

(declare-fun call!457785 () (InoxSet Context!10602))

(declare-fun call!457788 () (InoxSet Context!10602))

(assert (=> bm!457780 (= call!457785 call!457788)))

(declare-fun c!1037051 () Bool)

(declare-fun bm!457781 () Bool)

(declare-fun c!1037052 () Bool)

(declare-fun call!457790 () List!64050)

(declare-fun $colon$colon!1822 (List!64050 Regex!15917) List!64050)

(assert (=> bm!457781 (= call!457790 ($colon$colon!1822 (exprs!5801 lt!2304315) (ite (or c!1037052 c!1037051) (regTwo!32346 (regTwo!32347 r!7292)) (regTwo!32347 r!7292))))))

(declare-fun b!5850555 () Bool)

(declare-fun e!3587807 () (InoxSet Context!10602))

(declare-fun e!3587802 () (InoxSet Context!10602))

(assert (=> b!5850555 (= e!3587807 e!3587802)))

(assert (=> b!5850555 (= c!1037051 ((_ is Concat!24762) (regTwo!32347 r!7292)))))

(declare-fun bm!457782 () Bool)

(declare-fun c!1037048 () Bool)

(declare-fun call!457786 () (InoxSet Context!10602))

(assert (=> bm!457782 (= call!457786 (derivationStepZipperDown!1183 (ite c!1037048 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292))) (ite c!1037048 lt!2304315 (Context!10603 call!457790)) (h!70376 s!2326)))))

(declare-fun b!5850556 () Bool)

(assert (=> b!5850556 (= e!3587802 call!457785)))

(declare-fun call!457789 () (InoxSet Context!10602))

(declare-fun bm!457783 () Bool)

(declare-fun call!457787 () List!64050)

(assert (=> bm!457783 (= call!457789 (derivationStepZipperDown!1183 (ite c!1037048 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037052 (regTwo!32346 (regTwo!32347 r!7292)) (ite c!1037051 (regOne!32346 (regTwo!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292))))) (ite (or c!1037048 c!1037052) lt!2304315 (Context!10603 call!457787)) (h!70376 s!2326)))))

(declare-fun b!5850557 () Bool)

(declare-fun c!1037049 () Bool)

(assert (=> b!5850557 (= c!1037049 ((_ is Star!15917) (regTwo!32347 r!7292)))))

(declare-fun e!3587805 () (InoxSet Context!10602))

(assert (=> b!5850557 (= e!3587802 e!3587805)))

(declare-fun b!5850558 () Bool)

(declare-fun e!3587806 () (InoxSet Context!10602))

(assert (=> b!5850558 (= e!3587806 (store ((as const (Array Context!10602 Bool)) false) lt!2304315 true))))

(declare-fun b!5850559 () Bool)

(declare-fun e!3587803 () (InoxSet Context!10602))

(assert (=> b!5850559 (= e!3587803 ((_ map or) call!457786 call!457789))))

(declare-fun b!5850560 () Bool)

(declare-fun e!3587804 () Bool)

(assert (=> b!5850560 (= c!1037052 e!3587804)))

(declare-fun res!2463264 () Bool)

(assert (=> b!5850560 (=> (not res!2463264) (not e!3587804))))

(assert (=> b!5850560 (= res!2463264 ((_ is Concat!24762) (regTwo!32347 r!7292)))))

(assert (=> b!5850560 (= e!3587803 e!3587807)))

(declare-fun bm!457784 () Bool)

(assert (=> bm!457784 (= call!457787 call!457790)))

(declare-fun b!5850561 () Bool)

(assert (=> b!5850561 (= e!3587804 (nullable!5917 (regOne!32346 (regTwo!32347 r!7292))))))

(declare-fun bm!457785 () Bool)

(assert (=> bm!457785 (= call!457788 call!457789)))

(declare-fun b!5850562 () Bool)

(assert (=> b!5850562 (= e!3587807 ((_ map or) call!457786 call!457788))))

(declare-fun b!5850554 () Bool)

(assert (=> b!5850554 (= e!3587805 ((as const (Array Context!10602 Bool)) false))))

(declare-fun d!1837450 () Bool)

(declare-fun c!1037050 () Bool)

(assert (=> d!1837450 (= c!1037050 (and ((_ is ElementMatch!15917) (regTwo!32347 r!7292)) (= (c!1036885 (regTwo!32347 r!7292)) (h!70376 s!2326))))))

(assert (=> d!1837450 (= (derivationStepZipperDown!1183 (regTwo!32347 r!7292) lt!2304315 (h!70376 s!2326)) e!3587806)))

(declare-fun b!5850563 () Bool)

(assert (=> b!5850563 (= e!3587805 call!457785)))

(declare-fun b!5850564 () Bool)

(assert (=> b!5850564 (= e!3587806 e!3587803)))

(assert (=> b!5850564 (= c!1037048 ((_ is Union!15917) (regTwo!32347 r!7292)))))

(assert (= (and d!1837450 c!1037050) b!5850558))

(assert (= (and d!1837450 (not c!1037050)) b!5850564))

(assert (= (and b!5850564 c!1037048) b!5850559))

(assert (= (and b!5850564 (not c!1037048)) b!5850560))

(assert (= (and b!5850560 res!2463264) b!5850561))

(assert (= (and b!5850560 c!1037052) b!5850562))

(assert (= (and b!5850560 (not c!1037052)) b!5850555))

(assert (= (and b!5850555 c!1037051) b!5850556))

(assert (= (and b!5850555 (not c!1037051)) b!5850557))

(assert (= (and b!5850557 c!1037049) b!5850563))

(assert (= (and b!5850557 (not c!1037049)) b!5850554))

(assert (= (or b!5850556 b!5850563) bm!457784))

(assert (= (or b!5850556 b!5850563) bm!457780))

(assert (= (or b!5850562 bm!457784) bm!457781))

(assert (= (or b!5850562 bm!457780) bm!457785))

(assert (= (or b!5850559 bm!457785) bm!457783))

(assert (= (or b!5850559 b!5850562) bm!457782))

(declare-fun m!6770564 () Bool)

(assert (=> bm!457782 m!6770564))

(declare-fun m!6770566 () Bool)

(assert (=> bm!457781 m!6770566))

(declare-fun m!6770568 () Bool)

(assert (=> b!5850561 m!6770568))

(declare-fun m!6770570 () Bool)

(assert (=> b!5850558 m!6770570))

(declare-fun m!6770572 () Bool)

(assert (=> bm!457783 m!6770572))

(assert (=> b!5849989 d!1837450))

(declare-fun bm!457786 () Bool)

(declare-fun call!457791 () (InoxSet Context!10602))

(declare-fun call!457794 () (InoxSet Context!10602))

(assert (=> bm!457786 (= call!457791 call!457794)))

(declare-fun c!1037057 () Bool)

(declare-fun bm!457787 () Bool)

(declare-fun c!1037056 () Bool)

(declare-fun call!457796 () List!64050)

(assert (=> bm!457787 (= call!457796 ($colon$colon!1822 (exprs!5801 lt!2304315) (ite (or c!1037057 c!1037056) (regTwo!32346 (regOne!32347 r!7292)) (regOne!32347 r!7292))))))

(declare-fun b!5850566 () Bool)

(declare-fun e!3587813 () (InoxSet Context!10602))

(declare-fun e!3587808 () (InoxSet Context!10602))

(assert (=> b!5850566 (= e!3587813 e!3587808)))

(assert (=> b!5850566 (= c!1037056 ((_ is Concat!24762) (regOne!32347 r!7292)))))

(declare-fun c!1037053 () Bool)

(declare-fun bm!457788 () Bool)

(declare-fun call!457792 () (InoxSet Context!10602))

(assert (=> bm!457788 (= call!457792 (derivationStepZipperDown!1183 (ite c!1037053 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292))) (ite c!1037053 lt!2304315 (Context!10603 call!457796)) (h!70376 s!2326)))))

(declare-fun b!5850567 () Bool)

(assert (=> b!5850567 (= e!3587808 call!457791)))

(declare-fun call!457793 () List!64050)

(declare-fun call!457795 () (InoxSet Context!10602))

(declare-fun bm!457789 () Bool)

(assert (=> bm!457789 (= call!457795 (derivationStepZipperDown!1183 (ite c!1037053 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037057 (regTwo!32346 (regOne!32347 r!7292)) (ite c!1037056 (regOne!32346 (regOne!32347 r!7292)) (reg!16246 (regOne!32347 r!7292))))) (ite (or c!1037053 c!1037057) lt!2304315 (Context!10603 call!457793)) (h!70376 s!2326)))))

(declare-fun b!5850568 () Bool)

(declare-fun c!1037054 () Bool)

(assert (=> b!5850568 (= c!1037054 ((_ is Star!15917) (regOne!32347 r!7292)))))

(declare-fun e!3587811 () (InoxSet Context!10602))

(assert (=> b!5850568 (= e!3587808 e!3587811)))

(declare-fun b!5850569 () Bool)

(declare-fun e!3587812 () (InoxSet Context!10602))

(assert (=> b!5850569 (= e!3587812 (store ((as const (Array Context!10602 Bool)) false) lt!2304315 true))))

(declare-fun b!5850570 () Bool)

(declare-fun e!3587809 () (InoxSet Context!10602))

(assert (=> b!5850570 (= e!3587809 ((_ map or) call!457792 call!457795))))

(declare-fun b!5850571 () Bool)

(declare-fun e!3587810 () Bool)

(assert (=> b!5850571 (= c!1037057 e!3587810)))

(declare-fun res!2463265 () Bool)

(assert (=> b!5850571 (=> (not res!2463265) (not e!3587810))))

(assert (=> b!5850571 (= res!2463265 ((_ is Concat!24762) (regOne!32347 r!7292)))))

(assert (=> b!5850571 (= e!3587809 e!3587813)))

(declare-fun bm!457790 () Bool)

(assert (=> bm!457790 (= call!457793 call!457796)))

(declare-fun b!5850572 () Bool)

(assert (=> b!5850572 (= e!3587810 (nullable!5917 (regOne!32346 (regOne!32347 r!7292))))))

(declare-fun bm!457791 () Bool)

(assert (=> bm!457791 (= call!457794 call!457795)))

(declare-fun b!5850573 () Bool)

(assert (=> b!5850573 (= e!3587813 ((_ map or) call!457792 call!457794))))

(declare-fun b!5850565 () Bool)

(assert (=> b!5850565 (= e!3587811 ((as const (Array Context!10602 Bool)) false))))

(declare-fun d!1837452 () Bool)

(declare-fun c!1037055 () Bool)

(assert (=> d!1837452 (= c!1037055 (and ((_ is ElementMatch!15917) (regOne!32347 r!7292)) (= (c!1036885 (regOne!32347 r!7292)) (h!70376 s!2326))))))

(assert (=> d!1837452 (= (derivationStepZipperDown!1183 (regOne!32347 r!7292) lt!2304315 (h!70376 s!2326)) e!3587812)))

(declare-fun b!5850574 () Bool)

(assert (=> b!5850574 (= e!3587811 call!457791)))

(declare-fun b!5850575 () Bool)

(assert (=> b!5850575 (= e!3587812 e!3587809)))

(assert (=> b!5850575 (= c!1037053 ((_ is Union!15917) (regOne!32347 r!7292)))))

(assert (= (and d!1837452 c!1037055) b!5850569))

(assert (= (and d!1837452 (not c!1037055)) b!5850575))

(assert (= (and b!5850575 c!1037053) b!5850570))

(assert (= (and b!5850575 (not c!1037053)) b!5850571))

(assert (= (and b!5850571 res!2463265) b!5850572))

(assert (= (and b!5850571 c!1037057) b!5850573))

(assert (= (and b!5850571 (not c!1037057)) b!5850566))

(assert (= (and b!5850566 c!1037056) b!5850567))

(assert (= (and b!5850566 (not c!1037056)) b!5850568))

(assert (= (and b!5850568 c!1037054) b!5850574))

(assert (= (and b!5850568 (not c!1037054)) b!5850565))

(assert (= (or b!5850567 b!5850574) bm!457790))

(assert (= (or b!5850567 b!5850574) bm!457786))

(assert (= (or b!5850573 bm!457790) bm!457787))

(assert (= (or b!5850573 bm!457786) bm!457791))

(assert (= (or b!5850570 bm!457791) bm!457789))

(assert (= (or b!5850570 b!5850573) bm!457788))

(declare-fun m!6770574 () Bool)

(assert (=> bm!457788 m!6770574))

(declare-fun m!6770576 () Bool)

(assert (=> bm!457787 m!6770576))

(declare-fun m!6770578 () Bool)

(assert (=> b!5850572 m!6770578))

(assert (=> b!5850569 m!6770570))

(declare-fun m!6770580 () Bool)

(assert (=> bm!457789 m!6770580))

(assert (=> b!5849989 d!1837452))

(declare-fun bs!1378509 () Bool)

(declare-fun d!1837454 () Bool)

(assert (= bs!1378509 (and d!1837454 d!1837446)))

(declare-fun lambda!319896 () Int)

(assert (=> bs!1378509 (= lambda!319896 lambda!319890)))

(declare-fun bs!1378510 () Bool)

(assert (= bs!1378510 (and d!1837454 d!1837448)))

(assert (=> bs!1378510 (= lambda!319896 lambda!319893)))

(assert (=> d!1837454 (= (inv!83039 setElem!39630) (forall!15004 (exprs!5801 setElem!39630) lambda!319896))))

(declare-fun bs!1378511 () Bool)

(assert (= bs!1378511 d!1837454))

(declare-fun m!6770582 () Bool)

(assert (=> bs!1378511 m!6770582))

(assert (=> setNonEmpty!39630 d!1837454))

(declare-fun d!1837456 () Bool)

(declare-fun c!1037060 () Bool)

(assert (=> d!1837456 (= c!1037060 (isEmpty!35787 (t!377413 s!2326)))))

(declare-fun e!3587816 () Bool)

(assert (=> d!1837456 (= (matchZipper!1983 lt!2304312 (t!377413 s!2326)) e!3587816)))

(declare-fun b!5850580 () Bool)

(declare-fun nullableZipper!1756 ((InoxSet Context!10602)) Bool)

(assert (=> b!5850580 (= e!3587816 (nullableZipper!1756 lt!2304312))))

(declare-fun b!5850581 () Bool)

(assert (=> b!5850581 (= e!3587816 (matchZipper!1983 (derivationStepZipper!1916 lt!2304312 (head!12388 (t!377413 s!2326))) (tail!11473 (t!377413 s!2326))))))

(assert (= (and d!1837456 c!1037060) b!5850580))

(assert (= (and d!1837456 (not c!1037060)) b!5850581))

(declare-fun m!6770584 () Bool)

(assert (=> d!1837456 m!6770584))

(declare-fun m!6770586 () Bool)

(assert (=> b!5850580 m!6770586))

(declare-fun m!6770588 () Bool)

(assert (=> b!5850581 m!6770588))

(assert (=> b!5850581 m!6770588))

(declare-fun m!6770590 () Bool)

(assert (=> b!5850581 m!6770590))

(declare-fun m!6770592 () Bool)

(assert (=> b!5850581 m!6770592))

(assert (=> b!5850581 m!6770590))

(assert (=> b!5850581 m!6770592))

(declare-fun m!6770594 () Bool)

(assert (=> b!5850581 m!6770594))

(assert (=> b!5849977 d!1837456))

(declare-fun d!1837458 () Bool)

(declare-fun c!1037061 () Bool)

(assert (=> d!1837458 (= c!1037061 (isEmpty!35787 (t!377413 s!2326)))))

(declare-fun e!3587817 () Bool)

(assert (=> d!1837458 (= (matchZipper!1983 lt!2304313 (t!377413 s!2326)) e!3587817)))

(declare-fun b!5850582 () Bool)

(assert (=> b!5850582 (= e!3587817 (nullableZipper!1756 lt!2304313))))

(declare-fun b!5850583 () Bool)

(assert (=> b!5850583 (= e!3587817 (matchZipper!1983 (derivationStepZipper!1916 lt!2304313 (head!12388 (t!377413 s!2326))) (tail!11473 (t!377413 s!2326))))))

(assert (= (and d!1837458 c!1037061) b!5850582))

(assert (= (and d!1837458 (not c!1037061)) b!5850583))

(assert (=> d!1837458 m!6770584))

(declare-fun m!6770596 () Bool)

(assert (=> b!5850582 m!6770596))

(assert (=> b!5850583 m!6770588))

(assert (=> b!5850583 m!6770588))

(declare-fun m!6770598 () Bool)

(assert (=> b!5850583 m!6770598))

(assert (=> b!5850583 m!6770592))

(assert (=> b!5850583 m!6770598))

(assert (=> b!5850583 m!6770592))

(declare-fun m!6770600 () Bool)

(assert (=> b!5850583 m!6770600))

(assert (=> b!5849986 d!1837458))

(declare-fun d!1837460 () Bool)

(declare-fun e!3587820 () Bool)

(assert (=> d!1837460 (= (matchZipper!1983 ((_ map or) lt!2304313 lt!2304312) (t!377413 s!2326)) e!3587820)))

(declare-fun res!2463268 () Bool)

(assert (=> d!1837460 (=> res!2463268 e!3587820)))

(assert (=> d!1837460 (= res!2463268 (matchZipper!1983 lt!2304313 (t!377413 s!2326)))))

(declare-fun lt!2304376 () Unit!157105)

(declare-fun choose!44370 ((InoxSet Context!10602) (InoxSet Context!10602) List!64052) Unit!157105)

(assert (=> d!1837460 (= lt!2304376 (choose!44370 lt!2304313 lt!2304312 (t!377413 s!2326)))))

(assert (=> d!1837460 (= (lemmaZipperConcatMatchesSameAsBothZippers!818 lt!2304313 lt!2304312 (t!377413 s!2326)) lt!2304376)))

(declare-fun b!5850586 () Bool)

(assert (=> b!5850586 (= e!3587820 (matchZipper!1983 lt!2304312 (t!377413 s!2326)))))

(assert (= (and d!1837460 (not res!2463268)) b!5850586))

(declare-fun m!6770602 () Bool)

(assert (=> d!1837460 m!6770602))

(assert (=> d!1837460 m!6770282))

(declare-fun m!6770604 () Bool)

(assert (=> d!1837460 m!6770604))

(assert (=> b!5850586 m!6770244))

(assert (=> b!5849986 d!1837460))

(declare-fun bm!457792 () Bool)

(declare-fun call!457797 () (InoxSet Context!10602))

(declare-fun call!457800 () (InoxSet Context!10602))

(assert (=> bm!457792 (= call!457797 call!457800)))

(declare-fun bm!457793 () Bool)

(declare-fun c!1037066 () Bool)

(declare-fun c!1037065 () Bool)

(declare-fun call!457802 () List!64050)

(assert (=> bm!457793 (= call!457802 ($colon$colon!1822 (exprs!5801 lt!2304315) (ite (or c!1037066 c!1037065) (regTwo!32346 r!7292) r!7292)))))

(declare-fun b!5850588 () Bool)

(declare-fun e!3587826 () (InoxSet Context!10602))

(declare-fun e!3587821 () (InoxSet Context!10602))

(assert (=> b!5850588 (= e!3587826 e!3587821)))

(assert (=> b!5850588 (= c!1037065 ((_ is Concat!24762) r!7292))))

(declare-fun call!457798 () (InoxSet Context!10602))

(declare-fun bm!457794 () Bool)

(declare-fun c!1037062 () Bool)

(assert (=> bm!457794 (= call!457798 (derivationStepZipperDown!1183 (ite c!1037062 (regOne!32347 r!7292) (regOne!32346 r!7292)) (ite c!1037062 lt!2304315 (Context!10603 call!457802)) (h!70376 s!2326)))))

(declare-fun b!5850589 () Bool)

(assert (=> b!5850589 (= e!3587821 call!457797)))

(declare-fun bm!457795 () Bool)

(declare-fun call!457801 () (InoxSet Context!10602))

(declare-fun call!457799 () List!64050)

(assert (=> bm!457795 (= call!457801 (derivationStepZipperDown!1183 (ite c!1037062 (regTwo!32347 r!7292) (ite c!1037066 (regTwo!32346 r!7292) (ite c!1037065 (regOne!32346 r!7292) (reg!16246 r!7292)))) (ite (or c!1037062 c!1037066) lt!2304315 (Context!10603 call!457799)) (h!70376 s!2326)))))

(declare-fun b!5850590 () Bool)

(declare-fun c!1037063 () Bool)

(assert (=> b!5850590 (= c!1037063 ((_ is Star!15917) r!7292))))

(declare-fun e!3587824 () (InoxSet Context!10602))

(assert (=> b!5850590 (= e!3587821 e!3587824)))

(declare-fun b!5850591 () Bool)

(declare-fun e!3587825 () (InoxSet Context!10602))

(assert (=> b!5850591 (= e!3587825 (store ((as const (Array Context!10602 Bool)) false) lt!2304315 true))))

(declare-fun b!5850592 () Bool)

(declare-fun e!3587822 () (InoxSet Context!10602))

(assert (=> b!5850592 (= e!3587822 ((_ map or) call!457798 call!457801))))

(declare-fun b!5850593 () Bool)

(declare-fun e!3587823 () Bool)

(assert (=> b!5850593 (= c!1037066 e!3587823)))

(declare-fun res!2463269 () Bool)

(assert (=> b!5850593 (=> (not res!2463269) (not e!3587823))))

(assert (=> b!5850593 (= res!2463269 ((_ is Concat!24762) r!7292))))

(assert (=> b!5850593 (= e!3587822 e!3587826)))

(declare-fun bm!457796 () Bool)

(assert (=> bm!457796 (= call!457799 call!457802)))

(declare-fun b!5850594 () Bool)

(assert (=> b!5850594 (= e!3587823 (nullable!5917 (regOne!32346 r!7292)))))

(declare-fun bm!457797 () Bool)

(assert (=> bm!457797 (= call!457800 call!457801)))

(declare-fun b!5850595 () Bool)

(assert (=> b!5850595 (= e!3587826 ((_ map or) call!457798 call!457800))))

(declare-fun b!5850587 () Bool)

(assert (=> b!5850587 (= e!3587824 ((as const (Array Context!10602 Bool)) false))))

(declare-fun d!1837462 () Bool)

(declare-fun c!1037064 () Bool)

(assert (=> d!1837462 (= c!1037064 (and ((_ is ElementMatch!15917) r!7292) (= (c!1036885 r!7292) (h!70376 s!2326))))))

(assert (=> d!1837462 (= (derivationStepZipperDown!1183 r!7292 lt!2304315 (h!70376 s!2326)) e!3587825)))

(declare-fun b!5850596 () Bool)

(assert (=> b!5850596 (= e!3587824 call!457797)))

(declare-fun b!5850597 () Bool)

(assert (=> b!5850597 (= e!3587825 e!3587822)))

(assert (=> b!5850597 (= c!1037062 ((_ is Union!15917) r!7292))))

(assert (= (and d!1837462 c!1037064) b!5850591))

(assert (= (and d!1837462 (not c!1037064)) b!5850597))

(assert (= (and b!5850597 c!1037062) b!5850592))

(assert (= (and b!5850597 (not c!1037062)) b!5850593))

(assert (= (and b!5850593 res!2463269) b!5850594))

(assert (= (and b!5850593 c!1037066) b!5850595))

(assert (= (and b!5850593 (not c!1037066)) b!5850588))

(assert (= (and b!5850588 c!1037065) b!5850589))

(assert (= (and b!5850588 (not c!1037065)) b!5850590))

(assert (= (and b!5850590 c!1037063) b!5850596))

(assert (= (and b!5850590 (not c!1037063)) b!5850587))

(assert (= (or b!5850589 b!5850596) bm!457796))

(assert (= (or b!5850589 b!5850596) bm!457792))

(assert (= (or b!5850595 bm!457796) bm!457793))

(assert (= (or b!5850595 bm!457792) bm!457797))

(assert (= (or b!5850592 bm!457797) bm!457795))

(assert (= (or b!5850592 b!5850595) bm!457794))

(declare-fun m!6770606 () Bool)

(assert (=> bm!457794 m!6770606))

(declare-fun m!6770608 () Bool)

(assert (=> bm!457793 m!6770608))

(declare-fun m!6770610 () Bool)

(assert (=> b!5850594 m!6770610))

(assert (=> b!5850591 m!6770570))

(declare-fun m!6770612 () Bool)

(assert (=> bm!457795 m!6770612))

(assert (=> b!5849998 d!1837462))

(declare-fun b!5850608 () Bool)

(declare-fun e!3587835 () Bool)

(assert (=> b!5850608 (= e!3587835 (nullable!5917 (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))))))

(declare-fun b!5850609 () Bool)

(declare-fun e!3587833 () (InoxSet Context!10602))

(declare-fun call!457805 () (InoxSet Context!10602))

(assert (=> b!5850609 (= e!3587833 ((_ map or) call!457805 (derivationStepZipperUp!1109 (Context!10603 (t!377411 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))) (h!70376 s!2326))))))

(declare-fun d!1837464 () Bool)

(declare-fun c!1037072 () Bool)

(assert (=> d!1837464 (= c!1037072 e!3587835)))

(declare-fun res!2463272 () Bool)

(assert (=> d!1837464 (=> (not res!2463272) (not e!3587835))))

(assert (=> d!1837464 (= res!2463272 ((_ is Cons!63926) (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926)))))))

(assert (=> d!1837464 (= (derivationStepZipperUp!1109 (Context!10603 (Cons!63926 r!7292 Nil!63926)) (h!70376 s!2326)) e!3587833)))

(declare-fun bm!457800 () Bool)

(assert (=> bm!457800 (= call!457805 (derivationStepZipperDown!1183 (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926)))) (Context!10603 (t!377411 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))) (h!70376 s!2326)))))

(declare-fun b!5850610 () Bool)

(declare-fun e!3587834 () (InoxSet Context!10602))

(assert (=> b!5850610 (= e!3587834 ((as const (Array Context!10602 Bool)) false))))

(declare-fun b!5850611 () Bool)

(assert (=> b!5850611 (= e!3587833 e!3587834)))

(declare-fun c!1037071 () Bool)

(assert (=> b!5850611 (= c!1037071 ((_ is Cons!63926) (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926)))))))

(declare-fun b!5850612 () Bool)

(assert (=> b!5850612 (= e!3587834 call!457805)))

(assert (= (and d!1837464 res!2463272) b!5850608))

(assert (= (and d!1837464 c!1037072) b!5850609))

(assert (= (and d!1837464 (not c!1037072)) b!5850611))

(assert (= (and b!5850611 c!1037071) b!5850612))

(assert (= (and b!5850611 (not c!1037071)) b!5850610))

(assert (= (or b!5850609 b!5850612) bm!457800))

(declare-fun m!6770614 () Bool)

(assert (=> b!5850608 m!6770614))

(declare-fun m!6770616 () Bool)

(assert (=> b!5850609 m!6770616))

(declare-fun m!6770618 () Bool)

(assert (=> bm!457800 m!6770618))

(assert (=> b!5849998 d!1837464))

(declare-fun bs!1378512 () Bool)

(declare-fun d!1837466 () Bool)

(assert (= bs!1378512 (and d!1837466 d!1837446)))

(declare-fun lambda!319897 () Int)

(assert (=> bs!1378512 (= lambda!319897 lambda!319890)))

(declare-fun bs!1378513 () Bool)

(assert (= bs!1378513 (and d!1837466 d!1837448)))

(assert (=> bs!1378513 (= lambda!319897 lambda!319893)))

(declare-fun bs!1378514 () Bool)

(assert (= bs!1378514 (and d!1837466 d!1837454)))

(assert (=> bs!1378514 (= lambda!319897 lambda!319896)))

(assert (=> d!1837466 (= (inv!83039 (Context!10603 (Cons!63926 (regOne!32347 r!7292) Nil!63926))) (forall!15004 (exprs!5801 (Context!10603 (Cons!63926 (regOne!32347 r!7292) Nil!63926))) lambda!319897))))

(declare-fun bs!1378515 () Bool)

(assert (= bs!1378515 d!1837466))

(declare-fun m!6770620 () Bool)

(assert (=> bs!1378515 m!6770620))

(assert (=> b!5849978 d!1837466))

(declare-fun d!1837468 () Bool)

(declare-fun c!1037073 () Bool)

(assert (=> d!1837468 (= c!1037073 (isEmpty!35787 s!2326))))

(declare-fun e!3587836 () Bool)

(assert (=> d!1837468 (= (matchZipper!1983 z!1189 s!2326) e!3587836)))

(declare-fun b!5850613 () Bool)

(assert (=> b!5850613 (= e!3587836 (nullableZipper!1756 z!1189))))

(declare-fun b!5850614 () Bool)

(assert (=> b!5850614 (= e!3587836 (matchZipper!1983 (derivationStepZipper!1916 z!1189 (head!12388 s!2326)) (tail!11473 s!2326)))))

(assert (= (and d!1837468 c!1037073) b!5850613))

(assert (= (and d!1837468 (not c!1037073)) b!5850614))

(assert (=> d!1837468 m!6770506))

(declare-fun m!6770622 () Bool)

(assert (=> b!5850613 m!6770622))

(assert (=> b!5850614 m!6770518))

(assert (=> b!5850614 m!6770518))

(declare-fun m!6770624 () Bool)

(assert (=> b!5850614 m!6770624))

(assert (=> b!5850614 m!6770514))

(assert (=> b!5850614 m!6770624))

(assert (=> b!5850614 m!6770514))

(declare-fun m!6770626 () Bool)

(assert (=> b!5850614 m!6770626))

(assert (=> b!5849997 d!1837468))

(declare-fun d!1837470 () Bool)

(declare-fun c!1037074 () Bool)

(assert (=> d!1837470 (= c!1037074 (isEmpty!35787 (t!377413 s!2326)))))

(declare-fun e!3587837 () Bool)

(assert (=> d!1837470 (= (matchZipper!1983 lt!2304321 (t!377413 s!2326)) e!3587837)))

(declare-fun b!5850615 () Bool)

(assert (=> b!5850615 (= e!3587837 (nullableZipper!1756 lt!2304321))))

(declare-fun b!5850616 () Bool)

(assert (=> b!5850616 (= e!3587837 (matchZipper!1983 (derivationStepZipper!1916 lt!2304321 (head!12388 (t!377413 s!2326))) (tail!11473 (t!377413 s!2326))))))

(assert (= (and d!1837470 c!1037074) b!5850615))

(assert (= (and d!1837470 (not c!1037074)) b!5850616))

(assert (=> d!1837470 m!6770584))

(declare-fun m!6770628 () Bool)

(assert (=> b!5850615 m!6770628))

(assert (=> b!5850616 m!6770588))

(assert (=> b!5850616 m!6770588))

(declare-fun m!6770630 () Bool)

(assert (=> b!5850616 m!6770630))

(assert (=> b!5850616 m!6770592))

(assert (=> b!5850616 m!6770630))

(assert (=> b!5850616 m!6770592))

(declare-fun m!6770632 () Bool)

(assert (=> b!5850616 m!6770632))

(assert (=> b!5849997 d!1837470))

(declare-fun bs!1378516 () Bool)

(declare-fun d!1837472 () Bool)

(assert (= bs!1378516 (and d!1837472 d!1837446)))

(declare-fun lambda!319898 () Int)

(assert (=> bs!1378516 (= lambda!319898 lambda!319890)))

(declare-fun bs!1378517 () Bool)

(assert (= bs!1378517 (and d!1837472 d!1837448)))

(assert (=> bs!1378517 (= lambda!319898 lambda!319893)))

(declare-fun bs!1378518 () Bool)

(assert (= bs!1378518 (and d!1837472 d!1837454)))

(assert (=> bs!1378518 (= lambda!319898 lambda!319896)))

(declare-fun bs!1378519 () Bool)

(assert (= bs!1378519 (and d!1837472 d!1837466)))

(assert (=> bs!1378519 (= lambda!319898 lambda!319897)))

(assert (=> d!1837472 (= (inv!83039 (h!70375 zl!343)) (forall!15004 (exprs!5801 (h!70375 zl!343)) lambda!319898))))

(declare-fun bs!1378520 () Bool)

(assert (= bs!1378520 d!1837472))

(declare-fun m!6770634 () Bool)

(assert (=> bs!1378520 m!6770634))

(assert (=> b!5849985 d!1837472))

(declare-fun bs!1378521 () Bool)

(declare-fun b!5850622 () Bool)

(assert (= bs!1378521 (and b!5850622 b!5850419)))

(declare-fun lambda!319899 () Int)

(assert (=> bs!1378521 (= (and (= (reg!16246 r!7292) (reg!16246 (regTwo!32347 r!7292))) (= r!7292 (regTwo!32347 r!7292))) (= lambda!319899 lambda!319884))))

(declare-fun bs!1378522 () Bool)

(assert (= bs!1378522 (and b!5850622 b!5850423)))

(assert (=> bs!1378522 (not (= lambda!319899 lambda!319885))))

(declare-fun bs!1378523 () Bool)

(assert (= bs!1378523 (and b!5850622 b!5850476)))

(assert (=> bs!1378523 (= (and (= (reg!16246 r!7292) (reg!16246 (regOne!32347 r!7292))) (= r!7292 (regOne!32347 r!7292))) (= lambda!319899 lambda!319886))))

(declare-fun bs!1378524 () Bool)

(assert (= bs!1378524 (and b!5850622 b!5850480)))

(assert (=> bs!1378524 (not (= lambda!319899 lambda!319887))))

(assert (=> b!5850622 true))

(assert (=> b!5850622 true))

(declare-fun bs!1378525 () Bool)

(declare-fun b!5850626 () Bool)

(assert (= bs!1378525 (and b!5850626 b!5850423)))

(declare-fun lambda!319900 () Int)

(assert (=> bs!1378525 (= (and (= (regOne!32346 r!7292) (regOne!32346 (regTwo!32347 r!7292))) (= (regTwo!32346 r!7292) (regTwo!32346 (regTwo!32347 r!7292)))) (= lambda!319900 lambda!319885))))

(declare-fun bs!1378526 () Bool)

(assert (= bs!1378526 (and b!5850626 b!5850419)))

(assert (=> bs!1378526 (not (= lambda!319900 lambda!319884))))

(declare-fun bs!1378527 () Bool)

(assert (= bs!1378527 (and b!5850626 b!5850476)))

(assert (=> bs!1378527 (not (= lambda!319900 lambda!319886))))

(declare-fun bs!1378528 () Bool)

(assert (= bs!1378528 (and b!5850626 b!5850622)))

(assert (=> bs!1378528 (not (= lambda!319900 lambda!319899))))

(declare-fun bs!1378529 () Bool)

(assert (= bs!1378529 (and b!5850626 b!5850480)))

(assert (=> bs!1378529 (= (and (= (regOne!32346 r!7292) (regOne!32346 (regOne!32347 r!7292))) (= (regTwo!32346 r!7292) (regTwo!32346 (regOne!32347 r!7292)))) (= lambda!319900 lambda!319887))))

(assert (=> b!5850626 true))

(assert (=> b!5850626 true))

(declare-fun b!5850617 () Bool)

(declare-fun e!3587838 () Bool)

(assert (=> b!5850617 (= e!3587838 (= s!2326 (Cons!63928 (c!1036885 r!7292) Nil!63928)))))

(declare-fun b!5850618 () Bool)

(declare-fun e!3587839 () Bool)

(declare-fun e!3587841 () Bool)

(assert (=> b!5850618 (= e!3587839 e!3587841)))

(declare-fun c!1037076 () Bool)

(assert (=> b!5850618 (= c!1037076 ((_ is Star!15917) r!7292))))

(declare-fun b!5850619 () Bool)

(declare-fun e!3587840 () Bool)

(assert (=> b!5850619 (= e!3587839 e!3587840)))

(declare-fun res!2463273 () Bool)

(assert (=> b!5850619 (= res!2463273 (matchRSpec!3018 (regOne!32347 r!7292) s!2326))))

(assert (=> b!5850619 (=> res!2463273 e!3587840)))

(declare-fun b!5850620 () Bool)

(declare-fun c!1037077 () Bool)

(assert (=> b!5850620 (= c!1037077 ((_ is ElementMatch!15917) r!7292))))

(declare-fun e!3587842 () Bool)

(assert (=> b!5850620 (= e!3587842 e!3587838)))

(declare-fun call!457806 () Bool)

(declare-fun bm!457801 () Bool)

(assert (=> bm!457801 (= call!457806 (Exists!2989 (ite c!1037076 lambda!319899 lambda!319900)))))

(declare-fun b!5850621 () Bool)

(declare-fun c!1037075 () Bool)

(assert (=> b!5850621 (= c!1037075 ((_ is Union!15917) r!7292))))

(assert (=> b!5850621 (= e!3587838 e!3587839)))

(declare-fun e!3587844 () Bool)

(assert (=> b!5850622 (= e!3587844 call!457806)))

(declare-fun b!5850623 () Bool)

(assert (=> b!5850623 (= e!3587840 (matchRSpec!3018 (regTwo!32347 r!7292) s!2326))))

(declare-fun b!5850624 () Bool)

(declare-fun res!2463274 () Bool)

(assert (=> b!5850624 (=> res!2463274 e!3587844)))

(declare-fun call!457807 () Bool)

(assert (=> b!5850624 (= res!2463274 call!457807)))

(assert (=> b!5850624 (= e!3587841 e!3587844)))

(declare-fun d!1837474 () Bool)

(declare-fun c!1037078 () Bool)

(assert (=> d!1837474 (= c!1037078 ((_ is EmptyExpr!15917) r!7292))))

(declare-fun e!3587843 () Bool)

(assert (=> d!1837474 (= (matchRSpec!3018 r!7292 s!2326) e!3587843)))

(declare-fun b!5850625 () Bool)

(assert (=> b!5850625 (= e!3587843 call!457807)))

(assert (=> b!5850626 (= e!3587841 call!457806)))

(declare-fun bm!457802 () Bool)

(assert (=> bm!457802 (= call!457807 (isEmpty!35787 s!2326))))

(declare-fun b!5850627 () Bool)

(assert (=> b!5850627 (= e!3587843 e!3587842)))

(declare-fun res!2463275 () Bool)

(assert (=> b!5850627 (= res!2463275 (not ((_ is EmptyLang!15917) r!7292)))))

(assert (=> b!5850627 (=> (not res!2463275) (not e!3587842))))

(assert (= (and d!1837474 c!1037078) b!5850625))

(assert (= (and d!1837474 (not c!1037078)) b!5850627))

(assert (= (and b!5850627 res!2463275) b!5850620))

(assert (= (and b!5850620 c!1037077) b!5850617))

(assert (= (and b!5850620 (not c!1037077)) b!5850621))

(assert (= (and b!5850621 c!1037075) b!5850619))

(assert (= (and b!5850621 (not c!1037075)) b!5850618))

(assert (= (and b!5850619 (not res!2463273)) b!5850623))

(assert (= (and b!5850618 c!1037076) b!5850624))

(assert (= (and b!5850618 (not c!1037076)) b!5850626))

(assert (= (and b!5850624 (not res!2463274)) b!5850622))

(assert (= (or b!5850622 b!5850626) bm!457801))

(assert (= (or b!5850625 b!5850624) bm!457802))

(assert (=> b!5850619 m!6770266))

(declare-fun m!6770636 () Bool)

(assert (=> bm!457801 m!6770636))

(assert (=> b!5850623 m!6770260))

(assert (=> bm!457802 m!6770506))

(assert (=> b!5849993 d!1837474))

(declare-fun b!5850628 () Bool)

(declare-fun e!3587849 () Bool)

(declare-fun lt!2304377 () Bool)

(declare-fun call!457808 () Bool)

(assert (=> b!5850628 (= e!3587849 (= lt!2304377 call!457808))))

(declare-fun b!5850629 () Bool)

(declare-fun res!2463279 () Bool)

(declare-fun e!3587850 () Bool)

(assert (=> b!5850629 (=> res!2463279 e!3587850)))

(assert (=> b!5850629 (= res!2463279 (not (isEmpty!35787 (tail!11473 s!2326))))))

(declare-fun b!5850630 () Bool)

(declare-fun res!2463282 () Bool)

(declare-fun e!3587845 () Bool)

(assert (=> b!5850630 (=> res!2463282 e!3587845)))

(declare-fun e!3587851 () Bool)

(assert (=> b!5850630 (= res!2463282 e!3587851)))

(declare-fun res!2463281 () Bool)

(assert (=> b!5850630 (=> (not res!2463281) (not e!3587851))))

(assert (=> b!5850630 (= res!2463281 lt!2304377)))

(declare-fun b!5850631 () Bool)

(declare-fun res!2463276 () Bool)

(assert (=> b!5850631 (=> (not res!2463276) (not e!3587851))))

(assert (=> b!5850631 (= res!2463276 (isEmpty!35787 (tail!11473 s!2326)))))

(declare-fun b!5850632 () Bool)

(declare-fun e!3587847 () Bool)

(assert (=> b!5850632 (= e!3587847 e!3587850)))

(declare-fun res!2463277 () Bool)

(assert (=> b!5850632 (=> res!2463277 e!3587850)))

(assert (=> b!5850632 (= res!2463277 call!457808)))

(declare-fun b!5850633 () Bool)

(declare-fun e!3587848 () Bool)

(assert (=> b!5850633 (= e!3587848 (matchR!8100 (derivativeStep!4655 r!7292 (head!12388 s!2326)) (tail!11473 s!2326)))))

(declare-fun d!1837476 () Bool)

(assert (=> d!1837476 e!3587849))

(declare-fun c!1037081 () Bool)

(assert (=> d!1837476 (= c!1037081 ((_ is EmptyExpr!15917) r!7292))))

(assert (=> d!1837476 (= lt!2304377 e!3587848)))

(declare-fun c!1037080 () Bool)

(assert (=> d!1837476 (= c!1037080 (isEmpty!35787 s!2326))))

(assert (=> d!1837476 (validRegex!7653 r!7292)))

(assert (=> d!1837476 (= (matchR!8100 r!7292 s!2326) lt!2304377)))

(declare-fun b!5850634 () Bool)

(declare-fun res!2463280 () Bool)

(assert (=> b!5850634 (=> res!2463280 e!3587845)))

(assert (=> b!5850634 (= res!2463280 (not ((_ is ElementMatch!15917) r!7292)))))

(declare-fun e!3587846 () Bool)

(assert (=> b!5850634 (= e!3587846 e!3587845)))

(declare-fun b!5850635 () Bool)

(declare-fun res!2463283 () Bool)

(assert (=> b!5850635 (=> (not res!2463283) (not e!3587851))))

(assert (=> b!5850635 (= res!2463283 (not call!457808))))

(declare-fun bm!457803 () Bool)

(assert (=> bm!457803 (= call!457808 (isEmpty!35787 s!2326))))

(declare-fun b!5850636 () Bool)

(assert (=> b!5850636 (= e!3587848 (nullable!5917 r!7292))))

(declare-fun b!5850637 () Bool)

(assert (=> b!5850637 (= e!3587849 e!3587846)))

(declare-fun c!1037079 () Bool)

(assert (=> b!5850637 (= c!1037079 ((_ is EmptyLang!15917) r!7292))))

(declare-fun b!5850638 () Bool)

(assert (=> b!5850638 (= e!3587850 (not (= (head!12388 s!2326) (c!1036885 r!7292))))))

(declare-fun b!5850639 () Bool)

(assert (=> b!5850639 (= e!3587845 e!3587847)))

(declare-fun res!2463278 () Bool)

(assert (=> b!5850639 (=> (not res!2463278) (not e!3587847))))

(assert (=> b!5850639 (= res!2463278 (not lt!2304377))))

(declare-fun b!5850640 () Bool)

(assert (=> b!5850640 (= e!3587846 (not lt!2304377))))

(declare-fun b!5850641 () Bool)

(assert (=> b!5850641 (= e!3587851 (= (head!12388 s!2326) (c!1036885 r!7292)))))

(assert (= (and d!1837476 c!1037080) b!5850636))

(assert (= (and d!1837476 (not c!1037080)) b!5850633))

(assert (= (and d!1837476 c!1037081) b!5850628))

(assert (= (and d!1837476 (not c!1037081)) b!5850637))

(assert (= (and b!5850637 c!1037079) b!5850640))

(assert (= (and b!5850637 (not c!1037079)) b!5850634))

(assert (= (and b!5850634 (not res!2463280)) b!5850630))

(assert (= (and b!5850630 res!2463281) b!5850635))

(assert (= (and b!5850635 res!2463283) b!5850631))

(assert (= (and b!5850631 res!2463276) b!5850641))

(assert (= (and b!5850630 (not res!2463282)) b!5850639))

(assert (= (and b!5850639 res!2463278) b!5850632))

(assert (= (and b!5850632 (not res!2463277)) b!5850629))

(assert (= (and b!5850629 (not res!2463279)) b!5850638))

(assert (= (or b!5850628 b!5850632 b!5850635) bm!457803))

(assert (=> d!1837476 m!6770506))

(assert (=> d!1837476 m!6770290))

(assert (=> b!5850631 m!6770514))

(assert (=> b!5850631 m!6770514))

(assert (=> b!5850631 m!6770516))

(assert (=> b!5850629 m!6770514))

(assert (=> b!5850629 m!6770514))

(assert (=> b!5850629 m!6770516))

(assert (=> b!5850633 m!6770518))

(assert (=> b!5850633 m!6770518))

(declare-fun m!6770638 () Bool)

(assert (=> b!5850633 m!6770638))

(assert (=> b!5850633 m!6770514))

(assert (=> b!5850633 m!6770638))

(assert (=> b!5850633 m!6770514))

(declare-fun m!6770640 () Bool)

(assert (=> b!5850633 m!6770640))

(declare-fun m!6770642 () Bool)

(assert (=> b!5850636 m!6770642))

(assert (=> b!5850638 m!6770518))

(assert (=> bm!457803 m!6770506))

(assert (=> b!5850641 m!6770518))

(assert (=> b!5849993 d!1837476))

(declare-fun d!1837478 () Bool)

(assert (=> d!1837478 (= (matchR!8100 r!7292 s!2326) (matchRSpec!3018 r!7292 s!2326))))

(declare-fun lt!2304378 () Unit!157105)

(assert (=> d!1837478 (= lt!2304378 (choose!44369 r!7292 s!2326))))

(assert (=> d!1837478 (validRegex!7653 r!7292)))

(assert (=> d!1837478 (= (mainMatchTheorem!3018 r!7292 s!2326) lt!2304378)))

(declare-fun bs!1378530 () Bool)

(assert (= bs!1378530 d!1837478))

(assert (=> bs!1378530 m!6770294))

(assert (=> bs!1378530 m!6770292))

(declare-fun m!6770644 () Bool)

(assert (=> bs!1378530 m!6770644))

(assert (=> bs!1378530 m!6770290))

(assert (=> b!5849993 d!1837478))

(declare-fun bs!1378531 () Bool)

(declare-fun d!1837480 () Bool)

(assert (= bs!1378531 (and d!1837480 b!5849976)))

(declare-fun lambda!319903 () Int)

(assert (=> bs!1378531 (= lambda!319903 lambda!319852)))

(assert (=> d!1837480 true))

(assert (=> d!1837480 (= (derivationStepZipper!1916 z!1189 (h!70376 s!2326)) (flatMap!1448 z!1189 lambda!319903))))

(declare-fun bs!1378532 () Bool)

(assert (= bs!1378532 d!1837480))

(declare-fun m!6770646 () Bool)

(assert (=> bs!1378532 m!6770646))

(assert (=> b!5849976 d!1837480))

(declare-fun d!1837482 () Bool)

(declare-fun choose!44371 ((InoxSet Context!10602) Int) (InoxSet Context!10602))

(assert (=> d!1837482 (= (flatMap!1448 z!1189 lambda!319852) (choose!44371 z!1189 lambda!319852))))

(declare-fun bs!1378533 () Bool)

(assert (= bs!1378533 d!1837482))

(declare-fun m!6770648 () Bool)

(assert (=> bs!1378533 m!6770648))

(assert (=> b!5849976 d!1837482))

(declare-fun b!5850644 () Bool)

(declare-fun e!3587854 () Bool)

(assert (=> b!5850644 (= e!3587854 (nullable!5917 (h!70374 (exprs!5801 (h!70375 zl!343)))))))

(declare-fun b!5850645 () Bool)

(declare-fun e!3587852 () (InoxSet Context!10602))

(declare-fun call!457809 () (InoxSet Context!10602))

(assert (=> b!5850645 (= e!3587852 ((_ map or) call!457809 (derivationStepZipperUp!1109 (Context!10603 (t!377411 (exprs!5801 (h!70375 zl!343)))) (h!70376 s!2326))))))

(declare-fun d!1837484 () Bool)

(declare-fun c!1037085 () Bool)

(assert (=> d!1837484 (= c!1037085 e!3587854)))

(declare-fun res!2463284 () Bool)

(assert (=> d!1837484 (=> (not res!2463284) (not e!3587854))))

(assert (=> d!1837484 (= res!2463284 ((_ is Cons!63926) (exprs!5801 (h!70375 zl!343))))))

(assert (=> d!1837484 (= (derivationStepZipperUp!1109 (h!70375 zl!343) (h!70376 s!2326)) e!3587852)))

(declare-fun bm!457804 () Bool)

(assert (=> bm!457804 (= call!457809 (derivationStepZipperDown!1183 (h!70374 (exprs!5801 (h!70375 zl!343))) (Context!10603 (t!377411 (exprs!5801 (h!70375 zl!343)))) (h!70376 s!2326)))))

(declare-fun b!5850646 () Bool)

(declare-fun e!3587853 () (InoxSet Context!10602))

(assert (=> b!5850646 (= e!3587853 ((as const (Array Context!10602 Bool)) false))))

(declare-fun b!5850647 () Bool)

(assert (=> b!5850647 (= e!3587852 e!3587853)))

(declare-fun c!1037084 () Bool)

(assert (=> b!5850647 (= c!1037084 ((_ is Cons!63926) (exprs!5801 (h!70375 zl!343))))))

(declare-fun b!5850648 () Bool)

(assert (=> b!5850648 (= e!3587853 call!457809)))

(assert (= (and d!1837484 res!2463284) b!5850644))

(assert (= (and d!1837484 c!1037085) b!5850645))

(assert (= (and d!1837484 (not c!1037085)) b!5850647))

(assert (= (and b!5850647 c!1037084) b!5850648))

(assert (= (and b!5850647 (not c!1037084)) b!5850646))

(assert (= (or b!5850645 b!5850648) bm!457804))

(declare-fun m!6770650 () Bool)

(assert (=> b!5850644 m!6770650))

(declare-fun m!6770652 () Bool)

(assert (=> b!5850645 m!6770652))

(declare-fun m!6770654 () Bool)

(assert (=> bm!457804 m!6770654))

(assert (=> b!5849976 d!1837484))

(declare-fun d!1837486 () Bool)

(declare-fun dynLambda!24988 (Int Context!10602) (InoxSet Context!10602))

(assert (=> d!1837486 (= (flatMap!1448 z!1189 lambda!319852) (dynLambda!24988 lambda!319852 (h!70375 zl!343)))))

(declare-fun lt!2304381 () Unit!157105)

(declare-fun choose!44372 ((InoxSet Context!10602) Context!10602 Int) Unit!157105)

(assert (=> d!1837486 (= lt!2304381 (choose!44372 z!1189 (h!70375 zl!343) lambda!319852))))

(assert (=> d!1837486 (= z!1189 (store ((as const (Array Context!10602 Bool)) false) (h!70375 zl!343) true))))

(assert (=> d!1837486 (= (lemmaFlatMapOnSingletonSet!976 z!1189 (h!70375 zl!343) lambda!319852) lt!2304381)))

(declare-fun b_lambda!220225 () Bool)

(assert (=> (not b_lambda!220225) (not d!1837486)))

(declare-fun bs!1378534 () Bool)

(assert (= bs!1378534 d!1837486))

(assert (=> bs!1378534 m!6770276))

(declare-fun m!6770656 () Bool)

(assert (=> bs!1378534 m!6770656))

(declare-fun m!6770658 () Bool)

(assert (=> bs!1378534 m!6770658))

(declare-fun m!6770660 () Bool)

(assert (=> bs!1378534 m!6770660))

(assert (=> b!5849976 d!1837486))

(declare-fun bs!1378535 () Bool)

(declare-fun d!1837488 () Bool)

(assert (= bs!1378535 (and d!1837488 d!1837448)))

(declare-fun lambda!319906 () Int)

(assert (=> bs!1378535 (= lambda!319906 lambda!319893)))

(declare-fun bs!1378536 () Bool)

(assert (= bs!1378536 (and d!1837488 d!1837466)))

(assert (=> bs!1378536 (= lambda!319906 lambda!319897)))

(declare-fun bs!1378537 () Bool)

(assert (= bs!1378537 (and d!1837488 d!1837472)))

(assert (=> bs!1378537 (= lambda!319906 lambda!319898)))

(declare-fun bs!1378538 () Bool)

(assert (= bs!1378538 (and d!1837488 d!1837446)))

(assert (=> bs!1378538 (= lambda!319906 lambda!319890)))

(declare-fun bs!1378539 () Bool)

(assert (= bs!1378539 (and d!1837488 d!1837454)))

(assert (=> bs!1378539 (= lambda!319906 lambda!319896)))

(declare-fun b!5850669 () Bool)

(declare-fun e!3587871 () Regex!15917)

(declare-fun e!3587868 () Regex!15917)

(assert (=> b!5850669 (= e!3587871 e!3587868)))

(declare-fun c!1037096 () Bool)

(assert (=> b!5850669 (= c!1037096 ((_ is Cons!63926) (exprs!5801 (h!70375 zl!343))))))

(declare-fun b!5850670 () Bool)

(assert (=> b!5850670 (= e!3587868 (Concat!24762 (h!70374 (exprs!5801 (h!70375 zl!343))) (generalisedConcat!1514 (t!377411 (exprs!5801 (h!70375 zl!343))))))))

(declare-fun b!5850671 () Bool)

(assert (=> b!5850671 (= e!3587868 EmptyExpr!15917)))

(declare-fun b!5850672 () Bool)

(declare-fun e!3587869 () Bool)

(declare-fun lt!2304384 () Regex!15917)

(assert (=> b!5850672 (= e!3587869 (= lt!2304384 (head!12389 (exprs!5801 (h!70375 zl!343)))))))

(declare-fun e!3587870 () Bool)

(assert (=> d!1837488 e!3587870))

(declare-fun res!2463290 () Bool)

(assert (=> d!1837488 (=> (not res!2463290) (not e!3587870))))

(assert (=> d!1837488 (= res!2463290 (validRegex!7653 lt!2304384))))

(assert (=> d!1837488 (= lt!2304384 e!3587871)))

(declare-fun c!1037097 () Bool)

(declare-fun e!3587872 () Bool)

(assert (=> d!1837488 (= c!1037097 e!3587872)))

(declare-fun res!2463289 () Bool)

(assert (=> d!1837488 (=> (not res!2463289) (not e!3587872))))

(assert (=> d!1837488 (= res!2463289 ((_ is Cons!63926) (exprs!5801 (h!70375 zl!343))))))

(assert (=> d!1837488 (forall!15004 (exprs!5801 (h!70375 zl!343)) lambda!319906)))

(assert (=> d!1837488 (= (generalisedConcat!1514 (exprs!5801 (h!70375 zl!343))) lt!2304384)))

(declare-fun b!5850673 () Bool)

(declare-fun e!3587867 () Bool)

(assert (=> b!5850673 (= e!3587867 e!3587869)))

(declare-fun c!1037095 () Bool)

(assert (=> b!5850673 (= c!1037095 (isEmpty!35788 (tail!11474 (exprs!5801 (h!70375 zl!343)))))))

(declare-fun b!5850674 () Bool)

(assert (=> b!5850674 (= e!3587872 (isEmpty!35788 (t!377411 (exprs!5801 (h!70375 zl!343)))))))

(declare-fun b!5850675 () Bool)

(assert (=> b!5850675 (= e!3587870 e!3587867)))

(declare-fun c!1037094 () Bool)

(assert (=> b!5850675 (= c!1037094 (isEmpty!35788 (exprs!5801 (h!70375 zl!343))))))

(declare-fun b!5850676 () Bool)

(assert (=> b!5850676 (= e!3587871 (h!70374 (exprs!5801 (h!70375 zl!343))))))

(declare-fun b!5850677 () Bool)

(declare-fun isConcat!875 (Regex!15917) Bool)

(assert (=> b!5850677 (= e!3587869 (isConcat!875 lt!2304384))))

(declare-fun b!5850678 () Bool)

(declare-fun isEmptyExpr!1352 (Regex!15917) Bool)

(assert (=> b!5850678 (= e!3587867 (isEmptyExpr!1352 lt!2304384))))

(assert (= (and d!1837488 res!2463289) b!5850674))

(assert (= (and d!1837488 c!1037097) b!5850676))

(assert (= (and d!1837488 (not c!1037097)) b!5850669))

(assert (= (and b!5850669 c!1037096) b!5850670))

(assert (= (and b!5850669 (not c!1037096)) b!5850671))

(assert (= (and d!1837488 res!2463290) b!5850675))

(assert (= (and b!5850675 c!1037094) b!5850678))

(assert (= (and b!5850675 (not c!1037094)) b!5850673))

(assert (= (and b!5850673 c!1037095) b!5850672))

(assert (= (and b!5850673 (not c!1037095)) b!5850677))

(declare-fun m!6770662 () Bool)

(assert (=> b!5850678 m!6770662))

(declare-fun m!6770664 () Bool)

(assert (=> b!5850674 m!6770664))

(declare-fun m!6770666 () Bool)

(assert (=> b!5850672 m!6770666))

(declare-fun m!6770668 () Bool)

(assert (=> b!5850675 m!6770668))

(declare-fun m!6770670 () Bool)

(assert (=> b!5850670 m!6770670))

(declare-fun m!6770672 () Bool)

(assert (=> b!5850677 m!6770672))

(declare-fun m!6770674 () Bool)

(assert (=> b!5850673 m!6770674))

(assert (=> b!5850673 m!6770674))

(declare-fun m!6770676 () Bool)

(assert (=> b!5850673 m!6770676))

(declare-fun m!6770678 () Bool)

(assert (=> d!1837488 m!6770678))

(declare-fun m!6770680 () Bool)

(assert (=> d!1837488 m!6770680))

(assert (=> b!5849975 d!1837488))

(declare-fun d!1837490 () Bool)

(declare-fun lt!2304387 () Regex!15917)

(assert (=> d!1837490 (validRegex!7653 lt!2304387)))

(assert (=> d!1837490 (= lt!2304387 (generalisedUnion!1761 (unfocusZipperList!1338 zl!343)))))

(assert (=> d!1837490 (= (unfocusZipper!1659 zl!343) lt!2304387)))

(declare-fun bs!1378540 () Bool)

(assert (= bs!1378540 d!1837490))

(declare-fun m!6770682 () Bool)

(assert (=> bs!1378540 m!6770682))

(assert (=> bs!1378540 m!6770240))

(assert (=> bs!1378540 m!6770240))

(assert (=> bs!1378540 m!6770242))

(assert (=> b!5849982 d!1837490))

(declare-fun d!1837492 () Bool)

(declare-fun e!3587875 () Bool)

(assert (=> d!1837492 e!3587875))

(declare-fun res!2463293 () Bool)

(assert (=> d!1837492 (=> (not res!2463293) (not e!3587875))))

(declare-fun lt!2304390 () List!64051)

(declare-fun noDuplicate!1782 (List!64051) Bool)

(assert (=> d!1837492 (= res!2463293 (noDuplicate!1782 lt!2304390))))

(declare-fun choose!44373 ((InoxSet Context!10602)) List!64051)

(assert (=> d!1837492 (= lt!2304390 (choose!44373 z!1189))))

(assert (=> d!1837492 (= (toList!9701 z!1189) lt!2304390)))

(declare-fun b!5850681 () Bool)

(declare-fun content!11747 (List!64051) (InoxSet Context!10602))

(assert (=> b!5850681 (= e!3587875 (= (content!11747 lt!2304390) z!1189))))

(assert (= (and d!1837492 res!2463293) b!5850681))

(declare-fun m!6770684 () Bool)

(assert (=> d!1837492 m!6770684))

(declare-fun m!6770686 () Bool)

(assert (=> d!1837492 m!6770686))

(declare-fun m!6770688 () Bool)

(assert (=> b!5850681 m!6770688))

(assert (=> b!5849992 d!1837492))

(declare-fun b!5850700 () Bool)

(declare-fun e!3587896 () Bool)

(declare-fun e!3587893 () Bool)

(assert (=> b!5850700 (= e!3587896 e!3587893)))

(declare-fun c!1037102 () Bool)

(assert (=> b!5850700 (= c!1037102 ((_ is Star!15917) r!7292))))

(declare-fun b!5850701 () Bool)

(declare-fun res!2463307 () Bool)

(declare-fun e!3587891 () Bool)

(assert (=> b!5850701 (=> res!2463307 e!3587891)))

(assert (=> b!5850701 (= res!2463307 (not ((_ is Concat!24762) r!7292)))))

(declare-fun e!3587890 () Bool)

(assert (=> b!5850701 (= e!3587890 e!3587891)))

(declare-fun bm!457811 () Bool)

(declare-fun call!457817 () Bool)

(declare-fun c!1037103 () Bool)

(assert (=> bm!457811 (= call!457817 (validRegex!7653 (ite c!1037103 (regTwo!32347 r!7292) (regTwo!32346 r!7292))))))

(declare-fun b!5850702 () Bool)

(declare-fun e!3587895 () Bool)

(assert (=> b!5850702 (= e!3587893 e!3587895)))

(declare-fun res!2463306 () Bool)

(assert (=> b!5850702 (= res!2463306 (not (nullable!5917 (reg!16246 r!7292))))))

(assert (=> b!5850702 (=> (not res!2463306) (not e!3587895))))

(declare-fun b!5850703 () Bool)

(declare-fun res!2463308 () Bool)

(declare-fun e!3587892 () Bool)

(assert (=> b!5850703 (=> (not res!2463308) (not e!3587892))))

(declare-fun call!457816 () Bool)

(assert (=> b!5850703 (= res!2463308 call!457816)))

(assert (=> b!5850703 (= e!3587890 e!3587892)))

(declare-fun d!1837494 () Bool)

(declare-fun res!2463305 () Bool)

(assert (=> d!1837494 (=> res!2463305 e!3587896)))

(assert (=> d!1837494 (= res!2463305 ((_ is ElementMatch!15917) r!7292))))

(assert (=> d!1837494 (= (validRegex!7653 r!7292) e!3587896)))

(declare-fun bm!457812 () Bool)

(declare-fun call!457818 () Bool)

(assert (=> bm!457812 (= call!457816 call!457818)))

(declare-fun b!5850704 () Bool)

(assert (=> b!5850704 (= e!3587895 call!457818)))

(declare-fun b!5850705 () Bool)

(assert (=> b!5850705 (= e!3587892 call!457817)))

(declare-fun b!5850706 () Bool)

(declare-fun e!3587894 () Bool)

(assert (=> b!5850706 (= e!3587891 e!3587894)))

(declare-fun res!2463304 () Bool)

(assert (=> b!5850706 (=> (not res!2463304) (not e!3587894))))

(assert (=> b!5850706 (= res!2463304 call!457816)))

(declare-fun bm!457813 () Bool)

(assert (=> bm!457813 (= call!457818 (validRegex!7653 (ite c!1037102 (reg!16246 r!7292) (ite c!1037103 (regOne!32347 r!7292) (regOne!32346 r!7292)))))))

(declare-fun b!5850707 () Bool)

(assert (=> b!5850707 (= e!3587893 e!3587890)))

(assert (=> b!5850707 (= c!1037103 ((_ is Union!15917) r!7292))))

(declare-fun b!5850708 () Bool)

(assert (=> b!5850708 (= e!3587894 call!457817)))

(assert (= (and d!1837494 (not res!2463305)) b!5850700))

(assert (= (and b!5850700 c!1037102) b!5850702))

(assert (= (and b!5850700 (not c!1037102)) b!5850707))

(assert (= (and b!5850702 res!2463306) b!5850704))

(assert (= (and b!5850707 c!1037103) b!5850703))

(assert (= (and b!5850707 (not c!1037103)) b!5850701))

(assert (= (and b!5850703 res!2463308) b!5850705))

(assert (= (and b!5850701 (not res!2463307)) b!5850706))

(assert (= (and b!5850706 res!2463304) b!5850708))

(assert (= (or b!5850705 b!5850708) bm!457811))

(assert (= (or b!5850703 b!5850706) bm!457812))

(assert (= (or b!5850704 bm!457812) bm!457813))

(declare-fun m!6770690 () Bool)

(assert (=> bm!457811 m!6770690))

(declare-fun m!6770692 () Bool)

(assert (=> b!5850702 m!6770692))

(declare-fun m!6770694 () Bool)

(assert (=> bm!457813 m!6770694))

(assert (=> start!598516 d!1837494))

(declare-fun b!5850716 () Bool)

(declare-fun e!3587902 () Bool)

(declare-fun tp!1618503 () Bool)

(assert (=> b!5850716 (= e!3587902 tp!1618503)))

(declare-fun tp!1618504 () Bool)

(declare-fun e!3587901 () Bool)

(declare-fun b!5850715 () Bool)

(assert (=> b!5850715 (= e!3587901 (and (inv!83039 (h!70375 (t!377412 zl!343))) e!3587902 tp!1618504))))

(assert (=> b!5849985 (= tp!1618439 e!3587901)))

(assert (= b!5850715 b!5850716))

(assert (= (and b!5849985 ((_ is Cons!63927) (t!377412 zl!343))) b!5850715))

(declare-fun m!6770696 () Bool)

(assert (=> b!5850715 m!6770696))

(declare-fun b!5850727 () Bool)

(declare-fun e!3587905 () Bool)

(assert (=> b!5850727 (= e!3587905 tp_is_empty!41087)))

(declare-fun b!5850728 () Bool)

(declare-fun tp!1618517 () Bool)

(declare-fun tp!1618516 () Bool)

(assert (=> b!5850728 (= e!3587905 (and tp!1618517 tp!1618516))))

(assert (=> b!5849988 (= tp!1618440 e!3587905)))

(declare-fun b!5850729 () Bool)

(declare-fun tp!1618518 () Bool)

(assert (=> b!5850729 (= e!3587905 tp!1618518)))

(declare-fun b!5850730 () Bool)

(declare-fun tp!1618519 () Bool)

(declare-fun tp!1618515 () Bool)

(assert (=> b!5850730 (= e!3587905 (and tp!1618519 tp!1618515))))

(assert (= (and b!5849988 ((_ is ElementMatch!15917) (reg!16246 r!7292))) b!5850727))

(assert (= (and b!5849988 ((_ is Concat!24762) (reg!16246 r!7292))) b!5850728))

(assert (= (and b!5849988 ((_ is Star!15917) (reg!16246 r!7292))) b!5850729))

(assert (= (and b!5849988 ((_ is Union!15917) (reg!16246 r!7292))) b!5850730))

(declare-fun b!5850735 () Bool)

(declare-fun e!3587908 () Bool)

(declare-fun tp!1618522 () Bool)

(assert (=> b!5850735 (= e!3587908 (and tp_is_empty!41087 tp!1618522))))

(assert (=> b!5849979 (= tp!1618433 e!3587908)))

(assert (= (and b!5849979 ((_ is Cons!63928) (t!377413 s!2326))) b!5850735))

(declare-fun b!5850740 () Bool)

(declare-fun e!3587911 () Bool)

(declare-fun tp!1618527 () Bool)

(declare-fun tp!1618528 () Bool)

(assert (=> b!5850740 (= e!3587911 (and tp!1618527 tp!1618528))))

(assert (=> b!5849995 (= tp!1618432 e!3587911)))

(assert (= (and b!5849995 ((_ is Cons!63926) (exprs!5801 (h!70375 zl!343)))) b!5850740))

(declare-fun condSetEmpty!39636 () Bool)

(assert (=> setNonEmpty!39630 (= condSetEmpty!39636 (= setRest!39630 ((as const (Array Context!10602 Bool)) false)))))

(declare-fun setRes!39636 () Bool)

(assert (=> setNonEmpty!39630 (= tp!1618436 setRes!39636)))

(declare-fun setIsEmpty!39636 () Bool)

(assert (=> setIsEmpty!39636 setRes!39636))

(declare-fun setElem!39636 () Context!10602)

(declare-fun tp!1618533 () Bool)

(declare-fun e!3587914 () Bool)

(declare-fun setNonEmpty!39636 () Bool)

(assert (=> setNonEmpty!39636 (= setRes!39636 (and tp!1618533 (inv!83039 setElem!39636) e!3587914))))

(declare-fun setRest!39636 () (InoxSet Context!10602))

(assert (=> setNonEmpty!39636 (= setRest!39630 ((_ map or) (store ((as const (Array Context!10602 Bool)) false) setElem!39636 true) setRest!39636))))

(declare-fun b!5850745 () Bool)

(declare-fun tp!1618534 () Bool)

(assert (=> b!5850745 (= e!3587914 tp!1618534)))

(assert (= (and setNonEmpty!39630 condSetEmpty!39636) setIsEmpty!39636))

(assert (= (and setNonEmpty!39630 (not condSetEmpty!39636)) setNonEmpty!39636))

(assert (= setNonEmpty!39636 b!5850745))

(declare-fun m!6770698 () Bool)

(assert (=> setNonEmpty!39636 m!6770698))

(declare-fun b!5850746 () Bool)

(declare-fun e!3587915 () Bool)

(assert (=> b!5850746 (= e!3587915 tp_is_empty!41087)))

(declare-fun b!5850747 () Bool)

(declare-fun tp!1618537 () Bool)

(declare-fun tp!1618536 () Bool)

(assert (=> b!5850747 (= e!3587915 (and tp!1618537 tp!1618536))))

(assert (=> b!5849991 (= tp!1618431 e!3587915)))

(declare-fun b!5850748 () Bool)

(declare-fun tp!1618538 () Bool)

(assert (=> b!5850748 (= e!3587915 tp!1618538)))

(declare-fun b!5850749 () Bool)

(declare-fun tp!1618539 () Bool)

(declare-fun tp!1618535 () Bool)

(assert (=> b!5850749 (= e!3587915 (and tp!1618539 tp!1618535))))

(assert (= (and b!5849991 ((_ is ElementMatch!15917) (regOne!32346 r!7292))) b!5850746))

(assert (= (and b!5849991 ((_ is Concat!24762) (regOne!32346 r!7292))) b!5850747))

(assert (= (and b!5849991 ((_ is Star!15917) (regOne!32346 r!7292))) b!5850748))

(assert (= (and b!5849991 ((_ is Union!15917) (regOne!32346 r!7292))) b!5850749))

(declare-fun b!5850750 () Bool)

(declare-fun e!3587916 () Bool)

(assert (=> b!5850750 (= e!3587916 tp_is_empty!41087)))

(declare-fun b!5850751 () Bool)

(declare-fun tp!1618542 () Bool)

(declare-fun tp!1618541 () Bool)

(assert (=> b!5850751 (= e!3587916 (and tp!1618542 tp!1618541))))

(assert (=> b!5849991 (= tp!1618435 e!3587916)))

(declare-fun b!5850752 () Bool)

(declare-fun tp!1618543 () Bool)

(assert (=> b!5850752 (= e!3587916 tp!1618543)))

(declare-fun b!5850753 () Bool)

(declare-fun tp!1618544 () Bool)

(declare-fun tp!1618540 () Bool)

(assert (=> b!5850753 (= e!3587916 (and tp!1618544 tp!1618540))))

(assert (= (and b!5849991 ((_ is ElementMatch!15917) (regTwo!32346 r!7292))) b!5850750))

(assert (= (and b!5849991 ((_ is Concat!24762) (regTwo!32346 r!7292))) b!5850751))

(assert (= (and b!5849991 ((_ is Star!15917) (regTwo!32346 r!7292))) b!5850752))

(assert (= (and b!5849991 ((_ is Union!15917) (regTwo!32346 r!7292))) b!5850753))

(declare-fun b!5850754 () Bool)

(declare-fun e!3587917 () Bool)

(assert (=> b!5850754 (= e!3587917 tp_is_empty!41087)))

(declare-fun b!5850755 () Bool)

(declare-fun tp!1618547 () Bool)

(declare-fun tp!1618546 () Bool)

(assert (=> b!5850755 (= e!3587917 (and tp!1618547 tp!1618546))))

(assert (=> b!5849996 (= tp!1618434 e!3587917)))

(declare-fun b!5850756 () Bool)

(declare-fun tp!1618548 () Bool)

(assert (=> b!5850756 (= e!3587917 tp!1618548)))

(declare-fun b!5850757 () Bool)

(declare-fun tp!1618549 () Bool)

(declare-fun tp!1618545 () Bool)

(assert (=> b!5850757 (= e!3587917 (and tp!1618549 tp!1618545))))

(assert (= (and b!5849996 ((_ is ElementMatch!15917) (regOne!32347 r!7292))) b!5850754))

(assert (= (and b!5849996 ((_ is Concat!24762) (regOne!32347 r!7292))) b!5850755))

(assert (= (and b!5849996 ((_ is Star!15917) (regOne!32347 r!7292))) b!5850756))

(assert (= (and b!5849996 ((_ is Union!15917) (regOne!32347 r!7292))) b!5850757))

(declare-fun b!5850758 () Bool)

(declare-fun e!3587918 () Bool)

(assert (=> b!5850758 (= e!3587918 tp_is_empty!41087)))

(declare-fun b!5850759 () Bool)

(declare-fun tp!1618552 () Bool)

(declare-fun tp!1618551 () Bool)

(assert (=> b!5850759 (= e!3587918 (and tp!1618552 tp!1618551))))

(assert (=> b!5849996 (= tp!1618438 e!3587918)))

(declare-fun b!5850760 () Bool)

(declare-fun tp!1618553 () Bool)

(assert (=> b!5850760 (= e!3587918 tp!1618553)))

(declare-fun b!5850761 () Bool)

(declare-fun tp!1618554 () Bool)

(declare-fun tp!1618550 () Bool)

(assert (=> b!5850761 (= e!3587918 (and tp!1618554 tp!1618550))))

(assert (= (and b!5849996 ((_ is ElementMatch!15917) (regTwo!32347 r!7292))) b!5850758))

(assert (= (and b!5849996 ((_ is Concat!24762) (regTwo!32347 r!7292))) b!5850759))

(assert (= (and b!5849996 ((_ is Star!15917) (regTwo!32347 r!7292))) b!5850760))

(assert (= (and b!5849996 ((_ is Union!15917) (regTwo!32347 r!7292))) b!5850761))

(declare-fun b!5850762 () Bool)

(declare-fun e!3587919 () Bool)

(declare-fun tp!1618555 () Bool)

(declare-fun tp!1618556 () Bool)

(assert (=> b!5850762 (= e!3587919 (and tp!1618555 tp!1618556))))

(assert (=> b!5849987 (= tp!1618437 e!3587919)))

(assert (= (and b!5849987 ((_ is Cons!63926) (exprs!5801 setElem!39630))) b!5850762))

(declare-fun b_lambda!220227 () Bool)

(assert (= b_lambda!220225 (or b!5849976 b_lambda!220227)))

(declare-fun bs!1378541 () Bool)

(declare-fun d!1837496 () Bool)

(assert (= bs!1378541 (and d!1837496 b!5849976)))

(assert (=> bs!1378541 (= (dynLambda!24988 lambda!319852 (h!70375 zl!343)) (derivationStepZipperUp!1109 (h!70375 zl!343) (h!70376 s!2326)))))

(assert (=> bs!1378541 m!6770278))

(assert (=> d!1837486 d!1837496))

(check-sat (not b!5850581) (not b!5850609) (not bm!457781) (not b!5850495) (not d!1837480) (not d!1837468) (not b!5850644) (not b!5850615) (not bm!457782) (not b!5850745) (not b!5850522) (not b!5850470) (not b!5850759) (not b!5850729) (not b!5850749) (not bm!457765) (not d!1837456) (not b!5850561) (not b!5850747) (not bm!457795) (not b!5850629) (not b!5850728) (not b!5850520) (not d!1837444) (not d!1837486) (not b!5850487) (not b!5850633) (not b!5850477) (not b!5850460) (not b!5850465) (not d!1837490) (not bm!457801) (not b!5850641) (not b!5850473) (not b!5850523) (not b!5850572) (not b!5850762) (not bm!457811) (not bm!457788) (not b!5850702) tp_is_empty!41087 (not b_lambda!220227) (not b!5850730) (not b!5850755) (not b!5850636) (not b!5850677) (not b!5850674) (not b!5850753) (not b!5850716) (not b!5850586) (not bm!457783) (not b!5850518) (not d!1837458) (not b!5850483) (not bm!457803) (not bm!457764) (not b!5850583) (not bm!457766) (not d!1837478) (not b!5850760) (not b!5850462) (not b!5850616) (not setNonEmpty!39636) (not d!1837472) (not b!5850420) (not b!5850530) (not d!1837482) (not b!5850580) (not b!5850608) (not b!5850761) (not b!5850735) (not d!1837470) (not d!1837460) (not b!5850673) (not b!5850614) (not b!5850619) (not bm!457804) (not b!5850517) (not b!5850672) (not b!5850751) (not b!5850681) (not b!5850623) (not bm!457760) (not d!1837492) (not d!1837454) (not bm!457802) (not b!5850752) (not d!1837488) (not b!5850492) (not b!5850594) (not bm!457787) (not bm!457800) (not d!1837448) (not b!5850675) (not b!5850467) (not bm!457813) (not b!5850631) (not b!5850521) (not b!5850756) (not bs!1378541) (not b!5850748) (not b!5850519) (not b!5850485) (not b!5850678) (not d!1837440) (not d!1837446) (not b!5850416) (not d!1837466) (not bm!457767) (not bm!457793) (not b!5850638) (not bm!457794) (not bm!457761) (not d!1837476) (not b!5850458) (not bm!457789) (not b!5850613) (not b!5850490) (not b!5850670) (not b!5850715) (not d!1837436) (not d!1837438) (not b!5850740) (not b!5850757) (not b!5850645) (not b!5850582))
(check-sat)
(get-model)

(declare-fun bs!1378711 () Bool)

(declare-fun d!1837704 () Bool)

(assert (= bs!1378711 (and d!1837704 d!1837448)))

(declare-fun lambda!319930 () Int)

(assert (=> bs!1378711 (= lambda!319930 lambda!319893)))

(declare-fun bs!1378712 () Bool)

(assert (= bs!1378712 (and d!1837704 d!1837466)))

(assert (=> bs!1378712 (= lambda!319930 lambda!319897)))

(declare-fun bs!1378713 () Bool)

(assert (= bs!1378713 (and d!1837704 d!1837488)))

(assert (=> bs!1378713 (= lambda!319930 lambda!319906)))

(declare-fun bs!1378714 () Bool)

(assert (= bs!1378714 (and d!1837704 d!1837472)))

(assert (=> bs!1378714 (= lambda!319930 lambda!319898)))

(declare-fun bs!1378715 () Bool)

(assert (= bs!1378715 (and d!1837704 d!1837446)))

(assert (=> bs!1378715 (= lambda!319930 lambda!319890)))

(declare-fun bs!1378716 () Bool)

(assert (= bs!1378716 (and d!1837704 d!1837454)))

(assert (=> bs!1378716 (= lambda!319930 lambda!319896)))

(declare-fun e!3588195 () Bool)

(assert (=> d!1837704 e!3588195))

(declare-fun res!2463429 () Bool)

(assert (=> d!1837704 (=> (not res!2463429) (not e!3588195))))

(declare-fun lt!2304402 () Regex!15917)

(assert (=> d!1837704 (= res!2463429 (validRegex!7653 lt!2304402))))

(declare-fun e!3588193 () Regex!15917)

(assert (=> d!1837704 (= lt!2304402 e!3588193)))

(declare-fun c!1037234 () Bool)

(declare-fun e!3588194 () Bool)

(assert (=> d!1837704 (= c!1037234 e!3588194)))

(declare-fun res!2463428 () Bool)

(assert (=> d!1837704 (=> (not res!2463428) (not e!3588194))))

(assert (=> d!1837704 (= res!2463428 ((_ is Cons!63926) (t!377411 (unfocusZipperList!1338 zl!343))))))

(assert (=> d!1837704 (forall!15004 (t!377411 (unfocusZipperList!1338 zl!343)) lambda!319930)))

(assert (=> d!1837704 (= (generalisedUnion!1761 (t!377411 (unfocusZipperList!1338 zl!343))) lt!2304402)))

(declare-fun b!5851251 () Bool)

(declare-fun e!3588192 () Regex!15917)

(assert (=> b!5851251 (= e!3588193 e!3588192)))

(declare-fun c!1037233 () Bool)

(assert (=> b!5851251 (= c!1037233 ((_ is Cons!63926) (t!377411 (unfocusZipperList!1338 zl!343))))))

(declare-fun b!5851252 () Bool)

(declare-fun e!3588190 () Bool)

(assert (=> b!5851252 (= e!3588190 (isUnion!790 lt!2304402))))

(declare-fun b!5851253 () Bool)

(declare-fun e!3588191 () Bool)

(assert (=> b!5851253 (= e!3588191 e!3588190)))

(declare-fun c!1037231 () Bool)

(assert (=> b!5851253 (= c!1037231 (isEmpty!35788 (tail!11474 (t!377411 (unfocusZipperList!1338 zl!343)))))))

(declare-fun b!5851254 () Bool)

(assert (=> b!5851254 (= e!3588190 (= lt!2304402 (head!12389 (t!377411 (unfocusZipperList!1338 zl!343)))))))

(declare-fun b!5851255 () Bool)

(assert (=> b!5851255 (= e!3588192 (Union!15917 (h!70374 (t!377411 (unfocusZipperList!1338 zl!343))) (generalisedUnion!1761 (t!377411 (t!377411 (unfocusZipperList!1338 zl!343))))))))

(declare-fun b!5851256 () Bool)

(assert (=> b!5851256 (= e!3588191 (isEmptyLang!1360 lt!2304402))))

(declare-fun b!5851257 () Bool)

(assert (=> b!5851257 (= e!3588195 e!3588191)))

(declare-fun c!1037232 () Bool)

(assert (=> b!5851257 (= c!1037232 (isEmpty!35788 (t!377411 (unfocusZipperList!1338 zl!343))))))

(declare-fun b!5851258 () Bool)

(assert (=> b!5851258 (= e!3588194 (isEmpty!35788 (t!377411 (t!377411 (unfocusZipperList!1338 zl!343)))))))

(declare-fun b!5851259 () Bool)

(assert (=> b!5851259 (= e!3588193 (h!70374 (t!377411 (unfocusZipperList!1338 zl!343))))))

(declare-fun b!5851260 () Bool)

(assert (=> b!5851260 (= e!3588192 EmptyLang!15917)))

(assert (= (and d!1837704 res!2463428) b!5851258))

(assert (= (and d!1837704 c!1037234) b!5851259))

(assert (= (and d!1837704 (not c!1037234)) b!5851251))

(assert (= (and b!5851251 c!1037233) b!5851255))

(assert (= (and b!5851251 (not c!1037233)) b!5851260))

(assert (= (and d!1837704 res!2463429) b!5851257))

(assert (= (and b!5851257 c!1037232) b!5851256))

(assert (= (and b!5851257 (not c!1037232)) b!5851253))

(assert (= (and b!5851253 c!1037231) b!5851254))

(assert (= (and b!5851253 (not c!1037231)) b!5851252))

(declare-fun m!6771084 () Bool)

(assert (=> b!5851258 m!6771084))

(declare-fun m!6771086 () Bool)

(assert (=> b!5851252 m!6771086))

(declare-fun m!6771088 () Bool)

(assert (=> b!5851253 m!6771088))

(assert (=> b!5851253 m!6771088))

(declare-fun m!6771090 () Bool)

(assert (=> b!5851253 m!6771090))

(declare-fun m!6771092 () Bool)

(assert (=> d!1837704 m!6771092))

(declare-fun m!6771094 () Bool)

(assert (=> d!1837704 m!6771094))

(assert (=> b!5851257 m!6770540))

(declare-fun m!6771096 () Bool)

(assert (=> b!5851255 m!6771096))

(declare-fun m!6771098 () Bool)

(assert (=> b!5851254 m!6771098))

(declare-fun m!6771100 () Bool)

(assert (=> b!5851256 m!6771100))

(assert (=> b!5850520 d!1837704))

(declare-fun bs!1378717 () Bool)

(declare-fun d!1837706 () Bool)

(assert (= bs!1378717 (and d!1837706 d!1837448)))

(declare-fun lambda!319931 () Int)

(assert (=> bs!1378717 (= lambda!319931 lambda!319893)))

(declare-fun bs!1378718 () Bool)

(assert (= bs!1378718 (and d!1837706 d!1837466)))

(assert (=> bs!1378718 (= lambda!319931 lambda!319897)))

(declare-fun bs!1378719 () Bool)

(assert (= bs!1378719 (and d!1837706 d!1837488)))

(assert (=> bs!1378719 (= lambda!319931 lambda!319906)))

(declare-fun bs!1378720 () Bool)

(assert (= bs!1378720 (and d!1837706 d!1837472)))

(assert (=> bs!1378720 (= lambda!319931 lambda!319898)))

(declare-fun bs!1378721 () Bool)

(assert (= bs!1378721 (and d!1837706 d!1837704)))

(assert (=> bs!1378721 (= lambda!319931 lambda!319930)))

(declare-fun bs!1378722 () Bool)

(assert (= bs!1378722 (and d!1837706 d!1837446)))

(assert (=> bs!1378722 (= lambda!319931 lambda!319890)))

(declare-fun bs!1378723 () Bool)

(assert (= bs!1378723 (and d!1837706 d!1837454)))

(assert (=> bs!1378723 (= lambda!319931 lambda!319896)))

(assert (=> d!1837706 (= (inv!83039 setElem!39636) (forall!15004 (exprs!5801 setElem!39636) lambda!319931))))

(declare-fun bs!1378724 () Bool)

(assert (= bs!1378724 d!1837706))

(declare-fun m!6771102 () Bool)

(assert (=> bs!1378724 m!6771102))

(assert (=> setNonEmpty!39636 d!1837706))

(declare-fun d!1837708 () Bool)

(assert (=> d!1837708 (= (isEmpty!35787 s!2326) ((_ is Nil!63928) s!2326))))

(assert (=> bm!457761 d!1837708))

(declare-fun bs!1378725 () Bool)

(declare-fun b!5851266 () Bool)

(assert (= bs!1378725 (and b!5851266 b!5850423)))

(declare-fun lambda!319932 () Int)

(assert (=> bs!1378725 (not (= lambda!319932 lambda!319885))))

(declare-fun bs!1378726 () Bool)

(assert (= bs!1378726 (and b!5851266 b!5850419)))

(assert (=> bs!1378726 (= (and (= (reg!16246 (regTwo!32347 (regTwo!32347 r!7292))) (reg!16246 (regTwo!32347 r!7292))) (= (regTwo!32347 (regTwo!32347 r!7292)) (regTwo!32347 r!7292))) (= lambda!319932 lambda!319884))))

(declare-fun bs!1378727 () Bool)

(assert (= bs!1378727 (and b!5851266 b!5850476)))

(assert (=> bs!1378727 (= (and (= (reg!16246 (regTwo!32347 (regTwo!32347 r!7292))) (reg!16246 (regOne!32347 r!7292))) (= (regTwo!32347 (regTwo!32347 r!7292)) (regOne!32347 r!7292))) (= lambda!319932 lambda!319886))))

(declare-fun bs!1378728 () Bool)

(assert (= bs!1378728 (and b!5851266 b!5850626)))

(assert (=> bs!1378728 (not (= lambda!319932 lambda!319900))))

(declare-fun bs!1378729 () Bool)

(assert (= bs!1378729 (and b!5851266 b!5850622)))

(assert (=> bs!1378729 (= (and (= (reg!16246 (regTwo!32347 (regTwo!32347 r!7292))) (reg!16246 r!7292)) (= (regTwo!32347 (regTwo!32347 r!7292)) r!7292)) (= lambda!319932 lambda!319899))))

(declare-fun bs!1378730 () Bool)

(assert (= bs!1378730 (and b!5851266 b!5850480)))

(assert (=> bs!1378730 (not (= lambda!319932 lambda!319887))))

(assert (=> b!5851266 true))

(assert (=> b!5851266 true))

(declare-fun bs!1378731 () Bool)

(declare-fun b!5851270 () Bool)

(assert (= bs!1378731 (and b!5851270 b!5850423)))

(declare-fun lambda!319933 () Int)

(assert (=> bs!1378731 (= (and (= (regOne!32346 (regTwo!32347 (regTwo!32347 r!7292))) (regOne!32346 (regTwo!32347 r!7292))) (= (regTwo!32346 (regTwo!32347 (regTwo!32347 r!7292))) (regTwo!32346 (regTwo!32347 r!7292)))) (= lambda!319933 lambda!319885))))

(declare-fun bs!1378732 () Bool)

(assert (= bs!1378732 (and b!5851270 b!5850419)))

(assert (=> bs!1378732 (not (= lambda!319933 lambda!319884))))

(declare-fun bs!1378733 () Bool)

(assert (= bs!1378733 (and b!5851270 b!5851266)))

(assert (=> bs!1378733 (not (= lambda!319933 lambda!319932))))

(declare-fun bs!1378734 () Bool)

(assert (= bs!1378734 (and b!5851270 b!5850476)))

(assert (=> bs!1378734 (not (= lambda!319933 lambda!319886))))

(declare-fun bs!1378735 () Bool)

(assert (= bs!1378735 (and b!5851270 b!5850626)))

(assert (=> bs!1378735 (= (and (= (regOne!32346 (regTwo!32347 (regTwo!32347 r!7292))) (regOne!32346 r!7292)) (= (regTwo!32346 (regTwo!32347 (regTwo!32347 r!7292))) (regTwo!32346 r!7292))) (= lambda!319933 lambda!319900))))

(declare-fun bs!1378736 () Bool)

(assert (= bs!1378736 (and b!5851270 b!5850622)))

(assert (=> bs!1378736 (not (= lambda!319933 lambda!319899))))

(declare-fun bs!1378737 () Bool)

(assert (= bs!1378737 (and b!5851270 b!5850480)))

(assert (=> bs!1378737 (= (and (= (regOne!32346 (regTwo!32347 (regTwo!32347 r!7292))) (regOne!32346 (regOne!32347 r!7292))) (= (regTwo!32346 (regTwo!32347 (regTwo!32347 r!7292))) (regTwo!32346 (regOne!32347 r!7292)))) (= lambda!319933 lambda!319887))))

(assert (=> b!5851270 true))

(assert (=> b!5851270 true))

(declare-fun b!5851261 () Bool)

(declare-fun e!3588196 () Bool)

(assert (=> b!5851261 (= e!3588196 (= s!2326 (Cons!63928 (c!1036885 (regTwo!32347 (regTwo!32347 r!7292))) Nil!63928)))))

(declare-fun b!5851262 () Bool)

(declare-fun e!3588197 () Bool)

(declare-fun e!3588199 () Bool)

(assert (=> b!5851262 (= e!3588197 e!3588199)))

(declare-fun c!1037236 () Bool)

(assert (=> b!5851262 (= c!1037236 ((_ is Star!15917) (regTwo!32347 (regTwo!32347 r!7292))))))

(declare-fun b!5851263 () Bool)

(declare-fun e!3588198 () Bool)

(assert (=> b!5851263 (= e!3588197 e!3588198)))

(declare-fun res!2463430 () Bool)

(assert (=> b!5851263 (= res!2463430 (matchRSpec!3018 (regOne!32347 (regTwo!32347 (regTwo!32347 r!7292))) s!2326))))

(assert (=> b!5851263 (=> res!2463430 e!3588198)))

(declare-fun b!5851264 () Bool)

(declare-fun c!1037237 () Bool)

(assert (=> b!5851264 (= c!1037237 ((_ is ElementMatch!15917) (regTwo!32347 (regTwo!32347 r!7292))))))

(declare-fun e!3588200 () Bool)

(assert (=> b!5851264 (= e!3588200 e!3588196)))

(declare-fun call!457921 () Bool)

(declare-fun bm!457916 () Bool)

(assert (=> bm!457916 (= call!457921 (Exists!2989 (ite c!1037236 lambda!319932 lambda!319933)))))

(declare-fun b!5851265 () Bool)

(declare-fun c!1037235 () Bool)

(assert (=> b!5851265 (= c!1037235 ((_ is Union!15917) (regTwo!32347 (regTwo!32347 r!7292))))))

(assert (=> b!5851265 (= e!3588196 e!3588197)))

(declare-fun e!3588202 () Bool)

(assert (=> b!5851266 (= e!3588202 call!457921)))

(declare-fun b!5851267 () Bool)

(assert (=> b!5851267 (= e!3588198 (matchRSpec!3018 (regTwo!32347 (regTwo!32347 (regTwo!32347 r!7292))) s!2326))))

(declare-fun b!5851268 () Bool)

(declare-fun res!2463431 () Bool)

(assert (=> b!5851268 (=> res!2463431 e!3588202)))

(declare-fun call!457922 () Bool)

(assert (=> b!5851268 (= res!2463431 call!457922)))

(assert (=> b!5851268 (= e!3588199 e!3588202)))

(declare-fun d!1837710 () Bool)

(declare-fun c!1037238 () Bool)

(assert (=> d!1837710 (= c!1037238 ((_ is EmptyExpr!15917) (regTwo!32347 (regTwo!32347 r!7292))))))

(declare-fun e!3588201 () Bool)

(assert (=> d!1837710 (= (matchRSpec!3018 (regTwo!32347 (regTwo!32347 r!7292)) s!2326) e!3588201)))

(declare-fun b!5851269 () Bool)

(assert (=> b!5851269 (= e!3588201 call!457922)))

(assert (=> b!5851270 (= e!3588199 call!457921)))

(declare-fun bm!457917 () Bool)

(assert (=> bm!457917 (= call!457922 (isEmpty!35787 s!2326))))

(declare-fun b!5851271 () Bool)

(assert (=> b!5851271 (= e!3588201 e!3588200)))

(declare-fun res!2463432 () Bool)

(assert (=> b!5851271 (= res!2463432 (not ((_ is EmptyLang!15917) (regTwo!32347 (regTwo!32347 r!7292)))))))

(assert (=> b!5851271 (=> (not res!2463432) (not e!3588200))))

(assert (= (and d!1837710 c!1037238) b!5851269))

(assert (= (and d!1837710 (not c!1037238)) b!5851271))

(assert (= (and b!5851271 res!2463432) b!5851264))

(assert (= (and b!5851264 c!1037237) b!5851261))

(assert (= (and b!5851264 (not c!1037237)) b!5851265))

(assert (= (and b!5851265 c!1037235) b!5851263))

(assert (= (and b!5851265 (not c!1037235)) b!5851262))

(assert (= (and b!5851263 (not res!2463430)) b!5851267))

(assert (= (and b!5851262 c!1037236) b!5851268))

(assert (= (and b!5851262 (not c!1037236)) b!5851270))

(assert (= (and b!5851268 (not res!2463431)) b!5851266))

(assert (= (or b!5851266 b!5851270) bm!457916))

(assert (= (or b!5851269 b!5851268) bm!457917))

(declare-fun m!6771104 () Bool)

(assert (=> b!5851263 m!6771104))

(declare-fun m!6771106 () Bool)

(assert (=> bm!457916 m!6771106))

(declare-fun m!6771108 () Bool)

(assert (=> b!5851267 m!6771108))

(assert (=> bm!457917 m!6770506))

(assert (=> b!5850420 d!1837710))

(declare-fun d!1837712 () Bool)

(declare-fun nullableFct!1904 (Regex!15917) Bool)

(assert (=> d!1837712 (= (nullable!5917 (regOne!32346 (regTwo!32347 r!7292))) (nullableFct!1904 (regOne!32346 (regTwo!32347 r!7292))))))

(declare-fun bs!1378738 () Bool)

(assert (= bs!1378738 d!1837712))

(declare-fun m!6771110 () Bool)

(assert (=> bs!1378738 m!6771110))

(assert (=> b!5850561 d!1837712))

(declare-fun d!1837714 () Bool)

(assert (=> d!1837714 (= (head!12388 s!2326) (h!70376 s!2326))))

(assert (=> b!5850495 d!1837714))

(declare-fun b!5851272 () Bool)

(declare-fun e!3588209 () Bool)

(declare-fun e!3588206 () Bool)

(assert (=> b!5851272 (= e!3588209 e!3588206)))

(declare-fun c!1037239 () Bool)

(assert (=> b!5851272 (= c!1037239 ((_ is Star!15917) lt!2304384))))

(declare-fun b!5851273 () Bool)

(declare-fun res!2463436 () Bool)

(declare-fun e!3588204 () Bool)

(assert (=> b!5851273 (=> res!2463436 e!3588204)))

(assert (=> b!5851273 (= res!2463436 (not ((_ is Concat!24762) lt!2304384)))))

(declare-fun e!3588203 () Bool)

(assert (=> b!5851273 (= e!3588203 e!3588204)))

(declare-fun bm!457918 () Bool)

(declare-fun call!457924 () Bool)

(declare-fun c!1037240 () Bool)

(assert (=> bm!457918 (= call!457924 (validRegex!7653 (ite c!1037240 (regTwo!32347 lt!2304384) (regTwo!32346 lt!2304384))))))

(declare-fun b!5851274 () Bool)

(declare-fun e!3588208 () Bool)

(assert (=> b!5851274 (= e!3588206 e!3588208)))

(declare-fun res!2463435 () Bool)

(assert (=> b!5851274 (= res!2463435 (not (nullable!5917 (reg!16246 lt!2304384))))))

(assert (=> b!5851274 (=> (not res!2463435) (not e!3588208))))

(declare-fun b!5851275 () Bool)

(declare-fun res!2463437 () Bool)

(declare-fun e!3588205 () Bool)

(assert (=> b!5851275 (=> (not res!2463437) (not e!3588205))))

(declare-fun call!457923 () Bool)

(assert (=> b!5851275 (= res!2463437 call!457923)))

(assert (=> b!5851275 (= e!3588203 e!3588205)))

(declare-fun d!1837716 () Bool)

(declare-fun res!2463434 () Bool)

(assert (=> d!1837716 (=> res!2463434 e!3588209)))

(assert (=> d!1837716 (= res!2463434 ((_ is ElementMatch!15917) lt!2304384))))

(assert (=> d!1837716 (= (validRegex!7653 lt!2304384) e!3588209)))

(declare-fun bm!457919 () Bool)

(declare-fun call!457925 () Bool)

(assert (=> bm!457919 (= call!457923 call!457925)))

(declare-fun b!5851276 () Bool)

(assert (=> b!5851276 (= e!3588208 call!457925)))

(declare-fun b!5851277 () Bool)

(assert (=> b!5851277 (= e!3588205 call!457924)))

(declare-fun b!5851278 () Bool)

(declare-fun e!3588207 () Bool)

(assert (=> b!5851278 (= e!3588204 e!3588207)))

(declare-fun res!2463433 () Bool)

(assert (=> b!5851278 (=> (not res!2463433) (not e!3588207))))

(assert (=> b!5851278 (= res!2463433 call!457923)))

(declare-fun bm!457920 () Bool)

(assert (=> bm!457920 (= call!457925 (validRegex!7653 (ite c!1037239 (reg!16246 lt!2304384) (ite c!1037240 (regOne!32347 lt!2304384) (regOne!32346 lt!2304384)))))))

(declare-fun b!5851279 () Bool)

(assert (=> b!5851279 (= e!3588206 e!3588203)))

(assert (=> b!5851279 (= c!1037240 ((_ is Union!15917) lt!2304384))))

(declare-fun b!5851280 () Bool)

(assert (=> b!5851280 (= e!3588207 call!457924)))

(assert (= (and d!1837716 (not res!2463434)) b!5851272))

(assert (= (and b!5851272 c!1037239) b!5851274))

(assert (= (and b!5851272 (not c!1037239)) b!5851279))

(assert (= (and b!5851274 res!2463435) b!5851276))

(assert (= (and b!5851279 c!1037240) b!5851275))

(assert (= (and b!5851279 (not c!1037240)) b!5851273))

(assert (= (and b!5851275 res!2463437) b!5851277))

(assert (= (and b!5851273 (not res!2463436)) b!5851278))

(assert (= (and b!5851278 res!2463433) b!5851280))

(assert (= (or b!5851277 b!5851280) bm!457918))

(assert (= (or b!5851275 b!5851278) bm!457919))

(assert (= (or b!5851276 bm!457919) bm!457920))

(declare-fun m!6771112 () Bool)

(assert (=> bm!457918 m!6771112))

(declare-fun m!6771114 () Bool)

(assert (=> b!5851274 m!6771114))

(declare-fun m!6771116 () Bool)

(assert (=> bm!457920 m!6771116))

(assert (=> d!1837488 d!1837716))

(declare-fun d!1837718 () Bool)

(declare-fun res!2463442 () Bool)

(declare-fun e!3588214 () Bool)

(assert (=> d!1837718 (=> res!2463442 e!3588214)))

(assert (=> d!1837718 (= res!2463442 ((_ is Nil!63926) (exprs!5801 (h!70375 zl!343))))))

(assert (=> d!1837718 (= (forall!15004 (exprs!5801 (h!70375 zl!343)) lambda!319906) e!3588214)))

(declare-fun b!5851285 () Bool)

(declare-fun e!3588215 () Bool)

(assert (=> b!5851285 (= e!3588214 e!3588215)))

(declare-fun res!2463443 () Bool)

(assert (=> b!5851285 (=> (not res!2463443) (not e!3588215))))

(declare-fun dynLambda!24990 (Int Regex!15917) Bool)

(assert (=> b!5851285 (= res!2463443 (dynLambda!24990 lambda!319906 (h!70374 (exprs!5801 (h!70375 zl!343)))))))

(declare-fun b!5851286 () Bool)

(assert (=> b!5851286 (= e!3588215 (forall!15004 (t!377411 (exprs!5801 (h!70375 zl!343))) lambda!319906))))

(assert (= (and d!1837718 (not res!2463442)) b!5851285))

(assert (= (and b!5851285 res!2463443) b!5851286))

(declare-fun b_lambda!220257 () Bool)

(assert (=> (not b_lambda!220257) (not b!5851285)))

(declare-fun m!6771118 () Bool)

(assert (=> b!5851285 m!6771118))

(declare-fun m!6771120 () Bool)

(assert (=> b!5851286 m!6771120))

(assert (=> d!1837488 d!1837718))

(declare-fun d!1837720 () Bool)

(declare-fun lambda!319936 () Int)

(declare-fun exists!2301 ((InoxSet Context!10602) Int) Bool)

(assert (=> d!1837720 (= (nullableZipper!1756 lt!2304313) (exists!2301 lt!2304313 lambda!319936))))

(declare-fun bs!1378739 () Bool)

(assert (= bs!1378739 d!1837720))

(declare-fun m!6771122 () Bool)

(assert (=> bs!1378739 m!6771122))

(assert (=> b!5850582 d!1837720))

(declare-fun d!1837722 () Bool)

(assert (=> d!1837722 (= (isEmpty!35787 (tail!11473 s!2326)) ((_ is Nil!63928) (tail!11473 s!2326)))))

(assert (=> b!5850483 d!1837722))

(declare-fun d!1837724 () Bool)

(assert (=> d!1837724 (= (tail!11473 s!2326) (t!377413 s!2326))))

(assert (=> b!5850483 d!1837724))

(declare-fun d!1837726 () Bool)

(assert (=> d!1837726 (= (head!12389 (exprs!5801 (h!70375 zl!343))) (h!70374 (exprs!5801 (h!70375 zl!343))))))

(assert (=> b!5850672 d!1837726))

(declare-fun bs!1378740 () Bool)

(declare-fun d!1837728 () Bool)

(assert (= bs!1378740 (and d!1837728 d!1837720)))

(declare-fun lambda!319937 () Int)

(assert (=> bs!1378740 (= lambda!319937 lambda!319936)))

(assert (=> d!1837728 (= (nullableZipper!1756 lt!2304321) (exists!2301 lt!2304321 lambda!319937))))

(declare-fun bs!1378741 () Bool)

(assert (= bs!1378741 d!1837728))

(declare-fun m!6771124 () Bool)

(assert (=> bs!1378741 m!6771124))

(assert (=> b!5850615 d!1837728))

(declare-fun b!5851287 () Bool)

(declare-fun e!3588222 () Bool)

(declare-fun e!3588219 () Bool)

(assert (=> b!5851287 (= e!3588222 e!3588219)))

(declare-fun c!1037243 () Bool)

(assert (=> b!5851287 (= c!1037243 ((_ is Star!15917) lt!2304370))))

(declare-fun b!5851288 () Bool)

(declare-fun res!2463447 () Bool)

(declare-fun e!3588217 () Bool)

(assert (=> b!5851288 (=> res!2463447 e!3588217)))

(assert (=> b!5851288 (= res!2463447 (not ((_ is Concat!24762) lt!2304370)))))

(declare-fun e!3588216 () Bool)

(assert (=> b!5851288 (= e!3588216 e!3588217)))

(declare-fun bm!457921 () Bool)

(declare-fun call!457927 () Bool)

(declare-fun c!1037244 () Bool)

(assert (=> bm!457921 (= call!457927 (validRegex!7653 (ite c!1037244 (regTwo!32347 lt!2304370) (regTwo!32346 lt!2304370))))))

(declare-fun b!5851289 () Bool)

(declare-fun e!3588221 () Bool)

(assert (=> b!5851289 (= e!3588219 e!3588221)))

(declare-fun res!2463446 () Bool)

(assert (=> b!5851289 (= res!2463446 (not (nullable!5917 (reg!16246 lt!2304370))))))

(assert (=> b!5851289 (=> (not res!2463446) (not e!3588221))))

(declare-fun b!5851290 () Bool)

(declare-fun res!2463448 () Bool)

(declare-fun e!3588218 () Bool)

(assert (=> b!5851290 (=> (not res!2463448) (not e!3588218))))

(declare-fun call!457926 () Bool)

(assert (=> b!5851290 (= res!2463448 call!457926)))

(assert (=> b!5851290 (= e!3588216 e!3588218)))

(declare-fun d!1837730 () Bool)

(declare-fun res!2463445 () Bool)

(assert (=> d!1837730 (=> res!2463445 e!3588222)))

(assert (=> d!1837730 (= res!2463445 ((_ is ElementMatch!15917) lt!2304370))))

(assert (=> d!1837730 (= (validRegex!7653 lt!2304370) e!3588222)))

(declare-fun bm!457922 () Bool)

(declare-fun call!457928 () Bool)

(assert (=> bm!457922 (= call!457926 call!457928)))

(declare-fun b!5851291 () Bool)

(assert (=> b!5851291 (= e!3588221 call!457928)))

(declare-fun b!5851292 () Bool)

(assert (=> b!5851292 (= e!3588218 call!457927)))

(declare-fun b!5851293 () Bool)

(declare-fun e!3588220 () Bool)

(assert (=> b!5851293 (= e!3588217 e!3588220)))

(declare-fun res!2463444 () Bool)

(assert (=> b!5851293 (=> (not res!2463444) (not e!3588220))))

(assert (=> b!5851293 (= res!2463444 call!457926)))

(declare-fun bm!457923 () Bool)

(assert (=> bm!457923 (= call!457928 (validRegex!7653 (ite c!1037243 (reg!16246 lt!2304370) (ite c!1037244 (regOne!32347 lt!2304370) (regOne!32346 lt!2304370)))))))

(declare-fun b!5851294 () Bool)

(assert (=> b!5851294 (= e!3588219 e!3588216)))

(assert (=> b!5851294 (= c!1037244 ((_ is Union!15917) lt!2304370))))

(declare-fun b!5851295 () Bool)

(assert (=> b!5851295 (= e!3588220 call!457927)))

(assert (= (and d!1837730 (not res!2463445)) b!5851287))

(assert (= (and b!5851287 c!1037243) b!5851289))

(assert (= (and b!5851287 (not c!1037243)) b!5851294))

(assert (= (and b!5851289 res!2463446) b!5851291))

(assert (= (and b!5851294 c!1037244) b!5851290))

(assert (= (and b!5851294 (not c!1037244)) b!5851288))

(assert (= (and b!5851290 res!2463448) b!5851292))

(assert (= (and b!5851288 (not res!2463447)) b!5851293))

(assert (= (and b!5851293 res!2463444) b!5851295))

(assert (= (or b!5851292 b!5851295) bm!457921))

(assert (= (or b!5851290 b!5851293) bm!457922))

(assert (= (or b!5851291 bm!457922) bm!457923))

(declare-fun m!6771126 () Bool)

(assert (=> bm!457921 m!6771126))

(declare-fun m!6771128 () Bool)

(assert (=> b!5851289 m!6771128))

(declare-fun m!6771130 () Bool)

(assert (=> bm!457923 m!6771130))

(assert (=> d!1837446 d!1837730))

(declare-fun d!1837732 () Bool)

(declare-fun res!2463449 () Bool)

(declare-fun e!3588223 () Bool)

(assert (=> d!1837732 (=> res!2463449 e!3588223)))

(assert (=> d!1837732 (= res!2463449 ((_ is Nil!63926) (unfocusZipperList!1338 zl!343)))))

(assert (=> d!1837732 (= (forall!15004 (unfocusZipperList!1338 zl!343) lambda!319890) e!3588223)))

(declare-fun b!5851296 () Bool)

(declare-fun e!3588224 () Bool)

(assert (=> b!5851296 (= e!3588223 e!3588224)))

(declare-fun res!2463450 () Bool)

(assert (=> b!5851296 (=> (not res!2463450) (not e!3588224))))

(assert (=> b!5851296 (= res!2463450 (dynLambda!24990 lambda!319890 (h!70374 (unfocusZipperList!1338 zl!343))))))

(declare-fun b!5851297 () Bool)

(assert (=> b!5851297 (= e!3588224 (forall!15004 (t!377411 (unfocusZipperList!1338 zl!343)) lambda!319890))))

(assert (= (and d!1837732 (not res!2463449)) b!5851296))

(assert (= (and b!5851296 res!2463450) b!5851297))

(declare-fun b_lambda!220259 () Bool)

(assert (=> (not b_lambda!220259) (not b!5851296)))

(declare-fun m!6771132 () Bool)

(assert (=> b!5851296 m!6771132))

(declare-fun m!6771134 () Bool)

(assert (=> b!5851297 m!6771134))

(assert (=> d!1837446 d!1837732))

(declare-fun bs!1378742 () Bool)

(declare-fun b!5851303 () Bool)

(assert (= bs!1378742 (and b!5851303 b!5850419)))

(declare-fun lambda!319938 () Int)

(assert (=> bs!1378742 (= (and (= (reg!16246 (regTwo!32347 (regOne!32347 r!7292))) (reg!16246 (regTwo!32347 r!7292))) (= (regTwo!32347 (regOne!32347 r!7292)) (regTwo!32347 r!7292))) (= lambda!319938 lambda!319884))))

(declare-fun bs!1378743 () Bool)

(assert (= bs!1378743 (and b!5851303 b!5851266)))

(assert (=> bs!1378743 (= (and (= (reg!16246 (regTwo!32347 (regOne!32347 r!7292))) (reg!16246 (regTwo!32347 (regTwo!32347 r!7292)))) (= (regTwo!32347 (regOne!32347 r!7292)) (regTwo!32347 (regTwo!32347 r!7292)))) (= lambda!319938 lambda!319932))))

(declare-fun bs!1378744 () Bool)

(assert (= bs!1378744 (and b!5851303 b!5850476)))

(assert (=> bs!1378744 (= (and (= (reg!16246 (regTwo!32347 (regOne!32347 r!7292))) (reg!16246 (regOne!32347 r!7292))) (= (regTwo!32347 (regOne!32347 r!7292)) (regOne!32347 r!7292))) (= lambda!319938 lambda!319886))))

(declare-fun bs!1378745 () Bool)

(assert (= bs!1378745 (and b!5851303 b!5850626)))

(assert (=> bs!1378745 (not (= lambda!319938 lambda!319900))))

(declare-fun bs!1378746 () Bool)

(assert (= bs!1378746 (and b!5851303 b!5850622)))

(assert (=> bs!1378746 (= (and (= (reg!16246 (regTwo!32347 (regOne!32347 r!7292))) (reg!16246 r!7292)) (= (regTwo!32347 (regOne!32347 r!7292)) r!7292)) (= lambda!319938 lambda!319899))))

(declare-fun bs!1378747 () Bool)

(assert (= bs!1378747 (and b!5851303 b!5850480)))

(assert (=> bs!1378747 (not (= lambda!319938 lambda!319887))))

(declare-fun bs!1378748 () Bool)

(assert (= bs!1378748 (and b!5851303 b!5851270)))

(assert (=> bs!1378748 (not (= lambda!319938 lambda!319933))))

(declare-fun bs!1378749 () Bool)

(assert (= bs!1378749 (and b!5851303 b!5850423)))

(assert (=> bs!1378749 (not (= lambda!319938 lambda!319885))))

(assert (=> b!5851303 true))

(assert (=> b!5851303 true))

(declare-fun bs!1378750 () Bool)

(declare-fun b!5851307 () Bool)

(assert (= bs!1378750 (and b!5851307 b!5850419)))

(declare-fun lambda!319939 () Int)

(assert (=> bs!1378750 (not (= lambda!319939 lambda!319884))))

(declare-fun bs!1378751 () Bool)

(assert (= bs!1378751 (and b!5851307 b!5851266)))

(assert (=> bs!1378751 (not (= lambda!319939 lambda!319932))))

(declare-fun bs!1378752 () Bool)

(assert (= bs!1378752 (and b!5851307 b!5850476)))

(assert (=> bs!1378752 (not (= lambda!319939 lambda!319886))))

(declare-fun bs!1378753 () Bool)

(assert (= bs!1378753 (and b!5851307 b!5850622)))

(assert (=> bs!1378753 (not (= lambda!319939 lambda!319899))))

(declare-fun bs!1378754 () Bool)

(assert (= bs!1378754 (and b!5851307 b!5850480)))

(assert (=> bs!1378754 (= (and (= (regOne!32346 (regTwo!32347 (regOne!32347 r!7292))) (regOne!32346 (regOne!32347 r!7292))) (= (regTwo!32346 (regTwo!32347 (regOne!32347 r!7292))) (regTwo!32346 (regOne!32347 r!7292)))) (= lambda!319939 lambda!319887))))

(declare-fun bs!1378755 () Bool)

(assert (= bs!1378755 (and b!5851307 b!5851270)))

(assert (=> bs!1378755 (= (and (= (regOne!32346 (regTwo!32347 (regOne!32347 r!7292))) (regOne!32346 (regTwo!32347 (regTwo!32347 r!7292)))) (= (regTwo!32346 (regTwo!32347 (regOne!32347 r!7292))) (regTwo!32346 (regTwo!32347 (regTwo!32347 r!7292))))) (= lambda!319939 lambda!319933))))

(declare-fun bs!1378756 () Bool)

(assert (= bs!1378756 (and b!5851307 b!5850423)))

(assert (=> bs!1378756 (= (and (= (regOne!32346 (regTwo!32347 (regOne!32347 r!7292))) (regOne!32346 (regTwo!32347 r!7292))) (= (regTwo!32346 (regTwo!32347 (regOne!32347 r!7292))) (regTwo!32346 (regTwo!32347 r!7292)))) (= lambda!319939 lambda!319885))))

(declare-fun bs!1378757 () Bool)

(assert (= bs!1378757 (and b!5851307 b!5851303)))

(assert (=> bs!1378757 (not (= lambda!319939 lambda!319938))))

(declare-fun bs!1378758 () Bool)

(assert (= bs!1378758 (and b!5851307 b!5850626)))

(assert (=> bs!1378758 (= (and (= (regOne!32346 (regTwo!32347 (regOne!32347 r!7292))) (regOne!32346 r!7292)) (= (regTwo!32346 (regTwo!32347 (regOne!32347 r!7292))) (regTwo!32346 r!7292))) (= lambda!319939 lambda!319900))))

(assert (=> b!5851307 true))

(assert (=> b!5851307 true))

(declare-fun b!5851298 () Bool)

(declare-fun e!3588225 () Bool)

(assert (=> b!5851298 (= e!3588225 (= s!2326 (Cons!63928 (c!1036885 (regTwo!32347 (regOne!32347 r!7292))) Nil!63928)))))

(declare-fun b!5851299 () Bool)

(declare-fun e!3588226 () Bool)

(declare-fun e!3588228 () Bool)

(assert (=> b!5851299 (= e!3588226 e!3588228)))

(declare-fun c!1037246 () Bool)

(assert (=> b!5851299 (= c!1037246 ((_ is Star!15917) (regTwo!32347 (regOne!32347 r!7292))))))

(declare-fun b!5851300 () Bool)

(declare-fun e!3588227 () Bool)

(assert (=> b!5851300 (= e!3588226 e!3588227)))

(declare-fun res!2463451 () Bool)

(assert (=> b!5851300 (= res!2463451 (matchRSpec!3018 (regOne!32347 (regTwo!32347 (regOne!32347 r!7292))) s!2326))))

(assert (=> b!5851300 (=> res!2463451 e!3588227)))

(declare-fun b!5851301 () Bool)

(declare-fun c!1037247 () Bool)

(assert (=> b!5851301 (= c!1037247 ((_ is ElementMatch!15917) (regTwo!32347 (regOne!32347 r!7292))))))

(declare-fun e!3588229 () Bool)

(assert (=> b!5851301 (= e!3588229 e!3588225)))

(declare-fun bm!457924 () Bool)

(declare-fun call!457929 () Bool)

(assert (=> bm!457924 (= call!457929 (Exists!2989 (ite c!1037246 lambda!319938 lambda!319939)))))

(declare-fun b!5851302 () Bool)

(declare-fun c!1037245 () Bool)

(assert (=> b!5851302 (= c!1037245 ((_ is Union!15917) (regTwo!32347 (regOne!32347 r!7292))))))

(assert (=> b!5851302 (= e!3588225 e!3588226)))

(declare-fun e!3588231 () Bool)

(assert (=> b!5851303 (= e!3588231 call!457929)))

(declare-fun b!5851304 () Bool)

(assert (=> b!5851304 (= e!3588227 (matchRSpec!3018 (regTwo!32347 (regTwo!32347 (regOne!32347 r!7292))) s!2326))))

(declare-fun b!5851305 () Bool)

(declare-fun res!2463452 () Bool)

(assert (=> b!5851305 (=> res!2463452 e!3588231)))

(declare-fun call!457930 () Bool)

(assert (=> b!5851305 (= res!2463452 call!457930)))

(assert (=> b!5851305 (= e!3588228 e!3588231)))

(declare-fun d!1837734 () Bool)

(declare-fun c!1037248 () Bool)

(assert (=> d!1837734 (= c!1037248 ((_ is EmptyExpr!15917) (regTwo!32347 (regOne!32347 r!7292))))))

(declare-fun e!3588230 () Bool)

(assert (=> d!1837734 (= (matchRSpec!3018 (regTwo!32347 (regOne!32347 r!7292)) s!2326) e!3588230)))

(declare-fun b!5851306 () Bool)

(assert (=> b!5851306 (= e!3588230 call!457930)))

(assert (=> b!5851307 (= e!3588228 call!457929)))

(declare-fun bm!457925 () Bool)

(assert (=> bm!457925 (= call!457930 (isEmpty!35787 s!2326))))

(declare-fun b!5851308 () Bool)

(assert (=> b!5851308 (= e!3588230 e!3588229)))

(declare-fun res!2463453 () Bool)

(assert (=> b!5851308 (= res!2463453 (not ((_ is EmptyLang!15917) (regTwo!32347 (regOne!32347 r!7292)))))))

(assert (=> b!5851308 (=> (not res!2463453) (not e!3588229))))

(assert (= (and d!1837734 c!1037248) b!5851306))

(assert (= (and d!1837734 (not c!1037248)) b!5851308))

(assert (= (and b!5851308 res!2463453) b!5851301))

(assert (= (and b!5851301 c!1037247) b!5851298))

(assert (= (and b!5851301 (not c!1037247)) b!5851302))

(assert (= (and b!5851302 c!1037245) b!5851300))

(assert (= (and b!5851302 (not c!1037245)) b!5851299))

(assert (= (and b!5851300 (not res!2463451)) b!5851304))

(assert (= (and b!5851299 c!1037246) b!5851305))

(assert (= (and b!5851299 (not c!1037246)) b!5851307))

(assert (= (and b!5851305 (not res!2463452)) b!5851303))

(assert (= (or b!5851303 b!5851307) bm!457924))

(assert (= (or b!5851306 b!5851305) bm!457925))

(declare-fun m!6771136 () Bool)

(assert (=> b!5851300 m!6771136))

(declare-fun m!6771138 () Bool)

(assert (=> bm!457924 m!6771138))

(declare-fun m!6771140 () Bool)

(assert (=> b!5851304 m!6771140))

(assert (=> bm!457925 m!6770506))

(assert (=> b!5850477 d!1837734))

(assert (=> b!5850470 d!1837714))

(declare-fun d!1837736 () Bool)

(declare-fun c!1037249 () Bool)

(assert (=> d!1837736 (= c!1037249 (isEmpty!35787 (tail!11473 (t!377413 s!2326))))))

(declare-fun e!3588232 () Bool)

(assert (=> d!1837736 (= (matchZipper!1983 (derivationStepZipper!1916 lt!2304312 (head!12388 (t!377413 s!2326))) (tail!11473 (t!377413 s!2326))) e!3588232)))

(declare-fun b!5851309 () Bool)

(assert (=> b!5851309 (= e!3588232 (nullableZipper!1756 (derivationStepZipper!1916 lt!2304312 (head!12388 (t!377413 s!2326)))))))

(declare-fun b!5851310 () Bool)

(assert (=> b!5851310 (= e!3588232 (matchZipper!1983 (derivationStepZipper!1916 (derivationStepZipper!1916 lt!2304312 (head!12388 (t!377413 s!2326))) (head!12388 (tail!11473 (t!377413 s!2326)))) (tail!11473 (tail!11473 (t!377413 s!2326)))))))

(assert (= (and d!1837736 c!1037249) b!5851309))

(assert (= (and d!1837736 (not c!1037249)) b!5851310))

(assert (=> d!1837736 m!6770592))

(declare-fun m!6771142 () Bool)

(assert (=> d!1837736 m!6771142))

(assert (=> b!5851309 m!6770590))

(declare-fun m!6771144 () Bool)

(assert (=> b!5851309 m!6771144))

(assert (=> b!5851310 m!6770592))

(declare-fun m!6771146 () Bool)

(assert (=> b!5851310 m!6771146))

(assert (=> b!5851310 m!6770590))

(assert (=> b!5851310 m!6771146))

(declare-fun m!6771148 () Bool)

(assert (=> b!5851310 m!6771148))

(assert (=> b!5851310 m!6770592))

(declare-fun m!6771150 () Bool)

(assert (=> b!5851310 m!6771150))

(assert (=> b!5851310 m!6771148))

(assert (=> b!5851310 m!6771150))

(declare-fun m!6771152 () Bool)

(assert (=> b!5851310 m!6771152))

(assert (=> b!5850581 d!1837736))

(declare-fun bs!1378759 () Bool)

(declare-fun d!1837738 () Bool)

(assert (= bs!1378759 (and d!1837738 b!5849976)))

(declare-fun lambda!319940 () Int)

(assert (=> bs!1378759 (= (= (head!12388 (t!377413 s!2326)) (h!70376 s!2326)) (= lambda!319940 lambda!319852))))

(declare-fun bs!1378760 () Bool)

(assert (= bs!1378760 (and d!1837738 d!1837480)))

(assert (=> bs!1378760 (= (= (head!12388 (t!377413 s!2326)) (h!70376 s!2326)) (= lambda!319940 lambda!319903))))

(assert (=> d!1837738 true))

(assert (=> d!1837738 (= (derivationStepZipper!1916 lt!2304312 (head!12388 (t!377413 s!2326))) (flatMap!1448 lt!2304312 lambda!319940))))

(declare-fun bs!1378761 () Bool)

(assert (= bs!1378761 d!1837738))

(declare-fun m!6771154 () Bool)

(assert (=> bs!1378761 m!6771154))

(assert (=> b!5850581 d!1837738))

(declare-fun d!1837740 () Bool)

(assert (=> d!1837740 (= (head!12388 (t!377413 s!2326)) (h!70376 (t!377413 s!2326)))))

(assert (=> b!5850581 d!1837740))

(declare-fun d!1837742 () Bool)

(assert (=> d!1837742 (= (tail!11473 (t!377413 s!2326)) (t!377413 (t!377413 s!2326)))))

(assert (=> b!5850581 d!1837742))

(declare-fun bm!457926 () Bool)

(declare-fun call!457931 () (InoxSet Context!10602))

(declare-fun call!457934 () (InoxSet Context!10602))

(assert (=> bm!457926 (= call!457931 call!457934)))

(declare-fun bm!457927 () Bool)

(declare-fun c!1037253 () Bool)

(declare-fun call!457936 () List!64050)

(declare-fun c!1037254 () Bool)

(assert (=> bm!457927 (= call!457936 ($colon$colon!1822 (exprs!5801 (ite c!1037048 lt!2304315 (Context!10603 call!457790))) (ite (or c!1037254 c!1037253) (regTwo!32346 (ite c!1037048 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292)))) (ite c!1037048 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292))))))))

(declare-fun b!5851312 () Bool)

(declare-fun e!3588238 () (InoxSet Context!10602))

(declare-fun e!3588233 () (InoxSet Context!10602))

(assert (=> b!5851312 (= e!3588238 e!3588233)))

(assert (=> b!5851312 (= c!1037253 ((_ is Concat!24762) (ite c!1037048 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292)))))))

(declare-fun c!1037250 () Bool)

(declare-fun bm!457928 () Bool)

(declare-fun call!457932 () (InoxSet Context!10602))

(assert (=> bm!457928 (= call!457932 (derivationStepZipperDown!1183 (ite c!1037250 (regOne!32347 (ite c!1037048 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292)))) (regOne!32346 (ite c!1037048 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292))))) (ite c!1037250 (ite c!1037048 lt!2304315 (Context!10603 call!457790)) (Context!10603 call!457936)) (h!70376 s!2326)))))

(declare-fun b!5851313 () Bool)

(assert (=> b!5851313 (= e!3588233 call!457931)))

(declare-fun call!457935 () (InoxSet Context!10602))

(declare-fun call!457933 () List!64050)

(declare-fun bm!457929 () Bool)

(assert (=> bm!457929 (= call!457935 (derivationStepZipperDown!1183 (ite c!1037250 (regTwo!32347 (ite c!1037048 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292)))) (ite c!1037254 (regTwo!32346 (ite c!1037048 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292)))) (ite c!1037253 (regOne!32346 (ite c!1037048 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292)))) (reg!16246 (ite c!1037048 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292))))))) (ite (or c!1037250 c!1037254) (ite c!1037048 lt!2304315 (Context!10603 call!457790)) (Context!10603 call!457933)) (h!70376 s!2326)))))

(declare-fun b!5851314 () Bool)

(declare-fun c!1037251 () Bool)

(assert (=> b!5851314 (= c!1037251 ((_ is Star!15917) (ite c!1037048 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292)))))))

(declare-fun e!3588236 () (InoxSet Context!10602))

(assert (=> b!5851314 (= e!3588233 e!3588236)))

(declare-fun e!3588237 () (InoxSet Context!10602))

(declare-fun b!5851315 () Bool)

(assert (=> b!5851315 (= e!3588237 (store ((as const (Array Context!10602 Bool)) false) (ite c!1037048 lt!2304315 (Context!10603 call!457790)) true))))

(declare-fun b!5851316 () Bool)

(declare-fun e!3588234 () (InoxSet Context!10602))

(assert (=> b!5851316 (= e!3588234 ((_ map or) call!457932 call!457935))))

(declare-fun b!5851317 () Bool)

(declare-fun e!3588235 () Bool)

(assert (=> b!5851317 (= c!1037254 e!3588235)))

(declare-fun res!2463454 () Bool)

(assert (=> b!5851317 (=> (not res!2463454) (not e!3588235))))

(assert (=> b!5851317 (= res!2463454 ((_ is Concat!24762) (ite c!1037048 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292)))))))

(assert (=> b!5851317 (= e!3588234 e!3588238)))

(declare-fun bm!457930 () Bool)

(assert (=> bm!457930 (= call!457933 call!457936)))

(declare-fun b!5851318 () Bool)

(assert (=> b!5851318 (= e!3588235 (nullable!5917 (regOne!32346 (ite c!1037048 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292))))))))

(declare-fun bm!457931 () Bool)

(assert (=> bm!457931 (= call!457934 call!457935)))

(declare-fun b!5851319 () Bool)

(assert (=> b!5851319 (= e!3588238 ((_ map or) call!457932 call!457934))))

(declare-fun b!5851311 () Bool)

(assert (=> b!5851311 (= e!3588236 ((as const (Array Context!10602 Bool)) false))))

(declare-fun c!1037252 () Bool)

(declare-fun d!1837744 () Bool)

(assert (=> d!1837744 (= c!1037252 (and ((_ is ElementMatch!15917) (ite c!1037048 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292)))) (= (c!1036885 (ite c!1037048 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292)))) (h!70376 s!2326))))))

(assert (=> d!1837744 (= (derivationStepZipperDown!1183 (ite c!1037048 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292))) (ite c!1037048 lt!2304315 (Context!10603 call!457790)) (h!70376 s!2326)) e!3588237)))

(declare-fun b!5851320 () Bool)

(assert (=> b!5851320 (= e!3588236 call!457931)))

(declare-fun b!5851321 () Bool)

(assert (=> b!5851321 (= e!3588237 e!3588234)))

(assert (=> b!5851321 (= c!1037250 ((_ is Union!15917) (ite c!1037048 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292)))))))

(assert (= (and d!1837744 c!1037252) b!5851315))

(assert (= (and d!1837744 (not c!1037252)) b!5851321))

(assert (= (and b!5851321 c!1037250) b!5851316))

(assert (= (and b!5851321 (not c!1037250)) b!5851317))

(assert (= (and b!5851317 res!2463454) b!5851318))

(assert (= (and b!5851317 c!1037254) b!5851319))

(assert (= (and b!5851317 (not c!1037254)) b!5851312))

(assert (= (and b!5851312 c!1037253) b!5851313))

(assert (= (and b!5851312 (not c!1037253)) b!5851314))

(assert (= (and b!5851314 c!1037251) b!5851320))

(assert (= (and b!5851314 (not c!1037251)) b!5851311))

(assert (= (or b!5851313 b!5851320) bm!457930))

(assert (= (or b!5851313 b!5851320) bm!457926))

(assert (= (or b!5851319 bm!457930) bm!457927))

(assert (= (or b!5851319 bm!457926) bm!457931))

(assert (= (or b!5851316 bm!457931) bm!457929))

(assert (= (or b!5851316 b!5851319) bm!457928))

(declare-fun m!6771156 () Bool)

(assert (=> bm!457928 m!6771156))

(declare-fun m!6771158 () Bool)

(assert (=> bm!457927 m!6771158))

(declare-fun m!6771160 () Bool)

(assert (=> b!5851318 m!6771160))

(declare-fun m!6771162 () Bool)

(assert (=> b!5851315 m!6771162))

(declare-fun m!6771164 () Bool)

(assert (=> bm!457929 m!6771164))

(assert (=> bm!457782 d!1837744))

(declare-fun d!1837746 () Bool)

(assert (=> d!1837746 (= (nullable!5917 (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))) (nullableFct!1904 (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))))))

(declare-fun bs!1378762 () Bool)

(assert (= bs!1378762 d!1837746))

(declare-fun m!6771166 () Bool)

(assert (=> bs!1378762 m!6771166))

(assert (=> b!5850608 d!1837746))

(declare-fun b!5851322 () Bool)

(declare-fun e!3588245 () Bool)

(declare-fun e!3588242 () Bool)

(assert (=> b!5851322 (= e!3588245 e!3588242)))

(declare-fun c!1037255 () Bool)

(assert (=> b!5851322 (= c!1037255 ((_ is Star!15917) (ite c!1037102 (reg!16246 r!7292) (ite c!1037103 (regOne!32347 r!7292) (regOne!32346 r!7292)))))))

(declare-fun b!5851323 () Bool)

(declare-fun res!2463458 () Bool)

(declare-fun e!3588240 () Bool)

(assert (=> b!5851323 (=> res!2463458 e!3588240)))

(assert (=> b!5851323 (= res!2463458 (not ((_ is Concat!24762) (ite c!1037102 (reg!16246 r!7292) (ite c!1037103 (regOne!32347 r!7292) (regOne!32346 r!7292))))))))

(declare-fun e!3588239 () Bool)

(assert (=> b!5851323 (= e!3588239 e!3588240)))

(declare-fun call!457938 () Bool)

(declare-fun c!1037256 () Bool)

(declare-fun bm!457932 () Bool)

(assert (=> bm!457932 (= call!457938 (validRegex!7653 (ite c!1037256 (regTwo!32347 (ite c!1037102 (reg!16246 r!7292) (ite c!1037103 (regOne!32347 r!7292) (regOne!32346 r!7292)))) (regTwo!32346 (ite c!1037102 (reg!16246 r!7292) (ite c!1037103 (regOne!32347 r!7292) (regOne!32346 r!7292)))))))))

(declare-fun b!5851324 () Bool)

(declare-fun e!3588244 () Bool)

(assert (=> b!5851324 (= e!3588242 e!3588244)))

(declare-fun res!2463457 () Bool)

(assert (=> b!5851324 (= res!2463457 (not (nullable!5917 (reg!16246 (ite c!1037102 (reg!16246 r!7292) (ite c!1037103 (regOne!32347 r!7292) (regOne!32346 r!7292)))))))))

(assert (=> b!5851324 (=> (not res!2463457) (not e!3588244))))

(declare-fun b!5851325 () Bool)

(declare-fun res!2463459 () Bool)

(declare-fun e!3588241 () Bool)

(assert (=> b!5851325 (=> (not res!2463459) (not e!3588241))))

(declare-fun call!457937 () Bool)

(assert (=> b!5851325 (= res!2463459 call!457937)))

(assert (=> b!5851325 (= e!3588239 e!3588241)))

(declare-fun d!1837748 () Bool)

(declare-fun res!2463456 () Bool)

(assert (=> d!1837748 (=> res!2463456 e!3588245)))

(assert (=> d!1837748 (= res!2463456 ((_ is ElementMatch!15917) (ite c!1037102 (reg!16246 r!7292) (ite c!1037103 (regOne!32347 r!7292) (regOne!32346 r!7292)))))))

(assert (=> d!1837748 (= (validRegex!7653 (ite c!1037102 (reg!16246 r!7292) (ite c!1037103 (regOne!32347 r!7292) (regOne!32346 r!7292)))) e!3588245)))

(declare-fun bm!457933 () Bool)

(declare-fun call!457939 () Bool)

(assert (=> bm!457933 (= call!457937 call!457939)))

(declare-fun b!5851326 () Bool)

(assert (=> b!5851326 (= e!3588244 call!457939)))

(declare-fun b!5851327 () Bool)

(assert (=> b!5851327 (= e!3588241 call!457938)))

(declare-fun b!5851328 () Bool)

(declare-fun e!3588243 () Bool)

(assert (=> b!5851328 (= e!3588240 e!3588243)))

(declare-fun res!2463455 () Bool)

(assert (=> b!5851328 (=> (not res!2463455) (not e!3588243))))

(assert (=> b!5851328 (= res!2463455 call!457937)))

(declare-fun bm!457934 () Bool)

(assert (=> bm!457934 (= call!457939 (validRegex!7653 (ite c!1037255 (reg!16246 (ite c!1037102 (reg!16246 r!7292) (ite c!1037103 (regOne!32347 r!7292) (regOne!32346 r!7292)))) (ite c!1037256 (regOne!32347 (ite c!1037102 (reg!16246 r!7292) (ite c!1037103 (regOne!32347 r!7292) (regOne!32346 r!7292)))) (regOne!32346 (ite c!1037102 (reg!16246 r!7292) (ite c!1037103 (regOne!32347 r!7292) (regOne!32346 r!7292))))))))))

(declare-fun b!5851329 () Bool)

(assert (=> b!5851329 (= e!3588242 e!3588239)))

(assert (=> b!5851329 (= c!1037256 ((_ is Union!15917) (ite c!1037102 (reg!16246 r!7292) (ite c!1037103 (regOne!32347 r!7292) (regOne!32346 r!7292)))))))

(declare-fun b!5851330 () Bool)

(assert (=> b!5851330 (= e!3588243 call!457938)))

(assert (= (and d!1837748 (not res!2463456)) b!5851322))

(assert (= (and b!5851322 c!1037255) b!5851324))

(assert (= (and b!5851322 (not c!1037255)) b!5851329))

(assert (= (and b!5851324 res!2463457) b!5851326))

(assert (= (and b!5851329 c!1037256) b!5851325))

(assert (= (and b!5851329 (not c!1037256)) b!5851323))

(assert (= (and b!5851325 res!2463459) b!5851327))

(assert (= (and b!5851323 (not res!2463458)) b!5851328))

(assert (= (and b!5851328 res!2463455) b!5851330))

(assert (= (or b!5851327 b!5851330) bm!457932))

(assert (= (or b!5851325 b!5851328) bm!457933))

(assert (= (or b!5851326 bm!457933) bm!457934))

(declare-fun m!6771168 () Bool)

(assert (=> bm!457932 m!6771168))

(declare-fun m!6771170 () Bool)

(assert (=> b!5851324 m!6771170))

(declare-fun m!6771172 () Bool)

(assert (=> bm!457934 m!6771172))

(assert (=> bm!457813 d!1837748))

(declare-fun d!1837750 () Bool)

(assert (=> d!1837750 (= (flatMap!1448 z!1189 lambda!319903) (choose!44371 z!1189 lambda!319903))))

(declare-fun bs!1378763 () Bool)

(assert (= bs!1378763 d!1837750))

(declare-fun m!6771174 () Bool)

(assert (=> bs!1378763 m!6771174))

(assert (=> d!1837480 d!1837750))

(declare-fun d!1837752 () Bool)

(declare-fun c!1037257 () Bool)

(assert (=> d!1837752 (= c!1037257 (isEmpty!35787 (t!377413 s!2326)))))

(declare-fun e!3588246 () Bool)

(assert (=> d!1837752 (= (matchZipper!1983 ((_ map or) lt!2304313 lt!2304312) (t!377413 s!2326)) e!3588246)))

(declare-fun b!5851331 () Bool)

(assert (=> b!5851331 (= e!3588246 (nullableZipper!1756 ((_ map or) lt!2304313 lt!2304312)))))

(declare-fun b!5851332 () Bool)

(assert (=> b!5851332 (= e!3588246 (matchZipper!1983 (derivationStepZipper!1916 ((_ map or) lt!2304313 lt!2304312) (head!12388 (t!377413 s!2326))) (tail!11473 (t!377413 s!2326))))))

(assert (= (and d!1837752 c!1037257) b!5851331))

(assert (= (and d!1837752 (not c!1037257)) b!5851332))

(assert (=> d!1837752 m!6770584))

(declare-fun m!6771176 () Bool)

(assert (=> b!5851331 m!6771176))

(assert (=> b!5851332 m!6770588))

(assert (=> b!5851332 m!6770588))

(declare-fun m!6771178 () Bool)

(assert (=> b!5851332 m!6771178))

(assert (=> b!5851332 m!6770592))

(assert (=> b!5851332 m!6771178))

(assert (=> b!5851332 m!6770592))

(declare-fun m!6771180 () Bool)

(assert (=> b!5851332 m!6771180))

(assert (=> d!1837460 d!1837752))

(assert (=> d!1837460 d!1837458))

(declare-fun d!1837754 () Bool)

(declare-fun e!3588249 () Bool)

(assert (=> d!1837754 (= (matchZipper!1983 ((_ map or) lt!2304313 lt!2304312) (t!377413 s!2326)) e!3588249)))

(declare-fun res!2463462 () Bool)

(assert (=> d!1837754 (=> res!2463462 e!3588249)))

(assert (=> d!1837754 (= res!2463462 (matchZipper!1983 lt!2304313 (t!377413 s!2326)))))

(assert (=> d!1837754 true))

(declare-fun _$48!1407 () Unit!157105)

(assert (=> d!1837754 (= (choose!44370 lt!2304313 lt!2304312 (t!377413 s!2326)) _$48!1407)))

(declare-fun b!5851335 () Bool)

(assert (=> b!5851335 (= e!3588249 (matchZipper!1983 lt!2304312 (t!377413 s!2326)))))

(assert (= (and d!1837754 (not res!2463462)) b!5851335))

(assert (=> d!1837754 m!6770602))

(assert (=> d!1837754 m!6770282))

(assert (=> b!5851335 m!6770244))

(assert (=> d!1837460 d!1837754))

(declare-fun d!1837756 () Bool)

(declare-fun res!2463463 () Bool)

(declare-fun e!3588250 () Bool)

(assert (=> d!1837756 (=> res!2463463 e!3588250)))

(assert (=> d!1837756 (= res!2463463 ((_ is Nil!63926) lt!2304373))))

(assert (=> d!1837756 (= (forall!15004 lt!2304373 lambda!319893) e!3588250)))

(declare-fun b!5851336 () Bool)

(declare-fun e!3588251 () Bool)

(assert (=> b!5851336 (= e!3588250 e!3588251)))

(declare-fun res!2463464 () Bool)

(assert (=> b!5851336 (=> (not res!2463464) (not e!3588251))))

(assert (=> b!5851336 (= res!2463464 (dynLambda!24990 lambda!319893 (h!70374 lt!2304373)))))

(declare-fun b!5851337 () Bool)

(assert (=> b!5851337 (= e!3588251 (forall!15004 (t!377411 lt!2304373) lambda!319893))))

(assert (= (and d!1837756 (not res!2463463)) b!5851336))

(assert (= (and b!5851336 res!2463464) b!5851337))

(declare-fun b_lambda!220261 () Bool)

(assert (=> (not b_lambda!220261) (not b!5851336)))

(declare-fun m!6771182 () Bool)

(assert (=> b!5851336 m!6771182))

(declare-fun m!6771184 () Bool)

(assert (=> b!5851337 m!6771184))

(assert (=> d!1837448 d!1837756))

(assert (=> b!5850631 d!1837722))

(assert (=> b!5850631 d!1837724))

(declare-fun d!1837758 () Bool)

(assert (=> d!1837758 (= (isEmpty!35787 (t!377413 s!2326)) ((_ is Nil!63928) (t!377413 s!2326)))))

(assert (=> d!1837456 d!1837758))

(declare-fun d!1837760 () Bool)

(assert (=> d!1837760 (= (isConcat!875 lt!2304384) ((_ is Concat!24762) lt!2304384))))

(assert (=> b!5850677 d!1837760))

(assert (=> b!5850638 d!1837714))

(declare-fun b!5851338 () Bool)

(declare-fun e!3588258 () Bool)

(declare-fun e!3588255 () Bool)

(assert (=> b!5851338 (= e!3588258 e!3588255)))

(declare-fun c!1037258 () Bool)

(assert (=> b!5851338 (= c!1037258 ((_ is Star!15917) lt!2304387))))

(declare-fun b!5851339 () Bool)

(declare-fun res!2463468 () Bool)

(declare-fun e!3588253 () Bool)

(assert (=> b!5851339 (=> res!2463468 e!3588253)))

(assert (=> b!5851339 (= res!2463468 (not ((_ is Concat!24762) lt!2304387)))))

(declare-fun e!3588252 () Bool)

(assert (=> b!5851339 (= e!3588252 e!3588253)))

(declare-fun bm!457935 () Bool)

(declare-fun call!457941 () Bool)

(declare-fun c!1037259 () Bool)

(assert (=> bm!457935 (= call!457941 (validRegex!7653 (ite c!1037259 (regTwo!32347 lt!2304387) (regTwo!32346 lt!2304387))))))

(declare-fun b!5851340 () Bool)

(declare-fun e!3588257 () Bool)

(assert (=> b!5851340 (= e!3588255 e!3588257)))

(declare-fun res!2463467 () Bool)

(assert (=> b!5851340 (= res!2463467 (not (nullable!5917 (reg!16246 lt!2304387))))))

(assert (=> b!5851340 (=> (not res!2463467) (not e!3588257))))

(declare-fun b!5851341 () Bool)

(declare-fun res!2463469 () Bool)

(declare-fun e!3588254 () Bool)

(assert (=> b!5851341 (=> (not res!2463469) (not e!3588254))))

(declare-fun call!457940 () Bool)

(assert (=> b!5851341 (= res!2463469 call!457940)))

(assert (=> b!5851341 (= e!3588252 e!3588254)))

(declare-fun d!1837762 () Bool)

(declare-fun res!2463466 () Bool)

(assert (=> d!1837762 (=> res!2463466 e!3588258)))

(assert (=> d!1837762 (= res!2463466 ((_ is ElementMatch!15917) lt!2304387))))

(assert (=> d!1837762 (= (validRegex!7653 lt!2304387) e!3588258)))

(declare-fun bm!457936 () Bool)

(declare-fun call!457942 () Bool)

(assert (=> bm!457936 (= call!457940 call!457942)))

(declare-fun b!5851342 () Bool)

(assert (=> b!5851342 (= e!3588257 call!457942)))

(declare-fun b!5851343 () Bool)

(assert (=> b!5851343 (= e!3588254 call!457941)))

(declare-fun b!5851344 () Bool)

(declare-fun e!3588256 () Bool)

(assert (=> b!5851344 (= e!3588253 e!3588256)))

(declare-fun res!2463465 () Bool)

(assert (=> b!5851344 (=> (not res!2463465) (not e!3588256))))

(assert (=> b!5851344 (= res!2463465 call!457940)))

(declare-fun bm!457937 () Bool)

(assert (=> bm!457937 (= call!457942 (validRegex!7653 (ite c!1037258 (reg!16246 lt!2304387) (ite c!1037259 (regOne!32347 lt!2304387) (regOne!32346 lt!2304387)))))))

(declare-fun b!5851345 () Bool)

(assert (=> b!5851345 (= e!3588255 e!3588252)))

(assert (=> b!5851345 (= c!1037259 ((_ is Union!15917) lt!2304387))))

(declare-fun b!5851346 () Bool)

(assert (=> b!5851346 (= e!3588256 call!457941)))

(assert (= (and d!1837762 (not res!2463466)) b!5851338))

(assert (= (and b!5851338 c!1037258) b!5851340))

(assert (= (and b!5851338 (not c!1037258)) b!5851345))

(assert (= (and b!5851340 res!2463467) b!5851342))

(assert (= (and b!5851345 c!1037259) b!5851341))

(assert (= (and b!5851345 (not c!1037259)) b!5851339))

(assert (= (and b!5851341 res!2463469) b!5851343))

(assert (= (and b!5851339 (not res!2463468)) b!5851344))

(assert (= (and b!5851344 res!2463465) b!5851346))

(assert (= (or b!5851343 b!5851346) bm!457935))

(assert (= (or b!5851341 b!5851344) bm!457936))

(assert (= (or b!5851342 bm!457936) bm!457937))

(declare-fun m!6771186 () Bool)

(assert (=> bm!457935 m!6771186))

(declare-fun m!6771188 () Bool)

(assert (=> b!5851340 m!6771188))

(declare-fun m!6771190 () Bool)

(assert (=> bm!457937 m!6771190))

(assert (=> d!1837490 d!1837762))

(assert (=> d!1837490 d!1837446))

(assert (=> d!1837490 d!1837448))

(declare-fun bs!1378764 () Bool)

(declare-fun d!1837764 () Bool)

(assert (= bs!1378764 (and d!1837764 d!1837720)))

(declare-fun lambda!319941 () Int)

(assert (=> bs!1378764 (= lambda!319941 lambda!319936)))

(declare-fun bs!1378765 () Bool)

(assert (= bs!1378765 (and d!1837764 d!1837728)))

(assert (=> bs!1378765 (= lambda!319941 lambda!319937)))

(assert (=> d!1837764 (= (nullableZipper!1756 z!1189) (exists!2301 z!1189 lambda!319941))))

(declare-fun bs!1378766 () Bool)

(assert (= bs!1378766 d!1837764))

(declare-fun m!6771192 () Bool)

(assert (=> bs!1378766 m!6771192))

(assert (=> b!5850613 d!1837764))

(declare-fun bs!1378767 () Bool)

(declare-fun b!5851352 () Bool)

(assert (= bs!1378767 (and b!5851352 b!5851307)))

(declare-fun lambda!319942 () Int)

(assert (=> bs!1378767 (not (= lambda!319942 lambda!319939))))

(declare-fun bs!1378768 () Bool)

(assert (= bs!1378768 (and b!5851352 b!5850419)))

(assert (=> bs!1378768 (= (and (= (reg!16246 (regOne!32347 (regOne!32347 r!7292))) (reg!16246 (regTwo!32347 r!7292))) (= (regOne!32347 (regOne!32347 r!7292)) (regTwo!32347 r!7292))) (= lambda!319942 lambda!319884))))

(declare-fun bs!1378769 () Bool)

(assert (= bs!1378769 (and b!5851352 b!5851266)))

(assert (=> bs!1378769 (= (and (= (reg!16246 (regOne!32347 (regOne!32347 r!7292))) (reg!16246 (regTwo!32347 (regTwo!32347 r!7292)))) (= (regOne!32347 (regOne!32347 r!7292)) (regTwo!32347 (regTwo!32347 r!7292)))) (= lambda!319942 lambda!319932))))

(declare-fun bs!1378770 () Bool)

(assert (= bs!1378770 (and b!5851352 b!5850476)))

(assert (=> bs!1378770 (= (and (= (reg!16246 (regOne!32347 (regOne!32347 r!7292))) (reg!16246 (regOne!32347 r!7292))) (= (regOne!32347 (regOne!32347 r!7292)) (regOne!32347 r!7292))) (= lambda!319942 lambda!319886))))

(declare-fun bs!1378771 () Bool)

(assert (= bs!1378771 (and b!5851352 b!5850622)))

(assert (=> bs!1378771 (= (and (= (reg!16246 (regOne!32347 (regOne!32347 r!7292))) (reg!16246 r!7292)) (= (regOne!32347 (regOne!32347 r!7292)) r!7292)) (= lambda!319942 lambda!319899))))

(declare-fun bs!1378772 () Bool)

(assert (= bs!1378772 (and b!5851352 b!5850480)))

(assert (=> bs!1378772 (not (= lambda!319942 lambda!319887))))

(declare-fun bs!1378773 () Bool)

(assert (= bs!1378773 (and b!5851352 b!5851270)))

(assert (=> bs!1378773 (not (= lambda!319942 lambda!319933))))

(declare-fun bs!1378774 () Bool)

(assert (= bs!1378774 (and b!5851352 b!5850423)))

(assert (=> bs!1378774 (not (= lambda!319942 lambda!319885))))

(declare-fun bs!1378775 () Bool)

(assert (= bs!1378775 (and b!5851352 b!5851303)))

(assert (=> bs!1378775 (= (and (= (reg!16246 (regOne!32347 (regOne!32347 r!7292))) (reg!16246 (regTwo!32347 (regOne!32347 r!7292)))) (= (regOne!32347 (regOne!32347 r!7292)) (regTwo!32347 (regOne!32347 r!7292)))) (= lambda!319942 lambda!319938))))

(declare-fun bs!1378776 () Bool)

(assert (= bs!1378776 (and b!5851352 b!5850626)))

(assert (=> bs!1378776 (not (= lambda!319942 lambda!319900))))

(assert (=> b!5851352 true))

(assert (=> b!5851352 true))

(declare-fun bs!1378777 () Bool)

(declare-fun b!5851356 () Bool)

(assert (= bs!1378777 (and b!5851356 b!5851307)))

(declare-fun lambda!319943 () Int)

(assert (=> bs!1378777 (= (and (= (regOne!32346 (regOne!32347 (regOne!32347 r!7292))) (regOne!32346 (regTwo!32347 (regOne!32347 r!7292)))) (= (regTwo!32346 (regOne!32347 (regOne!32347 r!7292))) (regTwo!32346 (regTwo!32347 (regOne!32347 r!7292))))) (= lambda!319943 lambda!319939))))

(declare-fun bs!1378778 () Bool)

(assert (= bs!1378778 (and b!5851356 b!5851352)))

(assert (=> bs!1378778 (not (= lambda!319943 lambda!319942))))

(declare-fun bs!1378779 () Bool)

(assert (= bs!1378779 (and b!5851356 b!5850419)))

(assert (=> bs!1378779 (not (= lambda!319943 lambda!319884))))

(declare-fun bs!1378780 () Bool)

(assert (= bs!1378780 (and b!5851356 b!5851266)))

(assert (=> bs!1378780 (not (= lambda!319943 lambda!319932))))

(declare-fun bs!1378781 () Bool)

(assert (= bs!1378781 (and b!5851356 b!5850476)))

(assert (=> bs!1378781 (not (= lambda!319943 lambda!319886))))

(declare-fun bs!1378782 () Bool)

(assert (= bs!1378782 (and b!5851356 b!5850622)))

(assert (=> bs!1378782 (not (= lambda!319943 lambda!319899))))

(declare-fun bs!1378783 () Bool)

(assert (= bs!1378783 (and b!5851356 b!5850480)))

(assert (=> bs!1378783 (= (and (= (regOne!32346 (regOne!32347 (regOne!32347 r!7292))) (regOne!32346 (regOne!32347 r!7292))) (= (regTwo!32346 (regOne!32347 (regOne!32347 r!7292))) (regTwo!32346 (regOne!32347 r!7292)))) (= lambda!319943 lambda!319887))))

(declare-fun bs!1378784 () Bool)

(assert (= bs!1378784 (and b!5851356 b!5851270)))

(assert (=> bs!1378784 (= (and (= (regOne!32346 (regOne!32347 (regOne!32347 r!7292))) (regOne!32346 (regTwo!32347 (regTwo!32347 r!7292)))) (= (regTwo!32346 (regOne!32347 (regOne!32347 r!7292))) (regTwo!32346 (regTwo!32347 (regTwo!32347 r!7292))))) (= lambda!319943 lambda!319933))))

(declare-fun bs!1378785 () Bool)

(assert (= bs!1378785 (and b!5851356 b!5850423)))

(assert (=> bs!1378785 (= (and (= (regOne!32346 (regOne!32347 (regOne!32347 r!7292))) (regOne!32346 (regTwo!32347 r!7292))) (= (regTwo!32346 (regOne!32347 (regOne!32347 r!7292))) (regTwo!32346 (regTwo!32347 r!7292)))) (= lambda!319943 lambda!319885))))

(declare-fun bs!1378786 () Bool)

(assert (= bs!1378786 (and b!5851356 b!5851303)))

(assert (=> bs!1378786 (not (= lambda!319943 lambda!319938))))

(declare-fun bs!1378787 () Bool)

(assert (= bs!1378787 (and b!5851356 b!5850626)))

(assert (=> bs!1378787 (= (and (= (regOne!32346 (regOne!32347 (regOne!32347 r!7292))) (regOne!32346 r!7292)) (= (regTwo!32346 (regOne!32347 (regOne!32347 r!7292))) (regTwo!32346 r!7292))) (= lambda!319943 lambda!319900))))

(assert (=> b!5851356 true))

(assert (=> b!5851356 true))

(declare-fun b!5851347 () Bool)

(declare-fun e!3588259 () Bool)

(assert (=> b!5851347 (= e!3588259 (= s!2326 (Cons!63928 (c!1036885 (regOne!32347 (regOne!32347 r!7292))) Nil!63928)))))

(declare-fun b!5851348 () Bool)

(declare-fun e!3588260 () Bool)

(declare-fun e!3588262 () Bool)

(assert (=> b!5851348 (= e!3588260 e!3588262)))

(declare-fun c!1037261 () Bool)

(assert (=> b!5851348 (= c!1037261 ((_ is Star!15917) (regOne!32347 (regOne!32347 r!7292))))))

(declare-fun b!5851349 () Bool)

(declare-fun e!3588261 () Bool)

(assert (=> b!5851349 (= e!3588260 e!3588261)))

(declare-fun res!2463470 () Bool)

(assert (=> b!5851349 (= res!2463470 (matchRSpec!3018 (regOne!32347 (regOne!32347 (regOne!32347 r!7292))) s!2326))))

(assert (=> b!5851349 (=> res!2463470 e!3588261)))

(declare-fun b!5851350 () Bool)

(declare-fun c!1037262 () Bool)

(assert (=> b!5851350 (= c!1037262 ((_ is ElementMatch!15917) (regOne!32347 (regOne!32347 r!7292))))))

(declare-fun e!3588263 () Bool)

(assert (=> b!5851350 (= e!3588263 e!3588259)))

(declare-fun bm!457938 () Bool)

(declare-fun call!457943 () Bool)

(assert (=> bm!457938 (= call!457943 (Exists!2989 (ite c!1037261 lambda!319942 lambda!319943)))))

(declare-fun b!5851351 () Bool)

(declare-fun c!1037260 () Bool)

(assert (=> b!5851351 (= c!1037260 ((_ is Union!15917) (regOne!32347 (regOne!32347 r!7292))))))

(assert (=> b!5851351 (= e!3588259 e!3588260)))

(declare-fun e!3588265 () Bool)

(assert (=> b!5851352 (= e!3588265 call!457943)))

(declare-fun b!5851353 () Bool)

(assert (=> b!5851353 (= e!3588261 (matchRSpec!3018 (regTwo!32347 (regOne!32347 (regOne!32347 r!7292))) s!2326))))

(declare-fun b!5851354 () Bool)

(declare-fun res!2463471 () Bool)

(assert (=> b!5851354 (=> res!2463471 e!3588265)))

(declare-fun call!457944 () Bool)

(assert (=> b!5851354 (= res!2463471 call!457944)))

(assert (=> b!5851354 (= e!3588262 e!3588265)))

(declare-fun d!1837766 () Bool)

(declare-fun c!1037263 () Bool)

(assert (=> d!1837766 (= c!1037263 ((_ is EmptyExpr!15917) (regOne!32347 (regOne!32347 r!7292))))))

(declare-fun e!3588264 () Bool)

(assert (=> d!1837766 (= (matchRSpec!3018 (regOne!32347 (regOne!32347 r!7292)) s!2326) e!3588264)))

(declare-fun b!5851355 () Bool)

(assert (=> b!5851355 (= e!3588264 call!457944)))

(assert (=> b!5851356 (= e!3588262 call!457943)))

(declare-fun bm!457939 () Bool)

(assert (=> bm!457939 (= call!457944 (isEmpty!35787 s!2326))))

(declare-fun b!5851357 () Bool)

(assert (=> b!5851357 (= e!3588264 e!3588263)))

(declare-fun res!2463472 () Bool)

(assert (=> b!5851357 (= res!2463472 (not ((_ is EmptyLang!15917) (regOne!32347 (regOne!32347 r!7292)))))))

(assert (=> b!5851357 (=> (not res!2463472) (not e!3588263))))

(assert (= (and d!1837766 c!1037263) b!5851355))

(assert (= (and d!1837766 (not c!1037263)) b!5851357))

(assert (= (and b!5851357 res!2463472) b!5851350))

(assert (= (and b!5851350 c!1037262) b!5851347))

(assert (= (and b!5851350 (not c!1037262)) b!5851351))

(assert (= (and b!5851351 c!1037260) b!5851349))

(assert (= (and b!5851351 (not c!1037260)) b!5851348))

(assert (= (and b!5851349 (not res!2463470)) b!5851353))

(assert (= (and b!5851348 c!1037261) b!5851354))

(assert (= (and b!5851348 (not c!1037261)) b!5851356))

(assert (= (and b!5851354 (not res!2463471)) b!5851352))

(assert (= (or b!5851352 b!5851356) bm!457938))

(assert (= (or b!5851355 b!5851354) bm!457939))

(declare-fun m!6771194 () Bool)

(assert (=> b!5851349 m!6771194))

(declare-fun m!6771196 () Bool)

(assert (=> bm!457938 m!6771196))

(declare-fun m!6771198 () Bool)

(assert (=> b!5851353 m!6771198))

(assert (=> bm!457939 m!6770506))

(assert (=> b!5850473 d!1837766))

(assert (=> d!1837440 d!1837438))

(assert (=> d!1837440 d!1837420))

(declare-fun d!1837768 () Bool)

(assert (=> d!1837768 (= (matchR!8100 (regTwo!32347 r!7292) s!2326) (matchRSpec!3018 (regTwo!32347 r!7292) s!2326))))

(assert (=> d!1837768 true))

(declare-fun _$88!4248 () Unit!157105)

(assert (=> d!1837768 (= (choose!44369 (regTwo!32347 r!7292) s!2326) _$88!4248)))

(declare-fun bs!1378788 () Bool)

(assert (= bs!1378788 d!1837768))

(assert (=> bs!1378788 m!6770264))

(assert (=> bs!1378788 m!6770260))

(assert (=> d!1837440 d!1837768))

(declare-fun b!5851358 () Bool)

(declare-fun e!3588272 () Bool)

(declare-fun e!3588269 () Bool)

(assert (=> b!5851358 (= e!3588272 e!3588269)))

(declare-fun c!1037264 () Bool)

(assert (=> b!5851358 (= c!1037264 ((_ is Star!15917) (regTwo!32347 r!7292)))))

(declare-fun b!5851359 () Bool)

(declare-fun res!2463476 () Bool)

(declare-fun e!3588267 () Bool)

(assert (=> b!5851359 (=> res!2463476 e!3588267)))

(assert (=> b!5851359 (= res!2463476 (not ((_ is Concat!24762) (regTwo!32347 r!7292))))))

(declare-fun e!3588266 () Bool)

(assert (=> b!5851359 (= e!3588266 e!3588267)))

(declare-fun bm!457940 () Bool)

(declare-fun call!457946 () Bool)

(declare-fun c!1037265 () Bool)

(assert (=> bm!457940 (= call!457946 (validRegex!7653 (ite c!1037265 (regTwo!32347 (regTwo!32347 r!7292)) (regTwo!32346 (regTwo!32347 r!7292)))))))

(declare-fun b!5851360 () Bool)

(declare-fun e!3588271 () Bool)

(assert (=> b!5851360 (= e!3588269 e!3588271)))

(declare-fun res!2463475 () Bool)

(assert (=> b!5851360 (= res!2463475 (not (nullable!5917 (reg!16246 (regTwo!32347 r!7292)))))))

(assert (=> b!5851360 (=> (not res!2463475) (not e!3588271))))

(declare-fun b!5851361 () Bool)

(declare-fun res!2463477 () Bool)

(declare-fun e!3588268 () Bool)

(assert (=> b!5851361 (=> (not res!2463477) (not e!3588268))))

(declare-fun call!457945 () Bool)

(assert (=> b!5851361 (= res!2463477 call!457945)))

(assert (=> b!5851361 (= e!3588266 e!3588268)))

(declare-fun d!1837770 () Bool)

(declare-fun res!2463474 () Bool)

(assert (=> d!1837770 (=> res!2463474 e!3588272)))

(assert (=> d!1837770 (= res!2463474 ((_ is ElementMatch!15917) (regTwo!32347 r!7292)))))

(assert (=> d!1837770 (= (validRegex!7653 (regTwo!32347 r!7292)) e!3588272)))

(declare-fun bm!457941 () Bool)

(declare-fun call!457947 () Bool)

(assert (=> bm!457941 (= call!457945 call!457947)))

(declare-fun b!5851362 () Bool)

(assert (=> b!5851362 (= e!3588271 call!457947)))

(declare-fun b!5851363 () Bool)

(assert (=> b!5851363 (= e!3588268 call!457946)))

(declare-fun b!5851364 () Bool)

(declare-fun e!3588270 () Bool)

(assert (=> b!5851364 (= e!3588267 e!3588270)))

(declare-fun res!2463473 () Bool)

(assert (=> b!5851364 (=> (not res!2463473) (not e!3588270))))

(assert (=> b!5851364 (= res!2463473 call!457945)))

(declare-fun bm!457942 () Bool)

(assert (=> bm!457942 (= call!457947 (validRegex!7653 (ite c!1037264 (reg!16246 (regTwo!32347 r!7292)) (ite c!1037265 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292))))))))

(declare-fun b!5851365 () Bool)

(assert (=> b!5851365 (= e!3588269 e!3588266)))

(assert (=> b!5851365 (= c!1037265 ((_ is Union!15917) (regTwo!32347 r!7292)))))

(declare-fun b!5851366 () Bool)

(assert (=> b!5851366 (= e!3588270 call!457946)))

(assert (= (and d!1837770 (not res!2463474)) b!5851358))

(assert (= (and b!5851358 c!1037264) b!5851360))

(assert (= (and b!5851358 (not c!1037264)) b!5851365))

(assert (= (and b!5851360 res!2463475) b!5851362))

(assert (= (and b!5851365 c!1037265) b!5851361))

(assert (= (and b!5851365 (not c!1037265)) b!5851359))

(assert (= (and b!5851361 res!2463477) b!5851363))

(assert (= (and b!5851359 (not res!2463476)) b!5851364))

(assert (= (and b!5851364 res!2463473) b!5851366))

(assert (= (or b!5851363 b!5851366) bm!457940))

(assert (= (or b!5851361 b!5851364) bm!457941))

(assert (= (or b!5851362 bm!457941) bm!457942))

(declare-fun m!6771200 () Bool)

(assert (=> bm!457940 m!6771200))

(declare-fun m!6771202 () Bool)

(assert (=> b!5851360 m!6771202))

(declare-fun m!6771204 () Bool)

(assert (=> bm!457942 m!6771204))

(assert (=> d!1837440 d!1837770))

(declare-fun d!1837772 () Bool)

(assert (=> d!1837772 (= (nullable!5917 (regTwo!32347 r!7292)) (nullableFct!1904 (regTwo!32347 r!7292)))))

(declare-fun bs!1378789 () Bool)

(assert (= bs!1378789 d!1837772))

(declare-fun m!6771206 () Bool)

(assert (=> bs!1378789 m!6771206))

(assert (=> b!5850465 d!1837772))

(declare-fun d!1837774 () Bool)

(assert (=> d!1837774 (= (head!12389 (unfocusZipperList!1338 zl!343)) (h!70374 (unfocusZipperList!1338 zl!343)))))

(assert (=> b!5850519 d!1837774))

(assert (=> b!5850641 d!1837714))

(declare-fun d!1837776 () Bool)

(assert (=> d!1837776 (= (nullable!5917 (reg!16246 r!7292)) (nullableFct!1904 (reg!16246 r!7292)))))

(declare-fun bs!1378790 () Bool)

(assert (= bs!1378790 d!1837776))

(declare-fun m!6771208 () Bool)

(assert (=> bs!1378790 m!6771208))

(assert (=> b!5850702 d!1837776))

(assert (=> d!1837478 d!1837476))

(assert (=> d!1837478 d!1837474))

(declare-fun d!1837778 () Bool)

(assert (=> d!1837778 (= (matchR!8100 r!7292 s!2326) (matchRSpec!3018 r!7292 s!2326))))

(assert (=> d!1837778 true))

(declare-fun _$88!4249 () Unit!157105)

(assert (=> d!1837778 (= (choose!44369 r!7292 s!2326) _$88!4249)))

(declare-fun bs!1378791 () Bool)

(assert (= bs!1378791 d!1837778))

(assert (=> bs!1378791 m!6770294))

(assert (=> bs!1378791 m!6770292))

(assert (=> d!1837478 d!1837778))

(assert (=> d!1837478 d!1837494))

(assert (=> b!5850629 d!1837722))

(assert (=> b!5850629 d!1837724))

(declare-fun d!1837780 () Bool)

(declare-fun res!2463482 () Bool)

(declare-fun e!3588277 () Bool)

(assert (=> d!1837780 (=> res!2463482 e!3588277)))

(assert (=> d!1837780 (= res!2463482 ((_ is Nil!63927) lt!2304390))))

(assert (=> d!1837780 (= (noDuplicate!1782 lt!2304390) e!3588277)))

(declare-fun b!5851371 () Bool)

(declare-fun e!3588278 () Bool)

(assert (=> b!5851371 (= e!3588277 e!3588278)))

(declare-fun res!2463483 () Bool)

(assert (=> b!5851371 (=> (not res!2463483) (not e!3588278))))

(declare-fun contains!19923 (List!64051 Context!10602) Bool)

(assert (=> b!5851371 (= res!2463483 (not (contains!19923 (t!377412 lt!2304390) (h!70375 lt!2304390))))))

(declare-fun b!5851372 () Bool)

(assert (=> b!5851372 (= e!3588278 (noDuplicate!1782 (t!377412 lt!2304390)))))

(assert (= (and d!1837780 (not res!2463482)) b!5851371))

(assert (= (and b!5851371 res!2463483) b!5851372))

(declare-fun m!6771210 () Bool)

(assert (=> b!5851371 m!6771210))

(declare-fun m!6771212 () Bool)

(assert (=> b!5851372 m!6771212))

(assert (=> d!1837492 d!1837780))

(declare-fun d!1837782 () Bool)

(declare-fun e!3588286 () Bool)

(assert (=> d!1837782 e!3588286))

(declare-fun res!2463489 () Bool)

(assert (=> d!1837782 (=> (not res!2463489) (not e!3588286))))

(declare-fun res!2463488 () List!64051)

(assert (=> d!1837782 (= res!2463489 (noDuplicate!1782 res!2463488))))

(declare-fun e!3588285 () Bool)

(assert (=> d!1837782 e!3588285))

(assert (=> d!1837782 (= (choose!44373 z!1189) res!2463488)))

(declare-fun b!5851380 () Bool)

(declare-fun e!3588287 () Bool)

(declare-fun tp!1618721 () Bool)

(assert (=> b!5851380 (= e!3588287 tp!1618721)))

(declare-fun tp!1618722 () Bool)

(declare-fun b!5851379 () Bool)

(assert (=> b!5851379 (= e!3588285 (and (inv!83039 (h!70375 res!2463488)) e!3588287 tp!1618722))))

(declare-fun b!5851381 () Bool)

(assert (=> b!5851381 (= e!3588286 (= (content!11747 res!2463488) z!1189))))

(assert (= b!5851379 b!5851380))

(assert (= (and d!1837782 ((_ is Cons!63927) res!2463488)) b!5851379))

(assert (= (and d!1837782 res!2463489) b!5851381))

(declare-fun m!6771214 () Bool)

(assert (=> d!1837782 m!6771214))

(declare-fun m!6771216 () Bool)

(assert (=> b!5851379 m!6771216))

(declare-fun m!6771218 () Bool)

(assert (=> b!5851381 m!6771218))

(assert (=> d!1837492 d!1837782))

(declare-fun d!1837784 () Bool)

(assert (=> d!1837784 (= (isEmpty!35788 (t!377411 (unfocusZipperList!1338 zl!343))) ((_ is Nil!63926) (t!377411 (unfocusZipperList!1338 zl!343))))))

(assert (=> b!5850523 d!1837784))

(declare-fun bs!1378792 () Bool)

(declare-fun d!1837786 () Bool)

(assert (= bs!1378792 (and d!1837786 d!1837720)))

(declare-fun lambda!319944 () Int)

(assert (=> bs!1378792 (= lambda!319944 lambda!319936)))

(declare-fun bs!1378793 () Bool)

(assert (= bs!1378793 (and d!1837786 d!1837728)))

(assert (=> bs!1378793 (= lambda!319944 lambda!319937)))

(declare-fun bs!1378794 () Bool)

(assert (= bs!1378794 (and d!1837786 d!1837764)))

(assert (=> bs!1378794 (= lambda!319944 lambda!319941)))

(assert (=> d!1837786 (= (nullableZipper!1756 lt!2304312) (exists!2301 lt!2304312 lambda!319944))))

(declare-fun bs!1378795 () Bool)

(assert (= bs!1378795 d!1837786))

(declare-fun m!6771220 () Bool)

(assert (=> bs!1378795 m!6771220))

(assert (=> b!5850580 d!1837786))

(declare-fun d!1837788 () Bool)

(declare-fun choose!44375 (Int) Bool)

(assert (=> d!1837788 (= (Exists!2989 (ite c!1037076 lambda!319899 lambda!319900)) (choose!44375 (ite c!1037076 lambda!319899 lambda!319900)))))

(declare-fun bs!1378796 () Bool)

(assert (= bs!1378796 d!1837788))

(declare-fun m!6771222 () Bool)

(assert (=> bs!1378796 m!6771222))

(assert (=> bm!457801 d!1837788))

(assert (=> d!1837444 d!1837708))

(declare-fun b!5851382 () Bool)

(declare-fun e!3588294 () Bool)

(declare-fun e!3588291 () Bool)

(assert (=> b!5851382 (= e!3588294 e!3588291)))

(declare-fun c!1037266 () Bool)

(assert (=> b!5851382 (= c!1037266 ((_ is Star!15917) (regOne!32347 r!7292)))))

(declare-fun b!5851383 () Bool)

(declare-fun res!2463493 () Bool)

(declare-fun e!3588289 () Bool)

(assert (=> b!5851383 (=> res!2463493 e!3588289)))

(assert (=> b!5851383 (= res!2463493 (not ((_ is Concat!24762) (regOne!32347 r!7292))))))

(declare-fun e!3588288 () Bool)

(assert (=> b!5851383 (= e!3588288 e!3588289)))

(declare-fun bm!457943 () Bool)

(declare-fun call!457949 () Bool)

(declare-fun c!1037267 () Bool)

(assert (=> bm!457943 (= call!457949 (validRegex!7653 (ite c!1037267 (regTwo!32347 (regOne!32347 r!7292)) (regTwo!32346 (regOne!32347 r!7292)))))))

(declare-fun b!5851384 () Bool)

(declare-fun e!3588293 () Bool)

(assert (=> b!5851384 (= e!3588291 e!3588293)))

(declare-fun res!2463492 () Bool)

(assert (=> b!5851384 (= res!2463492 (not (nullable!5917 (reg!16246 (regOne!32347 r!7292)))))))

(assert (=> b!5851384 (=> (not res!2463492) (not e!3588293))))

(declare-fun b!5851385 () Bool)

(declare-fun res!2463494 () Bool)

(declare-fun e!3588290 () Bool)

(assert (=> b!5851385 (=> (not res!2463494) (not e!3588290))))

(declare-fun call!457948 () Bool)

(assert (=> b!5851385 (= res!2463494 call!457948)))

(assert (=> b!5851385 (= e!3588288 e!3588290)))

(declare-fun d!1837790 () Bool)

(declare-fun res!2463491 () Bool)

(assert (=> d!1837790 (=> res!2463491 e!3588294)))

(assert (=> d!1837790 (= res!2463491 ((_ is ElementMatch!15917) (regOne!32347 r!7292)))))

(assert (=> d!1837790 (= (validRegex!7653 (regOne!32347 r!7292)) e!3588294)))

(declare-fun bm!457944 () Bool)

(declare-fun call!457950 () Bool)

(assert (=> bm!457944 (= call!457948 call!457950)))

(declare-fun b!5851386 () Bool)

(assert (=> b!5851386 (= e!3588293 call!457950)))

(declare-fun b!5851387 () Bool)

(assert (=> b!5851387 (= e!3588290 call!457949)))

(declare-fun b!5851388 () Bool)

(declare-fun e!3588292 () Bool)

(assert (=> b!5851388 (= e!3588289 e!3588292)))

(declare-fun res!2463490 () Bool)

(assert (=> b!5851388 (=> (not res!2463490) (not e!3588292))))

(assert (=> b!5851388 (= res!2463490 call!457948)))

(declare-fun bm!457945 () Bool)

(assert (=> bm!457945 (= call!457950 (validRegex!7653 (ite c!1037266 (reg!16246 (regOne!32347 r!7292)) (ite c!1037267 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292))))))))

(declare-fun b!5851389 () Bool)

(assert (=> b!5851389 (= e!3588291 e!3588288)))

(assert (=> b!5851389 (= c!1037267 ((_ is Union!15917) (regOne!32347 r!7292)))))

(declare-fun b!5851390 () Bool)

(assert (=> b!5851390 (= e!3588292 call!457949)))

(assert (= (and d!1837790 (not res!2463491)) b!5851382))

(assert (= (and b!5851382 c!1037266) b!5851384))

(assert (= (and b!5851382 (not c!1037266)) b!5851389))

(assert (= (and b!5851384 res!2463492) b!5851386))

(assert (= (and b!5851389 c!1037267) b!5851385))

(assert (= (and b!5851389 (not c!1037267)) b!5851383))

(assert (= (and b!5851385 res!2463494) b!5851387))

(assert (= (and b!5851383 (not res!2463493)) b!5851388))

(assert (= (and b!5851388 res!2463490) b!5851390))

(assert (= (or b!5851387 b!5851390) bm!457943))

(assert (= (or b!5851385 b!5851388) bm!457944))

(assert (= (or b!5851386 bm!457944) bm!457945))

(declare-fun m!6771224 () Bool)

(assert (=> bm!457943 m!6771224))

(declare-fun m!6771226 () Bool)

(assert (=> b!5851384 m!6771226))

(declare-fun m!6771228 () Bool)

(assert (=> bm!457945 m!6771228))

(assert (=> d!1837444 d!1837790))

(declare-fun bm!457946 () Bool)

(declare-fun call!457951 () (InoxSet Context!10602))

(declare-fun call!457954 () (InoxSet Context!10602))

(assert (=> bm!457946 (= call!457951 call!457954)))

(declare-fun call!457956 () List!64050)

(declare-fun c!1037271 () Bool)

(declare-fun c!1037272 () Bool)

(declare-fun bm!457947 () Bool)

(assert (=> bm!457947 (= call!457956 ($colon$colon!1822 (exprs!5801 (Context!10603 (t!377411 (exprs!5801 (h!70375 zl!343))))) (ite (or c!1037272 c!1037271) (regTwo!32346 (h!70374 (exprs!5801 (h!70375 zl!343)))) (h!70374 (exprs!5801 (h!70375 zl!343))))))))

(declare-fun b!5851392 () Bool)

(declare-fun e!3588300 () (InoxSet Context!10602))

(declare-fun e!3588295 () (InoxSet Context!10602))

(assert (=> b!5851392 (= e!3588300 e!3588295)))

(assert (=> b!5851392 (= c!1037271 ((_ is Concat!24762) (h!70374 (exprs!5801 (h!70375 zl!343)))))))

(declare-fun bm!457948 () Bool)

(declare-fun c!1037268 () Bool)

(declare-fun call!457952 () (InoxSet Context!10602))

(assert (=> bm!457948 (= call!457952 (derivationStepZipperDown!1183 (ite c!1037268 (regOne!32347 (h!70374 (exprs!5801 (h!70375 zl!343)))) (regOne!32346 (h!70374 (exprs!5801 (h!70375 zl!343))))) (ite c!1037268 (Context!10603 (t!377411 (exprs!5801 (h!70375 zl!343)))) (Context!10603 call!457956)) (h!70376 s!2326)))))

(declare-fun b!5851393 () Bool)

(assert (=> b!5851393 (= e!3588295 call!457951)))

(declare-fun call!457953 () List!64050)

(declare-fun call!457955 () (InoxSet Context!10602))

(declare-fun bm!457949 () Bool)

(assert (=> bm!457949 (= call!457955 (derivationStepZipperDown!1183 (ite c!1037268 (regTwo!32347 (h!70374 (exprs!5801 (h!70375 zl!343)))) (ite c!1037272 (regTwo!32346 (h!70374 (exprs!5801 (h!70375 zl!343)))) (ite c!1037271 (regOne!32346 (h!70374 (exprs!5801 (h!70375 zl!343)))) (reg!16246 (h!70374 (exprs!5801 (h!70375 zl!343))))))) (ite (or c!1037268 c!1037272) (Context!10603 (t!377411 (exprs!5801 (h!70375 zl!343)))) (Context!10603 call!457953)) (h!70376 s!2326)))))

(declare-fun b!5851394 () Bool)

(declare-fun c!1037269 () Bool)

(assert (=> b!5851394 (= c!1037269 ((_ is Star!15917) (h!70374 (exprs!5801 (h!70375 zl!343)))))))

(declare-fun e!3588298 () (InoxSet Context!10602))

(assert (=> b!5851394 (= e!3588295 e!3588298)))

(declare-fun b!5851395 () Bool)

(declare-fun e!3588299 () (InoxSet Context!10602))

(assert (=> b!5851395 (= e!3588299 (store ((as const (Array Context!10602 Bool)) false) (Context!10603 (t!377411 (exprs!5801 (h!70375 zl!343)))) true))))

(declare-fun b!5851396 () Bool)

(declare-fun e!3588296 () (InoxSet Context!10602))

(assert (=> b!5851396 (= e!3588296 ((_ map or) call!457952 call!457955))))

(declare-fun b!5851397 () Bool)

(declare-fun e!3588297 () Bool)

(assert (=> b!5851397 (= c!1037272 e!3588297)))

(declare-fun res!2463495 () Bool)

(assert (=> b!5851397 (=> (not res!2463495) (not e!3588297))))

(assert (=> b!5851397 (= res!2463495 ((_ is Concat!24762) (h!70374 (exprs!5801 (h!70375 zl!343)))))))

(assert (=> b!5851397 (= e!3588296 e!3588300)))

(declare-fun bm!457950 () Bool)

(assert (=> bm!457950 (= call!457953 call!457956)))

(declare-fun b!5851398 () Bool)

(assert (=> b!5851398 (= e!3588297 (nullable!5917 (regOne!32346 (h!70374 (exprs!5801 (h!70375 zl!343))))))))

(declare-fun bm!457951 () Bool)

(assert (=> bm!457951 (= call!457954 call!457955)))

(declare-fun b!5851399 () Bool)

(assert (=> b!5851399 (= e!3588300 ((_ map or) call!457952 call!457954))))

(declare-fun b!5851391 () Bool)

(assert (=> b!5851391 (= e!3588298 ((as const (Array Context!10602 Bool)) false))))

(declare-fun d!1837792 () Bool)

(declare-fun c!1037270 () Bool)

(assert (=> d!1837792 (= c!1037270 (and ((_ is ElementMatch!15917) (h!70374 (exprs!5801 (h!70375 zl!343)))) (= (c!1036885 (h!70374 (exprs!5801 (h!70375 zl!343)))) (h!70376 s!2326))))))

(assert (=> d!1837792 (= (derivationStepZipperDown!1183 (h!70374 (exprs!5801 (h!70375 zl!343))) (Context!10603 (t!377411 (exprs!5801 (h!70375 zl!343)))) (h!70376 s!2326)) e!3588299)))

(declare-fun b!5851400 () Bool)

(assert (=> b!5851400 (= e!3588298 call!457951)))

(declare-fun b!5851401 () Bool)

(assert (=> b!5851401 (= e!3588299 e!3588296)))

(assert (=> b!5851401 (= c!1037268 ((_ is Union!15917) (h!70374 (exprs!5801 (h!70375 zl!343)))))))

(assert (= (and d!1837792 c!1037270) b!5851395))

(assert (= (and d!1837792 (not c!1037270)) b!5851401))

(assert (= (and b!5851401 c!1037268) b!5851396))

(assert (= (and b!5851401 (not c!1037268)) b!5851397))

(assert (= (and b!5851397 res!2463495) b!5851398))

(assert (= (and b!5851397 c!1037272) b!5851399))

(assert (= (and b!5851397 (not c!1037272)) b!5851392))

(assert (= (and b!5851392 c!1037271) b!5851393))

(assert (= (and b!5851392 (not c!1037271)) b!5851394))

(assert (= (and b!5851394 c!1037269) b!5851400))

(assert (= (and b!5851394 (not c!1037269)) b!5851391))

(assert (= (or b!5851393 b!5851400) bm!457950))

(assert (= (or b!5851393 b!5851400) bm!457946))

(assert (= (or b!5851399 bm!457950) bm!457947))

(assert (= (or b!5851399 bm!457946) bm!457951))

(assert (= (or b!5851396 bm!457951) bm!457949))

(assert (= (or b!5851396 b!5851399) bm!457948))

(declare-fun m!6771230 () Bool)

(assert (=> bm!457948 m!6771230))

(declare-fun m!6771232 () Bool)

(assert (=> bm!457947 m!6771232))

(declare-fun m!6771234 () Bool)

(assert (=> b!5851398 m!6771234))

(declare-fun m!6771236 () Bool)

(assert (=> b!5851395 m!6771236))

(declare-fun m!6771238 () Bool)

(assert (=> bm!457949 m!6771238))

(assert (=> bm!457804 d!1837792))

(declare-fun d!1837794 () Bool)

(assert (=> d!1837794 (= ($colon$colon!1822 (exprs!5801 lt!2304315) (ite (or c!1037066 c!1037065) (regTwo!32346 r!7292) r!7292)) (Cons!63926 (ite (or c!1037066 c!1037065) (regTwo!32346 r!7292) r!7292) (exprs!5801 lt!2304315)))))

(assert (=> bm!457793 d!1837794))

(assert (=> b!5850458 d!1837722))

(assert (=> b!5850458 d!1837724))

(declare-fun d!1837796 () Bool)

(assert (=> d!1837796 (= ($colon$colon!1822 (exprs!5801 lt!2304315) (ite (or c!1037057 c!1037056) (regTwo!32346 (regOne!32347 r!7292)) (regOne!32347 r!7292))) (Cons!63926 (ite (or c!1037057 c!1037056) (regTwo!32346 (regOne!32347 r!7292)) (regOne!32347 r!7292)) (exprs!5801 lt!2304315)))))

(assert (=> bm!457787 d!1837796))

(declare-fun b!5851402 () Bool)

(declare-fun e!3588305 () Bool)

(declare-fun lt!2304403 () Bool)

(declare-fun call!457957 () Bool)

(assert (=> b!5851402 (= e!3588305 (= lt!2304403 call!457957))))

(declare-fun b!5851403 () Bool)

(declare-fun res!2463499 () Bool)

(declare-fun e!3588306 () Bool)

(assert (=> b!5851403 (=> res!2463499 e!3588306)))

(assert (=> b!5851403 (= res!2463499 (not (isEmpty!35787 (tail!11473 (tail!11473 s!2326)))))))

(declare-fun b!5851404 () Bool)

(declare-fun res!2463502 () Bool)

(declare-fun e!3588301 () Bool)

(assert (=> b!5851404 (=> res!2463502 e!3588301)))

(declare-fun e!3588307 () Bool)

(assert (=> b!5851404 (= res!2463502 e!3588307)))

(declare-fun res!2463501 () Bool)

(assert (=> b!5851404 (=> (not res!2463501) (not e!3588307))))

(assert (=> b!5851404 (= res!2463501 lt!2304403)))

(declare-fun b!5851405 () Bool)

(declare-fun res!2463496 () Bool)

(assert (=> b!5851405 (=> (not res!2463496) (not e!3588307))))

(assert (=> b!5851405 (= res!2463496 (isEmpty!35787 (tail!11473 (tail!11473 s!2326))))))

(declare-fun b!5851406 () Bool)

(declare-fun e!3588303 () Bool)

(assert (=> b!5851406 (= e!3588303 e!3588306)))

(declare-fun res!2463497 () Bool)

(assert (=> b!5851406 (=> res!2463497 e!3588306)))

(assert (=> b!5851406 (= res!2463497 call!457957)))

(declare-fun b!5851407 () Bool)

(declare-fun e!3588304 () Bool)

(assert (=> b!5851407 (= e!3588304 (matchR!8100 (derivativeStep!4655 (derivativeStep!4655 (regOne!32347 r!7292) (head!12388 s!2326)) (head!12388 (tail!11473 s!2326))) (tail!11473 (tail!11473 s!2326))))))

(declare-fun d!1837798 () Bool)

(assert (=> d!1837798 e!3588305))

(declare-fun c!1037275 () Bool)

(assert (=> d!1837798 (= c!1037275 ((_ is EmptyExpr!15917) (derivativeStep!4655 (regOne!32347 r!7292) (head!12388 s!2326))))))

(assert (=> d!1837798 (= lt!2304403 e!3588304)))

(declare-fun c!1037274 () Bool)

(assert (=> d!1837798 (= c!1037274 (isEmpty!35787 (tail!11473 s!2326)))))

(assert (=> d!1837798 (validRegex!7653 (derivativeStep!4655 (regOne!32347 r!7292) (head!12388 s!2326)))))

(assert (=> d!1837798 (= (matchR!8100 (derivativeStep!4655 (regOne!32347 r!7292) (head!12388 s!2326)) (tail!11473 s!2326)) lt!2304403)))

(declare-fun b!5851408 () Bool)

(declare-fun res!2463500 () Bool)

(assert (=> b!5851408 (=> res!2463500 e!3588301)))

(assert (=> b!5851408 (= res!2463500 (not ((_ is ElementMatch!15917) (derivativeStep!4655 (regOne!32347 r!7292) (head!12388 s!2326)))))))

(declare-fun e!3588302 () Bool)

(assert (=> b!5851408 (= e!3588302 e!3588301)))

(declare-fun b!5851409 () Bool)

(declare-fun res!2463503 () Bool)

(assert (=> b!5851409 (=> (not res!2463503) (not e!3588307))))

(assert (=> b!5851409 (= res!2463503 (not call!457957))))

(declare-fun bm!457952 () Bool)

(assert (=> bm!457952 (= call!457957 (isEmpty!35787 (tail!11473 s!2326)))))

(declare-fun b!5851410 () Bool)

(assert (=> b!5851410 (= e!3588304 (nullable!5917 (derivativeStep!4655 (regOne!32347 r!7292) (head!12388 s!2326))))))

(declare-fun b!5851411 () Bool)

(assert (=> b!5851411 (= e!3588305 e!3588302)))

(declare-fun c!1037273 () Bool)

(assert (=> b!5851411 (= c!1037273 ((_ is EmptyLang!15917) (derivativeStep!4655 (regOne!32347 r!7292) (head!12388 s!2326))))))

(declare-fun b!5851412 () Bool)

(assert (=> b!5851412 (= e!3588306 (not (= (head!12388 (tail!11473 s!2326)) (c!1036885 (derivativeStep!4655 (regOne!32347 r!7292) (head!12388 s!2326))))))))

(declare-fun b!5851413 () Bool)

(assert (=> b!5851413 (= e!3588301 e!3588303)))

(declare-fun res!2463498 () Bool)

(assert (=> b!5851413 (=> (not res!2463498) (not e!3588303))))

(assert (=> b!5851413 (= res!2463498 (not lt!2304403))))

(declare-fun b!5851414 () Bool)

(assert (=> b!5851414 (= e!3588302 (not lt!2304403))))

(declare-fun b!5851415 () Bool)

(assert (=> b!5851415 (= e!3588307 (= (head!12388 (tail!11473 s!2326)) (c!1036885 (derivativeStep!4655 (regOne!32347 r!7292) (head!12388 s!2326)))))))

(assert (= (and d!1837798 c!1037274) b!5851410))

(assert (= (and d!1837798 (not c!1037274)) b!5851407))

(assert (= (and d!1837798 c!1037275) b!5851402))

(assert (= (and d!1837798 (not c!1037275)) b!5851411))

(assert (= (and b!5851411 c!1037273) b!5851414))

(assert (= (and b!5851411 (not c!1037273)) b!5851408))

(assert (= (and b!5851408 (not res!2463500)) b!5851404))

(assert (= (and b!5851404 res!2463501) b!5851409))

(assert (= (and b!5851409 res!2463503) b!5851405))

(assert (= (and b!5851405 res!2463496) b!5851415))

(assert (= (and b!5851404 (not res!2463502)) b!5851413))

(assert (= (and b!5851413 res!2463498) b!5851406))

(assert (= (and b!5851406 (not res!2463497)) b!5851403))

(assert (= (and b!5851403 (not res!2463499)) b!5851412))

(assert (= (or b!5851402 b!5851406 b!5851409) bm!457952))

(assert (=> d!1837798 m!6770514))

(assert (=> d!1837798 m!6770516))

(assert (=> d!1837798 m!6770534))

(declare-fun m!6771240 () Bool)

(assert (=> d!1837798 m!6771240))

(assert (=> b!5851405 m!6770514))

(declare-fun m!6771242 () Bool)

(assert (=> b!5851405 m!6771242))

(assert (=> b!5851405 m!6771242))

(declare-fun m!6771244 () Bool)

(assert (=> b!5851405 m!6771244))

(assert (=> b!5851403 m!6770514))

(assert (=> b!5851403 m!6771242))

(assert (=> b!5851403 m!6771242))

(assert (=> b!5851403 m!6771244))

(assert (=> b!5851407 m!6770514))

(declare-fun m!6771246 () Bool)

(assert (=> b!5851407 m!6771246))

(assert (=> b!5851407 m!6770534))

(assert (=> b!5851407 m!6771246))

(declare-fun m!6771248 () Bool)

(assert (=> b!5851407 m!6771248))

(assert (=> b!5851407 m!6770514))

(assert (=> b!5851407 m!6771242))

(assert (=> b!5851407 m!6771248))

(assert (=> b!5851407 m!6771242))

(declare-fun m!6771250 () Bool)

(assert (=> b!5851407 m!6771250))

(assert (=> b!5851410 m!6770534))

(declare-fun m!6771252 () Bool)

(assert (=> b!5851410 m!6771252))

(assert (=> b!5851412 m!6770514))

(assert (=> b!5851412 m!6771246))

(assert (=> bm!457952 m!6770514))

(assert (=> bm!457952 m!6770516))

(assert (=> b!5851415 m!6770514))

(assert (=> b!5851415 m!6771246))

(assert (=> b!5850487 d!1837798))

(declare-fun b!5851436 () Bool)

(declare-fun e!3588320 () Regex!15917)

(declare-fun call!457969 () Regex!15917)

(assert (=> b!5851436 (= e!3588320 (Concat!24762 call!457969 (regOne!32347 r!7292)))))

(declare-fun b!5851437 () Bool)

(declare-fun e!3588322 () Regex!15917)

(declare-fun call!457966 () Regex!15917)

(assert (=> b!5851437 (= e!3588322 (Union!15917 (Concat!24762 call!457966 (regTwo!32346 (regOne!32347 r!7292))) EmptyLang!15917))))

(declare-fun bm!457961 () Bool)

(declare-fun c!1037287 () Bool)

(declare-fun call!457968 () Regex!15917)

(declare-fun c!1037286 () Bool)

(declare-fun c!1037289 () Bool)

(assert (=> bm!457961 (= call!457968 (derivativeStep!4655 (ite c!1037286 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037289 (reg!16246 (regOne!32347 r!7292)) (ite c!1037287 (regTwo!32346 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292))))) (head!12388 s!2326)))))

(declare-fun bm!457962 () Bool)

(assert (=> bm!457962 (= call!457969 call!457968)))

(declare-fun b!5851438 () Bool)

(assert (=> b!5851438 (= c!1037287 (nullable!5917 (regOne!32346 (regOne!32347 r!7292))))))

(assert (=> b!5851438 (= e!3588320 e!3588322)))

(declare-fun bm!457963 () Bool)

(assert (=> bm!457963 (= call!457966 call!457969)))

(declare-fun d!1837800 () Bool)

(declare-fun lt!2304406 () Regex!15917)

(assert (=> d!1837800 (validRegex!7653 lt!2304406)))

(declare-fun e!3588321 () Regex!15917)

(assert (=> d!1837800 (= lt!2304406 e!3588321)))

(declare-fun c!1037290 () Bool)

(assert (=> d!1837800 (= c!1037290 (or ((_ is EmptyExpr!15917) (regOne!32347 r!7292)) ((_ is EmptyLang!15917) (regOne!32347 r!7292))))))

(assert (=> d!1837800 (validRegex!7653 (regOne!32347 r!7292))))

(assert (=> d!1837800 (= (derivativeStep!4655 (regOne!32347 r!7292) (head!12388 s!2326)) lt!2304406)))

(declare-fun b!5851439 () Bool)

(assert (=> b!5851439 (= e!3588321 EmptyLang!15917)))

(declare-fun b!5851440 () Bool)

(declare-fun e!3588318 () Regex!15917)

(assert (=> b!5851440 (= e!3588318 e!3588320)))

(assert (=> b!5851440 (= c!1037289 ((_ is Star!15917) (regOne!32347 r!7292)))))

(declare-fun b!5851441 () Bool)

(declare-fun e!3588319 () Regex!15917)

(assert (=> b!5851441 (= e!3588319 (ite (= (head!12388 s!2326) (c!1036885 (regOne!32347 r!7292))) EmptyExpr!15917 EmptyLang!15917))))

(declare-fun call!457967 () Regex!15917)

(declare-fun b!5851442 () Bool)

(assert (=> b!5851442 (= e!3588322 (Union!15917 (Concat!24762 call!457967 (regTwo!32346 (regOne!32347 r!7292))) call!457966))))

(declare-fun b!5851443 () Bool)

(assert (=> b!5851443 (= e!3588318 (Union!15917 call!457967 call!457968))))

(declare-fun b!5851444 () Bool)

(assert (=> b!5851444 (= c!1037286 ((_ is Union!15917) (regOne!32347 r!7292)))))

(assert (=> b!5851444 (= e!3588319 e!3588318)))

(declare-fun b!5851445 () Bool)

(assert (=> b!5851445 (= e!3588321 e!3588319)))

(declare-fun c!1037288 () Bool)

(assert (=> b!5851445 (= c!1037288 ((_ is ElementMatch!15917) (regOne!32347 r!7292)))))

(declare-fun bm!457964 () Bool)

(assert (=> bm!457964 (= call!457967 (derivativeStep!4655 (ite c!1037286 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292))) (head!12388 s!2326)))))

(assert (= (and d!1837800 c!1037290) b!5851439))

(assert (= (and d!1837800 (not c!1037290)) b!5851445))

(assert (= (and b!5851445 c!1037288) b!5851441))

(assert (= (and b!5851445 (not c!1037288)) b!5851444))

(assert (= (and b!5851444 c!1037286) b!5851443))

(assert (= (and b!5851444 (not c!1037286)) b!5851440))

(assert (= (and b!5851440 c!1037289) b!5851436))

(assert (= (and b!5851440 (not c!1037289)) b!5851438))

(assert (= (and b!5851438 c!1037287) b!5851442))

(assert (= (and b!5851438 (not c!1037287)) b!5851437))

(assert (= (or b!5851442 b!5851437) bm!457963))

(assert (= (or b!5851436 bm!457963) bm!457962))

(assert (= (or b!5851443 bm!457962) bm!457961))

(assert (= (or b!5851443 b!5851442) bm!457964))

(assert (=> bm!457961 m!6770518))

(declare-fun m!6771254 () Bool)

(assert (=> bm!457961 m!6771254))

(assert (=> b!5851438 m!6770578))

(declare-fun m!6771256 () Bool)

(assert (=> d!1837800 m!6771256))

(assert (=> d!1837800 m!6770510))

(assert (=> bm!457964 m!6770518))

(declare-fun m!6771258 () Bool)

(assert (=> bm!457964 m!6771258))

(assert (=> b!5850487 d!1837800))

(assert (=> b!5850487 d!1837714))

(assert (=> b!5850487 d!1837724))

(assert (=> bm!457766 d!1837708))

(declare-fun bm!457965 () Bool)

(declare-fun call!457970 () (InoxSet Context!10602))

(declare-fun call!457973 () (InoxSet Context!10602))

(assert (=> bm!457965 (= call!457970 call!457973)))

(declare-fun bm!457966 () Bool)

(declare-fun call!457975 () List!64050)

(declare-fun c!1037294 () Bool)

(declare-fun c!1037295 () Bool)

(assert (=> bm!457966 (= call!457975 ($colon$colon!1822 (exprs!5801 (ite (or c!1037053 c!1037057) lt!2304315 (Context!10603 call!457793))) (ite (or c!1037295 c!1037294) (regTwo!32346 (ite c!1037053 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037057 (regTwo!32346 (regOne!32347 r!7292)) (ite c!1037056 (regOne!32346 (regOne!32347 r!7292)) (reg!16246 (regOne!32347 r!7292)))))) (ite c!1037053 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037057 (regTwo!32346 (regOne!32347 r!7292)) (ite c!1037056 (regOne!32346 (regOne!32347 r!7292)) (reg!16246 (regOne!32347 r!7292))))))))))

(declare-fun b!5851447 () Bool)

(declare-fun e!3588328 () (InoxSet Context!10602))

(declare-fun e!3588323 () (InoxSet Context!10602))

(assert (=> b!5851447 (= e!3588328 e!3588323)))

(assert (=> b!5851447 (= c!1037294 ((_ is Concat!24762) (ite c!1037053 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037057 (regTwo!32346 (regOne!32347 r!7292)) (ite c!1037056 (regOne!32346 (regOne!32347 r!7292)) (reg!16246 (regOne!32347 r!7292)))))))))

(declare-fun call!457971 () (InoxSet Context!10602))

(declare-fun c!1037291 () Bool)

(declare-fun bm!457967 () Bool)

(assert (=> bm!457967 (= call!457971 (derivationStepZipperDown!1183 (ite c!1037291 (regOne!32347 (ite c!1037053 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037057 (regTwo!32346 (regOne!32347 r!7292)) (ite c!1037056 (regOne!32346 (regOne!32347 r!7292)) (reg!16246 (regOne!32347 r!7292)))))) (regOne!32346 (ite c!1037053 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037057 (regTwo!32346 (regOne!32347 r!7292)) (ite c!1037056 (regOne!32346 (regOne!32347 r!7292)) (reg!16246 (regOne!32347 r!7292))))))) (ite c!1037291 (ite (or c!1037053 c!1037057) lt!2304315 (Context!10603 call!457793)) (Context!10603 call!457975)) (h!70376 s!2326)))))

(declare-fun b!5851448 () Bool)

(assert (=> b!5851448 (= e!3588323 call!457970)))

(declare-fun call!457974 () (InoxSet Context!10602))

(declare-fun bm!457968 () Bool)

(declare-fun call!457972 () List!64050)

(assert (=> bm!457968 (= call!457974 (derivationStepZipperDown!1183 (ite c!1037291 (regTwo!32347 (ite c!1037053 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037057 (regTwo!32346 (regOne!32347 r!7292)) (ite c!1037056 (regOne!32346 (regOne!32347 r!7292)) (reg!16246 (regOne!32347 r!7292)))))) (ite c!1037295 (regTwo!32346 (ite c!1037053 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037057 (regTwo!32346 (regOne!32347 r!7292)) (ite c!1037056 (regOne!32346 (regOne!32347 r!7292)) (reg!16246 (regOne!32347 r!7292)))))) (ite c!1037294 (regOne!32346 (ite c!1037053 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037057 (regTwo!32346 (regOne!32347 r!7292)) (ite c!1037056 (regOne!32346 (regOne!32347 r!7292)) (reg!16246 (regOne!32347 r!7292)))))) (reg!16246 (ite c!1037053 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037057 (regTwo!32346 (regOne!32347 r!7292)) (ite c!1037056 (regOne!32346 (regOne!32347 r!7292)) (reg!16246 (regOne!32347 r!7292))))))))) (ite (or c!1037291 c!1037295) (ite (or c!1037053 c!1037057) lt!2304315 (Context!10603 call!457793)) (Context!10603 call!457972)) (h!70376 s!2326)))))

(declare-fun c!1037292 () Bool)

(declare-fun b!5851449 () Bool)

(assert (=> b!5851449 (= c!1037292 ((_ is Star!15917) (ite c!1037053 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037057 (regTwo!32346 (regOne!32347 r!7292)) (ite c!1037056 (regOne!32346 (regOne!32347 r!7292)) (reg!16246 (regOne!32347 r!7292)))))))))

(declare-fun e!3588326 () (InoxSet Context!10602))

(assert (=> b!5851449 (= e!3588323 e!3588326)))

(declare-fun b!5851450 () Bool)

(declare-fun e!3588327 () (InoxSet Context!10602))

(assert (=> b!5851450 (= e!3588327 (store ((as const (Array Context!10602 Bool)) false) (ite (or c!1037053 c!1037057) lt!2304315 (Context!10603 call!457793)) true))))

(declare-fun b!5851451 () Bool)

(declare-fun e!3588324 () (InoxSet Context!10602))

(assert (=> b!5851451 (= e!3588324 ((_ map or) call!457971 call!457974))))

(declare-fun b!5851452 () Bool)

(declare-fun e!3588325 () Bool)

(assert (=> b!5851452 (= c!1037295 e!3588325)))

(declare-fun res!2463504 () Bool)

(assert (=> b!5851452 (=> (not res!2463504) (not e!3588325))))

(assert (=> b!5851452 (= res!2463504 ((_ is Concat!24762) (ite c!1037053 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037057 (regTwo!32346 (regOne!32347 r!7292)) (ite c!1037056 (regOne!32346 (regOne!32347 r!7292)) (reg!16246 (regOne!32347 r!7292)))))))))

(assert (=> b!5851452 (= e!3588324 e!3588328)))

(declare-fun bm!457969 () Bool)

(assert (=> bm!457969 (= call!457972 call!457975)))

(declare-fun b!5851453 () Bool)

(assert (=> b!5851453 (= e!3588325 (nullable!5917 (regOne!32346 (ite c!1037053 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037057 (regTwo!32346 (regOne!32347 r!7292)) (ite c!1037056 (regOne!32346 (regOne!32347 r!7292)) (reg!16246 (regOne!32347 r!7292))))))))))

(declare-fun bm!457970 () Bool)

(assert (=> bm!457970 (= call!457973 call!457974)))

(declare-fun b!5851454 () Bool)

(assert (=> b!5851454 (= e!3588328 ((_ map or) call!457971 call!457973))))

(declare-fun b!5851446 () Bool)

(assert (=> b!5851446 (= e!3588326 ((as const (Array Context!10602 Bool)) false))))

(declare-fun c!1037293 () Bool)

(declare-fun d!1837802 () Bool)

(assert (=> d!1837802 (= c!1037293 (and ((_ is ElementMatch!15917) (ite c!1037053 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037057 (regTwo!32346 (regOne!32347 r!7292)) (ite c!1037056 (regOne!32346 (regOne!32347 r!7292)) (reg!16246 (regOne!32347 r!7292)))))) (= (c!1036885 (ite c!1037053 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037057 (regTwo!32346 (regOne!32347 r!7292)) (ite c!1037056 (regOne!32346 (regOne!32347 r!7292)) (reg!16246 (regOne!32347 r!7292)))))) (h!70376 s!2326))))))

(assert (=> d!1837802 (= (derivationStepZipperDown!1183 (ite c!1037053 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037057 (regTwo!32346 (regOne!32347 r!7292)) (ite c!1037056 (regOne!32346 (regOne!32347 r!7292)) (reg!16246 (regOne!32347 r!7292))))) (ite (or c!1037053 c!1037057) lt!2304315 (Context!10603 call!457793)) (h!70376 s!2326)) e!3588327)))

(declare-fun b!5851455 () Bool)

(assert (=> b!5851455 (= e!3588326 call!457970)))

(declare-fun b!5851456 () Bool)

(assert (=> b!5851456 (= e!3588327 e!3588324)))

(assert (=> b!5851456 (= c!1037291 ((_ is Union!15917) (ite c!1037053 (regTwo!32347 (regOne!32347 r!7292)) (ite c!1037057 (regTwo!32346 (regOne!32347 r!7292)) (ite c!1037056 (regOne!32346 (regOne!32347 r!7292)) (reg!16246 (regOne!32347 r!7292)))))))))

(assert (= (and d!1837802 c!1037293) b!5851450))

(assert (= (and d!1837802 (not c!1037293)) b!5851456))

(assert (= (and b!5851456 c!1037291) b!5851451))

(assert (= (and b!5851456 (not c!1037291)) b!5851452))

(assert (= (and b!5851452 res!2463504) b!5851453))

(assert (= (and b!5851452 c!1037295) b!5851454))

(assert (= (and b!5851452 (not c!1037295)) b!5851447))

(assert (= (and b!5851447 c!1037294) b!5851448))

(assert (= (and b!5851447 (not c!1037294)) b!5851449))

(assert (= (and b!5851449 c!1037292) b!5851455))

(assert (= (and b!5851449 (not c!1037292)) b!5851446))

(assert (= (or b!5851448 b!5851455) bm!457969))

(assert (= (or b!5851448 b!5851455) bm!457965))

(assert (= (or b!5851454 bm!457969) bm!457966))

(assert (= (or b!5851454 bm!457965) bm!457970))

(assert (= (or b!5851451 bm!457970) bm!457968))

(assert (= (or b!5851451 b!5851454) bm!457967))

(declare-fun m!6771260 () Bool)

(assert (=> bm!457967 m!6771260))

(declare-fun m!6771262 () Bool)

(assert (=> bm!457966 m!6771262))

(declare-fun m!6771264 () Bool)

(assert (=> b!5851453 m!6771264))

(declare-fun m!6771266 () Bool)

(assert (=> b!5851450 m!6771266))

(declare-fun m!6771268 () Bool)

(assert (=> bm!457968 m!6771268))

(assert (=> bm!457789 d!1837802))

(declare-fun bs!1378797 () Bool)

(declare-fun b!5851462 () Bool)

(assert (= bs!1378797 (and b!5851462 b!5851307)))

(declare-fun lambda!319945 () Int)

(assert (=> bs!1378797 (not (= lambda!319945 lambda!319939))))

(declare-fun bs!1378798 () Bool)

(assert (= bs!1378798 (and b!5851462 b!5851352)))

(assert (=> bs!1378798 (= (and (= (reg!16246 (regOne!32347 (regTwo!32347 r!7292))) (reg!16246 (regOne!32347 (regOne!32347 r!7292)))) (= (regOne!32347 (regTwo!32347 r!7292)) (regOne!32347 (regOne!32347 r!7292)))) (= lambda!319945 lambda!319942))))

(declare-fun bs!1378799 () Bool)

(assert (= bs!1378799 (and b!5851462 b!5851266)))

(assert (=> bs!1378799 (= (and (= (reg!16246 (regOne!32347 (regTwo!32347 r!7292))) (reg!16246 (regTwo!32347 (regTwo!32347 r!7292)))) (= (regOne!32347 (regTwo!32347 r!7292)) (regTwo!32347 (regTwo!32347 r!7292)))) (= lambda!319945 lambda!319932))))

(declare-fun bs!1378800 () Bool)

(assert (= bs!1378800 (and b!5851462 b!5850476)))

(assert (=> bs!1378800 (= (and (= (reg!16246 (regOne!32347 (regTwo!32347 r!7292))) (reg!16246 (regOne!32347 r!7292))) (= (regOne!32347 (regTwo!32347 r!7292)) (regOne!32347 r!7292))) (= lambda!319945 lambda!319886))))

(declare-fun bs!1378801 () Bool)

(assert (= bs!1378801 (and b!5851462 b!5850622)))

(assert (=> bs!1378801 (= (and (= (reg!16246 (regOne!32347 (regTwo!32347 r!7292))) (reg!16246 r!7292)) (= (regOne!32347 (regTwo!32347 r!7292)) r!7292)) (= lambda!319945 lambda!319899))))

(declare-fun bs!1378802 () Bool)

(assert (= bs!1378802 (and b!5851462 b!5850480)))

(assert (=> bs!1378802 (not (= lambda!319945 lambda!319887))))

(declare-fun bs!1378803 () Bool)

(assert (= bs!1378803 (and b!5851462 b!5851270)))

(assert (=> bs!1378803 (not (= lambda!319945 lambda!319933))))

(declare-fun bs!1378804 () Bool)

(assert (= bs!1378804 (and b!5851462 b!5850423)))

(assert (=> bs!1378804 (not (= lambda!319945 lambda!319885))))

(declare-fun bs!1378805 () Bool)

(assert (= bs!1378805 (and b!5851462 b!5851356)))

(assert (=> bs!1378805 (not (= lambda!319945 lambda!319943))))

(declare-fun bs!1378806 () Bool)

(assert (= bs!1378806 (and b!5851462 b!5850419)))

(assert (=> bs!1378806 (= (and (= (reg!16246 (regOne!32347 (regTwo!32347 r!7292))) (reg!16246 (regTwo!32347 r!7292))) (= (regOne!32347 (regTwo!32347 r!7292)) (regTwo!32347 r!7292))) (= lambda!319945 lambda!319884))))

(declare-fun bs!1378807 () Bool)

(assert (= bs!1378807 (and b!5851462 b!5851303)))

(assert (=> bs!1378807 (= (and (= (reg!16246 (regOne!32347 (regTwo!32347 r!7292))) (reg!16246 (regTwo!32347 (regOne!32347 r!7292)))) (= (regOne!32347 (regTwo!32347 r!7292)) (regTwo!32347 (regOne!32347 r!7292)))) (= lambda!319945 lambda!319938))))

(declare-fun bs!1378808 () Bool)

(assert (= bs!1378808 (and b!5851462 b!5850626)))

(assert (=> bs!1378808 (not (= lambda!319945 lambda!319900))))

(assert (=> b!5851462 true))

(assert (=> b!5851462 true))

(declare-fun bs!1378809 () Bool)

(declare-fun b!5851466 () Bool)

(assert (= bs!1378809 (and b!5851466 b!5851462)))

(declare-fun lambda!319946 () Int)

(assert (=> bs!1378809 (not (= lambda!319946 lambda!319945))))

(declare-fun bs!1378810 () Bool)

(assert (= bs!1378810 (and b!5851466 b!5851307)))

(assert (=> bs!1378810 (= (and (= (regOne!32346 (regOne!32347 (regTwo!32347 r!7292))) (regOne!32346 (regTwo!32347 (regOne!32347 r!7292)))) (= (regTwo!32346 (regOne!32347 (regTwo!32347 r!7292))) (regTwo!32346 (regTwo!32347 (regOne!32347 r!7292))))) (= lambda!319946 lambda!319939))))

(declare-fun bs!1378811 () Bool)

(assert (= bs!1378811 (and b!5851466 b!5851352)))

(assert (=> bs!1378811 (not (= lambda!319946 lambda!319942))))

(declare-fun bs!1378812 () Bool)

(assert (= bs!1378812 (and b!5851466 b!5851266)))

(assert (=> bs!1378812 (not (= lambda!319946 lambda!319932))))

(declare-fun bs!1378813 () Bool)

(assert (= bs!1378813 (and b!5851466 b!5850476)))

(assert (=> bs!1378813 (not (= lambda!319946 lambda!319886))))

(declare-fun bs!1378814 () Bool)

(assert (= bs!1378814 (and b!5851466 b!5850622)))

(assert (=> bs!1378814 (not (= lambda!319946 lambda!319899))))

(declare-fun bs!1378815 () Bool)

(assert (= bs!1378815 (and b!5851466 b!5850480)))

(assert (=> bs!1378815 (= (and (= (regOne!32346 (regOne!32347 (regTwo!32347 r!7292))) (regOne!32346 (regOne!32347 r!7292))) (= (regTwo!32346 (regOne!32347 (regTwo!32347 r!7292))) (regTwo!32346 (regOne!32347 r!7292)))) (= lambda!319946 lambda!319887))))

(declare-fun bs!1378816 () Bool)

(assert (= bs!1378816 (and b!5851466 b!5851270)))

(assert (=> bs!1378816 (= (and (= (regOne!32346 (regOne!32347 (regTwo!32347 r!7292))) (regOne!32346 (regTwo!32347 (regTwo!32347 r!7292)))) (= (regTwo!32346 (regOne!32347 (regTwo!32347 r!7292))) (regTwo!32346 (regTwo!32347 (regTwo!32347 r!7292))))) (= lambda!319946 lambda!319933))))

(declare-fun bs!1378817 () Bool)

(assert (= bs!1378817 (and b!5851466 b!5850423)))

(assert (=> bs!1378817 (= (and (= (regOne!32346 (regOne!32347 (regTwo!32347 r!7292))) (regOne!32346 (regTwo!32347 r!7292))) (= (regTwo!32346 (regOne!32347 (regTwo!32347 r!7292))) (regTwo!32346 (regTwo!32347 r!7292)))) (= lambda!319946 lambda!319885))))

(declare-fun bs!1378818 () Bool)

(assert (= bs!1378818 (and b!5851466 b!5851356)))

(assert (=> bs!1378818 (= (and (= (regOne!32346 (regOne!32347 (regTwo!32347 r!7292))) (regOne!32346 (regOne!32347 (regOne!32347 r!7292)))) (= (regTwo!32346 (regOne!32347 (regTwo!32347 r!7292))) (regTwo!32346 (regOne!32347 (regOne!32347 r!7292))))) (= lambda!319946 lambda!319943))))

(declare-fun bs!1378819 () Bool)

(assert (= bs!1378819 (and b!5851466 b!5850419)))

(assert (=> bs!1378819 (not (= lambda!319946 lambda!319884))))

(declare-fun bs!1378820 () Bool)

(assert (= bs!1378820 (and b!5851466 b!5851303)))

(assert (=> bs!1378820 (not (= lambda!319946 lambda!319938))))

(declare-fun bs!1378821 () Bool)

(assert (= bs!1378821 (and b!5851466 b!5850626)))

(assert (=> bs!1378821 (= (and (= (regOne!32346 (regOne!32347 (regTwo!32347 r!7292))) (regOne!32346 r!7292)) (= (regTwo!32346 (regOne!32347 (regTwo!32347 r!7292))) (regTwo!32346 r!7292))) (= lambda!319946 lambda!319900))))

(assert (=> b!5851466 true))

(assert (=> b!5851466 true))

(declare-fun b!5851457 () Bool)

(declare-fun e!3588329 () Bool)

(assert (=> b!5851457 (= e!3588329 (= s!2326 (Cons!63928 (c!1036885 (regOne!32347 (regTwo!32347 r!7292))) Nil!63928)))))

(declare-fun b!5851458 () Bool)

(declare-fun e!3588330 () Bool)

(declare-fun e!3588332 () Bool)

(assert (=> b!5851458 (= e!3588330 e!3588332)))

(declare-fun c!1037297 () Bool)

(assert (=> b!5851458 (= c!1037297 ((_ is Star!15917) (regOne!32347 (regTwo!32347 r!7292))))))

(declare-fun b!5851459 () Bool)

(declare-fun e!3588331 () Bool)

(assert (=> b!5851459 (= e!3588330 e!3588331)))

(declare-fun res!2463505 () Bool)

(assert (=> b!5851459 (= res!2463505 (matchRSpec!3018 (regOne!32347 (regOne!32347 (regTwo!32347 r!7292))) s!2326))))

(assert (=> b!5851459 (=> res!2463505 e!3588331)))

(declare-fun b!5851460 () Bool)

(declare-fun c!1037298 () Bool)

(assert (=> b!5851460 (= c!1037298 ((_ is ElementMatch!15917) (regOne!32347 (regTwo!32347 r!7292))))))

(declare-fun e!3588333 () Bool)

(assert (=> b!5851460 (= e!3588333 e!3588329)))

(declare-fun bm!457971 () Bool)

(declare-fun call!457976 () Bool)

(assert (=> bm!457971 (= call!457976 (Exists!2989 (ite c!1037297 lambda!319945 lambda!319946)))))

(declare-fun b!5851461 () Bool)

(declare-fun c!1037296 () Bool)

(assert (=> b!5851461 (= c!1037296 ((_ is Union!15917) (regOne!32347 (regTwo!32347 r!7292))))))

(assert (=> b!5851461 (= e!3588329 e!3588330)))

(declare-fun e!3588335 () Bool)

(assert (=> b!5851462 (= e!3588335 call!457976)))

(declare-fun b!5851463 () Bool)

(assert (=> b!5851463 (= e!3588331 (matchRSpec!3018 (regTwo!32347 (regOne!32347 (regTwo!32347 r!7292))) s!2326))))

(declare-fun b!5851464 () Bool)

(declare-fun res!2463506 () Bool)

(assert (=> b!5851464 (=> res!2463506 e!3588335)))

(declare-fun call!457977 () Bool)

(assert (=> b!5851464 (= res!2463506 call!457977)))

(assert (=> b!5851464 (= e!3588332 e!3588335)))

(declare-fun d!1837804 () Bool)

(declare-fun c!1037299 () Bool)

(assert (=> d!1837804 (= c!1037299 ((_ is EmptyExpr!15917) (regOne!32347 (regTwo!32347 r!7292))))))

(declare-fun e!3588334 () Bool)

(assert (=> d!1837804 (= (matchRSpec!3018 (regOne!32347 (regTwo!32347 r!7292)) s!2326) e!3588334)))

(declare-fun b!5851465 () Bool)

(assert (=> b!5851465 (= e!3588334 call!457977)))

(assert (=> b!5851466 (= e!3588332 call!457976)))

(declare-fun bm!457972 () Bool)

(assert (=> bm!457972 (= call!457977 (isEmpty!35787 s!2326))))

(declare-fun b!5851467 () Bool)

(assert (=> b!5851467 (= e!3588334 e!3588333)))

(declare-fun res!2463507 () Bool)

(assert (=> b!5851467 (= res!2463507 (not ((_ is EmptyLang!15917) (regOne!32347 (regTwo!32347 r!7292)))))))

(assert (=> b!5851467 (=> (not res!2463507) (not e!3588333))))

(assert (= (and d!1837804 c!1037299) b!5851465))

(assert (= (and d!1837804 (not c!1037299)) b!5851467))

(assert (= (and b!5851467 res!2463507) b!5851460))

(assert (= (and b!5851460 c!1037298) b!5851457))

(assert (= (and b!5851460 (not c!1037298)) b!5851461))

(assert (= (and b!5851461 c!1037296) b!5851459))

(assert (= (and b!5851461 (not c!1037296)) b!5851458))

(assert (= (and b!5851459 (not res!2463505)) b!5851463))

(assert (= (and b!5851458 c!1037297) b!5851464))

(assert (= (and b!5851458 (not c!1037297)) b!5851466))

(assert (= (and b!5851464 (not res!2463506)) b!5851462))

(assert (= (or b!5851462 b!5851466) bm!457971))

(assert (= (or b!5851465 b!5851464) bm!457972))

(declare-fun m!6771270 () Bool)

(assert (=> b!5851459 m!6771270))

(declare-fun m!6771272 () Bool)

(assert (=> bm!457971 m!6771272))

(declare-fun m!6771274 () Bool)

(assert (=> b!5851463 m!6771274))

(assert (=> bm!457972 m!6770506))

(assert (=> b!5850416 d!1837804))

(declare-fun d!1837806 () Bool)

(assert (=> d!1837806 (= (nullable!5917 (regOne!32347 r!7292)) (nullableFct!1904 (regOne!32347 r!7292)))))

(declare-fun bs!1378822 () Bool)

(assert (= bs!1378822 d!1837806))

(declare-fun m!6771276 () Bool)

(assert (=> bs!1378822 m!6771276))

(assert (=> b!5850490 d!1837806))

(declare-fun bm!457973 () Bool)

(declare-fun call!457978 () (InoxSet Context!10602))

(declare-fun call!457981 () (InoxSet Context!10602))

(assert (=> bm!457973 (= call!457978 call!457981)))

(declare-fun call!457983 () List!64050)

(declare-fun c!1037304 () Bool)

(declare-fun bm!457974 () Bool)

(declare-fun c!1037303 () Bool)

(assert (=> bm!457974 (= call!457983 ($colon$colon!1822 (exprs!5801 (ite (or c!1037062 c!1037066) lt!2304315 (Context!10603 call!457799))) (ite (or c!1037304 c!1037303) (regTwo!32346 (ite c!1037062 (regTwo!32347 r!7292) (ite c!1037066 (regTwo!32346 r!7292) (ite c!1037065 (regOne!32346 r!7292) (reg!16246 r!7292))))) (ite c!1037062 (regTwo!32347 r!7292) (ite c!1037066 (regTwo!32346 r!7292) (ite c!1037065 (regOne!32346 r!7292) (reg!16246 r!7292)))))))))

(declare-fun b!5851469 () Bool)

(declare-fun e!3588341 () (InoxSet Context!10602))

(declare-fun e!3588336 () (InoxSet Context!10602))

(assert (=> b!5851469 (= e!3588341 e!3588336)))

(assert (=> b!5851469 (= c!1037303 ((_ is Concat!24762) (ite c!1037062 (regTwo!32347 r!7292) (ite c!1037066 (regTwo!32346 r!7292) (ite c!1037065 (regOne!32346 r!7292) (reg!16246 r!7292))))))))

(declare-fun c!1037300 () Bool)

(declare-fun bm!457975 () Bool)

(declare-fun call!457979 () (InoxSet Context!10602))

(assert (=> bm!457975 (= call!457979 (derivationStepZipperDown!1183 (ite c!1037300 (regOne!32347 (ite c!1037062 (regTwo!32347 r!7292) (ite c!1037066 (regTwo!32346 r!7292) (ite c!1037065 (regOne!32346 r!7292) (reg!16246 r!7292))))) (regOne!32346 (ite c!1037062 (regTwo!32347 r!7292) (ite c!1037066 (regTwo!32346 r!7292) (ite c!1037065 (regOne!32346 r!7292) (reg!16246 r!7292)))))) (ite c!1037300 (ite (or c!1037062 c!1037066) lt!2304315 (Context!10603 call!457799)) (Context!10603 call!457983)) (h!70376 s!2326)))))

(declare-fun b!5851470 () Bool)

(assert (=> b!5851470 (= e!3588336 call!457978)))

(declare-fun call!457980 () List!64050)

(declare-fun bm!457976 () Bool)

(declare-fun call!457982 () (InoxSet Context!10602))

(assert (=> bm!457976 (= call!457982 (derivationStepZipperDown!1183 (ite c!1037300 (regTwo!32347 (ite c!1037062 (regTwo!32347 r!7292) (ite c!1037066 (regTwo!32346 r!7292) (ite c!1037065 (regOne!32346 r!7292) (reg!16246 r!7292))))) (ite c!1037304 (regTwo!32346 (ite c!1037062 (regTwo!32347 r!7292) (ite c!1037066 (regTwo!32346 r!7292) (ite c!1037065 (regOne!32346 r!7292) (reg!16246 r!7292))))) (ite c!1037303 (regOne!32346 (ite c!1037062 (regTwo!32347 r!7292) (ite c!1037066 (regTwo!32346 r!7292) (ite c!1037065 (regOne!32346 r!7292) (reg!16246 r!7292))))) (reg!16246 (ite c!1037062 (regTwo!32347 r!7292) (ite c!1037066 (regTwo!32346 r!7292) (ite c!1037065 (regOne!32346 r!7292) (reg!16246 r!7292)))))))) (ite (or c!1037300 c!1037304) (ite (or c!1037062 c!1037066) lt!2304315 (Context!10603 call!457799)) (Context!10603 call!457980)) (h!70376 s!2326)))))

(declare-fun c!1037301 () Bool)

(declare-fun b!5851471 () Bool)

(assert (=> b!5851471 (= c!1037301 ((_ is Star!15917) (ite c!1037062 (regTwo!32347 r!7292) (ite c!1037066 (regTwo!32346 r!7292) (ite c!1037065 (regOne!32346 r!7292) (reg!16246 r!7292))))))))

(declare-fun e!3588339 () (InoxSet Context!10602))

(assert (=> b!5851471 (= e!3588336 e!3588339)))

(declare-fun e!3588340 () (InoxSet Context!10602))

(declare-fun b!5851472 () Bool)

(assert (=> b!5851472 (= e!3588340 (store ((as const (Array Context!10602 Bool)) false) (ite (or c!1037062 c!1037066) lt!2304315 (Context!10603 call!457799)) true))))

(declare-fun b!5851473 () Bool)

(declare-fun e!3588337 () (InoxSet Context!10602))

(assert (=> b!5851473 (= e!3588337 ((_ map or) call!457979 call!457982))))

(declare-fun b!5851474 () Bool)

(declare-fun e!3588338 () Bool)

(assert (=> b!5851474 (= c!1037304 e!3588338)))

(declare-fun res!2463508 () Bool)

(assert (=> b!5851474 (=> (not res!2463508) (not e!3588338))))

(assert (=> b!5851474 (= res!2463508 ((_ is Concat!24762) (ite c!1037062 (regTwo!32347 r!7292) (ite c!1037066 (regTwo!32346 r!7292) (ite c!1037065 (regOne!32346 r!7292) (reg!16246 r!7292))))))))

(assert (=> b!5851474 (= e!3588337 e!3588341)))

(declare-fun bm!457977 () Bool)

(assert (=> bm!457977 (= call!457980 call!457983)))

(declare-fun b!5851475 () Bool)

(assert (=> b!5851475 (= e!3588338 (nullable!5917 (regOne!32346 (ite c!1037062 (regTwo!32347 r!7292) (ite c!1037066 (regTwo!32346 r!7292) (ite c!1037065 (regOne!32346 r!7292) (reg!16246 r!7292)))))))))

(declare-fun bm!457978 () Bool)

(assert (=> bm!457978 (= call!457981 call!457982)))

(declare-fun b!5851476 () Bool)

(assert (=> b!5851476 (= e!3588341 ((_ map or) call!457979 call!457981))))

(declare-fun b!5851468 () Bool)

(assert (=> b!5851468 (= e!3588339 ((as const (Array Context!10602 Bool)) false))))

(declare-fun c!1037302 () Bool)

(declare-fun d!1837808 () Bool)

(assert (=> d!1837808 (= c!1037302 (and ((_ is ElementMatch!15917) (ite c!1037062 (regTwo!32347 r!7292) (ite c!1037066 (regTwo!32346 r!7292) (ite c!1037065 (regOne!32346 r!7292) (reg!16246 r!7292))))) (= (c!1036885 (ite c!1037062 (regTwo!32347 r!7292) (ite c!1037066 (regTwo!32346 r!7292) (ite c!1037065 (regOne!32346 r!7292) (reg!16246 r!7292))))) (h!70376 s!2326))))))

(assert (=> d!1837808 (= (derivationStepZipperDown!1183 (ite c!1037062 (regTwo!32347 r!7292) (ite c!1037066 (regTwo!32346 r!7292) (ite c!1037065 (regOne!32346 r!7292) (reg!16246 r!7292)))) (ite (or c!1037062 c!1037066) lt!2304315 (Context!10603 call!457799)) (h!70376 s!2326)) e!3588340)))

(declare-fun b!5851477 () Bool)

(assert (=> b!5851477 (= e!3588339 call!457978)))

(declare-fun b!5851478 () Bool)

(assert (=> b!5851478 (= e!3588340 e!3588337)))

(assert (=> b!5851478 (= c!1037300 ((_ is Union!15917) (ite c!1037062 (regTwo!32347 r!7292) (ite c!1037066 (regTwo!32346 r!7292) (ite c!1037065 (regOne!32346 r!7292) (reg!16246 r!7292))))))))

(assert (= (and d!1837808 c!1037302) b!5851472))

(assert (= (and d!1837808 (not c!1037302)) b!5851478))

(assert (= (and b!5851478 c!1037300) b!5851473))

(assert (= (and b!5851478 (not c!1037300)) b!5851474))

(assert (= (and b!5851474 res!2463508) b!5851475))

(assert (= (and b!5851474 c!1037304) b!5851476))

(assert (= (and b!5851474 (not c!1037304)) b!5851469))

(assert (= (and b!5851469 c!1037303) b!5851470))

(assert (= (and b!5851469 (not c!1037303)) b!5851471))

(assert (= (and b!5851471 c!1037301) b!5851477))

(assert (= (and b!5851471 (not c!1037301)) b!5851468))

(assert (= (or b!5851470 b!5851477) bm!457977))

(assert (= (or b!5851470 b!5851477) bm!457973))

(assert (= (or b!5851476 bm!457977) bm!457974))

(assert (= (or b!5851476 bm!457973) bm!457978))

(assert (= (or b!5851473 bm!457978) bm!457976))

(assert (= (or b!5851473 b!5851476) bm!457975))

(declare-fun m!6771278 () Bool)

(assert (=> bm!457975 m!6771278))

(declare-fun m!6771280 () Bool)

(assert (=> bm!457974 m!6771280))

(declare-fun m!6771282 () Bool)

(assert (=> b!5851475 m!6771282))

(declare-fun m!6771284 () Bool)

(assert (=> b!5851472 m!6771284))

(declare-fun m!6771286 () Bool)

(assert (=> bm!457976 m!6771286))

(assert (=> bm!457795 d!1837808))

(declare-fun b!5851479 () Bool)

(declare-fun e!3588346 () Bool)

(declare-fun lt!2304407 () Bool)

(declare-fun call!457984 () Bool)

(assert (=> b!5851479 (= e!3588346 (= lt!2304407 call!457984))))

(declare-fun b!5851480 () Bool)

(declare-fun res!2463512 () Bool)

(declare-fun e!3588347 () Bool)

(assert (=> b!5851480 (=> res!2463512 e!3588347)))

(assert (=> b!5851480 (= res!2463512 (not (isEmpty!35787 (tail!11473 (tail!11473 s!2326)))))))

(declare-fun b!5851481 () Bool)

(declare-fun res!2463515 () Bool)

(declare-fun e!3588342 () Bool)

(assert (=> b!5851481 (=> res!2463515 e!3588342)))

(declare-fun e!3588348 () Bool)

(assert (=> b!5851481 (= res!2463515 e!3588348)))

(declare-fun res!2463514 () Bool)

(assert (=> b!5851481 (=> (not res!2463514) (not e!3588348))))

(assert (=> b!5851481 (= res!2463514 lt!2304407)))

(declare-fun b!5851482 () Bool)

(declare-fun res!2463509 () Bool)

(assert (=> b!5851482 (=> (not res!2463509) (not e!3588348))))

(assert (=> b!5851482 (= res!2463509 (isEmpty!35787 (tail!11473 (tail!11473 s!2326))))))

(declare-fun b!5851483 () Bool)

(declare-fun e!3588344 () Bool)

(assert (=> b!5851483 (= e!3588344 e!3588347)))

(declare-fun res!2463510 () Bool)

(assert (=> b!5851483 (=> res!2463510 e!3588347)))

(assert (=> b!5851483 (= res!2463510 call!457984)))

(declare-fun b!5851484 () Bool)

(declare-fun e!3588345 () Bool)

(assert (=> b!5851484 (= e!3588345 (matchR!8100 (derivativeStep!4655 (derivativeStep!4655 (regTwo!32347 r!7292) (head!12388 s!2326)) (head!12388 (tail!11473 s!2326))) (tail!11473 (tail!11473 s!2326))))))

(declare-fun d!1837810 () Bool)

(assert (=> d!1837810 e!3588346))

(declare-fun c!1037307 () Bool)

(assert (=> d!1837810 (= c!1037307 ((_ is EmptyExpr!15917) (derivativeStep!4655 (regTwo!32347 r!7292) (head!12388 s!2326))))))

(assert (=> d!1837810 (= lt!2304407 e!3588345)))

(declare-fun c!1037306 () Bool)

(assert (=> d!1837810 (= c!1037306 (isEmpty!35787 (tail!11473 s!2326)))))

(assert (=> d!1837810 (validRegex!7653 (derivativeStep!4655 (regTwo!32347 r!7292) (head!12388 s!2326)))))

(assert (=> d!1837810 (= (matchR!8100 (derivativeStep!4655 (regTwo!32347 r!7292) (head!12388 s!2326)) (tail!11473 s!2326)) lt!2304407)))

(declare-fun b!5851485 () Bool)

(declare-fun res!2463513 () Bool)

(assert (=> b!5851485 (=> res!2463513 e!3588342)))

(assert (=> b!5851485 (= res!2463513 (not ((_ is ElementMatch!15917) (derivativeStep!4655 (regTwo!32347 r!7292) (head!12388 s!2326)))))))

(declare-fun e!3588343 () Bool)

(assert (=> b!5851485 (= e!3588343 e!3588342)))

(declare-fun b!5851486 () Bool)

(declare-fun res!2463516 () Bool)

(assert (=> b!5851486 (=> (not res!2463516) (not e!3588348))))

(assert (=> b!5851486 (= res!2463516 (not call!457984))))

(declare-fun bm!457979 () Bool)

(assert (=> bm!457979 (= call!457984 (isEmpty!35787 (tail!11473 s!2326)))))

(declare-fun b!5851487 () Bool)

(assert (=> b!5851487 (= e!3588345 (nullable!5917 (derivativeStep!4655 (regTwo!32347 r!7292) (head!12388 s!2326))))))

(declare-fun b!5851488 () Bool)

(assert (=> b!5851488 (= e!3588346 e!3588343)))

(declare-fun c!1037305 () Bool)

(assert (=> b!5851488 (= c!1037305 ((_ is EmptyLang!15917) (derivativeStep!4655 (regTwo!32347 r!7292) (head!12388 s!2326))))))

(declare-fun b!5851489 () Bool)

(assert (=> b!5851489 (= e!3588347 (not (= (head!12388 (tail!11473 s!2326)) (c!1036885 (derivativeStep!4655 (regTwo!32347 r!7292) (head!12388 s!2326))))))))

(declare-fun b!5851490 () Bool)

(assert (=> b!5851490 (= e!3588342 e!3588344)))

(declare-fun res!2463511 () Bool)

(assert (=> b!5851490 (=> (not res!2463511) (not e!3588344))))

(assert (=> b!5851490 (= res!2463511 (not lt!2304407))))

(declare-fun b!5851491 () Bool)

(assert (=> b!5851491 (= e!3588343 (not lt!2304407))))

(declare-fun b!5851492 () Bool)

(assert (=> b!5851492 (= e!3588348 (= (head!12388 (tail!11473 s!2326)) (c!1036885 (derivativeStep!4655 (regTwo!32347 r!7292) (head!12388 s!2326)))))))

(assert (= (and d!1837810 c!1037306) b!5851487))

(assert (= (and d!1837810 (not c!1037306)) b!5851484))

(assert (= (and d!1837810 c!1037307) b!5851479))

(assert (= (and d!1837810 (not c!1037307)) b!5851488))

(assert (= (and b!5851488 c!1037305) b!5851491))

(assert (= (and b!5851488 (not c!1037305)) b!5851485))

(assert (= (and b!5851485 (not res!2463513)) b!5851481))

(assert (= (and b!5851481 res!2463514) b!5851486))

(assert (= (and b!5851486 res!2463516) b!5851482))

(assert (= (and b!5851482 res!2463509) b!5851492))

(assert (= (and b!5851481 (not res!2463515)) b!5851490))

(assert (= (and b!5851490 res!2463511) b!5851483))

(assert (= (and b!5851483 (not res!2463510)) b!5851480))

(assert (= (and b!5851480 (not res!2463512)) b!5851489))

(assert (= (or b!5851479 b!5851483 b!5851486) bm!457979))

(assert (=> d!1837810 m!6770514))

(assert (=> d!1837810 m!6770516))

(assert (=> d!1837810 m!6770520))

(declare-fun m!6771288 () Bool)

(assert (=> d!1837810 m!6771288))

(assert (=> b!5851482 m!6770514))

(assert (=> b!5851482 m!6771242))

(assert (=> b!5851482 m!6771242))

(assert (=> b!5851482 m!6771244))

(assert (=> b!5851480 m!6770514))

(assert (=> b!5851480 m!6771242))

(assert (=> b!5851480 m!6771242))

(assert (=> b!5851480 m!6771244))

(assert (=> b!5851484 m!6770514))

(assert (=> b!5851484 m!6771246))

(assert (=> b!5851484 m!6770520))

(assert (=> b!5851484 m!6771246))

(declare-fun m!6771290 () Bool)

(assert (=> b!5851484 m!6771290))

(assert (=> b!5851484 m!6770514))

(assert (=> b!5851484 m!6771242))

(assert (=> b!5851484 m!6771290))

(assert (=> b!5851484 m!6771242))

(declare-fun m!6771292 () Bool)

(assert (=> b!5851484 m!6771292))

(assert (=> b!5851487 m!6770520))

(declare-fun m!6771294 () Bool)

(assert (=> b!5851487 m!6771294))

(assert (=> b!5851489 m!6770514))

(assert (=> b!5851489 m!6771246))

(assert (=> bm!457979 m!6770514))

(assert (=> bm!457979 m!6770516))

(assert (=> b!5851492 m!6770514))

(assert (=> b!5851492 m!6771246))

(assert (=> b!5850462 d!1837810))

(declare-fun b!5851493 () Bool)

(declare-fun e!3588351 () Regex!15917)

(declare-fun call!457988 () Regex!15917)

(assert (=> b!5851493 (= e!3588351 (Concat!24762 call!457988 (regTwo!32347 r!7292)))))

(declare-fun b!5851494 () Bool)

(declare-fun e!3588353 () Regex!15917)

(declare-fun call!457985 () Regex!15917)

(assert (=> b!5851494 (= e!3588353 (Union!15917 (Concat!24762 call!457985 (regTwo!32346 (regTwo!32347 r!7292))) EmptyLang!15917))))

(declare-fun c!1037309 () Bool)

(declare-fun c!1037311 () Bool)

(declare-fun c!1037308 () Bool)

(declare-fun bm!457980 () Bool)

(declare-fun call!457987 () Regex!15917)

(assert (=> bm!457980 (= call!457987 (derivativeStep!4655 (ite c!1037308 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037311 (reg!16246 (regTwo!32347 r!7292)) (ite c!1037309 (regTwo!32346 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292))))) (head!12388 s!2326)))))

(declare-fun bm!457981 () Bool)

(assert (=> bm!457981 (= call!457988 call!457987)))

(declare-fun b!5851495 () Bool)

(assert (=> b!5851495 (= c!1037309 (nullable!5917 (regOne!32346 (regTwo!32347 r!7292))))))

(assert (=> b!5851495 (= e!3588351 e!3588353)))

(declare-fun bm!457982 () Bool)

(assert (=> bm!457982 (= call!457985 call!457988)))

(declare-fun d!1837812 () Bool)

(declare-fun lt!2304408 () Regex!15917)

(assert (=> d!1837812 (validRegex!7653 lt!2304408)))

(declare-fun e!3588352 () Regex!15917)

(assert (=> d!1837812 (= lt!2304408 e!3588352)))

(declare-fun c!1037312 () Bool)

(assert (=> d!1837812 (= c!1037312 (or ((_ is EmptyExpr!15917) (regTwo!32347 r!7292)) ((_ is EmptyLang!15917) (regTwo!32347 r!7292))))))

(assert (=> d!1837812 (validRegex!7653 (regTwo!32347 r!7292))))

(assert (=> d!1837812 (= (derivativeStep!4655 (regTwo!32347 r!7292) (head!12388 s!2326)) lt!2304408)))

(declare-fun b!5851496 () Bool)

(assert (=> b!5851496 (= e!3588352 EmptyLang!15917)))

(declare-fun b!5851497 () Bool)

(declare-fun e!3588349 () Regex!15917)

(assert (=> b!5851497 (= e!3588349 e!3588351)))

(assert (=> b!5851497 (= c!1037311 ((_ is Star!15917) (regTwo!32347 r!7292)))))

(declare-fun b!5851498 () Bool)

(declare-fun e!3588350 () Regex!15917)

(assert (=> b!5851498 (= e!3588350 (ite (= (head!12388 s!2326) (c!1036885 (regTwo!32347 r!7292))) EmptyExpr!15917 EmptyLang!15917))))

(declare-fun call!457986 () Regex!15917)

(declare-fun b!5851499 () Bool)

(assert (=> b!5851499 (= e!3588353 (Union!15917 (Concat!24762 call!457986 (regTwo!32346 (regTwo!32347 r!7292))) call!457985))))

(declare-fun b!5851500 () Bool)

(assert (=> b!5851500 (= e!3588349 (Union!15917 call!457986 call!457987))))

(declare-fun b!5851501 () Bool)

(assert (=> b!5851501 (= c!1037308 ((_ is Union!15917) (regTwo!32347 r!7292)))))

(assert (=> b!5851501 (= e!3588350 e!3588349)))

(declare-fun b!5851502 () Bool)

(assert (=> b!5851502 (= e!3588352 e!3588350)))

(declare-fun c!1037310 () Bool)

(assert (=> b!5851502 (= c!1037310 ((_ is ElementMatch!15917) (regTwo!32347 r!7292)))))

(declare-fun bm!457983 () Bool)

(assert (=> bm!457983 (= call!457986 (derivativeStep!4655 (ite c!1037308 (regOne!32347 (regTwo!32347 r!7292)) (regOne!32346 (regTwo!32347 r!7292))) (head!12388 s!2326)))))

(assert (= (and d!1837812 c!1037312) b!5851496))

(assert (= (and d!1837812 (not c!1037312)) b!5851502))

(assert (= (and b!5851502 c!1037310) b!5851498))

(assert (= (and b!5851502 (not c!1037310)) b!5851501))

(assert (= (and b!5851501 c!1037308) b!5851500))

(assert (= (and b!5851501 (not c!1037308)) b!5851497))

(assert (= (and b!5851497 c!1037311) b!5851493))

(assert (= (and b!5851497 (not c!1037311)) b!5851495))

(assert (= (and b!5851495 c!1037309) b!5851499))

(assert (= (and b!5851495 (not c!1037309)) b!5851494))

(assert (= (or b!5851499 b!5851494) bm!457982))

(assert (= (or b!5851493 bm!457982) bm!457981))

(assert (= (or b!5851500 bm!457981) bm!457980))

(assert (= (or b!5851500 b!5851499) bm!457983))

(assert (=> bm!457980 m!6770518))

(declare-fun m!6771296 () Bool)

(assert (=> bm!457980 m!6771296))

(assert (=> b!5851495 m!6770568))

(declare-fun m!6771298 () Bool)

(assert (=> d!1837812 m!6771298))

(assert (=> d!1837812 m!6770512))

(assert (=> bm!457983 m!6770518))

(declare-fun m!6771300 () Bool)

(assert (=> bm!457983 m!6771300))

(assert (=> b!5850462 d!1837812))

(assert (=> b!5850462 d!1837714))

(assert (=> b!5850462 d!1837724))

(declare-fun bs!1378823 () Bool)

(declare-fun d!1837814 () Bool)

(assert (= bs!1378823 (and d!1837814 d!1837706)))

(declare-fun lambda!319947 () Int)

(assert (=> bs!1378823 (= lambda!319947 lambda!319931)))

(declare-fun bs!1378824 () Bool)

(assert (= bs!1378824 (and d!1837814 d!1837448)))

(assert (=> bs!1378824 (= lambda!319947 lambda!319893)))

(declare-fun bs!1378825 () Bool)

(assert (= bs!1378825 (and d!1837814 d!1837466)))

(assert (=> bs!1378825 (= lambda!319947 lambda!319897)))

(declare-fun bs!1378826 () Bool)

(assert (= bs!1378826 (and d!1837814 d!1837488)))

(assert (=> bs!1378826 (= lambda!319947 lambda!319906)))

(declare-fun bs!1378827 () Bool)

(assert (= bs!1378827 (and d!1837814 d!1837472)))

(assert (=> bs!1378827 (= lambda!319947 lambda!319898)))

(declare-fun bs!1378828 () Bool)

(assert (= bs!1378828 (and d!1837814 d!1837704)))

(assert (=> bs!1378828 (= lambda!319947 lambda!319930)))

(declare-fun bs!1378829 () Bool)

(assert (= bs!1378829 (and d!1837814 d!1837446)))

(assert (=> bs!1378829 (= lambda!319947 lambda!319890)))

(declare-fun bs!1378830 () Bool)

(assert (= bs!1378830 (and d!1837814 d!1837454)))

(assert (=> bs!1378830 (= lambda!319947 lambda!319896)))

(assert (=> d!1837814 (= (inv!83039 (h!70375 (t!377412 zl!343))) (forall!15004 (exprs!5801 (h!70375 (t!377412 zl!343))) lambda!319947))))

(declare-fun bs!1378831 () Bool)

(assert (= bs!1378831 d!1837814))

(declare-fun m!6771302 () Bool)

(assert (=> bs!1378831 m!6771302))

(assert (=> b!5850715 d!1837814))

(assert (=> d!1837486 d!1837482))

(declare-fun d!1837816 () Bool)

(assert (=> d!1837816 (= (flatMap!1448 z!1189 lambda!319852) (dynLambda!24988 lambda!319852 (h!70375 zl!343)))))

(assert (=> d!1837816 true))

(declare-fun _$13!2553 () Unit!157105)

(assert (=> d!1837816 (= (choose!44372 z!1189 (h!70375 zl!343) lambda!319852) _$13!2553)))

(declare-fun b_lambda!220263 () Bool)

(assert (=> (not b_lambda!220263) (not d!1837816)))

(declare-fun bs!1378832 () Bool)

(assert (= bs!1378832 d!1837816))

(assert (=> bs!1378832 m!6770276))

(assert (=> bs!1378832 m!6770656))

(assert (=> d!1837486 d!1837816))

(declare-fun d!1837818 () Bool)

(assert (=> d!1837818 (= (isEmpty!35788 (unfocusZipperList!1338 zl!343)) ((_ is Nil!63926) (unfocusZipperList!1338 zl!343)))))

(assert (=> b!5850522 d!1837818))

(declare-fun d!1837820 () Bool)

(assert (=> d!1837820 (= (isEmpty!35788 (tail!11474 (unfocusZipperList!1338 zl!343))) ((_ is Nil!63926) (tail!11474 (unfocusZipperList!1338 zl!343))))))

(assert (=> b!5850518 d!1837820))

(declare-fun d!1837822 () Bool)

(assert (=> d!1837822 (= (tail!11474 (unfocusZipperList!1338 zl!343)) (t!377411 (unfocusZipperList!1338 zl!343)))))

(assert (=> b!5850518 d!1837822))

(assert (=> d!1837438 d!1837708))

(assert (=> d!1837438 d!1837770))

(assert (=> b!5850586 d!1837456))

(assert (=> d!1837476 d!1837708))

(assert (=> d!1837476 d!1837494))

(assert (=> b!5850623 d!1837420))

(assert (=> b!5850485 d!1837722))

(assert (=> b!5850485 d!1837724))

(declare-fun d!1837824 () Bool)

(assert (=> d!1837824 (= (isEmpty!35788 (t!377411 (exprs!5801 (h!70375 zl!343)))) ((_ is Nil!63926) (t!377411 (exprs!5801 (h!70375 zl!343)))))))

(assert (=> b!5850674 d!1837824))

(declare-fun bs!1378833 () Bool)

(declare-fun d!1837826 () Bool)

(assert (= bs!1378833 (and d!1837826 d!1837706)))

(declare-fun lambda!319948 () Int)

(assert (=> bs!1378833 (= lambda!319948 lambda!319931)))

(declare-fun bs!1378834 () Bool)

(assert (= bs!1378834 (and d!1837826 d!1837448)))

(assert (=> bs!1378834 (= lambda!319948 lambda!319893)))

(declare-fun bs!1378835 () Bool)

(assert (= bs!1378835 (and d!1837826 d!1837466)))

(assert (=> bs!1378835 (= lambda!319948 lambda!319897)))

(declare-fun bs!1378836 () Bool)

(assert (= bs!1378836 (and d!1837826 d!1837488)))

(assert (=> bs!1378836 (= lambda!319948 lambda!319906)))

(declare-fun bs!1378837 () Bool)

(assert (= bs!1378837 (and d!1837826 d!1837472)))

(assert (=> bs!1378837 (= lambda!319948 lambda!319898)))

(declare-fun bs!1378838 () Bool)

(assert (= bs!1378838 (and d!1837826 d!1837704)))

(assert (=> bs!1378838 (= lambda!319948 lambda!319930)))

(declare-fun bs!1378839 () Bool)

(assert (= bs!1378839 (and d!1837826 d!1837814)))

(assert (=> bs!1378839 (= lambda!319948 lambda!319947)))

(declare-fun bs!1378840 () Bool)

(assert (= bs!1378840 (and d!1837826 d!1837446)))

(assert (=> bs!1378840 (= lambda!319948 lambda!319890)))

(declare-fun bs!1378841 () Bool)

(assert (= bs!1378841 (and d!1837826 d!1837454)))

(assert (=> bs!1378841 (= lambda!319948 lambda!319896)))

(declare-fun b!5851503 () Bool)

(declare-fun e!3588358 () Regex!15917)

(declare-fun e!3588355 () Regex!15917)

(assert (=> b!5851503 (= e!3588358 e!3588355)))

(declare-fun c!1037315 () Bool)

(assert (=> b!5851503 (= c!1037315 ((_ is Cons!63926) (t!377411 (exprs!5801 (h!70375 zl!343)))))))

(declare-fun b!5851504 () Bool)

(assert (=> b!5851504 (= e!3588355 (Concat!24762 (h!70374 (t!377411 (exprs!5801 (h!70375 zl!343)))) (generalisedConcat!1514 (t!377411 (t!377411 (exprs!5801 (h!70375 zl!343)))))))))

(declare-fun b!5851505 () Bool)

(assert (=> b!5851505 (= e!3588355 EmptyExpr!15917)))

(declare-fun b!5851506 () Bool)

(declare-fun e!3588356 () Bool)

(declare-fun lt!2304409 () Regex!15917)

(assert (=> b!5851506 (= e!3588356 (= lt!2304409 (head!12389 (t!377411 (exprs!5801 (h!70375 zl!343))))))))

(declare-fun e!3588357 () Bool)

(assert (=> d!1837826 e!3588357))

(declare-fun res!2463518 () Bool)

(assert (=> d!1837826 (=> (not res!2463518) (not e!3588357))))

(assert (=> d!1837826 (= res!2463518 (validRegex!7653 lt!2304409))))

(assert (=> d!1837826 (= lt!2304409 e!3588358)))

(declare-fun c!1037316 () Bool)

(declare-fun e!3588359 () Bool)

(assert (=> d!1837826 (= c!1037316 e!3588359)))

(declare-fun res!2463517 () Bool)

(assert (=> d!1837826 (=> (not res!2463517) (not e!3588359))))

(assert (=> d!1837826 (= res!2463517 ((_ is Cons!63926) (t!377411 (exprs!5801 (h!70375 zl!343)))))))

(assert (=> d!1837826 (forall!15004 (t!377411 (exprs!5801 (h!70375 zl!343))) lambda!319948)))

(assert (=> d!1837826 (= (generalisedConcat!1514 (t!377411 (exprs!5801 (h!70375 zl!343)))) lt!2304409)))

(declare-fun b!5851507 () Bool)

(declare-fun e!3588354 () Bool)

(assert (=> b!5851507 (= e!3588354 e!3588356)))

(declare-fun c!1037314 () Bool)

(assert (=> b!5851507 (= c!1037314 (isEmpty!35788 (tail!11474 (t!377411 (exprs!5801 (h!70375 zl!343))))))))

(declare-fun b!5851508 () Bool)

(assert (=> b!5851508 (= e!3588359 (isEmpty!35788 (t!377411 (t!377411 (exprs!5801 (h!70375 zl!343))))))))

(declare-fun b!5851509 () Bool)

(assert (=> b!5851509 (= e!3588357 e!3588354)))

(declare-fun c!1037313 () Bool)

(assert (=> b!5851509 (= c!1037313 (isEmpty!35788 (t!377411 (exprs!5801 (h!70375 zl!343)))))))

(declare-fun b!5851510 () Bool)

(assert (=> b!5851510 (= e!3588358 (h!70374 (t!377411 (exprs!5801 (h!70375 zl!343)))))))

(declare-fun b!5851511 () Bool)

(assert (=> b!5851511 (= e!3588356 (isConcat!875 lt!2304409))))

(declare-fun b!5851512 () Bool)

(assert (=> b!5851512 (= e!3588354 (isEmptyExpr!1352 lt!2304409))))

(assert (= (and d!1837826 res!2463517) b!5851508))

(assert (= (and d!1837826 c!1037316) b!5851510))

(assert (= (and d!1837826 (not c!1037316)) b!5851503))

(assert (= (and b!5851503 c!1037315) b!5851504))

(assert (= (and b!5851503 (not c!1037315)) b!5851505))

(assert (= (and d!1837826 res!2463518) b!5851509))

(assert (= (and b!5851509 c!1037313) b!5851512))

(assert (= (and b!5851509 (not c!1037313)) b!5851507))

(assert (= (and b!5851507 c!1037314) b!5851506))

(assert (= (and b!5851507 (not c!1037314)) b!5851511))

(declare-fun m!6771304 () Bool)

(assert (=> b!5851512 m!6771304))

(declare-fun m!6771306 () Bool)

(assert (=> b!5851508 m!6771306))

(declare-fun m!6771308 () Bool)

(assert (=> b!5851506 m!6771308))

(assert (=> b!5851509 m!6770664))

(declare-fun m!6771310 () Bool)

(assert (=> b!5851504 m!6771310))

(declare-fun m!6771312 () Bool)

(assert (=> b!5851511 m!6771312))

(declare-fun m!6771314 () Bool)

(assert (=> b!5851507 m!6771314))

(assert (=> b!5851507 m!6771314))

(declare-fun m!6771316 () Bool)

(assert (=> b!5851507 m!6771316))

(declare-fun m!6771318 () Bool)

(assert (=> d!1837826 m!6771318))

(declare-fun m!6771320 () Bool)

(assert (=> d!1837826 m!6771320))

(assert (=> b!5850670 d!1837826))

(declare-fun b!5851513 () Bool)

(declare-fun e!3588366 () Bool)

(declare-fun e!3588363 () Bool)

(assert (=> b!5851513 (= e!3588366 e!3588363)))

(declare-fun c!1037317 () Bool)

(assert (=> b!5851513 (= c!1037317 ((_ is Star!15917) (ite c!1037103 (regTwo!32347 r!7292) (regTwo!32346 r!7292))))))

(declare-fun b!5851514 () Bool)

(declare-fun res!2463522 () Bool)

(declare-fun e!3588361 () Bool)

(assert (=> b!5851514 (=> res!2463522 e!3588361)))

(assert (=> b!5851514 (= res!2463522 (not ((_ is Concat!24762) (ite c!1037103 (regTwo!32347 r!7292) (regTwo!32346 r!7292)))))))

(declare-fun e!3588360 () Bool)

(assert (=> b!5851514 (= e!3588360 e!3588361)))

(declare-fun call!457990 () Bool)

(declare-fun bm!457984 () Bool)

(declare-fun c!1037318 () Bool)

(assert (=> bm!457984 (= call!457990 (validRegex!7653 (ite c!1037318 (regTwo!32347 (ite c!1037103 (regTwo!32347 r!7292) (regTwo!32346 r!7292))) (regTwo!32346 (ite c!1037103 (regTwo!32347 r!7292) (regTwo!32346 r!7292))))))))

(declare-fun b!5851515 () Bool)

(declare-fun e!3588365 () Bool)

(assert (=> b!5851515 (= e!3588363 e!3588365)))

(declare-fun res!2463521 () Bool)

(assert (=> b!5851515 (= res!2463521 (not (nullable!5917 (reg!16246 (ite c!1037103 (regTwo!32347 r!7292) (regTwo!32346 r!7292))))))))

(assert (=> b!5851515 (=> (not res!2463521) (not e!3588365))))

(declare-fun b!5851516 () Bool)

(declare-fun res!2463523 () Bool)

(declare-fun e!3588362 () Bool)

(assert (=> b!5851516 (=> (not res!2463523) (not e!3588362))))

(declare-fun call!457989 () Bool)

(assert (=> b!5851516 (= res!2463523 call!457989)))

(assert (=> b!5851516 (= e!3588360 e!3588362)))

(declare-fun d!1837828 () Bool)

(declare-fun res!2463520 () Bool)

(assert (=> d!1837828 (=> res!2463520 e!3588366)))

(assert (=> d!1837828 (= res!2463520 ((_ is ElementMatch!15917) (ite c!1037103 (regTwo!32347 r!7292) (regTwo!32346 r!7292))))))

(assert (=> d!1837828 (= (validRegex!7653 (ite c!1037103 (regTwo!32347 r!7292) (regTwo!32346 r!7292))) e!3588366)))

(declare-fun bm!457985 () Bool)

(declare-fun call!457991 () Bool)

(assert (=> bm!457985 (= call!457989 call!457991)))

(declare-fun b!5851517 () Bool)

(assert (=> b!5851517 (= e!3588365 call!457991)))

(declare-fun b!5851518 () Bool)

(assert (=> b!5851518 (= e!3588362 call!457990)))

(declare-fun b!5851519 () Bool)

(declare-fun e!3588364 () Bool)

(assert (=> b!5851519 (= e!3588361 e!3588364)))

(declare-fun res!2463519 () Bool)

(assert (=> b!5851519 (=> (not res!2463519) (not e!3588364))))

(assert (=> b!5851519 (= res!2463519 call!457989)))

(declare-fun bm!457986 () Bool)

(assert (=> bm!457986 (= call!457991 (validRegex!7653 (ite c!1037317 (reg!16246 (ite c!1037103 (regTwo!32347 r!7292) (regTwo!32346 r!7292))) (ite c!1037318 (regOne!32347 (ite c!1037103 (regTwo!32347 r!7292) (regTwo!32346 r!7292))) (regOne!32346 (ite c!1037103 (regTwo!32347 r!7292) (regTwo!32346 r!7292)))))))))

(declare-fun b!5851520 () Bool)

(assert (=> b!5851520 (= e!3588363 e!3588360)))

(assert (=> b!5851520 (= c!1037318 ((_ is Union!15917) (ite c!1037103 (regTwo!32347 r!7292) (regTwo!32346 r!7292))))))

(declare-fun b!5851521 () Bool)

(assert (=> b!5851521 (= e!3588364 call!457990)))

(assert (= (and d!1837828 (not res!2463520)) b!5851513))

(assert (= (and b!5851513 c!1037317) b!5851515))

(assert (= (and b!5851513 (not c!1037317)) b!5851520))

(assert (= (and b!5851515 res!2463521) b!5851517))

(assert (= (and b!5851520 c!1037318) b!5851516))

(assert (= (and b!5851520 (not c!1037318)) b!5851514))

(assert (= (and b!5851516 res!2463523) b!5851518))

(assert (= (and b!5851514 (not res!2463522)) b!5851519))

(assert (= (and b!5851519 res!2463519) b!5851521))

(assert (= (or b!5851518 b!5851521) bm!457984))

(assert (= (or b!5851516 b!5851519) bm!457985))

(assert (= (or b!5851517 bm!457985) bm!457986))

(declare-fun m!6771322 () Bool)

(assert (=> bm!457984 m!6771322))

(declare-fun m!6771324 () Bool)

(assert (=> b!5851515 m!6771324))

(declare-fun m!6771326 () Bool)

(assert (=> bm!457986 m!6771326))

(assert (=> bm!457811 d!1837828))

(declare-fun b!5851522 () Bool)

(declare-fun e!3588371 () Bool)

(declare-fun lt!2304410 () Bool)

(declare-fun call!457992 () Bool)

(assert (=> b!5851522 (= e!3588371 (= lt!2304410 call!457992))))

(declare-fun b!5851523 () Bool)

(declare-fun res!2463527 () Bool)

(declare-fun e!3588372 () Bool)

(assert (=> b!5851523 (=> res!2463527 e!3588372)))

(assert (=> b!5851523 (= res!2463527 (not (isEmpty!35787 (tail!11473 (tail!11473 s!2326)))))))

(declare-fun b!5851524 () Bool)

(declare-fun res!2463530 () Bool)

(declare-fun e!3588367 () Bool)

(assert (=> b!5851524 (=> res!2463530 e!3588367)))

(declare-fun e!3588373 () Bool)

(assert (=> b!5851524 (= res!2463530 e!3588373)))

(declare-fun res!2463529 () Bool)

(assert (=> b!5851524 (=> (not res!2463529) (not e!3588373))))

(assert (=> b!5851524 (= res!2463529 lt!2304410)))

(declare-fun b!5851525 () Bool)

(declare-fun res!2463524 () Bool)

(assert (=> b!5851525 (=> (not res!2463524) (not e!3588373))))

(assert (=> b!5851525 (= res!2463524 (isEmpty!35787 (tail!11473 (tail!11473 s!2326))))))

(declare-fun b!5851526 () Bool)

(declare-fun e!3588369 () Bool)

(assert (=> b!5851526 (= e!3588369 e!3588372)))

(declare-fun res!2463525 () Bool)

(assert (=> b!5851526 (=> res!2463525 e!3588372)))

(assert (=> b!5851526 (= res!2463525 call!457992)))

(declare-fun b!5851527 () Bool)

(declare-fun e!3588370 () Bool)

(assert (=> b!5851527 (= e!3588370 (matchR!8100 (derivativeStep!4655 (derivativeStep!4655 r!7292 (head!12388 s!2326)) (head!12388 (tail!11473 s!2326))) (tail!11473 (tail!11473 s!2326))))))

(declare-fun d!1837830 () Bool)

(assert (=> d!1837830 e!3588371))

(declare-fun c!1037321 () Bool)

(assert (=> d!1837830 (= c!1037321 ((_ is EmptyExpr!15917) (derivativeStep!4655 r!7292 (head!12388 s!2326))))))

(assert (=> d!1837830 (= lt!2304410 e!3588370)))

(declare-fun c!1037320 () Bool)

(assert (=> d!1837830 (= c!1037320 (isEmpty!35787 (tail!11473 s!2326)))))

(assert (=> d!1837830 (validRegex!7653 (derivativeStep!4655 r!7292 (head!12388 s!2326)))))

(assert (=> d!1837830 (= (matchR!8100 (derivativeStep!4655 r!7292 (head!12388 s!2326)) (tail!11473 s!2326)) lt!2304410)))

(declare-fun b!5851528 () Bool)

(declare-fun res!2463528 () Bool)

(assert (=> b!5851528 (=> res!2463528 e!3588367)))

(assert (=> b!5851528 (= res!2463528 (not ((_ is ElementMatch!15917) (derivativeStep!4655 r!7292 (head!12388 s!2326)))))))

(declare-fun e!3588368 () Bool)

(assert (=> b!5851528 (= e!3588368 e!3588367)))

(declare-fun b!5851529 () Bool)

(declare-fun res!2463531 () Bool)

(assert (=> b!5851529 (=> (not res!2463531) (not e!3588373))))

(assert (=> b!5851529 (= res!2463531 (not call!457992))))

(declare-fun bm!457987 () Bool)

(assert (=> bm!457987 (= call!457992 (isEmpty!35787 (tail!11473 s!2326)))))

(declare-fun b!5851530 () Bool)

(assert (=> b!5851530 (= e!3588370 (nullable!5917 (derivativeStep!4655 r!7292 (head!12388 s!2326))))))

(declare-fun b!5851531 () Bool)

(assert (=> b!5851531 (= e!3588371 e!3588368)))

(declare-fun c!1037319 () Bool)

(assert (=> b!5851531 (= c!1037319 ((_ is EmptyLang!15917) (derivativeStep!4655 r!7292 (head!12388 s!2326))))))

(declare-fun b!5851532 () Bool)

(assert (=> b!5851532 (= e!3588372 (not (= (head!12388 (tail!11473 s!2326)) (c!1036885 (derivativeStep!4655 r!7292 (head!12388 s!2326))))))))

(declare-fun b!5851533 () Bool)

(assert (=> b!5851533 (= e!3588367 e!3588369)))

(declare-fun res!2463526 () Bool)

(assert (=> b!5851533 (=> (not res!2463526) (not e!3588369))))

(assert (=> b!5851533 (= res!2463526 (not lt!2304410))))

(declare-fun b!5851534 () Bool)

(assert (=> b!5851534 (= e!3588368 (not lt!2304410))))

(declare-fun b!5851535 () Bool)

(assert (=> b!5851535 (= e!3588373 (= (head!12388 (tail!11473 s!2326)) (c!1036885 (derivativeStep!4655 r!7292 (head!12388 s!2326)))))))

(assert (= (and d!1837830 c!1037320) b!5851530))

(assert (= (and d!1837830 (not c!1037320)) b!5851527))

(assert (= (and d!1837830 c!1037321) b!5851522))

(assert (= (and d!1837830 (not c!1037321)) b!5851531))

(assert (= (and b!5851531 c!1037319) b!5851534))

(assert (= (and b!5851531 (not c!1037319)) b!5851528))

(assert (= (and b!5851528 (not res!2463528)) b!5851524))

(assert (= (and b!5851524 res!2463529) b!5851529))

(assert (= (and b!5851529 res!2463531) b!5851525))

(assert (= (and b!5851525 res!2463524) b!5851535))

(assert (= (and b!5851524 (not res!2463530)) b!5851533))

(assert (= (and b!5851533 res!2463526) b!5851526))

(assert (= (and b!5851526 (not res!2463525)) b!5851523))

(assert (= (and b!5851523 (not res!2463527)) b!5851532))

(assert (= (or b!5851522 b!5851526 b!5851529) bm!457987))

(assert (=> d!1837830 m!6770514))

(assert (=> d!1837830 m!6770516))

(assert (=> d!1837830 m!6770638))

(declare-fun m!6771328 () Bool)

(assert (=> d!1837830 m!6771328))

(assert (=> b!5851525 m!6770514))

(assert (=> b!5851525 m!6771242))

(assert (=> b!5851525 m!6771242))

(assert (=> b!5851525 m!6771244))

(assert (=> b!5851523 m!6770514))

(assert (=> b!5851523 m!6771242))

(assert (=> b!5851523 m!6771242))

(assert (=> b!5851523 m!6771244))

(assert (=> b!5851527 m!6770514))

(assert (=> b!5851527 m!6771246))

(assert (=> b!5851527 m!6770638))

(assert (=> b!5851527 m!6771246))

(declare-fun m!6771330 () Bool)

(assert (=> b!5851527 m!6771330))

(assert (=> b!5851527 m!6770514))

(assert (=> b!5851527 m!6771242))

(assert (=> b!5851527 m!6771330))

(assert (=> b!5851527 m!6771242))

(declare-fun m!6771332 () Bool)

(assert (=> b!5851527 m!6771332))

(assert (=> b!5851530 m!6770638))

(declare-fun m!6771334 () Bool)

(assert (=> b!5851530 m!6771334))

(assert (=> b!5851532 m!6770514))

(assert (=> b!5851532 m!6771246))

(assert (=> bm!457987 m!6770514))

(assert (=> bm!457987 m!6770516))

(assert (=> b!5851535 m!6770514))

(assert (=> b!5851535 m!6771246))

(assert (=> b!5850633 d!1837830))

(declare-fun b!5851536 () Bool)

(declare-fun e!3588376 () Regex!15917)

(declare-fun call!457996 () Regex!15917)

(assert (=> b!5851536 (= e!3588376 (Concat!24762 call!457996 r!7292))))

(declare-fun b!5851537 () Bool)

(declare-fun e!3588378 () Regex!15917)

(declare-fun call!457993 () Regex!15917)

(assert (=> b!5851537 (= e!3588378 (Union!15917 (Concat!24762 call!457993 (regTwo!32346 r!7292)) EmptyLang!15917))))

(declare-fun c!1037323 () Bool)

(declare-fun c!1037322 () Bool)

(declare-fun bm!457988 () Bool)

(declare-fun c!1037325 () Bool)

(declare-fun call!457995 () Regex!15917)

(assert (=> bm!457988 (= call!457995 (derivativeStep!4655 (ite c!1037322 (regTwo!32347 r!7292) (ite c!1037325 (reg!16246 r!7292) (ite c!1037323 (regTwo!32346 r!7292) (regOne!32346 r!7292)))) (head!12388 s!2326)))))

(declare-fun bm!457989 () Bool)

(assert (=> bm!457989 (= call!457996 call!457995)))

(declare-fun b!5851538 () Bool)

(assert (=> b!5851538 (= c!1037323 (nullable!5917 (regOne!32346 r!7292)))))

(assert (=> b!5851538 (= e!3588376 e!3588378)))

(declare-fun bm!457990 () Bool)

(assert (=> bm!457990 (= call!457993 call!457996)))

(declare-fun d!1837832 () Bool)

(declare-fun lt!2304411 () Regex!15917)

(assert (=> d!1837832 (validRegex!7653 lt!2304411)))

(declare-fun e!3588377 () Regex!15917)

(assert (=> d!1837832 (= lt!2304411 e!3588377)))

(declare-fun c!1037326 () Bool)

(assert (=> d!1837832 (= c!1037326 (or ((_ is EmptyExpr!15917) r!7292) ((_ is EmptyLang!15917) r!7292)))))

(assert (=> d!1837832 (validRegex!7653 r!7292)))

(assert (=> d!1837832 (= (derivativeStep!4655 r!7292 (head!12388 s!2326)) lt!2304411)))

(declare-fun b!5851539 () Bool)

(assert (=> b!5851539 (= e!3588377 EmptyLang!15917)))

(declare-fun b!5851540 () Bool)

(declare-fun e!3588374 () Regex!15917)

(assert (=> b!5851540 (= e!3588374 e!3588376)))

(assert (=> b!5851540 (= c!1037325 ((_ is Star!15917) r!7292))))

(declare-fun b!5851541 () Bool)

(declare-fun e!3588375 () Regex!15917)

(assert (=> b!5851541 (= e!3588375 (ite (= (head!12388 s!2326) (c!1036885 r!7292)) EmptyExpr!15917 EmptyLang!15917))))

(declare-fun b!5851542 () Bool)

(declare-fun call!457994 () Regex!15917)

(assert (=> b!5851542 (= e!3588378 (Union!15917 (Concat!24762 call!457994 (regTwo!32346 r!7292)) call!457993))))

(declare-fun b!5851543 () Bool)

(assert (=> b!5851543 (= e!3588374 (Union!15917 call!457994 call!457995))))

(declare-fun b!5851544 () Bool)

(assert (=> b!5851544 (= c!1037322 ((_ is Union!15917) r!7292))))

(assert (=> b!5851544 (= e!3588375 e!3588374)))

(declare-fun b!5851545 () Bool)

(assert (=> b!5851545 (= e!3588377 e!3588375)))

(declare-fun c!1037324 () Bool)

(assert (=> b!5851545 (= c!1037324 ((_ is ElementMatch!15917) r!7292))))

(declare-fun bm!457991 () Bool)

(assert (=> bm!457991 (= call!457994 (derivativeStep!4655 (ite c!1037322 (regOne!32347 r!7292) (regOne!32346 r!7292)) (head!12388 s!2326)))))

(assert (= (and d!1837832 c!1037326) b!5851539))

(assert (= (and d!1837832 (not c!1037326)) b!5851545))

(assert (= (and b!5851545 c!1037324) b!5851541))

(assert (= (and b!5851545 (not c!1037324)) b!5851544))

(assert (= (and b!5851544 c!1037322) b!5851543))

(assert (= (and b!5851544 (not c!1037322)) b!5851540))

(assert (= (and b!5851540 c!1037325) b!5851536))

(assert (= (and b!5851540 (not c!1037325)) b!5851538))

(assert (= (and b!5851538 c!1037323) b!5851542))

(assert (= (and b!5851538 (not c!1037323)) b!5851537))

(assert (= (or b!5851542 b!5851537) bm!457990))

(assert (= (or b!5851536 bm!457990) bm!457989))

(assert (= (or b!5851543 bm!457989) bm!457988))

(assert (= (or b!5851543 b!5851542) bm!457991))

(assert (=> bm!457988 m!6770518))

(declare-fun m!6771336 () Bool)

(assert (=> bm!457988 m!6771336))

(assert (=> b!5851538 m!6770610))

(declare-fun m!6771338 () Bool)

(assert (=> d!1837832 m!6771338))

(assert (=> d!1837832 m!6770290))

(assert (=> bm!457991 m!6770518))

(declare-fun m!6771340 () Bool)

(assert (=> bm!457991 m!6771340))

(assert (=> b!5850633 d!1837832))

(assert (=> b!5850633 d!1837714))

(assert (=> b!5850633 d!1837724))

(declare-fun bm!457992 () Bool)

(declare-fun call!457997 () (InoxSet Context!10602))

(declare-fun call!458000 () (InoxSet Context!10602))

(assert (=> bm!457992 (= call!457997 call!458000)))

(declare-fun c!1037331 () Bool)

(declare-fun bm!457993 () Bool)

(declare-fun call!458002 () List!64050)

(declare-fun c!1037330 () Bool)

(assert (=> bm!457993 (= call!458002 ($colon$colon!1822 (exprs!5801 (ite (or c!1037048 c!1037052) lt!2304315 (Context!10603 call!457787))) (ite (or c!1037331 c!1037330) (regTwo!32346 (ite c!1037048 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037052 (regTwo!32346 (regTwo!32347 r!7292)) (ite c!1037051 (regOne!32346 (regTwo!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292)))))) (ite c!1037048 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037052 (regTwo!32346 (regTwo!32347 r!7292)) (ite c!1037051 (regOne!32346 (regTwo!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292))))))))))

(declare-fun b!5851547 () Bool)

(declare-fun e!3588384 () (InoxSet Context!10602))

(declare-fun e!3588379 () (InoxSet Context!10602))

(assert (=> b!5851547 (= e!3588384 e!3588379)))

(assert (=> b!5851547 (= c!1037330 ((_ is Concat!24762) (ite c!1037048 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037052 (regTwo!32346 (regTwo!32347 r!7292)) (ite c!1037051 (regOne!32346 (regTwo!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292)))))))))

(declare-fun c!1037327 () Bool)

(declare-fun call!457998 () (InoxSet Context!10602))

(declare-fun bm!457994 () Bool)

(assert (=> bm!457994 (= call!457998 (derivationStepZipperDown!1183 (ite c!1037327 (regOne!32347 (ite c!1037048 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037052 (regTwo!32346 (regTwo!32347 r!7292)) (ite c!1037051 (regOne!32346 (regTwo!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292)))))) (regOne!32346 (ite c!1037048 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037052 (regTwo!32346 (regTwo!32347 r!7292)) (ite c!1037051 (regOne!32346 (regTwo!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292))))))) (ite c!1037327 (ite (or c!1037048 c!1037052) lt!2304315 (Context!10603 call!457787)) (Context!10603 call!458002)) (h!70376 s!2326)))))

(declare-fun b!5851548 () Bool)

(assert (=> b!5851548 (= e!3588379 call!457997)))

(declare-fun bm!457995 () Bool)

(declare-fun call!457999 () List!64050)

(declare-fun call!458001 () (InoxSet Context!10602))

(assert (=> bm!457995 (= call!458001 (derivationStepZipperDown!1183 (ite c!1037327 (regTwo!32347 (ite c!1037048 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037052 (regTwo!32346 (regTwo!32347 r!7292)) (ite c!1037051 (regOne!32346 (regTwo!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292)))))) (ite c!1037331 (regTwo!32346 (ite c!1037048 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037052 (regTwo!32346 (regTwo!32347 r!7292)) (ite c!1037051 (regOne!32346 (regTwo!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292)))))) (ite c!1037330 (regOne!32346 (ite c!1037048 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037052 (regTwo!32346 (regTwo!32347 r!7292)) (ite c!1037051 (regOne!32346 (regTwo!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292)))))) (reg!16246 (ite c!1037048 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037052 (regTwo!32346 (regTwo!32347 r!7292)) (ite c!1037051 (regOne!32346 (regTwo!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292))))))))) (ite (or c!1037327 c!1037331) (ite (or c!1037048 c!1037052) lt!2304315 (Context!10603 call!457787)) (Context!10603 call!457999)) (h!70376 s!2326)))))

(declare-fun c!1037328 () Bool)

(declare-fun b!5851549 () Bool)

(assert (=> b!5851549 (= c!1037328 ((_ is Star!15917) (ite c!1037048 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037052 (regTwo!32346 (regTwo!32347 r!7292)) (ite c!1037051 (regOne!32346 (regTwo!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292)))))))))

(declare-fun e!3588382 () (InoxSet Context!10602))

(assert (=> b!5851549 (= e!3588379 e!3588382)))

(declare-fun b!5851550 () Bool)

(declare-fun e!3588383 () (InoxSet Context!10602))

(assert (=> b!5851550 (= e!3588383 (store ((as const (Array Context!10602 Bool)) false) (ite (or c!1037048 c!1037052) lt!2304315 (Context!10603 call!457787)) true))))

(declare-fun b!5851551 () Bool)

(declare-fun e!3588380 () (InoxSet Context!10602))

(assert (=> b!5851551 (= e!3588380 ((_ map or) call!457998 call!458001))))

(declare-fun b!5851552 () Bool)

(declare-fun e!3588381 () Bool)

(assert (=> b!5851552 (= c!1037331 e!3588381)))

(declare-fun res!2463532 () Bool)

(assert (=> b!5851552 (=> (not res!2463532) (not e!3588381))))

(assert (=> b!5851552 (= res!2463532 ((_ is Concat!24762) (ite c!1037048 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037052 (regTwo!32346 (regTwo!32347 r!7292)) (ite c!1037051 (regOne!32346 (regTwo!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292)))))))))

(assert (=> b!5851552 (= e!3588380 e!3588384)))

(declare-fun bm!457996 () Bool)

(assert (=> bm!457996 (= call!457999 call!458002)))

(declare-fun b!5851553 () Bool)

(assert (=> b!5851553 (= e!3588381 (nullable!5917 (regOne!32346 (ite c!1037048 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037052 (regTwo!32346 (regTwo!32347 r!7292)) (ite c!1037051 (regOne!32346 (regTwo!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292))))))))))

(declare-fun bm!457997 () Bool)

(assert (=> bm!457997 (= call!458000 call!458001)))

(declare-fun b!5851554 () Bool)

(assert (=> b!5851554 (= e!3588384 ((_ map or) call!457998 call!458000))))

(declare-fun b!5851546 () Bool)

(assert (=> b!5851546 (= e!3588382 ((as const (Array Context!10602 Bool)) false))))

(declare-fun c!1037329 () Bool)

(declare-fun d!1837834 () Bool)

(assert (=> d!1837834 (= c!1037329 (and ((_ is ElementMatch!15917) (ite c!1037048 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037052 (regTwo!32346 (regTwo!32347 r!7292)) (ite c!1037051 (regOne!32346 (regTwo!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292)))))) (= (c!1036885 (ite c!1037048 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037052 (regTwo!32346 (regTwo!32347 r!7292)) (ite c!1037051 (regOne!32346 (regTwo!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292)))))) (h!70376 s!2326))))))

(assert (=> d!1837834 (= (derivationStepZipperDown!1183 (ite c!1037048 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037052 (regTwo!32346 (regTwo!32347 r!7292)) (ite c!1037051 (regOne!32346 (regTwo!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292))))) (ite (or c!1037048 c!1037052) lt!2304315 (Context!10603 call!457787)) (h!70376 s!2326)) e!3588383)))

(declare-fun b!5851555 () Bool)

(assert (=> b!5851555 (= e!3588382 call!457997)))

(declare-fun b!5851556 () Bool)

(assert (=> b!5851556 (= e!3588383 e!3588380)))

(assert (=> b!5851556 (= c!1037327 ((_ is Union!15917) (ite c!1037048 (regTwo!32347 (regTwo!32347 r!7292)) (ite c!1037052 (regTwo!32346 (regTwo!32347 r!7292)) (ite c!1037051 (regOne!32346 (regTwo!32347 r!7292)) (reg!16246 (regTwo!32347 r!7292)))))))))

(assert (= (and d!1837834 c!1037329) b!5851550))

(assert (= (and d!1837834 (not c!1037329)) b!5851556))

(assert (= (and b!5851556 c!1037327) b!5851551))

(assert (= (and b!5851556 (not c!1037327)) b!5851552))

(assert (= (and b!5851552 res!2463532) b!5851553))

(assert (= (and b!5851552 c!1037331) b!5851554))

(assert (= (and b!5851552 (not c!1037331)) b!5851547))

(assert (= (and b!5851547 c!1037330) b!5851548))

(assert (= (and b!5851547 (not c!1037330)) b!5851549))

(assert (= (and b!5851549 c!1037328) b!5851555))

(assert (= (and b!5851549 (not c!1037328)) b!5851546))

(assert (= (or b!5851548 b!5851555) bm!457996))

(assert (= (or b!5851548 b!5851555) bm!457992))

(assert (= (or b!5851554 bm!457996) bm!457993))

(assert (= (or b!5851554 bm!457992) bm!457997))

(assert (= (or b!5851551 bm!457997) bm!457995))

(assert (= (or b!5851551 b!5851554) bm!457994))

(declare-fun m!6771342 () Bool)

(assert (=> bm!457994 m!6771342))

(declare-fun m!6771344 () Bool)

(assert (=> bm!457993 m!6771344))

(declare-fun m!6771346 () Bool)

(assert (=> b!5851553 m!6771346))

(declare-fun m!6771348 () Bool)

(assert (=> b!5851550 m!6771348))

(declare-fun m!6771350 () Bool)

(assert (=> bm!457995 m!6771350))

(assert (=> bm!457783 d!1837834))

(assert (=> bm!457767 d!1837708))

(declare-fun bm!457998 () Bool)

(declare-fun call!458003 () (InoxSet Context!10602))

(declare-fun call!458006 () (InoxSet Context!10602))

(assert (=> bm!457998 (= call!458003 call!458006)))

(declare-fun call!458008 () List!64050)

(declare-fun c!1037335 () Bool)

(declare-fun c!1037336 () Bool)

(declare-fun bm!457999 () Bool)

(assert (=> bm!457999 (= call!458008 ($colon$colon!1822 (exprs!5801 (Context!10603 (t!377411 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926)))))) (ite (or c!1037336 c!1037335) (regTwo!32346 (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))) (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926)))))))))

(declare-fun b!5851558 () Bool)

(declare-fun e!3588390 () (InoxSet Context!10602))

(declare-fun e!3588385 () (InoxSet Context!10602))

(assert (=> b!5851558 (= e!3588390 e!3588385)))

(assert (=> b!5851558 (= c!1037335 ((_ is Concat!24762) (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))))))

(declare-fun call!458004 () (InoxSet Context!10602))

(declare-fun bm!458000 () Bool)

(declare-fun c!1037332 () Bool)

(assert (=> bm!458000 (= call!458004 (derivationStepZipperDown!1183 (ite c!1037332 (regOne!32347 (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))) (regOne!32346 (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926)))))) (ite c!1037332 (Context!10603 (t!377411 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))) (Context!10603 call!458008)) (h!70376 s!2326)))))

(declare-fun b!5851559 () Bool)

(assert (=> b!5851559 (= e!3588385 call!458003)))

(declare-fun call!458007 () (InoxSet Context!10602))

(declare-fun call!458005 () List!64050)

(declare-fun bm!458001 () Bool)

(assert (=> bm!458001 (= call!458007 (derivationStepZipperDown!1183 (ite c!1037332 (regTwo!32347 (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))) (ite c!1037336 (regTwo!32346 (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))) (ite c!1037335 (regOne!32346 (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))) (reg!16246 (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926)))))))) (ite (or c!1037332 c!1037336) (Context!10603 (t!377411 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))) (Context!10603 call!458005)) (h!70376 s!2326)))))

(declare-fun b!5851560 () Bool)

(declare-fun c!1037333 () Bool)

(assert (=> b!5851560 (= c!1037333 ((_ is Star!15917) (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))))))

(declare-fun e!3588388 () (InoxSet Context!10602))

(assert (=> b!5851560 (= e!3588385 e!3588388)))

(declare-fun b!5851561 () Bool)

(declare-fun e!3588389 () (InoxSet Context!10602))

(assert (=> b!5851561 (= e!3588389 (store ((as const (Array Context!10602 Bool)) false) (Context!10603 (t!377411 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))) true))))

(declare-fun b!5851562 () Bool)

(declare-fun e!3588386 () (InoxSet Context!10602))

(assert (=> b!5851562 (= e!3588386 ((_ map or) call!458004 call!458007))))

(declare-fun b!5851563 () Bool)

(declare-fun e!3588387 () Bool)

(assert (=> b!5851563 (= c!1037336 e!3588387)))

(declare-fun res!2463533 () Bool)

(assert (=> b!5851563 (=> (not res!2463533) (not e!3588387))))

(assert (=> b!5851563 (= res!2463533 ((_ is Concat!24762) (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))))))

(assert (=> b!5851563 (= e!3588386 e!3588390)))

(declare-fun bm!458002 () Bool)

(assert (=> bm!458002 (= call!458005 call!458008)))

(declare-fun b!5851564 () Bool)

(assert (=> b!5851564 (= e!3588387 (nullable!5917 (regOne!32346 (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926)))))))))

(declare-fun bm!458003 () Bool)

(assert (=> bm!458003 (= call!458006 call!458007)))

(declare-fun b!5851565 () Bool)

(assert (=> b!5851565 (= e!3588390 ((_ map or) call!458004 call!458006))))

(declare-fun b!5851557 () Bool)

(assert (=> b!5851557 (= e!3588388 ((as const (Array Context!10602 Bool)) false))))

(declare-fun d!1837836 () Bool)

(declare-fun c!1037334 () Bool)

(assert (=> d!1837836 (= c!1037334 (and ((_ is ElementMatch!15917) (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))) (= (c!1036885 (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))) (h!70376 s!2326))))))

(assert (=> d!1837836 (= (derivationStepZipperDown!1183 (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926)))) (Context!10603 (t!377411 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))) (h!70376 s!2326)) e!3588389)))

(declare-fun b!5851566 () Bool)

(assert (=> b!5851566 (= e!3588388 call!458003)))

(declare-fun b!5851567 () Bool)

(assert (=> b!5851567 (= e!3588389 e!3588386)))

(assert (=> b!5851567 (= c!1037332 ((_ is Union!15917) (h!70374 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))))))

(assert (= (and d!1837836 c!1037334) b!5851561))

(assert (= (and d!1837836 (not c!1037334)) b!5851567))

(assert (= (and b!5851567 c!1037332) b!5851562))

(assert (= (and b!5851567 (not c!1037332)) b!5851563))

(assert (= (and b!5851563 res!2463533) b!5851564))

(assert (= (and b!5851563 c!1037336) b!5851565))

(assert (= (and b!5851563 (not c!1037336)) b!5851558))

(assert (= (and b!5851558 c!1037335) b!5851559))

(assert (= (and b!5851558 (not c!1037335)) b!5851560))

(assert (= (and b!5851560 c!1037333) b!5851566))

(assert (= (and b!5851560 (not c!1037333)) b!5851557))

(assert (= (or b!5851559 b!5851566) bm!458002))

(assert (= (or b!5851559 b!5851566) bm!457998))

(assert (= (or b!5851565 bm!458002) bm!457999))

(assert (= (or b!5851565 bm!457998) bm!458003))

(assert (= (or b!5851562 bm!458003) bm!458001))

(assert (= (or b!5851562 b!5851565) bm!458000))

(declare-fun m!6771352 () Bool)

(assert (=> bm!458000 m!6771352))

(declare-fun m!6771354 () Bool)

(assert (=> bm!457999 m!6771354))

(declare-fun m!6771356 () Bool)

(assert (=> b!5851564 m!6771356))

(declare-fun m!6771358 () Bool)

(assert (=> b!5851561 m!6771358))

(declare-fun m!6771360 () Bool)

(assert (=> bm!458001 m!6771360))

(assert (=> bm!457800 d!1837836))

(declare-fun d!1837838 () Bool)

(assert (=> d!1837838 (= (isEmpty!35788 (exprs!5801 (h!70375 zl!343))) ((_ is Nil!63926) (exprs!5801 (h!70375 zl!343))))))

(assert (=> b!5850675 d!1837838))

(declare-fun d!1837840 () Bool)

(assert (=> d!1837840 (= ($colon$colon!1822 (exprs!5801 lt!2304315) (ite (or c!1037052 c!1037051) (regTwo!32346 (regTwo!32347 r!7292)) (regTwo!32347 r!7292))) (Cons!63926 (ite (or c!1037052 c!1037051) (regTwo!32346 (regTwo!32347 r!7292)) (regTwo!32347 r!7292)) (exprs!5801 lt!2304315)))))

(assert (=> bm!457781 d!1837840))

(assert (=> b!5850530 d!1837488))

(declare-fun bs!1378842 () Bool)

(declare-fun d!1837842 () Bool)

(assert (= bs!1378842 (and d!1837842 d!1837706)))

(declare-fun lambda!319949 () Int)

(assert (=> bs!1378842 (= lambda!319949 lambda!319931)))

(declare-fun bs!1378843 () Bool)

(assert (= bs!1378843 (and d!1837842 d!1837448)))

(assert (=> bs!1378843 (= lambda!319949 lambda!319893)))

(declare-fun bs!1378844 () Bool)

(assert (= bs!1378844 (and d!1837842 d!1837466)))

(assert (=> bs!1378844 (= lambda!319949 lambda!319897)))

(declare-fun bs!1378845 () Bool)

(assert (= bs!1378845 (and d!1837842 d!1837488)))

(assert (=> bs!1378845 (= lambda!319949 lambda!319906)))

(declare-fun bs!1378846 () Bool)

(assert (= bs!1378846 (and d!1837842 d!1837472)))

(assert (=> bs!1378846 (= lambda!319949 lambda!319898)))

(declare-fun bs!1378847 () Bool)

(assert (= bs!1378847 (and d!1837842 d!1837704)))

(assert (=> bs!1378847 (= lambda!319949 lambda!319930)))

(declare-fun bs!1378848 () Bool)

(assert (= bs!1378848 (and d!1837842 d!1837826)))

(assert (=> bs!1378848 (= lambda!319949 lambda!319948)))

(declare-fun bs!1378849 () Bool)

(assert (= bs!1378849 (and d!1837842 d!1837814)))

(assert (=> bs!1378849 (= lambda!319949 lambda!319947)))

(declare-fun bs!1378850 () Bool)

(assert (= bs!1378850 (and d!1837842 d!1837446)))

(assert (=> bs!1378850 (= lambda!319949 lambda!319890)))

(declare-fun bs!1378851 () Bool)

(assert (= bs!1378851 (and d!1837842 d!1837454)))

(assert (=> bs!1378851 (= lambda!319949 lambda!319896)))

(declare-fun lt!2304412 () List!64050)

(assert (=> d!1837842 (forall!15004 lt!2304412 lambda!319949)))

(declare-fun e!3588391 () List!64050)

(assert (=> d!1837842 (= lt!2304412 e!3588391)))

(declare-fun c!1037337 () Bool)

(assert (=> d!1837842 (= c!1037337 ((_ is Cons!63927) (t!377412 zl!343)))))

(assert (=> d!1837842 (= (unfocusZipperList!1338 (t!377412 zl!343)) lt!2304412)))

(declare-fun b!5851568 () Bool)

(assert (=> b!5851568 (= e!3588391 (Cons!63926 (generalisedConcat!1514 (exprs!5801 (h!70375 (t!377412 zl!343)))) (unfocusZipperList!1338 (t!377412 (t!377412 zl!343)))))))

(declare-fun b!5851569 () Bool)

(assert (=> b!5851569 (= e!3588391 Nil!63926)))

(assert (= (and d!1837842 c!1037337) b!5851568))

(assert (= (and d!1837842 (not c!1037337)) b!5851569))

(declare-fun m!6771362 () Bool)

(assert (=> d!1837842 m!6771362))

(declare-fun m!6771364 () Bool)

(assert (=> b!5851568 m!6771364))

(declare-fun m!6771366 () Bool)

(assert (=> b!5851568 m!6771366))

(assert (=> b!5850530 d!1837842))

(declare-fun b!5851570 () Bool)

(declare-fun e!3588394 () Bool)

(assert (=> b!5851570 (= e!3588394 (nullable!5917 (h!70374 (exprs!5801 (Context!10603 (t!377411 (exprs!5801 (h!70375 zl!343))))))))))

(declare-fun b!5851571 () Bool)

(declare-fun e!3588392 () (InoxSet Context!10602))

(declare-fun call!458009 () (InoxSet Context!10602))

(assert (=> b!5851571 (= e!3588392 ((_ map or) call!458009 (derivationStepZipperUp!1109 (Context!10603 (t!377411 (exprs!5801 (Context!10603 (t!377411 (exprs!5801 (h!70375 zl!343))))))) (h!70376 s!2326))))))

(declare-fun d!1837844 () Bool)

(declare-fun c!1037339 () Bool)

(assert (=> d!1837844 (= c!1037339 e!3588394)))

(declare-fun res!2463534 () Bool)

(assert (=> d!1837844 (=> (not res!2463534) (not e!3588394))))

(assert (=> d!1837844 (= res!2463534 ((_ is Cons!63926) (exprs!5801 (Context!10603 (t!377411 (exprs!5801 (h!70375 zl!343)))))))))

(assert (=> d!1837844 (= (derivationStepZipperUp!1109 (Context!10603 (t!377411 (exprs!5801 (h!70375 zl!343)))) (h!70376 s!2326)) e!3588392)))

(declare-fun bm!458004 () Bool)

(assert (=> bm!458004 (= call!458009 (derivationStepZipperDown!1183 (h!70374 (exprs!5801 (Context!10603 (t!377411 (exprs!5801 (h!70375 zl!343)))))) (Context!10603 (t!377411 (exprs!5801 (Context!10603 (t!377411 (exprs!5801 (h!70375 zl!343))))))) (h!70376 s!2326)))))

(declare-fun b!5851572 () Bool)

(declare-fun e!3588393 () (InoxSet Context!10602))

(assert (=> b!5851572 (= e!3588393 ((as const (Array Context!10602 Bool)) false))))

(declare-fun b!5851573 () Bool)

(assert (=> b!5851573 (= e!3588392 e!3588393)))

(declare-fun c!1037338 () Bool)

(assert (=> b!5851573 (= c!1037338 ((_ is Cons!63926) (exprs!5801 (Context!10603 (t!377411 (exprs!5801 (h!70375 zl!343)))))))))

(declare-fun b!5851574 () Bool)

(assert (=> b!5851574 (= e!3588393 call!458009)))

(assert (= (and d!1837844 res!2463534) b!5851570))

(assert (= (and d!1837844 c!1037339) b!5851571))

(assert (= (and d!1837844 (not c!1037339)) b!5851573))

(assert (= (and b!5851573 c!1037338) b!5851574))

(assert (= (and b!5851573 (not c!1037338)) b!5851572))

(assert (= (or b!5851571 b!5851574) bm!458004))

(declare-fun m!6771368 () Bool)

(assert (=> b!5851570 m!6771368))

(declare-fun m!6771370 () Bool)

(assert (=> b!5851571 m!6771370))

(declare-fun m!6771372 () Bool)

(assert (=> bm!458004 m!6771372))

(assert (=> b!5850645 d!1837844))

(assert (=> bm!457764 d!1837708))

(declare-fun d!1837846 () Bool)

(assert (=> d!1837846 (= (nullable!5917 r!7292) (nullableFct!1904 r!7292))))

(declare-fun bs!1378852 () Bool)

(assert (= bs!1378852 d!1837846))

(declare-fun m!6771374 () Bool)

(assert (=> bs!1378852 m!6771374))

(assert (=> b!5850636 d!1837846))

(declare-fun d!1837848 () Bool)

(declare-fun res!2463535 () Bool)

(declare-fun e!3588395 () Bool)

(assert (=> d!1837848 (=> res!2463535 e!3588395)))

(assert (=> d!1837848 (= res!2463535 ((_ is Nil!63926) (exprs!5801 setElem!39630)))))

(assert (=> d!1837848 (= (forall!15004 (exprs!5801 setElem!39630) lambda!319896) e!3588395)))

(declare-fun b!5851575 () Bool)

(declare-fun e!3588396 () Bool)

(assert (=> b!5851575 (= e!3588395 e!3588396)))

(declare-fun res!2463536 () Bool)

(assert (=> b!5851575 (=> (not res!2463536) (not e!3588396))))

(assert (=> b!5851575 (= res!2463536 (dynLambda!24990 lambda!319896 (h!70374 (exprs!5801 setElem!39630))))))

(declare-fun b!5851576 () Bool)

(assert (=> b!5851576 (= e!3588396 (forall!15004 (t!377411 (exprs!5801 setElem!39630)) lambda!319896))))

(assert (= (and d!1837848 (not res!2463535)) b!5851575))

(assert (= (and b!5851575 res!2463536) b!5851576))

(declare-fun b_lambda!220265 () Bool)

(assert (=> (not b_lambda!220265) (not b!5851575)))

(declare-fun m!6771376 () Bool)

(assert (=> b!5851575 m!6771376))

(declare-fun m!6771378 () Bool)

(assert (=> b!5851576 m!6771378))

(assert (=> d!1837454 d!1837848))

(assert (=> b!5850467 d!1837714))

(declare-fun d!1837850 () Bool)

(assert (=> d!1837850 (= (isEmptyLang!1360 lt!2304370) ((_ is EmptyLang!15917) lt!2304370))))

(assert (=> b!5850521 d!1837850))

(declare-fun d!1837852 () Bool)

(declare-fun c!1037340 () Bool)

(assert (=> d!1837852 (= c!1037340 (isEmpty!35787 (tail!11473 (t!377413 s!2326))))))

(declare-fun e!3588397 () Bool)

(assert (=> d!1837852 (= (matchZipper!1983 (derivationStepZipper!1916 lt!2304313 (head!12388 (t!377413 s!2326))) (tail!11473 (t!377413 s!2326))) e!3588397)))

(declare-fun b!5851577 () Bool)

(assert (=> b!5851577 (= e!3588397 (nullableZipper!1756 (derivationStepZipper!1916 lt!2304313 (head!12388 (t!377413 s!2326)))))))

(declare-fun b!5851578 () Bool)

(assert (=> b!5851578 (= e!3588397 (matchZipper!1983 (derivationStepZipper!1916 (derivationStepZipper!1916 lt!2304313 (head!12388 (t!377413 s!2326))) (head!12388 (tail!11473 (t!377413 s!2326)))) (tail!11473 (tail!11473 (t!377413 s!2326)))))))

(assert (= (and d!1837852 c!1037340) b!5851577))

(assert (= (and d!1837852 (not c!1037340)) b!5851578))

(assert (=> d!1837852 m!6770592))

(assert (=> d!1837852 m!6771142))

(assert (=> b!5851577 m!6770598))

(declare-fun m!6771380 () Bool)

(assert (=> b!5851577 m!6771380))

(assert (=> b!5851578 m!6770592))

(assert (=> b!5851578 m!6771146))

(assert (=> b!5851578 m!6770598))

(assert (=> b!5851578 m!6771146))

(declare-fun m!6771382 () Bool)

(assert (=> b!5851578 m!6771382))

(assert (=> b!5851578 m!6770592))

(assert (=> b!5851578 m!6771150))

(assert (=> b!5851578 m!6771382))

(assert (=> b!5851578 m!6771150))

(declare-fun m!6771384 () Bool)

(assert (=> b!5851578 m!6771384))

(assert (=> b!5850583 d!1837852))

(declare-fun bs!1378853 () Bool)

(declare-fun d!1837854 () Bool)

(assert (= bs!1378853 (and d!1837854 b!5849976)))

(declare-fun lambda!319950 () Int)

(assert (=> bs!1378853 (= (= (head!12388 (t!377413 s!2326)) (h!70376 s!2326)) (= lambda!319950 lambda!319852))))

(declare-fun bs!1378854 () Bool)

(assert (= bs!1378854 (and d!1837854 d!1837480)))

(assert (=> bs!1378854 (= (= (head!12388 (t!377413 s!2326)) (h!70376 s!2326)) (= lambda!319950 lambda!319903))))

(declare-fun bs!1378855 () Bool)

(assert (= bs!1378855 (and d!1837854 d!1837738)))

(assert (=> bs!1378855 (= lambda!319950 lambda!319940)))

(assert (=> d!1837854 true))

(assert (=> d!1837854 (= (derivationStepZipper!1916 lt!2304313 (head!12388 (t!377413 s!2326))) (flatMap!1448 lt!2304313 lambda!319950))))

(declare-fun bs!1378856 () Bool)

(assert (= bs!1378856 d!1837854))

(declare-fun m!6771386 () Bool)

(assert (=> bs!1378856 m!6771386))

(assert (=> b!5850583 d!1837854))

(assert (=> b!5850583 d!1837740))

(assert (=> b!5850583 d!1837742))

(declare-fun d!1837856 () Bool)

(assert (=> d!1837856 (= (nullable!5917 (regOne!32346 (regOne!32347 r!7292))) (nullableFct!1904 (regOne!32346 (regOne!32347 r!7292))))))

(declare-fun bs!1378857 () Bool)

(assert (= bs!1378857 d!1837856))

(declare-fun m!6771388 () Bool)

(assert (=> bs!1378857 m!6771388))

(assert (=> b!5850572 d!1837856))

(declare-fun d!1837858 () Bool)

(declare-fun c!1037343 () Bool)

(assert (=> d!1837858 (= c!1037343 ((_ is Nil!63927) lt!2304390))))

(declare-fun e!3588400 () (InoxSet Context!10602))

(assert (=> d!1837858 (= (content!11747 lt!2304390) e!3588400)))

(declare-fun b!5851583 () Bool)

(assert (=> b!5851583 (= e!3588400 ((as const (Array Context!10602 Bool)) false))))

(declare-fun b!5851584 () Bool)

(assert (=> b!5851584 (= e!3588400 ((_ map or) (store ((as const (Array Context!10602 Bool)) false) (h!70375 lt!2304390) true) (content!11747 (t!377412 lt!2304390))))))

(assert (= (and d!1837858 c!1037343) b!5851583))

(assert (= (and d!1837858 (not c!1037343)) b!5851584))

(declare-fun m!6771390 () Bool)

(assert (=> b!5851584 m!6771390))

(declare-fun m!6771392 () Bool)

(assert (=> b!5851584 m!6771392))

(assert (=> b!5850681 d!1837858))

(assert (=> b!5850619 d!1837442))

(assert (=> d!1837470 d!1837758))

(declare-fun d!1837860 () Bool)

(assert (=> d!1837860 (= (nullable!5917 (regOne!32346 r!7292)) (nullableFct!1904 (regOne!32346 r!7292)))))

(declare-fun bs!1378858 () Bool)

(assert (= bs!1378858 d!1837860))

(declare-fun m!6771394 () Bool)

(assert (=> bs!1378858 m!6771394))

(assert (=> b!5850594 d!1837860))

(assert (=> d!1837436 d!1837444))

(assert (=> d!1837436 d!1837442))

(declare-fun d!1837862 () Bool)

(assert (=> d!1837862 (= (matchR!8100 (regOne!32347 r!7292) s!2326) (matchRSpec!3018 (regOne!32347 r!7292) s!2326))))

(assert (=> d!1837862 true))

(declare-fun _$88!4250 () Unit!157105)

(assert (=> d!1837862 (= (choose!44369 (regOne!32347 r!7292) s!2326) _$88!4250)))

(declare-fun bs!1378859 () Bool)

(assert (= bs!1378859 d!1837862))

(assert (=> bs!1378859 m!6770270))

(assert (=> bs!1378859 m!6770266))

(assert (=> d!1837436 d!1837862))

(assert (=> d!1837436 d!1837790))

(declare-fun d!1837864 () Bool)

(assert (=> d!1837864 (= (isEmpty!35788 (tail!11474 (exprs!5801 (h!70375 zl!343)))) ((_ is Nil!63926) (tail!11474 (exprs!5801 (h!70375 zl!343)))))))

(assert (=> b!5850673 d!1837864))

(declare-fun d!1837866 () Bool)

(assert (=> d!1837866 (= (tail!11474 (exprs!5801 (h!70375 zl!343))) (t!377411 (exprs!5801 (h!70375 zl!343))))))

(assert (=> b!5850673 d!1837866))

(declare-fun d!1837868 () Bool)

(declare-fun c!1037344 () Bool)

(assert (=> d!1837868 (= c!1037344 (isEmpty!35787 (tail!11473 (t!377413 s!2326))))))

(declare-fun e!3588401 () Bool)

(assert (=> d!1837868 (= (matchZipper!1983 (derivationStepZipper!1916 lt!2304321 (head!12388 (t!377413 s!2326))) (tail!11473 (t!377413 s!2326))) e!3588401)))

(declare-fun b!5851585 () Bool)

(assert (=> b!5851585 (= e!3588401 (nullableZipper!1756 (derivationStepZipper!1916 lt!2304321 (head!12388 (t!377413 s!2326)))))))

(declare-fun b!5851586 () Bool)

(assert (=> b!5851586 (= e!3588401 (matchZipper!1983 (derivationStepZipper!1916 (derivationStepZipper!1916 lt!2304321 (head!12388 (t!377413 s!2326))) (head!12388 (tail!11473 (t!377413 s!2326)))) (tail!11473 (tail!11473 (t!377413 s!2326)))))))

(assert (= (and d!1837868 c!1037344) b!5851585))

(assert (= (and d!1837868 (not c!1037344)) b!5851586))

(assert (=> d!1837868 m!6770592))

(assert (=> d!1837868 m!6771142))

(assert (=> b!5851585 m!6770630))

(declare-fun m!6771396 () Bool)

(assert (=> b!5851585 m!6771396))

(assert (=> b!5851586 m!6770592))

(assert (=> b!5851586 m!6771146))

(assert (=> b!5851586 m!6770630))

(assert (=> b!5851586 m!6771146))

(declare-fun m!6771398 () Bool)

(assert (=> b!5851586 m!6771398))

(assert (=> b!5851586 m!6770592))

(assert (=> b!5851586 m!6771150))

(assert (=> b!5851586 m!6771398))

(assert (=> b!5851586 m!6771150))

(declare-fun m!6771400 () Bool)

(assert (=> b!5851586 m!6771400))

(assert (=> b!5850616 d!1837868))

(declare-fun bs!1378860 () Bool)

(declare-fun d!1837870 () Bool)

(assert (= bs!1378860 (and d!1837870 b!5849976)))

(declare-fun lambda!319951 () Int)

(assert (=> bs!1378860 (= (= (head!12388 (t!377413 s!2326)) (h!70376 s!2326)) (= lambda!319951 lambda!319852))))

(declare-fun bs!1378861 () Bool)

(assert (= bs!1378861 (and d!1837870 d!1837480)))

(assert (=> bs!1378861 (= (= (head!12388 (t!377413 s!2326)) (h!70376 s!2326)) (= lambda!319951 lambda!319903))))

(declare-fun bs!1378862 () Bool)

(assert (= bs!1378862 (and d!1837870 d!1837738)))

(assert (=> bs!1378862 (= lambda!319951 lambda!319940)))

(declare-fun bs!1378863 () Bool)

(assert (= bs!1378863 (and d!1837870 d!1837854)))

(assert (=> bs!1378863 (= lambda!319951 lambda!319950)))

(assert (=> d!1837870 true))

(assert (=> d!1837870 (= (derivationStepZipper!1916 lt!2304321 (head!12388 (t!377413 s!2326))) (flatMap!1448 lt!2304321 lambda!319951))))

(declare-fun bs!1378864 () Bool)

(assert (= bs!1378864 d!1837870))

(declare-fun m!6771402 () Bool)

(assert (=> bs!1378864 m!6771402))

(assert (=> b!5850616 d!1837870))

(assert (=> b!5850616 d!1837740))

(assert (=> b!5850616 d!1837742))

(declare-fun d!1837872 () Bool)

(declare-fun res!2463537 () Bool)

(declare-fun e!3588402 () Bool)

(assert (=> d!1837872 (=> res!2463537 e!3588402)))

(assert (=> d!1837872 (= res!2463537 ((_ is Nil!63926) (exprs!5801 (Context!10603 (Cons!63926 (regOne!32347 r!7292) Nil!63926)))))))

(assert (=> d!1837872 (= (forall!15004 (exprs!5801 (Context!10603 (Cons!63926 (regOne!32347 r!7292) Nil!63926))) lambda!319897) e!3588402)))

(declare-fun b!5851587 () Bool)

(declare-fun e!3588403 () Bool)

(assert (=> b!5851587 (= e!3588402 e!3588403)))

(declare-fun res!2463538 () Bool)

(assert (=> b!5851587 (=> (not res!2463538) (not e!3588403))))

(assert (=> b!5851587 (= res!2463538 (dynLambda!24990 lambda!319897 (h!70374 (exprs!5801 (Context!10603 (Cons!63926 (regOne!32347 r!7292) Nil!63926))))))))

(declare-fun b!5851588 () Bool)

(assert (=> b!5851588 (= e!3588403 (forall!15004 (t!377411 (exprs!5801 (Context!10603 (Cons!63926 (regOne!32347 r!7292) Nil!63926)))) lambda!319897))))

(assert (= (and d!1837872 (not res!2463537)) b!5851587))

(assert (= (and b!5851587 res!2463538) b!5851588))

(declare-fun b_lambda!220267 () Bool)

(assert (=> (not b_lambda!220267) (not b!5851587)))

(declare-fun m!6771404 () Bool)

(assert (=> b!5851587 m!6771404))

(declare-fun m!6771406 () Bool)

(assert (=> b!5851588 m!6771406))

(assert (=> d!1837466 d!1837872))

(declare-fun d!1837874 () Bool)

(assert (=> d!1837874 (= (Exists!2989 (ite c!1037017 lambda!319886 lambda!319887)) (choose!44375 (ite c!1037017 lambda!319886 lambda!319887)))))

(declare-fun bs!1378865 () Bool)

(assert (= bs!1378865 d!1837874))

(declare-fun m!6771408 () Bool)

(assert (=> bs!1378865 m!6771408))

(assert (=> bm!457765 d!1837874))

(assert (=> bm!457802 d!1837708))

(declare-fun d!1837876 () Bool)

(assert (=> d!1837876 (= (isEmptyExpr!1352 lt!2304384) ((_ is EmptyExpr!15917) lt!2304384))))

(assert (=> b!5850678 d!1837876))

(assert (=> d!1837468 d!1837708))

(declare-fun b!5851589 () Bool)

(declare-fun e!3588406 () Bool)

(assert (=> b!5851589 (= e!3588406 (nullable!5917 (h!70374 (exprs!5801 (Context!10603 (t!377411 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926)))))))))))

(declare-fun b!5851590 () Bool)

(declare-fun e!3588404 () (InoxSet Context!10602))

(declare-fun call!458010 () (InoxSet Context!10602))

(assert (=> b!5851590 (= e!3588404 ((_ map or) call!458010 (derivationStepZipperUp!1109 (Context!10603 (t!377411 (exprs!5801 (Context!10603 (t!377411 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926)))))))) (h!70376 s!2326))))))

(declare-fun d!1837878 () Bool)

(declare-fun c!1037346 () Bool)

(assert (=> d!1837878 (= c!1037346 e!3588406)))

(declare-fun res!2463539 () Bool)

(assert (=> d!1837878 (=> (not res!2463539) (not e!3588406))))

(assert (=> d!1837878 (= res!2463539 ((_ is Cons!63926) (exprs!5801 (Context!10603 (t!377411 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))))))))

(assert (=> d!1837878 (= (derivationStepZipperUp!1109 (Context!10603 (t!377411 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))) (h!70376 s!2326)) e!3588404)))

(declare-fun bm!458005 () Bool)

(assert (=> bm!458005 (= call!458010 (derivationStepZipperDown!1183 (h!70374 (exprs!5801 (Context!10603 (t!377411 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))))) (Context!10603 (t!377411 (exprs!5801 (Context!10603 (t!377411 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926)))))))) (h!70376 s!2326)))))

(declare-fun b!5851591 () Bool)

(declare-fun e!3588405 () (InoxSet Context!10602))

(assert (=> b!5851591 (= e!3588405 ((as const (Array Context!10602 Bool)) false))))

(declare-fun b!5851592 () Bool)

(assert (=> b!5851592 (= e!3588404 e!3588405)))

(declare-fun c!1037345 () Bool)

(assert (=> b!5851592 (= c!1037345 ((_ is Cons!63926) (exprs!5801 (Context!10603 (t!377411 (exprs!5801 (Context!10603 (Cons!63926 r!7292 Nil!63926))))))))))

(declare-fun b!5851593 () Bool)

(assert (=> b!5851593 (= e!3588405 call!458010)))

(assert (= (and d!1837878 res!2463539) b!5851589))

(assert (= (and d!1837878 c!1037346) b!5851590))

(assert (= (and d!1837878 (not c!1037346)) b!5851592))

(assert (= (and b!5851592 c!1037345) b!5851593))

(assert (= (and b!5851592 (not c!1037345)) b!5851591))

(assert (= (or b!5851590 b!5851593) bm!458005))

(declare-fun m!6771410 () Bool)

(assert (=> b!5851589 m!6771410))

(declare-fun m!6771412 () Bool)

(assert (=> b!5851590 m!6771412))

(declare-fun m!6771414 () Bool)

(assert (=> bm!458005 m!6771414))

(assert (=> b!5850609 d!1837878))

(declare-fun bm!458006 () Bool)

(declare-fun call!458011 () (InoxSet Context!10602))

(declare-fun call!458014 () (InoxSet Context!10602))

(assert (=> bm!458006 (= call!458011 call!458014)))

(declare-fun c!1037351 () Bool)

(declare-fun call!458016 () List!64050)

(declare-fun c!1037350 () Bool)

(declare-fun bm!458007 () Bool)

(assert (=> bm!458007 (= call!458016 ($colon$colon!1822 (exprs!5801 (ite c!1037062 lt!2304315 (Context!10603 call!457802))) (ite (or c!1037351 c!1037350) (regTwo!32346 (ite c!1037062 (regOne!32347 r!7292) (regOne!32346 r!7292))) (ite c!1037062 (regOne!32347 r!7292) (regOne!32346 r!7292)))))))

(declare-fun b!5851595 () Bool)

(declare-fun e!3588412 () (InoxSet Context!10602))

(declare-fun e!3588407 () (InoxSet Context!10602))

(assert (=> b!5851595 (= e!3588412 e!3588407)))

(assert (=> b!5851595 (= c!1037350 ((_ is Concat!24762) (ite c!1037062 (regOne!32347 r!7292) (regOne!32346 r!7292))))))

(declare-fun call!458012 () (InoxSet Context!10602))

(declare-fun bm!458008 () Bool)

(declare-fun c!1037347 () Bool)

(assert (=> bm!458008 (= call!458012 (derivationStepZipperDown!1183 (ite c!1037347 (regOne!32347 (ite c!1037062 (regOne!32347 r!7292) (regOne!32346 r!7292))) (regOne!32346 (ite c!1037062 (regOne!32347 r!7292) (regOne!32346 r!7292)))) (ite c!1037347 (ite c!1037062 lt!2304315 (Context!10603 call!457802)) (Context!10603 call!458016)) (h!70376 s!2326)))))

(declare-fun b!5851596 () Bool)

(assert (=> b!5851596 (= e!3588407 call!458011)))

(declare-fun bm!458009 () Bool)

(declare-fun call!458015 () (InoxSet Context!10602))

(declare-fun call!458013 () List!64050)

(assert (=> bm!458009 (= call!458015 (derivationStepZipperDown!1183 (ite c!1037347 (regTwo!32347 (ite c!1037062 (regOne!32347 r!7292) (regOne!32346 r!7292))) (ite c!1037351 (regTwo!32346 (ite c!1037062 (regOne!32347 r!7292) (regOne!32346 r!7292))) (ite c!1037350 (regOne!32346 (ite c!1037062 (regOne!32347 r!7292) (regOne!32346 r!7292))) (reg!16246 (ite c!1037062 (regOne!32347 r!7292) (regOne!32346 r!7292)))))) (ite (or c!1037347 c!1037351) (ite c!1037062 lt!2304315 (Context!10603 call!457802)) (Context!10603 call!458013)) (h!70376 s!2326)))))

(declare-fun b!5851597 () Bool)

(declare-fun c!1037348 () Bool)

(assert (=> b!5851597 (= c!1037348 ((_ is Star!15917) (ite c!1037062 (regOne!32347 r!7292) (regOne!32346 r!7292))))))

(declare-fun e!3588410 () (InoxSet Context!10602))

(assert (=> b!5851597 (= e!3588407 e!3588410)))

(declare-fun e!3588411 () (InoxSet Context!10602))

(declare-fun b!5851598 () Bool)

(assert (=> b!5851598 (= e!3588411 (store ((as const (Array Context!10602 Bool)) false) (ite c!1037062 lt!2304315 (Context!10603 call!457802)) true))))

(declare-fun b!5851599 () Bool)

(declare-fun e!3588408 () (InoxSet Context!10602))

(assert (=> b!5851599 (= e!3588408 ((_ map or) call!458012 call!458015))))

(declare-fun b!5851600 () Bool)

(declare-fun e!3588409 () Bool)

(assert (=> b!5851600 (= c!1037351 e!3588409)))

(declare-fun res!2463540 () Bool)

(assert (=> b!5851600 (=> (not res!2463540) (not e!3588409))))

(assert (=> b!5851600 (= res!2463540 ((_ is Concat!24762) (ite c!1037062 (regOne!32347 r!7292) (regOne!32346 r!7292))))))

(assert (=> b!5851600 (= e!3588408 e!3588412)))

(declare-fun bm!458010 () Bool)

(assert (=> bm!458010 (= call!458013 call!458016)))

(declare-fun b!5851601 () Bool)

(assert (=> b!5851601 (= e!3588409 (nullable!5917 (regOne!32346 (ite c!1037062 (regOne!32347 r!7292) (regOne!32346 r!7292)))))))

(declare-fun bm!458011 () Bool)

(assert (=> bm!458011 (= call!458014 call!458015)))

(declare-fun b!5851602 () Bool)

(assert (=> b!5851602 (= e!3588412 ((_ map or) call!458012 call!458014))))

(declare-fun b!5851594 () Bool)

(assert (=> b!5851594 (= e!3588410 ((as const (Array Context!10602 Bool)) false))))

(declare-fun c!1037349 () Bool)

(declare-fun d!1837880 () Bool)

(assert (=> d!1837880 (= c!1037349 (and ((_ is ElementMatch!15917) (ite c!1037062 (regOne!32347 r!7292) (regOne!32346 r!7292))) (= (c!1036885 (ite c!1037062 (regOne!32347 r!7292) (regOne!32346 r!7292))) (h!70376 s!2326))))))

(assert (=> d!1837880 (= (derivationStepZipperDown!1183 (ite c!1037062 (regOne!32347 r!7292) (regOne!32346 r!7292)) (ite c!1037062 lt!2304315 (Context!10603 call!457802)) (h!70376 s!2326)) e!3588411)))

(declare-fun b!5851603 () Bool)

(assert (=> b!5851603 (= e!3588410 call!458011)))

(declare-fun b!5851604 () Bool)

(assert (=> b!5851604 (= e!3588411 e!3588408)))

(assert (=> b!5851604 (= c!1037347 ((_ is Union!15917) (ite c!1037062 (regOne!32347 r!7292) (regOne!32346 r!7292))))))

(assert (= (and d!1837880 c!1037349) b!5851598))

(assert (= (and d!1837880 (not c!1037349)) b!5851604))

(assert (= (and b!5851604 c!1037347) b!5851599))

(assert (= (and b!5851604 (not c!1037347)) b!5851600))

(assert (= (and b!5851600 res!2463540) b!5851601))

(assert (= (and b!5851600 c!1037351) b!5851602))

(assert (= (and b!5851600 (not c!1037351)) b!5851595))

(assert (= (and b!5851595 c!1037350) b!5851596))

(assert (= (and b!5851595 (not c!1037350)) b!5851597))

(assert (= (and b!5851597 c!1037348) b!5851603))

(assert (= (and b!5851597 (not c!1037348)) b!5851594))

(assert (= (or b!5851596 b!5851603) bm!458010))

(assert (= (or b!5851596 b!5851603) bm!458006))

(assert (= (or b!5851602 bm!458010) bm!458007))

(assert (= (or b!5851602 bm!458006) bm!458011))

(assert (= (or b!5851599 bm!458011) bm!458009))

(assert (= (or b!5851599 b!5851602) bm!458008))

(declare-fun m!6771416 () Bool)

(assert (=> bm!458008 m!6771416))

(declare-fun m!6771418 () Bool)

(assert (=> bm!458007 m!6771418))

(declare-fun m!6771420 () Bool)

(assert (=> b!5851601 m!6771420))

(declare-fun m!6771422 () Bool)

(assert (=> b!5851598 m!6771422))

(declare-fun m!6771424 () Bool)

(assert (=> bm!458009 m!6771424))

(assert (=> bm!457794 d!1837880))

(declare-fun d!1837882 () Bool)

(assert (=> d!1837882 (= (nullable!5917 (h!70374 (exprs!5801 (h!70375 zl!343)))) (nullableFct!1904 (h!70374 (exprs!5801 (h!70375 zl!343)))))))

(declare-fun bs!1378866 () Bool)

(assert (= bs!1378866 d!1837882))

(declare-fun m!6771426 () Bool)

(assert (=> bs!1378866 m!6771426))

(assert (=> b!5850644 d!1837882))

(assert (=> bs!1378541 d!1837484))

(declare-fun d!1837884 () Bool)

(assert (=> d!1837884 (= (isUnion!790 lt!2304370) ((_ is Union!15917) lt!2304370))))

(assert (=> b!5850517 d!1837884))

(assert (=> d!1837458 d!1837758))

(declare-fun d!1837886 () Bool)

(assert (=> d!1837886 true))

(declare-fun setRes!39643 () Bool)

(assert (=> d!1837886 setRes!39643))

(declare-fun condSetEmpty!39643 () Bool)

(declare-fun res!2463543 () (InoxSet Context!10602))

(assert (=> d!1837886 (= condSetEmpty!39643 (= res!2463543 ((as const (Array Context!10602 Bool)) false)))))

(assert (=> d!1837886 (= (choose!44371 z!1189 lambda!319852) res!2463543)))

(declare-fun setIsEmpty!39643 () Bool)

(assert (=> setIsEmpty!39643 setRes!39643))

(declare-fun tp!1618728 () Bool)

(declare-fun setElem!39643 () Context!10602)

(declare-fun setNonEmpty!39643 () Bool)

(declare-fun e!3588415 () Bool)

(assert (=> setNonEmpty!39643 (= setRes!39643 (and tp!1618728 (inv!83039 setElem!39643) e!3588415))))

(declare-fun setRest!39643 () (InoxSet Context!10602))

(assert (=> setNonEmpty!39643 (= res!2463543 ((_ map or) (store ((as const (Array Context!10602 Bool)) false) setElem!39643 true) setRest!39643))))

(declare-fun b!5851607 () Bool)

(declare-fun tp!1618727 () Bool)

(assert (=> b!5851607 (= e!3588415 tp!1618727)))

(assert (= (and d!1837886 condSetEmpty!39643) setIsEmpty!39643))

(assert (= (and d!1837886 (not condSetEmpty!39643)) setNonEmpty!39643))

(assert (= setNonEmpty!39643 b!5851607))

(declare-fun m!6771428 () Bool)

(assert (=> setNonEmpty!39643 m!6771428))

(assert (=> d!1837482 d!1837886))

(assert (=> b!5850460 d!1837722))

(assert (=> b!5850460 d!1837724))

(assert (=> bm!457803 d!1837708))

(declare-fun bm!458012 () Bool)

(declare-fun call!458017 () (InoxSet Context!10602))

(declare-fun call!458020 () (InoxSet Context!10602))

(assert (=> bm!458012 (= call!458017 call!458020)))

(declare-fun c!1037355 () Bool)

(declare-fun c!1037356 () Bool)

(declare-fun call!458022 () List!64050)

(declare-fun bm!458013 () Bool)

(assert (=> bm!458013 (= call!458022 ($colon$colon!1822 (exprs!5801 (ite c!1037053 lt!2304315 (Context!10603 call!457796))) (ite (or c!1037356 c!1037355) (regTwo!32346 (ite c!1037053 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292)))) (ite c!1037053 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292))))))))

(declare-fun b!5851609 () Bool)

(declare-fun e!3588421 () (InoxSet Context!10602))

(declare-fun e!3588416 () (InoxSet Context!10602))

(assert (=> b!5851609 (= e!3588421 e!3588416)))

(assert (=> b!5851609 (= c!1037355 ((_ is Concat!24762) (ite c!1037053 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292)))))))

(declare-fun c!1037352 () Bool)

(declare-fun call!458018 () (InoxSet Context!10602))

(declare-fun bm!458014 () Bool)

(assert (=> bm!458014 (= call!458018 (derivationStepZipperDown!1183 (ite c!1037352 (regOne!32347 (ite c!1037053 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292)))) (regOne!32346 (ite c!1037053 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292))))) (ite c!1037352 (ite c!1037053 lt!2304315 (Context!10603 call!457796)) (Context!10603 call!458022)) (h!70376 s!2326)))))

(declare-fun b!5851610 () Bool)

(assert (=> b!5851610 (= e!3588416 call!458017)))

(declare-fun bm!458015 () Bool)

(declare-fun call!458021 () (InoxSet Context!10602))

(declare-fun call!458019 () List!64050)

(assert (=> bm!458015 (= call!458021 (derivationStepZipperDown!1183 (ite c!1037352 (regTwo!32347 (ite c!1037053 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292)))) (ite c!1037356 (regTwo!32346 (ite c!1037053 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292)))) (ite c!1037355 (regOne!32346 (ite c!1037053 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292)))) (reg!16246 (ite c!1037053 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292))))))) (ite (or c!1037352 c!1037356) (ite c!1037053 lt!2304315 (Context!10603 call!457796)) (Context!10603 call!458019)) (h!70376 s!2326)))))

(declare-fun b!5851611 () Bool)

(declare-fun c!1037353 () Bool)

(assert (=> b!5851611 (= c!1037353 ((_ is Star!15917) (ite c!1037053 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292)))))))

(declare-fun e!3588419 () (InoxSet Context!10602))

(assert (=> b!5851611 (= e!3588416 e!3588419)))

(declare-fun e!3588420 () (InoxSet Context!10602))

(declare-fun b!5851612 () Bool)

(assert (=> b!5851612 (= e!3588420 (store ((as const (Array Context!10602 Bool)) false) (ite c!1037053 lt!2304315 (Context!10603 call!457796)) true))))

(declare-fun b!5851613 () Bool)

(declare-fun e!3588417 () (InoxSet Context!10602))

(assert (=> b!5851613 (= e!3588417 ((_ map or) call!458018 call!458021))))

(declare-fun b!5851614 () Bool)

(declare-fun e!3588418 () Bool)

(assert (=> b!5851614 (= c!1037356 e!3588418)))

(declare-fun res!2463544 () Bool)

(assert (=> b!5851614 (=> (not res!2463544) (not e!3588418))))

(assert (=> b!5851614 (= res!2463544 ((_ is Concat!24762) (ite c!1037053 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292)))))))

(assert (=> b!5851614 (= e!3588417 e!3588421)))

(declare-fun bm!458016 () Bool)

(assert (=> bm!458016 (= call!458019 call!458022)))

(declare-fun b!5851615 () Bool)

(assert (=> b!5851615 (= e!3588418 (nullable!5917 (regOne!32346 (ite c!1037053 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292))))))))

(declare-fun bm!458017 () Bool)

(assert (=> bm!458017 (= call!458020 call!458021)))

(declare-fun b!5851616 () Bool)

(assert (=> b!5851616 (= e!3588421 ((_ map or) call!458018 call!458020))))

(declare-fun b!5851608 () Bool)

(assert (=> b!5851608 (= e!3588419 ((as const (Array Context!10602 Bool)) false))))

(declare-fun d!1837888 () Bool)

(declare-fun c!1037354 () Bool)

(assert (=> d!1837888 (= c!1037354 (and ((_ is ElementMatch!15917) (ite c!1037053 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292)))) (= (c!1036885 (ite c!1037053 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292)))) (h!70376 s!2326))))))

(assert (=> d!1837888 (= (derivationStepZipperDown!1183 (ite c!1037053 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292))) (ite c!1037053 lt!2304315 (Context!10603 call!457796)) (h!70376 s!2326)) e!3588420)))

(declare-fun b!5851617 () Bool)

(assert (=> b!5851617 (= e!3588419 call!458017)))

(declare-fun b!5851618 () Bool)

(assert (=> b!5851618 (= e!3588420 e!3588417)))

(assert (=> b!5851618 (= c!1037352 ((_ is Union!15917) (ite c!1037053 (regOne!32347 (regOne!32347 r!7292)) (regOne!32346 (regOne!32347 r!7292)))))))

(assert (= (and d!1837888 c!1037354) b!5851612))

(assert (= (and d!1837888 (not c!1037354)) b!5851618))

(assert (= (and b!5851618 c!1037352) b!5851613))

(assert (= (and b!5851618 (not c!1037352)) b!5851614))

(assert (= (and b!5851614 res!2463544) b!5851615))

(assert (= (and b!5851614 c!1037356) b!5851616))

(assert (= (and b!5851614 (not c!1037356)) b!5851609))

(assert (= (and b!5851609 c!1037355) b!5851610))

(assert (= (and b!5851609 (not c!1037355)) b!5851611))

(assert (= (and b!5851611 c!1037353) b!5851617))

(assert (= (and b!5851611 (not c!1037353)) b!5851608))

(assert (= (or b!5851610 b!5851617) bm!458016))

(assert (= (or b!5851610 b!5851617) bm!458012))

(assert (= (or b!5851616 bm!458016) bm!458013))

(assert (= (or b!5851616 bm!458012) bm!458017))

(assert (= (or b!5851613 bm!458017) bm!458015))

(assert (= (or b!5851613 b!5851616) bm!458014))

(declare-fun m!6771430 () Bool)

(assert (=> bm!458014 m!6771430))

(declare-fun m!6771432 () Bool)

(assert (=> bm!458013 m!6771432))

(declare-fun m!6771434 () Bool)

(assert (=> b!5851615 m!6771434))

(declare-fun m!6771436 () Bool)

(assert (=> b!5851612 m!6771436))

(declare-fun m!6771438 () Bool)

(assert (=> bm!458015 m!6771438))

(assert (=> bm!457788 d!1837888))

(declare-fun d!1837890 () Bool)

(assert (=> d!1837890 (= (Exists!2989 (ite c!1037004 lambda!319884 lambda!319885)) (choose!44375 (ite c!1037004 lambda!319884 lambda!319885)))))

(declare-fun bs!1378867 () Bool)

(assert (= bs!1378867 d!1837890))

(declare-fun m!6771440 () Bool)

(assert (=> bs!1378867 m!6771440))

(assert (=> bm!457760 d!1837890))

(assert (=> b!5850492 d!1837714))

(declare-fun d!1837892 () Bool)

(declare-fun res!2463545 () Bool)

(declare-fun e!3588422 () Bool)

(assert (=> d!1837892 (=> res!2463545 e!3588422)))

(assert (=> d!1837892 (= res!2463545 ((_ is Nil!63926) (exprs!5801 (h!70375 zl!343))))))

(assert (=> d!1837892 (= (forall!15004 (exprs!5801 (h!70375 zl!343)) lambda!319898) e!3588422)))

(declare-fun b!5851619 () Bool)

(declare-fun e!3588423 () Bool)

(assert (=> b!5851619 (= e!3588422 e!3588423)))

(declare-fun res!2463546 () Bool)

(assert (=> b!5851619 (=> (not res!2463546) (not e!3588423))))

(assert (=> b!5851619 (= res!2463546 (dynLambda!24990 lambda!319898 (h!70374 (exprs!5801 (h!70375 zl!343)))))))

(declare-fun b!5851620 () Bool)

(assert (=> b!5851620 (= e!3588423 (forall!15004 (t!377411 (exprs!5801 (h!70375 zl!343))) lambda!319898))))

(assert (= (and d!1837892 (not res!2463545)) b!5851619))

(assert (= (and b!5851619 res!2463546) b!5851620))

(declare-fun b_lambda!220269 () Bool)

(assert (=> (not b_lambda!220269) (not b!5851619)))

(declare-fun m!6771442 () Bool)

(assert (=> b!5851619 m!6771442))

(declare-fun m!6771444 () Bool)

(assert (=> b!5851620 m!6771444))

(assert (=> d!1837472 d!1837892))

(declare-fun d!1837894 () Bool)

(declare-fun c!1037357 () Bool)

(assert (=> d!1837894 (= c!1037357 (isEmpty!35787 (tail!11473 s!2326)))))

(declare-fun e!3588424 () Bool)

(assert (=> d!1837894 (= (matchZipper!1983 (derivationStepZipper!1916 z!1189 (head!12388 s!2326)) (tail!11473 s!2326)) e!3588424)))

(declare-fun b!5851621 () Bool)

(assert (=> b!5851621 (= e!3588424 (nullableZipper!1756 (derivationStepZipper!1916 z!1189 (head!12388 s!2326))))))

(declare-fun b!5851622 () Bool)

(assert (=> b!5851622 (= e!3588424 (matchZipper!1983 (derivationStepZipper!1916 (derivationStepZipper!1916 z!1189 (head!12388 s!2326)) (head!12388 (tail!11473 s!2326))) (tail!11473 (tail!11473 s!2326))))))

(assert (= (and d!1837894 c!1037357) b!5851621))

(assert (= (and d!1837894 (not c!1037357)) b!5851622))

(assert (=> d!1837894 m!6770514))

(assert (=> d!1837894 m!6770516))

(assert (=> b!5851621 m!6770624))

(declare-fun m!6771446 () Bool)

(assert (=> b!5851621 m!6771446))

(assert (=> b!5851622 m!6770514))

(assert (=> b!5851622 m!6771246))

(assert (=> b!5851622 m!6770624))

(assert (=> b!5851622 m!6771246))

(declare-fun m!6771448 () Bool)

(assert (=> b!5851622 m!6771448))

(assert (=> b!5851622 m!6770514))

(assert (=> b!5851622 m!6771242))

(assert (=> b!5851622 m!6771448))

(assert (=> b!5851622 m!6771242))

(declare-fun m!6771450 () Bool)

(assert (=> b!5851622 m!6771450))

(assert (=> b!5850614 d!1837894))

(declare-fun bs!1378868 () Bool)

(declare-fun d!1837896 () Bool)

(assert (= bs!1378868 (and d!1837896 b!5849976)))

(declare-fun lambda!319952 () Int)

(assert (=> bs!1378868 (= (= (head!12388 s!2326) (h!70376 s!2326)) (= lambda!319952 lambda!319852))))

(declare-fun bs!1378869 () Bool)

(assert (= bs!1378869 (and d!1837896 d!1837738)))

(assert (=> bs!1378869 (= (= (head!12388 s!2326) (head!12388 (t!377413 s!2326))) (= lambda!319952 lambda!319940))))

(declare-fun bs!1378870 () Bool)

(assert (= bs!1378870 (and d!1837896 d!1837854)))

(assert (=> bs!1378870 (= (= (head!12388 s!2326) (head!12388 (t!377413 s!2326))) (= lambda!319952 lambda!319950))))

(declare-fun bs!1378871 () Bool)

(assert (= bs!1378871 (and d!1837896 d!1837480)))

(assert (=> bs!1378871 (= (= (head!12388 s!2326) (h!70376 s!2326)) (= lambda!319952 lambda!319903))))

(declare-fun bs!1378872 () Bool)

(assert (= bs!1378872 (and d!1837896 d!1837870)))

(assert (=> bs!1378872 (= (= (head!12388 s!2326) (head!12388 (t!377413 s!2326))) (= lambda!319952 lambda!319951))))

(assert (=> d!1837896 true))

(assert (=> d!1837896 (= (derivationStepZipper!1916 z!1189 (head!12388 s!2326)) (flatMap!1448 z!1189 lambda!319952))))

(declare-fun bs!1378873 () Bool)

(assert (= bs!1378873 d!1837896))

(declare-fun m!6771452 () Bool)

(assert (=> bs!1378873 m!6771452))

(assert (=> b!5850614 d!1837896))

(assert (=> b!5850614 d!1837714))

(assert (=> b!5850614 d!1837724))

(declare-fun b!5851623 () Bool)

(declare-fun e!3588425 () Bool)

(assert (=> b!5851623 (= e!3588425 tp_is_empty!41087)))

(declare-fun b!5851624 () Bool)

(declare-fun tp!1618731 () Bool)

(declare-fun tp!1618730 () Bool)

(assert (=> b!5851624 (= e!3588425 (and tp!1618731 tp!1618730))))

(assert (=> b!5850760 (= tp!1618553 e!3588425)))

(declare-fun b!5851625 () Bool)

(declare-fun tp!1618732 () Bool)

(assert (=> b!5851625 (= e!3588425 tp!1618732)))

(declare-fun b!5851626 () Bool)

(declare-fun tp!1618733 () Bool)

(declare-fun tp!1618729 () Bool)

(assert (=> b!5851626 (= e!3588425 (and tp!1618733 tp!1618729))))

(assert (= (and b!5850760 ((_ is ElementMatch!15917) (reg!16246 (regTwo!32347 r!7292)))) b!5851623))

(assert (= (and b!5850760 ((_ is Concat!24762) (reg!16246 (regTwo!32347 r!7292)))) b!5851624))

(assert (= (and b!5850760 ((_ is Star!15917) (reg!16246 (regTwo!32347 r!7292)))) b!5851625))

(assert (= (and b!5850760 ((_ is Union!15917) (reg!16246 (regTwo!32347 r!7292)))) b!5851626))

(declare-fun b!5851627 () Bool)

(declare-fun e!3588426 () Bool)

(assert (=> b!5851627 (= e!3588426 tp_is_empty!41087)))

(declare-fun b!5851628 () Bool)

(declare-fun tp!1618736 () Bool)

(declare-fun tp!1618735 () Bool)

(assert (=> b!5851628 (= e!3588426 (and tp!1618736 tp!1618735))))

(assert (=> b!5850751 (= tp!1618542 e!3588426)))

(declare-fun b!5851629 () Bool)

(declare-fun tp!1618737 () Bool)

(assert (=> b!5851629 (= e!3588426 tp!1618737)))

(declare-fun b!5851630 () Bool)

(declare-fun tp!1618738 () Bool)

(declare-fun tp!1618734 () Bool)

(assert (=> b!5851630 (= e!3588426 (and tp!1618738 tp!1618734))))

(assert (= (and b!5850751 ((_ is ElementMatch!15917) (regOne!32346 (regTwo!32346 r!7292)))) b!5851627))

(assert (= (and b!5850751 ((_ is Concat!24762) (regOne!32346 (regTwo!32346 r!7292)))) b!5851628))

(assert (= (and b!5850751 ((_ is Star!15917) (regOne!32346 (regTwo!32346 r!7292)))) b!5851629))

(assert (= (and b!5850751 ((_ is Union!15917) (regOne!32346 (regTwo!32346 r!7292)))) b!5851630))

(declare-fun b!5851631 () Bool)

(declare-fun e!3588427 () Bool)

(assert (=> b!5851631 (= e!3588427 tp_is_empty!41087)))

(declare-fun b!5851632 () Bool)

(declare-fun tp!1618741 () Bool)

(declare-fun tp!1618740 () Bool)

(assert (=> b!5851632 (= e!3588427 (and tp!1618741 tp!1618740))))

(assert (=> b!5850751 (= tp!1618541 e!3588427)))

(declare-fun b!5851633 () Bool)

(declare-fun tp!1618742 () Bool)

(assert (=> b!5851633 (= e!3588427 tp!1618742)))

(declare-fun b!5851634 () Bool)

(declare-fun tp!1618743 () Bool)

(declare-fun tp!1618739 () Bool)

(assert (=> b!5851634 (= e!3588427 (and tp!1618743 tp!1618739))))

(assert (= (and b!5850751 ((_ is ElementMatch!15917) (regTwo!32346 (regTwo!32346 r!7292)))) b!5851631))

(assert (= (and b!5850751 ((_ is Concat!24762) (regTwo!32346 (regTwo!32346 r!7292)))) b!5851632))

(assert (= (and b!5850751 ((_ is Star!15917) (regTwo!32346 (regTwo!32346 r!7292)))) b!5851633))

(assert (= (and b!5850751 ((_ is Union!15917) (regTwo!32346 (regTwo!32346 r!7292)))) b!5851634))

(declare-fun b!5851636 () Bool)

(declare-fun e!3588429 () Bool)

(declare-fun tp!1618744 () Bool)

(assert (=> b!5851636 (= e!3588429 tp!1618744)))

(declare-fun b!5851635 () Bool)

(declare-fun e!3588428 () Bool)

(declare-fun tp!1618745 () Bool)

(assert (=> b!5851635 (= e!3588428 (and (inv!83039 (h!70375 (t!377412 (t!377412 zl!343)))) e!3588429 tp!1618745))))

(assert (=> b!5850715 (= tp!1618504 e!3588428)))

(assert (= b!5851635 b!5851636))

(assert (= (and b!5850715 ((_ is Cons!63927) (t!377412 (t!377412 zl!343)))) b!5851635))

(declare-fun m!6771454 () Bool)

(assert (=> b!5851635 m!6771454))

(declare-fun condSetEmpty!39644 () Bool)

(assert (=> setNonEmpty!39636 (= condSetEmpty!39644 (= setRest!39636 ((as const (Array Context!10602 Bool)) false)))))

(declare-fun setRes!39644 () Bool)

(assert (=> setNonEmpty!39636 (= tp!1618533 setRes!39644)))

(declare-fun setIsEmpty!39644 () Bool)

(assert (=> setIsEmpty!39644 setRes!39644))

(declare-fun setElem!39644 () Context!10602)

(declare-fun setNonEmpty!39644 () Bool)

(declare-fun tp!1618746 () Bool)

(declare-fun e!3588430 () Bool)

(assert (=> setNonEmpty!39644 (= setRes!39644 (and tp!1618746 (inv!83039 setElem!39644) e!3588430))))

(declare-fun setRest!39644 () (InoxSet Context!10602))

(assert (=> setNonEmpty!39644 (= setRest!39636 ((_ map or) (store ((as const (Array Context!10602 Bool)) false) setElem!39644 true) setRest!39644))))

(declare-fun b!5851637 () Bool)

(declare-fun tp!1618747 () Bool)

(assert (=> b!5851637 (= e!3588430 tp!1618747)))

(assert (= (and setNonEmpty!39636 condSetEmpty!39644) setIsEmpty!39644))

(assert (= (and setNonEmpty!39636 (not condSetEmpty!39644)) setNonEmpty!39644))

(assert (= setNonEmpty!39644 b!5851637))

(declare-fun m!6771456 () Bool)

(assert (=> setNonEmpty!39644 m!6771456))

(declare-fun b!5851638 () Bool)

(declare-fun e!3588431 () Bool)

(assert (=> b!5851638 (= e!3588431 tp_is_empty!41087)))

(declare-fun b!5851639 () Bool)

(declare-fun tp!1618750 () Bool)

(declare-fun tp!1618749 () Bool)

(assert (=> b!5851639 (= e!3588431 (and tp!1618750 tp!1618749))))

(assert (=> b!5850761 (= tp!1618554 e!3588431)))

(declare-fun b!5851640 () Bool)

(declare-fun tp!1618751 () Bool)

(assert (=> b!5851640 (= e!3588431 tp!1618751)))

(declare-fun b!5851641 () Bool)

(declare-fun tp!1618752 () Bool)

(declare-fun tp!1618748 () Bool)

(assert (=> b!5851641 (= e!3588431 (and tp!1618752 tp!1618748))))

(assert (= (and b!5850761 ((_ is ElementMatch!15917) (regOne!32347 (regTwo!32347 r!7292)))) b!5851638))

(assert (= (and b!5850761 ((_ is Concat!24762) (regOne!32347 (regTwo!32347 r!7292)))) b!5851639))

(assert (= (and b!5850761 ((_ is Star!15917) (regOne!32347 (regTwo!32347 r!7292)))) b!5851640))

(assert (= (and b!5850761 ((_ is Union!15917) (regOne!32347 (regTwo!32347 r!7292)))) b!5851641))

(declare-fun b!5851642 () Bool)

(declare-fun e!3588432 () Bool)

(assert (=> b!5851642 (= e!3588432 tp_is_empty!41087)))

(declare-fun b!5851643 () Bool)

(declare-fun tp!1618755 () Bool)

(declare-fun tp!1618754 () Bool)

(assert (=> b!5851643 (= e!3588432 (and tp!1618755 tp!1618754))))

(assert (=> b!5850761 (= tp!1618550 e!3588432)))

(declare-fun b!5851644 () Bool)

(declare-fun tp!1618756 () Bool)

(assert (=> b!5851644 (= e!3588432 tp!1618756)))

(declare-fun b!5851645 () Bool)

(declare-fun tp!1618757 () Bool)

(declare-fun tp!1618753 () Bool)

(assert (=> b!5851645 (= e!3588432 (and tp!1618757 tp!1618753))))

(assert (= (and b!5850761 ((_ is ElementMatch!15917) (regTwo!32347 (regTwo!32347 r!7292)))) b!5851642))

(assert (= (and b!5850761 ((_ is Concat!24762) (regTwo!32347 (regTwo!32347 r!7292)))) b!5851643))

(assert (= (and b!5850761 ((_ is Star!15917) (regTwo!32347 (regTwo!32347 r!7292)))) b!5851644))

(assert (= (and b!5850761 ((_ is Union!15917) (regTwo!32347 (regTwo!32347 r!7292)))) b!5851645))

(declare-fun b!5851646 () Bool)

(declare-fun e!3588433 () Bool)

(assert (=> b!5851646 (= e!3588433 tp_is_empty!41087)))

(declare-fun b!5851647 () Bool)

(declare-fun tp!1618760 () Bool)

(declare-fun tp!1618759 () Bool)

(assert (=> b!5851647 (= e!3588433 (and tp!1618760 tp!1618759))))

(assert (=> b!5850752 (= tp!1618543 e!3588433)))

(declare-fun b!5851648 () Bool)

(declare-fun tp!1618761 () Bool)

(assert (=> b!5851648 (= e!3588433 tp!1618761)))

(declare-fun b!5851649 () Bool)

(declare-fun tp!1618762 () Bool)

(declare-fun tp!1618758 () Bool)

(assert (=> b!5851649 (= e!3588433 (and tp!1618762 tp!1618758))))

(assert (= (and b!5850752 ((_ is ElementMatch!15917) (reg!16246 (regTwo!32346 r!7292)))) b!5851646))

(assert (= (and b!5850752 ((_ is Concat!24762) (reg!16246 (regTwo!32346 r!7292)))) b!5851647))

(assert (= (and b!5850752 ((_ is Star!15917) (reg!16246 (regTwo!32346 r!7292)))) b!5851648))

(assert (= (and b!5850752 ((_ is Union!15917) (reg!16246 (regTwo!32346 r!7292)))) b!5851649))

(declare-fun b!5851650 () Bool)

(declare-fun e!3588434 () Bool)

(declare-fun tp!1618763 () Bool)

(declare-fun tp!1618764 () Bool)

(assert (=> b!5851650 (= e!3588434 (and tp!1618763 tp!1618764))))

(assert (=> b!5850716 (= tp!1618503 e!3588434)))

(assert (= (and b!5850716 ((_ is Cons!63926) (exprs!5801 (h!70375 (t!377412 zl!343))))) b!5851650))

(declare-fun b!5851651 () Bool)

(declare-fun e!3588435 () Bool)

(declare-fun tp!1618765 () Bool)

(declare-fun tp!1618766 () Bool)

(assert (=> b!5851651 (= e!3588435 (and tp!1618765 tp!1618766))))

(assert (=> b!5850745 (= tp!1618534 e!3588435)))

(assert (= (and b!5850745 ((_ is Cons!63926) (exprs!5801 setElem!39636))) b!5851651))

(declare-fun b!5851652 () Bool)

(declare-fun e!3588436 () Bool)

(assert (=> b!5851652 (= e!3588436 tp_is_empty!41087)))

(declare-fun b!5851653 () Bool)

(declare-fun tp!1618769 () Bool)

(declare-fun tp!1618768 () Bool)

(assert (=> b!5851653 (= e!3588436 (and tp!1618769 tp!1618768))))

(assert (=> b!5850753 (= tp!1618544 e!3588436)))

(declare-fun b!5851654 () Bool)

(declare-fun tp!1618770 () Bool)

(assert (=> b!5851654 (= e!3588436 tp!1618770)))

(declare-fun b!5851655 () Bool)

(declare-fun tp!1618771 () Bool)

(declare-fun tp!1618767 () Bool)

(assert (=> b!5851655 (= e!3588436 (and tp!1618771 tp!1618767))))

(assert (= (and b!5850753 ((_ is ElementMatch!15917) (regOne!32347 (regTwo!32346 r!7292)))) b!5851652))

(assert (= (and b!5850753 ((_ is Concat!24762) (regOne!32347 (regTwo!32346 r!7292)))) b!5851653))

(assert (= (and b!5850753 ((_ is Star!15917) (regOne!32347 (regTwo!32346 r!7292)))) b!5851654))

(assert (= (and b!5850753 ((_ is Union!15917) (regOne!32347 (regTwo!32346 r!7292)))) b!5851655))

(declare-fun b!5851656 () Bool)

(declare-fun e!3588437 () Bool)

(assert (=> b!5851656 (= e!3588437 tp_is_empty!41087)))

(declare-fun b!5851657 () Bool)

(declare-fun tp!1618774 () Bool)

(declare-fun tp!1618773 () Bool)

(assert (=> b!5851657 (= e!3588437 (and tp!1618774 tp!1618773))))

(assert (=> b!5850753 (= tp!1618540 e!3588437)))

(declare-fun b!5851658 () Bool)

(declare-fun tp!1618775 () Bool)

(assert (=> b!5851658 (= e!3588437 tp!1618775)))

(declare-fun b!5851659 () Bool)

(declare-fun tp!1618776 () Bool)

(declare-fun tp!1618772 () Bool)

(assert (=> b!5851659 (= e!3588437 (and tp!1618776 tp!1618772))))

(assert (= (and b!5850753 ((_ is ElementMatch!15917) (regTwo!32347 (regTwo!32346 r!7292)))) b!5851656))

(assert (= (and b!5850753 ((_ is Concat!24762) (regTwo!32347 (regTwo!32346 r!7292)))) b!5851657))

(assert (= (and b!5850753 ((_ is Star!15917) (regTwo!32347 (regTwo!32346 r!7292)))) b!5851658))

(assert (= (and b!5850753 ((_ is Union!15917) (regTwo!32347 (regTwo!32346 r!7292)))) b!5851659))

(declare-fun b!5851660 () Bool)

(declare-fun e!3588438 () Bool)

(assert (=> b!5851660 (= e!3588438 tp_is_empty!41087)))

(declare-fun b!5851661 () Bool)

(declare-fun tp!1618779 () Bool)

(declare-fun tp!1618778 () Bool)

(assert (=> b!5851661 (= e!3588438 (and tp!1618779 tp!1618778))))

(assert (=> b!5850759 (= tp!1618552 e!3588438)))

(declare-fun b!5851662 () Bool)

(declare-fun tp!1618780 () Bool)

(assert (=> b!5851662 (= e!3588438 tp!1618780)))

(declare-fun b!5851663 () Bool)

(declare-fun tp!1618781 () Bool)

(declare-fun tp!1618777 () Bool)

(assert (=> b!5851663 (= e!3588438 (and tp!1618781 tp!1618777))))

(assert (= (and b!5850759 ((_ is ElementMatch!15917) (regOne!32346 (regTwo!32347 r!7292)))) b!5851660))

(assert (= (and b!5850759 ((_ is Concat!24762) (regOne!32346 (regTwo!32347 r!7292)))) b!5851661))

(assert (= (and b!5850759 ((_ is Star!15917) (regOne!32346 (regTwo!32347 r!7292)))) b!5851662))

(assert (= (and b!5850759 ((_ is Union!15917) (regOne!32346 (regTwo!32347 r!7292)))) b!5851663))

(declare-fun b!5851664 () Bool)

(declare-fun e!3588439 () Bool)

(assert (=> b!5851664 (= e!3588439 tp_is_empty!41087)))

(declare-fun b!5851665 () Bool)

(declare-fun tp!1618784 () Bool)

(declare-fun tp!1618783 () Bool)

(assert (=> b!5851665 (= e!3588439 (and tp!1618784 tp!1618783))))

(assert (=> b!5850759 (= tp!1618551 e!3588439)))

(declare-fun b!5851666 () Bool)

(declare-fun tp!1618785 () Bool)

(assert (=> b!5851666 (= e!3588439 tp!1618785)))

(declare-fun b!5851667 () Bool)

(declare-fun tp!1618786 () Bool)

(declare-fun tp!1618782 () Bool)

(assert (=> b!5851667 (= e!3588439 (and tp!1618786 tp!1618782))))

(assert (= (and b!5850759 ((_ is ElementMatch!15917) (regTwo!32346 (regTwo!32347 r!7292)))) b!5851664))

(assert (= (and b!5850759 ((_ is Concat!24762) (regTwo!32346 (regTwo!32347 r!7292)))) b!5851665))

(assert (= (and b!5850759 ((_ is Star!15917) (regTwo!32346 (regTwo!32347 r!7292)))) b!5851666))

(assert (= (and b!5850759 ((_ is Union!15917) (regTwo!32346 (regTwo!32347 r!7292)))) b!5851667))

(declare-fun b!5851668 () Bool)

(declare-fun e!3588440 () Bool)

(assert (=> b!5851668 (= e!3588440 tp_is_empty!41087)))

(declare-fun b!5851669 () Bool)

(declare-fun tp!1618789 () Bool)

(declare-fun tp!1618788 () Bool)

(assert (=> b!5851669 (= e!3588440 (and tp!1618789 tp!1618788))))

(assert (=> b!5850762 (= tp!1618555 e!3588440)))

(declare-fun b!5851670 () Bool)

(declare-fun tp!1618790 () Bool)

(assert (=> b!5851670 (= e!3588440 tp!1618790)))

(declare-fun b!5851671 () Bool)

(declare-fun tp!1618791 () Bool)

(declare-fun tp!1618787 () Bool)

(assert (=> b!5851671 (= e!3588440 (and tp!1618791 tp!1618787))))

(assert (= (and b!5850762 ((_ is ElementMatch!15917) (h!70374 (exprs!5801 setElem!39630)))) b!5851668))

(assert (= (and b!5850762 ((_ is Concat!24762) (h!70374 (exprs!5801 setElem!39630)))) b!5851669))

(assert (= (and b!5850762 ((_ is Star!15917) (h!70374 (exprs!5801 setElem!39630)))) b!5851670))

(assert (= (and b!5850762 ((_ is Union!15917) (h!70374 (exprs!5801 setElem!39630)))) b!5851671))

(declare-fun b!5851672 () Bool)

(declare-fun e!3588441 () Bool)

(declare-fun tp!1618792 () Bool)

(declare-fun tp!1618793 () Bool)

(assert (=> b!5851672 (= e!3588441 (and tp!1618792 tp!1618793))))

(assert (=> b!5850762 (= tp!1618556 e!3588441)))

(assert (= (and b!5850762 ((_ is Cons!63926) (t!377411 (exprs!5801 setElem!39630)))) b!5851672))

(declare-fun b!5851673 () Bool)

(declare-fun e!3588442 () Bool)

(assert (=> b!5851673 (= e!3588442 tp_is_empty!41087)))

(declare-fun b!5851674 () Bool)

(declare-fun tp!1618796 () Bool)

(declare-fun tp!1618795 () Bool)

(assert (=> b!5851674 (= e!3588442 (and tp!1618796 tp!1618795))))

(assert (=> b!5850756 (= tp!1618548 e!3588442)))

(declare-fun b!5851675 () Bool)

(declare-fun tp!1618797 () Bool)

(assert (=> b!5851675 (= e!3588442 tp!1618797)))

(declare-fun b!5851676 () Bool)

(declare-fun tp!1618798 () Bool)

(declare-fun tp!1618794 () Bool)

(assert (=> b!5851676 (= e!3588442 (and tp!1618798 tp!1618794))))

(assert (= (and b!5850756 ((_ is ElementMatch!15917) (reg!16246 (regOne!32347 r!7292)))) b!5851673))

(assert (= (and b!5850756 ((_ is Concat!24762) (reg!16246 (regOne!32347 r!7292)))) b!5851674))

(assert (= (and b!5850756 ((_ is Star!15917) (reg!16246 (regOne!32347 r!7292)))) b!5851675))

(assert (= (and b!5850756 ((_ is Union!15917) (reg!16246 (regOne!32347 r!7292)))) b!5851676))

(declare-fun b!5851677 () Bool)

(declare-fun e!3588443 () Bool)

(assert (=> b!5851677 (= e!3588443 tp_is_empty!41087)))

(declare-fun b!5851678 () Bool)

(declare-fun tp!1618801 () Bool)

(declare-fun tp!1618800 () Bool)

(assert (=> b!5851678 (= e!3588443 (and tp!1618801 tp!1618800))))

(assert (=> b!5850747 (= tp!1618537 e!3588443)))

(declare-fun b!5851679 () Bool)

(declare-fun tp!1618802 () Bool)

(assert (=> b!5851679 (= e!3588443 tp!1618802)))

(declare-fun b!5851680 () Bool)

(declare-fun tp!1618803 () Bool)

(declare-fun tp!1618799 () Bool)

(assert (=> b!5851680 (= e!3588443 (and tp!1618803 tp!1618799))))

(assert (= (and b!5850747 ((_ is ElementMatch!15917) (regOne!32346 (regOne!32346 r!7292)))) b!5851677))

(assert (= (and b!5850747 ((_ is Concat!24762) (regOne!32346 (regOne!32346 r!7292)))) b!5851678))

(assert (= (and b!5850747 ((_ is Star!15917) (regOne!32346 (regOne!32346 r!7292)))) b!5851679))

(assert (= (and b!5850747 ((_ is Union!15917) (regOne!32346 (regOne!32346 r!7292)))) b!5851680))

(declare-fun b!5851681 () Bool)

(declare-fun e!3588444 () Bool)

(assert (=> b!5851681 (= e!3588444 tp_is_empty!41087)))

(declare-fun b!5851682 () Bool)

(declare-fun tp!1618806 () Bool)

(declare-fun tp!1618805 () Bool)

(assert (=> b!5851682 (= e!3588444 (and tp!1618806 tp!1618805))))

(assert (=> b!5850747 (= tp!1618536 e!3588444)))

(declare-fun b!5851683 () Bool)

(declare-fun tp!1618807 () Bool)

(assert (=> b!5851683 (= e!3588444 tp!1618807)))

(declare-fun b!5851684 () Bool)

(declare-fun tp!1618808 () Bool)

(declare-fun tp!1618804 () Bool)

(assert (=> b!5851684 (= e!3588444 (and tp!1618808 tp!1618804))))

(assert (= (and b!5850747 ((_ is ElementMatch!15917) (regTwo!32346 (regOne!32346 r!7292)))) b!5851681))

(assert (= (and b!5850747 ((_ is Concat!24762) (regTwo!32346 (regOne!32346 r!7292)))) b!5851682))

(assert (= (and b!5850747 ((_ is Star!15917) (regTwo!32346 (regOne!32346 r!7292)))) b!5851683))

(assert (= (and b!5850747 ((_ is Union!15917) (regTwo!32346 (regOne!32346 r!7292)))) b!5851684))

(declare-fun b!5851685 () Bool)

(declare-fun e!3588445 () Bool)

(declare-fun tp!1618809 () Bool)

(assert (=> b!5851685 (= e!3588445 (and tp_is_empty!41087 tp!1618809))))

(assert (=> b!5850735 (= tp!1618522 e!3588445)))

(assert (= (and b!5850735 ((_ is Cons!63928) (t!377413 (t!377413 s!2326)))) b!5851685))

(declare-fun b!5851686 () Bool)

(declare-fun e!3588446 () Bool)

(assert (=> b!5851686 (= e!3588446 tp_is_empty!41087)))

(declare-fun b!5851687 () Bool)

(declare-fun tp!1618812 () Bool)

(declare-fun tp!1618811 () Bool)

(assert (=> b!5851687 (= e!3588446 (and tp!1618812 tp!1618811))))

(assert (=> b!5850757 (= tp!1618549 e!3588446)))

(declare-fun b!5851688 () Bool)

(declare-fun tp!1618813 () Bool)

(assert (=> b!5851688 (= e!3588446 tp!1618813)))

(declare-fun b!5851689 () Bool)

(declare-fun tp!1618814 () Bool)

(declare-fun tp!1618810 () Bool)

(assert (=> b!5851689 (= e!3588446 (and tp!1618814 tp!1618810))))

(assert (= (and b!5850757 ((_ is ElementMatch!15917) (regOne!32347 (regOne!32347 r!7292)))) b!5851686))

(assert (= (and b!5850757 ((_ is Concat!24762) (regOne!32347 (regOne!32347 r!7292)))) b!5851687))

(assert (= (and b!5850757 ((_ is Star!15917) (regOne!32347 (regOne!32347 r!7292)))) b!5851688))

(assert (= (and b!5850757 ((_ is Union!15917) (regOne!32347 (regOne!32347 r!7292)))) b!5851689))

(declare-fun b!5851690 () Bool)

(declare-fun e!3588447 () Bool)

(assert (=> b!5851690 (= e!3588447 tp_is_empty!41087)))

(declare-fun b!5851691 () Bool)

(declare-fun tp!1618817 () Bool)

(declare-fun tp!1618816 () Bool)

(assert (=> b!5851691 (= e!3588447 (and tp!1618817 tp!1618816))))

(assert (=> b!5850757 (= tp!1618545 e!3588447)))

(declare-fun b!5851692 () Bool)

(declare-fun tp!1618818 () Bool)

(assert (=> b!5851692 (= e!3588447 tp!1618818)))

(declare-fun b!5851693 () Bool)

(declare-fun tp!1618819 () Bool)

(declare-fun tp!1618815 () Bool)

(assert (=> b!5851693 (= e!3588447 (and tp!1618819 tp!1618815))))

(assert (= (and b!5850757 ((_ is ElementMatch!15917) (regTwo!32347 (regOne!32347 r!7292)))) b!5851690))

(assert (= (and b!5850757 ((_ is Concat!24762) (regTwo!32347 (regOne!32347 r!7292)))) b!5851691))

(assert (= (and b!5850757 ((_ is Star!15917) (regTwo!32347 (regOne!32347 r!7292)))) b!5851692))

(assert (= (and b!5850757 ((_ is Union!15917) (regTwo!32347 (regOne!32347 r!7292)))) b!5851693))

(declare-fun b!5851694 () Bool)

(declare-fun e!3588448 () Bool)

(assert (=> b!5851694 (= e!3588448 tp_is_empty!41087)))

(declare-fun b!5851695 () Bool)

(declare-fun tp!1618822 () Bool)

(declare-fun tp!1618821 () Bool)

(assert (=> b!5851695 (= e!3588448 (and tp!1618822 tp!1618821))))

(assert (=> b!5850748 (= tp!1618538 e!3588448)))

(declare-fun b!5851696 () Bool)

(declare-fun tp!1618823 () Bool)

(assert (=> b!5851696 (= e!3588448 tp!1618823)))

(declare-fun b!5851697 () Bool)

(declare-fun tp!1618824 () Bool)

(declare-fun tp!1618820 () Bool)

(assert (=> b!5851697 (= e!3588448 (and tp!1618824 tp!1618820))))

(assert (= (and b!5850748 ((_ is ElementMatch!15917) (reg!16246 (regOne!32346 r!7292)))) b!5851694))

(assert (= (and b!5850748 ((_ is Concat!24762) (reg!16246 (regOne!32346 r!7292)))) b!5851695))

(assert (= (and b!5850748 ((_ is Star!15917) (reg!16246 (regOne!32346 r!7292)))) b!5851696))

(assert (= (and b!5850748 ((_ is Union!15917) (reg!16246 (regOne!32346 r!7292)))) b!5851697))

(declare-fun b!5851698 () Bool)

(declare-fun e!3588449 () Bool)

(assert (=> b!5851698 (= e!3588449 tp_is_empty!41087)))

(declare-fun b!5851699 () Bool)

(declare-fun tp!1618827 () Bool)

(declare-fun tp!1618826 () Bool)

(assert (=> b!5851699 (= e!3588449 (and tp!1618827 tp!1618826))))

(assert (=> b!5850740 (= tp!1618527 e!3588449)))

(declare-fun b!5851700 () Bool)

(declare-fun tp!1618828 () Bool)

(assert (=> b!5851700 (= e!3588449 tp!1618828)))

(declare-fun b!5851701 () Bool)

(declare-fun tp!1618829 () Bool)

(declare-fun tp!1618825 () Bool)

(assert (=> b!5851701 (= e!3588449 (and tp!1618829 tp!1618825))))

(assert (= (and b!5850740 ((_ is ElementMatch!15917) (h!70374 (exprs!5801 (h!70375 zl!343))))) b!5851698))

(assert (= (and b!5850740 ((_ is Concat!24762) (h!70374 (exprs!5801 (h!70375 zl!343))))) b!5851699))

(assert (= (and b!5850740 ((_ is Star!15917) (h!70374 (exprs!5801 (h!70375 zl!343))))) b!5851700))

(assert (= (and b!5850740 ((_ is Union!15917) (h!70374 (exprs!5801 (h!70375 zl!343))))) b!5851701))

(declare-fun b!5851702 () Bool)

(declare-fun e!3588450 () Bool)

(declare-fun tp!1618830 () Bool)

(declare-fun tp!1618831 () Bool)

(assert (=> b!5851702 (= e!3588450 (and tp!1618830 tp!1618831))))

(assert (=> b!5850740 (= tp!1618528 e!3588450)))

(assert (= (and b!5850740 ((_ is Cons!63926) (t!377411 (exprs!5801 (h!70375 zl!343))))) b!5851702))

(declare-fun b!5851703 () Bool)

(declare-fun e!3588451 () Bool)

(assert (=> b!5851703 (= e!3588451 tp_is_empty!41087)))

(declare-fun b!5851704 () Bool)

(declare-fun tp!1618834 () Bool)

(declare-fun tp!1618833 () Bool)

(assert (=> b!5851704 (= e!3588451 (and tp!1618834 tp!1618833))))

(assert (=> b!5850755 (= tp!1618547 e!3588451)))

(declare-fun b!5851705 () Bool)

(declare-fun tp!1618835 () Bool)

(assert (=> b!5851705 (= e!3588451 tp!1618835)))

(declare-fun b!5851706 () Bool)

(declare-fun tp!1618836 () Bool)

(declare-fun tp!1618832 () Bool)

(assert (=> b!5851706 (= e!3588451 (and tp!1618836 tp!1618832))))

(assert (= (and b!5850755 ((_ is ElementMatch!15917) (regOne!32346 (regOne!32347 r!7292)))) b!5851703))

(assert (= (and b!5850755 ((_ is Concat!24762) (regOne!32346 (regOne!32347 r!7292)))) b!5851704))

(assert (= (and b!5850755 ((_ is Star!15917) (regOne!32346 (regOne!32347 r!7292)))) b!5851705))

(assert (= (and b!5850755 ((_ is Union!15917) (regOne!32346 (regOne!32347 r!7292)))) b!5851706))

(declare-fun b!5851707 () Bool)

(declare-fun e!3588452 () Bool)

(assert (=> b!5851707 (= e!3588452 tp_is_empty!41087)))

(declare-fun b!5851708 () Bool)

(declare-fun tp!1618839 () Bool)

(declare-fun tp!1618838 () Bool)

(assert (=> b!5851708 (= e!3588452 (and tp!1618839 tp!1618838))))

(assert (=> b!5850755 (= tp!1618546 e!3588452)))

(declare-fun b!5851709 () Bool)

(declare-fun tp!1618840 () Bool)

(assert (=> b!5851709 (= e!3588452 tp!1618840)))

(declare-fun b!5851710 () Bool)

(declare-fun tp!1618841 () Bool)

(declare-fun tp!1618837 () Bool)

(assert (=> b!5851710 (= e!3588452 (and tp!1618841 tp!1618837))))

(assert (= (and b!5850755 ((_ is ElementMatch!15917) (regTwo!32346 (regOne!32347 r!7292)))) b!5851707))

(assert (= (and b!5850755 ((_ is Concat!24762) (regTwo!32346 (regOne!32347 r!7292)))) b!5851708))

(assert (= (and b!5850755 ((_ is Star!15917) (regTwo!32346 (regOne!32347 r!7292)))) b!5851709))

(assert (= (and b!5850755 ((_ is Union!15917) (regTwo!32346 (regOne!32347 r!7292)))) b!5851710))

(declare-fun b!5851711 () Bool)

(declare-fun e!3588453 () Bool)

(assert (=> b!5851711 (= e!3588453 tp_is_empty!41087)))

(declare-fun b!5851712 () Bool)

(declare-fun tp!1618844 () Bool)

(declare-fun tp!1618843 () Bool)

(assert (=> b!5851712 (= e!3588453 (and tp!1618844 tp!1618843))))

(assert (=> b!5850728 (= tp!1618517 e!3588453)))

(declare-fun b!5851713 () Bool)

(declare-fun tp!1618845 () Bool)

(assert (=> b!5851713 (= e!3588453 tp!1618845)))

(declare-fun b!5851714 () Bool)

(declare-fun tp!1618846 () Bool)

(declare-fun tp!1618842 () Bool)

(assert (=> b!5851714 (= e!3588453 (and tp!1618846 tp!1618842))))

(assert (= (and b!5850728 ((_ is ElementMatch!15917) (regOne!32346 (reg!16246 r!7292)))) b!5851711))

(assert (= (and b!5850728 ((_ is Concat!24762) (regOne!32346 (reg!16246 r!7292)))) b!5851712))

(assert (= (and b!5850728 ((_ is Star!15917) (regOne!32346 (reg!16246 r!7292)))) b!5851713))

(assert (= (and b!5850728 ((_ is Union!15917) (regOne!32346 (reg!16246 r!7292)))) b!5851714))

(declare-fun b!5851715 () Bool)

(declare-fun e!3588454 () Bool)

(assert (=> b!5851715 (= e!3588454 tp_is_empty!41087)))

(declare-fun b!5851716 () Bool)

(declare-fun tp!1618849 () Bool)

(declare-fun tp!1618848 () Bool)

(assert (=> b!5851716 (= e!3588454 (and tp!1618849 tp!1618848))))

(assert (=> b!5850728 (= tp!1618516 e!3588454)))

(declare-fun b!5851717 () Bool)

(declare-fun tp!1618850 () Bool)

(assert (=> b!5851717 (= e!3588454 tp!1618850)))

(declare-fun b!5851718 () Bool)

(declare-fun tp!1618851 () Bool)

(declare-fun tp!1618847 () Bool)

(assert (=> b!5851718 (= e!3588454 (and tp!1618851 tp!1618847))))

(assert (= (and b!5850728 ((_ is ElementMatch!15917) (regTwo!32346 (reg!16246 r!7292)))) b!5851715))

(assert (= (and b!5850728 ((_ is Concat!24762) (regTwo!32346 (reg!16246 r!7292)))) b!5851716))

(assert (= (and b!5850728 ((_ is Star!15917) (regTwo!32346 (reg!16246 r!7292)))) b!5851717))

(assert (= (and b!5850728 ((_ is Union!15917) (regTwo!32346 (reg!16246 r!7292)))) b!5851718))

(declare-fun b!5851719 () Bool)

(declare-fun e!3588455 () Bool)

(assert (=> b!5851719 (= e!3588455 tp_is_empty!41087)))

(declare-fun b!5851720 () Bool)

(declare-fun tp!1618854 () Bool)

(declare-fun tp!1618853 () Bool)

(assert (=> b!5851720 (= e!3588455 (and tp!1618854 tp!1618853))))

(assert (=> b!5850729 (= tp!1618518 e!3588455)))

(declare-fun b!5851721 () Bool)

(declare-fun tp!1618855 () Bool)

(assert (=> b!5851721 (= e!3588455 tp!1618855)))

(declare-fun b!5851722 () Bool)

(declare-fun tp!1618856 () Bool)

(declare-fun tp!1618852 () Bool)

(assert (=> b!5851722 (= e!3588455 (and tp!1618856 tp!1618852))))

(assert (= (and b!5850729 ((_ is ElementMatch!15917) (reg!16246 (reg!16246 r!7292)))) b!5851719))

(assert (= (and b!5850729 ((_ is Concat!24762) (reg!16246 (reg!16246 r!7292)))) b!5851720))

(assert (= (and b!5850729 ((_ is Star!15917) (reg!16246 (reg!16246 r!7292)))) b!5851721))

(assert (= (and b!5850729 ((_ is Union!15917) (reg!16246 (reg!16246 r!7292)))) b!5851722))

(declare-fun b!5851723 () Bool)

(declare-fun e!3588456 () Bool)

(assert (=> b!5851723 (= e!3588456 tp_is_empty!41087)))

(declare-fun b!5851724 () Bool)

(declare-fun tp!1618859 () Bool)

(declare-fun tp!1618858 () Bool)

(assert (=> b!5851724 (= e!3588456 (and tp!1618859 tp!1618858))))

(assert (=> b!5850730 (= tp!1618519 e!3588456)))

(declare-fun b!5851725 () Bool)

(declare-fun tp!1618860 () Bool)

(assert (=> b!5851725 (= e!3588456 tp!1618860)))

(declare-fun b!5851726 () Bool)

(declare-fun tp!1618861 () Bool)

(declare-fun tp!1618857 () Bool)

(assert (=> b!5851726 (= e!3588456 (and tp!1618861 tp!1618857))))

(assert (= (and b!5850730 ((_ is ElementMatch!15917) (regOne!32347 (reg!16246 r!7292)))) b!5851723))

(assert (= (and b!5850730 ((_ is Concat!24762) (regOne!32347 (reg!16246 r!7292)))) b!5851724))

(assert (= (and b!5850730 ((_ is Star!15917) (regOne!32347 (reg!16246 r!7292)))) b!5851725))

(assert (= (and b!5850730 ((_ is Union!15917) (regOne!32347 (reg!16246 r!7292)))) b!5851726))

(declare-fun b!5851727 () Bool)

(declare-fun e!3588457 () Bool)

(assert (=> b!5851727 (= e!3588457 tp_is_empty!41087)))

(declare-fun b!5851728 () Bool)

(declare-fun tp!1618864 () Bool)

(declare-fun tp!1618863 () Bool)

(assert (=> b!5851728 (= e!3588457 (and tp!1618864 tp!1618863))))

(assert (=> b!5850730 (= tp!1618515 e!3588457)))

(declare-fun b!5851729 () Bool)

(declare-fun tp!1618865 () Bool)

(assert (=> b!5851729 (= e!3588457 tp!1618865)))

(declare-fun b!5851730 () Bool)

(declare-fun tp!1618866 () Bool)

(declare-fun tp!1618862 () Bool)

(assert (=> b!5851730 (= e!3588457 (and tp!1618866 tp!1618862))))

(assert (= (and b!5850730 ((_ is ElementMatch!15917) (regTwo!32347 (reg!16246 r!7292)))) b!5851727))

(assert (= (and b!5850730 ((_ is Concat!24762) (regTwo!32347 (reg!16246 r!7292)))) b!5851728))

(assert (= (and b!5850730 ((_ is Star!15917) (regTwo!32347 (reg!16246 r!7292)))) b!5851729))

(assert (= (and b!5850730 ((_ is Union!15917) (regTwo!32347 (reg!16246 r!7292)))) b!5851730))

(declare-fun b!5851731 () Bool)

(declare-fun e!3588458 () Bool)

(assert (=> b!5851731 (= e!3588458 tp_is_empty!41087)))

(declare-fun b!5851732 () Bool)

(declare-fun tp!1618869 () Bool)

(declare-fun tp!1618868 () Bool)

(assert (=> b!5851732 (= e!3588458 (and tp!1618869 tp!1618868))))

(assert (=> b!5850749 (= tp!1618539 e!3588458)))

(declare-fun b!5851733 () Bool)

(declare-fun tp!1618870 () Bool)

(assert (=> b!5851733 (= e!3588458 tp!1618870)))

(declare-fun b!5851734 () Bool)

(declare-fun tp!1618871 () Bool)

(declare-fun tp!1618867 () Bool)

(assert (=> b!5851734 (= e!3588458 (and tp!1618871 tp!1618867))))

(assert (= (and b!5850749 ((_ is ElementMatch!15917) (regOne!32347 (regOne!32346 r!7292)))) b!5851731))

(assert (= (and b!5850749 ((_ is Concat!24762) (regOne!32347 (regOne!32346 r!7292)))) b!5851732))

(assert (= (and b!5850749 ((_ is Star!15917) (regOne!32347 (regOne!32346 r!7292)))) b!5851733))

(assert (= (and b!5850749 ((_ is Union!15917) (regOne!32347 (regOne!32346 r!7292)))) b!5851734))

(declare-fun b!5851735 () Bool)

(declare-fun e!3588459 () Bool)

(assert (=> b!5851735 (= e!3588459 tp_is_empty!41087)))

(declare-fun b!5851736 () Bool)

(declare-fun tp!1618874 () Bool)

(declare-fun tp!1618873 () Bool)

(assert (=> b!5851736 (= e!3588459 (and tp!1618874 tp!1618873))))

(assert (=> b!5850749 (= tp!1618535 e!3588459)))

(declare-fun b!5851737 () Bool)

(declare-fun tp!1618875 () Bool)

(assert (=> b!5851737 (= e!3588459 tp!1618875)))

(declare-fun b!5851738 () Bool)

(declare-fun tp!1618876 () Bool)

(declare-fun tp!1618872 () Bool)

(assert (=> b!5851738 (= e!3588459 (and tp!1618876 tp!1618872))))

(assert (= (and b!5850749 ((_ is ElementMatch!15917) (regTwo!32347 (regOne!32346 r!7292)))) b!5851735))

(assert (= (and b!5850749 ((_ is Concat!24762) (regTwo!32347 (regOne!32346 r!7292)))) b!5851736))

(assert (= (and b!5850749 ((_ is Star!15917) (regTwo!32347 (regOne!32346 r!7292)))) b!5851737))

(assert (= (and b!5850749 ((_ is Union!15917) (regTwo!32347 (regOne!32346 r!7292)))) b!5851738))

(declare-fun b_lambda!220271 () Bool)

(assert (= b_lambda!220257 (or d!1837488 b_lambda!220271)))

(declare-fun bs!1378874 () Bool)

(declare-fun d!1837898 () Bool)

(assert (= bs!1378874 (and d!1837898 d!1837488)))

(assert (=> bs!1378874 (= (dynLambda!24990 lambda!319906 (h!70374 (exprs!5801 (h!70375 zl!343)))) (validRegex!7653 (h!70374 (exprs!5801 (h!70375 zl!343)))))))

(declare-fun m!6771458 () Bool)

(assert (=> bs!1378874 m!6771458))

(assert (=> b!5851285 d!1837898))

(declare-fun b_lambda!220273 () Bool)

(assert (= b_lambda!220267 (or d!1837466 b_lambda!220273)))

(declare-fun bs!1378875 () Bool)

(declare-fun d!1837900 () Bool)

(assert (= bs!1378875 (and d!1837900 d!1837466)))

(assert (=> bs!1378875 (= (dynLambda!24990 lambda!319897 (h!70374 (exprs!5801 (Context!10603 (Cons!63926 (regOne!32347 r!7292) Nil!63926))))) (validRegex!7653 (h!70374 (exprs!5801 (Context!10603 (Cons!63926 (regOne!32347 r!7292) Nil!63926))))))))

(declare-fun m!6771460 () Bool)

(assert (=> bs!1378875 m!6771460))

(assert (=> b!5851587 d!1837900))

(declare-fun b_lambda!220275 () Bool)

(assert (= b_lambda!220269 (or d!1837472 b_lambda!220275)))

(declare-fun bs!1378876 () Bool)

(declare-fun d!1837902 () Bool)

(assert (= bs!1378876 (and d!1837902 d!1837472)))

(assert (=> bs!1378876 (= (dynLambda!24990 lambda!319898 (h!70374 (exprs!5801 (h!70375 zl!343)))) (validRegex!7653 (h!70374 (exprs!5801 (h!70375 zl!343)))))))

(assert (=> bs!1378876 m!6771458))

(assert (=> b!5851619 d!1837902))

(declare-fun b_lambda!220277 () Bool)

(assert (= b_lambda!220263 (or b!5849976 b_lambda!220277)))

(assert (=> d!1837816 d!1837496))

(declare-fun b_lambda!220279 () Bool)

(assert (= b_lambda!220259 (or d!1837446 b_lambda!220279)))

(declare-fun bs!1378877 () Bool)

(declare-fun d!1837904 () Bool)

(assert (= bs!1378877 (and d!1837904 d!1837446)))

(assert (=> bs!1378877 (= (dynLambda!24990 lambda!319890 (h!70374 (unfocusZipperList!1338 zl!343))) (validRegex!7653 (h!70374 (unfocusZipperList!1338 zl!343))))))

(declare-fun m!6771462 () Bool)

(assert (=> bs!1378877 m!6771462))

(assert (=> b!5851296 d!1837904))

(declare-fun b_lambda!220281 () Bool)

(assert (= b_lambda!220265 (or d!1837454 b_lambda!220281)))

(declare-fun bs!1378878 () Bool)

(declare-fun d!1837906 () Bool)

(assert (= bs!1378878 (and d!1837906 d!1837454)))

(assert (=> bs!1378878 (= (dynLambda!24990 lambda!319896 (h!70374 (exprs!5801 setElem!39630))) (validRegex!7653 (h!70374 (exprs!5801 setElem!39630))))))

(declare-fun m!6771464 () Bool)

(assert (=> bs!1378878 m!6771464))

(assert (=> b!5851575 d!1837906))

(declare-fun b_lambda!220283 () Bool)

(assert (= b_lambda!220261 (or d!1837448 b_lambda!220283)))

(declare-fun bs!1378879 () Bool)

(declare-fun d!1837908 () Bool)

(assert (= bs!1378879 (and d!1837908 d!1837448)))

(assert (=> bs!1378879 (= (dynLambda!24990 lambda!319893 (h!70374 lt!2304373)) (validRegex!7653 (h!70374 lt!2304373)))))

(declare-fun m!6771466 () Bool)

(assert (=> bs!1378879 m!6771466))

(assert (=> b!5851336 d!1837908))

(check-sat (not b!5851459) (not d!1837852) (not d!1837776) (not b!5851258) (not bm!457928) (not d!1837816) (not bm!458001) (not b!5851410) (not b_lambda!220273) (not bm!458004) (not b!5851412) (not b!5851651) (not b!5851675) (not b!5851667) (not b!5851576) (not b!5851737) (not b!5851586) (not b_lambda!220271) (not b!5851589) (not bm!457940) (not b!5851720) (not d!1837812) (not bm!458013) (not b!5851585) (not b!5851584) (not d!1837786) (not b!5851553) (not bs!1378876) (not bm!457972) (not b!5851527) (not b!5851670) (not b!5851674) (not d!1837750) (not d!1837778) (not bm!457949) (not b!5851730) (not b!5851718) (not bm!457937) (not b!5851704) (not b!5851615) (not b!5851714) (not bm!457920) (not b!5851384) (not b!5851379) (not d!1837738) (not d!1837868) (not d!1837896) (not d!1837806) (not b!5851601) (not b!5851682) (not d!1837856) (not bm!457983) (not b!5851487) (not b!5851725) (not d!1837862) (not bm!457934) (not d!1837752) (not b!5851300) (not bm!458008) (not b!5851511) (not bm!457952) (not b!5851671) (not b!5851634) (not b!5851309) (not b!5851648) (not b!5851252) (not d!1837870) (not b!5851508) (not bm!457991) (not b!5851669) (not d!1837704) (not b!5851509) (not b!5851733) (not d!1837764) (not b!5851530) (not b!5851438) (not b!5851639) (not b!5851263) (not bm!457994) (not b_lambda!220277) (not d!1837842) (not bm!458015) tp_is_empty!41087 (not b_lambda!220227) (not bm!457993) (not bm!457925) (not b!5851257) (not bm!457923) (not b!5851658) (not b!5851538) (not b!5851666) (not b!5851692) (not b!5851689) (not bm!457942) (not b!5851254) (not b!5851286) (not b!5851578) (not b!5851630) (not b!5851624) (not b!5851525) (not b!5851650) (not b!5851678) (not d!1837854) (not bm!457967) (not d!1837810) (not bs!1378874) (not b!5851310) (not b!5851532) (not b!5851708) (not b!5851628) (not d!1837754) (not bm!457943) (not b!5851712) (not b!5851304) (not b!5851716) (not d!1837736) (not b!5851506) (not d!1837830) (not b!5851717) (not b!5851403) (not b!5851405) (not d!1837772) (not bm!458000) (not b!5851643) (not b!5851590) (not b!5851685) (not b!5851734) (not bm!457935) (not b!5851515) (not b!5851267) (not b!5851672) (not b!5851705) (not b!5851653) (not b!5851256) (not b!5851700) (not b!5851736) (not b!5851570) (not b!5851495) (not b!5851381) (not b!5851337) (not b!5851659) (not b!5851647) (not d!1837826) (not b!5851636) (not b!5851697) (not b!5851696) (not b!5851722) (not b!5851398) (not b!5851724) (not bm!457987) (not d!1837894) (not b!5851453) (not bm!458014) (not b!5851332) (not b!5851640) (not b!5851684) (not b!5851380) (not bm!457971) (not bm!457929) (not bm!457975) (not bs!1378878) (not b!5851621) (not b!5851415) (not bm!457966) (not b!5851699) (not b!5851721) (not bm!458007) (not b!5851463) (not b!5851663) (not b!5851641) (not d!1837782) (not d!1837860) (not b!5851649) (not b!5851492) (not b!5851629) (not b!5851507) (not bm!457932) (not bm!457984) (not b_lambda!220283) (not b!5851632) (not b!5851480) (not b!5851253) (not b!5851607) (not bm!457999) (not bm!457938) (not b!5851654) (not b!5851571) (not b!5851626) (not d!1837800) (not b!5851687) (not b!5851637) (not b!5851484) (not bm!457921) (not bm!457986) (not bs!1378879) (not b!5851633) (not bm!457976) (not b!5851679) (not b!5851335) (not bm!457979) (not b!5851710) (not b!5851407) (not bm!457980) (not b!5851662) (not bs!1378875) (not setNonEmpty!39644) (not bm!457927) (not b!5851657) (not d!1837712) (not b!5851577) (not bm!458005) (not d!1837890) (not b!5851693) (not d!1837728) (not b!5851713) (not b!5851701) (not d!1837846) (not d!1837874) (not bm!457968) (not b!5851504) (not b!5851728) (not bm!458009) (not d!1837814) (not b!5851568) (not b!5851324) (not d!1837706) (not b!5851726) (not b!5851706) (not b!5851732) (not bm!457924) (not b!5851644) (not b!5851512) (not d!1837768) (not b!5851475) (not b!5851482) (not b!5851676) (not d!1837882) (not b!5851318) (not b!5851297) (not b!5851695) (not b!5851360) (not b!5851625) (not bm!457918) (not b!5851289) (not bm!457974) (not b!5851738) (not b!5851340) (not d!1837798) (not setNonEmpty!39643) (not d!1837788) (not d!1837832) (not b!5851535) (not b!5851661) (not b!5851683) (not bm!457988) (not bs!1378877) (not bm!457917) (not b!5851680) (not bm!457964) (not b!5851665) (not bm!457995) (not bm!457961) (not b!5851635) (not d!1837720) (not b!5851620) (not b!5851729) (not b!5851688) (not b!5851349) (not bm!457916) (not bm!457947) (not b!5851691) (not b!5851489) (not b_lambda!220279) (not bm!457939) (not d!1837746) (not bm!457948) (not b!5851371) (not bm!457945) (not b!5851645) (not b!5851709) (not b!5851372) (not b!5851255) (not b!5851564) (not b!5851702) (not b_lambda!220281) (not b!5851274) (not b!5851331) (not b_lambda!220275) (not b!5851353) (not b!5851622) (not b!5851588) (not b!5851523) (not b!5851655))
(check-sat)
