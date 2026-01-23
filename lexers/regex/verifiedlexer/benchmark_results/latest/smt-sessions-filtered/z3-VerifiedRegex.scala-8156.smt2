; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419700 () Bool)

(assert start!419700)

(declare-fun tp_is_empty!25025 () Bool)

(declare-fun e!2705175 () Bool)

(declare-fun tp_is_empty!25027 () Bool)

(declare-fun tp!1329616 () Bool)

(declare-fun b!4347142 () Bool)

(assert (=> b!4347142 (= e!2705175 (and tp_is_empty!25025 tp_is_empty!25027 tp!1329616))))

(declare-fun b!4347143 () Bool)

(declare-fun res!1785262 () Bool)

(declare-fun e!2705182 () Bool)

(assert (=> b!4347143 (=> (not res!1785262) (not e!2705182))))

(declare-datatypes ((V!10431 0))(
  ( (V!10432 (val!16419 Int)) )
))
(declare-datatypes ((K!10185 0))(
  ( (K!10186 (val!16420 Int)) )
))
(declare-datatypes ((tuple2!48158 0))(
  ( (tuple2!48159 (_1!27373 K!10185) (_2!27373 V!10431)) )
))
(declare-datatypes ((List!48947 0))(
  ( (Nil!48823) (Cons!48823 (h!54350 tuple2!48158) (t!355867 List!48947)) )
))
(declare-datatypes ((tuple2!48160 0))(
  ( (tuple2!48161 (_1!27374 (_ BitVec 64)) (_2!27374 List!48947)) )
))
(declare-datatypes ((List!48948 0))(
  ( (Nil!48824) (Cons!48824 (h!54351 tuple2!48160) (t!355868 List!48948)) )
))
(declare-datatypes ((ListLongMap!1527 0))(
  ( (ListLongMap!1528 (toList!2877 List!48948)) )
))
(declare-fun lt!1562032 () ListLongMap!1527)

(declare-fun lambda!138571 () Int)

(declare-fun forall!9043 (List!48948 Int) Bool)

(assert (=> b!4347143 (= res!1785262 (forall!9043 (toList!2877 lt!1562032) lambda!138571))))

(declare-fun b!4347144 () Bool)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun lt!1562021 () List!48947)

(declare-fun lt!1562013 () ListLongMap!1527)

(declare-fun e!2705176 () Bool)

(declare-fun apply!11299 (ListLongMap!1527 (_ BitVec 64)) List!48947)

(assert (=> b!4347144 (= e!2705176 (= (apply!11299 lt!1562013 hash!377) lt!1562021))))

(declare-fun b!4347145 () Bool)

(declare-fun res!1785260 () Bool)

(declare-fun e!2705174 () Bool)

(assert (=> b!4347145 (=> res!1785260 e!2705174)))

(declare-fun newBucket!200 () List!48947)

(declare-fun noDuplicateKeys!447 (List!48947) Bool)

(assert (=> b!4347145 (= res!1785260 (not (noDuplicateKeys!447 newBucket!200)))))

(declare-fun b!4347146 () Bool)

(declare-fun e!2705180 () Bool)

(declare-fun e!2705181 () Bool)

(assert (=> b!4347146 (= e!2705180 e!2705181)))

(declare-fun res!1785251 () Bool)

(assert (=> b!4347146 (=> res!1785251 e!2705181)))

(declare-fun lt!1562022 () Bool)

(assert (=> b!4347146 (= res!1785251 lt!1562022)))

(assert (=> b!4347146 e!2705176))

(declare-fun res!1785252 () Bool)

(assert (=> b!4347146 (=> (not res!1785252) (not e!2705176))))

(declare-datatypes ((ListMap!2121 0))(
  ( (ListMap!2122 (toList!2878 List!48947)) )
))
(declare-fun lt!1562034 () ListMap!2121)

(declare-fun key!3918 () K!10185)

(declare-fun contains!10970 (ListMap!2121 K!10185) Bool)

