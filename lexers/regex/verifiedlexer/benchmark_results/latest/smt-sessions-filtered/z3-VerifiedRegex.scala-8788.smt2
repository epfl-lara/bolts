; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!470744 () Bool)

(assert start!470744)

(declare-fun b!4668826 () Bool)

(declare-fun res!1965043 () Bool)

(declare-fun e!2913515 () Bool)

(assert (=> b!4668826 (=> (not res!1965043) (not e!2913515))))

(declare-datatypes ((K!13345 0))(
  ( (K!13346 (val!18947 Int)) )
))
(declare-datatypes ((V!13591 0))(
  ( (V!13592 (val!18948 Int)) )
))
(declare-datatypes ((tuple2!53158 0))(
  ( (tuple2!53159 (_1!29873 K!13345) (_2!29873 V!13591)) )
))
(declare-datatypes ((List!52126 0))(
  ( (Nil!52002) (Cons!52002 (h!58176 tuple2!53158) (t!359260 List!52126)) )
))
(declare-fun newBucket!224 () List!52126)

(declare-fun noDuplicateKeys!1678 (List!52126) Bool)

(assert (=> b!4668826 (= res!1965043 (noDuplicateKeys!1678 newBucket!224))))

(declare-fun res!1965048 () Bool)

(assert (=> start!470744 (=> (not res!1965048) (not e!2913515))))

(declare-fun oldBucket!40 () List!52126)

(assert (=> start!470744 (= res!1965048 (noDuplicateKeys!1678 oldBucket!40))))

(assert (=> start!470744 e!2913515))

(assert (=> start!470744 true))

(declare-fun e!2913513 () Bool)

(assert (=> start!470744 e!2913513))

(declare-fun tp_is_empty!30005 () Bool)

(assert (=> start!470744 tp_is_empty!30005))

(declare-fun e!2913519 () Bool)

(assert (=> start!470744 e!2913519))

(declare-fun b!4668827 () Bool)

(declare-fun e!2913516 () Bool)

(declare-fun e!2913520 () Bool)

(assert (=> b!4668827 (= e!2913516 e!2913520)))

(declare-fun res!1965036 () Bool)

(assert (=> b!4668827 (=> (not res!1965036) (not e!2913520))))

(declare-fun lt!1830694 () (_ BitVec 64))

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4668827 (= res!1965036 (= lt!1830694 hash!414))))

(declare-datatypes ((Hashable!6075 0))(
  ( (HashableExt!6074 (__x!31778 Int)) )
))
(declare-fun hashF!1389 () Hashable!6075)

(declare-fun key!4968 () K!13345)

(declare-fun hash!3845 (Hashable!6075 K!13345) (_ BitVec 64))

(assert (=> b!4668827 (= lt!1830694 (hash!3845 hashF!1389 key!4968))))

(declare-fun b!4668828 () Bool)

(declare-fun e!2913514 () Bool)

(declare-fun e!2913521 () Bool)

(assert (=> b!4668828 (= e!2913514 e!2913521)))

(declare-fun res!1965045 () Bool)

(assert (=> b!4668828 (=> res!1965045 e!2913521)))

(declare-datatypes ((ListMap!4625 0))(
  ( (ListMap!4626 (toList!5285 List!52126)) )
))
(declare-fun lt!1830705 () ListMap!4625)

(declare-fun lt!1830713 () ListMap!4625)

(declare-fun -!618 (ListMap!4625 K!13345) ListMap!4625)

(declare-fun +!2018 (ListMap!4625 tuple2!53158) ListMap!4625)

(assert (=> b!4668828 (= res!1965045 (not (= (-!618 lt!1830713 key!4968) (+!2018 lt!1830705 (h!58176 oldBucket!40)))))))

(declare-fun lt!1830707 () ListMap!4625)

(assert (=> b!4668828 (= lt!1830713 (+!2018 lt!1830707 (h!58176 oldBucket!40)))))

(assert (=> b!4668828 (= (-!618 (+!2018 lt!1830707 (h!58176 oldBucket!40)) key!4968) (+!2018 lt!1830705 (h!58176 oldBucket!40)))))

(declare-datatypes ((Unit!120784 0))(
  ( (Unit!120785) )
))
(declare-fun lt!1830698 () Unit!120784)

(declare-fun addRemoveCommutativeForDiffKeys!61 (ListMap!4625 K!13345 V!13591 K!13345) Unit!120784)

(assert (=> b!4668828 (= lt!1830698 (addRemoveCommutativeForDiffKeys!61 lt!1830707 (_1!29873 (h!58176 oldBucket!40)) (_2!29873 (h!58176 oldBucket!40)) key!4968))))

(declare-fun lt!1830691 () ListMap!4625)

(declare-fun eq!933 (ListMap!4625 ListMap!4625) Bool)

(assert (=> b!4668828 (eq!933 lt!1830691 lt!1830705)))

(assert (=> b!4668828 (= lt!1830705 (-!618 lt!1830707 key!4968))))

(declare-fun lt!1830690 () Unit!120784)

(declare-fun lt!1830688 () List!52126)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!168 ((_ BitVec 64) List!52126 List!52126 K!13345 Hashable!6075) Unit!120784)

(assert (=> b!4668828 (= lt!1830690 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!168 hash!414 (t!359260 oldBucket!40) lt!1830688 key!4968 hashF!1389))))

(declare-fun tp!1343691 () Bool)

(declare-fun tp_is_empty!30007 () Bool)

(declare-fun b!4668829 () Bool)

(assert (=> b!4668829 (= e!2913519 (and tp_is_empty!30005 tp_is_empty!30007 tp!1343691))))

(declare-fun b!4668830 () Bool)

(declare-fun e!2913523 () Bool)

(assert (=> b!4668830 (= e!2913520 (not e!2913523))))

(declare-fun res!1965034 () Bool)

(assert (=> b!4668830 (=> res!1965034 e!2913523)))

(get-info :version)

(assert (=> b!4668830 (= res!1965034 (or (and ((_ is Cons!52002) oldBucket!40) (= (_1!29873 (h!58176 oldBucket!40)) key!4968)) (not ((_ is Cons!52002) oldBucket!40)) (= (_1!29873 (h!58176 oldBucket!40)) key!4968)))))

(declare-fun e!2913524 () Bool)

(assert (=> b!4668830 e!2913524))

(declare-fun res!1965039 () Bool)

(assert (=> b!4668830 (=> (not res!1965039) (not e!2913524))))

(declare-fun lt!1830702 () ListMap!4625)

(declare-fun lt!1830696 () ListMap!4625)

(declare-fun addToMapMapFromBucket!1135 (List!52126 ListMap!4625) ListMap!4625)

(assert (=> b!4668830 (= res!1965039 (= lt!1830696 (addToMapMapFromBucket!1135 oldBucket!40 lt!1830702)))))

(declare-datatypes ((tuple2!53160 0))(
  ( (tuple2!53161 (_1!29874 (_ BitVec 64)) (_2!29874 List!52126)) )
))
(declare-datatypes ((List!52127 0))(
  ( (Nil!52003) (Cons!52003 (h!58177 tuple2!53160) (t!359261 List!52127)) )
))
(declare-fun extractMap!1734 (List!52127) ListMap!4625)

(assert (=> b!4668830 (= lt!1830702 (extractMap!1734 Nil!52003))))

(assert (=> b!4668830 true))

(declare-fun b!4668831 () Bool)

(assert (=> b!4668831 (= e!2913515 e!2913516)))

(declare-fun res!1965046 () Bool)

(assert (=> b!4668831 (=> (not res!1965046) (not e!2913516))))

(declare-fun contains!15205 (ListMap!4625 K!13345) Bool)

(assert (=> b!4668831 (= res!1965046 (contains!15205 lt!1830696 key!4968))))

(declare-fun lt!1830708 () List!52127)

(assert (=> b!4668831 (= lt!1830696 (extractMap!1734 lt!1830708))))

(assert (=> b!4668831 (= lt!1830708 (Cons!52003 (tuple2!53161 hash!414 oldBucket!40) Nil!52003))))

(declare-fun b!4668832 () Bool)

(declare-fun res!1965035 () Bool)

(assert (=> b!4668832 (=> (not res!1965035) (not e!2913515))))

(declare-fun allKeysSameHash!1532 (List!52126 (_ BitVec 64) Hashable!6075) Bool)

