; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436618 () Bool)

(assert start!436618)

(declare-fun res!1846924 () Bool)

(declare-fun e!2774498 () Bool)

(assert (=> start!436618 (=> (not res!1846924) (not e!2774498))))

(declare-datatypes ((K!11348 0))(
  ( (K!11349 (val!17349 Int)) )
))
(declare-datatypes ((V!11594 0))(
  ( (V!11595 (val!17350 Int)) )
))
(declare-datatypes ((tuple2!50018 0))(
  ( (tuple2!50019 (_1!28303 K!11348) (_2!28303 V!11594)) )
))
(declare-datatypes ((List!50097 0))(
  ( (Nil!49973) (Cons!49973 (h!55718 tuple2!50018) (t!357047 List!50097)) )
))
(declare-datatypes ((tuple2!50020 0))(
  ( (tuple2!50021 (_1!28304 (_ BitVec 64)) (_2!28304 List!50097)) )
))
(declare-datatypes ((List!50098 0))(
  ( (Nil!49974) (Cons!49974 (h!55719 tuple2!50020) (t!357048 List!50098)) )
))
(declare-datatypes ((ListLongMap!2457 0))(
  ( (ListLongMap!2458 (toList!3803 List!50098)) )
))
(declare-fun lm!1853 () ListLongMap!2457)

(declare-fun lambda!160136 () Int)

(declare-fun forall!9817 (List!50098 Int) Bool)

(assert (=> start!436618 (= res!1846924 (forall!9817 (toList!3803 lm!1853) lambda!160136))))

(assert (=> start!436618 e!2774498))

(declare-fun e!2774500 () Bool)

(declare-fun inv!65535 (ListLongMap!2457) Bool)

(assert (=> start!436618 (and (inv!65535 lm!1853) e!2774500)))

(assert (=> start!436618 true))

(declare-fun e!2774499 () Bool)

(assert (=> start!436618 e!2774499))

(declare-fun tp_is_empty!26809 () Bool)

(declare-fun b!4455564 () Bool)

(declare-fun tp!1334892 () Bool)

(declare-fun tp_is_empty!26811 () Bool)

(assert (=> b!4455564 (= e!2774499 (and tp_is_empty!26809 tp_is_empty!26811 tp!1334892))))

(declare-fun b!4455565 () Bool)

(declare-fun tp!1334893 () Bool)

(assert (=> b!4455565 (= e!2774500 tp!1334893)))

(declare-fun b!4455566 () Bool)

(assert (=> b!4455566 (= e!2774498 (not (forall!9817 (toList!3803 lm!1853) lambda!160136)))))

(declare-fun b!4455567 () Bool)

(declare-fun res!1846922 () Bool)

(assert (=> b!4455567 (=> (not res!1846922) (not e!2774498))))

(declare-datatypes ((Hashable!5304 0))(
  ( (HashableExt!5303 (__x!31007 Int)) )
))
(declare-fun hashF!1313 () Hashable!5304)

(declare-fun allKeysSameHashInMap!1016 (ListLongMap!2457 Hashable!5304) Bool)

(assert (=> b!4455567 (= res!1846922 (allKeysSameHashInMap!1016 lm!1853 hashF!1313))))

(declare-fun b!4455568 () Bool)

(declare-fun res!1846923 () Bool)

(assert (=> b!4455568 (=> (not res!1846923) (not e!2774498))))

(declare-fun l!12858 () List!50097)

(declare-fun noDuplicateKeys!897 (List!50097) Bool)

(assert (=> b!4455568 (= res!1846923 (noDuplicateKeys!897 l!12858))))

(assert (= (and start!436618 res!1846924) b!4455567))

(assert (= (and b!4455567 res!1846922) b!4455568))

(assert (= (and b!4455568 res!1846923) b!4455566))

(assert (= start!436618 b!4455565))

(assert (= (and start!436618 (is-Cons!49973 l!12858)) b!4455564))

(declare-fun m!5157155 () Bool)

(assert (=> start!436618 m!5157155))

(declare-fun m!5157157 () Bool)

(assert (=> start!436618 m!5157157))

(assert (=> b!4455566 m!5157155))

(declare-fun m!5157159 () Bool)

(assert (=> b!4455567 m!5157159))

(declare-fun m!5157161 () Bool)

(assert (=> b!4455568 m!5157161))

(push 1)

(assert (not b!4455568))

(assert tp_is_empty!26809)

(assert (not b!4455566))

(assert (not b!4455565))

(assert (not start!436618))

(assert tp_is_empty!26811)

(assert (not b!4455567))

(assert (not b!4455564))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

