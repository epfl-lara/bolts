; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!423248 () Bool)

(assert start!423248)

(declare-fun b!4365173 () Bool)

(declare-fun res!1795540 () Bool)

(declare-fun e!2716714 () Bool)

(assert (=> b!4365173 (=> (not res!1795540) (not e!2716714))))

(declare-datatypes ((K!10405 0))(
  ( (K!10406 (val!16595 Int)) )
))
(declare-datatypes ((V!10651 0))(
  ( (V!10652 (val!16596 Int)) )
))
(declare-datatypes ((tuple2!48510 0))(
  ( (tuple2!48511 (_1!27549 K!10405) (_2!27549 V!10651)) )
))
(declare-datatypes ((List!49167 0))(
  ( (Nil!49043) (Cons!49043 (h!54614 tuple2!48510) (t!356087 List!49167)) )
))
(declare-fun newBucket!200 () List!49167)

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4927 0))(
  ( (HashableExt!4926 (__x!30630 Int)) )
))
(declare-fun hashF!1247 () Hashable!4927)

(declare-fun allKeysSameHash!493 (List!49167 (_ BitVec 64) Hashable!4927) Bool)

(assert (=> b!4365173 (= res!1795540 (allKeysSameHash!493 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4365174 () Bool)

(declare-fun e!2716718 () Bool)

(declare-fun e!2716715 () Bool)

(assert (=> b!4365174 (= e!2716718 e!2716715)))

(declare-fun res!1795542 () Bool)

(assert (=> b!4365174 (=> res!1795542 e!2716715)))

(declare-datatypes ((tuple2!48512 0))(
  ( (tuple2!48513 (_1!27550 (_ BitVec 64)) (_2!27550 List!49167)) )
))
(declare-datatypes ((List!49168 0))(
  ( (Nil!49044) (Cons!49044 (h!54615 tuple2!48512) (t!356088 List!49168)) )
))
(declare-datatypes ((ListLongMap!1703 0))(
  ( (ListLongMap!1704 (toList!3053 List!49168)) )
))
(declare-fun lm!1707 () ListLongMap!1703)

(get-info :version)

(assert (=> b!4365174 (= res!1795542 (or (and ((_ is Cons!49044) (toList!3053 lm!1707)) (= (_1!27550 (h!54615 (toList!3053 lm!1707))) hash!377)) (not ((_ is Cons!49044) (toList!3053 lm!1707))) (= (_1!27550 (h!54615 (toList!3053 lm!1707))) hash!377)))))

(declare-fun e!2716713 () Bool)

(assert (=> b!4365174 e!2716713))

(declare-fun res!1795545 () Bool)

(assert (=> b!4365174 (=> (not res!1795545) (not e!2716713))))

(declare-fun lt!1578030 () ListLongMap!1703)

(declare-fun lambda!142541 () Int)

(declare-fun forall!9192 (List!49168 Int) Bool)

(assert (=> b!4365174 (= res!1795545 (forall!9192 (toList!3053 lt!1578030) lambda!142541))))

(declare-fun lt!1578025 () tuple2!48512)

(declare-fun +!719 (ListLongMap!1703 tuple2!48512) ListLongMap!1703)

(assert (=> b!4365174 (= lt!1578030 (+!719 lm!1707 lt!1578025))))

(assert (=> b!4365174 (= lt!1578025 (tuple2!48513 hash!377 newBucket!200))))

(declare-datatypes ((Unit!72999 0))(
  ( (Unit!73000) )
))
(declare-fun lt!1578034 () Unit!72999)

(declare-fun addValidProp!189 (ListLongMap!1703 Int (_ BitVec 64) List!49167) Unit!72999)

(assert (=> b!4365174 (= lt!1578034 (addValidProp!189 lm!1707 lambda!142541 hash!377 newBucket!200))))

(assert (=> b!4365174 (forall!9192 (toList!3053 lm!1707) lambda!142541)))

(declare-fun b!4365175 () Bool)

(declare-fun e!2716711 () Bool)

(declare-fun tp!1330611 () Bool)

(assert (=> b!4365175 (= e!2716711 tp!1330611)))

(declare-fun tp_is_empty!25377 () Bool)

(declare-fun e!2716716 () Bool)

(declare-fun tp_is_empty!25379 () Bool)

(declare-fun b!4365176 () Bool)

(declare-fun tp!1330612 () Bool)

(assert (=> b!4365176 (= e!2716716 (and tp_is_empty!25377 tp_is_empty!25379 tp!1330612))))

(declare-fun b!4365177 () Bool)

(declare-fun res!1795534 () Bool)

(declare-fun e!2716717 () Bool)

(assert (=> b!4365177 (=> (not res!1795534) (not e!2716717))))

(declare-fun contains!11313 (ListLongMap!1703 (_ BitVec 64)) Bool)

(assert (=> b!4365177 (= res!1795534 (contains!11313 lm!1707 hash!377))))

(declare-fun b!4365178 () Bool)

(assert (=> b!4365178 (= e!2716717 (not e!2716718))))

(declare-fun res!1795541 () Bool)

(assert (=> b!4365178 (=> res!1795541 e!2716718)))

(declare-fun lt!1578019 () tuple2!48510)

(declare-fun lt!1578026 () List!49167)

(declare-fun key!3918 () K!10405)

(declare-fun removePairForKey!505 (List!49167 K!10405) List!49167)

(assert (=> b!4365178 (= res!1795541 (not (= newBucket!200 (Cons!49043 lt!1578019 (removePairForKey!505 lt!1578026 key!3918)))))))

(declare-fun newValue!99 () V!10651)

(assert (=> b!4365178 (= lt!1578019 (tuple2!48511 key!3918 newValue!99))))

(declare-fun lt!1578020 () Unit!72999)

(declare-fun lt!1578027 () tuple2!48512)

(declare-fun forallContained!1833 (List!49168 Int tuple2!48512) Unit!72999)

(assert (=> b!4365178 (= lt!1578020 (forallContained!1833 (toList!3053 lm!1707) lambda!142541 lt!1578027))))

(declare-fun contains!11314 (List!49168 tuple2!48512) Bool)

(assert (=> b!4365178 (contains!11314 (toList!3053 lm!1707) lt!1578027)))

(assert (=> b!4365178 (= lt!1578027 (tuple2!48513 hash!377 lt!1578026))))

(declare-fun lt!1578021 () Unit!72999)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!382 (List!49168 (_ BitVec 64) List!49167) Unit!72999)

(assert (=> b!4365178 (= lt!1578021 (lemmaGetValueByKeyImpliesContainsTuple!382 (toList!3053 lm!1707) hash!377 lt!1578026))))

(declare-fun apply!11387 (ListLongMap!1703 (_ BitVec 64)) List!49167)

(assert (=> b!4365178 (= lt!1578026 (apply!11387 lm!1707 hash!377))))

(declare-fun b!4365179 () Bool)

(declare-fun e!2716712 () Bool)

(declare-fun containsKey!768 (List!49167 K!10405) Bool)

(assert (=> b!4365179 (= e!2716712 (not (containsKey!768 (_2!27550 (h!54615 (toList!3053 lm!1707))) key!3918)))))

(declare-fun b!4365180 () Bool)

(declare-fun res!1795535 () Bool)

(assert (=> b!4365180 (=> (not res!1795535) (not e!2716714))))

(declare-fun allKeysSameHashInMap!639 (ListLongMap!1703 Hashable!4927) Bool)

(assert (=> b!4365180 (= res!1795535 (allKeysSameHashInMap!639 lm!1707 hashF!1247))))

(declare-fun b!4365181 () Bool)

(assert (=> b!4365181 (= e!2716713 (forall!9192 (toList!3053 lt!1578030) lambda!142541))))

(declare-fun b!4365182 () Bool)

(assert (=> b!4365182 (= e!2716714 e!2716717)))

(declare-fun res!1795538 () Bool)

(assert (=> b!4365182 (=> (not res!1795538) (not e!2716717))))

(declare-datatypes ((ListMap!2297 0))(
  ( (ListMap!2298 (toList!3054 List!49167)) )
))
(declare-fun lt!1578032 () ListMap!2297)

(declare-fun contains!11315 (ListMap!2297 K!10405) Bool)

(assert (=> b!4365182 (= res!1795538 (contains!11315 lt!1578032 key!3918))))

(declare-fun extractMap!594 (List!49168) ListMap!2297)

(assert (=> b!4365182 (= lt!1578032 (extractMap!594 (toList!3053 lm!1707)))))

(declare-fun b!4365183 () Bool)

(assert (=> b!4365183 (= e!2716715 true)))

(declare-fun lt!1578031 () ListMap!2297)

(declare-fun lt!1578029 () ListMap!2297)

(declare-fun eq!297 (ListMap!2297 ListMap!2297) Bool)

(declare-fun addToMapMapFromBucket!223 (List!49167 ListMap!2297) ListMap!2297)

(declare-fun +!720 (ListMap!2297 tuple2!48510) ListMap!2297)

(assert (=> b!4365183 (eq!297 (addToMapMapFromBucket!223 (_2!27550 (h!54615 (toList!3053 lm!1707))) lt!1578031) (+!720 lt!1578029 lt!1578019))))

(declare-fun lt!1578018 () Unit!72999)

(declare-fun lt!1578017 () ListMap!2297)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!106 (ListMap!2297 K!10405 V!10651 List!49167) Unit!72999)

(assert (=> b!4365183 (= lt!1578018 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!106 lt!1578017 key!3918 newValue!99 (_2!27550 (h!54615 (toList!3053 lm!1707)))))))

