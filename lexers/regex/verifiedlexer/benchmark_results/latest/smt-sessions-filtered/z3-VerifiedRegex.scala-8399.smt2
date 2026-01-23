; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436780 () Bool)

(assert start!436780)

(declare-fun b!4456594 () Bool)

(declare-fun res!1847518 () Bool)

(declare-fun e!2775112 () Bool)

(assert (=> b!4456594 (=> (not res!1847518) (not e!2775112))))

(declare-datatypes ((K!11400 0))(
  ( (K!11401 (val!17391 Int)) )
))
(declare-datatypes ((V!11646 0))(
  ( (V!11647 (val!17392 Int)) )
))
(declare-datatypes ((tuple2!50102 0))(
  ( (tuple2!50103 (_1!28345 K!11400) (_2!28345 V!11646)) )
))
(declare-datatypes ((List!50145 0))(
  ( (Nil!50021) (Cons!50021 (h!55766 tuple2!50102) (t!357095 List!50145)) )
))
(declare-fun l!12858 () List!50145)

(get-info :version)

(assert (=> b!4456594 (= res!1847518 ((_ is Cons!50021) l!12858))))

(declare-fun b!4456595 () Bool)

(declare-datatypes ((tuple2!50104 0))(
  ( (tuple2!50105 (_1!28346 (_ BitVec 64)) (_2!28346 List!50145)) )
))
(declare-datatypes ((List!50146 0))(
  ( (Nil!50022) (Cons!50022 (h!55767 tuple2!50104) (t!357096 List!50146)) )
))
(declare-datatypes ((ListLongMap!2499 0))(
  ( (ListLongMap!2500 (toList!3843 List!50146)) )
))
(declare-fun lm!1853 () ListLongMap!2499)

(declare-fun lambda!160491 () Int)

(declare-fun forall!9843 (List!50146 Int) Bool)

(assert (=> b!4456595 (= e!2775112 (not (forall!9843 (toList!3843 lm!1853) lambda!160491)))))

(declare-fun e!2775111 () Bool)

(assert (=> b!4456595 e!2775111))

(declare-fun res!1847521 () Bool)

(assert (=> b!4456595 (=> (not res!1847521) (not e!2775111))))

(declare-datatypes ((ListMap!3081 0))(
  ( (ListMap!3082 (toList!3844 List!50145)) )
))
(declare-fun lt!1647952 () ListMap!3081)

(declare-fun lt!1647954 () ListMap!3081)

(declare-fun eq!477 (ListMap!3081 ListMap!3081) Bool)

(declare-fun addToMapMapFromBucket!512 (List!50145 ListMap!3081) ListMap!3081)

(declare-fun +!1293 (ListMap!3081 tuple2!50102) ListMap!3081)

(assert (=> b!4456595 (= res!1847521 (eq!477 (addToMapMapFromBucket!512 (t!357095 l!12858) (+!1293 lt!1647954 (h!55766 l!12858))) (+!1293 lt!1647952 (h!55766 l!12858))))))

(declare-datatypes ((Unit!86148 0))(
  ( (Unit!86149) )
))
(declare-fun lt!1647953 () Unit!86148)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!224 (ListMap!3081 K!11400 V!11646 List!50145) Unit!86148)

(assert (=> b!4456595 (= lt!1647953 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!224 lt!1647954 (_1!28345 (h!55766 l!12858)) (_2!28345 (h!55766 l!12858)) (t!357095 l!12858)))))

(declare-fun key!4412 () K!11400)

(declare-fun contains!12560 (ListMap!3081 K!11400) Bool)

(assert (=> b!4456595 (contains!12560 lt!1647952 key!4412)))

(assert (=> b!4456595 (= lt!1647952 (addToMapMapFromBucket!512 (t!357095 l!12858) lt!1647954))))

(declare-datatypes ((Hashable!5325 0))(
  ( (HashableExt!5324 (__x!31028 Int)) )
))
(declare-fun hashF!1313 () Hashable!5325)

(declare-fun lt!1647951 () Unit!86148)

(declare-fun lemmaAddToMapMaintainsContains!20 (ListLongMap!2499 K!11400 List!50145 Hashable!5325) Unit!86148)

(assert (=> b!4456595 (= lt!1647951 (lemmaAddToMapMaintainsContains!20 lm!1853 key!4412 (t!357095 l!12858) hashF!1313))))

(declare-fun e!2775113 () Bool)

(declare-fun tp!1335072 () Bool)

(declare-fun tp_is_empty!26895 () Bool)

(declare-fun b!4456596 () Bool)

(declare-fun tp_is_empty!26893 () Bool)

(assert (=> b!4456596 (= e!2775113 (and tp_is_empty!26893 tp_is_empty!26895 tp!1335072))))

(declare-fun b!4456597 () Bool)

(declare-fun res!1847523 () Bool)

(declare-fun e!2775110 () Bool)

