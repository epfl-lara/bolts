; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79214 () Bool)

(assert start!79214)

(declare-fun b!876272 () Bool)

(assert (=> b!876272 true))

(assert (=> b!876272 true))

(declare-fun lambda!26520 () Int)

(declare-fun lambda!26519 () Int)

(assert (=> b!876272 (not (= lambda!26520 lambda!26519))))

(assert (=> b!876272 true))

(assert (=> b!876272 true))

(declare-fun b!876271 () Bool)

(declare-fun e!575880 () Bool)

(declare-fun tp!277117 () Bool)

(assert (=> b!876271 (= e!575880 tp!277117)))

(declare-fun e!575882 () Bool)

(declare-fun e!575879 () Bool)

(assert (=> b!876272 (= e!575882 e!575879)))

(declare-fun res!398487 () Bool)

(assert (=> b!876272 (=> res!398487 e!575879)))

(declare-datatypes ((C!5020 0))(
  ( (C!5021 (val!2758 Int)) )
))
(declare-datatypes ((List!9455 0))(
  ( (Nil!9439) (Cons!9439 (h!14840 C!5020) (t!100501 List!9455)) )
))
(declare-fun s!10566 () List!9455)

(declare-fun isEmpty!5628 (List!9455) Bool)

(assert (=> b!876272 (= res!398487 (isEmpty!5628 s!10566))))

(declare-fun Exists!24 (Int) Bool)

(assert (=> b!876272 (= (Exists!24 lambda!26519) (Exists!24 lambda!26520))))

(declare-datatypes ((Unit!14029 0))(
  ( (Unit!14030) )
))
(declare-fun lt!329858 () Unit!14029)

(declare-datatypes ((Regex!2225 0))(
  ( (ElementMatch!2225 (c!141668 C!5020)) (Concat!4058 (regOne!4962 Regex!2225) (regTwo!4962 Regex!2225)) (EmptyExpr!2225) (Star!2225 (reg!2554 Regex!2225)) (EmptyLang!2225) (Union!2225 (regOne!4963 Regex!2225) (regTwo!4963 Regex!2225)) )
))
(declare-fun r!15766 () Regex!2225)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!20 (Regex!2225 Regex!2225 List!9455) Unit!14029)

(assert (=> b!876272 (= lt!329858 (lemmaExistCutMatchRandMatchRSpecEquivalent!20 EmptyExpr!2225 (regTwo!4962 r!15766) s!10566))))

(declare-datatypes ((tuple2!10548 0))(
  ( (tuple2!10549 (_1!6100 List!9455) (_2!6100 List!9455)) )
))
(declare-datatypes ((Option!1916 0))(
  ( (None!1915) (Some!1915 (v!19332 tuple2!10548)) )
))
(declare-fun lt!329859 () Option!1916)

(declare-fun isDefined!1558 (Option!1916) Bool)

(assert (=> b!876272 (= (isDefined!1558 lt!329859) (Exists!24 lambda!26519))))

(declare-fun findConcatSeparation!22 (Regex!2225 Regex!2225 List!9455 List!9455 List!9455) Option!1916)

(assert (=> b!876272 (= lt!329859 (findConcatSeparation!22 EmptyExpr!2225 (regTwo!4962 r!15766) Nil!9439 s!10566 s!10566))))

(declare-fun lt!329863 () Unit!14029)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!22 (Regex!2225 Regex!2225 List!9455) Unit!14029)

(assert (=> b!876272 (= lt!329863 (lemmaFindConcatSeparationEquivalentToExists!22 EmptyExpr!2225 (regTwo!4962 r!15766) s!10566))))

(declare-fun b!876273 () Bool)

(declare-fun tp!277116 () Bool)

(declare-fun tp!277120 () Bool)

(assert (=> b!876273 (= e!575880 (and tp!277116 tp!277120))))

(declare-fun b!876274 () Bool)

(declare-fun e!575883 () Bool)

(assert (=> b!876274 (= e!575879 e!575883)))

(declare-fun res!398492 () Bool)

(assert (=> b!876274 (=> res!398492 e!575883)))

(declare-fun lt!329864 () tuple2!10548)

(assert (=> b!876274 (= res!398492 (not (isEmpty!5628 (_1!6100 lt!329864))))))

(declare-fun get!2904 (Option!1916) tuple2!10548)

(assert (=> b!876274 (= lt!329864 (get!2904 lt!329859))))

(declare-fun b!876275 () Bool)

(declare-fun tp_is_empty!4093 () Bool)

(assert (=> b!876275 (= e!575880 tp_is_empty!4093)))

(declare-fun res!398491 () Bool)

(declare-fun e!575885 () Bool)

(assert (=> start!79214 (=> (not res!398491) (not e!575885))))

(declare-fun validRegex!694 (Regex!2225) Bool)

(assert (=> start!79214 (= res!398491 (validRegex!694 r!15766))))

(assert (=> start!79214 e!575885))

(assert (=> start!79214 e!575880))

(declare-fun e!575881 () Bool)

(assert (=> start!79214 e!575881))

(declare-fun b!876276 () Bool)

(assert (=> b!876276 (= e!575885 (not e!575882))))

(declare-fun res!398488 () Bool)

(assert (=> b!876276 (=> res!398488 e!575882)))

(declare-fun lt!329861 () Bool)

(get-info :version)

(assert (=> b!876276 (= res!398488 (or (not lt!329861) (not ((_ is Concat!4058) r!15766)) (not ((_ is EmptyExpr!2225) (regOne!4962 r!15766)))))))

(declare-fun matchRSpec!26 (Regex!2225 List!9455) Bool)

