; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5242 () Bool)

(assert start!5242)

(declare-datatypes ((B!794 0))(
  ( (B!795 (val!897 Int)) )
))
(declare-datatypes ((tuple2!1458 0))(
  ( (tuple2!1459 (_1!739 (_ BitVec 64)) (_2!739 B!794)) )
))
(declare-datatypes ((List!1023 0))(
  ( (Nil!1020) (Cons!1019 (h!1587 tuple2!1458) (t!3864 List!1023)) )
))
(declare-datatypes ((ListLongMap!1039 0))(
  ( (ListLongMap!1040 (toList!535 List!1023)) )
))
(declare-fun lm!266 () ListLongMap!1039)

(declare-fun isStrictlySorted!199 (List!1023) Bool)

(assert (=> start!5242 (not (isStrictlySorted!199 (toList!535 lm!266)))))

(declare-fun e!24198 () Bool)

(declare-fun inv!1707 (ListLongMap!1039) Bool)

(assert (=> start!5242 (and (inv!1707 lm!266) e!24198)))

(declare-fun b!38064 () Bool)

(declare-fun tp!5651 () Bool)

(assert (=> b!38064 (= e!24198 tp!5651)))

(assert (= start!5242 b!38064))

(declare-fun m!30767 () Bool)

(assert (=> start!5242 m!30767))

(declare-fun m!30769 () Bool)

(assert (=> start!5242 m!30769))

(push 1)

(assert (not start!5242))

(assert (not b!38064))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6184 () Bool)

(declare-fun res!22985 () Bool)

(declare-fun e!24217 () Bool)

(assert (=> d!6184 (=> res!22985 e!24217)))

(assert (=> d!6184 (= res!22985 (or (is-Nil!1020 (toList!535 lm!266)) (is-Nil!1020 (t!3864 (toList!535 lm!266)))))))

(assert (=> d!6184 (= (isStrictlySorted!199 (toList!535 lm!266)) e!24217)))

(declare-fun b!38083 () Bool)

(declare-fun e!24218 () Bool)

(assert (=> b!38083 (= e!24217 e!24218)))

(declare-fun res!22986 () Bool)

(assert (=> b!38083 (=> (not res!22986) (not e!24218))))

(assert (=> b!38083 (= res!22986 (bvslt (_1!739 (h!1587 (toList!535 lm!266))) (_1!739 (h!1587 (t!3864 (toList!535 lm!266))))))))

(declare-fun b!38084 () Bool)

(assert (=> b!38084 (= e!24218 (isStrictlySorted!199 (t!3864 (toList!535 lm!266))))))

(assert (= (and d!6184 (not res!22985)) b!38083))

(assert (= (and b!38083 res!22986) b!38084))

(declare-fun m!30779 () Bool)

(assert (=> b!38084 m!30779))

(assert (=> start!5242 d!6184))

(declare-fun d!6189 () Bool)

(assert (=> d!6189 (= (inv!1707 lm!266) (isStrictlySorted!199 (toList!535 lm!266)))))

(declare-fun bs!1519 () Bool)

(assert (= bs!1519 d!6189))

(assert (=> bs!1519 m!30767))

(assert (=> start!5242 d!6189))

(declare-fun b!38097 () Bool)

(declare-fun e!24227 () Bool)

(declare-fun tp_is_empty!1719 () Bool)

(declare-fun tp!5662 () Bool)

(assert (=> b!38097 (= e!24227 (and tp_is_empty!1719 tp!5662))))

(assert (=> b!38064 (= tp!5651 e!24227)))

(assert (= (and b!38064 (is-Cons!1019 (toList!535 lm!266))) b!38097))

(push 1)

