; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419472 () Bool)

(assert start!419472)

(declare-fun b!4345714 () Bool)

(declare-fun e!2704283 () Bool)

(declare-fun e!2704282 () Bool)

(assert (=> b!4345714 (= e!2704283 (not e!2704282))))

(declare-fun res!1784282 () Bool)

(assert (=> b!4345714 (=> res!1784282 e!2704282)))

(declare-datatypes ((K!10150 0))(
  ( (K!10151 (val!16391 Int)) )
))
(declare-datatypes ((V!10396 0))(
  ( (V!10397 (val!16392 Int)) )
))
(declare-datatypes ((tuple2!48102 0))(
  ( (tuple2!48103 (_1!27345 K!10150) (_2!27345 V!10396)) )
))
(declare-datatypes ((List!48915 0))(
  ( (Nil!48791) (Cons!48791 (h!54314 tuple2!48102) (t!355835 List!48915)) )
))
(declare-fun newBucket!200 () List!48915)

(declare-fun lt!1559872 () List!48915)

(assert (=> b!4345714 (= res!1784282 (not (= newBucket!200 lt!1559872)))))

(declare-fun lt!1559870 () tuple2!48102)

(declare-fun lt!1559855 () List!48915)

(assert (=> b!4345714 (= lt!1559872 (Cons!48791 lt!1559870 lt!1559855))))

(declare-fun lt!1559862 () List!48915)

(declare-fun key!3918 () K!10150)

(declare-fun removePairForKey!403 (List!48915 K!10150) List!48915)

(assert (=> b!4345714 (= lt!1559855 (removePairForKey!403 lt!1559862 key!3918))))

(declare-fun newValue!99 () V!10396)

(assert (=> b!4345714 (= lt!1559870 (tuple2!48103 key!3918 newValue!99))))

(declare-datatypes ((tuple2!48104 0))(
  ( (tuple2!48105 (_1!27346 (_ BitVec 64)) (_2!27346 List!48915)) )
))
(declare-fun lt!1559868 () tuple2!48104)

(declare-datatypes ((List!48916 0))(
  ( (Nil!48792) (Cons!48792 (h!54315 tuple2!48104) (t!355836 List!48916)) )
))
(declare-datatypes ((ListLongMap!1499 0))(
  ( (ListLongMap!1500 (toList!2849 List!48916)) )
))
(declare-fun lm!1707 () ListLongMap!1499)

(declare-datatypes ((Unit!70509 0))(
  ( (Unit!70510) )
))
(declare-fun lt!1559871 () Unit!70509)

(declare-fun lambda!138133 () Int)

(declare-fun forallContained!1675 (List!48916 Int tuple2!48104) Unit!70509)

(assert (=> b!4345714 (= lt!1559871 (forallContained!1675 (toList!2849 lm!1707) lambda!138133 lt!1559868))))

(declare-fun contains!10920 (List!48916 tuple2!48104) Bool)

(assert (=> b!4345714 (contains!10920 (toList!2849 lm!1707) lt!1559868)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4345714 (= lt!1559868 (tuple2!48105 hash!377 lt!1559862))))

(declare-fun lt!1559867 () Unit!70509)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!280 (List!48916 (_ BitVec 64) List!48915) Unit!70509)

(assert (=> b!4345714 (= lt!1559867 (lemmaGetValueByKeyImpliesContainsTuple!280 (toList!2849 lm!1707) hash!377 lt!1559862))))

(declare-fun apply!11285 (ListLongMap!1499 (_ BitVec 64)) List!48915)

(assert (=> b!4345714 (= lt!1559862 (apply!11285 lm!1707 hash!377))))

(declare-fun b!4345715 () Bool)

(declare-fun e!2704281 () Bool)

(assert (=> b!4345715 (= e!2704281 true)))

(declare-fun lt!1559851 () Bool)

(declare-fun lt!1559876 () ListLongMap!1499)

(declare-fun contains!10921 (ListLongMap!1499 (_ BitVec 64)) Bool)

(assert (=> b!4345715 (= lt!1559851 (contains!10921 lt!1559876 hash!377))))

(declare-fun b!4345716 () Bool)

(declare-fun res!1784279 () Bool)

(declare-fun e!2704280 () Bool)

(assert (=> b!4345716 (=> (not res!1784279) (not e!2704280))))