(assert (=> b!4365183 (= lt!1578032 lt!1578029)))

(assert (=> b!4365183 (= lt!1578029 (addToMapMapFromBucket!223 (_2!27550 (h!54615 (toList!3053 lm!1707))) lt!1578017))))

(declare-fun e!2716710 () Bool)

(assert (=> b!4365183 e!2716710))

(declare-fun res!1795544 () Bool)

(assert (=> b!4365183 (=> (not res!1795544) (not e!2716710))))

(declare-fun lt!1578016 () ListMap!2297)

(assert (=> b!4365183 (= res!1795544 (eq!297 lt!1578016 lt!1578031))))

(assert (=> b!4365183 (= lt!1578031 (+!720 lt!1578017 lt!1578019))))

(declare-fun lt!1578033 () ListLongMap!1703)

(assert (=> b!4365183 (= lt!1578016 (extractMap!594 (toList!3053 (+!719 lt!1578033 lt!1578025))))))

(declare-fun lt!1578024 () Unit!72999)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!129 (ListLongMap!1703 (_ BitVec 64) List!49167 K!10405 V!10651 Hashable!4927) Unit!72999)

(assert (=> b!4365183 (= lt!1578024 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!129 lt!1578033 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> b!4365183 (contains!11315 lt!1578017 key!3918)))

(assert (=> b!4365183 (= lt!1578017 (extractMap!594 (toList!3053 lt!1578033)))))

(declare-fun tail!7052 (ListLongMap!1703) ListLongMap!1703)

(assert (=> b!4365183 (= lt!1578033 (tail!7052 lm!1707))))

(declare-fun lt!1578022 () ListMap!2297)

(assert (=> b!4365183 (contains!11315 lt!1578022 key!3918)))

(declare-fun lt!1578023 () Unit!72999)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!68 (List!49167 K!10405 V!10651 ListMap!2297) Unit!72999)

