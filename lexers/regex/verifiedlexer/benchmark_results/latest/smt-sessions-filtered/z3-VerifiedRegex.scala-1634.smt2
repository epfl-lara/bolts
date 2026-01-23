; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83338 () Bool)

(assert start!83338)

(declare-fun b!931277 () Bool)

(declare-fun e!605243 () Bool)

(declare-fun tp!289091 () Bool)

(declare-fun tp!289087 () Bool)

(assert (=> b!931277 (= e!605243 (and tp!289091 tp!289087))))

(declare-fun b!931278 () Bool)

(declare-fun tp!289090 () Bool)

(declare-fun tp!289088 () Bool)

(assert (=> b!931278 (= e!605243 (and tp!289090 tp!289088))))

(declare-fun b!931279 () Bool)

(declare-fun tp!289089 () Bool)

(assert (=> b!931279 (= e!605243 tp!289089)))

(declare-fun b!931280 () Bool)

(declare-fun e!605238 () Bool)

(declare-fun tp_is_empty!4697 () Bool)

(declare-fun tp!289092 () Bool)

(assert (=> b!931280 (= e!605238 (and tp_is_empty!4697 tp!289092))))

(declare-fun b!931281 () Bool)

(declare-fun e!605241 () Bool)

(declare-datatypes ((C!5624 0))(
  ( (C!5625 (val!3060 Int)) )
))
(declare-datatypes ((Regex!2527 0))(
  ( (ElementMatch!2527 (c!151396 C!5624)) (Concat!4360 (regOne!5566 Regex!2527) (regTwo!5566 Regex!2527)) (EmptyExpr!2527) (Star!2527 (reg!2856 Regex!2527)) (EmptyLang!2527) (Union!2527 (regOne!5567 Regex!2527) (regTwo!5567 Regex!2527)) )
))
(declare-fun lt!340261 () Regex!2527)

(declare-datatypes ((List!9757 0))(
  ( (Nil!9741) (Cons!9741 (h!15142 C!5624) (t!100803 List!9757)) )
))
(declare-fun s!10566 () List!9757)

(declare-fun matchR!1065 (Regex!2527 List!9757) Bool)

(assert (=> b!931281 (= e!605241 (matchR!1065 lt!340261 s!10566))))

(declare-fun b!931282 () Bool)

(assert (=> b!931282 (= e!605243 tp_is_empty!4697)))

(declare-fun b!931283 () Bool)

(declare-fun e!605240 () Bool)

(declare-fun e!605239 () Bool)

(assert (=> b!931283 (= e!605240 e!605239)))

(declare-fun res!423015 () Bool)

(assert (=> b!931283 (=> res!423015 e!605239)))

(declare-fun lt!340262 () Regex!2527)

(assert (=> b!931283 (= res!423015 (not (matchR!1065 lt!340262 s!10566)))))

(declare-fun lt!340260 () Regex!2527)

(assert (=> b!931283 (= lt!340262 (Union!2527 lt!340260 lt!340261))))

(declare-fun r!15766 () Regex!2527)

(declare-fun removeUselessConcat!202 (Regex!2527) Regex!2527)

(assert (=> b!931283 (= lt!340261 (removeUselessConcat!202 (regTwo!5567 r!15766)))))

(assert (=> b!931283 (= lt!340260 (removeUselessConcat!202 (regOne!5567 r!15766)))))

(declare-fun b!931284 () Bool)

(declare-fun e!605242 () Bool)

(assert (=> b!931284 (= e!605242 (not e!605240))))

(declare-fun res!423016 () Bool)

(assert (=> b!931284 (=> res!423016 e!605240)))

(declare-fun lt!340259 () Bool)

(get-info :version)

(assert (=> b!931284 (= res!423016 (or lt!340259 (and ((_ is Concat!4360) r!15766) ((_ is EmptyExpr!2527) (regOne!5566 r!15766))) (and ((_ is Concat!4360) r!15766) ((_ is EmptyExpr!2527) (regTwo!5566 r!15766))) ((_ is Concat!4360) r!15766) (not ((_ is Union!2527) r!15766))))))