(declare-datatypes ((Hashable!4825 0))(
  ( (HashableExt!4824 (__x!30528 Int)) )
))
(declare-fun hashF!1247 () Hashable!4825)

(declare-fun allKeysSameHash!391 (List!48915 (_ BitVec 64) Hashable!4825) Bool)

(assert (=> b!4345716 (= res!1784279 (allKeysSameHash!391 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4345717 () Bool)

(declare-fun res!1784288 () Bool)

(assert (=> b!4345717 (=> res!1784288 e!2704281)))

(declare-fun allKeysSameHashInMap!537 (ListLongMap!1499 Hashable!4825) Bool)

(assert (=> b!4345717 (= res!1784288 (not (allKeysSameHashInMap!537 lt!1559876 hashF!1247)))))

(declare-fun tp!1329495 () Bool)

(declare-fun tp_is_empty!24971 () Bool)

(declare-fun b!4345718 () Bool)

(declare-fun e!2704286 () Bool)

(declare-fun tp_is_empty!24969 () Bool)

(assert (=> b!4345718 (= e!2704286 (and tp_is_empty!24969 tp_is_empty!24971 tp!1329495))))

(declare-fun lt!1559859 () tuple2!48104)

(declare-fun e!2704287 () Bool)

(declare-fun b!4345719 () Bool)

(declare-fun lt!1559853 () ListLongMap!1499)

(get-info :version)

(assert (=> b!4345719 (= e!2704287 (or (not ((_ is Cons!48792) (toList!2849 lm!1707))) (not (= (_1!27346 (h!54315 (toList!2849 lm!1707))) hash!377)) (= lt!1559853 (ListLongMap!1500 (Cons!48792 lt!1559859 (t!355836 (toList!2849 lm!1707)))))))))

(declare-fun b!4345720 () Bool)

(declare-fun res!1784284 () Bool)

(assert (=> b!4345720 (=> res!1784284 e!2704282)))

(declare-fun noDuplicateKeys!433 (List!48915) Bool)

(assert (=> b!4345720 (= res!1784284 (not (noDuplicateKeys!433 newBucket!200)))))

(declare-fun res!1784291 () Bool)

(assert (=> start!419472 (=> (not res!1784291) (not e!2704280))))

(declare-fun forall!9025 (List!48916 Int) Bool)

(assert (=> start!419472 (= res!1784291 (forall!9025 (toList!2849 lm!1707) lambda!138133))))

(assert (=> start!419472 e!2704280))

(assert (=> start!419472 e!2704286))

(assert (=> start!419472 true))

(declare-fun e!2704288 () Bool)

(declare-fun inv!64336 (ListLongMap!1499) Bool)

(assert (=> start!419472 (and (inv!64336 lm!1707) e!2704288)))

(assert (=> start!419472 tp_is_empty!24969))

(assert (=> start!419472 tp_is_empty!24971))

(declare-fun b!4345721 () Bool)

(declare-fun e!2704284 () Bool)

(declare-datatypes ((ListMap!2093 0))(
  ( (ListMap!2094 (toList!2850 List!48915)) )
))
(declare-fun lt!1559860 () ListMap!2093)

(declare-fun lt!1559852 () ListMap!2093)

(declare-fun eq!223 (ListMap!2093 ListMap!2093) Bool)

(assert (=> b!4345721 (= e!2704284 (eq!223 lt!1559860 lt!1559852))))

(declare-fun b!4345722 () Bool)

(declare-fun res!1784287 () Bool)

(assert (=> b!4345722 (=> (not res!1784287) (not e!2704287))))

(assert (=> b!4345722 (= res!1784287 (forall!9025 (toList!2849 lt!1559853) lambda!138133))))

(declare-fun b!4345723 () Bool)

(assert (=> b!4345723 (= e!2704280 e!2704283)))

(declare-fun res!1784293 () Bool)

(assert (=> b!4345723 (=> (not res!1784293) (not e!2704283))))

(declare-fun lt!1559869 () ListMap!2093)

(declare-fun contains!10922 (ListMap!2093 K!10150) Bool)

(assert (=> b!4345723 (= res!1784293 (contains!10922 lt!1559869 key!3918))))

(declare-fun extractMap!492 (List!48916) ListMap!2093)

(assert (=> b!4345723 (= lt!1559869 (extractMap!492 (toList!2849 lm!1707)))))

(declare-fun b!4345724 () Bool)

(declare-fun e!2704285 () Bool)

(assert (=> b!4345724 (= e!2704282 e!2704285)))

(declare-fun res!1784286 () Bool)

(assert (=> b!4345724 (=> res!1784286 e!2704285)))

(assert (=> b!4345724 (= res!1784286 (or (not ((_ is Cons!48792) (toList!2849 lm!1707))) (not (= (_1!27346 (h!54315 (toList!2849 lm!1707))) hash!377))))))

(assert (=> b!4345724 e!2704287))

(declare-fun res!1784283 () Bool)

(assert (=> b!4345724 (=> (not res!1784283) (not e!2704287))))

(assert (=> b!4345724 (= res!1784283 (forall!9025 (toList!2849 lt!1559853) lambda!138133))))

(declare-fun +!537 (ListLongMap!1499 tuple2!48104) ListLongMap!1499)

(assert (=> b!4345724 (= lt!1559853 (+!537 lm!1707 lt!1559859))))

(assert (=> b!4345724 (= lt!1559859 (tuple2!48105 hash!377 newBucket!200))))

(declare-fun lt!1559863 () Unit!70509)

(declare-fun addValidProp!87 (ListLongMap!1499 Int (_ BitVec 64) List!48915) Unit!70509)

(assert (=> b!4345724 (= lt!1559863 (addValidProp!87 lm!1707 lambda!138133 hash!377 newBucket!200))))

(assert (=> b!4345724 (forall!9025 (toList!2849 lm!1707) lambda!138133)))

(declare-fun b!4345725 () Bool)

(declare-fun res!1784280 () Bool)

(assert (=> b!4345725 (=> res!1784280 e!2704281)))

(assert (=> b!4345725 (= res!1784280 (not (forall!9025 (toList!2849 lt!1559876) lambda!138133)))))

(declare-fun b!4345726 () Bool)

(declare-fun res!1784292 () Bool)

(assert (=> b!4345726 (=> (not res!1784292) (not e!2704280))))

(declare-fun hash!1408 (Hashable!4825 K!10150) (_ BitVec 64))

(assert (=> b!4345726 (= res!1784292 (= (hash!1408 hashF!1247 key!3918) hash!377))))

(declare-fun b!4345727 () Bool)

(declare-fun res!1784289 () Bool)

(assert (=> b!4345727 (=> (not res!1784289) (not e!2704280))))

(assert (=> b!4345727 (= res!1784289 (allKeysSameHashInMap!537 lm!1707 hashF!1247))))

(declare-fun b!4345728 () Bool)

(assert (=> b!4345728 (= e!2704285 e!2704281)))

(declare-fun res!1784281 () Bool)

(assert (=> b!4345728 (=> res!1784281 e!2704281)))

(declare-fun lt!1559864 () Bool)

(assert (=> b!4345728 (= res!1784281 lt!1559864)))

(declare-fun lt!1559858 () List!48915)

(assert (=> b!4345728 (= (apply!11285 lt!1559876 hash!377) lt!1559858)))

(declare-fun lt!1559866 () ListMap!2093)

(assert (=> b!4345728 (= lt!1559864 (contains!10922 lt!1559866 key!3918))))

(declare-fun lt!1559865 () ListMap!2093)

(assert (=> b!4345728 (= lt!1559864 (contains!10922 lt!1559865 key!3918))))

(declare-fun lt!1559856 () Unit!70509)

(declare-fun lemmaEquivalentThenSameContains!84 (ListMap!2093 ListMap!2093 K!10150) Unit!70509)

(assert (=> b!4345728 (= lt!1559856 (lemmaEquivalentThenSameContains!84 lt!1559865 lt!1559866 key!3918))))

(assert (=> b!4345728 (eq!223 lt!1559865 lt!1559866)))

(declare-fun -!234 (ListMap!2093 K!10150) ListMap!2093)

(assert (=> b!4345728 (= lt!1559866 (-!234 lt!1559869 key!3918))))

(declare-fun lt!1559861 () Unit!70509)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!49 (ListLongMap!1499 (_ BitVec 64) List!48915 K!10150 Hashable!4825) Unit!70509)

(assert (=> b!4345728 (= lt!1559861 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!49 lm!1707 hash!377 lt!1559858 key!3918 hashF!1247))))

(declare-fun lt!1559874 () ListMap!2093)

(assert (=> b!4345728 (= lt!1559874 lt!1559865)))

(assert (=> b!4345728 (= lt!1559865 (extractMap!492 (toList!2849 lt!1559876)))))

(assert (=> b!4345728 (= lt!1559858 lt!1559855)))

(assert (=> b!4345728 (= lt!1559876 (+!537 lm!1707 (tuple2!48105 hash!377 lt!1559858)))))

(declare-fun tail!6931 (List!48915) List!48915)

(assert (=> b!4345728 (= lt!1559858 (tail!6931 newBucket!200))))

(assert (=> b!4345728 e!2704284))

(declare-fun res!1784285 () Bool)

(assert (=> b!4345728 (=> (not res!1784285) (not e!2704284))))

(declare-fun lt!1559854 () ListMap!2093)

(assert (=> b!4345728 (= res!1784285 (eq!223 lt!1559854 lt!1559852))))

(declare-fun +!538 (ListMap!2093 tuple2!48102) ListMap!2093)

(assert (=> b!4345728 (= lt!1559852 (+!538 lt!1559874 lt!1559870))))

(declare-fun lt!1559873 () ListMap!2093)

(declare-fun addToMapMapFromBucket!141 (List!48915 ListMap!2093) ListMap!2093)

(assert (=> b!4345728 (= lt!1559874 (addToMapMapFromBucket!141 lt!1559855 lt!1559873))))

(declare-fun lt!1559857 () Unit!70509)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!52 (ListMap!2093 K!10150 V!10396 List!48915) Unit!70509)

