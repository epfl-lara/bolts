; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!490208 () Bool)

(assert start!490208)

(declare-fun b!4778606 () Bool)

(declare-fun res!2028471 () Bool)

(declare-fun e!2983259 () Bool)

(assert (=> b!4778606 (=> (not res!2028471) (not e!2983259))))

(declare-datatypes ((K!15497 0))(
  ( (K!15498 (val!20703 Int)) )
))
(declare-datatypes ((V!15743 0))(
  ( (V!15744 (val!20704 Int)) )
))
(declare-datatypes ((tuple2!56380 0))(
  ( (tuple2!56381 (_1!31484 K!15497) (_2!31484 V!15743)) )
))
(declare-datatypes ((List!54059 0))(
  ( (Nil!53935) (Cons!53935 (h!60351 tuple2!56380) (t!361509 List!54059)) )
))
(declare-datatypes ((tuple2!56382 0))(
  ( (tuple2!56383 (_1!31485 (_ BitVec 64)) (_2!31485 List!54059)) )
))
(declare-datatypes ((List!54060 0))(
  ( (Nil!53936) (Cons!53936 (h!60352 tuple2!56382) (t!361510 List!54060)) )
))
(declare-datatypes ((ListLongMap!5107 0))(
  ( (ListLongMap!5108 (toList!6685 List!54060)) )
))
(declare-fun lm!2709 () ListLongMap!5107)

(declare-fun key!6641 () K!15497)

(declare-fun containsKeyBiggerList!459 (List!54060 K!15497) Bool)

(assert (=> b!4778606 (= res!2028471 (containsKeyBiggerList!459 (toList!6685 lm!2709) key!6641))))

(declare-fun b!4778605 () Bool)

(declare-fun res!2028470 () Bool)

(assert (=> b!4778605 (=> (not res!2028470) (not e!2983259))))

(declare-datatypes ((Hashable!6803 0))(
  ( (HashableExt!6802 (__x!32826 Int)) )
))
(declare-fun hashF!1687 () Hashable!6803)

(declare-fun allKeysSameHashInMap!2208 (ListLongMap!5107 Hashable!6803) Bool)

(assert (=> b!4778605 (= res!2028470 (allKeysSameHashInMap!2208 lm!2709 hashF!1687))))

(declare-fun b!4778608 () Bool)

(declare-fun e!2983260 () Bool)

(declare-fun tp!1357277 () Bool)

(assert (=> b!4778608 (= e!2983260 tp!1357277)))

(declare-fun b!4778607 () Bool)

(declare-fun lambda!227466 () Int)

(declare-fun forall!12083 (List!54060 Int) Bool)

(assert (=> b!4778607 (= e!2983259 (not (forall!12083 (toList!6685 lm!2709) lambda!227466)))))

(declare-datatypes ((Unit!139094 0))(
  ( (Unit!139095) )
))
(declare-fun lt!1941418 () Unit!139094)

(declare-fun lt!1941413 () tuple2!56382)

(declare-fun forallContained!4028 (List!54060 Int tuple2!56382) Unit!139094)

(assert (=> b!4778607 (= lt!1941418 (forallContained!4028 (toList!6685 lm!2709) lambda!227466 lt!1941413))))

(declare-fun contains!17433 (List!54060 tuple2!56382) Bool)

(assert (=> b!4778607 (contains!17433 (toList!6685 lm!2709) lt!1941413)))

(declare-fun lt!1941416 () (_ BitVec 64))

(declare-fun lt!1941414 () List!54059)

(assert (=> b!4778607 (= lt!1941413 (tuple2!56383 lt!1941416 lt!1941414))))

(declare-fun lt!1941412 () Unit!139094)

(declare-fun lemmaGetValueImpliesTupleContained!582 (ListLongMap!5107 (_ BitVec 64) List!54059) Unit!139094)

(assert (=> b!4778607 (= lt!1941412 (lemmaGetValueImpliesTupleContained!582 lm!2709 lt!1941416 lt!1941414))))

