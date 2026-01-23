; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!233252 () Bool)

(assert start!233252)

(declare-fun b!2377024 () Bool)

(assert (=> b!2377024 true))

(assert (=> b!2377024 true))

(declare-fun lambda!88339 () Int)

(declare-fun lambda!88338 () Int)

(assert (=> b!2377024 (not (= lambda!88339 lambda!88338))))

(assert (=> b!2377024 true))

(assert (=> b!2377024 true))

(declare-fun b!2377019 () Bool)

(declare-fun e!1516497 () Bool)

(declare-fun tp!759221 () Bool)

(assert (=> b!2377019 (= e!1516497 tp!759221)))

(declare-fun b!2377020 () Bool)

(declare-fun e!1516500 () Bool)

(declare-fun tp!759224 () Bool)

(declare-fun tp!759222 () Bool)

(assert (=> b!2377020 (= e!1516500 (and tp!759224 tp!759222))))

(declare-fun b!2377021 () Bool)

(declare-fun e!1516495 () Bool)

(declare-fun tp_is_empty!11347 () Bool)

(declare-fun tp!759225 () Bool)

(assert (=> b!2377021 (= e!1516495 (and tp_is_empty!11347 tp!759225))))

(declare-fun b!2377022 () Bool)

(assert (=> b!2377022 (= e!1516497 tp_is_empty!11347)))

(declare-fun b!2377023 () Bool)

(declare-fun e!1516501 () Bool)

(assert (=> b!2377023 (= e!1516501 true)))

(declare-datatypes ((C!14092 0))(
  ( (C!14093 (val!8288 Int)) )
))
(declare-datatypes ((List!28172 0))(
  ( (Nil!28074) (Cons!28074 (h!33475 C!14092) (t!208149 List!28172)) )
))
(declare-datatypes ((tuple2!27798 0))(
  ( (tuple2!27799 (_1!16440 List!28172) (_2!16440 List!28172)) )
))
(declare-datatypes ((Option!5510 0))(
  ( (None!5509) (Some!5509 (v!30917 tuple2!27798)) )
))
(declare-fun lt!867264 () Option!5510)

(declare-datatypes ((Regex!6967 0))(
  ( (ElementMatch!6967 (c!377847 C!14092)) (Concat!11603 (regOne!14446 Regex!6967) (regTwo!14446 Regex!6967)) (EmptyExpr!6967) (Star!6967 (reg!7296 Regex!6967)) (EmptyLang!6967) (Union!6967 (regOne!14447 Regex!6967) (regTwo!14447 Regex!6967)) )
))
(declare-fun lt!867268 () Regex!6967)

(declare-fun s!9460 () List!28172)

(declare-fun findConcatSeparation!618 (Regex!6967 Regex!6967 List!28172 List!28172 List!28172) Option!5510)

(assert (=> b!2377023 (= lt!867264 (findConcatSeparation!618 lt!867268 EmptyExpr!6967 Nil!28074 s!9460 s!9460))))

(declare-fun e!1516498 () Bool)

(declare-fun e!1516502 () Bool)

(assert (=> b!2377024 (= e!1516498 e!1516502)))

(declare-fun res!1009283 () Bool)

(assert (=> b!2377024 (=> res!1009283 e!1516502)))

(declare-fun lt!867272 () Bool)

(declare-fun lt!867267 () Bool)

(assert (=> b!2377024 (= res!1009283 (not (= lt!867272 lt!867267)))))

(declare-fun Exists!1029 (Int) Bool)

(assert (=> b!2377024 (= (Exists!1029 lambda!88338) (Exists!1029 lambda!88339))))

(declare-datatypes ((Unit!40969 0))(
  ( (Unit!40970) )
))
(declare-fun lt!867265 () Unit!40969)

(declare-fun r!13927 () Regex!6967)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!368 (Regex!6967 Regex!6967 List!28172) Unit!40969)

(assert (=> b!2377024 (= lt!867265 (lemmaExistCutMatchRandMatchRSpecEquivalent!368 (regOne!14446 r!13927) (regTwo!14446 r!13927) s!9460))))

(assert (=> b!2377024 (= lt!867267 (Exists!1029 lambda!88338))))

