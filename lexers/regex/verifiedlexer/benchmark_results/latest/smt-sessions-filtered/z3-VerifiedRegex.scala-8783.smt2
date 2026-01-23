; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!470144 () Bool)

(assert start!470144)

(declare-fun b!4664210 () Bool)

(declare-fun res!1962465 () Bool)

(declare-fun e!2910498 () Bool)

(assert (=> b!4664210 (=> res!1962465 e!2910498)))

(declare-datatypes ((K!13320 0))(
  ( (K!13321 (val!18927 Int)) )
))
(declare-datatypes ((V!13566 0))(
  ( (V!13567 (val!18928 Int)) )
))
(declare-datatypes ((tuple2!53118 0))(
  ( (tuple2!53119 (_1!29853 K!13320) (_2!29853 V!13566)) )
))
(declare-datatypes ((List!52100 0))(
  ( (Nil!51976) (Cons!51976 (h!58144 tuple2!53118) (t!359224 List!52100)) )
))
(declare-fun oldBucket!40 () List!52100)

(declare-fun noDuplicateKeys!1668 (List!52100) Bool)

(assert (=> b!4664210 (= res!1962465 (not (noDuplicateKeys!1668 (t!359224 oldBucket!40))))))

(declare-fun b!4664211 () Bool)

(declare-fun e!2910501 () Bool)

(declare-fun e!2910500 () Bool)

(assert (=> b!4664211 (= e!2910501 e!2910500)))

(declare-fun res!1962461 () Bool)

(assert (=> b!4664211 (=> res!1962461 e!2910500)))

(declare-fun key!4968 () K!13320)

(declare-fun containsKey!2794 (List!52100 K!13320) Bool)

(assert (=> b!4664211 (= res!1962461 (not (containsKey!2794 (t!359224 oldBucket!40) key!4968)))))

(assert (=> b!4664211 (containsKey!2794 oldBucket!40 key!4968)))

(declare-datatypes ((Hashable!6065 0))(
  ( (HashableExt!6064 (__x!31768 Int)) )
))
(declare-fun hashF!1389 () Hashable!6065)

(declare-datatypes ((Unit!119764 0))(
  ( (Unit!119765) )
))
(declare-fun lt!1826175 () Unit!119764)

(declare-fun lemmaGetPairDefinedThenContainsKey!146 (List!52100 K!13320 Hashable!6065) Unit!119764)

