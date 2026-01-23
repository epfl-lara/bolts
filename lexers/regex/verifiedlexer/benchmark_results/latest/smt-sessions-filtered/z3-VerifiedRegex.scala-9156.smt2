; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488436 () Bool)

(assert start!488436)

(declare-fun res!2023496 () Bool)

(declare-fun e!2978329 () Bool)

(assert (=> start!488436 (=> (not res!2023496) (not e!2978329))))

(declare-datatypes ((K!15069 0))(
  ( (K!15070 (val!20361 Int)) )
))
(declare-datatypes ((V!15315 0))(
  ( (V!15316 (val!20362 Int)) )
))
(declare-datatypes ((tuple2!55696 0))(
  ( (tuple2!55697 (_1!31142 K!15069) (_2!31142 V!15315)) )
))
(declare-datatypes ((List!53696 0))(
  ( (Nil!53572) (Cons!53572 (h!59984 tuple2!55696) (t!361146 List!53696)) )
))
(declare-datatypes ((tuple2!55698 0))(
  ( (tuple2!55699 (_1!31143 (_ BitVec 64)) (_2!31143 List!53696)) )
))
(declare-datatypes ((List!53697 0))(
  ( (Nil!53573) (Cons!53573 (h!59985 tuple2!55698) (t!361147 List!53697)) )
))
(declare-datatypes ((ListLongMap!4765 0))(
  ( (ListLongMap!4766 (toList!6351 List!53697)) )
))
(declare-fun lm!1309 () ListLongMap!4765)

(declare-fun lambda!224970 () Int)

(declare-fun forall!11896 (List!53697 Int) Bool)

(assert (=> start!488436 (= res!2023496 (forall!11896 (toList!6351 lm!1309) lambda!224970))))

(assert (=> start!488436 e!2978329))

(declare-fun e!2978330 () Bool)

(declare-fun inv!69095 (ListLongMap!4765) Bool)

(assert (=> start!488436 (and (inv!69095 lm!1309) e!2978330)))

(assert (=> start!488436 true))

(declare-fun tp_is_empty!32559 () Bool)

(assert (=> start!488436 tp_is_empty!32559))

(declare-fun b!4771035 () Bool)

(assert (=> b!4771035 (= e!2978329 false)))

(declare-fun b!4771036 () Bool)

(declare-fun tp!1356576 () Bool)

(assert (=> b!4771036 (= e!2978330 tp!1356576)))

(declare-fun b!4771034 () Bool)

(declare-fun res!2023498 () Bool)

(assert (=> b!4771034 (=> (not res!2023498) (not e!2978329))))

(declare-fun key!2872 () K!15069)

(declare-datatypes ((ListMap!5831 0))(
  ( (ListMap!5832 (toList!6352 List!53696)) )
))
(declare-fun contains!16948 (ListMap!5831 K!15069) Bool)

(declare-fun extractMap!2167 (List!53697) ListMap!5831)

(assert (=> b!4771034 (= res!2023498 (contains!16948 (extractMap!2167 (toList!6351 lm!1309)) key!2872))))

(declare-fun b!4771033 () Bool)

(declare-fun res!2023497 () Bool)

(assert (=> b!4771033 (=> (not res!2023497) (not e!2978329))))

(declare-datatypes ((Hashable!6632 0))(
  ( (HashableExt!6631 (__x!32655 Int)) )
))
(declare-fun hashF!980 () Hashable!6632)

(declare-fun allKeysSameHashInMap!2037 (ListLongMap!4765 Hashable!6632) Bool)

(assert (=> b!4771033 (= res!2023497 (allKeysSameHashInMap!2037 lm!1309 hashF!980))))

(assert (= (and start!488436 res!2023496) b!4771033))

(assert (= (and b!4771033 res!2023497) b!4771034))

(assert (= (and b!4771034 res!2023498) b!4771035))

(assert (= start!488436 b!4771036))

(declare-fun m!5742816 () Bool)

(assert (=> start!488436 m!5742816))

(declare-fun m!5742818 () Bool)

(assert (=> start!488436 m!5742818))

(declare-fun m!5742820 () Bool)

(assert (=> b!4771034 m!5742820))

(assert (=> b!4771034 m!5742820))

(declare-fun m!5742822 () Bool)

(assert (=> b!4771034 m!5742822))

(declare-fun m!5742824 () Bool)

(assert (=> b!4771033 m!5742824))

(check-sat tp_is_empty!32559 (not b!4771034) (not b!4771033) (not b!4771036) (not start!488436))
(check-sat)