(assert (=> b!4345728 (= lt!1559857 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!52 lt!1559873 key!3918 newValue!99 lt!1559855))))

(assert (=> b!4345728 (= lt!1559860 lt!1559854)))

(assert (=> b!4345728 (= lt!1559854 (addToMapMapFromBucket!141 lt!1559855 (+!538 lt!1559873 lt!1559870)))))

(declare-fun lt!1559875 () ListMap!2093)

(assert (=> b!4345728 (= lt!1559875 lt!1559860)))

(assert (=> b!4345728 (= lt!1559860 (addToMapMapFromBucket!141 lt!1559872 lt!1559873))))

(assert (=> b!4345728 (= lt!1559875 (addToMapMapFromBucket!141 newBucket!200 lt!1559873))))

(assert (=> b!4345728 (= lt!1559875 (extractMap!492 (toList!2849 lt!1559853)))))

(assert (=> b!4345728 (= lt!1559873 (extractMap!492 (t!355836 (toList!2849 lm!1707))))))

(declare-fun b!4345729 () Bool)

(declare-fun tp!1329496 () Bool)

(assert (=> b!4345729 (= e!2704288 tp!1329496)))

(declare-fun b!4345730 () Bool)

(declare-fun res!1784290 () Bool)

(assert (=> b!4345730 (=> (not res!1784290) (not e!2704283))))

