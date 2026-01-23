; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!463416 () Bool)

(assert start!463416)

(declare-fun res!1939153 () Bool)

(declare-fun e!2884724 () Bool)

(assert (=> start!463416 (=> (not res!1939153) (not e!2884724))))

(declare-datatypes ((K!12905 0))(
  ( (K!12906 (val!18595 Int)) )
))
(declare-datatypes ((V!13151 0))(
  ( (V!13152 (val!18596 Int)) )
))
(declare-datatypes ((tuple2!52454 0))(
  ( (tuple2!52455 (_1!29521 K!12905) (_2!29521 V!13151)) )
))
(declare-datatypes ((List!51648 0))(
  ( (Nil!51524) (Cons!51524 (h!57572 tuple2!52454) (t!358678 List!51648)) )
))
(declare-fun oldBucket!40 () List!51648)

(declare-fun noDuplicateKeys!1502 (List!51648) Bool)

(assert (=> start!463416 (= res!1939153 (noDuplicateKeys!1502 oldBucket!40))))

(assert (=> start!463416 e!2884724))

(assert (=> start!463416 true))

(declare-fun e!2884718 () Bool)

(assert (=> start!463416 e!2884718))

(declare-fun tp_is_empty!29301 () Bool)

(assert (=> start!463416 tp_is_empty!29301))

(declare-fun e!2884723 () Bool)

(assert (=> start!463416 e!2884723))

(declare-fun tp_is_empty!29303 () Bool)

(declare-fun tp!1342074 () Bool)

(declare-fun b!4624589 () Bool)

(assert (=> b!4624589 (= e!2884718 (and tp_is_empty!29301 tp_is_empty!29303 tp!1342074))))

(declare-fun b!4624590 () Bool)

(declare-fun res!1939151 () Bool)

(declare-fun e!2884721 () Bool)

(assert (=> b!4624590 (=> res!1939151 e!2884721)))

(declare-fun lt!1782108 () List!51648)

(declare-fun key!4968 () K!12905)

(declare-fun removePairForKey!1125 (List!51648 K!12905) List!51648)

(assert (=> b!4624590 (= res!1939151 (not (= (removePairForKey!1125 (t!358678 oldBucket!40) key!4968) lt!1782108)))))

(declare-fun b!4624591 () Bool)

(declare-fun e!2884722 () Bool)

(assert (=> b!4624591 (= e!2884721 e!2884722)))

(declare-fun res!1939150 () Bool)

(assert (=> b!4624591 (=> res!1939150 e!2884722)))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lt!1782100 () List!51648)

(declare-datatypes ((ListMap!4273 0))(
  ( (ListMap!4274 (toList!4969 List!51648)) )
))
(declare-fun lt!1782092 () ListMap!4273)

(declare-fun eq!817 (ListMap!4273 ListMap!4273) Bool)

(declare-fun +!1868 (ListMap!4273 tuple2!52454) ListMap!4273)

(declare-datatypes ((tuple2!52456 0))(
  ( (tuple2!52457 (_1!29522 (_ BitVec 64)) (_2!29522 List!51648)) )
))
(declare-datatypes ((List!51649 0))(
  ( (Nil!51525) (Cons!51525 (h!57573 tuple2!52456) (t!358679 List!51649)) )
))
(declare-fun extractMap!1558 (List!51649) ListMap!4273)

(assert (=> b!4624591 (= res!1939150 (not (eq!817 lt!1782092 (+!1868 (extractMap!1558 (Cons!51525 (tuple2!52457 hash!414 lt!1782100) Nil!51525)) (h!57572 oldBucket!40)))))))

(declare-fun lt!1782099 () tuple2!52454)

(declare-fun addToMapMapFromBucket!963 (List!51648 ListMap!4273) ListMap!4273)

(assert (=> b!4624591 (eq!817 (addToMapMapFromBucket!963 (Cons!51524 lt!1782099 lt!1782108) (ListMap!4274 Nil!51524)) (+!1868 (addToMapMapFromBucket!963 lt!1782108 (ListMap!4274 Nil!51524)) lt!1782099))))

(declare-datatypes ((Unit!111893 0))(
  ( (Unit!111894) )
))
(declare-fun lt!1782101 () Unit!111893)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!68 (tuple2!52454 List!51648 ListMap!4273) Unit!111893)

(assert (=> b!4624591 (= lt!1782101 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!68 lt!1782099 lt!1782108 (ListMap!4274 Nil!51524)))))

(declare-fun newBucket!224 () List!51648)

(declare-fun head!9636 (List!51648) tuple2!52454)

(assert (=> b!4624591 (= lt!1782099 (head!9636 newBucket!224))))

(declare-fun lt!1782102 () tuple2!52454)

(assert (=> b!4624591 (eq!817 (addToMapMapFromBucket!963 (Cons!51524 lt!1782102 lt!1782100) (ListMap!4274 Nil!51524)) (+!1868 (addToMapMapFromBucket!963 lt!1782100 (ListMap!4274 Nil!51524)) lt!1782102))))

(declare-fun lt!1782093 () Unit!111893)

(assert (=> b!4624591 (= lt!1782093 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!68 lt!1782102 lt!1782100 (ListMap!4274 Nil!51524)))))

(assert (=> b!4624591 (= lt!1782102 (head!9636 oldBucket!40))))

(declare-fun lt!1782088 () ListMap!4273)

(declare-fun contains!14561 (ListMap!4273 K!12905) Bool)

(assert (=> b!4624591 (contains!14561 lt!1782088 key!4968)))

(declare-fun lt!1782098 () List!51649)

(assert (=> b!4624591 (= lt!1782088 (extractMap!1558 lt!1782098))))

(declare-fun lt!1782096 () Unit!111893)

(declare-datatypes ((Hashable!5899 0))(
  ( (HashableExt!5898 (__x!31602 Int)) )
))
(declare-fun hashF!1389 () Hashable!5899)