(assert (=> b!4365183 (= lt!1578023 (lemmaAddToMapContainsAndNotInListThenInAcc!68 (_2!27550 (h!54615 (toList!3053 lm!1707))) key!3918 newValue!99 lt!1578022))))

(assert (=> b!4365183 (= lt!1578022 (extractMap!594 (t!356088 (toList!3053 lm!1707))))))

(assert (=> b!4365183 e!2716712))

(declare-fun res!1795536 () Bool)

(assert (=> b!4365183 (=> (not res!1795536) (not e!2716712))))

(assert (=> b!4365183 (= res!1795536 (not (containsKey!768 (apply!11387 lm!1707 (_1!27550 (h!54615 (toList!3053 lm!1707)))) key!3918)))))

(declare-fun lt!1578028 () Unit!72999)

(declare-fun lemmaNotSameHashThenCannotContainKey!72 (ListLongMap!1703 K!10405 (_ BitVec 64) Hashable!4927) Unit!72999)

(assert (=> b!4365183 (= lt!1578028 (lemmaNotSameHashThenCannotContainKey!72 lm!1707 key!3918 (_1!27550 (h!54615 (toList!3053 lm!1707))) hashF!1247))))

(declare-fun b!4365184 () Bool)

(declare-fun res!1795539 () Bool)

