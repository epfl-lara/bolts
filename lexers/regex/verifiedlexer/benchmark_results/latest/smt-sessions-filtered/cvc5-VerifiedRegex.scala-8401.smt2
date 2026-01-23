; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436830 () Bool)

(assert start!436830)

(declare-fun b!4456862 () Bool)

(declare-fun e!2775281 () Bool)

(declare-fun tp!1335108 () Bool)

(assert (=> b!4456862 (= e!2775281 tp!1335108)))

(declare-fun b!4456863 () Bool)

(declare-fun e!2775282 () Bool)

(declare-fun e!2775283 () Bool)

(assert (=> b!4456863 (= e!2775282 e!2775283)))

(declare-fun res!1847666 () Bool)

(assert (=> b!4456863 (=> (not res!1847666) (not e!2775283))))

(declare-datatypes ((K!11408 0))(
  ( (K!11409 (val!17397 Int)) )
))
(declare-datatypes ((V!11654 0))(
  ( (V!11655 (val!17398 Int)) )
))
(declare-datatypes ((tuple2!50114 0))(
  ( (tuple2!50115 (_1!28351 K!11408) (_2!28351 V!11654)) )
))
(declare-datatypes ((List!50153 0))(
  ( (Nil!50029) (Cons!50029 (h!55774 tuple2!50114) (t!357103 List!50153)) )
))
(declare-datatypes ((ListMap!3087 0))(
  ( (ListMap!3088 (toList!3849 List!50153)) )
))
(declare-fun lt!1648271 () ListMap!3087)

(declare-fun key!4412 () K!11408)

(declare-fun contains!12567 (ListMap!3087 K!11408) Bool)

(assert (=> b!4456863 (= res!1847666 (contains!12567 lt!1648271 key!4412))))

(declare-datatypes ((tuple2!50116 0))(
  ( (tuple2!50117 (_1!28352 (_ BitVec 64)) (_2!28352 List!50153)) )
))
(declare-datatypes ((List!50154 0))(
  ( (Nil!50030) (Cons!50030 (h!55775 tuple2!50116) (t!357104 List!50154)) )
))
(declare-datatypes ((ListLongMap!2505 0))(
  ( (ListLongMap!2506 (toList!3850 List!50154)) )
))
(declare-fun lm!1853 () ListLongMap!2505)

(declare-fun extractMap!989 (List!50154) ListMap!3087)

(assert (=> b!4456863 (= lt!1648271 (extractMap!989 (toList!3850 lm!1853)))))

(declare-fun b!4456864 () Bool)

(declare-fun res!1847667 () Bool)

(assert (=> b!4456864 (=> (not res!1847667) (not e!2775282))))

(declare-fun l!12858 () List!50153)

(declare-fun noDuplicateKeys!921 (List!50153) Bool)

(assert (=> b!4456864 (= res!1847667 (noDuplicateKeys!921 l!12858))))

(declare-fun b!4456865 () Bool)

(declare-fun res!1847668 () Bool)

(assert (=> b!4456865 (=> (not res!1847668) (not e!2775283))))

(assert (=> b!4456865 (= res!1847668 (is-Cons!50029 l!12858))))

(declare-fun b!4456866 () Bool)

(declare-fun res!1847664 () Bool)

(assert (=> b!4456866 (=> (not res!1847664) (not e!2775282))))

(declare-datatypes ((Hashable!5328 0))(
  ( (HashableExt!5327 (__x!31031 Int)) )
))
(declare-fun hashF!1313 () Hashable!5328)

(declare-fun allKeysSameHashInMap!1040 (ListLongMap!2505 Hashable!5328) Bool)

(assert (=> b!4456866 (= res!1847664 (allKeysSameHashInMap!1040 lm!1853 hashF!1313))))

(declare-fun e!2775284 () Bool)

(declare-fun tp!1335109 () Bool)

(declare-fun tp_is_empty!26905 () Bool)

(declare-fun tp_is_empty!26907 () Bool)

(declare-fun b!4456867 () Bool)

(assert (=> b!4456867 (= e!2775284 (and tp_is_empty!26905 tp_is_empty!26907 tp!1335109))))

(declare-fun res!1847665 () Bool)

(assert (=> start!436830 (=> (not res!1847665) (not e!2775282))))

(declare-fun lambda!160590 () Int)

(declare-fun forall!9848 (List!50154 Int) Bool)

(assert (=> start!436830 (= res!1847665 (forall!9848 (toList!3850 lm!1853) lambda!160590))))

(assert (=> start!436830 e!2775282))

(declare-fun inv!65595 (ListLongMap!2505) Bool)

(assert (=> start!436830 (and (inv!65595 lm!1853) e!2775281)))

(assert (=> start!436830 true))

(assert (=> start!436830 e!2775284))

(assert (=> start!436830 tp_is_empty!26905))

(declare-fun lt!1648272 () ListMap!3087)

