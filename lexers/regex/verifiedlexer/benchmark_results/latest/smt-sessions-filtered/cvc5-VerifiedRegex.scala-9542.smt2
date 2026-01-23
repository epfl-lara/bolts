; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503028 () Bool)

(assert start!503028)

(declare-fun b!4836891 () Bool)

(declare-fun res!2061202 () Bool)

(declare-fun e!3022807 () Bool)

(assert (=> b!4836891 (=> (not res!2061202) (not e!3022807))))

(declare-datatypes ((K!16997 0))(
  ( (K!16998 (val!21903 Int)) )
))
(declare-datatypes ((V!17243 0))(
  ( (V!17244 (val!21904 Int)) )
))
(declare-datatypes ((tuple2!58678 0))(
  ( (tuple2!58679 (_1!32633 K!16997) (_2!32633 V!17243)) )
))
(declare-datatypes ((List!55372 0))(
  ( (Nil!55248) (Cons!55248 (h!61683 tuple2!58678) (t!362868 List!55372)) )
))
(declare-datatypes ((tuple2!58680 0))(
  ( (tuple2!58681 (_1!32634 (_ BitVec 64)) (_2!32634 List!55372)) )
))
(declare-datatypes ((List!55373 0))(
  ( (Nil!55249) (Cons!55249 (h!61684 tuple2!58680) (t!362869 List!55373)) )
))
(declare-datatypes ((ListLongMap!6205 0))(
  ( (ListLongMap!6206 (toList!7669 List!55373)) )
))
(declare-fun lm!2671 () ListLongMap!6205)

(assert (=> b!4836891 (= res!2061202 (is-Cons!55249 (toList!7669 lm!2671)))))

(declare-fun b!4836892 () Bool)

(declare-fun e!3022808 () Bool)

(declare-fun tp!1363527 () Bool)

(assert (=> b!4836892 (= e!3022808 tp!1363527)))

(declare-fun b!4836893 () Bool)

(declare-fun res!2061197 () Bool)

(assert (=> b!4836893 (=> (not res!2061197) (not e!3022807))))

(declare-fun e!3022809 () Bool)

(assert (=> b!4836893 (= res!2061197 e!3022809)))

(declare-fun res!2061199 () Bool)

(assert (=> b!4836893 (=> res!2061199 e!3022809)))

(assert (=> b!4836893 (= res!2061199 (not (is-Cons!55249 (toList!7669 lm!2671))))))

(declare-fun res!2061200 () Bool)

(assert (=> start!503028 (=> (not res!2061200) (not e!3022807))))

(declare-fun lambda!239788 () Int)

(declare-fun forall!12776 (List!55373 Int) Bool)

(assert (=> start!503028 (= res!2061200 (forall!12776 (toList!7669 lm!2671) lambda!239788))))

(assert (=> start!503028 e!3022807))

(declare-fun inv!70898 (ListLongMap!6205) Bool)

(assert (=> start!503028 (and (inv!70898 lm!2671) e!3022808)))

(assert (=> start!503028 true))

(declare-fun tp_is_empty!34841 () Bool)

(assert (=> start!503028 tp_is_empty!34841))

(declare-fun b!4836894 () Bool)

(declare-fun res!2061198 () Bool)

(assert (=> b!4836894 (=> (not res!2061198) (not e!3022807))))

(declare-fun key!6540 () K!16997)

(declare-fun containsKeyBiggerList!655 (List!55373 K!16997) Bool)

(assert (=> b!4836894 (= res!2061198 (containsKeyBiggerList!655 (toList!7669 lm!2671) key!6540))))

(declare-fun b!4836895 () Bool)

(declare-fun res!2061201 () Bool)

(assert (=> b!4836895 (=> (not res!2061201) (not e!3022807))))

(declare-datatypes ((Hashable!7371 0))(
  ( (HashableExt!7370 (__x!33646 Int)) )
))
(declare-fun hashF!1662 () Hashable!7371)

(declare-fun allKeysSameHashInMap!2687 (ListLongMap!6205 Hashable!7371) Bool)

(assert (=> b!4836895 (= res!2061201 (allKeysSameHashInMap!2687 lm!2671 hashF!1662))))

(declare-fun b!4836896 () Bool)

(assert (=> b!4836896 (= e!3022807 (not (forall!12776 (toList!7669 lm!2671) lambda!239788)))))

(declare-fun b!4836897 () Bool)

(declare-fun containsKey!4521 (List!55372 K!16997) Bool)

(assert (=> b!4836897 (= e!3022809 (not (containsKey!4521 (_2!32634 (h!61684 (toList!7669 lm!2671))) key!6540)))))

(assert (= (and start!503028 res!2061200) b!4836895))

(assert (= (and b!4836895 res!2061201) b!4836894))

(assert (= (and b!4836894 res!2061198) b!4836893))

(assert (= (and b!4836893 (not res!2061199)) b!4836897))

(assert (= (and b!4836893 res!2061197) b!4836891))

(assert (= (and b!4836891 res!2061202) b!4836896))

(assert (= start!503028 b!4836892))

(declare-fun m!5832204 () Bool)

(assert (=> b!4836897 m!5832204))

(declare-fun m!5832206 () Bool)

(assert (=> b!4836894 m!5832206))

(declare-fun m!5832208 () Bool)

(assert (=> b!4836895 m!5832208))

(declare-fun m!5832210 () Bool)

(assert (=> start!503028 m!5832210))

(declare-fun m!5832212 () Bool)

(assert (=> start!503028 m!5832212))

(assert (=> b!4836896 m!5832210))

(push 1)

(assert (not start!503028))

(assert (not b!4836897))

(assert tp_is_empty!34841)

(assert (not b!4836894))

(assert (not b!4836892))

(assert (not b!4836895))

(assert (not b!4836896))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

