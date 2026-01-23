; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436956 () Bool)

(assert start!436956)

(declare-fun tp!1335223 () Bool)

(declare-fun e!2775773 () Bool)

(declare-fun b!4457636 () Bool)

(declare-fun tp_is_empty!26959 () Bool)

(declare-fun tp_is_empty!26957 () Bool)

(assert (=> b!4457636 (= e!2775773 (and tp_is_empty!26957 tp_is_empty!26959 tp!1335223))))

(declare-fun b!4457637 () Bool)

(declare-fun res!1848102 () Bool)

(declare-fun e!2775772 () Bool)

(assert (=> b!4457637 (=> (not res!1848102) (not e!2775772))))

(declare-datatypes ((K!11440 0))(
  ( (K!11441 (val!17423 Int)) )
))
(declare-datatypes ((V!11686 0))(
  ( (V!11687 (val!17424 Int)) )
))
(declare-datatypes ((tuple2!50166 0))(
  ( (tuple2!50167 (_1!28377 K!11440) (_2!28377 V!11686)) )
))
(declare-datatypes ((List!50183 0))(
  ( (Nil!50059) (Cons!50059 (h!55804 tuple2!50166) (t!357133 List!50183)) )
))
(declare-datatypes ((tuple2!50168 0))(
  ( (tuple2!50169 (_1!28378 (_ BitVec 64)) (_2!28378 List!50183)) )
))
(declare-datatypes ((List!50184 0))(
  ( (Nil!50060) (Cons!50060 (h!55805 tuple2!50168) (t!357134 List!50184)) )
))
(declare-datatypes ((ListLongMap!2531 0))(
  ( (ListLongMap!2532 (toList!3875 List!50184)) )
))
(declare-fun lm!1853 () ListLongMap!2531)

(declare-datatypes ((Hashable!5341 0))(
  ( (HashableExt!5340 (__x!31044 Int)) )
))
(declare-fun hashF!1313 () Hashable!5341)

(declare-fun allKeysSameHashInMap!1053 (ListLongMap!2531 Hashable!5341) Bool)

(assert (=> b!4457637 (= res!1848102 (allKeysSameHashInMap!1053 lm!1853 hashF!1313))))

(declare-fun b!4457638 () Bool)

(declare-fun e!2775771 () Bool)

(assert (=> b!4457638 (= e!2775772 e!2775771)))

(declare-fun res!1848101 () Bool)

(assert (=> b!4457638 (=> (not res!1848101) (not e!2775771))))

(declare-datatypes ((ListMap!3113 0))(
  ( (ListMap!3114 (toList!3876 List!50183)) )
))
(declare-fun lt!1649254 () ListMap!3113)

(declare-fun key!4412 () K!11440)

(declare-fun contains!12588 (ListMap!3113 K!11440) Bool)

(assert (=> b!4457638 (= res!1848101 (contains!12588 lt!1649254 key!4412))))

(declare-fun extractMap!1002 (List!50184) ListMap!3113)

(assert (=> b!4457638 (= lt!1649254 (extractMap!1002 (toList!3875 lm!1853)))))

(declare-fun b!4457639 () Bool)

(declare-fun res!1848105 () Bool)

(assert (=> b!4457639 (=> (not res!1848105) (not e!2775772))))

(declare-fun l!12858 () List!50183)

(declare-fun noDuplicateKeys!934 (List!50183) Bool)

(assert (=> b!4457639 (= res!1848105 (noDuplicateKeys!934 l!12858))))

(declare-fun b!4457640 () Bool)

(declare-fun e!2775770 () Bool)

(declare-fun tp!1335222 () Bool)

(assert (=> b!4457640 (= e!2775770 tp!1335222)))

(declare-fun res!1848100 () Bool)

(assert (=> start!436956 (=> (not res!1848100) (not e!2775772))))

(declare-fun lambda!160817 () Int)

(declare-fun forall!9865 (List!50184 Int) Bool)

(assert (=> start!436956 (= res!1848100 (forall!9865 (toList!3875 lm!1853) lambda!160817))))

(assert (=> start!436956 e!2775772))

(declare-fun inv!65626 (ListLongMap!2531) Bool)

(assert (=> start!436956 (and (inv!65626 lm!1853) e!2775770)))

(assert (=> start!436956 true))

(assert (=> start!436956 e!2775773))

(assert (=> start!436956 tp_is_empty!26957))

(declare-fun b!4457641 () Bool)

(declare-fun res!1848103 () Bool)

(assert (=> b!4457641 (=> (not res!1848103) (not e!2775771))))

(get-info :version)

(assert (=> b!4457641 (= res!1848103 ((_ is Cons!50059) l!12858))))

(declare-fun b!4457642 () Bool)

(declare-fun e!2775769 () Bool)

(assert (=> b!4457642 (= e!2775771 (not e!2775769))))

(declare-fun res!1848104 () Bool)

(assert (=> b!4457642 (=> res!1848104 e!2775769)))

(declare-fun lt!1649253 () ListMap!3113)

(assert (=> b!4457642 (= res!1848104 (not (contains!12588 lt!1649253 key!4412)))))

(declare-fun lt!1649245 () ListMap!3113)

(assert (=> b!4457642 (contains!12588 lt!1649245 key!4412)))

(declare-datatypes ((Unit!86352 0))(
  ( (Unit!86353) )
))
(declare-fun lt!1649249 () Unit!86352)

(declare-fun lt!1649252 () ListMap!3113)

(declare-fun addStillContains!16 (ListMap!3113 K!11440 V!11686 K!11440) Unit!86352)

