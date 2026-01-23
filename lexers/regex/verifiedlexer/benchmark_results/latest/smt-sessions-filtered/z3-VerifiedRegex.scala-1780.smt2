; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88846 () Bool)

(assert start!88846)

(declare-fun b!1020593 () Bool)

(assert (=> b!1020593 true))

(assert (=> b!1020593 true))

(declare-fun lambda!36256 () Int)

(declare-fun lambda!36255 () Int)

(assert (=> b!1020593 (not (= lambda!36256 lambda!36255))))

(assert (=> b!1020593 true))

(assert (=> b!1020593 true))

(declare-fun e!651806 () Bool)

(declare-fun e!651803 () Bool)

(assert (=> b!1020593 (= e!651806 e!651803)))

(declare-fun res!458588 () Bool)

(assert (=> b!1020593 (=> res!458588 e!651803)))

(declare-datatypes ((C!6208 0))(
  ( (C!6209 (val!3352 Int)) )
))
(declare-datatypes ((List!10049 0))(
  ( (Nil!10033) (Cons!10033 (h!15434 C!6208) (t!101095 List!10049)) )
))
(declare-fun s!10566 () List!10049)

(declare-fun isEmpty!6385 (List!10049) Bool)

(assert (=> b!1020593 (= res!458588 (isEmpty!6385 s!10566))))

(declare-fun Exists!548 (Int) Bool)

(assert (=> b!1020593 (= (Exists!548 lambda!36255) (Exists!548 lambda!36256))))

(declare-datatypes ((Unit!15313 0))(
  ( (Unit!15314) )
))
(declare-fun lt!354246 () Unit!15313)

(declare-datatypes ((Regex!2819 0))(
  ( (ElementMatch!2819 (c!169130 C!6208)) (Concat!4652 (regOne!6150 Regex!2819) (regTwo!6150 Regex!2819)) (EmptyExpr!2819) (Star!2819 (reg!3148 Regex!2819)) (EmptyLang!2819) (Union!2819 (regOne!6151 Regex!2819) (regTwo!6151 Regex!2819)) )
))
(declare-fun r!15766 () Regex!2819)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!250 (Regex!2819 Regex!2819 List!10049) Unit!15313)

(assert (=> b!1020593 (= lt!354246 (lemmaExistCutMatchRandMatchRSpecEquivalent!250 EmptyExpr!2819 (regTwo!6150 r!15766) s!10566))))

(declare-datatypes ((tuple2!11420 0))(
  ( (tuple2!11421 (_1!6536 List!10049) (_2!6536 List!10049)) )
))
(declare-datatypes ((Option!2352 0))(
  ( (None!2351) (Some!2351 (v!19768 tuple2!11420)) )
))
(declare-fun lt!354242 () Option!2352)

(declare-fun isDefined!1994 (Option!2352) Bool)

(assert (=> b!1020593 (= (isDefined!1994 lt!354242) (Exists!548 lambda!36255))))

(declare-fun findConcatSeparation!458 (Regex!2819 Regex!2819 List!10049 List!10049 List!10049) Option!2352)

(assert (=> b!1020593 (= lt!354242 (findConcatSeparation!458 EmptyExpr!2819 (regTwo!6150 r!15766) Nil!10033 s!10566 s!10566))))

(declare-fun lt!354245 () Unit!15313)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!458 (Regex!2819 Regex!2819 List!10049) Unit!15313)

(assert (=> b!1020593 (= lt!354245 (lemmaFindConcatSeparationEquivalentToExists!458 EmptyExpr!2819 (regTwo!6150 r!15766) s!10566))))

(declare-fun b!1020594 () Bool)

(declare-fun e!651807 () Bool)

(declare-fun tp_is_empty!5281 () Bool)

(assert (=> b!1020594 (= e!651807 tp_is_empty!5281)))

(declare-fun res!458587 () Bool)

(declare-fun e!651805 () Bool)

(assert (=> start!88846 (=> (not res!458587) (not e!651805))))

(declare-fun validRegex!1288 (Regex!2819) Bool)

(assert (=> start!88846 (= res!458587 (validRegex!1288 r!15766))))

(assert (=> start!88846 e!651805))

(assert (=> start!88846 e!651807))

(declare-fun e!651804 () Bool)

(assert (=> start!88846 e!651804))

(declare-fun b!1020595 () Bool)

(declare-fun tp!310132 () Bool)

(assert (=> b!1020595 (= e!651804 (and tp_is_empty!5281 tp!310132))))

(declare-fun b!1020596 () Bool)

(declare-fun res!458590 () Bool)

(assert (=> b!1020596 (=> res!458590 e!651803)))

(declare-fun isEmpty!6386 (Option!2352) Bool)

(assert (=> b!1020596 (= res!458590 (not (isEmpty!6386 lt!354242)))))

(declare-fun b!1020597 () Bool)

(declare-fun lt!354243 () Bool)

(declare-fun lt!354244 () Bool)

(assert (=> b!1020597 (= e!651803 true)))

(assert (=> b!1020597 (= lt!354244 lt!354243)))

