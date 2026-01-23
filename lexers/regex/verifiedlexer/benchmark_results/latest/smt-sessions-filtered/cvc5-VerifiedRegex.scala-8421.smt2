; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437162 () Bool)

(assert start!437162)

(declare-fun res!1848813 () Bool)

(declare-fun e!2776559 () Bool)

(assert (=> start!437162 (=> (not res!1848813) (not e!2776559))))

(declare-datatypes ((K!11508 0))(
  ( (K!11509 (val!17477 Int)) )
))
(declare-datatypes ((V!11754 0))(
  ( (V!11755 (val!17478 Int)) )
))
(declare-datatypes ((tuple2!50274 0))(
  ( (tuple2!50275 (_1!28431 K!11508) (_2!28431 V!11754)) )
))
(declare-datatypes ((List!50245 0))(
  ( (Nil!50121) (Cons!50121 (h!55866 tuple2!50274) (t!357195 List!50245)) )
))
(declare-datatypes ((tuple2!50276 0))(
  ( (tuple2!50277 (_1!28432 (_ BitVec 64)) (_2!28432 List!50245)) )
))
(declare-datatypes ((List!50246 0))(
  ( (Nil!50122) (Cons!50122 (h!55867 tuple2!50276) (t!357196 List!50246)) )
))
(declare-datatypes ((ListLongMap!2585 0))(
  ( (ListLongMap!2586 (toList!3929 List!50246)) )
))
(declare-fun lm!1853 () ListLongMap!2585)

(declare-fun lambda!161118 () Int)

(declare-fun forall!9895 (List!50246 Int) Bool)

(assert (=> start!437162 (= res!1848813 (forall!9895 (toList!3929 lm!1853) lambda!161118))))

(assert (=> start!437162 e!2776559))

(declare-fun e!2776560 () Bool)

(declare-fun inv!65695 (ListLongMap!2585) Bool)

(assert (=> start!437162 (and (inv!65695 lm!1853) e!2776560)))

(assert (=> start!437162 true))

(declare-fun e!2776561 () Bool)

(assert (=> start!437162 e!2776561))

(declare-fun tp_is_empty!27065 () Bool)

(assert (=> start!437162 tp_is_empty!27065))

(declare-fun b!4458954 () Bool)

(declare-fun e!2776558 () Bool)

(assert (=> b!4458954 (= e!2776559 e!2776558)))

(declare-fun res!1848816 () Bool)

(assert (=> b!4458954 (=> (not res!1848816) (not e!2776558))))

(declare-datatypes ((ListMap!3167 0))(
  ( (ListMap!3168 (toList!3930 List!50245)) )
))
(declare-fun lt!1649989 () ListMap!3167)

(declare-fun key!4412 () K!11508)

(declare-fun contains!12623 (ListMap!3167 K!11508) Bool)

(assert (=> b!4458954 (= res!1848816 (contains!12623 lt!1649989 key!4412))))

(declare-fun extractMap!1029 (List!50246) ListMap!3167)

(assert (=> b!4458954 (= lt!1649989 (extractMap!1029 (toList!3929 lm!1853)))))

(declare-fun b!4458955 () Bool)

(declare-fun res!1848815 () Bool)

(assert (=> b!4458955 (=> (not res!1848815) (not e!2776559))))

(declare-fun l!12858 () List!50245)

(declare-fun noDuplicateKeys!961 (List!50245) Bool)

(assert (=> b!4458955 (= res!1848815 (noDuplicateKeys!961 l!12858))))

(declare-fun b!4458956 () Bool)

(declare-fun res!1848812 () Bool)

(assert (=> b!4458956 (=> (not res!1848812) (not e!2776558))))

(assert (=> b!4458956 (= res!1848812 (is-Cons!50121 l!12858))))

(declare-fun tp!1335474 () Bool)

(declare-fun b!4458957 () Bool)

(declare-fun tp_is_empty!27067 () Bool)

(assert (=> b!4458957 (= e!2776561 (and tp_is_empty!27065 tp_is_empty!27067 tp!1335474))))

(declare-fun b!4458958 () Bool)

(declare-fun tp!1335475 () Bool)

(assert (=> b!4458958 (= e!2776560 tp!1335475)))

(declare-fun b!4458959 () Bool)

(declare-fun res!1848814 () Bool)

(assert (=> b!4458959 (=> (not res!1848814) (not e!2776559))))

(declare-datatypes ((Hashable!5368 0))(
  ( (HashableExt!5367 (__x!31071 Int)) )
))
(declare-fun hashF!1313 () Hashable!5368)

