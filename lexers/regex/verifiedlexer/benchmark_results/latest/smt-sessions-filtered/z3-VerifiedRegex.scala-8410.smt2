; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436968 () Bool)

(assert start!436968)

(declare-fun res!1848189 () Bool)

(declare-fun e!2775839 () Bool)

(assert (=> start!436968 (=> (not res!1848189) (not e!2775839))))

(declare-datatypes ((K!11455 0))(
  ( (K!11456 (val!17435 Int)) )
))
(declare-datatypes ((V!11701 0))(
  ( (V!11702 (val!17436 Int)) )
))
(declare-datatypes ((tuple2!50190 0))(
  ( (tuple2!50191 (_1!28389 K!11455) (_2!28389 V!11701)) )
))
(declare-datatypes ((List!50195 0))(
  ( (Nil!50071) (Cons!50071 (h!55816 tuple2!50190) (t!357145 List!50195)) )
))
(declare-datatypes ((tuple2!50192 0))(
  ( (tuple2!50193 (_1!28390 (_ BitVec 64)) (_2!28390 List!50195)) )
))
(declare-datatypes ((List!50196 0))(
  ( (Nil!50072) (Cons!50072 (h!55817 tuple2!50192) (t!357146 List!50196)) )
))
(declare-datatypes ((ListLongMap!2543 0))(
  ( (ListLongMap!2544 (toList!3887 List!50196)) )
))
(declare-fun lm!1853 () ListLongMap!2543)

(declare-fun lambda!160839 () Int)

(declare-fun forall!9871 (List!50196 Int) Bool)

(assert (=> start!436968 (= res!1848189 (forall!9871 (toList!3887 lm!1853) lambda!160839))))

(assert (=> start!436968 e!2775839))

(declare-fun e!2775836 () Bool)

(declare-fun inv!65641 (ListLongMap!2543) Bool)

(assert (=> start!436968 (and (inv!65641 lm!1853) e!2775836)))

(assert (=> start!436968 true))

(declare-fun e!2775837 () Bool)

(assert (=> start!436968 e!2775837))

(declare-fun tp_is_empty!26981 () Bool)

(assert (=> start!436968 tp_is_empty!26981))

(declare-fun b!4457756 () Bool)

(declare-fun tp!1335258 () Bool)

(assert (=> b!4457756 (= e!2775836 tp!1335258)))

(declare-fun b!4457757 () Bool)

(declare-fun e!2775835 () Bool)

(assert (=> b!4457757 (= e!2775839 e!2775835)))

(declare-fun res!1848184 () Bool)

(assert (=> b!4457757 (=> (not res!1848184) (not e!2775835))))

(declare-datatypes ((ListMap!3125 0))(
  ( (ListMap!3126 (toList!3888 List!50195)) )
))
(declare-fun lt!1649299 () ListMap!3125)

(declare-fun key!4412 () K!11455)

(declare-fun contains!12594 (ListMap!3125 K!11455) Bool)

(assert (=> b!4457757 (= res!1848184 (contains!12594 lt!1649299 key!4412))))

(declare-fun extractMap!1008 (List!50196) ListMap!3125)

(assert (=> b!4457757 (= lt!1649299 (extractMap!1008 (toList!3887 lm!1853)))))

(declare-fun b!4457758 () Bool)

(declare-fun res!1848187 () Bool)

(assert (=> b!4457758 (=> (not res!1848187) (not e!2775839))))

(declare-datatypes ((Hashable!5347 0))(
  ( (HashableExt!5346 (__x!31050 Int)) )
))
(declare-fun hashF!1313 () Hashable!5347)

(declare-fun allKeysSameHashInMap!1059 (ListLongMap!2543 Hashable!5347) Bool)

(assert (=> b!4457758 (= res!1848187 (allKeysSameHashInMap!1059 lm!1853 hashF!1313))))

(declare-fun b!4457759 () Bool)

(assert (=> b!4457759 (= e!2775835 (not true))))

(declare-fun lt!1649298 () ListMap!3125)

(assert (=> b!4457759 (contains!12594 lt!1649298 key!4412)))

(declare-fun l!12858 () List!50195)

(declare-fun lt!1649300 () ListMap!3125)

(declare-datatypes ((Unit!86356 0))(
  ( (Unit!86357) )
))
(declare-fun lt!1649296 () Unit!86356)

(declare-fun addStillContains!18 (ListMap!3125 K!11455 V!11701 K!11455) Unit!86356)

(assert (=> b!4457759 (= lt!1649296 (addStillContains!18 lt!1649300 (_1!28389 (h!55816 l!12858)) (_2!28389 (h!55816 l!12858)) key!4412))))

(declare-fun e!2775838 () Bool)

(assert (=> b!4457759 e!2775838))

(declare-fun res!1848188 () Bool)

(assert (=> b!4457759 (=> (not res!1848188) (not e!2775838))))

(declare-fun lt!1649302 () ListMap!3125)

(declare-fun eq!495 (ListMap!3125 ListMap!3125) Bool)

(assert (=> b!4457759 (= res!1848188 (eq!495 lt!1649302 lt!1649298))))

(declare-fun +!1311 (ListMap!3125 tuple2!50190) ListMap!3125)