(declare-fun isDefined!4338 (Option!5510) Bool)

(assert (=> b!2377024 (= lt!867267 (isDefined!4338 (findConcatSeparation!618 (regOne!14446 r!13927) (regTwo!14446 r!13927) Nil!28074 s!9460 s!9460)))))

(declare-fun lt!867270 () Unit!40969)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!618 (Regex!6967 Regex!6967 List!28172) Unit!40969)

(assert (=> b!2377024 (= lt!867270 (lemmaFindConcatSeparationEquivalentToExists!618 (regOne!14446 r!13927) (regTwo!14446 r!13927) s!9460))))

(declare-fun b!2377025 () Bool)

(declare-fun e!1516499 () Bool)

(assert (=> b!2377025 (= e!1516502 e!1516499)))

(declare-fun res!1009286 () Bool)

(assert (=> b!2377025 (=> res!1009286 e!1516499)))

(declare-datatypes ((List!28173 0))(
  ( (Nil!28075) (Cons!28075 (h!33476 Regex!6967) (t!208150 List!28173)) )
))
(declare-fun lt!867269 () List!28173)

(declare-fun isEmpty!16017 (List!28173) Bool)

(assert (=> b!2377025 (= res!1009286 (not (isEmpty!16017 lt!867269)))))

(declare-fun l!9164 () List!28173)

(declare-fun tail!3440 (List!28173) List!28173)

(assert (=> b!2377025 (= lt!867269 (tail!3440 l!9164))))

(declare-fun res!1009280 () Bool)

(declare-fun e!1516496 () Bool)

(assert (=> start!233252 (=> (not res!1009280) (not e!1516496))))

(declare-fun lambda!88337 () Int)

(declare-fun forall!5601 (List!28173 Int) Bool)

(assert (=> start!233252 (= res!1009280 (forall!5601 l!9164 lambda!88337))))

(assert (=> start!233252 e!1516496))

(assert (=> start!233252 e!1516500))

(assert (=> start!233252 e!1516497))

(assert (=> start!233252 e!1516495))

(declare-fun b!2377026 () Bool)

(declare-fun tp!759219 () Bool)

(declare-fun tp!759218 () Bool)

(assert (=> b!2377026 (= e!1516497 (and tp!759219 tp!759218))))

(declare-fun b!2377027 () Bool)

(declare-fun res!1009284 () Bool)

(assert (=> b!2377027 (=> res!1009284 e!1516502)))

(assert (=> b!2377027 (= res!1009284 (isEmpty!16017 l!9164))))

(declare-fun b!2377028 () Bool)

(declare-fun res!1009279 () Bool)

(assert (=> b!2377028 (=> (not res!1009279) (not e!1516496))))

(declare-fun generalisedConcat!68 (List!28173) Regex!6967)

(assert (=> b!2377028 (= res!1009279 (= r!13927 (generalisedConcat!68 l!9164)))))

(declare-fun b!2377029 () Bool)

(assert (=> b!2377029 (= e!1516499 e!1516501)))

(declare-fun res!1009285 () Bool)

(assert (=> b!2377029 (=> res!1009285 e!1516501)))

(declare-fun matchR!3084 (Regex!6967 List!28172) Bool)

(assert (=> b!2377029 (= res!1009285 (matchR!3084 lt!867268 s!9460))))

(declare-fun head!5170 (List!28173) Regex!6967)

(assert (=> b!2377029 (= lt!867268 (head!5170 l!9164))))

(declare-fun b!2377030 () Bool)

(assert (=> b!2377030 (= e!1516496 (not e!1516498))))

(declare-fun res!1009282 () Bool)

(assert (=> b!2377030 (=> res!1009282 e!1516498)))

(get-info :version)

(assert (=> b!2377030 (= res!1009282 (not ((_ is Concat!11603) r!13927)))))

(declare-fun lt!867266 () Bool)

(assert (=> b!2377030 (= lt!867266 lt!867272)))

(declare-fun matchRSpec!816 (Regex!6967 List!28172) Bool)

(assert (=> b!2377030 (= lt!867272 (matchRSpec!816 r!13927 s!9460))))

