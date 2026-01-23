; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489976 () Bool)

(assert start!489976)

(declare-fun b!4777734 () Bool)

(declare-fun res!2027960 () Bool)

(declare-fun e!2982652 () Bool)

(assert (=> b!4777734 (=> (not res!2027960) (not e!2982652))))

(declare-datatypes ((K!15482 0))(
  ( (K!15483 (val!20691 Int)) )
))
(declare-datatypes ((V!15728 0))(
  ( (V!15729 (val!20692 Int)) )
))
(declare-datatypes ((tuple2!56356 0))(
  ( (tuple2!56357 (_1!31472 K!15482) (_2!31472 V!15728)) )
))
(declare-datatypes ((List!54045 0))(
  ( (Nil!53921) (Cons!53921 (h!60335 tuple2!56356) (t!361495 List!54045)) )
))
(declare-datatypes ((tuple2!56358 0))(
  ( (tuple2!56359 (_1!31473 (_ BitVec 64)) (_2!31473 List!54045)) )
))
(declare-datatypes ((List!54046 0))(
  ( (Nil!53922) (Cons!53922 (h!60336 tuple2!56358) (t!361496 List!54046)) )
))
(declare-datatypes ((ListLongMap!5095 0))(
  ( (ListLongMap!5096 (toList!6673 List!54046)) )
))
(declare-fun lm!2709 () ListLongMap!5095)

(declare-fun key!6641 () K!15482)

(declare-fun containsKeyBiggerList!453 (List!54046 K!15482) Bool)

(assert (=> b!4777734 (= res!2027960 (containsKeyBiggerList!453 (toList!6673 lm!2709) key!6641))))

(declare-fun b!4777736 () Bool)

(declare-fun e!2982651 () Bool)

(declare-fun tp!1357229 () Bool)

(assert (=> b!4777736 (= e!2982651 tp!1357229)))

(declare-fun b!4777735 () Bool)

(assert (=> b!4777735 (= e!2982652 (not true))))

(declare-datatypes ((ListMap!6145 0))(
  ( (ListMap!6146 (toList!6674 List!54045)) )
))
(declare-fun contains!17419 (ListMap!6145 K!15482) Bool)

(declare-fun extractMap!2324 (List!54046) ListMap!6145)

(assert (=> b!4777735 (contains!17419 (extractMap!2324 (toList!6673 lm!2709)) key!6641)))

(declare-datatypes ((Hashable!6797 0))(
  ( (HashableExt!6796 (__x!32820 Int)) )
))
(declare-fun hashF!1687 () Hashable!6797)

(declare-datatypes ((Unit!138984 0))(
  ( (Unit!138985) )
))
(declare-fun lt!1940842 () Unit!138984)

(declare-fun lemmaListContainsThenExtractedMapContains!645 (ListLongMap!5095 K!15482 Hashable!6797) Unit!138984)

(assert (=> b!4777735 (= lt!1940842 (lemmaListContainsThenExtractedMapContains!645 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4777733 () Bool)

(declare-fun res!2027961 () Bool)

(assert (=> b!4777733 (=> (not res!2027961) (not e!2982652))))

(declare-fun allKeysSameHashInMap!2202 (ListLongMap!5095 Hashable!6797) Bool)

(assert (=> b!4777733 (= res!2027961 (allKeysSameHashInMap!2202 lm!2709 hashF!1687))))

(declare-fun res!2027959 () Bool)

(assert (=> start!489976 (=> (not res!2027959) (not e!2982652))))

(declare-fun lambda!227264 () Int)

(declare-fun forall!12073 (List!54046 Int) Bool)

(assert (=> start!489976 (= res!2027959 (forall!12073 (toList!6673 lm!2709) lambda!227264))))

(assert (=> start!489976 e!2982652))

(declare-fun inv!69509 (ListLongMap!5095) Bool)

(assert (=> start!489976 (and (inv!69509 lm!2709) e!2982651)))

(assert (=> start!489976 true))

(declare-fun tp_is_empty!33105 () Bool)

(assert (=> start!489976 tp_is_empty!33105))

(assert (= (and start!489976 res!2027959) b!4777733))

(assert (= (and b!4777733 res!2027961) b!4777734))

(assert (= (and b!4777734 res!2027960) b!4777735))

(assert (= start!489976 b!4777736))

(declare-fun m!5753414 () Bool)

(assert (=> b!4777734 m!5753414))

(declare-fun m!5753416 () Bool)

(assert (=> b!4777735 m!5753416))

(assert (=> b!4777735 m!5753416))

(declare-fun m!5753418 () Bool)

(assert (=> b!4777735 m!5753418))

(declare-fun m!5753420 () Bool)

(assert (=> b!4777735 m!5753420))

(declare-fun m!5753422 () Bool)

(assert (=> b!4777733 m!5753422))

(declare-fun m!5753424 () Bool)

(assert (=> start!489976 m!5753424))

(declare-fun m!5753426 () Bool)

(assert (=> start!489976 m!5753426))

(push 1)

(assert (not b!4777735))

(assert (not b!4777736))

(assert (not b!4777734))

(assert (not start!489976))

(assert (not b!4777733))

(assert tp_is_empty!33105)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

