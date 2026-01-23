; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503180 () Bool)

(assert start!503180)

(declare-fun b!4837687 () Bool)

(declare-fun e!3023314 () Bool)

(declare-fun e!3023313 () Bool)

(assert (=> b!4837687 (= e!3023314 e!3023313)))

(declare-fun res!2061798 () Bool)

(assert (=> b!4837687 (=> res!2061798 e!3023313)))

(declare-datatypes ((K!17027 0))(
  ( (K!17028 (val!21927 Int)) )
))
(declare-datatypes ((V!17273 0))(
  ( (V!17274 (val!21928 Int)) )
))
(declare-datatypes ((tuple2!58726 0))(
  ( (tuple2!58727 (_1!32657 K!17027) (_2!32657 V!17273)) )
))
(declare-datatypes ((List!55398 0))(
  ( (Nil!55274) (Cons!55274 (h!61709 tuple2!58726) (t!362894 List!55398)) )
))
(declare-datatypes ((tuple2!58728 0))(
  ( (tuple2!58729 (_1!32658 (_ BitVec 64)) (_2!32658 List!55398)) )
))
(declare-datatypes ((List!55399 0))(
  ( (Nil!55275) (Cons!55275 (h!61710 tuple2!58728) (t!362895 List!55399)) )
))
(declare-datatypes ((ListLongMap!6229 0))(
  ( (ListLongMap!6230 (toList!7689 List!55399)) )
))
(declare-fun lt!1982631 () ListLongMap!6229)

(declare-fun lambda!239982 () Int)

(declare-fun forall!12790 (List!55399 Int) Bool)

(assert (=> b!4837687 (= res!2061798 (not (forall!12790 (toList!7689 lt!1982631) lambda!239982)))))

(declare-fun lm!2671 () ListLongMap!6229)

(declare-fun tail!9443 (ListLongMap!6229) ListLongMap!6229)

(assert (=> b!4837687 (= lt!1982631 (tail!9443 lm!2671))))

(declare-fun b!4837688 () Bool)

(declare-fun res!2061799 () Bool)

(declare-fun e!3023315 () Bool)

(assert (=> b!4837688 (=> (not res!2061799) (not e!3023315))))

(declare-datatypes ((Hashable!7383 0))(
  ( (HashableExt!7382 (__x!33658 Int)) )
))
(declare-fun hashF!1662 () Hashable!7383)

(declare-fun allKeysSameHashInMap!2699 (ListLongMap!6229 Hashable!7383) Bool)

(assert (=> b!4837688 (= res!2061799 (allKeysSameHashInMap!2699 lm!2671 hashF!1662))))

(declare-fun b!4837689 () Bool)

(declare-fun res!2061800 () Bool)

(assert (=> b!4837689 (=> (not res!2061800) (not e!3023315))))

(declare-datatypes ((ListMap!7043 0))(
  ( (ListMap!7044 (toList!7690 List!55398)) )
))
(declare-fun extractMap!2741 (List!55399) ListMap!7043)

(declare-fun addToMapMapFromBucket!1881 (List!55398 ListMap!7043) ListMap!7043)

(assert (=> b!4837689 (= res!2061800 (= (extractMap!2741 (toList!7689 lm!2671)) (addToMapMapFromBucket!1881 (_2!32658 (h!61710 (toList!7689 lm!2671))) (extractMap!2741 (t!362895 (toList!7689 lm!2671))))))))

(declare-fun b!4837691 () Bool)

(declare-fun res!2061804 () Bool)

(assert (=> b!4837691 (=> res!2061804 e!3023313)))

(declare-fun key!6540 () K!17027)

(declare-fun containsKeyBiggerList!667 (List!55399 K!17027) Bool)

(assert (=> b!4837691 (= res!2061804 (not (containsKeyBiggerList!667 (toList!7689 lt!1982631) key!6540)))))

(declare-fun b!4837692 () Bool)

(assert (=> b!4837692 (= e!3023313 (forall!12790 (toList!7689 lt!1982631) lambda!239982))))

(declare-fun b!4837693 () Bool)

(declare-fun res!2061806 () Bool)

(assert (=> b!4837693 (=> res!2061806 e!3023313)))

(assert (=> b!4837693 (= res!2061806 (not (allKeysSameHashInMap!2699 lt!1982631 hashF!1662)))))

(declare-fun b!4837694 () Bool)

(declare-fun res!2061802 () Bool)

(assert (=> b!4837694 (=> (not res!2061802) (not e!3023315))))

(assert (=> b!4837694 (= res!2061802 (containsKeyBiggerList!667 (toList!7689 lm!2671) key!6540))))

(declare-fun b!4837695 () Bool)

(declare-fun res!2061803 () Bool)

(assert (=> b!4837695 (=> (not res!2061803) (not e!3023315))))

(assert (=> b!4837695 (= res!2061803 (is-Cons!55275 (toList!7689 lm!2671)))))

(declare-fun b!4837696 () Bool)

(declare-fun res!2061801 () Bool)

(assert (=> b!4837696 (=> (not res!2061801) (not e!3023315))))

(declare-fun e!3023312 () Bool)

(assert (=> b!4837696 (= res!2061801 e!3023312)))

