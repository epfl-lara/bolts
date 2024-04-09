; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75204 () Bool)

(assert start!75204)

(declare-fun res!601526 () Bool)

(declare-fun e!493001 () Bool)

(assert (=> start!75204 (=> (not res!601526) (not e!493001))))

(declare-datatypes ((B!1290 0))(
  ( (B!1291 (val!8951 Int)) )
))
(declare-datatypes ((tuple2!11922 0))(
  ( (tuple2!11923 (_1!5971 (_ BitVec 64)) (_2!5971 B!1290)) )
))
(declare-datatypes ((List!17751 0))(
  ( (Nil!17748) (Cons!17747 (h!18878 tuple2!11922) (t!25036 List!17751)) )
))
(declare-fun l!906 () List!17751)

(declare-fun isStrictlySorted!481 (List!17751) Bool)

(assert (=> start!75204 (= res!601526 (isStrictlySorted!481 l!906))))

(assert (=> start!75204 e!493001))

(declare-fun e!493000 () Bool)

(assert (=> start!75204 e!493000))

(assert (=> start!75204 true))

(declare-fun b!885707 () Bool)

(declare-fun res!601525 () Bool)

(assert (=> b!885707 (=> (not res!601525) (not e!493001))))

(declare-fun key1!49 () (_ BitVec 64))

(assert (=> b!885707 (= res!601525 (and (is-Cons!17747 l!906) (bvslt (_1!5971 (h!18878 l!906)) key1!49)))))

(declare-fun b!885708 () Bool)

(assert (=> b!885708 (= e!493001 (not (isStrictlySorted!481 (t!25036 l!906))))))

(declare-fun b!885709 () Bool)

(declare-fun tp_is_empty!17801 () Bool)

(declare-fun tp!54336 () Bool)

(assert (=> b!885709 (= e!493000 (and tp_is_empty!17801 tp!54336))))

(assert (= (and start!75204 res!601526) b!885707))

(assert (= (and b!885707 res!601525) b!885708))

(assert (= (and start!75204 (is-Cons!17747 l!906)) b!885709))

(declare-fun m!825829 () Bool)

(assert (=> start!75204 m!825829))

(declare-fun m!825831 () Bool)

(assert (=> b!885708 m!825831))

(push 1)

(assert (not b!885708))

(assert (not start!75204))

(assert (not b!885709))

(assert tp_is_empty!17801)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109387 () Bool)

(declare-fun res!601547 () Bool)

(declare-fun e!493028 () Bool)

(assert (=> d!109387 (=> res!601547 e!493028)))

(assert (=> d!109387 (= res!601547 (or (is-Nil!17748 (t!25036 l!906)) (is-Nil!17748 (t!25036 (t!25036 l!906)))))))

(assert (=> d!109387 (= (isStrictlySorted!481 (t!25036 l!906)) e!493028)))

(declare-fun b!885740 () Bool)

(declare-fun e!493029 () Bool)

(assert (=> b!885740 (= e!493028 e!493029)))

(declare-fun res!601548 () Bool)

(assert (=> b!885740 (=> (not res!601548) (not e!493029))))

(assert (=> b!885740 (= res!601548 (bvslt (_1!5971 (h!18878 (t!25036 l!906))) (_1!5971 (h!18878 (t!25036 (t!25036 l!906))))))))

(declare-fun b!885741 () Bool)

(assert (=> b!885741 (= e!493029 (isStrictlySorted!481 (t!25036 (t!25036 l!906))))))

(assert (= (and d!109387 (not res!601547)) b!885740))

(assert (= (and b!885740 res!601548) b!885741))

(declare-fun m!825837 () Bool)

(assert (=> b!885741 m!825837))

(assert (=> b!885708 d!109387))

