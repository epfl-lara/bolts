; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485128 () Bool)

(assert start!485128)

(declare-fun b!4748756 () Bool)

(declare-fun e!2962084 () Bool)

(assert (=> b!4748756 (= e!2962084 (not true))))

(declare-fun e!2962086 () Bool)

(assert (=> b!4748756 e!2962086))

(declare-fun res!2013264 () Bool)

(assert (=> b!4748756 (=> (not res!2013264) (not e!2962086))))

(declare-datatypes ((K!14435 0))(
  ( (K!14436 (val!19819 Int)) )
))
(declare-datatypes ((V!14681 0))(
  ( (V!14682 (val!19820 Int)) )
))
(declare-datatypes ((tuple2!54788 0))(
  ( (tuple2!54789 (_1!30688 K!14435) (_2!30688 V!14681)) )
))
(declare-datatypes ((List!53172 0))(
  ( (Nil!53048) (Cons!53048 (h!59445 tuple2!54788) (t!360494 List!53172)) )
))
(declare-datatypes ((ListMap!5477 0))(
  ( (ListMap!5478 (toList!6084 List!53172)) )
))
(declare-fun lt!1911741 () ListMap!5477)

(declare-fun l!14304 () List!53172)

(declare-fun lt!1911738 () ListMap!5477)

(declare-fun eq!1191 (ListMap!5477 ListMap!5477) Bool)

(declare-fun addToMapMapFromBucket!1540 (List!53172 ListMap!5477) ListMap!5477)

(assert (=> b!4748756 (= res!2013264 (eq!1191 lt!1911738 (addToMapMapFromBucket!1540 l!14304 lt!1911741)))))

(declare-fun acc!1214 () ListMap!5477)

(declare-fun t!14174 () tuple2!54788)

(declare-fun +!2350 (ListMap!5477 tuple2!54788) ListMap!5477)

(assert (=> b!4748756 (= lt!1911741 (+!2350 acc!1214 t!14174))))

(declare-fun lt!1911739 () List!53172)

(assert (=> b!4748756 (= lt!1911738 (addToMapMapFromBucket!1540 lt!1911739 acc!1214))))

(declare-fun e!2962087 () Bool)

(assert (=> b!4748756 e!2962087))

(declare-fun res!2013267 () Bool)

(assert (=> b!4748756 (=> (not res!2013267) (not e!2962087))))

(declare-fun lt!1911735 () ListMap!5477)

(declare-fun lt!1911737 () ListMap!5477)

(assert (=> b!4748756 (= res!2013267 (eq!1191 lt!1911735 (+!2350 lt!1911737 t!14174)))))

(declare-fun lt!1911740 () ListMap!5477)

(assert (=> b!4748756 (= lt!1911735 (addToMapMapFromBucket!1540 (Cons!53048 t!14174 (t!360494 l!14304)) lt!1911740))))

(declare-datatypes ((Unit!135033 0))(
  ( (Unit!135034) )
))
(declare-fun lt!1911736 () Unit!135033)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!438 (tuple2!54788 List!53172 ListMap!5477) Unit!135033)

(assert (=> b!4748756 (= lt!1911736 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!438 t!14174 (t!360494 l!14304) lt!1911740))))

(assert (=> b!4748756 (= lt!1911737 (addToMapMapFromBucket!1540 (t!360494 l!14304) lt!1911740))))

(assert (=> b!4748756 (= lt!1911740 (+!2350 acc!1214 (h!59445 l!14304)))))

(declare-fun b!4748757 () Bool)

(declare-fun res!2013263 () Bool)

(assert (=> b!4748757 (=> (not res!2013263) (not e!2962084))))

(get-info :version)

(assert (=> b!4748757 (= res!2013263 (not ((_ is Nil!53048) l!14304)))))

(declare-fun b!4748758 () Bool)

(declare-fun res!2013262 () Bool)

(assert (=> b!4748758 (=> (not res!2013262) (not e!2962087))))

(assert (=> b!4748758 (= res!2013262 (eq!1191 lt!1911737 (addToMapMapFromBucket!1540 l!14304 acc!1214)))))

(declare-fun res!2013265 () Bool)

(declare-fun e!2962085 () Bool)

(assert (=> start!485128 (=> (not res!2013265) (not e!2962085))))

(declare-fun noDuplicateKeys!2114 (List!53172) Bool)

(assert (=> start!485128 (= res!2013265 (noDuplicateKeys!2114 l!14304))))

(assert (=> start!485128 e!2962085))

(declare-fun e!2962083 () Bool)

(assert (=> start!485128 e!2962083))

(declare-fun tp_is_empty!31749 () Bool)

(declare-fun tp_is_empty!31751 () Bool)

