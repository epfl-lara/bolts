; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437494 () Bool)

(assert start!437494)

(declare-fun b!4461265 () Bool)

(declare-fun e!2778026 () Bool)

(declare-fun tp!1335749 () Bool)

(assert (=> b!4461265 (= e!2778026 tp!1335749)))

(declare-fun tp_is_empty!27187 () Bool)

(declare-fun e!2778028 () Bool)

(declare-fun tp!1335748 () Bool)

(declare-fun tp_is_empty!27185 () Bool)

(declare-fun b!4461264 () Bool)

(assert (=> b!4461264 (= e!2778028 (and tp_is_empty!27185 tp_is_empty!27187 tp!1335748))))

(declare-fun res!1850081 () Bool)

(declare-fun e!2778027 () Bool)

(assert (=> start!437494 (=> (not res!1850081) (not e!2778027))))

(declare-datatypes ((K!11583 0))(
  ( (K!11584 (val!17537 Int)) )
))
(declare-datatypes ((V!11829 0))(
  ( (V!11830 (val!17538 Int)) )
))
(declare-datatypes ((tuple2!50346 0))(
  ( (tuple2!50347 (_1!28467 K!11583) (_2!28467 V!11829)) )
))
(declare-datatypes ((List!50299 0))(
  ( (Nil!50175) (Cons!50175 (h!55920 tuple2!50346) (t!357249 List!50299)) )
))
(declare-fun l!12755 () List!50299)

(declare-fun noDuplicateKeys!991 (List!50299) Bool)

(assert (=> start!437494 (= res!1850081 (noDuplicateKeys!991 l!12755))))

(assert (=> start!437494 e!2778027))

(assert (=> start!437494 e!2778028))

(assert (=> start!437494 tp_is_empty!27185))

(declare-datatypes ((ListMap!3223 0))(
  ( (ListMap!3224 (toList!3963 List!50299)) )
))
(declare-fun acc!957 () ListMap!3223)

(declare-fun inv!65768 (ListMap!3223) Bool)

(assert (=> start!437494 (and (inv!65768 acc!957) e!2778026)))

(declare-fun b!4461263 () Bool)

(assert (=> b!4461263 (= e!2778027 false)))

(declare-fun lt!1652483 () Bool)

(declare-fun key!4289 () K!11583)

(declare-fun contains!12683 (ListMap!3223 K!11583) Bool)

(declare-fun addToMapMapFromBucket!570 (List!50299 ListMap!3223) ListMap!3223)

(assert (=> b!4461263 (= lt!1652483 (contains!12683 (addToMapMapFromBucket!570 l!12755 acc!957) key!4289))))

(declare-fun b!4461262 () Bool)

(declare-fun res!1850080 () Bool)

(assert (=> b!4461262 (=> (not res!1850080) (not e!2778027))))

(declare-fun containsKey!1404 (List!50299 K!11583) Bool)

(assert (=> b!4461262 (= res!1850080 (not (containsKey!1404 l!12755 key!4289)))))

(assert (= (and start!437494 res!1850081) b!4461262))

(assert (= (and b!4461262 res!1850080) b!4461263))

(assert (= (and start!437494 (is-Cons!50175 l!12755)) b!4461264))

(assert (= start!437494 b!4461265))

(declare-fun m!5164273 () Bool)

(assert (=> start!437494 m!5164273))

(declare-fun m!5164275 () Bool)

(assert (=> start!437494 m!5164275))

(declare-fun m!5164277 () Bool)

(assert (=> b!4461263 m!5164277))

(assert (=> b!4461263 m!5164277))

(declare-fun m!5164279 () Bool)

(assert (=> b!4461263 m!5164279))

(declare-fun m!5164281 () Bool)

(assert (=> b!4461262 m!5164281))

(push 1)

(assert tp_is_empty!27187)

(assert tp_is_empty!27185)

(assert (not b!4461265))

(assert (not b!4461264))

(assert (not b!4461263))

(assert (not b!4461262))

(assert (not start!437494))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

