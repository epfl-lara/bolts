; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!469570 () Bool)

(assert start!469570)

(declare-fun b!4661387 () Bool)

(declare-fun e!2908711 () Bool)

(declare-datatypes ((K!13288 0))(
  ( (K!13289 (val!18901 Int)) )
))
(declare-datatypes ((V!13534 0))(
  ( (V!13535 (val!18902 Int)) )
))
(declare-datatypes ((tuple2!53066 0))(
  ( (tuple2!53067 (_1!29827 K!13288) (_2!29827 V!13534)) )
))
(declare-datatypes ((List!52062 0))(
  ( (Nil!51938) (Cons!51938 (h!58094 tuple2!53066) (t!359178 List!52062)) )
))
(declare-fun lt!1822817 () List!52062)

(declare-fun noDuplicateKeys!1655 (List!52062) Bool)

(assert (=> b!4661387 (= e!2908711 (noDuplicateKeys!1655 lt!1822817))))

(declare-datatypes ((tuple2!53068 0))(
  ( (tuple2!53069 (_1!29828 (_ BitVec 64)) (_2!29828 List!52062)) )
))
(declare-datatypes ((List!52063 0))(
  ( (Nil!51939) (Cons!51939 (h!58095 tuple2!53068) (t!359179 List!52063)) )
))
(declare-fun lt!1822831 () List!52063)

(declare-fun key!4968 () K!13288)

(declare-datatypes ((ListMap!4579 0))(
  ( (ListMap!4580 (toList!5239 List!52062)) )
))
(declare-fun contains!15100 (ListMap!4579 K!13288) Bool)

(declare-fun extractMap!1711 (List!52063) ListMap!4579)

(assert (=> b!4661387 (contains!15100 (extractMap!1711 lt!1822831) key!4968)))

(declare-datatypes ((Hashable!6052 0))(
  ( (HashableExt!6051 (__x!31755 Int)) )
))
(declare-fun hashF!1389 () Hashable!6052)

(declare-datatypes ((Unit!119282 0))(
  ( (Unit!119283) )
))
(declare-fun lt!1822822 () Unit!119282)

