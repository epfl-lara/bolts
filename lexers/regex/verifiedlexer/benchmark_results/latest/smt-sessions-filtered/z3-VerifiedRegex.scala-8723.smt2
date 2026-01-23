; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!465812 () Bool)

(assert start!465812)

(declare-fun b!4635878 () Bool)

(declare-fun e!2891987 () Bool)

(declare-fun e!2891990 () Bool)

(assert (=> b!4635878 (= e!2891987 (not e!2891990))))

(declare-fun res!1945963 () Bool)

(assert (=> b!4635878 (=> res!1945963 e!2891990)))

(declare-datatypes ((K!13020 0))(
  ( (K!13021 (val!18687 Int)) )
))
(declare-datatypes ((V!13266 0))(
  ( (V!13267 (val!18688 Int)) )
))
(declare-datatypes ((tuple2!52638 0))(
  ( (tuple2!52639 (_1!29613 K!13020) (_2!29613 V!13266)) )
))
(declare-datatypes ((List!51780 0))(
  ( (Nil!51656) (Cons!51656 (h!57744 tuple2!52638) (t!358850 List!51780)) )
))
(declare-fun oldBucket!40 () List!51780)

(declare-fun key!4968 () K!13020)

(get-info :version)

(assert (=> b!4635878 (= res!1945963 (or (and ((_ is Cons!51656) oldBucket!40) (= (_1!29613 (h!57744 oldBucket!40)) key!4968)) (not ((_ is Cons!51656) oldBucket!40)) (= (_1!29613 (h!57744 oldBucket!40)) key!4968)))))

(declare-fun e!2891991 () Bool)

(assert (=> b!4635878 e!2891991))

(declare-fun res!1945971 () Bool)

(assert (=> b!4635878 (=> (not res!1945971) (not e!2891991))))

(declare-datatypes ((ListMap!4365 0))(
  ( (ListMap!4366 (toList!5061 List!51780)) )
))
(declare-fun lt!1798332 () ListMap!4365)

(declare-fun lt!1798348 () ListMap!4365)

(declare-fun addToMapMapFromBucket!1009 (List!51780 ListMap!4365) ListMap!4365)

(assert (=> b!4635878 (= res!1945971 (= lt!1798332 (addToMapMapFromBucket!1009 oldBucket!40 lt!1798348)))))

(declare-datatypes ((tuple2!52640 0))(
  ( (tuple2!52641 (_1!29614 (_ BitVec 64)) (_2!29614 List!51780)) )
))
(declare-datatypes ((List!51781 0))(
  ( (Nil!51657) (Cons!51657 (h!57745 tuple2!52640) (t!358851 List!51781)) )
))
(declare-fun extractMap!1604 (List!51781) ListMap!4365)

(assert (=> b!4635878 (= lt!1798348 (extractMap!1604 Nil!51657))))

(assert (=> b!4635878 true))

(declare-fun tp!1342510 () Bool)

(declare-fun tp_is_empty!29487 () Bool)

(declare-fun e!2891989 () Bool)

(declare-fun b!4635879 () Bool)

(declare-fun tp_is_empty!29485 () Bool)

(assert (=> b!4635879 (= e!2891989 (and tp_is_empty!29485 tp_is_empty!29487 tp!1342510))))

(declare-fun b!4635880 () Bool)

(declare-fun res!1945969 () Bool)

(declare-fun e!2891981 () Bool)

(assert (=> b!4635880 (=> res!1945969 e!2891981)))

(declare-fun lt!1798320 () ListMap!4365)

(declare-fun lt!1798340 () ListMap!4365)

(declare-fun eq!863 (ListMap!4365 ListMap!4365) Bool)

(declare-fun +!1914 (ListMap!4365 tuple2!52638) ListMap!4365)

(assert (=> b!4635880 (= res!1945969 (not (eq!863 lt!1798320 (+!1914 lt!1798340 (h!57744 oldBucket!40)))))))

(declare-fun b!4635881 () Bool)

(declare-fun res!1945964 () Bool)

(declare-fun e!2891994 () Bool)

(assert (=> b!4635881 (=> (not res!1945964) (not e!2891994))))

(declare-fun newBucket!224 () List!51780)

(declare-fun removePairForKey!1171 (List!51780 K!13020) List!51780)

(assert (=> b!4635881 (= res!1945964 (= (removePairForKey!1171 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4635882 () Bool)

(declare-fun e!2891993 () Bool)

(declare-fun lt!1798321 () List!51781)

(declare-fun lambda!194946 () Int)

(declare-fun forall!10898 (List!51781 Int) Bool)

(assert (=> b!4635882 (= e!2891993 (forall!10898 lt!1798321 lambda!194946))))

(declare-fun b!4635883 () Bool)

(declare-fun res!1945956 () Bool)

(assert (=> b!4635883 (=> (not res!1945956) (not e!2891994))))

(declare-datatypes ((Hashable!5945 0))(
  ( (HashableExt!5944 (__x!31648 Int)) )
))
(declare-fun hashF!1389 () Hashable!5945)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1402 (List!51780 (_ BitVec 64) Hashable!5945) Bool)

(assert (=> b!4635883 (= res!1945956 (allKeysSameHash!1402 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4635884 () Bool)

(declare-fun e!2891992 () Bool)

(declare-fun e!2891988 () Bool)

(assert (=> b!4635884 (= e!2891992 e!2891988)))

(declare-fun res!1945955 () Bool)

(assert (=> b!4635884 (=> res!1945955 e!2891988)))

(declare-fun lt!1798318 () ListMap!4365)

(declare-fun lt!1798344 () ListMap!4365)

(assert (=> b!4635884 (= res!1945955 (not (= lt!1798318 lt!1798344)))))

(declare-fun lt!1798328 () ListMap!4365)

(assert (=> b!4635884 (= lt!1798344 (+!1914 lt!1798328 (h!57744 oldBucket!40)))))

(declare-fun lt!1798329 () ListMap!4365)

(declare-fun -!588 (ListMap!4365 K!13020) ListMap!4365)

(assert (=> b!4635884 (= lt!1798318 (-!588 lt!1798329 key!4968))))

(declare-fun lt!1798317 () ListMap!4365)

(assert (=> b!4635884 (= lt!1798329 (+!1914 lt!1798317 (h!57744 oldBucket!40)))))

(declare-fun lt!1798324 () ListMap!4365)

(declare-fun lt!1798345 () ListMap!4365)

(assert (=> b!4635884 (= lt!1798324 lt!1798345)))

(assert (=> b!4635884 (= lt!1798345 (+!1914 lt!1798328 (h!57744 oldBucket!40)))))

(assert (=> b!4635884 (= lt!1798324 (-!588 (+!1914 lt!1798317 (h!57744 oldBucket!40)) key!4968))))

(declare-datatypes ((Unit!114375 0))(
  ( (Unit!114376) )
))
(declare-fun lt!1798337 () Unit!114375)

(declare-fun addRemoveCommutativeForDiffKeys!43 (ListMap!4365 K!13020 V!13266 K!13020) Unit!114375)

(assert (=> b!4635884 (= lt!1798337 (addRemoveCommutativeForDiffKeys!43 lt!1798317 (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40)) key!4968))))

(assert (=> b!4635884 (eq!863 lt!1798340 lt!1798328)))

(assert (=> b!4635884 (= lt!1798328 (-!588 lt!1798317 key!4968))))

(declare-fun lt!1798327 () List!51780)

(declare-fun lt!1798325 () Unit!114375)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!150 ((_ BitVec 64) List!51780 List!51780 K!13020 Hashable!5945) Unit!114375)

(assert (=> b!4635884 (= lt!1798325 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!150 hash!414 (t!358850 oldBucket!40) lt!1798327 key!4968 hashF!1389))))

(declare-fun res!1945972 () Bool)

(assert (=> start!465812 (=> (not res!1945972) (not e!2891994))))

(declare-fun noDuplicateKeys!1548 (List!51780) Bool)

(assert (=> start!465812 (= res!1945972 (noDuplicateKeys!1548 oldBucket!40))))

(assert (=> start!465812 e!2891994))

(assert (=> start!465812 true))

(declare-fun e!2891986 () Bool)

(assert (=> start!465812 e!2891986))

(assert (=> start!465812 tp_is_empty!29485))

(assert (=> start!465812 e!2891989))

(declare-fun b!4635885 () Bool)

(declare-fun res!1945959 () Bool)

(assert (=> b!4635885 (=> res!1945959 e!2891981)))

(declare-fun lt!1798342 () tuple2!52638)

(assert (=> b!4635885 (= res!1945959 (not (= lt!1798342 (h!57744 oldBucket!40))))))

(declare-fun b!4635886 () Bool)

(assert (=> b!4635886 (= e!2891988 e!2891981)))

(declare-fun res!1945954 () Bool)

(assert (=> b!4635886 (=> res!1945954 e!2891981)))

(declare-fun lt!1798323 () ListMap!4365)

(assert (=> b!4635886 (= res!1945954 (not (eq!863 lt!1798323 lt!1798344)))))

(assert (=> b!4635886 (eq!863 lt!1798318 lt!1798323)))

(assert (=> b!4635886 (= lt!1798323 (-!588 lt!1798332 key!4968))))

(declare-fun lt!1798319 () Unit!114375)

(declare-fun lemmaRemovePreservesEq!44 (ListMap!4365 ListMap!4365 K!13020) Unit!114375)

(assert (=> b!4635886 (= lt!1798319 (lemmaRemovePreservesEq!44 lt!1798329 lt!1798332 key!4968))))

(declare-fun b!4635887 () Bool)

(declare-fun e!2891982 () Bool)

(assert (=> b!4635887 (= e!2891982 e!2891987)))

(declare-fun res!1945965 () Bool)

(assert (=> b!4635887 (=> (not res!1945965) (not e!2891987))))

(declare-fun lt!1798334 () (_ BitVec 64))

(assert (=> b!4635887 (= res!1945965 (= lt!1798334 hash!414))))

(declare-fun hash!3616 (Hashable!5945 K!13020) (_ BitVec 64))

(assert (=> b!4635887 (= lt!1798334 (hash!3616 hashF!1389 key!4968))))

(declare-fun b!4635888 () Bool)

(declare-fun res!1945974 () Bool)

(assert (=> b!4635888 (=> res!1945974 e!2891993)))

(assert (=> b!4635888 (= res!1945974 (not (eq!863 lt!1798332 lt!1798329)))))

(declare-fun b!4635889 () Bool)

(declare-fun e!2891983 () Bool)

(assert (=> b!4635889 (= e!2891983 e!2891992)))

(declare-fun res!1945960 () Bool)

(assert (=> b!4635889 (=> res!1945960 e!2891992)))

(assert (=> b!4635889 (= res!1945960 (not (eq!863 lt!1798320 (+!1914 lt!1798340 lt!1798342))))))

(assert (=> b!4635889 (= lt!1798340 (extractMap!1604 (Cons!51657 (tuple2!52641 hash!414 lt!1798327) Nil!51657)))))

(assert (=> b!4635889 (= lt!1798320 (extractMap!1604 lt!1798321))))

(assert (=> b!4635889 (= lt!1798321 (Cons!51657 (tuple2!52641 hash!414 newBucket!224) Nil!51657))))

(declare-fun b!4635890 () Bool)

(declare-fun e!2891984 () Bool)

(assert (=> b!4635890 (= e!2891984 e!2891983)))

(declare-fun res!1945957 () Bool)

(assert (=> b!4635890 (=> res!1945957 e!2891983)))

(declare-fun lt!1798316 () List!51780)

(assert (=> b!4635890 (= res!1945957 (not (eq!863 lt!1798332 (+!1914 (extractMap!1604 (Cons!51657 (tuple2!52641 hash!414 lt!1798316) Nil!51657)) (h!57744 oldBucket!40)))))))

(assert (=> b!4635890 (eq!863 (addToMapMapFromBucket!1009 (Cons!51656 lt!1798342 lt!1798327) (ListMap!4366 Nil!51656)) (+!1914 (addToMapMapFromBucket!1009 lt!1798327 (ListMap!4366 Nil!51656)) lt!1798342))))

(declare-fun lt!1798330 () Unit!114375)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!114 (tuple2!52638 List!51780 ListMap!4365) Unit!114375)

(assert (=> b!4635890 (= lt!1798330 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!114 lt!1798342 lt!1798327 (ListMap!4366 Nil!51656)))))

(declare-fun head!9682 (List!51780) tuple2!52638)

(assert (=> b!4635890 (= lt!1798342 (head!9682 newBucket!224))))

(declare-fun lt!1798336 () tuple2!52638)

(assert (=> b!4635890 (eq!863 (addToMapMapFromBucket!1009 (Cons!51656 lt!1798336 lt!1798316) (ListMap!4366 Nil!51656)) (+!1914 (addToMapMapFromBucket!1009 lt!1798316 (ListMap!4366 Nil!51656)) lt!1798336))))

(declare-fun lt!1798333 () Unit!114375)

(assert (=> b!4635890 (= lt!1798333 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!114 lt!1798336 lt!1798316 (ListMap!4366 Nil!51656)))))

(assert (=> b!4635890 (= lt!1798336 (head!9682 oldBucket!40))))

(declare-fun contains!14779 (ListMap!4365 K!13020) Bool)

(assert (=> b!4635890 (contains!14779 lt!1798317 key!4968)))

(declare-fun lt!1798331 () List!51781)

(assert (=> b!4635890 (= lt!1798317 (extractMap!1604 lt!1798331))))

(declare-fun lt!1798346 () Unit!114375)