(assert (=> b!4456597 (=> (not res!1847523) (not e!2775110))))

(declare-fun allKeysSameHashInMap!1037 (ListLongMap!2499 Hashable!5325) Bool)

(assert (=> b!4456597 (= res!1847523 (allKeysSameHashInMap!1037 lm!1853 hashF!1313))))

(declare-fun b!4456598 () Bool)

(assert (=> b!4456598 (= e!2775111 (eq!477 (addToMapMapFromBucket!512 (t!357095 l!12858) (+!1293 lt!1647954 (h!55766 l!12858))) (+!1293 lt!1647952 (h!55766 l!12858))))))

(declare-fun b!4456599 () Bool)

(declare-fun e!2775109 () Bool)

(declare-fun tp!1335073 () Bool)

(assert (=> b!4456599 (= e!2775109 tp!1335073)))

(declare-fun res!1847522 () Bool)

(assert (=> start!436780 (=> (not res!1847522) (not e!2775110))))

(assert (=> start!436780 (= res!1847522 (forall!9843 (toList!3843 lm!1853) lambda!160491))))

(assert (=> start!436780 e!2775110))

(declare-fun inv!65586 (ListLongMap!2499) Bool)

(assert (=> start!436780 (and (inv!65586 lm!1853) e!2775109)))

(assert (=> start!436780 true))

(assert (=> start!436780 e!2775113))

(assert (=> start!436780 tp_is_empty!26893))

(declare-fun b!4456600 () Bool)

(assert (=> b!4456600 (= e!2775110 e!2775112)))

(declare-fun res!1847520 () Bool)

(assert (=> b!4456600 (=> (not res!1847520) (not e!2775112))))

(assert (=> b!4456600 (= res!1847520 (contains!12560 lt!1647954 key!4412))))

(declare-fun extractMap!986 (List!50146) ListMap!3081)

(assert (=> b!4456600 (= lt!1647954 (extractMap!986 (toList!3843 lm!1853)))))

(declare-fun b!4456601 () Bool)

(declare-fun res!1847519 () Bool)

(assert (=> b!4456601 (=> (not res!1847519) (not e!2775110))))

(declare-fun noDuplicateKeys!918 (List!50145) Bool)

(assert (=> b!4456601 (= res!1847519 (noDuplicateKeys!918 l!12858))))

(assert (= (and start!436780 res!1847522) b!4456597))

(assert (= (and b!4456597 res!1847523) b!4456601))

(assert (= (and b!4456601 res!1847519) b!4456600))

(assert (= (and b!4456600 res!1847520) b!4456594))

(assert (= (and b!4456594 res!1847518) b!4456595))

(assert (= (and b!4456595 res!1847521) b!4456598))

(assert (= start!436780 b!4456599))

(assert (= (and start!436780 ((_ is Cons!50021) l!12858)) b!4456596))

(declare-fun m!5158521 () Bool)

(assert (=> b!4456601 m!5158521))

(declare-fun m!5158523 () Bool)

(assert (=> start!436780 m!5158523))

(declare-fun m!5158525 () Bool)

(assert (=> start!436780 m!5158525))

(declare-fun m!5158527 () Bool)

(assert (=> b!4456595 m!5158527))

(declare-fun m!5158529 () Bool)

(assert (=> b!4456595 m!5158529))

(declare-fun m!5158531 () Bool)

(assert (=> b!4456595 m!5158531))

(assert (=> b!4456595 m!5158523))

(declare-fun m!5158533 () Bool)

(assert (=> b!4456595 m!5158533))

(declare-fun m!5158535 () Bool)

(assert (=> b!4456595 m!5158535))

(declare-fun m!5158537 () Bool)

(assert (=> b!4456595 m!5158537))

(declare-fun m!5158539 () Bool)

(assert (=> b!4456595 m!5158539))

(assert (=> b!4456595 m!5158529))

(declare-fun m!5158541 () Bool)

(assert (=> b!4456595 m!5158541))

(assert (=> b!4456595 m!5158537))

(assert (=> b!4456595 m!5158539))

(declare-fun m!5158543 () Bool)

(assert (=> b!4456600 m!5158543))

(declare-fun m!5158545 () Bool)

(assert (=> b!4456600 m!5158545))

(declare-fun m!5158547 () Bool)

(assert (=> b!4456597 m!5158547))

(assert (=> b!4456598 m!5158537))

(assert (=> b!4456598 m!5158537))

(assert (=> b!4456598 m!5158539))

(assert (=> b!4456598 m!5158529))

(assert (=> b!4456598 m!5158539))

(assert (=> b!4456598 m!5158529))

(assert (=> b!4456598 m!5158541))

(check-sat (not b!4456595) (not b!4456598) (not b!4456599) (not b!4456596) (not b!4456601) tp_is_empty!26895 (not start!436780) (not b!4456597) (not b!4456600) tp_is_empty!26893)
(check-sat)
