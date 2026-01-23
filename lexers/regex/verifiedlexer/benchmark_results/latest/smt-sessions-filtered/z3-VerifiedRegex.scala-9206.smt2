; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!489298 () Bool)

(assert start!489298)

(declare-fun b!4774651 () Bool)

(declare-fun res!2025853 () Bool)

(declare-fun e!2980777 () Bool)

(assert (=> b!4774651 (=> (not res!2025853) (not e!2980777))))

(declare-datatypes ((K!15319 0))(
  ( (K!15320 (val!20561 Int)) )
))
(declare-datatypes ((V!15565 0))(
  ( (V!15566 (val!20562 Int)) )
))
(declare-datatypes ((tuple2!56096 0))(
  ( (tuple2!56097 (_1!31342 K!15319) (_2!31342 V!15565)) )
))
(declare-datatypes ((List!53907 0))(
  ( (Nil!53783) (Cons!53783 (h!60197 tuple2!56096) (t!361357 List!53907)) )
))
(declare-datatypes ((tuple2!56098 0))(
  ( (tuple2!56099 (_1!31343 (_ BitVec 64)) (_2!31343 List!53907)) )
))
(declare-datatypes ((List!53908 0))(
  ( (Nil!53784) (Cons!53784 (h!60198 tuple2!56098) (t!361358 List!53908)) )
))
(declare-datatypes ((ListLongMap!4965 0))(
  ( (ListLongMap!4966 (toList!6548 List!53908)) )
))
(declare-fun lm!2709 () ListLongMap!4965)

(declare-datatypes ((Hashable!6732 0))(
  ( (HashableExt!6731 (__x!32755 Int)) )
))
(declare-fun hashF!1687 () Hashable!6732)

(declare-fun allKeysSameHashInMap!2137 (ListLongMap!4965 Hashable!6732) Bool)

(assert (=> b!4774651 (= res!2025853 (allKeysSameHashInMap!2137 lm!2709 hashF!1687))))

(declare-fun b!4774652 () Bool)

(declare-fun res!2025852 () Bool)

(assert (=> b!4774652 (=> (not res!2025852) (not e!2980777))))

(declare-fun key!6641 () K!15319)

(declare-fun containsKeyBiggerList!388 (List!53908 K!15319) Bool)

(assert (=> b!4774652 (= res!2025852 (containsKeyBiggerList!388 (toList!6548 lm!2709) key!6641))))

(declare-fun res!2025854 () Bool)

(assert (=> start!489298 (=> (not res!2025854) (not e!2980777))))

(declare-fun lambda!226313 () Int)

(declare-fun forall!12000 (List!53908 Int) Bool)

(assert (=> start!489298 (= res!2025854 (forall!12000 (toList!6548 lm!2709) lambda!226313))))

(assert (=> start!489298 e!2980777))

(declare-fun e!2980778 () Bool)

(declare-fun inv!69345 (ListLongMap!4965) Bool)

(assert (=> start!489298 (and (inv!69345 lm!2709) e!2980778)))

(assert (=> start!489298 true))

(declare-fun tp_is_empty!32899 () Bool)

(assert (=> start!489298 tp_is_empty!32899))

(declare-fun b!4774653 () Bool)

(assert (=> b!4774653 (= e!2980777 false)))

(declare-fun b!4774654 () Bool)

(declare-fun tp!1356966 () Bool)

(assert (=> b!4774654 (= e!2980778 tp!1356966)))

(assert (= (and start!489298 res!2025854) b!4774651))

(assert (= (and b!4774651 res!2025853) b!4774652))

(assert (= (and b!4774652 res!2025852) b!4774653))

(assert (= start!489298 b!4774654))

(declare-fun m!5748752 () Bool)

(assert (=> b!4774651 m!5748752))

(declare-fun m!5748754 () Bool)

(assert (=> b!4774652 m!5748754))

(declare-fun m!5748756 () Bool)

(assert (=> start!489298 m!5748756))

(declare-fun m!5748758 () Bool)

(assert (=> start!489298 m!5748758))

(check-sat tp_is_empty!32899 (not start!489298) (not b!4774654) (not b!4774651) (not b!4774652))
(check-sat)
