; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436110 () Bool)

(assert start!436110)

(declare-fun b!4453030 () Bool)

(declare-fun res!1845490 () Bool)

(declare-fun e!2772989 () Bool)

(assert (=> b!4453030 (=> (not res!1845490) (not e!2772989))))

(declare-datatypes ((V!11504 0))(
  ( (V!11505 (val!17277 Int)) )
))
(declare-datatypes ((K!11258 0))(
  ( (K!11259 (val!17278 Int)) )
))
(declare-datatypes ((tuple2!49874 0))(
  ( (tuple2!49875 (_1!28231 K!11258) (_2!28231 V!11504)) )
))
(declare-datatypes ((List!50011 0))(
  ( (Nil!49887) (Cons!49887 (h!55632 tuple2!49874) (t!356961 List!50011)) )
))
(declare-datatypes ((tuple2!49876 0))(
  ( (tuple2!49877 (_1!28232 (_ BitVec 64)) (_2!28232 List!50011)) )
))
(declare-datatypes ((List!50012 0))(
  ( (Nil!49888) (Cons!49888 (h!55633 tuple2!49876) (t!356962 List!50012)) )
))
(declare-datatypes ((ListLongMap!2385 0))(
  ( (ListLongMap!2386 (toList!3731 List!50012)) )
))
(declare-fun lm!1837 () ListLongMap!2385)

(declare-datatypes ((Hashable!5268 0))(
  ( (HashableExt!5267 (__x!30971 Int)) )
))
(declare-fun hashF!1304 () Hashable!5268)

(declare-fun allKeysSameHashInMap!980 (ListLongMap!2385 Hashable!5268) Bool)

(assert (=> b!4453030 (= res!1845490 (allKeysSameHashInMap!980 lm!1837 hashF!1304))))

(declare-fun b!4453031 () Bool)

(declare-fun res!1845492 () Bool)

(assert (=> b!4453031 (=> (not res!1845492) (not e!2772989))))

(assert (=> b!4453031 (= res!1845492 (is-Cons!49888 (toList!3731 lm!1837)))))

(declare-fun b!4453032 () Bool)

(declare-fun res!1845488 () Bool)

(assert (=> b!4453032 (=> (not res!1845488) (not e!2772989))))

(declare-fun isEmpty!28414 (List!50012) Bool)

(assert (=> b!4453032 (= res!1845488 (not (isEmpty!28414 (toList!3731 lm!1837))))))

(declare-fun res!1845489 () Bool)

(assert (=> start!436110 (=> (not res!1845489) (not e!2772989))))

(declare-fun lambda!159366 () Int)

(declare-fun forall!9769 (List!50012 Int) Bool)

(assert (=> start!436110 (= res!1845489 (forall!9769 (toList!3731 lm!1837) lambda!159366))))

(assert (=> start!436110 e!2772989))

(declare-fun e!2772990 () Bool)

(declare-fun inv!65445 (ListLongMap!2385) Bool)

(assert (=> start!436110 (and (inv!65445 lm!1837) e!2772990)))

(assert (=> start!436110 true))

(declare-fun tp_is_empty!26729 () Bool)

(assert (=> start!436110 tp_is_empty!26729))

(declare-fun b!4453033 () Bool)

(declare-fun res!1845491 () Bool)

(assert (=> b!4453033 (=> (not res!1845491) (not e!2772989))))

(declare-fun key!4369 () K!11258)

(declare-datatypes ((ListMap!2971 0))(
  ( (ListMap!2972 (toList!3732 List!50011)) )
))
(declare-fun contains!12477 (ListMap!2971 K!11258) Bool)

(declare-fun extractMap!931 (List!50012) ListMap!2971)

(declare-fun tail!7432 (ListLongMap!2385) ListLongMap!2385)

(assert (=> b!4453033 (= res!1845491 (contains!12477 (extractMap!931 (toList!3731 (tail!7432 lm!1837))) key!4369))))

(declare-fun b!4453034 () Bool)

(assert (=> b!4453034 (= e!2772989 (not (forall!9769 (toList!3731 lm!1837) lambda!159366)))))

(declare-fun b!4453035 () Bool)

(declare-fun tp!1334642 () Bool)

(assert (=> b!4453035 (= e!2772990 tp!1334642)))

(assert (= (and start!436110 res!1845489) b!4453030))

(assert (= (and b!4453030 res!1845490) b!4453032))

(assert (= (and b!4453032 res!1845488) b!4453033))

(assert (= (and b!4453033 res!1845491) b!4453031))

(assert (= (and b!4453031 res!1845492) b!4453034))

(assert (= start!436110 b!4453035))

(declare-fun m!5153841 () Bool)

(assert (=> b!4453034 m!5153841))

(declare-fun m!5153843 () Bool)

(assert (=> b!4453033 m!5153843))

(declare-fun m!5153845 () Bool)

(assert (=> b!4453033 m!5153845))

(assert (=> b!4453033 m!5153845))

(declare-fun m!5153847 () Bool)

(assert (=> b!4453033 m!5153847))

(assert (=> start!436110 m!5153841))

(declare-fun m!5153849 () Bool)

(assert (=> start!436110 m!5153849))

(declare-fun m!5153851 () Bool)

(assert (=> b!4453030 m!5153851))

(declare-fun m!5153853 () Bool)

(assert (=> b!4453032 m!5153853))

(push 1)

(assert (not b!4453034))

(assert (not b!4453030))

(assert (not b!4453035))

(assert (not start!436110))

(assert tp_is_empty!26729)

(assert (not b!4453033))

(assert (not b!4453032))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

