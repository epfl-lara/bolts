; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81590 () Bool)

(assert start!81590)

(declare-fun b!907239 () Bool)

(assert (=> b!907239 true))

(assert (=> b!907239 true))

(declare-fun lambda!28684 () Int)

(declare-fun lambda!28683 () Int)

(assert (=> b!907239 (not (= lambda!28684 lambda!28683))))

(assert (=> b!907239 true))

(assert (=> b!907239 true))

(declare-fun b!907230 () Bool)

(declare-fun e!592314 () Bool)

(assert (=> b!907230 (= e!592314 true)))

(declare-fun lt!335935 () Bool)

(assert (=> b!907230 lt!335935))

(declare-datatypes ((Unit!14425 0))(
  ( (Unit!14426) )
))
(declare-fun lt!335938 () Unit!14425)

(declare-datatypes ((C!5376 0))(
  ( (C!5377 (val!2936 Int)) )
))
(declare-datatypes ((Regex!2403 0))(
  ( (ElementMatch!2403 (c!146972 C!5376)) (Concat!4236 (regOne!5318 Regex!2403) (regTwo!5318 Regex!2403)) (EmptyExpr!2403) (Star!2403 (reg!2732 Regex!2403)) (EmptyLang!2403) (Union!2403 (regOne!5319 Regex!2403) (regTwo!5319 Regex!2403)) )
))
(declare-fun r!15766 () Regex!2403)

(declare-datatypes ((List!9633 0))(
  ( (Nil!9617) (Cons!9617 (h!15018 C!5376) (t!100679 List!9633)) )
))
(declare-fun s!10566 () List!9633)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!2 (Regex!2403 Regex!2403 List!9633 List!9633 List!9633 List!9633 List!9633) Unit!14425)

(assert (=> b!907230 (= lt!335938 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!2 EmptyExpr!2403 (regTwo!5318 r!15766) Nil!9617 s!10566 s!10566 Nil!9617 s!10566))))

(declare-fun b!907231 () Bool)

(declare-fun e!592317 () Bool)

(declare-fun tp!283967 () Bool)

(assert (=> b!907231 (= e!592317 tp!283967)))

(declare-fun b!907232 () Bool)

(declare-fun tp!283972 () Bool)

(declare-fun tp!283969 () Bool)

(assert (=> b!907232 (= e!592317 (and tp!283972 tp!283969))))

(declare-fun b!907233 () Bool)

(declare-fun tp!283970 () Bool)

(declare-fun tp!283971 () Bool)

(assert (=> b!907233 (= e!592317 (and tp!283970 tp!283971))))

(declare-fun b!907234 () Bool)

(declare-fun tp_is_empty!4449 () Bool)

(assert (=> b!907234 (= e!592317 tp_is_empty!4449)))

(declare-fun b!907236 () Bool)

(declare-fun e!592318 () Bool)

(declare-fun e!592316 () Bool)

(assert (=> b!907236 (= e!592318 (not e!592316))))

(declare-fun res!412550 () Bool)

(assert (=> b!907236 (=> res!412550 e!592316)))

(declare-fun lt!335941 () Bool)

(get-info :version)

(assert (=> b!907236 (= res!412550 (or lt!335941 (not ((_ is Concat!4236) r!15766)) (not ((_ is EmptyExpr!2403) (regOne!5318 r!15766)))))))

(declare-fun matchRSpec!204 (Regex!2403 List!9633) Bool)

(assert (=> b!907236 (= lt!335941 (matchRSpec!204 r!15766 s!10566))))

(declare-fun matchR!941 (Regex!2403 List!9633) Bool)

(assert (=> b!907236 (= lt!335941 (matchR!941 r!15766 s!10566))))

(declare-fun lt!335940 () Unit!14425)

(declare-fun mainMatchTheorem!204 (Regex!2403 List!9633) Unit!14425)

(assert (=> b!907236 (= lt!335940 (mainMatchTheorem!204 r!15766 s!10566))))

(declare-fun b!907237 () Bool)

(declare-fun e!592315 () Bool)

(assert (=> b!907237 (= e!592315 e!592314)))

(declare-fun res!412551 () Bool)

(assert (=> b!907237 (=> res!412551 e!592314)))

(declare-fun lt!335939 () Bool)

(declare-fun lt!335937 () Bool)

(assert (=> b!907237 (= res!412551 (or (not lt!335939) (not lt!335937)))))

(assert (=> b!907237 (= lt!335937 lt!335939)))

(declare-fun lt!335943 () Regex!2403)

(assert (=> b!907237 (= lt!335939 (matchR!941 lt!335943 s!10566))))

(assert (=> b!907237 (= lt!335937 (matchR!941 (regTwo!5318 r!15766) s!10566))))

(declare-fun removeUselessConcat!102 (Regex!2403) Regex!2403)

(assert (=> b!907237 (= lt!335943 (removeUselessConcat!102 (regTwo!5318 r!15766)))))

(declare-fun lt!335944 () Unit!14425)

(declare-fun lemmaRemoveUselessConcatSound!90 (Regex!2403 List!9633) Unit!14425)

(assert (=> b!907237 (= lt!335944 (lemmaRemoveUselessConcatSound!90 (regTwo!5318 r!15766) s!10566))))

(declare-fun b!907238 () Bool)

(declare-fun e!592319 () Bool)

(declare-fun tp!283968 () Bool)

