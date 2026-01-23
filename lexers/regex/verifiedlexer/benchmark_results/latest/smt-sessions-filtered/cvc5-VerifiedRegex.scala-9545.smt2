; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503084 () Bool)

(assert start!503084)

(declare-fun b!4837156 () Bool)

(declare-fun res!2061403 () Bool)

(declare-fun e!3022971 () Bool)

(assert (=> b!4837156 (=> (not res!2061403) (not e!3022971))))

(declare-fun e!3022973 () Bool)

(assert (=> b!4837156 (= res!2061403 e!3022973)))

(declare-fun res!2061407 () Bool)

(assert (=> b!4837156 (=> res!2061407 e!3022973)))

(declare-datatypes ((K!17012 0))(
  ( (K!17013 (val!21915 Int)) )
))
(declare-datatypes ((V!17258 0))(
  ( (V!17259 (val!21916 Int)) )
))
(declare-datatypes ((tuple2!58702 0))(
  ( (tuple2!58703 (_1!32645 K!17012) (_2!32645 V!17258)) )
))
(declare-datatypes ((List!55384 0))(
  ( (Nil!55260) (Cons!55260 (h!61695 tuple2!58702) (t!362880 List!55384)) )
))
(declare-datatypes ((tuple2!58704 0))(
  ( (tuple2!58705 (_1!32646 (_ BitVec 64)) (_2!32646 List!55384)) )
))
(declare-datatypes ((List!55385 0))(
  ( (Nil!55261) (Cons!55261 (h!61696 tuple2!58704) (t!362881 List!55385)) )
))
(declare-datatypes ((ListLongMap!6217 0))(
  ( (ListLongMap!6218 (toList!7677 List!55385)) )
))
(declare-fun lm!2671 () ListLongMap!6217)

(assert (=> b!4837156 (= res!2061407 (not (is-Cons!55261 (toList!7677 lm!2671))))))

(declare-fun b!4837157 () Bool)

(declare-fun e!3022972 () Bool)

(declare-fun tp!1363569 () Bool)

(assert (=> b!4837157 (= e!3022972 tp!1363569)))

(declare-fun b!4837158 () Bool)

(declare-fun res!2061411 () Bool)

(assert (=> b!4837158 (=> (not res!2061411) (not e!3022971))))

(declare-fun key!6540 () K!17012)

(declare-fun containsKeyBiggerList!661 (List!55385 K!17012) Bool)

(assert (=> b!4837158 (= res!2061411 (containsKeyBiggerList!661 (toList!7677 lm!2671) key!6540))))

(declare-fun b!4837159 () Bool)

(declare-fun res!2061404 () Bool)

(assert (=> b!4837159 (=> (not res!2061404) (not e!3022971))))

(declare-fun containsKey!4527 (List!55384 K!17012) Bool)

(declare-fun head!10379 (List!55385) tuple2!58704)

(assert (=> b!4837159 (= res!2061404 (not (containsKey!4527 (_2!32646 (head!10379 (toList!7677 lm!2671))) key!6540)))))

(declare-fun b!4837160 () Bool)

(assert (=> b!4837160 (= e!3022973 (not (containsKey!4527 (_2!32646 (h!61696 (toList!7677 lm!2671))) key!6540)))))

(declare-fun b!4837161 () Bool)

(declare-fun lambda!239834 () Int)

(declare-fun forall!12782 (List!55385 Int) Bool)

(assert (=> b!4837161 (= e!3022971 (not (forall!12782 (toList!7677 lm!2671) lambda!239834)))))

(declare-fun b!4837162 () Bool)

(declare-fun res!2061406 () Bool)

(assert (=> b!4837162 (=> (not res!2061406) (not e!3022971))))

(assert (=> b!4837162 (= res!2061406 (is-Cons!55261 (toList!7677 lm!2671)))))

(declare-fun res!2061405 () Bool)

(assert (=> start!503084 (=> (not res!2061405) (not e!3022971))))

(assert (=> start!503084 (= res!2061405 (forall!12782 (toList!7677 lm!2671) lambda!239834))))

