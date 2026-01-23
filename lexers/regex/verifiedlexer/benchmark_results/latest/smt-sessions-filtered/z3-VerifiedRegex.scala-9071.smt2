; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486406 () Bool)

(assert start!486406)

(declare-fun res!2018045 () Bool)

(declare-fun e!2967417 () Bool)

(assert (=> start!486406 (=> (not res!2018045) (not e!2967417))))

(declare-datatypes ((K!14760 0))(
  ( (K!14761 (val!20079 Int)) )
))
(declare-datatypes ((V!15006 0))(
  ( (V!15007 (val!20080 Int)) )
))
(declare-datatypes ((tuple2!55060 0))(
  ( (tuple2!55061 (_1!30824 K!14760) (_2!30824 V!15006)) )
))
(declare-datatypes ((List!53314 0))(
  ( (Nil!53190) (Cons!53190 (h!59601 tuple2!55060) (t!360658 List!53314)) )
))
(declare-fun l!11094 () List!53314)

(declare-fun noDuplicateKeys!2238 (List!53314) Bool)

(assert (=> start!486406 (= res!2018045 (noDuplicateKeys!2238 l!11094))))

(assert (=> start!486406 e!2967417))

(declare-fun e!2967416 () Bool)

(assert (=> start!486406 e!2967416))

(declare-fun tp_is_empty!32269 () Bool)

(assert (=> start!486406 tp_is_empty!32269))

(declare-fun b!4756640 () Bool)

(declare-fun res!2018044 () Bool)

(assert (=> b!4756640 (=> (not res!2018044) (not e!2967417))))

(declare-fun key!2520 () K!14760)

(get-info :version)

(assert (=> b!4756640 (= res!2018044 (and ((_ is Cons!53190) l!11094) (= (_1!30824 (h!59601 l!11094)) key!2520)))))

(declare-fun b!4756641 () Bool)

(declare-fun containsKey!3621 (List!53314 K!14760) Bool)

(assert (=> b!4756641 (= e!2967417 (containsKey!3621 (t!360658 l!11094) key!2520))))

(declare-fun tp_is_empty!32271 () Bool)

(declare-fun tp!1351058 () Bool)

(declare-fun b!4756642 () Bool)

(assert (=> b!4756642 (= e!2967416 (and tp_is_empty!32269 tp_is_empty!32271 tp!1351058))))

(assert (= (and start!486406 res!2018045) b!4756640))

(assert (= (and b!4756640 res!2018044) b!4756641))

(assert (= (and start!486406 ((_ is Cons!53190) l!11094)) b!4756642))

(declare-fun m!5726565 () Bool)

(assert (=> start!486406 m!5726565))

(declare-fun m!5726567 () Bool)

(assert (=> b!4756641 m!5726567))

(check-sat tp_is_empty!32271 (not b!4756641) tp_is_empty!32269 (not start!486406) (not b!4756642))
(check-sat)
(get-model)

(declare-fun d!1520948 () Bool)

(declare-fun res!2018054 () Bool)

(declare-fun e!2967426 () Bool)

(assert (=> d!1520948 (=> res!2018054 e!2967426)))

(assert (=> d!1520948 (= res!2018054 (and ((_ is Cons!53190) (t!360658 l!11094)) (= (_1!30824 (h!59601 (t!360658 l!11094))) key!2520)))))

(assert (=> d!1520948 (= (containsKey!3621 (t!360658 l!11094) key!2520) e!2967426)))

(declare-fun b!4756651 () Bool)

(declare-fun e!2967427 () Bool)

(assert (=> b!4756651 (= e!2967426 e!2967427)))

(declare-fun res!2018055 () Bool)

(assert (=> b!4756651 (=> (not res!2018055) (not e!2967427))))

(assert (=> b!4756651 (= res!2018055 ((_ is Cons!53190) (t!360658 l!11094)))))

(declare-fun b!4756652 () Bool)

(assert (=> b!4756652 (= e!2967427 (containsKey!3621 (t!360658 (t!360658 l!11094)) key!2520))))

(assert (= (and d!1520948 (not res!2018054)) b!4756651))

(assert (= (and b!4756651 res!2018055) b!4756652))

(declare-fun m!5726569 () Bool)

(assert (=> b!4756652 m!5726569))

(assert (=> b!4756641 d!1520948))

(declare-fun d!1520952 () Bool)

(declare-fun res!2018066 () Bool)

(declare-fun e!2967438 () Bool)

(assert (=> d!1520952 (=> res!2018066 e!2967438)))

(assert (=> d!1520952 (= res!2018066 (not ((_ is Cons!53190) l!11094)))))

(assert (=> d!1520952 (= (noDuplicateKeys!2238 l!11094) e!2967438)))

(declare-fun b!4756663 () Bool)

(declare-fun e!2967439 () Bool)

(assert (=> b!4756663 (= e!2967438 e!2967439)))

(declare-fun res!2018067 () Bool)

(assert (=> b!4756663 (=> (not res!2018067) (not e!2967439))))

(assert (=> b!4756663 (= res!2018067 (not (containsKey!3621 (t!360658 l!11094) (_1!30824 (h!59601 l!11094)))))))

(declare-fun b!4756664 () Bool)

(assert (=> b!4756664 (= e!2967439 (noDuplicateKeys!2238 (t!360658 l!11094)))))

(assert (= (and d!1520952 (not res!2018066)) b!4756663))

(assert (= (and b!4756663 res!2018067) b!4756664))

(declare-fun m!5726573 () Bool)

(assert (=> b!4756663 m!5726573))

(declare-fun m!5726575 () Bool)

(assert (=> b!4756664 m!5726575))

(assert (=> start!486406 d!1520952))

(declare-fun tp!1351061 () Bool)

(declare-fun b!4756669 () Bool)

(declare-fun e!2967442 () Bool)

(assert (=> b!4756669 (= e!2967442 (and tp_is_empty!32269 tp_is_empty!32271 tp!1351061))))

(assert (=> b!4756642 (= tp!1351058 e!2967442)))

(assert (= (and b!4756642 ((_ is Cons!53190) (t!360658 l!11094))) b!4756669))

(check-sat (not b!4756664) tp_is_empty!32271 (not b!4756663) tp_is_empty!32269 (not b!4756669) (not b!4756652))
(check-sat)
