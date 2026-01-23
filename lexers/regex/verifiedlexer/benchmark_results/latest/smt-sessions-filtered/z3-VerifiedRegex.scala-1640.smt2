; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83418 () Bool)

(assert start!83418)

(declare-fun b!932743 () Bool)

(declare-fun e!606090 () Bool)

(declare-fun e!606091 () Bool)

(assert (=> b!932743 (= e!606090 e!606091)))

(declare-fun res!423627 () Bool)

(assert (=> b!932743 (=> res!423627 e!606091)))

(declare-datatypes ((C!5648 0))(
  ( (C!5649 (val!3072 Int)) )
))
(declare-datatypes ((Regex!2539 0))(
  ( (ElementMatch!2539 (c!151668 C!5648)) (Concat!4372 (regOne!5590 Regex!2539) (regTwo!5590 Regex!2539)) (EmptyExpr!2539) (Star!2539 (reg!2868 Regex!2539)) (EmptyLang!2539) (Union!2539 (regOne!5591 Regex!2539) (regTwo!5591 Regex!2539)) )
))
(declare-fun lt!340671 () Regex!2539)

(declare-datatypes ((List!9769 0))(
  ( (Nil!9753) (Cons!9753 (h!15154 C!5648) (t!100815 List!9769)) )
))
(declare-fun s!10566 () List!9769)

(declare-fun matchR!1077 (Regex!2539 List!9769) Bool)

(assert (=> b!932743 (= res!423627 (not (matchR!1077 lt!340671 s!10566)))))

(declare-fun lt!340663 () Regex!2539)

(declare-fun lt!340664 () Regex!2539)

(assert (=> b!932743 (= lt!340671 (Union!2539 lt!340663 lt!340664))))

(declare-fun r!15766 () Regex!2539)

(declare-fun removeUselessConcat!214 (Regex!2539) Regex!2539)

(assert (=> b!932743 (= lt!340664 (removeUselessConcat!214 (regTwo!5591 r!15766)))))

(assert (=> b!932743 (= lt!340663 (removeUselessConcat!214 (regOne!5591 r!15766)))))

(declare-fun b!932744 () Bool)

(declare-fun e!606084 () Bool)

(assert (=> b!932744 (= e!606084 (not e!606090))))

(declare-fun res!423629 () Bool)

(assert (=> b!932744 (=> res!423629 e!606090)))

(declare-fun lt!340670 () Bool)

(get-info :version)

(assert (=> b!932744 (= res!423629 (or lt!340670 (and ((_ is Concat!4372) r!15766) ((_ is EmptyExpr!2539) (regOne!5590 r!15766))) (and ((_ is Concat!4372) r!15766) ((_ is EmptyExpr!2539) (regTwo!5590 r!15766))) ((_ is Concat!4372) r!15766) (not ((_ is Union!2539) r!15766))))))

(declare-fun matchRSpec!340 (Regex!2539 List!9769) Bool)

(assert (=> b!932744 (= lt!340670 (matchRSpec!340 r!15766 s!10566))))

(assert (=> b!932744 (= lt!340670 (matchR!1077 r!15766 s!10566))))

(declare-datatypes ((Unit!14697 0))(
  ( (Unit!14698) )
))
(declare-fun lt!340673 () Unit!14697)

(declare-fun mainMatchTheorem!340 (Regex!2539 List!9769) Unit!14697)

(assert (=> b!932744 (= lt!340673 (mainMatchTheorem!340 r!15766 s!10566))))

(declare-fun b!932746 () Bool)

(declare-fun e!606087 () Bool)

(assert (=> b!932746 (= e!606087 (matchR!1077 lt!340664 s!10566))))

(declare-fun b!932747 () Bool)

(declare-fun e!606089 () Bool)

(assert (=> b!932747 (= e!606089 true)))

(assert (=> b!932747 (matchR!1077 (Union!2539 (regTwo!5591 r!15766) (regOne!5591 r!15766)) s!10566)))

(declare-fun lt!340669 () Unit!14697)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!16 (Regex!2539 Regex!2539 List!9769) Unit!14697)

(assert (=> b!932747 (= lt!340669 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!16 (regTwo!5591 r!15766) (regOne!5591 r!15766) s!10566))))

(declare-fun b!932748 () Bool)

(declare-fun e!606088 () Bool)

(assert (=> b!932748 (= e!606088 e!606089)))

(declare-fun res!423630 () Bool)

(assert (=> b!932748 (=> res!423630 e!606089)))

(declare-fun lt!340668 () Bool)

(assert (=> b!932748 (= res!423630 (not lt!340668))))

(assert (=> b!932748 (= lt!340668 (matchR!1077 lt!340664 s!10566))))

(assert (=> b!932748 (= lt!340668 (matchR!1077 (regTwo!5591 r!15766) s!10566))))

(declare-fun lt!340665 () Unit!14697)

(declare-fun lemmaRemoveUselessConcatSound!124 (Regex!2539 List!9769) Unit!14697)

(assert (=> b!932748 (= lt!340665 (lemmaRemoveUselessConcatSound!124 (regTwo!5591 r!15766) s!10566))))

