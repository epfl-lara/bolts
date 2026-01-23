; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!464588 () Bool)

(assert start!464588)

(declare-fun res!1942442 () Bool)

(declare-fun e!2888311 () Bool)

(assert (=> start!464588 (=> (not res!1942442) (not e!2888311))))

(declare-datatypes ((K!12965 0))(
  ( (K!12966 (val!18643 Int)) )
))
(declare-datatypes ((V!13211 0))(
  ( (V!13212 (val!18644 Int)) )
))
(declare-datatypes ((tuple2!52550 0))(
  ( (tuple2!52551 (_1!29569 K!12965) (_2!29569 V!13211)) )
))
(declare-datatypes ((List!51716 0))(
  ( (Nil!51592) (Cons!51592 (h!57660 tuple2!52550) (t!358766 List!51716)) )
))
(declare-fun oldBucket!40 () List!51716)

(declare-fun noDuplicateKeys!1526 (List!51716) Bool)

(assert (=> start!464588 (= res!1942442 (noDuplicateKeys!1526 oldBucket!40))))

(assert (=> start!464588 e!2888311))

(assert (=> start!464588 true))

(declare-fun e!2888309 () Bool)

(assert (=> start!464588 e!2888309))

(declare-fun tp_is_empty!29397 () Bool)

(assert (=> start!464588 tp_is_empty!29397))

(declare-fun e!2888313 () Bool)

(assert (=> start!464588 e!2888313))

(declare-fun tp!1342299 () Bool)

(declare-fun b!4630124 () Bool)

(declare-fun tp_is_empty!29399 () Bool)

(assert (=> b!4630124 (= e!2888309 (and tp_is_empty!29397 tp_is_empty!29399 tp!1342299))))

(declare-fun b!4630125 () Bool)

(declare-fun e!2888310 () Bool)

(declare-fun e!2888312 () Bool)

(assert (=> b!4630125 (= e!2888310 e!2888312)))

(declare-fun res!1942446 () Bool)

(assert (=> b!4630125 (=> res!1942446 e!2888312)))

(declare-datatypes ((ListMap!4321 0))(
  ( (ListMap!4322 (toList!5017 List!51716)) )
))
(declare-fun lt!1790013 () ListMap!4321)

(declare-fun lt!1790031 () ListMap!4321)

(declare-fun eq!841 (ListMap!4321 ListMap!4321) Bool)

(assert (=> b!4630125 (= res!1942446 (not (eq!841 lt!1790013 lt!1790031)))))

(declare-fun lt!1790018 () ListMap!4321)

(assert (=> b!4630125 (eq!841 lt!1790018 lt!1790013)))

(declare-fun lt!1790015 () ListMap!4321)

(declare-fun key!4968 () K!12965)

(declare-fun -!566 (ListMap!4321 K!12965) ListMap!4321)

(assert (=> b!4630125 (= lt!1790013 (-!566 lt!1790015 key!4968))))

(declare-datatypes ((Unit!113132 0))(
  ( (Unit!113133) )
))
(declare-fun lt!1790025 () Unit!113132)

(declare-fun lt!1790020 () ListMap!4321)

(declare-fun lemmaRemovePreservesEq!22 (ListMap!4321 ListMap!4321 K!12965) Unit!113132)

(assert (=> b!4630125 (= lt!1790025 (lemmaRemovePreservesEq!22 lt!1790020 lt!1790015 key!4968))))

(declare-fun b!4630126 () Bool)

(declare-fun e!2888315 () Bool)

(declare-fun e!2888314 () Bool)

(assert (=> b!4630126 (= e!2888315 e!2888314)))

(declare-fun res!1942439 () Bool)

(assert (=> b!4630126 (=> res!1942439 e!2888314)))

(declare-fun lt!1790039 () tuple2!52550)

(declare-fun lt!1790038 () ListMap!4321)

(declare-fun lt!1790028 () ListMap!4321)

(declare-fun +!1892 (ListMap!4321 tuple2!52550) ListMap!4321)

(assert (=> b!4630126 (= res!1942439 (not (eq!841 lt!1790038 (+!1892 lt!1790028 lt!1790039))))))

(declare-datatypes ((tuple2!52552 0))(
  ( (tuple2!52553 (_1!29570 (_ BitVec 64)) (_2!29570 List!51716)) )
))
(declare-datatypes ((List!51717 0))(
  ( (Nil!51593) (Cons!51593 (h!57661 tuple2!52552) (t!358767 List!51717)) )
))
(declare-fun lt!1790030 () List!51717)

(declare-fun extractMap!1582 (List!51717) ListMap!4321)

