; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437044 () Bool)

(assert start!437044)

(declare-fun b!4458252 () Bool)

(declare-fun e!2776119 () Bool)

(assert (=> b!4458252 (= e!2776119 false)))

(declare-fun lt!1649476 () Bool)

(declare-datatypes ((K!11485 0))(
  ( (K!11486 (val!17459 Int)) )
))
(declare-datatypes ((V!11731 0))(
  ( (V!11732 (val!17460 Int)) )
))
(declare-datatypes ((tuple2!50238 0))(
  ( (tuple2!50239 (_1!28413 K!11485) (_2!28413 V!11731)) )
))
(declare-datatypes ((List!50222 0))(
  ( (Nil!50098) (Cons!50098 (h!55843 tuple2!50238) (t!357172 List!50222)) )
))
(declare-fun l!12858 () List!50222)

(declare-fun noDuplicateKeys!952 (List!50222) Bool)

(assert (=> b!4458252 (= lt!1649476 (noDuplicateKeys!952 (t!357172 l!12858)))))

(declare-fun b!4458253 () Bool)

(declare-fun res!1848453 () Bool)

(assert (=> b!4458253 (=> (not res!1848453) (not e!2776119))))

(declare-datatypes ((tuple2!50240 0))(
  ( (tuple2!50241 (_1!28414 (_ BitVec 64)) (_2!28414 List!50222)) )
))
(declare-datatypes ((List!50223 0))(
  ( (Nil!50099) (Cons!50099 (h!55844 tuple2!50240) (t!357173 List!50223)) )
))
(declare-datatypes ((ListLongMap!2567 0))(
  ( (ListLongMap!2568 (toList!3911 List!50223)) )
))
(declare-fun lm!1853 () ListLongMap!2567)

(declare-datatypes ((Hashable!5359 0))(
  ( (HashableExt!5358 (__x!31062 Int)) )
))
(declare-fun hashF!1313 () Hashable!5359)

(declare-fun allKeysSameHashInMap!1071 (ListLongMap!2567 Hashable!5359) Bool)

(assert (=> b!4458253 (= res!1848453 (allKeysSameHashInMap!1071 lm!1853 hashF!1313))))

(declare-fun b!4458254 () Bool)

(declare-fun res!1848454 () Bool)

(assert (=> b!4458254 (=> (not res!1848454) (not e!2776119))))

(declare-fun lambda!160911 () Int)

(declare-fun forall!9883 (List!50223 Int) Bool)

(assert (=> b!4458254 (= res!1848454 (forall!9883 (toList!3911 lm!1853) lambda!160911))))

(declare-fun res!1848452 () Bool)

(assert (=> start!437044 (=> (not res!1848452) (not e!2776119))))

(assert (=> start!437044 (= res!1848452 (forall!9883 (toList!3911 lm!1853) lambda!160911))))

(assert (=> start!437044 e!2776119))

(declare-fun e!2776117 () Bool)

(declare-fun inv!65671 (ListLongMap!2567) Bool)

(assert (=> start!437044 (and (inv!65671 lm!1853) e!2776117)))

(assert (=> start!437044 true))

(declare-fun e!2776118 () Bool)

(assert (=> start!437044 e!2776118))

(declare-fun tp_is_empty!27029 () Bool)

(assert (=> start!437044 tp_is_empty!27029))

(declare-fun b!4458255 () Bool)

(declare-fun res!1848457 () Bool)

(assert (=> b!4458255 (=> (not res!1848457) (not e!2776119))))

(get-info :version)

(assert (=> b!4458255 (= res!1848457 ((_ is Cons!50098) l!12858))))

(declare-fun b!4458256 () Bool)

(declare-fun tp!1335366 () Bool)

(assert (=> b!4458256 (= e!2776117 tp!1335366)))

(declare-fun b!4458257 () Bool)

(declare-fun tp!1335367 () Bool)

(declare-fun tp_is_empty!27031 () Bool)

(assert (=> b!4458257 (= e!2776118 (and tp_is_empty!27029 tp_is_empty!27031 tp!1335367))))

(declare-fun b!4458258 () Bool)

(declare-fun res!1848456 () Bool)

(assert (=> b!4458258 (=> (not res!1848456) (not e!2776119))))

(declare-fun key!4412 () K!11485)

(declare-datatypes ((ListMap!3149 0))(
  ( (ListMap!3150 (toList!3912 List!50222)) )
))
(declare-fun contains!12609 (ListMap!3149 K!11485) Bool)

(declare-fun extractMap!1020 (List!50223) ListMap!3149)

(assert (=> b!4458258 (= res!1848456 (contains!12609 (extractMap!1020 (toList!3911 lm!1853)) key!4412))))

(declare-fun b!4458259 () Bool)

(declare-fun res!1848455 () Bool)

(assert (=> b!4458259 (=> (not res!1848455) (not e!2776119))))

(assert (=> b!4458259 (= res!1848455 (noDuplicateKeys!952 l!12858))))

(assert (= (and start!437044 res!1848452) b!4458253))

(assert (= (and b!4458253 res!1848453) b!4458259))

(assert (= (and b!4458259 res!1848455) b!4458258))

(assert (= (and b!4458258 res!1848456) b!4458255))

(assert (= (and b!4458255 res!1848457) b!4458254))

(assert (= (and b!4458254 res!1848454) b!4458252))

(assert (= start!437044 b!4458256))

(assert (= (and start!437044 ((_ is Cons!50098) l!12858)) b!4458257))

(declare-fun m!5160859 () Bool)

(assert (=> start!437044 m!5160859))

(declare-fun m!5160861 () Bool)

(assert (=> start!437044 m!5160861))

(declare-fun m!5160863 () Bool)

(assert (=> b!4458259 m!5160863))

(declare-fun m!5160865 () Bool)

(assert (=> b!4458253 m!5160865))

(declare-fun m!5160867 () Bool)

(assert (=> b!4458252 m!5160867))

(declare-fun m!5160869 () Bool)

(assert (=> b!4458258 m!5160869))

(assert (=> b!4458258 m!5160869))

(declare-fun m!5160871 () Bool)

(assert (=> b!4458258 m!5160871))

(assert (=> b!4458254 m!5160859))

(check-sat (not b!4458259) (not b!4458253) (not b!4458252) tp_is_empty!27029 (not b!4458257) tp_is_empty!27031 (not b!4458256) (not b!4458258) (not start!437044) (not b!4458254))
(check-sat)