(assert (=> b!4457759 (= lt!1649298 (+!1311 lt!1649300 (h!55816 l!12858)))))

(declare-fun addToMapMapFromBucket!530 (List!50195 ListMap!3125) ListMap!3125)

(assert (=> b!4457759 (= lt!1649302 (addToMapMapFromBucket!530 (t!357145 l!12858) (+!1311 lt!1649299 (h!55816 l!12858))))))

(declare-fun lt!1649301 () Unit!86356)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!242 (ListMap!3125 K!11455 V!11701 List!50195) Unit!86356)

(assert (=> b!4457759 (= lt!1649301 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!242 lt!1649299 (_1!28389 (h!55816 l!12858)) (_2!28389 (h!55816 l!12858)) (t!357145 l!12858)))))

(assert (=> b!4457759 (contains!12594 lt!1649300 key!4412)))

(assert (=> b!4457759 (= lt!1649300 (addToMapMapFromBucket!530 (t!357145 l!12858) lt!1649299))))

(declare-fun lt!1649297 () Unit!86356)

(declare-fun lemmaAddToMapMaintainsContains!38 (ListLongMap!2543 K!11455 List!50195 Hashable!5347) Unit!86356)

(assert (=> b!4457759 (= lt!1649297 (lemmaAddToMapMaintainsContains!38 lm!1853 key!4412 (t!357145 l!12858) hashF!1313))))

(declare-fun b!4457760 () Bool)

(declare-fun res!1848185 () Bool)

(assert (=> b!4457760 (=> (not res!1848185) (not e!2775839))))

(declare-fun noDuplicateKeys!940 (List!50195) Bool)

(assert (=> b!4457760 (= res!1848185 (noDuplicateKeys!940 l!12858))))

(declare-fun tp!1335259 () Bool)

(declare-fun b!4457761 () Bool)

(declare-fun tp_is_empty!26983 () Bool)

(assert (=> b!4457761 (= e!2775837 (and tp_is_empty!26981 tp_is_empty!26983 tp!1335259))))

(declare-fun b!4457762 () Bool)

(declare-fun res!1848186 () Bool)

(assert (=> b!4457762 (=> (not res!1848186) (not e!2775835))))

(get-info :version)

(assert (=> b!4457762 (= res!1848186 ((_ is Cons!50071) l!12858))))

(declare-fun b!4457763 () Bool)

(assert (=> b!4457763 (= e!2775838 (eq!495 (addToMapMapFromBucket!530 (t!357145 l!12858) (+!1311 lt!1649299 (h!55816 l!12858))) (+!1311 lt!1649300 (h!55816 l!12858))))))

(assert (= (and start!436968 res!1848189) b!4457758))

(assert (= (and b!4457758 res!1848187) b!4457760))

(assert (= (and b!4457760 res!1848185) b!4457757))

(assert (= (and b!4457757 res!1848184) b!4457762))

(assert (= (and b!4457762 res!1848186) b!4457759))

(assert (= (and b!4457759 res!1848188) b!4457763))

(assert (= start!436968 b!4457756))

(assert (= (and start!436968 ((_ is Cons!50071) l!12858)) b!4457761))

(declare-fun m!5160459 () Bool)

(assert (=> start!436968 m!5160459))

(declare-fun m!5160461 () Bool)

(assert (=> start!436968 m!5160461))

(declare-fun m!5160463 () Bool)

(assert (=> b!4457763 m!5160463))

(assert (=> b!4457763 m!5160463))

(declare-fun m!5160465 () Bool)

(assert (=> b!4457763 m!5160465))

(declare-fun m!5160467 () Bool)

(assert (=> b!4457763 m!5160467))

(assert (=> b!4457763 m!5160465))

(assert (=> b!4457763 m!5160467))

(declare-fun m!5160469 () Bool)

(assert (=> b!4457763 m!5160469))

(declare-fun m!5160471 () Bool)

(assert (=> b!4457758 m!5160471))

(declare-fun m!5160473 () Bool)

(assert (=> b!4457757 m!5160473))

(declare-fun m!5160475 () Bool)

(assert (=> b!4457757 m!5160475))

(declare-fun m!5160477 () Bool)

(assert (=> b!4457759 m!5160477))

(declare-fun m!5160479 () Bool)

(assert (=> b!4457759 m!5160479))

(declare-fun m!5160481 () Bool)

(assert (=> b!4457759 m!5160481))

(declare-fun m!5160483 () Bool)

(assert (=> b!4457759 m!5160483))

(declare-fun m!5160485 () Bool)

(assert (=> b!4457759 m!5160485))

(declare-fun m!5160487 () Bool)

(assert (=> b!4457759 m!5160487))

(declare-fun m!5160489 () Bool)

(assert (=> b!4457759 m!5160489))

(assert (=> b!4457759 m!5160463))

(assert (=> b!4457759 m!5160465))

(assert (=> b!4457759 m!5160463))

(assert (=> b!4457759 m!5160467))

(declare-fun m!5160491 () Bool)

(assert (=> b!4457760 m!5160491))

(check-sat (not b!4457763) (not b!4457757) (not b!4457761) (not b!4457760) (not b!4457758) (not b!4457756) (not b!4457759) (not start!436968) tp_is_empty!26983 tp_is_empty!26981)
(check-sat)