(assert (=> b!4630126 (= lt!1790028 (extractMap!1582 lt!1790030))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lt!1790023 () List!51716)

(assert (=> b!4630126 (= lt!1790030 (Cons!51593 (tuple2!52553 hash!414 lt!1790023) Nil!51593))))

(declare-fun newBucket!224 () List!51716)

(assert (=> b!4630126 (= lt!1790038 (extractMap!1582 (Cons!51593 (tuple2!52553 hash!414 newBucket!224) Nil!51593)))))

(declare-fun b!4630127 () Bool)

(declare-fun res!1942433 () Bool)

(declare-fun e!2888308 () Bool)

(assert (=> b!4630127 (=> (not res!1942433) (not e!2888308))))

(declare-datatypes ((Hashable!5923 0))(
  ( (HashableExt!5922 (__x!31626 Int)) )
))
(declare-fun hashF!1389 () Hashable!5923)

(declare-fun allKeysSameHash!1380 (List!51716 (_ BitVec 64) Hashable!5923) Bool)

(assert (=> b!4630127 (= res!1942433 (allKeysSameHash!1380 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4630128 () Bool)

(declare-fun e!2888320 () Bool)

(assert (=> b!4630128 (= e!2888311 e!2888320)))

(declare-fun res!1942438 () Bool)

(assert (=> b!4630128 (=> (not res!1942438) (not e!2888320))))

(declare-fun contains!14673 (ListMap!4321 K!12965) Bool)

(assert (=> b!4630128 (= res!1942438 (contains!14673 lt!1790015 key!4968))))

(declare-fun lt!1790021 () List!51717)

(assert (=> b!4630128 (= lt!1790015 (extractMap!1582 lt!1790021))))

(assert (=> b!4630128 (= lt!1790021 (Cons!51593 (tuple2!52553 hash!414 oldBucket!40) Nil!51593))))

(declare-fun b!4630129 () Bool)

(declare-fun res!1942437 () Bool)

(assert (=> b!4630129 (=> (not res!1942437) (not e!2888311))))

(assert (=> b!4630129 (= res!1942437 (allKeysSameHash!1380 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4630130 () Bool)

(declare-fun res!1942435 () Bool)

(declare-fun e!2888319 () Bool)

(assert (=> b!4630130 (=> res!1942435 e!2888319)))

(declare-fun removePairForKey!1149 (List!51716 K!12965) List!51716)

(assert (=> b!4630130 (= res!1942435 (not (= (removePairForKey!1149 (t!358766 oldBucket!40) key!4968) lt!1790023)))))

(declare-fun b!4630131 () Bool)

(declare-fun e!2888318 () Bool)

(declare-fun e!2888317 () Bool)

(assert (=> b!4630131 (= e!2888318 e!2888317)))

(declare-fun res!1942432 () Bool)

(assert (=> b!4630131 (=> res!1942432 e!2888317)))

(declare-fun containsKey!2502 (List!51716 K!12965) Bool)

(assert (=> b!4630131 (= res!1942432 (not (containsKey!2502 (t!358766 oldBucket!40) key!4968)))))

(assert (=> b!4630131 (containsKey!2502 oldBucket!40 key!4968)))

(declare-fun lt!1790036 () Unit!113132)

(declare-fun lemmaGetPairDefinedThenContainsKey!72 (List!51716 K!12965 Hashable!5923) Unit!113132)

(assert (=> b!4630131 (= lt!1790036 (lemmaGetPairDefinedThenContainsKey!72 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1790024 () List!51716)

(declare-datatypes ((Option!11644 0))(
  ( (None!11643) (Some!11643 (v!45805 tuple2!52550)) )
))
(declare-fun isDefined!8909 (Option!11644) Bool)

(declare-fun getPair!318 (List!51716 K!12965) Option!11644)

(assert (=> b!4630131 (isDefined!8909 (getPair!318 lt!1790024 key!4968))))

(declare-fun lt!1790011 () Unit!113132)

(declare-fun lt!1790029 () tuple2!52552)

(declare-fun lambda!193384 () Int)

(declare-fun forallContained!3088 (List!51717 Int tuple2!52552) Unit!113132)

(assert (=> b!4630131 (= lt!1790011 (forallContained!3088 lt!1790021 lambda!193384 lt!1790029))))

(declare-fun contains!14674 (List!51717 tuple2!52552) Bool)

(assert (=> b!4630131 (contains!14674 lt!1790021 lt!1790029)))

(declare-fun lt!1790033 () (_ BitVec 64))

(assert (=> b!4630131 (= lt!1790029 (tuple2!52553 lt!1790033 lt!1790024))))

(declare-datatypes ((ListLongMap!3607 0))(
  ( (ListLongMap!3608 (toList!5018 List!51717)) )
))
(declare-fun lt!1790014 () ListLongMap!3607)

(declare-fun lt!1790037 () Unit!113132)

(declare-fun lemmaGetValueImpliesTupleContained!123 (ListLongMap!3607 (_ BitVec 64) List!51716) Unit!113132)

(assert (=> b!4630131 (= lt!1790037 (lemmaGetValueImpliesTupleContained!123 lt!1790014 lt!1790033 lt!1790024))))

(declare-fun apply!12191 (ListLongMap!3607 (_ BitVec 64)) List!51716)

(assert (=> b!4630131 (= lt!1790024 (apply!12191 lt!1790014 lt!1790033))))

(declare-fun contains!14675 (ListLongMap!3607 (_ BitVec 64)) Bool)

(assert (=> b!4630131 (contains!14675 lt!1790014 lt!1790033)))

(declare-fun lt!1790035 () Unit!113132)

(declare-fun lemmaInGenMapThenLongMapContainsHash!524 (ListLongMap!3607 K!12965 Hashable!5923) Unit!113132)

(assert (=> b!4630131 (= lt!1790035 (lemmaInGenMapThenLongMapContainsHash!524 lt!1790014 key!4968 hashF!1389))))

(declare-fun lt!1790010 () Unit!113132)

(declare-fun lemmaInGenMapThenGetPairDefined!114 (ListLongMap!3607 K!12965 Hashable!5923) Unit!113132)

(assert (=> b!4630131 (= lt!1790010 (lemmaInGenMapThenGetPairDefined!114 lt!1790014 key!4968 hashF!1389))))

(assert (=> b!4630131 (= lt!1790014 (ListLongMap!3608 lt!1790021))))

(declare-fun b!4630132 () Bool)

(declare-fun res!1942440 () Bool)

(assert (=> b!4630132 (=> (not res!1942440) (not e!2888311))))

(assert (=> b!4630132 (= res!1942440 (noDuplicateKeys!1526 newBucket!224))))

(declare-fun b!4630133 () Bool)

(declare-fun forall!10858 (List!51717 Int) Bool)

(assert (=> b!4630133 (= e!2888312 (forall!10858 lt!1790030 lambda!193384))))

(declare-fun b!4630134 () Bool)

(declare-fun res!1942447 () Bool)

(assert (=> b!4630134 (=> res!1942447 e!2888312)))

(assert (=> b!4630134 (= res!1942447 (not (= lt!1790039 (h!57660 oldBucket!40))))))

(declare-fun b!4630135 () Bool)

(assert (=> b!4630135 (= e!2888319 e!2888315)))

(declare-fun res!1942448 () Bool)

(assert (=> b!4630135 (=> res!1942448 e!2888315)))

(declare-fun lt!1790027 () List!51716)

(assert (=> b!4630135 (= res!1942448 (not (eq!841 lt!1790015 (+!1892 (extractMap!1582 (Cons!51593 (tuple2!52553 hash!414 lt!1790027) Nil!51593)) (h!57660 oldBucket!40)))))))

(declare-fun addToMapMapFromBucket!987 (List!51716 ListMap!4321) ListMap!4321)

(assert (=> b!4630135 (eq!841 (addToMapMapFromBucket!987 (Cons!51592 lt!1790039 lt!1790023) (ListMap!4322 Nil!51592)) (+!1892 (addToMapMapFromBucket!987 lt!1790023 (ListMap!4322 Nil!51592)) lt!1790039))))

(declare-fun lt!1790016 () Unit!113132)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!92 (tuple2!52550 List!51716 ListMap!4321) Unit!113132)

(assert (=> b!4630135 (= lt!1790016 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!92 lt!1790039 lt!1790023 (ListMap!4322 Nil!51592)))))

(declare-fun head!9660 (List!51716) tuple2!52550)

(assert (=> b!4630135 (= lt!1790039 (head!9660 newBucket!224))))

(declare-fun lt!1790012 () tuple2!52550)

(assert (=> b!4630135 (eq!841 (addToMapMapFromBucket!987 (Cons!51592 lt!1790012 lt!1790027) (ListMap!4322 Nil!51592)) (+!1892 (addToMapMapFromBucket!987 lt!1790027 (ListMap!4322 Nil!51592)) lt!1790012))))

(declare-fun lt!1790034 () Unit!113132)

(assert (=> b!4630135 (= lt!1790034 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!92 lt!1790012 lt!1790027 (ListMap!4322 Nil!51592)))))

(assert (=> b!4630135 (= lt!1790012 (head!9660 oldBucket!40))))

(declare-fun lt!1790026 () ListMap!4321)

(assert (=> b!4630135 (contains!14673 lt!1790026 key!4968)))

(declare-fun lt!1790008 () List!51717)

(assert (=> b!4630135 (= lt!1790026 (extractMap!1582 lt!1790008))))

(declare-fun lt!1790009 () Unit!113132)

(declare-fun lemmaListContainsThenExtractedMapContains!344 (ListLongMap!3607 K!12965 Hashable!5923) Unit!113132)

(assert (=> b!4630135 (= lt!1790009 (lemmaListContainsThenExtractedMapContains!344 (ListLongMap!3608 lt!1790008) key!4968 hashF!1389))))

(assert (=> b!4630135 (= lt!1790008 (Cons!51593 (tuple2!52553 hash!414 (t!358766 oldBucket!40)) Nil!51593))))

(declare-fun b!4630136 () Bool)

(assert (=> b!4630136 (= e!2888320 e!2888308)))

(declare-fun res!1942444 () Bool)

(assert (=> b!4630136 (=> (not res!1942444) (not e!2888308))))

(assert (=> b!4630136 (= res!1942444 (= lt!1790033 hash!414))))

(declare-fun hash!3554 (Hashable!5923 K!12965) (_ BitVec 64))

(assert (=> b!4630136 (= lt!1790033 (hash!3554 hashF!1389 key!4968))))

(declare-fun b!4630137 () Bool)

(declare-fun tp!1342298 () Bool)

(assert (=> b!4630137 (= e!2888313 (and tp_is_empty!29397 tp_is_empty!29399 tp!1342298))))

(declare-fun b!4630138 () Bool)

(assert (=> b!4630138 (= e!2888317 e!2888319)))

(declare-fun res!1942445 () Bool)

(assert (=> b!4630138 (=> res!1942445 e!2888319)))

(assert (=> b!4630138 (= res!1942445 (not (= (removePairForKey!1149 lt!1790027 key!4968) lt!1790023)))))

(declare-fun tail!8161 (List!51716) List!51716)

(assert (=> b!4630138 (= lt!1790023 (tail!8161 newBucket!224))))

(assert (=> b!4630138 (= lt!1790027 (tail!8161 oldBucket!40))))

(declare-fun b!4630139 () Bool)

(assert (=> b!4630139 (= e!2888308 (not e!2888318))))

(declare-fun res!1942436 () Bool)

(assert (=> b!4630139 (=> res!1942436 e!2888318)))

(get-info :version)

(assert (=> b!4630139 (= res!1942436 (or (and ((_ is Cons!51592) oldBucket!40) (= (_1!29569 (h!57660 oldBucket!40)) key!4968)) (not ((_ is Cons!51592) oldBucket!40)) (= (_1!29569 (h!57660 oldBucket!40)) key!4968)))))

(declare-fun e!2888316 () Bool)

(assert (=> b!4630139 e!2888316))

(declare-fun res!1942441 () Bool)

(assert (=> b!4630139 (=> (not res!1942441) (not e!2888316))))

(declare-fun lt!1790017 () ListMap!4321)

(assert (=> b!4630139 (= res!1942441 (= lt!1790015 (addToMapMapFromBucket!987 oldBucket!40 lt!1790017)))))

(assert (=> b!4630139 (= lt!1790017 (extractMap!1582 Nil!51593))))

(assert (=> b!4630139 true))

(declare-fun b!4630140 () Bool)

(assert (=> b!4630140 (= e!2888314 e!2888310)))

(declare-fun res!1942434 () Bool)

(assert (=> b!4630140 (=> res!1942434 e!2888310)))

(assert (=> b!4630140 (= res!1942434 (not (= lt!1790018 lt!1790031)))))

(declare-fun lt!1790022 () ListMap!4321)

(assert (=> b!4630140 (= lt!1790031 (+!1892 lt!1790022 (h!57660 oldBucket!40)))))

(assert (=> b!4630140 (= lt!1790018 (-!566 lt!1790020 key!4968))))

(assert (=> b!4630140 (= lt!1790020 (+!1892 lt!1790026 (h!57660 oldBucket!40)))))

(assert (=> b!4630140 (= (-!566 (+!1892 lt!1790026 (h!57660 oldBucket!40)) key!4968) (+!1892 lt!1790022 (h!57660 oldBucket!40)))))

(declare-fun lt!1790019 () Unit!113132)

(declare-fun addRemoveCommutativeForDiffKeys!21 (ListMap!4321 K!12965 V!13211 K!12965) Unit!113132)

(assert (=> b!4630140 (= lt!1790019 (addRemoveCommutativeForDiffKeys!21 lt!1790026 (_1!29569 (h!57660 oldBucket!40)) (_2!29569 (h!57660 oldBucket!40)) key!4968))))

(assert (=> b!4630140 (eq!841 lt!1790028 lt!1790022)))

(assert (=> b!4630140 (= lt!1790022 (-!566 lt!1790026 key!4968))))

(declare-fun lt!1790032 () Unit!113132)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!128 ((_ BitVec 64) List!51716 List!51716 K!12965 Hashable!5923) Unit!113132)

(assert (=> b!4630140 (= lt!1790032 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!128 hash!414 (t!358766 oldBucket!40) lt!1790023 key!4968 hashF!1389))))

(declare-fun b!4630141 () Bool)

(declare-fun res!1942443 () Bool)

(assert (=> b!4630141 (=> (not res!1942443) (not e!2888311))))

(assert (=> b!4630141 (= res!1942443 (= (removePairForKey!1149 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4630142 () Bool)

(assert (=> b!4630142 (= e!2888316 (= lt!1790017 (ListMap!4322 Nil!51592)))))

(assert (= (and start!464588 res!1942442) b!4630132))

(assert (= (and b!4630132 res!1942440) b!4630141))

(assert (= (and b!4630141 res!1942443) b!4630129))

(assert (= (and b!4630129 res!1942437) b!4630128))

(assert (= (and b!4630128 res!1942438) b!4630136))

(assert (= (and b!4630136 res!1942444) b!4630127))

(assert (= (and b!4630127 res!1942433) b!4630139))

(assert (= (and b!4630139 res!1942441) b!4630142))

(assert (= (and b!4630139 (not res!1942436)) b!4630131))

(assert (= (and b!4630131 (not res!1942432)) b!4630138))

(assert (= (and b!4630138 (not res!1942445)) b!4630130))

(assert (= (and b!4630130 (not res!1942435)) b!4630135))

(assert (= (and b!4630135 (not res!1942448)) b!4630126))

(assert (= (and b!4630126 (not res!1942439)) b!4630140))

(assert (= (and b!4630140 (not res!1942434)) b!4630125))

(assert (= (and b!4630125 (not res!1942446)) b!4630134))

(assert (= (and b!4630134 (not res!1942447)) b!4630133))

(assert (= (and start!464588 ((_ is Cons!51592) oldBucket!40)) b!4630124))

(assert (= (and start!464588 ((_ is Cons!51592) newBucket!224)) b!4630137))

(declare-fun m!5478167 () Bool)

(assert (=> b!4630131 m!5478167))

(declare-fun m!5478169 () Bool)

(assert (=> b!4630131 m!5478169))

(declare-fun m!5478171 () Bool)

(assert (=> b!4630131 m!5478171))

(declare-fun m!5478173 () Bool)

(assert (=> b!4630131 m!5478173))

(assert (=> b!4630131 m!5478171))

(declare-fun m!5478175 () Bool)

(assert (=> b!4630131 m!5478175))

(declare-fun m!5478177 () Bool)

(assert (=> b!4630131 m!5478177))

(declare-fun m!5478179 () Bool)

(assert (=> b!4630131 m!5478179))

(declare-fun m!5478181 () Bool)

(assert (=> b!4630131 m!5478181))

(declare-fun m!5478183 () Bool)

(assert (=> b!4630131 m!5478183))

(declare-fun m!5478185 () Bool)

(assert (=> b!4630131 m!5478185))

(declare-fun m!5478187 () Bool)

(assert (=> b!4630131 m!5478187))

(declare-fun m!5478189 () Bool)

(assert (=> b!4630131 m!5478189))

(declare-fun m!5478191 () Bool)

(assert (=> b!4630129 m!5478191))

(declare-fun m!5478193 () Bool)

(assert (=> start!464588 m!5478193))

(declare-fun m!5478195 () Bool)

(assert (=> b!4630141 m!5478195))

(declare-fun m!5478197 () Bool)

(assert (=> b!4630135 m!5478197))

(declare-fun m!5478199 () Bool)

(assert (=> b!4630135 m!5478199))

(declare-fun m!5478201 () Bool)

(assert (=> b!4630135 m!5478201))

(declare-fun m!5478203 () Bool)

(assert (=> b!4630135 m!5478203))

(declare-fun m!5478205 () Bool)

(assert (=> b!4630135 m!5478205))

(declare-fun m!5478207 () Bool)

(assert (=> b!4630135 m!5478207))

(declare-fun m!5478209 () Bool)

(assert (=> b!4630135 m!5478209))

(declare-fun m!5478211 () Bool)

(assert (=> b!4630135 m!5478211))

(declare-fun m!5478213 () Bool)

(assert (=> b!4630135 m!5478213))

(declare-fun m!5478215 () Bool)

(assert (=> b!4630135 m!5478215))

(declare-fun m!5478217 () Bool)

(assert (=> b!4630135 m!5478217))

(declare-fun m!5478219 () Bool)

(assert (=> b!4630135 m!5478219))

(declare-fun m!5478221 () Bool)

(assert (=> b!4630135 m!5478221))

(declare-fun m!5478223 () Bool)

(assert (=> b!4630135 m!5478223))

(assert (=> b!4630135 m!5478211))

(assert (=> b!4630135 m!5478205))

(declare-fun m!5478225 () Bool)

(assert (=> b!4630135 m!5478225))

(assert (=> b!4630135 m!5478215))

(assert (=> b!4630135 m!5478199))

(declare-fun m!5478227 () Bool)

(assert (=> b!4630135 m!5478227))

(assert (=> b!4630135 m!5478203))

(assert (=> b!4630135 m!5478201))

(assert (=> b!4630135 m!5478217))

(declare-fun m!5478229 () Bool)

(assert (=> b!4630135 m!5478229))

(declare-fun m!5478231 () Bool)

(assert (=> b!4630135 m!5478231))

(assert (=> b!4630135 m!5478197))

(declare-fun m!5478233 () Bool)

(assert (=> b!4630125 m!5478233))

(declare-fun m!5478235 () Bool)

(assert (=> b!4630125 m!5478235))

(declare-fun m!5478237 () Bool)

(assert (=> b!4630125 m!5478237))

(declare-fun m!5478239 () Bool)

(assert (=> b!4630125 m!5478239))

(declare-fun m!5478241 () Bool)

(assert (=> b!4630140 m!5478241))

(declare-fun m!5478243 () Bool)

(assert (=> b!4630140 m!5478243))

(declare-fun m!5478245 () Bool)

(assert (=> b!4630140 m!5478245))

(declare-fun m!5478247 () Bool)

(assert (=> b!4630140 m!5478247))

(assert (=> b!4630140 m!5478247))

(declare-fun m!5478249 () Bool)

(assert (=> b!4630140 m!5478249))

(declare-fun m!5478251 () Bool)

(assert (=> b!4630140 m!5478251))

(declare-fun m!5478253 () Bool)

(assert (=> b!4630140 m!5478253))

(declare-fun m!5478255 () Bool)

(assert (=> b!4630140 m!5478255))

(declare-fun m!5478257 () Bool)

(assert (=> b!4630127 m!5478257))

(declare-fun m!5478259 () Bool)

(assert (=> b!4630136 m!5478259))

(declare-fun m!5478261 () Bool)

(assert (=> b!4630132 m!5478261))

(declare-fun m!5478263 () Bool)

(assert (=> b!4630126 m!5478263))

(assert (=> b!4630126 m!5478263))

(declare-fun m!5478265 () Bool)

(assert (=> b!4630126 m!5478265))

(declare-fun m!5478267 () Bool)

(assert (=> b!4630126 m!5478267))

(declare-fun m!5478269 () Bool)

(assert (=> b!4630126 m!5478269))

(declare-fun m!5478271 () Bool)

(assert (=> b!4630128 m!5478271))

(declare-fun m!5478273 () Bool)

(assert (=> b!4630128 m!5478273))

(declare-fun m!5478275 () Bool)

(assert (=> b!4630139 m!5478275))

(declare-fun m!5478277 () Bool)

(assert (=> b!4630139 m!5478277))

(declare-fun m!5478279 () Bool)

(assert (=> b!4630130 m!5478279))

(declare-fun m!5478281 () Bool)

(assert (=> b!4630133 m!5478281))

(declare-fun m!5478283 () Bool)

(assert (=> b!4630138 m!5478283))

(declare-fun m!5478285 () Bool)

(assert (=> b!4630138 m!5478285))

(declare-fun m!5478287 () Bool)

(assert (=> b!4630138 m!5478287))

(check-sat (not b!4630128) (not b!4630129) (not b!4630140) tp_is_empty!29397 (not b!4630132) (not b!4630130) (not b!4630126) (not b!4630135) (not b!4630136) (not b!4630138) tp_is_empty!29399 (not b!4630141) (not b!4630127) (not b!4630125) (not b!4630137) (not b!4630124) (not b!4630131) (not b!4630139) (not b!4630133) (not start!464588))
(check-sat)
(get-model)

(declare-fun d!1459027 () Bool)

(assert (=> d!1459027 true))

(assert (=> d!1459027 true))

(declare-fun lambda!193387 () Int)

(declare-fun forall!10860 (List!51716 Int) Bool)

(assert (=> d!1459027 (= (allKeysSameHash!1380 newBucket!224 hash!414 hashF!1389) (forall!10860 newBucket!224 lambda!193387))))

(declare-fun bs!1026778 () Bool)

(assert (= bs!1026778 d!1459027))

(declare-fun m!5478289 () Bool)

(assert (=> bs!1026778 m!5478289))

(assert (=> b!4630127 d!1459027))

(declare-fun b!4630155 () Bool)

(declare-fun e!2888325 () List!51716)

(assert (=> b!4630155 (= e!2888325 (t!358766 lt!1790027))))

(declare-fun d!1459029 () Bool)

(declare-fun lt!1790042 () List!51716)

(assert (=> d!1459029 (not (containsKey!2502 lt!1790042 key!4968))))

(assert (=> d!1459029 (= lt!1790042 e!2888325)))

(declare-fun c!792535 () Bool)

(assert (=> d!1459029 (= c!792535 (and ((_ is Cons!51592) lt!1790027) (= (_1!29569 (h!57660 lt!1790027)) key!4968)))))

(assert (=> d!1459029 (noDuplicateKeys!1526 lt!1790027)))

(assert (=> d!1459029 (= (removePairForKey!1149 lt!1790027 key!4968) lt!1790042)))

(declare-fun b!4630156 () Bool)

(declare-fun e!2888326 () List!51716)

(assert (=> b!4630156 (= e!2888325 e!2888326)))

(declare-fun c!792536 () Bool)

(assert (=> b!4630156 (= c!792536 ((_ is Cons!51592) lt!1790027))))

(declare-fun b!4630158 () Bool)

(assert (=> b!4630158 (= e!2888326 Nil!51592)))

(declare-fun b!4630157 () Bool)

(assert (=> b!4630157 (= e!2888326 (Cons!51592 (h!57660 lt!1790027) (removePairForKey!1149 (t!358766 lt!1790027) key!4968)))))

(assert (= (and d!1459029 c!792535) b!4630155))

(assert (= (and d!1459029 (not c!792535)) b!4630156))

(assert (= (and b!4630156 c!792536) b!4630157))

(assert (= (and b!4630156 (not c!792536)) b!4630158))

(declare-fun m!5478291 () Bool)

(assert (=> d!1459029 m!5478291))

(declare-fun m!5478293 () Bool)

(assert (=> d!1459029 m!5478293))

(declare-fun m!5478295 () Bool)

(assert (=> b!4630157 m!5478295))

(assert (=> b!4630138 d!1459029))

(declare-fun d!1459031 () Bool)

(assert (=> d!1459031 (= (tail!8161 newBucket!224) (t!358766 newBucket!224))))

(assert (=> b!4630138 d!1459031))

(declare-fun d!1459033 () Bool)

(assert (=> d!1459033 (= (tail!8161 oldBucket!40) (t!358766 oldBucket!40))))

(assert (=> b!4630138 d!1459033))

(declare-fun bs!1026873 () Bool)

(declare-fun b!4630269 () Bool)

(assert (= bs!1026873 (and b!4630269 d!1459027)))

(declare-fun lambda!193470 () Int)

(assert (=> bs!1026873 (not (= lambda!193470 lambda!193387))))

(assert (=> b!4630269 true))

(declare-fun bs!1026874 () Bool)

(declare-fun b!4630268 () Bool)

(assert (= bs!1026874 (and b!4630268 d!1459027)))

(declare-fun lambda!193471 () Int)

(assert (=> bs!1026874 (not (= lambda!193471 lambda!193387))))

(declare-fun bs!1026875 () Bool)

(assert (= bs!1026875 (and b!4630268 b!4630269)))

(assert (=> bs!1026875 (= lambda!193471 lambda!193470)))

(assert (=> b!4630268 true))

(declare-fun lambda!193472 () Int)

(assert (=> bs!1026874 (not (= lambda!193472 lambda!193387))))

(declare-fun lt!1790294 () ListMap!4321)

(assert (=> bs!1026875 (= (= lt!1790294 lt!1790017) (= lambda!193472 lambda!193470))))

(assert (=> b!4630268 (= (= lt!1790294 lt!1790017) (= lambda!193472 lambda!193471))))

(assert (=> b!4630268 true))

(declare-fun bs!1026876 () Bool)

(declare-fun d!1459035 () Bool)

(assert (= bs!1026876 (and d!1459035 d!1459027)))

(declare-fun lambda!193473 () Int)

(assert (=> bs!1026876 (not (= lambda!193473 lambda!193387))))

(declare-fun bs!1026877 () Bool)

(assert (= bs!1026877 (and d!1459035 b!4630269)))

(declare-fun lt!1790299 () ListMap!4321)

(assert (=> bs!1026877 (= (= lt!1790299 lt!1790017) (= lambda!193473 lambda!193470))))

(declare-fun bs!1026878 () Bool)

(assert (= bs!1026878 (and d!1459035 b!4630268)))

(assert (=> bs!1026878 (= (= lt!1790299 lt!1790017) (= lambda!193473 lambda!193471))))

(assert (=> bs!1026878 (= (= lt!1790299 lt!1790294) (= lambda!193473 lambda!193472))))

(assert (=> d!1459035 true))

(declare-fun c!792562 () Bool)

(declare-fun bm!323074 () Bool)

(declare-fun lt!1790297 () ListMap!4321)

(declare-fun call!323080 () Bool)

(assert (=> bm!323074 (= call!323080 (forall!10860 (ite c!792562 (toList!5017 lt!1790017) (toList!5017 lt!1790297)) (ite c!792562 lambda!193470 lambda!193472)))))

(declare-fun e!2888390 () Bool)

(assert (=> d!1459035 e!2888390))

(declare-fun res!1942502 () Bool)

(assert (=> d!1459035 (=> (not res!1942502) (not e!2888390))))

(assert (=> d!1459035 (= res!1942502 (forall!10860 oldBucket!40 lambda!193473))))

(declare-fun e!2888389 () ListMap!4321)

(assert (=> d!1459035 (= lt!1790299 e!2888389)))

(assert (=> d!1459035 (= c!792562 ((_ is Nil!51592) oldBucket!40))))

(assert (=> d!1459035 (noDuplicateKeys!1526 oldBucket!40)))

(assert (=> d!1459035 (= (addToMapMapFromBucket!987 oldBucket!40 lt!1790017) lt!1790299)))

(declare-fun b!4630267 () Bool)

(declare-fun invariantList!1222 (List!51716) Bool)

(assert (=> b!4630267 (= e!2888390 (invariantList!1222 (toList!5017 lt!1790299)))))

(declare-fun bm!323075 () Bool)

(declare-fun call!323079 () Bool)

(assert (=> bm!323075 (= call!323079 (forall!10860 (toList!5017 lt!1790017) (ite c!792562 lambda!193470 lambda!193471)))))

(assert (=> b!4630268 (= e!2888389 lt!1790294)))

(assert (=> b!4630268 (= lt!1790297 (+!1892 lt!1790017 (h!57660 oldBucket!40)))))

(assert (=> b!4630268 (= lt!1790294 (addToMapMapFromBucket!987 (t!358766 oldBucket!40) (+!1892 lt!1790017 (h!57660 oldBucket!40))))))

(declare-fun lt!1790293 () Unit!113132)

(declare-fun call!323081 () Unit!113132)

(assert (=> b!4630268 (= lt!1790293 call!323081)))

(assert (=> b!4630268 call!323079))

(declare-fun lt!1790296 () Unit!113132)

(assert (=> b!4630268 (= lt!1790296 lt!1790293)))

(assert (=> b!4630268 call!323080))

(declare-fun lt!1790287 () Unit!113132)

(declare-fun Unit!113167 () Unit!113132)

(assert (=> b!4630268 (= lt!1790287 Unit!113167)))

(assert (=> b!4630268 (forall!10860 (t!358766 oldBucket!40) lambda!193472)))

(declare-fun lt!1790306 () Unit!113132)

(declare-fun Unit!113168 () Unit!113132)

(assert (=> b!4630268 (= lt!1790306 Unit!113168)))

(declare-fun lt!1790305 () Unit!113132)

(declare-fun Unit!113169 () Unit!113132)

(assert (=> b!4630268 (= lt!1790305 Unit!113169)))

(declare-fun lt!1790307 () Unit!113132)

(declare-fun forallContained!3090 (List!51716 Int tuple2!52550) Unit!113132)

(assert (=> b!4630268 (= lt!1790307 (forallContained!3090 (toList!5017 lt!1790297) lambda!193472 (h!57660 oldBucket!40)))))

(assert (=> b!4630268 (contains!14673 lt!1790297 (_1!29569 (h!57660 oldBucket!40)))))

(declare-fun lt!1790302 () Unit!113132)

(declare-fun Unit!113170 () Unit!113132)

(assert (=> b!4630268 (= lt!1790302 Unit!113170)))

(assert (=> b!4630268 (contains!14673 lt!1790294 (_1!29569 (h!57660 oldBucket!40)))))

(declare-fun lt!1790291 () Unit!113132)

(declare-fun Unit!113171 () Unit!113132)

(assert (=> b!4630268 (= lt!1790291 Unit!113171)))

(assert (=> b!4630268 (forall!10860 oldBucket!40 lambda!193472)))

(declare-fun lt!1790289 () Unit!113132)

(declare-fun Unit!113172 () Unit!113132)

(assert (=> b!4630268 (= lt!1790289 Unit!113172)))

(assert (=> b!4630268 (forall!10860 (toList!5017 lt!1790297) lambda!193472)))

(declare-fun lt!1790300 () Unit!113132)

(declare-fun Unit!113173 () Unit!113132)

(assert (=> b!4630268 (= lt!1790300 Unit!113173)))

(declare-fun lt!1790304 () Unit!113132)

(declare-fun Unit!113174 () Unit!113132)

(assert (=> b!4630268 (= lt!1790304 Unit!113174)))

(declare-fun lt!1790290 () Unit!113132)

(declare-fun addForallContainsKeyThenBeforeAdding!523 (ListMap!4321 ListMap!4321 K!12965 V!13211) Unit!113132)

(assert (=> b!4630268 (= lt!1790290 (addForallContainsKeyThenBeforeAdding!523 lt!1790017 lt!1790294 (_1!29569 (h!57660 oldBucket!40)) (_2!29569 (h!57660 oldBucket!40))))))

(assert (=> b!4630268 (forall!10860 (toList!5017 lt!1790017) lambda!193472)))

(declare-fun lt!1790288 () Unit!113132)

(assert (=> b!4630268 (= lt!1790288 lt!1790290)))

(assert (=> b!4630268 (forall!10860 (toList!5017 lt!1790017) lambda!193472)))

(declare-fun lt!1790292 () Unit!113132)

(declare-fun Unit!113175 () Unit!113132)

(assert (=> b!4630268 (= lt!1790292 Unit!113175)))

(declare-fun res!1942503 () Bool)

(assert (=> b!4630268 (= res!1942503 (forall!10860 oldBucket!40 lambda!193472))))

(declare-fun e!2888391 () Bool)

(assert (=> b!4630268 (=> (not res!1942503) (not e!2888391))))

(assert (=> b!4630268 e!2888391))

(declare-fun lt!1790298 () Unit!113132)

(declare-fun Unit!113176 () Unit!113132)

(assert (=> b!4630268 (= lt!1790298 Unit!113176)))

(assert (=> b!4630269 (= e!2888389 lt!1790017)))

(declare-fun lt!1790295 () Unit!113132)

(assert (=> b!4630269 (= lt!1790295 call!323081)))

(assert (=> b!4630269 call!323079))

(declare-fun lt!1790303 () Unit!113132)

(assert (=> b!4630269 (= lt!1790303 lt!1790295)))

(assert (=> b!4630269 call!323080))

(declare-fun lt!1790301 () Unit!113132)

(declare-fun Unit!113178 () Unit!113132)

(assert (=> b!4630269 (= lt!1790301 Unit!113178)))

(declare-fun bm!323076 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!524 (ListMap!4321) Unit!113132)

(assert (=> bm!323076 (= call!323081 (lemmaContainsAllItsOwnKeys!524 lt!1790017))))

(declare-fun b!4630270 () Bool)

(assert (=> b!4630270 (= e!2888391 (forall!10860 (toList!5017 lt!1790017) lambda!193472))))

(declare-fun b!4630271 () Bool)

(declare-fun res!1942501 () Bool)

(assert (=> b!4630271 (=> (not res!1942501) (not e!2888390))))

(assert (=> b!4630271 (= res!1942501 (forall!10860 (toList!5017 lt!1790017) lambda!193473))))

(assert (= (and d!1459035 c!792562) b!4630269))

(assert (= (and d!1459035 (not c!792562)) b!4630268))

(assert (= (and b!4630268 res!1942503) b!4630270))

(assert (= (or b!4630269 b!4630268) bm!323076))

(assert (= (or b!4630269 b!4630268) bm!323074))

(assert (= (or b!4630269 b!4630268) bm!323075))

(assert (= (and d!1459035 res!1942502) b!4630271))

(assert (= (and b!4630271 res!1942501) b!4630267))

(declare-fun m!5478621 () Bool)

(assert (=> b!4630271 m!5478621))

(declare-fun m!5478623 () Bool)

(assert (=> bm!323076 m!5478623))

(declare-fun m!5478625 () Bool)

(assert (=> b!4630270 m!5478625))

(declare-fun m!5478627 () Bool)

(assert (=> bm!323075 m!5478627))

(assert (=> b!4630268 m!5478625))

(declare-fun m!5478629 () Bool)

(assert (=> b!4630268 m!5478629))

(declare-fun m!5478631 () Bool)

(assert (=> b!4630268 m!5478631))

(declare-fun m!5478633 () Bool)

(assert (=> b!4630268 m!5478633))

(assert (=> b!4630268 m!5478633))

(assert (=> b!4630268 m!5478625))

(declare-fun m!5478635 () Bool)

(assert (=> b!4630268 m!5478635))

(declare-fun m!5478637 () Bool)

(assert (=> b!4630268 m!5478637))

(declare-fun m!5478639 () Bool)

(assert (=> b!4630268 m!5478639))

(declare-fun m!5478641 () Bool)

(assert (=> b!4630268 m!5478641))

(assert (=> b!4630268 m!5478629))

(declare-fun m!5478643 () Bool)

(assert (=> b!4630268 m!5478643))

(declare-fun m!5478645 () Bool)

(assert (=> b!4630268 m!5478645))

(declare-fun m!5478647 () Bool)

(assert (=> bm!323074 m!5478647))

(declare-fun m!5478649 () Bool)

(assert (=> b!4630267 m!5478649))

(declare-fun m!5478651 () Bool)

(assert (=> d!1459035 m!5478651))

(assert (=> d!1459035 m!5478193))

(assert (=> b!4630139 d!1459035))

(declare-fun bs!1026889 () Bool)

(declare-fun d!1459095 () Bool)

(assert (= bs!1026889 (and d!1459095 b!4630131)))

(declare-fun lambda!193478 () Int)

(assert (=> bs!1026889 (= lambda!193478 lambda!193384)))

(declare-fun lt!1790330 () ListMap!4321)

(assert (=> d!1459095 (invariantList!1222 (toList!5017 lt!1790330))))

(declare-fun e!2888421 () ListMap!4321)

(assert (=> d!1459095 (= lt!1790330 e!2888421)))

(declare-fun c!792574 () Bool)

(assert (=> d!1459095 (= c!792574 ((_ is Cons!51593) Nil!51593))))

(assert (=> d!1459095 (forall!10858 Nil!51593 lambda!193478)))

(assert (=> d!1459095 (= (extractMap!1582 Nil!51593) lt!1790330)))

(declare-fun b!4630315 () Bool)

(assert (=> b!4630315 (= e!2888421 (addToMapMapFromBucket!987 (_2!29570 (h!57661 Nil!51593)) (extractMap!1582 (t!358767 Nil!51593))))))

(declare-fun b!4630316 () Bool)

(assert (=> b!4630316 (= e!2888421 (ListMap!4322 Nil!51592))))

(assert (= (and d!1459095 c!792574) b!4630315))

(assert (= (and d!1459095 (not c!792574)) b!4630316))

(declare-fun m!5478705 () Bool)

(assert (=> d!1459095 m!5478705))

(declare-fun m!5478707 () Bool)

(assert (=> d!1459095 m!5478707))

(declare-fun m!5478709 () Bool)

(assert (=> b!4630315 m!5478709))

(assert (=> b!4630315 m!5478709))

(declare-fun m!5478711 () Bool)

(assert (=> b!4630315 m!5478711))

(assert (=> b!4630139 d!1459095))

(declare-fun b!4630373 () Bool)

(declare-fun e!2888464 () Bool)

(declare-fun e!2888466 () Bool)

(assert (=> b!4630373 (= e!2888464 e!2888466)))

(declare-fun res!1942556 () Bool)

(assert (=> b!4630373 (=> (not res!1942556) (not e!2888466))))

(declare-datatypes ((Option!11646 0))(
  ( (None!11645) (Some!11645 (v!45811 V!13211)) )
))
(declare-fun isDefined!8910 (Option!11646) Bool)

(declare-fun getValueByKey!1486 (List!51716 K!12965) Option!11646)

(assert (=> b!4630373 (= res!1942556 (isDefined!8910 (getValueByKey!1486 (toList!5017 lt!1790015) key!4968)))))

(declare-fun d!1459113 () Bool)

(assert (=> d!1459113 e!2888464))

(declare-fun res!1942555 () Bool)

(assert (=> d!1459113 (=> res!1942555 e!2888464)))

(declare-fun e!2888463 () Bool)

(assert (=> d!1459113 (= res!1942555 e!2888463)))

(declare-fun res!1942557 () Bool)

(assert (=> d!1459113 (=> (not res!1942557) (not e!2888463))))

(declare-fun lt!1790361 () Bool)

(assert (=> d!1459113 (= res!1942557 (not lt!1790361))))

(declare-fun lt!1790357 () Bool)

(assert (=> d!1459113 (= lt!1790361 lt!1790357)))

(declare-fun lt!1790359 () Unit!113132)

(declare-fun e!2888465 () Unit!113132)

(assert (=> d!1459113 (= lt!1790359 e!2888465)))

(declare-fun c!792587 () Bool)

(assert (=> d!1459113 (= c!792587 lt!1790357)))

(declare-fun containsKey!2503 (List!51716 K!12965) Bool)

(assert (=> d!1459113 (= lt!1790357 (containsKey!2503 (toList!5017 lt!1790015) key!4968))))

(assert (=> d!1459113 (= (contains!14673 lt!1790015 key!4968) lt!1790361)))

(declare-fun b!4630374 () Bool)

(declare-fun lt!1790356 () Unit!113132)

(assert (=> b!4630374 (= e!2888465 lt!1790356)))

(declare-fun lt!1790358 () Unit!113132)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1387 (List!51716 K!12965) Unit!113132)

(assert (=> b!4630374 (= lt!1790358 (lemmaContainsKeyImpliesGetValueByKeyDefined!1387 (toList!5017 lt!1790015) key!4968))))

(assert (=> b!4630374 (isDefined!8910 (getValueByKey!1486 (toList!5017 lt!1790015) key!4968))))

(declare-fun lt!1790360 () Unit!113132)

(assert (=> b!4630374 (= lt!1790360 lt!1790358)))

(declare-fun lemmaInListThenGetKeysListContains!667 (List!51716 K!12965) Unit!113132)

(assert (=> b!4630374 (= lt!1790356 (lemmaInListThenGetKeysListContains!667 (toList!5017 lt!1790015) key!4968))))

(declare-fun call!323084 () Bool)

(assert (=> b!4630374 call!323084))

(declare-fun b!4630375 () Bool)

(declare-datatypes ((List!51718 0))(
  ( (Nil!51594) (Cons!51594 (h!57664 K!12965) (t!358770 List!51718)) )
))
(declare-fun contains!14677 (List!51718 K!12965) Bool)

(declare-fun keys!18191 (ListMap!4321) List!51718)

(assert (=> b!4630375 (= e!2888466 (contains!14677 (keys!18191 lt!1790015) key!4968))))

(declare-fun b!4630376 () Bool)

(declare-fun e!2888467 () Unit!113132)

(declare-fun Unit!113189 () Unit!113132)

(assert (=> b!4630376 (= e!2888467 Unit!113189)))

(declare-fun b!4630377 () Bool)

(declare-fun e!2888468 () List!51718)

(assert (=> b!4630377 (= e!2888468 (keys!18191 lt!1790015))))

(declare-fun b!4630378 () Bool)

(assert (=> b!4630378 false))

(declare-fun lt!1790362 () Unit!113132)

(declare-fun lt!1790363 () Unit!113132)

(assert (=> b!4630378 (= lt!1790362 lt!1790363)))

(assert (=> b!4630378 (containsKey!2503 (toList!5017 lt!1790015) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!671 (List!51716 K!12965) Unit!113132)

(assert (=> b!4630378 (= lt!1790363 (lemmaInGetKeysListThenContainsKey!671 (toList!5017 lt!1790015) key!4968))))

(declare-fun Unit!113190 () Unit!113132)

(assert (=> b!4630378 (= e!2888467 Unit!113190)))

(declare-fun bm!323079 () Bool)

(assert (=> bm!323079 (= call!323084 (contains!14677 e!2888468 key!4968))))

(declare-fun c!792588 () Bool)

(assert (=> bm!323079 (= c!792588 c!792587)))

(declare-fun b!4630379 () Bool)

(assert (=> b!4630379 (= e!2888465 e!2888467)))

(declare-fun c!792589 () Bool)

(assert (=> b!4630379 (= c!792589 call!323084)))

(declare-fun b!4630380 () Bool)

(assert (=> b!4630380 (= e!2888463 (not (contains!14677 (keys!18191 lt!1790015) key!4968)))))

(declare-fun b!4630381 () Bool)

(declare-fun getKeysList!672 (List!51716) List!51718)

(assert (=> b!4630381 (= e!2888468 (getKeysList!672 (toList!5017 lt!1790015)))))

(assert (= (and d!1459113 c!792587) b!4630374))

(assert (= (and d!1459113 (not c!792587)) b!4630379))

(assert (= (and b!4630379 c!792589) b!4630378))

(assert (= (and b!4630379 (not c!792589)) b!4630376))

(assert (= (or b!4630374 b!4630379) bm!323079))

(assert (= (and bm!323079 c!792588) b!4630381))

(assert (= (and bm!323079 (not c!792588)) b!4630377))

(assert (= (and d!1459113 res!1942557) b!4630380))

(assert (= (and d!1459113 (not res!1942555)) b!4630373))

(assert (= (and b!4630373 res!1942556) b!4630375))

(declare-fun m!5478743 () Bool)

(assert (=> bm!323079 m!5478743))

(declare-fun m!5478745 () Bool)

(assert (=> b!4630374 m!5478745))

(declare-fun m!5478747 () Bool)

(assert (=> b!4630374 m!5478747))

(assert (=> b!4630374 m!5478747))

(declare-fun m!5478749 () Bool)

(assert (=> b!4630374 m!5478749))

(declare-fun m!5478751 () Bool)

(assert (=> b!4630374 m!5478751))

(assert (=> b!4630373 m!5478747))

(assert (=> b!4630373 m!5478747))

(assert (=> b!4630373 m!5478749))

(declare-fun m!5478753 () Bool)

(assert (=> d!1459113 m!5478753))

(declare-fun m!5478755 () Bool)

(assert (=> b!4630380 m!5478755))

(assert (=> b!4630380 m!5478755))

(declare-fun m!5478757 () Bool)

(assert (=> b!4630380 m!5478757))

(assert (=> b!4630375 m!5478755))

(assert (=> b!4630375 m!5478755))

(assert (=> b!4630375 m!5478757))

(assert (=> b!4630377 m!5478755))

(declare-fun m!5478759 () Bool)

(assert (=> b!4630381 m!5478759))

(assert (=> b!4630378 m!5478753))

(declare-fun m!5478761 () Bool)

(assert (=> b!4630378 m!5478761))

(assert (=> b!4630128 d!1459113))

(declare-fun bs!1026898 () Bool)

(declare-fun d!1459127 () Bool)

(assert (= bs!1026898 (and d!1459127 b!4630131)))

(declare-fun lambda!193482 () Int)

(assert (=> bs!1026898 (= lambda!193482 lambda!193384)))

(declare-fun bs!1026899 () Bool)

(assert (= bs!1026899 (and d!1459127 d!1459095)))

(assert (=> bs!1026899 (= lambda!193482 lambda!193478)))

(declare-fun lt!1790366 () ListMap!4321)

(assert (=> d!1459127 (invariantList!1222 (toList!5017 lt!1790366))))

(declare-fun e!2888471 () ListMap!4321)

(assert (=> d!1459127 (= lt!1790366 e!2888471)))

(declare-fun c!792590 () Bool)

(assert (=> d!1459127 (= c!792590 ((_ is Cons!51593) lt!1790021))))

(assert (=> d!1459127 (forall!10858 lt!1790021 lambda!193482)))

(assert (=> d!1459127 (= (extractMap!1582 lt!1790021) lt!1790366)))

(declare-fun b!4630384 () Bool)

(assert (=> b!4630384 (= e!2888471 (addToMapMapFromBucket!987 (_2!29570 (h!57661 lt!1790021)) (extractMap!1582 (t!358767 lt!1790021))))))

(declare-fun b!4630385 () Bool)

(assert (=> b!4630385 (= e!2888471 (ListMap!4322 Nil!51592))))

(assert (= (and d!1459127 c!792590) b!4630384))

(assert (= (and d!1459127 (not c!792590)) b!4630385))

(declare-fun m!5478763 () Bool)

(assert (=> d!1459127 m!5478763))

(declare-fun m!5478765 () Bool)

(assert (=> d!1459127 m!5478765))

(declare-fun m!5478767 () Bool)

(assert (=> b!4630384 m!5478767))

(assert (=> b!4630384 m!5478767))

(declare-fun m!5478769 () Bool)

(assert (=> b!4630384 m!5478769))

(assert (=> b!4630128 d!1459127))

(declare-fun bs!1026900 () Bool)

(declare-fun d!1459129 () Bool)

(assert (= bs!1026900 (and d!1459129 d!1459035)))

(declare-fun lambda!193483 () Int)

(assert (=> bs!1026900 (not (= lambda!193483 lambda!193473))))

(declare-fun bs!1026901 () Bool)

(assert (= bs!1026901 (and d!1459129 b!4630268)))

(assert (=> bs!1026901 (not (= lambda!193483 lambda!193471))))

(declare-fun bs!1026902 () Bool)

(assert (= bs!1026902 (and d!1459129 d!1459027)))

(assert (=> bs!1026902 (= lambda!193483 lambda!193387)))

(assert (=> bs!1026901 (not (= lambda!193483 lambda!193472))))

(declare-fun bs!1026903 () Bool)

(assert (= bs!1026903 (and d!1459129 b!4630269)))

(assert (=> bs!1026903 (not (= lambda!193483 lambda!193470))))

(assert (=> d!1459129 true))

(assert (=> d!1459129 true))

(assert (=> d!1459129 (= (allKeysSameHash!1380 oldBucket!40 hash!414 hashF!1389) (forall!10860 oldBucket!40 lambda!193483))))

(declare-fun bs!1026904 () Bool)

(assert (= bs!1026904 d!1459129))

(declare-fun m!5478777 () Bool)

(assert (=> bs!1026904 m!5478777))

(assert (=> b!4630129 d!1459129))

(declare-fun d!1459133 () Bool)

(assert (=> d!1459133 (eq!841 (extractMap!1582 (Cons!51593 (tuple2!52553 hash!414 lt!1790023) Nil!51593)) (-!566 (extractMap!1582 (Cons!51593 (tuple2!52553 hash!414 (t!358766 oldBucket!40)) Nil!51593)) key!4968))))

(declare-fun lt!1790376 () Unit!113132)

(declare-fun choose!31469 ((_ BitVec 64) List!51716 List!51716 K!12965 Hashable!5923) Unit!113132)

(assert (=> d!1459133 (= lt!1790376 (choose!31469 hash!414 (t!358766 oldBucket!40) lt!1790023 key!4968 hashF!1389))))

(assert (=> d!1459133 (noDuplicateKeys!1526 (t!358766 oldBucket!40))))

(assert (=> d!1459133 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!128 hash!414 (t!358766 oldBucket!40) lt!1790023 key!4968 hashF!1389) lt!1790376)))

(declare-fun bs!1026908 () Bool)

(assert (= bs!1026908 d!1459133))

(declare-fun m!5478787 () Bool)

(assert (=> bs!1026908 m!5478787))

(declare-fun m!5478789 () Bool)

(assert (=> bs!1026908 m!5478789))

(assert (=> bs!1026908 m!5478787))

(declare-fun m!5478791 () Bool)

(assert (=> bs!1026908 m!5478791))

(declare-fun m!5478793 () Bool)

(assert (=> bs!1026908 m!5478793))

(declare-fun m!5478795 () Bool)

(assert (=> bs!1026908 m!5478795))

(assert (=> bs!1026908 m!5478791))

(assert (=> bs!1026908 m!5478795))

(declare-fun m!5478797 () Bool)

(assert (=> bs!1026908 m!5478797))

(assert (=> b!4630140 d!1459133))

(declare-fun d!1459141 () Bool)

(declare-fun e!2888475 () Bool)

(assert (=> d!1459141 e!2888475))

(declare-fun res!1942563 () Bool)

(assert (=> d!1459141 (=> (not res!1942563) (not e!2888475))))

(declare-fun lt!1790379 () ListMap!4321)

(assert (=> d!1459141 (= res!1942563 (not (contains!14673 lt!1790379 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!270 (List!51716 K!12965) List!51716)

(assert (=> d!1459141 (= lt!1790379 (ListMap!4322 (removePresrvNoDuplicatedKeys!270 (toList!5017 lt!1790026) key!4968)))))

(assert (=> d!1459141 (= (-!566 lt!1790026 key!4968) lt!1790379)))

(declare-fun b!4630390 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8849 (List!51718) (InoxSet K!12965))

(assert (=> b!4630390 (= e!2888475 (= ((_ map and) (content!8849 (keys!18191 lt!1790026)) ((_ map not) (store ((as const (Array K!12965 Bool)) false) key!4968 true))) (content!8849 (keys!18191 lt!1790379))))))

(assert (= (and d!1459141 res!1942563) b!4630390))

(declare-fun m!5478799 () Bool)

(assert (=> d!1459141 m!5478799))

(declare-fun m!5478801 () Bool)

(assert (=> d!1459141 m!5478801))

(declare-fun m!5478803 () Bool)

(assert (=> b!4630390 m!5478803))

(declare-fun m!5478805 () Bool)

(assert (=> b!4630390 m!5478805))

(declare-fun m!5478807 () Bool)

(assert (=> b!4630390 m!5478807))

(declare-fun m!5478809 () Bool)

(assert (=> b!4630390 m!5478809))

(assert (=> b!4630390 m!5478803))

(declare-fun m!5478811 () Bool)

(assert (=> b!4630390 m!5478811))

(assert (=> b!4630390 m!5478807))

(assert (=> b!4630140 d!1459141))

(declare-fun d!1459143 () Bool)

(assert (=> d!1459143 (= (-!566 (+!1892 lt!1790026 (tuple2!52551 (_1!29569 (h!57660 oldBucket!40)) (_2!29569 (h!57660 oldBucket!40)))) key!4968) (+!1892 (-!566 lt!1790026 key!4968) (tuple2!52551 (_1!29569 (h!57660 oldBucket!40)) (_2!29569 (h!57660 oldBucket!40)))))))

(declare-fun lt!1790382 () Unit!113132)

(declare-fun choose!31470 (ListMap!4321 K!12965 V!13211 K!12965) Unit!113132)

(assert (=> d!1459143 (= lt!1790382 (choose!31470 lt!1790026 (_1!29569 (h!57660 oldBucket!40)) (_2!29569 (h!57660 oldBucket!40)) key!4968))))

(assert (=> d!1459143 (not (= (_1!29569 (h!57660 oldBucket!40)) key!4968))))

(assert (=> d!1459143 (= (addRemoveCommutativeForDiffKeys!21 lt!1790026 (_1!29569 (h!57660 oldBucket!40)) (_2!29569 (h!57660 oldBucket!40)) key!4968) lt!1790382)))

(declare-fun bs!1026909 () Bool)

(assert (= bs!1026909 d!1459143))

(assert (=> bs!1026909 m!5478245))

(declare-fun m!5478813 () Bool)

(assert (=> bs!1026909 m!5478813))

(declare-fun m!5478815 () Bool)

(assert (=> bs!1026909 m!5478815))

(assert (=> bs!1026909 m!5478815))

(declare-fun m!5478817 () Bool)

(assert (=> bs!1026909 m!5478817))

(declare-fun m!5478819 () Bool)

(assert (=> bs!1026909 m!5478819))

(assert (=> bs!1026909 m!5478245))

(assert (=> b!4630140 d!1459143))

(declare-fun d!1459145 () Bool)

(declare-fun content!8851 (List!51716) (InoxSet tuple2!52550))

(assert (=> d!1459145 (= (eq!841 lt!1790028 lt!1790022) (= (content!8851 (toList!5017 lt!1790028)) (content!8851 (toList!5017 lt!1790022))))))

(declare-fun bs!1026910 () Bool)

(assert (= bs!1026910 d!1459145))

(declare-fun m!5478821 () Bool)

(assert (=> bs!1026910 m!5478821))

(declare-fun m!5478823 () Bool)

(assert (=> bs!1026910 m!5478823))

(assert (=> b!4630140 d!1459145))

(declare-fun d!1459147 () Bool)

(declare-fun e!2888476 () Bool)

(assert (=> d!1459147 e!2888476))

(declare-fun res!1942564 () Bool)

(assert (=> d!1459147 (=> (not res!1942564) (not e!2888476))))

(declare-fun lt!1790383 () ListMap!4321)

(assert (=> d!1459147 (= res!1942564 (not (contains!14673 lt!1790383 key!4968)))))

(assert (=> d!1459147 (= lt!1790383 (ListMap!4322 (removePresrvNoDuplicatedKeys!270 (toList!5017 lt!1790020) key!4968)))))

(assert (=> d!1459147 (= (-!566 lt!1790020 key!4968) lt!1790383)))

(declare-fun b!4630391 () Bool)

(assert (=> b!4630391 (= e!2888476 (= ((_ map and) (content!8849 (keys!18191 lt!1790020)) ((_ map not) (store ((as const (Array K!12965 Bool)) false) key!4968 true))) (content!8849 (keys!18191 lt!1790383))))))

(assert (= (and d!1459147 res!1942564) b!4630391))

(declare-fun m!5478825 () Bool)

(assert (=> d!1459147 m!5478825))

(declare-fun m!5478827 () Bool)

(assert (=> d!1459147 m!5478827))

(declare-fun m!5478829 () Bool)

(assert (=> b!4630391 m!5478829))

(declare-fun m!5478831 () Bool)

(assert (=> b!4630391 m!5478831))

(declare-fun m!5478833 () Bool)

(assert (=> b!4630391 m!5478833))

(declare-fun m!5478835 () Bool)

(assert (=> b!4630391 m!5478835))

(assert (=> b!4630391 m!5478829))

(assert (=> b!4630391 m!5478811))

(assert (=> b!4630391 m!5478833))

(assert (=> b!4630140 d!1459147))

(declare-fun d!1459149 () Bool)

(declare-fun e!2888483 () Bool)

(assert (=> d!1459149 e!2888483))

(declare-fun res!1942578 () Bool)

(assert (=> d!1459149 (=> (not res!1942578) (not e!2888483))))

(declare-fun lt!1790408 () ListMap!4321)

(assert (=> d!1459149 (= res!1942578 (contains!14673 lt!1790408 (_1!29569 (h!57660 oldBucket!40))))))

(declare-fun lt!1790409 () List!51716)

(assert (=> d!1459149 (= lt!1790408 (ListMap!4322 lt!1790409))))

(declare-fun lt!1790411 () Unit!113132)

(declare-fun lt!1790410 () Unit!113132)

(assert (=> d!1459149 (= lt!1790411 lt!1790410)))

(assert (=> d!1459149 (= (getValueByKey!1486 lt!1790409 (_1!29569 (h!57660 oldBucket!40))) (Some!11645 (_2!29569 (h!57660 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!866 (List!51716 K!12965 V!13211) Unit!113132)

(assert (=> d!1459149 (= lt!1790410 (lemmaContainsTupThenGetReturnValue!866 lt!1790409 (_1!29569 (h!57660 oldBucket!40)) (_2!29569 (h!57660 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!374 (List!51716 K!12965 V!13211) List!51716)

(assert (=> d!1459149 (= lt!1790409 (insertNoDuplicatedKeys!374 (toList!5017 lt!1790022) (_1!29569 (h!57660 oldBucket!40)) (_2!29569 (h!57660 oldBucket!40))))))

(assert (=> d!1459149 (= (+!1892 lt!1790022 (h!57660 oldBucket!40)) lt!1790408)))

(declare-fun b!4630404 () Bool)

(declare-fun res!1942577 () Bool)

(assert (=> b!4630404 (=> (not res!1942577) (not e!2888483))))

(assert (=> b!4630404 (= res!1942577 (= (getValueByKey!1486 (toList!5017 lt!1790408) (_1!29569 (h!57660 oldBucket!40))) (Some!11645 (_2!29569 (h!57660 oldBucket!40)))))))

(declare-fun b!4630405 () Bool)

(declare-fun contains!14679 (List!51716 tuple2!52550) Bool)

(assert (=> b!4630405 (= e!2888483 (contains!14679 (toList!5017 lt!1790408) (h!57660 oldBucket!40)))))

(assert (= (and d!1459149 res!1942578) b!4630404))

(assert (= (and b!4630404 res!1942577) b!4630405))

(declare-fun m!5478837 () Bool)

(assert (=> d!1459149 m!5478837))

(declare-fun m!5478839 () Bool)

(assert (=> d!1459149 m!5478839))

(declare-fun m!5478841 () Bool)

(assert (=> d!1459149 m!5478841))

(declare-fun m!5478843 () Bool)

(assert (=> d!1459149 m!5478843))

(declare-fun m!5478845 () Bool)

(assert (=> b!4630404 m!5478845))

(declare-fun m!5478847 () Bool)

(assert (=> b!4630405 m!5478847))

(assert (=> b!4630140 d!1459149))

(declare-fun d!1459151 () Bool)

(declare-fun e!2888484 () Bool)

(assert (=> d!1459151 e!2888484))

(declare-fun res!1942579 () Bool)

(assert (=> d!1459151 (=> (not res!1942579) (not e!2888484))))

(declare-fun lt!1790412 () ListMap!4321)

(assert (=> d!1459151 (= res!1942579 (not (contains!14673 lt!1790412 key!4968)))))

(assert (=> d!1459151 (= lt!1790412 (ListMap!4322 (removePresrvNoDuplicatedKeys!270 (toList!5017 (+!1892 lt!1790026 (h!57660 oldBucket!40))) key!4968)))))

(assert (=> d!1459151 (= (-!566 (+!1892 lt!1790026 (h!57660 oldBucket!40)) key!4968) lt!1790412)))

(declare-fun b!4630406 () Bool)

(assert (=> b!4630406 (= e!2888484 (= ((_ map and) (content!8849 (keys!18191 (+!1892 lt!1790026 (h!57660 oldBucket!40)))) ((_ map not) (store ((as const (Array K!12965 Bool)) false) key!4968 true))) (content!8849 (keys!18191 lt!1790412))))))

(assert (= (and d!1459151 res!1942579) b!4630406))

(declare-fun m!5478849 () Bool)

(assert (=> d!1459151 m!5478849))

(declare-fun m!5478851 () Bool)

(assert (=> d!1459151 m!5478851))

(declare-fun m!5478853 () Bool)

(assert (=> b!4630406 m!5478853))

(declare-fun m!5478855 () Bool)

(assert (=> b!4630406 m!5478855))

(declare-fun m!5478857 () Bool)

(assert (=> b!4630406 m!5478857))

(declare-fun m!5478859 () Bool)

(assert (=> b!4630406 m!5478859))

(assert (=> b!4630406 m!5478247))

(assert (=> b!4630406 m!5478853))

(assert (=> b!4630406 m!5478811))

(assert (=> b!4630406 m!5478857))

(assert (=> b!4630140 d!1459151))

(declare-fun d!1459153 () Bool)

(declare-fun e!2888485 () Bool)

(assert (=> d!1459153 e!2888485))

(declare-fun res!1942581 () Bool)

(assert (=> d!1459153 (=> (not res!1942581) (not e!2888485))))

(declare-fun lt!1790413 () ListMap!4321)

(assert (=> d!1459153 (= res!1942581 (contains!14673 lt!1790413 (_1!29569 (h!57660 oldBucket!40))))))

(declare-fun lt!1790414 () List!51716)

(assert (=> d!1459153 (= lt!1790413 (ListMap!4322 lt!1790414))))

(declare-fun lt!1790416 () Unit!113132)

(declare-fun lt!1790415 () Unit!113132)

(assert (=> d!1459153 (= lt!1790416 lt!1790415)))

(assert (=> d!1459153 (= (getValueByKey!1486 lt!1790414 (_1!29569 (h!57660 oldBucket!40))) (Some!11645 (_2!29569 (h!57660 oldBucket!40))))))

(assert (=> d!1459153 (= lt!1790415 (lemmaContainsTupThenGetReturnValue!866 lt!1790414 (_1!29569 (h!57660 oldBucket!40)) (_2!29569 (h!57660 oldBucket!40))))))

(assert (=> d!1459153 (= lt!1790414 (insertNoDuplicatedKeys!374 (toList!5017 lt!1790026) (_1!29569 (h!57660 oldBucket!40)) (_2!29569 (h!57660 oldBucket!40))))))

(assert (=> d!1459153 (= (+!1892 lt!1790026 (h!57660 oldBucket!40)) lt!1790413)))

(declare-fun b!4630407 () Bool)

(declare-fun res!1942580 () Bool)

(assert (=> b!4630407 (=> (not res!1942580) (not e!2888485))))

(assert (=> b!4630407 (= res!1942580 (= (getValueByKey!1486 (toList!5017 lt!1790413) (_1!29569 (h!57660 oldBucket!40))) (Some!11645 (_2!29569 (h!57660 oldBucket!40)))))))

(declare-fun b!4630408 () Bool)

(assert (=> b!4630408 (= e!2888485 (contains!14679 (toList!5017 lt!1790413) (h!57660 oldBucket!40)))))

(assert (= (and d!1459153 res!1942581) b!4630407))

(assert (= (and b!4630407 res!1942580) b!4630408))

(declare-fun m!5478861 () Bool)

(assert (=> d!1459153 m!5478861))

(declare-fun m!5478863 () Bool)

(assert (=> d!1459153 m!5478863))

(declare-fun m!5478865 () Bool)

(assert (=> d!1459153 m!5478865))

(declare-fun m!5478867 () Bool)

(assert (=> d!1459153 m!5478867))

(declare-fun m!5478869 () Bool)

(assert (=> b!4630407 m!5478869))

(declare-fun m!5478871 () Bool)

(assert (=> b!4630408 m!5478871))

(assert (=> b!4630140 d!1459153))

(declare-fun b!4630409 () Bool)

(declare-fun e!2888486 () List!51716)

(assert (=> b!4630409 (= e!2888486 (t!358766 oldBucket!40))))

(declare-fun d!1459155 () Bool)

(declare-fun lt!1790417 () List!51716)

(assert (=> d!1459155 (not (containsKey!2502 lt!1790417 key!4968))))

(assert (=> d!1459155 (= lt!1790417 e!2888486)))

(declare-fun c!792591 () Bool)

(assert (=> d!1459155 (= c!792591 (and ((_ is Cons!51592) oldBucket!40) (= (_1!29569 (h!57660 oldBucket!40)) key!4968)))))

(assert (=> d!1459155 (noDuplicateKeys!1526 oldBucket!40)))

(assert (=> d!1459155 (= (removePairForKey!1149 oldBucket!40 key!4968) lt!1790417)))

(declare-fun b!4630410 () Bool)

(declare-fun e!2888487 () List!51716)

(assert (=> b!4630410 (= e!2888486 e!2888487)))

(declare-fun c!792592 () Bool)

(assert (=> b!4630410 (= c!792592 ((_ is Cons!51592) oldBucket!40))))

(declare-fun b!4630412 () Bool)

(assert (=> b!4630412 (= e!2888487 Nil!51592)))

(declare-fun b!4630411 () Bool)

(assert (=> b!4630411 (= e!2888487 (Cons!51592 (h!57660 oldBucket!40) (removePairForKey!1149 (t!358766 oldBucket!40) key!4968)))))

(assert (= (and d!1459155 c!792591) b!4630409))

(assert (= (and d!1459155 (not c!792591)) b!4630410))

(assert (= (and b!4630410 c!792592) b!4630411))

(assert (= (and b!4630410 (not c!792592)) b!4630412))

(declare-fun m!5478873 () Bool)

(assert (=> d!1459155 m!5478873))

(assert (=> d!1459155 m!5478193))

(assert (=> b!4630411 m!5478279))

(assert (=> b!4630141 d!1459155))

(declare-fun b!4630413 () Bool)

(declare-fun e!2888488 () List!51716)

(assert (=> b!4630413 (= e!2888488 (t!358766 (t!358766 oldBucket!40)))))

(declare-fun d!1459157 () Bool)

(declare-fun lt!1790418 () List!51716)

(assert (=> d!1459157 (not (containsKey!2502 lt!1790418 key!4968))))

(assert (=> d!1459157 (= lt!1790418 e!2888488)))

(declare-fun c!792593 () Bool)

(assert (=> d!1459157 (= c!792593 (and ((_ is Cons!51592) (t!358766 oldBucket!40)) (= (_1!29569 (h!57660 (t!358766 oldBucket!40))) key!4968)))))

(assert (=> d!1459157 (noDuplicateKeys!1526 (t!358766 oldBucket!40))))

(assert (=> d!1459157 (= (removePairForKey!1149 (t!358766 oldBucket!40) key!4968) lt!1790418)))

(declare-fun b!4630414 () Bool)

(declare-fun e!2888489 () List!51716)

(assert (=> b!4630414 (= e!2888488 e!2888489)))

(declare-fun c!792594 () Bool)

(assert (=> b!4630414 (= c!792594 ((_ is Cons!51592) (t!358766 oldBucket!40)))))

(declare-fun b!4630416 () Bool)

(assert (=> b!4630416 (= e!2888489 Nil!51592)))

(declare-fun b!4630415 () Bool)

(assert (=> b!4630415 (= e!2888489 (Cons!51592 (h!57660 (t!358766 oldBucket!40)) (removePairForKey!1149 (t!358766 (t!358766 oldBucket!40)) key!4968)))))

(assert (= (and d!1459157 c!792593) b!4630413))

(assert (= (and d!1459157 (not c!792593)) b!4630414))

(assert (= (and b!4630414 c!792594) b!4630415))

(assert (= (and b!4630414 (not c!792594)) b!4630416))

(declare-fun m!5478875 () Bool)

(assert (=> d!1459157 m!5478875))

(assert (=> d!1459157 m!5478789))

(declare-fun m!5478877 () Bool)

(assert (=> b!4630415 m!5478877))

(assert (=> b!4630130 d!1459157))

(declare-fun bs!1026925 () Bool)

(declare-fun d!1459159 () Bool)

(assert (= bs!1026925 (and d!1459159 b!4630131)))

(declare-fun lambda!193494 () Int)

(assert (=> bs!1026925 (= lambda!193494 lambda!193384)))

(declare-fun bs!1026928 () Bool)

(assert (= bs!1026928 (and d!1459159 d!1459095)))

(assert (=> bs!1026928 (= lambda!193494 lambda!193478)))

(declare-fun bs!1026929 () Bool)

(assert (= bs!1026929 (and d!1459159 d!1459127)))

(assert (=> bs!1026929 (= lambda!193494 lambda!193482)))

(assert (=> d!1459159 (contains!14675 lt!1790014 (hash!3554 hashF!1389 key!4968))))

(declare-fun lt!1790450 () Unit!113132)

(declare-fun choose!31473 (ListLongMap!3607 K!12965 Hashable!5923) Unit!113132)

(assert (=> d!1459159 (= lt!1790450 (choose!31473 lt!1790014 key!4968 hashF!1389))))

(assert (=> d!1459159 (forall!10858 (toList!5018 lt!1790014) lambda!193494)))

(assert (=> d!1459159 (= (lemmaInGenMapThenLongMapContainsHash!524 lt!1790014 key!4968 hashF!1389) lt!1790450)))

(declare-fun bs!1026933 () Bool)

(assert (= bs!1026933 d!1459159))

(assert (=> bs!1026933 m!5478259))

(assert (=> bs!1026933 m!5478259))

(declare-fun m!5478905 () Bool)

(assert (=> bs!1026933 m!5478905))

(declare-fun m!5478907 () Bool)

(assert (=> bs!1026933 m!5478907))

(declare-fun m!5478909 () Bool)

(assert (=> bs!1026933 m!5478909))

(assert (=> b!4630131 d!1459159))

(declare-fun d!1459163 () Bool)

(declare-fun dynLambda!21515 (Int tuple2!52552) Bool)

(assert (=> d!1459163 (dynLambda!21515 lambda!193384 lt!1790029)))

(declare-fun lt!1790453 () Unit!113132)

(declare-fun choose!31474 (List!51717 Int tuple2!52552) Unit!113132)

(assert (=> d!1459163 (= lt!1790453 (choose!31474 lt!1790021 lambda!193384 lt!1790029))))

(declare-fun e!2888497 () Bool)

(assert (=> d!1459163 e!2888497))

(declare-fun res!1942591 () Bool)

(assert (=> d!1459163 (=> (not res!1942591) (not e!2888497))))

(assert (=> d!1459163 (= res!1942591 (forall!10858 lt!1790021 lambda!193384))))

(assert (=> d!1459163 (= (forallContained!3088 lt!1790021 lambda!193384 lt!1790029) lt!1790453)))

(declare-fun b!4630428 () Bool)

(assert (=> b!4630428 (= e!2888497 (contains!14674 lt!1790021 lt!1790029))))

(assert (= (and d!1459163 res!1942591) b!4630428))

(declare-fun b_lambda!170857 () Bool)

(assert (=> (not b_lambda!170857) (not d!1459163)))

(declare-fun m!5478911 () Bool)

(assert (=> d!1459163 m!5478911))

(declare-fun m!5478913 () Bool)

(assert (=> d!1459163 m!5478913))

(declare-fun m!5478915 () Bool)

(assert (=> d!1459163 m!5478915))

(assert (=> b!4630428 m!5478185))

(assert (=> b!4630131 d!1459163))

(declare-fun d!1459165 () Bool)

(declare-fun isEmpty!28947 (Option!11644) Bool)

(assert (=> d!1459165 (= (isDefined!8909 (getPair!318 lt!1790024 key!4968)) (not (isEmpty!28947 (getPair!318 lt!1790024 key!4968))))))

(declare-fun bs!1026949 () Bool)

(assert (= bs!1026949 d!1459165))

(assert (=> bs!1026949 m!5478171))

(declare-fun m!5478917 () Bool)

(assert (=> bs!1026949 m!5478917))

(assert (=> b!4630131 d!1459165))

(declare-fun d!1459167 () Bool)

(assert (=> d!1459167 (contains!14674 (toList!5018 lt!1790014) (tuple2!52553 lt!1790033 lt!1790024))))

(declare-fun lt!1790456 () Unit!113132)

(declare-fun choose!31475 (ListLongMap!3607 (_ BitVec 64) List!51716) Unit!113132)

(assert (=> d!1459167 (= lt!1790456 (choose!31475 lt!1790014 lt!1790033 lt!1790024))))

(assert (=> d!1459167 (contains!14675 lt!1790014 lt!1790033)))

(assert (=> d!1459167 (= (lemmaGetValueImpliesTupleContained!123 lt!1790014 lt!1790033 lt!1790024) lt!1790456)))

(declare-fun bs!1026965 () Bool)

(assert (= bs!1026965 d!1459167))

(declare-fun m!5478919 () Bool)

(assert (=> bs!1026965 m!5478919))

(declare-fun m!5478921 () Bool)

(assert (=> bs!1026965 m!5478921))

(assert (=> bs!1026965 m!5478175))

(assert (=> b!4630131 d!1459167))

(declare-fun d!1459169 () Bool)

(declare-fun res!1942596 () Bool)

(declare-fun e!2888503 () Bool)

(assert (=> d!1459169 (=> res!1942596 e!2888503)))

(assert (=> d!1459169 (= res!1942596 (and ((_ is Cons!51592) (t!358766 oldBucket!40)) (= (_1!29569 (h!57660 (t!358766 oldBucket!40))) key!4968)))))

(assert (=> d!1459169 (= (containsKey!2502 (t!358766 oldBucket!40) key!4968) e!2888503)))

(declare-fun b!4630436 () Bool)

(declare-fun e!2888504 () Bool)

(assert (=> b!4630436 (= e!2888503 e!2888504)))

(declare-fun res!1942597 () Bool)

(assert (=> b!4630436 (=> (not res!1942597) (not e!2888504))))

(assert (=> b!4630436 (= res!1942597 ((_ is Cons!51592) (t!358766 oldBucket!40)))))

(declare-fun b!4630437 () Bool)

(assert (=> b!4630437 (= e!2888504 (containsKey!2502 (t!358766 (t!358766 oldBucket!40)) key!4968))))

(assert (= (and d!1459169 (not res!1942596)) b!4630436))

(assert (= (and b!4630436 res!1942597) b!4630437))

(declare-fun m!5478957 () Bool)

(assert (=> b!4630437 m!5478957))

(assert (=> b!4630131 d!1459169))

(declare-fun d!1459173 () Bool)

(declare-datatypes ((Option!11647 0))(
  ( (None!11646) (Some!11646 (v!45812 List!51716)) )
))
(declare-fun get!17121 (Option!11647) List!51716)

(declare-fun getValueByKey!1487 (List!51717 (_ BitVec 64)) Option!11647)

(assert (=> d!1459173 (= (apply!12191 lt!1790014 lt!1790033) (get!17121 (getValueByKey!1487 (toList!5018 lt!1790014) lt!1790033)))))

(declare-fun bs!1026974 () Bool)

(assert (= bs!1026974 d!1459173))

(declare-fun m!5478967 () Bool)

(assert (=> bs!1026974 m!5478967))

(assert (=> bs!1026974 m!5478967))

(declare-fun m!5478973 () Bool)

(assert (=> bs!1026974 m!5478973))

(assert (=> b!4630131 d!1459173))

(declare-fun d!1459177 () Bool)

(declare-fun res!1942601 () Bool)

(declare-fun e!2888511 () Bool)

(assert (=> d!1459177 (=> res!1942601 e!2888511)))

(assert (=> d!1459177 (= res!1942601 (and ((_ is Cons!51592) oldBucket!40) (= (_1!29569 (h!57660 oldBucket!40)) key!4968)))))

(assert (=> d!1459177 (= (containsKey!2502 oldBucket!40 key!4968) e!2888511)))

(declare-fun b!4630447 () Bool)

(declare-fun e!2888512 () Bool)

(assert (=> b!4630447 (= e!2888511 e!2888512)))

(declare-fun res!1942602 () Bool)

(assert (=> b!4630447 (=> (not res!1942602) (not e!2888512))))

(assert (=> b!4630447 (= res!1942602 ((_ is Cons!51592) oldBucket!40))))

(declare-fun b!4630448 () Bool)

(assert (=> b!4630448 (= e!2888512 (containsKey!2502 (t!358766 oldBucket!40) key!4968))))

(assert (= (and d!1459177 (not res!1942601)) b!4630447))

(assert (= (and b!4630447 res!1942602) b!4630448))

(assert (=> b!4630448 m!5478187))

(assert (=> b!4630131 d!1459177))

(declare-fun d!1459179 () Bool)

(declare-fun lt!1790470 () Bool)

(declare-fun content!8852 (List!51717) (InoxSet tuple2!52552))

(assert (=> d!1459179 (= lt!1790470 (select (content!8852 lt!1790021) lt!1790029))))

(declare-fun e!2888520 () Bool)

(assert (=> d!1459179 (= lt!1790470 e!2888520)))

(declare-fun res!1942607 () Bool)

(assert (=> d!1459179 (=> (not res!1942607) (not e!2888520))))

(assert (=> d!1459179 (= res!1942607 ((_ is Cons!51593) lt!1790021))))

(assert (=> d!1459179 (= (contains!14674 lt!1790021 lt!1790029) lt!1790470)))

(declare-fun b!4630459 () Bool)

(declare-fun e!2888521 () Bool)

(assert (=> b!4630459 (= e!2888520 e!2888521)))

(declare-fun res!1942608 () Bool)

(assert (=> b!4630459 (=> res!1942608 e!2888521)))

(assert (=> b!4630459 (= res!1942608 (= (h!57661 lt!1790021) lt!1790029))))

(declare-fun b!4630460 () Bool)

(assert (=> b!4630460 (= e!2888521 (contains!14674 (t!358767 lt!1790021) lt!1790029))))

(assert (= (and d!1459179 res!1942607) b!4630459))

(assert (= (and b!4630459 (not res!1942608)) b!4630460))

(declare-fun m!5479003 () Bool)

(assert (=> d!1459179 m!5479003))

(declare-fun m!5479005 () Bool)

(assert (=> d!1459179 m!5479005))

(declare-fun m!5479007 () Bool)

(assert (=> b!4630460 m!5479007))

(assert (=> b!4630131 d!1459179))

(declare-fun b!4630478 () Bool)

(declare-fun e!2888535 () Option!11644)

(assert (=> b!4630478 (= e!2888535 (getPair!318 (t!358766 lt!1790024) key!4968))))

(declare-fun b!4630479 () Bool)

(declare-fun e!2888534 () Bool)

(declare-fun lt!1790474 () Option!11644)

(declare-fun get!17122 (Option!11644) tuple2!52550)

(assert (=> b!4630479 (= e!2888534 (contains!14679 lt!1790024 (get!17122 lt!1790474)))))

(declare-fun b!4630480 () Bool)

(declare-fun e!2888536 () Bool)

(assert (=> b!4630480 (= e!2888536 (not (containsKey!2502 lt!1790024 key!4968)))))

(declare-fun b!4630481 () Bool)

(assert (=> b!4630481 (= e!2888535 None!11643)))

(declare-fun b!4630482 () Bool)

(declare-fun res!1942620 () Bool)

(assert (=> b!4630482 (=> (not res!1942620) (not e!2888534))))

(assert (=> b!4630482 (= res!1942620 (= (_1!29569 (get!17122 lt!1790474)) key!4968))))

(declare-fun b!4630483 () Bool)

(declare-fun e!2888537 () Option!11644)

(assert (=> b!4630483 (= e!2888537 e!2888535)))

(declare-fun c!792607 () Bool)

(assert (=> b!4630483 (= c!792607 ((_ is Cons!51592) lt!1790024))))

(declare-fun d!1459191 () Bool)

(declare-fun e!2888533 () Bool)

(assert (=> d!1459191 e!2888533))

(declare-fun res!1942621 () Bool)

(assert (=> d!1459191 (=> res!1942621 e!2888533)))

(assert (=> d!1459191 (= res!1942621 e!2888536)))

(declare-fun res!1942618 () Bool)

(assert (=> d!1459191 (=> (not res!1942618) (not e!2888536))))

(assert (=> d!1459191 (= res!1942618 (isEmpty!28947 lt!1790474))))

(assert (=> d!1459191 (= lt!1790474 e!2888537)))

(declare-fun c!792608 () Bool)

(assert (=> d!1459191 (= c!792608 (and ((_ is Cons!51592) lt!1790024) (= (_1!29569 (h!57660 lt!1790024)) key!4968)))))

(assert (=> d!1459191 (noDuplicateKeys!1526 lt!1790024)))

(assert (=> d!1459191 (= (getPair!318 lt!1790024 key!4968) lt!1790474)))

(declare-fun b!4630484 () Bool)

(assert (=> b!4630484 (= e!2888533 e!2888534)))

(declare-fun res!1942619 () Bool)

(assert (=> b!4630484 (=> (not res!1942619) (not e!2888534))))

(assert (=> b!4630484 (= res!1942619 (isDefined!8909 lt!1790474))))

(declare-fun b!4630485 () Bool)

(assert (=> b!4630485 (= e!2888537 (Some!11643 (h!57660 lt!1790024)))))

(assert (= (and d!1459191 c!792608) b!4630485))

(assert (= (and d!1459191 (not c!792608)) b!4630483))

(assert (= (and b!4630483 c!792607) b!4630478))

(assert (= (and b!4630483 (not c!792607)) b!4630481))

(assert (= (and d!1459191 res!1942618) b!4630480))

(assert (= (and d!1459191 (not res!1942621)) b!4630484))

(assert (= (and b!4630484 res!1942619) b!4630482))

(assert (= (and b!4630482 res!1942620) b!4630479))

(declare-fun m!5479027 () Bool)

(assert (=> d!1459191 m!5479027))

(declare-fun m!5479029 () Bool)

(assert (=> d!1459191 m!5479029))

(declare-fun m!5479031 () Bool)

(assert (=> b!4630479 m!5479031))

(assert (=> b!4630479 m!5479031))

(declare-fun m!5479033 () Bool)

(assert (=> b!4630479 m!5479033))

(declare-fun m!5479035 () Bool)

(assert (=> b!4630480 m!5479035))

(declare-fun m!5479037 () Bool)

(assert (=> b!4630484 m!5479037))

(assert (=> b!4630482 m!5479031))

(declare-fun m!5479039 () Bool)

(assert (=> b!4630478 m!5479039))

(assert (=> b!4630131 d!1459191))

(declare-fun d!1459201 () Bool)

(declare-fun e!2888546 () Bool)

(assert (=> d!1459201 e!2888546))

(declare-fun res!1942624 () Bool)

(assert (=> d!1459201 (=> res!1942624 e!2888546)))

(declare-fun lt!1790489 () Bool)

(assert (=> d!1459201 (= res!1942624 (not lt!1790489))))

(declare-fun lt!1790486 () Bool)

(assert (=> d!1459201 (= lt!1790489 lt!1790486)))

(declare-fun lt!1790487 () Unit!113132)

(declare-fun e!2888547 () Unit!113132)

(assert (=> d!1459201 (= lt!1790487 e!2888547)))

(declare-fun c!792611 () Bool)

(assert (=> d!1459201 (= c!792611 lt!1790486)))

(declare-fun containsKey!2505 (List!51717 (_ BitVec 64)) Bool)

(assert (=> d!1459201 (= lt!1790486 (containsKey!2505 (toList!5018 lt!1790014) lt!1790033))))

(assert (=> d!1459201 (= (contains!14675 lt!1790014 lt!1790033) lt!1790489)))

(declare-fun b!4630498 () Bool)

(declare-fun lt!1790488 () Unit!113132)

(assert (=> b!4630498 (= e!2888547 lt!1790488)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1389 (List!51717 (_ BitVec 64)) Unit!113132)

(assert (=> b!4630498 (= lt!1790488 (lemmaContainsKeyImpliesGetValueByKeyDefined!1389 (toList!5018 lt!1790014) lt!1790033))))

(declare-fun isDefined!8912 (Option!11647) Bool)

(assert (=> b!4630498 (isDefined!8912 (getValueByKey!1487 (toList!5018 lt!1790014) lt!1790033))))

(declare-fun b!4630499 () Bool)

(declare-fun Unit!113193 () Unit!113132)

(assert (=> b!4630499 (= e!2888547 Unit!113193)))

(declare-fun b!4630500 () Bool)

(assert (=> b!4630500 (= e!2888546 (isDefined!8912 (getValueByKey!1487 (toList!5018 lt!1790014) lt!1790033)))))

(assert (= (and d!1459201 c!792611) b!4630498))

(assert (= (and d!1459201 (not c!792611)) b!4630499))

(assert (= (and d!1459201 (not res!1942624)) b!4630500))

(declare-fun m!5479053 () Bool)

(assert (=> d!1459201 m!5479053))

(declare-fun m!5479055 () Bool)

(assert (=> b!4630498 m!5479055))

(assert (=> b!4630498 m!5478967))

(assert (=> b!4630498 m!5478967))

(declare-fun m!5479057 () Bool)

(assert (=> b!4630498 m!5479057))

(assert (=> b!4630500 m!5478967))

(assert (=> b!4630500 m!5478967))

(assert (=> b!4630500 m!5479057))

(assert (=> b!4630131 d!1459201))

(declare-fun d!1459209 () Bool)

(assert (=> d!1459209 (containsKey!2502 oldBucket!40 key!4968)))

(declare-fun lt!1790492 () Unit!113132)

(declare-fun choose!31476 (List!51716 K!12965 Hashable!5923) Unit!113132)

(assert (=> d!1459209 (= lt!1790492 (choose!31476 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1459209 (noDuplicateKeys!1526 oldBucket!40)))

(assert (=> d!1459209 (= (lemmaGetPairDefinedThenContainsKey!72 oldBucket!40 key!4968 hashF!1389) lt!1790492)))

(declare-fun bs!1027007 () Bool)

(assert (= bs!1027007 d!1459209))

(assert (=> bs!1027007 m!5478181))

(declare-fun m!5479059 () Bool)

(assert (=> bs!1027007 m!5479059))

(assert (=> bs!1027007 m!5478193))

(assert (=> b!4630131 d!1459209))

(declare-fun bs!1027008 () Bool)

(declare-fun d!1459211 () Bool)

(assert (= bs!1027008 (and d!1459211 b!4630131)))

(declare-fun lambda!193507 () Int)

(assert (=> bs!1027008 (= lambda!193507 lambda!193384)))

(declare-fun bs!1027009 () Bool)

(assert (= bs!1027009 (and d!1459211 d!1459095)))

(assert (=> bs!1027009 (= lambda!193507 lambda!193478)))

(declare-fun bs!1027010 () Bool)

(assert (= bs!1027010 (and d!1459211 d!1459127)))

(assert (=> bs!1027010 (= lambda!193507 lambda!193482)))

(declare-fun bs!1027011 () Bool)

(assert (= bs!1027011 (and d!1459211 d!1459159)))

(assert (=> bs!1027011 (= lambda!193507 lambda!193494)))

(declare-fun b!4630511 () Bool)

(declare-fun e!2888552 () Bool)

(assert (=> b!4630511 (= e!2888552 (isDefined!8909 (getPair!318 (apply!12191 lt!1790014 (hash!3554 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1790513 () Unit!113132)

(assert (=> b!4630511 (= lt!1790513 (forallContained!3088 (toList!5018 lt!1790014) lambda!193507 (tuple2!52553 (hash!3554 hashF!1389 key!4968) (apply!12191 lt!1790014 (hash!3554 hashF!1389 key!4968)))))))

(declare-fun lt!1790511 () Unit!113132)

(declare-fun lt!1790514 () Unit!113132)

(assert (=> b!4630511 (= lt!1790511 lt!1790514)))

(declare-fun lt!1790512 () (_ BitVec 64))

(declare-fun lt!1790509 () List!51716)

(assert (=> b!4630511 (contains!14674 (toList!5018 lt!1790014) (tuple2!52553 lt!1790512 lt!1790509))))

(assert (=> b!4630511 (= lt!1790514 (lemmaGetValueImpliesTupleContained!123 lt!1790014 lt!1790512 lt!1790509))))

(declare-fun e!2888553 () Bool)

(assert (=> b!4630511 e!2888553))

(declare-fun res!1942636 () Bool)

(assert (=> b!4630511 (=> (not res!1942636) (not e!2888553))))

(assert (=> b!4630511 (= res!1942636 (contains!14675 lt!1790014 lt!1790512))))

(assert (=> b!4630511 (= lt!1790509 (apply!12191 lt!1790014 (hash!3554 hashF!1389 key!4968)))))

(assert (=> b!4630511 (= lt!1790512 (hash!3554 hashF!1389 key!4968))))

(declare-fun lt!1790515 () Unit!113132)

(declare-fun lt!1790516 () Unit!113132)

(assert (=> b!4630511 (= lt!1790515 lt!1790516)))

(assert (=> b!4630511 (contains!14675 lt!1790014 (hash!3554 hashF!1389 key!4968))))

(assert (=> b!4630511 (= lt!1790516 (lemmaInGenMapThenLongMapContainsHash!524 lt!1790014 key!4968 hashF!1389))))

(declare-fun b!4630512 () Bool)

(assert (=> b!4630512 (= e!2888553 (= (getValueByKey!1487 (toList!5018 lt!1790014) lt!1790512) (Some!11646 lt!1790509)))))

(declare-fun b!4630509 () Bool)

(declare-fun res!1942634 () Bool)

(assert (=> b!4630509 (=> (not res!1942634) (not e!2888552))))

(declare-fun allKeysSameHashInMap!1547 (ListLongMap!3607 Hashable!5923) Bool)

(assert (=> b!4630509 (= res!1942634 (allKeysSameHashInMap!1547 lt!1790014 hashF!1389))))

(assert (=> d!1459211 e!2888552))

(declare-fun res!1942633 () Bool)

(assert (=> d!1459211 (=> (not res!1942633) (not e!2888552))))

(assert (=> d!1459211 (= res!1942633 (forall!10858 (toList!5018 lt!1790014) lambda!193507))))

(declare-fun lt!1790510 () Unit!113132)

(declare-fun choose!31477 (ListLongMap!3607 K!12965 Hashable!5923) Unit!113132)

(assert (=> d!1459211 (= lt!1790510 (choose!31477 lt!1790014 key!4968 hashF!1389))))

(assert (=> d!1459211 (forall!10858 (toList!5018 lt!1790014) lambda!193507)))

(assert (=> d!1459211 (= (lemmaInGenMapThenGetPairDefined!114 lt!1790014 key!4968 hashF!1389) lt!1790510)))

(declare-fun b!4630510 () Bool)

(declare-fun res!1942635 () Bool)

(assert (=> b!4630510 (=> (not res!1942635) (not e!2888552))))

(assert (=> b!4630510 (= res!1942635 (contains!14673 (extractMap!1582 (toList!5018 lt!1790014)) key!4968))))

(assert (= (and d!1459211 res!1942633) b!4630509))

(assert (= (and b!4630509 res!1942634) b!4630510))

(assert (= (and b!4630510 res!1942635) b!4630511))

(assert (= (and b!4630511 res!1942636) b!4630512))

(declare-fun m!5479061 () Bool)

(assert (=> d!1459211 m!5479061))

(declare-fun m!5479063 () Bool)

(assert (=> d!1459211 m!5479063))

(assert (=> d!1459211 m!5479061))

(declare-fun m!5479065 () Bool)

(assert (=> b!4630510 m!5479065))

(assert (=> b!4630510 m!5479065))

(declare-fun m!5479067 () Bool)

(assert (=> b!4630510 m!5479067))

(declare-fun m!5479069 () Bool)

(assert (=> b!4630509 m!5479069))

(declare-fun m!5479071 () Bool)

(assert (=> b!4630511 m!5479071))

(declare-fun m!5479073 () Bool)

(assert (=> b!4630511 m!5479073))

(declare-fun m!5479075 () Bool)

(assert (=> b!4630511 m!5479075))

(assert (=> b!4630511 m!5479075))

(declare-fun m!5479077 () Bool)

(assert (=> b!4630511 m!5479077))

(assert (=> b!4630511 m!5478167))

(declare-fun m!5479079 () Bool)

(assert (=> b!4630511 m!5479079))

(declare-fun m!5479081 () Bool)

(assert (=> b!4630511 m!5479081))

(assert (=> b!4630511 m!5478259))

(assert (=> b!4630511 m!5478259))

(assert (=> b!4630511 m!5478905))

(declare-fun m!5479083 () Bool)

(assert (=> b!4630511 m!5479083))

(assert (=> b!4630511 m!5478259))

(assert (=> b!4630511 m!5479073))

(declare-fun m!5479085 () Bool)

(assert (=> b!4630512 m!5479085))

(assert (=> b!4630131 d!1459211))

(declare-fun d!1459213 () Bool)

(declare-fun res!1942641 () Bool)

(declare-fun e!2888558 () Bool)

(assert (=> d!1459213 (=> res!1942641 e!2888558)))

(assert (=> d!1459213 (= res!1942641 (not ((_ is Cons!51592) newBucket!224)))))

(assert (=> d!1459213 (= (noDuplicateKeys!1526 newBucket!224) e!2888558)))

(declare-fun b!4630517 () Bool)

(declare-fun e!2888559 () Bool)

(assert (=> b!4630517 (= e!2888558 e!2888559)))

(declare-fun res!1942642 () Bool)

(assert (=> b!4630517 (=> (not res!1942642) (not e!2888559))))

(assert (=> b!4630517 (= res!1942642 (not (containsKey!2502 (t!358766 newBucket!224) (_1!29569 (h!57660 newBucket!224)))))))

(declare-fun b!4630518 () Bool)

(assert (=> b!4630518 (= e!2888559 (noDuplicateKeys!1526 (t!358766 newBucket!224)))))

(assert (= (and d!1459213 (not res!1942641)) b!4630517))

(assert (= (and b!4630517 res!1942642) b!4630518))

(declare-fun m!5479087 () Bool)

(assert (=> b!4630517 m!5479087))

(declare-fun m!5479089 () Bool)

(assert (=> b!4630518 m!5479089))

(assert (=> b!4630132 d!1459213))

(declare-fun d!1459215 () Bool)

(declare-fun res!1942647 () Bool)

(declare-fun e!2888564 () Bool)

(assert (=> d!1459215 (=> res!1942647 e!2888564)))

(assert (=> d!1459215 (= res!1942647 ((_ is Nil!51593) lt!1790030))))

(assert (=> d!1459215 (= (forall!10858 lt!1790030 lambda!193384) e!2888564)))

(declare-fun b!4630523 () Bool)

(declare-fun e!2888565 () Bool)

(assert (=> b!4630523 (= e!2888564 e!2888565)))

(declare-fun res!1942648 () Bool)

(assert (=> b!4630523 (=> (not res!1942648) (not e!2888565))))

(assert (=> b!4630523 (= res!1942648 (dynLambda!21515 lambda!193384 (h!57661 lt!1790030)))))

(declare-fun b!4630524 () Bool)

(assert (=> b!4630524 (= e!2888565 (forall!10858 (t!358767 lt!1790030) lambda!193384))))

(assert (= (and d!1459215 (not res!1942647)) b!4630523))

(assert (= (and b!4630523 res!1942648) b!4630524))

(declare-fun b_lambda!170863 () Bool)

(assert (=> (not b_lambda!170863) (not b!4630523)))

(declare-fun m!5479091 () Bool)

(assert (=> b!4630523 m!5479091))

(declare-fun m!5479093 () Bool)

(assert (=> b!4630524 m!5479093))

(assert (=> b!4630133 d!1459215))

(declare-fun d!1459217 () Bool)

(declare-fun e!2888566 () Bool)

(assert (=> d!1459217 e!2888566))

(declare-fun res!1942650 () Bool)

(assert (=> d!1459217 (=> (not res!1942650) (not e!2888566))))

(declare-fun lt!1790517 () ListMap!4321)

(assert (=> d!1459217 (= res!1942650 (contains!14673 lt!1790517 (_1!29569 (h!57660 oldBucket!40))))))

(declare-fun lt!1790518 () List!51716)

(assert (=> d!1459217 (= lt!1790517 (ListMap!4322 lt!1790518))))

(declare-fun lt!1790520 () Unit!113132)

(declare-fun lt!1790519 () Unit!113132)

(assert (=> d!1459217 (= lt!1790520 lt!1790519)))

(assert (=> d!1459217 (= (getValueByKey!1486 lt!1790518 (_1!29569 (h!57660 oldBucket!40))) (Some!11645 (_2!29569 (h!57660 oldBucket!40))))))

(assert (=> d!1459217 (= lt!1790519 (lemmaContainsTupThenGetReturnValue!866 lt!1790518 (_1!29569 (h!57660 oldBucket!40)) (_2!29569 (h!57660 oldBucket!40))))))

(assert (=> d!1459217 (= lt!1790518 (insertNoDuplicatedKeys!374 (toList!5017 (extractMap!1582 (Cons!51593 (tuple2!52553 hash!414 lt!1790027) Nil!51593))) (_1!29569 (h!57660 oldBucket!40)) (_2!29569 (h!57660 oldBucket!40))))))

(assert (=> d!1459217 (= (+!1892 (extractMap!1582 (Cons!51593 (tuple2!52553 hash!414 lt!1790027) Nil!51593)) (h!57660 oldBucket!40)) lt!1790517)))

(declare-fun b!4630525 () Bool)

(declare-fun res!1942649 () Bool)

(assert (=> b!4630525 (=> (not res!1942649) (not e!2888566))))

(assert (=> b!4630525 (= res!1942649 (= (getValueByKey!1486 (toList!5017 lt!1790517) (_1!29569 (h!57660 oldBucket!40))) (Some!11645 (_2!29569 (h!57660 oldBucket!40)))))))

(declare-fun b!4630526 () Bool)

(assert (=> b!4630526 (= e!2888566 (contains!14679 (toList!5017 lt!1790517) (h!57660 oldBucket!40)))))

(assert (= (and d!1459217 res!1942650) b!4630525))

(assert (= (and b!4630525 res!1942649) b!4630526))

(declare-fun m!5479095 () Bool)

(assert (=> d!1459217 m!5479095))

(declare-fun m!5479097 () Bool)

(assert (=> d!1459217 m!5479097))

(declare-fun m!5479099 () Bool)

(assert (=> d!1459217 m!5479099))

(declare-fun m!5479101 () Bool)

(assert (=> d!1459217 m!5479101))

(declare-fun m!5479103 () Bool)

(assert (=> b!4630525 m!5479103))

(declare-fun m!5479105 () Bool)

(assert (=> b!4630526 m!5479105))

(assert (=> b!4630135 d!1459217))

(declare-fun bs!1027012 () Bool)

(declare-fun b!4630529 () Bool)

(assert (= bs!1027012 (and b!4630529 d!1459035)))

(declare-fun lambda!193508 () Int)

(assert (=> bs!1027012 (= (= (ListMap!4322 Nil!51592) lt!1790299) (= lambda!193508 lambda!193473))))

(declare-fun bs!1027013 () Bool)

(assert (= bs!1027013 (and b!4630529 d!1459129)))

(assert (=> bs!1027013 (not (= lambda!193508 lambda!193483))))

(declare-fun bs!1027014 () Bool)

(assert (= bs!1027014 (and b!4630529 b!4630268)))

(assert (=> bs!1027014 (= (= (ListMap!4322 Nil!51592) lt!1790017) (= lambda!193508 lambda!193471))))

(declare-fun bs!1027015 () Bool)

(assert (= bs!1027015 (and b!4630529 d!1459027)))

(assert (=> bs!1027015 (not (= lambda!193508 lambda!193387))))

(assert (=> bs!1027014 (= (= (ListMap!4322 Nil!51592) lt!1790294) (= lambda!193508 lambda!193472))))

(declare-fun bs!1027016 () Bool)

(assert (= bs!1027016 (and b!4630529 b!4630269)))

(assert (=> bs!1027016 (= (= (ListMap!4322 Nil!51592) lt!1790017) (= lambda!193508 lambda!193470))))

(assert (=> b!4630529 true))

(declare-fun bs!1027017 () Bool)

(declare-fun b!4630528 () Bool)

(assert (= bs!1027017 (and b!4630528 d!1459035)))

(declare-fun lambda!193509 () Int)

(assert (=> bs!1027017 (= (= (ListMap!4322 Nil!51592) lt!1790299) (= lambda!193509 lambda!193473))))

(declare-fun bs!1027018 () Bool)

(assert (= bs!1027018 (and b!4630528 d!1459129)))

(assert (=> bs!1027018 (not (= lambda!193509 lambda!193483))))

(declare-fun bs!1027019 () Bool)

(assert (= bs!1027019 (and b!4630528 b!4630529)))

(assert (=> bs!1027019 (= lambda!193509 lambda!193508)))

(declare-fun bs!1027020 () Bool)

(assert (= bs!1027020 (and b!4630528 b!4630268)))

(assert (=> bs!1027020 (= (= (ListMap!4322 Nil!51592) lt!1790017) (= lambda!193509 lambda!193471))))

(declare-fun bs!1027021 () Bool)

(assert (= bs!1027021 (and b!4630528 d!1459027)))

(assert (=> bs!1027021 (not (= lambda!193509 lambda!193387))))

(assert (=> bs!1027020 (= (= (ListMap!4322 Nil!51592) lt!1790294) (= lambda!193509 lambda!193472))))

(declare-fun bs!1027022 () Bool)

(assert (= bs!1027022 (and b!4630528 b!4630269)))

(assert (=> bs!1027022 (= (= (ListMap!4322 Nil!51592) lt!1790017) (= lambda!193509 lambda!193470))))

(assert (=> b!4630528 true))

(declare-fun lambda!193510 () Int)

(declare-fun lt!1790528 () ListMap!4321)

(assert (=> bs!1027017 (= (= lt!1790528 lt!1790299) (= lambda!193510 lambda!193473))))

(assert (=> bs!1027019 (= (= lt!1790528 (ListMap!4322 Nil!51592)) (= lambda!193510 lambda!193508))))

(assert (=> bs!1027020 (= (= lt!1790528 lt!1790017) (= lambda!193510 lambda!193471))))

(assert (=> bs!1027021 (not (= lambda!193510 lambda!193387))))

(assert (=> bs!1027018 (not (= lambda!193510 lambda!193483))))

(assert (=> b!4630528 (= (= lt!1790528 (ListMap!4322 Nil!51592)) (= lambda!193510 lambda!193509))))

(assert (=> bs!1027020 (= (= lt!1790528 lt!1790294) (= lambda!193510 lambda!193472))))

(assert (=> bs!1027022 (= (= lt!1790528 lt!1790017) (= lambda!193510 lambda!193470))))

(assert (=> b!4630528 true))

(declare-fun bs!1027023 () Bool)

(declare-fun d!1459219 () Bool)

(assert (= bs!1027023 (and d!1459219 d!1459035)))

(declare-fun lt!1790533 () ListMap!4321)

(declare-fun lambda!193511 () Int)

(assert (=> bs!1027023 (= (= lt!1790533 lt!1790299) (= lambda!193511 lambda!193473))))

(declare-fun bs!1027024 () Bool)

(assert (= bs!1027024 (and d!1459219 b!4630528)))

(assert (=> bs!1027024 (= (= lt!1790533 lt!1790528) (= lambda!193511 lambda!193510))))

(declare-fun bs!1027025 () Bool)

(assert (= bs!1027025 (and d!1459219 b!4630529)))

(assert (=> bs!1027025 (= (= lt!1790533 (ListMap!4322 Nil!51592)) (= lambda!193511 lambda!193508))))

(declare-fun bs!1027026 () Bool)

(assert (= bs!1027026 (and d!1459219 b!4630268)))

(assert (=> bs!1027026 (= (= lt!1790533 lt!1790017) (= lambda!193511 lambda!193471))))

(declare-fun bs!1027027 () Bool)

(assert (= bs!1027027 (and d!1459219 d!1459027)))

(assert (=> bs!1027027 (not (= lambda!193511 lambda!193387))))

(declare-fun bs!1027028 () Bool)

(assert (= bs!1027028 (and d!1459219 d!1459129)))

(assert (=> bs!1027028 (not (= lambda!193511 lambda!193483))))

(assert (=> bs!1027024 (= (= lt!1790533 (ListMap!4322 Nil!51592)) (= lambda!193511 lambda!193509))))

(assert (=> bs!1027026 (= (= lt!1790533 lt!1790294) (= lambda!193511 lambda!193472))))

(declare-fun bs!1027029 () Bool)

(assert (= bs!1027029 (and d!1459219 b!4630269)))

(assert (=> bs!1027029 (= (= lt!1790533 lt!1790017) (= lambda!193511 lambda!193470))))

(assert (=> d!1459219 true))

(declare-fun lt!1790531 () ListMap!4321)

(declare-fun c!792612 () Bool)

(declare-fun bm!323084 () Bool)

(declare-fun call!323090 () Bool)

(assert (=> bm!323084 (= call!323090 (forall!10860 (ite c!792612 (toList!5017 (ListMap!4322 Nil!51592)) (toList!5017 lt!1790531)) (ite c!792612 lambda!193508 lambda!193510)))))

(declare-fun e!2888568 () Bool)

(assert (=> d!1459219 e!2888568))

(declare-fun res!1942652 () Bool)

(assert (=> d!1459219 (=> (not res!1942652) (not e!2888568))))

(assert (=> d!1459219 (= res!1942652 (forall!10860 (Cons!51592 lt!1790012 lt!1790027) lambda!193511))))

(declare-fun e!2888567 () ListMap!4321)

(assert (=> d!1459219 (= lt!1790533 e!2888567)))

(assert (=> d!1459219 (= c!792612 ((_ is Nil!51592) (Cons!51592 lt!1790012 lt!1790027)))))

(assert (=> d!1459219 (noDuplicateKeys!1526 (Cons!51592 lt!1790012 lt!1790027))))

(assert (=> d!1459219 (= (addToMapMapFromBucket!987 (Cons!51592 lt!1790012 lt!1790027) (ListMap!4322 Nil!51592)) lt!1790533)))

(declare-fun b!4630527 () Bool)

(assert (=> b!4630527 (= e!2888568 (invariantList!1222 (toList!5017 lt!1790533)))))

(declare-fun call!323089 () Bool)

(declare-fun bm!323085 () Bool)

(assert (=> bm!323085 (= call!323089 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) (ite c!792612 lambda!193508 lambda!193509)))))

(assert (=> b!4630528 (= e!2888567 lt!1790528)))

(assert (=> b!4630528 (= lt!1790531 (+!1892 (ListMap!4322 Nil!51592) (h!57660 (Cons!51592 lt!1790012 lt!1790027))))))

(assert (=> b!4630528 (= lt!1790528 (addToMapMapFromBucket!987 (t!358766 (Cons!51592 lt!1790012 lt!1790027)) (+!1892 (ListMap!4322 Nil!51592) (h!57660 (Cons!51592 lt!1790012 lt!1790027)))))))

(declare-fun lt!1790527 () Unit!113132)

(declare-fun call!323091 () Unit!113132)

(assert (=> b!4630528 (= lt!1790527 call!323091)))

(assert (=> b!4630528 call!323089))

(declare-fun lt!1790530 () Unit!113132)

(assert (=> b!4630528 (= lt!1790530 lt!1790527)))

(assert (=> b!4630528 call!323090))

(declare-fun lt!1790521 () Unit!113132)

(declare-fun Unit!113195 () Unit!113132)

(assert (=> b!4630528 (= lt!1790521 Unit!113195)))

(assert (=> b!4630528 (forall!10860 (t!358766 (Cons!51592 lt!1790012 lt!1790027)) lambda!193510)))

(declare-fun lt!1790540 () Unit!113132)

(declare-fun Unit!113196 () Unit!113132)

(assert (=> b!4630528 (= lt!1790540 Unit!113196)))

(declare-fun lt!1790539 () Unit!113132)

(declare-fun Unit!113197 () Unit!113132)

(assert (=> b!4630528 (= lt!1790539 Unit!113197)))

(declare-fun lt!1790541 () Unit!113132)

(assert (=> b!4630528 (= lt!1790541 (forallContained!3090 (toList!5017 lt!1790531) lambda!193510 (h!57660 (Cons!51592 lt!1790012 lt!1790027))))))

(assert (=> b!4630528 (contains!14673 lt!1790531 (_1!29569 (h!57660 (Cons!51592 lt!1790012 lt!1790027))))))

(declare-fun lt!1790536 () Unit!113132)

(declare-fun Unit!113198 () Unit!113132)

(assert (=> b!4630528 (= lt!1790536 Unit!113198)))

(assert (=> b!4630528 (contains!14673 lt!1790528 (_1!29569 (h!57660 (Cons!51592 lt!1790012 lt!1790027))))))

(declare-fun lt!1790525 () Unit!113132)

(declare-fun Unit!113199 () Unit!113132)

(assert (=> b!4630528 (= lt!1790525 Unit!113199)))

(assert (=> b!4630528 (forall!10860 (Cons!51592 lt!1790012 lt!1790027) lambda!193510)))

(declare-fun lt!1790523 () Unit!113132)

(declare-fun Unit!113200 () Unit!113132)

(assert (=> b!4630528 (= lt!1790523 Unit!113200)))

(assert (=> b!4630528 (forall!10860 (toList!5017 lt!1790531) lambda!193510)))

(declare-fun lt!1790534 () Unit!113132)

(declare-fun Unit!113201 () Unit!113132)

(assert (=> b!4630528 (= lt!1790534 Unit!113201)))

(declare-fun lt!1790538 () Unit!113132)

(declare-fun Unit!113202 () Unit!113132)

(assert (=> b!4630528 (= lt!1790538 Unit!113202)))

(declare-fun lt!1790524 () Unit!113132)

(assert (=> b!4630528 (= lt!1790524 (addForallContainsKeyThenBeforeAdding!523 (ListMap!4322 Nil!51592) lt!1790528 (_1!29569 (h!57660 (Cons!51592 lt!1790012 lt!1790027))) (_2!29569 (h!57660 (Cons!51592 lt!1790012 lt!1790027)))))))

(assert (=> b!4630528 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) lambda!193510)))

(declare-fun lt!1790522 () Unit!113132)

(assert (=> b!4630528 (= lt!1790522 lt!1790524)))

(assert (=> b!4630528 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) lambda!193510)))

(declare-fun lt!1790526 () Unit!113132)

(declare-fun Unit!113203 () Unit!113132)

(assert (=> b!4630528 (= lt!1790526 Unit!113203)))

(declare-fun res!1942653 () Bool)

(assert (=> b!4630528 (= res!1942653 (forall!10860 (Cons!51592 lt!1790012 lt!1790027) lambda!193510))))

(declare-fun e!2888569 () Bool)

(assert (=> b!4630528 (=> (not res!1942653) (not e!2888569))))

(assert (=> b!4630528 e!2888569))

(declare-fun lt!1790532 () Unit!113132)

(declare-fun Unit!113204 () Unit!113132)

(assert (=> b!4630528 (= lt!1790532 Unit!113204)))

(assert (=> b!4630529 (= e!2888567 (ListMap!4322 Nil!51592))))

(declare-fun lt!1790529 () Unit!113132)

(assert (=> b!4630529 (= lt!1790529 call!323091)))

(assert (=> b!4630529 call!323089))

(declare-fun lt!1790537 () Unit!113132)

(assert (=> b!4630529 (= lt!1790537 lt!1790529)))

(assert (=> b!4630529 call!323090))

(declare-fun lt!1790535 () Unit!113132)

(declare-fun Unit!113205 () Unit!113132)

(assert (=> b!4630529 (= lt!1790535 Unit!113205)))

(declare-fun bm!323086 () Bool)

(assert (=> bm!323086 (= call!323091 (lemmaContainsAllItsOwnKeys!524 (ListMap!4322 Nil!51592)))))

(declare-fun b!4630530 () Bool)

(assert (=> b!4630530 (= e!2888569 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) lambda!193510))))

(declare-fun b!4630531 () Bool)

(declare-fun res!1942651 () Bool)

(assert (=> b!4630531 (=> (not res!1942651) (not e!2888568))))

(assert (=> b!4630531 (= res!1942651 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) lambda!193511))))

(assert (= (and d!1459219 c!792612) b!4630529))

(assert (= (and d!1459219 (not c!792612)) b!4630528))

(assert (= (and b!4630528 res!1942653) b!4630530))

(assert (= (or b!4630529 b!4630528) bm!323086))

(assert (= (or b!4630529 b!4630528) bm!323084))

(assert (= (or b!4630529 b!4630528) bm!323085))

(assert (= (and d!1459219 res!1942652) b!4630531))

(assert (= (and b!4630531 res!1942651) b!4630527))

(declare-fun m!5479107 () Bool)

(assert (=> b!4630531 m!5479107))

(declare-fun m!5479109 () Bool)

(assert (=> bm!323086 m!5479109))

(declare-fun m!5479111 () Bool)

(assert (=> b!4630530 m!5479111))

(declare-fun m!5479113 () Bool)

(assert (=> bm!323085 m!5479113))

(assert (=> b!4630528 m!5479111))

(declare-fun m!5479115 () Bool)

(assert (=> b!4630528 m!5479115))

(declare-fun m!5479117 () Bool)

(assert (=> b!4630528 m!5479117))

(declare-fun m!5479119 () Bool)

(assert (=> b!4630528 m!5479119))

(assert (=> b!4630528 m!5479119))

(assert (=> b!4630528 m!5479111))

(declare-fun m!5479121 () Bool)

(assert (=> b!4630528 m!5479121))

(declare-fun m!5479123 () Bool)

(assert (=> b!4630528 m!5479123))

(declare-fun m!5479125 () Bool)

(assert (=> b!4630528 m!5479125))

(declare-fun m!5479127 () Bool)

(assert (=> b!4630528 m!5479127))

(assert (=> b!4630528 m!5479115))

(declare-fun m!5479129 () Bool)

(assert (=> b!4630528 m!5479129))

(declare-fun m!5479131 () Bool)

(assert (=> b!4630528 m!5479131))

(declare-fun m!5479133 () Bool)

(assert (=> bm!323084 m!5479133))

(declare-fun m!5479135 () Bool)

(assert (=> b!4630527 m!5479135))

(declare-fun m!5479137 () Bool)

(assert (=> d!1459219 m!5479137))

(declare-fun m!5479139 () Bool)

(assert (=> d!1459219 m!5479139))

(assert (=> b!4630135 d!1459219))

(declare-fun d!1459221 () Bool)

(assert (=> d!1459221 (= (head!9660 oldBucket!40) (h!57660 oldBucket!40))))

(assert (=> b!4630135 d!1459221))

(declare-fun d!1459223 () Bool)

(assert (=> d!1459223 (eq!841 (addToMapMapFromBucket!987 (Cons!51592 lt!1790039 lt!1790023) (ListMap!4322 Nil!51592)) (+!1892 (addToMapMapFromBucket!987 lt!1790023 (ListMap!4322 Nil!51592)) lt!1790039))))

(declare-fun lt!1790544 () Unit!113132)

(declare-fun choose!31483 (tuple2!52550 List!51716 ListMap!4321) Unit!113132)

(assert (=> d!1459223 (= lt!1790544 (choose!31483 lt!1790039 lt!1790023 (ListMap!4322 Nil!51592)))))

(assert (=> d!1459223 (noDuplicateKeys!1526 lt!1790023)))

(assert (=> d!1459223 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!92 lt!1790039 lt!1790023 (ListMap!4322 Nil!51592)) lt!1790544)))

(declare-fun bs!1027030 () Bool)

(assert (= bs!1027030 d!1459223))

(declare-fun m!5479141 () Bool)

(assert (=> bs!1027030 m!5479141))

(assert (=> bs!1027030 m!5478211))

(assert (=> bs!1027030 m!5478205))

(assert (=> bs!1027030 m!5478225))

(declare-fun m!5479143 () Bool)

(assert (=> bs!1027030 m!5479143))

(assert (=> bs!1027030 m!5478203))

(assert (=> bs!1027030 m!5478205))

(assert (=> bs!1027030 m!5478203))

(assert (=> bs!1027030 m!5478211))

(assert (=> b!4630135 d!1459223))

(declare-fun d!1459225 () Bool)

(assert (=> d!1459225 (eq!841 (addToMapMapFromBucket!987 (Cons!51592 lt!1790012 lt!1790027) (ListMap!4322 Nil!51592)) (+!1892 (addToMapMapFromBucket!987 lt!1790027 (ListMap!4322 Nil!51592)) lt!1790012))))

(declare-fun lt!1790545 () Unit!113132)

(assert (=> d!1459225 (= lt!1790545 (choose!31483 lt!1790012 lt!1790027 (ListMap!4322 Nil!51592)))))

(assert (=> d!1459225 (noDuplicateKeys!1526 lt!1790027)))

(assert (=> d!1459225 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!92 lt!1790012 lt!1790027 (ListMap!4322 Nil!51592)) lt!1790545)))

(declare-fun bs!1027031 () Bool)

(assert (= bs!1027031 d!1459225))

(assert (=> bs!1027031 m!5478293))

(assert (=> bs!1027031 m!5478215))

(assert (=> bs!1027031 m!5478199))

(assert (=> bs!1027031 m!5478227))

(declare-fun m!5479145 () Bool)

(assert (=> bs!1027031 m!5479145))

(assert (=> bs!1027031 m!5478197))

(assert (=> bs!1027031 m!5478199))

(assert (=> bs!1027031 m!5478197))

(assert (=> bs!1027031 m!5478215))

(assert (=> b!4630135 d!1459225))

(declare-fun bs!1027032 () Bool)

(declare-fun b!4630534 () Bool)

(assert (= bs!1027032 (and b!4630534 d!1459035)))

(declare-fun lambda!193512 () Int)

(assert (=> bs!1027032 (= (= (ListMap!4322 Nil!51592) lt!1790299) (= lambda!193512 lambda!193473))))

(declare-fun bs!1027033 () Bool)

(assert (= bs!1027033 (and b!4630534 b!4630528)))

(assert (=> bs!1027033 (= (= (ListMap!4322 Nil!51592) lt!1790528) (= lambda!193512 lambda!193510))))

(declare-fun bs!1027034 () Bool)

(assert (= bs!1027034 (and b!4630534 b!4630529)))

(assert (=> bs!1027034 (= lambda!193512 lambda!193508)))

(declare-fun bs!1027035 () Bool)

(assert (= bs!1027035 (and b!4630534 b!4630268)))

(assert (=> bs!1027035 (= (= (ListMap!4322 Nil!51592) lt!1790017) (= lambda!193512 lambda!193471))))

(declare-fun bs!1027036 () Bool)

(assert (= bs!1027036 (and b!4630534 d!1459219)))

(assert (=> bs!1027036 (= (= (ListMap!4322 Nil!51592) lt!1790533) (= lambda!193512 lambda!193511))))

(declare-fun bs!1027037 () Bool)

(assert (= bs!1027037 (and b!4630534 d!1459027)))

(assert (=> bs!1027037 (not (= lambda!193512 lambda!193387))))

(declare-fun bs!1027038 () Bool)

(assert (= bs!1027038 (and b!4630534 d!1459129)))

(assert (=> bs!1027038 (not (= lambda!193512 lambda!193483))))

(assert (=> bs!1027033 (= lambda!193512 lambda!193509)))

(assert (=> bs!1027035 (= (= (ListMap!4322 Nil!51592) lt!1790294) (= lambda!193512 lambda!193472))))

(declare-fun bs!1027039 () Bool)

(assert (= bs!1027039 (and b!4630534 b!4630269)))

(assert (=> bs!1027039 (= (= (ListMap!4322 Nil!51592) lt!1790017) (= lambda!193512 lambda!193470))))

(assert (=> b!4630534 true))

(declare-fun bs!1027040 () Bool)

(declare-fun b!4630533 () Bool)

(assert (= bs!1027040 (and b!4630533 b!4630528)))

(declare-fun lambda!193513 () Int)

(assert (=> bs!1027040 (= (= (ListMap!4322 Nil!51592) lt!1790528) (= lambda!193513 lambda!193510))))

(declare-fun bs!1027041 () Bool)

(assert (= bs!1027041 (and b!4630533 b!4630529)))

(assert (=> bs!1027041 (= lambda!193513 lambda!193508)))

(declare-fun bs!1027042 () Bool)

(assert (= bs!1027042 (and b!4630533 b!4630268)))

(assert (=> bs!1027042 (= (= (ListMap!4322 Nil!51592) lt!1790017) (= lambda!193513 lambda!193471))))

(declare-fun bs!1027043 () Bool)

(assert (= bs!1027043 (and b!4630533 d!1459219)))

(assert (=> bs!1027043 (= (= (ListMap!4322 Nil!51592) lt!1790533) (= lambda!193513 lambda!193511))))

(declare-fun bs!1027044 () Bool)

(assert (= bs!1027044 (and b!4630533 d!1459027)))

(assert (=> bs!1027044 (not (= lambda!193513 lambda!193387))))

(declare-fun bs!1027045 () Bool)

(assert (= bs!1027045 (and b!4630533 b!4630534)))

(assert (=> bs!1027045 (= lambda!193513 lambda!193512)))

(declare-fun bs!1027046 () Bool)

(assert (= bs!1027046 (and b!4630533 d!1459035)))

(assert (=> bs!1027046 (= (= (ListMap!4322 Nil!51592) lt!1790299) (= lambda!193513 lambda!193473))))

(declare-fun bs!1027047 () Bool)

(assert (= bs!1027047 (and b!4630533 d!1459129)))

(assert (=> bs!1027047 (not (= lambda!193513 lambda!193483))))

(assert (=> bs!1027040 (= lambda!193513 lambda!193509)))

(assert (=> bs!1027042 (= (= (ListMap!4322 Nil!51592) lt!1790294) (= lambda!193513 lambda!193472))))

(declare-fun bs!1027048 () Bool)

(assert (= bs!1027048 (and b!4630533 b!4630269)))

(assert (=> bs!1027048 (= (= (ListMap!4322 Nil!51592) lt!1790017) (= lambda!193513 lambda!193470))))

(assert (=> b!4630533 true))

(declare-fun lt!1790553 () ListMap!4321)

(declare-fun lambda!193514 () Int)

(assert (=> bs!1027040 (= (= lt!1790553 lt!1790528) (= lambda!193514 lambda!193510))))

(assert (=> bs!1027042 (= (= lt!1790553 lt!1790017) (= lambda!193514 lambda!193471))))

(assert (=> bs!1027043 (= (= lt!1790553 lt!1790533) (= lambda!193514 lambda!193511))))

(assert (=> bs!1027044 (not (= lambda!193514 lambda!193387))))

(assert (=> bs!1027045 (= (= lt!1790553 (ListMap!4322 Nil!51592)) (= lambda!193514 lambda!193512))))

(assert (=> bs!1027046 (= (= lt!1790553 lt!1790299) (= lambda!193514 lambda!193473))))

(assert (=> bs!1027047 (not (= lambda!193514 lambda!193483))))

(assert (=> bs!1027040 (= (= lt!1790553 (ListMap!4322 Nil!51592)) (= lambda!193514 lambda!193509))))

(assert (=> b!4630533 (= (= lt!1790553 (ListMap!4322 Nil!51592)) (= lambda!193514 lambda!193513))))

(assert (=> bs!1027041 (= (= lt!1790553 (ListMap!4322 Nil!51592)) (= lambda!193514 lambda!193508))))

(assert (=> bs!1027042 (= (= lt!1790553 lt!1790294) (= lambda!193514 lambda!193472))))

(assert (=> bs!1027048 (= (= lt!1790553 lt!1790017) (= lambda!193514 lambda!193470))))

(assert (=> b!4630533 true))

(declare-fun bs!1027049 () Bool)

(declare-fun d!1459227 () Bool)

(assert (= bs!1027049 (and d!1459227 b!4630528)))

(declare-fun lt!1790558 () ListMap!4321)

(declare-fun lambda!193515 () Int)

(assert (=> bs!1027049 (= (= lt!1790558 lt!1790528) (= lambda!193515 lambda!193510))))

(declare-fun bs!1027050 () Bool)

(assert (= bs!1027050 (and d!1459227 b!4630533)))

(assert (=> bs!1027050 (= (= lt!1790558 lt!1790553) (= lambda!193515 lambda!193514))))

(declare-fun bs!1027051 () Bool)

(assert (= bs!1027051 (and d!1459227 b!4630268)))

(assert (=> bs!1027051 (= (= lt!1790558 lt!1790017) (= lambda!193515 lambda!193471))))

(declare-fun bs!1027052 () Bool)

(assert (= bs!1027052 (and d!1459227 d!1459219)))

(assert (=> bs!1027052 (= (= lt!1790558 lt!1790533) (= lambda!193515 lambda!193511))))

(declare-fun bs!1027053 () Bool)

(assert (= bs!1027053 (and d!1459227 d!1459027)))

(assert (=> bs!1027053 (not (= lambda!193515 lambda!193387))))

(declare-fun bs!1027054 () Bool)

(assert (= bs!1027054 (and d!1459227 b!4630534)))

(assert (=> bs!1027054 (= (= lt!1790558 (ListMap!4322 Nil!51592)) (= lambda!193515 lambda!193512))))

(declare-fun bs!1027055 () Bool)

(assert (= bs!1027055 (and d!1459227 d!1459035)))

(assert (=> bs!1027055 (= (= lt!1790558 lt!1790299) (= lambda!193515 lambda!193473))))

(declare-fun bs!1027056 () Bool)

(assert (= bs!1027056 (and d!1459227 d!1459129)))

(assert (=> bs!1027056 (not (= lambda!193515 lambda!193483))))

(assert (=> bs!1027049 (= (= lt!1790558 (ListMap!4322 Nil!51592)) (= lambda!193515 lambda!193509))))

(assert (=> bs!1027050 (= (= lt!1790558 (ListMap!4322 Nil!51592)) (= lambda!193515 lambda!193513))))

(declare-fun bs!1027057 () Bool)

(assert (= bs!1027057 (and d!1459227 b!4630529)))

(assert (=> bs!1027057 (= (= lt!1790558 (ListMap!4322 Nil!51592)) (= lambda!193515 lambda!193508))))

(assert (=> bs!1027051 (= (= lt!1790558 lt!1790294) (= lambda!193515 lambda!193472))))

(declare-fun bs!1027058 () Bool)

(assert (= bs!1027058 (and d!1459227 b!4630269)))

(assert (=> bs!1027058 (= (= lt!1790558 lt!1790017) (= lambda!193515 lambda!193470))))

(assert (=> d!1459227 true))

(declare-fun c!792613 () Bool)

(declare-fun lt!1790556 () ListMap!4321)

(declare-fun bm!323087 () Bool)

(declare-fun call!323093 () Bool)

(assert (=> bm!323087 (= call!323093 (forall!10860 (ite c!792613 (toList!5017 (ListMap!4322 Nil!51592)) (toList!5017 lt!1790556)) (ite c!792613 lambda!193512 lambda!193514)))))

(declare-fun e!2888571 () Bool)

(assert (=> d!1459227 e!2888571))

(declare-fun res!1942655 () Bool)

(assert (=> d!1459227 (=> (not res!1942655) (not e!2888571))))

(assert (=> d!1459227 (= res!1942655 (forall!10860 lt!1790023 lambda!193515))))

(declare-fun e!2888570 () ListMap!4321)

(assert (=> d!1459227 (= lt!1790558 e!2888570)))

(assert (=> d!1459227 (= c!792613 ((_ is Nil!51592) lt!1790023))))

(assert (=> d!1459227 (noDuplicateKeys!1526 lt!1790023)))

(assert (=> d!1459227 (= (addToMapMapFromBucket!987 lt!1790023 (ListMap!4322 Nil!51592)) lt!1790558)))

(declare-fun b!4630532 () Bool)

(assert (=> b!4630532 (= e!2888571 (invariantList!1222 (toList!5017 lt!1790558)))))

(declare-fun call!323092 () Bool)

(declare-fun bm!323088 () Bool)

(assert (=> bm!323088 (= call!323092 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) (ite c!792613 lambda!193512 lambda!193513)))))

(assert (=> b!4630533 (= e!2888570 lt!1790553)))

(assert (=> b!4630533 (= lt!1790556 (+!1892 (ListMap!4322 Nil!51592) (h!57660 lt!1790023)))))

(assert (=> b!4630533 (= lt!1790553 (addToMapMapFromBucket!987 (t!358766 lt!1790023) (+!1892 (ListMap!4322 Nil!51592) (h!57660 lt!1790023))))))

(declare-fun lt!1790552 () Unit!113132)

(declare-fun call!323094 () Unit!113132)

(assert (=> b!4630533 (= lt!1790552 call!323094)))

(assert (=> b!4630533 call!323092))

(declare-fun lt!1790555 () Unit!113132)

(assert (=> b!4630533 (= lt!1790555 lt!1790552)))

(assert (=> b!4630533 call!323093))

(declare-fun lt!1790546 () Unit!113132)

(declare-fun Unit!113206 () Unit!113132)

(assert (=> b!4630533 (= lt!1790546 Unit!113206)))

(assert (=> b!4630533 (forall!10860 (t!358766 lt!1790023) lambda!193514)))

(declare-fun lt!1790565 () Unit!113132)

(declare-fun Unit!113207 () Unit!113132)

(assert (=> b!4630533 (= lt!1790565 Unit!113207)))

(declare-fun lt!1790564 () Unit!113132)

(declare-fun Unit!113208 () Unit!113132)

(assert (=> b!4630533 (= lt!1790564 Unit!113208)))

(declare-fun lt!1790566 () Unit!113132)

(assert (=> b!4630533 (= lt!1790566 (forallContained!3090 (toList!5017 lt!1790556) lambda!193514 (h!57660 lt!1790023)))))

(assert (=> b!4630533 (contains!14673 lt!1790556 (_1!29569 (h!57660 lt!1790023)))))

(declare-fun lt!1790561 () Unit!113132)

(declare-fun Unit!113209 () Unit!113132)

(assert (=> b!4630533 (= lt!1790561 Unit!113209)))

(assert (=> b!4630533 (contains!14673 lt!1790553 (_1!29569 (h!57660 lt!1790023)))))

(declare-fun lt!1790550 () Unit!113132)

(declare-fun Unit!113210 () Unit!113132)

(assert (=> b!4630533 (= lt!1790550 Unit!113210)))

(assert (=> b!4630533 (forall!10860 lt!1790023 lambda!193514)))

(declare-fun lt!1790548 () Unit!113132)

(declare-fun Unit!113211 () Unit!113132)

(assert (=> b!4630533 (= lt!1790548 Unit!113211)))

(assert (=> b!4630533 (forall!10860 (toList!5017 lt!1790556) lambda!193514)))

(declare-fun lt!1790559 () Unit!113132)

(declare-fun Unit!113212 () Unit!113132)

(assert (=> b!4630533 (= lt!1790559 Unit!113212)))

(declare-fun lt!1790563 () Unit!113132)

(declare-fun Unit!113213 () Unit!113132)

(assert (=> b!4630533 (= lt!1790563 Unit!113213)))

(declare-fun lt!1790549 () Unit!113132)

(assert (=> b!4630533 (= lt!1790549 (addForallContainsKeyThenBeforeAdding!523 (ListMap!4322 Nil!51592) lt!1790553 (_1!29569 (h!57660 lt!1790023)) (_2!29569 (h!57660 lt!1790023))))))

(assert (=> b!4630533 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) lambda!193514)))

(declare-fun lt!1790547 () Unit!113132)

(assert (=> b!4630533 (= lt!1790547 lt!1790549)))

(assert (=> b!4630533 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) lambda!193514)))

(declare-fun lt!1790551 () Unit!113132)

(declare-fun Unit!113214 () Unit!113132)

(assert (=> b!4630533 (= lt!1790551 Unit!113214)))

(declare-fun res!1942656 () Bool)

(assert (=> b!4630533 (= res!1942656 (forall!10860 lt!1790023 lambda!193514))))

(declare-fun e!2888572 () Bool)

(assert (=> b!4630533 (=> (not res!1942656) (not e!2888572))))

(assert (=> b!4630533 e!2888572))

(declare-fun lt!1790557 () Unit!113132)

(declare-fun Unit!113215 () Unit!113132)

(assert (=> b!4630533 (= lt!1790557 Unit!113215)))

(assert (=> b!4630534 (= e!2888570 (ListMap!4322 Nil!51592))))

(declare-fun lt!1790554 () Unit!113132)

(assert (=> b!4630534 (= lt!1790554 call!323094)))

(assert (=> b!4630534 call!323092))

(declare-fun lt!1790562 () Unit!113132)

(assert (=> b!4630534 (= lt!1790562 lt!1790554)))

(assert (=> b!4630534 call!323093))

(declare-fun lt!1790560 () Unit!113132)

(declare-fun Unit!113216 () Unit!113132)

(assert (=> b!4630534 (= lt!1790560 Unit!113216)))

(declare-fun bm!323089 () Bool)

(assert (=> bm!323089 (= call!323094 (lemmaContainsAllItsOwnKeys!524 (ListMap!4322 Nil!51592)))))

(declare-fun b!4630535 () Bool)

(assert (=> b!4630535 (= e!2888572 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) lambda!193514))))

(declare-fun b!4630536 () Bool)

(declare-fun res!1942654 () Bool)

(assert (=> b!4630536 (=> (not res!1942654) (not e!2888571))))

(assert (=> b!4630536 (= res!1942654 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) lambda!193515))))

(assert (= (and d!1459227 c!792613) b!4630534))

(assert (= (and d!1459227 (not c!792613)) b!4630533))

(assert (= (and b!4630533 res!1942656) b!4630535))

(assert (= (or b!4630534 b!4630533) bm!323089))

(assert (= (or b!4630534 b!4630533) bm!323087))

(assert (= (or b!4630534 b!4630533) bm!323088))

(assert (= (and d!1459227 res!1942655) b!4630536))

(assert (= (and b!4630536 res!1942654) b!4630532))

(declare-fun m!5479147 () Bool)

(assert (=> b!4630536 m!5479147))

(assert (=> bm!323089 m!5479109))

(declare-fun m!5479149 () Bool)

(assert (=> b!4630535 m!5479149))

(declare-fun m!5479151 () Bool)

(assert (=> bm!323088 m!5479151))

(assert (=> b!4630533 m!5479149))

(declare-fun m!5479153 () Bool)

(assert (=> b!4630533 m!5479153))

(declare-fun m!5479155 () Bool)

(assert (=> b!4630533 m!5479155))

(declare-fun m!5479157 () Bool)

(assert (=> b!4630533 m!5479157))

(assert (=> b!4630533 m!5479157))

(assert (=> b!4630533 m!5479149))

(declare-fun m!5479159 () Bool)

(assert (=> b!4630533 m!5479159))

(declare-fun m!5479161 () Bool)

(assert (=> b!4630533 m!5479161))

(declare-fun m!5479163 () Bool)

(assert (=> b!4630533 m!5479163))

(declare-fun m!5479165 () Bool)

(assert (=> b!4630533 m!5479165))

(assert (=> b!4630533 m!5479153))

(declare-fun m!5479167 () Bool)

(assert (=> b!4630533 m!5479167))

(declare-fun m!5479169 () Bool)

(assert (=> b!4630533 m!5479169))

(declare-fun m!5479171 () Bool)

(assert (=> bm!323087 m!5479171))

(declare-fun m!5479173 () Bool)

(assert (=> b!4630532 m!5479173))

(declare-fun m!5479175 () Bool)

(assert (=> d!1459227 m!5479175))

(assert (=> d!1459227 m!5479141))

(assert (=> b!4630135 d!1459227))

(declare-fun d!1459229 () Bool)

(declare-fun e!2888573 () Bool)

(assert (=> d!1459229 e!2888573))

(declare-fun res!1942658 () Bool)

(assert (=> d!1459229 (=> (not res!1942658) (not e!2888573))))

(declare-fun lt!1790567 () ListMap!4321)

(assert (=> d!1459229 (= res!1942658 (contains!14673 lt!1790567 (_1!29569 lt!1790039)))))

(declare-fun lt!1790568 () List!51716)

(assert (=> d!1459229 (= lt!1790567 (ListMap!4322 lt!1790568))))

(declare-fun lt!1790570 () Unit!113132)

(declare-fun lt!1790569 () Unit!113132)

(assert (=> d!1459229 (= lt!1790570 lt!1790569)))

(assert (=> d!1459229 (= (getValueByKey!1486 lt!1790568 (_1!29569 lt!1790039)) (Some!11645 (_2!29569 lt!1790039)))))

(assert (=> d!1459229 (= lt!1790569 (lemmaContainsTupThenGetReturnValue!866 lt!1790568 (_1!29569 lt!1790039) (_2!29569 lt!1790039)))))

(assert (=> d!1459229 (= lt!1790568 (insertNoDuplicatedKeys!374 (toList!5017 (addToMapMapFromBucket!987 lt!1790023 (ListMap!4322 Nil!51592))) (_1!29569 lt!1790039) (_2!29569 lt!1790039)))))

(assert (=> d!1459229 (= (+!1892 (addToMapMapFromBucket!987 lt!1790023 (ListMap!4322 Nil!51592)) lt!1790039) lt!1790567)))

(declare-fun b!4630537 () Bool)

(declare-fun res!1942657 () Bool)

(assert (=> b!4630537 (=> (not res!1942657) (not e!2888573))))

(assert (=> b!4630537 (= res!1942657 (= (getValueByKey!1486 (toList!5017 lt!1790567) (_1!29569 lt!1790039)) (Some!11645 (_2!29569 lt!1790039))))))

(declare-fun b!4630538 () Bool)

(assert (=> b!4630538 (= e!2888573 (contains!14679 (toList!5017 lt!1790567) lt!1790039))))

(assert (= (and d!1459229 res!1942658) b!4630537))

(assert (= (and b!4630537 res!1942657) b!4630538))

(declare-fun m!5479177 () Bool)

(assert (=> d!1459229 m!5479177))

(declare-fun m!5479179 () Bool)

(assert (=> d!1459229 m!5479179))

(declare-fun m!5479181 () Bool)

(assert (=> d!1459229 m!5479181))

(declare-fun m!5479183 () Bool)

(assert (=> d!1459229 m!5479183))

(declare-fun m!5479185 () Bool)

(assert (=> b!4630537 m!5479185))

(declare-fun m!5479187 () Bool)

(assert (=> b!4630538 m!5479187))

(assert (=> b!4630135 d!1459229))

(declare-fun d!1459231 () Bool)

(assert (=> d!1459231 (= (eq!841 lt!1790015 (+!1892 (extractMap!1582 (Cons!51593 (tuple2!52553 hash!414 lt!1790027) Nil!51593)) (h!57660 oldBucket!40))) (= (content!8851 (toList!5017 lt!1790015)) (content!8851 (toList!5017 (+!1892 (extractMap!1582 (Cons!51593 (tuple2!52553 hash!414 lt!1790027) Nil!51593)) (h!57660 oldBucket!40))))))))

(declare-fun bs!1027059 () Bool)

(assert (= bs!1027059 d!1459231))

(declare-fun m!5479189 () Bool)

(assert (=> bs!1027059 m!5479189))

(declare-fun m!5479191 () Bool)

(assert (=> bs!1027059 m!5479191))

(assert (=> b!4630135 d!1459231))

(declare-fun bs!1027060 () Bool)

(declare-fun d!1459233 () Bool)

(assert (= bs!1027060 (and d!1459233 d!1459211)))

(declare-fun lambda!193516 () Int)

(assert (=> bs!1027060 (= lambda!193516 lambda!193507)))

(declare-fun bs!1027061 () Bool)

(assert (= bs!1027061 (and d!1459233 d!1459095)))

(assert (=> bs!1027061 (= lambda!193516 lambda!193478)))

(declare-fun bs!1027062 () Bool)

(assert (= bs!1027062 (and d!1459233 d!1459159)))

(assert (=> bs!1027062 (= lambda!193516 lambda!193494)))

(declare-fun bs!1027063 () Bool)

(assert (= bs!1027063 (and d!1459233 d!1459127)))

(assert (=> bs!1027063 (= lambda!193516 lambda!193482)))

(declare-fun bs!1027064 () Bool)

(assert (= bs!1027064 (and d!1459233 b!4630131)))

(assert (=> bs!1027064 (= lambda!193516 lambda!193384)))

(declare-fun lt!1790571 () ListMap!4321)

(assert (=> d!1459233 (invariantList!1222 (toList!5017 lt!1790571))))

(declare-fun e!2888574 () ListMap!4321)

(assert (=> d!1459233 (= lt!1790571 e!2888574)))

(declare-fun c!792614 () Bool)

(assert (=> d!1459233 (= c!792614 ((_ is Cons!51593) lt!1790008))))

(assert (=> d!1459233 (forall!10858 lt!1790008 lambda!193516)))

(assert (=> d!1459233 (= (extractMap!1582 lt!1790008) lt!1790571)))

(declare-fun b!4630539 () Bool)

(assert (=> b!4630539 (= e!2888574 (addToMapMapFromBucket!987 (_2!29570 (h!57661 lt!1790008)) (extractMap!1582 (t!358767 lt!1790008))))))

(declare-fun b!4630540 () Bool)

(assert (=> b!4630540 (= e!2888574 (ListMap!4322 Nil!51592))))

(assert (= (and d!1459233 c!792614) b!4630539))

(assert (= (and d!1459233 (not c!792614)) b!4630540))

(declare-fun m!5479193 () Bool)

(assert (=> d!1459233 m!5479193))

(declare-fun m!5479195 () Bool)

(assert (=> d!1459233 m!5479195))

(declare-fun m!5479197 () Bool)

(assert (=> b!4630539 m!5479197))

(assert (=> b!4630539 m!5479197))

(declare-fun m!5479199 () Bool)

(assert (=> b!4630539 m!5479199))

(assert (=> b!4630135 d!1459233))

(declare-fun bs!1027065 () Bool)

(declare-fun d!1459235 () Bool)

(assert (= bs!1027065 (and d!1459235 d!1459233)))

(declare-fun lambda!193519 () Int)

(assert (=> bs!1027065 (= lambda!193519 lambda!193516)))

(declare-fun bs!1027066 () Bool)

(assert (= bs!1027066 (and d!1459235 d!1459211)))

(assert (=> bs!1027066 (= lambda!193519 lambda!193507)))

(declare-fun bs!1027067 () Bool)

(assert (= bs!1027067 (and d!1459235 d!1459095)))

(assert (=> bs!1027067 (= lambda!193519 lambda!193478)))

(declare-fun bs!1027068 () Bool)

(assert (= bs!1027068 (and d!1459235 d!1459159)))

(assert (=> bs!1027068 (= lambda!193519 lambda!193494)))

(declare-fun bs!1027069 () Bool)

(assert (= bs!1027069 (and d!1459235 d!1459127)))

(assert (=> bs!1027069 (= lambda!193519 lambda!193482)))

(declare-fun bs!1027070 () Bool)

(assert (= bs!1027070 (and d!1459235 b!4630131)))

(assert (=> bs!1027070 (= lambda!193519 lambda!193384)))

(assert (=> d!1459235 (contains!14673 (extractMap!1582 (toList!5018 (ListLongMap!3608 lt!1790008))) key!4968)))

(declare-fun lt!1790574 () Unit!113132)

(declare-fun choose!31484 (ListLongMap!3607 K!12965 Hashable!5923) Unit!113132)

(assert (=> d!1459235 (= lt!1790574 (choose!31484 (ListLongMap!3608 lt!1790008) key!4968 hashF!1389))))

(assert (=> d!1459235 (forall!10858 (toList!5018 (ListLongMap!3608 lt!1790008)) lambda!193519)))

(assert (=> d!1459235 (= (lemmaListContainsThenExtractedMapContains!344 (ListLongMap!3608 lt!1790008) key!4968 hashF!1389) lt!1790574)))

(declare-fun bs!1027071 () Bool)

(assert (= bs!1027071 d!1459235))

(declare-fun m!5479201 () Bool)

(assert (=> bs!1027071 m!5479201))

(assert (=> bs!1027071 m!5479201))

(declare-fun m!5479203 () Bool)

(assert (=> bs!1027071 m!5479203))

(declare-fun m!5479205 () Bool)

(assert (=> bs!1027071 m!5479205))

(declare-fun m!5479207 () Bool)

(assert (=> bs!1027071 m!5479207))

(assert (=> b!4630135 d!1459235))

(declare-fun d!1459237 () Bool)

(assert (=> d!1459237 (= (eq!841 (addToMapMapFromBucket!987 (Cons!51592 lt!1790012 lt!1790027) (ListMap!4322 Nil!51592)) (+!1892 (addToMapMapFromBucket!987 lt!1790027 (ListMap!4322 Nil!51592)) lt!1790012)) (= (content!8851 (toList!5017 (addToMapMapFromBucket!987 (Cons!51592 lt!1790012 lt!1790027) (ListMap!4322 Nil!51592)))) (content!8851 (toList!5017 (+!1892 (addToMapMapFromBucket!987 lt!1790027 (ListMap!4322 Nil!51592)) lt!1790012)))))))

(declare-fun bs!1027072 () Bool)

(assert (= bs!1027072 d!1459237))

(declare-fun m!5479209 () Bool)

(assert (=> bs!1027072 m!5479209))

(declare-fun m!5479211 () Bool)

(assert (=> bs!1027072 m!5479211))

(assert (=> b!4630135 d!1459237))

(declare-fun bs!1027073 () Bool)

(declare-fun b!4630543 () Bool)

(assert (= bs!1027073 (and b!4630543 b!4630528)))

(declare-fun lambda!193520 () Int)

(assert (=> bs!1027073 (= (= (ListMap!4322 Nil!51592) lt!1790528) (= lambda!193520 lambda!193510))))

(declare-fun bs!1027074 () Bool)

(assert (= bs!1027074 (and b!4630543 b!4630533)))

(assert (=> bs!1027074 (= (= (ListMap!4322 Nil!51592) lt!1790553) (= lambda!193520 lambda!193514))))

(declare-fun bs!1027075 () Bool)

(assert (= bs!1027075 (and b!4630543 b!4630268)))

(assert (=> bs!1027075 (= (= (ListMap!4322 Nil!51592) lt!1790017) (= lambda!193520 lambda!193471))))

(declare-fun bs!1027076 () Bool)

(assert (= bs!1027076 (and b!4630543 d!1459219)))

(assert (=> bs!1027076 (= (= (ListMap!4322 Nil!51592) lt!1790533) (= lambda!193520 lambda!193511))))

(declare-fun bs!1027077 () Bool)

(assert (= bs!1027077 (and b!4630543 d!1459027)))

(assert (=> bs!1027077 (not (= lambda!193520 lambda!193387))))

(declare-fun bs!1027078 () Bool)

(assert (= bs!1027078 (and b!4630543 d!1459227)))

(assert (=> bs!1027078 (= (= (ListMap!4322 Nil!51592) lt!1790558) (= lambda!193520 lambda!193515))))

(declare-fun bs!1027079 () Bool)

(assert (= bs!1027079 (and b!4630543 b!4630534)))

(assert (=> bs!1027079 (= lambda!193520 lambda!193512)))

(declare-fun bs!1027080 () Bool)

(assert (= bs!1027080 (and b!4630543 d!1459035)))

(assert (=> bs!1027080 (= (= (ListMap!4322 Nil!51592) lt!1790299) (= lambda!193520 lambda!193473))))

(declare-fun bs!1027081 () Bool)

(assert (= bs!1027081 (and b!4630543 d!1459129)))

(assert (=> bs!1027081 (not (= lambda!193520 lambda!193483))))

(assert (=> bs!1027073 (= lambda!193520 lambda!193509)))

(assert (=> bs!1027074 (= lambda!193520 lambda!193513)))

(declare-fun bs!1027082 () Bool)

(assert (= bs!1027082 (and b!4630543 b!4630529)))

(assert (=> bs!1027082 (= lambda!193520 lambda!193508)))

(assert (=> bs!1027075 (= (= (ListMap!4322 Nil!51592) lt!1790294) (= lambda!193520 lambda!193472))))

(declare-fun bs!1027083 () Bool)

(assert (= bs!1027083 (and b!4630543 b!4630269)))

(assert (=> bs!1027083 (= (= (ListMap!4322 Nil!51592) lt!1790017) (= lambda!193520 lambda!193470))))

(assert (=> b!4630543 true))

(declare-fun bs!1027084 () Bool)

(declare-fun b!4630542 () Bool)

(assert (= bs!1027084 (and b!4630542 b!4630528)))

(declare-fun lambda!193521 () Int)

(assert (=> bs!1027084 (= (= (ListMap!4322 Nil!51592) lt!1790528) (= lambda!193521 lambda!193510))))

(declare-fun bs!1027085 () Bool)

(assert (= bs!1027085 (and b!4630542 b!4630533)))

(assert (=> bs!1027085 (= (= (ListMap!4322 Nil!51592) lt!1790553) (= lambda!193521 lambda!193514))))

(declare-fun bs!1027086 () Bool)

(assert (= bs!1027086 (and b!4630542 b!4630268)))

(assert (=> bs!1027086 (= (= (ListMap!4322 Nil!51592) lt!1790017) (= lambda!193521 lambda!193471))))

(declare-fun bs!1027087 () Bool)

(assert (= bs!1027087 (and b!4630542 d!1459027)))

(assert (=> bs!1027087 (not (= lambda!193521 lambda!193387))))

(declare-fun bs!1027088 () Bool)

(assert (= bs!1027088 (and b!4630542 d!1459227)))

(assert (=> bs!1027088 (= (= (ListMap!4322 Nil!51592) lt!1790558) (= lambda!193521 lambda!193515))))

(declare-fun bs!1027089 () Bool)

(assert (= bs!1027089 (and b!4630542 b!4630534)))

(assert (=> bs!1027089 (= lambda!193521 lambda!193512)))

(declare-fun bs!1027090 () Bool)

(assert (= bs!1027090 (and b!4630542 d!1459035)))

(assert (=> bs!1027090 (= (= (ListMap!4322 Nil!51592) lt!1790299) (= lambda!193521 lambda!193473))))

(declare-fun bs!1027091 () Bool)

(assert (= bs!1027091 (and b!4630542 d!1459129)))

(assert (=> bs!1027091 (not (= lambda!193521 lambda!193483))))

(assert (=> bs!1027084 (= lambda!193521 lambda!193509)))

(assert (=> bs!1027085 (= lambda!193521 lambda!193513)))

(declare-fun bs!1027092 () Bool)

(assert (= bs!1027092 (and b!4630542 b!4630529)))

(assert (=> bs!1027092 (= lambda!193521 lambda!193508)))

(declare-fun bs!1027093 () Bool)

(assert (= bs!1027093 (and b!4630542 b!4630543)))

(assert (=> bs!1027093 (= lambda!193521 lambda!193520)))

(declare-fun bs!1027094 () Bool)

(assert (= bs!1027094 (and b!4630542 d!1459219)))

(assert (=> bs!1027094 (= (= (ListMap!4322 Nil!51592) lt!1790533) (= lambda!193521 lambda!193511))))

(assert (=> bs!1027086 (= (= (ListMap!4322 Nil!51592) lt!1790294) (= lambda!193521 lambda!193472))))

(declare-fun bs!1027095 () Bool)

(assert (= bs!1027095 (and b!4630542 b!4630269)))

(assert (=> bs!1027095 (= (= (ListMap!4322 Nil!51592) lt!1790017) (= lambda!193521 lambda!193470))))

(assert (=> b!4630542 true))

(declare-fun lt!1790582 () ListMap!4321)

(declare-fun lambda!193522 () Int)

(assert (=> bs!1027084 (= (= lt!1790582 lt!1790528) (= lambda!193522 lambda!193510))))

(assert (=> bs!1027085 (= (= lt!1790582 lt!1790553) (= lambda!193522 lambda!193514))))

(assert (=> bs!1027086 (= (= lt!1790582 lt!1790017) (= lambda!193522 lambda!193471))))

(assert (=> bs!1027087 (not (= lambda!193522 lambda!193387))))

(assert (=> b!4630542 (= (= lt!1790582 (ListMap!4322 Nil!51592)) (= lambda!193522 lambda!193521))))

(assert (=> bs!1027088 (= (= lt!1790582 lt!1790558) (= lambda!193522 lambda!193515))))

(assert (=> bs!1027089 (= (= lt!1790582 (ListMap!4322 Nil!51592)) (= lambda!193522 lambda!193512))))

(assert (=> bs!1027090 (= (= lt!1790582 lt!1790299) (= lambda!193522 lambda!193473))))

(assert (=> bs!1027091 (not (= lambda!193522 lambda!193483))))

(assert (=> bs!1027084 (= (= lt!1790582 (ListMap!4322 Nil!51592)) (= lambda!193522 lambda!193509))))

(assert (=> bs!1027085 (= (= lt!1790582 (ListMap!4322 Nil!51592)) (= lambda!193522 lambda!193513))))

(assert (=> bs!1027092 (= (= lt!1790582 (ListMap!4322 Nil!51592)) (= lambda!193522 lambda!193508))))

(assert (=> bs!1027093 (= (= lt!1790582 (ListMap!4322 Nil!51592)) (= lambda!193522 lambda!193520))))

(assert (=> bs!1027094 (= (= lt!1790582 lt!1790533) (= lambda!193522 lambda!193511))))

(assert (=> bs!1027086 (= (= lt!1790582 lt!1790294) (= lambda!193522 lambda!193472))))

(assert (=> bs!1027095 (= (= lt!1790582 lt!1790017) (= lambda!193522 lambda!193470))))

(assert (=> b!4630542 true))

(declare-fun bs!1027096 () Bool)

(declare-fun d!1459239 () Bool)

(assert (= bs!1027096 (and d!1459239 b!4630528)))

(declare-fun lambda!193523 () Int)

(declare-fun lt!1790587 () ListMap!4321)

(assert (=> bs!1027096 (= (= lt!1790587 lt!1790528) (= lambda!193523 lambda!193510))))

(declare-fun bs!1027097 () Bool)

(assert (= bs!1027097 (and d!1459239 b!4630533)))

(assert (=> bs!1027097 (= (= lt!1790587 lt!1790553) (= lambda!193523 lambda!193514))))

(declare-fun bs!1027098 () Bool)

(assert (= bs!1027098 (and d!1459239 b!4630268)))

(assert (=> bs!1027098 (= (= lt!1790587 lt!1790017) (= lambda!193523 lambda!193471))))

(declare-fun bs!1027099 () Bool)

(assert (= bs!1027099 (and d!1459239 d!1459027)))

(assert (=> bs!1027099 (not (= lambda!193523 lambda!193387))))

(declare-fun bs!1027100 () Bool)

(assert (= bs!1027100 (and d!1459239 b!4630542)))

(assert (=> bs!1027100 (= (= lt!1790587 (ListMap!4322 Nil!51592)) (= lambda!193523 lambda!193521))))

(declare-fun bs!1027101 () Bool)

(assert (= bs!1027101 (and d!1459239 d!1459227)))

(assert (=> bs!1027101 (= (= lt!1790587 lt!1790558) (= lambda!193523 lambda!193515))))

(declare-fun bs!1027102 () Bool)

(assert (= bs!1027102 (and d!1459239 b!4630534)))

(assert (=> bs!1027102 (= (= lt!1790587 (ListMap!4322 Nil!51592)) (= lambda!193523 lambda!193512))))

(declare-fun bs!1027103 () Bool)

(assert (= bs!1027103 (and d!1459239 d!1459035)))

(assert (=> bs!1027103 (= (= lt!1790587 lt!1790299) (= lambda!193523 lambda!193473))))

(declare-fun bs!1027104 () Bool)

(assert (= bs!1027104 (and d!1459239 d!1459129)))

(assert (=> bs!1027104 (not (= lambda!193523 lambda!193483))))

(assert (=> bs!1027096 (= (= lt!1790587 (ListMap!4322 Nil!51592)) (= lambda!193523 lambda!193509))))

(assert (=> bs!1027097 (= (= lt!1790587 (ListMap!4322 Nil!51592)) (= lambda!193523 lambda!193513))))

(declare-fun bs!1027105 () Bool)

(assert (= bs!1027105 (and d!1459239 b!4630529)))

(assert (=> bs!1027105 (= (= lt!1790587 (ListMap!4322 Nil!51592)) (= lambda!193523 lambda!193508))))

(declare-fun bs!1027106 () Bool)

(assert (= bs!1027106 (and d!1459239 b!4630543)))

(assert (=> bs!1027106 (= (= lt!1790587 (ListMap!4322 Nil!51592)) (= lambda!193523 lambda!193520))))

(declare-fun bs!1027107 () Bool)

(assert (= bs!1027107 (and d!1459239 d!1459219)))

(assert (=> bs!1027107 (= (= lt!1790587 lt!1790533) (= lambda!193523 lambda!193511))))

(assert (=> bs!1027098 (= (= lt!1790587 lt!1790294) (= lambda!193523 lambda!193472))))

(declare-fun bs!1027108 () Bool)

(assert (= bs!1027108 (and d!1459239 b!4630269)))

(assert (=> bs!1027108 (= (= lt!1790587 lt!1790017) (= lambda!193523 lambda!193470))))

(assert (=> bs!1027100 (= (= lt!1790587 lt!1790582) (= lambda!193523 lambda!193522))))

(assert (=> d!1459239 true))

(declare-fun bm!323090 () Bool)

(declare-fun lt!1790585 () ListMap!4321)

(declare-fun c!792615 () Bool)

(declare-fun call!323096 () Bool)

(assert (=> bm!323090 (= call!323096 (forall!10860 (ite c!792615 (toList!5017 (ListMap!4322 Nil!51592)) (toList!5017 lt!1790585)) (ite c!792615 lambda!193520 lambda!193522)))))

(declare-fun e!2888576 () Bool)

(assert (=> d!1459239 e!2888576))

(declare-fun res!1942660 () Bool)

(assert (=> d!1459239 (=> (not res!1942660) (not e!2888576))))

(assert (=> d!1459239 (= res!1942660 (forall!10860 lt!1790027 lambda!193523))))

(declare-fun e!2888575 () ListMap!4321)

(assert (=> d!1459239 (= lt!1790587 e!2888575)))

(assert (=> d!1459239 (= c!792615 ((_ is Nil!51592) lt!1790027))))

(assert (=> d!1459239 (noDuplicateKeys!1526 lt!1790027)))

(assert (=> d!1459239 (= (addToMapMapFromBucket!987 lt!1790027 (ListMap!4322 Nil!51592)) lt!1790587)))

(declare-fun b!4630541 () Bool)

(assert (=> b!4630541 (= e!2888576 (invariantList!1222 (toList!5017 lt!1790587)))))

(declare-fun call!323095 () Bool)

(declare-fun bm!323091 () Bool)

(assert (=> bm!323091 (= call!323095 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) (ite c!792615 lambda!193520 lambda!193521)))))

(assert (=> b!4630542 (= e!2888575 lt!1790582)))

(assert (=> b!4630542 (= lt!1790585 (+!1892 (ListMap!4322 Nil!51592) (h!57660 lt!1790027)))))

(assert (=> b!4630542 (= lt!1790582 (addToMapMapFromBucket!987 (t!358766 lt!1790027) (+!1892 (ListMap!4322 Nil!51592) (h!57660 lt!1790027))))))

(declare-fun lt!1790581 () Unit!113132)

(declare-fun call!323097 () Unit!113132)

(assert (=> b!4630542 (= lt!1790581 call!323097)))

(assert (=> b!4630542 call!323095))

(declare-fun lt!1790584 () Unit!113132)

(assert (=> b!4630542 (= lt!1790584 lt!1790581)))

(assert (=> b!4630542 call!323096))

(declare-fun lt!1790575 () Unit!113132)

(declare-fun Unit!113230 () Unit!113132)

(assert (=> b!4630542 (= lt!1790575 Unit!113230)))

(assert (=> b!4630542 (forall!10860 (t!358766 lt!1790027) lambda!193522)))

(declare-fun lt!1790594 () Unit!113132)

(declare-fun Unit!113231 () Unit!113132)

(assert (=> b!4630542 (= lt!1790594 Unit!113231)))

(declare-fun lt!1790593 () Unit!113132)

(declare-fun Unit!113232 () Unit!113132)

(assert (=> b!4630542 (= lt!1790593 Unit!113232)))

(declare-fun lt!1790595 () Unit!113132)

(assert (=> b!4630542 (= lt!1790595 (forallContained!3090 (toList!5017 lt!1790585) lambda!193522 (h!57660 lt!1790027)))))

(assert (=> b!4630542 (contains!14673 lt!1790585 (_1!29569 (h!57660 lt!1790027)))))

(declare-fun lt!1790590 () Unit!113132)

(declare-fun Unit!113233 () Unit!113132)

(assert (=> b!4630542 (= lt!1790590 Unit!113233)))

(assert (=> b!4630542 (contains!14673 lt!1790582 (_1!29569 (h!57660 lt!1790027)))))

(declare-fun lt!1790579 () Unit!113132)

(declare-fun Unit!113234 () Unit!113132)

(assert (=> b!4630542 (= lt!1790579 Unit!113234)))

(assert (=> b!4630542 (forall!10860 lt!1790027 lambda!193522)))

(declare-fun lt!1790577 () Unit!113132)

(declare-fun Unit!113235 () Unit!113132)

(assert (=> b!4630542 (= lt!1790577 Unit!113235)))

(assert (=> b!4630542 (forall!10860 (toList!5017 lt!1790585) lambda!193522)))

(declare-fun lt!1790588 () Unit!113132)

(declare-fun Unit!113236 () Unit!113132)

(assert (=> b!4630542 (= lt!1790588 Unit!113236)))

(declare-fun lt!1790592 () Unit!113132)

(declare-fun Unit!113237 () Unit!113132)

(assert (=> b!4630542 (= lt!1790592 Unit!113237)))

(declare-fun lt!1790578 () Unit!113132)

(assert (=> b!4630542 (= lt!1790578 (addForallContainsKeyThenBeforeAdding!523 (ListMap!4322 Nil!51592) lt!1790582 (_1!29569 (h!57660 lt!1790027)) (_2!29569 (h!57660 lt!1790027))))))

(assert (=> b!4630542 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) lambda!193522)))

(declare-fun lt!1790576 () Unit!113132)

(assert (=> b!4630542 (= lt!1790576 lt!1790578)))

(assert (=> b!4630542 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) lambda!193522)))

(declare-fun lt!1790580 () Unit!113132)

(declare-fun Unit!113238 () Unit!113132)

(assert (=> b!4630542 (= lt!1790580 Unit!113238)))

(declare-fun res!1942661 () Bool)

(assert (=> b!4630542 (= res!1942661 (forall!10860 lt!1790027 lambda!193522))))

(declare-fun e!2888577 () Bool)

(assert (=> b!4630542 (=> (not res!1942661) (not e!2888577))))

(assert (=> b!4630542 e!2888577))

(declare-fun lt!1790586 () Unit!113132)

(declare-fun Unit!113239 () Unit!113132)

(assert (=> b!4630542 (= lt!1790586 Unit!113239)))

(assert (=> b!4630543 (= e!2888575 (ListMap!4322 Nil!51592))))

(declare-fun lt!1790583 () Unit!113132)

(assert (=> b!4630543 (= lt!1790583 call!323097)))

(assert (=> b!4630543 call!323095))

(declare-fun lt!1790591 () Unit!113132)

(assert (=> b!4630543 (= lt!1790591 lt!1790583)))

(assert (=> b!4630543 call!323096))

(declare-fun lt!1790589 () Unit!113132)

(declare-fun Unit!113240 () Unit!113132)

(assert (=> b!4630543 (= lt!1790589 Unit!113240)))

(declare-fun bm!323092 () Bool)

(assert (=> bm!323092 (= call!323097 (lemmaContainsAllItsOwnKeys!524 (ListMap!4322 Nil!51592)))))

(declare-fun b!4630544 () Bool)

(assert (=> b!4630544 (= e!2888577 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) lambda!193522))))

