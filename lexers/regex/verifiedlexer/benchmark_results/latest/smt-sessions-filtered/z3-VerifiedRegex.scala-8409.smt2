; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436964 () Bool)

(assert start!436964)

(declare-fun b!4457711 () Bool)

(declare-fun e!2775808 () Bool)

(assert (=> b!4457711 (= e!2775808 false)))

(declare-fun lt!1649260 () Bool)

(declare-datatypes ((K!11450 0))(
  ( (K!11451 (val!17431 Int)) )
))
(declare-datatypes ((V!11696 0))(
  ( (V!11697 (val!17432 Int)) )
))
(declare-datatypes ((tuple2!50182 0))(
  ( (tuple2!50183 (_1!28385 K!11450) (_2!28385 V!11696)) )
))
(declare-datatypes ((List!50191 0))(
  ( (Nil!50067) (Cons!50067 (h!55812 tuple2!50182) (t!357141 List!50191)) )
))
(declare-datatypes ((tuple2!50184 0))(
  ( (tuple2!50185 (_1!28386 (_ BitVec 64)) (_2!28386 List!50191)) )
))
(declare-datatypes ((List!50192 0))(
  ( (Nil!50068) (Cons!50068 (h!55813 tuple2!50184) (t!357142 List!50192)) )
))
(declare-datatypes ((ListLongMap!2539 0))(
  ( (ListLongMap!2540 (toList!3883 List!50192)) )
))
(declare-fun lm!1853 () ListLongMap!2539)

(declare-fun key!4412 () K!11450)

(declare-datatypes ((ListMap!3121 0))(
  ( (ListMap!3122 (toList!3884 List!50191)) )
))
(declare-fun contains!12592 (ListMap!3121 K!11450) Bool)

(declare-fun extractMap!1006 (List!50192) ListMap!3121)

(assert (=> b!4457711 (= lt!1649260 (contains!12592 (extractMap!1006 (toList!3883 lm!1853)) key!4412))))

(declare-fun b!4457712 () Bool)

(declare-fun res!1848151 () Bool)

(assert (=> b!4457712 (=> (not res!1848151) (not e!2775808))))

(declare-datatypes ((Hashable!5345 0))(
  ( (HashableExt!5344 (__x!31048 Int)) )
))
(declare-fun hashF!1313 () Hashable!5345)

(declare-fun allKeysSameHashInMap!1057 (ListLongMap!2539 Hashable!5345) Bool)

(assert (=> b!4457712 (= res!1848151 (allKeysSameHashInMap!1057 lm!1853 hashF!1313))))

(declare-fun res!1848152 () Bool)

(assert (=> start!436964 (=> (not res!1848152) (not e!2775808))))

(declare-fun lambda!160833 () Int)

(declare-fun forall!9869 (List!50192 Int) Bool)

(assert (=> start!436964 (= res!1848152 (forall!9869 (toList!3883 lm!1853) lambda!160833))))

(assert (=> start!436964 e!2775808))

(declare-fun e!2775807 () Bool)

(declare-fun inv!65636 (ListLongMap!2539) Bool)

(assert (=> start!436964 (and (inv!65636 lm!1853) e!2775807)))

(assert (=> start!436964 true))

(declare-fun e!2775809 () Bool)

(assert (=> start!436964 e!2775809))

(declare-fun tp_is_empty!26973 () Bool)

(assert (=> start!436964 tp_is_empty!26973))

(declare-fun b!4457713 () Bool)

(declare-fun res!1848153 () Bool)

(assert (=> b!4457713 (=> (not res!1848153) (not e!2775808))))

(declare-fun l!12858 () List!50191)

(declare-fun noDuplicateKeys!938 (List!50191) Bool)

(assert (=> b!4457713 (= res!1848153 (noDuplicateKeys!938 l!12858))))

(declare-fun b!4457714 () Bool)

(declare-fun tp!1335246 () Bool)

(assert (=> b!4457714 (= e!2775807 tp!1335246)))

(declare-fun tp_is_empty!26975 () Bool)

(declare-fun tp!1335247 () Bool)

(declare-fun b!4457715 () Bool)

(assert (=> b!4457715 (= e!2775809 (and tp_is_empty!26973 tp_is_empty!26975 tp!1335247))))

(assert (= (and start!436964 res!1848152) b!4457712))

(assert (= (and b!4457712 res!1848151) b!4457713))

(assert (= (and b!4457713 res!1848153) b!4457711))

(assert (= start!436964 b!4457714))

(get-info :version)

(assert (= (and start!436964 ((_ is Cons!50067) l!12858)) b!4457715))

(declare-fun m!5160413 () Bool)

(assert (=> b!4457711 m!5160413))

(assert (=> b!4457711 m!5160413))

(declare-fun m!5160415 () Bool)

(assert (=> b!4457711 m!5160415))

(declare-fun m!5160417 () Bool)

(assert (=> b!4457712 m!5160417))

(declare-fun m!5160419 () Bool)

(assert (=> start!436964 m!5160419))

(declare-fun m!5160421 () Bool)

(assert (=> start!436964 m!5160421))

(declare-fun m!5160423 () Bool)

(assert (=> b!4457713 m!5160423))

(check-sat tp_is_empty!26973 (not b!4457713) tp_is_empty!26975 (not b!4457712) (not start!436964) (not b!4457714) (not b!4457711) (not b!4457715))
(check-sat)
