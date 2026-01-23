; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80690 () Bool)

(assert start!80690)

(declare-fun b!895999 () Bool)

(assert (=> b!895999 true))

(assert (=> b!895999 true))

(assert (=> b!895999 true))

(declare-fun lambda!27752 () Int)

(declare-fun lambda!27751 () Int)

(assert (=> b!895999 (not (= lambda!27752 lambda!27751))))

(assert (=> b!895999 true))

(assert (=> b!895999 true))

(assert (=> b!895999 true))

(declare-fun b!895995 () Bool)

(declare-fun e!586513 () Bool)

(declare-fun tp_is_empty!4321 () Bool)

(declare-fun tp!281602 () Bool)

(assert (=> b!895995 (= e!586513 (and tp_is_empty!4321 tp!281602))))

(declare-fun b!895997 () Bool)

(declare-fun e!586509 () Bool)

(declare-fun tp!281604 () Bool)

(declare-fun tp!281599 () Bool)

(assert (=> b!895997 (= e!586509 (and tp!281604 tp!281599))))

(declare-fun b!895998 () Bool)

(declare-fun tp!281603 () Bool)

(assert (=> b!895998 (= e!586509 tp!281603)))

(declare-fun e!586510 () Bool)

(declare-fun e!586512 () Bool)

(assert (=> b!895999 (= e!586510 e!586512)))

(declare-fun res!407262 () Bool)

(assert (=> b!895999 (=> res!407262 e!586512)))

(declare-datatypes ((C!5248 0))(
  ( (C!5249 (val!2872 Int)) )
))
(declare-datatypes ((List!9569 0))(
  ( (Nil!9553) (Cons!9553 (h!14954 C!5248) (t!100615 List!9569)) )
))
(declare-fun s!10566 () List!9569)

(declare-fun isEmpty!5744 (List!9569) Bool)

(assert (=> b!895999 (= res!407262 (isEmpty!5744 s!10566))))

(declare-fun Exists!116 (Int) Bool)

(assert (=> b!895999 (= (Exists!116 lambda!27751) (Exists!116 lambda!27752))))

(declare-datatypes ((Unit!14257 0))(
  ( (Unit!14258) )
))
(declare-fun lt!333383 () Unit!14257)

(declare-datatypes ((Regex!2339 0))(
  ( (ElementMatch!2339 (c!145098 C!5248)) (Concat!4172 (regOne!5190 Regex!2339) (regTwo!5190 Regex!2339)) (EmptyExpr!2339) (Star!2339 (reg!2668 Regex!2339)) (EmptyLang!2339) (Union!2339 (regOne!5191 Regex!2339) (regTwo!5191 Regex!2339)) )
))
(declare-fun r!15766 () Regex!2339)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!8 (Regex!2339 List!9569) Unit!14257)

(assert (=> b!895999 (= lt!333383 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!8 (reg!2668 r!15766) s!10566))))

(declare-fun lt!333385 () Regex!2339)

(declare-datatypes ((tuple2!10680 0))(
  ( (tuple2!10681 (_1!6166 List!9569) (_2!6166 List!9569)) )
))
(declare-datatypes ((Option!1982 0))(
  ( (None!1981) (Some!1981 (v!19398 tuple2!10680)) )
))
(declare-fun isDefined!1624 (Option!1982) Bool)

(declare-fun findConcatSeparation!88 (Regex!2339 Regex!2339 List!9569 List!9569 List!9569) Option!1982)

(assert (=> b!895999 (= (isDefined!1624 (findConcatSeparation!88 (reg!2668 r!15766) lt!333385 Nil!9553 s!10566 s!10566)) (Exists!116 lambda!27751))))

(declare-fun lt!333386 () Unit!14257)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!88 (Regex!2339 Regex!2339 List!9569) Unit!14257)

(assert (=> b!895999 (= lt!333386 (lemmaFindConcatSeparationEquivalentToExists!88 (reg!2668 r!15766) lt!333385 s!10566))))

(assert (=> b!895999 (= lt!333385 (Star!2339 (reg!2668 r!15766)))))

(declare-fun b!896000 () Bool)

(declare-fun res!407264 () Bool)

(assert (=> b!896000 (=> res!407264 e!586512)))

(declare-fun validRegex!808 (Regex!2339) Bool)

(assert (=> b!896000 (= res!407264 (not (validRegex!808 (reg!2668 r!15766))))))