(declare-fun b!4456868 () Bool)

(declare-fun e!2775280 () Bool)

(declare-fun eq!480 (ListMap!3087 ListMap!3087) Bool)

(declare-fun addToMapMapFromBucket!515 (List!50153 ListMap!3087) ListMap!3087)

(declare-fun +!1296 (ListMap!3087 tuple2!50114) ListMap!3087)

(assert (=> b!4456868 (= e!2775280 (eq!480 (addToMapMapFromBucket!515 (t!357103 l!12858) (+!1296 lt!1648271 (h!55774 l!12858))) (+!1296 lt!1648272 (h!55774 l!12858))))))

(declare-fun b!4456869 () Bool)

(assert (=> b!4456869 (= e!2775283 (not true))))

(assert (=> b!4456869 e!2775280))

(declare-fun res!1847669 () Bool)

(assert (=> b!4456869 (=> (not res!1847669) (not e!2775280))))

(assert (=> b!4456869 (= res!1847669 (eq!480 (addToMapMapFromBucket!515 (t!357103 l!12858) (+!1296 lt!1648271 (h!55774 l!12858))) (+!1296 lt!1648272 (h!55774 l!12858))))))

(declare-datatypes ((Unit!86206 0))(
  ( (Unit!86207) )
))
(declare-fun lt!1648269 () Unit!86206)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!227 (ListMap!3087 K!11408 V!11654 List!50153) Unit!86206)

(assert (=> b!4456869 (= lt!1648269 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!227 lt!1648271 (_1!28351 (h!55774 l!12858)) (_2!28351 (h!55774 l!12858)) (t!357103 l!12858)))))

(assert (=> b!4456869 (contains!12567 lt!1648272 key!4412)))

(assert (=> b!4456869 (= lt!1648272 (addToMapMapFromBucket!515 (t!357103 l!12858) lt!1648271))))

(declare-fun lt!1648270 () Unit!86206)

(declare-fun lemmaAddToMapMaintainsContains!23 (ListLongMap!2505 K!11408 List!50153 Hashable!5328) Unit!86206)

(assert (=> b!4456869 (= lt!1648270 (lemmaAddToMapMaintainsContains!23 lm!1853 key!4412 (t!357103 l!12858) hashF!1313))))

(assert (= (and start!436830 res!1847665) b!4456866))

(assert (= (and b!4456866 res!1847664) b!4456864))

(assert (= (and b!4456864 res!1847667) b!4456863))

(assert (= (and b!4456863 res!1847666) b!4456865))

(assert (= (and b!4456865 res!1847668) b!4456869))

(assert (= (and b!4456869 res!1847669) b!4456868))

(assert (= start!436830 b!4456862))

(assert (= (and start!436830 (is-Cons!50029 l!12858)) b!4456867))

(declare-fun m!5158957 () Bool)

(assert (=> b!4456866 m!5158957))

(declare-fun m!5158959 () Bool)

(assert (=> b!4456868 m!5158959))

(assert (=> b!4456868 m!5158959))

(declare-fun m!5158961 () Bool)

(assert (=> b!4456868 m!5158961))

(declare-fun m!5158963 () Bool)

(assert (=> b!4456868 m!5158963))

(assert (=> b!4456868 m!5158961))

(assert (=> b!4456868 m!5158963))

(declare-fun m!5158965 () Bool)

(assert (=> b!4456868 m!5158965))

(declare-fun m!5158967 () Bool)

(assert (=> b!4456864 m!5158967))

(declare-fun m!5158969 () Bool)

(assert (=> b!4456863 m!5158969))

(declare-fun m!5158971 () Bool)

(assert (=> b!4456863 m!5158971))

(declare-fun m!5158973 () Bool)

(assert (=> start!436830 m!5158973))

(declare-fun m!5158975 () Bool)

(assert (=> start!436830 m!5158975))

(declare-fun m!5158977 () Bool)

(assert (=> b!4456869 m!5158977))

(assert (=> b!4456869 m!5158963))

(assert (=> b!4456869 m!5158959))

(assert (=> b!4456869 m!5158961))

(assert (=> b!4456869 m!5158963))

(assert (=> b!4456869 m!5158965))

(assert (=> b!4456869 m!5158959))

(assert (=> b!4456869 m!5158961))

(declare-fun m!5158979 () Bool)

(assert (=> b!4456869 m!5158979))

(declare-fun m!5158981 () Bool)

(assert (=> b!4456869 m!5158981))

(declare-fun m!5158983 () Bool)

(assert (=> b!4456869 m!5158983))

(push 1)

(assert (not b!4456866))

(assert (not b!4456867))

(assert tp_is_empty!26905)

(assert tp_is_empty!26907)

(assert (not b!4456868))

(assert (not b!4456863))

(assert (not start!436830))

(assert (not b!4456864))

(assert (not b!4456862))

(assert (not b!4456869))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

