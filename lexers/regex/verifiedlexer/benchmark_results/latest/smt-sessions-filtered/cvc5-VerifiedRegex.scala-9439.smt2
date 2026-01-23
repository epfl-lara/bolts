; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498948 () Bool)

(assert start!498948)

(declare-fun res!2050011 () Bool)

(declare-fun e!3010454 () Bool)

(assert (=> start!498948 (=> (not res!2050011) (not e!3010454))))

(declare-datatypes ((V!16728 0))(
  ( (V!16729 (val!21491 Int)) )
))
(declare-datatypes ((K!16482 0))(
  ( (K!16483 (val!21492 Int)) )
))
(declare-datatypes ((tuple2!57918 0))(
  ( (tuple2!57919 (_1!32253 K!16482) (_2!32253 V!16728)) )
))
(declare-datatypes ((List!54941 0))(
  ( (Nil!54817) (Cons!54817 (h!61251 tuple2!57918) (t!362437 List!54941)) )
))
(declare-datatypes ((tuple2!57920 0))(
  ( (tuple2!57921 (_1!32254 (_ BitVec 64)) (_2!32254 List!54941)) )
))
(declare-datatypes ((List!54942 0))(
  ( (Nil!54818) (Cons!54818 (h!61252 tuple2!57920) (t!362438 List!54942)) )
))
(declare-datatypes ((ListLongMap!5857 0))(
  ( (ListLongMap!5858 (toList!7377 List!54942)) )
))
(declare-fun lm!2280 () ListLongMap!5857)

(declare-fun lambda!235027 () Int)

(declare-fun forall!12511 (List!54942 Int) Bool)

(assert (=> start!498948 (= res!2050011 (forall!12511 (toList!7377 lm!2280) lambda!235027))))

(assert (=> start!498948 e!3010454))

(declare-fun e!3010455 () Bool)

(declare-fun inv!70383 (ListLongMap!5857) Bool)

(assert (=> start!498948 (and (inv!70383 lm!2280) e!3010455)))

(assert (=> start!498948 true))

(declare-fun tp_is_empty!34275 () Bool)

(assert (=> start!498948 tp_is_empty!34275))

(declare-fun b!4818366 () Bool)

(declare-fun res!2050010 () Bool)

(assert (=> b!4818366 (=> (not res!2050010) (not e!3010454))))

(declare-datatypes ((Hashable!7197 0))(
  ( (HashableExt!7196 (__x!33472 Int)) )
))
(declare-fun hashF!1509 () Hashable!7197)

(declare-fun allKeysSameHashInMap!2513 (ListLongMap!5857 Hashable!7197) Bool)

(assert (=> b!4818366 (= res!2050010 (allKeysSameHashInMap!2513 lm!2280 hashF!1509))))

(declare-fun b!4818367 () Bool)

(assert (=> b!4818367 (= e!3010454 false)))

(declare-fun key!5428 () K!16482)

(declare-fun lt!1968273 () Bool)

(declare-fun contains!18651 (ListLongMap!5857 (_ BitVec 64)) Bool)

(declare-fun hash!5273 (Hashable!7197 K!16482) (_ BitVec 64))

(assert (=> b!4818367 (= lt!1968273 (contains!18651 lm!2280 (hash!5273 hashF!1509 key!5428)))))

(declare-fun b!4818368 () Bool)

(declare-fun tp!1362060 () Bool)

(assert (=> b!4818368 (= e!3010455 tp!1362060)))

(assert (= (and start!498948 res!2050011) b!4818366))

(assert (= (and b!4818366 res!2050010) b!4818367))

(assert (= start!498948 b!4818368))

(declare-fun m!5805328 () Bool)

(assert (=> start!498948 m!5805328))

(declare-fun m!5805330 () Bool)

(assert (=> start!498948 m!5805330))

(declare-fun m!5805332 () Bool)

(assert (=> b!4818366 m!5805332))

(declare-fun m!5805334 () Bool)

(assert (=> b!4818367 m!5805334))

(assert (=> b!4818367 m!5805334))

(declare-fun m!5805336 () Bool)

(assert (=> b!4818367 m!5805336))

(push 1)

(assert tp_is_empty!34275)

(assert (not start!498948))

(assert (not b!4818367))

(assert (not b!4818368))

(assert (not b!4818366))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

