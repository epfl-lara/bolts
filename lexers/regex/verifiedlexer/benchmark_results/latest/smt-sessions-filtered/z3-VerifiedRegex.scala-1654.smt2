; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83690 () Bool)

(assert start!83690)

(declare-fun b!936619 () Bool)

(assert (=> b!936619 true))

(assert (=> b!936619 true))

(assert (=> b!936619 true))

(declare-fun lambda!31184 () Int)

(declare-fun lambda!31183 () Int)

(assert (=> b!936619 (not (= lambda!31184 lambda!31183))))

(assert (=> b!936619 true))

(assert (=> b!936619 true))

(assert (=> b!936619 true))

(declare-fun bs!238021 () Bool)

(declare-fun b!936622 () Bool)

(assert (= bs!238021 (and b!936622 b!936619)))

(declare-datatypes ((C!5704 0))(
  ( (C!5705 (val!3100 Int)) )
))
(declare-datatypes ((Regex!2567 0))(
  ( (ElementMatch!2567 (c!152324 C!5704)) (Concat!4400 (regOne!5646 Regex!2567) (regTwo!5646 Regex!2567)) (EmptyExpr!2567) (Star!2567 (reg!2896 Regex!2567)) (EmptyLang!2567) (Union!2567 (regOne!5647 Regex!2567) (regTwo!5647 Regex!2567)) )
))
(declare-fun r!15766 () Regex!2567)

(declare-fun lt!341458 () Regex!2567)

(declare-fun lt!341461 () Regex!2567)

(declare-fun lambda!31185 () Int)

(declare-fun lt!341459 () Regex!2567)

(assert (=> bs!238021 (= (and (= lt!341459 (reg!2896 r!15766)) (= lt!341461 lt!341458)) (= lambda!31185 lambda!31183))))

(assert (=> bs!238021 (not (= lambda!31185 lambda!31184))))

(assert (=> b!936622 true))

(assert (=> b!936622 true))

(assert (=> b!936622 true))

(declare-fun lambda!31186 () Int)

(assert (=> bs!238021 (not (= lambda!31186 lambda!31183))))

(assert (=> bs!238021 (= (and (= lt!341459 (reg!2896 r!15766)) (= lt!341461 lt!341458)) (= lambda!31186 lambda!31184))))

(assert (=> b!936622 (not (= lambda!31186 lambda!31185))))

(assert (=> b!936622 true))

(assert (=> b!936622 true))

(assert (=> b!936622 true))

(declare-fun b!936618 () Bool)

(declare-fun e!608128 () Bool)

(declare-fun tp!290419 () Bool)

(declare-fun tp!290416 () Bool)

(assert (=> b!936618 (= e!608128 (and tp!290419 tp!290416))))

(declare-fun e!608129 () Bool)

(declare-fun e!608125 () Bool)

(assert (=> b!936619 (= e!608129 e!608125)))

(declare-fun res!425322 () Bool)

(assert (=> b!936619 (=> res!425322 e!608125)))

(declare-datatypes ((List!9797 0))(
  ( (Nil!9781) (Cons!9781 (h!15182 C!5704) (t!100843 List!9797)) )
))
(declare-fun s!10566 () List!9797)

(declare-fun matchR!1105 (Regex!2567 List!9797) Bool)

(assert (=> b!936619 (= res!425322 (not (matchR!1105 lt!341461 s!10566)))))

(assert (=> b!936619 (= lt!341461 (Star!2567 lt!341459))))

(declare-fun removeUselessConcat!236 (Regex!2567) Regex!2567)

(assert (=> b!936619 (= lt!341459 (removeUselessConcat!236 (reg!2896 r!15766)))))

(declare-fun Exists!318 (Int) Bool)

(assert (=> b!936619 (= (Exists!318 lambda!31183) (Exists!318 lambda!31184))))

(declare-datatypes ((Unit!14753 0))(
  ( (Unit!14754) )
))
(declare-fun lt!341464 () Unit!14753)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!62 (Regex!2567 List!9797) Unit!14753)

(assert (=> b!936619 (= lt!341464 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!62 (reg!2896 r!15766) s!10566))))

(declare-datatypes ((tuple2!11032 0))(
  ( (tuple2!11033 (_1!6342 List!9797) (_2!6342 List!9797)) )
))
(declare-datatypes ((Option!2158 0))(
  ( (None!2157) (Some!2157 (v!19574 tuple2!11032)) )
))
(declare-fun isDefined!1800 (Option!2158) Bool)

(declare-fun findConcatSeparation!264 (Regex!2567 Regex!2567 List!9797 List!9797 List!9797) Option!2158)

(assert (=> b!936619 (= (isDefined!1800 (findConcatSeparation!264 (reg!2896 r!15766) lt!341458 Nil!9781 s!10566 s!10566)) (Exists!318 lambda!31183))))

(declare-fun lt!341460 () Unit!14753)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!264 (Regex!2567 Regex!2567 List!9797) Unit!14753)

(assert (=> b!936619 (= lt!341460 (lemmaFindConcatSeparationEquivalentToExists!264 (reg!2896 r!15766) lt!341458 s!10566))))

(assert (=> b!936619 (= lt!341458 (Star!2567 (reg!2896 r!15766)))))

(declare-fun res!425321 () Bool)

(declare-fun e!608127 () Bool)

(assert (=> start!83690 (=> (not res!425321) (not e!608127))))

(declare-fun validRegex!1036 (Regex!2567) Bool)

(assert (=> start!83690 (= res!425321 (validRegex!1036 r!15766))))

(assert (=> start!83690 e!608127))

(assert (=> start!83690 e!608128))

(declare-fun e!608126 () Bool)

(assert (=> start!83690 e!608126))

(declare-fun b!936620 () Bool)

