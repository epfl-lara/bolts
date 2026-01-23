; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!491900 () Bool)

(assert start!491900)

(declare-fun b!4785085 () Bool)

(declare-fun res!2032469 () Bool)

(declare-fun e!2987601 () Bool)

(assert (=> b!4785085 (=> res!2032469 e!2987601)))

(declare-fun lt!1946875 () Bool)

(assert (=> b!4785085 (= res!2032469 lt!1946875)))

(declare-fun b!4785086 () Bool)

(declare-fun e!2987605 () Bool)

(assert (=> b!4785086 (= e!2987605 true)))

(declare-fun lambda!229066 () Int)

(declare-datatypes ((Unit!139457 0))(
  ( (Unit!139458) )
))
(declare-fun lt!1946873 () Unit!139457)

(declare-datatypes ((K!15617 0))(
  ( (K!15618 (val!20799 Int)) )
))
(declare-datatypes ((V!15863 0))(
  ( (V!15864 (val!20800 Int)) )
))
(declare-datatypes ((tuple2!56572 0))(
  ( (tuple2!56573 (_1!31580 K!15617) (_2!31580 V!15863)) )
))
(declare-datatypes ((List!54179 0))(
  ( (Nil!54055) (Cons!54055 (h!60475 tuple2!56572) (t!361629 List!54179)) )
))
(declare-datatypes ((tuple2!56574 0))(
  ( (tuple2!56575 (_1!31581 (_ BitVec 64)) (_2!31581 List!54179)) )
))
(declare-datatypes ((List!54180 0))(
  ( (Nil!54056) (Cons!54056 (h!60476 tuple2!56574) (t!361630 List!54180)) )
))
(declare-datatypes ((ListLongMap!5203 0))(
  ( (ListLongMap!5204 (toList!6781 List!54180)) )
))
(declare-fun lm!2473 () ListLongMap!5203)

(declare-fun lt!1946878 () tuple2!56574)

(declare-fun forallContained!4095 (List!54180 Int tuple2!56574) Unit!139457)

(assert (=> b!4785086 (= lt!1946873 (forallContained!4095 (toList!6781 lm!2473) lambda!229066 lt!1946878))))

(declare-fun res!2032466 () Bool)

(declare-fun e!2987603 () Bool)

(assert (=> start!491900 (=> (not res!2032466) (not e!2987603))))

(declare-fun forall!12151 (List!54180 Int) Bool)

(assert (=> start!491900 (= res!2032466 (forall!12151 (toList!6781 lm!2473) lambda!229066))))

(assert (=> start!491900 e!2987603))

(declare-fun e!2987602 () Bool)

(declare-fun inv!69644 (ListLongMap!5203) Bool)

(assert (=> start!491900 (and (inv!69644 lm!2473) e!2987602)))

(assert (=> start!491900 true))

(declare-fun tp_is_empty!33297 () Bool)

(assert (=> start!491900 tp_is_empty!33297))

(declare-fun b!4785087 () Bool)

(declare-fun tp!1357615 () Bool)

(assert (=> b!4785087 (= e!2987602 tp!1357615)))

(declare-fun b!4785088 () Bool)

(assert (=> b!4785088 (= e!2987601 e!2987605)))

(declare-fun res!2032467 () Bool)

(assert (=> b!4785088 (=> res!2032467 e!2987605)))

(declare-fun lt!1946876 () List!54179)

(declare-fun key!5896 () K!15617)

(declare-datatypes ((Option!12983 0))(
  ( (None!12982) (Some!12982 (v!48231 tuple2!56572)) )
))
(declare-fun isDefined!10126 (Option!12983) Bool)

(declare-fun getPair!823 (List!54179 K!15617) Option!12983)

(assert (=> b!4785088 (= res!2032467 (not (isDefined!10126 (getPair!823 lt!1946876 key!5896))))))

(declare-fun lt!1946874 () Unit!139457)

(assert (=> b!4785088 (= lt!1946874 (forallContained!4095 (toList!6781 lm!2473) lambda!229066 lt!1946878))))

(declare-fun contains!17622 (List!54180 tuple2!56574) Bool)

(assert (=> b!4785088 (contains!17622 (toList!6781 lm!2473) lt!1946878)))

(declare-fun lt!1946877 () (_ BitVec 64))

(assert (=> b!4785088 (= lt!1946878 (tuple2!56575 lt!1946877 lt!1946876))))

(declare-fun lt!1946879 () Unit!139457)

(declare-fun lemmaGetValueImpliesTupleContained!630 (ListLongMap!5203 (_ BitVec 64) List!54179) Unit!139457)

(assert (=> b!4785088 (= lt!1946879 (lemmaGetValueImpliesTupleContained!630 lm!2473 lt!1946877 lt!1946876))))

(declare-fun apply!12906 (ListLongMap!5203 (_ BitVec 64)) List!54179)

(assert (=> b!4785088 (= lt!1946876 (apply!12906 lm!2473 lt!1946877))))

(declare-fun b!4785089 () Bool)

(declare-fun res!2032463 () Bool)

(assert (=> b!4785089 (=> (not res!2032463) (not e!2987603))))

(declare-datatypes ((ListMap!6253 0))(
  ( (ListMap!6254 (toList!6782 List!54179)) )
))
(declare-fun contains!17623 (ListMap!6253 K!15617) Bool)

(declare-fun extractMap!2378 (List!54180) ListMap!6253)

