; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489752 () Bool)

(assert start!489752)

(declare-fun b!4776763 () Bool)

(declare-fun e!2982044 () Bool)

(declare-fun e!2982040 () Bool)

(assert (=> b!4776763 (= e!2982044 e!2982040)))

(declare-fun res!2027317 () Bool)

(assert (=> b!4776763 (=> res!2027317 e!2982040)))

(declare-datatypes ((K!15442 0))(
  ( (K!15443 (val!20659 Int)) )
))
(declare-datatypes ((V!15688 0))(
  ( (V!15689 (val!20660 Int)) )
))
(declare-datatypes ((tuple2!56292 0))(
  ( (tuple2!56293 (_1!31440 K!15442) (_2!31440 V!15688)) )
))
(declare-datatypes ((Option!12874 0))(
  ( (None!12873) (Some!12873 (v!48042 tuple2!56292)) )
))
(declare-fun lt!1939903 () Option!12874)

(declare-fun v!11584 () V!15688)

(declare-fun get!18291 (Option!12874) tuple2!56292)

(assert (=> b!4776763 (= res!2027317 (not (= (_2!31440 (get!18291 lt!1939903)) v!11584)))))

(declare-fun isDefined!10018 (Option!12874) Bool)

(assert (=> b!4776763 (isDefined!10018 lt!1939903)))

(declare-datatypes ((List!54011 0))(
  ( (Nil!53887) (Cons!53887 (h!60301 tuple2!56292) (t!361461 List!54011)) )
))
(declare-fun lt!1939896 () List!54011)

(declare-fun key!6641 () K!15442)

(declare-fun getPair!769 (List!54011 K!15442) Option!12874)

(assert (=> b!4776763 (= lt!1939903 (getPair!769 lt!1939896 key!6641))))

(declare-datatypes ((tuple2!56294 0))(
  ( (tuple2!56295 (_1!31441 (_ BitVec 64)) (_2!31441 List!54011)) )
))
(declare-datatypes ((List!54012 0))(
  ( (Nil!53888) (Cons!53888 (h!60302 tuple2!56294) (t!361462 List!54012)) )
))
(declare-datatypes ((ListLongMap!5063 0))(
  ( (ListLongMap!5064 (toList!6645 List!54012)) )
))
(declare-fun lt!1939899 () ListLongMap!5063)

(declare-datatypes ((Unit!138920 0))(
  ( (Unit!138921) )
))
(declare-fun lt!1939888 () Unit!138920)

(declare-fun lambda!226976 () Int)

(declare-fun lt!1939904 () tuple2!56294)

(declare-fun forallContained!4010 (List!54012 Int tuple2!56294) Unit!138920)

(assert (=> b!4776763 (= lt!1939888 (forallContained!4010 (toList!6645 lt!1939899) lambda!226976 lt!1939904))))

(declare-datatypes ((Hashable!6781 0))(
  ( (HashableExt!6780 (__x!32804 Int)) )
))
(declare-fun hashF!1687 () Hashable!6781)

(declare-fun lt!1939892 () Unit!138920)

(declare-fun lemmaInGenMapThenGetPairDefined!543 (ListLongMap!5063 K!15442 Hashable!6781) Unit!138920)

(assert (=> b!4776763 (= lt!1939892 (lemmaInGenMapThenGetPairDefined!543 lt!1939899 key!6641 hashF!1687))))

(declare-fun lt!1939890 () Unit!138920)

(assert (=> b!4776763 (= lt!1939890 (forallContained!4010 (toList!6645 lt!1939899) lambda!226976 lt!1939904))))

(declare-fun contains!17383 (List!54012 tuple2!56294) Bool)

(assert (=> b!4776763 (contains!17383 (toList!6645 lt!1939899) lt!1939904)))

(declare-fun lt!1939891 () (_ BitVec 64))

(assert (=> b!4776763 (= lt!1939904 (tuple2!56295 lt!1939891 lt!1939896))))

(declare-fun lt!1939885 () Unit!138920)

