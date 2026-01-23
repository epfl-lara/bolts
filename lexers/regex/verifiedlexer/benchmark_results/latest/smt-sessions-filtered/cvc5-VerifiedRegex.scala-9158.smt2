; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488442 () Bool)

(assert start!488442)

(declare-fun b!4771072 () Bool)

(declare-fun e!2978347 () Bool)

(declare-fun tp!1356585 () Bool)

(assert (=> b!4771072 (= e!2978347 tp!1356585)))

(declare-fun b!4771070 () Bool)

(declare-fun res!2023524 () Bool)

(declare-fun e!2978348 () Bool)

(assert (=> b!4771070 (=> (not res!2023524) (not e!2978348))))

(declare-datatypes ((K!15077 0))(
  ( (K!15078 (val!20367 Int)) )
))
(declare-datatypes ((V!15323 0))(
  ( (V!15324 (val!20368 Int)) )
))
(declare-datatypes ((tuple2!55708 0))(
  ( (tuple2!55709 (_1!31148 K!15077) (_2!31148 V!15323)) )
))
(declare-datatypes ((List!53702 0))(
  ( (Nil!53578) (Cons!53578 (h!59990 tuple2!55708) (t!361152 List!53702)) )
))
(declare-datatypes ((tuple2!55710 0))(
  ( (tuple2!55711 (_1!31149 (_ BitVec 64)) (_2!31149 List!53702)) )
))
(declare-datatypes ((List!53703 0))(
  ( (Nil!53579) (Cons!53579 (h!59991 tuple2!55710) (t!361153 List!53703)) )
))
(declare-datatypes ((ListLongMap!4771 0))(
  ( (ListLongMap!4772 (toList!6357 List!53703)) )
))
(declare-fun lm!1309 () ListLongMap!4771)

(declare-fun key!2872 () K!15077)

(declare-datatypes ((ListMap!5837 0))(
  ( (ListMap!5838 (toList!6358 List!53702)) )
))
(declare-fun contains!16953 (ListMap!5837 K!15077) Bool)

(declare-fun extractMap!2170 (List!53703) ListMap!5837)

(assert (=> b!4771070 (= res!2023524 (contains!16953 (extractMap!2170 (toList!6357 lm!1309)) key!2872))))

(declare-fun b!4771069 () Bool)

(declare-fun res!2023523 () Bool)

(assert (=> b!4771069 (=> (not res!2023523) (not e!2978348))))

(declare-datatypes ((Hashable!6635 0))(
  ( (HashableExt!6634 (__x!32658 Int)) )
))
(declare-fun hashF!980 () Hashable!6635)

(declare-fun allKeysSameHashInMap!2040 (ListLongMap!4771 Hashable!6635) Bool)

(assert (=> b!4771069 (= res!2023523 (allKeysSameHashInMap!2040 lm!1309 hashF!980))))

(declare-fun b!4771071 () Bool)

(assert (=> b!4771071 (= e!2978348 (not true))))

(declare-fun lt!1933349 () List!53702)

(declare-fun lt!1933348 () (_ BitVec 64))

(declare-fun apply!12680 (ListLongMap!4771 (_ BitVec 64)) List!53702)

(assert (=> b!4771071 (= lt!1933349 (apply!12680 lm!1309 lt!1933348))))

(declare-fun contains!16954 (ListLongMap!4771 (_ BitVec 64)) Bool)

(assert (=> b!4771071 (contains!16954 lm!1309 lt!1933348)))

(declare-fun hash!4609 (Hashable!6635 K!15077) (_ BitVec 64))

(assert (=> b!4771071 (= lt!1933348 (hash!4609 hashF!980 key!2872))))

(declare-datatypes ((Unit!138471 0))(
  ( (Unit!138472) )
))
(declare-fun lt!1933350 () Unit!138471)

(declare-fun lemmaInGenMapThenLongMapContainsHash!851 (ListLongMap!4771 K!15077 Hashable!6635) Unit!138471)

(assert (=> b!4771071 (= lt!1933350 (lemmaInGenMapThenLongMapContainsHash!851 lm!1309 key!2872 hashF!980))))

(declare-fun res!2023525 () Bool)

(assert (=> start!488442 (=> (not res!2023525) (not e!2978348))))

(declare-fun lambda!224979 () Int)

(declare-fun forall!11899 (List!53703 Int) Bool)

(assert (=> start!488442 (= res!2023525 (forall!11899 (toList!6357 lm!1309) lambda!224979))))

(assert (=> start!488442 e!2978348))

(declare-fun inv!69104 (ListLongMap!4771) Bool)

(assert (=> start!488442 (and (inv!69104 lm!1309) e!2978347)))

(assert (=> start!488442 true))

(declare-fun tp_is_empty!32565 () Bool)

(assert (=> start!488442 tp_is_empty!32565))

(assert (= (and start!488442 res!2023525) b!4771069))

(assert (= (and b!4771069 res!2023523) b!4771070))

(assert (= (and b!4771070 res!2023524) b!4771071))

(assert (= start!488442 b!4771072))

(declare-fun m!5742858 () Bool)

(assert (=> b!4771070 m!5742858))

(assert (=> b!4771070 m!5742858))

(declare-fun m!5742860 () Bool)

(assert (=> b!4771070 m!5742860))

(declare-fun m!5742862 () Bool)

(assert (=> b!4771069 m!5742862))

(declare-fun m!5742864 () Bool)

(assert (=> b!4771071 m!5742864))

(declare-fun m!5742866 () Bool)

(assert (=> b!4771071 m!5742866))

(declare-fun m!5742868 () Bool)

(assert (=> b!4771071 m!5742868))

(declare-fun m!5742870 () Bool)

(assert (=> b!4771071 m!5742870))

(declare-fun m!5742872 () Bool)

(assert (=> start!488442 m!5742872))

(declare-fun m!5742874 () Bool)

(assert (=> start!488442 m!5742874))

(push 1)

(assert tp_is_empty!32565)

(assert (not b!4771072))

(assert (not start!488442))

(assert (not b!4771070))

(assert (not b!4771069))

(assert (not b!4771071))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