(declare-datatypes ((ListLongMap!3559 0))(
  ( (ListLongMap!3560 (toList!4970 List!51649)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!320 (ListLongMap!3559 K!12905 Hashable!5899) Unit!111893)

(assert (=> b!4624591 (= lt!1782096 (lemmaListContainsThenExtractedMapContains!320 (ListLongMap!3560 lt!1782098) key!4968 hashF!1389))))

(assert (=> b!4624591 (= lt!1782098 (Cons!51525 (tuple2!52457 hash!414 (t!358678 oldBucket!40)) Nil!51525))))

(declare-fun b!4624592 () Bool)

(declare-fun e!2884726 () Bool)

(declare-fun lt!1782104 () ListMap!4273)

(assert (=> b!4624592 (= e!2884726 (= lt!1782104 (ListMap!4274 Nil!51524)))))

(declare-fun b!4624593 () Bool)

(declare-fun e!2884720 () Bool)

(declare-fun e!2884717 () Bool)

(assert (=> b!4624593 (= e!2884720 e!2884717)))

(declare-fun res!1939147 () Bool)

(assert (=> b!4624593 (=> (not res!1939147) (not e!2884717))))

(declare-fun lt!1782094 () (_ BitVec 64))

(assert (=> b!4624593 (= res!1939147 (= lt!1782094 hash!414))))

(declare-fun hash!3491 (Hashable!5899 K!12905) (_ BitVec 64))

(assert (=> b!4624593 (= lt!1782094 (hash!3491 hashF!1389 key!4968))))

(declare-fun b!4624594 () Bool)

(declare-fun e!2884716 () Bool)

(assert (=> b!4624594 (= e!2884722 e!2884716)))

(declare-fun res!1939154 () Bool)

(assert (=> b!4624594 (=> res!1939154 e!2884716)))

(declare-fun lt!1782105 () ListMap!4273)

(declare-fun lt!1782086 () ListMap!4273)

(assert (=> b!4624594 (= res!1939154 (not (eq!817 lt!1782086 (+!1868 lt!1782105 lt!1782099))))))

(declare-fun lt!1782085 () List!51649)

(assert (=> b!4624594 (= lt!1782105 (extractMap!1558 lt!1782085))))

(assert (=> b!4624594 (= lt!1782085 (Cons!51525 (tuple2!52457 hash!414 lt!1782108) Nil!51525))))

(assert (=> b!4624594 (= lt!1782086 (extractMap!1558 (Cons!51525 (tuple2!52457 hash!414 newBucket!224) Nil!51525)))))

(declare-fun tp!1342075 () Bool)

(declare-fun b!4624595 () Bool)

(assert (=> b!4624595 (= e!2884723 (and tp_is_empty!29301 tp_is_empty!29303 tp!1342075))))

(declare-fun b!4624596 () Bool)

(declare-fun res!1939146 () Bool)

(assert (=> b!4624596 (=> (not res!1939146) (not e!2884724))))

(declare-fun allKeysSameHash!1356 (List!51648 (_ BitVec 64) Hashable!5899) Bool)

(assert (=> b!4624596 (= res!1939146 (allKeysSameHash!1356 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4624597 () Bool)

(declare-fun e!2884719 () Bool)

(assert (=> b!4624597 (= e!2884719 e!2884721)))

(declare-fun res!1939144 () Bool)

(assert (=> b!4624597 (=> res!1939144 e!2884721)))

(assert (=> b!4624597 (= res!1939144 (not (= (removePairForKey!1125 lt!1782100 key!4968) lt!1782108)))))

(declare-fun tail!8137 (List!51648) List!51648)

(assert (=> b!4624597 (= lt!1782108 (tail!8137 newBucket!224))))

(assert (=> b!4624597 (= lt!1782100 (tail!8137 oldBucket!40))))

(declare-fun b!4624598 () Bool)

(declare-fun e!2884725 () Bool)

(assert (=> b!4624598 (= e!2884717 (not e!2884725))))

(declare-fun res!1939143 () Bool)

(assert (=> b!4624598 (=> res!1939143 e!2884725)))

(get-info :version)

(assert (=> b!4624598 (= res!1939143 (or (and ((_ is Cons!51524) oldBucket!40) (= (_1!29521 (h!57572 oldBucket!40)) key!4968)) (not ((_ is Cons!51524) oldBucket!40)) (= (_1!29521 (h!57572 oldBucket!40)) key!4968)))))

(assert (=> b!4624598 e!2884726))

(declare-fun res!1939148 () Bool)

(assert (=> b!4624598 (=> (not res!1939148) (not e!2884726))))

(assert (=> b!4624598 (= res!1939148 (= lt!1782092 (addToMapMapFromBucket!963 oldBucket!40 lt!1782104)))))

(assert (=> b!4624598 (= lt!1782104 (extractMap!1558 Nil!51525))))

(assert (=> b!4624598 true))

(declare-fun b!4624599 () Bool)

(declare-fun res!1939142 () Bool)

(assert (=> b!4624599 (=> (not res!1939142) (not e!2884724))))

(assert (=> b!4624599 (= res!1939142 (noDuplicateKeys!1502 newBucket!224))))

(declare-fun b!4624600 () Bool)

(declare-fun lambda!191820 () Int)

(declare-fun forall!10818 (List!51649 Int) Bool)

(assert (=> b!4624600 (= e!2884716 (forall!10818 lt!1782085 lambda!191820))))

(declare-fun -!542 (ListMap!4273 K!12905) ListMap!4273)

(assert (=> b!4624600 (eq!817 lt!1782105 (-!542 lt!1782088 key!4968))))

(declare-fun lt!1782095 () Unit!111893)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!104 ((_ BitVec 64) List!51648 List!51648 K!12905 Hashable!5899) Unit!111893)

(assert (=> b!4624600 (= lt!1782095 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!104 hash!414 (t!358678 oldBucket!40) lt!1782108 key!4968 hashF!1389))))

(declare-fun b!4624601 () Bool)

(assert (=> b!4624601 (= e!2884725 e!2884719)))

(declare-fun res!1939152 () Bool)

(assert (=> b!4624601 (=> res!1939152 e!2884719)))

(declare-fun containsKey!2438 (List!51648 K!12905) Bool)

(assert (=> b!4624601 (= res!1939152 (not (containsKey!2438 (t!358678 oldBucket!40) key!4968)))))

(assert (=> b!4624601 (containsKey!2438 oldBucket!40 key!4968)))

(declare-fun lt!1782103 () Unit!111893)

(declare-fun lemmaGetPairDefinedThenContainsKey!48 (List!51648 K!12905 Hashable!5899) Unit!111893)

(assert (=> b!4624601 (= lt!1782103 (lemmaGetPairDefinedThenContainsKey!48 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1782090 () List!51648)

(declare-datatypes ((Option!11580 0))(
  ( (None!11579) (Some!11579 (v!45701 tuple2!52454)) )
))
(declare-fun isDefined!8845 (Option!11580) Bool)

(declare-fun getPair!294 (List!51648 K!12905) Option!11580)

(assert (=> b!4624601 (isDefined!8845 (getPair!294 lt!1782090 key!4968))))

(declare-fun lt!1782097 () tuple2!52456)

(declare-fun lt!1782107 () Unit!111893)

(declare-fun lt!1782087 () List!51649)

(declare-fun forallContained!3044 (List!51649 Int tuple2!52456) Unit!111893)

(assert (=> b!4624601 (= lt!1782107 (forallContained!3044 lt!1782087 lambda!191820 lt!1782097))))

(declare-fun contains!14562 (List!51649 tuple2!52456) Bool)

(assert (=> b!4624601 (contains!14562 lt!1782087 lt!1782097)))

(assert (=> b!4624601 (= lt!1782097 (tuple2!52457 lt!1782094 lt!1782090))))

(declare-fun lt!1782109 () ListLongMap!3559)

(declare-fun lt!1782089 () Unit!111893)

(declare-fun lemmaGetValueImpliesTupleContained!99 (ListLongMap!3559 (_ BitVec 64) List!51648) Unit!111893)

(assert (=> b!4624601 (= lt!1782089 (lemmaGetValueImpliesTupleContained!99 lt!1782109 lt!1782094 lt!1782090))))

(declare-fun apply!12167 (ListLongMap!3559 (_ BitVec 64)) List!51648)

(assert (=> b!4624601 (= lt!1782090 (apply!12167 lt!1782109 lt!1782094))))

(declare-fun contains!14563 (ListLongMap!3559 (_ BitVec 64)) Bool)

(assert (=> b!4624601 (contains!14563 lt!1782109 lt!1782094)))

(declare-fun lt!1782106 () Unit!111893)

(declare-fun lemmaInGenMapThenLongMapContainsHash!500 (ListLongMap!3559 K!12905 Hashable!5899) Unit!111893)

(assert (=> b!4624601 (= lt!1782106 (lemmaInGenMapThenLongMapContainsHash!500 lt!1782109 key!4968 hashF!1389))))

(declare-fun lt!1782091 () Unit!111893)

(declare-fun lemmaInGenMapThenGetPairDefined!90 (ListLongMap!3559 K!12905 Hashable!5899) Unit!111893)

(assert (=> b!4624601 (= lt!1782091 (lemmaInGenMapThenGetPairDefined!90 lt!1782109 key!4968 hashF!1389))))

(assert (=> b!4624601 (= lt!1782109 (ListLongMap!3560 lt!1782087))))

(declare-fun b!4624602 () Bool)

(assert (=> b!4624602 (= e!2884724 e!2884720)))

(declare-fun res!1939141 () Bool)

(assert (=> b!4624602 (=> (not res!1939141) (not e!2884720))))

(assert (=> b!4624602 (= res!1939141 (contains!14561 lt!1782092 key!4968))))

(assert (=> b!4624602 (= lt!1782092 (extractMap!1558 lt!1782087))))

(assert (=> b!4624602 (= lt!1782087 (Cons!51525 (tuple2!52457 hash!414 oldBucket!40) Nil!51525))))

(declare-fun b!4624603 () Bool)

(declare-fun res!1939145 () Bool)

(assert (=> b!4624603 (=> (not res!1939145) (not e!2884717))))

(assert (=> b!4624603 (= res!1939145 (allKeysSameHash!1356 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4624604 () Bool)

(declare-fun res!1939149 () Bool)

(assert (=> b!4624604 (=> (not res!1939149) (not e!2884724))))

(assert (=> b!4624604 (= res!1939149 (= (removePairForKey!1125 oldBucket!40 key!4968) newBucket!224))))

(assert (= (and start!463416 res!1939153) b!4624599))

(assert (= (and b!4624599 res!1939142) b!4624604))

(assert (= (and b!4624604 res!1939149) b!4624596))

(assert (= (and b!4624596 res!1939146) b!4624602))

(assert (= (and b!4624602 res!1939141) b!4624593))

(assert (= (and b!4624593 res!1939147) b!4624603))

(assert (= (and b!4624603 res!1939145) b!4624598))

(assert (= (and b!4624598 res!1939148) b!4624592))

(assert (= (and b!4624598 (not res!1939143)) b!4624601))

(assert (= (and b!4624601 (not res!1939152)) b!4624597))

(assert (= (and b!4624597 (not res!1939144)) b!4624590))

(assert (= (and b!4624590 (not res!1939151)) b!4624591))

(assert (= (and b!4624591 (not res!1939150)) b!4624594))

(assert (= (and b!4624594 (not res!1939154)) b!4624600))

(assert (= (and start!463416 ((_ is Cons!51524) oldBucket!40)) b!4624589))

(assert (= (and start!463416 ((_ is Cons!51524) newBucket!224)) b!4624595))

(declare-fun m!5465107 () Bool)

(assert (=> b!4624602 m!5465107))

(declare-fun m!5465109 () Bool)

(assert (=> b!4624602 m!5465109))

(declare-fun m!5465111 () Bool)

(assert (=> b!4624603 m!5465111))

(declare-fun m!5465113 () Bool)

(assert (=> b!4624600 m!5465113))

(declare-fun m!5465115 () Bool)

(assert (=> b!4624600 m!5465115))

(assert (=> b!4624600 m!5465115))

(declare-fun m!5465117 () Bool)

(assert (=> b!4624600 m!5465117))

(declare-fun m!5465119 () Bool)

(assert (=> b!4624600 m!5465119))

(declare-fun m!5465121 () Bool)

(assert (=> b!4624599 m!5465121))

(declare-fun m!5465123 () Bool)

(assert (=> b!4624597 m!5465123))

(declare-fun m!5465125 () Bool)

(assert (=> b!4624597 m!5465125))

(declare-fun m!5465127 () Bool)

(assert (=> b!4624597 m!5465127))

(declare-fun m!5465129 () Bool)

(assert (=> b!4624598 m!5465129))

(declare-fun m!5465131 () Bool)

(assert (=> b!4624598 m!5465131))

(declare-fun m!5465133 () Bool)

(assert (=> b!4624601 m!5465133))

(declare-fun m!5465135 () Bool)

(assert (=> b!4624601 m!5465135))

(declare-fun m!5465137 () Bool)

(assert (=> b!4624601 m!5465137))

(declare-fun m!5465139 () Bool)

(assert (=> b!4624601 m!5465139))

(declare-fun m!5465141 () Bool)

(assert (=> b!4624601 m!5465141))

(declare-fun m!5465143 () Bool)

(assert (=> b!4624601 m!5465143))

(declare-fun m!5465145 () Bool)

(assert (=> b!4624601 m!5465145))

(declare-fun m!5465147 () Bool)

(assert (=> b!4624601 m!5465147))

(declare-fun m!5465149 () Bool)

(assert (=> b!4624601 m!5465149))

(assert (=> b!4624601 m!5465139))

(declare-fun m!5465151 () Bool)

(assert (=> b!4624601 m!5465151))

(declare-fun m!5465153 () Bool)

(assert (=> b!4624601 m!5465153))

(declare-fun m!5465155 () Bool)

(assert (=> b!4624601 m!5465155))

(declare-fun m!5465157 () Bool)

(assert (=> b!4624604 m!5465157))

(declare-fun m!5465159 () Bool)

(assert (=> b!4624596 m!5465159))

(declare-fun m!5465161 () Bool)

(assert (=> b!4624590 m!5465161))

(declare-fun m!5465163 () Bool)

(assert (=> b!4624593 m!5465163))

(declare-fun m!5465165 () Bool)

(assert (=> start!463416 m!5465165))

(declare-fun m!5465167 () Bool)

(assert (=> b!4624591 m!5465167))

(declare-fun m!5465169 () Bool)

(assert (=> b!4624591 m!5465169))

(declare-fun m!5465171 () Bool)

(assert (=> b!4624591 m!5465171))

(declare-fun m!5465173 () Bool)

(assert (=> b!4624591 m!5465173))

(declare-fun m!5465175 () Bool)

(assert (=> b!4624591 m!5465175))

(declare-fun m!5465177 () Bool)

(assert (=> b!4624591 m!5465177))

(declare-fun m!5465179 () Bool)

(assert (=> b!4624591 m!5465179))

(declare-fun m!5465181 () Bool)

(assert (=> b!4624591 m!5465181))

(assert (=> b!4624591 m!5465171))

(declare-fun m!5465183 () Bool)

(assert (=> b!4624591 m!5465183))

(assert (=> b!4624591 m!5465177))

(declare-fun m!5465185 () Bool)

(assert (=> b!4624591 m!5465185))

(declare-fun m!5465187 () Bool)

(assert (=> b!4624591 m!5465187))

(declare-fun m!5465189 () Bool)

(assert (=> b!4624591 m!5465189))

(assert (=> b!4624591 m!5465173))

(declare-fun m!5465191 () Bool)

(assert (=> b!4624591 m!5465191))

(declare-fun m!5465193 () Bool)

(assert (=> b!4624591 m!5465193))

(declare-fun m!5465195 () Bool)

(assert (=> b!4624591 m!5465195))

(declare-fun m!5465197 () Bool)

(assert (=> b!4624591 m!5465197))

(assert (=> b!4624591 m!5465191))

(assert (=> b!4624591 m!5465189))

(declare-fun m!5465199 () Bool)

(assert (=> b!4624591 m!5465199))

(assert (=> b!4624591 m!5465181))

(assert (=> b!4624591 m!5465193))

(declare-fun m!5465201 () Bool)

(assert (=> b!4624591 m!5465201))

(assert (=> b!4624591 m!5465183))

(declare-fun m!5465203 () Bool)

(assert (=> b!4624594 m!5465203))

(assert (=> b!4624594 m!5465203))

(declare-fun m!5465205 () Bool)

(assert (=> b!4624594 m!5465205))

(declare-fun m!5465207 () Bool)

(assert (=> b!4624594 m!5465207))

(declare-fun m!5465209 () Bool)

(assert (=> b!4624594 m!5465209))

(check-sat (not b!4624591) (not b!4624589) (not b!4624600) (not b!4624596) (not b!4624599) (not b!4624601) tp_is_empty!29301 (not start!463416) (not b!4624598) (not b!4624602) tp_is_empty!29303 (not b!4624593) (not b!4624597) (not b!4624594) (not b!4624603) (not b!4624595) (not b!4624604) (not b!4624590))
(check-sat)
(get-model)

(declare-fun d!1456649 () Bool)

(declare-fun res!1939159 () Bool)

(declare-fun e!2884731 () Bool)

(assert (=> d!1456649 (=> res!1939159 e!2884731)))

(assert (=> d!1456649 (= res!1939159 (not ((_ is Cons!51524) newBucket!224)))))

(assert (=> d!1456649 (= (noDuplicateKeys!1502 newBucket!224) e!2884731)))

(declare-fun b!4624609 () Bool)

(declare-fun e!2884732 () Bool)

(assert (=> b!4624609 (= e!2884731 e!2884732)))

(declare-fun res!1939160 () Bool)

(assert (=> b!4624609 (=> (not res!1939160) (not e!2884732))))

(assert (=> b!4624609 (= res!1939160 (not (containsKey!2438 (t!358678 newBucket!224) (_1!29521 (h!57572 newBucket!224)))))))

(declare-fun b!4624610 () Bool)

(assert (=> b!4624610 (= e!2884732 (noDuplicateKeys!1502 (t!358678 newBucket!224)))))

(assert (= (and d!1456649 (not res!1939159)) b!4624609))

(assert (= (and b!4624609 res!1939160) b!4624610))

(declare-fun m!5465211 () Bool)

(assert (=> b!4624609 m!5465211))

(declare-fun m!5465213 () Bool)

(assert (=> b!4624610 m!5465213))

(assert (=> b!4624599 d!1456649))

(declare-fun b!4624658 () Bool)

(assert (=> b!4624658 true))

(declare-fun bs!1022721 () Bool)

(declare-fun b!4624660 () Bool)

(assert (= bs!1022721 (and b!4624660 b!4624658)))

(declare-fun lambda!191885 () Int)

(declare-fun lambda!191884 () Int)

(assert (=> bs!1022721 (= lambda!191885 lambda!191884)))

(assert (=> b!4624660 true))

(declare-fun lambda!191886 () Int)

(declare-fun lt!1782227 () ListMap!4273)

(assert (=> bs!1022721 (= (= lt!1782227 lt!1782104) (= lambda!191886 lambda!191884))))

(assert (=> b!4624660 (= (= lt!1782227 lt!1782104) (= lambda!191886 lambda!191885))))

(assert (=> b!4624660 true))

(declare-fun bs!1022722 () Bool)

(declare-fun d!1456651 () Bool)

(assert (= bs!1022722 (and d!1456651 b!4624658)))

(declare-fun lt!1782241 () ListMap!4273)

(declare-fun lambda!191887 () Int)

(assert (=> bs!1022722 (= (= lt!1782241 lt!1782104) (= lambda!191887 lambda!191884))))

(declare-fun bs!1022723 () Bool)

(assert (= bs!1022723 (and d!1456651 b!4624660)))

(assert (=> bs!1022723 (= (= lt!1782241 lt!1782104) (= lambda!191887 lambda!191885))))

(assert (=> bs!1022723 (= (= lt!1782241 lt!1782227) (= lambda!191887 lambda!191886))))

(assert (=> d!1456651 true))

(declare-fun b!4624656 () Bool)

(declare-fun e!2884757 () Bool)

(declare-fun call!322568 () Bool)

(assert (=> b!4624656 (= e!2884757 call!322568)))

(declare-fun c!791625 () Bool)

(declare-fun bm!322562 () Bool)

(declare-fun forall!10820 (List!51648 Int) Bool)

(assert (=> bm!322562 (= call!322568 (forall!10820 (toList!4969 lt!1782104) (ite c!791625 lambda!191884 lambda!191886)))))

(declare-fun e!2884758 () Bool)

(assert (=> d!1456651 e!2884758))

(declare-fun res!1939176 () Bool)

(assert (=> d!1456651 (=> (not res!1939176) (not e!2884758))))

(assert (=> d!1456651 (= res!1939176 (forall!10820 oldBucket!40 lambda!191887))))

(declare-fun e!2884759 () ListMap!4273)

(assert (=> d!1456651 (= lt!1782241 e!2884759)))

(assert (=> d!1456651 (= c!791625 ((_ is Nil!51524) oldBucket!40))))

(assert (=> d!1456651 (noDuplicateKeys!1502 oldBucket!40)))

(assert (=> d!1456651 (= (addToMapMapFromBucket!963 oldBucket!40 lt!1782104) lt!1782241)))

(declare-fun call!322569 () Bool)

(declare-fun bm!322563 () Bool)

(assert (=> bm!322563 (= call!322569 (forall!10820 (ite c!791625 (toList!4969 lt!1782104) oldBucket!40) (ite c!791625 lambda!191884 lambda!191886)))))

(declare-fun bm!322564 () Bool)

(declare-fun call!322567 () Unit!111893)

(declare-fun lemmaContainsAllItsOwnKeys!504 (ListMap!4273) Unit!111893)

(assert (=> bm!322564 (= call!322567 (lemmaContainsAllItsOwnKeys!504 lt!1782104))))

(declare-fun b!4624657 () Bool)

(declare-fun invariantList!1202 (List!51648) Bool)

(assert (=> b!4624657 (= e!2884758 (invariantList!1202 (toList!4969 lt!1782241)))))

(assert (=> b!4624658 (= e!2884759 lt!1782104)))

(declare-fun lt!1782235 () Unit!111893)

(assert (=> b!4624658 (= lt!1782235 call!322567)))

(assert (=> b!4624658 call!322569))

(declare-fun lt!1782224 () Unit!111893)

(assert (=> b!4624658 (= lt!1782224 lt!1782235)))

(assert (=> b!4624658 call!322568))

(declare-fun lt!1782236 () Unit!111893)

(declare-fun Unit!111906 () Unit!111893)

(assert (=> b!4624658 (= lt!1782236 Unit!111906)))

(declare-fun b!4624659 () Bool)

(declare-fun res!1939177 () Bool)

(assert (=> b!4624659 (=> (not res!1939177) (not e!2884758))))

(assert (=> b!4624659 (= res!1939177 (forall!10820 (toList!4969 lt!1782104) lambda!191887))))

(assert (=> b!4624660 (= e!2884759 lt!1782227)))

(declare-fun lt!1782229 () ListMap!4273)

(assert (=> b!4624660 (= lt!1782229 (+!1868 lt!1782104 (h!57572 oldBucket!40)))))

(assert (=> b!4624660 (= lt!1782227 (addToMapMapFromBucket!963 (t!358678 oldBucket!40) (+!1868 lt!1782104 (h!57572 oldBucket!40))))))

(declare-fun lt!1782226 () Unit!111893)

(assert (=> b!4624660 (= lt!1782226 call!322567)))

(assert (=> b!4624660 (forall!10820 (toList!4969 lt!1782104) lambda!191885)))

(declare-fun lt!1782230 () Unit!111893)

(assert (=> b!4624660 (= lt!1782230 lt!1782226)))

(assert (=> b!4624660 (forall!10820 (toList!4969 lt!1782229) lambda!191886)))

(declare-fun lt!1782237 () Unit!111893)

(declare-fun Unit!111907 () Unit!111893)

(assert (=> b!4624660 (= lt!1782237 Unit!111907)))

(assert (=> b!4624660 (forall!10820 (t!358678 oldBucket!40) lambda!191886)))

(declare-fun lt!1782234 () Unit!111893)

(declare-fun Unit!111908 () Unit!111893)

(assert (=> b!4624660 (= lt!1782234 Unit!111908)))

(declare-fun lt!1782240 () Unit!111893)

(declare-fun Unit!111909 () Unit!111893)

(assert (=> b!4624660 (= lt!1782240 Unit!111909)))

(declare-fun lt!1782222 () Unit!111893)

(declare-fun forallContained!3046 (List!51648 Int tuple2!52454) Unit!111893)

(assert (=> b!4624660 (= lt!1782222 (forallContained!3046 (toList!4969 lt!1782229) lambda!191886 (h!57572 oldBucket!40)))))

(assert (=> b!4624660 (contains!14561 lt!1782229 (_1!29521 (h!57572 oldBucket!40)))))

(declare-fun lt!1782232 () Unit!111893)

(declare-fun Unit!111910 () Unit!111893)

(assert (=> b!4624660 (= lt!1782232 Unit!111910)))

(assert (=> b!4624660 (contains!14561 lt!1782227 (_1!29521 (h!57572 oldBucket!40)))))

(declare-fun lt!1782221 () Unit!111893)

(declare-fun Unit!111911 () Unit!111893)

(assert (=> b!4624660 (= lt!1782221 Unit!111911)))

(assert (=> b!4624660 call!322569))

(declare-fun lt!1782239 () Unit!111893)

(declare-fun Unit!111912 () Unit!111893)

(assert (=> b!4624660 (= lt!1782239 Unit!111912)))

(assert (=> b!4624660 (forall!10820 (toList!4969 lt!1782229) lambda!191886)))

(declare-fun lt!1782223 () Unit!111893)

(declare-fun Unit!111913 () Unit!111893)

(assert (=> b!4624660 (= lt!1782223 Unit!111913)))

(declare-fun lt!1782233 () Unit!111893)

(declare-fun Unit!111914 () Unit!111893)

(assert (=> b!4624660 (= lt!1782233 Unit!111914)))

(declare-fun lt!1782231 () Unit!111893)

(declare-fun addForallContainsKeyThenBeforeAdding!503 (ListMap!4273 ListMap!4273 K!12905 V!13151) Unit!111893)

(assert (=> b!4624660 (= lt!1782231 (addForallContainsKeyThenBeforeAdding!503 lt!1782104 lt!1782227 (_1!29521 (h!57572 oldBucket!40)) (_2!29521 (h!57572 oldBucket!40))))))

(assert (=> b!4624660 (forall!10820 (toList!4969 lt!1782104) lambda!191886)))

(declare-fun lt!1782238 () Unit!111893)

(assert (=> b!4624660 (= lt!1782238 lt!1782231)))

(assert (=> b!4624660 (forall!10820 (toList!4969 lt!1782104) lambda!191886)))

(declare-fun lt!1782228 () Unit!111893)

(declare-fun Unit!111915 () Unit!111893)

(assert (=> b!4624660 (= lt!1782228 Unit!111915)))

(declare-fun res!1939178 () Bool)

(assert (=> b!4624660 (= res!1939178 (forall!10820 oldBucket!40 lambda!191886))))

(assert (=> b!4624660 (=> (not res!1939178) (not e!2884757))))

(assert (=> b!4624660 e!2884757))

(declare-fun lt!1782225 () Unit!111893)

(declare-fun Unit!111916 () Unit!111893)

(assert (=> b!4624660 (= lt!1782225 Unit!111916)))

(assert (= (and d!1456651 c!791625) b!4624658))

(assert (= (and d!1456651 (not c!791625)) b!4624660))

(assert (= (and b!4624660 res!1939178) b!4624656))

(assert (= (or b!4624658 b!4624660) bm!322564))

(assert (= (or b!4624658 b!4624656) bm!322562))

(assert (= (or b!4624658 b!4624660) bm!322563))

(assert (= (and d!1456651 res!1939176) b!4624659))

(assert (= (and b!4624659 res!1939177) b!4624657))

(declare-fun m!5465271 () Bool)

(assert (=> b!4624657 m!5465271))

(declare-fun m!5465273 () Bool)

(assert (=> bm!322564 m!5465273))

(declare-fun m!5465275 () Bool)

(assert (=> b!4624660 m!5465275))

(declare-fun m!5465277 () Bool)

(assert (=> b!4624660 m!5465277))

(declare-fun m!5465279 () Bool)

(assert (=> b!4624660 m!5465279))

(assert (=> b!4624660 m!5465275))

(declare-fun m!5465281 () Bool)

(assert (=> b!4624660 m!5465281))

(declare-fun m!5465283 () Bool)

(assert (=> b!4624660 m!5465283))

(declare-fun m!5465285 () Bool)

(assert (=> b!4624660 m!5465285))

(declare-fun m!5465287 () Bool)

(assert (=> b!4624660 m!5465287))

(declare-fun m!5465289 () Bool)

(assert (=> b!4624660 m!5465289))

(declare-fun m!5465291 () Bool)

(assert (=> b!4624660 m!5465291))

(assert (=> b!4624660 m!5465287))

(declare-fun m!5465293 () Bool)

(assert (=> b!4624660 m!5465293))

(assert (=> b!4624660 m!5465289))

(declare-fun m!5465295 () Bool)

(assert (=> b!4624660 m!5465295))

(declare-fun m!5465297 () Bool)

(assert (=> bm!322563 m!5465297))

(declare-fun m!5465299 () Bool)

(assert (=> d!1456651 m!5465299))

(assert (=> d!1456651 m!5465165))

(declare-fun m!5465301 () Bool)

(assert (=> b!4624659 m!5465301))

(declare-fun m!5465303 () Bool)

(assert (=> bm!322562 m!5465303))

(assert (=> b!4624598 d!1456651))

(declare-fun bs!1022726 () Bool)

(declare-fun d!1456669 () Bool)

(assert (= bs!1022726 (and d!1456669 b!4624601)))

(declare-fun lambda!191890 () Int)

(assert (=> bs!1022726 (= lambda!191890 lambda!191820)))

(declare-fun lt!1782256 () ListMap!4273)

(assert (=> d!1456669 (invariantList!1202 (toList!4969 lt!1782256))))

(declare-fun e!2884783 () ListMap!4273)

(assert (=> d!1456669 (= lt!1782256 e!2884783)))

(declare-fun c!791634 () Bool)

(assert (=> d!1456669 (= c!791634 ((_ is Cons!51525) Nil!51525))))

(assert (=> d!1456669 (forall!10818 Nil!51525 lambda!191890)))

(assert (=> d!1456669 (= (extractMap!1558 Nil!51525) lt!1782256)))

(declare-fun b!4624698 () Bool)

(assert (=> b!4624698 (= e!2884783 (addToMapMapFromBucket!963 (_2!29522 (h!57573 Nil!51525)) (extractMap!1558 (t!358679 Nil!51525))))))

(declare-fun b!4624699 () Bool)

(assert (=> b!4624699 (= e!2884783 (ListMap!4274 Nil!51524))))

(assert (= (and d!1456669 c!791634) b!4624698))

(assert (= (and d!1456669 (not c!791634)) b!4624699))

(declare-fun m!5465325 () Bool)

(assert (=> d!1456669 m!5465325))

(declare-fun m!5465327 () Bool)

(assert (=> d!1456669 m!5465327))

(declare-fun m!5465329 () Bool)

(assert (=> b!4624698 m!5465329))

(assert (=> b!4624698 m!5465329))

(declare-fun m!5465331 () Bool)

(assert (=> b!4624698 m!5465331))

(assert (=> b!4624598 d!1456669))

(declare-fun d!1456677 () Bool)

(declare-fun res!1939201 () Bool)

(declare-fun e!2884788 () Bool)

(assert (=> d!1456677 (=> res!1939201 e!2884788)))

(assert (=> d!1456677 (= res!1939201 ((_ is Nil!51525) lt!1782085))))

(assert (=> d!1456677 (= (forall!10818 lt!1782085 lambda!191820) e!2884788)))

(declare-fun b!4624704 () Bool)

(declare-fun e!2884789 () Bool)

(assert (=> b!4624704 (= e!2884788 e!2884789)))

(declare-fun res!1939202 () Bool)

(assert (=> b!4624704 (=> (not res!1939202) (not e!2884789))))

(declare-fun dynLambda!21495 (Int tuple2!52456) Bool)

(assert (=> b!4624704 (= res!1939202 (dynLambda!21495 lambda!191820 (h!57573 lt!1782085)))))

(declare-fun b!4624705 () Bool)

(assert (=> b!4624705 (= e!2884789 (forall!10818 (t!358679 lt!1782085) lambda!191820))))

(assert (= (and d!1456677 (not res!1939201)) b!4624704))

(assert (= (and b!4624704 res!1939202) b!4624705))

(declare-fun b_lambda!170709 () Bool)

(assert (=> (not b_lambda!170709) (not b!4624704)))

(declare-fun m!5465333 () Bool)

(assert (=> b!4624704 m!5465333))

(declare-fun m!5465335 () Bool)

(assert (=> b!4624705 m!5465335))

(assert (=> b!4624600 d!1456677))

(declare-fun d!1456679 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8790 (List!51648) (InoxSet tuple2!52454))

(assert (=> d!1456679 (= (eq!817 lt!1782105 (-!542 lt!1782088 key!4968)) (= (content!8790 (toList!4969 lt!1782105)) (content!8790 (toList!4969 (-!542 lt!1782088 key!4968)))))))

(declare-fun bs!1022727 () Bool)

(assert (= bs!1022727 d!1456679))

(declare-fun m!5465337 () Bool)

(assert (=> bs!1022727 m!5465337))

(declare-fun m!5465339 () Bool)

(assert (=> bs!1022727 m!5465339))

(assert (=> b!4624600 d!1456679))

(declare-fun d!1456681 () Bool)

(declare-fun e!2884792 () Bool)

(assert (=> d!1456681 e!2884792))

(declare-fun res!1939205 () Bool)

(assert (=> d!1456681 (=> (not res!1939205) (not e!2884792))))

(declare-fun lt!1782259 () ListMap!4273)

(assert (=> d!1456681 (= res!1939205 (not (contains!14561 lt!1782259 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!251 (List!51648 K!12905) List!51648)

(assert (=> d!1456681 (= lt!1782259 (ListMap!4274 (removePresrvNoDuplicatedKeys!251 (toList!4969 lt!1782088) key!4968)))))

(assert (=> d!1456681 (= (-!542 lt!1782088 key!4968) lt!1782259)))

(declare-fun b!4624708 () Bool)

(declare-datatypes ((List!51650 0))(
  ( (Nil!51526) (Cons!51526 (h!57576 K!12905) (t!358682 List!51650)) )
))
(declare-fun content!8791 (List!51650) (InoxSet K!12905))

(declare-fun keys!18147 (ListMap!4273) List!51650)

(assert (=> b!4624708 (= e!2884792 (= ((_ map and) (content!8791 (keys!18147 lt!1782088)) ((_ map not) (store ((as const (Array K!12905 Bool)) false) key!4968 true))) (content!8791 (keys!18147 lt!1782259))))))

(assert (= (and d!1456681 res!1939205) b!4624708))

(declare-fun m!5465341 () Bool)

(assert (=> d!1456681 m!5465341))

(declare-fun m!5465343 () Bool)

(assert (=> d!1456681 m!5465343))

(declare-fun m!5465345 () Bool)

(assert (=> b!4624708 m!5465345))

(assert (=> b!4624708 m!5465345))

(declare-fun m!5465347 () Bool)

(assert (=> b!4624708 m!5465347))

(declare-fun m!5465349 () Bool)

(assert (=> b!4624708 m!5465349))

(declare-fun m!5465351 () Bool)

(assert (=> b!4624708 m!5465351))

(assert (=> b!4624708 m!5465349))

(declare-fun m!5465353 () Bool)

(assert (=> b!4624708 m!5465353))

(assert (=> b!4624600 d!1456681))

(declare-fun d!1456683 () Bool)

(assert (=> d!1456683 (eq!817 (extractMap!1558 (Cons!51525 (tuple2!52457 hash!414 lt!1782108) Nil!51525)) (-!542 (extractMap!1558 (Cons!51525 (tuple2!52457 hash!414 (t!358678 oldBucket!40)) Nil!51525)) key!4968))))

(declare-fun lt!1782262 () Unit!111893)

(declare-fun choose!31286 ((_ BitVec 64) List!51648 List!51648 K!12905 Hashable!5899) Unit!111893)

(assert (=> d!1456683 (= lt!1782262 (choose!31286 hash!414 (t!358678 oldBucket!40) lt!1782108 key!4968 hashF!1389))))

(assert (=> d!1456683 (noDuplicateKeys!1502 (t!358678 oldBucket!40))))

(assert (=> d!1456683 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!104 hash!414 (t!358678 oldBucket!40) lt!1782108 key!4968 hashF!1389) lt!1782262)))

(declare-fun bs!1022728 () Bool)

(assert (= bs!1022728 d!1456683))

(declare-fun m!5465355 () Bool)

(assert (=> bs!1022728 m!5465355))

(assert (=> bs!1022728 m!5465355))

(declare-fun m!5465357 () Bool)

(assert (=> bs!1022728 m!5465357))

(declare-fun m!5465359 () Bool)

(assert (=> bs!1022728 m!5465359))

(declare-fun m!5465361 () Bool)

(assert (=> bs!1022728 m!5465361))

(assert (=> bs!1022728 m!5465357))

(declare-fun m!5465363 () Bool)

(assert (=> bs!1022728 m!5465363))

(declare-fun m!5465365 () Bool)

(assert (=> bs!1022728 m!5465365))

(assert (=> bs!1022728 m!5465361))

(assert (=> b!4624600 d!1456683))

(declare-fun d!1456685 () Bool)

(declare-fun e!2884799 () Bool)

(assert (=> d!1456685 e!2884799))

(declare-fun res!1939218 () Bool)

(assert (=> d!1456685 (=> (not res!1939218) (not e!2884799))))

(declare-fun lt!1782288 () ListMap!4273)

(assert (=> d!1456685 (= res!1939218 (contains!14561 lt!1782288 (_1!29521 lt!1782099)))))

(declare-fun lt!1782289 () List!51648)

(assert (=> d!1456685 (= lt!1782288 (ListMap!4274 lt!1782289))))

(declare-fun lt!1782290 () Unit!111893)

(declare-fun lt!1782287 () Unit!111893)

(assert (=> d!1456685 (= lt!1782290 lt!1782287)))

(declare-datatypes ((Option!11582 0))(
  ( (None!11581) (Some!11581 (v!45707 V!13151)) )
))
(declare-fun getValueByKey!1446 (List!51648 K!12905) Option!11582)

(assert (=> d!1456685 (= (getValueByKey!1446 lt!1782289 (_1!29521 lt!1782099)) (Some!11581 (_2!29521 lt!1782099)))))

(declare-fun lemmaContainsTupThenGetReturnValue!845 (List!51648 K!12905 V!13151) Unit!111893)

(assert (=> d!1456685 (= lt!1782287 (lemmaContainsTupThenGetReturnValue!845 lt!1782289 (_1!29521 lt!1782099) (_2!29521 lt!1782099)))))

(declare-fun insertNoDuplicatedKeys!353 (List!51648 K!12905 V!13151) List!51648)

(assert (=> d!1456685 (= lt!1782289 (insertNoDuplicatedKeys!353 (toList!4969 (addToMapMapFromBucket!963 lt!1782108 (ListMap!4274 Nil!51524))) (_1!29521 lt!1782099) (_2!29521 lt!1782099)))))

(assert (=> d!1456685 (= (+!1868 (addToMapMapFromBucket!963 lt!1782108 (ListMap!4274 Nil!51524)) lt!1782099) lt!1782288)))

(declare-fun b!4624721 () Bool)

(declare-fun res!1939219 () Bool)

(assert (=> b!4624721 (=> (not res!1939219) (not e!2884799))))

(assert (=> b!4624721 (= res!1939219 (= (getValueByKey!1446 (toList!4969 lt!1782288) (_1!29521 lt!1782099)) (Some!11581 (_2!29521 lt!1782099))))))

(declare-fun b!4624722 () Bool)

(declare-fun contains!14565 (List!51648 tuple2!52454) Bool)

(assert (=> b!4624722 (= e!2884799 (contains!14565 (toList!4969 lt!1782288) lt!1782099))))

(assert (= (and d!1456685 res!1939218) b!4624721))

(assert (= (and b!4624721 res!1939219) b!4624722))

(declare-fun m!5465367 () Bool)

(assert (=> d!1456685 m!5465367))

(declare-fun m!5465369 () Bool)

(assert (=> d!1456685 m!5465369))

(declare-fun m!5465371 () Bool)

(assert (=> d!1456685 m!5465371))

(declare-fun m!5465373 () Bool)

(assert (=> d!1456685 m!5465373))

(declare-fun m!5465375 () Bool)

(assert (=> b!4624721 m!5465375))

(declare-fun m!5465377 () Bool)

(assert (=> b!4624722 m!5465377))

(assert (=> b!4624591 d!1456685))

(declare-fun d!1456687 () Bool)

(assert (=> d!1456687 (eq!817 (addToMapMapFromBucket!963 (Cons!51524 lt!1782099 lt!1782108) (ListMap!4274 Nil!51524)) (+!1868 (addToMapMapFromBucket!963 lt!1782108 (ListMap!4274 Nil!51524)) lt!1782099))))

(declare-fun lt!1782303 () Unit!111893)

(declare-fun choose!31288 (tuple2!52454 List!51648 ListMap!4273) Unit!111893)

(assert (=> d!1456687 (= lt!1782303 (choose!31288 lt!1782099 lt!1782108 (ListMap!4274 Nil!51524)))))

(assert (=> d!1456687 (noDuplicateKeys!1502 lt!1782108)))

(assert (=> d!1456687 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!68 lt!1782099 lt!1782108 (ListMap!4274 Nil!51524)) lt!1782303)))

(declare-fun bs!1022731 () Bool)

(assert (= bs!1022731 d!1456687))

(assert (=> bs!1022731 m!5465189))

(declare-fun m!5465409 () Bool)

(assert (=> bs!1022731 m!5465409))

(declare-fun m!5465411 () Bool)

(assert (=> bs!1022731 m!5465411))

(assert (=> bs!1022731 m!5465171))

(assert (=> bs!1022731 m!5465173))

(assert (=> bs!1022731 m!5465175))

(assert (=> bs!1022731 m!5465171))

(assert (=> bs!1022731 m!5465189))

(assert (=> bs!1022731 m!5465173))

(assert (=> b!4624591 d!1456687))

(declare-fun bs!1022732 () Bool)

(declare-fun b!4624738 () Bool)

(assert (= bs!1022732 (and b!4624738 b!4624658)))

(declare-fun lambda!191898 () Int)

(assert (=> bs!1022732 (= (= (ListMap!4274 Nil!51524) lt!1782104) (= lambda!191898 lambda!191884))))

(declare-fun bs!1022733 () Bool)

(assert (= bs!1022733 (and b!4624738 b!4624660)))

(assert (=> bs!1022733 (= (= (ListMap!4274 Nil!51524) lt!1782104) (= lambda!191898 lambda!191885))))

(assert (=> bs!1022733 (= (= (ListMap!4274 Nil!51524) lt!1782227) (= lambda!191898 lambda!191886))))

(declare-fun bs!1022734 () Bool)

(assert (= bs!1022734 (and b!4624738 d!1456651)))

(assert (=> bs!1022734 (= (= (ListMap!4274 Nil!51524) lt!1782241) (= lambda!191898 lambda!191887))))

(assert (=> b!4624738 true))

(declare-fun bs!1022735 () Bool)

(declare-fun b!4624740 () Bool)

(assert (= bs!1022735 (and b!4624740 b!4624660)))

(declare-fun lambda!191899 () Int)

(assert (=> bs!1022735 (= (= (ListMap!4274 Nil!51524) lt!1782104) (= lambda!191899 lambda!191885))))

(assert (=> bs!1022735 (= (= (ListMap!4274 Nil!51524) lt!1782227) (= lambda!191899 lambda!191886))))

(declare-fun bs!1022736 () Bool)

(assert (= bs!1022736 (and b!4624740 b!4624738)))

(assert (=> bs!1022736 (= lambda!191899 lambda!191898)))

(declare-fun bs!1022737 () Bool)

(assert (= bs!1022737 (and b!4624740 b!4624658)))

(assert (=> bs!1022737 (= (= (ListMap!4274 Nil!51524) lt!1782104) (= lambda!191899 lambda!191884))))

(declare-fun bs!1022738 () Bool)

(assert (= bs!1022738 (and b!4624740 d!1456651)))

(assert (=> bs!1022738 (= (= (ListMap!4274 Nil!51524) lt!1782241) (= lambda!191899 lambda!191887))))

(assert (=> b!4624740 true))

(declare-fun lambda!191900 () Int)

(declare-fun lt!1782311 () ListMap!4273)

(assert (=> bs!1022735 (= (= lt!1782311 lt!1782104) (= lambda!191900 lambda!191885))))

(assert (=> bs!1022735 (= (= lt!1782311 lt!1782227) (= lambda!191900 lambda!191886))))

(assert (=> bs!1022736 (= (= lt!1782311 (ListMap!4274 Nil!51524)) (= lambda!191900 lambda!191898))))

(assert (=> b!4624740 (= (= lt!1782311 (ListMap!4274 Nil!51524)) (= lambda!191900 lambda!191899))))

(assert (=> bs!1022737 (= (= lt!1782311 lt!1782104) (= lambda!191900 lambda!191884))))

(assert (=> bs!1022738 (= (= lt!1782311 lt!1782241) (= lambda!191900 lambda!191887))))

(assert (=> b!4624740 true))

(declare-fun bs!1022739 () Bool)

(declare-fun d!1456693 () Bool)

(assert (= bs!1022739 (and d!1456693 b!4624660)))

(declare-fun lambda!191903 () Int)

(declare-fun lt!1782325 () ListMap!4273)

(assert (=> bs!1022739 (= (= lt!1782325 lt!1782104) (= lambda!191903 lambda!191885))))

(assert (=> bs!1022739 (= (= lt!1782325 lt!1782227) (= lambda!191903 lambda!191886))))

(declare-fun bs!1022740 () Bool)

(assert (= bs!1022740 (and d!1456693 b!4624738)))

(assert (=> bs!1022740 (= (= lt!1782325 (ListMap!4274 Nil!51524)) (= lambda!191903 lambda!191898))))

(declare-fun bs!1022741 () Bool)

(assert (= bs!1022741 (and d!1456693 b!4624740)))

(assert (=> bs!1022741 (= (= lt!1782325 (ListMap!4274 Nil!51524)) (= lambda!191903 lambda!191899))))

(assert (=> bs!1022741 (= (= lt!1782325 lt!1782311) (= lambda!191903 lambda!191900))))

(declare-fun bs!1022742 () Bool)

(assert (= bs!1022742 (and d!1456693 b!4624658)))

(assert (=> bs!1022742 (= (= lt!1782325 lt!1782104) (= lambda!191903 lambda!191884))))

(declare-fun bs!1022743 () Bool)

(assert (= bs!1022743 (and d!1456693 d!1456651)))

(assert (=> bs!1022743 (= (= lt!1782325 lt!1782241) (= lambda!191903 lambda!191887))))

(assert (=> d!1456693 true))

(declare-fun b!4624736 () Bool)

(declare-fun e!2884811 () Bool)

(declare-fun call!322571 () Bool)

(assert (=> b!4624736 (= e!2884811 call!322571)))

(declare-fun c!791635 () Bool)

(declare-fun bm!322565 () Bool)

(assert (=> bm!322565 (= call!322571 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) (ite c!791635 lambda!191898 lambda!191900)))))

(declare-fun e!2884812 () Bool)

(assert (=> d!1456693 e!2884812))

(declare-fun res!1939233 () Bool)

(assert (=> d!1456693 (=> (not res!1939233) (not e!2884812))))

(assert (=> d!1456693 (= res!1939233 (forall!10820 lt!1782100 lambda!191903))))

(declare-fun e!2884813 () ListMap!4273)

(assert (=> d!1456693 (= lt!1782325 e!2884813)))

(assert (=> d!1456693 (= c!791635 ((_ is Nil!51524) lt!1782100))))

(assert (=> d!1456693 (noDuplicateKeys!1502 lt!1782100)))

(assert (=> d!1456693 (= (addToMapMapFromBucket!963 lt!1782100 (ListMap!4274 Nil!51524)) lt!1782325)))

(declare-fun call!322572 () Bool)

(declare-fun bm!322566 () Bool)

(assert (=> bm!322566 (= call!322572 (forall!10820 (ite c!791635 (toList!4969 (ListMap!4274 Nil!51524)) lt!1782100) (ite c!791635 lambda!191898 lambda!191900)))))

(declare-fun bm!322567 () Bool)

(declare-fun call!322570 () Unit!111893)

(assert (=> bm!322567 (= call!322570 (lemmaContainsAllItsOwnKeys!504 (ListMap!4274 Nil!51524)))))

(declare-fun b!4624737 () Bool)

(assert (=> b!4624737 (= e!2884812 (invariantList!1202 (toList!4969 lt!1782325)))))

(assert (=> b!4624738 (= e!2884813 (ListMap!4274 Nil!51524))))

(declare-fun lt!1782319 () Unit!111893)

(assert (=> b!4624738 (= lt!1782319 call!322570)))

(assert (=> b!4624738 call!322572))

(declare-fun lt!1782308 () Unit!111893)

(assert (=> b!4624738 (= lt!1782308 lt!1782319)))

(assert (=> b!4624738 call!322571))

(declare-fun lt!1782320 () Unit!111893)

(declare-fun Unit!111918 () Unit!111893)

(assert (=> b!4624738 (= lt!1782320 Unit!111918)))

(declare-fun b!4624739 () Bool)

(declare-fun res!1939234 () Bool)

(assert (=> b!4624739 (=> (not res!1939234) (not e!2884812))))

(assert (=> b!4624739 (= res!1939234 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) lambda!191903))))

(assert (=> b!4624740 (= e!2884813 lt!1782311)))

(declare-fun lt!1782313 () ListMap!4273)

(assert (=> b!4624740 (= lt!1782313 (+!1868 (ListMap!4274 Nil!51524) (h!57572 lt!1782100)))))

(assert (=> b!4624740 (= lt!1782311 (addToMapMapFromBucket!963 (t!358678 lt!1782100) (+!1868 (ListMap!4274 Nil!51524) (h!57572 lt!1782100))))))

(declare-fun lt!1782310 () Unit!111893)

(assert (=> b!4624740 (= lt!1782310 call!322570)))

(assert (=> b!4624740 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) lambda!191899)))

(declare-fun lt!1782314 () Unit!111893)

(assert (=> b!4624740 (= lt!1782314 lt!1782310)))

(assert (=> b!4624740 (forall!10820 (toList!4969 lt!1782313) lambda!191900)))

(declare-fun lt!1782321 () Unit!111893)

(declare-fun Unit!111919 () Unit!111893)

(assert (=> b!4624740 (= lt!1782321 Unit!111919)))

(assert (=> b!4624740 (forall!10820 (t!358678 lt!1782100) lambda!191900)))

(declare-fun lt!1782318 () Unit!111893)

(declare-fun Unit!111920 () Unit!111893)

(assert (=> b!4624740 (= lt!1782318 Unit!111920)))

(declare-fun lt!1782324 () Unit!111893)

(declare-fun Unit!111921 () Unit!111893)

(assert (=> b!4624740 (= lt!1782324 Unit!111921)))

(declare-fun lt!1782306 () Unit!111893)

(assert (=> b!4624740 (= lt!1782306 (forallContained!3046 (toList!4969 lt!1782313) lambda!191900 (h!57572 lt!1782100)))))

(assert (=> b!4624740 (contains!14561 lt!1782313 (_1!29521 (h!57572 lt!1782100)))))

(declare-fun lt!1782316 () Unit!111893)

(declare-fun Unit!111922 () Unit!111893)

(assert (=> b!4624740 (= lt!1782316 Unit!111922)))

(assert (=> b!4624740 (contains!14561 lt!1782311 (_1!29521 (h!57572 lt!1782100)))))

(declare-fun lt!1782305 () Unit!111893)

(declare-fun Unit!111923 () Unit!111893)

(assert (=> b!4624740 (= lt!1782305 Unit!111923)))

(assert (=> b!4624740 call!322572))

(declare-fun lt!1782323 () Unit!111893)

(declare-fun Unit!111924 () Unit!111893)

(assert (=> b!4624740 (= lt!1782323 Unit!111924)))

(assert (=> b!4624740 (forall!10820 (toList!4969 lt!1782313) lambda!191900)))

(declare-fun lt!1782307 () Unit!111893)

(declare-fun Unit!111925 () Unit!111893)

(assert (=> b!4624740 (= lt!1782307 Unit!111925)))

(declare-fun lt!1782317 () Unit!111893)

(declare-fun Unit!111926 () Unit!111893)

(assert (=> b!4624740 (= lt!1782317 Unit!111926)))

(declare-fun lt!1782315 () Unit!111893)

(assert (=> b!4624740 (= lt!1782315 (addForallContainsKeyThenBeforeAdding!503 (ListMap!4274 Nil!51524) lt!1782311 (_1!29521 (h!57572 lt!1782100)) (_2!29521 (h!57572 lt!1782100))))))

(assert (=> b!4624740 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) lambda!191900)))

(declare-fun lt!1782322 () Unit!111893)

(assert (=> b!4624740 (= lt!1782322 lt!1782315)))

(assert (=> b!4624740 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) lambda!191900)))

