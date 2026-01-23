; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485608 () Bool)

(assert start!485608)

(declare-fun res!2015631 () Bool)

(declare-fun e!2964834 () Bool)

(assert (=> start!485608 (=> (not res!2015631) (not e!2964834))))

(declare-datatypes ((K!14530 0))(
  ( (K!14531 (val!19895 Int)) )
))
(declare-datatypes ((V!14776 0))(
  ( (V!14777 (val!19896 Int)) )
))
(declare-datatypes ((tuple2!54864 0))(
  ( (tuple2!54865 (_1!30726 K!14530) (_2!30726 V!14776)) )
))
(declare-datatypes ((List!53216 0))(
  ( (Nil!53092) (Cons!53092 (h!59489 tuple2!54864) (t!360554 List!53216)) )
))
(declare-fun l!14304 () List!53216)

(declare-fun noDuplicateKeys!2152 (List!53216) Bool)

(assert (=> start!485608 (= res!2015631 (noDuplicateKeys!2152 l!14304))))

(assert (=> start!485608 e!2964834))

(declare-fun e!2964833 () Bool)

(assert (=> start!485608 e!2964833))

(declare-fun tp_is_empty!31901 () Bool)

(declare-fun tp_is_empty!31903 () Bool)

(assert (=> start!485608 (and tp_is_empty!31901 tp_is_empty!31903)))

(declare-datatypes ((ListMap!5549 0))(
  ( (ListMap!5550 (toList!6120 List!53216)) )
))
(declare-fun acc!1214 () ListMap!5549)

(declare-fun e!2964831 () Bool)

(declare-fun inv!68400 (ListMap!5549) Bool)

(assert (=> start!485608 (and (inv!68400 acc!1214) e!2964831)))

(declare-fun b!4752756 () Bool)

(declare-fun res!2015629 () Bool)

(declare-fun e!2964832 () Bool)

(assert (=> b!4752756 (=> (not res!2015629) (not e!2964832))))

(get-info :version)

(assert (=> b!4752756 (= res!2015629 (not ((_ is Nil!53092) l!14304)))))

(declare-fun b!4752757 () Bool)

(declare-fun lt!1917387 () ListMap!5549)

(declare-fun e!2964830 () Bool)

(declare-fun eq!1221 (ListMap!5549 ListMap!5549) Bool)

(declare-fun addToMapMapFromBucket!1576 (List!53216 ListMap!5549) ListMap!5549)

(assert (=> b!4752757 (= e!2964830 (eq!1221 lt!1917387 (addToMapMapFromBucket!1576 l!14304 acc!1214)))))

(declare-fun b!4752758 () Bool)

(declare-fun lt!1917380 () ListMap!5549)

(declare-fun lt!1917385 () ListMap!5549)

(assert (=> b!4752758 (= e!2964832 (not (eq!1221 lt!1917380 lt!1917385)))))

(declare-fun lt!1917375 () ListMap!5549)

(declare-fun lt!1917377 () ListMap!5549)

(assert (=> b!4752758 (eq!1221 lt!1917375 lt!1917377)))

(declare-datatypes ((Unit!136398 0))(
  ( (Unit!136399) )
))
(declare-fun lt!1917383 () Unit!136398)

(declare-fun t!14174 () tuple2!54864)

(declare-fun addCommutativeForDiffKeys!22 (ListMap!5549 K!14530 V!14776 K!14530 V!14776) Unit!136398)

(assert (=> b!4752758 (= lt!1917383 (addCommutativeForDiffKeys!22 acc!1214 (_1!30726 t!14174) (_2!30726 t!14174) (_1!30726 (h!59489 l!14304)) (_2!30726 (h!59489 l!14304))))))

(assert (=> b!4752758 (eq!1221 lt!1917377 lt!1917375)))

(declare-fun +!2386 (ListMap!5549 tuple2!54864) ListMap!5549)

(assert (=> b!4752758 (= lt!1917375 (+!2386 (+!2386 acc!1214 t!14174) (h!59489 l!14304)))))

(declare-fun lt!1917386 () ListMap!5549)

(assert (=> b!4752758 (= lt!1917377 (+!2386 lt!1917386 t!14174))))

(declare-fun lt!1917382 () Unit!136398)

(assert (=> b!4752758 (= lt!1917382 (addCommutativeForDiffKeys!22 acc!1214 (_1!30726 (h!59489 l!14304)) (_2!30726 (h!59489 l!14304)) (_1!30726 t!14174) (_2!30726 t!14174)))))

(declare-fun lt!1917381 () ListMap!5549)

(assert (=> b!4752758 (eq!1221 lt!1917381 (addToMapMapFromBucket!1576 (t!360554 l!14304) lt!1917380))))

(declare-fun lt!1917384 () ListMap!5549)

(assert (=> b!4752758 (= lt!1917380 (+!2386 lt!1917384 (h!59489 l!14304)))))

(assert (=> b!4752758 (eq!1221 lt!1917381 (addToMapMapFromBucket!1576 l!14304 lt!1917384))))

(assert (=> b!4752758 (= lt!1917384 (+!2386 acc!1214 t!14174))))

(declare-fun lt!1917379 () List!53216)

(assert (=> b!4752758 (= lt!1917381 (addToMapMapFromBucket!1576 lt!1917379 acc!1214))))

(declare-fun lt!1917376 () ListMap!5549)

