; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503564 () Bool)

(assert start!503564)

(declare-fun b!4839695 () Bool)

(declare-fun res!2063056 () Bool)

(declare-fun e!3024601 () Bool)

(assert (=> b!4839695 (=> (not res!2063056) (not e!3024601))))

(declare-datatypes ((K!17087 0))(
  ( (K!17088 (val!21975 Int)) )
))
(declare-datatypes ((V!17333 0))(
  ( (V!17334 (val!21976 Int)) )
))
(declare-datatypes ((tuple2!58822 0))(
  ( (tuple2!58823 (_1!32705 K!17087) (_2!32705 V!17333)) )
))
(declare-datatypes ((List!55458 0))(
  ( (Nil!55334) (Cons!55334 (h!61769 tuple2!58822) (t!362954 List!55458)) )
))
(declare-datatypes ((tuple2!58824 0))(
  ( (tuple2!58825 (_1!32706 (_ BitVec 64)) (_2!32706 List!55458)) )
))
(declare-datatypes ((List!55459 0))(
  ( (Nil!55335) (Cons!55335 (h!61770 tuple2!58824) (t!362955 List!55459)) )
))
(declare-datatypes ((ListLongMap!6277 0))(
  ( (ListLongMap!6278 (toList!7735 List!55459)) )
))
(declare-fun lm!2671 () ListLongMap!6277)

(declare-fun key!6540 () K!17087)

(declare-fun containsKeyBiggerList!691 (List!55459 K!17087) Bool)

(assert (=> b!4839695 (= res!2063056 (containsKeyBiggerList!691 (toList!7735 lm!2671) key!6540))))

(declare-fun b!4839696 () Bool)

(declare-fun e!3024603 () Bool)

(declare-fun tp!1363753 () Bool)

(assert (=> b!4839696 (= e!3024603 tp!1363753)))

(declare-fun res!2063053 () Bool)

(assert (=> start!503564 (=> (not res!2063053) (not e!3024601))))

(declare-fun lambda!240654 () Int)

(declare-fun forall!12826 (List!55459 Int) Bool)

(assert (=> start!503564 (= res!2063053 (forall!12826 (toList!7735 lm!2671) lambda!240654))))

(assert (=> start!503564 e!3024601))

(declare-fun inv!70988 (ListLongMap!6277) Bool)

(assert (=> start!503564 (and (inv!70988 lm!2671) e!3024603)))

(assert (=> start!503564 true))

(declare-fun tp_is_empty!34917 () Bool)

(assert (=> start!503564 tp_is_empty!34917))

(declare-fun b!4839697 () Bool)

(declare-fun e!3024602 () Bool)

(declare-fun containsKey!4571 (List!55458 K!17087) Bool)

(assert (=> b!4839697 (= e!3024602 (not (containsKey!4571 (_2!32706 (h!61770 (toList!7735 lm!2671))) key!6540)))))

(declare-fun b!4839698 () Bool)

(assert (=> b!4839698 (= e!3024601 false)))

(declare-fun lt!1984226 () Bool)

(assert (=> b!4839698 (= lt!1984226 e!3024602)))

(declare-fun res!2063055 () Bool)

(assert (=> b!4839698 (=> res!2063055 e!3024602)))

(assert (=> b!4839698 (= res!2063055 (not (is-Cons!55335 (toList!7735 lm!2671))))))

(declare-fun b!4839699 () Bool)

(declare-fun res!2063054 () Bool)

(assert (=> b!4839699 (=> (not res!2063054) (not e!3024601))))

(declare-datatypes ((Hashable!7407 0))(
  ( (HashableExt!7406 (__x!33682 Int)) )
))
(declare-fun hashF!1662 () Hashable!7407)

(declare-fun allKeysSameHashInMap!2723 (ListLongMap!6277 Hashable!7407) Bool)

(assert (=> b!4839699 (= res!2063054 (allKeysSameHashInMap!2723 lm!2671 hashF!1662))))

(assert (= (and start!503564 res!2063053) b!4839699))

(assert (= (and b!4839699 res!2063054) b!4839695))

(assert (= (and b!4839695 res!2063056) b!4839698))

(assert (= (and b!4839698 (not res!2063055)) b!4839697))

(assert (= start!503564 b!4839696))

(declare-fun m!5835446 () Bool)

(assert (=> b!4839695 m!5835446))

(declare-fun m!5835448 () Bool)

(assert (=> start!503564 m!5835448))

(declare-fun m!5835450 () Bool)

(assert (=> start!503564 m!5835450))

(declare-fun m!5835452 () Bool)

(assert (=> b!4839697 m!5835452))

(declare-fun m!5835454 () Bool)

(assert (=> b!4839699 m!5835454))

(push 1)

(assert (not b!4839696))

(assert (not b!4839697))

(assert tp_is_empty!34917)

(assert (not b!4839695))

(assert (not start!503564))

(assert (not b!4839699))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

