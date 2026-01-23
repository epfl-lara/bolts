; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!83424 () Bool)

(assert start!83424)

(declare-fun b!932834 () Bool)

(declare-fun e!606144 () Bool)

(declare-fun tp!289510 () Bool)

(declare-fun tp!289509 () Bool)

(assert (=> b!932834 (= e!606144 (and tp!289510 tp!289509))))

(declare-fun b!932835 () Bool)

(declare-fun e!606142 () Bool)

(declare-fun e!606143 () Bool)

(assert (=> b!932835 (= e!606142 (not e!606143))))

(declare-fun res!423659 () Bool)

(assert (=> b!932835 (=> res!423659 e!606143)))

(declare-fun lt!340764 () Bool)

(declare-datatypes ((C!5654 0))(
  ( (C!5655 (val!3075 Int)) )
))
(declare-datatypes ((Regex!2542 0))(
  ( (ElementMatch!2542 (c!151677 C!5654)) (Concat!4375 (regOne!5596 Regex!2542) (regTwo!5596 Regex!2542)) (EmptyExpr!2542) (Star!2542 (reg!2871 Regex!2542)) (EmptyLang!2542) (Union!2542 (regOne!5597 Regex!2542) (regTwo!5597 Regex!2542)) )
))
(declare-fun r!15766 () Regex!2542)

(assert (=> b!932835 (= res!423659 (or lt!340764 (and (is-Concat!4375 r!15766) (is-EmptyExpr!2542 (regOne!5596 r!15766))) (and (is-Concat!4375 r!15766) (is-EmptyExpr!2542 (regTwo!5596 r!15766))) (is-Concat!4375 r!15766) (not (is-Union!2542 r!15766))))))

(declare-datatypes ((List!9772 0))(
  ( (Nil!9756) (Cons!9756 (h!15157 C!5654) (t!100818 List!9772)) )
))
(declare-fun s!10566 () List!9772)

(declare-fun matchRSpec!343 (Regex!2542 List!9772) Bool)

(assert (=> b!932835 (= lt!340764 (matchRSpec!343 r!15766 s!10566))))

(declare-fun matchR!1080 (Regex!2542 List!9772) Bool)

(assert (=> b!932835 (= lt!340764 (matchR!1080 r!15766 s!10566))))

(declare-datatypes ((Unit!14703 0))(
  ( (Unit!14704) )
))
(declare-fun lt!340765 () Unit!14703)

(declare-fun mainMatchTheorem!343 (Regex!2542 List!9772) Unit!14703)

(assert (=> b!932835 (= lt!340765 (mainMatchTheorem!343 r!15766 s!10566))))

(declare-fun b!932837 () Bool)

(declare-fun tp!289514 () Bool)

(assert (=> b!932837 (= e!606144 tp!289514)))

(declare-fun b!932838 () Bool)

(declare-fun tp!289511 () Bool)

(declare-fun tp!289513 () Bool)

(assert (=> b!932838 (= e!606144 (and tp!289511 tp!289513))))

(declare-fun b!932839 () Bool)

(assert (=> b!932839 (= e!606143 true)))

(declare-fun lt!340766 () Bool)

(declare-fun removeUselessConcat!217 (Regex!2542) Regex!2542)

(assert (=> b!932839 (= lt!340766 (matchR!1080 (Union!2542 (removeUselessConcat!217 (regOne!5597 r!15766)) (removeUselessConcat!217 (regTwo!5597 r!15766))) s!10566))))

(declare-fun b!932840 () Bool)

(declare-fun tp_is_empty!4727 () Bool)

(assert (=> b!932840 (= e!606144 tp_is_empty!4727)))

(declare-fun b!932836 () Bool)

(declare-fun e!606145 () Bool)

(declare-fun tp!289512 () Bool)

(assert (=> b!932836 (= e!606145 (and tp_is_empty!4727 tp!289512))))

(declare-fun res!423660 () Bool)

(assert (=> start!83424 (=> (not res!423660) (not e!606142))))

(declare-fun validRegex!1011 (Regex!2542) Bool)

(assert (=> start!83424 (= res!423660 (validRegex!1011 r!15766))))

(assert (=> start!83424 e!606142))

(assert (=> start!83424 e!606144))

(assert (=> start!83424 e!606145))

(assert (= (and start!83424 res!423660) b!932835))

(assert (= (and b!932835 (not res!423659)) b!932839))

(assert (= (and start!83424 (is-ElementMatch!2542 r!15766)) b!932840))

(assert (= (and start!83424 (is-Concat!4375 r!15766)) b!932834))

(assert (= (and start!83424 (is-Star!2542 r!15766)) b!932837))

(assert (= (and start!83424 (is-Union!2542 r!15766)) b!932838))

(assert (= (and start!83424 (is-Cons!9756 s!10566)) b!932836))

(declare-fun m!1154129 () Bool)

(assert (=> b!932835 m!1154129))

(declare-fun m!1154131 () Bool)

(assert (=> b!932835 m!1154131))

(declare-fun m!1154133 () Bool)

(assert (=> b!932835 m!1154133))

(declare-fun m!1154135 () Bool)

(assert (=> b!932839 m!1154135))

(declare-fun m!1154137 () Bool)

(assert (=> b!932839 m!1154137))

(declare-fun m!1154139 () Bool)

(assert (=> b!932839 m!1154139))

(declare-fun m!1154141 () Bool)

(assert (=> start!83424 m!1154141))

(push 1)

(assert (not b!932839))

(assert (not b!932836))

(assert (not b!932837))

(assert tp_is_empty!4727)

(assert (not b!932835))

(assert (not b!932838))

(assert (not start!83424))

(assert (not b!932834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

