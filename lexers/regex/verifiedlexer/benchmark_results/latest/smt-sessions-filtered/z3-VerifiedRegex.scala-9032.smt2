; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485760 () Bool)

(assert start!485760)

(declare-fun b!4753609 () Bool)

(declare-fun e!2965405 () Bool)

(declare-fun tp!1350344 () Bool)

(assert (=> b!4753609 (= e!2965405 tp!1350344)))

(declare-fun tp_is_empty!31957 () Bool)

(declare-fun tp_is_empty!31959 () Bool)

(declare-fun b!4753610 () Bool)

(declare-fun tp!1350345 () Bool)

(declare-fun e!2965406 () Bool)

(assert (=> b!4753610 (= e!2965406 (and tp_is_empty!31957 tp_is_empty!31959 tp!1350345))))

(declare-fun b!4753611 () Bool)

(declare-fun e!2965404 () Bool)

(assert (=> b!4753611 (= e!2965404 (not true))))

(declare-datatypes ((K!14565 0))(
  ( (K!14566 (val!19923 Int)) )
))
(declare-datatypes ((V!14811 0))(
  ( (V!14812 (val!19924 Int)) )
))
(declare-datatypes ((tuple2!54892 0))(
  ( (tuple2!54893 (_1!30740 K!14565) (_2!30740 V!14811)) )
))
(declare-datatypes ((List!53230 0))(
  ( (Nil!53106) (Cons!53106 (h!59503 tuple2!54892) (t!360574 List!53230)) )
))
(declare-fun l!13029 () List!53230)

(declare-datatypes ((ListMap!5577 0))(
  ( (ListMap!5578 (toList!6134 List!53230)) )
))
(declare-fun lt!1919447 () ListMap!5577)

(declare-fun lt!1919446 () ListMap!5577)

(declare-fun lt!1919448 () tuple2!54892)

(declare-fun eq!1235 (ListMap!5577 ListMap!5577) Bool)

(declare-fun addToMapMapFromBucket!1588 (List!53230 ListMap!5577) ListMap!5577)

(declare-fun +!2400 (ListMap!5577 tuple2!54892) ListMap!5577)

(assert (=> b!4753611 (eq!1235 (addToMapMapFromBucket!1588 (t!360574 l!13029) lt!1919446) (+!2400 (addToMapMapFromBucket!1588 (t!360574 l!13029) lt!1919447) lt!1919448))))

(declare-datatypes ((Unit!136932 0))(
  ( (Unit!136933) )
))
(declare-fun lt!1919449 () Unit!136932)

(declare-fun key!4572 () K!14565)

(declare-fun value!2966 () V!14811)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!252 (ListMap!5577 K!14565 V!14811 List!53230) Unit!136932)

(assert (=> b!4753611 (= lt!1919449 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!252 lt!1919447 key!4572 value!2966 (t!360574 l!13029)))))

(declare-fun lhm!63 () ListMap!5577)

(assert (=> b!4753611 (eq!1235 lt!1919446 (+!2400 (+!2400 lhm!63 lt!1919448) (h!59503 l!13029)))))

(assert (=> b!4753611 (= lt!1919446 (+!2400 lt!1919447 lt!1919448))))

(assert (=> b!4753611 (= lt!1919448 (tuple2!54893 key!4572 value!2966))))

(declare-fun lt!1919445 () Unit!136932)

(declare-fun addCommutativeForDiffKeys!36 (ListMap!5577 K!14565 V!14811 K!14565 V!14811) Unit!136932)

(assert (=> b!4753611 (= lt!1919445 (addCommutativeForDiffKeys!36 lhm!63 (_1!30740 (h!59503 l!13029)) (_2!30740 (h!59503 l!13029)) key!4572 value!2966))))

(assert (=> b!4753611 (= lt!1919447 (+!2400 lhm!63 (h!59503 l!13029)))))

(declare-fun res!2016209 () Bool)

(assert (=> start!485760 (=> (not res!2016209) (not e!2965404))))

(declare-fun containsKey!3572 (List!53230 K!14565) Bool)

(assert (=> start!485760 (= res!2016209 (not (containsKey!3572 l!13029 key!4572)))))

(assert (=> start!485760 e!2965404))

(assert (=> start!485760 e!2965406))

(assert (=> start!485760 tp_is_empty!31957))

(assert (=> start!485760 tp_is_empty!31959))

(declare-fun inv!68435 (ListMap!5577) Bool)

(assert (=> start!485760 (and (inv!68435 lhm!63) e!2965405)))

(declare-fun b!4753612 () Bool)

(declare-fun res!2016211 () Bool)

(assert (=> b!4753612 (=> (not res!2016211) (not e!2965404))))

(get-info :version)

(assert (=> b!4753612 (= res!2016211 ((_ is Cons!53106) l!13029))))

(declare-fun b!4753613 () Bool)

(declare-fun res!2016210 () Bool)

(assert (=> b!4753613 (=> (not res!2016210) (not e!2965404))))

(declare-fun noDuplicateKeys!2166 (List!53230) Bool)

(assert (=> b!4753613 (= res!2016210 (noDuplicateKeys!2166 l!13029))))

(assert (= (and start!485760 res!2016209) b!4753613))

(assert (= (and b!4753613 res!2016210) b!4753612))

(assert (= (and b!4753612 res!2016211) b!4753611))

(assert (= (and start!485760 ((_ is Cons!53106) l!13029)) b!4753610))

(assert (= start!485760 b!4753609))

(declare-fun m!5720971 () Bool)

(assert (=> b!4753611 m!5720971))

(declare-fun m!5720973 () Bool)

(assert (=> b!4753611 m!5720973))

(declare-fun m!5720975 () Bool)

(assert (=> b!4753611 m!5720975))

(declare-fun m!5720977 () Bool)

(assert (=> b!4753611 m!5720977))

(declare-fun m!5720979 () Bool)

(assert (=> b!4753611 m!5720979))

(declare-fun m!5720981 () Bool)

(assert (=> b!4753611 m!5720981))

(declare-fun m!5720983 () Bool)

(assert (=> b!4753611 m!5720983))

(declare-fun m!5720985 () Bool)

(assert (=> b!4753611 m!5720985))

(declare-fun m!5720987 () Bool)

(assert (=> b!4753611 m!5720987))

(assert (=> b!4753611 m!5720987))

(assert (=> b!4753611 m!5720979))

(declare-fun m!5720989 () Bool)

(assert (=> b!4753611 m!5720989))

(assert (=> b!4753611 m!5720981))

(assert (=> b!4753611 m!5720977))

(assert (=> b!4753611 m!5720983))

(declare-fun m!5720991 () Bool)

(assert (=> b!4753611 m!5720991))

(declare-fun m!5720993 () Bool)

(assert (=> start!485760 m!5720993))

(declare-fun m!5720995 () Bool)

(assert (=> start!485760 m!5720995))

(declare-fun m!5720997 () Bool)

(assert (=> b!4753613 m!5720997))

(check-sat tp_is_empty!31957 tp_is_empty!31959 (not start!485760) (not b!4753610) (not b!4753609) (not b!4753611) (not b!4753613))
(check-sat)