(assert (=> b!4365184 (=> (not res!1795539) (not e!2716714))))

(declare-fun hash!1673 (Hashable!4927 K!10405) (_ BitVec 64))

(assert (=> b!4365184 (= res!1795539 (= (hash!1673 hashF!1247 key!3918) hash!377))))

(declare-fun res!1795537 () Bool)

(assert (=> start!423248 (=> (not res!1795537) (not e!2716714))))

(assert (=> start!423248 (= res!1795537 (forall!9192 (toList!3053 lm!1707) lambda!142541))))

(assert (=> start!423248 e!2716714))

(assert (=> start!423248 e!2716716))

(assert (=> start!423248 true))

(declare-fun inv!64591 (ListLongMap!1703) Bool)

(assert (=> start!423248 (and (inv!64591 lm!1707) e!2716711)))

(assert (=> start!423248 tp_is_empty!25377))

(assert (=> start!423248 tp_is_empty!25379))

(declare-fun b!4365185 () Bool)

(declare-fun res!1795543 () Bool)

(assert (=> b!4365185 (=> res!1795543 e!2716718)))

(declare-fun noDuplicateKeys!535 (List!49167) Bool)

(assert (=> b!4365185 (= res!1795543 (not (noDuplicateKeys!535 newBucket!200)))))

(declare-fun b!4365186 () Bool)

(declare-fun head!9102 (ListLongMap!1703) tuple2!48512)

(assert (=> b!4365186 (= e!2716710 (not (= (head!9102 lm!1707) lt!1578025)))))

(assert (= (and start!423248 res!1795537) b!4365180))

(assert (= (and b!4365180 res!1795535) b!4365184))

(assert (= (and b!4365184 res!1795539) b!4365173))

(assert (= (and b!4365173 res!1795540) b!4365182))

(assert (= (and b!4365182 res!1795538) b!4365177))

(assert (= (and b!4365177 res!1795534) b!4365178))

(assert (= (and b!4365178 (not res!1795541)) b!4365185))

(assert (= (and b!4365185 (not res!1795543)) b!4365174))

(assert (= (and b!4365174 res!1795545) b!4365181))

(assert (= (and b!4365174 (not res!1795542)) b!4365183))

(assert (= (and b!4365183 res!1795536) b!4365179))

(assert (= (and b!4365183 res!1795544) b!4365186))

(assert (= (and start!423248 ((_ is Cons!49043) newBucket!200)) b!4365176))

(assert (= start!423248 b!4365175))

(declare-fun m!4987463 () Bool)

(assert (=> b!4365173 m!4987463))

(declare-fun m!4987465 () Bool)

(assert (=> b!4365183 m!4987465))

(declare-fun m!4987467 () Bool)