(declare-fun matchRSpec!328 (Regex!2527 List!9757) Bool)

(assert (=> b!931284 (= lt!340259 (matchRSpec!328 r!15766 s!10566))))

(assert (=> b!931284 (= lt!340259 (matchR!1065 r!15766 s!10566))))

(declare-datatypes ((Unit!14673 0))(
  ( (Unit!14674) )
))
(declare-fun lt!340264 () Unit!14673)

(declare-fun mainMatchTheorem!328 (Regex!2527 List!9757) Unit!14673)

(assert (=> b!931284 (= lt!340264 (mainMatchTheorem!328 r!15766 s!10566))))

(declare-fun res!423018 () Bool)

(assert (=> start!83338 (=> (not res!423018) (not e!605242))))

(declare-fun validRegex!996 (Regex!2527) Bool)

(assert (=> start!83338 (= res!423018 (validRegex!996 r!15766))))

(assert (=> start!83338 e!605242))

(assert (=> start!83338 e!605243))

(assert (=> start!83338 e!605238))

(declare-fun b!931285 () Bool)

(assert (=> b!931285 (= e!605239 true)))

(assert (=> b!931285 e!605241))

(declare-fun res!423017 () Bool)

(assert (=> b!931285 (=> res!423017 e!605241)))

(assert (=> b!931285 (= res!423017 (matchR!1065 lt!340260 s!10566))))

(declare-fun lt!340265 () Unit!14673)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!44 (Regex!2527 Regex!2527 List!9757) Unit!14673)

(assert (=> b!931285 (= lt!340265 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!44 lt!340260 lt!340261 s!10566))))

(assert (=> b!931285 (matchRSpec!328 lt!340262 s!10566)))

(declare-fun lt!340263 () Unit!14673)

(assert (=> b!931285 (= lt!340263 (mainMatchTheorem!328 lt!340262 s!10566))))

(assert (= (and start!83338 res!423018) b!931284))

(assert (= (and b!931284 (not res!423016)) b!931283))

(assert (= (and b!931283 (not res!423015)) b!931285))

(assert (= (and b!931285 (not res!423017)) b!931281))

(assert (= (and start!83338 ((_ is ElementMatch!2527) r!15766)) b!931282))

(assert (= (and start!83338 ((_ is Concat!4360) r!15766)) b!931277))

(assert (= (and start!83338 ((_ is Star!2527) r!15766)) b!931279))

(assert (= (and start!83338 ((_ is Union!2527) r!15766)) b!931278))

(assert (= (and start!83338 ((_ is Cons!9741) s!10566)) b!931280))

(declare-fun m!1153293 () Bool)

(assert (=> b!931285 m!1153293))

(declare-fun m!1153295 () Bool)

(assert (=> b!931285 m!1153295))

(declare-fun m!1153297 () Bool)

(assert (=> b!931285 m!1153297))

(declare-fun m!1153299 () Bool)

(assert (=> b!931285 m!1153299))

(declare-fun m!1153301 () Bool)

(assert (=> b!931284 m!1153301))

(declare-fun m!1153303 () Bool)

(assert (=> b!931284 m!1153303))

(declare-fun m!1153305 () Bool)

(assert (=> b!931284 m!1153305))

(declare-fun m!1153307 () Bool)

(assert (=> b!931283 m!1153307))

(declare-fun m!1153309 () Bool)

(assert (=> b!931283 m!1153309))

(declare-fun m!1153311 () Bool)

(assert (=> b!931283 m!1153311))

(declare-fun m!1153313 () Bool)

(assert (=> start!83338 m!1153313))

(declare-fun m!1153315 () Bool)

(assert (=> b!931281 m!1153315))

(check-sat (not b!931279) (not b!931283) (not b!931284) (not b!931281) (not b!931277) (not b!931285) (not b!931280) (not start!83338) tp_is_empty!4697 (not b!931278))
(check-sat)
