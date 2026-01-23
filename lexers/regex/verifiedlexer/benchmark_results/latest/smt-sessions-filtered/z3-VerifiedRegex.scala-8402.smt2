; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436836 () Bool)

(assert start!436836)

(declare-fun b!4456934 () Bool)

(declare-datatypes ((K!11415 0))(
  ( (K!11416 (val!17403 Int)) )
))
(declare-datatypes ((V!11661 0))(
  ( (V!11662 (val!17404 Int)) )
))
(declare-datatypes ((tuple2!50126 0))(
  ( (tuple2!50127 (_1!28357 K!11415) (_2!28357 V!11661)) )
))
(declare-datatypes ((List!50159 0))(
  ( (Nil!50035) (Cons!50035 (h!55780 tuple2!50126) (t!357109 List!50159)) )
))
(declare-datatypes ((ListMap!3093 0))(
  ( (ListMap!3094 (toList!3855 List!50159)) )
))
(declare-fun lt!1648323 () ListMap!3093)

(declare-fun e!2775325 () Bool)

(declare-fun lt!1648320 () ListMap!3093)

(declare-fun l!12858 () List!50159)

(declare-fun eq!483 (ListMap!3093 ListMap!3093) Bool)

(declare-fun addToMapMapFromBucket!518 (List!50159 ListMap!3093) ListMap!3093)

(declare-fun +!1299 (ListMap!3093 tuple2!50126) ListMap!3093)

(assert (=> b!4456934 (= e!2775325 (eq!483 (addToMapMapFromBucket!518 (t!357109 l!12858) (+!1299 lt!1648323 (h!55780 l!12858))) (+!1299 lt!1648320 (h!55780 l!12858))))))

(declare-fun b!4456935 () Bool)

(declare-fun res!1847719 () Bool)

(declare-fun e!2775329 () Bool)

(assert (=> b!4456935 (=> (not res!1847719) (not e!2775329))))

(declare-fun noDuplicateKeys!924 (List!50159) Bool)

(assert (=> b!4456935 (= res!1847719 (noDuplicateKeys!924 l!12858))))

(declare-fun res!1847723 () Bool)

(assert (=> start!436836 (=> (not res!1847723) (not e!2775329))))

(declare-datatypes ((tuple2!50128 0))(
  ( (tuple2!50129 (_1!28358 (_ BitVec 64)) (_2!28358 List!50159)) )
))
(declare-datatypes ((List!50160 0))(
  ( (Nil!50036) (Cons!50036 (h!55781 tuple2!50128) (t!357110 List!50160)) )
))
(declare-datatypes ((ListLongMap!2511 0))(
  ( (ListLongMap!2512 (toList!3856 List!50160)) )
))
(declare-fun lm!1853 () ListLongMap!2511)

(declare-fun lambda!160603 () Int)

(declare-fun forall!9851 (List!50160 Int) Bool)

(assert (=> start!436836 (= res!1847723 (forall!9851 (toList!3856 lm!1853) lambda!160603))))

(assert (=> start!436836 e!2775329))

(declare-fun e!2775328 () Bool)

(declare-fun inv!65601 (ListLongMap!2511) Bool)

(assert (=> start!436836 (and (inv!65601 lm!1853) e!2775328)))

(assert (=> start!436836 true))

(declare-fun e!2775327 () Bool)

(assert (=> start!436836 e!2775327))

(declare-fun tp_is_empty!26917 () Bool)

(assert (=> start!436836 tp_is_empty!26917))

(declare-fun b!4456936 () Bool)

(declare-fun e!2775326 () Bool)

(assert (=> b!4456936 (= e!2775326 (not (forall!9851 (toList!3856 lm!1853) lambda!160603)))))

(declare-fun lt!1648321 () ListMap!3093)

(declare-fun key!4412 () K!11415)

(declare-fun contains!12570 (ListMap!3093 K!11415) Bool)

(assert (=> b!4456936 (contains!12570 lt!1648321 key!4412)))

(declare-datatypes ((Unit!86212 0))(
  ( (Unit!86213) )
))
(declare-fun lt!1648326 () Unit!86212)

(declare-fun addStillContains!6 (ListMap!3093 K!11415 V!11661 K!11415) Unit!86212)

(assert (=> b!4456936 (= lt!1648326 (addStillContains!6 lt!1648320 (_1!28357 (h!55780 l!12858)) (_2!28357 (h!55780 l!12858)) key!4412))))

(assert (=> b!4456936 e!2775325))

(declare-fun res!1847718 () Bool)

(assert (=> b!4456936 (=> (not res!1847718) (not e!2775325))))

(declare-fun lt!1648322 () ListMap!3093)

(assert (=> b!4456936 (= res!1847718 (eq!483 lt!1648322 lt!1648321))))

(assert (=> b!4456936 (= lt!1648321 (+!1299 lt!1648320 (h!55780 l!12858)))))

(assert (=> b!4456936 (= lt!1648322 (addToMapMapFromBucket!518 (t!357109 l!12858) (+!1299 lt!1648323 (h!55780 l!12858))))))

(declare-fun lt!1648324 () Unit!86212)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!230 (ListMap!3093 K!11415 V!11661 List!50159) Unit!86212)

(assert (=> b!4456936 (= lt!1648324 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!230 lt!1648323 (_1!28357 (h!55780 l!12858)) (_2!28357 (h!55780 l!12858)) (t!357109 l!12858)))))

