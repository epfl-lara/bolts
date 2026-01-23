; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486446 () Bool)

(assert start!486446)

(declare-fun res!2018141 () Bool)

(declare-fun e!2967550 () Bool)

(assert (=> start!486446 (=> (not res!2018141) (not e!2967550))))

(declare-datatypes ((K!14775 0))(
  ( (K!14776 (val!20091 Int)) )
))
(declare-datatypes ((V!15021 0))(
  ( (V!15022 (val!20092 Int)) )
))
(declare-datatypes ((tuple2!55072 0))(
  ( (tuple2!55073 (_1!30830 K!14775) (_2!30830 V!15021)) )
))
(declare-datatypes ((List!53320 0))(
  ( (Nil!53196) (Cons!53196 (h!59607 tuple2!55072) (t!360664 List!53320)) )
))
(declare-fun l!11094 () List!53320)

(declare-fun noDuplicateKeys!2244 (List!53320) Bool)

(assert (=> start!486446 (= res!2018141 (noDuplicateKeys!2244 l!11094))))

(assert (=> start!486446 e!2967550))

(declare-fun e!2967551 () Bool)

(assert (=> start!486446 e!2967551))

(declare-fun tp_is_empty!32293 () Bool)

(assert (=> start!486446 tp_is_empty!32293))

(declare-fun b!4756824 () Bool)

(declare-fun res!2018140 () Bool)

(assert (=> b!4756824 (=> (not res!2018140) (not e!2967550))))

(declare-fun key!2520 () K!14775)

(get-info :version)

(assert (=> b!4756824 (= res!2018140 (and (or (not ((_ is Cons!53196) l!11094)) (not (= (_1!30830 (h!59607 l!11094)) key!2520))) (not ((_ is Cons!53196) l!11094))))))

(declare-fun b!4756825 () Bool)

(declare-fun containsKey!3627 (List!53320 K!14775) Bool)

(assert (=> b!4756825 (= e!2967550 (containsKey!3627 Nil!53196 key!2520))))

(declare-fun tp_is_empty!32295 () Bool)

(declare-fun tp!1351094 () Bool)

(declare-fun b!4756826 () Bool)

(assert (=> b!4756826 (= e!2967551 (and tp_is_empty!32293 tp_is_empty!32295 tp!1351094))))

(assert (= (and start!486446 res!2018141) b!4756824))

(assert (= (and b!4756824 res!2018140) b!4756825))

(assert (= (and start!486446 ((_ is Cons!53196) l!11094)) b!4756826))

(declare-fun m!5726641 () Bool)

(assert (=> start!486446 m!5726641))

(declare-fun m!5726643 () Bool)

(assert (=> b!4756825 m!5726643))

(check-sat tp_is_empty!32293 tp_is_empty!32295 (not b!4756825) (not start!486446) (not b!4756826))
(check-sat)
(get-model)

(declare-fun d!1520985 () Bool)

(declare-fun res!2018152 () Bool)

(declare-fun e!2967562 () Bool)

(assert (=> d!1520985 (=> res!2018152 e!2967562)))

(assert (=> d!1520985 (= res!2018152 (not ((_ is Cons!53196) l!11094)))))

(assert (=> d!1520985 (= (noDuplicateKeys!2244 l!11094) e!2967562)))

(declare-fun b!4756837 () Bool)

(declare-fun e!2967563 () Bool)

(assert (=> b!4756837 (= e!2967562 e!2967563)))

(declare-fun res!2018153 () Bool)

(assert (=> b!4756837 (=> (not res!2018153) (not e!2967563))))

(assert (=> b!4756837 (= res!2018153 (not (containsKey!3627 (t!360664 l!11094) (_1!30830 (h!59607 l!11094)))))))

(declare-fun b!4756838 () Bool)

(assert (=> b!4756838 (= e!2967563 (noDuplicateKeys!2244 (t!360664 l!11094)))))

(assert (= (and d!1520985 (not res!2018152)) b!4756837))

(assert (= (and b!4756837 res!2018153) b!4756838))

(declare-fun m!5726649 () Bool)

(assert (=> b!4756837 m!5726649))

(declare-fun m!5726651 () Bool)

(assert (=> b!4756838 m!5726651))

(assert (=> start!486446 d!1520985))

(declare-fun d!1520989 () Bool)

(declare-fun res!2018164 () Bool)

(declare-fun e!2967577 () Bool)

(assert (=> d!1520989 (=> res!2018164 e!2967577)))

(assert (=> d!1520989 (= res!2018164 (and ((_ is Cons!53196) Nil!53196) (= (_1!30830 (h!59607 Nil!53196)) key!2520)))))

(assert (=> d!1520989 (= (containsKey!3627 Nil!53196 key!2520) e!2967577)))

(declare-fun b!4756854 () Bool)

(declare-fun e!2967578 () Bool)

(assert (=> b!4756854 (= e!2967577 e!2967578)))

(declare-fun res!2018165 () Bool)

(assert (=> b!4756854 (=> (not res!2018165) (not e!2967578))))

(assert (=> b!4756854 (= res!2018165 ((_ is Cons!53196) Nil!53196))))

(declare-fun b!4756855 () Bool)

(assert (=> b!4756855 (= e!2967578 (containsKey!3627 (t!360664 Nil!53196) key!2520))))

(assert (= (and d!1520989 (not res!2018164)) b!4756854))

(assert (= (and b!4756854 res!2018165) b!4756855))

(declare-fun m!5726655 () Bool)

(assert (=> b!4756855 m!5726655))

(assert (=> b!4756825 d!1520989))

(declare-fun tp!1351100 () Bool)

(declare-fun e!2967581 () Bool)

(declare-fun b!4756860 () Bool)

(assert (=> b!4756860 (= e!2967581 (and tp_is_empty!32293 tp_is_empty!32295 tp!1351100))))

(assert (=> b!4756826 (= tp!1351094 e!2967581)))

(assert (= (and b!4756826 ((_ is Cons!53196) (t!360664 l!11094))) b!4756860))

(check-sat tp_is_empty!32293 tp_is_empty!32295 (not b!4756855) (not b!4756860) (not b!4756838) (not b!4756837))
(check-sat)
