; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!502316 () Bool)

(assert start!502316)

(declare-fun b!4832972 () Bool)

(declare-fun e!3020141 () Bool)

(declare-datatypes ((K!16784 0))(
  ( (K!16785 (val!21733 Int)) )
))
(declare-datatypes ((V!17030 0))(
  ( (V!17031 (val!21734 Int)) )
))
(declare-datatypes ((tuple2!58388 0))(
  ( (tuple2!58389 (_1!32488 K!16784) (_2!32488 V!17030)) )
))
(declare-datatypes ((List!55213 0))(
  ( (Nil!55089) (Cons!55089 (h!61523 tuple2!58388) (t!362709 List!55213)) )
))
(declare-datatypes ((ListMap!6949 0))(
  ( (ListMap!6950 (toList!7570 List!55213)) )
))
(declare-fun lt!1978534 () ListMap!6949)

(declare-fun key!5666 () K!16784)

(declare-fun contains!18901 (ListMap!6949 K!16784) Bool)

(assert (=> b!4832972 (= e!3020141 (contains!18901 lt!1978534 key!5666))))

(declare-fun tp!1363029 () Bool)

(declare-fun e!3020139 () Bool)

(declare-fun tp_is_empty!34617 () Bool)

(declare-fun b!4832973 () Bool)

(declare-fun tp_is_empty!34619 () Bool)

(assert (=> b!4832973 (= e!3020139 (and tp_is_empty!34617 tp_is_empty!34619 tp!1363029))))

(declare-fun b!4832974 () Bool)

(declare-fun e!3020138 () Bool)

(declare-fun e!3020142 () Bool)

(assert (=> b!4832974 (= e!3020138 (not e!3020142))))

(declare-fun res!2058715 () Bool)

(assert (=> b!4832974 (=> res!2058715 e!3020142)))

(declare-fun acc!1183 () ListMap!6949)

(assert (=> b!4832974 (= res!2058715 (not (contains!18901 acc!1183 key!5666)))))

(declare-fun lt!1978536 () ListMap!6949)

(assert (=> b!4832974 (= (contains!18901 lt!1978536 key!5666) e!3020141)))

(declare-fun res!2058714 () Bool)

(assert (=> b!4832974 (=> res!2058714 e!3020141)))

(declare-fun l!14180 () List!55213)

(declare-fun containsKey!4454 (List!55213 K!16784) Bool)

(assert (=> b!4832974 (= res!2058714 (containsKey!4454 (t!362709 l!14180) key!5666))))

(declare-datatypes ((Unit!144111 0))(
  ( (Unit!144112) )
))
(declare-fun lt!1978537 () Unit!144111)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!58 (List!55213 ListMap!6949 K!16784) Unit!144111)

(assert (=> b!4832974 (= lt!1978537 (lemmaAddToMapFromBucketContainsIIFInAccOrL!58 (t!362709 l!14180) lt!1978534 key!5666))))

(declare-fun addToMapMapFromBucket!1839 (List!55213 ListMap!6949) ListMap!6949)

(assert (=> b!4832974 (= lt!1978536 (addToMapMapFromBucket!1839 (t!362709 l!14180) lt!1978534))))

(declare-fun +!2563 (ListMap!6949 tuple2!58388) ListMap!6949)

(assert (=> b!4832974 (= lt!1978534 (+!2563 acc!1183 (h!61523 l!14180)))))

(declare-fun b!4832976 () Bool)

(declare-fun res!2058713 () Bool)

(assert (=> b!4832976 (=> (not res!2058713) (not e!3020138))))

(get-info :version)

(assert (=> b!4832976 (= res!2058713 (not ((_ is Nil!55089) l!14180)))))

(declare-fun b!4832977 () Bool)

(declare-fun e!3020140 () Bool)

(declare-fun tp!1363030 () Bool)

(assert (=> b!4832977 (= e!3020140 tp!1363030)))

(declare-fun b!4832975 () Bool)

(assert (=> b!4832975 (= e!3020142 true)))

(assert (=> b!4832975 (contains!18901 lt!1978534 key!5666)))

(declare-fun lt!1978535 () Unit!144111)

(declare-fun addStillContains!26 (ListMap!6949 K!16784 V!17030 K!16784) Unit!144111)

(assert (=> b!4832975 (= lt!1978535 (addStillContains!26 acc!1183 (_1!32488 (h!61523 l!14180)) (_2!32488 (h!61523 l!14180)) key!5666))))

(declare-fun res!2058712 () Bool)

(assert (=> start!502316 (=> (not res!2058712) (not e!3020138))))

(declare-fun noDuplicateKeys!2484 (List!55213) Bool)

(assert (=> start!502316 (= res!2058712 (noDuplicateKeys!2484 l!14180))))

(assert (=> start!502316 e!3020138))

(assert (=> start!502316 e!3020139))

(declare-fun inv!70684 (ListMap!6949) Bool)

(assert (=> start!502316 (and (inv!70684 acc!1183) e!3020140)))

(assert (=> start!502316 tp_is_empty!34617))

(assert (= (and start!502316 res!2058712) b!4832976))

(assert (= (and b!4832976 res!2058713) b!4832974))

(assert (= (and b!4832974 (not res!2058714)) b!4832972))

(assert (= (and b!4832974 (not res!2058715)) b!4832975))

(assert (= (and start!502316 ((_ is Cons!55089) l!14180)) b!4832973))

(assert (= start!502316 b!4832977))

(declare-fun m!5827402 () Bool)

(assert (=> b!4832972 m!5827402))

(declare-fun m!5827404 () Bool)

(assert (=> b!4832974 m!5827404))

(declare-fun m!5827406 () Bool)

(assert (=> b!4832974 m!5827406))

(declare-fun m!5827408 () Bool)

(assert (=> b!4832974 m!5827408))

(declare-fun m!5827410 () Bool)

(assert (=> b!4832974 m!5827410))

(declare-fun m!5827412 () Bool)

(assert (=> b!4832974 m!5827412))

(declare-fun m!5827414 () Bool)

(assert (=> b!4832974 m!5827414))

(assert (=> b!4832975 m!5827402))

(declare-fun m!5827416 () Bool)

(assert (=> b!4832975 m!5827416))

(declare-fun m!5827418 () Bool)

(assert (=> start!502316 m!5827418))

(declare-fun m!5827420 () Bool)

(assert (=> start!502316 m!5827420))

(check-sat (not start!502316) (not b!4832972) (not b!4832974) (not b!4832977) (not b!4832973) tp_is_empty!34619 (not b!4832975) tp_is_empty!34617)
(check-sat)