(assert (=> b!4347146 (= res!1785252 (= lt!1562022 (contains!10970 lt!1562034 key!3918)))))

(declare-fun lt!1562023 () ListMap!2121)

(assert (=> b!4347146 (= lt!1562022 (contains!10970 lt!1562023 key!3918))))

(declare-datatypes ((Unit!70741 0))(
  ( (Unit!70742) )
))
(declare-fun lt!1562024 () Unit!70741)

(declare-fun lemmaEquivalentThenSameContains!98 (ListMap!2121 ListMap!2121 K!10185) Unit!70741)

(assert (=> b!4347146 (= lt!1562024 (lemmaEquivalentThenSameContains!98 lt!1562023 lt!1562034 key!3918))))

(declare-fun eq!237 (ListMap!2121 ListMap!2121) Bool)

(assert (=> b!4347146 (eq!237 lt!1562023 lt!1562034)))

(declare-fun lt!1562009 () ListMap!2121)

(declare-fun -!248 (ListMap!2121 K!10185) ListMap!2121)

(assert (=> b!4347146 (= lt!1562034 (-!248 lt!1562009 key!3918))))

(declare-fun lm!1707 () ListLongMap!1527)

(declare-datatypes ((Hashable!4839 0))(
  ( (HashableExt!4838 (__x!30542 Int)) )
))
(declare-fun hashF!1247 () Hashable!4839)

(declare-fun lt!1562015 () Unit!70741)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!63 (ListLongMap!1527 (_ BitVec 64) List!48947 K!10185 Hashable!4839) Unit!70741)

(assert (=> b!4347146 (= lt!1562015 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!63 lm!1707 hash!377 lt!1562021 key!3918 hashF!1247))))

(declare-fun lt!1562035 () ListMap!2121)

(assert (=> b!4347146 (= lt!1562035 lt!1562023)))

(declare-fun extractMap!506 (List!48948) ListMap!2121)

(assert (=> b!4347146 (= lt!1562023 (extractMap!506 (toList!2877 lt!1562013)))))

(declare-fun lt!1562016 () List!48947)

(assert (=> b!4347146 (= lt!1562021 lt!1562016)))

(declare-fun +!565 (ListLongMap!1527 tuple2!48160) ListLongMap!1527)

(assert (=> b!4347146 (= lt!1562013 (+!565 lm!1707 (tuple2!48161 hash!377 lt!1562021)))))

(declare-fun tail!6945 (List!48947) List!48947)

(assert (=> b!4347146 (= lt!1562021 (tail!6945 newBucket!200))))

(declare-fun e!2705172 () Bool)

(assert (=> b!4347146 e!2705172))

(declare-fun res!1785259 () Bool)

(assert (=> b!4347146 (=> (not res!1785259) (not e!2705172))))

(declare-fun lt!1562027 () ListMap!2121)

(declare-fun lt!1562029 () ListMap!2121)

(assert (=> b!4347146 (= res!1785259 (eq!237 lt!1562027 lt!1562029))))

(declare-fun lt!1562012 () tuple2!48158)

(declare-fun +!566 (ListMap!2121 tuple2!48158) ListMap!2121)

(assert (=> b!4347146 (= lt!1562029 (+!566 lt!1562035 lt!1562012))))

(declare-fun lt!1562014 () ListMap!2121)

(declare-fun addToMapMapFromBucket!155 (List!48947 ListMap!2121) ListMap!2121)

(assert (=> b!4347146 (= lt!1562035 (addToMapMapFromBucket!155 lt!1562016 lt!1562014))))

(declare-fun lt!1562025 () Unit!70741)

(declare-fun newValue!99 () V!10431)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!66 (ListMap!2121 K!10185 V!10431 List!48947) Unit!70741)

(assert (=> b!4347146 (= lt!1562025 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!66 lt!1562014 key!3918 newValue!99 lt!1562016))))

(declare-fun lt!1562026 () ListMap!2121)

(assert (=> b!4347146 (= lt!1562026 lt!1562027)))