(declare-fun res!2061797 () Bool)

(assert (=> b!4837696 (=> res!2061797 e!3023312)))

(assert (=> b!4837696 (= res!2061797 (not (is-Cons!55275 (toList!7689 lm!2671))))))

(declare-fun res!2061807 () Bool)

(assert (=> start!503180 (=> (not res!2061807) (not e!3023315))))

(assert (=> start!503180 (= res!2061807 (forall!12790 (toList!7689 lm!2671) lambda!239982))))

(assert (=> start!503180 e!3023315))

(declare-fun e!3023311 () Bool)

(declare-fun inv!70928 (ListLongMap!6229) Bool)

(assert (=> start!503180 (and (inv!70928 lm!2671) e!3023311)))

(assert (=> start!503180 true))

(declare-fun tp_is_empty!34869 () Bool)

(assert (=> start!503180 tp_is_empty!34869))

(declare-fun b!4837690 () Bool)

(assert (=> b!4837690 (= e!3023315 (not e!3023314))))

(declare-fun res!2061805 () Bool)

(assert (=> b!4837690 (=> res!2061805 e!3023314)))

(assert (=> b!4837690 (= res!2061805 (not (containsKeyBiggerList!667 (t!362895 (toList!7689 lm!2671)) key!6540)))))

(declare-fun tail!9444 (List!55399) List!55399)

(assert (=> b!4837690 (containsKeyBiggerList!667 (tail!9444 (toList!7689 lm!2671)) key!6540)))

(declare-datatypes ((Unit!144727 0))(
  ( (Unit!144728) )
))
(declare-fun lt!1982630 () Unit!144727)

(declare-fun lemmaInBiggerListButNotHeadThenTail!27 (ListLongMap!6229 K!17027 Hashable!7383) Unit!144727)

(assert (=> b!4837690 (= lt!1982630 (lemmaInBiggerListButNotHeadThenTail!27 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4837697 () Bool)

(declare-fun containsKey!4535 (List!55398 K!17027) Bool)

(assert (=> b!4837697 (= e!3023312 (not (containsKey!4535 (_2!32658 (h!61710 (toList!7689 lm!2671))) key!6540)))))

(declare-fun b!4837698 () Bool)

(declare-fun tp!1363609 () Bool)

(assert (=> b!4837698 (= e!3023311 tp!1363609)))

(assert (= (and start!503180 res!2061807) b!4837688))

(assert (= (and b!4837688 res!2061799) b!4837694))

(assert (= (and b!4837694 res!2061802) b!4837696))

(assert (= (and b!4837696 (not res!2061797)) b!4837697))

(assert (= (and b!4837696 res!2061801) b!4837695))

(assert (= (and b!4837695 res!2061803) b!4837689))

(assert (= (and b!4837689 res!2061800) b!4837690))

(assert (= (and b!4837690 (not res!2061805)) b!4837687))

(assert (= (and b!4837687 (not res!2061798)) b!4837693))

(assert (= (and b!4837693 (not res!2061806)) b!4837691))

(assert (= (and b!4837691 (not res!2061804)) b!4837692))

(assert (= start!503180 b!4837698))

(declare-fun m!5833080 () Bool)

(assert (=> b!4837697 m!5833080))

(declare-fun m!5833082 () Bool)

(assert (=> b!4837691 m!5833082))

(declare-fun m!5833084 () Bool)

(assert (=> b!4837694 m!5833084))

(declare-fun m!5833086 () Bool)

(assert (=> b!4837692 m!5833086))

(declare-fun m!5833088 () Bool)

(assert (=> b!4837689 m!5833088))

(declare-fun m!5833090 () Bool)

(assert (=> b!4837689 m!5833090))

(assert (=> b!4837689 m!5833090))

(declare-fun m!5833092 () Bool)

(assert (=> b!4837689 m!5833092))

(declare-fun m!5833094 () Bool)

(assert (=> start!503180 m!5833094))

(declare-fun m!5833096 () Bool)

(assert (=> start!503180 m!5833096))

(declare-fun m!5833098 () Bool)

(assert (=> b!4837690 m!5833098))

(declare-fun m!5833100 () Bool)

(assert (=> b!4837690 m!5833100))

(assert (=> b!4837690 m!5833100))

(declare-fun m!5833102 () Bool)

(assert (=> b!4837690 m!5833102))

(declare-fun m!5833104 () Bool)

(assert (=> b!4837690 m!5833104))

(declare-fun m!5833106 () Bool)

(assert (=> b!4837688 m!5833106))

(assert (=> b!4837687 m!5833086))

(declare-fun m!5833108 () Bool)

(assert (=> b!4837687 m!5833108))

(declare-fun m!5833110 () Bool)

(assert (=> b!4837693 m!5833110))

(push 1)

(assert (not b!4837698))

(assert (not b!4837688))

(assert (not b!4837690))

(assert (not b!4837687))

(assert (not b!4837693))

(assert (not b!4837689))

(assert (not b!4837694))

(assert (not b!4837691))

(assert (not b!4837692))

(assert (not b!4837697))

(assert tp_is_empty!34869)

(assert (not start!503180))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

