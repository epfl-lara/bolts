; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502798 () Bool)

(assert start!502798)

(declare-fun b!4835965 () Bool)

(declare-fun e!3022213 () Bool)

(declare-datatypes ((K!16962 0))(
  ( (K!16963 (val!21875 Int)) )
))
(declare-datatypes ((V!17208 0))(
  ( (V!17209 (val!21876 Int)) )
))
(declare-datatypes ((tuple2!58622 0))(
  ( (tuple2!58623 (_1!32605 K!16962) (_2!32605 V!17208)) )
))
(declare-datatypes ((List!55344 0))(
  ( (Nil!55220) (Cons!55220 (h!61655 tuple2!58622) (t!362840 List!55344)) )
))
(declare-datatypes ((tuple2!58624 0))(
  ( (tuple2!58625 (_1!32606 (_ BitVec 64)) (_2!32606 List!55344)) )
))
(declare-datatypes ((List!55345 0))(
  ( (Nil!55221) (Cons!55221 (h!61656 tuple2!58624) (t!362841 List!55345)) )
))
(declare-datatypes ((ListLongMap!6177 0))(
  ( (ListLongMap!6178 (toList!7645 List!55345)) )
))
(declare-fun lm!2671 () ListLongMap!6177)

(declare-fun lambda!239442 () Int)

(declare-fun forall!12757 (List!55345 Int) Bool)

(assert (=> b!4835965 (= e!3022213 (not (forall!12757 (toList!7645 lm!2671) lambda!239442)))))

(declare-fun e!3022212 () Bool)

(assert (=> b!4835965 e!3022212))

(declare-fun res!2060553 () Bool)

(assert (=> b!4835965 (=> (not res!2060553) (not e!3022212))))

(declare-fun lt!1981634 () tuple2!58622)

(declare-fun contains!19028 (List!55344 tuple2!58622) Bool)

(declare-fun head!10365 (List!55345) tuple2!58624)

(assert (=> b!4835965 (= res!2060553 (contains!19028 (_2!32606 (head!10365 (toList!7645 lm!2671))) lt!1981634))))

(declare-fun key!6540 () K!16962)

(declare-fun lt!1981635 () V!17208)

(assert (=> b!4835965 (= lt!1981634 (tuple2!58623 key!6540 lt!1981635))))

(declare-datatypes ((Hashable!7357 0))(
  ( (HashableExt!7356 (__x!33632 Int)) )
))
(declare-fun hashF!1662 () Hashable!7357)

(declare-datatypes ((Unit!144588 0))(
  ( (Unit!144589) )
))
(declare-fun lt!1981636 () Unit!144588)

(declare-fun lemmaInPairListHeadThenGetValueInTuple!1 (ListLongMap!6177 K!16962 V!17208 Hashable!7357) Unit!144588)

(assert (=> b!4835965 (= lt!1981636 (lemmaInPairListHeadThenGetValueInTuple!1 lm!2671 key!6540 lt!1981635 hashF!1662))))

(declare-fun getValue!171 (List!55345 K!16962) V!17208)

(assert (=> b!4835965 (= lt!1981635 (getValue!171 (toList!7645 lm!2671) key!6540))))

(declare-fun res!2060554 () Bool)

(assert (=> start!502798 (=> (not res!2060554) (not e!3022213))))

(assert (=> start!502798 (= res!2060554 (forall!12757 (toList!7645 lm!2671) lambda!239442))))

(assert (=> start!502798 e!3022213))

(declare-fun e!3022211 () Bool)

(declare-fun inv!70863 (ListLongMap!6177) Bool)

(assert (=> start!502798 (and (inv!70863 lm!2671) e!3022211)))

(assert (=> start!502798 true))

(declare-fun tp_is_empty!34813 () Bool)

(assert (=> start!502798 tp_is_empty!34813))

(declare-fun b!4835966 () Bool)

(declare-fun res!2060557 () Bool)

(assert (=> b!4835966 (=> (not res!2060557) (not e!3022213))))

(declare-fun containsKey!4507 (List!55344 K!16962) Bool)

(assert (=> b!4835966 (= res!2060557 (containsKey!4507 (_2!32606 (h!61656 (toList!7645 lm!2671))) key!6540))))

(declare-fun b!4835967 () Bool)

(assert (=> b!4835967 (= e!3022212 (contains!19028 (_2!32606 (h!61656 (toList!7645 lm!2671))) lt!1981634))))

(declare-fun b!4835968 () Bool)

(declare-fun res!2060556 () Bool)

(assert (=> b!4835968 (=> (not res!2060556) (not e!3022213))))

(declare-fun containsKeyBiggerList!641 (List!55345 K!16962) Bool)

(assert (=> b!4835968 (= res!2060556 (containsKeyBiggerList!641 (toList!7645 lm!2671) key!6540))))

(declare-fun b!4835969 () Bool)

(declare-fun res!2060555 () Bool)

(assert (=> b!4835969 (=> (not res!2060555) (not e!3022213))))

(declare-fun allKeysSameHashInMap!2673 (ListLongMap!6177 Hashable!7357) Bool)

(assert (=> b!4835969 (= res!2060555 (allKeysSameHashInMap!2673 lm!2671 hashF!1662))))

(declare-fun b!4835970 () Bool)

(declare-fun tp!1363425 () Bool)

(assert (=> b!4835970 (= e!3022211 tp!1363425)))

(declare-fun b!4835971 () Bool)

(declare-fun res!2060558 () Bool)

(assert (=> b!4835971 (=> (not res!2060558) (not e!3022213))))

(assert (=> b!4835971 (= res!2060558 (is-Cons!55221 (toList!7645 lm!2671)))))

(assert (= (and start!502798 res!2060554) b!4835969))

(assert (= (and b!4835969 res!2060555) b!4835968))

(assert (= (and b!4835968 res!2060556) b!4835971))

(assert (= (and b!4835971 res!2060558) b!4835966))

(assert (= (and b!4835966 res!2060557) b!4835965))

(assert (= (and b!4835965 res!2060553) b!4835967))

(assert (= start!502798 b!4835970))

(declare-fun m!5831214 () Bool)

(assert (=> b!4835965 m!5831214))

(declare-fun m!5831216 () Bool)

(assert (=> b!4835965 m!5831216))

(declare-fun m!5831218 () Bool)

(assert (=> b!4835965 m!5831218))

(declare-fun m!5831220 () Bool)

(assert (=> b!4835965 m!5831220))

(declare-fun m!5831222 () Bool)

(assert (=> b!4835965 m!5831222))

(declare-fun m!5831224 () Bool)

(assert (=> b!4835969 m!5831224))

(assert (=> start!502798 m!5831216))

(declare-fun m!5831226 () Bool)

(assert (=> start!502798 m!5831226))

(declare-fun m!5831228 () Bool)

(assert (=> b!4835967 m!5831228))

(declare-fun m!5831230 () Bool)

(assert (=> b!4835968 m!5831230))

(declare-fun m!5831232 () Bool)

(assert (=> b!4835966 m!5831232))

(push 1)

(assert (not b!4835967))

(assert (not b!4835970))

(assert (not start!502798))

(assert tp_is_empty!34813)

(assert (not b!4835969))

(assert (not b!4835965))

(assert (not b!4835966))

(assert (not b!4835968))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