(assert (=> b!4785089 (= res!2032463 (contains!17623 (extractMap!2378 (toList!6781 lm!2473)) key!5896))))

(declare-fun b!4785090 () Bool)

(assert (=> b!4785090 (= e!2987603 (not e!2987601))))

(declare-fun res!2032465 () Bool)

(assert (=> b!4785090 (=> res!2032465 e!2987601)))

(assert (=> b!4785090 (= res!2032465 (not (forall!12151 (toList!6781 lm!2473) lambda!229066)))))

(declare-fun e!2987604 () Bool)

(assert (=> b!4785090 e!2987604))

(declare-fun res!2032468 () Bool)

(assert (=> b!4785090 (=> (not res!2032468) (not e!2987604))))

(assert (=> b!4785090 (= res!2032468 (not lt!1946875))))

(declare-fun contains!17624 (ListLongMap!5203 (_ BitVec 64)) Bool)

(assert (=> b!4785090 (= lt!1946875 (not (contains!17624 lm!2473 lt!1946877)))))

(declare-datatypes ((Hashable!6851 0))(
  ( (HashableExt!6850 (__x!32874 Int)) )
))
(declare-fun hashF!1559 () Hashable!6851)

(declare-fun hash!4867 (Hashable!6851 K!15617) (_ BitVec 64))

(assert (=> b!4785090 (= lt!1946877 (hash!4867 hashF!1559 key!5896))))

(declare-fun lt!1946872 () Unit!139457)

(declare-fun lemmaInGenericMapThenInLongMap!255 (ListLongMap!5203 K!15617 Hashable!6851) Unit!139457)

(assert (=> b!4785090 (= lt!1946872 (lemmaInGenericMapThenInLongMap!255 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4785091 () Bool)

(declare-fun res!2032464 () Bool)

(assert (=> b!4785091 (=> (not res!2032464) (not e!2987603))))

(declare-fun allKeysSameHashInMap!2256 (ListLongMap!5203 Hashable!6851) Bool)

(assert (=> b!4785091 (= res!2032464 (allKeysSameHashInMap!2256 lm!2473 hashF!1559))))

(declare-fun b!4785092 () Bool)

(assert (=> b!4785092 (= e!2987604 (isDefined!10126 (getPair!823 (apply!12906 lm!2473 lt!1946877) key!5896)))))

(declare-fun b!4785093 () Bool)

(declare-fun res!2032470 () Bool)

(assert (=> b!4785093 (=> res!2032470 e!2987605)))

(assert (=> b!4785093 (= res!2032470 (not (forall!12151 (toList!6781 lm!2473) lambda!229066)))))

(assert (= (and start!491900 res!2032466) b!4785091))

(assert (= (and b!4785091 res!2032464) b!4785089))

(assert (= (and b!4785089 res!2032463) b!4785090))

(assert (= (and b!4785090 res!2032468) b!4785092))

(assert (= (and b!4785090 (not res!2032465)) b!4785085))

(assert (= (and b!4785085 (not res!2032469)) b!4785088))

(assert (= (and b!4785088 (not res!2032467)) b!4785093))

(assert (= (and b!4785093 (not res!2032470)) b!4785086))

(assert (= start!491900 b!4785087))

(declare-fun m!5764050 () Bool)

(assert (=> b!4785089 m!5764050))

(assert (=> b!4785089 m!5764050))

(declare-fun m!5764052 () Bool)

(assert (=> b!4785089 m!5764052))

(declare-fun m!5764054 () Bool)

(assert (=> b!4785088 m!5764054))

(declare-fun m!5764056 () Bool)

(assert (=> b!4785088 m!5764056))

(declare-fun m!5764058 () Bool)

(assert (=> b!4785088 m!5764058))

(assert (=> b!4785088 m!5764058))

(declare-fun m!5764060 () Bool)

(assert (=> b!4785088 m!5764060))

(declare-fun m!5764062 () Bool)

(assert (=> b!4785088 m!5764062))

(declare-fun m!5764064 () Bool)

(assert (=> b!4785088 m!5764064))

(declare-fun m!5764066 () Bool)

(assert (=> b!4785091 m!5764066))

(declare-fun m!5764068 () Bool)

(assert (=> b!4785093 m!5764068))

(assert (=> b!4785092 m!5764064))

(assert (=> b!4785092 m!5764064))

(declare-fun m!5764070 () Bool)

(assert (=> b!4785092 m!5764070))

(assert (=> b!4785092 m!5764070))

(declare-fun m!5764072 () Bool)

(assert (=> b!4785092 m!5764072))

(assert (=> start!491900 m!5764068))

(declare-fun m!5764074 () Bool)

(assert (=> start!491900 m!5764074))

(assert (=> b!4785090 m!5764068))

(declare-fun m!5764076 () Bool)

(assert (=> b!4785090 m!5764076))

(declare-fun m!5764078 () Bool)

(assert (=> b!4785090 m!5764078))

(declare-fun m!5764080 () Bool)

(assert (=> b!4785090 m!5764080))

(assert (=> b!4785086 m!5764054))

(push 1)

(assert (not start!491900))

(assert (not b!4785093))

(assert (not b!4785089))

(assert (not b!4785091))

(assert (not b!4785086))

(assert (not b!4785092))

(assert (not b!4785088))

(assert (not b!4785087))

(assert tp_is_empty!33297)

(assert (not b!4785090))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