(declare-datatypes ((ListLongMap!3651 0))(
  ( (ListLongMap!3652 (toList!5062 List!51781)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!366 (ListLongMap!3651 K!13020 Hashable!5945) Unit!114375)

(assert (=> b!4635890 (= lt!1798346 (lemmaListContainsThenExtractedMapContains!366 (ListLongMap!3652 lt!1798331) key!4968 hashF!1389))))

(assert (=> b!4635890 (= lt!1798331 (Cons!51657 (tuple2!52641 hash!414 (t!358850 oldBucket!40)) Nil!51657))))

(declare-fun b!4635891 () Bool)

(assert (=> b!4635891 (= e!2891991 (= lt!1798348 (ListMap!4366 Nil!51656)))))

(declare-fun b!4635892 () Bool)

(assert (=> b!4635892 (= e!2891981 e!2891993)))

(declare-fun res!1945962 () Bool)

(assert (=> b!4635892 (=> res!1945962 e!2891993)))

(assert (=> b!4635892 (= res!1945962 (not (eq!863 lt!1798320 lt!1798344)))))

(assert (=> b!4635892 (eq!863 lt!1798345 (+!1914 lt!1798340 (h!57744 oldBucket!40)))))

(declare-fun lt!1798347 () Unit!114375)

(declare-fun lemmaAddToEqMapsPreservesEq!60 (ListMap!4365 ListMap!4365 K!13020 V!13266) Unit!114375)

(assert (=> b!4635892 (= lt!1798347 (lemmaAddToEqMapsPreservesEq!60 lt!1798328 lt!1798340 (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40))))))

(declare-fun b!4635893 () Bool)

(declare-fun tp!1342511 () Bool)

(assert (=> b!4635893 (= e!2891986 (and tp_is_empty!29485 tp_is_empty!29487 tp!1342511))))

(declare-fun b!4635894 () Bool)

(assert (=> b!4635894 (= e!2891994 e!2891982)))

(declare-fun res!1945966 () Bool)

(assert (=> b!4635894 (=> (not res!1945966) (not e!2891982))))

(assert (=> b!4635894 (= res!1945966 (contains!14779 lt!1798332 key!4968))))

(declare-fun lt!1798335 () List!51781)

(assert (=> b!4635894 (= lt!1798332 (extractMap!1604 lt!1798335))))

(assert (=> b!4635894 (= lt!1798335 (Cons!51657 (tuple2!52641 hash!414 oldBucket!40) Nil!51657))))

(declare-fun b!4635895 () Bool)

(declare-fun res!1945961 () Bool)

(assert (=> b!4635895 (=> (not res!1945961) (not e!2891994))))

(assert (=> b!4635895 (= res!1945961 (noDuplicateKeys!1548 newBucket!224))))

(declare-fun b!4635896 () Bool)

(declare-fun res!1945958 () Bool)

(assert (=> b!4635896 (=> res!1945958 e!2891984)))

(assert (=> b!4635896 (= res!1945958 (not (= (removePairForKey!1171 (t!358850 oldBucket!40) key!4968) lt!1798327)))))

(declare-fun b!4635897 () Bool)

(declare-fun res!1945968 () Bool)

(assert (=> b!4635897 (=> res!1945968 e!2891993)))

(assert (=> b!4635897 (= res!1945968 (not (eq!863 lt!1798320 lt!1798323)))))

(declare-fun b!4635898 () Bool)

(declare-fun e!2891985 () Bool)

(assert (=> b!4635898 (= e!2891990 e!2891985)))

(declare-fun res!1945970 () Bool)

(assert (=> b!4635898 (=> res!1945970 e!2891985)))

(declare-fun containsKey!2564 (List!51780 K!13020) Bool)

(assert (=> b!4635898 (= res!1945970 (not (containsKey!2564 (t!358850 oldBucket!40) key!4968)))))

(assert (=> b!4635898 (containsKey!2564 oldBucket!40 key!4968)))

(declare-fun lt!1798322 () Unit!114375)

(declare-fun lemmaGetPairDefinedThenContainsKey!94 (List!51780 K!13020 Hashable!5945) Unit!114375)

(assert (=> b!4635898 (= lt!1798322 (lemmaGetPairDefinedThenContainsKey!94 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1798339 () List!51780)

(declare-datatypes ((Option!11706 0))(
  ( (None!11705) (Some!11705 (v!45907 tuple2!52638)) )
))
(declare-fun isDefined!8971 (Option!11706) Bool)

(declare-fun getPair!340 (List!51780 K!13020) Option!11706)

(assert (=> b!4635898 (isDefined!8971 (getPair!340 lt!1798339 key!4968))))

(declare-fun lt!1798326 () Unit!114375)

(declare-fun lt!1798349 () tuple2!52640)

(declare-fun forallContained!3130 (List!51781 Int tuple2!52640) Unit!114375)

(assert (=> b!4635898 (= lt!1798326 (forallContained!3130 lt!1798335 lambda!194946 lt!1798349))))

(declare-fun contains!14780 (List!51781 tuple2!52640) Bool)

(assert (=> b!4635898 (contains!14780 lt!1798335 lt!1798349)))

(assert (=> b!4635898 (= lt!1798349 (tuple2!52641 lt!1798334 lt!1798339))))

(declare-fun lt!1798341 () ListLongMap!3651)

(declare-fun lt!1798315 () Unit!114375)

(declare-fun lemmaGetValueImpliesTupleContained!145 (ListLongMap!3651 (_ BitVec 64) List!51780) Unit!114375)

(assert (=> b!4635898 (= lt!1798315 (lemmaGetValueImpliesTupleContained!145 lt!1798341 lt!1798334 lt!1798339))))

(declare-fun apply!12213 (ListLongMap!3651 (_ BitVec 64)) List!51780)

(assert (=> b!4635898 (= lt!1798339 (apply!12213 lt!1798341 lt!1798334))))

(declare-fun contains!14781 (ListLongMap!3651 (_ BitVec 64)) Bool)

(assert (=> b!4635898 (contains!14781 lt!1798341 lt!1798334)))

(declare-fun lt!1798338 () Unit!114375)

(declare-fun lemmaInGenMapThenLongMapContainsHash!546 (ListLongMap!3651 K!13020 Hashable!5945) Unit!114375)

(assert (=> b!4635898 (= lt!1798338 (lemmaInGenMapThenLongMapContainsHash!546 lt!1798341 key!4968 hashF!1389))))

(declare-fun lt!1798343 () Unit!114375)

(declare-fun lemmaInGenMapThenGetPairDefined!136 (ListLongMap!3651 K!13020 Hashable!5945) Unit!114375)

(assert (=> b!4635898 (= lt!1798343 (lemmaInGenMapThenGetPairDefined!136 lt!1798341 key!4968 hashF!1389))))

(assert (=> b!4635898 (= lt!1798341 (ListLongMap!3652 lt!1798335))))

(declare-fun b!4635899 () Bool)

(declare-fun res!1945973 () Bool)

(assert (=> b!4635899 (=> (not res!1945973) (not e!2891987))))

(assert (=> b!4635899 (= res!1945973 (allKeysSameHash!1402 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4635900 () Bool)

(assert (=> b!4635900 (= e!2891985 e!2891984)))

(declare-fun res!1945967 () Bool)

(assert (=> b!4635900 (=> res!1945967 e!2891984)))

(assert (=> b!4635900 (= res!1945967 (not (= (removePairForKey!1171 lt!1798316 key!4968) lt!1798327)))))

(declare-fun tail!8183 (List!51780) List!51780)

(assert (=> b!4635900 (= lt!1798327 (tail!8183 newBucket!224))))

(assert (=> b!4635900 (= lt!1798316 (tail!8183 oldBucket!40))))

(assert (= (and start!465812 res!1945972) b!4635895))

(assert (= (and b!4635895 res!1945961) b!4635881))

(assert (= (and b!4635881 res!1945964) b!4635883))

(assert (= (and b!4635883 res!1945956) b!4635894))

(assert (= (and b!4635894 res!1945966) b!4635887))

(assert (= (and b!4635887 res!1945965) b!4635899))

(assert (= (and b!4635899 res!1945973) b!4635878))

(assert (= (and b!4635878 res!1945971) b!4635891))

(assert (= (and b!4635878 (not res!1945963)) b!4635898))

(assert (= (and b!4635898 (not res!1945970)) b!4635900))

(assert (= (and b!4635900 (not res!1945967)) b!4635896))

(assert (= (and b!4635896 (not res!1945958)) b!4635890))

(assert (= (and b!4635890 (not res!1945957)) b!4635889))

(assert (= (and b!4635889 (not res!1945960)) b!4635884))

(assert (= (and b!4635884 (not res!1945955)) b!4635886))

(assert (= (and b!4635886 (not res!1945954)) b!4635885))

(assert (= (and b!4635885 (not res!1945959)) b!4635880))

(assert (= (and b!4635880 (not res!1945969)) b!4635892))

(assert (= (and b!4635892 (not res!1945962)) b!4635888))

(assert (= (and b!4635888 (not res!1945974)) b!4635897))

(assert (= (and b!4635897 (not res!1945968)) b!4635882))

(assert (= (and start!465812 ((_ is Cons!51656) oldBucket!40)) b!4635893))

(assert (= (and start!465812 ((_ is Cons!51656) newBucket!224)) b!4635879))

(declare-fun m!5492275 () Bool)

(assert (=> b!4635888 m!5492275))

(declare-fun m!5492277 () Bool)

(assert (=> b!4635890 m!5492277))

(declare-fun m!5492279 () Bool)

(assert (=> b!4635890 m!5492279))

(declare-fun m!5492281 () Bool)

(assert (=> b!4635890 m!5492281))

(declare-fun m!5492283 () Bool)

(assert (=> b!4635890 m!5492283))

(declare-fun m!5492285 () Bool)

(assert (=> b!4635890 m!5492285))

(declare-fun m!5492287 () Bool)

(assert (=> b!4635890 m!5492287))

(declare-fun m!5492289 () Bool)

(assert (=> b!4635890 m!5492289))

(declare-fun m!5492291 () Bool)

(assert (=> b!4635890 m!5492291))

(declare-fun m!5492293 () Bool)

(assert (=> b!4635890 m!5492293))

(declare-fun m!5492295 () Bool)

(assert (=> b!4635890 m!5492295))

(declare-fun m!5492297 () Bool)

(assert (=> b!4635890 m!5492297))

(declare-fun m!5492299 () Bool)

(assert (=> b!4635890 m!5492299))

(assert (=> b!4635890 m!5492297))

(declare-fun m!5492301 () Bool)

(assert (=> b!4635890 m!5492301))

(assert (=> b!4635890 m!5492285))

(assert (=> b!4635890 m!5492301))

(assert (=> b!4635890 m!5492277))

(declare-fun m!5492303 () Bool)

(assert (=> b!4635890 m!5492303))

(assert (=> b!4635890 m!5492291))

(assert (=> b!4635890 m!5492299))

(declare-fun m!5492305 () Bool)

(assert (=> b!4635890 m!5492305))

(declare-fun m!5492307 () Bool)

(assert (=> b!4635890 m!5492307))

(assert (=> b!4635890 m!5492289))

(assert (=> b!4635890 m!5492279))

(declare-fun m!5492309 () Bool)

(assert (=> b!4635890 m!5492309))

(declare-fun m!5492311 () Bool)

(assert (=> b!4635890 m!5492311))

(declare-fun m!5492313 () Bool)

(assert (=> b!4635883 m!5492313))

(declare-fun m!5492315 () Bool)

(assert (=> b!4635898 m!5492315))

(declare-fun m!5492317 () Bool)

(assert (=> b!4635898 m!5492317))

(declare-fun m!5492319 () Bool)

(assert (=> b!4635898 m!5492319))

(declare-fun m!5492321 () Bool)

(assert (=> b!4635898 m!5492321))

(declare-fun m!5492323 () Bool)

(assert (=> b!4635898 m!5492323))

(declare-fun m!5492325 () Bool)

(assert (=> b!4635898 m!5492325))

(declare-fun m!5492327 () Bool)

(assert (=> b!4635898 m!5492327))

(declare-fun m!5492329 () Bool)

(assert (=> b!4635898 m!5492329))

(declare-fun m!5492331 () Bool)

(assert (=> b!4635898 m!5492331))

(declare-fun m!5492333 () Bool)

(assert (=> b!4635898 m!5492333))

(assert (=> b!4635898 m!5492327))

(declare-fun m!5492335 () Bool)

(assert (=> b!4635898 m!5492335))

(declare-fun m!5492337 () Bool)

(assert (=> b!4635898 m!5492337))

(declare-fun m!5492339 () Bool)

(assert (=> b!4635894 m!5492339))

(declare-fun m!5492341 () Bool)

(assert (=> b!4635894 m!5492341))

(declare-fun m!5492343 () Bool)

(assert (=> b!4635896 m!5492343))

(declare-fun m!5492345 () Bool)

(assert (=> start!465812 m!5492345))

(declare-fun m!5492347 () Bool)

(assert (=> b!4635884 m!5492347))

(declare-fun m!5492349 () Bool)

(assert (=> b!4635884 m!5492349))

(declare-fun m!5492351 () Bool)

(assert (=> b!4635884 m!5492351))

(declare-fun m!5492353 () Bool)

(assert (=> b!4635884 m!5492353))

(declare-fun m!5492355 () Bool)

(assert (=> b!4635884 m!5492355))

(declare-fun m!5492357 () Bool)

(assert (=> b!4635884 m!5492357))

(declare-fun m!5492359 () Bool)

(assert (=> b!4635884 m!5492359))

(declare-fun m!5492361 () Bool)

(assert (=> b!4635884 m!5492361))

(assert (=> b!4635884 m!5492351))

(declare-fun m!5492363 () Bool)

(assert (=> b!4635889 m!5492363))

(assert (=> b!4635889 m!5492363))

(declare-fun m!5492365 () Bool)

(assert (=> b!4635889 m!5492365))

(declare-fun m!5492367 () Bool)

(assert (=> b!4635889 m!5492367))

(declare-fun m!5492369 () Bool)

(assert (=> b!4635889 m!5492369))

(declare-fun m!5492371 () Bool)

(assert (=> b!4635899 m!5492371))

(declare-fun m!5492373 () Bool)

(assert (=> b!4635880 m!5492373))

(assert (=> b!4635880 m!5492373))

(declare-fun m!5492375 () Bool)

(assert (=> b!4635880 m!5492375))

(declare-fun m!5492377 () Bool)

(assert (=> b!4635900 m!5492377))

(declare-fun m!5492379 () Bool)

(assert (=> b!4635900 m!5492379))

(declare-fun m!5492381 () Bool)

(assert (=> b!4635900 m!5492381))

(declare-fun m!5492383 () Bool)

(assert (=> b!4635897 m!5492383))

(declare-fun m!5492385 () Bool)

(assert (=> b!4635887 m!5492385))

(declare-fun m!5492387 () Bool)

(assert (=> b!4635892 m!5492387))

(assert (=> b!4635892 m!5492373))

(assert (=> b!4635892 m!5492373))

(declare-fun m!5492389 () Bool)

(assert (=> b!4635892 m!5492389))

(declare-fun m!5492391 () Bool)

(assert (=> b!4635892 m!5492391))

(declare-fun m!5492393 () Bool)

(assert (=> b!4635881 m!5492393))

(declare-fun m!5492395 () Bool)

(assert (=> b!4635886 m!5492395))

(declare-fun m!5492397 () Bool)

(assert (=> b!4635886 m!5492397))

(declare-fun m!5492399 () Bool)

(assert (=> b!4635886 m!5492399))

(declare-fun m!5492401 () Bool)

(assert (=> b!4635886 m!5492401))

(declare-fun m!5492403 () Bool)

(assert (=> b!4635882 m!5492403))

(declare-fun m!5492405 () Bool)

(assert (=> b!4635895 m!5492405))

(declare-fun m!5492407 () Bool)

(assert (=> b!4635878 m!5492407))

(declare-fun m!5492409 () Bool)

(assert (=> b!4635878 m!5492409))

(check-sat (not start!465812) (not b!4635894) tp_is_empty!29487 (not b!4635880) (not b!4635884) (not b!4635896) (not b!4635897) (not b!4635886) (not b!4635878) (not b!4635881) (not b!4635900) (not b!4635882) (not b!4635890) (not b!4635888) (not b!4635887) (not b!4635893) (not b!4635883) (not b!4635895) (not b!4635879) (not b!4635898) (not b!4635889) (not b!4635899) tp_is_empty!29485 (not b!4635892))
(check-sat)
(get-model)

(declare-fun d!1461692 () Bool)

(declare-fun hash!3619 (Hashable!5945 K!13020) (_ BitVec 64))

(assert (=> d!1461692 (= (hash!3616 hashF!1389 key!4968) (hash!3619 hashF!1389 key!4968))))

(declare-fun bs!1030932 () Bool)

(assert (= bs!1030932 d!1461692))

(declare-fun m!5492411 () Bool)

(assert (=> bs!1030932 m!5492411))

(assert (=> b!4635887 d!1461692))

(declare-fun d!1461694 () Bool)

(declare-fun isEmpty!28968 (Option!11706) Bool)

(assert (=> d!1461694 (= (isDefined!8971 (getPair!340 lt!1798339 key!4968)) (not (isEmpty!28968 (getPair!340 lt!1798339 key!4968))))))

(declare-fun bs!1030933 () Bool)

(assert (= bs!1030933 d!1461694))

(assert (=> bs!1030933 m!5492327))

(declare-fun m!5492413 () Bool)

(assert (=> bs!1030933 m!5492413))

(assert (=> b!4635898 d!1461694))

(declare-fun b!4635917 () Bool)

(declare-fun e!2892005 () Option!11706)

(assert (=> b!4635917 (= e!2892005 None!11705)))

(declare-fun b!4635918 () Bool)

(assert (=> b!4635918 (= e!2892005 (getPair!340 (t!358850 lt!1798339) key!4968))))

(declare-fun b!4635919 () Bool)

(declare-fun e!2892009 () Option!11706)

(assert (=> b!4635919 (= e!2892009 e!2892005)))

(declare-fun c!793455 () Bool)

(assert (=> b!4635919 (= c!793455 ((_ is Cons!51656) lt!1798339))))

(declare-fun d!1461696 () Bool)

(declare-fun e!2892008 () Bool)

(assert (=> d!1461696 e!2892008))

(declare-fun res!1945985 () Bool)

(assert (=> d!1461696 (=> res!1945985 e!2892008)))

(declare-fun e!2892007 () Bool)

(assert (=> d!1461696 (= res!1945985 e!2892007)))

(declare-fun res!1945984 () Bool)

(assert (=> d!1461696 (=> (not res!1945984) (not e!2892007))))

(declare-fun lt!1798352 () Option!11706)

(assert (=> d!1461696 (= res!1945984 (isEmpty!28968 lt!1798352))))

(assert (=> d!1461696 (= lt!1798352 e!2892009)))

(declare-fun c!793456 () Bool)

(assert (=> d!1461696 (= c!793456 (and ((_ is Cons!51656) lt!1798339) (= (_1!29613 (h!57744 lt!1798339)) key!4968)))))

(assert (=> d!1461696 (noDuplicateKeys!1548 lt!1798339)))

(assert (=> d!1461696 (= (getPair!340 lt!1798339 key!4968) lt!1798352)))

(declare-fun b!4635920 () Bool)

(assert (=> b!4635920 (= e!2892007 (not (containsKey!2564 lt!1798339 key!4968)))))

(declare-fun b!4635921 () Bool)

(assert (=> b!4635921 (= e!2892009 (Some!11705 (h!57744 lt!1798339)))))

(declare-fun b!4635922 () Bool)

(declare-fun e!2892006 () Bool)

(assert (=> b!4635922 (= e!2892008 e!2892006)))

(declare-fun res!1945983 () Bool)

(assert (=> b!4635922 (=> (not res!1945983) (not e!2892006))))

(assert (=> b!4635922 (= res!1945983 (isDefined!8971 lt!1798352))))

(declare-fun b!4635923 () Bool)

(declare-fun res!1945986 () Bool)

(assert (=> b!4635923 (=> (not res!1945986) (not e!2892006))))

(declare-fun get!17173 (Option!11706) tuple2!52638)

(assert (=> b!4635923 (= res!1945986 (= (_1!29613 (get!17173 lt!1798352)) key!4968))))

(declare-fun b!4635924 () Bool)

(declare-fun contains!14783 (List!51780 tuple2!52638) Bool)

(assert (=> b!4635924 (= e!2892006 (contains!14783 lt!1798339 (get!17173 lt!1798352)))))

(assert (= (and d!1461696 c!793456) b!4635921))

(assert (= (and d!1461696 (not c!793456)) b!4635919))

(assert (= (and b!4635919 c!793455) b!4635918))

(assert (= (and b!4635919 (not c!793455)) b!4635917))

(assert (= (and d!1461696 res!1945984) b!4635920))

(assert (= (and d!1461696 (not res!1945985)) b!4635922))

(assert (= (and b!4635922 res!1945983) b!4635923))

(assert (= (and b!4635923 res!1945986) b!4635924))

(declare-fun m!5492415 () Bool)

(assert (=> d!1461696 m!5492415))

(declare-fun m!5492417 () Bool)

(assert (=> d!1461696 m!5492417))

(declare-fun m!5492419 () Bool)

(assert (=> b!4635924 m!5492419))

(assert (=> b!4635924 m!5492419))

(declare-fun m!5492421 () Bool)

(assert (=> b!4635924 m!5492421))

(assert (=> b!4635923 m!5492419))

(declare-fun m!5492423 () Bool)

(assert (=> b!4635920 m!5492423))

(declare-fun m!5492425 () Bool)

(assert (=> b!4635922 m!5492425))

(declare-fun m!5492427 () Bool)

(assert (=> b!4635918 m!5492427))

(assert (=> b!4635898 d!1461696))

(declare-fun d!1461698 () Bool)

(declare-fun res!1945991 () Bool)

(declare-fun e!2892014 () Bool)

(assert (=> d!1461698 (=> res!1945991 e!2892014)))

(assert (=> d!1461698 (= res!1945991 (and ((_ is Cons!51656) (t!358850 oldBucket!40)) (= (_1!29613 (h!57744 (t!358850 oldBucket!40))) key!4968)))))

(assert (=> d!1461698 (= (containsKey!2564 (t!358850 oldBucket!40) key!4968) e!2892014)))

(declare-fun b!4635929 () Bool)

(declare-fun e!2892015 () Bool)

(assert (=> b!4635929 (= e!2892014 e!2892015)))

(declare-fun res!1945992 () Bool)

(assert (=> b!4635929 (=> (not res!1945992) (not e!2892015))))

(assert (=> b!4635929 (= res!1945992 ((_ is Cons!51656) (t!358850 oldBucket!40)))))

(declare-fun b!4635930 () Bool)

(assert (=> b!4635930 (= e!2892015 (containsKey!2564 (t!358850 (t!358850 oldBucket!40)) key!4968))))

(assert (= (and d!1461698 (not res!1945991)) b!4635929))

(assert (= (and b!4635929 res!1945992) b!4635930))

(declare-fun m!5492429 () Bool)

(assert (=> b!4635930 m!5492429))

(assert (=> b!4635898 d!1461698))

(declare-fun d!1461700 () Bool)

(declare-fun lt!1798355 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8911 (List!51781) (InoxSet tuple2!52640))

(assert (=> d!1461700 (= lt!1798355 (select (content!8911 lt!1798335) lt!1798349))))

(declare-fun e!2892020 () Bool)

(assert (=> d!1461700 (= lt!1798355 e!2892020)))

(declare-fun res!1945998 () Bool)

(assert (=> d!1461700 (=> (not res!1945998) (not e!2892020))))

(assert (=> d!1461700 (= res!1945998 ((_ is Cons!51657) lt!1798335))))

(assert (=> d!1461700 (= (contains!14780 lt!1798335 lt!1798349) lt!1798355)))

(declare-fun b!4635935 () Bool)

(declare-fun e!2892021 () Bool)

(assert (=> b!4635935 (= e!2892020 e!2892021)))

(declare-fun res!1945997 () Bool)

(assert (=> b!4635935 (=> res!1945997 e!2892021)))

(assert (=> b!4635935 (= res!1945997 (= (h!57745 lt!1798335) lt!1798349))))

(declare-fun b!4635936 () Bool)

(assert (=> b!4635936 (= e!2892021 (contains!14780 (t!358851 lt!1798335) lt!1798349))))

(assert (= (and d!1461700 res!1945998) b!4635935))

(assert (= (and b!4635935 (not res!1945997)) b!4635936))

(declare-fun m!5492431 () Bool)

(assert (=> d!1461700 m!5492431))

(declare-fun m!5492433 () Bool)

(assert (=> d!1461700 m!5492433))

(declare-fun m!5492435 () Bool)

(assert (=> b!4635936 m!5492435))

(assert (=> b!4635898 d!1461700))

(declare-fun d!1461702 () Bool)

(declare-fun res!1945999 () Bool)

(declare-fun e!2892022 () Bool)

(assert (=> d!1461702 (=> res!1945999 e!2892022)))

(assert (=> d!1461702 (= res!1945999 (and ((_ is Cons!51656) oldBucket!40) (= (_1!29613 (h!57744 oldBucket!40)) key!4968)))))

(assert (=> d!1461702 (= (containsKey!2564 oldBucket!40 key!4968) e!2892022)))

(declare-fun b!4635937 () Bool)

(declare-fun e!2892023 () Bool)

(assert (=> b!4635937 (= e!2892022 e!2892023)))

(declare-fun res!1946000 () Bool)

(assert (=> b!4635937 (=> (not res!1946000) (not e!2892023))))

(assert (=> b!4635937 (= res!1946000 ((_ is Cons!51656) oldBucket!40))))

(declare-fun b!4635938 () Bool)

(assert (=> b!4635938 (= e!2892023 (containsKey!2564 (t!358850 oldBucket!40) key!4968))))

(assert (= (and d!1461702 (not res!1945999)) b!4635937))

(assert (= (and b!4635937 res!1946000) b!4635938))

(assert (=> b!4635938 m!5492331))

(assert (=> b!4635898 d!1461702))

(declare-fun d!1461704 () Bool)

(declare-fun e!2892028 () Bool)

(assert (=> d!1461704 e!2892028))

(declare-fun res!1946003 () Bool)

(assert (=> d!1461704 (=> res!1946003 e!2892028)))

(declare-fun lt!1798364 () Bool)

(assert (=> d!1461704 (= res!1946003 (not lt!1798364))))

(declare-fun lt!1798365 () Bool)

(assert (=> d!1461704 (= lt!1798364 lt!1798365)))

(declare-fun lt!1798366 () Unit!114375)

(declare-fun e!2892029 () Unit!114375)

(assert (=> d!1461704 (= lt!1798366 e!2892029)))

(declare-fun c!793459 () Bool)

(assert (=> d!1461704 (= c!793459 lt!1798365)))

(declare-fun containsKey!2566 (List!51781 (_ BitVec 64)) Bool)

(assert (=> d!1461704 (= lt!1798365 (containsKey!2566 (toList!5062 lt!1798341) lt!1798334))))

(assert (=> d!1461704 (= (contains!14781 lt!1798341 lt!1798334) lt!1798364)))

(declare-fun b!4635945 () Bool)

(declare-fun lt!1798367 () Unit!114375)

(assert (=> b!4635945 (= e!2892029 lt!1798367)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1428 (List!51781 (_ BitVec 64)) Unit!114375)

(assert (=> b!4635945 (= lt!1798367 (lemmaContainsKeyImpliesGetValueByKeyDefined!1428 (toList!5062 lt!1798341) lt!1798334))))

(declare-datatypes ((Option!11709 0))(
  ( (None!11708) (Some!11708 (v!45914 List!51780)) )
))
(declare-fun isDefined!8973 (Option!11709) Bool)

(declare-fun getValueByKey!1527 (List!51781 (_ BitVec 64)) Option!11709)

(assert (=> b!4635945 (isDefined!8973 (getValueByKey!1527 (toList!5062 lt!1798341) lt!1798334))))

(declare-fun b!4635946 () Bool)

(declare-fun Unit!114378 () Unit!114375)

(assert (=> b!4635946 (= e!2892029 Unit!114378)))

(declare-fun b!4635947 () Bool)

(assert (=> b!4635947 (= e!2892028 (isDefined!8973 (getValueByKey!1527 (toList!5062 lt!1798341) lt!1798334)))))

(assert (= (and d!1461704 c!793459) b!4635945))

(assert (= (and d!1461704 (not c!793459)) b!4635946))

(assert (= (and d!1461704 (not res!1946003)) b!4635947))

(declare-fun m!5492443 () Bool)

(assert (=> d!1461704 m!5492443))

(declare-fun m!5492445 () Bool)

(assert (=> b!4635945 m!5492445))

(declare-fun m!5492447 () Bool)

(assert (=> b!4635945 m!5492447))

(assert (=> b!4635945 m!5492447))

(declare-fun m!5492449 () Bool)

(assert (=> b!4635945 m!5492449))

(assert (=> b!4635947 m!5492447))

(assert (=> b!4635947 m!5492447))

(assert (=> b!4635947 m!5492449))

(assert (=> b!4635898 d!1461704))

(declare-fun d!1461712 () Bool)

(declare-fun get!17175 (Option!11709) List!51780)

(assert (=> d!1461712 (= (apply!12213 lt!1798341 lt!1798334) (get!17175 (getValueByKey!1527 (toList!5062 lt!1798341) lt!1798334)))))

(declare-fun bs!1030936 () Bool)

(assert (= bs!1030936 d!1461712))

(assert (=> bs!1030936 m!5492447))

(assert (=> bs!1030936 m!5492447))

(declare-fun m!5492451 () Bool)

(assert (=> bs!1030936 m!5492451))

(assert (=> b!4635898 d!1461712))

(declare-fun bs!1030947 () Bool)

(declare-fun d!1461714 () Bool)

(assert (= bs!1030947 (and d!1461714 b!4635898)))

(declare-fun lambda!194957 () Int)

(assert (=> bs!1030947 (= lambda!194957 lambda!194946)))

(declare-fun b!4636003 () Bool)

(declare-fun e!2892067 () Bool)

(assert (=> b!4636003 (= e!2892067 (isDefined!8971 (getPair!340 (apply!12213 lt!1798341 (hash!3616 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1798443 () Unit!114375)

(assert (=> b!4636003 (= lt!1798443 (forallContained!3130 (toList!5062 lt!1798341) lambda!194957 (tuple2!52641 (hash!3616 hashF!1389 key!4968) (apply!12213 lt!1798341 (hash!3616 hashF!1389 key!4968)))))))

(declare-fun lt!1798446 () Unit!114375)

(declare-fun lt!1798444 () Unit!114375)

(assert (=> b!4636003 (= lt!1798446 lt!1798444)))

(declare-fun lt!1798441 () (_ BitVec 64))

(declare-fun lt!1798442 () List!51780)

(assert (=> b!4636003 (contains!14780 (toList!5062 lt!1798341) (tuple2!52641 lt!1798441 lt!1798442))))

(assert (=> b!4636003 (= lt!1798444 (lemmaGetValueImpliesTupleContained!145 lt!1798341 lt!1798441 lt!1798442))))

(declare-fun e!2892066 () Bool)

(assert (=> b!4636003 e!2892066))

(declare-fun res!1946043 () Bool)

(assert (=> b!4636003 (=> (not res!1946043) (not e!2892066))))

(assert (=> b!4636003 (= res!1946043 (contains!14781 lt!1798341 lt!1798441))))

(assert (=> b!4636003 (= lt!1798442 (apply!12213 lt!1798341 (hash!3616 hashF!1389 key!4968)))))

(assert (=> b!4636003 (= lt!1798441 (hash!3616 hashF!1389 key!4968))))

(declare-fun lt!1798445 () Unit!114375)

(declare-fun lt!1798440 () Unit!114375)

(assert (=> b!4636003 (= lt!1798445 lt!1798440)))

(assert (=> b!4636003 (contains!14781 lt!1798341 (hash!3616 hashF!1389 key!4968))))

(assert (=> b!4636003 (= lt!1798440 (lemmaInGenMapThenLongMapContainsHash!546 lt!1798341 key!4968 hashF!1389))))

(declare-fun b!4636002 () Bool)

(declare-fun res!1946042 () Bool)

(assert (=> b!4636002 (=> (not res!1946042) (not e!2892067))))

(assert (=> b!4636002 (= res!1946042 (contains!14779 (extractMap!1604 (toList!5062 lt!1798341)) key!4968))))

(assert (=> d!1461714 e!2892067))

(declare-fun res!1946045 () Bool)

(assert (=> d!1461714 (=> (not res!1946045) (not e!2892067))))

(assert (=> d!1461714 (= res!1946045 (forall!10898 (toList!5062 lt!1798341) lambda!194957))))

(declare-fun lt!1798447 () Unit!114375)

(declare-fun choose!31684 (ListLongMap!3651 K!13020 Hashable!5945) Unit!114375)

(assert (=> d!1461714 (= lt!1798447 (choose!31684 lt!1798341 key!4968 hashF!1389))))

(assert (=> d!1461714 (forall!10898 (toList!5062 lt!1798341) lambda!194957)))

(assert (=> d!1461714 (= (lemmaInGenMapThenGetPairDefined!136 lt!1798341 key!4968 hashF!1389) lt!1798447)))

(declare-fun b!4636001 () Bool)

(declare-fun res!1946044 () Bool)

(assert (=> b!4636001 (=> (not res!1946044) (not e!2892067))))

(declare-fun allKeysSameHashInMap!1568 (ListLongMap!3651 Hashable!5945) Bool)

(assert (=> b!4636001 (= res!1946044 (allKeysSameHashInMap!1568 lt!1798341 hashF!1389))))

(declare-fun b!4636004 () Bool)

(assert (=> b!4636004 (= e!2892066 (= (getValueByKey!1527 (toList!5062 lt!1798341) lt!1798441) (Some!11708 lt!1798442)))))

(assert (= (and d!1461714 res!1946045) b!4636001))

(assert (= (and b!4636001 res!1946044) b!4636002))

(assert (= (and b!4636002 res!1946042) b!4636003))

(assert (= (and b!4636003 res!1946043) b!4636004))

(declare-fun m!5492591 () Bool)

(assert (=> b!4636002 m!5492591))

(assert (=> b!4636002 m!5492591))

(declare-fun m!5492593 () Bool)

(assert (=> b!4636002 m!5492593))

(declare-fun m!5492595 () Bool)

(assert (=> b!4636004 m!5492595))

(declare-fun m!5492597 () Bool)

(assert (=> b!4636003 m!5492597))

(declare-fun m!5492599 () Bool)

(assert (=> b!4636003 m!5492599))

(declare-fun m!5492601 () Bool)

(assert (=> b!4636003 m!5492601))

(declare-fun m!5492603 () Bool)

(assert (=> b!4636003 m!5492603))

(assert (=> b!4636003 m!5492385))

(assert (=> b!4636003 m!5492325))

(declare-fun m!5492605 () Bool)

(assert (=> b!4636003 m!5492605))

(assert (=> b!4636003 m!5492385))

(assert (=> b!4636003 m!5492601))

(declare-fun m!5492607 () Bool)

(assert (=> b!4636003 m!5492607))

(assert (=> b!4636003 m!5492603))

(declare-fun m!5492609 () Bool)

(assert (=> b!4636003 m!5492609))

(assert (=> b!4636003 m!5492385))

(declare-fun m!5492611 () Bool)

(assert (=> b!4636003 m!5492611))

(declare-fun m!5492613 () Bool)

(assert (=> b!4636001 m!5492613))

(declare-fun m!5492615 () Bool)

(assert (=> d!1461714 m!5492615))

(declare-fun m!5492617 () Bool)

(assert (=> d!1461714 m!5492617))

(assert (=> d!1461714 m!5492615))

(assert (=> b!4635898 d!1461714))

(declare-fun d!1461752 () Bool)

(declare-fun dynLambda!21536 (Int tuple2!52640) Bool)

(assert (=> d!1461752 (dynLambda!21536 lambda!194946 lt!1798349)))

(declare-fun lt!1798450 () Unit!114375)

(declare-fun choose!31685 (List!51781 Int tuple2!52640) Unit!114375)

(assert (=> d!1461752 (= lt!1798450 (choose!31685 lt!1798335 lambda!194946 lt!1798349))))

(declare-fun e!2892070 () Bool)

(assert (=> d!1461752 e!2892070))

(declare-fun res!1946048 () Bool)

(assert (=> d!1461752 (=> (not res!1946048) (not e!2892070))))

(assert (=> d!1461752 (= res!1946048 (forall!10898 lt!1798335 lambda!194946))))

(assert (=> d!1461752 (= (forallContained!3130 lt!1798335 lambda!194946 lt!1798349) lt!1798450)))

(declare-fun b!4636007 () Bool)

(assert (=> b!4636007 (= e!2892070 (contains!14780 lt!1798335 lt!1798349))))

(assert (= (and d!1461752 res!1946048) b!4636007))

(declare-fun b_lambda!171005 () Bool)

(assert (=> (not b_lambda!171005) (not d!1461752)))

(declare-fun m!5492619 () Bool)

(assert (=> d!1461752 m!5492619))

(declare-fun m!5492621 () Bool)

(assert (=> d!1461752 m!5492621))

(declare-fun m!5492623 () Bool)

(assert (=> d!1461752 m!5492623))

(assert (=> b!4636007 m!5492315))

(assert (=> b!4635898 d!1461752))

(declare-fun bs!1030951 () Bool)

(declare-fun d!1461754 () Bool)

(assert (= bs!1030951 (and d!1461754 b!4635898)))

(declare-fun lambda!194967 () Int)

(assert (=> bs!1030951 (= lambda!194967 lambda!194946)))

(declare-fun bs!1030952 () Bool)

(assert (= bs!1030952 (and d!1461754 d!1461714)))

(assert (=> bs!1030952 (= lambda!194967 lambda!194957)))

(assert (=> d!1461754 (contains!14781 lt!1798341 (hash!3616 hashF!1389 key!4968))))

(declare-fun lt!1798477 () Unit!114375)

(declare-fun choose!31686 (ListLongMap!3651 K!13020 Hashable!5945) Unit!114375)

(assert (=> d!1461754 (= lt!1798477 (choose!31686 lt!1798341 key!4968 hashF!1389))))

(assert (=> d!1461754 (forall!10898 (toList!5062 lt!1798341) lambda!194967)))

(assert (=> d!1461754 (= (lemmaInGenMapThenLongMapContainsHash!546 lt!1798341 key!4968 hashF!1389) lt!1798477)))

(declare-fun bs!1030953 () Bool)

(assert (= bs!1030953 d!1461754))

(assert (=> bs!1030953 m!5492385))

(assert (=> bs!1030953 m!5492385))

(assert (=> bs!1030953 m!5492611))

(declare-fun m!5492625 () Bool)

(assert (=> bs!1030953 m!5492625))

(declare-fun m!5492627 () Bool)

(assert (=> bs!1030953 m!5492627))

(assert (=> b!4635898 d!1461754))

(declare-fun d!1461756 () Bool)

(assert (=> d!1461756 (containsKey!2564 oldBucket!40 key!4968)))

(declare-fun lt!1798480 () Unit!114375)

(declare-fun choose!31687 (List!51780 K!13020 Hashable!5945) Unit!114375)

(assert (=> d!1461756 (= lt!1798480 (choose!31687 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1461756 (noDuplicateKeys!1548 oldBucket!40)))

(assert (=> d!1461756 (= (lemmaGetPairDefinedThenContainsKey!94 oldBucket!40 key!4968 hashF!1389) lt!1798480)))

(declare-fun bs!1030954 () Bool)

(assert (= bs!1030954 d!1461756))

(assert (=> bs!1030954 m!5492323))

(declare-fun m!5492657 () Bool)

(assert (=> bs!1030954 m!5492657))

(assert (=> bs!1030954 m!5492345))

(assert (=> b!4635898 d!1461756))

(declare-fun d!1461762 () Bool)

(assert (=> d!1461762 (contains!14780 (toList!5062 lt!1798341) (tuple2!52641 lt!1798334 lt!1798339))))

(declare-fun lt!1798486 () Unit!114375)

(declare-fun choose!31688 (ListLongMap!3651 (_ BitVec 64) List!51780) Unit!114375)

(assert (=> d!1461762 (= lt!1798486 (choose!31688 lt!1798341 lt!1798334 lt!1798339))))

(assert (=> d!1461762 (contains!14781 lt!1798341 lt!1798334)))

(assert (=> d!1461762 (= (lemmaGetValueImpliesTupleContained!145 lt!1798341 lt!1798334 lt!1798339) lt!1798486)))

(declare-fun bs!1030960 () Bool)

(assert (= bs!1030960 d!1461762))

(declare-fun m!5492663 () Bool)

(assert (=> bs!1030960 m!5492663))

(declare-fun m!5492665 () Bool)

(assert (=> bs!1030960 m!5492665))

(assert (=> bs!1030960 m!5492335))

(assert (=> b!4635898 d!1461762))

(declare-fun b!4636058 () Bool)

(declare-fun e!2892102 () List!51780)

(assert (=> b!4636058 (= e!2892102 (Cons!51656 (h!57744 (t!358850 oldBucket!40)) (removePairForKey!1171 (t!358850 (t!358850 oldBucket!40)) key!4968)))))

(declare-fun b!4636056 () Bool)

(declare-fun e!2892103 () List!51780)

(assert (=> b!4636056 (= e!2892103 (t!358850 (t!358850 oldBucket!40)))))

(declare-fun d!1461766 () Bool)

(declare-fun lt!1798494 () List!51780)

(assert (=> d!1461766 (not (containsKey!2564 lt!1798494 key!4968))))

(assert (=> d!1461766 (= lt!1798494 e!2892103)))

(declare-fun c!793475 () Bool)

(assert (=> d!1461766 (= c!793475 (and ((_ is Cons!51656) (t!358850 oldBucket!40)) (= (_1!29613 (h!57744 (t!358850 oldBucket!40))) key!4968)))))

(assert (=> d!1461766 (noDuplicateKeys!1548 (t!358850 oldBucket!40))))

(assert (=> d!1461766 (= (removePairForKey!1171 (t!358850 oldBucket!40) key!4968) lt!1798494)))

(declare-fun b!4636059 () Bool)

(assert (=> b!4636059 (= e!2892102 Nil!51656)))

(declare-fun b!4636057 () Bool)

(assert (=> b!4636057 (= e!2892103 e!2892102)))

(declare-fun c!793476 () Bool)

(assert (=> b!4636057 (= c!793476 ((_ is Cons!51656) (t!358850 oldBucket!40)))))

(assert (= (and d!1461766 c!793475) b!4636056))

(assert (= (and d!1461766 (not c!793475)) b!4636057))

(assert (= (and b!4636057 c!793476) b!4636058))

(assert (= (and b!4636057 (not c!793476)) b!4636059))

(declare-fun m!5492675 () Bool)

(assert (=> b!4636058 m!5492675))

(declare-fun m!5492677 () Bool)

(assert (=> d!1461766 m!5492677))

(declare-fun m!5492679 () Bool)

(assert (=> d!1461766 m!5492679))

(assert (=> b!4635896 d!1461766))

(declare-fun d!1461772 () Bool)

(declare-fun content!8912 (List!51780) (InoxSet tuple2!52638))

(assert (=> d!1461772 (= (eq!863 lt!1798320 lt!1798323) (= (content!8912 (toList!5061 lt!1798320)) (content!8912 (toList!5061 lt!1798323))))))

(declare-fun bs!1030963 () Bool)

(assert (= bs!1030963 d!1461772))

(declare-fun m!5492701 () Bool)

(assert (=> bs!1030963 m!5492701))

(declare-fun m!5492703 () Bool)

(assert (=> bs!1030963 m!5492703))

(assert (=> b!4635897 d!1461772))

(declare-fun d!1461780 () Bool)

(assert (=> d!1461780 (= (eq!863 lt!1798323 lt!1798344) (= (content!8912 (toList!5061 lt!1798323)) (content!8912 (toList!5061 lt!1798344))))))

(declare-fun bs!1030964 () Bool)

(assert (= bs!1030964 d!1461780))

(assert (=> bs!1030964 m!5492703))

(declare-fun m!5492705 () Bool)

(assert (=> bs!1030964 m!5492705))

(assert (=> b!4635886 d!1461780))

(declare-fun d!1461782 () Bool)

(assert (=> d!1461782 (= (eq!863 lt!1798318 lt!1798323) (= (content!8912 (toList!5061 lt!1798318)) (content!8912 (toList!5061 lt!1798323))))))

(declare-fun bs!1030965 () Bool)

(assert (= bs!1030965 d!1461782))

(declare-fun m!5492707 () Bool)

(assert (=> bs!1030965 m!5492707))

(assert (=> bs!1030965 m!5492703))

(assert (=> b!4635886 d!1461782))

(declare-fun d!1461784 () Bool)

(declare-fun e!2892111 () Bool)

(assert (=> d!1461784 e!2892111))

(declare-fun res!1946086 () Bool)

(assert (=> d!1461784 (=> (not res!1946086) (not e!2892111))))

(declare-fun lt!1798498 () ListMap!4365)

(assert (=> d!1461784 (= res!1946086 (not (contains!14779 lt!1798498 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!291 (List!51780 K!13020) List!51780)

(assert (=> d!1461784 (= lt!1798498 (ListMap!4366 (removePresrvNoDuplicatedKeys!291 (toList!5061 lt!1798332) key!4968)))))

(assert (=> d!1461784 (= (-!588 lt!1798332 key!4968) lt!1798498)))

(declare-fun b!4636070 () Bool)

(declare-datatypes ((List!51783 0))(
  ( (Nil!51659) (Cons!51659 (h!57749 K!13020) (t!358855 List!51783)) )
))
(declare-fun content!8913 (List!51783) (InoxSet K!13020))

(declare-fun keys!18234 (ListMap!4365) List!51783)

(assert (=> b!4636070 (= e!2892111 (= ((_ map and) (content!8913 (keys!18234 lt!1798332)) ((_ map not) (store ((as const (Array K!13020 Bool)) false) key!4968 true))) (content!8913 (keys!18234 lt!1798498))))))

(assert (= (and d!1461784 res!1946086) b!4636070))

(declare-fun m!5492709 () Bool)

(assert (=> d!1461784 m!5492709))

(declare-fun m!5492711 () Bool)

(assert (=> d!1461784 m!5492711))

(declare-fun m!5492713 () Bool)

(assert (=> b!4636070 m!5492713))

(declare-fun m!5492715 () Bool)

(assert (=> b!4636070 m!5492715))

(assert (=> b!4636070 m!5492713))

(declare-fun m!5492717 () Bool)

(assert (=> b!4636070 m!5492717))

(declare-fun m!5492719 () Bool)

(assert (=> b!4636070 m!5492719))

(assert (=> b!4636070 m!5492719))

(declare-fun m!5492721 () Bool)

(assert (=> b!4636070 m!5492721))

(assert (=> b!4635886 d!1461784))

(declare-fun d!1461786 () Bool)

(assert (=> d!1461786 (eq!863 (-!588 lt!1798329 key!4968) (-!588 lt!1798332 key!4968))))

(declare-fun lt!1798501 () Unit!114375)

(declare-fun choose!31689 (ListMap!4365 ListMap!4365 K!13020) Unit!114375)

(assert (=> d!1461786 (= lt!1798501 (choose!31689 lt!1798329 lt!1798332 key!4968))))

(assert (=> d!1461786 (eq!863 lt!1798329 lt!1798332)))

(assert (=> d!1461786 (= (lemmaRemovePreservesEq!44 lt!1798329 lt!1798332 key!4968) lt!1798501)))

(declare-fun bs!1030966 () Bool)

(assert (= bs!1030966 d!1461786))

(assert (=> bs!1030966 m!5492361))

(assert (=> bs!1030966 m!5492361))

(assert (=> bs!1030966 m!5492399))

(declare-fun m!5492723 () Bool)

(assert (=> bs!1030966 m!5492723))

(assert (=> bs!1030966 m!5492399))

(declare-fun m!5492725 () Bool)

(assert (=> bs!1030966 m!5492725))

(declare-fun m!5492727 () Bool)

(assert (=> bs!1030966 m!5492727))

(assert (=> b!4635886 d!1461786))

(declare-fun d!1461788 () Bool)

(declare-fun res!1946091 () Bool)

(declare-fun e!2892116 () Bool)

(assert (=> d!1461788 (=> res!1946091 e!2892116)))

(assert (=> d!1461788 (= res!1946091 (not ((_ is Cons!51656) newBucket!224)))))

(assert (=> d!1461788 (= (noDuplicateKeys!1548 newBucket!224) e!2892116)))

(declare-fun b!4636075 () Bool)

(declare-fun e!2892117 () Bool)

(assert (=> b!4636075 (= e!2892116 e!2892117)))

(declare-fun res!1946092 () Bool)

(assert (=> b!4636075 (=> (not res!1946092) (not e!2892117))))

(assert (=> b!4636075 (= res!1946092 (not (containsKey!2564 (t!358850 newBucket!224) (_1!29613 (h!57744 newBucket!224)))))))

(declare-fun b!4636076 () Bool)

(assert (=> b!4636076 (= e!2892117 (noDuplicateKeys!1548 (t!358850 newBucket!224)))))

(assert (= (and d!1461788 (not res!1946091)) b!4636075))

(assert (= (and b!4636075 res!1946092) b!4636076))

(declare-fun m!5492729 () Bool)

(assert (=> b!4636075 m!5492729))

(declare-fun m!5492731 () Bool)

(assert (=> b!4636076 m!5492731))

(assert (=> b!4635895 d!1461788))

(declare-fun d!1461790 () Bool)

(declare-fun e!2892118 () Bool)

(assert (=> d!1461790 e!2892118))

(declare-fun res!1946093 () Bool)

(assert (=> d!1461790 (=> (not res!1946093) (not e!2892118))))

(declare-fun lt!1798502 () ListMap!4365)

(assert (=> d!1461790 (= res!1946093 (not (contains!14779 lt!1798502 key!4968)))))

(assert (=> d!1461790 (= lt!1798502 (ListMap!4366 (removePresrvNoDuplicatedKeys!291 (toList!5061 lt!1798329) key!4968)))))

(assert (=> d!1461790 (= (-!588 lt!1798329 key!4968) lt!1798502)))

(declare-fun b!4636077 () Bool)

(assert (=> b!4636077 (= e!2892118 (= ((_ map and) (content!8913 (keys!18234 lt!1798329)) ((_ map not) (store ((as const (Array K!13020 Bool)) false) key!4968 true))) (content!8913 (keys!18234 lt!1798502))))))

(assert (= (and d!1461790 res!1946093) b!4636077))

(declare-fun m!5492733 () Bool)

(assert (=> d!1461790 m!5492733))

(declare-fun m!5492735 () Bool)

(assert (=> d!1461790 m!5492735))

(declare-fun m!5492737 () Bool)

(assert (=> b!4636077 m!5492737))

(assert (=> b!4636077 m!5492715))

(assert (=> b!4636077 m!5492737))

(declare-fun m!5492739 () Bool)

(assert (=> b!4636077 m!5492739))

(declare-fun m!5492741 () Bool)

(assert (=> b!4636077 m!5492741))

(assert (=> b!4636077 m!5492741))

(declare-fun m!5492743 () Bool)

(assert (=> b!4636077 m!5492743))

(assert (=> b!4635884 d!1461790))

(declare-fun d!1461792 () Bool)

(assert (=> d!1461792 (= (eq!863 lt!1798340 lt!1798328) (= (content!8912 (toList!5061 lt!1798340)) (content!8912 (toList!5061 lt!1798328))))))

(declare-fun bs!1030967 () Bool)

(assert (= bs!1030967 d!1461792))

(declare-fun m!5492745 () Bool)

(assert (=> bs!1030967 m!5492745))

(declare-fun m!5492747 () Bool)

(assert (=> bs!1030967 m!5492747))

(assert (=> b!4635884 d!1461792))

(declare-fun d!1461794 () Bool)

(assert (=> d!1461794 (= (-!588 (+!1914 lt!1798317 (tuple2!52639 (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40)))) key!4968) (+!1914 (-!588 lt!1798317 key!4968) (tuple2!52639 (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40)))))))

(declare-fun lt!1798505 () Unit!114375)

(declare-fun choose!31690 (ListMap!4365 K!13020 V!13266 K!13020) Unit!114375)

(assert (=> d!1461794 (= lt!1798505 (choose!31690 lt!1798317 (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40)) key!4968))))

(assert (=> d!1461794 (not (= (_1!29613 (h!57744 oldBucket!40)) key!4968))))

(assert (=> d!1461794 (= (addRemoveCommutativeForDiffKeys!43 lt!1798317 (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40)) key!4968) lt!1798505)))

(declare-fun bs!1030968 () Bool)

(assert (= bs!1030968 d!1461794))

(assert (=> bs!1030968 m!5492357))

(assert (=> bs!1030968 m!5492357))

(declare-fun m!5492749 () Bool)

(assert (=> bs!1030968 m!5492749))

(declare-fun m!5492751 () Bool)

(assert (=> bs!1030968 m!5492751))

(declare-fun m!5492753 () Bool)

(assert (=> bs!1030968 m!5492753))

(assert (=> bs!1030968 m!5492753))

(declare-fun m!5492755 () Bool)

(assert (=> bs!1030968 m!5492755))

(assert (=> b!4635884 d!1461794))

(declare-fun d!1461796 () Bool)

(declare-fun e!2892121 () Bool)

(assert (=> d!1461796 e!2892121))

(declare-fun res!1946098 () Bool)

(assert (=> d!1461796 (=> (not res!1946098) (not e!2892121))))

(declare-fun lt!1798515 () ListMap!4365)

(assert (=> d!1461796 (= res!1946098 (contains!14779 lt!1798515 (_1!29613 (h!57744 oldBucket!40))))))

(declare-fun lt!1798517 () List!51780)

(assert (=> d!1461796 (= lt!1798515 (ListMap!4366 lt!1798517))))

(declare-fun lt!1798516 () Unit!114375)

(declare-fun lt!1798514 () Unit!114375)

(assert (=> d!1461796 (= lt!1798516 lt!1798514)))

(declare-datatypes ((Option!11710 0))(
  ( (None!11709) (Some!11709 (v!45915 V!13266)) )
))
(declare-fun getValueByKey!1528 (List!51780 K!13020) Option!11710)

(assert (=> d!1461796 (= (getValueByKey!1528 lt!1798517 (_1!29613 (h!57744 oldBucket!40))) (Some!11709 (_2!29613 (h!57744 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!886 (List!51780 K!13020 V!13266) Unit!114375)

(assert (=> d!1461796 (= lt!1798514 (lemmaContainsTupThenGetReturnValue!886 lt!1798517 (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!394 (List!51780 K!13020 V!13266) List!51780)

(assert (=> d!1461796 (= lt!1798517 (insertNoDuplicatedKeys!394 (toList!5061 lt!1798328) (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40))))))

(assert (=> d!1461796 (= (+!1914 lt!1798328 (h!57744 oldBucket!40)) lt!1798515)))

(declare-fun b!4636082 () Bool)

(declare-fun res!1946099 () Bool)

(assert (=> b!4636082 (=> (not res!1946099) (not e!2892121))))

(assert (=> b!4636082 (= res!1946099 (= (getValueByKey!1528 (toList!5061 lt!1798515) (_1!29613 (h!57744 oldBucket!40))) (Some!11709 (_2!29613 (h!57744 oldBucket!40)))))))

(declare-fun b!4636083 () Bool)

(assert (=> b!4636083 (= e!2892121 (contains!14783 (toList!5061 lt!1798515) (h!57744 oldBucket!40)))))

(assert (= (and d!1461796 res!1946098) b!4636082))

(assert (= (and b!4636082 res!1946099) b!4636083))

(declare-fun m!5492757 () Bool)

(assert (=> d!1461796 m!5492757))

(declare-fun m!5492759 () Bool)

(assert (=> d!1461796 m!5492759))

(declare-fun m!5492761 () Bool)

(assert (=> d!1461796 m!5492761))

(declare-fun m!5492763 () Bool)

(assert (=> d!1461796 m!5492763))

(declare-fun m!5492765 () Bool)

(assert (=> b!4636082 m!5492765))

(declare-fun m!5492767 () Bool)

(assert (=> b!4636083 m!5492767))

(assert (=> b!4635884 d!1461796))

(declare-fun d!1461798 () Bool)

(assert (=> d!1461798 (eq!863 (extractMap!1604 (Cons!51657 (tuple2!52641 hash!414 lt!1798327) Nil!51657)) (-!588 (extractMap!1604 (Cons!51657 (tuple2!52641 hash!414 (t!358850 oldBucket!40)) Nil!51657)) key!4968))))

(declare-fun lt!1798520 () Unit!114375)

(declare-fun choose!31691 ((_ BitVec 64) List!51780 List!51780 K!13020 Hashable!5945) Unit!114375)

(assert (=> d!1461798 (= lt!1798520 (choose!31691 hash!414 (t!358850 oldBucket!40) lt!1798327 key!4968 hashF!1389))))

(assert (=> d!1461798 (noDuplicateKeys!1548 (t!358850 oldBucket!40))))

(assert (=> d!1461798 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!150 hash!414 (t!358850 oldBucket!40) lt!1798327 key!4968 hashF!1389) lt!1798520)))

(declare-fun bs!1030969 () Bool)

(assert (= bs!1030969 d!1461798))

(declare-fun m!5492769 () Bool)

(assert (=> bs!1030969 m!5492769))

(declare-fun m!5492771 () Bool)

(assert (=> bs!1030969 m!5492771))

(assert (=> bs!1030969 m!5492679))

(assert (=> bs!1030969 m!5492769))

(declare-fun m!5492773 () Bool)

(assert (=> bs!1030969 m!5492773))

(assert (=> bs!1030969 m!5492367))

(assert (=> bs!1030969 m!5492367))

(assert (=> bs!1030969 m!5492771))

(declare-fun m!5492775 () Bool)

(assert (=> bs!1030969 m!5492775))

(assert (=> b!4635884 d!1461798))

(declare-fun d!1461800 () Bool)

(declare-fun e!2892122 () Bool)

(assert (=> d!1461800 e!2892122))

(declare-fun res!1946100 () Bool)

(assert (=> d!1461800 (=> (not res!1946100) (not e!2892122))))

(declare-fun lt!1798522 () ListMap!4365)

(assert (=> d!1461800 (= res!1946100 (contains!14779 lt!1798522 (_1!29613 (h!57744 oldBucket!40))))))

(declare-fun lt!1798524 () List!51780)

(assert (=> d!1461800 (= lt!1798522 (ListMap!4366 lt!1798524))))

(declare-fun lt!1798523 () Unit!114375)

(declare-fun lt!1798521 () Unit!114375)

(assert (=> d!1461800 (= lt!1798523 lt!1798521)))

(assert (=> d!1461800 (= (getValueByKey!1528 lt!1798524 (_1!29613 (h!57744 oldBucket!40))) (Some!11709 (_2!29613 (h!57744 oldBucket!40))))))

(assert (=> d!1461800 (= lt!1798521 (lemmaContainsTupThenGetReturnValue!886 lt!1798524 (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40))))))

(assert (=> d!1461800 (= lt!1798524 (insertNoDuplicatedKeys!394 (toList!5061 lt!1798317) (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40))))))

(assert (=> d!1461800 (= (+!1914 lt!1798317 (h!57744 oldBucket!40)) lt!1798522)))

(declare-fun b!4636084 () Bool)

(declare-fun res!1946101 () Bool)

(assert (=> b!4636084 (=> (not res!1946101) (not e!2892122))))

(assert (=> b!4636084 (= res!1946101 (= (getValueByKey!1528 (toList!5061 lt!1798522) (_1!29613 (h!57744 oldBucket!40))) (Some!11709 (_2!29613 (h!57744 oldBucket!40)))))))

(declare-fun b!4636085 () Bool)

(assert (=> b!4636085 (= e!2892122 (contains!14783 (toList!5061 lt!1798522) (h!57744 oldBucket!40)))))

(assert (= (and d!1461800 res!1946100) b!4636084))

(assert (= (and b!4636084 res!1946101) b!4636085))

(declare-fun m!5492777 () Bool)

(assert (=> d!1461800 m!5492777))

(declare-fun m!5492779 () Bool)

(assert (=> d!1461800 m!5492779))

(declare-fun m!5492781 () Bool)

(assert (=> d!1461800 m!5492781))

(declare-fun m!5492783 () Bool)

(assert (=> d!1461800 m!5492783))

(declare-fun m!5492785 () Bool)

(assert (=> b!4636084 m!5492785))

(declare-fun m!5492787 () Bool)

(assert (=> b!4636085 m!5492787))

(assert (=> b!4635884 d!1461800))

(declare-fun d!1461802 () Bool)

(declare-fun e!2892123 () Bool)

(assert (=> d!1461802 e!2892123))

(declare-fun res!1946102 () Bool)

(assert (=> d!1461802 (=> (not res!1946102) (not e!2892123))))

(declare-fun lt!1798525 () ListMap!4365)

(assert (=> d!1461802 (= res!1946102 (not (contains!14779 lt!1798525 key!4968)))))

(assert (=> d!1461802 (= lt!1798525 (ListMap!4366 (removePresrvNoDuplicatedKeys!291 (toList!5061 (+!1914 lt!1798317 (h!57744 oldBucket!40))) key!4968)))))

(assert (=> d!1461802 (= (-!588 (+!1914 lt!1798317 (h!57744 oldBucket!40)) key!4968) lt!1798525)))

(declare-fun b!4636086 () Bool)

(assert (=> b!4636086 (= e!2892123 (= ((_ map and) (content!8913 (keys!18234 (+!1914 lt!1798317 (h!57744 oldBucket!40)))) ((_ map not) (store ((as const (Array K!13020 Bool)) false) key!4968 true))) (content!8913 (keys!18234 lt!1798525))))))

(assert (= (and d!1461802 res!1946102) b!4636086))

(declare-fun m!5492789 () Bool)

(assert (=> d!1461802 m!5492789))

(declare-fun m!5492791 () Bool)

(assert (=> d!1461802 m!5492791))

(declare-fun m!5492793 () Bool)

(assert (=> b!4636086 m!5492793))

(assert (=> b!4636086 m!5492715))

(assert (=> b!4636086 m!5492793))

(declare-fun m!5492795 () Bool)

(assert (=> b!4636086 m!5492795))

(assert (=> b!4636086 m!5492351))

(declare-fun m!5492797 () Bool)

(assert (=> b!4636086 m!5492797))

(assert (=> b!4636086 m!5492797))

(declare-fun m!5492799 () Bool)

(assert (=> b!4636086 m!5492799))

(assert (=> b!4635884 d!1461802))

(declare-fun d!1461804 () Bool)

(declare-fun e!2892124 () Bool)

(assert (=> d!1461804 e!2892124))

(declare-fun res!1946103 () Bool)

(assert (=> d!1461804 (=> (not res!1946103) (not e!2892124))))

(declare-fun lt!1798526 () ListMap!4365)

(assert (=> d!1461804 (= res!1946103 (not (contains!14779 lt!1798526 key!4968)))))

(assert (=> d!1461804 (= lt!1798526 (ListMap!4366 (removePresrvNoDuplicatedKeys!291 (toList!5061 lt!1798317) key!4968)))))

(assert (=> d!1461804 (= (-!588 lt!1798317 key!4968) lt!1798526)))

(declare-fun b!4636087 () Bool)

(assert (=> b!4636087 (= e!2892124 (= ((_ map and) (content!8913 (keys!18234 lt!1798317)) ((_ map not) (store ((as const (Array K!13020 Bool)) false) key!4968 true))) (content!8913 (keys!18234 lt!1798526))))))

(assert (= (and d!1461804 res!1946103) b!4636087))

(declare-fun m!5492801 () Bool)

(assert (=> d!1461804 m!5492801))

(declare-fun m!5492803 () Bool)

(assert (=> d!1461804 m!5492803))

(declare-fun m!5492805 () Bool)

(assert (=> b!4636087 m!5492805))

(assert (=> b!4636087 m!5492715))

(assert (=> b!4636087 m!5492805))

(declare-fun m!5492807 () Bool)

(assert (=> b!4636087 m!5492807))

(declare-fun m!5492809 () Bool)

(assert (=> b!4636087 m!5492809))

(assert (=> b!4636087 m!5492809))

(declare-fun m!5492811 () Bool)

(assert (=> b!4636087 m!5492811))

(assert (=> b!4635884 d!1461804))

(declare-fun d!1461806 () Bool)

(assert (=> d!1461806 true))

(assert (=> d!1461806 true))

(declare-fun lambda!194973 () Int)

(declare-fun forall!10900 (List!51780 Int) Bool)

(assert (=> d!1461806 (= (allKeysSameHash!1402 oldBucket!40 hash!414 hashF!1389) (forall!10900 oldBucket!40 lambda!194973))))

(declare-fun bs!1030970 () Bool)

(assert (= bs!1030970 d!1461806))

(declare-fun m!5492813 () Bool)

(assert (=> bs!1030970 m!5492813))

(assert (=> b!4635883 d!1461806))

(declare-fun b!4636114 () Bool)

(assert (=> b!4636114 false))

(declare-fun lt!1798569 () Unit!114375)

(declare-fun lt!1798565 () Unit!114375)

(assert (=> b!4636114 (= lt!1798569 lt!1798565)))

(declare-fun containsKey!2568 (List!51780 K!13020) Bool)

(assert (=> b!4636114 (containsKey!2568 (toList!5061 lt!1798332) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!692 (List!51780 K!13020) Unit!114375)

(assert (=> b!4636114 (= lt!1798565 (lemmaInGetKeysListThenContainsKey!692 (toList!5061 lt!1798332) key!4968))))

(declare-fun e!2892144 () Unit!114375)

(declare-fun Unit!114392 () Unit!114375)

(assert (=> b!4636114 (= e!2892144 Unit!114392)))

(declare-fun bm!323549 () Bool)

(declare-fun call!323554 () Bool)

(declare-fun e!2892142 () List!51783)

(declare-fun contains!14785 (List!51783 K!13020) Bool)

(assert (=> bm!323549 (= call!323554 (contains!14785 e!2892142 key!4968))))

(declare-fun c!793488 () Bool)

(declare-fun c!793487 () Bool)

(assert (=> bm!323549 (= c!793488 c!793487)))

(declare-fun b!4636115 () Bool)

(declare-fun e!2892140 () Bool)

(declare-fun e!2892143 () Bool)

(assert (=> b!4636115 (= e!2892140 e!2892143)))

(declare-fun res!1946111 () Bool)

(assert (=> b!4636115 (=> (not res!1946111) (not e!2892143))))

(declare-fun isDefined!8975 (Option!11710) Bool)

(assert (=> b!4636115 (= res!1946111 (isDefined!8975 (getValueByKey!1528 (toList!5061 lt!1798332) key!4968)))))

(declare-fun b!4636116 () Bool)

(declare-fun e!2892141 () Unit!114375)

(assert (=> b!4636116 (= e!2892141 e!2892144)))

(declare-fun c!793489 () Bool)

(assert (=> b!4636116 (= c!793489 call!323554)))

(declare-fun b!4636118 () Bool)

(assert (=> b!4636118 (= e!2892143 (contains!14785 (keys!18234 lt!1798332) key!4968))))

(declare-fun b!4636119 () Bool)

(assert (=> b!4636119 (= e!2892142 (keys!18234 lt!1798332))))

(declare-fun b!4636120 () Bool)

(declare-fun e!2892139 () Bool)

(assert (=> b!4636120 (= e!2892139 (not (contains!14785 (keys!18234 lt!1798332) key!4968)))))

(declare-fun b!4636121 () Bool)

(declare-fun getKeysList!693 (List!51780) List!51783)

(assert (=> b!4636121 (= e!2892142 (getKeysList!693 (toList!5061 lt!1798332)))))

(declare-fun b!4636122 () Bool)

(declare-fun lt!1798564 () Unit!114375)

(assert (=> b!4636122 (= e!2892141 lt!1798564)))

(declare-fun lt!1798568 () Unit!114375)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1430 (List!51780 K!13020) Unit!114375)

(assert (=> b!4636122 (= lt!1798568 (lemmaContainsKeyImpliesGetValueByKeyDefined!1430 (toList!5061 lt!1798332) key!4968))))

(assert (=> b!4636122 (isDefined!8975 (getValueByKey!1528 (toList!5061 lt!1798332) key!4968))))

(declare-fun lt!1798566 () Unit!114375)

(assert (=> b!4636122 (= lt!1798566 lt!1798568)))

(declare-fun lemmaInListThenGetKeysListContains!688 (List!51780 K!13020) Unit!114375)

(assert (=> b!4636122 (= lt!1798564 (lemmaInListThenGetKeysListContains!688 (toList!5061 lt!1798332) key!4968))))

(assert (=> b!4636122 call!323554))

(declare-fun d!1461808 () Bool)

(assert (=> d!1461808 e!2892140))

(declare-fun res!1946112 () Bool)

(assert (=> d!1461808 (=> res!1946112 e!2892140)))

(assert (=> d!1461808 (= res!1946112 e!2892139)))

(declare-fun res!1946110 () Bool)

(assert (=> d!1461808 (=> (not res!1946110) (not e!2892139))))

(declare-fun lt!1798563 () Bool)

(assert (=> d!1461808 (= res!1946110 (not lt!1798563))))

(declare-fun lt!1798567 () Bool)

(assert (=> d!1461808 (= lt!1798563 lt!1798567)))

(declare-fun lt!1798570 () Unit!114375)

(assert (=> d!1461808 (= lt!1798570 e!2892141)))

(assert (=> d!1461808 (= c!793487 lt!1798567)))

(assert (=> d!1461808 (= lt!1798567 (containsKey!2568 (toList!5061 lt!1798332) key!4968))))

(assert (=> d!1461808 (= (contains!14779 lt!1798332 key!4968) lt!1798563)))

(declare-fun b!4636117 () Bool)

(declare-fun Unit!114393 () Unit!114375)

(assert (=> b!4636117 (= e!2892144 Unit!114393)))

(assert (= (and d!1461808 c!793487) b!4636122))

(assert (= (and d!1461808 (not c!793487)) b!4636116))

(assert (= (and b!4636116 c!793489) b!4636114))

(assert (= (and b!4636116 (not c!793489)) b!4636117))

(assert (= (or b!4636122 b!4636116) bm!323549))

(assert (= (and bm!323549 c!793488) b!4636121))

(assert (= (and bm!323549 (not c!793488)) b!4636119))

(assert (= (and d!1461808 res!1946110) b!4636120))

(assert (= (and d!1461808 (not res!1946112)) b!4636115))

(assert (= (and b!4636115 res!1946111) b!4636118))

(declare-fun m!5492815 () Bool)

(assert (=> b!4636121 m!5492815))

(declare-fun m!5492817 () Bool)

(assert (=> d!1461808 m!5492817))

(declare-fun m!5492819 () Bool)

(assert (=> bm!323549 m!5492819))

(declare-fun m!5492821 () Bool)

(assert (=> b!4636122 m!5492821))

(declare-fun m!5492823 () Bool)

(assert (=> b!4636122 m!5492823))

(assert (=> b!4636122 m!5492823))

(declare-fun m!5492825 () Bool)

(assert (=> b!4636122 m!5492825))

(declare-fun m!5492827 () Bool)

(assert (=> b!4636122 m!5492827))

(assert (=> b!4636114 m!5492817))

(declare-fun m!5492829 () Bool)

(assert (=> b!4636114 m!5492829))

(assert (=> b!4636119 m!5492719))

(assert (=> b!4636115 m!5492823))

(assert (=> b!4636115 m!5492823))

(assert (=> b!4636115 m!5492825))

(assert (=> b!4636118 m!5492719))

(assert (=> b!4636118 m!5492719))

(declare-fun m!5492831 () Bool)

(assert (=> b!4636118 m!5492831))

(assert (=> b!4636120 m!5492719))

(assert (=> b!4636120 m!5492719))

(assert (=> b!4636120 m!5492831))

(assert (=> b!4635894 d!1461808))

(declare-fun bs!1030971 () Bool)

(declare-fun d!1461810 () Bool)

(assert (= bs!1030971 (and d!1461810 b!4635898)))

(declare-fun lambda!195004 () Int)

(assert (=> bs!1030971 (= lambda!195004 lambda!194946)))

(declare-fun bs!1030972 () Bool)

(assert (= bs!1030972 (and d!1461810 d!1461714)))

(assert (=> bs!1030972 (= lambda!195004 lambda!194957)))

(declare-fun bs!1030973 () Bool)

(assert (= bs!1030973 (and d!1461810 d!1461754)))

(assert (=> bs!1030973 (= lambda!195004 lambda!194967)))

(declare-fun lt!1798595 () ListMap!4365)

(declare-fun invariantList!1242 (List!51780) Bool)

(assert (=> d!1461810 (invariantList!1242 (toList!5061 lt!1798595))))

(declare-fun e!2892151 () ListMap!4365)

(assert (=> d!1461810 (= lt!1798595 e!2892151)))

(declare-fun c!793492 () Bool)

(assert (=> d!1461810 (= c!793492 ((_ is Cons!51657) lt!1798335))))

(assert (=> d!1461810 (forall!10898 lt!1798335 lambda!195004)))

(assert (=> d!1461810 (= (extractMap!1604 lt!1798335) lt!1798595)))

(declare-fun b!4636133 () Bool)

(assert (=> b!4636133 (= e!2892151 (addToMapMapFromBucket!1009 (_2!29614 (h!57745 lt!1798335)) (extractMap!1604 (t!358851 lt!1798335))))))

(declare-fun b!4636134 () Bool)

(assert (=> b!4636134 (= e!2892151 (ListMap!4366 Nil!51656))))

(assert (= (and d!1461810 c!793492) b!4636133))

(assert (= (and d!1461810 (not c!793492)) b!4636134))

(declare-fun m!5492833 () Bool)

(assert (=> d!1461810 m!5492833))

(declare-fun m!5492835 () Bool)

(assert (=> d!1461810 m!5492835))

(declare-fun m!5492837 () Bool)

(assert (=> b!4636133 m!5492837))

(assert (=> b!4636133 m!5492837))

(declare-fun m!5492839 () Bool)

(assert (=> b!4636133 m!5492839))

(assert (=> b!4635894 d!1461810))

(declare-fun d!1461812 () Bool)

(assert (=> d!1461812 (= (eq!863 lt!1798320 lt!1798344) (= (content!8912 (toList!5061 lt!1798320)) (content!8912 (toList!5061 lt!1798344))))))

(declare-fun bs!1030974 () Bool)

(assert (= bs!1030974 d!1461812))

(assert (=> bs!1030974 m!5492701))

(assert (=> bs!1030974 m!5492705))

(assert (=> b!4635892 d!1461812))

(declare-fun d!1461814 () Bool)

(assert (=> d!1461814 (= (eq!863 lt!1798345 (+!1914 lt!1798340 (h!57744 oldBucket!40))) (= (content!8912 (toList!5061 lt!1798345)) (content!8912 (toList!5061 (+!1914 lt!1798340 (h!57744 oldBucket!40))))))))

(declare-fun bs!1030975 () Bool)

(assert (= bs!1030975 d!1461814))

(declare-fun m!5492841 () Bool)

(assert (=> bs!1030975 m!5492841))

(declare-fun m!5492843 () Bool)

(assert (=> bs!1030975 m!5492843))

(assert (=> b!4635892 d!1461814))

(declare-fun d!1461816 () Bool)

(declare-fun e!2892152 () Bool)

(assert (=> d!1461816 e!2892152))

(declare-fun res!1946119 () Bool)

(assert (=> d!1461816 (=> (not res!1946119) (not e!2892152))))

(declare-fun lt!1798597 () ListMap!4365)

(assert (=> d!1461816 (= res!1946119 (contains!14779 lt!1798597 (_1!29613 (h!57744 oldBucket!40))))))

(declare-fun lt!1798599 () List!51780)

(assert (=> d!1461816 (= lt!1798597 (ListMap!4366 lt!1798599))))

(declare-fun lt!1798598 () Unit!114375)

(declare-fun lt!1798596 () Unit!114375)

(assert (=> d!1461816 (= lt!1798598 lt!1798596)))

(assert (=> d!1461816 (= (getValueByKey!1528 lt!1798599 (_1!29613 (h!57744 oldBucket!40))) (Some!11709 (_2!29613 (h!57744 oldBucket!40))))))

(assert (=> d!1461816 (= lt!1798596 (lemmaContainsTupThenGetReturnValue!886 lt!1798599 (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40))))))

(assert (=> d!1461816 (= lt!1798599 (insertNoDuplicatedKeys!394 (toList!5061 lt!1798340) (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40))))))

(assert (=> d!1461816 (= (+!1914 lt!1798340 (h!57744 oldBucket!40)) lt!1798597)))

(declare-fun b!4636135 () Bool)

(declare-fun res!1946120 () Bool)

(assert (=> b!4636135 (=> (not res!1946120) (not e!2892152))))

(assert (=> b!4636135 (= res!1946120 (= (getValueByKey!1528 (toList!5061 lt!1798597) (_1!29613 (h!57744 oldBucket!40))) (Some!11709 (_2!29613 (h!57744 oldBucket!40)))))))

(declare-fun b!4636136 () Bool)

(assert (=> b!4636136 (= e!2892152 (contains!14783 (toList!5061 lt!1798597) (h!57744 oldBucket!40)))))

(assert (= (and d!1461816 res!1946119) b!4636135))

(assert (= (and b!4636135 res!1946120) b!4636136))

(declare-fun m!5492845 () Bool)

(assert (=> d!1461816 m!5492845))

(declare-fun m!5492847 () Bool)

(assert (=> d!1461816 m!5492847))

(declare-fun m!5492849 () Bool)

(assert (=> d!1461816 m!5492849))

(declare-fun m!5492851 () Bool)

(assert (=> d!1461816 m!5492851))

(declare-fun m!5492853 () Bool)

(assert (=> b!4636135 m!5492853))

(declare-fun m!5492855 () Bool)

(assert (=> b!4636136 m!5492855))

(assert (=> b!4635892 d!1461816))

(declare-fun d!1461818 () Bool)

(assert (=> d!1461818 (eq!863 (+!1914 lt!1798328 (tuple2!52639 (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40)))) (+!1914 lt!1798340 (tuple2!52639 (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40)))))))

(declare-fun lt!1798624 () Unit!114375)

(declare-fun choose!31694 (ListMap!4365 ListMap!4365 K!13020 V!13266) Unit!114375)

(assert (=> d!1461818 (= lt!1798624 (choose!31694 lt!1798328 lt!1798340 (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40))))))

(assert (=> d!1461818 (eq!863 lt!1798328 lt!1798340)))

(assert (=> d!1461818 (= (lemmaAddToEqMapsPreservesEq!60 lt!1798328 lt!1798340 (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40))) lt!1798624)))

(declare-fun bs!1030984 () Bool)

(assert (= bs!1030984 d!1461818))

(declare-fun m!5492891 () Bool)

(assert (=> bs!1030984 m!5492891))

(declare-fun m!5492893 () Bool)

(assert (=> bs!1030984 m!5492893))

(declare-fun m!5492895 () Bool)

(assert (=> bs!1030984 m!5492895))

(declare-fun m!5492897 () Bool)

(assert (=> bs!1030984 m!5492897))

(declare-fun m!5492899 () Bool)

(assert (=> bs!1030984 m!5492899))

(assert (=> bs!1030984 m!5492897))

(assert (=> bs!1030984 m!5492895))

(assert (=> b!4635892 d!1461818))

(declare-fun d!1461822 () Bool)

(declare-fun res!1946128 () Bool)

(declare-fun e!2892161 () Bool)

(assert (=> d!1461822 (=> res!1946128 e!2892161)))

(assert (=> d!1461822 (= res!1946128 ((_ is Nil!51657) lt!1798321))))

(assert (=> d!1461822 (= (forall!10898 lt!1798321 lambda!194946) e!2892161)))

(declare-fun b!4636150 () Bool)

(declare-fun e!2892162 () Bool)

(assert (=> b!4636150 (= e!2892161 e!2892162)))

(declare-fun res!1946129 () Bool)

(assert (=> b!4636150 (=> (not res!1946129) (not e!2892162))))

(assert (=> b!4636150 (= res!1946129 (dynLambda!21536 lambda!194946 (h!57745 lt!1798321)))))

(declare-fun b!4636151 () Bool)

(assert (=> b!4636151 (= e!2892162 (forall!10898 (t!358851 lt!1798321) lambda!194946))))

(assert (= (and d!1461822 (not res!1946128)) b!4636150))

(assert (= (and b!4636150 res!1946129) b!4636151))

(declare-fun b_lambda!171009 () Bool)

(assert (=> (not b_lambda!171009) (not b!4636150)))

(declare-fun m!5492909 () Bool)

(assert (=> b!4636150 m!5492909))

(declare-fun m!5492911 () Bool)

(assert (=> b!4636151 m!5492911))

(assert (=> b!4635882 d!1461822))

(declare-fun d!1461826 () Bool)

(declare-fun res!1946130 () Bool)

(declare-fun e!2892163 () Bool)

(assert (=> d!1461826 (=> res!1946130 e!2892163)))

(assert (=> d!1461826 (= res!1946130 (not ((_ is Cons!51656) oldBucket!40)))))

(assert (=> d!1461826 (= (noDuplicateKeys!1548 oldBucket!40) e!2892163)))

(declare-fun b!4636153 () Bool)

(declare-fun e!2892164 () Bool)

(assert (=> b!4636153 (= e!2892163 e!2892164)))

(declare-fun res!1946131 () Bool)

(assert (=> b!4636153 (=> (not res!1946131) (not e!2892164))))

(assert (=> b!4636153 (= res!1946131 (not (containsKey!2564 (t!358850 oldBucket!40) (_1!29613 (h!57744 oldBucket!40)))))))

(declare-fun b!4636155 () Bool)

(assert (=> b!4636155 (= e!2892164 (noDuplicateKeys!1548 (t!358850 oldBucket!40)))))

(assert (= (and d!1461826 (not res!1946130)) b!4636153))

(assert (= (and b!4636153 res!1946131) b!4636155))

(declare-fun m!5492913 () Bool)

(assert (=> b!4636153 m!5492913))

(assert (=> b!4636155 m!5492679))

(assert (=> start!465812 d!1461826))

(declare-fun d!1461828 () Bool)

(assert (=> d!1461828 (= (eq!863 lt!1798320 (+!1914 lt!1798340 (h!57744 oldBucket!40))) (= (content!8912 (toList!5061 lt!1798320)) (content!8912 (toList!5061 (+!1914 lt!1798340 (h!57744 oldBucket!40))))))))

(declare-fun bs!1030985 () Bool)

(assert (= bs!1030985 d!1461828))

(assert (=> bs!1030985 m!5492701))

(assert (=> bs!1030985 m!5492843))

(assert (=> b!4635880 d!1461828))

(assert (=> b!4635880 d!1461816))

(declare-fun b!4636164 () Bool)

(declare-fun e!2892169 () List!51780)

(assert (=> b!4636164 (= e!2892169 (Cons!51656 (h!57744 oldBucket!40) (removePairForKey!1171 (t!358850 oldBucket!40) key!4968)))))

(declare-fun b!4636162 () Bool)

(declare-fun e!2892170 () List!51780)

(assert (=> b!4636162 (= e!2892170 (t!358850 oldBucket!40))))

(declare-fun d!1461830 () Bool)

(declare-fun lt!1798627 () List!51780)

(assert (=> d!1461830 (not (containsKey!2564 lt!1798627 key!4968))))

(assert (=> d!1461830 (= lt!1798627 e!2892170)))

(declare-fun c!793499 () Bool)

(assert (=> d!1461830 (= c!793499 (and ((_ is Cons!51656) oldBucket!40) (= (_1!29613 (h!57744 oldBucket!40)) key!4968)))))

(assert (=> d!1461830 (noDuplicateKeys!1548 oldBucket!40)))

(assert (=> d!1461830 (= (removePairForKey!1171 oldBucket!40 key!4968) lt!1798627)))

(declare-fun b!4636165 () Bool)

(assert (=> b!4636165 (= e!2892169 Nil!51656)))

(declare-fun b!4636163 () Bool)

(assert (=> b!4636163 (= e!2892170 e!2892169)))

(declare-fun c!793500 () Bool)

(assert (=> b!4636163 (= c!793500 ((_ is Cons!51656) oldBucket!40))))

(assert (= (and d!1461830 c!793499) b!4636162))

(assert (= (and d!1461830 (not c!793499)) b!4636163))

(assert (= (and b!4636163 c!793500) b!4636164))

(assert (= (and b!4636163 (not c!793500)) b!4636165))

(assert (=> b!4636164 m!5492343))

(declare-fun m!5492915 () Bool)

(assert (=> d!1461830 m!5492915))

(assert (=> d!1461830 m!5492345))

(assert (=> b!4635881 d!1461830))

(declare-fun b!4636168 () Bool)

(declare-fun e!2892171 () List!51780)

(assert (=> b!4636168 (= e!2892171 (Cons!51656 (h!57744 lt!1798316) (removePairForKey!1171 (t!358850 lt!1798316) key!4968)))))

(declare-fun b!4636166 () Bool)

(declare-fun e!2892172 () List!51780)

(assert (=> b!4636166 (= e!2892172 (t!358850 lt!1798316))))

(declare-fun d!1461832 () Bool)

(declare-fun lt!1798628 () List!51780)

(assert (=> d!1461832 (not (containsKey!2564 lt!1798628 key!4968))))

(assert (=> d!1461832 (= lt!1798628 e!2892172)))

(declare-fun c!793501 () Bool)

(assert (=> d!1461832 (= c!793501 (and ((_ is Cons!51656) lt!1798316) (= (_1!29613 (h!57744 lt!1798316)) key!4968)))))

(assert (=> d!1461832 (noDuplicateKeys!1548 lt!1798316)))

(assert (=> d!1461832 (= (removePairForKey!1171 lt!1798316 key!4968) lt!1798628)))

(declare-fun b!4636169 () Bool)

(assert (=> b!4636169 (= e!2892171 Nil!51656)))

(declare-fun b!4636167 () Bool)

(assert (=> b!4636167 (= e!2892172 e!2892171)))

(declare-fun c!793502 () Bool)

(assert (=> b!4636167 (= c!793502 ((_ is Cons!51656) lt!1798316))))

(assert (= (and d!1461832 c!793501) b!4636166))

(assert (= (and d!1461832 (not c!793501)) b!4636167))

(assert (= (and b!4636167 c!793502) b!4636168))

(assert (= (and b!4636167 (not c!793502)) b!4636169))

(declare-fun m!5492917 () Bool)

(assert (=> b!4636168 m!5492917))

(declare-fun m!5492919 () Bool)

(assert (=> d!1461832 m!5492919))

(declare-fun m!5492921 () Bool)

(assert (=> d!1461832 m!5492921))

(assert (=> b!4635900 d!1461832))

(declare-fun d!1461834 () Bool)

(assert (=> d!1461834 (= (tail!8183 newBucket!224) (t!358850 newBucket!224))))

(assert (=> b!4635900 d!1461834))

(declare-fun d!1461836 () Bool)

(assert (=> d!1461836 (= (tail!8183 oldBucket!40) (t!358850 oldBucket!40))))

(assert (=> b!4635900 d!1461836))

(declare-fun bs!1031145 () Bool)

(declare-fun b!4636275 () Bool)

(assert (= bs!1031145 (and b!4636275 d!1461806)))

(declare-fun lambda!195063 () Int)

(assert (=> bs!1031145 (not (= lambda!195063 lambda!194973))))

(assert (=> b!4636275 true))

(declare-fun bs!1031146 () Bool)

(declare-fun b!4636273 () Bool)

(assert (= bs!1031146 (and b!4636273 d!1461806)))

(declare-fun lambda!195064 () Int)

(assert (=> bs!1031146 (not (= lambda!195064 lambda!194973))))

(declare-fun bs!1031147 () Bool)

(assert (= bs!1031147 (and b!4636273 b!4636275)))

(assert (=> bs!1031147 (= lambda!195064 lambda!195063)))

(assert (=> b!4636273 true))

(declare-fun lambda!195065 () Int)

(assert (=> bs!1031146 (not (= lambda!195065 lambda!194973))))

(declare-fun lt!1798839 () ListMap!4365)

(assert (=> bs!1031147 (= (= lt!1798839 (ListMap!4366 Nil!51656)) (= lambda!195065 lambda!195063))))

(assert (=> b!4636273 (= (= lt!1798839 (ListMap!4366 Nil!51656)) (= lambda!195065 lambda!195064))))

(assert (=> b!4636273 true))

(declare-fun bs!1031148 () Bool)

(declare-fun d!1461838 () Bool)

(assert (= bs!1031148 (and d!1461838 d!1461806)))

(declare-fun lambda!195066 () Int)

(assert (=> bs!1031148 (not (= lambda!195066 lambda!194973))))

(declare-fun bs!1031149 () Bool)

(assert (= bs!1031149 (and d!1461838 b!4636275)))

(declare-fun lt!1798834 () ListMap!4365)

(assert (=> bs!1031149 (= (= lt!1798834 (ListMap!4366 Nil!51656)) (= lambda!195066 lambda!195063))))

(declare-fun bs!1031150 () Bool)

(assert (= bs!1031150 (and d!1461838 b!4636273)))

(assert (=> bs!1031150 (= (= lt!1798834 (ListMap!4366 Nil!51656)) (= lambda!195066 lambda!195064))))

(assert (=> bs!1031150 (= (= lt!1798834 lt!1798839) (= lambda!195066 lambda!195065))))

(assert (=> d!1461838 true))

(declare-fun bm!323581 () Bool)

(declare-fun call!323588 () Unit!114375)

(declare-fun lemmaContainsAllItsOwnKeys!544 (ListMap!4365) Unit!114375)

(assert (=> bm!323581 (= call!323588 (lemmaContainsAllItsOwnKeys!544 (ListMap!4366 Nil!51656)))))

(declare-fun bm!323582 () Bool)

(declare-fun c!793528 () Bool)

(declare-fun call!323587 () Bool)

(assert (=> bm!323582 (= call!323587 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) (ite c!793528 lambda!195063 lambda!195065)))))

(declare-fun b!4636271 () Bool)

(declare-fun res!1946179 () Bool)

(declare-fun e!2892235 () Bool)

(assert (=> b!4636271 (=> (not res!1946179) (not e!2892235))))

(assert (=> b!4636271 (= res!1946179 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) lambda!195066))))

(declare-fun b!4636272 () Bool)

(assert (=> b!4636272 (= e!2892235 (invariantList!1242 (toList!5061 lt!1798834)))))

(declare-fun e!2892236 () ListMap!4365)

(assert (=> b!4636273 (= e!2892236 lt!1798839)))

(declare-fun lt!1798838 () ListMap!4365)

(assert (=> b!4636273 (= lt!1798838 (+!1914 (ListMap!4366 Nil!51656) (h!57744 (Cons!51656 lt!1798336 lt!1798316))))))

(assert (=> b!4636273 (= lt!1798839 (addToMapMapFromBucket!1009 (t!358850 (Cons!51656 lt!1798336 lt!1798316)) (+!1914 (ListMap!4366 Nil!51656) (h!57744 (Cons!51656 lt!1798336 lt!1798316)))))))

(declare-fun lt!1798828 () Unit!114375)

(assert (=> b!4636273 (= lt!1798828 call!323588)))

(assert (=> b!4636273 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) lambda!195064)))

(declare-fun lt!1798819 () Unit!114375)

(assert (=> b!4636273 (= lt!1798819 lt!1798828)))

(assert (=> b!4636273 (forall!10900 (toList!5061 lt!1798838) lambda!195065)))

(declare-fun lt!1798826 () Unit!114375)

(declare-fun Unit!114405 () Unit!114375)

(assert (=> b!4636273 (= lt!1798826 Unit!114405)))

(assert (=> b!4636273 (forall!10900 (t!358850 (Cons!51656 lt!1798336 lt!1798316)) lambda!195065)))

(declare-fun lt!1798821 () Unit!114375)

(declare-fun Unit!114406 () Unit!114375)

(assert (=> b!4636273 (= lt!1798821 Unit!114406)))

(declare-fun lt!1798829 () Unit!114375)

(declare-fun Unit!114407 () Unit!114375)

(assert (=> b!4636273 (= lt!1798829 Unit!114407)))

(declare-fun lt!1798823 () Unit!114375)

(declare-fun forallContained!3132 (List!51780 Int tuple2!52638) Unit!114375)

(assert (=> b!4636273 (= lt!1798823 (forallContained!3132 (toList!5061 lt!1798838) lambda!195065 (h!57744 (Cons!51656 lt!1798336 lt!1798316))))))

(assert (=> b!4636273 (contains!14779 lt!1798838 (_1!29613 (h!57744 (Cons!51656 lt!1798336 lt!1798316))))))

(declare-fun lt!1798832 () Unit!114375)

(declare-fun Unit!114408 () Unit!114375)

(assert (=> b!4636273 (= lt!1798832 Unit!114408)))

(assert (=> b!4636273 (contains!14779 lt!1798839 (_1!29613 (h!57744 (Cons!51656 lt!1798336 lt!1798316))))))

(declare-fun lt!1798831 () Unit!114375)

(declare-fun Unit!114409 () Unit!114375)

(assert (=> b!4636273 (= lt!1798831 Unit!114409)))

(declare-fun call!323586 () Bool)

(assert (=> b!4636273 call!323586))

(declare-fun lt!1798825 () Unit!114375)

(declare-fun Unit!114410 () Unit!114375)

(assert (=> b!4636273 (= lt!1798825 Unit!114410)))

(assert (=> b!4636273 (forall!10900 (toList!5061 lt!1798838) lambda!195065)))

(declare-fun lt!1798833 () Unit!114375)

(declare-fun Unit!114411 () Unit!114375)

(assert (=> b!4636273 (= lt!1798833 Unit!114411)))

(declare-fun lt!1798820 () Unit!114375)

(declare-fun Unit!114412 () Unit!114375)

(assert (=> b!4636273 (= lt!1798820 Unit!114412)))

(declare-fun lt!1798837 () Unit!114375)

(declare-fun addForallContainsKeyThenBeforeAdding!543 (ListMap!4365 ListMap!4365 K!13020 V!13266) Unit!114375)

(assert (=> b!4636273 (= lt!1798837 (addForallContainsKeyThenBeforeAdding!543 (ListMap!4366 Nil!51656) lt!1798839 (_1!29613 (h!57744 (Cons!51656 lt!1798336 lt!1798316))) (_2!29613 (h!57744 (Cons!51656 lt!1798336 lt!1798316)))))))

(assert (=> b!4636273 call!323587))

(declare-fun lt!1798824 () Unit!114375)

(assert (=> b!4636273 (= lt!1798824 lt!1798837)))

(assert (=> b!4636273 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) lambda!195065)))

(declare-fun lt!1798830 () Unit!114375)

(declare-fun Unit!114413 () Unit!114375)

(assert (=> b!4636273 (= lt!1798830 Unit!114413)))

(declare-fun res!1946181 () Bool)

(assert (=> b!4636273 (= res!1946181 (forall!10900 (Cons!51656 lt!1798336 lt!1798316) lambda!195065))))

(declare-fun e!2892237 () Bool)

(assert (=> b!4636273 (=> (not res!1946181) (not e!2892237))))

(assert (=> b!4636273 e!2892237))

(declare-fun lt!1798822 () Unit!114375)

(declare-fun Unit!114414 () Unit!114375)

(assert (=> b!4636273 (= lt!1798822 Unit!114414)))

(assert (=> b!4636275 (= e!2892236 (ListMap!4366 Nil!51656))))

(declare-fun lt!1798835 () Unit!114375)

(assert (=> b!4636275 (= lt!1798835 call!323588)))

(assert (=> b!4636275 call!323586))

(declare-fun lt!1798836 () Unit!114375)

(assert (=> b!4636275 (= lt!1798836 lt!1798835)))

(assert (=> b!4636275 call!323587))

(declare-fun lt!1798827 () Unit!114375)

(declare-fun Unit!114415 () Unit!114375)

(assert (=> b!4636275 (= lt!1798827 Unit!114415)))

(declare-fun bm!323583 () Bool)

(assert (=> bm!323583 (= call!323586 (forall!10900 (ite c!793528 (toList!5061 (ListMap!4366 Nil!51656)) (Cons!51656 lt!1798336 lt!1798316)) (ite c!793528 lambda!195063 lambda!195065)))))

(declare-fun b!4636274 () Bool)

(assert (=> b!4636274 (= e!2892237 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) lambda!195065))))

(assert (=> d!1461838 e!2892235))

(declare-fun res!1946180 () Bool)

(assert (=> d!1461838 (=> (not res!1946180) (not e!2892235))))

(assert (=> d!1461838 (= res!1946180 (forall!10900 (Cons!51656 lt!1798336 lt!1798316) lambda!195066))))

(assert (=> d!1461838 (= lt!1798834 e!2892236)))

(assert (=> d!1461838 (= c!793528 ((_ is Nil!51656) (Cons!51656 lt!1798336 lt!1798316)))))

(assert (=> d!1461838 (noDuplicateKeys!1548 (Cons!51656 lt!1798336 lt!1798316))))

(assert (=> d!1461838 (= (addToMapMapFromBucket!1009 (Cons!51656 lt!1798336 lt!1798316) (ListMap!4366 Nil!51656)) lt!1798834)))

(assert (= (and d!1461838 c!793528) b!4636275))

(assert (= (and d!1461838 (not c!793528)) b!4636273))

(assert (= (and b!4636273 res!1946181) b!4636274))

(assert (= (or b!4636275 b!4636273) bm!323581))

(assert (= (or b!4636275 b!4636273) bm!323583))

(assert (= (or b!4636275 b!4636273) bm!323582))

(assert (= (and d!1461838 res!1946180) b!4636271))

(assert (= (and b!4636271 res!1946179) b!4636272))

(declare-fun m!5493237 () Bool)

(assert (=> b!4636271 m!5493237))

(declare-fun m!5493239 () Bool)

(assert (=> bm!323581 m!5493239))

(declare-fun m!5493241 () Bool)

(assert (=> bm!323583 m!5493241))

(declare-fun m!5493243 () Bool)

(assert (=> bm!323582 m!5493243))

(declare-fun m!5493245 () Bool)

(assert (=> b!4636272 m!5493245))

(declare-fun m!5493247 () Bool)

(assert (=> d!1461838 m!5493247))

(declare-fun m!5493249 () Bool)

(assert (=> d!1461838 m!5493249))

(declare-fun m!5493251 () Bool)

(assert (=> b!4636274 m!5493251))

(declare-fun m!5493253 () Bool)

(assert (=> b!4636273 m!5493253))

(declare-fun m!5493255 () Bool)

(assert (=> b!4636273 m!5493255))

(declare-fun m!5493257 () Bool)

(assert (=> b!4636273 m!5493257))

(declare-fun m!5493259 () Bool)

(assert (=> b!4636273 m!5493259))

(declare-fun m!5493261 () Bool)

(assert (=> b!4636273 m!5493261))

(assert (=> b!4636273 m!5493251))

(declare-fun m!5493263 () Bool)

(assert (=> b!4636273 m!5493263))

(declare-fun m!5493265 () Bool)

(assert (=> b!4636273 m!5493265))

(assert (=> b!4636273 m!5493255))

(declare-fun m!5493267 () Bool)

(assert (=> b!4636273 m!5493267))

(declare-fun m!5493269 () Bool)

(assert (=> b!4636273 m!5493269))

(declare-fun m!5493271 () Bool)

(assert (=> b!4636273 m!5493271))

(assert (=> b!4636273 m!5493257))

(assert (=> b!4635890 d!1461838))

(declare-fun bs!1031153 () Bool)

(declare-fun b!4636282 () Bool)

(assert (= bs!1031153 (and b!4636282 b!4636273)))

(declare-fun lambda!195068 () Int)

(assert (=> bs!1031153 (= (= (ListMap!4366 Nil!51656) lt!1798839) (= lambda!195068 lambda!195065))))

(assert (=> bs!1031153 (= lambda!195068 lambda!195064)))

(declare-fun bs!1031157 () Bool)

(assert (= bs!1031157 (and b!4636282 b!4636275)))

(assert (=> bs!1031157 (= lambda!195068 lambda!195063)))

(declare-fun bs!1031158 () Bool)

(assert (= bs!1031158 (and b!4636282 d!1461838)))

(assert (=> bs!1031158 (= (= (ListMap!4366 Nil!51656) lt!1798834) (= lambda!195068 lambda!195066))))

(declare-fun bs!1031161 () Bool)

(assert (= bs!1031161 (and b!4636282 d!1461806)))

(assert (=> bs!1031161 (not (= lambda!195068 lambda!194973))))

(assert (=> b!4636282 true))

(declare-fun bs!1031166 () Bool)

(declare-fun b!4636280 () Bool)

(assert (= bs!1031166 (and b!4636280 b!4636273)))

(declare-fun lambda!195069 () Int)

(assert (=> bs!1031166 (= (= (ListMap!4366 Nil!51656) lt!1798839) (= lambda!195069 lambda!195065))))

(assert (=> bs!1031166 (= lambda!195069 lambda!195064)))

(declare-fun bs!1031168 () Bool)

(assert (= bs!1031168 (and b!4636280 b!4636275)))

(assert (=> bs!1031168 (= lambda!195069 lambda!195063)))

(declare-fun bs!1031170 () Bool)

(assert (= bs!1031170 (and b!4636280 b!4636282)))

(assert (=> bs!1031170 (= lambda!195069 lambda!195068)))

(declare-fun bs!1031172 () Bool)

(assert (= bs!1031172 (and b!4636280 d!1461838)))

(assert (=> bs!1031172 (= (= (ListMap!4366 Nil!51656) lt!1798834) (= lambda!195069 lambda!195066))))

(declare-fun bs!1031174 () Bool)

(assert (= bs!1031174 (and b!4636280 d!1461806)))

(assert (=> bs!1031174 (not (= lambda!195069 lambda!194973))))

(assert (=> b!4636280 true))

(declare-fun lt!1798863 () ListMap!4365)

(declare-fun lambda!195070 () Int)

(assert (=> bs!1031166 (= (= lt!1798863 (ListMap!4366 Nil!51656)) (= lambda!195070 lambda!195064))))

(assert (=> bs!1031168 (= (= lt!1798863 (ListMap!4366 Nil!51656)) (= lambda!195070 lambda!195063))))

(assert (=> bs!1031170 (= (= lt!1798863 (ListMap!4366 Nil!51656)) (= lambda!195070 lambda!195068))))

(assert (=> bs!1031172 (= (= lt!1798863 lt!1798834) (= lambda!195070 lambda!195066))))

(assert (=> bs!1031174 (not (= lambda!195070 lambda!194973))))

(assert (=> bs!1031166 (= (= lt!1798863 lt!1798839) (= lambda!195070 lambda!195065))))

(assert (=> b!4636280 (= (= lt!1798863 (ListMap!4366 Nil!51656)) (= lambda!195070 lambda!195069))))

(assert (=> b!4636280 true))

(declare-fun bs!1031179 () Bool)

(declare-fun d!1461908 () Bool)

(assert (= bs!1031179 (and d!1461908 b!4636273)))

(declare-fun lt!1798858 () ListMap!4365)

(declare-fun lambda!195071 () Int)

(assert (=> bs!1031179 (= (= lt!1798858 (ListMap!4366 Nil!51656)) (= lambda!195071 lambda!195064))))

(declare-fun bs!1031180 () Bool)

(assert (= bs!1031180 (and d!1461908 b!4636282)))

(assert (=> bs!1031180 (= (= lt!1798858 (ListMap!4366 Nil!51656)) (= lambda!195071 lambda!195068))))

(declare-fun bs!1031182 () Bool)

(assert (= bs!1031182 (and d!1461908 d!1461838)))

(assert (=> bs!1031182 (= (= lt!1798858 lt!1798834) (= lambda!195071 lambda!195066))))

(declare-fun bs!1031184 () Bool)

(assert (= bs!1031184 (and d!1461908 d!1461806)))

(assert (=> bs!1031184 (not (= lambda!195071 lambda!194973))))

(assert (=> bs!1031179 (= (= lt!1798858 lt!1798839) (= lambda!195071 lambda!195065))))

(declare-fun bs!1031185 () Bool)

(assert (= bs!1031185 (and d!1461908 b!4636280)))

(assert (=> bs!1031185 (= (= lt!1798858 (ListMap!4366 Nil!51656)) (= lambda!195071 lambda!195069))))

(assert (=> bs!1031185 (= (= lt!1798858 lt!1798863) (= lambda!195071 lambda!195070))))

(declare-fun bs!1031186 () Bool)

(assert (= bs!1031186 (and d!1461908 b!4636275)))

(assert (=> bs!1031186 (= (= lt!1798858 (ListMap!4366 Nil!51656)) (= lambda!195071 lambda!195063))))

(assert (=> d!1461908 true))

(declare-fun bm!323584 () Bool)

(declare-fun call!323591 () Unit!114375)

(assert (=> bm!323584 (= call!323591 (lemmaContainsAllItsOwnKeys!544 (ListMap!4366 Nil!51656)))))

(declare-fun call!323590 () Bool)

(declare-fun c!793529 () Bool)

(declare-fun bm!323585 () Bool)

(assert (=> bm!323585 (= call!323590 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) (ite c!793529 lambda!195068 lambda!195070)))))

(declare-fun b!4636278 () Bool)

(declare-fun res!1946182 () Bool)

(declare-fun e!2892238 () Bool)

(assert (=> b!4636278 (=> (not res!1946182) (not e!2892238))))

(assert (=> b!4636278 (= res!1946182 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) lambda!195071))))

(declare-fun b!4636279 () Bool)

(assert (=> b!4636279 (= e!2892238 (invariantList!1242 (toList!5061 lt!1798858)))))

(declare-fun e!2892239 () ListMap!4365)

(assert (=> b!4636280 (= e!2892239 lt!1798863)))

(declare-fun lt!1798862 () ListMap!4365)

(assert (=> b!4636280 (= lt!1798862 (+!1914 (ListMap!4366 Nil!51656) (h!57744 (Cons!51656 lt!1798342 lt!1798327))))))

(assert (=> b!4636280 (= lt!1798863 (addToMapMapFromBucket!1009 (t!358850 (Cons!51656 lt!1798342 lt!1798327)) (+!1914 (ListMap!4366 Nil!51656) (h!57744 (Cons!51656 lt!1798342 lt!1798327)))))))

(declare-fun lt!1798852 () Unit!114375)

(assert (=> b!4636280 (= lt!1798852 call!323591)))

(assert (=> b!4636280 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) lambda!195069)))

