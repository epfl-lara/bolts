; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!618478 () Bool)

(assert start!618478)

(declare-fun b!6201983 () Bool)

(assert (=> b!6201983 true))

(assert (=> b!6201983 true))

(declare-fun lambda!338902 () Int)

(declare-fun lambda!338901 () Int)

(assert (=> b!6201983 (not (= lambda!338902 lambda!338901))))

(assert (=> b!6201983 true))

(assert (=> b!6201983 true))

(declare-fun b!6201985 () Bool)

(assert (=> b!6201985 true))

(declare-fun b!6201972 () Bool)

(declare-fun res!2565257 () Bool)

(declare-fun e!3776618 () Bool)

(assert (=> b!6201972 (=> res!2565257 e!3776618)))

(declare-datatypes ((C!32556 0))(
  ( (C!32557 (val!25980 Int)) )
))
(declare-datatypes ((Regex!16143 0))(
  ( (ElementMatch!16143 (c!1119610 C!32556)) (Concat!24988 (regOne!32798 Regex!16143) (regTwo!32798 Regex!16143)) (EmptyExpr!16143) (Star!16143 (reg!16472 Regex!16143)) (EmptyLang!16143) (Union!16143 (regOne!32799 Regex!16143) (regTwo!32799 Regex!16143)) )
))
(declare-fun r!7292 () Regex!16143)

(declare-datatypes ((List!64728 0))(
  ( (Nil!64604) (Cons!64604 (h!71052 Regex!16143) (t!378246 List!64728)) )
))
(declare-datatypes ((Context!11054 0))(
  ( (Context!11055 (exprs!6027 List!64728)) )
))
(declare-datatypes ((List!64729 0))(
  ( (Nil!64605) (Cons!64605 (h!71053 Context!11054) (t!378247 List!64729)) )
))
(declare-fun zl!343 () List!64729)

(declare-fun generalisedUnion!1987 (List!64728) Regex!16143)

(declare-fun unfocusZipperList!1564 (List!64729) List!64728)

(assert (=> b!6201972 (= res!2565257 (not (= r!7292 (generalisedUnion!1987 (unfocusZipperList!1564 zl!343)))))))

(declare-fun b!6201973 () Bool)

(declare-fun e!3776624 () Bool)

(declare-fun tp_is_empty!41539 () Bool)

(assert (=> b!6201973 (= e!3776624 tp_is_empty!41539)))

(declare-fun b!6201974 () Bool)

(declare-fun res!2565264 () Bool)

(declare-fun e!3776623 () Bool)

(assert (=> b!6201974 (=> res!2565264 e!3776623)))

(declare-fun isEmpty!36598 (List!64728) Bool)

(assert (=> b!6201974 (= res!2565264 (isEmpty!36598 (t!378246 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun b!6201975 () Bool)

(declare-fun res!2565263 () Bool)

(assert (=> b!6201975 (=> res!2565263 e!3776618)))

(get-info :version)

(assert (=> b!6201975 (= res!2565263 (or ((_ is EmptyExpr!16143) r!7292) ((_ is EmptyLang!16143) r!7292) ((_ is ElementMatch!16143) r!7292) ((_ is Union!16143) r!7292) (not ((_ is Concat!24988) r!7292))))))

(declare-fun b!6201976 () Bool)

(declare-fun res!2565268 () Bool)

(assert (=> b!6201976 (=> res!2565268 e!3776618)))

(assert (=> b!6201976 (= res!2565268 (not ((_ is Cons!64604) (exprs!6027 (h!71053 zl!343)))))))

(declare-fun b!6201977 () Bool)

(declare-fun e!3776617 () Bool)

(assert (=> b!6201977 (= e!3776617 (not e!3776618))))

(declare-fun res!2565259 () Bool)

(assert (=> b!6201977 (=> res!2565259 e!3776618)))

(assert (=> b!6201977 (= res!2565259 (not ((_ is Cons!64605) zl!343)))))

(declare-fun lt!2343074 () Bool)

(declare-datatypes ((List!64730 0))(
  ( (Nil!64606) (Cons!64606 (h!71054 C!32556) (t!378248 List!64730)) )
))
(declare-fun s!2326 () List!64730)

(declare-fun matchRSpec!3244 (Regex!16143 List!64730) Bool)

(assert (=> b!6201977 (= lt!2343074 (matchRSpec!3244 r!7292 s!2326))))

(declare-fun matchR!8326 (Regex!16143 List!64730) Bool)

(assert (=> b!6201977 (= lt!2343074 (matchR!8326 r!7292 s!2326))))

(declare-datatypes ((Unit!157903 0))(
  ( (Unit!157904) )
))
(declare-fun lt!2343067 () Unit!157903)

(declare-fun mainMatchTheorem!3244 (Regex!16143 List!64730) Unit!157903)

(assert (=> b!6201977 (= lt!2343067 (mainMatchTheorem!3244 r!7292 s!2326))))

(declare-fun b!6201978 () Bool)

(declare-fun res!2565269 () Bool)

(assert (=> b!6201978 (=> (not res!2565269) (not e!3776617))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11054))

(declare-fun toList!9927 ((InoxSet Context!11054)) List!64729)

(assert (=> b!6201978 (= res!2565269 (= (toList!9927 z!1189) zl!343))))

(declare-fun b!6201979 () Bool)

(declare-fun e!3776620 () Bool)

(declare-fun lt!2343064 () (InoxSet Context!11054))

(declare-fun matchZipper!2155 ((InoxSet Context!11054) List!64730) Bool)

(assert (=> b!6201979 (= e!3776620 (matchZipper!2155 lt!2343064 (t!378248 s!2326)))))

(declare-fun b!6201980 () Bool)

(declare-fun res!2565256 () Bool)

(assert (=> b!6201980 (=> res!2565256 e!3776618)))

(declare-fun isEmpty!36599 (List!64729) Bool)

(assert (=> b!6201980 (= res!2565256 (not (isEmpty!36599 (t!378247 zl!343))))))

(declare-fun res!2565261 () Bool)

(assert (=> start!618478 (=> (not res!2565261) (not e!3776617))))

(declare-fun validRegex!7879 (Regex!16143) Bool)

(assert (=> start!618478 (= res!2565261 (validRegex!7879 r!7292))))

(assert (=> start!618478 e!3776617))

(assert (=> start!618478 e!3776624))

(declare-fun condSetEmpty!42104 () Bool)

(assert (=> start!618478 (= condSetEmpty!42104 (= z!1189 ((as const (Array Context!11054 Bool)) false)))))

(declare-fun setRes!42104 () Bool)

(assert (=> start!618478 setRes!42104))

(declare-fun e!3776614 () Bool)

(assert (=> start!618478 e!3776614))

(declare-fun e!3776622 () Bool)

(assert (=> start!618478 e!3776622))

(declare-fun e!3776615 () Bool)

(declare-fun tp!1729793 () Bool)

(declare-fun b!6201981 () Bool)

(declare-fun inv!83604 (Context!11054) Bool)

(assert (=> b!6201981 (= e!3776614 (and (inv!83604 (h!71053 zl!343)) e!3776615 tp!1729793))))

(declare-fun b!6201982 () Bool)

(declare-fun e!3776619 () Bool)

(declare-fun lt!2343073 () Context!11054)

(assert (=> b!6201982 (= e!3776619 (inv!83604 lt!2343073))))

(assert (=> b!6201983 (= e!3776618 e!3776623)))

(declare-fun res!2565258 () Bool)

(assert (=> b!6201983 (=> res!2565258 e!3776623)))

(declare-fun lt!2343072 () Bool)

(assert (=> b!6201983 (= res!2565258 (or (not (= lt!2343074 lt!2343072)) ((_ is Nil!64606) s!2326)))))

(declare-fun Exists!3213 (Int) Bool)

(assert (=> b!6201983 (= (Exists!3213 lambda!338901) (Exists!3213 lambda!338902))))

(declare-fun lt!2343075 () Unit!157903)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1750 (Regex!16143 Regex!16143 List!64730) Unit!157903)

(assert (=> b!6201983 (= lt!2343075 (lemmaExistCutMatchRandMatchRSpecEquivalent!1750 (regOne!32798 r!7292) (regTwo!32798 r!7292) s!2326))))

(assert (=> b!6201983 (= lt!2343072 (Exists!3213 lambda!338901))))

(declare-datatypes ((tuple2!66244 0))(
  ( (tuple2!66245 (_1!36425 List!64730) (_2!36425 List!64730)) )
))
(declare-datatypes ((Option!16034 0))(
  ( (None!16033) (Some!16033 (v!52176 tuple2!66244)) )
))
(declare-fun isDefined!12737 (Option!16034) Bool)

(declare-fun findConcatSeparation!2448 (Regex!16143 Regex!16143 List!64730 List!64730 List!64730) Option!16034)

(assert (=> b!6201983 (= lt!2343072 (isDefined!12737 (findConcatSeparation!2448 (regOne!32798 r!7292) (regTwo!32798 r!7292) Nil!64606 s!2326 s!2326)))))

(declare-fun lt!2343070 () Unit!157903)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2212 (Regex!16143 Regex!16143 List!64730) Unit!157903)

(assert (=> b!6201983 (= lt!2343070 (lemmaFindConcatSeparationEquivalentToExists!2212 (regOne!32798 r!7292) (regTwo!32798 r!7292) s!2326))))

(declare-fun b!6201984 () Bool)

(declare-fun e!3776625 () Bool)

(assert (=> b!6201984 (= e!3776625 e!3776619)))

(declare-fun res!2565265 () Bool)

(assert (=> b!6201984 (=> res!2565265 e!3776619)))

(declare-fun lt!2343076 () Context!11054)

(declare-fun lt!2343071 () (InoxSet Context!11054))

(declare-fun derivationStepZipperDown!1391 (Regex!16143 Context!11054 C!32556) (InoxSet Context!11054))

(assert (=> b!6201984 (= res!2565265 (not (= lt!2343071 ((_ map or) (derivationStepZipperDown!1391 (regOne!32798 (regOne!32798 r!7292)) lt!2343073 (h!71054 s!2326)) (derivationStepZipperDown!1391 (regTwo!32798 (regOne!32798 r!7292)) lt!2343076 (h!71054 s!2326))))))))

(assert (=> b!6201984 (= lt!2343073 (Context!11055 (Cons!64604 (regTwo!32798 (regOne!32798 r!7292)) (t!378246 (exprs!6027 (h!71053 zl!343))))))))

(assert (=> b!6201985 (= e!3776623 e!3776625)))

(declare-fun res!2565267 () Bool)

(assert (=> b!6201985 (=> res!2565267 e!3776625)))

(assert (=> b!6201985 (= res!2565267 (or (and ((_ is ElementMatch!16143) (regOne!32798 r!7292)) (= (c!1119610 (regOne!32798 r!7292)) (h!71054 s!2326))) ((_ is Union!16143) (regOne!32798 r!7292)) (not ((_ is Concat!24988) (regOne!32798 r!7292)))))))

(declare-fun lt!2343065 () Unit!157903)

(declare-fun e!3776616 () Unit!157903)

(assert (=> b!6201985 (= lt!2343065 e!3776616)))

(declare-fun c!1119609 () Bool)

(declare-fun nullable!6136 (Regex!16143) Bool)

(assert (=> b!6201985 (= c!1119609 (nullable!6136 (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun lambda!338903 () Int)

(declare-fun flatMap!1648 ((InoxSet Context!11054) Int) (InoxSet Context!11054))

(declare-fun derivationStepZipperUp!1317 (Context!11054 C!32556) (InoxSet Context!11054))

(assert (=> b!6201985 (= (flatMap!1648 z!1189 lambda!338903) (derivationStepZipperUp!1317 (h!71053 zl!343) (h!71054 s!2326)))))

(declare-fun lt!2343068 () Unit!157903)

(declare-fun lemmaFlatMapOnSingletonSet!1174 ((InoxSet Context!11054) Context!11054 Int) Unit!157903)

(assert (=> b!6201985 (= lt!2343068 (lemmaFlatMapOnSingletonSet!1174 z!1189 (h!71053 zl!343) lambda!338903))))

(assert (=> b!6201985 (= lt!2343064 (derivationStepZipperUp!1317 lt!2343076 (h!71054 s!2326)))))

(assert (=> b!6201985 (= lt!2343071 (derivationStepZipperDown!1391 (h!71052 (exprs!6027 (h!71053 zl!343))) lt!2343076 (h!71054 s!2326)))))

(assert (=> b!6201985 (= lt!2343076 (Context!11055 (t!378246 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun lt!2343066 () (InoxSet Context!11054))

(assert (=> b!6201985 (= lt!2343066 (derivationStepZipperUp!1317 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343))))) (h!71054 s!2326)))))

(declare-fun b!6201986 () Bool)

(declare-fun tp!1729797 () Bool)

(assert (=> b!6201986 (= e!3776622 (and tp_is_empty!41539 tp!1729797))))

(declare-fun b!6201987 () Bool)

(declare-fun tp!1729801 () Bool)

(assert (=> b!6201987 (= e!3776624 tp!1729801)))

(declare-fun b!6201988 () Bool)

(declare-fun res!2565266 () Bool)

(assert (=> b!6201988 (=> res!2565266 e!3776618)))

(declare-fun generalisedConcat!1740 (List!64728) Regex!16143)

(assert (=> b!6201988 (= res!2565266 (not (= r!7292 (generalisedConcat!1740 (exprs!6027 (h!71053 zl!343))))))))

(declare-fun b!6201989 () Bool)

(declare-fun res!2565262 () Bool)

(assert (=> b!6201989 (=> (not res!2565262) (not e!3776617))))

(declare-fun unfocusZipper!1885 (List!64729) Regex!16143)

(assert (=> b!6201989 (= res!2565262 (= r!7292 (unfocusZipper!1885 zl!343)))))

(declare-fun b!6201990 () Bool)

(declare-fun e!3776621 () Bool)

(declare-fun tp!1729794 () Bool)

(assert (=> b!6201990 (= e!3776621 tp!1729794)))

(declare-fun setIsEmpty!42104 () Bool)

(assert (=> setIsEmpty!42104 setRes!42104))

(declare-fun b!6201991 () Bool)

(declare-fun Unit!157905 () Unit!157903)

(assert (=> b!6201991 (= e!3776616 Unit!157905)))

(declare-fun lt!2343069 () Unit!157903)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!974 ((InoxSet Context!11054) (InoxSet Context!11054) List!64730) Unit!157903)

(assert (=> b!6201991 (= lt!2343069 (lemmaZipperConcatMatchesSameAsBothZippers!974 lt!2343071 lt!2343064 (t!378248 s!2326)))))

(declare-fun res!2565255 () Bool)

(assert (=> b!6201991 (= res!2565255 (matchZipper!2155 lt!2343071 (t!378248 s!2326)))))

(assert (=> b!6201991 (=> res!2565255 e!3776620)))

(assert (=> b!6201991 (= (matchZipper!2155 ((_ map or) lt!2343071 lt!2343064) (t!378248 s!2326)) e!3776620)))

(declare-fun setElem!42104 () Context!11054)

(declare-fun tp!1729796 () Bool)

(declare-fun setNonEmpty!42104 () Bool)

(assert (=> setNonEmpty!42104 (= setRes!42104 (and tp!1729796 (inv!83604 setElem!42104) e!3776621))))

(declare-fun setRest!42104 () (InoxSet Context!11054))

(assert (=> setNonEmpty!42104 (= z!1189 ((_ map or) (store ((as const (Array Context!11054 Bool)) false) setElem!42104 true) setRest!42104))))

(declare-fun b!6201992 () Bool)

(declare-fun tp!1729795 () Bool)

(assert (=> b!6201992 (= e!3776615 tp!1729795)))

(declare-fun b!6201993 () Bool)

(declare-fun Unit!157906 () Unit!157903)

(assert (=> b!6201993 (= e!3776616 Unit!157906)))

(declare-fun b!6201994 () Bool)

(declare-fun tp!1729799 () Bool)

(declare-fun tp!1729798 () Bool)

(assert (=> b!6201994 (= e!3776624 (and tp!1729799 tp!1729798))))

(declare-fun b!6201995 () Bool)

(declare-fun tp!1729800 () Bool)

(declare-fun tp!1729802 () Bool)

(assert (=> b!6201995 (= e!3776624 (and tp!1729800 tp!1729802))))

(declare-fun b!6201996 () Bool)

(declare-fun res!2565260 () Bool)

(assert (=> b!6201996 (=> res!2565260 e!3776625)))

(assert (=> b!6201996 (= res!2565260 (not (nullable!6136 (regOne!32798 (regOne!32798 r!7292)))))))

(assert (= (and start!618478 res!2565261) b!6201978))

(assert (= (and b!6201978 res!2565269) b!6201989))

(assert (= (and b!6201989 res!2565262) b!6201977))

(assert (= (and b!6201977 (not res!2565259)) b!6201980))

(assert (= (and b!6201980 (not res!2565256)) b!6201988))

(assert (= (and b!6201988 (not res!2565266)) b!6201976))

(assert (= (and b!6201976 (not res!2565268)) b!6201972))

(assert (= (and b!6201972 (not res!2565257)) b!6201975))

(assert (= (and b!6201975 (not res!2565263)) b!6201983))

(assert (= (and b!6201983 (not res!2565258)) b!6201974))

(assert (= (and b!6201974 (not res!2565264)) b!6201985))

(assert (= (and b!6201985 c!1119609) b!6201991))

(assert (= (and b!6201985 (not c!1119609)) b!6201993))

(assert (= (and b!6201991 (not res!2565255)) b!6201979))

(assert (= (and b!6201985 (not res!2565267)) b!6201996))

(assert (= (and b!6201996 (not res!2565260)) b!6201984))

(assert (= (and b!6201984 (not res!2565265)) b!6201982))

(assert (= (and start!618478 ((_ is ElementMatch!16143) r!7292)) b!6201973))

(assert (= (and start!618478 ((_ is Concat!24988) r!7292)) b!6201994))

(assert (= (and start!618478 ((_ is Star!16143) r!7292)) b!6201987))

(assert (= (and start!618478 ((_ is Union!16143) r!7292)) b!6201995))

(assert (= (and start!618478 condSetEmpty!42104) setIsEmpty!42104))

(assert (= (and start!618478 (not condSetEmpty!42104)) setNonEmpty!42104))

(assert (= setNonEmpty!42104 b!6201990))

(assert (= b!6201981 b!6201992))

(assert (= (and start!618478 ((_ is Cons!64605) zl!343)) b!6201981))

(assert (= (and start!618478 ((_ is Cons!64606) s!2326)) b!6201986))

(declare-fun m!7034286 () Bool)

(assert (=> b!6201989 m!7034286))

(declare-fun m!7034288 () Bool)

(assert (=> b!6201978 m!7034288))

(declare-fun m!7034290 () Bool)

(assert (=> b!6201982 m!7034290))

(declare-fun m!7034292 () Bool)

(assert (=> b!6201984 m!7034292))

(declare-fun m!7034294 () Bool)

(assert (=> b!6201984 m!7034294))

(declare-fun m!7034296 () Bool)

(assert (=> b!6201979 m!7034296))

(declare-fun m!7034298 () Bool)

(assert (=> b!6201988 m!7034298))

(declare-fun m!7034300 () Bool)

(assert (=> b!6201981 m!7034300))

(declare-fun m!7034302 () Bool)

(assert (=> b!6201983 m!7034302))

(declare-fun m!7034304 () Bool)

(assert (=> b!6201983 m!7034304))

(declare-fun m!7034306 () Bool)

(assert (=> b!6201983 m!7034306))

(declare-fun m!7034308 () Bool)

(assert (=> b!6201983 m!7034308))

(declare-fun m!7034310 () Bool)

(assert (=> b!6201983 m!7034310))

(assert (=> b!6201983 m!7034302))

(assert (=> b!6201983 m!7034304))

(declare-fun m!7034312 () Bool)

(assert (=> b!6201983 m!7034312))

(declare-fun m!7034314 () Bool)

(assert (=> start!618478 m!7034314))

(declare-fun m!7034316 () Bool)

(assert (=> b!6201974 m!7034316))

(declare-fun m!7034318 () Bool)

(assert (=> b!6201996 m!7034318))

(declare-fun m!7034320 () Bool)

(assert (=> setNonEmpty!42104 m!7034320))

(declare-fun m!7034322 () Bool)

(assert (=> b!6201985 m!7034322))

(declare-fun m!7034324 () Bool)

(assert (=> b!6201985 m!7034324))

(declare-fun m!7034326 () Bool)

(assert (=> b!6201985 m!7034326))

(declare-fun m!7034328 () Bool)

(assert (=> b!6201985 m!7034328))

(declare-fun m!7034330 () Bool)

(assert (=> b!6201985 m!7034330))

(declare-fun m!7034332 () Bool)

(assert (=> b!6201985 m!7034332))

(declare-fun m!7034334 () Bool)

(assert (=> b!6201985 m!7034334))

(declare-fun m!7034336 () Bool)

(assert (=> b!6201972 m!7034336))

(assert (=> b!6201972 m!7034336))

(declare-fun m!7034338 () Bool)

(assert (=> b!6201972 m!7034338))

(declare-fun m!7034340 () Bool)

(assert (=> b!6201991 m!7034340))

(declare-fun m!7034342 () Bool)

(assert (=> b!6201991 m!7034342))

(declare-fun m!7034344 () Bool)

(assert (=> b!6201991 m!7034344))

(declare-fun m!7034346 () Bool)

(assert (=> b!6201977 m!7034346))

(declare-fun m!7034348 () Bool)

(assert (=> b!6201977 m!7034348))

(declare-fun m!7034350 () Bool)

(assert (=> b!6201977 m!7034350))

(declare-fun m!7034352 () Bool)

(assert (=> b!6201980 m!7034352))

(check-sat (not b!6201978) (not b!6201977) (not b!6201984) (not setNonEmpty!42104) (not b!6201974) (not b!6201992) (not b!6201980) (not b!6201982) (not b!6201979) (not b!6201983) (not b!6201990) (not start!618478) (not b!6201986) (not b!6201988) (not b!6201987) (not b!6201981) (not b!6201991) (not b!6201989) (not b!6201972) (not b!6201996) (not b!6201985) tp_is_empty!41539 (not b!6201994) (not b!6201995))
(check-sat)
(get-model)

(declare-fun d!1944167 () Bool)

(declare-fun lambda!338906 () Int)

(declare-fun forall!15256 (List!64728 Int) Bool)

(assert (=> d!1944167 (= (inv!83604 setElem!42104) (forall!15256 (exprs!6027 setElem!42104) lambda!338906))))

(declare-fun bs!1538704 () Bool)

(assert (= bs!1538704 d!1944167))

(declare-fun m!7034354 () Bool)

(assert (=> bs!1538704 m!7034354))

(assert (=> setNonEmpty!42104 d!1944167))

(declare-fun bs!1538705 () Bool)

(declare-fun d!1944169 () Bool)

(assert (= bs!1538705 (and d!1944169 d!1944167)))

(declare-fun lambda!338907 () Int)

(assert (=> bs!1538705 (= lambda!338907 lambda!338906)))

(assert (=> d!1944169 (= (inv!83604 lt!2343073) (forall!15256 (exprs!6027 lt!2343073) lambda!338907))))

(declare-fun bs!1538706 () Bool)

(assert (= bs!1538706 d!1944169))

(declare-fun m!7034356 () Bool)

(assert (=> bs!1538706 m!7034356))

(assert (=> b!6201982 d!1944169))

(declare-fun d!1944171 () Bool)

(declare-fun e!3776640 () Bool)

(assert (=> d!1944171 (= (matchZipper!2155 ((_ map or) lt!2343071 lt!2343064) (t!378248 s!2326)) e!3776640)))

(declare-fun res!2565274 () Bool)

(assert (=> d!1944171 (=> res!2565274 e!3776640)))

(assert (=> d!1944171 (= res!2565274 (matchZipper!2155 lt!2343071 (t!378248 s!2326)))))

(declare-fun lt!2343079 () Unit!157903)

(declare-fun choose!46096 ((InoxSet Context!11054) (InoxSet Context!11054) List!64730) Unit!157903)

(assert (=> d!1944171 (= lt!2343079 (choose!46096 lt!2343071 lt!2343064 (t!378248 s!2326)))))

(assert (=> d!1944171 (= (lemmaZipperConcatMatchesSameAsBothZippers!974 lt!2343071 lt!2343064 (t!378248 s!2326)) lt!2343079)))

(declare-fun b!6202027 () Bool)

(assert (=> b!6202027 (= e!3776640 (matchZipper!2155 lt!2343064 (t!378248 s!2326)))))

(assert (= (and d!1944171 (not res!2565274)) b!6202027))

(assert (=> d!1944171 m!7034344))

(assert (=> d!1944171 m!7034342))

(declare-fun m!7034358 () Bool)

(assert (=> d!1944171 m!7034358))

(assert (=> b!6202027 m!7034296))

(assert (=> b!6201991 d!1944171))

(declare-fun d!1944175 () Bool)

(declare-fun c!1119633 () Bool)

(declare-fun isEmpty!36601 (List!64730) Bool)

(assert (=> d!1944175 (= c!1119633 (isEmpty!36601 (t!378248 s!2326)))))

(declare-fun e!3776655 () Bool)

(assert (=> d!1944175 (= (matchZipper!2155 lt!2343071 (t!378248 s!2326)) e!3776655)))

(declare-fun b!6202054 () Bool)

(declare-fun nullableZipper!1917 ((InoxSet Context!11054)) Bool)

(assert (=> b!6202054 (= e!3776655 (nullableZipper!1917 lt!2343071))))

(declare-fun b!6202055 () Bool)

(declare-fun derivationStepZipper!2109 ((InoxSet Context!11054) C!32556) (InoxSet Context!11054))

(declare-fun head!12794 (List!64730) C!32556)

(declare-fun tail!11878 (List!64730) List!64730)

(assert (=> b!6202055 (= e!3776655 (matchZipper!2155 (derivationStepZipper!2109 lt!2343071 (head!12794 (t!378248 s!2326))) (tail!11878 (t!378248 s!2326))))))

(assert (= (and d!1944175 c!1119633) b!6202054))

(assert (= (and d!1944175 (not c!1119633)) b!6202055))

(declare-fun m!7034376 () Bool)

(assert (=> d!1944175 m!7034376))

(declare-fun m!7034378 () Bool)

(assert (=> b!6202054 m!7034378))

(declare-fun m!7034383 () Bool)

(assert (=> b!6202055 m!7034383))

(assert (=> b!6202055 m!7034383))

(declare-fun m!7034386 () Bool)

(assert (=> b!6202055 m!7034386))

(declare-fun m!7034388 () Bool)

(assert (=> b!6202055 m!7034388))

(assert (=> b!6202055 m!7034386))

(assert (=> b!6202055 m!7034388))

(declare-fun m!7034390 () Bool)

(assert (=> b!6202055 m!7034390))

(assert (=> b!6201991 d!1944175))

(declare-fun d!1944181 () Bool)

(declare-fun c!1119634 () Bool)

(assert (=> d!1944181 (= c!1119634 (isEmpty!36601 (t!378248 s!2326)))))

(declare-fun e!3776656 () Bool)

(assert (=> d!1944181 (= (matchZipper!2155 ((_ map or) lt!2343071 lt!2343064) (t!378248 s!2326)) e!3776656)))

(declare-fun b!6202056 () Bool)

(assert (=> b!6202056 (= e!3776656 (nullableZipper!1917 ((_ map or) lt!2343071 lt!2343064)))))

(declare-fun b!6202057 () Bool)

(assert (=> b!6202057 (= e!3776656 (matchZipper!2155 (derivationStepZipper!2109 ((_ map or) lt!2343071 lt!2343064) (head!12794 (t!378248 s!2326))) (tail!11878 (t!378248 s!2326))))))

(assert (= (and d!1944181 c!1119634) b!6202056))

(assert (= (and d!1944181 (not c!1119634)) b!6202057))

(assert (=> d!1944181 m!7034376))

(declare-fun m!7034392 () Bool)

(assert (=> b!6202056 m!7034392))

(assert (=> b!6202057 m!7034383))

(assert (=> b!6202057 m!7034383))

(declare-fun m!7034394 () Bool)

(assert (=> b!6202057 m!7034394))

(assert (=> b!6202057 m!7034388))

(assert (=> b!6202057 m!7034394))

(assert (=> b!6202057 m!7034388))

(declare-fun m!7034396 () Bool)

(assert (=> b!6202057 m!7034396))

(assert (=> b!6201991 d!1944181))

(declare-fun b!6202108 () Bool)

(declare-fun e!3776695 () Bool)

(declare-fun e!3776689 () Bool)

(assert (=> b!6202108 (= e!3776695 e!3776689)))

(declare-fun res!2565307 () Bool)

(assert (=> b!6202108 (= res!2565307 (not (nullable!6136 (reg!16472 r!7292))))))

(assert (=> b!6202108 (=> (not res!2565307) (not e!3776689))))

(declare-fun b!6202109 () Bool)

(declare-fun e!3776692 () Bool)

(assert (=> b!6202109 (= e!3776692 e!3776695)))

(declare-fun c!1119648 () Bool)

(assert (=> b!6202109 (= c!1119648 ((_ is Star!16143) r!7292))))

(declare-fun b!6202110 () Bool)

(declare-fun e!3776693 () Bool)

(declare-fun e!3776691 () Bool)

(assert (=> b!6202110 (= e!3776693 e!3776691)))

(declare-fun res!2565306 () Bool)

(assert (=> b!6202110 (=> (not res!2565306) (not e!3776691))))

(declare-fun call!519134 () Bool)

(assert (=> b!6202110 (= res!2565306 call!519134)))

(declare-fun b!6202112 () Bool)

(declare-fun call!519133 () Bool)

(assert (=> b!6202112 (= e!3776691 call!519133)))

(declare-fun c!1119647 () Bool)

(declare-fun call!519135 () Bool)

(declare-fun bm!519128 () Bool)

(assert (=> bm!519128 (= call!519135 (validRegex!7879 (ite c!1119648 (reg!16472 r!7292) (ite c!1119647 (regOne!32799 r!7292) (regOne!32798 r!7292)))))))

(declare-fun b!6202113 () Bool)

(declare-fun res!2565304 () Bool)

(assert (=> b!6202113 (=> res!2565304 e!3776693)))

(assert (=> b!6202113 (= res!2565304 (not ((_ is Concat!24988) r!7292)))))

(declare-fun e!3776694 () Bool)

(assert (=> b!6202113 (= e!3776694 e!3776693)))

(declare-fun bm!519129 () Bool)

(assert (=> bm!519129 (= call!519133 (validRegex!7879 (ite c!1119647 (regTwo!32799 r!7292) (regTwo!32798 r!7292))))))

(declare-fun b!6202114 () Bool)

(declare-fun e!3776690 () Bool)

(assert (=> b!6202114 (= e!3776690 call!519133)))

(declare-fun bm!519130 () Bool)

(assert (=> bm!519130 (= call!519134 call!519135)))

(declare-fun b!6202115 () Bool)

(assert (=> b!6202115 (= e!3776689 call!519135)))

(declare-fun b!6202116 () Bool)

(declare-fun res!2565303 () Bool)

(assert (=> b!6202116 (=> (not res!2565303) (not e!3776690))))

(assert (=> b!6202116 (= res!2565303 call!519134)))

(assert (=> b!6202116 (= e!3776694 e!3776690)))

(declare-fun d!1944183 () Bool)

(declare-fun res!2565305 () Bool)

(assert (=> d!1944183 (=> res!2565305 e!3776692)))

(assert (=> d!1944183 (= res!2565305 ((_ is ElementMatch!16143) r!7292))))

(assert (=> d!1944183 (= (validRegex!7879 r!7292) e!3776692)))

(declare-fun b!6202111 () Bool)

(assert (=> b!6202111 (= e!3776695 e!3776694)))

(assert (=> b!6202111 (= c!1119647 ((_ is Union!16143) r!7292))))

(assert (= (and d!1944183 (not res!2565305)) b!6202109))

(assert (= (and b!6202109 c!1119648) b!6202108))

(assert (= (and b!6202109 (not c!1119648)) b!6202111))

(assert (= (and b!6202108 res!2565307) b!6202115))

(assert (= (and b!6202111 c!1119647) b!6202116))

(assert (= (and b!6202111 (not c!1119647)) b!6202113))

(assert (= (and b!6202116 res!2565303) b!6202114))

(assert (= (and b!6202113 (not res!2565304)) b!6202110))

(assert (= (and b!6202110 res!2565306) b!6202112))

(assert (= (or b!6202114 b!6202112) bm!519129))

(assert (= (or b!6202116 b!6202110) bm!519130))

(assert (= (or b!6202115 bm!519130) bm!519128))

(declare-fun m!7034398 () Bool)

(assert (=> b!6202108 m!7034398))

(declare-fun m!7034400 () Bool)

(assert (=> bm!519128 m!7034400))

(declare-fun m!7034402 () Bool)

(assert (=> bm!519129 m!7034402))

(assert (=> start!618478 d!1944183))

(declare-fun b!6202199 () Bool)

(declare-fun e!3776741 () Option!16034)

(assert (=> b!6202199 (= e!3776741 None!16033)))

(declare-fun b!6202200 () Bool)

(declare-fun lt!2343095 () Unit!157903)

(declare-fun lt!2343097 () Unit!157903)

(assert (=> b!6202200 (= lt!2343095 lt!2343097)))

(declare-fun ++!14220 (List!64730 List!64730) List!64730)

(assert (=> b!6202200 (= (++!14220 (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) Nil!64606)) (t!378248 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2315 (List!64730 C!32556 List!64730 List!64730) Unit!157903)

(assert (=> b!6202200 (= lt!2343097 (lemmaMoveElementToOtherListKeepsConcatEq!2315 Nil!64606 (h!71054 s!2326) (t!378248 s!2326) s!2326))))

(assert (=> b!6202200 (= e!3776741 (findConcatSeparation!2448 (regOne!32798 r!7292) (regTwo!32798 r!7292) (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) Nil!64606)) (t!378248 s!2326) s!2326))))

(declare-fun b!6202201 () Bool)

(declare-fun e!3776742 () Option!16034)

(assert (=> b!6202201 (= e!3776742 (Some!16033 (tuple2!66245 Nil!64606 s!2326)))))

(declare-fun b!6202202 () Bool)

(declare-fun e!3776744 () Bool)

(declare-fun lt!2343096 () Option!16034)

(assert (=> b!6202202 (= e!3776744 (not (isDefined!12737 lt!2343096)))))

(declare-fun b!6202203 () Bool)

(declare-fun res!2565352 () Bool)

(declare-fun e!3776745 () Bool)

(assert (=> b!6202203 (=> (not res!2565352) (not e!3776745))))

(declare-fun get!22307 (Option!16034) tuple2!66244)

(assert (=> b!6202203 (= res!2565352 (matchR!8326 (regOne!32798 r!7292) (_1!36425 (get!22307 lt!2343096))))))

(declare-fun d!1944185 () Bool)

(assert (=> d!1944185 e!3776744))

(declare-fun res!2565349 () Bool)

(assert (=> d!1944185 (=> res!2565349 e!3776744)))

(assert (=> d!1944185 (= res!2565349 e!3776745)))

(declare-fun res!2565348 () Bool)

(assert (=> d!1944185 (=> (not res!2565348) (not e!3776745))))

(assert (=> d!1944185 (= res!2565348 (isDefined!12737 lt!2343096))))

(assert (=> d!1944185 (= lt!2343096 e!3776742)))

(declare-fun c!1119670 () Bool)

(declare-fun e!3776743 () Bool)

(assert (=> d!1944185 (= c!1119670 e!3776743)))

(declare-fun res!2565350 () Bool)

(assert (=> d!1944185 (=> (not res!2565350) (not e!3776743))))

(assert (=> d!1944185 (= res!2565350 (matchR!8326 (regOne!32798 r!7292) Nil!64606))))

(assert (=> d!1944185 (validRegex!7879 (regOne!32798 r!7292))))

(assert (=> d!1944185 (= (findConcatSeparation!2448 (regOne!32798 r!7292) (regTwo!32798 r!7292) Nil!64606 s!2326 s!2326) lt!2343096)))

(declare-fun b!6202204 () Bool)

(assert (=> b!6202204 (= e!3776742 e!3776741)))

(declare-fun c!1119671 () Bool)

(assert (=> b!6202204 (= c!1119671 ((_ is Nil!64606) s!2326))))

(declare-fun b!6202205 () Bool)

(declare-fun res!2565351 () Bool)

(assert (=> b!6202205 (=> (not res!2565351) (not e!3776745))))

(assert (=> b!6202205 (= res!2565351 (matchR!8326 (regTwo!32798 r!7292) (_2!36425 (get!22307 lt!2343096))))))

(declare-fun b!6202206 () Bool)

(assert (=> b!6202206 (= e!3776745 (= (++!14220 (_1!36425 (get!22307 lt!2343096)) (_2!36425 (get!22307 lt!2343096))) s!2326))))

(declare-fun b!6202207 () Bool)

(assert (=> b!6202207 (= e!3776743 (matchR!8326 (regTwo!32798 r!7292) s!2326))))

(assert (= (and d!1944185 res!2565350) b!6202207))

(assert (= (and d!1944185 c!1119670) b!6202201))

(assert (= (and d!1944185 (not c!1119670)) b!6202204))

(assert (= (and b!6202204 c!1119671) b!6202199))

(assert (= (and b!6202204 (not c!1119671)) b!6202200))

(assert (= (and d!1944185 res!2565348) b!6202203))

(assert (= (and b!6202203 res!2565352) b!6202205))

(assert (= (and b!6202205 res!2565351) b!6202206))

(assert (= (and d!1944185 (not res!2565349)) b!6202202))

(declare-fun m!7034448 () Bool)

(assert (=> b!6202206 m!7034448))

(declare-fun m!7034450 () Bool)

(assert (=> b!6202206 m!7034450))

(declare-fun m!7034452 () Bool)

(assert (=> b!6202207 m!7034452))

(declare-fun m!7034454 () Bool)

(assert (=> d!1944185 m!7034454))

(declare-fun m!7034456 () Bool)

(assert (=> d!1944185 m!7034456))

(declare-fun m!7034458 () Bool)

(assert (=> d!1944185 m!7034458))

(declare-fun m!7034460 () Bool)

(assert (=> b!6202200 m!7034460))

(assert (=> b!6202200 m!7034460))

(declare-fun m!7034462 () Bool)

(assert (=> b!6202200 m!7034462))

(declare-fun m!7034464 () Bool)

(assert (=> b!6202200 m!7034464))

(assert (=> b!6202200 m!7034460))

(declare-fun m!7034466 () Bool)

(assert (=> b!6202200 m!7034466))

(assert (=> b!6202202 m!7034454))

(assert (=> b!6202205 m!7034448))

(declare-fun m!7034468 () Bool)

(assert (=> b!6202205 m!7034468))

(assert (=> b!6202203 m!7034448))

(declare-fun m!7034470 () Bool)

(assert (=> b!6202203 m!7034470))

(assert (=> b!6201983 d!1944185))

(declare-fun d!1944201 () Bool)

(declare-fun choose!46097 (Int) Bool)

(assert (=> d!1944201 (= (Exists!3213 lambda!338901) (choose!46097 lambda!338901))))

(declare-fun bs!1538712 () Bool)

(assert (= bs!1538712 d!1944201))

(declare-fun m!7034472 () Bool)

(assert (=> bs!1538712 m!7034472))

(assert (=> b!6201983 d!1944201))

(declare-fun d!1944203 () Bool)

(assert (=> d!1944203 (= (Exists!3213 lambda!338902) (choose!46097 lambda!338902))))

(declare-fun bs!1538713 () Bool)

(assert (= bs!1538713 d!1944203))

(declare-fun m!7034474 () Bool)

(assert (=> bs!1538713 m!7034474))

(assert (=> b!6201983 d!1944203))

(declare-fun bs!1538728 () Bool)

(declare-fun d!1944205 () Bool)

(assert (= bs!1538728 (and d!1944205 b!6201983)))

(declare-fun lambda!338927 () Int)

(assert (=> bs!1538728 (= lambda!338927 lambda!338901)))

(assert (=> bs!1538728 (not (= lambda!338927 lambda!338902))))

(assert (=> d!1944205 true))

(assert (=> d!1944205 true))

(assert (=> d!1944205 true))

(assert (=> d!1944205 (= (isDefined!12737 (findConcatSeparation!2448 (regOne!32798 r!7292) (regTwo!32798 r!7292) Nil!64606 s!2326 s!2326)) (Exists!3213 lambda!338927))))

(declare-fun lt!2343109 () Unit!157903)

(declare-fun choose!46098 (Regex!16143 Regex!16143 List!64730) Unit!157903)

(assert (=> d!1944205 (= lt!2343109 (choose!46098 (regOne!32798 r!7292) (regTwo!32798 r!7292) s!2326))))

(assert (=> d!1944205 (validRegex!7879 (regOne!32798 r!7292))))

(assert (=> d!1944205 (= (lemmaFindConcatSeparationEquivalentToExists!2212 (regOne!32798 r!7292) (regTwo!32798 r!7292) s!2326) lt!2343109)))

(declare-fun bs!1538729 () Bool)

(assert (= bs!1538729 d!1944205))

(declare-fun m!7034514 () Bool)

(assert (=> bs!1538729 m!7034514))

(declare-fun m!7034516 () Bool)

(assert (=> bs!1538729 m!7034516))

(assert (=> bs!1538729 m!7034304))

(assert (=> bs!1538729 m!7034306))

(assert (=> bs!1538729 m!7034304))

(assert (=> bs!1538729 m!7034458))

(assert (=> b!6201983 d!1944205))

(declare-fun bs!1538738 () Bool)

(declare-fun d!1944225 () Bool)

(assert (= bs!1538738 (and d!1944225 b!6201983)))

(declare-fun lambda!338935 () Int)

(assert (=> bs!1538738 (= lambda!338935 lambda!338901)))

(assert (=> bs!1538738 (not (= lambda!338935 lambda!338902))))

(declare-fun bs!1538739 () Bool)

(assert (= bs!1538739 (and d!1944225 d!1944205)))

(assert (=> bs!1538739 (= lambda!338935 lambda!338927)))

(assert (=> d!1944225 true))

(assert (=> d!1944225 true))

(assert (=> d!1944225 true))

(declare-fun lambda!338936 () Int)

(assert (=> bs!1538738 (not (= lambda!338936 lambda!338901))))

(assert (=> bs!1538738 (= lambda!338936 lambda!338902)))

(assert (=> bs!1538739 (not (= lambda!338936 lambda!338927))))

(declare-fun bs!1538740 () Bool)

(assert (= bs!1538740 d!1944225))

(assert (=> bs!1538740 (not (= lambda!338936 lambda!338935))))

(assert (=> d!1944225 true))

(assert (=> d!1944225 true))

(assert (=> d!1944225 true))

(assert (=> d!1944225 (= (Exists!3213 lambda!338935) (Exists!3213 lambda!338936))))

(declare-fun lt!2343120 () Unit!157903)

(declare-fun choose!46099 (Regex!16143 Regex!16143 List!64730) Unit!157903)

(assert (=> d!1944225 (= lt!2343120 (choose!46099 (regOne!32798 r!7292) (regTwo!32798 r!7292) s!2326))))

(assert (=> d!1944225 (validRegex!7879 (regOne!32798 r!7292))))

(assert (=> d!1944225 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1750 (regOne!32798 r!7292) (regTwo!32798 r!7292) s!2326) lt!2343120)))

(declare-fun m!7034576 () Bool)

(assert (=> bs!1538740 m!7034576))

(declare-fun m!7034578 () Bool)

(assert (=> bs!1538740 m!7034578))

(declare-fun m!7034580 () Bool)

(assert (=> bs!1538740 m!7034580))

(assert (=> bs!1538740 m!7034458))

(assert (=> b!6201983 d!1944225))

(declare-fun d!1944245 () Bool)

(declare-fun isEmpty!36602 (Option!16034) Bool)

(assert (=> d!1944245 (= (isDefined!12737 (findConcatSeparation!2448 (regOne!32798 r!7292) (regTwo!32798 r!7292) Nil!64606 s!2326 s!2326)) (not (isEmpty!36602 (findConcatSeparation!2448 (regOne!32798 r!7292) (regTwo!32798 r!7292) Nil!64606 s!2326 s!2326))))))

(declare-fun bs!1538741 () Bool)

(assert (= bs!1538741 d!1944245))

(assert (=> bs!1538741 m!7034304))

(declare-fun m!7034582 () Bool)

(assert (=> bs!1538741 m!7034582))

(assert (=> b!6201983 d!1944245))

(declare-fun bs!1538742 () Bool)

(declare-fun d!1944247 () Bool)

(assert (= bs!1538742 (and d!1944247 d!1944167)))

(declare-fun lambda!338939 () Int)

(assert (=> bs!1538742 (= lambda!338939 lambda!338906)))

(declare-fun bs!1538743 () Bool)

(assert (= bs!1538743 (and d!1944247 d!1944169)))

(assert (=> bs!1538743 (= lambda!338939 lambda!338907)))

(declare-fun b!6202392 () Bool)

(declare-fun e!3776862 () Bool)

(declare-fun e!3776863 () Bool)

(assert (=> b!6202392 (= e!3776862 e!3776863)))

(declare-fun c!1119736 () Bool)

(assert (=> b!6202392 (= c!1119736 (isEmpty!36598 (unfocusZipperList!1564 zl!343)))))

(declare-fun b!6202393 () Bool)

(declare-fun e!3776861 () Bool)

(assert (=> b!6202393 (= e!3776863 e!3776861)))

(declare-fun c!1119734 () Bool)

(declare-fun tail!11880 (List!64728) List!64728)

(assert (=> b!6202393 (= c!1119734 (isEmpty!36598 (tail!11880 (unfocusZipperList!1564 zl!343))))))

(declare-fun b!6202394 () Bool)

(declare-fun lt!2343130 () Regex!16143)

(declare-fun head!12795 (List!64728) Regex!16143)

(assert (=> b!6202394 (= e!3776861 (= lt!2343130 (head!12795 (unfocusZipperList!1564 zl!343))))))

(declare-fun b!6202395 () Bool)

(declare-fun e!3776860 () Regex!16143)

(declare-fun e!3776864 () Regex!16143)

(assert (=> b!6202395 (= e!3776860 e!3776864)))

(declare-fun c!1119735 () Bool)

(assert (=> b!6202395 (= c!1119735 ((_ is Cons!64604) (unfocusZipperList!1564 zl!343)))))

(declare-fun b!6202396 () Bool)

(assert (=> b!6202396 (= e!3776860 (h!71052 (unfocusZipperList!1564 zl!343)))))

(declare-fun b!6202397 () Bool)

(assert (=> b!6202397 (= e!3776864 EmptyLang!16143)))

(declare-fun b!6202398 () Bool)

(assert (=> b!6202398 (= e!3776864 (Union!16143 (h!71052 (unfocusZipperList!1564 zl!343)) (generalisedUnion!1987 (t!378246 (unfocusZipperList!1564 zl!343)))))))

(assert (=> d!1944247 e!3776862))

(declare-fun res!2565415 () Bool)

(assert (=> d!1944247 (=> (not res!2565415) (not e!3776862))))

(assert (=> d!1944247 (= res!2565415 (validRegex!7879 lt!2343130))))

(assert (=> d!1944247 (= lt!2343130 e!3776860)))

(declare-fun c!1119733 () Bool)

(declare-fun e!3776859 () Bool)

(assert (=> d!1944247 (= c!1119733 e!3776859)))

(declare-fun res!2565416 () Bool)

(assert (=> d!1944247 (=> (not res!2565416) (not e!3776859))))

(assert (=> d!1944247 (= res!2565416 ((_ is Cons!64604) (unfocusZipperList!1564 zl!343)))))

(assert (=> d!1944247 (forall!15256 (unfocusZipperList!1564 zl!343) lambda!338939)))

(assert (=> d!1944247 (= (generalisedUnion!1987 (unfocusZipperList!1564 zl!343)) lt!2343130)))

(declare-fun b!6202399 () Bool)

(declare-fun isEmptyLang!1562 (Regex!16143) Bool)

(assert (=> b!6202399 (= e!3776863 (isEmptyLang!1562 lt!2343130))))

(declare-fun b!6202400 () Bool)

(assert (=> b!6202400 (= e!3776859 (isEmpty!36598 (t!378246 (unfocusZipperList!1564 zl!343))))))

(declare-fun b!6202401 () Bool)

(declare-fun isUnion!992 (Regex!16143) Bool)

(assert (=> b!6202401 (= e!3776861 (isUnion!992 lt!2343130))))

(assert (= (and d!1944247 res!2565416) b!6202400))

(assert (= (and d!1944247 c!1119733) b!6202396))

(assert (= (and d!1944247 (not c!1119733)) b!6202395))

(assert (= (and b!6202395 c!1119735) b!6202398))

(assert (= (and b!6202395 (not c!1119735)) b!6202397))

(assert (= (and d!1944247 res!2565415) b!6202392))

(assert (= (and b!6202392 c!1119736) b!6202399))

(assert (= (and b!6202392 (not c!1119736)) b!6202393))

(assert (= (and b!6202393 c!1119734) b!6202394))

(assert (= (and b!6202393 (not c!1119734)) b!6202401))

(declare-fun m!7034590 () Bool)

(assert (=> d!1944247 m!7034590))

(assert (=> d!1944247 m!7034336))

(declare-fun m!7034592 () Bool)

(assert (=> d!1944247 m!7034592))

(assert (=> b!6202393 m!7034336))

(declare-fun m!7034594 () Bool)

(assert (=> b!6202393 m!7034594))

(assert (=> b!6202393 m!7034594))

(declare-fun m!7034596 () Bool)

(assert (=> b!6202393 m!7034596))

(declare-fun m!7034598 () Bool)

(assert (=> b!6202398 m!7034598))

(assert (=> b!6202394 m!7034336))

(declare-fun m!7034600 () Bool)

(assert (=> b!6202394 m!7034600))

(assert (=> b!6202392 m!7034336))

(declare-fun m!7034602 () Bool)

(assert (=> b!6202392 m!7034602))

(declare-fun m!7034604 () Bool)

(assert (=> b!6202401 m!7034604))

(declare-fun m!7034606 () Bool)

(assert (=> b!6202399 m!7034606))

(declare-fun m!7034608 () Bool)

(assert (=> b!6202400 m!7034608))

(assert (=> b!6201972 d!1944247))

(declare-fun bs!1538746 () Bool)

(declare-fun d!1944251 () Bool)

(assert (= bs!1538746 (and d!1944251 d!1944167)))

(declare-fun lambda!338942 () Int)

(assert (=> bs!1538746 (= lambda!338942 lambda!338906)))

(declare-fun bs!1538747 () Bool)

(assert (= bs!1538747 (and d!1944251 d!1944169)))

(assert (=> bs!1538747 (= lambda!338942 lambda!338907)))

(declare-fun bs!1538748 () Bool)

(assert (= bs!1538748 (and d!1944251 d!1944247)))

(assert (=> bs!1538748 (= lambda!338942 lambda!338939)))

(declare-fun lt!2343136 () List!64728)

(assert (=> d!1944251 (forall!15256 lt!2343136 lambda!338942)))

(declare-fun e!3776872 () List!64728)

(assert (=> d!1944251 (= lt!2343136 e!3776872)))

(declare-fun c!1119741 () Bool)

(assert (=> d!1944251 (= c!1119741 ((_ is Cons!64605) zl!343))))

(assert (=> d!1944251 (= (unfocusZipperList!1564 zl!343) lt!2343136)))

(declare-fun b!6202415 () Bool)

(assert (=> b!6202415 (= e!3776872 (Cons!64604 (generalisedConcat!1740 (exprs!6027 (h!71053 zl!343))) (unfocusZipperList!1564 (t!378247 zl!343))))))

(declare-fun b!6202416 () Bool)

(assert (=> b!6202416 (= e!3776872 Nil!64604)))

(assert (= (and d!1944251 c!1119741) b!6202415))

(assert (= (and d!1944251 (not c!1119741)) b!6202416))

(declare-fun m!7034638 () Bool)

(assert (=> d!1944251 m!7034638))

(assert (=> b!6202415 m!7034298))

(declare-fun m!7034640 () Bool)

(assert (=> b!6202415 m!7034640))

(assert (=> b!6201972 d!1944251))

(declare-fun d!1944259 () Bool)

(declare-fun c!1119742 () Bool)

(assert (=> d!1944259 (= c!1119742 (isEmpty!36601 (t!378248 s!2326)))))

(declare-fun e!3776873 () Bool)

(assert (=> d!1944259 (= (matchZipper!2155 lt!2343064 (t!378248 s!2326)) e!3776873)))

(declare-fun b!6202417 () Bool)

(assert (=> b!6202417 (= e!3776873 (nullableZipper!1917 lt!2343064))))

(declare-fun b!6202418 () Bool)

(assert (=> b!6202418 (= e!3776873 (matchZipper!2155 (derivationStepZipper!2109 lt!2343064 (head!12794 (t!378248 s!2326))) (tail!11878 (t!378248 s!2326))))))

(assert (= (and d!1944259 c!1119742) b!6202417))

(assert (= (and d!1944259 (not c!1119742)) b!6202418))

(assert (=> d!1944259 m!7034376))

(declare-fun m!7034642 () Bool)

(assert (=> b!6202417 m!7034642))

(assert (=> b!6202418 m!7034383))

(assert (=> b!6202418 m!7034383))

(declare-fun m!7034644 () Bool)

(assert (=> b!6202418 m!7034644))

(assert (=> b!6202418 m!7034388))

(assert (=> b!6202418 m!7034644))

(assert (=> b!6202418 m!7034388))

(declare-fun m!7034646 () Bool)

(assert (=> b!6202418 m!7034646))

(assert (=> b!6201979 d!1944259))

(declare-fun bs!1538749 () Bool)

(declare-fun d!1944261 () Bool)

(assert (= bs!1538749 (and d!1944261 d!1944167)))

(declare-fun lambda!338943 () Int)

(assert (=> bs!1538749 (= lambda!338943 lambda!338906)))

(declare-fun bs!1538750 () Bool)

(assert (= bs!1538750 (and d!1944261 d!1944169)))

(assert (=> bs!1538750 (= lambda!338943 lambda!338907)))

(declare-fun bs!1538751 () Bool)

(assert (= bs!1538751 (and d!1944261 d!1944247)))

(assert (=> bs!1538751 (= lambda!338943 lambda!338939)))

(declare-fun bs!1538752 () Bool)

(assert (= bs!1538752 (and d!1944261 d!1944251)))

(assert (=> bs!1538752 (= lambda!338943 lambda!338942)))

(assert (=> d!1944261 (= (inv!83604 (h!71053 zl!343)) (forall!15256 (exprs!6027 (h!71053 zl!343)) lambda!338943))))

(declare-fun bs!1538753 () Bool)

(assert (= bs!1538753 d!1944261))

(declare-fun m!7034648 () Bool)

(assert (=> bs!1538753 m!7034648))

(assert (=> b!6201981 d!1944261))

(declare-fun d!1944263 () Bool)

(assert (=> d!1944263 (= (isEmpty!36599 (t!378247 zl!343)) ((_ is Nil!64605) (t!378247 zl!343)))))

(assert (=> b!6201980 d!1944263))

(declare-fun bs!1538762 () Bool)

(declare-fun b!6202471 () Bool)

(assert (= bs!1538762 (and b!6202471 b!6201983)))

(declare-fun lambda!338956 () Int)

(assert (=> bs!1538762 (not (= lambda!338956 lambda!338902))))

(declare-fun bs!1538763 () Bool)

(assert (= bs!1538763 (and b!6202471 d!1944205)))

(assert (=> bs!1538763 (not (= lambda!338956 lambda!338927))))

(assert (=> bs!1538762 (not (= lambda!338956 lambda!338901))))

(declare-fun bs!1538764 () Bool)

(assert (= bs!1538764 (and b!6202471 d!1944225)))

(assert (=> bs!1538764 (not (= lambda!338956 lambda!338936))))

(assert (=> bs!1538764 (not (= lambda!338956 lambda!338935))))

(assert (=> b!6202471 true))

(assert (=> b!6202471 true))

(declare-fun bs!1538766 () Bool)

(declare-fun b!6202466 () Bool)

(assert (= bs!1538766 (and b!6202466 b!6201983)))

(declare-fun lambda!338958 () Int)

(assert (=> bs!1538766 (= lambda!338958 lambda!338902)))

(declare-fun bs!1538767 () Bool)

(assert (= bs!1538767 (and b!6202466 d!1944205)))

(assert (=> bs!1538767 (not (= lambda!338958 lambda!338927))))

(assert (=> bs!1538766 (not (= lambda!338958 lambda!338901))))

(declare-fun bs!1538768 () Bool)

(assert (= bs!1538768 (and b!6202466 b!6202471)))

(assert (=> bs!1538768 (not (= lambda!338958 lambda!338956))))

(declare-fun bs!1538769 () Bool)

(assert (= bs!1538769 (and b!6202466 d!1944225)))

(assert (=> bs!1538769 (= lambda!338958 lambda!338936)))

(assert (=> bs!1538769 (not (= lambda!338958 lambda!338935))))

(assert (=> b!6202466 true))

(assert (=> b!6202466 true))

(declare-fun call!519165 () Bool)

(declare-fun bm!519160 () Bool)

(declare-fun c!1119752 () Bool)

(assert (=> bm!519160 (= call!519165 (Exists!3213 (ite c!1119752 lambda!338956 lambda!338958)))))

(declare-fun b!6202463 () Bool)

(declare-fun c!1119753 () Bool)

(assert (=> b!6202463 (= c!1119753 ((_ is Union!16143) r!7292))))

(declare-fun e!3776904 () Bool)

(declare-fun e!3776903 () Bool)

(assert (=> b!6202463 (= e!3776904 e!3776903)))

(declare-fun b!6202464 () Bool)

(assert (=> b!6202464 (= e!3776904 (= s!2326 (Cons!64606 (c!1119610 r!7292) Nil!64606)))))

(declare-fun b!6202465 () Bool)

(declare-fun e!3776899 () Bool)

(declare-fun call!519166 () Bool)

(assert (=> b!6202465 (= e!3776899 call!519166)))

(declare-fun bm!519161 () Bool)

(assert (=> bm!519161 (= call!519166 (isEmpty!36601 s!2326))))

(declare-fun e!3776898 () Bool)

(assert (=> b!6202466 (= e!3776898 call!519165)))

(declare-fun d!1944265 () Bool)

(declare-fun c!1119754 () Bool)

(assert (=> d!1944265 (= c!1119754 ((_ is EmptyExpr!16143) r!7292))))

(assert (=> d!1944265 (= (matchRSpec!3244 r!7292 s!2326) e!3776899)))

(declare-fun b!6202467 () Bool)

(declare-fun c!1119751 () Bool)

(assert (=> b!6202467 (= c!1119751 ((_ is ElementMatch!16143) r!7292))))

(declare-fun e!3776901 () Bool)

(assert (=> b!6202467 (= e!3776901 e!3776904)))

(declare-fun b!6202468 () Bool)

(declare-fun e!3776902 () Bool)

(assert (=> b!6202468 (= e!3776903 e!3776902)))

(declare-fun res!2565451 () Bool)

(assert (=> b!6202468 (= res!2565451 (matchRSpec!3244 (regOne!32799 r!7292) s!2326))))

(assert (=> b!6202468 (=> res!2565451 e!3776902)))

(declare-fun b!6202469 () Bool)

(assert (=> b!6202469 (= e!3776899 e!3776901)))

(declare-fun res!2565452 () Bool)

(assert (=> b!6202469 (= res!2565452 (not ((_ is EmptyLang!16143) r!7292)))))

(assert (=> b!6202469 (=> (not res!2565452) (not e!3776901))))

(declare-fun b!6202470 () Bool)

(assert (=> b!6202470 (= e!3776903 e!3776898)))

(assert (=> b!6202470 (= c!1119752 ((_ is Star!16143) r!7292))))

(declare-fun e!3776900 () Bool)

(assert (=> b!6202471 (= e!3776900 call!519165)))

(declare-fun b!6202472 () Bool)

(assert (=> b!6202472 (= e!3776902 (matchRSpec!3244 (regTwo!32799 r!7292) s!2326))))

(declare-fun b!6202473 () Bool)

(declare-fun res!2565450 () Bool)

(assert (=> b!6202473 (=> res!2565450 e!3776900)))

(assert (=> b!6202473 (= res!2565450 call!519166)))

(assert (=> b!6202473 (= e!3776898 e!3776900)))

(assert (= (and d!1944265 c!1119754) b!6202465))

(assert (= (and d!1944265 (not c!1119754)) b!6202469))

(assert (= (and b!6202469 res!2565452) b!6202467))

(assert (= (and b!6202467 c!1119751) b!6202464))

(assert (= (and b!6202467 (not c!1119751)) b!6202463))

(assert (= (and b!6202463 c!1119753) b!6202468))

(assert (= (and b!6202463 (not c!1119753)) b!6202470))

(assert (= (and b!6202468 (not res!2565451)) b!6202472))

(assert (= (and b!6202470 c!1119752) b!6202473))

(assert (= (and b!6202470 (not c!1119752)) b!6202466))

(assert (= (and b!6202473 (not res!2565450)) b!6202471))

(assert (= (or b!6202471 b!6202466) bm!519160))

(assert (= (or b!6202465 b!6202473) bm!519161))

(declare-fun m!7034662 () Bool)

(assert (=> bm!519160 m!7034662))

(declare-fun m!7034664 () Bool)

(assert (=> bm!519161 m!7034664))

(declare-fun m!7034666 () Bool)

(assert (=> b!6202468 m!7034666))

(declare-fun m!7034668 () Bool)

(assert (=> b!6202472 m!7034668))

(assert (=> b!6201977 d!1944265))

(declare-fun b!6202556 () Bool)

(declare-fun e!3776945 () Bool)

(assert (=> b!6202556 (= e!3776945 (nullable!6136 r!7292))))

(declare-fun b!6202557 () Bool)

(declare-fun res!2565470 () Bool)

(declare-fun e!3776944 () Bool)

(assert (=> b!6202557 (=> res!2565470 e!3776944)))

(assert (=> b!6202557 (= res!2565470 (not ((_ is ElementMatch!16143) r!7292)))))

(declare-fun e!3776942 () Bool)

(assert (=> b!6202557 (= e!3776942 e!3776944)))

(declare-fun b!6202558 () Bool)

(declare-fun res!2565469 () Bool)

(declare-fun e!3776943 () Bool)

(assert (=> b!6202558 (=> (not res!2565469) (not e!3776943))))

(assert (=> b!6202558 (= res!2565469 (isEmpty!36601 (tail!11878 s!2326)))))

(declare-fun b!6202559 () Bool)

(declare-fun e!3776947 () Bool)

(assert (=> b!6202559 (= e!3776944 e!3776947)))

(declare-fun res!2565472 () Bool)

(assert (=> b!6202559 (=> (not res!2565472) (not e!3776947))))

(declare-fun lt!2343145 () Bool)

(assert (=> b!6202559 (= res!2565472 (not lt!2343145))))

(declare-fun d!1944271 () Bool)

(declare-fun e!3776948 () Bool)

(assert (=> d!1944271 e!3776948))

(declare-fun c!1119761 () Bool)

(assert (=> d!1944271 (= c!1119761 ((_ is EmptyExpr!16143) r!7292))))

(assert (=> d!1944271 (= lt!2343145 e!3776945)))

(declare-fun c!1119762 () Bool)

(assert (=> d!1944271 (= c!1119762 (isEmpty!36601 s!2326))))

(assert (=> d!1944271 (validRegex!7879 r!7292)))

(assert (=> d!1944271 (= (matchR!8326 r!7292 s!2326) lt!2343145)))

(declare-fun b!6202560 () Bool)

(declare-fun e!3776946 () Bool)

(assert (=> b!6202560 (= e!3776947 e!3776946)))

(declare-fun res!2565473 () Bool)

(assert (=> b!6202560 (=> res!2565473 e!3776946)))

(declare-fun call!519169 () Bool)

(assert (=> b!6202560 (= res!2565473 call!519169)))

(declare-fun b!6202561 () Bool)

(assert (=> b!6202561 (= e!3776946 (not (= (head!12794 s!2326) (c!1119610 r!7292))))))

(declare-fun b!6202562 () Bool)

(declare-fun res!2565474 () Bool)

(assert (=> b!6202562 (=> (not res!2565474) (not e!3776943))))

(assert (=> b!6202562 (= res!2565474 (not call!519169))))

(declare-fun bm!519164 () Bool)

(assert (=> bm!519164 (= call!519169 (isEmpty!36601 s!2326))))

(declare-fun b!6202563 () Bool)

(assert (=> b!6202563 (= e!3776942 (not lt!2343145))))

(declare-fun b!6202564 () Bool)

(declare-fun res!2565475 () Bool)

(assert (=> b!6202564 (=> res!2565475 e!3776946)))

(assert (=> b!6202564 (= res!2565475 (not (isEmpty!36601 (tail!11878 s!2326))))))

(declare-fun b!6202565 () Bool)

(assert (=> b!6202565 (= e!3776948 e!3776942)))

(declare-fun c!1119763 () Bool)

(assert (=> b!6202565 (= c!1119763 ((_ is EmptyLang!16143) r!7292))))

(declare-fun b!6202566 () Bool)

(assert (=> b!6202566 (= e!3776948 (= lt!2343145 call!519169))))

(declare-fun b!6202567 () Bool)

(assert (=> b!6202567 (= e!3776943 (= (head!12794 s!2326) (c!1119610 r!7292)))))

(declare-fun b!6202568 () Bool)

(declare-fun derivativeStep!4856 (Regex!16143 C!32556) Regex!16143)

(assert (=> b!6202568 (= e!3776945 (matchR!8326 (derivativeStep!4856 r!7292 (head!12794 s!2326)) (tail!11878 s!2326)))))

(declare-fun b!6202569 () Bool)

(declare-fun res!2565471 () Bool)

(assert (=> b!6202569 (=> res!2565471 e!3776944)))

(assert (=> b!6202569 (= res!2565471 e!3776943)))

(declare-fun res!2565476 () Bool)

(assert (=> b!6202569 (=> (not res!2565476) (not e!3776943))))

(assert (=> b!6202569 (= res!2565476 lt!2343145)))

(assert (= (and d!1944271 c!1119762) b!6202556))

(assert (= (and d!1944271 (not c!1119762)) b!6202568))

(assert (= (and d!1944271 c!1119761) b!6202566))

(assert (= (and d!1944271 (not c!1119761)) b!6202565))

(assert (= (and b!6202565 c!1119763) b!6202563))

(assert (= (and b!6202565 (not c!1119763)) b!6202557))

(assert (= (and b!6202557 (not res!2565470)) b!6202569))

(assert (= (and b!6202569 res!2565476) b!6202562))

(assert (= (and b!6202562 res!2565474) b!6202558))

(assert (= (and b!6202558 res!2565469) b!6202567))

(assert (= (and b!6202569 (not res!2565471)) b!6202559))

(assert (= (and b!6202559 res!2565472) b!6202560))

(assert (= (and b!6202560 (not res!2565473)) b!6202564))

(assert (= (and b!6202564 (not res!2565475)) b!6202561))

(assert (= (or b!6202566 b!6202560 b!6202562) bm!519164))

(assert (=> d!1944271 m!7034664))

(assert (=> d!1944271 m!7034314))

(declare-fun m!7034674 () Bool)

(assert (=> b!6202558 m!7034674))

(assert (=> b!6202558 m!7034674))

(declare-fun m!7034676 () Bool)

(assert (=> b!6202558 m!7034676))

(declare-fun m!7034678 () Bool)

(assert (=> b!6202567 m!7034678))

(assert (=> b!6202561 m!7034678))

(assert (=> bm!519164 m!7034664))

(assert (=> b!6202568 m!7034678))

(assert (=> b!6202568 m!7034678))

(declare-fun m!7034680 () Bool)

(assert (=> b!6202568 m!7034680))

(assert (=> b!6202568 m!7034674))

(assert (=> b!6202568 m!7034680))

(assert (=> b!6202568 m!7034674))

(declare-fun m!7034682 () Bool)

(assert (=> b!6202568 m!7034682))

(assert (=> b!6202564 m!7034674))

(assert (=> b!6202564 m!7034674))

(assert (=> b!6202564 m!7034676))

(declare-fun m!7034684 () Bool)

(assert (=> b!6202556 m!7034684))

(assert (=> b!6201977 d!1944271))

(declare-fun d!1944275 () Bool)

(assert (=> d!1944275 (= (matchR!8326 r!7292 s!2326) (matchRSpec!3244 r!7292 s!2326))))

(declare-fun lt!2343148 () Unit!157903)

(declare-fun choose!46103 (Regex!16143 List!64730) Unit!157903)

(assert (=> d!1944275 (= lt!2343148 (choose!46103 r!7292 s!2326))))

(assert (=> d!1944275 (validRegex!7879 r!7292)))

(assert (=> d!1944275 (= (mainMatchTheorem!3244 r!7292 s!2326) lt!2343148)))

(declare-fun bs!1538772 () Bool)

(assert (= bs!1538772 d!1944275))

(assert (=> bs!1538772 m!7034348))

(assert (=> bs!1538772 m!7034346))

(declare-fun m!7034686 () Bool)

(assert (=> bs!1538772 m!7034686))

(assert (=> bs!1538772 m!7034314))

(assert (=> b!6201977 d!1944275))

(declare-fun d!1944277 () Bool)

(declare-fun nullableFct!2092 (Regex!16143) Bool)

(assert (=> d!1944277 (= (nullable!6136 (regOne!32798 (regOne!32798 r!7292))) (nullableFct!2092 (regOne!32798 (regOne!32798 r!7292))))))

(declare-fun bs!1538773 () Bool)

(assert (= bs!1538773 d!1944277))

(declare-fun m!7034688 () Bool)

(assert (=> bs!1538773 m!7034688))

(assert (=> b!6201996 d!1944277))

(declare-fun d!1944279 () Bool)

(declare-fun lt!2343151 () Regex!16143)

(assert (=> d!1944279 (validRegex!7879 lt!2343151)))

(assert (=> d!1944279 (= lt!2343151 (generalisedUnion!1987 (unfocusZipperList!1564 zl!343)))))

(assert (=> d!1944279 (= (unfocusZipper!1885 zl!343) lt!2343151)))

(declare-fun bs!1538774 () Bool)

(assert (= bs!1538774 d!1944279))

(declare-fun m!7034690 () Bool)

(assert (=> bs!1538774 m!7034690))

(assert (=> bs!1538774 m!7034336))

(assert (=> bs!1538774 m!7034336))

(assert (=> bs!1538774 m!7034338))

(assert (=> b!6201989 d!1944279))

(declare-fun d!1944281 () Bool)

(declare-fun e!3776951 () Bool)

(assert (=> d!1944281 e!3776951))

(declare-fun res!2565479 () Bool)

(assert (=> d!1944281 (=> (not res!2565479) (not e!3776951))))

(declare-fun lt!2343154 () List!64729)

(declare-fun noDuplicate!1981 (List!64729) Bool)

(assert (=> d!1944281 (= res!2565479 (noDuplicate!1981 lt!2343154))))

(declare-fun choose!46104 ((InoxSet Context!11054)) List!64729)

(assert (=> d!1944281 (= lt!2343154 (choose!46104 z!1189))))

(assert (=> d!1944281 (= (toList!9927 z!1189) lt!2343154)))

(declare-fun b!6202572 () Bool)

(declare-fun content!12080 (List!64729) (InoxSet Context!11054))

(assert (=> b!6202572 (= e!3776951 (= (content!12080 lt!2343154) z!1189))))

(assert (= (and d!1944281 res!2565479) b!6202572))

(declare-fun m!7034692 () Bool)

(assert (=> d!1944281 m!7034692))

(declare-fun m!7034694 () Bool)

(assert (=> d!1944281 m!7034694))

(declare-fun m!7034696 () Bool)

(assert (=> b!6202572 m!7034696))

(assert (=> b!6201978 d!1944281))

(declare-fun bs!1538775 () Bool)

(declare-fun d!1944283 () Bool)

(assert (= bs!1538775 (and d!1944283 d!1944251)))

(declare-fun lambda!338961 () Int)

(assert (=> bs!1538775 (= lambda!338961 lambda!338942)))

(declare-fun bs!1538776 () Bool)

(assert (= bs!1538776 (and d!1944283 d!1944261)))

(assert (=> bs!1538776 (= lambda!338961 lambda!338943)))

(declare-fun bs!1538777 () Bool)

(assert (= bs!1538777 (and d!1944283 d!1944167)))

(assert (=> bs!1538777 (= lambda!338961 lambda!338906)))

(declare-fun bs!1538778 () Bool)

(assert (= bs!1538778 (and d!1944283 d!1944247)))

(assert (=> bs!1538778 (= lambda!338961 lambda!338939)))

(declare-fun bs!1538779 () Bool)

(assert (= bs!1538779 (and d!1944283 d!1944169)))

(assert (=> bs!1538779 (= lambda!338961 lambda!338907)))

(declare-fun b!6202593 () Bool)

(declare-fun e!3776967 () Regex!16143)

(declare-fun e!3776969 () Regex!16143)

(assert (=> b!6202593 (= e!3776967 e!3776969)))

(declare-fun c!1119773 () Bool)

(assert (=> b!6202593 (= c!1119773 ((_ is Cons!64604) (exprs!6027 (h!71053 zl!343))))))

(declare-fun e!3776966 () Bool)

(assert (=> d!1944283 e!3776966))

(declare-fun res!2565485 () Bool)

(assert (=> d!1944283 (=> (not res!2565485) (not e!3776966))))

(declare-fun lt!2343157 () Regex!16143)

(assert (=> d!1944283 (= res!2565485 (validRegex!7879 lt!2343157))))

(assert (=> d!1944283 (= lt!2343157 e!3776967)))

(declare-fun c!1119775 () Bool)

(declare-fun e!3776968 () Bool)

(assert (=> d!1944283 (= c!1119775 e!3776968)))

(declare-fun res!2565484 () Bool)

(assert (=> d!1944283 (=> (not res!2565484) (not e!3776968))))

(assert (=> d!1944283 (= res!2565484 ((_ is Cons!64604) (exprs!6027 (h!71053 zl!343))))))

(assert (=> d!1944283 (forall!15256 (exprs!6027 (h!71053 zl!343)) lambda!338961)))

(assert (=> d!1944283 (= (generalisedConcat!1740 (exprs!6027 (h!71053 zl!343))) lt!2343157)))

(declare-fun b!6202594 () Bool)

(assert (=> b!6202594 (= e!3776969 (Concat!24988 (h!71052 (exprs!6027 (h!71053 zl!343))) (generalisedConcat!1740 (t!378246 (exprs!6027 (h!71053 zl!343))))))))

(declare-fun b!6202595 () Bool)

(assert (=> b!6202595 (= e!3776968 (isEmpty!36598 (t!378246 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun b!6202596 () Bool)

(declare-fun e!3776965 () Bool)

(assert (=> b!6202596 (= e!3776965 (= lt!2343157 (head!12795 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun b!6202597 () Bool)

(assert (=> b!6202597 (= e!3776967 (h!71052 (exprs!6027 (h!71053 zl!343))))))

(declare-fun b!6202598 () Bool)

(declare-fun isConcat!1076 (Regex!16143) Bool)

(assert (=> b!6202598 (= e!3776965 (isConcat!1076 lt!2343157))))

(declare-fun b!6202599 () Bool)

(assert (=> b!6202599 (= e!3776969 EmptyExpr!16143)))

(declare-fun b!6202600 () Bool)

(declare-fun e!3776964 () Bool)

(assert (=> b!6202600 (= e!3776964 e!3776965)))

(declare-fun c!1119774 () Bool)

(assert (=> b!6202600 (= c!1119774 (isEmpty!36598 (tail!11880 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun b!6202601 () Bool)

(assert (=> b!6202601 (= e!3776966 e!3776964)))

(declare-fun c!1119772 () Bool)

(assert (=> b!6202601 (= c!1119772 (isEmpty!36598 (exprs!6027 (h!71053 zl!343))))))

(declare-fun b!6202602 () Bool)

(declare-fun isEmptyExpr!1553 (Regex!16143) Bool)

(assert (=> b!6202602 (= e!3776964 (isEmptyExpr!1553 lt!2343157))))

(assert (= (and d!1944283 res!2565484) b!6202595))

(assert (= (and d!1944283 c!1119775) b!6202597))

(assert (= (and d!1944283 (not c!1119775)) b!6202593))

(assert (= (and b!6202593 c!1119773) b!6202594))

(assert (= (and b!6202593 (not c!1119773)) b!6202599))

(assert (= (and d!1944283 res!2565485) b!6202601))

(assert (= (and b!6202601 c!1119772) b!6202602))

(assert (= (and b!6202601 (not c!1119772)) b!6202600))

(assert (= (and b!6202600 c!1119774) b!6202596))

(assert (= (and b!6202600 (not c!1119774)) b!6202598))

(declare-fun m!7034698 () Bool)

(assert (=> b!6202601 m!7034698))

(declare-fun m!7034700 () Bool)

(assert (=> b!6202598 m!7034700))

(declare-fun m!7034702 () Bool)

(assert (=> b!6202596 m!7034702))

(declare-fun m!7034704 () Bool)

(assert (=> b!6202600 m!7034704))

(assert (=> b!6202600 m!7034704))

(declare-fun m!7034706 () Bool)

(assert (=> b!6202600 m!7034706))

(assert (=> b!6202595 m!7034316))

(declare-fun m!7034708 () Bool)

(assert (=> b!6202594 m!7034708))

(declare-fun m!7034710 () Bool)

(assert (=> d!1944283 m!7034710))

(declare-fun m!7034712 () Bool)

(assert (=> d!1944283 m!7034712))

(declare-fun m!7034714 () Bool)

(assert (=> b!6202602 m!7034714))

(assert (=> b!6201988 d!1944283))

(declare-fun d!1944285 () Bool)

(declare-fun dynLambda!25479 (Int Context!11054) (InoxSet Context!11054))

(assert (=> d!1944285 (= (flatMap!1648 z!1189 lambda!338903) (dynLambda!25479 lambda!338903 (h!71053 zl!343)))))

(declare-fun lt!2343160 () Unit!157903)

(declare-fun choose!46107 ((InoxSet Context!11054) Context!11054 Int) Unit!157903)

(assert (=> d!1944285 (= lt!2343160 (choose!46107 z!1189 (h!71053 zl!343) lambda!338903))))

(assert (=> d!1944285 (= z!1189 (store ((as const (Array Context!11054 Bool)) false) (h!71053 zl!343) true))))

(assert (=> d!1944285 (= (lemmaFlatMapOnSingletonSet!1174 z!1189 (h!71053 zl!343) lambda!338903) lt!2343160)))

(declare-fun b_lambda!235897 () Bool)

(assert (=> (not b_lambda!235897) (not d!1944285)))

(declare-fun bs!1538780 () Bool)

(assert (= bs!1538780 d!1944285))

(assert (=> bs!1538780 m!7034334))

(declare-fun m!7034716 () Bool)

(assert (=> bs!1538780 m!7034716))

(declare-fun m!7034718 () Bool)

(assert (=> bs!1538780 m!7034718))

(declare-fun m!7034720 () Bool)

(assert (=> bs!1538780 m!7034720))

(assert (=> b!6201985 d!1944285))

(declare-fun d!1944287 () Bool)

(declare-fun choose!46108 ((InoxSet Context!11054) Int) (InoxSet Context!11054))

(assert (=> d!1944287 (= (flatMap!1648 z!1189 lambda!338903) (choose!46108 z!1189 lambda!338903))))

(declare-fun bs!1538781 () Bool)

(assert (= bs!1538781 d!1944287))

(declare-fun m!7034722 () Bool)

(assert (=> bs!1538781 m!7034722))

(assert (=> b!6201985 d!1944287))

(declare-fun b!6202625 () Bool)

(declare-fun e!3776985 () (InoxSet Context!11054))

(assert (=> b!6202625 (= e!3776985 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6202626 () Bool)

(declare-fun e!3776984 () (InoxSet Context!11054))

(declare-fun call!519186 () (InoxSet Context!11054))

(assert (=> b!6202626 (= e!3776984 call!519186)))

(declare-fun bm!519177 () Bool)

(declare-fun call!519187 () List!64728)

(declare-fun c!1119787 () Bool)

(declare-fun c!1119788 () Bool)

(declare-fun $colon$colon!2012 (List!64728 Regex!16143) List!64728)

(assert (=> bm!519177 (= call!519187 ($colon$colon!2012 (exprs!6027 lt!2343076) (ite (or c!1119787 c!1119788) (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (h!71052 (exprs!6027 (h!71053 zl!343))))))))

(declare-fun b!6202627 () Bool)

(declare-fun e!3776987 () (InoxSet Context!11054))

(assert (=> b!6202627 (= e!3776987 e!3776984)))

(assert (=> b!6202627 (= c!1119788 ((_ is Concat!24988) (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun b!6202628 () Bool)

(declare-fun call!519184 () (InoxSet Context!11054))

(declare-fun call!519183 () (InoxSet Context!11054))

(assert (=> b!6202628 (= e!3776987 ((_ map or) call!519184 call!519183))))

(declare-fun b!6202629 () Bool)

(declare-fun c!1119789 () Bool)

(assert (=> b!6202629 (= c!1119789 ((_ is Star!16143) (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(assert (=> b!6202629 (= e!3776984 e!3776985)))

(declare-fun d!1944289 () Bool)

(declare-fun c!1119790 () Bool)

(assert (=> d!1944289 (= c!1119790 (and ((_ is ElementMatch!16143) (h!71052 (exprs!6027 (h!71053 zl!343)))) (= (c!1119610 (h!71052 (exprs!6027 (h!71053 zl!343)))) (h!71054 s!2326))))))

(declare-fun e!3776982 () (InoxSet Context!11054))

(assert (=> d!1944289 (= (derivationStepZipperDown!1391 (h!71052 (exprs!6027 (h!71053 zl!343))) lt!2343076 (h!71054 s!2326)) e!3776982)))

(declare-fun call!519182 () List!64728)

(declare-fun c!1119786 () Bool)

(declare-fun call!519185 () (InoxSet Context!11054))

(declare-fun bm!519178 () Bool)

(assert (=> bm!519178 (= call!519185 (derivationStepZipperDown!1391 (ite c!1119786 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119787 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119788 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343))))))) (ite (or c!1119786 c!1119787) lt!2343076 (Context!11055 call!519182)) (h!71054 s!2326)))))

(declare-fun bm!519179 () Bool)

(assert (=> bm!519179 (= call!519186 call!519183)))

(declare-fun b!6202630 () Bool)

(declare-fun e!3776986 () (InoxSet Context!11054))

(assert (=> b!6202630 (= e!3776982 e!3776986)))

(assert (=> b!6202630 (= c!1119786 ((_ is Union!16143) (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun b!6202631 () Bool)

(assert (=> b!6202631 (= e!3776982 (store ((as const (Array Context!11054 Bool)) false) lt!2343076 true))))

(declare-fun b!6202632 () Bool)

(declare-fun e!3776983 () Bool)

(assert (=> b!6202632 (= e!3776983 (nullable!6136 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343))))))))

(declare-fun bm!519180 () Bool)

(assert (=> bm!519180 (= call!519184 (derivationStepZipperDown!1391 (ite c!1119786 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343))))) (ite c!1119786 lt!2343076 (Context!11055 call!519187)) (h!71054 s!2326)))))

(declare-fun b!6202633 () Bool)

(assert (=> b!6202633 (= e!3776985 call!519186)))

(declare-fun bm!519181 () Bool)

(assert (=> bm!519181 (= call!519183 call!519185)))

(declare-fun b!6202634 () Bool)

(assert (=> b!6202634 (= c!1119787 e!3776983)))

(declare-fun res!2565488 () Bool)

(assert (=> b!6202634 (=> (not res!2565488) (not e!3776983))))

(assert (=> b!6202634 (= res!2565488 ((_ is Concat!24988) (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(assert (=> b!6202634 (= e!3776986 e!3776987)))

(declare-fun b!6202635 () Bool)

(assert (=> b!6202635 (= e!3776986 ((_ map or) call!519184 call!519185))))

(declare-fun bm!519182 () Bool)

(assert (=> bm!519182 (= call!519182 call!519187)))

(assert (= (and d!1944289 c!1119790) b!6202631))

(assert (= (and d!1944289 (not c!1119790)) b!6202630))

(assert (= (and b!6202630 c!1119786) b!6202635))

(assert (= (and b!6202630 (not c!1119786)) b!6202634))

(assert (= (and b!6202634 res!2565488) b!6202632))

(assert (= (and b!6202634 c!1119787) b!6202628))

(assert (= (and b!6202634 (not c!1119787)) b!6202627))

(assert (= (and b!6202627 c!1119788) b!6202626))

(assert (= (and b!6202627 (not c!1119788)) b!6202629))

(assert (= (and b!6202629 c!1119789) b!6202633))

(assert (= (and b!6202629 (not c!1119789)) b!6202625))

(assert (= (or b!6202626 b!6202633) bm!519182))

(assert (= (or b!6202626 b!6202633) bm!519179))

(assert (= (or b!6202628 bm!519182) bm!519177))

(assert (= (or b!6202628 bm!519179) bm!519181))

(assert (= (or b!6202635 bm!519181) bm!519178))

(assert (= (or b!6202635 b!6202628) bm!519180))

(declare-fun m!7034724 () Bool)

(assert (=> bm!519178 m!7034724))

(declare-fun m!7034726 () Bool)

(assert (=> b!6202632 m!7034726))

(declare-fun m!7034728 () Bool)

(assert (=> bm!519180 m!7034728))

(declare-fun m!7034730 () Bool)

(assert (=> bm!519177 m!7034730))

(declare-fun m!7034732 () Bool)

(assert (=> b!6202631 m!7034732))

(assert (=> b!6201985 d!1944289))

(declare-fun d!1944291 () Bool)

(assert (=> d!1944291 (= (nullable!6136 (h!71052 (exprs!6027 (h!71053 zl!343)))) (nullableFct!2092 (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun bs!1538782 () Bool)

(assert (= bs!1538782 d!1944291))

(declare-fun m!7034734 () Bool)

(assert (=> bs!1538782 m!7034734))

(assert (=> b!6201985 d!1944291))

(declare-fun bm!519185 () Bool)

(declare-fun call!519190 () (InoxSet Context!11054))

(assert (=> bm!519185 (= call!519190 (derivationStepZipperDown!1391 (h!71052 (exprs!6027 (h!71053 zl!343))) (Context!11055 (t!378246 (exprs!6027 (h!71053 zl!343)))) (h!71054 s!2326)))))

(declare-fun d!1944293 () Bool)

(declare-fun c!1119796 () Bool)

(declare-fun e!3776996 () Bool)

(assert (=> d!1944293 (= c!1119796 e!3776996)))

(declare-fun res!2565491 () Bool)

(assert (=> d!1944293 (=> (not res!2565491) (not e!3776996))))

(assert (=> d!1944293 (= res!2565491 ((_ is Cons!64604) (exprs!6027 (h!71053 zl!343))))))

(declare-fun e!3776995 () (InoxSet Context!11054))

(assert (=> d!1944293 (= (derivationStepZipperUp!1317 (h!71053 zl!343) (h!71054 s!2326)) e!3776995)))

(declare-fun b!6202646 () Bool)

(declare-fun e!3776994 () (InoxSet Context!11054))

(assert (=> b!6202646 (= e!3776994 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6202647 () Bool)

(assert (=> b!6202647 (= e!3776995 e!3776994)))

(declare-fun c!1119795 () Bool)

(assert (=> b!6202647 (= c!1119795 ((_ is Cons!64604) (exprs!6027 (h!71053 zl!343))))))

(declare-fun b!6202648 () Bool)

(assert (=> b!6202648 (= e!3776994 call!519190)))

(declare-fun b!6202649 () Bool)

(assert (=> b!6202649 (= e!3776995 ((_ map or) call!519190 (derivationStepZipperUp!1317 (Context!11055 (t!378246 (exprs!6027 (h!71053 zl!343)))) (h!71054 s!2326))))))

(declare-fun b!6202650 () Bool)

(assert (=> b!6202650 (= e!3776996 (nullable!6136 (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(assert (= (and d!1944293 res!2565491) b!6202650))

(assert (= (and d!1944293 c!1119796) b!6202649))

(assert (= (and d!1944293 (not c!1119796)) b!6202647))

(assert (= (and b!6202647 c!1119795) b!6202648))

(assert (= (and b!6202647 (not c!1119795)) b!6202646))

(assert (= (or b!6202649 b!6202648) bm!519185))

(declare-fun m!7034736 () Bool)

(assert (=> bm!519185 m!7034736))

(declare-fun m!7034738 () Bool)

(assert (=> b!6202649 m!7034738))

(assert (=> b!6202650 m!7034328))

(assert (=> b!6201985 d!1944293))

(declare-fun bm!519186 () Bool)

(declare-fun call!519191 () (InoxSet Context!11054))

(assert (=> bm!519186 (= call!519191 (derivationStepZipperDown!1391 (h!71052 (exprs!6027 lt!2343076)) (Context!11055 (t!378246 (exprs!6027 lt!2343076))) (h!71054 s!2326)))))

(declare-fun d!1944295 () Bool)

(declare-fun c!1119798 () Bool)

(declare-fun e!3776999 () Bool)

(assert (=> d!1944295 (= c!1119798 e!3776999)))

(declare-fun res!2565492 () Bool)

(assert (=> d!1944295 (=> (not res!2565492) (not e!3776999))))

(assert (=> d!1944295 (= res!2565492 ((_ is Cons!64604) (exprs!6027 lt!2343076)))))

(declare-fun e!3776998 () (InoxSet Context!11054))

(assert (=> d!1944295 (= (derivationStepZipperUp!1317 lt!2343076 (h!71054 s!2326)) e!3776998)))

(declare-fun b!6202651 () Bool)

(declare-fun e!3776997 () (InoxSet Context!11054))

(assert (=> b!6202651 (= e!3776997 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6202652 () Bool)

(assert (=> b!6202652 (= e!3776998 e!3776997)))

(declare-fun c!1119797 () Bool)

(assert (=> b!6202652 (= c!1119797 ((_ is Cons!64604) (exprs!6027 lt!2343076)))))

(declare-fun b!6202653 () Bool)

(assert (=> b!6202653 (= e!3776997 call!519191)))

(declare-fun b!6202654 () Bool)

(assert (=> b!6202654 (= e!3776998 ((_ map or) call!519191 (derivationStepZipperUp!1317 (Context!11055 (t!378246 (exprs!6027 lt!2343076))) (h!71054 s!2326))))))

(declare-fun b!6202655 () Bool)

(assert (=> b!6202655 (= e!3776999 (nullable!6136 (h!71052 (exprs!6027 lt!2343076))))))

(assert (= (and d!1944295 res!2565492) b!6202655))

(assert (= (and d!1944295 c!1119798) b!6202654))

(assert (= (and d!1944295 (not c!1119798)) b!6202652))

(assert (= (and b!6202652 c!1119797) b!6202653))

(assert (= (and b!6202652 (not c!1119797)) b!6202651))

(assert (= (or b!6202654 b!6202653) bm!519186))

(declare-fun m!7034740 () Bool)

(assert (=> bm!519186 m!7034740))

(declare-fun m!7034742 () Bool)

(assert (=> b!6202654 m!7034742))

(declare-fun m!7034744 () Bool)

(assert (=> b!6202655 m!7034744))

(assert (=> b!6201985 d!1944295))

(declare-fun bm!519187 () Bool)

(declare-fun call!519192 () (InoxSet Context!11054))

(assert (=> bm!519187 (= call!519192 (derivationStepZipperDown!1391 (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343))))))) (Context!11055 (t!378246 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))) (h!71054 s!2326)))))

(declare-fun d!1944297 () Bool)

(declare-fun c!1119800 () Bool)

(declare-fun e!3777002 () Bool)

(assert (=> d!1944297 (= c!1119800 e!3777002)))

(declare-fun res!2565493 () Bool)

(assert (=> d!1944297 (=> (not res!2565493) (not e!3777002))))

(assert (=> d!1944297 (= res!2565493 ((_ is Cons!64604) (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343))))))))))

(declare-fun e!3777001 () (InoxSet Context!11054))

(assert (=> d!1944297 (= (derivationStepZipperUp!1317 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343))))) (h!71054 s!2326)) e!3777001)))

(declare-fun b!6202656 () Bool)

(declare-fun e!3777000 () (InoxSet Context!11054))

(assert (=> b!6202656 (= e!3777000 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6202657 () Bool)

(assert (=> b!6202657 (= e!3777001 e!3777000)))

(declare-fun c!1119799 () Bool)

(assert (=> b!6202657 (= c!1119799 ((_ is Cons!64604) (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343))))))))))

(declare-fun b!6202658 () Bool)

(assert (=> b!6202658 (= e!3777000 call!519192)))

(declare-fun b!6202659 () Bool)

(assert (=> b!6202659 (= e!3777001 ((_ map or) call!519192 (derivationStepZipperUp!1317 (Context!11055 (t!378246 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))) (h!71054 s!2326))))))

(declare-fun b!6202660 () Bool)

(assert (=> b!6202660 (= e!3777002 (nullable!6136 (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))))))

(assert (= (and d!1944297 res!2565493) b!6202660))

(assert (= (and d!1944297 c!1119800) b!6202659))

(assert (= (and d!1944297 (not c!1119800)) b!6202657))

(assert (= (and b!6202657 c!1119799) b!6202658))

(assert (= (and b!6202657 (not c!1119799)) b!6202656))

(assert (= (or b!6202659 b!6202658) bm!519187))

(declare-fun m!7034746 () Bool)

(assert (=> bm!519187 m!7034746))

(declare-fun m!7034748 () Bool)

(assert (=> b!6202659 m!7034748))

(declare-fun m!7034750 () Bool)

(assert (=> b!6202660 m!7034750))

(assert (=> b!6201985 d!1944297))

(declare-fun d!1944299 () Bool)

(assert (=> d!1944299 (= (isEmpty!36598 (t!378246 (exprs!6027 (h!71053 zl!343)))) ((_ is Nil!64604) (t!378246 (exprs!6027 (h!71053 zl!343)))))))

(assert (=> b!6201974 d!1944299))

(declare-fun b!6202661 () Bool)

(declare-fun e!3777006 () (InoxSet Context!11054))

(assert (=> b!6202661 (= e!3777006 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6202662 () Bool)

(declare-fun e!3777005 () (InoxSet Context!11054))

(declare-fun call!519197 () (InoxSet Context!11054))

(assert (=> b!6202662 (= e!3777005 call!519197)))

(declare-fun bm!519188 () Bool)

(declare-fun c!1119802 () Bool)

(declare-fun c!1119803 () Bool)

(declare-fun call!519198 () List!64728)

(assert (=> bm!519188 (= call!519198 ($colon$colon!2012 (exprs!6027 lt!2343073) (ite (or c!1119802 c!1119803) (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 r!7292)))))))

(declare-fun b!6202663 () Bool)

(declare-fun e!3777008 () (InoxSet Context!11054))

(assert (=> b!6202663 (= e!3777008 e!3777005)))

(assert (=> b!6202663 (= c!1119803 ((_ is Concat!24988) (regOne!32798 (regOne!32798 r!7292))))))

(declare-fun b!6202664 () Bool)

(declare-fun call!519195 () (InoxSet Context!11054))

(declare-fun call!519194 () (InoxSet Context!11054))

(assert (=> b!6202664 (= e!3777008 ((_ map or) call!519195 call!519194))))

(declare-fun b!6202665 () Bool)

(declare-fun c!1119804 () Bool)

(assert (=> b!6202665 (= c!1119804 ((_ is Star!16143) (regOne!32798 (regOne!32798 r!7292))))))

(assert (=> b!6202665 (= e!3777005 e!3777006)))

(declare-fun d!1944301 () Bool)

(declare-fun c!1119805 () Bool)

(assert (=> d!1944301 (= c!1119805 (and ((_ is ElementMatch!16143) (regOne!32798 (regOne!32798 r!7292))) (= (c!1119610 (regOne!32798 (regOne!32798 r!7292))) (h!71054 s!2326))))))

(declare-fun e!3777003 () (InoxSet Context!11054))

(assert (=> d!1944301 (= (derivationStepZipperDown!1391 (regOne!32798 (regOne!32798 r!7292)) lt!2343073 (h!71054 s!2326)) e!3777003)))

(declare-fun c!1119801 () Bool)

(declare-fun call!519196 () (InoxSet Context!11054))

(declare-fun bm!519189 () Bool)

(declare-fun call!519193 () List!64728)

(assert (=> bm!519189 (= call!519196 (derivationStepZipperDown!1391 (ite c!1119801 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119802 (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119803 (regOne!32798 (regOne!32798 (regOne!32798 r!7292))) (reg!16472 (regOne!32798 (regOne!32798 r!7292)))))) (ite (or c!1119801 c!1119802) lt!2343073 (Context!11055 call!519193)) (h!71054 s!2326)))))

(declare-fun bm!519190 () Bool)

(assert (=> bm!519190 (= call!519197 call!519194)))

(declare-fun b!6202666 () Bool)

(declare-fun e!3777007 () (InoxSet Context!11054))

(assert (=> b!6202666 (= e!3777003 e!3777007)))

(assert (=> b!6202666 (= c!1119801 ((_ is Union!16143) (regOne!32798 (regOne!32798 r!7292))))))

(declare-fun b!6202667 () Bool)

(assert (=> b!6202667 (= e!3777003 (store ((as const (Array Context!11054 Bool)) false) lt!2343073 true))))

(declare-fun b!6202668 () Bool)

(declare-fun e!3777004 () Bool)

(assert (=> b!6202668 (= e!3777004 (nullable!6136 (regOne!32798 (regOne!32798 (regOne!32798 r!7292)))))))

(declare-fun bm!519191 () Bool)

(assert (=> bm!519191 (= call!519195 (derivationStepZipperDown!1391 (ite c!1119801 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292)))) (ite c!1119801 lt!2343073 (Context!11055 call!519198)) (h!71054 s!2326)))))

(declare-fun b!6202669 () Bool)

(assert (=> b!6202669 (= e!3777006 call!519197)))

(declare-fun bm!519192 () Bool)

(assert (=> bm!519192 (= call!519194 call!519196)))

(declare-fun b!6202670 () Bool)

(assert (=> b!6202670 (= c!1119802 e!3777004)))

(declare-fun res!2565494 () Bool)

(assert (=> b!6202670 (=> (not res!2565494) (not e!3777004))))

(assert (=> b!6202670 (= res!2565494 ((_ is Concat!24988) (regOne!32798 (regOne!32798 r!7292))))))

(assert (=> b!6202670 (= e!3777007 e!3777008)))

(declare-fun b!6202671 () Bool)

(assert (=> b!6202671 (= e!3777007 ((_ map or) call!519195 call!519196))))

(declare-fun bm!519193 () Bool)

(assert (=> bm!519193 (= call!519193 call!519198)))

(assert (= (and d!1944301 c!1119805) b!6202667))

(assert (= (and d!1944301 (not c!1119805)) b!6202666))

(assert (= (and b!6202666 c!1119801) b!6202671))

(assert (= (and b!6202666 (not c!1119801)) b!6202670))

(assert (= (and b!6202670 res!2565494) b!6202668))

(assert (= (and b!6202670 c!1119802) b!6202664))

(assert (= (and b!6202670 (not c!1119802)) b!6202663))

(assert (= (and b!6202663 c!1119803) b!6202662))

(assert (= (and b!6202663 (not c!1119803)) b!6202665))

(assert (= (and b!6202665 c!1119804) b!6202669))

(assert (= (and b!6202665 (not c!1119804)) b!6202661))

(assert (= (or b!6202662 b!6202669) bm!519193))

(assert (= (or b!6202662 b!6202669) bm!519190))

(assert (= (or b!6202664 bm!519193) bm!519188))

(assert (= (or b!6202664 bm!519190) bm!519192))

(assert (= (or b!6202671 bm!519192) bm!519189))

(assert (= (or b!6202671 b!6202664) bm!519191))

(declare-fun m!7034752 () Bool)

(assert (=> bm!519189 m!7034752))

(declare-fun m!7034754 () Bool)

(assert (=> b!6202668 m!7034754))

(declare-fun m!7034756 () Bool)

(assert (=> bm!519191 m!7034756))

(declare-fun m!7034758 () Bool)

(assert (=> bm!519188 m!7034758))

(declare-fun m!7034760 () Bool)

(assert (=> b!6202667 m!7034760))

(assert (=> b!6201984 d!1944301))

(declare-fun b!6202672 () Bool)

(declare-fun e!3777012 () (InoxSet Context!11054))

(assert (=> b!6202672 (= e!3777012 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6202673 () Bool)

(declare-fun e!3777011 () (InoxSet Context!11054))

(declare-fun call!519203 () (InoxSet Context!11054))

(assert (=> b!6202673 (= e!3777011 call!519203)))

(declare-fun bm!519194 () Bool)

(declare-fun c!1119808 () Bool)

(declare-fun c!1119807 () Bool)

(declare-fun call!519204 () List!64728)

(assert (=> bm!519194 (= call!519204 ($colon$colon!2012 (exprs!6027 lt!2343076) (ite (or c!1119807 c!1119808) (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (regTwo!32798 (regOne!32798 r!7292)))))))

(declare-fun b!6202674 () Bool)

(declare-fun e!3777014 () (InoxSet Context!11054))

(assert (=> b!6202674 (= e!3777014 e!3777011)))

(assert (=> b!6202674 (= c!1119808 ((_ is Concat!24988) (regTwo!32798 (regOne!32798 r!7292))))))

(declare-fun b!6202675 () Bool)

(declare-fun call!519201 () (InoxSet Context!11054))

(declare-fun call!519200 () (InoxSet Context!11054))

(assert (=> b!6202675 (= e!3777014 ((_ map or) call!519201 call!519200))))

(declare-fun b!6202676 () Bool)

(declare-fun c!1119809 () Bool)

(assert (=> b!6202676 (= c!1119809 ((_ is Star!16143) (regTwo!32798 (regOne!32798 r!7292))))))

(assert (=> b!6202676 (= e!3777011 e!3777012)))

(declare-fun d!1944303 () Bool)

(declare-fun c!1119810 () Bool)

(assert (=> d!1944303 (= c!1119810 (and ((_ is ElementMatch!16143) (regTwo!32798 (regOne!32798 r!7292))) (= (c!1119610 (regTwo!32798 (regOne!32798 r!7292))) (h!71054 s!2326))))))

(declare-fun e!3777009 () (InoxSet Context!11054))

(assert (=> d!1944303 (= (derivationStepZipperDown!1391 (regTwo!32798 (regOne!32798 r!7292)) lt!2343076 (h!71054 s!2326)) e!3777009)))

(declare-fun bm!519195 () Bool)

(declare-fun call!519199 () List!64728)

(declare-fun call!519202 () (InoxSet Context!11054))

(declare-fun c!1119806 () Bool)

(assert (=> bm!519195 (= call!519202 (derivationStepZipperDown!1391 (ite c!1119806 (regTwo!32799 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119807 (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119808 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))) (reg!16472 (regTwo!32798 (regOne!32798 r!7292)))))) (ite (or c!1119806 c!1119807) lt!2343076 (Context!11055 call!519199)) (h!71054 s!2326)))))

(declare-fun bm!519196 () Bool)

(assert (=> bm!519196 (= call!519203 call!519200)))

(declare-fun b!6202677 () Bool)

(declare-fun e!3777013 () (InoxSet Context!11054))

(assert (=> b!6202677 (= e!3777009 e!3777013)))

(assert (=> b!6202677 (= c!1119806 ((_ is Union!16143) (regTwo!32798 (regOne!32798 r!7292))))))

(declare-fun b!6202678 () Bool)

(assert (=> b!6202678 (= e!3777009 (store ((as const (Array Context!11054 Bool)) false) lt!2343076 true))))

(declare-fun b!6202679 () Bool)

(declare-fun e!3777010 () Bool)

(assert (=> b!6202679 (= e!3777010 (nullable!6136 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292)))))))

(declare-fun bm!519197 () Bool)

(assert (=> bm!519197 (= call!519201 (derivationStepZipperDown!1391 (ite c!1119806 (regOne!32799 (regTwo!32798 (regOne!32798 r!7292))) (regOne!32798 (regTwo!32798 (regOne!32798 r!7292)))) (ite c!1119806 lt!2343076 (Context!11055 call!519204)) (h!71054 s!2326)))))

(declare-fun b!6202680 () Bool)

(assert (=> b!6202680 (= e!3777012 call!519203)))

(declare-fun bm!519198 () Bool)

(assert (=> bm!519198 (= call!519200 call!519202)))

(declare-fun b!6202681 () Bool)

(assert (=> b!6202681 (= c!1119807 e!3777010)))

(declare-fun res!2565495 () Bool)

(assert (=> b!6202681 (=> (not res!2565495) (not e!3777010))))

(assert (=> b!6202681 (= res!2565495 ((_ is Concat!24988) (regTwo!32798 (regOne!32798 r!7292))))))

(assert (=> b!6202681 (= e!3777013 e!3777014)))

(declare-fun b!6202682 () Bool)

(assert (=> b!6202682 (= e!3777013 ((_ map or) call!519201 call!519202))))

(declare-fun bm!519199 () Bool)

(assert (=> bm!519199 (= call!519199 call!519204)))

(assert (= (and d!1944303 c!1119810) b!6202678))

(assert (= (and d!1944303 (not c!1119810)) b!6202677))

(assert (= (and b!6202677 c!1119806) b!6202682))

(assert (= (and b!6202677 (not c!1119806)) b!6202681))

(assert (= (and b!6202681 res!2565495) b!6202679))

(assert (= (and b!6202681 c!1119807) b!6202675))

(assert (= (and b!6202681 (not c!1119807)) b!6202674))

(assert (= (and b!6202674 c!1119808) b!6202673))

(assert (= (and b!6202674 (not c!1119808)) b!6202676))

(assert (= (and b!6202676 c!1119809) b!6202680))

(assert (= (and b!6202676 (not c!1119809)) b!6202672))

(assert (= (or b!6202673 b!6202680) bm!519199))

(assert (= (or b!6202673 b!6202680) bm!519196))

(assert (= (or b!6202675 bm!519199) bm!519194))

(assert (= (or b!6202675 bm!519196) bm!519198))

(assert (= (or b!6202682 bm!519198) bm!519195))

(assert (= (or b!6202682 b!6202675) bm!519197))

(declare-fun m!7034762 () Bool)

(assert (=> bm!519195 m!7034762))

(declare-fun m!7034764 () Bool)

(assert (=> b!6202679 m!7034764))

(declare-fun m!7034766 () Bool)

(assert (=> bm!519197 m!7034766))

(declare-fun m!7034768 () Bool)

(assert (=> bm!519194 m!7034768))

(assert (=> b!6202678 m!7034732))

(assert (=> b!6201984 d!1944303))

(declare-fun condSetEmpty!42110 () Bool)

(assert (=> setNonEmpty!42104 (= condSetEmpty!42110 (= setRest!42104 ((as const (Array Context!11054 Bool)) false)))))

(declare-fun setRes!42110 () Bool)

(assert (=> setNonEmpty!42104 (= tp!1729796 setRes!42110)))

(declare-fun setIsEmpty!42110 () Bool)

(assert (=> setIsEmpty!42110 setRes!42110))

(declare-fun tp!1729865 () Bool)

(declare-fun setElem!42110 () Context!11054)

(declare-fun e!3777017 () Bool)

(declare-fun setNonEmpty!42110 () Bool)

(assert (=> setNonEmpty!42110 (= setRes!42110 (and tp!1729865 (inv!83604 setElem!42110) e!3777017))))

(declare-fun setRest!42110 () (InoxSet Context!11054))

(assert (=> setNonEmpty!42110 (= setRest!42104 ((_ map or) (store ((as const (Array Context!11054 Bool)) false) setElem!42110 true) setRest!42110))))

(declare-fun b!6202687 () Bool)

(declare-fun tp!1729866 () Bool)

(assert (=> b!6202687 (= e!3777017 tp!1729866)))

(assert (= (and setNonEmpty!42104 condSetEmpty!42110) setIsEmpty!42110))

(assert (= (and setNonEmpty!42104 (not condSetEmpty!42110)) setNonEmpty!42110))

(assert (= setNonEmpty!42110 b!6202687))

(declare-fun m!7034770 () Bool)

(assert (=> setNonEmpty!42110 m!7034770))

(declare-fun b!6202701 () Bool)

(declare-fun e!3777020 () Bool)

(declare-fun tp!1729881 () Bool)

(declare-fun tp!1729878 () Bool)

(assert (=> b!6202701 (= e!3777020 (and tp!1729881 tp!1729878))))

(declare-fun b!6202699 () Bool)

(declare-fun tp!1729879 () Bool)

(declare-fun tp!1729880 () Bool)

(assert (=> b!6202699 (= e!3777020 (and tp!1729879 tp!1729880))))

(declare-fun b!6202700 () Bool)

(declare-fun tp!1729877 () Bool)

(assert (=> b!6202700 (= e!3777020 tp!1729877)))

(declare-fun b!6202698 () Bool)

(assert (=> b!6202698 (= e!3777020 tp_is_empty!41539)))

(assert (=> b!6201987 (= tp!1729801 e!3777020)))

(assert (= (and b!6201987 ((_ is ElementMatch!16143) (reg!16472 r!7292))) b!6202698))

(assert (= (and b!6201987 ((_ is Concat!24988) (reg!16472 r!7292))) b!6202699))

(assert (= (and b!6201987 ((_ is Star!16143) (reg!16472 r!7292))) b!6202700))

(assert (= (and b!6201987 ((_ is Union!16143) (reg!16472 r!7292))) b!6202701))

(declare-fun b!6202706 () Bool)

(declare-fun e!3777023 () Bool)

(declare-fun tp!1729886 () Bool)

(declare-fun tp!1729887 () Bool)

(assert (=> b!6202706 (= e!3777023 (and tp!1729886 tp!1729887))))

(assert (=> b!6201992 (= tp!1729795 e!3777023)))

(assert (= (and b!6201992 ((_ is Cons!64604) (exprs!6027 (h!71053 zl!343)))) b!6202706))

(declare-fun b!6202707 () Bool)

(declare-fun e!3777024 () Bool)

(declare-fun tp!1729888 () Bool)

(declare-fun tp!1729889 () Bool)

(assert (=> b!6202707 (= e!3777024 (and tp!1729888 tp!1729889))))

(assert (=> b!6201990 (= tp!1729794 e!3777024)))

(assert (= (and b!6201990 ((_ is Cons!64604) (exprs!6027 setElem!42104))) b!6202707))

(declare-fun b!6202711 () Bool)

(declare-fun e!3777025 () Bool)

(declare-fun tp!1729894 () Bool)

(declare-fun tp!1729891 () Bool)

(assert (=> b!6202711 (= e!3777025 (and tp!1729894 tp!1729891))))

(declare-fun b!6202709 () Bool)

(declare-fun tp!1729892 () Bool)

(declare-fun tp!1729893 () Bool)

(assert (=> b!6202709 (= e!3777025 (and tp!1729892 tp!1729893))))

(declare-fun b!6202710 () Bool)

(declare-fun tp!1729890 () Bool)

(assert (=> b!6202710 (= e!3777025 tp!1729890)))

(declare-fun b!6202708 () Bool)

(assert (=> b!6202708 (= e!3777025 tp_is_empty!41539)))

(assert (=> b!6201995 (= tp!1729800 e!3777025)))

(assert (= (and b!6201995 ((_ is ElementMatch!16143) (regOne!32799 r!7292))) b!6202708))

(assert (= (and b!6201995 ((_ is Concat!24988) (regOne!32799 r!7292))) b!6202709))

(assert (= (and b!6201995 ((_ is Star!16143) (regOne!32799 r!7292))) b!6202710))

(assert (= (and b!6201995 ((_ is Union!16143) (regOne!32799 r!7292))) b!6202711))

(declare-fun b!6202715 () Bool)

(declare-fun e!3777026 () Bool)

(declare-fun tp!1729899 () Bool)

(declare-fun tp!1729896 () Bool)

(assert (=> b!6202715 (= e!3777026 (and tp!1729899 tp!1729896))))

(declare-fun b!6202713 () Bool)

(declare-fun tp!1729897 () Bool)

(declare-fun tp!1729898 () Bool)

(assert (=> b!6202713 (= e!3777026 (and tp!1729897 tp!1729898))))

(declare-fun b!6202714 () Bool)

(declare-fun tp!1729895 () Bool)

(assert (=> b!6202714 (= e!3777026 tp!1729895)))

(declare-fun b!6202712 () Bool)

(assert (=> b!6202712 (= e!3777026 tp_is_empty!41539)))

(assert (=> b!6201995 (= tp!1729802 e!3777026)))

(assert (= (and b!6201995 ((_ is ElementMatch!16143) (regTwo!32799 r!7292))) b!6202712))

(assert (= (and b!6201995 ((_ is Concat!24988) (regTwo!32799 r!7292))) b!6202713))

(assert (= (and b!6201995 ((_ is Star!16143) (regTwo!32799 r!7292))) b!6202714))

(assert (= (and b!6201995 ((_ is Union!16143) (regTwo!32799 r!7292))) b!6202715))

(declare-fun b!6202723 () Bool)

(declare-fun e!3777032 () Bool)

(declare-fun tp!1729904 () Bool)

(assert (=> b!6202723 (= e!3777032 tp!1729904)))

(declare-fun tp!1729905 () Bool)

(declare-fun e!3777031 () Bool)

(declare-fun b!6202722 () Bool)

(assert (=> b!6202722 (= e!3777031 (and (inv!83604 (h!71053 (t!378247 zl!343))) e!3777032 tp!1729905))))

(assert (=> b!6201981 (= tp!1729793 e!3777031)))

(assert (= b!6202722 b!6202723))

(assert (= (and b!6201981 ((_ is Cons!64605) (t!378247 zl!343))) b!6202722))

(declare-fun m!7034772 () Bool)

(assert (=> b!6202722 m!7034772))

(declare-fun b!6202728 () Bool)

(declare-fun e!3777035 () Bool)

(declare-fun tp!1729908 () Bool)

(assert (=> b!6202728 (= e!3777035 (and tp_is_empty!41539 tp!1729908))))

(assert (=> b!6201986 (= tp!1729797 e!3777035)))

(assert (= (and b!6201986 ((_ is Cons!64606) (t!378248 s!2326))) b!6202728))

(declare-fun b!6202732 () Bool)

(declare-fun e!3777036 () Bool)

(declare-fun tp!1729913 () Bool)

(declare-fun tp!1729910 () Bool)

(assert (=> b!6202732 (= e!3777036 (and tp!1729913 tp!1729910))))

(declare-fun b!6202730 () Bool)

(declare-fun tp!1729911 () Bool)

(declare-fun tp!1729912 () Bool)

(assert (=> b!6202730 (= e!3777036 (and tp!1729911 tp!1729912))))

(declare-fun b!6202731 () Bool)

(declare-fun tp!1729909 () Bool)

(assert (=> b!6202731 (= e!3777036 tp!1729909)))

(declare-fun b!6202729 () Bool)

(assert (=> b!6202729 (= e!3777036 tp_is_empty!41539)))

(assert (=> b!6201994 (= tp!1729799 e!3777036)))

(assert (= (and b!6201994 ((_ is ElementMatch!16143) (regOne!32798 r!7292))) b!6202729))

(assert (= (and b!6201994 ((_ is Concat!24988) (regOne!32798 r!7292))) b!6202730))

(assert (= (and b!6201994 ((_ is Star!16143) (regOne!32798 r!7292))) b!6202731))

(assert (= (and b!6201994 ((_ is Union!16143) (regOne!32798 r!7292))) b!6202732))

(declare-fun b!6202736 () Bool)

(declare-fun e!3777037 () Bool)

(declare-fun tp!1729918 () Bool)

(declare-fun tp!1729915 () Bool)

(assert (=> b!6202736 (= e!3777037 (and tp!1729918 tp!1729915))))

(declare-fun b!6202734 () Bool)

(declare-fun tp!1729916 () Bool)

(declare-fun tp!1729917 () Bool)

(assert (=> b!6202734 (= e!3777037 (and tp!1729916 tp!1729917))))

(declare-fun b!6202735 () Bool)

(declare-fun tp!1729914 () Bool)

(assert (=> b!6202735 (= e!3777037 tp!1729914)))

(declare-fun b!6202733 () Bool)

(assert (=> b!6202733 (= e!3777037 tp_is_empty!41539)))

(assert (=> b!6201994 (= tp!1729798 e!3777037)))

(assert (= (and b!6201994 ((_ is ElementMatch!16143) (regTwo!32798 r!7292))) b!6202733))

(assert (= (and b!6201994 ((_ is Concat!24988) (regTwo!32798 r!7292))) b!6202734))

(assert (= (and b!6201994 ((_ is Star!16143) (regTwo!32798 r!7292))) b!6202735))

(assert (= (and b!6201994 ((_ is Union!16143) (regTwo!32798 r!7292))) b!6202736))

(declare-fun b_lambda!235899 () Bool)

(assert (= b_lambda!235897 (or b!6201985 b_lambda!235899)))

(declare-fun bs!1538783 () Bool)

(declare-fun d!1944305 () Bool)

(assert (= bs!1538783 (and d!1944305 b!6201985)))

(assert (=> bs!1538783 (= (dynLambda!25479 lambda!338903 (h!71053 zl!343)) (derivationStepZipperUp!1317 (h!71053 zl!343) (h!71054 s!2326)))))

(assert (=> bs!1538783 m!7034326))

(assert (=> d!1944285 d!1944305))

(check-sat (not bm!519160) (not bm!519186) (not b!6202056) (not b!6202202) (not d!1944175) (not d!1944167) (not b!6202400) (not b!6202472) (not b!6202731) (not d!1944245) (not d!1944181) (not b!6202415) (not b!6202398) (not b!6202715) (not b!6202655) (not bm!519129) (not b!6202564) (not d!1944281) (not b!6202203) (not d!1944205) (not b!6202558) (not b!6202200) (not b!6202594) (not b!6202700) (not b!6202556) (not b!6202679) (not bm!519178) (not b!6202732) (not b!6202722) (not b!6202649) (not d!1944259) (not b!6202668) (not d!1944277) (not d!1944251) (not b!6202701) (not setNonEmpty!42110) (not d!1944203) (not bm!519188) (not b!6202207) (not d!1944225) (not b!6202730) (not b!6202706) (not bm!519128) (not bm!519185) (not b!6202568) (not bm!519180) (not d!1944279) (not b!6202723) (not b!6202054) (not d!1944275) (not b!6202394) (not d!1944201) (not b!6202572) (not b!6202401) (not b!6202567) (not b!6202598) (not b!6202468) (not b!6202108) (not b!6202417) (not b!6202600) (not d!1944261) (not bm!519187) (not bm!519189) (not b!6202418) (not b!6202736) (not b!6202660) (not b!6202659) (not b!6202728) (not b!6202709) (not b!6202561) (not d!1944283) (not b!6202714) (not d!1944287) (not b!6202055) (not b!6202206) (not d!1944247) (not b!6202057) (not d!1944285) (not b!6202654) (not b!6202699) tp_is_empty!41539 (not d!1944171) (not d!1944185) (not b!6202205) (not bm!519161) (not b_lambda!235899) (not d!1944169) (not b!6202735) (not b!6202596) (not b!6202027) (not bs!1538783) (not bm!519195) (not b!6202393) (not b!6202713) (not b!6202734) (not b!6202711) (not bm!519194) (not b!6202707) (not bm!519191) (not b!6202595) (not b!6202687) (not b!6202710) (not bm!519164) (not b!6202650) (not b!6202632) (not b!6202399) (not bm!519177) (not d!1944271) (not b!6202392) (not b!6202602) (not bm!519197) (not d!1944291) (not b!6202601))
(check-sat)
(get-model)

(declare-fun b!6202737 () Bool)

(declare-fun e!3777041 () (InoxSet Context!11054))

(assert (=> b!6202737 (= e!3777041 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6202738 () Bool)

(declare-fun e!3777040 () (InoxSet Context!11054))

(declare-fun call!519209 () (InoxSet Context!11054))

(assert (=> b!6202738 (= e!3777040 call!519209)))

(declare-fun c!1119812 () Bool)

(declare-fun call!519210 () List!64728)

(declare-fun bm!519200 () Bool)

(declare-fun c!1119813 () Bool)

(assert (=> bm!519200 (= call!519210 ($colon$colon!2012 (exprs!6027 (ite c!1119806 lt!2343076 (Context!11055 call!519204))) (ite (or c!1119812 c!1119813) (regTwo!32798 (ite c!1119806 (regOne!32799 (regTwo!32798 (regOne!32798 r!7292))) (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))))) (ite c!1119806 (regOne!32799 (regTwo!32798 (regOne!32798 r!7292))) (regOne!32798 (regTwo!32798 (regOne!32798 r!7292)))))))))

(declare-fun b!6202739 () Bool)

(declare-fun e!3777043 () (InoxSet Context!11054))

(assert (=> b!6202739 (= e!3777043 e!3777040)))

(assert (=> b!6202739 (= c!1119813 ((_ is Concat!24988) (ite c!1119806 (regOne!32799 (regTwo!32798 (regOne!32798 r!7292))) (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))))))))

(declare-fun b!6202740 () Bool)

(declare-fun call!519207 () (InoxSet Context!11054))

(declare-fun call!519206 () (InoxSet Context!11054))

(assert (=> b!6202740 (= e!3777043 ((_ map or) call!519207 call!519206))))

(declare-fun b!6202741 () Bool)

(declare-fun c!1119814 () Bool)

(assert (=> b!6202741 (= c!1119814 ((_ is Star!16143) (ite c!1119806 (regOne!32799 (regTwo!32798 (regOne!32798 r!7292))) (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))))))))

(assert (=> b!6202741 (= e!3777040 e!3777041)))

(declare-fun d!1944307 () Bool)

(declare-fun c!1119815 () Bool)

(assert (=> d!1944307 (= c!1119815 (and ((_ is ElementMatch!16143) (ite c!1119806 (regOne!32799 (regTwo!32798 (regOne!32798 r!7292))) (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))))) (= (c!1119610 (ite c!1119806 (regOne!32799 (regTwo!32798 (regOne!32798 r!7292))) (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))))) (h!71054 s!2326))))))

(declare-fun e!3777038 () (InoxSet Context!11054))

(assert (=> d!1944307 (= (derivationStepZipperDown!1391 (ite c!1119806 (regOne!32799 (regTwo!32798 (regOne!32798 r!7292))) (regOne!32798 (regTwo!32798 (regOne!32798 r!7292)))) (ite c!1119806 lt!2343076 (Context!11055 call!519204)) (h!71054 s!2326)) e!3777038)))

(declare-fun bm!519201 () Bool)

(declare-fun c!1119811 () Bool)

(declare-fun call!519205 () List!64728)

(declare-fun call!519208 () (InoxSet Context!11054))

(assert (=> bm!519201 (= call!519208 (derivationStepZipperDown!1391 (ite c!1119811 (regTwo!32799 (ite c!1119806 (regOne!32799 (regTwo!32798 (regOne!32798 r!7292))) (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))))) (ite c!1119812 (regTwo!32798 (ite c!1119806 (regOne!32799 (regTwo!32798 (regOne!32798 r!7292))) (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))))) (ite c!1119813 (regOne!32798 (ite c!1119806 (regOne!32799 (regTwo!32798 (regOne!32798 r!7292))) (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))))) (reg!16472 (ite c!1119806 (regOne!32799 (regTwo!32798 (regOne!32798 r!7292))) (regOne!32798 (regTwo!32798 (regOne!32798 r!7292)))))))) (ite (or c!1119811 c!1119812) (ite c!1119806 lt!2343076 (Context!11055 call!519204)) (Context!11055 call!519205)) (h!71054 s!2326)))))

(declare-fun bm!519202 () Bool)

(assert (=> bm!519202 (= call!519209 call!519206)))

(declare-fun b!6202742 () Bool)

(declare-fun e!3777042 () (InoxSet Context!11054))

(assert (=> b!6202742 (= e!3777038 e!3777042)))

(assert (=> b!6202742 (= c!1119811 ((_ is Union!16143) (ite c!1119806 (regOne!32799 (regTwo!32798 (regOne!32798 r!7292))) (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))))))))

(declare-fun b!6202743 () Bool)

(assert (=> b!6202743 (= e!3777038 (store ((as const (Array Context!11054 Bool)) false) (ite c!1119806 lt!2343076 (Context!11055 call!519204)) true))))

(declare-fun b!6202744 () Bool)

(declare-fun e!3777039 () Bool)

(assert (=> b!6202744 (= e!3777039 (nullable!6136 (regOne!32798 (ite c!1119806 (regOne!32799 (regTwo!32798 (regOne!32798 r!7292))) (regOne!32798 (regTwo!32798 (regOne!32798 r!7292)))))))))

(declare-fun bm!519203 () Bool)

(assert (=> bm!519203 (= call!519207 (derivationStepZipperDown!1391 (ite c!1119811 (regOne!32799 (ite c!1119806 (regOne!32799 (regTwo!32798 (regOne!32798 r!7292))) (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))))) (regOne!32798 (ite c!1119806 (regOne!32799 (regTwo!32798 (regOne!32798 r!7292))) (regOne!32798 (regTwo!32798 (regOne!32798 r!7292)))))) (ite c!1119811 (ite c!1119806 lt!2343076 (Context!11055 call!519204)) (Context!11055 call!519210)) (h!71054 s!2326)))))

(declare-fun b!6202745 () Bool)

(assert (=> b!6202745 (= e!3777041 call!519209)))

(declare-fun bm!519204 () Bool)

(assert (=> bm!519204 (= call!519206 call!519208)))

(declare-fun b!6202746 () Bool)

(assert (=> b!6202746 (= c!1119812 e!3777039)))

(declare-fun res!2565496 () Bool)

(assert (=> b!6202746 (=> (not res!2565496) (not e!3777039))))

(assert (=> b!6202746 (= res!2565496 ((_ is Concat!24988) (ite c!1119806 (regOne!32799 (regTwo!32798 (regOne!32798 r!7292))) (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))))))))

(assert (=> b!6202746 (= e!3777042 e!3777043)))

(declare-fun b!6202747 () Bool)

(assert (=> b!6202747 (= e!3777042 ((_ map or) call!519207 call!519208))))

(declare-fun bm!519205 () Bool)

(assert (=> bm!519205 (= call!519205 call!519210)))

(assert (= (and d!1944307 c!1119815) b!6202743))

(assert (= (and d!1944307 (not c!1119815)) b!6202742))

(assert (= (and b!6202742 c!1119811) b!6202747))

(assert (= (and b!6202742 (not c!1119811)) b!6202746))

(assert (= (and b!6202746 res!2565496) b!6202744))

(assert (= (and b!6202746 c!1119812) b!6202740))

(assert (= (and b!6202746 (not c!1119812)) b!6202739))

(assert (= (and b!6202739 c!1119813) b!6202738))

(assert (= (and b!6202739 (not c!1119813)) b!6202741))

(assert (= (and b!6202741 c!1119814) b!6202745))

(assert (= (and b!6202741 (not c!1119814)) b!6202737))

(assert (= (or b!6202738 b!6202745) bm!519205))

(assert (= (or b!6202738 b!6202745) bm!519202))

(assert (= (or b!6202740 bm!519205) bm!519200))

(assert (= (or b!6202740 bm!519202) bm!519204))

(assert (= (or b!6202747 bm!519204) bm!519201))

(assert (= (or b!6202747 b!6202740) bm!519203))

(declare-fun m!7034774 () Bool)

(assert (=> bm!519201 m!7034774))

(declare-fun m!7034776 () Bool)

(assert (=> b!6202744 m!7034776))

(declare-fun m!7034778 () Bool)

(assert (=> bm!519203 m!7034778))

(declare-fun m!7034780 () Bool)

(assert (=> bm!519200 m!7034780))

(declare-fun m!7034782 () Bool)

(assert (=> b!6202743 m!7034782))

(assert (=> bm!519197 d!1944307))

(declare-fun d!1944309 () Bool)

(declare-fun res!2565501 () Bool)

(declare-fun e!3777048 () Bool)

(assert (=> d!1944309 (=> res!2565501 e!3777048)))

(assert (=> d!1944309 (= res!2565501 ((_ is Nil!64604) (exprs!6027 lt!2343073)))))

(assert (=> d!1944309 (= (forall!15256 (exprs!6027 lt!2343073) lambda!338907) e!3777048)))

(declare-fun b!6202752 () Bool)

(declare-fun e!3777049 () Bool)

(assert (=> b!6202752 (= e!3777048 e!3777049)))

(declare-fun res!2565502 () Bool)

(assert (=> b!6202752 (=> (not res!2565502) (not e!3777049))))

(declare-fun dynLambda!25480 (Int Regex!16143) Bool)

(assert (=> b!6202752 (= res!2565502 (dynLambda!25480 lambda!338907 (h!71052 (exprs!6027 lt!2343073))))))

(declare-fun b!6202753 () Bool)

(assert (=> b!6202753 (= e!3777049 (forall!15256 (t!378246 (exprs!6027 lt!2343073)) lambda!338907))))

(assert (= (and d!1944309 (not res!2565501)) b!6202752))

(assert (= (and b!6202752 res!2565502) b!6202753))

(declare-fun b_lambda!235901 () Bool)

(assert (=> (not b_lambda!235901) (not b!6202752)))

(declare-fun m!7034784 () Bool)

(assert (=> b!6202752 m!7034784))

(declare-fun m!7034786 () Bool)

(assert (=> b!6202753 m!7034786))

(assert (=> d!1944169 d!1944309))

(declare-fun d!1944311 () Bool)

(declare-fun lambda!338964 () Int)

(declare-fun exists!2473 ((InoxSet Context!11054) Int) Bool)

(assert (=> d!1944311 (= (nullableZipper!1917 lt!2343064) (exists!2473 lt!2343064 lambda!338964))))

(declare-fun bs!1538784 () Bool)

(assert (= bs!1538784 d!1944311))

(declare-fun m!7034788 () Bool)

(assert (=> bs!1538784 m!7034788))

(assert (=> b!6202417 d!1944311))

(declare-fun d!1944313 () Bool)

(declare-fun e!3777054 () Bool)

(assert (=> d!1944313 e!3777054))

(declare-fun res!2565508 () Bool)

(assert (=> d!1944313 (=> (not res!2565508) (not e!3777054))))

(declare-fun lt!2343163 () List!64730)

(declare-fun content!12081 (List!64730) (InoxSet C!32556))

(assert (=> d!1944313 (= res!2565508 (= (content!12081 lt!2343163) ((_ map or) (content!12081 (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) Nil!64606))) (content!12081 (t!378248 s!2326)))))))

(declare-fun e!3777055 () List!64730)

(assert (=> d!1944313 (= lt!2343163 e!3777055)))

(declare-fun c!1119820 () Bool)

(assert (=> d!1944313 (= c!1119820 ((_ is Nil!64606) (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) Nil!64606))))))

(assert (=> d!1944313 (= (++!14220 (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) Nil!64606)) (t!378248 s!2326)) lt!2343163)))

(declare-fun b!6202762 () Bool)

(assert (=> b!6202762 (= e!3777055 (t!378248 s!2326))))

(declare-fun b!6202765 () Bool)

(assert (=> b!6202765 (= e!3777054 (or (not (= (t!378248 s!2326) Nil!64606)) (= lt!2343163 (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) Nil!64606)))))))

(declare-fun b!6202763 () Bool)

(assert (=> b!6202763 (= e!3777055 (Cons!64606 (h!71054 (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) Nil!64606))) (++!14220 (t!378248 (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) Nil!64606))) (t!378248 s!2326))))))

(declare-fun b!6202764 () Bool)

(declare-fun res!2565507 () Bool)

(assert (=> b!6202764 (=> (not res!2565507) (not e!3777054))))

(declare-fun size!40269 (List!64730) Int)

(assert (=> b!6202764 (= res!2565507 (= (size!40269 lt!2343163) (+ (size!40269 (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) Nil!64606))) (size!40269 (t!378248 s!2326)))))))

(assert (= (and d!1944313 c!1119820) b!6202762))

(assert (= (and d!1944313 (not c!1119820)) b!6202763))

(assert (= (and d!1944313 res!2565508) b!6202764))

(assert (= (and b!6202764 res!2565507) b!6202765))

(declare-fun m!7034790 () Bool)

(assert (=> d!1944313 m!7034790))

(assert (=> d!1944313 m!7034460))

(declare-fun m!7034792 () Bool)

(assert (=> d!1944313 m!7034792))

(declare-fun m!7034794 () Bool)

(assert (=> d!1944313 m!7034794))

(declare-fun m!7034796 () Bool)

(assert (=> b!6202763 m!7034796))

(declare-fun m!7034798 () Bool)

(assert (=> b!6202764 m!7034798))

(assert (=> b!6202764 m!7034460))

(declare-fun m!7034800 () Bool)

(assert (=> b!6202764 m!7034800))

(declare-fun m!7034802 () Bool)

(assert (=> b!6202764 m!7034802))

(assert (=> b!6202200 d!1944313))

(declare-fun d!1944315 () Bool)

(declare-fun e!3777056 () Bool)

(assert (=> d!1944315 e!3777056))

(declare-fun res!2565510 () Bool)

(assert (=> d!1944315 (=> (not res!2565510) (not e!3777056))))

(declare-fun lt!2343164 () List!64730)

(assert (=> d!1944315 (= res!2565510 (= (content!12081 lt!2343164) ((_ map or) (content!12081 Nil!64606) (content!12081 (Cons!64606 (h!71054 s!2326) Nil!64606)))))))

(declare-fun e!3777057 () List!64730)

(assert (=> d!1944315 (= lt!2343164 e!3777057)))

(declare-fun c!1119821 () Bool)

(assert (=> d!1944315 (= c!1119821 ((_ is Nil!64606) Nil!64606))))

(assert (=> d!1944315 (= (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) Nil!64606)) lt!2343164)))

(declare-fun b!6202766 () Bool)

(assert (=> b!6202766 (= e!3777057 (Cons!64606 (h!71054 s!2326) Nil!64606))))

(declare-fun b!6202769 () Bool)

(assert (=> b!6202769 (= e!3777056 (or (not (= (Cons!64606 (h!71054 s!2326) Nil!64606) Nil!64606)) (= lt!2343164 Nil!64606)))))

(declare-fun b!6202767 () Bool)

(assert (=> b!6202767 (= e!3777057 (Cons!64606 (h!71054 Nil!64606) (++!14220 (t!378248 Nil!64606) (Cons!64606 (h!71054 s!2326) Nil!64606))))))

(declare-fun b!6202768 () Bool)

(declare-fun res!2565509 () Bool)

(assert (=> b!6202768 (=> (not res!2565509) (not e!3777056))))

(assert (=> b!6202768 (= res!2565509 (= (size!40269 lt!2343164) (+ (size!40269 Nil!64606) (size!40269 (Cons!64606 (h!71054 s!2326) Nil!64606)))))))

(assert (= (and d!1944315 c!1119821) b!6202766))

(assert (= (and d!1944315 (not c!1119821)) b!6202767))

(assert (= (and d!1944315 res!2565510) b!6202768))

(assert (= (and b!6202768 res!2565509) b!6202769))

(declare-fun m!7034804 () Bool)

(assert (=> d!1944315 m!7034804))

(declare-fun m!7034806 () Bool)

(assert (=> d!1944315 m!7034806))

(declare-fun m!7034808 () Bool)

(assert (=> d!1944315 m!7034808))

(declare-fun m!7034810 () Bool)

(assert (=> b!6202767 m!7034810))

(declare-fun m!7034812 () Bool)

(assert (=> b!6202768 m!7034812))

(declare-fun m!7034814 () Bool)

(assert (=> b!6202768 m!7034814))

(declare-fun m!7034816 () Bool)

(assert (=> b!6202768 m!7034816))

(assert (=> b!6202200 d!1944315))

(declare-fun d!1944317 () Bool)

(assert (=> d!1944317 (= (++!14220 (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) Nil!64606)) (t!378248 s!2326)) s!2326)))

(declare-fun lt!2343167 () Unit!157903)

(declare-fun choose!46110 (List!64730 C!32556 List!64730 List!64730) Unit!157903)

(assert (=> d!1944317 (= lt!2343167 (choose!46110 Nil!64606 (h!71054 s!2326) (t!378248 s!2326) s!2326))))

(assert (=> d!1944317 (= (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) (t!378248 s!2326))) s!2326)))

(assert (=> d!1944317 (= (lemmaMoveElementToOtherListKeepsConcatEq!2315 Nil!64606 (h!71054 s!2326) (t!378248 s!2326) s!2326) lt!2343167)))

(declare-fun bs!1538785 () Bool)

(assert (= bs!1538785 d!1944317))

(assert (=> bs!1538785 m!7034460))

(assert (=> bs!1538785 m!7034460))

(assert (=> bs!1538785 m!7034462))

(declare-fun m!7034818 () Bool)

(assert (=> bs!1538785 m!7034818))

(declare-fun m!7034820 () Bool)

(assert (=> bs!1538785 m!7034820))

(assert (=> b!6202200 d!1944317))

(declare-fun b!6202770 () Bool)

(declare-fun e!3777058 () Option!16034)

(assert (=> b!6202770 (= e!3777058 None!16033)))

(declare-fun b!6202771 () Bool)

(declare-fun lt!2343168 () Unit!157903)

(declare-fun lt!2343170 () Unit!157903)

(assert (=> b!6202771 (= lt!2343168 lt!2343170)))

(assert (=> b!6202771 (= (++!14220 (++!14220 (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) Nil!64606)) (Cons!64606 (h!71054 (t!378248 s!2326)) Nil!64606)) (t!378248 (t!378248 s!2326))) s!2326)))

(assert (=> b!6202771 (= lt!2343170 (lemmaMoveElementToOtherListKeepsConcatEq!2315 (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) Nil!64606)) (h!71054 (t!378248 s!2326)) (t!378248 (t!378248 s!2326)) s!2326))))

(assert (=> b!6202771 (= e!3777058 (findConcatSeparation!2448 (regOne!32798 r!7292) (regTwo!32798 r!7292) (++!14220 (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) Nil!64606)) (Cons!64606 (h!71054 (t!378248 s!2326)) Nil!64606)) (t!378248 (t!378248 s!2326)) s!2326))))

(declare-fun b!6202772 () Bool)

(declare-fun e!3777059 () Option!16034)

(assert (=> b!6202772 (= e!3777059 (Some!16033 (tuple2!66245 (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) Nil!64606)) (t!378248 s!2326))))))

(declare-fun b!6202773 () Bool)

(declare-fun e!3777061 () Bool)

(declare-fun lt!2343169 () Option!16034)

(assert (=> b!6202773 (= e!3777061 (not (isDefined!12737 lt!2343169)))))

(declare-fun b!6202774 () Bool)

(declare-fun res!2565515 () Bool)

(declare-fun e!3777062 () Bool)

(assert (=> b!6202774 (=> (not res!2565515) (not e!3777062))))

(assert (=> b!6202774 (= res!2565515 (matchR!8326 (regOne!32798 r!7292) (_1!36425 (get!22307 lt!2343169))))))

(declare-fun d!1944319 () Bool)

(assert (=> d!1944319 e!3777061))

(declare-fun res!2565512 () Bool)

(assert (=> d!1944319 (=> res!2565512 e!3777061)))

(assert (=> d!1944319 (= res!2565512 e!3777062)))

(declare-fun res!2565511 () Bool)

(assert (=> d!1944319 (=> (not res!2565511) (not e!3777062))))

(assert (=> d!1944319 (= res!2565511 (isDefined!12737 lt!2343169))))

(assert (=> d!1944319 (= lt!2343169 e!3777059)))

(declare-fun c!1119822 () Bool)

(declare-fun e!3777060 () Bool)

(assert (=> d!1944319 (= c!1119822 e!3777060)))

(declare-fun res!2565513 () Bool)

(assert (=> d!1944319 (=> (not res!2565513) (not e!3777060))))

(assert (=> d!1944319 (= res!2565513 (matchR!8326 (regOne!32798 r!7292) (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) Nil!64606))))))

(assert (=> d!1944319 (validRegex!7879 (regOne!32798 r!7292))))

(assert (=> d!1944319 (= (findConcatSeparation!2448 (regOne!32798 r!7292) (regTwo!32798 r!7292) (++!14220 Nil!64606 (Cons!64606 (h!71054 s!2326) Nil!64606)) (t!378248 s!2326) s!2326) lt!2343169)))

(declare-fun b!6202775 () Bool)

(assert (=> b!6202775 (= e!3777059 e!3777058)))

(declare-fun c!1119823 () Bool)

(assert (=> b!6202775 (= c!1119823 ((_ is Nil!64606) (t!378248 s!2326)))))

(declare-fun b!6202776 () Bool)

(declare-fun res!2565514 () Bool)

(assert (=> b!6202776 (=> (not res!2565514) (not e!3777062))))

(assert (=> b!6202776 (= res!2565514 (matchR!8326 (regTwo!32798 r!7292) (_2!36425 (get!22307 lt!2343169))))))

(declare-fun b!6202777 () Bool)

(assert (=> b!6202777 (= e!3777062 (= (++!14220 (_1!36425 (get!22307 lt!2343169)) (_2!36425 (get!22307 lt!2343169))) s!2326))))

(declare-fun b!6202778 () Bool)

(assert (=> b!6202778 (= e!3777060 (matchR!8326 (regTwo!32798 r!7292) (t!378248 s!2326)))))

(assert (= (and d!1944319 res!2565513) b!6202778))

(assert (= (and d!1944319 c!1119822) b!6202772))

(assert (= (and d!1944319 (not c!1119822)) b!6202775))

(assert (= (and b!6202775 c!1119823) b!6202770))

(assert (= (and b!6202775 (not c!1119823)) b!6202771))

(assert (= (and d!1944319 res!2565511) b!6202774))

(assert (= (and b!6202774 res!2565515) b!6202776))

(assert (= (and b!6202776 res!2565514) b!6202777))

(assert (= (and d!1944319 (not res!2565512)) b!6202773))

(declare-fun m!7034822 () Bool)

(assert (=> b!6202777 m!7034822))

(declare-fun m!7034824 () Bool)

(assert (=> b!6202777 m!7034824))

(declare-fun m!7034826 () Bool)

(assert (=> b!6202778 m!7034826))

(declare-fun m!7034828 () Bool)

(assert (=> d!1944319 m!7034828))

(assert (=> d!1944319 m!7034460))

(declare-fun m!7034830 () Bool)

(assert (=> d!1944319 m!7034830))

(assert (=> d!1944319 m!7034458))

(assert (=> b!6202771 m!7034460))

(declare-fun m!7034832 () Bool)

(assert (=> b!6202771 m!7034832))

(assert (=> b!6202771 m!7034832))

(declare-fun m!7034834 () Bool)

(assert (=> b!6202771 m!7034834))

(assert (=> b!6202771 m!7034460))

(declare-fun m!7034836 () Bool)

(assert (=> b!6202771 m!7034836))

(assert (=> b!6202771 m!7034832))

(declare-fun m!7034838 () Bool)

(assert (=> b!6202771 m!7034838))

(assert (=> b!6202773 m!7034828))

(assert (=> b!6202776 m!7034822))

(declare-fun m!7034840 () Bool)

(assert (=> b!6202776 m!7034840))

(assert (=> b!6202774 m!7034822))

(declare-fun m!7034842 () Bool)

(assert (=> b!6202774 m!7034842))

(assert (=> b!6202200 d!1944319))

(declare-fun d!1944321 () Bool)

(assert (=> d!1944321 (= (isEmpty!36598 (tail!11880 (exprs!6027 (h!71053 zl!343)))) ((_ is Nil!64604) (tail!11880 (exprs!6027 (h!71053 zl!343)))))))

(assert (=> b!6202600 d!1944321))

(declare-fun d!1944323 () Bool)

(assert (=> d!1944323 (= (tail!11880 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343))))))

(assert (=> b!6202600 d!1944323))

(declare-fun d!1944325 () Bool)

(declare-fun c!1119824 () Bool)

(assert (=> d!1944325 (= c!1119824 (isEmpty!36601 (tail!11878 (t!378248 s!2326))))))

(declare-fun e!3777063 () Bool)

(assert (=> d!1944325 (= (matchZipper!2155 (derivationStepZipper!2109 ((_ map or) lt!2343071 lt!2343064) (head!12794 (t!378248 s!2326))) (tail!11878 (t!378248 s!2326))) e!3777063)))

(declare-fun b!6202779 () Bool)

(assert (=> b!6202779 (= e!3777063 (nullableZipper!1917 (derivationStepZipper!2109 ((_ map or) lt!2343071 lt!2343064) (head!12794 (t!378248 s!2326)))))))

(declare-fun b!6202780 () Bool)

(assert (=> b!6202780 (= e!3777063 (matchZipper!2155 (derivationStepZipper!2109 (derivationStepZipper!2109 ((_ map or) lt!2343071 lt!2343064) (head!12794 (t!378248 s!2326))) (head!12794 (tail!11878 (t!378248 s!2326)))) (tail!11878 (tail!11878 (t!378248 s!2326)))))))

(assert (= (and d!1944325 c!1119824) b!6202779))

(assert (= (and d!1944325 (not c!1119824)) b!6202780))

(assert (=> d!1944325 m!7034388))

(declare-fun m!7034844 () Bool)

(assert (=> d!1944325 m!7034844))

(assert (=> b!6202779 m!7034394))

(declare-fun m!7034846 () Bool)

(assert (=> b!6202779 m!7034846))

(assert (=> b!6202780 m!7034388))

(declare-fun m!7034848 () Bool)

(assert (=> b!6202780 m!7034848))

(assert (=> b!6202780 m!7034394))

(assert (=> b!6202780 m!7034848))

(declare-fun m!7034850 () Bool)

(assert (=> b!6202780 m!7034850))

(assert (=> b!6202780 m!7034388))

(declare-fun m!7034852 () Bool)

(assert (=> b!6202780 m!7034852))

(assert (=> b!6202780 m!7034850))

(assert (=> b!6202780 m!7034852))

(declare-fun m!7034854 () Bool)

(assert (=> b!6202780 m!7034854))

(assert (=> b!6202057 d!1944325))

(declare-fun bs!1538786 () Bool)

(declare-fun d!1944327 () Bool)

(assert (= bs!1538786 (and d!1944327 b!6201985)))

(declare-fun lambda!338967 () Int)

(assert (=> bs!1538786 (= (= (head!12794 (t!378248 s!2326)) (h!71054 s!2326)) (= lambda!338967 lambda!338903))))

(assert (=> d!1944327 true))

(assert (=> d!1944327 (= (derivationStepZipper!2109 ((_ map or) lt!2343071 lt!2343064) (head!12794 (t!378248 s!2326))) (flatMap!1648 ((_ map or) lt!2343071 lt!2343064) lambda!338967))))

(declare-fun bs!1538787 () Bool)

(assert (= bs!1538787 d!1944327))

(declare-fun m!7034856 () Bool)

(assert (=> bs!1538787 m!7034856))

(assert (=> b!6202057 d!1944327))

(declare-fun d!1944329 () Bool)

(assert (=> d!1944329 (= (head!12794 (t!378248 s!2326)) (h!71054 (t!378248 s!2326)))))

(assert (=> b!6202057 d!1944329))

(declare-fun d!1944331 () Bool)

(assert (=> d!1944331 (= (tail!11878 (t!378248 s!2326)) (t!378248 (t!378248 s!2326)))))

(assert (=> b!6202057 d!1944331))

(declare-fun d!1944333 () Bool)

(assert (=> d!1944333 (= (head!12795 (exprs!6027 (h!71053 zl!343))) (h!71052 (exprs!6027 (h!71053 zl!343))))))

(assert (=> b!6202596 d!1944333))

(declare-fun d!1944335 () Bool)

(assert (=> d!1944335 (= (head!12795 (unfocusZipperList!1564 zl!343)) (h!71052 (unfocusZipperList!1564 zl!343)))))

(assert (=> b!6202394 d!1944335))

(declare-fun d!1944337 () Bool)

(assert (=> d!1944337 (= (isDefined!12737 lt!2343096) (not (isEmpty!36602 lt!2343096)))))

(declare-fun bs!1538788 () Bool)

(assert (= bs!1538788 d!1944337))

(declare-fun m!7034858 () Bool)

(assert (=> bs!1538788 m!7034858))

(assert (=> d!1944185 d!1944337))

(declare-fun b!6202783 () Bool)

(declare-fun e!3777067 () Bool)

(assert (=> b!6202783 (= e!3777067 (nullable!6136 (regOne!32798 r!7292)))))

(declare-fun b!6202784 () Bool)

(declare-fun res!2565517 () Bool)

(declare-fun e!3777066 () Bool)

(assert (=> b!6202784 (=> res!2565517 e!3777066)))

(assert (=> b!6202784 (= res!2565517 (not ((_ is ElementMatch!16143) (regOne!32798 r!7292))))))

(declare-fun e!3777064 () Bool)

(assert (=> b!6202784 (= e!3777064 e!3777066)))

(declare-fun b!6202785 () Bool)

(declare-fun res!2565516 () Bool)

(declare-fun e!3777065 () Bool)

(assert (=> b!6202785 (=> (not res!2565516) (not e!3777065))))

(assert (=> b!6202785 (= res!2565516 (isEmpty!36601 (tail!11878 Nil!64606)))))

(declare-fun b!6202786 () Bool)

(declare-fun e!3777069 () Bool)

(assert (=> b!6202786 (= e!3777066 e!3777069)))

(declare-fun res!2565519 () Bool)

(assert (=> b!6202786 (=> (not res!2565519) (not e!3777069))))

(declare-fun lt!2343171 () Bool)

(assert (=> b!6202786 (= res!2565519 (not lt!2343171))))

(declare-fun d!1944339 () Bool)

(declare-fun e!3777070 () Bool)

(assert (=> d!1944339 e!3777070))

(declare-fun c!1119827 () Bool)

(assert (=> d!1944339 (= c!1119827 ((_ is EmptyExpr!16143) (regOne!32798 r!7292)))))

(assert (=> d!1944339 (= lt!2343171 e!3777067)))

(declare-fun c!1119828 () Bool)

(assert (=> d!1944339 (= c!1119828 (isEmpty!36601 Nil!64606))))

(assert (=> d!1944339 (validRegex!7879 (regOne!32798 r!7292))))

(assert (=> d!1944339 (= (matchR!8326 (regOne!32798 r!7292) Nil!64606) lt!2343171)))

(declare-fun b!6202787 () Bool)

(declare-fun e!3777068 () Bool)

(assert (=> b!6202787 (= e!3777069 e!3777068)))

(declare-fun res!2565520 () Bool)

(assert (=> b!6202787 (=> res!2565520 e!3777068)))

(declare-fun call!519211 () Bool)

(assert (=> b!6202787 (= res!2565520 call!519211)))

(declare-fun b!6202788 () Bool)

(assert (=> b!6202788 (= e!3777068 (not (= (head!12794 Nil!64606) (c!1119610 (regOne!32798 r!7292)))))))

(declare-fun b!6202789 () Bool)

(declare-fun res!2565521 () Bool)

(assert (=> b!6202789 (=> (not res!2565521) (not e!3777065))))

(assert (=> b!6202789 (= res!2565521 (not call!519211))))

(declare-fun bm!519206 () Bool)

(assert (=> bm!519206 (= call!519211 (isEmpty!36601 Nil!64606))))

(declare-fun b!6202790 () Bool)

(assert (=> b!6202790 (= e!3777064 (not lt!2343171))))

(declare-fun b!6202791 () Bool)

(declare-fun res!2565522 () Bool)

(assert (=> b!6202791 (=> res!2565522 e!3777068)))

(assert (=> b!6202791 (= res!2565522 (not (isEmpty!36601 (tail!11878 Nil!64606))))))

(declare-fun b!6202792 () Bool)

(assert (=> b!6202792 (= e!3777070 e!3777064)))

(declare-fun c!1119829 () Bool)

(assert (=> b!6202792 (= c!1119829 ((_ is EmptyLang!16143) (regOne!32798 r!7292)))))

(declare-fun b!6202793 () Bool)

(assert (=> b!6202793 (= e!3777070 (= lt!2343171 call!519211))))

(declare-fun b!6202794 () Bool)

(assert (=> b!6202794 (= e!3777065 (= (head!12794 Nil!64606) (c!1119610 (regOne!32798 r!7292))))))

(declare-fun b!6202795 () Bool)

(assert (=> b!6202795 (= e!3777067 (matchR!8326 (derivativeStep!4856 (regOne!32798 r!7292) (head!12794 Nil!64606)) (tail!11878 Nil!64606)))))

(declare-fun b!6202796 () Bool)

(declare-fun res!2565518 () Bool)

(assert (=> b!6202796 (=> res!2565518 e!3777066)))

(assert (=> b!6202796 (= res!2565518 e!3777065)))

(declare-fun res!2565523 () Bool)

(assert (=> b!6202796 (=> (not res!2565523) (not e!3777065))))

(assert (=> b!6202796 (= res!2565523 lt!2343171)))

(assert (= (and d!1944339 c!1119828) b!6202783))

(assert (= (and d!1944339 (not c!1119828)) b!6202795))

(assert (= (and d!1944339 c!1119827) b!6202793))

(assert (= (and d!1944339 (not c!1119827)) b!6202792))

(assert (= (and b!6202792 c!1119829) b!6202790))

(assert (= (and b!6202792 (not c!1119829)) b!6202784))

(assert (= (and b!6202784 (not res!2565517)) b!6202796))

(assert (= (and b!6202796 res!2565523) b!6202789))

(assert (= (and b!6202789 res!2565521) b!6202785))

(assert (= (and b!6202785 res!2565516) b!6202794))

(assert (= (and b!6202796 (not res!2565518)) b!6202786))

(assert (= (and b!6202786 res!2565519) b!6202787))

(assert (= (and b!6202787 (not res!2565520)) b!6202791))

(assert (= (and b!6202791 (not res!2565522)) b!6202788))

(assert (= (or b!6202793 b!6202787 b!6202789) bm!519206))

(declare-fun m!7034860 () Bool)

(assert (=> d!1944339 m!7034860))

(assert (=> d!1944339 m!7034458))

(declare-fun m!7034862 () Bool)

(assert (=> b!6202785 m!7034862))

(assert (=> b!6202785 m!7034862))

(declare-fun m!7034864 () Bool)

(assert (=> b!6202785 m!7034864))

(declare-fun m!7034866 () Bool)

(assert (=> b!6202794 m!7034866))

(assert (=> b!6202788 m!7034866))

(assert (=> bm!519206 m!7034860))

(assert (=> b!6202795 m!7034866))

(assert (=> b!6202795 m!7034866))

(declare-fun m!7034868 () Bool)

(assert (=> b!6202795 m!7034868))

(assert (=> b!6202795 m!7034862))

(assert (=> b!6202795 m!7034868))

(assert (=> b!6202795 m!7034862))

(declare-fun m!7034870 () Bool)

(assert (=> b!6202795 m!7034870))

(assert (=> b!6202791 m!7034862))

(assert (=> b!6202791 m!7034862))

(assert (=> b!6202791 m!7034864))

(declare-fun m!7034872 () Bool)

(assert (=> b!6202783 m!7034872))

(assert (=> d!1944185 d!1944339))

(declare-fun b!6202797 () Bool)

(declare-fun e!3777077 () Bool)

(declare-fun e!3777071 () Bool)

(assert (=> b!6202797 (= e!3777077 e!3777071)))

(declare-fun res!2565528 () Bool)

(assert (=> b!6202797 (= res!2565528 (not (nullable!6136 (reg!16472 (regOne!32798 r!7292)))))))

(assert (=> b!6202797 (=> (not res!2565528) (not e!3777071))))

(declare-fun b!6202798 () Bool)

(declare-fun e!3777074 () Bool)

(assert (=> b!6202798 (= e!3777074 e!3777077)))

(declare-fun c!1119831 () Bool)

(assert (=> b!6202798 (= c!1119831 ((_ is Star!16143) (regOne!32798 r!7292)))))

(declare-fun b!6202799 () Bool)

(declare-fun e!3777075 () Bool)

(declare-fun e!3777073 () Bool)

(assert (=> b!6202799 (= e!3777075 e!3777073)))

(declare-fun res!2565527 () Bool)

(assert (=> b!6202799 (=> (not res!2565527) (not e!3777073))))

(declare-fun call!519213 () Bool)

(assert (=> b!6202799 (= res!2565527 call!519213)))

(declare-fun b!6202801 () Bool)

(declare-fun call!519212 () Bool)

(assert (=> b!6202801 (= e!3777073 call!519212)))

(declare-fun c!1119830 () Bool)

(declare-fun bm!519207 () Bool)

(declare-fun call!519214 () Bool)

(assert (=> bm!519207 (= call!519214 (validRegex!7879 (ite c!1119831 (reg!16472 (regOne!32798 r!7292)) (ite c!1119830 (regOne!32799 (regOne!32798 r!7292)) (regOne!32798 (regOne!32798 r!7292))))))))

(declare-fun b!6202802 () Bool)

(declare-fun res!2565525 () Bool)

(assert (=> b!6202802 (=> res!2565525 e!3777075)))

(assert (=> b!6202802 (= res!2565525 (not ((_ is Concat!24988) (regOne!32798 r!7292))))))

(declare-fun e!3777076 () Bool)

(assert (=> b!6202802 (= e!3777076 e!3777075)))

(declare-fun bm!519208 () Bool)

(assert (=> bm!519208 (= call!519212 (validRegex!7879 (ite c!1119830 (regTwo!32799 (regOne!32798 r!7292)) (regTwo!32798 (regOne!32798 r!7292)))))))

(declare-fun b!6202803 () Bool)

(declare-fun e!3777072 () Bool)

(assert (=> b!6202803 (= e!3777072 call!519212)))

(declare-fun bm!519209 () Bool)

(assert (=> bm!519209 (= call!519213 call!519214)))

(declare-fun b!6202804 () Bool)

(assert (=> b!6202804 (= e!3777071 call!519214)))

(declare-fun b!6202805 () Bool)

(declare-fun res!2565524 () Bool)

(assert (=> b!6202805 (=> (not res!2565524) (not e!3777072))))

(assert (=> b!6202805 (= res!2565524 call!519213)))

(assert (=> b!6202805 (= e!3777076 e!3777072)))

(declare-fun d!1944341 () Bool)

(declare-fun res!2565526 () Bool)

(assert (=> d!1944341 (=> res!2565526 e!3777074)))

(assert (=> d!1944341 (= res!2565526 ((_ is ElementMatch!16143) (regOne!32798 r!7292)))))

(assert (=> d!1944341 (= (validRegex!7879 (regOne!32798 r!7292)) e!3777074)))

(declare-fun b!6202800 () Bool)

(assert (=> b!6202800 (= e!3777077 e!3777076)))

(assert (=> b!6202800 (= c!1119830 ((_ is Union!16143) (regOne!32798 r!7292)))))

(assert (= (and d!1944341 (not res!2565526)) b!6202798))

(assert (= (and b!6202798 c!1119831) b!6202797))

(assert (= (and b!6202798 (not c!1119831)) b!6202800))

(assert (= (and b!6202797 res!2565528) b!6202804))

(assert (= (and b!6202800 c!1119830) b!6202805))

(assert (= (and b!6202800 (not c!1119830)) b!6202802))

(assert (= (and b!6202805 res!2565524) b!6202803))

(assert (= (and b!6202802 (not res!2565525)) b!6202799))

(assert (= (and b!6202799 res!2565527) b!6202801))

(assert (= (or b!6202803 b!6202801) bm!519208))

(assert (= (or b!6202805 b!6202799) bm!519209))

(assert (= (or b!6202804 bm!519209) bm!519207))

(declare-fun m!7034874 () Bool)

(assert (=> b!6202797 m!7034874))

(declare-fun m!7034876 () Bool)

(assert (=> bm!519207 m!7034876))

(declare-fun m!7034878 () Bool)

(assert (=> bm!519208 m!7034878))

(assert (=> d!1944185 d!1944341))

(declare-fun d!1944345 () Bool)

(assert (=> d!1944345 (= (isConcat!1076 lt!2343157) ((_ is Concat!24988) lt!2343157))))

(assert (=> b!6202598 d!1944345))

(declare-fun d!1944347 () Bool)

(assert (=> d!1944347 (= (nullable!6136 (regOne!32798 (regOne!32798 (regOne!32798 r!7292)))) (nullableFct!2092 (regOne!32798 (regOne!32798 (regOne!32798 r!7292)))))))

(declare-fun bs!1538789 () Bool)

(assert (= bs!1538789 d!1944347))

(declare-fun m!7034880 () Bool)

(assert (=> bs!1538789 m!7034880))

(assert (=> b!6202668 d!1944347))

(declare-fun bs!1538791 () Bool)

(declare-fun d!1944349 () Bool)

(assert (= bs!1538791 (and d!1944349 d!1944251)))

(declare-fun lambda!338968 () Int)

(assert (=> bs!1538791 (= lambda!338968 lambda!338942)))

(declare-fun bs!1538792 () Bool)

(assert (= bs!1538792 (and d!1944349 d!1944261)))

(assert (=> bs!1538792 (= lambda!338968 lambda!338943)))

(declare-fun bs!1538793 () Bool)

(assert (= bs!1538793 (and d!1944349 d!1944167)))

(assert (=> bs!1538793 (= lambda!338968 lambda!338906)))

(declare-fun bs!1538794 () Bool)

(assert (= bs!1538794 (and d!1944349 d!1944247)))

(assert (=> bs!1538794 (= lambda!338968 lambda!338939)))

(declare-fun bs!1538795 () Bool)

(assert (= bs!1538795 (and d!1944349 d!1944169)))

(assert (=> bs!1538795 (= lambda!338968 lambda!338907)))

(declare-fun bs!1538796 () Bool)

(assert (= bs!1538796 (and d!1944349 d!1944283)))

(assert (=> bs!1538796 (= lambda!338968 lambda!338961)))

(declare-fun b!6202806 () Bool)

(declare-fun e!3777081 () Regex!16143)

(declare-fun e!3777083 () Regex!16143)

(assert (=> b!6202806 (= e!3777081 e!3777083)))

(declare-fun c!1119833 () Bool)

(assert (=> b!6202806 (= c!1119833 ((_ is Cons!64604) (t!378246 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun e!3777080 () Bool)

(assert (=> d!1944349 e!3777080))

(declare-fun res!2565530 () Bool)

(assert (=> d!1944349 (=> (not res!2565530) (not e!3777080))))

(declare-fun lt!2343172 () Regex!16143)

(assert (=> d!1944349 (= res!2565530 (validRegex!7879 lt!2343172))))

(assert (=> d!1944349 (= lt!2343172 e!3777081)))

(declare-fun c!1119835 () Bool)

(declare-fun e!3777082 () Bool)

(assert (=> d!1944349 (= c!1119835 e!3777082)))

(declare-fun res!2565529 () Bool)

(assert (=> d!1944349 (=> (not res!2565529) (not e!3777082))))

(assert (=> d!1944349 (= res!2565529 ((_ is Cons!64604) (t!378246 (exprs!6027 (h!71053 zl!343)))))))

(assert (=> d!1944349 (forall!15256 (t!378246 (exprs!6027 (h!71053 zl!343))) lambda!338968)))

(assert (=> d!1944349 (= (generalisedConcat!1740 (t!378246 (exprs!6027 (h!71053 zl!343)))) lt!2343172)))

(declare-fun b!6202807 () Bool)

(assert (=> b!6202807 (= e!3777083 (Concat!24988 (h!71052 (t!378246 (exprs!6027 (h!71053 zl!343)))) (generalisedConcat!1740 (t!378246 (t!378246 (exprs!6027 (h!71053 zl!343)))))))))

(declare-fun b!6202808 () Bool)

(assert (=> b!6202808 (= e!3777082 (isEmpty!36598 (t!378246 (t!378246 (exprs!6027 (h!71053 zl!343))))))))

(declare-fun b!6202809 () Bool)

(declare-fun e!3777079 () Bool)

(assert (=> b!6202809 (= e!3777079 (= lt!2343172 (head!12795 (t!378246 (exprs!6027 (h!71053 zl!343))))))))

(declare-fun b!6202810 () Bool)

(assert (=> b!6202810 (= e!3777081 (h!71052 (t!378246 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun b!6202811 () Bool)

(assert (=> b!6202811 (= e!3777079 (isConcat!1076 lt!2343172))))

(declare-fun b!6202812 () Bool)

(assert (=> b!6202812 (= e!3777083 EmptyExpr!16143)))

(declare-fun b!6202813 () Bool)

(declare-fun e!3777078 () Bool)

(assert (=> b!6202813 (= e!3777078 e!3777079)))

(declare-fun c!1119834 () Bool)

(assert (=> b!6202813 (= c!1119834 (isEmpty!36598 (tail!11880 (t!378246 (exprs!6027 (h!71053 zl!343))))))))

(declare-fun b!6202814 () Bool)

(assert (=> b!6202814 (= e!3777080 e!3777078)))

(declare-fun c!1119832 () Bool)

(assert (=> b!6202814 (= c!1119832 (isEmpty!36598 (t!378246 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun b!6202815 () Bool)

(assert (=> b!6202815 (= e!3777078 (isEmptyExpr!1553 lt!2343172))))

(assert (= (and d!1944349 res!2565529) b!6202808))

(assert (= (and d!1944349 c!1119835) b!6202810))

(assert (= (and d!1944349 (not c!1119835)) b!6202806))

(assert (= (and b!6202806 c!1119833) b!6202807))

(assert (= (and b!6202806 (not c!1119833)) b!6202812))

(assert (= (and d!1944349 res!2565530) b!6202814))

(assert (= (and b!6202814 c!1119832) b!6202815))

(assert (= (and b!6202814 (not c!1119832)) b!6202813))

(assert (= (and b!6202813 c!1119834) b!6202809))

(assert (= (and b!6202813 (not c!1119834)) b!6202811))

(assert (=> b!6202814 m!7034316))

(declare-fun m!7034884 () Bool)

(assert (=> b!6202811 m!7034884))

(declare-fun m!7034886 () Bool)

(assert (=> b!6202809 m!7034886))

(declare-fun m!7034888 () Bool)

(assert (=> b!6202813 m!7034888))

(assert (=> b!6202813 m!7034888))

(declare-fun m!7034890 () Bool)

(assert (=> b!6202813 m!7034890))

(declare-fun m!7034892 () Bool)

(assert (=> b!6202808 m!7034892))

(declare-fun m!7034894 () Bool)

(assert (=> b!6202807 m!7034894))

(declare-fun m!7034896 () Bool)

(assert (=> d!1944349 m!7034896))

(declare-fun m!7034898 () Bool)

(assert (=> d!1944349 m!7034898))

(declare-fun m!7034900 () Bool)

(assert (=> b!6202815 m!7034900))

(assert (=> b!6202594 d!1944349))

(declare-fun d!1944357 () Bool)

(assert (=> d!1944357 (= (isEmpty!36601 (tail!11878 s!2326)) ((_ is Nil!64606) (tail!11878 s!2326)))))

(assert (=> b!6202558 d!1944357))

(declare-fun d!1944359 () Bool)

(assert (=> d!1944359 (= (tail!11878 s!2326) (t!378248 s!2326))))

(assert (=> b!6202558 d!1944359))

(declare-fun bm!519210 () Bool)

(declare-fun call!519215 () (InoxSet Context!11054))

(assert (=> bm!519210 (= call!519215 (derivationStepZipperDown!1391 (h!71052 (exprs!6027 (Context!11055 (t!378246 (exprs!6027 (h!71053 zl!343)))))) (Context!11055 (t!378246 (exprs!6027 (Context!11055 (t!378246 (exprs!6027 (h!71053 zl!343))))))) (h!71054 s!2326)))))

(declare-fun d!1944361 () Bool)

(declare-fun c!1119837 () Bool)

(declare-fun e!3777086 () Bool)

(assert (=> d!1944361 (= c!1119837 e!3777086)))

(declare-fun res!2565531 () Bool)

(assert (=> d!1944361 (=> (not res!2565531) (not e!3777086))))

(assert (=> d!1944361 (= res!2565531 ((_ is Cons!64604) (exprs!6027 (Context!11055 (t!378246 (exprs!6027 (h!71053 zl!343)))))))))

(declare-fun e!3777085 () (InoxSet Context!11054))

(assert (=> d!1944361 (= (derivationStepZipperUp!1317 (Context!11055 (t!378246 (exprs!6027 (h!71053 zl!343)))) (h!71054 s!2326)) e!3777085)))

(declare-fun b!6202816 () Bool)

(declare-fun e!3777084 () (InoxSet Context!11054))

(assert (=> b!6202816 (= e!3777084 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6202817 () Bool)

(assert (=> b!6202817 (= e!3777085 e!3777084)))

(declare-fun c!1119836 () Bool)

(assert (=> b!6202817 (= c!1119836 ((_ is Cons!64604) (exprs!6027 (Context!11055 (t!378246 (exprs!6027 (h!71053 zl!343)))))))))

(declare-fun b!6202818 () Bool)

(assert (=> b!6202818 (= e!3777084 call!519215)))

(declare-fun b!6202819 () Bool)

(assert (=> b!6202819 (= e!3777085 ((_ map or) call!519215 (derivationStepZipperUp!1317 (Context!11055 (t!378246 (exprs!6027 (Context!11055 (t!378246 (exprs!6027 (h!71053 zl!343))))))) (h!71054 s!2326))))))

(declare-fun b!6202820 () Bool)

(assert (=> b!6202820 (= e!3777086 (nullable!6136 (h!71052 (exprs!6027 (Context!11055 (t!378246 (exprs!6027 (h!71053 zl!343))))))))))

(assert (= (and d!1944361 res!2565531) b!6202820))

(assert (= (and d!1944361 c!1119837) b!6202819))

(assert (= (and d!1944361 (not c!1119837)) b!6202817))

(assert (= (and b!6202817 c!1119836) b!6202818))

(assert (= (and b!6202817 (not c!1119836)) b!6202816))

(assert (= (or b!6202819 b!6202818) bm!519210))

(declare-fun m!7034902 () Bool)

(assert (=> bm!519210 m!7034902))

(declare-fun m!7034904 () Bool)

(assert (=> b!6202819 m!7034904))

(declare-fun m!7034906 () Bool)

(assert (=> b!6202820 m!7034906))

(assert (=> b!6202649 d!1944361))

(declare-fun d!1944363 () Bool)

(assert (=> d!1944363 (= (isEmpty!36598 (unfocusZipperList!1564 zl!343)) ((_ is Nil!64604) (unfocusZipperList!1564 zl!343)))))

(assert (=> b!6202392 d!1944363))

(declare-fun b!6202821 () Bool)

(declare-fun e!3777090 () (InoxSet Context!11054))

(assert (=> b!6202821 (= e!3777090 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6202822 () Bool)

(declare-fun e!3777089 () (InoxSet Context!11054))

(declare-fun call!519220 () (InoxSet Context!11054))

(assert (=> b!6202822 (= e!3777089 call!519220)))

(declare-fun bm!519211 () Bool)

(declare-fun c!1119840 () Bool)

(declare-fun c!1119839 () Bool)

(declare-fun call!519221 () List!64728)

(assert (=> bm!519211 (= call!519221 ($colon$colon!2012 (exprs!6027 (Context!11055 (t!378246 (exprs!6027 (h!71053 zl!343))))) (ite (or c!1119839 c!1119840) (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (h!71052 (exprs!6027 (h!71053 zl!343))))))))

(declare-fun b!6202823 () Bool)

(declare-fun e!3777092 () (InoxSet Context!11054))

(assert (=> b!6202823 (= e!3777092 e!3777089)))

(assert (=> b!6202823 (= c!1119840 ((_ is Concat!24988) (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun b!6202824 () Bool)

(declare-fun call!519218 () (InoxSet Context!11054))

(declare-fun call!519217 () (InoxSet Context!11054))

(assert (=> b!6202824 (= e!3777092 ((_ map or) call!519218 call!519217))))

(declare-fun b!6202825 () Bool)

(declare-fun c!1119841 () Bool)

(assert (=> b!6202825 (= c!1119841 ((_ is Star!16143) (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(assert (=> b!6202825 (= e!3777089 e!3777090)))

(declare-fun d!1944365 () Bool)

(declare-fun c!1119842 () Bool)

(assert (=> d!1944365 (= c!1119842 (and ((_ is ElementMatch!16143) (h!71052 (exprs!6027 (h!71053 zl!343)))) (= (c!1119610 (h!71052 (exprs!6027 (h!71053 zl!343)))) (h!71054 s!2326))))))

(declare-fun e!3777087 () (InoxSet Context!11054))

(assert (=> d!1944365 (= (derivationStepZipperDown!1391 (h!71052 (exprs!6027 (h!71053 zl!343))) (Context!11055 (t!378246 (exprs!6027 (h!71053 zl!343)))) (h!71054 s!2326)) e!3777087)))

(declare-fun call!519216 () List!64728)

(declare-fun c!1119838 () Bool)

(declare-fun bm!519212 () Bool)

(declare-fun call!519219 () (InoxSet Context!11054))

(assert (=> bm!519212 (= call!519219 (derivationStepZipperDown!1391 (ite c!1119838 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119839 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119840 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343))))))) (ite (or c!1119838 c!1119839) (Context!11055 (t!378246 (exprs!6027 (h!71053 zl!343)))) (Context!11055 call!519216)) (h!71054 s!2326)))))

(declare-fun bm!519213 () Bool)

(assert (=> bm!519213 (= call!519220 call!519217)))

(declare-fun b!6202826 () Bool)

(declare-fun e!3777091 () (InoxSet Context!11054))

(assert (=> b!6202826 (= e!3777087 e!3777091)))

(assert (=> b!6202826 (= c!1119838 ((_ is Union!16143) (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun b!6202827 () Bool)

(assert (=> b!6202827 (= e!3777087 (store ((as const (Array Context!11054 Bool)) false) (Context!11055 (t!378246 (exprs!6027 (h!71053 zl!343)))) true))))

(declare-fun b!6202828 () Bool)

(declare-fun e!3777088 () Bool)

(assert (=> b!6202828 (= e!3777088 (nullable!6136 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343))))))))

(declare-fun bm!519214 () Bool)

(assert (=> bm!519214 (= call!519218 (derivationStepZipperDown!1391 (ite c!1119838 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343))))) (ite c!1119838 (Context!11055 (t!378246 (exprs!6027 (h!71053 zl!343)))) (Context!11055 call!519221)) (h!71054 s!2326)))))

(declare-fun b!6202829 () Bool)

(assert (=> b!6202829 (= e!3777090 call!519220)))

(declare-fun bm!519215 () Bool)

(assert (=> bm!519215 (= call!519217 call!519219)))

(declare-fun b!6202830 () Bool)

(assert (=> b!6202830 (= c!1119839 e!3777088)))

(declare-fun res!2565532 () Bool)

(assert (=> b!6202830 (=> (not res!2565532) (not e!3777088))))

(assert (=> b!6202830 (= res!2565532 ((_ is Concat!24988) (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(assert (=> b!6202830 (= e!3777091 e!3777092)))

(declare-fun b!6202831 () Bool)

(assert (=> b!6202831 (= e!3777091 ((_ map or) call!519218 call!519219))))

(declare-fun bm!519216 () Bool)

(assert (=> bm!519216 (= call!519216 call!519221)))

(assert (= (and d!1944365 c!1119842) b!6202827))

(assert (= (and d!1944365 (not c!1119842)) b!6202826))

(assert (= (and b!6202826 c!1119838) b!6202831))

(assert (= (and b!6202826 (not c!1119838)) b!6202830))

(assert (= (and b!6202830 res!2565532) b!6202828))

(assert (= (and b!6202830 c!1119839) b!6202824))

(assert (= (and b!6202830 (not c!1119839)) b!6202823))

(assert (= (and b!6202823 c!1119840) b!6202822))

(assert (= (and b!6202823 (not c!1119840)) b!6202825))

(assert (= (and b!6202825 c!1119841) b!6202829))

(assert (= (and b!6202825 (not c!1119841)) b!6202821))

(assert (= (or b!6202822 b!6202829) bm!519216))

(assert (= (or b!6202822 b!6202829) bm!519213))

(assert (= (or b!6202824 bm!519216) bm!519211))

(assert (= (or b!6202824 bm!519213) bm!519215))

(assert (= (or b!6202831 bm!519215) bm!519212))

(assert (= (or b!6202831 b!6202824) bm!519214))

(declare-fun m!7034908 () Bool)

(assert (=> bm!519212 m!7034908))

(assert (=> b!6202828 m!7034726))

(declare-fun m!7034910 () Bool)

(assert (=> bm!519214 m!7034910))

(declare-fun m!7034912 () Bool)

(assert (=> bm!519211 m!7034912))

(declare-fun m!7034914 () Bool)

(assert (=> b!6202827 m!7034914))

(assert (=> bm!519185 d!1944365))

(declare-fun d!1944367 () Bool)

(declare-fun res!2565543 () Bool)

(declare-fun e!3777105 () Bool)

(assert (=> d!1944367 (=> res!2565543 e!3777105)))

(assert (=> d!1944367 (= res!2565543 ((_ is Nil!64604) (exprs!6027 setElem!42104)))))

(assert (=> d!1944367 (= (forall!15256 (exprs!6027 setElem!42104) lambda!338906) e!3777105)))

(declare-fun b!6202846 () Bool)

(declare-fun e!3777106 () Bool)

(assert (=> b!6202846 (= e!3777105 e!3777106)))

(declare-fun res!2565544 () Bool)

(assert (=> b!6202846 (=> (not res!2565544) (not e!3777106))))

(assert (=> b!6202846 (= res!2565544 (dynLambda!25480 lambda!338906 (h!71052 (exprs!6027 setElem!42104))))))

(declare-fun b!6202847 () Bool)

(assert (=> b!6202847 (= e!3777106 (forall!15256 (t!378246 (exprs!6027 setElem!42104)) lambda!338906))))

(assert (= (and d!1944367 (not res!2565543)) b!6202846))

(assert (= (and b!6202846 res!2565544) b!6202847))

(declare-fun b_lambda!235903 () Bool)

(assert (=> (not b_lambda!235903) (not b!6202846)))

(declare-fun m!7034916 () Bool)

(assert (=> b!6202846 m!7034916))

(declare-fun m!7034918 () Bool)

(assert (=> b!6202847 m!7034918))

(assert (=> d!1944167 d!1944367))

(declare-fun d!1944369 () Bool)

(assert (=> d!1944369 (= (nullable!6136 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343))))) (nullableFct!2092 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343))))))))

(declare-fun bs!1538797 () Bool)

(assert (= bs!1538797 d!1944369))

(declare-fun m!7034920 () Bool)

(assert (=> bs!1538797 m!7034920))

(assert (=> b!6202632 d!1944369))

(declare-fun bm!519219 () Bool)

(declare-fun call!519224 () (InoxSet Context!11054))

(assert (=> bm!519219 (= call!519224 (derivationStepZipperDown!1391 (h!71052 (exprs!6027 (Context!11055 (t!378246 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))))) (Context!11055 (t!378246 (exprs!6027 (Context!11055 (t!378246 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343))))))))))) (h!71054 s!2326)))))

(declare-fun d!1944371 () Bool)

(declare-fun c!1119846 () Bool)

(declare-fun e!3777109 () Bool)

(assert (=> d!1944371 (= c!1119846 e!3777109)))

(declare-fun res!2565545 () Bool)

(assert (=> d!1944371 (=> (not res!2565545) (not e!3777109))))

(assert (=> d!1944371 (= res!2565545 ((_ is Cons!64604) (exprs!6027 (Context!11055 (t!378246 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))))))))

(declare-fun e!3777108 () (InoxSet Context!11054))

(assert (=> d!1944371 (= (derivationStepZipperUp!1317 (Context!11055 (t!378246 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))) (h!71054 s!2326)) e!3777108)))

(declare-fun b!6202848 () Bool)

(declare-fun e!3777107 () (InoxSet Context!11054))

(assert (=> b!6202848 (= e!3777107 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6202849 () Bool)

(assert (=> b!6202849 (= e!3777108 e!3777107)))

(declare-fun c!1119845 () Bool)

(assert (=> b!6202849 (= c!1119845 ((_ is Cons!64604) (exprs!6027 (Context!11055 (t!378246 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))))))))

(declare-fun b!6202850 () Bool)

(assert (=> b!6202850 (= e!3777107 call!519224)))

(declare-fun b!6202851 () Bool)

(assert (=> b!6202851 (= e!3777108 ((_ map or) call!519224 (derivationStepZipperUp!1317 (Context!11055 (t!378246 (exprs!6027 (Context!11055 (t!378246 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343))))))))))) (h!71054 s!2326))))))

(declare-fun b!6202852 () Bool)

(assert (=> b!6202852 (= e!3777109 (nullable!6136 (h!71052 (exprs!6027 (Context!11055 (t!378246 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343))))))))))))))

(assert (= (and d!1944371 res!2565545) b!6202852))

(assert (= (and d!1944371 c!1119846) b!6202851))

(assert (= (and d!1944371 (not c!1119846)) b!6202849))

(assert (= (and b!6202849 c!1119845) b!6202850))

(assert (= (and b!6202849 (not c!1119845)) b!6202848))

(assert (= (or b!6202851 b!6202850) bm!519219))

(declare-fun m!7034922 () Bool)

(assert (=> bm!519219 m!7034922))

(declare-fun m!7034924 () Bool)

(assert (=> b!6202851 m!7034924))

(declare-fun m!7034926 () Bool)

(assert (=> b!6202852 m!7034926))

(assert (=> b!6202659 d!1944371))

(declare-fun d!1944373 () Bool)

(assert (=> d!1944373 (= (isEmpty!36601 (t!378248 s!2326)) ((_ is Nil!64606) (t!378248 s!2326)))))

(assert (=> d!1944181 d!1944373))

(assert (=> d!1944205 d!1944185))

(assert (=> d!1944205 d!1944341))

(assert (=> d!1944205 d!1944245))

(declare-fun d!1944375 () Bool)

(assert (=> d!1944375 (= (Exists!3213 lambda!338927) (choose!46097 lambda!338927))))

(declare-fun bs!1538798 () Bool)

(assert (= bs!1538798 d!1944375))

(declare-fun m!7034928 () Bool)

(assert (=> bs!1538798 m!7034928))

(assert (=> d!1944205 d!1944375))

(declare-fun bs!1538799 () Bool)

(declare-fun d!1944377 () Bool)

(assert (= bs!1538799 (and d!1944377 b!6201983)))

(declare-fun lambda!338971 () Int)

(assert (=> bs!1538799 (not (= lambda!338971 lambda!338902))))

(declare-fun bs!1538800 () Bool)

(assert (= bs!1538800 (and d!1944377 d!1944205)))

(assert (=> bs!1538800 (= lambda!338971 lambda!338927)))

(assert (=> bs!1538799 (= lambda!338971 lambda!338901)))

(declare-fun bs!1538801 () Bool)

(assert (= bs!1538801 (and d!1944377 b!6202471)))

(assert (=> bs!1538801 (not (= lambda!338971 lambda!338956))))

(declare-fun bs!1538802 () Bool)

(assert (= bs!1538802 (and d!1944377 d!1944225)))

(assert (=> bs!1538802 (not (= lambda!338971 lambda!338936))))

(assert (=> bs!1538802 (= lambda!338971 lambda!338935)))

(declare-fun bs!1538803 () Bool)

(assert (= bs!1538803 (and d!1944377 b!6202466)))

(assert (=> bs!1538803 (not (= lambda!338971 lambda!338958))))

(assert (=> d!1944377 true))

(assert (=> d!1944377 true))

(assert (=> d!1944377 true))

(assert (=> d!1944377 (= (isDefined!12737 (findConcatSeparation!2448 (regOne!32798 r!7292) (regTwo!32798 r!7292) Nil!64606 s!2326 s!2326)) (Exists!3213 lambda!338971))))

(assert (=> d!1944377 true))

(declare-fun _$89!2350 () Unit!157903)

(assert (=> d!1944377 (= (choose!46098 (regOne!32798 r!7292) (regTwo!32798 r!7292) s!2326) _$89!2350)))

(declare-fun bs!1538804 () Bool)

(assert (= bs!1538804 d!1944377))

(assert (=> bs!1538804 m!7034304))

(assert (=> bs!1538804 m!7034304))

(assert (=> bs!1538804 m!7034306))

(declare-fun m!7034940 () Bool)

(assert (=> bs!1538804 m!7034940))

(assert (=> d!1944205 d!1944377))

(declare-fun bm!519233 () Bool)

(declare-fun call!519238 () (InoxSet Context!11054))

(assert (=> bm!519233 (= call!519238 (derivationStepZipperDown!1391 (h!71052 (exprs!6027 (Context!11055 (t!378246 (exprs!6027 lt!2343076))))) (Context!11055 (t!378246 (exprs!6027 (Context!11055 (t!378246 (exprs!6027 lt!2343076)))))) (h!71054 s!2326)))))

(declare-fun d!1944383 () Bool)

(declare-fun c!1119856 () Bool)

(declare-fun e!3777133 () Bool)

(assert (=> d!1944383 (= c!1119856 e!3777133)))

(declare-fun res!2565561 () Bool)

(assert (=> d!1944383 (=> (not res!2565561) (not e!3777133))))

(assert (=> d!1944383 (= res!2565561 ((_ is Cons!64604) (exprs!6027 (Context!11055 (t!378246 (exprs!6027 lt!2343076))))))))

(declare-fun e!3777132 () (InoxSet Context!11054))

(assert (=> d!1944383 (= (derivationStepZipperUp!1317 (Context!11055 (t!378246 (exprs!6027 lt!2343076))) (h!71054 s!2326)) e!3777132)))

(declare-fun b!6202884 () Bool)

(declare-fun e!3777131 () (InoxSet Context!11054))

(assert (=> b!6202884 (= e!3777131 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6202885 () Bool)

(assert (=> b!6202885 (= e!3777132 e!3777131)))

(declare-fun c!1119855 () Bool)

(assert (=> b!6202885 (= c!1119855 ((_ is Cons!64604) (exprs!6027 (Context!11055 (t!378246 (exprs!6027 lt!2343076))))))))

(declare-fun b!6202886 () Bool)

(assert (=> b!6202886 (= e!3777131 call!519238)))

(declare-fun b!6202887 () Bool)

(assert (=> b!6202887 (= e!3777132 ((_ map or) call!519238 (derivationStepZipperUp!1317 (Context!11055 (t!378246 (exprs!6027 (Context!11055 (t!378246 (exprs!6027 lt!2343076)))))) (h!71054 s!2326))))))

(declare-fun b!6202888 () Bool)

(assert (=> b!6202888 (= e!3777133 (nullable!6136 (h!71052 (exprs!6027 (Context!11055 (t!378246 (exprs!6027 lt!2343076)))))))))

(assert (= (and d!1944383 res!2565561) b!6202888))

(assert (= (and d!1944383 c!1119856) b!6202887))

(assert (= (and d!1944383 (not c!1119856)) b!6202885))

(assert (= (and b!6202885 c!1119855) b!6202886))

(assert (= (and b!6202885 (not c!1119855)) b!6202884))

(assert (= (or b!6202887 b!6202886) bm!519233))

(declare-fun m!7034952 () Bool)

(assert (=> bm!519233 m!7034952))

(declare-fun m!7034954 () Bool)

(assert (=> b!6202887 m!7034954))

(declare-fun m!7034956 () Bool)

(assert (=> b!6202888 m!7034956))

(assert (=> b!6202654 d!1944383))

(declare-fun d!1944387 () Bool)

(assert (=> d!1944387 (= (nullable!6136 (reg!16472 r!7292)) (nullableFct!2092 (reg!16472 r!7292)))))

(declare-fun bs!1538805 () Bool)

(assert (= bs!1538805 d!1944387))

(declare-fun m!7034958 () Bool)

(assert (=> bs!1538805 m!7034958))

(assert (=> b!6202108 d!1944387))

(declare-fun d!1944389 () Bool)

(assert (=> d!1944389 (= (nullable!6136 r!7292) (nullableFct!2092 r!7292))))

(declare-fun bs!1538806 () Bool)

(assert (= bs!1538806 d!1944389))

(declare-fun m!7034960 () Bool)

(assert (=> bs!1538806 m!7034960))

(assert (=> b!6202556 d!1944389))

(declare-fun b!6202889 () Bool)

(declare-fun e!3777137 () (InoxSet Context!11054))

(assert (=> b!6202889 (= e!3777137 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6202890 () Bool)

(declare-fun e!3777136 () (InoxSet Context!11054))

(declare-fun call!519243 () (InoxSet Context!11054))

(assert (=> b!6202890 (= e!3777136 call!519243)))

(declare-fun call!519244 () List!64728)

(declare-fun bm!519234 () Bool)

(declare-fun c!1119859 () Bool)

(declare-fun c!1119858 () Bool)

(assert (=> bm!519234 (= call!519244 ($colon$colon!2012 (exprs!6027 (Context!11055 (t!378246 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343))))))))) (ite (or c!1119858 c!1119859) (regTwo!32798 (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))) (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343))))))))))))

(declare-fun b!6202891 () Bool)

(declare-fun e!3777139 () (InoxSet Context!11054))

(assert (=> b!6202891 (= e!3777139 e!3777136)))

(assert (=> b!6202891 (= c!1119859 ((_ is Concat!24988) (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))))))

(declare-fun b!6202892 () Bool)

(declare-fun call!519241 () (InoxSet Context!11054))

(declare-fun call!519240 () (InoxSet Context!11054))

(assert (=> b!6202892 (= e!3777139 ((_ map or) call!519241 call!519240))))

(declare-fun b!6202893 () Bool)

(declare-fun c!1119860 () Bool)

(assert (=> b!6202893 (= c!1119860 ((_ is Star!16143) (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))))))

(assert (=> b!6202893 (= e!3777136 e!3777137)))

(declare-fun d!1944391 () Bool)

(declare-fun c!1119861 () Bool)

(assert (=> d!1944391 (= c!1119861 (and ((_ is ElementMatch!16143) (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))) (= (c!1119610 (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))) (h!71054 s!2326))))))

(declare-fun e!3777134 () (InoxSet Context!11054))

(assert (=> d!1944391 (= (derivationStepZipperDown!1391 (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343))))))) (Context!11055 (t!378246 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))) (h!71054 s!2326)) e!3777134)))

(declare-fun call!519239 () List!64728)

(declare-fun call!519242 () (InoxSet Context!11054))

(declare-fun c!1119857 () Bool)

(declare-fun bm!519235 () Bool)

(assert (=> bm!519235 (= call!519242 (derivationStepZipperDown!1391 (ite c!1119857 (regTwo!32799 (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))) (ite c!1119858 (regTwo!32798 (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))) (ite c!1119859 (regOne!32798 (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))) (reg!16472 (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343))))))))))) (ite (or c!1119857 c!1119858) (Context!11055 (t!378246 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))) (Context!11055 call!519239)) (h!71054 s!2326)))))

(declare-fun bm!519236 () Bool)

(assert (=> bm!519236 (= call!519243 call!519240)))

(declare-fun b!6202894 () Bool)

(declare-fun e!3777138 () (InoxSet Context!11054))

(assert (=> b!6202894 (= e!3777134 e!3777138)))

(assert (=> b!6202894 (= c!1119857 ((_ is Union!16143) (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))))))

(declare-fun b!6202895 () Bool)

(assert (=> b!6202895 (= e!3777134 (store ((as const (Array Context!11054 Bool)) false) (Context!11055 (t!378246 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))) true))))

(declare-fun b!6202896 () Bool)

(declare-fun e!3777135 () Bool)

(assert (=> b!6202896 (= e!3777135 (nullable!6136 (regOne!32798 (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343))))))))))))

(declare-fun bm!519237 () Bool)

(assert (=> bm!519237 (= call!519241 (derivationStepZipperDown!1391 (ite c!1119857 (regOne!32799 (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))) (regOne!32798 (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343))))))))) (ite c!1119857 (Context!11055 (t!378246 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))) (Context!11055 call!519244)) (h!71054 s!2326)))))

(declare-fun b!6202897 () Bool)

(assert (=> b!6202897 (= e!3777137 call!519243)))

(declare-fun bm!519238 () Bool)

(assert (=> bm!519238 (= call!519240 call!519242)))

(declare-fun b!6202898 () Bool)

(assert (=> b!6202898 (= c!1119858 e!3777135)))

(declare-fun res!2565562 () Bool)

(assert (=> b!6202898 (=> (not res!2565562) (not e!3777135))))

(assert (=> b!6202898 (= res!2565562 ((_ is Concat!24988) (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))))))

(assert (=> b!6202898 (= e!3777138 e!3777139)))

(declare-fun b!6202899 () Bool)

(assert (=> b!6202899 (= e!3777138 ((_ map or) call!519241 call!519242))))

(declare-fun bm!519239 () Bool)

(assert (=> bm!519239 (= call!519239 call!519244)))

(assert (= (and d!1944391 c!1119861) b!6202895))

(assert (= (and d!1944391 (not c!1119861)) b!6202894))

(assert (= (and b!6202894 c!1119857) b!6202899))

(assert (= (and b!6202894 (not c!1119857)) b!6202898))

(assert (= (and b!6202898 res!2565562) b!6202896))

(assert (= (and b!6202898 c!1119858) b!6202892))

(assert (= (and b!6202898 (not c!1119858)) b!6202891))

(assert (= (and b!6202891 c!1119859) b!6202890))

(assert (= (and b!6202891 (not c!1119859)) b!6202893))

(assert (= (and b!6202893 c!1119860) b!6202897))

(assert (= (and b!6202893 (not c!1119860)) b!6202889))

(assert (= (or b!6202890 b!6202897) bm!519239))

(assert (= (or b!6202890 b!6202897) bm!519236))

(assert (= (or b!6202892 bm!519239) bm!519234))

(assert (= (or b!6202892 bm!519236) bm!519238))

(assert (= (or b!6202899 bm!519238) bm!519235))

(assert (= (or b!6202899 b!6202892) bm!519237))

(declare-fun m!7034962 () Bool)

(assert (=> bm!519235 m!7034962))

(declare-fun m!7034964 () Bool)

(assert (=> b!6202896 m!7034964))

(declare-fun m!7034966 () Bool)

(assert (=> bm!519237 m!7034966))

(declare-fun m!7034968 () Bool)

(assert (=> bm!519234 m!7034968))

(declare-fun m!7034970 () Bool)

(assert (=> b!6202895 m!7034970))

(assert (=> bm!519187 d!1944391))

(declare-fun b!6202909 () Bool)

(declare-fun e!3777150 () (InoxSet Context!11054))

(assert (=> b!6202909 (= e!3777150 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6202910 () Bool)

(declare-fun e!3777149 () (InoxSet Context!11054))

(declare-fun call!519252 () (InoxSet Context!11054))

(assert (=> b!6202910 (= e!3777149 call!519252)))

(declare-fun c!1119865 () Bool)

(declare-fun c!1119866 () Bool)

(declare-fun call!519253 () List!64728)

(declare-fun bm!519243 () Bool)

(assert (=> bm!519243 (= call!519253 ($colon$colon!2012 (exprs!6027 (Context!11055 (t!378246 (exprs!6027 lt!2343076)))) (ite (or c!1119865 c!1119866) (regTwo!32798 (h!71052 (exprs!6027 lt!2343076))) (h!71052 (exprs!6027 lt!2343076)))))))

(declare-fun b!6202911 () Bool)

(declare-fun e!3777152 () (InoxSet Context!11054))

(assert (=> b!6202911 (= e!3777152 e!3777149)))

(assert (=> b!6202911 (= c!1119866 ((_ is Concat!24988) (h!71052 (exprs!6027 lt!2343076))))))

(declare-fun b!6202912 () Bool)

(declare-fun call!519250 () (InoxSet Context!11054))

(declare-fun call!519249 () (InoxSet Context!11054))

(assert (=> b!6202912 (= e!3777152 ((_ map or) call!519250 call!519249))))

(declare-fun b!6202913 () Bool)

(declare-fun c!1119867 () Bool)

(assert (=> b!6202913 (= c!1119867 ((_ is Star!16143) (h!71052 (exprs!6027 lt!2343076))))))

(assert (=> b!6202913 (= e!3777149 e!3777150)))

(declare-fun d!1944395 () Bool)

(declare-fun c!1119868 () Bool)

(assert (=> d!1944395 (= c!1119868 (and ((_ is ElementMatch!16143) (h!71052 (exprs!6027 lt!2343076))) (= (c!1119610 (h!71052 (exprs!6027 lt!2343076))) (h!71054 s!2326))))))

(declare-fun e!3777147 () (InoxSet Context!11054))

(assert (=> d!1944395 (= (derivationStepZipperDown!1391 (h!71052 (exprs!6027 lt!2343076)) (Context!11055 (t!378246 (exprs!6027 lt!2343076))) (h!71054 s!2326)) e!3777147)))

(declare-fun bm!519244 () Bool)

(declare-fun c!1119864 () Bool)

(declare-fun call!519248 () List!64728)

(declare-fun call!519251 () (InoxSet Context!11054))

(assert (=> bm!519244 (= call!519251 (derivationStepZipperDown!1391 (ite c!1119864 (regTwo!32799 (h!71052 (exprs!6027 lt!2343076))) (ite c!1119865 (regTwo!32798 (h!71052 (exprs!6027 lt!2343076))) (ite c!1119866 (regOne!32798 (h!71052 (exprs!6027 lt!2343076))) (reg!16472 (h!71052 (exprs!6027 lt!2343076)))))) (ite (or c!1119864 c!1119865) (Context!11055 (t!378246 (exprs!6027 lt!2343076))) (Context!11055 call!519248)) (h!71054 s!2326)))))

(declare-fun bm!519245 () Bool)

(assert (=> bm!519245 (= call!519252 call!519249)))

(declare-fun b!6202914 () Bool)

(declare-fun e!3777151 () (InoxSet Context!11054))

(assert (=> b!6202914 (= e!3777147 e!3777151)))

(assert (=> b!6202914 (= c!1119864 ((_ is Union!16143) (h!71052 (exprs!6027 lt!2343076))))))

(declare-fun b!6202915 () Bool)

(assert (=> b!6202915 (= e!3777147 (store ((as const (Array Context!11054 Bool)) false) (Context!11055 (t!378246 (exprs!6027 lt!2343076))) true))))

(declare-fun b!6202916 () Bool)

(declare-fun e!3777148 () Bool)

(assert (=> b!6202916 (= e!3777148 (nullable!6136 (regOne!32798 (h!71052 (exprs!6027 lt!2343076)))))))

(declare-fun bm!519246 () Bool)

(assert (=> bm!519246 (= call!519250 (derivationStepZipperDown!1391 (ite c!1119864 (regOne!32799 (h!71052 (exprs!6027 lt!2343076))) (regOne!32798 (h!71052 (exprs!6027 lt!2343076)))) (ite c!1119864 (Context!11055 (t!378246 (exprs!6027 lt!2343076))) (Context!11055 call!519253)) (h!71054 s!2326)))))

(declare-fun b!6202917 () Bool)

(assert (=> b!6202917 (= e!3777150 call!519252)))

(declare-fun bm!519247 () Bool)

(assert (=> bm!519247 (= call!519249 call!519251)))

(declare-fun b!6202918 () Bool)

(assert (=> b!6202918 (= c!1119865 e!3777148)))

(declare-fun res!2565571 () Bool)

(assert (=> b!6202918 (=> (not res!2565571) (not e!3777148))))

(assert (=> b!6202918 (= res!2565571 ((_ is Concat!24988) (h!71052 (exprs!6027 lt!2343076))))))

(assert (=> b!6202918 (= e!3777151 e!3777152)))

(declare-fun b!6202919 () Bool)

(assert (=> b!6202919 (= e!3777151 ((_ map or) call!519250 call!519251))))

(declare-fun bm!519248 () Bool)

(assert (=> bm!519248 (= call!519248 call!519253)))

(assert (= (and d!1944395 c!1119868) b!6202915))

(assert (= (and d!1944395 (not c!1119868)) b!6202914))

(assert (= (and b!6202914 c!1119864) b!6202919))

(assert (= (and b!6202914 (not c!1119864)) b!6202918))

(assert (= (and b!6202918 res!2565571) b!6202916))

(assert (= (and b!6202918 c!1119865) b!6202912))

(assert (= (and b!6202918 (not c!1119865)) b!6202911))

(assert (= (and b!6202911 c!1119866) b!6202910))

(assert (= (and b!6202911 (not c!1119866)) b!6202913))

(assert (= (and b!6202913 c!1119867) b!6202917))

(assert (= (and b!6202913 (not c!1119867)) b!6202909))

(assert (= (or b!6202910 b!6202917) bm!519248))

(assert (= (or b!6202910 b!6202917) bm!519245))

(assert (= (or b!6202912 bm!519248) bm!519243))

(assert (= (or b!6202912 bm!519245) bm!519247))

(assert (= (or b!6202919 bm!519247) bm!519244))

(assert (= (or b!6202919 b!6202912) bm!519246))

(declare-fun m!7034978 () Bool)

(assert (=> bm!519244 m!7034978))

(declare-fun m!7034980 () Bool)

(assert (=> b!6202916 m!7034980))

(declare-fun m!7034982 () Bool)

(assert (=> bm!519246 m!7034982))

(declare-fun m!7034984 () Bool)

(assert (=> bm!519243 m!7034984))

(declare-fun m!7034986 () Bool)

(assert (=> b!6202915 m!7034986))

(assert (=> bm!519186 d!1944395))

(declare-fun d!1944399 () Bool)

(declare-fun res!2565572 () Bool)

(declare-fun e!3777153 () Bool)

(assert (=> d!1944399 (=> res!2565572 e!3777153)))

(assert (=> d!1944399 (= res!2565572 ((_ is Nil!64604) lt!2343136))))

(assert (=> d!1944399 (= (forall!15256 lt!2343136 lambda!338942) e!3777153)))

(declare-fun b!6202920 () Bool)

(declare-fun e!3777154 () Bool)

(assert (=> b!6202920 (= e!3777153 e!3777154)))

(declare-fun res!2565573 () Bool)

(assert (=> b!6202920 (=> (not res!2565573) (not e!3777154))))

(assert (=> b!6202920 (= res!2565573 (dynLambda!25480 lambda!338942 (h!71052 lt!2343136)))))

(declare-fun b!6202921 () Bool)

(assert (=> b!6202921 (= e!3777154 (forall!15256 (t!378246 lt!2343136) lambda!338942))))

(assert (= (and d!1944399 (not res!2565572)) b!6202920))

(assert (= (and b!6202920 res!2565573) b!6202921))

(declare-fun b_lambda!235905 () Bool)

(assert (=> (not b_lambda!235905) (not b!6202920)))

(declare-fun m!7034988 () Bool)

(assert (=> b!6202920 m!7034988))

(declare-fun m!7034990 () Bool)

(assert (=> b!6202921 m!7034990))

(assert (=> d!1944251 d!1944399))

(declare-fun b!6202924 () Bool)

(declare-fun e!3777160 () (InoxSet Context!11054))

(assert (=> b!6202924 (= e!3777160 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6202925 () Bool)

(declare-fun e!3777159 () (InoxSet Context!11054))

(declare-fun call!519258 () (InoxSet Context!11054))

(assert (=> b!6202925 (= e!3777159 call!519258)))

(declare-fun bm!519249 () Bool)

(declare-fun call!519259 () List!64728)

(declare-fun c!1119871 () Bool)

(declare-fun c!1119870 () Bool)

(assert (=> bm!519249 (= call!519259 ($colon$colon!2012 (exprs!6027 (ite (or c!1119801 c!1119802) lt!2343073 (Context!11055 call!519193))) (ite (or c!1119870 c!1119871) (regTwo!32798 (ite c!1119801 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119802 (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119803 (regOne!32798 (regOne!32798 (regOne!32798 r!7292))) (reg!16472 (regOne!32798 (regOne!32798 r!7292))))))) (ite c!1119801 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119802 (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119803 (regOne!32798 (regOne!32798 (regOne!32798 r!7292))) (reg!16472 (regOne!32798 (regOne!32798 r!7292)))))))))))

(declare-fun b!6202926 () Bool)

(declare-fun e!3777163 () (InoxSet Context!11054))

(assert (=> b!6202926 (= e!3777163 e!3777159)))

(assert (=> b!6202926 (= c!1119871 ((_ is Concat!24988) (ite c!1119801 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119802 (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119803 (regOne!32798 (regOne!32798 (regOne!32798 r!7292))) (reg!16472 (regOne!32798 (regOne!32798 r!7292))))))))))

(declare-fun b!6202927 () Bool)

(declare-fun call!519256 () (InoxSet Context!11054))

(declare-fun call!519255 () (InoxSet Context!11054))

(assert (=> b!6202927 (= e!3777163 ((_ map or) call!519256 call!519255))))

(declare-fun c!1119872 () Bool)

(declare-fun b!6202928 () Bool)

(assert (=> b!6202928 (= c!1119872 ((_ is Star!16143) (ite c!1119801 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119802 (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119803 (regOne!32798 (regOne!32798 (regOne!32798 r!7292))) (reg!16472 (regOne!32798 (regOne!32798 r!7292))))))))))

(assert (=> b!6202928 (= e!3777159 e!3777160)))

(declare-fun d!1944401 () Bool)

(declare-fun c!1119873 () Bool)

(assert (=> d!1944401 (= c!1119873 (and ((_ is ElementMatch!16143) (ite c!1119801 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119802 (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119803 (regOne!32798 (regOne!32798 (regOne!32798 r!7292))) (reg!16472 (regOne!32798 (regOne!32798 r!7292))))))) (= (c!1119610 (ite c!1119801 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119802 (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119803 (regOne!32798 (regOne!32798 (regOne!32798 r!7292))) (reg!16472 (regOne!32798 (regOne!32798 r!7292))))))) (h!71054 s!2326))))))

(declare-fun e!3777157 () (InoxSet Context!11054))

(assert (=> d!1944401 (= (derivationStepZipperDown!1391 (ite c!1119801 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119802 (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119803 (regOne!32798 (regOne!32798 (regOne!32798 r!7292))) (reg!16472 (regOne!32798 (regOne!32798 r!7292)))))) (ite (or c!1119801 c!1119802) lt!2343073 (Context!11055 call!519193)) (h!71054 s!2326)) e!3777157)))

(declare-fun call!519254 () List!64728)

(declare-fun c!1119869 () Bool)

(declare-fun call!519257 () (InoxSet Context!11054))

(declare-fun bm!519250 () Bool)

(assert (=> bm!519250 (= call!519257 (derivationStepZipperDown!1391 (ite c!1119869 (regTwo!32799 (ite c!1119801 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119802 (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119803 (regOne!32798 (regOne!32798 (regOne!32798 r!7292))) (reg!16472 (regOne!32798 (regOne!32798 r!7292))))))) (ite c!1119870 (regTwo!32798 (ite c!1119801 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119802 (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119803 (regOne!32798 (regOne!32798 (regOne!32798 r!7292))) (reg!16472 (regOne!32798 (regOne!32798 r!7292))))))) (ite c!1119871 (regOne!32798 (ite c!1119801 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119802 (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119803 (regOne!32798 (regOne!32798 (regOne!32798 r!7292))) (reg!16472 (regOne!32798 (regOne!32798 r!7292))))))) (reg!16472 (ite c!1119801 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119802 (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119803 (regOne!32798 (regOne!32798 (regOne!32798 r!7292))) (reg!16472 (regOne!32798 (regOne!32798 r!7292)))))))))) (ite (or c!1119869 c!1119870) (ite (or c!1119801 c!1119802) lt!2343073 (Context!11055 call!519193)) (Context!11055 call!519254)) (h!71054 s!2326)))))

(declare-fun bm!519251 () Bool)

(assert (=> bm!519251 (= call!519258 call!519255)))

(declare-fun b!6202929 () Bool)

(declare-fun e!3777161 () (InoxSet Context!11054))

(assert (=> b!6202929 (= e!3777157 e!3777161)))

(assert (=> b!6202929 (= c!1119869 ((_ is Union!16143) (ite c!1119801 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119802 (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119803 (regOne!32798 (regOne!32798 (regOne!32798 r!7292))) (reg!16472 (regOne!32798 (regOne!32798 r!7292))))))))))

(declare-fun b!6202930 () Bool)

(assert (=> b!6202930 (= e!3777157 (store ((as const (Array Context!11054 Bool)) false) (ite (or c!1119801 c!1119802) lt!2343073 (Context!11055 call!519193)) true))))

(declare-fun b!6202931 () Bool)

(declare-fun e!3777158 () Bool)

(assert (=> b!6202931 (= e!3777158 (nullable!6136 (regOne!32798 (ite c!1119801 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119802 (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119803 (regOne!32798 (regOne!32798 (regOne!32798 r!7292))) (reg!16472 (regOne!32798 (regOne!32798 r!7292)))))))))))

(declare-fun bm!519252 () Bool)

(assert (=> bm!519252 (= call!519256 (derivationStepZipperDown!1391 (ite c!1119869 (regOne!32799 (ite c!1119801 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119802 (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119803 (regOne!32798 (regOne!32798 (regOne!32798 r!7292))) (reg!16472 (regOne!32798 (regOne!32798 r!7292))))))) (regOne!32798 (ite c!1119801 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119802 (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119803 (regOne!32798 (regOne!32798 (regOne!32798 r!7292))) (reg!16472 (regOne!32798 (regOne!32798 r!7292)))))))) (ite c!1119869 (ite (or c!1119801 c!1119802) lt!2343073 (Context!11055 call!519193)) (Context!11055 call!519259)) (h!71054 s!2326)))))

(declare-fun b!6202932 () Bool)

(assert (=> b!6202932 (= e!3777160 call!519258)))

(declare-fun bm!519253 () Bool)

(assert (=> bm!519253 (= call!519255 call!519257)))

(declare-fun b!6202933 () Bool)

(assert (=> b!6202933 (= c!1119870 e!3777158)))

(declare-fun res!2565576 () Bool)

(assert (=> b!6202933 (=> (not res!2565576) (not e!3777158))))

(assert (=> b!6202933 (= res!2565576 ((_ is Concat!24988) (ite c!1119801 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119802 (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (ite c!1119803 (regOne!32798 (regOne!32798 (regOne!32798 r!7292))) (reg!16472 (regOne!32798 (regOne!32798 r!7292))))))))))

(assert (=> b!6202933 (= e!3777161 e!3777163)))

(declare-fun b!6202934 () Bool)

(assert (=> b!6202934 (= e!3777161 ((_ map or) call!519256 call!519257))))

(declare-fun bm!519254 () Bool)

(assert (=> bm!519254 (= call!519254 call!519259)))

(assert (= (and d!1944401 c!1119873) b!6202930))

(assert (= (and d!1944401 (not c!1119873)) b!6202929))

(assert (= (and b!6202929 c!1119869) b!6202934))

(assert (= (and b!6202929 (not c!1119869)) b!6202933))

(assert (= (and b!6202933 res!2565576) b!6202931))

(assert (= (and b!6202933 c!1119870) b!6202927))

(assert (= (and b!6202933 (not c!1119870)) b!6202926))

(assert (= (and b!6202926 c!1119871) b!6202925))

(assert (= (and b!6202926 (not c!1119871)) b!6202928))

(assert (= (and b!6202928 c!1119872) b!6202932))

(assert (= (and b!6202928 (not c!1119872)) b!6202924))

(assert (= (or b!6202925 b!6202932) bm!519254))

(assert (= (or b!6202925 b!6202932) bm!519251))

(assert (= (or b!6202927 bm!519254) bm!519249))

(assert (= (or b!6202927 bm!519251) bm!519253))

(assert (= (or b!6202934 bm!519253) bm!519250))

(assert (= (or b!6202934 b!6202927) bm!519252))

(declare-fun m!7034992 () Bool)

(assert (=> bm!519250 m!7034992))

(declare-fun m!7034994 () Bool)

(assert (=> b!6202931 m!7034994))

(declare-fun m!7034996 () Bool)

(assert (=> bm!519252 m!7034996))

(declare-fun m!7034998 () Bool)

(assert (=> bm!519249 m!7034998))

(declare-fun m!7035000 () Bool)

(assert (=> b!6202930 m!7035000))

(assert (=> bm!519189 d!1944401))

(declare-fun b!6202937 () Bool)

(declare-fun e!3777171 () Bool)

(declare-fun e!3777165 () Bool)

(assert (=> b!6202937 (= e!3777171 e!3777165)))

(declare-fun res!2565583 () Bool)

(assert (=> b!6202937 (= res!2565583 (not (nullable!6136 (reg!16472 lt!2343130))))))

(assert (=> b!6202937 (=> (not res!2565583) (not e!3777165))))

(declare-fun b!6202938 () Bool)

(declare-fun e!3777168 () Bool)

(assert (=> b!6202938 (= e!3777168 e!3777171)))

(declare-fun c!1119875 () Bool)

(assert (=> b!6202938 (= c!1119875 ((_ is Star!16143) lt!2343130))))

(declare-fun b!6202939 () Bool)

(declare-fun e!3777169 () Bool)

(declare-fun e!3777167 () Bool)

(assert (=> b!6202939 (= e!3777169 e!3777167)))

(declare-fun res!2565582 () Bool)

(assert (=> b!6202939 (=> (not res!2565582) (not e!3777167))))

(declare-fun call!519261 () Bool)

(assert (=> b!6202939 (= res!2565582 call!519261)))

(declare-fun b!6202941 () Bool)

(declare-fun call!519260 () Bool)

(assert (=> b!6202941 (= e!3777167 call!519260)))

(declare-fun call!519262 () Bool)

(declare-fun bm!519255 () Bool)

(declare-fun c!1119874 () Bool)

(assert (=> bm!519255 (= call!519262 (validRegex!7879 (ite c!1119875 (reg!16472 lt!2343130) (ite c!1119874 (regOne!32799 lt!2343130) (regOne!32798 lt!2343130)))))))

(declare-fun b!6202942 () Bool)

(declare-fun res!2565580 () Bool)

(assert (=> b!6202942 (=> res!2565580 e!3777169)))

(assert (=> b!6202942 (= res!2565580 (not ((_ is Concat!24988) lt!2343130)))))

(declare-fun e!3777170 () Bool)

(assert (=> b!6202942 (= e!3777170 e!3777169)))

(declare-fun bm!519256 () Bool)

(assert (=> bm!519256 (= call!519260 (validRegex!7879 (ite c!1119874 (regTwo!32799 lt!2343130) (regTwo!32798 lt!2343130))))))

(declare-fun b!6202943 () Bool)

(declare-fun e!3777166 () Bool)

(assert (=> b!6202943 (= e!3777166 call!519260)))

(declare-fun bm!519257 () Bool)

(assert (=> bm!519257 (= call!519261 call!519262)))

(declare-fun b!6202944 () Bool)

(assert (=> b!6202944 (= e!3777165 call!519262)))

(declare-fun b!6202945 () Bool)

(declare-fun res!2565579 () Bool)

(assert (=> b!6202945 (=> (not res!2565579) (not e!3777166))))

(assert (=> b!6202945 (= res!2565579 call!519261)))

(assert (=> b!6202945 (= e!3777170 e!3777166)))

(declare-fun d!1944403 () Bool)

(declare-fun res!2565581 () Bool)

(assert (=> d!1944403 (=> res!2565581 e!3777168)))

(assert (=> d!1944403 (= res!2565581 ((_ is ElementMatch!16143) lt!2343130))))

(assert (=> d!1944403 (= (validRegex!7879 lt!2343130) e!3777168)))

(declare-fun b!6202940 () Bool)

(assert (=> b!6202940 (= e!3777171 e!3777170)))

(assert (=> b!6202940 (= c!1119874 ((_ is Union!16143) lt!2343130))))

(assert (= (and d!1944403 (not res!2565581)) b!6202938))

(assert (= (and b!6202938 c!1119875) b!6202937))

(assert (= (and b!6202938 (not c!1119875)) b!6202940))

(assert (= (and b!6202937 res!2565583) b!6202944))

(assert (= (and b!6202940 c!1119874) b!6202945))

(assert (= (and b!6202940 (not c!1119874)) b!6202942))

(assert (= (and b!6202945 res!2565579) b!6202943))

(assert (= (and b!6202942 (not res!2565580)) b!6202939))

(assert (= (and b!6202939 res!2565582) b!6202941))

(assert (= (or b!6202943 b!6202941) bm!519256))

(assert (= (or b!6202945 b!6202939) bm!519257))

(assert (= (or b!6202944 bm!519257) bm!519255))

(declare-fun m!7035004 () Bool)

(assert (=> b!6202937 m!7035004))

(declare-fun m!7035006 () Bool)

(assert (=> bm!519255 m!7035006))

(declare-fun m!7035010 () Bool)

(assert (=> bm!519256 m!7035010))

(assert (=> d!1944247 d!1944403))

(declare-fun d!1944407 () Bool)

(declare-fun res!2565586 () Bool)

(declare-fun e!3777174 () Bool)

(assert (=> d!1944407 (=> res!2565586 e!3777174)))

(assert (=> d!1944407 (= res!2565586 ((_ is Nil!64604) (unfocusZipperList!1564 zl!343)))))

(assert (=> d!1944407 (= (forall!15256 (unfocusZipperList!1564 zl!343) lambda!338939) e!3777174)))

(declare-fun b!6202948 () Bool)

(declare-fun e!3777175 () Bool)

(assert (=> b!6202948 (= e!3777174 e!3777175)))

(declare-fun res!2565587 () Bool)

(assert (=> b!6202948 (=> (not res!2565587) (not e!3777175))))

(assert (=> b!6202948 (= res!2565587 (dynLambda!25480 lambda!338939 (h!71052 (unfocusZipperList!1564 zl!343))))))

(declare-fun b!6202949 () Bool)

(assert (=> b!6202949 (= e!3777175 (forall!15256 (t!378246 (unfocusZipperList!1564 zl!343)) lambda!338939))))

(assert (= (and d!1944407 (not res!2565586)) b!6202948))

(assert (= (and b!6202948 res!2565587) b!6202949))

(declare-fun b_lambda!235909 () Bool)

(assert (=> (not b_lambda!235909) (not b!6202948)))

(declare-fun m!7035012 () Bool)

(assert (=> b!6202948 m!7035012))

(declare-fun m!7035014 () Bool)

(assert (=> b!6202949 m!7035014))

(assert (=> d!1944247 d!1944407))

(declare-fun d!1944413 () Bool)

(assert (=> d!1944413 (= ($colon$colon!2012 (exprs!6027 lt!2343073) (ite (or c!1119802 c!1119803) (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 r!7292)))) (Cons!64604 (ite (or c!1119802 c!1119803) (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 r!7292))) (exprs!6027 lt!2343073)))))

(assert (=> bm!519188 d!1944413))

(declare-fun b!6202957 () Bool)

(declare-fun e!3777185 () Bool)

(assert (=> b!6202957 (= e!3777185 (nullable!6136 (regTwo!32798 r!7292)))))

(declare-fun b!6202958 () Bool)

(declare-fun res!2565594 () Bool)

(declare-fun e!3777184 () Bool)

(assert (=> b!6202958 (=> res!2565594 e!3777184)))

(assert (=> b!6202958 (= res!2565594 (not ((_ is ElementMatch!16143) (regTwo!32798 r!7292))))))

(declare-fun e!3777181 () Bool)

(assert (=> b!6202958 (= e!3777181 e!3777184)))

(declare-fun b!6202959 () Bool)

(declare-fun res!2565592 () Bool)

(declare-fun e!3777183 () Bool)

(assert (=> b!6202959 (=> (not res!2565592) (not e!3777183))))

(assert (=> b!6202959 (= res!2565592 (isEmpty!36601 (tail!11878 s!2326)))))

(declare-fun b!6202960 () Bool)

(declare-fun e!3777187 () Bool)

(assert (=> b!6202960 (= e!3777184 e!3777187)))

(declare-fun res!2565596 () Bool)

(assert (=> b!6202960 (=> (not res!2565596) (not e!3777187))))

(declare-fun lt!2343173 () Bool)

(assert (=> b!6202960 (= res!2565596 (not lt!2343173))))

(declare-fun d!1944417 () Bool)

(declare-fun e!3777188 () Bool)

(assert (=> d!1944417 e!3777188))

(declare-fun c!1119877 () Bool)

(assert (=> d!1944417 (= c!1119877 ((_ is EmptyExpr!16143) (regTwo!32798 r!7292)))))

(assert (=> d!1944417 (= lt!2343173 e!3777185)))

(declare-fun c!1119878 () Bool)

(assert (=> d!1944417 (= c!1119878 (isEmpty!36601 s!2326))))

(assert (=> d!1944417 (validRegex!7879 (regTwo!32798 r!7292))))

(assert (=> d!1944417 (= (matchR!8326 (regTwo!32798 r!7292) s!2326) lt!2343173)))

(declare-fun b!6202961 () Bool)

(declare-fun e!3777186 () Bool)

(assert (=> b!6202961 (= e!3777187 e!3777186)))

(declare-fun res!2565597 () Bool)

(assert (=> b!6202961 (=> res!2565597 e!3777186)))

(declare-fun call!519265 () Bool)

(assert (=> b!6202961 (= res!2565597 call!519265)))

(declare-fun b!6202962 () Bool)

(assert (=> b!6202962 (= e!3777186 (not (= (head!12794 s!2326) (c!1119610 (regTwo!32798 r!7292)))))))

(declare-fun b!6202963 () Bool)

(declare-fun res!2565598 () Bool)

(assert (=> b!6202963 (=> (not res!2565598) (not e!3777183))))

(assert (=> b!6202963 (= res!2565598 (not call!519265))))

(declare-fun bm!519260 () Bool)

(assert (=> bm!519260 (= call!519265 (isEmpty!36601 s!2326))))

(declare-fun b!6202964 () Bool)

(assert (=> b!6202964 (= e!3777181 (not lt!2343173))))

(declare-fun b!6202965 () Bool)

(declare-fun res!2565599 () Bool)

(assert (=> b!6202965 (=> res!2565599 e!3777186)))

(assert (=> b!6202965 (= res!2565599 (not (isEmpty!36601 (tail!11878 s!2326))))))

(declare-fun b!6202966 () Bool)

(assert (=> b!6202966 (= e!3777188 e!3777181)))

(declare-fun c!1119879 () Bool)

(assert (=> b!6202966 (= c!1119879 ((_ is EmptyLang!16143) (regTwo!32798 r!7292)))))

(declare-fun b!6202967 () Bool)

(assert (=> b!6202967 (= e!3777188 (= lt!2343173 call!519265))))

(declare-fun b!6202968 () Bool)

(assert (=> b!6202968 (= e!3777183 (= (head!12794 s!2326) (c!1119610 (regTwo!32798 r!7292))))))

(declare-fun b!6202969 () Bool)

(assert (=> b!6202969 (= e!3777185 (matchR!8326 (derivativeStep!4856 (regTwo!32798 r!7292) (head!12794 s!2326)) (tail!11878 s!2326)))))

(declare-fun b!6202970 () Bool)

(declare-fun res!2565595 () Bool)

(assert (=> b!6202970 (=> res!2565595 e!3777184)))

(assert (=> b!6202970 (= res!2565595 e!3777183)))

(declare-fun res!2565600 () Bool)

(assert (=> b!6202970 (=> (not res!2565600) (not e!3777183))))

(assert (=> b!6202970 (= res!2565600 lt!2343173)))

(assert (= (and d!1944417 c!1119878) b!6202957))

(assert (= (and d!1944417 (not c!1119878)) b!6202969))

(assert (= (and d!1944417 c!1119877) b!6202967))

(assert (= (and d!1944417 (not c!1119877)) b!6202966))

(assert (= (and b!6202966 c!1119879) b!6202964))

(assert (= (and b!6202966 (not c!1119879)) b!6202958))

(assert (= (and b!6202958 (not res!2565594)) b!6202970))

(assert (= (and b!6202970 res!2565600) b!6202963))

(assert (= (and b!6202963 res!2565598) b!6202959))

(assert (= (and b!6202959 res!2565592) b!6202968))

(assert (= (and b!6202970 (not res!2565595)) b!6202960))

(assert (= (and b!6202960 res!2565596) b!6202961))

(assert (= (and b!6202961 (not res!2565597)) b!6202965))

(assert (= (and b!6202965 (not res!2565599)) b!6202962))

(assert (= (or b!6202967 b!6202961 b!6202963) bm!519260))

(assert (=> d!1944417 m!7034664))

(declare-fun m!7035020 () Bool)

(assert (=> d!1944417 m!7035020))

(assert (=> b!6202959 m!7034674))

(assert (=> b!6202959 m!7034674))

(assert (=> b!6202959 m!7034676))

(assert (=> b!6202968 m!7034678))

(assert (=> b!6202962 m!7034678))

(assert (=> bm!519260 m!7034664))

(assert (=> b!6202969 m!7034678))

(assert (=> b!6202969 m!7034678))

(declare-fun m!7035022 () Bool)

(assert (=> b!6202969 m!7035022))

(assert (=> b!6202969 m!7034674))

(assert (=> b!6202969 m!7035022))

(assert (=> b!6202969 m!7034674))

(declare-fun m!7035024 () Bool)

(assert (=> b!6202969 m!7035024))

(assert (=> b!6202965 m!7034674))

(assert (=> b!6202965 m!7034674))

(assert (=> b!6202965 m!7034676))

(declare-fun m!7035026 () Bool)

(assert (=> b!6202957 m!7035026))

(assert (=> b!6202207 d!1944417))

(assert (=> b!6202415 d!1944283))

(declare-fun bs!1538807 () Bool)

(declare-fun d!1944421 () Bool)

(assert (= bs!1538807 (and d!1944421 d!1944251)))

(declare-fun lambda!338972 () Int)

(assert (=> bs!1538807 (= lambda!338972 lambda!338942)))

(declare-fun bs!1538808 () Bool)

(assert (= bs!1538808 (and d!1944421 d!1944261)))

(assert (=> bs!1538808 (= lambda!338972 lambda!338943)))

(declare-fun bs!1538809 () Bool)

(assert (= bs!1538809 (and d!1944421 d!1944167)))

(assert (=> bs!1538809 (= lambda!338972 lambda!338906)))

(declare-fun bs!1538810 () Bool)

(assert (= bs!1538810 (and d!1944421 d!1944247)))

(assert (=> bs!1538810 (= lambda!338972 lambda!338939)))

(declare-fun bs!1538811 () Bool)

(assert (= bs!1538811 (and d!1944421 d!1944169)))

(assert (=> bs!1538811 (= lambda!338972 lambda!338907)))

(declare-fun bs!1538812 () Bool)

(assert (= bs!1538812 (and d!1944421 d!1944283)))

(assert (=> bs!1538812 (= lambda!338972 lambda!338961)))

(declare-fun bs!1538813 () Bool)

(assert (= bs!1538813 (and d!1944421 d!1944349)))

(assert (=> bs!1538813 (= lambda!338972 lambda!338968)))

(declare-fun lt!2343174 () List!64728)

(assert (=> d!1944421 (forall!15256 lt!2343174 lambda!338972)))

(declare-fun e!3777195 () List!64728)

(assert (=> d!1944421 (= lt!2343174 e!3777195)))

(declare-fun c!1119885 () Bool)

(assert (=> d!1944421 (= c!1119885 ((_ is Cons!64605) (t!378247 zl!343)))))

(assert (=> d!1944421 (= (unfocusZipperList!1564 (t!378247 zl!343)) lt!2343174)))

(declare-fun b!6202982 () Bool)

(assert (=> b!6202982 (= e!3777195 (Cons!64604 (generalisedConcat!1740 (exprs!6027 (h!71053 (t!378247 zl!343)))) (unfocusZipperList!1564 (t!378247 (t!378247 zl!343)))))))

(declare-fun b!6202983 () Bool)

(assert (=> b!6202983 (= e!3777195 Nil!64604)))

(assert (= (and d!1944421 c!1119885) b!6202982))

(assert (= (and d!1944421 (not c!1119885)) b!6202983))

(declare-fun m!7035028 () Bool)

(assert (=> d!1944421 m!7035028))

(declare-fun m!7035030 () Bool)

(assert (=> b!6202982 m!7035030))

(declare-fun m!7035032 () Bool)

(assert (=> b!6202982 m!7035032))

(assert (=> b!6202415 d!1944421))

(assert (=> d!1944285 d!1944287))

(declare-fun d!1944423 () Bool)

(assert (=> d!1944423 (= (flatMap!1648 z!1189 lambda!338903) (dynLambda!25479 lambda!338903 (h!71053 zl!343)))))

(assert (=> d!1944423 true))

(declare-fun _$13!3209 () Unit!157903)

(assert (=> d!1944423 (= (choose!46107 z!1189 (h!71053 zl!343) lambda!338903) _$13!3209)))

(declare-fun b_lambda!235911 () Bool)

(assert (=> (not b_lambda!235911) (not d!1944423)))

(declare-fun bs!1538814 () Bool)

(assert (= bs!1538814 d!1944423))

(assert (=> bs!1538814 m!7034334))

(assert (=> bs!1538814 m!7034716))

(assert (=> d!1944285 d!1944423))

(declare-fun bs!1538815 () Bool)

(declare-fun d!1944425 () Bool)

(assert (= bs!1538815 (and d!1944425 d!1944311)))

(declare-fun lambda!338973 () Int)

(assert (=> bs!1538815 (= lambda!338973 lambda!338964)))

(assert (=> d!1944425 (= (nullableZipper!1917 lt!2343071) (exists!2473 lt!2343071 lambda!338973))))

(declare-fun bs!1538816 () Bool)

(assert (= bs!1538816 d!1944425))

(declare-fun m!7035044 () Bool)

(assert (=> bs!1538816 m!7035044))

(assert (=> b!6202054 d!1944425))

(declare-fun d!1944429 () Bool)

(declare-fun res!2565602 () Bool)

(declare-fun e!3777196 () Bool)

(assert (=> d!1944429 (=> res!2565602 e!3777196)))

(assert (=> d!1944429 (= res!2565602 ((_ is Nil!64604) (exprs!6027 (h!71053 zl!343))))))

(assert (=> d!1944429 (= (forall!15256 (exprs!6027 (h!71053 zl!343)) lambda!338943) e!3777196)))

(declare-fun b!6202984 () Bool)

(declare-fun e!3777197 () Bool)

(assert (=> b!6202984 (= e!3777196 e!3777197)))

(declare-fun res!2565603 () Bool)

(assert (=> b!6202984 (=> (not res!2565603) (not e!3777197))))

(assert (=> b!6202984 (= res!2565603 (dynLambda!25480 lambda!338943 (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun b!6202985 () Bool)

(assert (=> b!6202985 (= e!3777197 (forall!15256 (t!378246 (exprs!6027 (h!71053 zl!343))) lambda!338943))))

(assert (= (and d!1944429 (not res!2565602)) b!6202984))

(assert (= (and b!6202984 res!2565603) b!6202985))

(declare-fun b_lambda!235913 () Bool)

(assert (=> (not b_lambda!235913) (not b!6202984)))

(declare-fun m!7035046 () Bool)

(assert (=> b!6202984 m!7035046))

(declare-fun m!7035048 () Bool)

(assert (=> b!6202985 m!7035048))

(assert (=> d!1944261 d!1944429))

(declare-fun d!1944431 () Bool)

(assert (=> d!1944431 (= (isEmpty!36601 s!2326) ((_ is Nil!64606) s!2326))))

(assert (=> bm!519161 d!1944431))

(declare-fun b!6202986 () Bool)

(declare-fun e!3777201 () (InoxSet Context!11054))

(assert (=> b!6202986 (= e!3777201 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6202987 () Bool)

(declare-fun e!3777200 () (InoxSet Context!11054))

(declare-fun call!519276 () (InoxSet Context!11054))

(assert (=> b!6202987 (= e!3777200 call!519276)))

(declare-fun call!519277 () List!64728)

(declare-fun bm!519267 () Bool)

(declare-fun c!1119887 () Bool)

(declare-fun c!1119888 () Bool)

(assert (=> bm!519267 (= call!519277 ($colon$colon!2012 (exprs!6027 (ite (or c!1119786 c!1119787) lt!2343076 (Context!11055 call!519182))) (ite (or c!1119887 c!1119888) (regTwo!32798 (ite c!1119786 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119787 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119788 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343)))))))) (ite c!1119786 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119787 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119788 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343))))))))))))

(declare-fun b!6202988 () Bool)

(declare-fun e!3777203 () (InoxSet Context!11054))

(assert (=> b!6202988 (= e!3777203 e!3777200)))

(assert (=> b!6202988 (= c!1119888 ((_ is Concat!24988) (ite c!1119786 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119787 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119788 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343)))))))))))

(declare-fun b!6202989 () Bool)

(declare-fun call!519274 () (InoxSet Context!11054))

(declare-fun call!519273 () (InoxSet Context!11054))

(assert (=> b!6202989 (= e!3777203 ((_ map or) call!519274 call!519273))))

(declare-fun c!1119889 () Bool)

(declare-fun b!6202990 () Bool)

(assert (=> b!6202990 (= c!1119889 ((_ is Star!16143) (ite c!1119786 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119787 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119788 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343)))))))))))

(assert (=> b!6202990 (= e!3777200 e!3777201)))

(declare-fun c!1119890 () Bool)

(declare-fun d!1944433 () Bool)

(assert (=> d!1944433 (= c!1119890 (and ((_ is ElementMatch!16143) (ite c!1119786 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119787 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119788 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343)))))))) (= (c!1119610 (ite c!1119786 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119787 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119788 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343)))))))) (h!71054 s!2326))))))

(declare-fun e!3777198 () (InoxSet Context!11054))

(assert (=> d!1944433 (= (derivationStepZipperDown!1391 (ite c!1119786 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119787 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119788 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343))))))) (ite (or c!1119786 c!1119787) lt!2343076 (Context!11055 call!519182)) (h!71054 s!2326)) e!3777198)))

(declare-fun call!519275 () (InoxSet Context!11054))

(declare-fun bm!519268 () Bool)

(declare-fun call!519272 () List!64728)

(declare-fun c!1119886 () Bool)

(assert (=> bm!519268 (= call!519275 (derivationStepZipperDown!1391 (ite c!1119886 (regTwo!32799 (ite c!1119786 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119787 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119788 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343)))))))) (ite c!1119887 (regTwo!32798 (ite c!1119786 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119787 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119788 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343)))))))) (ite c!1119888 (regOne!32798 (ite c!1119786 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119787 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119788 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343)))))))) (reg!16472 (ite c!1119786 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119787 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119788 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343))))))))))) (ite (or c!1119886 c!1119887) (ite (or c!1119786 c!1119787) lt!2343076 (Context!11055 call!519182)) (Context!11055 call!519272)) (h!71054 s!2326)))))

(declare-fun bm!519269 () Bool)

(assert (=> bm!519269 (= call!519276 call!519273)))

(declare-fun b!6202991 () Bool)

(declare-fun e!3777202 () (InoxSet Context!11054))

(assert (=> b!6202991 (= e!3777198 e!3777202)))

(assert (=> b!6202991 (= c!1119886 ((_ is Union!16143) (ite c!1119786 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119787 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119788 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343)))))))))))

(declare-fun b!6202992 () Bool)

(assert (=> b!6202992 (= e!3777198 (store ((as const (Array Context!11054 Bool)) false) (ite (or c!1119786 c!1119787) lt!2343076 (Context!11055 call!519182)) true))))

(declare-fun b!6202993 () Bool)

(declare-fun e!3777199 () Bool)

(assert (=> b!6202993 (= e!3777199 (nullable!6136 (regOne!32798 (ite c!1119786 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119787 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119788 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343))))))))))))

(declare-fun bm!519270 () Bool)

(assert (=> bm!519270 (= call!519274 (derivationStepZipperDown!1391 (ite c!1119886 (regOne!32799 (ite c!1119786 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119787 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119788 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343)))))))) (regOne!32798 (ite c!1119786 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119787 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119788 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343))))))))) (ite c!1119886 (ite (or c!1119786 c!1119787) lt!2343076 (Context!11055 call!519182)) (Context!11055 call!519277)) (h!71054 s!2326)))))

(declare-fun b!6202994 () Bool)

(assert (=> b!6202994 (= e!3777201 call!519276)))

(declare-fun bm!519271 () Bool)

(assert (=> bm!519271 (= call!519273 call!519275)))

(declare-fun b!6202995 () Bool)

(assert (=> b!6202995 (= c!1119887 e!3777199)))

(declare-fun res!2565604 () Bool)

(assert (=> b!6202995 (=> (not res!2565604) (not e!3777199))))

(assert (=> b!6202995 (= res!2565604 ((_ is Concat!24988) (ite c!1119786 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119787 (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (ite c!1119788 (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (reg!16472 (h!71052 (exprs!6027 (h!71053 zl!343)))))))))))

(assert (=> b!6202995 (= e!3777202 e!3777203)))

(declare-fun b!6202996 () Bool)

(assert (=> b!6202996 (= e!3777202 ((_ map or) call!519274 call!519275))))

(declare-fun bm!519272 () Bool)

(assert (=> bm!519272 (= call!519272 call!519277)))

(assert (= (and d!1944433 c!1119890) b!6202992))

(assert (= (and d!1944433 (not c!1119890)) b!6202991))

(assert (= (and b!6202991 c!1119886) b!6202996))

(assert (= (and b!6202991 (not c!1119886)) b!6202995))

(assert (= (and b!6202995 res!2565604) b!6202993))

(assert (= (and b!6202995 c!1119887) b!6202989))

(assert (= (and b!6202995 (not c!1119887)) b!6202988))

(assert (= (and b!6202988 c!1119888) b!6202987))

(assert (= (and b!6202988 (not c!1119888)) b!6202990))

(assert (= (and b!6202990 c!1119889) b!6202994))

(assert (= (and b!6202990 (not c!1119889)) b!6202986))

(assert (= (or b!6202987 b!6202994) bm!519272))

(assert (= (or b!6202987 b!6202994) bm!519269))

(assert (= (or b!6202989 bm!519272) bm!519267))

(assert (= (or b!6202989 bm!519269) bm!519271))

(assert (= (or b!6202996 bm!519271) bm!519268))

(assert (= (or b!6202996 b!6202989) bm!519270))

(declare-fun m!7035052 () Bool)

(assert (=> bm!519268 m!7035052))

(declare-fun m!7035054 () Bool)

(assert (=> b!6202993 m!7035054))

(declare-fun m!7035056 () Bool)

(assert (=> bm!519270 m!7035056))

(declare-fun m!7035058 () Bool)

(assert (=> bm!519267 m!7035058))

(declare-fun m!7035060 () Bool)

(assert (=> b!6202992 m!7035060))

(assert (=> bm!519178 d!1944433))

(declare-fun d!1944445 () Bool)

(assert (=> d!1944445 (= (isUnion!992 lt!2343130) ((_ is Union!16143) lt!2343130))))

(assert (=> b!6202401 d!1944445))

(assert (=> bs!1538783 d!1944293))

(declare-fun d!1944447 () Bool)

(assert (=> d!1944447 (= (Exists!3213 (ite c!1119752 lambda!338956 lambda!338958)) (choose!46097 (ite c!1119752 lambda!338956 lambda!338958)))))

(declare-fun bs!1538818 () Bool)

(assert (= bs!1538818 d!1944447))

(declare-fun m!7035062 () Bool)

(assert (=> bs!1538818 m!7035062))

(assert (=> bm!519160 d!1944447))

(declare-fun bs!1538819 () Bool)

(declare-fun d!1944449 () Bool)

(assert (= bs!1538819 (and d!1944449 d!1944251)))

(declare-fun lambda!338974 () Int)

(assert (=> bs!1538819 (= lambda!338974 lambda!338942)))

(declare-fun bs!1538820 () Bool)

(assert (= bs!1538820 (and d!1944449 d!1944261)))

(assert (=> bs!1538820 (= lambda!338974 lambda!338943)))

(declare-fun bs!1538821 () Bool)

(assert (= bs!1538821 (and d!1944449 d!1944167)))

(assert (=> bs!1538821 (= lambda!338974 lambda!338906)))

(declare-fun bs!1538822 () Bool)

(assert (= bs!1538822 (and d!1944449 d!1944421)))

(assert (=> bs!1538822 (= lambda!338974 lambda!338972)))

(declare-fun bs!1538823 () Bool)

(assert (= bs!1538823 (and d!1944449 d!1944247)))

(assert (=> bs!1538823 (= lambda!338974 lambda!338939)))

(declare-fun bs!1538824 () Bool)

(assert (= bs!1538824 (and d!1944449 d!1944169)))

(assert (=> bs!1538824 (= lambda!338974 lambda!338907)))

(declare-fun bs!1538825 () Bool)

(assert (= bs!1538825 (and d!1944449 d!1944283)))

(assert (=> bs!1538825 (= lambda!338974 lambda!338961)))

(declare-fun bs!1538826 () Bool)

(assert (= bs!1538826 (and d!1944449 d!1944349)))

(assert (=> bs!1538826 (= lambda!338974 lambda!338968)))

(assert (=> d!1944449 (= (inv!83604 setElem!42110) (forall!15256 (exprs!6027 setElem!42110) lambda!338974))))

(declare-fun bs!1538827 () Bool)

(assert (= bs!1538827 d!1944449))

(declare-fun m!7035066 () Bool)

(assert (=> bs!1538827 m!7035066))

(assert (=> setNonEmpty!42110 d!1944449))

(declare-fun d!1944451 () Bool)

(assert (=> d!1944451 (= ($colon$colon!2012 (exprs!6027 lt!2343076) (ite (or c!1119787 c!1119788) (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (h!71052 (exprs!6027 (h!71053 zl!343))))) (Cons!64604 (ite (or c!1119787 c!1119788) (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))) (h!71052 (exprs!6027 (h!71053 zl!343)))) (exprs!6027 lt!2343076)))))

(assert (=> bm!519177 d!1944451))

(declare-fun b!6203011 () Bool)

(declare-fun e!3777214 () Bool)

(assert (=> b!6203011 (= e!3777214 (nullable!6136 (derivativeStep!4856 r!7292 (head!12794 s!2326))))))

(declare-fun b!6203012 () Bool)

(declare-fun res!2565614 () Bool)

(declare-fun e!3777213 () Bool)

(assert (=> b!6203012 (=> res!2565614 e!3777213)))

(assert (=> b!6203012 (= res!2565614 (not ((_ is ElementMatch!16143) (derivativeStep!4856 r!7292 (head!12794 s!2326)))))))

(declare-fun e!3777211 () Bool)

(assert (=> b!6203012 (= e!3777211 e!3777213)))

(declare-fun b!6203013 () Bool)

(declare-fun res!2565613 () Bool)

(declare-fun e!3777212 () Bool)

(assert (=> b!6203013 (=> (not res!2565613) (not e!3777212))))

(assert (=> b!6203013 (= res!2565613 (isEmpty!36601 (tail!11878 (tail!11878 s!2326))))))

(declare-fun b!6203014 () Bool)

(declare-fun e!3777216 () Bool)

(assert (=> b!6203014 (= e!3777213 e!3777216)))

(declare-fun res!2565616 () Bool)

(assert (=> b!6203014 (=> (not res!2565616) (not e!3777216))))

(declare-fun lt!2343176 () Bool)

(assert (=> b!6203014 (= res!2565616 (not lt!2343176))))

(declare-fun d!1944453 () Bool)

(declare-fun e!3777217 () Bool)

(assert (=> d!1944453 e!3777217))

(declare-fun c!1119894 () Bool)

(assert (=> d!1944453 (= c!1119894 ((_ is EmptyExpr!16143) (derivativeStep!4856 r!7292 (head!12794 s!2326))))))

(assert (=> d!1944453 (= lt!2343176 e!3777214)))

(declare-fun c!1119895 () Bool)

(assert (=> d!1944453 (= c!1119895 (isEmpty!36601 (tail!11878 s!2326)))))

(assert (=> d!1944453 (validRegex!7879 (derivativeStep!4856 r!7292 (head!12794 s!2326)))))

(assert (=> d!1944453 (= (matchR!8326 (derivativeStep!4856 r!7292 (head!12794 s!2326)) (tail!11878 s!2326)) lt!2343176)))

(declare-fun b!6203015 () Bool)

(declare-fun e!3777215 () Bool)

(assert (=> b!6203015 (= e!3777216 e!3777215)))

(declare-fun res!2565617 () Bool)

(assert (=> b!6203015 (=> res!2565617 e!3777215)))

(declare-fun call!519279 () Bool)

(assert (=> b!6203015 (= res!2565617 call!519279)))

(declare-fun b!6203016 () Bool)

(assert (=> b!6203016 (= e!3777215 (not (= (head!12794 (tail!11878 s!2326)) (c!1119610 (derivativeStep!4856 r!7292 (head!12794 s!2326))))))))

(declare-fun b!6203017 () Bool)

(declare-fun res!2565618 () Bool)

(assert (=> b!6203017 (=> (not res!2565618) (not e!3777212))))

(assert (=> b!6203017 (= res!2565618 (not call!519279))))

(declare-fun bm!519274 () Bool)

(assert (=> bm!519274 (= call!519279 (isEmpty!36601 (tail!11878 s!2326)))))

(declare-fun b!6203018 () Bool)

(assert (=> b!6203018 (= e!3777211 (not lt!2343176))))

(declare-fun b!6203019 () Bool)

(declare-fun res!2565619 () Bool)

(assert (=> b!6203019 (=> res!2565619 e!3777215)))

(assert (=> b!6203019 (= res!2565619 (not (isEmpty!36601 (tail!11878 (tail!11878 s!2326)))))))

(declare-fun b!6203020 () Bool)

(assert (=> b!6203020 (= e!3777217 e!3777211)))

(declare-fun c!1119896 () Bool)

(assert (=> b!6203020 (= c!1119896 ((_ is EmptyLang!16143) (derivativeStep!4856 r!7292 (head!12794 s!2326))))))

(declare-fun b!6203021 () Bool)

(assert (=> b!6203021 (= e!3777217 (= lt!2343176 call!519279))))

(declare-fun b!6203022 () Bool)

(assert (=> b!6203022 (= e!3777212 (= (head!12794 (tail!11878 s!2326)) (c!1119610 (derivativeStep!4856 r!7292 (head!12794 s!2326)))))))

(declare-fun b!6203023 () Bool)

(assert (=> b!6203023 (= e!3777214 (matchR!8326 (derivativeStep!4856 (derivativeStep!4856 r!7292 (head!12794 s!2326)) (head!12794 (tail!11878 s!2326))) (tail!11878 (tail!11878 s!2326))))))

(declare-fun b!6203024 () Bool)

(declare-fun res!2565615 () Bool)

(assert (=> b!6203024 (=> res!2565615 e!3777213)))

(assert (=> b!6203024 (= res!2565615 e!3777212)))

(declare-fun res!2565620 () Bool)

(assert (=> b!6203024 (=> (not res!2565620) (not e!3777212))))

(assert (=> b!6203024 (= res!2565620 lt!2343176)))

(assert (= (and d!1944453 c!1119895) b!6203011))

(assert (= (and d!1944453 (not c!1119895)) b!6203023))

(assert (= (and d!1944453 c!1119894) b!6203021))

(assert (= (and d!1944453 (not c!1119894)) b!6203020))

(assert (= (and b!6203020 c!1119896) b!6203018))

(assert (= (and b!6203020 (not c!1119896)) b!6203012))

(assert (= (and b!6203012 (not res!2565614)) b!6203024))

(assert (= (and b!6203024 res!2565620) b!6203017))

(assert (= (and b!6203017 res!2565618) b!6203013))

(assert (= (and b!6203013 res!2565613) b!6203022))

(assert (= (and b!6203024 (not res!2565615)) b!6203014))

(assert (= (and b!6203014 res!2565616) b!6203015))

(assert (= (and b!6203015 (not res!2565617)) b!6203019))

(assert (= (and b!6203019 (not res!2565619)) b!6203016))

(assert (= (or b!6203021 b!6203015 b!6203017) bm!519274))

(assert (=> d!1944453 m!7034674))

(assert (=> d!1944453 m!7034676))

(assert (=> d!1944453 m!7034680))

(declare-fun m!7035080 () Bool)

(assert (=> d!1944453 m!7035080))

(assert (=> b!6203013 m!7034674))

(declare-fun m!7035082 () Bool)

(assert (=> b!6203013 m!7035082))

(assert (=> b!6203013 m!7035082))

(declare-fun m!7035084 () Bool)

(assert (=> b!6203013 m!7035084))

(assert (=> b!6203022 m!7034674))

(declare-fun m!7035086 () Bool)

(assert (=> b!6203022 m!7035086))

(assert (=> b!6203016 m!7034674))

(assert (=> b!6203016 m!7035086))

(assert (=> bm!519274 m!7034674))

(assert (=> bm!519274 m!7034676))

(assert (=> b!6203023 m!7034674))

(assert (=> b!6203023 m!7035086))

(assert (=> b!6203023 m!7034680))

(assert (=> b!6203023 m!7035086))

(declare-fun m!7035088 () Bool)

(assert (=> b!6203023 m!7035088))

(assert (=> b!6203023 m!7034674))

(assert (=> b!6203023 m!7035082))

(assert (=> b!6203023 m!7035088))

(assert (=> b!6203023 m!7035082))

(declare-fun m!7035090 () Bool)

(assert (=> b!6203023 m!7035090))

(assert (=> b!6203019 m!7034674))

(assert (=> b!6203019 m!7035082))

(assert (=> b!6203019 m!7035082))

(assert (=> b!6203019 m!7035084))

(assert (=> b!6203011 m!7034680))

(declare-fun m!7035092 () Bool)

(assert (=> b!6203011 m!7035092))

(assert (=> b!6202568 d!1944453))

(declare-fun c!1119917 () Bool)

(declare-fun bm!519289 () Bool)

(declare-fun call!519296 () Regex!16143)

(assert (=> bm!519289 (= call!519296 (derivativeStep!4856 (ite c!1119917 (regOne!32799 r!7292) (regOne!32798 r!7292)) (head!12794 s!2326)))))

(declare-fun c!1119921 () Bool)

(declare-fun c!1119918 () Bool)

(declare-fun call!519297 () Regex!16143)

(declare-fun bm!519290 () Bool)

(assert (=> bm!519290 (= call!519297 (derivativeStep!4856 (ite c!1119917 (regTwo!32799 r!7292) (ite c!1119921 (reg!16472 r!7292) (ite c!1119918 (regTwo!32798 r!7292) (regOne!32798 r!7292)))) (head!12794 s!2326)))))

(declare-fun b!6203066 () Bool)

(declare-fun e!3777239 () Regex!16143)

(declare-fun e!3777240 () Regex!16143)

(assert (=> b!6203066 (= e!3777239 e!3777240)))

(declare-fun c!1119919 () Bool)

(assert (=> b!6203066 (= c!1119919 ((_ is ElementMatch!16143) r!7292))))

(declare-fun b!6203067 () Bool)

(declare-fun e!3777238 () Regex!16143)

(declare-fun e!3777242 () Regex!16143)

(assert (=> b!6203067 (= e!3777238 e!3777242)))

(assert (=> b!6203067 (= c!1119921 ((_ is Star!16143) r!7292))))

(declare-fun bm!519291 () Bool)

(declare-fun call!519294 () Regex!16143)

(assert (=> bm!519291 (= call!519294 call!519297)))

(declare-fun b!6203068 () Bool)

(assert (=> b!6203068 (= c!1119917 ((_ is Union!16143) r!7292))))

(assert (=> b!6203068 (= e!3777240 e!3777238)))

(declare-fun bm!519292 () Bool)

(declare-fun call!519295 () Regex!16143)

(assert (=> bm!519292 (= call!519295 call!519294)))

(declare-fun b!6203069 () Bool)

(declare-fun e!3777241 () Regex!16143)

(assert (=> b!6203069 (= e!3777241 (Union!16143 (Concat!24988 call!519296 (regTwo!32798 r!7292)) call!519295))))

(declare-fun b!6203070 () Bool)

(assert (=> b!6203070 (= e!3777241 (Union!16143 (Concat!24988 call!519295 (regTwo!32798 r!7292)) EmptyLang!16143))))

(declare-fun b!6203071 () Bool)

(assert (=> b!6203071 (= e!3777242 (Concat!24988 call!519294 r!7292))))

(declare-fun b!6203072 () Bool)

(assert (=> b!6203072 (= e!3777238 (Union!16143 call!519296 call!519297))))

(declare-fun b!6203073 () Bool)

(assert (=> b!6203073 (= c!1119918 (nullable!6136 (regOne!32798 r!7292)))))

(assert (=> b!6203073 (= e!3777242 e!3777241)))

(declare-fun b!6203074 () Bool)

(assert (=> b!6203074 (= e!3777239 EmptyLang!16143)))

(declare-fun d!1944457 () Bool)

(declare-fun lt!2343181 () Regex!16143)

(assert (=> d!1944457 (validRegex!7879 lt!2343181)))

(assert (=> d!1944457 (= lt!2343181 e!3777239)))

(declare-fun c!1119920 () Bool)

(assert (=> d!1944457 (= c!1119920 (or ((_ is EmptyExpr!16143) r!7292) ((_ is EmptyLang!16143) r!7292)))))

(assert (=> d!1944457 (validRegex!7879 r!7292)))

(assert (=> d!1944457 (= (derivativeStep!4856 r!7292 (head!12794 s!2326)) lt!2343181)))

(declare-fun b!6203065 () Bool)

(assert (=> b!6203065 (= e!3777240 (ite (= (head!12794 s!2326) (c!1119610 r!7292)) EmptyExpr!16143 EmptyLang!16143))))

(assert (= (and d!1944457 c!1119920) b!6203074))

(assert (= (and d!1944457 (not c!1119920)) b!6203066))

(assert (= (and b!6203066 c!1119919) b!6203065))

(assert (= (and b!6203066 (not c!1119919)) b!6203068))

(assert (= (and b!6203068 c!1119917) b!6203072))

(assert (= (and b!6203068 (not c!1119917)) b!6203067))

(assert (= (and b!6203067 c!1119921) b!6203071))

(assert (= (and b!6203067 (not c!1119921)) b!6203073))

(assert (= (and b!6203073 c!1119918) b!6203069))

(assert (= (and b!6203073 (not c!1119918)) b!6203070))

(assert (= (or b!6203069 b!6203070) bm!519292))

(assert (= (or b!6203071 bm!519292) bm!519291))

(assert (= (or b!6203072 bm!519291) bm!519290))

(assert (= (or b!6203072 b!6203069) bm!519289))

(assert (=> bm!519289 m!7034678))

(declare-fun m!7035094 () Bool)

(assert (=> bm!519289 m!7035094))

(assert (=> bm!519290 m!7034678))

(declare-fun m!7035096 () Bool)

(assert (=> bm!519290 m!7035096))

(assert (=> b!6203073 m!7034872))

(declare-fun m!7035098 () Bool)

(assert (=> d!1944457 m!7035098))

(assert (=> d!1944457 m!7034314))

(assert (=> b!6202568 d!1944457))

(declare-fun d!1944459 () Bool)

(assert (=> d!1944459 (= (head!12794 s!2326) (h!71054 s!2326))))

(assert (=> b!6202568 d!1944459))

(assert (=> b!6202568 d!1944359))

(assert (=> d!1944171 d!1944181))

(assert (=> d!1944171 d!1944175))

(declare-fun d!1944461 () Bool)

(declare-fun e!3777245 () Bool)

(assert (=> d!1944461 (= (matchZipper!2155 ((_ map or) lt!2343071 lt!2343064) (t!378248 s!2326)) e!3777245)))

(declare-fun res!2565623 () Bool)

(assert (=> d!1944461 (=> res!2565623 e!3777245)))

(assert (=> d!1944461 (= res!2565623 (matchZipper!2155 lt!2343071 (t!378248 s!2326)))))

(assert (=> d!1944461 true))

(declare-fun _$48!1851 () Unit!157903)

(assert (=> d!1944461 (= (choose!46096 lt!2343071 lt!2343064 (t!378248 s!2326)) _$48!1851)))

(declare-fun b!6203077 () Bool)

(assert (=> b!6203077 (= e!3777245 (matchZipper!2155 lt!2343064 (t!378248 s!2326)))))

(assert (= (and d!1944461 (not res!2565623)) b!6203077))

(assert (=> d!1944461 m!7034344))

(assert (=> d!1944461 m!7034342))

(assert (=> b!6203077 m!7034296))

(assert (=> d!1944171 d!1944461))

(declare-fun b!6203078 () Bool)

(declare-fun e!3777249 () Bool)

(assert (=> b!6203078 (= e!3777249 (nullable!6136 (regTwo!32798 r!7292)))))

(declare-fun b!6203079 () Bool)

(declare-fun res!2565625 () Bool)

(declare-fun e!3777248 () Bool)

(assert (=> b!6203079 (=> res!2565625 e!3777248)))

(assert (=> b!6203079 (= res!2565625 (not ((_ is ElementMatch!16143) (regTwo!32798 r!7292))))))

(declare-fun e!3777246 () Bool)

(assert (=> b!6203079 (= e!3777246 e!3777248)))

(declare-fun b!6203080 () Bool)

(declare-fun res!2565624 () Bool)

(declare-fun e!3777247 () Bool)

(assert (=> b!6203080 (=> (not res!2565624) (not e!3777247))))

(assert (=> b!6203080 (= res!2565624 (isEmpty!36601 (tail!11878 (_2!36425 (get!22307 lt!2343096)))))))

(declare-fun b!6203081 () Bool)

(declare-fun e!3777251 () Bool)

(assert (=> b!6203081 (= e!3777248 e!3777251)))

(declare-fun res!2565627 () Bool)

(assert (=> b!6203081 (=> (not res!2565627) (not e!3777251))))

(declare-fun lt!2343182 () Bool)

(assert (=> b!6203081 (= res!2565627 (not lt!2343182))))

(declare-fun d!1944463 () Bool)

(declare-fun e!3777252 () Bool)

(assert (=> d!1944463 e!3777252))

(declare-fun c!1119922 () Bool)

(assert (=> d!1944463 (= c!1119922 ((_ is EmptyExpr!16143) (regTwo!32798 r!7292)))))

(assert (=> d!1944463 (= lt!2343182 e!3777249)))

(declare-fun c!1119923 () Bool)

(assert (=> d!1944463 (= c!1119923 (isEmpty!36601 (_2!36425 (get!22307 lt!2343096))))))

(assert (=> d!1944463 (validRegex!7879 (regTwo!32798 r!7292))))

(assert (=> d!1944463 (= (matchR!8326 (regTwo!32798 r!7292) (_2!36425 (get!22307 lt!2343096))) lt!2343182)))

(declare-fun b!6203082 () Bool)

(declare-fun e!3777250 () Bool)

(assert (=> b!6203082 (= e!3777251 e!3777250)))

(declare-fun res!2565628 () Bool)

(assert (=> b!6203082 (=> res!2565628 e!3777250)))

(declare-fun call!519300 () Bool)

(assert (=> b!6203082 (= res!2565628 call!519300)))

(declare-fun b!6203083 () Bool)

(assert (=> b!6203083 (= e!3777250 (not (= (head!12794 (_2!36425 (get!22307 lt!2343096))) (c!1119610 (regTwo!32798 r!7292)))))))

(declare-fun b!6203084 () Bool)

(declare-fun res!2565629 () Bool)

(assert (=> b!6203084 (=> (not res!2565629) (not e!3777247))))

(assert (=> b!6203084 (= res!2565629 (not call!519300))))

(declare-fun bm!519295 () Bool)

(assert (=> bm!519295 (= call!519300 (isEmpty!36601 (_2!36425 (get!22307 lt!2343096))))))

(declare-fun b!6203085 () Bool)

(assert (=> b!6203085 (= e!3777246 (not lt!2343182))))

(declare-fun b!6203086 () Bool)

(declare-fun res!2565630 () Bool)

(assert (=> b!6203086 (=> res!2565630 e!3777250)))

(assert (=> b!6203086 (= res!2565630 (not (isEmpty!36601 (tail!11878 (_2!36425 (get!22307 lt!2343096))))))))

(declare-fun b!6203087 () Bool)

(assert (=> b!6203087 (= e!3777252 e!3777246)))

(declare-fun c!1119924 () Bool)

(assert (=> b!6203087 (= c!1119924 ((_ is EmptyLang!16143) (regTwo!32798 r!7292)))))

(declare-fun b!6203088 () Bool)

(assert (=> b!6203088 (= e!3777252 (= lt!2343182 call!519300))))

(declare-fun b!6203089 () Bool)

(assert (=> b!6203089 (= e!3777247 (= (head!12794 (_2!36425 (get!22307 lt!2343096))) (c!1119610 (regTwo!32798 r!7292))))))

(declare-fun b!6203090 () Bool)

(assert (=> b!6203090 (= e!3777249 (matchR!8326 (derivativeStep!4856 (regTwo!32798 r!7292) (head!12794 (_2!36425 (get!22307 lt!2343096)))) (tail!11878 (_2!36425 (get!22307 lt!2343096)))))))

(declare-fun b!6203091 () Bool)

(declare-fun res!2565626 () Bool)

(assert (=> b!6203091 (=> res!2565626 e!3777248)))

(assert (=> b!6203091 (= res!2565626 e!3777247)))

(declare-fun res!2565631 () Bool)

(assert (=> b!6203091 (=> (not res!2565631) (not e!3777247))))

(assert (=> b!6203091 (= res!2565631 lt!2343182)))

(assert (= (and d!1944463 c!1119923) b!6203078))

(assert (= (and d!1944463 (not c!1119923)) b!6203090))

(assert (= (and d!1944463 c!1119922) b!6203088))

(assert (= (and d!1944463 (not c!1119922)) b!6203087))

(assert (= (and b!6203087 c!1119924) b!6203085))

(assert (= (and b!6203087 (not c!1119924)) b!6203079))

(assert (= (and b!6203079 (not res!2565625)) b!6203091))

(assert (= (and b!6203091 res!2565631) b!6203084))

(assert (= (and b!6203084 res!2565629) b!6203080))

(assert (= (and b!6203080 res!2565624) b!6203089))

(assert (= (and b!6203091 (not res!2565626)) b!6203081))

(assert (= (and b!6203081 res!2565627) b!6203082))

(assert (= (and b!6203082 (not res!2565628)) b!6203086))

(assert (= (and b!6203086 (not res!2565630)) b!6203083))

(assert (= (or b!6203088 b!6203082 b!6203084) bm!519295))

(declare-fun m!7035100 () Bool)

(assert (=> d!1944463 m!7035100))

(assert (=> d!1944463 m!7035020))

(declare-fun m!7035102 () Bool)

(assert (=> b!6203080 m!7035102))

(assert (=> b!6203080 m!7035102))

(declare-fun m!7035104 () Bool)

(assert (=> b!6203080 m!7035104))

(declare-fun m!7035106 () Bool)

(assert (=> b!6203089 m!7035106))

(assert (=> b!6203083 m!7035106))

(assert (=> bm!519295 m!7035100))

(assert (=> b!6203090 m!7035106))

(assert (=> b!6203090 m!7035106))

(declare-fun m!7035108 () Bool)

(assert (=> b!6203090 m!7035108))

(assert (=> b!6203090 m!7035102))

(assert (=> b!6203090 m!7035108))

(assert (=> b!6203090 m!7035102))

(declare-fun m!7035110 () Bool)

(assert (=> b!6203090 m!7035110))

(assert (=> b!6203086 m!7035102))

(assert (=> b!6203086 m!7035102))

(assert (=> b!6203086 m!7035104))

(assert (=> b!6203078 m!7035026))

(assert (=> b!6202205 d!1944463))

(declare-fun d!1944465 () Bool)

(assert (=> d!1944465 (= (get!22307 lt!2343096) (v!52176 lt!2343096))))

(assert (=> b!6202205 d!1944465))

(declare-fun d!1944467 () Bool)

(assert (=> d!1944467 (= (isEmpty!36598 (exprs!6027 (h!71053 zl!343))) ((_ is Nil!64604) (exprs!6027 (h!71053 zl!343))))))

(assert (=> b!6202601 d!1944467))

(assert (=> d!1944175 d!1944373))

(assert (=> b!6202564 d!1944357))

(assert (=> b!6202564 d!1944359))

(declare-fun d!1944469 () Bool)

(assert (=> d!1944469 (= (isEmptyLang!1562 lt!2343130) ((_ is EmptyLang!16143) lt!2343130))))

(assert (=> b!6202399 d!1944469))

(declare-fun b!6203102 () Bool)

(declare-fun e!3777261 () Bool)

(assert (=> b!6203102 (= e!3777261 (nullable!6136 (regOne!32798 r!7292)))))

(declare-fun b!6203103 () Bool)

(declare-fun res!2565633 () Bool)

(declare-fun e!3777260 () Bool)

(assert (=> b!6203103 (=> res!2565633 e!3777260)))

(assert (=> b!6203103 (= res!2565633 (not ((_ is ElementMatch!16143) (regOne!32798 r!7292))))))

(declare-fun e!3777258 () Bool)

(assert (=> b!6203103 (= e!3777258 e!3777260)))

(declare-fun b!6203104 () Bool)

(declare-fun res!2565632 () Bool)

(declare-fun e!3777259 () Bool)

(assert (=> b!6203104 (=> (not res!2565632) (not e!3777259))))

(assert (=> b!6203104 (= res!2565632 (isEmpty!36601 (tail!11878 (_1!36425 (get!22307 lt!2343096)))))))

(declare-fun b!6203105 () Bool)

(declare-fun e!3777263 () Bool)

(assert (=> b!6203105 (= e!3777260 e!3777263)))

(declare-fun res!2565635 () Bool)

(assert (=> b!6203105 (=> (not res!2565635) (not e!3777263))))

(declare-fun lt!2343184 () Bool)

(assert (=> b!6203105 (= res!2565635 (not lt!2343184))))

(declare-fun d!1944471 () Bool)

(declare-fun e!3777264 () Bool)

(assert (=> d!1944471 e!3777264))

(declare-fun c!1119930 () Bool)

(assert (=> d!1944471 (= c!1119930 ((_ is EmptyExpr!16143) (regOne!32798 r!7292)))))

(assert (=> d!1944471 (= lt!2343184 e!3777261)))

(declare-fun c!1119931 () Bool)

(assert (=> d!1944471 (= c!1119931 (isEmpty!36601 (_1!36425 (get!22307 lt!2343096))))))

(assert (=> d!1944471 (validRegex!7879 (regOne!32798 r!7292))))

(assert (=> d!1944471 (= (matchR!8326 (regOne!32798 r!7292) (_1!36425 (get!22307 lt!2343096))) lt!2343184)))

(declare-fun b!6203106 () Bool)

(declare-fun e!3777262 () Bool)

(assert (=> b!6203106 (= e!3777263 e!3777262)))

(declare-fun res!2565636 () Bool)

(assert (=> b!6203106 (=> res!2565636 e!3777262)))

(declare-fun call!519305 () Bool)

(assert (=> b!6203106 (= res!2565636 call!519305)))

(declare-fun b!6203107 () Bool)

(assert (=> b!6203107 (= e!3777262 (not (= (head!12794 (_1!36425 (get!22307 lt!2343096))) (c!1119610 (regOne!32798 r!7292)))))))

(declare-fun b!6203108 () Bool)

(declare-fun res!2565637 () Bool)

(assert (=> b!6203108 (=> (not res!2565637) (not e!3777259))))

(assert (=> b!6203108 (= res!2565637 (not call!519305))))

(declare-fun bm!519300 () Bool)

(assert (=> bm!519300 (= call!519305 (isEmpty!36601 (_1!36425 (get!22307 lt!2343096))))))

(declare-fun b!6203109 () Bool)

(assert (=> b!6203109 (= e!3777258 (not lt!2343184))))

(declare-fun b!6203110 () Bool)

(declare-fun res!2565638 () Bool)

(assert (=> b!6203110 (=> res!2565638 e!3777262)))

(assert (=> b!6203110 (= res!2565638 (not (isEmpty!36601 (tail!11878 (_1!36425 (get!22307 lt!2343096))))))))

(declare-fun b!6203111 () Bool)

(assert (=> b!6203111 (= e!3777264 e!3777258)))

(declare-fun c!1119932 () Bool)

(assert (=> b!6203111 (= c!1119932 ((_ is EmptyLang!16143) (regOne!32798 r!7292)))))

(declare-fun b!6203112 () Bool)

(assert (=> b!6203112 (= e!3777264 (= lt!2343184 call!519305))))

(declare-fun b!6203113 () Bool)

(assert (=> b!6203113 (= e!3777259 (= (head!12794 (_1!36425 (get!22307 lt!2343096))) (c!1119610 (regOne!32798 r!7292))))))

(declare-fun b!6203114 () Bool)

(assert (=> b!6203114 (= e!3777261 (matchR!8326 (derivativeStep!4856 (regOne!32798 r!7292) (head!12794 (_1!36425 (get!22307 lt!2343096)))) (tail!11878 (_1!36425 (get!22307 lt!2343096)))))))

(declare-fun b!6203115 () Bool)

(declare-fun res!2565634 () Bool)

(assert (=> b!6203115 (=> res!2565634 e!3777260)))

(assert (=> b!6203115 (= res!2565634 e!3777259)))

(declare-fun res!2565639 () Bool)

(assert (=> b!6203115 (=> (not res!2565639) (not e!3777259))))

(assert (=> b!6203115 (= res!2565639 lt!2343184)))

(assert (= (and d!1944471 c!1119931) b!6203102))

(assert (= (and d!1944471 (not c!1119931)) b!6203114))

(assert (= (and d!1944471 c!1119930) b!6203112))

(assert (= (and d!1944471 (not c!1119930)) b!6203111))

(assert (= (and b!6203111 c!1119932) b!6203109))

(assert (= (and b!6203111 (not c!1119932)) b!6203103))

(assert (= (and b!6203103 (not res!2565633)) b!6203115))

(assert (= (and b!6203115 res!2565639) b!6203108))

(assert (= (and b!6203108 res!2565637) b!6203104))

(assert (= (and b!6203104 res!2565632) b!6203113))

(assert (= (and b!6203115 (not res!2565634)) b!6203105))

(assert (= (and b!6203105 res!2565635) b!6203106))

(assert (= (and b!6203106 (not res!2565636)) b!6203110))

(assert (= (and b!6203110 (not res!2565638)) b!6203107))

(assert (= (or b!6203112 b!6203106 b!6203108) bm!519300))

(declare-fun m!7035112 () Bool)

(assert (=> d!1944471 m!7035112))

(assert (=> d!1944471 m!7034458))

(declare-fun m!7035114 () Bool)

(assert (=> b!6203104 m!7035114))

(assert (=> b!6203104 m!7035114))

(declare-fun m!7035116 () Bool)

(assert (=> b!6203104 m!7035116))

(declare-fun m!7035118 () Bool)

(assert (=> b!6203113 m!7035118))

(assert (=> b!6203107 m!7035118))

(assert (=> bm!519300 m!7035112))

(assert (=> b!6203114 m!7035118))

(assert (=> b!6203114 m!7035118))

(declare-fun m!7035123 () Bool)

(assert (=> b!6203114 m!7035123))

(assert (=> b!6203114 m!7035114))

(assert (=> b!6203114 m!7035123))

(assert (=> b!6203114 m!7035114))

(declare-fun m!7035128 () Bool)

(assert (=> b!6203114 m!7035128))

(assert (=> b!6203110 m!7035114))

(assert (=> b!6203110 m!7035114))

(assert (=> b!6203110 m!7035116))

(assert (=> b!6203102 m!7034872))

(assert (=> b!6202203 d!1944471))

(assert (=> b!6202203 d!1944465))

(declare-fun d!1944473 () Bool)

(assert (=> d!1944473 (= (isEmpty!36602 (findConcatSeparation!2448 (regOne!32798 r!7292) (regTwo!32798 r!7292) Nil!64606 s!2326 s!2326)) (not ((_ is Some!16033) (findConcatSeparation!2448 (regOne!32798 r!7292) (regTwo!32798 r!7292) Nil!64606 s!2326 s!2326))))))

(assert (=> d!1944245 d!1944473))

(declare-fun b!6203116 () Bool)

(declare-fun e!3777271 () Bool)

(declare-fun e!3777265 () Bool)

(assert (=> b!6203116 (= e!3777271 e!3777265)))

(declare-fun res!2565644 () Bool)

(assert (=> b!6203116 (= res!2565644 (not (nullable!6136 (reg!16472 lt!2343151))))))

(assert (=> b!6203116 (=> (not res!2565644) (not e!3777265))))

(declare-fun b!6203117 () Bool)

(declare-fun e!3777268 () Bool)

(assert (=> b!6203117 (= e!3777268 e!3777271)))

(declare-fun c!1119934 () Bool)

(assert (=> b!6203117 (= c!1119934 ((_ is Star!16143) lt!2343151))))

(declare-fun b!6203118 () Bool)

(declare-fun e!3777269 () Bool)

(declare-fun e!3777267 () Bool)

(assert (=> b!6203118 (= e!3777269 e!3777267)))

(declare-fun res!2565643 () Bool)

(assert (=> b!6203118 (=> (not res!2565643) (not e!3777267))))

(declare-fun call!519307 () Bool)

(assert (=> b!6203118 (= res!2565643 call!519307)))

(declare-fun b!6203120 () Bool)

(declare-fun call!519306 () Bool)

(assert (=> b!6203120 (= e!3777267 call!519306)))

(declare-fun bm!519301 () Bool)

(declare-fun call!519308 () Bool)

(declare-fun c!1119933 () Bool)

(assert (=> bm!519301 (= call!519308 (validRegex!7879 (ite c!1119934 (reg!16472 lt!2343151) (ite c!1119933 (regOne!32799 lt!2343151) (regOne!32798 lt!2343151)))))))

(declare-fun b!6203121 () Bool)

(declare-fun res!2565641 () Bool)

(assert (=> b!6203121 (=> res!2565641 e!3777269)))

(assert (=> b!6203121 (= res!2565641 (not ((_ is Concat!24988) lt!2343151)))))

(declare-fun e!3777270 () Bool)

(assert (=> b!6203121 (= e!3777270 e!3777269)))

(declare-fun bm!519302 () Bool)

(assert (=> bm!519302 (= call!519306 (validRegex!7879 (ite c!1119933 (regTwo!32799 lt!2343151) (regTwo!32798 lt!2343151))))))

(declare-fun b!6203122 () Bool)

(declare-fun e!3777266 () Bool)

(assert (=> b!6203122 (= e!3777266 call!519306)))

(declare-fun bm!519303 () Bool)

(assert (=> bm!519303 (= call!519307 call!519308)))

(declare-fun b!6203123 () Bool)

(assert (=> b!6203123 (= e!3777265 call!519308)))

(declare-fun b!6203124 () Bool)

(declare-fun res!2565640 () Bool)

(assert (=> b!6203124 (=> (not res!2565640) (not e!3777266))))

(assert (=> b!6203124 (= res!2565640 call!519307)))

(assert (=> b!6203124 (= e!3777270 e!3777266)))

(declare-fun d!1944477 () Bool)

(declare-fun res!2565642 () Bool)

(assert (=> d!1944477 (=> res!2565642 e!3777268)))

(assert (=> d!1944477 (= res!2565642 ((_ is ElementMatch!16143) lt!2343151))))

(assert (=> d!1944477 (= (validRegex!7879 lt!2343151) e!3777268)))

(declare-fun b!6203119 () Bool)

(assert (=> b!6203119 (= e!3777271 e!3777270)))

(assert (=> b!6203119 (= c!1119933 ((_ is Union!16143) lt!2343151))))

(assert (= (and d!1944477 (not res!2565642)) b!6203117))

(assert (= (and b!6203117 c!1119934) b!6203116))

(assert (= (and b!6203117 (not c!1119934)) b!6203119))

(assert (= (and b!6203116 res!2565644) b!6203123))

(assert (= (and b!6203119 c!1119933) b!6203124))

(assert (= (and b!6203119 (not c!1119933)) b!6203121))

(assert (= (and b!6203124 res!2565640) b!6203122))

(assert (= (and b!6203121 (not res!2565641)) b!6203118))

(assert (= (and b!6203118 res!2565643) b!6203120))

(assert (= (or b!6203122 b!6203120) bm!519302))

(assert (= (or b!6203124 b!6203118) bm!519303))

(assert (= (or b!6203123 bm!519303) bm!519301))

(declare-fun m!7035132 () Bool)

(assert (=> b!6203116 m!7035132))

(declare-fun m!7035134 () Bool)

(assert (=> bm!519301 m!7035134))

(declare-fun m!7035136 () Bool)

(assert (=> bm!519302 m!7035136))

(assert (=> d!1944279 d!1944477))

(assert (=> d!1944279 d!1944247))

(assert (=> d!1944279 d!1944251))

(assert (=> d!1944275 d!1944271))

(assert (=> d!1944275 d!1944265))

(declare-fun d!1944481 () Bool)

(assert (=> d!1944481 (= (matchR!8326 r!7292 s!2326) (matchRSpec!3244 r!7292 s!2326))))

(assert (=> d!1944481 true))

(declare-fun _$88!4796 () Unit!157903)

(assert (=> d!1944481 (= (choose!46103 r!7292 s!2326) _$88!4796)))

(declare-fun bs!1538833 () Bool)

(assert (= bs!1538833 d!1944481))

(assert (=> bs!1538833 m!7034348))

(assert (=> bs!1538833 m!7034346))

(assert (=> d!1944275 d!1944481))

(assert (=> d!1944275 d!1944183))

(declare-fun b!6203136 () Bool)

(declare-fun e!3777285 () Bool)

(declare-fun e!3777279 () Bool)

(assert (=> b!6203136 (= e!3777285 e!3777279)))

(declare-fun res!2565652 () Bool)

(assert (=> b!6203136 (= res!2565652 (not (nullable!6136 (reg!16472 (ite c!1119647 (regTwo!32799 r!7292) (regTwo!32798 r!7292))))))))

(assert (=> b!6203136 (=> (not res!2565652) (not e!3777279))))

(declare-fun b!6203137 () Bool)

(declare-fun e!3777282 () Bool)

(assert (=> b!6203137 (= e!3777282 e!3777285)))

(declare-fun c!1119940 () Bool)

(assert (=> b!6203137 (= c!1119940 ((_ is Star!16143) (ite c!1119647 (regTwo!32799 r!7292) (regTwo!32798 r!7292))))))

(declare-fun b!6203138 () Bool)

(declare-fun e!3777283 () Bool)

(declare-fun e!3777281 () Bool)

(assert (=> b!6203138 (= e!3777283 e!3777281)))

(declare-fun res!2565651 () Bool)

(assert (=> b!6203138 (=> (not res!2565651) (not e!3777281))))

(declare-fun call!519312 () Bool)

(assert (=> b!6203138 (= res!2565651 call!519312)))

(declare-fun b!6203140 () Bool)

(declare-fun call!519311 () Bool)

(assert (=> b!6203140 (= e!3777281 call!519311)))

(declare-fun bm!519306 () Bool)

(declare-fun c!1119939 () Bool)

(declare-fun call!519313 () Bool)

(assert (=> bm!519306 (= call!519313 (validRegex!7879 (ite c!1119940 (reg!16472 (ite c!1119647 (regTwo!32799 r!7292) (regTwo!32798 r!7292))) (ite c!1119939 (regOne!32799 (ite c!1119647 (regTwo!32799 r!7292) (regTwo!32798 r!7292))) (regOne!32798 (ite c!1119647 (regTwo!32799 r!7292) (regTwo!32798 r!7292)))))))))

(declare-fun b!6203141 () Bool)

(declare-fun res!2565649 () Bool)

(assert (=> b!6203141 (=> res!2565649 e!3777283)))

(assert (=> b!6203141 (= res!2565649 (not ((_ is Concat!24988) (ite c!1119647 (regTwo!32799 r!7292) (regTwo!32798 r!7292)))))))

(declare-fun e!3777284 () Bool)

(assert (=> b!6203141 (= e!3777284 e!3777283)))

(declare-fun bm!519307 () Bool)

(assert (=> bm!519307 (= call!519311 (validRegex!7879 (ite c!1119939 (regTwo!32799 (ite c!1119647 (regTwo!32799 r!7292) (regTwo!32798 r!7292))) (regTwo!32798 (ite c!1119647 (regTwo!32799 r!7292) (regTwo!32798 r!7292))))))))

(declare-fun b!6203142 () Bool)

(declare-fun e!3777280 () Bool)

(assert (=> b!6203142 (= e!3777280 call!519311)))

(declare-fun bm!519308 () Bool)

(assert (=> bm!519308 (= call!519312 call!519313)))

(declare-fun b!6203143 () Bool)

(assert (=> b!6203143 (= e!3777279 call!519313)))

(declare-fun b!6203144 () Bool)

(declare-fun res!2565648 () Bool)

(assert (=> b!6203144 (=> (not res!2565648) (not e!3777280))))

(assert (=> b!6203144 (= res!2565648 call!519312)))

(assert (=> b!6203144 (= e!3777284 e!3777280)))

(declare-fun d!1944483 () Bool)

(declare-fun res!2565650 () Bool)

(assert (=> d!1944483 (=> res!2565650 e!3777282)))

(assert (=> d!1944483 (= res!2565650 ((_ is ElementMatch!16143) (ite c!1119647 (regTwo!32799 r!7292) (regTwo!32798 r!7292))))))

(assert (=> d!1944483 (= (validRegex!7879 (ite c!1119647 (regTwo!32799 r!7292) (regTwo!32798 r!7292))) e!3777282)))

(declare-fun b!6203139 () Bool)

(assert (=> b!6203139 (= e!3777285 e!3777284)))

(assert (=> b!6203139 (= c!1119939 ((_ is Union!16143) (ite c!1119647 (regTwo!32799 r!7292) (regTwo!32798 r!7292))))))

(assert (= (and d!1944483 (not res!2565650)) b!6203137))

(assert (= (and b!6203137 c!1119940) b!6203136))

(assert (= (and b!6203137 (not c!1119940)) b!6203139))

(assert (= (and b!6203136 res!2565652) b!6203143))

(assert (= (and b!6203139 c!1119939) b!6203144))

(assert (= (and b!6203139 (not c!1119939)) b!6203141))

(assert (= (and b!6203144 res!2565648) b!6203142))

(assert (= (and b!6203141 (not res!2565649)) b!6203138))

(assert (= (and b!6203138 res!2565651) b!6203140))

(assert (= (or b!6203142 b!6203140) bm!519307))

(assert (= (or b!6203144 b!6203138) bm!519308))

(assert (= (or b!6203143 bm!519308) bm!519306))

(declare-fun m!7035138 () Bool)

(assert (=> b!6203136 m!7035138))

(declare-fun m!7035140 () Bool)

(assert (=> bm!519306 m!7035140))

(declare-fun m!7035142 () Bool)

(assert (=> bm!519307 m!7035142))

(assert (=> bm!519129 d!1944483))

(assert (=> bm!519164 d!1944431))

(declare-fun d!1944485 () Bool)

(declare-fun c!1119941 () Bool)

(assert (=> d!1944485 (= c!1119941 (isEmpty!36601 (tail!11878 (t!378248 s!2326))))))

(declare-fun e!3777286 () Bool)

(assert (=> d!1944485 (= (matchZipper!2155 (derivationStepZipper!2109 lt!2343064 (head!12794 (t!378248 s!2326))) (tail!11878 (t!378248 s!2326))) e!3777286)))

(declare-fun b!6203145 () Bool)

(assert (=> b!6203145 (= e!3777286 (nullableZipper!1917 (derivationStepZipper!2109 lt!2343064 (head!12794 (t!378248 s!2326)))))))

(declare-fun b!6203146 () Bool)

(assert (=> b!6203146 (= e!3777286 (matchZipper!2155 (derivationStepZipper!2109 (derivationStepZipper!2109 lt!2343064 (head!12794 (t!378248 s!2326))) (head!12794 (tail!11878 (t!378248 s!2326)))) (tail!11878 (tail!11878 (t!378248 s!2326)))))))

(assert (= (and d!1944485 c!1119941) b!6203145))

(assert (= (and d!1944485 (not c!1119941)) b!6203146))

(assert (=> d!1944485 m!7034388))

(assert (=> d!1944485 m!7034844))

(assert (=> b!6203145 m!7034644))

(declare-fun m!7035144 () Bool)

(assert (=> b!6203145 m!7035144))

(assert (=> b!6203146 m!7034388))

(assert (=> b!6203146 m!7034848))

(assert (=> b!6203146 m!7034644))

(assert (=> b!6203146 m!7034848))

(declare-fun m!7035146 () Bool)

(assert (=> b!6203146 m!7035146))

(assert (=> b!6203146 m!7034388))

(assert (=> b!6203146 m!7034852))

(assert (=> b!6203146 m!7035146))

(assert (=> b!6203146 m!7034852))

(declare-fun m!7035148 () Bool)

(assert (=> b!6203146 m!7035148))

(assert (=> b!6202418 d!1944485))

(declare-fun bs!1538835 () Bool)

(declare-fun d!1944487 () Bool)

(assert (= bs!1538835 (and d!1944487 b!6201985)))

(declare-fun lambda!338977 () Int)

(assert (=> bs!1538835 (= (= (head!12794 (t!378248 s!2326)) (h!71054 s!2326)) (= lambda!338977 lambda!338903))))

(declare-fun bs!1538837 () Bool)

(assert (= bs!1538837 (and d!1944487 d!1944327)))

(assert (=> bs!1538837 (= lambda!338977 lambda!338967)))

(assert (=> d!1944487 true))

(assert (=> d!1944487 (= (derivationStepZipper!2109 lt!2343064 (head!12794 (t!378248 s!2326))) (flatMap!1648 lt!2343064 lambda!338977))))

(declare-fun bs!1538838 () Bool)

(assert (= bs!1538838 d!1944487))

(declare-fun m!7035150 () Bool)

(assert (=> bs!1538838 m!7035150))

(assert (=> b!6202418 d!1944487))

(assert (=> b!6202418 d!1944329))

(assert (=> b!6202418 d!1944331))

(assert (=> d!1944259 d!1944373))

(declare-fun d!1944489 () Bool)

(assert (=> d!1944489 (= (isEmpty!36598 (tail!11880 (unfocusZipperList!1564 zl!343))) ((_ is Nil!64604) (tail!11880 (unfocusZipperList!1564 zl!343))))))

(assert (=> b!6202393 d!1944489))

(declare-fun d!1944491 () Bool)

(assert (=> d!1944491 (= (tail!11880 (unfocusZipperList!1564 zl!343)) (t!378246 (unfocusZipperList!1564 zl!343)))))

(assert (=> b!6202393 d!1944491))

(declare-fun b!6203147 () Bool)

(declare-fun e!3777293 () Bool)

(declare-fun e!3777287 () Bool)

(assert (=> b!6203147 (= e!3777293 e!3777287)))

(declare-fun res!2565657 () Bool)

(assert (=> b!6203147 (= res!2565657 (not (nullable!6136 (reg!16472 (ite c!1119648 (reg!16472 r!7292) (ite c!1119647 (regOne!32799 r!7292) (regOne!32798 r!7292)))))))))

(assert (=> b!6203147 (=> (not res!2565657) (not e!3777287))))

(declare-fun b!6203148 () Bool)

(declare-fun e!3777290 () Bool)

(assert (=> b!6203148 (= e!3777290 e!3777293)))

(declare-fun c!1119943 () Bool)

(assert (=> b!6203148 (= c!1119943 ((_ is Star!16143) (ite c!1119648 (reg!16472 r!7292) (ite c!1119647 (regOne!32799 r!7292) (regOne!32798 r!7292)))))))

(declare-fun b!6203149 () Bool)

(declare-fun e!3777291 () Bool)

(declare-fun e!3777289 () Bool)

(assert (=> b!6203149 (= e!3777291 e!3777289)))

(declare-fun res!2565656 () Bool)

(assert (=> b!6203149 (=> (not res!2565656) (not e!3777289))))

(declare-fun call!519315 () Bool)

(assert (=> b!6203149 (= res!2565656 call!519315)))

(declare-fun b!6203151 () Bool)

(declare-fun call!519314 () Bool)

(assert (=> b!6203151 (= e!3777289 call!519314)))

(declare-fun bm!519309 () Bool)

(declare-fun call!519316 () Bool)

(declare-fun c!1119942 () Bool)

(assert (=> bm!519309 (= call!519316 (validRegex!7879 (ite c!1119943 (reg!16472 (ite c!1119648 (reg!16472 r!7292) (ite c!1119647 (regOne!32799 r!7292) (regOne!32798 r!7292)))) (ite c!1119942 (regOne!32799 (ite c!1119648 (reg!16472 r!7292) (ite c!1119647 (regOne!32799 r!7292) (regOne!32798 r!7292)))) (regOne!32798 (ite c!1119648 (reg!16472 r!7292) (ite c!1119647 (regOne!32799 r!7292) (regOne!32798 r!7292))))))))))

(declare-fun b!6203152 () Bool)

(declare-fun res!2565654 () Bool)

(assert (=> b!6203152 (=> res!2565654 e!3777291)))

(assert (=> b!6203152 (= res!2565654 (not ((_ is Concat!24988) (ite c!1119648 (reg!16472 r!7292) (ite c!1119647 (regOne!32799 r!7292) (regOne!32798 r!7292))))))))

(declare-fun e!3777292 () Bool)

(assert (=> b!6203152 (= e!3777292 e!3777291)))

(declare-fun bm!519310 () Bool)

(assert (=> bm!519310 (= call!519314 (validRegex!7879 (ite c!1119942 (regTwo!32799 (ite c!1119648 (reg!16472 r!7292) (ite c!1119647 (regOne!32799 r!7292) (regOne!32798 r!7292)))) (regTwo!32798 (ite c!1119648 (reg!16472 r!7292) (ite c!1119647 (regOne!32799 r!7292) (regOne!32798 r!7292)))))))))

(declare-fun b!6203153 () Bool)

(declare-fun e!3777288 () Bool)

(assert (=> b!6203153 (= e!3777288 call!519314)))

(declare-fun bm!519311 () Bool)

(assert (=> bm!519311 (= call!519315 call!519316)))

(declare-fun b!6203154 () Bool)

(assert (=> b!6203154 (= e!3777287 call!519316)))

(declare-fun b!6203155 () Bool)

(declare-fun res!2565653 () Bool)

(assert (=> b!6203155 (=> (not res!2565653) (not e!3777288))))

(assert (=> b!6203155 (= res!2565653 call!519315)))

(assert (=> b!6203155 (= e!3777292 e!3777288)))

(declare-fun d!1944493 () Bool)

(declare-fun res!2565655 () Bool)

(assert (=> d!1944493 (=> res!2565655 e!3777290)))

(assert (=> d!1944493 (= res!2565655 ((_ is ElementMatch!16143) (ite c!1119648 (reg!16472 r!7292) (ite c!1119647 (regOne!32799 r!7292) (regOne!32798 r!7292)))))))

(assert (=> d!1944493 (= (validRegex!7879 (ite c!1119648 (reg!16472 r!7292) (ite c!1119647 (regOne!32799 r!7292) (regOne!32798 r!7292)))) e!3777290)))

(declare-fun b!6203150 () Bool)

(assert (=> b!6203150 (= e!3777293 e!3777292)))

(assert (=> b!6203150 (= c!1119942 ((_ is Union!16143) (ite c!1119648 (reg!16472 r!7292) (ite c!1119647 (regOne!32799 r!7292) (regOne!32798 r!7292)))))))

(assert (= (and d!1944493 (not res!2565655)) b!6203148))

(assert (= (and b!6203148 c!1119943) b!6203147))

(assert (= (and b!6203148 (not c!1119943)) b!6203150))

(assert (= (and b!6203147 res!2565657) b!6203154))

(assert (= (and b!6203150 c!1119942) b!6203155))

(assert (= (and b!6203150 (not c!1119942)) b!6203152))

(assert (= (and b!6203155 res!2565653) b!6203153))

(assert (= (and b!6203152 (not res!2565654)) b!6203149))

(assert (= (and b!6203149 res!2565656) b!6203151))

(assert (= (or b!6203153 b!6203151) bm!519310))

(assert (= (or b!6203155 b!6203149) bm!519311))

(assert (= (or b!6203154 bm!519311) bm!519309))

(declare-fun m!7035152 () Bool)

(assert (=> b!6203147 m!7035152))

(declare-fun m!7035154 () Bool)

(assert (=> bm!519309 m!7035154))

(declare-fun m!7035156 () Bool)

(assert (=> bm!519310 m!7035156))

(assert (=> bm!519128 d!1944493))

(declare-fun bs!1538843 () Bool)

(declare-fun d!1944495 () Bool)

(assert (= bs!1538843 (and d!1944495 d!1944311)))

(declare-fun lambda!338978 () Int)

(assert (=> bs!1538843 (= lambda!338978 lambda!338964)))

(declare-fun bs!1538844 () Bool)

(assert (= bs!1538844 (and d!1944495 d!1944425)))

(assert (=> bs!1538844 (= lambda!338978 lambda!338973)))

(assert (=> d!1944495 (= (nullableZipper!1917 ((_ map or) lt!2343071 lt!2343064)) (exists!2473 ((_ map or) lt!2343071 lt!2343064) lambda!338978))))

(declare-fun bs!1538845 () Bool)

(assert (= bs!1538845 d!1944495))

(declare-fun m!7035158 () Bool)

(assert (=> bs!1538845 m!7035158))

(assert (=> b!6202056 d!1944495))

(assert (=> b!6202561 d!1944459))

(declare-fun d!1944497 () Bool)

(assert (=> d!1944497 (= (nullable!6136 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292)))) (nullableFct!2092 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292)))))))

(declare-fun bs!1538846 () Bool)

(assert (= bs!1538846 d!1944497))

(declare-fun m!7035160 () Bool)

(assert (=> bs!1538846 m!7035160))

(assert (=> b!6202679 d!1944497))

(declare-fun d!1944499 () Bool)

(assert (=> d!1944499 (= (nullable!6136 (h!71052 (exprs!6027 lt!2343076))) (nullableFct!2092 (h!71052 (exprs!6027 lt!2343076))))))

(declare-fun bs!1538847 () Bool)

(assert (= bs!1538847 d!1944499))

(declare-fun m!7035162 () Bool)

(assert (=> bs!1538847 m!7035162))

(assert (=> b!6202655 d!1944499))

(declare-fun b!6203156 () Bool)

(declare-fun e!3777297 () (InoxSet Context!11054))

(assert (=> b!6203156 (= e!3777297 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6203157 () Bool)

(declare-fun e!3777296 () (InoxSet Context!11054))

(declare-fun call!519321 () (InoxSet Context!11054))

(assert (=> b!6203157 (= e!3777296 call!519321)))

(declare-fun call!519322 () List!64728)

(declare-fun c!1119945 () Bool)

(declare-fun c!1119946 () Bool)

(declare-fun bm!519312 () Bool)

(assert (=> bm!519312 (= call!519322 ($colon$colon!2012 (exprs!6027 (ite (or c!1119806 c!1119807) lt!2343076 (Context!11055 call!519199))) (ite (or c!1119945 c!1119946) (regTwo!32798 (ite c!1119806 (regTwo!32799 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119807 (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119808 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))) (reg!16472 (regTwo!32798 (regOne!32798 r!7292))))))) (ite c!1119806 (regTwo!32799 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119807 (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119808 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))) (reg!16472 (regTwo!32798 (regOne!32798 r!7292)))))))))))

(declare-fun b!6203158 () Bool)

(declare-fun e!3777299 () (InoxSet Context!11054))

(assert (=> b!6203158 (= e!3777299 e!3777296)))

(assert (=> b!6203158 (= c!1119946 ((_ is Concat!24988) (ite c!1119806 (regTwo!32799 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119807 (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119808 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))) (reg!16472 (regTwo!32798 (regOne!32798 r!7292))))))))))

(declare-fun b!6203159 () Bool)

(declare-fun call!519319 () (InoxSet Context!11054))

(declare-fun call!519318 () (InoxSet Context!11054))

(assert (=> b!6203159 (= e!3777299 ((_ map or) call!519319 call!519318))))

(declare-fun c!1119947 () Bool)

(declare-fun b!6203160 () Bool)

(assert (=> b!6203160 (= c!1119947 ((_ is Star!16143) (ite c!1119806 (regTwo!32799 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119807 (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119808 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))) (reg!16472 (regTwo!32798 (regOne!32798 r!7292))))))))))

(assert (=> b!6203160 (= e!3777296 e!3777297)))

(declare-fun d!1944501 () Bool)

(declare-fun c!1119948 () Bool)

(assert (=> d!1944501 (= c!1119948 (and ((_ is ElementMatch!16143) (ite c!1119806 (regTwo!32799 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119807 (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119808 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))) (reg!16472 (regTwo!32798 (regOne!32798 r!7292))))))) (= (c!1119610 (ite c!1119806 (regTwo!32799 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119807 (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119808 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))) (reg!16472 (regTwo!32798 (regOne!32798 r!7292))))))) (h!71054 s!2326))))))

(declare-fun e!3777294 () (InoxSet Context!11054))

(assert (=> d!1944501 (= (derivationStepZipperDown!1391 (ite c!1119806 (regTwo!32799 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119807 (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119808 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))) (reg!16472 (regTwo!32798 (regOne!32798 r!7292)))))) (ite (or c!1119806 c!1119807) lt!2343076 (Context!11055 call!519199)) (h!71054 s!2326)) e!3777294)))

(declare-fun call!519320 () (InoxSet Context!11054))

(declare-fun bm!519313 () Bool)

(declare-fun call!519317 () List!64728)

(declare-fun c!1119944 () Bool)

(assert (=> bm!519313 (= call!519320 (derivationStepZipperDown!1391 (ite c!1119944 (regTwo!32799 (ite c!1119806 (regTwo!32799 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119807 (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119808 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))) (reg!16472 (regTwo!32798 (regOne!32798 r!7292))))))) (ite c!1119945 (regTwo!32798 (ite c!1119806 (regTwo!32799 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119807 (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119808 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))) (reg!16472 (regTwo!32798 (regOne!32798 r!7292))))))) (ite c!1119946 (regOne!32798 (ite c!1119806 (regTwo!32799 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119807 (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119808 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))) (reg!16472 (regTwo!32798 (regOne!32798 r!7292))))))) (reg!16472 (ite c!1119806 (regTwo!32799 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119807 (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119808 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))) (reg!16472 (regTwo!32798 (regOne!32798 r!7292)))))))))) (ite (or c!1119944 c!1119945) (ite (or c!1119806 c!1119807) lt!2343076 (Context!11055 call!519199)) (Context!11055 call!519317)) (h!71054 s!2326)))))

(declare-fun bm!519314 () Bool)

(assert (=> bm!519314 (= call!519321 call!519318)))

(declare-fun b!6203161 () Bool)

(declare-fun e!3777298 () (InoxSet Context!11054))

(assert (=> b!6203161 (= e!3777294 e!3777298)))

(assert (=> b!6203161 (= c!1119944 ((_ is Union!16143) (ite c!1119806 (regTwo!32799 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119807 (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119808 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))) (reg!16472 (regTwo!32798 (regOne!32798 r!7292))))))))))

(declare-fun b!6203162 () Bool)

(assert (=> b!6203162 (= e!3777294 (store ((as const (Array Context!11054 Bool)) false) (ite (or c!1119806 c!1119807) lt!2343076 (Context!11055 call!519199)) true))))

(declare-fun b!6203163 () Bool)

(declare-fun e!3777295 () Bool)

(assert (=> b!6203163 (= e!3777295 (nullable!6136 (regOne!32798 (ite c!1119806 (regTwo!32799 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119807 (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119808 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))) (reg!16472 (regTwo!32798 (regOne!32798 r!7292)))))))))))

(declare-fun bm!519315 () Bool)

(assert (=> bm!519315 (= call!519319 (derivationStepZipperDown!1391 (ite c!1119944 (regOne!32799 (ite c!1119806 (regTwo!32799 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119807 (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119808 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))) (reg!16472 (regTwo!32798 (regOne!32798 r!7292))))))) (regOne!32798 (ite c!1119806 (regTwo!32799 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119807 (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119808 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))) (reg!16472 (regTwo!32798 (regOne!32798 r!7292)))))))) (ite c!1119944 (ite (or c!1119806 c!1119807) lt!2343076 (Context!11055 call!519199)) (Context!11055 call!519322)) (h!71054 s!2326)))))

(declare-fun b!6203164 () Bool)

(assert (=> b!6203164 (= e!3777297 call!519321)))

(declare-fun bm!519316 () Bool)

(assert (=> bm!519316 (= call!519318 call!519320)))

(declare-fun b!6203165 () Bool)

(assert (=> b!6203165 (= c!1119945 e!3777295)))

(declare-fun res!2565658 () Bool)

(assert (=> b!6203165 (=> (not res!2565658) (not e!3777295))))

(assert (=> b!6203165 (= res!2565658 ((_ is Concat!24988) (ite c!1119806 (regTwo!32799 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119807 (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (ite c!1119808 (regOne!32798 (regTwo!32798 (regOne!32798 r!7292))) (reg!16472 (regTwo!32798 (regOne!32798 r!7292))))))))))

(assert (=> b!6203165 (= e!3777298 e!3777299)))

(declare-fun b!6203166 () Bool)

(assert (=> b!6203166 (= e!3777298 ((_ map or) call!519319 call!519320))))

(declare-fun bm!519317 () Bool)

(assert (=> bm!519317 (= call!519317 call!519322)))

(assert (= (and d!1944501 c!1119948) b!6203162))

(assert (= (and d!1944501 (not c!1119948)) b!6203161))

(assert (= (and b!6203161 c!1119944) b!6203166))

(assert (= (and b!6203161 (not c!1119944)) b!6203165))

(assert (= (and b!6203165 res!2565658) b!6203163))

(assert (= (and b!6203165 c!1119945) b!6203159))

(assert (= (and b!6203165 (not c!1119945)) b!6203158))

(assert (= (and b!6203158 c!1119946) b!6203157))

(assert (= (and b!6203158 (not c!1119946)) b!6203160))

(assert (= (and b!6203160 c!1119947) b!6203164))

(assert (= (and b!6203160 (not c!1119947)) b!6203156))

(assert (= (or b!6203157 b!6203164) bm!519317))

(assert (= (or b!6203157 b!6203164) bm!519314))

(assert (= (or b!6203159 bm!519317) bm!519312))

(assert (= (or b!6203159 bm!519314) bm!519316))

(assert (= (or b!6203166 bm!519316) bm!519313))

(assert (= (or b!6203166 b!6203159) bm!519315))

(declare-fun m!7035170 () Bool)

(assert (=> bm!519313 m!7035170))

(declare-fun m!7035172 () Bool)

(assert (=> b!6203163 m!7035172))

(declare-fun m!7035176 () Bool)

(assert (=> bm!519315 m!7035176))

(declare-fun m!7035180 () Bool)

(assert (=> bm!519312 m!7035180))

(declare-fun m!7035182 () Bool)

(assert (=> b!6203162 m!7035182))

(assert (=> bm!519195 d!1944501))

(declare-fun b!6203176 () Bool)

(declare-fun e!3777310 () (InoxSet Context!11054))

(assert (=> b!6203176 (= e!3777310 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6203177 () Bool)

(declare-fun e!3777309 () (InoxSet Context!11054))

(declare-fun call!519330 () (InoxSet Context!11054))

(assert (=> b!6203177 (= e!3777309 call!519330)))

(declare-fun c!1119952 () Bool)

(declare-fun call!519331 () List!64728)

(declare-fun bm!519321 () Bool)

(declare-fun c!1119953 () Bool)

(assert (=> bm!519321 (= call!519331 ($colon$colon!2012 (exprs!6027 (ite c!1119801 lt!2343073 (Context!11055 call!519198))) (ite (or c!1119952 c!1119953) (regTwo!32798 (ite c!1119801 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292))))) (ite c!1119801 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292)))))))))

(declare-fun b!6203178 () Bool)

(declare-fun e!3777312 () (InoxSet Context!11054))

(assert (=> b!6203178 (= e!3777312 e!3777309)))

(assert (=> b!6203178 (= c!1119953 ((_ is Concat!24988) (ite c!1119801 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292))))))))

(declare-fun b!6203179 () Bool)

(declare-fun call!519328 () (InoxSet Context!11054))

(declare-fun call!519327 () (InoxSet Context!11054))

(assert (=> b!6203179 (= e!3777312 ((_ map or) call!519328 call!519327))))

(declare-fun b!6203180 () Bool)

(declare-fun c!1119954 () Bool)

(assert (=> b!6203180 (= c!1119954 ((_ is Star!16143) (ite c!1119801 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292))))))))

(assert (=> b!6203180 (= e!3777309 e!3777310)))

(declare-fun d!1944505 () Bool)

(declare-fun c!1119955 () Bool)

(assert (=> d!1944505 (= c!1119955 (and ((_ is ElementMatch!16143) (ite c!1119801 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292))))) (= (c!1119610 (ite c!1119801 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292))))) (h!71054 s!2326))))))

(declare-fun e!3777307 () (InoxSet Context!11054))

(assert (=> d!1944505 (= (derivationStepZipperDown!1391 (ite c!1119801 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292)))) (ite c!1119801 lt!2343073 (Context!11055 call!519198)) (h!71054 s!2326)) e!3777307)))

(declare-fun bm!519322 () Bool)

(declare-fun call!519329 () (InoxSet Context!11054))

(declare-fun c!1119951 () Bool)

(declare-fun call!519326 () List!64728)

(assert (=> bm!519322 (= call!519329 (derivationStepZipperDown!1391 (ite c!1119951 (regTwo!32799 (ite c!1119801 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292))))) (ite c!1119952 (regTwo!32798 (ite c!1119801 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292))))) (ite c!1119953 (regOne!32798 (ite c!1119801 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292))))) (reg!16472 (ite c!1119801 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292)))))))) (ite (or c!1119951 c!1119952) (ite c!1119801 lt!2343073 (Context!11055 call!519198)) (Context!11055 call!519326)) (h!71054 s!2326)))))

(declare-fun bm!519323 () Bool)

(assert (=> bm!519323 (= call!519330 call!519327)))

(declare-fun b!6203181 () Bool)

(declare-fun e!3777311 () (InoxSet Context!11054))

(assert (=> b!6203181 (= e!3777307 e!3777311)))

(assert (=> b!6203181 (= c!1119951 ((_ is Union!16143) (ite c!1119801 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292))))))))

(declare-fun b!6203182 () Bool)

(assert (=> b!6203182 (= e!3777307 (store ((as const (Array Context!11054 Bool)) false) (ite c!1119801 lt!2343073 (Context!11055 call!519198)) true))))

(declare-fun b!6203183 () Bool)

(declare-fun e!3777308 () Bool)

(assert (=> b!6203183 (= e!3777308 (nullable!6136 (regOne!32798 (ite c!1119801 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292)))))))))

(declare-fun bm!519324 () Bool)

(assert (=> bm!519324 (= call!519328 (derivationStepZipperDown!1391 (ite c!1119951 (regOne!32799 (ite c!1119801 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292))))) (regOne!32798 (ite c!1119801 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292)))))) (ite c!1119951 (ite c!1119801 lt!2343073 (Context!11055 call!519198)) (Context!11055 call!519331)) (h!71054 s!2326)))))

(declare-fun b!6203184 () Bool)

(assert (=> b!6203184 (= e!3777310 call!519330)))

(declare-fun bm!519325 () Bool)

(assert (=> bm!519325 (= call!519327 call!519329)))

(declare-fun b!6203185 () Bool)

(assert (=> b!6203185 (= c!1119952 e!3777308)))

(declare-fun res!2565664 () Bool)

(assert (=> b!6203185 (=> (not res!2565664) (not e!3777308))))

(assert (=> b!6203185 (= res!2565664 ((_ is Concat!24988) (ite c!1119801 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292))))))))

(assert (=> b!6203185 (= e!3777311 e!3777312)))

(declare-fun b!6203186 () Bool)

(assert (=> b!6203186 (= e!3777311 ((_ map or) call!519328 call!519329))))

(declare-fun bm!519326 () Bool)

(assert (=> bm!519326 (= call!519326 call!519331)))

(assert (= (and d!1944505 c!1119955) b!6203182))

(assert (= (and d!1944505 (not c!1119955)) b!6203181))

(assert (= (and b!6203181 c!1119951) b!6203186))

(assert (= (and b!6203181 (not c!1119951)) b!6203185))

(assert (= (and b!6203185 res!2565664) b!6203183))

(assert (= (and b!6203185 c!1119952) b!6203179))

(assert (= (and b!6203185 (not c!1119952)) b!6203178))

(assert (= (and b!6203178 c!1119953) b!6203177))

(assert (= (and b!6203178 (not c!1119953)) b!6203180))

(assert (= (and b!6203180 c!1119954) b!6203184))

(assert (= (and b!6203180 (not c!1119954)) b!6203176))

(assert (= (or b!6203177 b!6203184) bm!519326))

(assert (= (or b!6203177 b!6203184) bm!519323))

(assert (= (or b!6203179 bm!519326) bm!519321))

(assert (= (or b!6203179 bm!519323) bm!519325))

(assert (= (or b!6203186 bm!519325) bm!519322))

(assert (= (or b!6203186 b!6203179) bm!519324))

(declare-fun m!7035188 () Bool)

(assert (=> bm!519322 m!7035188))

(declare-fun m!7035190 () Bool)

(assert (=> b!6203183 m!7035190))

(declare-fun m!7035192 () Bool)

(assert (=> bm!519324 m!7035192))

(declare-fun m!7035194 () Bool)

(assert (=> bm!519321 m!7035194))

(declare-fun m!7035196 () Bool)

(assert (=> b!6203182 m!7035196))

(assert (=> bm!519191 d!1944505))

(declare-fun bs!1538849 () Bool)

(declare-fun b!6203195 () Bool)

(assert (= bs!1538849 (and b!6203195 b!6201983)))

(declare-fun lambda!338979 () Int)

(assert (=> bs!1538849 (not (= lambda!338979 lambda!338902))))

(declare-fun bs!1538850 () Bool)

(assert (= bs!1538850 (and b!6203195 d!1944377)))

(assert (=> bs!1538850 (not (= lambda!338979 lambda!338971))))

(declare-fun bs!1538851 () Bool)

(assert (= bs!1538851 (and b!6203195 d!1944205)))

(assert (=> bs!1538851 (not (= lambda!338979 lambda!338927))))

(assert (=> bs!1538849 (not (= lambda!338979 lambda!338901))))

(declare-fun bs!1538852 () Bool)

(assert (= bs!1538852 (and b!6203195 b!6202471)))

(assert (=> bs!1538852 (= (and (= (reg!16472 (regTwo!32799 r!7292)) (reg!16472 r!7292)) (= (regTwo!32799 r!7292) r!7292)) (= lambda!338979 lambda!338956))))

(declare-fun bs!1538853 () Bool)

(assert (= bs!1538853 (and b!6203195 d!1944225)))

(assert (=> bs!1538853 (not (= lambda!338979 lambda!338936))))

(assert (=> bs!1538853 (not (= lambda!338979 lambda!338935))))

(declare-fun bs!1538854 () Bool)

(assert (= bs!1538854 (and b!6203195 b!6202466)))

(assert (=> bs!1538854 (not (= lambda!338979 lambda!338958))))

(assert (=> b!6203195 true))

(assert (=> b!6203195 true))

(declare-fun bs!1538855 () Bool)

(declare-fun b!6203190 () Bool)

(assert (= bs!1538855 (and b!6203190 b!6201983)))

(declare-fun lambda!338980 () Int)

(assert (=> bs!1538855 (= (and (= (regOne!32798 (regTwo!32799 r!7292)) (regOne!32798 r!7292)) (= (regTwo!32798 (regTwo!32799 r!7292)) (regTwo!32798 r!7292))) (= lambda!338980 lambda!338902))))

(declare-fun bs!1538856 () Bool)

(assert (= bs!1538856 (and b!6203190 d!1944377)))

(assert (=> bs!1538856 (not (= lambda!338980 lambda!338971))))

(assert (=> bs!1538855 (not (= lambda!338980 lambda!338901))))

(declare-fun bs!1538857 () Bool)

(assert (= bs!1538857 (and b!6203190 b!6202471)))

(assert (=> bs!1538857 (not (= lambda!338980 lambda!338956))))

(declare-fun bs!1538858 () Bool)

(assert (= bs!1538858 (and b!6203190 d!1944225)))

(assert (=> bs!1538858 (= (and (= (regOne!32798 (regTwo!32799 r!7292)) (regOne!32798 r!7292)) (= (regTwo!32798 (regTwo!32799 r!7292)) (regTwo!32798 r!7292))) (= lambda!338980 lambda!338936))))

(assert (=> bs!1538858 (not (= lambda!338980 lambda!338935))))

(declare-fun bs!1538859 () Bool)

(assert (= bs!1538859 (and b!6203190 b!6202466)))

(assert (=> bs!1538859 (= (and (= (regOne!32798 (regTwo!32799 r!7292)) (regOne!32798 r!7292)) (= (regTwo!32798 (regTwo!32799 r!7292)) (regTwo!32798 r!7292))) (= lambda!338980 lambda!338958))))

(declare-fun bs!1538860 () Bool)

(assert (= bs!1538860 (and b!6203190 b!6203195)))

(assert (=> bs!1538860 (not (= lambda!338980 lambda!338979))))

(declare-fun bs!1538861 () Bool)

(assert (= bs!1538861 (and b!6203190 d!1944205)))

(assert (=> bs!1538861 (not (= lambda!338980 lambda!338927))))

(assert (=> b!6203190 true))

(assert (=> b!6203190 true))

(declare-fun bm!519327 () Bool)

(declare-fun call!519332 () Bool)

(declare-fun c!1119957 () Bool)

(assert (=> bm!519327 (= call!519332 (Exists!3213 (ite c!1119957 lambda!338979 lambda!338980)))))

(declare-fun b!6203187 () Bool)

(declare-fun c!1119958 () Bool)

(assert (=> b!6203187 (= c!1119958 ((_ is Union!16143) (regTwo!32799 r!7292)))))

(declare-fun e!3777319 () Bool)

(declare-fun e!3777318 () Bool)

(assert (=> b!6203187 (= e!3777319 e!3777318)))

(declare-fun b!6203188 () Bool)

(assert (=> b!6203188 (= e!3777319 (= s!2326 (Cons!64606 (c!1119610 (regTwo!32799 r!7292)) Nil!64606)))))

(declare-fun b!6203189 () Bool)

(declare-fun e!3777314 () Bool)

(declare-fun call!519333 () Bool)

(assert (=> b!6203189 (= e!3777314 call!519333)))

(declare-fun bm!519328 () Bool)

(assert (=> bm!519328 (= call!519333 (isEmpty!36601 s!2326))))

(declare-fun e!3777313 () Bool)

(assert (=> b!6203190 (= e!3777313 call!519332)))

(declare-fun d!1944511 () Bool)

(declare-fun c!1119959 () Bool)

(assert (=> d!1944511 (= c!1119959 ((_ is EmptyExpr!16143) (regTwo!32799 r!7292)))))

(assert (=> d!1944511 (= (matchRSpec!3244 (regTwo!32799 r!7292) s!2326) e!3777314)))

(declare-fun b!6203191 () Bool)

(declare-fun c!1119956 () Bool)

(assert (=> b!6203191 (= c!1119956 ((_ is ElementMatch!16143) (regTwo!32799 r!7292)))))

(declare-fun e!3777316 () Bool)

(assert (=> b!6203191 (= e!3777316 e!3777319)))

(declare-fun b!6203192 () Bool)

(declare-fun e!3777317 () Bool)

(assert (=> b!6203192 (= e!3777318 e!3777317)))

(declare-fun res!2565666 () Bool)

(assert (=> b!6203192 (= res!2565666 (matchRSpec!3244 (regOne!32799 (regTwo!32799 r!7292)) s!2326))))

(assert (=> b!6203192 (=> res!2565666 e!3777317)))

(declare-fun b!6203193 () Bool)

(assert (=> b!6203193 (= e!3777314 e!3777316)))

(declare-fun res!2565667 () Bool)

(assert (=> b!6203193 (= res!2565667 (not ((_ is EmptyLang!16143) (regTwo!32799 r!7292))))))

(assert (=> b!6203193 (=> (not res!2565667) (not e!3777316))))

(declare-fun b!6203194 () Bool)

(assert (=> b!6203194 (= e!3777318 e!3777313)))

(assert (=> b!6203194 (= c!1119957 ((_ is Star!16143) (regTwo!32799 r!7292)))))

(declare-fun e!3777315 () Bool)

(assert (=> b!6203195 (= e!3777315 call!519332)))

(declare-fun b!6203196 () Bool)

(assert (=> b!6203196 (= e!3777317 (matchRSpec!3244 (regTwo!32799 (regTwo!32799 r!7292)) s!2326))))

(declare-fun b!6203197 () Bool)

(declare-fun res!2565665 () Bool)

(assert (=> b!6203197 (=> res!2565665 e!3777315)))

(assert (=> b!6203197 (= res!2565665 call!519333)))

(assert (=> b!6203197 (= e!3777313 e!3777315)))

(assert (= (and d!1944511 c!1119959) b!6203189))

(assert (= (and d!1944511 (not c!1119959)) b!6203193))

(assert (= (and b!6203193 res!2565667) b!6203191))

(assert (= (and b!6203191 c!1119956) b!6203188))

(assert (= (and b!6203191 (not c!1119956)) b!6203187))

(assert (= (and b!6203187 c!1119958) b!6203192))

(assert (= (and b!6203187 (not c!1119958)) b!6203194))

(assert (= (and b!6203192 (not res!2565666)) b!6203196))

(assert (= (and b!6203194 c!1119957) b!6203197))

(assert (= (and b!6203194 (not c!1119957)) b!6203190))

(assert (= (and b!6203197 (not res!2565665)) b!6203195))

(assert (= (or b!6203195 b!6203190) bm!519327))

(assert (= (or b!6203189 b!6203197) bm!519328))

(declare-fun m!7035198 () Bool)

(assert (=> bm!519327 m!7035198))

(assert (=> bm!519328 m!7034664))

(declare-fun m!7035200 () Bool)

(assert (=> b!6203192 m!7035200))

(declare-fun m!7035202 () Bool)

(assert (=> b!6203196 m!7035202))

(assert (=> b!6202472 d!1944511))

(assert (=> b!6202595 d!1944299))

(assert (=> b!6202650 d!1944291))

(declare-fun bs!1538862 () Bool)

(declare-fun b!6203206 () Bool)

(assert (= bs!1538862 (and b!6203206 b!6201983)))

(declare-fun lambda!338981 () Int)

(assert (=> bs!1538862 (not (= lambda!338981 lambda!338902))))

(declare-fun bs!1538863 () Bool)

(assert (= bs!1538863 (and b!6203206 d!1944377)))

(assert (=> bs!1538863 (not (= lambda!338981 lambda!338971))))

(declare-fun bs!1538864 () Bool)

(assert (= bs!1538864 (and b!6203206 b!6203190)))

(assert (=> bs!1538864 (not (= lambda!338981 lambda!338980))))

(assert (=> bs!1538862 (not (= lambda!338981 lambda!338901))))

(declare-fun bs!1538865 () Bool)

(assert (= bs!1538865 (and b!6203206 b!6202471)))

(assert (=> bs!1538865 (= (and (= (reg!16472 (regOne!32799 r!7292)) (reg!16472 r!7292)) (= (regOne!32799 r!7292) r!7292)) (= lambda!338981 lambda!338956))))

(declare-fun bs!1538866 () Bool)

(assert (= bs!1538866 (and b!6203206 d!1944225)))

(assert (=> bs!1538866 (not (= lambda!338981 lambda!338936))))

(assert (=> bs!1538866 (not (= lambda!338981 lambda!338935))))

(declare-fun bs!1538867 () Bool)

(assert (= bs!1538867 (and b!6203206 b!6202466)))

(assert (=> bs!1538867 (not (= lambda!338981 lambda!338958))))

(declare-fun bs!1538868 () Bool)

(assert (= bs!1538868 (and b!6203206 b!6203195)))

(assert (=> bs!1538868 (= (and (= (reg!16472 (regOne!32799 r!7292)) (reg!16472 (regTwo!32799 r!7292))) (= (regOne!32799 r!7292) (regTwo!32799 r!7292))) (= lambda!338981 lambda!338979))))

(declare-fun bs!1538869 () Bool)

(assert (= bs!1538869 (and b!6203206 d!1944205)))

(assert (=> bs!1538869 (not (= lambda!338981 lambda!338927))))

(assert (=> b!6203206 true))

(assert (=> b!6203206 true))

(declare-fun bs!1538870 () Bool)

(declare-fun b!6203201 () Bool)

(assert (= bs!1538870 (and b!6203201 b!6201983)))

(declare-fun lambda!338984 () Int)

(assert (=> bs!1538870 (= (and (= (regOne!32798 (regOne!32799 r!7292)) (regOne!32798 r!7292)) (= (regTwo!32798 (regOne!32799 r!7292)) (regTwo!32798 r!7292))) (= lambda!338984 lambda!338902))))

(declare-fun bs!1538871 () Bool)

(assert (= bs!1538871 (and b!6203201 d!1944377)))

(assert (=> bs!1538871 (not (= lambda!338984 lambda!338971))))

(declare-fun bs!1538872 () Bool)

(assert (= bs!1538872 (and b!6203201 b!6203206)))

(assert (=> bs!1538872 (not (= lambda!338984 lambda!338981))))

(declare-fun bs!1538873 () Bool)

(assert (= bs!1538873 (and b!6203201 b!6203190)))

(assert (=> bs!1538873 (= (and (= (regOne!32798 (regOne!32799 r!7292)) (regOne!32798 (regTwo!32799 r!7292))) (= (regTwo!32798 (regOne!32799 r!7292)) (regTwo!32798 (regTwo!32799 r!7292)))) (= lambda!338984 lambda!338980))))

(assert (=> bs!1538870 (not (= lambda!338984 lambda!338901))))

(declare-fun bs!1538874 () Bool)

(assert (= bs!1538874 (and b!6203201 b!6202471)))

(assert (=> bs!1538874 (not (= lambda!338984 lambda!338956))))

(declare-fun bs!1538875 () Bool)

(assert (= bs!1538875 (and b!6203201 d!1944225)))

(assert (=> bs!1538875 (= (and (= (regOne!32798 (regOne!32799 r!7292)) (regOne!32798 r!7292)) (= (regTwo!32798 (regOne!32799 r!7292)) (regTwo!32798 r!7292))) (= lambda!338984 lambda!338936))))

(assert (=> bs!1538875 (not (= lambda!338984 lambda!338935))))

(declare-fun bs!1538876 () Bool)

(assert (= bs!1538876 (and b!6203201 b!6202466)))

(assert (=> bs!1538876 (= (and (= (regOne!32798 (regOne!32799 r!7292)) (regOne!32798 r!7292)) (= (regTwo!32798 (regOne!32799 r!7292)) (regTwo!32798 r!7292))) (= lambda!338984 lambda!338958))))

(declare-fun bs!1538877 () Bool)

(assert (= bs!1538877 (and b!6203201 b!6203195)))

(assert (=> bs!1538877 (not (= lambda!338984 lambda!338979))))

(declare-fun bs!1538878 () Bool)

(assert (= bs!1538878 (and b!6203201 d!1944205)))

(assert (=> bs!1538878 (not (= lambda!338984 lambda!338927))))

(assert (=> b!6203201 true))

(assert (=> b!6203201 true))

(declare-fun call!519334 () Bool)

(declare-fun c!1119961 () Bool)

(declare-fun bm!519329 () Bool)

(assert (=> bm!519329 (= call!519334 (Exists!3213 (ite c!1119961 lambda!338981 lambda!338984)))))

(declare-fun b!6203198 () Bool)

(declare-fun c!1119962 () Bool)

(assert (=> b!6203198 (= c!1119962 ((_ is Union!16143) (regOne!32799 r!7292)))))

(declare-fun e!3777326 () Bool)

(declare-fun e!3777325 () Bool)

(assert (=> b!6203198 (= e!3777326 e!3777325)))

(declare-fun b!6203199 () Bool)

(assert (=> b!6203199 (= e!3777326 (= s!2326 (Cons!64606 (c!1119610 (regOne!32799 r!7292)) Nil!64606)))))

(declare-fun b!6203200 () Bool)

(declare-fun e!3777321 () Bool)

(declare-fun call!519335 () Bool)

(assert (=> b!6203200 (= e!3777321 call!519335)))

(declare-fun bm!519330 () Bool)

(assert (=> bm!519330 (= call!519335 (isEmpty!36601 s!2326))))

(declare-fun e!3777320 () Bool)

(assert (=> b!6203201 (= e!3777320 call!519334)))

(declare-fun d!1944513 () Bool)

(declare-fun c!1119963 () Bool)

(assert (=> d!1944513 (= c!1119963 ((_ is EmptyExpr!16143) (regOne!32799 r!7292)))))

(assert (=> d!1944513 (= (matchRSpec!3244 (regOne!32799 r!7292) s!2326) e!3777321)))

(declare-fun b!6203202 () Bool)

(declare-fun c!1119960 () Bool)

(assert (=> b!6203202 (= c!1119960 ((_ is ElementMatch!16143) (regOne!32799 r!7292)))))

(declare-fun e!3777323 () Bool)

(assert (=> b!6203202 (= e!3777323 e!3777326)))

(declare-fun b!6203203 () Bool)

(declare-fun e!3777324 () Bool)

(assert (=> b!6203203 (= e!3777325 e!3777324)))

(declare-fun res!2565669 () Bool)

(assert (=> b!6203203 (= res!2565669 (matchRSpec!3244 (regOne!32799 (regOne!32799 r!7292)) s!2326))))

(assert (=> b!6203203 (=> res!2565669 e!3777324)))

(declare-fun b!6203204 () Bool)

(assert (=> b!6203204 (= e!3777321 e!3777323)))

(declare-fun res!2565670 () Bool)

(assert (=> b!6203204 (= res!2565670 (not ((_ is EmptyLang!16143) (regOne!32799 r!7292))))))

(assert (=> b!6203204 (=> (not res!2565670) (not e!3777323))))

(declare-fun b!6203205 () Bool)

(assert (=> b!6203205 (= e!3777325 e!3777320)))

(assert (=> b!6203205 (= c!1119961 ((_ is Star!16143) (regOne!32799 r!7292)))))

(declare-fun e!3777322 () Bool)

(assert (=> b!6203206 (= e!3777322 call!519334)))

(declare-fun b!6203207 () Bool)

(assert (=> b!6203207 (= e!3777324 (matchRSpec!3244 (regTwo!32799 (regOne!32799 r!7292)) s!2326))))

(declare-fun b!6203208 () Bool)

(declare-fun res!2565668 () Bool)

(assert (=> b!6203208 (=> res!2565668 e!3777322)))

(assert (=> b!6203208 (= res!2565668 call!519335)))

(assert (=> b!6203208 (= e!3777320 e!3777322)))

(assert (= (and d!1944513 c!1119963) b!6203200))

(assert (= (and d!1944513 (not c!1119963)) b!6203204))

(assert (= (and b!6203204 res!2565670) b!6203202))

(assert (= (and b!6203202 c!1119960) b!6203199))

(assert (= (and b!6203202 (not c!1119960)) b!6203198))

(assert (= (and b!6203198 c!1119962) b!6203203))

(assert (= (and b!6203198 (not c!1119962)) b!6203205))

(assert (= (and b!6203203 (not res!2565669)) b!6203207))

(assert (= (and b!6203205 c!1119961) b!6203208))

(assert (= (and b!6203205 (not c!1119961)) b!6203201))

(assert (= (and b!6203208 (not res!2565668)) b!6203206))

(assert (= (or b!6203206 b!6203201) bm!519329))

(assert (= (or b!6203200 b!6203208) bm!519330))

(declare-fun m!7035204 () Bool)

(assert (=> bm!519329 m!7035204))

(assert (=> bm!519330 m!7034664))

(declare-fun m!7035206 () Bool)

(assert (=> b!6203203 m!7035206))

(declare-fun m!7035208 () Bool)

(assert (=> b!6203207 m!7035208))

(assert (=> b!6202468 d!1944513))

(declare-fun b!6203238 () Bool)

(declare-fun e!3777352 () Bool)

(declare-fun e!3777349 () Bool)

(assert (=> b!6203238 (= e!3777352 e!3777349)))

(declare-fun res!2565687 () Bool)

(assert (=> b!6203238 (=> (not res!2565687) (not e!3777349))))

(assert (=> b!6203238 (= res!2565687 (and (not ((_ is EmptyLang!16143) (regOne!32798 (regOne!32798 r!7292)))) (not ((_ is ElementMatch!16143) (regOne!32798 (regOne!32798 r!7292))))))))

(declare-fun bm!519341 () Bool)

(declare-fun call!519346 () Bool)

(declare-fun c!1119971 () Bool)

(assert (=> bm!519341 (= call!519346 (nullable!6136 (ite c!1119971 (regTwo!32799 (regOne!32798 (regOne!32798 r!7292))) (regTwo!32798 (regOne!32798 (regOne!32798 r!7292))))))))

(declare-fun b!6203239 () Bool)

(declare-fun e!3777347 () Bool)

(declare-fun e!3777350 () Bool)

(assert (=> b!6203239 (= e!3777347 e!3777350)))

(declare-fun res!2565686 () Bool)

(declare-fun call!519347 () Bool)

(assert (=> b!6203239 (= res!2565686 call!519347)))

(assert (=> b!6203239 (=> (not res!2565686) (not e!3777350))))

(declare-fun b!6203240 () Bool)

(declare-fun e!3777348 () Bool)

(assert (=> b!6203240 (= e!3777349 e!3777348)))

(declare-fun res!2565690 () Bool)

(assert (=> b!6203240 (=> res!2565690 e!3777348)))

(assert (=> b!6203240 (= res!2565690 ((_ is Star!16143) (regOne!32798 (regOne!32798 r!7292))))))

(declare-fun b!6203241 () Bool)

(declare-fun e!3777351 () Bool)

(assert (=> b!6203241 (= e!3777347 e!3777351)))

(declare-fun res!2565689 () Bool)

(assert (=> b!6203241 (= res!2565689 call!519347)))

(assert (=> b!6203241 (=> res!2565689 e!3777351)))

(declare-fun b!6203242 () Bool)

(assert (=> b!6203242 (= e!3777348 e!3777347)))

(assert (=> b!6203242 (= c!1119971 ((_ is Union!16143) (regOne!32798 (regOne!32798 r!7292))))))

(declare-fun d!1944515 () Bool)

(declare-fun res!2565688 () Bool)

(assert (=> d!1944515 (=> res!2565688 e!3777352)))

(assert (=> d!1944515 (= res!2565688 ((_ is EmptyExpr!16143) (regOne!32798 (regOne!32798 r!7292))))))

(assert (=> d!1944515 (= (nullableFct!2092 (regOne!32798 (regOne!32798 r!7292))) e!3777352)))

(declare-fun bm!519342 () Bool)

(assert (=> bm!519342 (= call!519347 (nullable!6136 (ite c!1119971 (regOne!32799 (regOne!32798 (regOne!32798 r!7292))) (regOne!32798 (regOne!32798 (regOne!32798 r!7292))))))))

(declare-fun b!6203243 () Bool)

(assert (=> b!6203243 (= e!3777351 call!519346)))

(declare-fun b!6203244 () Bool)

(assert (=> b!6203244 (= e!3777350 call!519346)))

(assert (= (and d!1944515 (not res!2565688)) b!6203238))

(assert (= (and b!6203238 res!2565687) b!6203240))

(assert (= (and b!6203240 (not res!2565690)) b!6203242))

(assert (= (and b!6203242 c!1119971) b!6203241))

(assert (= (and b!6203242 (not c!1119971)) b!6203239))

(assert (= (and b!6203241 (not res!2565689)) b!6203243))

(assert (= (and b!6203239 res!2565686) b!6203244))

(assert (= (or b!6203243 b!6203244) bm!519341))

(assert (= (or b!6203241 b!6203239) bm!519342))

(declare-fun m!7035226 () Bool)

(assert (=> bm!519341 m!7035226))

(declare-fun m!7035228 () Bool)

(assert (=> bm!519342 m!7035228))

(assert (=> d!1944277 d!1944515))

(declare-fun b!6203259 () Bool)

(declare-fun e!3777363 () (InoxSet Context!11054))

(assert (=> b!6203259 (= e!3777363 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6203260 () Bool)

(declare-fun e!3777362 () (InoxSet Context!11054))

(declare-fun call!519353 () (InoxSet Context!11054))

(assert (=> b!6203260 (= e!3777362 call!519353)))

(declare-fun c!1119977 () Bool)

(declare-fun bm!519344 () Bool)

(declare-fun call!519354 () List!64728)

(declare-fun c!1119976 () Bool)

(assert (=> bm!519344 (= call!519354 ($colon$colon!2012 (exprs!6027 (ite c!1119786 lt!2343076 (Context!11055 call!519187))) (ite (or c!1119976 c!1119977) (regTwo!32798 (ite c!1119786 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))))) (ite c!1119786 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343))))))))))

(declare-fun b!6203261 () Bool)

(declare-fun e!3777365 () (InoxSet Context!11054))

(assert (=> b!6203261 (= e!3777365 e!3777362)))

(assert (=> b!6203261 (= c!1119977 ((_ is Concat!24988) (ite c!1119786 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))))))))

(declare-fun b!6203262 () Bool)

(declare-fun call!519351 () (InoxSet Context!11054))

(declare-fun call!519350 () (InoxSet Context!11054))

(assert (=> b!6203262 (= e!3777365 ((_ map or) call!519351 call!519350))))

(declare-fun b!6203263 () Bool)

(declare-fun c!1119978 () Bool)

(assert (=> b!6203263 (= c!1119978 ((_ is Star!16143) (ite c!1119786 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))))))))

(assert (=> b!6203263 (= e!3777362 e!3777363)))

(declare-fun d!1944527 () Bool)

(declare-fun c!1119979 () Bool)

(assert (=> d!1944527 (= c!1119979 (and ((_ is ElementMatch!16143) (ite c!1119786 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))))) (= (c!1119610 (ite c!1119786 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))))) (h!71054 s!2326))))))

(declare-fun e!3777360 () (InoxSet Context!11054))

(assert (=> d!1944527 (= (derivationStepZipperDown!1391 (ite c!1119786 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343))))) (ite c!1119786 lt!2343076 (Context!11055 call!519187)) (h!71054 s!2326)) e!3777360)))

(declare-fun bm!519345 () Bool)

(declare-fun call!519352 () (InoxSet Context!11054))

(declare-fun c!1119975 () Bool)

(declare-fun call!519349 () List!64728)

(assert (=> bm!519345 (= call!519352 (derivationStepZipperDown!1391 (ite c!1119975 (regTwo!32799 (ite c!1119786 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))))) (ite c!1119976 (regTwo!32798 (ite c!1119786 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))))) (ite c!1119977 (regOne!32798 (ite c!1119786 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))))) (reg!16472 (ite c!1119786 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343))))))))) (ite (or c!1119975 c!1119976) (ite c!1119786 lt!2343076 (Context!11055 call!519187)) (Context!11055 call!519349)) (h!71054 s!2326)))))

(declare-fun bm!519346 () Bool)

(assert (=> bm!519346 (= call!519353 call!519350)))

(declare-fun b!6203264 () Bool)

(declare-fun e!3777364 () (InoxSet Context!11054))

(assert (=> b!6203264 (= e!3777360 e!3777364)))

(assert (=> b!6203264 (= c!1119975 ((_ is Union!16143) (ite c!1119786 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))))))))

(declare-fun b!6203265 () Bool)

(assert (=> b!6203265 (= e!3777360 (store ((as const (Array Context!11054 Bool)) false) (ite c!1119786 lt!2343076 (Context!11055 call!519187)) true))))

(declare-fun b!6203266 () Bool)

(declare-fun e!3777361 () Bool)

(assert (=> b!6203266 (= e!3777361 (nullable!6136 (regOne!32798 (ite c!1119786 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343))))))))))

(declare-fun bm!519347 () Bool)

(assert (=> bm!519347 (= call!519351 (derivationStepZipperDown!1391 (ite c!1119975 (regOne!32799 (ite c!1119786 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))))) (regOne!32798 (ite c!1119786 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343))))))) (ite c!1119975 (ite c!1119786 lt!2343076 (Context!11055 call!519187)) (Context!11055 call!519354)) (h!71054 s!2326)))))

(declare-fun b!6203267 () Bool)

(assert (=> b!6203267 (= e!3777363 call!519353)))

(declare-fun bm!519348 () Bool)

(assert (=> bm!519348 (= call!519350 call!519352)))

(declare-fun b!6203268 () Bool)

(assert (=> b!6203268 (= c!1119976 e!3777361)))

(declare-fun res!2565699 () Bool)

(assert (=> b!6203268 (=> (not res!2565699) (not e!3777361))))

(assert (=> b!6203268 (= res!2565699 ((_ is Concat!24988) (ite c!1119786 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))))))))

(assert (=> b!6203268 (= e!3777364 e!3777365)))

(declare-fun b!6203269 () Bool)

(assert (=> b!6203269 (= e!3777364 ((_ map or) call!519351 call!519352))))

(declare-fun bm!519349 () Bool)

(assert (=> bm!519349 (= call!519349 call!519354)))

(assert (= (and d!1944527 c!1119979) b!6203265))

(assert (= (and d!1944527 (not c!1119979)) b!6203264))

(assert (= (and b!6203264 c!1119975) b!6203269))

(assert (= (and b!6203264 (not c!1119975)) b!6203268))

(assert (= (and b!6203268 res!2565699) b!6203266))

(assert (= (and b!6203268 c!1119976) b!6203262))

(assert (= (and b!6203268 (not c!1119976)) b!6203261))

(assert (= (and b!6203261 c!1119977) b!6203260))

(assert (= (and b!6203261 (not c!1119977)) b!6203263))

(assert (= (and b!6203263 c!1119978) b!6203267))

(assert (= (and b!6203263 (not c!1119978)) b!6203259))

(assert (= (or b!6203260 b!6203267) bm!519349))

(assert (= (or b!6203260 b!6203267) bm!519346))

(assert (= (or b!6203262 bm!519349) bm!519344))

(assert (= (or b!6203262 bm!519346) bm!519348))

(assert (= (or b!6203269 bm!519348) bm!519345))

(assert (= (or b!6203269 b!6203262) bm!519347))

(declare-fun m!7035242 () Bool)

(assert (=> bm!519345 m!7035242))

(declare-fun m!7035244 () Bool)

(assert (=> b!6203266 m!7035244))

(declare-fun m!7035246 () Bool)

(assert (=> bm!519347 m!7035246))

(declare-fun m!7035248 () Bool)

(assert (=> bm!519344 m!7035248))

(declare-fun m!7035250 () Bool)

(assert (=> b!6203265 m!7035250))

(assert (=> bm!519180 d!1944527))

(assert (=> b!6202027 d!1944259))

(declare-fun d!1944533 () Bool)

(assert (=> d!1944533 (= (nullable!6136 (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))) (nullableFct!2092 (h!71052 (exprs!6027 (Context!11055 (Cons!64604 (h!71052 (exprs!6027 (h!71053 zl!343))) (t!378246 (exprs!6027 (h!71053 zl!343)))))))))))

(declare-fun bs!1538897 () Bool)

(assert (= bs!1538897 d!1944533))

(declare-fun m!7035252 () Bool)

(assert (=> bs!1538897 m!7035252))

(assert (=> b!6202660 d!1944533))

(declare-fun d!1944535 () Bool)

(assert (=> d!1944535 true))

(assert (=> d!1944535 true))

(declare-fun res!2565702 () Bool)

(assert (=> d!1944535 (= (choose!46097 lambda!338902) res!2565702)))

(assert (=> d!1944203 d!1944535))

(declare-fun d!1944539 () Bool)

(declare-fun res!2565707 () Bool)

(declare-fun e!3777371 () Bool)

(assert (=> d!1944539 (=> res!2565707 e!3777371)))

(assert (=> d!1944539 (= res!2565707 ((_ is Nil!64605) lt!2343154))))

(assert (=> d!1944539 (= (noDuplicate!1981 lt!2343154) e!3777371)))

(declare-fun b!6203276 () Bool)

(declare-fun e!3777372 () Bool)

(assert (=> b!6203276 (= e!3777371 e!3777372)))

(declare-fun res!2565708 () Bool)

(assert (=> b!6203276 (=> (not res!2565708) (not e!3777372))))

(declare-fun contains!20084 (List!64729 Context!11054) Bool)

(assert (=> b!6203276 (= res!2565708 (not (contains!20084 (t!378247 lt!2343154) (h!71053 lt!2343154))))))

(declare-fun b!6203277 () Bool)

(assert (=> b!6203277 (= e!3777372 (noDuplicate!1981 (t!378247 lt!2343154)))))

(assert (= (and d!1944539 (not res!2565707)) b!6203276))

(assert (= (and b!6203276 res!2565708) b!6203277))

(declare-fun m!7035268 () Bool)

(assert (=> b!6203276 m!7035268))

(declare-fun m!7035270 () Bool)

(assert (=> b!6203277 m!7035270))

(assert (=> d!1944281 d!1944539))

(declare-fun d!1944547 () Bool)

(declare-fun e!3777380 () Bool)

(assert (=> d!1944547 e!3777380))

(declare-fun res!2565714 () Bool)

(assert (=> d!1944547 (=> (not res!2565714) (not e!3777380))))

(declare-fun res!2565713 () List!64729)

(assert (=> d!1944547 (= res!2565714 (noDuplicate!1981 res!2565713))))

(declare-fun e!3777381 () Bool)

(assert (=> d!1944547 e!3777381))

(assert (=> d!1944547 (= (choose!46104 z!1189) res!2565713)))

(declare-fun b!6203289 () Bool)

(declare-fun e!3777382 () Bool)

(declare-fun tp!1729924 () Bool)

(assert (=> b!6203289 (= e!3777382 tp!1729924)))

(declare-fun tp!1729923 () Bool)

(declare-fun b!6203288 () Bool)

(assert (=> b!6203288 (= e!3777381 (and (inv!83604 (h!71053 res!2565713)) e!3777382 tp!1729923))))

(declare-fun b!6203290 () Bool)

(assert (=> b!6203290 (= e!3777380 (= (content!12080 res!2565713) z!1189))))

(assert (= b!6203288 b!6203289))

(assert (= (and d!1944547 ((_ is Cons!64605) res!2565713)) b!6203288))

(assert (= (and d!1944547 res!2565714) b!6203290))

(declare-fun m!7035280 () Bool)

(assert (=> d!1944547 m!7035280))

(declare-fun m!7035282 () Bool)

(assert (=> b!6203288 m!7035282))

(declare-fun m!7035284 () Bool)

(assert (=> b!6203290 m!7035284))

(assert (=> d!1944281 d!1944547))

(declare-fun d!1944559 () Bool)

(declare-fun c!1119984 () Bool)

(assert (=> d!1944559 (= c!1119984 (isEmpty!36601 (tail!11878 (t!378248 s!2326))))))

(declare-fun e!3777383 () Bool)

(assert (=> d!1944559 (= (matchZipper!2155 (derivationStepZipper!2109 lt!2343071 (head!12794 (t!378248 s!2326))) (tail!11878 (t!378248 s!2326))) e!3777383)))

(declare-fun b!6203291 () Bool)

(assert (=> b!6203291 (= e!3777383 (nullableZipper!1917 (derivationStepZipper!2109 lt!2343071 (head!12794 (t!378248 s!2326)))))))

(declare-fun b!6203292 () Bool)

(assert (=> b!6203292 (= e!3777383 (matchZipper!2155 (derivationStepZipper!2109 (derivationStepZipper!2109 lt!2343071 (head!12794 (t!378248 s!2326))) (head!12794 (tail!11878 (t!378248 s!2326)))) (tail!11878 (tail!11878 (t!378248 s!2326)))))))

(assert (= (and d!1944559 c!1119984) b!6203291))

(assert (= (and d!1944559 (not c!1119984)) b!6203292))

(assert (=> d!1944559 m!7034388))

(assert (=> d!1944559 m!7034844))

(assert (=> b!6203291 m!7034386))

(declare-fun m!7035288 () Bool)

(assert (=> b!6203291 m!7035288))

(assert (=> b!6203292 m!7034388))

(assert (=> b!6203292 m!7034848))

(assert (=> b!6203292 m!7034386))

(assert (=> b!6203292 m!7034848))

(declare-fun m!7035290 () Bool)

(assert (=> b!6203292 m!7035290))

(assert (=> b!6203292 m!7034388))

(assert (=> b!6203292 m!7034852))

(assert (=> b!6203292 m!7035290))

(assert (=> b!6203292 m!7034852))

(declare-fun m!7035294 () Bool)

(assert (=> b!6203292 m!7035294))

(assert (=> b!6202055 d!1944559))

(declare-fun bs!1538910 () Bool)

(declare-fun d!1944563 () Bool)

(assert (= bs!1538910 (and d!1944563 b!6201985)))

(declare-fun lambda!338992 () Int)

(assert (=> bs!1538910 (= (= (head!12794 (t!378248 s!2326)) (h!71054 s!2326)) (= lambda!338992 lambda!338903))))

(declare-fun bs!1538911 () Bool)

(assert (= bs!1538911 (and d!1944563 d!1944327)))

(assert (=> bs!1538911 (= lambda!338992 lambda!338967)))

(declare-fun bs!1538912 () Bool)

(assert (= bs!1538912 (and d!1944563 d!1944487)))

(assert (=> bs!1538912 (= lambda!338992 lambda!338977)))

(assert (=> d!1944563 true))

(assert (=> d!1944563 (= (derivationStepZipper!2109 lt!2343071 (head!12794 (t!378248 s!2326))) (flatMap!1648 lt!2343071 lambda!338992))))

(declare-fun bs!1538913 () Bool)

(assert (= bs!1538913 d!1944563))

(declare-fun m!7035298 () Bool)

(assert (=> bs!1538913 m!7035298))

(assert (=> b!6202055 d!1944563))

(assert (=> b!6202055 d!1944329))

(assert (=> b!6202055 d!1944331))

(declare-fun d!1944567 () Bool)

(assert (=> d!1944567 (= ($colon$colon!2012 (exprs!6027 lt!2343076) (ite (or c!1119807 c!1119808) (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (regTwo!32798 (regOne!32798 r!7292)))) (Cons!64604 (ite (or c!1119807 c!1119808) (regTwo!32798 (regTwo!32798 (regOne!32798 r!7292))) (regTwo!32798 (regOne!32798 r!7292))) (exprs!6027 lt!2343076)))))

(assert (=> bm!519194 d!1944567))

(declare-fun b!6203295 () Bool)

(declare-fun e!3777392 () Bool)

(declare-fun e!3777386 () Bool)

(assert (=> b!6203295 (= e!3777392 e!3777386)))

(declare-fun res!2565721 () Bool)

(assert (=> b!6203295 (= res!2565721 (not (nullable!6136 (reg!16472 lt!2343157))))))

(assert (=> b!6203295 (=> (not res!2565721) (not e!3777386))))

(declare-fun b!6203296 () Bool)

(declare-fun e!3777389 () Bool)

(assert (=> b!6203296 (= e!3777389 e!3777392)))

(declare-fun c!1119986 () Bool)

(assert (=> b!6203296 (= c!1119986 ((_ is Star!16143) lt!2343157))))

(declare-fun b!6203297 () Bool)

(declare-fun e!3777390 () Bool)

(declare-fun e!3777388 () Bool)

(assert (=> b!6203297 (= e!3777390 e!3777388)))

(declare-fun res!2565720 () Bool)

(assert (=> b!6203297 (=> (not res!2565720) (not e!3777388))))

(declare-fun call!519356 () Bool)

(assert (=> b!6203297 (= res!2565720 call!519356)))

(declare-fun b!6203299 () Bool)

(declare-fun call!519355 () Bool)

(assert (=> b!6203299 (= e!3777388 call!519355)))

(declare-fun c!1119985 () Bool)

(declare-fun bm!519350 () Bool)

(declare-fun call!519357 () Bool)

(assert (=> bm!519350 (= call!519357 (validRegex!7879 (ite c!1119986 (reg!16472 lt!2343157) (ite c!1119985 (regOne!32799 lt!2343157) (regOne!32798 lt!2343157)))))))

(declare-fun b!6203300 () Bool)

(declare-fun res!2565718 () Bool)

(assert (=> b!6203300 (=> res!2565718 e!3777390)))

(assert (=> b!6203300 (= res!2565718 (not ((_ is Concat!24988) lt!2343157)))))

(declare-fun e!3777391 () Bool)

(assert (=> b!6203300 (= e!3777391 e!3777390)))

(declare-fun bm!519351 () Bool)

(assert (=> bm!519351 (= call!519355 (validRegex!7879 (ite c!1119985 (regTwo!32799 lt!2343157) (regTwo!32798 lt!2343157))))))

(declare-fun b!6203301 () Bool)

(declare-fun e!3777387 () Bool)

(assert (=> b!6203301 (= e!3777387 call!519355)))

(declare-fun bm!519352 () Bool)

(assert (=> bm!519352 (= call!519356 call!519357)))

(declare-fun b!6203302 () Bool)

(assert (=> b!6203302 (= e!3777386 call!519357)))

(declare-fun b!6203303 () Bool)

(declare-fun res!2565717 () Bool)

(assert (=> b!6203303 (=> (not res!2565717) (not e!3777387))))

(assert (=> b!6203303 (= res!2565717 call!519356)))

(assert (=> b!6203303 (= e!3777391 e!3777387)))

(declare-fun d!1944569 () Bool)

(declare-fun res!2565719 () Bool)

(assert (=> d!1944569 (=> res!2565719 e!3777389)))

(assert (=> d!1944569 (= res!2565719 ((_ is ElementMatch!16143) lt!2343157))))

(assert (=> d!1944569 (= (validRegex!7879 lt!2343157) e!3777389)))

(declare-fun b!6203298 () Bool)

(assert (=> b!6203298 (= e!3777392 e!3777391)))

(assert (=> b!6203298 (= c!1119985 ((_ is Union!16143) lt!2343157))))

(assert (= (and d!1944569 (not res!2565719)) b!6203296))

(assert (= (and b!6203296 c!1119986) b!6203295))

(assert (= (and b!6203296 (not c!1119986)) b!6203298))

(assert (= (and b!6203295 res!2565721) b!6203302))

(assert (= (and b!6203298 c!1119985) b!6203303))

(assert (= (and b!6203298 (not c!1119985)) b!6203300))

(assert (= (and b!6203303 res!2565717) b!6203301))

(assert (= (and b!6203300 (not res!2565718)) b!6203297))

(assert (= (and b!6203297 res!2565720) b!6203299))

(assert (= (or b!6203301 b!6203299) bm!519351))

(assert (= (or b!6203303 b!6203297) bm!519352))

(assert (= (or b!6203302 bm!519352) bm!519350))

(declare-fun m!7035300 () Bool)

(assert (=> b!6203295 m!7035300))

(declare-fun m!7035302 () Bool)

(assert (=> bm!519350 m!7035302))

(declare-fun m!7035304 () Bool)

(assert (=> bm!519351 m!7035304))

(assert (=> d!1944283 d!1944569))

(declare-fun d!1944571 () Bool)

(declare-fun res!2565722 () Bool)

(declare-fun e!3777393 () Bool)

(assert (=> d!1944571 (=> res!2565722 e!3777393)))

(assert (=> d!1944571 (= res!2565722 ((_ is Nil!64604) (exprs!6027 (h!71053 zl!343))))))

(assert (=> d!1944571 (= (forall!15256 (exprs!6027 (h!71053 zl!343)) lambda!338961) e!3777393)))

(declare-fun b!6203304 () Bool)

(declare-fun e!3777394 () Bool)

(assert (=> b!6203304 (= e!3777393 e!3777394)))

(declare-fun res!2565723 () Bool)

(assert (=> b!6203304 (=> (not res!2565723) (not e!3777394))))

(assert (=> b!6203304 (= res!2565723 (dynLambda!25480 lambda!338961 (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun b!6203305 () Bool)

(assert (=> b!6203305 (= e!3777394 (forall!15256 (t!378246 (exprs!6027 (h!71053 zl!343))) lambda!338961))))

(assert (= (and d!1944571 (not res!2565722)) b!6203304))

(assert (= (and b!6203304 res!2565723) b!6203305))

(declare-fun b_lambda!235919 () Bool)

(assert (=> (not b_lambda!235919) (not b!6203304)))

(declare-fun m!7035306 () Bool)

(assert (=> b!6203304 m!7035306))

(declare-fun m!7035308 () Bool)

(assert (=> b!6203305 m!7035308))

(assert (=> d!1944283 d!1944571))

(declare-fun b!6203306 () Bool)

(declare-fun e!3777400 () Bool)

(declare-fun e!3777397 () Bool)

(assert (=> b!6203306 (= e!3777400 e!3777397)))

(declare-fun res!2565725 () Bool)

(assert (=> b!6203306 (=> (not res!2565725) (not e!3777397))))

(assert (=> b!6203306 (= res!2565725 (and (not ((_ is EmptyLang!16143) (h!71052 (exprs!6027 (h!71053 zl!343))))) (not ((_ is ElementMatch!16143) (h!71052 (exprs!6027 (h!71053 zl!343)))))))))

(declare-fun bm!519353 () Bool)

(declare-fun call!519358 () Bool)

(declare-fun c!1119987 () Bool)

(assert (=> bm!519353 (= call!519358 (nullable!6136 (ite c!1119987 (regTwo!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regTwo!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))))))))

(declare-fun b!6203307 () Bool)

(declare-fun e!3777395 () Bool)

(declare-fun e!3777398 () Bool)

(assert (=> b!6203307 (= e!3777395 e!3777398)))

(declare-fun res!2565724 () Bool)

(declare-fun call!519359 () Bool)

(assert (=> b!6203307 (= res!2565724 call!519359)))

(assert (=> b!6203307 (=> (not res!2565724) (not e!3777398))))

(declare-fun b!6203308 () Bool)

(declare-fun e!3777396 () Bool)

(assert (=> b!6203308 (= e!3777397 e!3777396)))

(declare-fun res!2565728 () Bool)

(assert (=> b!6203308 (=> res!2565728 e!3777396)))

(assert (=> b!6203308 (= res!2565728 ((_ is Star!16143) (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun b!6203309 () Bool)

(declare-fun e!3777399 () Bool)

(assert (=> b!6203309 (= e!3777395 e!3777399)))

(declare-fun res!2565727 () Bool)

(assert (=> b!6203309 (= res!2565727 call!519359)))

(assert (=> b!6203309 (=> res!2565727 e!3777399)))

(declare-fun b!6203310 () Bool)

(assert (=> b!6203310 (= e!3777396 e!3777395)))

(assert (=> b!6203310 (= c!1119987 ((_ is Union!16143) (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun d!1944573 () Bool)

(declare-fun res!2565726 () Bool)

(assert (=> d!1944573 (=> res!2565726 e!3777400)))

(assert (=> d!1944573 (= res!2565726 ((_ is EmptyExpr!16143) (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(assert (=> d!1944573 (= (nullableFct!2092 (h!71052 (exprs!6027 (h!71053 zl!343)))) e!3777400)))

(declare-fun bm!519354 () Bool)

(assert (=> bm!519354 (= call!519359 (nullable!6136 (ite c!1119987 (regOne!32799 (h!71052 (exprs!6027 (h!71053 zl!343)))) (regOne!32798 (h!71052 (exprs!6027 (h!71053 zl!343)))))))))

(declare-fun b!6203311 () Bool)

(assert (=> b!6203311 (= e!3777399 call!519358)))

(declare-fun b!6203312 () Bool)

(assert (=> b!6203312 (= e!3777398 call!519358)))

(assert (= (and d!1944573 (not res!2565726)) b!6203306))

(assert (= (and b!6203306 res!2565725) b!6203308))

(assert (= (and b!6203308 (not res!2565728)) b!6203310))

(assert (= (and b!6203310 c!1119987) b!6203309))

(assert (= (and b!6203310 (not c!1119987)) b!6203307))

(assert (= (and b!6203309 (not res!2565727)) b!6203311))

(assert (= (and b!6203307 res!2565724) b!6203312))

(assert (= (or b!6203311 b!6203312) bm!519353))

(assert (= (or b!6203309 b!6203307) bm!519354))

(declare-fun m!7035310 () Bool)

(assert (=> bm!519353 m!7035310))

(declare-fun m!7035312 () Bool)

(assert (=> bm!519354 m!7035312))

(assert (=> d!1944291 d!1944573))

(assert (=> d!1944271 d!1944431))

(assert (=> d!1944271 d!1944183))

(declare-fun d!1944575 () Bool)

(declare-fun e!3777403 () Bool)

(assert (=> d!1944575 e!3777403))

(declare-fun res!2565730 () Bool)

(assert (=> d!1944575 (=> (not res!2565730) (not e!3777403))))

(declare-fun lt!2343188 () List!64730)

(assert (=> d!1944575 (= res!2565730 (= (content!12081 lt!2343188) ((_ map or) (content!12081 (_1!36425 (get!22307 lt!2343096))) (content!12081 (_2!36425 (get!22307 lt!2343096))))))))

(declare-fun e!3777404 () List!64730)

(assert (=> d!1944575 (= lt!2343188 e!3777404)))

(declare-fun c!1119990 () Bool)

(assert (=> d!1944575 (= c!1119990 ((_ is Nil!64606) (_1!36425 (get!22307 lt!2343096))))))

(assert (=> d!1944575 (= (++!14220 (_1!36425 (get!22307 lt!2343096)) (_2!36425 (get!22307 lt!2343096))) lt!2343188)))

(declare-fun b!6203317 () Bool)

(assert (=> b!6203317 (= e!3777404 (_2!36425 (get!22307 lt!2343096)))))

(declare-fun b!6203320 () Bool)

(assert (=> b!6203320 (= e!3777403 (or (not (= (_2!36425 (get!22307 lt!2343096)) Nil!64606)) (= lt!2343188 (_1!36425 (get!22307 lt!2343096)))))))

(declare-fun b!6203318 () Bool)

(assert (=> b!6203318 (= e!3777404 (Cons!64606 (h!71054 (_1!36425 (get!22307 lt!2343096))) (++!14220 (t!378248 (_1!36425 (get!22307 lt!2343096))) (_2!36425 (get!22307 lt!2343096)))))))

(declare-fun b!6203319 () Bool)

(declare-fun res!2565729 () Bool)

(assert (=> b!6203319 (=> (not res!2565729) (not e!3777403))))

(assert (=> b!6203319 (= res!2565729 (= (size!40269 lt!2343188) (+ (size!40269 (_1!36425 (get!22307 lt!2343096))) (size!40269 (_2!36425 (get!22307 lt!2343096))))))))

(assert (= (and d!1944575 c!1119990) b!6203317))

(assert (= (and d!1944575 (not c!1119990)) b!6203318))

(assert (= (and d!1944575 res!2565730) b!6203319))

(assert (= (and b!6203319 res!2565729) b!6203320))

(declare-fun m!7035314 () Bool)

(assert (=> d!1944575 m!7035314))

(declare-fun m!7035316 () Bool)

(assert (=> d!1944575 m!7035316))

(declare-fun m!7035318 () Bool)

(assert (=> d!1944575 m!7035318))

(declare-fun m!7035320 () Bool)

(assert (=> b!6203318 m!7035320))

(declare-fun m!7035322 () Bool)

(assert (=> b!6203319 m!7035322))

(declare-fun m!7035324 () Bool)

(assert (=> b!6203319 m!7035324))

(declare-fun m!7035326 () Bool)

(assert (=> b!6203319 m!7035326))

(assert (=> b!6202206 d!1944575))

(assert (=> b!6202206 d!1944465))

(declare-fun d!1944577 () Bool)

(assert (=> d!1944577 (= (Exists!3213 lambda!338935) (choose!46097 lambda!338935))))

(declare-fun bs!1538914 () Bool)

(assert (= bs!1538914 d!1944577))

(declare-fun m!7035328 () Bool)

(assert (=> bs!1538914 m!7035328))

(assert (=> d!1944225 d!1944577))

(declare-fun d!1944579 () Bool)

(assert (=> d!1944579 (= (Exists!3213 lambda!338936) (choose!46097 lambda!338936))))

(declare-fun bs!1538915 () Bool)

(assert (= bs!1538915 d!1944579))

(declare-fun m!7035330 () Bool)

(assert (=> bs!1538915 m!7035330))

(assert (=> d!1944225 d!1944579))

(declare-fun bs!1538917 () Bool)

(declare-fun d!1944581 () Bool)

(assert (= bs!1538917 (and d!1944581 b!6201983)))

(declare-fun lambda!338997 () Int)

(assert (=> bs!1538917 (not (= lambda!338997 lambda!338902))))

(declare-fun bs!1538918 () Bool)

(assert (= bs!1538918 (and d!1944581 d!1944377)))

(assert (=> bs!1538918 (= lambda!338997 lambda!338971)))

(declare-fun bs!1538919 () Bool)

(assert (= bs!1538919 (and d!1944581 b!6203206)))

(assert (=> bs!1538919 (not (= lambda!338997 lambda!338981))))

(declare-fun bs!1538920 () Bool)

(assert (= bs!1538920 (and d!1944581 b!6203190)))

(assert (=> bs!1538920 (not (= lambda!338997 lambda!338980))))

(declare-fun bs!1538921 () Bool)

(assert (= bs!1538921 (and d!1944581 b!6203201)))

(assert (=> bs!1538921 (not (= lambda!338997 lambda!338984))))

(assert (=> bs!1538917 (= lambda!338997 lambda!338901)))

(declare-fun bs!1538922 () Bool)

(assert (= bs!1538922 (and d!1944581 b!6202471)))

(assert (=> bs!1538922 (not (= lambda!338997 lambda!338956))))

(declare-fun bs!1538923 () Bool)

(assert (= bs!1538923 (and d!1944581 d!1944225)))

(assert (=> bs!1538923 (not (= lambda!338997 lambda!338936))))

(assert (=> bs!1538923 (= lambda!338997 lambda!338935)))

(declare-fun bs!1538924 () Bool)

(assert (= bs!1538924 (and d!1944581 b!6202466)))

(assert (=> bs!1538924 (not (= lambda!338997 lambda!338958))))

(declare-fun bs!1538925 () Bool)

(assert (= bs!1538925 (and d!1944581 b!6203195)))

(assert (=> bs!1538925 (not (= lambda!338997 lambda!338979))))

(declare-fun bs!1538926 () Bool)

(assert (= bs!1538926 (and d!1944581 d!1944205)))

(assert (=> bs!1538926 (= lambda!338997 lambda!338927)))

(assert (=> d!1944581 true))

(assert (=> d!1944581 true))

(assert (=> d!1944581 true))

(declare-fun bs!1538927 () Bool)

(assert (= bs!1538927 d!1944581))

(declare-fun lambda!338998 () Int)

(assert (=> bs!1538927 (not (= lambda!338998 lambda!338997))))

(assert (=> bs!1538917 (= lambda!338998 lambda!338902)))

(assert (=> bs!1538918 (not (= lambda!338998 lambda!338971))))

(assert (=> bs!1538919 (not (= lambda!338998 lambda!338981))))

(assert (=> bs!1538920 (= (and (= (regOne!32798 r!7292) (regOne!32798 (regTwo!32799 r!7292))) (= (regTwo!32798 r!7292) (regTwo!32798 (regTwo!32799 r!7292)))) (= lambda!338998 lambda!338980))))

(assert (=> bs!1538921 (= (and (= (regOne!32798 r!7292) (regOne!32798 (regOne!32799 r!7292))) (= (regTwo!32798 r!7292) (regTwo!32798 (regOne!32799 r!7292)))) (= lambda!338998 lambda!338984))))

(assert (=> bs!1538917 (not (= lambda!338998 lambda!338901))))

(assert (=> bs!1538922 (not (= lambda!338998 lambda!338956))))

(assert (=> bs!1538923 (= lambda!338998 lambda!338936)))

(assert (=> bs!1538923 (not (= lambda!338998 lambda!338935))))

(assert (=> bs!1538924 (= lambda!338998 lambda!338958)))

(assert (=> bs!1538925 (not (= lambda!338998 lambda!338979))))

(assert (=> bs!1538926 (not (= lambda!338998 lambda!338927))))

(assert (=> d!1944581 true))

(assert (=> d!1944581 true))

(assert (=> d!1944581 true))

(assert (=> d!1944581 (= (Exists!3213 lambda!338997) (Exists!3213 lambda!338998))))

(assert (=> d!1944581 true))

(declare-fun _$90!1974 () Unit!157903)

(assert (=> d!1944581 (= (choose!46099 (regOne!32798 r!7292) (regTwo!32798 r!7292) s!2326) _$90!1974)))

(declare-fun m!7035400 () Bool)

(assert (=> bs!1538927 m!7035400))

(declare-fun m!7035402 () Bool)

(assert (=> bs!1538927 m!7035402))

(assert (=> d!1944225 d!1944581))

(assert (=> d!1944225 d!1944341))

(declare-fun bs!1538928 () Bool)

(declare-fun d!1944601 () Bool)

(assert (= bs!1538928 (and d!1944601 d!1944251)))

(declare-fun lambda!338999 () Int)

(assert (=> bs!1538928 (= lambda!338999 lambda!338942)))

(declare-fun bs!1538929 () Bool)

(assert (= bs!1538929 (and d!1944601 d!1944261)))

(assert (=> bs!1538929 (= lambda!338999 lambda!338943)))

(declare-fun bs!1538930 () Bool)

(assert (= bs!1538930 (and d!1944601 d!1944449)))

(assert (=> bs!1538930 (= lambda!338999 lambda!338974)))

(declare-fun bs!1538931 () Bool)

(assert (= bs!1538931 (and d!1944601 d!1944167)))

(assert (=> bs!1538931 (= lambda!338999 lambda!338906)))

(declare-fun bs!1538932 () Bool)

(assert (= bs!1538932 (and d!1944601 d!1944421)))

(assert (=> bs!1538932 (= lambda!338999 lambda!338972)))

(declare-fun bs!1538933 () Bool)

(assert (= bs!1538933 (and d!1944601 d!1944247)))

(assert (=> bs!1538933 (= lambda!338999 lambda!338939)))

(declare-fun bs!1538934 () Bool)

(assert (= bs!1538934 (and d!1944601 d!1944169)))

(assert (=> bs!1538934 (= lambda!338999 lambda!338907)))

(declare-fun bs!1538935 () Bool)

(assert (= bs!1538935 (and d!1944601 d!1944283)))

(assert (=> bs!1538935 (= lambda!338999 lambda!338961)))

(declare-fun bs!1538936 () Bool)

(assert (= bs!1538936 (and d!1944601 d!1944349)))

(assert (=> bs!1538936 (= lambda!338999 lambda!338968)))

(assert (=> d!1944601 (= (inv!83604 (h!71053 (t!378247 zl!343))) (forall!15256 (exprs!6027 (h!71053 (t!378247 zl!343))) lambda!338999))))

(declare-fun bs!1538937 () Bool)

(assert (= bs!1538937 d!1944601))

(declare-fun m!7035404 () Bool)

(assert (=> bs!1538937 m!7035404))

(assert (=> b!6202722 d!1944601))

(assert (=> b!6202567 d!1944459))

(declare-fun d!1944603 () Bool)

(assert (=> d!1944603 true))

(declare-fun setRes!42113 () Bool)

(assert (=> d!1944603 setRes!42113))

(declare-fun condSetEmpty!42113 () Bool)

(declare-fun res!2565756 () (InoxSet Context!11054))

(assert (=> d!1944603 (= condSetEmpty!42113 (= res!2565756 ((as const (Array Context!11054 Bool)) false)))))

(assert (=> d!1944603 (= (choose!46108 z!1189 lambda!338903) res!2565756)))

(declare-fun setIsEmpty!42113 () Bool)

(assert (=> setIsEmpty!42113 setRes!42113))

(declare-fun setNonEmpty!42113 () Bool)

(declare-fun tp!1729930 () Bool)

(declare-fun setElem!42113 () Context!11054)

(declare-fun e!3777437 () Bool)

(assert (=> setNonEmpty!42113 (= setRes!42113 (and tp!1729930 (inv!83604 setElem!42113) e!3777437))))

(declare-fun setRest!42113 () (InoxSet Context!11054))

(assert (=> setNonEmpty!42113 (= res!2565756 ((_ map or) (store ((as const (Array Context!11054 Bool)) false) setElem!42113 true) setRest!42113))))

(declare-fun b!6203380 () Bool)

(declare-fun tp!1729929 () Bool)

(assert (=> b!6203380 (= e!3777437 tp!1729929)))

(assert (= (and d!1944603 condSetEmpty!42113) setIsEmpty!42113))

(assert (= (and d!1944603 (not condSetEmpty!42113)) setNonEmpty!42113))

(assert (= setNonEmpty!42113 b!6203380))

(declare-fun m!7035416 () Bool)

(assert (=> setNonEmpty!42113 m!7035416))

(assert (=> d!1944287 d!1944603))

(declare-fun bs!1538939 () Bool)

(declare-fun d!1944609 () Bool)

(assert (= bs!1538939 (and d!1944609 d!1944251)))

(declare-fun lambda!339003 () Int)

(assert (=> bs!1538939 (= lambda!339003 lambda!338942)))

(declare-fun bs!1538940 () Bool)

(assert (= bs!1538940 (and d!1944609 d!1944261)))

(assert (=> bs!1538940 (= lambda!339003 lambda!338943)))

(declare-fun bs!1538941 () Bool)

(assert (= bs!1538941 (and d!1944609 d!1944449)))

(assert (=> bs!1538941 (= lambda!339003 lambda!338974)))

(declare-fun bs!1538942 () Bool)

(assert (= bs!1538942 (and d!1944609 d!1944167)))

(assert (=> bs!1538942 (= lambda!339003 lambda!338906)))

(declare-fun bs!1538943 () Bool)

(assert (= bs!1538943 (and d!1944609 d!1944421)))

(assert (=> bs!1538943 (= lambda!339003 lambda!338972)))

(declare-fun bs!1538944 () Bool)

(assert (= bs!1538944 (and d!1944609 d!1944247)))

(assert (=> bs!1538944 (= lambda!339003 lambda!338939)))

(declare-fun bs!1538945 () Bool)

(assert (= bs!1538945 (and d!1944609 d!1944169)))

(assert (=> bs!1538945 (= lambda!339003 lambda!338907)))

(declare-fun bs!1538946 () Bool)

(assert (= bs!1538946 (and d!1944609 d!1944283)))

(assert (=> bs!1538946 (= lambda!339003 lambda!338961)))

(declare-fun bs!1538947 () Bool)

(assert (= bs!1538947 (and d!1944609 d!1944601)))

(assert (=> bs!1538947 (= lambda!339003 lambda!338999)))

(declare-fun bs!1538948 () Bool)

(assert (= bs!1538948 (and d!1944609 d!1944349)))

(assert (=> bs!1538948 (= lambda!339003 lambda!338968)))

(declare-fun b!6203392 () Bool)

(declare-fun e!3777447 () Bool)

(declare-fun e!3777448 () Bool)

(assert (=> b!6203392 (= e!3777447 e!3777448)))

(declare-fun c!1120018 () Bool)

(assert (=> b!6203392 (= c!1120018 (isEmpty!36598 (t!378246 (unfocusZipperList!1564 zl!343))))))

(declare-fun b!6203393 () Bool)

(declare-fun e!3777446 () Bool)

(assert (=> b!6203393 (= e!3777448 e!3777446)))

(declare-fun c!1120016 () Bool)

(assert (=> b!6203393 (= c!1120016 (isEmpty!36598 (tail!11880 (t!378246 (unfocusZipperList!1564 zl!343)))))))

(declare-fun b!6203394 () Bool)

(declare-fun lt!2343197 () Regex!16143)

(assert (=> b!6203394 (= e!3777446 (= lt!2343197 (head!12795 (t!378246 (unfocusZipperList!1564 zl!343)))))))

(declare-fun b!6203395 () Bool)

(declare-fun e!3777445 () Regex!16143)

(declare-fun e!3777449 () Regex!16143)

(assert (=> b!6203395 (= e!3777445 e!3777449)))

(declare-fun c!1120017 () Bool)

(assert (=> b!6203395 (= c!1120017 ((_ is Cons!64604) (t!378246 (unfocusZipperList!1564 zl!343))))))

(declare-fun b!6203396 () Bool)

(assert (=> b!6203396 (= e!3777445 (h!71052 (t!378246 (unfocusZipperList!1564 zl!343))))))

(declare-fun b!6203397 () Bool)

(assert (=> b!6203397 (= e!3777449 EmptyLang!16143)))

(declare-fun b!6203398 () Bool)

(assert (=> b!6203398 (= e!3777449 (Union!16143 (h!71052 (t!378246 (unfocusZipperList!1564 zl!343))) (generalisedUnion!1987 (t!378246 (t!378246 (unfocusZipperList!1564 zl!343))))))))

(assert (=> d!1944609 e!3777447))

(declare-fun res!2565758 () Bool)

(assert (=> d!1944609 (=> (not res!2565758) (not e!3777447))))

(assert (=> d!1944609 (= res!2565758 (validRegex!7879 lt!2343197))))

(assert (=> d!1944609 (= lt!2343197 e!3777445)))

(declare-fun c!1120015 () Bool)

(declare-fun e!3777444 () Bool)

(assert (=> d!1944609 (= c!1120015 e!3777444)))

(declare-fun res!2565759 () Bool)

(assert (=> d!1944609 (=> (not res!2565759) (not e!3777444))))

(assert (=> d!1944609 (= res!2565759 ((_ is Cons!64604) (t!378246 (unfocusZipperList!1564 zl!343))))))

(assert (=> d!1944609 (forall!15256 (t!378246 (unfocusZipperList!1564 zl!343)) lambda!339003)))

(assert (=> d!1944609 (= (generalisedUnion!1987 (t!378246 (unfocusZipperList!1564 zl!343))) lt!2343197)))

(declare-fun b!6203399 () Bool)

(assert (=> b!6203399 (= e!3777448 (isEmptyLang!1562 lt!2343197))))

(declare-fun b!6203400 () Bool)

(assert (=> b!6203400 (= e!3777444 (isEmpty!36598 (t!378246 (t!378246 (unfocusZipperList!1564 zl!343)))))))

(declare-fun b!6203401 () Bool)

(assert (=> b!6203401 (= e!3777446 (isUnion!992 lt!2343197))))

(assert (= (and d!1944609 res!2565759) b!6203400))

(assert (= (and d!1944609 c!1120015) b!6203396))

(assert (= (and d!1944609 (not c!1120015)) b!6203395))

(assert (= (and b!6203395 c!1120017) b!6203398))

(assert (= (and b!6203395 (not c!1120017)) b!6203397))

(assert (= (and d!1944609 res!2565758) b!6203392))

(assert (= (and b!6203392 c!1120018) b!6203399))

(assert (= (and b!6203392 (not c!1120018)) b!6203393))

(assert (= (and b!6203393 c!1120016) b!6203394))

(assert (= (and b!6203393 (not c!1120016)) b!6203401))

(declare-fun m!7035428 () Bool)

(assert (=> d!1944609 m!7035428))

(declare-fun m!7035432 () Bool)

(assert (=> d!1944609 m!7035432))

(declare-fun m!7035434 () Bool)

(assert (=> b!6203393 m!7035434))

(assert (=> b!6203393 m!7035434))

(declare-fun m!7035438 () Bool)

(assert (=> b!6203393 m!7035438))

(declare-fun m!7035442 () Bool)

(assert (=> b!6203398 m!7035442))

(declare-fun m!7035444 () Bool)

(assert (=> b!6203394 m!7035444))

(assert (=> b!6203392 m!7034608))

(declare-fun m!7035446 () Bool)

(assert (=> b!6203401 m!7035446))

(declare-fun m!7035448 () Bool)

(assert (=> b!6203399 m!7035448))

(declare-fun m!7035450 () Bool)

(assert (=> b!6203400 m!7035450))

(assert (=> b!6202398 d!1944609))

(declare-fun d!1944615 () Bool)

(assert (=> d!1944615 true))

(assert (=> d!1944615 true))

(declare-fun res!2565761 () Bool)

(assert (=> d!1944615 (= (choose!46097 lambda!338901) res!2565761)))

(assert (=> d!1944201 d!1944615))

(declare-fun d!1944617 () Bool)

(assert (=> d!1944617 (= (isEmptyExpr!1553 lt!2343157) ((_ is EmptyExpr!16143) lt!2343157))))

(assert (=> b!6202602 d!1944617))

(assert (=> b!6202202 d!1944337))

(declare-fun d!1944621 () Bool)

(assert (=> d!1944621 (= (isEmpty!36598 (t!378246 (unfocusZipperList!1564 zl!343))) ((_ is Nil!64604) (t!378246 (unfocusZipperList!1564 zl!343))))))

(assert (=> b!6202400 d!1944621))

(declare-fun d!1944623 () Bool)

(declare-fun c!1120026 () Bool)

(assert (=> d!1944623 (= c!1120026 ((_ is Nil!64605) lt!2343154))))

(declare-fun e!3777459 () (InoxSet Context!11054))

(assert (=> d!1944623 (= (content!12080 lt!2343154) e!3777459)))

(declare-fun b!6203418 () Bool)

(assert (=> b!6203418 (= e!3777459 ((as const (Array Context!11054 Bool)) false))))

(declare-fun b!6203419 () Bool)

(assert (=> b!6203419 (= e!3777459 ((_ map or) (store ((as const (Array Context!11054 Bool)) false) (h!71053 lt!2343154) true) (content!12080 (t!378247 lt!2343154))))))

(assert (= (and d!1944623 c!1120026) b!6203418))

(assert (= (and d!1944623 (not c!1120026)) b!6203419))

(declare-fun m!7035464 () Bool)

(assert (=> b!6203419 m!7035464))

(declare-fun m!7035466 () Bool)

(assert (=> b!6203419 m!7035466))

(assert (=> b!6202572 d!1944623))

(declare-fun b!6203423 () Bool)

(declare-fun e!3777460 () Bool)

(declare-fun tp!1729935 () Bool)

(declare-fun tp!1729932 () Bool)

(assert (=> b!6203423 (= e!3777460 (and tp!1729935 tp!1729932))))

(declare-fun b!6203421 () Bool)

(declare-fun tp!1729933 () Bool)

(declare-fun tp!1729934 () Bool)

(assert (=> b!6203421 (= e!3777460 (and tp!1729933 tp!1729934))))

(declare-fun b!6203422 () Bool)

(declare-fun tp!1729931 () Bool)

(assert (=> b!6203422 (= e!3777460 tp!1729931)))

(declare-fun b!6203420 () Bool)

(assert (=> b!6203420 (= e!3777460 tp_is_empty!41539)))

(assert (=> b!6202735 (= tp!1729914 e!3777460)))

(assert (= (and b!6202735 ((_ is ElementMatch!16143) (reg!16472 (regTwo!32798 r!7292)))) b!6203420))

(assert (= (and b!6202735 ((_ is Concat!24988) (reg!16472 (regTwo!32798 r!7292)))) b!6203421))

(assert (= (and b!6202735 ((_ is Star!16143) (reg!16472 (regTwo!32798 r!7292)))) b!6203422))

(assert (= (and b!6202735 ((_ is Union!16143) (reg!16472 (regTwo!32798 r!7292)))) b!6203423))

(declare-fun b!6203427 () Bool)

(declare-fun e!3777461 () Bool)

(declare-fun tp!1729940 () Bool)

(declare-fun tp!1729937 () Bool)

(assert (=> b!6203427 (= e!3777461 (and tp!1729940 tp!1729937))))

(declare-fun b!6203425 () Bool)

(declare-fun tp!1729938 () Bool)

(declare-fun tp!1729939 () Bool)

(assert (=> b!6203425 (= e!3777461 (and tp!1729938 tp!1729939))))

(declare-fun b!6203426 () Bool)

(declare-fun tp!1729936 () Bool)

(assert (=> b!6203426 (= e!3777461 tp!1729936)))

(declare-fun b!6203424 () Bool)

(assert (=> b!6203424 (= e!3777461 tp_is_empty!41539)))

(assert (=> b!6202736 (= tp!1729918 e!3777461)))

(assert (= (and b!6202736 ((_ is ElementMatch!16143) (regOne!32799 (regTwo!32798 r!7292)))) b!6203424))

(assert (= (and b!6202736 ((_ is Concat!24988) (regOne!32799 (regTwo!32798 r!7292)))) b!6203425))

(assert (= (and b!6202736 ((_ is Star!16143) (regOne!32799 (regTwo!32798 r!7292)))) b!6203426))

(assert (= (and b!6202736 ((_ is Union!16143) (regOne!32799 (regTwo!32798 r!7292)))) b!6203427))

(declare-fun b!6203431 () Bool)

(declare-fun e!3777462 () Bool)

(declare-fun tp!1729945 () Bool)

(declare-fun tp!1729942 () Bool)

(assert (=> b!6203431 (= e!3777462 (and tp!1729945 tp!1729942))))

(declare-fun b!6203429 () Bool)

(declare-fun tp!1729943 () Bool)

(declare-fun tp!1729944 () Bool)

(assert (=> b!6203429 (= e!3777462 (and tp!1729943 tp!1729944))))

(declare-fun b!6203430 () Bool)

(declare-fun tp!1729941 () Bool)

(assert (=> b!6203430 (= e!3777462 tp!1729941)))

(declare-fun b!6203428 () Bool)

(assert (=> b!6203428 (= e!3777462 tp_is_empty!41539)))

(assert (=> b!6202736 (= tp!1729915 e!3777462)))

(assert (= (and b!6202736 ((_ is ElementMatch!16143) (regTwo!32799 (regTwo!32798 r!7292)))) b!6203428))

(assert (= (and b!6202736 ((_ is Concat!24988) (regTwo!32799 (regTwo!32798 r!7292)))) b!6203429))

(assert (= (and b!6202736 ((_ is Star!16143) (regTwo!32799 (regTwo!32798 r!7292)))) b!6203430))

(assert (= (and b!6202736 ((_ is Union!16143) (regTwo!32799 (regTwo!32798 r!7292)))) b!6203431))

(declare-fun b!6203435 () Bool)

(declare-fun e!3777463 () Bool)

(declare-fun tp!1729950 () Bool)

(declare-fun tp!1729947 () Bool)

(assert (=> b!6203435 (= e!3777463 (and tp!1729950 tp!1729947))))

(declare-fun b!6203433 () Bool)

(declare-fun tp!1729948 () Bool)

(declare-fun tp!1729949 () Bool)

(assert (=> b!6203433 (= e!3777463 (and tp!1729948 tp!1729949))))

(declare-fun b!6203434 () Bool)

(declare-fun tp!1729946 () Bool)

(assert (=> b!6203434 (= e!3777463 tp!1729946)))

(declare-fun b!6203432 () Bool)

(assert (=> b!6203432 (= e!3777463 tp_is_empty!41539)))

(assert (=> b!6202706 (= tp!1729886 e!3777463)))

(assert (= (and b!6202706 ((_ is ElementMatch!16143) (h!71052 (exprs!6027 (h!71053 zl!343))))) b!6203432))

(assert (= (and b!6202706 ((_ is Concat!24988) (h!71052 (exprs!6027 (h!71053 zl!343))))) b!6203433))

(assert (= (and b!6202706 ((_ is Star!16143) (h!71052 (exprs!6027 (h!71053 zl!343))))) b!6203434))

(assert (= (and b!6202706 ((_ is Union!16143) (h!71052 (exprs!6027 (h!71053 zl!343))))) b!6203435))

(declare-fun b!6203436 () Bool)

(declare-fun e!3777464 () Bool)

(declare-fun tp!1729951 () Bool)

(declare-fun tp!1729952 () Bool)

(assert (=> b!6203436 (= e!3777464 (and tp!1729951 tp!1729952))))

(assert (=> b!6202706 (= tp!1729887 e!3777464)))

(assert (= (and b!6202706 ((_ is Cons!64604) (t!378246 (exprs!6027 (h!71053 zl!343))))) b!6203436))

(declare-fun b!6203440 () Bool)

(declare-fun e!3777465 () Bool)

(declare-fun tp!1729957 () Bool)

(declare-fun tp!1729954 () Bool)

(assert (=> b!6203440 (= e!3777465 (and tp!1729957 tp!1729954))))

(declare-fun b!6203438 () Bool)

(declare-fun tp!1729955 () Bool)

(declare-fun tp!1729956 () Bool)

(assert (=> b!6203438 (= e!3777465 (and tp!1729955 tp!1729956))))

(declare-fun b!6203439 () Bool)

(declare-fun tp!1729953 () Bool)

(assert (=> b!6203439 (= e!3777465 tp!1729953)))

(declare-fun b!6203437 () Bool)

(assert (=> b!6203437 (= e!3777465 tp_is_empty!41539)))

(assert (=> b!6202699 (= tp!1729879 e!3777465)))

(assert (= (and b!6202699 ((_ is ElementMatch!16143) (regOne!32798 (reg!16472 r!7292)))) b!6203437))

(assert (= (and b!6202699 ((_ is Concat!24988) (regOne!32798 (reg!16472 r!7292)))) b!6203438))

(assert (= (and b!6202699 ((_ is Star!16143) (regOne!32798 (reg!16472 r!7292)))) b!6203439))

(assert (= (and b!6202699 ((_ is Union!16143) (regOne!32798 (reg!16472 r!7292)))) b!6203440))

(declare-fun b!6203444 () Bool)

(declare-fun e!3777466 () Bool)

(declare-fun tp!1729962 () Bool)

(declare-fun tp!1729959 () Bool)

(assert (=> b!6203444 (= e!3777466 (and tp!1729962 tp!1729959))))

(declare-fun b!6203442 () Bool)

(declare-fun tp!1729960 () Bool)

(declare-fun tp!1729961 () Bool)

(assert (=> b!6203442 (= e!3777466 (and tp!1729960 tp!1729961))))

(declare-fun b!6203443 () Bool)

(declare-fun tp!1729958 () Bool)

(assert (=> b!6203443 (= e!3777466 tp!1729958)))

(declare-fun b!6203441 () Bool)

(assert (=> b!6203441 (= e!3777466 tp_is_empty!41539)))

(assert (=> b!6202699 (= tp!1729880 e!3777466)))

(assert (= (and b!6202699 ((_ is ElementMatch!16143) (regTwo!32798 (reg!16472 r!7292)))) b!6203441))

(assert (= (and b!6202699 ((_ is Concat!24988) (regTwo!32798 (reg!16472 r!7292)))) b!6203442))

(assert (= (and b!6202699 ((_ is Star!16143) (regTwo!32798 (reg!16472 r!7292)))) b!6203443))

(assert (= (and b!6202699 ((_ is Union!16143) (regTwo!32798 (reg!16472 r!7292)))) b!6203444))

(declare-fun b!6203448 () Bool)

(declare-fun e!3777467 () Bool)

(declare-fun tp!1729967 () Bool)

(declare-fun tp!1729964 () Bool)

(assert (=> b!6203448 (= e!3777467 (and tp!1729967 tp!1729964))))

(declare-fun b!6203446 () Bool)

(declare-fun tp!1729965 () Bool)

(declare-fun tp!1729966 () Bool)

(assert (=> b!6203446 (= e!3777467 (and tp!1729965 tp!1729966))))

(declare-fun b!6203447 () Bool)

(declare-fun tp!1729963 () Bool)

(assert (=> b!6203447 (= e!3777467 tp!1729963)))

(declare-fun b!6203445 () Bool)

(assert (=> b!6203445 (= e!3777467 tp_is_empty!41539)))

(assert (=> b!6202713 (= tp!1729897 e!3777467)))

(assert (= (and b!6202713 ((_ is ElementMatch!16143) (regOne!32798 (regTwo!32799 r!7292)))) b!6203445))

(assert (= (and b!6202713 ((_ is Concat!24988) (regOne!32798 (regTwo!32799 r!7292)))) b!6203446))

(assert (= (and b!6202713 ((_ is Star!16143) (regOne!32798 (regTwo!32799 r!7292)))) b!6203447))

(assert (= (and b!6202713 ((_ is Union!16143) (regOne!32798 (regTwo!32799 r!7292)))) b!6203448))

(declare-fun b!6203452 () Bool)

(declare-fun e!3777468 () Bool)

(declare-fun tp!1729972 () Bool)

(declare-fun tp!1729969 () Bool)

(assert (=> b!6203452 (= e!3777468 (and tp!1729972 tp!1729969))))

(declare-fun b!6203450 () Bool)

(declare-fun tp!1729970 () Bool)

(declare-fun tp!1729971 () Bool)

(assert (=> b!6203450 (= e!3777468 (and tp!1729970 tp!1729971))))

(declare-fun b!6203451 () Bool)

(declare-fun tp!1729968 () Bool)

(assert (=> b!6203451 (= e!3777468 tp!1729968)))

(declare-fun b!6203449 () Bool)

(assert (=> b!6203449 (= e!3777468 tp_is_empty!41539)))

(assert (=> b!6202713 (= tp!1729898 e!3777468)))

(assert (= (and b!6202713 ((_ is ElementMatch!16143) (regTwo!32798 (regTwo!32799 r!7292)))) b!6203449))

(assert (= (and b!6202713 ((_ is Concat!24988) (regTwo!32798 (regTwo!32799 r!7292)))) b!6203450))

(assert (= (and b!6202713 ((_ is Star!16143) (regTwo!32798 (regTwo!32799 r!7292)))) b!6203451))

(assert (= (and b!6202713 ((_ is Union!16143) (regTwo!32798 (regTwo!32799 r!7292)))) b!6203452))

(declare-fun b!6203453 () Bool)

(declare-fun e!3777469 () Bool)

(declare-fun tp!1729973 () Bool)

(assert (=> b!6203453 (= e!3777469 (and tp_is_empty!41539 tp!1729973))))

(assert (=> b!6202728 (= tp!1729908 e!3777469)))

(assert (= (and b!6202728 ((_ is Cons!64606) (t!378248 (t!378248 s!2326)))) b!6203453))

(declare-fun b!6203457 () Bool)

(declare-fun e!3777470 () Bool)

(declare-fun tp!1729978 () Bool)

(declare-fun tp!1729975 () Bool)

(assert (=> b!6203457 (= e!3777470 (and tp!1729978 tp!1729975))))

(declare-fun b!6203455 () Bool)

(declare-fun tp!1729976 () Bool)

(declare-fun tp!1729977 () Bool)

(assert (=> b!6203455 (= e!3777470 (and tp!1729976 tp!1729977))))

(declare-fun b!6203456 () Bool)

(declare-fun tp!1729974 () Bool)

(assert (=> b!6203456 (= e!3777470 tp!1729974)))

(declare-fun b!6203454 () Bool)

(assert (=> b!6203454 (= e!3777470 tp_is_empty!41539)))

(assert (=> b!6202734 (= tp!1729916 e!3777470)))

(assert (= (and b!6202734 ((_ is ElementMatch!16143) (regOne!32798 (regTwo!32798 r!7292)))) b!6203454))

(assert (= (and b!6202734 ((_ is Concat!24988) (regOne!32798 (regTwo!32798 r!7292)))) b!6203455))

(assert (= (and b!6202734 ((_ is Star!16143) (regOne!32798 (regTwo!32798 r!7292)))) b!6203456))

(assert (= (and b!6202734 ((_ is Union!16143) (regOne!32798 (regTwo!32798 r!7292)))) b!6203457))

(declare-fun b!6203463 () Bool)

(declare-fun e!3777473 () Bool)

(declare-fun tp!1729983 () Bool)

(declare-fun tp!1729980 () Bool)

(assert (=> b!6203463 (= e!3777473 (and tp!1729983 tp!1729980))))

(declare-fun b!6203461 () Bool)

(declare-fun tp!1729981 () Bool)

(declare-fun tp!1729982 () Bool)

(assert (=> b!6203461 (= e!3777473 (and tp!1729981 tp!1729982))))

(declare-fun b!6203462 () Bool)

(declare-fun tp!1729979 () Bool)

(assert (=> b!6203462 (= e!3777473 tp!1729979)))

(declare-fun b!6203460 () Bool)

(assert (=> b!6203460 (= e!3777473 tp_is_empty!41539)))

(assert (=> b!6202734 (= tp!1729917 e!3777473)))

(assert (= (and b!6202734 ((_ is ElementMatch!16143) (regTwo!32798 (regTwo!32798 r!7292)))) b!6203460))

(assert (= (and b!6202734 ((_ is Concat!24988) (regTwo!32798 (regTwo!32798 r!7292)))) b!6203461))

(assert (= (and b!6202734 ((_ is Star!16143) (regTwo!32798 (regTwo!32798 r!7292)))) b!6203462))

(assert (= (and b!6202734 ((_ is Union!16143) (regTwo!32798 (regTwo!32798 r!7292)))) b!6203463))

(declare-fun b!6203467 () Bool)

(declare-fun e!3777474 () Bool)

(declare-fun tp!1729988 () Bool)

(declare-fun tp!1729985 () Bool)

(assert (=> b!6203467 (= e!3777474 (and tp!1729988 tp!1729985))))

(declare-fun b!6203465 () Bool)

(declare-fun tp!1729986 () Bool)

(declare-fun tp!1729987 () Bool)

(assert (=> b!6203465 (= e!3777474 (and tp!1729986 tp!1729987))))

(declare-fun b!6203466 () Bool)

(declare-fun tp!1729984 () Bool)

(assert (=> b!6203466 (= e!3777474 tp!1729984)))

(declare-fun b!6203464 () Bool)

(assert (=> b!6203464 (= e!3777474 tp_is_empty!41539)))

(assert (=> b!6202709 (= tp!1729892 e!3777474)))

(assert (= (and b!6202709 ((_ is ElementMatch!16143) (regOne!32798 (regOne!32799 r!7292)))) b!6203464))

(assert (= (and b!6202709 ((_ is Concat!24988) (regOne!32798 (regOne!32799 r!7292)))) b!6203465))

(assert (= (and b!6202709 ((_ is Star!16143) (regOne!32798 (regOne!32799 r!7292)))) b!6203466))

(assert (= (and b!6202709 ((_ is Union!16143) (regOne!32798 (regOne!32799 r!7292)))) b!6203467))

(declare-fun b!6203471 () Bool)

(declare-fun e!3777475 () Bool)

(declare-fun tp!1729993 () Bool)

(declare-fun tp!1729990 () Bool)

(assert (=> b!6203471 (= e!3777475 (and tp!1729993 tp!1729990))))

(declare-fun b!6203469 () Bool)

(declare-fun tp!1729991 () Bool)

(declare-fun tp!1729992 () Bool)

(assert (=> b!6203469 (= e!3777475 (and tp!1729991 tp!1729992))))

(declare-fun b!6203470 () Bool)

(declare-fun tp!1729989 () Bool)

(assert (=> b!6203470 (= e!3777475 tp!1729989)))

(declare-fun b!6203468 () Bool)

(assert (=> b!6203468 (= e!3777475 tp_is_empty!41539)))

(assert (=> b!6202709 (= tp!1729893 e!3777475)))

(assert (= (and b!6202709 ((_ is ElementMatch!16143) (regTwo!32798 (regOne!32799 r!7292)))) b!6203468))

(assert (= (and b!6202709 ((_ is Concat!24988) (regTwo!32798 (regOne!32799 r!7292)))) b!6203469))

(assert (= (and b!6202709 ((_ is Star!16143) (regTwo!32798 (regOne!32799 r!7292)))) b!6203470))

(assert (= (and b!6202709 ((_ is Union!16143) (regTwo!32798 (regOne!32799 r!7292)))) b!6203471))

(declare-fun b!6203476 () Bool)

(declare-fun e!3777477 () Bool)

(declare-fun tp!1729998 () Bool)

(declare-fun tp!1729995 () Bool)

(assert (=> b!6203476 (= e!3777477 (and tp!1729998 tp!1729995))))

(declare-fun b!6203474 () Bool)

(declare-fun tp!1729996 () Bool)

(declare-fun tp!1729997 () Bool)

(assert (=> b!6203474 (= e!3777477 (and tp!1729996 tp!1729997))))

(declare-fun b!6203475 () Bool)

(declare-fun tp!1729994 () Bool)

(assert (=> b!6203475 (= e!3777477 tp!1729994)))

(declare-fun b!6203473 () Bool)

(assert (=> b!6203473 (= e!3777477 tp_is_empty!41539)))

(assert (=> b!6202710 (= tp!1729890 e!3777477)))

(assert (= (and b!6202710 ((_ is ElementMatch!16143) (reg!16472 (regOne!32799 r!7292)))) b!6203473))

(assert (= (and b!6202710 ((_ is Concat!24988) (reg!16472 (regOne!32799 r!7292)))) b!6203474))

(assert (= (and b!6202710 ((_ is Star!16143) (reg!16472 (regOne!32799 r!7292)))) b!6203475))

(assert (= (and b!6202710 ((_ is Union!16143) (reg!16472 (regOne!32799 r!7292)))) b!6203476))

(declare-fun b!6203480 () Bool)

(declare-fun e!3777478 () Bool)

(declare-fun tp!1730003 () Bool)

(declare-fun tp!1730000 () Bool)

(assert (=> b!6203480 (= e!3777478 (and tp!1730003 tp!1730000))))

(declare-fun b!6203478 () Bool)

(declare-fun tp!1730001 () Bool)

(declare-fun tp!1730002 () Bool)

(assert (=> b!6203478 (= e!3777478 (and tp!1730001 tp!1730002))))

(declare-fun b!6203479 () Bool)

(declare-fun tp!1729999 () Bool)

(assert (=> b!6203479 (= e!3777478 tp!1729999)))

(declare-fun b!6203477 () Bool)

(assert (=> b!6203477 (= e!3777478 tp_is_empty!41539)))

(assert (=> b!6202711 (= tp!1729894 e!3777478)))

(assert (= (and b!6202711 ((_ is ElementMatch!16143) (regOne!32799 (regOne!32799 r!7292)))) b!6203477))

(assert (= (and b!6202711 ((_ is Concat!24988) (regOne!32799 (regOne!32799 r!7292)))) b!6203478))

(assert (= (and b!6202711 ((_ is Star!16143) (regOne!32799 (regOne!32799 r!7292)))) b!6203479))

(assert (= (and b!6202711 ((_ is Union!16143) (regOne!32799 (regOne!32799 r!7292)))) b!6203480))

(declare-fun b!6203486 () Bool)

(declare-fun e!3777481 () Bool)

(declare-fun tp!1730008 () Bool)

(declare-fun tp!1730005 () Bool)

(assert (=> b!6203486 (= e!3777481 (and tp!1730008 tp!1730005))))

(declare-fun b!6203484 () Bool)

(declare-fun tp!1730006 () Bool)

(declare-fun tp!1730007 () Bool)

(assert (=> b!6203484 (= e!3777481 (and tp!1730006 tp!1730007))))

(declare-fun b!6203485 () Bool)

(declare-fun tp!1730004 () Bool)

(assert (=> b!6203485 (= e!3777481 tp!1730004)))

(declare-fun b!6203483 () Bool)

(assert (=> b!6203483 (= e!3777481 tp_is_empty!41539)))

(assert (=> b!6202711 (= tp!1729891 e!3777481)))

(assert (= (and b!6202711 ((_ is ElementMatch!16143) (regTwo!32799 (regOne!32799 r!7292)))) b!6203483))

(assert (= (and b!6202711 ((_ is Concat!24988) (regTwo!32799 (regOne!32799 r!7292)))) b!6203484))

(assert (= (and b!6202711 ((_ is Star!16143) (regTwo!32799 (regOne!32799 r!7292)))) b!6203485))

(assert (= (and b!6202711 ((_ is Union!16143) (regTwo!32799 (regOne!32799 r!7292)))) b!6203486))

(declare-fun b!6203490 () Bool)

(declare-fun e!3777482 () Bool)

(declare-fun tp!1730013 () Bool)

(declare-fun tp!1730010 () Bool)

(assert (=> b!6203490 (= e!3777482 (and tp!1730013 tp!1730010))))

(declare-fun b!6203488 () Bool)

(declare-fun tp!1730011 () Bool)

(declare-fun tp!1730012 () Bool)

(assert (=> b!6203488 (= e!3777482 (and tp!1730011 tp!1730012))))

(declare-fun b!6203489 () Bool)

(declare-fun tp!1730009 () Bool)

(assert (=> b!6203489 (= e!3777482 tp!1730009)))

(declare-fun b!6203487 () Bool)

(assert (=> b!6203487 (= e!3777482 tp_is_empty!41539)))

(assert (=> b!6202731 (= tp!1729909 e!3777482)))

(assert (= (and b!6202731 ((_ is ElementMatch!16143) (reg!16472 (regOne!32798 r!7292)))) b!6203487))

(assert (= (and b!6202731 ((_ is Concat!24988) (reg!16472 (regOne!32798 r!7292)))) b!6203488))

(assert (= (and b!6202731 ((_ is Star!16143) (reg!16472 (regOne!32798 r!7292)))) b!6203489))

(assert (= (and b!6202731 ((_ is Union!16143) (reg!16472 (regOne!32798 r!7292)))) b!6203490))

(declare-fun b!6203494 () Bool)

(declare-fun e!3777483 () Bool)

(declare-fun tp!1730018 () Bool)

(declare-fun tp!1730015 () Bool)

(assert (=> b!6203494 (= e!3777483 (and tp!1730018 tp!1730015))))

(declare-fun b!6203492 () Bool)

(declare-fun tp!1730016 () Bool)

(declare-fun tp!1730017 () Bool)

(assert (=> b!6203492 (= e!3777483 (and tp!1730016 tp!1730017))))

(declare-fun b!6203493 () Bool)

(declare-fun tp!1730014 () Bool)

(assert (=> b!6203493 (= e!3777483 tp!1730014)))

(declare-fun b!6203491 () Bool)

(assert (=> b!6203491 (= e!3777483 tp_is_empty!41539)))

(assert (=> b!6202732 (= tp!1729913 e!3777483)))

(assert (= (and b!6202732 ((_ is ElementMatch!16143) (regOne!32799 (regOne!32798 r!7292)))) b!6203491))

(assert (= (and b!6202732 ((_ is Concat!24988) (regOne!32799 (regOne!32798 r!7292)))) b!6203492))

(assert (= (and b!6202732 ((_ is Star!16143) (regOne!32799 (regOne!32798 r!7292)))) b!6203493))

(assert (= (and b!6202732 ((_ is Union!16143) (regOne!32799 (regOne!32798 r!7292)))) b!6203494))

(declare-fun b!6203498 () Bool)

(declare-fun e!3777484 () Bool)

(declare-fun tp!1730023 () Bool)

(declare-fun tp!1730020 () Bool)

(assert (=> b!6203498 (= e!3777484 (and tp!1730023 tp!1730020))))

(declare-fun b!6203496 () Bool)

(declare-fun tp!1730021 () Bool)

(declare-fun tp!1730022 () Bool)

(assert (=> b!6203496 (= e!3777484 (and tp!1730021 tp!1730022))))

(declare-fun b!6203497 () Bool)

(declare-fun tp!1730019 () Bool)

(assert (=> b!6203497 (= e!3777484 tp!1730019)))

(declare-fun b!6203495 () Bool)

(assert (=> b!6203495 (= e!3777484 tp_is_empty!41539)))

(assert (=> b!6202732 (= tp!1729910 e!3777484)))

(assert (= (and b!6202732 ((_ is ElementMatch!16143) (regTwo!32799 (regOne!32798 r!7292)))) b!6203495))

(assert (= (and b!6202732 ((_ is Concat!24988) (regTwo!32799 (regOne!32798 r!7292)))) b!6203496))

(assert (= (and b!6202732 ((_ is Star!16143) (regTwo!32799 (regOne!32798 r!7292)))) b!6203497))

(assert (= (and b!6202732 ((_ is Union!16143) (regTwo!32799 (regOne!32798 r!7292)))) b!6203498))

(declare-fun b!6203502 () Bool)

(declare-fun e!3777485 () Bool)

(declare-fun tp!1730028 () Bool)

(declare-fun tp!1730025 () Bool)

(assert (=> b!6203502 (= e!3777485 (and tp!1730028 tp!1730025))))

(declare-fun b!6203500 () Bool)

(declare-fun tp!1730026 () Bool)

(declare-fun tp!1730027 () Bool)

(assert (=> b!6203500 (= e!3777485 (and tp!1730026 tp!1730027))))

(declare-fun b!6203501 () Bool)

(declare-fun tp!1730024 () Bool)

(assert (=> b!6203501 (= e!3777485 tp!1730024)))

(declare-fun b!6203499 () Bool)

(assert (=> b!6203499 (= e!3777485 tp_is_empty!41539)))

(assert (=> b!6202730 (= tp!1729911 e!3777485)))

(assert (= (and b!6202730 ((_ is ElementMatch!16143) (regOne!32798 (regOne!32798 r!7292)))) b!6203499))

(assert (= (and b!6202730 ((_ is Concat!24988) (regOne!32798 (regOne!32798 r!7292)))) b!6203500))

(assert (= (and b!6202730 ((_ is Star!16143) (regOne!32798 (regOne!32798 r!7292)))) b!6203501))

(assert (= (and b!6202730 ((_ is Union!16143) (regOne!32798 (regOne!32798 r!7292)))) b!6203502))

(declare-fun b!6203506 () Bool)

(declare-fun e!3777486 () Bool)

(declare-fun tp!1730033 () Bool)

(declare-fun tp!1730030 () Bool)

(assert (=> b!6203506 (= e!3777486 (and tp!1730033 tp!1730030))))

(declare-fun b!6203504 () Bool)

(declare-fun tp!1730031 () Bool)

(declare-fun tp!1730032 () Bool)

(assert (=> b!6203504 (= e!3777486 (and tp!1730031 tp!1730032))))

(declare-fun b!6203505 () Bool)

(declare-fun tp!1730029 () Bool)

(assert (=> b!6203505 (= e!3777486 tp!1730029)))

(declare-fun b!6203503 () Bool)

(assert (=> b!6203503 (= e!3777486 tp_is_empty!41539)))

(assert (=> b!6202730 (= tp!1729912 e!3777486)))

(assert (= (and b!6202730 ((_ is ElementMatch!16143) (regTwo!32798 (regOne!32798 r!7292)))) b!6203503))

(assert (= (and b!6202730 ((_ is Concat!24988) (regTwo!32798 (regOne!32798 r!7292)))) b!6203504))

(assert (= (and b!6202730 ((_ is Star!16143) (regTwo!32798 (regOne!32798 r!7292)))) b!6203505))

(assert (= (and b!6202730 ((_ is Union!16143) (regTwo!32798 (regOne!32798 r!7292)))) b!6203506))

(declare-fun b!6203510 () Bool)

(declare-fun e!3777487 () Bool)

(declare-fun tp!1730038 () Bool)

(declare-fun tp!1730035 () Bool)

(assert (=> b!6203510 (= e!3777487 (and tp!1730038 tp!1730035))))

(declare-fun b!6203508 () Bool)

(declare-fun tp!1730036 () Bool)

(declare-fun tp!1730037 () Bool)

(assert (=> b!6203508 (= e!3777487 (and tp!1730036 tp!1730037))))

(declare-fun b!6203509 () Bool)

(declare-fun tp!1730034 () Bool)

(assert (=> b!6203509 (= e!3777487 tp!1730034)))

(declare-fun b!6203507 () Bool)

(assert (=> b!6203507 (= e!3777487 tp_is_empty!41539)))

(assert (=> b!6202707 (= tp!1729888 e!3777487)))

(assert (= (and b!6202707 ((_ is ElementMatch!16143) (h!71052 (exprs!6027 setElem!42104)))) b!6203507))

(assert (= (and b!6202707 ((_ is Concat!24988) (h!71052 (exprs!6027 setElem!42104)))) b!6203508))

(assert (= (and b!6202707 ((_ is Star!16143) (h!71052 (exprs!6027 setElem!42104)))) b!6203509))

(assert (= (and b!6202707 ((_ is Union!16143) (h!71052 (exprs!6027 setElem!42104)))) b!6203510))

(declare-fun b!6203511 () Bool)

(declare-fun e!3777488 () Bool)

(declare-fun tp!1730039 () Bool)

(declare-fun tp!1730040 () Bool)

(assert (=> b!6203511 (= e!3777488 (and tp!1730039 tp!1730040))))

(assert (=> b!6202707 (= tp!1729889 e!3777488)))

(assert (= (and b!6202707 ((_ is Cons!64604) (t!378246 (exprs!6027 setElem!42104)))) b!6203511))

(declare-fun b!6203513 () Bool)

(declare-fun e!3777490 () Bool)

(declare-fun tp!1730041 () Bool)

(assert (=> b!6203513 (= e!3777490 tp!1730041)))

(declare-fun tp!1730042 () Bool)

(declare-fun e!3777489 () Bool)

(declare-fun b!6203512 () Bool)

(assert (=> b!6203512 (= e!3777489 (and (inv!83604 (h!71053 (t!378247 (t!378247 zl!343)))) e!3777490 tp!1730042))))

(assert (=> b!6202722 (= tp!1729905 e!3777489)))

(assert (= b!6203512 b!6203513))

(assert (= (and b!6202722 ((_ is Cons!64605) (t!378247 (t!378247 zl!343)))) b!6203512))

(declare-fun m!7035480 () Bool)

(assert (=> b!6203512 m!7035480))

(declare-fun condSetEmpty!42114 () Bool)

(assert (=> setNonEmpty!42110 (= condSetEmpty!42114 (= setRest!42110 ((as const (Array Context!11054 Bool)) false)))))

(declare-fun setRes!42114 () Bool)

(assert (=> setNonEmpty!42110 (= tp!1729865 setRes!42114)))

(declare-fun setIsEmpty!42114 () Bool)

(assert (=> setIsEmpty!42114 setRes!42114))

(declare-fun setNonEmpty!42114 () Bool)

(declare-fun tp!1730043 () Bool)

(declare-fun setElem!42114 () Context!11054)

(declare-fun e!3777491 () Bool)

(assert (=> setNonEmpty!42114 (= setRes!42114 (and tp!1730043 (inv!83604 setElem!42114) e!3777491))))

(declare-fun setRest!42114 () (InoxSet Context!11054))

(assert (=> setNonEmpty!42114 (= setRest!42110 ((_ map or) (store ((as const (Array Context!11054 Bool)) false) setElem!42114 true) setRest!42114))))

(declare-fun b!6203514 () Bool)

(declare-fun tp!1730044 () Bool)

(assert (=> b!6203514 (= e!3777491 tp!1730044)))

(assert (= (and setNonEmpty!42110 condSetEmpty!42114) setIsEmpty!42114))

(assert (= (and setNonEmpty!42110 (not condSetEmpty!42114)) setNonEmpty!42114))

(assert (= setNonEmpty!42114 b!6203514))

(declare-fun m!7035482 () Bool)

(assert (=> setNonEmpty!42114 m!7035482))

(declare-fun b!6203515 () Bool)

(declare-fun e!3777492 () Bool)

(declare-fun tp!1730045 () Bool)

(declare-fun tp!1730046 () Bool)

(assert (=> b!6203515 (= e!3777492 (and tp!1730045 tp!1730046))))

(assert (=> b!6202723 (= tp!1729904 e!3777492)))

(assert (= (and b!6202723 ((_ is Cons!64604) (exprs!6027 (h!71053 (t!378247 zl!343))))) b!6203515))

(declare-fun b!6203516 () Bool)

(declare-fun e!3777493 () Bool)

(declare-fun tp!1730047 () Bool)

(declare-fun tp!1730048 () Bool)

(assert (=> b!6203516 (= e!3777493 (and tp!1730047 tp!1730048))))

(assert (=> b!6202687 (= tp!1729866 e!3777493)))

(assert (= (and b!6202687 ((_ is Cons!64604) (exprs!6027 setElem!42110))) b!6203516))

(declare-fun b!6203520 () Bool)

(declare-fun e!3777494 () Bool)

(declare-fun tp!1730053 () Bool)

(declare-fun tp!1730050 () Bool)

(assert (=> b!6203520 (= e!3777494 (and tp!1730053 tp!1730050))))

(declare-fun b!6203518 () Bool)

(declare-fun tp!1730051 () Bool)

(declare-fun tp!1730052 () Bool)

(assert (=> b!6203518 (= e!3777494 (and tp!1730051 tp!1730052))))

(declare-fun b!6203519 () Bool)

(declare-fun tp!1730049 () Bool)

(assert (=> b!6203519 (= e!3777494 tp!1730049)))

(declare-fun b!6203517 () Bool)

(assert (=> b!6203517 (= e!3777494 tp_is_empty!41539)))

(assert (=> b!6202700 (= tp!1729877 e!3777494)))

(assert (= (and b!6202700 ((_ is ElementMatch!16143) (reg!16472 (reg!16472 r!7292)))) b!6203517))

(assert (= (and b!6202700 ((_ is Concat!24988) (reg!16472 (reg!16472 r!7292)))) b!6203518))

(assert (= (and b!6202700 ((_ is Star!16143) (reg!16472 (reg!16472 r!7292)))) b!6203519))

(assert (= (and b!6202700 ((_ is Union!16143) (reg!16472 (reg!16472 r!7292)))) b!6203520))

(declare-fun b!6203524 () Bool)

(declare-fun e!3777495 () Bool)

(declare-fun tp!1730058 () Bool)

(declare-fun tp!1730055 () Bool)

(assert (=> b!6203524 (= e!3777495 (and tp!1730058 tp!1730055))))

(declare-fun b!6203522 () Bool)

(declare-fun tp!1730056 () Bool)

(declare-fun tp!1730057 () Bool)

(assert (=> b!6203522 (= e!3777495 (and tp!1730056 tp!1730057))))

(declare-fun b!6203523 () Bool)

(declare-fun tp!1730054 () Bool)

(assert (=> b!6203523 (= e!3777495 tp!1730054)))

(declare-fun b!6203521 () Bool)

(assert (=> b!6203521 (= e!3777495 tp_is_empty!41539)))

(assert (=> b!6202714 (= tp!1729895 e!3777495)))

(assert (= (and b!6202714 ((_ is ElementMatch!16143) (reg!16472 (regTwo!32799 r!7292)))) b!6203521))

(assert (= (and b!6202714 ((_ is Concat!24988) (reg!16472 (regTwo!32799 r!7292)))) b!6203522))

(assert (= (and b!6202714 ((_ is Star!16143) (reg!16472 (regTwo!32799 r!7292)))) b!6203523))

(assert (= (and b!6202714 ((_ is Union!16143) (reg!16472 (regTwo!32799 r!7292)))) b!6203524))

(declare-fun b!6203528 () Bool)

(declare-fun e!3777496 () Bool)

(declare-fun tp!1730063 () Bool)

(declare-fun tp!1730060 () Bool)

(assert (=> b!6203528 (= e!3777496 (and tp!1730063 tp!1730060))))

(declare-fun b!6203526 () Bool)

(declare-fun tp!1730061 () Bool)

(declare-fun tp!1730062 () Bool)

(assert (=> b!6203526 (= e!3777496 (and tp!1730061 tp!1730062))))

(declare-fun b!6203527 () Bool)

(declare-fun tp!1730059 () Bool)

(assert (=> b!6203527 (= e!3777496 tp!1730059)))

(declare-fun b!6203525 () Bool)

(assert (=> b!6203525 (= e!3777496 tp_is_empty!41539)))

(assert (=> b!6202701 (= tp!1729881 e!3777496)))

(assert (= (and b!6202701 ((_ is ElementMatch!16143) (regOne!32799 (reg!16472 r!7292)))) b!6203525))

(assert (= (and b!6202701 ((_ is Concat!24988) (regOne!32799 (reg!16472 r!7292)))) b!6203526))

(assert (= (and b!6202701 ((_ is Star!16143) (regOne!32799 (reg!16472 r!7292)))) b!6203527))

(assert (= (and b!6202701 ((_ is Union!16143) (regOne!32799 (reg!16472 r!7292)))) b!6203528))

(declare-fun b!6203532 () Bool)

(declare-fun e!3777497 () Bool)

(declare-fun tp!1730068 () Bool)

(declare-fun tp!1730065 () Bool)

(assert (=> b!6203532 (= e!3777497 (and tp!1730068 tp!1730065))))

(declare-fun b!6203530 () Bool)

(declare-fun tp!1730066 () Bool)

(declare-fun tp!1730067 () Bool)

(assert (=> b!6203530 (= e!3777497 (and tp!1730066 tp!1730067))))

(declare-fun b!6203531 () Bool)

(declare-fun tp!1730064 () Bool)

(assert (=> b!6203531 (= e!3777497 tp!1730064)))

(declare-fun b!6203529 () Bool)

(assert (=> b!6203529 (= e!3777497 tp_is_empty!41539)))

(assert (=> b!6202701 (= tp!1729878 e!3777497)))

(assert (= (and b!6202701 ((_ is ElementMatch!16143) (regTwo!32799 (reg!16472 r!7292)))) b!6203529))

(assert (= (and b!6202701 ((_ is Concat!24988) (regTwo!32799 (reg!16472 r!7292)))) b!6203530))

(assert (= (and b!6202701 ((_ is Star!16143) (regTwo!32799 (reg!16472 r!7292)))) b!6203531))

(assert (= (and b!6202701 ((_ is Union!16143) (regTwo!32799 (reg!16472 r!7292)))) b!6203532))

(declare-fun b!6203536 () Bool)

(declare-fun e!3777498 () Bool)

(declare-fun tp!1730073 () Bool)

(declare-fun tp!1730070 () Bool)

(assert (=> b!6203536 (= e!3777498 (and tp!1730073 tp!1730070))))

(declare-fun b!6203534 () Bool)

(declare-fun tp!1730071 () Bool)

(declare-fun tp!1730072 () Bool)

(assert (=> b!6203534 (= e!3777498 (and tp!1730071 tp!1730072))))

(declare-fun b!6203535 () Bool)

(declare-fun tp!1730069 () Bool)

(assert (=> b!6203535 (= e!3777498 tp!1730069)))

(declare-fun b!6203533 () Bool)

(assert (=> b!6203533 (= e!3777498 tp_is_empty!41539)))

(assert (=> b!6202715 (= tp!1729899 e!3777498)))

(assert (= (and b!6202715 ((_ is ElementMatch!16143) (regOne!32799 (regTwo!32799 r!7292)))) b!6203533))

(assert (= (and b!6202715 ((_ is Concat!24988) (regOne!32799 (regTwo!32799 r!7292)))) b!6203534))

(assert (= (and b!6202715 ((_ is Star!16143) (regOne!32799 (regTwo!32799 r!7292)))) b!6203535))

(assert (= (and b!6202715 ((_ is Union!16143) (regOne!32799 (regTwo!32799 r!7292)))) b!6203536))

(declare-fun b!6203540 () Bool)

(declare-fun e!3777499 () Bool)

(declare-fun tp!1730078 () Bool)

(declare-fun tp!1730075 () Bool)

(assert (=> b!6203540 (= e!3777499 (and tp!1730078 tp!1730075))))

(declare-fun b!6203538 () Bool)

(declare-fun tp!1730076 () Bool)

(declare-fun tp!1730077 () Bool)

(assert (=> b!6203538 (= e!3777499 (and tp!1730076 tp!1730077))))

(declare-fun b!6203539 () Bool)

(declare-fun tp!1730074 () Bool)

(assert (=> b!6203539 (= e!3777499 tp!1730074)))

(declare-fun b!6203537 () Bool)

(assert (=> b!6203537 (= e!3777499 tp_is_empty!41539)))

(assert (=> b!6202715 (= tp!1729896 e!3777499)))

(assert (= (and b!6202715 ((_ is ElementMatch!16143) (regTwo!32799 (regTwo!32799 r!7292)))) b!6203537))

(assert (= (and b!6202715 ((_ is Concat!24988) (regTwo!32799 (regTwo!32799 r!7292)))) b!6203538))

(assert (= (and b!6202715 ((_ is Star!16143) (regTwo!32799 (regTwo!32799 r!7292)))) b!6203539))

(assert (= (and b!6202715 ((_ is Union!16143) (regTwo!32799 (regTwo!32799 r!7292)))) b!6203540))

(declare-fun b_lambda!235923 () Bool)

(assert (= b_lambda!235901 (or d!1944169 b_lambda!235923)))

(declare-fun bs!1538961 () Bool)

(declare-fun d!1944645 () Bool)

(assert (= bs!1538961 (and d!1944645 d!1944169)))

(assert (=> bs!1538961 (= (dynLambda!25480 lambda!338907 (h!71052 (exprs!6027 lt!2343073))) (validRegex!7879 (h!71052 (exprs!6027 lt!2343073))))))

(declare-fun m!7035484 () Bool)

(assert (=> bs!1538961 m!7035484))

(assert (=> b!6202752 d!1944645))

(declare-fun b_lambda!235925 () Bool)

(assert (= b_lambda!235913 (or d!1944261 b_lambda!235925)))

(declare-fun bs!1538962 () Bool)

(declare-fun d!1944647 () Bool)

(assert (= bs!1538962 (and d!1944647 d!1944261)))

(assert (=> bs!1538962 (= (dynLambda!25480 lambda!338943 (h!71052 (exprs!6027 (h!71053 zl!343)))) (validRegex!7879 (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(declare-fun m!7035486 () Bool)

(assert (=> bs!1538962 m!7035486))

(assert (=> b!6202984 d!1944647))

(declare-fun b_lambda!235927 () Bool)

(assert (= b_lambda!235911 (or b!6201985 b_lambda!235927)))

(assert (=> d!1944423 d!1944305))

(declare-fun b_lambda!235929 () Bool)

(assert (= b_lambda!235905 (or d!1944251 b_lambda!235929)))

(declare-fun bs!1538963 () Bool)

(declare-fun d!1944649 () Bool)

(assert (= bs!1538963 (and d!1944649 d!1944251)))

(assert (=> bs!1538963 (= (dynLambda!25480 lambda!338942 (h!71052 lt!2343136)) (validRegex!7879 (h!71052 lt!2343136)))))

(declare-fun m!7035488 () Bool)

(assert (=> bs!1538963 m!7035488))

(assert (=> b!6202920 d!1944649))

(declare-fun b_lambda!235931 () Bool)

(assert (= b_lambda!235903 (or d!1944167 b_lambda!235931)))

(declare-fun bs!1538964 () Bool)

(declare-fun d!1944651 () Bool)

(assert (= bs!1538964 (and d!1944651 d!1944167)))

(assert (=> bs!1538964 (= (dynLambda!25480 lambda!338906 (h!71052 (exprs!6027 setElem!42104))) (validRegex!7879 (h!71052 (exprs!6027 setElem!42104))))))

(declare-fun m!7035490 () Bool)

(assert (=> bs!1538964 m!7035490))

(assert (=> b!6202846 d!1944651))

(declare-fun b_lambda!235933 () Bool)

(assert (= b_lambda!235919 (or d!1944283 b_lambda!235933)))

(declare-fun bs!1538965 () Bool)

(declare-fun d!1944653 () Bool)

(assert (= bs!1538965 (and d!1944653 d!1944283)))

(assert (=> bs!1538965 (= (dynLambda!25480 lambda!338961 (h!71052 (exprs!6027 (h!71053 zl!343)))) (validRegex!7879 (h!71052 (exprs!6027 (h!71053 zl!343)))))))

(assert (=> bs!1538965 m!7035486))

(assert (=> b!6203304 d!1944653))

(declare-fun b_lambda!235935 () Bool)

(assert (= b_lambda!235909 (or d!1944247 b_lambda!235935)))

(declare-fun bs!1538966 () Bool)

(declare-fun d!1944655 () Bool)

(assert (= bs!1538966 (and d!1944655 d!1944247)))

(assert (=> bs!1538966 (= (dynLambda!25480 lambda!338939 (h!71052 (unfocusZipperList!1564 zl!343))) (validRegex!7879 (h!71052 (unfocusZipperList!1564 zl!343))))))

(declare-fun m!7035492 () Bool)

(assert (=> bs!1538966 m!7035492))

(assert (=> b!6202948 d!1944655))

(check-sat (not b!6203277) (not b!6203089) (not bm!519212) (not b!6203291) (not b!6202797) (not bm!519302) (not bm!519310) (not bm!519270) (not b!6203478) (not bm!519237) (not bm!519313) (not b!6203486) (not d!1944577) (not b!6202788) (not d!1944347) (not d!1944581) (not b!6203427) (not bm!519250) (not b!6202887) (not bm!519344) (not bm!519200) (not b!6203110) (not bm!519309) (not b!6202780) (not bm!519252) (not b!6202962) (not d!1944499) (not b!6203430) (not b!6202916) (not b!6203401) (not b!6203013) (not b!6203400) (not d!1944319) (not b!6202813) (not d!1944461) (not b!6203532) (not bm!519321) (not setNonEmpty!42113) (not b!6203474) (not b!6203528) (not b!6203489) (not b!6202982) (not b!6203438) (not b_lambda!235923) (not b!6202852) (not b!6202888) (not d!1944487) (not b!6203514) (not bm!519207) (not bm!519214) (not b!6203461) (not b!6203470) (not bm!519330) (not b!6203023) (not b!6203540) (not bm!519211) (not b!6203146) (not b!6203520) (not b!6203183) (not b!6202764) (not b!6203192) (not b!6202937) (not b!6203531) (not b!6202847) (not b!6203501) (not d!1944325) (not b!6203011) (not b!6203290) (not d!1944349) (not setNonEmpty!42114) (not b!6203465) (not d!1944425) (not d!1944579) (not bm!519324) (not b!6202931) (not b!6203513) (not b!6203104) (not b!6203398) (not b!6203496) (not b!6203163) (not b!6202969) (not b!6203492) (not bm!519312) (not b!6203086) (not d!1944497) (not b!6202808) (not d!1944449) (not bm!519246) (not b!6203394) (not d!1944471) (not b!6202779) (not b!6203077) (not b!6203523) (not d!1944559) (not b!6203207) (not bm!519295) (not b!6203510) (not d!1944495) (not b!6203534) (not b!6203305) (not b!6203505) (not d!1944575) (not bm!519210) (not b!6203102) (not bs!1538962) (not b!6203504) (not b!6203288) (not bm!519342) (not b!6203497) (not b!6203440) (not bs!1538966) (not d!1944315) (not b!6203019) (not b!6203196) (not bm!519306) (not b!6203539) (not b!6203292) (not b!6203519) (not b!6203471) (not b!6203508) (not b!6203511) (not bm!519233) (not d!1944369) (not bm!519327) (not bm!519315) (not b!6202957) (not b!6203524) (not b!6203266) (not b!6203078) (not bm!519243) (not bm!519300) (not b!6203319) (not b!6202794) (not b!6203476) (not b!6203393) (not b!6202767) (not b!6203455) (not b!6203479) (not b!6203518) (not b!6202783) (not b!6202968) (not b!6202921) (not b!6203114) (not b!6203467) (not b!6203450) (not bs!1538965) (not b!6203399) (not b!6202811) (not b!6203080) (not b!6203502) (not b!6203448) (not b!6203203) (not b!6202851) (not b!6203022) (not d!1944389) (not bm!519328) (not b!6203446) (not b!6203536) (not bm!519249) (not b!6203116) (not b!6202774) (not b!6203380) (not b!6202744) (not d!1944375) (not b!6202949) (not b!6203538) (not b!6203516) (not b!6203453) (not b!6203522) (not bm!519354) (not b!6203145) (not b!6203436) (not d!1944533) (not d!1944609) (not bm!519322) (not b!6203456) (not b!6202993) (not b!6203494) (not b_lambda!235935) (not b!6202768) (not b!6203451) (not d!1944313) (not b!6202773) (not bs!1538964) (not b!6203016) (not b!6202763) (not b!6203423) (not d!1944423) (not b!6202820) (not b!6202815) (not bm!519274) (not b!6203136) (not b!6203113) (not b!6203147) (not b!6202807) (not b!6202985) (not bm!519307) (not b_lambda!235933) (not d!1944387) (not b!6203421) (not bm!519206) (not b!6203442) (not b!6202828) (not b_lambda!235927) (not bm!519234) (not bm!519260) (not b_lambda!235931) (not bs!1538961) (not bm!519244) (not d!1944457) (not d!1944463) (not b!6203480) (not b!6203515) (not d!1944547) (not b!6203276) (not d!1944311) (not b!6203457) (not d!1944481) (not bm!519329) (not d!1944339) (not b!6203434) tp_is_empty!41539 (not bm!519290) (not b!6203090) (not b!6203452) (not b!6203469) (not b!6203419) (not b!6202819) (not bm!519201) (not b!6202777) (not b!6203498) (not b!6203443) (not b!6202814) (not b_lambda!235899) (not bm!519267) (not b!6203426) (not d!1944417) (not b!6202959) (not b!6203447) (not b!6203475) (not b!6203535) (not bm!519350) (not b!6202776) (not d!1944377) (not b!6202809) (not bs!1538963) (not b!6203073) (not bm!519341) (not d!1944327) (not b!6203488) (not b!6203526) (not b!6203429) (not bm!519345) (not b!6203083) (not b!6203318) (not b!6203462) (not d!1944421) (not d!1944563) (not bm!519268) (not b!6203463) (not bm!519256) (not b!6203466) (not d!1944337) (not bm!519351) (not b_lambda!235925) (not b!6202896) (not bm!519219) (not d!1944601) (not b!6203439) (not b!6203295) (not d!1944453) (not b!6202778) (not bm!519301) (not bm!519347) (not b!6203484) (not bm!519353) (not bm!519289) (not d!1944447) (not b!6203392) (not bm!519235) (not b!6203425) (not b!6203444) (not bm!519203) (not b!6202965) (not bm!519208) (not b!6203512) (not b!6202785) (not b_lambda!235929) (not b!6202771) (not b!6203490) (not b!6202795) (not b!6203431) (not b!6202753) (not b!6202791) (not b!6203107) (not b!6203435) (not b!6203527) (not d!1944485) (not b!6203506) (not b!6203509) (not b!6203485) (not b!6203530) (not b!6203289) (not b!6203422) (not b!6203493) (not d!1944317) (not b!6203500) (not bm!519255) (not b!6203433))
(check-sat)
