; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489964 () Bool)

(assert start!489964)

(declare-fun b!4777662 () Bool)

(declare-fun res!2027905 () Bool)

(declare-fun e!2982616 () Bool)

(assert (=> b!4777662 (=> (not res!2027905) (not e!2982616))))

(declare-datatypes ((K!15467 0))(
  ( (K!15468 (val!20679 Int)) )
))
(declare-datatypes ((V!15713 0))(
  ( (V!15714 (val!20680 Int)) )
))
(declare-datatypes ((tuple2!56332 0))(
  ( (tuple2!56333 (_1!31460 K!15467) (_2!31460 V!15713)) )
))
(declare-datatypes ((List!54033 0))(
  ( (Nil!53909) (Cons!53909 (h!60323 tuple2!56332) (t!361483 List!54033)) )
))
(declare-datatypes ((tuple2!56334 0))(
  ( (tuple2!56335 (_1!31461 (_ BitVec 64)) (_2!31461 List!54033)) )
))
(declare-datatypes ((List!54034 0))(
  ( (Nil!53910) (Cons!53910 (h!60324 tuple2!56334) (t!361484 List!54034)) )
))
(declare-datatypes ((ListLongMap!5083 0))(
  ( (ListLongMap!5084 (toList!6665 List!54034)) )
))
(declare-fun lm!2709 () ListLongMap!5083)

(declare-fun key!6641 () K!15467)

(declare-fun containsKeyBiggerList!447 (List!54034 K!15467) Bool)

(assert (=> b!4777662 (= res!2027905 (containsKeyBiggerList!447 (toList!6665 lm!2709) key!6641))))

(declare-fun res!2027906 () Bool)

(assert (=> start!489964 (=> (not res!2027906) (not e!2982616))))

(declare-fun lambda!227240 () Int)

(declare-fun forall!12067 (List!54034 Int) Bool)

(assert (=> start!489964 (= res!2027906 (forall!12067 (toList!6665 lm!2709) lambda!227240))))

(assert (=> start!489964 e!2982616))

(declare-fun e!2982615 () Bool)

(declare-fun inv!69494 (ListLongMap!5083) Bool)

(assert (=> start!489964 (and (inv!69494 lm!2709) e!2982615)))

(assert (=> start!489964 true))

(declare-fun tp_is_empty!33093 () Bool)

(assert (=> start!489964 tp_is_empty!33093))

(declare-fun b!4777663 () Bool)

(assert (=> b!4777663 (= e!2982616 (not (forall!12067 (toList!6665 lm!2709) lambda!227240)))))

(declare-fun b!4777664 () Bool)

(declare-fun tp!1357211 () Bool)

(assert (=> b!4777664 (= e!2982615 tp!1357211)))

(declare-fun b!4777661 () Bool)

(declare-fun res!2027907 () Bool)

(assert (=> b!4777661 (=> (not res!2027907) (not e!2982616))))

(declare-datatypes ((Hashable!6791 0))(
  ( (HashableExt!6790 (__x!32814 Int)) )
))
(declare-fun hashF!1687 () Hashable!6791)

(declare-fun allKeysSameHashInMap!2196 (ListLongMap!5083 Hashable!6791) Bool)

(assert (=> b!4777661 (= res!2027907 (allKeysSameHashInMap!2196 lm!2709 hashF!1687))))

(assert (= (and start!489964 res!2027906) b!4777661))

(assert (= (and b!4777661 res!2027907) b!4777662))

(assert (= (and b!4777662 res!2027905) b!4777663))

(assert (= start!489964 b!4777664))

(declare-fun m!5753354 () Bool)

(assert (=> b!4777662 m!5753354))

(declare-fun m!5753356 () Bool)

(assert (=> start!489964 m!5753356))

(declare-fun m!5753358 () Bool)

(assert (=> start!489964 m!5753358))

(assert (=> b!4777663 m!5753356))

(declare-fun m!5753360 () Bool)

(assert (=> b!4777661 m!5753360))

(push 1)

(assert (not b!4777663))

(assert (not b!4777662))

(assert (not b!4777661))

(assert tp_is_empty!33093)

(assert (not b!4777664))

(assert (not start!489964))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

