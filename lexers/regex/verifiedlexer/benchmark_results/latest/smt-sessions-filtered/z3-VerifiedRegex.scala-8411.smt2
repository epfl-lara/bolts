; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436972 () Bool)

(assert start!436972)

(declare-fun b!4457799 () Bool)

(declare-fun e!2775863 () Bool)

(declare-fun e!2775860 () Bool)

(assert (=> b!4457799 (= e!2775863 e!2775860)))

(declare-fun res!1848219 () Bool)

(assert (=> b!4457799 (=> (not res!1848219) (not e!2775860))))

(declare-datatypes ((K!11460 0))(
  ( (K!11461 (val!17439 Int)) )
))
(declare-datatypes ((V!11706 0))(
  ( (V!11707 (val!17440 Int)) )
))
(declare-datatypes ((tuple2!50198 0))(
  ( (tuple2!50199 (_1!28393 K!11460) (_2!28393 V!11706)) )
))
(declare-datatypes ((List!50199 0))(
  ( (Nil!50075) (Cons!50075 (h!55820 tuple2!50198) (t!357149 List!50199)) )
))
(declare-datatypes ((ListMap!3129 0))(
  ( (ListMap!3130 (toList!3891 List!50199)) )
))
(declare-fun lt!1649348 () ListMap!3129)

(declare-fun key!4412 () K!11460)

(declare-fun contains!12596 (ListMap!3129 K!11460) Bool)

(assert (=> b!4457799 (= res!1848219 (contains!12596 lt!1649348 key!4412))))

(declare-datatypes ((tuple2!50200 0))(
  ( (tuple2!50201 (_1!28394 (_ BitVec 64)) (_2!28394 List!50199)) )
))
(declare-datatypes ((List!50200 0))(
  ( (Nil!50076) (Cons!50076 (h!55821 tuple2!50200) (t!357150 List!50200)) )
))
(declare-datatypes ((ListLongMap!2547 0))(
  ( (ListLongMap!2548 (toList!3892 List!50200)) )
))
(declare-fun lm!1853 () ListLongMap!2547)

(declare-fun extractMap!1010 (List!50200) ListMap!3129)

(assert (=> b!4457799 (= lt!1649348 (extractMap!1010 (toList!3892 lm!1853)))))

(declare-fun b!4457800 () Bool)

(declare-fun res!1848216 () Bool)

(assert (=> b!4457800 (=> (not res!1848216) (not e!2775863))))

(declare-fun l!12858 () List!50199)

(declare-fun noDuplicateKeys!942 (List!50199) Bool)

(assert (=> b!4457800 (= res!1848216 (noDuplicateKeys!942 l!12858))))

(declare-fun res!1848215 () Bool)

(assert (=> start!436972 (=> (not res!1848215) (not e!2775863))))

(declare-fun lambda!160845 () Int)

(declare-fun forall!9873 (List!50200 Int) Bool)

(assert (=> start!436972 (= res!1848215 (forall!9873 (toList!3892 lm!1853) lambda!160845))))

(assert (=> start!436972 e!2775863))

(declare-fun e!2775861 () Bool)

(declare-fun inv!65646 (ListLongMap!2547) Bool)

(assert (=> start!436972 (and (inv!65646 lm!1853) e!2775861)))

(assert (=> start!436972 true))

(declare-fun e!2775862 () Bool)

(assert (=> start!436972 e!2775862))

(declare-fun tp_is_empty!26989 () Bool)

(assert (=> start!436972 tp_is_empty!26989))

(declare-fun b!4457801 () Bool)

(declare-fun tp!1335271 () Bool)

(assert (=> b!4457801 (= e!2775861 tp!1335271)))

(declare-fun b!4457802 () Bool)

(declare-fun res!1848218 () Bool)

(assert (=> b!4457802 (=> (not res!1848218) (not e!2775863))))

(declare-datatypes ((Hashable!5349 0))(
  ( (HashableExt!5348 (__x!31052 Int)) )
))
(declare-fun hashF!1313 () Hashable!5349)

(declare-fun allKeysSameHashInMap!1061 (ListLongMap!2547 Hashable!5349) Bool)

(assert (=> b!4457802 (= res!1848218 (allKeysSameHashInMap!1061 lm!1853 hashF!1313))))

(declare-fun b!4457803 () Bool)

(declare-fun res!1848217 () Bool)

(assert (=> b!4457803 (=> (not res!1848217) (not e!2775860))))

(get-info :version)

(assert (=> b!4457803 (= res!1848217 ((_ is Cons!50075) l!12858))))

(declare-fun tp_is_empty!26991 () Bool)

(declare-fun b!4457804 () Bool)

(declare-fun tp!1335270 () Bool)

(assert (=> b!4457804 (= e!2775862 (and tp_is_empty!26989 tp_is_empty!26991 tp!1335270))))

(declare-fun b!4457805 () Bool)

(declare-fun lt!1649355 () ListMap!3129)

(assert (=> b!4457805 (= e!2775860 (not (contains!12596 lt!1649355 key!4412)))))

(declare-fun lt!1649354 () ListMap!3129)

