; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!467060 () Bool)

(assert start!467060)

(declare-fun res!1950426 () Bool)

(declare-fun e!2896488 () Bool)

(assert (=> start!467060 (=> (not res!1950426) (not e!2896488))))

(declare-datatypes ((K!13165 0))(
  ( (K!13166 (val!18803 Int)) )
))
(declare-datatypes ((V!13411 0))(
  ( (V!13412 (val!18804 Int)) )
))
(declare-datatypes ((tuple2!52870 0))(
  ( (tuple2!52871 (_1!29729 K!13165) (_2!29729 V!13411)) )
))
(declare-datatypes ((List!51924 0))(
  ( (Nil!51800) (Cons!51800 (h!57916 tuple2!52870) (t!359014 List!51924)) )
))
(declare-fun oldBucket!40 () List!51924)

(declare-fun noDuplicateKeys!1606 (List!51924) Bool)

(assert (=> start!467060 (= res!1950426 (noDuplicateKeys!1606 oldBucket!40))))

(assert (=> start!467060 e!2896488))

(assert (=> start!467060 true))

(declare-fun e!2896480 () Bool)

(assert (=> start!467060 e!2896480))

(declare-fun tp_is_empty!29717 () Bool)

(assert (=> start!467060 tp_is_empty!29717))

(declare-fun e!2896479 () Bool)

(assert (=> start!467060 e!2896479))

(declare-fun b!4643095 () Bool)

(declare-fun e!2896486 () Bool)

(declare-fun e!2896487 () Bool)

(assert (=> b!4643095 (= e!2896486 e!2896487)))

(declare-fun res!1950417 () Bool)

(assert (=> b!4643095 (=> res!1950417 e!2896487)))

(declare-fun key!4968 () K!13165)

(declare-fun containsKey!2656 (List!51924 K!13165) Bool)

(assert (=> b!4643095 (= res!1950417 (not (containsKey!2656 (t!359014 oldBucket!40) key!4968)))))

(assert (=> b!4643095 (containsKey!2656 oldBucket!40 key!4968)))

(declare-datatypes ((Hashable!6003 0))(
  ( (HashableExt!6002 (__x!31706 Int)) )
))
(declare-fun hashF!1389 () Hashable!6003)

(declare-datatypes ((Unit!115761 0))(
  ( (Unit!115762) )
))
(declare-fun lt!1807007 () Unit!115761)

(declare-fun lemmaGetPairDefinedThenContainsKey!120 (List!51924 K!13165 Hashable!6003) Unit!115761)

(assert (=> b!4643095 (= lt!1807007 (lemmaGetPairDefinedThenContainsKey!120 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1807019 () List!51924)

(declare-datatypes ((Option!11778 0))(
  ( (None!11777) (Some!11777 (v!46015 tuple2!52870)) )
))
(declare-fun isDefined!9043 (Option!11778) Bool)

(declare-fun getPair!366 (List!51924 K!13165) Option!11778)

(assert (=> b!4643095 (isDefined!9043 (getPair!366 lt!1807019 key!4968))))

(declare-fun lt!1807004 () Unit!115761)

(declare-datatypes ((tuple2!52872 0))(
  ( (tuple2!52873 (_1!29730 (_ BitVec 64)) (_2!29730 List!51924)) )
))
(declare-fun lt!1806996 () tuple2!52872)

(declare-fun lambda!196762 () Int)

(declare-datatypes ((List!51925 0))(
  ( (Nil!51801) (Cons!51801 (h!57917 tuple2!52872) (t!359015 List!51925)) )
))
(declare-fun lt!1806997 () List!51925)

(declare-fun forallContained!3184 (List!51925 Int tuple2!52872) Unit!115761)

(assert (=> b!4643095 (= lt!1807004 (forallContained!3184 lt!1806997 lambda!196762 lt!1806996))))

(declare-fun contains!14943 (List!51925 tuple2!52872) Bool)

(assert (=> b!4643095 (contains!14943 lt!1806997 lt!1806996)))

(declare-fun lt!1806994 () (_ BitVec 64))

(assert (=> b!4643095 (= lt!1806996 (tuple2!52873 lt!1806994 lt!1807019))))

(declare-fun lt!1806995 () Unit!115761)

(declare-datatypes ((ListLongMap!3727 0))(
  ( (ListLongMap!3728 (toList!5157 List!51925)) )
))
(declare-fun lt!1807013 () ListLongMap!3727)

(declare-fun lemmaGetValueImpliesTupleContained!171 (ListLongMap!3727 (_ BitVec 64) List!51924) Unit!115761)

(assert (=> b!4643095 (= lt!1806995 (lemmaGetValueImpliesTupleContained!171 lt!1807013 lt!1806994 lt!1807019))))

(declare-fun apply!12239 (ListLongMap!3727 (_ BitVec 64)) List!51924)

(assert (=> b!4643095 (= lt!1807019 (apply!12239 lt!1807013 lt!1806994))))

(declare-fun contains!14944 (ListLongMap!3727 (_ BitVec 64)) Bool)

(assert (=> b!4643095 (contains!14944 lt!1807013 lt!1806994)))

(declare-fun lt!1807016 () Unit!115761)

(declare-fun lemmaInGenMapThenLongMapContainsHash!572 (ListLongMap!3727 K!13165 Hashable!6003) Unit!115761)

(assert (=> b!4643095 (= lt!1807016 (lemmaInGenMapThenLongMapContainsHash!572 lt!1807013 key!4968 hashF!1389))))

(declare-fun lt!1806991 () Unit!115761)

(declare-fun lemmaInGenMapThenGetPairDefined!162 (ListLongMap!3727 K!13165 Hashable!6003) Unit!115761)

(assert (=> b!4643095 (= lt!1806991 (lemmaInGenMapThenGetPairDefined!162 lt!1807013 key!4968 hashF!1389))))

(assert (=> b!4643095 (= lt!1807013 (ListLongMap!3728 lt!1806997))))

(declare-fun b!4643096 () Bool)

(declare-fun e!2896477 () Bool)

(declare-fun e!2896485 () Bool)

(assert (=> b!4643096 (= e!2896477 e!2896485)))

(declare-fun res!1950419 () Bool)

(assert (=> b!4643096 (=> res!1950419 e!2896485)))

(declare-datatypes ((ListMap!4481 0))(
  ( (ListMap!4482 (toList!5158 List!51924)) )
))
(declare-fun lt!1807008 () ListMap!4481)

(declare-fun lt!1807017 () ListMap!4481)

(assert (=> b!4643096 (= res!1950419 (not (= lt!1807008 lt!1807017)))))

(declare-fun lt!1806988 () ListMap!4481)

(declare-fun +!1956 (ListMap!4481 tuple2!52870) ListMap!4481)

(assert (=> b!4643096 (= lt!1807017 (+!1956 lt!1806988 (h!57916 oldBucket!40)))))

(declare-fun lt!1807005 () ListMap!4481)

(declare-fun -!610 (ListMap!4481 K!13165) ListMap!4481)

(assert (=> b!4643096 (= lt!1807008 (-!610 lt!1807005 key!4968))))

(declare-fun lt!1807018 () ListMap!4481)

(assert (=> b!4643096 (= lt!1807005 (+!1956 lt!1807018 (h!57916 oldBucket!40)))))

(declare-fun lt!1807010 () ListMap!4481)

(declare-fun lt!1807020 () ListMap!4481)

(assert (=> b!4643096 (= lt!1807010 lt!1807020)))

(assert (=> b!4643096 (= lt!1807020 (+!1956 lt!1806988 (h!57916 oldBucket!40)))))

(assert (=> b!4643096 (= lt!1807010 (-!610 (+!1956 lt!1807018 (h!57916 oldBucket!40)) key!4968))))

(declare-fun lt!1807011 () Unit!115761)

(declare-fun addRemoveCommutativeForDiffKeys!55 (ListMap!4481 K!13165 V!13411 K!13165) Unit!115761)

(assert (=> b!4643096 (= lt!1807011 (addRemoveCommutativeForDiffKeys!55 lt!1807018 (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40)) key!4968))))

(declare-fun lt!1807003 () ListMap!4481)

(declare-fun eq!897 (ListMap!4481 ListMap!4481) Bool)

(assert (=> b!4643096 (eq!897 lt!1807003 lt!1806988)))

(assert (=> b!4643096 (= lt!1806988 (-!610 lt!1807018 key!4968))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lt!1806993 () Unit!115761)

(declare-fun lt!1807001 () List!51924)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!162 ((_ BitVec 64) List!51924 List!51924 K!13165 Hashable!6003) Unit!115761)

(assert (=> b!4643096 (= lt!1806993 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!162 hash!414 (t!359014 oldBucket!40) lt!1807001 key!4968 hashF!1389))))

(declare-fun b!4643097 () Bool)

(declare-fun res!1950433 () Bool)

(declare-fun e!2896481 () Bool)

(assert (=> b!4643097 (=> res!1950433 e!2896481)))

(declare-fun removePairForKey!1229 (List!51924 K!13165) List!51924)

(assert (=> b!4643097 (= res!1950433 (not (= (removePairForKey!1229 (t!359014 oldBucket!40) key!4968) lt!1807001)))))

(declare-fun b!4643098 () Bool)

(declare-fun e!2896483 () Bool)

(assert (=> b!4643098 (= e!2896483 (not e!2896486))))

(declare-fun res!1950428 () Bool)

(assert (=> b!4643098 (=> res!1950428 e!2896486)))

(get-info :version)

(assert (=> b!4643098 (= res!1950428 (or (and ((_ is Cons!51800) oldBucket!40) (= (_1!29729 (h!57916 oldBucket!40)) key!4968)) (not ((_ is Cons!51800) oldBucket!40)) (= (_1!29729 (h!57916 oldBucket!40)) key!4968)))))

(declare-fun e!2896482 () Bool)

(assert (=> b!4643098 e!2896482))

(declare-fun res!1950423 () Bool)

(assert (=> b!4643098 (=> (not res!1950423) (not e!2896482))))

(declare-fun lt!1806998 () ListMap!4481)

(declare-fun lt!1806999 () ListMap!4481)

(declare-fun addToMapMapFromBucket!1065 (List!51924 ListMap!4481) ListMap!4481)

(assert (=> b!4643098 (= res!1950423 (= lt!1806998 (addToMapMapFromBucket!1065 oldBucket!40 lt!1806999)))))

(declare-fun extractMap!1662 (List!51925) ListMap!4481)

(assert (=> b!4643098 (= lt!1806999 (extractMap!1662 Nil!51801))))

(assert (=> b!4643098 true))

(declare-fun b!4643099 () Bool)

(declare-fun res!1950422 () Bool)

(assert (=> b!4643099 (=> (not res!1950422) (not e!2896488))))

(declare-fun allKeysSameHash!1460 (List!51924 (_ BitVec 64) Hashable!6003) Bool)

(assert (=> b!4643099 (= res!1950422 (allKeysSameHash!1460 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4643100 () Bool)

(declare-fun res!1950420 () Bool)

(assert (=> b!4643100 (=> (not res!1950420) (not e!2896488))))

(declare-fun newBucket!224 () List!51924)

(assert (=> b!4643100 (= res!1950420 (noDuplicateKeys!1606 newBucket!224))))

(declare-fun b!4643101 () Bool)

(declare-fun e!2896484 () Bool)

(declare-fun lt!1806990 () ListMap!4481)

(assert (=> b!4643101 (= e!2896484 (eq!897 lt!1806990 lt!1807017))))

(assert (=> b!4643101 (eq!897 lt!1807020 (+!1956 lt!1807003 (h!57916 oldBucket!40)))))

(declare-fun lt!1807012 () Unit!115761)

(declare-fun lemmaAddToEqMapsPreservesEq!64 (ListMap!4481 ListMap!4481 K!13165 V!13411) Unit!115761)

(assert (=> b!4643101 (= lt!1807012 (lemmaAddToEqMapsPreservesEq!64 lt!1806988 lt!1807003 (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40))))))

(declare-fun b!4643102 () Bool)

(declare-fun e!2896478 () Bool)

(assert (=> b!4643102 (= e!2896488 e!2896478)))

(declare-fun res!1950418 () Bool)

(assert (=> b!4643102 (=> (not res!1950418) (not e!2896478))))

(declare-fun contains!14945 (ListMap!4481 K!13165) Bool)

(assert (=> b!4643102 (= res!1950418 (contains!14945 lt!1806998 key!4968))))

(assert (=> b!4643102 (= lt!1806998 (extractMap!1662 lt!1806997))))

(assert (=> b!4643102 (= lt!1806997 (Cons!51801 (tuple2!52873 hash!414 oldBucket!40) Nil!51801))))

(declare-fun b!4643103 () Bool)

(assert (=> b!4643103 (= e!2896478 e!2896483)))

(declare-fun res!1950429 () Bool)

(assert (=> b!4643103 (=> (not res!1950429) (not e!2896483))))

(assert (=> b!4643103 (= res!1950429 (= lt!1806994 hash!414))))

(declare-fun hash!3709 (Hashable!6003 K!13165) (_ BitVec 64))

(assert (=> b!4643103 (= lt!1806994 (hash!3709 hashF!1389 key!4968))))

(declare-fun b!4643104 () Bool)

(declare-fun res!1950434 () Bool)

(assert (=> b!4643104 (=> res!1950434 e!2896484)))

(assert (=> b!4643104 (= res!1950434 (not (eq!897 lt!1806990 (+!1956 lt!1807003 (h!57916 oldBucket!40)))))))

(declare-fun b!4643105 () Bool)

(declare-fun e!2896476 () Bool)

(assert (=> b!4643105 (= e!2896481 e!2896476)))

(declare-fun res!1950421 () Bool)

(assert (=> b!4643105 (=> res!1950421 e!2896476)))

(declare-fun lt!1806989 () List!51924)

(assert (=> b!4643105 (= res!1950421 (not (eq!897 lt!1806998 (+!1956 (extractMap!1662 (Cons!51801 (tuple2!52873 hash!414 lt!1806989) Nil!51801)) (h!57916 oldBucket!40)))))))

(declare-fun lt!1807006 () tuple2!52870)

(assert (=> b!4643105 (eq!897 (addToMapMapFromBucket!1065 (Cons!51800 lt!1807006 lt!1807001) (ListMap!4482 Nil!51800)) (+!1956 (addToMapMapFromBucket!1065 lt!1807001 (ListMap!4482 Nil!51800)) lt!1807006))))

(declare-fun lt!1807002 () Unit!115761)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!148 (tuple2!52870 List!51924 ListMap!4481) Unit!115761)

(assert (=> b!4643105 (= lt!1807002 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!148 lt!1807006 lt!1807001 (ListMap!4482 Nil!51800)))))

(declare-fun head!9716 (List!51924) tuple2!52870)

(assert (=> b!4643105 (= lt!1807006 (head!9716 newBucket!224))))

(declare-fun lt!1806992 () tuple2!52870)

(assert (=> b!4643105 (eq!897 (addToMapMapFromBucket!1065 (Cons!51800 lt!1806992 lt!1806989) (ListMap!4482 Nil!51800)) (+!1956 (addToMapMapFromBucket!1065 lt!1806989 (ListMap!4482 Nil!51800)) lt!1806992))))

(declare-fun lt!1807015 () Unit!115761)

(assert (=> b!4643105 (= lt!1807015 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!148 lt!1806992 lt!1806989 (ListMap!4482 Nil!51800)))))

(assert (=> b!4643105 (= lt!1806992 (head!9716 oldBucket!40))))

(assert (=> b!4643105 (contains!14945 lt!1807018 key!4968)))

(declare-fun lt!1807021 () List!51925)

(assert (=> b!4643105 (= lt!1807018 (extractMap!1662 lt!1807021))))

(declare-fun lt!1807009 () Unit!115761)

(declare-fun lemmaListContainsThenExtractedMapContains!384 (ListLongMap!3727 K!13165 Hashable!6003) Unit!115761)

(assert (=> b!4643105 (= lt!1807009 (lemmaListContainsThenExtractedMapContains!384 (ListLongMap!3728 lt!1807021) key!4968 hashF!1389))))

(assert (=> b!4643105 (= lt!1807021 (Cons!51801 (tuple2!52873 hash!414 (t!359014 oldBucket!40)) Nil!51801))))

(declare-fun tp!1342971 () Bool)

(declare-fun tp_is_empty!29719 () Bool)

(declare-fun b!4643106 () Bool)

(assert (=> b!4643106 (= e!2896479 (and tp_is_empty!29717 tp_is_empty!29719 tp!1342971))))

(declare-fun b!4643107 () Bool)

(assert (=> b!4643107 (= e!2896482 (= lt!1806999 (ListMap!4482 Nil!51800)))))

(declare-fun b!4643108 () Bool)

(assert (=> b!4643108 (= e!2896485 e!2896484)))

(declare-fun res!1950432 () Bool)

(assert (=> b!4643108 (=> res!1950432 e!2896484)))

(declare-fun lt!1807000 () ListMap!4481)

(assert (=> b!4643108 (= res!1950432 (not (eq!897 lt!1807000 lt!1807017)))))

(assert (=> b!4643108 (eq!897 lt!1807008 lt!1807000)))

(assert (=> b!4643108 (= lt!1807000 (-!610 lt!1806998 key!4968))))

(declare-fun lt!1807014 () Unit!115761)

(declare-fun lemmaRemovePreservesEq!58 (ListMap!4481 ListMap!4481 K!13165) Unit!115761)

(assert (=> b!4643108 (= lt!1807014 (lemmaRemovePreservesEq!58 lt!1807005 lt!1806998 key!4968))))

(declare-fun b!4643109 () Bool)

(assert (=> b!4643109 (= e!2896476 e!2896477)))

(declare-fun res!1950427 () Bool)

(assert (=> b!4643109 (=> res!1950427 e!2896477)))

(assert (=> b!4643109 (= res!1950427 (not (eq!897 lt!1806990 (+!1956 lt!1807003 lt!1807006))))))

(assert (=> b!4643109 (= lt!1807003 (extractMap!1662 (Cons!51801 (tuple2!52873 hash!414 lt!1807001) Nil!51801)))))

(assert (=> b!4643109 (= lt!1806990 (extractMap!1662 (Cons!51801 (tuple2!52873 hash!414 newBucket!224) Nil!51801)))))

(declare-fun b!4643110 () Bool)

(declare-fun res!1950424 () Bool)

(assert (=> b!4643110 (=> (not res!1950424) (not e!2896488))))

