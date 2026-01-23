; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!422124 () Bool)

(assert start!422124)

(declare-fun b!4358891 () Bool)

(declare-fun e!2712664 () Bool)

(declare-datatypes ((V!10556 0))(
  ( (V!10557 (val!16519 Int)) )
))
(declare-datatypes ((K!10310 0))(
  ( (K!10311 (val!16520 Int)) )
))
(declare-datatypes ((tuple2!48358 0))(
  ( (tuple2!48359 (_1!27473 K!10310) (_2!27473 V!10556)) )
))
(declare-datatypes ((List!49077 0))(
  ( (Nil!48953) (Cons!48953 (h!54510 tuple2!48358) (t!355997 List!49077)) )
))
(declare-datatypes ((tuple2!48360 0))(
  ( (tuple2!48361 (_1!27474 (_ BitVec 64)) (_2!27474 List!49077)) )
))
(declare-datatypes ((List!49078 0))(
  ( (Nil!48954) (Cons!48954 (h!54511 tuple2!48360) (t!355998 List!49078)) )
))
(declare-datatypes ((ListLongMap!1627 0))(
  ( (ListLongMap!1628 (toList!2977 List!49078)) )
))
(declare-fun lm!1707 () ListLongMap!1627)

(declare-fun lt!1571404 () tuple2!48360)

(declare-fun head!9062 (ListLongMap!1627) tuple2!48360)

(assert (=> b!4358891 (= e!2712664 (not (= (head!9062 lm!1707) lt!1571404)))))

(declare-fun res!1791837 () Bool)

(declare-fun e!2712666 () Bool)

(assert (=> start!422124 (=> (not res!1791837) (not e!2712666))))

(declare-fun lambda!141021 () Int)

(declare-fun forall!9136 (List!49078 Int) Bool)

(assert (=> start!422124 (= res!1791837 (forall!9136 (toList!2977 lm!1707) lambda!141021))))

(assert (=> start!422124 e!2712666))

(declare-fun e!2712663 () Bool)

(assert (=> start!422124 e!2712663))

(assert (=> start!422124 true))

(declare-fun e!2712668 () Bool)

(declare-fun inv!64496 (ListLongMap!1627) Bool)

(assert (=> start!422124 (and (inv!64496 lm!1707) e!2712668)))

(declare-fun tp_is_empty!25225 () Bool)

(assert (=> start!422124 tp_is_empty!25225))

(declare-fun tp_is_empty!25227 () Bool)

(assert (=> start!422124 tp_is_empty!25227))

(declare-fun b!4358892 () Bool)

(declare-fun e!2712667 () Bool)

(declare-fun e!2712665 () Bool)

(assert (=> b!4358892 (= e!2712667 e!2712665)))

(declare-fun res!1791831 () Bool)

(assert (=> b!4358892 (=> res!1791831 e!2712665)))

(declare-fun hash!377 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4358892 (= res!1791831 (or (and ((_ is Cons!48954) (toList!2977 lm!1707)) (= (_1!27474 (h!54511 (toList!2977 lm!1707))) hash!377)) (not ((_ is Cons!48954) (toList!2977 lm!1707))) (= (_1!27474 (h!54511 (toList!2977 lm!1707))) hash!377)))))

(declare-fun e!2712662 () Bool)

(assert (=> b!4358892 e!2712662))

(declare-fun res!1791833 () Bool)

(assert (=> b!4358892 (=> (not res!1791833) (not e!2712662))))

(declare-fun lt!1571414 () ListLongMap!1627)

(assert (=> b!4358892 (= res!1791833 (forall!9136 (toList!2977 lt!1571414) lambda!141021))))

(declare-fun +!651 (ListLongMap!1627 tuple2!48360) ListLongMap!1627)

(assert (=> b!4358892 (= lt!1571414 (+!651 lm!1707 lt!1571404))))

(declare-fun newBucket!200 () List!49077)

(assert (=> b!4358892 (= lt!1571404 (tuple2!48361 hash!377 newBucket!200))))

