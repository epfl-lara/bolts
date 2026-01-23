; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437080 () Bool)

(assert start!437080)

(declare-fun b!4458483 () Bool)

(declare-fun res!1848574 () Bool)

(declare-fun e!2776251 () Bool)

(assert (=> b!4458483 (=> (not res!1848574) (not e!2776251))))

(declare-datatypes ((K!11495 0))(
  ( (K!11496 (val!17467 Int)) )
))
(declare-datatypes ((V!11741 0))(
  ( (V!11742 (val!17468 Int)) )
))
(declare-datatypes ((tuple2!50254 0))(
  ( (tuple2!50255 (_1!28421 K!11495) (_2!28421 V!11741)) )
))
(declare-datatypes ((List!50231 0))(
  ( (Nil!50107) (Cons!50107 (h!55852 tuple2!50254) (t!357181 List!50231)) )
))
(declare-fun l!12858 () List!50231)

(declare-fun noDuplicateKeys!956 (List!50231) Bool)

(assert (=> b!4458483 (= res!1848574 (noDuplicateKeys!956 l!12858))))

(declare-fun b!4458484 () Bool)

(declare-fun e!2776248 () Bool)

(assert (=> b!4458484 (= e!2776251 e!2776248)))

(declare-fun res!1848575 () Bool)

(assert (=> b!4458484 (=> (not res!1848575) (not e!2776248))))

(declare-datatypes ((ListMap!3157 0))(
  ( (ListMap!3158 (toList!3919 List!50231)) )
))
(declare-fun lt!1649550 () ListMap!3157)

(declare-fun key!4412 () K!11495)

(declare-fun contains!12614 (ListMap!3157 K!11495) Bool)

(assert (=> b!4458484 (= res!1848575 (contains!12614 lt!1649550 key!4412))))

(declare-datatypes ((tuple2!50256 0))(
  ( (tuple2!50257 (_1!28422 (_ BitVec 64)) (_2!28422 List!50231)) )
))
(declare-datatypes ((List!50232 0))(
  ( (Nil!50108) (Cons!50108 (h!55853 tuple2!50256) (t!357182 List!50232)) )
))
(declare-datatypes ((ListLongMap!2575 0))(
  ( (ListLongMap!2576 (toList!3920 List!50232)) )
))
(declare-fun lm!1853 () ListLongMap!2575)

(declare-fun extractMap!1024 (List!50232) ListMap!3157)

(assert (=> b!4458484 (= lt!1649550 (extractMap!1024 (toList!3920 lm!1853)))))

(declare-fun res!1848571 () Bool)

(assert (=> start!437080 (=> (not res!1848571) (not e!2776251))))

(declare-fun lambda!160939 () Int)

(declare-fun forall!9887 (List!50232 Int) Bool)

(assert (=> start!437080 (= res!1848571 (forall!9887 (toList!3920 lm!1853) lambda!160939))))

(assert (=> start!437080 e!2776251))

(declare-fun e!2776250 () Bool)

(declare-fun inv!65681 (ListLongMap!2575) Bool)

(assert (=> start!437080 (and (inv!65681 lm!1853) e!2776250)))

(assert (=> start!437080 true))

(declare-fun e!2776249 () Bool)

(assert (=> start!437080 e!2776249))

(declare-fun tp_is_empty!27045 () Bool)

(assert (=> start!437080 tp_is_empty!27045))

(declare-fun tp_is_empty!27047 () Bool)

(declare-fun b!4458485 () Bool)

(declare-fun tp!1335408 () Bool)

(assert (=> b!4458485 (= e!2776249 (and tp_is_empty!27045 tp_is_empty!27047 tp!1335408))))

(declare-fun b!4458486 () Bool)

(declare-fun res!1848573 () Bool)

(assert (=> b!4458486 (=> (not res!1848573) (not e!2776251))))

(declare-datatypes ((Hashable!5363 0))(
  ( (HashableExt!5362 (__x!31066 Int)) )
))
(declare-fun hashF!1313 () Hashable!5363)

(declare-fun allKeysSameHashInMap!1075 (ListLongMap!2575 Hashable!5363) Bool)

(assert (=> b!4458486 (= res!1848573 (allKeysSameHashInMap!1075 lm!1853 hashF!1313))))

(declare-fun b!4458487 () Bool)

(declare-fun res!1848572 () Bool)

(assert (=> b!4458487 (=> (not res!1848572) (not e!2776248))))

(get-info :version)

(assert (=> b!4458487 (= res!1848572 ((_ is Cons!50107) l!12858))))

(declare-fun b!4458488 () Bool)

(assert (=> b!4458488 (= e!2776248 (not true))))

(declare-fun addToMapMapFromBucket!537 (List!50231 ListMap!3157) ListMap!3157)

(assert (=> b!4458488 (contains!12614 (addToMapMapFromBucket!537 (t!357181 l!12858) lt!1649550) key!4412)))

(declare-datatypes ((Unit!86379 0))(
  ( (Unit!86380) )
))
(declare-fun lt!1649549 () Unit!86379)

(declare-fun lemmaAddToMapMaintainsContains!42 (ListLongMap!2575 K!11495 List!50231 Hashable!5363) Unit!86379)

(assert (=> b!4458488 (= lt!1649549 (lemmaAddToMapMaintainsContains!42 lm!1853 key!4412 (t!357181 l!12858) hashF!1313))))

(declare-fun b!4458489 () Bool)

(declare-fun tp!1335409 () Bool)

(assert (=> b!4458489 (= e!2776250 tp!1335409)))

(assert (= (and start!437080 res!1848571) b!4458486))

(assert (= (and b!4458486 res!1848573) b!4458483))

(assert (= (and b!4458483 res!1848574) b!4458484))

(assert (= (and b!4458484 res!1848575) b!4458487))

(assert (= (and b!4458487 res!1848572) b!4458488))

(assert (= start!437080 b!4458489))

(assert (= (and start!437080 ((_ is Cons!50107) l!12858)) b!4458485))

(declare-fun m!5161019 () Bool)

(assert (=> b!4458483 m!5161019))

(declare-fun m!5161021 () Bool)

(assert (=> b!4458488 m!5161021))

(assert (=> b!4458488 m!5161021))

(declare-fun m!5161023 () Bool)

(assert (=> b!4458488 m!5161023))

(declare-fun m!5161025 () Bool)

(assert (=> b!4458488 m!5161025))

(declare-fun m!5161027 () Bool)

(assert (=> b!4458484 m!5161027))

(declare-fun m!5161029 () Bool)

(assert (=> b!4458484 m!5161029))

(declare-fun m!5161031 () Bool)

(assert (=> start!437080 m!5161031))

(declare-fun m!5161033 () Bool)

(assert (=> start!437080 m!5161033))

(declare-fun m!5161035 () Bool)

(assert (=> b!4458486 m!5161035))

(check-sat (not b!4458489) (not b!4458485) (not b!4458484) tp_is_empty!27045 tp_is_empty!27047 (not start!437080) (not b!4458486) (not b!4458488) (not b!4458483))
(check-sat)