(declare-fun lt!1798843 () Unit!114375)

(assert (=> b!4636280 (= lt!1798843 lt!1798852)))

(assert (=> b!4636280 (forall!10900 (toList!5061 lt!1798862) lambda!195070)))

(declare-fun lt!1798850 () Unit!114375)

(declare-fun Unit!114419 () Unit!114375)

(assert (=> b!4636280 (= lt!1798850 Unit!114419)))

(assert (=> b!4636280 (forall!10900 (t!358850 (Cons!51656 lt!1798342 lt!1798327)) lambda!195070)))

(declare-fun lt!1798845 () Unit!114375)

(declare-fun Unit!114421 () Unit!114375)

(assert (=> b!4636280 (= lt!1798845 Unit!114421)))

(declare-fun lt!1798853 () Unit!114375)

(declare-fun Unit!114423 () Unit!114375)

(assert (=> b!4636280 (= lt!1798853 Unit!114423)))

(declare-fun lt!1798847 () Unit!114375)

(assert (=> b!4636280 (= lt!1798847 (forallContained!3132 (toList!5061 lt!1798862) lambda!195070 (h!57744 (Cons!51656 lt!1798342 lt!1798327))))))

(assert (=> b!4636280 (contains!14779 lt!1798862 (_1!29613 (h!57744 (Cons!51656 lt!1798342 lt!1798327))))))

