; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!490896 () Bool)

(assert start!490896)

(declare-fun b!4781249 () Bool)

(declare-fun e!2984981 () Bool)

(declare-datatypes ((K!15557 0))(
  ( (K!15558 (val!20751 Int)) )
))
(declare-datatypes ((V!15803 0))(
  ( (V!15804 (val!20752 Int)) )
))
(declare-datatypes ((tuple2!56476 0))(
  ( (tuple2!56477 (_1!31532 K!15557) (_2!31532 V!15803)) )
))
(declare-datatypes ((List!54115 0))(
  ( (Nil!53991) (Cons!53991 (h!60411 tuple2!56476) (t!361565 List!54115)) )
))
(declare-datatypes ((tuple2!56478 0))(
  ( (tuple2!56479 (_1!31533 (_ BitVec 64)) (_2!31533 List!54115)) )
))
(declare-datatypes ((List!54116 0))(
  ( (Nil!53992) (Cons!53992 (h!60412 tuple2!56478) (t!361566 List!54116)) )
))
(declare-datatypes ((ListLongMap!5155 0))(
  ( (ListLongMap!5156 (toList!6733 List!54116)) )
))
(declare-fun lm!2709 () ListLongMap!5155)

(declare-fun lambda!228174 () Int)

(declare-fun forall!12119 (List!54116 Int) Bool)

(assert (=> b!4781249 (= e!2984981 (forall!12119 (toList!6733 lm!2709) lambda!228174))))

(declare-fun b!4781250 () Bool)

(declare-fun res!2030058 () Bool)

(declare-fun e!2984979 () Bool)

(assert (=> b!4781250 (=> (not res!2030058) (not e!2984979))))

(declare-datatypes ((Hashable!6827 0))(
  ( (HashableExt!6826 (__x!32850 Int)) )
))
(declare-fun hashF!1687 () Hashable!6827)

(declare-fun allKeysSameHashInMap!2232 (ListLongMap!5155 Hashable!6827) Bool)

(assert (=> b!4781250 (= res!2030058 (allKeysSameHashInMap!2232 lm!2709 hashF!1687))))

(declare-fun b!4781251 () Bool)

(declare-fun e!2984982 () Bool)

(assert (=> b!4781251 (= e!2984979 (not e!2984982))))

(declare-fun res!2030056 () Bool)

(assert (=> b!4781251 (=> res!2030056 e!2984982)))

(declare-datatypes ((Option!12927 0))(
  ( (None!12926) (Some!12926 (v!48133 tuple2!56476)) )
))
(declare-fun lt!1943668 () Option!12927)

(declare-fun v!11584 () V!15803)

(declare-fun get!18353 (Option!12927) tuple2!56476)

(assert (=> b!4781251 (= res!2030056 (not (= (_2!31532 (get!18353 lt!1943668)) v!11584)))))

(declare-fun isDefined!10071 (Option!12927) Bool)

(assert (=> b!4781251 (isDefined!10071 lt!1943668)))

(declare-fun lt!1943674 () List!54115)

(declare-fun key!6641 () K!15557)

(declare-fun getPair!799 (List!54115 K!15557) Option!12927)

(assert (=> b!4781251 (= lt!1943668 (getPair!799 lt!1943674 key!6641))))

(declare-fun lt!1943670 () tuple2!56478)

(declare-datatypes ((Unit!139263 0))(
  ( (Unit!139264) )
))
(declare-fun lt!1943673 () Unit!139263)

(declare-fun forallContained!4063 (List!54116 Int tuple2!56478) Unit!139263)

(assert (=> b!4781251 (= lt!1943673 (forallContained!4063 (toList!6733 lm!2709) lambda!228174 lt!1943670))))

(declare-fun lt!1943675 () Unit!139263)

(declare-fun lemmaInGenMapThenGetPairDefined!573 (ListLongMap!5155 K!15557 Hashable!6827) Unit!139263)

