; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83378 () Bool)

(assert start!83378)

(declare-fun b!932005 () Bool)

(declare-fun e!605658 () Bool)

(declare-fun e!605661 () Bool)

(assert (=> b!932005 (= e!605658 e!605661)))

(declare-fun res!423318 () Bool)

(assert (=> b!932005 (=> res!423318 e!605661)))

(declare-datatypes ((C!5636 0))(
  ( (C!5637 (val!3066 Int)) )
))
(declare-datatypes ((Regex!2533 0))(
  ( (ElementMatch!2533 (c!151532 C!5636)) (Concat!4366 (regOne!5578 Regex!2533) (regTwo!5578 Regex!2533)) (EmptyExpr!2533) (Star!2533 (reg!2862 Regex!2533)) (EmptyLang!2533) (Union!2533 (regOne!5579 Regex!2533) (regTwo!5579 Regex!2533)) )
))
(declare-fun lt!340451 () Regex!2533)

(declare-datatypes ((List!9763 0))(
  ( (Nil!9747) (Cons!9747 (h!15148 C!5636) (t!100809 List!9763)) )
))
(declare-fun s!10566 () List!9763)

(declare-fun matchR!1071 (Regex!2533 List!9763) Bool)

(assert (=> b!932005 (= res!423318 (not (matchR!1071 lt!340451 s!10566)))))

(declare-fun lt!340456 () Regex!2533)

(declare-fun lt!340452 () Regex!2533)

(assert (=> b!932005 (= lt!340451 (Union!2533 lt!340456 lt!340452))))

(declare-fun r!15766 () Regex!2533)

(declare-fun removeUselessConcat!208 (Regex!2533) Regex!2533)

(assert (=> b!932005 (= lt!340452 (removeUselessConcat!208 (regTwo!5579 r!15766)))))

(assert (=> b!932005 (= lt!340456 (removeUselessConcat!208 (regOne!5579 r!15766)))))

(declare-fun b!932006 () Bool)

(declare-fun e!605659 () Bool)

(assert (=> b!932006 (= e!605659 (not e!605658))))

(declare-fun res!423315 () Bool)

(assert (=> b!932006 (=> res!423315 e!605658)))

(declare-fun lt!340454 () Bool)

(get-info :version)

(assert (=> b!932006 (= res!423315 (or lt!340454 (and ((_ is Concat!4366) r!15766) ((_ is EmptyExpr!2533) (regOne!5578 r!15766))) (and ((_ is Concat!4366) r!15766) ((_ is EmptyExpr!2533) (regTwo!5578 r!15766))) ((_ is Concat!4366) r!15766) (not ((_ is Union!2533) r!15766))))))

(declare-fun matchRSpec!334 (Regex!2533 List!9763) Bool)

(assert (=> b!932006 (= lt!340454 (matchRSpec!334 r!15766 s!10566))))

(assert (=> b!932006 (= lt!340454 (matchR!1071 r!15766 s!10566))))

(declare-datatypes ((Unit!14685 0))(
  ( (Unit!14686) )
))
(declare-fun lt!340453 () Unit!14685)

(declare-fun mainMatchTheorem!334 (Regex!2533 List!9763) Unit!14685)

(assert (=> b!932006 (= lt!340453 (mainMatchTheorem!334 r!15766 s!10566))))

(declare-fun b!932007 () Bool)

(declare-fun e!605657 () Bool)

(declare-fun tp_is_empty!4709 () Bool)

(assert (=> b!932007 (= e!605657 tp_is_empty!4709)))

(declare-fun b!932008 () Bool)

(declare-fun e!605656 () Bool)

(declare-fun tp!289276 () Bool)

(assert (=> b!932008 (= e!605656 (and tp_is_empty!4709 tp!289276))))

(declare-fun b!932009 () Bool)

(assert (=> b!932009 (= e!605661 true)))

(declare-fun e!605660 () Bool)