(assert (=> b!4345730 (= res!1784290 (contains!10921 lm!1707 hash!377))))

(assert (= (and start!419472 res!1784291) b!4345727))

(assert (= (and b!4345727 res!1784289) b!4345726))

(assert (= (and b!4345726 res!1784292) b!4345716))

(assert (= (and b!4345716 res!1784279) b!4345723))

(assert (= (and b!4345723 res!1784293) b!4345730))

(assert (= (and b!4345730 res!1784290) b!4345714))

(assert (= (and b!4345714 (not res!1784282)) b!4345720))

(assert (= (and b!4345720 (not res!1784284)) b!4345724))

(assert (= (and b!4345724 res!1784283) b!4345722))

(assert (= (and b!4345722 res!1784287) b!4345719))

(assert (= (and b!4345724 (not res!1784286)) b!4345728))

(assert (= (and b!4345728 res!1784285) b!4345721))

(assert (= (and b!4345728 (not res!1784281)) b!4345725))

(assert (= (and b!4345725 (not res!1784280)) b!4345717))

(assert (= (and b!4345717 (not res!1784288)) b!4345715))

(assert (= (and start!419472 ((_ is Cons!48791) newBucket!200)) b!4345718))

(assert (= start!419472 b!4345729))

(declare-fun m!4953089 () Bool)

(assert (=> b!4345722 m!4953089))