(assert (=> start!503084 e!3022971))

(declare-fun inv!70913 (ListLongMap!6217) Bool)

(assert (=> start!503084 (and (inv!70913 lm!2671) e!3022972)))

(assert (=> start!503084 true))

(declare-fun tp_is_empty!34853 () Bool)

(assert (=> start!503084 tp_is_empty!34853))

(declare-fun b!4837155 () Bool)

(declare-fun res!2061410 () Bool)

(assert (=> b!4837155 (=> (not res!2061410) (not e!3022971))))

(declare-datatypes ((ListMap!7031 0))(
  ( (ListMap!7032 (toList!7678 List!55384)) )
))
(declare-fun extractMap!2735 (List!55385) ListMap!7031)

(declare-fun addToMapMapFromBucket!1875 (List!55384 ListMap!7031) ListMap!7031)

(assert (=> b!4837155 (= res!2061410 (= (extractMap!2735 (toList!7677 lm!2671)) (addToMapMapFromBucket!1875 (_2!32646 (h!61696 (toList!7677 lm!2671))) (extractMap!2735 (t!362881 (toList!7677 lm!2671))))))))

(declare-fun b!4837163 () Bool)

(declare-fun res!2061408 () Bool)

(assert (=> b!4837163 (=> (not res!2061408) (not e!3022971))))

(declare-datatypes ((Hashable!7377 0))(
  ( (HashableExt!7376 (__x!33652 Int)) )
))
(declare-fun hashF!1662 () Hashable!7377)

(declare-fun allKeysSameHashInMap!2693 (ListLongMap!6217 Hashable!7377) Bool)

(assert (=> b!4837163 (= res!2061408 (allKeysSameHashInMap!2693 lm!2671 hashF!1662))))

(declare-fun b!4837164 () Bool)

(declare-fun res!2061409 () Bool)

(assert (=> b!4837164 (=> (not res!2061409) (not e!3022971))))

(assert (=> b!4837164 (= res!2061409 (forall!12782 (toList!7677 lm!2671) lambda!239834))))

(assert (= (and start!503084 res!2061405) b!4837163))

(assert (= (and b!4837163 res!2061408) b!4837158))

(assert (= (and b!4837158 res!2061411) b!4837156))

(assert (= (and b!4837156 (not res!2061407)) b!4837160))

(assert (= (and b!4837156 res!2061403) b!4837162))

(assert (= (and b!4837162 res!2061406) b!4837155))

(assert (= (and b!4837155 res!2061410) b!4837164))

(assert (= (and b!4837164 res!2061409) b!4837159))

(assert (= (and b!4837159 res!2061404) b!4837161))

(assert (= start!503084 b!4837157))

(declare-fun m!5832346 () Bool)

(assert (=> b!4837163 m!5832346))

(declare-fun m!5832348 () Bool)

(assert (=> start!503084 m!5832348))

(declare-fun m!5832350 () Bool)

(assert (=> start!503084 m!5832350))

(declare-fun m!5832352 () Bool)

(assert (=> b!4837158 m!5832352))

(declare-fun m!5832354 () Bool)

(assert (=> b!4837160 m!5832354))

(assert (=> b!4837161 m!5832348))

(declare-fun m!5832356 () Bool)

(assert (=> b!4837155 m!5832356))

(declare-fun m!5832358 () Bool)

(assert (=> b!4837155 m!5832358))

(assert (=> b!4837155 m!5832358))

(declare-fun m!5832360 () Bool)

(assert (=> b!4837155 m!5832360))

(assert (=> b!4837164 m!5832348))

(declare-fun m!5832362 () Bool)

(assert (=> b!4837159 m!5832362))

(declare-fun m!5832364 () Bool)

(assert (=> b!4837159 m!5832364))

(push 1)

(assert (not b!4837164))

(assert tp_is_empty!34853)

(assert (not start!503084))

(assert (not b!4837157))

(assert (not b!4837158))

(assert (not b!4837155))

(assert (not b!4837160))

(assert (not b!4837161))

(assert (not b!4837159))

(assert (not b!4837163))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