(assert (=> b!4643110 (= res!1950424 (= (removePairForKey!1229 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4643111 () Bool)

(declare-fun tp!1342970 () Bool)

(assert (=> b!4643111 (= e!2896480 (and tp_is_empty!29717 tp_is_empty!29719 tp!1342970))))

(declare-fun b!4643112 () Bool)

(declare-fun res!1950425 () Bool)

(assert (=> b!4643112 (=> res!1950425 e!2896484)))

(assert (=> b!4643112 (= res!1950425 (not (= lt!1807006 (h!57916 oldBucket!40))))))

(declare-fun b!4643113 () Bool)

(assert (=> b!4643113 (= e!2896487 e!2896481)))

(declare-fun res!1950430 () Bool)

(assert (=> b!4643113 (=> res!1950430 e!2896481)))

(assert (=> b!4643113 (= res!1950430 (not (= (removePairForKey!1229 lt!1806989 key!4968) lt!1807001)))))

(declare-fun tail!8229 (List!51924) List!51924)

(assert (=> b!4643113 (= lt!1807001 (tail!8229 newBucket!224))))

(assert (=> b!4643113 (= lt!1806989 (tail!8229 oldBucket!40))))

(declare-fun b!4643114 () Bool)

(declare-fun res!1950431 () Bool)

(assert (=> b!4643114 (=> (not res!1950431) (not e!2896483))))

(assert (=> b!4643114 (= res!1950431 (allKeysSameHash!1460 newBucket!224 hash!414 hashF!1389))))

(assert (= (and start!467060 res!1950426) b!4643100))

(assert (= (and b!4643100 res!1950420) b!4643110))

(assert (= (and b!4643110 res!1950424) b!4643099))

(assert (= (and b!4643099 res!1950422) b!4643102))

(assert (= (and b!4643102 res!1950418) b!4643103))

(assert (= (and b!4643103 res!1950429) b!4643114))

(assert (= (and b!4643114 res!1950431) b!4643098))

(assert (= (and b!4643098 res!1950423) b!4643107))

(assert (= (and b!4643098 (not res!1950428)) b!4643095))

(assert (= (and b!4643095 (not res!1950417)) b!4643113))

(assert (= (and b!4643113 (not res!1950430)) b!4643097))

(assert (= (and b!4643097 (not res!1950433)) b!4643105))

(assert (= (and b!4643105 (not res!1950421)) b!4643109))

(assert (= (and b!4643109 (not res!1950427)) b!4643096))

(assert (= (and b!4643096 (not res!1950419)) b!4643108))

(assert (= (and b!4643108 (not res!1950432)) b!4643112))

(assert (= (and b!4643112 (not res!1950425)) b!4643104))

(assert (= (and b!4643104 (not res!1950434)) b!4643101))

(assert (= (and start!467060 ((_ is Cons!51800) oldBucket!40)) b!4643111))

(assert (= (and start!467060 ((_ is Cons!51800) newBucket!224)) b!4643106))

(declare-fun m!5505661 () Bool)

(assert (=> b!4643099 m!5505661))

(declare-fun m!5505663 () Bool)

(assert (=> b!4643098 m!5505663))

(declare-fun m!5505665 () Bool)

(assert (=> b!4643098 m!5505665))

(declare-fun m!5505667 () Bool)

(assert (=> b!4643113 m!5505667))

(declare-fun m!5505669 () Bool)

(assert (=> b!4643113 m!5505669))

(declare-fun m!5505671 () Bool)

(assert (=> b!4643113 m!5505671))

(declare-fun m!5505673 () Bool)

(assert (=> b!4643114 m!5505673))

(declare-fun m!5505675 () Bool)

(assert (=> b!4643105 m!5505675))

(declare-fun m!5505677 () Bool)

(assert (=> b!4643105 m!5505677))

(declare-fun m!5505679 () Bool)

(assert (=> b!4643105 m!5505679))

(declare-fun m!5505681 () Bool)

(assert (=> b!4643105 m!5505681))

(declare-fun m!5505683 () Bool)

(assert (=> b!4643105 m!5505683))

(declare-fun m!5505685 () Bool)

(assert (=> b!4643105 m!5505685))

(declare-fun m!5505687 () Bool)

(assert (=> b!4643105 m!5505687))

(declare-fun m!5505689 () Bool)

(assert (=> b!4643105 m!5505689))

(declare-fun m!5505691 () Bool)

(assert (=> b!4643105 m!5505691))

(declare-fun m!5505693 () Bool)

(assert (=> b!4643105 m!5505693))

(declare-fun m!5505695 () Bool)

(assert (=> b!4643105 m!5505695))

(assert (=> b!4643105 m!5505689))

(assert (=> b!4643105 m!5505693))

(assert (=> b!4643105 m!5505677))

(declare-fun m!5505697 () Bool)

(assert (=> b!4643105 m!5505697))

(declare-fun m!5505699 () Bool)

(assert (=> b!4643105 m!5505699))

(declare-fun m!5505701 () Bool)

(assert (=> b!4643105 m!5505701))

(declare-fun m!5505703 () Bool)

(assert (=> b!4643105 m!5505703))

(assert (=> b!4643105 m!5505681))

(assert (=> b!4643105 m!5505697))

(declare-fun m!5505705 () Bool)

(assert (=> b!4643105 m!5505705))

(declare-fun m!5505707 () Bool)

(assert (=> b!4643105 m!5505707))

(declare-fun m!5505709 () Bool)

(assert (=> b!4643105 m!5505709))

(assert (=> b!4643105 m!5505691))

(assert (=> b!4643105 m!5505685))

(assert (=> b!4643105 m!5505701))

(declare-fun m!5505711 () Bool)

(assert (=> b!4643096 m!5505711))

(declare-fun m!5505713 () Bool)

(assert (=> b!4643096 m!5505713))

(assert (=> b!4643096 m!5505711))

(declare-fun m!5505715 () Bool)

(assert (=> b!4643096 m!5505715))

(declare-fun m!5505717 () Bool)

(assert (=> b!4643096 m!5505717))

(declare-fun m!5505719 () Bool)

(assert (=> b!4643096 m!5505719))

(declare-fun m!5505721 () Bool)

(assert (=> b!4643096 m!5505721))

(declare-fun m!5505723 () Bool)

(assert (=> b!4643096 m!5505723))

(declare-fun m!5505725 () Bool)

(assert (=> b!4643096 m!5505725))

(declare-fun m!5505727 () Bool)

(assert (=> b!4643097 m!5505727))

(declare-fun m!5505729 () Bool)

(assert (=> b!4643110 m!5505729))

(declare-fun m!5505731 () Bool)

(assert (=> b!4643101 m!5505731))

(declare-fun m!5505733 () Bool)

(assert (=> b!4643101 m!5505733))

(assert (=> b!4643101 m!5505733))

(declare-fun m!5505735 () Bool)

(assert (=> b!4643101 m!5505735))

(declare-fun m!5505737 () Bool)

(assert (=> b!4643101 m!5505737))

(declare-fun m!5505739 () Bool)

(assert (=> b!4643100 m!5505739))

(declare-fun m!5505741 () Bool)

(assert (=> b!4643095 m!5505741))

(declare-fun m!5505743 () Bool)

(assert (=> b!4643095 m!5505743))

(declare-fun m!5505745 () Bool)

(assert (=> b!4643095 m!5505745))

(declare-fun m!5505747 () Bool)

(assert (=> b!4643095 m!5505747))

(declare-fun m!5505749 () Bool)

(assert (=> b!4643095 m!5505749))

(assert (=> b!4643095 m!5505743))

(declare-fun m!5505751 () Bool)

(assert (=> b!4643095 m!5505751))

(declare-fun m!5505753 () Bool)

(assert (=> b!4643095 m!5505753))

(declare-fun m!5505755 () Bool)

(assert (=> b!4643095 m!5505755))

(declare-fun m!5505757 () Bool)

(assert (=> b!4643095 m!5505757))

(declare-fun m!5505759 () Bool)

(assert (=> b!4643095 m!5505759))

(declare-fun m!5505761 () Bool)

(assert (=> b!4643095 m!5505761))

(declare-fun m!5505763 () Bool)

(assert (=> b!4643095 m!5505763))

(assert (=> b!4643104 m!5505733))

(assert (=> b!4643104 m!5505733))

(declare-fun m!5505765 () Bool)

(assert (=> b!4643104 m!5505765))

(declare-fun m!5505767 () Bool)

(assert (=> b!4643103 m!5505767))

(declare-fun m!5505769 () Bool)

(assert (=> start!467060 m!5505769))

(declare-fun m!5505771 () Bool)

(assert (=> b!4643108 m!5505771))

(declare-fun m!5505773 () Bool)

(assert (=> b!4643108 m!5505773))

(declare-fun m!5505775 () Bool)

(assert (=> b!4643108 m!5505775))

(declare-fun m!5505777 () Bool)

(assert (=> b!4643108 m!5505777))

(declare-fun m!5505779 () Bool)

(assert (=> b!4643102 m!5505779))

(declare-fun m!5505781 () Bool)

(assert (=> b!4643102 m!5505781))

(declare-fun m!5505783 () Bool)

(assert (=> b!4643109 m!5505783))

(assert (=> b!4643109 m!5505783))

(declare-fun m!5505785 () Bool)

(assert (=> b!4643109 m!5505785))

(declare-fun m!5505787 () Bool)

(assert (=> b!4643109 m!5505787))

(declare-fun m!5505789 () Bool)

(assert (=> b!4643109 m!5505789))

(check-sat (not b!4643096) (not b!4643095) (not b!4643099) (not b!4643109) (not b!4643098) (not b!4643110) (not b!4643105) tp_is_empty!29717 (not b!4643114) (not b!4643102) (not b!4643106) (not b!4643097) (not start!467060) (not b!4643113) (not b!4643100) (not b!4643103) (not b!4643108) tp_is_empty!29719 (not b!4643104) (not b!4643111) (not b!4643101))
(check-sat)
(get-model)

(declare-fun d!1463921 () Bool)

(declare-fun res!1950439 () Bool)

(declare-fun e!2896493 () Bool)

(assert (=> d!1463921 (=> res!1950439 e!2896493)))

(assert (=> d!1463921 (= res!1950439 (not ((_ is Cons!51800) newBucket!224)))))

(assert (=> d!1463921 (= (noDuplicateKeys!1606 newBucket!224) e!2896493)))

(declare-fun b!4643119 () Bool)

(declare-fun e!2896494 () Bool)

(assert (=> b!4643119 (= e!2896493 e!2896494)))

(declare-fun res!1950440 () Bool)

(assert (=> b!4643119 (=> (not res!1950440) (not e!2896494))))

(assert (=> b!4643119 (= res!1950440 (not (containsKey!2656 (t!359014 newBucket!224) (_1!29729 (h!57916 newBucket!224)))))))

(declare-fun b!4643120 () Bool)

(assert (=> b!4643120 (= e!2896494 (noDuplicateKeys!1606 (t!359014 newBucket!224)))))

(assert (= (and d!1463921 (not res!1950439)) b!4643119))

(assert (= (and b!4643119 res!1950440) b!4643120))

(declare-fun m!5505791 () Bool)

(assert (=> b!4643119 m!5505791))

(declare-fun m!5505793 () Bool)

(assert (=> b!4643120 m!5505793))

(assert (=> b!4643100 d!1463921))

(declare-fun d!1463923 () Bool)

(declare-fun lt!1807027 () List!51924)

(assert (=> d!1463923 (not (containsKey!2656 lt!1807027 key!4968))))

(declare-fun e!2896505 () List!51924)

(assert (=> d!1463923 (= lt!1807027 e!2896505)))

(declare-fun c!794488 () Bool)

(assert (=> d!1463923 (= c!794488 (and ((_ is Cons!51800) oldBucket!40) (= (_1!29729 (h!57916 oldBucket!40)) key!4968)))))

(assert (=> d!1463923 (noDuplicateKeys!1606 oldBucket!40)))

(assert (=> d!1463923 (= (removePairForKey!1229 oldBucket!40 key!4968) lt!1807027)))

(declare-fun b!4643144 () Bool)

(declare-fun e!2896506 () List!51924)

(assert (=> b!4643144 (= e!2896506 Nil!51800)))

(declare-fun b!4643142 () Bool)

(assert (=> b!4643142 (= e!2896505 e!2896506)))

(declare-fun c!794487 () Bool)

(assert (=> b!4643142 (= c!794487 ((_ is Cons!51800) oldBucket!40))))

(declare-fun b!4643141 () Bool)

(assert (=> b!4643141 (= e!2896505 (t!359014 oldBucket!40))))

(declare-fun b!4643143 () Bool)

(assert (=> b!4643143 (= e!2896506 (Cons!51800 (h!57916 oldBucket!40) (removePairForKey!1229 (t!359014 oldBucket!40) key!4968)))))

(assert (= (and d!1463923 c!794488) b!4643141))

(assert (= (and d!1463923 (not c!794488)) b!4643142))

(assert (= (and b!4643142 c!794487) b!4643143))

(assert (= (and b!4643142 (not c!794487)) b!4643144))

(declare-fun m!5505801 () Bool)

(assert (=> d!1463923 m!5505801))

(assert (=> d!1463923 m!5505769))

(assert (=> b!4643143 m!5505727))

(assert (=> b!4643110 d!1463923))

(declare-fun d!1463929 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8958 (List!51924) (InoxSet tuple2!52870))

(assert (=> d!1463929 (= (eq!897 lt!1806990 lt!1807017) (= (content!8958 (toList!5158 lt!1806990)) (content!8958 (toList!5158 lt!1807017))))))

(declare-fun bs!1034801 () Bool)

(assert (= bs!1034801 d!1463929))

(declare-fun m!5505805 () Bool)

(assert (=> bs!1034801 m!5505805))

(declare-fun m!5505807 () Bool)

(assert (=> bs!1034801 m!5505807))

(assert (=> b!4643101 d!1463929))

(declare-fun d!1463933 () Bool)

(assert (=> d!1463933 (= (eq!897 lt!1807020 (+!1956 lt!1807003 (h!57916 oldBucket!40))) (= (content!8958 (toList!5158 lt!1807020)) (content!8958 (toList!5158 (+!1956 lt!1807003 (h!57916 oldBucket!40))))))))

(declare-fun bs!1034802 () Bool)

(assert (= bs!1034802 d!1463933))

(declare-fun m!5505811 () Bool)

(assert (=> bs!1034802 m!5505811))

(declare-fun m!5505813 () Bool)

(assert (=> bs!1034802 m!5505813))

(assert (=> b!4643101 d!1463933))

(declare-fun d!1463937 () Bool)

(declare-fun e!2896518 () Bool)

(assert (=> d!1463937 e!2896518))

(declare-fun res!1950455 () Bool)

(assert (=> d!1463937 (=> (not res!1950455) (not e!2896518))))

(declare-fun lt!1807042 () ListMap!4481)

(assert (=> d!1463937 (= res!1950455 (contains!14945 lt!1807042 (_1!29729 (h!57916 oldBucket!40))))))

(declare-fun lt!1807043 () List!51924)

(assert (=> d!1463937 (= lt!1807042 (ListMap!4482 lt!1807043))))

(declare-fun lt!1807044 () Unit!115761)

(declare-fun lt!1807045 () Unit!115761)

(assert (=> d!1463937 (= lt!1807044 lt!1807045)))

(declare-datatypes ((Option!11780 0))(
  ( (None!11779) (Some!11779 (v!46021 V!13411)) )
))
(declare-fun getValueByKey!1572 (List!51924 K!13165) Option!11780)

(assert (=> d!1463937 (= (getValueByKey!1572 lt!1807043 (_1!29729 (h!57916 oldBucket!40))) (Some!11779 (_2!29729 (h!57916 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!905 (List!51924 K!13165 V!13411) Unit!115761)

(assert (=> d!1463937 (= lt!1807045 (lemmaContainsTupThenGetReturnValue!905 lt!1807043 (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!413 (List!51924 K!13165 V!13411) List!51924)

(assert (=> d!1463937 (= lt!1807043 (insertNoDuplicatedKeys!413 (toList!5158 lt!1807003) (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40))))))

(assert (=> d!1463937 (= (+!1956 lt!1807003 (h!57916 oldBucket!40)) lt!1807042)))

(declare-fun b!4643162 () Bool)

(declare-fun res!1950454 () Bool)

(assert (=> b!4643162 (=> (not res!1950454) (not e!2896518))))

(assert (=> b!4643162 (= res!1950454 (= (getValueByKey!1572 (toList!5158 lt!1807042) (_1!29729 (h!57916 oldBucket!40))) (Some!11779 (_2!29729 (h!57916 oldBucket!40)))))))

(declare-fun b!4643163 () Bool)

(declare-fun contains!14947 (List!51924 tuple2!52870) Bool)

(assert (=> b!4643163 (= e!2896518 (contains!14947 (toList!5158 lt!1807042) (h!57916 oldBucket!40)))))

(assert (= (and d!1463937 res!1950455) b!4643162))

(assert (= (and b!4643162 res!1950454) b!4643163))

(declare-fun m!5505841 () Bool)

(assert (=> d!1463937 m!5505841))

(declare-fun m!5505843 () Bool)

(assert (=> d!1463937 m!5505843))

(declare-fun m!5505845 () Bool)

(assert (=> d!1463937 m!5505845))

(declare-fun m!5505847 () Bool)

(assert (=> d!1463937 m!5505847))

(declare-fun m!5505849 () Bool)

(assert (=> b!4643162 m!5505849))

(declare-fun m!5505851 () Bool)

(assert (=> b!4643163 m!5505851))

(assert (=> b!4643101 d!1463937))

(declare-fun d!1463947 () Bool)

(assert (=> d!1463947 (eq!897 (+!1956 lt!1806988 (tuple2!52871 (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40)))) (+!1956 lt!1807003 (tuple2!52871 (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40)))))))

(declare-fun lt!1807072 () Unit!115761)

(declare-fun choose!31835 (ListMap!4481 ListMap!4481 K!13165 V!13411) Unit!115761)

(assert (=> d!1463947 (= lt!1807072 (choose!31835 lt!1806988 lt!1807003 (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40))))))

(assert (=> d!1463947 (eq!897 lt!1806988 lt!1807003)))

(assert (=> d!1463947 (= (lemmaAddToEqMapsPreservesEq!64 lt!1806988 lt!1807003 (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40))) lt!1807072)))

(declare-fun bs!1034806 () Bool)

(assert (= bs!1034806 d!1463947))

(declare-fun m!5505871 () Bool)

(assert (=> bs!1034806 m!5505871))

(declare-fun m!5505873 () Bool)

(assert (=> bs!1034806 m!5505873))

(declare-fun m!5505875 () Bool)

(assert (=> bs!1034806 m!5505875))

(declare-fun m!5505877 () Bool)

(assert (=> bs!1034806 m!5505877))

(assert (=> bs!1034806 m!5505873))

(declare-fun m!5505879 () Bool)

(assert (=> bs!1034806 m!5505879))

(assert (=> bs!1034806 m!5505875))

(assert (=> b!4643101 d!1463947))

(declare-fun d!1463951 () Bool)

(declare-fun res!1950465 () Bool)

(declare-fun e!2896537 () Bool)

(assert (=> d!1463951 (=> res!1950465 e!2896537)))

(assert (=> d!1463951 (= res!1950465 (not ((_ is Cons!51800) oldBucket!40)))))

(assert (=> d!1463951 (= (noDuplicateKeys!1606 oldBucket!40) e!2896537)))

(declare-fun b!4643191 () Bool)

(declare-fun e!2896538 () Bool)

(assert (=> b!4643191 (= e!2896537 e!2896538)))

(declare-fun res!1950466 () Bool)

(assert (=> b!4643191 (=> (not res!1950466) (not e!2896538))))

(assert (=> b!4643191 (= res!1950466 (not (containsKey!2656 (t!359014 oldBucket!40) (_1!29729 (h!57916 oldBucket!40)))))))

(declare-fun b!4643192 () Bool)

(assert (=> b!4643192 (= e!2896538 (noDuplicateKeys!1606 (t!359014 oldBucket!40)))))

(assert (= (and d!1463951 (not res!1950465)) b!4643191))

(assert (= (and b!4643191 res!1950466) b!4643192))

(declare-fun m!5505881 () Bool)

(assert (=> b!4643191 m!5505881))

(declare-fun m!5505883 () Bool)

(assert (=> b!4643192 m!5505883))

(assert (=> start!467060 d!1463951))

(declare-fun d!1463953 () Bool)

(declare-fun hash!3712 (Hashable!6003 K!13165) (_ BitVec 64))

(assert (=> d!1463953 (= (hash!3709 hashF!1389 key!4968) (hash!3712 hashF!1389 key!4968))))

(declare-fun bs!1034808 () Bool)

(assert (= bs!1034808 d!1463953))

(declare-fun m!5505893 () Bool)

(assert (=> bs!1034808 m!5505893))

(assert (=> b!4643103 d!1463953))

(declare-fun d!1463957 () Bool)

(declare-fun lt!1807076 () List!51924)

(assert (=> d!1463957 (not (containsKey!2656 lt!1807076 key!4968))))

(declare-fun e!2896542 () List!51924)

(assert (=> d!1463957 (= lt!1807076 e!2896542)))

(declare-fun c!794502 () Bool)

(assert (=> d!1463957 (= c!794502 (and ((_ is Cons!51800) lt!1806989) (= (_1!29729 (h!57916 lt!1806989)) key!4968)))))

(assert (=> d!1463957 (noDuplicateKeys!1606 lt!1806989)))

(assert (=> d!1463957 (= (removePairForKey!1229 lt!1806989 key!4968) lt!1807076)))

(declare-fun b!4643202 () Bool)

(declare-fun e!2896543 () List!51924)

(assert (=> b!4643202 (= e!2896543 Nil!51800)))

(declare-fun b!4643200 () Bool)

(assert (=> b!4643200 (= e!2896542 e!2896543)))

(declare-fun c!794501 () Bool)

(assert (=> b!4643200 (= c!794501 ((_ is Cons!51800) lt!1806989))))

(declare-fun b!4643199 () Bool)

(assert (=> b!4643199 (= e!2896542 (t!359014 lt!1806989))))

(declare-fun b!4643201 () Bool)

(assert (=> b!4643201 (= e!2896543 (Cons!51800 (h!57916 lt!1806989) (removePairForKey!1229 (t!359014 lt!1806989) key!4968)))))

(assert (= (and d!1463957 c!794502) b!4643199))

(assert (= (and d!1463957 (not c!794502)) b!4643200))

(assert (= (and b!4643200 c!794501) b!4643201))

(assert (= (and b!4643200 (not c!794501)) b!4643202))

(declare-fun m!5505903 () Bool)

(assert (=> d!1463957 m!5505903))

(declare-fun m!5505905 () Bool)

(assert (=> d!1463957 m!5505905))

(declare-fun m!5505907 () Bool)

(assert (=> b!4643201 m!5505907))

(assert (=> b!4643113 d!1463957))

(declare-fun d!1463963 () Bool)

(assert (=> d!1463963 (= (tail!8229 newBucket!224) (t!359014 newBucket!224))))

(assert (=> b!4643113 d!1463963))

(declare-fun d!1463973 () Bool)

(assert (=> d!1463973 (= (tail!8229 oldBucket!40) (t!359014 oldBucket!40))))

(assert (=> b!4643113 d!1463973))

(declare-fun bm!324144 () Bool)

(declare-fun call!324149 () Bool)

(declare-datatypes ((List!51927 0))(
  ( (Nil!51803) (Cons!51803 (h!57921 K!13165) (t!359019 List!51927)) )
))
(declare-fun e!2896560 () List!51927)

(declare-fun contains!14948 (List!51927 K!13165) Bool)

(assert (=> bm!324144 (= call!324149 (contains!14948 e!2896560 key!4968))))

(declare-fun c!794512 () Bool)

(declare-fun c!794511 () Bool)

(assert (=> bm!324144 (= c!794512 c!794511)))

(declare-fun b!4643226 () Bool)

(declare-fun keys!18320 (ListMap!4481) List!51927)

(assert (=> b!4643226 (= e!2896560 (keys!18320 lt!1806998))))

(declare-fun b!4643227 () Bool)

(declare-fun e!2896558 () Bool)

(assert (=> b!4643227 (= e!2896558 (contains!14948 (keys!18320 lt!1806998) key!4968))))

(declare-fun b!4643228 () Bool)

(declare-fun e!2896561 () Unit!115761)

(declare-fun e!2896563 () Unit!115761)

(assert (=> b!4643228 (= e!2896561 e!2896563)))

(declare-fun c!794513 () Bool)

(assert (=> b!4643228 (= c!794513 call!324149)))

(declare-fun b!4643229 () Bool)

(assert (=> b!4643229 false))

(declare-fun lt!1807103 () Unit!115761)

(declare-fun lt!1807102 () Unit!115761)

(assert (=> b!4643229 (= lt!1807103 lt!1807102)))

(declare-fun containsKey!2658 (List!51924 K!13165) Bool)

(assert (=> b!4643229 (containsKey!2658 (toList!5158 lt!1806998) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!720 (List!51924 K!13165) Unit!115761)

(assert (=> b!4643229 (= lt!1807102 (lemmaInGetKeysListThenContainsKey!720 (toList!5158 lt!1806998) key!4968))))

(declare-fun Unit!115778 () Unit!115761)

(assert (=> b!4643229 (= e!2896563 Unit!115778)))

(declare-fun b!4643230 () Bool)

(declare-fun e!2896562 () Bool)

(assert (=> b!4643230 (= e!2896562 e!2896558)))

(declare-fun res!1950475 () Bool)

(assert (=> b!4643230 (=> (not res!1950475) (not e!2896558))))

(declare-fun isDefined!9045 (Option!11780) Bool)

(assert (=> b!4643230 (= res!1950475 (isDefined!9045 (getValueByKey!1572 (toList!5158 lt!1806998) key!4968)))))

(declare-fun b!4643231 () Bool)

(declare-fun e!2896559 () Bool)

(assert (=> b!4643231 (= e!2896559 (not (contains!14948 (keys!18320 lt!1806998) key!4968)))))

(declare-fun b!4643232 () Bool)

(declare-fun getKeysList!721 (List!51924) List!51927)

(assert (=> b!4643232 (= e!2896560 (getKeysList!721 (toList!5158 lt!1806998)))))

(declare-fun b!4643233 () Bool)

(declare-fun lt!1807100 () Unit!115761)

(assert (=> b!4643233 (= e!2896561 lt!1807100)))

(declare-fun lt!1807097 () Unit!115761)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1474 (List!51924 K!13165) Unit!115761)

(assert (=> b!4643233 (= lt!1807097 (lemmaContainsKeyImpliesGetValueByKeyDefined!1474 (toList!5158 lt!1806998) key!4968))))

(assert (=> b!4643233 (isDefined!9045 (getValueByKey!1572 (toList!5158 lt!1806998) key!4968))))

(declare-fun lt!1807099 () Unit!115761)

(assert (=> b!4643233 (= lt!1807099 lt!1807097)))

(declare-fun lemmaInListThenGetKeysListContains!716 (List!51924 K!13165) Unit!115761)

(assert (=> b!4643233 (= lt!1807100 (lemmaInListThenGetKeysListContains!716 (toList!5158 lt!1806998) key!4968))))

(assert (=> b!4643233 call!324149))

(declare-fun d!1463977 () Bool)

(assert (=> d!1463977 e!2896562))

(declare-fun res!1950473 () Bool)

(assert (=> d!1463977 (=> res!1950473 e!2896562)))

(assert (=> d!1463977 (= res!1950473 e!2896559)))

(declare-fun res!1950474 () Bool)

(assert (=> d!1463977 (=> (not res!1950474) (not e!2896559))))

(declare-fun lt!1807104 () Bool)

(assert (=> d!1463977 (= res!1950474 (not lt!1807104))))

(declare-fun lt!1807098 () Bool)

(assert (=> d!1463977 (= lt!1807104 lt!1807098)))

(declare-fun lt!1807101 () Unit!115761)

(assert (=> d!1463977 (= lt!1807101 e!2896561)))

(assert (=> d!1463977 (= c!794511 lt!1807098)))

(assert (=> d!1463977 (= lt!1807098 (containsKey!2658 (toList!5158 lt!1806998) key!4968))))

(assert (=> d!1463977 (= (contains!14945 lt!1806998 key!4968) lt!1807104)))

(declare-fun b!4643225 () Bool)

(declare-fun Unit!115779 () Unit!115761)

(assert (=> b!4643225 (= e!2896563 Unit!115779)))

(assert (= (and d!1463977 c!794511) b!4643233))

(assert (= (and d!1463977 (not c!794511)) b!4643228))

(assert (= (and b!4643228 c!794513) b!4643229))

(assert (= (and b!4643228 (not c!794513)) b!4643225))

(assert (= (or b!4643233 b!4643228) bm!324144))

(assert (= (and bm!324144 c!794512) b!4643232))

(assert (= (and bm!324144 (not c!794512)) b!4643226))

(assert (= (and d!1463977 res!1950474) b!4643231))

(assert (= (and d!1463977 (not res!1950473)) b!4643230))

(assert (= (and b!4643230 res!1950475) b!4643227))

(declare-fun m!5505925 () Bool)

(assert (=> b!4643233 m!5505925))

(declare-fun m!5505927 () Bool)

(assert (=> b!4643233 m!5505927))

(assert (=> b!4643233 m!5505927))

(declare-fun m!5505929 () Bool)

(assert (=> b!4643233 m!5505929))

(declare-fun m!5505931 () Bool)

(assert (=> b!4643233 m!5505931))

(declare-fun m!5505933 () Bool)

(assert (=> d!1463977 m!5505933))

(declare-fun m!5505935 () Bool)

(assert (=> bm!324144 m!5505935))

(declare-fun m!5505937 () Bool)

(assert (=> b!4643232 m!5505937))

(declare-fun m!5505939 () Bool)

(assert (=> b!4643231 m!5505939))

(assert (=> b!4643231 m!5505939))

(declare-fun m!5505941 () Bool)

(assert (=> b!4643231 m!5505941))

(assert (=> b!4643230 m!5505927))

(assert (=> b!4643230 m!5505927))

(assert (=> b!4643230 m!5505929))

(assert (=> b!4643226 m!5505939))

(assert (=> b!4643227 m!5505939))

(assert (=> b!4643227 m!5505939))

(assert (=> b!4643227 m!5505941))

(assert (=> b!4643229 m!5505933))

(declare-fun m!5505943 () Bool)

(assert (=> b!4643229 m!5505943))

(assert (=> b!4643102 d!1463977))

(declare-fun bs!1034816 () Bool)

(declare-fun d!1463981 () Bool)

(assert (= bs!1034816 (and d!1463981 b!4643095)))

(declare-fun lambda!196775 () Int)

(assert (=> bs!1034816 (= lambda!196775 lambda!196762)))

(declare-fun lt!1807107 () ListMap!4481)

(declare-fun invariantList!1270 (List!51924) Bool)

(assert (=> d!1463981 (invariantList!1270 (toList!5158 lt!1807107))))

(declare-fun e!2896566 () ListMap!4481)

(assert (=> d!1463981 (= lt!1807107 e!2896566)))

(declare-fun c!794516 () Bool)

(assert (=> d!1463981 (= c!794516 ((_ is Cons!51801) lt!1806997))))

(declare-fun forall!10959 (List!51925 Int) Bool)

(assert (=> d!1463981 (forall!10959 lt!1806997 lambda!196775)))

(assert (=> d!1463981 (= (extractMap!1662 lt!1806997) lt!1807107)))

(declare-fun b!4643238 () Bool)

(assert (=> b!4643238 (= e!2896566 (addToMapMapFromBucket!1065 (_2!29730 (h!57917 lt!1806997)) (extractMap!1662 (t!359015 lt!1806997))))))

(declare-fun b!4643239 () Bool)

(assert (=> b!4643239 (= e!2896566 (ListMap!4482 Nil!51800))))

(assert (= (and d!1463981 c!794516) b!4643238))

(assert (= (and d!1463981 (not c!794516)) b!4643239))

(declare-fun m!5505945 () Bool)

(assert (=> d!1463981 m!5505945))

(declare-fun m!5505947 () Bool)

(assert (=> d!1463981 m!5505947))

(declare-fun m!5505949 () Bool)

(assert (=> b!4643238 m!5505949))

(assert (=> b!4643238 m!5505949))

(declare-fun m!5505951 () Bool)

(assert (=> b!4643238 m!5505951))

(assert (=> b!4643102 d!1463981))

(declare-fun d!1463983 () Bool)

(assert (=> d!1463983 (= (eq!897 lt!1806990 (+!1956 lt!1807003 (h!57916 oldBucket!40))) (= (content!8958 (toList!5158 lt!1806990)) (content!8958 (toList!5158 (+!1956 lt!1807003 (h!57916 oldBucket!40))))))))

(declare-fun bs!1034817 () Bool)

(assert (= bs!1034817 d!1463983))

(assert (=> bs!1034817 m!5505805))

(assert (=> bs!1034817 m!5505813))

(assert (=> b!4643104 d!1463983))

(assert (=> b!4643104 d!1463937))

(declare-fun d!1463985 () Bool)

(assert (=> d!1463985 true))

(assert (=> d!1463985 true))

(declare-fun lambda!196778 () Int)

(declare-fun forall!10960 (List!51924 Int) Bool)

(assert (=> d!1463985 (= (allKeysSameHash!1460 newBucket!224 hash!414 hashF!1389) (forall!10960 newBucket!224 lambda!196778))))

(declare-fun bs!1034818 () Bool)

(assert (= bs!1034818 d!1463985))

(declare-fun m!5505953 () Bool)

(assert (=> bs!1034818 m!5505953))

(assert (=> b!4643114 d!1463985))

(declare-fun bs!1034819 () Bool)

(declare-fun d!1463987 () Bool)

(assert (= bs!1034819 (and d!1463987 b!4643095)))

(declare-fun lambda!196781 () Int)

(assert (=> bs!1034819 (= lambda!196781 lambda!196762)))

(declare-fun bs!1034820 () Bool)

(assert (= bs!1034820 (and d!1463987 d!1463981)))

(assert (=> bs!1034820 (= lambda!196781 lambda!196775)))

(assert (=> d!1463987 (contains!14944 lt!1807013 (hash!3709 hashF!1389 key!4968))))

(declare-fun lt!1807110 () Unit!115761)

(declare-fun choose!31837 (ListLongMap!3727 K!13165 Hashable!6003) Unit!115761)

(assert (=> d!1463987 (= lt!1807110 (choose!31837 lt!1807013 key!4968 hashF!1389))))

(assert (=> d!1463987 (forall!10959 (toList!5157 lt!1807013) lambda!196781)))

(assert (=> d!1463987 (= (lemmaInGenMapThenLongMapContainsHash!572 lt!1807013 key!4968 hashF!1389) lt!1807110)))

(declare-fun bs!1034821 () Bool)

(assert (= bs!1034821 d!1463987))

(assert (=> bs!1034821 m!5505767))

(assert (=> bs!1034821 m!5505767))

(declare-fun m!5505955 () Bool)

(assert (=> bs!1034821 m!5505955))

(declare-fun m!5505957 () Bool)

(assert (=> bs!1034821 m!5505957))

(declare-fun m!5505959 () Bool)

(assert (=> bs!1034821 m!5505959))

(assert (=> b!4643095 d!1463987))

(declare-fun b!4643260 () Bool)

(declare-fun e!2896579 () Option!11778)

(assert (=> b!4643260 (= e!2896579 (getPair!366 (t!359014 lt!1807019) key!4968))))

(declare-fun b!4643261 () Bool)

(declare-fun e!2896577 () Option!11778)

(assert (=> b!4643261 (= e!2896577 e!2896579)))

(declare-fun c!794522 () Bool)

(assert (=> b!4643261 (= c!794522 ((_ is Cons!51800) lt!1807019))))

(declare-fun b!4643262 () Bool)

(declare-fun e!2896581 () Bool)

(declare-fun lt!1807113 () Option!11778)

(declare-fun get!17237 (Option!11778) tuple2!52870)

(assert (=> b!4643262 (= e!2896581 (contains!14947 lt!1807019 (get!17237 lt!1807113)))))

(declare-fun b!4643263 () Bool)

(declare-fun e!2896580 () Bool)

(assert (=> b!4643263 (= e!2896580 e!2896581)))

(declare-fun res!1950485 () Bool)

(assert (=> b!4643263 (=> (not res!1950485) (not e!2896581))))

(assert (=> b!4643263 (= res!1950485 (isDefined!9043 lt!1807113))))

(declare-fun b!4643264 () Bool)

(declare-fun res!1950487 () Bool)

(assert (=> b!4643264 (=> (not res!1950487) (not e!2896581))))

(assert (=> b!4643264 (= res!1950487 (= (_1!29729 (get!17237 lt!1807113)) key!4968))))

(declare-fun d!1463989 () Bool)

(assert (=> d!1463989 e!2896580))

(declare-fun res!1950486 () Bool)

(assert (=> d!1463989 (=> res!1950486 e!2896580)))

(declare-fun e!2896578 () Bool)

(assert (=> d!1463989 (= res!1950486 e!2896578)))

(declare-fun res!1950484 () Bool)

(assert (=> d!1463989 (=> (not res!1950484) (not e!2896578))))

(declare-fun isEmpty!28985 (Option!11778) Bool)

(assert (=> d!1463989 (= res!1950484 (isEmpty!28985 lt!1807113))))

(assert (=> d!1463989 (= lt!1807113 e!2896577)))

(declare-fun c!794521 () Bool)

(assert (=> d!1463989 (= c!794521 (and ((_ is Cons!51800) lt!1807019) (= (_1!29729 (h!57916 lt!1807019)) key!4968)))))

(assert (=> d!1463989 (noDuplicateKeys!1606 lt!1807019)))

(assert (=> d!1463989 (= (getPair!366 lt!1807019 key!4968) lt!1807113)))

(declare-fun b!4643265 () Bool)

(assert (=> b!4643265 (= e!2896577 (Some!11777 (h!57916 lt!1807019)))))

(declare-fun b!4643266 () Bool)

(assert (=> b!4643266 (= e!2896578 (not (containsKey!2656 lt!1807019 key!4968)))))

(declare-fun b!4643267 () Bool)

(assert (=> b!4643267 (= e!2896579 None!11777)))

(assert (= (and d!1463989 c!794521) b!4643265))

(assert (= (and d!1463989 (not c!794521)) b!4643261))

(assert (= (and b!4643261 c!794522) b!4643260))

(assert (= (and b!4643261 (not c!794522)) b!4643267))

(assert (= (and d!1463989 res!1950484) b!4643266))

(assert (= (and d!1463989 (not res!1950486)) b!4643263))

(assert (= (and b!4643263 res!1950485) b!4643264))

(assert (= (and b!4643264 res!1950487) b!4643262))

(declare-fun m!5505961 () Bool)

(assert (=> b!4643262 m!5505961))

(assert (=> b!4643262 m!5505961))

(declare-fun m!5505963 () Bool)

(assert (=> b!4643262 m!5505963))

(assert (=> b!4643264 m!5505961))

(declare-fun m!5505965 () Bool)

(assert (=> b!4643263 m!5505965))

(declare-fun m!5505967 () Bool)

(assert (=> b!4643266 m!5505967))

(declare-fun m!5505969 () Bool)

(assert (=> b!4643260 m!5505969))

(declare-fun m!5505971 () Bool)

(assert (=> d!1463989 m!5505971))

(declare-fun m!5505973 () Bool)

(assert (=> d!1463989 m!5505973))

(assert (=> b!4643095 d!1463989))

(declare-fun d!1463991 () Bool)

(declare-fun e!2896589 () Bool)

(assert (=> d!1463991 e!2896589))

(declare-fun res!1950490 () Bool)

(assert (=> d!1463991 (=> res!1950490 e!2896589)))

(declare-fun lt!1807135 () Bool)

(assert (=> d!1463991 (= res!1950490 (not lt!1807135))))

(declare-fun lt!1807134 () Bool)

(assert (=> d!1463991 (= lt!1807135 lt!1807134)))

(declare-fun lt!1807132 () Unit!115761)

(declare-fun e!2896588 () Unit!115761)

(assert (=> d!1463991 (= lt!1807132 e!2896588)))

(declare-fun c!794527 () Bool)

(assert (=> d!1463991 (= c!794527 lt!1807134)))

(declare-fun containsKey!2659 (List!51925 (_ BitVec 64)) Bool)

(assert (=> d!1463991 (= lt!1807134 (containsKey!2659 (toList!5157 lt!1807013) lt!1806994))))

(assert (=> d!1463991 (= (contains!14944 lt!1807013 lt!1806994) lt!1807135)))

(declare-fun b!4643278 () Bool)

(declare-fun lt!1807133 () Unit!115761)

(assert (=> b!4643278 (= e!2896588 lt!1807133)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1475 (List!51925 (_ BitVec 64)) Unit!115761)

(assert (=> b!4643278 (= lt!1807133 (lemmaContainsKeyImpliesGetValueByKeyDefined!1475 (toList!5157 lt!1807013) lt!1806994))))

(declare-datatypes ((Option!11781 0))(
  ( (None!11780) (Some!11780 (v!46022 List!51924)) )
))
(declare-fun isDefined!9046 (Option!11781) Bool)

(declare-fun getValueByKey!1573 (List!51925 (_ BitVec 64)) Option!11781)

(assert (=> b!4643278 (isDefined!9046 (getValueByKey!1573 (toList!5157 lt!1807013) lt!1806994))))

(declare-fun b!4643279 () Bool)

(declare-fun Unit!115788 () Unit!115761)

(assert (=> b!4643279 (= e!2896588 Unit!115788)))

(declare-fun b!4643280 () Bool)

(assert (=> b!4643280 (= e!2896589 (isDefined!9046 (getValueByKey!1573 (toList!5157 lt!1807013) lt!1806994)))))

(assert (= (and d!1463991 c!794527) b!4643278))

(assert (= (and d!1463991 (not c!794527)) b!4643279))

(assert (= (and d!1463991 (not res!1950490)) b!4643280))

(declare-fun m!5505975 () Bool)

(assert (=> d!1463991 m!5505975))

(declare-fun m!5505977 () Bool)

(assert (=> b!4643278 m!5505977))

(declare-fun m!5505979 () Bool)

(assert (=> b!4643278 m!5505979))

(assert (=> b!4643278 m!5505979))

(declare-fun m!5505981 () Bool)

(assert (=> b!4643278 m!5505981))

(assert (=> b!4643280 m!5505979))

(assert (=> b!4643280 m!5505979))

(assert (=> b!4643280 m!5505981))

(assert (=> b!4643095 d!1463991))

(declare-fun d!1463993 () Bool)

(declare-fun dynLambda!21553 (Int tuple2!52872) Bool)

(assert (=> d!1463993 (dynLambda!21553 lambda!196762 lt!1806996)))

(declare-fun lt!1807152 () Unit!115761)

(declare-fun choose!31838 (List!51925 Int tuple2!52872) Unit!115761)

(assert (=> d!1463993 (= lt!1807152 (choose!31838 lt!1806997 lambda!196762 lt!1806996))))

(declare-fun e!2896592 () Bool)

(assert (=> d!1463993 e!2896592))

(declare-fun res!1950493 () Bool)

(assert (=> d!1463993 (=> (not res!1950493) (not e!2896592))))

(assert (=> d!1463993 (= res!1950493 (forall!10959 lt!1806997 lambda!196762))))

(assert (=> d!1463993 (= (forallContained!3184 lt!1806997 lambda!196762 lt!1806996) lt!1807152)))

(declare-fun b!4643283 () Bool)

(assert (=> b!4643283 (= e!2896592 (contains!14943 lt!1806997 lt!1806996))))

(assert (= (and d!1463993 res!1950493) b!4643283))

(declare-fun b_lambda!171093 () Bool)

(assert (=> (not b_lambda!171093) (not d!1463993)))

(declare-fun m!5505983 () Bool)

(assert (=> d!1463993 m!5505983))

(declare-fun m!5505985 () Bool)

(assert (=> d!1463993 m!5505985))

(declare-fun m!5505987 () Bool)

(assert (=> d!1463993 m!5505987))

(assert (=> b!4643283 m!5505761))

(assert (=> b!4643095 d!1463993))

(declare-fun d!1463995 () Bool)

(assert (=> d!1463995 (containsKey!2656 oldBucket!40 key!4968)))

(declare-fun lt!1807163 () Unit!115761)

(declare-fun choose!31839 (List!51924 K!13165 Hashable!6003) Unit!115761)

(assert (=> d!1463995 (= lt!1807163 (choose!31839 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1463995 (noDuplicateKeys!1606 oldBucket!40)))

(assert (=> d!1463995 (= (lemmaGetPairDefinedThenContainsKey!120 oldBucket!40 key!4968 hashF!1389) lt!1807163)))

(declare-fun bs!1034822 () Bool)

(assert (= bs!1034822 d!1463995))

(assert (=> bs!1034822 m!5505747))

(declare-fun m!5505989 () Bool)

(assert (=> bs!1034822 m!5505989))

(assert (=> bs!1034822 m!5505769))

(assert (=> b!4643095 d!1463995))

(declare-fun d!1463997 () Bool)

(declare-fun res!1950498 () Bool)

(declare-fun e!2896597 () Bool)

(assert (=> d!1463997 (=> res!1950498 e!2896597)))

(assert (=> d!1463997 (= res!1950498 (and ((_ is Cons!51800) oldBucket!40) (= (_1!29729 (h!57916 oldBucket!40)) key!4968)))))

(assert (=> d!1463997 (= (containsKey!2656 oldBucket!40 key!4968) e!2896597)))

(declare-fun b!4643288 () Bool)

(declare-fun e!2896598 () Bool)

(assert (=> b!4643288 (= e!2896597 e!2896598)))

(declare-fun res!1950499 () Bool)

(assert (=> b!4643288 (=> (not res!1950499) (not e!2896598))))

(assert (=> b!4643288 (= res!1950499 ((_ is Cons!51800) oldBucket!40))))

(declare-fun b!4643289 () Bool)

(assert (=> b!4643289 (= e!2896598 (containsKey!2656 (t!359014 oldBucket!40) key!4968))))

(assert (= (and d!1463997 (not res!1950498)) b!4643288))

(assert (= (and b!4643288 res!1950499) b!4643289))

(assert (=> b!4643289 m!5505753))

(assert (=> b!4643095 d!1463997))

(declare-fun d!1463999 () Bool)

(declare-fun res!1950502 () Bool)

(declare-fun e!2896601 () Bool)

(assert (=> d!1463999 (=> res!1950502 e!2896601)))

(assert (=> d!1463999 (= res!1950502 (and ((_ is Cons!51800) (t!359014 oldBucket!40)) (= (_1!29729 (h!57916 (t!359014 oldBucket!40))) key!4968)))))

(assert (=> d!1463999 (= (containsKey!2656 (t!359014 oldBucket!40) key!4968) e!2896601)))

(declare-fun b!4643290 () Bool)

(declare-fun e!2896602 () Bool)

(assert (=> b!4643290 (= e!2896601 e!2896602)))

(declare-fun res!1950503 () Bool)

(assert (=> b!4643290 (=> (not res!1950503) (not e!2896602))))

(assert (=> b!4643290 (= res!1950503 ((_ is Cons!51800) (t!359014 oldBucket!40)))))

(declare-fun b!4643291 () Bool)

(assert (=> b!4643291 (= e!2896602 (containsKey!2656 (t!359014 (t!359014 oldBucket!40)) key!4968))))

(assert (= (and d!1463999 (not res!1950502)) b!4643290))

(assert (= (and b!4643290 res!1950503) b!4643291))

(declare-fun m!5505991 () Bool)

(assert (=> b!4643291 m!5505991))

(assert (=> b!4643095 d!1463999))

(declare-fun d!1464001 () Bool)

(declare-fun lt!1807176 () Bool)

(declare-fun content!8959 (List!51925) (InoxSet tuple2!52872))

(assert (=> d!1464001 (= lt!1807176 (select (content!8959 lt!1806997) lt!1806996))))

(declare-fun e!2896607 () Bool)

(assert (=> d!1464001 (= lt!1807176 e!2896607)))

(declare-fun res!1950508 () Bool)

(assert (=> d!1464001 (=> (not res!1950508) (not e!2896607))))

(assert (=> d!1464001 (= res!1950508 ((_ is Cons!51801) lt!1806997))))

(assert (=> d!1464001 (= (contains!14943 lt!1806997 lt!1806996) lt!1807176)))

(declare-fun b!4643298 () Bool)

(declare-fun e!2896608 () Bool)

(assert (=> b!4643298 (= e!2896607 e!2896608)))

(declare-fun res!1950509 () Bool)

(assert (=> b!4643298 (=> res!1950509 e!2896608)))

(assert (=> b!4643298 (= res!1950509 (= (h!57917 lt!1806997) lt!1806996))))

(declare-fun b!4643299 () Bool)

(assert (=> b!4643299 (= e!2896608 (contains!14943 (t!359015 lt!1806997) lt!1806996))))

(assert (= (and d!1464001 res!1950508) b!4643298))

(assert (= (and b!4643298 (not res!1950509)) b!4643299))

(declare-fun m!5505993 () Bool)

(assert (=> d!1464001 m!5505993))

(declare-fun m!5505995 () Bool)

(assert (=> d!1464001 m!5505995))

(declare-fun m!5505997 () Bool)

(assert (=> b!4643299 m!5505997))

(assert (=> b!4643095 d!1464001))

(declare-fun d!1464003 () Bool)

(assert (=> d!1464003 (= (isDefined!9043 (getPair!366 lt!1807019 key!4968)) (not (isEmpty!28985 (getPair!366 lt!1807019 key!4968))))))

(declare-fun bs!1034823 () Bool)

(assert (= bs!1034823 d!1464003))

(assert (=> bs!1034823 m!5505743))

(declare-fun m!5505999 () Bool)

(assert (=> bs!1034823 m!5505999))

(assert (=> b!4643095 d!1464003))

(declare-fun d!1464005 () Bool)

(assert (=> d!1464005 (contains!14943 (toList!5157 lt!1807013) (tuple2!52873 lt!1806994 lt!1807019))))

(declare-fun lt!1807179 () Unit!115761)

(declare-fun choose!31840 (ListLongMap!3727 (_ BitVec 64) List!51924) Unit!115761)

(assert (=> d!1464005 (= lt!1807179 (choose!31840 lt!1807013 lt!1806994 lt!1807019))))

(assert (=> d!1464005 (contains!14944 lt!1807013 lt!1806994)))

(assert (=> d!1464005 (= (lemmaGetValueImpliesTupleContained!171 lt!1807013 lt!1806994 lt!1807019) lt!1807179)))

(declare-fun bs!1034824 () Bool)

(assert (= bs!1034824 d!1464005))

(declare-fun m!5506001 () Bool)

(assert (=> bs!1034824 m!5506001))

(declare-fun m!5506003 () Bool)

(assert (=> bs!1034824 m!5506003))

(assert (=> bs!1034824 m!5505755))

(assert (=> b!4643095 d!1464005))

(declare-fun bs!1034858 () Bool)

(declare-fun d!1464007 () Bool)

(assert (= bs!1034858 (and d!1464007 b!4643095)))

(declare-fun lambda!196825 () Int)

(assert (=> bs!1034858 (= lambda!196825 lambda!196762)))

(declare-fun bs!1034859 () Bool)

(assert (= bs!1034859 (and d!1464007 d!1463981)))

(assert (=> bs!1034859 (= lambda!196825 lambda!196775)))

(declare-fun bs!1034860 () Bool)

(assert (= bs!1034860 (and d!1464007 d!1463987)))

(assert (=> bs!1034860 (= lambda!196825 lambda!196781)))

(declare-fun b!4643343 () Bool)

(declare-fun res!1950539 () Bool)

(declare-fun e!2896632 () Bool)

(assert (=> b!4643343 (=> (not res!1950539) (not e!2896632))))

(assert (=> b!4643343 (= res!1950539 (contains!14945 (extractMap!1662 (toList!5157 lt!1807013)) key!4968))))

(assert (=> d!1464007 e!2896632))

(declare-fun res!1950540 () Bool)

(assert (=> d!1464007 (=> (not res!1950540) (not e!2896632))))

(assert (=> d!1464007 (= res!1950540 (forall!10959 (toList!5157 lt!1807013) lambda!196825))))

(declare-fun lt!1807269 () Unit!115761)

(declare-fun choose!31841 (ListLongMap!3727 K!13165 Hashable!6003) Unit!115761)

(assert (=> d!1464007 (= lt!1807269 (choose!31841 lt!1807013 key!4968 hashF!1389))))

(assert (=> d!1464007 (forall!10959 (toList!5157 lt!1807013) lambda!196825)))

(assert (=> d!1464007 (= (lemmaInGenMapThenGetPairDefined!162 lt!1807013 key!4968 hashF!1389) lt!1807269)))

(declare-fun b!4643344 () Bool)

(assert (=> b!4643344 (= e!2896632 (isDefined!9043 (getPair!366 (apply!12239 lt!1807013 (hash!3709 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1807270 () Unit!115761)

(assert (=> b!4643344 (= lt!1807270 (forallContained!3184 (toList!5157 lt!1807013) lambda!196825 (tuple2!52873 (hash!3709 hashF!1389 key!4968) (apply!12239 lt!1807013 (hash!3709 hashF!1389 key!4968)))))))

(declare-fun lt!1807267 () Unit!115761)

(declare-fun lt!1807264 () Unit!115761)

(assert (=> b!4643344 (= lt!1807267 lt!1807264)))

(declare-fun lt!1807263 () (_ BitVec 64))

(declare-fun lt!1807265 () List!51924)

(assert (=> b!4643344 (contains!14943 (toList!5157 lt!1807013) (tuple2!52873 lt!1807263 lt!1807265))))

(assert (=> b!4643344 (= lt!1807264 (lemmaGetValueImpliesTupleContained!171 lt!1807013 lt!1807263 lt!1807265))))

(declare-fun e!2896631 () Bool)

(assert (=> b!4643344 e!2896631))

(declare-fun res!1950538 () Bool)

(assert (=> b!4643344 (=> (not res!1950538) (not e!2896631))))

(assert (=> b!4643344 (= res!1950538 (contains!14944 lt!1807013 lt!1807263))))

(assert (=> b!4643344 (= lt!1807265 (apply!12239 lt!1807013 (hash!3709 hashF!1389 key!4968)))))

(assert (=> b!4643344 (= lt!1807263 (hash!3709 hashF!1389 key!4968))))

(declare-fun lt!1807266 () Unit!115761)

(declare-fun lt!1807268 () Unit!115761)

(assert (=> b!4643344 (= lt!1807266 lt!1807268)))

(assert (=> b!4643344 (contains!14944 lt!1807013 (hash!3709 hashF!1389 key!4968))))

(assert (=> b!4643344 (= lt!1807268 (lemmaInGenMapThenLongMapContainsHash!572 lt!1807013 key!4968 hashF!1389))))

(declare-fun b!4643345 () Bool)

(assert (=> b!4643345 (= e!2896631 (= (getValueByKey!1573 (toList!5157 lt!1807013) lt!1807263) (Some!11780 lt!1807265)))))

(declare-fun b!4643342 () Bool)

(declare-fun res!1950537 () Bool)

(assert (=> b!4643342 (=> (not res!1950537) (not e!2896632))))

(declare-fun allKeysSameHashInMap!1585 (ListLongMap!3727 Hashable!6003) Bool)

(assert (=> b!4643342 (= res!1950537 (allKeysSameHashInMap!1585 lt!1807013 hashF!1389))))

(assert (= (and d!1464007 res!1950540) b!4643342))

(assert (= (and b!4643342 res!1950537) b!4643343))

(assert (= (and b!4643343 res!1950539) b!4643344))

(assert (= (and b!4643344 res!1950538) b!4643345))

(declare-fun m!5506103 () Bool)

(assert (=> b!4643343 m!5506103))

(assert (=> b!4643343 m!5506103))

(declare-fun m!5506107 () Bool)

(assert (=> b!4643343 m!5506107))

(declare-fun m!5506111 () Bool)

(assert (=> d!1464007 m!5506111))

(declare-fun m!5506115 () Bool)

(assert (=> d!1464007 m!5506115))

(assert (=> d!1464007 m!5506111))

(declare-fun m!5506121 () Bool)

(assert (=> b!4643344 m!5506121))

(declare-fun m!5506125 () Bool)

(assert (=> b!4643344 m!5506125))

(assert (=> b!4643344 m!5505767))

(assert (=> b!4643344 m!5505955))

(assert (=> b!4643344 m!5505767))

(declare-fun m!5506129 () Bool)

(assert (=> b!4643344 m!5506129))

(assert (=> b!4643344 m!5506129))

(assert (=> b!4643344 m!5506121))

(assert (=> b!4643344 m!5505763))

(declare-fun m!5506131 () Bool)

(assert (=> b!4643344 m!5506131))

(declare-fun m!5506133 () Bool)

(assert (=> b!4643344 m!5506133))

(declare-fun m!5506135 () Bool)

(assert (=> b!4643344 m!5506135))

(assert (=> b!4643344 m!5505767))

(declare-fun m!5506137 () Bool)

(assert (=> b!4643344 m!5506137))

(declare-fun m!5506139 () Bool)

(assert (=> b!4643345 m!5506139))

(declare-fun m!5506141 () Bool)

(assert (=> b!4643342 m!5506141))

(assert (=> b!4643095 d!1464007))

(declare-fun d!1464027 () Bool)

(declare-fun get!17238 (Option!11781) List!51924)

(assert (=> d!1464027 (= (apply!12239 lt!1807013 lt!1806994) (get!17238 (getValueByKey!1573 (toList!5157 lt!1807013) lt!1806994)))))

(declare-fun bs!1034869 () Bool)

(assert (= bs!1034869 d!1464027))

(assert (=> bs!1034869 m!5505979))

(assert (=> bs!1034869 m!5505979))

(declare-fun m!5506143 () Bool)

(assert (=> bs!1034869 m!5506143))

(assert (=> b!4643095 d!1464027))

(declare-fun d!1464029 () Bool)

(declare-fun e!2896636 () Bool)

(assert (=> d!1464029 e!2896636))

(declare-fun res!1950545 () Bool)

(assert (=> d!1464029 (=> (not res!1950545) (not e!2896636))))

(declare-fun lt!1807292 () ListMap!4481)

(assert (=> d!1464029 (= res!1950545 (contains!14945 lt!1807292 (_1!29729 lt!1807006)))))

(declare-fun lt!1807293 () List!51924)

(assert (=> d!1464029 (= lt!1807292 (ListMap!4482 lt!1807293))))

(declare-fun lt!1807294 () Unit!115761)

(declare-fun lt!1807295 () Unit!115761)

(assert (=> d!1464029 (= lt!1807294 lt!1807295)))

(assert (=> d!1464029 (= (getValueByKey!1572 lt!1807293 (_1!29729 lt!1807006)) (Some!11779 (_2!29729 lt!1807006)))))

(assert (=> d!1464029 (= lt!1807295 (lemmaContainsTupThenGetReturnValue!905 lt!1807293 (_1!29729 lt!1807006) (_2!29729 lt!1807006)))))

(assert (=> d!1464029 (= lt!1807293 (insertNoDuplicatedKeys!413 (toList!5158 (addToMapMapFromBucket!1065 lt!1807001 (ListMap!4482 Nil!51800))) (_1!29729 lt!1807006) (_2!29729 lt!1807006)))))

(assert (=> d!1464029 (= (+!1956 (addToMapMapFromBucket!1065 lt!1807001 (ListMap!4482 Nil!51800)) lt!1807006) lt!1807292)))

(declare-fun b!4643351 () Bool)

(declare-fun res!1950544 () Bool)

(assert (=> b!4643351 (=> (not res!1950544) (not e!2896636))))

(assert (=> b!4643351 (= res!1950544 (= (getValueByKey!1572 (toList!5158 lt!1807292) (_1!29729 lt!1807006)) (Some!11779 (_2!29729 lt!1807006))))))

(declare-fun b!4643352 () Bool)

(assert (=> b!4643352 (= e!2896636 (contains!14947 (toList!5158 lt!1807292) lt!1807006))))

(assert (= (and d!1464029 res!1950545) b!4643351))

(assert (= (and b!4643351 res!1950544) b!4643352))

(declare-fun m!5506145 () Bool)

(assert (=> d!1464029 m!5506145))

(declare-fun m!5506147 () Bool)

(assert (=> d!1464029 m!5506147))

(declare-fun m!5506149 () Bool)

(assert (=> d!1464029 m!5506149))

(declare-fun m!5506151 () Bool)

(assert (=> d!1464029 m!5506151))

(declare-fun m!5506153 () Bool)

(assert (=> b!4643351 m!5506153))

(declare-fun m!5506155 () Bool)

(assert (=> b!4643352 m!5506155))

(assert (=> b!4643105 d!1464029))

(declare-fun bs!1034879 () Bool)

(declare-fun d!1464031 () Bool)

(assert (= bs!1034879 (and d!1464031 b!4643095)))

(declare-fun lambda!196828 () Int)

(assert (=> bs!1034879 (= lambda!196828 lambda!196762)))

(declare-fun bs!1034880 () Bool)

(assert (= bs!1034880 (and d!1464031 d!1463981)))

(assert (=> bs!1034880 (= lambda!196828 lambda!196775)))

(declare-fun bs!1034881 () Bool)

(assert (= bs!1034881 (and d!1464031 d!1463987)))

(assert (=> bs!1034881 (= lambda!196828 lambda!196781)))

(declare-fun bs!1034882 () Bool)

(assert (= bs!1034882 (and d!1464031 d!1464007)))

(assert (=> bs!1034882 (= lambda!196828 lambda!196825)))

(declare-fun lt!1807296 () ListMap!4481)

(assert (=> d!1464031 (invariantList!1270 (toList!5158 lt!1807296))))

(declare-fun e!2896637 () ListMap!4481)

(assert (=> d!1464031 (= lt!1807296 e!2896637)))

(declare-fun c!794535 () Bool)

(assert (=> d!1464031 (= c!794535 ((_ is Cons!51801) lt!1807021))))

(assert (=> d!1464031 (forall!10959 lt!1807021 lambda!196828)))

(assert (=> d!1464031 (= (extractMap!1662 lt!1807021) lt!1807296)))

(declare-fun b!4643353 () Bool)

(assert (=> b!4643353 (= e!2896637 (addToMapMapFromBucket!1065 (_2!29730 (h!57917 lt!1807021)) (extractMap!1662 (t!359015 lt!1807021))))))

(declare-fun b!4643354 () Bool)

(assert (=> b!4643354 (= e!2896637 (ListMap!4482 Nil!51800))))

(assert (= (and d!1464031 c!794535) b!4643353))

(assert (= (and d!1464031 (not c!794535)) b!4643354))

(declare-fun m!5506157 () Bool)

(assert (=> d!1464031 m!5506157))

(declare-fun m!5506159 () Bool)

(assert (=> d!1464031 m!5506159))

(declare-fun m!5506161 () Bool)

(assert (=> b!4643353 m!5506161))

(assert (=> b!4643353 m!5506161))

(declare-fun m!5506163 () Bool)

(assert (=> b!4643353 m!5506163))

(assert (=> b!4643105 d!1464031))

(declare-fun d!1464033 () Bool)

(assert (=> d!1464033 (eq!897 (addToMapMapFromBucket!1065 (Cons!51800 lt!1806992 lt!1806989) (ListMap!4482 Nil!51800)) (+!1956 (addToMapMapFromBucket!1065 lt!1806989 (ListMap!4482 Nil!51800)) lt!1806992))))

(declare-fun lt!1807320 () Unit!115761)

(declare-fun choose!31842 (tuple2!52870 List!51924 ListMap!4481) Unit!115761)

(assert (=> d!1464033 (= lt!1807320 (choose!31842 lt!1806992 lt!1806989 (ListMap!4482 Nil!51800)))))

(assert (=> d!1464033 (noDuplicateKeys!1606 lt!1806989)))

(assert (=> d!1464033 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!148 lt!1806992 lt!1806989 (ListMap!4482 Nil!51800)) lt!1807320)))

(declare-fun bs!1034916 () Bool)

(assert (= bs!1034916 d!1464033))

(assert (=> bs!1034916 m!5505905))

(declare-fun m!5506197 () Bool)

(assert (=> bs!1034916 m!5506197))

(assert (=> bs!1034916 m!5505681))

(assert (=> bs!1034916 m!5505697))

(assert (=> bs!1034916 m!5505677))

(assert (=> bs!1034916 m!5505697))

(assert (=> bs!1034916 m!5505699))

(assert (=> bs!1034916 m!5505681))

(assert (=> bs!1034916 m!5505677))

(assert (=> b!4643105 d!1464033))

(declare-fun bs!1035015 () Bool)

(declare-fun b!4643420 () Bool)

(assert (= bs!1035015 (and b!4643420 d!1463985)))

(declare-fun lambda!196878 () Int)

(assert (=> bs!1035015 (not (= lambda!196878 lambda!196778))))

(assert (=> b!4643420 true))

(declare-fun bs!1035016 () Bool)

(declare-fun b!4643421 () Bool)

(assert (= bs!1035016 (and b!4643421 d!1463985)))

(declare-fun lambda!196879 () Int)

(assert (=> bs!1035016 (not (= lambda!196879 lambda!196778))))

(declare-fun bs!1035017 () Bool)

(assert (= bs!1035017 (and b!4643421 b!4643420)))

(assert (=> bs!1035017 (= lambda!196879 lambda!196878)))

(assert (=> b!4643421 true))

(declare-fun lambda!196880 () Int)

(assert (=> bs!1035016 (not (= lambda!196880 lambda!196778))))

(declare-fun lt!1807459 () ListMap!4481)

(assert (=> bs!1035017 (= (= lt!1807459 (ListMap!4482 Nil!51800)) (= lambda!196880 lambda!196878))))

(assert (=> b!4643421 (= (= lt!1807459 (ListMap!4482 Nil!51800)) (= lambda!196880 lambda!196879))))

(assert (=> b!4643421 true))

(declare-fun bs!1035018 () Bool)

(declare-fun d!1464037 () Bool)

(assert (= bs!1035018 (and d!1464037 d!1463985)))

(declare-fun lambda!196883 () Int)

(assert (=> bs!1035018 (not (= lambda!196883 lambda!196778))))

(declare-fun bs!1035019 () Bool)

(assert (= bs!1035019 (and d!1464037 b!4643420)))

(declare-fun lt!1807467 () ListMap!4481)

(assert (=> bs!1035019 (= (= lt!1807467 (ListMap!4482 Nil!51800)) (= lambda!196883 lambda!196878))))

(declare-fun bs!1035020 () Bool)

(assert (= bs!1035020 (and d!1464037 b!4643421)))

(assert (=> bs!1035020 (= (= lt!1807467 (ListMap!4482 Nil!51800)) (= lambda!196883 lambda!196879))))

(assert (=> bs!1035020 (= (= lt!1807467 lt!1807459) (= lambda!196883 lambda!196880))))

(assert (=> d!1464037 true))

(declare-fun b!4643417 () Bool)

(declare-fun e!2896673 () Bool)

(assert (=> b!4643417 (= e!2896673 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) lambda!196880))))

(declare-fun call!324179 () Bool)

(declare-fun bm!324173 () Bool)

(declare-fun c!794546 () Bool)

(assert (=> bm!324173 (= call!324179 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) (ite c!794546 lambda!196878 lambda!196880)))))

(declare-fun bm!324174 () Bool)

(declare-fun call!324178 () Unit!115761)

(declare-fun lemmaContainsAllItsOwnKeys!572 (ListMap!4481) Unit!115761)

(assert (=> bm!324174 (= call!324178 (lemmaContainsAllItsOwnKeys!572 (ListMap!4482 Nil!51800)))))

(declare-fun b!4643418 () Bool)

(declare-fun e!2896674 () Bool)

(assert (=> b!4643418 (= e!2896674 (invariantList!1270 (toList!5158 lt!1807467)))))

(declare-fun b!4643419 () Bool)

(declare-fun res!1950587 () Bool)

(assert (=> b!4643419 (=> (not res!1950587) (not e!2896674))))

(assert (=> b!4643419 (= res!1950587 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) lambda!196883))))

(declare-fun e!2896675 () ListMap!4481)

(assert (=> b!4643420 (= e!2896675 (ListMap!4482 Nil!51800))))

(declare-fun lt!1807469 () Unit!115761)

(assert (=> b!4643420 (= lt!1807469 call!324178)))

(assert (=> b!4643420 call!324179))

(declare-fun lt!1807464 () Unit!115761)

(assert (=> b!4643420 (= lt!1807464 lt!1807469)))

(declare-fun call!324180 () Bool)

(assert (=> b!4643420 call!324180))

(declare-fun lt!1807454 () Unit!115761)

(declare-fun Unit!115803 () Unit!115761)

(assert (=> b!4643420 (= lt!1807454 Unit!115803)))

(assert (=> b!4643421 (= e!2896675 lt!1807459)))

(declare-fun lt!1807465 () ListMap!4481)

(assert (=> b!4643421 (= lt!1807465 (+!1956 (ListMap!4482 Nil!51800) (h!57916 lt!1806989)))))

(assert (=> b!4643421 (= lt!1807459 (addToMapMapFromBucket!1065 (t!359014 lt!1806989) (+!1956 (ListMap!4482 Nil!51800) (h!57916 lt!1806989))))))

(declare-fun lt!1807472 () Unit!115761)

(assert (=> b!4643421 (= lt!1807472 call!324178)))

(assert (=> b!4643421 call!324180))

(declare-fun lt!1807455 () Unit!115761)

(assert (=> b!4643421 (= lt!1807455 lt!1807472)))

(assert (=> b!4643421 (forall!10960 (toList!5158 lt!1807465) lambda!196880)))

(declare-fun lt!1807466 () Unit!115761)

(declare-fun Unit!115804 () Unit!115761)

(assert (=> b!4643421 (= lt!1807466 Unit!115804)))

(assert (=> b!4643421 (forall!10960 (t!359014 lt!1806989) lambda!196880)))

(declare-fun lt!1807452 () Unit!115761)

(declare-fun Unit!115805 () Unit!115761)

(assert (=> b!4643421 (= lt!1807452 Unit!115805)))

(declare-fun lt!1807457 () Unit!115761)

(declare-fun Unit!115806 () Unit!115761)

(assert (=> b!4643421 (= lt!1807457 Unit!115806)))

(declare-fun lt!1807458 () Unit!115761)

(declare-fun forallContained!3186 (List!51924 Int tuple2!52870) Unit!115761)

(assert (=> b!4643421 (= lt!1807458 (forallContained!3186 (toList!5158 lt!1807465) lambda!196880 (h!57916 lt!1806989)))))

(assert (=> b!4643421 (contains!14945 lt!1807465 (_1!29729 (h!57916 lt!1806989)))))

(declare-fun lt!1807453 () Unit!115761)

(declare-fun Unit!115807 () Unit!115761)

(assert (=> b!4643421 (= lt!1807453 Unit!115807)))

(assert (=> b!4643421 (contains!14945 lt!1807459 (_1!29729 (h!57916 lt!1806989)))))

(declare-fun lt!1807461 () Unit!115761)

(declare-fun Unit!115808 () Unit!115761)

(assert (=> b!4643421 (= lt!1807461 Unit!115808)))

(assert (=> b!4643421 (forall!10960 lt!1806989 lambda!196880)))

(declare-fun lt!1807463 () Unit!115761)

(declare-fun Unit!115809 () Unit!115761)

(assert (=> b!4643421 (= lt!1807463 Unit!115809)))

(assert (=> b!4643421 (forall!10960 (toList!5158 lt!1807465) lambda!196880)))

(declare-fun lt!1807470 () Unit!115761)

(declare-fun Unit!115810 () Unit!115761)

(assert (=> b!4643421 (= lt!1807470 Unit!115810)))

(declare-fun lt!1807456 () Unit!115761)

(declare-fun Unit!115811 () Unit!115761)

(assert (=> b!4643421 (= lt!1807456 Unit!115811)))

(declare-fun lt!1807460 () Unit!115761)

(declare-fun addForallContainsKeyThenBeforeAdding!571 (ListMap!4481 ListMap!4481 K!13165 V!13411) Unit!115761)

(assert (=> b!4643421 (= lt!1807460 (addForallContainsKeyThenBeforeAdding!571 (ListMap!4482 Nil!51800) lt!1807459 (_1!29729 (h!57916 lt!1806989)) (_2!29729 (h!57916 lt!1806989))))))

(assert (=> b!4643421 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) lambda!196880)))

(declare-fun lt!1807468 () Unit!115761)

(assert (=> b!4643421 (= lt!1807468 lt!1807460)))

(assert (=> b!4643421 call!324179))

(declare-fun lt!1807462 () Unit!115761)

(declare-fun Unit!115812 () Unit!115761)

(assert (=> b!4643421 (= lt!1807462 Unit!115812)))

(declare-fun res!1950589 () Bool)

(assert (=> b!4643421 (= res!1950589 (forall!10960 lt!1806989 lambda!196880))))

(assert (=> b!4643421 (=> (not res!1950589) (not e!2896673))))

(assert (=> b!4643421 e!2896673))

(declare-fun lt!1807471 () Unit!115761)

(declare-fun Unit!115813 () Unit!115761)

(assert (=> b!4643421 (= lt!1807471 Unit!115813)))

(assert (=> d!1464037 e!2896674))

(declare-fun res!1950588 () Bool)

(assert (=> d!1464037 (=> (not res!1950588) (not e!2896674))))

(assert (=> d!1464037 (= res!1950588 (forall!10960 lt!1806989 lambda!196883))))

(assert (=> d!1464037 (= lt!1807467 e!2896675)))

(assert (=> d!1464037 (= c!794546 ((_ is Nil!51800) lt!1806989))))

(assert (=> d!1464037 (noDuplicateKeys!1606 lt!1806989)))

(assert (=> d!1464037 (= (addToMapMapFromBucket!1065 lt!1806989 (ListMap!4482 Nil!51800)) lt!1807467)))

(declare-fun bm!324175 () Bool)

(assert (=> bm!324175 (= call!324180 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) (ite c!794546 lambda!196878 lambda!196879)))))

(assert (= (and d!1464037 c!794546) b!4643420))

(assert (= (and d!1464037 (not c!794546)) b!4643421))

(assert (= (and b!4643421 res!1950589) b!4643417))

(assert (= (or b!4643420 b!4643421) bm!324174))

(assert (= (or b!4643420 b!4643421) bm!324173))

(assert (= (or b!4643420 b!4643421) bm!324175))

(assert (= (and d!1464037 res!1950588) b!4643419))

(assert (= (and b!4643419 res!1950587) b!4643418))

(declare-fun m!5506479 () Bool)

(assert (=> b!4643421 m!5506479))

(declare-fun m!5506481 () Bool)

(assert (=> b!4643421 m!5506481))

(declare-fun m!5506483 () Bool)

(assert (=> b!4643421 m!5506483))

(declare-fun m!5506485 () Bool)

(assert (=> b!4643421 m!5506485))

(declare-fun m!5506487 () Bool)

(assert (=> b!4643421 m!5506487))

(declare-fun m!5506491 () Bool)

(assert (=> b!4643421 m!5506491))

(declare-fun m!5506495 () Bool)

(assert (=> b!4643421 m!5506495))

(assert (=> b!4643421 m!5506491))

(declare-fun m!5506497 () Bool)

(assert (=> b!4643421 m!5506497))

(assert (=> b!4643421 m!5506495))

(declare-fun m!5506499 () Bool)

(assert (=> b!4643421 m!5506499))

(declare-fun m!5506501 () Bool)

(assert (=> b!4643421 m!5506501))

(assert (=> b!4643421 m!5506481))

(declare-fun m!5506503 () Bool)

(assert (=> bm!324173 m!5506503))

(declare-fun m!5506505 () Bool)

(assert (=> d!1464037 m!5506505))

(assert (=> d!1464037 m!5505905))

(assert (=> b!4643417 m!5506483))

(declare-fun m!5506507 () Bool)

(assert (=> bm!324175 m!5506507))

(declare-fun m!5506509 () Bool)

(assert (=> b!4643418 m!5506509))

(declare-fun m!5506511 () Bool)

(assert (=> b!4643419 m!5506511))

(declare-fun m!5506513 () Bool)

(assert (=> bm!324174 m!5506513))

(assert (=> b!4643105 d!1464037))

(declare-fun d!1464097 () Bool)

(assert (=> d!1464097 (= (head!9716 oldBucket!40) (h!57916 oldBucket!40))))

(assert (=> b!4643105 d!1464097))

(declare-fun d!1464099 () Bool)

(assert (=> d!1464099 (= (eq!897 lt!1806998 (+!1956 (extractMap!1662 (Cons!51801 (tuple2!52873 hash!414 lt!1806989) Nil!51801)) (h!57916 oldBucket!40))) (= (content!8958 (toList!5158 lt!1806998)) (content!8958 (toList!5158 (+!1956 (extractMap!1662 (Cons!51801 (tuple2!52873 hash!414 lt!1806989) Nil!51801)) (h!57916 oldBucket!40))))))))

(declare-fun bs!1035031 () Bool)

(assert (= bs!1035031 d!1464099))

(declare-fun m!5506515 () Bool)

(assert (=> bs!1035031 m!5506515))

(declare-fun m!5506517 () Bool)

(assert (=> bs!1035031 m!5506517))

(assert (=> b!4643105 d!1464099))

(declare-fun d!1464101 () Bool)

(assert (=> d!1464101 (= (head!9716 newBucket!224) (h!57916 newBucket!224))))

(assert (=> b!4643105 d!1464101))

(declare-fun bs!1035034 () Bool)

(declare-fun d!1464103 () Bool)

(assert (= bs!1035034 (and d!1464103 d!1463987)))

(declare-fun lambda!196887 () Int)

(assert (=> bs!1035034 (= lambda!196887 lambda!196781)))

(declare-fun bs!1035035 () Bool)

(assert (= bs!1035035 (and d!1464103 b!4643095)))

(assert (=> bs!1035035 (= lambda!196887 lambda!196762)))

(declare-fun bs!1035036 () Bool)

(assert (= bs!1035036 (and d!1464103 d!1463981)))

(assert (=> bs!1035036 (= lambda!196887 lambda!196775)))

(declare-fun bs!1035037 () Bool)

(assert (= bs!1035037 (and d!1464103 d!1464031)))

(assert (=> bs!1035037 (= lambda!196887 lambda!196828)))

(declare-fun bs!1035038 () Bool)

(assert (= bs!1035038 (and d!1464103 d!1464007)))

(assert (=> bs!1035038 (= lambda!196887 lambda!196825)))

(assert (=> d!1464103 (contains!14945 (extractMap!1662 (toList!5157 (ListLongMap!3728 lt!1807021))) key!4968)))

(declare-fun lt!1807493 () Unit!115761)

(declare-fun choose!31843 (ListLongMap!3727 K!13165 Hashable!6003) Unit!115761)

(assert (=> d!1464103 (= lt!1807493 (choose!31843 (ListLongMap!3728 lt!1807021) key!4968 hashF!1389))))

(assert (=> d!1464103 (forall!10959 (toList!5157 (ListLongMap!3728 lt!1807021)) lambda!196887)))

(assert (=> d!1464103 (= (lemmaListContainsThenExtractedMapContains!384 (ListLongMap!3728 lt!1807021) key!4968 hashF!1389) lt!1807493)))

(declare-fun bs!1035039 () Bool)

(assert (= bs!1035039 d!1464103))

(declare-fun m!5506533 () Bool)

(assert (=> bs!1035039 m!5506533))

(assert (=> bs!1035039 m!5506533))

(declare-fun m!5506535 () Bool)

(assert (=> bs!1035039 m!5506535))

(declare-fun m!5506537 () Bool)

(assert (=> bs!1035039 m!5506537))

(declare-fun m!5506539 () Bool)

(assert (=> bs!1035039 m!5506539))

(assert (=> b!4643105 d!1464103))

(declare-fun d!1464113 () Bool)

(declare-fun e!2896692 () Bool)

(assert (=> d!1464113 e!2896692))

(declare-fun res!1950604 () Bool)

(assert (=> d!1464113 (=> (not res!1950604) (not e!2896692))))

(declare-fun lt!1807496 () ListMap!4481)

(assert (=> d!1464113 (= res!1950604 (contains!14945 lt!1807496 (_1!29729 (h!57916 oldBucket!40))))))

(declare-fun lt!1807497 () List!51924)

(assert (=> d!1464113 (= lt!1807496 (ListMap!4482 lt!1807497))))

(declare-fun lt!1807498 () Unit!115761)

(declare-fun lt!1807499 () Unit!115761)

(assert (=> d!1464113 (= lt!1807498 lt!1807499)))

(assert (=> d!1464113 (= (getValueByKey!1572 lt!1807497 (_1!29729 (h!57916 oldBucket!40))) (Some!11779 (_2!29729 (h!57916 oldBucket!40))))))

(assert (=> d!1464113 (= lt!1807499 (lemmaContainsTupThenGetReturnValue!905 lt!1807497 (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40))))))

(assert (=> d!1464113 (= lt!1807497 (insertNoDuplicatedKeys!413 (toList!5158 (extractMap!1662 (Cons!51801 (tuple2!52873 hash!414 lt!1806989) Nil!51801))) (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40))))))

(assert (=> d!1464113 (= (+!1956 (extractMap!1662 (Cons!51801 (tuple2!52873 hash!414 lt!1806989) Nil!51801)) (h!57916 oldBucket!40)) lt!1807496)))

(declare-fun b!4643443 () Bool)

(declare-fun res!1950603 () Bool)

(assert (=> b!4643443 (=> (not res!1950603) (not e!2896692))))

(assert (=> b!4643443 (= res!1950603 (= (getValueByKey!1572 (toList!5158 lt!1807496) (_1!29729 (h!57916 oldBucket!40))) (Some!11779 (_2!29729 (h!57916 oldBucket!40)))))))

(declare-fun b!4643444 () Bool)

(assert (=> b!4643444 (= e!2896692 (contains!14947 (toList!5158 lt!1807496) (h!57916 oldBucket!40)))))

(assert (= (and d!1464113 res!1950604) b!4643443))

(assert (= (and b!4643443 res!1950603) b!4643444))

(declare-fun m!5506541 () Bool)

(assert (=> d!1464113 m!5506541))

(declare-fun m!5506543 () Bool)

(assert (=> d!1464113 m!5506543))

(declare-fun m!5506545 () Bool)

(assert (=> d!1464113 m!5506545))

(declare-fun m!5506547 () Bool)

(assert (=> d!1464113 m!5506547))

(declare-fun m!5506549 () Bool)

(assert (=> b!4643443 m!5506549))

(declare-fun m!5506551 () Bool)

(assert (=> b!4643444 m!5506551))

(assert (=> b!4643105 d!1464113))

(declare-fun bm!324176 () Bool)

(declare-fun call!324181 () Bool)

(declare-fun e!2896695 () List!51927)

(assert (=> bm!324176 (= call!324181 (contains!14948 e!2896695 key!4968))))

(declare-fun c!794551 () Bool)

(declare-fun c!794550 () Bool)

(assert (=> bm!324176 (= c!794551 c!794550)))

(declare-fun b!4643446 () Bool)

(assert (=> b!4643446 (= e!2896695 (keys!18320 lt!1807018))))

(declare-fun b!4643447 () Bool)

(declare-fun e!2896693 () Bool)

(assert (=> b!4643447 (= e!2896693 (contains!14948 (keys!18320 lt!1807018) key!4968))))

(declare-fun b!4643448 () Bool)

(declare-fun e!2896696 () Unit!115761)

(declare-fun e!2896698 () Unit!115761)

(assert (=> b!4643448 (= e!2896696 e!2896698)))

(declare-fun c!794552 () Bool)

(assert (=> b!4643448 (= c!794552 call!324181)))

(declare-fun b!4643449 () Bool)

(assert (=> b!4643449 false))

(declare-fun lt!1807506 () Unit!115761)

(declare-fun lt!1807505 () Unit!115761)

(assert (=> b!4643449 (= lt!1807506 lt!1807505)))

(assert (=> b!4643449 (containsKey!2658 (toList!5158 lt!1807018) key!4968)))

(assert (=> b!4643449 (= lt!1807505 (lemmaInGetKeysListThenContainsKey!720 (toList!5158 lt!1807018) key!4968))))

(declare-fun Unit!115825 () Unit!115761)

(assert (=> b!4643449 (= e!2896698 Unit!115825)))

(declare-fun b!4643450 () Bool)

(declare-fun e!2896697 () Bool)

(assert (=> b!4643450 (= e!2896697 e!2896693)))

(declare-fun res!1950607 () Bool)

(assert (=> b!4643450 (=> (not res!1950607) (not e!2896693))))

(assert (=> b!4643450 (= res!1950607 (isDefined!9045 (getValueByKey!1572 (toList!5158 lt!1807018) key!4968)))))

(declare-fun b!4643451 () Bool)

(declare-fun e!2896694 () Bool)

(assert (=> b!4643451 (= e!2896694 (not (contains!14948 (keys!18320 lt!1807018) key!4968)))))

(declare-fun b!4643452 () Bool)

(assert (=> b!4643452 (= e!2896695 (getKeysList!721 (toList!5158 lt!1807018)))))

(declare-fun b!4643453 () Bool)

(declare-fun lt!1807503 () Unit!115761)

(assert (=> b!4643453 (= e!2896696 lt!1807503)))

(declare-fun lt!1807500 () Unit!115761)

(assert (=> b!4643453 (= lt!1807500 (lemmaContainsKeyImpliesGetValueByKeyDefined!1474 (toList!5158 lt!1807018) key!4968))))

(assert (=> b!4643453 (isDefined!9045 (getValueByKey!1572 (toList!5158 lt!1807018) key!4968))))

(declare-fun lt!1807502 () Unit!115761)

(assert (=> b!4643453 (= lt!1807502 lt!1807500)))

(assert (=> b!4643453 (= lt!1807503 (lemmaInListThenGetKeysListContains!716 (toList!5158 lt!1807018) key!4968))))

(assert (=> b!4643453 call!324181))

(declare-fun d!1464115 () Bool)

(assert (=> d!1464115 e!2896697))

(declare-fun res!1950605 () Bool)

(assert (=> d!1464115 (=> res!1950605 e!2896697)))

(assert (=> d!1464115 (= res!1950605 e!2896694)))

(declare-fun res!1950606 () Bool)

(assert (=> d!1464115 (=> (not res!1950606) (not e!2896694))))

(declare-fun lt!1807507 () Bool)

(assert (=> d!1464115 (= res!1950606 (not lt!1807507))))

(declare-fun lt!1807501 () Bool)

(assert (=> d!1464115 (= lt!1807507 lt!1807501)))

(declare-fun lt!1807504 () Unit!115761)

(assert (=> d!1464115 (= lt!1807504 e!2896696)))

(assert (=> d!1464115 (= c!794550 lt!1807501)))

(assert (=> d!1464115 (= lt!1807501 (containsKey!2658 (toList!5158 lt!1807018) key!4968))))

(assert (=> d!1464115 (= (contains!14945 lt!1807018 key!4968) lt!1807507)))

(declare-fun b!4643445 () Bool)

(declare-fun Unit!115826 () Unit!115761)

(assert (=> b!4643445 (= e!2896698 Unit!115826)))

(assert (= (and d!1464115 c!794550) b!4643453))

(assert (= (and d!1464115 (not c!794550)) b!4643448))

(assert (= (and b!4643448 c!794552) b!4643449))

(assert (= (and b!4643448 (not c!794552)) b!4643445))

(assert (= (or b!4643453 b!4643448) bm!324176))

(assert (= (and bm!324176 c!794551) b!4643452))

(assert (= (and bm!324176 (not c!794551)) b!4643446))

(assert (= (and d!1464115 res!1950606) b!4643451))

(assert (= (and d!1464115 (not res!1950605)) b!4643450))

(assert (= (and b!4643450 res!1950607) b!4643447))

(declare-fun m!5506559 () Bool)

(assert (=> b!4643453 m!5506559))

(declare-fun m!5506561 () Bool)

(assert (=> b!4643453 m!5506561))

(assert (=> b!4643453 m!5506561))

(declare-fun m!5506563 () Bool)

(assert (=> b!4643453 m!5506563))

(declare-fun m!5506565 () Bool)

(assert (=> b!4643453 m!5506565))

(declare-fun m!5506567 () Bool)

(assert (=> d!1464115 m!5506567))

(declare-fun m!5506569 () Bool)

(assert (=> bm!324176 m!5506569))

(declare-fun m!5506571 () Bool)

(assert (=> b!4643452 m!5506571))

(declare-fun m!5506573 () Bool)

(assert (=> b!4643451 m!5506573))

(assert (=> b!4643451 m!5506573))

(declare-fun m!5506575 () Bool)

(assert (=> b!4643451 m!5506575))

(assert (=> b!4643450 m!5506561))

(assert (=> b!4643450 m!5506561))

(assert (=> b!4643450 m!5506563))

(assert (=> b!4643446 m!5506573))

(assert (=> b!4643447 m!5506573))

(assert (=> b!4643447 m!5506573))

(assert (=> b!4643447 m!5506575))

(assert (=> b!4643449 m!5506567))

(declare-fun m!5506577 () Bool)

(assert (=> b!4643449 m!5506577))

(assert (=> b!4643105 d!1464115))

(declare-fun bs!1035040 () Bool)

(declare-fun d!1464119 () Bool)

(assert (= bs!1035040 (and d!1464119 d!1463987)))

(declare-fun lambda!196888 () Int)

(assert (=> bs!1035040 (= lambda!196888 lambda!196781)))

(declare-fun bs!1035041 () Bool)

(assert (= bs!1035041 (and d!1464119 b!4643095)))

(assert (=> bs!1035041 (= lambda!196888 lambda!196762)))

(declare-fun bs!1035042 () Bool)

(assert (= bs!1035042 (and d!1464119 d!1463981)))

(assert (=> bs!1035042 (= lambda!196888 lambda!196775)))

(declare-fun bs!1035043 () Bool)

(assert (= bs!1035043 (and d!1464119 d!1464031)))

(assert (=> bs!1035043 (= lambda!196888 lambda!196828)))

(declare-fun bs!1035044 () Bool)

(assert (= bs!1035044 (and d!1464119 d!1464007)))

(assert (=> bs!1035044 (= lambda!196888 lambda!196825)))

(declare-fun bs!1035045 () Bool)

(assert (= bs!1035045 (and d!1464119 d!1464103)))

(assert (=> bs!1035045 (= lambda!196888 lambda!196887)))

(declare-fun lt!1807509 () ListMap!4481)

(assert (=> d!1464119 (invariantList!1270 (toList!5158 lt!1807509))))

(declare-fun e!2896701 () ListMap!4481)

(assert (=> d!1464119 (= lt!1807509 e!2896701)))

(declare-fun c!794553 () Bool)

(assert (=> d!1464119 (= c!794553 ((_ is Cons!51801) (Cons!51801 (tuple2!52873 hash!414 lt!1806989) Nil!51801)))))

(assert (=> d!1464119 (forall!10959 (Cons!51801 (tuple2!52873 hash!414 lt!1806989) Nil!51801) lambda!196888)))

(assert (=> d!1464119 (= (extractMap!1662 (Cons!51801 (tuple2!52873 hash!414 lt!1806989) Nil!51801)) lt!1807509)))

(declare-fun b!4643456 () Bool)

(assert (=> b!4643456 (= e!2896701 (addToMapMapFromBucket!1065 (_2!29730 (h!57917 (Cons!51801 (tuple2!52873 hash!414 lt!1806989) Nil!51801))) (extractMap!1662 (t!359015 (Cons!51801 (tuple2!52873 hash!414 lt!1806989) Nil!51801)))))))

(declare-fun b!4643457 () Bool)

(assert (=> b!4643457 (= e!2896701 (ListMap!4482 Nil!51800))))

(assert (= (and d!1464119 c!794553) b!4643456))

(assert (= (and d!1464119 (not c!794553)) b!4643457))

(declare-fun m!5506579 () Bool)

(assert (=> d!1464119 m!5506579))

(declare-fun m!5506581 () Bool)

(assert (=> d!1464119 m!5506581))

(declare-fun m!5506583 () Bool)

(assert (=> b!4643456 m!5506583))

(assert (=> b!4643456 m!5506583))

(declare-fun m!5506585 () Bool)

(assert (=> b!4643456 m!5506585))

(assert (=> b!4643105 d!1464119))

(declare-fun d!1464121 () Bool)

(declare-fun e!2896704 () Bool)

(assert (=> d!1464121 e!2896704))

(declare-fun res!1950613 () Bool)

(assert (=> d!1464121 (=> (not res!1950613) (not e!2896704))))

(declare-fun lt!1807512 () ListMap!4481)

(assert (=> d!1464121 (= res!1950613 (contains!14945 lt!1807512 (_1!29729 lt!1806992)))))

(declare-fun lt!1807513 () List!51924)

(assert (=> d!1464121 (= lt!1807512 (ListMap!4482 lt!1807513))))

(declare-fun lt!1807514 () Unit!115761)

(declare-fun lt!1807515 () Unit!115761)

(assert (=> d!1464121 (= lt!1807514 lt!1807515)))

(assert (=> d!1464121 (= (getValueByKey!1572 lt!1807513 (_1!29729 lt!1806992)) (Some!11779 (_2!29729 lt!1806992)))))

(assert (=> d!1464121 (= lt!1807515 (lemmaContainsTupThenGetReturnValue!905 lt!1807513 (_1!29729 lt!1806992) (_2!29729 lt!1806992)))))

(assert (=> d!1464121 (= lt!1807513 (insertNoDuplicatedKeys!413 (toList!5158 (addToMapMapFromBucket!1065 lt!1806989 (ListMap!4482 Nil!51800))) (_1!29729 lt!1806992) (_2!29729 lt!1806992)))))

(assert (=> d!1464121 (= (+!1956 (addToMapMapFromBucket!1065 lt!1806989 (ListMap!4482 Nil!51800)) lt!1806992) lt!1807512)))

(declare-fun b!4643460 () Bool)

(declare-fun res!1950612 () Bool)

(assert (=> b!4643460 (=> (not res!1950612) (not e!2896704))))

(assert (=> b!4643460 (= res!1950612 (= (getValueByKey!1572 (toList!5158 lt!1807512) (_1!29729 lt!1806992)) (Some!11779 (_2!29729 lt!1806992))))))

(declare-fun b!4643461 () Bool)

(assert (=> b!4643461 (= e!2896704 (contains!14947 (toList!5158 lt!1807512) lt!1806992))))

(assert (= (and d!1464121 res!1950613) b!4643460))

(assert (= (and b!4643460 res!1950612) b!4643461))

(declare-fun m!5506587 () Bool)

(assert (=> d!1464121 m!5506587))

(declare-fun m!5506589 () Bool)

(assert (=> d!1464121 m!5506589))

(declare-fun m!5506591 () Bool)

(assert (=> d!1464121 m!5506591))

(declare-fun m!5506593 () Bool)

(assert (=> d!1464121 m!5506593))

(declare-fun m!5506595 () Bool)

(assert (=> b!4643460 m!5506595))

(declare-fun m!5506597 () Bool)

(assert (=> b!4643461 m!5506597))

(assert (=> b!4643105 d!1464121))

(declare-fun d!1464123 () Bool)

(assert (=> d!1464123 (= (eq!897 (addToMapMapFromBucket!1065 (Cons!51800 lt!1807006 lt!1807001) (ListMap!4482 Nil!51800)) (+!1956 (addToMapMapFromBucket!1065 lt!1807001 (ListMap!4482 Nil!51800)) lt!1807006)) (= (content!8958 (toList!5158 (addToMapMapFromBucket!1065 (Cons!51800 lt!1807006 lt!1807001) (ListMap!4482 Nil!51800)))) (content!8958 (toList!5158 (+!1956 (addToMapMapFromBucket!1065 lt!1807001 (ListMap!4482 Nil!51800)) lt!1807006)))))))

(declare-fun bs!1035046 () Bool)

(assert (= bs!1035046 d!1464123))

(declare-fun m!5506601 () Bool)

(assert (=> bs!1035046 m!5506601))

(declare-fun m!5506607 () Bool)

(assert (=> bs!1035046 m!5506607))

(assert (=> b!4643105 d!1464123))

(declare-fun bs!1035047 () Bool)

(declare-fun b!4643468 () Bool)

(assert (= bs!1035047 (and b!4643468 b!4643421)))

(declare-fun lambda!196889 () Int)

(assert (=> bs!1035047 (= lambda!196889 lambda!196879)))

(assert (=> bs!1035047 (= (= (ListMap!4482 Nil!51800) lt!1807459) (= lambda!196889 lambda!196880))))

(declare-fun bs!1035048 () Bool)

(assert (= bs!1035048 (and b!4643468 b!4643420)))

(assert (=> bs!1035048 (= lambda!196889 lambda!196878)))

(declare-fun bs!1035049 () Bool)

(assert (= bs!1035049 (and b!4643468 d!1464037)))

(assert (=> bs!1035049 (= (= (ListMap!4482 Nil!51800) lt!1807467) (= lambda!196889 lambda!196883))))

(declare-fun bs!1035050 () Bool)

(assert (= bs!1035050 (and b!4643468 d!1463985)))

(assert (=> bs!1035050 (not (= lambda!196889 lambda!196778))))

(assert (=> b!4643468 true))

(declare-fun bs!1035051 () Bool)

(declare-fun b!4643469 () Bool)

(assert (= bs!1035051 (and b!4643469 b!4643421)))

(declare-fun lambda!196890 () Int)

(assert (=> bs!1035051 (= lambda!196890 lambda!196879)))

(declare-fun bs!1035052 () Bool)

(assert (= bs!1035052 (and b!4643469 b!4643468)))

(assert (=> bs!1035052 (= lambda!196890 lambda!196889)))

(assert (=> bs!1035051 (= (= (ListMap!4482 Nil!51800) lt!1807459) (= lambda!196890 lambda!196880))))

(declare-fun bs!1035053 () Bool)

(assert (= bs!1035053 (and b!4643469 b!4643420)))

(assert (=> bs!1035053 (= lambda!196890 lambda!196878)))

(declare-fun bs!1035054 () Bool)

(assert (= bs!1035054 (and b!4643469 d!1464037)))

(assert (=> bs!1035054 (= (= (ListMap!4482 Nil!51800) lt!1807467) (= lambda!196890 lambda!196883))))

(declare-fun bs!1035055 () Bool)

(assert (= bs!1035055 (and b!4643469 d!1463985)))

(assert (=> bs!1035055 (not (= lambda!196890 lambda!196778))))

(assert (=> b!4643469 true))

(declare-fun lt!1807524 () ListMap!4481)

(declare-fun lambda!196891 () Int)

(assert (=> bs!1035051 (= (= lt!1807524 (ListMap!4482 Nil!51800)) (= lambda!196891 lambda!196879))))

(assert (=> bs!1035052 (= (= lt!1807524 (ListMap!4482 Nil!51800)) (= lambda!196891 lambda!196889))))

(assert (=> bs!1035051 (= (= lt!1807524 lt!1807459) (= lambda!196891 lambda!196880))))

(assert (=> bs!1035053 (= (= lt!1807524 (ListMap!4482 Nil!51800)) (= lambda!196891 lambda!196878))))

(assert (=> b!4643469 (= (= lt!1807524 (ListMap!4482 Nil!51800)) (= lambda!196891 lambda!196890))))

(assert (=> bs!1035054 (= (= lt!1807524 lt!1807467) (= lambda!196891 lambda!196883))))

(assert (=> bs!1035055 (not (= lambda!196891 lambda!196778))))

(assert (=> b!4643469 true))

(declare-fun bs!1035056 () Bool)

(declare-fun d!1464125 () Bool)

(assert (= bs!1035056 (and d!1464125 b!4643421)))

(declare-fun lt!1807532 () ListMap!4481)

(declare-fun lambda!196892 () Int)

(assert (=> bs!1035056 (= (= lt!1807532 (ListMap!4482 Nil!51800)) (= lambda!196892 lambda!196879))))

(declare-fun bs!1035057 () Bool)

(assert (= bs!1035057 (and d!1464125 b!4643468)))

(assert (=> bs!1035057 (= (= lt!1807532 (ListMap!4482 Nil!51800)) (= lambda!196892 lambda!196889))))

(assert (=> bs!1035056 (= (= lt!1807532 lt!1807459) (= lambda!196892 lambda!196880))))

(declare-fun bs!1035058 () Bool)

(assert (= bs!1035058 (and d!1464125 b!4643420)))

(assert (=> bs!1035058 (= (= lt!1807532 (ListMap!4482 Nil!51800)) (= lambda!196892 lambda!196878))))

(declare-fun bs!1035059 () Bool)

(assert (= bs!1035059 (and d!1464125 b!4643469)))

(assert (=> bs!1035059 (= (= lt!1807532 lt!1807524) (= lambda!196892 lambda!196891))))

(assert (=> bs!1035059 (= (= lt!1807532 (ListMap!4482 Nil!51800)) (= lambda!196892 lambda!196890))))

(declare-fun bs!1035060 () Bool)

(assert (= bs!1035060 (and d!1464125 d!1464037)))

(assert (=> bs!1035060 (= (= lt!1807532 lt!1807467) (= lambda!196892 lambda!196883))))

(declare-fun bs!1035061 () Bool)

(assert (= bs!1035061 (and d!1464125 d!1463985)))

(assert (=> bs!1035061 (not (= lambda!196892 lambda!196778))))

(assert (=> d!1464125 true))

(declare-fun b!4643465 () Bool)

(declare-fun e!2896708 () Bool)

(assert (=> b!4643465 (= e!2896708 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) lambda!196891))))

(declare-fun c!794554 () Bool)

(declare-fun bm!324177 () Bool)

(declare-fun call!324183 () Bool)

(assert (=> bm!324177 (= call!324183 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) (ite c!794554 lambda!196889 lambda!196891)))))