(assert (=> b!4457642 (= lt!1649249 (addStillContains!16 lt!1649252 (_1!28377 (h!55804 l!12858)) (_2!28377 (h!55804 l!12858)) key!4412))))

(declare-fun lt!1649248 () ListMap!3113)

(declare-fun eq!493 (ListMap!3113 ListMap!3113) Bool)

(assert (=> b!4457642 (eq!493 lt!1649248 lt!1649253)))

(declare-fun +!1309 (ListMap!3113 tuple2!50166) ListMap!3113)

(assert (=> b!4457642 (= lt!1649253 (+!1309 lt!1649252 (h!55804 l!12858)))))

(declare-fun addToMapMapFromBucket!528 (List!50183 ListMap!3113) ListMap!3113)

(assert (=> b!4457642 (= lt!1649248 (addToMapMapFromBucket!528 (t!357133 l!12858) (+!1309 lt!1649254 (h!55804 l!12858))))))

(declare-fun lt!1649246 () ListMap!3113)

(assert (=> b!4457642 (eq!493 lt!1649246 lt!1649245)))

(assert (=> b!4457642 (= lt!1649245 (+!1309 lt!1649252 (h!55804 l!12858)))))

(assert (=> b!4457642 (= lt!1649246 (addToMapMapFromBucket!528 (t!357133 l!12858) (+!1309 lt!1649254 (h!55804 l!12858))))))

(declare-fun lt!1649247 () Unit!86352)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!240 (ListMap!3113 K!11440 V!11686 List!50183) Unit!86352)

(assert (=> b!4457642 (= lt!1649247 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!240 lt!1649254 (_1!28377 (h!55804 l!12858)) (_2!28377 (h!55804 l!12858)) (t!357133 l!12858)))))

(assert (=> b!4457642 (contains!12588 lt!1649252 key!4412)))

(assert (=> b!4457642 (= lt!1649252 (addToMapMapFromBucket!528 (t!357133 l!12858) lt!1649254))))

(declare-fun lt!1649250 () Unit!86352)

(declare-fun lemmaAddToMapMaintainsContains!36 (ListLongMap!2531 K!11440 List!50183 Hashable!5341) Unit!86352)

(assert (=> b!4457642 (= lt!1649250 (lemmaAddToMapMaintainsContains!36 lm!1853 key!4412 (t!357133 l!12858) hashF!1313))))

(declare-fun b!4457643 () Bool)

(assert (=> b!4457643 (= e!2775769 true)))

(assert (=> b!4457643 (contains!12588 lt!1649248 key!4412)))

(declare-fun lt!1649251 () Unit!86352)

(declare-fun lemmaEquivalentThenSameContains!126 (ListMap!3113 ListMap!3113 K!11440) Unit!86352)

(assert (=> b!4457643 (= lt!1649251 (lemmaEquivalentThenSameContains!126 lt!1649248 lt!1649253 key!4412))))

(assert (= (and start!436956 res!1848100) b!4457637))

(assert (= (and b!4457637 res!1848102) b!4457639))

(assert (= (and b!4457639 res!1848105) b!4457638))

(assert (= (and b!4457638 res!1848101) b!4457641))

(assert (= (and b!4457641 res!1848103) b!4457642))

(assert (= (and b!4457642 (not res!1848104)) b!4457643))

(assert (= start!436956 b!4457640))

(assert (= (and start!436956 ((_ is Cons!50059) l!12858)) b!4457636))

(declare-fun m!5160337 () Bool)

(assert (=> start!436956 m!5160337))

(declare-fun m!5160339 () Bool)

(assert (=> start!436956 m!5160339))

(declare-fun m!5160341 () Bool)

(assert (=> b!4457637 m!5160341))

(declare-fun m!5160343 () Bool)

(assert (=> b!4457639 m!5160343))

(declare-fun m!5160345 () Bool)

(assert (=> b!4457643 m!5160345))

(declare-fun m!5160347 () Bool)

(assert (=> b!4457643 m!5160347))

(declare-fun m!5160349 () Bool)

(assert (=> b!4457638 m!5160349))

(declare-fun m!5160351 () Bool)

(assert (=> b!4457638 m!5160351))

(declare-fun m!5160353 () Bool)

(assert (=> b!4457642 m!5160353))

(declare-fun m!5160355 () Bool)

(assert (=> b!4457642 m!5160355))

(declare-fun m!5160357 () Bool)

(assert (=> b!4457642 m!5160357))

(declare-fun m!5160359 () Bool)

(assert (=> b!4457642 m!5160359))

(declare-fun m!5160361 () Bool)

(assert (=> b!4457642 m!5160361))

(declare-fun m!5160363 () Bool)

(assert (=> b!4457642 m!5160363))

(assert (=> b!4457642 m!5160359))

(declare-fun m!5160365 () Bool)

(assert (=> b!4457642 m!5160365))

(declare-fun m!5160367 () Bool)

(assert (=> b!4457642 m!5160367))

(declare-fun m!5160369 () Bool)

(assert (=> b!4457642 m!5160369))

(declare-fun m!5160371 () Bool)

(assert (=> b!4457642 m!5160371))

(declare-fun m!5160373 () Bool)

(assert (=> b!4457642 m!5160373))

(declare-fun m!5160375 () Bool)

(assert (=> b!4457642 m!5160375))

(check-sat (not b!4457642) (not b!4457638) (not b!4457637) (not b!4457639) (not b!4457643) (not b!4457640) tp_is_empty!26957 (not start!436956) tp_is_empty!26959 (not b!4457636))
(check-sat)