(declare-fun lt!354241 () Regex!2819)

(declare-fun matchR!1355 (Regex!2819 List!10049) Bool)

(assert (=> b!1020597 (= lt!354243 (matchR!1355 lt!354241 s!10566))))

(assert (=> b!1020597 (= lt!354244 (matchR!1355 (regTwo!6150 r!15766) s!10566))))

(declare-fun removeUselessConcat!388 (Regex!2819) Regex!2819)

(assert (=> b!1020597 (= lt!354241 (removeUselessConcat!388 (regTwo!6150 r!15766)))))

(declare-fun lt!354239 () Unit!15313)

(declare-fun lemmaRemoveUselessConcatSound!228 (Regex!2819 List!10049) Unit!15313)

(assert (=> b!1020597 (= lt!354239 (lemmaRemoveUselessConcatSound!228 (regTwo!6150 r!15766) s!10566))))

(declare-fun b!1020598 () Bool)

(declare-fun tp!310131 () Bool)

(assert (=> b!1020598 (= e!651807 tp!310131)))

(declare-fun b!1020599 () Bool)

(declare-fun tp!310130 () Bool)

(declare-fun tp!310127 () Bool)

(assert (=> b!1020599 (= e!651807 (and tp!310130 tp!310127))))

(declare-fun b!1020600 () Bool)

(declare-fun tp!310128 () Bool)

(declare-fun tp!310129 () Bool)

(assert (=> b!1020600 (= e!651807 (and tp!310128 tp!310129))))

(declare-fun b!1020601 () Bool)

(assert (=> b!1020601 (= e!651805 (not e!651806))))

(declare-fun res!458589 () Bool)

(assert (=> b!1020601 (=> res!458589 e!651806)))

(declare-fun lt!354240 () Bool)

(get-info :version)

(assert (=> b!1020601 (= res!458589 (or lt!354240 (not ((_ is Concat!4652) r!15766)) (not ((_ is EmptyExpr!2819) (regOne!6150 r!15766)))))))

(declare-fun matchRSpec!618 (Regex!2819 List!10049) Bool)

(assert (=> b!1020601 (= lt!354240 (matchRSpec!618 r!15766 s!10566))))

(assert (=> b!1020601 (= lt!354240 (matchR!1355 r!15766 s!10566))))

(declare-fun lt!354247 () Unit!15313)

(declare-fun mainMatchTheorem!618 (Regex!2819 List!10049) Unit!15313)

(assert (=> b!1020601 (= lt!354247 (mainMatchTheorem!618 r!15766 s!10566))))

(assert (= (and start!88846 res!458587) b!1020601))

(assert (= (and b!1020601 (not res!458589)) b!1020593))

(assert (= (and b!1020593 (not res!458588)) b!1020596))

(assert (= (and b!1020596 (not res!458590)) b!1020597))

(assert (= (and start!88846 ((_ is ElementMatch!2819) r!15766)) b!1020594))

(assert (= (and start!88846 ((_ is Concat!4652) r!15766)) b!1020599))

(assert (= (and start!88846 ((_ is Star!2819) r!15766)) b!1020598))

(assert (= (and start!88846 ((_ is Union!2819) r!15766)) b!1020600))

(assert (= (and start!88846 ((_ is Cons!10033) s!10566)) b!1020595))

(declare-fun m!1199805 () Bool)

(assert (=> b!1020597 m!1199805))

(declare-fun m!1199807 () Bool)

(assert (=> b!1020597 m!1199807))

(declare-fun m!1199809 () Bool)

(assert (=> b!1020597 m!1199809))

(declare-fun m!1199811 () Bool)

(assert (=> b!1020597 m!1199811))

(declare-fun m!1199813 () Bool)

(assert (=> b!1020593 m!1199813))

(declare-fun m!1199815 () Bool)

(assert (=> b!1020593 m!1199815))

(declare-fun m!1199817 () Bool)

(assert (=> b!1020593 m!1199817))

(assert (=> b!1020593 m!1199813))

(declare-fun m!1199819 () Bool)

(assert (=> b!1020593 m!1199819))

(declare-fun m!1199821 () Bool)

(assert (=> b!1020593 m!1199821))

(declare-fun m!1199823 () Bool)

(assert (=> b!1020593 m!1199823))

(declare-fun m!1199825 () Bool)

(assert (=> b!1020593 m!1199825))

(declare-fun m!1199827 () Bool)

(assert (=> b!1020596 m!1199827))

(declare-fun m!1199829 () Bool)

(assert (=> b!1020601 m!1199829))

(declare-fun m!1199831 () Bool)

(assert (=> b!1020601 m!1199831))

(declare-fun m!1199833 () Bool)

(assert (=> b!1020601 m!1199833))

(declare-fun m!1199835 () Bool)

(assert (=> start!88846 m!1199835))

(check-sat (not b!1020596) (not b!1020600) (not b!1020597) (not b!1020598) (not b!1020599) (not b!1020601) (not start!88846) (not b!1020595) tp_is_empty!5281 (not b!1020593))
(check-sat)