(declare-fun bm!324178 () Bool)

(declare-fun call!324182 () Unit!115761)

(assert (=> bm!324178 (= call!324182 (lemmaContainsAllItsOwnKeys!572 (ListMap!4482 Nil!51800)))))

(declare-fun b!4643466 () Bool)

(declare-fun e!2896709 () Bool)

(assert (=> b!4643466 (= e!2896709 (invariantList!1270 (toList!5158 lt!1807532)))))

(declare-fun b!4643467 () Bool)

(declare-fun res!1950617 () Bool)

(assert (=> b!4643467 (=> (not res!1950617) (not e!2896709))))

(assert (=> b!4643467 (= res!1950617 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) lambda!196892))))

(declare-fun e!2896710 () ListMap!4481)

(assert (=> b!4643468 (= e!2896710 (ListMap!4482 Nil!51800))))

(declare-fun lt!1807534 () Unit!115761)

(assert (=> b!4643468 (= lt!1807534 call!324182)))

(assert (=> b!4643468 call!324183))

(declare-fun lt!1807529 () Unit!115761)

(assert (=> b!4643468 (= lt!1807529 lt!1807534)))

(declare-fun call!324184 () Bool)

(assert (=> b!4643468 call!324184))

(declare-fun lt!1807519 () Unit!115761)

