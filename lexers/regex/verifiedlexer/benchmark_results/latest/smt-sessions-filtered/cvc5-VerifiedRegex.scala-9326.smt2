; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!496100 () Bool)

(assert start!496100)

(declare-fun b!4803733 () Bool)

(declare-fun res!2043473 () Bool)

(declare-fun e!2999933 () Bool)

(assert (=> b!4803733 (=> (not res!2043473) (not e!2999933))))

(declare-datatypes ((K!15917 0))(
  ( (K!15918 (val!21039 Int)) )
))
(declare-datatypes ((V!16163 0))(
  ( (V!16164 (val!21040 Int)) )
))
(declare-datatypes ((tuple2!57052 0))(
  ( (tuple2!57053 (_1!31820 K!15917) (_2!31820 V!16163)) )
))
(declare-datatypes ((List!54472 0))(
  ( (Nil!54348) (Cons!54348 (h!60780 tuple2!57052) (t!361922 List!54472)) )
))
(declare-datatypes ((tuple2!57054 0))(
  ( (tuple2!57055 (_1!31821 (_ BitVec 64)) (_2!31821 List!54472)) )
))
(declare-datatypes ((List!54473 0))(
  ( (Nil!54349) (Cons!54349 (h!60781 tuple2!57054) (t!361923 List!54473)) )
))
(declare-datatypes ((ListLongMap!5443 0))(
  ( (ListLongMap!5444 (toList!7021 List!54473)) )
))
(declare-fun lm!2473 () ListLongMap!5443)

(declare-datatypes ((Hashable!6971 0))(
  ( (HashableExt!6970 (__x!32994 Int)) )
))
(declare-fun hashF!1559 () Hashable!6971)

(declare-fun allKeysSameHashInMap!2376 (ListLongMap!5443 Hashable!6971) Bool)

(assert (=> b!4803733 (= res!2043473 (allKeysSameHashInMap!2376 lm!2473 hashF!1559))))

(declare-fun res!2043471 () Bool)

(assert (=> start!496100 (=> (not res!2043471) (not e!2999933))))

(declare-fun lambda!232942 () Int)

(declare-fun forall!12350 (List!54473 Int) Bool)

(assert (=> start!496100 (= res!2043471 (forall!12350 (toList!7021 lm!2473) lambda!232942))))

(assert (=> start!496100 e!2999933))

(declare-fun e!2999929 () Bool)

(declare-fun inv!69944 (ListLongMap!5443) Bool)

(assert (=> start!496100 (and (inv!69944 lm!2473) e!2999929)))

(assert (=> start!496100 true))

(declare-fun tp_is_empty!33745 () Bool)

(assert (=> start!496100 tp_is_empty!33745))

(declare-fun tp_is_empty!33747 () Bool)

(assert (=> start!496100 tp_is_empty!33747))

(declare-fun b!4803734 () Bool)

(declare-fun lt!1958171 () (_ BitVec 64))

(declare-fun key!5896 () K!15917)

(declare-fun e!2999932 () Bool)

(declare-datatypes ((Option!13207 0))(
  ( (None!13206) (Some!13206 (v!48543 tuple2!57052)) )
))
(declare-fun isDefined!10348 (Option!13207) Bool)

(declare-fun getPair!943 (List!54472 K!15917) Option!13207)

(declare-fun apply!13046 (ListLongMap!5443 (_ BitVec 64)) List!54472)

(assert (=> b!4803734 (= e!2999932 (isDefined!10348 (getPair!943 (apply!13046 lm!2473 lt!1958171) key!5896)))))

(declare-fun b!4803735 () Bool)

(declare-fun e!2999930 () Bool)

(declare-fun e!2999934 () Bool)

(assert (=> b!4803735 (= e!2999930 e!2999934)))

(declare-fun res!2043468 () Bool)

(assert (=> b!4803735 (=> res!2043468 e!2999934)))

(declare-fun noDuplicateKeys!2369 (List!54472) Bool)

(assert (=> b!4803735 (= res!2043468 (not (noDuplicateKeys!2369 (_2!31821 (h!60781 (toList!7021 lm!2473))))))))

(declare-datatypes ((ListMap!6493 0))(
  ( (ListMap!6494 (toList!7022 List!54472)) )
))
(declare-fun lt!1958170 () ListMap!6493)

(declare-fun extractMap!2498 (List!54473) ListMap!6493)

(assert (=> b!4803735 (= lt!1958170 (extractMap!2498 (t!361923 (toList!7021 lm!2473))))))

(declare-fun lt!1958172 () ListMap!6493)

(declare-fun value!3111 () V!16163)

(declare-fun apply!13047 (ListMap!6493 K!15917) V!16163)

(assert (=> b!4803735 (= (apply!13047 lt!1958172 key!5896) value!3111)))

(declare-fun lt!1958175 () ListLongMap!5443)

(declare-datatypes ((Unit!140956 0))(
  ( (Unit!140957) )
))
(declare-fun lt!1958174 () Unit!140956)

(declare-fun lemmaExtractMapPreservesMapping!43 (ListLongMap!5443 K!15917 V!16163 Hashable!6971) Unit!140956)

(assert (=> b!4803735 (= lt!1958174 (lemmaExtractMapPreservesMapping!43 lt!1958175 key!5896 value!3111 hashF!1559))))

(declare-fun contains!18008 (ListMap!6493 K!15917) Bool)

(assert (=> b!4803735 (contains!18008 lt!1958172 key!5896)))

(assert (=> b!4803735 (= lt!1958172 (extractMap!2498 (toList!7021 lt!1958175)))))

(declare-fun lt!1958167 () Unit!140956)

(declare-fun lemmaListContainsThenExtractedMapContains!721 (ListLongMap!5443 K!15917 Hashable!6971) Unit!140956)

(assert (=> b!4803735 (= lt!1958167 (lemmaListContainsThenExtractedMapContains!721 lt!1958175 key!5896 hashF!1559))))

(declare-fun lt!1958166 () Unit!140956)

(declare-fun e!2999931 () Unit!140956)

(assert (=> b!4803735 (= lt!1958166 e!2999931)))

(declare-fun c!818844 () Bool)

(declare-fun contains!18009 (ListLongMap!5443 (_ BitVec 64)) Bool)

(assert (=> b!4803735 (= c!818844 (not (contains!18009 lt!1958175 lt!1958171)))))

(declare-fun tail!9343 (ListLongMap!5443) ListLongMap!5443)

(assert (=> b!4803735 (= lt!1958175 (tail!9343 lm!2473))))

(declare-fun b!4803736 () Bool)

(declare-fun res!2043470 () Bool)

(assert (=> b!4803736 (=> res!2043470 e!2999930)))

(declare-fun containsKey!4057 (List!54472 K!15917) Bool)

(assert (=> b!4803736 (= res!2043470 (containsKey!4057 (_2!31821 (h!60781 (toList!7021 lm!2473))) key!5896))))

(declare-fun b!4803737 () Bool)

(declare-fun addToMapMapFromBucket!1738 (List!54472 ListMap!6493) ListMap!6493)

(assert (=> b!4803737 (= e!2999934 (contains!18008 (addToMapMapFromBucket!1738 (_2!31821 (h!60781 (toList!7021 lm!2473))) lt!1958170) key!5896))))

(declare-fun b!4803738 () Bool)

(declare-fun res!2043469 () Bool)

(assert (=> b!4803738 (=> (not res!2043469) (not e!2999933))))

(assert (=> b!4803738 (= res!2043469 (contains!18008 (extractMap!2498 (toList!7021 lm!2473)) key!5896))))

(declare-fun b!4803739 () Bool)

(declare-fun tp!1358479 () Bool)

(assert (=> b!4803739 (= e!2999929 tp!1358479)))

(declare-fun b!4803740 () Bool)

(assert (=> b!4803740 (= e!2999933 (not e!2999930))))

(declare-fun res!2043467 () Bool)

(assert (=> b!4803740 (=> res!2043467 e!2999930)))

(declare-fun getValue!159 (List!54473 K!15917) V!16163)