(declare-fun lt!1798856 () Unit!114375)

(declare-fun Unit!114425 () Unit!114375)

(assert (=> b!4636280 (= lt!1798856 Unit!114425)))

(assert (=> b!4636280 (contains!14779 lt!1798863 (_1!29613 (h!57744 (Cons!51656 lt!1798342 lt!1798327))))))

(declare-fun lt!1798855 () Unit!114375)

(declare-fun Unit!114428 () Unit!114375)

(assert (=> b!4636280 (= lt!1798855 Unit!114428)))

(declare-fun call!323589 () Bool)

(assert (=> b!4636280 call!323589))

(declare-fun lt!1798849 () Unit!114375)

(declare-fun Unit!114429 () Unit!114375)

(assert (=> b!4636280 (= lt!1798849 Unit!114429)))

(assert (=> b!4636280 (forall!10900 (toList!5061 lt!1798862) lambda!195070)))

(declare-fun lt!1798857 () Unit!114375)

(declare-fun Unit!114430 () Unit!114375)

(assert (=> b!4636280 (= lt!1798857 Unit!114430)))

(declare-fun lt!1798844 () Unit!114375)

(declare-fun Unit!114432 () Unit!114375)

(assert (=> b!4636280 (= lt!1798844 Unit!114432)))

(declare-fun lt!1798861 () Unit!114375)