(declare-fun lt!1782312 () Unit!111893)

(declare-fun Unit!111927 () Unit!111893)

(assert (=> b!4624740 (= lt!1782312 Unit!111927)))

(declare-fun res!1939235 () Bool)

(assert (=> b!4624740 (= res!1939235 (forall!10820 lt!1782100 lambda!191900))))

(assert (=> b!4624740 (=> (not res!1939235) (not e!2884811))))

(assert (=> b!4624740 e!2884811))

(declare-fun lt!1782309 () Unit!111893)

(declare-fun Unit!111928 () Unit!111893)

(assert (=> b!4624740 (= lt!1782309 Unit!111928)))

(assert (= (and d!1456693 c!791635) b!4624738))

(assert (= (and d!1456693 (not c!791635)) b!4624740))

(assert (= (and b!4624740 res!1939235) b!4624736))

(assert (= (or b!4624738 b!4624740) bm!322567))

(assert (= (or b!4624738 b!4624736) bm!322565))

(assert (= (or b!4624738 b!4624740) bm!322566))

(assert (= (and d!1456693 res!1939233) b!4624739))

(assert (= (and b!4624739 res!1939234) b!4624737))

(declare-fun m!5465423 () Bool)

(assert (=> b!4624737 m!5465423))

(declare-fun m!5465425 () Bool)

(assert (=> bm!322567 m!5465425))

(declare-fun m!5465427 () Bool)

(assert (=> b!4624740 m!5465427))

(declare-fun m!5465429 () Bool)

(assert (=> b!4624740 m!5465429))

(declare-fun m!5465431 () Bool)

(assert (=> b!4624740 m!5465431))

(assert (=> b!4624740 m!5465427))

(declare-fun m!5465433 () Bool)

(assert (=> b!4624740 m!5465433))

(declare-fun m!5465435 () Bool)

(assert (=> b!4624740 m!5465435))

(declare-fun m!5465437 () Bool)

(assert (=> b!4624740 m!5465437))

(declare-fun m!5465439 () Bool)

(assert (=> b!4624740 m!5465439))

(declare-fun m!5465441 () Bool)

(assert (=> b!4624740 m!5465441))

(declare-fun m!5465443 () Bool)

(assert (=> b!4624740 m!5465443))

(assert (=> b!4624740 m!5465439))

(declare-fun m!5465445 () Bool)

(assert (=> b!4624740 m!5465445))

(assert (=> b!4624740 m!5465441))

(declare-fun m!5465447 () Bool)

(assert (=> b!4624740 m!5465447))

(declare-fun m!5465449 () Bool)

(assert (=> bm!322566 m!5465449))

(declare-fun m!5465451 () Bool)

(assert (=> d!1456693 m!5465451))

(declare-fun m!5465453 () Bool)

(assert (=> d!1456693 m!5465453))

(declare-fun m!5465455 () Bool)

(assert (=> b!4624739 m!5465455))

(declare-fun m!5465457 () Bool)

(assert (=> bm!322565 m!5465457))

(assert (=> b!4624591 d!1456693))

(declare-fun d!1456699 () Bool)

(assert (=> d!1456699 (eq!817 (addToMapMapFromBucket!963 (Cons!51524 lt!1782102 lt!1782100) (ListMap!4274 Nil!51524)) (+!1868 (addToMapMapFromBucket!963 lt!1782100 (ListMap!4274 Nil!51524)) lt!1782102))))

(declare-fun lt!1782329 () Unit!111893)

(assert (=> d!1456699 (= lt!1782329 (choose!31288 lt!1782102 lt!1782100 (ListMap!4274 Nil!51524)))))

(assert (=> d!1456699 (noDuplicateKeys!1502 lt!1782100)))

(assert (=> d!1456699 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!68 lt!1782102 lt!1782100 (ListMap!4274 Nil!51524)) lt!1782329)))

(declare-fun bs!1022748 () Bool)

(assert (= bs!1022748 d!1456699))

(assert (=> bs!1022748 m!5465181))

(assert (=> bs!1022748 m!5465453))

(declare-fun m!5465459 () Bool)

(assert (=> bs!1022748 m!5465459))

(assert (=> bs!1022748 m!5465191))

(assert (=> bs!1022748 m!5465193))

(assert (=> bs!1022748 m!5465195))

(assert (=> bs!1022748 m!5465191))

(assert (=> bs!1022748 m!5465181))

(assert (=> bs!1022748 m!5465193))

(assert (=> b!4624591 d!1456699))

(declare-fun d!1456701 () Bool)

(declare-fun e!2884814 () Bool)

(assert (=> d!1456701 e!2884814))

(declare-fun res!1939236 () Bool)

(assert (=> d!1456701 (=> (not res!1939236) (not e!2884814))))

(declare-fun lt!1782331 () ListMap!4273)

(assert (=> d!1456701 (= res!1939236 (contains!14561 lt!1782331 (_1!29521 lt!1782102)))))

(declare-fun lt!1782332 () List!51648)

(assert (=> d!1456701 (= lt!1782331 (ListMap!4274 lt!1782332))))

(declare-fun lt!1782333 () Unit!111893)

(declare-fun lt!1782330 () Unit!111893)

(assert (=> d!1456701 (= lt!1782333 lt!1782330)))

(assert (=> d!1456701 (= (getValueByKey!1446 lt!1782332 (_1!29521 lt!1782102)) (Some!11581 (_2!29521 lt!1782102)))))

(assert (=> d!1456701 (= lt!1782330 (lemmaContainsTupThenGetReturnValue!845 lt!1782332 (_1!29521 lt!1782102) (_2!29521 lt!1782102)))))

(assert (=> d!1456701 (= lt!1782332 (insertNoDuplicatedKeys!353 (toList!4969 (addToMapMapFromBucket!963 lt!1782100 (ListMap!4274 Nil!51524))) (_1!29521 lt!1782102) (_2!29521 lt!1782102)))))

(assert (=> d!1456701 (= (+!1868 (addToMapMapFromBucket!963 lt!1782100 (ListMap!4274 Nil!51524)) lt!1782102) lt!1782331)))

(declare-fun b!4624741 () Bool)

(declare-fun res!1939237 () Bool)

(assert (=> b!4624741 (=> (not res!1939237) (not e!2884814))))

(assert (=> b!4624741 (= res!1939237 (= (getValueByKey!1446 (toList!4969 lt!1782331) (_1!29521 lt!1782102)) (Some!11581 (_2!29521 lt!1782102))))))

(declare-fun b!4624742 () Bool)

(assert (=> b!4624742 (= e!2884814 (contains!14565 (toList!4969 lt!1782331) lt!1782102))))

(assert (= (and d!1456701 res!1939236) b!4624741))

(assert (= (and b!4624741 res!1939237) b!4624742))

(declare-fun m!5465461 () Bool)

(assert (=> d!1456701 m!5465461))

(declare-fun m!5465463 () Bool)

(assert (=> d!1456701 m!5465463))

(declare-fun m!5465465 () Bool)

(assert (=> d!1456701 m!5465465))

(declare-fun m!5465467 () Bool)

(assert (=> d!1456701 m!5465467))

(declare-fun m!5465469 () Bool)

(assert (=> b!4624741 m!5465469))

(declare-fun m!5465471 () Bool)

(assert (=> b!4624742 m!5465471))

(assert (=> b!4624591 d!1456701))

(declare-fun d!1456703 () Bool)

(assert (=> d!1456703 (= (head!9636 newBucket!224) (h!57572 newBucket!224))))

(assert (=> b!4624591 d!1456703))

(declare-fun d!1456705 () Bool)

(assert (=> d!1456705 (= (eq!817 (addToMapMapFromBucket!963 (Cons!51524 lt!1782099 lt!1782108) (ListMap!4274 Nil!51524)) (+!1868 (addToMapMapFromBucket!963 lt!1782108 (ListMap!4274 Nil!51524)) lt!1782099)) (= (content!8790 (toList!4969 (addToMapMapFromBucket!963 (Cons!51524 lt!1782099 lt!1782108) (ListMap!4274 Nil!51524)))) (content!8790 (toList!4969 (+!1868 (addToMapMapFromBucket!963 lt!1782108 (ListMap!4274 Nil!51524)) lt!1782099)))))))

(declare-fun bs!1022749 () Bool)

(assert (= bs!1022749 d!1456705))

(declare-fun m!5465473 () Bool)

(assert (=> bs!1022749 m!5465473))

(declare-fun m!5465475 () Bool)

(assert (=> bs!1022749 m!5465475))

(assert (=> b!4624591 d!1456705))

(declare-fun b!4624781 () Bool)

(declare-fun e!2884845 () Unit!111893)

(declare-fun e!2884841 () Unit!111893)

(assert (=> b!4624781 (= e!2884845 e!2884841)))

(declare-fun c!791648 () Bool)

(declare-fun call!322578 () Bool)

(assert (=> b!4624781 (= c!791648 call!322578)))

(declare-fun d!1456707 () Bool)

(declare-fun e!2884840 () Bool)

(assert (=> d!1456707 e!2884840))

(declare-fun res!1939254 () Bool)

(assert (=> d!1456707 (=> res!1939254 e!2884840)))

(declare-fun e!2884842 () Bool)

(assert (=> d!1456707 (= res!1939254 e!2884842)))

(declare-fun res!1939252 () Bool)

(assert (=> d!1456707 (=> (not res!1939252) (not e!2884842))))

(declare-fun lt!1782385 () Bool)

(assert (=> d!1456707 (= res!1939252 (not lt!1782385))))

(declare-fun lt!1782388 () Bool)

(assert (=> d!1456707 (= lt!1782385 lt!1782388)))

(declare-fun lt!1782391 () Unit!111893)

(assert (=> d!1456707 (= lt!1782391 e!2884845)))

(declare-fun c!791650 () Bool)

(assert (=> d!1456707 (= c!791650 lt!1782388)))

(declare-fun containsKey!2440 (List!51648 K!12905) Bool)

(assert (=> d!1456707 (= lt!1782388 (containsKey!2440 (toList!4969 lt!1782088) key!4968))))

(assert (=> d!1456707 (= (contains!14561 lt!1782088 key!4968) lt!1782385)))

(declare-fun b!4624782 () Bool)

(declare-fun e!2884844 () Bool)

(assert (=> b!4624782 (= e!2884840 e!2884844)))

(declare-fun res!1939253 () Bool)

(assert (=> b!4624782 (=> (not res!1939253) (not e!2884844))))

(declare-fun isDefined!8847 (Option!11582) Bool)

(assert (=> b!4624782 (= res!1939253 (isDefined!8847 (getValueByKey!1446 (toList!4969 lt!1782088) key!4968)))))

(declare-fun b!4624783 () Bool)

(declare-fun Unit!111929 () Unit!111893)

(assert (=> b!4624783 (= e!2884841 Unit!111929)))

(declare-fun b!4624784 () Bool)

(declare-fun e!2884843 () List!51650)

(declare-fun getKeysList!652 (List!51648) List!51650)

(assert (=> b!4624784 (= e!2884843 (getKeysList!652 (toList!4969 lt!1782088)))))

(declare-fun b!4624785 () Bool)

(declare-fun contains!14566 (List!51650 K!12905) Bool)

(assert (=> b!4624785 (= e!2884842 (not (contains!14566 (keys!18147 lt!1782088) key!4968)))))

(declare-fun b!4624786 () Bool)

(declare-fun lt!1782386 () Unit!111893)

(assert (=> b!4624786 (= e!2884845 lt!1782386)))

(declare-fun lt!1782389 () Unit!111893)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1348 (List!51648 K!12905) Unit!111893)

(assert (=> b!4624786 (= lt!1782389 (lemmaContainsKeyImpliesGetValueByKeyDefined!1348 (toList!4969 lt!1782088) key!4968))))

(assert (=> b!4624786 (isDefined!8847 (getValueByKey!1446 (toList!4969 lt!1782088) key!4968))))

(declare-fun lt!1782390 () Unit!111893)

(assert (=> b!4624786 (= lt!1782390 lt!1782389)))

(declare-fun lemmaInListThenGetKeysListContains!647 (List!51648 K!12905) Unit!111893)

(assert (=> b!4624786 (= lt!1782386 (lemmaInListThenGetKeysListContains!647 (toList!4969 lt!1782088) key!4968))))

(assert (=> b!4624786 call!322578))

(declare-fun bm!322573 () Bool)

(assert (=> bm!322573 (= call!322578 (contains!14566 e!2884843 key!4968))))

(declare-fun c!791649 () Bool)

(assert (=> bm!322573 (= c!791649 c!791650)))

(declare-fun b!4624787 () Bool)

(assert (=> b!4624787 false))

(declare-fun lt!1782392 () Unit!111893)

(declare-fun lt!1782387 () Unit!111893)

(assert (=> b!4624787 (= lt!1782392 lt!1782387)))

