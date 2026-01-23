; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83414 () Bool)

(assert start!83414)

(declare-fun res!423591 () Bool)

(declare-fun e!606041 () Bool)

(assert (=> start!83414 (=> (not res!423591) (not e!606041))))

(declare-datatypes ((C!5644 0))(
  ( (C!5645 (val!3070 Int)) )
))
(declare-datatypes ((Regex!2537 0))(
  ( (ElementMatch!2537 (c!151666 C!5644)) (Concat!4370 (regOne!5586 Regex!2537) (regTwo!5586 Regex!2537)) (EmptyExpr!2537) (Star!2537 (reg!2866 Regex!2537)) (EmptyLang!2537) (Union!2537 (regOne!5587 Regex!2537) (regTwo!5587 Regex!2537)) )
))
(declare-fun r!15766 () Regex!2537)

(declare-fun validRegex!1006 (Regex!2537) Bool)

(assert (=> start!83414 (= res!423591 (validRegex!1006 r!15766))))

(assert (=> start!83414 e!606041))

(declare-fun e!606042 () Bool)

(assert (=> start!83414 e!606042))

(declare-fun e!606039 () Bool)

(assert (=> start!83414 e!606039))

(declare-fun b!932678 () Bool)

(declare-fun e!606043 () Bool)

(assert (=> b!932678 (= e!606041 (not e!606043))))

(declare-fun res!423594 () Bool)

(assert (=> b!932678 (=> res!423594 e!606043)))

(declare-fun lt!340602 () Bool)

(get-info :version)

(assert (=> b!932678 (= res!423594 (or lt!340602 (and ((_ is Concat!4370) r!15766) ((_ is EmptyExpr!2537) (regOne!5586 r!15766))) (and ((_ is Concat!4370) r!15766) ((_ is EmptyExpr!2537) (regTwo!5586 r!15766))) ((_ is Concat!4370) r!15766) (not ((_ is Union!2537) r!15766))))))

(declare-datatypes ((List!9767 0))(
  ( (Nil!9751) (Cons!9751 (h!15152 C!5644) (t!100813 List!9767)) )
))
(declare-fun s!10566 () List!9767)

(declare-fun matchRSpec!338 (Regex!2537 List!9767) Bool)

(assert (=> b!932678 (= lt!340602 (matchRSpec!338 r!15766 s!10566))))

(declare-fun matchR!1075 (Regex!2537 List!9767) Bool)

(assert (=> b!932678 (= lt!340602 (matchR!1075 r!15766 s!10566))))

(declare-datatypes ((Unit!14693 0))(
  ( (Unit!14694) )
))
(declare-fun lt!340601 () Unit!14693)

(declare-fun mainMatchTheorem!338 (Regex!2537 List!9767) Unit!14693)

(assert (=> b!932678 (= lt!340601 (mainMatchTheorem!338 r!15766 s!10566))))

(declare-fun b!932679 () Bool)

(declare-fun e!606038 () Bool)

(declare-fun lt!340600 () Regex!2537)

(assert (=> b!932679 (= e!606038 (matchR!1075 lt!340600 s!10566))))

(declare-fun b!932680 () Bool)

(declare-fun tp!289419 () Bool)

(declare-fun tp!289422 () Bool)

(assert (=> b!932680 (= e!606042 (and tp!289419 tp!289422))))

(declare-fun b!932681 () Bool)

(declare-fun tp_is_empty!4717 () Bool)

(assert (=> b!932681 (= e!606042 tp_is_empty!4717)))

(declare-fun b!932682 () Bool)

(declare-fun tp!289420 () Bool)

(declare-fun tp!289421 () Bool)

(assert (=> b!932682 (= e!606042 (and tp!289420 tp!289421))))

(declare-fun b!932683 () Bool)

(declare-fun tp!289424 () Bool)

(assert (=> b!932683 (= e!606039 (and tp_is_empty!4717 tp!289424))))

(declare-fun b!932684 () Bool)

(declare-fun e!606037 () Bool)

(declare-fun e!606040 () Bool)

(assert (=> b!932684 (= e!606037 e!606040)))

(declare-fun res!423593 () Bool)

(assert (=> b!932684 (=> res!423593 e!606040)))

(declare-fun lt!340606 () Bool)

(assert (=> b!932684 (= res!423593 lt!340606)))

(assert (=> b!932684 e!606038))

(declare-fun res!423590 () Bool)

(assert (=> b!932684 (=> res!423590 e!606038)))

(assert (=> b!932684 (= res!423590 lt!340606)))