(assert (=> b!907238 (= e!592319 (and tp_is_empty!4449 tp!283968))))

(assert (=> b!907239 (= e!592316 e!592315)))

(declare-fun res!412552 () Bool)

(assert (=> b!907239 (=> res!412552 e!592315)))

(declare-fun isEmpty!5828 (List!9633) Bool)

(assert (=> b!907239 (= res!412552 (isEmpty!5828 s!10566))))

(declare-fun Exists!178 (Int) Bool)

(assert (=> b!907239 (= (Exists!178 lambda!28683) (Exists!178 lambda!28684))))

(declare-fun lt!335942 () Unit!14425)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!94 (Regex!2403 Regex!2403 List!9633) Unit!14425)

(assert (=> b!907239 (= lt!335942 (lemmaExistCutMatchRandMatchRSpecEquivalent!94 EmptyExpr!2403 (regTwo!5318 r!15766) s!10566))))

(assert (=> b!907239 (= lt!335935 (Exists!178 lambda!28683))))

(declare-datatypes ((tuple2!10800 0))(
  ( (tuple2!10801 (_1!6226 List!9633) (_2!6226 List!9633)) )
))
(declare-datatypes ((Option!2042 0))(
  ( (None!2041) (Some!2041 (v!19458 tuple2!10800)) )
))
(declare-fun lt!335936 () Option!2042)

(declare-fun isDefined!1684 (Option!2042) Bool)

(assert (=> b!907239 (= lt!335935 (isDefined!1684 lt!335936))))

(declare-fun findConcatSeparation!148 (Regex!2403 Regex!2403 List!9633 List!9633 List!9633) Option!2042)

(assert (=> b!907239 (= lt!335936 (findConcatSeparation!148 EmptyExpr!2403 (regTwo!5318 r!15766) Nil!9617 s!10566 s!10566))))

(declare-fun lt!335945 () Unit!14425)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!148 (Regex!2403 Regex!2403 List!9633) Unit!14425)

(assert (=> b!907239 (= lt!335945 (lemmaFindConcatSeparationEquivalentToExists!148 EmptyExpr!2403 (regTwo!5318 r!15766) s!10566))))

(declare-fun b!907235 () Bool)

(declare-fun res!412548 () Bool)

(assert (=> b!907235 (=> res!412548 e!592315)))

(declare-fun isEmpty!5829 (Option!2042) Bool)

(assert (=> b!907235 (= res!412548 (not (isEmpty!5829 lt!335936)))))

(declare-fun res!412549 () Bool)

(assert (=> start!81590 (=> (not res!412549) (not e!592318))))

(declare-fun validRegex!872 (Regex!2403) Bool)

(assert (=> start!81590 (= res!412549 (validRegex!872 r!15766))))

(assert (=> start!81590 e!592318))

(assert (=> start!81590 e!592317))

(assert (=> start!81590 e!592319))

(assert (= (and start!81590 res!412549) b!907236))

(assert (= (and b!907236 (not res!412550)) b!907239))

(assert (= (and b!907239 (not res!412552)) b!907235))

(assert (= (and b!907235 (not res!412548)) b!907237))

(assert (= (and b!907237 (not res!412551)) b!907230))

(assert (= (and start!81590 ((_ is ElementMatch!2403) r!15766)) b!907234))

(assert (= (and start!81590 ((_ is Concat!4236) r!15766)) b!907233))

(assert (= (and start!81590 ((_ is Star!2403) r!15766)) b!907231))

(assert (= (and start!81590 ((_ is Union!2403) r!15766)) b!907232))

(assert (= (and start!81590 ((_ is Cons!9617) s!10566)) b!907238))

(declare-fun m!1141567 () Bool)

(assert (=> b!907237 m!1141567))

(declare-fun m!1141569 () Bool)

(assert (=> b!907237 m!1141569))

(declare-fun m!1141571 () Bool)

(assert (=> b!907237 m!1141571))

(declare-fun m!1141573 () Bool)

(assert (=> b!907237 m!1141573))

(declare-fun m!1141575 () Bool)

(assert (=> b!907236 m!1141575))

(declare-fun m!1141577 () Bool)

(assert (=> b!907236 m!1141577))

(declare-fun m!1141579 () Bool)

(assert (=> b!907236 m!1141579))

(declare-fun m!1141581 () Bool)

(assert (=> start!81590 m!1141581))

(declare-fun m!1141583 () Bool)

(assert (=> b!907239 m!1141583))

(declare-fun m!1141585 () Bool)

(assert (=> b!907239 m!1141585))

(declare-fun m!1141587 () Bool)

(assert (=> b!907239 m!1141587))

(declare-fun m!1141589 () Bool)

(assert (=> b!907239 m!1141589))

(assert (=> b!907239 m!1141587))

(declare-fun m!1141591 () Bool)

(assert (=> b!907239 m!1141591))

(declare-fun m!1141593 () Bool)

(assert (=> b!907239 m!1141593))

(declare-fun m!1141595 () Bool)

(assert (=> b!907239 m!1141595))

(declare-fun m!1141597 () Bool)

(assert (=> b!907235 m!1141597))

(declare-fun m!1141599 () Bool)

(assert (=> b!907230 m!1141599))

(check-sat (not b!907231) tp_is_empty!4449 (not b!907236) (not start!81590) (not b!907239) (not b!907238) (not b!907233) (not b!907230) (not b!907235) (not b!907232) (not b!907237))
(check-sat)
