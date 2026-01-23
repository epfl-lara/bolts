; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!499754 () Bool)

(assert start!499754)

(declare-fun b!4821730 () Bool)

(declare-fun res!2052166 () Bool)

(declare-fun e!3012643 () Bool)

(assert (=> b!4821730 (=> (not res!2052166) (not e!3012643))))

(declare-fun lt!1970204 () (_ BitVec 64))

(declare-datatypes ((V!16850 0))(
  ( (V!16851 (val!21589 Int)) )
))
(declare-datatypes ((K!16604 0))(
  ( (K!16605 (val!21590 Int)) )
))
(declare-datatypes ((tuple2!58114 0))(
  ( (tuple2!58115 (_1!32351 K!16604) (_2!32351 V!16850)) )
))
(declare-datatypes ((List!55046 0))(
  ( (Nil!54922) (Cons!54922 (h!61356 tuple2!58114) (t!362542 List!55046)) )
))
(declare-datatypes ((tuple2!58116 0))(
  ( (tuple2!58117 (_1!32352 (_ BitVec 64)) (_2!32352 List!55046)) )
))
(declare-datatypes ((List!55047 0))(
  ( (Nil!54923) (Cons!54923 (h!61357 tuple2!58116) (t!362543 List!55047)) )
))
(declare-datatypes ((ListLongMap!5955 0))(
  ( (ListLongMap!5956 (toList!7446 List!55047)) )
))
(declare-fun lm!2280 () ListLongMap!5955)

(declare-fun key!5428 () K!16604)

(declare-fun containsKey!4328 (List!55046 K!16604) Bool)

(declare-fun apply!13333 (ListLongMap!5955 (_ BitVec 64)) List!55046)

(assert (=> b!4821730 (= res!2052166 (not (containsKey!4328 (apply!13333 lm!2280 lt!1970204) key!5428)))))

(declare-fun b!4821731 () Bool)

(declare-fun e!3012641 () Bool)

(declare-fun tp!1362382 () Bool)

(assert (=> b!4821731 (= e!3012641 tp!1362382)))

(declare-fun b!4821732 () Bool)

(declare-fun lambda!235708 () Int)

(declare-fun forall!12568 (List!55047 Int) Bool)

(assert (=> b!4821732 (= e!3012643 (not (forall!12568 (toList!7446 lm!2280) lambda!235708)))))

(declare-fun b!4821733 () Bool)

(declare-fun res!2052169 () Bool)

(assert (=> b!4821733 (=> (not res!2052169) (not e!3012643))))

(get-info :version)

(assert (=> b!4821733 (= res!2052169 (and (or (not ((_ is Cons!54923) (toList!7446 lm!2280))) (not (= (_1!32352 (h!61357 (toList!7446 lm!2280))) lt!1970204))) ((_ is Cons!54923) (toList!7446 lm!2280)) (not (= (_1!32352 (h!61357 (toList!7446 lm!2280))) lt!1970204))))))

(declare-fun b!4821734 () Bool)

(declare-fun e!3012642 () Bool)

(assert (=> b!4821734 (= e!3012642 e!3012643)))

(declare-fun res!2052167 () Bool)

(assert (=> b!4821734 (=> (not res!2052167) (not e!3012643))))

(declare-fun contains!18729 (ListLongMap!5955 (_ BitVec 64)) Bool)

(assert (=> b!4821734 (= res!2052167 (contains!18729 lm!2280 lt!1970204))))

(declare-datatypes ((Hashable!7246 0))(
  ( (HashableExt!7245 (__x!33521 Int)) )
))
(declare-fun hashF!1509 () Hashable!7246)

(declare-fun hash!5345 (Hashable!7246 K!16604) (_ BitVec 64))

(assert (=> b!4821734 (= lt!1970204 (hash!5345 hashF!1509 key!5428))))

(declare-fun res!2052168 () Bool)

(assert (=> start!499754 (=> (not res!2052168) (not e!3012642))))

(assert (=> start!499754 (= res!2052168 (forall!12568 (toList!7446 lm!2280) lambda!235708))))

(assert (=> start!499754 e!3012642))

(declare-fun inv!70504 (ListLongMap!5955) Bool)

(assert (=> start!499754 (and (inv!70504 lm!2280) e!3012641)))

(assert (=> start!499754 true))

(declare-fun tp_is_empty!34395 () Bool)

(assert (=> start!499754 tp_is_empty!34395))

(declare-fun b!4821735 () Bool)

(declare-fun res!2052165 () Bool)

(assert (=> b!4821735 (=> (not res!2052165) (not e!3012642))))

(declare-fun allKeysSameHashInMap!2562 (ListLongMap!5955 Hashable!7246) Bool)

(assert (=> b!4821735 (= res!2052165 (allKeysSameHashInMap!2562 lm!2280 hashF!1509))))

(assert (= (and start!499754 res!2052168) b!4821735))

(assert (= (and b!4821735 res!2052165) b!4821734))

(assert (= (and b!4821734 res!2052167) b!4821730))

(assert (= (and b!4821730 res!2052166) b!4821733))

(assert (= (and b!4821733 res!2052169) b!4821732))

(assert (= start!499754 b!4821731))

(declare-fun m!5809910 () Bool)

(assert (=> b!4821734 m!5809910))

(declare-fun m!5809912 () Bool)

(assert (=> b!4821734 m!5809912))

(declare-fun m!5809914 () Bool)

(assert (=> b!4821735 m!5809914))

(declare-fun m!5809916 () Bool)

(assert (=> start!499754 m!5809916))

(declare-fun m!5809918 () Bool)

(assert (=> start!499754 m!5809918))

(declare-fun m!5809920 () Bool)

(assert (=> b!4821730 m!5809920))

(assert (=> b!4821730 m!5809920))

(declare-fun m!5809922 () Bool)

(assert (=> b!4821730 m!5809922))

(assert (=> b!4821732 m!5809916))

(check-sat (not b!4821730) (not b!4821734) (not b!4821731) tp_is_empty!34395 (not b!4821735) (not b!4821732) (not start!499754))
(check-sat)