(assert (=> b!4624787 (containsKey!2440 (toList!4969 lt!1782088) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!651 (List!51648 K!12905) Unit!111893)

(assert (=> b!4624787 (= lt!1782387 (lemmaInGetKeysListThenContainsKey!651 (toList!4969 lt!1782088) key!4968))))

(declare-fun Unit!111931 () Unit!111893)

(assert (=> b!4624787 (= e!2884841 Unit!111931)))

(declare-fun b!4624788 () Bool)

(assert (=> b!4624788 (= e!2884843 (keys!18147 lt!1782088))))

(declare-fun b!4624789 () Bool)

(assert (=> b!4624789 (= e!2884844 (contains!14566 (keys!18147 lt!1782088) key!4968))))

(assert (= (and d!1456707 c!791650) b!4624786))

(assert (= (and d!1456707 (not c!791650)) b!4624781))

(assert (= (and b!4624781 c!791648) b!4624787))

(assert (= (and b!4624781 (not c!791648)) b!4624783))

(assert (= (or b!4624786 b!4624781) bm!322573))

(assert (= (and bm!322573 c!791649) b!4624784))

(assert (= (and bm!322573 (not c!791649)) b!4624788))

(assert (= (and d!1456707 res!1939252) b!4624785))

(assert (= (and d!1456707 (not res!1939254)) b!4624782))

(assert (= (and b!4624782 res!1939253) b!4624789))

(declare-fun m!5465541 () Bool)

(assert (=> b!4624786 m!5465541))

(declare-fun m!5465543 () Bool)

(assert (=> b!4624786 m!5465543))

(assert (=> b!4624786 m!5465543))

(declare-fun m!5465545 () Bool)

(assert (=> b!4624786 m!5465545))

(declare-fun m!5465547 () Bool)

(assert (=> b!4624786 m!5465547))

(declare-fun m!5465549 () Bool)

(assert (=> d!1456707 m!5465549))

(assert (=> b!4624782 m!5465543))

(assert (=> b!4624782 m!5465543))

(assert (=> b!4624782 m!5465545))

(assert (=> b!4624787 m!5465549))

(declare-fun m!5465551 () Bool)

(assert (=> b!4624787 m!5465551))

(declare-fun m!5465553 () Bool)

(assert (=> b!4624784 m!5465553))

(assert (=> b!4624789 m!5465349))

(assert (=> b!4624789 m!5465349))

(declare-fun m!5465555 () Bool)

(assert (=> b!4624789 m!5465555))

(assert (=> b!4624785 m!5465349))

(assert (=> b!4624785 m!5465349))

(assert (=> b!4624785 m!5465555))

(declare-fun m!5465557 () Bool)

(assert (=> bm!322573 m!5465557))

(assert (=> b!4624788 m!5465349))

(assert (=> b!4624591 d!1456707))

(declare-fun bs!1022773 () Bool)

(declare-fun d!1456725 () Bool)

(assert (= bs!1022773 (and d!1456725 b!4624601)))

(declare-fun lambda!191911 () Int)

(assert (=> bs!1022773 (= lambda!191911 lambda!191820)))

(declare-fun bs!1022774 () Bool)

(assert (= bs!1022774 (and d!1456725 d!1456669)))

(assert (=> bs!1022774 (= lambda!191911 lambda!191890)))

(declare-fun lt!1782393 () ListMap!4273)

(assert (=> d!1456725 (invariantList!1202 (toList!4969 lt!1782393))))

(declare-fun e!2884846 () ListMap!4273)

(assert (=> d!1456725 (= lt!1782393 e!2884846)))

(declare-fun c!791651 () Bool)

(assert (=> d!1456725 (= c!791651 ((_ is Cons!51525) (Cons!51525 (tuple2!52457 hash!414 lt!1782100) Nil!51525)))))

(assert (=> d!1456725 (forall!10818 (Cons!51525 (tuple2!52457 hash!414 lt!1782100) Nil!51525) lambda!191911)))

(assert (=> d!1456725 (= (extractMap!1558 (Cons!51525 (tuple2!52457 hash!414 lt!1782100) Nil!51525)) lt!1782393)))

(declare-fun b!4624790 () Bool)

(assert (=> b!4624790 (= e!2884846 (addToMapMapFromBucket!963 (_2!29522 (h!57573 (Cons!51525 (tuple2!52457 hash!414 lt!1782100) Nil!51525))) (extractMap!1558 (t!358679 (Cons!51525 (tuple2!52457 hash!414 lt!1782100) Nil!51525)))))))

(declare-fun b!4624791 () Bool)

(assert (=> b!4624791 (= e!2884846 (ListMap!4274 Nil!51524))))

(assert (= (and d!1456725 c!791651) b!4624790))

(assert (= (and d!1456725 (not c!791651)) b!4624791))

(declare-fun m!5465559 () Bool)

(assert (=> d!1456725 m!5465559))

(declare-fun m!5465561 () Bool)

(assert (=> d!1456725 m!5465561))

(declare-fun m!5465563 () Bool)

(assert (=> b!4624790 m!5465563))

(assert (=> b!4624790 m!5465563))

(declare-fun m!5465565 () Bool)

(assert (=> b!4624790 m!5465565))

(assert (=> b!4624591 d!1456725))

(declare-fun d!1456727 () Bool)

(assert (=> d!1456727 (= (eq!817 lt!1782092 (+!1868 (extractMap!1558 (Cons!51525 (tuple2!52457 hash!414 lt!1782100) Nil!51525)) (h!57572 oldBucket!40))) (= (content!8790 (toList!4969 lt!1782092)) (content!8790 (toList!4969 (+!1868 (extractMap!1558 (Cons!51525 (tuple2!52457 hash!414 lt!1782100) Nil!51525)) (h!57572 oldBucket!40))))))))

(declare-fun bs!1022775 () Bool)

(assert (= bs!1022775 d!1456727))

(declare-fun m!5465567 () Bool)

(assert (=> bs!1022775 m!5465567))

(declare-fun m!5465569 () Bool)

(assert (=> bs!1022775 m!5465569))

(assert (=> b!4624591 d!1456727))

(declare-fun bs!1022776 () Bool)

(declare-fun d!1456729 () Bool)

(assert (= bs!1022776 (and d!1456729 b!4624601)))

(declare-fun lambda!191912 () Int)

(assert (=> bs!1022776 (= lambda!191912 lambda!191820)))

(declare-fun bs!1022777 () Bool)

(assert (= bs!1022777 (and d!1456729 d!1456669)))

(assert (=> bs!1022777 (= lambda!191912 lambda!191890)))

(declare-fun bs!1022778 () Bool)

(assert (= bs!1022778 (and d!1456729 d!1456725)))

(assert (=> bs!1022778 (= lambda!191912 lambda!191911)))

(declare-fun lt!1782394 () ListMap!4273)

(assert (=> d!1456729 (invariantList!1202 (toList!4969 lt!1782394))))

(declare-fun e!2884847 () ListMap!4273)

(assert (=> d!1456729 (= lt!1782394 e!2884847)))

(declare-fun c!791652 () Bool)

(assert (=> d!1456729 (= c!791652 ((_ is Cons!51525) lt!1782098))))

(assert (=> d!1456729 (forall!10818 lt!1782098 lambda!191912)))

(assert (=> d!1456729 (= (extractMap!1558 lt!1782098) lt!1782394)))

(declare-fun b!4624792 () Bool)

(assert (=> b!4624792 (= e!2884847 (addToMapMapFromBucket!963 (_2!29522 (h!57573 lt!1782098)) (extractMap!1558 (t!358679 lt!1782098))))))

(declare-fun b!4624793 () Bool)

(assert (=> b!4624793 (= e!2884847 (ListMap!4274 Nil!51524))))

(assert (= (and d!1456729 c!791652) b!4624792))

(assert (= (and d!1456729 (not c!791652)) b!4624793))

(declare-fun m!5465571 () Bool)

(assert (=> d!1456729 m!5465571))

(declare-fun m!5465573 () Bool)

(assert (=> d!1456729 m!5465573))

(declare-fun m!5465575 () Bool)

(assert (=> b!4624792 m!5465575))

(assert (=> b!4624792 m!5465575))

(declare-fun m!5465577 () Bool)

(assert (=> b!4624792 m!5465577))

(assert (=> b!4624591 d!1456729))

(declare-fun d!1456731 () Bool)

(declare-fun e!2884848 () Bool)

(assert (=> d!1456731 e!2884848))

(declare-fun res!1939255 () Bool)

(assert (=> d!1456731 (=> (not res!1939255) (not e!2884848))))

(declare-fun lt!1782396 () ListMap!4273)

(assert (=> d!1456731 (= res!1939255 (contains!14561 lt!1782396 (_1!29521 (h!57572 oldBucket!40))))))

(declare-fun lt!1782397 () List!51648)

(assert (=> d!1456731 (= lt!1782396 (ListMap!4274 lt!1782397))))

(declare-fun lt!1782398 () Unit!111893)

(declare-fun lt!1782395 () Unit!111893)

(assert (=> d!1456731 (= lt!1782398 lt!1782395)))

(assert (=> d!1456731 (= (getValueByKey!1446 lt!1782397 (_1!29521 (h!57572 oldBucket!40))) (Some!11581 (_2!29521 (h!57572 oldBucket!40))))))

(assert (=> d!1456731 (= lt!1782395 (lemmaContainsTupThenGetReturnValue!845 lt!1782397 (_1!29521 (h!57572 oldBucket!40)) (_2!29521 (h!57572 oldBucket!40))))))

(assert (=> d!1456731 (= lt!1782397 (insertNoDuplicatedKeys!353 (toList!4969 (extractMap!1558 (Cons!51525 (tuple2!52457 hash!414 lt!1782100) Nil!51525))) (_1!29521 (h!57572 oldBucket!40)) (_2!29521 (h!57572 oldBucket!40))))))

(assert (=> d!1456731 (= (+!1868 (extractMap!1558 (Cons!51525 (tuple2!52457 hash!414 lt!1782100) Nil!51525)) (h!57572 oldBucket!40)) lt!1782396)))

(declare-fun b!4624794 () Bool)

(declare-fun res!1939256 () Bool)

(assert (=> b!4624794 (=> (not res!1939256) (not e!2884848))))

(assert (=> b!4624794 (= res!1939256 (= (getValueByKey!1446 (toList!4969 lt!1782396) (_1!29521 (h!57572 oldBucket!40))) (Some!11581 (_2!29521 (h!57572 oldBucket!40)))))))

(declare-fun b!4624795 () Bool)

(assert (=> b!4624795 (= e!2884848 (contains!14565 (toList!4969 lt!1782396) (h!57572 oldBucket!40)))))

(assert (= (and d!1456731 res!1939255) b!4624794))

(assert (= (and b!4624794 res!1939256) b!4624795))

(declare-fun m!5465579 () Bool)

(assert (=> d!1456731 m!5465579))

(declare-fun m!5465581 () Bool)

(assert (=> d!1456731 m!5465581))

(declare-fun m!5465583 () Bool)

(assert (=> d!1456731 m!5465583))

(declare-fun m!5465585 () Bool)

(assert (=> d!1456731 m!5465585))

(declare-fun m!5465587 () Bool)

(assert (=> b!4624794 m!5465587))

(declare-fun m!5465589 () Bool)

(assert (=> b!4624795 m!5465589))

(assert (=> b!4624591 d!1456731))

(declare-fun d!1456733 () Bool)

(assert (=> d!1456733 (= (head!9636 oldBucket!40) (h!57572 oldBucket!40))))

(assert (=> b!4624591 d!1456733))

(declare-fun bs!1022779 () Bool)

(declare-fun b!4624798 () Bool)

(assert (= bs!1022779 (and b!4624798 b!4624660)))

(declare-fun lambda!191913 () Int)

(assert (=> bs!1022779 (= (= (ListMap!4274 Nil!51524) lt!1782104) (= lambda!191913 lambda!191885))))

(assert (=> bs!1022779 (= (= (ListMap!4274 Nil!51524) lt!1782227) (= lambda!191913 lambda!191886))))

(declare-fun bs!1022780 () Bool)

(assert (= bs!1022780 (and b!4624798 b!4624738)))

(assert (=> bs!1022780 (= lambda!191913 lambda!191898)))

(declare-fun bs!1022781 () Bool)

(assert (= bs!1022781 (and b!4624798 b!4624740)))

(assert (=> bs!1022781 (= lambda!191913 lambda!191899)))

(assert (=> bs!1022781 (= (= (ListMap!4274 Nil!51524) lt!1782311) (= lambda!191913 lambda!191900))))

(declare-fun bs!1022782 () Bool)

(assert (= bs!1022782 (and b!4624798 b!4624658)))

(assert (=> bs!1022782 (= (= (ListMap!4274 Nil!51524) lt!1782104) (= lambda!191913 lambda!191884))))

(declare-fun bs!1022783 () Bool)

(assert (= bs!1022783 (and b!4624798 d!1456693)))

(assert (=> bs!1022783 (= (= (ListMap!4274 Nil!51524) lt!1782325) (= lambda!191913 lambda!191903))))

(declare-fun bs!1022784 () Bool)

(assert (= bs!1022784 (and b!4624798 d!1456651)))

(assert (=> bs!1022784 (= (= (ListMap!4274 Nil!51524) lt!1782241) (= lambda!191913 lambda!191887))))

(assert (=> b!4624798 true))

(declare-fun bs!1022785 () Bool)

(declare-fun b!4624800 () Bool)

(assert (= bs!1022785 (and b!4624800 b!4624660)))

(declare-fun lambda!191914 () Int)

(assert (=> bs!1022785 (= (= (ListMap!4274 Nil!51524) lt!1782104) (= lambda!191914 lambda!191885))))

(assert (=> bs!1022785 (= (= (ListMap!4274 Nil!51524) lt!1782227) (= lambda!191914 lambda!191886))))

(declare-fun bs!1022786 () Bool)

(assert (= bs!1022786 (and b!4624800 b!4624738)))

(assert (=> bs!1022786 (= lambda!191914 lambda!191898)))

(declare-fun bs!1022787 () Bool)

(assert (= bs!1022787 (and b!4624800 b!4624740)))

(assert (=> bs!1022787 (= lambda!191914 lambda!191899)))

(declare-fun bs!1022788 () Bool)

(assert (= bs!1022788 (and b!4624800 b!4624658)))

(assert (=> bs!1022788 (= (= (ListMap!4274 Nil!51524) lt!1782104) (= lambda!191914 lambda!191884))))

(declare-fun bs!1022789 () Bool)

(assert (= bs!1022789 (and b!4624800 d!1456693)))

(assert (=> bs!1022789 (= (= (ListMap!4274 Nil!51524) lt!1782325) (= lambda!191914 lambda!191903))))

(declare-fun bs!1022790 () Bool)

(assert (= bs!1022790 (and b!4624800 d!1456651)))

(assert (=> bs!1022790 (= (= (ListMap!4274 Nil!51524) lt!1782241) (= lambda!191914 lambda!191887))))

(declare-fun bs!1022791 () Bool)

(assert (= bs!1022791 (and b!4624800 b!4624798)))

(assert (=> bs!1022791 (= lambda!191914 lambda!191913)))

(assert (=> bs!1022787 (= (= (ListMap!4274 Nil!51524) lt!1782311) (= lambda!191914 lambda!191900))))

(assert (=> b!4624800 true))

(declare-fun lt!1782405 () ListMap!4273)

(declare-fun lambda!191916 () Int)

(assert (=> bs!1022785 (= (= lt!1782405 lt!1782104) (= lambda!191916 lambda!191885))))

(assert (=> bs!1022785 (= (= lt!1782405 lt!1782227) (= lambda!191916 lambda!191886))))

(assert (=> bs!1022786 (= (= lt!1782405 (ListMap!4274 Nil!51524)) (= lambda!191916 lambda!191898))))

(assert (=> bs!1022787 (= (= lt!1782405 (ListMap!4274 Nil!51524)) (= lambda!191916 lambda!191899))))

(assert (=> bs!1022788 (= (= lt!1782405 lt!1782104) (= lambda!191916 lambda!191884))))

(assert (=> bs!1022789 (= (= lt!1782405 lt!1782325) (= lambda!191916 lambda!191903))))

(assert (=> bs!1022790 (= (= lt!1782405 lt!1782241) (= lambda!191916 lambda!191887))))

(assert (=> b!4624800 (= (= lt!1782405 (ListMap!4274 Nil!51524)) (= lambda!191916 lambda!191914))))

(assert (=> bs!1022791 (= (= lt!1782405 (ListMap!4274 Nil!51524)) (= lambda!191916 lambda!191913))))

(assert (=> bs!1022787 (= (= lt!1782405 lt!1782311) (= lambda!191916 lambda!191900))))

(assert (=> b!4624800 true))

(declare-fun bs!1022798 () Bool)

(declare-fun d!1456735 () Bool)

(assert (= bs!1022798 (and d!1456735 b!4624660)))

(declare-fun lambda!191919 () Int)

(declare-fun lt!1782419 () ListMap!4273)

(assert (=> bs!1022798 (= (= lt!1782419 lt!1782104) (= lambda!191919 lambda!191885))))

(assert (=> bs!1022798 (= (= lt!1782419 lt!1782227) (= lambda!191919 lambda!191886))))

(declare-fun bs!1022800 () Bool)

(assert (= bs!1022800 (and d!1456735 b!4624738)))

(assert (=> bs!1022800 (= (= lt!1782419 (ListMap!4274 Nil!51524)) (= lambda!191919 lambda!191898))))

(declare-fun bs!1022801 () Bool)

(assert (= bs!1022801 (and d!1456735 b!4624740)))

(assert (=> bs!1022801 (= (= lt!1782419 (ListMap!4274 Nil!51524)) (= lambda!191919 lambda!191899))))

(declare-fun bs!1022802 () Bool)

(assert (= bs!1022802 (and d!1456735 b!4624658)))

(assert (=> bs!1022802 (= (= lt!1782419 lt!1782104) (= lambda!191919 lambda!191884))))

(declare-fun bs!1022803 () Bool)

(assert (= bs!1022803 (and d!1456735 d!1456651)))

(assert (=> bs!1022803 (= (= lt!1782419 lt!1782241) (= lambda!191919 lambda!191887))))

(declare-fun bs!1022804 () Bool)

(assert (= bs!1022804 (and d!1456735 b!4624800)))

(assert (=> bs!1022804 (= (= lt!1782419 (ListMap!4274 Nil!51524)) (= lambda!191919 lambda!191914))))

(declare-fun bs!1022805 () Bool)

(assert (= bs!1022805 (and d!1456735 b!4624798)))

(assert (=> bs!1022805 (= (= lt!1782419 (ListMap!4274 Nil!51524)) (= lambda!191919 lambda!191913))))

(assert (=> bs!1022801 (= (= lt!1782419 lt!1782311) (= lambda!191919 lambda!191900))))

(assert (=> bs!1022804 (= (= lt!1782419 lt!1782405) (= lambda!191919 lambda!191916))))

(declare-fun bs!1022806 () Bool)

(assert (= bs!1022806 (and d!1456735 d!1456693)))

(assert (=> bs!1022806 (= (= lt!1782419 lt!1782325) (= lambda!191919 lambda!191903))))

(assert (=> d!1456735 true))

(declare-fun b!4624796 () Bool)

(declare-fun e!2884849 () Bool)

(declare-fun call!322580 () Bool)

(assert (=> b!4624796 (= e!2884849 call!322580)))

(declare-fun c!791653 () Bool)

(declare-fun bm!322574 () Bool)

(assert (=> bm!322574 (= call!322580 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) (ite c!791653 lambda!191913 lambda!191916)))))

(declare-fun e!2884850 () Bool)

(assert (=> d!1456735 e!2884850))

(declare-fun res!1939257 () Bool)

(assert (=> d!1456735 (=> (not res!1939257) (not e!2884850))))

(assert (=> d!1456735 (= res!1939257 (forall!10820 lt!1782108 lambda!191919))))

(declare-fun e!2884851 () ListMap!4273)

(assert (=> d!1456735 (= lt!1782419 e!2884851)))

(assert (=> d!1456735 (= c!791653 ((_ is Nil!51524) lt!1782108))))

(assert (=> d!1456735 (noDuplicateKeys!1502 lt!1782108)))

(assert (=> d!1456735 (= (addToMapMapFromBucket!963 lt!1782108 (ListMap!4274 Nil!51524)) lt!1782419)))

(declare-fun call!322581 () Bool)

(declare-fun bm!322575 () Bool)

(assert (=> bm!322575 (= call!322581 (forall!10820 (ite c!791653 (toList!4969 (ListMap!4274 Nil!51524)) lt!1782108) (ite c!791653 lambda!191913 lambda!191916)))))

(declare-fun bm!322576 () Bool)

(declare-fun call!322579 () Unit!111893)

(assert (=> bm!322576 (= call!322579 (lemmaContainsAllItsOwnKeys!504 (ListMap!4274 Nil!51524)))))

(declare-fun b!4624797 () Bool)

(assert (=> b!4624797 (= e!2884850 (invariantList!1202 (toList!4969 lt!1782419)))))

(assert (=> b!4624798 (= e!2884851 (ListMap!4274 Nil!51524))))

(declare-fun lt!1782413 () Unit!111893)

(assert (=> b!4624798 (= lt!1782413 call!322579)))

(assert (=> b!4624798 call!322581))

(declare-fun lt!1782402 () Unit!111893)

(assert (=> b!4624798 (= lt!1782402 lt!1782413)))

(assert (=> b!4624798 call!322580))

(declare-fun lt!1782414 () Unit!111893)

(declare-fun Unit!111944 () Unit!111893)

(assert (=> b!4624798 (= lt!1782414 Unit!111944)))

(declare-fun b!4624799 () Bool)

(declare-fun res!1939258 () Bool)

(assert (=> b!4624799 (=> (not res!1939258) (not e!2884850))))

(assert (=> b!4624799 (= res!1939258 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) lambda!191919))))

(assert (=> b!4624800 (= e!2884851 lt!1782405)))

(declare-fun lt!1782407 () ListMap!4273)

(assert (=> b!4624800 (= lt!1782407 (+!1868 (ListMap!4274 Nil!51524) (h!57572 lt!1782108)))))

(assert (=> b!4624800 (= lt!1782405 (addToMapMapFromBucket!963 (t!358678 lt!1782108) (+!1868 (ListMap!4274 Nil!51524) (h!57572 lt!1782108))))))

(declare-fun lt!1782404 () Unit!111893)

(assert (=> b!4624800 (= lt!1782404 call!322579)))

(assert (=> b!4624800 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) lambda!191914)))

(declare-fun lt!1782408 () Unit!111893)

(assert (=> b!4624800 (= lt!1782408 lt!1782404)))

(assert (=> b!4624800 (forall!10820 (toList!4969 lt!1782407) lambda!191916)))

(declare-fun lt!1782415 () Unit!111893)

(declare-fun Unit!111945 () Unit!111893)

(assert (=> b!4624800 (= lt!1782415 Unit!111945)))

(assert (=> b!4624800 (forall!10820 (t!358678 lt!1782108) lambda!191916)))

(declare-fun lt!1782412 () Unit!111893)

(declare-fun Unit!111946 () Unit!111893)

(assert (=> b!4624800 (= lt!1782412 Unit!111946)))

(declare-fun lt!1782418 () Unit!111893)

(declare-fun Unit!111947 () Unit!111893)

(assert (=> b!4624800 (= lt!1782418 Unit!111947)))

(declare-fun lt!1782400 () Unit!111893)

(assert (=> b!4624800 (= lt!1782400 (forallContained!3046 (toList!4969 lt!1782407) lambda!191916 (h!57572 lt!1782108)))))

(assert (=> b!4624800 (contains!14561 lt!1782407 (_1!29521 (h!57572 lt!1782108)))))

(declare-fun lt!1782410 () Unit!111893)

(declare-fun Unit!111948 () Unit!111893)

(assert (=> b!4624800 (= lt!1782410 Unit!111948)))

(assert (=> b!4624800 (contains!14561 lt!1782405 (_1!29521 (h!57572 lt!1782108)))))

(declare-fun lt!1782399 () Unit!111893)

(declare-fun Unit!111949 () Unit!111893)

(assert (=> b!4624800 (= lt!1782399 Unit!111949)))

(assert (=> b!4624800 call!322581))

(declare-fun lt!1782417 () Unit!111893)

(declare-fun Unit!111950 () Unit!111893)

(assert (=> b!4624800 (= lt!1782417 Unit!111950)))

(assert (=> b!4624800 (forall!10820 (toList!4969 lt!1782407) lambda!191916)))

(declare-fun lt!1782401 () Unit!111893)

(declare-fun Unit!111951 () Unit!111893)

(assert (=> b!4624800 (= lt!1782401 Unit!111951)))

(declare-fun lt!1782411 () Unit!111893)

(declare-fun Unit!111952 () Unit!111893)

(assert (=> b!4624800 (= lt!1782411 Unit!111952)))

(declare-fun lt!1782409 () Unit!111893)

(assert (=> b!4624800 (= lt!1782409 (addForallContainsKeyThenBeforeAdding!503 (ListMap!4274 Nil!51524) lt!1782405 (_1!29521 (h!57572 lt!1782108)) (_2!29521 (h!57572 lt!1782108))))))

(assert (=> b!4624800 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) lambda!191916)))

(declare-fun lt!1782416 () Unit!111893)

(assert (=> b!4624800 (= lt!1782416 lt!1782409)))

(assert (=> b!4624800 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) lambda!191916)))

(declare-fun lt!1782406 () Unit!111893)

(declare-fun Unit!111953 () Unit!111893)

(assert (=> b!4624800 (= lt!1782406 Unit!111953)))

(declare-fun res!1939259 () Bool)

(assert (=> b!4624800 (= res!1939259 (forall!10820 lt!1782108 lambda!191916))))

(assert (=> b!4624800 (=> (not res!1939259) (not e!2884849))))

(assert (=> b!4624800 e!2884849))

(declare-fun lt!1782403 () Unit!111893)

(declare-fun Unit!111954 () Unit!111893)

(assert (=> b!4624800 (= lt!1782403 Unit!111954)))

(assert (= (and d!1456735 c!791653) b!4624798))

(assert (= (and d!1456735 (not c!791653)) b!4624800))

(assert (= (and b!4624800 res!1939259) b!4624796))

(assert (= (or b!4624798 b!4624800) bm!322576))

(assert (= (or b!4624798 b!4624796) bm!322574))

(assert (= (or b!4624798 b!4624800) bm!322575))

(assert (= (and d!1456735 res!1939257) b!4624799))

(assert (= (and b!4624799 res!1939258) b!4624797))

(declare-fun m!5465603 () Bool)

(assert (=> b!4624797 m!5465603))

(assert (=> bm!322576 m!5465425))

(declare-fun m!5465605 () Bool)

(assert (=> b!4624800 m!5465605))

(declare-fun m!5465607 () Bool)

(assert (=> b!4624800 m!5465607))

(declare-fun m!5465609 () Bool)

(assert (=> b!4624800 m!5465609))

(assert (=> b!4624800 m!5465605))

(declare-fun m!5465611 () Bool)

(assert (=> b!4624800 m!5465611))

(declare-fun m!5465613 () Bool)

(assert (=> b!4624800 m!5465613))

(declare-fun m!5465615 () Bool)

(assert (=> b!4624800 m!5465615))

(declare-fun m!5465617 () Bool)

(assert (=> b!4624800 m!5465617))

(declare-fun m!5465619 () Bool)

(assert (=> b!4624800 m!5465619))

(declare-fun m!5465621 () Bool)

(assert (=> b!4624800 m!5465621))

(assert (=> b!4624800 m!5465617))

(declare-fun m!5465623 () Bool)

(assert (=> b!4624800 m!5465623))

(assert (=> b!4624800 m!5465619))

(declare-fun m!5465625 () Bool)

(assert (=> b!4624800 m!5465625))

(declare-fun m!5465627 () Bool)

(assert (=> bm!322575 m!5465627))

(declare-fun m!5465629 () Bool)

(assert (=> d!1456735 m!5465629))

(assert (=> d!1456735 m!5465409))

(declare-fun m!5465631 () Bool)

(assert (=> b!4624799 m!5465631))

(declare-fun m!5465633 () Bool)

(assert (=> bm!322574 m!5465633))

(assert (=> b!4624591 d!1456735))

(declare-fun bs!1022808 () Bool)

(declare-fun b!4624803 () Bool)

(assert (= bs!1022808 (and b!4624803 b!4624660)))

(declare-fun lambda!191920 () Int)

(assert (=> bs!1022808 (= (= (ListMap!4274 Nil!51524) lt!1782104) (= lambda!191920 lambda!191885))))

(assert (=> bs!1022808 (= (= (ListMap!4274 Nil!51524) lt!1782227) (= lambda!191920 lambda!191886))))

(declare-fun bs!1022809 () Bool)

(assert (= bs!1022809 (and b!4624803 b!4624738)))

(assert (=> bs!1022809 (= lambda!191920 lambda!191898)))

(declare-fun bs!1022810 () Bool)

(assert (= bs!1022810 (and b!4624803 b!4624740)))

(assert (=> bs!1022810 (= lambda!191920 lambda!191899)))

(declare-fun bs!1022811 () Bool)

(assert (= bs!1022811 (and b!4624803 b!4624658)))

(assert (=> bs!1022811 (= (= (ListMap!4274 Nil!51524) lt!1782104) (= lambda!191920 lambda!191884))))

(declare-fun bs!1022812 () Bool)

(assert (= bs!1022812 (and b!4624803 d!1456735)))

(assert (=> bs!1022812 (= (= (ListMap!4274 Nil!51524) lt!1782419) (= lambda!191920 lambda!191919))))

(declare-fun bs!1022813 () Bool)

(assert (= bs!1022813 (and b!4624803 d!1456651)))

(assert (=> bs!1022813 (= (= (ListMap!4274 Nil!51524) lt!1782241) (= lambda!191920 lambda!191887))))

(declare-fun bs!1022814 () Bool)

(assert (= bs!1022814 (and b!4624803 b!4624800)))

(assert (=> bs!1022814 (= lambda!191920 lambda!191914)))

(declare-fun bs!1022815 () Bool)

(assert (= bs!1022815 (and b!4624803 b!4624798)))

(assert (=> bs!1022815 (= lambda!191920 lambda!191913)))

(assert (=> bs!1022810 (= (= (ListMap!4274 Nil!51524) lt!1782311) (= lambda!191920 lambda!191900))))

(assert (=> bs!1022814 (= (= (ListMap!4274 Nil!51524) lt!1782405) (= lambda!191920 lambda!191916))))

(declare-fun bs!1022816 () Bool)

(assert (= bs!1022816 (and b!4624803 d!1456693)))

(assert (=> bs!1022816 (= (= (ListMap!4274 Nil!51524) lt!1782325) (= lambda!191920 lambda!191903))))

(assert (=> b!4624803 true))

(declare-fun bs!1022817 () Bool)

(declare-fun b!4624805 () Bool)

(assert (= bs!1022817 (and b!4624805 b!4624660)))

(declare-fun lambda!191921 () Int)

(assert (=> bs!1022817 (= (= (ListMap!4274 Nil!51524) lt!1782104) (= lambda!191921 lambda!191885))))

(assert (=> bs!1022817 (= (= (ListMap!4274 Nil!51524) lt!1782227) (= lambda!191921 lambda!191886))))

(declare-fun bs!1022818 () Bool)

(assert (= bs!1022818 (and b!4624805 b!4624738)))

(assert (=> bs!1022818 (= lambda!191921 lambda!191898)))

(declare-fun bs!1022819 () Bool)

(assert (= bs!1022819 (and b!4624805 b!4624740)))

(assert (=> bs!1022819 (= lambda!191921 lambda!191899)))

(declare-fun bs!1022820 () Bool)

(assert (= bs!1022820 (and b!4624805 b!4624658)))

(assert (=> bs!1022820 (= (= (ListMap!4274 Nil!51524) lt!1782104) (= lambda!191921 lambda!191884))))

(declare-fun bs!1022821 () Bool)

(assert (= bs!1022821 (and b!4624805 b!4624803)))

(assert (=> bs!1022821 (= lambda!191921 lambda!191920)))

(declare-fun bs!1022822 () Bool)

(assert (= bs!1022822 (and b!4624805 d!1456735)))

(assert (=> bs!1022822 (= (= (ListMap!4274 Nil!51524) lt!1782419) (= lambda!191921 lambda!191919))))

(declare-fun bs!1022823 () Bool)

(assert (= bs!1022823 (and b!4624805 d!1456651)))

(assert (=> bs!1022823 (= (= (ListMap!4274 Nil!51524) lt!1782241) (= lambda!191921 lambda!191887))))

(declare-fun bs!1022824 () Bool)

(assert (= bs!1022824 (and b!4624805 b!4624800)))

(assert (=> bs!1022824 (= lambda!191921 lambda!191914)))

(declare-fun bs!1022825 () Bool)

(assert (= bs!1022825 (and b!4624805 b!4624798)))

(assert (=> bs!1022825 (= lambda!191921 lambda!191913)))

(assert (=> bs!1022819 (= (= (ListMap!4274 Nil!51524) lt!1782311) (= lambda!191921 lambda!191900))))

(assert (=> bs!1022824 (= (= (ListMap!4274 Nil!51524) lt!1782405) (= lambda!191921 lambda!191916))))

(declare-fun bs!1022826 () Bool)

(assert (= bs!1022826 (and b!4624805 d!1456693)))

(assert (=> bs!1022826 (= (= (ListMap!4274 Nil!51524) lt!1782325) (= lambda!191921 lambda!191903))))

(assert (=> b!4624805 true))

(declare-fun lt!1782429 () ListMap!4273)

(declare-fun lambda!191922 () Int)

(assert (=> bs!1022817 (= (= lt!1782429 lt!1782104) (= lambda!191922 lambda!191885))))

(assert (=> bs!1022817 (= (= lt!1782429 lt!1782227) (= lambda!191922 lambda!191886))))

(assert (=> bs!1022818 (= (= lt!1782429 (ListMap!4274 Nil!51524)) (= lambda!191922 lambda!191898))))

(assert (=> bs!1022819 (= (= lt!1782429 (ListMap!4274 Nil!51524)) (= lambda!191922 lambda!191899))))

(assert (=> b!4624805 (= (= lt!1782429 (ListMap!4274 Nil!51524)) (= lambda!191922 lambda!191921))))

(assert (=> bs!1022820 (= (= lt!1782429 lt!1782104) (= lambda!191922 lambda!191884))))

(assert (=> bs!1022821 (= (= lt!1782429 (ListMap!4274 Nil!51524)) (= lambda!191922 lambda!191920))))

(assert (=> bs!1022822 (= (= lt!1782429 lt!1782419) (= lambda!191922 lambda!191919))))