(assert (=> b!4752758 (eq!1221 lt!1917376 (addToMapMapFromBucket!1576 (t!360554 l!14304) lt!1917385))))

(assert (=> b!4752758 (= lt!1917385 (+!2386 lt!1917386 t!14174))))

(assert (=> b!4752758 e!2964830))

(declare-fun res!2015630 () Bool)

(assert (=> b!4752758 (=> (not res!2015630) (not e!2964830))))

(assert (=> b!4752758 (= res!2015630 (eq!1221 lt!1917376 (+!2386 lt!1917387 t!14174)))))

(assert (=> b!4752758 (= lt!1917376 (addToMapMapFromBucket!1576 (Cons!53092 t!14174 (t!360554 l!14304)) lt!1917386))))

(declare-fun lt!1917378 () Unit!136398)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!466 (tuple2!54864 List!53216 ListMap!5549) Unit!136398)

(assert (=> b!4752758 (= lt!1917378 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!466 t!14174 (t!360554 l!14304) lt!1917386))))

(assert (=> b!4752758 (= lt!1917387 (addToMapMapFromBucket!1576 (t!360554 l!14304) lt!1917386))))

(assert (=> b!4752758 (= lt!1917386 (+!2386 acc!1214 (h!59489 l!14304)))))

(declare-fun b!4752759 () Bool)

(declare-fun tp!1350228 () Bool)

(assert (=> b!4752759 (= e!2964833 (and tp_is_empty!31901 tp_is_empty!31903 tp!1350228))))

(declare-fun b!4752760 () Bool)

(assert (=> b!4752760 (= e!2964834 e!2964832)))

(declare-fun res!2015628 () Bool)

(assert (=> b!4752760 (=> (not res!2015628) (not e!2964832))))

(assert (=> b!4752760 (= res!2015628 (noDuplicateKeys!2152 lt!1917379))))

(assert (=> b!4752760 (= lt!1917379 (Cons!53092 t!14174 l!14304))))

(declare-fun b!4752761 () Bool)

(declare-fun tp!1350229 () Bool)

(assert (=> b!4752761 (= e!2964831 tp!1350229)))

(assert (= (and start!485608 res!2015631) b!4752760))

(assert (= (and b!4752760 res!2015628) b!4752756))

(assert (= (and b!4752756 res!2015629) b!4752758))

(assert (= (and b!4752758 res!2015630) b!4752757))

(assert (= (and start!485608 ((_ is Cons!53092) l!14304)) b!4752759))

(assert (= start!485608 b!4752761))

(declare-fun m!5717807 () Bool)

(assert (=> start!485608 m!5717807))

(declare-fun m!5717809 () Bool)

(assert (=> start!485608 m!5717809))

(declare-fun m!5717811 () Bool)

(assert (=> b!4752757 m!5717811))

(assert (=> b!4752757 m!5717811))

(declare-fun m!5717813 () Bool)

(assert (=> b!4752757 m!5717813))

(declare-fun m!5717815 () Bool)

(assert (=> b!4752758 m!5717815))

(declare-fun m!5717817 () Bool)

(assert (=> b!4752758 m!5717817))

(declare-fun m!5717819 () Bool)

(assert (=> b!4752758 m!5717819))

(declare-fun m!5717821 () Bool)

(assert (=> b!4752758 m!5717821))

(declare-fun m!5717823 () Bool)

(assert (=> b!4752758 m!5717823))

(declare-fun m!5717825 () Bool)

(assert (=> b!4752758 m!5717825))

(declare-fun m!5717827 () Bool)

(assert (=> b!4752758 m!5717827))

(declare-fun m!5717829 () Bool)

(assert (=> b!4752758 m!5717829))

(declare-fun m!5717831 () Bool)

(assert (=> b!4752758 m!5717831))

(declare-fun m!5717833 () Bool)

(assert (=> b!4752758 m!5717833))

(declare-fun m!5717835 () Bool)

(assert (=> b!4752758 m!5717835))

(declare-fun m!5717837 () Bool)

(assert (=> b!4752758 m!5717837))

(assert (=> b!4752758 m!5717817))

(declare-fun m!5717839 () Bool)

(assert (=> b!4752758 m!5717839))

(declare-fun m!5717841 () Bool)

(assert (=> b!4752758 m!5717841))

(declare-fun m!5717843 () Bool)

(assert (=> b!4752758 m!5717843))

(declare-fun m!5717845 () Bool)

(assert (=> b!4752758 m!5717845))

(declare-fun m!5717847 () Bool)

(assert (=> b!4752758 m!5717847))

(assert (=> b!4752758 m!5717829))

(declare-fun m!5717849 () Bool)

(assert (=> b!4752758 m!5717849))

(declare-fun m!5717851 () Bool)

(assert (=> b!4752758 m!5717851))

(assert (=> b!4752758 m!5717825))

(declare-fun m!5717853 () Bool)

(assert (=> b!4752758 m!5717853))

(assert (=> b!4752758 m!5717841))

(declare-fun m!5717855 () Bool)

(assert (=> b!4752758 m!5717855))

(declare-fun m!5717857 () Bool)

(assert (=> b!4752758 m!5717857))

(assert (=> b!4752758 m!5717845))

(declare-fun m!5717859 () Bool)

(assert (=> b!4752760 m!5717859))

(check-sat tp_is_empty!31901 (not b!4752759) (not b!4752758) (not b!4752757) (not start!485608) (not b!4752760) tp_is_empty!31903 (not b!4752761))
(check-sat)
