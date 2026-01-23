; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79016 () Bool)

(assert start!79016)

(declare-fun b!874047 () Bool)

(assert (=> b!874047 true))

(assert (=> b!874047 true))

(declare-fun lambda!26280 () Int)

(declare-fun lambda!26279 () Int)

(assert (=> b!874047 (not (= lambda!26280 lambda!26279))))

(assert (=> b!874047 true))

(assert (=> b!874047 true))

(declare-fun b!874042 () Bool)

(declare-fun e!574705 () Bool)

(declare-fun tp_is_empty!4063 () Bool)

(assert (=> b!874042 (= e!574705 tp_is_empty!4063)))

(declare-fun b!874043 () Bool)

(declare-fun e!574704 () Bool)

(assert (=> b!874043 (= e!574704 true)))

(declare-fun b!874045 () Bool)

(declare-fun tp!276544 () Bool)

(declare-fun tp!276545 () Bool)

(assert (=> b!874045 (= e!574705 (and tp!276544 tp!276545))))

(declare-fun b!874046 () Bool)

(declare-fun e!574708 () Bool)

(declare-fun tp!276541 () Bool)

(assert (=> b!874046 (= e!574708 (and tp_is_empty!4063 tp!276541))))

(declare-fun e!574707 () Bool)

(assert (=> b!874047 (= e!574707 e!574704)))

(declare-fun res!397388 () Bool)

(assert (=> b!874047 (=> res!397388 e!574704)))

(declare-datatypes ((C!4990 0))(
  ( (C!4991 (val!2743 Int)) )
))
(declare-datatypes ((List!9440 0))(
  ( (Nil!9424) (Cons!9424 (h!14825 C!4990) (t!100486 List!9440)) )
))
(declare-fun s!10566 () List!9440)

(declare-fun isEmpty!5608 (List!9440) Bool)

(assert (=> b!874047 (= res!397388 (isEmpty!5608 s!10566))))

(declare-fun Exists!9 (Int) Bool)

(assert (=> b!874047 (= (Exists!9 lambda!26279) (Exists!9 lambda!26280))))

(declare-datatypes ((Unit!13999 0))(
  ( (Unit!14000) )
))
(declare-fun lt!329443 () Unit!13999)

(declare-datatypes ((Regex!2210 0))(
  ( (ElementMatch!2210 (c!141371 C!4990)) (Concat!4043 (regOne!4932 Regex!2210) (regTwo!4932 Regex!2210)) (EmptyExpr!2210) (Star!2210 (reg!2539 Regex!2210)) (EmptyLang!2210) (Union!2210 (regOne!4933 Regex!2210) (regTwo!4933 Regex!2210)) )
))
(declare-fun r!15766 () Regex!2210)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!5 (Regex!2210 Regex!2210 List!9440) Unit!13999)

(assert (=> b!874047 (= lt!329443 (lemmaExistCutMatchRandMatchRSpecEquivalent!5 EmptyExpr!2210 (regTwo!4932 r!15766) s!10566))))

(declare-datatypes ((tuple2!10518 0))(
  ( (tuple2!10519 (_1!6085 List!9440) (_2!6085 List!9440)) )
))
(declare-datatypes ((Option!1901 0))(
  ( (None!1900) (Some!1900 (v!19317 tuple2!10518)) )
))
(declare-fun isDefined!1543 (Option!1901) Bool)

(declare-fun findConcatSeparation!7 (Regex!2210 Regex!2210 List!9440 List!9440 List!9440) Option!1901)

(assert (=> b!874047 (= (isDefined!1543 (findConcatSeparation!7 EmptyExpr!2210 (regTwo!4932 r!15766) Nil!9424 s!10566 s!10566)) (Exists!9 lambda!26279))))

(declare-fun lt!329444 () Unit!13999)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!7 (Regex!2210 Regex!2210 List!9440) Unit!13999)

