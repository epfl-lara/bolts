; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489748 () Bool)

(assert start!489748)

(declare-fun b!4776699 () Bool)

(declare-fun e!2982007 () Bool)

(assert (=> b!4776699 (= e!2982007 true)))

(declare-datatypes ((K!15437 0))(
  ( (K!15438 (val!20655 Int)) )
))
(declare-datatypes ((V!15683 0))(
  ( (V!15684 (val!20656 Int)) )
))
(declare-datatypes ((tuple2!56284 0))(
  ( (tuple2!56285 (_1!31436 K!15437) (_2!31436 V!15683)) )
))
(declare-datatypes ((List!54007 0))(
  ( (Nil!53883) (Cons!53883 (h!60297 tuple2!56284) (t!361457 List!54007)) )
))
(declare-fun lt!1939765 () List!54007)

(declare-fun key!6641 () K!15437)

(declare-datatypes ((Option!12872 0))(
  ( (None!12871) (Some!12871 (v!48040 tuple2!56284)) )
))
(declare-fun isDefined!10016 (Option!12872) Bool)

(declare-fun getPair!767 (List!54007 K!15437) Option!12872)

(assert (=> b!4776699 (isDefined!10016 (getPair!767 lt!1939765 key!6641))))

(declare-fun lambda!226944 () Int)

(declare-datatypes ((tuple2!56286 0))(
  ( (tuple2!56287 (_1!31437 (_ BitVec 64)) (_2!31437 List!54007)) )
))
(declare-datatypes ((List!54008 0))(
  ( (Nil!53884) (Cons!53884 (h!60298 tuple2!56286) (t!361458 List!54008)) )
))
(declare-datatypes ((ListLongMap!5059 0))(
  ( (ListLongMap!5060 (toList!6641 List!54008)) )
))
(declare-fun lt!1939762 () ListLongMap!5059)

(declare-datatypes ((Unit!138916 0))(
  ( (Unit!138917) )
))
(declare-fun lt!1939756 () Unit!138916)

(declare-fun lt!1939769 () tuple2!56286)

(declare-fun forallContained!4008 (List!54008 Int tuple2!56286) Unit!138916)

(assert (=> b!4776699 (= lt!1939756 (forallContained!4008 (toList!6641 lt!1939762) lambda!226944 lt!1939769))))

(declare-datatypes ((Hashable!6779 0))(
  ( (HashableExt!6778 (__x!32802 Int)) )
))
(declare-fun hashF!1687 () Hashable!6779)

(declare-fun lt!1939759 () Unit!138916)

(declare-fun lemmaInGenMapThenGetPairDefined!541 (ListLongMap!5059 K!15437 Hashable!6779) Unit!138916)

(assert (=> b!4776699 (= lt!1939759 (lemmaInGenMapThenGetPairDefined!541 lt!1939762 key!6641 hashF!1687))))

(declare-fun lt!1939755 () Unit!138916)

(assert (=> b!4776699 (= lt!1939755 (forallContained!4008 (toList!6641 lt!1939762) lambda!226944 lt!1939769))))

(declare-fun contains!17377 (List!54008 tuple2!56286) Bool)

(assert (=> b!4776699 (contains!17377 (toList!6641 lt!1939762) lt!1939769)))

(declare-fun lt!1939758 () (_ BitVec 64))

(assert (=> b!4776699 (= lt!1939769 (tuple2!56287 lt!1939758 lt!1939765))))

(declare-fun lt!1939764 () Unit!138916)

(declare-fun lemmaGetValueImpliesTupleContained!570 (ListLongMap!5059 (_ BitVec 64) List!54007) Unit!138916)

(assert (=> b!4776699 (= lt!1939764 (lemmaGetValueImpliesTupleContained!570 lt!1939762 lt!1939758 lt!1939765))))

(declare-fun apply!12842 (ListLongMap!5059 (_ BitVec 64)) List!54007)

(assert (=> b!4776699 (= lt!1939765 (apply!12842 lt!1939762 lt!1939758))))

(declare-fun contains!17378 (ListLongMap!5059 (_ BitVec 64)) Bool)

(assert (=> b!4776699 (contains!17378 lt!1939762 lt!1939758)))

(declare-fun lt!1939757 () Unit!138916)

(declare-fun lemmaInGenMapThenLongMapContainsHash!983 (ListLongMap!5059 K!15437 Hashable!6779) Unit!138916)

