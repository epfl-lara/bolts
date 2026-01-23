; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502782 () Bool)

(assert start!502782)

(declare-fun b!4835799 () Bool)

(declare-fun e!3022150 () Bool)

(assert (=> b!4835799 (= e!3022150 false)))

(declare-fun lt!1981612 () Bool)

(declare-datatypes ((K!16942 0))(
  ( (K!16943 (val!21859 Int)) )
))
(declare-datatypes ((V!17188 0))(
  ( (V!17189 (val!21860 Int)) )
))
(declare-datatypes ((tuple2!58590 0))(
  ( (tuple2!58591 (_1!32589 K!16942) (_2!32589 V!17188)) )
))
(declare-datatypes ((List!55328 0))(
  ( (Nil!55204) (Cons!55204 (h!61639 tuple2!58590) (t!362824 List!55328)) )
))
(declare-datatypes ((tuple2!58592 0))(
  ( (tuple2!58593 (_1!32590 (_ BitVec 64)) (_2!32590 List!55328)) )
))
(declare-datatypes ((List!55329 0))(
  ( (Nil!55205) (Cons!55205 (h!61640 tuple2!58592) (t!362825 List!55329)) )
))
(declare-datatypes ((ListLongMap!6161 0))(
  ( (ListLongMap!6162 (toList!7637 List!55329)) )
))
(declare-fun lm!2671 () ListLongMap!6161)

(declare-fun key!6540 () K!16942)

(declare-fun containsKey!4499 (List!55328 K!16942) Bool)

(assert (=> b!4835799 (= lt!1981612 (containsKey!4499 (_2!32590 (h!61640 (toList!7637 lm!2671))) key!6540))))

(declare-fun res!2060414 () Bool)

(assert (=> start!502782 (=> (not res!2060414) (not e!3022150))))

(declare-fun lambda!239400 () Int)

(declare-fun forall!12749 (List!55329 Int) Bool)

(assert (=> start!502782 (= res!2060414 (forall!12749 (toList!7637 lm!2671) lambda!239400))))

(assert (=> start!502782 e!3022150))

(declare-fun e!3022149 () Bool)

(declare-fun inv!70843 (ListLongMap!6161) Bool)

(assert (=> start!502782 (and (inv!70843 lm!2671) e!3022149)))

(assert (=> start!502782 true))

(declare-fun tp_is_empty!34797 () Bool)

(assert (=> start!502782 tp_is_empty!34797))

(declare-fun b!4835800 () Bool)

(declare-fun res!2060413 () Bool)

(assert (=> b!4835800 (=> (not res!2060413) (not e!3022150))))

(declare-fun containsKeyBiggerList!633 (List!55329 K!16942) Bool)

(assert (=> b!4835800 (= res!2060413 (containsKeyBiggerList!633 (toList!7637 lm!2671) key!6540))))

(declare-fun b!4835801 () Bool)

(declare-fun res!2060412 () Bool)

(assert (=> b!4835801 (=> (not res!2060412) (not e!3022150))))

(assert (=> b!4835801 (= res!2060412 (is-Cons!55205 (toList!7637 lm!2671)))))

(declare-fun b!4835802 () Bool)

(declare-fun res!2060411 () Bool)

(assert (=> b!4835802 (=> (not res!2060411) (not e!3022150))))

(declare-datatypes ((Hashable!7349 0))(
  ( (HashableExt!7348 (__x!33624 Int)) )
))
(declare-fun hashF!1662 () Hashable!7349)

(declare-fun allKeysSameHashInMap!2665 (ListLongMap!6161 Hashable!7349) Bool)

(assert (=> b!4835802 (= res!2060411 (allKeysSameHashInMap!2665 lm!2671 hashF!1662))))

(declare-fun b!4835803 () Bool)

(declare-fun tp!1363401 () Bool)

(assert (=> b!4835803 (= e!3022149 tp!1363401)))

(assert (= (and start!502782 res!2060414) b!4835802))

(assert (= (and b!4835802 res!2060411) b!4835800))

(assert (= (and b!4835800 res!2060413) b!4835801))

(assert (= (and b!4835801 res!2060412) b!4835799))

(assert (= start!502782 b!4835803))

(declare-fun m!5831110 () Bool)

(assert (=> b!4835799 m!5831110))

(declare-fun m!5831112 () Bool)

(assert (=> start!502782 m!5831112))

(declare-fun m!5831114 () Bool)

(assert (=> start!502782 m!5831114))

(declare-fun m!5831116 () Bool)

(assert (=> b!4835800 m!5831116))

(declare-fun m!5831118 () Bool)

(assert (=> b!4835802 m!5831118))

(push 1)

(assert (not b!4835799))

(assert tp_is_empty!34797)

(assert (not b!4835800))

(assert (not b!4835803))

(assert (not start!502782))

(assert (not b!4835802))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

