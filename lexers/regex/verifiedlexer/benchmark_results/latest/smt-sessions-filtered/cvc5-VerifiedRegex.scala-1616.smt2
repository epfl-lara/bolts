; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!83036 () Bool)

(assert start!83036)

(declare-fun b!925537 () Bool)

(assert (=> b!925537 true))

(assert (=> b!925537 true))

(declare-fun lambda!30472 () Int)

(declare-fun lambda!30471 () Int)

(assert (=> b!925537 (not (= lambda!30472 lambda!30471))))

(assert (=> b!925537 true))

(assert (=> b!925537 true))

(declare-fun bs!237532 () Bool)

(declare-fun b!925541 () Bool)

(assert (= bs!237532 (and b!925541 b!925537)))

(declare-datatypes ((C!5550 0))(
  ( (C!5551 (val!3023 Int)) )
))
(declare-datatypes ((Regex!2490 0))(
  ( (ElementMatch!2490 (c!150309 C!5550)) (Concat!4323 (regOne!5492 Regex!2490) (regTwo!5492 Regex!2490)) (EmptyExpr!2490) (Star!2490 (reg!2819 Regex!2490)) (EmptyLang!2490) (Union!2490 (regOne!5493 Regex!2490) (regTwo!5493 Regex!2490)) )
))
(declare-fun r!15766 () Regex!2490)

(declare-fun lt!339304 () Regex!2490)

(declare-fun lt!339305 () Regex!2490)

(declare-fun lambda!30473 () Int)

(assert (=> bs!237532 (= (and (= lt!339305 (regOne!5492 r!15766)) (= lt!339304 (regTwo!5492 r!15766))) (= lambda!30473 lambda!30471))))

(assert (=> bs!237532 (not (= lambda!30473 lambda!30472))))

(assert (=> b!925541 true))

(assert (=> b!925541 true))

(assert (=> b!925541 true))

(declare-fun lambda!30474 () Int)

(assert (=> bs!237532 (not (= lambda!30474 lambda!30471))))

(assert (=> bs!237532 (= (and (= lt!339305 (regOne!5492 r!15766)) (= lt!339304 (regTwo!5492 r!15766))) (= lambda!30474 lambda!30472))))

(assert (=> b!925541 (not (= lambda!30474 lambda!30473))))

(assert (=> b!925541 true))

(assert (=> b!925541 true))

(assert (=> b!925541 true))

(declare-fun res!420760 () Bool)

(declare-fun e!602140 () Bool)

(assert (=> start!83036 (=> (not res!420760) (not e!602140))))

(declare-fun validRegex!959 (Regex!2490) Bool)

(assert (=> start!83036 (= res!420760 (validRegex!959 r!15766))))

(assert (=> start!83036 e!602140))

(declare-fun e!602137 () Bool)

(assert (=> start!83036 e!602137))

(declare-fun e!602136 () Bool)

(assert (=> start!83036 e!602136))

(declare-fun b!925536 () Bool)

(declare-fun e!602141 () Bool)

(assert (=> b!925536 (= e!602140 (not e!602141))))

(declare-fun res!420757 () Bool)

(assert (=> b!925536 (=> res!420757 e!602141)))

(declare-fun lt!339310 () Bool)

(assert (=> b!925536 (= res!420757 (or lt!339310 (and (is-Concat!4323 r!15766) (is-EmptyExpr!2490 (regOne!5492 r!15766))) (and (is-Concat!4323 r!15766) (is-EmptyExpr!2490 (regTwo!5492 r!15766))) (not (is-Concat!4323 r!15766))))))

(declare-datatypes ((List!9720 0))(
  ( (Nil!9704) (Cons!9704 (h!15105 C!5550) (t!100766 List!9720)) )
))
(declare-fun s!10566 () List!9720)

(declare-fun matchRSpec!291 (Regex!2490 List!9720) Bool)

(assert (=> b!925536 (= lt!339310 (matchRSpec!291 r!15766 s!10566))))

(declare-fun matchR!1028 (Regex!2490 List!9720) Bool)

(assert (=> b!925536 (= lt!339310 (matchR!1028 r!15766 s!10566))))