(assert (=> b!876276 (= lt!329861 (matchRSpec!26 r!15766 s!10566))))

(declare-fun matchR!763 (Regex!2225 List!9455) Bool)

(assert (=> b!876276 (= lt!329861 (matchR!763 r!15766 s!10566))))

(declare-fun lt!329862 () Unit!14029)

(declare-fun mainMatchTheorem!26 (Regex!2225 List!9455) Unit!14029)

(assert (=> b!876276 (= lt!329862 (mainMatchTheorem!26 r!15766 s!10566))))

(declare-fun b!876277 () Bool)

(declare-fun tp!277118 () Bool)

(assert (=> b!876277 (= e!575881 (and tp_is_empty!4093 tp!277118))))

(declare-fun b!876278 () Bool)

(declare-fun e!575884 () Bool)

(assert (=> b!876278 (= e!575884 true)))

(declare-fun removeUselessConcat!4 (Regex!2225) Regex!2225)

(assert (=> b!876278 (matchR!763 (removeUselessConcat!4 (regTwo!4962 r!15766)) (_2!6100 lt!329864))))

(declare-fun lt!329860 () Unit!14029)

(declare-fun lemmaRemoveUselessConcatSound!2 (Regex!2225 List!9455) Unit!14029)

(assert (=> b!876278 (= lt!329860 (lemmaRemoveUselessConcatSound!2 (regTwo!4962 r!15766) (_2!6100 lt!329864)))))

(declare-fun b!876279 () Bool)

(assert (=> b!876279 (= e!575883 e!575884)))

(declare-fun res!398490 () Bool)

(assert (=> b!876279 (=> res!398490 e!575884)))

(assert (=> b!876279 (= res!398490 (not (validRegex!694 (regTwo!4962 r!15766))))))

(assert (=> b!876279 (matchRSpec!26 (regTwo!4962 r!15766) (_2!6100 lt!329864))))

(declare-fun lt!329865 () Unit!14029)

(assert (=> b!876279 (= lt!329865 (mainMatchTheorem!26 (regTwo!4962 r!15766) (_2!6100 lt!329864)))))

(declare-fun b!876280 () Bool)

(declare-fun res!398489 () Bool)

(assert (=> b!876280 (=> res!398489 e!575883)))

(assert (=> b!876280 (= res!398489 (not (matchR!763 (regTwo!4962 r!15766) (_2!6100 lt!329864))))))

(declare-fun b!876281 () Bool)

(declare-fun tp!277119 () Bool)

(declare-fun tp!277115 () Bool)

(assert (=> b!876281 (= e!575880 (and tp!277119 tp!277115))))

(assert (= (and start!79214 res!398491) b!876276))

(assert (= (and b!876276 (not res!398488)) b!876272))

(assert (= (and b!876272 (not res!398487)) b!876274))

(assert (= (and b!876274 (not res!398492)) b!876280))

(assert (= (and b!876280 (not res!398489)) b!876279))

(assert (= (and b!876279 (not res!398490)) b!876278))

(assert (= (and start!79214 ((_ is ElementMatch!2225) r!15766)) b!876275))

(assert (= (and start!79214 ((_ is Concat!4058) r!15766)) b!876281))

(assert (= (and start!79214 ((_ is Star!2225) r!15766)) b!876271))

(assert (= (and start!79214 ((_ is Union!2225) r!15766)) b!876273))

(assert (= (and start!79214 ((_ is Cons!9439) s!10566)) b!876277))

(declare-fun m!1127177 () Bool)

(assert (=> b!876280 m!1127177))

(declare-fun m!1127179 () Bool)

(assert (=> b!876276 m!1127179))

(declare-fun m!1127181 () Bool)

(assert (=> b!876276 m!1127181))

(declare-fun m!1127183 () Bool)

(assert (=> b!876276 m!1127183))

(declare-fun m!1127185 () Bool)

(assert (=> b!876278 m!1127185))

(assert (=> b!876278 m!1127185))

(declare-fun m!1127187 () Bool)

(assert (=> b!876278 m!1127187))

(declare-fun m!1127189 () Bool)

(assert (=> b!876278 m!1127189))

(declare-fun m!1127191 () Bool)

(assert (=> b!876279 m!1127191))

(declare-fun m!1127193 () Bool)

(assert (=> b!876279 m!1127193))

(declare-fun m!1127195 () Bool)

(assert (=> b!876279 m!1127195))

(declare-fun m!1127197 () Bool)

(assert (=> b!876274 m!1127197))

(declare-fun m!1127199 () Bool)

(assert (=> b!876274 m!1127199))

(declare-fun m!1127201 () Bool)

(assert (=> b!876272 m!1127201))

(declare-fun m!1127203 () Bool)

(assert (=> b!876272 m!1127203))

(declare-fun m!1127205 () Bool)

(assert (=> b!876272 m!1127205))

(declare-fun m!1127207 () Bool)

(assert (=> b!876272 m!1127207))

(declare-fun m!1127209 () Bool)

(assert (=> b!876272 m!1127209))

(declare-fun m!1127211 () Bool)

(assert (=> b!876272 m!1127211))

(declare-fun m!1127213 () Bool)

(assert (=> b!876272 m!1127213))

(assert (=> b!876272 m!1127207))

(declare-fun m!1127215 () Bool)

(assert (=> start!79214 m!1127215))

(check-sat tp_is_empty!4093 (not b!876278) (not b!876279) (not b!876273) (not b!876280) (not b!876272) (not start!79214) (not b!876281) (not b!876276) (not b!876271) (not b!876274) (not b!876277))
(check-sat)