(declare-fun b!932749 () Bool)

(declare-fun e!606085 () Bool)

(declare-fun tp!289455 () Bool)

(declare-fun tp!289458 () Bool)

(assert (=> b!932749 (= e!606085 (and tp!289455 tp!289458))))

(declare-fun b!932750 () Bool)

(declare-fun e!606086 () Bool)

(declare-fun tp_is_empty!4721 () Bool)

(declare-fun tp!289457 () Bool)

(assert (=> b!932750 (= e!606086 (and tp_is_empty!4721 tp!289457))))

(declare-fun b!932751 () Bool)

(assert (=> b!932751 (= e!606091 e!606088)))

(declare-fun res!423628 () Bool)

(assert (=> b!932751 (=> res!423628 e!606088)))

(declare-fun lt!340672 () Bool)

(assert (=> b!932751 (= res!423628 lt!340672)))

(assert (=> b!932751 e!606087))

(declare-fun res!423626 () Bool)

(assert (=> b!932751 (=> res!423626 e!606087)))

(assert (=> b!932751 (= res!423626 lt!340672)))

(assert (=> b!932751 (= lt!340672 (matchR!1077 lt!340663 s!10566))))

(declare-fun lt!340667 () Unit!14697)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!56 (Regex!2539 Regex!2539 List!9769) Unit!14697)

(assert (=> b!932751 (= lt!340667 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!56 lt!340663 lt!340664 s!10566))))

(assert (=> b!932751 (matchRSpec!340 lt!340671 s!10566)))

(declare-fun lt!340666 () Unit!14697)

(assert (=> b!932751 (= lt!340666 (mainMatchTheorem!340 lt!340671 s!10566))))

(declare-fun b!932752 () Bool)

(declare-fun tp!289459 () Bool)

(declare-fun tp!289456 () Bool)

(assert (=> b!932752 (= e!606085 (and tp!289459 tp!289456))))

(declare-fun b!932753 () Bool)

(assert (=> b!932753 (= e!606085 tp_is_empty!4721)))

(declare-fun res!423625 () Bool)

(assert (=> start!83418 (=> (not res!423625) (not e!606084))))

(declare-fun validRegex!1008 (Regex!2539) Bool)

(assert (=> start!83418 (= res!423625 (validRegex!1008 r!15766))))

(assert (=> start!83418 e!606084))

(assert (=> start!83418 e!606085))

(assert (=> start!83418 e!606086))

(declare-fun b!932745 () Bool)

(declare-fun tp!289460 () Bool)

(assert (=> b!932745 (= e!606085 tp!289460)))

(assert (= (and start!83418 res!423625) b!932744))

(assert (= (and b!932744 (not res!423629)) b!932743))

(assert (= (and b!932743 (not res!423627)) b!932751))

(assert (= (and b!932751 (not res!423626)) b!932746))

(assert (= (and b!932751 (not res!423628)) b!932748))

(assert (= (and b!932748 (not res!423630)) b!932747))

(assert (= (and start!83418 ((_ is ElementMatch!2539) r!15766)) b!932753))

(assert (= (and start!83418 ((_ is Concat!4372) r!15766)) b!932752))

(assert (= (and start!83418 ((_ is Star!2539) r!15766)) b!932745))

(assert (= (and start!83418 ((_ is Union!2539) r!15766)) b!932749))

(assert (= (and start!83418 ((_ is Cons!9753) s!10566)) b!932750))

(declare-fun m!1154021 () Bool)

(assert (=> start!83418 m!1154021))

(declare-fun m!1154023 () Bool)

(assert (=> b!932751 m!1154023))

(declare-fun m!1154025 () Bool)

(assert (=> b!932751 m!1154025))

(declare-fun m!1154027 () Bool)

(assert (=> b!932751 m!1154027))

(declare-fun m!1154029 () Bool)

(assert (=> b!932751 m!1154029))

(declare-fun m!1154031 () Bool)

(assert (=> b!932743 m!1154031))

(declare-fun m!1154033 () Bool)

(assert (=> b!932743 m!1154033))

(declare-fun m!1154035 () Bool)

(assert (=> b!932743 m!1154035))

(declare-fun m!1154037 () Bool)

(assert (=> b!932744 m!1154037))

(declare-fun m!1154039 () Bool)

(assert (=> b!932744 m!1154039))

(declare-fun m!1154041 () Bool)

(assert (=> b!932744 m!1154041))

(declare-fun m!1154043 () Bool)

(assert (=> b!932748 m!1154043))

(declare-fun m!1154045 () Bool)

(assert (=> b!932748 m!1154045))

(declare-fun m!1154047 () Bool)

(assert (=> b!932748 m!1154047))

(declare-fun m!1154049 () Bool)

(assert (=> b!932747 m!1154049))

(declare-fun m!1154051 () Bool)

(assert (=> b!932747 m!1154051))

(assert (=> b!932746 m!1154043))

(check-sat (not b!932747) (not b!932745) (not b!932749) (not b!932752) tp_is_empty!4721 (not start!83418) (not b!932750) (not b!932746) (not b!932743) (not b!932744) (not b!932751) (not b!932748))
(check-sat)