(assert (=> b!4456936 (contains!12570 lt!1648320 key!4412)))

(assert (=> b!4456936 (= lt!1648320 (addToMapMapFromBucket!518 (t!357109 l!12858) lt!1648323))))

(declare-datatypes ((Hashable!5331 0))(
  ( (HashableExt!5330 (__x!31034 Int)) )
))
(declare-fun hashF!1313 () Hashable!5331)

(declare-fun lt!1648325 () Unit!86212)

(declare-fun lemmaAddToMapMaintainsContains!26 (ListLongMap!2511 K!11415 List!50159 Hashable!5331) Unit!86212)

(assert (=> b!4456936 (= lt!1648325 (lemmaAddToMapMaintainsContains!26 lm!1853 key!4412 (t!357109 l!12858) hashF!1313))))

(declare-fun b!4456937 () Bool)

(declare-fun tp_is_empty!26919 () Bool)

(declare-fun tp!1335127 () Bool)

(assert (=> b!4456937 (= e!2775327 (and tp_is_empty!26917 tp_is_empty!26919 tp!1335127))))

(declare-fun b!4456938 () Bool)

(declare-fun tp!1335126 () Bool)

(assert (=> b!4456938 (= e!2775328 tp!1335126)))

(declare-fun b!4456939 () Bool)

(declare-fun res!1847722 () Bool)

(assert (=> b!4456939 (=> (not res!1847722) (not e!2775326))))

(get-info :version)

(assert (=> b!4456939 (= res!1847722 ((_ is Cons!50035) l!12858))))

(declare-fun b!4456940 () Bool)

(declare-fun res!1847721 () Bool)

(assert (=> b!4456940 (=> (not res!1847721) (not e!2775329))))

(declare-fun allKeysSameHashInMap!1043 (ListLongMap!2511 Hashable!5331) Bool)

(assert (=> b!4456940 (= res!1847721 (allKeysSameHashInMap!1043 lm!1853 hashF!1313))))

(declare-fun b!4456941 () Bool)

(assert (=> b!4456941 (= e!2775329 e!2775326)))

(declare-fun res!1847720 () Bool)

(assert (=> b!4456941 (=> (not res!1847720) (not e!2775326))))

(assert (=> b!4456941 (= res!1847720 (contains!12570 lt!1648323 key!4412))))

(declare-fun extractMap!992 (List!50160) ListMap!3093)

(assert (=> b!4456941 (= lt!1648323 (extractMap!992 (toList!3856 lm!1853)))))

(assert (= (and start!436836 res!1847723) b!4456940))

(assert (= (and b!4456940 res!1847721) b!4456935))

(assert (= (and b!4456935 res!1847719) b!4456941))

(assert (= (and b!4456941 res!1847720) b!4456939))

(assert (= (and b!4456939 res!1847722) b!4456936))

(assert (= (and b!4456936 res!1847718) b!4456934))

(assert (= start!436836 b!4456938))

(assert (= (and start!436836 ((_ is Cons!50035) l!12858)) b!4456937))

(declare-fun m!5159047 () Bool)

(assert (=> start!436836 m!5159047))

(declare-fun m!5159049 () Bool)

(assert (=> start!436836 m!5159049))

(declare-fun m!5159051 () Bool)

(assert (=> b!4456940 m!5159051))

(declare-fun m!5159053 () Bool)

(assert (=> b!4456934 m!5159053))

(assert (=> b!4456934 m!5159053))

(declare-fun m!5159055 () Bool)

(assert (=> b!4456934 m!5159055))

(declare-fun m!5159057 () Bool)

(assert (=> b!4456934 m!5159057))

(assert (=> b!4456934 m!5159055))

(assert (=> b!4456934 m!5159057))

(declare-fun m!5159059 () Bool)

(assert (=> b!4456934 m!5159059))

(assert (=> b!4456936 m!5159053))

(assert (=> b!4456936 m!5159055))

(declare-fun m!5159061 () Bool)

(assert (=> b!4456936 m!5159061))

(declare-fun m!5159063 () Bool)

(assert (=> b!4456936 m!5159063))

(declare-fun m!5159065 () Bool)

(assert (=> b!4456936 m!5159065))

(assert (=> b!4456936 m!5159057))

(declare-fun m!5159067 () Bool)

(assert (=> b!4456936 m!5159067))

(assert (=> b!4456936 m!5159053))

(assert (=> b!4456936 m!5159047))

(declare-fun m!5159069 () Bool)

(assert (=> b!4456936 m!5159069))

(declare-fun m!5159071 () Bool)

(assert (=> b!4456936 m!5159071))

(declare-fun m!5159073 () Bool)

(assert (=> b!4456936 m!5159073))

(declare-fun m!5159075 () Bool)

(assert (=> b!4456935 m!5159075))

(declare-fun m!5159077 () Bool)

(assert (=> b!4456941 m!5159077))

(declare-fun m!5159079 () Bool)

(assert (=> b!4456941 m!5159079))

(check-sat (not b!4456938) (not b!4456934) (not b!4456935) tp_is_empty!26919 (not start!436836) (not b!4456940) (not b!4456936) (not b!4456937) (not b!4456941) tp_is_empty!26917)
(check-sat)