(declare-fun b!4630545 () Bool)

(declare-fun res!1942659 () Bool)

(assert (=> b!4630545 (=> (not res!1942659) (not e!2888576))))

(assert (=> b!4630545 (= res!1942659 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) lambda!193523))))

(assert (= (and d!1459239 c!792615) b!4630543))

(assert (= (and d!1459239 (not c!792615)) b!4630542))

(assert (= (and b!4630542 res!1942661) b!4630544))

(assert (= (or b!4630543 b!4630542) bm!323092))

(assert (= (or b!4630543 b!4630542) bm!323090))

(assert (= (or b!4630543 b!4630542) bm!323091))

(assert (= (and d!1459239 res!1942660) b!4630545))

(assert (= (and b!4630545 res!1942659) b!4630541))

(declare-fun m!5479213 () Bool)

(assert (=> b!4630545 m!5479213))

(assert (=> bm!323092 m!5479109))

(declare-fun m!5479215 () Bool)

(assert (=> b!4630544 m!5479215))

(declare-fun m!5479217 () Bool)

(assert (=> bm!323091 m!5479217))

(assert (=> b!4630542 m!5479215))

(declare-fun m!5479219 () Bool)

(assert (=> b!4630542 m!5479219))

(declare-fun m!5479221 () Bool)