(assert (=> b!4636280 (= lt!1798861 (addForallContainsKeyThenBeforeAdding!543 (ListMap!4366 Nil!51656) lt!1798863 (_1!29613 (h!57744 (Cons!51656 lt!1798342 lt!1798327))) (_2!29613 (h!57744 (Cons!51656 lt!1798342 lt!1798327)))))))

(assert (=> b!4636280 call!323590))

(declare-fun lt!1798848 () Unit!114375)

(assert (=> b!4636280 (= lt!1798848 lt!1798861)))

(assert (=> b!4636280 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) lambda!195070)))

(declare-fun lt!1798854 () Unit!114375)

(declare-fun Unit!114434 () Unit!114375)

(assert (=> b!4636280 (= lt!1798854 Unit!114434)))

(declare-fun res!1946184 () Bool)

(assert (=> b!4636280 (= res!1946184 (forall!10900 (Cons!51656 lt!1798342 lt!1798327) lambda!195070))))

(declare-fun e!2892240 () Bool)

(assert (=> b!4636280 (=> (not res!1946184) (not e!2892240))))

(assert (=> b!4636280 e!2892240))

(declare-fun lt!1798846 () Unit!114375)

(declare-fun Unit!114435 () Unit!114375)

(assert (=> b!4636280 (= lt!1798846 Unit!114435)))

(assert (=> b!4636282 (= e!2892239 (ListMap!4366 Nil!51656))))

(declare-fun lt!1798859 () Unit!114375)

(assert (=> b!4636282 (= lt!1798859 call!323591)))

(assert (=> b!4636282 call!323589))

(declare-fun lt!1798860 () Unit!114375)

(assert (=> b!4636282 (= lt!1798860 lt!1798859)))

(assert (=> b!4636282 call!323590))

(declare-fun lt!1798851 () Unit!114375)

(declare-fun Unit!114437 () Unit!114375)

(assert (=> b!4636282 (= lt!1798851 Unit!114437)))

(declare-fun bm!323586 () Bool)

(assert (=> bm!323586 (= call!323589 (forall!10900 (ite c!793529 (toList!5061 (ListMap!4366 Nil!51656)) (Cons!51656 lt!1798342 lt!1798327)) (ite c!793529 lambda!195068 lambda!195070)))))

(declare-fun b!4636281 () Bool)

(assert (=> b!4636281 (= e!2892240 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) lambda!195070))))

(assert (=> d!1461908 e!2892238))

(declare-fun res!1946183 () Bool)

(assert (=> d!1461908 (=> (not res!1946183) (not e!2892238))))

(assert (=> d!1461908 (= res!1946183 (forall!10900 (Cons!51656 lt!1798342 lt!1798327) lambda!195071))))

(assert (=> d!1461908 (= lt!1798858 e!2892239)))

(assert (=> d!1461908 (= c!793529 ((_ is Nil!51656) (Cons!51656 lt!1798342 lt!1798327)))))

(assert (=> d!1461908 (noDuplicateKeys!1548 (Cons!51656 lt!1798342 lt!1798327))))

(assert (=> d!1461908 (= (addToMapMapFromBucket!1009 (Cons!51656 lt!1798342 lt!1798327) (ListMap!4366 Nil!51656)) lt!1798858)))

(assert (= (and d!1461908 c!793529) b!4636282))

(assert (= (and d!1461908 (not c!793529)) b!4636280))

(assert (= (and b!4636280 res!1946184) b!4636281))

(assert (= (or b!4636282 b!4636280) bm!323584))

(assert (= (or b!4636282 b!4636280) bm!323586))

(assert (= (or b!4636282 b!4636280) bm!323585))

(assert (= (and d!1461908 res!1946183) b!4636278))

(assert (= (and b!4636278 res!1946182) b!4636279))

(declare-fun m!5493289 () Bool)

(assert (=> b!4636278 m!5493289))

(assert (=> bm!323584 m!5493239))

(declare-fun m!5493291 () Bool)

(assert (=> bm!323586 m!5493291))

(declare-fun m!5493293 () Bool)

(assert (=> bm!323585 m!5493293))

(declare-fun m!5493295 () Bool)

(assert (=> b!4636279 m!5493295))

(declare-fun m!5493297 () Bool)

(assert (=> d!1461908 m!5493297))

(declare-fun m!5493299 () Bool)

(assert (=> d!1461908 m!5493299))

(declare-fun m!5493301 () Bool)

(assert (=> b!4636281 m!5493301))

(declare-fun m!5493303 () Bool)

(assert (=> b!4636280 m!5493303))

(declare-fun m!5493305 () Bool)

(assert (=> b!4636280 m!5493305))

(declare-fun m!5493307 () Bool)

(assert (=> b!4636280 m!5493307))

(declare-fun m!5493309 () Bool)

(assert (=> b!4636280 m!5493309))

(declare-fun m!5493311 () Bool)

(assert (=> b!4636280 m!5493311))

(assert (=> b!4636280 m!5493301))

(declare-fun m!5493313 () Bool)

(assert (=> b!4636280 m!5493313))

(declare-fun m!5493315 () Bool)

(assert (=> b!4636280 m!5493315))

(assert (=> b!4636280 m!5493305))

(declare-fun m!5493317 () Bool)

(assert (=> b!4636280 m!5493317))

(declare-fun m!5493319 () Bool)

(assert (=> b!4636280 m!5493319))

(declare-fun m!5493321 () Bool)

(assert (=> b!4636280 m!5493321))

(assert (=> b!4636280 m!5493307))

(assert (=> b!4635890 d!1461908))

(declare-fun d!1461920 () Bool)

(declare-fun e!2892247 () Bool)

(assert (=> d!1461920 e!2892247))

(declare-fun res!1946185 () Bool)

(assert (=> d!1461920 (=> (not res!1946185) (not e!2892247))))

(declare-fun lt!1798866 () ListMap!4365)

(assert (=> d!1461920 (= res!1946185 (contains!14779 lt!1798866 (_1!29613 (h!57744 oldBucket!40))))))

(declare-fun lt!1798868 () List!51780)

(assert (=> d!1461920 (= lt!1798866 (ListMap!4366 lt!1798868))))

(declare-fun lt!1798867 () Unit!114375)

(declare-fun lt!1798865 () Unit!114375)

(assert (=> d!1461920 (= lt!1798867 lt!1798865)))

(assert (=> d!1461920 (= (getValueByKey!1528 lt!1798868 (_1!29613 (h!57744 oldBucket!40))) (Some!11709 (_2!29613 (h!57744 oldBucket!40))))))

(assert (=> d!1461920 (= lt!1798865 (lemmaContainsTupThenGetReturnValue!886 lt!1798868 (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40))))))

(assert (=> d!1461920 (= lt!1798868 (insertNoDuplicatedKeys!394 (toList!5061 (extractMap!1604 (Cons!51657 (tuple2!52641 hash!414 lt!1798316) Nil!51657))) (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40))))))

(assert (=> d!1461920 (= (+!1914 (extractMap!1604 (Cons!51657 (tuple2!52641 hash!414 lt!1798316) Nil!51657)) (h!57744 oldBucket!40)) lt!1798866)))

(declare-fun b!4636293 () Bool)

(declare-fun res!1946186 () Bool)

(assert (=> b!4636293 (=> (not res!1946186) (not e!2892247))))

(assert (=> b!4636293 (= res!1946186 (= (getValueByKey!1528 (toList!5061 lt!1798866) (_1!29613 (h!57744 oldBucket!40))) (Some!11709 (_2!29613 (h!57744 oldBucket!40)))))))

(declare-fun b!4636294 () Bool)

(assert (=> b!4636294 (= e!2892247 (contains!14783 (toList!5061 lt!1798866) (h!57744 oldBucket!40)))))

(assert (= (and d!1461920 res!1946185) b!4636293))

(assert (= (and b!4636293 res!1946186) b!4636294))

(declare-fun m!5493323 () Bool)

(assert (=> d!1461920 m!5493323))

(declare-fun m!5493325 () Bool)

(assert (=> d!1461920 m!5493325))

(declare-fun m!5493327 () Bool)

(assert (=> d!1461920 m!5493327))

(declare-fun m!5493329 () Bool)

(assert (=> d!1461920 m!5493329))

(declare-fun m!5493331 () Bool)

(assert (=> b!4636293 m!5493331))

(declare-fun m!5493333 () Bool)

(assert (=> b!4636294 m!5493333))

(assert (=> b!4635890 d!1461920))

(declare-fun d!1461922 () Bool)

(assert (=> d!1461922 (eq!863 (addToMapMapFromBucket!1009 (Cons!51656 lt!1798342 lt!1798327) (ListMap!4366 Nil!51656)) (+!1914 (addToMapMapFromBucket!1009 lt!1798327 (ListMap!4366 Nil!51656)) lt!1798342))))

(declare-fun lt!1798871 () Unit!114375)

(declare-fun choose!31696 (tuple2!52638 List!51780 ListMap!4365) Unit!114375)

(assert (=> d!1461922 (= lt!1798871 (choose!31696 lt!1798342 lt!1798327 (ListMap!4366 Nil!51656)))))

(assert (=> d!1461922 (noDuplicateKeys!1548 lt!1798327)))

(assert (=> d!1461922 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!114 lt!1798342 lt!1798327 (ListMap!4366 Nil!51656)) lt!1798871)))

(declare-fun bs!1031187 () Bool)

(assert (= bs!1031187 d!1461922))

(declare-fun m!5493335 () Bool)

(assert (=> bs!1031187 m!5493335))

(assert (=> bs!1031187 m!5492291))

(assert (=> bs!1031187 m!5492297))

(assert (=> bs!1031187 m!5492299))

(declare-fun m!5493337 () Bool)

(assert (=> bs!1031187 m!5493337))

(assert (=> bs!1031187 m!5492297))

(assert (=> bs!1031187 m!5492291))

(assert (=> bs!1031187 m!5492299))

(assert (=> bs!1031187 m!5492305))

(assert (=> b!4635890 d!1461922))

(declare-fun d!1461924 () Bool)

(assert (=> d!1461924 (= (head!9682 oldBucket!40) (h!57744 oldBucket!40))))

(assert (=> b!4635890 d!1461924))

(declare-fun bs!1031188 () Bool)

(declare-fun b!4636299 () Bool)

(assert (= bs!1031188 (and b!4636299 d!1461908)))

(declare-fun lambda!195072 () Int)

(assert (=> bs!1031188 (= (= (ListMap!4366 Nil!51656) lt!1798858) (= lambda!195072 lambda!195071))))

(declare-fun bs!1031189 () Bool)

(assert (= bs!1031189 (and b!4636299 b!4636273)))

(assert (=> bs!1031189 (= lambda!195072 lambda!195064)))

(declare-fun bs!1031190 () Bool)

(assert (= bs!1031190 (and b!4636299 b!4636282)))

(assert (=> bs!1031190 (= lambda!195072 lambda!195068)))

(declare-fun bs!1031191 () Bool)

(assert (= bs!1031191 (and b!4636299 d!1461838)))

(assert (=> bs!1031191 (= (= (ListMap!4366 Nil!51656) lt!1798834) (= lambda!195072 lambda!195066))))

(declare-fun bs!1031192 () Bool)

(assert (= bs!1031192 (and b!4636299 d!1461806)))

(assert (=> bs!1031192 (not (= lambda!195072 lambda!194973))))

(assert (=> bs!1031189 (= (= (ListMap!4366 Nil!51656) lt!1798839) (= lambda!195072 lambda!195065))))

(declare-fun bs!1031193 () Bool)

(assert (= bs!1031193 (and b!4636299 b!4636280)))

(assert (=> bs!1031193 (= lambda!195072 lambda!195069)))

(assert (=> bs!1031193 (= (= (ListMap!4366 Nil!51656) lt!1798863) (= lambda!195072 lambda!195070))))

(declare-fun bs!1031194 () Bool)

(assert (= bs!1031194 (and b!4636299 b!4636275)))

(assert (=> bs!1031194 (= lambda!195072 lambda!195063)))

(assert (=> b!4636299 true))

(declare-fun bs!1031195 () Bool)

(declare-fun b!4636297 () Bool)

(assert (= bs!1031195 (and b!4636297 d!1461908)))

(declare-fun lambda!195073 () Int)

(assert (=> bs!1031195 (= (= (ListMap!4366 Nil!51656) lt!1798858) (= lambda!195073 lambda!195071))))

(declare-fun bs!1031196 () Bool)

(assert (= bs!1031196 (and b!4636297 b!4636299)))

(assert (=> bs!1031196 (= lambda!195073 lambda!195072)))

(declare-fun bs!1031197 () Bool)

(assert (= bs!1031197 (and b!4636297 b!4636273)))

(assert (=> bs!1031197 (= lambda!195073 lambda!195064)))

(declare-fun bs!1031198 () Bool)

(assert (= bs!1031198 (and b!4636297 b!4636282)))

(assert (=> bs!1031198 (= lambda!195073 lambda!195068)))

(declare-fun bs!1031199 () Bool)

(assert (= bs!1031199 (and b!4636297 d!1461838)))

(assert (=> bs!1031199 (= (= (ListMap!4366 Nil!51656) lt!1798834) (= lambda!195073 lambda!195066))))

(declare-fun bs!1031200 () Bool)

(assert (= bs!1031200 (and b!4636297 d!1461806)))

(assert (=> bs!1031200 (not (= lambda!195073 lambda!194973))))

(assert (=> bs!1031197 (= (= (ListMap!4366 Nil!51656) lt!1798839) (= lambda!195073 lambda!195065))))

(declare-fun bs!1031201 () Bool)

(assert (= bs!1031201 (and b!4636297 b!4636280)))

(assert (=> bs!1031201 (= lambda!195073 lambda!195069)))

(assert (=> bs!1031201 (= (= (ListMap!4366 Nil!51656) lt!1798863) (= lambda!195073 lambda!195070))))

(declare-fun bs!1031202 () Bool)

(assert (= bs!1031202 (and b!4636297 b!4636275)))

(assert (=> bs!1031202 (= lambda!195073 lambda!195063)))

(assert (=> b!4636297 true))

(declare-fun lt!1798892 () ListMap!4365)

(declare-fun lambda!195074 () Int)

(assert (=> b!4636297 (= (= lt!1798892 (ListMap!4366 Nil!51656)) (= lambda!195074 lambda!195073))))

(assert (=> bs!1031195 (= (= lt!1798892 lt!1798858) (= lambda!195074 lambda!195071))))

(assert (=> bs!1031196 (= (= lt!1798892 (ListMap!4366 Nil!51656)) (= lambda!195074 lambda!195072))))

(assert (=> bs!1031197 (= (= lt!1798892 (ListMap!4366 Nil!51656)) (= lambda!195074 lambda!195064))))

(assert (=> bs!1031198 (= (= lt!1798892 (ListMap!4366 Nil!51656)) (= lambda!195074 lambda!195068))))

(assert (=> bs!1031199 (= (= lt!1798892 lt!1798834) (= lambda!195074 lambda!195066))))

(assert (=> bs!1031200 (not (= lambda!195074 lambda!194973))))

(assert (=> bs!1031197 (= (= lt!1798892 lt!1798839) (= lambda!195074 lambda!195065))))

(assert (=> bs!1031201 (= (= lt!1798892 (ListMap!4366 Nil!51656)) (= lambda!195074 lambda!195069))))

(assert (=> bs!1031201 (= (= lt!1798892 lt!1798863) (= lambda!195074 lambda!195070))))

(assert (=> bs!1031202 (= (= lt!1798892 (ListMap!4366 Nil!51656)) (= lambda!195074 lambda!195063))))

(assert (=> b!4636297 true))

(declare-fun bs!1031203 () Bool)

(declare-fun d!1461926 () Bool)

(assert (= bs!1031203 (and d!1461926 b!4636297)))

(declare-fun lt!1798887 () ListMap!4365)

(declare-fun lambda!195075 () Int)

(assert (=> bs!1031203 (= (= lt!1798887 (ListMap!4366 Nil!51656)) (= lambda!195075 lambda!195073))))

(declare-fun bs!1031204 () Bool)

(assert (= bs!1031204 (and d!1461926 d!1461908)))

(assert (=> bs!1031204 (= (= lt!1798887 lt!1798858) (= lambda!195075 lambda!195071))))

(assert (=> bs!1031203 (= (= lt!1798887 lt!1798892) (= lambda!195075 lambda!195074))))

(declare-fun bs!1031205 () Bool)

(assert (= bs!1031205 (and d!1461926 b!4636299)))

(assert (=> bs!1031205 (= (= lt!1798887 (ListMap!4366 Nil!51656)) (= lambda!195075 lambda!195072))))

(declare-fun bs!1031206 () Bool)

(assert (= bs!1031206 (and d!1461926 b!4636273)))

(assert (=> bs!1031206 (= (= lt!1798887 (ListMap!4366 Nil!51656)) (= lambda!195075 lambda!195064))))

(declare-fun bs!1031207 () Bool)

(assert (= bs!1031207 (and d!1461926 b!4636282)))

(assert (=> bs!1031207 (= (= lt!1798887 (ListMap!4366 Nil!51656)) (= lambda!195075 lambda!195068))))

(declare-fun bs!1031208 () Bool)

(assert (= bs!1031208 (and d!1461926 d!1461838)))

(assert (=> bs!1031208 (= (= lt!1798887 lt!1798834) (= lambda!195075 lambda!195066))))

(declare-fun bs!1031209 () Bool)

(assert (= bs!1031209 (and d!1461926 d!1461806)))

(assert (=> bs!1031209 (not (= lambda!195075 lambda!194973))))

(assert (=> bs!1031206 (= (= lt!1798887 lt!1798839) (= lambda!195075 lambda!195065))))

(declare-fun bs!1031210 () Bool)

(assert (= bs!1031210 (and d!1461926 b!4636280)))

(assert (=> bs!1031210 (= (= lt!1798887 (ListMap!4366 Nil!51656)) (= lambda!195075 lambda!195069))))

(assert (=> bs!1031210 (= (= lt!1798887 lt!1798863) (= lambda!195075 lambda!195070))))

(declare-fun bs!1031211 () Bool)

(assert (= bs!1031211 (and d!1461926 b!4636275)))

(assert (=> bs!1031211 (= (= lt!1798887 (ListMap!4366 Nil!51656)) (= lambda!195075 lambda!195063))))

(assert (=> d!1461926 true))

(declare-fun bm!323587 () Bool)

(declare-fun call!323594 () Unit!114375)

(assert (=> bm!323587 (= call!323594 (lemmaContainsAllItsOwnKeys!544 (ListMap!4366 Nil!51656)))))

(declare-fun c!793532 () Bool)

(declare-fun bm!323588 () Bool)

(declare-fun call!323593 () Bool)

(assert (=> bm!323588 (= call!323593 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) (ite c!793532 lambda!195072 lambda!195074)))))

(declare-fun b!4636295 () Bool)

(declare-fun res!1946187 () Bool)

(declare-fun e!2892248 () Bool)

(assert (=> b!4636295 (=> (not res!1946187) (not e!2892248))))

(assert (=> b!4636295 (= res!1946187 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) lambda!195075))))

(declare-fun b!4636296 () Bool)

(assert (=> b!4636296 (= e!2892248 (invariantList!1242 (toList!5061 lt!1798887)))))

(declare-fun e!2892249 () ListMap!4365)

(assert (=> b!4636297 (= e!2892249 lt!1798892)))

(declare-fun lt!1798891 () ListMap!4365)

(assert (=> b!4636297 (= lt!1798891 (+!1914 (ListMap!4366 Nil!51656) (h!57744 lt!1798327)))))

(assert (=> b!4636297 (= lt!1798892 (addToMapMapFromBucket!1009 (t!358850 lt!1798327) (+!1914 (ListMap!4366 Nil!51656) (h!57744 lt!1798327))))))

(declare-fun lt!1798881 () Unit!114375)

(assert (=> b!4636297 (= lt!1798881 call!323594)))

(assert (=> b!4636297 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) lambda!195073)))

(declare-fun lt!1798872 () Unit!114375)

(assert (=> b!4636297 (= lt!1798872 lt!1798881)))

(assert (=> b!4636297 (forall!10900 (toList!5061 lt!1798891) lambda!195074)))

(declare-fun lt!1798879 () Unit!114375)

(declare-fun Unit!114438 () Unit!114375)

(assert (=> b!4636297 (= lt!1798879 Unit!114438)))

(assert (=> b!4636297 (forall!10900 (t!358850 lt!1798327) lambda!195074)))

(declare-fun lt!1798874 () Unit!114375)

(declare-fun Unit!114439 () Unit!114375)

(assert (=> b!4636297 (= lt!1798874 Unit!114439)))

(declare-fun lt!1798882 () Unit!114375)

(declare-fun Unit!114440 () Unit!114375)

(assert (=> b!4636297 (= lt!1798882 Unit!114440)))

(declare-fun lt!1798876 () Unit!114375)

(assert (=> b!4636297 (= lt!1798876 (forallContained!3132 (toList!5061 lt!1798891) lambda!195074 (h!57744 lt!1798327)))))

(assert (=> b!4636297 (contains!14779 lt!1798891 (_1!29613 (h!57744 lt!1798327)))))

(declare-fun lt!1798885 () Unit!114375)

(declare-fun Unit!114441 () Unit!114375)

(assert (=> b!4636297 (= lt!1798885 Unit!114441)))

(assert (=> b!4636297 (contains!14779 lt!1798892 (_1!29613 (h!57744 lt!1798327)))))

(declare-fun lt!1798884 () Unit!114375)

(declare-fun Unit!114442 () Unit!114375)

(assert (=> b!4636297 (= lt!1798884 Unit!114442)))

(declare-fun call!323592 () Bool)

(assert (=> b!4636297 call!323592))

(declare-fun lt!1798878 () Unit!114375)

(declare-fun Unit!114443 () Unit!114375)

(assert (=> b!4636297 (= lt!1798878 Unit!114443)))

(assert (=> b!4636297 (forall!10900 (toList!5061 lt!1798891) lambda!195074)))

(declare-fun lt!1798886 () Unit!114375)

(declare-fun Unit!114444 () Unit!114375)

(assert (=> b!4636297 (= lt!1798886 Unit!114444)))

(declare-fun lt!1798873 () Unit!114375)

(declare-fun Unit!114445 () Unit!114375)

(assert (=> b!4636297 (= lt!1798873 Unit!114445)))

(declare-fun lt!1798890 () Unit!114375)

(assert (=> b!4636297 (= lt!1798890 (addForallContainsKeyThenBeforeAdding!543 (ListMap!4366 Nil!51656) lt!1798892 (_1!29613 (h!57744 lt!1798327)) (_2!29613 (h!57744 lt!1798327))))))

(assert (=> b!4636297 call!323593))

(declare-fun lt!1798877 () Unit!114375)

(assert (=> b!4636297 (= lt!1798877 lt!1798890)))

(assert (=> b!4636297 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) lambda!195074)))

(declare-fun lt!1798883 () Unit!114375)

(declare-fun Unit!114449 () Unit!114375)

(assert (=> b!4636297 (= lt!1798883 Unit!114449)))

(declare-fun res!1946189 () Bool)

(assert (=> b!4636297 (= res!1946189 (forall!10900 lt!1798327 lambda!195074))))

(declare-fun e!2892250 () Bool)

(assert (=> b!4636297 (=> (not res!1946189) (not e!2892250))))

(assert (=> b!4636297 e!2892250))

(declare-fun lt!1798875 () Unit!114375)

(declare-fun Unit!114451 () Unit!114375)

(assert (=> b!4636297 (= lt!1798875 Unit!114451)))

(assert (=> b!4636299 (= e!2892249 (ListMap!4366 Nil!51656))))

(declare-fun lt!1798888 () Unit!114375)

(assert (=> b!4636299 (= lt!1798888 call!323594)))

(assert (=> b!4636299 call!323592))

(declare-fun lt!1798889 () Unit!114375)

(assert (=> b!4636299 (= lt!1798889 lt!1798888)))

(assert (=> b!4636299 call!323593))

(declare-fun lt!1798880 () Unit!114375)

(declare-fun Unit!114454 () Unit!114375)

(assert (=> b!4636299 (= lt!1798880 Unit!114454)))

(declare-fun bm!323589 () Bool)

(assert (=> bm!323589 (= call!323592 (forall!10900 (ite c!793532 (toList!5061 (ListMap!4366 Nil!51656)) lt!1798327) (ite c!793532 lambda!195072 lambda!195074)))))

(declare-fun b!4636298 () Bool)

(assert (=> b!4636298 (= e!2892250 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) lambda!195074))))

(assert (=> d!1461926 e!2892248))

(declare-fun res!1946188 () Bool)

(assert (=> d!1461926 (=> (not res!1946188) (not e!2892248))))

(assert (=> d!1461926 (= res!1946188 (forall!10900 lt!1798327 lambda!195075))))

(assert (=> d!1461926 (= lt!1798887 e!2892249)))

(assert (=> d!1461926 (= c!793532 ((_ is Nil!51656) lt!1798327))))

(assert (=> d!1461926 (noDuplicateKeys!1548 lt!1798327)))

(assert (=> d!1461926 (= (addToMapMapFromBucket!1009 lt!1798327 (ListMap!4366 Nil!51656)) lt!1798887)))

(assert (= (and d!1461926 c!793532) b!4636299))

(assert (= (and d!1461926 (not c!793532)) b!4636297))

(assert (= (and b!4636297 res!1946189) b!4636298))

(assert (= (or b!4636299 b!4636297) bm!323587))

(assert (= (or b!4636299 b!4636297) bm!323589))

(assert (= (or b!4636299 b!4636297) bm!323588))

(assert (= (and d!1461926 res!1946188) b!4636295))

(assert (= (and b!4636295 res!1946187) b!4636296))

(declare-fun m!5493339 () Bool)

(assert (=> b!4636295 m!5493339))

(assert (=> bm!323587 m!5493239))

(declare-fun m!5493341 () Bool)

(assert (=> bm!323589 m!5493341))

(declare-fun m!5493343 () Bool)

(assert (=> bm!323588 m!5493343))

(declare-fun m!5493345 () Bool)

(assert (=> b!4636296 m!5493345))

(declare-fun m!5493347 () Bool)

(assert (=> d!1461926 m!5493347))

(assert (=> d!1461926 m!5493337))

(declare-fun m!5493349 () Bool)

(assert (=> b!4636298 m!5493349))

(declare-fun m!5493351 () Bool)

(assert (=> b!4636297 m!5493351))

(declare-fun m!5493353 () Bool)

(assert (=> b!4636297 m!5493353))

(declare-fun m!5493355 () Bool)

(assert (=> b!4636297 m!5493355))

(declare-fun m!5493357 () Bool)

(assert (=> b!4636297 m!5493357))

(declare-fun m!5493359 () Bool)

(assert (=> b!4636297 m!5493359))

(assert (=> b!4636297 m!5493349))

(declare-fun m!5493361 () Bool)

(assert (=> b!4636297 m!5493361))

(declare-fun m!5493363 () Bool)

(assert (=> b!4636297 m!5493363))

(assert (=> b!4636297 m!5493353))

(declare-fun m!5493365 () Bool)

(assert (=> b!4636297 m!5493365))

(declare-fun m!5493367 () Bool)

(assert (=> b!4636297 m!5493367))

(declare-fun m!5493369 () Bool)

(assert (=> b!4636297 m!5493369))

(assert (=> b!4636297 m!5493355))

(assert (=> b!4635890 d!1461926))

(declare-fun d!1461928 () Bool)

(assert (=> d!1461928 (= (head!9682 newBucket!224) (h!57744 newBucket!224))))

(assert (=> b!4635890 d!1461928))

(declare-fun d!1461930 () Bool)

(declare-fun e!2892251 () Bool)

(assert (=> d!1461930 e!2892251))

(declare-fun res!1946190 () Bool)

(assert (=> d!1461930 (=> (not res!1946190) (not e!2892251))))

(declare-fun lt!1798894 () ListMap!4365)

(assert (=> d!1461930 (= res!1946190 (contains!14779 lt!1798894 (_1!29613 lt!1798342)))))

(declare-fun lt!1798896 () List!51780)

(assert (=> d!1461930 (= lt!1798894 (ListMap!4366 lt!1798896))))

(declare-fun lt!1798895 () Unit!114375)

(declare-fun lt!1798893 () Unit!114375)

(assert (=> d!1461930 (= lt!1798895 lt!1798893)))

(assert (=> d!1461930 (= (getValueByKey!1528 lt!1798896 (_1!29613 lt!1798342)) (Some!11709 (_2!29613 lt!1798342)))))