(declare-datatypes ((Unit!14599 0))(
  ( (Unit!14600) )
))
(declare-fun lt!339303 () Unit!14599)

(declare-fun mainMatchTheorem!291 (Regex!2490 List!9720) Unit!14599)

(assert (=> b!925536 (= lt!339303 (mainMatchTheorem!291 r!15766 s!10566))))

(declare-fun e!602138 () Bool)

(assert (=> b!925537 (= e!602141 e!602138)))

(declare-fun res!420759 () Bool)

(assert (=> b!925537 (=> res!420759 e!602138)))

(declare-fun isEmpty!5961 (List!9720) Bool)

(assert (=> b!925537 (= res!420759 (isEmpty!5961 s!10566))))

(declare-fun Exists!261 (Int) Bool)

(assert (=> b!925537 (= (Exists!261 lambda!30471) (Exists!261 lambda!30472))))

(declare-fun lt!339308 () Unit!14599)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!173 (Regex!2490 Regex!2490 List!9720) Unit!14599)

(assert (=> b!925537 (= lt!339308 (lemmaExistCutMatchRandMatchRSpecEquivalent!173 (regOne!5492 r!15766) (regTwo!5492 r!15766) s!10566))))

(declare-datatypes ((tuple2!10966 0))(
  ( (tuple2!10967 (_1!6309 List!9720) (_2!6309 List!9720)) )
))
(declare-datatypes ((Option!2125 0))(
  ( (None!2124) (Some!2124 (v!19541 tuple2!10966)) )
))
(declare-fun isDefined!1767 (Option!2125) Bool)

(declare-fun findConcatSeparation!231 (Regex!2490 Regex!2490 List!9720 List!9720 List!9720) Option!2125)

(assert (=> b!925537 (= (isDefined!1767 (findConcatSeparation!231 (regOne!5492 r!15766) (regTwo!5492 r!15766) Nil!9704 s!10566 s!10566)) (Exists!261 lambda!30471))))

(declare-fun lt!339302 () Unit!14599)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!231 (Regex!2490 Regex!2490 List!9720) Unit!14599)

(assert (=> b!925537 (= lt!339302 (lemmaFindConcatSeparationEquivalentToExists!231 (regOne!5492 r!15766) (regTwo!5492 r!15766) s!10566))))

(declare-fun b!925538 () Bool)

(declare-fun tp_is_empty!4623 () Bool)

(assert (=> b!925538 (= e!602137 tp_is_empty!4623)))

(declare-fun b!925539 () Bool)

(declare-fun tp!287663 () Bool)

(assert (=> b!925539 (= e!602137 tp!287663)))

(declare-fun b!925540 () Bool)

(declare-fun tp!287665 () Bool)

(assert (=> b!925540 (= e!602136 (and tp_is_empty!4623 tp!287665))))

(declare-fun e!602139 () Bool)

(assert (=> b!925541 (= e!602139 true)))

(assert (=> b!925541 (= (Exists!261 lambda!30473) (Exists!261 lambda!30474))))

(declare-fun lt!339311 () Unit!14599)

(assert (=> b!925541 (= lt!339311 (lemmaExistCutMatchRandMatchRSpecEquivalent!173 lt!339305 lt!339304 s!10566))))

(assert (=> b!925541 (= (isDefined!1767 (findConcatSeparation!231 lt!339305 lt!339304 Nil!9704 s!10566 s!10566)) (Exists!261 lambda!30473))))

(declare-fun lt!339306 () Unit!14599)

(assert (=> b!925541 (= lt!339306 (lemmaFindConcatSeparationEquivalentToExists!231 lt!339305 lt!339304 s!10566))))

(declare-fun lt!339307 () Regex!2490)

(assert (=> b!925541 (matchRSpec!291 lt!339307 s!10566)))

(declare-fun lt!339309 () Unit!14599)

(assert (=> b!925541 (= lt!339309 (mainMatchTheorem!291 lt!339307 s!10566))))

(declare-fun b!925542 () Bool)

(declare-fun tp!287662 () Bool)

(declare-fun tp!287661 () Bool)

(assert (=> b!925542 (= e!602137 (and tp!287662 tp!287661))))