(declare-fun Unit!115827 () Unit!115761)

(assert (=> b!4643468 (= lt!1807519 Unit!115827)))

(assert (=> b!4643469 (= e!2896710 lt!1807524)))

(declare-fun lt!1807530 () ListMap!4481)

(assert (=> b!4643469 (= lt!1807530 (+!1956 (ListMap!4482 Nil!51800) (h!57916 (Cons!51800 lt!1807006 lt!1807001))))))

(assert (=> b!4643469 (= lt!1807524 (addToMapMapFromBucket!1065 (t!359014 (Cons!51800 lt!1807006 lt!1807001)) (+!1956 (ListMap!4482 Nil!51800) (h!57916 (Cons!51800 lt!1807006 lt!1807001)))))))

(declare-fun lt!1807537 () Unit!115761)

(assert (=> b!4643469 (= lt!1807537 call!324182)))

(assert (=> b!4643469 call!324184))

(declare-fun lt!1807520 () Unit!115761)

(assert (=> b!4643469 (= lt!1807520 lt!1807537)))

(assert (=> b!4643469 (forall!10960 (toList!5158 lt!1807530) lambda!196891)))

(declare-fun lt!1807531 () Unit!115761)

(declare-fun Unit!115828 () Unit!115761)

(assert (=> b!4643469 (= lt!1807531 Unit!115828)))

