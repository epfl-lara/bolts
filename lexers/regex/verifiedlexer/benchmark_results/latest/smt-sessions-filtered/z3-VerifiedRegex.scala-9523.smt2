; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!502686 () Bool)

(assert start!502686)

(declare-fun b!4835405 () Bool)

(declare-fun e!3021847 () Bool)

(declare-fun tp!1363330 () Bool)

(assert (=> b!4835405 (= e!3021847 tp!1363330)))

(declare-fun b!4835403 () Bool)

(declare-fun e!3021849 () Bool)

(declare-fun e!3021848 () Bool)

(assert (=> b!4835403 (= e!3021849 e!3021848)))

(declare-fun res!2060139 () Bool)

(assert (=> b!4835403 (=> (not res!2060139) (not e!3021848))))

(declare-datatypes ((K!16904 0))(
  ( (K!16905 (val!21829 Int)) )
))
(declare-datatypes ((V!17150 0))(
  ( (V!17151 (val!21830 Int)) )
))
(declare-datatypes ((tuple2!58530 0))(
  ( (tuple2!58531 (_1!32559 K!16904) (_2!32559 V!17150)) )
))
(declare-datatypes ((List!55298 0))(
  ( (Nil!55174) (Cons!55174 (h!61608 tuple2!58530) (t!362794 List!55298)) )
))
(declare-datatypes ((tuple2!58532 0))(
  ( (tuple2!58533 (_1!32560 (_ BitVec 64)) (_2!32560 List!55298)) )
))
(declare-datatypes ((List!55299 0))(
  ( (Nil!55175) (Cons!55175 (h!61609 tuple2!58532) (t!362795 List!55299)) )
))
(declare-datatypes ((ListLongMap!6131 0))(
  ( (ListLongMap!6132 (toList!7620 List!55299)) )
))
(declare-fun lm!1282 () ListLongMap!6131)

(declare-fun lt!1981362 () (_ BitVec 64))

(declare-fun contains!18999 (ListLongMap!6131 (_ BitVec 64)) Bool)

(assert (=> b!4835403 (= res!2060139 (contains!18999 lm!1282 lt!1981362))))

(declare-datatypes ((Hashable!7334 0))(
  ( (HashableExt!7333 (__x!33609 Int)) )
))
(declare-fun hashF!961 () Hashable!7334)

(declare-fun key!2791 () K!16904)

(declare-fun hash!5520 (Hashable!7334 K!16904) (_ BitVec 64))

(assert (=> b!4835403 (= lt!1981362 (hash!5520 hashF!961 key!2791))))

(declare-fun b!4835402 () Bool)

(declare-fun res!2060138 () Bool)

(assert (=> b!4835402 (=> (not res!2060138) (not e!3021849))))

(declare-fun allKeysSameHashInMap!2650 (ListLongMap!6131 Hashable!7334) Bool)

(assert (=> b!4835402 (= res!2060138 (allKeysSameHashInMap!2650 lm!1282 hashF!961))))

(declare-fun b!4835404 () Bool)

(assert (=> b!4835404 (= e!3021848 false)))

(declare-fun lt!1981363 () List!55298)

(declare-fun apply!13397 (ListLongMap!6131 (_ BitVec 64)) List!55298)

(assert (=> b!4835404 (= lt!1981363 (apply!13397 lm!1282 lt!1981362))))

(declare-fun res!2060137 () Bool)

(assert (=> start!502686 (=> (not res!2060137) (not e!3021849))))

(declare-fun lambda!239302 () Int)

(declare-fun forall!12733 (List!55299 Int) Bool)

(assert (=> start!502686 (= res!2060137 (forall!12733 (toList!7620 lm!1282) lambda!239302))))

(assert (=> start!502686 e!3021849))

(declare-fun inv!70804 (ListLongMap!6131) Bool)

(assert (=> start!502686 (and (inv!70804 lm!1282) e!3021847)))

(assert (=> start!502686 true))

(declare-fun tp_is_empty!34763 () Bool)

(assert (=> start!502686 tp_is_empty!34763))

(assert (= (and start!502686 res!2060137) b!4835402))

(assert (= (and b!4835402 res!2060138) b!4835403))

(assert (= (and b!4835403 res!2060139) b!4835404))

(assert (= start!502686 b!4835405))

(declare-fun m!5830640 () Bool)

(assert (=> b!4835403 m!5830640))

(declare-fun m!5830642 () Bool)

(assert (=> b!4835403 m!5830642))

(declare-fun m!5830644 () Bool)

(assert (=> b!4835402 m!5830644))

(declare-fun m!5830646 () Bool)

(assert (=> b!4835404 m!5830646))

(declare-fun m!5830648 () Bool)

(assert (=> start!502686 m!5830648))

(declare-fun m!5830650 () Bool)

(assert (=> start!502686 m!5830650))

(check-sat tp_is_empty!34763 (not b!4835403) (not start!502686) (not b!4835404) (not b!4835402) (not b!4835405))
(check-sat)