(assert (=> b!4630542 m!5479221))

(declare-fun m!5479223 () Bool)

(assert (=> b!4630542 m!5479223))

(assert (=> b!4630542 m!5479223))

(assert (=> b!4630542 m!5479215))

(declare-fun m!5479225 () Bool)

(assert (=> b!4630542 m!5479225))

(declare-fun m!5479227 () Bool)

(assert (=> b!4630542 m!5479227))

(declare-fun m!5479229 () Bool)

(assert (=> b!4630542 m!5479229))

(declare-fun m!5479231 () Bool)

(assert (=> b!4630542 m!5479231))

(assert (=> b!4630542 m!5479219))

(declare-fun m!5479233 () Bool)

(assert (=> b!4630542 m!5479233))

(declare-fun m!5479235 () Bool)

(assert (=> b!4630542 m!5479235))

(declare-fun m!5479237 () Bool)

(assert (=> bm!323090 m!5479237))

(declare-fun m!5479239 () Bool)

(assert (=> b!4630541 m!5479239))

(declare-fun m!5479241 () Bool)

(assert (=> d!1459239 m!5479241))

(assert (=> d!1459239 m!5478293))

(assert (=> b!4630135 d!1459239))

(declare-fun d!1459241 () Bool)

(assert (=> d!1459241 (= (head!9660 newBucket!224) (h!57660 newBucket!224))))