(assert (=> b!4643469 (forall!10960 (t!359014 (Cons!51800 lt!1807006 lt!1807001)) lambda!196891)))

(declare-fun lt!1807517 () Unit!115761)

(declare-fun Unit!115829 () Unit!115761)

(assert (=> b!4643469 (= lt!1807517 Unit!115829)))

(declare-fun lt!1807522 () Unit!115761)

(declare-fun Unit!115830 () Unit!115761)

(assert (=> b!4643469 (= lt!1807522 Unit!115830)))

(declare-fun lt!1807523 () Unit!115761)

(assert (=> b!4643469 (= lt!1807523 (forallContained!3186 (toList!5158 lt!1807530) lambda!196891 (h!57916 (Cons!51800 lt!1807006 lt!1807001))))))

(assert (=> b!4643469 (contains!14945 lt!1807530 (_1!29729 (h!57916 (Cons!51800 lt!1807006 lt!1807001))))))

(declare-fun lt!1807518 () Unit!115761)

(declare-fun Unit!115831 () Unit!115761)

(assert (=> b!4643469 (= lt!1807518 Unit!115831)))

(assert (=> b!4643469 (contains!14945 lt!1807524 (_1!29729 (h!57916 (Cons!51800 lt!1807006 lt!1807001))))))

(declare-fun lt!1807526 () Unit!115761)

(declare-fun Unit!115832 () Unit!115761)

(assert (=> b!4643469 (= lt!1807526 Unit!115832)))

(assert (=> b!4643469 (forall!10960 (Cons!51800 lt!1807006 lt!1807001) lambda!196891)))

(declare-fun lt!1807528 () Unit!115761)

(declare-fun Unit!115833 () Unit!115761)

(assert (=> b!4643469 (= lt!1807528 Unit!115833)))

(assert (=> b!4643469 (forall!10960 (toList!5158 lt!1807530) lambda!196891)))

(declare-fun lt!1807535 () Unit!115761)

(declare-fun Unit!115834 () Unit!115761)

(assert (=> b!4643469 (= lt!1807535 Unit!115834)))

(declare-fun lt!1807521 () Unit!115761)

(declare-fun Unit!115835 () Unit!115761)

(assert (=> b!4643469 (= lt!1807521 Unit!115835)))

(declare-fun lt!1807525 () Unit!115761)

(assert (=> b!4643469 (= lt!1807525 (addForallContainsKeyThenBeforeAdding!571 (ListMap!4482 Nil!51800) lt!1807524 (_1!29729 (h!57916 (Cons!51800 lt!1807006 lt!1807001))) (_2!29729 (h!57916 (Cons!51800 lt!1807006 lt!1807001)))))))

(assert (=> b!4643469 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) lambda!196891)))

(declare-fun lt!1807533 () Unit!115761)

(assert (=> b!4643469 (= lt!1807533 lt!1807525)))

(assert (=> b!4643469 call!324183))

(declare-fun lt!1807527 () Unit!115761)

(declare-fun Unit!115836 () Unit!115761)

(assert (=> b!4643469 (= lt!1807527 Unit!115836)))

(declare-fun res!1950619 () Bool)

(assert (=> b!4643469 (= res!1950619 (forall!10960 (Cons!51800 lt!1807006 lt!1807001) lambda!196891))))

(assert (=> b!4643469 (=> (not res!1950619) (not e!2896708))))

(assert (=> b!4643469 e!2896708))

(declare-fun lt!1807536 () Unit!115761)

(declare-fun Unit!115837 () Unit!115761)

(assert (=> b!4643469 (= lt!1807536 Unit!115837)))

(assert (=> d!1464125 e!2896709))

(declare-fun res!1950618 () Bool)

(assert (=> d!1464125 (=> (not res!1950618) (not e!2896709))))

(assert (=> d!1464125 (= res!1950618 (forall!10960 (Cons!51800 lt!1807006 lt!1807001) lambda!196892))))

(assert (=> d!1464125 (= lt!1807532 e!2896710)))

(assert (=> d!1464125 (= c!794554 ((_ is Nil!51800) (Cons!51800 lt!1807006 lt!1807001)))))

(assert (=> d!1464125 (noDuplicateKeys!1606 (Cons!51800 lt!1807006 lt!1807001))))

(assert (=> d!1464125 (= (addToMapMapFromBucket!1065 (Cons!51800 lt!1807006 lt!1807001) (ListMap!4482 Nil!51800)) lt!1807532)))

(declare-fun bm!324179 () Bool)

(assert (=> bm!324179 (= call!324184 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) (ite c!794554 lambda!196889 lambda!196890)))))

(assert (= (and d!1464125 c!794554) b!4643468))

(assert (= (and d!1464125 (not c!794554)) b!4643469))

(assert (= (and b!4643469 res!1950619) b!4643465))

(assert (= (or b!4643468 b!4643469) bm!324178))

(assert (= (or b!4643468 b!4643469) bm!324177))

(assert (= (or b!4643468 b!4643469) bm!324179))

(assert (= (and d!1464125 res!1950618) b!4643467))

(assert (= (and b!4643467 res!1950617) b!4643466))

(declare-fun m!5506609 () Bool)

(assert (=> b!4643469 m!5506609))

(declare-fun m!5506611 () Bool)

(assert (=> b!4643469 m!5506611))

(declare-fun m!5506613 () Bool)

(assert (=> b!4643469 m!5506613))

(declare-fun m!5506615 () Bool)

(assert (=> b!4643469 m!5506615))

(declare-fun m!5506617 () Bool)

(assert (=> b!4643469 m!5506617))

(declare-fun m!5506619 () Bool)

(assert (=> b!4643469 m!5506619))

(declare-fun m!5506621 () Bool)

(assert (=> b!4643469 m!5506621))

(assert (=> b!4643469 m!5506619))

(declare-fun m!5506623 () Bool)

(assert (=> b!4643469 m!5506623))

(assert (=> b!4643469 m!5506621))

(declare-fun m!5506625 () Bool)

(assert (=> b!4643469 m!5506625))

(declare-fun m!5506627 () Bool)

(assert (=> b!4643469 m!5506627))

(assert (=> b!4643469 m!5506611))

(declare-fun m!5506629 () Bool)

(assert (=> bm!324177 m!5506629))

(declare-fun m!5506631 () Bool)

(assert (=> d!1464125 m!5506631))

(declare-fun m!5506633 () Bool)

(assert (=> d!1464125 m!5506633))

(assert (=> b!4643465 m!5506613))

(declare-fun m!5506635 () Bool)

(assert (=> bm!324179 m!5506635))

(declare-fun m!5506637 () Bool)

(assert (=> b!4643466 m!5506637))

(declare-fun m!5506639 () Bool)

(assert (=> b!4643467 m!5506639))

(assert (=> bm!324178 m!5506513))

(assert (=> b!4643105 d!1464125))

(declare-fun bs!1035062 () Bool)

(declare-fun b!4643489 () Bool)

(assert (= bs!1035062 (and b!4643489 b!4643421)))

(declare-fun lambda!196893 () Int)

(assert (=> bs!1035062 (= lambda!196893 lambda!196879)))

(declare-fun bs!1035063 () Bool)

(assert (= bs!1035063 (and b!4643489 b!4643468)))

(assert (=> bs!1035063 (= lambda!196893 lambda!196889)))

(assert (=> bs!1035062 (= (= (ListMap!4482 Nil!51800) lt!1807459) (= lambda!196893 lambda!196880))))

(declare-fun bs!1035064 () Bool)

(assert (= bs!1035064 (and b!4643489 b!4643420)))

(assert (=> bs!1035064 (= lambda!196893 lambda!196878)))

(declare-fun bs!1035065 () Bool)

(assert (= bs!1035065 (and b!4643489 b!4643469)))

(assert (=> bs!1035065 (= (= (ListMap!4482 Nil!51800) lt!1807524) (= lambda!196893 lambda!196891))))

(assert (=> bs!1035065 (= lambda!196893 lambda!196890)))

(declare-fun bs!1035066 () Bool)

(assert (= bs!1035066 (and b!4643489 d!1464037)))

(assert (=> bs!1035066 (= (= (ListMap!4482 Nil!51800) lt!1807467) (= lambda!196893 lambda!196883))))

(declare-fun bs!1035067 () Bool)

(assert (= bs!1035067 (and b!4643489 d!1464125)))

(assert (=> bs!1035067 (= (= (ListMap!4482 Nil!51800) lt!1807532) (= lambda!196893 lambda!196892))))

(declare-fun bs!1035068 () Bool)

(assert (= bs!1035068 (and b!4643489 d!1463985)))

(assert (=> bs!1035068 (not (= lambda!196893 lambda!196778))))

(assert (=> b!4643489 true))

(declare-fun bs!1035069 () Bool)

(declare-fun b!4643490 () Bool)

(assert (= bs!1035069 (and b!4643490 b!4643421)))

(declare-fun lambda!196894 () Int)

(assert (=> bs!1035069 (= lambda!196894 lambda!196879)))

(declare-fun bs!1035070 () Bool)

(assert (= bs!1035070 (and b!4643490 b!4643468)))

(assert (=> bs!1035070 (= lambda!196894 lambda!196889)))

(assert (=> bs!1035069 (= (= (ListMap!4482 Nil!51800) lt!1807459) (= lambda!196894 lambda!196880))))

(declare-fun bs!1035071 () Bool)

(assert (= bs!1035071 (and b!4643490 b!4643489)))

(assert (=> bs!1035071 (= lambda!196894 lambda!196893)))

(declare-fun bs!1035072 () Bool)

(assert (= bs!1035072 (and b!4643490 b!4643420)))

(assert (=> bs!1035072 (= lambda!196894 lambda!196878)))

(declare-fun bs!1035074 () Bool)

(assert (= bs!1035074 (and b!4643490 b!4643469)))

(assert (=> bs!1035074 (= (= (ListMap!4482 Nil!51800) lt!1807524) (= lambda!196894 lambda!196891))))

(assert (=> bs!1035074 (= lambda!196894 lambda!196890)))

(declare-fun bs!1035075 () Bool)

(assert (= bs!1035075 (and b!4643490 d!1464037)))

(assert (=> bs!1035075 (= (= (ListMap!4482 Nil!51800) lt!1807467) (= lambda!196894 lambda!196883))))

(declare-fun bs!1035076 () Bool)

(assert (= bs!1035076 (and b!4643490 d!1464125)))

(assert (=> bs!1035076 (= (= (ListMap!4482 Nil!51800) lt!1807532) (= lambda!196894 lambda!196892))))

(declare-fun bs!1035077 () Bool)

(assert (= bs!1035077 (and b!4643490 d!1463985)))

(assert (=> bs!1035077 (not (= lambda!196894 lambda!196778))))

(assert (=> b!4643490 true))

(declare-fun lt!1807547 () ListMap!4481)

(declare-fun lambda!196895 () Int)

(assert (=> bs!1035069 (= (= lt!1807547 (ListMap!4482 Nil!51800)) (= lambda!196895 lambda!196879))))

(assert (=> bs!1035070 (= (= lt!1807547 (ListMap!4482 Nil!51800)) (= lambda!196895 lambda!196889))))

(assert (=> bs!1035069 (= (= lt!1807547 lt!1807459) (= lambda!196895 lambda!196880))))

(assert (=> bs!1035071 (= (= lt!1807547 (ListMap!4482 Nil!51800)) (= lambda!196895 lambda!196893))))

(assert (=> bs!1035072 (= (= lt!1807547 (ListMap!4482 Nil!51800)) (= lambda!196895 lambda!196878))))

(assert (=> bs!1035074 (= (= lt!1807547 lt!1807524) (= lambda!196895 lambda!196891))))

(assert (=> bs!1035074 (= (= lt!1807547 (ListMap!4482 Nil!51800)) (= lambda!196895 lambda!196890))))

(assert (=> b!4643490 (= (= lt!1807547 (ListMap!4482 Nil!51800)) (= lambda!196895 lambda!196894))))

(assert (=> bs!1035075 (= (= lt!1807547 lt!1807467) (= lambda!196895 lambda!196883))))

(assert (=> bs!1035076 (= (= lt!1807547 lt!1807532) (= lambda!196895 lambda!196892))))

(assert (=> bs!1035077 (not (= lambda!196895 lambda!196778))))

(assert (=> b!4643490 true))

(declare-fun bs!1035079 () Bool)

(declare-fun d!1464131 () Bool)

(assert (= bs!1035079 (and d!1464131 b!4643421)))

(declare-fun lt!1807555 () ListMap!4481)

(declare-fun lambda!196896 () Int)

(assert (=> bs!1035079 (= (= lt!1807555 (ListMap!4482 Nil!51800)) (= lambda!196896 lambda!196879))))

(declare-fun bs!1035080 () Bool)

(assert (= bs!1035080 (and d!1464131 b!4643468)))

(assert (=> bs!1035080 (= (= lt!1807555 (ListMap!4482 Nil!51800)) (= lambda!196896 lambda!196889))))

(declare-fun bs!1035081 () Bool)

(assert (= bs!1035081 (and d!1464131 b!4643490)))

(assert (=> bs!1035081 (= (= lt!1807555 lt!1807547) (= lambda!196896 lambda!196895))))

(assert (=> bs!1035079 (= (= lt!1807555 lt!1807459) (= lambda!196896 lambda!196880))))

(declare-fun bs!1035082 () Bool)

(assert (= bs!1035082 (and d!1464131 b!4643489)))

(assert (=> bs!1035082 (= (= lt!1807555 (ListMap!4482 Nil!51800)) (= lambda!196896 lambda!196893))))

(declare-fun bs!1035083 () Bool)

(assert (= bs!1035083 (and d!1464131 b!4643420)))

(assert (=> bs!1035083 (= (= lt!1807555 (ListMap!4482 Nil!51800)) (= lambda!196896 lambda!196878))))

(declare-fun bs!1035084 () Bool)

(assert (= bs!1035084 (and d!1464131 b!4643469)))

(assert (=> bs!1035084 (= (= lt!1807555 lt!1807524) (= lambda!196896 lambda!196891))))

(assert (=> bs!1035084 (= (= lt!1807555 (ListMap!4482 Nil!51800)) (= lambda!196896 lambda!196890))))

(assert (=> bs!1035081 (= (= lt!1807555 (ListMap!4482 Nil!51800)) (= lambda!196896 lambda!196894))))

(declare-fun bs!1035085 () Bool)

(assert (= bs!1035085 (and d!1464131 d!1464037)))

(assert (=> bs!1035085 (= (= lt!1807555 lt!1807467) (= lambda!196896 lambda!196883))))

(declare-fun bs!1035086 () Bool)

(assert (= bs!1035086 (and d!1464131 d!1464125)))

(assert (=> bs!1035086 (= (= lt!1807555 lt!1807532) (= lambda!196896 lambda!196892))))

(declare-fun bs!1035087 () Bool)

(assert (= bs!1035087 (and d!1464131 d!1463985)))

(assert (=> bs!1035087 (not (= lambda!196896 lambda!196778))))

(assert (=> d!1464131 true))

(declare-fun b!4643486 () Bool)

(declare-fun e!2896721 () Bool)

(assert (=> b!4643486 (= e!2896721 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) lambda!196895))))

(declare-fun bm!324180 () Bool)

(declare-fun c!794559 () Bool)

(declare-fun call!324186 () Bool)

(assert (=> bm!324180 (= call!324186 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) (ite c!794559 lambda!196893 lambda!196895)))))

(declare-fun bm!324181 () Bool)

(declare-fun call!324185 () Unit!115761)

(assert (=> bm!324181 (= call!324185 (lemmaContainsAllItsOwnKeys!572 (ListMap!4482 Nil!51800)))))

(declare-fun b!4643487 () Bool)

(declare-fun e!2896722 () Bool)

(assert (=> b!4643487 (= e!2896722 (invariantList!1270 (toList!5158 lt!1807555)))))

(declare-fun b!4643488 () Bool)

(declare-fun res!1950628 () Bool)

(assert (=> b!4643488 (=> (not res!1950628) (not e!2896722))))

(assert (=> b!4643488 (= res!1950628 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) lambda!196896))))

(declare-fun e!2896723 () ListMap!4481)

(assert (=> b!4643489 (= e!2896723 (ListMap!4482 Nil!51800))))

(declare-fun lt!1807557 () Unit!115761)

(assert (=> b!4643489 (= lt!1807557 call!324185)))

(assert (=> b!4643489 call!324186))

(declare-fun lt!1807552 () Unit!115761)

(assert (=> b!4643489 (= lt!1807552 lt!1807557)))

(declare-fun call!324187 () Bool)

(assert (=> b!4643489 call!324187))

(declare-fun lt!1807542 () Unit!115761)

(declare-fun Unit!115838 () Unit!115761)

(assert (=> b!4643489 (= lt!1807542 Unit!115838)))

(assert (=> b!4643490 (= e!2896723 lt!1807547)))

(declare-fun lt!1807553 () ListMap!4481)

(assert (=> b!4643490 (= lt!1807553 (+!1956 (ListMap!4482 Nil!51800) (h!57916 (Cons!51800 lt!1806992 lt!1806989))))))

(assert (=> b!4643490 (= lt!1807547 (addToMapMapFromBucket!1065 (t!359014 (Cons!51800 lt!1806992 lt!1806989)) (+!1956 (ListMap!4482 Nil!51800) (h!57916 (Cons!51800 lt!1806992 lt!1806989)))))))

(declare-fun lt!1807560 () Unit!115761)

(assert (=> b!4643490 (= lt!1807560 call!324185)))

(assert (=> b!4643490 call!324187))

(declare-fun lt!1807543 () Unit!115761)

(assert (=> b!4643490 (= lt!1807543 lt!1807560)))

(assert (=> b!4643490 (forall!10960 (toList!5158 lt!1807553) lambda!196895)))

(declare-fun lt!1807554 () Unit!115761)

(declare-fun Unit!115839 () Unit!115761)

(assert (=> b!4643490 (= lt!1807554 Unit!115839)))

(assert (=> b!4643490 (forall!10960 (t!359014 (Cons!51800 lt!1806992 lt!1806989)) lambda!196895)))

(declare-fun lt!1807540 () Unit!115761)

(declare-fun Unit!115840 () Unit!115761)

(assert (=> b!4643490 (= lt!1807540 Unit!115840)))

(declare-fun lt!1807545 () Unit!115761)

(declare-fun Unit!115841 () Unit!115761)

(assert (=> b!4643490 (= lt!1807545 Unit!115841)))

(declare-fun lt!1807546 () Unit!115761)

(assert (=> b!4643490 (= lt!1807546 (forallContained!3186 (toList!5158 lt!1807553) lambda!196895 (h!57916 (Cons!51800 lt!1806992 lt!1806989))))))

(assert (=> b!4643490 (contains!14945 lt!1807553 (_1!29729 (h!57916 (Cons!51800 lt!1806992 lt!1806989))))))

(declare-fun lt!1807541 () Unit!115761)

(declare-fun Unit!115842 () Unit!115761)

(assert (=> b!4643490 (= lt!1807541 Unit!115842)))

(assert (=> b!4643490 (contains!14945 lt!1807547 (_1!29729 (h!57916 (Cons!51800 lt!1806992 lt!1806989))))))

(declare-fun lt!1807549 () Unit!115761)

(declare-fun Unit!115843 () Unit!115761)

(assert (=> b!4643490 (= lt!1807549 Unit!115843)))

(assert (=> b!4643490 (forall!10960 (Cons!51800 lt!1806992 lt!1806989) lambda!196895)))

(declare-fun lt!1807551 () Unit!115761)

(declare-fun Unit!115845 () Unit!115761)

(assert (=> b!4643490 (= lt!1807551 Unit!115845)))

(assert (=> b!4643490 (forall!10960 (toList!5158 lt!1807553) lambda!196895)))

(declare-fun lt!1807558 () Unit!115761)

(declare-fun Unit!115847 () Unit!115761)

(assert (=> b!4643490 (= lt!1807558 Unit!115847)))

(declare-fun lt!1807544 () Unit!115761)

(declare-fun Unit!115849 () Unit!115761)

(assert (=> b!4643490 (= lt!1807544 Unit!115849)))

(declare-fun lt!1807548 () Unit!115761)

(assert (=> b!4643490 (= lt!1807548 (addForallContainsKeyThenBeforeAdding!571 (ListMap!4482 Nil!51800) lt!1807547 (_1!29729 (h!57916 (Cons!51800 lt!1806992 lt!1806989))) (_2!29729 (h!57916 (Cons!51800 lt!1806992 lt!1806989)))))))

(assert (=> b!4643490 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) lambda!196895)))

(declare-fun lt!1807556 () Unit!115761)

(assert (=> b!4643490 (= lt!1807556 lt!1807548)))

(assert (=> b!4643490 call!324186))

(declare-fun lt!1807550 () Unit!115761)

(declare-fun Unit!115852 () Unit!115761)

(assert (=> b!4643490 (= lt!1807550 Unit!115852)))

(declare-fun res!1950630 () Bool)

(assert (=> b!4643490 (= res!1950630 (forall!10960 (Cons!51800 lt!1806992 lt!1806989) lambda!196895))))

(assert (=> b!4643490 (=> (not res!1950630) (not e!2896721))))

(assert (=> b!4643490 e!2896721))

(declare-fun lt!1807559 () Unit!115761)

(declare-fun Unit!115854 () Unit!115761)

(assert (=> b!4643490 (= lt!1807559 Unit!115854)))

(assert (=> d!1464131 e!2896722))

(declare-fun res!1950629 () Bool)

(assert (=> d!1464131 (=> (not res!1950629) (not e!2896722))))

(assert (=> d!1464131 (= res!1950629 (forall!10960 (Cons!51800 lt!1806992 lt!1806989) lambda!196896))))

(assert (=> d!1464131 (= lt!1807555 e!2896723)))

(assert (=> d!1464131 (= c!794559 ((_ is Nil!51800) (Cons!51800 lt!1806992 lt!1806989)))))

(assert (=> d!1464131 (noDuplicateKeys!1606 (Cons!51800 lt!1806992 lt!1806989))))

(assert (=> d!1464131 (= (addToMapMapFromBucket!1065 (Cons!51800 lt!1806992 lt!1806989) (ListMap!4482 Nil!51800)) lt!1807555)))

(declare-fun bm!324182 () Bool)

(assert (=> bm!324182 (= call!324187 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) (ite c!794559 lambda!196893 lambda!196894)))))

(assert (= (and d!1464131 c!794559) b!4643489))

(assert (= (and d!1464131 (not c!794559)) b!4643490))

(assert (= (and b!4643490 res!1950630) b!4643486))

(assert (= (or b!4643489 b!4643490) bm!324181))

(assert (= (or b!4643489 b!4643490) bm!324180))

(assert (= (or b!4643489 b!4643490) bm!324182))

(assert (= (and d!1464131 res!1950629) b!4643488))

(assert (= (and b!4643488 res!1950628) b!4643487))

(declare-fun m!5506659 () Bool)

(assert (=> b!4643490 m!5506659))

(declare-fun m!5506661 () Bool)

(assert (=> b!4643490 m!5506661))

(declare-fun m!5506663 () Bool)

(assert (=> b!4643490 m!5506663))

(declare-fun m!5506665 () Bool)

(assert (=> b!4643490 m!5506665))

(declare-fun m!5506667 () Bool)

(assert (=> b!4643490 m!5506667))

(declare-fun m!5506669 () Bool)

(assert (=> b!4643490 m!5506669))

(declare-fun m!5506671 () Bool)

(assert (=> b!4643490 m!5506671))

(assert (=> b!4643490 m!5506669))

(declare-fun m!5506673 () Bool)

(assert (=> b!4643490 m!5506673))

(assert (=> b!4643490 m!5506671))

(declare-fun m!5506675 () Bool)

(assert (=> b!4643490 m!5506675))

(declare-fun m!5506677 () Bool)

(assert (=> b!4643490 m!5506677))

(assert (=> b!4643490 m!5506661))

(declare-fun m!5506679 () Bool)

(assert (=> bm!324180 m!5506679))

(declare-fun m!5506681 () Bool)

(assert (=> d!1464131 m!5506681))

(declare-fun m!5506683 () Bool)

(assert (=> d!1464131 m!5506683))

(assert (=> b!4643486 m!5506663))

(declare-fun m!5506685 () Bool)

(assert (=> bm!324182 m!5506685))

(declare-fun m!5506687 () Bool)

(assert (=> b!4643487 m!5506687))

(declare-fun m!5506689 () Bool)

(assert (=> b!4643488 m!5506689))

(assert (=> bm!324181 m!5506513))

(assert (=> b!4643105 d!1464131))

(declare-fun d!1464137 () Bool)

(assert (=> d!1464137 (eq!897 (addToMapMapFromBucket!1065 (Cons!51800 lt!1807006 lt!1807001) (ListMap!4482 Nil!51800)) (+!1956 (addToMapMapFromBucket!1065 lt!1807001 (ListMap!4482 Nil!51800)) lt!1807006))))

(declare-fun lt!1807562 () Unit!115761)

(assert (=> d!1464137 (= lt!1807562 (choose!31842 lt!1807006 lt!1807001 (ListMap!4482 Nil!51800)))))

(assert (=> d!1464137 (noDuplicateKeys!1606 lt!1807001)))

