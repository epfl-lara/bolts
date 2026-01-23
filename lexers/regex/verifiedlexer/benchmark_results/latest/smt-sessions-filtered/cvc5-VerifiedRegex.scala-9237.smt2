; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489968 () Bool)

(assert start!489968)

(declare-fun b!4777687 () Bool)

(declare-fun e!2982627 () Bool)

(assert (=> b!4777687 (= e!2982627 false)))

(declare-fun res!2027923 () Bool)

(assert (=> start!489968 (=> (not res!2027923) (not e!2982627))))

(declare-datatypes ((K!15472 0))(
  ( (K!15473 (val!20683 Int)) )
))
(declare-datatypes ((V!15718 0))(
  ( (V!15719 (val!20684 Int)) )
))
(declare-datatypes ((tuple2!56340 0))(
  ( (tuple2!56341 (_1!31464 K!15472) (_2!31464 V!15718)) )
))
(declare-datatypes ((List!54037 0))(
  ( (Nil!53913) (Cons!53913 (h!60327 tuple2!56340) (t!361487 List!54037)) )
))
(declare-datatypes ((tuple2!56342 0))(
  ( (tuple2!56343 (_1!31465 (_ BitVec 64)) (_2!31465 List!54037)) )
))
(declare-datatypes ((List!54038 0))(
  ( (Nil!53914) (Cons!53914 (h!60328 tuple2!56342) (t!361488 List!54038)) )
))
(declare-datatypes ((ListLongMap!5087 0))(
  ( (ListLongMap!5088 (toList!6667 List!54038)) )
))
(declare-fun lm!2709 () ListLongMap!5087)

(declare-fun lambda!227248 () Int)

(declare-fun forall!12069 (List!54038 Int) Bool)

(assert (=> start!489968 (= res!2027923 (forall!12069 (toList!6667 lm!2709) lambda!227248))))

(assert (=> start!489968 e!2982627))

(declare-fun e!2982628 () Bool)

(declare-fun inv!69499 (ListLongMap!5087) Bool)

(assert (=> start!489968 (and (inv!69499 lm!2709) e!2982628)))

(assert (=> start!489968 true))

(declare-fun tp_is_empty!33097 () Bool)

(assert (=> start!489968 tp_is_empty!33097))

(declare-fun b!4777688 () Bool)

(declare-fun tp!1357217 () Bool)

(assert (=> b!4777688 (= e!2982628 tp!1357217)))

(declare-fun b!4777686 () Bool)

(declare-fun res!2027925 () Bool)

(assert (=> b!4777686 (=> (not res!2027925) (not e!2982627))))

(declare-fun key!6641 () K!15472)

(declare-fun containsKeyBiggerList!449 (List!54038 K!15472) Bool)

(assert (=> b!4777686 (= res!2027925 (containsKeyBiggerList!449 (toList!6667 lm!2709) key!6641))))

(declare-fun b!4777685 () Bool)

(declare-fun res!2027924 () Bool)

(assert (=> b!4777685 (=> (not res!2027924) (not e!2982627))))

(declare-datatypes ((Hashable!6793 0))(
  ( (HashableExt!6792 (__x!32816 Int)) )
))
(declare-fun hashF!1687 () Hashable!6793)

(declare-fun allKeysSameHashInMap!2198 (ListLongMap!5087 Hashable!6793) Bool)

(assert (=> b!4777685 (= res!2027924 (allKeysSameHashInMap!2198 lm!2709 hashF!1687))))

(assert (= (and start!489968 res!2027923) b!4777685))

(assert (= (and b!4777685 res!2027924) b!4777686))

(assert (= (and b!4777686 res!2027925) b!4777687))

(assert (= start!489968 b!4777688))

(declare-fun m!5753370 () Bool)

(assert (=> start!489968 m!5753370))

(declare-fun m!5753372 () Bool)

(assert (=> start!489968 m!5753372))

(declare-fun m!5753374 () Bool)

(assert (=> b!4777686 m!5753374))

(declare-fun m!5753376 () Bool)

(assert (=> b!4777685 m!5753376))

(push 1)

(assert tp_is_empty!33097)

(assert (not b!4777686))

(assert (not b!4777685))

(assert (not b!4777688))

(assert (not start!489968))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

