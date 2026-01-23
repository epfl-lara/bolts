; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!479620 () Bool)

(assert start!479620)

(declare-fun b!4715796 () Bool)

(declare-fun tp!1347923 () Bool)

(declare-fun tp_is_empty!31239 () Bool)

(declare-fun e!2941188 () Bool)

(declare-fun tp_is_empty!31237 () Bool)

(assert (=> b!4715796 (= e!2941188 (and tp_is_empty!31237 tp_is_empty!31239 tp!1347923))))

(declare-fun b!4715797 () Bool)

(declare-fun e!2941177 () Bool)

(declare-datatypes ((K!14115 0))(
  ( (K!14116 (val!19563 Int)) )
))
(declare-datatypes ((V!14361 0))(
  ( (V!14362 (val!19564 Int)) )
))
(declare-datatypes ((tuple2!54338 0))(
  ( (tuple2!54339 (_1!30463 K!14115) (_2!30463 V!14361)) )
))
(declare-datatypes ((List!52879 0))(
  ( (Nil!52755) (Cons!52755 (h!59082 tuple2!54338) (t!360129 List!52879)) )
))
(declare-datatypes ((ListMap!5225 0))(
  ( (ListMap!5226 (toList!5861 List!52879)) )
))
(declare-fun lt!1880821 () ListMap!5225)

(declare-fun lt!1880816 () ListMap!5225)

(declare-fun eq!1113 (ListMap!5225 ListMap!5225) Bool)

(assert (=> b!4715797 (= e!2941177 (eq!1113 lt!1880821 lt!1880816))))

(declare-fun b!4715798 () Bool)

(declare-fun e!2941176 () Bool)

(declare-fun e!2941186 () Bool)

(assert (=> b!4715798 (= e!2941176 e!2941186)))

(declare-fun res!1994016 () Bool)

(assert (=> b!4715798 (=> (not res!1994016) (not e!2941186))))

(declare-datatypes ((tuple2!54340 0))(
  ( (tuple2!54341 (_1!30464 (_ BitVec 64)) (_2!30464 List!52879)) )
))
(declare-datatypes ((List!52880 0))(
  ( (Nil!52756) (Cons!52756 (h!59083 tuple2!54340) (t!360130 List!52880)) )
))
(declare-datatypes ((ListLongMap!4391 0))(
  ( (ListLongMap!4392 (toList!5862 List!52880)) )
))
(declare-fun lm!2023 () ListLongMap!4391)

(declare-fun lt!1880831 () tuple2!54340)

(declare-fun head!10201 (List!52880) tuple2!54340)

