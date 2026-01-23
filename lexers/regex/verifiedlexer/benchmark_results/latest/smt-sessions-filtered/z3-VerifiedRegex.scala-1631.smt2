; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83278 () Bool)

(assert start!83278)

(declare-fun b!930064 () Bool)

(declare-fun e!604564 () Bool)

(declare-fun tp!288829 () Bool)

(declare-fun tp!288830 () Bool)

(assert (=> b!930064 (= e!604564 (and tp!288829 tp!288830))))

(declare-fun b!930065 () Bool)

(declare-fun e!604565 () Bool)

(assert (=> b!930065 (= e!604565 true)))

(declare-datatypes ((C!5612 0))(
  ( (C!5613 (val!3054 Int)) )
))
(declare-datatypes ((Regex!2521 0))(
  ( (ElementMatch!2521 (c!151142 C!5612)) (Concat!4354 (regOne!5554 Regex!2521) (regTwo!5554 Regex!2521)) (EmptyExpr!2521) (Star!2521 (reg!2850 Regex!2521)) (EmptyLang!2521) (Union!2521 (regOne!5555 Regex!2521) (regTwo!5555 Regex!2521)) )
))
(declare-fun lt!340069 () Regex!2521)

(declare-datatypes ((List!9751 0))(
  ( (Nil!9735) (Cons!9735 (h!15136 C!5612) (t!100797 List!9751)) )
))
(declare-fun s!10566 () List!9751)

(declare-fun matchRSpec!322 (Regex!2521 List!9751) Bool)

(assert (=> b!930065 (matchRSpec!322 lt!340069 s!10566)))

(declare-datatypes ((Unit!14661 0))(
  ( (Unit!14662) )
))
(declare-fun lt!340070 () Unit!14661)

(declare-fun mainMatchTheorem!322 (Regex!2521 List!9751) Unit!14661)

(assert (=> b!930065 (= lt!340070 (mainMatchTheorem!322 lt!340069 s!10566))))

(declare-fun b!930066 () Bool)

(declare-fun tp!288827 () Bool)

(assert (=> b!930066 (= e!604564 tp!288827)))

(declare-fun b!930067 () Bool)

(declare-fun tp!288828 () Bool)

(declare-fun tp!288831 () Bool)

(assert (=> b!930067 (= e!604564 (and tp!288828 tp!288831))))

(declare-fun res!422545 () Bool)

(declare-fun e!604563 () Bool)

(assert (=> start!83278 (=> (not res!422545) (not e!604563))))

(declare-fun r!15766 () Regex!2521)

(declare-fun validRegex!990 (Regex!2521) Bool)

(assert (=> start!83278 (= res!422545 (validRegex!990 r!15766))))

(assert (=> start!83278 e!604563))

(assert (=> start!83278 e!604564))

(declare-fun e!604566 () Bool)

(assert (=> start!83278 e!604566))

(declare-fun b!930068 () Bool)

(declare-fun e!604567 () Bool)

(assert (=> b!930068 (= e!604563 (not e!604567))))

(declare-fun res!422546 () Bool)

(assert (=> b!930068 (=> res!422546 e!604567)))

(declare-fun lt!340071 () Bool)

(get-info :version)

(assert (=> b!930068 (= res!422546 (or lt!340071 (and ((_ is Concat!4354) r!15766) ((_ is EmptyExpr!2521) (regOne!5554 r!15766))) (and ((_ is Concat!4354) r!15766) ((_ is EmptyExpr!2521) (regTwo!5554 r!15766))) ((_ is Concat!4354) r!15766) (not ((_ is Union!2521) r!15766))))))

(assert (=> b!930068 (= lt!340071 (matchRSpec!322 r!15766 s!10566))))

(declare-fun matchR!1059 (Regex!2521 List!9751) Bool)

(assert (=> b!930068 (= lt!340071 (matchR!1059 r!15766 s!10566))))

(declare-fun lt!340068 () Unit!14661)

(assert (=> b!930068 (= lt!340068 (mainMatchTheorem!322 r!15766 s!10566))))

(declare-fun b!930069 () Bool)

(declare-fun tp_is_empty!4685 () Bool)

(assert (=> b!930069 (= e!604564 tp_is_empty!4685)))

(declare-fun b!930070 () Bool)

(assert (=> b!930070 (= e!604567 e!604565)))

(declare-fun res!422544 () Bool)

(assert (=> b!930070 (=> res!422544 e!604565)))

(assert (=> b!930070 (= res!422544 (not (matchR!1059 lt!340069 s!10566)))))

(declare-fun removeUselessConcat!196 (Regex!2521) Regex!2521)

(assert (=> b!930070 (= lt!340069 (Union!2521 (removeUselessConcat!196 (regOne!5555 r!15766)) (removeUselessConcat!196 (regTwo!5555 r!15766))))))

(declare-fun b!930071 () Bool)

(declare-fun tp!288832 () Bool)

(assert (=> b!930071 (= e!604566 (and tp_is_empty!4685 tp!288832))))

(assert (= (and start!83278 res!422545) b!930068))

(assert (= (and b!930068 (not res!422546)) b!930070))

(assert (= (and b!930070 (not res!422544)) b!930065))

(assert (= (and start!83278 ((_ is ElementMatch!2521) r!15766)) b!930069))

(assert (= (and start!83278 ((_ is Concat!4354) r!15766)) b!930064))

(assert (= (and start!83278 ((_ is Star!2521) r!15766)) b!930066))

(assert (= (and start!83278 ((_ is Union!2521) r!15766)) b!930067))

(assert (= (and start!83278 ((_ is Cons!9735) s!10566)) b!930071))

(declare-fun m!1152787 () Bool)

(assert (=> b!930065 m!1152787))

(declare-fun m!1152789 () Bool)

(assert (=> b!930065 m!1152789))

(declare-fun m!1152791 () Bool)

(assert (=> start!83278 m!1152791))

(declare-fun m!1152793 () Bool)

(assert (=> b!930068 m!1152793))

(declare-fun m!1152795 () Bool)

(assert (=> b!930068 m!1152795))

(declare-fun m!1152797 () Bool)

(assert (=> b!930068 m!1152797))

(declare-fun m!1152799 () Bool)

(assert (=> b!930070 m!1152799))

(declare-fun m!1152801 () Bool)

(assert (=> b!930070 m!1152801))

(declare-fun m!1152803 () Bool)

(assert (=> b!930070 m!1152803))

(check-sat (not b!930065) (not b!930070) (not b!930066) (not b!930071) (not b!930067) (not b!930068) (not start!83278) (not b!930064) tp_is_empty!4685)
(check-sat)
