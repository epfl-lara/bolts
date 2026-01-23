; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81660 () Bool)

(assert start!81660)

(declare-fun b!908080 () Bool)

(assert (=> b!908080 true))

(assert (=> b!908080 true))

(declare-fun lambda!28760 () Int)

(declare-fun lambda!28759 () Int)

(assert (=> b!908080 (not (= lambda!28760 lambda!28759))))

(assert (=> b!908080 true))

(assert (=> b!908080 true))

(declare-fun b!908076 () Bool)

(declare-fun e!592758 () Bool)

(declare-fun e!592757 () Bool)

(assert (=> b!908076 (= e!592758 (not e!592757))))

(declare-fun res!412918 () Bool)

(assert (=> b!908076 (=> res!412918 e!592757)))

(declare-fun lt!336130 () Bool)

(declare-datatypes ((C!5394 0))(
  ( (C!5395 (val!2945 Int)) )
))
(declare-datatypes ((Regex!2412 0))(
  ( (ElementMatch!2412 (c!147103 C!5394)) (Concat!4245 (regOne!5336 Regex!2412) (regTwo!5336 Regex!2412)) (EmptyExpr!2412) (Star!2412 (reg!2741 Regex!2412)) (EmptyLang!2412) (Union!2412 (regOne!5337 Regex!2412) (regTwo!5337 Regex!2412)) )
))
(declare-fun r!15766 () Regex!2412)

(assert (=> b!908076 (= res!412918 (or lt!336130 (and (is-Concat!4245 r!15766) (is-EmptyExpr!2412 (regOne!5336 r!15766))) (not (is-Concat!4245 r!15766)) (not (is-EmptyExpr!2412 (regTwo!5336 r!15766)))))))

(declare-datatypes ((List!9642 0))(
  ( (Nil!9626) (Cons!9626 (h!15027 C!5394) (t!100688 List!9642)) )
))
(declare-fun s!10566 () List!9642)

(declare-fun matchRSpec!213 (Regex!2412 List!9642) Bool)

(assert (=> b!908076 (= lt!336130 (matchRSpec!213 r!15766 s!10566))))

(declare-fun matchR!950 (Regex!2412 List!9642) Bool)

(assert (=> b!908076 (= lt!336130 (matchR!950 r!15766 s!10566))))

(declare-datatypes ((Unit!14443 0))(
  ( (Unit!14444) )
))
(declare-fun lt!336128 () Unit!14443)

(declare-fun mainMatchTheorem!213 (Regex!2412 List!9642) Unit!14443)

(assert (=> b!908076 (= lt!336128 (mainMatchTheorem!213 r!15766 s!10566))))

(declare-fun b!908077 () Bool)

(declare-fun e!592756 () Bool)

(declare-fun tp_is_empty!4467 () Bool)

(assert (=> b!908077 (= e!592756 tp_is_empty!4467)))

(declare-fun b!908078 () Bool)

(declare-fun tp!284207 () Bool)

(assert (=> b!908078 (= e!592756 tp!284207)))

(declare-fun b!908079 () Bool)

(declare-fun tp!284210 () Bool)

(declare-fun tp!284206 () Bool)

(assert (=> b!908079 (= e!592756 (and tp!284210 tp!284206))))

(declare-fun res!412917 () Bool)

(assert (=> start!81660 (=> (not res!412917) (not e!592758))))

(declare-fun validRegex!881 (Regex!2412) Bool)

(assert (=> start!81660 (= res!412917 (validRegex!881 r!15766))))

(assert (=> start!81660 e!592758))

(assert (=> start!81660 e!592756))

(declare-fun e!592759 () Bool)

(assert (=> start!81660 e!592759))

(assert (=> b!908080 (= e!592757 true)))

(declare-fun Exists!185 (Int) Bool)

(assert (=> b!908080 (= (Exists!185 lambda!28759) (Exists!185 lambda!28760))))

(declare-fun lt!336131 () Unit!14443)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!99 (Regex!2412 Regex!2412 List!9642) Unit!14443)

(assert (=> b!908080 (= lt!336131 (lemmaExistCutMatchRandMatchRSpecEquivalent!99 (regOne!5336 r!15766) EmptyExpr!2412 s!10566))))

(declare-datatypes ((tuple2!10814 0))(
  ( (tuple2!10815 (_1!6233 List!9642) (_2!6233 List!9642)) )
))
(declare-datatypes ((Option!2049 0))(
  ( (None!2048) (Some!2048 (v!19465 tuple2!10814)) )
))
(declare-fun isDefined!1691 (Option!2049) Bool)

(declare-fun findConcatSeparation!155 (Regex!2412 Regex!2412 List!9642 List!9642 List!9642) Option!2049)

(assert (=> b!908080 (= (isDefined!1691 (findConcatSeparation!155 (regOne!5336 r!15766) EmptyExpr!2412 Nil!9626 s!10566 s!10566)) (Exists!185 lambda!28759))))

(declare-fun lt!336129 () Unit!14443)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!155 (Regex!2412 Regex!2412 List!9642) Unit!14443)

(assert (=> b!908080 (= lt!336129 (lemmaFindConcatSeparationEquivalentToExists!155 (regOne!5336 r!15766) EmptyExpr!2412 s!10566))))

(declare-fun b!908081 () Bool)

(declare-fun tp!284208 () Bool)

(declare-fun tp!284209 () Bool)

(assert (=> b!908081 (= e!592756 (and tp!284208 tp!284209))))

(declare-fun b!908082 () Bool)

(declare-fun tp!284205 () Bool)

(assert (=> b!908082 (= e!592759 (and tp_is_empty!4467 tp!284205))))

(assert (= (and start!81660 res!412917) b!908076))

(assert (= (and b!908076 (not res!412918)) b!908080))

(assert (= (and start!81660 (is-ElementMatch!2412 r!15766)) b!908077))

(assert (= (and start!81660 (is-Concat!4245 r!15766)) b!908079))

(assert (= (and start!81660 (is-Star!2412 r!15766)) b!908078))

(assert (= (and start!81660 (is-Union!2412 r!15766)) b!908081))

(assert (= (and start!81660 (is-Cons!9626 s!10566)) b!908082))

(declare-fun m!1141997 () Bool)

(assert (=> b!908076 m!1141997))

(declare-fun m!1141999 () Bool)

(assert (=> b!908076 m!1141999))

(declare-fun m!1142001 () Bool)

(assert (=> b!908076 m!1142001))

(declare-fun m!1142003 () Bool)

(assert (=> start!81660 m!1142003))

(declare-fun m!1142005 () Bool)

(assert (=> b!908080 m!1142005))

(declare-fun m!1142007 () Bool)

(assert (=> b!908080 m!1142007))

(declare-fun m!1142009 () Bool)

(assert (=> b!908080 m!1142009))

(assert (=> b!908080 m!1142009))

(declare-fun m!1142011 () Bool)

(assert (=> b!908080 m!1142011))

(assert (=> b!908080 m!1142007))

(declare-fun m!1142013 () Bool)

(assert (=> b!908080 m!1142013))

(declare-fun m!1142015 () Bool)

(assert (=> b!908080 m!1142015))

(push 1)

(assert (not b!908078))

(assert (not start!81660))

(assert (not b!908079))

(assert tp_is_empty!4467)

(assert (not b!908080))

(assert (not b!908076))

(assert (not b!908081))

(assert (not b!908082))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