(assert (=> b!4715798 (= res!1994016 (= (head!10201 (toList!5862 lm!2023)) lt!1880831))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun oldBucket!34 () List!52879)

(assert (=> b!4715798 (= lt!1880831 (tuple2!54341 hash!405 oldBucket!34))))

(declare-fun b!4715799 () Bool)

(declare-fun res!1994011 () Bool)

(declare-fun e!2941183 () Bool)

(assert (=> b!4715799 (=> res!1994011 e!2941183)))

(declare-fun lt!1880819 () ListMap!5225)

(declare-fun lt!1880833 () tuple2!54338)

(declare-fun +!2246 (ListMap!5225 tuple2!54338) ListMap!5225)

(assert (=> b!4715799 (= res!1994011 (not (eq!1113 lt!1880816 (+!2246 lt!1880819 lt!1880833))))))

(declare-fun b!4715801 () Bool)

(declare-fun res!1994019 () Bool)

(declare-fun e!2941178 () Bool)

(assert (=> b!4715801 (=> (not res!1994019) (not e!2941178))))

(declare-fun noDuplicateKeys!1986 (List!52879) Bool)

(assert (=> b!4715801 (= res!1994019 (noDuplicateKeys!1986 oldBucket!34))))

(declare-fun b!4715802 () Bool)

(declare-fun res!1994002 () Bool)

(assert (=> b!4715802 (=> (not res!1994002) (not e!2941176))))

(declare-datatypes ((Hashable!6355 0))(
  ( (HashableExt!6354 (__x!32058 Int)) )
))
(declare-fun hashF!1323 () Hashable!6355)

(declare-fun newBucket!218 () List!52879)

(declare-fun allKeysSameHash!1812 (List!52879 (_ BitVec 64) Hashable!6355) Bool)

(assert (=> b!4715802 (= res!1994002 (allKeysSameHash!1812 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4715803 () Bool)

(declare-fun res!1994003 () Bool)

(assert (=> b!4715803 (=> (not res!1994003) (not e!2941176))))

(declare-fun allKeysSameHashInMap!1900 (ListLongMap!4391 Hashable!6355) Bool)

(assert (=> b!4715803 (= res!1994003 (allKeysSameHashInMap!1900 lm!2023 hashF!1323))))

(declare-fun b!4715804 () Bool)

(declare-fun res!1994015 () Bool)

(assert (=> b!4715804 (=> (not res!1994015) (not e!2941178))))

(assert (=> b!4715804 (= res!1994015 (noDuplicateKeys!1986 newBucket!218))))

(declare-fun b!4715805 () Bool)

(declare-fun e!2941184 () Bool)

(assert (=> b!4715805 (= e!2941184 e!2941183)))

(declare-fun res!1994012 () Bool)

(assert (=> b!4715805 (=> res!1994012 e!2941183)))

(assert (=> b!4715805 (= res!1994012 (not (eq!1113 lt!1880816 (+!2246 lt!1880819 (h!59082 oldBucket!34)))))))

(declare-fun lt!1880806 () List!52879)

(declare-fun extractMap!2012 (List!52880) ListMap!5225)

(assert (=> b!4715805 (= lt!1880819 (extractMap!2012 (Cons!52756 (tuple2!54341 hash!405 lt!1880806) (t!360130 (toList!5862 lm!2023)))))))

(assert (=> b!4715805 (= lt!1880816 (extractMap!2012 (Cons!52756 lt!1880831 (t!360130 (toList!5862 lm!2023)))))))

(declare-fun lt!1880825 () List!52879)

(declare-fun lt!1880822 () ListMap!5225)

(declare-fun addToMapMapFromBucket!1416 (List!52879 ListMap!5225) ListMap!5225)

(assert (=> b!4715805 (eq!1113 (addToMapMapFromBucket!1416 (Cons!52755 lt!1880833 lt!1880825) lt!1880822) (+!2246 (addToMapMapFromBucket!1416 lt!1880825 lt!1880822) lt!1880833))))

(declare-datatypes ((Unit!128733 0))(
  ( (Unit!128734) )
))
(declare-fun lt!1880838 () Unit!128733)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!362 (tuple2!54338 List!52879 ListMap!5225) Unit!128733)

(assert (=> b!4715805 (= lt!1880838 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!362 lt!1880833 lt!1880825 lt!1880822))))

(declare-fun head!10202 (List!52879) tuple2!54338)

(assert (=> b!4715805 (= lt!1880833 (head!10202 newBucket!218))))

(declare-fun lt!1880837 () tuple2!54338)

(assert (=> b!4715805 (eq!1113 (addToMapMapFromBucket!1416 (Cons!52755 lt!1880837 lt!1880806) lt!1880822) (+!2246 (addToMapMapFromBucket!1416 lt!1880806 lt!1880822) lt!1880837))))

(declare-fun lt!1880823 () Unit!128733)

(assert (=> b!4715805 (= lt!1880823 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!362 lt!1880837 lt!1880806 lt!1880822))))

(assert (=> b!4715805 (= lt!1880837 (head!10202 oldBucket!34))))

(declare-fun lt!1880808 () ListMap!5225)

(declare-fun key!4653 () K!14115)

(declare-fun contains!16093 (ListMap!5225 K!14115) Bool)

(assert (=> b!4715805 (contains!16093 lt!1880808 key!4653)))

(declare-fun lt!1880820 () List!52880)

(assert (=> b!4715805 (= lt!1880808 (extractMap!2012 lt!1880820))))

(declare-fun lt!1880827 () ListLongMap!4391)

(declare-fun lt!1880814 () Unit!128733)

(declare-fun lemmaListContainsThenExtractedMapContains!532 (ListLongMap!4391 K!14115 Hashable!6355) Unit!128733)

(assert (=> b!4715805 (= lt!1880814 (lemmaListContainsThenExtractedMapContains!532 lt!1880827 key!4653 hashF!1323))))

(assert (=> b!4715805 (= lt!1880827 (ListLongMap!4392 lt!1880820))))

(declare-fun lt!1880811 () tuple2!54340)

(assert (=> b!4715805 (= lt!1880820 (Cons!52756 lt!1880811 (t!360130 (toList!5862 lm!2023))))))

(assert (=> b!4715805 (= lt!1880811 (tuple2!54341 hash!405 (t!360129 oldBucket!34)))))

(declare-fun b!4715806 () Bool)

(declare-fun res!1994005 () Bool)

(assert (=> b!4715806 (=> res!1994005 e!2941184)))

(declare-fun removePairForKey!1581 (List!52879 K!14115) List!52879)

(assert (=> b!4715806 (= res!1994005 (not (= (removePairForKey!1581 (t!360129 oldBucket!34) key!4653) lt!1880825)))))

(declare-fun b!4715807 () Bool)

(declare-fun e!2941185 () Bool)

(assert (=> b!4715807 (= e!2941186 (not e!2941185))))

(declare-fun res!1994013 () Bool)

(assert (=> b!4715807 (=> res!1994013 e!2941185)))

(get-info :version)

(assert (=> b!4715807 (= res!1994013 (or (and ((_ is Cons!52755) oldBucket!34) (= (_1!30463 (h!59082 oldBucket!34)) key!4653)) (not ((_ is Cons!52755) oldBucket!34)) (= (_1!30463 (h!59082 oldBucket!34)) key!4653)))))

(declare-fun lt!1880832 () ListMap!5225)

(assert (=> b!4715807 (= lt!1880832 (addToMapMapFromBucket!1416 (_2!30464 (h!59083 (toList!5862 lm!2023))) lt!1880822))))

(assert (=> b!4715807 (= lt!1880822 (extractMap!2012 (t!360130 (toList!5862 lm!2023))))))

(declare-fun tail!8932 (ListLongMap!4391) ListLongMap!4391)

(assert (=> b!4715807 (= (t!360130 (toList!5862 lm!2023)) (toList!5862 (tail!8932 lm!2023)))))

(declare-fun b!4715808 () Bool)

(declare-fun e!2941181 () Bool)

(assert (=> b!4715808 (= e!2941181 e!2941184)))

(declare-fun res!1994017 () Bool)

(assert (=> b!4715808 (=> res!1994017 e!2941184)))

(assert (=> b!4715808 (= res!1994017 (not (= (removePairForKey!1581 lt!1880806 key!4653) lt!1880825)))))

(declare-fun tail!8933 (List!52879) List!52879)

(assert (=> b!4715808 (= lt!1880825 (tail!8933 newBucket!218))))

(assert (=> b!4715808 (= lt!1880806 (tail!8933 oldBucket!34))))

(declare-fun tp!1347924 () Bool)

(declare-fun b!4715809 () Bool)

(declare-fun e!2941179 () Bool)

(assert (=> b!4715809 (= e!2941179 (and tp_is_empty!31237 tp_is_empty!31239 tp!1347924))))

(declare-fun b!4715810 () Bool)

(declare-fun e!2941182 () Bool)

(assert (=> b!4715810 (= e!2941182 e!2941176)))

(declare-fun res!1994007 () Bool)

(assert (=> b!4715810 (=> (not res!1994007) (not e!2941176))))

(declare-fun lt!1880830 () (_ BitVec 64))

(assert (=> b!4715810 (= res!1994007 (= lt!1880830 hash!405))))

(declare-fun hash!4332 (Hashable!6355 K!14115) (_ BitVec 64))

(assert (=> b!4715810 (= lt!1880830 (hash!4332 hashF!1323 key!4653))))

(declare-fun b!4715811 () Bool)

(declare-fun res!1994004 () Bool)

(assert (=> b!4715811 (=> res!1994004 e!2941183)))

(assert (=> b!4715811 (= res!1994004 (not (= (h!59082 oldBucket!34) lt!1880833)))))

(declare-fun b!4715812 () Bool)

(assert (=> b!4715812 (= e!2941178 e!2941182)))

(declare-fun res!1994021 () Bool)

(assert (=> b!4715812 (=> (not res!1994021) (not e!2941182))))

(assert (=> b!4715812 (= res!1994021 (contains!16093 lt!1880832 key!4653))))

(assert (=> b!4715812 (= lt!1880832 (extractMap!2012 (toList!5862 lm!2023)))))

(declare-fun b!4715813 () Bool)

(assert (=> b!4715813 (= e!2941185 e!2941181)))

(declare-fun res!1994018 () Bool)

(assert (=> b!4715813 (=> res!1994018 e!2941181)))

(declare-fun containsKey!3319 (List!52879 K!14115) Bool)

(assert (=> b!4715813 (= res!1994018 (not (containsKey!3319 (t!360129 oldBucket!34) key!4653)))))

(assert (=> b!4715813 (containsKey!3319 oldBucket!34 key!4653)))

(declare-fun lt!1880809 () Unit!128733)

(declare-fun lemmaGetPairDefinedThenContainsKey!300 (List!52879 K!14115 Hashable!6355) Unit!128733)

(assert (=> b!4715813 (= lt!1880809 (lemmaGetPairDefinedThenContainsKey!300 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1880828 () List!52879)

(declare-datatypes ((Option!12322 0))(
  ( (None!12321) (Some!12321 (v!46876 tuple2!54338)) )
))
(declare-fun isDefined!9576 (Option!12322) Bool)

(declare-fun getPair!552 (List!52879 K!14115) Option!12322)

(assert (=> b!4715813 (isDefined!9576 (getPair!552 lt!1880828 key!4653))))

(declare-fun lt!1880813 () tuple2!54340)

(declare-fun lt!1880818 () Unit!128733)

(declare-fun lambda!213967 () Int)

(declare-fun forallContained!3604 (List!52880 Int tuple2!54340) Unit!128733)

(assert (=> b!4715813 (= lt!1880818 (forallContained!3604 (toList!5862 lm!2023) lambda!213967 lt!1880813))))

(declare-fun contains!16094 (List!52880 tuple2!54340) Bool)

(assert (=> b!4715813 (contains!16094 (toList!5862 lm!2023) lt!1880813)))

(assert (=> b!4715813 (= lt!1880813 (tuple2!54341 lt!1880830 lt!1880828))))

(declare-fun lt!1880815 () Unit!128733)

(declare-fun lemmaGetValueImpliesTupleContained!357 (ListLongMap!4391 (_ BitVec 64) List!52879) Unit!128733)

(assert (=> b!4715813 (= lt!1880815 (lemmaGetValueImpliesTupleContained!357 lm!2023 lt!1880830 lt!1880828))))

(declare-fun apply!12435 (ListLongMap!4391 (_ BitVec 64)) List!52879)

(assert (=> b!4715813 (= lt!1880828 (apply!12435 lm!2023 lt!1880830))))

(declare-fun contains!16095 (ListLongMap!4391 (_ BitVec 64)) Bool)

(assert (=> b!4715813 (contains!16095 lm!2023 lt!1880830)))

(declare-fun lt!1880836 () Unit!128733)

(declare-fun lemmaInGenMapThenLongMapContainsHash!758 (ListLongMap!4391 K!14115 Hashable!6355) Unit!128733)

(assert (=> b!4715813 (= lt!1880836 (lemmaInGenMapThenLongMapContainsHash!758 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1880835 () Unit!128733)

(declare-fun lemmaInGenMapThenGetPairDefined!348 (ListLongMap!4391 K!14115 Hashable!6355) Unit!128733)

(assert (=> b!4715813 (= lt!1880835 (lemmaInGenMapThenGetPairDefined!348 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4715814 () Bool)

(declare-fun res!1994020 () Bool)

(assert (=> b!4715814 (=> (not res!1994020) (not e!2941186))))

(assert (=> b!4715814 (= res!1994020 ((_ is Cons!52756) (toList!5862 lm!2023)))))

(declare-fun b!4715815 () Bool)

(declare-fun res!1994010 () Bool)

(assert (=> b!4715815 (=> (not res!1994010) (not e!2941178))))

(assert (=> b!4715815 (= res!1994010 (allKeysSameHash!1812 oldBucket!34 hash!405 hashF!1323))))

(declare-fun res!1994008 () Bool)

(assert (=> start!479620 (=> (not res!1994008) (not e!2941178))))

(declare-fun forall!11535 (List!52880 Int) Bool)

(assert (=> start!479620 (= res!1994008 (forall!11535 (toList!5862 lm!2023) lambda!213967))))

(assert (=> start!479620 e!2941178))

(declare-fun e!2941180 () Bool)

(declare-fun inv!67989 (ListLongMap!4391) Bool)

(assert (=> start!479620 (and (inv!67989 lm!2023) e!2941180)))

(assert (=> start!479620 tp_is_empty!31237))

(assert (=> start!479620 e!2941179))

(assert (=> start!479620 true))

(assert (=> start!479620 e!2941188))

(declare-fun b!4715800 () Bool)

(declare-fun res!1994006 () Bool)

(assert (=> b!4715800 (=> res!1994006 e!2941177)))

(declare-fun lt!1880834 () ListMap!5225)

(declare-fun lt!1880812 () ListMap!5225)

(assert (=> b!4715800 (= res!1994006 (not (eq!1113 lt!1880834 lt!1880812)))))

(declare-fun b!4715816 () Bool)

(declare-fun e!2941187 () Bool)

(assert (=> b!4715816 (= e!2941183 e!2941187)))

(declare-fun res!1994009 () Bool)

(assert (=> b!4715816 (=> res!1994009 e!2941187)))

(declare-fun lt!1880817 () ListMap!5225)

(declare-fun lt!1880824 () ListMap!5225)

(assert (=> b!4715816 (= res!1994009 (not (eq!1113 lt!1880817 lt!1880824)))))

(declare-fun -!742 (ListMap!5225 K!14115) ListMap!5225)

(assert (=> b!4715816 (= lt!1880824 (-!742 lt!1880808 key!4653))))

(declare-fun lt!1880829 () tuple2!54340)

(assert (=> b!4715816 (= lt!1880817 (extractMap!2012 (Cons!52756 lt!1880829 (t!360130 (toList!5862 lm!2023)))))))

(declare-fun lt!1880810 () List!52880)

(assert (=> b!4715816 (eq!1113 (extractMap!2012 (Cons!52756 lt!1880829 lt!1880810)) (-!742 (extractMap!2012 (Cons!52756 lt!1880811 lt!1880810)) key!4653))))

(declare-fun tail!8934 (List!52880) List!52880)

(assert (=> b!4715816 (= lt!1880810 (tail!8934 lt!1880820))))

(assert (=> b!4715816 (= lt!1880829 (tuple2!54341 hash!405 lt!1880825))))

(declare-fun lt!1880826 () Unit!128733)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!104 (ListLongMap!4391 (_ BitVec 64) List!52879 List!52879 K!14115 Hashable!6355) Unit!128733)

(assert (=> b!4715816 (= lt!1880826 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!104 lt!1880827 hash!405 (t!360129 oldBucket!34) lt!1880825 key!4653 hashF!1323))))

(declare-fun b!4715817 () Bool)

(declare-fun tp!1347925 () Bool)

(assert (=> b!4715817 (= e!2941180 tp!1347925)))

(declare-fun b!4715818 () Bool)

(assert (=> b!4715818 (= e!2941187 e!2941177)))

(declare-fun res!1994014 () Bool)

(assert (=> b!4715818 (=> res!1994014 e!2941177)))

(assert (=> b!4715818 (= res!1994014 (not (= lt!1880834 lt!1880812)))))

(assert (=> b!4715818 (= lt!1880812 (+!2246 lt!1880824 (h!59082 oldBucket!34)))))

(assert (=> b!4715818 (= lt!1880834 (-!742 lt!1880821 key!4653))))

(assert (=> b!4715818 (= lt!1880821 (+!2246 lt!1880808 (h!59082 oldBucket!34)))))

(assert (=> b!4715818 (= (-!742 (+!2246 lt!1880808 (h!59082 oldBucket!34)) key!4653) (+!2246 lt!1880824 (h!59082 oldBucket!34)))))

(declare-fun lt!1880807 () Unit!128733)

(declare-fun addRemoveCommutativeForDiffKeys!133 (ListMap!5225 K!14115 V!14361 K!14115) Unit!128733)

(assert (=> b!4715818 (= lt!1880807 (addRemoveCommutativeForDiffKeys!133 lt!1880808 (_1!30463 (h!59082 oldBucket!34)) (_2!30463 (h!59082 oldBucket!34)) key!4653))))

(declare-fun b!4715819 () Bool)

(declare-fun res!1994001 () Bool)

(assert (=> b!4715819 (=> (not res!1994001) (not e!2941178))))

(assert (=> b!4715819 (= res!1994001 (= (removePairForKey!1581 oldBucket!34 key!4653) newBucket!218))))

(assert (= (and start!479620 res!1994008) b!4715801))

(assert (= (and b!4715801 res!1994019) b!4715804))

(assert (= (and b!4715804 res!1994015) b!4715819))

(assert (= (and b!4715819 res!1994001) b!4715815))

(assert (= (and b!4715815 res!1994010) b!4715812))

(assert (= (and b!4715812 res!1994021) b!4715810))

(assert (= (and b!4715810 res!1994007) b!4715802))

(assert (= (and b!4715802 res!1994002) b!4715803))

(assert (= (and b!4715803 res!1994003) b!4715798))

(assert (= (and b!4715798 res!1994016) b!4715814))

(assert (= (and b!4715814 res!1994020) b!4715807))

(assert (= (and b!4715807 (not res!1994013)) b!4715813))

(assert (= (and b!4715813 (not res!1994018)) b!4715808))

(assert (= (and b!4715808 (not res!1994017)) b!4715806))

(assert (= (and b!4715806 (not res!1994005)) b!4715805))

(assert (= (and b!4715805 (not res!1994012)) b!4715811))

(assert (= (and b!4715811 (not res!1994004)) b!4715799))

(assert (= (and b!4715799 (not res!1994011)) b!4715816))

(assert (= (and b!4715816 (not res!1994009)) b!4715818))

(assert (= (and b!4715818 (not res!1994014)) b!4715800))

(assert (= (and b!4715800 (not res!1994006)) b!4715797))

(assert (= start!479620 b!4715817))

(assert (= (and start!479620 ((_ is Cons!52755) oldBucket!34)) b!4715809))

(assert (= (and start!479620 ((_ is Cons!52755) newBucket!218)) b!4715796))

(declare-fun m!5644857 () Bool)

(assert (=> b!4715803 m!5644857))

(declare-fun m!5644859 () Bool)

(assert (=> b!4715802 m!5644859))

(declare-fun m!5644861 () Bool)

(assert (=> b!4715805 m!5644861))

(declare-fun m!5644863 () Bool)

(assert (=> b!4715805 m!5644863))

(declare-fun m!5644865 () Bool)

(assert (=> b!4715805 m!5644865))

(declare-fun m!5644867 () Bool)

(assert (=> b!4715805 m!5644867))

(declare-fun m!5644869 () Bool)

(assert (=> b!4715805 m!5644869))

(declare-fun m!5644871 () Bool)

(assert (=> b!4715805 m!5644871))

(declare-fun m!5644873 () Bool)

(assert (=> b!4715805 m!5644873))

(assert (=> b!4715805 m!5644865))

(assert (=> b!4715805 m!5644869))

(declare-fun m!5644875 () Bool)

(assert (=> b!4715805 m!5644875))

(declare-fun m!5644877 () Bool)

(assert (=> b!4715805 m!5644877))

(assert (=> b!4715805 m!5644873))

(declare-fun m!5644879 () Bool)

(assert (=> b!4715805 m!5644879))

(assert (=> b!4715805 m!5644875))

(declare-fun m!5644881 () Bool)

(assert (=> b!4715805 m!5644881))

(declare-fun m!5644883 () Bool)

(assert (=> b!4715805 m!5644883))

(declare-fun m!5644885 () Bool)

(assert (=> b!4715805 m!5644885))

(declare-fun m!5644887 () Bool)

(assert (=> b!4715805 m!5644887))

(declare-fun m!5644889 () Bool)

(assert (=> b!4715805 m!5644889))

(assert (=> b!4715805 m!5644881))

(assert (=> b!4715805 m!5644867))

(declare-fun m!5644891 () Bool)

(assert (=> b!4715805 m!5644891))

(assert (=> b!4715805 m!5644889))

(declare-fun m!5644893 () Bool)

(assert (=> b!4715805 m!5644893))

(declare-fun m!5644895 () Bool)

(assert (=> b!4715805 m!5644895))

(declare-fun m!5644897 () Bool)

(assert (=> b!4715805 m!5644897))

(declare-fun m!5644899 () Bool)

(assert (=> b!4715798 m!5644899))

(declare-fun m!5644901 () Bool)

(assert (=> b!4715815 m!5644901))

(declare-fun m!5644903 () Bool)

(assert (=> b!4715807 m!5644903))

(declare-fun m!5644905 () Bool)

(assert (=> b!4715807 m!5644905))

(declare-fun m!5644907 () Bool)

(assert (=> b!4715807 m!5644907))

(declare-fun m!5644909 () Bool)

(assert (=> b!4715804 m!5644909))

(declare-fun m!5644911 () Bool)

(assert (=> b!4715800 m!5644911))

(declare-fun m!5644913 () Bool)

(assert (=> b!4715806 m!5644913))

(declare-fun m!5644915 () Bool)

(assert (=> b!4715818 m!5644915))

(declare-fun m!5644917 () Bool)

(assert (=> b!4715818 m!5644917))

(declare-fun m!5644919 () Bool)

(assert (=> b!4715818 m!5644919))

(declare-fun m!5644921 () Bool)

(assert (=> b!4715818 m!5644921))

(assert (=> b!4715818 m!5644917))

(declare-fun m!5644923 () Bool)

(assert (=> b!4715818 m!5644923))

(declare-fun m!5644925 () Bool)

(assert (=> b!4715819 m!5644925))

(declare-fun m!5644927 () Bool)

(assert (=> b!4715797 m!5644927))

(declare-fun m!5644929 () Bool)

(assert (=> b!4715813 m!5644929))

(declare-fun m!5644931 () Bool)

(assert (=> b!4715813 m!5644931))

(declare-fun m!5644933 () Bool)

(assert (=> b!4715813 m!5644933))

(assert (=> b!4715813 m!5644929))

(declare-fun m!5644935 () Bool)

(assert (=> b!4715813 m!5644935))

(declare-fun m!5644937 () Bool)

(assert (=> b!4715813 m!5644937))

(declare-fun m!5644939 () Bool)

(assert (=> b!4715813 m!5644939))

(declare-fun m!5644941 () Bool)

(assert (=> b!4715813 m!5644941))

(declare-fun m!5644943 () Bool)

(assert (=> b!4715813 m!5644943))

(declare-fun m!5644945 () Bool)

(assert (=> b!4715813 m!5644945))

(declare-fun m!5644947 () Bool)

(assert (=> b!4715813 m!5644947))

(declare-fun m!5644949 () Bool)

(assert (=> b!4715813 m!5644949))

(declare-fun m!5644951 () Bool)

(assert (=> b!4715813 m!5644951))

(declare-fun m!5644953 () Bool)

(assert (=> b!4715808 m!5644953))

(declare-fun m!5644955 () Bool)

(assert (=> b!4715808 m!5644955))

(declare-fun m!5644957 () Bool)

(assert (=> b!4715808 m!5644957))

(declare-fun m!5644959 () Bool)

(assert (=> b!4715816 m!5644959))

(declare-fun m!5644961 () Bool)

(assert (=> b!4715816 m!5644961))

(declare-fun m!5644963 () Bool)

(assert (=> b!4715816 m!5644963))

(declare-fun m!5644965 () Bool)

(assert (=> b!4715816 m!5644965))

(declare-fun m!5644967 () Bool)

(assert (=> b!4715816 m!5644967))

(declare-fun m!5644969 () Bool)

(assert (=> b!4715816 m!5644969))

(declare-fun m!5644971 () Bool)

(assert (=> b!4715816 m!5644971))

(assert (=> b!4715816 m!5644963))

(declare-fun m!5644973 () Bool)

(assert (=> b!4715816 m!5644973))

(assert (=> b!4715816 m!5644969))

(assert (=> b!4715816 m!5644965))

(declare-fun m!5644975 () Bool)

(assert (=> b!4715816 m!5644975))

(declare-fun m!5644977 () Bool)

(assert (=> b!4715799 m!5644977))

(assert (=> b!4715799 m!5644977))

(declare-fun m!5644979 () Bool)

(assert (=> b!4715799 m!5644979))

(declare-fun m!5644981 () Bool)

(assert (=> b!4715801 m!5644981))

(declare-fun m!5644983 () Bool)

(assert (=> start!479620 m!5644983))

(declare-fun m!5644985 () Bool)

(assert (=> start!479620 m!5644985))

(declare-fun m!5644987 () Bool)

(assert (=> b!4715810 m!5644987))

(declare-fun m!5644989 () Bool)

(assert (=> b!4715812 m!5644989))

(declare-fun m!5644991 () Bool)

(assert (=> b!4715812 m!5644991))

(check-sat (not b!4715818) (not start!479620) (not b!4715816) (not b!4715798) (not b!4715797) (not b!4715817) (not b!4715813) (not b!4715799) (not b!4715819) (not b!4715807) (not b!4715805) (not b!4715800) (not b!4715802) (not b!4715796) (not b!4715809) (not b!4715806) (not b!4715808) (not b!4715815) (not b!4715801) tp_is_empty!31239 (not b!4715804) (not b!4715812) (not b!4715810) tp_is_empty!31237 (not b!4715803))
(check-sat)
(get-model)

(declare-fun d!1500651 () Bool)

(declare-fun e!2941221 () Bool)

(assert (=> d!1500651 e!2941221))

(declare-fun res!1994040 () Bool)

(assert (=> d!1500651 (=> (not res!1994040) (not e!2941221))))

(declare-fun lt!1880862 () ListMap!5225)

(assert (=> d!1500651 (= res!1994040 (not (contains!16093 lt!1880862 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!395 (List!52879 K!14115) List!52879)

(assert (=> d!1500651 (= lt!1880862 (ListMap!5226 (removePresrvNoDuplicatedKeys!395 (toList!5861 (+!2246 lt!1880808 (h!59082 oldBucket!34))) key!4653)))))

(assert (=> d!1500651 (= (-!742 (+!2246 lt!1880808 (h!59082 oldBucket!34)) key!4653) lt!1880862)))

(declare-fun b!4715872 () Bool)

(declare-datatypes ((List!52882 0))(
  ( (Nil!52758) (Cons!52758 (h!59087 K!14115) (t!360134 List!52882)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9367 (List!52882) (InoxSet K!14115))

(declare-fun keys!18927 (ListMap!5225) List!52882)

(assert (=> b!4715872 (= e!2941221 (= ((_ map and) (content!9367 (keys!18927 (+!2246 lt!1880808 (h!59082 oldBucket!34)))) ((_ map not) (store ((as const (Array K!14115 Bool)) false) key!4653 true))) (content!9367 (keys!18927 lt!1880862))))))

(assert (= (and d!1500651 res!1994040) b!4715872))

(declare-fun m!5645097 () Bool)

(assert (=> d!1500651 m!5645097))

(declare-fun m!5645099 () Bool)

(assert (=> d!1500651 m!5645099))

(declare-fun m!5645101 () Bool)

(assert (=> b!4715872 m!5645101))

(declare-fun m!5645103 () Bool)

(assert (=> b!4715872 m!5645103))

(declare-fun m!5645105 () Bool)

(assert (=> b!4715872 m!5645105))

(declare-fun m!5645107 () Bool)

(assert (=> b!4715872 m!5645107))

(assert (=> b!4715872 m!5644917))

(assert (=> b!4715872 m!5645105))

(declare-fun m!5645109 () Bool)

(assert (=> b!4715872 m!5645109))

(assert (=> b!4715872 m!5645101))

(assert (=> b!4715818 d!1500651))

(declare-fun d!1500661 () Bool)

(assert (=> d!1500661 (= (-!742 (+!2246 lt!1880808 (tuple2!54339 (_1!30463 (h!59082 oldBucket!34)) (_2!30463 (h!59082 oldBucket!34)))) key!4653) (+!2246 (-!742 lt!1880808 key!4653) (tuple2!54339 (_1!30463 (h!59082 oldBucket!34)) (_2!30463 (h!59082 oldBucket!34)))))))

(declare-fun lt!1880865 () Unit!128733)

(declare-fun choose!33219 (ListMap!5225 K!14115 V!14361 K!14115) Unit!128733)

(assert (=> d!1500661 (= lt!1880865 (choose!33219 lt!1880808 (_1!30463 (h!59082 oldBucket!34)) (_2!30463 (h!59082 oldBucket!34)) key!4653))))

(assert (=> d!1500661 (not (= (_1!30463 (h!59082 oldBucket!34)) key!4653))))

(assert (=> d!1500661 (= (addRemoveCommutativeForDiffKeys!133 lt!1880808 (_1!30463 (h!59082 oldBucket!34)) (_2!30463 (h!59082 oldBucket!34)) key!4653) lt!1880865)))

(declare-fun bs!1104525 () Bool)

(assert (= bs!1104525 d!1500661))

(assert (=> bs!1104525 m!5644959))

(assert (=> bs!1104525 m!5644959))

(declare-fun m!5645111 () Bool)

(assert (=> bs!1104525 m!5645111))

(declare-fun m!5645113 () Bool)

(assert (=> bs!1104525 m!5645113))

(declare-fun m!5645115 () Bool)

(assert (=> bs!1104525 m!5645115))

(assert (=> bs!1104525 m!5645113))

(declare-fun m!5645117 () Bool)

(assert (=> bs!1104525 m!5645117))

(assert (=> b!4715818 d!1500661))

(declare-fun d!1500663 () Bool)

(declare-fun e!2941222 () Bool)

(assert (=> d!1500663 e!2941222))

(declare-fun res!1994041 () Bool)

(assert (=> d!1500663 (=> (not res!1994041) (not e!2941222))))

(declare-fun lt!1880866 () ListMap!5225)

(assert (=> d!1500663 (= res!1994041 (not (contains!16093 lt!1880866 key!4653)))))

(assert (=> d!1500663 (= lt!1880866 (ListMap!5226 (removePresrvNoDuplicatedKeys!395 (toList!5861 lt!1880821) key!4653)))))

(assert (=> d!1500663 (= (-!742 lt!1880821 key!4653) lt!1880866)))

(declare-fun b!4715873 () Bool)

(assert (=> b!4715873 (= e!2941222 (= ((_ map and) (content!9367 (keys!18927 lt!1880821)) ((_ map not) (store ((as const (Array K!14115 Bool)) false) key!4653 true))) (content!9367 (keys!18927 lt!1880866))))))

(assert (= (and d!1500663 res!1994041) b!4715873))

(declare-fun m!5645119 () Bool)

(assert (=> d!1500663 m!5645119))

(declare-fun m!5645121 () Bool)

(assert (=> d!1500663 m!5645121))

(declare-fun m!5645123 () Bool)

(assert (=> b!4715873 m!5645123))

(declare-fun m!5645125 () Bool)

(assert (=> b!4715873 m!5645125))

(declare-fun m!5645127 () Bool)

(assert (=> b!4715873 m!5645127))

(declare-fun m!5645129 () Bool)

(assert (=> b!4715873 m!5645129))

(assert (=> b!4715873 m!5645127))

(assert (=> b!4715873 m!5645109))

(assert (=> b!4715873 m!5645123))

(assert (=> b!4715818 d!1500663))

(declare-fun d!1500665 () Bool)

(declare-fun e!2941237 () Bool)

(assert (=> d!1500665 e!2941237))

(declare-fun res!1994061 () Bool)

(assert (=> d!1500665 (=> (not res!1994061) (not e!2941237))))

(declare-fun lt!1880913 () ListMap!5225)

(assert (=> d!1500665 (= res!1994061 (contains!16093 lt!1880913 (_1!30463 (h!59082 oldBucket!34))))))

(declare-fun lt!1880912 () List!52879)

(assert (=> d!1500665 (= lt!1880913 (ListMap!5226 lt!1880912))))

(declare-fun lt!1880911 () Unit!128733)

(declare-fun lt!1880914 () Unit!128733)

(assert (=> d!1500665 (= lt!1880911 lt!1880914)))

(declare-datatypes ((Option!12325 0))(
  ( (None!12324) (Some!12324 (v!46883 V!14361)) )
))
(declare-fun getValueByKey!1931 (List!52879 K!14115) Option!12325)

(assert (=> d!1500665 (= (getValueByKey!1931 lt!1880912 (_1!30463 (h!59082 oldBucket!34))) (Some!12324 (_2!30463 (h!59082 oldBucket!34))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1074 (List!52879 K!14115 V!14361) Unit!128733)

(assert (=> d!1500665 (= lt!1880914 (lemmaContainsTupThenGetReturnValue!1074 lt!1880912 (_1!30463 (h!59082 oldBucket!34)) (_2!30463 (h!59082 oldBucket!34))))))

(declare-fun insertNoDuplicatedKeys!582 (List!52879 K!14115 V!14361) List!52879)

(assert (=> d!1500665 (= lt!1880912 (insertNoDuplicatedKeys!582 (toList!5861 lt!1880808) (_1!30463 (h!59082 oldBucket!34)) (_2!30463 (h!59082 oldBucket!34))))))

(assert (=> d!1500665 (= (+!2246 lt!1880808 (h!59082 oldBucket!34)) lt!1880913)))

(declare-fun b!4715899 () Bool)

(declare-fun res!1994062 () Bool)

(assert (=> b!4715899 (=> (not res!1994062) (not e!2941237))))

(assert (=> b!4715899 (= res!1994062 (= (getValueByKey!1931 (toList!5861 lt!1880913) (_1!30463 (h!59082 oldBucket!34))) (Some!12324 (_2!30463 (h!59082 oldBucket!34)))))))

(declare-fun b!4715900 () Bool)

(declare-fun contains!16097 (List!52879 tuple2!54338) Bool)

(assert (=> b!4715900 (= e!2941237 (contains!16097 (toList!5861 lt!1880913) (h!59082 oldBucket!34)))))

(assert (= (and d!1500665 res!1994061) b!4715899))

(assert (= (and b!4715899 res!1994062) b!4715900))

(declare-fun m!5645159 () Bool)

(assert (=> d!1500665 m!5645159))

(declare-fun m!5645161 () Bool)

(assert (=> d!1500665 m!5645161))

(declare-fun m!5645163 () Bool)

(assert (=> d!1500665 m!5645163))

(declare-fun m!5645165 () Bool)

(assert (=> d!1500665 m!5645165))

(declare-fun m!5645167 () Bool)

(assert (=> b!4715899 m!5645167))

(declare-fun m!5645169 () Bool)

(assert (=> b!4715900 m!5645169))

(assert (=> b!4715818 d!1500665))

(declare-fun d!1500671 () Bool)

(declare-fun e!2941238 () Bool)

(assert (=> d!1500671 e!2941238))

(declare-fun res!1994063 () Bool)

(assert (=> d!1500671 (=> (not res!1994063) (not e!2941238))))

(declare-fun lt!1880919 () ListMap!5225)

(assert (=> d!1500671 (= res!1994063 (contains!16093 lt!1880919 (_1!30463 (h!59082 oldBucket!34))))))

(declare-fun lt!1880918 () List!52879)

(assert (=> d!1500671 (= lt!1880919 (ListMap!5226 lt!1880918))))

(declare-fun lt!1880917 () Unit!128733)

(declare-fun lt!1880920 () Unit!128733)

(assert (=> d!1500671 (= lt!1880917 lt!1880920)))

(assert (=> d!1500671 (= (getValueByKey!1931 lt!1880918 (_1!30463 (h!59082 oldBucket!34))) (Some!12324 (_2!30463 (h!59082 oldBucket!34))))))

(assert (=> d!1500671 (= lt!1880920 (lemmaContainsTupThenGetReturnValue!1074 lt!1880918 (_1!30463 (h!59082 oldBucket!34)) (_2!30463 (h!59082 oldBucket!34))))))

(assert (=> d!1500671 (= lt!1880918 (insertNoDuplicatedKeys!582 (toList!5861 lt!1880824) (_1!30463 (h!59082 oldBucket!34)) (_2!30463 (h!59082 oldBucket!34))))))

(assert (=> d!1500671 (= (+!2246 lt!1880824 (h!59082 oldBucket!34)) lt!1880919)))

(declare-fun b!4715901 () Bool)

(declare-fun res!1994064 () Bool)

(assert (=> b!4715901 (=> (not res!1994064) (not e!2941238))))

(assert (=> b!4715901 (= res!1994064 (= (getValueByKey!1931 (toList!5861 lt!1880919) (_1!30463 (h!59082 oldBucket!34))) (Some!12324 (_2!30463 (h!59082 oldBucket!34)))))))

(declare-fun b!4715902 () Bool)

(assert (=> b!4715902 (= e!2941238 (contains!16097 (toList!5861 lt!1880919) (h!59082 oldBucket!34)))))

(assert (= (and d!1500671 res!1994063) b!4715901))

(assert (= (and b!4715901 res!1994064) b!4715902))

(declare-fun m!5645173 () Bool)

(assert (=> d!1500671 m!5645173))

(declare-fun m!5645175 () Bool)

(assert (=> d!1500671 m!5645175))

(declare-fun m!5645177 () Bool)

(assert (=> d!1500671 m!5645177))

(declare-fun m!5645179 () Bool)

(assert (=> d!1500671 m!5645179))

(declare-fun m!5645181 () Bool)

(assert (=> b!4715901 m!5645181))

(declare-fun m!5645183 () Bool)

(assert (=> b!4715902 m!5645183))

(assert (=> b!4715818 d!1500671))

(declare-fun b!4715955 () Bool)

(assert (=> b!4715955 true))

(declare-fun bs!1104535 () Bool)

(declare-fun b!4715953 () Bool)

(assert (= bs!1104535 (and b!4715953 b!4715955)))

(declare-fun lambda!214043 () Int)

(declare-fun lambda!214042 () Int)

(assert (=> bs!1104535 (= lambda!214043 lambda!214042)))

(assert (=> b!4715953 true))

(declare-fun lt!1881037 () ListMap!5225)

(declare-fun lambda!214044 () Int)

(assert (=> bs!1104535 (= (= lt!1881037 lt!1880822) (= lambda!214044 lambda!214042))))

(assert (=> b!4715953 (= (= lt!1881037 lt!1880822) (= lambda!214044 lambda!214043))))

(assert (=> b!4715953 true))

(declare-fun bs!1104536 () Bool)

(declare-fun d!1500675 () Bool)

(assert (= bs!1104536 (and d!1500675 b!4715955)))

(declare-fun lambda!214045 () Int)

(declare-fun lt!1881032 () ListMap!5225)

(assert (=> bs!1104536 (= (= lt!1881032 lt!1880822) (= lambda!214045 lambda!214042))))

(declare-fun bs!1104537 () Bool)

(assert (= bs!1104537 (and d!1500675 b!4715953)))

(assert (=> bs!1104537 (= (= lt!1881032 lt!1880822) (= lambda!214045 lambda!214043))))

(assert (=> bs!1104537 (= (= lt!1881032 lt!1881037) (= lambda!214045 lambda!214044))))

(assert (=> d!1500675 true))

(declare-fun e!2941279 () ListMap!5225)

(assert (=> b!4715953 (= e!2941279 lt!1881037)))

(declare-fun lt!1881030 () ListMap!5225)

(assert (=> b!4715953 (= lt!1881030 (+!2246 lt!1880822 (h!59082 (_2!30464 (h!59083 (toList!5862 lm!2023))))))))

(assert (=> b!4715953 (= lt!1881037 (addToMapMapFromBucket!1416 (t!360129 (_2!30464 (h!59083 (toList!5862 lm!2023)))) (+!2246 lt!1880822 (h!59082 (_2!30464 (h!59083 (toList!5862 lm!2023)))))))))

(declare-fun lt!1881046 () Unit!128733)

(declare-fun call!329716 () Unit!128733)

(assert (=> b!4715953 (= lt!1881046 call!329716)))

(declare-fun forall!11537 (List!52879 Int) Bool)

(assert (=> b!4715953 (forall!11537 (toList!5861 lt!1880822) lambda!214043)))

(declare-fun lt!1881045 () Unit!128733)

(assert (=> b!4715953 (= lt!1881045 lt!1881046)))

(assert (=> b!4715953 (forall!11537 (toList!5861 lt!1881030) lambda!214044)))

(declare-fun lt!1881047 () Unit!128733)

(declare-fun Unit!128744 () Unit!128733)

(assert (=> b!4715953 (= lt!1881047 Unit!128744)))

(assert (=> b!4715953 (forall!11537 (t!360129 (_2!30464 (h!59083 (toList!5862 lm!2023)))) lambda!214044)))

(declare-fun lt!1881038 () Unit!128733)

(declare-fun Unit!128745 () Unit!128733)

(assert (=> b!4715953 (= lt!1881038 Unit!128745)))

(declare-fun lt!1881027 () Unit!128733)

(declare-fun Unit!128747 () Unit!128733)

(assert (=> b!4715953 (= lt!1881027 Unit!128747)))

(declare-fun lt!1881034 () Unit!128733)

(declare-fun forallContained!3606 (List!52879 Int tuple2!54338) Unit!128733)

(assert (=> b!4715953 (= lt!1881034 (forallContained!3606 (toList!5861 lt!1881030) lambda!214044 (h!59082 (_2!30464 (h!59083 (toList!5862 lm!2023))))))))

(assert (=> b!4715953 (contains!16093 lt!1881030 (_1!30463 (h!59082 (_2!30464 (h!59083 (toList!5862 lm!2023))))))))

(declare-fun lt!1881035 () Unit!128733)

(declare-fun Unit!128748 () Unit!128733)

(assert (=> b!4715953 (= lt!1881035 Unit!128748)))

(assert (=> b!4715953 (contains!16093 lt!1881037 (_1!30463 (h!59082 (_2!30464 (h!59083 (toList!5862 lm!2023))))))))

(declare-fun lt!1881036 () Unit!128733)

(declare-fun Unit!128750 () Unit!128733)

(assert (=> b!4715953 (= lt!1881036 Unit!128750)))

(assert (=> b!4715953 (forall!11537 (_2!30464 (h!59083 (toList!5862 lm!2023))) lambda!214044)))

(declare-fun lt!1881028 () Unit!128733)

(declare-fun Unit!128751 () Unit!128733)

(assert (=> b!4715953 (= lt!1881028 Unit!128751)))

(declare-fun call!329715 () Bool)

(assert (=> b!4715953 call!329715))

(declare-fun lt!1881041 () Unit!128733)

(declare-fun Unit!128752 () Unit!128733)

(assert (=> b!4715953 (= lt!1881041 Unit!128752)))

(declare-fun lt!1881044 () Unit!128733)

(declare-fun Unit!128753 () Unit!128733)

(assert (=> b!4715953 (= lt!1881044 Unit!128753)))

(declare-fun lt!1881042 () Unit!128733)

(declare-fun addForallContainsKeyThenBeforeAdding!779 (ListMap!5225 ListMap!5225 K!14115 V!14361) Unit!128733)

(assert (=> b!4715953 (= lt!1881042 (addForallContainsKeyThenBeforeAdding!779 lt!1880822 lt!1881037 (_1!30463 (h!59082 (_2!30464 (h!59083 (toList!5862 lm!2023))))) (_2!30463 (h!59082 (_2!30464 (h!59083 (toList!5862 lm!2023)))))))))

(assert (=> b!4715953 (forall!11537 (toList!5861 lt!1880822) lambda!214044)))

(declare-fun lt!1881033 () Unit!128733)

(assert (=> b!4715953 (= lt!1881033 lt!1881042)))

(declare-fun call!329714 () Bool)

(assert (=> b!4715953 call!329714))

(declare-fun lt!1881043 () Unit!128733)

(declare-fun Unit!128755 () Unit!128733)

(assert (=> b!4715953 (= lt!1881043 Unit!128755)))

(declare-fun res!1994108 () Bool)

(assert (=> b!4715953 (= res!1994108 (forall!11537 (_2!30464 (h!59083 (toList!5862 lm!2023))) lambda!214044))))

(declare-fun e!2941277 () Bool)

(assert (=> b!4715953 (=> (not res!1994108) (not e!2941277))))

(assert (=> b!4715953 e!2941277))

(declare-fun lt!1881039 () Unit!128733)

(declare-fun Unit!128756 () Unit!128733)

(assert (=> b!4715953 (= lt!1881039 Unit!128756)))

(declare-fun c!805494 () Bool)

(declare-fun bm!329709 () Bool)

(assert (=> bm!329709 (= call!329714 (forall!11537 (toList!5861 lt!1880822) (ite c!805494 lambda!214042 lambda!214044)))))

(declare-fun b!4715954 () Bool)

(declare-fun e!2941278 () Bool)

(declare-fun invariantList!1492 (List!52879) Bool)

(assert (=> b!4715954 (= e!2941278 (invariantList!1492 (toList!5861 lt!1881032)))))

(declare-fun bm!329710 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!780 (ListMap!5225) Unit!128733)

(assert (=> bm!329710 (= call!329716 (lemmaContainsAllItsOwnKeys!780 lt!1880822))))

(assert (=> b!4715955 (= e!2941279 lt!1880822)))

(declare-fun lt!1881031 () Unit!128733)

(assert (=> b!4715955 (= lt!1881031 call!329716)))

(assert (=> b!4715955 call!329714))

(declare-fun lt!1881040 () Unit!128733)

(assert (=> b!4715955 (= lt!1881040 lt!1881031)))

(assert (=> b!4715955 call!329715))

(declare-fun lt!1881029 () Unit!128733)

(declare-fun Unit!128757 () Unit!128733)

(assert (=> b!4715955 (= lt!1881029 Unit!128757)))

(assert (=> d!1500675 e!2941278))

(declare-fun res!1994107 () Bool)

(assert (=> d!1500675 (=> (not res!1994107) (not e!2941278))))

(assert (=> d!1500675 (= res!1994107 (forall!11537 (_2!30464 (h!59083 (toList!5862 lm!2023))) lambda!214045))))

(assert (=> d!1500675 (= lt!1881032 e!2941279)))

(assert (=> d!1500675 (= c!805494 ((_ is Nil!52755) (_2!30464 (h!59083 (toList!5862 lm!2023)))))))

(assert (=> d!1500675 (noDuplicateKeys!1986 (_2!30464 (h!59083 (toList!5862 lm!2023))))))

(assert (=> d!1500675 (= (addToMapMapFromBucket!1416 (_2!30464 (h!59083 (toList!5862 lm!2023))) lt!1880822) lt!1881032)))

(declare-fun b!4715956 () Bool)

(assert (=> b!4715956 (= e!2941277 (forall!11537 (toList!5861 lt!1880822) lambda!214044))))

(declare-fun bm!329711 () Bool)

(assert (=> bm!329711 (= call!329715 (forall!11537 (ite c!805494 (toList!5861 lt!1880822) (toList!5861 lt!1881030)) (ite c!805494 lambda!214042 lambda!214044)))))

(declare-fun b!4715957 () Bool)

(declare-fun res!1994106 () Bool)

(assert (=> b!4715957 (=> (not res!1994106) (not e!2941278))))

(assert (=> b!4715957 (= res!1994106 (forall!11537 (toList!5861 lt!1880822) lambda!214045))))

(assert (= (and d!1500675 c!805494) b!4715955))

(assert (= (and d!1500675 (not c!805494)) b!4715953))

(assert (= (and b!4715953 res!1994108) b!4715956))

(assert (= (or b!4715955 b!4715953) bm!329710))

(assert (= (or b!4715955 b!4715953) bm!329709))

(assert (= (or b!4715955 b!4715953) bm!329711))

(assert (= (and d!1500675 res!1994107) b!4715957))

(assert (= (and b!4715957 res!1994106) b!4715954))

(declare-fun m!5645221 () Bool)

(assert (=> bm!329710 m!5645221))

(declare-fun m!5645223 () Bool)

(assert (=> d!1500675 m!5645223))

(declare-fun m!5645225 () Bool)

(assert (=> d!1500675 m!5645225))

(declare-fun m!5645227 () Bool)

(assert (=> bm!329711 m!5645227))

(declare-fun m!5645229 () Bool)

(assert (=> b!4715957 m!5645229))

(declare-fun m!5645231 () Bool)

(assert (=> b!4715953 m!5645231))

(declare-fun m!5645233 () Bool)

(assert (=> b!4715953 m!5645233))

(declare-fun m!5645235 () Bool)

(assert (=> b!4715953 m!5645235))

(declare-fun m!5645237 () Bool)

(assert (=> b!4715953 m!5645237))

(assert (=> b!4715953 m!5645233))

(declare-fun m!5645239 () Bool)

(assert (=> b!4715953 m!5645239))

(declare-fun m!5645241 () Bool)

(assert (=> b!4715953 m!5645241))

(declare-fun m!5645243 () Bool)

(assert (=> b!4715953 m!5645243))

(declare-fun m!5645245 () Bool)

(assert (=> b!4715953 m!5645245))

(declare-fun m!5645247 () Bool)

(assert (=> b!4715953 m!5645247))

(assert (=> b!4715953 m!5645239))

(declare-fun m!5645249 () Bool)

(assert (=> b!4715953 m!5645249))

(declare-fun m!5645251 () Bool)

(assert (=> b!4715953 m!5645251))

(declare-fun m!5645253 () Bool)

(assert (=> b!4715954 m!5645253))

(declare-fun m!5645255 () Bool)

(assert (=> bm!329709 m!5645255))

(assert (=> b!4715956 m!5645251))

(assert (=> b!4715807 d!1500675))

(declare-fun bs!1104549 () Bool)

(declare-fun d!1500693 () Bool)

(assert (= bs!1104549 (and d!1500693 start!479620)))

(declare-fun lambda!214053 () Int)

(assert (=> bs!1104549 (= lambda!214053 lambda!213967)))

(declare-fun lt!1881077 () ListMap!5225)

(assert (=> d!1500693 (invariantList!1492 (toList!5861 lt!1881077))))

(declare-fun e!2941288 () ListMap!5225)

(assert (=> d!1500693 (= lt!1881077 e!2941288)))

(declare-fun c!805499 () Bool)

(assert (=> d!1500693 (= c!805499 ((_ is Cons!52756) (t!360130 (toList!5862 lm!2023))))))

(assert (=> d!1500693 (forall!11535 (t!360130 (toList!5862 lm!2023)) lambda!214053)))

(assert (=> d!1500693 (= (extractMap!2012 (t!360130 (toList!5862 lm!2023))) lt!1881077)))

(declare-fun b!4715976 () Bool)

(assert (=> b!4715976 (= e!2941288 (addToMapMapFromBucket!1416 (_2!30464 (h!59083 (t!360130 (toList!5862 lm!2023)))) (extractMap!2012 (t!360130 (t!360130 (toList!5862 lm!2023))))))))

(declare-fun b!4715977 () Bool)

(assert (=> b!4715977 (= e!2941288 (ListMap!5226 Nil!52755))))

(assert (= (and d!1500693 c!805499) b!4715976))

(assert (= (and d!1500693 (not c!805499)) b!4715977))

(declare-fun m!5645325 () Bool)

(assert (=> d!1500693 m!5645325))

(declare-fun m!5645327 () Bool)

(assert (=> d!1500693 m!5645327))

(declare-fun m!5645329 () Bool)

(assert (=> b!4715976 m!5645329))

(assert (=> b!4715976 m!5645329))

(declare-fun m!5645331 () Bool)

(assert (=> b!4715976 m!5645331))

(assert (=> b!4715807 d!1500693))

(declare-fun d!1500705 () Bool)

(assert (=> d!1500705 (= (tail!8932 lm!2023) (ListLongMap!4392 (tail!8934 (toList!5862 lm!2023))))))

(declare-fun bs!1104550 () Bool)

(assert (= bs!1104550 d!1500705))

(declare-fun m!5645333 () Bool)

(assert (=> bs!1104550 m!5645333))

(assert (=> b!4715807 d!1500705))

(declare-fun b!4715989 () Bool)

(declare-fun e!2941294 () List!52879)

(assert (=> b!4715989 (= e!2941294 Nil!52755)))

(declare-fun b!4715987 () Bool)

(declare-fun e!2941293 () List!52879)

(assert (=> b!4715987 (= e!2941293 e!2941294)))

(declare-fun c!805505 () Bool)

(assert (=> b!4715987 (= c!805505 ((_ is Cons!52755) lt!1880806))))

(declare-fun b!4715988 () Bool)

(assert (=> b!4715988 (= e!2941294 (Cons!52755 (h!59082 lt!1880806) (removePairForKey!1581 (t!360129 lt!1880806) key!4653)))))

(declare-fun b!4715986 () Bool)

(assert (=> b!4715986 (= e!2941293 (t!360129 lt!1880806))))

(declare-fun d!1500707 () Bool)

(declare-fun lt!1881082 () List!52879)

(assert (=> d!1500707 (not (containsKey!3319 lt!1881082 key!4653))))

(assert (=> d!1500707 (= lt!1881082 e!2941293)))

(declare-fun c!805504 () Bool)

(assert (=> d!1500707 (= c!805504 (and ((_ is Cons!52755) lt!1880806) (= (_1!30463 (h!59082 lt!1880806)) key!4653)))))

(assert (=> d!1500707 (noDuplicateKeys!1986 lt!1880806)))

(assert (=> d!1500707 (= (removePairForKey!1581 lt!1880806 key!4653) lt!1881082)))

(assert (= (and d!1500707 c!805504) b!4715986))

(assert (= (and d!1500707 (not c!805504)) b!4715987))

(assert (= (and b!4715987 c!805505) b!4715988))

(assert (= (and b!4715987 (not c!805505)) b!4715989))

(declare-fun m!5645335 () Bool)

(assert (=> b!4715988 m!5645335))

(declare-fun m!5645337 () Bool)

(assert (=> d!1500707 m!5645337))

(declare-fun m!5645339 () Bool)

(assert (=> d!1500707 m!5645339))

(assert (=> b!4715808 d!1500707))

(declare-fun d!1500709 () Bool)

(assert (=> d!1500709 (= (tail!8933 newBucket!218) (t!360129 newBucket!218))))

(assert (=> b!4715808 d!1500709))

(declare-fun d!1500711 () Bool)

(assert (=> d!1500711 (= (tail!8933 oldBucket!34) (t!360129 oldBucket!34))))

(assert (=> b!4715808 d!1500711))

(declare-fun d!1500713 () Bool)

(declare-fun content!9368 (List!52879) (InoxSet tuple2!54338))

(assert (=> d!1500713 (= (eq!1113 lt!1880821 lt!1880816) (= (content!9368 (toList!5861 lt!1880821)) (content!9368 (toList!5861 lt!1880816))))))

(declare-fun bs!1104552 () Bool)

(assert (= bs!1104552 d!1500713))

(declare-fun m!5645349 () Bool)

(assert (=> bs!1104552 m!5645349))

(declare-fun m!5645353 () Bool)

(assert (=> bs!1104552 m!5645353))

(assert (=> b!4715797 d!1500713))

(declare-fun d!1500717 () Bool)

(assert (=> d!1500717 (= (head!10201 (toList!5862 lm!2023)) (h!59083 (toList!5862 lm!2023)))))

(assert (=> b!4715798 d!1500717))

(declare-fun b!4715996 () Bool)

(declare-fun e!2941298 () List!52879)

(assert (=> b!4715996 (= e!2941298 Nil!52755)))

(declare-fun b!4715994 () Bool)

(declare-fun e!2941297 () List!52879)

(assert (=> b!4715994 (= e!2941297 e!2941298)))

(declare-fun c!805507 () Bool)

(assert (=> b!4715994 (= c!805507 ((_ is Cons!52755) oldBucket!34))))

(declare-fun b!4715995 () Bool)

(assert (=> b!4715995 (= e!2941298 (Cons!52755 (h!59082 oldBucket!34) (removePairForKey!1581 (t!360129 oldBucket!34) key!4653)))))

(declare-fun b!4715993 () Bool)

(assert (=> b!4715993 (= e!2941297 (t!360129 oldBucket!34))))

(declare-fun d!1500721 () Bool)

(declare-fun lt!1881089 () List!52879)

(assert (=> d!1500721 (not (containsKey!3319 lt!1881089 key!4653))))

(assert (=> d!1500721 (= lt!1881089 e!2941297)))

(declare-fun c!805506 () Bool)

(assert (=> d!1500721 (= c!805506 (and ((_ is Cons!52755) oldBucket!34) (= (_1!30463 (h!59082 oldBucket!34)) key!4653)))))

(assert (=> d!1500721 (noDuplicateKeys!1986 oldBucket!34)))

(assert (=> d!1500721 (= (removePairForKey!1581 oldBucket!34 key!4653) lt!1881089)))

(assert (= (and d!1500721 c!805506) b!4715993))

(assert (= (and d!1500721 (not c!805506)) b!4715994))

(assert (= (and b!4715994 c!805507) b!4715995))

(assert (= (and b!4715994 (not c!805507)) b!4715996))

(assert (=> b!4715995 m!5644913))

(declare-fun m!5645377 () Bool)

(assert (=> d!1500721 m!5645377))

(assert (=> d!1500721 m!5644981))

(assert (=> b!4715819 d!1500721))

(declare-fun d!1500725 () Bool)

(declare-fun res!1994122 () Bool)

(declare-fun e!2941303 () Bool)

(assert (=> d!1500725 (=> res!1994122 e!2941303)))

(assert (=> d!1500725 (= res!1994122 (not ((_ is Cons!52755) newBucket!218)))))

(assert (=> d!1500725 (= (noDuplicateKeys!1986 newBucket!218) e!2941303)))

(declare-fun b!4716001 () Bool)

(declare-fun e!2941304 () Bool)

(assert (=> b!4716001 (= e!2941303 e!2941304)))

(declare-fun res!1994123 () Bool)

(assert (=> b!4716001 (=> (not res!1994123) (not e!2941304))))

(assert (=> b!4716001 (= res!1994123 (not (containsKey!3319 (t!360129 newBucket!218) (_1!30463 (h!59082 newBucket!218)))))))

(declare-fun b!4716002 () Bool)

(assert (=> b!4716002 (= e!2941304 (noDuplicateKeys!1986 (t!360129 newBucket!218)))))

(assert (= (and d!1500725 (not res!1994122)) b!4716001))

(assert (= (and b!4716001 res!1994123) b!4716002))

(declare-fun m!5645379 () Bool)

(assert (=> b!4716001 m!5645379))

(declare-fun m!5645381 () Bool)

(assert (=> b!4716002 m!5645381))

(assert (=> b!4715804 d!1500725))

(declare-fun bs!1104553 () Bool)

(declare-fun d!1500727 () Bool)

(assert (= bs!1104553 (and d!1500727 b!4715955)))

(declare-fun lambda!214056 () Int)

(assert (=> bs!1104553 (not (= lambda!214056 lambda!214042))))

(declare-fun bs!1104554 () Bool)

(assert (= bs!1104554 (and d!1500727 b!4715953)))

(assert (=> bs!1104554 (not (= lambda!214056 lambda!214043))))

(assert (=> bs!1104554 (not (= lambda!214056 lambda!214044))))

(declare-fun bs!1104555 () Bool)

(assert (= bs!1104555 (and d!1500727 d!1500675)))

(assert (=> bs!1104555 (not (= lambda!214056 lambda!214045))))

(assert (=> d!1500727 true))

(assert (=> d!1500727 true))

(assert (=> d!1500727 (= (allKeysSameHash!1812 oldBucket!34 hash!405 hashF!1323) (forall!11537 oldBucket!34 lambda!214056))))

(declare-fun bs!1104556 () Bool)

(assert (= bs!1104556 d!1500727))

(declare-fun m!5645383 () Bool)

(assert (=> bs!1104556 m!5645383))

(assert (=> b!4715815 d!1500727))

(declare-fun d!1500729 () Bool)

(assert (=> d!1500729 (= (eq!1113 (extractMap!2012 (Cons!52756 lt!1880829 lt!1880810)) (-!742 (extractMap!2012 (Cons!52756 lt!1880811 lt!1880810)) key!4653)) (= (content!9368 (toList!5861 (extractMap!2012 (Cons!52756 lt!1880829 lt!1880810)))) (content!9368 (toList!5861 (-!742 (extractMap!2012 (Cons!52756 lt!1880811 lt!1880810)) key!4653)))))))

(declare-fun bs!1104557 () Bool)

(assert (= bs!1104557 d!1500729))

(declare-fun m!5645385 () Bool)

(assert (=> bs!1104557 m!5645385))

(declare-fun m!5645387 () Bool)

(assert (=> bs!1104557 m!5645387))

(assert (=> b!4715816 d!1500729))

(declare-fun bs!1104558 () Bool)

(declare-fun d!1500731 () Bool)

(assert (= bs!1104558 (and d!1500731 start!479620)))

(declare-fun lambda!214057 () Int)

(assert (=> bs!1104558 (= lambda!214057 lambda!213967)))

(declare-fun bs!1104559 () Bool)

(assert (= bs!1104559 (and d!1500731 d!1500693)))

(assert (=> bs!1104559 (= lambda!214057 lambda!214053)))

(declare-fun lt!1881090 () ListMap!5225)

(assert (=> d!1500731 (invariantList!1492 (toList!5861 lt!1881090))))

(declare-fun e!2941305 () ListMap!5225)

(assert (=> d!1500731 (= lt!1881090 e!2941305)))

(declare-fun c!805508 () Bool)

(assert (=> d!1500731 (= c!805508 ((_ is Cons!52756) (Cons!52756 lt!1880829 (t!360130 (toList!5862 lm!2023)))))))

(assert (=> d!1500731 (forall!11535 (Cons!52756 lt!1880829 (t!360130 (toList!5862 lm!2023))) lambda!214057)))

(assert (=> d!1500731 (= (extractMap!2012 (Cons!52756 lt!1880829 (t!360130 (toList!5862 lm!2023)))) lt!1881090)))

(declare-fun b!4716007 () Bool)

(assert (=> b!4716007 (= e!2941305 (addToMapMapFromBucket!1416 (_2!30464 (h!59083 (Cons!52756 lt!1880829 (t!360130 (toList!5862 lm!2023))))) (extractMap!2012 (t!360130 (Cons!52756 lt!1880829 (t!360130 (toList!5862 lm!2023)))))))))

(declare-fun b!4716008 () Bool)

(assert (=> b!4716008 (= e!2941305 (ListMap!5226 Nil!52755))))

(assert (= (and d!1500731 c!805508) b!4716007))

(assert (= (and d!1500731 (not c!805508)) b!4716008))

(declare-fun m!5645389 () Bool)

(assert (=> d!1500731 m!5645389))

(declare-fun m!5645391 () Bool)

(assert (=> d!1500731 m!5645391))

(declare-fun m!5645393 () Bool)

(assert (=> b!4716007 m!5645393))

(assert (=> b!4716007 m!5645393))

(declare-fun m!5645395 () Bool)

(assert (=> b!4716007 m!5645395))

(assert (=> b!4715816 d!1500731))

(declare-fun bs!1104560 () Bool)

(declare-fun d!1500733 () Bool)

(assert (= bs!1104560 (and d!1500733 start!479620)))

(declare-fun lambda!214058 () Int)

(assert (=> bs!1104560 (= lambda!214058 lambda!213967)))

(declare-fun bs!1104561 () Bool)

(assert (= bs!1104561 (and d!1500733 d!1500693)))

(assert (=> bs!1104561 (= lambda!214058 lambda!214053)))

(declare-fun bs!1104562 () Bool)

(assert (= bs!1104562 (and d!1500733 d!1500731)))

(assert (=> bs!1104562 (= lambda!214058 lambda!214057)))

(declare-fun lt!1881091 () ListMap!5225)

(assert (=> d!1500733 (invariantList!1492 (toList!5861 lt!1881091))))

(declare-fun e!2941306 () ListMap!5225)

(assert (=> d!1500733 (= lt!1881091 e!2941306)))

(declare-fun c!805509 () Bool)

(assert (=> d!1500733 (= c!805509 ((_ is Cons!52756) (Cons!52756 lt!1880829 lt!1880810)))))

(assert (=> d!1500733 (forall!11535 (Cons!52756 lt!1880829 lt!1880810) lambda!214058)))

(assert (=> d!1500733 (= (extractMap!2012 (Cons!52756 lt!1880829 lt!1880810)) lt!1881091)))

(declare-fun b!4716009 () Bool)

(assert (=> b!4716009 (= e!2941306 (addToMapMapFromBucket!1416 (_2!30464 (h!59083 (Cons!52756 lt!1880829 lt!1880810))) (extractMap!2012 (t!360130 (Cons!52756 lt!1880829 lt!1880810)))))))

(declare-fun b!4716010 () Bool)

(assert (=> b!4716010 (= e!2941306 (ListMap!5226 Nil!52755))))

(assert (= (and d!1500733 c!805509) b!4716009))

(assert (= (and d!1500733 (not c!805509)) b!4716010))

(declare-fun m!5645397 () Bool)

(assert (=> d!1500733 m!5645397))

(declare-fun m!5645399 () Bool)

(assert (=> d!1500733 m!5645399))

(declare-fun m!5645401 () Bool)

(assert (=> b!4716009 m!5645401))

(assert (=> b!4716009 m!5645401))

(declare-fun m!5645403 () Bool)

(assert (=> b!4716009 m!5645403))

(assert (=> b!4715816 d!1500733))

(declare-fun d!1500735 () Bool)

(assert (=> d!1500735 (= (eq!1113 lt!1880817 lt!1880824) (= (content!9368 (toList!5861 lt!1880817)) (content!9368 (toList!5861 lt!1880824))))))

(declare-fun bs!1104563 () Bool)

(assert (= bs!1104563 d!1500735))

(declare-fun m!5645405 () Bool)

(assert (=> bs!1104563 m!5645405))

(declare-fun m!5645407 () Bool)

(assert (=> bs!1104563 m!5645407))

(assert (=> b!4715816 d!1500735))

(declare-fun d!1500737 () Bool)

(declare-fun e!2941307 () Bool)

(assert (=> d!1500737 e!2941307))

(declare-fun res!1994124 () Bool)

(assert (=> d!1500737 (=> (not res!1994124) (not e!2941307))))

(declare-fun lt!1881092 () ListMap!5225)

(assert (=> d!1500737 (= res!1994124 (not (contains!16093 lt!1881092 key!4653)))))

(assert (=> d!1500737 (= lt!1881092 (ListMap!5226 (removePresrvNoDuplicatedKeys!395 (toList!5861 lt!1880808) key!4653)))))

(assert (=> d!1500737 (= (-!742 lt!1880808 key!4653) lt!1881092)))

(declare-fun b!4716011 () Bool)

(assert (=> b!4716011 (= e!2941307 (= ((_ map and) (content!9367 (keys!18927 lt!1880808)) ((_ map not) (store ((as const (Array K!14115 Bool)) false) key!4653 true))) (content!9367 (keys!18927 lt!1881092))))))

(assert (= (and d!1500737 res!1994124) b!4716011))

(declare-fun m!5645409 () Bool)

(assert (=> d!1500737 m!5645409))

(declare-fun m!5645411 () Bool)

(assert (=> d!1500737 m!5645411))

(declare-fun m!5645413 () Bool)

(assert (=> b!4716011 m!5645413))

(declare-fun m!5645415 () Bool)

(assert (=> b!4716011 m!5645415))

(declare-fun m!5645417 () Bool)

(assert (=> b!4716011 m!5645417))

(declare-fun m!5645419 () Bool)

(assert (=> b!4716011 m!5645419))

(assert (=> b!4716011 m!5645417))

(assert (=> b!4716011 m!5645109))

(assert (=> b!4716011 m!5645413))

(assert (=> b!4715816 d!1500737))

(declare-fun bs!1104572 () Bool)

(declare-fun d!1500739 () Bool)

(assert (= bs!1104572 (and d!1500739 start!479620)))

(declare-fun lambda!214062 () Int)

(assert (=> bs!1104572 (= lambda!214062 lambda!213967)))

(declare-fun bs!1104573 () Bool)

(assert (= bs!1104573 (and d!1500739 d!1500693)))

(assert (=> bs!1104573 (= lambda!214062 lambda!214053)))

(declare-fun bs!1104574 () Bool)

(assert (= bs!1104574 (and d!1500739 d!1500731)))

(assert (=> bs!1104574 (= lambda!214062 lambda!214057)))

(declare-fun bs!1104575 () Bool)

(assert (= bs!1104575 (and d!1500739 d!1500733)))

(assert (=> bs!1104575 (= lambda!214062 lambda!214058)))

(assert (=> d!1500739 (eq!1113 (extractMap!2012 (Cons!52756 (tuple2!54341 hash!405 lt!1880825) (tail!8934 (toList!5862 lt!1880827)))) (-!742 (extractMap!2012 (Cons!52756 (tuple2!54341 hash!405 (t!360129 oldBucket!34)) (tail!8934 (toList!5862 lt!1880827)))) key!4653))))

(declare-fun lt!1881120 () Unit!128733)

(declare-fun choose!33221 (ListLongMap!4391 (_ BitVec 64) List!52879 List!52879 K!14115 Hashable!6355) Unit!128733)

(assert (=> d!1500739 (= lt!1881120 (choose!33221 lt!1880827 hash!405 (t!360129 oldBucket!34) lt!1880825 key!4653 hashF!1323))))

(assert (=> d!1500739 (forall!11535 (toList!5862 lt!1880827) lambda!214062)))

(assert (=> d!1500739 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!104 lt!1880827 hash!405 (t!360129 oldBucket!34) lt!1880825 key!4653 hashF!1323) lt!1881120)))

(declare-fun bs!1104576 () Bool)

(assert (= bs!1104576 d!1500739))

(declare-fun m!5645447 () Bool)

(assert (=> bs!1104576 m!5645447))

(declare-fun m!5645449 () Bool)

(assert (=> bs!1104576 m!5645449))

(declare-fun m!5645451 () Bool)

(assert (=> bs!1104576 m!5645451))

(declare-fun m!5645453 () Bool)

(assert (=> bs!1104576 m!5645453))

(declare-fun m!5645455 () Bool)

(assert (=> bs!1104576 m!5645455))

(assert (=> bs!1104576 m!5645451))

(declare-fun m!5645461 () Bool)

(assert (=> bs!1104576 m!5645461))

(declare-fun m!5645463 () Bool)

(assert (=> bs!1104576 m!5645463))

(assert (=> bs!1104576 m!5645453))

(assert (=> bs!1104576 m!5645461))

(assert (=> b!4715816 d!1500739))

(declare-fun bs!1104577 () Bool)

(declare-fun d!1500747 () Bool)

(assert (= bs!1104577 (and d!1500747 start!479620)))

(declare-fun lambda!214063 () Int)

(assert (=> bs!1104577 (= lambda!214063 lambda!213967)))

(declare-fun bs!1104578 () Bool)

(assert (= bs!1104578 (and d!1500747 d!1500739)))

(assert (=> bs!1104578 (= lambda!214063 lambda!214062)))

(declare-fun bs!1104579 () Bool)

(assert (= bs!1104579 (and d!1500747 d!1500693)))

(assert (=> bs!1104579 (= lambda!214063 lambda!214053)))

(declare-fun bs!1104581 () Bool)

(assert (= bs!1104581 (and d!1500747 d!1500731)))

(assert (=> bs!1104581 (= lambda!214063 lambda!214057)))

(declare-fun bs!1104582 () Bool)

(assert (= bs!1104582 (and d!1500747 d!1500733)))

(assert (=> bs!1104582 (= lambda!214063 lambda!214058)))

(declare-fun lt!1881121 () ListMap!5225)

(assert (=> d!1500747 (invariantList!1492 (toList!5861 lt!1881121))))

(declare-fun e!2941333 () ListMap!5225)

(assert (=> d!1500747 (= lt!1881121 e!2941333)))

(declare-fun c!805520 () Bool)

(assert (=> d!1500747 (= c!805520 ((_ is Cons!52756) (Cons!52756 lt!1880811 lt!1880810)))))

(assert (=> d!1500747 (forall!11535 (Cons!52756 lt!1880811 lt!1880810) lambda!214063)))

(assert (=> d!1500747 (= (extractMap!2012 (Cons!52756 lt!1880811 lt!1880810)) lt!1881121)))

(declare-fun b!4716047 () Bool)

(assert (=> b!4716047 (= e!2941333 (addToMapMapFromBucket!1416 (_2!30464 (h!59083 (Cons!52756 lt!1880811 lt!1880810))) (extractMap!2012 (t!360130 (Cons!52756 lt!1880811 lt!1880810)))))))

(declare-fun b!4716048 () Bool)

(assert (=> b!4716048 (= e!2941333 (ListMap!5226 Nil!52755))))

(assert (= (and d!1500747 c!805520) b!4716047))

(assert (= (and d!1500747 (not c!805520)) b!4716048))

(declare-fun m!5645467 () Bool)

(assert (=> d!1500747 m!5645467))

(declare-fun m!5645469 () Bool)

(assert (=> d!1500747 m!5645469))

(declare-fun m!5645471 () Bool)

(assert (=> b!4716047 m!5645471))

(assert (=> b!4716047 m!5645471))

(declare-fun m!5645473 () Bool)

(assert (=> b!4716047 m!5645473))

(assert (=> b!4715816 d!1500747))

(declare-fun d!1500751 () Bool)

(declare-fun e!2941334 () Bool)

(assert (=> d!1500751 e!2941334))

(declare-fun res!1994140 () Bool)

(assert (=> d!1500751 (=> (not res!1994140) (not e!2941334))))

(declare-fun lt!1881122 () ListMap!5225)

(assert (=> d!1500751 (= res!1994140 (not (contains!16093 lt!1881122 key!4653)))))

(assert (=> d!1500751 (= lt!1881122 (ListMap!5226 (removePresrvNoDuplicatedKeys!395 (toList!5861 (extractMap!2012 (Cons!52756 lt!1880811 lt!1880810))) key!4653)))))

(assert (=> d!1500751 (= (-!742 (extractMap!2012 (Cons!52756 lt!1880811 lt!1880810)) key!4653) lt!1881122)))

(declare-fun b!4716049 () Bool)

(assert (=> b!4716049 (= e!2941334 (= ((_ map and) (content!9367 (keys!18927 (extractMap!2012 (Cons!52756 lt!1880811 lt!1880810)))) ((_ map not) (store ((as const (Array K!14115 Bool)) false) key!4653 true))) (content!9367 (keys!18927 lt!1881122))))))

(assert (= (and d!1500751 res!1994140) b!4716049))

(declare-fun m!5645475 () Bool)

(assert (=> d!1500751 m!5645475))

(declare-fun m!5645477 () Bool)

(assert (=> d!1500751 m!5645477))

(declare-fun m!5645479 () Bool)

(assert (=> b!4716049 m!5645479))

(declare-fun m!5645481 () Bool)

(assert (=> b!4716049 m!5645481))

(declare-fun m!5645483 () Bool)

(assert (=> b!4716049 m!5645483))

(declare-fun m!5645485 () Bool)

(assert (=> b!4716049 m!5645485))

(assert (=> b!4716049 m!5644963))

(assert (=> b!4716049 m!5645483))

(assert (=> b!4716049 m!5645109))

(assert (=> b!4716049 m!5645479))

(assert (=> b!4715816 d!1500751))

(declare-fun d!1500753 () Bool)

(assert (=> d!1500753 (= (tail!8934 lt!1880820) (t!360130 lt!1880820))))

(assert (=> b!4715816 d!1500753))

(declare-fun d!1500755 () Bool)

(declare-fun e!2941335 () Bool)

(assert (=> d!1500755 e!2941335))

(declare-fun res!1994141 () Bool)

(assert (=> d!1500755 (=> (not res!1994141) (not e!2941335))))

(declare-fun lt!1881125 () ListMap!5225)

(assert (=> d!1500755 (= res!1994141 (contains!16093 lt!1881125 (_1!30463 (h!59082 oldBucket!34))))))

(declare-fun lt!1881124 () List!52879)

(assert (=> d!1500755 (= lt!1881125 (ListMap!5226 lt!1881124))))

(declare-fun lt!1881123 () Unit!128733)

(declare-fun lt!1881126 () Unit!128733)

(assert (=> d!1500755 (= lt!1881123 lt!1881126)))

(assert (=> d!1500755 (= (getValueByKey!1931 lt!1881124 (_1!30463 (h!59082 oldBucket!34))) (Some!12324 (_2!30463 (h!59082 oldBucket!34))))))

(assert (=> d!1500755 (= lt!1881126 (lemmaContainsTupThenGetReturnValue!1074 lt!1881124 (_1!30463 (h!59082 oldBucket!34)) (_2!30463 (h!59082 oldBucket!34))))))

(assert (=> d!1500755 (= lt!1881124 (insertNoDuplicatedKeys!582 (toList!5861 lt!1880819) (_1!30463 (h!59082 oldBucket!34)) (_2!30463 (h!59082 oldBucket!34))))))

(assert (=> d!1500755 (= (+!2246 lt!1880819 (h!59082 oldBucket!34)) lt!1881125)))

(declare-fun b!4716052 () Bool)

(declare-fun res!1994142 () Bool)

(assert (=> b!4716052 (=> (not res!1994142) (not e!2941335))))

(assert (=> b!4716052 (= res!1994142 (= (getValueByKey!1931 (toList!5861 lt!1881125) (_1!30463 (h!59082 oldBucket!34))) (Some!12324 (_2!30463 (h!59082 oldBucket!34)))))))

(declare-fun b!4716053 () Bool)

(assert (=> b!4716053 (= e!2941335 (contains!16097 (toList!5861 lt!1881125) (h!59082 oldBucket!34)))))

(assert (= (and d!1500755 res!1994141) b!4716052))

(assert (= (and b!4716052 res!1994142) b!4716053))

(declare-fun m!5645487 () Bool)

(assert (=> d!1500755 m!5645487))

(declare-fun m!5645489 () Bool)

(assert (=> d!1500755 m!5645489))

(declare-fun m!5645491 () Bool)

(assert (=> d!1500755 m!5645491))

(declare-fun m!5645493 () Bool)

(assert (=> d!1500755 m!5645493))

(declare-fun m!5645495 () Bool)

(assert (=> b!4716052 m!5645495))

(declare-fun m!5645497 () Bool)

(assert (=> b!4716053 m!5645497))

(assert (=> b!4715805 d!1500755))

(declare-fun d!1500757 () Bool)

(assert (=> d!1500757 (= (eq!1113 (addToMapMapFromBucket!1416 (Cons!52755 lt!1880833 lt!1880825) lt!1880822) (+!2246 (addToMapMapFromBucket!1416 lt!1880825 lt!1880822) lt!1880833)) (= (content!9368 (toList!5861 (addToMapMapFromBucket!1416 (Cons!52755 lt!1880833 lt!1880825) lt!1880822))) (content!9368 (toList!5861 (+!2246 (addToMapMapFromBucket!1416 lt!1880825 lt!1880822) lt!1880833)))))))

(declare-fun bs!1104587 () Bool)

(assert (= bs!1104587 d!1500757))

(declare-fun m!5645501 () Bool)

(assert (=> bs!1104587 m!5645501))

(declare-fun m!5645503 () Bool)

(assert (=> bs!1104587 m!5645503))

(assert (=> b!4715805 d!1500757))

(declare-fun d!1500761 () Bool)

(assert (=> d!1500761 (eq!1113 (addToMapMapFromBucket!1416 (Cons!52755 lt!1880833 lt!1880825) lt!1880822) (+!2246 (addToMapMapFromBucket!1416 lt!1880825 lt!1880822) lt!1880833))))

(declare-fun lt!1881134 () Unit!128733)

(declare-fun choose!33222 (tuple2!54338 List!52879 ListMap!5225) Unit!128733)

(assert (=> d!1500761 (= lt!1881134 (choose!33222 lt!1880833 lt!1880825 lt!1880822))))

(assert (=> d!1500761 (noDuplicateKeys!1986 lt!1880825)))

(assert (=> d!1500761 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!362 lt!1880833 lt!1880825 lt!1880822) lt!1881134)))

(declare-fun bs!1104597 () Bool)

(assert (= bs!1104597 d!1500761))

(assert (=> bs!1104597 m!5644865))

(assert (=> bs!1104597 m!5644869))

(assert (=> bs!1104597 m!5644865))

(declare-fun m!5645525 () Bool)

(assert (=> bs!1104597 m!5645525))

(declare-fun m!5645527 () Bool)

(assert (=> bs!1104597 m!5645527))

(assert (=> bs!1104597 m!5644867))

(assert (=> bs!1104597 m!5644867))

(assert (=> bs!1104597 m!5644869))

(assert (=> bs!1104597 m!5644871))

(assert (=> b!4715805 d!1500761))

(declare-fun d!1500771 () Bool)

(assert (=> d!1500771 (= (head!10202 oldBucket!34) (h!59082 oldBucket!34))))

(assert (=> b!4715805 d!1500771))

(declare-fun d!1500773 () Bool)

(assert (=> d!1500773 (= (eq!1113 (addToMapMapFromBucket!1416 (Cons!52755 lt!1880837 lt!1880806) lt!1880822) (+!2246 (addToMapMapFromBucket!1416 lt!1880806 lt!1880822) lt!1880837)) (= (content!9368 (toList!5861 (addToMapMapFromBucket!1416 (Cons!52755 lt!1880837 lt!1880806) lt!1880822))) (content!9368 (toList!5861 (+!2246 (addToMapMapFromBucket!1416 lt!1880806 lt!1880822) lt!1880837)))))))

(declare-fun bs!1104598 () Bool)

(assert (= bs!1104598 d!1500773))

(declare-fun m!5645529 () Bool)

(assert (=> bs!1104598 m!5645529))

(declare-fun m!5645531 () Bool)

(assert (=> bs!1104598 m!5645531))

(assert (=> b!4715805 d!1500773))

(declare-fun bs!1104599 () Bool)

(declare-fun d!1500775 () Bool)

(assert (= bs!1104599 (and d!1500775 start!479620)))

(declare-fun lambda!214068 () Int)

(assert (=> bs!1104599 (= lambda!214068 lambda!213967)))

(declare-fun bs!1104600 () Bool)

(assert (= bs!1104600 (and d!1500775 d!1500747)))

(assert (=> bs!1104600 (= lambda!214068 lambda!214063)))

(declare-fun bs!1104601 () Bool)

(assert (= bs!1104601 (and d!1500775 d!1500739)))

(assert (=> bs!1104601 (= lambda!214068 lambda!214062)))

(declare-fun bs!1104602 () Bool)

(assert (= bs!1104602 (and d!1500775 d!1500693)))

(assert (=> bs!1104602 (= lambda!214068 lambda!214053)))

(declare-fun bs!1104603 () Bool)

(assert (= bs!1104603 (and d!1500775 d!1500731)))

(assert (=> bs!1104603 (= lambda!214068 lambda!214057)))

(declare-fun bs!1104604 () Bool)

(assert (= bs!1104604 (and d!1500775 d!1500733)))

(assert (=> bs!1104604 (= lambda!214068 lambda!214058)))

(declare-fun lt!1881135 () ListMap!5225)

(assert (=> d!1500775 (invariantList!1492 (toList!5861 lt!1881135))))

(declare-fun e!2941338 () ListMap!5225)

(assert (=> d!1500775 (= lt!1881135 e!2941338)))

(declare-fun c!805522 () Bool)

(assert (=> d!1500775 (= c!805522 ((_ is Cons!52756) (Cons!52756 lt!1880831 (t!360130 (toList!5862 lm!2023)))))))

(assert (=> d!1500775 (forall!11535 (Cons!52756 lt!1880831 (t!360130 (toList!5862 lm!2023))) lambda!214068)))

(assert (=> d!1500775 (= (extractMap!2012 (Cons!52756 lt!1880831 (t!360130 (toList!5862 lm!2023)))) lt!1881135)))

(declare-fun b!4716060 () Bool)

(assert (=> b!4716060 (= e!2941338 (addToMapMapFromBucket!1416 (_2!30464 (h!59083 (Cons!52756 lt!1880831 (t!360130 (toList!5862 lm!2023))))) (extractMap!2012 (t!360130 (Cons!52756 lt!1880831 (t!360130 (toList!5862 lm!2023)))))))))

(declare-fun b!4716061 () Bool)

(assert (=> b!4716061 (= e!2941338 (ListMap!5226 Nil!52755))))

(assert (= (and d!1500775 c!805522) b!4716060))

(assert (= (and d!1500775 (not c!805522)) b!4716061))

(declare-fun m!5645533 () Bool)

(assert (=> d!1500775 m!5645533))

(declare-fun m!5645535 () Bool)

(assert (=> d!1500775 m!5645535))

(declare-fun m!5645537 () Bool)

(assert (=> b!4716060 m!5645537))

(assert (=> b!4716060 m!5645537))

(declare-fun m!5645539 () Bool)

(assert (=> b!4716060 m!5645539))

(assert (=> b!4715805 d!1500775))

(declare-fun bs!1104605 () Bool)

(declare-fun d!1500777 () Bool)

(assert (= bs!1104605 (and d!1500777 start!479620)))

(declare-fun lambda!214069 () Int)

(assert (=> bs!1104605 (= lambda!214069 lambda!213967)))

(declare-fun bs!1104607 () Bool)

(assert (= bs!1104607 (and d!1500777 d!1500775)))

(assert (=> bs!1104607 (= lambda!214069 lambda!214068)))

(declare-fun bs!1104608 () Bool)

(assert (= bs!1104608 (and d!1500777 d!1500747)))

(assert (=> bs!1104608 (= lambda!214069 lambda!214063)))

(declare-fun bs!1104609 () Bool)

(assert (= bs!1104609 (and d!1500777 d!1500739)))

(assert (=> bs!1104609 (= lambda!214069 lambda!214062)))

(declare-fun bs!1104610 () Bool)

(assert (= bs!1104610 (and d!1500777 d!1500693)))

(assert (=> bs!1104610 (= lambda!214069 lambda!214053)))

(declare-fun bs!1104611 () Bool)

(assert (= bs!1104611 (and d!1500777 d!1500731)))

(assert (=> bs!1104611 (= lambda!214069 lambda!214057)))

(declare-fun bs!1104612 () Bool)

(assert (= bs!1104612 (and d!1500777 d!1500733)))

(assert (=> bs!1104612 (= lambda!214069 lambda!214058)))

(declare-fun lt!1881138 () ListMap!5225)

(assert (=> d!1500777 (invariantList!1492 (toList!5861 lt!1881138))))

(declare-fun e!2941339 () ListMap!5225)

(assert (=> d!1500777 (= lt!1881138 e!2941339)))

(declare-fun c!805523 () Bool)

(assert (=> d!1500777 (= c!805523 ((_ is Cons!52756) lt!1880820))))

(assert (=> d!1500777 (forall!11535 lt!1880820 lambda!214069)))

(assert (=> d!1500777 (= (extractMap!2012 lt!1880820) lt!1881138)))

(declare-fun b!4716062 () Bool)

(assert (=> b!4716062 (= e!2941339 (addToMapMapFromBucket!1416 (_2!30464 (h!59083 lt!1880820)) (extractMap!2012 (t!360130 lt!1880820))))))

(declare-fun b!4716063 () Bool)

(assert (=> b!4716063 (= e!2941339 (ListMap!5226 Nil!52755))))

(assert (= (and d!1500777 c!805523) b!4716062))

(assert (= (and d!1500777 (not c!805523)) b!4716063))

(declare-fun m!5645543 () Bool)

(assert (=> d!1500777 m!5645543))

(declare-fun m!5645545 () Bool)

(assert (=> d!1500777 m!5645545))

(declare-fun m!5645547 () Bool)

(assert (=> b!4716062 m!5645547))

(assert (=> b!4716062 m!5645547))

(declare-fun m!5645553 () Bool)

(assert (=> b!4716062 m!5645553))

(assert (=> b!4715805 d!1500777))

(declare-fun d!1500781 () Bool)

(declare-fun e!2941341 () Bool)

(assert (=> d!1500781 e!2941341))

(declare-fun res!1994147 () Bool)

(assert (=> d!1500781 (=> (not res!1994147) (not e!2941341))))

(declare-fun lt!1881146 () ListMap!5225)

(assert (=> d!1500781 (= res!1994147 (contains!16093 lt!1881146 (_1!30463 lt!1880833)))))

(declare-fun lt!1881145 () List!52879)

(assert (=> d!1500781 (= lt!1881146 (ListMap!5226 lt!1881145))))

(declare-fun lt!1881144 () Unit!128733)

(declare-fun lt!1881147 () Unit!128733)

(assert (=> d!1500781 (= lt!1881144 lt!1881147)))

(assert (=> d!1500781 (= (getValueByKey!1931 lt!1881145 (_1!30463 lt!1880833)) (Some!12324 (_2!30463 lt!1880833)))))

(assert (=> d!1500781 (= lt!1881147 (lemmaContainsTupThenGetReturnValue!1074 lt!1881145 (_1!30463 lt!1880833) (_2!30463 lt!1880833)))))

(assert (=> d!1500781 (= lt!1881145 (insertNoDuplicatedKeys!582 (toList!5861 (addToMapMapFromBucket!1416 lt!1880825 lt!1880822)) (_1!30463 lt!1880833) (_2!30463 lt!1880833)))))

(assert (=> d!1500781 (= (+!2246 (addToMapMapFromBucket!1416 lt!1880825 lt!1880822) lt!1880833) lt!1881146)))

(declare-fun b!4716066 () Bool)

(declare-fun res!1994148 () Bool)

(assert (=> b!4716066 (=> (not res!1994148) (not e!2941341))))

(assert (=> b!4716066 (= res!1994148 (= (getValueByKey!1931 (toList!5861 lt!1881146) (_1!30463 lt!1880833)) (Some!12324 (_2!30463 lt!1880833))))))

(declare-fun b!4716067 () Bool)

(assert (=> b!4716067 (= e!2941341 (contains!16097 (toList!5861 lt!1881146) lt!1880833))))

(assert (= (and d!1500781 res!1994147) b!4716066))

(assert (= (and b!4716066 res!1994148) b!4716067))

(declare-fun m!5645563 () Bool)

(assert (=> d!1500781 m!5645563))

(declare-fun m!5645565 () Bool)

(assert (=> d!1500781 m!5645565))

(declare-fun m!5645567 () Bool)

(assert (=> d!1500781 m!5645567))

(declare-fun m!5645569 () Bool)

(assert (=> d!1500781 m!5645569))

(declare-fun m!5645571 () Bool)

(assert (=> b!4716066 m!5645571))

(declare-fun m!5645573 () Bool)

(assert (=> b!4716067 m!5645573))

(assert (=> b!4715805 d!1500781))

(declare-fun bs!1104619 () Bool)

(declare-fun d!1500785 () Bool)

(assert (= bs!1104619 (and d!1500785 start!479620)))

(declare-fun lambda!214071 () Int)

(assert (=> bs!1104619 (= lambda!214071 lambda!213967)))

(declare-fun bs!1104621 () Bool)

(assert (= bs!1104621 (and d!1500785 d!1500775)))

(assert (=> bs!1104621 (= lambda!214071 lambda!214068)))

(declare-fun bs!1104623 () Bool)

(assert (= bs!1104623 (and d!1500785 d!1500747)))

(assert (=> bs!1104623 (= lambda!214071 lambda!214063)))

(declare-fun bs!1104625 () Bool)

(assert (= bs!1104625 (and d!1500785 d!1500739)))

(assert (=> bs!1104625 (= lambda!214071 lambda!214062)))

(declare-fun bs!1104627 () Bool)

(assert (= bs!1104627 (and d!1500785 d!1500777)))

(assert (=> bs!1104627 (= lambda!214071 lambda!214069)))

(declare-fun bs!1104628 () Bool)

(assert (= bs!1104628 (and d!1500785 d!1500693)))

(assert (=> bs!1104628 (= lambda!214071 lambda!214053)))

(declare-fun bs!1104629 () Bool)

(assert (= bs!1104629 (and d!1500785 d!1500731)))

(assert (=> bs!1104629 (= lambda!214071 lambda!214057)))

(declare-fun bs!1104630 () Bool)

(assert (= bs!1104630 (and d!1500785 d!1500733)))

(assert (=> bs!1104630 (= lambda!214071 lambda!214058)))

(declare-fun lt!1881149 () ListMap!5225)

(assert (=> d!1500785 (invariantList!1492 (toList!5861 lt!1881149))))

(declare-fun e!2941343 () ListMap!5225)

(assert (=> d!1500785 (= lt!1881149 e!2941343)))

(declare-fun c!805525 () Bool)

(assert (=> d!1500785 (= c!805525 ((_ is Cons!52756) (Cons!52756 (tuple2!54341 hash!405 lt!1880806) (t!360130 (toList!5862 lm!2023)))))))

(assert (=> d!1500785 (forall!11535 (Cons!52756 (tuple2!54341 hash!405 lt!1880806) (t!360130 (toList!5862 lm!2023))) lambda!214071)))

(assert (=> d!1500785 (= (extractMap!2012 (Cons!52756 (tuple2!54341 hash!405 lt!1880806) (t!360130 (toList!5862 lm!2023)))) lt!1881149)))

(declare-fun b!4716070 () Bool)

(assert (=> b!4716070 (= e!2941343 (addToMapMapFromBucket!1416 (_2!30464 (h!59083 (Cons!52756 (tuple2!54341 hash!405 lt!1880806) (t!360130 (toList!5862 lm!2023))))) (extractMap!2012 (t!360130 (Cons!52756 (tuple2!54341 hash!405 lt!1880806) (t!360130 (toList!5862 lm!2023)))))))))

(declare-fun b!4716071 () Bool)

(assert (=> b!4716071 (= e!2941343 (ListMap!5226 Nil!52755))))

(assert (= (and d!1500785 c!805525) b!4716070))

(assert (= (and d!1500785 (not c!805525)) b!4716071))

(declare-fun m!5645583 () Bool)

(assert (=> d!1500785 m!5645583))

(declare-fun m!5645585 () Bool)

(assert (=> d!1500785 m!5645585))

(declare-fun m!5645587 () Bool)

(assert (=> b!4716070 m!5645587))

(assert (=> b!4716070 m!5645587))

(declare-fun m!5645589 () Bool)

(assert (=> b!4716070 m!5645589))

(assert (=> b!4715805 d!1500785))

(declare-fun d!1500789 () Bool)

(assert (=> d!1500789 (= (eq!1113 lt!1880816 (+!2246 lt!1880819 (h!59082 oldBucket!34))) (= (content!9368 (toList!5861 lt!1880816)) (content!9368 (toList!5861 (+!2246 lt!1880819 (h!59082 oldBucket!34))))))))

(declare-fun bs!1104631 () Bool)

(assert (= bs!1104631 d!1500789))

(assert (=> bs!1104631 m!5645353))

(declare-fun m!5645591 () Bool)

(assert (=> bs!1104631 m!5645591))

(assert (=> b!4715805 d!1500789))

(declare-fun d!1500791 () Bool)

(assert (=> d!1500791 (= (head!10202 newBucket!218) (h!59082 newBucket!218))))

(assert (=> b!4715805 d!1500791))

(declare-fun d!1500793 () Bool)

(assert (=> d!1500793 (eq!1113 (addToMapMapFromBucket!1416 (Cons!52755 lt!1880837 lt!1880806) lt!1880822) (+!2246 (addToMapMapFromBucket!1416 lt!1880806 lt!1880822) lt!1880837))))

(declare-fun lt!1881171 () Unit!128733)

(assert (=> d!1500793 (= lt!1881171 (choose!33222 lt!1880837 lt!1880806 lt!1880822))))

(assert (=> d!1500793 (noDuplicateKeys!1986 lt!1880806)))

(assert (=> d!1500793 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!362 lt!1880837 lt!1880806 lt!1880822) lt!1881171)))

(declare-fun bs!1104636 () Bool)

(assert (= bs!1104636 d!1500793))

(assert (=> bs!1104636 m!5644889))

(assert (=> bs!1104636 m!5644881))

(assert (=> bs!1104636 m!5644889))

(assert (=> bs!1104636 m!5645339))

(declare-fun m!5645593 () Bool)

(assert (=> bs!1104636 m!5645593))

(assert (=> bs!1104636 m!5644875))

(assert (=> bs!1104636 m!5644875))

(assert (=> bs!1104636 m!5644881))

(assert (=> bs!1104636 m!5644883))

(assert (=> b!4715805 d!1500793))

(declare-fun bs!1104640 () Bool)

(declare-fun b!4716079 () Bool)

(assert (= bs!1104640 (and b!4716079 d!1500727)))

(declare-fun lambda!214074 () Int)

(assert (=> bs!1104640 (not (= lambda!214074 lambda!214056))))

(declare-fun bs!1104643 () Bool)

(assert (= bs!1104643 (and b!4716079 b!4715953)))

(assert (=> bs!1104643 (= (= lt!1880822 lt!1881037) (= lambda!214074 lambda!214044))))

(assert (=> bs!1104643 (= lambda!214074 lambda!214043)))

(declare-fun bs!1104644 () Bool)

(assert (= bs!1104644 (and b!4716079 d!1500675)))

(assert (=> bs!1104644 (= (= lt!1880822 lt!1881032) (= lambda!214074 lambda!214045))))

(declare-fun bs!1104645 () Bool)

(assert (= bs!1104645 (and b!4716079 b!4715955)))

(assert (=> bs!1104645 (= lambda!214074 lambda!214042)))

(assert (=> b!4716079 true))

(declare-fun bs!1104646 () Bool)

(declare-fun b!4716077 () Bool)

(assert (= bs!1104646 (and b!4716077 d!1500727)))

(declare-fun lambda!214076 () Int)

(assert (=> bs!1104646 (not (= lambda!214076 lambda!214056))))

(declare-fun bs!1104647 () Bool)

(assert (= bs!1104647 (and b!4716077 b!4715953)))

(assert (=> bs!1104647 (= (= lt!1880822 lt!1881037) (= lambda!214076 lambda!214044))))

(declare-fun bs!1104648 () Bool)

(assert (= bs!1104648 (and b!4716077 b!4716079)))

(assert (=> bs!1104648 (= lambda!214076 lambda!214074)))

(assert (=> bs!1104647 (= lambda!214076 lambda!214043)))

(declare-fun bs!1104649 () Bool)

(assert (= bs!1104649 (and b!4716077 d!1500675)))

(assert (=> bs!1104649 (= (= lt!1880822 lt!1881032) (= lambda!214076 lambda!214045))))

(declare-fun bs!1104650 () Bool)

(assert (= bs!1104650 (and b!4716077 b!4715955)))

(assert (=> bs!1104650 (= lambda!214076 lambda!214042)))

(assert (=> b!4716077 true))

(declare-fun lt!1881182 () ListMap!5225)

(declare-fun lambda!214077 () Int)

(assert (=> b!4716077 (= (= lt!1881182 lt!1880822) (= lambda!214077 lambda!214076))))

(assert (=> bs!1104646 (not (= lambda!214077 lambda!214056))))

(assert (=> bs!1104647 (= (= lt!1881182 lt!1881037) (= lambda!214077 lambda!214044))))

(assert (=> bs!1104648 (= (= lt!1881182 lt!1880822) (= lambda!214077 lambda!214074))))

(assert (=> bs!1104647 (= (= lt!1881182 lt!1880822) (= lambda!214077 lambda!214043))))

(assert (=> bs!1104649 (= (= lt!1881182 lt!1881032) (= lambda!214077 lambda!214045))))

(assert (=> bs!1104650 (= (= lt!1881182 lt!1880822) (= lambda!214077 lambda!214042))))

(assert (=> b!4716077 true))

(declare-fun bs!1104657 () Bool)

(declare-fun d!1500795 () Bool)

(assert (= bs!1104657 (and d!1500795 b!4716077)))

(declare-fun lambda!214079 () Int)

(declare-fun lt!1881177 () ListMap!5225)

(assert (=> bs!1104657 (= (= lt!1881177 lt!1880822) (= lambda!214079 lambda!214076))))

(declare-fun bs!1104658 () Bool)

(assert (= bs!1104658 (and d!1500795 d!1500727)))

(assert (=> bs!1104658 (not (= lambda!214079 lambda!214056))))

(assert (=> bs!1104657 (= (= lt!1881177 lt!1881182) (= lambda!214079 lambda!214077))))

(declare-fun bs!1104659 () Bool)

(assert (= bs!1104659 (and d!1500795 b!4715953)))

(assert (=> bs!1104659 (= (= lt!1881177 lt!1881037) (= lambda!214079 lambda!214044))))

(declare-fun bs!1104660 () Bool)

(assert (= bs!1104660 (and d!1500795 b!4716079)))

(assert (=> bs!1104660 (= (= lt!1881177 lt!1880822) (= lambda!214079 lambda!214074))))

(assert (=> bs!1104659 (= (= lt!1881177 lt!1880822) (= lambda!214079 lambda!214043))))

(declare-fun bs!1104661 () Bool)

(assert (= bs!1104661 (and d!1500795 d!1500675)))

(assert (=> bs!1104661 (= (= lt!1881177 lt!1881032) (= lambda!214079 lambda!214045))))

(declare-fun bs!1104662 () Bool)

(assert (= bs!1104662 (and d!1500795 b!4715955)))

(assert (=> bs!1104662 (= (= lt!1881177 lt!1880822) (= lambda!214079 lambda!214042))))

(assert (=> d!1500795 true))

(declare-fun e!2941349 () ListMap!5225)

(assert (=> b!4716077 (= e!2941349 lt!1881182)))

(declare-fun lt!1881175 () ListMap!5225)

(assert (=> b!4716077 (= lt!1881175 (+!2246 lt!1880822 (h!59082 lt!1880806)))))

(assert (=> b!4716077 (= lt!1881182 (addToMapMapFromBucket!1416 (t!360129 lt!1880806) (+!2246 lt!1880822 (h!59082 lt!1880806))))))

(declare-fun lt!1881191 () Unit!128733)

(declare-fun call!329728 () Unit!128733)

(assert (=> b!4716077 (= lt!1881191 call!329728)))

(assert (=> b!4716077 (forall!11537 (toList!5861 lt!1880822) lambda!214076)))

(declare-fun lt!1881190 () Unit!128733)

(assert (=> b!4716077 (= lt!1881190 lt!1881191)))

(assert (=> b!4716077 (forall!11537 (toList!5861 lt!1881175) lambda!214077)))

(declare-fun lt!1881192 () Unit!128733)

(declare-fun Unit!128760 () Unit!128733)

(assert (=> b!4716077 (= lt!1881192 Unit!128760)))

(assert (=> b!4716077 (forall!11537 (t!360129 lt!1880806) lambda!214077)))

(declare-fun lt!1881183 () Unit!128733)

(declare-fun Unit!128761 () Unit!128733)

(assert (=> b!4716077 (= lt!1881183 Unit!128761)))

(declare-fun lt!1881172 () Unit!128733)

(declare-fun Unit!128762 () Unit!128733)

(assert (=> b!4716077 (= lt!1881172 Unit!128762)))

(declare-fun lt!1881179 () Unit!128733)

(assert (=> b!4716077 (= lt!1881179 (forallContained!3606 (toList!5861 lt!1881175) lambda!214077 (h!59082 lt!1880806)))))

(assert (=> b!4716077 (contains!16093 lt!1881175 (_1!30463 (h!59082 lt!1880806)))))

(declare-fun lt!1881180 () Unit!128733)

(declare-fun Unit!128763 () Unit!128733)

(assert (=> b!4716077 (= lt!1881180 Unit!128763)))

(assert (=> b!4716077 (contains!16093 lt!1881182 (_1!30463 (h!59082 lt!1880806)))))

(declare-fun lt!1881181 () Unit!128733)

(declare-fun Unit!128764 () Unit!128733)

(assert (=> b!4716077 (= lt!1881181 Unit!128764)))

(assert (=> b!4716077 (forall!11537 lt!1880806 lambda!214077)))

(declare-fun lt!1881173 () Unit!128733)

(declare-fun Unit!128765 () Unit!128733)

(assert (=> b!4716077 (= lt!1881173 Unit!128765)))

(declare-fun call!329727 () Bool)

(assert (=> b!4716077 call!329727))

(declare-fun lt!1881186 () Unit!128733)

(declare-fun Unit!128766 () Unit!128733)

(assert (=> b!4716077 (= lt!1881186 Unit!128766)))

(declare-fun lt!1881189 () Unit!128733)

(declare-fun Unit!128767 () Unit!128733)

(assert (=> b!4716077 (= lt!1881189 Unit!128767)))

(declare-fun lt!1881187 () Unit!128733)

(assert (=> b!4716077 (= lt!1881187 (addForallContainsKeyThenBeforeAdding!779 lt!1880822 lt!1881182 (_1!30463 (h!59082 lt!1880806)) (_2!30463 (h!59082 lt!1880806))))))

(assert (=> b!4716077 (forall!11537 (toList!5861 lt!1880822) lambda!214077)))

(declare-fun lt!1881178 () Unit!128733)

(assert (=> b!4716077 (= lt!1881178 lt!1881187)))

(declare-fun call!329726 () Bool)

(assert (=> b!4716077 call!329726))

(declare-fun lt!1881188 () Unit!128733)

(declare-fun Unit!128768 () Unit!128733)

(assert (=> b!4716077 (= lt!1881188 Unit!128768)))

(declare-fun res!1994154 () Bool)

(assert (=> b!4716077 (= res!1994154 (forall!11537 lt!1880806 lambda!214077))))

(declare-fun e!2941347 () Bool)

(assert (=> b!4716077 (=> (not res!1994154) (not e!2941347))))

(assert (=> b!4716077 e!2941347))

(declare-fun lt!1881184 () Unit!128733)

(declare-fun Unit!128769 () Unit!128733)

(assert (=> b!4716077 (= lt!1881184 Unit!128769)))

(declare-fun c!805527 () Bool)

(declare-fun bm!329721 () Bool)

(assert (=> bm!329721 (= call!329726 (forall!11537 (toList!5861 lt!1880822) (ite c!805527 lambda!214074 lambda!214077)))))

(declare-fun b!4716078 () Bool)

(declare-fun e!2941348 () Bool)

(assert (=> b!4716078 (= e!2941348 (invariantList!1492 (toList!5861 lt!1881177)))))

(declare-fun bm!329722 () Bool)

(assert (=> bm!329722 (= call!329728 (lemmaContainsAllItsOwnKeys!780 lt!1880822))))

(assert (=> b!4716079 (= e!2941349 lt!1880822)))

(declare-fun lt!1881176 () Unit!128733)

(assert (=> b!4716079 (= lt!1881176 call!329728)))

(assert (=> b!4716079 call!329726))

(declare-fun lt!1881185 () Unit!128733)

(assert (=> b!4716079 (= lt!1881185 lt!1881176)))

(assert (=> b!4716079 call!329727))

(declare-fun lt!1881174 () Unit!128733)

(declare-fun Unit!128770 () Unit!128733)

(assert (=> b!4716079 (= lt!1881174 Unit!128770)))

(assert (=> d!1500795 e!2941348))

(declare-fun res!1994153 () Bool)

(assert (=> d!1500795 (=> (not res!1994153) (not e!2941348))))

(assert (=> d!1500795 (= res!1994153 (forall!11537 lt!1880806 lambda!214079))))

(assert (=> d!1500795 (= lt!1881177 e!2941349)))

(assert (=> d!1500795 (= c!805527 ((_ is Nil!52755) lt!1880806))))

(assert (=> d!1500795 (noDuplicateKeys!1986 lt!1880806)))

(assert (=> d!1500795 (= (addToMapMapFromBucket!1416 lt!1880806 lt!1880822) lt!1881177)))

(declare-fun b!4716080 () Bool)

(assert (=> b!4716080 (= e!2941347 (forall!11537 (toList!5861 lt!1880822) lambda!214077))))

(declare-fun bm!329723 () Bool)

(assert (=> bm!329723 (= call!329727 (forall!11537 (ite c!805527 (toList!5861 lt!1880822) (toList!5861 lt!1881175)) (ite c!805527 lambda!214074 lambda!214077)))))

(declare-fun b!4716081 () Bool)

(declare-fun res!1994152 () Bool)

(assert (=> b!4716081 (=> (not res!1994152) (not e!2941348))))

(assert (=> b!4716081 (= res!1994152 (forall!11537 (toList!5861 lt!1880822) lambda!214079))))

(assert (= (and d!1500795 c!805527) b!4716079))

(assert (= (and d!1500795 (not c!805527)) b!4716077))

(assert (= (and b!4716077 res!1994154) b!4716080))

(assert (= (or b!4716079 b!4716077) bm!329722))

(assert (= (or b!4716079 b!4716077) bm!329721))

(assert (= (or b!4716079 b!4716077) bm!329723))

(assert (= (and d!1500795 res!1994153) b!4716081))

(assert (= (and b!4716081 res!1994152) b!4716078))

(assert (=> bm!329722 m!5645221))

(declare-fun m!5645627 () Bool)

(assert (=> d!1500795 m!5645627))

(assert (=> d!1500795 m!5645339))

(declare-fun m!5645633 () Bool)

(assert (=> bm!329723 m!5645633))

(declare-fun m!5645635 () Bool)

(assert (=> b!4716081 m!5645635))

(declare-fun m!5645637 () Bool)

(assert (=> b!4716077 m!5645637))

(declare-fun m!5645639 () Bool)

(assert (=> b!4716077 m!5645639))

(declare-fun m!5645641 () Bool)

(assert (=> b!4716077 m!5645641))

(declare-fun m!5645643 () Bool)

(assert (=> b!4716077 m!5645643))

(assert (=> b!4716077 m!5645639))

(declare-fun m!5645645 () Bool)

(assert (=> b!4716077 m!5645645))

(declare-fun m!5645647 () Bool)

(assert (=> b!4716077 m!5645647))

(declare-fun m!5645649 () Bool)

(assert (=> b!4716077 m!5645649))

(declare-fun m!5645651 () Bool)

(assert (=> b!4716077 m!5645651))

(declare-fun m!5645653 () Bool)

(assert (=> b!4716077 m!5645653))

(assert (=> b!4716077 m!5645645))

(declare-fun m!5645655 () Bool)

(assert (=> b!4716077 m!5645655))

(declare-fun m!5645657 () Bool)

(assert (=> b!4716077 m!5645657))

(declare-fun m!5645659 () Bool)

(assert (=> b!4716078 m!5645659))

(declare-fun m!5645661 () Bool)

(assert (=> bm!329721 m!5645661))

(assert (=> b!4716080 m!5645657))

(assert (=> b!4715805 d!1500795))

(declare-fun bs!1104664 () Bool)

(declare-fun b!4716093 () Bool)

(assert (= bs!1104664 (and b!4716093 b!4716077)))

(declare-fun lambda!214080 () Int)

(assert (=> bs!1104664 (= lambda!214080 lambda!214076)))

(declare-fun bs!1104665 () Bool)

(assert (= bs!1104665 (and b!4716093 d!1500727)))

(assert (=> bs!1104665 (not (= lambda!214080 lambda!214056))))

(assert (=> bs!1104664 (= (= lt!1880822 lt!1881182) (= lambda!214080 lambda!214077))))

(declare-fun bs!1104666 () Bool)

(assert (= bs!1104666 (and b!4716093 b!4715953)))

(assert (=> bs!1104666 (= (= lt!1880822 lt!1881037) (= lambda!214080 lambda!214044))))

(declare-fun bs!1104667 () Bool)

(assert (= bs!1104667 (and b!4716093 b!4716079)))

(assert (=> bs!1104667 (= lambda!214080 lambda!214074)))

(assert (=> bs!1104666 (= lambda!214080 lambda!214043)))

(declare-fun bs!1104668 () Bool)

(assert (= bs!1104668 (and b!4716093 d!1500675)))

(assert (=> bs!1104668 (= (= lt!1880822 lt!1881032) (= lambda!214080 lambda!214045))))

(declare-fun bs!1104669 () Bool)

(assert (= bs!1104669 (and b!4716093 d!1500795)))

(assert (=> bs!1104669 (= (= lt!1880822 lt!1881177) (= lambda!214080 lambda!214079))))

(declare-fun bs!1104670 () Bool)

(assert (= bs!1104670 (and b!4716093 b!4715955)))

(assert (=> bs!1104670 (= lambda!214080 lambda!214042)))

(assert (=> b!4716093 true))

(declare-fun bs!1104671 () Bool)

(declare-fun b!4716091 () Bool)

(assert (= bs!1104671 (and b!4716091 b!4716077)))

(declare-fun lambda!214081 () Int)

(assert (=> bs!1104671 (= lambda!214081 lambda!214076)))

(declare-fun bs!1104672 () Bool)

(assert (= bs!1104672 (and b!4716091 d!1500727)))

(assert (=> bs!1104672 (not (= lambda!214081 lambda!214056))))

(assert (=> bs!1104671 (= (= lt!1880822 lt!1881182) (= lambda!214081 lambda!214077))))

(declare-fun bs!1104673 () Bool)

(assert (= bs!1104673 (and b!4716091 b!4715953)))

(assert (=> bs!1104673 (= (= lt!1880822 lt!1881037) (= lambda!214081 lambda!214044))))

(declare-fun bs!1104674 () Bool)

(assert (= bs!1104674 (and b!4716091 b!4716079)))

(assert (=> bs!1104674 (= lambda!214081 lambda!214074)))

(declare-fun bs!1104675 () Bool)

(assert (= bs!1104675 (and b!4716091 b!4716093)))

(assert (=> bs!1104675 (= lambda!214081 lambda!214080)))

(assert (=> bs!1104673 (= lambda!214081 lambda!214043)))

(declare-fun bs!1104676 () Bool)

(assert (= bs!1104676 (and b!4716091 d!1500675)))

(assert (=> bs!1104676 (= (= lt!1880822 lt!1881032) (= lambda!214081 lambda!214045))))

(declare-fun bs!1104677 () Bool)

(assert (= bs!1104677 (and b!4716091 d!1500795)))

(assert (=> bs!1104677 (= (= lt!1880822 lt!1881177) (= lambda!214081 lambda!214079))))

(declare-fun bs!1104678 () Bool)

(assert (= bs!1104678 (and b!4716091 b!4715955)))

(assert (=> bs!1104678 (= lambda!214081 lambda!214042)))

(assert (=> b!4716091 true))

(declare-fun lt!1881211 () ListMap!5225)

(declare-fun lambda!214082 () Int)

(assert (=> bs!1104671 (= (= lt!1881211 lt!1880822) (= lambda!214082 lambda!214076))))

(assert (=> bs!1104672 (not (= lambda!214082 lambda!214056))))

(assert (=> bs!1104671 (= (= lt!1881211 lt!1881182) (= lambda!214082 lambda!214077))))

(assert (=> bs!1104673 (= (= lt!1881211 lt!1881037) (= lambda!214082 lambda!214044))))

(assert (=> b!4716091 (= (= lt!1881211 lt!1880822) (= lambda!214082 lambda!214081))))

(assert (=> bs!1104674 (= (= lt!1881211 lt!1880822) (= lambda!214082 lambda!214074))))

(assert (=> bs!1104675 (= (= lt!1881211 lt!1880822) (= lambda!214082 lambda!214080))))

(assert (=> bs!1104673 (= (= lt!1881211 lt!1880822) (= lambda!214082 lambda!214043))))

(assert (=> bs!1104676 (= (= lt!1881211 lt!1881032) (= lambda!214082 lambda!214045))))

(assert (=> bs!1104677 (= (= lt!1881211 lt!1881177) (= lambda!214082 lambda!214079))))

(assert (=> bs!1104678 (= (= lt!1881211 lt!1880822) (= lambda!214082 lambda!214042))))

(assert (=> b!4716091 true))

(declare-fun bs!1104679 () Bool)

(declare-fun d!1500801 () Bool)

(assert (= bs!1104679 (and d!1500801 b!4716077)))

(declare-fun lt!1881206 () ListMap!5225)

(declare-fun lambda!214083 () Int)

(assert (=> bs!1104679 (= (= lt!1881206 lt!1880822) (= lambda!214083 lambda!214076))))

(declare-fun bs!1104680 () Bool)

(assert (= bs!1104680 (and d!1500801 d!1500727)))

(assert (=> bs!1104680 (not (= lambda!214083 lambda!214056))))

(assert (=> bs!1104679 (= (= lt!1881206 lt!1881182) (= lambda!214083 lambda!214077))))

(declare-fun bs!1104681 () Bool)

(assert (= bs!1104681 (and d!1500801 b!4715953)))

(assert (=> bs!1104681 (= (= lt!1881206 lt!1881037) (= lambda!214083 lambda!214044))))

(declare-fun bs!1104682 () Bool)

(assert (= bs!1104682 (and d!1500801 b!4716091)))

(assert (=> bs!1104682 (= (= lt!1881206 lt!1880822) (= lambda!214083 lambda!214081))))

(declare-fun bs!1104683 () Bool)

(assert (= bs!1104683 (and d!1500801 b!4716079)))

(assert (=> bs!1104683 (= (= lt!1881206 lt!1880822) (= lambda!214083 lambda!214074))))

(declare-fun bs!1104684 () Bool)

(assert (= bs!1104684 (and d!1500801 b!4716093)))

(assert (=> bs!1104684 (= (= lt!1881206 lt!1880822) (= lambda!214083 lambda!214080))))

(assert (=> bs!1104682 (= (= lt!1881206 lt!1881211) (= lambda!214083 lambda!214082))))

(assert (=> bs!1104681 (= (= lt!1881206 lt!1880822) (= lambda!214083 lambda!214043))))

(declare-fun bs!1104685 () Bool)

(assert (= bs!1104685 (and d!1500801 d!1500675)))

(assert (=> bs!1104685 (= (= lt!1881206 lt!1881032) (= lambda!214083 lambda!214045))))

(declare-fun bs!1104686 () Bool)

(assert (= bs!1104686 (and d!1500801 d!1500795)))

(assert (=> bs!1104686 (= (= lt!1881206 lt!1881177) (= lambda!214083 lambda!214079))))

(declare-fun bs!1104687 () Bool)

(assert (= bs!1104687 (and d!1500801 b!4715955)))

(assert (=> bs!1104687 (= (= lt!1881206 lt!1880822) (= lambda!214083 lambda!214042))))

(assert (=> d!1500801 true))

(declare-fun e!2941358 () ListMap!5225)

(assert (=> b!4716091 (= e!2941358 lt!1881211)))

(declare-fun lt!1881204 () ListMap!5225)

(assert (=> b!4716091 (= lt!1881204 (+!2246 lt!1880822 (h!59082 (Cons!52755 lt!1880833 lt!1880825))))))

(assert (=> b!4716091 (= lt!1881211 (addToMapMapFromBucket!1416 (t!360129 (Cons!52755 lt!1880833 lt!1880825)) (+!2246 lt!1880822 (h!59082 (Cons!52755 lt!1880833 lt!1880825)))))))

(declare-fun lt!1881220 () Unit!128733)

(declare-fun call!329732 () Unit!128733)

(assert (=> b!4716091 (= lt!1881220 call!329732)))

(assert (=> b!4716091 (forall!11537 (toList!5861 lt!1880822) lambda!214081)))

(declare-fun lt!1881219 () Unit!128733)

(assert (=> b!4716091 (= lt!1881219 lt!1881220)))

(assert (=> b!4716091 (forall!11537 (toList!5861 lt!1881204) lambda!214082)))

(declare-fun lt!1881221 () Unit!128733)

(declare-fun Unit!128771 () Unit!128733)

(assert (=> b!4716091 (= lt!1881221 Unit!128771)))

(assert (=> b!4716091 (forall!11537 (t!360129 (Cons!52755 lt!1880833 lt!1880825)) lambda!214082)))

(declare-fun lt!1881212 () Unit!128733)

(declare-fun Unit!128772 () Unit!128733)

(assert (=> b!4716091 (= lt!1881212 Unit!128772)))

(declare-fun lt!1881201 () Unit!128733)

(declare-fun Unit!128773 () Unit!128733)

(assert (=> b!4716091 (= lt!1881201 Unit!128773)))

(declare-fun lt!1881208 () Unit!128733)

(assert (=> b!4716091 (= lt!1881208 (forallContained!3606 (toList!5861 lt!1881204) lambda!214082 (h!59082 (Cons!52755 lt!1880833 lt!1880825))))))

(assert (=> b!4716091 (contains!16093 lt!1881204 (_1!30463 (h!59082 (Cons!52755 lt!1880833 lt!1880825))))))

(declare-fun lt!1881209 () Unit!128733)

(declare-fun Unit!128774 () Unit!128733)

(assert (=> b!4716091 (= lt!1881209 Unit!128774)))

(assert (=> b!4716091 (contains!16093 lt!1881211 (_1!30463 (h!59082 (Cons!52755 lt!1880833 lt!1880825))))))

(declare-fun lt!1881210 () Unit!128733)

(declare-fun Unit!128775 () Unit!128733)

(assert (=> b!4716091 (= lt!1881210 Unit!128775)))

(assert (=> b!4716091 (forall!11537 (Cons!52755 lt!1880833 lt!1880825) lambda!214082)))

(declare-fun lt!1881202 () Unit!128733)

(declare-fun Unit!128776 () Unit!128733)

(assert (=> b!4716091 (= lt!1881202 Unit!128776)))

(declare-fun call!329731 () Bool)

(assert (=> b!4716091 call!329731))

(declare-fun lt!1881215 () Unit!128733)

(declare-fun Unit!128777 () Unit!128733)

(assert (=> b!4716091 (= lt!1881215 Unit!128777)))

(declare-fun lt!1881218 () Unit!128733)

(declare-fun Unit!128778 () Unit!128733)

(assert (=> b!4716091 (= lt!1881218 Unit!128778)))

(declare-fun lt!1881216 () Unit!128733)

(assert (=> b!4716091 (= lt!1881216 (addForallContainsKeyThenBeforeAdding!779 lt!1880822 lt!1881211 (_1!30463 (h!59082 (Cons!52755 lt!1880833 lt!1880825))) (_2!30463 (h!59082 (Cons!52755 lt!1880833 lt!1880825)))))))

(assert (=> b!4716091 (forall!11537 (toList!5861 lt!1880822) lambda!214082)))

(declare-fun lt!1881207 () Unit!128733)

(assert (=> b!4716091 (= lt!1881207 lt!1881216)))

(declare-fun call!329730 () Bool)

(assert (=> b!4716091 call!329730))

(declare-fun lt!1881217 () Unit!128733)

(declare-fun Unit!128779 () Unit!128733)

(assert (=> b!4716091 (= lt!1881217 Unit!128779)))

(declare-fun res!1994160 () Bool)

(assert (=> b!4716091 (= res!1994160 (forall!11537 (Cons!52755 lt!1880833 lt!1880825) lambda!214082))))

(declare-fun e!2941356 () Bool)

(assert (=> b!4716091 (=> (not res!1994160) (not e!2941356))))

(assert (=> b!4716091 e!2941356))

(declare-fun lt!1881213 () Unit!128733)

(declare-fun Unit!128780 () Unit!128733)

(assert (=> b!4716091 (= lt!1881213 Unit!128780)))

(declare-fun bm!329725 () Bool)

(declare-fun c!805531 () Bool)

(assert (=> bm!329725 (= call!329730 (forall!11537 (toList!5861 lt!1880822) (ite c!805531 lambda!214080 lambda!214082)))))

(declare-fun b!4716092 () Bool)

(declare-fun e!2941357 () Bool)

(assert (=> b!4716092 (= e!2941357 (invariantList!1492 (toList!5861 lt!1881206)))))

(declare-fun bm!329726 () Bool)

(assert (=> bm!329726 (= call!329732 (lemmaContainsAllItsOwnKeys!780 lt!1880822))))

(assert (=> b!4716093 (= e!2941358 lt!1880822)))

(declare-fun lt!1881205 () Unit!128733)

(assert (=> b!4716093 (= lt!1881205 call!329732)))

(assert (=> b!4716093 call!329730))

(declare-fun lt!1881214 () Unit!128733)

(assert (=> b!4716093 (= lt!1881214 lt!1881205)))

(assert (=> b!4716093 call!329731))

(declare-fun lt!1881203 () Unit!128733)

(declare-fun Unit!128781 () Unit!128733)

(assert (=> b!4716093 (= lt!1881203 Unit!128781)))

(assert (=> d!1500801 e!2941357))

(declare-fun res!1994159 () Bool)

(assert (=> d!1500801 (=> (not res!1994159) (not e!2941357))))

(assert (=> d!1500801 (= res!1994159 (forall!11537 (Cons!52755 lt!1880833 lt!1880825) lambda!214083))))

(assert (=> d!1500801 (= lt!1881206 e!2941358)))

(assert (=> d!1500801 (= c!805531 ((_ is Nil!52755) (Cons!52755 lt!1880833 lt!1880825)))))

(assert (=> d!1500801 (noDuplicateKeys!1986 (Cons!52755 lt!1880833 lt!1880825))))

(assert (=> d!1500801 (= (addToMapMapFromBucket!1416 (Cons!52755 lt!1880833 lt!1880825) lt!1880822) lt!1881206)))

(declare-fun b!4716094 () Bool)

(assert (=> b!4716094 (= e!2941356 (forall!11537 (toList!5861 lt!1880822) lambda!214082))))

(declare-fun bm!329727 () Bool)

(assert (=> bm!329727 (= call!329731 (forall!11537 (ite c!805531 (toList!5861 lt!1880822) (toList!5861 lt!1881204)) (ite c!805531 lambda!214080 lambda!214082)))))

(declare-fun b!4716095 () Bool)

(declare-fun res!1994158 () Bool)

(assert (=> b!4716095 (=> (not res!1994158) (not e!2941357))))

(assert (=> b!4716095 (= res!1994158 (forall!11537 (toList!5861 lt!1880822) lambda!214083))))

(assert (= (and d!1500801 c!805531) b!4716093))

(assert (= (and d!1500801 (not c!805531)) b!4716091))

(assert (= (and b!4716091 res!1994160) b!4716094))

(assert (= (or b!4716093 b!4716091) bm!329726))

(assert (= (or b!4716093 b!4716091) bm!329725))

(assert (= (or b!4716093 b!4716091) bm!329727))

(assert (= (and d!1500801 res!1994159) b!4716095))

(assert (= (and b!4716095 res!1994158) b!4716092))

(assert (=> bm!329726 m!5645221))

(declare-fun m!5645681 () Bool)

(assert (=> d!1500801 m!5645681))

(declare-fun m!5645683 () Bool)

(assert (=> d!1500801 m!5645683))

(declare-fun m!5645685 () Bool)

(assert (=> bm!329727 m!5645685))

(declare-fun m!5645687 () Bool)

(assert (=> b!4716095 m!5645687))

(declare-fun m!5645689 () Bool)

(assert (=> b!4716091 m!5645689))

(declare-fun m!5645691 () Bool)

(assert (=> b!4716091 m!5645691))

(declare-fun m!5645693 () Bool)

(assert (=> b!4716091 m!5645693))

(declare-fun m!5645695 () Bool)

(assert (=> b!4716091 m!5645695))

(assert (=> b!4716091 m!5645691))

(declare-fun m!5645697 () Bool)

(assert (=> b!4716091 m!5645697))

(declare-fun m!5645699 () Bool)

(assert (=> b!4716091 m!5645699))

(declare-fun m!5645701 () Bool)

(assert (=> b!4716091 m!5645701))

(declare-fun m!5645703 () Bool)

(assert (=> b!4716091 m!5645703))

(declare-fun m!5645705 () Bool)

(assert (=> b!4716091 m!5645705))

(assert (=> b!4716091 m!5645697))

(declare-fun m!5645707 () Bool)

(assert (=> b!4716091 m!5645707))

(declare-fun m!5645709 () Bool)

(assert (=> b!4716091 m!5645709))

(declare-fun m!5645711 () Bool)

(assert (=> b!4716092 m!5645711))

(declare-fun m!5645713 () Bool)

(assert (=> bm!329725 m!5645713))

(assert (=> b!4716094 m!5645709))

(assert (=> b!4715805 d!1500801))

(declare-fun d!1500805 () Bool)

(declare-fun e!2941359 () Bool)

(assert (=> d!1500805 e!2941359))

(declare-fun res!1994161 () Bool)

(assert (=> d!1500805 (=> (not res!1994161) (not e!2941359))))

(declare-fun lt!1881224 () ListMap!5225)

(assert (=> d!1500805 (= res!1994161 (contains!16093 lt!1881224 (_1!30463 lt!1880837)))))

(declare-fun lt!1881223 () List!52879)

(assert (=> d!1500805 (= lt!1881224 (ListMap!5226 lt!1881223))))

(declare-fun lt!1881222 () Unit!128733)

(declare-fun lt!1881225 () Unit!128733)

(assert (=> d!1500805 (= lt!1881222 lt!1881225)))

(assert (=> d!1500805 (= (getValueByKey!1931 lt!1881223 (_1!30463 lt!1880837)) (Some!12324 (_2!30463 lt!1880837)))))

(assert (=> d!1500805 (= lt!1881225 (lemmaContainsTupThenGetReturnValue!1074 lt!1881223 (_1!30463 lt!1880837) (_2!30463 lt!1880837)))))

(assert (=> d!1500805 (= lt!1881223 (insertNoDuplicatedKeys!582 (toList!5861 (addToMapMapFromBucket!1416 lt!1880806 lt!1880822)) (_1!30463 lt!1880837) (_2!30463 lt!1880837)))))

(assert (=> d!1500805 (= (+!2246 (addToMapMapFromBucket!1416 lt!1880806 lt!1880822) lt!1880837) lt!1881224)))

(declare-fun b!4716096 () Bool)

(declare-fun res!1994162 () Bool)

(assert (=> b!4716096 (=> (not res!1994162) (not e!2941359))))

(assert (=> b!4716096 (= res!1994162 (= (getValueByKey!1931 (toList!5861 lt!1881224) (_1!30463 lt!1880837)) (Some!12324 (_2!30463 lt!1880837))))))

(declare-fun b!4716097 () Bool)

(assert (=> b!4716097 (= e!2941359 (contains!16097 (toList!5861 lt!1881224) lt!1880837))))

(assert (= (and d!1500805 res!1994161) b!4716096))

(assert (= (and b!4716096 res!1994162) b!4716097))

(declare-fun m!5645715 () Bool)

(assert (=> d!1500805 m!5645715))

(declare-fun m!5645717 () Bool)

(assert (=> d!1500805 m!5645717))

(declare-fun m!5645719 () Bool)

(assert (=> d!1500805 m!5645719))

(declare-fun m!5645721 () Bool)

(assert (=> d!1500805 m!5645721))

(declare-fun m!5645723 () Bool)

(assert (=> b!4716096 m!5645723))

(declare-fun m!5645725 () Bool)

(assert (=> b!4716097 m!5645725))

(assert (=> b!4715805 d!1500805))

(declare-fun b!4716130 () Bool)

(assert (=> b!4716130 false))

(declare-fun lt!1881294 () Unit!128733)

(declare-fun lt!1881298 () Unit!128733)

(assert (=> b!4716130 (= lt!1881294 lt!1881298)))

(declare-fun containsKey!3322 (List!52879 K!14115) Bool)

(assert (=> b!4716130 (containsKey!3322 (toList!5861 lt!1880808) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!931 (List!52879 K!14115) Unit!128733)

(assert (=> b!4716130 (= lt!1881298 (lemmaInGetKeysListThenContainsKey!931 (toList!5861 lt!1880808) key!4653))))

(declare-fun e!2941383 () Unit!128733)

(declare-fun Unit!128792 () Unit!128733)

(assert (=> b!4716130 (= e!2941383 Unit!128792)))

(declare-fun bm!329736 () Bool)

(declare-fun call!329741 () Bool)

(declare-fun e!2941381 () List!52882)

(declare-fun contains!16099 (List!52882 K!14115) Bool)

(assert (=> bm!329736 (= call!329741 (contains!16099 e!2941381 key!4653))))

(declare-fun c!805541 () Bool)

(declare-fun c!805542 () Bool)

(assert (=> bm!329736 (= c!805541 c!805542)))

(declare-fun b!4716131 () Bool)

(declare-fun Unit!128794 () Unit!128733)

(assert (=> b!4716131 (= e!2941383 Unit!128794)))

(declare-fun b!4716132 () Bool)

(declare-fun e!2941385 () Unit!128733)

(declare-fun lt!1881297 () Unit!128733)

(assert (=> b!4716132 (= e!2941385 lt!1881297)))

(declare-fun lt!1881300 () Unit!128733)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1822 (List!52879 K!14115) Unit!128733)

(assert (=> b!4716132 (= lt!1881300 (lemmaContainsKeyImpliesGetValueByKeyDefined!1822 (toList!5861 lt!1880808) key!4653))))

(declare-fun isDefined!9579 (Option!12325) Bool)

(assert (=> b!4716132 (isDefined!9579 (getValueByKey!1931 (toList!5861 lt!1880808) key!4653))))

(declare-fun lt!1881293 () Unit!128733)

(assert (=> b!4716132 (= lt!1881293 lt!1881300)))

(declare-fun lemmaInListThenGetKeysListContains!927 (List!52879 K!14115) Unit!128733)

(assert (=> b!4716132 (= lt!1881297 (lemmaInListThenGetKeysListContains!927 (toList!5861 lt!1880808) key!4653))))

(assert (=> b!4716132 call!329741))

(declare-fun b!4716134 () Bool)

(declare-fun e!2941382 () Bool)

(assert (=> b!4716134 (= e!2941382 (contains!16099 (keys!18927 lt!1880808) key!4653))))

(declare-fun b!4716135 () Bool)

(declare-fun getKeysList!932 (List!52879) List!52882)

(assert (=> b!4716135 (= e!2941381 (getKeysList!932 (toList!5861 lt!1880808)))))

(declare-fun b!4716136 () Bool)

(assert (=> b!4716136 (= e!2941381 (keys!18927 lt!1880808))))

(declare-fun b!4716137 () Bool)

(declare-fun e!2941384 () Bool)

(assert (=> b!4716137 (= e!2941384 e!2941382)))

(declare-fun res!1994178 () Bool)

(assert (=> b!4716137 (=> (not res!1994178) (not e!2941382))))

(assert (=> b!4716137 (= res!1994178 (isDefined!9579 (getValueByKey!1931 (toList!5861 lt!1880808) key!4653)))))

(declare-fun b!4716138 () Bool)

(assert (=> b!4716138 (= e!2941385 e!2941383)))

(declare-fun c!805543 () Bool)

(assert (=> b!4716138 (= c!805543 call!329741)))

(declare-fun d!1500807 () Bool)

(assert (=> d!1500807 e!2941384))

(declare-fun res!1994179 () Bool)

(assert (=> d!1500807 (=> res!1994179 e!2941384)))

(declare-fun e!2941380 () Bool)

(assert (=> d!1500807 (= res!1994179 e!2941380)))

(declare-fun res!1994177 () Bool)

(assert (=> d!1500807 (=> (not res!1994177) (not e!2941380))))

(declare-fun lt!1881295 () Bool)

(assert (=> d!1500807 (= res!1994177 (not lt!1881295))))

(declare-fun lt!1881296 () Bool)

(assert (=> d!1500807 (= lt!1881295 lt!1881296)))

(declare-fun lt!1881299 () Unit!128733)

(assert (=> d!1500807 (= lt!1881299 e!2941385)))

(assert (=> d!1500807 (= c!805542 lt!1881296)))

(assert (=> d!1500807 (= lt!1881296 (containsKey!3322 (toList!5861 lt!1880808) key!4653))))

(assert (=> d!1500807 (= (contains!16093 lt!1880808 key!4653) lt!1881295)))

(declare-fun b!4716133 () Bool)

(assert (=> b!4716133 (= e!2941380 (not (contains!16099 (keys!18927 lt!1880808) key!4653)))))

(assert (= (and d!1500807 c!805542) b!4716132))

(assert (= (and d!1500807 (not c!805542)) b!4716138))

(assert (= (and b!4716138 c!805543) b!4716130))

(assert (= (and b!4716138 (not c!805543)) b!4716131))

(assert (= (or b!4716132 b!4716138) bm!329736))

(assert (= (and bm!329736 c!805541) b!4716135))

(assert (= (and bm!329736 (not c!805541)) b!4716136))

(assert (= (and d!1500807 res!1994177) b!4716133))

(assert (= (and d!1500807 (not res!1994179)) b!4716137))

(assert (= (and b!4716137 res!1994178) b!4716134))

(declare-fun m!5645791 () Bool)

(assert (=> d!1500807 m!5645791))

(assert (=> b!4716130 m!5645791))

(declare-fun m!5645793 () Bool)

(assert (=> b!4716130 m!5645793))

(assert (=> b!4716136 m!5645417))

(declare-fun m!5645795 () Bool)

(assert (=> bm!329736 m!5645795))

(declare-fun m!5645797 () Bool)

(assert (=> b!4716137 m!5645797))

(assert (=> b!4716137 m!5645797))

(declare-fun m!5645799 () Bool)

(assert (=> b!4716137 m!5645799))

(assert (=> b!4716134 m!5645417))

(assert (=> b!4716134 m!5645417))

(declare-fun m!5645801 () Bool)

(assert (=> b!4716134 m!5645801))

(assert (=> b!4716133 m!5645417))

(assert (=> b!4716133 m!5645417))

(assert (=> b!4716133 m!5645801))

(declare-fun m!5645803 () Bool)

(assert (=> b!4716135 m!5645803))

(declare-fun m!5645805 () Bool)

(assert (=> b!4716132 m!5645805))

(assert (=> b!4716132 m!5645797))

(assert (=> b!4716132 m!5645797))

(assert (=> b!4716132 m!5645799))

(declare-fun m!5645807 () Bool)

(assert (=> b!4716132 m!5645807))

(assert (=> b!4715805 d!1500807))

(declare-fun bs!1104798 () Bool)

(declare-fun d!1500821 () Bool)

(assert (= bs!1104798 (and d!1500821 start!479620)))

(declare-fun lambda!214101 () Int)

(assert (=> bs!1104798 (= lambda!214101 lambda!213967)))

(declare-fun bs!1104800 () Bool)

(assert (= bs!1104800 (and d!1500821 d!1500775)))

(assert (=> bs!1104800 (= lambda!214101 lambda!214068)))

(declare-fun bs!1104802 () Bool)

(assert (= bs!1104802 (and d!1500821 d!1500747)))

(assert (=> bs!1104802 (= lambda!214101 lambda!214063)))

(declare-fun bs!1104805 () Bool)

(assert (= bs!1104805 (and d!1500821 d!1500739)))

(assert (=> bs!1104805 (= lambda!214101 lambda!214062)))

(declare-fun bs!1104807 () Bool)

(assert (= bs!1104807 (and d!1500821 d!1500777)))

(assert (=> bs!1104807 (= lambda!214101 lambda!214069)))

(declare-fun bs!1104809 () Bool)

(assert (= bs!1104809 (and d!1500821 d!1500693)))

(assert (=> bs!1104809 (= lambda!214101 lambda!214053)))

(declare-fun bs!1104811 () Bool)

(assert (= bs!1104811 (and d!1500821 d!1500785)))

(assert (=> bs!1104811 (= lambda!214101 lambda!214071)))

(declare-fun bs!1104813 () Bool)

(assert (= bs!1104813 (and d!1500821 d!1500731)))

(assert (=> bs!1104813 (= lambda!214101 lambda!214057)))

(declare-fun bs!1104815 () Bool)

(assert (= bs!1104815 (and d!1500821 d!1500733)))

(assert (=> bs!1104815 (= lambda!214101 lambda!214058)))

(assert (=> d!1500821 (contains!16093 (extractMap!2012 (toList!5862 lt!1880827)) key!4653)))

(declare-fun lt!1881324 () Unit!128733)

(declare-fun choose!33224 (ListLongMap!4391 K!14115 Hashable!6355) Unit!128733)

(assert (=> d!1500821 (= lt!1881324 (choose!33224 lt!1880827 key!4653 hashF!1323))))

(assert (=> d!1500821 (forall!11535 (toList!5862 lt!1880827) lambda!214101)))

(assert (=> d!1500821 (= (lemmaListContainsThenExtractedMapContains!532 lt!1880827 key!4653 hashF!1323) lt!1881324)))

(declare-fun bs!1104818 () Bool)

(assert (= bs!1104818 d!1500821))

(declare-fun m!5645841 () Bool)

(assert (=> bs!1104818 m!5645841))

(assert (=> bs!1104818 m!5645841))

(declare-fun m!5645843 () Bool)

(assert (=> bs!1104818 m!5645843))

(declare-fun m!5645845 () Bool)

(assert (=> bs!1104818 m!5645845))

(declare-fun m!5645847 () Bool)

(assert (=> bs!1104818 m!5645847))

(assert (=> b!4715805 d!1500821))

(declare-fun bs!1104823 () Bool)

(declare-fun b!4716146 () Bool)

(assert (= bs!1104823 (and b!4716146 b!4716077)))

(declare-fun lambda!214103 () Int)

(assert (=> bs!1104823 (= lambda!214103 lambda!214076)))

(declare-fun bs!1104824 () Bool)

(assert (= bs!1104824 (and b!4716146 d!1500727)))

(assert (=> bs!1104824 (not (= lambda!214103 lambda!214056))))

(declare-fun bs!1104825 () Bool)

(assert (= bs!1104825 (and b!4716146 b!4715953)))

(assert (=> bs!1104825 (= (= lt!1880822 lt!1881037) (= lambda!214103 lambda!214044))))

(declare-fun bs!1104826 () Bool)

(assert (= bs!1104826 (and b!4716146 b!4716091)))

(assert (=> bs!1104826 (= lambda!214103 lambda!214081)))

(declare-fun bs!1104827 () Bool)

(assert (= bs!1104827 (and b!4716146 b!4716079)))

(assert (=> bs!1104827 (= lambda!214103 lambda!214074)))

(declare-fun bs!1104828 () Bool)

(assert (= bs!1104828 (and b!4716146 b!4716093)))

(assert (=> bs!1104828 (= lambda!214103 lambda!214080)))

(assert (=> bs!1104826 (= (= lt!1880822 lt!1881211) (= lambda!214103 lambda!214082))))

(assert (=> bs!1104825 (= lambda!214103 lambda!214043)))

(declare-fun bs!1104829 () Bool)

(assert (= bs!1104829 (and b!4716146 d!1500675)))

(assert (=> bs!1104829 (= (= lt!1880822 lt!1881032) (= lambda!214103 lambda!214045))))

(declare-fun bs!1104830 () Bool)

(assert (= bs!1104830 (and b!4716146 d!1500801)))

(assert (=> bs!1104830 (= (= lt!1880822 lt!1881206) (= lambda!214103 lambda!214083))))

(assert (=> bs!1104823 (= (= lt!1880822 lt!1881182) (= lambda!214103 lambda!214077))))

(declare-fun bs!1104831 () Bool)

(assert (= bs!1104831 (and b!4716146 d!1500795)))

(assert (=> bs!1104831 (= (= lt!1880822 lt!1881177) (= lambda!214103 lambda!214079))))

(declare-fun bs!1104832 () Bool)

(assert (= bs!1104832 (and b!4716146 b!4715955)))

(assert (=> bs!1104832 (= lambda!214103 lambda!214042)))

(assert (=> b!4716146 true))

(declare-fun bs!1104833 () Bool)

(declare-fun b!4716144 () Bool)

(assert (= bs!1104833 (and b!4716144 b!4716077)))

(declare-fun lambda!214104 () Int)

(assert (=> bs!1104833 (= lambda!214104 lambda!214076)))

(declare-fun bs!1104834 () Bool)

(assert (= bs!1104834 (and b!4716144 d!1500727)))

(assert (=> bs!1104834 (not (= lambda!214104 lambda!214056))))

(declare-fun bs!1104835 () Bool)

(assert (= bs!1104835 (and b!4716144 b!4715953)))

(assert (=> bs!1104835 (= (= lt!1880822 lt!1881037) (= lambda!214104 lambda!214044))))

(declare-fun bs!1104836 () Bool)

(assert (= bs!1104836 (and b!4716144 b!4716091)))

(assert (=> bs!1104836 (= lambda!214104 lambda!214081)))

(declare-fun bs!1104837 () Bool)

(assert (= bs!1104837 (and b!4716144 b!4716079)))

(assert (=> bs!1104837 (= lambda!214104 lambda!214074)))

(declare-fun bs!1104838 () Bool)

(assert (= bs!1104838 (and b!4716144 b!4716093)))

(assert (=> bs!1104838 (= lambda!214104 lambda!214080)))

(assert (=> bs!1104836 (= (= lt!1880822 lt!1881211) (= lambda!214104 lambda!214082))))

(assert (=> bs!1104835 (= lambda!214104 lambda!214043)))

(declare-fun bs!1104840 () Bool)

(assert (= bs!1104840 (and b!4716144 d!1500675)))

(assert (=> bs!1104840 (= (= lt!1880822 lt!1881032) (= lambda!214104 lambda!214045))))

(assert (=> bs!1104833 (= (= lt!1880822 lt!1881182) (= lambda!214104 lambda!214077))))

(declare-fun bs!1104842 () Bool)

(assert (= bs!1104842 (and b!4716144 d!1500801)))

(assert (=> bs!1104842 (= (= lt!1880822 lt!1881206) (= lambda!214104 lambda!214083))))

(declare-fun bs!1104843 () Bool)

(assert (= bs!1104843 (and b!4716144 b!4716146)))

(assert (=> bs!1104843 (= lambda!214104 lambda!214103)))

(declare-fun bs!1104844 () Bool)

(assert (= bs!1104844 (and b!4716144 d!1500795)))

(assert (=> bs!1104844 (= (= lt!1880822 lt!1881177) (= lambda!214104 lambda!214079))))

(declare-fun bs!1104845 () Bool)

(assert (= bs!1104845 (and b!4716144 b!4715955)))

(assert (=> bs!1104845 (= lambda!214104 lambda!214042)))

(assert (=> b!4716144 true))

(declare-fun lambda!214105 () Int)

(declare-fun lt!1881335 () ListMap!5225)

(assert (=> bs!1104833 (= (= lt!1881335 lt!1880822) (= lambda!214105 lambda!214076))))

(assert (=> bs!1104834 (not (= lambda!214105 lambda!214056))))

(assert (=> bs!1104835 (= (= lt!1881335 lt!1881037) (= lambda!214105 lambda!214044))))

(assert (=> b!4716144 (= (= lt!1881335 lt!1880822) (= lambda!214105 lambda!214104))))

(assert (=> bs!1104836 (= (= lt!1881335 lt!1880822) (= lambda!214105 lambda!214081))))

(assert (=> bs!1104837 (= (= lt!1881335 lt!1880822) (= lambda!214105 lambda!214074))))

(assert (=> bs!1104838 (= (= lt!1881335 lt!1880822) (= lambda!214105 lambda!214080))))

(assert (=> bs!1104836 (= (= lt!1881335 lt!1881211) (= lambda!214105 lambda!214082))))

(assert (=> bs!1104835 (= (= lt!1881335 lt!1880822) (= lambda!214105 lambda!214043))))

(assert (=> bs!1104840 (= (= lt!1881335 lt!1881032) (= lambda!214105 lambda!214045))))

(assert (=> bs!1104833 (= (= lt!1881335 lt!1881182) (= lambda!214105 lambda!214077))))

(assert (=> bs!1104842 (= (= lt!1881335 lt!1881206) (= lambda!214105 lambda!214083))))

(assert (=> bs!1104843 (= (= lt!1881335 lt!1880822) (= lambda!214105 lambda!214103))))

(assert (=> bs!1104844 (= (= lt!1881335 lt!1881177) (= lambda!214105 lambda!214079))))

(assert (=> bs!1104845 (= (= lt!1881335 lt!1880822) (= lambda!214105 lambda!214042))))

(assert (=> b!4716144 true))

(declare-fun bs!1104846 () Bool)

(declare-fun d!1500825 () Bool)

(assert (= bs!1104846 (and d!1500825 b!4716077)))

(declare-fun lambda!214109 () Int)

(declare-fun lt!1881330 () ListMap!5225)

(assert (=> bs!1104846 (= (= lt!1881330 lt!1880822) (= lambda!214109 lambda!214076))))

(declare-fun bs!1104847 () Bool)

(assert (= bs!1104847 (and d!1500825 d!1500727)))

(assert (=> bs!1104847 (not (= lambda!214109 lambda!214056))))

(declare-fun bs!1104849 () Bool)

(assert (= bs!1104849 (and d!1500825 b!4715953)))

(assert (=> bs!1104849 (= (= lt!1881330 lt!1881037) (= lambda!214109 lambda!214044))))

(declare-fun bs!1104851 () Bool)

(assert (= bs!1104851 (and d!1500825 b!4716144)))

(assert (=> bs!1104851 (= (= lt!1881330 lt!1881335) (= lambda!214109 lambda!214105))))

(assert (=> bs!1104851 (= (= lt!1881330 lt!1880822) (= lambda!214109 lambda!214104))))

(declare-fun bs!1104853 () Bool)

(assert (= bs!1104853 (and d!1500825 b!4716091)))

(assert (=> bs!1104853 (= (= lt!1881330 lt!1880822) (= lambda!214109 lambda!214081))))

(declare-fun bs!1104856 () Bool)

(assert (= bs!1104856 (and d!1500825 b!4716079)))

(assert (=> bs!1104856 (= (= lt!1881330 lt!1880822) (= lambda!214109 lambda!214074))))

(declare-fun bs!1104858 () Bool)

(assert (= bs!1104858 (and d!1500825 b!4716093)))

(assert (=> bs!1104858 (= (= lt!1881330 lt!1880822) (= lambda!214109 lambda!214080))))

(assert (=> bs!1104853 (= (= lt!1881330 lt!1881211) (= lambda!214109 lambda!214082))))

(assert (=> bs!1104849 (= (= lt!1881330 lt!1880822) (= lambda!214109 lambda!214043))))

(declare-fun bs!1104861 () Bool)

(assert (= bs!1104861 (and d!1500825 d!1500675)))

(assert (=> bs!1104861 (= (= lt!1881330 lt!1881032) (= lambda!214109 lambda!214045))))

(assert (=> bs!1104846 (= (= lt!1881330 lt!1881182) (= lambda!214109 lambda!214077))))

(declare-fun bs!1104864 () Bool)

(assert (= bs!1104864 (and d!1500825 d!1500801)))

(assert (=> bs!1104864 (= (= lt!1881330 lt!1881206) (= lambda!214109 lambda!214083))))

(declare-fun bs!1104866 () Bool)

(assert (= bs!1104866 (and d!1500825 b!4716146)))

(assert (=> bs!1104866 (= (= lt!1881330 lt!1880822) (= lambda!214109 lambda!214103))))

(declare-fun bs!1104867 () Bool)

(assert (= bs!1104867 (and d!1500825 d!1500795)))

(assert (=> bs!1104867 (= (= lt!1881330 lt!1881177) (= lambda!214109 lambda!214079))))

(declare-fun bs!1104869 () Bool)

(assert (= bs!1104869 (and d!1500825 b!4715955)))

(assert (=> bs!1104869 (= (= lt!1881330 lt!1880822) (= lambda!214109 lambda!214042))))

(assert (=> d!1500825 true))

(declare-fun e!2941391 () ListMap!5225)

(assert (=> b!4716144 (= e!2941391 lt!1881335)))

(declare-fun lt!1881328 () ListMap!5225)

(assert (=> b!4716144 (= lt!1881328 (+!2246 lt!1880822 (h!59082 lt!1880825)))))

(assert (=> b!4716144 (= lt!1881335 (addToMapMapFromBucket!1416 (t!360129 lt!1880825) (+!2246 lt!1880822 (h!59082 lt!1880825))))))

(declare-fun lt!1881344 () Unit!128733)

(declare-fun call!329747 () Unit!128733)

(assert (=> b!4716144 (= lt!1881344 call!329747)))

(assert (=> b!4716144 (forall!11537 (toList!5861 lt!1880822) lambda!214104)))

(declare-fun lt!1881343 () Unit!128733)

(assert (=> b!4716144 (= lt!1881343 lt!1881344)))

(assert (=> b!4716144 (forall!11537 (toList!5861 lt!1881328) lambda!214105)))

(declare-fun lt!1881345 () Unit!128733)

(declare-fun Unit!128797 () Unit!128733)

(assert (=> b!4716144 (= lt!1881345 Unit!128797)))

(assert (=> b!4716144 (forall!11537 (t!360129 lt!1880825) lambda!214105)))

(declare-fun lt!1881336 () Unit!128733)

(declare-fun Unit!128798 () Unit!128733)

(assert (=> b!4716144 (= lt!1881336 Unit!128798)))

(declare-fun lt!1881325 () Unit!128733)

(declare-fun Unit!128799 () Unit!128733)

(assert (=> b!4716144 (= lt!1881325 Unit!128799)))

(declare-fun lt!1881332 () Unit!128733)

(assert (=> b!4716144 (= lt!1881332 (forallContained!3606 (toList!5861 lt!1881328) lambda!214105 (h!59082 lt!1880825)))))

(assert (=> b!4716144 (contains!16093 lt!1881328 (_1!30463 (h!59082 lt!1880825)))))

(declare-fun lt!1881333 () Unit!128733)

(declare-fun Unit!128800 () Unit!128733)

(assert (=> b!4716144 (= lt!1881333 Unit!128800)))

(assert (=> b!4716144 (contains!16093 lt!1881335 (_1!30463 (h!59082 lt!1880825)))))

(declare-fun lt!1881334 () Unit!128733)

(declare-fun Unit!128801 () Unit!128733)

(assert (=> b!4716144 (= lt!1881334 Unit!128801)))

(assert (=> b!4716144 (forall!11537 lt!1880825 lambda!214105)))

(declare-fun lt!1881326 () Unit!128733)

(declare-fun Unit!128802 () Unit!128733)

(assert (=> b!4716144 (= lt!1881326 Unit!128802)))

(declare-fun call!329746 () Bool)

(assert (=> b!4716144 call!329746))

(declare-fun lt!1881339 () Unit!128733)

(declare-fun Unit!128803 () Unit!128733)

(assert (=> b!4716144 (= lt!1881339 Unit!128803)))

(declare-fun lt!1881342 () Unit!128733)

(declare-fun Unit!128804 () Unit!128733)

(assert (=> b!4716144 (= lt!1881342 Unit!128804)))

(declare-fun lt!1881340 () Unit!128733)

(assert (=> b!4716144 (= lt!1881340 (addForallContainsKeyThenBeforeAdding!779 lt!1880822 lt!1881335 (_1!30463 (h!59082 lt!1880825)) (_2!30463 (h!59082 lt!1880825))))))

(assert (=> b!4716144 (forall!11537 (toList!5861 lt!1880822) lambda!214105)))

(declare-fun lt!1881331 () Unit!128733)

(assert (=> b!4716144 (= lt!1881331 lt!1881340)))

(declare-fun call!329745 () Bool)

(assert (=> b!4716144 call!329745))

(declare-fun lt!1881341 () Unit!128733)

(declare-fun Unit!128805 () Unit!128733)

(assert (=> b!4716144 (= lt!1881341 Unit!128805)))

(declare-fun res!1994185 () Bool)

(assert (=> b!4716144 (= res!1994185 (forall!11537 lt!1880825 lambda!214105))))

(declare-fun e!2941389 () Bool)

(assert (=> b!4716144 (=> (not res!1994185) (not e!2941389))))

(assert (=> b!4716144 e!2941389))

(declare-fun lt!1881337 () Unit!128733)

(declare-fun Unit!128806 () Unit!128733)

(assert (=> b!4716144 (= lt!1881337 Unit!128806)))

(declare-fun c!805545 () Bool)

(declare-fun bm!329740 () Bool)

(assert (=> bm!329740 (= call!329745 (forall!11537 (toList!5861 lt!1880822) (ite c!805545 lambda!214103 lambda!214105)))))

(declare-fun b!4716145 () Bool)

(declare-fun e!2941390 () Bool)

(assert (=> b!4716145 (= e!2941390 (invariantList!1492 (toList!5861 lt!1881330)))))

(declare-fun bm!329741 () Bool)

(assert (=> bm!329741 (= call!329747 (lemmaContainsAllItsOwnKeys!780 lt!1880822))))

(assert (=> b!4716146 (= e!2941391 lt!1880822)))

(declare-fun lt!1881329 () Unit!128733)

(assert (=> b!4716146 (= lt!1881329 call!329747)))

(assert (=> b!4716146 call!329745))

(declare-fun lt!1881338 () Unit!128733)

(assert (=> b!4716146 (= lt!1881338 lt!1881329)))

(assert (=> b!4716146 call!329746))

(declare-fun lt!1881327 () Unit!128733)

(declare-fun Unit!128807 () Unit!128733)

(assert (=> b!4716146 (= lt!1881327 Unit!128807)))

(assert (=> d!1500825 e!2941390))

(declare-fun res!1994184 () Bool)

(assert (=> d!1500825 (=> (not res!1994184) (not e!2941390))))

(assert (=> d!1500825 (= res!1994184 (forall!11537 lt!1880825 lambda!214109))))

(assert (=> d!1500825 (= lt!1881330 e!2941391)))

(assert (=> d!1500825 (= c!805545 ((_ is Nil!52755) lt!1880825))))

(assert (=> d!1500825 (noDuplicateKeys!1986 lt!1880825)))

(assert (=> d!1500825 (= (addToMapMapFromBucket!1416 lt!1880825 lt!1880822) lt!1881330)))

(declare-fun b!4716147 () Bool)

(assert (=> b!4716147 (= e!2941389 (forall!11537 (toList!5861 lt!1880822) lambda!214105))))

(declare-fun bm!329742 () Bool)

(assert (=> bm!329742 (= call!329746 (forall!11537 (ite c!805545 (toList!5861 lt!1880822) (toList!5861 lt!1881328)) (ite c!805545 lambda!214103 lambda!214105)))))

(declare-fun b!4716148 () Bool)

(declare-fun res!1994183 () Bool)

(assert (=> b!4716148 (=> (not res!1994183) (not e!2941390))))

(assert (=> b!4716148 (= res!1994183 (forall!11537 (toList!5861 lt!1880822) lambda!214109))))

(assert (= (and d!1500825 c!805545) b!4716146))

(assert (= (and d!1500825 (not c!805545)) b!4716144))

(assert (= (and b!4716144 res!1994185) b!4716147))

(assert (= (or b!4716146 b!4716144) bm!329741))

(assert (= (or b!4716146 b!4716144) bm!329740))

(assert (= (or b!4716146 b!4716144) bm!329742))

(assert (= (and d!1500825 res!1994184) b!4716148))

(assert (= (and b!4716148 res!1994183) b!4716145))

(assert (=> bm!329741 m!5645221))

(declare-fun m!5645897 () Bool)

(assert (=> d!1500825 m!5645897))

(assert (=> d!1500825 m!5645525))

(declare-fun m!5645899 () Bool)

(assert (=> bm!329742 m!5645899))

(declare-fun m!5645901 () Bool)

(assert (=> b!4716148 m!5645901))

(declare-fun m!5645905 () Bool)

(assert (=> b!4716144 m!5645905))

(declare-fun m!5645907 () Bool)

(assert (=> b!4716144 m!5645907))

(declare-fun m!5645909 () Bool)

(assert (=> b!4716144 m!5645909))

(declare-fun m!5645911 () Bool)

(assert (=> b!4716144 m!5645911))

(assert (=> b!4716144 m!5645907))

(declare-fun m!5645913 () Bool)

(assert (=> b!4716144 m!5645913))

(declare-fun m!5645915 () Bool)

(assert (=> b!4716144 m!5645915))

(declare-fun m!5645917 () Bool)

(assert (=> b!4716144 m!5645917))

(declare-fun m!5645919 () Bool)

(assert (=> b!4716144 m!5645919))

(declare-fun m!5645921 () Bool)

(assert (=> b!4716144 m!5645921))

(assert (=> b!4716144 m!5645913))

(declare-fun m!5645923 () Bool)

(assert (=> b!4716144 m!5645923))

(declare-fun m!5645925 () Bool)

(assert (=> b!4716144 m!5645925))

(declare-fun m!5645927 () Bool)

(assert (=> b!4716145 m!5645927))

(declare-fun m!5645929 () Bool)

(assert (=> bm!329740 m!5645929))

(assert (=> b!4716147 m!5645925))

(assert (=> b!4715805 d!1500825))

(declare-fun bs!1104883 () Bool)

(declare-fun b!4716159 () Bool)

(assert (= bs!1104883 (and b!4716159 b!4716077)))

(declare-fun lambda!214111 () Int)

(assert (=> bs!1104883 (= lambda!214111 lambda!214076)))

(declare-fun bs!1104885 () Bool)

(assert (= bs!1104885 (and b!4716159 d!1500727)))

(assert (=> bs!1104885 (not (= lambda!214111 lambda!214056))))

(declare-fun bs!1104887 () Bool)

(assert (= bs!1104887 (and b!4716159 b!4715953)))

(assert (=> bs!1104887 (= (= lt!1880822 lt!1881037) (= lambda!214111 lambda!214044))))

(declare-fun bs!1104889 () Bool)

(assert (= bs!1104889 (and b!4716159 b!4716144)))

(assert (=> bs!1104889 (= (= lt!1880822 lt!1881335) (= lambda!214111 lambda!214105))))

(assert (=> bs!1104889 (= lambda!214111 lambda!214104)))

(declare-fun bs!1104891 () Bool)

(assert (= bs!1104891 (and b!4716159 b!4716091)))

(assert (=> bs!1104891 (= lambda!214111 lambda!214081)))

(declare-fun bs!1104893 () Bool)

(assert (= bs!1104893 (and b!4716159 b!4716079)))

(assert (=> bs!1104893 (= lambda!214111 lambda!214074)))

(declare-fun bs!1104894 () Bool)

(assert (= bs!1104894 (and b!4716159 b!4716093)))

(assert (=> bs!1104894 (= lambda!214111 lambda!214080)))

(assert (=> bs!1104891 (= (= lt!1880822 lt!1881211) (= lambda!214111 lambda!214082))))

(assert (=> bs!1104887 (= lambda!214111 lambda!214043)))

(declare-fun bs!1104896 () Bool)

(assert (= bs!1104896 (and b!4716159 d!1500675)))

(assert (=> bs!1104896 (= (= lt!1880822 lt!1881032) (= lambda!214111 lambda!214045))))

(assert (=> bs!1104883 (= (= lt!1880822 lt!1881182) (= lambda!214111 lambda!214077))))

(declare-fun bs!1104898 () Bool)

(assert (= bs!1104898 (and b!4716159 d!1500801)))

(assert (=> bs!1104898 (= (= lt!1880822 lt!1881206) (= lambda!214111 lambda!214083))))

(declare-fun bs!1104899 () Bool)

(assert (= bs!1104899 (and b!4716159 b!4716146)))

(assert (=> bs!1104899 (= lambda!214111 lambda!214103)))

(declare-fun bs!1104901 () Bool)

(assert (= bs!1104901 (and b!4716159 d!1500825)))

(assert (=> bs!1104901 (= (= lt!1880822 lt!1881330) (= lambda!214111 lambda!214109))))

(declare-fun bs!1104902 () Bool)

(assert (= bs!1104902 (and b!4716159 d!1500795)))

(assert (=> bs!1104902 (= (= lt!1880822 lt!1881177) (= lambda!214111 lambda!214079))))

(declare-fun bs!1104903 () Bool)

(assert (= bs!1104903 (and b!4716159 b!4715955)))

(assert (=> bs!1104903 (= lambda!214111 lambda!214042)))

(assert (=> b!4716159 true))

(declare-fun bs!1104904 () Bool)

(declare-fun b!4716157 () Bool)

(assert (= bs!1104904 (and b!4716157 b!4716077)))

(declare-fun lambda!214112 () Int)

(assert (=> bs!1104904 (= lambda!214112 lambda!214076)))

(declare-fun bs!1104905 () Bool)

(assert (= bs!1104905 (and b!4716157 d!1500727)))

(assert (=> bs!1104905 (not (= lambda!214112 lambda!214056))))

(declare-fun bs!1104906 () Bool)

(assert (= bs!1104906 (and b!4716157 b!4715953)))

(assert (=> bs!1104906 (= (= lt!1880822 lt!1881037) (= lambda!214112 lambda!214044))))

(declare-fun bs!1104907 () Bool)

(assert (= bs!1104907 (and b!4716157 b!4716144)))

(assert (=> bs!1104907 (= (= lt!1880822 lt!1881335) (= lambda!214112 lambda!214105))))

(assert (=> bs!1104907 (= lambda!214112 lambda!214104)))

(declare-fun bs!1104908 () Bool)

(assert (= bs!1104908 (and b!4716157 b!4716091)))

(assert (=> bs!1104908 (= lambda!214112 lambda!214081)))

(declare-fun bs!1104909 () Bool)

(assert (= bs!1104909 (and b!4716157 b!4716079)))

(assert (=> bs!1104909 (= lambda!214112 lambda!214074)))

(declare-fun bs!1104910 () Bool)

(assert (= bs!1104910 (and b!4716157 b!4716093)))

(assert (=> bs!1104910 (= lambda!214112 lambda!214080)))

(assert (=> bs!1104908 (= (= lt!1880822 lt!1881211) (= lambda!214112 lambda!214082))))

(assert (=> bs!1104906 (= lambda!214112 lambda!214043)))

(assert (=> bs!1104904 (= (= lt!1880822 lt!1881182) (= lambda!214112 lambda!214077))))

(declare-fun bs!1104911 () Bool)

(assert (= bs!1104911 (and b!4716157 d!1500801)))

(assert (=> bs!1104911 (= (= lt!1880822 lt!1881206) (= lambda!214112 lambda!214083))))

(declare-fun bs!1104912 () Bool)

(assert (= bs!1104912 (and b!4716157 b!4716146)))

(assert (=> bs!1104912 (= lambda!214112 lambda!214103)))

(declare-fun bs!1104913 () Bool)

(assert (= bs!1104913 (and b!4716157 d!1500675)))

(assert (=> bs!1104913 (= (= lt!1880822 lt!1881032) (= lambda!214112 lambda!214045))))

(declare-fun bs!1104914 () Bool)

(assert (= bs!1104914 (and b!4716157 b!4716159)))

(assert (=> bs!1104914 (= lambda!214112 lambda!214111)))

(declare-fun bs!1104915 () Bool)

(assert (= bs!1104915 (and b!4716157 d!1500825)))

(assert (=> bs!1104915 (= (= lt!1880822 lt!1881330) (= lambda!214112 lambda!214109))))

(declare-fun bs!1104916 () Bool)

(assert (= bs!1104916 (and b!4716157 d!1500795)))

(assert (=> bs!1104916 (= (= lt!1880822 lt!1881177) (= lambda!214112 lambda!214079))))

(declare-fun bs!1104917 () Bool)

(assert (= bs!1104917 (and b!4716157 b!4715955)))

(assert (=> bs!1104917 (= lambda!214112 lambda!214042)))

(assert (=> b!4716157 true))

(declare-fun lambda!214113 () Int)

(declare-fun lt!1881357 () ListMap!5225)

(assert (=> bs!1104904 (= (= lt!1881357 lt!1880822) (= lambda!214113 lambda!214076))))

(assert (=> bs!1104905 (not (= lambda!214113 lambda!214056))))

(assert (=> bs!1104906 (= (= lt!1881357 lt!1881037) (= lambda!214113 lambda!214044))))

(assert (=> bs!1104907 (= (= lt!1881357 lt!1881335) (= lambda!214113 lambda!214105))))

(assert (=> b!4716157 (= (= lt!1881357 lt!1880822) (= lambda!214113 lambda!214112))))

(assert (=> bs!1104907 (= (= lt!1881357 lt!1880822) (= lambda!214113 lambda!214104))))

(assert (=> bs!1104908 (= (= lt!1881357 lt!1880822) (= lambda!214113 lambda!214081))))

(assert (=> bs!1104909 (= (= lt!1881357 lt!1880822) (= lambda!214113 lambda!214074))))

(assert (=> bs!1104910 (= (= lt!1881357 lt!1880822) (= lambda!214113 lambda!214080))))

(assert (=> bs!1104908 (= (= lt!1881357 lt!1881211) (= lambda!214113 lambda!214082))))

(assert (=> bs!1104906 (= (= lt!1881357 lt!1880822) (= lambda!214113 lambda!214043))))

(assert (=> bs!1104904 (= (= lt!1881357 lt!1881182) (= lambda!214113 lambda!214077))))

(assert (=> bs!1104911 (= (= lt!1881357 lt!1881206) (= lambda!214113 lambda!214083))))

(assert (=> bs!1104912 (= (= lt!1881357 lt!1880822) (= lambda!214113 lambda!214103))))

(assert (=> bs!1104913 (= (= lt!1881357 lt!1881032) (= lambda!214113 lambda!214045))))

(assert (=> bs!1104914 (= (= lt!1881357 lt!1880822) (= lambda!214113 lambda!214111))))

(assert (=> bs!1104915 (= (= lt!1881357 lt!1881330) (= lambda!214113 lambda!214109))))

(assert (=> bs!1104916 (= (= lt!1881357 lt!1881177) (= lambda!214113 lambda!214079))))

(assert (=> bs!1104917 (= (= lt!1881357 lt!1880822) (= lambda!214113 lambda!214042))))

(assert (=> b!4716157 true))

(declare-fun bs!1104920 () Bool)

(declare-fun d!1500843 () Bool)

(assert (= bs!1104920 (and d!1500843 b!4716077)))

(declare-fun lt!1881352 () ListMap!5225)

(declare-fun lambda!214114 () Int)

(assert (=> bs!1104920 (= (= lt!1881352 lt!1880822) (= lambda!214114 lambda!214076))))

(declare-fun bs!1104921 () Bool)

(assert (= bs!1104921 (and d!1500843 d!1500727)))

(assert (=> bs!1104921 (not (= lambda!214114 lambda!214056))))

(declare-fun bs!1104922 () Bool)

(assert (= bs!1104922 (and d!1500843 b!4715953)))

(assert (=> bs!1104922 (= (= lt!1881352 lt!1881037) (= lambda!214114 lambda!214044))))

(declare-fun bs!1104923 () Bool)

(assert (= bs!1104923 (and d!1500843 b!4716144)))

(assert (=> bs!1104923 (= (= lt!1881352 lt!1881335) (= lambda!214114 lambda!214105))))

(declare-fun bs!1104924 () Bool)

(assert (= bs!1104924 (and d!1500843 b!4716157)))

(assert (=> bs!1104924 (= (= lt!1881352 lt!1881357) (= lambda!214114 lambda!214113))))

(assert (=> bs!1104924 (= (= lt!1881352 lt!1880822) (= lambda!214114 lambda!214112))))

(assert (=> bs!1104923 (= (= lt!1881352 lt!1880822) (= lambda!214114 lambda!214104))))

(declare-fun bs!1104925 () Bool)

(assert (= bs!1104925 (and d!1500843 b!4716091)))

(assert (=> bs!1104925 (= (= lt!1881352 lt!1880822) (= lambda!214114 lambda!214081))))

(declare-fun bs!1104926 () Bool)

(assert (= bs!1104926 (and d!1500843 b!4716079)))

(assert (=> bs!1104926 (= (= lt!1881352 lt!1880822) (= lambda!214114 lambda!214074))))

(declare-fun bs!1104927 () Bool)

(assert (= bs!1104927 (and d!1500843 b!4716093)))

(assert (=> bs!1104927 (= (= lt!1881352 lt!1880822) (= lambda!214114 lambda!214080))))

(assert (=> bs!1104925 (= (= lt!1881352 lt!1881211) (= lambda!214114 lambda!214082))))

(assert (=> bs!1104922 (= (= lt!1881352 lt!1880822) (= lambda!214114 lambda!214043))))

(assert (=> bs!1104920 (= (= lt!1881352 lt!1881182) (= lambda!214114 lambda!214077))))

(declare-fun bs!1104928 () Bool)

(assert (= bs!1104928 (and d!1500843 d!1500801)))

(assert (=> bs!1104928 (= (= lt!1881352 lt!1881206) (= lambda!214114 lambda!214083))))

(declare-fun bs!1104929 () Bool)

(assert (= bs!1104929 (and d!1500843 b!4716146)))

(assert (=> bs!1104929 (= (= lt!1881352 lt!1880822) (= lambda!214114 lambda!214103))))

(declare-fun bs!1104930 () Bool)

(assert (= bs!1104930 (and d!1500843 d!1500675)))

(assert (=> bs!1104930 (= (= lt!1881352 lt!1881032) (= lambda!214114 lambda!214045))))

(declare-fun bs!1104931 () Bool)

(assert (= bs!1104931 (and d!1500843 b!4716159)))

(assert (=> bs!1104931 (= (= lt!1881352 lt!1880822) (= lambda!214114 lambda!214111))))

(declare-fun bs!1104932 () Bool)

(assert (= bs!1104932 (and d!1500843 d!1500825)))

(assert (=> bs!1104932 (= (= lt!1881352 lt!1881330) (= lambda!214114 lambda!214109))))

(declare-fun bs!1104933 () Bool)

(assert (= bs!1104933 (and d!1500843 d!1500795)))

(assert (=> bs!1104933 (= (= lt!1881352 lt!1881177) (= lambda!214114 lambda!214079))))

(declare-fun bs!1104934 () Bool)

(assert (= bs!1104934 (and d!1500843 b!4715955)))

(assert (=> bs!1104934 (= (= lt!1881352 lt!1880822) (= lambda!214114 lambda!214042))))

(assert (=> d!1500843 true))

(declare-fun e!2941398 () ListMap!5225)

(assert (=> b!4716157 (= e!2941398 lt!1881357)))

(declare-fun lt!1881350 () ListMap!5225)

(assert (=> b!4716157 (= lt!1881350 (+!2246 lt!1880822 (h!59082 (Cons!52755 lt!1880837 lt!1880806))))))

(assert (=> b!4716157 (= lt!1881357 (addToMapMapFromBucket!1416 (t!360129 (Cons!52755 lt!1880837 lt!1880806)) (+!2246 lt!1880822 (h!59082 (Cons!52755 lt!1880837 lt!1880806)))))))

(declare-fun lt!1881366 () Unit!128733)

(declare-fun call!329750 () Unit!128733)

(assert (=> b!4716157 (= lt!1881366 call!329750)))

(assert (=> b!4716157 (forall!11537 (toList!5861 lt!1880822) lambda!214112)))

(declare-fun lt!1881365 () Unit!128733)

(assert (=> b!4716157 (= lt!1881365 lt!1881366)))

(assert (=> b!4716157 (forall!11537 (toList!5861 lt!1881350) lambda!214113)))

(declare-fun lt!1881367 () Unit!128733)

(declare-fun Unit!128819 () Unit!128733)

(assert (=> b!4716157 (= lt!1881367 Unit!128819)))

(assert (=> b!4716157 (forall!11537 (t!360129 (Cons!52755 lt!1880837 lt!1880806)) lambda!214113)))

(declare-fun lt!1881358 () Unit!128733)

(declare-fun Unit!128820 () Unit!128733)

(assert (=> b!4716157 (= lt!1881358 Unit!128820)))

(declare-fun lt!1881347 () Unit!128733)

(declare-fun Unit!128821 () Unit!128733)

(assert (=> b!4716157 (= lt!1881347 Unit!128821)))

(declare-fun lt!1881354 () Unit!128733)

(assert (=> b!4716157 (= lt!1881354 (forallContained!3606 (toList!5861 lt!1881350) lambda!214113 (h!59082 (Cons!52755 lt!1880837 lt!1880806))))))

(assert (=> b!4716157 (contains!16093 lt!1881350 (_1!30463 (h!59082 (Cons!52755 lt!1880837 lt!1880806))))))

(declare-fun lt!1881355 () Unit!128733)

(declare-fun Unit!128822 () Unit!128733)

(assert (=> b!4716157 (= lt!1881355 Unit!128822)))

(assert (=> b!4716157 (contains!16093 lt!1881357 (_1!30463 (h!59082 (Cons!52755 lt!1880837 lt!1880806))))))

(declare-fun lt!1881356 () Unit!128733)

(declare-fun Unit!128823 () Unit!128733)

(assert (=> b!4716157 (= lt!1881356 Unit!128823)))

(assert (=> b!4716157 (forall!11537 (Cons!52755 lt!1880837 lt!1880806) lambda!214113)))

(declare-fun lt!1881348 () Unit!128733)

(declare-fun Unit!128824 () Unit!128733)

(assert (=> b!4716157 (= lt!1881348 Unit!128824)))

(declare-fun call!329749 () Bool)

(assert (=> b!4716157 call!329749))

(declare-fun lt!1881361 () Unit!128733)

(declare-fun Unit!128825 () Unit!128733)

(assert (=> b!4716157 (= lt!1881361 Unit!128825)))

(declare-fun lt!1881364 () Unit!128733)

(declare-fun Unit!128826 () Unit!128733)

(assert (=> b!4716157 (= lt!1881364 Unit!128826)))

(declare-fun lt!1881362 () Unit!128733)

(assert (=> b!4716157 (= lt!1881362 (addForallContainsKeyThenBeforeAdding!779 lt!1880822 lt!1881357 (_1!30463 (h!59082 (Cons!52755 lt!1880837 lt!1880806))) (_2!30463 (h!59082 (Cons!52755 lt!1880837 lt!1880806)))))))

(assert (=> b!4716157 (forall!11537 (toList!5861 lt!1880822) lambda!214113)))

(declare-fun lt!1881353 () Unit!128733)

(assert (=> b!4716157 (= lt!1881353 lt!1881362)))

(declare-fun call!329748 () Bool)

(assert (=> b!4716157 call!329748))

(declare-fun lt!1881363 () Unit!128733)

(declare-fun Unit!128827 () Unit!128733)

(assert (=> b!4716157 (= lt!1881363 Unit!128827)))

(declare-fun res!1994190 () Bool)

(assert (=> b!4716157 (= res!1994190 (forall!11537 (Cons!52755 lt!1880837 lt!1880806) lambda!214113))))

(declare-fun e!2941396 () Bool)

(assert (=> b!4716157 (=> (not res!1994190) (not e!2941396))))

(assert (=> b!4716157 e!2941396))

(declare-fun lt!1881359 () Unit!128733)

(declare-fun Unit!128828 () Unit!128733)

(assert (=> b!4716157 (= lt!1881359 Unit!128828)))

(declare-fun c!805548 () Bool)

(declare-fun bm!329743 () Bool)

(assert (=> bm!329743 (= call!329748 (forall!11537 (toList!5861 lt!1880822) (ite c!805548 lambda!214111 lambda!214113)))))

(declare-fun b!4716158 () Bool)

(declare-fun e!2941397 () Bool)

(assert (=> b!4716158 (= e!2941397 (invariantList!1492 (toList!5861 lt!1881352)))))

(declare-fun bm!329744 () Bool)

(assert (=> bm!329744 (= call!329750 (lemmaContainsAllItsOwnKeys!780 lt!1880822))))

(assert (=> b!4716159 (= e!2941398 lt!1880822)))

(declare-fun lt!1881351 () Unit!128733)

(assert (=> b!4716159 (= lt!1881351 call!329750)))

(assert (=> b!4716159 call!329748))

(declare-fun lt!1881360 () Unit!128733)

(assert (=> b!4716159 (= lt!1881360 lt!1881351)))

(assert (=> b!4716159 call!329749))

(declare-fun lt!1881349 () Unit!128733)

(declare-fun Unit!128829 () Unit!128733)

(assert (=> b!4716159 (= lt!1881349 Unit!128829)))

(assert (=> d!1500843 e!2941397))

(declare-fun res!1994189 () Bool)

(assert (=> d!1500843 (=> (not res!1994189) (not e!2941397))))

(assert (=> d!1500843 (= res!1994189 (forall!11537 (Cons!52755 lt!1880837 lt!1880806) lambda!214114))))

(assert (=> d!1500843 (= lt!1881352 e!2941398)))

(assert (=> d!1500843 (= c!805548 ((_ is Nil!52755) (Cons!52755 lt!1880837 lt!1880806)))))

(assert (=> d!1500843 (noDuplicateKeys!1986 (Cons!52755 lt!1880837 lt!1880806))))

(assert (=> d!1500843 (= (addToMapMapFromBucket!1416 (Cons!52755 lt!1880837 lt!1880806) lt!1880822) lt!1881352)))

(declare-fun b!4716160 () Bool)

(assert (=> b!4716160 (= e!2941396 (forall!11537 (toList!5861 lt!1880822) lambda!214113))))

(declare-fun bm!329745 () Bool)

(assert (=> bm!329745 (= call!329749 (forall!11537 (ite c!805548 (toList!5861 lt!1880822) (toList!5861 lt!1881350)) (ite c!805548 lambda!214111 lambda!214113)))))

(declare-fun b!4716161 () Bool)

(declare-fun res!1994188 () Bool)

(assert (=> b!4716161 (=> (not res!1994188) (not e!2941397))))

(assert (=> b!4716161 (= res!1994188 (forall!11537 (toList!5861 lt!1880822) lambda!214114))))

(assert (= (and d!1500843 c!805548) b!4716159))

(assert (= (and d!1500843 (not c!805548)) b!4716157))

(assert (= (and b!4716157 res!1994190) b!4716160))

(assert (= (or b!4716159 b!4716157) bm!329744))

(assert (= (or b!4716159 b!4716157) bm!329743))

(assert (= (or b!4716159 b!4716157) bm!329745))

(assert (= (and d!1500843 res!1994189) b!4716161))

(assert (= (and b!4716161 res!1994188) b!4716158))

(assert (=> bm!329744 m!5645221))

(declare-fun m!5645939 () Bool)

(assert (=> d!1500843 m!5645939))

(declare-fun m!5645941 () Bool)

(assert (=> d!1500843 m!5645941))

(declare-fun m!5645943 () Bool)

(assert (=> bm!329745 m!5645943))

(declare-fun m!5645945 () Bool)

(assert (=> b!4716161 m!5645945))

(declare-fun m!5645947 () Bool)

(assert (=> b!4716157 m!5645947))

(declare-fun m!5645949 () Bool)

(assert (=> b!4716157 m!5645949))

(declare-fun m!5645951 () Bool)

(assert (=> b!4716157 m!5645951))

(declare-fun m!5645953 () Bool)

(assert (=> b!4716157 m!5645953))

(assert (=> b!4716157 m!5645949))

(declare-fun m!5645955 () Bool)

(assert (=> b!4716157 m!5645955))

(declare-fun m!5645957 () Bool)

(assert (=> b!4716157 m!5645957))

(declare-fun m!5645959 () Bool)

(assert (=> b!4716157 m!5645959))

(declare-fun m!5645961 () Bool)

(assert (=> b!4716157 m!5645961))

(declare-fun m!5645963 () Bool)

(assert (=> b!4716157 m!5645963))

(assert (=> b!4716157 m!5645955))

(declare-fun m!5645965 () Bool)

(assert (=> b!4716157 m!5645965))

(declare-fun m!5645967 () Bool)

(assert (=> b!4716157 m!5645967))

(declare-fun m!5645969 () Bool)

(assert (=> b!4716158 m!5645969))

(declare-fun m!5645971 () Bool)

(assert (=> bm!329743 m!5645971))

(assert (=> b!4716160 m!5645967))

(assert (=> b!4715805 d!1500843))

(declare-fun b!4716180 () Bool)

(declare-fun e!2941409 () List!52879)

(assert (=> b!4716180 (= e!2941409 Nil!52755)))

(declare-fun b!4716178 () Bool)

(declare-fun e!2941408 () List!52879)

(assert (=> b!4716178 (= e!2941408 e!2941409)))

(declare-fun c!805552 () Bool)

(assert (=> b!4716178 (= c!805552 ((_ is Cons!52755) (t!360129 oldBucket!34)))))

(declare-fun b!4716179 () Bool)

(assert (=> b!4716179 (= e!2941409 (Cons!52755 (h!59082 (t!360129 oldBucket!34)) (removePairForKey!1581 (t!360129 (t!360129 oldBucket!34)) key!4653)))))

(declare-fun b!4716177 () Bool)

(assert (=> b!4716177 (= e!2941408 (t!360129 (t!360129 oldBucket!34)))))

(declare-fun d!1500851 () Bool)

(declare-fun lt!1881369 () List!52879)

(assert (=> d!1500851 (not (containsKey!3319 lt!1881369 key!4653))))

(assert (=> d!1500851 (= lt!1881369 e!2941408)))

(declare-fun c!805551 () Bool)

(assert (=> d!1500851 (= c!805551 (and ((_ is Cons!52755) (t!360129 oldBucket!34)) (= (_1!30463 (h!59082 (t!360129 oldBucket!34))) key!4653)))))

(assert (=> d!1500851 (noDuplicateKeys!1986 (t!360129 oldBucket!34))))

(assert (=> d!1500851 (= (removePairForKey!1581 (t!360129 oldBucket!34) key!4653) lt!1881369)))

(assert (= (and d!1500851 c!805551) b!4716177))

(assert (= (and d!1500851 (not c!805551)) b!4716178))

(assert (= (and b!4716178 c!805552) b!4716179))

(assert (= (and b!4716178 (not c!805552)) b!4716180))

(declare-fun m!5645973 () Bool)

(assert (=> b!4716179 m!5645973))

(declare-fun m!5645975 () Bool)

(assert (=> d!1500851 m!5645975))

(declare-fun m!5645977 () Bool)

(assert (=> d!1500851 m!5645977))

(assert (=> b!4715806 d!1500851))

(declare-fun b!4716181 () Bool)

(assert (=> b!4716181 false))

(declare-fun lt!1881371 () Unit!128733)

(declare-fun lt!1881375 () Unit!128733)

(assert (=> b!4716181 (= lt!1881371 lt!1881375)))

(assert (=> b!4716181 (containsKey!3322 (toList!5861 lt!1880832) key!4653)))

(assert (=> b!4716181 (= lt!1881375 (lemmaInGetKeysListThenContainsKey!931 (toList!5861 lt!1880832) key!4653))))

(declare-fun e!2941413 () Unit!128733)

(declare-fun Unit!128830 () Unit!128733)

(assert (=> b!4716181 (= e!2941413 Unit!128830)))

(declare-fun bm!329746 () Bool)

(declare-fun call!329751 () Bool)

(declare-fun e!2941411 () List!52882)

(assert (=> bm!329746 (= call!329751 (contains!16099 e!2941411 key!4653))))

(declare-fun c!805553 () Bool)

(declare-fun c!805554 () Bool)

(assert (=> bm!329746 (= c!805553 c!805554)))

(declare-fun b!4716182 () Bool)

(declare-fun Unit!128831 () Unit!128733)

(assert (=> b!4716182 (= e!2941413 Unit!128831)))

(declare-fun b!4716183 () Bool)

(declare-fun e!2941415 () Unit!128733)

(declare-fun lt!1881374 () Unit!128733)

(assert (=> b!4716183 (= e!2941415 lt!1881374)))

(declare-fun lt!1881377 () Unit!128733)

(assert (=> b!4716183 (= lt!1881377 (lemmaContainsKeyImpliesGetValueByKeyDefined!1822 (toList!5861 lt!1880832) key!4653))))

(assert (=> b!4716183 (isDefined!9579 (getValueByKey!1931 (toList!5861 lt!1880832) key!4653))))

(declare-fun lt!1881370 () Unit!128733)

(assert (=> b!4716183 (= lt!1881370 lt!1881377)))

(assert (=> b!4716183 (= lt!1881374 (lemmaInListThenGetKeysListContains!927 (toList!5861 lt!1880832) key!4653))))

(assert (=> b!4716183 call!329751))

(declare-fun b!4716185 () Bool)

(declare-fun e!2941412 () Bool)

(assert (=> b!4716185 (= e!2941412 (contains!16099 (keys!18927 lt!1880832) key!4653))))

(declare-fun b!4716186 () Bool)

(assert (=> b!4716186 (= e!2941411 (getKeysList!932 (toList!5861 lt!1880832)))))

(declare-fun b!4716187 () Bool)

(assert (=> b!4716187 (= e!2941411 (keys!18927 lt!1880832))))

(declare-fun b!4716188 () Bool)

(declare-fun e!2941414 () Bool)

(assert (=> b!4716188 (= e!2941414 e!2941412)))

(declare-fun res!1994192 () Bool)

(assert (=> b!4716188 (=> (not res!1994192) (not e!2941412))))

(assert (=> b!4716188 (= res!1994192 (isDefined!9579 (getValueByKey!1931 (toList!5861 lt!1880832) key!4653)))))

(declare-fun b!4716189 () Bool)

(assert (=> b!4716189 (= e!2941415 e!2941413)))

(declare-fun c!805555 () Bool)

(assert (=> b!4716189 (= c!805555 call!329751)))

(declare-fun d!1500853 () Bool)

(assert (=> d!1500853 e!2941414))

(declare-fun res!1994193 () Bool)

(assert (=> d!1500853 (=> res!1994193 e!2941414)))

(declare-fun e!2941410 () Bool)

(assert (=> d!1500853 (= res!1994193 e!2941410)))

(declare-fun res!1994191 () Bool)

(assert (=> d!1500853 (=> (not res!1994191) (not e!2941410))))

(declare-fun lt!1881372 () Bool)

(assert (=> d!1500853 (= res!1994191 (not lt!1881372))))

(declare-fun lt!1881373 () Bool)

(assert (=> d!1500853 (= lt!1881372 lt!1881373)))

(declare-fun lt!1881376 () Unit!128733)

(assert (=> d!1500853 (= lt!1881376 e!2941415)))

(assert (=> d!1500853 (= c!805554 lt!1881373)))

(assert (=> d!1500853 (= lt!1881373 (containsKey!3322 (toList!5861 lt!1880832) key!4653))))

(assert (=> d!1500853 (= (contains!16093 lt!1880832 key!4653) lt!1881372)))

(declare-fun b!4716184 () Bool)

(assert (=> b!4716184 (= e!2941410 (not (contains!16099 (keys!18927 lt!1880832) key!4653)))))

(assert (= (and d!1500853 c!805554) b!4716183))

(assert (= (and d!1500853 (not c!805554)) b!4716189))

(assert (= (and b!4716189 c!805555) b!4716181))

(assert (= (and b!4716189 (not c!805555)) b!4716182))

(assert (= (or b!4716183 b!4716189) bm!329746))

(assert (= (and bm!329746 c!805553) b!4716186))

(assert (= (and bm!329746 (not c!805553)) b!4716187))

(assert (= (and d!1500853 res!1994191) b!4716184))

(assert (= (and d!1500853 (not res!1994193)) b!4716188))

(assert (= (and b!4716188 res!1994192) b!4716185))

(declare-fun m!5645979 () Bool)

(assert (=> d!1500853 m!5645979))

(assert (=> b!4716181 m!5645979))

(declare-fun m!5645981 () Bool)

(assert (=> b!4716181 m!5645981))

(declare-fun m!5645983 () Bool)

(assert (=> b!4716187 m!5645983))

(declare-fun m!5645985 () Bool)

(assert (=> bm!329746 m!5645985))

(declare-fun m!5645987 () Bool)

(assert (=> b!4716188 m!5645987))

(assert (=> b!4716188 m!5645987))

(declare-fun m!5645989 () Bool)

(assert (=> b!4716188 m!5645989))

(assert (=> b!4716185 m!5645983))

(assert (=> b!4716185 m!5645983))

(declare-fun m!5645991 () Bool)

(assert (=> b!4716185 m!5645991))

(assert (=> b!4716184 m!5645983))

(assert (=> b!4716184 m!5645983))

(assert (=> b!4716184 m!5645991))

(declare-fun m!5645993 () Bool)

(assert (=> b!4716186 m!5645993))

(declare-fun m!5645995 () Bool)

(assert (=> b!4716183 m!5645995))

(assert (=> b!4716183 m!5645987))

(assert (=> b!4716183 m!5645987))

(assert (=> b!4716183 m!5645989))

(declare-fun m!5645997 () Bool)

(assert (=> b!4716183 m!5645997))

(assert (=> b!4715812 d!1500853))

(declare-fun bs!1104935 () Bool)

(declare-fun d!1500855 () Bool)

(assert (= bs!1104935 (and d!1500855 start!479620)))

(declare-fun lambda!214115 () Int)

(assert (=> bs!1104935 (= lambda!214115 lambda!213967)))

(declare-fun bs!1104936 () Bool)

(assert (= bs!1104936 (and d!1500855 d!1500775)))

(assert (=> bs!1104936 (= lambda!214115 lambda!214068)))

(declare-fun bs!1104937 () Bool)

(assert (= bs!1104937 (and d!1500855 d!1500747)))

(assert (=> bs!1104937 (= lambda!214115 lambda!214063)))

(declare-fun bs!1104938 () Bool)

(assert (= bs!1104938 (and d!1500855 d!1500739)))

(assert (=> bs!1104938 (= lambda!214115 lambda!214062)))

(declare-fun bs!1104939 () Bool)

(assert (= bs!1104939 (and d!1500855 d!1500821)))

(assert (=> bs!1104939 (= lambda!214115 lambda!214101)))

(declare-fun bs!1104940 () Bool)

(assert (= bs!1104940 (and d!1500855 d!1500777)))

(assert (=> bs!1104940 (= lambda!214115 lambda!214069)))

(declare-fun bs!1104941 () Bool)

(assert (= bs!1104941 (and d!1500855 d!1500693)))

(assert (=> bs!1104941 (= lambda!214115 lambda!214053)))

(declare-fun bs!1104942 () Bool)

(assert (= bs!1104942 (and d!1500855 d!1500785)))

(assert (=> bs!1104942 (= lambda!214115 lambda!214071)))

(declare-fun bs!1104943 () Bool)

(assert (= bs!1104943 (and d!1500855 d!1500731)))

(assert (=> bs!1104943 (= lambda!214115 lambda!214057)))

(declare-fun bs!1104944 () Bool)

(assert (= bs!1104944 (and d!1500855 d!1500733)))

(assert (=> bs!1104944 (= lambda!214115 lambda!214058)))

(declare-fun lt!1881378 () ListMap!5225)

(assert (=> d!1500855 (invariantList!1492 (toList!5861 lt!1881378))))

(declare-fun e!2941416 () ListMap!5225)

(assert (=> d!1500855 (= lt!1881378 e!2941416)))

(declare-fun c!805556 () Bool)

(assert (=> d!1500855 (= c!805556 ((_ is Cons!52756) (toList!5862 lm!2023)))))

(assert (=> d!1500855 (forall!11535 (toList!5862 lm!2023) lambda!214115)))

(assert (=> d!1500855 (= (extractMap!2012 (toList!5862 lm!2023)) lt!1881378)))

(declare-fun b!4716190 () Bool)

(assert (=> b!4716190 (= e!2941416 (addToMapMapFromBucket!1416 (_2!30464 (h!59083 (toList!5862 lm!2023))) (extractMap!2012 (t!360130 (toList!5862 lm!2023)))))))

(declare-fun b!4716191 () Bool)

(assert (=> b!4716191 (= e!2941416 (ListMap!5226 Nil!52755))))

(assert (= (and d!1500855 c!805556) b!4716190))

(assert (= (and d!1500855 (not c!805556)) b!4716191))

(declare-fun m!5645999 () Bool)

(assert (=> d!1500855 m!5645999))

(declare-fun m!5646001 () Bool)

(assert (=> d!1500855 m!5646001))

(assert (=> b!4716190 m!5644905))

(assert (=> b!4716190 m!5644905))

(declare-fun m!5646003 () Bool)

(assert (=> b!4716190 m!5646003))

(assert (=> b!4715812 d!1500855))

(declare-fun d!1500857 () Bool)

(declare-fun res!1994194 () Bool)

(declare-fun e!2941417 () Bool)

(assert (=> d!1500857 (=> res!1994194 e!2941417)))

(assert (=> d!1500857 (= res!1994194 (not ((_ is Cons!52755) oldBucket!34)))))

(assert (=> d!1500857 (= (noDuplicateKeys!1986 oldBucket!34) e!2941417)))

(declare-fun b!4716192 () Bool)

(declare-fun e!2941418 () Bool)

(assert (=> b!4716192 (= e!2941417 e!2941418)))

(declare-fun res!1994195 () Bool)

(assert (=> b!4716192 (=> (not res!1994195) (not e!2941418))))

(assert (=> b!4716192 (= res!1994195 (not (containsKey!3319 (t!360129 oldBucket!34) (_1!30463 (h!59082 oldBucket!34)))))))

(declare-fun b!4716193 () Bool)

(assert (=> b!4716193 (= e!2941418 (noDuplicateKeys!1986 (t!360129 oldBucket!34)))))

(assert (= (and d!1500857 (not res!1994194)) b!4716192))

(assert (= (and b!4716192 res!1994195) b!4716193))

(declare-fun m!5646005 () Bool)

(assert (=> b!4716192 m!5646005))

(assert (=> b!4716193 m!5645977))

(assert (=> b!4715801 d!1500857))

(declare-fun bs!1104945 () Bool)

(declare-fun d!1500859 () Bool)

(assert (= bs!1104945 (and d!1500859 b!4716077)))

(declare-fun lambda!214116 () Int)

(assert (=> bs!1104945 (not (= lambda!214116 lambda!214076))))

(declare-fun bs!1104946 () Bool)

(assert (= bs!1104946 (and d!1500859 d!1500727)))

(assert (=> bs!1104946 (= lambda!214116 lambda!214056)))

(declare-fun bs!1104947 () Bool)

(assert (= bs!1104947 (and d!1500859 d!1500843)))

(assert (=> bs!1104947 (not (= lambda!214116 lambda!214114))))

(declare-fun bs!1104948 () Bool)

(assert (= bs!1104948 (and d!1500859 b!4715953)))

(assert (=> bs!1104948 (not (= lambda!214116 lambda!214044))))

(declare-fun bs!1104949 () Bool)

(assert (= bs!1104949 (and d!1500859 b!4716144)))

(assert (=> bs!1104949 (not (= lambda!214116 lambda!214105))))

(declare-fun bs!1104950 () Bool)

(assert (= bs!1104950 (and d!1500859 b!4716157)))

(assert (=> bs!1104950 (not (= lambda!214116 lambda!214113))))

(assert (=> bs!1104950 (not (= lambda!214116 lambda!214112))))

(assert (=> bs!1104949 (not (= lambda!214116 lambda!214104))))

(declare-fun bs!1104951 () Bool)

(assert (= bs!1104951 (and d!1500859 b!4716091)))

(assert (=> bs!1104951 (not (= lambda!214116 lambda!214081))))

(declare-fun bs!1104952 () Bool)

(assert (= bs!1104952 (and d!1500859 b!4716079)))

(assert (=> bs!1104952 (not (= lambda!214116 lambda!214074))))

(declare-fun bs!1104953 () Bool)

(assert (= bs!1104953 (and d!1500859 b!4716093)))

(assert (=> bs!1104953 (not (= lambda!214116 lambda!214080))))

(assert (=> bs!1104951 (not (= lambda!214116 lambda!214082))))

(assert (=> bs!1104948 (not (= lambda!214116 lambda!214043))))

(assert (=> bs!1104945 (not (= lambda!214116 lambda!214077))))

(declare-fun bs!1104954 () Bool)

(assert (= bs!1104954 (and d!1500859 d!1500801)))

(assert (=> bs!1104954 (not (= lambda!214116 lambda!214083))))

(declare-fun bs!1104955 () Bool)

(assert (= bs!1104955 (and d!1500859 b!4716146)))

(assert (=> bs!1104955 (not (= lambda!214116 lambda!214103))))

(declare-fun bs!1104956 () Bool)

(assert (= bs!1104956 (and d!1500859 d!1500675)))

(assert (=> bs!1104956 (not (= lambda!214116 lambda!214045))))

(declare-fun bs!1104957 () Bool)

(assert (= bs!1104957 (and d!1500859 b!4716159)))

(assert (=> bs!1104957 (not (= lambda!214116 lambda!214111))))

(declare-fun bs!1104958 () Bool)

(assert (= bs!1104958 (and d!1500859 d!1500825)))

(assert (=> bs!1104958 (not (= lambda!214116 lambda!214109))))

(declare-fun bs!1104959 () Bool)

(assert (= bs!1104959 (and d!1500859 d!1500795)))

(assert (=> bs!1104959 (not (= lambda!214116 lambda!214079))))

(declare-fun bs!1104960 () Bool)

(assert (= bs!1104960 (and d!1500859 b!4715955)))

(assert (=> bs!1104960 (not (= lambda!214116 lambda!214042))))

(assert (=> d!1500859 true))

(assert (=> d!1500859 true))

(assert (=> d!1500859 (= (allKeysSameHash!1812 newBucket!218 hash!405 hashF!1323) (forall!11537 newBucket!218 lambda!214116))))

(declare-fun bs!1104961 () Bool)

(assert (= bs!1104961 d!1500859))

(declare-fun m!5646007 () Bool)

(assert (=> bs!1104961 m!5646007))

(assert (=> b!4715802 d!1500859))

(declare-fun d!1500861 () Bool)

(declare-datatypes ((Option!12326 0))(
  ( (None!12325) (Some!12325 (v!46884 List!52879)) )
))
(declare-fun get!17697 (Option!12326) List!52879)

(declare-fun getValueByKey!1932 (List!52880 (_ BitVec 64)) Option!12326)

(assert (=> d!1500861 (= (apply!12435 lm!2023 lt!1880830) (get!17697 (getValueByKey!1932 (toList!5862 lm!2023) lt!1880830)))))

(declare-fun bs!1104962 () Bool)

(assert (= bs!1104962 d!1500861))

(declare-fun m!5646009 () Bool)

(assert (=> bs!1104962 m!5646009))

(assert (=> bs!1104962 m!5646009))

(declare-fun m!5646011 () Bool)

(assert (=> bs!1104962 m!5646011))

(assert (=> b!4715813 d!1500861))

(declare-fun d!1500863 () Bool)

(declare-fun e!2941423 () Bool)

(assert (=> d!1500863 e!2941423))

(declare-fun res!1994198 () Bool)

(assert (=> d!1500863 (=> res!1994198 e!2941423)))

(declare-fun lt!1881390 () Bool)

(assert (=> d!1500863 (= res!1994198 (not lt!1881390))))

(declare-fun lt!1881388 () Bool)

(assert (=> d!1500863 (= lt!1881390 lt!1881388)))

(declare-fun lt!1881387 () Unit!128733)

(declare-fun e!2941424 () Unit!128733)

(assert (=> d!1500863 (= lt!1881387 e!2941424)))

(declare-fun c!805559 () Bool)

(assert (=> d!1500863 (= c!805559 lt!1881388)))

(declare-fun containsKey!3323 (List!52880 (_ BitVec 64)) Bool)

(assert (=> d!1500863 (= lt!1881388 (containsKey!3323 (toList!5862 lm!2023) lt!1880830))))

(assert (=> d!1500863 (= (contains!16095 lm!2023 lt!1880830) lt!1881390)))

(declare-fun b!4716200 () Bool)

(declare-fun lt!1881389 () Unit!128733)

(assert (=> b!4716200 (= e!2941424 lt!1881389)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1823 (List!52880 (_ BitVec 64)) Unit!128733)

(assert (=> b!4716200 (= lt!1881389 (lemmaContainsKeyImpliesGetValueByKeyDefined!1823 (toList!5862 lm!2023) lt!1880830))))

(declare-fun isDefined!9580 (Option!12326) Bool)

(assert (=> b!4716200 (isDefined!9580 (getValueByKey!1932 (toList!5862 lm!2023) lt!1880830))))

(declare-fun b!4716201 () Bool)

(declare-fun Unit!128832 () Unit!128733)

(assert (=> b!4716201 (= e!2941424 Unit!128832)))

(declare-fun b!4716202 () Bool)

(assert (=> b!4716202 (= e!2941423 (isDefined!9580 (getValueByKey!1932 (toList!5862 lm!2023) lt!1880830)))))

(assert (= (and d!1500863 c!805559) b!4716200))

(assert (= (and d!1500863 (not c!805559)) b!4716201))

(assert (= (and d!1500863 (not res!1994198)) b!4716202))

(declare-fun m!5646013 () Bool)

(assert (=> d!1500863 m!5646013))

(declare-fun m!5646015 () Bool)

(assert (=> b!4716200 m!5646015))

(assert (=> b!4716200 m!5646009))

(assert (=> b!4716200 m!5646009))

(declare-fun m!5646017 () Bool)

(assert (=> b!4716200 m!5646017))

(assert (=> b!4716202 m!5646009))

(assert (=> b!4716202 m!5646009))

(assert (=> b!4716202 m!5646017))

(assert (=> b!4715813 d!1500863))

(declare-fun bs!1104963 () Bool)

(declare-fun d!1500865 () Bool)

(assert (= bs!1104963 (and d!1500865 d!1500855)))

(declare-fun lambda!214123 () Int)

(assert (=> bs!1104963 (= lambda!214123 lambda!214115)))

(declare-fun bs!1104964 () Bool)

(assert (= bs!1104964 (and d!1500865 start!479620)))

(assert (=> bs!1104964 (= lambda!214123 lambda!213967)))

(declare-fun bs!1104965 () Bool)

(assert (= bs!1104965 (and d!1500865 d!1500775)))

(assert (=> bs!1104965 (= lambda!214123 lambda!214068)))

(declare-fun bs!1104966 () Bool)

(assert (= bs!1104966 (and d!1500865 d!1500747)))

(assert (=> bs!1104966 (= lambda!214123 lambda!214063)))

(declare-fun bs!1104967 () Bool)

(assert (= bs!1104967 (and d!1500865 d!1500739)))

(assert (=> bs!1104967 (= lambda!214123 lambda!214062)))

(declare-fun bs!1104968 () Bool)

(assert (= bs!1104968 (and d!1500865 d!1500821)))

(assert (=> bs!1104968 (= lambda!214123 lambda!214101)))

(declare-fun bs!1104969 () Bool)

(assert (= bs!1104969 (and d!1500865 d!1500777)))

(assert (=> bs!1104969 (= lambda!214123 lambda!214069)))

(declare-fun bs!1104970 () Bool)

(assert (= bs!1104970 (and d!1500865 d!1500693)))

(assert (=> bs!1104970 (= lambda!214123 lambda!214053)))

(declare-fun bs!1104971 () Bool)

(assert (= bs!1104971 (and d!1500865 d!1500785)))

(assert (=> bs!1104971 (= lambda!214123 lambda!214071)))

(declare-fun bs!1104972 () Bool)

(assert (= bs!1104972 (and d!1500865 d!1500731)))

(assert (=> bs!1104972 (= lambda!214123 lambda!214057)))

(declare-fun bs!1104973 () Bool)

(assert (= bs!1104973 (and d!1500865 d!1500733)))

(assert (=> bs!1104973 (= lambda!214123 lambda!214058)))

(declare-fun b!4716211 () Bool)

(declare-fun res!1994210 () Bool)

(declare-fun e!2941430 () Bool)

(assert (=> b!4716211 (=> (not res!1994210) (not e!2941430))))

(assert (=> b!4716211 (= res!1994210 (allKeysSameHashInMap!1900 lm!2023 hashF!1323))))

(declare-fun lt!1881410 () (_ BitVec 64))

(declare-fun lt!1881414 () List!52879)

(declare-fun e!2941429 () Bool)

(declare-fun b!4716214 () Bool)

(assert (=> b!4716214 (= e!2941429 (= (getValueByKey!1932 (toList!5862 lm!2023) lt!1881410) (Some!12325 lt!1881414)))))

(declare-fun b!4716213 () Bool)

(assert (=> b!4716213 (= e!2941430 (isDefined!9576 (getPair!552 (apply!12435 lm!2023 (hash!4332 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1881411 () Unit!128733)

(assert (=> b!4716213 (= lt!1881411 (forallContained!3604 (toList!5862 lm!2023) lambda!214123 (tuple2!54341 (hash!4332 hashF!1323 key!4653) (apply!12435 lm!2023 (hash!4332 hashF!1323 key!4653)))))))

(declare-fun lt!1881408 () Unit!128733)

(declare-fun lt!1881407 () Unit!128733)

(assert (=> b!4716213 (= lt!1881408 lt!1881407)))

(assert (=> b!4716213 (contains!16094 (toList!5862 lm!2023) (tuple2!54341 lt!1881410 lt!1881414))))

(assert (=> b!4716213 (= lt!1881407 (lemmaGetValueImpliesTupleContained!357 lm!2023 lt!1881410 lt!1881414))))

(assert (=> b!4716213 e!2941429))

(declare-fun res!1994209 () Bool)

(assert (=> b!4716213 (=> (not res!1994209) (not e!2941429))))

(assert (=> b!4716213 (= res!1994209 (contains!16095 lm!2023 lt!1881410))))

(assert (=> b!4716213 (= lt!1881414 (apply!12435 lm!2023 (hash!4332 hashF!1323 key!4653)))))

(assert (=> b!4716213 (= lt!1881410 (hash!4332 hashF!1323 key!4653))))

(declare-fun lt!1881409 () Unit!128733)

(declare-fun lt!1881412 () Unit!128733)

(assert (=> b!4716213 (= lt!1881409 lt!1881412)))

(assert (=> b!4716213 (contains!16095 lm!2023 (hash!4332 hashF!1323 key!4653))))

(assert (=> b!4716213 (= lt!1881412 (lemmaInGenMapThenLongMapContainsHash!758 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4716212 () Bool)

(declare-fun res!1994208 () Bool)

(assert (=> b!4716212 (=> (not res!1994208) (not e!2941430))))

(assert (=> b!4716212 (= res!1994208 (contains!16093 (extractMap!2012 (toList!5862 lm!2023)) key!4653))))

(assert (=> d!1500865 e!2941430))

(declare-fun res!1994207 () Bool)

(assert (=> d!1500865 (=> (not res!1994207) (not e!2941430))))

(assert (=> d!1500865 (= res!1994207 (forall!11535 (toList!5862 lm!2023) lambda!214123))))

(declare-fun lt!1881413 () Unit!128733)

(declare-fun choose!33226 (ListLongMap!4391 K!14115 Hashable!6355) Unit!128733)

(assert (=> d!1500865 (= lt!1881413 (choose!33226 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1500865 (forall!11535 (toList!5862 lm!2023) lambda!214123)))

(assert (=> d!1500865 (= (lemmaInGenMapThenGetPairDefined!348 lm!2023 key!4653 hashF!1323) lt!1881413)))

(assert (= (and d!1500865 res!1994207) b!4716211))

(assert (= (and b!4716211 res!1994210) b!4716212))

(assert (= (and b!4716212 res!1994208) b!4716213))

(assert (= (and b!4716213 res!1994209) b!4716214))

(declare-fun m!5646019 () Bool)

(assert (=> b!4716214 m!5646019))

(assert (=> b!4716212 m!5644991))

(assert (=> b!4716212 m!5644991))

(declare-fun m!5646021 () Bool)

(assert (=> b!4716212 m!5646021))

(assert (=> b!4716213 m!5644987))

(declare-fun m!5646023 () Bool)

(assert (=> b!4716213 m!5646023))

(assert (=> b!4716213 m!5646023))

(declare-fun m!5646025 () Bool)

(assert (=> b!4716213 m!5646025))

(declare-fun m!5646027 () Bool)

(assert (=> b!4716213 m!5646027))

(declare-fun m!5646029 () Bool)

(assert (=> b!4716213 m!5646029))

(assert (=> b!4716213 m!5644987))

(declare-fun m!5646031 () Bool)

(assert (=> b!4716213 m!5646031))

(declare-fun m!5646033 () Bool)

(assert (=> b!4716213 m!5646033))

(declare-fun m!5646035 () Bool)

(assert (=> b!4716213 m!5646035))

(assert (=> b!4716213 m!5644987))

(assert (=> b!4716213 m!5646025))

(declare-fun m!5646037 () Bool)

(assert (=> b!4716213 m!5646037))

(assert (=> b!4716213 m!5644933))

(declare-fun m!5646039 () Bool)

(assert (=> d!1500865 m!5646039))

(declare-fun m!5646041 () Bool)

(assert (=> d!1500865 m!5646041))

(assert (=> d!1500865 m!5646039))

(assert (=> b!4716211 m!5644857))

(assert (=> b!4715813 d!1500865))

(declare-fun b!4716231 () Bool)

(declare-fun e!2941445 () Option!12322)

(assert (=> b!4716231 (= e!2941445 (getPair!552 (t!360129 lt!1880828) key!4653))))

(declare-fun b!4716232 () Bool)

(declare-fun res!1994221 () Bool)

(declare-fun e!2941444 () Bool)

(assert (=> b!4716232 (=> (not res!1994221) (not e!2941444))))

(declare-fun lt!1881417 () Option!12322)

(declare-fun get!17698 (Option!12322) tuple2!54338)

(assert (=> b!4716232 (= res!1994221 (= (_1!30463 (get!17698 lt!1881417)) key!4653))))

(declare-fun b!4716233 () Bool)

(declare-fun e!2941441 () Bool)

(assert (=> b!4716233 (= e!2941441 (not (containsKey!3319 lt!1880828 key!4653)))))

(declare-fun b!4716234 () Bool)

(declare-fun e!2941443 () Option!12322)

(assert (=> b!4716234 (= e!2941443 (Some!12321 (h!59082 lt!1880828)))))

(declare-fun b!4716235 () Bool)

(declare-fun e!2941442 () Bool)

(assert (=> b!4716235 (= e!2941442 e!2941444)))

(declare-fun res!1994222 () Bool)

(assert (=> b!4716235 (=> (not res!1994222) (not e!2941444))))

(assert (=> b!4716235 (= res!1994222 (isDefined!9576 lt!1881417))))

(declare-fun d!1500867 () Bool)

(assert (=> d!1500867 e!2941442))

(declare-fun res!1994220 () Bool)

(assert (=> d!1500867 (=> res!1994220 e!2941442)))

(assert (=> d!1500867 (= res!1994220 e!2941441)))

(declare-fun res!1994219 () Bool)

(assert (=> d!1500867 (=> (not res!1994219) (not e!2941441))))

(declare-fun isEmpty!29163 (Option!12322) Bool)

(assert (=> d!1500867 (= res!1994219 (isEmpty!29163 lt!1881417))))

(assert (=> d!1500867 (= lt!1881417 e!2941443)))

(declare-fun c!805565 () Bool)

(assert (=> d!1500867 (= c!805565 (and ((_ is Cons!52755) lt!1880828) (= (_1!30463 (h!59082 lt!1880828)) key!4653)))))

(assert (=> d!1500867 (noDuplicateKeys!1986 lt!1880828)))

(assert (=> d!1500867 (= (getPair!552 lt!1880828 key!4653) lt!1881417)))

(declare-fun b!4716236 () Bool)

(assert (=> b!4716236 (= e!2941443 e!2941445)))

(declare-fun c!805564 () Bool)

(assert (=> b!4716236 (= c!805564 ((_ is Cons!52755) lt!1880828))))

(declare-fun b!4716237 () Bool)

(assert (=> b!4716237 (= e!2941445 None!12321)))

(declare-fun b!4716238 () Bool)

(assert (=> b!4716238 (= e!2941444 (contains!16097 lt!1880828 (get!17698 lt!1881417)))))

(assert (= (and d!1500867 c!805565) b!4716234))

(assert (= (and d!1500867 (not c!805565)) b!4716236))

(assert (= (and b!4716236 c!805564) b!4716231))

(assert (= (and b!4716236 (not c!805564)) b!4716237))

(assert (= (and d!1500867 res!1994219) b!4716233))

(assert (= (and d!1500867 (not res!1994220)) b!4716235))

(assert (= (and b!4716235 res!1994222) b!4716232))

(assert (= (and b!4716232 res!1994221) b!4716238))

(declare-fun m!5646043 () Bool)

(assert (=> d!1500867 m!5646043))

(declare-fun m!5646045 () Bool)

(assert (=> d!1500867 m!5646045))

(declare-fun m!5646047 () Bool)

(assert (=> b!4716232 m!5646047))

(declare-fun m!5646049 () Bool)

(assert (=> b!4716233 m!5646049))

(declare-fun m!5646051 () Bool)

(assert (=> b!4716235 m!5646051))

(assert (=> b!4716238 m!5646047))

(assert (=> b!4716238 m!5646047))

(declare-fun m!5646053 () Bool)

(assert (=> b!4716238 m!5646053))

(declare-fun m!5646055 () Bool)

(assert (=> b!4716231 m!5646055))

(assert (=> b!4715813 d!1500867))

(declare-fun d!1500869 () Bool)

(declare-fun res!1994227 () Bool)

(declare-fun e!2941450 () Bool)

(assert (=> d!1500869 (=> res!1994227 e!2941450)))

(assert (=> d!1500869 (= res!1994227 (and ((_ is Cons!52755) oldBucket!34) (= (_1!30463 (h!59082 oldBucket!34)) key!4653)))))

(assert (=> d!1500869 (= (containsKey!3319 oldBucket!34 key!4653) e!2941450)))

(declare-fun b!4716243 () Bool)

(declare-fun e!2941451 () Bool)

(assert (=> b!4716243 (= e!2941450 e!2941451)))

(declare-fun res!1994228 () Bool)

(assert (=> b!4716243 (=> (not res!1994228) (not e!2941451))))

(assert (=> b!4716243 (= res!1994228 ((_ is Cons!52755) oldBucket!34))))

(declare-fun b!4716244 () Bool)

(assert (=> b!4716244 (= e!2941451 (containsKey!3319 (t!360129 oldBucket!34) key!4653))))

(assert (= (and d!1500869 (not res!1994227)) b!4716243))

(assert (= (and b!4716243 res!1994228) b!4716244))

(assert (=> b!4716244 m!5644935))

(assert (=> b!4715813 d!1500869))

(declare-fun d!1500871 () Bool)

(declare-fun lt!1881420 () Bool)

(declare-fun content!9369 (List!52880) (InoxSet tuple2!54340))

(assert (=> d!1500871 (= lt!1881420 (select (content!9369 (toList!5862 lm!2023)) lt!1880813))))

(declare-fun e!2941457 () Bool)

(assert (=> d!1500871 (= lt!1881420 e!2941457)))

(declare-fun res!1994233 () Bool)

(assert (=> d!1500871 (=> (not res!1994233) (not e!2941457))))

(assert (=> d!1500871 (= res!1994233 ((_ is Cons!52756) (toList!5862 lm!2023)))))

(assert (=> d!1500871 (= (contains!16094 (toList!5862 lm!2023) lt!1880813) lt!1881420)))

(declare-fun b!4716249 () Bool)

(declare-fun e!2941456 () Bool)

(assert (=> b!4716249 (= e!2941457 e!2941456)))

(declare-fun res!1994234 () Bool)

(assert (=> b!4716249 (=> res!1994234 e!2941456)))

(assert (=> b!4716249 (= res!1994234 (= (h!59083 (toList!5862 lm!2023)) lt!1880813))))

(declare-fun b!4716250 () Bool)

(assert (=> b!4716250 (= e!2941456 (contains!16094 (t!360130 (toList!5862 lm!2023)) lt!1880813))))

(assert (= (and d!1500871 res!1994233) b!4716249))

(assert (= (and b!4716249 (not res!1994234)) b!4716250))

(declare-fun m!5646057 () Bool)

(assert (=> d!1500871 m!5646057))

(declare-fun m!5646059 () Bool)

(assert (=> d!1500871 m!5646059))

(declare-fun m!5646061 () Bool)

(assert (=> b!4716250 m!5646061))

(assert (=> b!4715813 d!1500871))

(declare-fun bs!1104974 () Bool)

(declare-fun d!1500873 () Bool)

(assert (= bs!1104974 (and d!1500873 d!1500855)))

(declare-fun lambda!214126 () Int)

(assert (=> bs!1104974 (= lambda!214126 lambda!214115)))

(declare-fun bs!1104975 () Bool)

(assert (= bs!1104975 (and d!1500873 d!1500865)))

(assert (=> bs!1104975 (= lambda!214126 lambda!214123)))

(declare-fun bs!1104976 () Bool)

(assert (= bs!1104976 (and d!1500873 start!479620)))

(assert (=> bs!1104976 (= lambda!214126 lambda!213967)))

(declare-fun bs!1104977 () Bool)

(assert (= bs!1104977 (and d!1500873 d!1500775)))

(assert (=> bs!1104977 (= lambda!214126 lambda!214068)))

(declare-fun bs!1104978 () Bool)

(assert (= bs!1104978 (and d!1500873 d!1500747)))

(assert (=> bs!1104978 (= lambda!214126 lambda!214063)))

(declare-fun bs!1104979 () Bool)

(assert (= bs!1104979 (and d!1500873 d!1500739)))

(assert (=> bs!1104979 (= lambda!214126 lambda!214062)))

(declare-fun bs!1104980 () Bool)

(assert (= bs!1104980 (and d!1500873 d!1500821)))

(assert (=> bs!1104980 (= lambda!214126 lambda!214101)))

(declare-fun bs!1104981 () Bool)

(assert (= bs!1104981 (and d!1500873 d!1500777)))

(assert (=> bs!1104981 (= lambda!214126 lambda!214069)))

(declare-fun bs!1104982 () Bool)

(assert (= bs!1104982 (and d!1500873 d!1500693)))

(assert (=> bs!1104982 (= lambda!214126 lambda!214053)))

(declare-fun bs!1104983 () Bool)

(assert (= bs!1104983 (and d!1500873 d!1500785)))

(assert (=> bs!1104983 (= lambda!214126 lambda!214071)))

(declare-fun bs!1104984 () Bool)

(assert (= bs!1104984 (and d!1500873 d!1500731)))

(assert (=> bs!1104984 (= lambda!214126 lambda!214057)))

(declare-fun bs!1104985 () Bool)

(assert (= bs!1104985 (and d!1500873 d!1500733)))

(assert (=> bs!1104985 (= lambda!214126 lambda!214058)))

(assert (=> d!1500873 (contains!16095 lm!2023 (hash!4332 hashF!1323 key!4653))))

(declare-fun lt!1881423 () Unit!128733)

(declare-fun choose!33227 (ListLongMap!4391 K!14115 Hashable!6355) Unit!128733)

(assert (=> d!1500873 (= lt!1881423 (choose!33227 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1500873 (forall!11535 (toList!5862 lm!2023) lambda!214126)))

(assert (=> d!1500873 (= (lemmaInGenMapThenLongMapContainsHash!758 lm!2023 key!4653 hashF!1323) lt!1881423)))

(declare-fun bs!1104986 () Bool)

(assert (= bs!1104986 d!1500873))

(assert (=> bs!1104986 m!5644987))

(assert (=> bs!1104986 m!5644987))

(assert (=> bs!1104986 m!5646031))

(declare-fun m!5646063 () Bool)

(assert (=> bs!1104986 m!5646063))

(declare-fun m!5646065 () Bool)

(assert (=> bs!1104986 m!5646065))

(assert (=> b!4715813 d!1500873))

(declare-fun d!1500875 () Bool)

(assert (=> d!1500875 (contains!16094 (toList!5862 lm!2023) (tuple2!54341 lt!1880830 lt!1880828))))

(declare-fun lt!1881426 () Unit!128733)

(declare-fun choose!33228 (ListLongMap!4391 (_ BitVec 64) List!52879) Unit!128733)

(assert (=> d!1500875 (= lt!1881426 (choose!33228 lm!2023 lt!1880830 lt!1880828))))

(assert (=> d!1500875 (contains!16095 lm!2023 lt!1880830)))

(assert (=> d!1500875 (= (lemmaGetValueImpliesTupleContained!357 lm!2023 lt!1880830 lt!1880828) lt!1881426)))

(declare-fun bs!1104987 () Bool)

(assert (= bs!1104987 d!1500875))

(declare-fun m!5646067 () Bool)

(assert (=> bs!1104987 m!5646067))

(declare-fun m!5646069 () Bool)

(assert (=> bs!1104987 m!5646069))

(assert (=> bs!1104987 m!5644945))

(assert (=> b!4715813 d!1500875))

(declare-fun d!1500877 () Bool)

(assert (=> d!1500877 (containsKey!3319 oldBucket!34 key!4653)))

(declare-fun lt!1881429 () Unit!128733)

(declare-fun choose!33229 (List!52879 K!14115 Hashable!6355) Unit!128733)

(assert (=> d!1500877 (= lt!1881429 (choose!33229 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1500877 (noDuplicateKeys!1986 oldBucket!34)))

(assert (=> d!1500877 (= (lemmaGetPairDefinedThenContainsKey!300 oldBucket!34 key!4653 hashF!1323) lt!1881429)))

(declare-fun bs!1104988 () Bool)

(assert (= bs!1104988 d!1500877))

(assert (=> bs!1104988 m!5644941))

(declare-fun m!5646071 () Bool)

(assert (=> bs!1104988 m!5646071))

(assert (=> bs!1104988 m!5644981))

(assert (=> b!4715813 d!1500877))

(declare-fun d!1500879 () Bool)

(assert (=> d!1500879 (= (isDefined!9576 (getPair!552 lt!1880828 key!4653)) (not (isEmpty!29163 (getPair!552 lt!1880828 key!4653))))))

(declare-fun bs!1104989 () Bool)

(assert (= bs!1104989 d!1500879))

(assert (=> bs!1104989 m!5644929))

(declare-fun m!5646073 () Bool)

(assert (=> bs!1104989 m!5646073))

(assert (=> b!4715813 d!1500879))

(declare-fun d!1500881 () Bool)

(declare-fun dynLambda!21795 (Int tuple2!54340) Bool)

(assert (=> d!1500881 (dynLambda!21795 lambda!213967 lt!1880813)))

(declare-fun lt!1881432 () Unit!128733)

(declare-fun choose!33230 (List!52880 Int tuple2!54340) Unit!128733)

(assert (=> d!1500881 (= lt!1881432 (choose!33230 (toList!5862 lm!2023) lambda!213967 lt!1880813))))

(declare-fun e!2941460 () Bool)

(assert (=> d!1500881 e!2941460))

(declare-fun res!1994237 () Bool)

(assert (=> d!1500881 (=> (not res!1994237) (not e!2941460))))

(assert (=> d!1500881 (= res!1994237 (forall!11535 (toList!5862 lm!2023) lambda!213967))))

(assert (=> d!1500881 (= (forallContained!3604 (toList!5862 lm!2023) lambda!213967 lt!1880813) lt!1881432)))

(declare-fun b!4716254 () Bool)

(assert (=> b!4716254 (= e!2941460 (contains!16094 (toList!5862 lm!2023) lt!1880813))))

(assert (= (and d!1500881 res!1994237) b!4716254))

(declare-fun b_lambda!177781 () Bool)

(assert (=> (not b_lambda!177781) (not d!1500881)))

(declare-fun m!5646075 () Bool)

(assert (=> d!1500881 m!5646075))

(declare-fun m!5646077 () Bool)

(assert (=> d!1500881 m!5646077))

(assert (=> d!1500881 m!5644983))

(assert (=> b!4716254 m!5644949))

(assert (=> b!4715813 d!1500881))

(declare-fun d!1500883 () Bool)

(declare-fun res!1994238 () Bool)

(declare-fun e!2941461 () Bool)

(assert (=> d!1500883 (=> res!1994238 e!2941461)))

(assert (=> d!1500883 (= res!1994238 (and ((_ is Cons!52755) (t!360129 oldBucket!34)) (= (_1!30463 (h!59082 (t!360129 oldBucket!34))) key!4653)))))

(assert (=> d!1500883 (= (containsKey!3319 (t!360129 oldBucket!34) key!4653) e!2941461)))

(declare-fun b!4716255 () Bool)

(declare-fun e!2941462 () Bool)

(assert (=> b!4716255 (= e!2941461 e!2941462)))

(declare-fun res!1994239 () Bool)

(assert (=> b!4716255 (=> (not res!1994239) (not e!2941462))))

(assert (=> b!4716255 (= res!1994239 ((_ is Cons!52755) (t!360129 oldBucket!34)))))

(declare-fun b!4716256 () Bool)

(assert (=> b!4716256 (= e!2941462 (containsKey!3319 (t!360129 (t!360129 oldBucket!34)) key!4653))))

(assert (= (and d!1500883 (not res!1994238)) b!4716255))

(assert (= (and b!4716255 res!1994239) b!4716256))

(declare-fun m!5646079 () Bool)

(assert (=> b!4716256 m!5646079))

(assert (=> b!4715813 d!1500883))

(declare-fun bs!1104990 () Bool)

(declare-fun d!1500885 () Bool)

(assert (= bs!1104990 (and d!1500885 d!1500865)))

(declare-fun lambda!214129 () Int)

(assert (=> bs!1104990 (not (= lambda!214129 lambda!214123))))

(declare-fun bs!1104991 () Bool)

(assert (= bs!1104991 (and d!1500885 start!479620)))

(assert (=> bs!1104991 (not (= lambda!214129 lambda!213967))))

(declare-fun bs!1104992 () Bool)

(assert (= bs!1104992 (and d!1500885 d!1500775)))

(assert (=> bs!1104992 (not (= lambda!214129 lambda!214068))))

(declare-fun bs!1104993 () Bool)

(assert (= bs!1104993 (and d!1500885 d!1500747)))

(assert (=> bs!1104993 (not (= lambda!214129 lambda!214063))))

(declare-fun bs!1104994 () Bool)

(assert (= bs!1104994 (and d!1500885 d!1500739)))

(assert (=> bs!1104994 (not (= lambda!214129 lambda!214062))))

(declare-fun bs!1104995 () Bool)

(assert (= bs!1104995 (and d!1500885 d!1500821)))

(assert (=> bs!1104995 (not (= lambda!214129 lambda!214101))))

(declare-fun bs!1104996 () Bool)

(assert (= bs!1104996 (and d!1500885 d!1500777)))

(assert (=> bs!1104996 (not (= lambda!214129 lambda!214069))))

(declare-fun bs!1104997 () Bool)

(assert (= bs!1104997 (and d!1500885 d!1500693)))

(assert (=> bs!1104997 (not (= lambda!214129 lambda!214053))))

(declare-fun bs!1104998 () Bool)

(assert (= bs!1104998 (and d!1500885 d!1500785)))

(assert (=> bs!1104998 (not (= lambda!214129 lambda!214071))))

(declare-fun bs!1104999 () Bool)

(assert (= bs!1104999 (and d!1500885 d!1500873)))

(assert (=> bs!1104999 (not (= lambda!214129 lambda!214126))))

(declare-fun bs!1105000 () Bool)

(assert (= bs!1105000 (and d!1500885 d!1500855)))

(assert (=> bs!1105000 (not (= lambda!214129 lambda!214115))))

(declare-fun bs!1105001 () Bool)

(assert (= bs!1105001 (and d!1500885 d!1500731)))

(assert (=> bs!1105001 (not (= lambda!214129 lambda!214057))))

(declare-fun bs!1105002 () Bool)

(assert (= bs!1105002 (and d!1500885 d!1500733)))

(assert (=> bs!1105002 (not (= lambda!214129 lambda!214058))))

(assert (=> d!1500885 true))

(assert (=> d!1500885 (= (allKeysSameHashInMap!1900 lm!2023 hashF!1323) (forall!11535 (toList!5862 lm!2023) lambda!214129))))

(declare-fun bs!1105003 () Bool)

(assert (= bs!1105003 d!1500885))

(declare-fun m!5646081 () Bool)

(assert (=> bs!1105003 m!5646081))

(assert (=> b!4715803 d!1500885))

(declare-fun d!1500887 () Bool)

(declare-fun res!1994244 () Bool)

(declare-fun e!2941467 () Bool)

(assert (=> d!1500887 (=> res!1994244 e!2941467)))

(assert (=> d!1500887 (= res!1994244 ((_ is Nil!52756) (toList!5862 lm!2023)))))

(assert (=> d!1500887 (= (forall!11535 (toList!5862 lm!2023) lambda!213967) e!2941467)))

(declare-fun b!4716263 () Bool)

(declare-fun e!2941468 () Bool)

(assert (=> b!4716263 (= e!2941467 e!2941468)))

(declare-fun res!1994245 () Bool)

(assert (=> b!4716263 (=> (not res!1994245) (not e!2941468))))

(assert (=> b!4716263 (= res!1994245 (dynLambda!21795 lambda!213967 (h!59083 (toList!5862 lm!2023))))))

(declare-fun b!4716264 () Bool)

(assert (=> b!4716264 (= e!2941468 (forall!11535 (t!360130 (toList!5862 lm!2023)) lambda!213967))))

(assert (= (and d!1500887 (not res!1994244)) b!4716263))

(assert (= (and b!4716263 res!1994245) b!4716264))

(declare-fun b_lambda!177783 () Bool)

(assert (=> (not b_lambda!177783) (not b!4716263)))

(declare-fun m!5646083 () Bool)

(assert (=> b!4716263 m!5646083))

(declare-fun m!5646085 () Bool)

(assert (=> b!4716264 m!5646085))

(assert (=> start!479620 d!1500887))

(declare-fun d!1500889 () Bool)

(declare-fun isStrictlySorted!731 (List!52880) Bool)

(assert (=> d!1500889 (= (inv!67989 lm!2023) (isStrictlySorted!731 (toList!5862 lm!2023)))))

(declare-fun bs!1105004 () Bool)

(assert (= bs!1105004 d!1500889))

(declare-fun m!5646087 () Bool)

(assert (=> bs!1105004 m!5646087))

(assert (=> start!479620 d!1500889))

(declare-fun d!1500891 () Bool)

(declare-fun hash!4335 (Hashable!6355 K!14115) (_ BitVec 64))

(assert (=> d!1500891 (= (hash!4332 hashF!1323 key!4653) (hash!4335 hashF!1323 key!4653))))

(declare-fun bs!1105005 () Bool)

(assert (= bs!1105005 d!1500891))

(declare-fun m!5646089 () Bool)

(assert (=> bs!1105005 m!5646089))

(assert (=> b!4715810 d!1500891))

(declare-fun d!1500893 () Bool)

(assert (=> d!1500893 (= (eq!1113 lt!1880816 (+!2246 lt!1880819 lt!1880833)) (= (content!9368 (toList!5861 lt!1880816)) (content!9368 (toList!5861 (+!2246 lt!1880819 lt!1880833)))))))

(declare-fun bs!1105006 () Bool)

(assert (= bs!1105006 d!1500893))

(assert (=> bs!1105006 m!5645353))

(declare-fun m!5646091 () Bool)

(assert (=> bs!1105006 m!5646091))

(assert (=> b!4715799 d!1500893))

(declare-fun d!1500895 () Bool)

(declare-fun e!2941469 () Bool)

(assert (=> d!1500895 e!2941469))

(declare-fun res!1994246 () Bool)

(assert (=> d!1500895 (=> (not res!1994246) (not e!2941469))))

(declare-fun lt!1881435 () ListMap!5225)

(assert (=> d!1500895 (= res!1994246 (contains!16093 lt!1881435 (_1!30463 lt!1880833)))))

(declare-fun lt!1881434 () List!52879)

(assert (=> d!1500895 (= lt!1881435 (ListMap!5226 lt!1881434))))

(declare-fun lt!1881433 () Unit!128733)

(declare-fun lt!1881436 () Unit!128733)

(assert (=> d!1500895 (= lt!1881433 lt!1881436)))

(assert (=> d!1500895 (= (getValueByKey!1931 lt!1881434 (_1!30463 lt!1880833)) (Some!12324 (_2!30463 lt!1880833)))))

(assert (=> d!1500895 (= lt!1881436 (lemmaContainsTupThenGetReturnValue!1074 lt!1881434 (_1!30463 lt!1880833) (_2!30463 lt!1880833)))))

(assert (=> d!1500895 (= lt!1881434 (insertNoDuplicatedKeys!582 (toList!5861 lt!1880819) (_1!30463 lt!1880833) (_2!30463 lt!1880833)))))

(assert (=> d!1500895 (= (+!2246 lt!1880819 lt!1880833) lt!1881435)))

(declare-fun b!4716265 () Bool)

(declare-fun res!1994247 () Bool)

(assert (=> b!4716265 (=> (not res!1994247) (not e!2941469))))

(assert (=> b!4716265 (= res!1994247 (= (getValueByKey!1931 (toList!5861 lt!1881435) (_1!30463 lt!1880833)) (Some!12324 (_2!30463 lt!1880833))))))

(declare-fun b!4716266 () Bool)

(assert (=> b!4716266 (= e!2941469 (contains!16097 (toList!5861 lt!1881435) lt!1880833))))

(assert (= (and d!1500895 res!1994246) b!4716265))

(assert (= (and b!4716265 res!1994247) b!4716266))

(declare-fun m!5646093 () Bool)

(assert (=> d!1500895 m!5646093))

(declare-fun m!5646095 () Bool)

(assert (=> d!1500895 m!5646095))

(declare-fun m!5646097 () Bool)

(assert (=> d!1500895 m!5646097))

(declare-fun m!5646099 () Bool)

(assert (=> d!1500895 m!5646099))

(declare-fun m!5646101 () Bool)

(assert (=> b!4716265 m!5646101))

(declare-fun m!5646103 () Bool)

(assert (=> b!4716266 m!5646103))

(assert (=> b!4715799 d!1500895))

(declare-fun d!1500897 () Bool)

(assert (=> d!1500897 (= (eq!1113 lt!1880834 lt!1880812) (= (content!9368 (toList!5861 lt!1880834)) (content!9368 (toList!5861 lt!1880812))))))

(declare-fun bs!1105007 () Bool)

(assert (= bs!1105007 d!1500897))

(declare-fun m!5646105 () Bool)

(assert (=> bs!1105007 m!5646105))

(declare-fun m!5646107 () Bool)

(assert (=> bs!1105007 m!5646107))

(assert (=> b!4715800 d!1500897))

(declare-fun e!2941472 () Bool)

(declare-fun tp!1347938 () Bool)

(declare-fun b!4716271 () Bool)

(assert (=> b!4716271 (= e!2941472 (and tp_is_empty!31237 tp_is_empty!31239 tp!1347938))))

(assert (=> b!4715796 (= tp!1347923 e!2941472)))

(assert (= (and b!4715796 ((_ is Cons!52755) (t!360129 newBucket!218))) b!4716271))

(declare-fun b!4716276 () Bool)

(declare-fun e!2941475 () Bool)

(declare-fun tp!1347943 () Bool)

(declare-fun tp!1347944 () Bool)

(assert (=> b!4716276 (= e!2941475 (and tp!1347943 tp!1347944))))

(assert (=> b!4715817 (= tp!1347925 e!2941475)))

(assert (= (and b!4715817 ((_ is Cons!52756) (toList!5862 lm!2023))) b!4716276))

(declare-fun b!4716277 () Bool)

(declare-fun tp!1347945 () Bool)

(declare-fun e!2941476 () Bool)

(assert (=> b!4716277 (= e!2941476 (and tp_is_empty!31237 tp_is_empty!31239 tp!1347945))))

(assert (=> b!4715809 (= tp!1347924 e!2941476)))

(assert (= (and b!4715809 ((_ is Cons!52755) (t!360129 oldBucket!34))) b!4716277))

(declare-fun b_lambda!177785 () Bool)

(assert (= b_lambda!177783 (or start!479620 b_lambda!177785)))

(declare-fun bs!1105008 () Bool)

(declare-fun d!1500899 () Bool)

(assert (= bs!1105008 (and d!1500899 start!479620)))

(assert (=> bs!1105008 (= (dynLambda!21795 lambda!213967 (h!59083 (toList!5862 lm!2023))) (noDuplicateKeys!1986 (_2!30464 (h!59083 (toList!5862 lm!2023)))))))

(assert (=> bs!1105008 m!5645225))

(assert (=> b!4716263 d!1500899))

(declare-fun b_lambda!177787 () Bool)

(assert (= b_lambda!177781 (or start!479620 b_lambda!177787)))

(declare-fun bs!1105009 () Bool)

(declare-fun d!1500901 () Bool)

(assert (= bs!1105009 (and d!1500901 start!479620)))

(assert (=> bs!1105009 (= (dynLambda!21795 lambda!213967 lt!1880813) (noDuplicateKeys!1986 (_2!30464 lt!1880813)))))

(declare-fun m!5646109 () Bool)

(assert (=> bs!1105009 m!5646109))

(assert (=> d!1500881 d!1500901))

(check-sat (not b!4715956) (not b!4716231) (not b!4716011) (not bm!329745) (not b!4716132) (not d!1500663) (not b!4716211) (not d!1500707) (not b_lambda!177787) (not bm!329740) (not d!1500855) (not b!4716244) (not d!1500735) (not b!4716214) (not d!1500721) (not b!4716192) (not d!1500775) (not b!4716091) (not b!4716186) (not d!1500665) (not bm!329709) (not bm!329736) (not b!4715995) (not d!1500761) (not b!4716235) (not d!1500801) (not b!4716158) (not d!1500805) (not b!4715953) (not d!1500705) (not d!1500897) (not b!4716238) (not d!1500859) (not b!4716266) (not d!1500861) (not bm!329710) (not b!4716161) (not d!1500851) (not d!1500853) (not d!1500675) (not b!4715957) (not d!1500777) (not b!4716094) (not b!4716181) (not bm!329725) (not b!4716002) (not bm!329743) (not b!4716134) (not b!4715954) tp_is_empty!31239 (not d!1500865) (not d!1500751) (not d!1500781) (not b!4716135) (not b!4716136) (not b!4716264) (not b!4716250) (not b!4716193) (not b!4716202) (not b!4715899) (not b!4715901) (not d!1500867) (not d!1500871) (not b!4716148) (not b!4716137) (not b!4716200) (not d!1500739) (not d!1500671) (not b!4716097) (not b!4716080) (not b!4716147) (not d!1500895) (not d!1500879) (not b!4715873) (not d!1500877) (not bm!329741) (not d!1500789) (not d!1500737) (not d!1500651) (not bm!329721) (not b!4716052) (not d!1500755) (not b!4716078) (not b!4716277) (not bm!329723) (not d!1500885) (not d!1500807) (not b!4715872) (not b!4715988) (not b!4716213) (not b!4716092) (not bm!329744) (not b!4716009) (not b!4716096) (not b!4716130) (not b!4716060) (not b!4716070) (not d!1500793) (not bm!329727) (not b!4716160) (not b!4716233) (not bm!329726) (not b!4716190) (not b!4716271) (not b!4716067) (not d!1500733) (not d!1500843) (not d!1500731) (not b!4716066) (not b!4716184) (not d!1500773) (not b!4716254) (not d!1500881) (not b!4716007) (not bs!1105008) (not d!1500785) (not b!4716145) (not d!1500747) (not d!1500863) (not b!4716265) (not d!1500693) (not b!4716183) (not b!4716053) (not d!1500889) (not b!4715976) (not d!1500821) (not d!1500795) (not d!1500713) (not b!4715900) (not bm!329746) (not bm!329742) (not d!1500661) (not b!4716133) (not b!4716001) (not bs!1105009) (not b!4716179) tp_is_empty!31237 (not b!4716188) (not b!4715902) (not b!4716187) (not bm!329711) (not b_lambda!177785) (not b!4716157) (not b!4716185) (not b!4716256) (not d!1500873) (not b!4716047) (not d!1500757) (not b!4716077) (not d!1500875) (not b!4716095) (not d!1500893) (not b!4716232) (not d!1500891) (not d!1500727) (not b!4716062) (not b!4716276) (not d!1500729) (not b!4716144) (not b!4716049) (not bm!329722) (not d!1500825) (not b!4716081) (not b!4716212))
(check-sat)