(assert (=> bs!1022823 (= (= lt!1782429 lt!1782241) (= lambda!191922 lambda!191887))))

(assert (=> bs!1022824 (= (= lt!1782429 (ListMap!4274 Nil!51524)) (= lambda!191922 lambda!191914))))

(assert (=> bs!1022825 (= (= lt!1782429 (ListMap!4274 Nil!51524)) (= lambda!191922 lambda!191913))))

(assert (=> bs!1022819 (= (= lt!1782429 lt!1782311) (= lambda!191922 lambda!191900))))

(assert (=> bs!1022824 (= (= lt!1782429 lt!1782405) (= lambda!191922 lambda!191916))))

(assert (=> bs!1022826 (= (= lt!1782429 lt!1782325) (= lambda!191922 lambda!191903))))

(assert (=> b!4624805 true))

(declare-fun bs!1022827 () Bool)

(declare-fun d!1456741 () Bool)

(assert (= bs!1022827 (and d!1456741 b!4624660)))

(declare-fun lt!1782443 () ListMap!4273)

(declare-fun lambda!191923 () Int)

(assert (=> bs!1022827 (= (= lt!1782443 lt!1782104) (= lambda!191923 lambda!191885))))

(assert (=> bs!1022827 (= (= lt!1782443 lt!1782227) (= lambda!191923 lambda!191886))))

(declare-fun bs!1022828 () Bool)

(assert (= bs!1022828 (and d!1456741 b!4624738)))

(assert (=> bs!1022828 (= (= lt!1782443 (ListMap!4274 Nil!51524)) (= lambda!191923 lambda!191898))))

(declare-fun bs!1022829 () Bool)

(assert (= bs!1022829 (and d!1456741 b!4624740)))

(assert (=> bs!1022829 (= (= lt!1782443 (ListMap!4274 Nil!51524)) (= lambda!191923 lambda!191899))))

(declare-fun bs!1022830 () Bool)

(assert (= bs!1022830 (and d!1456741 b!4624805)))

(assert (=> bs!1022830 (= (= lt!1782443 (ListMap!4274 Nil!51524)) (= lambda!191923 lambda!191921))))

(declare-fun bs!1022831 () Bool)

(assert (= bs!1022831 (and d!1456741 b!4624658)))

(assert (=> bs!1022831 (= (= lt!1782443 lt!1782104) (= lambda!191923 lambda!191884))))

(declare-fun bs!1022832 () Bool)

(assert (= bs!1022832 (and d!1456741 b!4624803)))

(assert (=> bs!1022832 (= (= lt!1782443 (ListMap!4274 Nil!51524)) (= lambda!191923 lambda!191920))))

(assert (=> bs!1022830 (= (= lt!1782443 lt!1782429) (= lambda!191923 lambda!191922))))

(declare-fun bs!1022833 () Bool)

(assert (= bs!1022833 (and d!1456741 d!1456735)))

(assert (=> bs!1022833 (= (= lt!1782443 lt!1782419) (= lambda!191923 lambda!191919))))

(declare-fun bs!1022834 () Bool)

(assert (= bs!1022834 (and d!1456741 d!1456651)))

(assert (=> bs!1022834 (= (= lt!1782443 lt!1782241) (= lambda!191923 lambda!191887))))

(declare-fun bs!1022835 () Bool)

(assert (= bs!1022835 (and d!1456741 b!4624800)))

(assert (=> bs!1022835 (= (= lt!1782443 (ListMap!4274 Nil!51524)) (= lambda!191923 lambda!191914))))

(declare-fun bs!1022836 () Bool)

(assert (= bs!1022836 (and d!1456741 b!4624798)))

(assert (=> bs!1022836 (= (= lt!1782443 (ListMap!4274 Nil!51524)) (= lambda!191923 lambda!191913))))

(assert (=> bs!1022829 (= (= lt!1782443 lt!1782311) (= lambda!191923 lambda!191900))))

(assert (=> bs!1022835 (= (= lt!1782443 lt!1782405) (= lambda!191923 lambda!191916))))

(declare-fun bs!1022837 () Bool)

(assert (= bs!1022837 (and d!1456741 d!1456693)))

(assert (=> bs!1022837 (= (= lt!1782443 lt!1782325) (= lambda!191923 lambda!191903))))

(assert (=> d!1456741 true))

(declare-fun b!4624801 () Bool)

(declare-fun e!2884852 () Bool)

(declare-fun call!322583 () Bool)

(assert (=> b!4624801 (= e!2884852 call!322583)))

(declare-fun bm!322577 () Bool)

(declare-fun c!791654 () Bool)

(assert (=> bm!322577 (= call!322583 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) (ite c!791654 lambda!191920 lambda!191922)))))

(declare-fun e!2884853 () Bool)

(assert (=> d!1456741 e!2884853))

(declare-fun res!1939260 () Bool)

(assert (=> d!1456741 (=> (not res!1939260) (not e!2884853))))

(assert (=> d!1456741 (= res!1939260 (forall!10820 (Cons!51524 lt!1782099 lt!1782108) lambda!191923))))

(declare-fun e!2884854 () ListMap!4273)

(assert (=> d!1456741 (= lt!1782443 e!2884854)))

(assert (=> d!1456741 (= c!791654 ((_ is Nil!51524) (Cons!51524 lt!1782099 lt!1782108)))))

(assert (=> d!1456741 (noDuplicateKeys!1502 (Cons!51524 lt!1782099 lt!1782108))))

(assert (=> d!1456741 (= (addToMapMapFromBucket!963 (Cons!51524 lt!1782099 lt!1782108) (ListMap!4274 Nil!51524)) lt!1782443)))

(declare-fun bm!322578 () Bool)

(declare-fun call!322584 () Bool)

(assert (=> bm!322578 (= call!322584 (forall!10820 (ite c!791654 (toList!4969 (ListMap!4274 Nil!51524)) (Cons!51524 lt!1782099 lt!1782108)) (ite c!791654 lambda!191920 lambda!191922)))))

(declare-fun bm!322579 () Bool)

(declare-fun call!322582 () Unit!111893)

(assert (=> bm!322579 (= call!322582 (lemmaContainsAllItsOwnKeys!504 (ListMap!4274 Nil!51524)))))

(declare-fun b!4624802 () Bool)

(assert (=> b!4624802 (= e!2884853 (invariantList!1202 (toList!4969 lt!1782443)))))

(assert (=> b!4624803 (= e!2884854 (ListMap!4274 Nil!51524))))

(declare-fun lt!1782437 () Unit!111893)

(assert (=> b!4624803 (= lt!1782437 call!322582)))

(assert (=> b!4624803 call!322584))

(declare-fun lt!1782426 () Unit!111893)

(assert (=> b!4624803 (= lt!1782426 lt!1782437)))

(assert (=> b!4624803 call!322583))

(declare-fun lt!1782438 () Unit!111893)

(declare-fun Unit!111966 () Unit!111893)

(assert (=> b!4624803 (= lt!1782438 Unit!111966)))

(declare-fun b!4624804 () Bool)

(declare-fun res!1939261 () Bool)

(assert (=> b!4624804 (=> (not res!1939261) (not e!2884853))))

(assert (=> b!4624804 (= res!1939261 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) lambda!191923))))

(assert (=> b!4624805 (= e!2884854 lt!1782429)))

(declare-fun lt!1782431 () ListMap!4273)

(assert (=> b!4624805 (= lt!1782431 (+!1868 (ListMap!4274 Nil!51524) (h!57572 (Cons!51524 lt!1782099 lt!1782108))))))

(assert (=> b!4624805 (= lt!1782429 (addToMapMapFromBucket!963 (t!358678 (Cons!51524 lt!1782099 lt!1782108)) (+!1868 (ListMap!4274 Nil!51524) (h!57572 (Cons!51524 lt!1782099 lt!1782108)))))))

(declare-fun lt!1782428 () Unit!111893)

(assert (=> b!4624805 (= lt!1782428 call!322582)))

(assert (=> b!4624805 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) lambda!191921)))

(declare-fun lt!1782432 () Unit!111893)

(assert (=> b!4624805 (= lt!1782432 lt!1782428)))

(assert (=> b!4624805 (forall!10820 (toList!4969 lt!1782431) lambda!191922)))

(declare-fun lt!1782439 () Unit!111893)

(declare-fun Unit!111967 () Unit!111893)

(assert (=> b!4624805 (= lt!1782439 Unit!111967)))

(assert (=> b!4624805 (forall!10820 (t!358678 (Cons!51524 lt!1782099 lt!1782108)) lambda!191922)))

(declare-fun lt!1782436 () Unit!111893)

(declare-fun Unit!111968 () Unit!111893)

(assert (=> b!4624805 (= lt!1782436 Unit!111968)))

(declare-fun lt!1782442 () Unit!111893)

(declare-fun Unit!111969 () Unit!111893)

(assert (=> b!4624805 (= lt!1782442 Unit!111969)))

(declare-fun lt!1782424 () Unit!111893)

(assert (=> b!4624805 (= lt!1782424 (forallContained!3046 (toList!4969 lt!1782431) lambda!191922 (h!57572 (Cons!51524 lt!1782099 lt!1782108))))))

(assert (=> b!4624805 (contains!14561 lt!1782431 (_1!29521 (h!57572 (Cons!51524 lt!1782099 lt!1782108))))))

(declare-fun lt!1782434 () Unit!111893)

(declare-fun Unit!111970 () Unit!111893)

(assert (=> b!4624805 (= lt!1782434 Unit!111970)))

(assert (=> b!4624805 (contains!14561 lt!1782429 (_1!29521 (h!57572 (Cons!51524 lt!1782099 lt!1782108))))))

(declare-fun lt!1782423 () Unit!111893)

(declare-fun Unit!111971 () Unit!111893)

(assert (=> b!4624805 (= lt!1782423 Unit!111971)))

(assert (=> b!4624805 call!322584))

(declare-fun lt!1782441 () Unit!111893)

(declare-fun Unit!111972 () Unit!111893)

(assert (=> b!4624805 (= lt!1782441 Unit!111972)))

(assert (=> b!4624805 (forall!10820 (toList!4969 lt!1782431) lambda!191922)))

(declare-fun lt!1782425 () Unit!111893)

(declare-fun Unit!111973 () Unit!111893)

(assert (=> b!4624805 (= lt!1782425 Unit!111973)))

(declare-fun lt!1782435 () Unit!111893)

(declare-fun Unit!111974 () Unit!111893)

(assert (=> b!4624805 (= lt!1782435 Unit!111974)))

(declare-fun lt!1782433 () Unit!111893)

(assert (=> b!4624805 (= lt!1782433 (addForallContainsKeyThenBeforeAdding!503 (ListMap!4274 Nil!51524) lt!1782429 (_1!29521 (h!57572 (Cons!51524 lt!1782099 lt!1782108))) (_2!29521 (h!57572 (Cons!51524 lt!1782099 lt!1782108)))))))

(assert (=> b!4624805 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) lambda!191922)))

(declare-fun lt!1782440 () Unit!111893)

(assert (=> b!4624805 (= lt!1782440 lt!1782433)))

(assert (=> b!4624805 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) lambda!191922)))

(declare-fun lt!1782430 () Unit!111893)

(declare-fun Unit!111975 () Unit!111893)

(assert (=> b!4624805 (= lt!1782430 Unit!111975)))

(declare-fun res!1939262 () Bool)

(assert (=> b!4624805 (= res!1939262 (forall!10820 (Cons!51524 lt!1782099 lt!1782108) lambda!191922))))

(assert (=> b!4624805 (=> (not res!1939262) (not e!2884852))))

(assert (=> b!4624805 e!2884852))

(declare-fun lt!1782427 () Unit!111893)

(declare-fun Unit!111976 () Unit!111893)

(assert (=> b!4624805 (= lt!1782427 Unit!111976)))

(assert (= (and d!1456741 c!791654) b!4624803))

(assert (= (and d!1456741 (not c!791654)) b!4624805))

(assert (= (and b!4624805 res!1939262) b!4624801))

(assert (= (or b!4624803 b!4624805) bm!322579))

(assert (= (or b!4624803 b!4624801) bm!322577))

(assert (= (or b!4624803 b!4624805) bm!322578))

(assert (= (and d!1456741 res!1939260) b!4624804))

(assert (= (and b!4624804 res!1939261) b!4624802))

(declare-fun m!5465635 () Bool)

(assert (=> b!4624802 m!5465635))

(assert (=> bm!322579 m!5465425))

(declare-fun m!5465637 () Bool)

(assert (=> b!4624805 m!5465637))

(declare-fun m!5465639 () Bool)

(assert (=> b!4624805 m!5465639))

(declare-fun m!5465641 () Bool)

(assert (=> b!4624805 m!5465641))

(assert (=> b!4624805 m!5465637))

(declare-fun m!5465643 () Bool)

(assert (=> b!4624805 m!5465643))

(declare-fun m!5465645 () Bool)

(assert (=> b!4624805 m!5465645))

(declare-fun m!5465647 () Bool)

(assert (=> b!4624805 m!5465647))

(declare-fun m!5465649 () Bool)

(assert (=> b!4624805 m!5465649))

(declare-fun m!5465651 () Bool)

(assert (=> b!4624805 m!5465651))

(declare-fun m!5465653 () Bool)

(assert (=> b!4624805 m!5465653))

(assert (=> b!4624805 m!5465649))

(declare-fun m!5465655 () Bool)

(assert (=> b!4624805 m!5465655))

(assert (=> b!4624805 m!5465651))

(declare-fun m!5465657 () Bool)

(assert (=> b!4624805 m!5465657))

(declare-fun m!5465659 () Bool)

(assert (=> bm!322578 m!5465659))

(declare-fun m!5465661 () Bool)

(assert (=> d!1456741 m!5465661))

(declare-fun m!5465663 () Bool)

(assert (=> d!1456741 m!5465663))

(declare-fun m!5465665 () Bool)

(assert (=> b!4624804 m!5465665))

(declare-fun m!5465667 () Bool)

(assert (=> bm!322577 m!5465667))

(assert (=> b!4624591 d!1456741))

(declare-fun bs!1022851 () Bool)

(declare-fun d!1456743 () Bool)

(assert (= bs!1022851 (and d!1456743 b!4624601)))

(declare-fun lambda!191929 () Int)

(assert (=> bs!1022851 (= lambda!191929 lambda!191820)))

(declare-fun bs!1022852 () Bool)

(assert (= bs!1022852 (and d!1456743 d!1456669)))

(assert (=> bs!1022852 (= lambda!191929 lambda!191890)))

(declare-fun bs!1022853 () Bool)

(assert (= bs!1022853 (and d!1456743 d!1456725)))

(assert (=> bs!1022853 (= lambda!191929 lambda!191911)))

(declare-fun bs!1022854 () Bool)

(assert (= bs!1022854 (and d!1456743 d!1456729)))

(assert (=> bs!1022854 (= lambda!191929 lambda!191912)))

(assert (=> d!1456743 (contains!14561 (extractMap!1558 (toList!4970 (ListLongMap!3560 lt!1782098))) key!4968)))

(declare-fun lt!1782491 () Unit!111893)

(declare-fun choose!31293 (ListLongMap!3559 K!12905 Hashable!5899) Unit!111893)

(assert (=> d!1456743 (= lt!1782491 (choose!31293 (ListLongMap!3560 lt!1782098) key!4968 hashF!1389))))

(assert (=> d!1456743 (forall!10818 (toList!4970 (ListLongMap!3560 lt!1782098)) lambda!191929)))

(assert (=> d!1456743 (= (lemmaListContainsThenExtractedMapContains!320 (ListLongMap!3560 lt!1782098) key!4968 hashF!1389) lt!1782491)))

(declare-fun bs!1022855 () Bool)

(assert (= bs!1022855 d!1456743))

(declare-fun m!5465689 () Bool)

(assert (=> bs!1022855 m!5465689))

(assert (=> bs!1022855 m!5465689))

(declare-fun m!5465691 () Bool)

(assert (=> bs!1022855 m!5465691))

(declare-fun m!5465693 () Bool)

(assert (=> bs!1022855 m!5465693))

(declare-fun m!5465695 () Bool)

(assert (=> bs!1022855 m!5465695))

(assert (=> b!4624591 d!1456743))

(declare-fun bs!1022856 () Bool)

(declare-fun b!4624840 () Bool)

(assert (= bs!1022856 (and b!4624840 b!4624660)))

(declare-fun lambda!191930 () Int)

(assert (=> bs!1022856 (= (= (ListMap!4274 Nil!51524) lt!1782104) (= lambda!191930 lambda!191885))))

(assert (=> bs!1022856 (= (= (ListMap!4274 Nil!51524) lt!1782227) (= lambda!191930 lambda!191886))))

(declare-fun bs!1022857 () Bool)

(assert (= bs!1022857 (and b!4624840 b!4624738)))

(assert (=> bs!1022857 (= lambda!191930 lambda!191898)))

(declare-fun bs!1022858 () Bool)

(assert (= bs!1022858 (and b!4624840 b!4624740)))

(assert (=> bs!1022858 (= lambda!191930 lambda!191899)))

(declare-fun bs!1022860 () Bool)

(assert (= bs!1022860 (and b!4624840 b!4624805)))

(assert (=> bs!1022860 (= lambda!191930 lambda!191921)))

(declare-fun bs!1022861 () Bool)

(assert (= bs!1022861 (and b!4624840 d!1456741)))

(assert (=> bs!1022861 (= (= (ListMap!4274 Nil!51524) lt!1782443) (= lambda!191930 lambda!191923))))

(declare-fun bs!1022863 () Bool)

(assert (= bs!1022863 (and b!4624840 b!4624658)))

(assert (=> bs!1022863 (= (= (ListMap!4274 Nil!51524) lt!1782104) (= lambda!191930 lambda!191884))))

(declare-fun bs!1022865 () Bool)

(assert (= bs!1022865 (and b!4624840 b!4624803)))

(assert (=> bs!1022865 (= lambda!191930 lambda!191920)))

(assert (=> bs!1022860 (= (= (ListMap!4274 Nil!51524) lt!1782429) (= lambda!191930 lambda!191922))))

(declare-fun bs!1022868 () Bool)

(assert (= bs!1022868 (and b!4624840 d!1456735)))

(assert (=> bs!1022868 (= (= (ListMap!4274 Nil!51524) lt!1782419) (= lambda!191930 lambda!191919))))

(declare-fun bs!1022870 () Bool)

(assert (= bs!1022870 (and b!4624840 d!1456651)))

(assert (=> bs!1022870 (= (= (ListMap!4274 Nil!51524) lt!1782241) (= lambda!191930 lambda!191887))))

(declare-fun bs!1022871 () Bool)

(assert (= bs!1022871 (and b!4624840 b!4624800)))

(assert (=> bs!1022871 (= lambda!191930 lambda!191914)))

(declare-fun bs!1022872 () Bool)

(assert (= bs!1022872 (and b!4624840 b!4624798)))

(assert (=> bs!1022872 (= lambda!191930 lambda!191913)))

(assert (=> bs!1022858 (= (= (ListMap!4274 Nil!51524) lt!1782311) (= lambda!191930 lambda!191900))))

(assert (=> bs!1022871 (= (= (ListMap!4274 Nil!51524) lt!1782405) (= lambda!191930 lambda!191916))))

(declare-fun bs!1022875 () Bool)

(assert (= bs!1022875 (and b!4624840 d!1456693)))

(assert (=> bs!1022875 (= (= (ListMap!4274 Nil!51524) lt!1782325) (= lambda!191930 lambda!191903))))

(assert (=> b!4624840 true))

(declare-fun bs!1022876 () Bool)

(declare-fun b!4624842 () Bool)

(assert (= bs!1022876 (and b!4624842 b!4624660)))

(declare-fun lambda!191932 () Int)

(assert (=> bs!1022876 (= (= (ListMap!4274 Nil!51524) lt!1782104) (= lambda!191932 lambda!191885))))

(assert (=> bs!1022876 (= (= (ListMap!4274 Nil!51524) lt!1782227) (= lambda!191932 lambda!191886))))

(declare-fun bs!1022877 () Bool)

(assert (= bs!1022877 (and b!4624842 b!4624738)))

(assert (=> bs!1022877 (= lambda!191932 lambda!191898)))

(declare-fun bs!1022878 () Bool)

(assert (= bs!1022878 (and b!4624842 b!4624740)))

(assert (=> bs!1022878 (= lambda!191932 lambda!191899)))

(declare-fun bs!1022879 () Bool)

(assert (= bs!1022879 (and b!4624842 b!4624805)))

(assert (=> bs!1022879 (= lambda!191932 lambda!191921)))

(declare-fun bs!1022880 () Bool)

(assert (= bs!1022880 (and b!4624842 d!1456741)))

(assert (=> bs!1022880 (= (= (ListMap!4274 Nil!51524) lt!1782443) (= lambda!191932 lambda!191923))))

(declare-fun bs!1022881 () Bool)

(assert (= bs!1022881 (and b!4624842 b!4624658)))

(assert (=> bs!1022881 (= (= (ListMap!4274 Nil!51524) lt!1782104) (= lambda!191932 lambda!191884))))

(declare-fun bs!1022882 () Bool)

(assert (= bs!1022882 (and b!4624842 b!4624803)))

(assert (=> bs!1022882 (= lambda!191932 lambda!191920)))

(assert (=> bs!1022879 (= (= (ListMap!4274 Nil!51524) lt!1782429) (= lambda!191932 lambda!191922))))

(declare-fun bs!1022883 () Bool)

(assert (= bs!1022883 (and b!4624842 b!4624840)))

(assert (=> bs!1022883 (= lambda!191932 lambda!191930)))

(declare-fun bs!1022884 () Bool)

(assert (= bs!1022884 (and b!4624842 d!1456735)))

(assert (=> bs!1022884 (= (= (ListMap!4274 Nil!51524) lt!1782419) (= lambda!191932 lambda!191919))))

(declare-fun bs!1022885 () Bool)

(assert (= bs!1022885 (and b!4624842 d!1456651)))

(assert (=> bs!1022885 (= (= (ListMap!4274 Nil!51524) lt!1782241) (= lambda!191932 lambda!191887))))

(declare-fun bs!1022886 () Bool)

(assert (= bs!1022886 (and b!4624842 b!4624800)))

(assert (=> bs!1022886 (= lambda!191932 lambda!191914)))

(declare-fun bs!1022887 () Bool)

(assert (= bs!1022887 (and b!4624842 b!4624798)))

(assert (=> bs!1022887 (= lambda!191932 lambda!191913)))

(assert (=> bs!1022878 (= (= (ListMap!4274 Nil!51524) lt!1782311) (= lambda!191932 lambda!191900))))

(assert (=> bs!1022886 (= (= (ListMap!4274 Nil!51524) lt!1782405) (= lambda!191932 lambda!191916))))

(declare-fun bs!1022888 () Bool)

(assert (= bs!1022888 (and b!4624842 d!1456693)))

(assert (=> bs!1022888 (= (= (ListMap!4274 Nil!51524) lt!1782325) (= lambda!191932 lambda!191903))))

(assert (=> b!4624842 true))

(declare-fun lambda!191933 () Int)

(declare-fun lt!1782498 () ListMap!4273)

(assert (=> bs!1022876 (= (= lt!1782498 lt!1782104) (= lambda!191933 lambda!191885))))

(assert (=> bs!1022876 (= (= lt!1782498 lt!1782227) (= lambda!191933 lambda!191886))))

(assert (=> bs!1022877 (= (= lt!1782498 (ListMap!4274 Nil!51524)) (= lambda!191933 lambda!191898))))

(assert (=> bs!1022879 (= (= lt!1782498 (ListMap!4274 Nil!51524)) (= lambda!191933 lambda!191921))))

(assert (=> bs!1022880 (= (= lt!1782498 lt!1782443) (= lambda!191933 lambda!191923))))

(assert (=> bs!1022881 (= (= lt!1782498 lt!1782104) (= lambda!191933 lambda!191884))))

(assert (=> bs!1022882 (= (= lt!1782498 (ListMap!4274 Nil!51524)) (= lambda!191933 lambda!191920))))

(assert (=> bs!1022879 (= (= lt!1782498 lt!1782429) (= lambda!191933 lambda!191922))))

(assert (=> bs!1022883 (= (= lt!1782498 (ListMap!4274 Nil!51524)) (= lambda!191933 lambda!191930))))

(assert (=> bs!1022884 (= (= lt!1782498 lt!1782419) (= lambda!191933 lambda!191919))))

(assert (=> bs!1022885 (= (= lt!1782498 lt!1782241) (= lambda!191933 lambda!191887))))

(assert (=> bs!1022878 (= (= lt!1782498 (ListMap!4274 Nil!51524)) (= lambda!191933 lambda!191899))))

(assert (=> b!4624842 (= (= lt!1782498 (ListMap!4274 Nil!51524)) (= lambda!191933 lambda!191932))))

(assert (=> bs!1022886 (= (= lt!1782498 (ListMap!4274 Nil!51524)) (= lambda!191933 lambda!191914))))

(assert (=> bs!1022887 (= (= lt!1782498 (ListMap!4274 Nil!51524)) (= lambda!191933 lambda!191913))))

(assert (=> bs!1022878 (= (= lt!1782498 lt!1782311) (= lambda!191933 lambda!191900))))

(assert (=> bs!1022886 (= (= lt!1782498 lt!1782405) (= lambda!191933 lambda!191916))))

(assert (=> bs!1022888 (= (= lt!1782498 lt!1782325) (= lambda!191933 lambda!191903))))

(assert (=> b!4624842 true))

(declare-fun bs!1022890 () Bool)

(declare-fun d!1456747 () Bool)

(assert (= bs!1022890 (and d!1456747 b!4624660)))

(declare-fun lt!1782512 () ListMap!4273)

(declare-fun lambda!191934 () Int)

(assert (=> bs!1022890 (= (= lt!1782512 lt!1782104) (= lambda!191934 lambda!191885))))

(assert (=> bs!1022890 (= (= lt!1782512 lt!1782227) (= lambda!191934 lambda!191886))))

(declare-fun bs!1022891 () Bool)

(assert (= bs!1022891 (and d!1456747 b!4624738)))

(assert (=> bs!1022891 (= (= lt!1782512 (ListMap!4274 Nil!51524)) (= lambda!191934 lambda!191898))))

(declare-fun bs!1022892 () Bool)

(assert (= bs!1022892 (and d!1456747 b!4624842)))

(assert (=> bs!1022892 (= (= lt!1782512 lt!1782498) (= lambda!191934 lambda!191933))))

(declare-fun bs!1022893 () Bool)

(assert (= bs!1022893 (and d!1456747 b!4624805)))

(assert (=> bs!1022893 (= (= lt!1782512 (ListMap!4274 Nil!51524)) (= lambda!191934 lambda!191921))))

(declare-fun bs!1022894 () Bool)