(declare-fun res!407261 () Bool)

(declare-fun e!586511 () Bool)

(assert (=> start!80690 (=> (not res!407261) (not e!586511))))

(assert (=> start!80690 (= res!407261 (validRegex!808 r!15766))))

(assert (=> start!80690 e!586511))

(assert (=> start!80690 e!586509))

(assert (=> start!80690 e!586513))

(declare-fun b!895996 () Bool)

(declare-fun tp!281600 () Bool)

(declare-fun tp!281601 () Bool)

(assert (=> b!895996 (= e!586509 (and tp!281600 tp!281601))))

(declare-fun b!896001 () Bool)

(assert (=> b!896001 (= e!586512 (validRegex!808 lt!333385))))

(declare-fun b!896002 () Bool)

(assert (=> b!896002 (= e!586511 (not e!586510))))

(declare-fun res!407263 () Bool)

(assert (=> b!896002 (=> res!407263 e!586510)))

(declare-fun lt!333384 () Bool)

(get-info :version)

(assert (=> b!896002 (= res!407263 (or (not lt!333384) (and ((_ is Concat!4172) r!15766) ((_ is EmptyExpr!2339) (regOne!5190 r!15766))) (and ((_ is Concat!4172) r!15766) ((_ is EmptyExpr!2339) (regTwo!5190 r!15766))) ((_ is Concat!4172) r!15766) ((_ is Union!2339) r!15766) (not ((_ is Star!2339) r!15766))))))

(declare-fun matchRSpec!140 (Regex!2339 List!9569) Bool)

(assert (=> b!896002 (= lt!333384 (matchRSpec!140 r!15766 s!10566))))

(declare-fun matchR!877 (Regex!2339 List!9569) Bool)

(assert (=> b!896002 (= lt!333384 (matchR!877 r!15766 s!10566))))

(declare-fun lt!333387 () Unit!14257)

(declare-fun mainMatchTheorem!140 (Regex!2339 List!9569) Unit!14257)

(assert (=> b!896002 (= lt!333387 (mainMatchTheorem!140 r!15766 s!10566))))

(declare-fun b!896003 () Bool)

(assert (=> b!896003 (= e!586509 tp_is_empty!4321)))

(assert (= (and start!80690 res!407261) b!896002))

(assert (= (and b!896002 (not res!407263)) b!895999))

(assert (= (and b!895999 (not res!407262)) b!896000))

(assert (= (and b!896000 (not res!407264)) b!896001))

(assert (= (and start!80690 ((_ is ElementMatch!2339) r!15766)) b!896003))

(assert (= (and start!80690 ((_ is Concat!4172) r!15766)) b!895997))

(assert (= (and start!80690 ((_ is Star!2339) r!15766)) b!895998))

(assert (= (and start!80690 ((_ is Union!2339) r!15766)) b!895996))

(assert (= (and start!80690 ((_ is Cons!9553) s!10566)) b!895995))

(declare-fun m!1136007 () Bool)

(assert (=> start!80690 m!1136007))

(declare-fun m!1136009 () Bool)

(assert (=> b!896002 m!1136009))

(declare-fun m!1136011 () Bool)

(assert (=> b!896002 m!1136011))

(declare-fun m!1136013 () Bool)

(assert (=> b!896002 m!1136013))

(declare-fun m!1136015 () Bool)

(assert (=> b!895999 m!1136015))

(declare-fun m!1136017 () Bool)

(assert (=> b!895999 m!1136017))

(declare-fun m!1136019 () Bool)

(assert (=> b!895999 m!1136019))

(declare-fun m!1136021 () Bool)

(assert (=> b!895999 m!1136021))

(declare-fun m!1136023 () Bool)

(assert (=> b!895999 m!1136023))

(declare-fun m!1136025 () Bool)

(assert (=> b!895999 m!1136025))

(assert (=> b!895999 m!1136015))

(declare-fun m!1136027 () Bool)

(assert (=> b!895999 m!1136027))

(assert (=> b!895999 m!1136021))

(declare-fun m!1136029 () Bool)

(assert (=> b!896001 m!1136029))

(declare-fun m!1136031 () Bool)

(assert (=> b!896000 m!1136031))

(check-sat (not b!895996) (not b!895998) (not b!895995) tp_is_empty!4321 (not start!80690) (not b!896000) (not b!895999) (not b!896001) (not b!895997) (not b!896002))
(check-sat)