(assert (=> b!4347146 (= lt!1562027 (addToMapMapFromBucket!155 lt!1562016 (+!566 lt!1562014 lt!1562012)))))

(declare-fun lt!1562017 () ListMap!2121)

(assert (=> b!4347146 (= lt!1562017 lt!1562026)))

(declare-fun lt!1562028 () List!48947)

(assert (=> b!4347146 (= lt!1562026 (addToMapMapFromBucket!155 lt!1562028 lt!1562014))))

(assert (=> b!4347146 (= lt!1562017 (addToMapMapFromBucket!155 newBucket!200 lt!1562014))))

(assert (=> b!4347146 (= lt!1562017 (extractMap!506 (toList!2877 lt!1562032)))))

(assert (=> b!4347146 (= lt!1562014 (extractMap!506 (t!355868 (toList!2877 lm!1707))))))

(declare-fun b!4347147 () Bool)

(declare-fun e!2705177 () Bool)

(declare-fun e!2705179 () Bool)

(assert (=> b!4347147 (= e!2705177 e!2705179)))

(declare-fun res!1785256 () Bool)

(assert (=> b!4347147 (=> (not res!1785256) (not e!2705179))))

(assert (=> b!4347147 (= res!1785256 (contains!10970 lt!1562009 key!3918))))

(assert (=> b!4347147 (= lt!1562009 (extractMap!506 (toList!2877 lm!1707)))))

(declare-fun lt!1562031 () tuple2!48160)

(declare-fun b!4347148 () Bool)

(get-info :version)

(assert (=> b!4347148 (= e!2705182 (or (not ((_ is Cons!48824) (toList!2877 lm!1707))) (not (= (_1!27374 (h!54351 (toList!2877 lm!1707))) hash!377)) (= lt!1562032 (ListLongMap!1528 (Cons!48824 lt!1562031 (t!355868 (toList!2877 lm!1707)))))))))

(declare-fun b!4347150 () Bool)

(declare-fun e!2705173 () Bool)

(declare-fun tp!1329615 () Bool)

(assert (=> b!4347150 (= e!2705173 tp!1329615)))

(declare-fun b!4347151 () Bool)

(declare-fun res!1785261 () Bool)

(assert (=> b!4347151 (=> (not res!1785261) (not e!2705179))))

(declare-fun contains!10971 (ListLongMap!1527 (_ BitVec 64)) Bool)

(assert (=> b!4347151 (= res!1785261 (contains!10971 lm!1707 hash!377))))

(declare-fun b!4347152 () Bool)

(assert (=> b!4347152 (= e!2705174 e!2705180)))

(declare-fun res!1785258 () Bool)

(assert (=> b!4347152 (=> res!1785258 e!2705180)))

(assert (=> b!4347152 (= res!1785258 (or (not ((_ is Cons!48824) (toList!2877 lm!1707))) (not (= (_1!27374 (h!54351 (toList!2877 lm!1707))) hash!377))))))

(assert (=> b!4347152 e!2705182))

(declare-fun res!1785255 () Bool)

(assert (=> b!4347152 (=> (not res!1785255) (not e!2705182))))

(assert (=> b!4347152 (= res!1785255 (forall!9043 (toList!2877 lt!1562032) lambda!138571))))

(assert (=> b!4347152 (= lt!1562032 (+!565 lm!1707 lt!1562031))))

(assert (=> b!4347152 (= lt!1562031 (tuple2!48161 hash!377 newBucket!200))))

(declare-fun lt!1562036 () Unit!70741)

(declare-fun addValidProp!101 (ListLongMap!1527 Int (_ BitVec 64) List!48947) Unit!70741)

(assert (=> b!4347152 (= lt!1562036 (addValidProp!101 lm!1707 lambda!138571 hash!377 newBucket!200))))

(assert (=> b!4347152 (forall!9043 (toList!2877 lm!1707) lambda!138571)))

(declare-fun b!4347153 () Bool)

