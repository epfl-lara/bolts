; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504470 () Bool)

(assert start!504470)

(declare-fun res!2066302 () Bool)

(declare-fun e!3027970 () Bool)

(assert (=> start!504470 (=> (not res!2066302) (not e!3027970))))

(declare-datatypes ((K!17207 0))(
  ( (K!17208 (val!22071 Int)) )
))
(declare-datatypes ((V!17453 0))(
  ( (V!17454 (val!22072 Int)) )
))
(declare-datatypes ((tuple2!59014 0))(
  ( (tuple2!59015 (_1!32801 K!17207) (_2!32801 V!17453)) )
))
(declare-datatypes ((List!55564 0))(
  ( (Nil!55440) (Cons!55440 (h!61877 tuple2!59014) (t!363060 List!55564)) )
))
(declare-datatypes ((tuple2!59016 0))(
  ( (tuple2!59017 (_1!32802 (_ BitVec 64)) (_2!32802 List!55564)) )
))
(declare-datatypes ((List!55565 0))(
  ( (Nil!55441) (Cons!55441 (h!61878 tuple2!59016) (t!363061 List!55565)) )
))
(declare-datatypes ((ListLongMap!6373 0))(
  ( (ListLongMap!6374 (toList!7815 List!55565)) )
))
(declare-fun lm!2706 () ListLongMap!6373)

(declare-fun lambda!242169 () Int)

(declare-fun forall!12894 (List!55565 Int) Bool)

(assert (=> start!504470 (= res!2066302 (forall!12894 (toList!7815 lm!2706) lambda!242169))))

(assert (=> start!504470 e!3027970))

(declare-fun e!3027969 () Bool)

(declare-fun inv!71108 (ListLongMap!6373) Bool)

(assert (=> start!504470 (and (inv!71108 lm!2706) e!3027969)))

(assert (=> start!504470 true))

(declare-fun tp_is_empty!35021 () Bool)

(assert (=> start!504470 tp_is_empty!35021))

(declare-fun b!4844744 () Bool)

(assert (=> b!4844744 (= e!3027970 false)))

(declare-fun lt!1987886 () Bool)

(declare-fun key!6636 () K!17207)

(declare-fun containsKey!4628 (List!55564 K!17207) Bool)

(declare-fun head!10395 (List!55565) tuple2!59016)

(assert (=> b!4844744 (= lt!1987886 (containsKey!4628 (_2!32802 (head!10395 (toList!7815 lm!2706))) key!6636))))

(declare-fun b!4844745 () Bool)

(declare-fun tp!1364129 () Bool)

(assert (=> b!4844745 (= e!3027969 tp!1364129)))

(declare-fun b!4844742 () Bool)

(declare-fun res!2066301 () Bool)

(assert (=> b!4844742 (=> (not res!2066301) (not e!3027970))))

(declare-datatypes ((Hashable!7455 0))(
  ( (HashableExt!7454 (__x!33730 Int)) )
))
(declare-fun hashF!1684 () Hashable!7455)

(declare-fun allKeysSameHashInMap!2771 (ListLongMap!6373 Hashable!7455) Bool)

(assert (=> b!4844742 (= res!2066301 (allKeysSameHashInMap!2771 lm!2706 hashF!1684))))

(declare-fun b!4844743 () Bool)

(declare-fun res!2066300 () Bool)

(assert (=> b!4844743 (=> (not res!2066300) (not e!3027970))))

(declare-fun containsKeyBiggerList!739 (List!55565 K!17207) Bool)

(assert (=> b!4844743 (= res!2066300 (containsKeyBiggerList!739 (toList!7815 lm!2706) key!6636))))

(assert (= (and start!504470 res!2066302) b!4844742))

(assert (= (and b!4844742 res!2066301) b!4844743))

(assert (= (and b!4844743 res!2066300) b!4844744))

(assert (= start!504470 b!4844745))

(declare-fun m!5843288 () Bool)

(assert (=> start!504470 m!5843288))

(declare-fun m!5843290 () Bool)

(assert (=> start!504470 m!5843290))

(declare-fun m!5843292 () Bool)

(assert (=> b!4844744 m!5843292))

(declare-fun m!5843294 () Bool)

(assert (=> b!4844744 m!5843294))

(declare-fun m!5843296 () Bool)

(assert (=> b!4844742 m!5843296))

(declare-fun m!5843298 () Bool)

(assert (=> b!4844743 m!5843298))

(push 1)

(assert (not b!4844744))

(assert (not b!4844743))

(assert (not b!4844742))

(assert (not b!4844745))

(assert tp_is_empty!35021)

(assert (not start!504470))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

