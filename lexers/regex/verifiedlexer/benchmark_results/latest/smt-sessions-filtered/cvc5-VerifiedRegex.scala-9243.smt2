; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!490212 () Bool)

(assert start!490212)

(declare-fun b!4778630 () Bool)

(declare-fun res!2028487 () Bool)

(declare-fun e!2983271 () Bool)

(assert (=> b!4778630 (=> (not res!2028487) (not e!2983271))))

(declare-datatypes ((K!15502 0))(
  ( (K!15503 (val!20707 Int)) )
))
(declare-datatypes ((V!15748 0))(
  ( (V!15749 (val!20708 Int)) )
))
(declare-datatypes ((tuple2!56388 0))(
  ( (tuple2!56389 (_1!31488 K!15502) (_2!31488 V!15748)) )
))
(declare-datatypes ((List!54063 0))(
  ( (Nil!53939) (Cons!53939 (h!60355 tuple2!56388) (t!361513 List!54063)) )
))
(declare-datatypes ((tuple2!56390 0))(
  ( (tuple2!56391 (_1!31489 (_ BitVec 64)) (_2!31489 List!54063)) )
))
(declare-datatypes ((List!54064 0))(
  ( (Nil!53940) (Cons!53940 (h!60356 tuple2!56390) (t!361514 List!54064)) )
))
(declare-datatypes ((ListLongMap!5111 0))(
  ( (ListLongMap!5112 (toList!6689 List!54064)) )
))
(declare-fun lm!2709 () ListLongMap!5111)

(declare-fun key!6641 () K!15502)

(declare-fun containsKeyBiggerList!461 (List!54064 K!15502) Bool)

(assert (=> b!4778630 (= res!2028487 (containsKeyBiggerList!461 (toList!6689 lm!2709) key!6641))))

(declare-fun b!4778631 () Bool)

(assert (=> b!4778631 (= e!2983271 (not true))))

(declare-fun lambda!227478 () Int)

(declare-datatypes ((Unit!139098 0))(
  ( (Unit!139099) )
))
(declare-fun lt!1941460 () Unit!139098)

(declare-fun lt!1941456 () tuple2!56390)

(declare-fun forallContained!4030 (List!54064 Int tuple2!56390) Unit!139098)

(assert (=> b!4778631 (= lt!1941460 (forallContained!4030 (toList!6689 lm!2709) lambda!227478 lt!1941456))))

(declare-fun contains!17439 (List!54064 tuple2!56390) Bool)

(assert (=> b!4778631 (contains!17439 (toList!6689 lm!2709) lt!1941456)))

(declare-fun lt!1941455 () (_ BitVec 64))

(declare-fun lt!1941454 () List!54063)

(assert (=> b!4778631 (= lt!1941456 (tuple2!56391 lt!1941455 lt!1941454))))

(declare-fun lt!1941458 () Unit!139098)

(declare-fun lemmaGetValueImpliesTupleContained!584 (ListLongMap!5111 (_ BitVec 64) List!54063) Unit!139098)

(assert (=> b!4778631 (= lt!1941458 (lemmaGetValueImpliesTupleContained!584 lm!2709 lt!1941455 lt!1941454))))

(declare-fun apply!12860 (ListLongMap!5111 (_ BitVec 64)) List!54063)

(assert (=> b!4778631 (= lt!1941454 (apply!12860 lm!2709 lt!1941455))))

(declare-fun contains!17440 (ListLongMap!5111 (_ BitVec 64)) Bool)

(assert (=> b!4778631 (contains!17440 lm!2709 lt!1941455)))

(declare-datatypes ((Hashable!6805 0))(
  ( (HashableExt!6804 (__x!32828 Int)) )
))
(declare-fun hashF!1687 () Hashable!6805)

(declare-fun hash!4783 (Hashable!6805 K!15502) (_ BitVec 64))

(assert (=> b!4778631 (= lt!1941455 (hash!4783 hashF!1687 key!6641))))

