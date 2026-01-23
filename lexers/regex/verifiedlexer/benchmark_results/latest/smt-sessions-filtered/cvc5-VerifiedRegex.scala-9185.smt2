; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488808 () Bool)

(assert start!488808)

(declare-fun b!4772713 () Bool)

(declare-fun e!2979482 () Bool)

(assert (=> b!4772713 (= e!2979482 false)))

(declare-fun b!4772711 () Bool)

(declare-fun res!2024657 () Bool)

(assert (=> b!4772711 (=> (not res!2024657) (not e!2979482))))

(declare-datatypes ((K!15212 0))(
  ( (K!15213 (val!20475 Int)) )
))
(declare-datatypes ((V!15458 0))(
  ( (V!15459 (val!20476 Int)) )
))
(declare-datatypes ((tuple2!55924 0))(
  ( (tuple2!55925 (_1!31256 K!15212) (_2!31256 V!15458)) )
))
(declare-datatypes ((List!53815 0))(
  ( (Nil!53691) (Cons!53691 (h!60103 tuple2!55924) (t!361265 List!53815)) )
))
(declare-datatypes ((tuple2!55926 0))(
  ( (tuple2!55927 (_1!31257 (_ BitVec 64)) (_2!31257 List!53815)) )
))
(declare-datatypes ((List!53816 0))(
  ( (Nil!53692) (Cons!53692 (h!60104 tuple2!55926) (t!361266 List!53816)) )
))
(declare-datatypes ((ListLongMap!4879 0))(
  ( (ListLongMap!4880 (toList!6465 List!53816)) )
))
(declare-fun lm!1309 () ListLongMap!4879)

(declare-datatypes ((Hashable!6689 0))(
  ( (HashableExt!6688 (__x!32712 Int)) )
))
(declare-fun hashF!980 () Hashable!6689)

(declare-fun allKeysSameHashInMap!2094 (ListLongMap!4879 Hashable!6689) Bool)

(assert (=> b!4772711 (= res!2024657 (allKeysSameHashInMap!2094 lm!1309 hashF!980))))

(declare-fun res!2024658 () Bool)

(assert (=> start!488808 (=> (not res!2024658) (not e!2979482))))

(declare-fun lambda!225682 () Int)

(declare-fun forall!11953 (List!53816 Int) Bool)

(assert (=> start!488808 (= res!2024658 (forall!11953 (toList!6465 lm!1309) lambda!225682))))

(assert (=> start!488808 e!2979482))

(declare-fun e!2979481 () Bool)

(declare-fun inv!69239 (ListLongMap!4879) Bool)

(assert (=> start!488808 (and (inv!69239 lm!1309) e!2979481)))

(assert (=> start!488808 true))

(declare-fun tp_is_empty!32749 () Bool)

(assert (=> start!488808 tp_is_empty!32749))

(declare-fun b!4772714 () Bool)

(declare-fun tp!1356783 () Bool)

(assert (=> b!4772714 (= e!2979481 tp!1356783)))

(declare-fun b!4772712 () Bool)

(declare-fun res!2024659 () Bool)

(assert (=> b!4772712 (=> (not res!2024659) (not e!2979482))))

(declare-fun key!2872 () K!15212)

(declare-datatypes ((ListMap!5945 0))(
  ( (ListMap!5946 (toList!6466 List!53815)) )
))
(declare-fun contains!17117 (ListMap!5945 K!15212) Bool)

(declare-fun extractMap!2224 (List!53816) ListMap!5945)

(assert (=> b!4772712 (= res!2024659 (contains!17117 (extractMap!2224 (toList!6465 lm!1309)) key!2872))))

(assert (= (and start!488808 res!2024658) b!4772711))

(assert (= (and b!4772711 res!2024657) b!4772712))

(assert (= (and b!4772712 res!2024659) b!4772713))

(assert (= start!488808 b!4772714))

(declare-fun m!5745604 () Bool)

(assert (=> b!4772711 m!5745604))

(declare-fun m!5745606 () Bool)

(assert (=> start!488808 m!5745606))

(declare-fun m!5745608 () Bool)

(assert (=> start!488808 m!5745608))

(declare-fun m!5745610 () Bool)

(assert (=> b!4772712 m!5745610))

(assert (=> b!4772712 m!5745610))

(declare-fun m!5745612 () Bool)

(assert (=> b!4772712 m!5745612))

(push 1)

(assert (not b!4772712))

(assert (not b!4772711))

(assert (not start!488808))

(assert (not b!4772714))

(assert tp_is_empty!32749)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

