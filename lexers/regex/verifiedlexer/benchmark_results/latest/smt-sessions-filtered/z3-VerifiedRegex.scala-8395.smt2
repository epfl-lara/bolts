; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436676 () Bool)

(assert start!436676)

(declare-fun b!4456029 () Bool)

(declare-fun res!1847211 () Bool)

(declare-fun e!2774759 () Bool)

(assert (=> b!4456029 (=> (not res!1847211) (not e!2774759))))

(declare-datatypes ((K!11380 0))(
  ( (K!11381 (val!17375 Int)) )
))
(declare-datatypes ((V!11626 0))(
  ( (V!11627 (val!17376 Int)) )
))
(declare-datatypes ((tuple2!50070 0))(
  ( (tuple2!50071 (_1!28329 K!11380) (_2!28329 V!11626)) )
))
(declare-datatypes ((List!50125 0))(
  ( (Nil!50001) (Cons!50001 (h!55746 tuple2!50070) (t!357075 List!50125)) )
))
(declare-datatypes ((tuple2!50072 0))(
  ( (tuple2!50073 (_1!28330 (_ BitVec 64)) (_2!28330 List!50125)) )
))
(declare-datatypes ((List!50126 0))(
  ( (Nil!50002) (Cons!50002 (h!55747 tuple2!50072) (t!357076 List!50126)) )
))
(declare-datatypes ((ListLongMap!2483 0))(
  ( (ListLongMap!2484 (toList!3827 List!50126)) )
))
(declare-fun lm!1853 () ListLongMap!2483)

(declare-datatypes ((Hashable!5317 0))(
  ( (HashableExt!5316 (__x!31020 Int)) )
))
(declare-fun hashF!1313 () Hashable!5317)

(declare-fun allKeysSameHashInMap!1029 (ListLongMap!2483 Hashable!5317) Bool)

(assert (=> b!4456029 (= res!1847211 (allKeysSameHashInMap!1029 lm!1853 hashF!1313))))

(declare-fun b!4456030 () Bool)

(declare-fun e!2774756 () Bool)

(declare-fun lambda!160279 () Int)

(declare-fun forall!9831 (List!50126 Int) Bool)

(assert (=> b!4456030 (= e!2774756 (not (forall!9831 (toList!3827 lm!1853) lambda!160279)))))

(declare-fun l!12858 () List!50125)

(declare-datatypes ((ListMap!3065 0))(
  ( (ListMap!3066 (toList!3828 List!50125)) )
))
(declare-fun lt!1647273 () ListMap!3065)

(declare-fun lt!1647276 () ListMap!3065)

(declare-fun eq!469 (ListMap!3065 ListMap!3065) Bool)

(declare-fun addToMapMapFromBucket!504 (List!50125 ListMap!3065) ListMap!3065)

(declare-fun +!1285 (ListMap!3065 tuple2!50070) ListMap!3065)

(assert (=> b!4456030 (eq!469 (addToMapMapFromBucket!504 (t!357075 l!12858) (+!1285 lt!1647273 (h!55746 l!12858))) (+!1285 lt!1647276 (h!55746 l!12858)))))

(declare-datatypes ((Unit!86029 0))(
  ( (Unit!86030) )
))
(declare-fun lt!1647274 () Unit!86029)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!216 (ListMap!3065 K!11380 V!11626 List!50125) Unit!86029)

(assert (=> b!4456030 (= lt!1647274 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!216 lt!1647273 (_1!28329 (h!55746 l!12858)) (_2!28329 (h!55746 l!12858)) (t!357075 l!12858)))))

(declare-fun key!4412 () K!11380)

(declare-fun contains!12544 (ListMap!3065 K!11380) Bool)

(assert (=> b!4456030 (contains!12544 lt!1647276 key!4412)))

(assert (=> b!4456030 (= lt!1647276 (addToMapMapFromBucket!504 (t!357075 l!12858) lt!1647273))))

(declare-fun lt!1647275 () Unit!86029)

(declare-fun lemmaAddToMapMaintainsContains!12 (ListLongMap!2483 K!11380 List!50125 Hashable!5317) Unit!86029)

(assert (=> b!4456030 (= lt!1647275 (lemmaAddToMapMaintainsContains!12 lm!1853 key!4412 (t!357075 l!12858) hashF!1313))))

(declare-fun b!4456031 () Bool)

(declare-fun res!1847212 () Bool)