(assert (=> d!1464137 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!148 lt!1807006 lt!1807001 (ListMap!4482 Nil!51800)) lt!1807562)))

(declare-fun bs!1035088 () Bool)

(assert (= bs!1035088 d!1464137))

(declare-fun m!5506691 () Bool)

(assert (=> bs!1035088 m!5506691))

(declare-fun m!5506693 () Bool)

(assert (=> bs!1035088 m!5506693))

(assert (=> bs!1035088 m!5505689))

(assert (=> bs!1035088 m!5505693))

(assert (=> bs!1035088 m!5505691))

(assert (=> bs!1035088 m!5505693))

(assert (=> bs!1035088 m!5505695))

(assert (=> bs!1035088 m!5505689))

(assert (=> bs!1035088 m!5505691))

(assert (=> b!4643105 d!1464137))

(declare-fun bs!1035089 () Bool)

(declare-fun b!4643508 () Bool)

(assert (= bs!1035089 (and b!4643508 b!4643421)))

(declare-fun lambda!196897 () Int)

(assert (=> bs!1035089 (= lambda!196897 lambda!196879)))

(declare-fun bs!1035090 () Bool)

(assert (= bs!1035090 (and b!4643508 b!4643468)))

(assert (=> bs!1035090 (= lambda!196897 lambda!196889)))

(declare-fun bs!1035091 () Bool)

(assert (= bs!1035091 (and b!4643508 b!4643490)))

(assert (=> bs!1035091 (= (= (ListMap!4482 Nil!51800) lt!1807547) (= lambda!196897 lambda!196895))))

(assert (=> bs!1035089 (= (= (ListMap!4482 Nil!51800) lt!1807459) (= lambda!196897 lambda!196880))))

(declare-fun bs!1035092 () Bool)

(assert (= bs!1035092 (and b!4643508 b!4643489)))

(assert (=> bs!1035092 (= lambda!196897 lambda!196893)))

(declare-fun bs!1035093 () Bool)

(assert (= bs!1035093 (and b!4643508 b!4643420)))

(assert (=> bs!1035093 (= lambda!196897 lambda!196878)))

(declare-fun bs!1035094 () Bool)

(assert (= bs!1035094 (and b!4643508 b!4643469)))

(assert (=> bs!1035094 (= (= (ListMap!4482 Nil!51800) lt!1807524) (= lambda!196897 lambda!196891))))

(declare-fun bs!1035095 () Bool)

(assert (= bs!1035095 (and b!4643508 d!1464131)))

(assert (=> bs!1035095 (= (= (ListMap!4482 Nil!51800) lt!1807555) (= lambda!196897 lambda!196896))))

(assert (=> bs!1035094 (= lambda!196897 lambda!196890)))

(assert (=> bs!1035091 (= lambda!196897 lambda!196894)))

(declare-fun bs!1035096 () Bool)

(assert (= bs!1035096 (and b!4643508 d!1464037)))

(assert (=> bs!1035096 (= (= (ListMap!4482 Nil!51800) lt!1807467) (= lambda!196897 lambda!196883))))

(declare-fun bs!1035097 () Bool)

(assert (= bs!1035097 (and b!4643508 d!1464125)))

(assert (=> bs!1035097 (= (= (ListMap!4482 Nil!51800) lt!1807532) (= lambda!196897 lambda!196892))))

(declare-fun bs!1035098 () Bool)

(assert (= bs!1035098 (and b!4643508 d!1463985)))

(assert (=> bs!1035098 (not (= lambda!196897 lambda!196778))))

(assert (=> b!4643508 true))

(declare-fun bs!1035099 () Bool)

(declare-fun b!4643509 () Bool)

(assert (= bs!1035099 (and b!4643509 b!4643421)))

(declare-fun lambda!196898 () Int)

(assert (=> bs!1035099 (= lambda!196898 lambda!196879)))

(declare-fun bs!1035100 () Bool)

(assert (= bs!1035100 (and b!4643509 b!4643490)))

(assert (=> bs!1035100 (= (= (ListMap!4482 Nil!51800) lt!1807547) (= lambda!196898 lambda!196895))))

(assert (=> bs!1035099 (= (= (ListMap!4482 Nil!51800) lt!1807459) (= lambda!196898 lambda!196880))))

(declare-fun bs!1035101 () Bool)

(assert (= bs!1035101 (and b!4643509 b!4643489)))

(assert (=> bs!1035101 (= lambda!196898 lambda!196893)))

(declare-fun bs!1035102 () Bool)

(assert (= bs!1035102 (and b!4643509 b!4643420)))

(assert (=> bs!1035102 (= lambda!196898 lambda!196878)))

(declare-fun bs!1035103 () Bool)

(assert (= bs!1035103 (and b!4643509 b!4643469)))

(assert (=> bs!1035103 (= (= (ListMap!4482 Nil!51800) lt!1807524) (= lambda!196898 lambda!196891))))

(declare-fun bs!1035104 () Bool)

(assert (= bs!1035104 (and b!4643509 d!1464131)))

(assert (=> bs!1035104 (= (= (ListMap!4482 Nil!51800) lt!1807555) (= lambda!196898 lambda!196896))))

(assert (=> bs!1035103 (= lambda!196898 lambda!196890)))

(assert (=> bs!1035100 (= lambda!196898 lambda!196894)))

(declare-fun bs!1035105 () Bool)

(assert (= bs!1035105 (and b!4643509 d!1464037)))

(assert (=> bs!1035105 (= (= (ListMap!4482 Nil!51800) lt!1807467) (= lambda!196898 lambda!196883))))

(declare-fun bs!1035106 () Bool)

(assert (= bs!1035106 (and b!4643509 d!1464125)))

(assert (=> bs!1035106 (= (= (ListMap!4482 Nil!51800) lt!1807532) (= lambda!196898 lambda!196892))))

(declare-fun bs!1035107 () Bool)

(assert (= bs!1035107 (and b!4643509 d!1463985)))

(assert (=> bs!1035107 (not (= lambda!196898 lambda!196778))))

(declare-fun bs!1035108 () Bool)

(assert (= bs!1035108 (and b!4643509 b!4643468)))

(assert (=> bs!1035108 (= lambda!196898 lambda!196889)))

(declare-fun bs!1035109 () Bool)

(assert (= bs!1035109 (and b!4643509 b!4643508)))

(assert (=> bs!1035109 (= lambda!196898 lambda!196897)))

(assert (=> b!4643509 true))

(declare-fun lt!1807570 () ListMap!4481)

(declare-fun lambda!196899 () Int)

(assert (=> bs!1035099 (= (= lt!1807570 (ListMap!4482 Nil!51800)) (= lambda!196899 lambda!196879))))

(assert (=> bs!1035100 (= (= lt!1807570 lt!1807547) (= lambda!196899 lambda!196895))))

(assert (=> bs!1035099 (= (= lt!1807570 lt!1807459) (= lambda!196899 lambda!196880))))

(assert (=> bs!1035101 (= (= lt!1807570 (ListMap!4482 Nil!51800)) (= lambda!196899 lambda!196893))))

(assert (=> bs!1035102 (= (= lt!1807570 (ListMap!4482 Nil!51800)) (= lambda!196899 lambda!196878))))

(assert (=> bs!1035103 (= (= lt!1807570 lt!1807524) (= lambda!196899 lambda!196891))))

(assert (=> bs!1035104 (= (= lt!1807570 lt!1807555) (= lambda!196899 lambda!196896))))

(assert (=> bs!1035103 (= (= lt!1807570 (ListMap!4482 Nil!51800)) (= lambda!196899 lambda!196890))))

(assert (=> bs!1035100 (= (= lt!1807570 (ListMap!4482 Nil!51800)) (= lambda!196899 lambda!196894))))

(assert (=> bs!1035105 (= (= lt!1807570 lt!1807467) (= lambda!196899 lambda!196883))))

(assert (=> bs!1035106 (= (= lt!1807570 lt!1807532) (= lambda!196899 lambda!196892))))

(assert (=> bs!1035107 (not (= lambda!196899 lambda!196778))))

(assert (=> b!4643509 (= (= lt!1807570 (ListMap!4482 Nil!51800)) (= lambda!196899 lambda!196898))))

(assert (=> bs!1035108 (= (= lt!1807570 (ListMap!4482 Nil!51800)) (= lambda!196899 lambda!196889))))

(assert (=> bs!1035109 (= (= lt!1807570 (ListMap!4482 Nil!51800)) (= lambda!196899 lambda!196897))))

(assert (=> b!4643509 true))

(declare-fun bs!1035110 () Bool)

(declare-fun d!1464139 () Bool)

(assert (= bs!1035110 (and d!1464139 b!4643490)))

(declare-fun lambda!196900 () Int)

(declare-fun lt!1807578 () ListMap!4481)

(assert (=> bs!1035110 (= (= lt!1807578 lt!1807547) (= lambda!196900 lambda!196895))))

(declare-fun bs!1035111 () Bool)

(assert (= bs!1035111 (and d!1464139 b!4643421)))

(assert (=> bs!1035111 (= (= lt!1807578 lt!1807459) (= lambda!196900 lambda!196880))))

(declare-fun bs!1035112 () Bool)

(assert (= bs!1035112 (and d!1464139 b!4643489)))

(assert (=> bs!1035112 (= (= lt!1807578 (ListMap!4482 Nil!51800)) (= lambda!196900 lambda!196893))))

(declare-fun bs!1035113 () Bool)

(assert (= bs!1035113 (and d!1464139 b!4643420)))

(assert (=> bs!1035113 (= (= lt!1807578 (ListMap!4482 Nil!51800)) (= lambda!196900 lambda!196878))))

(declare-fun bs!1035114 () Bool)

(assert (= bs!1035114 (and d!1464139 b!4643469)))

(assert (=> bs!1035114 (= (= lt!1807578 lt!1807524) (= lambda!196900 lambda!196891))))

(declare-fun bs!1035115 () Bool)

(assert (= bs!1035115 (and d!1464139 d!1464131)))

(assert (=> bs!1035115 (= (= lt!1807578 lt!1807555) (= lambda!196900 lambda!196896))))

(assert (=> bs!1035114 (= (= lt!1807578 (ListMap!4482 Nil!51800)) (= lambda!196900 lambda!196890))))

(assert (=> bs!1035110 (= (= lt!1807578 (ListMap!4482 Nil!51800)) (= lambda!196900 lambda!196894))))

(declare-fun bs!1035116 () Bool)

(assert (= bs!1035116 (and d!1464139 d!1464037)))

(assert (=> bs!1035116 (= (= lt!1807578 lt!1807467) (= lambda!196900 lambda!196883))))

(declare-fun bs!1035117 () Bool)

(assert (= bs!1035117 (and d!1464139 d!1464125)))

(assert (=> bs!1035117 (= (= lt!1807578 lt!1807532) (= lambda!196900 lambda!196892))))

(declare-fun bs!1035118 () Bool)

(assert (= bs!1035118 (and d!1464139 d!1463985)))

(assert (=> bs!1035118 (not (= lambda!196900 lambda!196778))))

(declare-fun bs!1035119 () Bool)

(assert (= bs!1035119 (and d!1464139 b!4643509)))

(assert (=> bs!1035119 (= (= lt!1807578 (ListMap!4482 Nil!51800)) (= lambda!196900 lambda!196898))))

(assert (=> bs!1035111 (= (= lt!1807578 (ListMap!4482 Nil!51800)) (= lambda!196900 lambda!196879))))

(assert (=> bs!1035119 (= (= lt!1807578 lt!1807570) (= lambda!196900 lambda!196899))))

(declare-fun bs!1035120 () Bool)

(assert (= bs!1035120 (and d!1464139 b!4643468)))

(assert (=> bs!1035120 (= (= lt!1807578 (ListMap!4482 Nil!51800)) (= lambda!196900 lambda!196889))))

(declare-fun bs!1035121 () Bool)

(assert (= bs!1035121 (and d!1464139 b!4643508)))

(assert (=> bs!1035121 (= (= lt!1807578 (ListMap!4482 Nil!51800)) (= lambda!196900 lambda!196897))))

(assert (=> d!1464139 true))

(declare-fun b!4643505 () Bool)

(declare-fun e!2896733 () Bool)

(assert (=> b!4643505 (= e!2896733 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) lambda!196899))))

(declare-fun c!794562 () Bool)

(declare-fun call!324189 () Bool)

(declare-fun bm!324183 () Bool)

(assert (=> bm!324183 (= call!324189 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) (ite c!794562 lambda!196897 lambda!196899)))))

(declare-fun bm!324184 () Bool)

(declare-fun call!324188 () Unit!115761)

(assert (=> bm!324184 (= call!324188 (lemmaContainsAllItsOwnKeys!572 (ListMap!4482 Nil!51800)))))

(declare-fun b!4643506 () Bool)

(declare-fun e!2896734 () Bool)

(assert (=> b!4643506 (= e!2896734 (invariantList!1270 (toList!5158 lt!1807578)))))

(declare-fun b!4643507 () Bool)

(declare-fun res!1950635 () Bool)

(assert (=> b!4643507 (=> (not res!1950635) (not e!2896734))))

(assert (=> b!4643507 (= res!1950635 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) lambda!196900))))

(declare-fun e!2896735 () ListMap!4481)

(assert (=> b!4643508 (= e!2896735 (ListMap!4482 Nil!51800))))

(declare-fun lt!1807580 () Unit!115761)

(assert (=> b!4643508 (= lt!1807580 call!324188)))

(assert (=> b!4643508 call!324189))

(declare-fun lt!1807575 () Unit!115761)

(assert (=> b!4643508 (= lt!1807575 lt!1807580)))

(declare-fun call!324190 () Bool)

(assert (=> b!4643508 call!324190))

(declare-fun lt!1807565 () Unit!115761)

(declare-fun Unit!115860 () Unit!115761)

(assert (=> b!4643508 (= lt!1807565 Unit!115860)))

(assert (=> b!4643509 (= e!2896735 lt!1807570)))

(declare-fun lt!1807576 () ListMap!4481)

(assert (=> b!4643509 (= lt!1807576 (+!1956 (ListMap!4482 Nil!51800) (h!57916 lt!1807001)))))

(assert (=> b!4643509 (= lt!1807570 (addToMapMapFromBucket!1065 (t!359014 lt!1807001) (+!1956 (ListMap!4482 Nil!51800) (h!57916 lt!1807001))))))

(declare-fun lt!1807583 () Unit!115761)

(assert (=> b!4643509 (= lt!1807583 call!324188)))

(assert (=> b!4643509 call!324190))

(declare-fun lt!1807566 () Unit!115761)

(assert (=> b!4643509 (= lt!1807566 lt!1807583)))

(assert (=> b!4643509 (forall!10960 (toList!5158 lt!1807576) lambda!196899)))

(declare-fun lt!1807577 () Unit!115761)

(declare-fun Unit!115861 () Unit!115761)

(assert (=> b!4643509 (= lt!1807577 Unit!115861)))

(assert (=> b!4643509 (forall!10960 (t!359014 lt!1807001) lambda!196899)))

(declare-fun lt!1807563 () Unit!115761)

(declare-fun Unit!115862 () Unit!115761)

(assert (=> b!4643509 (= lt!1807563 Unit!115862)))

(declare-fun lt!1807568 () Unit!115761)

(declare-fun Unit!115863 () Unit!115761)

(assert (=> b!4643509 (= lt!1807568 Unit!115863)))

(declare-fun lt!1807569 () Unit!115761)

(assert (=> b!4643509 (= lt!1807569 (forallContained!3186 (toList!5158 lt!1807576) lambda!196899 (h!57916 lt!1807001)))))

(assert (=> b!4643509 (contains!14945 lt!1807576 (_1!29729 (h!57916 lt!1807001)))))

(declare-fun lt!1807564 () Unit!115761)

(declare-fun Unit!115864 () Unit!115761)

(assert (=> b!4643509 (= lt!1807564 Unit!115864)))

(assert (=> b!4643509 (contains!14945 lt!1807570 (_1!29729 (h!57916 lt!1807001)))))

(declare-fun lt!1807572 () Unit!115761)

(declare-fun Unit!115865 () Unit!115761)

(assert (=> b!4643509 (= lt!1807572 Unit!115865)))

(assert (=> b!4643509 (forall!10960 lt!1807001 lambda!196899)))

(declare-fun lt!1807574 () Unit!115761)

(declare-fun Unit!115866 () Unit!115761)

(assert (=> b!4643509 (= lt!1807574 Unit!115866)))

(assert (=> b!4643509 (forall!10960 (toList!5158 lt!1807576) lambda!196899)))

(declare-fun lt!1807581 () Unit!115761)

(declare-fun Unit!115867 () Unit!115761)

(assert (=> b!4643509 (= lt!1807581 Unit!115867)))

(declare-fun lt!1807567 () Unit!115761)

(declare-fun Unit!115868 () Unit!115761)

(assert (=> b!4643509 (= lt!1807567 Unit!115868)))

(declare-fun lt!1807571 () Unit!115761)

(assert (=> b!4643509 (= lt!1807571 (addForallContainsKeyThenBeforeAdding!571 (ListMap!4482 Nil!51800) lt!1807570 (_1!29729 (h!57916 lt!1807001)) (_2!29729 (h!57916 lt!1807001))))))

(assert (=> b!4643509 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) lambda!196899)))

(declare-fun lt!1807579 () Unit!115761)

(assert (=> b!4643509 (= lt!1807579 lt!1807571)))

(assert (=> b!4643509 call!324189))

(declare-fun lt!1807573 () Unit!115761)

(declare-fun Unit!115869 () Unit!115761)

(assert (=> b!4643509 (= lt!1807573 Unit!115869)))

(declare-fun res!1950637 () Bool)

(assert (=> b!4643509 (= res!1950637 (forall!10960 lt!1807001 lambda!196899))))

(assert (=> b!4643509 (=> (not res!1950637) (not e!2896733))))

(assert (=> b!4643509 e!2896733))

(declare-fun lt!1807582 () Unit!115761)

(declare-fun Unit!115870 () Unit!115761)

(assert (=> b!4643509 (= lt!1807582 Unit!115870)))

(assert (=> d!1464139 e!2896734))

(declare-fun res!1950636 () Bool)

(assert (=> d!1464139 (=> (not res!1950636) (not e!2896734))))

(assert (=> d!1464139 (= res!1950636 (forall!10960 lt!1807001 lambda!196900))))

(assert (=> d!1464139 (= lt!1807578 e!2896735)))

(assert (=> d!1464139 (= c!794562 ((_ is Nil!51800) lt!1807001))))

(assert (=> d!1464139 (noDuplicateKeys!1606 lt!1807001)))

(assert (=> d!1464139 (= (addToMapMapFromBucket!1065 lt!1807001 (ListMap!4482 Nil!51800)) lt!1807578)))

(declare-fun bm!324185 () Bool)

(assert (=> bm!324185 (= call!324190 (forall!10960 (toList!5158 (ListMap!4482 Nil!51800)) (ite c!794562 lambda!196897 lambda!196898)))))

(assert (= (and d!1464139 c!794562) b!4643508))

(assert (= (and d!1464139 (not c!794562)) b!4643509))

(assert (= (and b!4643509 res!1950637) b!4643505))

(assert (= (or b!4643508 b!4643509) bm!324184))

(assert (= (or b!4643508 b!4643509) bm!324183))

(assert (= (or b!4643508 b!4643509) bm!324185))

(assert (= (and d!1464139 res!1950636) b!4643507))

(assert (= (and b!4643507 res!1950635) b!4643506))

(declare-fun m!5506695 () Bool)

(assert (=> b!4643509 m!5506695))

(declare-fun m!5506697 () Bool)

(assert (=> b!4643509 m!5506697))

(declare-fun m!5506699 () Bool)

(assert (=> b!4643509 m!5506699))

(declare-fun m!5506701 () Bool)

(assert (=> b!4643509 m!5506701))

(declare-fun m!5506703 () Bool)

(assert (=> b!4643509 m!5506703))

(declare-fun m!5506705 () Bool)

(assert (=> b!4643509 m!5506705))

(declare-fun m!5506707 () Bool)

(assert (=> b!4643509 m!5506707))

(assert (=> b!4643509 m!5506705))

(declare-fun m!5506709 () Bool)

(assert (=> b!4643509 m!5506709))

(assert (=> b!4643509 m!5506707))

(declare-fun m!5506711 () Bool)

(assert (=> b!4643509 m!5506711))

(declare-fun m!5506713 () Bool)

(assert (=> b!4643509 m!5506713))

(assert (=> b!4643509 m!5506697))

(declare-fun m!5506715 () Bool)

(assert (=> bm!324183 m!5506715))

(declare-fun m!5506717 () Bool)

(assert (=> d!1464139 m!5506717))

(assert (=> d!1464139 m!5506691))

(assert (=> b!4643505 m!5506699))

(declare-fun m!5506719 () Bool)

(assert (=> bm!324185 m!5506719))

(declare-fun m!5506721 () Bool)

(assert (=> b!4643506 m!5506721))

(declare-fun m!5506723 () Bool)

(assert (=> b!4643507 m!5506723))

(assert (=> bm!324184 m!5506513))

(assert (=> b!4643105 d!1464139))

(declare-fun d!1464141 () Bool)

(assert (=> d!1464141 (= (eq!897 (addToMapMapFromBucket!1065 (Cons!51800 lt!1806992 lt!1806989) (ListMap!4482 Nil!51800)) (+!1956 (addToMapMapFromBucket!1065 lt!1806989 (ListMap!4482 Nil!51800)) lt!1806992)) (= (content!8958 (toList!5158 (addToMapMapFromBucket!1065 (Cons!51800 lt!1806992 lt!1806989) (ListMap!4482 Nil!51800)))) (content!8958 (toList!5158 (+!1956 (addToMapMapFromBucket!1065 lt!1806989 (ListMap!4482 Nil!51800)) lt!1806992)))))))

(declare-fun bs!1035122 () Bool)

(assert (= bs!1035122 d!1464141))

(declare-fun m!5506725 () Bool)

(assert (=> bs!1035122 m!5506725))

(declare-fun m!5506727 () Bool)

(assert (=> bs!1035122 m!5506727))

(assert (=> b!4643105 d!1464141))

(declare-fun d!1464143 () Bool)

(declare-fun e!2896736 () Bool)

(assert (=> d!1464143 e!2896736))

(declare-fun res!1950639 () Bool)

(assert (=> d!1464143 (=> (not res!1950639) (not e!2896736))))

(declare-fun lt!1807584 () ListMap!4481)

(assert (=> d!1464143 (= res!1950639 (contains!14945 lt!1807584 (_1!29729 (h!57916 oldBucket!40))))))

(declare-fun lt!1807585 () List!51924)

(assert (=> d!1464143 (= lt!1807584 (ListMap!4482 lt!1807585))))

(declare-fun lt!1807586 () Unit!115761)

(declare-fun lt!1807587 () Unit!115761)

(assert (=> d!1464143 (= lt!1807586 lt!1807587)))

(assert (=> d!1464143 (= (getValueByKey!1572 lt!1807585 (_1!29729 (h!57916 oldBucket!40))) (Some!11779 (_2!29729 (h!57916 oldBucket!40))))))

(assert (=> d!1464143 (= lt!1807587 (lemmaContainsTupThenGetReturnValue!905 lt!1807585 (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40))))))

(assert (=> d!1464143 (= lt!1807585 (insertNoDuplicatedKeys!413 (toList!5158 lt!1806988) (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40))))))

(assert (=> d!1464143 (= (+!1956 lt!1806988 (h!57916 oldBucket!40)) lt!1807584)))

(declare-fun b!4643510 () Bool)

(declare-fun res!1950638 () Bool)

(assert (=> b!4643510 (=> (not res!1950638) (not e!2896736))))

(assert (=> b!4643510 (= res!1950638 (= (getValueByKey!1572 (toList!5158 lt!1807584) (_1!29729 (h!57916 oldBucket!40))) (Some!11779 (_2!29729 (h!57916 oldBucket!40)))))))

(declare-fun b!4643511 () Bool)

(assert (=> b!4643511 (= e!2896736 (contains!14947 (toList!5158 lt!1807584) (h!57916 oldBucket!40)))))

(assert (= (and d!1464143 res!1950639) b!4643510))

(assert (= (and b!4643510 res!1950638) b!4643511))

(declare-fun m!5506729 () Bool)

(assert (=> d!1464143 m!5506729))

(declare-fun m!5506731 () Bool)

(assert (=> d!1464143 m!5506731))

(declare-fun m!5506733 () Bool)

(assert (=> d!1464143 m!5506733))

(declare-fun m!5506735 () Bool)

(assert (=> d!1464143 m!5506735))

(declare-fun m!5506737 () Bool)

(assert (=> b!4643510 m!5506737))

(declare-fun m!5506739 () Bool)

(assert (=> b!4643511 m!5506739))

(assert (=> b!4643096 d!1464143))

(declare-fun d!1464145 () Bool)

(declare-fun e!2896739 () Bool)

(assert (=> d!1464145 e!2896739))

(declare-fun res!1950642 () Bool)

(assert (=> d!1464145 (=> (not res!1950642) (not e!2896739))))

(declare-fun lt!1807590 () ListMap!4481)

(assert (=> d!1464145 (= res!1950642 (not (contains!14945 lt!1807590 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!301 (List!51924 K!13165) List!51924)

(assert (=> d!1464145 (= lt!1807590 (ListMap!4482 (removePresrvNoDuplicatedKeys!301 (toList!5158 lt!1807018) key!4968)))))

(assert (=> d!1464145 (= (-!610 lt!1807018 key!4968) lt!1807590)))

(declare-fun b!4643514 () Bool)

(declare-fun content!8960 (List!51927) (InoxSet K!13165))

(assert (=> b!4643514 (= e!2896739 (= ((_ map and) (content!8960 (keys!18320 lt!1807018)) ((_ map not) (store ((as const (Array K!13165 Bool)) false) key!4968 true))) (content!8960 (keys!18320 lt!1807590))))))

(assert (= (and d!1464145 res!1950642) b!4643514))

(declare-fun m!5506741 () Bool)

(assert (=> d!1464145 m!5506741))

(declare-fun m!5506743 () Bool)

(assert (=> d!1464145 m!5506743))

(declare-fun m!5506745 () Bool)

(assert (=> b!4643514 m!5506745))

(assert (=> b!4643514 m!5506573))

(assert (=> b!4643514 m!5506573))

(declare-fun m!5506747 () Bool)

(assert (=> b!4643514 m!5506747))

(assert (=> b!4643514 m!5506745))

(declare-fun m!5506749 () Bool)

(assert (=> b!4643514 m!5506749))

(declare-fun m!5506751 () Bool)

(assert (=> b!4643514 m!5506751))

(assert (=> b!4643096 d!1464145))

(declare-fun d!1464147 () Bool)

(assert (=> d!1464147 (= (eq!897 lt!1807003 lt!1806988) (= (content!8958 (toList!5158 lt!1807003)) (content!8958 (toList!5158 lt!1806988))))))

(declare-fun bs!1035123 () Bool)

(assert (= bs!1035123 d!1464147))

(declare-fun m!5506753 () Bool)

(assert (=> bs!1035123 m!5506753))

(declare-fun m!5506755 () Bool)

(assert (=> bs!1035123 m!5506755))

(assert (=> b!4643096 d!1464147))

(declare-fun d!1464149 () Bool)

(assert (=> d!1464149 (eq!897 (extractMap!1662 (Cons!51801 (tuple2!52873 hash!414 lt!1807001) Nil!51801)) (-!610 (extractMap!1662 (Cons!51801 (tuple2!52873 hash!414 (t!359014 oldBucket!40)) Nil!51801)) key!4968))))

(declare-fun lt!1807593 () Unit!115761)

(declare-fun choose!31847 ((_ BitVec 64) List!51924 List!51924 K!13165 Hashable!6003) Unit!115761)

(assert (=> d!1464149 (= lt!1807593 (choose!31847 hash!414 (t!359014 oldBucket!40) lt!1807001 key!4968 hashF!1389))))

(assert (=> d!1464149 (noDuplicateKeys!1606 (t!359014 oldBucket!40))))

(assert (=> d!1464149 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!162 hash!414 (t!359014 oldBucket!40) lt!1807001 key!4968 hashF!1389) lt!1807593)))

(declare-fun bs!1035124 () Bool)

(assert (= bs!1035124 d!1464149))

(declare-fun m!5506757 () Bool)

(assert (=> bs!1035124 m!5506757))

(declare-fun m!5506759 () Bool)

(assert (=> bs!1035124 m!5506759))

(assert (=> bs!1035124 m!5506759))

(declare-fun m!5506761 () Bool)

(assert (=> bs!1035124 m!5506761))

(assert (=> bs!1035124 m!5505883))

(assert (=> bs!1035124 m!5505787))

(assert (=> bs!1035124 m!5505787))

(assert (=> bs!1035124 m!5506761))

(declare-fun m!5506763 () Bool)

(assert (=> bs!1035124 m!5506763))

(assert (=> b!4643096 d!1464149))

(declare-fun d!1464151 () Bool)

(assert (=> d!1464151 (= (-!610 (+!1956 lt!1807018 (tuple2!52871 (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40)))) key!4968) (+!1956 (-!610 lt!1807018 key!4968) (tuple2!52871 (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40)))))))

(declare-fun lt!1807596 () Unit!115761)

(declare-fun choose!31848 (ListMap!4481 K!13165 V!13411 K!13165) Unit!115761)

(assert (=> d!1464151 (= lt!1807596 (choose!31848 lt!1807018 (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40)) key!4968))))

(assert (=> d!1464151 (not (= (_1!29729 (h!57916 oldBucket!40)) key!4968))))

(assert (=> d!1464151 (= (addRemoveCommutativeForDiffKeys!55 lt!1807018 (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40)) key!4968) lt!1807596)))

