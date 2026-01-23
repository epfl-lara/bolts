; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502790 () Bool)

(assert start!502790)

(declare-fun b!4835871 () Bool)

(declare-fun res!2060472 () Bool)

(declare-fun e!3022175 () Bool)

(assert (=> b!4835871 (=> (not res!2060472) (not e!3022175))))

(declare-datatypes ((K!16952 0))(
  ( (K!16953 (val!21867 Int)) )
))
(declare-datatypes ((V!17198 0))(
  ( (V!17199 (val!21868 Int)) )
))
(declare-datatypes ((tuple2!58606 0))(
  ( (tuple2!58607 (_1!32597 K!16952) (_2!32597 V!17198)) )
))
(declare-datatypes ((List!55336 0))(
  ( (Nil!55212) (Cons!55212 (h!61647 tuple2!58606) (t!362832 List!55336)) )
))
(declare-datatypes ((tuple2!58608 0))(
  ( (tuple2!58609 (_1!32598 (_ BitVec 64)) (_2!32598 List!55336)) )
))
(declare-datatypes ((List!55337 0))(
  ( (Nil!55213) (Cons!55213 (h!61648 tuple2!58608) (t!362833 List!55337)) )
))
(declare-datatypes ((ListLongMap!6169 0))(
  ( (ListLongMap!6170 (toList!7641 List!55337)) )
))
(declare-fun lm!2671 () ListLongMap!6169)

(declare-fun key!6540 () K!16952)

(declare-fun containsKeyBiggerList!637 (List!55337 K!16952) Bool)

(assert (=> b!4835871 (= res!2060472 (containsKeyBiggerList!637 (toList!7641 lm!2671) key!6540))))

(declare-fun b!4835872 () Bool)

(declare-fun res!2060475 () Bool)

(assert (=> b!4835872 (=> (not res!2060475) (not e!3022175))))

(declare-fun containsKey!4503 (List!55336 K!16952) Bool)

(assert (=> b!4835872 (= res!2060475 (containsKey!4503 (_2!32598 (h!61648 (toList!7641 lm!2671))) key!6540))))

(declare-fun res!2060476 () Bool)

(assert (=> start!502790 (=> (not res!2060476) (not e!3022175))))

(declare-fun lambda!239420 () Int)

(declare-fun forall!12753 (List!55337 Int) Bool)

(assert (=> start!502790 (= res!2060476 (forall!12753 (toList!7641 lm!2671) lambda!239420))))

(assert (=> start!502790 e!3022175))

(declare-fun e!3022176 () Bool)

(declare-fun inv!70853 (ListLongMap!6169) Bool)

(assert (=> start!502790 (and (inv!70853 lm!2671) e!3022176)))

(assert (=> start!502790 true))

(declare-fun tp_is_empty!34805 () Bool)

(assert (=> start!502790 tp_is_empty!34805))

(declare-fun b!4835873 () Bool)

(declare-fun res!2060471 () Bool)

(declare-fun e!3022177 () Bool)

(assert (=> b!4835873 (=> (not res!2060471) (not e!3022177))))

(declare-fun head!10361 (List!55337) tuple2!58608)

(assert (=> b!4835873 (= res!2060471 (containsKey!4503 (_2!32598 (head!10361 (toList!7641 lm!2671))) key!6540))))

(declare-fun b!4835874 () Bool)

(assert (=> b!4835874 (= e!3022177 (not (forall!12753 (toList!7641 lm!2671) lambda!239420)))))

(declare-fun b!4835875 () Bool)

(declare-fun tp!1363413 () Bool)

(assert (=> b!4835875 (= e!3022176 tp!1363413)))

(declare-fun b!4835876 () Bool)

(assert (=> b!4835876 (= e!3022175 e!3022177)))

(declare-fun res!2060477 () Bool)

(assert (=> b!4835876 (=> (not res!2060477) (not e!3022177))))

(assert (=> b!4835876 (= res!2060477 (forall!12753 (toList!7641 lm!2671) lambda!239420))))

(declare-fun lt!1981618 () V!17198)

(declare-fun getValue!167 (List!55337 K!16952) V!17198)

(assert (=> b!4835876 (= lt!1981618 (getValue!167 (toList!7641 lm!2671) key!6540))))

(declare-fun b!4835877 () Bool)

(declare-fun res!2060474 () Bool)

(assert (=> b!4835877 (=> (not res!2060474) (not e!3022175))))

(assert (=> b!4835877 (= res!2060474 (is-Cons!55213 (toList!7641 lm!2671)))))

(declare-fun b!4835878 () Bool)

(declare-fun res!2060473 () Bool)

(assert (=> b!4835878 (=> (not res!2060473) (not e!3022175))))

(declare-datatypes ((Hashable!7353 0))(
  ( (HashableExt!7352 (__x!33628 Int)) )
))
(declare-fun hashF!1662 () Hashable!7353)

(declare-fun allKeysSameHashInMap!2669 (ListLongMap!6169 Hashable!7353) Bool)

(assert (=> b!4835878 (= res!2060473 (allKeysSameHashInMap!2669 lm!2671 hashF!1662))))

(assert (= (and start!502790 res!2060476) b!4835878))

(assert (= (and b!4835878 res!2060473) b!4835871))

(assert (= (and b!4835871 res!2060472) b!4835877))

(assert (= (and b!4835877 res!2060474) b!4835872))

(assert (= (and b!4835872 res!2060475) b!4835876))

(assert (= (and b!4835876 res!2060477) b!4835873))

(assert (= (and b!4835873 res!2060471) b!4835874))

(assert (= start!502790 b!4835875))

(declare-fun m!5831150 () Bool)

(assert (=> b!4835872 m!5831150))

(declare-fun m!5831152 () Bool)

(assert (=> b!4835878 m!5831152))

(declare-fun m!5831154 () Bool)

(assert (=> start!502790 m!5831154))

(declare-fun m!5831156 () Bool)

(assert (=> start!502790 m!5831156))

(declare-fun m!5831158 () Bool)

(assert (=> b!4835871 m!5831158))

(declare-fun m!5831160 () Bool)

(assert (=> b!4835873 m!5831160))

(declare-fun m!5831162 () Bool)

(assert (=> b!4835873 m!5831162))

(assert (=> b!4835874 m!5831154))

(assert (=> b!4835876 m!5831154))

(declare-fun m!5831164 () Bool)

(assert (=> b!4835876 m!5831164))

(push 1)

(assert tp_is_empty!34805)

(assert (not b!4835878))

(assert (not b!4835875))

(assert (not b!4835872))

(assert (not b!4835874))

(assert (not b!4835873))

(assert (not b!4835876))

(assert (not start!502790))

(assert (not b!4835871))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