(assert (= bs!1022894 (and d!1456747 d!1456741)))

(assert (=> bs!1022894 (= (= lt!1782512 lt!1782443) (= lambda!191934 lambda!191923))))

(declare-fun bs!1022895 () Bool)

(assert (= bs!1022895 (and d!1456747 b!4624658)))

(assert (=> bs!1022895 (= (= lt!1782512 lt!1782104) (= lambda!191934 lambda!191884))))

(declare-fun bs!1022896 () Bool)

(assert (= bs!1022896 (and d!1456747 b!4624803)))

(assert (=> bs!1022896 (= (= lt!1782512 (ListMap!4274 Nil!51524)) (= lambda!191934 lambda!191920))))

(assert (=> bs!1022893 (= (= lt!1782512 lt!1782429) (= lambda!191934 lambda!191922))))

(declare-fun bs!1022897 () Bool)

(assert (= bs!1022897 (and d!1456747 b!4624840)))

(assert (=> bs!1022897 (= (= lt!1782512 (ListMap!4274 Nil!51524)) (= lambda!191934 lambda!191930))))

(declare-fun bs!1022898 () Bool)

(assert (= bs!1022898 (and d!1456747 d!1456735)))

(assert (=> bs!1022898 (= (= lt!1782512 lt!1782419) (= lambda!191934 lambda!191919))))

(declare-fun bs!1022899 () Bool)

(assert (= bs!1022899 (and d!1456747 d!1456651)))

(assert (=> bs!1022899 (= (= lt!1782512 lt!1782241) (= lambda!191934 lambda!191887))))

(declare-fun bs!1022900 () Bool)

(assert (= bs!1022900 (and d!1456747 b!4624740)))

(assert (=> bs!1022900 (= (= lt!1782512 (ListMap!4274 Nil!51524)) (= lambda!191934 lambda!191899))))

(assert (=> bs!1022892 (= (= lt!1782512 (ListMap!4274 Nil!51524)) (= lambda!191934 lambda!191932))))

(declare-fun bs!1022901 () Bool)

(assert (= bs!1022901 (and d!1456747 b!4624800)))

(assert (=> bs!1022901 (= (= lt!1782512 (ListMap!4274 Nil!51524)) (= lambda!191934 lambda!191914))))

(declare-fun bs!1022902 () Bool)

(assert (= bs!1022902 (and d!1456747 b!4624798)))

(assert (=> bs!1022902 (= (= lt!1782512 (ListMap!4274 Nil!51524)) (= lambda!191934 lambda!191913))))

(assert (=> bs!1022900 (= (= lt!1782512 lt!1782311) (= lambda!191934 lambda!191900))))

(assert (=> bs!1022901 (= (= lt!1782512 lt!1782405) (= lambda!191934 lambda!191916))))

(declare-fun bs!1022903 () Bool)

(assert (= bs!1022903 (and d!1456747 d!1456693)))

(assert (=> bs!1022903 (= (= lt!1782512 lt!1782325) (= lambda!191934 lambda!191903))))

(assert (=> d!1456747 true))

(declare-fun b!4624838 () Bool)

(declare-fun e!2884876 () Bool)

(declare-fun call!322592 () Bool)

(assert (=> b!4624838 (= e!2884876 call!322592)))

(declare-fun bm!322586 () Bool)

(declare-fun c!791665 () Bool)

(assert (=> bm!322586 (= call!322592 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) (ite c!791665 lambda!191930 lambda!191933)))))

(declare-fun e!2884877 () Bool)

(assert (=> d!1456747 e!2884877))

(declare-fun res!1939275 () Bool)

(assert (=> d!1456747 (=> (not res!1939275) (not e!2884877))))

(assert (=> d!1456747 (= res!1939275 (forall!10820 (Cons!51524 lt!1782102 lt!1782100) lambda!191934))))

(declare-fun e!2884878 () ListMap!4273)

(assert (=> d!1456747 (= lt!1782512 e!2884878)))

(assert (=> d!1456747 (= c!791665 ((_ is Nil!51524) (Cons!51524 lt!1782102 lt!1782100)))))

(assert (=> d!1456747 (noDuplicateKeys!1502 (Cons!51524 lt!1782102 lt!1782100))))

(assert (=> d!1456747 (= (addToMapMapFromBucket!963 (Cons!51524 lt!1782102 lt!1782100) (ListMap!4274 Nil!51524)) lt!1782512)))

(declare-fun bm!322587 () Bool)

(declare-fun call!322593 () Bool)

(assert (=> bm!322587 (= call!322593 (forall!10820 (ite c!791665 (toList!4969 (ListMap!4274 Nil!51524)) (Cons!51524 lt!1782102 lt!1782100)) (ite c!791665 lambda!191930 lambda!191933)))))

(declare-fun bm!322588 () Bool)

(declare-fun call!322591 () Unit!111893)

(assert (=> bm!322588 (= call!322591 (lemmaContainsAllItsOwnKeys!504 (ListMap!4274 Nil!51524)))))

(declare-fun b!4624839 () Bool)

(assert (=> b!4624839 (= e!2884877 (invariantList!1202 (toList!4969 lt!1782512)))))

(assert (=> b!4624840 (= e!2884878 (ListMap!4274 Nil!51524))))

(declare-fun lt!1782506 () Unit!111893)

(assert (=> b!4624840 (= lt!1782506 call!322591)))

(assert (=> b!4624840 call!322593))

(declare-fun lt!1782495 () Unit!111893)

(assert (=> b!4624840 (= lt!1782495 lt!1782506)))

(assert (=> b!4624840 call!322592))

(declare-fun lt!1782507 () Unit!111893)

(declare-fun Unit!111987 () Unit!111893)

(assert (=> b!4624840 (= lt!1782507 Unit!111987)))

(declare-fun b!4624841 () Bool)

(declare-fun res!1939276 () Bool)

(assert (=> b!4624841 (=> (not res!1939276) (not e!2884877))))

(assert (=> b!4624841 (= res!1939276 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) lambda!191934))))

(assert (=> b!4624842 (= e!2884878 lt!1782498)))

(declare-fun lt!1782500 () ListMap!4273)

(assert (=> b!4624842 (= lt!1782500 (+!1868 (ListMap!4274 Nil!51524) (h!57572 (Cons!51524 lt!1782102 lt!1782100))))))

(assert (=> b!4624842 (= lt!1782498 (addToMapMapFromBucket!963 (t!358678 (Cons!51524 lt!1782102 lt!1782100)) (+!1868 (ListMap!4274 Nil!51524) (h!57572 (Cons!51524 lt!1782102 lt!1782100)))))))

(declare-fun lt!1782497 () Unit!111893)

(assert (=> b!4624842 (= lt!1782497 call!322591)))

(assert (=> b!4624842 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) lambda!191932)))

(declare-fun lt!1782501 () Unit!111893)

(assert (=> b!4624842 (= lt!1782501 lt!1782497)))

(assert (=> b!4624842 (forall!10820 (toList!4969 lt!1782500) lambda!191933)))

(declare-fun lt!1782508 () Unit!111893)

(declare-fun Unit!111989 () Unit!111893)

(assert (=> b!4624842 (= lt!1782508 Unit!111989)))

(assert (=> b!4624842 (forall!10820 (t!358678 (Cons!51524 lt!1782102 lt!1782100)) lambda!191933)))

(declare-fun lt!1782505 () Unit!111893)

(declare-fun Unit!111990 () Unit!111893)

(assert (=> b!4624842 (= lt!1782505 Unit!111990)))

(declare-fun lt!1782511 () Unit!111893)

(declare-fun Unit!111991 () Unit!111893)

(assert (=> b!4624842 (= lt!1782511 Unit!111991)))

(declare-fun lt!1782493 () Unit!111893)

(assert (=> b!4624842 (= lt!1782493 (forallContained!3046 (toList!4969 lt!1782500) lambda!191933 (h!57572 (Cons!51524 lt!1782102 lt!1782100))))))

(assert (=> b!4624842 (contains!14561 lt!1782500 (_1!29521 (h!57572 (Cons!51524 lt!1782102 lt!1782100))))))

(declare-fun lt!1782503 () Unit!111893)

(declare-fun Unit!111992 () Unit!111893)

(assert (=> b!4624842 (= lt!1782503 Unit!111992)))

(assert (=> b!4624842 (contains!14561 lt!1782498 (_1!29521 (h!57572 (Cons!51524 lt!1782102 lt!1782100))))))

(declare-fun lt!1782492 () Unit!111893)

(declare-fun Unit!111993 () Unit!111893)

(assert (=> b!4624842 (= lt!1782492 Unit!111993)))

(assert (=> b!4624842 call!322593))

(declare-fun lt!1782510 () Unit!111893)

(declare-fun Unit!111994 () Unit!111893)

(assert (=> b!4624842 (= lt!1782510 Unit!111994)))

(assert (=> b!4624842 (forall!10820 (toList!4969 lt!1782500) lambda!191933)))

(declare-fun lt!1782494 () Unit!111893)

(declare-fun Unit!111995 () Unit!111893)

(assert (=> b!4624842 (= lt!1782494 Unit!111995)))

(declare-fun lt!1782504 () Unit!111893)

(declare-fun Unit!111996 () Unit!111893)

(assert (=> b!4624842 (= lt!1782504 Unit!111996)))

(declare-fun lt!1782502 () Unit!111893)

(assert (=> b!4624842 (= lt!1782502 (addForallContainsKeyThenBeforeAdding!503 (ListMap!4274 Nil!51524) lt!1782498 (_1!29521 (h!57572 (Cons!51524 lt!1782102 lt!1782100))) (_2!29521 (h!57572 (Cons!51524 lt!1782102 lt!1782100)))))))

(assert (=> b!4624842 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) lambda!191933)))

(declare-fun lt!1782509 () Unit!111893)

(assert (=> b!4624842 (= lt!1782509 lt!1782502)))

(assert (=> b!4624842 (forall!10820 (toList!4969 (ListMap!4274 Nil!51524)) lambda!191933)))

(declare-fun lt!1782499 () Unit!111893)

(declare-fun Unit!111997 () Unit!111893)

(assert (=> b!4624842 (= lt!1782499 Unit!111997)))

(declare-fun res!1939277 () Bool)

(assert (=> b!4624842 (= res!1939277 (forall!10820 (Cons!51524 lt!1782102 lt!1782100) lambda!191933))))

(assert (=> b!4624842 (=> (not res!1939277) (not e!2884876))))

(assert (=> b!4624842 e!2884876))

(declare-fun lt!1782496 () Unit!111893)

(declare-fun Unit!111998 () Unit!111893)

(assert (=> b!4624842 (= lt!1782496 Unit!111998)))

(assert (= (and d!1456747 c!791665) b!4624840))

(assert (= (and d!1456747 (not c!791665)) b!4624842))

(assert (= (and b!4624842 res!1939277) b!4624838))

(assert (= (or b!4624840 b!4624842) bm!322588))

(assert (= (or b!4624840 b!4624838) bm!322586))

(assert (= (or b!4624840 b!4624842) bm!322587))

(assert (= (and d!1456747 res!1939275) b!4624841))

(assert (= (and b!4624841 res!1939276) b!4624839))

(declare-fun m!5465735 () Bool)

(assert (=> b!4624839 m!5465735))

(assert (=> bm!322588 m!5465425))

(declare-fun m!5465737 () Bool)

(assert (=> b!4624842 m!5465737))

(declare-fun m!5465739 () Bool)

(assert (=> b!4624842 m!5465739))

(declare-fun m!5465741 () Bool)

(assert (=> b!4624842 m!5465741))

(assert (=> b!4624842 m!5465737))

(declare-fun m!5465743 () Bool)

(assert (=> b!4624842 m!5465743))

(declare-fun m!5465745 () Bool)

(assert (=> b!4624842 m!5465745))

(declare-fun m!5465747 () Bool)

(assert (=> b!4624842 m!5465747))

(declare-fun m!5465749 () Bool)

(assert (=> b!4624842 m!5465749))

(declare-fun m!5465751 () Bool)

(assert (=> b!4624842 m!5465751))

(declare-fun m!5465753 () Bool)

(assert (=> b!4624842 m!5465753))

(assert (=> b!4624842 m!5465749))

(declare-fun m!5465755 () Bool)

(assert (=> b!4624842 m!5465755))

(assert (=> b!4624842 m!5465751))

(declare-fun m!5465757 () Bool)

(assert (=> b!4624842 m!5465757))

(declare-fun m!5465759 () Bool)

(assert (=> bm!322587 m!5465759))

(declare-fun m!5465761 () Bool)

(assert (=> d!1456747 m!5465761))

(declare-fun m!5465763 () Bool)

(assert (=> d!1456747 m!5465763))

(declare-fun m!5465765 () Bool)

(assert (=> b!4624841 m!5465765))

(declare-fun m!5465767 () Bool)

(assert (=> bm!322586 m!5465767))

(assert (=> b!4624591 d!1456747))

(declare-fun d!1456753 () Bool)

(assert (=> d!1456753 (= (eq!817 (addToMapMapFromBucket!963 (Cons!51524 lt!1782102 lt!1782100) (ListMap!4274 Nil!51524)) (+!1868 (addToMapMapFromBucket!963 lt!1782100 (ListMap!4274 Nil!51524)) lt!1782102)) (= (content!8790 (toList!4969 (addToMapMapFromBucket!963 (Cons!51524 lt!1782102 lt!1782100) (ListMap!4274 Nil!51524)))) (content!8790 (toList!4969 (+!1868 (addToMapMapFromBucket!963 lt!1782100 (ListMap!4274 Nil!51524)) lt!1782102)))))))

(declare-fun bs!1022904 () Bool)

(assert (= bs!1022904 d!1456753))

(declare-fun m!5465769 () Bool)

(assert (=> bs!1022904 m!5465769))

(declare-fun m!5465771 () Bool)

(assert (=> bs!1022904 m!5465771))

(assert (=> b!4624591 d!1456753))

(declare-fun d!1456755 () Bool)

(declare-fun isEmpty!28928 (Option!11580) Bool)

(assert (=> d!1456755 (= (isDefined!8845 (getPair!294 lt!1782090 key!4968)) (not (isEmpty!28928 (getPair!294 lt!1782090 key!4968))))))

(declare-fun bs!1022905 () Bool)

(assert (= bs!1022905 d!1456755))

(assert (=> bs!1022905 m!5465139))

(declare-fun m!5465773 () Bool)

(assert (=> bs!1022905 m!5465773))

(assert (=> b!4624601 d!1456755))

(declare-fun bs!1023003 () Bool)

(declare-fun d!1456757 () Bool)

(assert (= bs!1023003 (and d!1456757 d!1456725)))

(declare-fun lambda!191953 () Int)

(assert (=> bs!1023003 (= lambda!191953 lambda!191911)))

(declare-fun bs!1023005 () Bool)

(assert (= bs!1023005 (and d!1456757 b!4624601)))

(assert (=> bs!1023005 (= lambda!191953 lambda!191820)))

(declare-fun bs!1023007 () Bool)

(assert (= bs!1023007 (and d!1456757 d!1456729)))

(assert (=> bs!1023007 (= lambda!191953 lambda!191912)))

(declare-fun bs!1023009 () Bool)

(assert (= bs!1023009 (and d!1456757 d!1456743)))

(assert (=> bs!1023009 (= lambda!191953 lambda!191929)))

(declare-fun bs!1023011 () Bool)

(assert (= bs!1023011 (and d!1456757 d!1456669)))

(assert (=> bs!1023011 (= lambda!191953 lambda!191890)))

(declare-fun b!4624876 () Bool)

(declare-fun res!1939303 () Bool)

(declare-fun e!2884895 () Bool)

(assert (=> b!4624876 (=> (not res!1939303) (not e!2884895))))

(assert (=> b!4624876 (= res!1939303 (contains!14561 (extractMap!1558 (toList!4970 lt!1782109)) key!4968))))

(declare-fun e!2884894 () Bool)

(declare-fun lt!1782596 () (_ BitVec 64))

(declare-fun b!4624878 () Bool)

(declare-fun lt!1782600 () List!51648)

(declare-datatypes ((Option!11584 0))(
  ( (None!11583) (Some!11583 (v!45709 List!51648)) )
))
(declare-fun getValueByKey!1448 (List!51649 (_ BitVec 64)) Option!11584)

(assert (=> b!4624878 (= e!2884894 (= (getValueByKey!1448 (toList!4970 lt!1782109) lt!1782596) (Some!11583 lt!1782600)))))

(declare-fun b!4624875 () Bool)

(declare-fun res!1939302 () Bool)

(assert (=> b!4624875 (=> (not res!1939302) (not e!2884895))))

(declare-fun allKeysSameHashInMap!1528 (ListLongMap!3559 Hashable!5899) Bool)

(assert (=> b!4624875 (= res!1939302 (allKeysSameHashInMap!1528 lt!1782109 hashF!1389))))

(declare-fun b!4624877 () Bool)