(assert (=> b!4776699 (= lt!1939757 (lemmaInGenMapThenLongMapContainsHash!983 lt!1939762 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6117 0))(
  ( (ListMap!6118 (toList!6642 List!54007)) )
))
(declare-fun contains!17379 (ListMap!6117 K!15437) Bool)

(declare-fun extractMap!2310 (List!54008) ListMap!6117)

(assert (=> b!4776699 (contains!17379 (extractMap!2310 (toList!6641 lt!1939762)) key!6641)))

(declare-fun lt!1939754 () Unit!138916)

(declare-fun lemmaListContainsThenExtractedMapContains!631 (ListLongMap!5059 K!15437 Hashable!6779) Unit!138916)

(assert (=> b!4776699 (= lt!1939754 (lemmaListContainsThenExtractedMapContains!631 lt!1939762 key!6641 hashF!1687))))

(declare-fun b!4776700 () Bool)

(declare-fun res!2027264 () Bool)

(declare-fun e!2982009 () Bool)

(assert (=> b!4776700 (=> res!2027264 e!2982009)))

(declare-fun lm!2709 () ListLongMap!5059)

(assert (=> b!4776700 (= res!2027264 (or (and (is-Cons!53884 (toList!6641 lm!2709)) (= (_1!31437 (h!60298 (toList!6641 lm!2709))) lt!1939758)) (not (is-Cons!53884 (toList!6641 lm!2709)))))))

(declare-fun b!4776701 () Bool)

(declare-fun res!2027261 () Bool)

(assert (=> b!4776701 (=> res!2027261 e!2982007)))

(declare-fun containsKeyBiggerList!435 (List!54008 K!15437) Bool)

(assert (=> b!4776701 (= res!2027261 (not (containsKeyBiggerList!435 (toList!6641 lt!1939762) key!6641)))))

(declare-fun b!4776702 () Bool)

(declare-fun e!2982011 () Bool)

(declare-fun tp!1357153 () Bool)

(assert (=> b!4776702 (= e!2982011 tp!1357153)))

(declare-fun b!4776703 () Bool)

(declare-fun e!2982008 () Bool)

(assert (=> b!4776703 (= e!2982008 (not e!2982009))))

(declare-fun res!2027265 () Bool)

(assert (=> b!4776703 (=> res!2027265 e!2982009)))

(declare-fun lt!1939751 () Option!12872)

(declare-fun v!11584 () V!15683)

(declare-fun get!18288 (Option!12872) tuple2!56284)

(assert (=> b!4776703 (= res!2027265 (not (= (_2!31436 (get!18288 lt!1939751)) v!11584)))))

(assert (=> b!4776703 (isDefined!10016 lt!1939751)))

(declare-fun lt!1939750 () List!54007)

(assert (=> b!4776703 (= lt!1939751 (getPair!767 lt!1939750 key!6641))))

(declare-fun lt!1939768 () Unit!138916)

(declare-fun lt!1939766 () tuple2!56286)

(assert (=> b!4776703 (= lt!1939768 (forallContained!4008 (toList!6641 lm!2709) lambda!226944 lt!1939766))))

(declare-fun lt!1939760 () Unit!138916)

(assert (=> b!4776703 (= lt!1939760 (lemmaInGenMapThenGetPairDefined!541 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1939752 () Unit!138916)

(assert (=> b!4776703 (= lt!1939752 (forallContained!4008 (toList!6641 lm!2709) lambda!226944 lt!1939766))))

(assert (=> b!4776703 (contains!17377 (toList!6641 lm!2709) lt!1939766)))

(assert (=> b!4776703 (= lt!1939766 (tuple2!56287 lt!1939758 lt!1939750))))

(declare-fun lt!1939763 () Unit!138916)

(assert (=> b!4776703 (= lt!1939763 (lemmaGetValueImpliesTupleContained!570 lm!2709 lt!1939758 lt!1939750))))

(assert (=> b!4776703 (= lt!1939750 (apply!12842 lm!2709 lt!1939758))))

(assert (=> b!4776703 (contains!17378 lm!2709 lt!1939758)))

(declare-fun hash!4757 (Hashable!6779 K!15437) (_ BitVec 64))

(assert (=> b!4776703 (= lt!1939758 (hash!4757 hashF!1687 key!6641))))

(declare-fun lt!1939761 () Unit!138916)

(assert (=> b!4776703 (= lt!1939761 (lemmaInGenMapThenLongMapContainsHash!983 lm!2709 key!6641 hashF!1687))))

(assert (=> b!4776703 (contains!17379 (extractMap!2310 (toList!6641 lm!2709)) key!6641)))

(declare-fun lt!1939770 () Unit!138916)

(assert (=> b!4776703 (= lt!1939770 (lemmaListContainsThenExtractedMapContains!631 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4776705 () Bool)

(declare-fun res!2027263 () Bool)

(assert (=> b!4776705 (=> (not res!2027263) (not e!2982008))))

(declare-fun allKeysSameHashInMap!2184 (ListLongMap!5059 Hashable!6779) Bool)

(assert (=> b!4776705 (= res!2027263 (allKeysSameHashInMap!2184 lm!2709 hashF!1687))))

(declare-fun b!4776706 () Bool)

(declare-fun e!2982010 () Bool)

(assert (=> b!4776706 (= e!2982010 e!2982007)))

(declare-fun res!2027262 () Bool)

(assert (=> b!4776706 (=> res!2027262 e!2982007)))

(declare-fun forall!12051 (List!54008 Int) Bool)

(assert (=> b!4776706 (= res!2027262 (not (forall!12051 (toList!6641 lt!1939762) lambda!226944)))))

(declare-fun tail!9170 (ListLongMap!5059) ListLongMap!5059)

(assert (=> b!4776706 (= lt!1939762 (tail!9170 lm!2709))))

(declare-fun tail!9171 (List!54008) List!54008)

(assert (=> b!4776706 (containsKeyBiggerList!435 (tail!9171 (toList!6641 lm!2709)) key!6641)))

(declare-fun lt!1939753 () Unit!138916)

(declare-fun lemmaInBiggerListButNotHeadThenTail!5 (ListLongMap!5059 K!15437 Hashable!6779) Unit!138916)

(assert (=> b!4776706 (= lt!1939753 (lemmaInBiggerListButNotHeadThenTail!5 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4776707 () Bool)

(assert (=> b!4776707 (= e!2982009 e!2982010)))

(declare-fun res!2027258 () Bool)

(assert (=> b!4776707 (=> res!2027258 e!2982010)))

(declare-fun containsKey!3754 (List!54007 K!15437) Bool)

(assert (=> b!4776707 (= res!2027258 (containsKey!3754 (_2!31437 (h!60298 (toList!6641 lm!2709))) key!6641))))

(assert (=> b!4776707 (not (containsKey!3754 (apply!12842 lm!2709 (_1!31437 (h!60298 (toList!6641 lm!2709)))) key!6641))))

(declare-fun lt!1939767 () Unit!138916)

(declare-fun lemmaNotSameHashThenCannotContainKey!171 (ListLongMap!5059 K!15437 (_ BitVec 64) Hashable!6779) Unit!138916)

(assert (=> b!4776707 (= lt!1939767 (lemmaNotSameHashThenCannotContainKey!171 lm!2709 key!6641 (_1!31437 (h!60298 (toList!6641 lm!2709))) hashF!1687))))

(declare-fun b!4776708 () Bool)

(declare-fun res!2027257 () Bool)

(assert (=> b!4776708 (=> res!2027257 e!2982007)))

(assert (=> b!4776708 (= res!2027257 (not (allKeysSameHashInMap!2184 lt!1939762 hashF!1687)))))

(declare-fun b!4776704 () Bool)

(declare-fun res!2027259 () Bool)

(assert (=> b!4776704 (=> (not res!2027259) (not e!2982008))))

(assert (=> b!4776704 (= res!2027259 (containsKeyBiggerList!435 (toList!6641 lm!2709) key!6641))))

(declare-fun res!2027260 () Bool)

(assert (=> start!489748 (=> (not res!2027260) (not e!2982008))))

(assert (=> start!489748 (= res!2027260 (forall!12051 (toList!6641 lm!2709) lambda!226944))))

(assert (=> start!489748 e!2982008))

(declare-fun inv!69464 (ListLongMap!5059) Bool)

(assert (=> start!489748 (and (inv!69464 lm!2709) e!2982011)))

(assert (=> start!489748 true))

(declare-fun tp_is_empty!33045 () Bool)

(assert (=> start!489748 tp_is_empty!33045))

(declare-fun tp_is_empty!33047 () Bool)

(assert (=> start!489748 tp_is_empty!33047))

(assert (= (and start!489748 res!2027260) b!4776705))

(assert (= (and b!4776705 res!2027263) b!4776704))

(assert (= (and b!4776704 res!2027259) b!4776703))

(assert (= (and b!4776703 (not res!2027265)) b!4776700))

(assert (= (and b!4776700 (not res!2027264)) b!4776707))

(assert (= (and b!4776707 (not res!2027258)) b!4776706))

(assert (= (and b!4776706 (not res!2027262)) b!4776708))

(assert (= (and b!4776708 (not res!2027257)) b!4776701))

(assert (= (and b!4776701 (not res!2027261)) b!4776699))

(assert (= start!489748 b!4776702))

(declare-fun m!5751744 () Bool)

(assert (=> b!4776701 m!5751744))

(declare-fun m!5751746 () Bool)

(assert (=> b!4776704 m!5751746))

(declare-fun m!5751748 () Bool)

(assert (=> b!4776706 m!5751748))

(declare-fun m!5751750 () Bool)

(assert (=> b!4776706 m!5751750))

(assert (=> b!4776706 m!5751750))

(declare-fun m!5751752 () Bool)

(assert (=> b!4776706 m!5751752))

(declare-fun m!5751754 () Bool)

(assert (=> b!4776706 m!5751754))

(declare-fun m!5751756 () Bool)

(assert (=> b!4776706 m!5751756))

(declare-fun m!5751758 () Bool)

(assert (=> b!4776703 m!5751758))

(declare-fun m!5751760 () Bool)

(assert (=> b!4776703 m!5751760))

(declare-fun m!5751762 () Bool)

(assert (=> b!4776703 m!5751762))

(declare-fun m!5751764 () Bool)

(assert (=> b!4776703 m!5751764))

(declare-fun m!5751766 () Bool)

(assert (=> b!4776703 m!5751766))

(declare-fun m!5751768 () Bool)

(assert (=> b!4776703 m!5751768))

(declare-fun m!5751770 () Bool)

(assert (=> b!4776703 m!5751770))

(declare-fun m!5751772 () Bool)

(assert (=> b!4776703 m!5751772))

(declare-fun m!5751774 () Bool)

(assert (=> b!4776703 m!5751774))

(declare-fun m!5751776 () Bool)

(assert (=> b!4776703 m!5751776))

(declare-fun m!5751778 () Bool)

(assert (=> b!4776703 m!5751778))

(declare-fun m!5751780 () Bool)

(assert (=> b!4776703 m!5751780))

(declare-fun m!5751782 () Bool)

(assert (=> b!4776703 m!5751782))

(assert (=> b!4776703 m!5751758))

(declare-fun m!5751784 () Bool)

(assert (=> b!4776703 m!5751784))

(assert (=> b!4776703 m!5751778))

(declare-fun m!5751786 () Bool)

(assert (=> b!4776705 m!5751786))

(declare-fun m!5751788 () Bool)

(assert (=> b!4776707 m!5751788))

(declare-fun m!5751790 () Bool)

(assert (=> b!4776707 m!5751790))

(assert (=> b!4776707 m!5751790))

(declare-fun m!5751792 () Bool)

(assert (=> b!4776707 m!5751792))

(declare-fun m!5751794 () Bool)

(assert (=> b!4776707 m!5751794))

(declare-fun m!5751796 () Bool)

(assert (=> b!4776699 m!5751796))

(declare-fun m!5751798 () Bool)

(assert (=> b!4776699 m!5751798))

(declare-fun m!5751800 () Bool)

(assert (=> b!4776699 m!5751800))

(declare-fun m!5751802 () Bool)

(assert (=> b!4776699 m!5751802))

(declare-fun m!5751804 () Bool)

(assert (=> b!4776699 m!5751804))

(assert (=> b!4776699 m!5751800))

(declare-fun m!5751806 () Bool)

(assert (=> b!4776699 m!5751806))

(declare-fun m!5751808 () Bool)

(assert (=> b!4776699 m!5751808))

(declare-fun m!5751810 () Bool)

(assert (=> b!4776699 m!5751810))

(declare-fun m!5751812 () Bool)

(assert (=> b!4776699 m!5751812))

(assert (=> b!4776699 m!5751812))

(declare-fun m!5751814 () Bool)

(assert (=> b!4776699 m!5751814))

(assert (=> b!4776699 m!5751804))

(declare-fun m!5751816 () Bool)

(assert (=> b!4776699 m!5751816))

(declare-fun m!5751818 () Bool)

(assert (=> b!4776699 m!5751818))

(declare-fun m!5751820 () Bool)

(assert (=> b!4776708 m!5751820))

(declare-fun m!5751822 () Bool)

(assert (=> start!489748 m!5751822))

(declare-fun m!5751824 () Bool)

(assert (=> start!489748 m!5751824))

(push 1)

(assert (not b!4776708))

(assert (not b!4776701))

(assert tp_is_empty!33045)

(assert (not b!4776707))

(assert tp_is_empty!33047)

(assert (not b!4776705))

(assert (not start!489748))

(assert (not b!4776706))

(assert (not b!4776702))

(assert (not b!4776703))

(assert (not b!4776704))

(assert (not b!4776699))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