(declare-fun tp!290417 () Bool)

(declare-fun tp!290420 () Bool)

(assert (=> b!936620 (= e!608128 (and tp!290417 tp!290420))))

(declare-fun b!936621 () Bool)

(declare-fun tp_is_empty!4777 () Bool)

(declare-fun tp!290418 () Bool)

(assert (=> b!936621 (= e!608126 (and tp_is_empty!4777 tp!290418))))

(assert (=> b!936622 (= e!608125 true)))

(assert (=> b!936622 (= (Exists!318 lambda!31185) (Exists!318 lambda!31186))))

(declare-fun lt!341465 () Unit!14753)

(assert (=> b!936622 (= lt!341465 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!62 lt!341459 s!10566))))

(assert (=> b!936622 (= (isDefined!1800 (findConcatSeparation!264 lt!341459 lt!341461 Nil!9781 s!10566 s!10566)) (Exists!318 lambda!31185))))

(declare-fun lt!341457 () Unit!14753)

(assert (=> b!936622 (= lt!341457 (lemmaFindConcatSeparationEquivalentToExists!264 lt!341459 lt!341461 s!10566))))

(declare-fun matchRSpec!368 (Regex!2567 List!9797) Bool)

(assert (=> b!936622 (matchRSpec!368 lt!341461 s!10566)))

(declare-fun lt!341462 () Unit!14753)

(declare-fun mainMatchTheorem!368 (Regex!2567 List!9797) Unit!14753)

(assert (=> b!936622 (= lt!341462 (mainMatchTheorem!368 lt!341461 s!10566))))

(declare-fun b!936623 () Bool)

(declare-fun tp!290415 () Bool)

(assert (=> b!936623 (= e!608128 tp!290415)))

(declare-fun b!936624 () Bool)

(assert (=> b!936624 (= e!608128 tp_is_empty!4777)))

(declare-fun b!936625 () Bool)

(assert (=> b!936625 (= e!608127 (not e!608129))))

(declare-fun res!425320 () Bool)

(assert (=> b!936625 (=> res!425320 e!608129)))

(declare-fun lt!341463 () Bool)

(get-info :version)

(assert (=> b!936625 (= res!425320 (or lt!341463 (and ((_ is Concat!4400) r!15766) ((_ is EmptyExpr!2567) (regOne!5646 r!15766))) (and ((_ is Concat!4400) r!15766) ((_ is EmptyExpr!2567) (regTwo!5646 r!15766))) ((_ is Concat!4400) r!15766) ((_ is Union!2567) r!15766) (not ((_ is Star!2567) r!15766))))))

(assert (=> b!936625 (= lt!341463 (matchRSpec!368 r!15766 s!10566))))

(assert (=> b!936625 (= lt!341463 (matchR!1105 r!15766 s!10566))))

(declare-fun lt!341456 () Unit!14753)

(assert (=> b!936625 (= lt!341456 (mainMatchTheorem!368 r!15766 s!10566))))

(assert (= (and start!83690 res!425321) b!936625))

(assert (= (and b!936625 (not res!425320)) b!936619))

(assert (= (and b!936619 (not res!425322)) b!936622))

(assert (= (and start!83690 ((_ is ElementMatch!2567) r!15766)) b!936624))

(assert (= (and start!83690 ((_ is Concat!4400) r!15766)) b!936618))

(assert (= (and start!83690 ((_ is Star!2567) r!15766)) b!936623))

(assert (= (and start!83690 ((_ is Union!2567) r!15766)) b!936620))

(assert (= (and start!83690 ((_ is Cons!9781) s!10566)) b!936621))

(declare-fun m!1155801 () Bool)

(assert (=> b!936619 m!1155801))

(declare-fun m!1155803 () Bool)

(assert (=> b!936619 m!1155803))

(declare-fun m!1155805 () Bool)

(assert (=> b!936619 m!1155805))

(declare-fun m!1155807 () Bool)

(assert (=> b!936619 m!1155807))

(declare-fun m!1155809 () Bool)

(assert (=> b!936619 m!1155809))

(assert (=> b!936619 m!1155805))

(assert (=> b!936619 m!1155809))

(declare-fun m!1155811 () Bool)

(assert (=> b!936619 m!1155811))

(declare-fun m!1155813 () Bool)

(assert (=> b!936619 m!1155813))

(declare-fun m!1155815 () Bool)

(assert (=> b!936619 m!1155815))

(declare-fun m!1155817 () Bool)

(assert (=> start!83690 m!1155817))

(declare-fun m!1155819 () Bool)

(assert (=> b!936622 m!1155819))

(declare-fun m!1155821 () Bool)

(assert (=> b!936622 m!1155821))

(declare-fun m!1155823 () Bool)

(assert (=> b!936622 m!1155823))

(declare-fun m!1155825 () Bool)

(assert (=> b!936622 m!1155825))

(assert (=> b!936622 m!1155823))

(declare-fun m!1155827 () Bool)

(assert (=> b!936622 m!1155827))

(declare-fun m!1155829 () Bool)

(assert (=> b!936622 m!1155829))

(declare-fun m!1155831 () Bool)

(assert (=> b!936622 m!1155831))

(assert (=> b!936622 m!1155831))

(declare-fun m!1155833 () Bool)

(assert (=> b!936622 m!1155833))

(declare-fun m!1155835 () Bool)

(assert (=> b!936625 m!1155835))

(declare-fun m!1155837 () Bool)

(assert (=> b!936625 m!1155837))

(declare-fun m!1155839 () Bool)

(assert (=> b!936625 m!1155839))

(check-sat (not b!936618) tp_is_empty!4777 (not b!936625) (not start!83690) (not b!936621) (not b!936622) (not b!936620) (not b!936619) (not b!936623))
(check-sat)
