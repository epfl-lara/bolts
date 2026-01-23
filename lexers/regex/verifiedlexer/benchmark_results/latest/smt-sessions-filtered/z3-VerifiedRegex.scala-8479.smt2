; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!440988 () Bool)

(assert start!440988)

(declare-fun b!4482189 () Bool)

(declare-fun res!1861127 () Bool)

(declare-fun e!2791639 () Bool)

(assert (=> b!4482189 (=> (not res!1861127) (not e!2791639))))

(declare-datatypes ((Hashable!5459 0))(
  ( (HashableExt!5458 (__x!31162 Int)) )
))
(declare-fun hashF!1107 () Hashable!5459)

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((K!11800 0))(
  ( (K!11801 (val!17711 Int)) )
))
(declare-datatypes ((V!12046 0))(
  ( (V!12047 (val!17712 Int)) )
))
(declare-datatypes ((tuple2!50690 0))(
  ( (tuple2!50691 (_1!28639 K!11800) (_2!28639 V!12046)) )
))
(declare-datatypes ((List!50514 0))(
  ( (Nil!50390) (Cons!50390 (h!56179 tuple2!50690) (t!357468 List!50514)) )
))
(declare-fun newBucket!178 () List!50514)

(declare-fun allKeysSameHash!918 (List!50514 (_ BitVec 64) Hashable!5459) Bool)