(assert (=> b!2377030 (= lt!867266 (matchR!3084 r!13927 s!9460))))

(declare-fun lt!867271 () Unit!40969)

(declare-fun mainMatchTheorem!816 (Regex!6967 List!28172) Unit!40969)

(assert (=> b!2377030 (= lt!867271 (mainMatchTheorem!816 r!13927 s!9460))))

(declare-fun b!2377031 () Bool)

(declare-fun tp!759223 () Bool)

(declare-fun tp!759220 () Bool)

(assert (=> b!2377031 (= e!1516497 (and tp!759223 tp!759220))))

(declare-fun b!2377032 () Bool)

(declare-fun res!1009281 () Bool)

(assert (=> b!2377032 (=> res!1009281 e!1516499)))

(assert (=> b!2377032 (= res!1009281 (not (= (generalisedConcat!68 lt!867269) EmptyExpr!6967)))))

(assert (= (and start!233252 res!1009280) b!2377028))

(assert (= (and b!2377028 res!1009279) b!2377030))

(assert (= (and b!2377030 (not res!1009282)) b!2377024))

(assert (= (and b!2377024 (not res!1009283)) b!2377027))

(assert (= (and b!2377027 (not res!1009284)) b!2377025))

(assert (= (and b!2377025 (not res!1009286)) b!2377032))

(assert (= (and b!2377032 (not res!1009281)) b!2377029))

(assert (= (and b!2377029 (not res!1009285)) b!2377023))

(assert (= (and start!233252 ((_ is Cons!28075) l!9164)) b!2377020))

(assert (= (and start!233252 ((_ is ElementMatch!6967) r!13927)) b!2377022))

(assert (= (and start!233252 ((_ is Concat!11603) r!13927)) b!2377026))

(assert (= (and start!233252 ((_ is Star!6967) r!13927)) b!2377019))

(assert (= (and start!233252 ((_ is Union!6967) r!13927)) b!2377031))

(assert (= (and start!233252 ((_ is Cons!28074) s!9460)) b!2377021))

(declare-fun m!2782251 () Bool)

(assert (=> b!2377027 m!2782251))

(declare-fun m!2782253 () Bool)

(assert (=> b!2377024 m!2782253))

(declare-fun m!2782255 () Bool)

(assert (=> b!2377024 m!2782255))

(declare-fun m!2782257 () Bool)

(assert (=> b!2377024 m!2782257))

(assert (=> b!2377024 m!2782253))

(declare-fun m!2782259 () Bool)

(assert (=> b!2377024 m!2782259))

(declare-fun m!2782261 () Bool)

(assert (=> b!2377024 m!2782261))

(declare-fun m!2782263 () Bool)

(assert (=> b!2377024 m!2782263))

(assert (=> b!2377024 m!2782261))

(declare-fun m!2782265 () Bool)

(assert (=> b!2377032 m!2782265))

(declare-fun m!2782267 () Bool)

(assert (=> b!2377025 m!2782267))

(declare-fun m!2782269 () Bool)

(assert (=> b!2377025 m!2782269))

(declare-fun m!2782271 () Bool)

(assert (=> b!2377023 m!2782271))

(declare-fun m!2782273 () Bool)

(assert (=> b!2377030 m!2782273))

(declare-fun m!2782275 () Bool)

(assert (=> b!2377030 m!2782275))

(declare-fun m!2782277 () Bool)

(assert (=> b!2377030 m!2782277))

(declare-fun m!2782279 () Bool)

(assert (=> b!2377029 m!2782279))

(declare-fun m!2782281 () Bool)

(assert (=> b!2377029 m!2782281))

(declare-fun m!2782283 () Bool)

(assert (=> b!2377028 m!2782283))

(declare-fun m!2782285 () Bool)

(assert (=> start!233252 m!2782285))

(check-sat (not b!2377019) (not b!2377028) (not b!2377030) (not b!2377025) (not b!2377031) (not b!2377020) (not b!2377026) (not b!2377032) tp_is_empty!11347 (not b!2377023) (not b!2377024) (not start!233252) (not b!2377029) (not b!2377021) (not b!2377027))
(check-sat)