(assert (=> b!4624877 (= e!2884895 (isDefined!8845 (getPair!294 (apply!12167 lt!1782109 (hash!3491 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1782597 () Unit!111893)

(assert (=> b!4624877 (= lt!1782597 (forallContained!3044 (toList!4970 lt!1782109) lambda!191953 (tuple2!52457 (hash!3491 hashF!1389 key!4968) (apply!12167 lt!1782109 (hash!3491 hashF!1389 key!4968)))))))

(declare-fun lt!1782602 () Unit!111893)

(declare-fun lt!1782601 () Unit!111893)

(assert (=> b!4624877 (= lt!1782602 lt!1782601)))

(assert (=> b!4624877 (contains!14562 (toList!4970 lt!1782109) (tuple2!52457 lt!1782596 lt!1782600))))

(assert (=> b!4624877 (= lt!1782601 (lemmaGetValueImpliesTupleContained!99 lt!1782109 lt!1782596 lt!1782600))))

(assert (=> b!4624877 e!2884894))

(declare-fun res!1939305 () Bool)

(assert (=> b!4624877 (=> (not res!1939305) (not e!2884894))))

(assert (=> b!4624877 (= res!1939305 (contains!14563 lt!1782109 lt!1782596))))

(assert (=> b!4624877 (= lt!1782600 (apply!12167 lt!1782109 (hash!3491 hashF!1389 key!4968)))))

(assert (=> b!4624877 (= lt!1782596 (hash!3491 hashF!1389 key!4968))))

(declare-fun lt!1782598 () Unit!111893)

(declare-fun lt!1782599 () Unit!111893)

(assert (=> b!4624877 (= lt!1782598 lt!1782599)))

(assert (=> b!4624877 (contains!14563 lt!1782109 (hash!3491 hashF!1389 key!4968))))

(assert (=> b!4624877 (= lt!1782599 (lemmaInGenMapThenLongMapContainsHash!500 lt!1782109 key!4968 hashF!1389))))

(assert (=> d!1456757 e!2884895))

(declare-fun res!1939304 () Bool)

(assert (=> d!1456757 (=> (not res!1939304) (not e!2884895))))

(assert (=> d!1456757 (= res!1939304 (forall!10818 (toList!4970 lt!1782109) lambda!191953))))

(declare-fun lt!1782595 () Unit!111893)

(declare-fun choose!31294 (ListLongMap!3559 K!12905 Hashable!5899) Unit!111893)

(assert (=> d!1456757 (= lt!1782595 (choose!31294 lt!1782109 key!4968 hashF!1389))))

(assert (=> d!1456757 (forall!10818 (toList!4970 lt!1782109) lambda!191953)))

(assert (=> d!1456757 (= (lemmaInGenMapThenGetPairDefined!90 lt!1782109 key!4968 hashF!1389) lt!1782595)))

(assert (= (and d!1456757 res!1939304) b!4624875))

(assert (= (and b!4624875 res!1939302) b!4624876))

(assert (= (and b!4624876 res!1939303) b!4624877))

(assert (= (and b!4624877 res!1939305) b!4624878))

(declare-fun m!5465889 () Bool)

(assert (=> b!4624875 m!5465889))

(declare-fun m!5465891 () Bool)

(assert (=> b!4624877 m!5465891))

(declare-fun m!5465893 () Bool)

(assert (=> b!4624877 m!5465893))

(assert (=> b!4624877 m!5465155))

(declare-fun m!5465895 () Bool)

(assert (=> b!4624877 m!5465895))

(declare-fun m!5465897 () Bool)

(assert (=> b!4624877 m!5465897))

(declare-fun m!5465899 () Bool)

(assert (=> b!4624877 m!5465899))

(assert (=> b!4624877 m!5465163))

(declare-fun m!5465901 () Bool)

(assert (=> b!4624877 m!5465901))

(declare-fun m!5465903 () Bool)

(assert (=> b!4624877 m!5465903))

(assert (=> b!4624877 m!5465895))

(declare-fun m!5465905 () Bool)

(assert (=> b!4624877 m!5465905))

(assert (=> b!4624877 m!5465163))

(assert (=> b!4624877 m!5465163))

(assert (=> b!4624877 m!5465903))

(declare-fun m!5465907 () Bool)

(assert (=> b!4624878 m!5465907))

(declare-fun m!5465909 () Bool)

(assert (=> b!4624876 m!5465909))

(assert (=> b!4624876 m!5465909))

(declare-fun m!5465911 () Bool)

(assert (=> b!4624876 m!5465911))

(declare-fun m!5465913 () Bool)

(assert (=> d!1456757 m!5465913))

(declare-fun m!5465915 () Bool)

(assert (=> d!1456757 m!5465915))

(assert (=> d!1456757 m!5465913))

(assert (=> b!4624601 d!1456757))

(declare-fun b!4624911 () Bool)

(declare-fun e!2884924 () Bool)

(declare-fun lt!1782606 () Option!11580)

(declare-fun get!17071 (Option!11580) tuple2!52454)

(assert (=> b!4624911 (= e!2884924 (contains!14565 lt!1782090 (get!17071 lt!1782606)))))

(declare-fun d!1456781 () Bool)

(declare-fun e!2884920 () Bool)

(assert (=> d!1456781 e!2884920))

(declare-fun res!1939328 () Bool)

(assert (=> d!1456781 (=> res!1939328 e!2884920)))

(declare-fun e!2884923 () Bool)

(assert (=> d!1456781 (= res!1939328 e!2884923)))

(declare-fun res!1939329 () Bool)

(assert (=> d!1456781 (=> (not res!1939329) (not e!2884923))))

(assert (=> d!1456781 (= res!1939329 (isEmpty!28928 lt!1782606))))

(declare-fun e!2884921 () Option!11580)

(assert (=> d!1456781 (= lt!1782606 e!2884921)))

(declare-fun c!791675 () Bool)

(assert (=> d!1456781 (= c!791675 (and ((_ is Cons!51524) lt!1782090) (= (_1!29521 (h!57572 lt!1782090)) key!4968)))))

(assert (=> d!1456781 (noDuplicateKeys!1502 lt!1782090)))

(assert (=> d!1456781 (= (getPair!294 lt!1782090 key!4968) lt!1782606)))

(declare-fun b!4624912 () Bool)

(declare-fun e!2884922 () Option!11580)

(assert (=> b!4624912 (= e!2884922 None!11579)))

(declare-fun b!4624913 () Bool)

(assert (=> b!4624913 (= e!2884922 (getPair!294 (t!358678 lt!1782090) key!4968))))

(declare-fun b!4624914 () Bool)

(declare-fun res!1939326 () Bool)

(assert (=> b!4624914 (=> (not res!1939326) (not e!2884924))))

(assert (=> b!4624914 (= res!1939326 (= (_1!29521 (get!17071 lt!1782606)) key!4968))))

(declare-fun b!4624915 () Bool)

(assert (=> b!4624915 (= e!2884921 (Some!11579 (h!57572 lt!1782090)))))

(declare-fun b!4624916 () Bool)

(assert (=> b!4624916 (= e!2884921 e!2884922)))

(declare-fun c!791674 () Bool)

(assert (=> b!4624916 (= c!791674 ((_ is Cons!51524) lt!1782090))))

(declare-fun b!4624917 () Bool)

(assert (=> b!4624917 (= e!2884923 (not (containsKey!2438 lt!1782090 key!4968)))))

(declare-fun b!4624918 () Bool)

(assert (=> b!4624918 (= e!2884920 e!2884924)))

(declare-fun res!1939327 () Bool)

(assert (=> b!4624918 (=> (not res!1939327) (not e!2884924))))

(assert (=> b!4624918 (= res!1939327 (isDefined!8845 lt!1782606))))

(assert (= (and d!1456781 c!791675) b!4624915))

(assert (= (and d!1456781 (not c!791675)) b!4624916))

(assert (= (and b!4624916 c!791674) b!4624913))

(assert (= (and b!4624916 (not c!791674)) b!4624912))

(assert (= (and d!1456781 res!1939329) b!4624917))

(assert (= (and d!1456781 (not res!1939328)) b!4624918))

(assert (= (and b!4624918 res!1939327) b!4624914))

(assert (= (and b!4624914 res!1939326) b!4624911))

(declare-fun m!5465931 () Bool)

(assert (=> b!4624918 m!5465931))

(declare-fun m!5465933 () Bool)

(assert (=> b!4624913 m!5465933))

(declare-fun m!5465935 () Bool)

(assert (=> b!4624911 m!5465935))

(assert (=> b!4624911 m!5465935))

(declare-fun m!5465937 () Bool)

(assert (=> b!4624911 m!5465937))

(declare-fun m!5465939 () Bool)

(assert (=> d!1456781 m!5465939))

(declare-fun m!5465941 () Bool)

(assert (=> d!1456781 m!5465941))

(assert (=> b!4624914 m!5465935))

(declare-fun m!5465943 () Bool)

(assert (=> b!4624917 m!5465943))

(assert (=> b!4624601 d!1456781))

(declare-fun d!1456791 () Bool)

(assert (=> d!1456791 (dynLambda!21495 lambda!191820 lt!1782097)))

(declare-fun lt!1782611 () Unit!111893)

(declare-fun choose!31295 (List!51649 Int tuple2!52456) Unit!111893)

(assert (=> d!1456791 (= lt!1782611 (choose!31295 lt!1782087 lambda!191820 lt!1782097))))

(declare-fun e!2884929 () Bool)

(assert (=> d!1456791 e!2884929))

(declare-fun res!1939334 () Bool)

(assert (=> d!1456791 (=> (not res!1939334) (not e!2884929))))

(assert (=> d!1456791 (= res!1939334 (forall!10818 lt!1782087 lambda!191820))))

(assert (=> d!1456791 (= (forallContained!3044 lt!1782087 lambda!191820 lt!1782097) lt!1782611)))

(declare-fun b!4624923 () Bool)

(assert (=> b!4624923 (= e!2884929 (contains!14562 lt!1782087 lt!1782097))))

(assert (= (and d!1456791 res!1939334) b!4624923))

(declare-fun b_lambda!170715 () Bool)

(assert (=> (not b_lambda!170715) (not d!1456791)))

(declare-fun m!5465945 () Bool)

(assert (=> d!1456791 m!5465945))

(declare-fun m!5465947 () Bool)

(assert (=> d!1456791 m!5465947))

(declare-fun m!5465949 () Bool)

(assert (=> d!1456791 m!5465949))

(assert (=> b!4624923 m!5465135))

(assert (=> b!4624601 d!1456791))

(declare-fun d!1456793 () Bool)

(assert (=> d!1456793 (containsKey!2438 oldBucket!40 key!4968)))

(declare-fun lt!1782615 () Unit!111893)

(declare-fun choose!31296 (List!51648 K!12905 Hashable!5899) Unit!111893)

(assert (=> d!1456793 (= lt!1782615 (choose!31296 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1456793 (noDuplicateKeys!1502 oldBucket!40)))

(assert (=> d!1456793 (= (lemmaGetPairDefinedThenContainsKey!48 oldBucket!40 key!4968 hashF!1389) lt!1782615)))

(declare-fun bs!1023017 () Bool)

(assert (= bs!1023017 d!1456793))

(assert (=> bs!1023017 m!5465143))

(declare-fun m!5465963 () Bool)

(assert (=> bs!1023017 m!5465963))

(assert (=> bs!1023017 m!5465165))

(assert (=> b!4624601 d!1456793))

(declare-fun d!1456797 () Bool)

(declare-fun res!1939340 () Bool)

(declare-fun e!2884935 () Bool)

(assert (=> d!1456797 (=> res!1939340 e!2884935)))

(assert (=> d!1456797 (= res!1939340 (and ((_ is Cons!51524) (t!358678 oldBucket!40)) (= (_1!29521 (h!57572 (t!358678 oldBucket!40))) key!4968)))))

(assert (=> d!1456797 (= (containsKey!2438 (t!358678 oldBucket!40) key!4968) e!2884935)))

(declare-fun b!4624929 () Bool)

(declare-fun e!2884936 () Bool)

(assert (=> b!4624929 (= e!2884935 e!2884936)))

(declare-fun res!1939341 () Bool)

(assert (=> b!4624929 (=> (not res!1939341) (not e!2884936))))

(assert (=> b!4624929 (= res!1939341 ((_ is Cons!51524) (t!358678 oldBucket!40)))))

(declare-fun b!4624930 () Bool)

(assert (=> b!4624930 (= e!2884936 (containsKey!2438 (t!358678 (t!358678 oldBucket!40)) key!4968))))

(assert (= (and d!1456797 (not res!1939340)) b!4624929))

(assert (= (and b!4624929 res!1939341) b!4624930))

(declare-fun m!5465965 () Bool)

(assert (=> b!4624930 m!5465965))

(assert (=> b!4624601 d!1456797))

(declare-fun bs!1023018 () Bool)

(declare-fun d!1456799 () Bool)

(assert (= bs!1023018 (and d!1456799 d!1456725)))

(declare-fun lambda!191956 () Int)

(assert (=> bs!1023018 (= lambda!191956 lambda!191911)))

(declare-fun bs!1023019 () Bool)

(assert (= bs!1023019 (and d!1456799 d!1456729)))

(assert (=> bs!1023019 (= lambda!191956 lambda!191912)))

(declare-fun bs!1023020 () Bool)

(assert (= bs!1023020 (and d!1456799 d!1456743)))

(assert (=> bs!1023020 (= lambda!191956 lambda!191929)))

(declare-fun bs!1023021 () Bool)

(assert (= bs!1023021 (and d!1456799 d!1456669)))

(assert (=> bs!1023021 (= lambda!191956 lambda!191890)))

(declare-fun bs!1023022 () Bool)

(assert (= bs!1023022 (and d!1456799 b!4624601)))

(assert (=> bs!1023022 (= lambda!191956 lambda!191820)))

(declare-fun bs!1023023 () Bool)

(assert (= bs!1023023 (and d!1456799 d!1456757)))

(assert (=> bs!1023023 (= lambda!191956 lambda!191953)))

(assert (=> d!1456799 (contains!14563 lt!1782109 (hash!3491 hashF!1389 key!4968))))

(declare-fun lt!1782618 () Unit!111893)

(declare-fun choose!31297 (ListLongMap!3559 K!12905 Hashable!5899) Unit!111893)

(assert (=> d!1456799 (= lt!1782618 (choose!31297 lt!1782109 key!4968 hashF!1389))))

(assert (=> d!1456799 (forall!10818 (toList!4970 lt!1782109) lambda!191956)))

(assert (=> d!1456799 (= (lemmaInGenMapThenLongMapContainsHash!500 lt!1782109 key!4968 hashF!1389) lt!1782618)))

(declare-fun bs!1023024 () Bool)

(assert (= bs!1023024 d!1456799))

(assert (=> bs!1023024 m!5465163))

(assert (=> bs!1023024 m!5465163))

(assert (=> bs!1023024 m!5465901))

(declare-fun m!5465967 () Bool)

(assert (=> bs!1023024 m!5465967))

(declare-fun m!5465969 () Bool)

(assert (=> bs!1023024 m!5465969))

(assert (=> b!4624601 d!1456799))

(declare-fun d!1456801 () Bool)

(declare-fun lt!1782621 () Bool)

(declare-fun content!8793 (List!51649) (InoxSet tuple2!52456))

(assert (=> d!1456801 (= lt!1782621 (select (content!8793 lt!1782087) lt!1782097))))

(declare-fun e!2884941 () Bool)

(assert (=> d!1456801 (= lt!1782621 e!2884941)))

(declare-fun res!1939346 () Bool)

(assert (=> d!1456801 (=> (not res!1939346) (not e!2884941))))

(assert (=> d!1456801 (= res!1939346 ((_ is Cons!51525) lt!1782087))))

(assert (=> d!1456801 (= (contains!14562 lt!1782087 lt!1782097) lt!1782621)))

(declare-fun b!4624935 () Bool)

(declare-fun e!2884942 () Bool)

(assert (=> b!4624935 (= e!2884941 e!2884942)))

(declare-fun res!1939347 () Bool)

(assert (=> b!4624935 (=> res!1939347 e!2884942)))

(assert (=> b!4624935 (= res!1939347 (= (h!57573 lt!1782087) lt!1782097))))

(declare-fun b!4624936 () Bool)

(assert (=> b!4624936 (= e!2884942 (contains!14562 (t!358679 lt!1782087) lt!1782097))))

(assert (= (and d!1456801 res!1939346) b!4624935))

(assert (= (and b!4624935 (not res!1939347)) b!4624936))

(declare-fun m!5465971 () Bool)

(assert (=> d!1456801 m!5465971))

(declare-fun m!5465973 () Bool)

(assert (=> d!1456801 m!5465973))

(declare-fun m!5465975 () Bool)

(assert (=> b!4624936 m!5465975))

(assert (=> b!4624601 d!1456801))

(declare-fun d!1456803 () Bool)

(declare-fun e!2884959 () Bool)

(assert (=> d!1456803 e!2884959))

(declare-fun res!1939355 () Bool)

(assert (=> d!1456803 (=> res!1939355 e!2884959)))

(declare-fun lt!1782646 () Bool)

(assert (=> d!1456803 (= res!1939355 (not lt!1782646))))

(declare-fun lt!1782643 () Bool)

(assert (=> d!1456803 (= lt!1782646 lt!1782643)))

(declare-fun lt!1782645 () Unit!111893)

(declare-fun e!2884958 () Unit!111893)

(assert (=> d!1456803 (= lt!1782645 e!2884958)))

(declare-fun c!791684 () Bool)

(assert (=> d!1456803 (= c!791684 lt!1782643)))

(declare-fun containsKey!2442 (List!51649 (_ BitVec 64)) Bool)

(assert (=> d!1456803 (= lt!1782643 (containsKey!2442 (toList!4970 lt!1782109) lt!1782094))))

(assert (=> d!1456803 (= (contains!14563 lt!1782109 lt!1782094) lt!1782646)))

(declare-fun b!4624960 () Bool)

(declare-fun lt!1782644 () Unit!111893)

(assert (=> b!4624960 (= e!2884958 lt!1782644)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1350 (List!51649 (_ BitVec 64)) Unit!111893)

(assert (=> b!4624960 (= lt!1782644 (lemmaContainsKeyImpliesGetValueByKeyDefined!1350 (toList!4970 lt!1782109) lt!1782094))))

(declare-fun isDefined!8849 (Option!11584) Bool)

(assert (=> b!4624960 (isDefined!8849 (getValueByKey!1448 (toList!4970 lt!1782109) lt!1782094))))

(declare-fun b!4624961 () Bool)

(declare-fun Unit!112010 () Unit!111893)

(assert (=> b!4624961 (= e!2884958 Unit!112010)))

(declare-fun b!4624962 () Bool)

(assert (=> b!4624962 (= e!2884959 (isDefined!8849 (getValueByKey!1448 (toList!4970 lt!1782109) lt!1782094)))))

(assert (= (and d!1456803 c!791684) b!4624960))

(assert (= (and d!1456803 (not c!791684)) b!4624961))

(assert (= (and d!1456803 (not res!1939355)) b!4624962))

(declare-fun m!5466027 () Bool)

(assert (=> d!1456803 m!5466027))

(declare-fun m!5466029 () Bool)

(assert (=> b!4624960 m!5466029))

(declare-fun m!5466031 () Bool)

(assert (=> b!4624960 m!5466031))

(assert (=> b!4624960 m!5466031))

(declare-fun m!5466033 () Bool)

(assert (=> b!4624960 m!5466033))

(assert (=> b!4624962 m!5466031))

(assert (=> b!4624962 m!5466031))

(assert (=> b!4624962 m!5466033))

(assert (=> b!4624601 d!1456803))

(declare-fun d!1456817 () Bool)

(declare-fun res!1939358 () Bool)

(declare-fun e!2884961 () Bool)

(assert (=> d!1456817 (=> res!1939358 e!2884961)))

(assert (=> d!1456817 (= res!1939358 (and ((_ is Cons!51524) oldBucket!40) (= (_1!29521 (h!57572 oldBucket!40)) key!4968)))))

(assert (=> d!1456817 (= (containsKey!2438 oldBucket!40 key!4968) e!2884961)))

(declare-fun b!4624965 () Bool)

(declare-fun e!2884962 () Bool)

(assert (=> b!4624965 (= e!2884961 e!2884962)))

(declare-fun res!1939359 () Bool)

(assert (=> b!4624965 (=> (not res!1939359) (not e!2884962))))

(assert (=> b!4624965 (= res!1939359 ((_ is Cons!51524) oldBucket!40))))

(declare-fun b!4624966 () Bool)

(assert (=> b!4624966 (= e!2884962 (containsKey!2438 (t!358678 oldBucket!40) key!4968))))

(assert (= (and d!1456817 (not res!1939358)) b!4624965))

(assert (= (and b!4624965 res!1939359) b!4624966))

(assert (=> b!4624966 m!5465147))

(assert (=> b!4624601 d!1456817))

(declare-fun d!1456821 () Bool)

(assert (=> d!1456821 (contains!14562 (toList!4970 lt!1782109) (tuple2!52457 lt!1782094 lt!1782090))))

(declare-fun lt!1782655 () Unit!111893)

(declare-fun choose!31298 (ListLongMap!3559 (_ BitVec 64) List!51648) Unit!111893)

(assert (=> d!1456821 (= lt!1782655 (choose!31298 lt!1782109 lt!1782094 lt!1782090))))

(assert (=> d!1456821 (contains!14563 lt!1782109 lt!1782094)))

(assert (=> d!1456821 (= (lemmaGetValueImpliesTupleContained!99 lt!1782109 lt!1782094 lt!1782090) lt!1782655)))

(declare-fun bs!1023051 () Bool)

(assert (= bs!1023051 d!1456821))

(declare-fun m!5466063 () Bool)

(assert (=> bs!1023051 m!5466063))

(declare-fun m!5466065 () Bool)

(assert (=> bs!1023051 m!5466065))

(assert (=> bs!1023051 m!5465149))

(assert (=> b!4624601 d!1456821))

(declare-fun d!1456825 () Bool)

(declare-fun get!17072 (Option!11584) List!51648)

(assert (=> d!1456825 (= (apply!12167 lt!1782109 lt!1782094) (get!17072 (getValueByKey!1448 (toList!4970 lt!1782109) lt!1782094)))))

(declare-fun bs!1023054 () Bool)

(assert (= bs!1023054 d!1456825))

(assert (=> bs!1023054 m!5466031))

(assert (=> bs!1023054 m!5466031))

(declare-fun m!5466071 () Bool)

(assert (=> bs!1023054 m!5466071))

(assert (=> b!4624601 d!1456825))

(declare-fun d!1456831 () Bool)

(declare-fun res!1939360 () Bool)

(declare-fun e!2884969 () Bool)

(assert (=> d!1456831 (=> res!1939360 e!2884969)))

(assert (=> d!1456831 (= res!1939360 (not ((_ is Cons!51524) oldBucket!40)))))

(assert (=> d!1456831 (= (noDuplicateKeys!1502 oldBucket!40) e!2884969)))

(declare-fun b!4624978 () Bool)

(declare-fun e!2884970 () Bool)

(assert (=> b!4624978 (= e!2884969 e!2884970)))

(declare-fun res!1939361 () Bool)

(assert (=> b!4624978 (=> (not res!1939361) (not e!2884970))))

(assert (=> b!4624978 (= res!1939361 (not (containsKey!2438 (t!358678 oldBucket!40) (_1!29521 (h!57572 oldBucket!40)))))))

(declare-fun b!4624979 () Bool)

(assert (=> b!4624979 (= e!2884970 (noDuplicateKeys!1502 (t!358678 oldBucket!40)))))

(assert (= (and d!1456831 (not res!1939360)) b!4624978))

(assert (= (and b!4624978 res!1939361) b!4624979))

(declare-fun m!5466073 () Bool)

(assert (=> b!4624978 m!5466073))

(assert (=> b!4624979 m!5465359))

(assert (=> start!463416 d!1456831))

(declare-fun b!4624989 () Bool)

(declare-fun e!2884976 () List!51648)

(declare-fun e!2884975 () List!51648)

(assert (=> b!4624989 (= e!2884976 e!2884975)))

(declare-fun c!791691 () Bool)

(assert (=> b!4624989 (= c!791691 ((_ is Cons!51524) (t!358678 oldBucket!40)))))

(declare-fun b!4624990 () Bool)

(assert (=> b!4624990 (= e!2884975 (Cons!51524 (h!57572 (t!358678 oldBucket!40)) (removePairForKey!1125 (t!358678 (t!358678 oldBucket!40)) key!4968)))))

(declare-fun b!4624991 () Bool)

(assert (=> b!4624991 (= e!2884975 Nil!51524)))

(declare-fun b!4624988 () Bool)

(assert (=> b!4624988 (= e!2884976 (t!358678 (t!358678 oldBucket!40)))))

(declare-fun d!1456833 () Bool)

(declare-fun lt!1782658 () List!51648)

(assert (=> d!1456833 (not (containsKey!2438 lt!1782658 key!4968))))

(assert (=> d!1456833 (= lt!1782658 e!2884976)))

(declare-fun c!791692 () Bool)

(assert (=> d!1456833 (= c!791692 (and ((_ is Cons!51524) (t!358678 oldBucket!40)) (= (_1!29521 (h!57572 (t!358678 oldBucket!40))) key!4968)))))

(assert (=> d!1456833 (noDuplicateKeys!1502 (t!358678 oldBucket!40))))

(assert (=> d!1456833 (= (removePairForKey!1125 (t!358678 oldBucket!40) key!4968) lt!1782658)))

(assert (= (and d!1456833 c!791692) b!4624988))

(assert (= (and d!1456833 (not c!791692)) b!4624989))

(assert (= (and b!4624989 c!791691) b!4624990))

(assert (= (and b!4624989 (not c!791691)) b!4624991))

(declare-fun m!5466075 () Bool)

(assert (=> b!4624990 m!5466075))

(declare-fun m!5466077 () Bool)

(assert (=> d!1456833 m!5466077))

(assert (=> d!1456833 m!5465359))

(assert (=> b!4624590 d!1456833))

(declare-fun bs!1023055 () Bool)

(declare-fun d!1456835 () Bool)

(assert (= bs!1023055 (and d!1456835 b!4624660)))

(declare-fun lambda!191962 () Int)

(assert (=> bs!1023055 (not (= lambda!191962 lambda!191885))))

(assert (=> bs!1023055 (not (= lambda!191962 lambda!191886))))

(declare-fun bs!1023056 () Bool)

(assert (= bs!1023056 (and d!1456835 b!4624738)))

(assert (=> bs!1023056 (not (= lambda!191962 lambda!191898))))

(declare-fun bs!1023057 () Bool)

(assert (= bs!1023057 (and d!1456835 b!4624842)))

(assert (=> bs!1023057 (not (= lambda!191962 lambda!191933))))

(declare-fun bs!1023058 () Bool)

(assert (= bs!1023058 (and d!1456835 b!4624805)))

(assert (=> bs!1023058 (not (= lambda!191962 lambda!191921))))

(declare-fun bs!1023059 () Bool)

(assert (= bs!1023059 (and d!1456835 d!1456741)))

(assert (=> bs!1023059 (not (= lambda!191962 lambda!191923))))

(declare-fun bs!1023060 () Bool)

(assert (= bs!1023060 (and d!1456835 b!4624658)))

(assert (=> bs!1023060 (not (= lambda!191962 lambda!191884))))

(declare-fun bs!1023061 () Bool)

(assert (= bs!1023061 (and d!1456835 b!4624803)))

(assert (=> bs!1023061 (not (= lambda!191962 lambda!191920))))

(assert (=> bs!1023058 (not (= lambda!191962 lambda!191922))))

(declare-fun bs!1023062 () Bool)

(assert (= bs!1023062 (and d!1456835 b!4624840)))

(assert (=> bs!1023062 (not (= lambda!191962 lambda!191930))))

(declare-fun bs!1023063 () Bool)

(assert (= bs!1023063 (and d!1456835 d!1456651)))

(assert (=> bs!1023063 (not (= lambda!191962 lambda!191887))))

(declare-fun bs!1023064 () Bool)

(assert (= bs!1023064 (and d!1456835 b!4624740)))

(assert (=> bs!1023064 (not (= lambda!191962 lambda!191899))))

(assert (=> bs!1023057 (not (= lambda!191962 lambda!191932))))

(declare-fun bs!1023065 () Bool)

(assert (= bs!1023065 (and d!1456835 b!4624800)))

(assert (=> bs!1023065 (not (= lambda!191962 lambda!191914))))

(declare-fun bs!1023066 () Bool)

(assert (= bs!1023066 (and d!1456835 b!4624798)))

(assert (=> bs!1023066 (not (= lambda!191962 lambda!191913))))

(assert (=> bs!1023064 (not (= lambda!191962 lambda!191900))))

(assert (=> bs!1023065 (not (= lambda!191962 lambda!191916))))

(declare-fun bs!1023067 () Bool)

(assert (= bs!1023067 (and d!1456835 d!1456693)))

(assert (=> bs!1023067 (not (= lambda!191962 lambda!191903))))

(declare-fun bs!1023068 () Bool)

(assert (= bs!1023068 (and d!1456835 d!1456735)))

(assert (=> bs!1023068 (not (= lambda!191962 lambda!191919))))

(declare-fun bs!1023069 () Bool)

(assert (= bs!1023069 (and d!1456835 d!1456747)))

(assert (=> bs!1023069 (not (= lambda!191962 lambda!191934))))

(assert (=> d!1456835 true))

(assert (=> d!1456835 true))

(assert (=> d!1456835 (= (allKeysSameHash!1356 newBucket!224 hash!414 hashF!1389) (forall!10820 newBucket!224 lambda!191962))))

(declare-fun bs!1023070 () Bool)

(assert (= bs!1023070 d!1456835))

(declare-fun m!5466079 () Bool)

(assert (=> bs!1023070 m!5466079))

(assert (=> b!4624603 d!1456835))

(declare-fun b!4624996 () Bool)

(declare-fun e!2884982 () Unit!111893)

(declare-fun e!2884978 () Unit!111893)

(assert (=> b!4624996 (= e!2884982 e!2884978)))

(declare-fun c!791693 () Bool)

(declare-fun call!322601 () Bool)

(assert (=> b!4624996 (= c!791693 call!322601)))

(declare-fun d!1456837 () Bool)

(declare-fun e!2884977 () Bool)

(assert (=> d!1456837 e!2884977))

(declare-fun res!1939364 () Bool)

(assert (=> d!1456837 (=> res!1939364 e!2884977)))

(declare-fun e!2884979 () Bool)

(assert (=> d!1456837 (= res!1939364 e!2884979)))

(declare-fun res!1939362 () Bool)

(assert (=> d!1456837 (=> (not res!1939362) (not e!2884979))))

(declare-fun lt!1782659 () Bool)

(assert (=> d!1456837 (= res!1939362 (not lt!1782659))))

(declare-fun lt!1782662 () Bool)

(assert (=> d!1456837 (= lt!1782659 lt!1782662)))

(declare-fun lt!1782665 () Unit!111893)

(assert (=> d!1456837 (= lt!1782665 e!2884982)))

(declare-fun c!791695 () Bool)

(assert (=> d!1456837 (= c!791695 lt!1782662)))

(assert (=> d!1456837 (= lt!1782662 (containsKey!2440 (toList!4969 lt!1782092) key!4968))))

(assert (=> d!1456837 (= (contains!14561 lt!1782092 key!4968) lt!1782659)))

(declare-fun b!4624997 () Bool)

(declare-fun e!2884981 () Bool)

(assert (=> b!4624997 (= e!2884977 e!2884981)))

(declare-fun res!1939363 () Bool)

(assert (=> b!4624997 (=> (not res!1939363) (not e!2884981))))

(assert (=> b!4624997 (= res!1939363 (isDefined!8847 (getValueByKey!1446 (toList!4969 lt!1782092) key!4968)))))

(declare-fun b!4624998 () Bool)

(declare-fun Unit!112011 () Unit!111893)

(assert (=> b!4624998 (= e!2884978 Unit!112011)))

(declare-fun b!4624999 () Bool)

(declare-fun e!2884980 () List!51650)

(assert (=> b!4624999 (= e!2884980 (getKeysList!652 (toList!4969 lt!1782092)))))

(declare-fun b!4625000 () Bool)

(assert (=> b!4625000 (= e!2884979 (not (contains!14566 (keys!18147 lt!1782092) key!4968)))))

(declare-fun b!4625001 () Bool)

(declare-fun lt!1782660 () Unit!111893)

(assert (=> b!4625001 (= e!2884982 lt!1782660)))

(declare-fun lt!1782663 () Unit!111893)

(assert (=> b!4625001 (= lt!1782663 (lemmaContainsKeyImpliesGetValueByKeyDefined!1348 (toList!4969 lt!1782092) key!4968))))

(assert (=> b!4625001 (isDefined!8847 (getValueByKey!1446 (toList!4969 lt!1782092) key!4968))))

(declare-fun lt!1782664 () Unit!111893)

(assert (=> b!4625001 (= lt!1782664 lt!1782663)))

(assert (=> b!4625001 (= lt!1782660 (lemmaInListThenGetKeysListContains!647 (toList!4969 lt!1782092) key!4968))))

(assert (=> b!4625001 call!322601))

(declare-fun bm!322596 () Bool)

(assert (=> bm!322596 (= call!322601 (contains!14566 e!2884980 key!4968))))

(declare-fun c!791694 () Bool)

(assert (=> bm!322596 (= c!791694 c!791695)))

(declare-fun b!4625002 () Bool)

(assert (=> b!4625002 false))

(declare-fun lt!1782666 () Unit!111893)

(declare-fun lt!1782661 () Unit!111893)

(assert (=> b!4625002 (= lt!1782666 lt!1782661)))

(assert (=> b!4625002 (containsKey!2440 (toList!4969 lt!1782092) key!4968)))

(assert (=> b!4625002 (= lt!1782661 (lemmaInGetKeysListThenContainsKey!651 (toList!4969 lt!1782092) key!4968))))

(declare-fun Unit!112012 () Unit!111893)

(assert (=> b!4625002 (= e!2884978 Unit!112012)))

(declare-fun b!4625003 () Bool)

(assert (=> b!4625003 (= e!2884980 (keys!18147 lt!1782092))))

(declare-fun b!4625004 () Bool)

(assert (=> b!4625004 (= e!2884981 (contains!14566 (keys!18147 lt!1782092) key!4968))))

(assert (= (and d!1456837 c!791695) b!4625001))

(assert (= (and d!1456837 (not c!791695)) b!4624996))

(assert (= (and b!4624996 c!791693) b!4625002))

(assert (= (and b!4624996 (not c!791693)) b!4624998))

(assert (= (or b!4625001 b!4624996) bm!322596))

(assert (= (and bm!322596 c!791694) b!4624999))

(assert (= (and bm!322596 (not c!791694)) b!4625003))

(assert (= (and d!1456837 res!1939362) b!4625000))

(assert (= (and d!1456837 (not res!1939364)) b!4624997))

(assert (= (and b!4624997 res!1939363) b!4625004))

(declare-fun m!5466081 () Bool)

(assert (=> b!4625001 m!5466081))

(declare-fun m!5466083 () Bool)

(assert (=> b!4625001 m!5466083))

(assert (=> b!4625001 m!5466083))

(declare-fun m!5466085 () Bool)

(assert (=> b!4625001 m!5466085))

(declare-fun m!5466087 () Bool)

(assert (=> b!4625001 m!5466087))

(declare-fun m!5466089 () Bool)

(assert (=> d!1456837 m!5466089))

(assert (=> b!4624997 m!5466083))

(assert (=> b!4624997 m!5466083))

(assert (=> b!4624997 m!5466085))

(assert (=> b!4625002 m!5466089))

(declare-fun m!5466091 () Bool)

(assert (=> b!4625002 m!5466091))

(declare-fun m!5466093 () Bool)

(assert (=> b!4624999 m!5466093))

(declare-fun m!5466095 () Bool)

(assert (=> b!4625004 m!5466095))

(assert (=> b!4625004 m!5466095))

(declare-fun m!5466097 () Bool)

(assert (=> b!4625004 m!5466097))

(assert (=> b!4625000 m!5466095))

(assert (=> b!4625000 m!5466095))

(assert (=> b!4625000 m!5466097))

(declare-fun m!5466099 () Bool)

(assert (=> bm!322596 m!5466099))

(assert (=> b!4625003 m!5466095))

(assert (=> b!4624602 d!1456837))

(declare-fun bs!1023071 () Bool)

(declare-fun d!1456839 () Bool)

(assert (= bs!1023071 (and d!1456839 d!1456725)))

(declare-fun lambda!191963 () Int)

(assert (=> bs!1023071 (= lambda!191963 lambda!191911)))

(declare-fun bs!1023072 () Bool)

(assert (= bs!1023072 (and d!1456839 d!1456729)))

(assert (=> bs!1023072 (= lambda!191963 lambda!191912)))

(declare-fun bs!1023073 () Bool)

(assert (= bs!1023073 (and d!1456839 d!1456743)))

(assert (=> bs!1023073 (= lambda!191963 lambda!191929)))

(declare-fun bs!1023074 () Bool)

(assert (= bs!1023074 (and d!1456839 d!1456669)))

(assert (=> bs!1023074 (= lambda!191963 lambda!191890)))

(declare-fun bs!1023075 () Bool)

(assert (= bs!1023075 (and d!1456839 d!1456799)))

(assert (=> bs!1023075 (= lambda!191963 lambda!191956)))

(declare-fun bs!1023076 () Bool)

(assert (= bs!1023076 (and d!1456839 b!4624601)))

(assert (=> bs!1023076 (= lambda!191963 lambda!191820)))

(declare-fun bs!1023077 () Bool)

(assert (= bs!1023077 (and d!1456839 d!1456757)))

(assert (=> bs!1023077 (= lambda!191963 lambda!191953)))

(declare-fun lt!1782667 () ListMap!4273)

(assert (=> d!1456839 (invariantList!1202 (toList!4969 lt!1782667))))

(declare-fun e!2884983 () ListMap!4273)

(assert (=> d!1456839 (= lt!1782667 e!2884983)))

(declare-fun c!791696 () Bool)

(assert (=> d!1456839 (= c!791696 ((_ is Cons!51525) lt!1782087))))

(assert (=> d!1456839 (forall!10818 lt!1782087 lambda!191963)))

(assert (=> d!1456839 (= (extractMap!1558 lt!1782087) lt!1782667)))

(declare-fun b!4625005 () Bool)

(assert (=> b!4625005 (= e!2884983 (addToMapMapFromBucket!963 (_2!29522 (h!57573 lt!1782087)) (extractMap!1558 (t!358679 lt!1782087))))))

(declare-fun b!4625006 () Bool)

(assert (=> b!4625006 (= e!2884983 (ListMap!4274 Nil!51524))))

(assert (= (and d!1456839 c!791696) b!4625005))

(assert (= (and d!1456839 (not c!791696)) b!4625006))

(declare-fun m!5466101 () Bool)

(assert (=> d!1456839 m!5466101))

(declare-fun m!5466103 () Bool)

(assert (=> d!1456839 m!5466103))

(declare-fun m!5466105 () Bool)

(assert (=> b!4625005 m!5466105))

(assert (=> b!4625005 m!5466105))

(declare-fun m!5466107 () Bool)

(assert (=> b!4625005 m!5466107))

(assert (=> b!4624602 d!1456839))

(declare-fun b!4625008 () Bool)

(declare-fun e!2884985 () List!51648)

(declare-fun e!2884984 () List!51648)

(assert (=> b!4625008 (= e!2884985 e!2884984)))

(declare-fun c!791697 () Bool)

(assert (=> b!4625008 (= c!791697 ((_ is Cons!51524) oldBucket!40))))

(declare-fun b!4625009 () Bool)

(assert (=> b!4625009 (= e!2884984 (Cons!51524 (h!57572 oldBucket!40) (removePairForKey!1125 (t!358678 oldBucket!40) key!4968)))))

(declare-fun b!4625010 () Bool)

(assert (=> b!4625010 (= e!2884984 Nil!51524)))

(declare-fun b!4625007 () Bool)

(assert (=> b!4625007 (= e!2884985 (t!358678 oldBucket!40))))

(declare-fun d!1456841 () Bool)

(declare-fun lt!1782668 () List!51648)

(assert (=> d!1456841 (not (containsKey!2438 lt!1782668 key!4968))))

(assert (=> d!1456841 (= lt!1782668 e!2884985)))

(declare-fun c!791698 () Bool)

(assert (=> d!1456841 (= c!791698 (and ((_ is Cons!51524) oldBucket!40) (= (_1!29521 (h!57572 oldBucket!40)) key!4968)))))

(assert (=> d!1456841 (noDuplicateKeys!1502 oldBucket!40)))

(assert (=> d!1456841 (= (removePairForKey!1125 oldBucket!40 key!4968) lt!1782668)))

(assert (= (and d!1456841 c!791698) b!4625007))

(assert (= (and d!1456841 (not c!791698)) b!4625008))

(assert (= (and b!4625008 c!791697) b!4625009))

(assert (= (and b!4625008 (not c!791697)) b!4625010))

(assert (=> b!4625009 m!5465161))

(declare-fun m!5466109 () Bool)

(assert (=> d!1456841 m!5466109))

(assert (=> d!1456841 m!5465165))

(assert (=> b!4624604 d!1456841))

(declare-fun d!1456843 () Bool)

(declare-fun hash!3495 (Hashable!5899 K!12905) (_ BitVec 64))

(assert (=> d!1456843 (= (hash!3491 hashF!1389 key!4968) (hash!3495 hashF!1389 key!4968))))

(declare-fun bs!1023078 () Bool)

(assert (= bs!1023078 d!1456843))

(declare-fun m!5466111 () Bool)

(assert (=> bs!1023078 m!5466111))

(assert (=> b!4624593 d!1456843))

(declare-fun d!1456845 () Bool)

(assert (=> d!1456845 (= (eq!817 lt!1782086 (+!1868 lt!1782105 lt!1782099)) (= (content!8790 (toList!4969 lt!1782086)) (content!8790 (toList!4969 (+!1868 lt!1782105 lt!1782099)))))))

(declare-fun bs!1023079 () Bool)

(assert (= bs!1023079 d!1456845))

(declare-fun m!5466113 () Bool)

(assert (=> bs!1023079 m!5466113))

(declare-fun m!5466115 () Bool)

(assert (=> bs!1023079 m!5466115))

(assert (=> b!4624594 d!1456845))

(declare-fun d!1456847 () Bool)

(declare-fun e!2884986 () Bool)

(assert (=> d!1456847 e!2884986))

(declare-fun res!1939365 () Bool)

(assert (=> d!1456847 (=> (not res!1939365) (not e!2884986))))

(declare-fun lt!1782670 () ListMap!4273)

(assert (=> d!1456847 (= res!1939365 (contains!14561 lt!1782670 (_1!29521 lt!1782099)))))

(declare-fun lt!1782671 () List!51648)

(assert (=> d!1456847 (= lt!1782670 (ListMap!4274 lt!1782671))))

(declare-fun lt!1782672 () Unit!111893)

(declare-fun lt!1782669 () Unit!111893)

(assert (=> d!1456847 (= lt!1782672 lt!1782669)))

(assert (=> d!1456847 (= (getValueByKey!1446 lt!1782671 (_1!29521 lt!1782099)) (Some!11581 (_2!29521 lt!1782099)))))

(assert (=> d!1456847 (= lt!1782669 (lemmaContainsTupThenGetReturnValue!845 lt!1782671 (_1!29521 lt!1782099) (_2!29521 lt!1782099)))))

(assert (=> d!1456847 (= lt!1782671 (insertNoDuplicatedKeys!353 (toList!4969 lt!1782105) (_1!29521 lt!1782099) (_2!29521 lt!1782099)))))

(assert (=> d!1456847 (= (+!1868 lt!1782105 lt!1782099) lt!1782670)))

(declare-fun b!4625011 () Bool)

(declare-fun res!1939366 () Bool)

(assert (=> b!4625011 (=> (not res!1939366) (not e!2884986))))

(assert (=> b!4625011 (= res!1939366 (= (getValueByKey!1446 (toList!4969 lt!1782670) (_1!29521 lt!1782099)) (Some!11581 (_2!29521 lt!1782099))))))

(declare-fun b!4625012 () Bool)

(assert (=> b!4625012 (= e!2884986 (contains!14565 (toList!4969 lt!1782670) lt!1782099))))

(assert (= (and d!1456847 res!1939365) b!4625011))

(assert (= (and b!4625011 res!1939366) b!4625012))

(declare-fun m!5466117 () Bool)

(assert (=> d!1456847 m!5466117))

(declare-fun m!5466119 () Bool)

(assert (=> d!1456847 m!5466119))

(declare-fun m!5466121 () Bool)

(assert (=> d!1456847 m!5466121))

(declare-fun m!5466123 () Bool)

(assert (=> d!1456847 m!5466123))

(declare-fun m!5466125 () Bool)

(assert (=> b!4625011 m!5466125))

(declare-fun m!5466127 () Bool)

(assert (=> b!4625012 m!5466127))

(assert (=> b!4624594 d!1456847))

(declare-fun bs!1023080 () Bool)

(declare-fun d!1456849 () Bool)

(assert (= bs!1023080 (and d!1456849 d!1456725)))

(declare-fun lambda!191964 () Int)

(assert (=> bs!1023080 (= lambda!191964 lambda!191911)))

(declare-fun bs!1023081 () Bool)

(assert (= bs!1023081 (and d!1456849 d!1456729)))

(assert (=> bs!1023081 (= lambda!191964 lambda!191912)))

(declare-fun bs!1023082 () Bool)

(assert (= bs!1023082 (and d!1456849 d!1456669)))

(assert (=> bs!1023082 (= lambda!191964 lambda!191890)))

(declare-fun bs!1023083 () Bool)

(assert (= bs!1023083 (and d!1456849 d!1456799)))

(assert (=> bs!1023083 (= lambda!191964 lambda!191956)))

(declare-fun bs!1023084 () Bool)

(assert (= bs!1023084 (and d!1456849 b!4624601)))

(assert (=> bs!1023084 (= lambda!191964 lambda!191820)))

(declare-fun bs!1023085 () Bool)

(assert (= bs!1023085 (and d!1456849 d!1456757)))

(assert (=> bs!1023085 (= lambda!191964 lambda!191953)))

(declare-fun bs!1023086 () Bool)

(assert (= bs!1023086 (and d!1456849 d!1456743)))

(assert (=> bs!1023086 (= lambda!191964 lambda!191929)))

(declare-fun bs!1023087 () Bool)

(assert (= bs!1023087 (and d!1456849 d!1456839)))

(assert (=> bs!1023087 (= lambda!191964 lambda!191963)))

(declare-fun lt!1782673 () ListMap!4273)

(assert (=> d!1456849 (invariantList!1202 (toList!4969 lt!1782673))))

(declare-fun e!2884987 () ListMap!4273)

(assert (=> d!1456849 (= lt!1782673 e!2884987)))

(declare-fun c!791699 () Bool)

(assert (=> d!1456849 (= c!791699 ((_ is Cons!51525) lt!1782085))))

(assert (=> d!1456849 (forall!10818 lt!1782085 lambda!191964)))

(assert (=> d!1456849 (= (extractMap!1558 lt!1782085) lt!1782673)))

(declare-fun b!4625013 () Bool)

(assert (=> b!4625013 (= e!2884987 (addToMapMapFromBucket!963 (_2!29522 (h!57573 lt!1782085)) (extractMap!1558 (t!358679 lt!1782085))))))

(declare-fun b!4625014 () Bool)

(assert (=> b!4625014 (= e!2884987 (ListMap!4274 Nil!51524))))

(assert (= (and d!1456849 c!791699) b!4625013))

(assert (= (and d!1456849 (not c!791699)) b!4625014))

(declare-fun m!5466129 () Bool)

(assert (=> d!1456849 m!5466129))

(declare-fun m!5466131 () Bool)

(assert (=> d!1456849 m!5466131))

(declare-fun m!5466133 () Bool)

(assert (=> b!4625013 m!5466133))

(assert (=> b!4625013 m!5466133))

(declare-fun m!5466135 () Bool)

(assert (=> b!4625013 m!5466135))

(assert (=> b!4624594 d!1456849))

(declare-fun bs!1023088 () Bool)

(declare-fun d!1456851 () Bool)

(assert (= bs!1023088 (and d!1456851 d!1456725)))

(declare-fun lambda!191965 () Int)

(assert (=> bs!1023088 (= lambda!191965 lambda!191911)))

(declare-fun bs!1023089 () Bool)

(assert (= bs!1023089 (and d!1456851 d!1456729)))

(assert (=> bs!1023089 (= lambda!191965 lambda!191912)))

(declare-fun bs!1023090 () Bool)

(assert (= bs!1023090 (and d!1456851 d!1456849)))

(assert (=> bs!1023090 (= lambda!191965 lambda!191964)))

(declare-fun bs!1023091 () Bool)

(assert (= bs!1023091 (and d!1456851 d!1456669)))

(assert (=> bs!1023091 (= lambda!191965 lambda!191890)))

(declare-fun bs!1023092 () Bool)

(assert (= bs!1023092 (and d!1456851 d!1456799)))

(assert (=> bs!1023092 (= lambda!191965 lambda!191956)))

(declare-fun bs!1023093 () Bool)

(assert (= bs!1023093 (and d!1456851 b!4624601)))

(assert (=> bs!1023093 (= lambda!191965 lambda!191820)))

(declare-fun bs!1023094 () Bool)

(assert (= bs!1023094 (and d!1456851 d!1456757)))

(assert (=> bs!1023094 (= lambda!191965 lambda!191953)))

(declare-fun bs!1023095 () Bool)

(assert (= bs!1023095 (and d!1456851 d!1456743)))

(assert (=> bs!1023095 (= lambda!191965 lambda!191929)))

(declare-fun bs!1023096 () Bool)

(assert (= bs!1023096 (and d!1456851 d!1456839)))

(assert (=> bs!1023096 (= lambda!191965 lambda!191963)))

(declare-fun lt!1782674 () ListMap!4273)

(assert (=> d!1456851 (invariantList!1202 (toList!4969 lt!1782674))))

(declare-fun e!2884988 () ListMap!4273)

(assert (=> d!1456851 (= lt!1782674 e!2884988)))

(declare-fun c!791700 () Bool)

(assert (=> d!1456851 (= c!791700 ((_ is Cons!51525) (Cons!51525 (tuple2!52457 hash!414 newBucket!224) Nil!51525)))))

(assert (=> d!1456851 (forall!10818 (Cons!51525 (tuple2!52457 hash!414 newBucket!224) Nil!51525) lambda!191965)))

(assert (=> d!1456851 (= (extractMap!1558 (Cons!51525 (tuple2!52457 hash!414 newBucket!224) Nil!51525)) lt!1782674)))

(declare-fun b!4625015 () Bool)

(assert (=> b!4625015 (= e!2884988 (addToMapMapFromBucket!963 (_2!29522 (h!57573 (Cons!51525 (tuple2!52457 hash!414 newBucket!224) Nil!51525))) (extractMap!1558 (t!358679 (Cons!51525 (tuple2!52457 hash!414 newBucket!224) Nil!51525)))))))

(declare-fun b!4625016 () Bool)

(assert (=> b!4625016 (= e!2884988 (ListMap!4274 Nil!51524))))

(assert (= (and d!1456851 c!791700) b!4625015))

(assert (= (and d!1456851 (not c!791700)) b!4625016))

(declare-fun m!5466137 () Bool)

(assert (=> d!1456851 m!5466137))

(declare-fun m!5466139 () Bool)

(assert (=> d!1456851 m!5466139))

(declare-fun m!5466141 () Bool)

(assert (=> b!4625015 m!5466141))

(assert (=> b!4625015 m!5466141))

(declare-fun m!5466143 () Bool)

(assert (=> b!4625015 m!5466143))

(assert (=> b!4624594 d!1456851))

(declare-fun bs!1023097 () Bool)

(declare-fun d!1456853 () Bool)

(assert (= bs!1023097 (and d!1456853 b!4624660)))

(declare-fun lambda!191966 () Int)

(assert (=> bs!1023097 (not (= lambda!191966 lambda!191885))))

(assert (=> bs!1023097 (not (= lambda!191966 lambda!191886))))

(declare-fun bs!1023098 () Bool)

(assert (= bs!1023098 (and d!1456853 b!4624738)))

(assert (=> bs!1023098 (not (= lambda!191966 lambda!191898))))

(declare-fun bs!1023099 () Bool)

(assert (= bs!1023099 (and d!1456853 b!4624842)))

(assert (=> bs!1023099 (not (= lambda!191966 lambda!191933))))

(declare-fun bs!1023100 () Bool)

(assert (= bs!1023100 (and d!1456853 b!4624805)))

(assert (=> bs!1023100 (not (= lambda!191966 lambda!191921))))

(declare-fun bs!1023101 () Bool)

(assert (= bs!1023101 (and d!1456853 d!1456741)))

(assert (=> bs!1023101 (not (= lambda!191966 lambda!191923))))

(declare-fun bs!1023102 () Bool)

(assert (= bs!1023102 (and d!1456853 b!4624658)))

(assert (=> bs!1023102 (not (= lambda!191966 lambda!191884))))

(declare-fun bs!1023103 () Bool)

(assert (= bs!1023103 (and d!1456853 b!4624803)))

(assert (=> bs!1023103 (not (= lambda!191966 lambda!191920))))

(assert (=> bs!1023100 (not (= lambda!191966 lambda!191922))))

(declare-fun bs!1023104 () Bool)

(assert (= bs!1023104 (and d!1456853 b!4624840)))

(assert (=> bs!1023104 (not (= lambda!191966 lambda!191930))))

(declare-fun bs!1023105 () Bool)

(assert (= bs!1023105 (and d!1456853 d!1456651)))

(assert (=> bs!1023105 (not (= lambda!191966 lambda!191887))))

(declare-fun bs!1023106 () Bool)

(assert (= bs!1023106 (and d!1456853 b!4624740)))

(assert (=> bs!1023106 (not (= lambda!191966 lambda!191899))))

(assert (=> bs!1023099 (not (= lambda!191966 lambda!191932))))

(declare-fun bs!1023107 () Bool)

(assert (= bs!1023107 (and d!1456853 b!4624800)))

(assert (=> bs!1023107 (not (= lambda!191966 lambda!191914))))

(declare-fun bs!1023108 () Bool)

(assert (= bs!1023108 (and d!1456853 b!4624798)))

(assert (=> bs!1023108 (not (= lambda!191966 lambda!191913))))

(assert (=> bs!1023106 (not (= lambda!191966 lambda!191900))))

(declare-fun bs!1023109 () Bool)

(assert (= bs!1023109 (and d!1456853 d!1456835)))

(assert (=> bs!1023109 (= lambda!191966 lambda!191962)))

(assert (=> bs!1023107 (not (= lambda!191966 lambda!191916))))

(declare-fun bs!1023110 () Bool)

(assert (= bs!1023110 (and d!1456853 d!1456693)))

(assert (=> bs!1023110 (not (= lambda!191966 lambda!191903))))

(declare-fun bs!1023111 () Bool)

(assert (= bs!1023111 (and d!1456853 d!1456735)))

(assert (=> bs!1023111 (not (= lambda!191966 lambda!191919))))

(declare-fun bs!1023112 () Bool)

(assert (= bs!1023112 (and d!1456853 d!1456747)))

(assert (=> bs!1023112 (not (= lambda!191966 lambda!191934))))

(assert (=> d!1456853 true))

(assert (=> d!1456853 true))

(assert (=> d!1456853 (= (allKeysSameHash!1356 oldBucket!40 hash!414 hashF!1389) (forall!10820 oldBucket!40 lambda!191966))))

(declare-fun bs!1023113 () Bool)

(assert (= bs!1023113 d!1456853))

(declare-fun m!5466145 () Bool)

(assert (=> bs!1023113 m!5466145))

(assert (=> b!4624596 d!1456853))

(declare-fun b!4625018 () Bool)

(declare-fun e!2884990 () List!51648)

(declare-fun e!2884989 () List!51648)

(assert (=> b!4625018 (= e!2884990 e!2884989)))

(declare-fun c!791701 () Bool)

(assert (=> b!4625018 (= c!791701 ((_ is Cons!51524) lt!1782100))))

(declare-fun b!4625019 () Bool)

(assert (=> b!4625019 (= e!2884989 (Cons!51524 (h!57572 lt!1782100) (removePairForKey!1125 (t!358678 lt!1782100) key!4968)))))

(declare-fun b!4625020 () Bool)

(assert (=> b!4625020 (= e!2884989 Nil!51524)))

(declare-fun b!4625017 () Bool)

(assert (=> b!4625017 (= e!2884990 (t!358678 lt!1782100))))

(declare-fun d!1456855 () Bool)

(declare-fun lt!1782675 () List!51648)

(assert (=> d!1456855 (not (containsKey!2438 lt!1782675 key!4968))))

(assert (=> d!1456855 (= lt!1782675 e!2884990)))

(declare-fun c!791702 () Bool)

(assert (=> d!1456855 (= c!791702 (and ((_ is Cons!51524) lt!1782100) (= (_1!29521 (h!57572 lt!1782100)) key!4968)))))

(assert (=> d!1456855 (noDuplicateKeys!1502 lt!1782100)))

(assert (=> d!1456855 (= (removePairForKey!1125 lt!1782100 key!4968) lt!1782675)))

(assert (= (and d!1456855 c!791702) b!4625017))

(assert (= (and d!1456855 (not c!791702)) b!4625018))

(assert (= (and b!4625018 c!791701) b!4625019))

(assert (= (and b!4625018 (not c!791701)) b!4625020))

(declare-fun m!5466147 () Bool)

(assert (=> b!4625019 m!5466147))

(declare-fun m!5466149 () Bool)

(assert (=> d!1456855 m!5466149))

(assert (=> d!1456855 m!5465453))

(assert (=> b!4624597 d!1456855))

(declare-fun d!1456857 () Bool)

(assert (=> d!1456857 (= (tail!8137 newBucket!224) (t!358678 newBucket!224))))

(assert (=> b!4624597 d!1456857))

(declare-fun d!1456859 () Bool)

(assert (=> d!1456859 (= (tail!8137 oldBucket!40) (t!358678 oldBucket!40))))

(assert (=> b!4624597 d!1456859))

(declare-fun e!2884993 () Bool)

(declare-fun tp!1342082 () Bool)

(declare-fun b!4625025 () Bool)

(assert (=> b!4625025 (= e!2884993 (and tp_is_empty!29301 tp_is_empty!29303 tp!1342082))))

(assert (=> b!4624595 (= tp!1342075 e!2884993)))

(assert (= (and b!4624595 ((_ is Cons!51524) (t!358678 newBucket!224))) b!4625025))

(declare-fun b!4625026 () Bool)

(declare-fun tp!1342083 () Bool)

(declare-fun e!2884994 () Bool)

(assert (=> b!4625026 (= e!2884994 (and tp_is_empty!29301 tp_is_empty!29303 tp!1342083))))

(assert (=> b!4624589 (= tp!1342074 e!2884994)))

(assert (= (and b!4624589 ((_ is Cons!51524) (t!358678 oldBucket!40))) b!4625026))

(declare-fun b_lambda!170721 () Bool)

(assert (= b_lambda!170709 (or b!4624601 b_lambda!170721)))

(declare-fun bs!1023114 () Bool)

(declare-fun d!1456861 () Bool)

(assert (= bs!1023114 (and d!1456861 b!4624601)))

(assert (=> bs!1023114 (= (dynLambda!21495 lambda!191820 (h!57573 lt!1782085)) (noDuplicateKeys!1502 (_2!29522 (h!57573 lt!1782085))))))

(declare-fun m!5466151 () Bool)

(assert (=> bs!1023114 m!5466151))

(assert (=> b!4624704 d!1456861))

(declare-fun b_lambda!170723 () Bool)

(assert (= b_lambda!170715 (or b!4624601 b_lambda!170723)))

(declare-fun bs!1023115 () Bool)

(declare-fun d!1456863 () Bool)

(assert (= bs!1023115 (and d!1456863 b!4624601)))

(assert (=> bs!1023115 (= (dynLambda!21495 lambda!191820 lt!1782097) (noDuplicateKeys!1502 (_2!29522 lt!1782097)))))

(declare-fun m!5466153 () Bool)

(assert (=> bs!1023115 m!5466153))

(assert (=> d!1456791 d!1456863))

(check-sat (not b!4624789) (not b!4624966) (not d!1456681) (not b!4624878) tp_is_empty!29303 (not b!4624841) (not d!1456853) (not bm!322562) (not d!1456757) (not bs!1023114) (not b!4624997) (not b!4624875) (not b!4624705) (not d!1456685) (not b!4624698) (not b!4624792) (not b!4625005) (not b!4625000) (not d!1456837) (not b!4624936) (not d!1456845) (not b!4625013) (not d!1456747) (not b!4624741) (not b!4624839) (not d!1456741) (not d!1456855) (not b!4624790) (not b!4624930) (not b!4624659) (not d!1456707) (not bm!322588) (not bm!322586) (not b!4624799) (not d!1456821) (not b!4624737) (not b!4624923) (not bm!322574) (not b!4624786) (not d!1456679) (not d!1456701) (not b_lambda!170721) (not d!1456841) (not d!1456729) (not bm!322577) (not d!1456755) (not b!4625015) (not b!4624797) (not b!4624911) (not b!4624708) (not d!1456799) (not bm!322566) (not d!1456705) (not b!4624782) (not bs!1023115) (not b!4624660) (not b!4624800) (not d!1456843) (not d!1456851) (not b!4624962) (not d!1456839) (not b_lambda!170723) (not b!4625019) (not d!1456791) (not b!4624877) (not b!4624990) (not b!4624784) (not b!4624721) (not b!4624794) (not bm!322573) (not bm!322587) (not b!4625003) (not b!4624876) (not b!4624722) (not d!1456683) (not d!1456687) (not d!1456693) (not b!4625025) (not b!4624999) (not b!4624913) (not b!4624842) (not b!4624978) (not b!4625012) (not b!4624795) (not b!4624788) (not bm!322565) (not b!4625011) (not bm!322575) (not b!4624918) (not d!1456651) (not d!1456847) (not d!1456725) (not bm!322576) (not d!1456835) (not bm!322563) tp_is_empty!29301 (not b!4625001) (not bm!322564) (not d!1456833) (not d!1456825) (not b!4625009) (not d!1456793) (not b!4624609) (not d!1456781) (not d!1456753) (not d!1456727) (not b!4624805) (not b!4625002) (not d!1456735) (not b!4624979) (not b!4624785) (not b!4624657) (not b!4625004) (not bm!322579) (not d!1456849) (not d!1456669) (not b!4624914) (not b!4624740) (not bm!322567) (not b!4624960) (not bm!322596) (not bm!322578) (not d!1456801) (not b!4625026) (not d!1456803) (not b!4624739) (not b!4624804) (not b!4624787) (not d!1456699) (not d!1456731) (not b!4624610) (not d!1456743) (not b!4624917) (not b!4624802) (not b!4624742))
(check-sat)