(declare-fun m!4953091 () Bool)

(assert (=> b!4345723 m!4953091))

(declare-fun m!4953093 () Bool)

(assert (=> b!4345723 m!4953093))

(declare-fun m!4953095 () Bool)

(assert (=> b!4345716 m!4953095))

(declare-fun m!4953097 () Bool)

(assert (=> b!4345728 m!4953097))

(declare-fun m!4953099 () Bool)

(assert (=> b!4345728 m!4953099))

(declare-fun m!4953101 () Bool)

(assert (=> b!4345728 m!4953101))

(declare-fun m!4953103 () Bool)

(assert (=> b!4345728 m!4953103))

(declare-fun m!4953105 () Bool)

(assert (=> b!4345728 m!4953105))

(declare-fun m!4953107 () Bool)

(assert (=> b!4345728 m!4953107))

(declare-fun m!4953109 () Bool)

(assert (=> b!4345728 m!4953109))

(declare-fun m!4953111 () Bool)

(assert (=> b!4345728 m!4953111))

(declare-fun m!4953113 () Bool)

(assert (=> b!4345728 m!4953113))

(declare-fun m!4953115 () Bool)

(assert (=> b!4345728 m!4953115))

(declare-fun m!4953117 () Bool)

(assert (=> b!4345728 m!4953117))

(declare-fun m!4953119 () Bool)

(assert (=> b!4345728 m!4953119))

(declare-fun m!4953121 () Bool)

(assert (=> b!4345728 m!4953121))

(declare-fun m!4953123 () Bool)

(assert (=> b!4345728 m!4953123))

(declare-fun m!4953125 () Bool)

(assert (=> b!4345728 m!4953125))

(declare-fun m!4953127 () Bool)

(assert (=> b!4345728 m!4953127))

(declare-fun m!4953129 () Bool)

(assert (=> b!4345728 m!4953129))

(declare-fun m!4953131 () Bool)

(assert (=> b!4345728 m!4953131))

(declare-fun m!4953133 () Bool)

(assert (=> b!4345728 m!4953133))

(assert (=> b!4345728 m!4953099))

(declare-fun m!4953135 () Bool)

(assert (=> b!4345728 m!4953135))

(declare-fun m!4953137 () Bool)

(assert (=> b!4345720 m!4953137))

(declare-fun m!4953139 () Bool)

(assert (=> b!4345717 m!4953139))

(declare-fun m!4953141 () Bool)

(assert (=> b!4345726 m!4953141))

(declare-fun m!4953143 () Bool)

(assert (=> b!4345715 m!4953143))

(declare-fun m!4953145 () Bool)

(assert (=> b!4345725 m!4953145))

(declare-fun m!4953147 () Bool)

(assert (=> b!4345721 m!4953147))

(declare-fun m!4953149 () Bool)

(assert (=> b!4345714 m!4953149))

(declare-fun m!4953151 () Bool)

(assert (=> b!4345714 m!4953151))

(declare-fun m!4953153 () Bool)

(assert (=> b!4345714 m!4953153))

(declare-fun m!4953155 () Bool)

(assert (=> b!4345714 m!4953155))

(declare-fun m!4953157 () Bool)

(assert (=> b!4345714 m!4953157))

(declare-fun m!4953159 () Bool)

(assert (=> start!419472 m!4953159))

(declare-fun m!4953161 () Bool)

(assert (=> start!419472 m!4953161))

(declare-fun m!4953163 () Bool)

(assert (=> b!4345727 m!4953163))

(assert (=> b!4345724 m!4953089))

(declare-fun m!4953165 () Bool)

(assert (=> b!4345724 m!4953165))

(declare-fun m!4953167 () Bool)

(assert (=> b!4345724 m!4953167))

(assert (=> b!4345724 m!4953159))

(declare-fun m!4953169 () Bool)

(assert (=> b!4345730 m!4953169))

(check-sat (not b!4345722) (not b!4345726) (not b!4345725) (not b!4345728) (not b!4345714) (not b!4345715) (not b!4345730) (not b!4345724) tp_is_empty!24971 (not b!4345721) (not b!4345723) (not start!419472) (not b!4345717) (not b!4345720) (not b!4345727) (not b!4345718) (not b!4345729) tp_is_empty!24969 (not b!4345716))
(check-sat)