(declare-fun bs!1035125 () Bool)

(assert (= bs!1035125 d!1464151))

(assert (=> bs!1035125 m!5505717))

(declare-fun m!5506765 () Bool)

(assert (=> bs!1035125 m!5506765))

(declare-fun m!5506767 () Bool)

(assert (=> bs!1035125 m!5506767))

(declare-fun m!5506769 () Bool)

(assert (=> bs!1035125 m!5506769))

(assert (=> bs!1035125 m!5506767))

(declare-fun m!5506771 () Bool)

(assert (=> bs!1035125 m!5506771))

(assert (=> bs!1035125 m!5505717))

(assert (=> b!4643096 d!1464151))

(declare-fun d!1464153 () Bool)

(declare-fun e!2896740 () Bool)

(assert (=> d!1464153 e!2896740))

(declare-fun res!1950643 () Bool)

(assert (=> d!1464153 (=> (not res!1950643) (not e!2896740))))

(declare-fun lt!1807597 () ListMap!4481)

(assert (=> d!1464153 (= res!1950643 (not (contains!14945 lt!1807597 key!4968)))))

(assert (=> d!1464153 (= lt!1807597 (ListMap!4482 (removePresrvNoDuplicatedKeys!301 (toList!5158 (+!1956 lt!1807018 (h!57916 oldBucket!40))) key!4968)))))

(assert (=> d!1464153 (= (-!610 (+!1956 lt!1807018 (h!57916 oldBucket!40)) key!4968) lt!1807597)))

(declare-fun b!4643515 () Bool)

(assert (=> b!4643515 (= e!2896740 (= ((_ map and) (content!8960 (keys!18320 (+!1956 lt!1807018 (h!57916 oldBucket!40)))) ((_ map not) (store ((as const (Array K!13165 Bool)) false) key!4968 true))) (content!8960 (keys!18320 lt!1807597))))))

(assert (= (and d!1464153 res!1950643) b!4643515))

(declare-fun m!5506773 () Bool)

(assert (=> d!1464153 m!5506773))

(declare-fun m!5506775 () Bool)

(assert (=> d!1464153 m!5506775))

(declare-fun m!5506777 () Bool)

(assert (=> b!4643515 m!5506777))

(assert (=> b!4643515 m!5505711))

(declare-fun m!5506779 () Bool)

(assert (=> b!4643515 m!5506779))

(assert (=> b!4643515 m!5506779))

(declare-fun m!5506781 () Bool)

(assert (=> b!4643515 m!5506781))

(assert (=> b!4643515 m!5506777))

(declare-fun m!5506783 () Bool)

(assert (=> b!4643515 m!5506783))

(assert (=> b!4643515 m!5506751))

(assert (=> b!4643096 d!1464153))

(declare-fun d!1464155 () Bool)

(declare-fun e!2896741 () Bool)

(assert (=> d!1464155 e!2896741))

(declare-fun res!1950645 () Bool)

(assert (=> d!1464155 (=> (not res!1950645) (not e!2896741))))

(declare-fun lt!1807598 () ListMap!4481)

(assert (=> d!1464155 (= res!1950645 (contains!14945 lt!1807598 (_1!29729 (h!57916 oldBucket!40))))))

(declare-fun lt!1807599 () List!51924)

(assert (=> d!1464155 (= lt!1807598 (ListMap!4482 lt!1807599))))

(declare-fun lt!1807600 () Unit!115761)

(declare-fun lt!1807601 () Unit!115761)

(assert (=> d!1464155 (= lt!1807600 lt!1807601)))

(assert (=> d!1464155 (= (getValueByKey!1572 lt!1807599 (_1!29729 (h!57916 oldBucket!40))) (Some!11779 (_2!29729 (h!57916 oldBucket!40))))))

(assert (=> d!1464155 (= lt!1807601 (lemmaContainsTupThenGetReturnValue!905 lt!1807599 (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40))))))

(assert (=> d!1464155 (= lt!1807599 (insertNoDuplicatedKeys!413 (toList!5158 lt!1807018) (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40))))))

(assert (=> d!1464155 (= (+!1956 lt!1807018 (h!57916 oldBucket!40)) lt!1807598)))

(declare-fun b!4643516 () Bool)

(declare-fun res!1950644 () Bool)

(assert (=> b!4643516 (=> (not res!1950644) (not e!2896741))))

(assert (=> b!4643516 (= res!1950644 (= (getValueByKey!1572 (toList!5158 lt!1807598) (_1!29729 (h!57916 oldBucket!40))) (Some!11779 (_2!29729 (h!57916 oldBucket!40)))))))

(declare-fun b!4643517 () Bool)

(assert (=> b!4643517 (= e!2896741 (contains!14947 (toList!5158 lt!1807598) (h!57916 oldBucket!40)))))

(assert (= (and d!1464155 res!1950645) b!4643516))

(assert (= (and b!4643516 res!1950644) b!4643517))

(declare-fun m!5506785 () Bool)

(assert (=> d!1464155 m!5506785))

(declare-fun m!5506787 () Bool)

(assert (=> d!1464155 m!5506787))

(declare-fun m!5506789 () Bool)

(assert (=> d!1464155 m!5506789))

(declare-fun m!5506791 () Bool)

(assert (=> d!1464155 m!5506791))

(declare-fun m!5506793 () Bool)

(assert (=> b!4643516 m!5506793))

(declare-fun m!5506795 () Bool)

(assert (=> b!4643517 m!5506795))

(assert (=> b!4643096 d!1464155))

(declare-fun d!1464157 () Bool)

(declare-fun e!2896742 () Bool)

(assert (=> d!1464157 e!2896742))

(declare-fun res!1950646 () Bool)

(assert (=> d!1464157 (=> (not res!1950646) (not e!2896742))))

(declare-fun lt!1807602 () ListMap!4481)

(assert (=> d!1464157 (= res!1950646 (not (contains!14945 lt!1807602 key!4968)))))

(assert (=> d!1464157 (= lt!1807602 (ListMap!4482 (removePresrvNoDuplicatedKeys!301 (toList!5158 lt!1807005) key!4968)))))

(assert (=> d!1464157 (= (-!610 lt!1807005 key!4968) lt!1807602)))

(declare-fun b!4643518 () Bool)

(assert (=> b!4643518 (= e!2896742 (= ((_ map and) (content!8960 (keys!18320 lt!1807005)) ((_ map not) (store ((as const (Array K!13165 Bool)) false) key!4968 true))) (content!8960 (keys!18320 lt!1807602))))))

(assert (= (and d!1464157 res!1950646) b!4643518))

(declare-fun m!5506797 () Bool)

(assert (=> d!1464157 m!5506797))

(declare-fun m!5506799 () Bool)

(assert (=> d!1464157 m!5506799))

(declare-fun m!5506801 () Bool)

(assert (=> b!4643518 m!5506801))

(declare-fun m!5506803 () Bool)

(assert (=> b!4643518 m!5506803))

(assert (=> b!4643518 m!5506803))

(declare-fun m!5506805 () Bool)

(assert (=> b!4643518 m!5506805))

(assert (=> b!4643518 m!5506801))

(declare-fun m!5506807 () Bool)

(assert (=> b!4643518 m!5506807))

(assert (=> b!4643518 m!5506751))

(assert (=> b!4643096 d!1464157))

(declare-fun d!1464159 () Bool)

(assert (=> d!1464159 (= (eq!897 lt!1807000 lt!1807017) (= (content!8958 (toList!5158 lt!1807000)) (content!8958 (toList!5158 lt!1807017))))))

(declare-fun bs!1035126 () Bool)

(assert (= bs!1035126 d!1464159))

(declare-fun m!5506809 () Bool)

(assert (=> bs!1035126 m!5506809))

(assert (=> bs!1035126 m!5505807))

(assert (=> b!4643108 d!1464159))

(declare-fun d!1464161 () Bool)

(assert (=> d!1464161 (= (eq!897 lt!1807008 lt!1807000) (= (content!8958 (toList!5158 lt!1807008)) (content!8958 (toList!5158 lt!1807000))))))

(declare-fun bs!1035127 () Bool)

(assert (= bs!1035127 d!1464161))

(declare-fun m!5506811 () Bool)

(assert (=> bs!1035127 m!5506811))

(assert (=> bs!1035127 m!5506809))

(assert (=> b!4643108 d!1464161))

(declare-fun d!1464163 () Bool)

(declare-fun e!2896743 () Bool)

(assert (=> d!1464163 e!2896743))

(declare-fun res!1950647 () Bool)

(assert (=> d!1464163 (=> (not res!1950647) (not e!2896743))))

(declare-fun lt!1807603 () ListMap!4481)

(assert (=> d!1464163 (= res!1950647 (not (contains!14945 lt!1807603 key!4968)))))

(assert (=> d!1464163 (= lt!1807603 (ListMap!4482 (removePresrvNoDuplicatedKeys!301 (toList!5158 lt!1806998) key!4968)))))

(assert (=> d!1464163 (= (-!610 lt!1806998 key!4968) lt!1807603)))

(declare-fun b!4643519 () Bool)

(assert (=> b!4643519 (= e!2896743 (= ((_ map and) (content!8960 (keys!18320 lt!1806998)) ((_ map not) (store ((as const (Array K!13165 Bool)) false) key!4968 true))) (content!8960 (keys!18320 lt!1807603))))))

(assert (= (and d!1464163 res!1950647) b!4643519))

(declare-fun m!5506813 () Bool)

(assert (=> d!1464163 m!5506813))

(declare-fun m!5506815 () Bool)

(assert (=> d!1464163 m!5506815))

(declare-fun m!5506817 () Bool)

(assert (=> b!4643519 m!5506817))

(assert (=> b!4643519 m!5505939))

(assert (=> b!4643519 m!5505939))

(declare-fun m!5506819 () Bool)

(assert (=> b!4643519 m!5506819))

(assert (=> b!4643519 m!5506817))

(declare-fun m!5506821 () Bool)

(assert (=> b!4643519 m!5506821))

(assert (=> b!4643519 m!5506751))

(assert (=> b!4643108 d!1464163))

(declare-fun d!1464165 () Bool)

(assert (=> d!1464165 (eq!897 (-!610 lt!1807005 key!4968) (-!610 lt!1806998 key!4968))))

(declare-fun lt!1807606 () Unit!115761)

(declare-fun choose!31850 (ListMap!4481 ListMap!4481 K!13165) Unit!115761)

(assert (=> d!1464165 (= lt!1807606 (choose!31850 lt!1807005 lt!1806998 key!4968))))

(assert (=> d!1464165 (eq!897 lt!1807005 lt!1806998)))

(assert (=> d!1464165 (= (lemmaRemovePreservesEq!58 lt!1807005 lt!1806998 key!4968) lt!1807606)))

(declare-fun bs!1035128 () Bool)

(assert (= bs!1035128 d!1464165))

(declare-fun m!5506823 () Bool)

(assert (=> bs!1035128 m!5506823))

(assert (=> bs!1035128 m!5505719))

(declare-fun m!5506825 () Bool)

(assert (=> bs!1035128 m!5506825))

(assert (=> bs!1035128 m!5505719))

(assert (=> bs!1035128 m!5505775))

(declare-fun m!5506827 () Bool)

(assert (=> bs!1035128 m!5506827))

(assert (=> bs!1035128 m!5505775))

(assert (=> b!4643108 d!1464165))

(declare-fun d!1464167 () Bool)

(declare-fun lt!1807607 () List!51924)

(assert (=> d!1464167 (not (containsKey!2656 lt!1807607 key!4968))))

(declare-fun e!2896744 () List!51924)

(assert (=> d!1464167 (= lt!1807607 e!2896744)))

(declare-fun c!794564 () Bool)

(assert (=> d!1464167 (= c!794564 (and ((_ is Cons!51800) (t!359014 oldBucket!40)) (= (_1!29729 (h!57916 (t!359014 oldBucket!40))) key!4968)))))

(assert (=> d!1464167 (noDuplicateKeys!1606 (t!359014 oldBucket!40))))

(assert (=> d!1464167 (= (removePairForKey!1229 (t!359014 oldBucket!40) key!4968) lt!1807607)))

(declare-fun b!4643523 () Bool)

(declare-fun e!2896745 () List!51924)

(assert (=> b!4643523 (= e!2896745 Nil!51800)))

(declare-fun b!4643521 () Bool)

(assert (=> b!4643521 (= e!2896744 e!2896745)))

(declare-fun c!794563 () Bool)

(assert (=> b!4643521 (= c!794563 ((_ is Cons!51800) (t!359014 oldBucket!40)))))

(declare-fun b!4643520 () Bool)

(assert (=> b!4643520 (= e!2896744 (t!359014 (t!359014 oldBucket!40)))))

(declare-fun b!4643522 () Bool)

(assert (=> b!4643522 (= e!2896745 (Cons!51800 (h!57916 (t!359014 oldBucket!40)) (removePairForKey!1229 (t!359014 (t!359014 oldBucket!40)) key!4968)))))

(assert (= (and d!1464167 c!794564) b!4643520))

(assert (= (and d!1464167 (not c!794564)) b!4643521))

(assert (= (and b!4643521 c!794563) b!4643522))

(assert (= (and b!4643521 (not c!794563)) b!4643523))

(declare-fun m!5506829 () Bool)

(assert (=> d!1464167 m!5506829))

(assert (=> d!1464167 m!5505883))

(declare-fun m!5506831 () Bool)

(assert (=> b!4643522 m!5506831))

(assert (=> b!4643097 d!1464167))

(declare-fun bs!1035129 () Bool)

(declare-fun d!1464169 () Bool)

(assert (= bs!1035129 (and d!1464169 b!4643490)))

(declare-fun lambda!196901 () Int)

(assert (=> bs!1035129 (not (= lambda!196901 lambda!196895))))

(declare-fun bs!1035130 () Bool)

(assert (= bs!1035130 (and d!1464169 b!4643421)))

(assert (=> bs!1035130 (not (= lambda!196901 lambda!196880))))

(declare-fun bs!1035131 () Bool)

(assert (= bs!1035131 (and d!1464169 b!4643489)))

(assert (=> bs!1035131 (not (= lambda!196901 lambda!196893))))

(declare-fun bs!1035132 () Bool)

(assert (= bs!1035132 (and d!1464169 b!4643420)))

(assert (=> bs!1035132 (not (= lambda!196901 lambda!196878))))

(declare-fun bs!1035133 () Bool)

(assert (= bs!1035133 (and d!1464169 b!4643469)))

(assert (=> bs!1035133 (not (= lambda!196901 lambda!196891))))

(declare-fun bs!1035134 () Bool)

(assert (= bs!1035134 (and d!1464169 d!1464139)))

(assert (=> bs!1035134 (not (= lambda!196901 lambda!196900))))

(declare-fun bs!1035135 () Bool)

(assert (= bs!1035135 (and d!1464169 d!1464131)))

(assert (=> bs!1035135 (not (= lambda!196901 lambda!196896))))

(assert (=> bs!1035133 (not (= lambda!196901 lambda!196890))))

(assert (=> bs!1035129 (not (= lambda!196901 lambda!196894))))

(declare-fun bs!1035136 () Bool)

(assert (= bs!1035136 (and d!1464169 d!1464037)))

(assert (=> bs!1035136 (not (= lambda!196901 lambda!196883))))

(declare-fun bs!1035137 () Bool)

(assert (= bs!1035137 (and d!1464169 d!1464125)))

(assert (=> bs!1035137 (not (= lambda!196901 lambda!196892))))

(declare-fun bs!1035138 () Bool)

(assert (= bs!1035138 (and d!1464169 d!1463985)))

(assert (=> bs!1035138 (= lambda!196901 lambda!196778)))

(declare-fun bs!1035139 () Bool)

(assert (= bs!1035139 (and d!1464169 b!4643509)))

(assert (=> bs!1035139 (not (= lambda!196901 lambda!196898))))

(assert (=> bs!1035130 (not (= lambda!196901 lambda!196879))))

(assert (=> bs!1035139 (not (= lambda!196901 lambda!196899))))

(declare-fun bs!1035140 () Bool)

(assert (= bs!1035140 (and d!1464169 b!4643468)))

(assert (=> bs!1035140 (not (= lambda!196901 lambda!196889))))

(declare-fun bs!1035141 () Bool)

(assert (= bs!1035141 (and d!1464169 b!4643508)))

(assert (=> bs!1035141 (not (= lambda!196901 lambda!196897))))

(assert (=> d!1464169 true))

(assert (=> d!1464169 true))

(assert (=> d!1464169 (= (allKeysSameHash!1460 oldBucket!40 hash!414 hashF!1389) (forall!10960 oldBucket!40 lambda!196901))))

(declare-fun bs!1035142 () Bool)

(assert (= bs!1035142 d!1464169))

(declare-fun m!5506833 () Bool)

(assert (=> bs!1035142 m!5506833))

(assert (=> b!4643099 d!1464169))

(declare-fun d!1464171 () Bool)

(assert (=> d!1464171 (= (eq!897 lt!1806990 (+!1956 lt!1807003 lt!1807006)) (= (content!8958 (toList!5158 lt!1806990)) (content!8958 (toList!5158 (+!1956 lt!1807003 lt!1807006)))))))

(declare-fun bs!1035143 () Bool)

(assert (= bs!1035143 d!1464171))

(assert (=> bs!1035143 m!5505805))

(declare-fun m!5506835 () Bool)

(assert (=> bs!1035143 m!5506835))

(assert (=> b!4643109 d!1464171))

(declare-fun d!1464173 () Bool)

(declare-fun e!2896746 () Bool)

(assert (=> d!1464173 e!2896746))

(declare-fun res!1950649 () Bool)

(assert (=> d!1464173 (=> (not res!1950649) (not e!2896746))))

(declare-fun lt!1807608 () ListMap!4481)

(assert (=> d!1464173 (= res!1950649 (contains!14945 lt!1807608 (_1!29729 lt!1807006)))))

(declare-fun lt!1807609 () List!51924)

(assert (=> d!1464173 (= lt!1807608 (ListMap!4482 lt!1807609))))

(declare-fun lt!1807610 () Unit!115761)

(declare-fun lt!1807611 () Unit!115761)

(assert (=> d!1464173 (= lt!1807610 lt!1807611)))

(assert (=> d!1464173 (= (getValueByKey!1572 lt!1807609 (_1!29729 lt!1807006)) (Some!11779 (_2!29729 lt!1807006)))))

(assert (=> d!1464173 (= lt!1807611 (lemmaContainsTupThenGetReturnValue!905 lt!1807609 (_1!29729 lt!1807006) (_2!29729 lt!1807006)))))

(assert (=> d!1464173 (= lt!1807609 (insertNoDuplicatedKeys!413 (toList!5158 lt!1807003) (_1!29729 lt!1807006) (_2!29729 lt!1807006)))))

(assert (=> d!1464173 (= (+!1956 lt!1807003 lt!1807006) lt!1807608)))

(declare-fun b!4643524 () Bool)

(declare-fun res!1950648 () Bool)

(assert (=> b!4643524 (=> (not res!1950648) (not e!2896746))))

(assert (=> b!4643524 (= res!1950648 (= (getValueByKey!1572 (toList!5158 lt!1807608) (_1!29729 lt!1807006)) (Some!11779 (_2!29729 lt!1807006))))))

(declare-fun b!4643525 () Bool)

(assert (=> b!4643525 (= e!2896746 (contains!14947 (toList!5158 lt!1807608) lt!1807006))))

(assert (= (and d!1464173 res!1950649) b!4643524))

(assert (= (and b!4643524 res!1950648) b!4643525))

(declare-fun m!5506837 () Bool)

(assert (=> d!1464173 m!5506837))

(declare-fun m!5506839 () Bool)

(assert (=> d!1464173 m!5506839))

(declare-fun m!5506841 () Bool)

(assert (=> d!1464173 m!5506841))

(declare-fun m!5506843 () Bool)

(assert (=> d!1464173 m!5506843))

(declare-fun m!5506845 () Bool)

(assert (=> b!4643524 m!5506845))

(declare-fun m!5506847 () Bool)

(assert (=> b!4643525 m!5506847))

(assert (=> b!4643109 d!1464173))

(declare-fun bs!1035144 () Bool)

(declare-fun d!1464175 () Bool)

(assert (= bs!1035144 (and d!1464175 d!1463987)))

(declare-fun lambda!196902 () Int)

(assert (=> bs!1035144 (= lambda!196902 lambda!196781)))

(declare-fun bs!1035145 () Bool)

(assert (= bs!1035145 (and d!1464175 d!1463981)))

(assert (=> bs!1035145 (= lambda!196902 lambda!196775)))

(declare-fun bs!1035146 () Bool)

(assert (= bs!1035146 (and d!1464175 d!1464031)))

(assert (=> bs!1035146 (= lambda!196902 lambda!196828)))

(declare-fun bs!1035147 () Bool)

(assert (= bs!1035147 (and d!1464175 d!1464007)))

(assert (=> bs!1035147 (= lambda!196902 lambda!196825)))

(declare-fun bs!1035148 () Bool)

(assert (= bs!1035148 (and d!1464175 d!1464103)))

(assert (=> bs!1035148 (= lambda!196902 lambda!196887)))

(declare-fun bs!1035149 () Bool)

(assert (= bs!1035149 (and d!1464175 b!4643095)))

(assert (=> bs!1035149 (= lambda!196902 lambda!196762)))

(declare-fun bs!1035150 () Bool)

(assert (= bs!1035150 (and d!1464175 d!1464119)))

(assert (=> bs!1035150 (= lambda!196902 lambda!196888)))

(declare-fun lt!1807612 () ListMap!4481)

(assert (=> d!1464175 (invariantList!1270 (toList!5158 lt!1807612))))

(declare-fun e!2896747 () ListMap!4481)

(assert (=> d!1464175 (= lt!1807612 e!2896747)))

(declare-fun c!794565 () Bool)

(assert (=> d!1464175 (= c!794565 ((_ is Cons!51801) (Cons!51801 (tuple2!52873 hash!414 lt!1807001) Nil!51801)))))

(assert (=> d!1464175 (forall!10959 (Cons!51801 (tuple2!52873 hash!414 lt!1807001) Nil!51801) lambda!196902)))

(assert (=> d!1464175 (= (extractMap!1662 (Cons!51801 (tuple2!52873 hash!414 lt!1807001) Nil!51801)) lt!1807612)))

(declare-fun b!4643526 () Bool)

(assert (=> b!4643526 (= e!2896747 (addToMapMapFromBucket!1065 (_2!29730 (h!57917 (Cons!51801 (tuple2!52873 hash!414 lt!1807001) Nil!51801))) (extractMap!1662 (t!359015 (Cons!51801 (tuple2!52873 hash!414 lt!1807001) Nil!51801)))))))

(declare-fun b!4643527 () Bool)

(assert (=> b!4643527 (= e!2896747 (ListMap!4482 Nil!51800))))

(assert (= (and d!1464175 c!794565) b!4643526))

(assert (= (and d!1464175 (not c!794565)) b!4643527))

(declare-fun m!5506849 () Bool)

(assert (=> d!1464175 m!5506849))

(declare-fun m!5506851 () Bool)

(assert (=> d!1464175 m!5506851))

(declare-fun m!5506853 () Bool)

(assert (=> b!4643526 m!5506853))

(assert (=> b!4643526 m!5506853))

(declare-fun m!5506855 () Bool)

(assert (=> b!4643526 m!5506855))

(assert (=> b!4643109 d!1464175))

(declare-fun bs!1035151 () Bool)

(declare-fun d!1464177 () Bool)

(assert (= bs!1035151 (and d!1464177 d!1463987)))

(declare-fun lambda!196903 () Int)

(assert (=> bs!1035151 (= lambda!196903 lambda!196781)))

(declare-fun bs!1035152 () Bool)

(assert (= bs!1035152 (and d!1464177 d!1463981)))

(assert (=> bs!1035152 (= lambda!196903 lambda!196775)))

(declare-fun bs!1035153 () Bool)

(assert (= bs!1035153 (and d!1464177 d!1464031)))

(assert (=> bs!1035153 (= lambda!196903 lambda!196828)))

(declare-fun bs!1035154 () Bool)

(assert (= bs!1035154 (and d!1464177 d!1464103)))

(assert (=> bs!1035154 (= lambda!196903 lambda!196887)))

(declare-fun bs!1035155 () Bool)

(assert (= bs!1035155 (and d!1464177 b!4643095)))

(assert (=> bs!1035155 (= lambda!196903 lambda!196762)))

(declare-fun bs!1035156 () Bool)

(assert (= bs!1035156 (and d!1464177 d!1464119)))

(assert (=> bs!1035156 (= lambda!196903 lambda!196888)))

(declare-fun bs!1035157 () Bool)

(assert (= bs!1035157 (and d!1464177 d!1464175)))

(assert (=> bs!1035157 (= lambda!196903 lambda!196902)))

(declare-fun bs!1035158 () Bool)

(assert (= bs!1035158 (and d!1464177 d!1464007)))

(assert (=> bs!1035158 (= lambda!196903 lambda!196825)))

(declare-fun lt!1807613 () ListMap!4481)

(assert (=> d!1464177 (invariantList!1270 (toList!5158 lt!1807613))))

(declare-fun e!2896748 () ListMap!4481)

(assert (=> d!1464177 (= lt!1807613 e!2896748)))

(declare-fun c!794566 () Bool)

(assert (=> d!1464177 (= c!794566 ((_ is Cons!51801) (Cons!51801 (tuple2!52873 hash!414 newBucket!224) Nil!51801)))))

(assert (=> d!1464177 (forall!10959 (Cons!51801 (tuple2!52873 hash!414 newBucket!224) Nil!51801) lambda!196903)))

(assert (=> d!1464177 (= (extractMap!1662 (Cons!51801 (tuple2!52873 hash!414 newBucket!224) Nil!51801)) lt!1807613)))

(declare-fun b!4643528 () Bool)

(assert (=> b!4643528 (= e!2896748 (addToMapMapFromBucket!1065 (_2!29730 (h!57917 (Cons!51801 (tuple2!52873 hash!414 newBucket!224) Nil!51801))) (extractMap!1662 (t!359015 (Cons!51801 (tuple2!52873 hash!414 newBucket!224) Nil!51801)))))))

(declare-fun b!4643529 () Bool)

(assert (=> b!4643529 (= e!2896748 (ListMap!4482 Nil!51800))))

(assert (= (and d!1464177 c!794566) b!4643528))

(assert (= (and d!1464177 (not c!794566)) b!4643529))

(declare-fun m!5506857 () Bool)

(assert (=> d!1464177 m!5506857))

(declare-fun m!5506859 () Bool)

(assert (=> d!1464177 m!5506859))

(declare-fun m!5506861 () Bool)

(assert (=> b!4643528 m!5506861))

(assert (=> b!4643528 m!5506861))

(declare-fun m!5506863 () Bool)

(assert (=> b!4643528 m!5506863))

(assert (=> b!4643109 d!1464177))

(declare-fun bs!1035159 () Bool)

(declare-fun b!4643533 () Bool)

(assert (= bs!1035159 (and b!4643533 b!4643490)))

(declare-fun lambda!196904 () Int)

(assert (=> bs!1035159 (= (= lt!1806999 lt!1807547) (= lambda!196904 lambda!196895))))

(declare-fun bs!1035160 () Bool)

(assert (= bs!1035160 (and b!4643533 b!4643421)))

(assert (=> bs!1035160 (= (= lt!1806999 lt!1807459) (= lambda!196904 lambda!196880))))

(declare-fun bs!1035161 () Bool)

(assert (= bs!1035161 (and b!4643533 b!4643489)))

(assert (=> bs!1035161 (= (= lt!1806999 (ListMap!4482 Nil!51800)) (= lambda!196904 lambda!196893))))

(declare-fun bs!1035162 () Bool)

(assert (= bs!1035162 (and b!4643533 b!4643420)))

(assert (=> bs!1035162 (= (= lt!1806999 (ListMap!4482 Nil!51800)) (= lambda!196904 lambda!196878))))

(declare-fun bs!1035163 () Bool)

(assert (= bs!1035163 (and b!4643533 b!4643469)))

(assert (=> bs!1035163 (= (= lt!1806999 lt!1807524) (= lambda!196904 lambda!196891))))

(declare-fun bs!1035164 () Bool)

(assert (= bs!1035164 (and b!4643533 d!1464131)))

(assert (=> bs!1035164 (= (= lt!1806999 lt!1807555) (= lambda!196904 lambda!196896))))

(assert (=> bs!1035163 (= (= lt!1806999 (ListMap!4482 Nil!51800)) (= lambda!196904 lambda!196890))))

(assert (=> bs!1035159 (= (= lt!1806999 (ListMap!4482 Nil!51800)) (= lambda!196904 lambda!196894))))

(declare-fun bs!1035165 () Bool)

(assert (= bs!1035165 (and b!4643533 d!1464037)))

(assert (=> bs!1035165 (= (= lt!1806999 lt!1807467) (= lambda!196904 lambda!196883))))

(declare-fun bs!1035166 () Bool)

(assert (= bs!1035166 (and b!4643533 d!1464125)))

(assert (=> bs!1035166 (= (= lt!1806999 lt!1807532) (= lambda!196904 lambda!196892))))

(declare-fun bs!1035167 () Bool)

(assert (= bs!1035167 (and b!4643533 d!1463985)))

(assert (=> bs!1035167 (not (= lambda!196904 lambda!196778))))

(declare-fun bs!1035168 () Bool)

(assert (= bs!1035168 (and b!4643533 b!4643509)))

(assert (=> bs!1035168 (= (= lt!1806999 (ListMap!4482 Nil!51800)) (= lambda!196904 lambda!196898))))

(assert (=> bs!1035160 (= (= lt!1806999 (ListMap!4482 Nil!51800)) (= lambda!196904 lambda!196879))))

