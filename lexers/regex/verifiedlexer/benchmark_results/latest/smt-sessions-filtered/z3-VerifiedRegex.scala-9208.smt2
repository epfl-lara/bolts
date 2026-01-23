; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!489306 () Bool)

(assert start!489306)

(declare-fun res!2025895 () Bool)

(declare-fun e!2980808 () Bool)

(assert (=> start!489306 (=> (not res!2025895) (not e!2980808))))

(declare-datatypes ((K!15329 0))(
  ( (K!15330 (val!20569 Int)) )
))
(declare-datatypes ((V!15575 0))(
  ( (V!15576 (val!20570 Int)) )
))
(declare-datatypes ((tuple2!56112 0))(
  ( (tuple2!56113 (_1!31350 K!15329) (_2!31350 V!15575)) )
))
(declare-datatypes ((List!53915 0))(
  ( (Nil!53791) (Cons!53791 (h!60205 tuple2!56112) (t!361365 List!53915)) )
))
(declare-datatypes ((tuple2!56114 0))(
  ( (tuple2!56115 (_1!31351 (_ BitVec 64)) (_2!31351 List!53915)) )
))
(declare-datatypes ((List!53916 0))(
  ( (Nil!53792) (Cons!53792 (h!60206 tuple2!56114) (t!361366 List!53916)) )
))
(declare-datatypes ((ListLongMap!4973 0))(
  ( (ListLongMap!4974 (toList!6555 List!53916)) )
))
(declare-fun lm!2709 () ListLongMap!4973)

(declare-fun lambda!226333 () Int)

(declare-fun forall!12004 (List!53916 Int) Bool)

(assert (=> start!489306 (= res!2025895 (forall!12004 (toList!6555 lm!2709) lambda!226333))))

(assert (=> start!489306 e!2980808))

(declare-fun e!2980807 () Bool)

(declare-fun inv!69355 (ListLongMap!4973) Bool)

(assert (=> start!489306 (and (inv!69355 lm!2709) e!2980807)))

(assert (=> start!489306 true))

(declare-fun tp_is_empty!32907 () Bool)

(assert (=> start!489306 tp_is_empty!32907))

(declare-fun b!4774708 () Bool)

(declare-fun tp!1356978 () Bool)

(assert (=> b!4774708 (= e!2980807 tp!1356978)))

(declare-fun b!4774707 () Bool)

(assert (=> b!4774707 (= e!2980808 (not true))))

(declare-fun key!6641 () K!15329)

(declare-datatypes ((ListMap!6031 0))(
  ( (ListMap!6032 (toList!6556 List!53915)) )
))
(declare-fun contains!17243 (ListMap!6031 K!15329) Bool)

(declare-fun extractMap!2267 (List!53916) ListMap!6031)

(assert (=> b!4774707 (contains!17243 (extractMap!2267 (toList!6555 lm!2709)) key!6641)))

(declare-datatypes ((Unit!138779 0))(
  ( (Unit!138780) )
))
(declare-fun lt!1937703 () Unit!138779)

(declare-datatypes ((Hashable!6736 0))(
  ( (HashableExt!6735 (__x!32759 Int)) )
))
(declare-fun hashF!1687 () Hashable!6736)

(declare-fun lemmaListContainsThenExtractedMapContains!588 (ListLongMap!4973 K!15329 Hashable!6736) Unit!138779)

(assert (=> b!4774707 (= lt!1937703 (lemmaListContainsThenExtractedMapContains!588 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4774705 () Bool)

(declare-fun res!2025894 () Bool)

(assert (=> b!4774705 (=> (not res!2025894) (not e!2980808))))

(declare-fun allKeysSameHashInMap!2141 (ListLongMap!4973 Hashable!6736) Bool)

(assert (=> b!4774705 (= res!2025894 (allKeysSameHashInMap!2141 lm!2709 hashF!1687))))

(declare-fun b!4774706 () Bool)

(declare-fun res!2025896 () Bool)

(assert (=> b!4774706 (=> (not res!2025896) (not e!2980808))))

(declare-fun containsKeyBiggerList!392 (List!53916 K!15329) Bool)

(assert (=> b!4774706 (= res!2025896 (containsKeyBiggerList!392 (toList!6555 lm!2709) key!6641))))

(assert (= (and start!489306 res!2025895) b!4774705))

(assert (= (and b!4774705 res!2025894) b!4774706))

(assert (= (and b!4774706 res!2025896) b!4774707))

(assert (= start!489306 b!4774708))

(declare-fun m!5748802 () Bool)

(assert (=> start!489306 m!5748802))

(declare-fun m!5748804 () Bool)

(assert (=> start!489306 m!5748804))

(declare-fun m!5748806 () Bool)

(assert (=> b!4774707 m!5748806))

(assert (=> b!4774707 m!5748806))

(declare-fun m!5748808 () Bool)

(assert (=> b!4774707 m!5748808))

(declare-fun m!5748810 () Bool)

(assert (=> b!4774707 m!5748810))

(declare-fun m!5748812 () Bool)

(assert (=> b!4774705 m!5748812))

(declare-fun m!5748814 () Bool)

(assert (=> b!4774706 m!5748814))

(check-sat (not start!489306) (not b!4774705) (not b!4774707) (not b!4774708) tp_is_empty!32907 (not b!4774706))
(check-sat)