(declare-datatypes ((Unit!72037 0))(
  ( (Unit!72038) )
))
(declare-fun lt!1571413 () Unit!72037)

(declare-fun addValidProp!151 (ListLongMap!1627 Int (_ BitVec 64) List!49077) Unit!72037)

(assert (=> b!4358892 (= lt!1571413 (addValidProp!151 lm!1707 lambda!141021 hash!377 newBucket!200))))

(assert (=> b!4358892 (forall!9136 (toList!2977 lm!1707) lambda!141021)))

(declare-fun b!4358893 () Bool)

(declare-fun res!1791828 () Bool)

(assert (=> b!4358893 (=> (not res!1791828) (not e!2712666))))

(declare-datatypes ((Hashable!4889 0))(
  ( (HashableExt!4888 (__x!30592 Int)) )
))
(declare-fun hashF!1247 () Hashable!4889)

(declare-fun allKeysSameHashInMap!601 (ListLongMap!1627 Hashable!4889) Bool)

(assert (=> b!4358893 (= res!1791828 (allKeysSameHashInMap!601 lm!1707 hashF!1247))))

(declare-fun b!4358894 () Bool)

(declare-fun e!2712661 () Bool)

(declare-fun key!3918 () K!10310)

(declare-fun containsKey!710 (List!49077 K!10310) Bool)

(assert (=> b!4358894 (= e!2712661 (not (containsKey!710 (_2!27474 (h!54511 (toList!2977 lm!1707))) key!3918)))))

(declare-fun b!4358895 () Bool)

(declare-fun res!1791829 () Bool)

(declare-fun e!2712660 () Bool)

(assert (=> b!4358895 (=> (not res!1791829) (not e!2712660))))

(declare-fun contains!11171 (ListLongMap!1627 (_ BitVec 64)) Bool)

(assert (=> b!4358895 (= res!1791829 (contains!11171 lm!1707 hash!377))))

(declare-fun b!4358896 () Bool)

(assert (=> b!4358896 (= e!2712660 (not e!2712667))))

(declare-fun res!1791826 () Bool)

(assert (=> b!4358896 (=> res!1791826 e!2712667)))

(declare-fun lt!1571409 () List!49077)

(declare-fun lt!1571406 () tuple2!48358)

(declare-fun removePairForKey!467 (List!49077 K!10310) List!49077)

(assert (=> b!4358896 (= res!1791826 (not (= newBucket!200 (Cons!48953 lt!1571406 (removePairForKey!467 lt!1571409 key!3918)))))))

(declare-fun newValue!99 () V!10556)

(assert (=> b!4358896 (= lt!1571406 (tuple2!48359 key!3918 newValue!99))))

(declare-fun lt!1571408 () Unit!72037)

(declare-fun lt!1571402 () tuple2!48360)

(declare-fun forallContained!1777 (List!49078 Int tuple2!48360) Unit!72037)

(assert (=> b!4358896 (= lt!1571408 (forallContained!1777 (toList!2977 lm!1707) lambda!141021 lt!1571402))))

(declare-fun contains!11172 (List!49078 tuple2!48360) Bool)

(assert (=> b!4358896 (contains!11172 (toList!2977 lm!1707) lt!1571402)))

(assert (=> b!4358896 (= lt!1571402 (tuple2!48361 hash!377 lt!1571409))))

(declare-fun lt!1571403 () Unit!72037)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!344 (List!49078 (_ BitVec 64) List!49077) Unit!72037)

(assert (=> b!4358896 (= lt!1571403 (lemmaGetValueByKeyImpliesContainsTuple!344 (toList!2977 lm!1707) hash!377 lt!1571409))))

(declare-fun apply!11349 (ListLongMap!1627 (_ BitVec 64)) List!49077)

(assert (=> b!4358896 (= lt!1571409 (apply!11349 lm!1707 hash!377))))

(declare-fun b!4358897 () Bool)