(assert (=> b!932009 e!605660))

(declare-fun res!423317 () Bool)

(assert (=> b!932009 (=> res!423317 e!605660)))

(assert (=> b!932009 (= res!423317 (matchR!1071 lt!340456 s!10566))))

(declare-fun lt!340455 () Unit!14685)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!50 (Regex!2533 Regex!2533 List!9763) Unit!14685)

(assert (=> b!932009 (= lt!340455 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!50 lt!340456 lt!340452 s!10566))))

(assert (=> b!932009 (matchRSpec!334 lt!340451 s!10566)))

(declare-fun lt!340457 () Unit!14685)

(assert (=> b!932009 (= lt!340457 (mainMatchTheorem!334 lt!340451 s!10566))))

(declare-fun res!423316 () Bool)

(assert (=> start!83378 (=> (not res!423316) (not e!605659))))

(declare-fun validRegex!1002 (Regex!2533) Bool)

(assert (=> start!83378 (= res!423316 (validRegex!1002 r!15766))))

(assert (=> start!83378 e!605659))

(assert (=> start!83378 e!605657))

(assert (=> start!83378 e!605656))

(declare-fun b!932010 () Bool)

(assert (=> b!932010 (= e!605660 (matchR!1071 lt!340452 s!10566))))

(declare-fun b!932011 () Bool)

(declare-fun tp!289272 () Bool)

(declare-fun tp!289275 () Bool)

(assert (=> b!932011 (= e!605657 (and tp!289272 tp!289275))))

(declare-fun b!932012 () Bool)

(declare-fun tp!289274 () Bool)

(assert (=> b!932012 (= e!605657 tp!289274)))

(declare-fun b!932013 () Bool)

(declare-fun tp!289271 () Bool)

(declare-fun tp!289273 () Bool)

(assert (=> b!932013 (= e!605657 (and tp!289271 tp!289273))))

(assert (= (and start!83378 res!423316) b!932006))

(assert (= (and b!932006 (not res!423315)) b!932005))

(assert (= (and b!932005 (not res!423318)) b!932009))

(assert (= (and b!932009 (not res!423317)) b!932010))

(assert (= (and start!83378 ((_ is ElementMatch!2533) r!15766)) b!932007))

(assert (= (and start!83378 ((_ is Concat!4366) r!15766)) b!932013))

(assert (= (and start!83378 ((_ is Star!2533) r!15766)) b!932012))

(assert (= (and start!83378 ((_ is Union!2533) r!15766)) b!932011))

(assert (= (and start!83378 ((_ is Cons!9747) s!10566)) b!932008))

(declare-fun m!1153653 () Bool)

(assert (=> b!932005 m!1153653))

(declare-fun m!1153655 () Bool)

(assert (=> b!932005 m!1153655))

(declare-fun m!1153657 () Bool)

(assert (=> b!932005 m!1153657))

(declare-fun m!1153659 () Bool)

(assert (=> b!932010 m!1153659))

(declare-fun m!1153661 () Bool)

(assert (=> b!932009 m!1153661))

(declare-fun m!1153663 () Bool)

(assert (=> b!932009 m!1153663))

(declare-fun m!1153665 () Bool)

(assert (=> b!932009 m!1153665))

(declare-fun m!1153667 () Bool)

(assert (=> b!932009 m!1153667))

(declare-fun m!1153669 () Bool)

(assert (=> start!83378 m!1153669))

(declare-fun m!1153671 () Bool)

(assert (=> b!932006 m!1153671))

(declare-fun m!1153673 () Bool)

(assert (=> b!932006 m!1153673))

(declare-fun m!1153675 () Bool)

(assert (=> b!932006 m!1153675))

(check-sat (not b!932005) (not b!932009) (not b!932011) (not b!932006) (not b!932008) (not b!932012) (not start!83378) (not b!932013) tp_is_empty!4709 (not b!932010))
(check-sat)