(declare-datatypes ((ListLongMap!3793 0))(
  ( (ListLongMap!3794 (toList!5240 List!52063)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!389 (ListLongMap!3793 K!13288 Hashable!6052) Unit!119282)

(assert (=> b!4661387 (= lt!1822822 (lemmaListContainsThenExtractedMapContains!389 (ListLongMap!3794 lt!1822831) key!4968 hashF!1389))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!52062)

(assert (=> b!4661387 (= lt!1822831 (Cons!51939 (tuple2!53069 hash!414 (t!359178 oldBucket!40)) Nil!51939))))

(declare-fun b!4661388 () Bool)

(declare-fun res!1960885 () Bool)

(declare-fun e!2908715 () Bool)

(assert (=> b!4661388 (=> (not res!1960885) (not e!2908715))))

(declare-fun newBucket!224 () List!52062)

(declare-fun allKeysSameHash!1509 (List!52062 (_ BitVec 64) Hashable!6052) Bool)

(assert (=> b!4661388 (= res!1960885 (allKeysSameHash!1509 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4661390 () Bool)

(declare-fun res!1960882 () Bool)

(declare-fun e!2908709 () Bool)

(assert (=> b!4661390 (=> (not res!1960882) (not e!2908709))))

(declare-fun removePairForKey!1278 (List!52062 K!13288) List!52062)

(assert (=> b!4661390 (= res!1960882 (= (removePairForKey!1278 oldBucket!40 key!4968) newBucket!224))))

(declare-fun tp_is_empty!29915 () Bool)

(declare-fun e!2908712 () Bool)

(declare-fun b!4661391 () Bool)

(declare-fun tp!1343473 () Bool)

(declare-fun tp_is_empty!29913 () Bool)

(assert (=> b!4661391 (= e!2908712 (and tp_is_empty!29913 tp_is_empty!29915 tp!1343473))))

(declare-fun b!4661392 () Bool)

(declare-fun e!2908714 () Bool)

(declare-fun lt!1822828 () ListMap!4579)

(assert (=> b!4661392 (= e!2908714 (= lt!1822828 (ListMap!4580 Nil!51938)))))

(declare-fun b!4661393 () Bool)

(declare-fun res!1960883 () Bool)

(assert (=> b!4661393 (=> (not res!1960883) (not e!2908709))))

(assert (=> b!4661393 (= res!1960883 (allKeysSameHash!1509 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4661394 () Bool)

(declare-fun e!2908713 () Bool)

(assert (=> b!4661394 (= e!2908713 e!2908715)))

(declare-fun res!1960880 () Bool)

(assert (=> b!4661394 (=> (not res!1960880) (not e!2908715))))

(declare-fun lt!1822821 () (_ BitVec 64))

(assert (=> b!4661394 (= res!1960880 (= lt!1822821 hash!414))))

(declare-fun hash!3804 (Hashable!6052 K!13288) (_ BitVec 64))

(assert (=> b!4661394 (= lt!1822821 (hash!3804 hashF!1389 key!4968))))

(declare-fun b!4661395 () Bool)

(declare-fun e!2908710 () Bool)

(declare-fun e!2908716 () Bool)

(assert (=> b!4661395 (= e!2908710 e!2908716)))

(declare-fun res!1960886 () Bool)

(assert (=> b!4661395 (=> res!1960886 e!2908716)))

(declare-fun containsKey!2757 (List!52062 K!13288) Bool)

(assert (=> b!4661395 (= res!1960886 (not (containsKey!2757 (t!359178 oldBucket!40) key!4968)))))

(assert (=> b!4661395 (containsKey!2757 oldBucket!40 key!4968)))

(declare-fun lt!1822825 () Unit!119282)

(declare-fun lemmaGetPairDefinedThenContainsKey!133 (List!52062 K!13288 Hashable!6052) Unit!119282)

(assert (=> b!4661395 (= lt!1822825 (lemmaGetPairDefinedThenContainsKey!133 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1822816 () List!52062)

(declare-datatypes ((Option!11855 0))(
  ( (None!11854) (Some!11854 (v!46160 tuple2!53066)) )
))
(declare-fun isDefined!9120 (Option!11855) Bool)

(declare-fun getPair!383 (List!52062 K!13288) Option!11855)

(assert (=> b!4661395 (isDefined!9120 (getPair!383 lt!1822816 key!4968))))

(declare-fun lt!1822818 () tuple2!53068)

(declare-fun lambda!200393 () Int)

(declare-fun lt!1822823 () Unit!119282)

(declare-fun lt!1822820 () List!52063)

(declare-fun forallContained!3257 (List!52063 Int tuple2!53068) Unit!119282)

(assert (=> b!4661395 (= lt!1822823 (forallContained!3257 lt!1822820 lambda!200393 lt!1822818))))

(declare-fun contains!15101 (List!52063 tuple2!53068) Bool)

(assert (=> b!4661395 (contains!15101 lt!1822820 lt!1822818)))

(assert (=> b!4661395 (= lt!1822818 (tuple2!53069 lt!1822821 lt!1822816))))

(declare-fun lt!1822826 () ListLongMap!3793)

(declare-fun lt!1822829 () Unit!119282)

(declare-fun lemmaGetValueImpliesTupleContained!188 (ListLongMap!3793 (_ BitVec 64) List!52062) Unit!119282)

(assert (=> b!4661395 (= lt!1822829 (lemmaGetValueImpliesTupleContained!188 lt!1822826 lt!1822821 lt!1822816))))

(declare-fun apply!12258 (ListLongMap!3793 (_ BitVec 64)) List!52062)

(assert (=> b!4661395 (= lt!1822816 (apply!12258 lt!1822826 lt!1822821))))

(declare-fun contains!15102 (ListLongMap!3793 (_ BitVec 64)) Bool)

(assert (=> b!4661395 (contains!15102 lt!1822826 lt!1822821)))

(declare-fun lt!1822819 () Unit!119282)

(declare-fun lemmaInGenMapThenLongMapContainsHash!589 (ListLongMap!3793 K!13288 Hashable!6052) Unit!119282)

(assert (=> b!4661395 (= lt!1822819 (lemmaInGenMapThenLongMapContainsHash!589 lt!1822826 key!4968 hashF!1389))))

(declare-fun lt!1822830 () Unit!119282)

(declare-fun lemmaInGenMapThenGetPairDefined!179 (ListLongMap!3793 K!13288 Hashable!6052) Unit!119282)

(assert (=> b!4661395 (= lt!1822830 (lemmaInGenMapThenGetPairDefined!179 lt!1822826 key!4968 hashF!1389))))

(assert (=> b!4661395 (= lt!1822826 (ListLongMap!3794 lt!1822820))))

(declare-fun b!4661396 () Bool)

(declare-fun res!1960879 () Bool)

(assert (=> b!4661396 (=> res!1960879 e!2908711)))

(declare-fun lt!1822824 () List!52062)

(assert (=> b!4661396 (= res!1960879 (not (= (removePairForKey!1278 (t!359178 oldBucket!40) key!4968) lt!1822824)))))

(declare-fun b!4661389 () Bool)

(assert (=> b!4661389 (= e!2908709 e!2908713)))

(declare-fun res!1960884 () Bool)

(assert (=> b!4661389 (=> (not res!1960884) (not e!2908713))))

(declare-fun lt!1822827 () ListMap!4579)

(assert (=> b!4661389 (= res!1960884 (contains!15100 lt!1822827 key!4968))))

(assert (=> b!4661389 (= lt!1822827 (extractMap!1711 lt!1822820))))

(assert (=> b!4661389 (= lt!1822820 (Cons!51939 (tuple2!53069 hash!414 oldBucket!40) Nil!51939))))

(declare-fun res!1960881 () Bool)

(assert (=> start!469570 (=> (not res!1960881) (not e!2908709))))

(assert (=> start!469570 (= res!1960881 (noDuplicateKeys!1655 oldBucket!40))))

(assert (=> start!469570 e!2908709))

(assert (=> start!469570 true))

(declare-fun e!2908717 () Bool)

(assert (=> start!469570 e!2908717))

(assert (=> start!469570 tp_is_empty!29913))

(assert (=> start!469570 e!2908712))

(declare-fun tp!1343472 () Bool)

(declare-fun b!4661397 () Bool)

(assert (=> b!4661397 (= e!2908717 (and tp_is_empty!29913 tp_is_empty!29915 tp!1343472))))

(declare-fun b!4661398 () Bool)

(assert (=> b!4661398 (= e!2908716 e!2908711)))

(declare-fun res!1960888 () Bool)

(assert (=> b!4661398 (=> res!1960888 e!2908711)))

(assert (=> b!4661398 (= res!1960888 (not (= (removePairForKey!1278 lt!1822817 key!4968) lt!1822824)))))

(declare-fun tail!8258 (List!52062) List!52062)

(assert (=> b!4661398 (= lt!1822824 (tail!8258 newBucket!224))))

(assert (=> b!4661398 (= lt!1822817 (tail!8258 oldBucket!40))))

(declare-fun b!4661399 () Bool)

(assert (=> b!4661399 (= e!2908715 (not e!2908710))))

(declare-fun res!1960889 () Bool)

(assert (=> b!4661399 (=> res!1960889 e!2908710)))

(assert (=> b!4661399 (= res!1960889 (or (and (is-Cons!51938 oldBucket!40) (= (_1!29827 (h!58094 oldBucket!40)) key!4968)) (not (is-Cons!51938 oldBucket!40)) (= (_1!29827 (h!58094 oldBucket!40)) key!4968)))))

(assert (=> b!4661399 e!2908714))

(declare-fun res!1960887 () Bool)

(assert (=> b!4661399 (=> (not res!1960887) (not e!2908714))))

(declare-fun addToMapMapFromBucket!1112 (List!52062 ListMap!4579) ListMap!4579)

(assert (=> b!4661399 (= res!1960887 (= lt!1822827 (addToMapMapFromBucket!1112 oldBucket!40 lt!1822828)))))

(assert (=> b!4661399 (= lt!1822828 (extractMap!1711 Nil!51939))))

(assert (=> b!4661399 true))

(declare-fun b!4661400 () Bool)

(declare-fun res!1960890 () Bool)

(assert (=> b!4661400 (=> (not res!1960890) (not e!2908709))))

(assert (=> b!4661400 (= res!1960890 (noDuplicateKeys!1655 newBucket!224))))

(assert (= (and start!469570 res!1960881) b!4661400))

(assert (= (and b!4661400 res!1960890) b!4661390))

(assert (= (and b!4661390 res!1960882) b!4661393))

(assert (= (and b!4661393 res!1960883) b!4661389))

(assert (= (and b!4661389 res!1960884) b!4661394))

(assert (= (and b!4661394 res!1960880) b!4661388))

(assert (= (and b!4661388 res!1960885) b!4661399))

(assert (= (and b!4661399 res!1960887) b!4661392))

(assert (= (and b!4661399 (not res!1960889)) b!4661395))

(assert (= (and b!4661395 (not res!1960886)) b!4661398))

(assert (= (and b!4661398 (not res!1960888)) b!4661396))

(assert (= (and b!4661396 (not res!1960879)) b!4661387))

(assert (= (and start!469570 (is-Cons!51938 oldBucket!40)) b!4661397))

(assert (= (and start!469570 (is-Cons!51938 newBucket!224)) b!4661391))

(declare-fun m!5544947 () Bool)

(assert (=> b!4661389 m!5544947))

(declare-fun m!5544949 () Bool)

(assert (=> b!4661389 m!5544949))

(declare-fun m!5544951 () Bool)

(assert (=> b!4661398 m!5544951))

(declare-fun m!5544953 () Bool)

(assert (=> b!4661398 m!5544953))

(declare-fun m!5544955 () Bool)

(assert (=> b!4661398 m!5544955))

(declare-fun m!5544957 () Bool)

(assert (=> b!4661387 m!5544957))

(declare-fun m!5544959 () Bool)

(assert (=> b!4661387 m!5544959))

(assert (=> b!4661387 m!5544959))

(declare-fun m!5544961 () Bool)

(assert (=> b!4661387 m!5544961))

(declare-fun m!5544963 () Bool)

(assert (=> b!4661387 m!5544963))

(declare-fun m!5544965 () Bool)

(assert (=> b!4661399 m!5544965))

(declare-fun m!5544967 () Bool)

(assert (=> b!4661399 m!5544967))

(declare-fun m!5544969 () Bool)

(assert (=> start!469570 m!5544969))

(declare-fun m!5544971 () Bool)

(assert (=> b!4661388 m!5544971))

(declare-fun m!5544973 () Bool)

(assert (=> b!4661393 m!5544973))

(declare-fun m!5544975 () Bool)

(assert (=> b!4661395 m!5544975))

(declare-fun m!5544977 () Bool)

(assert (=> b!4661395 m!5544977))

(declare-fun m!5544979 () Bool)

(assert (=> b!4661395 m!5544979))

(declare-fun m!5544981 () Bool)

(assert (=> b!4661395 m!5544981))

(declare-fun m!5544983 () Bool)

(assert (=> b!4661395 m!5544983))

(declare-fun m!5544985 () Bool)

(assert (=> b!4661395 m!5544985))

(declare-fun m!5544987 () Bool)

(assert (=> b!4661395 m!5544987))

(declare-fun m!5544989 () Bool)

(assert (=> b!4661395 m!5544989))

(declare-fun m!5544991 () Bool)

(assert (=> b!4661395 m!5544991))

(declare-fun m!5544993 () Bool)

(assert (=> b!4661395 m!5544993))

(declare-fun m!5544995 () Bool)

(assert (=> b!4661395 m!5544995))

(declare-fun m!5544997 () Bool)

(assert (=> b!4661395 m!5544997))

(assert (=> b!4661395 m!5544991))

(declare-fun m!5544999 () Bool)

(assert (=> b!4661390 m!5544999))

(declare-fun m!5545001 () Bool)

(assert (=> b!4661394 m!5545001))

(declare-fun m!5545003 () Bool)

(assert (=> b!4661396 m!5545003))

(declare-fun m!5545005 () Bool)

(assert (=> b!4661400 m!5545005))

(push 1)

(assert (not b!4661389))

(assert tp_is_empty!29915)

(assert (not b!4661393))

(assert (not b!4661388))

(assert (not start!469570))

(assert (not b!4661394))

(assert (not b!4661395))

(assert (not b!4661390))

(assert (not b!4661398))

(assert (not b!4661387))

(assert (not b!4661397))

(assert (not b!4661399))

(assert (not b!4661391))

(assert (not b!4661396))

(assert (not b!4661400))

(assert tp_is_empty!29913)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4661451 () Bool)

(declare-fun e!2908750 () List!52062)

(assert (=> b!4661451 (= e!2908750 (t!359178 (t!359178 oldBucket!40)))))

(declare-fun b!4661453 () Bool)

(declare-fun e!2908749 () List!52062)

(assert (=> b!4661453 (= e!2908749 (Cons!51938 (h!58094 (t!359178 oldBucket!40)) (removePairForKey!1278 (t!359178 (t!359178 oldBucket!40)) key!4968)))))

(declare-fun d!1480764 () Bool)

(declare-fun lt!1822882 () List!52062)

(assert (=> d!1480764 (not (containsKey!2757 lt!1822882 key!4968))))

(assert (=> d!1480764 (= lt!1822882 e!2908750)))

(declare-fun c!797916 () Bool)

(assert (=> d!1480764 (= c!797916 (and (is-Cons!51938 (t!359178 oldBucket!40)) (= (_1!29827 (h!58094 (t!359178 oldBucket!40))) key!4968)))))

(assert (=> d!1480764 (noDuplicateKeys!1655 (t!359178 oldBucket!40))))

(assert (=> d!1480764 (= (removePairForKey!1278 (t!359178 oldBucket!40) key!4968) lt!1822882)))

(declare-fun b!4661454 () Bool)

(assert (=> b!4661454 (= e!2908749 Nil!51938)))

(declare-fun b!4661452 () Bool)

(assert (=> b!4661452 (= e!2908750 e!2908749)))

(declare-fun c!797915 () Bool)

(assert (=> b!4661452 (= c!797915 (is-Cons!51938 (t!359178 oldBucket!40)))))

(assert (= (and d!1480764 c!797916) b!4661451))

(assert (= (and d!1480764 (not c!797916)) b!4661452))

(assert (= (and b!4661452 c!797915) b!4661453))

(assert (= (and b!4661452 (not c!797915)) b!4661454))

(declare-fun m!5545067 () Bool)

(assert (=> b!4661453 m!5545067))

(declare-fun m!5545069 () Bool)

(assert (=> d!1480764 m!5545069))

(declare-fun m!5545071 () Bool)

(assert (=> d!1480764 m!5545071))

(assert (=> b!4661396 d!1480764))

(declare-fun d!1480766 () Bool)

(declare-fun res!1960931 () Bool)

(declare-fun e!2908755 () Bool)

(assert (=> d!1480766 (=> res!1960931 e!2908755)))

(assert (=> d!1480766 (= res!1960931 (not (is-Cons!51938 lt!1822817)))))

(assert (=> d!1480766 (= (noDuplicateKeys!1655 lt!1822817) e!2908755)))

(declare-fun b!4661459 () Bool)

(declare-fun e!2908756 () Bool)

(assert (=> b!4661459 (= e!2908755 e!2908756)))

(declare-fun res!1960932 () Bool)

(assert (=> b!4661459 (=> (not res!1960932) (not e!2908756))))

(assert (=> b!4661459 (= res!1960932 (not (containsKey!2757 (t!359178 lt!1822817) (_1!29827 (h!58094 lt!1822817)))))))

(declare-fun b!4661460 () Bool)

(assert (=> b!4661460 (= e!2908756 (noDuplicateKeys!1655 (t!359178 lt!1822817)))))

(assert (= (and d!1480766 (not res!1960931)) b!4661459))

(assert (= (and b!4661459 res!1960932) b!4661460))

(declare-fun m!5545073 () Bool)

(assert (=> b!4661459 m!5545073))

(declare-fun m!5545075 () Bool)

(assert (=> b!4661460 m!5545075))

(assert (=> b!4661387 d!1480766))

(declare-fun bm!325659 () Bool)

(declare-fun call!325664 () Bool)

(declare-datatypes ((List!52066 0))(
  ( (Nil!51942) (Cons!51942 (h!58100 K!13288) (t!359182 List!52066)) )
))
(declare-fun e!2908773 () List!52066)

(declare-fun contains!15106 (List!52066 K!13288) Bool)

(assert (=> bm!325659 (= call!325664 (contains!15106 e!2908773 key!4968))))

(declare-fun c!797923 () Bool)

(declare-fun c!797925 () Bool)

(assert (=> bm!325659 (= c!797923 c!797925)))

(declare-fun b!4661480 () Bool)

(declare-fun e!2908774 () Bool)

(declare-fun e!2908771 () Bool)

(assert (=> b!4661480 (= e!2908774 e!2908771)))

(declare-fun res!1960941 () Bool)

(assert (=> b!4661480 (=> (not res!1960941) (not e!2908771))))

(declare-datatypes ((Option!11857 0))(
  ( (None!11856) (Some!11856 (v!46166 V!13534)) )
))
(declare-fun isDefined!9122 (Option!11857) Bool)

(declare-fun getValueByKey!1631 (List!52062 K!13288) Option!11857)

(assert (=> b!4661480 (= res!1960941 (isDefined!9122 (getValueByKey!1631 (toList!5239 (extractMap!1711 lt!1822831)) key!4968)))))

(declare-fun b!4661481 () Bool)

(declare-fun e!2908772 () Unit!119282)

(declare-fun e!2908769 () Unit!119282)

(assert (=> b!4661481 (= e!2908772 e!2908769)))

(declare-fun c!797924 () Bool)

(assert (=> b!4661481 (= c!797924 call!325664)))

(declare-fun b!4661482 () Bool)

(assert (=> b!4661482 false))

(declare-fun lt!1822899 () Unit!119282)

(declare-fun lt!1822903 () Unit!119282)

(assert (=> b!4661482 (= lt!1822899 lt!1822903)))

(declare-fun containsKey!2759 (List!52062 K!13288) Bool)

(assert (=> b!4661482 (containsKey!2759 (toList!5239 (extractMap!1711 lt!1822831)) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!759 (List!52062 K!13288) Unit!119282)

(assert (=> b!4661482 (= lt!1822903 (lemmaInGetKeysListThenContainsKey!759 (toList!5239 (extractMap!1711 lt!1822831)) key!4968))))

(declare-fun Unit!119286 () Unit!119282)

(assert (=> b!4661482 (= e!2908769 Unit!119286)))

(declare-fun b!4661483 () Bool)

(declare-fun getKeysList!760 (List!52062) List!52066)

(assert (=> b!4661483 (= e!2908773 (getKeysList!760 (toList!5239 (extractMap!1711 lt!1822831))))))

(declare-fun b!4661484 () Bool)

(declare-fun lt!1822905 () Unit!119282)

(assert (=> b!4661484 (= e!2908772 lt!1822905)))

(declare-fun lt!1822902 () Unit!119282)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1533 (List!52062 K!13288) Unit!119282)

(assert (=> b!4661484 (= lt!1822902 (lemmaContainsKeyImpliesGetValueByKeyDefined!1533 (toList!5239 (extractMap!1711 lt!1822831)) key!4968))))

(assert (=> b!4661484 (isDefined!9122 (getValueByKey!1631 (toList!5239 (extractMap!1711 lt!1822831)) key!4968))))

(declare-fun lt!1822906 () Unit!119282)

(assert (=> b!4661484 (= lt!1822906 lt!1822902)))

(declare-fun lemmaInListThenGetKeysListContains!755 (List!52062 K!13288) Unit!119282)

(assert (=> b!4661484 (= lt!1822905 (lemmaInListThenGetKeysListContains!755 (toList!5239 (extractMap!1711 lt!1822831)) key!4968))))

(assert (=> b!4661484 call!325664))

(declare-fun b!4661485 () Bool)

(declare-fun keys!18415 (ListMap!4579) List!52066)

(assert (=> b!4661485 (= e!2908771 (contains!15106 (keys!18415 (extractMap!1711 lt!1822831)) key!4968))))

(declare-fun d!1480768 () Bool)

(assert (=> d!1480768 e!2908774))

(declare-fun res!1960939 () Bool)

(assert (=> d!1480768 (=> res!1960939 e!2908774)))

(declare-fun e!2908770 () Bool)

(assert (=> d!1480768 (= res!1960939 e!2908770)))

(declare-fun res!1960940 () Bool)

(assert (=> d!1480768 (=> (not res!1960940) (not e!2908770))))

(declare-fun lt!1822904 () Bool)

(assert (=> d!1480768 (= res!1960940 (not lt!1822904))))

(declare-fun lt!1822900 () Bool)

(assert (=> d!1480768 (= lt!1822904 lt!1822900)))

(declare-fun lt!1822901 () Unit!119282)

(assert (=> d!1480768 (= lt!1822901 e!2908772)))

(assert (=> d!1480768 (= c!797925 lt!1822900)))

(assert (=> d!1480768 (= lt!1822900 (containsKey!2759 (toList!5239 (extractMap!1711 lt!1822831)) key!4968))))

(assert (=> d!1480768 (= (contains!15100 (extractMap!1711 lt!1822831) key!4968) lt!1822904)))

(declare-fun b!4661479 () Bool)

(declare-fun Unit!119287 () Unit!119282)

(assert (=> b!4661479 (= e!2908769 Unit!119287)))

(declare-fun b!4661486 () Bool)

(assert (=> b!4661486 (= e!2908770 (not (contains!15106 (keys!18415 (extractMap!1711 lt!1822831)) key!4968)))))

(declare-fun b!4661487 () Bool)

(assert (=> b!4661487 (= e!2908773 (keys!18415 (extractMap!1711 lt!1822831)))))

(assert (= (and d!1480768 c!797925) b!4661484))

(assert (= (and d!1480768 (not c!797925)) b!4661481))

(assert (= (and b!4661481 c!797924) b!4661482))

(assert (= (and b!4661481 (not c!797924)) b!4661479))

(assert (= (or b!4661484 b!4661481) bm!325659))

(assert (= (and bm!325659 c!797923) b!4661483))

(assert (= (and bm!325659 (not c!797923)) b!4661487))

(assert (= (and d!1480768 res!1960940) b!4661486))

(assert (= (and d!1480768 (not res!1960939)) b!4661480))

(assert (= (and b!4661480 res!1960941) b!4661485))

(declare-fun m!5545077 () Bool)

(assert (=> b!4661483 m!5545077))

(assert (=> b!4661487 m!5544959))

(declare-fun m!5545079 () Bool)

(assert (=> b!4661487 m!5545079))

(declare-fun m!5545081 () Bool)

(assert (=> b!4661482 m!5545081))

(declare-fun m!5545083 () Bool)

(assert (=> b!4661482 m!5545083))

(declare-fun m!5545085 () Bool)

(assert (=> b!4661484 m!5545085))

(declare-fun m!5545087 () Bool)

(assert (=> b!4661484 m!5545087))

(assert (=> b!4661484 m!5545087))

(declare-fun m!5545089 () Bool)

(assert (=> b!4661484 m!5545089))

(declare-fun m!5545091 () Bool)

(assert (=> b!4661484 m!5545091))

(declare-fun m!5545093 () Bool)

(assert (=> bm!325659 m!5545093))

(assert (=> b!4661480 m!5545087))

(assert (=> b!4661480 m!5545087))

(assert (=> b!4661480 m!5545089))

(assert (=> b!4661485 m!5544959))

(assert (=> b!4661485 m!5545079))

(assert (=> b!4661485 m!5545079))

(declare-fun m!5545095 () Bool)

(assert (=> b!4661485 m!5545095))

(assert (=> d!1480768 m!5545081))

(assert (=> b!4661486 m!5544959))

(assert (=> b!4661486 m!5545079))

(assert (=> b!4661486 m!5545079))

(assert (=> b!4661486 m!5545095))

(assert (=> b!4661387 d!1480768))

(declare-fun bs!1068673 () Bool)

(declare-fun d!1480770 () Bool)

(assert (= bs!1068673 (and d!1480770 b!4661395)))

(declare-fun lambda!200399 () Int)

(assert (=> bs!1068673 (= lambda!200399 lambda!200393)))

(declare-fun lt!1822909 () ListMap!4579)

(declare-fun invariantList!1309 (List!52062) Bool)

(assert (=> d!1480770 (invariantList!1309 (toList!5239 lt!1822909))))

(declare-fun e!2908777 () ListMap!4579)

(assert (=> d!1480770 (= lt!1822909 e!2908777)))

(declare-fun c!797928 () Bool)

(assert (=> d!1480770 (= c!797928 (is-Cons!51939 lt!1822831))))

(declare-fun forall!11057 (List!52063 Int) Bool)

(assert (=> d!1480770 (forall!11057 lt!1822831 lambda!200399)))

(assert (=> d!1480770 (= (extractMap!1711 lt!1822831) lt!1822909)))

(declare-fun b!4661492 () Bool)

(assert (=> b!4661492 (= e!2908777 (addToMapMapFromBucket!1112 (_2!29828 (h!58095 lt!1822831)) (extractMap!1711 (t!359179 lt!1822831))))))

(declare-fun b!4661493 () Bool)

(assert (=> b!4661493 (= e!2908777 (ListMap!4580 Nil!51938))))

(assert (= (and d!1480770 c!797928) b!4661492))

(assert (= (and d!1480770 (not c!797928)) b!4661493))

(declare-fun m!5545097 () Bool)

(assert (=> d!1480770 m!5545097))

(declare-fun m!5545099 () Bool)

(assert (=> d!1480770 m!5545099))

(declare-fun m!5545101 () Bool)

(assert (=> b!4661492 m!5545101))

(assert (=> b!4661492 m!5545101))

(declare-fun m!5545103 () Bool)

(assert (=> b!4661492 m!5545103))

(assert (=> b!4661387 d!1480770))

(declare-fun bs!1068674 () Bool)

(declare-fun d!1480774 () Bool)

(assert (= bs!1068674 (and d!1480774 b!4661395)))

(declare-fun lambda!200402 () Int)

(assert (=> bs!1068674 (= lambda!200402 lambda!200393)))

(declare-fun bs!1068675 () Bool)

(assert (= bs!1068675 (and d!1480774 d!1480770)))

(assert (=> bs!1068675 (= lambda!200402 lambda!200399)))

(assert (=> d!1480774 (contains!15100 (extractMap!1711 (toList!5240 (ListLongMap!3794 lt!1822831))) key!4968)))

(declare-fun lt!1822912 () Unit!119282)

(declare-fun choose!32117 (ListLongMap!3793 K!13288 Hashable!6052) Unit!119282)

(assert (=> d!1480774 (= lt!1822912 (choose!32117 (ListLongMap!3794 lt!1822831) key!4968 hashF!1389))))

(assert (=> d!1480774 (forall!11057 (toList!5240 (ListLongMap!3794 lt!1822831)) lambda!200402)))

(assert (=> d!1480774 (= (lemmaListContainsThenExtractedMapContains!389 (ListLongMap!3794 lt!1822831) key!4968 hashF!1389) lt!1822912)))

(declare-fun bs!1068676 () Bool)

(assert (= bs!1068676 d!1480774))

(declare-fun m!5545105 () Bool)

(assert (=> bs!1068676 m!5545105))

(assert (=> bs!1068676 m!5545105))

(declare-fun m!5545107 () Bool)

(assert (=> bs!1068676 m!5545107))

(declare-fun m!5545109 () Bool)

(assert (=> bs!1068676 m!5545109))

(declare-fun m!5545111 () Bool)

(assert (=> bs!1068676 m!5545111))

(assert (=> b!4661387 d!1480774))

(declare-fun d!1480776 () Bool)

(assert (=> d!1480776 true))

(assert (=> d!1480776 true))

(declare-fun lambda!200405 () Int)

(declare-fun forall!11058 (List!52062 Int) Bool)

(assert (=> d!1480776 (= (allKeysSameHash!1509 oldBucket!40 hash!414 hashF!1389) (forall!11058 oldBucket!40 lambda!200405))))

(declare-fun bs!1068677 () Bool)

(assert (= bs!1068677 d!1480776))

(declare-fun m!5545113 () Bool)

(assert (=> bs!1068677 m!5545113))

(assert (=> b!4661393 d!1480776))

(declare-fun d!1480778 () Bool)

(declare-fun hash!3806 (Hashable!6052 K!13288) (_ BitVec 64))

(assert (=> d!1480778 (= (hash!3804 hashF!1389 key!4968) (hash!3806 hashF!1389 key!4968))))

(declare-fun bs!1068678 () Bool)

(assert (= bs!1068678 d!1480778))

(declare-fun m!5545115 () Bool)

(assert (=> bs!1068678 m!5545115))

(assert (=> b!4661394 d!1480778))

(declare-fun bs!1068679 () Bool)

(declare-fun d!1480780 () Bool)

(assert (= bs!1068679 (and d!1480780 b!4661395)))

(declare-fun lambda!200412 () Int)

(assert (=> bs!1068679 (= lambda!200412 lambda!200393)))

(declare-fun bs!1068680 () Bool)

(assert (= bs!1068680 (and d!1480780 d!1480770)))

(assert (=> bs!1068680 (= lambda!200412 lambda!200399)))

(declare-fun bs!1068681 () Bool)

(assert (= bs!1068681 (and d!1480780 d!1480774)))

(assert (=> bs!1068681 (= lambda!200412 lambda!200402)))

(declare-fun b!4661534 () Bool)

(declare-fun res!1960959 () Bool)

(declare-fun e!2908800 () Bool)

(assert (=> b!4661534 (=> (not res!1960959) (not e!2908800))))

(assert (=> b!4661534 (= res!1960959 (contains!15100 (extractMap!1711 (toList!5240 lt!1822826)) key!4968))))

(declare-fun b!4661535 () Bool)

(assert (=> b!4661535 (= e!2908800 (isDefined!9120 (getPair!383 (apply!12258 lt!1822826 (hash!3804 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1822959 () Unit!119282)

(assert (=> b!4661535 (= lt!1822959 (forallContained!3257 (toList!5240 lt!1822826) lambda!200412 (tuple2!53069 (hash!3804 hashF!1389 key!4968) (apply!12258 lt!1822826 (hash!3804 hashF!1389 key!4968)))))))

(declare-fun lt!1822958 () Unit!119282)

(declare-fun lt!1822960 () Unit!119282)

(assert (=> b!4661535 (= lt!1822958 lt!1822960)))

(declare-fun lt!1822955 () (_ BitVec 64))

(declare-fun lt!1822954 () List!52062)

(assert (=> b!4661535 (contains!15101 (toList!5240 lt!1822826) (tuple2!53069 lt!1822955 lt!1822954))))

(assert (=> b!4661535 (= lt!1822960 (lemmaGetValueImpliesTupleContained!188 lt!1822826 lt!1822955 lt!1822954))))

(declare-fun e!2908801 () Bool)

(assert (=> b!4661535 e!2908801))

(declare-fun res!1960960 () Bool)

(assert (=> b!4661535 (=> (not res!1960960) (not e!2908801))))

(assert (=> b!4661535 (= res!1960960 (contains!15102 lt!1822826 lt!1822955))))

(assert (=> b!4661535 (= lt!1822954 (apply!12258 lt!1822826 (hash!3804 hashF!1389 key!4968)))))

(assert (=> b!4661535 (= lt!1822955 (hash!3804 hashF!1389 key!4968))))

(declare-fun lt!1822956 () Unit!119282)

(declare-fun lt!1822953 () Unit!119282)

(assert (=> b!4661535 (= lt!1822956 lt!1822953)))

(assert (=> b!4661535 (contains!15102 lt!1822826 (hash!3804 hashF!1389 key!4968))))

(assert (=> b!4661535 (= lt!1822953 (lemmaInGenMapThenLongMapContainsHash!589 lt!1822826 key!4968 hashF!1389))))

(declare-fun b!4661533 () Bool)

(declare-fun res!1960961 () Bool)

(assert (=> b!4661533 (=> (not res!1960961) (not e!2908800))))

(declare-fun allKeysSameHashInMap!1611 (ListLongMap!3793 Hashable!6052) Bool)

(assert (=> b!4661533 (= res!1960961 (allKeysSameHashInMap!1611 lt!1822826 hashF!1389))))

(declare-fun b!4661536 () Bool)

(declare-datatypes ((Option!11858 0))(
  ( (None!11857) (Some!11857 (v!46167 List!52062)) )
))
(declare-fun getValueByKey!1632 (List!52063 (_ BitVec 64)) Option!11858)

(assert (=> b!4661536 (= e!2908801 (= (getValueByKey!1632 (toList!5240 lt!1822826) lt!1822955) (Some!11857 lt!1822954)))))

(assert (=> d!1480780 e!2908800))

(declare-fun res!1960962 () Bool)

(assert (=> d!1480780 (=> (not res!1960962) (not e!2908800))))

(assert (=> d!1480780 (= res!1960962 (forall!11057 (toList!5240 lt!1822826) lambda!200412))))

(declare-fun lt!1822957 () Unit!119282)

(declare-fun choose!32118 (ListLongMap!3793 K!13288 Hashable!6052) Unit!119282)

(assert (=> d!1480780 (= lt!1822957 (choose!32118 lt!1822826 key!4968 hashF!1389))))

(assert (=> d!1480780 (forall!11057 (toList!5240 lt!1822826) lambda!200412)))

(assert (=> d!1480780 (= (lemmaInGenMapThenGetPairDefined!179 lt!1822826 key!4968 hashF!1389) lt!1822957)))

(assert (= (and d!1480780 res!1960962) b!4661533))

(assert (= (and b!4661533 res!1960961) b!4661534))

(assert (= (and b!4661534 res!1960959) b!4661535))

(assert (= (and b!4661535 res!1960960) b!4661536))

(declare-fun m!5545137 () Bool)

(assert (=> b!4661536 m!5545137))

(assert (=> b!4661535 m!5545001))

(declare-fun m!5545139 () Bool)

(assert (=> b!4661535 m!5545139))

(declare-fun m!5545141 () Bool)

(assert (=> b!4661535 m!5545141))

(declare-fun m!5545143 () Bool)

(assert (=> b!4661535 m!5545143))

(assert (=> b!4661535 m!5545001))

(declare-fun m!5545145 () Bool)

(assert (=> b!4661535 m!5545145))

(assert (=> b!4661535 m!5545001))

(declare-fun m!5545147 () Bool)

(assert (=> b!4661535 m!5545147))

(assert (=> b!4661535 m!5545145))

(assert (=> b!4661535 m!5545139))

(assert (=> b!4661535 m!5544979))

(declare-fun m!5545149 () Bool)

(assert (=> b!4661535 m!5545149))

(declare-fun m!5545151 () Bool)

(assert (=> b!4661535 m!5545151))

(declare-fun m!5545153 () Bool)

(assert (=> b!4661535 m!5545153))

(declare-fun m!5545155 () Bool)

(assert (=> b!4661533 m!5545155))

(declare-fun m!5545157 () Bool)

(assert (=> d!1480780 m!5545157))

(declare-fun m!5545159 () Bool)

(assert (=> d!1480780 m!5545159))

(assert (=> d!1480780 m!5545157))

(declare-fun m!5545161 () Bool)

(assert (=> b!4661534 m!5545161))

(assert (=> b!4661534 m!5545161))

(declare-fun m!5545163 () Bool)

(assert (=> b!4661534 m!5545163))

(assert (=> b!4661395 d!1480780))

(declare-fun d!1480784 () Bool)

(assert (=> d!1480784 (contains!15101 (toList!5240 lt!1822826) (tuple2!53069 lt!1822821 lt!1822816))))

(declare-fun lt!1822963 () Unit!119282)

(declare-fun choose!32119 (ListLongMap!3793 (_ BitVec 64) List!52062) Unit!119282)

(assert (=> d!1480784 (= lt!1822963 (choose!32119 lt!1822826 lt!1822821 lt!1822816))))

(assert (=> d!1480784 (contains!15102 lt!1822826 lt!1822821)))

(assert (=> d!1480784 (= (lemmaGetValueImpliesTupleContained!188 lt!1822826 lt!1822821 lt!1822816) lt!1822963)))

(declare-fun bs!1068682 () Bool)

(assert (= bs!1068682 d!1480784))

(declare-fun m!5545165 () Bool)

(assert (=> bs!1068682 m!5545165))

(declare-fun m!5545167 () Bool)

(assert (=> bs!1068682 m!5545167))

(assert (=> bs!1068682 m!5544997))

(assert (=> b!4661395 d!1480784))

(declare-fun d!1480786 () Bool)

(declare-fun e!2908806 () Bool)

(assert (=> d!1480786 e!2908806))

(declare-fun res!1960965 () Bool)

(assert (=> d!1480786 (=> res!1960965 e!2908806)))

(declare-fun lt!1822975 () Bool)

(assert (=> d!1480786 (= res!1960965 (not lt!1822975))))

(declare-fun lt!1822973 () Bool)

(assert (=> d!1480786 (= lt!1822975 lt!1822973)))

(declare-fun lt!1822972 () Unit!119282)

(declare-fun e!2908807 () Unit!119282)

(assert (=> d!1480786 (= lt!1822972 e!2908807)))

(declare-fun c!797940 () Bool)

(assert (=> d!1480786 (= c!797940 lt!1822973)))

(declare-fun containsKey!2760 (List!52063 (_ BitVec 64)) Bool)

(assert (=> d!1480786 (= lt!1822973 (containsKey!2760 (toList!5240 lt!1822826) lt!1822821))))

(assert (=> d!1480786 (= (contains!15102 lt!1822826 lt!1822821) lt!1822975)))

(declare-fun b!4661544 () Bool)

(declare-fun lt!1822974 () Unit!119282)

(assert (=> b!4661544 (= e!2908807 lt!1822974)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1534 (List!52063 (_ BitVec 64)) Unit!119282)

(assert (=> b!4661544 (= lt!1822974 (lemmaContainsKeyImpliesGetValueByKeyDefined!1534 (toList!5240 lt!1822826) lt!1822821))))

(declare-fun isDefined!9123 (Option!11858) Bool)

(assert (=> b!4661544 (isDefined!9123 (getValueByKey!1632 (toList!5240 lt!1822826) lt!1822821))))

(declare-fun b!4661545 () Bool)

(declare-fun Unit!119288 () Unit!119282)

(assert (=> b!4661545 (= e!2908807 Unit!119288)))

(declare-fun b!4661546 () Bool)

(assert (=> b!4661546 (= e!2908806 (isDefined!9123 (getValueByKey!1632 (toList!5240 lt!1822826) lt!1822821)))))

(assert (= (and d!1480786 c!797940) b!4661544))

(assert (= (and d!1480786 (not c!797940)) b!4661545))

(assert (= (and d!1480786 (not res!1960965)) b!4661546))

(declare-fun m!5545169 () Bool)

(assert (=> d!1480786 m!5545169))

(declare-fun m!5545171 () Bool)

(assert (=> b!4661544 m!5545171))

(declare-fun m!5545173 () Bool)

(assert (=> b!4661544 m!5545173))

(assert (=> b!4661544 m!5545173))

(declare-fun m!5545175 () Bool)

(assert (=> b!4661544 m!5545175))

(assert (=> b!4661546 m!5545173))

(assert (=> b!4661546 m!5545173))

(assert (=> b!4661546 m!5545175))

(assert (=> b!4661395 d!1480786))

(declare-fun d!1480788 () Bool)

(declare-fun res!1960970 () Bool)

(declare-fun e!2908812 () Bool)

(assert (=> d!1480788 (=> res!1960970 e!2908812)))

(assert (=> d!1480788 (= res!1960970 (and (is-Cons!51938 (t!359178 oldBucket!40)) (= (_1!29827 (h!58094 (t!359178 oldBucket!40))) key!4968)))))

(assert (=> d!1480788 (= (containsKey!2757 (t!359178 oldBucket!40) key!4968) e!2908812)))

(declare-fun b!4661551 () Bool)

(declare-fun e!2908813 () Bool)

(assert (=> b!4661551 (= e!2908812 e!2908813)))

(declare-fun res!1960971 () Bool)

(assert (=> b!4661551 (=> (not res!1960971) (not e!2908813))))

(assert (=> b!4661551 (= res!1960971 (is-Cons!51938 (t!359178 oldBucket!40)))))

(declare-fun b!4661552 () Bool)

(assert (=> b!4661552 (= e!2908813 (containsKey!2757 (t!359178 (t!359178 oldBucket!40)) key!4968))))

(assert (= (and d!1480788 (not res!1960970)) b!4661551))

(assert (= (and b!4661551 res!1960971) b!4661552))

(declare-fun m!5545177 () Bool)

(assert (=> b!4661552 m!5545177))

(assert (=> b!4661395 d!1480788))

(declare-fun d!1480790 () Bool)

(declare-fun isEmpty!29028 (Option!11855) Bool)

(assert (=> d!1480790 (= (isDefined!9120 (getPair!383 lt!1822816 key!4968)) (not (isEmpty!29028 (getPair!383 lt!1822816 key!4968))))))

(declare-fun bs!1068683 () Bool)

(assert (= bs!1068683 d!1480790))

(assert (=> bs!1068683 m!5544991))

(declare-fun m!5545179 () Bool)

(assert (=> bs!1068683 m!5545179))

(assert (=> b!4661395 d!1480790))

(declare-fun bs!1068684 () Bool)

(declare-fun d!1480792 () Bool)

(assert (= bs!1068684 (and d!1480792 b!4661395)))

(declare-fun lambda!200418 () Int)

(assert (=> bs!1068684 (= lambda!200418 lambda!200393)))

(declare-fun bs!1068686 () Bool)

(assert (= bs!1068686 (and d!1480792 d!1480770)))

(assert (=> bs!1068686 (= lambda!200418 lambda!200399)))

(declare-fun bs!1068687 () Bool)

(assert (= bs!1068687 (and d!1480792 d!1480774)))

(assert (=> bs!1068687 (= lambda!200418 lambda!200402)))

(declare-fun bs!1068688 () Bool)

(assert (= bs!1068688 (and d!1480792 d!1480780)))

(assert (=> bs!1068688 (= lambda!200418 lambda!200412)))

(assert (=> d!1480792 (contains!15102 lt!1822826 (hash!3804 hashF!1389 key!4968))))

(declare-fun lt!1822981 () Unit!119282)

(declare-fun choose!32120 (ListLongMap!3793 K!13288 Hashable!6052) Unit!119282)

(assert (=> d!1480792 (= lt!1822981 (choose!32120 lt!1822826 key!4968 hashF!1389))))

(assert (=> d!1480792 (forall!11057 (toList!5240 lt!1822826) lambda!200418)))

(assert (=> d!1480792 (= (lemmaInGenMapThenLongMapContainsHash!589 lt!1822826 key!4968 hashF!1389) lt!1822981)))

(declare-fun bs!1068689 () Bool)

(assert (= bs!1068689 d!1480792))

(assert (=> bs!1068689 m!5545001))

(assert (=> bs!1068689 m!5545001))

(assert (=> bs!1068689 m!5545147))

(declare-fun m!5545181 () Bool)

(assert (=> bs!1068689 m!5545181))

(declare-fun m!5545183 () Bool)

(assert (=> bs!1068689 m!5545183))

(assert (=> b!4661395 d!1480792))

(declare-fun d!1480794 () Bool)

(declare-fun dynLambda!21615 (Int tuple2!53068) Bool)

(assert (=> d!1480794 (dynLambda!21615 lambda!200393 lt!1822818)))

(declare-fun lt!1822984 () Unit!119282)

(declare-fun choose!32121 (List!52063 Int tuple2!53068) Unit!119282)

(assert (=> d!1480794 (= lt!1822984 (choose!32121 lt!1822820 lambda!200393 lt!1822818))))

(declare-fun e!2908819 () Bool)

(assert (=> d!1480794 e!2908819))

(declare-fun res!1960974 () Bool)

(assert (=> d!1480794 (=> (not res!1960974) (not e!2908819))))

(assert (=> d!1480794 (= res!1960974 (forall!11057 lt!1822820 lambda!200393))))

(assert (=> d!1480794 (= (forallContained!3257 lt!1822820 lambda!200393 lt!1822818) lt!1822984)))

(declare-fun b!4661561 () Bool)

(assert (=> b!4661561 (= e!2908819 (contains!15101 lt!1822820 lt!1822818))))

(assert (= (and d!1480794 res!1960974) b!4661561))

(declare-fun b_lambda!175231 () Bool)

(assert (=> (not b_lambda!175231) (not d!1480794)))

(declare-fun m!5545193 () Bool)

(assert (=> d!1480794 m!5545193))

(declare-fun m!5545195 () Bool)

(assert (=> d!1480794 m!5545195))

(declare-fun m!5545197 () Bool)

(assert (=> d!1480794 m!5545197))

(assert (=> b!4661561 m!5544983))

(assert (=> b!4661395 d!1480794))

(declare-fun d!1480798 () Bool)

(declare-fun lt!1822987 () Bool)

(declare-fun content!9020 (List!52063) (Set tuple2!53068))

(assert (=> d!1480798 (= lt!1822987 (set.member lt!1822818 (content!9020 lt!1822820)))))

(declare-fun e!2908825 () Bool)

(assert (=> d!1480798 (= lt!1822987 e!2908825)))

(declare-fun res!1960980 () Bool)

(assert (=> d!1480798 (=> (not res!1960980) (not e!2908825))))

(assert (=> d!1480798 (= res!1960980 (is-Cons!51939 lt!1822820))))

(assert (=> d!1480798 (= (contains!15101 lt!1822820 lt!1822818) lt!1822987)))

(declare-fun b!4661566 () Bool)

(declare-fun e!2908824 () Bool)

(assert (=> b!4661566 (= e!2908825 e!2908824)))

(declare-fun res!1960979 () Bool)

(assert (=> b!4661566 (=> res!1960979 e!2908824)))

(assert (=> b!4661566 (= res!1960979 (= (h!58095 lt!1822820) lt!1822818))))

(declare-fun b!4661567 () Bool)

(assert (=> b!4661567 (= e!2908824 (contains!15101 (t!359179 lt!1822820) lt!1822818))))

(assert (= (and d!1480798 res!1960980) b!4661566))

(assert (= (and b!4661566 (not res!1960979)) b!4661567))

(declare-fun m!5545199 () Bool)

(assert (=> d!1480798 m!5545199))

(declare-fun m!5545201 () Bool)

(assert (=> d!1480798 m!5545201))

(declare-fun m!5545203 () Bool)

(assert (=> b!4661567 m!5545203))

(assert (=> b!4661395 d!1480798))

(declare-fun d!1480800 () Bool)

(assert (=> d!1480800 (containsKey!2757 oldBucket!40 key!4968)))

(declare-fun lt!1822992 () Unit!119282)

(declare-fun choose!32122 (List!52062 K!13288 Hashable!6052) Unit!119282)

(assert (=> d!1480800 (= lt!1822992 (choose!32122 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1480800 (noDuplicateKeys!1655 oldBucket!40)))

(assert (=> d!1480800 (= (lemmaGetPairDefinedThenContainsKey!133 oldBucket!40 key!4968 hashF!1389) lt!1822992)))

(declare-fun bs!1068690 () Bool)

(assert (= bs!1068690 d!1480800))

(assert (=> bs!1068690 m!5544989))

(declare-fun m!5545205 () Bool)

(assert (=> bs!1068690 m!5545205))

(assert (=> bs!1068690 m!5544969))

(assert (=> b!4661395 d!1480800))

(declare-fun b!4661596 () Bool)

(declare-fun e!2908843 () Option!11855)

(assert (=> b!4661596 (= e!2908843 None!11854)))

(declare-fun b!4661597 () Bool)

(declare-fun e!2908842 () Bool)

(declare-fun e!2908845 () Bool)

(assert (=> b!4661597 (= e!2908842 e!2908845)))

(declare-fun res!1960989 () Bool)

(assert (=> b!4661597 (=> (not res!1960989) (not e!2908845))))

(declare-fun lt!1822996 () Option!11855)

(assert (=> b!4661597 (= res!1960989 (isDefined!9120 lt!1822996))))

(declare-fun b!4661598 () Bool)

(declare-fun e!2908844 () Bool)

(assert (=> b!4661598 (= e!2908844 (not (containsKey!2757 lt!1822816 key!4968)))))

(declare-fun b!4661599 () Bool)

(declare-fun e!2908846 () Option!11855)

(assert (=> b!4661599 (= e!2908846 e!2908843)))

(declare-fun c!797954 () Bool)

(assert (=> b!4661599 (= c!797954 (is-Cons!51938 lt!1822816))))

(declare-fun d!1480802 () Bool)

(assert (=> d!1480802 e!2908842))

(declare-fun res!1960991 () Bool)

(assert (=> d!1480802 (=> res!1960991 e!2908842)))

(assert (=> d!1480802 (= res!1960991 e!2908844)))

(declare-fun res!1960992 () Bool)

(assert (=> d!1480802 (=> (not res!1960992) (not e!2908844))))

(assert (=> d!1480802 (= res!1960992 (isEmpty!29028 lt!1822996))))

(assert (=> d!1480802 (= lt!1822996 e!2908846)))

(declare-fun c!797955 () Bool)

(assert (=> d!1480802 (= c!797955 (and (is-Cons!51938 lt!1822816) (= (_1!29827 (h!58094 lt!1822816)) key!4968)))))

(assert (=> d!1480802 (noDuplicateKeys!1655 lt!1822816)))

(assert (=> d!1480802 (= (getPair!383 lt!1822816 key!4968) lt!1822996)))

(declare-fun b!4661600 () Bool)

(assert (=> b!4661600 (= e!2908843 (getPair!383 (t!359178 lt!1822816) key!4968))))

(declare-fun b!4661601 () Bool)

(declare-fun res!1960990 () Bool)

(assert (=> b!4661601 (=> (not res!1960990) (not e!2908845))))

(declare-fun get!17296 (Option!11855) tuple2!53066)

(assert (=> b!4661601 (= res!1960990 (= (_1!29827 (get!17296 lt!1822996)) key!4968))))

(declare-fun b!4661602 () Bool)

(assert (=> b!4661602 (= e!2908846 (Some!11854 (h!58094 lt!1822816)))))

(declare-fun b!4661603 () Bool)

(declare-fun contains!15107 (List!52062 tuple2!53066) Bool)

(assert (=> b!4661603 (= e!2908845 (contains!15107 lt!1822816 (get!17296 lt!1822996)))))

(assert (= (and d!1480802 c!797955) b!4661602))

(assert (= (and d!1480802 (not c!797955)) b!4661599))

(assert (= (and b!4661599 c!797954) b!4661600))

(assert (= (and b!4661599 (not c!797954)) b!4661596))

(assert (= (and d!1480802 res!1960992) b!4661598))

(assert (= (and d!1480802 (not res!1960991)) b!4661597))

(assert (= (and b!4661597 res!1960989) b!4661601))

(assert (= (and b!4661601 res!1960990) b!4661603))

(declare-fun m!5545211 () Bool)

(assert (=> b!4661601 m!5545211))

(declare-fun m!5545213 () Bool)

(assert (=> b!4661597 m!5545213))

(declare-fun m!5545215 () Bool)

(assert (=> b!4661598 m!5545215))

(declare-fun m!5545217 () Bool)

(assert (=> b!4661600 m!5545217))

(declare-fun m!5545219 () Bool)

(assert (=> d!1480802 m!5545219))

(declare-fun m!5545221 () Bool)

(assert (=> d!1480802 m!5545221))

(assert (=> b!4661603 m!5545211))

(assert (=> b!4661603 m!5545211))

(declare-fun m!5545223 () Bool)

(assert (=> b!4661603 m!5545223))

(assert (=> b!4661395 d!1480802))

(declare-fun d!1480810 () Bool)

(declare-fun get!17297 (Option!11858) List!52062)

(assert (=> d!1480810 (= (apply!12258 lt!1822826 lt!1822821) (get!17297 (getValueByKey!1632 (toList!5240 lt!1822826) lt!1822821)))))

(declare-fun bs!1068691 () Bool)

(assert (= bs!1068691 d!1480810))

(assert (=> bs!1068691 m!5545173))

(assert (=> bs!1068691 m!5545173))

(declare-fun m!5545225 () Bool)

(assert (=> bs!1068691 m!5545225))

(assert (=> b!4661395 d!1480810))

(declare-fun d!1480812 () Bool)

(declare-fun res!1960993 () Bool)

(declare-fun e!2908847 () Bool)

(assert (=> d!1480812 (=> res!1960993 e!2908847)))

(assert (=> d!1480812 (= res!1960993 (and (is-Cons!51938 oldBucket!40) (= (_1!29827 (h!58094 oldBucket!40)) key!4968)))))

(assert (=> d!1480812 (= (containsKey!2757 oldBucket!40 key!4968) e!2908847)))

(declare-fun b!4661604 () Bool)

(declare-fun e!2908848 () Bool)

(assert (=> b!4661604 (= e!2908847 e!2908848)))

(declare-fun res!1960994 () Bool)

(assert (=> b!4661604 (=> (not res!1960994) (not e!2908848))))

(assert (=> b!4661604 (= res!1960994 (is-Cons!51938 oldBucket!40))))

(declare-fun b!4661605 () Bool)

(assert (=> b!4661605 (= e!2908848 (containsKey!2757 (t!359178 oldBucket!40) key!4968))))

(assert (= (and d!1480812 (not res!1960993)) b!4661604))

(assert (= (and b!4661604 res!1960994) b!4661605))

(assert (=> b!4661605 m!5544987))

(assert (=> b!4661395 d!1480812))

(declare-fun b!4661606 () Bool)

(declare-fun e!2908850 () List!52062)

(assert (=> b!4661606 (= e!2908850 (t!359178 oldBucket!40))))

(declare-fun b!4661608 () Bool)

(declare-fun e!2908849 () List!52062)

(assert (=> b!4661608 (= e!2908849 (Cons!51938 (h!58094 oldBucket!40) (removePairForKey!1278 (t!359178 oldBucket!40) key!4968)))))

(declare-fun d!1480814 () Bool)

(declare-fun lt!1822997 () List!52062)

(assert (=> d!1480814 (not (containsKey!2757 lt!1822997 key!4968))))

(assert (=> d!1480814 (= lt!1822997 e!2908850)))

(declare-fun c!797957 () Bool)

(assert (=> d!1480814 (= c!797957 (and (is-Cons!51938 oldBucket!40) (= (_1!29827 (h!58094 oldBucket!40)) key!4968)))))

(assert (=> d!1480814 (noDuplicateKeys!1655 oldBucket!40)))

(assert (=> d!1480814 (= (removePairForKey!1278 oldBucket!40 key!4968) lt!1822997)))

(declare-fun b!4661609 () Bool)

(assert (=> b!4661609 (= e!2908849 Nil!51938)))

(declare-fun b!4661607 () Bool)

(assert (=> b!4661607 (= e!2908850 e!2908849)))

(declare-fun c!797956 () Bool)

(assert (=> b!4661607 (= c!797956 (is-Cons!51938 oldBucket!40))))

(assert (= (and d!1480814 c!797957) b!4661606))

(assert (= (and d!1480814 (not c!797957)) b!4661607))

(assert (= (and b!4661607 c!797956) b!4661608))

(assert (= (and b!4661607 (not c!797956)) b!4661609))

(assert (=> b!4661608 m!5545003))

(declare-fun m!5545227 () Bool)

(assert (=> d!1480814 m!5545227))

(assert (=> d!1480814 m!5544969))

(assert (=> b!4661390 d!1480814))

(declare-fun b!4661610 () Bool)

(declare-fun e!2908852 () List!52062)

(assert (=> b!4661610 (= e!2908852 (t!359178 lt!1822817))))

(declare-fun b!4661612 () Bool)

(declare-fun e!2908851 () List!52062)

(assert (=> b!4661612 (= e!2908851 (Cons!51938 (h!58094 lt!1822817) (removePairForKey!1278 (t!359178 lt!1822817) key!4968)))))

(declare-fun d!1480816 () Bool)

(declare-fun lt!1822998 () List!52062)

(assert (=> d!1480816 (not (containsKey!2757 lt!1822998 key!4968))))

(assert (=> d!1480816 (= lt!1822998 e!2908852)))

(declare-fun c!797959 () Bool)

(assert (=> d!1480816 (= c!797959 (and (is-Cons!51938 lt!1822817) (= (_1!29827 (h!58094 lt!1822817)) key!4968)))))

(assert (=> d!1480816 (noDuplicateKeys!1655 lt!1822817)))

(assert (=> d!1480816 (= (removePairForKey!1278 lt!1822817 key!4968) lt!1822998)))

(declare-fun b!4661613 () Bool)

(assert (=> b!4661613 (= e!2908851 Nil!51938)))

(declare-fun b!4661611 () Bool)

(assert (=> b!4661611 (= e!2908852 e!2908851)))

(declare-fun c!797958 () Bool)

(assert (=> b!4661611 (= c!797958 (is-Cons!51938 lt!1822817))))

(assert (= (and d!1480816 c!797959) b!4661610))

(assert (= (and d!1480816 (not c!797959)) b!4661611))

(assert (= (and b!4661611 c!797958) b!4661612))

(assert (= (and b!4661611 (not c!797958)) b!4661613))

(declare-fun m!5545229 () Bool)

(assert (=> b!4661612 m!5545229))

(declare-fun m!5545231 () Bool)

(assert (=> d!1480816 m!5545231))

(assert (=> d!1480816 m!5544957))

(assert (=> b!4661398 d!1480816))

(declare-fun d!1480818 () Bool)

(assert (=> d!1480818 (= (tail!8258 newBucket!224) (t!359178 newBucket!224))))

(assert (=> b!4661398 d!1480818))

(declare-fun d!1480820 () Bool)

(assert (=> d!1480820 (= (tail!8258 oldBucket!40) (t!359178 oldBucket!40))))

(assert (=> b!4661398 d!1480820))

(declare-fun d!1480822 () Bool)

(declare-fun res!1960995 () Bool)

(declare-fun e!2908853 () Bool)

(assert (=> d!1480822 (=> res!1960995 e!2908853)))

(assert (=> d!1480822 (= res!1960995 (not (is-Cons!51938 oldBucket!40)))))

(assert (=> d!1480822 (= (noDuplicateKeys!1655 oldBucket!40) e!2908853)))

(declare-fun b!4661616 () Bool)

(declare-fun e!2908854 () Bool)

(assert (=> b!4661616 (= e!2908853 e!2908854)))

(declare-fun res!1960996 () Bool)

(assert (=> b!4661616 (=> (not res!1960996) (not e!2908854))))

(assert (=> b!4661616 (= res!1960996 (not (containsKey!2757 (t!359178 oldBucket!40) (_1!29827 (h!58094 oldBucket!40)))))))

(declare-fun b!4661617 () Bool)

(assert (=> b!4661617 (= e!2908854 (noDuplicateKeys!1655 (t!359178 oldBucket!40)))))

(assert (= (and d!1480822 (not res!1960995)) b!4661616))

(assert (= (and b!4661616 res!1960996) b!4661617))

(declare-fun m!5545233 () Bool)

(assert (=> b!4661616 m!5545233))

(assert (=> b!4661617 m!5545071))

(assert (=> start!469570 d!1480822))

(declare-fun bs!1068692 () Bool)

(declare-fun d!1480824 () Bool)

(assert (= bs!1068692 (and d!1480824 d!1480776)))

(declare-fun lambda!200422 () Int)

(assert (=> bs!1068692 (= lambda!200422 lambda!200405)))

(assert (=> d!1480824 true))

(assert (=> d!1480824 true))

(assert (=> d!1480824 (= (allKeysSameHash!1509 newBucket!224 hash!414 hashF!1389) (forall!11058 newBucket!224 lambda!200422))))

(declare-fun bs!1068694 () Bool)

(assert (= bs!1068694 d!1480824))

(declare-fun m!5545237 () Bool)

(assert (=> bs!1068694 m!5545237))

(assert (=> b!4661388 d!1480824))

(declare-fun bs!1068705 () Bool)

(declare-fun b!4661690 () Bool)

(assert (= bs!1068705 (and b!4661690 d!1480776)))

(declare-fun lambda!200461 () Int)

(assert (=> bs!1068705 (not (= lambda!200461 lambda!200405))))

(declare-fun bs!1068706 () Bool)

(assert (= bs!1068706 (and b!4661690 d!1480824)))

(assert (=> bs!1068706 (not (= lambda!200461 lambda!200422))))

(assert (=> b!4661690 true))

(declare-fun bs!1068707 () Bool)

(declare-fun b!4661692 () Bool)

(assert (= bs!1068707 (and b!4661692 d!1480776)))

(declare-fun lambda!200462 () Int)

(assert (=> bs!1068707 (not (= lambda!200462 lambda!200405))))

(declare-fun bs!1068708 () Bool)

(assert (= bs!1068708 (and b!4661692 d!1480824)))

(assert (=> bs!1068708 (not (= lambda!200462 lambda!200422))))

(declare-fun bs!1068709 () Bool)

(assert (= bs!1068709 (and b!4661692 b!4661690)))

(assert (=> bs!1068709 (= lambda!200462 lambda!200461)))

(assert (=> b!4661692 true))

(declare-fun lambda!200463 () Int)

(assert (=> bs!1068707 (not (= lambda!200463 lambda!200405))))

(assert (=> bs!1068708 (not (= lambda!200463 lambda!200422))))

(declare-fun lt!1823083 () ListMap!4579)

(assert (=> bs!1068709 (= (= lt!1823083 lt!1822828) (= lambda!200463 lambda!200461))))

(assert (=> b!4661692 (= (= lt!1823083 lt!1822828) (= lambda!200463 lambda!200462))))

(assert (=> b!4661692 true))

(declare-fun bs!1068710 () Bool)

(declare-fun d!1480826 () Bool)

(assert (= bs!1068710 (and d!1480826 b!4661692)))

(declare-fun lambda!200464 () Int)

(declare-fun lt!1823096 () ListMap!4579)

(assert (=> bs!1068710 (= (= lt!1823096 lt!1822828) (= lambda!200464 lambda!200462))))

(declare-fun bs!1068711 () Bool)

(assert (= bs!1068711 (and d!1480826 b!4661690)))

(assert (=> bs!1068711 (= (= lt!1823096 lt!1822828) (= lambda!200464 lambda!200461))))

(declare-fun bs!1068712 () Bool)

(assert (= bs!1068712 (and d!1480826 d!1480776)))

(assert (=> bs!1068712 (not (= lambda!200464 lambda!200405))))

(declare-fun bs!1068713 () Bool)

(assert (= bs!1068713 (and d!1480826 d!1480824)))

(assert (=> bs!1068713 (not (= lambda!200464 lambda!200422))))

(assert (=> bs!1068710 (= (= lt!1823096 lt!1823083) (= lambda!200464 lambda!200463))))

(assert (=> d!1480826 true))

(declare-fun bm!325669 () Bool)

(declare-fun call!325676 () Unit!119282)

(declare-fun lemmaContainsAllItsOwnKeys!609 (ListMap!4579) Unit!119282)

(assert (=> bm!325669 (= call!325676 (lemmaContainsAllItsOwnKeys!609 lt!1822828))))

(declare-fun e!2908905 () Bool)

(assert (=> d!1480826 e!2908905))

(declare-fun res!1961051 () Bool)

(assert (=> d!1480826 (=> (not res!1961051) (not e!2908905))))

(assert (=> d!1480826 (= res!1961051 (forall!11058 oldBucket!40 lambda!200464))))

(declare-fun e!2908907 () ListMap!4579)

(assert (=> d!1480826 (= lt!1823096 e!2908907)))

(declare-fun c!797968 () Bool)

(assert (=> d!1480826 (= c!797968 (is-Nil!51938 oldBucket!40))))

(assert (=> d!1480826 (noDuplicateKeys!1655 oldBucket!40)))

(assert (=> d!1480826 (= (addToMapMapFromBucket!1112 oldBucket!40 lt!1822828) lt!1823096)))

(assert (=> b!4661690 (= e!2908907 lt!1822828)))

(declare-fun lt!1823102 () Unit!119282)

(assert (=> b!4661690 (= lt!1823102 call!325676)))

(declare-fun call!325674 () Bool)

(assert (=> b!4661690 call!325674))

(declare-fun lt!1823089 () Unit!119282)

(assert (=> b!4661690 (= lt!1823089 lt!1823102)))

(declare-fun call!325675 () Bool)

(assert (=> b!4661690 call!325675))

(declare-fun lt!1823099 () Unit!119282)

(declare-fun Unit!119289 () Unit!119282)

(assert (=> b!4661690 (= lt!1823099 Unit!119289)))

(declare-fun b!4661691 () Bool)

(declare-fun e!2908906 () Bool)

(assert (=> b!4661691 (= e!2908906 (forall!11058 (toList!5239 lt!1822828) lambda!200463))))

(declare-fun bm!325670 () Bool)

(assert (=> bm!325670 (= call!325674 (forall!11058 (toList!5239 lt!1822828) (ite c!797968 lambda!200461 lambda!200463)))))

(declare-fun bm!325671 () Bool)

(assert (=> bm!325671 (= call!325675 (forall!11058 (ite c!797968 (toList!5239 lt!1822828) oldBucket!40) (ite c!797968 lambda!200461 lambda!200463)))))

(assert (=> b!4661692 (= e!2908907 lt!1823083)))

(declare-fun lt!1823095 () ListMap!4579)

(declare-fun +!1995 (ListMap!4579 tuple2!53066) ListMap!4579)

(assert (=> b!4661692 (= lt!1823095 (+!1995 lt!1822828 (h!58094 oldBucket!40)))))

(assert (=> b!4661692 (= lt!1823083 (addToMapMapFromBucket!1112 (t!359178 oldBucket!40) (+!1995 lt!1822828 (h!58094 oldBucket!40))))))

(declare-fun lt!1823091 () Unit!119282)

(assert (=> b!4661692 (= lt!1823091 call!325676)))

(assert (=> b!4661692 (forall!11058 (toList!5239 lt!1822828) lambda!200462)))

(declare-fun lt!1823092 () Unit!119282)

(assert (=> b!4661692 (= lt!1823092 lt!1823091)))

(assert (=> b!4661692 (forall!11058 (toList!5239 lt!1823095) lambda!200463)))

(declare-fun lt!1823088 () Unit!119282)

(declare-fun Unit!119290 () Unit!119282)

(assert (=> b!4661692 (= lt!1823088 Unit!119290)))

(assert (=> b!4661692 (forall!11058 (t!359178 oldBucket!40) lambda!200463)))

(declare-fun lt!1823086 () Unit!119282)

(declare-fun Unit!119291 () Unit!119282)

(assert (=> b!4661692 (= lt!1823086 Unit!119291)))

(declare-fun lt!1823101 () Unit!119282)

(declare-fun Unit!119292 () Unit!119282)

(assert (=> b!4661692 (= lt!1823101 Unit!119292)))

(declare-fun lt!1823090 () Unit!119282)

(declare-fun forallContained!3259 (List!52062 Int tuple2!53066) Unit!119282)

(assert (=> b!4661692 (= lt!1823090 (forallContained!3259 (toList!5239 lt!1823095) lambda!200463 (h!58094 oldBucket!40)))))

(assert (=> b!4661692 (contains!15100 lt!1823095 (_1!29827 (h!58094 oldBucket!40)))))

(declare-fun lt!1823087 () Unit!119282)

(declare-fun Unit!119293 () Unit!119282)

(assert (=> b!4661692 (= lt!1823087 Unit!119293)))

(assert (=> b!4661692 (contains!15100 lt!1823083 (_1!29827 (h!58094 oldBucket!40)))))

(declare-fun lt!1823097 () Unit!119282)

(declare-fun Unit!119294 () Unit!119282)

(assert (=> b!4661692 (= lt!1823097 Unit!119294)))

(assert (=> b!4661692 call!325675))

(declare-fun lt!1823094 () Unit!119282)

(declare-fun Unit!119295 () Unit!119282)

(assert (=> b!4661692 (= lt!1823094 Unit!119295)))

(assert (=> b!4661692 (forall!11058 (toList!5239 lt!1823095) lambda!200463)))

(declare-fun lt!1823093 () Unit!119282)

(declare-fun Unit!119296 () Unit!119282)

(assert (=> b!4661692 (= lt!1823093 Unit!119296)))

(declare-fun lt!1823100 () Unit!119282)

(declare-fun Unit!119297 () Unit!119282)

(assert (=> b!4661692 (= lt!1823100 Unit!119297)))

(declare-fun lt!1823085 () Unit!119282)

(declare-fun addForallContainsKeyThenBeforeAdding!608 (ListMap!4579 ListMap!4579 K!13288 V!13534) Unit!119282)

(assert (=> b!4661692 (= lt!1823085 (addForallContainsKeyThenBeforeAdding!608 lt!1822828 lt!1823083 (_1!29827 (h!58094 oldBucket!40)) (_2!29827 (h!58094 oldBucket!40))))))

(assert (=> b!4661692 call!325674))

(declare-fun lt!1823098 () Unit!119282)

(assert (=> b!4661692 (= lt!1823098 lt!1823085)))

(assert (=> b!4661692 (forall!11058 (toList!5239 lt!1822828) lambda!200463)))

(declare-fun lt!1823084 () Unit!119282)

(declare-fun Unit!119298 () Unit!119282)

(assert (=> b!4661692 (= lt!1823084 Unit!119298)))

(declare-fun res!1961052 () Bool)

(assert (=> b!4661692 (= res!1961052 (forall!11058 oldBucket!40 lambda!200463))))

(assert (=> b!4661692 (=> (not res!1961052) (not e!2908906))))

(assert (=> b!4661692 e!2908906))

(declare-fun lt!1823103 () Unit!119282)

(declare-fun Unit!119299 () Unit!119282)

(assert (=> b!4661692 (= lt!1823103 Unit!119299)))

(declare-fun b!4661693 () Bool)

(assert (=> b!4661693 (= e!2908905 (invariantList!1309 (toList!5239 lt!1823096)))))

(declare-fun b!4661694 () Bool)

(declare-fun res!1961050 () Bool)

(assert (=> b!4661694 (=> (not res!1961050) (not e!2908905))))

(assert (=> b!4661694 (= res!1961050 (forall!11058 (toList!5239 lt!1822828) lambda!200464))))

(assert (= (and d!1480826 c!797968) b!4661690))

(assert (= (and d!1480826 (not c!797968)) b!4661692))

(assert (= (and b!4661692 res!1961052) b!4661691))

(assert (= (or b!4661690 b!4661692) bm!325669))

(assert (= (or b!4661690 b!4661692) bm!325671))

(assert (= (or b!4661690 b!4661692) bm!325670))

(assert (= (and d!1480826 res!1961051) b!4661694))

(assert (= (and b!4661694 res!1961050) b!4661693))

(declare-fun m!5545323 () Bool)

(assert (=> bm!325669 m!5545323))

(declare-fun m!5545325 () Bool)

(assert (=> bm!325671 m!5545325))

(declare-fun m!5545327 () Bool)

(assert (=> b!4661694 m!5545327))

(declare-fun m!5545329 () Bool)

(assert (=> d!1480826 m!5545329))

(assert (=> d!1480826 m!5544969))

(declare-fun m!5545331 () Bool)

(assert (=> b!4661691 m!5545331))

(declare-fun m!5545333 () Bool)

(assert (=> b!4661693 m!5545333))

(declare-fun m!5545335 () Bool)

(assert (=> b!4661692 m!5545335))

(declare-fun m!5545337 () Bool)

(assert (=> b!4661692 m!5545337))

(declare-fun m!5545339 () Bool)

(assert (=> b!4661692 m!5545339))

(declare-fun m!5545341 () Bool)

(assert (=> b!4661692 m!5545341))

(declare-fun m!5545343 () Bool)

(assert (=> b!4661692 m!5545343))

(declare-fun m!5545347 () Bool)

(assert (=> b!4661692 m!5545347))

(assert (=> b!4661692 m!5545347))

(declare-fun m!5545349 () Bool)

(assert (=> b!4661692 m!5545349))

(assert (=> b!4661692 m!5545331))

(declare-fun m!5545351 () Bool)

(assert (=> b!4661692 m!5545351))

(declare-fun m!5545353 () Bool)

(assert (=> b!4661692 m!5545353))

(declare-fun m!5545355 () Bool)

(assert (=> b!4661692 m!5545355))

(assert (=> b!4661692 m!5545335))

(declare-fun m!5545357 () Bool)

(assert (=> bm!325670 m!5545357))

(assert (=> b!4661399 d!1480826))

(declare-fun bs!1068715 () Bool)

(declare-fun d!1480860 () Bool)

(assert (= bs!1068715 (and d!1480860 d!1480774)))

(declare-fun lambda!200465 () Int)

(assert (=> bs!1068715 (= lambda!200465 lambda!200402)))

(declare-fun bs!1068716 () Bool)

(assert (= bs!1068716 (and d!1480860 d!1480792)))

(assert (=> bs!1068716 (= lambda!200465 lambda!200418)))

(declare-fun bs!1068718 () Bool)

(assert (= bs!1068718 (and d!1480860 b!4661395)))

(assert (=> bs!1068718 (= lambda!200465 lambda!200393)))

(declare-fun bs!1068719 () Bool)

(assert (= bs!1068719 (and d!1480860 d!1480770)))

(assert (=> bs!1068719 (= lambda!200465 lambda!200399)))

(declare-fun bs!1068720 () Bool)

(assert (= bs!1068720 (and d!1480860 d!1480780)))

(assert (=> bs!1068720 (= lambda!200465 lambda!200412)))

(declare-fun lt!1823118 () ListMap!4579)

(assert (=> d!1480860 (invariantList!1309 (toList!5239 lt!1823118))))

(declare-fun e!2908920 () ListMap!4579)

(assert (=> d!1480860 (= lt!1823118 e!2908920)))

(declare-fun c!797976 () Bool)

(assert (=> d!1480860 (= c!797976 (is-Cons!51939 Nil!51939))))

(assert (=> d!1480860 (forall!11057 Nil!51939 lambda!200465)))

(assert (=> d!1480860 (= (extractMap!1711 Nil!51939) lt!1823118)))

(declare-fun b!4661716 () Bool)

(assert (=> b!4661716 (= e!2908920 (addToMapMapFromBucket!1112 (_2!29828 (h!58095 Nil!51939)) (extractMap!1711 (t!359179 Nil!51939))))))

(declare-fun b!4661717 () Bool)

(assert (=> b!4661717 (= e!2908920 (ListMap!4580 Nil!51938))))

(assert (= (and d!1480860 c!797976) b!4661716))

(assert (= (and d!1480860 (not c!797976)) b!4661717))

(declare-fun m!5545369 () Bool)

(assert (=> d!1480860 m!5545369))

(declare-fun m!5545371 () Bool)

(assert (=> d!1480860 m!5545371))

(declare-fun m!5545373 () Bool)

(assert (=> b!4661716 m!5545373))

(assert (=> b!4661716 m!5545373))

(declare-fun m!5545375 () Bool)

(assert (=> b!4661716 m!5545375))

(assert (=> b!4661399 d!1480860))

(declare-fun bm!325672 () Bool)

(declare-fun call!325677 () Bool)

(declare-fun e!2908925 () List!52066)

(assert (=> bm!325672 (= call!325677 (contains!15106 e!2908925 key!4968))))

(declare-fun c!797977 () Bool)

(declare-fun c!797979 () Bool)

(assert (=> bm!325672 (= c!797977 c!797979)))

(declare-fun b!4661719 () Bool)

(declare-fun e!2908926 () Bool)

(declare-fun e!2908923 () Bool)

(assert (=> b!4661719 (= e!2908926 e!2908923)))

(declare-fun res!1961060 () Bool)

(assert (=> b!4661719 (=> (not res!1961060) (not e!2908923))))

(assert (=> b!4661719 (= res!1961060 (isDefined!9122 (getValueByKey!1631 (toList!5239 lt!1822827) key!4968)))))

(declare-fun b!4661720 () Bool)

(declare-fun e!2908924 () Unit!119282)

(declare-fun e!2908921 () Unit!119282)

(assert (=> b!4661720 (= e!2908924 e!2908921)))

(declare-fun c!797978 () Bool)

(assert (=> b!4661720 (= c!797978 call!325677)))

(declare-fun b!4661721 () Bool)

(assert (=> b!4661721 false))

(declare-fun lt!1823119 () Unit!119282)

(declare-fun lt!1823123 () Unit!119282)

(assert (=> b!4661721 (= lt!1823119 lt!1823123)))

(assert (=> b!4661721 (containsKey!2759 (toList!5239 lt!1822827) key!4968)))

(assert (=> b!4661721 (= lt!1823123 (lemmaInGetKeysListThenContainsKey!759 (toList!5239 lt!1822827) key!4968))))

(declare-fun Unit!119302 () Unit!119282)

(assert (=> b!4661721 (= e!2908921 Unit!119302)))

(declare-fun b!4661722 () Bool)

(assert (=> b!4661722 (= e!2908925 (getKeysList!760 (toList!5239 lt!1822827)))))

(declare-fun b!4661723 () Bool)

(declare-fun lt!1823125 () Unit!119282)

(assert (=> b!4661723 (= e!2908924 lt!1823125)))

(declare-fun lt!1823122 () Unit!119282)

(assert (=> b!4661723 (= lt!1823122 (lemmaContainsKeyImpliesGetValueByKeyDefined!1533 (toList!5239 lt!1822827) key!4968))))

(assert (=> b!4661723 (isDefined!9122 (getValueByKey!1631 (toList!5239 lt!1822827) key!4968))))

(declare-fun lt!1823126 () Unit!119282)

(assert (=> b!4661723 (= lt!1823126 lt!1823122)))

(assert (=> b!4661723 (= lt!1823125 (lemmaInListThenGetKeysListContains!755 (toList!5239 lt!1822827) key!4968))))

(assert (=> b!4661723 call!325677))

(declare-fun b!4661724 () Bool)

(assert (=> b!4661724 (= e!2908923 (contains!15106 (keys!18415 lt!1822827) key!4968))))

(declare-fun d!1480868 () Bool)

(assert (=> d!1480868 e!2908926))

(declare-fun res!1961058 () Bool)

(assert (=> d!1480868 (=> res!1961058 e!2908926)))

(declare-fun e!2908922 () Bool)

(assert (=> d!1480868 (= res!1961058 e!2908922)))

(declare-fun res!1961059 () Bool)

(assert (=> d!1480868 (=> (not res!1961059) (not e!2908922))))

(declare-fun lt!1823124 () Bool)

(assert (=> d!1480868 (= res!1961059 (not lt!1823124))))

(declare-fun lt!1823120 () Bool)

(assert (=> d!1480868 (= lt!1823124 lt!1823120)))

(declare-fun lt!1823121 () Unit!119282)

(assert (=> d!1480868 (= lt!1823121 e!2908924)))

(assert (=> d!1480868 (= c!797979 lt!1823120)))

(assert (=> d!1480868 (= lt!1823120 (containsKey!2759 (toList!5239 lt!1822827) key!4968))))

(assert (=> d!1480868 (= (contains!15100 lt!1822827 key!4968) lt!1823124)))

(declare-fun b!4661718 () Bool)

(declare-fun Unit!119303 () Unit!119282)

(assert (=> b!4661718 (= e!2908921 Unit!119303)))

(declare-fun b!4661725 () Bool)

(assert (=> b!4661725 (= e!2908922 (not (contains!15106 (keys!18415 lt!1822827) key!4968)))))

(declare-fun b!4661726 () Bool)

(assert (=> b!4661726 (= e!2908925 (keys!18415 lt!1822827))))

(assert (= (and d!1480868 c!797979) b!4661723))

(assert (= (and d!1480868 (not c!797979)) b!4661720))

(assert (= (and b!4661720 c!797978) b!4661721))

(assert (= (and b!4661720 (not c!797978)) b!4661718))

(assert (= (or b!4661723 b!4661720) bm!325672))

(assert (= (and bm!325672 c!797977) b!4661722))

(assert (= (and bm!325672 (not c!797977)) b!4661726))

(assert (= (and d!1480868 res!1961059) b!4661725))

(assert (= (and d!1480868 (not res!1961058)) b!4661719))

(assert (= (and b!4661719 res!1961060) b!4661724))

(declare-fun m!5545377 () Bool)

(assert (=> b!4661722 m!5545377))

(declare-fun m!5545379 () Bool)

(assert (=> b!4661726 m!5545379))

(declare-fun m!5545381 () Bool)

(assert (=> b!4661721 m!5545381))

(declare-fun m!5545383 () Bool)

(assert (=> b!4661721 m!5545383))

(declare-fun m!5545385 () Bool)

(assert (=> b!4661723 m!5545385))

(declare-fun m!5545387 () Bool)

(assert (=> b!4661723 m!5545387))

(assert (=> b!4661723 m!5545387))

(declare-fun m!5545389 () Bool)

(assert (=> b!4661723 m!5545389))

(declare-fun m!5545391 () Bool)

(assert (=> b!4661723 m!5545391))

(declare-fun m!5545393 () Bool)

(assert (=> bm!325672 m!5545393))

(assert (=> b!4661719 m!5545387))

(assert (=> b!4661719 m!5545387))

(assert (=> b!4661719 m!5545389))

(assert (=> b!4661724 m!5545379))

(assert (=> b!4661724 m!5545379))

(declare-fun m!5545395 () Bool)

(assert (=> b!4661724 m!5545395))

(assert (=> d!1480868 m!5545381))

(assert (=> b!4661725 m!5545379))

(assert (=> b!4661725 m!5545379))

(assert (=> b!4661725 m!5545395))

(assert (=> b!4661389 d!1480868))

(declare-fun bs!1068722 () Bool)

(declare-fun d!1480870 () Bool)

(assert (= bs!1068722 (and d!1480870 d!1480860)))

(declare-fun lambda!200467 () Int)

(assert (=> bs!1068722 (= lambda!200467 lambda!200465)))

(declare-fun bs!1068723 () Bool)

(assert (= bs!1068723 (and d!1480870 d!1480774)))

(assert (=> bs!1068723 (= lambda!200467 lambda!200402)))

(declare-fun bs!1068724 () Bool)

(assert (= bs!1068724 (and d!1480870 d!1480792)))

(assert (=> bs!1068724 (= lambda!200467 lambda!200418)))

(declare-fun bs!1068725 () Bool)

(assert (= bs!1068725 (and d!1480870 b!4661395)))

(assert (=> bs!1068725 (= lambda!200467 lambda!200393)))

(declare-fun bs!1068726 () Bool)

(assert (= bs!1068726 (and d!1480870 d!1480770)))

(assert (=> bs!1068726 (= lambda!200467 lambda!200399)))

(declare-fun bs!1068727 () Bool)

(assert (= bs!1068727 (and d!1480870 d!1480780)))

(assert (=> bs!1068727 (= lambda!200467 lambda!200412)))

(declare-fun lt!1823127 () ListMap!4579)

(assert (=> d!1480870 (invariantList!1309 (toList!5239 lt!1823127))))

(declare-fun e!2908927 () ListMap!4579)

(assert (=> d!1480870 (= lt!1823127 e!2908927)))

(declare-fun c!797980 () Bool)

(assert (=> d!1480870 (= c!797980 (is-Cons!51939 lt!1822820))))

(assert (=> d!1480870 (forall!11057 lt!1822820 lambda!200467)))

(assert (=> d!1480870 (= (extractMap!1711 lt!1822820) lt!1823127)))

(declare-fun b!4661727 () Bool)

(assert (=> b!4661727 (= e!2908927 (addToMapMapFromBucket!1112 (_2!29828 (h!58095 lt!1822820)) (extractMap!1711 (t!359179 lt!1822820))))))

(declare-fun b!4661728 () Bool)

(assert (=> b!4661728 (= e!2908927 (ListMap!4580 Nil!51938))))

(assert (= (and d!1480870 c!797980) b!4661727))

(assert (= (and d!1480870 (not c!797980)) b!4661728))

(declare-fun m!5545397 () Bool)

(assert (=> d!1480870 m!5545397))

(declare-fun m!5545399 () Bool)

(assert (=> d!1480870 m!5545399))

(declare-fun m!5545401 () Bool)

(assert (=> b!4661727 m!5545401))

(assert (=> b!4661727 m!5545401))

(declare-fun m!5545403 () Bool)

(assert (=> b!4661727 m!5545403))

(assert (=> b!4661389 d!1480870))

(declare-fun d!1480872 () Bool)

(declare-fun res!1961061 () Bool)

(declare-fun e!2908928 () Bool)

(assert (=> d!1480872 (=> res!1961061 e!2908928)))

(assert (=> d!1480872 (= res!1961061 (not (is-Cons!51938 newBucket!224)))))

(assert (=> d!1480872 (= (noDuplicateKeys!1655 newBucket!224) e!2908928)))

(declare-fun b!4661729 () Bool)

(declare-fun e!2908929 () Bool)

(assert (=> b!4661729 (= e!2908928 e!2908929)))

(declare-fun res!1961062 () Bool)

(assert (=> b!4661729 (=> (not res!1961062) (not e!2908929))))

(assert (=> b!4661729 (= res!1961062 (not (containsKey!2757 (t!359178 newBucket!224) (_1!29827 (h!58094 newBucket!224)))))))

(declare-fun b!4661730 () Bool)

(assert (=> b!4661730 (= e!2908929 (noDuplicateKeys!1655 (t!359178 newBucket!224)))))

(assert (= (and d!1480872 (not res!1961061)) b!4661729))

(assert (= (and b!4661729 res!1961062) b!4661730))

(declare-fun m!5545405 () Bool)

(assert (=> b!4661729 m!5545405))

(declare-fun m!5545407 () Bool)

(assert (=> b!4661730 m!5545407))

(assert (=> b!4661400 d!1480872))

(declare-fun b!4661735 () Bool)

(declare-fun e!2908932 () Bool)

(declare-fun tp!1343482 () Bool)

(assert (=> b!4661735 (= e!2908932 (and tp_is_empty!29913 tp_is_empty!29915 tp!1343482))))

(assert (=> b!4661391 (= tp!1343473 e!2908932)))

(assert (= (and b!4661391 (is-Cons!51938 (t!359178 newBucket!224))) b!4661735))

(declare-fun tp!1343483 () Bool)

(declare-fun b!4661736 () Bool)

(declare-fun e!2908933 () Bool)

(assert (=> b!4661736 (= e!2908933 (and tp_is_empty!29913 tp_is_empty!29915 tp!1343483))))

(assert (=> b!4661397 (= tp!1343472 e!2908933)))

(assert (= (and b!4661397 (is-Cons!51938 (t!359178 oldBucket!40))) b!4661736))

(declare-fun b_lambda!175235 () Bool)

(assert (= b_lambda!175231 (or b!4661395 b_lambda!175235)))

(declare-fun bs!1068728 () Bool)

(declare-fun d!1480874 () Bool)

(assert (= bs!1068728 (and d!1480874 b!4661395)))

(assert (=> bs!1068728 (= (dynLambda!21615 lambda!200393 lt!1822818) (noDuplicateKeys!1655 (_2!29828 lt!1822818)))))

(declare-fun m!5545409 () Bool)

(assert (=> bs!1068728 m!5545409))

(assert (=> d!1480794 d!1480874))

(push 1)

(assert tp_is_empty!29915)

(assert (not b!4661603))

(assert (not d!1480814))

(assert (not bm!325671))

(assert (not b!4661480))

(assert (not d!1480784))

(assert (not b!4661730))

(assert (not d!1480778))

(assert (not b!4661692))

(assert (not d!1480790))

(assert (not d!1480802))

(assert (not d!1480764))

(assert (not b!4661459))

(assert (not d!1480792))

(assert (not b!4661601))

(assert (not b_lambda!175235))

(assert (not b!4661722))

(assert (not b!4661608))

(assert (not b!4661736))

(assert (not b!4661694))

(assert (not d!1480794))

(assert (not d!1480774))

(assert (not b!4661612))

(assert (not b!4661535))

(assert (not d!1480800))

(assert (not b!4661598))

(assert (not b!4661536))

(assert (not b!4661561))

(assert (not b!4661735))

(assert (not b!4661691))

(assert (not bm!325659))

(assert (not d!1480824))

(assert (not d!1480770))

(assert (not b!4661617))

(assert (not b!4661533))

(assert (not d!1480868))

(assert (not b!4661534))

(assert (not b!4661482))

(assert (not b!4661552))

(assert (not b!4661544))

(assert (not b!4661600))

(assert (not b!4661486))

(assert (not b!4661487))

(assert (not bm!325670))

(assert (not d!1480810))

(assert (not b!4661616))

(assert (not b!4661719))

(assert (not bm!325669))

(assert (not b!4661546))

(assert (not d!1480816))

(assert (not b!4661453))

(assert (not b!4661483))

(assert (not b!4661605))

(assert (not b!4661597))

(assert (not b!4661721))

(assert (not b!4661460))

(assert (not b!4661567))

(assert (not bs!1068728))

(assert (not d!1480786))

(assert (not b!4661716))

(assert (not d!1480798))

(assert (not b!4661485))

(assert (not d!1480768))

(assert (not b!4661492))

(assert (not b!4661723))

(assert (not d!1480860))

(assert (not d!1480780))

(assert (not b!4661727))

(assert (not b!4661693))

(assert (not b!4661725))

(assert (not bm!325672))

(assert (not d!1480826))

(assert (not d!1480776))

(assert (not b!4661726))

(assert tp_is_empty!29913)

(assert (not b!4661729))

(assert (not d!1480870))

(assert (not b!4661724))

(assert (not b!4661484))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