(assert (=> d!1461930 (= lt!1798893 (lemmaContainsTupThenGetReturnValue!886 lt!1798896 (_1!29613 lt!1798342) (_2!29613 lt!1798342)))))

(assert (=> d!1461930 (= lt!1798896 (insertNoDuplicatedKeys!394 (toList!5061 (addToMapMapFromBucket!1009 lt!1798327 (ListMap!4366 Nil!51656))) (_1!29613 lt!1798342) (_2!29613 lt!1798342)))))

(assert (=> d!1461930 (= (+!1914 (addToMapMapFromBucket!1009 lt!1798327 (ListMap!4366 Nil!51656)) lt!1798342) lt!1798894)))

(declare-fun b!4636300 () Bool)

(declare-fun res!1946191 () Bool)

(assert (=> b!4636300 (=> (not res!1946191) (not e!2892251))))

(assert (=> b!4636300 (= res!1946191 (= (getValueByKey!1528 (toList!5061 lt!1798894) (_1!29613 lt!1798342)) (Some!11709 (_2!29613 lt!1798342))))))

(declare-fun b!4636301 () Bool)

(assert (=> b!4636301 (= e!2892251 (contains!14783 (toList!5061 lt!1798894) lt!1798342))))

(assert (= (and d!1461930 res!1946190) b!4636300))

(assert (= (and b!4636300 res!1946191) b!4636301))

(declare-fun m!5493371 () Bool)

(assert (=> d!1461930 m!5493371))

(declare-fun m!5493373 () Bool)

(assert (=> d!1461930 m!5493373))

(declare-fun m!5493375 () Bool)

(assert (=> d!1461930 m!5493375))

(declare-fun m!5493377 () Bool)

(assert (=> d!1461930 m!5493377))

(declare-fun m!5493379 () Bool)

(assert (=> b!4636300 m!5493379))

(declare-fun m!5493381 () Bool)

(assert (=> b!4636301 m!5493381))

(assert (=> b!4635890 d!1461930))

(declare-fun d!1461932 () Bool)

(assert (=> d!1461932 (eq!863 (addToMapMapFromBucket!1009 (Cons!51656 lt!1798336 lt!1798316) (ListMap!4366 Nil!51656)) (+!1914 (addToMapMapFromBucket!1009 lt!1798316 (ListMap!4366 Nil!51656)) lt!1798336))))

(declare-fun lt!1798897 () Unit!114375)

(assert (=> d!1461932 (= lt!1798897 (choose!31696 lt!1798336 lt!1798316 (ListMap!4366 Nil!51656)))))

(assert (=> d!1461932 (noDuplicateKeys!1548 lt!1798316)))

(assert (=> d!1461932 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!114 lt!1798336 lt!1798316 (ListMap!4366 Nil!51656)) lt!1798897)))

(declare-fun bs!1031212 () Bool)

(assert (= bs!1031212 d!1461932))

(declare-fun m!5493383 () Bool)

(assert (=> bs!1031212 m!5493383))

(assert (=> bs!1031212 m!5492289))

(assert (=> bs!1031212 m!5492277))

(assert (=> bs!1031212 m!5492279))

(assert (=> bs!1031212 m!5492921))

(assert (=> bs!1031212 m!5492277))

(assert (=> bs!1031212 m!5492289))

(assert (=> bs!1031212 m!5492279))

(assert (=> bs!1031212 m!5492309))

(assert (=> b!4635890 d!1461932))

(declare-fun d!1461934 () Bool)

(assert (=> d!1461934 (= (eq!863 lt!1798332 (+!1914 (extractMap!1604 (Cons!51657 (tuple2!52641 hash!414 lt!1798316) Nil!51657)) (h!57744 oldBucket!40))) (= (content!8912 (toList!5061 lt!1798332)) (content!8912 (toList!5061 (+!1914 (extractMap!1604 (Cons!51657 (tuple2!52641 hash!414 lt!1798316) Nil!51657)) (h!57744 oldBucket!40))))))))

(declare-fun bs!1031213 () Bool)

(assert (= bs!1031213 d!1461934))

(declare-fun m!5493385 () Bool)

(assert (=> bs!1031213 m!5493385))

(declare-fun m!5493387 () Bool)

(assert (=> bs!1031213 m!5493387))

(assert (=> b!4635890 d!1461934))

(declare-fun d!1461936 () Bool)

(assert (=> d!1461936 (= (eq!863 (addToMapMapFromBucket!1009 (Cons!51656 lt!1798342 lt!1798327) (ListMap!4366 Nil!51656)) (+!1914 (addToMapMapFromBucket!1009 lt!1798327 (ListMap!4366 Nil!51656)) lt!1798342)) (= (content!8912 (toList!5061 (addToMapMapFromBucket!1009 (Cons!51656 lt!1798342 lt!1798327) (ListMap!4366 Nil!51656)))) (content!8912 (toList!5061 (+!1914 (addToMapMapFromBucket!1009 lt!1798327 (ListMap!4366 Nil!51656)) lt!1798342)))))))

(declare-fun bs!1031214 () Bool)

(assert (= bs!1031214 d!1461936))

(declare-fun m!5493389 () Bool)

(assert (=> bs!1031214 m!5493389))

(declare-fun m!5493391 () Bool)

(assert (=> bs!1031214 m!5493391))

(assert (=> b!4635890 d!1461936))

(declare-fun b!4636302 () Bool)

(assert (=> b!4636302 false))

(declare-fun lt!1798904 () Unit!114375)

(declare-fun lt!1798900 () Unit!114375)

(assert (=> b!4636302 (= lt!1798904 lt!1798900)))

(assert (=> b!4636302 (containsKey!2568 (toList!5061 lt!1798317) key!4968)))

(assert (=> b!4636302 (= lt!1798900 (lemmaInGetKeysListThenContainsKey!692 (toList!5061 lt!1798317) key!4968))))

(declare-fun e!2892257 () Unit!114375)

(declare-fun Unit!114460 () Unit!114375)

(assert (=> b!4636302 (= e!2892257 Unit!114460)))

(declare-fun bm!323590 () Bool)

(declare-fun call!323595 () Bool)

(declare-fun e!2892255 () List!51783)

(assert (=> bm!323590 (= call!323595 (contains!14785 e!2892255 key!4968))))

(declare-fun c!793534 () Bool)

(declare-fun c!793533 () Bool)

(assert (=> bm!323590 (= c!793534 c!793533)))

(declare-fun b!4636303 () Bool)

(declare-fun e!2892253 () Bool)

(declare-fun e!2892256 () Bool)

(assert (=> b!4636303 (= e!2892253 e!2892256)))

(declare-fun res!1946193 () Bool)

(assert (=> b!4636303 (=> (not res!1946193) (not e!2892256))))

(assert (=> b!4636303 (= res!1946193 (isDefined!8975 (getValueByKey!1528 (toList!5061 lt!1798317) key!4968)))))

(declare-fun b!4636304 () Bool)

(declare-fun e!2892254 () Unit!114375)

(assert (=> b!4636304 (= e!2892254 e!2892257)))

(declare-fun c!793535 () Bool)

(assert (=> b!4636304 (= c!793535 call!323595)))

(declare-fun b!4636306 () Bool)

(assert (=> b!4636306 (= e!2892256 (contains!14785 (keys!18234 lt!1798317) key!4968))))

(declare-fun b!4636307 () Bool)

(assert (=> b!4636307 (= e!2892255 (keys!18234 lt!1798317))))

(declare-fun b!4636308 () Bool)

(declare-fun e!2892252 () Bool)

(assert (=> b!4636308 (= e!2892252 (not (contains!14785 (keys!18234 lt!1798317) key!4968)))))

(declare-fun b!4636309 () Bool)

(assert (=> b!4636309 (= e!2892255 (getKeysList!693 (toList!5061 lt!1798317)))))

(declare-fun b!4636310 () Bool)

(declare-fun lt!1798899 () Unit!114375)

(assert (=> b!4636310 (= e!2892254 lt!1798899)))

(declare-fun lt!1798903 () Unit!114375)

(assert (=> b!4636310 (= lt!1798903 (lemmaContainsKeyImpliesGetValueByKeyDefined!1430 (toList!5061 lt!1798317) key!4968))))

(assert (=> b!4636310 (isDefined!8975 (getValueByKey!1528 (toList!5061 lt!1798317) key!4968))))

(declare-fun lt!1798901 () Unit!114375)

(assert (=> b!4636310 (= lt!1798901 lt!1798903)))

(assert (=> b!4636310 (= lt!1798899 (lemmaInListThenGetKeysListContains!688 (toList!5061 lt!1798317) key!4968))))

(assert (=> b!4636310 call!323595))

(declare-fun d!1461938 () Bool)

(assert (=> d!1461938 e!2892253))

(declare-fun res!1946194 () Bool)

(assert (=> d!1461938 (=> res!1946194 e!2892253)))

(assert (=> d!1461938 (= res!1946194 e!2892252)))

(declare-fun res!1946192 () Bool)

(assert (=> d!1461938 (=> (not res!1946192) (not e!2892252))))

(declare-fun lt!1798898 () Bool)

(assert (=> d!1461938 (= res!1946192 (not lt!1798898))))

(declare-fun lt!1798902 () Bool)

(assert (=> d!1461938 (= lt!1798898 lt!1798902)))

(declare-fun lt!1798905 () Unit!114375)

(assert (=> d!1461938 (= lt!1798905 e!2892254)))

(assert (=> d!1461938 (= c!793533 lt!1798902)))

(assert (=> d!1461938 (= lt!1798902 (containsKey!2568 (toList!5061 lt!1798317) key!4968))))

(assert (=> d!1461938 (= (contains!14779 lt!1798317 key!4968) lt!1798898)))

(declare-fun b!4636305 () Bool)

(declare-fun Unit!114461 () Unit!114375)

(assert (=> b!4636305 (= e!2892257 Unit!114461)))

(assert (= (and d!1461938 c!793533) b!4636310))

(assert (= (and d!1461938 (not c!793533)) b!4636304))

(assert (= (and b!4636304 c!793535) b!4636302))

(assert (= (and b!4636304 (not c!793535)) b!4636305))

(assert (= (or b!4636310 b!4636304) bm!323590))

(assert (= (and bm!323590 c!793534) b!4636309))

(assert (= (and bm!323590 (not c!793534)) b!4636307))

(assert (= (and d!1461938 res!1946192) b!4636308))

(assert (= (and d!1461938 (not res!1946194)) b!4636303))

(assert (= (and b!4636303 res!1946193) b!4636306))

(declare-fun m!5493393 () Bool)

(assert (=> b!4636309 m!5493393))

(declare-fun m!5493395 () Bool)

(assert (=> d!1461938 m!5493395))

(declare-fun m!5493397 () Bool)

(assert (=> bm!323590 m!5493397))

(declare-fun m!5493399 () Bool)

(assert (=> b!4636310 m!5493399))

(declare-fun m!5493401 () Bool)

(assert (=> b!4636310 m!5493401))

(assert (=> b!4636310 m!5493401))

(declare-fun m!5493403 () Bool)

(assert (=> b!4636310 m!5493403))

(declare-fun m!5493405 () Bool)

(assert (=> b!4636310 m!5493405))

(assert (=> b!4636302 m!5493395))

(declare-fun m!5493407 () Bool)

(assert (=> b!4636302 m!5493407))

(assert (=> b!4636307 m!5492809))

(assert (=> b!4636303 m!5493401))

(assert (=> b!4636303 m!5493401))

(assert (=> b!4636303 m!5493403))

(assert (=> b!4636306 m!5492809))

(assert (=> b!4636306 m!5492809))

(declare-fun m!5493409 () Bool)

(assert (=> b!4636306 m!5493409))

(assert (=> b!4636308 m!5492809))

(assert (=> b!4636308 m!5492809))

(assert (=> b!4636308 m!5493409))

(assert (=> b!4635890 d!1461938))

(declare-fun bs!1031215 () Bool)

(declare-fun d!1461940 () Bool)

(assert (= bs!1031215 (and d!1461940 b!4635898)))

(declare-fun lambda!195078 () Int)

(assert (=> bs!1031215 (= lambda!195078 lambda!194946)))

(declare-fun bs!1031216 () Bool)

(assert (= bs!1031216 (and d!1461940 d!1461714)))

(assert (=> bs!1031216 (= lambda!195078 lambda!194957)))

(declare-fun bs!1031217 () Bool)

(assert (= bs!1031217 (and d!1461940 d!1461754)))

(assert (=> bs!1031217 (= lambda!195078 lambda!194967)))

(declare-fun bs!1031218 () Bool)

(assert (= bs!1031218 (and d!1461940 d!1461810)))

(assert (=> bs!1031218 (= lambda!195078 lambda!195004)))

(assert (=> d!1461940 (contains!14779 (extractMap!1604 (toList!5062 (ListLongMap!3652 lt!1798331))) key!4968)))

(declare-fun lt!1798908 () Unit!114375)

(declare-fun choose!31697 (ListLongMap!3651 K!13020 Hashable!5945) Unit!114375)

(assert (=> d!1461940 (= lt!1798908 (choose!31697 (ListLongMap!3652 lt!1798331) key!4968 hashF!1389))))

(assert (=> d!1461940 (forall!10898 (toList!5062 (ListLongMap!3652 lt!1798331)) lambda!195078)))

(assert (=> d!1461940 (= (lemmaListContainsThenExtractedMapContains!366 (ListLongMap!3652 lt!1798331) key!4968 hashF!1389) lt!1798908)))

(declare-fun bs!1031219 () Bool)

(assert (= bs!1031219 d!1461940))

(declare-fun m!5493411 () Bool)

(assert (=> bs!1031219 m!5493411))

(assert (=> bs!1031219 m!5493411))

(declare-fun m!5493413 () Bool)

(assert (=> bs!1031219 m!5493413))

(declare-fun m!5493415 () Bool)

(assert (=> bs!1031219 m!5493415))

(declare-fun m!5493417 () Bool)

(assert (=> bs!1031219 m!5493417))

(assert (=> b!4635890 d!1461940))

(declare-fun bs!1031220 () Bool)

(declare-fun d!1461942 () Bool)

(assert (= bs!1031220 (and d!1461942 d!1461810)))

(declare-fun lambda!195079 () Int)

(assert (=> bs!1031220 (= lambda!195079 lambda!195004)))

(declare-fun bs!1031221 () Bool)

(assert (= bs!1031221 (and d!1461942 d!1461940)))

(assert (=> bs!1031221 (= lambda!195079 lambda!195078)))

(declare-fun bs!1031222 () Bool)

(assert (= bs!1031222 (and d!1461942 d!1461754)))

(assert (=> bs!1031222 (= lambda!195079 lambda!194967)))

(declare-fun bs!1031223 () Bool)

(assert (= bs!1031223 (and d!1461942 b!4635898)))

(assert (=> bs!1031223 (= lambda!195079 lambda!194946)))

(declare-fun bs!1031224 () Bool)

(assert (= bs!1031224 (and d!1461942 d!1461714)))

(assert (=> bs!1031224 (= lambda!195079 lambda!194957)))

(declare-fun lt!1798909 () ListMap!4365)

(assert (=> d!1461942 (invariantList!1242 (toList!5061 lt!1798909))))

(declare-fun e!2892258 () ListMap!4365)

(assert (=> d!1461942 (= lt!1798909 e!2892258)))

(declare-fun c!793536 () Bool)

(assert (=> d!1461942 (= c!793536 ((_ is Cons!51657) (Cons!51657 (tuple2!52641 hash!414 lt!1798316) Nil!51657)))))

(assert (=> d!1461942 (forall!10898 (Cons!51657 (tuple2!52641 hash!414 lt!1798316) Nil!51657) lambda!195079)))

(assert (=> d!1461942 (= (extractMap!1604 (Cons!51657 (tuple2!52641 hash!414 lt!1798316) Nil!51657)) lt!1798909)))

(declare-fun b!4636311 () Bool)

(assert (=> b!4636311 (= e!2892258 (addToMapMapFromBucket!1009 (_2!29614 (h!57745 (Cons!51657 (tuple2!52641 hash!414 lt!1798316) Nil!51657))) (extractMap!1604 (t!358851 (Cons!51657 (tuple2!52641 hash!414 lt!1798316) Nil!51657)))))))

(declare-fun b!4636312 () Bool)

(assert (=> b!4636312 (= e!2892258 (ListMap!4366 Nil!51656))))

(assert (= (and d!1461942 c!793536) b!4636311))

(assert (= (and d!1461942 (not c!793536)) b!4636312))

(declare-fun m!5493419 () Bool)

(assert (=> d!1461942 m!5493419))

(declare-fun m!5493421 () Bool)

(assert (=> d!1461942 m!5493421))

(declare-fun m!5493423 () Bool)

(assert (=> b!4636311 m!5493423))

(assert (=> b!4636311 m!5493423))

(declare-fun m!5493425 () Bool)

(assert (=> b!4636311 m!5493425))

(assert (=> b!4635890 d!1461942))

(declare-fun bs!1031225 () Bool)

(declare-fun d!1461944 () Bool)

(assert (= bs!1031225 (and d!1461944 d!1461942)))

(declare-fun lambda!195080 () Int)

(assert (=> bs!1031225 (= lambda!195080 lambda!195079)))

(declare-fun bs!1031226 () Bool)

(assert (= bs!1031226 (and d!1461944 d!1461810)))

(assert (=> bs!1031226 (= lambda!195080 lambda!195004)))

(declare-fun bs!1031227 () Bool)

(assert (= bs!1031227 (and d!1461944 d!1461940)))

(assert (=> bs!1031227 (= lambda!195080 lambda!195078)))

(declare-fun bs!1031228 () Bool)

(assert (= bs!1031228 (and d!1461944 d!1461754)))

(assert (=> bs!1031228 (= lambda!195080 lambda!194967)))

(declare-fun bs!1031229 () Bool)

(assert (= bs!1031229 (and d!1461944 b!4635898)))

(assert (=> bs!1031229 (= lambda!195080 lambda!194946)))

(declare-fun bs!1031230 () Bool)

(assert (= bs!1031230 (and d!1461944 d!1461714)))

(assert (=> bs!1031230 (= lambda!195080 lambda!194957)))

(declare-fun lt!1798910 () ListMap!4365)

(assert (=> d!1461944 (invariantList!1242 (toList!5061 lt!1798910))))

(declare-fun e!2892259 () ListMap!4365)

(assert (=> d!1461944 (= lt!1798910 e!2892259)))

(declare-fun c!793537 () Bool)

(assert (=> d!1461944 (= c!793537 ((_ is Cons!51657) lt!1798331))))

(assert (=> d!1461944 (forall!10898 lt!1798331 lambda!195080)))

(assert (=> d!1461944 (= (extractMap!1604 lt!1798331) lt!1798910)))

(declare-fun b!4636313 () Bool)

(assert (=> b!4636313 (= e!2892259 (addToMapMapFromBucket!1009 (_2!29614 (h!57745 lt!1798331)) (extractMap!1604 (t!358851 lt!1798331))))))

(declare-fun b!4636314 () Bool)

(assert (=> b!4636314 (= e!2892259 (ListMap!4366 Nil!51656))))

(assert (= (and d!1461944 c!793537) b!4636313))

(assert (= (and d!1461944 (not c!793537)) b!4636314))

(declare-fun m!5493427 () Bool)

(assert (=> d!1461944 m!5493427))

(declare-fun m!5493429 () Bool)

(assert (=> d!1461944 m!5493429))

(declare-fun m!5493431 () Bool)

(assert (=> b!4636313 m!5493431))

(assert (=> b!4636313 m!5493431))

(declare-fun m!5493433 () Bool)

(assert (=> b!4636313 m!5493433))

(assert (=> b!4635890 d!1461944))

(declare-fun d!1461946 () Bool)

(assert (=> d!1461946 (= (eq!863 (addToMapMapFromBucket!1009 (Cons!51656 lt!1798336 lt!1798316) (ListMap!4366 Nil!51656)) (+!1914 (addToMapMapFromBucket!1009 lt!1798316 (ListMap!4366 Nil!51656)) lt!1798336)) (= (content!8912 (toList!5061 (addToMapMapFromBucket!1009 (Cons!51656 lt!1798336 lt!1798316) (ListMap!4366 Nil!51656)))) (content!8912 (toList!5061 (+!1914 (addToMapMapFromBucket!1009 lt!1798316 (ListMap!4366 Nil!51656)) lt!1798336)))))))

(declare-fun bs!1031231 () Bool)

(assert (= bs!1031231 d!1461946))

(declare-fun m!5493435 () Bool)

(assert (=> bs!1031231 m!5493435))

(declare-fun m!5493437 () Bool)

(assert (=> bs!1031231 m!5493437))

(assert (=> b!4635890 d!1461946))

(declare-fun d!1461948 () Bool)

(declare-fun e!2892260 () Bool)

(assert (=> d!1461948 e!2892260))

(declare-fun res!1946195 () Bool)

(assert (=> d!1461948 (=> (not res!1946195) (not e!2892260))))

(declare-fun lt!1798912 () ListMap!4365)

(assert (=> d!1461948 (= res!1946195 (contains!14779 lt!1798912 (_1!29613 lt!1798336)))))

(declare-fun lt!1798914 () List!51780)

(assert (=> d!1461948 (= lt!1798912 (ListMap!4366 lt!1798914))))

(declare-fun lt!1798913 () Unit!114375)

(declare-fun lt!1798911 () Unit!114375)

(assert (=> d!1461948 (= lt!1798913 lt!1798911)))

(assert (=> d!1461948 (= (getValueByKey!1528 lt!1798914 (_1!29613 lt!1798336)) (Some!11709 (_2!29613 lt!1798336)))))

(assert (=> d!1461948 (= lt!1798911 (lemmaContainsTupThenGetReturnValue!886 lt!1798914 (_1!29613 lt!1798336) (_2!29613 lt!1798336)))))

(assert (=> d!1461948 (= lt!1798914 (insertNoDuplicatedKeys!394 (toList!5061 (addToMapMapFromBucket!1009 lt!1798316 (ListMap!4366 Nil!51656))) (_1!29613 lt!1798336) (_2!29613 lt!1798336)))))

(assert (=> d!1461948 (= (+!1914 (addToMapMapFromBucket!1009 lt!1798316 (ListMap!4366 Nil!51656)) lt!1798336) lt!1798912)))

(declare-fun b!4636315 () Bool)

(declare-fun res!1946196 () Bool)

(assert (=> b!4636315 (=> (not res!1946196) (not e!2892260))))

(assert (=> b!4636315 (= res!1946196 (= (getValueByKey!1528 (toList!5061 lt!1798912) (_1!29613 lt!1798336)) (Some!11709 (_2!29613 lt!1798336))))))

(declare-fun b!4636316 () Bool)

(assert (=> b!4636316 (= e!2892260 (contains!14783 (toList!5061 lt!1798912) lt!1798336))))

(assert (= (and d!1461948 res!1946195) b!4636315))

(assert (= (and b!4636315 res!1946196) b!4636316))

(declare-fun m!5493439 () Bool)

(assert (=> d!1461948 m!5493439))

(declare-fun m!5493441 () Bool)

(assert (=> d!1461948 m!5493441))

(declare-fun m!5493443 () Bool)

(assert (=> d!1461948 m!5493443))

(declare-fun m!5493445 () Bool)

(assert (=> d!1461948 m!5493445))

(declare-fun m!5493447 () Bool)

(assert (=> b!4636315 m!5493447))

(declare-fun m!5493449 () Bool)

(assert (=> b!4636316 m!5493449))

(assert (=> b!4635890 d!1461948))

(declare-fun bs!1031232 () Bool)

(declare-fun b!4636321 () Bool)

(assert (= bs!1031232 (and b!4636321 b!4636297)))

(declare-fun lambda!195081 () Int)

(assert (=> bs!1031232 (= lambda!195081 lambda!195073)))

(declare-fun bs!1031233 () Bool)

(assert (= bs!1031233 (and b!4636321 d!1461908)))

(assert (=> bs!1031233 (= (= (ListMap!4366 Nil!51656) lt!1798858) (= lambda!195081 lambda!195071))))

(assert (=> bs!1031232 (= (= (ListMap!4366 Nil!51656) lt!1798892) (= lambda!195081 lambda!195074))))

(declare-fun bs!1031234 () Bool)

(assert (= bs!1031234 (and b!4636321 b!4636299)))

(assert (=> bs!1031234 (= lambda!195081 lambda!195072)))

(declare-fun bs!1031235 () Bool)

(assert (= bs!1031235 (and b!4636321 b!4636273)))

(assert (=> bs!1031235 (= lambda!195081 lambda!195064)))

(declare-fun bs!1031236 () Bool)

(assert (= bs!1031236 (and b!4636321 d!1461926)))

(assert (=> bs!1031236 (= (= (ListMap!4366 Nil!51656) lt!1798887) (= lambda!195081 lambda!195075))))

(declare-fun bs!1031237 () Bool)

(assert (= bs!1031237 (and b!4636321 b!4636282)))

(assert (=> bs!1031237 (= lambda!195081 lambda!195068)))

(declare-fun bs!1031238 () Bool)

(assert (= bs!1031238 (and b!4636321 d!1461838)))

(assert (=> bs!1031238 (= (= (ListMap!4366 Nil!51656) lt!1798834) (= lambda!195081 lambda!195066))))

(declare-fun bs!1031239 () Bool)

(assert (= bs!1031239 (and b!4636321 d!1461806)))

(assert (=> bs!1031239 (not (= lambda!195081 lambda!194973))))

(assert (=> bs!1031235 (= (= (ListMap!4366 Nil!51656) lt!1798839) (= lambda!195081 lambda!195065))))

(declare-fun bs!1031240 () Bool)

(assert (= bs!1031240 (and b!4636321 b!4636280)))

(assert (=> bs!1031240 (= lambda!195081 lambda!195069)))

(assert (=> bs!1031240 (= (= (ListMap!4366 Nil!51656) lt!1798863) (= lambda!195081 lambda!195070))))

(declare-fun bs!1031241 () Bool)

(assert (= bs!1031241 (and b!4636321 b!4636275)))

(assert (=> bs!1031241 (= lambda!195081 lambda!195063)))

(assert (=> b!4636321 true))

(declare-fun bs!1031242 () Bool)

(declare-fun b!4636319 () Bool)

(assert (= bs!1031242 (and b!4636319 b!4636297)))

(declare-fun lambda!195082 () Int)

(assert (=> bs!1031242 (= lambda!195082 lambda!195073)))

(declare-fun bs!1031243 () Bool)

(assert (= bs!1031243 (and b!4636319 d!1461908)))

(assert (=> bs!1031243 (= (= (ListMap!4366 Nil!51656) lt!1798858) (= lambda!195082 lambda!195071))))

(assert (=> bs!1031242 (= (= (ListMap!4366 Nil!51656) lt!1798892) (= lambda!195082 lambda!195074))))

(declare-fun bs!1031244 () Bool)

(assert (= bs!1031244 (and b!4636319 b!4636299)))

(assert (=> bs!1031244 (= lambda!195082 lambda!195072)))

(declare-fun bs!1031245 () Bool)

(assert (= bs!1031245 (and b!4636319 b!4636273)))

(assert (=> bs!1031245 (= lambda!195082 lambda!195064)))

(declare-fun bs!1031246 () Bool)

(assert (= bs!1031246 (and b!4636319 b!4636321)))

(assert (=> bs!1031246 (= lambda!195082 lambda!195081)))

(declare-fun bs!1031247 () Bool)

(assert (= bs!1031247 (and b!4636319 d!1461926)))

(assert (=> bs!1031247 (= (= (ListMap!4366 Nil!51656) lt!1798887) (= lambda!195082 lambda!195075))))

(declare-fun bs!1031248 () Bool)

(assert (= bs!1031248 (and b!4636319 b!4636282)))

(assert (=> bs!1031248 (= lambda!195082 lambda!195068)))

(declare-fun bs!1031249 () Bool)

(assert (= bs!1031249 (and b!4636319 d!1461838)))

(assert (=> bs!1031249 (= (= (ListMap!4366 Nil!51656) lt!1798834) (= lambda!195082 lambda!195066))))

(declare-fun bs!1031250 () Bool)

(assert (= bs!1031250 (and b!4636319 d!1461806)))

(assert (=> bs!1031250 (not (= lambda!195082 lambda!194973))))

(assert (=> bs!1031245 (= (= (ListMap!4366 Nil!51656) lt!1798839) (= lambda!195082 lambda!195065))))

(declare-fun bs!1031251 () Bool)

(assert (= bs!1031251 (and b!4636319 b!4636280)))

(assert (=> bs!1031251 (= lambda!195082 lambda!195069)))

(assert (=> bs!1031251 (= (= (ListMap!4366 Nil!51656) lt!1798863) (= lambda!195082 lambda!195070))))

(declare-fun bs!1031252 () Bool)

(assert (= bs!1031252 (and b!4636319 b!4636275)))

(assert (=> bs!1031252 (= lambda!195082 lambda!195063)))

(assert (=> b!4636319 true))

(declare-fun lt!1798935 () ListMap!4365)

(declare-fun lambda!195083 () Int)

(assert (=> bs!1031242 (= (= lt!1798935 (ListMap!4366 Nil!51656)) (= lambda!195083 lambda!195073))))

(assert (=> bs!1031243 (= (= lt!1798935 lt!1798858) (= lambda!195083 lambda!195071))))

(assert (=> b!4636319 (= (= lt!1798935 (ListMap!4366 Nil!51656)) (= lambda!195083 lambda!195082))))

(assert (=> bs!1031242 (= (= lt!1798935 lt!1798892) (= lambda!195083 lambda!195074))))

(assert (=> bs!1031244 (= (= lt!1798935 (ListMap!4366 Nil!51656)) (= lambda!195083 lambda!195072))))

(assert (=> bs!1031245 (= (= lt!1798935 (ListMap!4366 Nil!51656)) (= lambda!195083 lambda!195064))))

(assert (=> bs!1031246 (= (= lt!1798935 (ListMap!4366 Nil!51656)) (= lambda!195083 lambda!195081))))

(assert (=> bs!1031247 (= (= lt!1798935 lt!1798887) (= lambda!195083 lambda!195075))))

(assert (=> bs!1031248 (= (= lt!1798935 (ListMap!4366 Nil!51656)) (= lambda!195083 lambda!195068))))