(declare-fun e!2705178 () Bool)

(assert (=> b!4347153 (= e!2705181 e!2705178)))

(declare-fun res!1785254 () Bool)

(assert (=> b!4347153 (=> res!1785254 e!2705178)))

(declare-fun lt!1562008 () ListMap!2121)

(assert (=> b!4347153 (= res!1785254 (not (eq!237 lt!1562017 lt!1562008)))))

(declare-fun lt!1562020 () ListMap!2121)

(assert (=> b!4347153 (eq!237 lt!1562020 lt!1562008)))

(assert (=> b!4347153 (= lt!1562008 (+!566 lt!1562009 lt!1562012))))

(assert (=> b!4347153 (= lt!1562020 (+!566 lt!1562034 lt!1562012))))

(declare-fun lt!1562011 () Unit!70741)

(declare-fun removeThenAddForSameKeyIsSameAsAdd!6 (ListMap!2121 K!10185 V!10431) Unit!70741)

(assert (=> b!4347153 (= lt!1562011 (removeThenAddForSameKeyIsSameAsAdd!6 lt!1562009 key!3918 newValue!99))))

(assert (=> b!4347153 (eq!237 (extractMap!506 (toList!2877 (+!565 lt!1562013 lt!1562031))) (+!566 lt!1562023 lt!1562012))))

(declare-fun lt!1562030 () Unit!70741)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!87 (ListLongMap!1527 (_ BitVec 64) List!48947 K!10185 V!10431 Hashable!4839) Unit!70741)