(declare-fun apply!12858 (ListLongMap!5107 (_ BitVec 64)) List!54059)

(assert (=> b!4778607 (= lt!1941414 (apply!12858 lm!2709 lt!1941416))))

(declare-fun contains!17434 (ListLongMap!5107 (_ BitVec 64)) Bool)

(assert (=> b!4778607 (contains!17434 lm!2709 lt!1941416)))

(declare-fun hash!4781 (Hashable!6803 K!15497) (_ BitVec 64))

(assert (=> b!4778607 (= lt!1941416 (hash!4781 hashF!1687 key!6641))))

(declare-fun lt!1941417 () Unit!139094)

(declare-fun lemmaInGenMapThenLongMapContainsHash!999 (ListLongMap!5107 K!15497 Hashable!6803) Unit!139094)

(assert (=> b!4778607 (= lt!1941417 (lemmaInGenMapThenLongMapContainsHash!999 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6157 0))(
  ( (ListMap!6158 (toList!6686 List!54059)) )
))
(declare-fun contains!17435 (ListMap!6157 K!15497) Bool)

(declare-fun extractMap!2330 (List!54060) ListMap!6157)

(assert (=> b!4778607 (contains!17435 (extractMap!2330 (toList!6685 lm!2709)) key!6641)))

(declare-fun lt!1941415 () Unit!139094)

(declare-fun lemmaListContainsThenExtractedMapContains!651 (ListLongMap!5107 K!15497 Hashable!6803) Unit!139094)

(assert (=> b!4778607 (= lt!1941415 (lemmaListContainsThenExtractedMapContains!651 lm!2709 key!6641 hashF!1687))))

(declare-fun res!2028469 () Bool)

(assert (=> start!490208 (=> (not res!2028469) (not e!2983259))))

(assert (=> start!490208 (= res!2028469 (forall!12083 (toList!6685 lm!2709) lambda!227466))))

(assert (=> start!490208 e!2983259))

(declare-fun inv!69524 (ListLongMap!5107) Bool)

(assert (=> start!490208 (and (inv!69524 lm!2709) e!2983260)))

(assert (=> start!490208 true))

(declare-fun tp_is_empty!33121 () Bool)

(assert (=> start!490208 tp_is_empty!33121))

(assert (= (and start!490208 res!2028469) b!4778605))

(assert (= (and b!4778605 res!2028470) b!4778606))

(assert (= (and b!4778606 res!2028471) b!4778607))

(assert (= start!490208 b!4778608))

(declare-fun m!5754776 () Bool)

(assert (=> b!4778606 m!5754776))

(declare-fun m!5754778 () Bool)

(assert (=> b!4778605 m!5754778))

(declare-fun m!5754780 () Bool)

(assert (=> b!4778607 m!5754780))

(declare-fun m!5754782 () Bool)

(assert (=> b!4778607 m!5754782))

(declare-fun m!5754784 () Bool)

(assert (=> b!4778607 m!5754784))

(declare-fun m!5754786 () Bool)

(assert (=> b!4778607 m!5754786))

(declare-fun m!5754788 () Bool)

(assert (=> b!4778607 m!5754788))

(declare-fun m!5754790 () Bool)

(assert (=> b!4778607 m!5754790))

(declare-fun m!5754792 () Bool)

(assert (=> b!4778607 m!5754792))

(declare-fun m!5754794 () Bool)

(assert (=> b!4778607 m!5754794))

(declare-fun m!5754796 () Bool)

(assert (=> b!4778607 m!5754796))

(declare-fun m!5754798 () Bool)

(assert (=> b!4778607 m!5754798))

(assert (=> b!4778607 m!5754790))

(declare-fun m!5754800 () Bool)

(assert (=> b!4778607 m!5754800))

(assert (=> start!490208 m!5754786))

(declare-fun m!5754802 () Bool)

(assert (=> start!490208 m!5754802))

(push 1)

(assert (not b!4778606))

(assert tp_is_empty!33121)

(assert (not b!4778608))

(assert (not b!4778605))

(assert (not b!4778607))

(assert (not start!490208))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