(assert (=> bs!1031249 (= (= lt!1798935 lt!1798834) (= lambda!195083 lambda!195066))))

(assert (=> bs!1031250 (not (= lambda!195083 lambda!194973))))

(assert (=> bs!1031245 (= (= lt!1798935 lt!1798839) (= lambda!195083 lambda!195065))))

(assert (=> bs!1031251 (= (= lt!1798935 (ListMap!4366 Nil!51656)) (= lambda!195083 lambda!195069))))

(assert (=> bs!1031251 (= (= lt!1798935 lt!1798863) (= lambda!195083 lambda!195070))))

(assert (=> bs!1031252 (= (= lt!1798935 (ListMap!4366 Nil!51656)) (= lambda!195083 lambda!195063))))

(assert (=> b!4636319 true))

(declare-fun bs!1031253 () Bool)

(declare-fun d!1461950 () Bool)

(assert (= bs!1031253 (and d!1461950 b!4636297)))

(declare-fun lt!1798930 () ListMap!4365)

(declare-fun lambda!195084 () Int)

(assert (=> bs!1031253 (= (= lt!1798930 (ListMap!4366 Nil!51656)) (= lambda!195084 lambda!195073))))

(declare-fun bs!1031254 () Bool)

(assert (= bs!1031254 (and d!1461950 d!1461908)))

(assert (=> bs!1031254 (= (= lt!1798930 lt!1798858) (= lambda!195084 lambda!195071))))

(declare-fun bs!1031255 () Bool)

(assert (= bs!1031255 (and d!1461950 b!4636319)))

(assert (=> bs!1031255 (= (= lt!1798930 (ListMap!4366 Nil!51656)) (= lambda!195084 lambda!195082))))

(assert (=> bs!1031253 (= (= lt!1798930 lt!1798892) (= lambda!195084 lambda!195074))))

(assert (=> bs!1031255 (= (= lt!1798930 lt!1798935) (= lambda!195084 lambda!195083))))

(declare-fun bs!1031256 () Bool)

(assert (= bs!1031256 (and d!1461950 b!4636299)))

(assert (=> bs!1031256 (= (= lt!1798930 (ListMap!4366 Nil!51656)) (= lambda!195084 lambda!195072))))

(declare-fun bs!1031257 () Bool)

(assert (= bs!1031257 (and d!1461950 b!4636273)))

(assert (=> bs!1031257 (= (= lt!1798930 (ListMap!4366 Nil!51656)) (= lambda!195084 lambda!195064))))

(declare-fun bs!1031258 () Bool)

(assert (= bs!1031258 (and d!1461950 b!4636321)))

(assert (=> bs!1031258 (= (= lt!1798930 (ListMap!4366 Nil!51656)) (= lambda!195084 lambda!195081))))

(declare-fun bs!1031259 () Bool)

(assert (= bs!1031259 (and d!1461950 d!1461926)))

(assert (=> bs!1031259 (= (= lt!1798930 lt!1798887) (= lambda!195084 lambda!195075))))

(declare-fun bs!1031260 () Bool)

(assert (= bs!1031260 (and d!1461950 b!4636282)))

(assert (=> bs!1031260 (= (= lt!1798930 (ListMap!4366 Nil!51656)) (= lambda!195084 lambda!195068))))

(declare-fun bs!1031261 () Bool)

(assert (= bs!1031261 (and d!1461950 d!1461838)))

(assert (=> bs!1031261 (= (= lt!1798930 lt!1798834) (= lambda!195084 lambda!195066))))

(declare-fun bs!1031262 () Bool)

(assert (= bs!1031262 (and d!1461950 d!1461806)))

(assert (=> bs!1031262 (not (= lambda!195084 lambda!194973))))

(assert (=> bs!1031257 (= (= lt!1798930 lt!1798839) (= lambda!195084 lambda!195065))))

(declare-fun bs!1031263 () Bool)

(assert (= bs!1031263 (and d!1461950 b!4636280)))

(assert (=> bs!1031263 (= (= lt!1798930 (ListMap!4366 Nil!51656)) (= lambda!195084 lambda!195069))))

(assert (=> bs!1031263 (= (= lt!1798930 lt!1798863) (= lambda!195084 lambda!195070))))

(declare-fun bs!1031264 () Bool)

(assert (= bs!1031264 (and d!1461950 b!4636275)))

(assert (=> bs!1031264 (= (= lt!1798930 (ListMap!4366 Nil!51656)) (= lambda!195084 lambda!195063))))

(assert (=> d!1461950 true))

(declare-fun bm!323591 () Bool)

(declare-fun call!323598 () Unit!114375)

(assert (=> bm!323591 (= call!323598 (lemmaContainsAllItsOwnKeys!544 (ListMap!4366 Nil!51656)))))

(declare-fun c!793538 () Bool)

(declare-fun bm!323592 () Bool)

(declare-fun call!323597 () Bool)

(assert (=> bm!323592 (= call!323597 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) (ite c!793538 lambda!195081 lambda!195083)))))

(declare-fun b!4636317 () Bool)

(declare-fun res!1946197 () Bool)

(declare-fun e!2892261 () Bool)

(assert (=> b!4636317 (=> (not res!1946197) (not e!2892261))))

(assert (=> b!4636317 (= res!1946197 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) lambda!195084))))

(declare-fun b!4636318 () Bool)

(assert (=> b!4636318 (= e!2892261 (invariantList!1242 (toList!5061 lt!1798930)))))

(declare-fun e!2892262 () ListMap!4365)

(assert (=> b!4636319 (= e!2892262 lt!1798935)))

(declare-fun lt!1798934 () ListMap!4365)

(assert (=> b!4636319 (= lt!1798934 (+!1914 (ListMap!4366 Nil!51656) (h!57744 lt!1798316)))))

(assert (=> b!4636319 (= lt!1798935 (addToMapMapFromBucket!1009 (t!358850 lt!1798316) (+!1914 (ListMap!4366 Nil!51656) (h!57744 lt!1798316))))))

(declare-fun lt!1798924 () Unit!114375)

(assert (=> b!4636319 (= lt!1798924 call!323598)))

(assert (=> b!4636319 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) lambda!195082)))

(declare-fun lt!1798915 () Unit!114375)

(assert (=> b!4636319 (= lt!1798915 lt!1798924)))

(assert (=> b!4636319 (forall!10900 (toList!5061 lt!1798934) lambda!195083)))

(declare-fun lt!1798922 () Unit!114375)

(declare-fun Unit!114473 () Unit!114375)

(assert (=> b!4636319 (= lt!1798922 Unit!114473)))

(assert (=> b!4636319 (forall!10900 (t!358850 lt!1798316) lambda!195083)))

(declare-fun lt!1798917 () Unit!114375)

(declare-fun Unit!114474 () Unit!114375)

(assert (=> b!4636319 (= lt!1798917 Unit!114474)))

(declare-fun lt!1798925 () Unit!114375)

(declare-fun Unit!114475 () Unit!114375)

(assert (=> b!4636319 (= lt!1798925 Unit!114475)))

(declare-fun lt!1798919 () Unit!114375)

(assert (=> b!4636319 (= lt!1798919 (forallContained!3132 (toList!5061 lt!1798934) lambda!195083 (h!57744 lt!1798316)))))

(assert (=> b!4636319 (contains!14779 lt!1798934 (_1!29613 (h!57744 lt!1798316)))))

(declare-fun lt!1798928 () Unit!114375)

(declare-fun Unit!114476 () Unit!114375)

(assert (=> b!4636319 (= lt!1798928 Unit!114476)))

(assert (=> b!4636319 (contains!14779 lt!1798935 (_1!29613 (h!57744 lt!1798316)))))

(declare-fun lt!1798927 () Unit!114375)

(declare-fun Unit!114477 () Unit!114375)

(assert (=> b!4636319 (= lt!1798927 Unit!114477)))

(declare-fun call!323596 () Bool)

(assert (=> b!4636319 call!323596))

(declare-fun lt!1798921 () Unit!114375)

(declare-fun Unit!114478 () Unit!114375)

(assert (=> b!4636319 (= lt!1798921 Unit!114478)))

(assert (=> b!4636319 (forall!10900 (toList!5061 lt!1798934) lambda!195083)))

(declare-fun lt!1798929 () Unit!114375)

(declare-fun Unit!114480 () Unit!114375)

(assert (=> b!4636319 (= lt!1798929 Unit!114480)))

(declare-fun lt!1798916 () Unit!114375)

(declare-fun Unit!114481 () Unit!114375)

(assert (=> b!4636319 (= lt!1798916 Unit!114481)))

(declare-fun lt!1798933 () Unit!114375)

(assert (=> b!4636319 (= lt!1798933 (addForallContainsKeyThenBeforeAdding!543 (ListMap!4366 Nil!51656) lt!1798935 (_1!29613 (h!57744 lt!1798316)) (_2!29613 (h!57744 lt!1798316))))))

(assert (=> b!4636319 call!323597))

(declare-fun lt!1798920 () Unit!114375)

(assert (=> b!4636319 (= lt!1798920 lt!1798933)))

(assert (=> b!4636319 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) lambda!195083)))

(declare-fun lt!1798926 () Unit!114375)

(declare-fun Unit!114483 () Unit!114375)

(assert (=> b!4636319 (= lt!1798926 Unit!114483)))

(declare-fun res!1946199 () Bool)

(assert (=> b!4636319 (= res!1946199 (forall!10900 lt!1798316 lambda!195083))))

(declare-fun e!2892263 () Bool)

(assert (=> b!4636319 (=> (not res!1946199) (not e!2892263))))

(assert (=> b!4636319 e!2892263))

(declare-fun lt!1798918 () Unit!114375)

(declare-fun Unit!114484 () Unit!114375)

(assert (=> b!4636319 (= lt!1798918 Unit!114484)))

(assert (=> b!4636321 (= e!2892262 (ListMap!4366 Nil!51656))))

(declare-fun lt!1798931 () Unit!114375)

(assert (=> b!4636321 (= lt!1798931 call!323598)))

(assert (=> b!4636321 call!323596))

(declare-fun lt!1798932 () Unit!114375)

(assert (=> b!4636321 (= lt!1798932 lt!1798931)))

(assert (=> b!4636321 call!323597))

(declare-fun lt!1798923 () Unit!114375)

(declare-fun Unit!114485 () Unit!114375)

(assert (=> b!4636321 (= lt!1798923 Unit!114485)))

(declare-fun bm!323593 () Bool)

(assert (=> bm!323593 (= call!323596 (forall!10900 (ite c!793538 (toList!5061 (ListMap!4366 Nil!51656)) lt!1798316) (ite c!793538 lambda!195081 lambda!195083)))))

(declare-fun b!4636320 () Bool)

(assert (=> b!4636320 (= e!2892263 (forall!10900 (toList!5061 (ListMap!4366 Nil!51656)) lambda!195083))))

(assert (=> d!1461950 e!2892261))

(declare-fun res!1946198 () Bool)

(assert (=> d!1461950 (=> (not res!1946198) (not e!2892261))))

(assert (=> d!1461950 (= res!1946198 (forall!10900 lt!1798316 lambda!195084))))

(assert (=> d!1461950 (= lt!1798930 e!2892262)))

(assert (=> d!1461950 (= c!793538 ((_ is Nil!51656) lt!1798316))))

(assert (=> d!1461950 (noDuplicateKeys!1548 lt!1798316)))

(assert (=> d!1461950 (= (addToMapMapFromBucket!1009 lt!1798316 (ListMap!4366 Nil!51656)) lt!1798930)))

(assert (= (and d!1461950 c!793538) b!4636321))

(assert (= (and d!1461950 (not c!793538)) b!4636319))

(assert (= (and b!4636319 res!1946199) b!4636320))

(assert (= (or b!4636321 b!4636319) bm!323591))

(assert (= (or b!4636321 b!4636319) bm!323593))

(assert (= (or b!4636321 b!4636319) bm!323592))

(assert (= (and d!1461950 res!1946198) b!4636317))

(assert (= (and b!4636317 res!1946197) b!4636318))

(declare-fun m!5493451 () Bool)

(assert (=> b!4636317 m!5493451))

(assert (=> bm!323591 m!5493239))

(declare-fun m!5493453 () Bool)

(assert (=> bm!323593 m!5493453))

(declare-fun m!5493455 () Bool)

(assert (=> bm!323592 m!5493455))

(declare-fun m!5493457 () Bool)

(assert (=> b!4636318 m!5493457))

(declare-fun m!5493459 () Bool)

(assert (=> d!1461950 m!5493459))

(assert (=> d!1461950 m!5492921))

(declare-fun m!5493461 () Bool)

(assert (=> b!4636320 m!5493461))

(declare-fun m!5493463 () Bool)

(assert (=> b!4636319 m!5493463))

(declare-fun m!5493465 () Bool)

(assert (=> b!4636319 m!5493465))

(declare-fun m!5493467 () Bool)

(assert (=> b!4636319 m!5493467))

(declare-fun m!5493469 () Bool)

(assert (=> b!4636319 m!5493469))

(declare-fun m!5493471 () Bool)

(assert (=> b!4636319 m!5493471))

(assert (=> b!4636319 m!5493461))

(declare-fun m!5493473 () Bool)

(assert (=> b!4636319 m!5493473))

(declare-fun m!5493475 () Bool)

(assert (=> b!4636319 m!5493475))

(assert (=> b!4636319 m!5493465))

(declare-fun m!5493477 () Bool)

(assert (=> b!4636319 m!5493477))

(declare-fun m!5493479 () Bool)

(assert (=> b!4636319 m!5493479))

(declare-fun m!5493481 () Bool)

(assert (=> b!4636319 m!5493481))

(assert (=> b!4636319 m!5493467))

(assert (=> b!4635890 d!1461950))

(declare-fun bs!1031265 () Bool)

(declare-fun d!1461952 () Bool)

(assert (= bs!1031265 (and d!1461952 d!1461950)))

(declare-fun lambda!195085 () Int)

(assert (=> bs!1031265 (not (= lambda!195085 lambda!195084))))

(declare-fun bs!1031266 () Bool)

(assert (= bs!1031266 (and d!1461952 b!4636297)))

(assert (=> bs!1031266 (not (= lambda!195085 lambda!195073))))

(declare-fun bs!1031267 () Bool)

(assert (= bs!1031267 (and d!1461952 d!1461908)))

(assert (=> bs!1031267 (not (= lambda!195085 lambda!195071))))

(declare-fun bs!1031268 () Bool)

(assert (= bs!1031268 (and d!1461952 b!4636319)))

(assert (=> bs!1031268 (not (= lambda!195085 lambda!195082))))

(assert (=> bs!1031266 (not (= lambda!195085 lambda!195074))))

(assert (=> bs!1031268 (not (= lambda!195085 lambda!195083))))

(declare-fun bs!1031269 () Bool)

(assert (= bs!1031269 (and d!1461952 b!4636299)))

(assert (=> bs!1031269 (not (= lambda!195085 lambda!195072))))

(declare-fun bs!1031270 () Bool)

(assert (= bs!1031270 (and d!1461952 b!4636273)))

(assert (=> bs!1031270 (not (= lambda!195085 lambda!195064))))

(declare-fun bs!1031271 () Bool)

(assert (= bs!1031271 (and d!1461952 b!4636321)))

(assert (=> bs!1031271 (not (= lambda!195085 lambda!195081))))

(declare-fun bs!1031272 () Bool)

(assert (= bs!1031272 (and d!1461952 d!1461926)))

(assert (=> bs!1031272 (not (= lambda!195085 lambda!195075))))

(declare-fun bs!1031273 () Bool)

(assert (= bs!1031273 (and d!1461952 b!4636282)))

(assert (=> bs!1031273 (not (= lambda!195085 lambda!195068))))

(declare-fun bs!1031274 () Bool)

(assert (= bs!1031274 (and d!1461952 d!1461838)))

(assert (=> bs!1031274 (not (= lambda!195085 lambda!195066))))

(declare-fun bs!1031275 () Bool)

(assert (= bs!1031275 (and d!1461952 d!1461806)))

(assert (=> bs!1031275 (= lambda!195085 lambda!194973)))

(assert (=> bs!1031270 (not (= lambda!195085 lambda!195065))))

(declare-fun bs!1031276 () Bool)

(assert (= bs!1031276 (and d!1461952 b!4636280)))

(assert (=> bs!1031276 (not (= lambda!195085 lambda!195069))))

(assert (=> bs!1031276 (not (= lambda!195085 lambda!195070))))

(declare-fun bs!1031277 () Bool)

(assert (= bs!1031277 (and d!1461952 b!4636275)))

(assert (=> bs!1031277 (not (= lambda!195085 lambda!195063))))

(assert (=> d!1461952 true))

(assert (=> d!1461952 true))

(assert (=> d!1461952 (= (allKeysSameHash!1402 newBucket!224 hash!414 hashF!1389) (forall!10900 newBucket!224 lambda!195085))))

(declare-fun bs!1031278 () Bool)

(assert (= bs!1031278 d!1461952))

(declare-fun m!5493483 () Bool)

(assert (=> bs!1031278 m!5493483))

(assert (=> b!4635899 d!1461952))

(declare-fun d!1461954 () Bool)

(assert (=> d!1461954 (= (eq!863 lt!1798332 lt!1798329) (= (content!8912 (toList!5061 lt!1798332)) (content!8912 (toList!5061 lt!1798329))))))

(declare-fun bs!1031279 () Bool)

(assert (= bs!1031279 d!1461954))

(assert (=> bs!1031279 m!5493385))

(declare-fun m!5493485 () Bool)

(assert (=> bs!1031279 m!5493485))

(assert (=> b!4635888 d!1461954))

(declare-fun d!1461956 () Bool)

(assert (=> d!1461956 (= (eq!863 lt!1798320 (+!1914 lt!1798340 lt!1798342)) (= (content!8912 (toList!5061 lt!1798320)) (content!8912 (toList!5061 (+!1914 lt!1798340 lt!1798342)))))))

(declare-fun bs!1031280 () Bool)

(assert (= bs!1031280 d!1461956))

(assert (=> bs!1031280 m!5492701))

(declare-fun m!5493487 () Bool)

(assert (=> bs!1031280 m!5493487))

(assert (=> b!4635889 d!1461956))

(declare-fun d!1461958 () Bool)

(declare-fun e!2892264 () Bool)

(assert (=> d!1461958 e!2892264))

(declare-fun res!1946200 () Bool)

(assert (=> d!1461958 (=> (not res!1946200) (not e!2892264))))

(declare-fun lt!1798937 () ListMap!4365)

(assert (=> d!1461958 (= res!1946200 (contains!14779 lt!1798937 (_1!29613 lt!1798342)))))

(declare-fun lt!1798939 () List!51780)

(assert (=> d!1461958 (= lt!1798937 (ListMap!4366 lt!1798939))))

(declare-fun lt!1798938 () Unit!114375)

(declare-fun lt!1798936 () Unit!114375)

(assert (=> d!1461958 (= lt!1798938 lt!1798936)))

(assert (=> d!1461958 (= (getValueByKey!1528 lt!1798939 (_1!29613 lt!1798342)) (Some!11709 (_2!29613 lt!1798342)))))

(assert (=> d!1461958 (= lt!1798936 (lemmaContainsTupThenGetReturnValue!886 lt!1798939 (_1!29613 lt!1798342) (_2!29613 lt!1798342)))))

(assert (=> d!1461958 (= lt!1798939 (insertNoDuplicatedKeys!394 (toList!5061 lt!1798340) (_1!29613 lt!1798342) (_2!29613 lt!1798342)))))

(assert (=> d!1461958 (= (+!1914 lt!1798340 lt!1798342) lt!1798937)))

(declare-fun b!4636322 () Bool)

(declare-fun res!1946201 () Bool)

(assert (=> b!4636322 (=> (not res!1946201) (not e!2892264))))

(assert (=> b!4636322 (= res!1946201 (= (getValueByKey!1528 (toList!5061 lt!1798937) (_1!29613 lt!1798342)) (Some!11709 (_2!29613 lt!1798342))))))

(declare-fun b!4636323 () Bool)

(assert (=> b!4636323 (= e!2892264 (contains!14783 (toList!5061 lt!1798937) lt!1798342))))

(assert (= (and d!1461958 res!1946200) b!4636322))

(assert (= (and b!4636322 res!1946201) b!4636323))

(declare-fun m!5493489 () Bool)

(assert (=> d!1461958 m!5493489))

(declare-fun m!5493491 () Bool)

(assert (=> d!1461958 m!5493491))

(declare-fun m!5493493 () Bool)

(assert (=> d!1461958 m!5493493))

(declare-fun m!5493495 () Bool)

(assert (=> d!1461958 m!5493495))

(declare-fun m!5493497 () Bool)

(assert (=> b!4636322 m!5493497))

(declare-fun m!5493499 () Bool)

(assert (=> b!4636323 m!5493499))

(assert (=> b!4635889 d!1461958))

(declare-fun bs!1031281 () Bool)

(declare-fun d!1461960 () Bool)

(assert (= bs!1031281 (and d!1461960 d!1461944)))

(declare-fun lambda!195086 () Int)

(assert (=> bs!1031281 (= lambda!195086 lambda!195080)))

(declare-fun bs!1031282 () Bool)

(assert (= bs!1031282 (and d!1461960 d!1461942)))

(assert (=> bs!1031282 (= lambda!195086 lambda!195079)))

(declare-fun bs!1031283 () Bool)

(assert (= bs!1031283 (and d!1461960 d!1461810)))

(assert (=> bs!1031283 (= lambda!195086 lambda!195004)))

(declare-fun bs!1031284 () Bool)

(assert (= bs!1031284 (and d!1461960 d!1461940)))

(assert (=> bs!1031284 (= lambda!195086 lambda!195078)))

(declare-fun bs!1031285 () Bool)

(assert (= bs!1031285 (and d!1461960 d!1461754)))

(assert (=> bs!1031285 (= lambda!195086 lambda!194967)))

(declare-fun bs!1031286 () Bool)

(assert (= bs!1031286 (and d!1461960 b!4635898)))

(assert (=> bs!1031286 (= lambda!195086 lambda!194946)))

(declare-fun bs!1031287 () Bool)

(assert (= bs!1031287 (and d!1461960 d!1461714)))

(assert (=> bs!1031287 (= lambda!195086 lambda!194957)))

(declare-fun lt!1798940 () ListMap!4365)

(assert (=> d!1461960 (invariantList!1242 (toList!5061 lt!1798940))))

(declare-fun e!2892265 () ListMap!4365)

(assert (=> d!1461960 (= lt!1798940 e!2892265)))

(declare-fun c!793539 () Bool)

(assert (=> d!1461960 (= c!793539 ((_ is Cons!51657) (Cons!51657 (tuple2!52641 hash!414 lt!1798327) Nil!51657)))))

(assert (=> d!1461960 (forall!10898 (Cons!51657 (tuple2!52641 hash!414 lt!1798327) Nil!51657) lambda!195086)))

(assert (=> d!1461960 (= (extractMap!1604 (Cons!51657 (tuple2!52641 hash!414 lt!1798327) Nil!51657)) lt!1798940)))

(declare-fun b!4636324 () Bool)

(assert (=> b!4636324 (= e!2892265 (addToMapMapFromBucket!1009 (_2!29614 (h!57745 (Cons!51657 (tuple2!52641 hash!414 lt!1798327) Nil!51657))) (extractMap!1604 (t!358851 (Cons!51657 (tuple2!52641 hash!414 lt!1798327) Nil!51657)))))))

(declare-fun b!4636325 () Bool)

(assert (=> b!4636325 (= e!2892265 (ListMap!4366 Nil!51656))))

(assert (= (and d!1461960 c!793539) b!4636324))

(assert (= (and d!1461960 (not c!793539)) b!4636325))

(declare-fun m!5493501 () Bool)

(assert (=> d!1461960 m!5493501))

(declare-fun m!5493503 () Bool)

(assert (=> d!1461960 m!5493503))

(declare-fun m!5493505 () Bool)

(assert (=> b!4636324 m!5493505))

(assert (=> b!4636324 m!5493505))

(declare-fun m!5493507 () Bool)

(assert (=> b!4636324 m!5493507))

(assert (=> b!4635889 d!1461960))

(declare-fun bs!1031288 () Bool)

(declare-fun d!1461962 () Bool)

(assert (= bs!1031288 (and d!1461962 d!1461944)))

(declare-fun lambda!195087 () Int)

(assert (=> bs!1031288 (= lambda!195087 lambda!195080)))

(declare-fun bs!1031289 () Bool)

(assert (= bs!1031289 (and d!1461962 d!1461960)))

(assert (=> bs!1031289 (= lambda!195087 lambda!195086)))

(declare-fun bs!1031290 () Bool)

(assert (= bs!1031290 (and d!1461962 d!1461942)))

(assert (=> bs!1031290 (= lambda!195087 lambda!195079)))

(declare-fun bs!1031291 () Bool)

(assert (= bs!1031291 (and d!1461962 d!1461810)))

(assert (=> bs!1031291 (= lambda!195087 lambda!195004)))

(declare-fun bs!1031292 () Bool)

(assert (= bs!1031292 (and d!1461962 d!1461940)))

(assert (=> bs!1031292 (= lambda!195087 lambda!195078)))

(declare-fun bs!1031293 () Bool)

(assert (= bs!1031293 (and d!1461962 d!1461754)))

(assert (=> bs!1031293 (= lambda!195087 lambda!194967)))

(declare-fun bs!1031294 () Bool)

(assert (= bs!1031294 (and d!1461962 b!4635898)))

(assert (=> bs!1031294 (= lambda!195087 lambda!194946)))

(declare-fun bs!1031295 () Bool)

(assert (= bs!1031295 (and d!1461962 d!1461714)))

(assert (=> bs!1031295 (= lambda!195087 lambda!194957)))

(declare-fun lt!1798941 () ListMap!4365)

(assert (=> d!1461962 (invariantList!1242 (toList!5061 lt!1798941))))

(declare-fun e!2892266 () ListMap!4365)

(assert (=> d!1461962 (= lt!1798941 e!2892266)))

(declare-fun c!793540 () Bool)

(assert (=> d!1461962 (= c!793540 ((_ is Cons!51657) lt!1798321))))

(assert (=> d!1461962 (forall!10898 lt!1798321 lambda!195087)))

(assert (=> d!1461962 (= (extractMap!1604 lt!1798321) lt!1798941)))

(declare-fun b!4636326 () Bool)

(assert (=> b!4636326 (= e!2892266 (addToMapMapFromBucket!1009 (_2!29614 (h!57745 lt!1798321)) (extractMap!1604 (t!358851 lt!1798321))))))

(declare-fun b!4636327 () Bool)

(assert (=> b!4636327 (= e!2892266 (ListMap!4366 Nil!51656))))

(assert (= (and d!1461962 c!793540) b!4636326))

(assert (= (and d!1461962 (not c!793540)) b!4636327))

(declare-fun m!5493509 () Bool)

(assert (=> d!1461962 m!5493509))

(declare-fun m!5493511 () Bool)

(assert (=> d!1461962 m!5493511))

(declare-fun m!5493513 () Bool)

(assert (=> b!4636326 m!5493513))

(assert (=> b!4636326 m!5493513))

(declare-fun m!5493515 () Bool)

(assert (=> b!4636326 m!5493515))

(assert (=> b!4635889 d!1461962))

(declare-fun bs!1031296 () Bool)

(declare-fun b!4636332 () Bool)

(assert (= bs!1031296 (and b!4636332 d!1461950)))

(declare-fun lambda!195088 () Int)

(assert (=> bs!1031296 (= (= lt!1798348 lt!1798930) (= lambda!195088 lambda!195084))))

(declare-fun bs!1031297 () Bool)

(assert (= bs!1031297 (and b!4636332 d!1461908)))

(assert (=> bs!1031297 (= (= lt!1798348 lt!1798858) (= lambda!195088 lambda!195071))))

(declare-fun bs!1031298 () Bool)

(assert (= bs!1031298 (and b!4636332 b!4636319)))

(assert (=> bs!1031298 (= (= lt!1798348 (ListMap!4366 Nil!51656)) (= lambda!195088 lambda!195082))))

(declare-fun bs!1031299 () Bool)

(assert (= bs!1031299 (and b!4636332 b!4636297)))

(assert (=> bs!1031299 (= (= lt!1798348 lt!1798892) (= lambda!195088 lambda!195074))))

(assert (=> bs!1031298 (= (= lt!1798348 lt!1798935) (= lambda!195088 lambda!195083))))

(declare-fun bs!1031300 () Bool)

(assert (= bs!1031300 (and b!4636332 b!4636299)))

(assert (=> bs!1031300 (= (= lt!1798348 (ListMap!4366 Nil!51656)) (= lambda!195088 lambda!195072))))

(declare-fun bs!1031301 () Bool)

(assert (= bs!1031301 (and b!4636332 b!4636273)))

(assert (=> bs!1031301 (= (= lt!1798348 (ListMap!4366 Nil!51656)) (= lambda!195088 lambda!195064))))

(declare-fun bs!1031302 () Bool)

(assert (= bs!1031302 (and b!4636332 b!4636321)))

(assert (=> bs!1031302 (= (= lt!1798348 (ListMap!4366 Nil!51656)) (= lambda!195088 lambda!195081))))

(declare-fun bs!1031303 () Bool)

(assert (= bs!1031303 (and b!4636332 d!1461926)))

(assert (=> bs!1031303 (= (= lt!1798348 lt!1798887) (= lambda!195088 lambda!195075))))

(declare-fun bs!1031304 () Bool)

(assert (= bs!1031304 (and b!4636332 b!4636282)))

(assert (=> bs!1031304 (= (= lt!1798348 (ListMap!4366 Nil!51656)) (= lambda!195088 lambda!195068))))

(assert (=> bs!1031299 (= (= lt!1798348 (ListMap!4366 Nil!51656)) (= lambda!195088 lambda!195073))))

(declare-fun bs!1031305 () Bool)

(assert (= bs!1031305 (and b!4636332 d!1461952)))

(assert (=> bs!1031305 (not (= lambda!195088 lambda!195085))))

(declare-fun bs!1031306 () Bool)

(assert (= bs!1031306 (and b!4636332 d!1461838)))

(assert (=> bs!1031306 (= (= lt!1798348 lt!1798834) (= lambda!195088 lambda!195066))))

(declare-fun bs!1031307 () Bool)

(assert (= bs!1031307 (and b!4636332 d!1461806)))

