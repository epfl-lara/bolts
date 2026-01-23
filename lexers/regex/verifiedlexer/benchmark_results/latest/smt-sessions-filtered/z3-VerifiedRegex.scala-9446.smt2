; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!499090 () Bool)

(assert start!499090)

(declare-fun b!4818954 () Bool)

(declare-fun e!3010813 () Bool)

(declare-fun tp!1362139 () Bool)

(assert (=> b!4818954 (= e!3010813 tp!1362139)))

(declare-fun b!4818955 () Bool)

(declare-fun res!2050421 () Bool)

(declare-fun e!3010815 () Bool)

(assert (=> b!4818955 (=> (not res!2050421) (not e!3010815))))

(declare-datatypes ((K!16519 0))(
  ( (K!16520 (val!21521 Int)) )
))
(declare-fun key!5428 () K!16519)

(declare-fun lt!1968504 () (_ BitVec 64))

(declare-datatypes ((V!16765 0))(
  ( (V!16766 (val!21522 Int)) )
))
(declare-datatypes ((tuple2!57978 0))(
  ( (tuple2!57979 (_1!32283 K!16519) (_2!32283 V!16765)) )
))
(declare-datatypes ((List!54972 0))(
  ( (Nil!54848) (Cons!54848 (h!61282 tuple2!57978) (t!362468 List!54972)) )
))
(declare-datatypes ((tuple2!57980 0))(
  ( (tuple2!57981 (_1!32284 (_ BitVec 64)) (_2!32284 List!54972)) )
))
(declare-datatypes ((List!54973 0))(
  ( (Nil!54849) (Cons!54849 (h!61283 tuple2!57980) (t!362469 List!54973)) )
))
(declare-datatypes ((ListLongMap!5887 0))(
  ( (ListLongMap!5888 (toList!7398 List!54973)) )
))
(declare-fun lm!2280 () ListLongMap!5887)

(declare-fun containsKey!4274 (List!54972 K!16519) Bool)

(declare-fun apply!13299 (ListLongMap!5887 (_ BitVec 64)) List!54972)

(assert (=> b!4818955 (= res!2050421 (not (containsKey!4274 (apply!13299 lm!2280 lt!1968504) key!5428)))))

(declare-fun b!4818956 () Bool)

(declare-fun res!2050422 () Bool)

(declare-fun e!3010814 () Bool)

(assert (=> b!4818956 (=> (not res!2050422) (not e!3010814))))

(declare-datatypes ((Hashable!7212 0))(
  ( (HashableExt!7211 (__x!33487 Int)) )
))
(declare-fun hashF!1509 () Hashable!7212)

(declare-fun allKeysSameHashInMap!2528 (ListLongMap!5887 Hashable!7212) Bool)

(assert (=> b!4818956 (= res!2050422 (allKeysSameHashInMap!2528 lm!2280 hashF!1509))))

(declare-fun b!4818957 () Bool)

(declare-fun res!2050417 () Bool)

(assert (=> b!4818957 (=> (not res!2050417) (not e!3010815))))

(get-info :version)

(assert (=> b!4818957 (= res!2050417 (and (or (not ((_ is Cons!54849) (toList!7398 lm!2280))) (not (= (_1!32284 (h!61283 (toList!7398 lm!2280))) lt!1968504))) ((_ is Cons!54849) (toList!7398 lm!2280)) (not (= (_1!32284 (h!61283 (toList!7398 lm!2280))) lt!1968504))))))

(declare-fun res!2050418 () Bool)

(assert (=> start!499090 (=> (not res!2050418) (not e!3010814))))

(declare-fun lambda!235124 () Int)

(declare-fun forall!12526 (List!54973 Int) Bool)

(assert (=> start!499090 (= res!2050418 (forall!12526 (toList!7398 lm!2280) lambda!235124))))

(assert (=> start!499090 e!3010814))

(declare-fun inv!70419 (ListLongMap!5887) Bool)

(assert (=> start!499090 (and (inv!70419 lm!2280) e!3010813)))

(assert (=> start!499090 true))

(declare-fun tp_is_empty!34309 () Bool)

(assert (=> start!499090 tp_is_empty!34309))

(declare-fun b!4818958 () Bool)

(assert (=> b!4818958 (= e!3010815 (not (forall!12526 (toList!7398 lm!2280) lambda!235124)))))

(declare-fun b!4818959 () Bool)

(declare-fun res!2050423 () Bool)

(assert (=> b!4818959 (=> (not res!2050423) (not e!3010815))))

(assert (=> b!4818959 (= res!2050423 (forall!12526 (toList!7398 lm!2280) lambda!235124))))

(declare-fun b!4818960 () Bool)

(assert (=> b!4818960 (= e!3010814 e!3010815)))

(declare-fun res!2050419 () Bool)

(assert (=> b!4818960 (=> (not res!2050419) (not e!3010815))))

(declare-fun contains!18673 (ListLongMap!5887 (_ BitVec 64)) Bool)

(assert (=> b!4818960 (= res!2050419 (contains!18673 lm!2280 lt!1968504))))

(declare-fun hash!5291 (Hashable!7212 K!16519) (_ BitVec 64))

(assert (=> b!4818960 (= lt!1968504 (hash!5291 hashF!1509 key!5428))))

(declare-fun b!4818961 () Bool)

(declare-fun res!2050420 () Bool)

(assert (=> b!4818961 (=> (not res!2050420) (not e!3010815))))

(assert (=> b!4818961 (= res!2050420 (contains!18673 lm!2280 (_1!32284 (h!61283 (toList!7398 lm!2280)))))))

(assert (= (and start!499090 res!2050418) b!4818956))

(assert (= (and b!4818956 res!2050422) b!4818960))

(assert (= (and b!4818960 res!2050419) b!4818955))

(assert (= (and b!4818955 res!2050421) b!4818957))

(assert (= (and b!4818957 res!2050417) b!4818959))

(assert (= (and b!4818959 res!2050423) b!4818961))

(assert (= (and b!4818961 res!2050420) b!4818958))

(assert (= start!499090 b!4818954))

(declare-fun m!5805892 () Bool)

(assert (=> start!499090 m!5805892))

(declare-fun m!5805894 () Bool)

(assert (=> start!499090 m!5805894))

(assert (=> b!4818958 m!5805892))

(declare-fun m!5805896 () Bool)

(assert (=> b!4818961 m!5805896))

(declare-fun m!5805898 () Bool)

(assert (=> b!4818955 m!5805898))

(assert (=> b!4818955 m!5805898))

(declare-fun m!5805900 () Bool)

(assert (=> b!4818955 m!5805900))

(declare-fun m!5805902 () Bool)

(assert (=> b!4818956 m!5805902))

(assert (=> b!4818959 m!5805892))

(declare-fun m!5805904 () Bool)

(assert (=> b!4818960 m!5805904))

(declare-fun m!5805906 () Bool)

(assert (=> b!4818960 m!5805906))

(check-sat (not b!4818961) (not b!4818954) (not start!499090) (not b!4818959) tp_is_empty!34309 (not b!4818955) (not b!4818956) (not b!4818958) (not b!4818960))
(check-sat)