(assert (=> b!4482189 (= res!1861127 (allKeysSameHash!918 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4482190 () Bool)

(declare-datatypes ((Unit!89869 0))(
  ( (Unit!89870) )
))
(declare-fun e!2791643 () Unit!89869)

(declare-fun Unit!89871 () Unit!89869)

(assert (=> b!4482190 (= e!2791643 Unit!89871)))

(declare-fun b!4482192 () Bool)

(declare-fun e!2791642 () Bool)

(declare-fun e!2791640 () Bool)

(assert (=> b!4482192 (= e!2791642 e!2791640)))

(declare-fun res!1861123 () Bool)

(assert (=> b!4482192 (=> res!1861123 e!2791640)))

(declare-fun lt!1668958 () Bool)

(assert (=> b!4482192 (= res!1861123 lt!1668958)))

(declare-fun lt!1668939 () Unit!89869)

(declare-fun e!2791650 () Unit!89869)

(assert (=> b!4482192 (= lt!1668939 e!2791650)))

(declare-fun c!763496 () Bool)

(assert (=> b!4482192 (= c!763496 lt!1668958)))

(declare-datatypes ((ListMap!3397 0))(
  ( (ListMap!3398 (toList!4135 List!50514)) )
))
(declare-fun lt!1668959 () ListMap!3397)

(declare-fun key!3287 () K!11800)

(declare-fun contains!12987 (ListMap!3397 K!11800) Bool)

(assert (=> b!4482192 (= lt!1668958 (contains!12987 lt!1668959 key!3287))))

(declare-fun b!4482193 () Bool)

(declare-fun res!1861119 () Bool)

(declare-fun e!2791634 () Bool)

(assert (=> b!4482193 (=> (not res!1861119) (not e!2791634))))

(declare-datatypes ((tuple2!50692 0))(
  ( (tuple2!50693 (_1!28640 (_ BitVec 64)) (_2!28640 List!50514)) )
))
(declare-datatypes ((List!50515 0))(
  ( (Nil!50391) (Cons!50391 (h!56180 tuple2!50692) (t!357469 List!50515)) )
))
(declare-datatypes ((ListLongMap!2767 0))(
  ( (ListLongMap!2768 (toList!4136 List!50515)) )
))
(declare-fun lm!1477 () ListLongMap!2767)

(declare-fun allKeysSameHashInMap!1171 (ListLongMap!2767 Hashable!5459) Bool)

(assert (=> b!4482193 (= res!1861119 (allKeysSameHashInMap!1171 lm!1477 hashF!1107))))

(declare-fun b!4482194 () Bool)

(declare-fun Unit!89872 () Unit!89869)

(assert (=> b!4482194 (= e!2791650 Unit!89872)))

(declare-fun lt!1668947 () ListLongMap!2767)

(declare-fun lt!1668953 () Unit!89869)

(declare-fun lemmaInGenMapThenLongMapContainsHash!138 (ListLongMap!2767 K!11800 Hashable!5459) Unit!89869)

(assert (=> b!4482194 (= lt!1668953 (lemmaInGenMapThenLongMapContainsHash!138 lt!1668947 key!3287 hashF!1107))))

(declare-fun res!1861129 () Bool)

(declare-fun lt!1668954 () (_ BitVec 64))

(declare-fun contains!12988 (ListLongMap!2767 (_ BitVec 64)) Bool)

(assert (=> b!4482194 (= res!1861129 (contains!12988 lt!1668947 lt!1668954))))

(declare-fun e!2791637 () Bool)

(assert (=> b!4482194 (=> (not res!1861129) (not e!2791637))))

(assert (=> b!4482194 e!2791637))

(declare-fun b!4482195 () Bool)

(declare-fun e!2791646 () Bool)

(declare-fun e!2791645 () Bool)

(assert (=> b!4482195 (= e!2791646 e!2791645)))

(declare-fun res!1861134 () Bool)

(assert (=> b!4482195 (=> res!1861134 e!2791645)))

(declare-fun lt!1668961 () List!50515)

(declare-fun containsKeyBiggerList!64 (List!50515 K!11800) Bool)

(assert (=> b!4482195 (= res!1861134 (not (containsKeyBiggerList!64 lt!1668961 key!3287)))))

(assert (=> b!4482195 (= lt!1668961 (Cons!50391 (h!56180 (toList!4136 lm!1477)) Nil!50391))))

(declare-fun b!4482196 () Bool)

(declare-fun e!2791635 () Bool)

(assert (=> b!4482196 (= e!2791635 e!2791642)))

(declare-fun res!1861135 () Bool)

(assert (=> b!4482196 (=> res!1861135 e!2791642)))

(declare-fun lt!1668938 () ListMap!3397)

(assert (=> b!4482196 (= res!1861135 (not (= lt!1668959 lt!1668938)))))

(declare-fun extractMap!1120 (List!50515) ListMap!3397)

(assert (=> b!4482196 (= lt!1668938 (extractMap!1120 (t!357469 (toList!4136 lm!1477))))))

(assert (=> b!4482196 (= lt!1668959 (extractMap!1120 (toList!4136 lt!1668947)))))

(declare-fun b!4482197 () Bool)

(declare-fun e!2791649 () Bool)

(assert (=> b!4482197 (= e!2791639 (not e!2791649))))

(declare-fun res!1861122 () Bool)

(assert (=> b!4482197 (=> res!1861122 e!2791649)))

(declare-fun lt!1668944 () List!50514)

(declare-fun removePairForKey!691 (List!50514 K!11800) List!50514)

(assert (=> b!4482197 (= res!1861122 (not (= newBucket!178 (removePairForKey!691 lt!1668944 key!3287))))))

(declare-fun lt!1668952 () tuple2!50692)

(declare-fun lt!1668942 () Unit!89869)

(declare-fun lambda!165653 () Int)

(declare-fun forallContained!2323 (List!50515 Int tuple2!50692) Unit!89869)

(assert (=> b!4482197 (= lt!1668942 (forallContained!2323 (toList!4136 lm!1477) lambda!165653 lt!1668952))))

(declare-fun contains!12989 (List!50515 tuple2!50692) Bool)

(assert (=> b!4482197 (contains!12989 (toList!4136 lm!1477) lt!1668952)))

(assert (=> b!4482197 (= lt!1668952 (tuple2!50693 hash!344 lt!1668944))))

(declare-fun lt!1668951 () Unit!89869)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!576 (List!50515 (_ BitVec 64) List!50514) Unit!89869)

(assert (=> b!4482197 (= lt!1668951 (lemmaGetValueByKeyImpliesContainsTuple!576 (toList!4136 lm!1477) hash!344 lt!1668944))))

(declare-fun apply!11801 (ListLongMap!2767 (_ BitVec 64)) List!50514)

(assert (=> b!4482197 (= lt!1668944 (apply!11801 lm!1477 hash!344))))

(assert (=> b!4482197 (contains!12988 lm!1477 lt!1668954)))

(declare-fun lt!1668962 () Unit!89869)

(assert (=> b!4482197 (= lt!1668962 (lemmaInGenMapThenLongMapContainsHash!138 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4482198 () Bool)

(assert (=> b!4482198 (= e!2791649 e!2791646)))

(declare-fun res!1861130 () Bool)

(assert (=> b!4482198 (=> res!1861130 e!2791646)))

(declare-fun lt!1668949 () Bool)

(assert (=> b!4482198 (= res!1861130 lt!1668949)))

(declare-fun lt!1668943 () Unit!89869)

(assert (=> b!4482198 (= lt!1668943 e!2791643)))

(declare-fun c!763497 () Bool)

(assert (=> b!4482198 (= c!763497 lt!1668949)))

(declare-fun containsKey!1560 (List!50514 K!11800) Bool)

(assert (=> b!4482198 (= lt!1668949 (not (containsKey!1560 (_2!28640 (h!56180 (toList!4136 lm!1477))) key!3287)))))

(declare-fun e!2791644 () Bool)

(declare-fun tp_is_empty!27533 () Bool)

(declare-fun tp!1336741 () Bool)

(declare-fun b!4482199 () Bool)

(declare-fun tp_is_empty!27535 () Bool)

(assert (=> b!4482199 (= e!2791644 (and tp_is_empty!27533 tp_is_empty!27535 tp!1336741))))

(declare-fun b!4482200 () Bool)

(declare-fun Unit!89873 () Unit!89869)

(assert (=> b!4482200 (= e!2791643 Unit!89873)))

(declare-fun lt!1668940 () Unit!89869)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!64 (ListLongMap!2767 K!11800 Hashable!5459) Unit!89869)

(assert (=> b!4482200 (= lt!1668940 (lemmaNotInItsHashBucketThenNotInMap!64 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4482200 false))

(declare-fun res!1861124 () Bool)

(assert (=> start!440988 (=> (not res!1861124) (not e!2791634))))

(declare-fun forall!10062 (List!50515 Int) Bool)

(assert (=> start!440988 (= res!1861124 (forall!10062 (toList!4136 lm!1477) lambda!165653))))

(assert (=> start!440988 e!2791634))

(assert (=> start!440988 true))

(declare-fun e!2791648 () Bool)

(declare-fun inv!65984 (ListLongMap!2767) Bool)

(assert (=> start!440988 (and (inv!65984 lm!1477) e!2791648)))

(assert (=> start!440988 tp_is_empty!27533))

(assert (=> start!440988 e!2791644))

(declare-fun b!4482191 () Bool)

(assert (=> b!4482191 (= e!2791637 false)))

(declare-fun b!4482201 () Bool)

(declare-fun e!2791647 () Bool)

(assert (=> b!4482201 (= e!2791634 e!2791647)))

(declare-fun res!1861126 () Bool)

(assert (=> b!4482201 (=> (not res!1861126) (not e!2791647))))

(declare-fun lt!1668950 () ListMap!3397)

(assert (=> b!4482201 (= res!1861126 (contains!12987 lt!1668950 key!3287))))

(assert (=> b!4482201 (= lt!1668950 (extractMap!1120 (toList!4136 lm!1477)))))

(declare-fun b!4482202 () Bool)

(declare-fun res!1861118 () Bool)

(assert (=> b!4482202 (=> res!1861118 e!2791649)))

(get-info :version)

(assert (=> b!4482202 (= res!1861118 (or ((_ is Nil!50391) (toList!4136 lm!1477)) (not (= (_1!28640 (h!56180 (toList!4136 lm!1477))) hash!344))))))

(declare-fun b!4482203 () Bool)

(declare-fun e!2791651 () Bool)

(declare-fun e!2791638 () Bool)

(assert (=> b!4482203 (= e!2791651 e!2791638)))

(declare-fun res!1861125 () Bool)

(assert (=> b!4482203 (=> res!1861125 e!2791638)))

(declare-fun lt!1668955 () ListMap!3397)

(declare-fun eq!557 (ListMap!3397 ListMap!3397) Bool)

(declare-fun addToMapMapFromBucket!619 (List!50514 ListMap!3397) ListMap!3397)

(assert (=> b!4482203 (= res!1861125 (not (eq!557 lt!1668955 (addToMapMapFromBucket!619 (_2!28640 (h!56180 (toList!4136 lm!1477))) lt!1668938))))))

(declare-fun lt!1668941 () tuple2!50692)

(declare-fun +!1424 (ListLongMap!2767 tuple2!50692) ListLongMap!2767)

(assert (=> b!4482203 (= lt!1668955 (extractMap!1120 (toList!4136 (+!1424 lm!1477 lt!1668941))))))

(declare-fun b!4482204 () Bool)

(declare-fun res!1861132 () Bool)

(assert (=> b!4482204 (=> res!1861132 e!2791649)))

(declare-fun noDuplicateKeys!1064 (List!50514) Bool)

(assert (=> b!4482204 (= res!1861132 (not (noDuplicateKeys!1064 newBucket!178)))))

(declare-fun b!4482205 () Bool)

(declare-fun tp!1336740 () Bool)

(assert (=> b!4482205 (= e!2791648 tp!1336740)))

(declare-fun b!4482206 () Bool)

(assert (=> b!4482206 (= e!2791647 e!2791639)))

(declare-fun res!1861128 () Bool)

(assert (=> b!4482206 (=> (not res!1861128) (not e!2791639))))

(assert (=> b!4482206 (= res!1861128 (= lt!1668954 hash!344))))

(declare-fun hash!2563 (Hashable!5459 K!11800) (_ BitVec 64))

(assert (=> b!4482206 (= lt!1668954 (hash!2563 hashF!1107 key!3287))))

(declare-fun b!4482207 () Bool)

(declare-fun Unit!89874 () Unit!89869)

(assert (=> b!4482207 (= e!2791650 Unit!89874)))

(declare-fun b!4482208 () Bool)

(declare-fun res!1861117 () Bool)

(assert (=> b!4482208 (=> res!1861117 e!2791638)))

(declare-fun lt!1668956 () ListMap!3397)

(declare-fun -!326 (ListMap!3397 K!11800) ListMap!3397)

(assert (=> b!4482208 (= res!1861117 (not (eq!557 lt!1668956 (-!326 lt!1668950 key!3287))))))

(declare-fun b!4482209 () Bool)

(assert (=> b!4482209 (= e!2791638 (forall!10062 (toList!4136 lm!1477) lambda!165653))))

(declare-fun b!4482210 () Bool)

(declare-fun e!2791636 () Bool)

(assert (=> b!4482210 (= e!2791636 e!2791651)))

(declare-fun res!1861120 () Bool)

(assert (=> b!4482210 (=> res!1861120 e!2791651)))

(assert (=> b!4482210 (= res!1861120 (not (eq!557 lt!1668956 (addToMapMapFromBucket!619 newBucket!178 lt!1668938))))))

(declare-fun lt!1668946 () ListLongMap!2767)

(assert (=> b!4482210 (= lt!1668956 (extractMap!1120 (toList!4136 lt!1668946)))))

(declare-fun b!4482211 () Bool)

(assert (=> b!4482211 (= e!2791640 e!2791636)))

(declare-fun res!1861136 () Bool)

(assert (=> b!4482211 (=> res!1861136 e!2791636)))

(declare-fun lt!1668948 () tuple2!50692)

(assert (=> b!4482211 (= res!1861136 (not (= (toList!4136 lt!1668946) (Cons!50391 lt!1668948 (t!357469 (toList!4136 lm!1477))))))))

(declare-fun lt!1668945 () List!50515)

(assert (=> b!4482211 (eq!557 (extractMap!1120 (Cons!50391 lt!1668948 lt!1668945)) (-!326 (extractMap!1120 (Cons!50391 lt!1668941 lt!1668945)) key!3287))))

(declare-fun tail!7580 (List!50515) List!50515)

(assert (=> b!4482211 (= lt!1668945 (tail!7580 (toList!4136 lm!1477)))))

(declare-fun lt!1668960 () Unit!89869)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!24 (ListLongMap!2767 (_ BitVec 64) List!50514 List!50514 K!11800 Hashable!5459) Unit!89869)

(assert (=> b!4482211 (= lt!1668960 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!24 lm!1477 hash!344 (_2!28640 (h!56180 (toList!4136 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4482212 () Bool)

(declare-fun e!2791641 () Bool)

(assert (=> b!4482212 (= e!2791641 e!2791635)))

(declare-fun res!1861131 () Bool)

(assert (=> b!4482212 (=> res!1861131 e!2791635)))

(assert (=> b!4482212 (= res!1861131 (not (= lt!1668946 (+!1424 lt!1668947 lt!1668948))))))

(declare-fun tail!7581 (ListLongMap!2767) ListLongMap!2767)

(assert (=> b!4482212 (= lt!1668947 (tail!7581 lm!1477))))

(declare-fun b!4482213 () Bool)

(declare-fun res!1861121 () Bool)

(assert (=> b!4482213 (=> res!1861121 e!2791638)))

(assert (=> b!4482213 (= res!1861121 (not (eq!557 lt!1668955 lt!1668950)))))

(declare-fun b!4482214 () Bool)

(assert (=> b!4482214 (= e!2791645 e!2791641)))

(declare-fun res!1861133 () Bool)

(assert (=> b!4482214 (=> res!1861133 e!2791641)))

(assert (=> b!4482214 (= res!1861133 (not (= (t!357469 (toList!4136 lm!1477)) (tail!7580 (toList!4136 lt!1668946)))))))

(assert (=> b!4482214 (= lt!1668946 (+!1424 lm!1477 lt!1668948))))

(assert (=> b!4482214 (eq!557 (extractMap!1120 (Cons!50391 lt!1668948 Nil!50391)) (-!326 (extractMap!1120 (Cons!50391 lt!1668941 Nil!50391)) key!3287))))

(assert (=> b!4482214 (= lt!1668941 (tuple2!50693 hash!344 (_2!28640 (h!56180 (toList!4136 lm!1477)))))))

(assert (=> b!4482214 (= lt!1668948 (tuple2!50693 hash!344 newBucket!178))))

(declare-fun lt!1668937 () Unit!89869)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!56 ((_ BitVec 64) List!50514 List!50514 K!11800 Hashable!5459) Unit!89869)

(assert (=> b!4482214 (= lt!1668937 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!56 hash!344 (_2!28640 (h!56180 (toList!4136 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4482214 (contains!12987 (extractMap!1120 lt!1668961) key!3287)))

(declare-fun lt!1668957 () Unit!89869)

(declare-fun lemmaListContainsThenExtractedMapContains!60 (ListLongMap!2767 K!11800 Hashable!5459) Unit!89869)

(assert (=> b!4482214 (= lt!1668957 (lemmaListContainsThenExtractedMapContains!60 (ListLongMap!2768 lt!1668961) key!3287 hashF!1107))))

(assert (= (and start!440988 res!1861124) b!4482193))

(assert (= (and b!4482193 res!1861119) b!4482201))

(assert (= (and b!4482201 res!1861126) b!4482206))

(assert (= (and b!4482206 res!1861128) b!4482189))

(assert (= (and b!4482189 res!1861127) b!4482197))

(assert (= (and b!4482197 (not res!1861122)) b!4482204))

(assert (= (and b!4482204 (not res!1861132)) b!4482202))

(assert (= (and b!4482202 (not res!1861118)) b!4482198))

(assert (= (and b!4482198 c!763497) b!4482200))

(assert (= (and b!4482198 (not c!763497)) b!4482190))

(assert (= (and b!4482198 (not res!1861130)) b!4482195))

(assert (= (and b!4482195 (not res!1861134)) b!4482214))

(assert (= (and b!4482214 (not res!1861133)) b!4482212))

(assert (= (and b!4482212 (not res!1861131)) b!4482196))

(assert (= (and b!4482196 (not res!1861135)) b!4482192))

(assert (= (and b!4482192 c!763496) b!4482194))

(assert (= (and b!4482192 (not c!763496)) b!4482207))

(assert (= (and b!4482194 res!1861129) b!4482191))

(assert (= (and b!4482192 (not res!1861123)) b!4482211))

(assert (= (and b!4482211 (not res!1861136)) b!4482210))

(assert (= (and b!4482210 (not res!1861120)) b!4482203))

(assert (= (and b!4482203 (not res!1861125)) b!4482213))

(assert (= (and b!4482213 (not res!1861121)) b!4482208))

(assert (= (and b!4482208 (not res!1861117)) b!4482209))

(assert (= start!440988 b!4482205))

(assert (= (and start!440988 ((_ is Cons!50390) newBucket!178)) b!4482199))

(declare-fun m!5202573 () Bool)

(assert (=> b!4482198 m!5202573))

(declare-fun m!5202575 () Bool)

(assert (=> b!4482193 m!5202575))

(declare-fun m!5202577 () Bool)

(assert (=> b!4482189 m!5202577))

(declare-fun m!5202579 () Bool)

(assert (=> start!440988 m!5202579))

(declare-fun m!5202581 () Bool)

(assert (=> start!440988 m!5202581))

(declare-fun m!5202583 () Bool)

(assert (=> b!4482203 m!5202583))

(assert (=> b!4482203 m!5202583))

(declare-fun m!5202585 () Bool)

(assert (=> b!4482203 m!5202585))

(declare-fun m!5202587 () Bool)

(assert (=> b!4482203 m!5202587))

(declare-fun m!5202589 () Bool)

(assert (=> b!4482203 m!5202589))

(declare-fun m!5202591 () Bool)

(assert (=> b!4482196 m!5202591))

(declare-fun m!5202593 () Bool)

(assert (=> b!4482196 m!5202593))

(declare-fun m!5202595 () Bool)

(assert (=> b!4482214 m!5202595))

(declare-fun m!5202597 () Bool)

(assert (=> b!4482214 m!5202597))

(declare-fun m!5202599 () Bool)

(assert (=> b!4482214 m!5202599))

(declare-fun m!5202601 () Bool)

(assert (=> b!4482214 m!5202601))

(declare-fun m!5202603 () Bool)

(assert (=> b!4482214 m!5202603))

(declare-fun m!5202605 () Bool)

(assert (=> b!4482214 m!5202605))

(assert (=> b!4482214 m!5202595))

(declare-fun m!5202607 () Bool)

(assert (=> b!4482214 m!5202607))

(declare-fun m!5202609 () Bool)

(assert (=> b!4482214 m!5202609))

(assert (=> b!4482214 m!5202607))

(assert (=> b!4482214 m!5202605))

(declare-fun m!5202611 () Bool)

(assert (=> b!4482214 m!5202611))

(declare-fun m!5202613 () Bool)

(assert (=> b!4482214 m!5202613))

(assert (=> b!4482214 m!5202603))

(declare-fun m!5202615 () Bool)

(assert (=> b!4482213 m!5202615))

(declare-fun m!5202617 () Bool)

(assert (=> b!4482201 m!5202617))

(declare-fun m!5202619 () Bool)

(assert (=> b!4482201 m!5202619))

(declare-fun m!5202621 () Bool)

(assert (=> b!4482206 m!5202621))

(declare-fun m!5202623 () Bool)

(assert (=> b!4482192 m!5202623))

(declare-fun m!5202625 () Bool)

(assert (=> b!4482195 m!5202625))

(declare-fun m!5202627 () Bool)

(assert (=> b!4482194 m!5202627))

(declare-fun m!5202629 () Bool)

(assert (=> b!4482194 m!5202629))

(declare-fun m!5202631 () Bool)

(assert (=> b!4482197 m!5202631))

(declare-fun m!5202633 () Bool)

(assert (=> b!4482197 m!5202633))

(declare-fun m!5202635 () Bool)

(assert (=> b!4482197 m!5202635))

(declare-fun m!5202637 () Bool)

(assert (=> b!4482197 m!5202637))

(declare-fun m!5202639 () Bool)

(assert (=> b!4482197 m!5202639))

(declare-fun m!5202641 () Bool)

(assert (=> b!4482197 m!5202641))

(declare-fun m!5202643 () Bool)

(assert (=> b!4482197 m!5202643))

(declare-fun m!5202645 () Bool)

(assert (=> b!4482212 m!5202645))

(declare-fun m!5202647 () Bool)

(assert (=> b!4482212 m!5202647))

(declare-fun m!5202649 () Bool)

(assert (=> b!4482204 m!5202649))

(declare-fun m!5202651 () Bool)

(assert (=> b!4482211 m!5202651))

(declare-fun m!5202653 () Bool)

(assert (=> b!4482211 m!5202653))

(declare-fun m!5202655 () Bool)

(assert (=> b!4482211 m!5202655))

(assert (=> b!4482211 m!5202651))

(declare-fun m!5202657 () Bool)

(assert (=> b!4482211 m!5202657))

(declare-fun m!5202659 () Bool)

(assert (=> b!4482211 m!5202659))

(assert (=> b!4482211 m!5202659))

(assert (=> b!4482211 m!5202657))

(declare-fun m!5202661 () Bool)

(assert (=> b!4482211 m!5202661))

(assert (=> b!4482209 m!5202579))

(declare-fun m!5202663 () Bool)

(assert (=> b!4482208 m!5202663))

(assert (=> b!4482208 m!5202663))

(declare-fun m!5202665 () Bool)

(assert (=> b!4482208 m!5202665))

(declare-fun m!5202667 () Bool)

(assert (=> b!4482210 m!5202667))

(assert (=> b!4482210 m!5202667))

(declare-fun m!5202669 () Bool)

(assert (=> b!4482210 m!5202669))

(declare-fun m!5202671 () Bool)

(assert (=> b!4482210 m!5202671))

(declare-fun m!5202673 () Bool)

(assert (=> b!4482200 m!5202673))

(check-sat (not b!4482189) (not b!4482205) (not b!4482212) (not b!4482199) (not b!4482209) (not b!4482198) (not b!4482194) (not b!4482196) (not b!4482195) (not b!4482208) (not b!4482213) (not b!4482203) tp_is_empty!27535 (not b!4482192) (not b!4482206) (not b!4482200) tp_is_empty!27533 (not b!4482214) (not b!4482204) (not b!4482210) (not b!4482211) (not b!4482197) (not start!440988) (not b!4482201) (not b!4482193))
(check-sat)