(declare-fun tp!1330241 () Bool)

(assert (=> b!4358897 (= e!2712668 tp!1330241)))

(declare-fun tp!1330242 () Bool)

(declare-fun b!4358898 () Bool)

(assert (=> b!4358898 (= e!2712663 (and tp_is_empty!25225 tp_is_empty!25227 tp!1330242))))

(declare-fun b!4358899 () Bool)

(assert (=> b!4358899 (= e!2712666 e!2712660)))

(declare-fun res!1791832 () Bool)

(assert (=> b!4358899 (=> (not res!1791832) (not e!2712660))))

(declare-datatypes ((ListMap!2221 0))(
  ( (ListMap!2222 (toList!2978 List!49077)) )
))
(declare-fun lt!1571401 () ListMap!2221)

(declare-fun contains!11173 (ListMap!2221 K!10310) Bool)

(assert (=> b!4358899 (= res!1791832 (contains!11173 lt!1571401 key!3918))))

(declare-fun extractMap!556 (List!49078) ListMap!2221)

(assert (=> b!4358899 (= lt!1571401 (extractMap!556 (toList!2977 lm!1707)))))

(declare-fun b!4358900 () Bool)

(declare-fun res!1791830 () Bool)

(assert (=> b!4358900 (=> res!1791830 e!2712667)))

(declare-fun noDuplicateKeys!497 (List!49077) Bool)

(assert (=> b!4358900 (= res!1791830 (not (noDuplicateKeys!497 newBucket!200)))))

(declare-fun b!4358901 () Bool)

(declare-fun res!1791827 () Bool)

(assert (=> b!4358901 (=> (not res!1791827) (not e!2712666))))

(declare-fun hash!1587 (Hashable!4889 K!10310) (_ BitVec 64))

(assert (=> b!4358901 (= res!1791827 (= (hash!1587 hashF!1247 key!3918) hash!377))))

(declare-fun b!4358902 () Bool)

(assert (=> b!4358902 (= e!2712662 (forall!9136 (toList!2977 lt!1571414) lambda!141021))))

(declare-fun b!4358903 () Bool)

(assert (=> b!4358903 (= e!2712665 (forall!9136 (toList!2977 lm!1707) lambda!141021))))

(declare-fun lt!1571410 () ListMap!2221)

(declare-fun lt!1571418 () ListMap!2221)

(declare-fun eq!267 (ListMap!2221 ListMap!2221) Bool)

(declare-fun addToMapMapFromBucket!193 (List!49077 ListMap!2221) ListMap!2221)

(declare-fun +!652 (ListMap!2221 tuple2!48358) ListMap!2221)

(assert (=> b!4358903 (eq!267 (addToMapMapFromBucket!193 (_2!27474 (h!54511 (toList!2977 lm!1707))) lt!1571410) (+!652 lt!1571418 lt!1571406))))

(declare-fun lt!1571412 () Unit!72037)

(declare-fun lt!1571417 () ListMap!2221)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!76 (ListMap!2221 K!10310 V!10556 List!49077) Unit!72037)

(assert (=> b!4358903 (= lt!1571412 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!76 lt!1571417 key!3918 newValue!99 (_2!27474 (h!54511 (toList!2977 lm!1707)))))))

(assert (=> b!4358903 (= lt!1571401 lt!1571418)))

(assert (=> b!4358903 (= lt!1571418 (addToMapMapFromBucket!193 (_2!27474 (h!54511 (toList!2977 lm!1707))) lt!1571417))))

(assert (=> b!4358903 e!2712664))

(declare-fun res!1791834 () Bool)

(assert (=> b!4358903 (=> (not res!1791834) (not e!2712664))))

(declare-fun lt!1571405 () ListMap!2221)

(assert (=> b!4358903 (= res!1791834 (eq!267 lt!1571405 lt!1571410))))

(assert (=> b!4358903 (= lt!1571410 (+!652 lt!1571417 lt!1571406))))