(assert (=> b!4630135 d!1459241))

(declare-fun d!1459243 () Bool)

(assert (=> d!1459243 (= (eq!841 (addToMapMapFromBucket!987 (Cons!51592 lt!1790039 lt!1790023) (ListMap!4322 Nil!51592)) (+!1892 (addToMapMapFromBucket!987 lt!1790023 (ListMap!4322 Nil!51592)) lt!1790039)) (= (content!8851 (toList!5017 (addToMapMapFromBucket!987 (Cons!51592 lt!1790039 lt!1790023) (ListMap!4322 Nil!51592)))) (content!8851 (toList!5017 (+!1892 (addToMapMapFromBucket!987 lt!1790023 (ListMap!4322 Nil!51592)) lt!1790039)))))))

(declare-fun bs!1027109 () Bool)

(assert (= bs!1027109 d!1459243))

(declare-fun m!5479243 () Bool)

(assert (=> bs!1027109 m!5479243))

(declare-fun m!5479245 () Bool)

(assert (=> bs!1027109 m!5479245))

(assert (=> b!4630135 d!1459243))

(declare-fun d!1459245 () Bool)

(declare-fun e!2888578 () Bool)

(assert (=> d!1459245 e!2888578))

(declare-fun res!1942663 () Bool)

(assert (=> d!1459245 (=> (not res!1942663) (not e!2888578))))

