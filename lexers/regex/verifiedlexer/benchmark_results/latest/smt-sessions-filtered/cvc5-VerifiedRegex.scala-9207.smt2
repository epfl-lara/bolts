; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489300 () Bool)

(assert start!489300)

(declare-fun b!4774665 () Bool)

(declare-fun e!2980785 () Bool)

(declare-fun tp!1356969 () Bool)

(assert (=> b!4774665 (= e!2980785 tp!1356969)))

(declare-fun res!2025863 () Bool)

(declare-fun e!2980786 () Bool)

(assert (=> start!489300 (=> (not res!2025863) (not e!2980786))))

(declare-datatypes ((K!15322 0))(
  ( (K!15323 (val!20563 Int)) )
))
(declare-datatypes ((V!15568 0))(
  ( (V!15569 (val!20564 Int)) )
))
(declare-datatypes ((tuple2!56100 0))(
  ( (tuple2!56101 (_1!31344 K!15322) (_2!31344 V!15568)) )
))
(declare-datatypes ((List!53909 0))(
  ( (Nil!53785) (Cons!53785 (h!60199 tuple2!56100) (t!361359 List!53909)) )
))
(declare-datatypes ((tuple2!56102 0))(
  ( (tuple2!56103 (_1!31345 (_ BitVec 64)) (_2!31345 List!53909)) )
))
(declare-datatypes ((List!53910 0))(
  ( (Nil!53786) (Cons!53786 (h!60200 tuple2!56102) (t!361360 List!53910)) )
))
(declare-datatypes ((ListLongMap!4967 0))(
  ( (ListLongMap!4968 (toList!6549 List!53910)) )
))
(declare-fun lm!2709 () ListLongMap!4967)

(declare-fun lambda!226320 () Int)

(declare-fun forall!12001 (List!53910 Int) Bool)

(assert (=> start!489300 (= res!2025863 (forall!12001 (toList!6549 lm!2709) lambda!226320))))

(assert (=> start!489300 e!2980786))

(declare-fun inv!69349 (ListLongMap!4967) Bool)

(assert (=> start!489300 (and (inv!69349 lm!2709) e!2980785)))

(assert (=> start!489300 true))

(declare-fun tp_is_empty!32901 () Bool)

(assert (=> start!489300 tp_is_empty!32901))

(declare-fun b!4774666 () Bool)

(declare-fun e!2980787 () Bool)

(assert (=> b!4774666 (= e!2980786 (not e!2980787))))

(declare-fun res!2025865 () Bool)

(assert (=> b!4774666 (=> res!2025865 e!2980787)))

(assert (=> b!4774666 (= res!2025865 (not (forall!12001 (toList!6549 lm!2709) lambda!226320)))))

(declare-fun key!6641 () K!15322)

(declare-datatypes ((ListMap!6025 0))(
  ( (ListMap!6026 (toList!6550 List!53909)) )
))
(declare-fun contains!17240 (ListMap!6025 K!15322) Bool)

(declare-fun extractMap!2264 (List!53910) ListMap!6025)

(assert (=> b!4774666 (contains!17240 (extractMap!2264 (toList!6549 lm!2709)) key!6641)))

(declare-datatypes ((Unit!138773 0))(
  ( (Unit!138774) )
))
(declare-fun lt!1937694 () Unit!138773)

(declare-datatypes ((Hashable!6733 0))(
  ( (HashableExt!6732 (__x!32756 Int)) )
))
(declare-fun hashF!1687 () Hashable!6733)

(declare-fun lemmaListContainsThenExtractedMapContains!585 (ListLongMap!4967 K!15322 Hashable!6733) Unit!138773)

(assert (=> b!4774666 (= lt!1937694 (lemmaListContainsThenExtractedMapContains!585 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4774667 () Bool)

(declare-fun res!2025866 () Bool)

(assert (=> b!4774667 (=> (not res!2025866) (not e!2980786))))

(declare-fun allKeysSameHashInMap!2138 (ListLongMap!4967 Hashable!6733) Bool)

(assert (=> b!4774667 (= res!2025866 (allKeysSameHashInMap!2138 lm!2709 hashF!1687))))

(declare-fun b!4774668 () Bool)

(declare-fun res!2025864 () Bool)

(assert (=> b!4774668 (=> (not res!2025864) (not e!2980786))))

(declare-fun containsKeyBiggerList!389 (List!53910 K!15322) Bool)

(assert (=> b!4774668 (= res!2025864 (containsKeyBiggerList!389 (toList!6549 lm!2709) key!6641))))

(declare-fun b!4774669 () Bool)

(assert (=> b!4774669 (= e!2980787 (forall!12001 (toList!6549 lm!2709) lambda!226320))))

(assert (= (and start!489300 res!2025863) b!4774667))

(assert (= (and b!4774667 res!2025866) b!4774668))

(assert (= (and b!4774668 res!2025864) b!4774666))

(assert (= (and b!4774666 (not res!2025865)) b!4774669))

(assert (= start!489300 b!4774665))

(declare-fun m!5748760 () Bool)

(assert (=> b!4774667 m!5748760))

(declare-fun m!5748762 () Bool)

(assert (=> b!4774668 m!5748762))

(declare-fun m!5748764 () Bool)

(assert (=> start!489300 m!5748764))

(declare-fun m!5748766 () Bool)

(assert (=> start!489300 m!5748766))

(assert (=> b!4774669 m!5748764))

(assert (=> b!4774666 m!5748764))

(declare-fun m!5748768 () Bool)

(assert (=> b!4774666 m!5748768))

(assert (=> b!4774666 m!5748768))

(declare-fun m!5748770 () Bool)

(assert (=> b!4774666 m!5748770))

(declare-fun m!5748772 () Bool)

(assert (=> b!4774666 m!5748772))

(push 1)

(assert (not b!4774666))

(assert (not b!4774667))

(assert (not start!489300))

(assert tp_is_empty!32901)

(assert (not b!4774668))

(assert (not b!4774669))

(assert (not b!4774665))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