(declare-fun allKeysSameHashInMap!1080 (ListLongMap!2585 Hashable!5368) Bool)

(assert (=> b!4458959 (= res!1848814 (allKeysSameHashInMap!1080 lm!1853 hashF!1313))))

(declare-fun b!4458960 () Bool)

(declare-fun lt!1649987 () ListMap!3167)

(declare-fun eq!498 (ListMap!3167 ListMap!3167) Bool)

(declare-fun addToMapMapFromBucket!542 (List!50245 ListMap!3167) ListMap!3167)

(declare-fun +!1317 (ListMap!3167 tuple2!50274) ListMap!3167)

(assert (=> b!4458960 (= e!2776558 (not (eq!498 (addToMapMapFromBucket!542 (t!357195 l!12858) (+!1317 lt!1649989 (h!55866 l!12858))) (+!1317 lt!1649987 (h!55866 l!12858)))))))

(assert (=> b!4458960 (eq!498 (addToMapMapFromBucket!542 (t!357195 l!12858) (+!1317 lt!1649989 (h!55866 l!12858))) (+!1317 lt!1649987 (h!55866 l!12858)))))

(declare-datatypes ((Unit!86434 0))(
  ( (Unit!86435) )
))
(declare-fun lt!1649988 () Unit!86434)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!245 (ListMap!3167 K!11508 V!11754 List!50245) Unit!86434)

(assert (=> b!4458960 (= lt!1649988 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!245 lt!1649989 (_1!28431 (h!55866 l!12858)) (_2!28431 (h!55866 l!12858)) (t!357195 l!12858)))))

(assert (=> b!4458960 (contains!12623 lt!1649987 key!4412)))

(assert (=> b!4458960 (= lt!1649987 (addToMapMapFromBucket!542 (t!357195 l!12858) lt!1649989))))

(declare-fun lt!1649990 () Unit!86434)

(declare-fun lemmaAddToMapMaintainsContains!47 (ListLongMap!2585 K!11508 List!50245 Hashable!5368) Unit!86434)

(assert (=> b!4458960 (= lt!1649990 (lemmaAddToMapMaintainsContains!47 lm!1853 key!4412 (t!357195 l!12858) hashF!1313))))

(assert (= (and start!437162 res!1848813) b!4458959))

(assert (= (and b!4458959 res!1848814) b!4458955))

(assert (= (and b!4458955 res!1848815) b!4458954))

(assert (= (and b!4458954 res!1848816) b!4458956))

(assert (= (and b!4458956 res!1848812) b!4458960))

(assert (= start!437162 b!4458958))

(assert (= (and start!437162 (is-Cons!50121 l!12858)) b!4458957))

(declare-fun m!5161535 () Bool)

(assert (=> b!4458955 m!5161535))

(declare-fun m!5161537 () Bool)

(assert (=> b!4458954 m!5161537))

(declare-fun m!5161539 () Bool)

(assert (=> b!4458954 m!5161539))

(declare-fun m!5161541 () Bool)

(assert (=> start!437162 m!5161541))

(declare-fun m!5161543 () Bool)

(assert (=> start!437162 m!5161543))

(declare-fun m!5161545 () Bool)

(assert (=> b!4458959 m!5161545))

(declare-fun m!5161547 () Bool)

(assert (=> b!4458960 m!5161547))

(declare-fun m!5161549 () Bool)

(assert (=> b!4458960 m!5161549))

(declare-fun m!5161551 () Bool)

(assert (=> b!4458960 m!5161551))

(declare-fun m!5161553 () Bool)

(assert (=> b!4458960 m!5161553))

(declare-fun m!5161555 () Bool)

(assert (=> b!4458960 m!5161555))

(declare-fun m!5161557 () Bool)

(assert (=> b!4458960 m!5161557))

(declare-fun m!5161559 () Bool)

(assert (=> b!4458960 m!5161559))

(assert (=> b!4458960 m!5161555))

(declare-fun m!5161561 () Bool)

(assert (=> b!4458960 m!5161561))

(assert (=> b!4458960 m!5161547))

(assert (=> b!4458960 m!5161553))

(push 1)

(assert tp_is_empty!27067)

(assert (not b!4458954))

(assert (not b!4458959))

(assert (not b!4458957))

(assert (not b!4458955))

(assert (not start!437162))

(assert tp_is_empty!27065)

(assert (not b!4458958))

(assert (not b!4458960))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