(assert (=> b!4803740 (= res!2043467 (not (= (getValue!159 (toList!7021 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!613 (List!54473 K!15917) Bool)

(assert (=> b!4803740 (containsKeyBiggerList!613 (toList!7021 lm!2473) key!5896)))

(declare-fun lt!1958169 () Unit!140956)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!353 (ListLongMap!5443 K!15917 Hashable!6971) Unit!140956)

(assert (=> b!4803740 (= lt!1958169 (lemmaInLongMapThenContainsKeyBiggerList!353 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4803740 e!2999932))

(declare-fun res!2043474 () Bool)

(assert (=> b!4803740 (=> (not res!2043474) (not e!2999932))))

(assert (=> b!4803740 (= res!2043474 (contains!18009 lm!2473 lt!1958171))))

(declare-fun hash!5034 (Hashable!6971 K!15917) (_ BitVec 64))

(assert (=> b!4803740 (= lt!1958171 (hash!5034 hashF!1559 key!5896))))

(declare-fun lt!1958168 () Unit!140956)

(declare-fun lemmaInGenericMapThenInLongMap!375 (ListLongMap!5443 K!15917 Hashable!6971) Unit!140956)

(assert (=> b!4803740 (= lt!1958168 (lemmaInGenericMapThenInLongMap!375 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4803741 () Bool)

(declare-fun Unit!140958 () Unit!140956)

(assert (=> b!4803741 (= e!2999931 Unit!140958)))

(declare-fun b!4803742 () Bool)

(declare-fun res!2043472 () Bool)

(assert (=> b!4803742 (=> res!2043472 e!2999930)))

(assert (=> b!4803742 (= res!2043472 (not (is-Cons!54349 (toList!7021 lm!2473))))))

(declare-fun b!4803743 () Bool)

(declare-fun lt!1958173 () Unit!140956)

(assert (=> b!4803743 (= e!2999931 lt!1958173)))

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!69 (ListLongMap!5443 K!15917 Hashable!6971) Unit!140956)

(assert (=> b!4803743 (= lt!1958173 (lemmaHashNotInLongMapThenNotInGenerated!69 lt!1958175 key!5896 hashF!1559))))

(assert (=> b!4803743 (not (contains!18008 (extractMap!2498 (toList!7021 lt!1958175)) key!5896))))

(assert (= (and start!496100 res!2043471) b!4803733))

(assert (= (and b!4803733 res!2043473) b!4803738))

(assert (= (and b!4803738 res!2043469) b!4803740))

(assert (= (and b!4803740 res!2043474) b!4803734))

(assert (= (and b!4803740 (not res!2043467)) b!4803742))

(assert (= (and b!4803742 (not res!2043472)) b!4803736))

(assert (= (and b!4803736 (not res!2043470)) b!4803735))

(assert (= (and b!4803735 c!818844) b!4803743))

(assert (= (and b!4803735 (not c!818844)) b!4803741))

(assert (= (and b!4803735 (not res!2043468)) b!4803737))

(assert (= start!496100 b!4803739))

(declare-fun m!5788906 () Bool)

(assert (=> b!4803735 m!5788906))

(declare-fun m!5788908 () Bool)

(assert (=> b!4803735 m!5788908))

(declare-fun m!5788910 () Bool)

(assert (=> b!4803735 m!5788910))

(declare-fun m!5788912 () Bool)

(assert (=> b!4803735 m!5788912))

(declare-fun m!5788914 () Bool)

(assert (=> b!4803735 m!5788914))

(declare-fun m!5788916 () Bool)

(assert (=> b!4803735 m!5788916))

(declare-fun m!5788918 () Bool)

(assert (=> b!4803735 m!5788918))

(declare-fun m!5788920 () Bool)

(assert (=> b!4803735 m!5788920))

(declare-fun m!5788922 () Bool)

(assert (=> b!4803735 m!5788922))

(declare-fun m!5788924 () Bool)

(assert (=> b!4803733 m!5788924))

(declare-fun m!5788926 () Bool)

(assert (=> b!4803737 m!5788926))

(assert (=> b!4803737 m!5788926))

(declare-fun m!5788928 () Bool)

(assert (=> b!4803737 m!5788928))

(declare-fun m!5788930 () Bool)

(assert (=> start!496100 m!5788930))

(declare-fun m!5788932 () Bool)

(assert (=> start!496100 m!5788932))

(declare-fun m!5788934 () Bool)

(assert (=> b!4803736 m!5788934))

(declare-fun m!5788936 () Bool)

(assert (=> b!4803740 m!5788936))

(declare-fun m!5788938 () Bool)

(assert (=> b!4803740 m!5788938))

(declare-fun m!5788940 () Bool)

(assert (=> b!4803740 m!5788940))

(declare-fun m!5788942 () Bool)

(assert (=> b!4803740 m!5788942))

(declare-fun m!5788944 () Bool)

(assert (=> b!4803740 m!5788944))

(declare-fun m!5788946 () Bool)

(assert (=> b!4803740 m!5788946))

(declare-fun m!5788948 () Bool)

(assert (=> b!4803743 m!5788948))

(assert (=> b!4803743 m!5788916))

(assert (=> b!4803743 m!5788916))

(declare-fun m!5788950 () Bool)

(assert (=> b!4803743 m!5788950))

(declare-fun m!5788952 () Bool)

(assert (=> b!4803738 m!5788952))

(assert (=> b!4803738 m!5788952))

(declare-fun m!5788954 () Bool)

(assert (=> b!4803738 m!5788954))

(declare-fun m!5788956 () Bool)

(assert (=> b!4803734 m!5788956))

(assert (=> b!4803734 m!5788956))

(declare-fun m!5788958 () Bool)

(assert (=> b!4803734 m!5788958))

(assert (=> b!4803734 m!5788958))

(declare-fun m!5788960 () Bool)

(assert (=> b!4803734 m!5788960))

(push 1)

(assert (not b!4803735))

(assert (not start!496100))

(assert (not b!4803739))

(assert (not b!4803734))

(assert (not b!4803737))

(assert (not b!4803738))

(assert (not b!4803736))

(assert tp_is_empty!33745)

(assert (not b!4803733))

(assert tp_is_empty!33747)

(assert (not b!4803740))

(assert (not b!4803743))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4803795 () Bool)

(declare-datatypes ((List!54476 0))(
  ( (Nil!54352) (Cons!54352 (h!60784 K!15917) (t!361926 List!54476)) )
))
(declare-fun e!2999966 () List!54476)

(declare-fun keys!19878 (ListMap!6493) List!54476)

(assert (=> b!4803795 (= e!2999966 (keys!19878 (addToMapMapFromBucket!1738 (_2!31821 (h!60781 (toList!7021 lm!2473))) lt!1958170)))))

(declare-fun b!4803796 () Bool)

(declare-fun e!2999970 () Unit!140956)

(declare-fun lt!1958229 () Unit!140956)

(assert (=> b!4803796 (= e!2999970 lt!1958229)))

(declare-fun lt!1958225 () Unit!140956)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2203 (List!54472 K!15917) Unit!140956)

(assert (=> b!4803796 (= lt!1958225 (lemmaContainsKeyImpliesGetValueByKeyDefined!2203 (toList!7022 (addToMapMapFromBucket!1738 (_2!31821 (h!60781 (toList!7021 lm!2473))) lt!1958170)) key!5896))))

(declare-datatypes ((Option!13209 0))(
  ( (None!13208) (Some!13208 (v!48545 V!16163)) )
))
(declare-fun isDefined!10350 (Option!13209) Bool)

(declare-fun getValueByKey!2412 (List!54472 K!15917) Option!13209)

(assert (=> b!4803796 (isDefined!10350 (getValueByKey!2412 (toList!7022 (addToMapMapFromBucket!1738 (_2!31821 (h!60781 (toList!7021 lm!2473))) lt!1958170)) key!5896))))

(declare-fun lt!1958227 () Unit!140956)

(assert (=> b!4803796 (= lt!1958227 lt!1958225)))

(declare-fun lemmaInListThenGetKeysListContains!1102 (List!54472 K!15917) Unit!140956)

(assert (=> b!4803796 (= lt!1958229 (lemmaInListThenGetKeysListContains!1102 (toList!7022 (addToMapMapFromBucket!1738 (_2!31821 (h!60781 (toList!7021 lm!2473))) lt!1958170)) key!5896))))

(declare-fun call!335473 () Bool)

(assert (=> b!4803796 call!335473))

(declare-fun b!4803797 () Bool)

(declare-fun getKeysList!1107 (List!54472) List!54476)

(assert (=> b!4803797 (= e!2999966 (getKeysList!1107 (toList!7022 (addToMapMapFromBucket!1738 (_2!31821 (h!60781 (toList!7021 lm!2473))) lt!1958170))))))

(declare-fun bm!335468 () Bool)

(declare-fun contains!18012 (List!54476 K!15917) Bool)

(assert (=> bm!335468 (= call!335473 (contains!18012 e!2999966 key!5896))))

(declare-fun c!818855 () Bool)

(declare-fun c!818854 () Bool)

(assert (=> bm!335468 (= c!818855 c!818854)))

(declare-fun b!4803798 () Bool)

(declare-fun e!2999967 () Unit!140956)

(assert (=> b!4803798 (= e!2999970 e!2999967)))

(declare-fun c!818856 () Bool)

(assert (=> b!4803798 (= c!818856 call!335473)))

(declare-fun b!4803799 () Bool)

(declare-fun Unit!140962 () Unit!140956)

(assert (=> b!4803799 (= e!2999967 Unit!140962)))

(declare-fun b!4803800 () Bool)

(assert (=> b!4803800 false))

(declare-fun lt!1958226 () Unit!140956)

(declare-fun lt!1958228 () Unit!140956)

(assert (=> b!4803800 (= lt!1958226 lt!1958228)))

(declare-fun containsKey!4059 (List!54472 K!15917) Bool)

(assert (=> b!4803800 (containsKey!4059 (toList!7022 (addToMapMapFromBucket!1738 (_2!31821 (h!60781 (toList!7021 lm!2473))) lt!1958170)) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1107 (List!54472 K!15917) Unit!140956)

(assert (=> b!4803800 (= lt!1958228 (lemmaInGetKeysListThenContainsKey!1107 (toList!7022 (addToMapMapFromBucket!1738 (_2!31821 (h!60781 (toList!7021 lm!2473))) lt!1958170)) key!5896))))

(declare-fun Unit!140963 () Unit!140956)

(assert (=> b!4803800 (= e!2999967 Unit!140963)))

(declare-fun e!2999968 () Bool)

(declare-fun b!4803801 () Bool)

(assert (=> b!4803801 (= e!2999968 (not (contains!18012 (keys!19878 (addToMapMapFromBucket!1738 (_2!31821 (h!60781 (toList!7021 lm!2473))) lt!1958170)) key!5896)))))

(declare-fun e!2999969 () Bool)

(declare-fun b!4803802 () Bool)

(assert (=> b!4803802 (= e!2999969 (contains!18012 (keys!19878 (addToMapMapFromBucket!1738 (_2!31821 (h!60781 (toList!7021 lm!2473))) lt!1958170)) key!5896))))

(declare-fun b!4803803 () Bool)

(declare-fun e!2999965 () Bool)

(assert (=> b!4803803 (= e!2999965 e!2999969)))

(declare-fun res!2043506 () Bool)

(assert (=> b!4803803 (=> (not res!2043506) (not e!2999969))))

(assert (=> b!4803803 (= res!2043506 (isDefined!10350 (getValueByKey!2412 (toList!7022 (addToMapMapFromBucket!1738 (_2!31821 (h!60781 (toList!7021 lm!2473))) lt!1958170)) key!5896)))))

(declare-fun d!1538701 () Bool)

(assert (=> d!1538701 e!2999965))

(declare-fun res!2043507 () Bool)

(assert (=> d!1538701 (=> res!2043507 e!2999965)))

(assert (=> d!1538701 (= res!2043507 e!2999968)))

(declare-fun res!2043505 () Bool)

(assert (=> d!1538701 (=> (not res!2043505) (not e!2999968))))

(declare-fun lt!1958222 () Bool)

(assert (=> d!1538701 (= res!2043505 (not lt!1958222))))

(declare-fun lt!1958223 () Bool)

(assert (=> d!1538701 (= lt!1958222 lt!1958223)))

(declare-fun lt!1958224 () Unit!140956)

(assert (=> d!1538701 (= lt!1958224 e!2999970)))

(assert (=> d!1538701 (= c!818854 lt!1958223)))

(assert (=> d!1538701 (= lt!1958223 (containsKey!4059 (toList!7022 (addToMapMapFromBucket!1738 (_2!31821 (h!60781 (toList!7021 lm!2473))) lt!1958170)) key!5896))))

(assert (=> d!1538701 (= (contains!18008 (addToMapMapFromBucket!1738 (_2!31821 (h!60781 (toList!7021 lm!2473))) lt!1958170) key!5896) lt!1958222)))

(assert (= (and d!1538701 c!818854) b!4803796))

(assert (= (and d!1538701 (not c!818854)) b!4803798))

(assert (= (and b!4803798 c!818856) b!4803800))

(assert (= (and b!4803798 (not c!818856)) b!4803799))

(assert (= (or b!4803796 b!4803798) bm!335468))

(assert (= (and bm!335468 c!818855) b!4803797))

(assert (= (and bm!335468 (not c!818855)) b!4803795))

(assert (= (and d!1538701 res!2043505) b!4803801))

(assert (= (and d!1538701 (not res!2043507)) b!4803803))

(assert (= (and b!4803803 res!2043506) b!4803802))

(declare-fun m!5789018 () Bool)

(assert (=> b!4803800 m!5789018))

(declare-fun m!5789020 () Bool)

(assert (=> b!4803800 m!5789020))

(declare-fun m!5789022 () Bool)

(assert (=> b!4803796 m!5789022))

(declare-fun m!5789024 () Bool)

(assert (=> b!4803796 m!5789024))

(assert (=> b!4803796 m!5789024))

(declare-fun m!5789026 () Bool)

(assert (=> b!4803796 m!5789026))

(declare-fun m!5789028 () Bool)

(assert (=> b!4803796 m!5789028))

(assert (=> d!1538701 m!5789018))

(declare-fun m!5789030 () Bool)

(assert (=> bm!335468 m!5789030))

(assert (=> b!4803801 m!5788926))

(declare-fun m!5789032 () Bool)

(assert (=> b!4803801 m!5789032))

(assert (=> b!4803801 m!5789032))

(declare-fun m!5789034 () Bool)

(assert (=> b!4803801 m!5789034))

(assert (=> b!4803795 m!5788926))

(assert (=> b!4803795 m!5789032))

(declare-fun m!5789036 () Bool)

(assert (=> b!4803797 m!5789036))

(assert (=> b!4803803 m!5789024))

(assert (=> b!4803803 m!5789024))

(assert (=> b!4803803 m!5789026))

(assert (=> b!4803802 m!5788926))

(assert (=> b!4803802 m!5789032))

(assert (=> b!4803802 m!5789032))

(assert (=> b!4803802 m!5789034))

(assert (=> b!4803737 d!1538701))

(declare-fun b!4803882 () Bool)

(assert (=> b!4803882 true))

(declare-fun bs!1158562 () Bool)

(declare-fun b!4803880 () Bool)

(assert (= bs!1158562 (and b!4803880 b!4803882)))

(declare-fun lambda!232984 () Int)

(declare-fun lambda!232983 () Int)

(assert (=> bs!1158562 (= lambda!232984 lambda!232983)))

(assert (=> b!4803880 true))

(declare-fun lambda!232985 () Int)

(declare-fun lt!1958300 () ListMap!6493)

(assert (=> bs!1158562 (= (= lt!1958300 lt!1958170) (= lambda!232985 lambda!232983))))

(assert (=> b!4803880 (= (= lt!1958300 lt!1958170) (= lambda!232985 lambda!232984))))

(assert (=> b!4803880 true))

(declare-fun bs!1158563 () Bool)

(declare-fun d!1538703 () Bool)

(assert (= bs!1158563 (and d!1538703 b!4803882)))

(declare-fun lambda!232986 () Int)

(declare-fun lt!1958302 () ListMap!6493)

(assert (=> bs!1158563 (= (= lt!1958302 lt!1958170) (= lambda!232986 lambda!232983))))

(declare-fun bs!1158564 () Bool)

(assert (= bs!1158564 (and d!1538703 b!4803880)))

(assert (=> bs!1158564 (= (= lt!1958302 lt!1958170) (= lambda!232986 lambda!232984))))

(assert (=> bs!1158564 (= (= lt!1958302 lt!1958300) (= lambda!232986 lambda!232985))))

(assert (=> d!1538703 true))

(declare-fun e!3000026 () ListMap!6493)

(assert (=> b!4803880 (= e!3000026 lt!1958300)))

(declare-fun lt!1958305 () ListMap!6493)

(declare-fun +!2510 (ListMap!6493 tuple2!57052) ListMap!6493)

(assert (=> b!4803880 (= lt!1958305 (+!2510 lt!1958170 (h!60780 (_2!31821 (h!60781 (toList!7021 lm!2473))))))))

(assert (=> b!4803880 (= lt!1958300 (addToMapMapFromBucket!1738 (t!361922 (_2!31821 (h!60781 (toList!7021 lm!2473)))) (+!2510 lt!1958170 (h!60780 (_2!31821 (h!60781 (toList!7021 lm!2473)))))))))

(declare-fun lt!1958310 () Unit!140956)

(declare-fun call!335482 () Unit!140956)

(assert (=> b!4803880 (= lt!1958310 call!335482)))

(declare-fun forall!12352 (List!54472 Int) Bool)

(assert (=> b!4803880 (forall!12352 (toList!7022 lt!1958170) lambda!232984)))

(declare-fun lt!1958307 () Unit!140956)

(assert (=> b!4803880 (= lt!1958307 lt!1958310)))

(declare-fun call!335480 () Bool)

(assert (=> b!4803880 call!335480))

(declare-fun lt!1958308 () Unit!140956)

(declare-fun Unit!140964 () Unit!140956)

(assert (=> b!4803880 (= lt!1958308 Unit!140964)))

(assert (=> b!4803880 (forall!12352 (t!361922 (_2!31821 (h!60781 (toList!7021 lm!2473)))) lambda!232985)))

(declare-fun lt!1958295 () Unit!140956)

(declare-fun Unit!140965 () Unit!140956)

(assert (=> b!4803880 (= lt!1958295 Unit!140965)))

(declare-fun lt!1958298 () Unit!140956)

(declare-fun Unit!140966 () Unit!140956)

(assert (=> b!4803880 (= lt!1958298 Unit!140966)))

(declare-fun lt!1958303 () Unit!140956)

(declare-fun forallContained!4224 (List!54472 Int tuple2!57052) Unit!140956)

(assert (=> b!4803880 (= lt!1958303 (forallContained!4224 (toList!7022 lt!1958305) lambda!232985 (h!60780 (_2!31821 (h!60781 (toList!7021 lm!2473))))))))

(assert (=> b!4803880 (contains!18008 lt!1958305 (_1!31820 (h!60780 (_2!31821 (h!60781 (toList!7021 lm!2473))))))))

(declare-fun lt!1958311 () Unit!140956)

(declare-fun Unit!140967 () Unit!140956)

(assert (=> b!4803880 (= lt!1958311 Unit!140967)))

(assert (=> b!4803880 (contains!18008 lt!1958300 (_1!31820 (h!60780 (_2!31821 (h!60781 (toList!7021 lm!2473))))))))

(declare-fun lt!1958301 () Unit!140956)

(declare-fun Unit!140968 () Unit!140956)

(assert (=> b!4803880 (= lt!1958301 Unit!140968)))

(declare-fun call!335481 () Bool)

(assert (=> b!4803880 call!335481))

(declare-fun lt!1958312 () Unit!140956)

(declare-fun Unit!140969 () Unit!140956)

(assert (=> b!4803880 (= lt!1958312 Unit!140969)))

(assert (=> b!4803880 (forall!12352 (toList!7022 lt!1958305) lambda!232985)))

(declare-fun lt!1958294 () Unit!140956)

(declare-fun Unit!140970 () Unit!140956)

(assert (=> b!4803880 (= lt!1958294 Unit!140970)))

(declare-fun lt!1958313 () Unit!140956)

(declare-fun Unit!140971 () Unit!140956)

(assert (=> b!4803880 (= lt!1958313 Unit!140971)))

(declare-fun lt!1958309 () Unit!140956)

(declare-fun addForallContainsKeyThenBeforeAdding!965 (ListMap!6493 ListMap!6493 K!15917 V!16163) Unit!140956)

(assert (=> b!4803880 (= lt!1958309 (addForallContainsKeyThenBeforeAdding!965 lt!1958170 lt!1958300 (_1!31820 (h!60780 (_2!31821 (h!60781 (toList!7021 lm!2473))))) (_2!31820 (h!60780 (_2!31821 (h!60781 (toList!7021 lm!2473)))))))))

(assert (=> b!4803880 (forall!12352 (toList!7022 lt!1958170) lambda!232985)))

(declare-fun lt!1958296 () Unit!140956)

(assert (=> b!4803880 (= lt!1958296 lt!1958309)))

(assert (=> b!4803880 (forall!12352 (toList!7022 lt!1958170) lambda!232985)))

(declare-fun lt!1958297 () Unit!140956)

(declare-fun Unit!140972 () Unit!140956)

(assert (=> b!4803880 (= lt!1958297 Unit!140972)))

(declare-fun res!2043554 () Bool)

(assert (=> b!4803880 (= res!2043554 (forall!12352 (_2!31821 (h!60781 (toList!7021 lm!2473))) lambda!232985))))

(declare-fun e!3000028 () Bool)

(assert (=> b!4803880 (=> (not res!2043554) (not e!3000028))))

(assert (=> b!4803880 e!3000028))

(declare-fun lt!1958306 () Unit!140956)

(declare-fun Unit!140973 () Unit!140956)

(assert (=> b!4803880 (= lt!1958306 Unit!140973)))

(declare-fun b!4803881 () Bool)

(assert (=> b!4803881 (= e!3000028 (forall!12352 (toList!7022 lt!1958170) lambda!232985))))

(declare-fun e!3000027 () Bool)

(assert (=> d!1538703 e!3000027))

(declare-fun res!2043556 () Bool)

(assert (=> d!1538703 (=> (not res!2043556) (not e!3000027))))

(assert (=> d!1538703 (= res!2043556 (forall!12352 (_2!31821 (h!60781 (toList!7021 lm!2473))) lambda!232986))))

(assert (=> d!1538703 (= lt!1958302 e!3000026)))

(declare-fun c!818871 () Bool)

(assert (=> d!1538703 (= c!818871 (is-Nil!54348 (_2!31821 (h!60781 (toList!7021 lm!2473)))))))

(assert (=> d!1538703 (noDuplicateKeys!2369 (_2!31821 (h!60781 (toList!7021 lm!2473))))))

(assert (=> d!1538703 (= (addToMapMapFromBucket!1738 (_2!31821 (h!60781 (toList!7021 lm!2473))) lt!1958170) lt!1958302)))

(declare-fun bm!335475 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!966 (ListMap!6493) Unit!140956)

(assert (=> bm!335475 (= call!335482 (lemmaContainsAllItsOwnKeys!966 lt!1958170))))

(declare-fun bm!335476 () Bool)

(assert (=> bm!335476 (= call!335481 (forall!12352 (ite c!818871 (toList!7022 lt!1958170) (_2!31821 (h!60781 (toList!7021 lm!2473)))) (ite c!818871 lambda!232983 lambda!232985)))))

(assert (=> b!4803882 (= e!3000026 lt!1958170)))

(declare-fun lt!1958304 () Unit!140956)

(assert (=> b!4803882 (= lt!1958304 call!335482)))

(assert (=> b!4803882 call!335480))

(declare-fun lt!1958293 () Unit!140956)

(assert (=> b!4803882 (= lt!1958293 lt!1958304)))

(assert (=> b!4803882 call!335481))

(declare-fun lt!1958299 () Unit!140956)

(declare-fun Unit!140974 () Unit!140956)

(assert (=> b!4803882 (= lt!1958299 Unit!140974)))

(declare-fun bm!335477 () Bool)

(assert (=> bm!335477 (= call!335480 (forall!12352 (ite c!818871 (toList!7022 lt!1958170) (toList!7022 lt!1958305)) (ite c!818871 lambda!232983 lambda!232985)))))

(declare-fun b!4803883 () Bool)

(declare-fun invariantList!1761 (List!54472) Bool)

(assert (=> b!4803883 (= e!3000027 (invariantList!1761 (toList!7022 lt!1958302)))))

(declare-fun b!4803884 () Bool)

(declare-fun res!2043555 () Bool)

(assert (=> b!4803884 (=> (not res!2043555) (not e!3000027))))

(assert (=> b!4803884 (= res!2043555 (forall!12352 (toList!7022 lt!1958170) lambda!232986))))

(assert (= (and d!1538703 c!818871) b!4803882))

(assert (= (and d!1538703 (not c!818871)) b!4803880))

(assert (= (and b!4803880 res!2043554) b!4803881))

(assert (= (or b!4803882 b!4803880) bm!335477))

(assert (= (or b!4803882 b!4803880) bm!335476))

(assert (= (or b!4803882 b!4803880) bm!335475))

(assert (= (and d!1538703 res!2043556) b!4803884))

(assert (= (and b!4803884 res!2043555) b!4803883))

(declare-fun m!5789104 () Bool)

(assert (=> bm!335475 m!5789104))

(declare-fun m!5789106 () Bool)

(assert (=> bm!335477 m!5789106))

(declare-fun m!5789108 () Bool)

(assert (=> b!4803880 m!5789108))

(declare-fun m!5789110 () Bool)

(assert (=> b!4803880 m!5789110))

(declare-fun m!5789112 () Bool)

(assert (=> b!4803880 m!5789112))

(declare-fun m!5789114 () Bool)

(assert (=> b!4803880 m!5789114))

(declare-fun m!5789116 () Bool)

(assert (=> b!4803880 m!5789116))

(declare-fun m!5789118 () Bool)

(assert (=> b!4803880 m!5789118))

(assert (=> b!4803880 m!5789114))

(declare-fun m!5789120 () Bool)

(assert (=> b!4803880 m!5789120))

(declare-fun m!5789122 () Bool)

(assert (=> b!4803880 m!5789122))

(assert (=> b!4803880 m!5789118))

(declare-fun m!5789124 () Bool)

(assert (=> b!4803880 m!5789124))

(declare-fun m!5789126 () Bool)

(assert (=> b!4803880 m!5789126))

(declare-fun m!5789128 () Bool)

(assert (=> b!4803880 m!5789128))

(declare-fun m!5789130 () Bool)

(assert (=> b!4803884 m!5789130))

(declare-fun m!5789132 () Bool)

(assert (=> bm!335476 m!5789132))

(assert (=> b!4803881 m!5789118))

(declare-fun m!5789134 () Bool)

(assert (=> b!4803883 m!5789134))

(declare-fun m!5789136 () Bool)

(assert (=> d!1538703 m!5789136))

(assert (=> d!1538703 m!5788920))

(assert (=> b!4803737 d!1538703))

(declare-fun d!1538735 () Bool)

(declare-fun res!2043564 () Bool)

(declare-fun e!3000037 () Bool)

(assert (=> d!1538735 (=> res!2043564 e!3000037)))

(assert (=> d!1538735 (= res!2043564 (is-Nil!54349 (toList!7021 lm!2473)))))

(assert (=> d!1538735 (= (forall!12350 (toList!7021 lm!2473) lambda!232942) e!3000037)))

(declare-fun b!4803896 () Bool)

(declare-fun e!3000038 () Bool)

(assert (=> b!4803896 (= e!3000037 e!3000038)))

(declare-fun res!2043565 () Bool)

(assert (=> b!4803896 (=> (not res!2043565) (not e!3000038))))

(declare-fun dynLambda!22100 (Int tuple2!57054) Bool)

(assert (=> b!4803896 (= res!2043565 (dynLambda!22100 lambda!232942 (h!60781 (toList!7021 lm!2473))))))

(declare-fun b!4803897 () Bool)

(assert (=> b!4803897 (= e!3000038 (forall!12350 (t!361923 (toList!7021 lm!2473)) lambda!232942))))

(assert (= (and d!1538735 (not res!2043564)) b!4803896))

(assert (= (and b!4803896 res!2043565) b!4803897))

(declare-fun b_lambda!187925 () Bool)

(assert (=> (not b_lambda!187925) (not b!4803896)))

(declare-fun m!5789146 () Bool)

(assert (=> b!4803896 m!5789146))

(declare-fun m!5789148 () Bool)

(assert (=> b!4803897 m!5789148))

(assert (=> start!496100 d!1538735))

(declare-fun d!1538739 () Bool)

(declare-fun isStrictlySorted!907 (List!54473) Bool)

(assert (=> d!1538739 (= (inv!69944 lm!2473) (isStrictlySorted!907 (toList!7021 lm!2473)))))

(declare-fun bs!1158566 () Bool)

(assert (= bs!1158566 d!1538739))

(declare-fun m!5789150 () Bool)

(assert (=> bs!1158566 m!5789150))

(assert (=> start!496100 d!1538739))

(declare-fun d!1538741 () Bool)

(declare-fun res!2043570 () Bool)

(declare-fun e!3000043 () Bool)

(assert (=> d!1538741 (=> res!2043570 e!3000043)))

(assert (=> d!1538741 (= res!2043570 (and (is-Cons!54348 (_2!31821 (h!60781 (toList!7021 lm!2473)))) (= (_1!31820 (h!60780 (_2!31821 (h!60781 (toList!7021 lm!2473))))) key!5896)))))

(assert (=> d!1538741 (= (containsKey!4057 (_2!31821 (h!60781 (toList!7021 lm!2473))) key!5896) e!3000043)))

(declare-fun b!4803902 () Bool)

(declare-fun e!3000044 () Bool)

(assert (=> b!4803902 (= e!3000043 e!3000044)))

(declare-fun res!2043571 () Bool)

(assert (=> b!4803902 (=> (not res!2043571) (not e!3000044))))

(assert (=> b!4803902 (= res!2043571 (is-Cons!54348 (_2!31821 (h!60781 (toList!7021 lm!2473)))))))

(declare-fun b!4803903 () Bool)

(assert (=> b!4803903 (= e!3000044 (containsKey!4057 (t!361922 (_2!31821 (h!60781 (toList!7021 lm!2473)))) key!5896))))

(assert (= (and d!1538741 (not res!2043570)) b!4803902))

(assert (= (and b!4803902 res!2043571) b!4803903))

(declare-fun m!5789152 () Bool)

(assert (=> b!4803903 m!5789152))

(assert (=> b!4803736 d!1538741))

(declare-fun d!1538743 () Bool)

(declare-fun e!3000049 () Bool)

(assert (=> d!1538743 e!3000049))

(declare-fun res!2043574 () Bool)

(assert (=> d!1538743 (=> res!2043574 e!3000049)))

(declare-fun lt!1958327 () Bool)

(assert (=> d!1538743 (= res!2043574 (not lt!1958327))))

(declare-fun lt!1958329 () Bool)

(assert (=> d!1538743 (= lt!1958327 lt!1958329)))

(declare-fun lt!1958326 () Unit!140956)

(declare-fun e!3000050 () Unit!140956)

(assert (=> d!1538743 (= lt!1958326 e!3000050)))

(declare-fun c!818875 () Bool)

(assert (=> d!1538743 (= c!818875 lt!1958329)))

(declare-fun containsKey!4060 (List!54473 (_ BitVec 64)) Bool)

(assert (=> d!1538743 (= lt!1958329 (containsKey!4060 (toList!7021 lt!1958175) lt!1958171))))

(assert (=> d!1538743 (= (contains!18009 lt!1958175 lt!1958171) lt!1958327)))

(declare-fun b!4803910 () Bool)

(declare-fun lt!1958328 () Unit!140956)

(assert (=> b!4803910 (= e!3000050 lt!1958328)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2204 (List!54473 (_ BitVec 64)) Unit!140956)

(assert (=> b!4803910 (= lt!1958328 (lemmaContainsKeyImpliesGetValueByKeyDefined!2204 (toList!7021 lt!1958175) lt!1958171))))

(declare-datatypes ((Option!13210 0))(
  ( (None!13209) (Some!13209 (v!48546 List!54472)) )
))
(declare-fun isDefined!10351 (Option!13210) Bool)

(declare-fun getValueByKey!2413 (List!54473 (_ BitVec 64)) Option!13210)

(assert (=> b!4803910 (isDefined!10351 (getValueByKey!2413 (toList!7021 lt!1958175) lt!1958171))))

(declare-fun b!4803911 () Bool)

(declare-fun Unit!140975 () Unit!140956)

(assert (=> b!4803911 (= e!3000050 Unit!140975)))

(declare-fun b!4803912 () Bool)

(assert (=> b!4803912 (= e!3000049 (isDefined!10351 (getValueByKey!2413 (toList!7021 lt!1958175) lt!1958171)))))

(assert (= (and d!1538743 c!818875) b!4803910))

(assert (= (and d!1538743 (not c!818875)) b!4803911))

(assert (= (and d!1538743 (not res!2043574)) b!4803912))

(declare-fun m!5789154 () Bool)

(assert (=> d!1538743 m!5789154))

(declare-fun m!5789156 () Bool)

(assert (=> b!4803910 m!5789156))

(declare-fun m!5789158 () Bool)

(assert (=> b!4803910 m!5789158))

(assert (=> b!4803910 m!5789158))

(declare-fun m!5789160 () Bool)

(assert (=> b!4803910 m!5789160))

(assert (=> b!4803912 m!5789158))

(assert (=> b!4803912 m!5789158))

(assert (=> b!4803912 m!5789160))

(assert (=> b!4803735 d!1538743))

(declare-fun d!1538745 () Bool)

(declare-fun tail!9345 (List!54473) List!54473)

(assert (=> d!1538745 (= (tail!9343 lm!2473) (ListLongMap!5444 (tail!9345 (toList!7021 lm!2473))))))

(declare-fun bs!1158567 () Bool)

(assert (= bs!1158567 d!1538745))

(declare-fun m!5789162 () Bool)

(assert (=> bs!1158567 m!5789162))

(assert (=> b!4803735 d!1538745))

(declare-fun bs!1158568 () Bool)

(declare-fun d!1538747 () Bool)

(assert (= bs!1158568 (and d!1538747 start!496100)))

(declare-fun lambda!232991 () Int)

(assert (=> bs!1158568 (= lambda!232991 lambda!232942)))

(assert (=> d!1538747 (contains!18008 (extractMap!2498 (toList!7021 lt!1958175)) key!5896)))

(declare-fun lt!1958332 () Unit!140956)

(declare-fun choose!34749 (ListLongMap!5443 K!15917 Hashable!6971) Unit!140956)

(assert (=> d!1538747 (= lt!1958332 (choose!34749 lt!1958175 key!5896 hashF!1559))))

(assert (=> d!1538747 (forall!12350 (toList!7021 lt!1958175) lambda!232991)))

(assert (=> d!1538747 (= (lemmaListContainsThenExtractedMapContains!721 lt!1958175 key!5896 hashF!1559) lt!1958332)))

(declare-fun bs!1158569 () Bool)

(assert (= bs!1158569 d!1538747))

(assert (=> bs!1158569 m!5788916))

(assert (=> bs!1158569 m!5788916))

(assert (=> bs!1158569 m!5788950))

(declare-fun m!5789164 () Bool)

(assert (=> bs!1158569 m!5789164))

(declare-fun m!5789166 () Bool)

(assert (=> bs!1158569 m!5789166))

(assert (=> b!4803735 d!1538747))

(declare-fun bs!1158574 () Bool)

(declare-fun d!1538749 () Bool)

(assert (= bs!1158574 (and d!1538749 start!496100)))

(declare-fun lambda!232995 () Int)

(assert (=> bs!1158574 (= lambda!232995 lambda!232942)))

(declare-fun bs!1158575 () Bool)

(assert (= bs!1158575 (and d!1538749 d!1538747)))

(assert (=> bs!1158575 (= lambda!232995 lambda!232991)))

(declare-fun lt!1958338 () ListMap!6493)

(assert (=> d!1538749 (invariantList!1761 (toList!7022 lt!1958338))))

(declare-fun e!3000056 () ListMap!6493)

(assert (=> d!1538749 (= lt!1958338 e!3000056)))

(declare-fun c!818881 () Bool)

(assert (=> d!1538749 (= c!818881 (is-Cons!54349 (t!361923 (toList!7021 lm!2473))))))

(assert (=> d!1538749 (forall!12350 (t!361923 (toList!7021 lm!2473)) lambda!232995)))

(assert (=> d!1538749 (= (extractMap!2498 (t!361923 (toList!7021 lm!2473))) lt!1958338)))

(declare-fun b!4803923 () Bool)

(assert (=> b!4803923 (= e!3000056 (addToMapMapFromBucket!1738 (_2!31821 (h!60781 (t!361923 (toList!7021 lm!2473)))) (extractMap!2498 (t!361923 (t!361923 (toList!7021 lm!2473))))))))

(declare-fun b!4803924 () Bool)

(assert (=> b!4803924 (= e!3000056 (ListMap!6494 Nil!54348))))

(assert (= (and d!1538749 c!818881) b!4803923))

(assert (= (and d!1538749 (not c!818881)) b!4803924))

(declare-fun m!5789176 () Bool)

(assert (=> d!1538749 m!5789176))

(declare-fun m!5789178 () Bool)

(assert (=> d!1538749 m!5789178))

(declare-fun m!5789180 () Bool)

(assert (=> b!4803923 m!5789180))

(assert (=> b!4803923 m!5789180))

(declare-fun m!5789182 () Bool)

(assert (=> b!4803923 m!5789182))

(assert (=> b!4803735 d!1538749))

(declare-fun d!1538753 () Bool)

(declare-fun res!2043579 () Bool)

(declare-fun e!3000061 () Bool)

(assert (=> d!1538753 (=> res!2043579 e!3000061)))

(assert (=> d!1538753 (= res!2043579 (not (is-Cons!54348 (_2!31821 (h!60781 (toList!7021 lm!2473))))))))

(assert (=> d!1538753 (= (noDuplicateKeys!2369 (_2!31821 (h!60781 (toList!7021 lm!2473)))) e!3000061)))

(declare-fun b!4803929 () Bool)

(declare-fun e!3000062 () Bool)

(assert (=> b!4803929 (= e!3000061 e!3000062)))

(declare-fun res!2043580 () Bool)

(assert (=> b!4803929 (=> (not res!2043580) (not e!3000062))))

(assert (=> b!4803929 (= res!2043580 (not (containsKey!4057 (t!361922 (_2!31821 (h!60781 (toList!7021 lm!2473)))) (_1!31820 (h!60780 (_2!31821 (h!60781 (toList!7021 lm!2473))))))))))

(declare-fun b!4803930 () Bool)

(assert (=> b!4803930 (= e!3000062 (noDuplicateKeys!2369 (t!361922 (_2!31821 (h!60781 (toList!7021 lm!2473))))))))

(assert (= (and d!1538753 (not res!2043579)) b!4803929))

(assert (= (and b!4803929 res!2043580) b!4803930))

(declare-fun m!5789184 () Bool)

(assert (=> b!4803929 m!5789184))

(declare-fun m!5789186 () Bool)

(assert (=> b!4803930 m!5789186))

(assert (=> b!4803735 d!1538753))

(declare-fun d!1538755 () Bool)

(declare-fun get!18570 (Option!13209) V!16163)

(assert (=> d!1538755 (= (apply!13047 lt!1958172 key!5896) (get!18570 (getValueByKey!2412 (toList!7022 lt!1958172) key!5896)))))

(declare-fun bs!1158576 () Bool)

(assert (= bs!1158576 d!1538755))

(declare-fun m!5789188 () Bool)

(assert (=> bs!1158576 m!5789188))

(assert (=> bs!1158576 m!5789188))

(declare-fun m!5789190 () Bool)

(assert (=> bs!1158576 m!5789190))

(assert (=> b!4803735 d!1538755))

(declare-fun b!4803931 () Bool)

(declare-fun e!3000064 () List!54476)

(assert (=> b!4803931 (= e!3000064 (keys!19878 lt!1958172))))

(declare-fun b!4803932 () Bool)

(declare-fun e!3000068 () Unit!140956)

(declare-fun lt!1958346 () Unit!140956)

(assert (=> b!4803932 (= e!3000068 lt!1958346)))

(declare-fun lt!1958342 () Unit!140956)

(assert (=> b!4803932 (= lt!1958342 (lemmaContainsKeyImpliesGetValueByKeyDefined!2203 (toList!7022 lt!1958172) key!5896))))

(assert (=> b!4803932 (isDefined!10350 (getValueByKey!2412 (toList!7022 lt!1958172) key!5896))))

(declare-fun lt!1958344 () Unit!140956)

(assert (=> b!4803932 (= lt!1958344 lt!1958342)))

(assert (=> b!4803932 (= lt!1958346 (lemmaInListThenGetKeysListContains!1102 (toList!7022 lt!1958172) key!5896))))

(declare-fun call!335483 () Bool)

(assert (=> b!4803932 call!335483))

(declare-fun b!4803933 () Bool)

(assert (=> b!4803933 (= e!3000064 (getKeysList!1107 (toList!7022 lt!1958172)))))

(declare-fun bm!335478 () Bool)

(assert (=> bm!335478 (= call!335483 (contains!18012 e!3000064 key!5896))))

(declare-fun c!818883 () Bool)

(declare-fun c!818882 () Bool)

(assert (=> bm!335478 (= c!818883 c!818882)))

(declare-fun b!4803934 () Bool)

(declare-fun e!3000065 () Unit!140956)

(assert (=> b!4803934 (= e!3000068 e!3000065)))

(declare-fun c!818884 () Bool)

(assert (=> b!4803934 (= c!818884 call!335483)))

(declare-fun b!4803935 () Bool)

(declare-fun Unit!140976 () Unit!140956)

(assert (=> b!4803935 (= e!3000065 Unit!140976)))

(declare-fun b!4803936 () Bool)

(assert (=> b!4803936 false))

(declare-fun lt!1958343 () Unit!140956)

(declare-fun lt!1958345 () Unit!140956)

(assert (=> b!4803936 (= lt!1958343 lt!1958345)))

(assert (=> b!4803936 (containsKey!4059 (toList!7022 lt!1958172) key!5896)))

(assert (=> b!4803936 (= lt!1958345 (lemmaInGetKeysListThenContainsKey!1107 (toList!7022 lt!1958172) key!5896))))

(declare-fun Unit!140977 () Unit!140956)

(assert (=> b!4803936 (= e!3000065 Unit!140977)))

(declare-fun b!4803937 () Bool)

(declare-fun e!3000066 () Bool)

(assert (=> b!4803937 (= e!3000066 (not (contains!18012 (keys!19878 lt!1958172) key!5896)))))

(declare-fun b!4803938 () Bool)

(declare-fun e!3000067 () Bool)

(assert (=> b!4803938 (= e!3000067 (contains!18012 (keys!19878 lt!1958172) key!5896))))

(declare-fun b!4803939 () Bool)

(declare-fun e!3000063 () Bool)

(assert (=> b!4803939 (= e!3000063 e!3000067)))

(declare-fun res!2043582 () Bool)

(assert (=> b!4803939 (=> (not res!2043582) (not e!3000067))))

(assert (=> b!4803939 (= res!2043582 (isDefined!10350 (getValueByKey!2412 (toList!7022 lt!1958172) key!5896)))))

(declare-fun d!1538757 () Bool)

(assert (=> d!1538757 e!3000063))

(declare-fun res!2043583 () Bool)

(assert (=> d!1538757 (=> res!2043583 e!3000063)))

(assert (=> d!1538757 (= res!2043583 e!3000066)))

(declare-fun res!2043581 () Bool)

(assert (=> d!1538757 (=> (not res!2043581) (not e!3000066))))

(declare-fun lt!1958339 () Bool)

(assert (=> d!1538757 (= res!2043581 (not lt!1958339))))

(declare-fun lt!1958340 () Bool)

(assert (=> d!1538757 (= lt!1958339 lt!1958340)))

(declare-fun lt!1958341 () Unit!140956)

(assert (=> d!1538757 (= lt!1958341 e!3000068)))

(assert (=> d!1538757 (= c!818882 lt!1958340)))

(assert (=> d!1538757 (= lt!1958340 (containsKey!4059 (toList!7022 lt!1958172) key!5896))))

(assert (=> d!1538757 (= (contains!18008 lt!1958172 key!5896) lt!1958339)))

(assert (= (and d!1538757 c!818882) b!4803932))

(assert (= (and d!1538757 (not c!818882)) b!4803934))

(assert (= (and b!4803934 c!818884) b!4803936))

(assert (= (and b!4803934 (not c!818884)) b!4803935))

(assert (= (or b!4803932 b!4803934) bm!335478))

(assert (= (and bm!335478 c!818883) b!4803933))

(assert (= (and bm!335478 (not c!818883)) b!4803931))

(assert (= (and d!1538757 res!2043581) b!4803937))

(assert (= (and d!1538757 (not res!2043583)) b!4803939))

(assert (= (and b!4803939 res!2043582) b!4803938))

(declare-fun m!5789192 () Bool)

(assert (=> b!4803936 m!5789192))

(declare-fun m!5789194 () Bool)

(assert (=> b!4803936 m!5789194))

(declare-fun m!5789196 () Bool)

(assert (=> b!4803932 m!5789196))

(assert (=> b!4803932 m!5789188))

(assert (=> b!4803932 m!5789188))

(declare-fun m!5789198 () Bool)

(assert (=> b!4803932 m!5789198))

(declare-fun m!5789200 () Bool)

(assert (=> b!4803932 m!5789200))

(assert (=> d!1538757 m!5789192))

(declare-fun m!5789202 () Bool)

(assert (=> bm!335478 m!5789202))

(declare-fun m!5789204 () Bool)

(assert (=> b!4803937 m!5789204))

(assert (=> b!4803937 m!5789204))

(declare-fun m!5789206 () Bool)

(assert (=> b!4803937 m!5789206))

(assert (=> b!4803931 m!5789204))

(declare-fun m!5789208 () Bool)

(assert (=> b!4803933 m!5789208))

(assert (=> b!4803939 m!5789188))

(assert (=> b!4803939 m!5789188))

(assert (=> b!4803939 m!5789198))

(assert (=> b!4803938 m!5789204))

(assert (=> b!4803938 m!5789204))

(assert (=> b!4803938 m!5789206))

(assert (=> b!4803735 d!1538757))

(declare-fun bs!1158577 () Bool)

(declare-fun d!1538759 () Bool)

(assert (= bs!1158577 (and d!1538759 start!496100)))

(declare-fun lambda!232998 () Int)

(assert (=> bs!1158577 (= lambda!232998 lambda!232942)))

(declare-fun bs!1158578 () Bool)

(assert (= bs!1158578 (and d!1538759 d!1538747)))

(assert (=> bs!1158578 (= lambda!232998 lambda!232991)))

(declare-fun bs!1158579 () Bool)

(assert (= bs!1158579 (and d!1538759 d!1538749)))

(assert (=> bs!1158579 (= lambda!232998 lambda!232995)))

(assert (=> d!1538759 (= (apply!13047 (extractMap!2498 (toList!7021 lt!1958175)) key!5896) value!3111)))

(declare-fun lt!1958349 () Unit!140956)

(declare-fun choose!34750 (ListLongMap!5443 K!15917 V!16163 Hashable!6971) Unit!140956)

(assert (=> d!1538759 (= lt!1958349 (choose!34750 lt!1958175 key!5896 value!3111 hashF!1559))))

(assert (=> d!1538759 (forall!12350 (toList!7021 lt!1958175) lambda!232998)))

(assert (=> d!1538759 (= (lemmaExtractMapPreservesMapping!43 lt!1958175 key!5896 value!3111 hashF!1559) lt!1958349)))

(declare-fun bs!1158580 () Bool)

(assert (= bs!1158580 d!1538759))

(assert (=> bs!1158580 m!5788916))

(assert (=> bs!1158580 m!5788916))

(declare-fun m!5789210 () Bool)

(assert (=> bs!1158580 m!5789210))

(declare-fun m!5789212 () Bool)

(assert (=> bs!1158580 m!5789212))

(declare-fun m!5789214 () Bool)

(assert (=> bs!1158580 m!5789214))

(assert (=> b!4803735 d!1538759))

(declare-fun bs!1158581 () Bool)

(declare-fun d!1538761 () Bool)

(assert (= bs!1158581 (and d!1538761 start!496100)))

(declare-fun lambda!232999 () Int)

(assert (=> bs!1158581 (= lambda!232999 lambda!232942)))

(declare-fun bs!1158582 () Bool)

(assert (= bs!1158582 (and d!1538761 d!1538747)))

(assert (=> bs!1158582 (= lambda!232999 lambda!232991)))

(declare-fun bs!1158583 () Bool)

(assert (= bs!1158583 (and d!1538761 d!1538749)))

(assert (=> bs!1158583 (= lambda!232999 lambda!232995)))

(declare-fun bs!1158584 () Bool)

(assert (= bs!1158584 (and d!1538761 d!1538759)))

(assert (=> bs!1158584 (= lambda!232999 lambda!232998)))

(declare-fun lt!1958350 () ListMap!6493)

(assert (=> d!1538761 (invariantList!1761 (toList!7022 lt!1958350))))

(declare-fun e!3000069 () ListMap!6493)

(assert (=> d!1538761 (= lt!1958350 e!3000069)))

(declare-fun c!818885 () Bool)

(assert (=> d!1538761 (= c!818885 (is-Cons!54349 (toList!7021 lt!1958175)))))

(assert (=> d!1538761 (forall!12350 (toList!7021 lt!1958175) lambda!232999)))

(assert (=> d!1538761 (= (extractMap!2498 (toList!7021 lt!1958175)) lt!1958350)))

(declare-fun b!4803940 () Bool)

(assert (=> b!4803940 (= e!3000069 (addToMapMapFromBucket!1738 (_2!31821 (h!60781 (toList!7021 lt!1958175))) (extractMap!2498 (t!361923 (toList!7021 lt!1958175)))))))

(declare-fun b!4803941 () Bool)

(assert (=> b!4803941 (= e!3000069 (ListMap!6494 Nil!54348))))

(assert (= (and d!1538761 c!818885) b!4803940))

(assert (= (and d!1538761 (not c!818885)) b!4803941))

(declare-fun m!5789216 () Bool)

(assert (=> d!1538761 m!5789216))

(declare-fun m!5789218 () Bool)

(assert (=> d!1538761 m!5789218))

(declare-fun m!5789220 () Bool)

(assert (=> b!4803940 m!5789220))

(assert (=> b!4803940 m!5789220))

(declare-fun m!5789222 () Bool)

(assert (=> b!4803940 m!5789222))

(assert (=> b!4803735 d!1538761))

(declare-fun d!1538763 () Bool)

(declare-fun e!3000070 () Bool)

(assert (=> d!1538763 e!3000070))

(declare-fun res!2043584 () Bool)

(assert (=> d!1538763 (=> res!2043584 e!3000070)))

(declare-fun lt!1958356 () Bool)

(assert (=> d!1538763 (= res!2043584 (not lt!1958356))))

(declare-fun lt!1958358 () Bool)

(assert (=> d!1538763 (= lt!1958356 lt!1958358)))

(declare-fun lt!1958355 () Unit!140956)

(declare-fun e!3000071 () Unit!140956)

(assert (=> d!1538763 (= lt!1958355 e!3000071)))

(declare-fun c!818886 () Bool)

(assert (=> d!1538763 (= c!818886 lt!1958358)))

(assert (=> d!1538763 (= lt!1958358 (containsKey!4060 (toList!7021 lm!2473) lt!1958171))))

(assert (=> d!1538763 (= (contains!18009 lm!2473 lt!1958171) lt!1958356)))

(declare-fun b!4803942 () Bool)

(declare-fun lt!1958357 () Unit!140956)

(assert (=> b!4803942 (= e!3000071 lt!1958357)))

(assert (=> b!4803942 (= lt!1958357 (lemmaContainsKeyImpliesGetValueByKeyDefined!2204 (toList!7021 lm!2473) lt!1958171))))

(assert (=> b!4803942 (isDefined!10351 (getValueByKey!2413 (toList!7021 lm!2473) lt!1958171))))

(declare-fun b!4803943 () Bool)

(declare-fun Unit!140978 () Unit!140956)

(assert (=> b!4803943 (= e!3000071 Unit!140978)))

(declare-fun b!4803944 () Bool)

(assert (=> b!4803944 (= e!3000070 (isDefined!10351 (getValueByKey!2413 (toList!7021 lm!2473) lt!1958171)))))

(assert (= (and d!1538763 c!818886) b!4803942))

(assert (= (and d!1538763 (not c!818886)) b!4803943))

(assert (= (and d!1538763 (not res!2043584)) b!4803944))

(declare-fun m!5789224 () Bool)

(assert (=> d!1538763 m!5789224))

(declare-fun m!5789226 () Bool)

(assert (=> b!4803942 m!5789226))

(declare-fun m!5789228 () Bool)

(assert (=> b!4803942 m!5789228))

(assert (=> b!4803942 m!5789228))

(declare-fun m!5789230 () Bool)

(assert (=> b!4803942 m!5789230))

(assert (=> b!4803944 m!5789228))

(assert (=> b!4803944 m!5789228))

(assert (=> b!4803944 m!5789230))

(assert (=> b!4803740 d!1538763))

(declare-fun d!1538765 () Bool)

(declare-fun res!2043595 () Bool)

(declare-fun e!3000090 () Bool)

(assert (=> d!1538765 (=> res!2043595 e!3000090)))

(declare-fun e!3000089 () Bool)

(assert (=> d!1538765 (= res!2043595 e!3000089)))

(declare-fun res!2043596 () Bool)

(assert (=> d!1538765 (=> (not res!2043596) (not e!3000089))))

(assert (=> d!1538765 (= res!2043596 (is-Cons!54349 (toList!7021 lm!2473)))))

(assert (=> d!1538765 (= (containsKeyBiggerList!613 (toList!7021 lm!2473) key!5896) e!3000090)))

(declare-fun b!4803965 () Bool)

(assert (=> b!4803965 (= e!3000089 (containsKey!4057 (_2!31821 (h!60781 (toList!7021 lm!2473))) key!5896))))

(declare-fun b!4803966 () Bool)

(declare-fun e!3000088 () Bool)

(assert (=> b!4803966 (= e!3000090 e!3000088)))

(declare-fun res!2043597 () Bool)

(assert (=> b!4803966 (=> (not res!2043597) (not e!3000088))))

(assert (=> b!4803966 (= res!2043597 (is-Cons!54349 (toList!7021 lm!2473)))))

(declare-fun b!4803967 () Bool)

(assert (=> b!4803967 (= e!3000088 (containsKeyBiggerList!613 (t!361923 (toList!7021 lm!2473)) key!5896))))

(assert (= (and d!1538765 res!2043596) b!4803965))

(assert (= (and d!1538765 (not res!2043595)) b!4803966))

(assert (= (and b!4803966 res!2043597) b!4803967))

(assert (=> b!4803965 m!5788934))

(declare-fun m!5789232 () Bool)

(assert (=> b!4803967 m!5789232))

(assert (=> b!4803740 d!1538765))

(declare-fun bs!1158585 () Bool)

(declare-fun d!1538767 () Bool)

(assert (= bs!1158585 (and d!1538767 start!496100)))

(declare-fun lambda!233002 () Int)

(assert (=> bs!1158585 (= lambda!233002 lambda!232942)))

(declare-fun bs!1158586 () Bool)

(assert (= bs!1158586 (and d!1538767 d!1538761)))

(assert (=> bs!1158586 (= lambda!233002 lambda!232999)))

(declare-fun bs!1158587 () Bool)

(assert (= bs!1158587 (and d!1538767 d!1538759)))

(assert (=> bs!1158587 (= lambda!233002 lambda!232998)))

(declare-fun bs!1158588 () Bool)

(assert (= bs!1158588 (and d!1538767 d!1538747)))

(assert (=> bs!1158588 (= lambda!233002 lambda!232991)))

(declare-fun bs!1158589 () Bool)

(assert (= bs!1158589 (and d!1538767 d!1538749)))

(assert (=> bs!1158589 (= lambda!233002 lambda!232995)))

(assert (=> d!1538767 (containsKeyBiggerList!613 (toList!7021 lm!2473) key!5896)))

(declare-fun lt!1958373 () Unit!140956)

(declare-fun choose!34751 (ListLongMap!5443 K!15917 Hashable!6971) Unit!140956)

(assert (=> d!1538767 (= lt!1958373 (choose!34751 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1538767 (forall!12350 (toList!7021 lm!2473) lambda!233002)))

(assert (=> d!1538767 (= (lemmaInLongMapThenContainsKeyBiggerList!353 lm!2473 key!5896 hashF!1559) lt!1958373)))

(declare-fun bs!1158590 () Bool)

(assert (= bs!1158590 d!1538767))

(assert (=> bs!1158590 m!5788936))

(declare-fun m!5789234 () Bool)

(assert (=> bs!1158590 m!5789234))

(declare-fun m!5789236 () Bool)

(assert (=> bs!1158590 m!5789236))

(assert (=> b!4803740 d!1538767))

(declare-fun bs!1158591 () Bool)

(declare-fun d!1538769 () Bool)

(assert (= bs!1158591 (and d!1538769 start!496100)))

(declare-fun lambda!233005 () Int)

(assert (=> bs!1158591 (= lambda!233005 lambda!232942)))

(declare-fun bs!1158592 () Bool)

(assert (= bs!1158592 (and d!1538769 d!1538767)))

(assert (=> bs!1158592 (= lambda!233005 lambda!233002)))

(declare-fun bs!1158593 () Bool)

(assert (= bs!1158593 (and d!1538769 d!1538761)))

(assert (=> bs!1158593 (= lambda!233005 lambda!232999)))

(declare-fun bs!1158594 () Bool)

(assert (= bs!1158594 (and d!1538769 d!1538759)))

(assert (=> bs!1158594 (= lambda!233005 lambda!232998)))

(declare-fun bs!1158595 () Bool)

(assert (= bs!1158595 (and d!1538769 d!1538747)))

(assert (=> bs!1158595 (= lambda!233005 lambda!232991)))

(declare-fun bs!1158596 () Bool)

(assert (= bs!1158596 (and d!1538769 d!1538749)))

(assert (=> bs!1158596 (= lambda!233005 lambda!232995)))

(declare-fun e!3000101 () Bool)

(assert (=> d!1538769 e!3000101))

(declare-fun res!2043605 () Bool)

(assert (=> d!1538769 (=> (not res!2043605) (not e!3000101))))

(assert (=> d!1538769 (= res!2043605 (contains!18009 lm!2473 (hash!5034 hashF!1559 key!5896)))))

(declare-fun lt!1958384 () Unit!140956)

(declare-fun choose!34752 (ListLongMap!5443 K!15917 Hashable!6971) Unit!140956)

(assert (=> d!1538769 (= lt!1958384 (choose!34752 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1538769 (forall!12350 (toList!7021 lm!2473) lambda!233005)))

(assert (=> d!1538769 (= (lemmaInGenericMapThenInLongMap!375 lm!2473 key!5896 hashF!1559) lt!1958384)))

(declare-fun b!4803983 () Bool)

(assert (=> b!4803983 (= e!3000101 (isDefined!10348 (getPair!943 (apply!13046 lm!2473 (hash!5034 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1538769 res!2043605) b!4803983))

(assert (=> d!1538769 m!5788940))

(assert (=> d!1538769 m!5788940))

(declare-fun m!5789258 () Bool)

(assert (=> d!1538769 m!5789258))

(declare-fun m!5789260 () Bool)

(assert (=> d!1538769 m!5789260))

(declare-fun m!5789262 () Bool)

(assert (=> d!1538769 m!5789262))

(assert (=> b!4803983 m!5788940))

(assert (=> b!4803983 m!5788940))

(declare-fun m!5789264 () Bool)

(assert (=> b!4803983 m!5789264))

(assert (=> b!4803983 m!5789264))

(declare-fun m!5789266 () Bool)

(assert (=> b!4803983 m!5789266))

(assert (=> b!4803983 m!5789266))

(declare-fun m!5789268 () Bool)

(assert (=> b!4803983 m!5789268))

(assert (=> b!4803740 d!1538769))

(declare-fun d!1538773 () Bool)

(declare-fun c!818898 () Bool)

(declare-fun e!3000107 () Bool)

(assert (=> d!1538773 (= c!818898 e!3000107)))

(declare-fun res!2043608 () Bool)

(assert (=> d!1538773 (=> (not res!2043608) (not e!3000107))))

(assert (=> d!1538773 (= res!2043608 (is-Cons!54349 (toList!7021 lm!2473)))))

(declare-fun e!3000106 () V!16163)

(assert (=> d!1538773 (= (getValue!159 (toList!7021 lm!2473) key!5896) e!3000106)))

(declare-fun b!4803992 () Bool)

(assert (=> b!4803992 (= e!3000107 (containsKey!4057 (_2!31821 (h!60781 (toList!7021 lm!2473))) key!5896))))

(declare-fun b!4803990 () Bool)

(declare-fun get!18571 (Option!13207) tuple2!57052)

(assert (=> b!4803990 (= e!3000106 (_2!31820 (get!18571 (getPair!943 (_2!31821 (h!60781 (toList!7021 lm!2473))) key!5896))))))

(declare-fun b!4803991 () Bool)

(assert (=> b!4803991 (= e!3000106 (getValue!159 (t!361923 (toList!7021 lm!2473)) key!5896))))

(assert (= (and d!1538773 res!2043608) b!4803992))

(assert (= (and d!1538773 c!818898) b!4803990))

(assert (= (and d!1538773 (not c!818898)) b!4803991))

(assert (=> b!4803992 m!5788934))

(declare-fun m!5789270 () Bool)

(assert (=> b!4803990 m!5789270))

(assert (=> b!4803990 m!5789270))

(declare-fun m!5789272 () Bool)

(assert (=> b!4803990 m!5789272))

(declare-fun m!5789274 () Bool)

(assert (=> b!4803991 m!5789274))

(assert (=> b!4803740 d!1538773))

(declare-fun d!1538775 () Bool)

(declare-fun hash!5036 (Hashable!6971 K!15917) (_ BitVec 64))

(assert (=> d!1538775 (= (hash!5034 hashF!1559 key!5896) (hash!5036 hashF!1559 key!5896))))

(declare-fun bs!1158597 () Bool)

(assert (= bs!1158597 d!1538775))

(declare-fun m!5789276 () Bool)

(assert (=> bs!1158597 m!5789276))

(assert (=> b!4803740 d!1538775))

(declare-fun d!1538777 () Bool)

(declare-fun isEmpty!29522 (Option!13207) Bool)

(assert (=> d!1538777 (= (isDefined!10348 (getPair!943 (apply!13046 lm!2473 lt!1958171) key!5896)) (not (isEmpty!29522 (getPair!943 (apply!13046 lm!2473 lt!1958171) key!5896))))))

(declare-fun bs!1158598 () Bool)

(assert (= bs!1158598 d!1538777))

(assert (=> bs!1158598 m!5788958))

(declare-fun m!5789278 () Bool)

(assert (=> bs!1158598 m!5789278))

(assert (=> b!4803734 d!1538777))

(declare-fun e!3000120 () Option!13207)

(declare-fun b!4804010 () Bool)

(assert (=> b!4804010 (= e!3000120 (getPair!943 (t!361922 (apply!13046 lm!2473 lt!1958171)) key!5896))))

(declare-fun b!4804011 () Bool)

(declare-fun e!3000122 () Option!13207)

(assert (=> b!4804011 (= e!3000122 e!3000120)))

(declare-fun c!818904 () Bool)

(assert (=> b!4804011 (= c!818904 (is-Cons!54348 (apply!13046 lm!2473 lt!1958171)))))

(declare-fun e!3000118 () Bool)

(declare-fun b!4804012 () Bool)

(assert (=> b!4804012 (= e!3000118 (not (containsKey!4057 (apply!13046 lm!2473 lt!1958171) key!5896)))))

(declare-fun b!4804013 () Bool)

(declare-fun e!3000119 () Bool)

(declare-fun e!3000121 () Bool)

(assert (=> b!4804013 (= e!3000119 e!3000121)))

(declare-fun res!2043618 () Bool)

(assert (=> b!4804013 (=> (not res!2043618) (not e!3000121))))

(declare-fun lt!1958387 () Option!13207)

(assert (=> b!4804013 (= res!2043618 (isDefined!10348 lt!1958387))))

(declare-fun b!4804014 () Bool)

(declare-fun contains!18013 (List!54472 tuple2!57052) Bool)

(assert (=> b!4804014 (= e!3000121 (contains!18013 (apply!13046 lm!2473 lt!1958171) (get!18571 lt!1958387)))))

(declare-fun b!4804009 () Bool)

(declare-fun res!2043620 () Bool)

(assert (=> b!4804009 (=> (not res!2043620) (not e!3000121))))

(assert (=> b!4804009 (= res!2043620 (= (_1!31820 (get!18571 lt!1958387)) key!5896))))

(declare-fun d!1538779 () Bool)

(assert (=> d!1538779 e!3000119))

(declare-fun res!2043619 () Bool)

(assert (=> d!1538779 (=> res!2043619 e!3000119)))

(assert (=> d!1538779 (= res!2043619 e!3000118)))

(declare-fun res!2043617 () Bool)

(assert (=> d!1538779 (=> (not res!2043617) (not e!3000118))))

(assert (=> d!1538779 (= res!2043617 (isEmpty!29522 lt!1958387))))

(assert (=> d!1538779 (= lt!1958387 e!3000122)))

(declare-fun c!818903 () Bool)

(assert (=> d!1538779 (= c!818903 (and (is-Cons!54348 (apply!13046 lm!2473 lt!1958171)) (= (_1!31820 (h!60780 (apply!13046 lm!2473 lt!1958171))) key!5896)))))

(assert (=> d!1538779 (noDuplicateKeys!2369 (apply!13046 lm!2473 lt!1958171))))

(assert (=> d!1538779 (= (getPair!943 (apply!13046 lm!2473 lt!1958171) key!5896) lt!1958387)))

(declare-fun b!4804015 () Bool)

(assert (=> b!4804015 (= e!3000120 None!13206)))

(declare-fun b!4804016 () Bool)

(assert (=> b!4804016 (= e!3000122 (Some!13206 (h!60780 (apply!13046 lm!2473 lt!1958171))))))

(assert (= (and d!1538779 c!818903) b!4804016))

(assert (= (and d!1538779 (not c!818903)) b!4804011))

(assert (= (and b!4804011 c!818904) b!4804010))

(assert (= (and b!4804011 (not c!818904)) b!4804015))

(assert (= (and d!1538779 res!2043617) b!4804012))

(assert (= (and d!1538779 (not res!2043619)) b!4804013))

(assert (= (and b!4804013 res!2043618) b!4804009))

(assert (= (and b!4804009 res!2043620) b!4804014))

(assert (=> b!4804012 m!5788956))

(declare-fun m!5789280 () Bool)

(assert (=> b!4804012 m!5789280))

(declare-fun m!5789282 () Bool)

(assert (=> b!4804009 m!5789282))

(declare-fun m!5789284 () Bool)

(assert (=> b!4804010 m!5789284))

(assert (=> b!4804014 m!5789282))

(assert (=> b!4804014 m!5788956))

(assert (=> b!4804014 m!5789282))

(declare-fun m!5789286 () Bool)

(assert (=> b!4804014 m!5789286))

(declare-fun m!5789288 () Bool)

(assert (=> d!1538779 m!5789288))

(assert (=> d!1538779 m!5788956))

(declare-fun m!5789290 () Bool)

(assert (=> d!1538779 m!5789290))

(declare-fun m!5789292 () Bool)

(assert (=> b!4804013 m!5789292))

(assert (=> b!4803734 d!1538779))

(declare-fun d!1538781 () Bool)

(declare-fun get!18572 (Option!13210) List!54472)

(assert (=> d!1538781 (= (apply!13046 lm!2473 lt!1958171) (get!18572 (getValueByKey!2413 (toList!7021 lm!2473) lt!1958171)))))

(declare-fun bs!1158599 () Bool)

(assert (= bs!1158599 d!1538781))

(assert (=> bs!1158599 m!5789228))

(assert (=> bs!1158599 m!5789228))

(declare-fun m!5789294 () Bool)

(assert (=> bs!1158599 m!5789294))

(assert (=> b!4803734 d!1538781))

(declare-fun bs!1158600 () Bool)

(declare-fun d!1538783 () Bool)

(assert (= bs!1158600 (and d!1538783 start!496100)))

(declare-fun lambda!233008 () Int)

(assert (=> bs!1158600 (not (= lambda!233008 lambda!232942))))

(declare-fun bs!1158601 () Bool)

(assert (= bs!1158601 (and d!1538783 d!1538767)))

(assert (=> bs!1158601 (not (= lambda!233008 lambda!233002))))

(declare-fun bs!1158602 () Bool)

(assert (= bs!1158602 (and d!1538783 d!1538761)))

(assert (=> bs!1158602 (not (= lambda!233008 lambda!232999))))

(declare-fun bs!1158603 () Bool)

(assert (= bs!1158603 (and d!1538783 d!1538759)))

(assert (=> bs!1158603 (not (= lambda!233008 lambda!232998))))

(declare-fun bs!1158604 () Bool)

(assert (= bs!1158604 (and d!1538783 d!1538769)))

(assert (=> bs!1158604 (not (= lambda!233008 lambda!233005))))

(declare-fun bs!1158605 () Bool)

(assert (= bs!1158605 (and d!1538783 d!1538747)))

(assert (=> bs!1158605 (not (= lambda!233008 lambda!232991))))

(declare-fun bs!1158606 () Bool)

(assert (= bs!1158606 (and d!1538783 d!1538749)))

(assert (=> bs!1158606 (not (= lambda!233008 lambda!232995))))

(assert (=> d!1538783 true))

(assert (=> d!1538783 (= (allKeysSameHashInMap!2376 lm!2473 hashF!1559) (forall!12350 (toList!7021 lm!2473) lambda!233008))))

(declare-fun bs!1158607 () Bool)

(assert (= bs!1158607 d!1538783))

(declare-fun m!5789296 () Bool)

(assert (=> bs!1158607 m!5789296))

(assert (=> b!4803733 d!1538783))

(declare-fun bs!1158621 () Bool)

(declare-fun d!1538785 () Bool)

(assert (= bs!1158621 (and d!1538785 start!496100)))

(declare-fun lambda!233015 () Int)

(assert (=> bs!1158621 (= lambda!233015 lambda!232942)))

(declare-fun bs!1158622 () Bool)

(assert (= bs!1158622 (and d!1538785 d!1538767)))

(assert (=> bs!1158622 (= lambda!233015 lambda!233002)))

(declare-fun bs!1158623 () Bool)

(assert (= bs!1158623 (and d!1538785 d!1538761)))

(assert (=> bs!1158623 (= lambda!233015 lambda!232999)))

(declare-fun bs!1158624 () Bool)

(assert (= bs!1158624 (and d!1538785 d!1538759)))

(assert (=> bs!1158624 (= lambda!233015 lambda!232998)))

(declare-fun bs!1158625 () Bool)

(assert (= bs!1158625 (and d!1538785 d!1538769)))

(assert (=> bs!1158625 (= lambda!233015 lambda!233005)))

(declare-fun bs!1158626 () Bool)

(assert (= bs!1158626 (and d!1538785 d!1538747)))

(assert (=> bs!1158626 (= lambda!233015 lambda!232991)))

(declare-fun bs!1158627 () Bool)

(assert (= bs!1158627 (and d!1538785 d!1538783)))

(assert (=> bs!1158627 (not (= lambda!233015 lambda!233008))))

(declare-fun bs!1158628 () Bool)

(assert (= bs!1158628 (and d!1538785 d!1538749)))

(assert (=> bs!1158628 (= lambda!233015 lambda!232995)))

(assert (=> d!1538785 (not (contains!18008 (extractMap!2498 (toList!7021 lt!1958175)) key!5896))))

(declare-fun lt!1958394 () Unit!140956)

(declare-fun choose!34753 (ListLongMap!5443 K!15917 Hashable!6971) Unit!140956)

(assert (=> d!1538785 (= lt!1958394 (choose!34753 lt!1958175 key!5896 hashF!1559))))

(assert (=> d!1538785 (forall!12350 (toList!7021 lt!1958175) lambda!233015)))

(assert (=> d!1538785 (= (lemmaHashNotInLongMapThenNotInGenerated!69 lt!1958175 key!5896 hashF!1559) lt!1958394)))

(declare-fun bs!1158629 () Bool)

(assert (= bs!1158629 d!1538785))

(assert (=> bs!1158629 m!5788916))

(assert (=> bs!1158629 m!5788916))

(assert (=> bs!1158629 m!5788950))

(declare-fun m!5789312 () Bool)

(assert (=> bs!1158629 m!5789312))

(declare-fun m!5789314 () Bool)

(assert (=> bs!1158629 m!5789314))

(assert (=> b!4803743 d!1538785))

(declare-fun b!4804021 () Bool)

(declare-fun e!3000125 () List!54476)

(assert (=> b!4804021 (= e!3000125 (keys!19878 (extractMap!2498 (toList!7021 lt!1958175))))))

(declare-fun b!4804022 () Bool)

(declare-fun e!3000129 () Unit!140956)

(declare-fun lt!1958402 () Unit!140956)

(assert (=> b!4804022 (= e!3000129 lt!1958402)))

(declare-fun lt!1958398 () Unit!140956)

(assert (=> b!4804022 (= lt!1958398 (lemmaContainsKeyImpliesGetValueByKeyDefined!2203 (toList!7022 (extractMap!2498 (toList!7021 lt!1958175))) key!5896))))

(assert (=> b!4804022 (isDefined!10350 (getValueByKey!2412 (toList!7022 (extractMap!2498 (toList!7021 lt!1958175))) key!5896))))

(declare-fun lt!1958400 () Unit!140956)

(assert (=> b!4804022 (= lt!1958400 lt!1958398)))

(assert (=> b!4804022 (= lt!1958402 (lemmaInListThenGetKeysListContains!1102 (toList!7022 (extractMap!2498 (toList!7021 lt!1958175))) key!5896))))

(declare-fun call!335487 () Bool)

(assert (=> b!4804022 call!335487))

(declare-fun b!4804023 () Bool)

(assert (=> b!4804023 (= e!3000125 (getKeysList!1107 (toList!7022 (extractMap!2498 (toList!7021 lt!1958175)))))))

(declare-fun bm!335482 () Bool)

(assert (=> bm!335482 (= call!335487 (contains!18012 e!3000125 key!5896))))

(declare-fun c!818907 () Bool)

(declare-fun c!818906 () Bool)

(assert (=> bm!335482 (= c!818907 c!818906)))

(declare-fun b!4804024 () Bool)

(declare-fun e!3000126 () Unit!140956)

(assert (=> b!4804024 (= e!3000129 e!3000126)))

(declare-fun c!818908 () Bool)

(assert (=> b!4804024 (= c!818908 call!335487)))

(declare-fun b!4804025 () Bool)

(declare-fun Unit!140980 () Unit!140956)

(assert (=> b!4804025 (= e!3000126 Unit!140980)))

(declare-fun b!4804026 () Bool)

(assert (=> b!4804026 false))

(declare-fun lt!1958399 () Unit!140956)

(declare-fun lt!1958401 () Unit!140956)

(assert (=> b!4804026 (= lt!1958399 lt!1958401)))

(assert (=> b!4804026 (containsKey!4059 (toList!7022 (extractMap!2498 (toList!7021 lt!1958175))) key!5896)))

(assert (=> b!4804026 (= lt!1958401 (lemmaInGetKeysListThenContainsKey!1107 (toList!7022 (extractMap!2498 (toList!7021 lt!1958175))) key!5896))))

(declare-fun Unit!140981 () Unit!140956)

(assert (=> b!4804026 (= e!3000126 Unit!140981)))

(declare-fun b!4804027 () Bool)

(declare-fun e!3000127 () Bool)

(assert (=> b!4804027 (= e!3000127 (not (contains!18012 (keys!19878 (extractMap!2498 (toList!7021 lt!1958175))) key!5896)))))

(declare-fun b!4804028 () Bool)

(declare-fun e!3000128 () Bool)

(assert (=> b!4804028 (= e!3000128 (contains!18012 (keys!19878 (extractMap!2498 (toList!7021 lt!1958175))) key!5896))))

(declare-fun b!4804029 () Bool)

(declare-fun e!3000124 () Bool)

(assert (=> b!4804029 (= e!3000124 e!3000128)))

(declare-fun res!2043622 () Bool)

(assert (=> b!4804029 (=> (not res!2043622) (not e!3000128))))

(assert (=> b!4804029 (= res!2043622 (isDefined!10350 (getValueByKey!2412 (toList!7022 (extractMap!2498 (toList!7021 lt!1958175))) key!5896)))))

(declare-fun d!1538793 () Bool)

(assert (=> d!1538793 e!3000124))

(declare-fun res!2043623 () Bool)

(assert (=> d!1538793 (=> res!2043623 e!3000124)))

(assert (=> d!1538793 (= res!2043623 e!3000127)))

(declare-fun res!2043621 () Bool)

(assert (=> d!1538793 (=> (not res!2043621) (not e!3000127))))

(declare-fun lt!1958395 () Bool)

(assert (=> d!1538793 (= res!2043621 (not lt!1958395))))

(declare-fun lt!1958396 () Bool)

(assert (=> d!1538793 (= lt!1958395 lt!1958396)))

(declare-fun lt!1958397 () Unit!140956)

(assert (=> d!1538793 (= lt!1958397 e!3000129)))

(assert (=> d!1538793 (= c!818906 lt!1958396)))

(assert (=> d!1538793 (= lt!1958396 (containsKey!4059 (toList!7022 (extractMap!2498 (toList!7021 lt!1958175))) key!5896))))

(assert (=> d!1538793 (= (contains!18008 (extractMap!2498 (toList!7021 lt!1958175)) key!5896) lt!1958395)))

(assert (= (and d!1538793 c!818906) b!4804022))

(assert (= (and d!1538793 (not c!818906)) b!4804024))

(assert (= (and b!4804024 c!818908) b!4804026))

(assert (= (and b!4804024 (not c!818908)) b!4804025))

(assert (= (or b!4804022 b!4804024) bm!335482))

(assert (= (and bm!335482 c!818907) b!4804023))

(assert (= (and bm!335482 (not c!818907)) b!4804021))

(assert (= (and d!1538793 res!2043621) b!4804027))

(assert (= (and d!1538793 (not res!2043623)) b!4804029))

(assert (= (and b!4804029 res!2043622) b!4804028))

(declare-fun m!5789316 () Bool)

(assert (=> b!4804026 m!5789316))

(declare-fun m!5789318 () Bool)

(assert (=> b!4804026 m!5789318))

(declare-fun m!5789320 () Bool)

(assert (=> b!4804022 m!5789320))

(declare-fun m!5789322 () Bool)

(assert (=> b!4804022 m!5789322))

(assert (=> b!4804022 m!5789322))

(declare-fun m!5789324 () Bool)

(assert (=> b!4804022 m!5789324))

(declare-fun m!5789326 () Bool)

(assert (=> b!4804022 m!5789326))

(assert (=> d!1538793 m!5789316))

(declare-fun m!5789328 () Bool)

(assert (=> bm!335482 m!5789328))

(assert (=> b!4804027 m!5788916))

(declare-fun m!5789330 () Bool)

(assert (=> b!4804027 m!5789330))

(assert (=> b!4804027 m!5789330))

(declare-fun m!5789332 () Bool)

(assert (=> b!4804027 m!5789332))

(assert (=> b!4804021 m!5788916))

(assert (=> b!4804021 m!5789330))

(declare-fun m!5789334 () Bool)

(assert (=> b!4804023 m!5789334))

(assert (=> b!4804029 m!5789322))

(assert (=> b!4804029 m!5789322))

(assert (=> b!4804029 m!5789324))

(assert (=> b!4804028 m!5788916))

(assert (=> b!4804028 m!5789330))

(assert (=> b!4804028 m!5789330))

(assert (=> b!4804028 m!5789332))

(assert (=> b!4803743 d!1538793))

(assert (=> b!4803743 d!1538761))

(declare-fun b!4804030 () Bool)

(declare-fun e!3000131 () List!54476)

(assert (=> b!4804030 (= e!3000131 (keys!19878 (extractMap!2498 (toList!7021 lm!2473))))))

(declare-fun b!4804031 () Bool)

(declare-fun e!3000135 () Unit!140956)

(declare-fun lt!1958410 () Unit!140956)

(assert (=> b!4804031 (= e!3000135 lt!1958410)))

(declare-fun lt!1958406 () Unit!140956)

(assert (=> b!4804031 (= lt!1958406 (lemmaContainsKeyImpliesGetValueByKeyDefined!2203 (toList!7022 (extractMap!2498 (toList!7021 lm!2473))) key!5896))))

(assert (=> b!4804031 (isDefined!10350 (getValueByKey!2412 (toList!7022 (extractMap!2498 (toList!7021 lm!2473))) key!5896))))

(declare-fun lt!1958408 () Unit!140956)

(assert (=> b!4804031 (= lt!1958408 lt!1958406)))

(assert (=> b!4804031 (= lt!1958410 (lemmaInListThenGetKeysListContains!1102 (toList!7022 (extractMap!2498 (toList!7021 lm!2473))) key!5896))))

(declare-fun call!335488 () Bool)

(assert (=> b!4804031 call!335488))

(declare-fun b!4804032 () Bool)

(assert (=> b!4804032 (= e!3000131 (getKeysList!1107 (toList!7022 (extractMap!2498 (toList!7021 lm!2473)))))))

(declare-fun bm!335483 () Bool)

(assert (=> bm!335483 (= call!335488 (contains!18012 e!3000131 key!5896))))

(declare-fun c!818910 () Bool)

(declare-fun c!818909 () Bool)

(assert (=> bm!335483 (= c!818910 c!818909)))

(declare-fun b!4804033 () Bool)

(declare-fun e!3000132 () Unit!140956)

(assert (=> b!4804033 (= e!3000135 e!3000132)))

(declare-fun c!818911 () Bool)

(assert (=> b!4804033 (= c!818911 call!335488)))

(declare-fun b!4804034 () Bool)

(declare-fun Unit!140982 () Unit!140956)

(assert (=> b!4804034 (= e!3000132 Unit!140982)))

(declare-fun b!4804035 () Bool)

(assert (=> b!4804035 false))

(declare-fun lt!1958407 () Unit!140956)

(declare-fun lt!1958409 () Unit!140956)

(assert (=> b!4804035 (= lt!1958407 lt!1958409)))

(assert (=> b!4804035 (containsKey!4059 (toList!7022 (extractMap!2498 (toList!7021 lm!2473))) key!5896)))

(assert (=> b!4804035 (= lt!1958409 (lemmaInGetKeysListThenContainsKey!1107 (toList!7022 (extractMap!2498 (toList!7021 lm!2473))) key!5896))))

(declare-fun Unit!140983 () Unit!140956)

(assert (=> b!4804035 (= e!3000132 Unit!140983)))

(declare-fun b!4804036 () Bool)

(declare-fun e!3000133 () Bool)

(assert (=> b!4804036 (= e!3000133 (not (contains!18012 (keys!19878 (extractMap!2498 (toList!7021 lm!2473))) key!5896)))))

(declare-fun b!4804037 () Bool)

(declare-fun e!3000134 () Bool)

(assert (=> b!4804037 (= e!3000134 (contains!18012 (keys!19878 (extractMap!2498 (toList!7021 lm!2473))) key!5896))))

(declare-fun b!4804038 () Bool)

(declare-fun e!3000130 () Bool)

(assert (=> b!4804038 (= e!3000130 e!3000134)))

(declare-fun res!2043625 () Bool)

(assert (=> b!4804038 (=> (not res!2043625) (not e!3000134))))

(assert (=> b!4804038 (= res!2043625 (isDefined!10350 (getValueByKey!2412 (toList!7022 (extractMap!2498 (toList!7021 lm!2473))) key!5896)))))

(declare-fun d!1538795 () Bool)

(assert (=> d!1538795 e!3000130))

(declare-fun res!2043626 () Bool)

(assert (=> d!1538795 (=> res!2043626 e!3000130)))

(assert (=> d!1538795 (= res!2043626 e!3000133)))

(declare-fun res!2043624 () Bool)

(assert (=> d!1538795 (=> (not res!2043624) (not e!3000133))))

(declare-fun lt!1958403 () Bool)

(assert (=> d!1538795 (= res!2043624 (not lt!1958403))))

(declare-fun lt!1958404 () Bool)

(assert (=> d!1538795 (= lt!1958403 lt!1958404)))

(declare-fun lt!1958405 () Unit!140956)

(assert (=> d!1538795 (= lt!1958405 e!3000135)))

(assert (=> d!1538795 (= c!818909 lt!1958404)))

(assert (=> d!1538795 (= lt!1958404 (containsKey!4059 (toList!7022 (extractMap!2498 (toList!7021 lm!2473))) key!5896))))

(assert (=> d!1538795 (= (contains!18008 (extractMap!2498 (toList!7021 lm!2473)) key!5896) lt!1958403)))

(assert (= (and d!1538795 c!818909) b!4804031))

(assert (= (and d!1538795 (not c!818909)) b!4804033))

(assert (= (and b!4804033 c!818911) b!4804035))

(assert (= (and b!4804033 (not c!818911)) b!4804034))

(assert (= (or b!4804031 b!4804033) bm!335483))

(assert (= (and bm!335483 c!818910) b!4804032))

(assert (= (and bm!335483 (not c!818910)) b!4804030))

(assert (= (and d!1538795 res!2043624) b!4804036))

(assert (= (and d!1538795 (not res!2043626)) b!4804038))

(assert (= (and b!4804038 res!2043625) b!4804037))

(declare-fun m!5789336 () Bool)

(assert (=> b!4804035 m!5789336))

(declare-fun m!5789338 () Bool)

(assert (=> b!4804035 m!5789338))

(declare-fun m!5789340 () Bool)

(assert (=> b!4804031 m!5789340))

(declare-fun m!5789342 () Bool)

(assert (=> b!4804031 m!5789342))

(assert (=> b!4804031 m!5789342))

(declare-fun m!5789344 () Bool)

(assert (=> b!4804031 m!5789344))

(declare-fun m!5789346 () Bool)

(assert (=> b!4804031 m!5789346))

(assert (=> d!1538795 m!5789336))

(declare-fun m!5789348 () Bool)

(assert (=> bm!335483 m!5789348))

(assert (=> b!4804036 m!5788952))

(declare-fun m!5789350 () Bool)

(assert (=> b!4804036 m!5789350))

(assert (=> b!4804036 m!5789350))

(declare-fun m!5789352 () Bool)

(assert (=> b!4804036 m!5789352))

(assert (=> b!4804030 m!5788952))

(assert (=> b!4804030 m!5789350))

(declare-fun m!5789354 () Bool)

(assert (=> b!4804032 m!5789354))

(assert (=> b!4804038 m!5789342))

(assert (=> b!4804038 m!5789342))

(assert (=> b!4804038 m!5789344))

(assert (=> b!4804037 m!5788952))

(assert (=> b!4804037 m!5789350))

(assert (=> b!4804037 m!5789350))

(assert (=> b!4804037 m!5789352))

(assert (=> b!4803738 d!1538795))

(declare-fun bs!1158630 () Bool)

(declare-fun d!1538797 () Bool)

(assert (= bs!1158630 (and d!1538797 start!496100)))

(declare-fun lambda!233016 () Int)

(assert (=> bs!1158630 (= lambda!233016 lambda!232942)))

(declare-fun bs!1158631 () Bool)

(assert (= bs!1158631 (and d!1538797 d!1538767)))

(assert (=> bs!1158631 (= lambda!233016 lambda!233002)))

(declare-fun bs!1158632 () Bool)

(assert (= bs!1158632 (and d!1538797 d!1538761)))

(assert (=> bs!1158632 (= lambda!233016 lambda!232999)))

(declare-fun bs!1158633 () Bool)

(assert (= bs!1158633 (and d!1538797 d!1538759)))

(assert (=> bs!1158633 (= lambda!233016 lambda!232998)))

(declare-fun bs!1158634 () Bool)

(assert (= bs!1158634 (and d!1538797 d!1538769)))

(assert (=> bs!1158634 (= lambda!233016 lambda!233005)))

(declare-fun bs!1158635 () Bool)

(assert (= bs!1158635 (and d!1538797 d!1538785)))

(assert (=> bs!1158635 (= lambda!233016 lambda!233015)))

(declare-fun bs!1158636 () Bool)

(assert (= bs!1158636 (and d!1538797 d!1538747)))

(assert (=> bs!1158636 (= lambda!233016 lambda!232991)))

(declare-fun bs!1158637 () Bool)

(assert (= bs!1158637 (and d!1538797 d!1538783)))

(assert (=> bs!1158637 (not (= lambda!233016 lambda!233008))))

(declare-fun bs!1158638 () Bool)

(assert (= bs!1158638 (and d!1538797 d!1538749)))

(assert (=> bs!1158638 (= lambda!233016 lambda!232995)))

(declare-fun lt!1958411 () ListMap!6493)

(assert (=> d!1538797 (invariantList!1761 (toList!7022 lt!1958411))))

(declare-fun e!3000136 () ListMap!6493)

(assert (=> d!1538797 (= lt!1958411 e!3000136)))

(declare-fun c!818912 () Bool)

(assert (=> d!1538797 (= c!818912 (is-Cons!54349 (toList!7021 lm!2473)))))

(assert (=> d!1538797 (forall!12350 (toList!7021 lm!2473) lambda!233016)))

(assert (=> d!1538797 (= (extractMap!2498 (toList!7021 lm!2473)) lt!1958411)))

(declare-fun b!4804039 () Bool)

(assert (=> b!4804039 (= e!3000136 (addToMapMapFromBucket!1738 (_2!31821 (h!60781 (toList!7021 lm!2473))) (extractMap!2498 (t!361923 (toList!7021 lm!2473)))))))

(declare-fun b!4804040 () Bool)

(assert (=> b!4804040 (= e!3000136 (ListMap!6494 Nil!54348))))

(assert (= (and d!1538797 c!818912) b!4804039))

(assert (= (and d!1538797 (not c!818912)) b!4804040))

(declare-fun m!5789356 () Bool)

(assert (=> d!1538797 m!5789356))

(declare-fun m!5789358 () Bool)

(assert (=> d!1538797 m!5789358))

(assert (=> b!4804039 m!5788918))

(assert (=> b!4804039 m!5788918))

(declare-fun m!5789360 () Bool)

(assert (=> b!4804039 m!5789360))

(assert (=> b!4803738 d!1538797))

(declare-fun b!4804045 () Bool)

(declare-fun e!3000139 () Bool)

(declare-fun tp!1358487 () Bool)

(declare-fun tp!1358488 () Bool)

(assert (=> b!4804045 (= e!3000139 (and tp!1358487 tp!1358488))))

(assert (=> b!4803739 (= tp!1358479 e!3000139)))

(assert (= (and b!4803739 (is-Cons!54349 (toList!7021 lm!2473))) b!4804045))

(declare-fun b_lambda!187927 () Bool)

(assert (= b_lambda!187925 (or start!496100 b_lambda!187927)))

(declare-fun bs!1158639 () Bool)

(declare-fun d!1538799 () Bool)

(assert (= bs!1158639 (and d!1538799 start!496100)))

(assert (=> bs!1158639 (= (dynLambda!22100 lambda!232942 (h!60781 (toList!7021 lm!2473))) (noDuplicateKeys!2369 (_2!31821 (h!60781 (toList!7021 lm!2473)))))))

(assert (=> bs!1158639 m!5788920))

(assert (=> b!4803896 d!1538799))

(push 1)

(assert (not bm!335477))

(assert (not b!4803931))

(assert (not b!4804037))

(assert (not b!4803938))

(assert (not b!4804039))

(assert (not d!1538747))

(assert (not b!4804010))

(assert (not b!4804013))

(assert (not bm!335483))

(assert (not b!4804026))

(assert (not b!4803965))

(assert (not b!4803990))

(assert (not b!4803884))

(assert (not b!4803802))

(assert (not b!4804032))

(assert (not bm!335475))

(assert (not b!4803939))

(assert (not b!4803932))

(assert (not d!1538761))

(assert (not b!4803942))

(assert (not d!1538757))

(assert (not b!4804023))

(assert (not d!1538703))

(assert (not b!4803796))

(assert (not b!4803883))

(assert (not b!4803881))

(assert (not b!4803903))

(assert (not b!4803983))

(assert (not d!1538793))

(assert (not b!4804028))

(assert (not d!1538755))

(assert (not d!1538743))

(assert (not b!4803897))

(assert (not b!4803929))

(assert (not b!4804009))

(assert (not d!1538775))

(assert (not b!4803944))

(assert (not b!4804012))

(assert (not b!4803967))

(assert (not d!1538701))

(assert (not bm!335478))

(assert (not b!4804045))

(assert (not b!4804035))

(assert (not b!4804036))

(assert (not bs!1158639))

(assert (not b!4804030))

(assert (not b_lambda!187927))

(assert (not d!1538783))

(assert (not d!1538779))

(assert (not b!4803933))

(assert (not bm!335476))

(assert (not b!4804014))

(assert (not d!1538745))

(assert (not bm!335482))

(assert (not d!1538749))

(assert (not b!4804029))

(assert (not b!4803795))

(assert (not b!4803880))

(assert (not b!4803937))

(assert (not d!1538763))

(assert (not b!4803797))

(assert (not d!1538797))

(assert tp_is_empty!33745)

(assert (not b!4804031))

(assert (not b!4803801))

(assert (not b!4803991))

(assert (not b!4803992))

(assert (not b!4803803))

(assert (not d!1538777))

(assert (not b!4804038))

(assert (not b!4803940))

(assert (not d!1538795))

(assert (not b!4803930))

(assert (not d!1538769))

(assert (not d!1538781))

(assert (not d!1538785))

(assert (not b!4803936))

(assert (not b!4804022))

(assert (not b!4803923))

(assert (not b!4804021))

(assert (not d!1538739))

(assert (not b!4804027))

(assert (not b!4803910))

(assert (not d!1538759))

(assert (not bm!335468))

(assert (not b!4803912))

(assert (not b!4803800))

(assert (not d!1538767))

(assert tp_is_empty!33747)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