(assert (=> start!485128 (and tp_is_empty!31749 tp_is_empty!31751)))

(declare-fun e!2962088 () Bool)

(declare-fun inv!68307 (ListMap!5477) Bool)

(assert (=> start!485128 (and (inv!68307 acc!1214) e!2962088)))

(declare-fun b!4748759 () Bool)

(declare-fun tp!1349901 () Bool)

(assert (=> b!4748759 (= e!2962088 tp!1349901)))

(declare-fun b!4748760 () Bool)

(assert (=> b!4748760 (= e!2962087 (eq!1191 lt!1911735 (addToMapMapFromBucket!1540 (t!360494 l!14304) (+!2350 lt!1911740 t!14174))))))

(declare-fun b!4748761 () Bool)

(assert (=> b!4748761 (= e!2962085 e!2962084)))

(declare-fun res!2013266 () Bool)

(assert (=> b!4748761 (=> (not res!2013266) (not e!2962084))))

(assert (=> b!4748761 (= res!2013266 (noDuplicateKeys!2114 lt!1911739))))

(assert (=> b!4748761 (= lt!1911739 (Cons!53048 t!14174 l!14304))))

(declare-fun tp!1349900 () Bool)

(declare-fun b!4748762 () Bool)

(assert (=> b!4748762 (= e!2962083 (and tp_is_empty!31749 tp_is_empty!31751 tp!1349900))))

(declare-fun b!4748763 () Bool)

(assert (=> b!4748763 (= e!2962086 (eq!1191 lt!1911738 (addToMapMapFromBucket!1540 (t!360494 l!14304) (+!2350 lt!1911741 (h!59445 l!14304)))))))

(assert (= (and start!485128 res!2013265) b!4748761))

(assert (= (and b!4748761 res!2013266) b!4748757))

(assert (= (and b!4748757 res!2013263) b!4748756))

(assert (= (and b!4748756 res!2013267) b!4748758))

(assert (= (and b!4748758 res!2013262) b!4748760))

(assert (= (and b!4748756 res!2013264) b!4748763))

(assert (= (and start!485128 ((_ is Cons!53048) l!14304)) b!4748762))

(assert (= start!485128 b!4748759))

(declare-fun m!5707899 () Bool)

(assert (=> b!4748763 m!5707899))

(assert (=> b!4748763 m!5707899))

(declare-fun m!5707901 () Bool)

(assert (=> b!4748763 m!5707901))

(assert (=> b!4748763 m!5707901))

(declare-fun m!5707903 () Bool)

(assert (=> b!4748763 m!5707903))

(declare-fun m!5707905 () Bool)

(assert (=> b!4748756 m!5707905))

(declare-fun m!5707907 () Bool)

(assert (=> b!4748756 m!5707907))

(declare-fun m!5707909 () Bool)

(assert (=> b!4748756 m!5707909))

(assert (=> b!4748756 m!5707905))

(declare-fun m!5707911 () Bool)

(assert (=> b!4748756 m!5707911))

(declare-fun m!5707913 () Bool)

(assert (=> b!4748756 m!5707913))

(declare-fun m!5707915 () Bool)

(assert (=> b!4748756 m!5707915))

(declare-fun m!5707917 () Bool)

(assert (=> b!4748756 m!5707917))

(declare-fun m!5707919 () Bool)

(assert (=> b!4748756 m!5707919))

(declare-fun m!5707921 () Bool)

(assert (=> b!4748756 m!5707921))

(assert (=> b!4748756 m!5707915))

(declare-fun m!5707923 () Bool)

(assert (=> b!4748756 m!5707923))

(declare-fun m!5707925 () Bool)

(assert (=> b!4748758 m!5707925))

(assert (=> b!4748758 m!5707925))

(declare-fun m!5707927 () Bool)

(assert (=> b!4748758 m!5707927))

(declare-fun m!5707929 () Bool)

(assert (=> start!485128 m!5707929))

(declare-fun m!5707931 () Bool)

(assert (=> start!485128 m!5707931))

(declare-fun m!5707933 () Bool)

(assert (=> b!4748761 m!5707933))

(declare-fun m!5707935 () Bool)

(assert (=> b!4748760 m!5707935))

(assert (=> b!4748760 m!5707935))

(declare-fun m!5707937 () Bool)

(assert (=> b!4748760 m!5707937))

(assert (=> b!4748760 m!5707937))

(declare-fun m!5707939 () Bool)

(assert (=> b!4748760 m!5707939))

(check-sat (not b!4748758) (not b!4748759) (not b!4748761) (not b!4748756) (not start!485128) tp_is_empty!31749 (not b!4748762) (not b!4748763) tp_is_empty!31751 (not b!4748760))
(check-sat)