(assert (=> bs!1035168 (= (= lt!1806999 lt!1807570) (= lambda!196904 lambda!196899))))

(declare-fun bs!1035169 () Bool)

(assert (= bs!1035169 (and b!4643533 b!4643468)))

(assert (=> bs!1035169 (= (= lt!1806999 (ListMap!4482 Nil!51800)) (= lambda!196904 lambda!196889))))

(declare-fun bs!1035170 () Bool)

(assert (= bs!1035170 (and b!4643533 b!4643508)))

(assert (=> bs!1035170 (= (= lt!1806999 (ListMap!4482 Nil!51800)) (= lambda!196904 lambda!196897))))

(declare-fun bs!1035171 () Bool)

(assert (= bs!1035171 (and b!4643533 d!1464139)))

(assert (=> bs!1035171 (= (= lt!1806999 lt!1807578) (= lambda!196904 lambda!196900))))

(declare-fun bs!1035172 () Bool)

(assert (= bs!1035172 (and b!4643533 d!1464169)))

(assert (=> bs!1035172 (not (= lambda!196904 lambda!196901))))

(assert (=> b!4643533 true))

(declare-fun bs!1035173 () Bool)

(declare-fun b!4643534 () Bool)

(assert (= bs!1035173 (and b!4643534 b!4643490)))

(declare-fun lambda!196905 () Int)

(assert (=> bs!1035173 (= (= lt!1806999 lt!1807547) (= lambda!196905 lambda!196895))))

(declare-fun bs!1035174 () Bool)

(assert (= bs!1035174 (and b!4643534 b!4643489)))

(assert (=> bs!1035174 (= (= lt!1806999 (ListMap!4482 Nil!51800)) (= lambda!196905 lambda!196893))))

(declare-fun bs!1035175 () Bool)

(assert (= bs!1035175 (and b!4643534 b!4643420)))

(assert (=> bs!1035175 (= (= lt!1806999 (ListMap!4482 Nil!51800)) (= lambda!196905 lambda!196878))))

(declare-fun bs!1035176 () Bool)

(assert (= bs!1035176 (and b!4643534 b!4643469)))

(assert (=> bs!1035176 (= (= lt!1806999 lt!1807524) (= lambda!196905 lambda!196891))))

(declare-fun bs!1035177 () Bool)

(assert (= bs!1035177 (and b!4643534 d!1464131)))

(assert (=> bs!1035177 (= (= lt!1806999 lt!1807555) (= lambda!196905 lambda!196896))))

(assert (=> bs!1035176 (= (= lt!1806999 (ListMap!4482 Nil!51800)) (= lambda!196905 lambda!196890))))

(assert (=> bs!1035173 (= (= lt!1806999 (ListMap!4482 Nil!51800)) (= lambda!196905 lambda!196894))))

(declare-fun bs!1035178 () Bool)

(assert (= bs!1035178 (and b!4643534 d!1464037)))

(assert (=> bs!1035178 (= (= lt!1806999 lt!1807467) (= lambda!196905 lambda!196883))))

(declare-fun bs!1035179 () Bool)

(assert (= bs!1035179 (and b!4643534 d!1464125)))

(assert (=> bs!1035179 (= (= lt!1806999 lt!1807532) (= lambda!196905 lambda!196892))))

(declare-fun bs!1035180 () Bool)

(assert (= bs!1035180 (and b!4643534 d!1463985)))

(assert (=> bs!1035180 (not (= lambda!196905 lambda!196778))))

(declare-fun bs!1035181 () Bool)

(assert (= bs!1035181 (and b!4643534 b!4643509)))

(assert (=> bs!1035181 (= (= lt!1806999 (ListMap!4482 Nil!51800)) (= lambda!196905 lambda!196898))))

(declare-fun bs!1035182 () Bool)

(assert (= bs!1035182 (and b!4643534 b!4643421)))

(assert (=> bs!1035182 (= (= lt!1806999 (ListMap!4482 Nil!51800)) (= lambda!196905 lambda!196879))))

(assert (=> bs!1035181 (= (= lt!1806999 lt!1807570) (= lambda!196905 lambda!196899))))

(declare-fun bs!1035183 () Bool)

(assert (= bs!1035183 (and b!4643534 b!4643468)))

(assert (=> bs!1035183 (= (= lt!1806999 (ListMap!4482 Nil!51800)) (= lambda!196905 lambda!196889))))

(declare-fun bs!1035184 () Bool)

(assert (= bs!1035184 (and b!4643534 b!4643508)))

(assert (=> bs!1035184 (= (= lt!1806999 (ListMap!4482 Nil!51800)) (= lambda!196905 lambda!196897))))

(assert (=> bs!1035182 (= (= lt!1806999 lt!1807459) (= lambda!196905 lambda!196880))))

(declare-fun bs!1035185 () Bool)

(assert (= bs!1035185 (and b!4643534 b!4643533)))

(assert (=> bs!1035185 (= lambda!196905 lambda!196904)))

(declare-fun bs!1035186 () Bool)

(assert (= bs!1035186 (and b!4643534 d!1464139)))

(assert (=> bs!1035186 (= (= lt!1806999 lt!1807578) (= lambda!196905 lambda!196900))))

(declare-fun bs!1035187 () Bool)

(assert (= bs!1035187 (and b!4643534 d!1464169)))

(assert (=> bs!1035187 (not (= lambda!196905 lambda!196901))))

(assert (=> b!4643534 true))

(declare-fun lambda!196906 () Int)

(declare-fun lt!1807621 () ListMap!4481)

(assert (=> b!4643534 (= (= lt!1807621 lt!1806999) (= lambda!196906 lambda!196905))))

(assert (=> bs!1035173 (= (= lt!1807621 lt!1807547) (= lambda!196906 lambda!196895))))

(assert (=> bs!1035174 (= (= lt!1807621 (ListMap!4482 Nil!51800)) (= lambda!196906 lambda!196893))))

(assert (=> bs!1035175 (= (= lt!1807621 (ListMap!4482 Nil!51800)) (= lambda!196906 lambda!196878))))

(assert (=> bs!1035176 (= (= lt!1807621 lt!1807524) (= lambda!196906 lambda!196891))))

(assert (=> bs!1035177 (= (= lt!1807621 lt!1807555) (= lambda!196906 lambda!196896))))

(assert (=> bs!1035176 (= (= lt!1807621 (ListMap!4482 Nil!51800)) (= lambda!196906 lambda!196890))))

(assert (=> bs!1035173 (= (= lt!1807621 (ListMap!4482 Nil!51800)) (= lambda!196906 lambda!196894))))

(assert (=> bs!1035178 (= (= lt!1807621 lt!1807467) (= lambda!196906 lambda!196883))))

(assert (=> bs!1035179 (= (= lt!1807621 lt!1807532) (= lambda!196906 lambda!196892))))

(assert (=> bs!1035180 (not (= lambda!196906 lambda!196778))))

(assert (=> bs!1035181 (= (= lt!1807621 (ListMap!4482 Nil!51800)) (= lambda!196906 lambda!196898))))

(assert (=> bs!1035182 (= (= lt!1807621 (ListMap!4482 Nil!51800)) (= lambda!196906 lambda!196879))))

(assert (=> bs!1035181 (= (= lt!1807621 lt!1807570) (= lambda!196906 lambda!196899))))

(assert (=> bs!1035183 (= (= lt!1807621 (ListMap!4482 Nil!51800)) (= lambda!196906 lambda!196889))))

(assert (=> bs!1035184 (= (= lt!1807621 (ListMap!4482 Nil!51800)) (= lambda!196906 lambda!196897))))

(assert (=> bs!1035182 (= (= lt!1807621 lt!1807459) (= lambda!196906 lambda!196880))))

(assert (=> bs!1035185 (= (= lt!1807621 lt!1806999) (= lambda!196906 lambda!196904))))

(assert (=> bs!1035186 (= (= lt!1807621 lt!1807578) (= lambda!196906 lambda!196900))))

(assert (=> bs!1035187 (not (= lambda!196906 lambda!196901))))

(assert (=> b!4643534 true))

(declare-fun bs!1035188 () Bool)

(declare-fun d!1464179 () Bool)

(assert (= bs!1035188 (and d!1464179 b!4643534)))

(declare-fun lt!1807629 () ListMap!4481)

(declare-fun lambda!196907 () Int)

(assert (=> bs!1035188 (= (= lt!1807629 lt!1806999) (= lambda!196907 lambda!196905))))

(declare-fun bs!1035189 () Bool)

(assert (= bs!1035189 (and d!1464179 b!4643490)))

(assert (=> bs!1035189 (= (= lt!1807629 lt!1807547) (= lambda!196907 lambda!196895))))

(assert (=> bs!1035188 (= (= lt!1807629 lt!1807621) (= lambda!196907 lambda!196906))))

(declare-fun bs!1035190 () Bool)

(assert (= bs!1035190 (and d!1464179 b!4643489)))

(assert (=> bs!1035190 (= (= lt!1807629 (ListMap!4482 Nil!51800)) (= lambda!196907 lambda!196893))))

(declare-fun bs!1035191 () Bool)

(assert (= bs!1035191 (and d!1464179 b!4643420)))

(assert (=> bs!1035191 (= (= lt!1807629 (ListMap!4482 Nil!51800)) (= lambda!196907 lambda!196878))))

(declare-fun bs!1035192 () Bool)

(assert (= bs!1035192 (and d!1464179 b!4643469)))

(assert (=> bs!1035192 (= (= lt!1807629 lt!1807524) (= lambda!196907 lambda!196891))))

(declare-fun bs!1035193 () Bool)

(assert (= bs!1035193 (and d!1464179 d!1464131)))

(assert (=> bs!1035193 (= (= lt!1807629 lt!1807555) (= lambda!196907 lambda!196896))))

(assert (=> bs!1035192 (= (= lt!1807629 (ListMap!4482 Nil!51800)) (= lambda!196907 lambda!196890))))

(assert (=> bs!1035189 (= (= lt!1807629 (ListMap!4482 Nil!51800)) (= lambda!196907 lambda!196894))))

(declare-fun bs!1035194 () Bool)

(assert (= bs!1035194 (and d!1464179 d!1464037)))

(assert (=> bs!1035194 (= (= lt!1807629 lt!1807467) (= lambda!196907 lambda!196883))))

(declare-fun bs!1035195 () Bool)

(assert (= bs!1035195 (and d!1464179 d!1464125)))

(assert (=> bs!1035195 (= (= lt!1807629 lt!1807532) (= lambda!196907 lambda!196892))))

(declare-fun bs!1035196 () Bool)

(assert (= bs!1035196 (and d!1464179 d!1463985)))

(assert (=> bs!1035196 (not (= lambda!196907 lambda!196778))))

(declare-fun bs!1035197 () Bool)

(assert (= bs!1035197 (and d!1464179 b!4643509)))

(assert (=> bs!1035197 (= (= lt!1807629 (ListMap!4482 Nil!51800)) (= lambda!196907 lambda!196898))))

(declare-fun bs!1035198 () Bool)

(assert (= bs!1035198 (and d!1464179 b!4643421)))

(assert (=> bs!1035198 (= (= lt!1807629 (ListMap!4482 Nil!51800)) (= lambda!196907 lambda!196879))))

(assert (=> bs!1035197 (= (= lt!1807629 lt!1807570) (= lambda!196907 lambda!196899))))

(declare-fun bs!1035199 () Bool)

(assert (= bs!1035199 (and d!1464179 b!4643468)))

(assert (=> bs!1035199 (= (= lt!1807629 (ListMap!4482 Nil!51800)) (= lambda!196907 lambda!196889))))

(declare-fun bs!1035200 () Bool)

(assert (= bs!1035200 (and d!1464179 b!4643508)))

(assert (=> bs!1035200 (= (= lt!1807629 (ListMap!4482 Nil!51800)) (= lambda!196907 lambda!196897))))

(assert (=> bs!1035198 (= (= lt!1807629 lt!1807459) (= lambda!196907 lambda!196880))))

(declare-fun bs!1035201 () Bool)

(assert (= bs!1035201 (and d!1464179 b!4643533)))

(assert (=> bs!1035201 (= (= lt!1807629 lt!1806999) (= lambda!196907 lambda!196904))))

(declare-fun bs!1035202 () Bool)

(assert (= bs!1035202 (and d!1464179 d!1464139)))

(assert (=> bs!1035202 (= (= lt!1807629 lt!1807578) (= lambda!196907 lambda!196900))))

(declare-fun bs!1035203 () Bool)

(assert (= bs!1035203 (and d!1464179 d!1464169)))

(assert (=> bs!1035203 (not (= lambda!196907 lambda!196901))))

(assert (=> d!1464179 true))

(declare-fun b!4643530 () Bool)

(declare-fun e!2896749 () Bool)

(assert (=> b!4643530 (= e!2896749 (forall!10960 (toList!5158 lt!1806999) lambda!196906))))

(declare-fun c!794567 () Bool)

(declare-fun call!324192 () Bool)

(declare-fun bm!324186 () Bool)

(assert (=> bm!324186 (= call!324192 (forall!10960 (toList!5158 lt!1806999) (ite c!794567 lambda!196904 lambda!196906)))))

(declare-fun bm!324187 () Bool)

(declare-fun call!324191 () Unit!115761)

(assert (=> bm!324187 (= call!324191 (lemmaContainsAllItsOwnKeys!572 lt!1806999))))

(declare-fun b!4643531 () Bool)

(declare-fun e!2896750 () Bool)

(assert (=> b!4643531 (= e!2896750 (invariantList!1270 (toList!5158 lt!1807629)))))

(declare-fun b!4643532 () Bool)

(declare-fun res!1950650 () Bool)

(assert (=> b!4643532 (=> (not res!1950650) (not e!2896750))))

(assert (=> b!4643532 (= res!1950650 (forall!10960 (toList!5158 lt!1806999) lambda!196907))))

(declare-fun e!2896751 () ListMap!4481)

(assert (=> b!4643533 (= e!2896751 lt!1806999)))

(declare-fun lt!1807631 () Unit!115761)

(assert (=> b!4643533 (= lt!1807631 call!324191)))

(assert (=> b!4643533 call!324192))

(declare-fun lt!1807626 () Unit!115761)

(assert (=> b!4643533 (= lt!1807626 lt!1807631)))

(declare-fun call!324193 () Bool)

(assert (=> b!4643533 call!324193))

(declare-fun lt!1807616 () Unit!115761)

(declare-fun Unit!115872 () Unit!115761)

(assert (=> b!4643533 (= lt!1807616 Unit!115872)))

(assert (=> b!4643534 (= e!2896751 lt!1807621)))

(declare-fun lt!1807627 () ListMap!4481)

(assert (=> b!4643534 (= lt!1807627 (+!1956 lt!1806999 (h!57916 oldBucket!40)))))

(assert (=> b!4643534 (= lt!1807621 (addToMapMapFromBucket!1065 (t!359014 oldBucket!40) (+!1956 lt!1806999 (h!57916 oldBucket!40))))))

(declare-fun lt!1807634 () Unit!115761)

(assert (=> b!4643534 (= lt!1807634 call!324191)))

(assert (=> b!4643534 call!324193))

(declare-fun lt!1807617 () Unit!115761)

(assert (=> b!4643534 (= lt!1807617 lt!1807634)))

(assert (=> b!4643534 (forall!10960 (toList!5158 lt!1807627) lambda!196906)))

(declare-fun lt!1807628 () Unit!115761)

(declare-fun Unit!115873 () Unit!115761)

(assert (=> b!4643534 (= lt!1807628 Unit!115873)))

(assert (=> b!4643534 (forall!10960 (t!359014 oldBucket!40) lambda!196906)))

(declare-fun lt!1807614 () Unit!115761)

(declare-fun Unit!115874 () Unit!115761)

(assert (=> b!4643534 (= lt!1807614 Unit!115874)))

(declare-fun lt!1807619 () Unit!115761)

(declare-fun Unit!115875 () Unit!115761)

(assert (=> b!4643534 (= lt!1807619 Unit!115875)))

(declare-fun lt!1807620 () Unit!115761)

(assert (=> b!4643534 (= lt!1807620 (forallContained!3186 (toList!5158 lt!1807627) lambda!196906 (h!57916 oldBucket!40)))))

(assert (=> b!4643534 (contains!14945 lt!1807627 (_1!29729 (h!57916 oldBucket!40)))))

(declare-fun lt!1807615 () Unit!115761)

(declare-fun Unit!115876 () Unit!115761)

(assert (=> b!4643534 (= lt!1807615 Unit!115876)))

(assert (=> b!4643534 (contains!14945 lt!1807621 (_1!29729 (h!57916 oldBucket!40)))))

(declare-fun lt!1807623 () Unit!115761)

(declare-fun Unit!115877 () Unit!115761)

(assert (=> b!4643534 (= lt!1807623 Unit!115877)))

(assert (=> b!4643534 (forall!10960 oldBucket!40 lambda!196906)))

(declare-fun lt!1807625 () Unit!115761)

(declare-fun Unit!115878 () Unit!115761)

(assert (=> b!4643534 (= lt!1807625 Unit!115878)))

(assert (=> b!4643534 (forall!10960 (toList!5158 lt!1807627) lambda!196906)))

(declare-fun lt!1807632 () Unit!115761)

(declare-fun Unit!115879 () Unit!115761)

(assert (=> b!4643534 (= lt!1807632 Unit!115879)))

(declare-fun lt!1807618 () Unit!115761)

(declare-fun Unit!115880 () Unit!115761)

(assert (=> b!4643534 (= lt!1807618 Unit!115880)))

(declare-fun lt!1807622 () Unit!115761)

(assert (=> b!4643534 (= lt!1807622 (addForallContainsKeyThenBeforeAdding!571 lt!1806999 lt!1807621 (_1!29729 (h!57916 oldBucket!40)) (_2!29729 (h!57916 oldBucket!40))))))

(assert (=> b!4643534 (forall!10960 (toList!5158 lt!1806999) lambda!196906)))

(declare-fun lt!1807630 () Unit!115761)

(assert (=> b!4643534 (= lt!1807630 lt!1807622)))

(assert (=> b!4643534 call!324192))

(declare-fun lt!1807624 () Unit!115761)

(declare-fun Unit!115881 () Unit!115761)

(assert (=> b!4643534 (= lt!1807624 Unit!115881)))

(declare-fun res!1950652 () Bool)

(assert (=> b!4643534 (= res!1950652 (forall!10960 oldBucket!40 lambda!196906))))

(assert (=> b!4643534 (=> (not res!1950652) (not e!2896749))))

(assert (=> b!4643534 e!2896749))

(declare-fun lt!1807633 () Unit!115761)

(declare-fun Unit!115882 () Unit!115761)

(assert (=> b!4643534 (= lt!1807633 Unit!115882)))

(assert (=> d!1464179 e!2896750))

(declare-fun res!1950651 () Bool)

(assert (=> d!1464179 (=> (not res!1950651) (not e!2896750))))

(assert (=> d!1464179 (= res!1950651 (forall!10960 oldBucket!40 lambda!196907))))

(assert (=> d!1464179 (= lt!1807629 e!2896751)))

(assert (=> d!1464179 (= c!794567 ((_ is Nil!51800) oldBucket!40))))

(assert (=> d!1464179 (noDuplicateKeys!1606 oldBucket!40)))

(assert (=> d!1464179 (= (addToMapMapFromBucket!1065 oldBucket!40 lt!1806999) lt!1807629)))

(declare-fun bm!324188 () Bool)

(assert (=> bm!324188 (= call!324193 (forall!10960 (toList!5158 lt!1806999) (ite c!794567 lambda!196904 lambda!196905)))))

(assert (= (and d!1464179 c!794567) b!4643533))

(assert (= (and d!1464179 (not c!794567)) b!4643534))

(assert (= (and b!4643534 res!1950652) b!4643530))

(assert (= (or b!4643533 b!4643534) bm!324187))

(assert (= (or b!4643533 b!4643534) bm!324186))

(assert (= (or b!4643533 b!4643534) bm!324188))

(assert (= (and d!1464179 res!1950651) b!4643532))

(assert (= (and b!4643532 res!1950650) b!4643531))

(declare-fun m!5506865 () Bool)

(assert (=> b!4643534 m!5506865))

(declare-fun m!5506867 () Bool)

(assert (=> b!4643534 m!5506867))

(declare-fun m!5506869 () Bool)

(assert (=> b!4643534 m!5506869))

(declare-fun m!5506871 () Bool)

(assert (=> b!4643534 m!5506871))

(declare-fun m!5506873 () Bool)

(assert (=> b!4643534 m!5506873))

(declare-fun m!5506875 () Bool)

(assert (=> b!4643534 m!5506875))

(declare-fun m!5506877 () Bool)

(assert (=> b!4643534 m!5506877))

(assert (=> b!4643534 m!5506875))

(declare-fun m!5506879 () Bool)

(assert (=> b!4643534 m!5506879))

(assert (=> b!4643534 m!5506877))

(declare-fun m!5506881 () Bool)

(assert (=> b!4643534 m!5506881))

(declare-fun m!5506883 () Bool)

(assert (=> b!4643534 m!5506883))

(assert (=> b!4643534 m!5506867))

(declare-fun m!5506885 () Bool)

(assert (=> bm!324186 m!5506885))

(declare-fun m!5506887 () Bool)

(assert (=> d!1464179 m!5506887))

(assert (=> d!1464179 m!5505769))

(assert (=> b!4643530 m!5506869))

(declare-fun m!5506889 () Bool)

(assert (=> bm!324188 m!5506889))

(declare-fun m!5506891 () Bool)

(assert (=> b!4643531 m!5506891))

(declare-fun m!5506893 () Bool)

(assert (=> b!4643532 m!5506893))

(declare-fun m!5506895 () Bool)

(assert (=> bm!324187 m!5506895))

(assert (=> b!4643098 d!1464179))

(declare-fun bs!1035204 () Bool)

(declare-fun d!1464181 () Bool)

(assert (= bs!1035204 (and d!1464181 d!1463987)))

(declare-fun lambda!196908 () Int)

(assert (=> bs!1035204 (= lambda!196908 lambda!196781)))

(declare-fun bs!1035205 () Bool)

(assert (= bs!1035205 (and d!1464181 d!1464177)))

(assert (=> bs!1035205 (= lambda!196908 lambda!196903)))

(declare-fun bs!1035206 () Bool)

(assert (= bs!1035206 (and d!1464181 d!1463981)))

(assert (=> bs!1035206 (= lambda!196908 lambda!196775)))

(declare-fun bs!1035207 () Bool)

(assert (= bs!1035207 (and d!1464181 d!1464031)))

(assert (=> bs!1035207 (= lambda!196908 lambda!196828)))

(declare-fun bs!1035208 () Bool)

(assert (= bs!1035208 (and d!1464181 d!1464103)))

(assert (=> bs!1035208 (= lambda!196908 lambda!196887)))

(declare-fun bs!1035209 () Bool)

(assert (= bs!1035209 (and d!1464181 b!4643095)))

(assert (=> bs!1035209 (= lambda!196908 lambda!196762)))

(declare-fun bs!1035210 () Bool)

(assert (= bs!1035210 (and d!1464181 d!1464119)))

(assert (=> bs!1035210 (= lambda!196908 lambda!196888)))

(declare-fun bs!1035211 () Bool)

(assert (= bs!1035211 (and d!1464181 d!1464175)))

(assert (=> bs!1035211 (= lambda!196908 lambda!196902)))

(declare-fun bs!1035212 () Bool)

(assert (= bs!1035212 (and d!1464181 d!1464007)))

(assert (=> bs!1035212 (= lambda!196908 lambda!196825)))

(declare-fun lt!1807635 () ListMap!4481)

(assert (=> d!1464181 (invariantList!1270 (toList!5158 lt!1807635))))

(declare-fun e!2896752 () ListMap!4481)

(assert (=> d!1464181 (= lt!1807635 e!2896752)))

(declare-fun c!794568 () Bool)

(assert (=> d!1464181 (= c!794568 ((_ is Cons!51801) Nil!51801))))

(assert (=> d!1464181 (forall!10959 Nil!51801 lambda!196908)))

(assert (=> d!1464181 (= (extractMap!1662 Nil!51801) lt!1807635)))

(declare-fun b!4643535 () Bool)

(assert (=> b!4643535 (= e!2896752 (addToMapMapFromBucket!1065 (_2!29730 (h!57917 Nil!51801)) (extractMap!1662 (t!359015 Nil!51801))))))

(declare-fun b!4643536 () Bool)

(assert (=> b!4643536 (= e!2896752 (ListMap!4482 Nil!51800))))

(assert (= (and d!1464181 c!794568) b!4643535))

(assert (= (and d!1464181 (not c!794568)) b!4643536))

(declare-fun m!5506897 () Bool)

(assert (=> d!1464181 m!5506897))

(declare-fun m!5506899 () Bool)

(assert (=> d!1464181 m!5506899))

(declare-fun m!5506901 () Bool)

(assert (=> b!4643535 m!5506901))

(assert (=> b!4643535 m!5506901))

(declare-fun m!5506903 () Bool)

(assert (=> b!4643535 m!5506903))

(assert (=> b!4643098 d!1464181))

(declare-fun e!2896755 () Bool)

(declare-fun tp!1342978 () Bool)

(declare-fun b!4643541 () Bool)

(assert (=> b!4643541 (= e!2896755 (and tp_is_empty!29717 tp_is_empty!29719 tp!1342978))))

(assert (=> b!4643111 (= tp!1342970 e!2896755)))

(assert (= (and b!4643111 ((_ is Cons!51800) (t!359014 oldBucket!40))) b!4643541))

(declare-fun tp!1342979 () Bool)

(declare-fun e!2896756 () Bool)

(declare-fun b!4643542 () Bool)

(assert (=> b!4643542 (= e!2896756 (and tp_is_empty!29717 tp_is_empty!29719 tp!1342979))))

(assert (=> b!4643106 (= tp!1342971 e!2896756)))

(assert (= (and b!4643106 ((_ is Cons!51800) (t!359014 newBucket!224))) b!4643542))

(declare-fun b_lambda!171099 () Bool)

(assert (= b_lambda!171093 (or b!4643095 b_lambda!171099)))

(declare-fun bs!1035213 () Bool)

(declare-fun d!1464183 () Bool)

(assert (= bs!1035213 (and d!1464183 b!4643095)))

(assert (=> bs!1035213 (= (dynLambda!21553 lambda!196762 lt!1806996) (noDuplicateKeys!1606 (_2!29730 lt!1806996)))))

(declare-fun m!5506905 () Bool)

(assert (=> bs!1035213 m!5506905))

(assert (=> d!1463993 d!1464183))

(check-sat (not b!4643450) (not d!1463957) (not b!4643465) (not bm!324174) (not b!4643447) (not d!1464113) (not d!1463991) (not b!4643541) (not b!4643451) (not b!4643163) (not bm!324187) tp_is_empty!29717 (not d!1464007) (not b!4643452) (not b!4643343) (not b!4643444) (not bm!324183) (not bm!324188) (not d!1464175) (not d!1463933) (not d!1464149) (not b!4643461) (not b!4643514) (not b!4643266) (not b!4643486) (not b!4643506) (not d!1463993) (not b!4643511) (not b!4643342) (not d!1463947) (not d!1464181) (not b!4643526) (not b!4643291) (not b!4643487) (not b!4643510) (not d!1464173) (not b!4643231) (not d!1464125) (not b!4643530) (not bm!324144) (not b!4643289) (not bm!324177) (not b!4643518) (not d!1464159) (not b!4643488) (not b!4643278) (not d!1464027) (not b!4643120) (not bm!324186) (not d!1464119) (not b!4643226) (not b!4643531) (not b!4643542) (not b!4643453) (not b!4643283) (not b!4643232) (not b!4643260) (not bm!324182) (not b!4643460) (not d!1464147) (not b!4643264) (not d!1463989) (not b!4643143) (not b!4643238) (not d!1464139) (not d!1464005) (not d!1464145) (not bm!324184) (not b!4643490) (not b!4643522) (not b!4643263) (not b!4643524) (not b!4643456) (not b!4643280) (not b!4643532) (not b!4643229) (not d!1464137) (not d!1464123) (not b!4643119) (not d!1464177) (not bm!324180) (not d!1464037) (not d!1464163) (not b!4643421) (not d!1463953) (not d!1464155) (not b!4643535) (not b!4643352) (not d!1464153) (not d!1464141) tp_is_empty!29719 (not d!1463995) (not d!1464031) (not b!4643466) (not b!4643262) (not d!1464167) (not bm!324173) (not d!1463937) (not b!4643443) (not d!1464033) (not d!1463977) (not b!4643351) (not b!4643417) (not b!4643227) (not b!4643469) (not b_lambda!171099) (not b!4643509) (not d!1464151) (not d!1464143) (not b!4643162) (not b!4643418) (not d!1464179) (not d!1464029) (not b!4643505) (not d!1464161) (not b!4643534) (not b!4643517) (not d!1464103) (not d!1464169) (not b!4643191) (not b!4643345) (not d!1464121) (not d!1463983) (not b!4643233) (not b!4643446) (not b!4643515) (not b!4643201) (not d!1464115) (not d!1463923) (not d!1463929) (not b!4643299) (not b!4643467) (not b!4643507) (not b!4643516) (not d!1464099) (not b!4643353) (not b!4643230) (not d!1464171) (not bm!324181) (not bs!1035213) (not d!1464003) (not b!4643519) (not d!1463987) (not b!4643192) (not b!4643419) (not d!1463985) (not b!4643525) (not bm!324176) (not bm!324178) (not b!4643449) (not b!4643344) (not d!1464165) (not b!4643528) (not d!1464157) (not d!1464001) (not bm!324179) (not bm!324175) (not d!1463981) (not d!1464131) (not bm!324185))
(check-sat)