(assert (=> b!4781251 (= lt!1943675 (lemmaInGenMapThenGetPairDefined!573 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1943672 () Unit!139263)

(assert (=> b!4781251 (= lt!1943672 (forallContained!4063 (toList!6733 lm!2709) lambda!228174 lt!1943670))))

(declare-fun contains!17521 (List!54116 tuple2!56478) Bool)

(assert (=> b!4781251 (contains!17521 (toList!6733 lm!2709) lt!1943670)))

(declare-fun lt!1943667 () (_ BitVec 64))

(assert (=> b!4781251 (= lt!1943670 (tuple2!56479 lt!1943667 lt!1943674))))

(declare-fun lt!1943671 () Unit!139263)

(declare-fun lemmaGetValueImpliesTupleContained!606 (ListLongMap!5155 (_ BitVec 64) List!54115) Unit!139263)

(assert (=> b!4781251 (= lt!1943671 (lemmaGetValueImpliesTupleContained!606 lm!2709 lt!1943667 lt!1943674))))

(declare-fun apply!12882 (ListLongMap!5155 (_ BitVec 64)) List!54115)

(assert (=> b!4781251 (= lt!1943674 (apply!12882 lm!2709 lt!1943667))))

(declare-fun contains!17522 (ListLongMap!5155 (_ BitVec 64)) Bool)

(assert (=> b!4781251 (contains!17522 lm!2709 lt!1943667)))

(declare-fun hash!4812 (Hashable!6827 K!15557) (_ BitVec 64))

(assert (=> b!4781251 (= lt!1943667 (hash!4812 hashF!1687 key!6641))))

(declare-fun lt!1943676 () Unit!139263)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1023 (ListLongMap!5155 K!15557 Hashable!6827) Unit!139263)

(assert (=> b!4781251 (= lt!1943676 (lemmaInGenMapThenLongMapContainsHash!1023 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6205 0))(
  ( (ListMap!6206 (toList!6734 List!54115)) )
))
(declare-fun contains!17523 (ListMap!6205 K!15557) Bool)

(declare-fun extractMap!2354 (List!54116) ListMap!6205)

(assert (=> b!4781251 (contains!17523 (extractMap!2354 (toList!6733 lm!2709)) key!6641)))

(declare-fun lt!1943666 () Unit!139263)

(declare-fun lemmaListContainsThenExtractedMapContains!675 (ListLongMap!5155 K!15557 Hashable!6827) Unit!139263)

(assert (=> b!4781251 (= lt!1943666 (lemmaListContainsThenExtractedMapContains!675 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4781252 () Bool)

(declare-fun res!2030060 () Bool)

(assert (=> b!4781252 (=> (not res!2030060) (not e!2984979))))

(declare-fun containsKeyBiggerList!483 (List!54116 K!15557) Bool)

(assert (=> b!4781252 (= res!2030060 (containsKeyBiggerList!483 (toList!6733 lm!2709) key!6641))))

(declare-fun b!4781253 () Bool)

(declare-fun e!2984980 () Bool)

(declare-fun tp!1357427 () Bool)

(assert (=> b!4781253 (= e!2984980 tp!1357427)))

(declare-fun res!2030059 () Bool)

(assert (=> start!490896 (=> (not res!2030059) (not e!2984979))))

(assert (=> start!490896 (= res!2030059 (forall!12119 (toList!6733 lm!2709) lambda!228174))))

(assert (=> start!490896 e!2984979))

(declare-fun inv!69584 (ListLongMap!5155) Bool)

(assert (=> start!490896 (and (inv!69584 lm!2709) e!2984980)))

(assert (=> start!490896 true))

(declare-fun tp_is_empty!33209 () Bool)

(assert (=> start!490896 tp_is_empty!33209))

(declare-fun tp_is_empty!33211 () Bool)

(assert (=> start!490896 tp_is_empty!33211))

(declare-fun b!4781254 () Bool)

(declare-fun res!2030055 () Bool)

(assert (=> b!4781254 (=> res!2030055 e!2984982)))

(assert (=> b!4781254 (= res!2030055 (or (and (is-Cons!53992 (toList!6733 lm!2709)) (= (_1!31533 (h!60412 (toList!6733 lm!2709))) lt!1943667)) (not (is-Cons!53992 (toList!6733 lm!2709)))))))

(declare-fun b!4781255 () Bool)

(assert (=> b!4781255 (= e!2984982 e!2984981)))

(declare-fun res!2030057 () Bool)

(assert (=> b!4781255 (=> res!2030057 e!2984981)))

(declare-fun containsKey!3803 (List!54115 K!15557) Bool)

(assert (=> b!4781255 (= res!2030057 (containsKey!3803 (_2!31533 (h!60412 (toList!6733 lm!2709))) key!6641))))

(assert (=> b!4781255 (not (containsKey!3803 (apply!12882 lm!2709 (_1!31533 (h!60412 (toList!6733 lm!2709)))) key!6641))))

(declare-fun lt!1943669 () Unit!139263)

(declare-fun lemmaNotSameHashThenCannotContainKey!181 (ListLongMap!5155 K!15557 (_ BitVec 64) Hashable!6827) Unit!139263)

(assert (=> b!4781255 (= lt!1943669 (lemmaNotSameHashThenCannotContainKey!181 lm!2709 key!6641 (_1!31533 (h!60412 (toList!6733 lm!2709))) hashF!1687))))

(assert (= (and start!490896 res!2030059) b!4781250))

(assert (= (and b!4781250 res!2030058) b!4781252))

(assert (= (and b!4781252 res!2030060) b!4781251))

(assert (= (and b!4781251 (not res!2030056)) b!4781254))

(assert (= (and b!4781254 (not res!2030055)) b!4781255))

(assert (= (and b!4781255 (not res!2030057)) b!4781249))

(assert (= start!490896 b!4781253))

(declare-fun m!5758234 () Bool)

(assert (=> b!4781249 m!5758234))

(assert (=> start!490896 m!5758234))

(declare-fun m!5758236 () Bool)

(assert (=> start!490896 m!5758236))

(declare-fun m!5758238 () Bool)

(assert (=> b!4781255 m!5758238))

(declare-fun m!5758240 () Bool)

(assert (=> b!4781255 m!5758240))

(assert (=> b!4781255 m!5758240))

(declare-fun m!5758242 () Bool)

(assert (=> b!4781255 m!5758242))

(declare-fun m!5758244 () Bool)

(assert (=> b!4781255 m!5758244))

(declare-fun m!5758246 () Bool)

(assert (=> b!4781251 m!5758246))

(declare-fun m!5758248 () Bool)

(assert (=> b!4781251 m!5758248))

(declare-fun m!5758250 () Bool)

(assert (=> b!4781251 m!5758250))

(declare-fun m!5758252 () Bool)

(assert (=> b!4781251 m!5758252))

(declare-fun m!5758254 () Bool)

(assert (=> b!4781251 m!5758254))

(declare-fun m!5758256 () Bool)

(assert (=> b!4781251 m!5758256))

(declare-fun m!5758258 () Bool)

(assert (=> b!4781251 m!5758258))

(declare-fun m!5758260 () Bool)

(assert (=> b!4781251 m!5758260))

(declare-fun m!5758262 () Bool)

(assert (=> b!4781251 m!5758262))

(declare-fun m!5758264 () Bool)

(assert (=> b!4781251 m!5758264))

(declare-fun m!5758266 () Bool)

(assert (=> b!4781251 m!5758266))

(declare-fun m!5758268 () Bool)

(assert (=> b!4781251 m!5758268))

(declare-fun m!5758270 () Bool)

(assert (=> b!4781251 m!5758270))

(assert (=> b!4781251 m!5758266))

(assert (=> b!4781251 m!5758248))

(declare-fun m!5758272 () Bool)

(assert (=> b!4781251 m!5758272))

(declare-fun m!5758274 () Bool)

(assert (=> b!4781252 m!5758274))

(declare-fun m!5758276 () Bool)

(assert (=> b!4781250 m!5758276))

(push 1)

(assert tp_is_empty!33211)

(assert tp_is_empty!33209)

(assert (not b!4781251))

(assert (not b!4781253))

(assert (not b!4781250))

(assert (not b!4781249))

(assert (not start!490896))

(assert (not b!4781255))

(assert (not b!4781252))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