(declare-fun lt!1941457 () Unit!139098)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1001 (ListLongMap!5111 K!15502 Hashable!6805) Unit!139098)

(assert (=> b!4778631 (= lt!1941457 (lemmaInGenMapThenLongMapContainsHash!1001 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6161 0))(
  ( (ListMap!6162 (toList!6690 List!54063)) )
))
(declare-fun contains!17441 (ListMap!6161 K!15502) Bool)

(declare-fun extractMap!2332 (List!54064) ListMap!6161)

(assert (=> b!4778631 (contains!17441 (extractMap!2332 (toList!6689 lm!2709)) key!6641)))

(declare-fun lt!1941459 () Unit!139098)

(declare-fun lemmaListContainsThenExtractedMapContains!653 (ListLongMap!5111 K!15502 Hashable!6805) Unit!139098)

(assert (=> b!4778631 (= lt!1941459 (lemmaListContainsThenExtractedMapContains!653 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4778629 () Bool)

(declare-fun res!2028488 () Bool)

(assert (=> b!4778629 (=> (not res!2028488) (not e!2983271))))

(declare-fun allKeysSameHashInMap!2210 (ListLongMap!5111 Hashable!6805) Bool)

(assert (=> b!4778629 (= res!2028488 (allKeysSameHashInMap!2210 lm!2709 hashF!1687))))

(declare-fun b!4778632 () Bool)

(declare-fun e!2983272 () Bool)

(declare-fun tp!1357283 () Bool)

(assert (=> b!4778632 (= e!2983272 tp!1357283)))

(declare-fun res!2028489 () Bool)

(assert (=> start!490212 (=> (not res!2028489) (not e!2983271))))

(declare-fun forall!12085 (List!54064 Int) Bool)

(assert (=> start!490212 (= res!2028489 (forall!12085 (toList!6689 lm!2709) lambda!227478))))

(assert (=> start!490212 e!2983271))

(declare-fun inv!69529 (ListLongMap!5111) Bool)

(assert (=> start!490212 (and (inv!69529 lm!2709) e!2983272)))

(assert (=> start!490212 true))

(declare-fun tp_is_empty!33125 () Bool)

(assert (=> start!490212 tp_is_empty!33125))

(assert (= (and start!490212 res!2028489) b!4778629))

(assert (= (and b!4778629 res!2028488) b!4778630))

(assert (= (and b!4778630 res!2028487) b!4778631))

(assert (= start!490212 b!4778632))

(declare-fun m!5754832 () Bool)

(assert (=> b!4778630 m!5754832))

(declare-fun m!5754834 () Bool)

(assert (=> b!4778631 m!5754834))

(declare-fun m!5754836 () Bool)

(assert (=> b!4778631 m!5754836))

(declare-fun m!5754838 () Bool)

(assert (=> b!4778631 m!5754838))

(declare-fun m!5754840 () Bool)

(assert (=> b!4778631 m!5754840))

(declare-fun m!5754842 () Bool)

(assert (=> b!4778631 m!5754842))

(declare-fun m!5754844 () Bool)

(assert (=> b!4778631 m!5754844))

(declare-fun m!5754846 () Bool)

(assert (=> b!4778631 m!5754846))

(declare-fun m!5754848 () Bool)

(assert (=> b!4778631 m!5754848))

(declare-fun m!5754850 () Bool)

(assert (=> b!4778631 m!5754850))

(assert (=> b!4778631 m!5754848))

(declare-fun m!5754852 () Bool)

(assert (=> b!4778631 m!5754852))

(declare-fun m!5754854 () Bool)

(assert (=> b!4778629 m!5754854))

(declare-fun m!5754856 () Bool)

(assert (=> start!490212 m!5754856))

(declare-fun m!5754858 () Bool)

(assert (=> start!490212 m!5754858))

(push 1)

(assert (not b!4778631))

(assert (not b!4778632))

(assert (not b!4778630))

(assert tp_is_empty!33125)

(assert (not start!490212))

(assert (not b!4778629))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