(declare-fun lt!1790596 () ListMap!4321)

(assert (=> d!1459245 (= res!1942663 (contains!14673 lt!1790596 (_1!29569 lt!1790012)))))

(declare-fun lt!1790597 () List!51716)

(assert (=> d!1459245 (= lt!1790596 (ListMap!4322 lt!1790597))))

(declare-fun lt!1790599 () Unit!113132)

(declare-fun lt!1790598 () Unit!113132)

(assert (=> d!1459245 (= lt!1790599 lt!1790598)))

(assert (=> d!1459245 (= (getValueByKey!1486 lt!1790597 (_1!29569 lt!1790012)) (Some!11645 (_2!29569 lt!1790012)))))

(assert (=> d!1459245 (= lt!1790598 (lemmaContainsTupThenGetReturnValue!866 lt!1790597 (_1!29569 lt!1790012) (_2!29569 lt!1790012)))))

(assert (=> d!1459245 (= lt!1790597 (insertNoDuplicatedKeys!374 (toList!5017 (addToMapMapFromBucket!987 lt!1790027 (ListMap!4322 Nil!51592))) (_1!29569 lt!1790012) (_2!29569 lt!1790012)))))

(assert (=> d!1459245 (= (+!1892 (addToMapMapFromBucket!987 lt!1790027 (ListMap!4322 Nil!51592)) lt!1790012) lt!1790596)))