(assert (=> b!4347153 (= lt!1562030 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!87 lt!1562013 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun b!4347154 () Bool)

(declare-fun res!1785253 () Bool)

(assert (=> b!4347154 (=> (not res!1785253) (not e!2705177))))

(declare-fun allKeysSameHashInMap!551 (ListLongMap!1527 Hashable!4839) Bool)

(assert (=> b!4347154 (= res!1785253 (allKeysSameHashInMap!551 lm!1707 hashF!1247))))

(declare-fun b!4347155 () Bool)

(declare-fun res!1785264 () Bool)

(assert (=> b!4347155 (=> (not res!1785264) (not e!2705177))))

(declare-fun allKeysSameHash!405 (List!48947 (_ BitVec 64) Hashable!4839) Bool)

(assert (=> b!4347155 (= res!1785264 (allKeysSameHash!405 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4347156 () Bool)

(assert (=> b!4347156 (= e!2705172 (eq!237 lt!1562026 lt!1562029))))

(declare-fun b!4347149 () Bool)

(assert (=> b!4347149 (= e!2705179 (not e!2705174))))

(declare-fun res!1785265 () Bool)

(assert (=> b!4347149 (=> res!1785265 e!2705174)))

(assert (=> b!4347149 (= res!1785265 (not (= newBucket!200 lt!1562028)))))

(assert (=> b!4347149 (= lt!1562028 (Cons!48823 lt!1562012 lt!1562016))))

(declare-fun lt!1562033 () List!48947)

(declare-fun removePairForKey!417 (List!48947 K!10185) List!48947)

(assert (=> b!4347149 (= lt!1562016 (removePairForKey!417 lt!1562033 key!3918))))

(assert (=> b!4347149 (= lt!1562012 (tuple2!48159 key!3918 newValue!99))))

(declare-fun lt!1562010 () Unit!70741)

(declare-fun lt!1562018 () tuple2!48160)

(declare-fun forallContained!1693 (List!48948 Int tuple2!48160) Unit!70741)

(assert (=> b!4347149 (= lt!1562010 (forallContained!1693 (toList!2877 lm!1707) lambda!138571 lt!1562018))))

(declare-fun contains!10972 (List!48948 tuple2!48160) Bool)

(assert (=> b!4347149 (contains!10972 (toList!2877 lm!1707) lt!1562018)))

(assert (=> b!4347149 (= lt!1562018 (tuple2!48161 hash!377 lt!1562033))))

(declare-fun lt!1562019 () Unit!70741)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!294 (List!48948 (_ BitVec 64) List!48947) Unit!70741)

(assert (=> b!4347149 (= lt!1562019 (lemmaGetValueByKeyImpliesContainsTuple!294 (toList!2877 lm!1707) hash!377 lt!1562033))))

(assert (=> b!4347149 (= lt!1562033 (apply!11299 lm!1707 hash!377))))

(declare-fun res!1785257 () Bool)

(assert (=> start!419700 (=> (not res!1785257) (not e!2705177))))

(assert (=> start!419700 (= res!1785257 (forall!9043 (toList!2877 lm!1707) lambda!138571))))

(assert (=> start!419700 e!2705177))

(assert (=> start!419700 e!2705175))

(assert (=> start!419700 true))

(declare-fun inv!64371 (ListLongMap!1527) Bool)

(assert (=> start!419700 (and (inv!64371 lm!1707) e!2705173)))

(assert (=> start!419700 tp_is_empty!25025))

(assert (=> start!419700 tp_is_empty!25027))

(declare-fun b!4347157 () Bool)

(declare-fun res!1785263 () Bool)

(assert (=> b!4347157 (=> (not res!1785263) (not e!2705177))))

(declare-fun hash!1434 (Hashable!4839 K!10185) (_ BitVec 64))

(assert (=> b!4347157 (= res!1785263 (= (hash!1434 hashF!1247 key!3918) hash!377))))

(declare-fun b!4347158 () Bool)

(assert (=> b!4347158 (= e!2705178 (forall!9043 (toList!2877 lt!1562032) lambda!138571))))

(assert (= (and start!419700 res!1785257) b!4347154))

(assert (= (and b!4347154 res!1785253) b!4347157))

(assert (= (and b!4347157 res!1785263) b!4347155))

(assert (= (and b!4347155 res!1785264) b!4347147))

(assert (= (and b!4347147 res!1785256) b!4347151))

(assert (= (and b!4347151 res!1785261) b!4347149))

(assert (= (and b!4347149 (not res!1785265)) b!4347145))

(assert (= (and b!4347145 (not res!1785260)) b!4347152))

(assert (= (and b!4347152 res!1785255) b!4347143))

(assert (= (and b!4347143 res!1785262) b!4347148))

(assert (= (and b!4347152 (not res!1785258)) b!4347146))

(assert (= (and b!4347146 res!1785259) b!4347156))

(assert (= (and b!4347146 res!1785252) b!4347144))

(assert (= (and b!4347146 (not res!1785251)) b!4347153))

(assert (= (and b!4347153 (not res!1785254)) b!4347158))

(assert (= (and start!419700 ((_ is Cons!48823) newBucket!200)) b!4347142))

(assert (= start!419700 b!4347150))

(declare-fun m!4956083 () Bool)

(assert (=> b!4347143 m!4956083))

(declare-fun m!4956085 () Bool)

(assert (=> b!4347144 m!4956085))

(declare-fun m!4956087 () Bool)

(assert (=> b!4347153 m!4956087))

(declare-fun m!4956089 () Bool)

(assert (=> b!4347153 m!4956089))

(declare-fun m!4956091 () Bool)

(assert (=> b!4347153 m!4956091))

(declare-fun m!4956093 () Bool)

(assert (=> b!4347153 m!4956093))

(declare-fun m!4956095 () Bool)

(assert (=> b!4347153 m!4956095))

(declare-fun m!4956097 () Bool)

(assert (=> b!4347153 m!4956097))

(declare-fun m!4956099 () Bool)

(assert (=> b!4347153 m!4956099))

(declare-fun m!4956101 () Bool)

(assert (=> b!4347153 m!4956101))

(assert (=> b!4347153 m!4956091))

(declare-fun m!4956103 () Bool)

(assert (=> b!4347153 m!4956103))

(declare-fun m!4956105 () Bool)

(assert (=> b!4347153 m!4956105))

(assert (=> b!4347153 m!4956093))

(assert (=> b!4347152 m!4956083))

(declare-fun m!4956107 () Bool)

(assert (=> b!4347152 m!4956107))

(declare-fun m!4956109 () Bool)

(assert (=> b!4347152 m!4956109))

(declare-fun m!4956111 () Bool)

(assert (=> b!4347152 m!4956111))

(declare-fun m!4956113 () Bool)

(assert (=> b!4347151 m!4956113))

(declare-fun m!4956115 () Bool)

(assert (=> b!4347145 m!4956115))

(assert (=> start!419700 m!4956111))

(declare-fun m!4956117 () Bool)

(assert (=> start!419700 m!4956117))

(declare-fun m!4956119 () Bool)

(assert (=> b!4347154 m!4956119))

(assert (=> b!4347158 m!4956083))

(declare-fun m!4956121 () Bool)

(assert (=> b!4347147 m!4956121))

(declare-fun m!4956123 () Bool)

(assert (=> b!4347147 m!4956123))

(declare-fun m!4956125 () Bool)

(assert (=> b!4347149 m!4956125))

(declare-fun m!4956127 () Bool)

(assert (=> b!4347149 m!4956127))

(declare-fun m!4956129 () Bool)

(assert (=> b!4347149 m!4956129))

(declare-fun m!4956131 () Bool)

(assert (=> b!4347149 m!4956131))

(declare-fun m!4956133 () Bool)

(assert (=> b!4347149 m!4956133))

(declare-fun m!4956135 () Bool)

(assert (=> b!4347155 m!4956135))

(declare-fun m!4956137 () Bool)

(assert (=> b!4347156 m!4956137))

(declare-fun m!4956139 () Bool)

(assert (=> b!4347146 m!4956139))

(declare-fun m!4956141 () Bool)

(assert (=> b!4347146 m!4956141))

(declare-fun m!4956143 () Bool)

(assert (=> b!4347146 m!4956143))

(declare-fun m!4956145 () Bool)

(assert (=> b!4347146 m!4956145))

(declare-fun m!4956147 () Bool)

(assert (=> b!4347146 m!4956147))

(declare-fun m!4956149 () Bool)

(assert (=> b!4347146 m!4956149))

(declare-fun m!4956151 () Bool)

(assert (=> b!4347146 m!4956151))

(declare-fun m!4956153 () Bool)

(assert (=> b!4347146 m!4956153))

(declare-fun m!4956155 () Bool)

(assert (=> b!4347146 m!4956155))

(declare-fun m!4956157 () Bool)

(assert (=> b!4347146 m!4956157))

(declare-fun m!4956159 () Bool)

(assert (=> b!4347146 m!4956159))

(declare-fun m!4956161 () Bool)

(assert (=> b!4347146 m!4956161))

(declare-fun m!4956163 () Bool)

(assert (=> b!4347146 m!4956163))

(declare-fun m!4956165 () Bool)

(assert (=> b!4347146 m!4956165))

(declare-fun m!4956167 () Bool)

(assert (=> b!4347146 m!4956167))

(declare-fun m!4956169 () Bool)

(assert (=> b!4347146 m!4956169))

(declare-fun m!4956171 () Bool)

(assert (=> b!4347146 m!4956171))

(declare-fun m!4956173 () Bool)

(assert (=> b!4347146 m!4956173))

(assert (=> b!4347146 m!4956173))

(declare-fun m!4956175 () Bool)

(assert (=> b!4347146 m!4956175))

(declare-fun m!4956177 () Bool)

(assert (=> b!4347157 m!4956177))

(check-sat (not b!4347145) (not b!4347143) (not b!4347158) tp_is_empty!25027 (not b!4347144) (not b!4347150) (not b!4347142) (not b!4347147) (not b!4347149) (not b!4347155) tp_is_empty!25025 (not b!4347152) (not b!4347156) (not b!4347151) (not b!4347154) (not b!4347157) (not b!4347153) (not start!419700) (not b!4347146))
(check-sat)