(assert (=> b!4668832 (= res!1965035 (allKeysSameHash!1532 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4668833 () Bool)

(declare-fun e!2913522 () Bool)

(assert (=> b!4668833 (= e!2913522 e!2913514)))

(declare-fun res!1965038 () Bool)

(assert (=> b!4668833 (=> res!1965038 e!2913514)))

(declare-fun lt!1830693 () ListMap!4625)

(declare-fun lt!1830699 () tuple2!53158)

(assert (=> b!4668833 (= res!1965038 (not (eq!933 lt!1830693 (+!2018 lt!1830691 lt!1830699))))))

(assert (=> b!4668833 (= lt!1830691 (extractMap!1734 (Cons!52003 (tuple2!53161 hash!414 lt!1830688) Nil!52003)))))

(assert (=> b!4668833 (= lt!1830693 (extractMap!1734 (Cons!52003 (tuple2!53161 hash!414 newBucket!224) Nil!52003)))))

(declare-fun tp!1343690 () Bool)

(declare-fun b!4668834 () Bool)

(assert (=> b!4668834 (= e!2913513 (and tp_is_empty!30005 tp_is_empty!30007 tp!1343690))))

(declare-fun b!4668835 () Bool)

(assert (=> b!4668835 (= e!2913524 (= lt!1830702 (ListMap!4626 Nil!52002)))))

(declare-fun b!4668836 () Bool)

(declare-fun res!1965044 () Bool)

(assert (=> b!4668836 (=> (not res!1965044) (not e!2913515))))

(declare-fun removePairForKey!1301 (List!52126 K!13345) List!52126)

(assert (=> b!4668836 (= res!1965044 (= (removePairForKey!1301 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4668837 () Bool)

(declare-fun e!2913518 () Bool)

(assert (=> b!4668837 (= e!2913523 e!2913518)))

(declare-fun res!1965041 () Bool)

(assert (=> b!4668837 (=> res!1965041 e!2913518)))

(declare-fun containsKey!2816 (List!52126 K!13345) Bool)

(assert (=> b!4668837 (= res!1965041 (not (containsKey!2816 (t!359260 oldBucket!40) key!4968)))))

(assert (=> b!4668837 (containsKey!2816 oldBucket!40 key!4968)))

(declare-fun lt!1830709 () Unit!120784)

(declare-fun lemmaGetPairDefinedThenContainsKey!156 (List!52126 K!13345 Hashable!6075) Unit!120784)

(assert (=> b!4668837 (= lt!1830709 (lemmaGetPairDefinedThenContainsKey!156 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1830703 () List!52126)

(declare-datatypes ((Option!11914 0))(
  ( (None!11913) (Some!11913 (v!46263 tuple2!53158)) )
))
(declare-fun isDefined!9179 (Option!11914) Bool)

(declare-fun getPair!406 (List!52126 K!13345) Option!11914)

(assert (=> b!4668837 (isDefined!9179 (getPair!406 lt!1830703 key!4968))))

(declare-fun lt!1830697 () Unit!120784)

(declare-fun lt!1830712 () tuple2!53160)

(declare-fun lambda!202026 () Int)

(declare-fun forallContained!3302 (List!52127 Int tuple2!53160) Unit!120784)

(assert (=> b!4668837 (= lt!1830697 (forallContained!3302 lt!1830708 lambda!202026 lt!1830712))))

(declare-fun contains!15206 (List!52127 tuple2!53160) Bool)

(assert (=> b!4668837 (contains!15206 lt!1830708 lt!1830712)))

(assert (=> b!4668837 (= lt!1830712 (tuple2!53161 lt!1830694 lt!1830703))))

(declare-fun lt!1830695 () Unit!120784)

(declare-datatypes ((ListLongMap!3839 0))(
  ( (ListLongMap!3840 (toList!5286 List!52127)) )
))
(declare-fun lt!1830710 () ListLongMap!3839)

(declare-fun lemmaGetValueImpliesTupleContained!211 (ListLongMap!3839 (_ BitVec 64) List!52126) Unit!120784)

(assert (=> b!4668837 (= lt!1830695 (lemmaGetValueImpliesTupleContained!211 lt!1830710 lt!1830694 lt!1830703))))

(declare-fun apply!12281 (ListLongMap!3839 (_ BitVec 64)) List!52126)

(assert (=> b!4668837 (= lt!1830703 (apply!12281 lt!1830710 lt!1830694))))

(declare-fun contains!15207 (ListLongMap!3839 (_ BitVec 64)) Bool)

(assert (=> b!4668837 (contains!15207 lt!1830710 lt!1830694)))

(declare-fun lt!1830704 () Unit!120784)

(declare-fun lemmaInGenMapThenLongMapContainsHash!612 (ListLongMap!3839 K!13345 Hashable!6075) Unit!120784)

(assert (=> b!4668837 (= lt!1830704 (lemmaInGenMapThenLongMapContainsHash!612 lt!1830710 key!4968 hashF!1389))))

(declare-fun lt!1830689 () Unit!120784)

(declare-fun lemmaInGenMapThenGetPairDefined!202 (ListLongMap!3839 K!13345 Hashable!6075) Unit!120784)

(assert (=> b!4668837 (= lt!1830689 (lemmaInGenMapThenGetPairDefined!202 lt!1830710 key!4968 hashF!1389))))

(assert (=> b!4668837 (= lt!1830710 (ListLongMap!3840 lt!1830708))))

(declare-fun b!4668838 () Bool)

(assert (=> b!4668838 (= e!2913521 (eq!933 lt!1830713 lt!1830696))))

(declare-fun b!4668839 () Bool)

(declare-fun e!2913517 () Bool)

(assert (=> b!4668839 (= e!2913517 e!2913522)))

(declare-fun res!1965040 () Bool)

(assert (=> b!4668839 (=> res!1965040 e!2913522)))

(declare-fun lt!1830706 () List!52126)

(assert (=> b!4668839 (= res!1965040 (not (eq!933 lt!1830696 (+!2018 (extractMap!1734 (Cons!52003 (tuple2!53161 hash!414 lt!1830706) Nil!52003)) (h!58176 oldBucket!40)))))))

(assert (=> b!4668839 (eq!933 (addToMapMapFromBucket!1135 (Cons!52002 lt!1830699 lt!1830688) (ListMap!4626 Nil!52002)) (+!2018 (addToMapMapFromBucket!1135 lt!1830688 (ListMap!4626 Nil!52002)) lt!1830699))))

(declare-fun lt!1830687 () Unit!120784)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!184 (tuple2!53158 List!52126 ListMap!4625) Unit!120784)

(assert (=> b!4668839 (= lt!1830687 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!184 lt!1830699 lt!1830688 (ListMap!4626 Nil!52002)))))

(declare-fun head!9756 (List!52126) tuple2!53158)

(assert (=> b!4668839 (= lt!1830699 (head!9756 newBucket!224))))

(declare-fun lt!1830692 () tuple2!53158)

(assert (=> b!4668839 (eq!933 (addToMapMapFromBucket!1135 (Cons!52002 lt!1830692 lt!1830706) (ListMap!4626 Nil!52002)) (+!2018 (addToMapMapFromBucket!1135 lt!1830706 (ListMap!4626 Nil!52002)) lt!1830692))))

(declare-fun lt!1830701 () Unit!120784)

(assert (=> b!4668839 (= lt!1830701 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!184 lt!1830692 lt!1830706 (ListMap!4626 Nil!52002)))))

(assert (=> b!4668839 (= lt!1830692 (head!9756 oldBucket!40))))

(assert (=> b!4668839 (contains!15205 lt!1830707 key!4968)))

(declare-fun lt!1830711 () List!52127)

(assert (=> b!4668839 (= lt!1830707 (extractMap!1734 lt!1830711))))

(declare-fun lt!1830700 () Unit!120784)

(declare-fun lemmaListContainsThenExtractedMapContains!412 (ListLongMap!3839 K!13345 Hashable!6075) Unit!120784)

(assert (=> b!4668839 (= lt!1830700 (lemmaListContainsThenExtractedMapContains!412 (ListLongMap!3840 lt!1830711) key!4968 hashF!1389))))

(assert (=> b!4668839 (= lt!1830711 (Cons!52003 (tuple2!53161 hash!414 (t!359260 oldBucket!40)) Nil!52003))))

(declare-fun b!4668840 () Bool)

(declare-fun res!1965047 () Bool)

(assert (=> b!4668840 (=> res!1965047 e!2913517)))

(assert (=> b!4668840 (= res!1965047 (not (= (removePairForKey!1301 (t!359260 oldBucket!40) key!4968) lt!1830688)))))

(declare-fun b!4668841 () Bool)

(declare-fun res!1965042 () Bool)

(assert (=> b!4668841 (=> (not res!1965042) (not e!2913520))))

(assert (=> b!4668841 (= res!1965042 (allKeysSameHash!1532 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4668842 () Bool)

(assert (=> b!4668842 (= e!2913518 e!2913517)))

(declare-fun res!1965037 () Bool)

(assert (=> b!4668842 (=> res!1965037 e!2913517)))

(assert (=> b!4668842 (= res!1965037 (not (= (removePairForKey!1301 lt!1830706 key!4968) lt!1830688)))))

(declare-fun tail!8281 (List!52126) List!52126)

(assert (=> b!4668842 (= lt!1830688 (tail!8281 newBucket!224))))

(assert (=> b!4668842 (= lt!1830706 (tail!8281 oldBucket!40))))

(assert (= (and start!470744 res!1965048) b!4668826))

(assert (= (and b!4668826 res!1965043) b!4668836))

(assert (= (and b!4668836 res!1965044) b!4668832))

(assert (= (and b!4668832 res!1965035) b!4668831))

(assert (= (and b!4668831 res!1965046) b!4668827))

(assert (= (and b!4668827 res!1965036) b!4668841))

(assert (= (and b!4668841 res!1965042) b!4668830))

(assert (= (and b!4668830 res!1965039) b!4668835))

(assert (= (and b!4668830 (not res!1965034)) b!4668837))

(assert (= (and b!4668837 (not res!1965041)) b!4668842))

(assert (= (and b!4668842 (not res!1965037)) b!4668840))

(assert (= (and b!4668840 (not res!1965047)) b!4668839))

(assert (= (and b!4668839 (not res!1965040)) b!4668833))

(assert (= (and b!4668833 (not res!1965038)) b!4668828))

(assert (= (and b!4668828 (not res!1965045)) b!4668838))

(assert (= (and start!470744 ((_ is Cons!52002) oldBucket!40)) b!4668834))

(assert (= (and start!470744 ((_ is Cons!52002) newBucket!224)) b!4668829))

(declare-fun m!5560261 () Bool)

(assert (=> b!4668831 m!5560261))

(declare-fun m!5560263 () Bool)

(assert (=> b!4668831 m!5560263))

(declare-fun m!5560265 () Bool)

(assert (=> b!4668837 m!5560265))

(declare-fun m!5560267 () Bool)

(assert (=> b!4668837 m!5560267))

(declare-fun m!5560269 () Bool)

(assert (=> b!4668837 m!5560269))

(declare-fun m!5560271 () Bool)

(assert (=> b!4668837 m!5560271))

(assert (=> b!4668837 m!5560265))

(declare-fun m!5560273 () Bool)

(assert (=> b!4668837 m!5560273))

(declare-fun m!5560275 () Bool)

(assert (=> b!4668837 m!5560275))

(declare-fun m!5560277 () Bool)

(assert (=> b!4668837 m!5560277))

(declare-fun m!5560279 () Bool)

(assert (=> b!4668837 m!5560279))

(declare-fun m!5560281 () Bool)

(assert (=> b!4668837 m!5560281))

(declare-fun m!5560283 () Bool)

(assert (=> b!4668837 m!5560283))

(declare-fun m!5560285 () Bool)

(assert (=> b!4668837 m!5560285))

(declare-fun m!5560287 () Bool)

(assert (=> b!4668837 m!5560287))

(declare-fun m!5560289 () Bool)

(assert (=> b!4668838 m!5560289))

(declare-fun m!5560291 () Bool)

(assert (=> b!4668826 m!5560291))

(declare-fun m!5560293 () Bool)

(assert (=> b!4668833 m!5560293))

(assert (=> b!4668833 m!5560293))

(declare-fun m!5560295 () Bool)

(assert (=> b!4668833 m!5560295))

(declare-fun m!5560297 () Bool)

(assert (=> b!4668833 m!5560297))

(declare-fun m!5560299 () Bool)

(assert (=> b!4668833 m!5560299))

(declare-fun m!5560301 () Bool)

(assert (=> b!4668836 m!5560301))

(declare-fun m!5560303 () Bool)

(assert (=> b!4668827 m!5560303))

(declare-fun m!5560305 () Bool)

(assert (=> b!4668839 m!5560305))

(declare-fun m!5560307 () Bool)

(assert (=> b!4668839 m!5560307))

(declare-fun m!5560309 () Bool)

(assert (=> b!4668839 m!5560309))

(declare-fun m!5560311 () Bool)

(assert (=> b!4668839 m!5560311))

(declare-fun m!5560313 () Bool)

(assert (=> b!4668839 m!5560313))

(declare-fun m!5560315 () Bool)

(assert (=> b!4668839 m!5560315))

(declare-fun m!5560317 () Bool)

(assert (=> b!4668839 m!5560317))

(assert (=> b!4668839 m!5560307))

(declare-fun m!5560319 () Bool)

(assert (=> b!4668839 m!5560319))

(declare-fun m!5560321 () Bool)

(assert (=> b!4668839 m!5560321))

(declare-fun m!5560323 () Bool)

(assert (=> b!4668839 m!5560323))

(assert (=> b!4668839 m!5560311))

(declare-fun m!5560325 () Bool)

(assert (=> b!4668839 m!5560325))

(declare-fun m!5560327 () Bool)

(assert (=> b!4668839 m!5560327))

(declare-fun m!5560329 () Bool)

(assert (=> b!4668839 m!5560329))

(assert (=> b!4668839 m!5560325))

(assert (=> b!4668839 m!5560319))

(declare-fun m!5560331 () Bool)

(assert (=> b!4668839 m!5560331))

(assert (=> b!4668839 m!5560329))

(declare-fun m!5560333 () Bool)

(assert (=> b!4668839 m!5560333))

(assert (=> b!4668839 m!5560309))

(declare-fun m!5560335 () Bool)

(assert (=> b!4668839 m!5560335))

(assert (=> b!4668839 m!5560333))

(assert (=> b!4668839 m!5560321))

(declare-fun m!5560337 () Bool)

(assert (=> b!4668839 m!5560337))

(declare-fun m!5560339 () Bool)

(assert (=> b!4668839 m!5560339))

(declare-fun m!5560341 () Bool)

(assert (=> start!470744 m!5560341))

(declare-fun m!5560343 () Bool)

(assert (=> b!4668830 m!5560343))

(declare-fun m!5560345 () Bool)

(assert (=> b!4668830 m!5560345))

(declare-fun m!5560347 () Bool)

(assert (=> b!4668841 m!5560347))

(declare-fun m!5560349 () Bool)

(assert (=> b!4668828 m!5560349))

(declare-fun m!5560351 () Bool)

(assert (=> b!4668828 m!5560351))

(declare-fun m!5560353 () Bool)

(assert (=> b!4668828 m!5560353))

(declare-fun m!5560355 () Bool)

(assert (=> b!4668828 m!5560355))

(declare-fun m!5560357 () Bool)

(assert (=> b!4668828 m!5560357))

(assert (=> b!4668828 m!5560355))

(declare-fun m!5560359 () Bool)

(assert (=> b!4668828 m!5560359))

(declare-fun m!5560361 () Bool)

(assert (=> b!4668828 m!5560361))

(declare-fun m!5560363 () Bool)

(assert (=> b!4668828 m!5560363))

(declare-fun m!5560365 () Bool)

(assert (=> b!4668840 m!5560365))

(declare-fun m!5560367 () Bool)

(assert (=> b!4668842 m!5560367))

(declare-fun m!5560369 () Bool)

(assert (=> b!4668842 m!5560369))

(declare-fun m!5560371 () Bool)

(assert (=> b!4668842 m!5560371))

(declare-fun m!5560373 () Bool)

(assert (=> b!4668832 m!5560373))

(check-sat (not b!4668828) (not b!4668838) (not b!4668832) tp_is_empty!30005 (not b!4668833) (not b!4668841) (not b!4668840) (not b!4668831) (not b!4668827) (not b!4668836) (not b!4668839) (not b!4668826) (not b!4668837) (not b!4668842) (not start!470744) tp_is_empty!30007 (not b!4668829) (not b!4668834) (not b!4668830))
(check-sat)
(get-model)

(declare-fun b!4668852 () Bool)

(declare-fun e!2913529 () List!52126)

(declare-fun e!2913530 () List!52126)

(assert (=> b!4668852 (= e!2913529 e!2913530)))

(declare-fun c!799352 () Bool)

(assert (=> b!4668852 (= c!799352 ((_ is Cons!52002) (t!359260 oldBucket!40)))))

(declare-fun b!4668853 () Bool)

(assert (=> b!4668853 (= e!2913530 (Cons!52002 (h!58176 (t!359260 oldBucket!40)) (removePairForKey!1301 (t!359260 (t!359260 oldBucket!40)) key!4968)))))

(declare-fun b!4668851 () Bool)

(assert (=> b!4668851 (= e!2913529 (t!359260 (t!359260 oldBucket!40)))))

(declare-fun b!4668854 () Bool)

(assert (=> b!4668854 (= e!2913530 Nil!52002)))

(declare-fun d!1484527 () Bool)

(declare-fun lt!1830716 () List!52126)

(assert (=> d!1484527 (not (containsKey!2816 lt!1830716 key!4968))))

(assert (=> d!1484527 (= lt!1830716 e!2913529)))

(declare-fun c!799351 () Bool)

(assert (=> d!1484527 (= c!799351 (and ((_ is Cons!52002) (t!359260 oldBucket!40)) (= (_1!29873 (h!58176 (t!359260 oldBucket!40))) key!4968)))))

(assert (=> d!1484527 (noDuplicateKeys!1678 (t!359260 oldBucket!40))))

(assert (=> d!1484527 (= (removePairForKey!1301 (t!359260 oldBucket!40) key!4968) lt!1830716)))

(assert (= (and d!1484527 c!799351) b!4668851))

(assert (= (and d!1484527 (not c!799351)) b!4668852))

(assert (= (and b!4668852 c!799352) b!4668853))

(assert (= (and b!4668852 (not c!799352)) b!4668854))

(declare-fun m!5560375 () Bool)

(assert (=> b!4668853 m!5560375))

(declare-fun m!5560377 () Bool)

(assert (=> d!1484527 m!5560377))

(declare-fun m!5560379 () Bool)

(assert (=> d!1484527 m!5560379))

(assert (=> b!4668840 d!1484527))

(declare-fun b!4668897 () Bool)

(assert (=> b!4668897 true))

(declare-fun bs!1077775 () Bool)

(declare-fun b!4668901 () Bool)

(assert (= bs!1077775 (and b!4668901 b!4668897)))

(declare-fun lambda!202060 () Int)

(declare-fun lambda!202059 () Int)

(assert (=> bs!1077775 (= lambda!202060 lambda!202059)))

(assert (=> b!4668901 true))

(declare-fun lambda!202061 () Int)

(declare-fun lt!1830798 () ListMap!4625)

(assert (=> bs!1077775 (= (= lt!1830798 lt!1830702) (= lambda!202061 lambda!202059))))

(assert (=> b!4668901 (= (= lt!1830798 lt!1830702) (= lambda!202061 lambda!202060))))

(assert (=> b!4668901 true))

(declare-fun bs!1077776 () Bool)

(declare-fun d!1484529 () Bool)

(assert (= bs!1077776 (and d!1484529 b!4668897)))

(declare-fun lambda!202062 () Int)

(declare-fun lt!1830796 () ListMap!4625)

(assert (=> bs!1077776 (= (= lt!1830796 lt!1830702) (= lambda!202062 lambda!202059))))

(declare-fun bs!1077777 () Bool)

(assert (= bs!1077777 (and d!1484529 b!4668901)))

(assert (=> bs!1077777 (= (= lt!1830796 lt!1830702) (= lambda!202062 lambda!202060))))

(assert (=> bs!1077777 (= (= lt!1830796 lt!1830798) (= lambda!202062 lambda!202061))))

(assert (=> d!1484529 true))

(declare-fun call!326326 () Bool)

(declare-fun bm!326321 () Bool)

(declare-fun c!799365 () Bool)

(declare-fun forall!11097 (List!52126 Int) Bool)

(assert (=> bm!326321 (= call!326326 (forall!11097 (ite c!799365 (toList!5285 lt!1830702) (t!359260 oldBucket!40)) (ite c!799365 lambda!202059 lambda!202061)))))

(declare-fun e!2913557 () ListMap!4625)

(assert (=> b!4668897 (= e!2913557 lt!1830702)))

(declare-fun lt!1830790 () Unit!120784)

(declare-fun call!326328 () Unit!120784)

(assert (=> b!4668897 (= lt!1830790 call!326328)))

(declare-fun call!326327 () Bool)

(assert (=> b!4668897 call!326327))

(declare-fun lt!1830786 () Unit!120784)

(assert (=> b!4668897 (= lt!1830786 lt!1830790)))

(assert (=> b!4668897 call!326326))

(declare-fun lt!1830797 () Unit!120784)

(declare-fun Unit!120786 () Unit!120784)

(assert (=> b!4668897 (= lt!1830797 Unit!120786)))

(declare-fun bm!326322 () Bool)

(assert (=> bm!326322 (= call!326327 (forall!11097 (ite c!799365 (toList!5285 lt!1830702) oldBucket!40) (ite c!799365 lambda!202059 lambda!202061)))))

(declare-fun b!4668898 () Bool)

(declare-fun e!2913558 () Bool)

(declare-fun invariantList!1327 (List!52126) Bool)

(assert (=> b!4668898 (= e!2913558 (invariantList!1327 (toList!5285 lt!1830796)))))

(assert (=> d!1484529 e!2913558))

(declare-fun res!1965068 () Bool)

(assert (=> d!1484529 (=> (not res!1965068) (not e!2913558))))

(assert (=> d!1484529 (= res!1965068 (forall!11097 oldBucket!40 lambda!202062))))

(assert (=> d!1484529 (= lt!1830796 e!2913557)))

(assert (=> d!1484529 (= c!799365 ((_ is Nil!52002) oldBucket!40))))

(assert (=> d!1484529 (noDuplicateKeys!1678 oldBucket!40)))

(assert (=> d!1484529 (= (addToMapMapFromBucket!1135 oldBucket!40 lt!1830702) lt!1830796)))

(declare-fun b!4668899 () Bool)

(declare-fun res!1965069 () Bool)

(assert (=> b!4668899 (=> (not res!1965069) (not e!2913558))))

(assert (=> b!4668899 (= res!1965069 (forall!11097 (toList!5285 lt!1830702) lambda!202062))))

(declare-fun b!4668900 () Bool)

(declare-fun e!2913556 () Bool)

(assert (=> b!4668900 (= e!2913556 (forall!11097 (toList!5285 lt!1830702) lambda!202061))))

(assert (=> b!4668901 (= e!2913557 lt!1830798)))

(declare-fun lt!1830795 () ListMap!4625)

(assert (=> b!4668901 (= lt!1830795 (+!2018 lt!1830702 (h!58176 oldBucket!40)))))

(assert (=> b!4668901 (= lt!1830798 (addToMapMapFromBucket!1135 (t!359260 oldBucket!40) (+!2018 lt!1830702 (h!58176 oldBucket!40))))))

(declare-fun lt!1830784 () Unit!120784)

(assert (=> b!4668901 (= lt!1830784 call!326328)))

(assert (=> b!4668901 (forall!11097 (toList!5285 lt!1830702) lambda!202060)))

(declare-fun lt!1830782 () Unit!120784)

(assert (=> b!4668901 (= lt!1830782 lt!1830784)))

(assert (=> b!4668901 (forall!11097 (toList!5285 lt!1830795) lambda!202061)))

(declare-fun lt!1830789 () Unit!120784)

(declare-fun Unit!120787 () Unit!120784)

(assert (=> b!4668901 (= lt!1830789 Unit!120787)))

(assert (=> b!4668901 call!326326))

(declare-fun lt!1830788 () Unit!120784)

(declare-fun Unit!120788 () Unit!120784)

(assert (=> b!4668901 (= lt!1830788 Unit!120788)))

(declare-fun lt!1830783 () Unit!120784)

(declare-fun Unit!120789 () Unit!120784)

(assert (=> b!4668901 (= lt!1830783 Unit!120789)))

(declare-fun lt!1830792 () Unit!120784)

(declare-fun forallContained!3303 (List!52126 Int tuple2!53158) Unit!120784)

(assert (=> b!4668901 (= lt!1830792 (forallContained!3303 (toList!5285 lt!1830795) lambda!202061 (h!58176 oldBucket!40)))))

(assert (=> b!4668901 (contains!15205 lt!1830795 (_1!29873 (h!58176 oldBucket!40)))))

(declare-fun lt!1830787 () Unit!120784)

(declare-fun Unit!120790 () Unit!120784)

(assert (=> b!4668901 (= lt!1830787 Unit!120790)))

(assert (=> b!4668901 (contains!15205 lt!1830798 (_1!29873 (h!58176 oldBucket!40)))))

(declare-fun lt!1830779 () Unit!120784)

(declare-fun Unit!120791 () Unit!120784)

(assert (=> b!4668901 (= lt!1830779 Unit!120791)))

(assert (=> b!4668901 call!326327))

(declare-fun lt!1830793 () Unit!120784)

(declare-fun Unit!120792 () Unit!120784)

(assert (=> b!4668901 (= lt!1830793 Unit!120792)))

(assert (=> b!4668901 (forall!11097 (toList!5285 lt!1830795) lambda!202061)))

(declare-fun lt!1830785 () Unit!120784)

(declare-fun Unit!120793 () Unit!120784)

(assert (=> b!4668901 (= lt!1830785 Unit!120793)))

(declare-fun lt!1830791 () Unit!120784)

(declare-fun Unit!120794 () Unit!120784)

(assert (=> b!4668901 (= lt!1830791 Unit!120794)))

(declare-fun lt!1830778 () Unit!120784)

(declare-fun addForallContainsKeyThenBeforeAdding!626 (ListMap!4625 ListMap!4625 K!13345 V!13591) Unit!120784)

(assert (=> b!4668901 (= lt!1830778 (addForallContainsKeyThenBeforeAdding!626 lt!1830702 lt!1830798 (_1!29873 (h!58176 oldBucket!40)) (_2!29873 (h!58176 oldBucket!40))))))

(assert (=> b!4668901 (forall!11097 (toList!5285 lt!1830702) lambda!202061)))

(declare-fun lt!1830794 () Unit!120784)

(assert (=> b!4668901 (= lt!1830794 lt!1830778)))

(assert (=> b!4668901 (forall!11097 (toList!5285 lt!1830702) lambda!202061)))

(declare-fun lt!1830781 () Unit!120784)

(declare-fun Unit!120795 () Unit!120784)

(assert (=> b!4668901 (= lt!1830781 Unit!120795)))

(declare-fun res!1965067 () Bool)

(assert (=> b!4668901 (= res!1965067 (forall!11097 oldBucket!40 lambda!202061))))

(assert (=> b!4668901 (=> (not res!1965067) (not e!2913556))))

(assert (=> b!4668901 e!2913556))

(declare-fun lt!1830780 () Unit!120784)

(declare-fun Unit!120796 () Unit!120784)

(assert (=> b!4668901 (= lt!1830780 Unit!120796)))

(declare-fun bm!326323 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!627 (ListMap!4625) Unit!120784)

(assert (=> bm!326323 (= call!326328 (lemmaContainsAllItsOwnKeys!627 lt!1830702))))

(assert (= (and d!1484529 c!799365) b!4668897))

(assert (= (and d!1484529 (not c!799365)) b!4668901))

(assert (= (and b!4668901 res!1965067) b!4668900))

(assert (= (or b!4668897 b!4668901) bm!326323))

(assert (= (or b!4668897 b!4668901) bm!326322))

(assert (= (or b!4668897 b!4668901) bm!326321))

(assert (= (and d!1484529 res!1965068) b!4668899))

(assert (= (and b!4668899 res!1965069) b!4668898))

(declare-fun m!5560429 () Bool)

(assert (=> b!4668900 m!5560429))

(declare-fun m!5560431 () Bool)

(assert (=> bm!326321 m!5560431))

(declare-fun m!5560433 () Bool)

(assert (=> b!4668899 m!5560433))

(declare-fun m!5560435 () Bool)

(assert (=> b!4668901 m!5560435))

(declare-fun m!5560437 () Bool)

(assert (=> b!4668901 m!5560437))

(declare-fun m!5560439 () Bool)

(assert (=> b!4668901 m!5560439))

(declare-fun m!5560441 () Bool)

(assert (=> b!4668901 m!5560441))

(declare-fun m!5560443 () Bool)

(assert (=> b!4668901 m!5560443))

(assert (=> b!4668901 m!5560435))

(declare-fun m!5560445 () Bool)

(assert (=> b!4668901 m!5560445))

(assert (=> b!4668901 m!5560429))

(declare-fun m!5560447 () Bool)

(assert (=> b!4668901 m!5560447))

(assert (=> b!4668901 m!5560439))

(declare-fun m!5560449 () Bool)

(assert (=> b!4668901 m!5560449))

(assert (=> b!4668901 m!5560429))

(declare-fun m!5560451 () Bool)

(assert (=> b!4668901 m!5560451))

(declare-fun m!5560453 () Bool)

(assert (=> b!4668898 m!5560453))

(declare-fun m!5560455 () Bool)

(assert (=> bm!326322 m!5560455))

(declare-fun m!5560457 () Bool)

(assert (=> d!1484529 m!5560457))

(assert (=> d!1484529 m!5560341))

(declare-fun m!5560459 () Bool)

(assert (=> bm!326323 m!5560459))

(assert (=> b!4668830 d!1484529))

(declare-fun bs!1077778 () Bool)

(declare-fun d!1484553 () Bool)

(assert (= bs!1077778 (and d!1484553 b!4668837)))

(declare-fun lambda!202065 () Int)

(assert (=> bs!1077778 (= lambda!202065 lambda!202026)))

(declare-fun lt!1830801 () ListMap!4625)

(assert (=> d!1484553 (invariantList!1327 (toList!5285 lt!1830801))))

(declare-fun e!2913561 () ListMap!4625)

(assert (=> d!1484553 (= lt!1830801 e!2913561)))

(declare-fun c!799368 () Bool)

(assert (=> d!1484553 (= c!799368 ((_ is Cons!52003) Nil!52003))))

(declare-fun forall!11098 (List!52127 Int) Bool)

(assert (=> d!1484553 (forall!11098 Nil!52003 lambda!202065)))

(assert (=> d!1484553 (= (extractMap!1734 Nil!52003) lt!1830801)))

(declare-fun b!4668908 () Bool)

(assert (=> b!4668908 (= e!2913561 (addToMapMapFromBucket!1135 (_2!29874 (h!58177 Nil!52003)) (extractMap!1734 (t!359261 Nil!52003))))))

(declare-fun b!4668909 () Bool)

(assert (=> b!4668909 (= e!2913561 (ListMap!4626 Nil!52002))))

(assert (= (and d!1484553 c!799368) b!4668908))

(assert (= (and d!1484553 (not c!799368)) b!4668909))

(declare-fun m!5560461 () Bool)

(assert (=> d!1484553 m!5560461))

(declare-fun m!5560463 () Bool)

(assert (=> d!1484553 m!5560463))

(declare-fun m!5560465 () Bool)

(assert (=> b!4668908 m!5560465))

(assert (=> b!4668908 m!5560465))

(declare-fun m!5560467 () Bool)

(assert (=> b!4668908 m!5560467))

(assert (=> b!4668830 d!1484553))

(declare-fun bs!1077779 () Bool)

(declare-fun d!1484555 () Bool)

(assert (= bs!1077779 (and d!1484555 b!4668897)))

(declare-fun lambda!202068 () Int)

(assert (=> bs!1077779 (not (= lambda!202068 lambda!202059))))

(declare-fun bs!1077780 () Bool)

(assert (= bs!1077780 (and d!1484555 b!4668901)))

(assert (=> bs!1077780 (not (= lambda!202068 lambda!202060))))

(assert (=> bs!1077780 (not (= lambda!202068 lambda!202061))))

(declare-fun bs!1077781 () Bool)

(assert (= bs!1077781 (and d!1484555 d!1484529)))

(assert (=> bs!1077781 (not (= lambda!202068 lambda!202062))))

(assert (=> d!1484555 true))

(assert (=> d!1484555 true))

(assert (=> d!1484555 (= (allKeysSameHash!1532 newBucket!224 hash!414 hashF!1389) (forall!11097 newBucket!224 lambda!202068))))

(declare-fun bs!1077782 () Bool)

(assert (= bs!1077782 d!1484555))

(declare-fun m!5560469 () Bool)

(assert (=> bs!1077782 m!5560469))

(assert (=> b!4668841 d!1484555))

(declare-fun b!4668932 () Bool)

(declare-fun e!2913576 () Bool)

(declare-datatypes ((List!52128 0))(
  ( (Nil!52004) (Cons!52004 (h!58180 K!13345) (t!359264 List!52128)) )
))
(declare-fun contains!15208 (List!52128 K!13345) Bool)

(declare-fun keys!18455 (ListMap!4625) List!52128)

(assert (=> b!4668932 (= e!2913576 (not (contains!15208 (keys!18455 lt!1830696) key!4968)))))

(declare-fun b!4668933 () Bool)

(assert (=> b!4668933 false))

(declare-fun lt!1830818 () Unit!120784)

(declare-fun lt!1830825 () Unit!120784)

(assert (=> b!4668933 (= lt!1830818 lt!1830825)))

(declare-fun containsKey!2817 (List!52126 K!13345) Bool)

(assert (=> b!4668933 (containsKey!2817 (toList!5285 lt!1830696) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!777 (List!52126 K!13345) Unit!120784)

(assert (=> b!4668933 (= lt!1830825 (lemmaInGetKeysListThenContainsKey!777 (toList!5285 lt!1830696) key!4968))))

(declare-fun e!2913577 () Unit!120784)

(declare-fun Unit!120797 () Unit!120784)

(assert (=> b!4668933 (= e!2913577 Unit!120797)))

(declare-fun d!1484557 () Bool)

(declare-fun e!2913575 () Bool)

(assert (=> d!1484557 e!2913575))

(declare-fun res!1965078 () Bool)

(assert (=> d!1484557 (=> res!1965078 e!2913575)))

(assert (=> d!1484557 (= res!1965078 e!2913576)))

(declare-fun res!1965077 () Bool)

(assert (=> d!1484557 (=> (not res!1965077) (not e!2913576))))

(declare-fun lt!1830823 () Bool)

(assert (=> d!1484557 (= res!1965077 (not lt!1830823))))

(declare-fun lt!1830819 () Bool)

(assert (=> d!1484557 (= lt!1830823 lt!1830819)))

(declare-fun lt!1830822 () Unit!120784)

(declare-fun e!2913578 () Unit!120784)

(assert (=> d!1484557 (= lt!1830822 e!2913578)))

(declare-fun c!799377 () Bool)

(assert (=> d!1484557 (= c!799377 lt!1830819)))

(assert (=> d!1484557 (= lt!1830819 (containsKey!2817 (toList!5285 lt!1830696) key!4968))))

(assert (=> d!1484557 (= (contains!15205 lt!1830696 key!4968) lt!1830823)))

(declare-fun b!4668934 () Bool)

(declare-fun e!2913579 () Bool)

(assert (=> b!4668934 (= e!2913579 (contains!15208 (keys!18455 lt!1830696) key!4968))))

(declare-fun bm!326326 () Bool)

(declare-fun call!326331 () Bool)

(declare-fun e!2913574 () List!52128)

(assert (=> bm!326326 (= call!326331 (contains!15208 e!2913574 key!4968))))

(declare-fun c!799375 () Bool)

(assert (=> bm!326326 (= c!799375 c!799377)))

(declare-fun b!4668935 () Bool)

(declare-fun getKeysList!778 (List!52126) List!52128)

(assert (=> b!4668935 (= e!2913574 (getKeysList!778 (toList!5285 lt!1830696)))))

(declare-fun b!4668936 () Bool)

(declare-fun Unit!120798 () Unit!120784)

(assert (=> b!4668936 (= e!2913577 Unit!120798)))

(declare-fun b!4668937 () Bool)

(assert (=> b!4668937 (= e!2913575 e!2913579)))

(declare-fun res!1965076 () Bool)

(assert (=> b!4668937 (=> (not res!1965076) (not e!2913579))))

(declare-datatypes ((Option!11915 0))(
  ( (None!11914) (Some!11914 (v!46268 V!13591)) )
))
(declare-fun isDefined!9180 (Option!11915) Bool)

(declare-fun getValueByKey!1667 (List!52126 K!13345) Option!11915)

(assert (=> b!4668937 (= res!1965076 (isDefined!9180 (getValueByKey!1667 (toList!5285 lt!1830696) key!4968)))))

(declare-fun b!4668938 () Bool)

(assert (=> b!4668938 (= e!2913578 e!2913577)))

(declare-fun c!799376 () Bool)

(assert (=> b!4668938 (= c!799376 call!326331)))

(declare-fun b!4668939 () Bool)

(assert (=> b!4668939 (= e!2913574 (keys!18455 lt!1830696))))

(declare-fun b!4668940 () Bool)

(declare-fun lt!1830820 () Unit!120784)

(assert (=> b!4668940 (= e!2913578 lt!1830820)))

(declare-fun lt!1830821 () Unit!120784)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1569 (List!52126 K!13345) Unit!120784)

(assert (=> b!4668940 (= lt!1830821 (lemmaContainsKeyImpliesGetValueByKeyDefined!1569 (toList!5285 lt!1830696) key!4968))))

(assert (=> b!4668940 (isDefined!9180 (getValueByKey!1667 (toList!5285 lt!1830696) key!4968))))

(declare-fun lt!1830824 () Unit!120784)

(assert (=> b!4668940 (= lt!1830824 lt!1830821)))

(declare-fun lemmaInListThenGetKeysListContains!773 (List!52126 K!13345) Unit!120784)

(assert (=> b!4668940 (= lt!1830820 (lemmaInListThenGetKeysListContains!773 (toList!5285 lt!1830696) key!4968))))

(assert (=> b!4668940 call!326331))

(assert (= (and d!1484557 c!799377) b!4668940))

(assert (= (and d!1484557 (not c!799377)) b!4668938))

(assert (= (and b!4668938 c!799376) b!4668933))

(assert (= (and b!4668938 (not c!799376)) b!4668936))

(assert (= (or b!4668940 b!4668938) bm!326326))

(assert (= (and bm!326326 c!799375) b!4668935))

(assert (= (and bm!326326 (not c!799375)) b!4668939))

(assert (= (and d!1484557 res!1965077) b!4668932))

(assert (= (and d!1484557 (not res!1965078)) b!4668937))

(assert (= (and b!4668937 res!1965076) b!4668934))

(declare-fun m!5560471 () Bool)

(assert (=> b!4668932 m!5560471))

(assert (=> b!4668932 m!5560471))

(declare-fun m!5560473 () Bool)

(assert (=> b!4668932 m!5560473))

(declare-fun m!5560475 () Bool)

(assert (=> d!1484557 m!5560475))

(declare-fun m!5560477 () Bool)

(assert (=> bm!326326 m!5560477))

(assert (=> b!4668934 m!5560471))

(assert (=> b!4668934 m!5560471))

(assert (=> b!4668934 m!5560473))

(declare-fun m!5560479 () Bool)

(assert (=> b!4668940 m!5560479))

(declare-fun m!5560481 () Bool)

(assert (=> b!4668940 m!5560481))

(assert (=> b!4668940 m!5560481))

(declare-fun m!5560483 () Bool)

(assert (=> b!4668940 m!5560483))

(declare-fun m!5560485 () Bool)

(assert (=> b!4668940 m!5560485))

(assert (=> b!4668937 m!5560481))

(assert (=> b!4668937 m!5560481))

(assert (=> b!4668937 m!5560483))

(assert (=> b!4668939 m!5560471))

(declare-fun m!5560487 () Bool)

(assert (=> b!4668935 m!5560487))

(assert (=> b!4668933 m!5560475))

(declare-fun m!5560489 () Bool)

(assert (=> b!4668933 m!5560489))

(assert (=> b!4668831 d!1484557))

(declare-fun bs!1077783 () Bool)

(declare-fun d!1484559 () Bool)

(assert (= bs!1077783 (and d!1484559 b!4668837)))

(declare-fun lambda!202069 () Int)

(assert (=> bs!1077783 (= lambda!202069 lambda!202026)))

(declare-fun bs!1077784 () Bool)

(assert (= bs!1077784 (and d!1484559 d!1484553)))

(assert (=> bs!1077784 (= lambda!202069 lambda!202065)))

(declare-fun lt!1830826 () ListMap!4625)

(assert (=> d!1484559 (invariantList!1327 (toList!5285 lt!1830826))))

(declare-fun e!2913580 () ListMap!4625)

(assert (=> d!1484559 (= lt!1830826 e!2913580)))

(declare-fun c!799378 () Bool)

(assert (=> d!1484559 (= c!799378 ((_ is Cons!52003) lt!1830708))))

(assert (=> d!1484559 (forall!11098 lt!1830708 lambda!202069)))

(assert (=> d!1484559 (= (extractMap!1734 lt!1830708) lt!1830826)))

(declare-fun b!4668941 () Bool)

(assert (=> b!4668941 (= e!2913580 (addToMapMapFromBucket!1135 (_2!29874 (h!58177 lt!1830708)) (extractMap!1734 (t!359261 lt!1830708))))))

(declare-fun b!4668942 () Bool)

(assert (=> b!4668942 (= e!2913580 (ListMap!4626 Nil!52002))))

(assert (= (and d!1484559 c!799378) b!4668941))

(assert (= (and d!1484559 (not c!799378)) b!4668942))

(declare-fun m!5560491 () Bool)

(assert (=> d!1484559 m!5560491))

(declare-fun m!5560493 () Bool)

(assert (=> d!1484559 m!5560493))

(declare-fun m!5560495 () Bool)

(assert (=> b!4668941 m!5560495))

(assert (=> b!4668941 m!5560495))

(declare-fun m!5560497 () Bool)

(assert (=> b!4668941 m!5560497))

(assert (=> b!4668831 d!1484559))

(declare-fun b!4668944 () Bool)

(declare-fun e!2913581 () List!52126)

(declare-fun e!2913582 () List!52126)

(assert (=> b!4668944 (= e!2913581 e!2913582)))

(declare-fun c!799380 () Bool)

(assert (=> b!4668944 (= c!799380 ((_ is Cons!52002) lt!1830706))))

(declare-fun b!4668945 () Bool)

(assert (=> b!4668945 (= e!2913582 (Cons!52002 (h!58176 lt!1830706) (removePairForKey!1301 (t!359260 lt!1830706) key!4968)))))

(declare-fun b!4668943 () Bool)

(assert (=> b!4668943 (= e!2913581 (t!359260 lt!1830706))))

(declare-fun b!4668946 () Bool)

(assert (=> b!4668946 (= e!2913582 Nil!52002)))

(declare-fun d!1484561 () Bool)

(declare-fun lt!1830827 () List!52126)

(assert (=> d!1484561 (not (containsKey!2816 lt!1830827 key!4968))))

(assert (=> d!1484561 (= lt!1830827 e!2913581)))

(declare-fun c!799379 () Bool)

(assert (=> d!1484561 (= c!799379 (and ((_ is Cons!52002) lt!1830706) (= (_1!29873 (h!58176 lt!1830706)) key!4968)))))

(assert (=> d!1484561 (noDuplicateKeys!1678 lt!1830706)))

(assert (=> d!1484561 (= (removePairForKey!1301 lt!1830706 key!4968) lt!1830827)))

(assert (= (and d!1484561 c!799379) b!4668943))

(assert (= (and d!1484561 (not c!799379)) b!4668944))

(assert (= (and b!4668944 c!799380) b!4668945))

(assert (= (and b!4668944 (not c!799380)) b!4668946))

(declare-fun m!5560499 () Bool)

(assert (=> b!4668945 m!5560499))

(declare-fun m!5560501 () Bool)

(assert (=> d!1484561 m!5560501))

(declare-fun m!5560503 () Bool)

(assert (=> d!1484561 m!5560503))

(assert (=> b!4668842 d!1484561))

(declare-fun d!1484563 () Bool)

(assert (=> d!1484563 (= (tail!8281 newBucket!224) (t!359260 newBucket!224))))

(assert (=> b!4668842 d!1484563))

(declare-fun d!1484565 () Bool)

(assert (=> d!1484565 (= (tail!8281 oldBucket!40) (t!359260 oldBucket!40))))

(assert (=> b!4668842 d!1484565))

(declare-fun d!1484567 () Bool)

(declare-fun lt!1830830 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9057 (List!52127) (InoxSet tuple2!53160))

(assert (=> d!1484567 (= lt!1830830 (select (content!9057 lt!1830708) lt!1830712))))

(declare-fun e!2913587 () Bool)

(assert (=> d!1484567 (= lt!1830830 e!2913587)))

(declare-fun res!1965083 () Bool)

(assert (=> d!1484567 (=> (not res!1965083) (not e!2913587))))

(assert (=> d!1484567 (= res!1965083 ((_ is Cons!52003) lt!1830708))))

(assert (=> d!1484567 (= (contains!15206 lt!1830708 lt!1830712) lt!1830830)))

(declare-fun b!4668951 () Bool)

(declare-fun e!2913588 () Bool)

(assert (=> b!4668951 (= e!2913587 e!2913588)))

(declare-fun res!1965084 () Bool)

(assert (=> b!4668951 (=> res!1965084 e!2913588)))

(assert (=> b!4668951 (= res!1965084 (= (h!58177 lt!1830708) lt!1830712))))

(declare-fun b!4668952 () Bool)

(assert (=> b!4668952 (= e!2913588 (contains!15206 (t!359261 lt!1830708) lt!1830712))))

(assert (= (and d!1484567 res!1965083) b!4668951))

(assert (= (and b!4668951 (not res!1965084)) b!4668952))

(declare-fun m!5560505 () Bool)

(assert (=> d!1484567 m!5560505))

(declare-fun m!5560507 () Bool)

(assert (=> d!1484567 m!5560507))

(declare-fun m!5560509 () Bool)

(assert (=> b!4668952 m!5560509))

(assert (=> b!4668837 d!1484567))

(declare-fun d!1484569 () Bool)

(declare-fun e!2913594 () Bool)

(assert (=> d!1484569 e!2913594))

(declare-fun res!1965087 () Bool)

(assert (=> d!1484569 (=> res!1965087 e!2913594)))

(declare-fun lt!1830839 () Bool)

(assert (=> d!1484569 (= res!1965087 (not lt!1830839))))

(declare-fun lt!1830841 () Bool)

(assert (=> d!1484569 (= lt!1830839 lt!1830841)))

(declare-fun lt!1830842 () Unit!120784)

(declare-fun e!2913593 () Unit!120784)

(assert (=> d!1484569 (= lt!1830842 e!2913593)))

(declare-fun c!799383 () Bool)

(assert (=> d!1484569 (= c!799383 lt!1830841)))

(declare-fun containsKey!2818 (List!52127 (_ BitVec 64)) Bool)

(assert (=> d!1484569 (= lt!1830841 (containsKey!2818 (toList!5286 lt!1830710) lt!1830694))))

(assert (=> d!1484569 (= (contains!15207 lt!1830710 lt!1830694) lt!1830839)))

(declare-fun b!4668959 () Bool)

(declare-fun lt!1830840 () Unit!120784)

(assert (=> b!4668959 (= e!2913593 lt!1830840)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1570 (List!52127 (_ BitVec 64)) Unit!120784)

(assert (=> b!4668959 (= lt!1830840 (lemmaContainsKeyImpliesGetValueByKeyDefined!1570 (toList!5286 lt!1830710) lt!1830694))))

(declare-datatypes ((Option!11917 0))(
  ( (None!11916) (Some!11916 (v!46270 List!52126)) )
))
(declare-fun isDefined!9181 (Option!11917) Bool)

(declare-fun getValueByKey!1669 (List!52127 (_ BitVec 64)) Option!11917)

(assert (=> b!4668959 (isDefined!9181 (getValueByKey!1669 (toList!5286 lt!1830710) lt!1830694))))

(declare-fun b!4668960 () Bool)

(declare-fun Unit!120799 () Unit!120784)

(assert (=> b!4668960 (= e!2913593 Unit!120799)))

(declare-fun b!4668961 () Bool)

(assert (=> b!4668961 (= e!2913594 (isDefined!9181 (getValueByKey!1669 (toList!5286 lt!1830710) lt!1830694)))))

(assert (= (and d!1484569 c!799383) b!4668959))

(assert (= (and d!1484569 (not c!799383)) b!4668960))

(assert (= (and d!1484569 (not res!1965087)) b!4668961))

(declare-fun m!5560511 () Bool)

(assert (=> d!1484569 m!5560511))

(declare-fun m!5560513 () Bool)

(assert (=> b!4668959 m!5560513))

(declare-fun m!5560515 () Bool)

(assert (=> b!4668959 m!5560515))

(assert (=> b!4668959 m!5560515))

(declare-fun m!5560517 () Bool)

(assert (=> b!4668959 m!5560517))

(assert (=> b!4668961 m!5560515))

(assert (=> b!4668961 m!5560515))

(assert (=> b!4668961 m!5560517))

(assert (=> b!4668837 d!1484569))

(declare-fun b!4668982 () Bool)

(declare-fun e!2913609 () Option!11914)

(assert (=> b!4668982 (= e!2913609 (Some!11913 (h!58176 lt!1830703)))))

(declare-fun b!4668983 () Bool)

(declare-fun e!2913610 () Bool)

(declare-fun e!2913608 () Bool)

(assert (=> b!4668983 (= e!2913610 e!2913608)))

(declare-fun res!1965097 () Bool)

(assert (=> b!4668983 (=> (not res!1965097) (not e!2913608))))

(declare-fun lt!1830863 () Option!11914)

(assert (=> b!4668983 (= res!1965097 (isDefined!9179 lt!1830863))))

(declare-fun b!4668984 () Bool)

(declare-fun contains!15210 (List!52126 tuple2!53158) Bool)

(declare-fun get!17343 (Option!11914) tuple2!53158)

(assert (=> b!4668984 (= e!2913608 (contains!15210 lt!1830703 (get!17343 lt!1830863)))))

(declare-fun b!4668985 () Bool)

(declare-fun e!2913607 () Option!11914)

(assert (=> b!4668985 (= e!2913609 e!2913607)))

(declare-fun c!799391 () Bool)

(assert (=> b!4668985 (= c!799391 ((_ is Cons!52002) lt!1830703))))

(declare-fun b!4668986 () Bool)

(declare-fun res!1965098 () Bool)

(assert (=> b!4668986 (=> (not res!1965098) (not e!2913608))))

(assert (=> b!4668986 (= res!1965098 (= (_1!29873 (get!17343 lt!1830863)) key!4968))))

(declare-fun b!4668987 () Bool)

(assert (=> b!4668987 (= e!2913607 (getPair!406 (t!359260 lt!1830703) key!4968))))

(declare-fun d!1484571 () Bool)

(assert (=> d!1484571 e!2913610))

(declare-fun res!1965096 () Bool)

(assert (=> d!1484571 (=> res!1965096 e!2913610)))

(declare-fun e!2913611 () Bool)

(assert (=> d!1484571 (= res!1965096 e!2913611)))

(declare-fun res!1965099 () Bool)

(assert (=> d!1484571 (=> (not res!1965099) (not e!2913611))))

(declare-fun isEmpty!29054 (Option!11914) Bool)

(assert (=> d!1484571 (= res!1965099 (isEmpty!29054 lt!1830863))))

(assert (=> d!1484571 (= lt!1830863 e!2913609)))

(declare-fun c!799390 () Bool)

(assert (=> d!1484571 (= c!799390 (and ((_ is Cons!52002) lt!1830703) (= (_1!29873 (h!58176 lt!1830703)) key!4968)))))

(assert (=> d!1484571 (noDuplicateKeys!1678 lt!1830703)))

(assert (=> d!1484571 (= (getPair!406 lt!1830703 key!4968) lt!1830863)))

(declare-fun b!4668988 () Bool)

(assert (=> b!4668988 (= e!2913611 (not (containsKey!2816 lt!1830703 key!4968)))))

(declare-fun b!4668989 () Bool)

(assert (=> b!4668989 (= e!2913607 None!11913)))

(assert (= (and d!1484571 c!799390) b!4668982))

(assert (= (and d!1484571 (not c!799390)) b!4668985))

(assert (= (and b!4668985 c!799391) b!4668987))

(assert (= (and b!4668985 (not c!799391)) b!4668989))

(assert (= (and d!1484571 res!1965099) b!4668988))

(assert (= (and d!1484571 (not res!1965096)) b!4668983))

(assert (= (and b!4668983 res!1965097) b!4668986))

(assert (= (and b!4668986 res!1965098) b!4668984))

(declare-fun m!5560519 () Bool)

(assert (=> b!4668987 m!5560519))

(declare-fun m!5560521 () Bool)

(assert (=> b!4668986 m!5560521))

(declare-fun m!5560523 () Bool)

(assert (=> b!4668988 m!5560523))

(declare-fun m!5560525 () Bool)

(assert (=> d!1484571 m!5560525))

(declare-fun m!5560527 () Bool)

(assert (=> d!1484571 m!5560527))

(assert (=> b!4668984 m!5560521))

(assert (=> b!4668984 m!5560521))

(declare-fun m!5560529 () Bool)

(assert (=> b!4668984 m!5560529))

(declare-fun m!5560531 () Bool)

(assert (=> b!4668983 m!5560531))

(assert (=> b!4668837 d!1484571))

(declare-fun d!1484573 () Bool)

(assert (=> d!1484573 (containsKey!2816 oldBucket!40 key!4968)))

(declare-fun lt!1830878 () Unit!120784)

(declare-fun choose!32275 (List!52126 K!13345 Hashable!6075) Unit!120784)

(assert (=> d!1484573 (= lt!1830878 (choose!32275 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1484573 (noDuplicateKeys!1678 oldBucket!40)))

(assert (=> d!1484573 (= (lemmaGetPairDefinedThenContainsKey!156 oldBucket!40 key!4968 hashF!1389) lt!1830878)))

(declare-fun bs!1077785 () Bool)

(assert (= bs!1077785 d!1484573))

(assert (=> bs!1077785 m!5560271))

(declare-fun m!5560533 () Bool)

(assert (=> bs!1077785 m!5560533))

(assert (=> bs!1077785 m!5560341))

(assert (=> b!4668837 d!1484573))

(declare-fun d!1484575 () Bool)

(declare-fun dynLambda!21637 (Int tuple2!53160) Bool)

(assert (=> d!1484575 (dynLambda!21637 lambda!202026 lt!1830712)))

(declare-fun lt!1830891 () Unit!120784)

(declare-fun choose!32276 (List!52127 Int tuple2!53160) Unit!120784)

(assert (=> d!1484575 (= lt!1830891 (choose!32276 lt!1830708 lambda!202026 lt!1830712))))

(declare-fun e!2913614 () Bool)

(assert (=> d!1484575 e!2913614))

(declare-fun res!1965102 () Bool)

(assert (=> d!1484575 (=> (not res!1965102) (not e!2913614))))

(assert (=> d!1484575 (= res!1965102 (forall!11098 lt!1830708 lambda!202026))))

(assert (=> d!1484575 (= (forallContained!3302 lt!1830708 lambda!202026 lt!1830712) lt!1830891)))

(declare-fun b!4668992 () Bool)

(assert (=> b!4668992 (= e!2913614 (contains!15206 lt!1830708 lt!1830712))))

(assert (= (and d!1484575 res!1965102) b!4668992))

(declare-fun b_lambda!176241 () Bool)

(assert (=> (not b_lambda!176241) (not d!1484575)))

(declare-fun m!5560535 () Bool)

(assert (=> d!1484575 m!5560535))

(declare-fun m!5560537 () Bool)

(assert (=> d!1484575 m!5560537))

(declare-fun m!5560539 () Bool)

(assert (=> d!1484575 m!5560539))

(assert (=> b!4668992 m!5560279))

(assert (=> b!4668837 d!1484575))

(declare-fun d!1484577 () Bool)

(assert (=> d!1484577 (= (isDefined!9179 (getPair!406 lt!1830703 key!4968)) (not (isEmpty!29054 (getPair!406 lt!1830703 key!4968))))))

(declare-fun bs!1077786 () Bool)

(assert (= bs!1077786 d!1484577))

(assert (=> bs!1077786 m!5560265))

(declare-fun m!5560541 () Bool)

(assert (=> bs!1077786 m!5560541))

(assert (=> b!4668837 d!1484577))

(declare-fun d!1484579 () Bool)

(declare-fun res!1965109 () Bool)

(declare-fun e!2913621 () Bool)

(assert (=> d!1484579 (=> res!1965109 e!2913621)))

(assert (=> d!1484579 (= res!1965109 (and ((_ is Cons!52002) (t!359260 oldBucket!40)) (= (_1!29873 (h!58176 (t!359260 oldBucket!40))) key!4968)))))

(assert (=> d!1484579 (= (containsKey!2816 (t!359260 oldBucket!40) key!4968) e!2913621)))

(declare-fun b!4668999 () Bool)

(declare-fun e!2913622 () Bool)

(assert (=> b!4668999 (= e!2913621 e!2913622)))

(declare-fun res!1965110 () Bool)

(assert (=> b!4668999 (=> (not res!1965110) (not e!2913622))))

(assert (=> b!4668999 (= res!1965110 ((_ is Cons!52002) (t!359260 oldBucket!40)))))

(declare-fun b!4669000 () Bool)

(assert (=> b!4669000 (= e!2913622 (containsKey!2816 (t!359260 (t!359260 oldBucket!40)) key!4968))))

(assert (= (and d!1484579 (not res!1965109)) b!4668999))

(assert (= (and b!4668999 res!1965110) b!4669000))

(declare-fun m!5560543 () Bool)

(assert (=> b!4669000 m!5560543))

(assert (=> b!4668837 d!1484579))

(declare-fun bs!1077799 () Bool)

(declare-fun d!1484581 () Bool)

(assert (= bs!1077799 (and d!1484581 b!4668837)))

(declare-fun lambda!202112 () Int)

(assert (=> bs!1077799 (= lambda!202112 lambda!202026)))

(declare-fun bs!1077800 () Bool)

(assert (= bs!1077800 (and d!1484581 d!1484553)))

(assert (=> bs!1077800 (= lambda!202112 lambda!202065)))

(declare-fun bs!1077801 () Bool)

(assert (= bs!1077801 (and d!1484581 d!1484559)))

(assert (=> bs!1077801 (= lambda!202112 lambda!202069)))

(declare-fun e!2913655 () Bool)

(declare-fun b!4669058 () Bool)

(assert (=> b!4669058 (= e!2913655 (isDefined!9179 (getPair!406 (apply!12281 lt!1830710 (hash!3845 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1830954 () Unit!120784)

(assert (=> b!4669058 (= lt!1830954 (forallContained!3302 (toList!5286 lt!1830710) lambda!202112 (tuple2!53161 (hash!3845 hashF!1389 key!4968) (apply!12281 lt!1830710 (hash!3845 hashF!1389 key!4968)))))))

(declare-fun lt!1830958 () Unit!120784)

(declare-fun lt!1830953 () Unit!120784)

(assert (=> b!4669058 (= lt!1830958 lt!1830953)))

(declare-fun lt!1830957 () (_ BitVec 64))

(declare-fun lt!1830955 () List!52126)

(assert (=> b!4669058 (contains!15206 (toList!5286 lt!1830710) (tuple2!53161 lt!1830957 lt!1830955))))

(assert (=> b!4669058 (= lt!1830953 (lemmaGetValueImpliesTupleContained!211 lt!1830710 lt!1830957 lt!1830955))))

(declare-fun e!2913656 () Bool)

(assert (=> b!4669058 e!2913656))

(declare-fun res!1965142 () Bool)

(assert (=> b!4669058 (=> (not res!1965142) (not e!2913656))))

(assert (=> b!4669058 (= res!1965142 (contains!15207 lt!1830710 lt!1830957))))

(assert (=> b!4669058 (= lt!1830955 (apply!12281 lt!1830710 (hash!3845 hashF!1389 key!4968)))))

(assert (=> b!4669058 (= lt!1830957 (hash!3845 hashF!1389 key!4968))))

(declare-fun lt!1830952 () Unit!120784)

(declare-fun lt!1830956 () Unit!120784)

(assert (=> b!4669058 (= lt!1830952 lt!1830956)))

(assert (=> b!4669058 (contains!15207 lt!1830710 (hash!3845 hashF!1389 key!4968))))

(assert (=> b!4669058 (= lt!1830956 (lemmaInGenMapThenLongMapContainsHash!612 lt!1830710 key!4968 hashF!1389))))

(declare-fun b!4669057 () Bool)

(declare-fun res!1965143 () Bool)

(assert (=> b!4669057 (=> (not res!1965143) (not e!2913655))))

(assert (=> b!4669057 (= res!1965143 (contains!15205 (extractMap!1734 (toList!5286 lt!1830710)) key!4968))))

(assert (=> d!1484581 e!2913655))

(declare-fun res!1965141 () Bool)

(assert (=> d!1484581 (=> (not res!1965141) (not e!2913655))))

(assert (=> d!1484581 (= res!1965141 (forall!11098 (toList!5286 lt!1830710) lambda!202112))))

(declare-fun lt!1830959 () Unit!120784)

(declare-fun choose!32277 (ListLongMap!3839 K!13345 Hashable!6075) Unit!120784)

(assert (=> d!1484581 (= lt!1830959 (choose!32277 lt!1830710 key!4968 hashF!1389))))

(assert (=> d!1484581 (forall!11098 (toList!5286 lt!1830710) lambda!202112)))

(assert (=> d!1484581 (= (lemmaInGenMapThenGetPairDefined!202 lt!1830710 key!4968 hashF!1389) lt!1830959)))

(declare-fun b!4669056 () Bool)

(declare-fun res!1965144 () Bool)

(assert (=> b!4669056 (=> (not res!1965144) (not e!2913655))))

(declare-fun allKeysSameHashInMap!1629 (ListLongMap!3839 Hashable!6075) Bool)

(assert (=> b!4669056 (= res!1965144 (allKeysSameHashInMap!1629 lt!1830710 hashF!1389))))

(declare-fun b!4669059 () Bool)

(assert (=> b!4669059 (= e!2913656 (= (getValueByKey!1669 (toList!5286 lt!1830710) lt!1830957) (Some!11916 lt!1830955)))))

(assert (= (and d!1484581 res!1965141) b!4669056))

(assert (= (and b!4669056 res!1965144) b!4669057))

(assert (= (and b!4669057 res!1965143) b!4669058))

(assert (= (and b!4669058 res!1965142) b!4669059))

(declare-fun m!5560609 () Bool)

(assert (=> b!4669059 m!5560609))

(declare-fun m!5560611 () Bool)

(assert (=> b!4669058 m!5560611))

(declare-fun m!5560613 () Bool)

(assert (=> b!4669058 m!5560613))

(declare-fun m!5560615 () Bool)

(assert (=> b!4669058 m!5560615))

(assert (=> b!4669058 m!5560303))

(assert (=> b!4669058 m!5560613))

(declare-fun m!5560617 () Bool)

(assert (=> b!4669058 m!5560617))

(declare-fun m!5560619 () Bool)

(assert (=> b!4669058 m!5560619))

(declare-fun m!5560621 () Bool)

(assert (=> b!4669058 m!5560621))

(assert (=> b!4669058 m!5560303))

(declare-fun m!5560623 () Bool)

(assert (=> b!4669058 m!5560623))

(declare-fun m!5560625 () Bool)

(assert (=> b!4669058 m!5560625))

(assert (=> b!4669058 m!5560303))

(assert (=> b!4669058 m!5560611))

(assert (=> b!4669058 m!5560269))

(declare-fun m!5560627 () Bool)

(assert (=> b!4669057 m!5560627))

(assert (=> b!4669057 m!5560627))

(declare-fun m!5560629 () Bool)

(assert (=> b!4669057 m!5560629))

(declare-fun m!5560631 () Bool)

(assert (=> d!1484581 m!5560631))

(declare-fun m!5560633 () Bool)

(assert (=> d!1484581 m!5560633))

(assert (=> d!1484581 m!5560631))

(declare-fun m!5560635 () Bool)

(assert (=> b!4669056 m!5560635))

(assert (=> b!4668837 d!1484581))

(declare-fun bs!1077802 () Bool)

(declare-fun d!1484599 () Bool)

(assert (= bs!1077802 (and d!1484599 b!4668837)))

(declare-fun lambda!202115 () Int)

(assert (=> bs!1077802 (= lambda!202115 lambda!202026)))

(declare-fun bs!1077803 () Bool)

(assert (= bs!1077803 (and d!1484599 d!1484553)))

(assert (=> bs!1077803 (= lambda!202115 lambda!202065)))

(declare-fun bs!1077804 () Bool)

(assert (= bs!1077804 (and d!1484599 d!1484559)))

(assert (=> bs!1077804 (= lambda!202115 lambda!202069)))

(declare-fun bs!1077805 () Bool)

(assert (= bs!1077805 (and d!1484599 d!1484581)))

(assert (=> bs!1077805 (= lambda!202115 lambda!202112)))

(assert (=> d!1484599 (contains!15207 lt!1830710 (hash!3845 hashF!1389 key!4968))))

(declare-fun lt!1830966 () Unit!120784)

(declare-fun choose!32279 (ListLongMap!3839 K!13345 Hashable!6075) Unit!120784)

(assert (=> d!1484599 (= lt!1830966 (choose!32279 lt!1830710 key!4968 hashF!1389))))

(assert (=> d!1484599 (forall!11098 (toList!5286 lt!1830710) lambda!202115)))

(assert (=> d!1484599 (= (lemmaInGenMapThenLongMapContainsHash!612 lt!1830710 key!4968 hashF!1389) lt!1830966)))

(declare-fun bs!1077806 () Bool)

(assert (= bs!1077806 d!1484599))

(assert (=> bs!1077806 m!5560303))

(assert (=> bs!1077806 m!5560303))

(assert (=> bs!1077806 m!5560623))

(declare-fun m!5560657 () Bool)

(assert (=> bs!1077806 m!5560657))

(declare-fun m!5560659 () Bool)

(assert (=> bs!1077806 m!5560659))

(assert (=> b!4668837 d!1484599))

(declare-fun d!1484607 () Bool)

(declare-fun res!1965162 () Bool)

(declare-fun e!2913673 () Bool)

(assert (=> d!1484607 (=> res!1965162 e!2913673)))

(assert (=> d!1484607 (= res!1965162 (and ((_ is Cons!52002) oldBucket!40) (= (_1!29873 (h!58176 oldBucket!40)) key!4968)))))

(assert (=> d!1484607 (= (containsKey!2816 oldBucket!40 key!4968) e!2913673)))

(declare-fun b!4669081 () Bool)

(declare-fun e!2913674 () Bool)

(assert (=> b!4669081 (= e!2913673 e!2913674)))

(declare-fun res!1965163 () Bool)

(assert (=> b!4669081 (=> (not res!1965163) (not e!2913674))))

(assert (=> b!4669081 (= res!1965163 ((_ is Cons!52002) oldBucket!40))))

(declare-fun b!4669082 () Bool)

(assert (=> b!4669082 (= e!2913674 (containsKey!2816 (t!359260 oldBucket!40) key!4968))))

(assert (= (and d!1484607 (not res!1965162)) b!4669081))

(assert (= (and b!4669081 res!1965163) b!4669082))

(assert (=> b!4669082 m!5560277))

(assert (=> b!4668837 d!1484607))

(declare-fun d!1484609 () Bool)

(assert (=> d!1484609 (contains!15206 (toList!5286 lt!1830710) (tuple2!53161 lt!1830694 lt!1830703))))

(declare-fun lt!1830971 () Unit!120784)

(declare-fun choose!32280 (ListLongMap!3839 (_ BitVec 64) List!52126) Unit!120784)

(assert (=> d!1484609 (= lt!1830971 (choose!32280 lt!1830710 lt!1830694 lt!1830703))))

(assert (=> d!1484609 (contains!15207 lt!1830710 lt!1830694)))

(assert (=> d!1484609 (= (lemmaGetValueImpliesTupleContained!211 lt!1830710 lt!1830694 lt!1830703) lt!1830971)))

(declare-fun bs!1077807 () Bool)

(assert (= bs!1077807 d!1484609))

(declare-fun m!5560661 () Bool)

(assert (=> bs!1077807 m!5560661))

(declare-fun m!5560663 () Bool)

(assert (=> bs!1077807 m!5560663))

(assert (=> bs!1077807 m!5560281))

(assert (=> b!4668837 d!1484609))

(declare-fun d!1484611 () Bool)

(declare-fun get!17344 (Option!11917) List!52126)

(assert (=> d!1484611 (= (apply!12281 lt!1830710 lt!1830694) (get!17344 (getValueByKey!1669 (toList!5286 lt!1830710) lt!1830694)))))

(declare-fun bs!1077813 () Bool)

(assert (= bs!1077813 d!1484611))

(assert (=> bs!1077813 m!5560515))

(assert (=> bs!1077813 m!5560515))

(declare-fun m!5560671 () Bool)

(assert (=> bs!1077813 m!5560671))

(assert (=> b!4668837 d!1484611))

(declare-fun d!1484615 () Bool)

(declare-fun hash!3849 (Hashable!6075 K!13345) (_ BitVec 64))

(assert (=> d!1484615 (= (hash!3845 hashF!1389 key!4968) (hash!3849 hashF!1389 key!4968))))

(declare-fun bs!1077814 () Bool)

(assert (= bs!1077814 d!1484615))

(declare-fun m!5560673 () Bool)

(assert (=> bs!1077814 m!5560673))

(assert (=> b!4668827 d!1484615))

(declare-fun d!1484617 () Bool)

(declare-fun content!9059 (List!52126) (InoxSet tuple2!53158))

(assert (=> d!1484617 (= (eq!933 lt!1830713 lt!1830696) (= (content!9059 (toList!5285 lt!1830713)) (content!9059 (toList!5285 lt!1830696))))))

(declare-fun bs!1077815 () Bool)

(assert (= bs!1077815 d!1484617))

(declare-fun m!5560675 () Bool)

(assert (=> bs!1077815 m!5560675))

(declare-fun m!5560677 () Bool)

(assert (=> bs!1077815 m!5560677))

(assert (=> b!4668838 d!1484617))

(declare-fun d!1484619 () Bool)

(assert (=> d!1484619 (= (-!618 (+!2018 lt!1830707 (tuple2!53159 (_1!29873 (h!58176 oldBucket!40)) (_2!29873 (h!58176 oldBucket!40)))) key!4968) (+!2018 (-!618 lt!1830707 key!4968) (tuple2!53159 (_1!29873 (h!58176 oldBucket!40)) (_2!29873 (h!58176 oldBucket!40)))))))

(declare-fun lt!1830975 () Unit!120784)

(declare-fun choose!32281 (ListMap!4625 K!13345 V!13591 K!13345) Unit!120784)

(assert (=> d!1484619 (= lt!1830975 (choose!32281 lt!1830707 (_1!29873 (h!58176 oldBucket!40)) (_2!29873 (h!58176 oldBucket!40)) key!4968))))

(assert (=> d!1484619 (not (= (_1!29873 (h!58176 oldBucket!40)) key!4968))))

(assert (=> d!1484619 (= (addRemoveCommutativeForDiffKeys!61 lt!1830707 (_1!29873 (h!58176 oldBucket!40)) (_2!29873 (h!58176 oldBucket!40)) key!4968) lt!1830975)))

(declare-fun bs!1077816 () Bool)

(assert (= bs!1077816 d!1484619))

(declare-fun m!5560679 () Bool)

(assert (=> bs!1077816 m!5560679))

(assert (=> bs!1077816 m!5560349))

(declare-fun m!5560681 () Bool)

(assert (=> bs!1077816 m!5560681))

(assert (=> bs!1077816 m!5560349))

(declare-fun m!5560683 () Bool)

(assert (=> bs!1077816 m!5560683))

(assert (=> bs!1077816 m!5560679))

(declare-fun m!5560685 () Bool)

(assert (=> bs!1077816 m!5560685))

(assert (=> b!4668828 d!1484619))

(declare-fun d!1484621 () Bool)

(declare-fun e!2913677 () Bool)

(assert (=> d!1484621 e!2913677))

(declare-fun res!1965166 () Bool)

(assert (=> d!1484621 (=> (not res!1965166) (not e!2913677))))

(declare-fun lt!1830978 () ListMap!4625)

(assert (=> d!1484621 (= res!1965166 (not (contains!15205 lt!1830978 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!306 (List!52126 K!13345) List!52126)

(assert (=> d!1484621 (= lt!1830978 (ListMap!4626 (removePresrvNoDuplicatedKeys!306 (toList!5285 lt!1830707) key!4968)))))

(assert (=> d!1484621 (= (-!618 lt!1830707 key!4968) lt!1830978)))

(declare-fun b!4669086 () Bool)

(declare-fun content!9060 (List!52128) (InoxSet K!13345))

(assert (=> b!4669086 (= e!2913677 (= ((_ map and) (content!9060 (keys!18455 lt!1830707)) ((_ map not) (store ((as const (Array K!13345 Bool)) false) key!4968 true))) (content!9060 (keys!18455 lt!1830978))))))

(assert (= (and d!1484621 res!1965166) b!4669086))

(declare-fun m!5560687 () Bool)

(assert (=> d!1484621 m!5560687))

(declare-fun m!5560689 () Bool)

(assert (=> d!1484621 m!5560689))

(declare-fun m!5560691 () Bool)

(assert (=> b!4669086 m!5560691))

(declare-fun m!5560693 () Bool)

(assert (=> b!4669086 m!5560693))

(declare-fun m!5560695 () Bool)

(assert (=> b!4669086 m!5560695))

(assert (=> b!4669086 m!5560695))

(declare-fun m!5560697 () Bool)

(assert (=> b!4669086 m!5560697))

(assert (=> b!4669086 m!5560693))

(declare-fun m!5560699 () Bool)

(assert (=> b!4669086 m!5560699))

(assert (=> b!4668828 d!1484621))

(declare-fun d!1484623 () Bool)

(assert (=> d!1484623 (= (eq!933 lt!1830691 lt!1830705) (= (content!9059 (toList!5285 lt!1830691)) (content!9059 (toList!5285 lt!1830705))))))

(declare-fun bs!1077817 () Bool)

(assert (= bs!1077817 d!1484623))

(declare-fun m!5560701 () Bool)

(assert (=> bs!1077817 m!5560701))

(declare-fun m!5560703 () Bool)

(assert (=> bs!1077817 m!5560703))

(assert (=> b!4668828 d!1484623))

(declare-fun d!1484625 () Bool)

(declare-fun e!2913680 () Bool)

(assert (=> d!1484625 e!2913680))

(declare-fun res!1965172 () Bool)

(assert (=> d!1484625 (=> (not res!1965172) (not e!2913680))))

(declare-fun lt!1830990 () ListMap!4625)

(assert (=> d!1484625 (= res!1965172 (contains!15205 lt!1830990 (_1!29873 (h!58176 oldBucket!40))))))

(declare-fun lt!1830989 () List!52126)

(assert (=> d!1484625 (= lt!1830990 (ListMap!4626 lt!1830989))))

(declare-fun lt!1830987 () Unit!120784)

(declare-fun lt!1830988 () Unit!120784)

(assert (=> d!1484625 (= lt!1830987 lt!1830988)))

(assert (=> d!1484625 (= (getValueByKey!1667 lt!1830989 (_1!29873 (h!58176 oldBucket!40))) (Some!11914 (_2!29873 (h!58176 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!946 (List!52126 K!13345 V!13591) Unit!120784)

(assert (=> d!1484625 (= lt!1830988 (lemmaContainsTupThenGetReturnValue!946 lt!1830989 (_1!29873 (h!58176 oldBucket!40)) (_2!29873 (h!58176 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!454 (List!52126 K!13345 V!13591) List!52126)

(assert (=> d!1484625 (= lt!1830989 (insertNoDuplicatedKeys!454 (toList!5285 lt!1830705) (_1!29873 (h!58176 oldBucket!40)) (_2!29873 (h!58176 oldBucket!40))))))

(assert (=> d!1484625 (= (+!2018 lt!1830705 (h!58176 oldBucket!40)) lt!1830990)))

(declare-fun b!4669091 () Bool)

(declare-fun res!1965171 () Bool)

(assert (=> b!4669091 (=> (not res!1965171) (not e!2913680))))

(assert (=> b!4669091 (= res!1965171 (= (getValueByKey!1667 (toList!5285 lt!1830990) (_1!29873 (h!58176 oldBucket!40))) (Some!11914 (_2!29873 (h!58176 oldBucket!40)))))))

(declare-fun b!4669092 () Bool)

(assert (=> b!4669092 (= e!2913680 (contains!15210 (toList!5285 lt!1830990) (h!58176 oldBucket!40)))))

(assert (= (and d!1484625 res!1965172) b!4669091))

(assert (= (and b!4669091 res!1965171) b!4669092))

(declare-fun m!5560705 () Bool)

(assert (=> d!1484625 m!5560705))

(declare-fun m!5560707 () Bool)

(assert (=> d!1484625 m!5560707))

(declare-fun m!5560709 () Bool)

(assert (=> d!1484625 m!5560709))

(declare-fun m!5560711 () Bool)

(assert (=> d!1484625 m!5560711))

(declare-fun m!5560713 () Bool)

(assert (=> b!4669091 m!5560713))

(declare-fun m!5560715 () Bool)

(assert (=> b!4669092 m!5560715))

(assert (=> b!4668828 d!1484625))

(declare-fun d!1484627 () Bool)

(assert (=> d!1484627 (eq!933 (extractMap!1734 (Cons!52003 (tuple2!53161 hash!414 lt!1830688) Nil!52003)) (-!618 (extractMap!1734 (Cons!52003 (tuple2!53161 hash!414 (t!359260 oldBucket!40)) Nil!52003)) key!4968))))

(declare-fun lt!1831017 () Unit!120784)

(declare-fun choose!32284 ((_ BitVec 64) List!52126 List!52126 K!13345 Hashable!6075) Unit!120784)

(assert (=> d!1484627 (= lt!1831017 (choose!32284 hash!414 (t!359260 oldBucket!40) lt!1830688 key!4968 hashF!1389))))

(assert (=> d!1484627 (noDuplicateKeys!1678 (t!359260 oldBucket!40))))

(assert (=> d!1484627 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!168 hash!414 (t!359260 oldBucket!40) lt!1830688 key!4968 hashF!1389) lt!1831017)))

(declare-fun bs!1077823 () Bool)

(assert (= bs!1077823 d!1484627))

(assert (=> bs!1077823 m!5560297))

(declare-fun m!5560743 () Bool)

(assert (=> bs!1077823 m!5560743))

(declare-fun m!5560745 () Bool)

(assert (=> bs!1077823 m!5560745))

(assert (=> bs!1077823 m!5560379))

(declare-fun m!5560747 () Bool)

(assert (=> bs!1077823 m!5560747))

(declare-fun m!5560749 () Bool)

(assert (=> bs!1077823 m!5560749))

(assert (=> bs!1077823 m!5560297))

(assert (=> bs!1077823 m!5560747))

(assert (=> bs!1077823 m!5560743))

(assert (=> b!4668828 d!1484627))

(declare-fun d!1484631 () Bool)

(declare-fun e!2913687 () Bool)

(assert (=> d!1484631 e!2913687))

(declare-fun res!1965186 () Bool)

(assert (=> d!1484631 (=> (not res!1965186) (not e!2913687))))

(declare-fun lt!1831024 () ListMap!4625)

(assert (=> d!1484631 (= res!1965186 (contains!15205 lt!1831024 (_1!29873 (h!58176 oldBucket!40))))))

(declare-fun lt!1831023 () List!52126)

(assert (=> d!1484631 (= lt!1831024 (ListMap!4626 lt!1831023))))

(declare-fun lt!1831021 () Unit!120784)

(declare-fun lt!1831022 () Unit!120784)

(assert (=> d!1484631 (= lt!1831021 lt!1831022)))

(assert (=> d!1484631 (= (getValueByKey!1667 lt!1831023 (_1!29873 (h!58176 oldBucket!40))) (Some!11914 (_2!29873 (h!58176 oldBucket!40))))))

(assert (=> d!1484631 (= lt!1831022 (lemmaContainsTupThenGetReturnValue!946 lt!1831023 (_1!29873 (h!58176 oldBucket!40)) (_2!29873 (h!58176 oldBucket!40))))))

(assert (=> d!1484631 (= lt!1831023 (insertNoDuplicatedKeys!454 (toList!5285 lt!1830707) (_1!29873 (h!58176 oldBucket!40)) (_2!29873 (h!58176 oldBucket!40))))))

(assert (=> d!1484631 (= (+!2018 lt!1830707 (h!58176 oldBucket!40)) lt!1831024)))

(declare-fun b!4669105 () Bool)

(declare-fun res!1965185 () Bool)

(assert (=> b!4669105 (=> (not res!1965185) (not e!2913687))))

(assert (=> b!4669105 (= res!1965185 (= (getValueByKey!1667 (toList!5285 lt!1831024) (_1!29873 (h!58176 oldBucket!40))) (Some!11914 (_2!29873 (h!58176 oldBucket!40)))))))

(declare-fun b!4669106 () Bool)

(assert (=> b!4669106 (= e!2913687 (contains!15210 (toList!5285 lt!1831024) (h!58176 oldBucket!40)))))

(assert (= (and d!1484631 res!1965186) b!4669105))

(assert (= (and b!4669105 res!1965185) b!4669106))

(declare-fun m!5560753 () Bool)

(assert (=> d!1484631 m!5560753))

(declare-fun m!5560755 () Bool)

(assert (=> d!1484631 m!5560755))

(declare-fun m!5560757 () Bool)

(assert (=> d!1484631 m!5560757))

(declare-fun m!5560759 () Bool)

(assert (=> d!1484631 m!5560759))

(declare-fun m!5560761 () Bool)

(assert (=> b!4669105 m!5560761))

(declare-fun m!5560763 () Bool)

(assert (=> b!4669106 m!5560763))

(assert (=> b!4668828 d!1484631))

(declare-fun d!1484635 () Bool)

(declare-fun e!2913688 () Bool)

(assert (=> d!1484635 e!2913688))

(declare-fun res!1965187 () Bool)

(assert (=> d!1484635 (=> (not res!1965187) (not e!2913688))))

(declare-fun lt!1831025 () ListMap!4625)

(assert (=> d!1484635 (= res!1965187 (not (contains!15205 lt!1831025 key!4968)))))

(assert (=> d!1484635 (= lt!1831025 (ListMap!4626 (removePresrvNoDuplicatedKeys!306 (toList!5285 (+!2018 lt!1830707 (h!58176 oldBucket!40))) key!4968)))))

(assert (=> d!1484635 (= (-!618 (+!2018 lt!1830707 (h!58176 oldBucket!40)) key!4968) lt!1831025)))

(declare-fun b!4669107 () Bool)

(assert (=> b!4669107 (= e!2913688 (= ((_ map and) (content!9060 (keys!18455 (+!2018 lt!1830707 (h!58176 oldBucket!40)))) ((_ map not) (store ((as const (Array K!13345 Bool)) false) key!4968 true))) (content!9060 (keys!18455 lt!1831025))))))

(assert (= (and d!1484635 res!1965187) b!4669107))

(declare-fun m!5560765 () Bool)

(assert (=> d!1484635 m!5560765))

(declare-fun m!5560767 () Bool)

(assert (=> d!1484635 m!5560767))

(assert (=> b!4669107 m!5560691))

(assert (=> b!4669107 m!5560355))

(declare-fun m!5560769 () Bool)

(assert (=> b!4669107 m!5560769))

(declare-fun m!5560771 () Bool)

(assert (=> b!4669107 m!5560771))

(assert (=> b!4669107 m!5560771))

(declare-fun m!5560773 () Bool)

(assert (=> b!4669107 m!5560773))

(assert (=> b!4669107 m!5560769))

(declare-fun m!5560777 () Bool)

(assert (=> b!4669107 m!5560777))

(assert (=> b!4668828 d!1484635))

(declare-fun d!1484637 () Bool)

(declare-fun e!2913689 () Bool)

(assert (=> d!1484637 e!2913689))

(declare-fun res!1965188 () Bool)

(assert (=> d!1484637 (=> (not res!1965188) (not e!2913689))))

(declare-fun lt!1831026 () ListMap!4625)

(assert (=> d!1484637 (= res!1965188 (not (contains!15205 lt!1831026 key!4968)))))

(assert (=> d!1484637 (= lt!1831026 (ListMap!4626 (removePresrvNoDuplicatedKeys!306 (toList!5285 lt!1830713) key!4968)))))

(assert (=> d!1484637 (= (-!618 lt!1830713 key!4968) lt!1831026)))

(declare-fun b!4669108 () Bool)

(assert (=> b!4669108 (= e!2913689 (= ((_ map and) (content!9060 (keys!18455 lt!1830713)) ((_ map not) (store ((as const (Array K!13345 Bool)) false) key!4968 true))) (content!9060 (keys!18455 lt!1831026))))))

(assert (= (and d!1484637 res!1965188) b!4669108))

(declare-fun m!5560779 () Bool)

(assert (=> d!1484637 m!5560779))

(declare-fun m!5560781 () Bool)

(assert (=> d!1484637 m!5560781))

(assert (=> b!4669108 m!5560691))

(declare-fun m!5560783 () Bool)

(assert (=> b!4669108 m!5560783))

(declare-fun m!5560785 () Bool)

(assert (=> b!4669108 m!5560785))

(assert (=> b!4669108 m!5560785))

(declare-fun m!5560787 () Bool)

(assert (=> b!4669108 m!5560787))

(assert (=> b!4669108 m!5560783))

(declare-fun m!5560789 () Bool)

(assert (=> b!4669108 m!5560789))

(assert (=> b!4668828 d!1484637))

(declare-fun d!1484641 () Bool)

(declare-fun res!1965193 () Bool)

(declare-fun e!2913695 () Bool)

(assert (=> d!1484641 (=> res!1965193 e!2913695)))

(assert (=> d!1484641 (= res!1965193 (not ((_ is Cons!52002) oldBucket!40)))))

(assert (=> d!1484641 (= (noDuplicateKeys!1678 oldBucket!40) e!2913695)))

(declare-fun b!4669115 () Bool)

(declare-fun e!2913696 () Bool)

(assert (=> b!4669115 (= e!2913695 e!2913696)))

(declare-fun res!1965194 () Bool)

(assert (=> b!4669115 (=> (not res!1965194) (not e!2913696))))

(assert (=> b!4669115 (= res!1965194 (not (containsKey!2816 (t!359260 oldBucket!40) (_1!29873 (h!58176 oldBucket!40)))))))

(declare-fun b!4669116 () Bool)

(assert (=> b!4669116 (= e!2913696 (noDuplicateKeys!1678 (t!359260 oldBucket!40)))))

(assert (= (and d!1484641 (not res!1965193)) b!4669115))

(assert (= (and b!4669115 res!1965194) b!4669116))

(declare-fun m!5560799 () Bool)

(assert (=> b!4669115 m!5560799))

(assert (=> b!4669116 m!5560379))

(assert (=> start!470744 d!1484641))

(declare-fun bs!1077832 () Bool)

(declare-fun b!4669117 () Bool)

(assert (= bs!1077832 (and b!4669117 b!4668901)))

(declare-fun lambda!202127 () Int)

(assert (=> bs!1077832 (= (= (ListMap!4626 Nil!52002) lt!1830702) (= lambda!202127 lambda!202060))))

(declare-fun bs!1077833 () Bool)

(assert (= bs!1077833 (and b!4669117 b!4668897)))

(assert (=> bs!1077833 (= (= (ListMap!4626 Nil!52002) lt!1830702) (= lambda!202127 lambda!202059))))

(declare-fun bs!1077834 () Bool)

(assert (= bs!1077834 (and b!4669117 d!1484555)))

(assert (=> bs!1077834 (not (= lambda!202127 lambda!202068))))

(declare-fun bs!1077835 () Bool)

(assert (= bs!1077835 (and b!4669117 d!1484529)))

(assert (=> bs!1077835 (= (= (ListMap!4626 Nil!52002) lt!1830796) (= lambda!202127 lambda!202062))))

(assert (=> bs!1077832 (= (= (ListMap!4626 Nil!52002) lt!1830798) (= lambda!202127 lambda!202061))))

(assert (=> b!4669117 true))

(declare-fun bs!1077836 () Bool)

(declare-fun b!4669121 () Bool)

(assert (= bs!1077836 (and b!4669121 b!4668901)))

(declare-fun lambda!202128 () Int)

(assert (=> bs!1077836 (= (= (ListMap!4626 Nil!52002) lt!1830702) (= lambda!202128 lambda!202060))))

(declare-fun bs!1077837 () Bool)

(assert (= bs!1077837 (and b!4669121 b!4668897)))

(assert (=> bs!1077837 (= (= (ListMap!4626 Nil!52002) lt!1830702) (= lambda!202128 lambda!202059))))

(declare-fun bs!1077838 () Bool)

(assert (= bs!1077838 (and b!4669121 d!1484529)))

(assert (=> bs!1077838 (= (= (ListMap!4626 Nil!52002) lt!1830796) (= lambda!202128 lambda!202062))))

(assert (=> bs!1077836 (= (= (ListMap!4626 Nil!52002) lt!1830798) (= lambda!202128 lambda!202061))))

(declare-fun bs!1077839 () Bool)

(assert (= bs!1077839 (and b!4669121 b!4669117)))

(assert (=> bs!1077839 (= lambda!202128 lambda!202127)))

(declare-fun bs!1077840 () Bool)

(assert (= bs!1077840 (and b!4669121 d!1484555)))

(assert (=> bs!1077840 (not (= lambda!202128 lambda!202068))))

(assert (=> b!4669121 true))

(declare-fun lambda!202129 () Int)

(declare-fun lt!1831048 () ListMap!4625)

(assert (=> bs!1077836 (= (= lt!1831048 lt!1830702) (= lambda!202129 lambda!202060))))

(assert (=> bs!1077837 (= (= lt!1831048 lt!1830702) (= lambda!202129 lambda!202059))))

(assert (=> bs!1077838 (= (= lt!1831048 lt!1830796) (= lambda!202129 lambda!202062))))

(assert (=> bs!1077836 (= (= lt!1831048 lt!1830798) (= lambda!202129 lambda!202061))))

(assert (=> b!4669121 (= (= lt!1831048 (ListMap!4626 Nil!52002)) (= lambda!202129 lambda!202128))))

(assert (=> bs!1077839 (= (= lt!1831048 (ListMap!4626 Nil!52002)) (= lambda!202129 lambda!202127))))

(assert (=> bs!1077840 (not (= lambda!202129 lambda!202068))))

(assert (=> b!4669121 true))

(declare-fun bs!1077841 () Bool)

(declare-fun d!1484645 () Bool)

(assert (= bs!1077841 (and d!1484645 b!4669121)))

(declare-fun lambda!202130 () Int)

(declare-fun lt!1831046 () ListMap!4625)

(assert (=> bs!1077841 (= (= lt!1831046 lt!1831048) (= lambda!202130 lambda!202129))))

(declare-fun bs!1077842 () Bool)

(assert (= bs!1077842 (and d!1484645 b!4668901)))

(assert (=> bs!1077842 (= (= lt!1831046 lt!1830702) (= lambda!202130 lambda!202060))))

(declare-fun bs!1077843 () Bool)

(assert (= bs!1077843 (and d!1484645 b!4668897)))

(assert (=> bs!1077843 (= (= lt!1831046 lt!1830702) (= lambda!202130 lambda!202059))))

(declare-fun bs!1077844 () Bool)

(assert (= bs!1077844 (and d!1484645 d!1484529)))

(assert (=> bs!1077844 (= (= lt!1831046 lt!1830796) (= lambda!202130 lambda!202062))))

(assert (=> bs!1077842 (= (= lt!1831046 lt!1830798) (= lambda!202130 lambda!202061))))

(assert (=> bs!1077841 (= (= lt!1831046 (ListMap!4626 Nil!52002)) (= lambda!202130 lambda!202128))))

(declare-fun bs!1077845 () Bool)

(assert (= bs!1077845 (and d!1484645 b!4669117)))

(assert (=> bs!1077845 (= (= lt!1831046 (ListMap!4626 Nil!52002)) (= lambda!202130 lambda!202127))))

(declare-fun bs!1077846 () Bool)

(assert (= bs!1077846 (and d!1484645 d!1484555)))

(assert (=> bs!1077846 (not (= lambda!202130 lambda!202068))))

(assert (=> d!1484645 true))

(declare-fun c!799404 () Bool)

(declare-fun call!326341 () Bool)

(declare-fun bm!326336 () Bool)

(assert (=> bm!326336 (= call!326341 (forall!11097 (ite c!799404 (toList!5285 (ListMap!4626 Nil!52002)) (t!359260 lt!1830706)) (ite c!799404 lambda!202127 lambda!202129)))))

(declare-fun e!2913698 () ListMap!4625)

(assert (=> b!4669117 (= e!2913698 (ListMap!4626 Nil!52002))))

(declare-fun lt!1831040 () Unit!120784)

(declare-fun call!326343 () Unit!120784)

(assert (=> b!4669117 (= lt!1831040 call!326343)))

(declare-fun call!326342 () Bool)

(assert (=> b!4669117 call!326342))

(declare-fun lt!1831036 () Unit!120784)

(assert (=> b!4669117 (= lt!1831036 lt!1831040)))

(assert (=> b!4669117 call!326341))

(declare-fun lt!1831047 () Unit!120784)

(declare-fun Unit!120821 () Unit!120784)

(assert (=> b!4669117 (= lt!1831047 Unit!120821)))

(declare-fun bm!326337 () Bool)

(assert (=> bm!326337 (= call!326342 (forall!11097 (ite c!799404 (toList!5285 (ListMap!4626 Nil!52002)) lt!1830706) (ite c!799404 lambda!202127 lambda!202129)))))

(declare-fun b!4669118 () Bool)

(declare-fun e!2913699 () Bool)

(assert (=> b!4669118 (= e!2913699 (invariantList!1327 (toList!5285 lt!1831046)))))

(assert (=> d!1484645 e!2913699))

(declare-fun res!1965196 () Bool)

(assert (=> d!1484645 (=> (not res!1965196) (not e!2913699))))

(assert (=> d!1484645 (= res!1965196 (forall!11097 lt!1830706 lambda!202130))))

(assert (=> d!1484645 (= lt!1831046 e!2913698)))

(assert (=> d!1484645 (= c!799404 ((_ is Nil!52002) lt!1830706))))

(assert (=> d!1484645 (noDuplicateKeys!1678 lt!1830706)))

(assert (=> d!1484645 (= (addToMapMapFromBucket!1135 lt!1830706 (ListMap!4626 Nil!52002)) lt!1831046)))

(declare-fun b!4669119 () Bool)

(declare-fun res!1965197 () Bool)

(assert (=> b!4669119 (=> (not res!1965197) (not e!2913699))))

(assert (=> b!4669119 (= res!1965197 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202130))))

(declare-fun b!4669120 () Bool)

(declare-fun e!2913697 () Bool)

(assert (=> b!4669120 (= e!2913697 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202129))))

(assert (=> b!4669121 (= e!2913698 lt!1831048)))

(declare-fun lt!1831045 () ListMap!4625)

(assert (=> b!4669121 (= lt!1831045 (+!2018 (ListMap!4626 Nil!52002) (h!58176 lt!1830706)))))

(assert (=> b!4669121 (= lt!1831048 (addToMapMapFromBucket!1135 (t!359260 lt!1830706) (+!2018 (ListMap!4626 Nil!52002) (h!58176 lt!1830706))))))

(declare-fun lt!1831034 () Unit!120784)

(assert (=> b!4669121 (= lt!1831034 call!326343)))

(assert (=> b!4669121 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202128)))

(declare-fun lt!1831032 () Unit!120784)

(assert (=> b!4669121 (= lt!1831032 lt!1831034)))

(assert (=> b!4669121 (forall!11097 (toList!5285 lt!1831045) lambda!202129)))

(declare-fun lt!1831039 () Unit!120784)

(declare-fun Unit!120824 () Unit!120784)

(assert (=> b!4669121 (= lt!1831039 Unit!120824)))

(assert (=> b!4669121 call!326341))

(declare-fun lt!1831038 () Unit!120784)

(declare-fun Unit!120825 () Unit!120784)

(assert (=> b!4669121 (= lt!1831038 Unit!120825)))

(declare-fun lt!1831033 () Unit!120784)

(declare-fun Unit!120826 () Unit!120784)

(assert (=> b!4669121 (= lt!1831033 Unit!120826)))

(declare-fun lt!1831042 () Unit!120784)

(assert (=> b!4669121 (= lt!1831042 (forallContained!3303 (toList!5285 lt!1831045) lambda!202129 (h!58176 lt!1830706)))))

(assert (=> b!4669121 (contains!15205 lt!1831045 (_1!29873 (h!58176 lt!1830706)))))

(declare-fun lt!1831037 () Unit!120784)

(declare-fun Unit!120827 () Unit!120784)

(assert (=> b!4669121 (= lt!1831037 Unit!120827)))

(assert (=> b!4669121 (contains!15205 lt!1831048 (_1!29873 (h!58176 lt!1830706)))))

(declare-fun lt!1831029 () Unit!120784)

(declare-fun Unit!120828 () Unit!120784)

(assert (=> b!4669121 (= lt!1831029 Unit!120828)))

(assert (=> b!4669121 call!326342))

(declare-fun lt!1831043 () Unit!120784)

(declare-fun Unit!120829 () Unit!120784)

(assert (=> b!4669121 (= lt!1831043 Unit!120829)))

(assert (=> b!4669121 (forall!11097 (toList!5285 lt!1831045) lambda!202129)))

(declare-fun lt!1831035 () Unit!120784)

(declare-fun Unit!120830 () Unit!120784)

(assert (=> b!4669121 (= lt!1831035 Unit!120830)))

(declare-fun lt!1831041 () Unit!120784)

(declare-fun Unit!120831 () Unit!120784)

(assert (=> b!4669121 (= lt!1831041 Unit!120831)))

(declare-fun lt!1831028 () Unit!120784)

(assert (=> b!4669121 (= lt!1831028 (addForallContainsKeyThenBeforeAdding!626 (ListMap!4626 Nil!52002) lt!1831048 (_1!29873 (h!58176 lt!1830706)) (_2!29873 (h!58176 lt!1830706))))))

(assert (=> b!4669121 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202129)))

(declare-fun lt!1831044 () Unit!120784)

(assert (=> b!4669121 (= lt!1831044 lt!1831028)))

(assert (=> b!4669121 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202129)))

(declare-fun lt!1831031 () Unit!120784)

(declare-fun Unit!120832 () Unit!120784)

(assert (=> b!4669121 (= lt!1831031 Unit!120832)))

(declare-fun res!1965195 () Bool)

(assert (=> b!4669121 (= res!1965195 (forall!11097 lt!1830706 lambda!202129))))

(assert (=> b!4669121 (=> (not res!1965195) (not e!2913697))))

(assert (=> b!4669121 e!2913697))

(declare-fun lt!1831030 () Unit!120784)

(declare-fun Unit!120833 () Unit!120784)

(assert (=> b!4669121 (= lt!1831030 Unit!120833)))

(declare-fun bm!326338 () Bool)

(assert (=> bm!326338 (= call!326343 (lemmaContainsAllItsOwnKeys!627 (ListMap!4626 Nil!52002)))))

(assert (= (and d!1484645 c!799404) b!4669117))

(assert (= (and d!1484645 (not c!799404)) b!4669121))

(assert (= (and b!4669121 res!1965195) b!4669120))

(assert (= (or b!4669117 b!4669121) bm!326338))

(assert (= (or b!4669117 b!4669121) bm!326337))

(assert (= (or b!4669117 b!4669121) bm!326336))

(assert (= (and d!1484645 res!1965196) b!4669119))

(assert (= (and b!4669119 res!1965197) b!4669118))

(declare-fun m!5560801 () Bool)

(assert (=> b!4669120 m!5560801))

(declare-fun m!5560803 () Bool)

(assert (=> bm!326336 m!5560803))

(declare-fun m!5560805 () Bool)

(assert (=> b!4669119 m!5560805))

(declare-fun m!5560807 () Bool)

(assert (=> b!4669121 m!5560807))

(declare-fun m!5560809 () Bool)

(assert (=> b!4669121 m!5560809))

(declare-fun m!5560811 () Bool)

(assert (=> b!4669121 m!5560811))

(declare-fun m!5560813 () Bool)

(assert (=> b!4669121 m!5560813))

(declare-fun m!5560815 () Bool)

(assert (=> b!4669121 m!5560815))

(assert (=> b!4669121 m!5560807))

(declare-fun m!5560817 () Bool)

(assert (=> b!4669121 m!5560817))

(assert (=> b!4669121 m!5560801))

(declare-fun m!5560819 () Bool)

(assert (=> b!4669121 m!5560819))

(assert (=> b!4669121 m!5560811))

(declare-fun m!5560821 () Bool)

(assert (=> b!4669121 m!5560821))

(assert (=> b!4669121 m!5560801))

(declare-fun m!5560823 () Bool)

(assert (=> b!4669121 m!5560823))

(declare-fun m!5560825 () Bool)

(assert (=> b!4669118 m!5560825))

(declare-fun m!5560827 () Bool)

(assert (=> bm!326337 m!5560827))

(declare-fun m!5560829 () Bool)

(assert (=> d!1484645 m!5560829))

(assert (=> d!1484645 m!5560503))

(declare-fun m!5560831 () Bool)

(assert (=> bm!326338 m!5560831))

(assert (=> b!4668839 d!1484645))

(declare-fun d!1484647 () Bool)

(assert (=> d!1484647 (= (head!9756 oldBucket!40) (h!58176 oldBucket!40))))

(assert (=> b!4668839 d!1484647))

(declare-fun d!1484649 () Bool)

(assert (=> d!1484649 (= (head!9756 newBucket!224) (h!58176 newBucket!224))))

(assert (=> b!4668839 d!1484649))

(declare-fun b!4669122 () Bool)

(declare-fun e!2913702 () Bool)

(assert (=> b!4669122 (= e!2913702 (not (contains!15208 (keys!18455 lt!1830707) key!4968)))))

(declare-fun b!4669123 () Bool)

(assert (=> b!4669123 false))

(declare-fun lt!1831049 () Unit!120784)

(declare-fun lt!1831056 () Unit!120784)

(assert (=> b!4669123 (= lt!1831049 lt!1831056)))

(assert (=> b!4669123 (containsKey!2817 (toList!5285 lt!1830707) key!4968)))

(assert (=> b!4669123 (= lt!1831056 (lemmaInGetKeysListThenContainsKey!777 (toList!5285 lt!1830707) key!4968))))

(declare-fun e!2913703 () Unit!120784)

(declare-fun Unit!120834 () Unit!120784)

(assert (=> b!4669123 (= e!2913703 Unit!120834)))

(declare-fun d!1484651 () Bool)

(declare-fun e!2913701 () Bool)

(assert (=> d!1484651 e!2913701))

(declare-fun res!1965200 () Bool)

(assert (=> d!1484651 (=> res!1965200 e!2913701)))

(assert (=> d!1484651 (= res!1965200 e!2913702)))

(declare-fun res!1965199 () Bool)

(assert (=> d!1484651 (=> (not res!1965199) (not e!2913702))))

(declare-fun lt!1831054 () Bool)

(assert (=> d!1484651 (= res!1965199 (not lt!1831054))))

(declare-fun lt!1831050 () Bool)

(assert (=> d!1484651 (= lt!1831054 lt!1831050)))

(declare-fun lt!1831053 () Unit!120784)

(declare-fun e!2913704 () Unit!120784)

(assert (=> d!1484651 (= lt!1831053 e!2913704)))

(declare-fun c!799407 () Bool)

(assert (=> d!1484651 (= c!799407 lt!1831050)))

(assert (=> d!1484651 (= lt!1831050 (containsKey!2817 (toList!5285 lt!1830707) key!4968))))

(assert (=> d!1484651 (= (contains!15205 lt!1830707 key!4968) lt!1831054)))

(declare-fun b!4669124 () Bool)

(declare-fun e!2913705 () Bool)

(assert (=> b!4669124 (= e!2913705 (contains!15208 (keys!18455 lt!1830707) key!4968))))

(declare-fun bm!326339 () Bool)

(declare-fun call!326344 () Bool)

(declare-fun e!2913700 () List!52128)

(assert (=> bm!326339 (= call!326344 (contains!15208 e!2913700 key!4968))))

(declare-fun c!799405 () Bool)

(assert (=> bm!326339 (= c!799405 c!799407)))

(declare-fun b!4669125 () Bool)

(assert (=> b!4669125 (= e!2913700 (getKeysList!778 (toList!5285 lt!1830707)))))

(declare-fun b!4669126 () Bool)

(declare-fun Unit!120839 () Unit!120784)

(assert (=> b!4669126 (= e!2913703 Unit!120839)))

(declare-fun b!4669127 () Bool)

(assert (=> b!4669127 (= e!2913701 e!2913705)))

(declare-fun res!1965198 () Bool)

(assert (=> b!4669127 (=> (not res!1965198) (not e!2913705))))

(assert (=> b!4669127 (= res!1965198 (isDefined!9180 (getValueByKey!1667 (toList!5285 lt!1830707) key!4968)))))

(declare-fun b!4669128 () Bool)

(assert (=> b!4669128 (= e!2913704 e!2913703)))

(declare-fun c!799406 () Bool)

(assert (=> b!4669128 (= c!799406 call!326344)))

(declare-fun b!4669129 () Bool)

(assert (=> b!4669129 (= e!2913700 (keys!18455 lt!1830707))))

(declare-fun b!4669130 () Bool)

(declare-fun lt!1831051 () Unit!120784)

(assert (=> b!4669130 (= e!2913704 lt!1831051)))

(declare-fun lt!1831052 () Unit!120784)

(assert (=> b!4669130 (= lt!1831052 (lemmaContainsKeyImpliesGetValueByKeyDefined!1569 (toList!5285 lt!1830707) key!4968))))

(assert (=> b!4669130 (isDefined!9180 (getValueByKey!1667 (toList!5285 lt!1830707) key!4968))))

(declare-fun lt!1831055 () Unit!120784)

(assert (=> b!4669130 (= lt!1831055 lt!1831052)))

(assert (=> b!4669130 (= lt!1831051 (lemmaInListThenGetKeysListContains!773 (toList!5285 lt!1830707) key!4968))))

(assert (=> b!4669130 call!326344))

(assert (= (and d!1484651 c!799407) b!4669130))

(assert (= (and d!1484651 (not c!799407)) b!4669128))

(assert (= (and b!4669128 c!799406) b!4669123))

(assert (= (and b!4669128 (not c!799406)) b!4669126))

(assert (= (or b!4669130 b!4669128) bm!326339))

(assert (= (and bm!326339 c!799405) b!4669125))

(assert (= (and bm!326339 (not c!799405)) b!4669129))

(assert (= (and d!1484651 res!1965199) b!4669122))

(assert (= (and d!1484651 (not res!1965200)) b!4669127))

(assert (= (and b!4669127 res!1965198) b!4669124))

(assert (=> b!4669122 m!5560693))

(assert (=> b!4669122 m!5560693))

(declare-fun m!5560833 () Bool)

(assert (=> b!4669122 m!5560833))

(declare-fun m!5560835 () Bool)

(assert (=> d!1484651 m!5560835))

(declare-fun m!5560837 () Bool)

(assert (=> bm!326339 m!5560837))

(assert (=> b!4669124 m!5560693))

(assert (=> b!4669124 m!5560693))

(assert (=> b!4669124 m!5560833))

(declare-fun m!5560839 () Bool)

(assert (=> b!4669130 m!5560839))

(declare-fun m!5560841 () Bool)

(assert (=> b!4669130 m!5560841))

(assert (=> b!4669130 m!5560841))

(declare-fun m!5560843 () Bool)

(assert (=> b!4669130 m!5560843))

(declare-fun m!5560845 () Bool)

(assert (=> b!4669130 m!5560845))

(assert (=> b!4669127 m!5560841))

(assert (=> b!4669127 m!5560841))

(assert (=> b!4669127 m!5560843))

(assert (=> b!4669129 m!5560693))

(declare-fun m!5560847 () Bool)

(assert (=> b!4669125 m!5560847))

(assert (=> b!4669123 m!5560835))

(declare-fun m!5560849 () Bool)

(assert (=> b!4669123 m!5560849))

(assert (=> b!4668839 d!1484651))

(declare-fun bs!1077848 () Bool)

(declare-fun b!4669131 () Bool)

(assert (= bs!1077848 (and b!4669131 d!1484645)))

(declare-fun lambda!202131 () Int)

(assert (=> bs!1077848 (= (= (ListMap!4626 Nil!52002) lt!1831046) (= lambda!202131 lambda!202130))))

(declare-fun bs!1077849 () Bool)

(assert (= bs!1077849 (and b!4669131 b!4669121)))

(assert (=> bs!1077849 (= (= (ListMap!4626 Nil!52002) lt!1831048) (= lambda!202131 lambda!202129))))

(declare-fun bs!1077850 () Bool)

(assert (= bs!1077850 (and b!4669131 b!4668901)))

(assert (=> bs!1077850 (= (= (ListMap!4626 Nil!52002) lt!1830702) (= lambda!202131 lambda!202060))))

(declare-fun bs!1077851 () Bool)

(assert (= bs!1077851 (and b!4669131 b!4668897)))

(assert (=> bs!1077851 (= (= (ListMap!4626 Nil!52002) lt!1830702) (= lambda!202131 lambda!202059))))

(declare-fun bs!1077852 () Bool)

(assert (= bs!1077852 (and b!4669131 d!1484529)))

(assert (=> bs!1077852 (= (= (ListMap!4626 Nil!52002) lt!1830796) (= lambda!202131 lambda!202062))))

(assert (=> bs!1077850 (= (= (ListMap!4626 Nil!52002) lt!1830798) (= lambda!202131 lambda!202061))))

(assert (=> bs!1077849 (= lambda!202131 lambda!202128)))

(declare-fun bs!1077853 () Bool)

(assert (= bs!1077853 (and b!4669131 b!4669117)))

(assert (=> bs!1077853 (= lambda!202131 lambda!202127)))

(declare-fun bs!1077854 () Bool)

(assert (= bs!1077854 (and b!4669131 d!1484555)))

(assert (=> bs!1077854 (not (= lambda!202131 lambda!202068))))

(assert (=> b!4669131 true))

(declare-fun bs!1077859 () Bool)

(declare-fun b!4669135 () Bool)

(assert (= bs!1077859 (and b!4669135 d!1484645)))

(declare-fun lambda!202133 () Int)

(assert (=> bs!1077859 (= (= (ListMap!4626 Nil!52002) lt!1831046) (= lambda!202133 lambda!202130))))

(declare-fun bs!1077860 () Bool)

(assert (= bs!1077860 (and b!4669135 b!4669121)))

(assert (=> bs!1077860 (= (= (ListMap!4626 Nil!52002) lt!1831048) (= lambda!202133 lambda!202129))))

(declare-fun bs!1077861 () Bool)

(assert (= bs!1077861 (and b!4669135 b!4669131)))

(assert (=> bs!1077861 (= lambda!202133 lambda!202131)))

(declare-fun bs!1077862 () Bool)

(assert (= bs!1077862 (and b!4669135 b!4668901)))

(assert (=> bs!1077862 (= (= (ListMap!4626 Nil!52002) lt!1830702) (= lambda!202133 lambda!202060))))

(declare-fun bs!1077863 () Bool)

(assert (= bs!1077863 (and b!4669135 b!4668897)))

(assert (=> bs!1077863 (= (= (ListMap!4626 Nil!52002) lt!1830702) (= lambda!202133 lambda!202059))))

(declare-fun bs!1077864 () Bool)

(assert (= bs!1077864 (and b!4669135 d!1484529)))

(assert (=> bs!1077864 (= (= (ListMap!4626 Nil!52002) lt!1830796) (= lambda!202133 lambda!202062))))

(assert (=> bs!1077862 (= (= (ListMap!4626 Nil!52002) lt!1830798) (= lambda!202133 lambda!202061))))

(assert (=> bs!1077860 (= lambda!202133 lambda!202128)))

(declare-fun bs!1077867 () Bool)

(assert (= bs!1077867 (and b!4669135 b!4669117)))

(assert (=> bs!1077867 (= lambda!202133 lambda!202127)))

(declare-fun bs!1077869 () Bool)

(assert (= bs!1077869 (and b!4669135 d!1484555)))

(assert (=> bs!1077869 (not (= lambda!202133 lambda!202068))))

(assert (=> b!4669135 true))

(declare-fun lambda!202135 () Int)

(declare-fun lt!1831080 () ListMap!4625)

(assert (=> bs!1077859 (= (= lt!1831080 lt!1831046) (= lambda!202135 lambda!202130))))

(assert (=> bs!1077860 (= (= lt!1831080 lt!1831048) (= lambda!202135 lambda!202129))))

(assert (=> bs!1077861 (= (= lt!1831080 (ListMap!4626 Nil!52002)) (= lambda!202135 lambda!202131))))

(assert (=> bs!1077862 (= (= lt!1831080 lt!1830702) (= lambda!202135 lambda!202060))))

(assert (=> bs!1077863 (= (= lt!1831080 lt!1830702) (= lambda!202135 lambda!202059))))

(assert (=> b!4669135 (= (= lt!1831080 (ListMap!4626 Nil!52002)) (= lambda!202135 lambda!202133))))

(assert (=> bs!1077864 (= (= lt!1831080 lt!1830796) (= lambda!202135 lambda!202062))))

(assert (=> bs!1077862 (= (= lt!1831080 lt!1830798) (= lambda!202135 lambda!202061))))

(assert (=> bs!1077860 (= (= lt!1831080 (ListMap!4626 Nil!52002)) (= lambda!202135 lambda!202128))))

(assert (=> bs!1077867 (= (= lt!1831080 (ListMap!4626 Nil!52002)) (= lambda!202135 lambda!202127))))

(assert (=> bs!1077869 (not (= lambda!202135 lambda!202068))))

(assert (=> b!4669135 true))

(declare-fun bs!1077873 () Bool)

(declare-fun d!1484653 () Bool)

(assert (= bs!1077873 (and d!1484653 d!1484645)))

(declare-fun lt!1831078 () ListMap!4625)

(declare-fun lambda!202138 () Int)

(assert (=> bs!1077873 (= (= lt!1831078 lt!1831046) (= lambda!202138 lambda!202130))))

(declare-fun bs!1077875 () Bool)

(assert (= bs!1077875 (and d!1484653 b!4669121)))

(assert (=> bs!1077875 (= (= lt!1831078 lt!1831048) (= lambda!202138 lambda!202129))))

(declare-fun bs!1077876 () Bool)

(assert (= bs!1077876 (and d!1484653 b!4669131)))

(assert (=> bs!1077876 (= (= lt!1831078 (ListMap!4626 Nil!52002)) (= lambda!202138 lambda!202131))))

(declare-fun bs!1077878 () Bool)

(assert (= bs!1077878 (and d!1484653 b!4669135)))

(assert (=> bs!1077878 (= (= lt!1831078 lt!1831080) (= lambda!202138 lambda!202135))))

(declare-fun bs!1077880 () Bool)

(assert (= bs!1077880 (and d!1484653 b!4668901)))

(assert (=> bs!1077880 (= (= lt!1831078 lt!1830702) (= lambda!202138 lambda!202060))))

(declare-fun bs!1077882 () Bool)

(assert (= bs!1077882 (and d!1484653 b!4668897)))

(assert (=> bs!1077882 (= (= lt!1831078 lt!1830702) (= lambda!202138 lambda!202059))))

(assert (=> bs!1077878 (= (= lt!1831078 (ListMap!4626 Nil!52002)) (= lambda!202138 lambda!202133))))

(declare-fun bs!1077884 () Bool)

(assert (= bs!1077884 (and d!1484653 d!1484529)))

(assert (=> bs!1077884 (= (= lt!1831078 lt!1830796) (= lambda!202138 lambda!202062))))

(assert (=> bs!1077880 (= (= lt!1831078 lt!1830798) (= lambda!202138 lambda!202061))))

(assert (=> bs!1077875 (= (= lt!1831078 (ListMap!4626 Nil!52002)) (= lambda!202138 lambda!202128))))

(declare-fun bs!1077885 () Bool)

(assert (= bs!1077885 (and d!1484653 b!4669117)))

(assert (=> bs!1077885 (= (= lt!1831078 (ListMap!4626 Nil!52002)) (= lambda!202138 lambda!202127))))

(declare-fun bs!1077886 () Bool)

(assert (= bs!1077886 (and d!1484653 d!1484555)))

(assert (=> bs!1077886 (not (= lambda!202138 lambda!202068))))

(assert (=> d!1484653 true))

(declare-fun call!326345 () Bool)

(declare-fun bm!326340 () Bool)

(declare-fun c!799408 () Bool)

(assert (=> bm!326340 (= call!326345 (forall!11097 (ite c!799408 (toList!5285 (ListMap!4626 Nil!52002)) (t!359260 lt!1830688)) (ite c!799408 lambda!202131 lambda!202135)))))

(declare-fun e!2913707 () ListMap!4625)

(assert (=> b!4669131 (= e!2913707 (ListMap!4626 Nil!52002))))

(declare-fun lt!1831072 () Unit!120784)

(declare-fun call!326347 () Unit!120784)

(assert (=> b!4669131 (= lt!1831072 call!326347)))

(declare-fun call!326346 () Bool)

(assert (=> b!4669131 call!326346))

(declare-fun lt!1831068 () Unit!120784)

(assert (=> b!4669131 (= lt!1831068 lt!1831072)))

(assert (=> b!4669131 call!326345))

(declare-fun lt!1831079 () Unit!120784)

(declare-fun Unit!120847 () Unit!120784)

(assert (=> b!4669131 (= lt!1831079 Unit!120847)))

(declare-fun bm!326341 () Bool)

(assert (=> bm!326341 (= call!326346 (forall!11097 (ite c!799408 (toList!5285 (ListMap!4626 Nil!52002)) lt!1830688) (ite c!799408 lambda!202131 lambda!202135)))))

(declare-fun b!4669132 () Bool)

(declare-fun e!2913708 () Bool)

(assert (=> b!4669132 (= e!2913708 (invariantList!1327 (toList!5285 lt!1831078)))))

(assert (=> d!1484653 e!2913708))

(declare-fun res!1965202 () Bool)

(assert (=> d!1484653 (=> (not res!1965202) (not e!2913708))))

(assert (=> d!1484653 (= res!1965202 (forall!11097 lt!1830688 lambda!202138))))

(assert (=> d!1484653 (= lt!1831078 e!2913707)))

(assert (=> d!1484653 (= c!799408 ((_ is Nil!52002) lt!1830688))))

(assert (=> d!1484653 (noDuplicateKeys!1678 lt!1830688)))

(assert (=> d!1484653 (= (addToMapMapFromBucket!1135 lt!1830688 (ListMap!4626 Nil!52002)) lt!1831078)))

(declare-fun b!4669133 () Bool)

(declare-fun res!1965203 () Bool)

(assert (=> b!4669133 (=> (not res!1965203) (not e!2913708))))

(assert (=> b!4669133 (= res!1965203 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202138))))

(declare-fun b!4669134 () Bool)

(declare-fun e!2913706 () Bool)

(assert (=> b!4669134 (= e!2913706 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202135))))

(assert (=> b!4669135 (= e!2913707 lt!1831080)))

(declare-fun lt!1831077 () ListMap!4625)

(assert (=> b!4669135 (= lt!1831077 (+!2018 (ListMap!4626 Nil!52002) (h!58176 lt!1830688)))))

(assert (=> b!4669135 (= lt!1831080 (addToMapMapFromBucket!1135 (t!359260 lt!1830688) (+!2018 (ListMap!4626 Nil!52002) (h!58176 lt!1830688))))))

(declare-fun lt!1831066 () Unit!120784)

(assert (=> b!4669135 (= lt!1831066 call!326347)))

(assert (=> b!4669135 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202133)))

(declare-fun lt!1831064 () Unit!120784)

(assert (=> b!4669135 (= lt!1831064 lt!1831066)))

(assert (=> b!4669135 (forall!11097 (toList!5285 lt!1831077) lambda!202135)))

(declare-fun lt!1831071 () Unit!120784)

(declare-fun Unit!120854 () Unit!120784)

(assert (=> b!4669135 (= lt!1831071 Unit!120854)))

(assert (=> b!4669135 call!326345))

(declare-fun lt!1831070 () Unit!120784)

(declare-fun Unit!120856 () Unit!120784)

(assert (=> b!4669135 (= lt!1831070 Unit!120856)))

(declare-fun lt!1831065 () Unit!120784)

(declare-fun Unit!120858 () Unit!120784)

(assert (=> b!4669135 (= lt!1831065 Unit!120858)))

(declare-fun lt!1831074 () Unit!120784)

(assert (=> b!4669135 (= lt!1831074 (forallContained!3303 (toList!5285 lt!1831077) lambda!202135 (h!58176 lt!1830688)))))

(assert (=> b!4669135 (contains!15205 lt!1831077 (_1!29873 (h!58176 lt!1830688)))))

(declare-fun lt!1831069 () Unit!120784)

(declare-fun Unit!120860 () Unit!120784)

(assert (=> b!4669135 (= lt!1831069 Unit!120860)))

(assert (=> b!4669135 (contains!15205 lt!1831080 (_1!29873 (h!58176 lt!1830688)))))

(declare-fun lt!1831061 () Unit!120784)

(declare-fun Unit!120862 () Unit!120784)

(assert (=> b!4669135 (= lt!1831061 Unit!120862)))

(assert (=> b!4669135 call!326346))

(declare-fun lt!1831075 () Unit!120784)

(declare-fun Unit!120863 () Unit!120784)

(assert (=> b!4669135 (= lt!1831075 Unit!120863)))

(assert (=> b!4669135 (forall!11097 (toList!5285 lt!1831077) lambda!202135)))

(declare-fun lt!1831067 () Unit!120784)

(declare-fun Unit!120865 () Unit!120784)

(assert (=> b!4669135 (= lt!1831067 Unit!120865)))

(declare-fun lt!1831073 () Unit!120784)

(declare-fun Unit!120866 () Unit!120784)

(assert (=> b!4669135 (= lt!1831073 Unit!120866)))

(declare-fun lt!1831060 () Unit!120784)

(assert (=> b!4669135 (= lt!1831060 (addForallContainsKeyThenBeforeAdding!626 (ListMap!4626 Nil!52002) lt!1831080 (_1!29873 (h!58176 lt!1830688)) (_2!29873 (h!58176 lt!1830688))))))

(assert (=> b!4669135 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202135)))

(declare-fun lt!1831076 () Unit!120784)

(assert (=> b!4669135 (= lt!1831076 lt!1831060)))

(assert (=> b!4669135 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202135)))

(declare-fun lt!1831063 () Unit!120784)

(declare-fun Unit!120867 () Unit!120784)

(assert (=> b!4669135 (= lt!1831063 Unit!120867)))

(declare-fun res!1965201 () Bool)

(assert (=> b!4669135 (= res!1965201 (forall!11097 lt!1830688 lambda!202135))))

(assert (=> b!4669135 (=> (not res!1965201) (not e!2913706))))

(assert (=> b!4669135 e!2913706))

(declare-fun lt!1831062 () Unit!120784)

(declare-fun Unit!120868 () Unit!120784)

(assert (=> b!4669135 (= lt!1831062 Unit!120868)))

(declare-fun bm!326342 () Bool)

(assert (=> bm!326342 (= call!326347 (lemmaContainsAllItsOwnKeys!627 (ListMap!4626 Nil!52002)))))

(assert (= (and d!1484653 c!799408) b!4669131))

(assert (= (and d!1484653 (not c!799408)) b!4669135))

(assert (= (and b!4669135 res!1965201) b!4669134))

(assert (= (or b!4669131 b!4669135) bm!326342))

(assert (= (or b!4669131 b!4669135) bm!326341))

(assert (= (or b!4669131 b!4669135) bm!326340))

(assert (= (and d!1484653 res!1965202) b!4669133))

(assert (= (and b!4669133 res!1965203) b!4669132))

(declare-fun m!5560865 () Bool)

(assert (=> b!4669134 m!5560865))

(declare-fun m!5560871 () Bool)

(assert (=> bm!326340 m!5560871))

(declare-fun m!5560875 () Bool)

(assert (=> b!4669133 m!5560875))

(declare-fun m!5560879 () Bool)

(assert (=> b!4669135 m!5560879))

(declare-fun m!5560881 () Bool)

(assert (=> b!4669135 m!5560881))

(declare-fun m!5560883 () Bool)

(assert (=> b!4669135 m!5560883))

(declare-fun m!5560887 () Bool)

(assert (=> b!4669135 m!5560887))

(declare-fun m!5560891 () Bool)

(assert (=> b!4669135 m!5560891))

(assert (=> b!4669135 m!5560879))

(declare-fun m!5560895 () Bool)

(assert (=> b!4669135 m!5560895))

(assert (=> b!4669135 m!5560865))

(declare-fun m!5560899 () Bool)

(assert (=> b!4669135 m!5560899))

(assert (=> b!4669135 m!5560883))

(declare-fun m!5560903 () Bool)

(assert (=> b!4669135 m!5560903))

(assert (=> b!4669135 m!5560865))

(declare-fun m!5560907 () Bool)

(assert (=> b!4669135 m!5560907))

(declare-fun m!5560909 () Bool)

(assert (=> b!4669132 m!5560909))

(declare-fun m!5560913 () Bool)

(assert (=> bm!326341 m!5560913))

(declare-fun m!5560915 () Bool)

(assert (=> d!1484653 m!5560915))

(declare-fun m!5560917 () Bool)

(assert (=> d!1484653 m!5560917))

(assert (=> bm!326342 m!5560831))

(assert (=> b!4668839 d!1484653))

(declare-fun d!1484659 () Bool)

(declare-fun e!2913712 () Bool)

(assert (=> d!1484659 e!2913712))

(declare-fun res!1965208 () Bool)

(assert (=> d!1484659 (=> (not res!1965208) (not e!2913712))))

(declare-fun lt!1831105 () ListMap!4625)

(assert (=> d!1484659 (= res!1965208 (contains!15205 lt!1831105 (_1!29873 lt!1830692)))))

(declare-fun lt!1831104 () List!52126)

(assert (=> d!1484659 (= lt!1831105 (ListMap!4626 lt!1831104))))

(declare-fun lt!1831102 () Unit!120784)

(declare-fun lt!1831103 () Unit!120784)

(assert (=> d!1484659 (= lt!1831102 lt!1831103)))

(assert (=> d!1484659 (= (getValueByKey!1667 lt!1831104 (_1!29873 lt!1830692)) (Some!11914 (_2!29873 lt!1830692)))))

(assert (=> d!1484659 (= lt!1831103 (lemmaContainsTupThenGetReturnValue!946 lt!1831104 (_1!29873 lt!1830692) (_2!29873 lt!1830692)))))

(assert (=> d!1484659 (= lt!1831104 (insertNoDuplicatedKeys!454 (toList!5285 (addToMapMapFromBucket!1135 lt!1830706 (ListMap!4626 Nil!52002))) (_1!29873 lt!1830692) (_2!29873 lt!1830692)))))

(assert (=> d!1484659 (= (+!2018 (addToMapMapFromBucket!1135 lt!1830706 (ListMap!4626 Nil!52002)) lt!1830692) lt!1831105)))

(declare-fun b!4669141 () Bool)

(declare-fun res!1965207 () Bool)

(assert (=> b!4669141 (=> (not res!1965207) (not e!2913712))))

(assert (=> b!4669141 (= res!1965207 (= (getValueByKey!1667 (toList!5285 lt!1831105) (_1!29873 lt!1830692)) (Some!11914 (_2!29873 lt!1830692))))))

(declare-fun b!4669142 () Bool)

(assert (=> b!4669142 (= e!2913712 (contains!15210 (toList!5285 lt!1831105) lt!1830692))))

(assert (= (and d!1484659 res!1965208) b!4669141))

(assert (= (and b!4669141 res!1965207) b!4669142))

(declare-fun m!5560919 () Bool)

(assert (=> d!1484659 m!5560919))

(declare-fun m!5560921 () Bool)

(assert (=> d!1484659 m!5560921))

(declare-fun m!5560923 () Bool)

(assert (=> d!1484659 m!5560923))

(declare-fun m!5560925 () Bool)

(assert (=> d!1484659 m!5560925))

(declare-fun m!5560927 () Bool)

(assert (=> b!4669141 m!5560927))

(declare-fun m!5560929 () Bool)

(assert (=> b!4669142 m!5560929))

(assert (=> b!4668839 d!1484659))

(declare-fun d!1484661 () Bool)

(assert (=> d!1484661 (eq!933 (addToMapMapFromBucket!1135 (Cons!52002 lt!1830692 lt!1830706) (ListMap!4626 Nil!52002)) (+!2018 (addToMapMapFromBucket!1135 lt!1830706 (ListMap!4626 Nil!52002)) lt!1830692))))

(declare-fun lt!1831150 () Unit!120784)

(declare-fun choose!32288 (tuple2!53158 List!52126 ListMap!4625) Unit!120784)

(assert (=> d!1484661 (= lt!1831150 (choose!32288 lt!1830692 lt!1830706 (ListMap!4626 Nil!52002)))))

(assert (=> d!1484661 (noDuplicateKeys!1678 lt!1830706)))

(assert (=> d!1484661 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!184 lt!1830692 lt!1830706 (ListMap!4626 Nil!52002)) lt!1831150)))

(declare-fun bs!1077930 () Bool)

(assert (= bs!1077930 d!1484661))

(assert (=> bs!1077930 m!5560311))

(assert (=> bs!1077930 m!5560311))

(assert (=> bs!1077930 m!5560325))

(assert (=> bs!1077930 m!5560327))

(assert (=> bs!1077930 m!5560503))

(assert (=> bs!1077930 m!5560329))

(assert (=> bs!1077930 m!5560325))

(declare-fun m!5560963 () Bool)

(assert (=> bs!1077930 m!5560963))

(assert (=> bs!1077930 m!5560329))

(assert (=> b!4668839 d!1484661))

(declare-fun bs!1077933 () Bool)

(declare-fun b!4669153 () Bool)

(assert (= bs!1077933 (and b!4669153 b!4669121)))

(declare-fun lambda!202146 () Int)

(assert (=> bs!1077933 (= (= (ListMap!4626 Nil!52002) lt!1831048) (= lambda!202146 lambda!202129))))

(declare-fun bs!1077934 () Bool)

(assert (= bs!1077934 (and b!4669153 b!4669131)))

(assert (=> bs!1077934 (= lambda!202146 lambda!202131)))

(declare-fun bs!1077935 () Bool)

(assert (= bs!1077935 (and b!4669153 b!4669135)))

(assert (=> bs!1077935 (= (= (ListMap!4626 Nil!52002) lt!1831080) (= lambda!202146 lambda!202135))))

(declare-fun bs!1077936 () Bool)

(assert (= bs!1077936 (and b!4669153 b!4668901)))

(assert (=> bs!1077936 (= (= (ListMap!4626 Nil!52002) lt!1830702) (= lambda!202146 lambda!202060))))

(declare-fun bs!1077937 () Bool)

(assert (= bs!1077937 (and b!4669153 b!4668897)))

(assert (=> bs!1077937 (= (= (ListMap!4626 Nil!52002) lt!1830702) (= lambda!202146 lambda!202059))))

(assert (=> bs!1077935 (= lambda!202146 lambda!202133)))

(declare-fun bs!1077938 () Bool)

(assert (= bs!1077938 (and b!4669153 d!1484645)))

(assert (=> bs!1077938 (= (= (ListMap!4626 Nil!52002) lt!1831046) (= lambda!202146 lambda!202130))))

(declare-fun bs!1077939 () Bool)

(assert (= bs!1077939 (and b!4669153 d!1484653)))

(assert (=> bs!1077939 (= (= (ListMap!4626 Nil!52002) lt!1831078) (= lambda!202146 lambda!202138))))

(declare-fun bs!1077940 () Bool)

(assert (= bs!1077940 (and b!4669153 d!1484529)))

(assert (=> bs!1077940 (= (= (ListMap!4626 Nil!52002) lt!1830796) (= lambda!202146 lambda!202062))))

(assert (=> bs!1077936 (= (= (ListMap!4626 Nil!52002) lt!1830798) (= lambda!202146 lambda!202061))))

(assert (=> bs!1077933 (= lambda!202146 lambda!202128)))

(declare-fun bs!1077941 () Bool)

(assert (= bs!1077941 (and b!4669153 b!4669117)))

(assert (=> bs!1077941 (= lambda!202146 lambda!202127)))

(declare-fun bs!1077942 () Bool)

(assert (= bs!1077942 (and b!4669153 d!1484555)))

(assert (=> bs!1077942 (not (= lambda!202146 lambda!202068))))

(assert (=> b!4669153 true))

(declare-fun bs!1077943 () Bool)

(declare-fun b!4669157 () Bool)

(assert (= bs!1077943 (and b!4669157 b!4669121)))

(declare-fun lambda!202147 () Int)

(assert (=> bs!1077943 (= (= (ListMap!4626 Nil!52002) lt!1831048) (= lambda!202147 lambda!202129))))

(declare-fun bs!1077944 () Bool)

(assert (= bs!1077944 (and b!4669157 b!4669131)))

(assert (=> bs!1077944 (= lambda!202147 lambda!202131)))

(declare-fun bs!1077945 () Bool)

(assert (= bs!1077945 (and b!4669157 b!4669135)))

(assert (=> bs!1077945 (= (= (ListMap!4626 Nil!52002) lt!1831080) (= lambda!202147 lambda!202135))))

(declare-fun bs!1077946 () Bool)

(assert (= bs!1077946 (and b!4669157 b!4668901)))

(assert (=> bs!1077946 (= (= (ListMap!4626 Nil!52002) lt!1830702) (= lambda!202147 lambda!202060))))

(declare-fun bs!1077948 () Bool)

(assert (= bs!1077948 (and b!4669157 b!4668897)))

(assert (=> bs!1077948 (= (= (ListMap!4626 Nil!52002) lt!1830702) (= lambda!202147 lambda!202059))))

(assert (=> bs!1077945 (= lambda!202147 lambda!202133)))

(declare-fun bs!1077951 () Bool)

(assert (= bs!1077951 (and b!4669157 b!4669153)))

(assert (=> bs!1077951 (= lambda!202147 lambda!202146)))

(declare-fun bs!1077953 () Bool)

(assert (= bs!1077953 (and b!4669157 d!1484645)))

(assert (=> bs!1077953 (= (= (ListMap!4626 Nil!52002) lt!1831046) (= lambda!202147 lambda!202130))))

(declare-fun bs!1077955 () Bool)

(assert (= bs!1077955 (and b!4669157 d!1484653)))

(assert (=> bs!1077955 (= (= (ListMap!4626 Nil!52002) lt!1831078) (= lambda!202147 lambda!202138))))

(declare-fun bs!1077957 () Bool)

(assert (= bs!1077957 (and b!4669157 d!1484529)))

(assert (=> bs!1077957 (= (= (ListMap!4626 Nil!52002) lt!1830796) (= lambda!202147 lambda!202062))))

(assert (=> bs!1077946 (= (= (ListMap!4626 Nil!52002) lt!1830798) (= lambda!202147 lambda!202061))))

(assert (=> bs!1077943 (= lambda!202147 lambda!202128)))

(declare-fun bs!1077960 () Bool)

(assert (= bs!1077960 (and b!4669157 b!4669117)))

(assert (=> bs!1077960 (= lambda!202147 lambda!202127)))

(declare-fun bs!1077962 () Bool)

(assert (= bs!1077962 (and b!4669157 d!1484555)))

(assert (=> bs!1077962 (not (= lambda!202147 lambda!202068))))

(assert (=> b!4669157 true))

(declare-fun lt!1831171 () ListMap!4625)

(declare-fun lambda!202149 () Int)

(assert (=> bs!1077943 (= (= lt!1831171 lt!1831048) (= lambda!202149 lambda!202129))))

(assert (=> bs!1077944 (= (= lt!1831171 (ListMap!4626 Nil!52002)) (= lambda!202149 lambda!202131))))

(assert (=> bs!1077945 (= (= lt!1831171 lt!1831080) (= lambda!202149 lambda!202135))))

(assert (=> bs!1077946 (= (= lt!1831171 lt!1830702) (= lambda!202149 lambda!202060))))

(assert (=> bs!1077948 (= (= lt!1831171 lt!1830702) (= lambda!202149 lambda!202059))))

(assert (=> bs!1077945 (= (= lt!1831171 (ListMap!4626 Nil!52002)) (= lambda!202149 lambda!202133))))

(assert (=> bs!1077953 (= (= lt!1831171 lt!1831046) (= lambda!202149 lambda!202130))))

(assert (=> bs!1077955 (= (= lt!1831171 lt!1831078) (= lambda!202149 lambda!202138))))

(assert (=> bs!1077957 (= (= lt!1831171 lt!1830796) (= lambda!202149 lambda!202062))))

(assert (=> bs!1077946 (= (= lt!1831171 lt!1830798) (= lambda!202149 lambda!202061))))

(assert (=> bs!1077943 (= (= lt!1831171 (ListMap!4626 Nil!52002)) (= lambda!202149 lambda!202128))))

(assert (=> bs!1077960 (= (= lt!1831171 (ListMap!4626 Nil!52002)) (= lambda!202149 lambda!202127))))

(assert (=> bs!1077962 (not (= lambda!202149 lambda!202068))))

(assert (=> b!4669157 (= (= lt!1831171 (ListMap!4626 Nil!52002)) (= lambda!202149 lambda!202147))))

(assert (=> bs!1077951 (= (= lt!1831171 (ListMap!4626 Nil!52002)) (= lambda!202149 lambda!202146))))

(assert (=> b!4669157 true))

(declare-fun bs!1077966 () Bool)

(declare-fun d!1484665 () Bool)

(assert (= bs!1077966 (and d!1484665 b!4669157)))

(declare-fun lambda!202150 () Int)

(declare-fun lt!1831169 () ListMap!4625)

(assert (=> bs!1077966 (= (= lt!1831169 lt!1831171) (= lambda!202150 lambda!202149))))

(declare-fun bs!1077967 () Bool)

(assert (= bs!1077967 (and d!1484665 b!4669121)))

(assert (=> bs!1077967 (= (= lt!1831169 lt!1831048) (= lambda!202150 lambda!202129))))

(declare-fun bs!1077968 () Bool)

(assert (= bs!1077968 (and d!1484665 b!4669131)))

(assert (=> bs!1077968 (= (= lt!1831169 (ListMap!4626 Nil!52002)) (= lambda!202150 lambda!202131))))

(declare-fun bs!1077969 () Bool)

(assert (= bs!1077969 (and d!1484665 b!4669135)))

(assert (=> bs!1077969 (= (= lt!1831169 lt!1831080) (= lambda!202150 lambda!202135))))

(declare-fun bs!1077970 () Bool)

(assert (= bs!1077970 (and d!1484665 b!4668901)))

(assert (=> bs!1077970 (= (= lt!1831169 lt!1830702) (= lambda!202150 lambda!202060))))

(declare-fun bs!1077971 () Bool)

(assert (= bs!1077971 (and d!1484665 b!4668897)))

(assert (=> bs!1077971 (= (= lt!1831169 lt!1830702) (= lambda!202150 lambda!202059))))

(assert (=> bs!1077969 (= (= lt!1831169 (ListMap!4626 Nil!52002)) (= lambda!202150 lambda!202133))))

(declare-fun bs!1077972 () Bool)

(assert (= bs!1077972 (and d!1484665 d!1484645)))

(assert (=> bs!1077972 (= (= lt!1831169 lt!1831046) (= lambda!202150 lambda!202130))))

(declare-fun bs!1077973 () Bool)

(assert (= bs!1077973 (and d!1484665 d!1484653)))

(assert (=> bs!1077973 (= (= lt!1831169 lt!1831078) (= lambda!202150 lambda!202138))))

(declare-fun bs!1077974 () Bool)

(assert (= bs!1077974 (and d!1484665 d!1484529)))

(assert (=> bs!1077974 (= (= lt!1831169 lt!1830796) (= lambda!202150 lambda!202062))))

(assert (=> bs!1077970 (= (= lt!1831169 lt!1830798) (= lambda!202150 lambda!202061))))

(assert (=> bs!1077967 (= (= lt!1831169 (ListMap!4626 Nil!52002)) (= lambda!202150 lambda!202128))))

(declare-fun bs!1077975 () Bool)

(assert (= bs!1077975 (and d!1484665 b!4669117)))

(assert (=> bs!1077975 (= (= lt!1831169 (ListMap!4626 Nil!52002)) (= lambda!202150 lambda!202127))))

(declare-fun bs!1077976 () Bool)

(assert (= bs!1077976 (and d!1484665 d!1484555)))

(assert (=> bs!1077976 (not (= lambda!202150 lambda!202068))))

(assert (=> bs!1077966 (= (= lt!1831169 (ListMap!4626 Nil!52002)) (= lambda!202150 lambda!202147))))

(declare-fun bs!1077977 () Bool)

(assert (= bs!1077977 (and d!1484665 b!4669153)))

(assert (=> bs!1077977 (= (= lt!1831169 (ListMap!4626 Nil!52002)) (= lambda!202150 lambda!202146))))

(assert (=> d!1484665 true))

(declare-fun call!326357 () Bool)

(declare-fun c!799412 () Bool)

(declare-fun bm!326352 () Bool)

(assert (=> bm!326352 (= call!326357 (forall!11097 (ite c!799412 (toList!5285 (ListMap!4626 Nil!52002)) (t!359260 (Cons!52002 lt!1830692 lt!1830706))) (ite c!799412 lambda!202146 lambda!202149)))))

(declare-fun e!2913720 () ListMap!4625)

(assert (=> b!4669153 (= e!2913720 (ListMap!4626 Nil!52002))))

(declare-fun lt!1831163 () Unit!120784)

(declare-fun call!326359 () Unit!120784)

(assert (=> b!4669153 (= lt!1831163 call!326359)))

(declare-fun call!326358 () Bool)

(assert (=> b!4669153 call!326358))

(declare-fun lt!1831159 () Unit!120784)

(assert (=> b!4669153 (= lt!1831159 lt!1831163)))

(assert (=> b!4669153 call!326357))

(declare-fun lt!1831170 () Unit!120784)

(declare-fun Unit!120871 () Unit!120784)

(assert (=> b!4669153 (= lt!1831170 Unit!120871)))

(declare-fun bm!326353 () Bool)

(assert (=> bm!326353 (= call!326358 (forall!11097 (ite c!799412 (toList!5285 (ListMap!4626 Nil!52002)) (Cons!52002 lt!1830692 lt!1830706)) (ite c!799412 lambda!202146 lambda!202149)))))

(declare-fun b!4669154 () Bool)

(declare-fun e!2913721 () Bool)

(assert (=> b!4669154 (= e!2913721 (invariantList!1327 (toList!5285 lt!1831169)))))

(assert (=> d!1484665 e!2913721))

(declare-fun res!1965216 () Bool)

(assert (=> d!1484665 (=> (not res!1965216) (not e!2913721))))

(assert (=> d!1484665 (= res!1965216 (forall!11097 (Cons!52002 lt!1830692 lt!1830706) lambda!202150))))

(assert (=> d!1484665 (= lt!1831169 e!2913720)))

(assert (=> d!1484665 (= c!799412 ((_ is Nil!52002) (Cons!52002 lt!1830692 lt!1830706)))))

(assert (=> d!1484665 (noDuplicateKeys!1678 (Cons!52002 lt!1830692 lt!1830706))))

(assert (=> d!1484665 (= (addToMapMapFromBucket!1135 (Cons!52002 lt!1830692 lt!1830706) (ListMap!4626 Nil!52002)) lt!1831169)))

(declare-fun b!4669155 () Bool)

(declare-fun res!1965217 () Bool)

(assert (=> b!4669155 (=> (not res!1965217) (not e!2913721))))

(assert (=> b!4669155 (= res!1965217 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202150))))

(declare-fun b!4669156 () Bool)

(declare-fun e!2913719 () Bool)

(assert (=> b!4669156 (= e!2913719 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202149))))

(assert (=> b!4669157 (= e!2913720 lt!1831171)))

(declare-fun lt!1831168 () ListMap!4625)

(assert (=> b!4669157 (= lt!1831168 (+!2018 (ListMap!4626 Nil!52002) (h!58176 (Cons!52002 lt!1830692 lt!1830706))))))

(assert (=> b!4669157 (= lt!1831171 (addToMapMapFromBucket!1135 (t!359260 (Cons!52002 lt!1830692 lt!1830706)) (+!2018 (ListMap!4626 Nil!52002) (h!58176 (Cons!52002 lt!1830692 lt!1830706)))))))

(declare-fun lt!1831157 () Unit!120784)

(assert (=> b!4669157 (= lt!1831157 call!326359)))

(assert (=> b!4669157 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202147)))

(declare-fun lt!1831155 () Unit!120784)

(assert (=> b!4669157 (= lt!1831155 lt!1831157)))

(assert (=> b!4669157 (forall!11097 (toList!5285 lt!1831168) lambda!202149)))

(declare-fun lt!1831162 () Unit!120784)

(declare-fun Unit!120872 () Unit!120784)

(assert (=> b!4669157 (= lt!1831162 Unit!120872)))

(assert (=> b!4669157 call!326357))

(declare-fun lt!1831161 () Unit!120784)

(declare-fun Unit!120873 () Unit!120784)

(assert (=> b!4669157 (= lt!1831161 Unit!120873)))

(declare-fun lt!1831156 () Unit!120784)

(declare-fun Unit!120875 () Unit!120784)

(assert (=> b!4669157 (= lt!1831156 Unit!120875)))

(declare-fun lt!1831165 () Unit!120784)

(assert (=> b!4669157 (= lt!1831165 (forallContained!3303 (toList!5285 lt!1831168) lambda!202149 (h!58176 (Cons!52002 lt!1830692 lt!1830706))))))

(assert (=> b!4669157 (contains!15205 lt!1831168 (_1!29873 (h!58176 (Cons!52002 lt!1830692 lt!1830706))))))

(declare-fun lt!1831160 () Unit!120784)

(declare-fun Unit!120876 () Unit!120784)

(assert (=> b!4669157 (= lt!1831160 Unit!120876)))

(assert (=> b!4669157 (contains!15205 lt!1831171 (_1!29873 (h!58176 (Cons!52002 lt!1830692 lt!1830706))))))

(declare-fun lt!1831152 () Unit!120784)

(declare-fun Unit!120877 () Unit!120784)

(assert (=> b!4669157 (= lt!1831152 Unit!120877)))

(assert (=> b!4669157 call!326358))

(declare-fun lt!1831166 () Unit!120784)

(declare-fun Unit!120879 () Unit!120784)

(assert (=> b!4669157 (= lt!1831166 Unit!120879)))

(assert (=> b!4669157 (forall!11097 (toList!5285 lt!1831168) lambda!202149)))

(declare-fun lt!1831158 () Unit!120784)

(declare-fun Unit!120881 () Unit!120784)

(assert (=> b!4669157 (= lt!1831158 Unit!120881)))

(declare-fun lt!1831164 () Unit!120784)

(declare-fun Unit!120882 () Unit!120784)

(assert (=> b!4669157 (= lt!1831164 Unit!120882)))

(declare-fun lt!1831151 () Unit!120784)

(assert (=> b!4669157 (= lt!1831151 (addForallContainsKeyThenBeforeAdding!626 (ListMap!4626 Nil!52002) lt!1831171 (_1!29873 (h!58176 (Cons!52002 lt!1830692 lt!1830706))) (_2!29873 (h!58176 (Cons!52002 lt!1830692 lt!1830706)))))))

(assert (=> b!4669157 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202149)))

(declare-fun lt!1831167 () Unit!120784)

(assert (=> b!4669157 (= lt!1831167 lt!1831151)))

(assert (=> b!4669157 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202149)))

(declare-fun lt!1831154 () Unit!120784)

(declare-fun Unit!120886 () Unit!120784)

(assert (=> b!4669157 (= lt!1831154 Unit!120886)))

(declare-fun res!1965215 () Bool)

(assert (=> b!4669157 (= res!1965215 (forall!11097 (Cons!52002 lt!1830692 lt!1830706) lambda!202149))))

(assert (=> b!4669157 (=> (not res!1965215) (not e!2913719))))

(assert (=> b!4669157 e!2913719))

(declare-fun lt!1831153 () Unit!120784)

(declare-fun Unit!120890 () Unit!120784)

(assert (=> b!4669157 (= lt!1831153 Unit!120890)))

(declare-fun bm!326354 () Bool)

(assert (=> bm!326354 (= call!326359 (lemmaContainsAllItsOwnKeys!627 (ListMap!4626 Nil!52002)))))

(assert (= (and d!1484665 c!799412) b!4669153))

(assert (= (and d!1484665 (not c!799412)) b!4669157))

(assert (= (and b!4669157 res!1965215) b!4669156))

(assert (= (or b!4669153 b!4669157) bm!326354))

(assert (= (or b!4669153 b!4669157) bm!326353))

(assert (= (or b!4669153 b!4669157) bm!326352))

(assert (= (and d!1484665 res!1965216) b!4669155))

(assert (= (and b!4669155 res!1965217) b!4669154))

(declare-fun m!5560997 () Bool)

(assert (=> b!4669156 m!5560997))

(declare-fun m!5560999 () Bool)

(assert (=> bm!326352 m!5560999))

(declare-fun m!5561001 () Bool)

(assert (=> b!4669155 m!5561001))

(declare-fun m!5561003 () Bool)

(assert (=> b!4669157 m!5561003))

(declare-fun m!5561005 () Bool)

(assert (=> b!4669157 m!5561005))

(declare-fun m!5561007 () Bool)

(assert (=> b!4669157 m!5561007))

(declare-fun m!5561009 () Bool)

(assert (=> b!4669157 m!5561009))

(declare-fun m!5561011 () Bool)

(assert (=> b!4669157 m!5561011))

(assert (=> b!4669157 m!5561003))

(declare-fun m!5561013 () Bool)

(assert (=> b!4669157 m!5561013))

(assert (=> b!4669157 m!5560997))

(declare-fun m!5561015 () Bool)

(assert (=> b!4669157 m!5561015))

(assert (=> b!4669157 m!5561007))

(declare-fun m!5561017 () Bool)

(assert (=> b!4669157 m!5561017))

(assert (=> b!4669157 m!5560997))

(declare-fun m!5561019 () Bool)

(assert (=> b!4669157 m!5561019))

(declare-fun m!5561021 () Bool)

(assert (=> b!4669154 m!5561021))

(declare-fun m!5561023 () Bool)

(assert (=> bm!326353 m!5561023))

(declare-fun m!5561025 () Bool)

(assert (=> d!1484665 m!5561025))

(declare-fun m!5561027 () Bool)

(assert (=> d!1484665 m!5561027))

(assert (=> bm!326354 m!5560831))

(assert (=> b!4668839 d!1484665))

(declare-fun bs!1077978 () Bool)

(declare-fun d!1484669 () Bool)

(assert (= bs!1077978 (and d!1484669 d!1484553)))

(declare-fun lambda!202151 () Int)

(assert (=> bs!1077978 (= lambda!202151 lambda!202065)))

(declare-fun bs!1077979 () Bool)

(assert (= bs!1077979 (and d!1484669 d!1484599)))

(assert (=> bs!1077979 (= lambda!202151 lambda!202115)))

(declare-fun bs!1077980 () Bool)

(assert (= bs!1077980 (and d!1484669 d!1484581)))

(assert (=> bs!1077980 (= lambda!202151 lambda!202112)))

(declare-fun bs!1077981 () Bool)

(assert (= bs!1077981 (and d!1484669 d!1484559)))

(assert (=> bs!1077981 (= lambda!202151 lambda!202069)))

(declare-fun bs!1077982 () Bool)

(assert (= bs!1077982 (and d!1484669 b!4668837)))

(assert (=> bs!1077982 (= lambda!202151 lambda!202026)))

(declare-fun lt!1831172 () ListMap!4625)

(assert (=> d!1484669 (invariantList!1327 (toList!5285 lt!1831172))))

(declare-fun e!2913722 () ListMap!4625)

(assert (=> d!1484669 (= lt!1831172 e!2913722)))

(declare-fun c!799413 () Bool)

(assert (=> d!1484669 (= c!799413 ((_ is Cons!52003) (Cons!52003 (tuple2!53161 hash!414 lt!1830706) Nil!52003)))))

(assert (=> d!1484669 (forall!11098 (Cons!52003 (tuple2!53161 hash!414 lt!1830706) Nil!52003) lambda!202151)))

(assert (=> d!1484669 (= (extractMap!1734 (Cons!52003 (tuple2!53161 hash!414 lt!1830706) Nil!52003)) lt!1831172)))

(declare-fun b!4669158 () Bool)

(assert (=> b!4669158 (= e!2913722 (addToMapMapFromBucket!1135 (_2!29874 (h!58177 (Cons!52003 (tuple2!53161 hash!414 lt!1830706) Nil!52003))) (extractMap!1734 (t!359261 (Cons!52003 (tuple2!53161 hash!414 lt!1830706) Nil!52003)))))))

(declare-fun b!4669159 () Bool)

(assert (=> b!4669159 (= e!2913722 (ListMap!4626 Nil!52002))))

(assert (= (and d!1484669 c!799413) b!4669158))

(assert (= (and d!1484669 (not c!799413)) b!4669159))

(declare-fun m!5561029 () Bool)

(assert (=> d!1484669 m!5561029))

(declare-fun m!5561031 () Bool)

(assert (=> d!1484669 m!5561031))

(declare-fun m!5561033 () Bool)

(assert (=> b!4669158 m!5561033))

(assert (=> b!4669158 m!5561033))

(declare-fun m!5561035 () Bool)

(assert (=> b!4669158 m!5561035))

(assert (=> b!4668839 d!1484669))

(declare-fun d!1484671 () Bool)

(declare-fun e!2913723 () Bool)

(assert (=> d!1484671 e!2913723))

(declare-fun res!1965219 () Bool)

(assert (=> d!1484671 (=> (not res!1965219) (not e!2913723))))

(declare-fun lt!1831176 () ListMap!4625)

(assert (=> d!1484671 (= res!1965219 (contains!15205 lt!1831176 (_1!29873 lt!1830699)))))

(declare-fun lt!1831175 () List!52126)

(assert (=> d!1484671 (= lt!1831176 (ListMap!4626 lt!1831175))))

(declare-fun lt!1831173 () Unit!120784)

(declare-fun lt!1831174 () Unit!120784)

(assert (=> d!1484671 (= lt!1831173 lt!1831174)))

(assert (=> d!1484671 (= (getValueByKey!1667 lt!1831175 (_1!29873 lt!1830699)) (Some!11914 (_2!29873 lt!1830699)))))

(assert (=> d!1484671 (= lt!1831174 (lemmaContainsTupThenGetReturnValue!946 lt!1831175 (_1!29873 lt!1830699) (_2!29873 lt!1830699)))))

(assert (=> d!1484671 (= lt!1831175 (insertNoDuplicatedKeys!454 (toList!5285 (addToMapMapFromBucket!1135 lt!1830688 (ListMap!4626 Nil!52002))) (_1!29873 lt!1830699) (_2!29873 lt!1830699)))))

(assert (=> d!1484671 (= (+!2018 (addToMapMapFromBucket!1135 lt!1830688 (ListMap!4626 Nil!52002)) lt!1830699) lt!1831176)))

(declare-fun b!4669160 () Bool)

(declare-fun res!1965218 () Bool)

(assert (=> b!4669160 (=> (not res!1965218) (not e!2913723))))

(assert (=> b!4669160 (= res!1965218 (= (getValueByKey!1667 (toList!5285 lt!1831176) (_1!29873 lt!1830699)) (Some!11914 (_2!29873 lt!1830699))))))

(declare-fun b!4669161 () Bool)

(assert (=> b!4669161 (= e!2913723 (contains!15210 (toList!5285 lt!1831176) lt!1830699))))

(assert (= (and d!1484671 res!1965219) b!4669160))

(assert (= (and b!4669160 res!1965218) b!4669161))

(declare-fun m!5561037 () Bool)

(assert (=> d!1484671 m!5561037))

(declare-fun m!5561039 () Bool)

(assert (=> d!1484671 m!5561039))

(declare-fun m!5561041 () Bool)

(assert (=> d!1484671 m!5561041))

(declare-fun m!5561043 () Bool)

(assert (=> d!1484671 m!5561043))

(declare-fun m!5561045 () Bool)

(assert (=> b!4669160 m!5561045))

(declare-fun m!5561047 () Bool)

(assert (=> b!4669161 m!5561047))

(assert (=> b!4668839 d!1484671))

(declare-fun d!1484673 () Bool)

(assert (=> d!1484673 (eq!933 (addToMapMapFromBucket!1135 (Cons!52002 lt!1830699 lt!1830688) (ListMap!4626 Nil!52002)) (+!2018 (addToMapMapFromBucket!1135 lt!1830688 (ListMap!4626 Nil!52002)) lt!1830699))))

(declare-fun lt!1831177 () Unit!120784)

(assert (=> d!1484673 (= lt!1831177 (choose!32288 lt!1830699 lt!1830688 (ListMap!4626 Nil!52002)))))

(assert (=> d!1484673 (noDuplicateKeys!1678 lt!1830688)))

(assert (=> d!1484673 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!184 lt!1830699 lt!1830688 (ListMap!4626 Nil!52002)) lt!1831177)))

(declare-fun bs!1077983 () Bool)

(assert (= bs!1077983 d!1484673))

(assert (=> bs!1077983 m!5560319))

(assert (=> bs!1077983 m!5560319))

(assert (=> bs!1077983 m!5560321))

(assert (=> bs!1077983 m!5560323))

(assert (=> bs!1077983 m!5560917))

(assert (=> bs!1077983 m!5560333))

(assert (=> bs!1077983 m!5560321))

(declare-fun m!5561049 () Bool)

(assert (=> bs!1077983 m!5561049))

(assert (=> bs!1077983 m!5560333))

(assert (=> b!4668839 d!1484673))

(declare-fun bs!1077984 () Bool)

(declare-fun b!4669162 () Bool)

(assert (= bs!1077984 (and b!4669162 b!4669157)))

(declare-fun lambda!202152 () Int)

(assert (=> bs!1077984 (= (= (ListMap!4626 Nil!52002) lt!1831171) (= lambda!202152 lambda!202149))))

(declare-fun bs!1077985 () Bool)

(assert (= bs!1077985 (and b!4669162 b!4669131)))

(assert (=> bs!1077985 (= lambda!202152 lambda!202131)))

(declare-fun bs!1077986 () Bool)

(assert (= bs!1077986 (and b!4669162 b!4669135)))

(assert (=> bs!1077986 (= (= (ListMap!4626 Nil!52002) lt!1831080) (= lambda!202152 lambda!202135))))

(declare-fun bs!1077987 () Bool)

(assert (= bs!1077987 (and b!4669162 b!4668901)))

(assert (=> bs!1077987 (= (= (ListMap!4626 Nil!52002) lt!1830702) (= lambda!202152 lambda!202060))))

(declare-fun bs!1077988 () Bool)

(assert (= bs!1077988 (and b!4669162 b!4668897)))

(assert (=> bs!1077988 (= (= (ListMap!4626 Nil!52002) lt!1830702) (= lambda!202152 lambda!202059))))

(assert (=> bs!1077986 (= lambda!202152 lambda!202133)))

(declare-fun bs!1077989 () Bool)

(assert (= bs!1077989 (and b!4669162 d!1484645)))

(assert (=> bs!1077989 (= (= (ListMap!4626 Nil!52002) lt!1831046) (= lambda!202152 lambda!202130))))

(declare-fun bs!1077990 () Bool)

(assert (= bs!1077990 (and b!4669162 d!1484653)))

(assert (=> bs!1077990 (= (= (ListMap!4626 Nil!52002) lt!1831078) (= lambda!202152 lambda!202138))))

(declare-fun bs!1077991 () Bool)

(assert (= bs!1077991 (and b!4669162 b!4669121)))

(assert (=> bs!1077991 (= (= (ListMap!4626 Nil!52002) lt!1831048) (= lambda!202152 lambda!202129))))

(declare-fun bs!1077992 () Bool)

(assert (= bs!1077992 (and b!4669162 d!1484665)))

(assert (=> bs!1077992 (= (= (ListMap!4626 Nil!52002) lt!1831169) (= lambda!202152 lambda!202150))))

(declare-fun bs!1077993 () Bool)

(assert (= bs!1077993 (and b!4669162 d!1484529)))

(assert (=> bs!1077993 (= (= (ListMap!4626 Nil!52002) lt!1830796) (= lambda!202152 lambda!202062))))

(assert (=> bs!1077987 (= (= (ListMap!4626 Nil!52002) lt!1830798) (= lambda!202152 lambda!202061))))

(assert (=> bs!1077991 (= lambda!202152 lambda!202128)))

(declare-fun bs!1077994 () Bool)

(assert (= bs!1077994 (and b!4669162 b!4669117)))

(assert (=> bs!1077994 (= lambda!202152 lambda!202127)))

(declare-fun bs!1077995 () Bool)

(assert (= bs!1077995 (and b!4669162 d!1484555)))

(assert (=> bs!1077995 (not (= lambda!202152 lambda!202068))))

(assert (=> bs!1077984 (= lambda!202152 lambda!202147)))

(declare-fun bs!1077996 () Bool)

(assert (= bs!1077996 (and b!4669162 b!4669153)))

(assert (=> bs!1077996 (= lambda!202152 lambda!202146)))

(assert (=> b!4669162 true))

(declare-fun bs!1077997 () Bool)

(declare-fun b!4669166 () Bool)

(assert (= bs!1077997 (and b!4669166 b!4669157)))

(declare-fun lambda!202153 () Int)

(assert (=> bs!1077997 (= (= (ListMap!4626 Nil!52002) lt!1831171) (= lambda!202153 lambda!202149))))

(declare-fun bs!1077998 () Bool)

(assert (= bs!1077998 (and b!4669166 b!4669131)))

(assert (=> bs!1077998 (= lambda!202153 lambda!202131)))

(declare-fun bs!1077999 () Bool)

(assert (= bs!1077999 (and b!4669166 b!4669135)))

(assert (=> bs!1077999 (= (= (ListMap!4626 Nil!52002) lt!1831080) (= lambda!202153 lambda!202135))))

(declare-fun bs!1078000 () Bool)

(assert (= bs!1078000 (and b!4669166 b!4668901)))

(assert (=> bs!1078000 (= (= (ListMap!4626 Nil!52002) lt!1830702) (= lambda!202153 lambda!202060))))

(declare-fun bs!1078001 () Bool)

(assert (= bs!1078001 (and b!4669166 b!4668897)))

(assert (=> bs!1078001 (= (= (ListMap!4626 Nil!52002) lt!1830702) (= lambda!202153 lambda!202059))))

(assert (=> bs!1077999 (= lambda!202153 lambda!202133)))

(declare-fun bs!1078002 () Bool)

(assert (= bs!1078002 (and b!4669166 d!1484645)))

(assert (=> bs!1078002 (= (= (ListMap!4626 Nil!52002) lt!1831046) (= lambda!202153 lambda!202130))))

(declare-fun bs!1078003 () Bool)

(assert (= bs!1078003 (and b!4669166 d!1484653)))

(assert (=> bs!1078003 (= (= (ListMap!4626 Nil!52002) lt!1831078) (= lambda!202153 lambda!202138))))

(declare-fun bs!1078004 () Bool)

(assert (= bs!1078004 (and b!4669166 b!4669121)))

(assert (=> bs!1078004 (= (= (ListMap!4626 Nil!52002) lt!1831048) (= lambda!202153 lambda!202129))))

(declare-fun bs!1078005 () Bool)

(assert (= bs!1078005 (and b!4669166 d!1484665)))

(assert (=> bs!1078005 (= (= (ListMap!4626 Nil!52002) lt!1831169) (= lambda!202153 lambda!202150))))

(declare-fun bs!1078006 () Bool)

(assert (= bs!1078006 (and b!4669166 d!1484529)))

(assert (=> bs!1078006 (= (= (ListMap!4626 Nil!52002) lt!1830796) (= lambda!202153 lambda!202062))))

(assert (=> bs!1078000 (= (= (ListMap!4626 Nil!52002) lt!1830798) (= lambda!202153 lambda!202061))))

(assert (=> bs!1078004 (= lambda!202153 lambda!202128)))

(declare-fun bs!1078007 () Bool)

(assert (= bs!1078007 (and b!4669166 b!4669117)))

(assert (=> bs!1078007 (= lambda!202153 lambda!202127)))

(declare-fun bs!1078008 () Bool)

(assert (= bs!1078008 (and b!4669166 b!4669162)))

(assert (=> bs!1078008 (= lambda!202153 lambda!202152)))

(declare-fun bs!1078009 () Bool)

(assert (= bs!1078009 (and b!4669166 d!1484555)))

(assert (=> bs!1078009 (not (= lambda!202153 lambda!202068))))

(assert (=> bs!1077997 (= lambda!202153 lambda!202147)))

(declare-fun bs!1078010 () Bool)

(assert (= bs!1078010 (and b!4669166 b!4669153)))

(assert (=> bs!1078010 (= lambda!202153 lambda!202146)))

(assert (=> b!4669166 true))

(declare-fun lambda!202154 () Int)

(declare-fun lt!1831198 () ListMap!4625)

(assert (=> bs!1077997 (= (= lt!1831198 lt!1831171) (= lambda!202154 lambda!202149))))

(assert (=> b!4669166 (= (= lt!1831198 (ListMap!4626 Nil!52002)) (= lambda!202154 lambda!202153))))

(assert (=> bs!1077998 (= (= lt!1831198 (ListMap!4626 Nil!52002)) (= lambda!202154 lambda!202131))))

(assert (=> bs!1077999 (= (= lt!1831198 lt!1831080) (= lambda!202154 lambda!202135))))

(assert (=> bs!1078000 (= (= lt!1831198 lt!1830702) (= lambda!202154 lambda!202060))))

(assert (=> bs!1078001 (= (= lt!1831198 lt!1830702) (= lambda!202154 lambda!202059))))

(assert (=> bs!1077999 (= (= lt!1831198 (ListMap!4626 Nil!52002)) (= lambda!202154 lambda!202133))))

(assert (=> bs!1078002 (= (= lt!1831198 lt!1831046) (= lambda!202154 lambda!202130))))

(assert (=> bs!1078003 (= (= lt!1831198 lt!1831078) (= lambda!202154 lambda!202138))))

(assert (=> bs!1078004 (= (= lt!1831198 lt!1831048) (= lambda!202154 lambda!202129))))

(assert (=> bs!1078005 (= (= lt!1831198 lt!1831169) (= lambda!202154 lambda!202150))))

(assert (=> bs!1078006 (= (= lt!1831198 lt!1830796) (= lambda!202154 lambda!202062))))

(assert (=> bs!1078000 (= (= lt!1831198 lt!1830798) (= lambda!202154 lambda!202061))))

(assert (=> bs!1078004 (= (= lt!1831198 (ListMap!4626 Nil!52002)) (= lambda!202154 lambda!202128))))

(assert (=> bs!1078007 (= (= lt!1831198 (ListMap!4626 Nil!52002)) (= lambda!202154 lambda!202127))))

(assert (=> bs!1078008 (= (= lt!1831198 (ListMap!4626 Nil!52002)) (= lambda!202154 lambda!202152))))

(assert (=> bs!1078009 (not (= lambda!202154 lambda!202068))))

(assert (=> bs!1077997 (= (= lt!1831198 (ListMap!4626 Nil!52002)) (= lambda!202154 lambda!202147))))

(assert (=> bs!1078010 (= (= lt!1831198 (ListMap!4626 Nil!52002)) (= lambda!202154 lambda!202146))))

(assert (=> b!4669166 true))

(declare-fun bs!1078011 () Bool)

(declare-fun d!1484675 () Bool)

(assert (= bs!1078011 (and d!1484675 b!4669157)))

(declare-fun lambda!202155 () Int)

(declare-fun lt!1831196 () ListMap!4625)

(assert (=> bs!1078011 (= (= lt!1831196 lt!1831171) (= lambda!202155 lambda!202149))))

(declare-fun bs!1078012 () Bool)

(assert (= bs!1078012 (and d!1484675 b!4669166)))

(assert (=> bs!1078012 (= (= lt!1831196 (ListMap!4626 Nil!52002)) (= lambda!202155 lambda!202153))))

(declare-fun bs!1078013 () Bool)

(assert (= bs!1078013 (and d!1484675 b!4669131)))

(assert (=> bs!1078013 (= (= lt!1831196 (ListMap!4626 Nil!52002)) (= lambda!202155 lambda!202131))))

(declare-fun bs!1078014 () Bool)

(assert (= bs!1078014 (and d!1484675 b!4669135)))

(assert (=> bs!1078014 (= (= lt!1831196 lt!1831080) (= lambda!202155 lambda!202135))))

(declare-fun bs!1078015 () Bool)

(assert (= bs!1078015 (and d!1484675 b!4668901)))

(assert (=> bs!1078015 (= (= lt!1831196 lt!1830702) (= lambda!202155 lambda!202060))))

(declare-fun bs!1078016 () Bool)

(assert (= bs!1078016 (and d!1484675 b!4668897)))

(assert (=> bs!1078016 (= (= lt!1831196 lt!1830702) (= lambda!202155 lambda!202059))))

(assert (=> bs!1078012 (= (= lt!1831196 lt!1831198) (= lambda!202155 lambda!202154))))

(assert (=> bs!1078014 (= (= lt!1831196 (ListMap!4626 Nil!52002)) (= lambda!202155 lambda!202133))))

(declare-fun bs!1078017 () Bool)

(assert (= bs!1078017 (and d!1484675 d!1484645)))

(assert (=> bs!1078017 (= (= lt!1831196 lt!1831046) (= lambda!202155 lambda!202130))))

(declare-fun bs!1078018 () Bool)

(assert (= bs!1078018 (and d!1484675 d!1484653)))

(assert (=> bs!1078018 (= (= lt!1831196 lt!1831078) (= lambda!202155 lambda!202138))))

(declare-fun bs!1078019 () Bool)

(assert (= bs!1078019 (and d!1484675 b!4669121)))

(assert (=> bs!1078019 (= (= lt!1831196 lt!1831048) (= lambda!202155 lambda!202129))))

(declare-fun bs!1078020 () Bool)

(assert (= bs!1078020 (and d!1484675 d!1484665)))

(assert (=> bs!1078020 (= (= lt!1831196 lt!1831169) (= lambda!202155 lambda!202150))))

(declare-fun bs!1078021 () Bool)

(assert (= bs!1078021 (and d!1484675 d!1484529)))

(assert (=> bs!1078021 (= (= lt!1831196 lt!1830796) (= lambda!202155 lambda!202062))))

(assert (=> bs!1078015 (= (= lt!1831196 lt!1830798) (= lambda!202155 lambda!202061))))

(assert (=> bs!1078019 (= (= lt!1831196 (ListMap!4626 Nil!52002)) (= lambda!202155 lambda!202128))))

(declare-fun bs!1078022 () Bool)

(assert (= bs!1078022 (and d!1484675 b!4669117)))

(assert (=> bs!1078022 (= (= lt!1831196 (ListMap!4626 Nil!52002)) (= lambda!202155 lambda!202127))))

(declare-fun bs!1078023 () Bool)

(assert (= bs!1078023 (and d!1484675 b!4669162)))

(assert (=> bs!1078023 (= (= lt!1831196 (ListMap!4626 Nil!52002)) (= lambda!202155 lambda!202152))))

(declare-fun bs!1078024 () Bool)

(assert (= bs!1078024 (and d!1484675 d!1484555)))

(assert (=> bs!1078024 (not (= lambda!202155 lambda!202068))))

(assert (=> bs!1078011 (= (= lt!1831196 (ListMap!4626 Nil!52002)) (= lambda!202155 lambda!202147))))

(declare-fun bs!1078025 () Bool)

(assert (= bs!1078025 (and d!1484675 b!4669153)))

(assert (=> bs!1078025 (= (= lt!1831196 (ListMap!4626 Nil!52002)) (= lambda!202155 lambda!202146))))

(assert (=> d!1484675 true))

(declare-fun bm!326355 () Bool)

(declare-fun c!799414 () Bool)

(declare-fun call!326360 () Bool)

(assert (=> bm!326355 (= call!326360 (forall!11097 (ite c!799414 (toList!5285 (ListMap!4626 Nil!52002)) (t!359260 (Cons!52002 lt!1830699 lt!1830688))) (ite c!799414 lambda!202152 lambda!202154)))))

(declare-fun e!2913725 () ListMap!4625)

(assert (=> b!4669162 (= e!2913725 (ListMap!4626 Nil!52002))))

(declare-fun lt!1831190 () Unit!120784)

(declare-fun call!326362 () Unit!120784)

(assert (=> b!4669162 (= lt!1831190 call!326362)))

(declare-fun call!326361 () Bool)

(assert (=> b!4669162 call!326361))

(declare-fun lt!1831186 () Unit!120784)

(assert (=> b!4669162 (= lt!1831186 lt!1831190)))

(assert (=> b!4669162 call!326360))

(declare-fun lt!1831197 () Unit!120784)

(declare-fun Unit!120893 () Unit!120784)

(assert (=> b!4669162 (= lt!1831197 Unit!120893)))

(declare-fun bm!326356 () Bool)

(assert (=> bm!326356 (= call!326361 (forall!11097 (ite c!799414 (toList!5285 (ListMap!4626 Nil!52002)) (Cons!52002 lt!1830699 lt!1830688)) (ite c!799414 lambda!202152 lambda!202154)))))

(declare-fun b!4669163 () Bool)

(declare-fun e!2913726 () Bool)

(assert (=> b!4669163 (= e!2913726 (invariantList!1327 (toList!5285 lt!1831196)))))

(assert (=> d!1484675 e!2913726))

(declare-fun res!1965221 () Bool)

(assert (=> d!1484675 (=> (not res!1965221) (not e!2913726))))

(assert (=> d!1484675 (= res!1965221 (forall!11097 (Cons!52002 lt!1830699 lt!1830688) lambda!202155))))

(assert (=> d!1484675 (= lt!1831196 e!2913725)))

(assert (=> d!1484675 (= c!799414 ((_ is Nil!52002) (Cons!52002 lt!1830699 lt!1830688)))))

(assert (=> d!1484675 (noDuplicateKeys!1678 (Cons!52002 lt!1830699 lt!1830688))))

(assert (=> d!1484675 (= (addToMapMapFromBucket!1135 (Cons!52002 lt!1830699 lt!1830688) (ListMap!4626 Nil!52002)) lt!1831196)))

(declare-fun b!4669164 () Bool)

(declare-fun res!1965222 () Bool)

(assert (=> b!4669164 (=> (not res!1965222) (not e!2913726))))

(assert (=> b!4669164 (= res!1965222 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202155))))

(declare-fun b!4669165 () Bool)

(declare-fun e!2913724 () Bool)

(assert (=> b!4669165 (= e!2913724 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202154))))

(assert (=> b!4669166 (= e!2913725 lt!1831198)))

(declare-fun lt!1831195 () ListMap!4625)

(assert (=> b!4669166 (= lt!1831195 (+!2018 (ListMap!4626 Nil!52002) (h!58176 (Cons!52002 lt!1830699 lt!1830688))))))

(assert (=> b!4669166 (= lt!1831198 (addToMapMapFromBucket!1135 (t!359260 (Cons!52002 lt!1830699 lt!1830688)) (+!2018 (ListMap!4626 Nil!52002) (h!58176 (Cons!52002 lt!1830699 lt!1830688)))))))

(declare-fun lt!1831184 () Unit!120784)

(assert (=> b!4669166 (= lt!1831184 call!326362)))

(assert (=> b!4669166 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202153)))

(declare-fun lt!1831182 () Unit!120784)

(assert (=> b!4669166 (= lt!1831182 lt!1831184)))

(assert (=> b!4669166 (forall!11097 (toList!5285 lt!1831195) lambda!202154)))

(declare-fun lt!1831189 () Unit!120784)

(declare-fun Unit!120894 () Unit!120784)

(assert (=> b!4669166 (= lt!1831189 Unit!120894)))

(assert (=> b!4669166 call!326360))

(declare-fun lt!1831188 () Unit!120784)

(declare-fun Unit!120895 () Unit!120784)

(assert (=> b!4669166 (= lt!1831188 Unit!120895)))

(declare-fun lt!1831183 () Unit!120784)

(declare-fun Unit!120896 () Unit!120784)

(assert (=> b!4669166 (= lt!1831183 Unit!120896)))

(declare-fun lt!1831192 () Unit!120784)

(assert (=> b!4669166 (= lt!1831192 (forallContained!3303 (toList!5285 lt!1831195) lambda!202154 (h!58176 (Cons!52002 lt!1830699 lt!1830688))))))

(assert (=> b!4669166 (contains!15205 lt!1831195 (_1!29873 (h!58176 (Cons!52002 lt!1830699 lt!1830688))))))

(declare-fun lt!1831187 () Unit!120784)

(declare-fun Unit!120897 () Unit!120784)

(assert (=> b!4669166 (= lt!1831187 Unit!120897)))

(assert (=> b!4669166 (contains!15205 lt!1831198 (_1!29873 (h!58176 (Cons!52002 lt!1830699 lt!1830688))))))

(declare-fun lt!1831179 () Unit!120784)

(declare-fun Unit!120898 () Unit!120784)

(assert (=> b!4669166 (= lt!1831179 Unit!120898)))

(assert (=> b!4669166 call!326361))

(declare-fun lt!1831193 () Unit!120784)

(declare-fun Unit!120899 () Unit!120784)

(assert (=> b!4669166 (= lt!1831193 Unit!120899)))

(assert (=> b!4669166 (forall!11097 (toList!5285 lt!1831195) lambda!202154)))

(declare-fun lt!1831185 () Unit!120784)

(declare-fun Unit!120900 () Unit!120784)

(assert (=> b!4669166 (= lt!1831185 Unit!120900)))

(declare-fun lt!1831191 () Unit!120784)

(declare-fun Unit!120901 () Unit!120784)

(assert (=> b!4669166 (= lt!1831191 Unit!120901)))

(declare-fun lt!1831178 () Unit!120784)

(assert (=> b!4669166 (= lt!1831178 (addForallContainsKeyThenBeforeAdding!626 (ListMap!4626 Nil!52002) lt!1831198 (_1!29873 (h!58176 (Cons!52002 lt!1830699 lt!1830688))) (_2!29873 (h!58176 (Cons!52002 lt!1830699 lt!1830688)))))))

(assert (=> b!4669166 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202154)))

(declare-fun lt!1831194 () Unit!120784)

(assert (=> b!4669166 (= lt!1831194 lt!1831178)))

(assert (=> b!4669166 (forall!11097 (toList!5285 (ListMap!4626 Nil!52002)) lambda!202154)))

(declare-fun lt!1831181 () Unit!120784)

(declare-fun Unit!120902 () Unit!120784)

(assert (=> b!4669166 (= lt!1831181 Unit!120902)))

(declare-fun res!1965220 () Bool)

(assert (=> b!4669166 (= res!1965220 (forall!11097 (Cons!52002 lt!1830699 lt!1830688) lambda!202154))))

(assert (=> b!4669166 (=> (not res!1965220) (not e!2913724))))

(assert (=> b!4669166 e!2913724))

(declare-fun lt!1831180 () Unit!120784)

(declare-fun Unit!120903 () Unit!120784)

(assert (=> b!4669166 (= lt!1831180 Unit!120903)))

(declare-fun bm!326357 () Bool)

(assert (=> bm!326357 (= call!326362 (lemmaContainsAllItsOwnKeys!627 (ListMap!4626 Nil!52002)))))

(assert (= (and d!1484675 c!799414) b!4669162))

(assert (= (and d!1484675 (not c!799414)) b!4669166))

(assert (= (and b!4669166 res!1965220) b!4669165))

(assert (= (or b!4669162 b!4669166) bm!326357))

(assert (= (or b!4669162 b!4669166) bm!326356))

(assert (= (or b!4669162 b!4669166) bm!326355))

(assert (= (and d!1484675 res!1965221) b!4669164))

(assert (= (and b!4669164 res!1965222) b!4669163))

(declare-fun m!5561051 () Bool)

(assert (=> b!4669165 m!5561051))

(declare-fun m!5561053 () Bool)

(assert (=> bm!326355 m!5561053))

(declare-fun m!5561055 () Bool)

(assert (=> b!4669164 m!5561055))

(declare-fun m!5561057 () Bool)

(assert (=> b!4669166 m!5561057))

(declare-fun m!5561059 () Bool)

(assert (=> b!4669166 m!5561059))

(declare-fun m!5561061 () Bool)

(assert (=> b!4669166 m!5561061))

(declare-fun m!5561063 () Bool)

(assert (=> b!4669166 m!5561063))

(declare-fun m!5561065 () Bool)

(assert (=> b!4669166 m!5561065))

(assert (=> b!4669166 m!5561057))

(declare-fun m!5561067 () Bool)

(assert (=> b!4669166 m!5561067))

(assert (=> b!4669166 m!5561051))

(declare-fun m!5561069 () Bool)

(assert (=> b!4669166 m!5561069))

(assert (=> b!4669166 m!5561061))

(declare-fun m!5561071 () Bool)

(assert (=> b!4669166 m!5561071))

(assert (=> b!4669166 m!5561051))

(declare-fun m!5561073 () Bool)

(assert (=> b!4669166 m!5561073))

(declare-fun m!5561075 () Bool)

(assert (=> b!4669163 m!5561075))

(declare-fun m!5561077 () Bool)

(assert (=> bm!326356 m!5561077))

(declare-fun m!5561079 () Bool)

(assert (=> d!1484675 m!5561079))

(declare-fun m!5561081 () Bool)

(assert (=> d!1484675 m!5561081))

(assert (=> bm!326357 m!5560831))

(assert (=> b!4668839 d!1484675))

(declare-fun bs!1078026 () Bool)

(declare-fun d!1484677 () Bool)

(assert (= bs!1078026 (and d!1484677 d!1484669)))

(declare-fun lambda!202156 () Int)

(assert (=> bs!1078026 (= lambda!202156 lambda!202151)))

(declare-fun bs!1078027 () Bool)

(assert (= bs!1078027 (and d!1484677 d!1484553)))

(assert (=> bs!1078027 (= lambda!202156 lambda!202065)))

(declare-fun bs!1078028 () Bool)

(assert (= bs!1078028 (and d!1484677 d!1484599)))

(assert (=> bs!1078028 (= lambda!202156 lambda!202115)))

(declare-fun bs!1078029 () Bool)

(assert (= bs!1078029 (and d!1484677 d!1484581)))

(assert (=> bs!1078029 (= lambda!202156 lambda!202112)))

(declare-fun bs!1078030 () Bool)

(assert (= bs!1078030 (and d!1484677 d!1484559)))

(assert (=> bs!1078030 (= lambda!202156 lambda!202069)))

(declare-fun bs!1078031 () Bool)

(assert (= bs!1078031 (and d!1484677 b!4668837)))

(assert (=> bs!1078031 (= lambda!202156 lambda!202026)))

(declare-fun lt!1831215 () ListMap!4625)

(assert (=> d!1484677 (invariantList!1327 (toList!5285 lt!1831215))))

(declare-fun e!2913739 () ListMap!4625)

(assert (=> d!1484677 (= lt!1831215 e!2913739)))

(declare-fun c!799421 () Bool)

(assert (=> d!1484677 (= c!799421 ((_ is Cons!52003) lt!1830711))))

(assert (=> d!1484677 (forall!11098 lt!1830711 lambda!202156)))

(assert (=> d!1484677 (= (extractMap!1734 lt!1830711) lt!1831215)))

(declare-fun b!4669185 () Bool)

(assert (=> b!4669185 (= e!2913739 (addToMapMapFromBucket!1135 (_2!29874 (h!58177 lt!1830711)) (extractMap!1734 (t!359261 lt!1830711))))))

(declare-fun b!4669186 () Bool)

(assert (=> b!4669186 (= e!2913739 (ListMap!4626 Nil!52002))))

(assert (= (and d!1484677 c!799421) b!4669185))

(assert (= (and d!1484677 (not c!799421)) b!4669186))

(declare-fun m!5561083 () Bool)

(assert (=> d!1484677 m!5561083))

(declare-fun m!5561085 () Bool)

(assert (=> d!1484677 m!5561085))

(declare-fun m!5561087 () Bool)

(assert (=> b!4669185 m!5561087))

(assert (=> b!4669185 m!5561087))

(declare-fun m!5561089 () Bool)

(assert (=> b!4669185 m!5561089))

(assert (=> b!4668839 d!1484677))

(declare-fun d!1484679 () Bool)

(assert (=> d!1484679 (= (eq!933 (addToMapMapFromBucket!1135 (Cons!52002 lt!1830692 lt!1830706) (ListMap!4626 Nil!52002)) (+!2018 (addToMapMapFromBucket!1135 lt!1830706 (ListMap!4626 Nil!52002)) lt!1830692)) (= (content!9059 (toList!5285 (addToMapMapFromBucket!1135 (Cons!52002 lt!1830692 lt!1830706) (ListMap!4626 Nil!52002)))) (content!9059 (toList!5285 (+!2018 (addToMapMapFromBucket!1135 lt!1830706 (ListMap!4626 Nil!52002)) lt!1830692)))))))

(declare-fun bs!1078032 () Bool)

(assert (= bs!1078032 d!1484679))

(declare-fun m!5561091 () Bool)

(assert (=> bs!1078032 m!5561091))

(declare-fun m!5561093 () Bool)

(assert (=> bs!1078032 m!5561093))

(assert (=> b!4668839 d!1484679))

(declare-fun d!1484681 () Bool)

(declare-fun e!2913746 () Bool)

(assert (=> d!1484681 e!2913746))

(declare-fun res!1965233 () Bool)

(assert (=> d!1484681 (=> (not res!1965233) (not e!2913746))))

(declare-fun lt!1831227 () ListMap!4625)

(assert (=> d!1484681 (= res!1965233 (contains!15205 lt!1831227 (_1!29873 (h!58176 oldBucket!40))))))

(declare-fun lt!1831226 () List!52126)

(assert (=> d!1484681 (= lt!1831227 (ListMap!4626 lt!1831226))))

(declare-fun lt!1831224 () Unit!120784)

(declare-fun lt!1831225 () Unit!120784)

(assert (=> d!1484681 (= lt!1831224 lt!1831225)))

(assert (=> d!1484681 (= (getValueByKey!1667 lt!1831226 (_1!29873 (h!58176 oldBucket!40))) (Some!11914 (_2!29873 (h!58176 oldBucket!40))))))

(assert (=> d!1484681 (= lt!1831225 (lemmaContainsTupThenGetReturnValue!946 lt!1831226 (_1!29873 (h!58176 oldBucket!40)) (_2!29873 (h!58176 oldBucket!40))))))

(assert (=> d!1484681 (= lt!1831226 (insertNoDuplicatedKeys!454 (toList!5285 (extractMap!1734 (Cons!52003 (tuple2!53161 hash!414 lt!1830706) Nil!52003))) (_1!29873 (h!58176 oldBucket!40)) (_2!29873 (h!58176 oldBucket!40))))))

(assert (=> d!1484681 (= (+!2018 (extractMap!1734 (Cons!52003 (tuple2!53161 hash!414 lt!1830706) Nil!52003)) (h!58176 oldBucket!40)) lt!1831227)))

(declare-fun b!4669196 () Bool)

(declare-fun res!1965232 () Bool)

(assert (=> b!4669196 (=> (not res!1965232) (not e!2913746))))

(assert (=> b!4669196 (= res!1965232 (= (getValueByKey!1667 (toList!5285 lt!1831227) (_1!29873 (h!58176 oldBucket!40))) (Some!11914 (_2!29873 (h!58176 oldBucket!40)))))))

(declare-fun b!4669197 () Bool)

(assert (=> b!4669197 (= e!2913746 (contains!15210 (toList!5285 lt!1831227) (h!58176 oldBucket!40)))))

(assert (= (and d!1484681 res!1965233) b!4669196))

(assert (= (and b!4669196 res!1965232) b!4669197))

(declare-fun m!5561095 () Bool)

(assert (=> d!1484681 m!5561095))

(declare-fun m!5561097 () Bool)

(assert (=> d!1484681 m!5561097))

(declare-fun m!5561099 () Bool)

(assert (=> d!1484681 m!5561099))

(declare-fun m!5561101 () Bool)

(assert (=> d!1484681 m!5561101))

(declare-fun m!5561103 () Bool)

(assert (=> b!4669196 m!5561103))

(declare-fun m!5561105 () Bool)

(assert (=> b!4669197 m!5561105))

(assert (=> b!4668839 d!1484681))

(declare-fun d!1484683 () Bool)

(assert (=> d!1484683 (= (eq!933 lt!1830696 (+!2018 (extractMap!1734 (Cons!52003 (tuple2!53161 hash!414 lt!1830706) Nil!52003)) (h!58176 oldBucket!40))) (= (content!9059 (toList!5285 lt!1830696)) (content!9059 (toList!5285 (+!2018 (extractMap!1734 (Cons!52003 (tuple2!53161 hash!414 lt!1830706) Nil!52003)) (h!58176 oldBucket!40))))))))

(declare-fun bs!1078033 () Bool)

(assert (= bs!1078033 d!1484683))

(assert (=> bs!1078033 m!5560677))

(declare-fun m!5561115 () Bool)

(assert (=> bs!1078033 m!5561115))

(assert (=> b!4668839 d!1484683))

(declare-fun bs!1078083 () Bool)

(declare-fun d!1484685 () Bool)

(assert (= bs!1078083 (and d!1484685 d!1484677)))

(declare-fun lambda!202164 () Int)

(assert (=> bs!1078083 (= lambda!202164 lambda!202156)))

(declare-fun bs!1078084 () Bool)

(assert (= bs!1078084 (and d!1484685 d!1484669)))

(assert (=> bs!1078084 (= lambda!202164 lambda!202151)))

(declare-fun bs!1078085 () Bool)

(assert (= bs!1078085 (and d!1484685 d!1484553)))

(assert (=> bs!1078085 (= lambda!202164 lambda!202065)))

(declare-fun bs!1078086 () Bool)

(assert (= bs!1078086 (and d!1484685 d!1484599)))

(assert (=> bs!1078086 (= lambda!202164 lambda!202115)))

(declare-fun bs!1078087 () Bool)

(assert (= bs!1078087 (and d!1484685 d!1484581)))

(assert (=> bs!1078087 (= lambda!202164 lambda!202112)))

(declare-fun bs!1078088 () Bool)

(assert (= bs!1078088 (and d!1484685 d!1484559)))

(assert (=> bs!1078088 (= lambda!202164 lambda!202069)))

(declare-fun bs!1078089 () Bool)

(assert (= bs!1078089 (and d!1484685 b!4668837)))

(assert (=> bs!1078089 (= lambda!202164 lambda!202026)))

(assert (=> d!1484685 (contains!15205 (extractMap!1734 (toList!5286 (ListLongMap!3840 lt!1830711))) key!4968)))

(declare-fun lt!1831256 () Unit!120784)

(declare-fun choose!32292 (ListLongMap!3839 K!13345 Hashable!6075) Unit!120784)

(assert (=> d!1484685 (= lt!1831256 (choose!32292 (ListLongMap!3840 lt!1830711) key!4968 hashF!1389))))

(assert (=> d!1484685 (forall!11098 (toList!5286 (ListLongMap!3840 lt!1830711)) lambda!202164)))

(assert (=> d!1484685 (= (lemmaListContainsThenExtractedMapContains!412 (ListLongMap!3840 lt!1830711) key!4968 hashF!1389) lt!1831256)))

(declare-fun bs!1078090 () Bool)

(assert (= bs!1078090 d!1484685))

(declare-fun m!5561169 () Bool)

(assert (=> bs!1078090 m!5561169))

(assert (=> bs!1078090 m!5561169))

(declare-fun m!5561175 () Bool)

(assert (=> bs!1078090 m!5561175))

(declare-fun m!5561179 () Bool)

(assert (=> bs!1078090 m!5561179))

(declare-fun m!5561183 () Bool)

(assert (=> bs!1078090 m!5561183))

(assert (=> b!4668839 d!1484685))

(declare-fun d!1484693 () Bool)

(assert (=> d!1484693 (= (eq!933 (addToMapMapFromBucket!1135 (Cons!52002 lt!1830699 lt!1830688) (ListMap!4626 Nil!52002)) (+!2018 (addToMapMapFromBucket!1135 lt!1830688 (ListMap!4626 Nil!52002)) lt!1830699)) (= (content!9059 (toList!5285 (addToMapMapFromBucket!1135 (Cons!52002 lt!1830699 lt!1830688) (ListMap!4626 Nil!52002)))) (content!9059 (toList!5285 (+!2018 (addToMapMapFromBucket!1135 lt!1830688 (ListMap!4626 Nil!52002)) lt!1830699)))))))

(declare-fun bs!1078091 () Bool)

(assert (= bs!1078091 d!1484693))

(declare-fun m!5561187 () Bool)

(assert (=> bs!1078091 m!5561187))

(declare-fun m!5561189 () Bool)

(assert (=> bs!1078091 m!5561189))

(assert (=> b!4668839 d!1484693))

(declare-fun b!4669208 () Bool)

(declare-fun e!2913752 () List!52126)

(declare-fun e!2913753 () List!52126)

(assert (=> b!4669208 (= e!2913752 e!2913753)))

(declare-fun c!799428 () Bool)

(assert (=> b!4669208 (= c!799428 ((_ is Cons!52002) oldBucket!40))))

(declare-fun b!4669209 () Bool)

(assert (=> b!4669209 (= e!2913753 (Cons!52002 (h!58176 oldBucket!40) (removePairForKey!1301 (t!359260 oldBucket!40) key!4968)))))

(declare-fun b!4669207 () Bool)

(assert (=> b!4669207 (= e!2913752 (t!359260 oldBucket!40))))

(declare-fun b!4669210 () Bool)

(assert (=> b!4669210 (= e!2913753 Nil!52002)))

(declare-fun d!1484697 () Bool)

(declare-fun lt!1831257 () List!52126)

(assert (=> d!1484697 (not (containsKey!2816 lt!1831257 key!4968))))

(assert (=> d!1484697 (= lt!1831257 e!2913752)))

(declare-fun c!799427 () Bool)

(assert (=> d!1484697 (= c!799427 (and ((_ is Cons!52002) oldBucket!40) (= (_1!29873 (h!58176 oldBucket!40)) key!4968)))))

(assert (=> d!1484697 (noDuplicateKeys!1678 oldBucket!40)))

(assert (=> d!1484697 (= (removePairForKey!1301 oldBucket!40 key!4968) lt!1831257)))

(assert (= (and d!1484697 c!799427) b!4669207))

(assert (= (and d!1484697 (not c!799427)) b!4669208))

(assert (= (and b!4669208 c!799428) b!4669209))

(assert (= (and b!4669208 (not c!799428)) b!4669210))

(assert (=> b!4669209 m!5560365))

(declare-fun m!5561195 () Bool)

(assert (=> d!1484697 m!5561195))

(assert (=> d!1484697 m!5560341))

(assert (=> b!4668836 d!1484697))

(declare-fun d!1484701 () Bool)

(declare-fun res!1965241 () Bool)

(declare-fun e!2913755 () Bool)

(assert (=> d!1484701 (=> res!1965241 e!2913755)))

(assert (=> d!1484701 (= res!1965241 (not ((_ is Cons!52002) newBucket!224)))))

(assert (=> d!1484701 (= (noDuplicateKeys!1678 newBucket!224) e!2913755)))

(declare-fun b!4669213 () Bool)

(declare-fun e!2913756 () Bool)

(assert (=> b!4669213 (= e!2913755 e!2913756)))

(declare-fun res!1965242 () Bool)

(assert (=> b!4669213 (=> (not res!1965242) (not e!2913756))))

(assert (=> b!4669213 (= res!1965242 (not (containsKey!2816 (t!359260 newBucket!224) (_1!29873 (h!58176 newBucket!224)))))))

(declare-fun b!4669214 () Bool)

(assert (=> b!4669214 (= e!2913756 (noDuplicateKeys!1678 (t!359260 newBucket!224)))))

(assert (= (and d!1484701 (not res!1965241)) b!4669213))

(assert (= (and b!4669213 res!1965242) b!4669214))

(declare-fun m!5561203 () Bool)

(assert (=> b!4669213 m!5561203))

(declare-fun m!5561205 () Bool)

(assert (=> b!4669214 m!5561205))

(assert (=> b!4668826 d!1484701))

(declare-fun bs!1078093 () Bool)

(declare-fun d!1484703 () Bool)

(assert (= bs!1078093 (and d!1484703 b!4669157)))

(declare-fun lambda!202165 () Int)

(assert (=> bs!1078093 (not (= lambda!202165 lambda!202149))))

(declare-fun bs!1078094 () Bool)

(assert (= bs!1078094 (and d!1484703 b!4669166)))

(assert (=> bs!1078094 (not (= lambda!202165 lambda!202153))))

(declare-fun bs!1078095 () Bool)

(assert (= bs!1078095 (and d!1484703 b!4669135)))

(assert (=> bs!1078095 (not (= lambda!202165 lambda!202135))))

(declare-fun bs!1078096 () Bool)

(assert (= bs!1078096 (and d!1484703 b!4668901)))

(assert (=> bs!1078096 (not (= lambda!202165 lambda!202060))))

(declare-fun bs!1078097 () Bool)

(assert (= bs!1078097 (and d!1484703 b!4668897)))

(assert (=> bs!1078097 (not (= lambda!202165 lambda!202059))))

(assert (=> bs!1078094 (not (= lambda!202165 lambda!202154))))

(assert (=> bs!1078095 (not (= lambda!202165 lambda!202133))))

(declare-fun bs!1078098 () Bool)

(assert (= bs!1078098 (and d!1484703 d!1484645)))

(assert (=> bs!1078098 (not (= lambda!202165 lambda!202130))))

(declare-fun bs!1078099 () Bool)

(assert (= bs!1078099 (and d!1484703 d!1484653)))

(assert (=> bs!1078099 (not (= lambda!202165 lambda!202138))))

(declare-fun bs!1078100 () Bool)

(assert (= bs!1078100 (and d!1484703 b!4669121)))

(assert (=> bs!1078100 (not (= lambda!202165 lambda!202129))))

(declare-fun bs!1078101 () Bool)

(assert (= bs!1078101 (and d!1484703 d!1484665)))

(assert (=> bs!1078101 (not (= lambda!202165 lambda!202150))))

(declare-fun bs!1078102 () Bool)

(assert (= bs!1078102 (and d!1484703 d!1484675)))

(assert (=> bs!1078102 (not (= lambda!202165 lambda!202155))))

(declare-fun bs!1078103 () Bool)

(assert (= bs!1078103 (and d!1484703 b!4669131)))

(assert (=> bs!1078103 (not (= lambda!202165 lambda!202131))))

(declare-fun bs!1078104 () Bool)

(assert (= bs!1078104 (and d!1484703 d!1484529)))

(assert (=> bs!1078104 (not (= lambda!202165 lambda!202062))))

(assert (=> bs!1078096 (not (= lambda!202165 lambda!202061))))

(assert (=> bs!1078100 (not (= lambda!202165 lambda!202128))))

(declare-fun bs!1078105 () Bool)

(assert (= bs!1078105 (and d!1484703 b!4669117)))

(assert (=> bs!1078105 (not (= lambda!202165 lambda!202127))))

(declare-fun bs!1078106 () Bool)

(assert (= bs!1078106 (and d!1484703 b!4669162)))

(assert (=> bs!1078106 (not (= lambda!202165 lambda!202152))))

(declare-fun bs!1078107 () Bool)

(assert (= bs!1078107 (and d!1484703 d!1484555)))

(assert (=> bs!1078107 (= lambda!202165 lambda!202068)))

(assert (=> bs!1078093 (not (= lambda!202165 lambda!202147))))

(declare-fun bs!1078108 () Bool)

(assert (= bs!1078108 (and d!1484703 b!4669153)))

(assert (=> bs!1078108 (not (= lambda!202165 lambda!202146))))

(assert (=> d!1484703 true))

(assert (=> d!1484703 true))

(assert (=> d!1484703 (= (allKeysSameHash!1532 oldBucket!40 hash!414 hashF!1389) (forall!11097 oldBucket!40 lambda!202165))))

(declare-fun bs!1078109 () Bool)

(assert (= bs!1078109 d!1484703))

(declare-fun m!5561213 () Bool)

(assert (=> bs!1078109 m!5561213))

(assert (=> b!4668832 d!1484703))

(declare-fun d!1484707 () Bool)

(assert (=> d!1484707 (= (eq!933 lt!1830693 (+!2018 lt!1830691 lt!1830699)) (= (content!9059 (toList!5285 lt!1830693)) (content!9059 (toList!5285 (+!2018 lt!1830691 lt!1830699)))))))

(declare-fun bs!1078110 () Bool)

(assert (= bs!1078110 d!1484707))

(declare-fun m!5561215 () Bool)

(assert (=> bs!1078110 m!5561215))

(declare-fun m!5561217 () Bool)

(assert (=> bs!1078110 m!5561217))

(assert (=> b!4668833 d!1484707))

(declare-fun d!1484709 () Bool)

(declare-fun e!2913757 () Bool)

(assert (=> d!1484709 e!2913757))

(declare-fun res!1965244 () Bool)

(assert (=> d!1484709 (=> (not res!1965244) (not e!2913757))))

(declare-fun lt!1831265 () ListMap!4625)

(assert (=> d!1484709 (= res!1965244 (contains!15205 lt!1831265 (_1!29873 lt!1830699)))))

(declare-fun lt!1831264 () List!52126)

(assert (=> d!1484709 (= lt!1831265 (ListMap!4626 lt!1831264))))

(declare-fun lt!1831262 () Unit!120784)

(declare-fun lt!1831263 () Unit!120784)

(assert (=> d!1484709 (= lt!1831262 lt!1831263)))

(assert (=> d!1484709 (= (getValueByKey!1667 lt!1831264 (_1!29873 lt!1830699)) (Some!11914 (_2!29873 lt!1830699)))))

(assert (=> d!1484709 (= lt!1831263 (lemmaContainsTupThenGetReturnValue!946 lt!1831264 (_1!29873 lt!1830699) (_2!29873 lt!1830699)))))

(assert (=> d!1484709 (= lt!1831264 (insertNoDuplicatedKeys!454 (toList!5285 lt!1830691) (_1!29873 lt!1830699) (_2!29873 lt!1830699)))))

(assert (=> d!1484709 (= (+!2018 lt!1830691 lt!1830699) lt!1831265)))

(declare-fun b!4669215 () Bool)

(declare-fun res!1965243 () Bool)

(assert (=> b!4669215 (=> (not res!1965243) (not e!2913757))))

(assert (=> b!4669215 (= res!1965243 (= (getValueByKey!1667 (toList!5285 lt!1831265) (_1!29873 lt!1830699)) (Some!11914 (_2!29873 lt!1830699))))))

(declare-fun b!4669216 () Bool)

(assert (=> b!4669216 (= e!2913757 (contains!15210 (toList!5285 lt!1831265) lt!1830699))))

(assert (= (and d!1484709 res!1965244) b!4669215))

(assert (= (and b!4669215 res!1965243) b!4669216))

(declare-fun m!5561219 () Bool)

(assert (=> d!1484709 m!5561219))

(declare-fun m!5561221 () Bool)

(assert (=> d!1484709 m!5561221))

(declare-fun m!5561223 () Bool)

(assert (=> d!1484709 m!5561223))

(declare-fun m!5561225 () Bool)

(assert (=> d!1484709 m!5561225))

(declare-fun m!5561227 () Bool)

(assert (=> b!4669215 m!5561227))

(declare-fun m!5561229 () Bool)

(assert (=> b!4669216 m!5561229))

(assert (=> b!4668833 d!1484709))

(declare-fun bs!1078111 () Bool)

(declare-fun d!1484711 () Bool)

(assert (= bs!1078111 (and d!1484711 d!1484677)))

(declare-fun lambda!202166 () Int)

(assert (=> bs!1078111 (= lambda!202166 lambda!202156)))

(declare-fun bs!1078112 () Bool)

(assert (= bs!1078112 (and d!1484711 d!1484669)))

(assert (=> bs!1078112 (= lambda!202166 lambda!202151)))

(declare-fun bs!1078113 () Bool)

(assert (= bs!1078113 (and d!1484711 d!1484553)))

(assert (=> bs!1078113 (= lambda!202166 lambda!202065)))

(declare-fun bs!1078114 () Bool)

(assert (= bs!1078114 (and d!1484711 d!1484599)))

(assert (=> bs!1078114 (= lambda!202166 lambda!202115)))

(declare-fun bs!1078115 () Bool)

(assert (= bs!1078115 (and d!1484711 d!1484581)))

(assert (=> bs!1078115 (= lambda!202166 lambda!202112)))

(declare-fun bs!1078116 () Bool)

(assert (= bs!1078116 (and d!1484711 d!1484559)))

(assert (=> bs!1078116 (= lambda!202166 lambda!202069)))

(declare-fun bs!1078117 () Bool)

(assert (= bs!1078117 (and d!1484711 b!4668837)))

(assert (=> bs!1078117 (= lambda!202166 lambda!202026)))

(declare-fun bs!1078118 () Bool)

(assert (= bs!1078118 (and d!1484711 d!1484685)))

(assert (=> bs!1078118 (= lambda!202166 lambda!202164)))

(declare-fun lt!1831266 () ListMap!4625)

(assert (=> d!1484711 (invariantList!1327 (toList!5285 lt!1831266))))

(declare-fun e!2913758 () ListMap!4625)

(assert (=> d!1484711 (= lt!1831266 e!2913758)))

(declare-fun c!799429 () Bool)

(assert (=> d!1484711 (= c!799429 ((_ is Cons!52003) (Cons!52003 (tuple2!53161 hash!414 lt!1830688) Nil!52003)))))

(assert (=> d!1484711 (forall!11098 (Cons!52003 (tuple2!53161 hash!414 lt!1830688) Nil!52003) lambda!202166)))

(assert (=> d!1484711 (= (extractMap!1734 (Cons!52003 (tuple2!53161 hash!414 lt!1830688) Nil!52003)) lt!1831266)))

(declare-fun b!4669217 () Bool)

(assert (=> b!4669217 (= e!2913758 (addToMapMapFromBucket!1135 (_2!29874 (h!58177 (Cons!52003 (tuple2!53161 hash!414 lt!1830688) Nil!52003))) (extractMap!1734 (t!359261 (Cons!52003 (tuple2!53161 hash!414 lt!1830688) Nil!52003)))))))

(declare-fun b!4669218 () Bool)

(assert (=> b!4669218 (= e!2913758 (ListMap!4626 Nil!52002))))

(assert (= (and d!1484711 c!799429) b!4669217))

(assert (= (and d!1484711 (not c!799429)) b!4669218))

(declare-fun m!5561231 () Bool)

(assert (=> d!1484711 m!5561231))

(declare-fun m!5561233 () Bool)

(assert (=> d!1484711 m!5561233))

(declare-fun m!5561235 () Bool)

(assert (=> b!4669217 m!5561235))

(assert (=> b!4669217 m!5561235))

(declare-fun m!5561237 () Bool)

(assert (=> b!4669217 m!5561237))

(assert (=> b!4668833 d!1484711))

(declare-fun bs!1078119 () Bool)

(declare-fun d!1484713 () Bool)

(assert (= bs!1078119 (and d!1484713 d!1484677)))

(declare-fun lambda!202167 () Int)

(assert (=> bs!1078119 (= lambda!202167 lambda!202156)))

(declare-fun bs!1078120 () Bool)

(assert (= bs!1078120 (and d!1484713 d!1484669)))

(assert (=> bs!1078120 (= lambda!202167 lambda!202151)))

(declare-fun bs!1078121 () Bool)

(assert (= bs!1078121 (and d!1484713 d!1484553)))

(assert (=> bs!1078121 (= lambda!202167 lambda!202065)))

(declare-fun bs!1078122 () Bool)

(assert (= bs!1078122 (and d!1484713 d!1484599)))

(assert (=> bs!1078122 (= lambda!202167 lambda!202115)))

(declare-fun bs!1078123 () Bool)

(assert (= bs!1078123 (and d!1484713 d!1484581)))

(assert (=> bs!1078123 (= lambda!202167 lambda!202112)))

(declare-fun bs!1078124 () Bool)

(assert (= bs!1078124 (and d!1484713 d!1484559)))

(assert (=> bs!1078124 (= lambda!202167 lambda!202069)))

(declare-fun bs!1078125 () Bool)

(assert (= bs!1078125 (and d!1484713 d!1484711)))

(assert (=> bs!1078125 (= lambda!202167 lambda!202166)))

(declare-fun bs!1078126 () Bool)

(assert (= bs!1078126 (and d!1484713 b!4668837)))

(assert (=> bs!1078126 (= lambda!202167 lambda!202026)))

(declare-fun bs!1078127 () Bool)

(assert (= bs!1078127 (and d!1484713 d!1484685)))

(assert (=> bs!1078127 (= lambda!202167 lambda!202164)))

(declare-fun lt!1831267 () ListMap!4625)

(assert (=> d!1484713 (invariantList!1327 (toList!5285 lt!1831267))))

(declare-fun e!2913759 () ListMap!4625)

(assert (=> d!1484713 (= lt!1831267 e!2913759)))

(declare-fun c!799430 () Bool)

(assert (=> d!1484713 (= c!799430 ((_ is Cons!52003) (Cons!52003 (tuple2!53161 hash!414 newBucket!224) Nil!52003)))))

(assert (=> d!1484713 (forall!11098 (Cons!52003 (tuple2!53161 hash!414 newBucket!224) Nil!52003) lambda!202167)))

(assert (=> d!1484713 (= (extractMap!1734 (Cons!52003 (tuple2!53161 hash!414 newBucket!224) Nil!52003)) lt!1831267)))

(declare-fun b!4669219 () Bool)

(assert (=> b!4669219 (= e!2913759 (addToMapMapFromBucket!1135 (_2!29874 (h!58177 (Cons!52003 (tuple2!53161 hash!414 newBucket!224) Nil!52003))) (extractMap!1734 (t!359261 (Cons!52003 (tuple2!53161 hash!414 newBucket!224) Nil!52003)))))))

(declare-fun b!4669220 () Bool)

(assert (=> b!4669220 (= e!2913759 (ListMap!4626 Nil!52002))))

(assert (= (and d!1484713 c!799430) b!4669219))

(assert (= (and d!1484713 (not c!799430)) b!4669220))

(declare-fun m!5561239 () Bool)

(assert (=> d!1484713 m!5561239))

(declare-fun m!5561241 () Bool)

(assert (=> d!1484713 m!5561241))

(declare-fun m!5561243 () Bool)

(assert (=> b!4669219 m!5561243))

(assert (=> b!4669219 m!5561243))

(declare-fun m!5561245 () Bool)

(assert (=> b!4669219 m!5561245))

(assert (=> b!4668833 d!1484713))

(declare-fun tp!1343694 () Bool)

(declare-fun b!4669225 () Bool)

(declare-fun e!2913762 () Bool)

(assert (=> b!4669225 (= e!2913762 (and tp_is_empty!30005 tp_is_empty!30007 tp!1343694))))

(assert (=> b!4668829 (= tp!1343691 e!2913762)))

(assert (= (and b!4668829 ((_ is Cons!52002) (t!359260 newBucket!224))) b!4669225))

(declare-fun b!4669226 () Bool)

(declare-fun tp!1343695 () Bool)

(declare-fun e!2913763 () Bool)

(assert (=> b!4669226 (= e!2913763 (and tp_is_empty!30005 tp_is_empty!30007 tp!1343695))))

(assert (=> b!4668834 (= tp!1343690 e!2913763)))

(assert (= (and b!4668834 ((_ is Cons!52002) (t!359260 oldBucket!40))) b!4669226))

(declare-fun b_lambda!176245 () Bool)

(assert (= b_lambda!176241 (or b!4668837 b_lambda!176245)))

(declare-fun bs!1078128 () Bool)

(declare-fun d!1484715 () Bool)

(assert (= bs!1078128 (and d!1484715 b!4668837)))

(assert (=> bs!1078128 (= (dynLambda!21637 lambda!202026 lt!1830712) (noDuplicateKeys!1678 (_2!29874 lt!1830712)))))

(declare-fun m!5561247 () Bool)

(assert (=> bs!1078128 m!5561247))

(assert (=> d!1484575 d!1484715))

(check-sat (not d!1484679) (not b!4669108) (not bm!326340) (not d!1484665) (not d!1484693) (not d!1484577) (not b!4668908) (not b!4668853) (not b!4669125) (not b!4669106) (not b!4669135) (not b!4669059) (not d!1484559) (not d!1484685) (not bm!326337) (not b!4669133) (not d!1484529) (not bm!326356) (not b!4669119) (not b!4669157) (not b!4668940) (not b!4668987) (not d!1484571) (not bm!326354) (not bm!326321) (not b!4669057) (not b!4669107) (not d!1484615) (not b!4669056) (not bm!326342) (not b!4669122) (not bm!326357) (not b!4669225) (not b!4669213) (not d!1484627) (not b!4668992) (not b!4669163) tp_is_empty!30005 (not b!4669155) (not d!1484673) (not b!4668961) (not d!1484683) (not b!4669105) (not b!4669082) (not b!4669196) (not d!1484527) (not b!4669124) (not b!4669129) (not d!1484575) (not b!4668932) (not d!1484635) (not b!4669165) (not d!1484621) (not b!4668899) (not bm!326341) (not d!1484625) (not b!4668937) (not b!4668986) (not b!4669216) (not b!4669127) (not b!4669217) (not d!1484619) (not b!4669161) (not bm!326326) (not b!4669142) (not b!4668898) (not b!4668901) (not d!1484669) (not bm!326352) (not b!4669120) (not b!4668939) (not bm!326353) (not d!1484631) tp_is_empty!30007 (not b!4669115) (not d!1484703) (not b!4669154) (not b!4669130) (not b!4669118) (not b!4669197) (not bm!326338) (not d!1484611) (not d!1484659) (not b!4669215) (not d!1484567) (not b!4669086) (not b!4669158) (not b!4669116) (not b_lambda!176245) (not b!4669141) (not b!4668900) (not b!4669123) (not d!1484677) (not b!4668959) (not b!4668935) (not d!1484709) (not d!1484653) (not d!1484671) (not bs!1078128) (not d!1484697) (not bm!326323) (not d!1484675) (not d!1484637) (not d!1484623) (not b!4669132) (not d!1484573) (not b!4668983) (not d!1484713) (not d!1484645) (not b!4669058) (not b!4669185) (not d!1484661) (not d!1484599) (not b!4669091) (not d!1484553) (not b!4669226) (not bm!326339) (not b!4668952) (not b!4669092) (not b!4668945) (not d!1484707) (not b!4669160) (not b!4668933) (not b!4669156) (not b!4669134) (not b!4668941) (not d!1484561) (not d!1484557) (not b!4669121) (not d!1484569) (not bm!326355) (not b!4669209) (not d!1484609) (not d!1484711) (not d!1484617) (not d!1484681) (not b!4669164) (not d!1484581) (not b!4669000) (not b!4669166) (not d!1484555) (not d!1484651) (not b!4669219) (not b!4669214) (not bm!326322) (not b!4668984) (not bm!326336) (not b!4668934) (not b!4668988))
(check-sat)