(assert (=> b!874047 (= lt!329444 (lemmaFindConcatSeparationEquivalentToExists!7 EmptyExpr!2210 (regTwo!4932 r!15766) s!10566))))

(declare-fun b!874048 () Bool)

(declare-fun tp!276542 () Bool)

(declare-fun tp!276546 () Bool)

(assert (=> b!874048 (= e!574705 (and tp!276542 tp!276546))))

(declare-fun b!874049 () Bool)

(declare-fun tp!276543 () Bool)

(assert (=> b!874049 (= e!574705 tp!276543)))

(declare-fun res!397387 () Bool)

(declare-fun e!574706 () Bool)

(assert (=> start!79016 (=> (not res!397387) (not e!574706))))

(declare-fun validRegex!679 (Regex!2210) Bool)

(assert (=> start!79016 (= res!397387 (validRegex!679 r!15766))))

(assert (=> start!79016 e!574706))

(assert (=> start!79016 e!574705))

(assert (=> start!79016 e!574708))

(declare-fun b!874044 () Bool)

(assert (=> b!874044 (= e!574706 (not e!574707))))

(declare-fun res!397389 () Bool)

(assert (=> b!874044 (=> res!397389 e!574707)))

(declare-fun lt!329445 () Bool)

(assert (=> b!874044 (= res!397389 (or (not lt!329445) (not (is-Concat!4043 r!15766)) (not (is-EmptyExpr!2210 (regOne!4932 r!15766)))))))

(declare-fun matchRSpec!11 (Regex!2210 List!9440) Bool)

(assert (=> b!874044 (= lt!329445 (matchRSpec!11 r!15766 s!10566))))

(declare-fun matchR!748 (Regex!2210 List!9440) Bool)

(assert (=> b!874044 (= lt!329445 (matchR!748 r!15766 s!10566))))

(declare-fun lt!329442 () Unit!13999)

(declare-fun mainMatchTheorem!11 (Regex!2210 List!9440) Unit!13999)

(assert (=> b!874044 (= lt!329442 (mainMatchTheorem!11 r!15766 s!10566))))

(assert (= (and start!79016 res!397387) b!874044))

(assert (= (and b!874044 (not res!397389)) b!874047))

(assert (= (and b!874047 (not res!397388)) b!874043))

(assert (= (and start!79016 (is-ElementMatch!2210 r!15766)) b!874042))

(assert (= (and start!79016 (is-Concat!4043 r!15766)) b!874048))

(assert (= (and start!79016 (is-Star!2210 r!15766)) b!874049))

(assert (= (and start!79016 (is-Union!2210 r!15766)) b!874045))

(assert (= (and start!79016 (is-Cons!9424 s!10566)) b!874046))

(declare-fun m!1126177 () Bool)

(assert (=> b!874047 m!1126177))

(declare-fun m!1126179 () Bool)

(assert (=> b!874047 m!1126179))

(declare-fun m!1126181 () Bool)

(assert (=> b!874047 m!1126181))

(declare-fun m!1126183 () Bool)

(assert (=> b!874047 m!1126183))

(declare-fun m!1126185 () Bool)

(assert (=> b!874047 m!1126185))

(assert (=> b!874047 m!1126179))

(declare-fun m!1126187 () Bool)

(assert (=> b!874047 m!1126187))

(assert (=> b!874047 m!1126187))

(declare-fun m!1126189 () Bool)

(assert (=> b!874047 m!1126189))

(declare-fun m!1126191 () Bool)

(assert (=> start!79016 m!1126191))

(declare-fun m!1126193 () Bool)

(assert (=> b!874044 m!1126193))

(declare-fun m!1126195 () Bool)

(assert (=> b!874044 m!1126195))

(declare-fun m!1126197 () Bool)

(assert (=> b!874044 m!1126197))

(push 1)

(assert (not b!874047))

(assert (not b!874045))

(assert (not b!874049))

(assert (not start!79016))

(assert (not b!874046))

(assert tp_is_empty!4063)

(assert (not b!874048))

(assert (not b!874044))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