(assert (=> bs!1031307 (not (= lambda!195088 lambda!194973))))

(assert (=> bs!1031301 (= (= lt!1798348 lt!1798839) (= lambda!195088 lambda!195065))))

(declare-fun bs!1031308 () Bool)

(assert (= bs!1031308 (and b!4636332 b!4636280)))

(assert (=> bs!1031308 (= (= lt!1798348 (ListMap!4366 Nil!51656)) (= lambda!195088 lambda!195069))))

(assert (=> bs!1031308 (= (= lt!1798348 lt!1798863) (= lambda!195088 lambda!195070))))

(declare-fun bs!1031309 () Bool)

(assert (= bs!1031309 (and b!4636332 b!4636275)))

(assert (=> bs!1031309 (= (= lt!1798348 (ListMap!4366 Nil!51656)) (= lambda!195088 lambda!195063))))

(assert (=> b!4636332 true))

(declare-fun bs!1031310 () Bool)

(declare-fun b!4636330 () Bool)

(assert (= bs!1031310 (and b!4636330 d!1461950)))

(declare-fun lambda!195089 () Int)

(assert (=> bs!1031310 (= (= lt!1798348 lt!1798930) (= lambda!195089 lambda!195084))))

(declare-fun bs!1031311 () Bool)

(assert (= bs!1031311 (and b!4636330 d!1461908)))

(assert (=> bs!1031311 (= (= lt!1798348 lt!1798858) (= lambda!195089 lambda!195071))))

(declare-fun bs!1031312 () Bool)

(assert (= bs!1031312 (and b!4636330 b!4636319)))

(assert (=> bs!1031312 (= (= lt!1798348 (ListMap!4366 Nil!51656)) (= lambda!195089 lambda!195082))))

(declare-fun bs!1031313 () Bool)

(assert (= bs!1031313 (and b!4636330 b!4636297)))

(assert (=> bs!1031313 (= (= lt!1798348 lt!1798892) (= lambda!195089 lambda!195074))))

(declare-fun bs!1031314 () Bool)

(assert (= bs!1031314 (and b!4636330 b!4636332)))

(assert (=> bs!1031314 (= lambda!195089 lambda!195088)))

(assert (=> bs!1031312 (= (= lt!1798348 lt!1798935) (= lambda!195089 lambda!195083))))

(declare-fun bs!1031315 () Bool)

(assert (= bs!1031315 (and b!4636330 b!4636299)))

(assert (=> bs!1031315 (= (= lt!1798348 (ListMap!4366 Nil!51656)) (= lambda!195089 lambda!195072))))

(declare-fun bs!1031316 () Bool)

(assert (= bs!1031316 (and b!4636330 b!4636273)))

(assert (=> bs!1031316 (= (= lt!1798348 (ListMap!4366 Nil!51656)) (= lambda!195089 lambda!195064))))

(declare-fun bs!1031317 () Bool)

(assert (= bs!1031317 (and b!4636330 b!4636321)))

(assert (=> bs!1031317 (= (= lt!1798348 (ListMap!4366 Nil!51656)) (= lambda!195089 lambda!195081))))

(declare-fun bs!1031318 () Bool)

(assert (= bs!1031318 (and b!4636330 d!1461926)))

(assert (=> bs!1031318 (= (= lt!1798348 lt!1798887) (= lambda!195089 lambda!195075))))

(declare-fun bs!1031319 () Bool)

(assert (= bs!1031319 (and b!4636330 b!4636282)))

(assert (=> bs!1031319 (= (= lt!1798348 (ListMap!4366 Nil!51656)) (= lambda!195089 lambda!195068))))

(assert (=> bs!1031313 (= (= lt!1798348 (ListMap!4366 Nil!51656)) (= lambda!195089 lambda!195073))))

(declare-fun bs!1031320 () Bool)

(assert (= bs!1031320 (and b!4636330 d!1461952)))

(assert (=> bs!1031320 (not (= lambda!195089 lambda!195085))))

(declare-fun bs!1031321 () Bool)

(assert (= bs!1031321 (and b!4636330 d!1461838)))

(assert (=> bs!1031321 (= (= lt!1798348 lt!1798834) (= lambda!195089 lambda!195066))))

(declare-fun bs!1031322 () Bool)

(assert (= bs!1031322 (and b!4636330 d!1461806)))

(assert (=> bs!1031322 (not (= lambda!195089 lambda!194973))))

(assert (=> bs!1031316 (= (= lt!1798348 lt!1798839) (= lambda!195089 lambda!195065))))

(declare-fun bs!1031323 () Bool)

(assert (= bs!1031323 (and b!4636330 b!4636280)))

(assert (=> bs!1031323 (= (= lt!1798348 (ListMap!4366 Nil!51656)) (= lambda!195089 lambda!195069))))

(assert (=> bs!1031323 (= (= lt!1798348 lt!1798863) (= lambda!195089 lambda!195070))))

(declare-fun bs!1031324 () Bool)

(assert (= bs!1031324 (and b!4636330 b!4636275)))

(assert (=> bs!1031324 (= (= lt!1798348 (ListMap!4366 Nil!51656)) (= lambda!195089 lambda!195063))))

(assert (=> b!4636330 true))

(declare-fun lambda!195090 () Int)

(declare-fun lt!1798962 () ListMap!4365)

(assert (=> bs!1031310 (= (= lt!1798962 lt!1798930) (= lambda!195090 lambda!195084))))

(assert (=> bs!1031311 (= (= lt!1798962 lt!1798858) (= lambda!195090 lambda!195071))))

(assert (=> bs!1031312 (= (= lt!1798962 (ListMap!4366 Nil!51656)) (= lambda!195090 lambda!195082))))

(assert (=> bs!1031313 (= (= lt!1798962 lt!1798892) (= lambda!195090 lambda!195074))))

(assert (=> bs!1031314 (= (= lt!1798962 lt!1798348) (= lambda!195090 lambda!195088))))

(assert (=> bs!1031312 (= (= lt!1798962 lt!1798935) (= lambda!195090 lambda!195083))))

(assert (=> bs!1031315 (= (= lt!1798962 (ListMap!4366 Nil!51656)) (= lambda!195090 lambda!195072))))

(assert (=> b!4636330 (= (= lt!1798962 lt!1798348) (= lambda!195090 lambda!195089))))

(assert (=> bs!1031316 (= (= lt!1798962 (ListMap!4366 Nil!51656)) (= lambda!195090 lambda!195064))))

(assert (=> bs!1031317 (= (= lt!1798962 (ListMap!4366 Nil!51656)) (= lambda!195090 lambda!195081))))

(assert (=> bs!1031318 (= (= lt!1798962 lt!1798887) (= lambda!195090 lambda!195075))))

(assert (=> bs!1031319 (= (= lt!1798962 (ListMap!4366 Nil!51656)) (= lambda!195090 lambda!195068))))

(assert (=> bs!1031313 (= (= lt!1798962 (ListMap!4366 Nil!51656)) (= lambda!195090 lambda!195073))))

(assert (=> bs!1031320 (not (= lambda!195090 lambda!195085))))

(assert (=> bs!1031321 (= (= lt!1798962 lt!1798834) (= lambda!195090 lambda!195066))))

(assert (=> bs!1031322 (not (= lambda!195090 lambda!194973))))

(assert (=> bs!1031316 (= (= lt!1798962 lt!1798839) (= lambda!195090 lambda!195065))))

(assert (=> bs!1031323 (= (= lt!1798962 (ListMap!4366 Nil!51656)) (= lambda!195090 lambda!195069))))

(assert (=> bs!1031323 (= (= lt!1798962 lt!1798863) (= lambda!195090 lambda!195070))))

(assert (=> bs!1031324 (= (= lt!1798962 (ListMap!4366 Nil!51656)) (= lambda!195090 lambda!195063))))

(assert (=> b!4636330 true))

(declare-fun bs!1031325 () Bool)

(declare-fun d!1461964 () Bool)

(assert (= bs!1031325 (and d!1461964 d!1461950)))

(declare-fun lt!1798957 () ListMap!4365)

(declare-fun lambda!195091 () Int)

(assert (=> bs!1031325 (= (= lt!1798957 lt!1798930) (= lambda!195091 lambda!195084))))

(declare-fun bs!1031326 () Bool)

(assert (= bs!1031326 (and d!1461964 d!1461908)))

(assert (=> bs!1031326 (= (= lt!1798957 lt!1798858) (= lambda!195091 lambda!195071))))

(declare-fun bs!1031327 () Bool)

(assert (= bs!1031327 (and d!1461964 b!4636319)))

(assert (=> bs!1031327 (= (= lt!1798957 (ListMap!4366 Nil!51656)) (= lambda!195091 lambda!195082))))

(declare-fun bs!1031328 () Bool)

(assert (= bs!1031328 (and d!1461964 b!4636297)))

(assert (=> bs!1031328 (= (= lt!1798957 lt!1798892) (= lambda!195091 lambda!195074))))

(declare-fun bs!1031329 () Bool)

(assert (= bs!1031329 (and d!1461964 b!4636332)))

(assert (=> bs!1031329 (= (= lt!1798957 lt!1798348) (= lambda!195091 lambda!195088))))

(assert (=> bs!1031327 (= (= lt!1798957 lt!1798935) (= lambda!195091 lambda!195083))))

(declare-fun bs!1031330 () Bool)

(assert (= bs!1031330 (and d!1461964 b!4636299)))

(assert (=> bs!1031330 (= (= lt!1798957 (ListMap!4366 Nil!51656)) (= lambda!195091 lambda!195072))))

(declare-fun bs!1031331 () Bool)

(assert (= bs!1031331 (and d!1461964 b!4636330)))

(assert (=> bs!1031331 (= (= lt!1798957 lt!1798348) (= lambda!195091 lambda!195089))))

(assert (=> bs!1031331 (= (= lt!1798957 lt!1798962) (= lambda!195091 lambda!195090))))

(declare-fun bs!1031332 () Bool)

(assert (= bs!1031332 (and d!1461964 b!4636273)))

(assert (=> bs!1031332 (= (= lt!1798957 (ListMap!4366 Nil!51656)) (= lambda!195091 lambda!195064))))

(declare-fun bs!1031333 () Bool)

(assert (= bs!1031333 (and d!1461964 b!4636321)))

(assert (=> bs!1031333 (= (= lt!1798957 (ListMap!4366 Nil!51656)) (= lambda!195091 lambda!195081))))

(declare-fun bs!1031334 () Bool)

(assert (= bs!1031334 (and d!1461964 d!1461926)))

(assert (=> bs!1031334 (= (= lt!1798957 lt!1798887) (= lambda!195091 lambda!195075))))

(declare-fun bs!1031335 () Bool)

(assert (= bs!1031335 (and d!1461964 b!4636282)))

(assert (=> bs!1031335 (= (= lt!1798957 (ListMap!4366 Nil!51656)) (= lambda!195091 lambda!195068))))

(assert (=> bs!1031328 (= (= lt!1798957 (ListMap!4366 Nil!51656)) (= lambda!195091 lambda!195073))))

(declare-fun bs!1031336 () Bool)

(assert (= bs!1031336 (and d!1461964 d!1461952)))

(assert (=> bs!1031336 (not (= lambda!195091 lambda!195085))))

(declare-fun bs!1031337 () Bool)

(assert (= bs!1031337 (and d!1461964 d!1461838)))

(assert (=> bs!1031337 (= (= lt!1798957 lt!1798834) (= lambda!195091 lambda!195066))))

(declare-fun bs!1031338 () Bool)

(assert (= bs!1031338 (and d!1461964 d!1461806)))

(assert (=> bs!1031338 (not (= lambda!195091 lambda!194973))))

(assert (=> bs!1031332 (= (= lt!1798957 lt!1798839) (= lambda!195091 lambda!195065))))

(declare-fun bs!1031339 () Bool)

(assert (= bs!1031339 (and d!1461964 b!4636280)))

(assert (=> bs!1031339 (= (= lt!1798957 (ListMap!4366 Nil!51656)) (= lambda!195091 lambda!195069))))

(assert (=> bs!1031339 (= (= lt!1798957 lt!1798863) (= lambda!195091 lambda!195070))))

(declare-fun bs!1031340 () Bool)

(assert (= bs!1031340 (and d!1461964 b!4636275)))

(assert (=> bs!1031340 (= (= lt!1798957 (ListMap!4366 Nil!51656)) (= lambda!195091 lambda!195063))))

(assert (=> d!1461964 true))

(declare-fun bm!323594 () Bool)

(declare-fun call!323601 () Unit!114375)

(assert (=> bm!323594 (= call!323601 (lemmaContainsAllItsOwnKeys!544 lt!1798348))))

(declare-fun call!323600 () Bool)

(declare-fun bm!323595 () Bool)

(declare-fun c!793541 () Bool)

(assert (=> bm!323595 (= call!323600 (forall!10900 (toList!5061 lt!1798348) (ite c!793541 lambda!195088 lambda!195090)))))

(declare-fun b!4636328 () Bool)

(declare-fun res!1946202 () Bool)

(declare-fun e!2892267 () Bool)

(assert (=> b!4636328 (=> (not res!1946202) (not e!2892267))))

(assert (=> b!4636328 (= res!1946202 (forall!10900 (toList!5061 lt!1798348) lambda!195091))))

(declare-fun b!4636329 () Bool)

(assert (=> b!4636329 (= e!2892267 (invariantList!1242 (toList!5061 lt!1798957)))))

(declare-fun e!2892268 () ListMap!4365)

(assert (=> b!4636330 (= e!2892268 lt!1798962)))

(declare-fun lt!1798961 () ListMap!4365)

(assert (=> b!4636330 (= lt!1798961 (+!1914 lt!1798348 (h!57744 oldBucket!40)))))

(assert (=> b!4636330 (= lt!1798962 (addToMapMapFromBucket!1009 (t!358850 oldBucket!40) (+!1914 lt!1798348 (h!57744 oldBucket!40))))))

(declare-fun lt!1798951 () Unit!114375)

(assert (=> b!4636330 (= lt!1798951 call!323601)))

(assert (=> b!4636330 (forall!10900 (toList!5061 lt!1798348) lambda!195089)))

(declare-fun lt!1798942 () Unit!114375)

(assert (=> b!4636330 (= lt!1798942 lt!1798951)))

(assert (=> b!4636330 (forall!10900 (toList!5061 lt!1798961) lambda!195090)))

(declare-fun lt!1798949 () Unit!114375)

(declare-fun Unit!114486 () Unit!114375)

(assert (=> b!4636330 (= lt!1798949 Unit!114486)))

(assert (=> b!4636330 (forall!10900 (t!358850 oldBucket!40) lambda!195090)))

(declare-fun lt!1798944 () Unit!114375)

(declare-fun Unit!114487 () Unit!114375)

(assert (=> b!4636330 (= lt!1798944 Unit!114487)))

(declare-fun lt!1798952 () Unit!114375)

(declare-fun Unit!114488 () Unit!114375)

(assert (=> b!4636330 (= lt!1798952 Unit!114488)))

(declare-fun lt!1798946 () Unit!114375)

(assert (=> b!4636330 (= lt!1798946 (forallContained!3132 (toList!5061 lt!1798961) lambda!195090 (h!57744 oldBucket!40)))))

(assert (=> b!4636330 (contains!14779 lt!1798961 (_1!29613 (h!57744 oldBucket!40)))))

(declare-fun lt!1798955 () Unit!114375)

(declare-fun Unit!114489 () Unit!114375)

(assert (=> b!4636330 (= lt!1798955 Unit!114489)))

(assert (=> b!4636330 (contains!14779 lt!1798962 (_1!29613 (h!57744 oldBucket!40)))))

(declare-fun lt!1798954 () Unit!114375)

(declare-fun Unit!114490 () Unit!114375)

(assert (=> b!4636330 (= lt!1798954 Unit!114490)))

(declare-fun call!323599 () Bool)

(assert (=> b!4636330 call!323599))

(declare-fun lt!1798948 () Unit!114375)

(declare-fun Unit!114491 () Unit!114375)

(assert (=> b!4636330 (= lt!1798948 Unit!114491)))

(assert (=> b!4636330 (forall!10900 (toList!5061 lt!1798961) lambda!195090)))

(declare-fun lt!1798956 () Unit!114375)

(declare-fun Unit!114492 () Unit!114375)

(assert (=> b!4636330 (= lt!1798956 Unit!114492)))

(declare-fun lt!1798943 () Unit!114375)

(declare-fun Unit!114493 () Unit!114375)

(assert (=> b!4636330 (= lt!1798943 Unit!114493)))

(declare-fun lt!1798960 () Unit!114375)

(assert (=> b!4636330 (= lt!1798960 (addForallContainsKeyThenBeforeAdding!543 lt!1798348 lt!1798962 (_1!29613 (h!57744 oldBucket!40)) (_2!29613 (h!57744 oldBucket!40))))))

(assert (=> b!4636330 call!323600))

(declare-fun lt!1798947 () Unit!114375)

(assert (=> b!4636330 (= lt!1798947 lt!1798960)))

(assert (=> b!4636330 (forall!10900 (toList!5061 lt!1798348) lambda!195090)))

(declare-fun lt!1798953 () Unit!114375)

(declare-fun Unit!114494 () Unit!114375)

(assert (=> b!4636330 (= lt!1798953 Unit!114494)))

(declare-fun res!1946204 () Bool)

(assert (=> b!4636330 (= res!1946204 (forall!10900 oldBucket!40 lambda!195090))))

(declare-fun e!2892269 () Bool)

(assert (=> b!4636330 (=> (not res!1946204) (not e!2892269))))

(assert (=> b!4636330 e!2892269))

(declare-fun lt!1798945 () Unit!114375)

(declare-fun Unit!114495 () Unit!114375)

(assert (=> b!4636330 (= lt!1798945 Unit!114495)))

(assert (=> b!4636332 (= e!2892268 lt!1798348)))

(declare-fun lt!1798958 () Unit!114375)

(assert (=> b!4636332 (= lt!1798958 call!323601)))

(assert (=> b!4636332 call!323599))

(declare-fun lt!1798959 () Unit!114375)

(assert (=> b!4636332 (= lt!1798959 lt!1798958)))

(assert (=> b!4636332 call!323600))

(declare-fun lt!1798950 () Unit!114375)

(declare-fun Unit!114496 () Unit!114375)

(assert (=> b!4636332 (= lt!1798950 Unit!114496)))

(declare-fun bm!323596 () Bool)

(assert (=> bm!323596 (= call!323599 (forall!10900 (ite c!793541 (toList!5061 lt!1798348) oldBucket!40) (ite c!793541 lambda!195088 lambda!195090)))))

(declare-fun b!4636331 () Bool)

(assert (=> b!4636331 (= e!2892269 (forall!10900 (toList!5061 lt!1798348) lambda!195090))))

(assert (=> d!1461964 e!2892267))

(declare-fun res!1946203 () Bool)

(assert (=> d!1461964 (=> (not res!1946203) (not e!2892267))))

(assert (=> d!1461964 (= res!1946203 (forall!10900 oldBucket!40 lambda!195091))))

(assert (=> d!1461964 (= lt!1798957 e!2892268)))

(assert (=> d!1461964 (= c!793541 ((_ is Nil!51656) oldBucket!40))))

(assert (=> d!1461964 (noDuplicateKeys!1548 oldBucket!40)))

(assert (=> d!1461964 (= (addToMapMapFromBucket!1009 oldBucket!40 lt!1798348) lt!1798957)))

(assert (= (and d!1461964 c!793541) b!4636332))

(assert (= (and d!1461964 (not c!793541)) b!4636330))

(assert (= (and b!4636330 res!1946204) b!4636331))

(assert (= (or b!4636332 b!4636330) bm!323594))

(assert (= (or b!4636332 b!4636330) bm!323596))

(assert (= (or b!4636332 b!4636330) bm!323595))

(assert (= (and d!1461964 res!1946203) b!4636328))

(assert (= (and b!4636328 res!1946202) b!4636329))

(declare-fun m!5493517 () Bool)

(assert (=> b!4636328 m!5493517))

(declare-fun m!5493519 () Bool)

(assert (=> bm!323594 m!5493519))

(declare-fun m!5493521 () Bool)

(assert (=> bm!323596 m!5493521))

(declare-fun m!5493523 () Bool)

(assert (=> bm!323595 m!5493523))

(declare-fun m!5493525 () Bool)

(assert (=> b!4636329 m!5493525))

(declare-fun m!5493527 () Bool)

(assert (=> d!1461964 m!5493527))

(assert (=> d!1461964 m!5492345))

(declare-fun m!5493529 () Bool)

(assert (=> b!4636331 m!5493529))

(declare-fun m!5493531 () Bool)

(assert (=> b!4636330 m!5493531))

(declare-fun m!5493533 () Bool)

(assert (=> b!4636330 m!5493533))

(declare-fun m!5493535 () Bool)

(assert (=> b!4636330 m!5493535))

(declare-fun m!5493537 () Bool)

(assert (=> b!4636330 m!5493537))

(declare-fun m!5493539 () Bool)

(assert (=> b!4636330 m!5493539))

(assert (=> b!4636330 m!5493529))

(declare-fun m!5493541 () Bool)

(assert (=> b!4636330 m!5493541))

(declare-fun m!5493543 () Bool)

(assert (=> b!4636330 m!5493543))

(assert (=> b!4636330 m!5493533))

(declare-fun m!5493545 () Bool)

(assert (=> b!4636330 m!5493545))

(declare-fun m!5493547 () Bool)

(assert (=> b!4636330 m!5493547))

(declare-fun m!5493549 () Bool)

(assert (=> b!4636330 m!5493549))

(assert (=> b!4636330 m!5493535))

(assert (=> b!4635878 d!1461964))

(declare-fun bs!1031341 () Bool)

(declare-fun d!1461966 () Bool)

(assert (= bs!1031341 (and d!1461966 d!1461944)))

(declare-fun lambda!195092 () Int)

(assert (=> bs!1031341 (= lambda!195092 lambda!195080)))

(declare-fun bs!1031342 () Bool)

(assert (= bs!1031342 (and d!1461966 d!1461960)))

(assert (=> bs!1031342 (= lambda!195092 lambda!195086)))

(declare-fun bs!1031343 () Bool)

(assert (= bs!1031343 (and d!1461966 d!1461942)))

(assert (=> bs!1031343 (= lambda!195092 lambda!195079)))

(declare-fun bs!1031344 () Bool)

(assert (= bs!1031344 (and d!1461966 d!1461810)))

(assert (=> bs!1031344 (= lambda!195092 lambda!195004)))

(declare-fun bs!1031345 () Bool)

(assert (= bs!1031345 (and d!1461966 d!1461962)))

(assert (=> bs!1031345 (= lambda!195092 lambda!195087)))

(declare-fun bs!1031346 () Bool)

(assert (= bs!1031346 (and d!1461966 d!1461940)))

(assert (=> bs!1031346 (= lambda!195092 lambda!195078)))

(declare-fun bs!1031347 () Bool)

(assert (= bs!1031347 (and d!1461966 d!1461754)))

(assert (=> bs!1031347 (= lambda!195092 lambda!194967)))

(declare-fun bs!1031348 () Bool)

(assert (= bs!1031348 (and d!1461966 b!4635898)))

(assert (=> bs!1031348 (= lambda!195092 lambda!194946)))

(declare-fun bs!1031349 () Bool)

(assert (= bs!1031349 (and d!1461966 d!1461714)))

(assert (=> bs!1031349 (= lambda!195092 lambda!194957)))

(declare-fun lt!1798963 () ListMap!4365)

(assert (=> d!1461966 (invariantList!1242 (toList!5061 lt!1798963))))

(declare-fun e!2892270 () ListMap!4365)

(assert (=> d!1461966 (= lt!1798963 e!2892270)))

(declare-fun c!793542 () Bool)

(assert (=> d!1461966 (= c!793542 ((_ is Cons!51657) Nil!51657))))

(assert (=> d!1461966 (forall!10898 Nil!51657 lambda!195092)))

(assert (=> d!1461966 (= (extractMap!1604 Nil!51657) lt!1798963)))

(declare-fun b!4636333 () Bool)

(assert (=> b!4636333 (= e!2892270 (addToMapMapFromBucket!1009 (_2!29614 (h!57745 Nil!51657)) (extractMap!1604 (t!358851 Nil!51657))))))

(declare-fun b!4636334 () Bool)

(assert (=> b!4636334 (= e!2892270 (ListMap!4366 Nil!51656))))

(assert (= (and d!1461966 c!793542) b!4636333))

(assert (= (and d!1461966 (not c!793542)) b!4636334))

(declare-fun m!5493551 () Bool)

(assert (=> d!1461966 m!5493551))

(declare-fun m!5493553 () Bool)

(assert (=> d!1461966 m!5493553))

(declare-fun m!5493555 () Bool)

(assert (=> b!4636333 m!5493555))

(assert (=> b!4636333 m!5493555))

(declare-fun m!5493557 () Bool)

(assert (=> b!4636333 m!5493557))

(assert (=> b!4635878 d!1461966))

(declare-fun e!2892273 () Bool)

(declare-fun b!4636339 () Bool)

(declare-fun tp!1342518 () Bool)

(assert (=> b!4636339 (= e!2892273 (and tp_is_empty!29485 tp_is_empty!29487 tp!1342518))))

(assert (=> b!4635893 (= tp!1342511 e!2892273)))

(assert (= (and b!4635893 ((_ is Cons!51656) (t!358850 oldBucket!40))) b!4636339))

(declare-fun b!4636340 () Bool)

(declare-fun tp!1342519 () Bool)

(declare-fun e!2892274 () Bool)

(assert (=> b!4636340 (= e!2892274 (and tp_is_empty!29485 tp_is_empty!29487 tp!1342519))))

(assert (=> b!4635879 (= tp!1342510 e!2892274)))

(assert (= (and b!4635879 ((_ is Cons!51656) (t!358850 newBucket!224))) b!4636340))

(declare-fun b_lambda!171017 () Bool)

(assert (= b_lambda!171009 (or b!4635898 b_lambda!171017)))

(declare-fun bs!1031350 () Bool)

(declare-fun d!1461968 () Bool)

(assert (= bs!1031350 (and d!1461968 b!4635898)))

(assert (=> bs!1031350 (= (dynLambda!21536 lambda!194946 (h!57745 lt!1798321)) (noDuplicateKeys!1548 (_2!29614 (h!57745 lt!1798321))))))

(declare-fun m!5493559 () Bool)

(assert (=> bs!1031350 m!5493559))

(assert (=> b!4636150 d!1461968))

(declare-fun b_lambda!171019 () Bool)

(assert (= b_lambda!171005 (or b!4635898 b_lambda!171019)))

(declare-fun bs!1031351 () Bool)

(declare-fun d!1461970 () Bool)

(assert (= bs!1031351 (and d!1461970 b!4635898)))

(assert (=> bs!1031351 (= (dynLambda!21536 lambda!194946 lt!1798349) (noDuplicateKeys!1548 (_2!29614 lt!1798349)))))

(declare-fun m!5493561 () Bool)

(assert (=> bs!1031351 m!5493561))

(assert (=> d!1461752 d!1461970))

(check-sat (not d!1461908) (not d!1461696) (not b!4636077) (not b!4636308) (not d!1461798) (not d!1461772) (not b!4635920) (not bs!1031350) (not b!4636309) (not b!4636114) (not d!1461806) (not d!1461830) (not b!4636003) (not b!4636323) (not b!4636002) (not b!4635936) (not d!1461944) (not d!1461964) (not bm!323596) (not b!4636082) (not b!4636330) (not bm!323588) (not d!1461766) (not d!1461956) (not d!1461754) (not b!4636279) (not b!4635923) (not b!4636329) (not b!4636296) (not d!1461784) (not d!1461812) (not d!1461926) (not bm!323585) (not d!1461802) (not bm!323590) (not b!4636168) (not b!4635947) (not b!4636328) (not b!4635945) (not d!1461920) (not b!4636313) (not b!4635918) (not d!1461932) (not d!1461922) (not b!4636340) (not bm!323584) (not b!4635924) (not bm!323581) tp_is_empty!29487 (not d!1461952) (not b!4636311) (not b!4636083) (not b!4636319) (not d!1461818) (not b!4636295) (not b_lambda!171019) (not d!1461808) (not b!4636136) (not d!1461712) (not b!4636007) (not d!1461958) (not d!1461810) (not d!1461966) (not b!4636339) (not b!4636084) (not bm!323587) (not d!1461790) (not d!1461762) (not bm!323582) (not b!4636155) (not bs!1031351) (not b!4635930) (not b!4636294) (not d!1461780) (not d!1461714) (not bm!323591) (not b!4636076) (not b!4636278) (not d!1461792) (not d!1461796) (not b!4636133) (not d!1461756) (not bm!323593) (not d!1461800) (not b!4636316) (not b!4636306) (not b!4636303) (not d!1461828) (not b!4636324) (not d!1461960) (not b!4636120) (not d!1461816) (not bm!323549) (not bm!323595) (not bm!323586) (not d!1461752) (not b!4636326) (not b!4636121) (not b!4636118) (not b!4636087) (not d!1461804) (not b!4636070) (not b!4636086) (not b!4636298) (not b!4636122) (not b!4636004) (not b!4636331) (not d!1461962) (not bm!323594) (not b!4636300) (not d!1461930) (not bm!323592) (not b_lambda!171017) (not b!4636320) (not b!4636274) (not b!4636151) (not d!1461782) (not b!4636318) (not b!4636317) (not d!1461794) (not b!4636001) (not d!1461704) (not b!4636075) (not b!4636281) (not b!4636302) (not d!1461692) (not b!4636322) (not d!1461954) (not d!1461934) (not d!1461950) (not b!4636119) (not b!4636115) (not b!4635938) (not b!4636307) (not d!1461832) (not d!1461948) (not d!1461938) (not d!1461946) (not b!4636153) (not d!1461942) (not b!4636135) (not d!1461814) (not b!4636333) (not b!4635922) (not d!1461838) (not b!4636310) (not b!4636297) (not b!4636280) (not d!1461940) (not b!4636164) (not b!4636293) (not b!4636058) (not b!4636271) (not bm!323589) tp_is_empty!29485 (not d!1461936) (not b!4636315) (not b!4636273) (not d!1461694) (not d!1461786) (not bm!323583) (not b!4636085) (not b!4636272) (not b!4636301) (not d!1461700))
(check-sat)