(declare-fun b!925543 () Bool)

(assert (=> b!925543 (= e!602138 e!602139)))

(declare-fun res!420758 () Bool)

(assert (=> b!925543 (=> res!420758 e!602139)))

(assert (=> b!925543 (= res!420758 (not (matchR!1028 lt!339307 s!10566)))))

(assert (=> b!925543 (= lt!339307 (Concat!4323 lt!339305 lt!339304))))

(declare-fun removeUselessConcat!167 (Regex!2490) Regex!2490)

(assert (=> b!925543 (= lt!339304 (removeUselessConcat!167 (regTwo!5492 r!15766)))))

(assert (=> b!925543 (= lt!339305 (removeUselessConcat!167 (regOne!5492 r!15766)))))

(declare-fun b!925544 () Bool)

(declare-fun tp!287664 () Bool)

(declare-fun tp!287666 () Bool)

(assert (=> b!925544 (= e!602137 (and tp!287664 tp!287666))))

(assert (= (and start!83036 res!420760) b!925536))

(assert (= (and b!925536 (not res!420757)) b!925537))

(assert (= (and b!925537 (not res!420759)) b!925543))

(assert (= (and b!925543 (not res!420758)) b!925541))

(assert (= (and start!83036 (is-ElementMatch!2490 r!15766)) b!925538))

(assert (= (and start!83036 (is-Concat!4323 r!15766)) b!925542))

(assert (= (and start!83036 (is-Star!2490 r!15766)) b!925539))

(assert (= (and start!83036 (is-Union!2490 r!15766)) b!925544))

(assert (= (and start!83036 (is-Cons!9704 s!10566)) b!925540))

(declare-fun m!1150841 () Bool)

(assert (=> b!925536 m!1150841))

(declare-fun m!1150843 () Bool)

(assert (=> b!925536 m!1150843))

(declare-fun m!1150845 () Bool)

(assert (=> b!925536 m!1150845))

(declare-fun m!1150847 () Bool)

(assert (=> b!925541 m!1150847))

(declare-fun m!1150849 () Bool)

(assert (=> b!925541 m!1150849))

(declare-fun m!1150851 () Bool)

(assert (=> b!925541 m!1150851))

(assert (=> b!925541 m!1150851))

(declare-fun m!1150853 () Bool)

(assert (=> b!925541 m!1150853))

(declare-fun m!1150855 () Bool)

(assert (=> b!925541 m!1150855))

(declare-fun m!1150857 () Bool)

(assert (=> b!925541 m!1150857))

(declare-fun m!1150859 () Bool)

(assert (=> b!925541 m!1150859))

(assert (=> b!925541 m!1150849))

(declare-fun m!1150861 () Bool)

(assert (=> b!925541 m!1150861))

(declare-fun m!1150863 () Bool)

(assert (=> start!83036 m!1150863))

(declare-fun m!1150865 () Bool)

(assert (=> b!925537 m!1150865))

(declare-fun m!1150867 () Bool)

(assert (=> b!925537 m!1150867))

(declare-fun m!1150869 () Bool)

(assert (=> b!925537 m!1150869))

(declare-fun m!1150871 () Bool)

(assert (=> b!925537 m!1150871))

(declare-fun m!1150873 () Bool)

(assert (=> b!925537 m!1150873))

(declare-fun m!1150875 () Bool)

(assert (=> b!925537 m!1150875))

(declare-fun m!1150877 () Bool)

(assert (=> b!925537 m!1150877))

(assert (=> b!925537 m!1150873))

(assert (=> b!925537 m!1150865))

(declare-fun m!1150879 () Bool)

(assert (=> b!925543 m!1150879))

(declare-fun m!1150881 () Bool)

(assert (=> b!925543 m!1150881))

(declare-fun m!1150883 () Bool)

(assert (=> b!925543 m!1150883))

(push 1)

(assert (not b!925540))

(assert (not b!925543))

(assert (not start!83036))

(assert (not b!925536))

(assert (not b!925537))

(assert tp_is_empty!4623)

(assert (not b!925539))

(assert (not b!925544))

(assert (not b!925542))

(assert (not b!925541))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

