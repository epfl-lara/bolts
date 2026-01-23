; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436958 () Bool)

(assert start!436958)

(declare-fun b!4457658 () Bool)

(declare-fun res!1848120 () Bool)

(declare-fun e!2775782 () Bool)

(assert (=> b!4457658 (=> (not res!1848120) (not e!2775782))))

(declare-datatypes ((K!11443 0))(
  ( (K!11444 (val!17425 Int)) )
))
(declare-datatypes ((V!11689 0))(
  ( (V!11690 (val!17426 Int)) )
))
(declare-datatypes ((tuple2!50170 0))(
  ( (tuple2!50171 (_1!28379 K!11443) (_2!28379 V!11689)) )
))
(declare-datatypes ((List!50185 0))(
  ( (Nil!50061) (Cons!50061 (h!55806 tuple2!50170) (t!357135 List!50185)) )
))
(declare-fun l!12858 () List!50185)

(assert (=> b!4457658 (= res!1848120 (not (is-Cons!50061 l!12858)))))

(declare-fun b!4457659 () Bool)

(declare-fun res!1848117 () Bool)

(assert (=> b!4457659 (=> (not res!1848117) (not e!2775782))))

(declare-datatypes ((tuple2!50172 0))(
  ( (tuple2!50173 (_1!28380 (_ BitVec 64)) (_2!28380 List!50185)) )
))
(declare-datatypes ((List!50186 0))(
  ( (Nil!50062) (Cons!50062 (h!55807 tuple2!50172) (t!357136 List!50186)) )
))
(declare-datatypes ((ListLongMap!2533 0))(
  ( (ListLongMap!2534 (toList!3877 List!50186)) )
))
(declare-fun lm!1853 () ListLongMap!2533)

(declare-fun key!4412 () K!11443)

(declare-datatypes ((ListMap!3115 0))(
  ( (ListMap!3116 (toList!3878 List!50185)) )
))
(declare-fun contains!12589 (ListMap!3115 K!11443) Bool)

(declare-fun extractMap!1003 (List!50186) ListMap!3115)

(assert (=> b!4457659 (= res!1848117 (contains!12589 (extractMap!1003 (toList!3877 lm!1853)) key!4412))))

(declare-fun b!4457660 () Bool)

(declare-fun tp_is_empty!26963 () Bool)

(declare-fun tp!1335229 () Bool)

(declare-fun e!2775780 () Bool)

(declare-fun tp_is_empty!26961 () Bool)

(assert (=> b!4457660 (= e!2775780 (and tp_is_empty!26961 tp_is_empty!26963 tp!1335229))))

(declare-fun b!4457661 () Bool)

(declare-fun lambda!160822 () Int)

(declare-fun forall!9866 (List!50186 Int) Bool)

(assert (=> b!4457661 (= e!2775782 (not (forall!9866 (toList!3877 lm!1853) lambda!160822)))))

(declare-fun b!4457662 () Bool)

(declare-fun res!1848116 () Bool)

(assert (=> b!4457662 (=> (not res!1848116) (not e!2775782))))

(declare-datatypes ((Hashable!5342 0))(
  ( (HashableExt!5341 (__x!31045 Int)) )
))
(declare-fun hashF!1313 () Hashable!5342)

(declare-fun allKeysSameHashInMap!1054 (ListLongMap!2533 Hashable!5342) Bool)

(assert (=> b!4457662 (= res!1848116 (allKeysSameHashInMap!1054 lm!1853 hashF!1313))))

(declare-fun b!4457664 () Bool)

(declare-fun e!2775781 () Bool)

(declare-fun tp!1335228 () Bool)

(assert (=> b!4457664 (= e!2775781 tp!1335228)))

(declare-fun b!4457663 () Bool)

(declare-fun res!1848119 () Bool)

(assert (=> b!4457663 (=> (not res!1848119) (not e!2775782))))

(declare-fun noDuplicateKeys!935 (List!50185) Bool)

(assert (=> b!4457663 (= res!1848119 (noDuplicateKeys!935 l!12858))))

(declare-fun res!1848118 () Bool)

(assert (=> start!436958 (=> (not res!1848118) (not e!2775782))))

(assert (=> start!436958 (= res!1848118 (forall!9866 (toList!3877 lm!1853) lambda!160822))))

(assert (=> start!436958 e!2775782))

(declare-fun inv!65630 (ListLongMap!2533) Bool)

(assert (=> start!436958 (and (inv!65630 lm!1853) e!2775781)))

(assert (=> start!436958 true))

(assert (=> start!436958 e!2775780))

(assert (=> start!436958 tp_is_empty!26961))

(assert (= (and start!436958 res!1848118) b!4457662))

(assert (= (and b!4457662 res!1848116) b!4457663))

(assert (= (and b!4457663 res!1848119) b!4457659))

(assert (= (and b!4457659 res!1848117) b!4457658))

(assert (= (and b!4457658 res!1848120) b!4457661))

(assert (= start!436958 b!4457664))

(assert (= (and start!436958 (is-Cons!50061 l!12858)) b!4457660))

(declare-fun m!5160377 () Bool)

(assert (=> b!4457662 m!5160377))

(declare-fun m!5160379 () Bool)

(assert (=> start!436958 m!5160379))

(declare-fun m!5160381 () Bool)

(assert (=> start!436958 m!5160381))

(declare-fun m!5160383 () Bool)

(assert (=> b!4457659 m!5160383))

(assert (=> b!4457659 m!5160383))

(declare-fun m!5160385 () Bool)

(assert (=> b!4457659 m!5160385))

(assert (=> b!4457661 m!5160379))

(declare-fun m!5160387 () Bool)

(assert (=> b!4457663 m!5160387))

(push 1)

(assert (not b!4457660))

(assert (not start!436958))

(assert (not b!4457662))

(assert tp_is_empty!26963)

(assert (not b!4457663))

(assert (not b!4457664))

(assert tp_is_empty!26961)

(assert (not b!4457661))

(assert (not b!4457659))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