(declare-fun lemmaGetValueImpliesTupleContained!572 (ListLongMap!5063 (_ BitVec 64) List!54011) Unit!138920)

(assert (=> b!4776763 (= lt!1939885 (lemmaGetValueImpliesTupleContained!572 lt!1939899 lt!1939891 lt!1939896))))

(declare-fun apply!12844 (ListLongMap!5063 (_ BitVec 64)) List!54011)

(assert (=> b!4776763 (= lt!1939896 (apply!12844 lt!1939899 lt!1939891))))

(declare-fun contains!17384 (ListLongMap!5063 (_ BitVec 64)) Bool)

(assert (=> b!4776763 (contains!17384 lt!1939899 lt!1939891)))

(declare-fun lt!1939905 () Unit!138920)

(declare-fun lemmaInGenMapThenLongMapContainsHash!985 (ListLongMap!5063 K!15442 Hashable!6781) Unit!138920)

(assert (=> b!4776763 (= lt!1939905 (lemmaInGenMapThenLongMapContainsHash!985 lt!1939899 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6121 0))(
  ( (ListMap!6122 (toList!6646 List!54011)) )
))
(declare-fun contains!17385 (ListMap!6121 K!15442) Bool)

(declare-fun extractMap!2312 (List!54012) ListMap!6121)

(assert (=> b!4776763 (contains!17385 (extractMap!2312 (toList!6645 lt!1939899)) key!6641)))

(declare-fun lt!1939893 () Unit!138920)

(declare-fun lemmaListContainsThenExtractedMapContains!633 (ListLongMap!5063 K!15442 Hashable!6781) Unit!138920)

(assert (=> b!4776763 (= lt!1939893 (lemmaListContainsThenExtractedMapContains!633 lt!1939899 key!6641 hashF!1687))))

(declare-fun b!4776764 () Bool)

(declare-fun res!2027322 () Bool)

(declare-fun e!2982039 () Bool)

(assert (=> b!4776764 (=> (not res!2027322) (not e!2982039))))

(declare-fun lm!2709 () ListLongMap!5063)

(declare-fun containsKeyBiggerList!437 (List!54012 K!15442) Bool)

(assert (=> b!4776764 (= res!2027322 (containsKeyBiggerList!437 (toList!6645 lm!2709) key!6641))))

(declare-fun b!4776765 () Bool)

(declare-fun res!2027325 () Bool)

(declare-fun e!2982043 () Bool)

(assert (=> b!4776765 (=> res!2027325 e!2982043)))

(assert (=> b!4776765 (= res!2027325 (or (and (is-Cons!53888 (toList!6645 lm!2709)) (= (_1!31441 (h!60302 (toList!6645 lm!2709))) lt!1939891)) (not (is-Cons!53888 (toList!6645 lm!2709)))))))

(declare-fun b!4776766 () Bool)

(assert (=> b!4776766 (= e!2982039 (not e!2982043))))

(declare-fun res!2027316 () Bool)

(assert (=> b!4776766 (=> res!2027316 e!2982043)))

(declare-fun lt!1939895 () Option!12874)

(assert (=> b!4776766 (= res!2027316 (not (= (_2!31440 (get!18291 lt!1939895)) v!11584)))))

(assert (=> b!4776766 (isDefined!10018 lt!1939895)))

(declare-fun lt!1939882 () List!54011)

(assert (=> b!4776766 (= lt!1939895 (getPair!769 lt!1939882 key!6641))))

(declare-fun lt!1939894 () Unit!138920)

(declare-fun lt!1939898 () tuple2!56294)

(assert (=> b!4776766 (= lt!1939894 (forallContained!4010 (toList!6645 lm!2709) lambda!226976 lt!1939898))))

(declare-fun lt!1939883 () Unit!138920)

(assert (=> b!4776766 (= lt!1939883 (lemmaInGenMapThenGetPairDefined!543 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1939901 () Unit!138920)

(assert (=> b!4776766 (= lt!1939901 (forallContained!4010 (toList!6645 lm!2709) lambda!226976 lt!1939898))))

(assert (=> b!4776766 (contains!17383 (toList!6645 lm!2709) lt!1939898)))

(assert (=> b!4776766 (= lt!1939898 (tuple2!56295 lt!1939891 lt!1939882))))

(declare-fun lt!1939887 () Unit!138920)

(assert (=> b!4776766 (= lt!1939887 (lemmaGetValueImpliesTupleContained!572 lm!2709 lt!1939891 lt!1939882))))

(assert (=> b!4776766 (= lt!1939882 (apply!12844 lm!2709 lt!1939891))))

(assert (=> b!4776766 (contains!17384 lm!2709 lt!1939891)))

(declare-fun hash!4759 (Hashable!6781 K!15442) (_ BitVec 64))

(assert (=> b!4776766 (= lt!1939891 (hash!4759 hashF!1687 key!6641))))

(declare-fun lt!1939886 () Unit!138920)

(assert (=> b!4776766 (= lt!1939886 (lemmaInGenMapThenLongMapContainsHash!985 lm!2709 key!6641 hashF!1687))))

(assert (=> b!4776766 (contains!17385 (extractMap!2312 (toList!6645 lm!2709)) key!6641)))

(declare-fun lt!1939897 () Unit!138920)

(assert (=> b!4776766 (= lt!1939897 (lemmaListContainsThenExtractedMapContains!633 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4776767 () Bool)

(declare-fun res!2027319 () Bool)

(assert (=> b!4776767 (=> (not res!2027319) (not e!2982039))))

(declare-fun allKeysSameHashInMap!2186 (ListLongMap!5063 Hashable!6781) Bool)

(assert (=> b!4776767 (= res!2027319 (allKeysSameHashInMap!2186 lm!2709 hashF!1687))))

(declare-fun b!4776769 () Bool)

(declare-fun res!2027321 () Bool)

(assert (=> b!4776769 (=> res!2027321 e!2982044)))

(assert (=> b!4776769 (= res!2027321 (not (allKeysSameHashInMap!2186 lt!1939899 hashF!1687)))))

(declare-fun b!4776770 () Bool)

(declare-fun res!2027318 () Bool)

(assert (=> b!4776770 (=> res!2027318 e!2982040)))

(declare-fun forall!12053 (List!54012 Int) Bool)

(assert (=> b!4776770 (= res!2027318 (not (forall!12053 (toList!6645 lt!1939899) lambda!226976)))))

(declare-fun b!4776771 () Bool)

(declare-fun e!2982041 () Bool)

(declare-fun tp!1357159 () Bool)

(assert (=> b!4776771 (= e!2982041 tp!1357159)))

(declare-fun b!4776772 () Bool)

(declare-fun e!2982042 () Bool)

(assert (=> b!4776772 (= e!2982043 e!2982042)))

(declare-fun res!2027324 () Bool)

(assert (=> b!4776772 (=> res!2027324 e!2982042)))

(declare-fun containsKey!3756 (List!54011 K!15442) Bool)

(assert (=> b!4776772 (= res!2027324 (containsKey!3756 (_2!31441 (h!60302 (toList!6645 lm!2709))) key!6641))))

(assert (=> b!4776772 (not (containsKey!3756 (apply!12844 lm!2709 (_1!31441 (h!60302 (toList!6645 lm!2709)))) key!6641))))

(declare-fun lt!1939902 () Unit!138920)

(declare-fun lemmaNotSameHashThenCannotContainKey!173 (ListLongMap!5063 K!15442 (_ BitVec 64) Hashable!6781) Unit!138920)

(assert (=> b!4776772 (= lt!1939902 (lemmaNotSameHashThenCannotContainKey!173 lm!2709 key!6641 (_1!31441 (h!60302 (toList!6645 lm!2709))) hashF!1687))))

(declare-fun b!4776773 () Bool)

(assert (=> b!4776773 (= e!2982040 true)))

(declare-fun lt!1939900 () Unit!138920)

(assert (=> b!4776773 (= lt!1939900 (forallContained!4010 (toList!6645 lt!1939899) lambda!226976 lt!1939904))))

(declare-fun lt!1939889 () Unit!138920)

(assert (=> b!4776773 (= lt!1939889 (forallContained!4010 (toList!6645 lt!1939899) lambda!226976 lt!1939904))))

(declare-fun b!4776774 () Bool)

(assert (=> b!4776774 (= e!2982042 e!2982044)))

(declare-fun res!2027323 () Bool)

(assert (=> b!4776774 (=> res!2027323 e!2982044)))

(assert (=> b!4776774 (= res!2027323 (not (forall!12053 (toList!6645 lt!1939899) lambda!226976)))))

(declare-fun tail!9174 (ListLongMap!5063) ListLongMap!5063)

(assert (=> b!4776774 (= lt!1939899 (tail!9174 lm!2709))))

(declare-fun tail!9175 (List!54012) List!54012)

(assert (=> b!4776774 (containsKeyBiggerList!437 (tail!9175 (toList!6645 lm!2709)) key!6641)))

(declare-fun lt!1939884 () Unit!138920)

(declare-fun lemmaInBiggerListButNotHeadThenTail!7 (ListLongMap!5063 K!15442 Hashable!6781) Unit!138920)

(assert (=> b!4776774 (= lt!1939884 (lemmaInBiggerListButNotHeadThenTail!7 lm!2709 key!6641 hashF!1687))))

(declare-fun res!2027315 () Bool)

(assert (=> start!489752 (=> (not res!2027315) (not e!2982039))))

(assert (=> start!489752 (= res!2027315 (forall!12053 (toList!6645 lm!2709) lambda!226976))))

(assert (=> start!489752 e!2982039))

(declare-fun inv!69469 (ListLongMap!5063) Bool)

(assert (=> start!489752 (and (inv!69469 lm!2709) e!2982041)))

(assert (=> start!489752 true))

(declare-fun tp_is_empty!33053 () Bool)

(assert (=> start!489752 tp_is_empty!33053))

(declare-fun tp_is_empty!33055 () Bool)

(assert (=> start!489752 tp_is_empty!33055))

(declare-fun b!4776768 () Bool)

(declare-fun res!2027320 () Bool)

(assert (=> b!4776768 (=> res!2027320 e!2982044)))

(assert (=> b!4776768 (= res!2027320 (not (containsKeyBiggerList!437 (toList!6645 lt!1939899) key!6641)))))

(assert (= (and start!489752 res!2027315) b!4776767))

(assert (= (and b!4776767 res!2027319) b!4776764))

(assert (= (and b!4776764 res!2027322) b!4776766))

(assert (= (and b!4776766 (not res!2027316)) b!4776765))

(assert (= (and b!4776765 (not res!2027325)) b!4776772))

(assert (= (and b!4776772 (not res!2027324)) b!4776774))

(assert (= (and b!4776774 (not res!2027323)) b!4776769))

(assert (= (and b!4776769 (not res!2027321)) b!4776768))

(assert (= (and b!4776768 (not res!2027320)) b!4776763))

(assert (= (and b!4776763 (not res!2027317)) b!4776770))

(assert (= (and b!4776770 (not res!2027318)) b!4776773))

(assert (= start!489752 b!4776771))

(declare-fun m!5751908 () Bool)

(assert (=> b!4776766 m!5751908))

(declare-fun m!5751910 () Bool)

(assert (=> b!4776766 m!5751910))

(declare-fun m!5751912 () Bool)

(assert (=> b!4776766 m!5751912))

(declare-fun m!5751914 () Bool)

(assert (=> b!4776766 m!5751914))

(declare-fun m!5751916 () Bool)

(assert (=> b!4776766 m!5751916))

(declare-fun m!5751918 () Bool)

(assert (=> b!4776766 m!5751918))

(declare-fun m!5751920 () Bool)

(assert (=> b!4776766 m!5751920))

(declare-fun m!5751922 () Bool)

(assert (=> b!4776766 m!5751922))

(declare-fun m!5751924 () Bool)

(assert (=> b!4776766 m!5751924))

(declare-fun m!5751926 () Bool)

(assert (=> b!4776766 m!5751926))

(assert (=> b!4776766 m!5751918))

(declare-fun m!5751928 () Bool)

(assert (=> b!4776766 m!5751928))

(declare-fun m!5751930 () Bool)

(assert (=> b!4776766 m!5751930))

(assert (=> b!4776766 m!5751930))

(declare-fun m!5751932 () Bool)

(assert (=> b!4776766 m!5751932))

(declare-fun m!5751934 () Bool)

(assert (=> b!4776766 m!5751934))

(declare-fun m!5751936 () Bool)

(assert (=> b!4776770 m!5751936))

(declare-fun m!5751938 () Bool)

(assert (=> b!4776768 m!5751938))

(declare-fun m!5751940 () Bool)

(assert (=> b!4776763 m!5751940))

(declare-fun m!5751942 () Bool)

(assert (=> b!4776763 m!5751942))

(declare-fun m!5751944 () Bool)

(assert (=> b!4776763 m!5751944))

(declare-fun m!5751946 () Bool)

(assert (=> b!4776763 m!5751946))

(declare-fun m!5751948 () Bool)

(assert (=> b!4776763 m!5751948))

(declare-fun m!5751950 () Bool)

(assert (=> b!4776763 m!5751950))

(assert (=> b!4776763 m!5751942))

(declare-fun m!5751952 () Bool)

(assert (=> b!4776763 m!5751952))

(declare-fun m!5751954 () Bool)

(assert (=> b!4776763 m!5751954))

(declare-fun m!5751956 () Bool)

(assert (=> b!4776763 m!5751956))

(assert (=> b!4776763 m!5751956))

(declare-fun m!5751958 () Bool)

(assert (=> b!4776763 m!5751958))

(declare-fun m!5751960 () Bool)

(assert (=> b!4776763 m!5751960))

(declare-fun m!5751962 () Bool)

(assert (=> b!4776763 m!5751962))

(declare-fun m!5751964 () Bool)

(assert (=> b!4776763 m!5751964))

(declare-fun m!5751966 () Bool)

(assert (=> b!4776767 m!5751966))

(declare-fun m!5751968 () Bool)

(assert (=> b!4776772 m!5751968))

(declare-fun m!5751970 () Bool)

(assert (=> b!4776772 m!5751970))

(assert (=> b!4776772 m!5751970))

(declare-fun m!5751972 () Bool)

(assert (=> b!4776772 m!5751972))

(declare-fun m!5751974 () Bool)

(assert (=> b!4776772 m!5751974))

(assert (=> b!4776773 m!5751956))

(assert (=> b!4776773 m!5751956))

(declare-fun m!5751976 () Bool)

(assert (=> b!4776774 m!5751976))

(assert (=> b!4776774 m!5751936))

(assert (=> b!4776774 m!5751976))

(declare-fun m!5751978 () Bool)

(assert (=> b!4776774 m!5751978))

(declare-fun m!5751980 () Bool)

(assert (=> b!4776774 m!5751980))

(declare-fun m!5751982 () Bool)

(assert (=> b!4776774 m!5751982))

(declare-fun m!5751984 () Bool)

(assert (=> start!489752 m!5751984))

(declare-fun m!5751986 () Bool)

(assert (=> start!489752 m!5751986))

(declare-fun m!5751988 () Bool)

(assert (=> b!4776769 m!5751988))

(declare-fun m!5751990 () Bool)

(assert (=> b!4776764 m!5751990))

(push 1)

(assert (not b!4776768))

(assert (not b!4776773))

(assert (not b!4776770))

(assert tp_is_empty!33053)

(assert (not b!4776769))

(assert (not start!489752))

(assert tp_is_empty!33055)

(assert (not b!4776764))

(assert (not b!4776772))

(assert (not b!4776771))

(assert (not b!4776763))

(assert (not b!4776766))

(assert (not b!4776774))

(assert (not b!4776767))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