(assert (=> b!4664211 (= lt!1826175 (lemmaGetPairDefinedThenContainsKey!146 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1826183 () List!52100)

(declare-datatypes ((Option!11892 0))(
  ( (None!11891) (Some!11891 (v!46221 tuple2!53118)) )
))
(declare-fun isDefined!9157 (Option!11892) Bool)

(declare-fun getPair!396 (List!52100 K!13320) Option!11892)

(assert (=> b!4664211 (isDefined!9157 (getPair!396 lt!1826183 key!4968))))

(declare-datatypes ((tuple2!53120 0))(
  ( (tuple2!53121 (_1!29854 (_ BitVec 64)) (_2!29854 List!52100)) )
))
(declare-fun lt!1826176 () tuple2!53120)

(declare-fun lambda!201188 () Int)

(declare-fun lt!1826188 () Unit!119764)

(declare-datatypes ((List!52101 0))(
  ( (Nil!51977) (Cons!51977 (h!58145 tuple2!53120) (t!359225 List!52101)) )
))
(declare-fun lt!1826180 () List!52101)

(declare-fun forallContained!3282 (List!52101 Int tuple2!53120) Unit!119764)

(assert (=> b!4664211 (= lt!1826188 (forallContained!3282 lt!1826180 lambda!201188 lt!1826176))))

(declare-fun contains!15163 (List!52101 tuple2!53120) Bool)

(assert (=> b!4664211 (contains!15163 lt!1826180 lt!1826176)))

(declare-fun lt!1826174 () (_ BitVec 64))

(assert (=> b!4664211 (= lt!1826176 (tuple2!53121 lt!1826174 lt!1826183))))

(declare-fun lt!1826182 () Unit!119764)

(declare-datatypes ((ListLongMap!3819 0))(
  ( (ListLongMap!3820 (toList!5265 List!52101)) )
))
(declare-fun lt!1826185 () ListLongMap!3819)

(declare-fun lemmaGetValueImpliesTupleContained!201 (ListLongMap!3819 (_ BitVec 64) List!52100) Unit!119764)

(assert (=> b!4664211 (= lt!1826182 (lemmaGetValueImpliesTupleContained!201 lt!1826185 lt!1826174 lt!1826183))))

(declare-fun apply!12271 (ListLongMap!3819 (_ BitVec 64)) List!52100)

(assert (=> b!4664211 (= lt!1826183 (apply!12271 lt!1826185 lt!1826174))))

(declare-fun contains!15164 (ListLongMap!3819 (_ BitVec 64)) Bool)

(assert (=> b!4664211 (contains!15164 lt!1826185 lt!1826174)))

(declare-fun lt!1826169 () Unit!119764)

(declare-fun lemmaInGenMapThenLongMapContainsHash!602 (ListLongMap!3819 K!13320 Hashable!6065) Unit!119764)

(assert (=> b!4664211 (= lt!1826169 (lemmaInGenMapThenLongMapContainsHash!602 lt!1826185 key!4968 hashF!1389))))

(declare-fun lt!1826189 () Unit!119764)

(declare-fun lemmaInGenMapThenGetPairDefined!192 (ListLongMap!3819 K!13320 Hashable!6065) Unit!119764)

(assert (=> b!4664211 (= lt!1826189 (lemmaInGenMapThenGetPairDefined!192 lt!1826185 key!4968 hashF!1389))))

(assert (=> b!4664211 (= lt!1826185 (ListLongMap!3820 lt!1826180))))

(declare-fun b!4664212 () Bool)

(assert (=> b!4664212 (= e!2910498 true)))

(declare-fun lt!1826186 () Bool)

(declare-fun lt!1826170 () List!52100)

(assert (=> b!4664212 (= lt!1826186 (noDuplicateKeys!1668 lt!1826170))))

(declare-fun b!4664213 () Bool)

(declare-fun tp!1343598 () Bool)

(declare-fun tp_is_empty!29965 () Bool)

(declare-fun e!2910496 () Bool)

(declare-fun tp_is_empty!29967 () Bool)

(assert (=> b!4664213 (= e!2910496 (and tp_is_empty!29965 tp_is_empty!29967 tp!1343598))))

(declare-fun b!4664214 () Bool)

(declare-fun res!1962462 () Bool)

(declare-fun e!2910495 () Bool)

(assert (=> b!4664214 (=> (not res!1962462) (not e!2910495))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1522 (List!52100 (_ BitVec 64) Hashable!6065) Bool)

(assert (=> b!4664214 (= res!1962462 (allKeysSameHash!1522 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4664215 () Bool)

(declare-fun e!2910502 () Bool)

(assert (=> b!4664215 (= e!2910502 (not e!2910501))))

(declare-fun res!1962468 () Bool)

(assert (=> b!4664215 (=> res!1962468 e!2910501)))

(get-info :version)

(assert (=> b!4664215 (= res!1962468 (or (and ((_ is Cons!51976) oldBucket!40) (= (_1!29853 (h!58144 oldBucket!40)) key!4968)) (not ((_ is Cons!51976) oldBucket!40)) (= (_1!29853 (h!58144 oldBucket!40)) key!4968)))))

(declare-fun e!2910493 () Bool)

(assert (=> b!4664215 e!2910493))

(declare-fun res!1962474 () Bool)

(assert (=> b!4664215 (=> (not res!1962474) (not e!2910493))))

(declare-datatypes ((ListMap!4605 0))(
  ( (ListMap!4606 (toList!5266 List!52100)) )
))
(declare-fun lt!1826179 () ListMap!4605)

(declare-fun lt!1826187 () ListMap!4605)

(declare-fun addToMapMapFromBucket!1125 (List!52100 ListMap!4605) ListMap!4605)

(assert (=> b!4664215 (= res!1962474 (= lt!1826179 (addToMapMapFromBucket!1125 oldBucket!40 lt!1826187)))))

(declare-fun extractMap!1724 (List!52101) ListMap!4605)

(assert (=> b!4664215 (= lt!1826187 (extractMap!1724 Nil!51977))))

(assert (=> b!4664215 true))

(declare-fun b!4664216 () Bool)

(declare-fun res!1962473 () Bool)

(declare-fun e!2910497 () Bool)

(assert (=> b!4664216 (=> res!1962473 e!2910497)))

(declare-fun removePairForKey!1291 (List!52100 K!13320) List!52100)

(assert (=> b!4664216 (= res!1962473 (not (= (removePairForKey!1291 (t!359224 oldBucket!40) key!4968) lt!1826170)))))

(declare-fun b!4664217 () Bool)

(assert (=> b!4664217 (= e!2910493 (= lt!1826187 (ListMap!4606 Nil!51976)))))

(declare-fun b!4664218 () Bool)

(declare-fun res!1962464 () Bool)

(assert (=> b!4664218 (=> (not res!1962464) (not e!2910502))))

(declare-fun newBucket!224 () List!52100)

(assert (=> b!4664218 (= res!1962464 (allKeysSameHash!1522 newBucket!224 hash!414 hashF!1389))))

(declare-fun res!1962471 () Bool)

(assert (=> start!470144 (=> (not res!1962471) (not e!2910495))))

(assert (=> start!470144 (= res!1962471 (noDuplicateKeys!1668 oldBucket!40))))

(assert (=> start!470144 e!2910495))

(assert (=> start!470144 true))

(declare-fun e!2910499 () Bool)

(assert (=> start!470144 e!2910499))

(assert (=> start!470144 tp_is_empty!29965))

(assert (=> start!470144 e!2910496))

(declare-fun b!4664219 () Bool)

(assert (=> b!4664219 (= e!2910497 e!2910498)))

(declare-fun res!1962460 () Bool)

(assert (=> b!4664219 (=> res!1962460 e!2910498)))

(declare-fun lt!1826172 () List!52100)

(declare-fun eq!923 (ListMap!4605 ListMap!4605) Bool)

(declare-fun +!2008 (ListMap!4605 tuple2!53118) ListMap!4605)

(assert (=> b!4664219 (= res!1962460 (not (eq!923 lt!1826179 (+!2008 (extractMap!1724 (Cons!51977 (tuple2!53121 hash!414 lt!1826172) Nil!51977)) (h!58144 oldBucket!40)))))))

(declare-fun lt!1826184 () tuple2!53118)

(assert (=> b!4664219 (eq!923 (addToMapMapFromBucket!1125 (Cons!51976 lt!1826184 lt!1826170) (ListMap!4606 Nil!51976)) (+!2008 (addToMapMapFromBucket!1125 lt!1826170 (ListMap!4606 Nil!51976)) lt!1826184))))

(declare-fun lt!1826177 () Unit!119764)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!174 (tuple2!53118 List!52100 ListMap!4605) Unit!119764)

(assert (=> b!4664219 (= lt!1826177 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!174 lt!1826184 lt!1826170 (ListMap!4606 Nil!51976)))))

(declare-fun head!9746 (List!52100) tuple2!53118)

(assert (=> b!4664219 (= lt!1826184 (head!9746 newBucket!224))))

(declare-fun lt!1826171 () tuple2!53118)

(assert (=> b!4664219 (eq!923 (addToMapMapFromBucket!1125 (Cons!51976 lt!1826171 lt!1826172) (ListMap!4606 Nil!51976)) (+!2008 (addToMapMapFromBucket!1125 lt!1826172 (ListMap!4606 Nil!51976)) lt!1826171))))

(declare-fun lt!1826173 () Unit!119764)

(assert (=> b!4664219 (= lt!1826173 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!174 lt!1826171 lt!1826172 (ListMap!4606 Nil!51976)))))

(assert (=> b!4664219 (= lt!1826171 (head!9746 oldBucket!40))))

(declare-fun lt!1826178 () List!52101)

(declare-fun contains!15165 (ListMap!4605 K!13320) Bool)

(assert (=> b!4664219 (contains!15165 (extractMap!1724 lt!1826178) key!4968)))

(declare-fun lt!1826181 () Unit!119764)

(declare-fun lemmaListContainsThenExtractedMapContains!402 (ListLongMap!3819 K!13320 Hashable!6065) Unit!119764)

(assert (=> b!4664219 (= lt!1826181 (lemmaListContainsThenExtractedMapContains!402 (ListLongMap!3820 lt!1826178) key!4968 hashF!1389))))

(assert (=> b!4664219 (= lt!1826178 (Cons!51977 (tuple2!53121 hash!414 (t!359224 oldBucket!40)) Nil!51977))))

(declare-fun tp!1343599 () Bool)

(declare-fun b!4664220 () Bool)

(assert (=> b!4664220 (= e!2910499 (and tp_is_empty!29965 tp_is_empty!29967 tp!1343599))))

(declare-fun b!4664221 () Bool)

(declare-fun res!1962463 () Bool)

(assert (=> b!4664221 (=> (not res!1962463) (not e!2910495))))

(assert (=> b!4664221 (= res!1962463 (noDuplicateKeys!1668 newBucket!224))))

(declare-fun b!4664222 () Bool)

(declare-fun e!2910494 () Bool)

(assert (=> b!4664222 (= e!2910495 e!2910494)))

(declare-fun res!1962469 () Bool)

(assert (=> b!4664222 (=> (not res!1962469) (not e!2910494))))

(assert (=> b!4664222 (= res!1962469 (contains!15165 lt!1826179 key!4968))))

(assert (=> b!4664222 (= lt!1826179 (extractMap!1724 lt!1826180))))

(assert (=> b!4664222 (= lt!1826180 (Cons!51977 (tuple2!53121 hash!414 oldBucket!40) Nil!51977))))

(declare-fun b!4664223 () Bool)

(assert (=> b!4664223 (= e!2910494 e!2910502)))

(declare-fun res!1962467 () Bool)

(assert (=> b!4664223 (=> (not res!1962467) (not e!2910502))))

(assert (=> b!4664223 (= res!1962467 (= lt!1826174 hash!414))))

(declare-fun hash!3829 (Hashable!6065 K!13320) (_ BitVec 64))

(assert (=> b!4664223 (= lt!1826174 (hash!3829 hashF!1389 key!4968))))

(declare-fun b!4664224 () Bool)

(declare-fun res!1962470 () Bool)

(assert (=> b!4664224 (=> (not res!1962470) (not e!2910495))))

(assert (=> b!4664224 (= res!1962470 (= (removePairForKey!1291 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4664225 () Bool)

(declare-fun res!1962472 () Bool)

(assert (=> b!4664225 (=> res!1962472 e!2910498)))

(assert (=> b!4664225 (= res!1962472 (not (eq!923 (extractMap!1724 (Cons!51977 (tuple2!53121 hash!414 newBucket!224) Nil!51977)) (+!2008 (extractMap!1724 (Cons!51977 (tuple2!53121 hash!414 lt!1826170) Nil!51977)) lt!1826184))))))

(declare-fun b!4664226 () Bool)

(assert (=> b!4664226 (= e!2910500 e!2910497)))

(declare-fun res!1962466 () Bool)

(assert (=> b!4664226 (=> res!1962466 e!2910497)))

(assert (=> b!4664226 (= res!1962466 (not (= (removePairForKey!1291 lt!1826172 key!4968) lt!1826170)))))

(declare-fun tail!8271 (List!52100) List!52100)

(assert (=> b!4664226 (= lt!1826170 (tail!8271 newBucket!224))))

(assert (=> b!4664226 (= lt!1826172 (tail!8271 oldBucket!40))))

(assert (= (and start!470144 res!1962471) b!4664221))

(assert (= (and b!4664221 res!1962463) b!4664224))

(assert (= (and b!4664224 res!1962470) b!4664214))

(assert (= (and b!4664214 res!1962462) b!4664222))

(assert (= (and b!4664222 res!1962469) b!4664223))

(assert (= (and b!4664223 res!1962467) b!4664218))

(assert (= (and b!4664218 res!1962464) b!4664215))

(assert (= (and b!4664215 res!1962474) b!4664217))

(assert (= (and b!4664215 (not res!1962468)) b!4664211))

(assert (= (and b!4664211 (not res!1962461)) b!4664226))

(assert (= (and b!4664226 (not res!1962466)) b!4664216))

(assert (= (and b!4664216 (not res!1962473)) b!4664219))

(assert (= (and b!4664219 (not res!1962460)) b!4664225))

(assert (= (and b!4664225 (not res!1962472)) b!4664210))

(assert (= (and b!4664210 (not res!1962465)) b!4664212))

(assert (= (and start!470144 ((_ is Cons!51976) oldBucket!40)) b!4664220))

(assert (= (and start!470144 ((_ is Cons!51976) newBucket!224)) b!4664213))

(declare-fun m!5549785 () Bool)

(assert (=> b!4664224 m!5549785))

(declare-fun m!5549787 () Bool)

(assert (=> b!4664216 m!5549787))

(declare-fun m!5549789 () Bool)

(assert (=> b!4664212 m!5549789))

(declare-fun m!5549791 () Bool)

(assert (=> b!4664214 m!5549791))

(declare-fun m!5549793 () Bool)

(assert (=> b!4664218 m!5549793))

(declare-fun m!5549795 () Bool)

(assert (=> b!4664221 m!5549795))

(declare-fun m!5549797 () Bool)

(assert (=> b!4664225 m!5549797))

(declare-fun m!5549799 () Bool)

(assert (=> b!4664225 m!5549799))

(assert (=> b!4664225 m!5549799))

(declare-fun m!5549801 () Bool)

(assert (=> b!4664225 m!5549801))

(assert (=> b!4664225 m!5549797))

(assert (=> b!4664225 m!5549801))

(declare-fun m!5549803 () Bool)

(assert (=> b!4664225 m!5549803))

(declare-fun m!5549805 () Bool)

(assert (=> b!4664219 m!5549805))

(declare-fun m!5549807 () Bool)

(assert (=> b!4664219 m!5549807))

(declare-fun m!5549809 () Bool)

(assert (=> b!4664219 m!5549809))

(declare-fun m!5549811 () Bool)

(assert (=> b!4664219 m!5549811))

(declare-fun m!5549813 () Bool)

(assert (=> b!4664219 m!5549813))

(declare-fun m!5549815 () Bool)

(assert (=> b!4664219 m!5549815))

(declare-fun m!5549817 () Bool)

(assert (=> b!4664219 m!5549817))

(declare-fun m!5549819 () Bool)

(assert (=> b!4664219 m!5549819))

(declare-fun m!5549821 () Bool)

(assert (=> b!4664219 m!5549821))

(declare-fun m!5549823 () Bool)

(assert (=> b!4664219 m!5549823))

(assert (=> b!4664219 m!5549811))

(declare-fun m!5549825 () Bool)

(assert (=> b!4664219 m!5549825))

(declare-fun m!5549827 () Bool)

(assert (=> b!4664219 m!5549827))

(declare-fun m!5549829 () Bool)

(assert (=> b!4664219 m!5549829))

(assert (=> b!4664219 m!5549813))

(declare-fun m!5549831 () Bool)

(assert (=> b!4664219 m!5549831))

(assert (=> b!4664219 m!5549805))

(declare-fun m!5549833 () Bool)

(assert (=> b!4664219 m!5549833))

(assert (=> b!4664219 m!5549829))

(assert (=> b!4664219 m!5549815))

(assert (=> b!4664219 m!5549825))

(declare-fun m!5549835 () Bool)

(assert (=> b!4664219 m!5549835))

(assert (=> b!4664219 m!5549833))

(declare-fun m!5549837 () Bool)

(assert (=> b!4664219 m!5549837))

(declare-fun m!5549839 () Bool)

(assert (=> b!4664219 m!5549839))

(assert (=> b!4664219 m!5549807))

(assert (=> b!4664219 m!5549839))

(declare-fun m!5549841 () Bool)

(assert (=> b!4664222 m!5549841))

(declare-fun m!5549843 () Bool)

(assert (=> b!4664222 m!5549843))

(declare-fun m!5549845 () Bool)

(assert (=> b!4664215 m!5549845))

(declare-fun m!5549847 () Bool)

(assert (=> b!4664215 m!5549847))

(declare-fun m!5549849 () Bool)

(assert (=> start!470144 m!5549849))

(declare-fun m!5549851 () Bool)

(assert (=> b!4664223 m!5549851))

(declare-fun m!5549853 () Bool)

(assert (=> b!4664210 m!5549853))

(declare-fun m!5549855 () Bool)

(assert (=> b!4664226 m!5549855))

(declare-fun m!5549857 () Bool)

(assert (=> b!4664226 m!5549857))

(declare-fun m!5549859 () Bool)

(assert (=> b!4664226 m!5549859))

(declare-fun m!5549861 () Bool)

(assert (=> b!4664211 m!5549861))

(declare-fun m!5549863 () Bool)

(assert (=> b!4664211 m!5549863))

(declare-fun m!5549865 () Bool)

(assert (=> b!4664211 m!5549865))

(declare-fun m!5549867 () Bool)

(assert (=> b!4664211 m!5549867))

(declare-fun m!5549869 () Bool)

(assert (=> b!4664211 m!5549869))

(assert (=> b!4664211 m!5549861))

(declare-fun m!5549871 () Bool)

(assert (=> b!4664211 m!5549871))

(declare-fun m!5549873 () Bool)

(assert (=> b!4664211 m!5549873))

(declare-fun m!5549875 () Bool)

(assert (=> b!4664211 m!5549875))

(declare-fun m!5549877 () Bool)

(assert (=> b!4664211 m!5549877))

(declare-fun m!5549879 () Bool)

(assert (=> b!4664211 m!5549879))

(declare-fun m!5549881 () Bool)

(assert (=> b!4664211 m!5549881))

(declare-fun m!5549883 () Bool)

(assert (=> b!4664211 m!5549883))

(check-sat (not b!4664219) (not b!4664224) (not b!4664220) (not b!4664215) (not b!4664213) (not b!4664225) (not b!4664221) (not start!470144) (not b!4664222) tp_is_empty!29967 tp_is_empty!29965 (not b!4664226) (not b!4664214) (not b!4664216) (not b!4664223) (not b!4664210) (not b!4664212) (not b!4664211) (not b!4664218))
(check-sat)
