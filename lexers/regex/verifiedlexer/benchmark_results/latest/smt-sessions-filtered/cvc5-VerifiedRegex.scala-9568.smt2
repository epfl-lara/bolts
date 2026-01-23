; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503756 () Bool)

(assert start!503756)

(declare-fun b!4840561 () Bool)

(declare-fun e!3025141 () Bool)

(declare-fun tp!1363861 () Bool)

(assert (=> b!4840561 (= e!3025141 tp!1363861)))

(declare-fun b!4840562 () Bool)

(declare-fun e!3025142 () Bool)

(assert (=> b!4840562 (= e!3025142 false)))

(declare-fun lt!1984773 () Bool)

(declare-datatypes ((K!17127 0))(
  ( (K!17128 (val!22007 Int)) )
))
(declare-datatypes ((V!17373 0))(
  ( (V!17374 (val!22008 Int)) )
))
(declare-datatypes ((tuple2!58886 0))(
  ( (tuple2!58887 (_1!32737 K!17127) (_2!32737 V!17373)) )
))
(declare-datatypes ((List!55492 0))(
  ( (Nil!55368) (Cons!55368 (h!61803 tuple2!58886) (t!362988 List!55492)) )
))
(declare-datatypes ((tuple2!58888 0))(
  ( (tuple2!58889 (_1!32738 (_ BitVec 64)) (_2!32738 List!55492)) )
))
(declare-datatypes ((List!55493 0))(
  ( (Nil!55369) (Cons!55369 (h!61804 tuple2!58888) (t!362989 List!55493)) )
))
(declare-datatypes ((ListLongMap!6309 0))(
  ( (ListLongMap!6310 (toList!7757 List!55493)) )
))
(declare-fun lm!2671 () ListLongMap!6309)

(declare-fun key!6540 () K!17127)

(declare-fun containsKey!4589 (List!55492 K!17127) Bool)

(declare-fun head!10385 (List!55493) tuple2!58888)

(assert (=> b!4840562 (= lt!1984773 (containsKey!4589 (_2!32738 (head!10385 (toList!7757 lm!2671))) key!6540))))

(declare-fun b!4840563 () Bool)

(declare-fun res!2063633 () Bool)

(declare-fun e!3025140 () Bool)

(assert (=> b!4840563 (=> (not res!2063633) (not e!3025140))))

(assert (=> b!4840563 (= res!2063633 (is-Cons!55369 (toList!7757 lm!2671)))))

(declare-fun b!4840564 () Bool)

(declare-fun res!2063636 () Bool)

(assert (=> b!4840564 (=> (not res!2063636) (not e!3025140))))

(declare-datatypes ((Hashable!7423 0))(
  ( (HashableExt!7422 (__x!33698 Int)) )
))
(declare-fun hashF!1662 () Hashable!7423)

(declare-fun allKeysSameHashInMap!2739 (ListLongMap!6309 Hashable!7423) Bool)

(assert (=> b!4840564 (= res!2063636 (allKeysSameHashInMap!2739 lm!2671 hashF!1662))))

(declare-fun b!4840565 () Bool)

(declare-fun res!2063635 () Bool)

(assert (=> b!4840565 (=> (not res!2063635) (not e!3025140))))

(declare-fun containsKeyBiggerList!707 (List!55493 K!17127) Bool)

(assert (=> b!4840565 (= res!2063635 (containsKeyBiggerList!707 (toList!7757 lm!2671) key!6540))))

(declare-fun b!4840566 () Bool)

(declare-fun res!2063634 () Bool)

(assert (=> b!4840566 (=> (not res!2063634) (not e!3025140))))

(assert (=> b!4840566 (= res!2063634 (containsKey!4589 (_2!32738 (h!61804 (toList!7757 lm!2671))) key!6540))))

(declare-fun res!2063632 () Bool)

(assert (=> start!503756 (=> (not res!2063632) (not e!3025140))))

(declare-fun lambda!240977 () Int)

(declare-fun forall!12847 (List!55493 Int) Bool)

(assert (=> start!503756 (= res!2063632 (forall!12847 (toList!7757 lm!2671) lambda!240977))))

(assert (=> start!503756 e!3025140))

(declare-fun inv!71028 (ListLongMap!6309) Bool)

(assert (=> start!503756 (and (inv!71028 lm!2671) e!3025141)))

(assert (=> start!503756 true))

(declare-fun tp_is_empty!34949 () Bool)

(assert (=> start!503756 tp_is_empty!34949))

(declare-fun b!4840567 () Bool)

(assert (=> b!4840567 (= e!3025140 e!3025142)))

(declare-fun res!2063631 () Bool)

(assert (=> b!4840567 (=> (not res!2063631) (not e!3025142))))

(assert (=> b!4840567 (= res!2063631 (forall!12847 (toList!7757 lm!2671) lambda!240977))))

(declare-fun lt!1984774 () V!17373)

(declare-fun getValue!191 (List!55493 K!17127) V!17373)

(assert (=> b!4840567 (= lt!1984774 (getValue!191 (toList!7757 lm!2671) key!6540))))

(assert (= (and start!503756 res!2063632) b!4840564))

(assert (= (and b!4840564 res!2063636) b!4840565))

(assert (= (and b!4840565 res!2063635) b!4840563))

(assert (= (and b!4840563 res!2063633) b!4840566))

(assert (= (and b!4840566 res!2063634) b!4840567))

(assert (= (and b!4840567 res!2063631) b!4840562))

(assert (= start!503756 b!4840561))

(declare-fun m!5836246 () Bool)

(assert (=> b!4840565 m!5836246))

(declare-fun m!5836248 () Bool)

(assert (=> b!4840566 m!5836248))

(declare-fun m!5836250 () Bool)

(assert (=> start!503756 m!5836250))

(declare-fun m!5836252 () Bool)

(assert (=> start!503756 m!5836252))

(declare-fun m!5836254 () Bool)

(assert (=> b!4840562 m!5836254))

(declare-fun m!5836256 () Bool)

(assert (=> b!4840562 m!5836256))

(declare-fun m!5836258 () Bool)

(assert (=> b!4840564 m!5836258))

(assert (=> b!4840567 m!5836250))

(declare-fun m!5836260 () Bool)

(assert (=> b!4840567 m!5836260))

(push 1)

(assert (not b!4840565))

(assert (not b!4840562))

(assert (not b!4840567))

(assert (not start!503756))

(assert (not b!4840566))

(assert tp_is_empty!34949)

(assert (not b!4840561))

(assert (not b!4840564))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