(declare-fun lt!1571415 () ListLongMap!1627)

(assert (=> b!4358903 (= lt!1571405 (extractMap!556 (toList!2977 (+!651 lt!1571415 lt!1571404))))))

(declare-fun lt!1571407 () Unit!72037)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!101 (ListLongMap!1627 (_ BitVec 64) List!49077 K!10310 V!10556 Hashable!4889) Unit!72037)

(assert (=> b!4358903 (= lt!1571407 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!101 lt!1571415 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> b!4358903 (contains!11173 lt!1571417 key!3918)))

(assert (=> b!4358903 (= lt!1571417 (extractMap!556 (toList!2977 lt!1571415)))))

(declare-fun tail!7010 (ListLongMap!1627) ListLongMap!1627)

(assert (=> b!4358903 (= lt!1571415 (tail!7010 lm!1707))))

(declare-fun lt!1571416 () ListMap!2221)

(assert (=> b!4358903 (contains!11173 lt!1571416 key!3918)))

(declare-fun lt!1571400 () Unit!72037)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!40 (List!49077 K!10310 V!10556 ListMap!2221) Unit!72037)

(assert (=> b!4358903 (= lt!1571400 (lemmaAddToMapContainsAndNotInListThenInAcc!40 (_2!27474 (h!54511 (toList!2977 lm!1707))) key!3918 newValue!99 lt!1571416))))

(assert (=> b!4358903 (= lt!1571416 (extractMap!556 (t!355998 (toList!2977 lm!1707))))))

(assert (=> b!4358903 e!2712661))

(declare-fun res!1791836 () Bool)

(assert (=> b!4358903 (=> (not res!1791836) (not e!2712661))))

(assert (=> b!4358903 (= res!1791836 (not (containsKey!710 (apply!11349 lm!1707 (_1!27474 (h!54511 (toList!2977 lm!1707)))) key!3918)))))

(declare-fun lt!1571411 () Unit!72037)

(declare-fun lemmaNotSameHashThenCannotContainKey!44 (ListLongMap!1627 K!10310 (_ BitVec 64) Hashable!4889) Unit!72037)

(assert (=> b!4358903 (= lt!1571411 (lemmaNotSameHashThenCannotContainKey!44 lm!1707 key!3918 (_1!27474 (h!54511 (toList!2977 lm!1707))) hashF!1247))))

(declare-fun b!4358904 () Bool)

(declare-fun res!1791835 () Bool)

(assert (=> b!4358904 (=> (not res!1791835) (not e!2712666))))

(declare-fun allKeysSameHash!455 (List!49077 (_ BitVec 64) Hashable!4889) Bool)

(assert (=> b!4358904 (= res!1791835 (allKeysSameHash!455 newBucket!200 hash!377 hashF!1247))))

(assert (= (and start!422124 res!1791837) b!4358893))

(assert (= (and b!4358893 res!1791828) b!4358901))

(assert (= (and b!4358901 res!1791827) b!4358904))

(assert (= (and b!4358904 res!1791835) b!4358899))

(assert (= (and b!4358899 res!1791832) b!4358895))

(assert (= (and b!4358895 res!1791829) b!4358896))

(assert (= (and b!4358896 (not res!1791826)) b!4358900))

(assert (= (and b!4358900 (not res!1791830)) b!4358892))

(assert (= (and b!4358892 res!1791833) b!4358902))

(assert (= (and b!4358892 (not res!1791831)) b!4358903))

(assert (= (and b!4358903 res!1791836) b!4358894))

(assert (= (and b!4358903 res!1791834) b!4358891))

(assert (= (and start!422124 ((_ is Cons!48953) newBucket!200)) b!4358898))

(assert (= start!422124 b!4358897))

(declare-fun m!4975147 () Bool)

(assert (=> b!4358896 m!4975147))

(declare-fun m!4975149 () Bool)

(assert (=> b!4358896 m!4975149))

(declare-fun m!4975151 () Bool)

(assert (=> b!4358896 m!4975151))