(declare-fun b!4630546 () Bool)

(declare-fun res!1942662 () Bool)

(assert (=> b!4630546 (=> (not res!1942662) (not e!2888578))))

(assert (=> b!4630546 (= res!1942662 (= (getValueByKey!1486 (toList!5017 lt!1790596) (_1!29569 lt!1790012)) (Some!11645 (_2!29569 lt!1790012))))))

(declare-fun b!4630547 () Bool)

(assert (=> b!4630547 (= e!2888578 (contains!14679 (toList!5017 lt!1790596) lt!1790012))))

(assert (= (and d!1459245 res!1942663) b!4630546))

(assert (= (and b!4630546 res!1942662) b!4630547))

(declare-fun m!5479247 () Bool)

(assert (=> d!1459245 m!5479247))

(declare-fun m!5479249 () Bool)

(assert (=> d!1459245 m!5479249))

(declare-fun m!5479251 () Bool)

(assert (=> d!1459245 m!5479251))

(declare-fun m!5479253 () Bool)

(assert (=> d!1459245 m!5479253))

(declare-fun m!5479255 () Bool)

(assert (=> b!4630546 m!5479255))

(declare-fun m!5479257 () Bool)

(assert (=> b!4630547 m!5479257))

(assert (=> b!4630135 d!1459245))

(declare-fun bs!1027110 () Bool)

(declare-fun d!1459247 () Bool)

(assert (= bs!1027110 (and d!1459247 d!1459233)))

(declare-fun lambda!193524 () Int)

(assert (=> bs!1027110 (= lambda!193524 lambda!193516)))

(declare-fun bs!1027111 () Bool)

(assert (= bs!1027111 (and d!1459247 d!1459211)))

(assert (=> bs!1027111 (= lambda!193524 lambda!193507)))

(declare-fun bs!1027112 () Bool)

(assert (= bs!1027112 (and d!1459247 d!1459235)))

(assert (=> bs!1027112 (= lambda!193524 lambda!193519)))

(declare-fun bs!1027113 () Bool)

(assert (= bs!1027113 (and d!1459247 d!1459095)))

(assert (=> bs!1027113 (= lambda!193524 lambda!193478)))

(declare-fun bs!1027114 () Bool)

(assert (= bs!1027114 (and d!1459247 d!1459159)))

(assert (=> bs!1027114 (= lambda!193524 lambda!193494)))

(declare-fun bs!1027115 () Bool)

(assert (= bs!1027115 (and d!1459247 d!1459127)))

(assert (=> bs!1027115 (= lambda!193524 lambda!193482)))

(declare-fun bs!1027116 () Bool)

(assert (= bs!1027116 (and d!1459247 b!4630131)))

(assert (=> bs!1027116 (= lambda!193524 lambda!193384)))

(declare-fun lt!1790600 () ListMap!4321)

(assert (=> d!1459247 (invariantList!1222 (toList!5017 lt!1790600))))

(declare-fun e!2888579 () ListMap!4321)

(assert (=> d!1459247 (= lt!1790600 e!2888579)))

(declare-fun c!792616 () Bool)

(assert (=> d!1459247 (= c!792616 ((_ is Cons!51593) (Cons!51593 (tuple2!52553 hash!414 lt!1790027) Nil!51593)))))

(assert (=> d!1459247 (forall!10858 (Cons!51593 (tuple2!52553 hash!414 lt!1790027) Nil!51593) lambda!193524)))

(assert (=> d!1459247 (= (extractMap!1582 (Cons!51593 (tuple2!52553 hash!414 lt!1790027) Nil!51593)) lt!1790600)))

(declare-fun b!4630548 () Bool)

(assert (=> b!4630548 (= e!2888579 (addToMapMapFromBucket!987 (_2!29570 (h!57661 (Cons!51593 (tuple2!52553 hash!414 lt!1790027) Nil!51593))) (extractMap!1582 (t!358767 (Cons!51593 (tuple2!52553 hash!414 lt!1790027) Nil!51593)))))))

(declare-fun b!4630549 () Bool)

(assert (=> b!4630549 (= e!2888579 (ListMap!4322 Nil!51592))))

(assert (= (and d!1459247 c!792616) b!4630548))

(assert (= (and d!1459247 (not c!792616)) b!4630549))

(declare-fun m!5479259 () Bool)

(assert (=> d!1459247 m!5479259))

(declare-fun m!5479261 () Bool)

(assert (=> d!1459247 m!5479261))

(declare-fun m!5479263 () Bool)

(assert (=> b!4630548 m!5479263))

(assert (=> b!4630548 m!5479263))

(declare-fun m!5479265 () Bool)

(assert (=> b!4630548 m!5479265))

(assert (=> b!4630135 d!1459247))

(declare-fun bs!1027117 () Bool)

(declare-fun b!4630552 () Bool)

(assert (= bs!1027117 (and b!4630552 b!4630528)))

(declare-fun lambda!193525 () Int)

(assert (=> bs!1027117 (= (= (ListMap!4322 Nil!51592) lt!1790528) (= lambda!193525 lambda!193510))))

(declare-fun bs!1027118 () Bool)

(assert (= bs!1027118 (and b!4630552 b!4630533)))

(assert (=> bs!1027118 (= (= (ListMap!4322 Nil!51592) lt!1790553) (= lambda!193525 lambda!193514))))

(declare-fun bs!1027119 () Bool)

(assert (= bs!1027119 (and b!4630552 b!4630268)))

(assert (=> bs!1027119 (= (= (ListMap!4322 Nil!51592) lt!1790017) (= lambda!193525 lambda!193471))))

(declare-fun bs!1027120 () Bool)

(assert (= bs!1027120 (and b!4630552 d!1459239)))

(assert (=> bs!1027120 (= (= (ListMap!4322 Nil!51592) lt!1790587) (= lambda!193525 lambda!193523))))

(declare-fun bs!1027121 () Bool)

(assert (= bs!1027121 (and b!4630552 d!1459027)))

(assert (=> bs!1027121 (not (= lambda!193525 lambda!193387))))

(declare-fun bs!1027122 () Bool)

(assert (= bs!1027122 (and b!4630552 b!4630542)))

(assert (=> bs!1027122 (= lambda!193525 lambda!193521)))

(declare-fun bs!1027123 () Bool)

(assert (= bs!1027123 (and b!4630552 d!1459227)))

(assert (=> bs!1027123 (= (= (ListMap!4322 Nil!51592) lt!1790558) (= lambda!193525 lambda!193515))))

(declare-fun bs!1027124 () Bool)

(assert (= bs!1027124 (and b!4630552 b!4630534)))

(assert (=> bs!1027124 (= lambda!193525 lambda!193512)))

(declare-fun bs!1027125 () Bool)

(assert (= bs!1027125 (and b!4630552 d!1459035)))

(assert (=> bs!1027125 (= (= (ListMap!4322 Nil!51592) lt!1790299) (= lambda!193525 lambda!193473))))

(declare-fun bs!1027126 () Bool)

(assert (= bs!1027126 (and b!4630552 d!1459129)))

(assert (=> bs!1027126 (not (= lambda!193525 lambda!193483))))

(assert (=> bs!1027117 (= lambda!193525 lambda!193509)))

(assert (=> bs!1027118 (= lambda!193525 lambda!193513)))

(declare-fun bs!1027127 () Bool)

(assert (= bs!1027127 (and b!4630552 b!4630529)))

(assert (=> bs!1027127 (= lambda!193525 lambda!193508)))

(declare-fun bs!1027128 () Bool)

(assert (= bs!1027128 (and b!4630552 b!4630543)))

(assert (=> bs!1027128 (= lambda!193525 lambda!193520)))

(declare-fun bs!1027129 () Bool)

(assert (= bs!1027129 (and b!4630552 d!1459219)))

(assert (=> bs!1027129 (= (= (ListMap!4322 Nil!51592) lt!1790533) (= lambda!193525 lambda!193511))))

(assert (=> bs!1027119 (= (= (ListMap!4322 Nil!51592) lt!1790294) (= lambda!193525 lambda!193472))))

(declare-fun bs!1027130 () Bool)

(assert (= bs!1027130 (and b!4630552 b!4630269)))

(assert (=> bs!1027130 (= (= (ListMap!4322 Nil!51592) lt!1790017) (= lambda!193525 lambda!193470))))

(assert (=> bs!1027122 (= (= (ListMap!4322 Nil!51592) lt!1790582) (= lambda!193525 lambda!193522))))

(assert (=> b!4630552 true))

(declare-fun bs!1027131 () Bool)

(declare-fun b!4630551 () Bool)

(assert (= bs!1027131 (and b!4630551 b!4630528)))

(declare-fun lambda!193526 () Int)

(assert (=> bs!1027131 (= (= (ListMap!4322 Nil!51592) lt!1790528) (= lambda!193526 lambda!193510))))

(declare-fun bs!1027132 () Bool)

(assert (= bs!1027132 (and b!4630551 b!4630533)))

(assert (=> bs!1027132 (= (= (ListMap!4322 Nil!51592) lt!1790553) (= lambda!193526 lambda!193514))))

(declare-fun bs!1027133 () Bool)

(assert (= bs!1027133 (and b!4630551 b!4630268)))

(assert (=> bs!1027133 (= (= (ListMap!4322 Nil!51592) lt!1790017) (= lambda!193526 lambda!193471))))

(declare-fun bs!1027134 () Bool)

(assert (= bs!1027134 (and b!4630551 d!1459027)))

(assert (=> bs!1027134 (not (= lambda!193526 lambda!193387))))

(declare-fun bs!1027135 () Bool)

(assert (= bs!1027135 (and b!4630551 b!4630542)))

(assert (=> bs!1027135 (= lambda!193526 lambda!193521)))

(declare-fun bs!1027136 () Bool)

(assert (= bs!1027136 (and b!4630551 d!1459227)))

(assert (=> bs!1027136 (= (= (ListMap!4322 Nil!51592) lt!1790558) (= lambda!193526 lambda!193515))))

(declare-fun bs!1027137 () Bool)

(assert (= bs!1027137 (and b!4630551 b!4630534)))

(assert (=> bs!1027137 (= lambda!193526 lambda!193512)))

(declare-fun bs!1027138 () Bool)

(assert (= bs!1027138 (and b!4630551 d!1459035)))

(assert (=> bs!1027138 (= (= (ListMap!4322 Nil!51592) lt!1790299) (= lambda!193526 lambda!193473))))

(declare-fun bs!1027139 () Bool)

(assert (= bs!1027139 (and b!4630551 d!1459129)))

(assert (=> bs!1027139 (not (= lambda!193526 lambda!193483))))

(assert (=> bs!1027131 (= lambda!193526 lambda!193509)))

(assert (=> bs!1027132 (= lambda!193526 lambda!193513)))

(declare-fun bs!1027140 () Bool)

(assert (= bs!1027140 (and b!4630551 b!4630529)))

(assert (=> bs!1027140 (= lambda!193526 lambda!193508)))

(declare-fun bs!1027141 () Bool)

(assert (= bs!1027141 (and b!4630551 b!4630543)))

(assert (=> bs!1027141 (= lambda!193526 lambda!193520)))

(declare-fun bs!1027142 () Bool)

(assert (= bs!1027142 (and b!4630551 d!1459219)))

(assert (=> bs!1027142 (= (= (ListMap!4322 Nil!51592) lt!1790533) (= lambda!193526 lambda!193511))))

(declare-fun bs!1027143 () Bool)

(assert (= bs!1027143 (and b!4630551 d!1459239)))

(assert (=> bs!1027143 (= (= (ListMap!4322 Nil!51592) lt!1790587) (= lambda!193526 lambda!193523))))

(declare-fun bs!1027144 () Bool)

(assert (= bs!1027144 (and b!4630551 b!4630552)))

(assert (=> bs!1027144 (= lambda!193526 lambda!193525)))

(assert (=> bs!1027133 (= (= (ListMap!4322 Nil!51592) lt!1790294) (= lambda!193526 lambda!193472))))

(declare-fun bs!1027145 () Bool)

(assert (= bs!1027145 (and b!4630551 b!4630269)))

(assert (=> bs!1027145 (= (= (ListMap!4322 Nil!51592) lt!1790017) (= lambda!193526 lambda!193470))))

(assert (=> bs!1027135 (= (= (ListMap!4322 Nil!51592) lt!1790582) (= lambda!193526 lambda!193522))))

(assert (=> b!4630551 true))

(declare-fun lt!1790608 () ListMap!4321)

(declare-fun lambda!193527 () Int)

(assert (=> b!4630551 (= (= lt!1790608 (ListMap!4322 Nil!51592)) (= lambda!193527 lambda!193526))))

(assert (=> bs!1027131 (= (= lt!1790608 lt!1790528) (= lambda!193527 lambda!193510))))

(assert (=> bs!1027132 (= (= lt!1790608 lt!1790553) (= lambda!193527 lambda!193514))))

(assert (=> bs!1027133 (= (= lt!1790608 lt!1790017) (= lambda!193527 lambda!193471))))

(assert (=> bs!1027134 (not (= lambda!193527 lambda!193387))))

(assert (=> bs!1027135 (= (= lt!1790608 (ListMap!4322 Nil!51592)) (= lambda!193527 lambda!193521))))

(assert (=> bs!1027136 (= (= lt!1790608 lt!1790558) (= lambda!193527 lambda!193515))))

(assert (=> bs!1027137 (= (= lt!1790608 (ListMap!4322 Nil!51592)) (= lambda!193527 lambda!193512))))

(assert (=> bs!1027138 (= (= lt!1790608 lt!1790299) (= lambda!193527 lambda!193473))))

(assert (=> bs!1027139 (not (= lambda!193527 lambda!193483))))

(assert (=> bs!1027131 (= (= lt!1790608 (ListMap!4322 Nil!51592)) (= lambda!193527 lambda!193509))))

(assert (=> bs!1027132 (= (= lt!1790608 (ListMap!4322 Nil!51592)) (= lambda!193527 lambda!193513))))

(assert (=> bs!1027140 (= (= lt!1790608 (ListMap!4322 Nil!51592)) (= lambda!193527 lambda!193508))))

(assert (=> bs!1027141 (= (= lt!1790608 (ListMap!4322 Nil!51592)) (= lambda!193527 lambda!193520))))

(assert (=> bs!1027142 (= (= lt!1790608 lt!1790533) (= lambda!193527 lambda!193511))))

(assert (=> bs!1027143 (= (= lt!1790608 lt!1790587) (= lambda!193527 lambda!193523))))

(assert (=> bs!1027144 (= (= lt!1790608 (ListMap!4322 Nil!51592)) (= lambda!193527 lambda!193525))))

(assert (=> bs!1027133 (= (= lt!1790608 lt!1790294) (= lambda!193527 lambda!193472))))

(assert (=> bs!1027145 (= (= lt!1790608 lt!1790017) (= lambda!193527 lambda!193470))))

(assert (=> bs!1027135 (= (= lt!1790608 lt!1790582) (= lambda!193527 lambda!193522))))

(assert (=> b!4630551 true))

(declare-fun bs!1027146 () Bool)

(declare-fun d!1459249 () Bool)

(assert (= bs!1027146 (and d!1459249 b!4630551)))

(declare-fun lt!1790613 () ListMap!4321)

(declare-fun lambda!193528 () Int)

(assert (=> bs!1027146 (= (= lt!1790613 (ListMap!4322 Nil!51592)) (= lambda!193528 lambda!193526))))

(declare-fun bs!1027147 () Bool)

(assert (= bs!1027147 (and d!1459249 b!4630528)))

(assert (=> bs!1027147 (= (= lt!1790613 lt!1790528) (= lambda!193528 lambda!193510))))

(declare-fun bs!1027148 () Bool)

(assert (= bs!1027148 (and d!1459249 b!4630533)))

(assert (=> bs!1027148 (= (= lt!1790613 lt!1790553) (= lambda!193528 lambda!193514))))

(assert (=> bs!1027146 (= (= lt!1790613 lt!1790608) (= lambda!193528 lambda!193527))))

(declare-fun bs!1027149 () Bool)

(assert (= bs!1027149 (and d!1459249 b!4630268)))

(assert (=> bs!1027149 (= (= lt!1790613 lt!1790017) (= lambda!193528 lambda!193471))))

(declare-fun bs!1027150 () Bool)

(assert (= bs!1027150 (and d!1459249 d!1459027)))

(assert (=> bs!1027150 (not (= lambda!193528 lambda!193387))))

(declare-fun bs!1027151 () Bool)

(assert (= bs!1027151 (and d!1459249 b!4630542)))

(assert (=> bs!1027151 (= (= lt!1790613 (ListMap!4322 Nil!51592)) (= lambda!193528 lambda!193521))))

(declare-fun bs!1027152 () Bool)

(assert (= bs!1027152 (and d!1459249 d!1459227)))

(assert (=> bs!1027152 (= (= lt!1790613 lt!1790558) (= lambda!193528 lambda!193515))))

(declare-fun bs!1027153 () Bool)

(assert (= bs!1027153 (and d!1459249 b!4630534)))

(assert (=> bs!1027153 (= (= lt!1790613 (ListMap!4322 Nil!51592)) (= lambda!193528 lambda!193512))))

(declare-fun bs!1027154 () Bool)

(assert (= bs!1027154 (and d!1459249 d!1459035)))

(assert (=> bs!1027154 (= (= lt!1790613 lt!1790299) (= lambda!193528 lambda!193473))))

(declare-fun bs!1027155 () Bool)

(assert (= bs!1027155 (and d!1459249 d!1459129)))

(assert (=> bs!1027155 (not (= lambda!193528 lambda!193483))))

(assert (=> bs!1027147 (= (= lt!1790613 (ListMap!4322 Nil!51592)) (= lambda!193528 lambda!193509))))

(assert (=> bs!1027148 (= (= lt!1790613 (ListMap!4322 Nil!51592)) (= lambda!193528 lambda!193513))))

(declare-fun bs!1027156 () Bool)

(assert (= bs!1027156 (and d!1459249 b!4630529)))

(assert (=> bs!1027156 (= (= lt!1790613 (ListMap!4322 Nil!51592)) (= lambda!193528 lambda!193508))))

(declare-fun bs!1027157 () Bool)

(assert (= bs!1027157 (and d!1459249 b!4630543)))

(assert (=> bs!1027157 (= (= lt!1790613 (ListMap!4322 Nil!51592)) (= lambda!193528 lambda!193520))))

(declare-fun bs!1027158 () Bool)

(assert (= bs!1027158 (and d!1459249 d!1459219)))

(assert (=> bs!1027158 (= (= lt!1790613 lt!1790533) (= lambda!193528 lambda!193511))))

(declare-fun bs!1027159 () Bool)

(assert (= bs!1027159 (and d!1459249 d!1459239)))

(assert (=> bs!1027159 (= (= lt!1790613 lt!1790587) (= lambda!193528 lambda!193523))))

(declare-fun bs!1027160 () Bool)

(assert (= bs!1027160 (and d!1459249 b!4630552)))

(assert (=> bs!1027160 (= (= lt!1790613 (ListMap!4322 Nil!51592)) (= lambda!193528 lambda!193525))))

(assert (=> bs!1027149 (= (= lt!1790613 lt!1790294) (= lambda!193528 lambda!193472))))

(declare-fun bs!1027161 () Bool)

(assert (= bs!1027161 (and d!1459249 b!4630269)))

(assert (=> bs!1027161 (= (= lt!1790613 lt!1790017) (= lambda!193528 lambda!193470))))

(assert (=> bs!1027151 (= (= lt!1790613 lt!1790582) (= lambda!193528 lambda!193522))))

(assert (=> d!1459249 true))

(declare-fun lt!1790611 () ListMap!4321)

(declare-fun c!792617 () Bool)

(declare-fun bm!323093 () Bool)

(declare-fun call!323099 () Bool)

(assert (=> bm!323093 (= call!323099 (forall!10860 (ite c!792617 (toList!5017 (ListMap!4322 Nil!51592)) (toList!5017 lt!1790611)) (ite c!792617 lambda!193525 lambda!193527)))))

(declare-fun e!2888581 () Bool)

(assert (=> d!1459249 e!2888581))

(declare-fun res!1942665 () Bool)

(assert (=> d!1459249 (=> (not res!1942665) (not e!2888581))))

(assert (=> d!1459249 (= res!1942665 (forall!10860 (Cons!51592 lt!1790039 lt!1790023) lambda!193528))))

(declare-fun e!2888580 () ListMap!4321)

(assert (=> d!1459249 (= lt!1790613 e!2888580)))

(assert (=> d!1459249 (= c!792617 ((_ is Nil!51592) (Cons!51592 lt!1790039 lt!1790023)))))

(assert (=> d!1459249 (noDuplicateKeys!1526 (Cons!51592 lt!1790039 lt!1790023))))

(assert (=> d!1459249 (= (addToMapMapFromBucket!987 (Cons!51592 lt!1790039 lt!1790023) (ListMap!4322 Nil!51592)) lt!1790613)))

(declare-fun b!4630550 () Bool)

(assert (=> b!4630550 (= e!2888581 (invariantList!1222 (toList!5017 lt!1790613)))))

(declare-fun call!323098 () Bool)

(declare-fun bm!323094 () Bool)

(assert (=> bm!323094 (= call!323098 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) (ite c!792617 lambda!193525 lambda!193526)))))

(assert (=> b!4630551 (= e!2888580 lt!1790608)))

(assert (=> b!4630551 (= lt!1790611 (+!1892 (ListMap!4322 Nil!51592) (h!57660 (Cons!51592 lt!1790039 lt!1790023))))))

(assert (=> b!4630551 (= lt!1790608 (addToMapMapFromBucket!987 (t!358766 (Cons!51592 lt!1790039 lt!1790023)) (+!1892 (ListMap!4322 Nil!51592) (h!57660 (Cons!51592 lt!1790039 lt!1790023)))))))

(declare-fun lt!1790607 () Unit!113132)

(declare-fun call!323100 () Unit!113132)

(assert (=> b!4630551 (= lt!1790607 call!323100)))

(assert (=> b!4630551 call!323098))

(declare-fun lt!1790610 () Unit!113132)

(assert (=> b!4630551 (= lt!1790610 lt!1790607)))

(assert (=> b!4630551 call!323099))

(declare-fun lt!1790601 () Unit!113132)

(declare-fun Unit!113241 () Unit!113132)

(assert (=> b!4630551 (= lt!1790601 Unit!113241)))

(assert (=> b!4630551 (forall!10860 (t!358766 (Cons!51592 lt!1790039 lt!1790023)) lambda!193527)))

(declare-fun lt!1790620 () Unit!113132)

(declare-fun Unit!113242 () Unit!113132)

(assert (=> b!4630551 (= lt!1790620 Unit!113242)))

(declare-fun lt!1790619 () Unit!113132)

(declare-fun Unit!113243 () Unit!113132)

(assert (=> b!4630551 (= lt!1790619 Unit!113243)))

(declare-fun lt!1790621 () Unit!113132)

(assert (=> b!4630551 (= lt!1790621 (forallContained!3090 (toList!5017 lt!1790611) lambda!193527 (h!57660 (Cons!51592 lt!1790039 lt!1790023))))))

(assert (=> b!4630551 (contains!14673 lt!1790611 (_1!29569 (h!57660 (Cons!51592 lt!1790039 lt!1790023))))))

(declare-fun lt!1790616 () Unit!113132)

(declare-fun Unit!113244 () Unit!113132)

(assert (=> b!4630551 (= lt!1790616 Unit!113244)))

(assert (=> b!4630551 (contains!14673 lt!1790608 (_1!29569 (h!57660 (Cons!51592 lt!1790039 lt!1790023))))))

(declare-fun lt!1790605 () Unit!113132)

(declare-fun Unit!113245 () Unit!113132)

(assert (=> b!4630551 (= lt!1790605 Unit!113245)))

(assert (=> b!4630551 (forall!10860 (Cons!51592 lt!1790039 lt!1790023) lambda!193527)))

(declare-fun lt!1790603 () Unit!113132)

(declare-fun Unit!113246 () Unit!113132)

(assert (=> b!4630551 (= lt!1790603 Unit!113246)))

(assert (=> b!4630551 (forall!10860 (toList!5017 lt!1790611) lambda!193527)))

(declare-fun lt!1790614 () Unit!113132)

(declare-fun Unit!113247 () Unit!113132)

(assert (=> b!4630551 (= lt!1790614 Unit!113247)))

(declare-fun lt!1790618 () Unit!113132)

(declare-fun Unit!113248 () Unit!113132)

(assert (=> b!4630551 (= lt!1790618 Unit!113248)))

(declare-fun lt!1790604 () Unit!113132)

(assert (=> b!4630551 (= lt!1790604 (addForallContainsKeyThenBeforeAdding!523 (ListMap!4322 Nil!51592) lt!1790608 (_1!29569 (h!57660 (Cons!51592 lt!1790039 lt!1790023))) (_2!29569 (h!57660 (Cons!51592 lt!1790039 lt!1790023)))))))

(assert (=> b!4630551 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) lambda!193527)))

(declare-fun lt!1790602 () Unit!113132)

(assert (=> b!4630551 (= lt!1790602 lt!1790604)))

(assert (=> b!4630551 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) lambda!193527)))

(declare-fun lt!1790606 () Unit!113132)

(declare-fun Unit!113249 () Unit!113132)

(assert (=> b!4630551 (= lt!1790606 Unit!113249)))

(declare-fun res!1942666 () Bool)

(assert (=> b!4630551 (= res!1942666 (forall!10860 (Cons!51592 lt!1790039 lt!1790023) lambda!193527))))

(declare-fun e!2888582 () Bool)

(assert (=> b!4630551 (=> (not res!1942666) (not e!2888582))))

(assert (=> b!4630551 e!2888582))

(declare-fun lt!1790612 () Unit!113132)

(declare-fun Unit!113250 () Unit!113132)

(assert (=> b!4630551 (= lt!1790612 Unit!113250)))

(assert (=> b!4630552 (= e!2888580 (ListMap!4322 Nil!51592))))

(declare-fun lt!1790609 () Unit!113132)

(assert (=> b!4630552 (= lt!1790609 call!323100)))

(assert (=> b!4630552 call!323098))

(declare-fun lt!1790617 () Unit!113132)

(assert (=> b!4630552 (= lt!1790617 lt!1790609)))

(assert (=> b!4630552 call!323099))

(declare-fun lt!1790615 () Unit!113132)

(declare-fun Unit!113251 () Unit!113132)

(assert (=> b!4630552 (= lt!1790615 Unit!113251)))

(declare-fun bm!323095 () Bool)

(assert (=> bm!323095 (= call!323100 (lemmaContainsAllItsOwnKeys!524 (ListMap!4322 Nil!51592)))))

(declare-fun b!4630553 () Bool)

(assert (=> b!4630553 (= e!2888582 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) lambda!193527))))

(declare-fun b!4630554 () Bool)

(declare-fun res!1942664 () Bool)

(assert (=> b!4630554 (=> (not res!1942664) (not e!2888581))))

(assert (=> b!4630554 (= res!1942664 (forall!10860 (toList!5017 (ListMap!4322 Nil!51592)) lambda!193528))))

(assert (= (and d!1459249 c!792617) b!4630552))

(assert (= (and d!1459249 (not c!792617)) b!4630551))

(assert (= (and b!4630551 res!1942666) b!4630553))

(assert (= (or b!4630552 b!4630551) bm!323095))

(assert (= (or b!4630552 b!4630551) bm!323093))

(assert (= (or b!4630552 b!4630551) bm!323094))

(assert (= (and d!1459249 res!1942665) b!4630554))

(assert (= (and b!4630554 res!1942664) b!4630550))

(declare-fun m!5479267 () Bool)

(assert (=> b!4630554 m!5479267))

(assert (=> bm!323095 m!5479109))

(declare-fun m!5479269 () Bool)

(assert (=> b!4630553 m!5479269))

(declare-fun m!5479271 () Bool)

(assert (=> bm!323094 m!5479271))

(assert (=> b!4630551 m!5479269))

(declare-fun m!5479273 () Bool)

(assert (=> b!4630551 m!5479273))

