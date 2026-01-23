; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504474 () Bool)

(assert start!504474)

(declare-fun b!4844768 () Bool)

(declare-fun res!2066322 () Bool)

(declare-fun e!3027982 () Bool)

(assert (=> b!4844768 (=> (not res!2066322) (not e!3027982))))

(declare-datatypes ((K!17212 0))(
  ( (K!17213 (val!22075 Int)) )
))
(declare-datatypes ((V!17458 0))(
  ( (V!17459 (val!22076 Int)) )
))
(declare-datatypes ((tuple2!59022 0))(
  ( (tuple2!59023 (_1!32805 K!17212) (_2!32805 V!17458)) )
))
(declare-datatypes ((List!55568 0))(
  ( (Nil!55444) (Cons!55444 (h!61881 tuple2!59022) (t!363064 List!55568)) )
))
(declare-datatypes ((tuple2!59024 0))(
  ( (tuple2!59025 (_1!32806 (_ BitVec 64)) (_2!32806 List!55568)) )
))
(declare-datatypes ((List!55569 0))(
  ( (Nil!55445) (Cons!55445 (h!61882 tuple2!59024) (t!363065 List!55569)) )
))
(declare-datatypes ((ListLongMap!6377 0))(
  ( (ListLongMap!6378 (toList!7817 List!55569)) )
))
(declare-fun lm!2706 () ListLongMap!6377)

(declare-fun key!6636 () K!17212)

(declare-fun containsKey!4630 (List!55568 K!17212) Bool)

(declare-fun head!10397 (List!55569) tuple2!59024)

(assert (=> b!4844768 (= res!2066322 (containsKey!4630 (_2!32806 (head!10397 (toList!7817 lm!2706))) key!6636))))

(declare-fun b!4844769 () Bool)

(declare-fun lambda!242177 () Int)

(declare-fun forall!12896 (List!55569 Int) Bool)

(assert (=> b!4844769 (= e!3027982 (not (forall!12896 (toList!7817 lm!2706) lambda!242177)))))

(declare-fun b!4844770 () Bool)

(declare-fun res!2066321 () Bool)

(assert (=> b!4844770 (=> (not res!2066321) (not e!3027982))))

(declare-fun containsKeyBiggerList!741 (List!55569 K!17212) Bool)

(assert (=> b!4844770 (= res!2066321 (containsKeyBiggerList!741 (toList!7817 lm!2706) key!6636))))

(declare-fun b!4844771 () Bool)

(declare-fun e!3027981 () Bool)

(declare-fun tp!1364135 () Bool)

(assert (=> b!4844771 (= e!3027981 tp!1364135)))

(declare-fun b!4844772 () Bool)

(declare-fun res!2066323 () Bool)

(assert (=> b!4844772 (=> (not res!2066323) (not e!3027982))))

(declare-datatypes ((Hashable!7457 0))(
  ( (HashableExt!7456 (__x!33732 Int)) )
))
(declare-fun hashF!1684 () Hashable!7457)

(declare-fun allKeysSameHashInMap!2773 (ListLongMap!6377 Hashable!7457) Bool)

(assert (=> b!4844772 (= res!2066323 (allKeysSameHashInMap!2773 lm!2706 hashF!1684))))

(declare-fun res!2066320 () Bool)

(assert (=> start!504474 (=> (not res!2066320) (not e!3027982))))

(assert (=> start!504474 (= res!2066320 (forall!12896 (toList!7817 lm!2706) lambda!242177))))

(assert (=> start!504474 e!3027982))

(declare-fun inv!71113 (ListLongMap!6377) Bool)

(assert (=> start!504474 (and (inv!71113 lm!2706) e!3027981)))

(assert (=> start!504474 true))

(declare-fun tp_is_empty!35025 () Bool)

(assert (=> start!504474 tp_is_empty!35025))

(assert (= (and start!504474 res!2066320) b!4844772))

(assert (= (and b!4844772 res!2066323) b!4844770))

(assert (= (and b!4844770 res!2066321) b!4844768))

(assert (= (and b!4844768 res!2066322) b!4844769))

(assert (= start!504474 b!4844771))

(declare-fun m!5843312 () Bool)

(assert (=> b!4844768 m!5843312))

(declare-fun m!5843314 () Bool)

(assert (=> b!4844768 m!5843314))

(declare-fun m!5843316 () Bool)

(assert (=> b!4844770 m!5843316))

(declare-fun m!5843318 () Bool)

(assert (=> b!4844769 m!5843318))

(assert (=> start!504474 m!5843318))

(declare-fun m!5843320 () Bool)

(assert (=> start!504474 m!5843320))

(declare-fun m!5843322 () Bool)

(assert (=> b!4844772 m!5843322))

(push 1)

(assert tp_is_empty!35025)

(assert (not b!4844772))

(assert (not b!4844769))

(assert (not b!4844770))

(assert (not b!4844768))

(assert (not start!504474))

(assert (not b!4844771))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

