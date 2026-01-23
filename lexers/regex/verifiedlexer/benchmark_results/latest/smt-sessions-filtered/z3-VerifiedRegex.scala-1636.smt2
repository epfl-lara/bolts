; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83374 () Bool)

(assert start!83374)

(declare-fun b!931950 () Bool)

(declare-fun e!605619 () Bool)

(declare-fun tp_is_empty!4705 () Bool)

(declare-fun tp!289240 () Bool)

(assert (=> b!931950 (= e!605619 (and tp_is_empty!4705 tp!289240))))

(declare-fun b!931951 () Bool)

(declare-fun e!605625 () Bool)

(declare-fun e!605621 () Bool)

(assert (=> b!931951 (= e!605625 (not e!605621))))

(declare-fun res!423294 () Bool)

(assert (=> b!931951 (=> res!423294 e!605621)))

(declare-fun lt!340415 () Bool)

(declare-datatypes ((C!5632 0))(
  ( (C!5633 (val!3064 Int)) )
))
(declare-datatypes ((Regex!2531 0))(
  ( (ElementMatch!2531 (c!151530 C!5632)) (Concat!4364 (regOne!5574 Regex!2531) (regTwo!5574 Regex!2531)) (EmptyExpr!2531) (Star!2531 (reg!2860 Regex!2531)) (EmptyLang!2531) (Union!2531 (regOne!5575 Regex!2531) (regTwo!5575 Regex!2531)) )
))
(declare-fun r!15766 () Regex!2531)

(get-info :version)

(assert (=> b!931951 (= res!423294 (or lt!340415 (and ((_ is Concat!4364) r!15766) ((_ is EmptyExpr!2531) (regOne!5574 r!15766))) (and ((_ is Concat!4364) r!15766) ((_ is EmptyExpr!2531) (regTwo!5574 r!15766))) ((_ is Concat!4364) r!15766) (not ((_ is Union!2531) r!15766))))))

(declare-datatypes ((List!9761 0))(
  ( (Nil!9745) (Cons!9745 (h!15146 C!5632) (t!100807 List!9761)) )
))
(declare-fun s!10566 () List!9761)

(declare-fun matchRSpec!332 (Regex!2531 List!9761) Bool)

(assert (=> b!931951 (= lt!340415 (matchRSpec!332 r!15766 s!10566))))

(declare-fun matchR!1069 (Regex!2531 List!9761) Bool)

(assert (=> b!931951 (= lt!340415 (matchR!1069 r!15766 s!10566))))

(declare-datatypes ((Unit!14681 0))(
  ( (Unit!14682) )
))
(declare-fun lt!340407 () Unit!14681)

(declare-fun mainMatchTheorem!332 (Regex!2531 List!9761) Unit!14681)

(assert (=> b!931951 (= lt!340407 (mainMatchTheorem!332 r!15766 s!10566))))

(declare-fun b!931952 () Bool)

(declare-fun e!605620 () Bool)

(assert (=> b!931952 (= e!605620 tp_is_empty!4705)))

(declare-fun b!931953 () Bool)

(declare-fun tp!289238 () Bool)

(declare-fun tp!289235 () Bool)

(assert (=> b!931953 (= e!605620 (and tp!289238 tp!289235))))

(declare-fun b!931954 () Bool)

(declare-fun e!605622 () Bool)

(assert (=> b!931954 (= e!605621 e!605622)))

(declare-fun res!423290 () Bool)

(assert (=> b!931954 (=> res!423290 e!605622)))

(declare-fun lt!340412 () Regex!2531)

(assert (=> b!931954 (= res!423290 (not (matchR!1069 lt!340412 s!10566)))))

(declare-fun lt!340408 () Regex!2531)

(declare-fun lt!340409 () Regex!2531)

(assert (=> b!931954 (= lt!340412 (Union!2531 lt!340408 lt!340409))))

(declare-fun removeUselessConcat!206 (Regex!2531) Regex!2531)

(assert (=> b!931954 (= lt!340409 (removeUselessConcat!206 (regTwo!5575 r!15766)))))

(assert (=> b!931954 (= lt!340408 (removeUselessConcat!206 (regOne!5575 r!15766)))))

(declare-fun res!423292 () Bool)

(assert (=> start!83374 (=> (not res!423292) (not e!605625))))

(declare-fun validRegex!1000 (Regex!2531) Bool)

(assert (=> start!83374 (= res!423292 (validRegex!1000 r!15766))))

(assert (=> start!83374 e!605625))

(assert (=> start!83374 e!605620))