(assert (=> b!4365183 m!4987467))

(declare-fun m!4987469 () Bool)

(assert (=> b!4365183 m!4987469))

(declare-fun m!4987471 () Bool)

(assert (=> b!4365183 m!4987471))

(declare-fun m!4987473 () Bool)

(assert (=> b!4365183 m!4987473))

(declare-fun m!4987475 () Bool)

(assert (=> b!4365183 m!4987475))

(declare-fun m!4987477 () Bool)

(assert (=> b!4365183 m!4987477))

(declare-fun m!4987479 () Bool)

(assert (=> b!4365183 m!4987479))

(declare-fun m!4987481 () Bool)

(assert (=> b!4365183 m!4987481))

(declare-fun m!4987483 () Bool)

(assert (=> b!4365183 m!4987483))

(declare-fun m!4987485 () Bool)

(assert (=> b!4365183 m!4987485))

(declare-fun m!4987487 () Bool)

(assert (=> b!4365183 m!4987487))

(declare-fun m!4987489 () Bool)

(assert (=> b!4365183 m!4987489))

(declare-fun m!4987491 () Bool)

(assert (=> b!4365183 m!4987491))

(assert (=> b!4365183 m!4987491))

(assert (=> b!4365183 m!4987483))

(declare-fun m!4987493 () Bool)

(assert (=> b!4365183 m!4987493))

(declare-fun m!4987495 () Bool)

(assert (=> b!4365183 m!4987495))

(assert (=> b!4365183 m!4987495))

(declare-fun m!4987497 () Bool)

(assert (=> b!4365183 m!4987497))

(declare-fun m!4987499 () Bool)

(assert (=> b!4365183 m!4987499))

(declare-fun m!4987501 () Bool)

(assert (=> b!4365183 m!4987501))

(declare-fun m!4987503 () Bool)

(assert (=> b!4365186 m!4987503))

(declare-fun m!4987505 () Bool)

(assert (=> b!4365178 m!4987505))

(declare-fun m!4987507 () Bool)

(assert (=> b!4365178 m!4987507))

(declare-fun m!4987509 () Bool)

(assert (=> b!4365178 m!4987509))

(declare-fun m!4987511 () Bool)

(assert (=> b!4365178 m!4987511))

(declare-fun m!4987513 () Bool)

(assert (=> b!4365178 m!4987513))

(declare-fun m!4987515 () Bool)

(assert (=> b!4365179 m!4987515))

(declare-fun m!4987517 () Bool)

(assert (=> b!4365174 m!4987517))

(declare-fun m!4987519 () Bool)

(assert (=> b!4365174 m!4987519))

(declare-fun m!4987521 () Bool)

(assert (=> b!4365174 m!4987521))

(declare-fun m!4987523 () Bool)

(assert (=> b!4365174 m!4987523))

(declare-fun m!4987525 () Bool)

(assert (=> b!4365180 m!4987525))

(declare-fun m!4987527 () Bool)

(assert (=> b!4365184 m!4987527))

(assert (=> start!423248 m!4987523))

(declare-fun m!4987529 () Bool)

(assert (=> start!423248 m!4987529))

(declare-fun m!4987531 () Bool)

(assert (=> b!4365182 m!4987531))

(declare-fun m!4987533 () Bool)

(assert (=> b!4365182 m!4987533))

(declare-fun m!4987535 () Bool)

(assert (=> b!4365185 m!4987535))

(declare-fun m!4987537 () Bool)

(assert (=> b!4365177 m!4987537))

(assert (=> b!4365181 m!4987517))

(check-sat (not b!4365180) tp_is_empty!25377 (not b!4365181) (not b!4365185) (not b!4365173) (not b!4365178) (not b!4365182) (not b!4365179) (not b!4365175) (not b!4365177) (not start!423248) (not b!4365183) tp_is_empty!25379 (not b!4365176) (not b!4365174) (not b!4365184) (not b!4365186))
(check-sat)