(declare-fun m!4975153 () Bool)

(assert (=> b!4358896 m!4975153))

(declare-fun m!4975155 () Bool)

(assert (=> b!4358896 m!4975155))

(declare-fun m!4975157 () Bool)

(assert (=> b!4358902 m!4975157))

(declare-fun m!4975159 () Bool)

(assert (=> start!422124 m!4975159))

(declare-fun m!4975161 () Bool)

(assert (=> start!422124 m!4975161))

(declare-fun m!4975163 () Bool)

(assert (=> b!4358904 m!4975163))

(declare-fun m!4975165 () Bool)

(assert (=> b!4358891 m!4975165))

(declare-fun m!4975167 () Bool)

(assert (=> b!4358895 m!4975167))

(declare-fun m!4975169 () Bool)

(assert (=> b!4358900 m!4975169))

(declare-fun m!4975171 () Bool)

(assert (=> b!4358901 m!4975171))

(declare-fun m!4975173 () Bool)

(assert (=> b!4358893 m!4975173))

(declare-fun m!4975175 () Bool)

(assert (=> b!4358894 m!4975175))

(declare-fun m!4975177 () Bool)

(assert (=> b!4358899 m!4975177))

(declare-fun m!4975179 () Bool)

(assert (=> b!4358899 m!4975179))

(declare-fun m!4975181 () Bool)

(assert (=> b!4358903 m!4975181))

(declare-fun m!4975183 () Bool)

(assert (=> b!4358903 m!4975183))

(declare-fun m!4975185 () Bool)

(assert (=> b!4358903 m!4975185))

(declare-fun m!4975187 () Bool)

(assert (=> b!4358903 m!4975187))

(declare-fun m!4975189 () Bool)

(assert (=> b!4358903 m!4975189))

(declare-fun m!4975191 () Bool)

(assert (=> b!4358903 m!4975191))

(declare-fun m!4975193 () Bool)

(assert (=> b!4358903 m!4975193))

(declare-fun m!4975195 () Bool)

(assert (=> b!4358903 m!4975195))

(declare-fun m!4975197 () Bool)

(assert (=> b!4358903 m!4975197))

(declare-fun m!4975199 () Bool)

(assert (=> b!4358903 m!4975199))

(declare-fun m!4975201 () Bool)

(assert (=> b!4358903 m!4975201))

(assert (=> b!4358903 m!4975193))

(assert (=> b!4358903 m!4975191))

(declare-fun m!4975203 () Bool)

(assert (=> b!4358903 m!4975203))

(declare-fun m!4975205 () Bool)

(assert (=> b!4358903 m!4975205))

(declare-fun m!4975207 () Bool)

(assert (=> b!4358903 m!4975207))

(declare-fun m!4975209 () Bool)

(assert (=> b!4358903 m!4975209))

(assert (=> b!4358903 m!4975159))

(declare-fun m!4975211 () Bool)

(assert (=> b!4358903 m!4975211))

(assert (=> b!4358903 m!4975211))

(declare-fun m!4975213 () Bool)

(assert (=> b!4358903 m!4975213))

(declare-fun m!4975215 () Bool)

(assert (=> b!4358903 m!4975215))

(declare-fun m!4975217 () Bool)

(assert (=> b!4358903 m!4975217))

(assert (=> b!4358892 m!4975157))

(declare-fun m!4975219 () Bool)

(assert (=> b!4358892 m!4975219))

(declare-fun m!4975221 () Bool)

(assert (=> b!4358892 m!4975221))

(assert (=> b!4358892 m!4975159))

(check-sat (not b!4358896) (not start!422124) (not b!4358893) (not b!4358903) (not b!4358900) tp_is_empty!25225 (not b!4358894) (not b!4358904) (not b!4358891) (not b!4358902) tp_is_empty!25227 (not b!4358897) (not b!4358899) (not b!4358892) (not b!4358901) (not b!4358895) (not b!4358898))
(check-sat)