(assert (=> start!83374 e!605619))

(declare-fun b!931955 () Bool)

(declare-fun tp!289237 () Bool)

(declare-fun tp!289236 () Bool)

(assert (=> b!931955 (= e!605620 (and tp!289237 tp!289236))))

(declare-fun b!931956 () Bool)

(declare-fun e!605623 () Bool)

(assert (=> b!931956 (= e!605623 (matchR!1069 lt!340409 s!10566))))

(declare-fun b!931957 () Bool)

(declare-fun tp!289239 () Bool)

(assert (=> b!931957 (= e!605620 tp!289239)))

(declare-fun b!931958 () Bool)

(declare-fun e!605624 () Bool)

(assert (=> b!931958 (= e!605624 true)))

(assert (=> b!931958 (matchR!1069 (regOne!5575 r!15766) s!10566)))

(declare-fun lt!340414 () Unit!14681)

(declare-fun lemmaRemoveUselessConcatSound!118 (Regex!2531 List!9761) Unit!14681)

(assert (=> b!931958 (= lt!340414 (lemmaRemoveUselessConcatSound!118 (regOne!5575 r!15766) s!10566))))

(declare-fun b!931959 () Bool)

(assert (=> b!931959 (= e!605622 e!605624)))

(declare-fun res!423293 () Bool)

(assert (=> b!931959 (=> res!423293 e!605624)))

(declare-fun lt!340410 () Bool)

(assert (=> b!931959 (= res!423293 (not lt!340410))))

(assert (=> b!931959 e!605623))

(declare-fun res!423291 () Bool)

(assert (=> b!931959 (=> res!423291 e!605623)))

(assert (=> b!931959 (= res!423291 lt!340410)))

(assert (=> b!931959 (= lt!340410 (matchR!1069 lt!340408 s!10566))))

(declare-fun lt!340411 () Unit!14681)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!48 (Regex!2531 Regex!2531 List!9761) Unit!14681)

(assert (=> b!931959 (= lt!340411 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!48 lt!340408 lt!340409 s!10566))))

(assert (=> b!931959 (matchRSpec!332 lt!340412 s!10566)))

(declare-fun lt!340413 () Unit!14681)

(assert (=> b!931959 (= lt!340413 (mainMatchTheorem!332 lt!340412 s!10566))))

(assert (= (and start!83374 res!423292) b!931951))

(assert (= (and b!931951 (not res!423294)) b!931954))

(assert (= (and b!931954 (not res!423290)) b!931959))

(assert (= (and b!931959 (not res!423291)) b!931956))

(assert (= (and b!931959 (not res!423293)) b!931958))

(assert (= (and start!83374 ((_ is ElementMatch!2531) r!15766)) b!931952))

(assert (= (and start!83374 ((_ is Concat!4364) r!15766)) b!931955))

(assert (= (and start!83374 ((_ is Star!2531) r!15766)) b!931957))

(assert (= (and start!83374 ((_ is Union!2531) r!15766)) b!931953))

(assert (= (and start!83374 ((_ is Cons!9745) s!10566)) b!931950))

(declare-fun m!1153601 () Bool)

(assert (=> b!931956 m!1153601))

(declare-fun m!1153603 () Bool)

(assert (=> b!931959 m!1153603))

(declare-fun m!1153605 () Bool)

(assert (=> b!931959 m!1153605))

(declare-fun m!1153607 () Bool)

(assert (=> b!931959 m!1153607))

(declare-fun m!1153609 () Bool)

(assert (=> b!931959 m!1153609))

(declare-fun m!1153611 () Bool)

(assert (=> start!83374 m!1153611))

(declare-fun m!1153613 () Bool)

(assert (=> b!931954 m!1153613))

(declare-fun m!1153615 () Bool)

(assert (=> b!931954 m!1153615))

(declare-fun m!1153617 () Bool)

(assert (=> b!931954 m!1153617))

(declare-fun m!1153619 () Bool)

(assert (=> b!931958 m!1153619))

(declare-fun m!1153621 () Bool)

(assert (=> b!931958 m!1153621))

(declare-fun m!1153623 () Bool)

(assert (=> b!931951 m!1153623))

(declare-fun m!1153625 () Bool)

(assert (=> b!931951 m!1153625))

(declare-fun m!1153627 () Bool)

(assert (=> b!931951 m!1153627))

(check-sat (not b!931953) tp_is_empty!4705 (not b!931954) (not b!931959) (not b!931950) (not b!931958) (not b!931951) (not start!83374) (not b!931957) (not b!931955) (not b!931956))
(check-sat)