(assert (=> b!4457805 (contains!12596 lt!1649354 key!4412)))

(declare-datatypes ((Unit!86360 0))(
  ( (Unit!86361) )
))
(declare-fun lt!1649350 () Unit!86360)

(declare-fun lt!1649356 () ListMap!3129)

(declare-fun addStillContains!20 (ListMap!3129 K!11460 V!11706 K!11460) Unit!86360)

(assert (=> b!4457805 (= lt!1649350 (addStillContains!20 lt!1649356 (_1!28393 (h!55820 l!12858)) (_2!28393 (h!55820 l!12858)) key!4412))))

(declare-fun lt!1649351 () ListMap!3129)

(declare-fun eq!497 (ListMap!3129 ListMap!3129) Bool)

(assert (=> b!4457805 (eq!497 lt!1649351 lt!1649355)))

(declare-fun +!1313 (ListMap!3129 tuple2!50198) ListMap!3129)

(assert (=> b!4457805 (= lt!1649355 (+!1313 lt!1649356 (h!55820 l!12858)))))

(declare-fun addToMapMapFromBucket!532 (List!50199 ListMap!3129) ListMap!3129)

(assert (=> b!4457805 (= lt!1649351 (addToMapMapFromBucket!532 (t!357149 l!12858) (+!1313 lt!1649348 (h!55820 l!12858))))))

(declare-fun lt!1649352 () ListMap!3129)

(assert (=> b!4457805 (eq!497 lt!1649352 lt!1649354)))

(assert (=> b!4457805 (= lt!1649354 (+!1313 lt!1649356 (h!55820 l!12858)))))

(assert (=> b!4457805 (= lt!1649352 (addToMapMapFromBucket!532 (t!357149 l!12858) (+!1313 lt!1649348 (h!55820 l!12858))))))

(declare-fun lt!1649349 () Unit!86360)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!244 (ListMap!3129 K!11460 V!11706 List!50199) Unit!86360)

(assert (=> b!4457805 (= lt!1649349 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!244 lt!1649348 (_1!28393 (h!55820 l!12858)) (_2!28393 (h!55820 l!12858)) (t!357149 l!12858)))))

(assert (=> b!4457805 (contains!12596 lt!1649356 key!4412)))

(assert (=> b!4457805 (= lt!1649356 (addToMapMapFromBucket!532 (t!357149 l!12858) lt!1649348))))

(declare-fun lt!1649353 () Unit!86360)

(declare-fun lemmaAddToMapMaintainsContains!40 (ListLongMap!2547 K!11460 List!50199 Hashable!5349) Unit!86360)

(assert (=> b!4457805 (= lt!1649353 (lemmaAddToMapMaintainsContains!40 lm!1853 key!4412 (t!357149 l!12858) hashF!1313))))

(assert (= (and start!436972 res!1848215) b!4457802))

(assert (= (and b!4457802 res!1848218) b!4457800))

(assert (= (and b!4457800 res!1848216) b!4457799))

(assert (= (and b!4457799 res!1848219) b!4457803))

(assert (= (and b!4457803 res!1848217) b!4457805))

(assert (= start!436972 b!4457801))

(assert (= (and start!436972 ((_ is Cons!50075) l!12858)) b!4457804))

(declare-fun m!5160529 () Bool)

(assert (=> b!4457800 m!5160529))

(declare-fun m!5160531 () Bool)

(assert (=> b!4457799 m!5160531))

(declare-fun m!5160533 () Bool)

(assert (=> b!4457799 m!5160533))

(declare-fun m!5160535 () Bool)

(assert (=> b!4457802 m!5160535))

(declare-fun m!5160537 () Bool)

(assert (=> b!4457805 m!5160537))

(declare-fun m!5160539 () Bool)

(assert (=> b!4457805 m!5160539))

(declare-fun m!5160541 () Bool)

(assert (=> b!4457805 m!5160541))

(declare-fun m!5160543 () Bool)

(assert (=> b!4457805 m!5160543))

(declare-fun m!5160545 () Bool)

(assert (=> b!4457805 m!5160545))

(declare-fun m!5160547 () Bool)

(assert (=> b!4457805 m!5160547))

(declare-fun m!5160549 () Bool)

(assert (=> b!4457805 m!5160549))

(declare-fun m!5160551 () Bool)

(assert (=> b!4457805 m!5160551))

(declare-fun m!5160553 () Bool)

(assert (=> b!4457805 m!5160553))

(assert (=> b!4457805 m!5160545))

(declare-fun m!5160555 () Bool)

(assert (=> b!4457805 m!5160555))

(declare-fun m!5160557 () Bool)

(assert (=> b!4457805 m!5160557))

(declare-fun m!5160559 () Bool)

(assert (=> b!4457805 m!5160559))

(declare-fun m!5160561 () Bool)

(assert (=> start!436972 m!5160561))

(declare-fun m!5160563 () Bool)

(assert (=> start!436972 m!5160563))

(check-sat (not b!4457804) (not b!4457799) tp_is_empty!26991 (not b!4457802) (not b!4457801) (not b!4457800) tp_is_empty!26989 (not start!436972) (not b!4457805))
(check-sat)
