; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437006 () Bool)

(assert start!437006)

(declare-fun b!4457982 () Bool)

(declare-fun res!1848300 () Bool)

(declare-fun e!2775972 () Bool)

(assert (=> b!4457982 (=> (not res!1848300) (not e!2775972))))

(declare-datatypes ((K!11468 0))(
  ( (K!11469 (val!17445 Int)) )
))
(declare-datatypes ((V!11714 0))(
  ( (V!11715 (val!17446 Int)) )
))
(declare-datatypes ((tuple2!50210 0))(
  ( (tuple2!50211 (_1!28399 K!11468) (_2!28399 V!11714)) )
))
(declare-datatypes ((List!50206 0))(
  ( (Nil!50082) (Cons!50082 (h!55827 tuple2!50210) (t!357156 List!50206)) )
))
(declare-fun l!12858 () List!50206)

(assert (=> b!4457982 (= res!1848300 (is-Cons!50082 l!12858))))

(declare-fun b!4457983 () Bool)

(declare-fun e!2775973 () Bool)

(declare-fun tp!1335307 () Bool)

(assert (=> b!4457983 (= e!2775973 tp!1335307)))

(declare-fun b!4457985 () Bool)

(declare-datatypes ((tuple2!50212 0))(
  ( (tuple2!50213 (_1!28400 (_ BitVec 64)) (_2!28400 List!50206)) )
))
(declare-datatypes ((List!50207 0))(
  ( (Nil!50083) (Cons!50083 (h!55828 tuple2!50212) (t!357157 List!50207)) )
))
(declare-datatypes ((ListLongMap!2553 0))(
  ( (ListLongMap!2554 (toList!3897 List!50207)) )
))
(declare-fun lm!1853 () ListLongMap!2553)

(declare-fun lambda!160868 () Int)

(declare-fun forall!9876 (List!50207 Int) Bool)

(assert (=> b!4457985 (= e!2775972 (not (forall!9876 (toList!3897 lm!1853) lambda!160868)))))

(declare-fun b!4457986 () Bool)

(declare-fun res!1848297 () Bool)

(assert (=> b!4457986 (=> (not res!1848297) (not e!2775972))))

(declare-fun key!4412 () K!11468)

(declare-datatypes ((ListMap!3135 0))(
  ( (ListMap!3136 (toList!3898 List!50206)) )
))
(declare-fun contains!12600 (ListMap!3135 K!11468) Bool)

(declare-fun extractMap!1013 (List!50207) ListMap!3135)

(assert (=> b!4457986 (= res!1848297 (contains!12600 (extractMap!1013 (toList!3897 lm!1853)) key!4412))))

(declare-fun b!4457987 () Bool)

(declare-fun res!1848296 () Bool)

(assert (=> b!4457987 (=> (not res!1848296) (not e!2775972))))

(declare-datatypes ((Hashable!5352 0))(
  ( (HashableExt!5351 (__x!31055 Int)) )
))
(declare-fun hashF!1313 () Hashable!5352)

(declare-fun allKeysSameHashInMap!1064 (ListLongMap!2553 Hashable!5352) Bool)

(assert (=> b!4457987 (= res!1848296 (allKeysSameHashInMap!1064 lm!1853 hashF!1313))))

(declare-fun b!4457988 () Bool)

(declare-fun res!1848298 () Bool)

(assert (=> b!4457988 (=> (not res!1848298) (not e!2775972))))

(declare-fun noDuplicateKeys!945 (List!50206) Bool)

(assert (=> b!4457988 (= res!1848298 (noDuplicateKeys!945 l!12858))))

(declare-fun b!4457984 () Bool)

(declare-fun tp_is_empty!27001 () Bool)

(declare-fun e!2775974 () Bool)

(declare-fun tp_is_empty!27003 () Bool)

(declare-fun tp!1335306 () Bool)

(assert (=> b!4457984 (= e!2775974 (and tp_is_empty!27001 tp_is_empty!27003 tp!1335306))))

(declare-fun res!1848299 () Bool)

(assert (=> start!437006 (=> (not res!1848299) (not e!2775972))))

(assert (=> start!437006 (= res!1848299 (forall!9876 (toList!3897 lm!1853) lambda!160868))))

(assert (=> start!437006 e!2775972))

(declare-fun inv!65655 (ListLongMap!2553) Bool)

(assert (=> start!437006 (and (inv!65655 lm!1853) e!2775973)))

(assert (=> start!437006 true))

(assert (=> start!437006 e!2775974))

(assert (=> start!437006 tp_is_empty!27001))

(assert (= (and start!437006 res!1848299) b!4457987))

(assert (= (and b!4457987 res!1848296) b!4457988))

(assert (= (and b!4457988 res!1848298) b!4457986))

(assert (= (and b!4457986 res!1848297) b!4457982))

(assert (= (and b!4457982 res!1848300) b!4457985))

(assert (= start!437006 b!4457983))

(assert (= (and start!437006 (is-Cons!50082 l!12858)) b!4457984))

(declare-fun m!5160681 () Bool)

(assert (=> b!4457985 m!5160681))

(declare-fun m!5160683 () Bool)

(assert (=> b!4457988 m!5160683))

(assert (=> start!437006 m!5160681))

(declare-fun m!5160685 () Bool)

(assert (=> start!437006 m!5160685))

(declare-fun m!5160687 () Bool)

(assert (=> b!4457986 m!5160687))

(assert (=> b!4457986 m!5160687))

(declare-fun m!5160689 () Bool)

(assert (=> b!4457986 m!5160689))

(declare-fun m!5160691 () Bool)

(assert (=> b!4457987 m!5160691))

(push 1)

(assert (not start!437006))

(assert (not b!4457984))

(assert tp_is_empty!27001)

(assert (not b!4457983))

(assert (not b!4457985))

(assert (not b!4457988))

(assert (not b!4457986))

(assert tp_is_empty!27003)

(assert (not b!4457987))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