(declare-fun lt!340599 () Regex!2537)

(assert (=> b!932684 (= lt!340606 (matchR!1075 lt!340599 s!10566))))

(declare-fun lt!340607 () Unit!14693)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!54 (Regex!2537 Regex!2537 List!9767) Unit!14693)

(assert (=> b!932684 (= lt!340607 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!54 lt!340599 lt!340600 s!10566))))

(declare-fun lt!340603 () Regex!2537)

(assert (=> b!932684 (matchRSpec!338 lt!340603 s!10566)))

(declare-fun lt!340604 () Unit!14693)

(assert (=> b!932684 (= lt!340604 (mainMatchTheorem!338 lt!340603 s!10566))))

(declare-fun b!932685 () Bool)

(assert (=> b!932685 (= e!606040 true)))

(assert (=> b!932685 (= (matchR!1075 (regTwo!5587 r!15766) s!10566) (matchR!1075 lt!340600 s!10566))))

(declare-fun lt!340605 () Unit!14693)

(declare-fun lemmaRemoveUselessConcatSound!122 (Regex!2537 List!9767) Unit!14693)

(assert (=> b!932685 (= lt!340605 (lemmaRemoveUselessConcatSound!122 (regTwo!5587 r!15766) s!10566))))

(declare-fun b!932686 () Bool)

(assert (=> b!932686 (= e!606043 e!606037)))

(declare-fun res!423592 () Bool)

(assert (=> b!932686 (=> res!423592 e!606037)))

(assert (=> b!932686 (= res!423592 (not (matchR!1075 lt!340603 s!10566)))))

(assert (=> b!932686 (= lt!340603 (Union!2537 lt!340599 lt!340600))))

(declare-fun removeUselessConcat!212 (Regex!2537) Regex!2537)

(assert (=> b!932686 (= lt!340600 (removeUselessConcat!212 (regTwo!5587 r!15766)))))

(assert (=> b!932686 (= lt!340599 (removeUselessConcat!212 (regOne!5587 r!15766)))))

(declare-fun b!932687 () Bool)

(declare-fun tp!289423 () Bool)

(assert (=> b!932687 (= e!606042 tp!289423)))

(assert (= (and start!83414 res!423591) b!932678))

(assert (= (and b!932678 (not res!423594)) b!932686))

(assert (= (and b!932686 (not res!423592)) b!932684))

(assert (= (and b!932684 (not res!423590)) b!932679))

(assert (= (and b!932684 (not res!423593)) b!932685))

(assert (= (and start!83414 ((_ is ElementMatch!2537) r!15766)) b!932681))

(assert (= (and start!83414 ((_ is Concat!4370) r!15766)) b!932682))

(assert (= (and start!83414 ((_ is Star!2537) r!15766)) b!932687))

(assert (= (and start!83414 ((_ is Union!2537) r!15766)) b!932680))

(assert (= (and start!83414 ((_ is Cons!9751) s!10566)) b!932683))

(declare-fun m!1153961 () Bool)

(assert (=> b!932685 m!1153961))

(declare-fun m!1153963 () Bool)

(assert (=> b!932685 m!1153963))

(declare-fun m!1153965 () Bool)

(assert (=> b!932685 m!1153965))

(declare-fun m!1153967 () Bool)

(assert (=> start!83414 m!1153967))

(assert (=> b!932679 m!1153963))

(declare-fun m!1153969 () Bool)

(assert (=> b!932686 m!1153969))

(declare-fun m!1153971 () Bool)

(assert (=> b!932686 m!1153971))

(declare-fun m!1153973 () Bool)

(assert (=> b!932686 m!1153973))

(declare-fun m!1153975 () Bool)

(assert (=> b!932678 m!1153975))

(declare-fun m!1153977 () Bool)

(assert (=> b!932678 m!1153977))

(declare-fun m!1153979 () Bool)

(assert (=> b!932678 m!1153979))

(declare-fun m!1153981 () Bool)

(assert (=> b!932684 m!1153981))

(declare-fun m!1153983 () Bool)

(assert (=> b!932684 m!1153983))

(declare-fun m!1153985 () Bool)

(assert (=> b!932684 m!1153985))

(declare-fun m!1153987 () Bool)

(assert (=> b!932684 m!1153987))

(check-sat (not b!932684) (not b!932685) (not b!932686) (not b!932682) (not b!932687) (not b!932680) tp_is_empty!4717 (not b!932679) (not b!932678) (not b!932683) (not start!83414))
(check-sat)