(assert (=> b!4456031 (=> (not res!1847212) (not e!2774756))))

(get-info :version)

(assert (=> b!4456031 (= res!1847212 ((_ is Cons!50001) l!12858))))

(declare-fun tp!1334988 () Bool)

(declare-fun b!4456032 () Bool)

(declare-fun tp_is_empty!26861 () Bool)

(declare-fun tp_is_empty!26863 () Bool)

(declare-fun e!2774758 () Bool)

(assert (=> b!4456032 (= e!2774758 (and tp_is_empty!26861 tp_is_empty!26863 tp!1334988))))

(declare-fun b!4456033 () Bool)

(assert (=> b!4456033 (= e!2774759 e!2774756)))

(declare-fun res!1847210 () Bool)

(assert (=> b!4456033 (=> (not res!1847210) (not e!2774756))))

(assert (=> b!4456033 (= res!1847210 (contains!12544 lt!1647273 key!4412))))

(declare-fun extractMap!978 (List!50126) ListMap!3065)

(assert (=> b!4456033 (= lt!1647273 (extractMap!978 (toList!3827 lm!1853)))))

(declare-fun res!1847209 () Bool)

(assert (=> start!436676 (=> (not res!1847209) (not e!2774759))))

(assert (=> start!436676 (= res!1847209 (forall!9831 (toList!3827 lm!1853) lambda!160279))))

(assert (=> start!436676 e!2774759))

(declare-fun e!2774757 () Bool)

(declare-fun inv!65566 (ListLongMap!2483) Bool)

(assert (=> start!436676 (and (inv!65566 lm!1853) e!2774757)))

(assert (=> start!436676 true))

(assert (=> start!436676 e!2774758))

(assert (=> start!436676 tp_is_empty!26861))

(declare-fun b!4456034 () Bool)

(declare-fun res!1847213 () Bool)

(assert (=> b!4456034 (=> (not res!1847213) (not e!2774759))))

(declare-fun noDuplicateKeys!910 (List!50125) Bool)

(assert (=> b!4456034 (= res!1847213 (noDuplicateKeys!910 l!12858))))

(declare-fun b!4456035 () Bool)

(declare-fun tp!1334989 () Bool)

(assert (=> b!4456035 (= e!2774757 tp!1334989)))

(assert (= (and start!436676 res!1847209) b!4456029))

(assert (= (and b!4456029 res!1847211) b!4456034))

(assert (= (and b!4456034 res!1847213) b!4456033))

(assert (= (and b!4456033 res!1847210) b!4456031))

(assert (= (and b!4456031 res!1847212) b!4456030))

(assert (= start!436676 b!4456035))

(assert (= (and start!436676 ((_ is Cons!50001) l!12858)) b!4456032))

(declare-fun m!5157585 () Bool)

(assert (=> b!4456033 m!5157585))

(declare-fun m!5157587 () Bool)

(assert (=> b!4456033 m!5157587))

(declare-fun m!5157589 () Bool)

(assert (=> start!436676 m!5157589))

(declare-fun m!5157591 () Bool)

(assert (=> start!436676 m!5157591))

(declare-fun m!5157593 () Bool)

(assert (=> b!4456034 m!5157593))

(declare-fun m!5157595 () Bool)

(assert (=> b!4456029 m!5157595))

(declare-fun m!5157597 () Bool)

(assert (=> b!4456030 m!5157597))

(declare-fun m!5157599 () Bool)

(assert (=> b!4456030 m!5157599))

(declare-fun m!5157601 () Bool)

(assert (=> b!4456030 m!5157601))

(declare-fun m!5157603 () Bool)

(assert (=> b!4456030 m!5157603))

(declare-fun m!5157605 () Bool)

(assert (=> b!4456030 m!5157605))

(assert (=> b!4456030 m!5157589))

(declare-fun m!5157607 () Bool)

(assert (=> b!4456030 m!5157607))

(assert (=> b!4456030 m!5157605))

(declare-fun m!5157609 () Bool)

(assert (=> b!4456030 m!5157609))

(declare-fun m!5157611 () Bool)

(assert (=> b!4456030 m!5157611))

(assert (=> b!4456030 m!5157611))

(assert (=> b!4456030 m!5157607))

(check-sat (not b!4456035) (not b!4456034) (not b!4456033) tp_is_empty!26861 tp_is_empty!26863 (not b!4456030) (not start!436676) (not b!4456032) (not b!4456029))
(check-sat)