(declare-fun m!5479275 () Bool)

(assert (=> b!4630551 m!5479275))

(declare-fun m!5479277 () Bool)

(assert (=> b!4630551 m!5479277))

(assert (=> b!4630551 m!5479277))

(assert (=> b!4630551 m!5479269))

(declare-fun m!5479279 () Bool)

(assert (=> b!4630551 m!5479279))

(declare-fun m!5479281 () Bool)

(assert (=> b!4630551 m!5479281))

(declare-fun m!5479283 () Bool)

(assert (=> b!4630551 m!5479283))

(declare-fun m!5479285 () Bool)

(assert (=> b!4630551 m!5479285))

(assert (=> b!4630551 m!5479273))

(declare-fun m!5479287 () Bool)

(assert (=> b!4630551 m!5479287))

(declare-fun m!5479289 () Bool)

(assert (=> b!4630551 m!5479289))

(declare-fun m!5479291 () Bool)

(assert (=> bm!323093 m!5479291))

(declare-fun m!5479293 () Bool)

(assert (=> b!4630550 m!5479293))

(declare-fun m!5479295 () Bool)

(assert (=> d!1459249 m!5479295))

(declare-fun m!5479297 () Bool)

(assert (=> d!1459249 m!5479297))

(assert (=> b!4630135 d!1459249))

(declare-fun b!4630555 () Bool)

(declare-fun e!2888584 () Bool)

(declare-fun e!2888586 () Bool)

(assert (=> b!4630555 (= e!2888584 e!2888586)))

(declare-fun res!1942668 () Bool)

(assert (=> b!4630555 (=> (not res!1942668) (not e!2888586))))

(assert (=> b!4630555 (= res!1942668 (isDefined!8910 (getValueByKey!1486 (toList!5017 lt!1790026) key!4968)))))

(declare-fun d!1459251 () Bool)

(assert (=> d!1459251 e!2888584))

(declare-fun res!1942667 () Bool)

(assert (=> d!1459251 (=> res!1942667 e!2888584)))

(declare-fun e!2888583 () Bool)

(assert (=> d!1459251 (= res!1942667 e!2888583)))

(declare-fun res!1942669 () Bool)

(assert (=> d!1459251 (=> (not res!1942669) (not e!2888583))))

(declare-fun lt!1790627 () Bool)

(assert (=> d!1459251 (= res!1942669 (not lt!1790627))))

(declare-fun lt!1790623 () Bool)

(assert (=> d!1459251 (= lt!1790627 lt!1790623)))

(declare-fun lt!1790625 () Unit!113132)

(declare-fun e!2888585 () Unit!113132)

(assert (=> d!1459251 (= lt!1790625 e!2888585)))

(declare-fun c!792618 () Bool)

(assert (=> d!1459251 (= c!792618 lt!1790623)))

(assert (=> d!1459251 (= lt!1790623 (containsKey!2503 (toList!5017 lt!1790026) key!4968))))

(assert (=> d!1459251 (= (contains!14673 lt!1790026 key!4968) lt!1790627)))

(declare-fun b!4630556 () Bool)

(declare-fun lt!1790622 () Unit!113132)

(assert (=> b!4630556 (= e!2888585 lt!1790622)))

(declare-fun lt!1790624 () Unit!113132)

(assert (=> b!4630556 (= lt!1790624 (lemmaContainsKeyImpliesGetValueByKeyDefined!1387 (toList!5017 lt!1790026) key!4968))))

(assert (=> b!4630556 (isDefined!8910 (getValueByKey!1486 (toList!5017 lt!1790026) key!4968))))

(declare-fun lt!1790626 () Unit!113132)

(assert (=> b!4630556 (= lt!1790626 lt!1790624)))

(assert (=> b!4630556 (= lt!1790622 (lemmaInListThenGetKeysListContains!667 (toList!5017 lt!1790026) key!4968))))

(declare-fun call!323101 () Bool)

(assert (=> b!4630556 call!323101))

(declare-fun b!4630557 () Bool)

(assert (=> b!4630557 (= e!2888586 (contains!14677 (keys!18191 lt!1790026) key!4968))))

(declare-fun b!4630558 () Bool)

(declare-fun e!2888587 () Unit!113132)

(declare-fun Unit!113252 () Unit!113132)

(assert (=> b!4630558 (= e!2888587 Unit!113252)))

(declare-fun b!4630559 () Bool)

(declare-fun e!2888588 () List!51718)

(assert (=> b!4630559 (= e!2888588 (keys!18191 lt!1790026))))

(declare-fun b!4630560 () Bool)

(assert (=> b!4630560 false))

(declare-fun lt!1790628 () Unit!113132)

(declare-fun lt!1790629 () Unit!113132)

(assert (=> b!4630560 (= lt!1790628 lt!1790629)))

(assert (=> b!4630560 (containsKey!2503 (toList!5017 lt!1790026) key!4968)))

(assert (=> b!4630560 (= lt!1790629 (lemmaInGetKeysListThenContainsKey!671 (toList!5017 lt!1790026) key!4968))))

(declare-fun Unit!113253 () Unit!113132)

(assert (=> b!4630560 (= e!2888587 Unit!113253)))

(declare-fun bm!323096 () Bool)

(assert (=> bm!323096 (= call!323101 (contains!14677 e!2888588 key!4968))))

(declare-fun c!792619 () Bool)

(assert (=> bm!323096 (= c!792619 c!792618)))

(declare-fun b!4630561 () Bool)

(assert (=> b!4630561 (= e!2888585 e!2888587)))

(declare-fun c!792620 () Bool)

(assert (=> b!4630561 (= c!792620 call!323101)))

(declare-fun b!4630562 () Bool)

(assert (=> b!4630562 (= e!2888583 (not (contains!14677 (keys!18191 lt!1790026) key!4968)))))

(declare-fun b!4630563 () Bool)

(assert (=> b!4630563 (= e!2888588 (getKeysList!672 (toList!5017 lt!1790026)))))

(assert (= (and d!1459251 c!792618) b!4630556))

(assert (= (and d!1459251 (not c!792618)) b!4630561))

(assert (= (and b!4630561 c!792620) b!4630560))

(assert (= (and b!4630561 (not c!792620)) b!4630558))

(assert (= (or b!4630556 b!4630561) bm!323096))

(assert (= (and bm!323096 c!792619) b!4630563))

(assert (= (and bm!323096 (not c!792619)) b!4630559))

(assert (= (and d!1459251 res!1942669) b!4630562))

(assert (= (and d!1459251 (not res!1942667)) b!4630555))

(assert (= (and b!4630555 res!1942668) b!4630557))

(declare-fun m!5479299 () Bool)

(assert (=> bm!323096 m!5479299))

(declare-fun m!5479301 () Bool)

(assert (=> b!4630556 m!5479301))

(declare-fun m!5479303 () Bool)

(assert (=> b!4630556 m!5479303))

(assert (=> b!4630556 m!5479303))

(declare-fun m!5479305 () Bool)

(assert (=> b!4630556 m!5479305))

(declare-fun m!5479307 () Bool)

(assert (=> b!4630556 m!5479307))

(assert (=> b!4630555 m!5479303))

(assert (=> b!4630555 m!5479303))

(assert (=> b!4630555 m!5479305))

(declare-fun m!5479309 () Bool)

(assert (=> d!1459251 m!5479309))

(assert (=> b!4630562 m!5478803))

(assert (=> b!4630562 m!5478803))

(declare-fun m!5479311 () Bool)

(assert (=> b!4630562 m!5479311))

(assert (=> b!4630557 m!5478803))

(assert (=> b!4630557 m!5478803))

(assert (=> b!4630557 m!5479311))

(assert (=> b!4630559 m!5478803))

(declare-fun m!5479313 () Bool)

(assert (=> b!4630563 m!5479313))

(assert (=> b!4630560 m!5479309))

(declare-fun m!5479315 () Bool)

(assert (=> b!4630560 m!5479315))

(assert (=> b!4630135 d!1459251))

(declare-fun d!1459253 () Bool)

(assert (=> d!1459253 (= (eq!841 lt!1790013 lt!1790031) (= (content!8851 (toList!5017 lt!1790013)) (content!8851 (toList!5017 lt!1790031))))))

(declare-fun bs!1027162 () Bool)

(assert (= bs!1027162 d!1459253))

(declare-fun m!5479317 () Bool)

(assert (=> bs!1027162 m!5479317))

(declare-fun m!5479319 () Bool)

(assert (=> bs!1027162 m!5479319))

(assert (=> b!4630125 d!1459253))

(declare-fun d!1459255 () Bool)

(assert (=> d!1459255 (= (eq!841 lt!1790018 lt!1790013) (= (content!8851 (toList!5017 lt!1790018)) (content!8851 (toList!5017 lt!1790013))))))

(declare-fun bs!1027163 () Bool)

(assert (= bs!1027163 d!1459255))

(declare-fun m!5479321 () Bool)

(assert (=> bs!1027163 m!5479321))

(assert (=> bs!1027163 m!5479317))

(assert (=> b!4630125 d!1459255))

(declare-fun d!1459257 () Bool)

(declare-fun e!2888589 () Bool)

(assert (=> d!1459257 e!2888589))

(declare-fun res!1942670 () Bool)

(assert (=> d!1459257 (=> (not res!1942670) (not e!2888589))))

(declare-fun lt!1790630 () ListMap!4321)

(assert (=> d!1459257 (= res!1942670 (not (contains!14673 lt!1790630 key!4968)))))

(assert (=> d!1459257 (= lt!1790630 (ListMap!4322 (removePresrvNoDuplicatedKeys!270 (toList!5017 lt!1790015) key!4968)))))

(assert (=> d!1459257 (= (-!566 lt!1790015 key!4968) lt!1790630)))

(declare-fun b!4630564 () Bool)

(assert (=> b!4630564 (= e!2888589 (= ((_ map and) (content!8849 (keys!18191 lt!1790015)) ((_ map not) (store ((as const (Array K!12965 Bool)) false) key!4968 true))) (content!8849 (keys!18191 lt!1790630))))))

(assert (= (and d!1459257 res!1942670) b!4630564))

(declare-fun m!5479323 () Bool)

(assert (=> d!1459257 m!5479323))

(declare-fun m!5479325 () Bool)

(assert (=> d!1459257 m!5479325))

(assert (=> b!4630564 m!5478755))

(declare-fun m!5479327 () Bool)

(assert (=> b!4630564 m!5479327))

(declare-fun m!5479329 () Bool)

(assert (=> b!4630564 m!5479329))

(declare-fun m!5479331 () Bool)

(assert (=> b!4630564 m!5479331))

(assert (=> b!4630564 m!5478755))

(assert (=> b!4630564 m!5478811))

(assert (=> b!4630564 m!5479329))

(assert (=> b!4630125 d!1459257))

(declare-fun d!1459259 () Bool)

(assert (=> d!1459259 (eq!841 (-!566 lt!1790020 key!4968) (-!566 lt!1790015 key!4968))))

(declare-fun lt!1790633 () Unit!113132)

(declare-fun choose!31486 (ListMap!4321 ListMap!4321 K!12965) Unit!113132)

(assert (=> d!1459259 (= lt!1790633 (choose!31486 lt!1790020 lt!1790015 key!4968))))

(assert (=> d!1459259 (eq!841 lt!1790020 lt!1790015)))

(assert (=> d!1459259 (= (lemmaRemovePreservesEq!22 lt!1790020 lt!1790015 key!4968) lt!1790633)))

(declare-fun bs!1027164 () Bool)

(assert (= bs!1027164 d!1459259))

(assert (=> bs!1027164 m!5478237))

(declare-fun m!5479333 () Bool)

(assert (=> bs!1027164 m!5479333))

(assert (=> bs!1027164 m!5478255))

(assert (=> bs!1027164 m!5478237))

(declare-fun m!5479335 () Bool)

(assert (=> bs!1027164 m!5479335))

(declare-fun m!5479337 () Bool)

(assert (=> bs!1027164 m!5479337))

(assert (=> bs!1027164 m!5478255))

(assert (=> b!4630125 d!1459259))

(declare-fun d!1459261 () Bool)

(declare-fun hash!3558 (Hashable!5923 K!12965) (_ BitVec 64))

(assert (=> d!1459261 (= (hash!3554 hashF!1389 key!4968) (hash!3558 hashF!1389 key!4968))))

(declare-fun bs!1027165 () Bool)

(assert (= bs!1027165 d!1459261))

(declare-fun m!5479339 () Bool)

(assert (=> bs!1027165 m!5479339))

(assert (=> b!4630136 d!1459261))

(declare-fun d!1459263 () Bool)

(assert (=> d!1459263 (= (eq!841 lt!1790038 (+!1892 lt!1790028 lt!1790039)) (= (content!8851 (toList!5017 lt!1790038)) (content!8851 (toList!5017 (+!1892 lt!1790028 lt!1790039)))))))

(declare-fun bs!1027166 () Bool)

(assert (= bs!1027166 d!1459263))

(declare-fun m!5479341 () Bool)

(assert (=> bs!1027166 m!5479341))

(declare-fun m!5479343 () Bool)

(assert (=> bs!1027166 m!5479343))

(assert (=> b!4630126 d!1459263))

(declare-fun d!1459265 () Bool)

(declare-fun e!2888590 () Bool)

(assert (=> d!1459265 e!2888590))

(declare-fun res!1942672 () Bool)

(assert (=> d!1459265 (=> (not res!1942672) (not e!2888590))))

(declare-fun lt!1790634 () ListMap!4321)

(assert (=> d!1459265 (= res!1942672 (contains!14673 lt!1790634 (_1!29569 lt!1790039)))))

(declare-fun lt!1790635 () List!51716)

(assert (=> d!1459265 (= lt!1790634 (ListMap!4322 lt!1790635))))

(declare-fun lt!1790637 () Unit!113132)

(declare-fun lt!1790636 () Unit!113132)

(assert (=> d!1459265 (= lt!1790637 lt!1790636)))

(assert (=> d!1459265 (= (getValueByKey!1486 lt!1790635 (_1!29569 lt!1790039)) (Some!11645 (_2!29569 lt!1790039)))))

(assert (=> d!1459265 (= lt!1790636 (lemmaContainsTupThenGetReturnValue!866 lt!1790635 (_1!29569 lt!1790039) (_2!29569 lt!1790039)))))

(assert (=> d!1459265 (= lt!1790635 (insertNoDuplicatedKeys!374 (toList!5017 lt!1790028) (_1!29569 lt!1790039) (_2!29569 lt!1790039)))))

(assert (=> d!1459265 (= (+!1892 lt!1790028 lt!1790039) lt!1790634)))

(declare-fun b!4630565 () Bool)

(declare-fun res!1942671 () Bool)

(assert (=> b!4630565 (=> (not res!1942671) (not e!2888590))))

(assert (=> b!4630565 (= res!1942671 (= (getValueByKey!1486 (toList!5017 lt!1790634) (_1!29569 lt!1790039)) (Some!11645 (_2!29569 lt!1790039))))))

(declare-fun b!4630566 () Bool)

(assert (=> b!4630566 (= e!2888590 (contains!14679 (toList!5017 lt!1790634) lt!1790039))))

(assert (= (and d!1459265 res!1942672) b!4630565))

(assert (= (and b!4630565 res!1942671) b!4630566))

(declare-fun m!5479345 () Bool)

(assert (=> d!1459265 m!5479345))

(declare-fun m!5479347 () Bool)

(assert (=> d!1459265 m!5479347))

(declare-fun m!5479349 () Bool)

(assert (=> d!1459265 m!5479349))

(declare-fun m!5479351 () Bool)

(assert (=> d!1459265 m!5479351))

(declare-fun m!5479353 () Bool)

(assert (=> b!4630565 m!5479353))

(declare-fun m!5479355 () Bool)

(assert (=> b!4630566 m!5479355))

(assert (=> b!4630126 d!1459265))

(declare-fun bs!1027167 () Bool)

(declare-fun d!1459267 () Bool)

(assert (= bs!1027167 (and d!1459267 d!1459233)))

(declare-fun lambda!193529 () Int)

(assert (=> bs!1027167 (= lambda!193529 lambda!193516)))

(declare-fun bs!1027168 () Bool)

(assert (= bs!1027168 (and d!1459267 d!1459211)))

(assert (=> bs!1027168 (= lambda!193529 lambda!193507)))

(declare-fun bs!1027169 () Bool)

(assert (= bs!1027169 (and d!1459267 d!1459235)))

(assert (=> bs!1027169 (= lambda!193529 lambda!193519)))

(declare-fun bs!1027170 () Bool)

(assert (= bs!1027170 (and d!1459267 d!1459095)))

(assert (=> bs!1027170 (= lambda!193529 lambda!193478)))

(declare-fun bs!1027171 () Bool)

(assert (= bs!1027171 (and d!1459267 d!1459159)))

(assert (=> bs!1027171 (= lambda!193529 lambda!193494)))

(declare-fun bs!1027172 () Bool)

(assert (= bs!1027172 (and d!1459267 d!1459127)))

(assert (=> bs!1027172 (= lambda!193529 lambda!193482)))

(declare-fun bs!1027173 () Bool)

(assert (= bs!1027173 (and d!1459267 d!1459247)))

(assert (=> bs!1027173 (= lambda!193529 lambda!193524)))

(declare-fun bs!1027174 () Bool)

(assert (= bs!1027174 (and d!1459267 b!4630131)))

(assert (=> bs!1027174 (= lambda!193529 lambda!193384)))

(declare-fun lt!1790638 () ListMap!4321)

(assert (=> d!1459267 (invariantList!1222 (toList!5017 lt!1790638))))

(declare-fun e!2888591 () ListMap!4321)

(assert (=> d!1459267 (= lt!1790638 e!2888591)))

(declare-fun c!792621 () Bool)

(assert (=> d!1459267 (= c!792621 ((_ is Cons!51593) lt!1790030))))

(assert (=> d!1459267 (forall!10858 lt!1790030 lambda!193529)))

(assert (=> d!1459267 (= (extractMap!1582 lt!1790030) lt!1790638)))

(declare-fun b!4630567 () Bool)

(assert (=> b!4630567 (= e!2888591 (addToMapMapFromBucket!987 (_2!29570 (h!57661 lt!1790030)) (extractMap!1582 (t!358767 lt!1790030))))))

(declare-fun b!4630568 () Bool)

(assert (=> b!4630568 (= e!2888591 (ListMap!4322 Nil!51592))))

(assert (= (and d!1459267 c!792621) b!4630567))

(assert (= (and d!1459267 (not c!792621)) b!4630568))

(declare-fun m!5479357 () Bool)

(assert (=> d!1459267 m!5479357))

(declare-fun m!5479359 () Bool)

(assert (=> d!1459267 m!5479359))

(declare-fun m!5479361 () Bool)

(assert (=> b!4630567 m!5479361))

(assert (=> b!4630567 m!5479361))

(declare-fun m!5479363 () Bool)

(assert (=> b!4630567 m!5479363))

(assert (=> b!4630126 d!1459267))

(declare-fun bs!1027175 () Bool)

(declare-fun d!1459269 () Bool)

(assert (= bs!1027175 (and d!1459269 d!1459233)))

(declare-fun lambda!193530 () Int)

(assert (=> bs!1027175 (= lambda!193530 lambda!193516)))

(declare-fun bs!1027176 () Bool)

(assert (= bs!1027176 (and d!1459269 d!1459211)))

(assert (=> bs!1027176 (= lambda!193530 lambda!193507)))

(declare-fun bs!1027177 () Bool)

(assert (= bs!1027177 (and d!1459269 d!1459235)))

(assert (=> bs!1027177 (= lambda!193530 lambda!193519)))

(declare-fun bs!1027178 () Bool)

(assert (= bs!1027178 (and d!1459269 d!1459159)))

(assert (=> bs!1027178 (= lambda!193530 lambda!193494)))

(declare-fun bs!1027179 () Bool)

(assert (= bs!1027179 (and d!1459269 d!1459127)))

(assert (=> bs!1027179 (= lambda!193530 lambda!193482)))

(declare-fun bs!1027180 () Bool)

(assert (= bs!1027180 (and d!1459269 d!1459247)))

(assert (=> bs!1027180 (= lambda!193530 lambda!193524)))

(declare-fun bs!1027181 () Bool)

(assert (= bs!1027181 (and d!1459269 b!4630131)))

(assert (=> bs!1027181 (= lambda!193530 lambda!193384)))

(declare-fun bs!1027182 () Bool)

(assert (= bs!1027182 (and d!1459269 d!1459095)))

(assert (=> bs!1027182 (= lambda!193530 lambda!193478)))

(declare-fun bs!1027183 () Bool)

(assert (= bs!1027183 (and d!1459269 d!1459267)))

(assert (=> bs!1027183 (= lambda!193530 lambda!193529)))

(declare-fun lt!1790639 () ListMap!4321)

(assert (=> d!1459269 (invariantList!1222 (toList!5017 lt!1790639))))

(declare-fun e!2888592 () ListMap!4321)

(assert (=> d!1459269 (= lt!1790639 e!2888592)))

(declare-fun c!792622 () Bool)

(assert (=> d!1459269 (= c!792622 ((_ is Cons!51593) (Cons!51593 (tuple2!52553 hash!414 newBucket!224) Nil!51593)))))

(assert (=> d!1459269 (forall!10858 (Cons!51593 (tuple2!52553 hash!414 newBucket!224) Nil!51593) lambda!193530)))

(assert (=> d!1459269 (= (extractMap!1582 (Cons!51593 (tuple2!52553 hash!414 newBucket!224) Nil!51593)) lt!1790639)))

(declare-fun b!4630569 () Bool)

(assert (=> b!4630569 (= e!2888592 (addToMapMapFromBucket!987 (_2!29570 (h!57661 (Cons!51593 (tuple2!52553 hash!414 newBucket!224) Nil!51593))) (extractMap!1582 (t!358767 (Cons!51593 (tuple2!52553 hash!414 newBucket!224) Nil!51593)))))))

(declare-fun b!4630570 () Bool)

(assert (=> b!4630570 (= e!2888592 (ListMap!4322 Nil!51592))))

(assert (= (and d!1459269 c!792622) b!4630569))

(assert (= (and d!1459269 (not c!792622)) b!4630570))

(declare-fun m!5479365 () Bool)

(assert (=> d!1459269 m!5479365))

(declare-fun m!5479367 () Bool)

(assert (=> d!1459269 m!5479367))

(declare-fun m!5479369 () Bool)

(assert (=> b!4630569 m!5479369))

(assert (=> b!4630569 m!5479369))

(declare-fun m!5479371 () Bool)

(assert (=> b!4630569 m!5479371))

(assert (=> b!4630126 d!1459269))

(declare-fun d!1459271 () Bool)

(declare-fun res!1942673 () Bool)

(declare-fun e!2888593 () Bool)

(assert (=> d!1459271 (=> res!1942673 e!2888593)))

(assert (=> d!1459271 (= res!1942673 (not ((_ is Cons!51592) oldBucket!40)))))

(assert (=> d!1459271 (= (noDuplicateKeys!1526 oldBucket!40) e!2888593)))

(declare-fun b!4630571 () Bool)

(declare-fun e!2888594 () Bool)

(assert (=> b!4630571 (= e!2888593 e!2888594)))

(declare-fun res!1942674 () Bool)

(assert (=> b!4630571 (=> (not res!1942674) (not e!2888594))))

(assert (=> b!4630571 (= res!1942674 (not (containsKey!2502 (t!358766 oldBucket!40) (_1!29569 (h!57660 oldBucket!40)))))))

(declare-fun b!4630572 () Bool)

(assert (=> b!4630572 (= e!2888594 (noDuplicateKeys!1526 (t!358766 oldBucket!40)))))

(assert (= (and d!1459271 (not res!1942673)) b!4630571))

(assert (= (and b!4630571 res!1942674) b!4630572))

(declare-fun m!5479373 () Bool)

(assert (=> b!4630571 m!5479373))

(assert (=> b!4630572 m!5478789))

(assert (=> start!464588 d!1459271))

(declare-fun b!4630577 () Bool)

(declare-fun e!2888597 () Bool)

(declare-fun tp!1342306 () Bool)

(assert (=> b!4630577 (= e!2888597 (and tp_is_empty!29397 tp_is_empty!29399 tp!1342306))))

(assert (=> b!4630124 (= tp!1342299 e!2888597)))

(assert (= (and b!4630124 ((_ is Cons!51592) (t!358766 oldBucket!40))) b!4630577))

(declare-fun e!2888598 () Bool)

(declare-fun tp!1342307 () Bool)

(declare-fun b!4630578 () Bool)

(assert (=> b!4630578 (= e!2888598 (and tp_is_empty!29397 tp_is_empty!29399 tp!1342307))))

(assert (=> b!4630137 (= tp!1342298 e!2888598)))

(assert (= (and b!4630137 ((_ is Cons!51592) (t!358766 newBucket!224))) b!4630578))

(declare-fun b_lambda!170865 () Bool)

(assert (= b_lambda!170863 (or b!4630131 b_lambda!170865)))

(declare-fun bs!1027184 () Bool)

(declare-fun d!1459273 () Bool)

(assert (= bs!1027184 (and d!1459273 b!4630131)))

(assert (=> bs!1027184 (= (dynLambda!21515 lambda!193384 (h!57661 lt!1790030)) (noDuplicateKeys!1526 (_2!29570 (h!57661 lt!1790030))))))

(declare-fun m!5479375 () Bool)

(assert (=> bs!1027184 m!5479375))

(assert (=> b!4630523 d!1459273))

(declare-fun b_lambda!170867 () Bool)

(assert (= b_lambda!170857 (or b!4630131 b_lambda!170867)))

(declare-fun bs!1027185 () Bool)

(declare-fun d!1459275 () Bool)

(assert (= bs!1027185 (and d!1459275 b!4630131)))

(assert (=> bs!1027185 (= (dynLambda!21515 lambda!193384 lt!1790029) (noDuplicateKeys!1526 (_2!29570 lt!1790029)))))

(declare-fun m!5479377 () Bool)

(assert (=> bs!1027185 m!5479377))

(assert (=> d!1459163 d!1459275))

(check-sat (not d!1459231) (not d!1459163) (not b!4630542) (not d!1459095) (not d!1459133) (not bm!323092) (not d!1459235) (not b!4630374) (not b!4630531) (not b!4630538) (not d!1459029) (not d!1459253) (not b!4630404) tp_is_empty!29399 (not b!4630437) (not d!1459143) (not d!1459149) (not bs!1027185) (not d!1459237) (not b!4630577) (not b!4630377) (not b!4630479) (not b!4630563) (not d!1459173) (not d!1459035) (not b!4630411) (not d!1459245) (not d!1459151) (not bs!1027184) (not d!1459141) (not d!1459145) (not b!4630530) (not b!4630550) (not b_lambda!170865) (not bm!323075) (not b!4630415) (not bm!323086) (not b!4630448) (not b!4630391) (not b!4630509) (not b!4630546) (not b!4630547) (not b!4630559) (not b!4630565) (not d!1459217) (not b!4630478) (not d!1459179) (not b!4630536) (not d!1459191) (not b!4630578) (not d!1459223) (not b!4630480) (not b!4630267) (not b!4630271) (not d!1459219) (not b!4630510) (not b!4630378) (not bm!323090) (not b!4630537) (not d!1459255) (not b!4630428) (not b!4630157) (not b!4630381) (not bm!323079) (not d!1459247) (not bm!323094) (not b!4630373) (not b!4630545) (not b!4630528) (not b!4630407) (not bm!323088) (not b!4630384) (not bm!323074) (not d!1459155) (not b!4630560) (not b!4630408) (not b!4630569) (not b!4630572) (not b!4630571) (not d!1459227) (not d!1459027) (not b!4630557) (not b!4630268) (not b!4630518) (not b!4630532) (not b!4630390) (not d!1459153) (not b!4630406) (not b!4630567) (not b!4630553) (not bm!323085) (not b!4630512) (not d!1459211) (not b!4630484) (not d!1459261) tp_is_empty!29397 (not b!4630270) (not b!4630315) (not d!1459259) (not d!1459167) (not d!1459265) (not b!4630535) (not d!1459229) (not d!1459165) (not d!1459249) (not d!1459129) (not d!1459233) (not b!4630556) (not b!4630460) (not b!4630554) (not b_lambda!170867) (not b!4630511) (not b!4630555) (not b!4630539) (not d!1459239) (not d!1459243) (not b!4630525) (not b!4630375) (not b!4630566) (not b!4630562) (not b!4630498) (not d!1459269) (not bm!323096) (not d!1459263) (not d!1459201) (not bm!323089) (not b!4630533) (not d!1459251) (not bm!323095) (not b!4630541) (not d!1459225) (not d!1459257) (not bm!323084) (not bm!323091) (not b!4630551) (not d!1459147) (not b!4630527) (not b!4630564) (not b!4630380) (not d!1459209) (not b!4630482) (not b!4630405) (not b!4630500) (not d!1459157) (not d!1459267) (not b!4630517) (not b!4630524) (not bm!323087) (not b!4630548) (not d!1459113) (not bm!323093) (not b!4630526) (not bm!323076) (not d!1459159) (not d!1459127) (not b!4630544))
(check-sat)
