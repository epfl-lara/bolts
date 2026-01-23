; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!425924 () Bool)

(assert start!425924)

(declare-fun b!4386209 () Bool)

(declare-fun e!2730656 () Bool)

(assert (=> b!4386209 (= e!2730656 true)))

(declare-fun lt!1595740 () Bool)

(declare-datatypes ((V!10786 0))(
  ( (V!10787 (val!16703 Int)) )
))
(declare-datatypes ((K!10540 0))(
  ( (K!10541 (val!16704 Int)) )
))
(declare-datatypes ((tuple2!48726 0))(
  ( (tuple2!48727 (_1!27657 K!10540) (_2!27657 V!10786)) )
))
(declare-datatypes ((List!49308 0))(
  ( (Nil!49184) (Cons!49184 (h!54789 tuple2!48726) (t!356238 List!49308)) )
))
(declare-datatypes ((tuple2!48728 0))(
  ( (tuple2!48729 (_1!27658 (_ BitVec 64)) (_2!27658 List!49308)) )
))
(declare-datatypes ((List!49309 0))(
  ( (Nil!49185) (Cons!49185 (h!54790 tuple2!48728) (t!356239 List!49309)) )
))
(declare-datatypes ((ListLongMap!1811 0))(
  ( (ListLongMap!1812 (toList!3161 List!49309)) )
))
(declare-fun lt!1595741 () ListLongMap!1811)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!11533 (ListLongMap!1811 (_ BitVec 64)) Bool)

(assert (=> b!4386209 (= lt!1595740 (contains!11533 lt!1595741 hash!377))))

(declare-fun b!4386210 () Bool)

(declare-fun res!1807247 () Bool)

(declare-fun e!2730651 () Bool)

(assert (=> b!4386210 (=> (not res!1807247) (not e!2730651))))

(declare-fun lm!1707 () ListLongMap!1811)

(declare-datatypes ((Hashable!4981 0))(
  ( (HashableExt!4980 (__x!30684 Int)) )
))
(declare-fun hashF!1247 () Hashable!4981)

(declare-fun allKeysSameHashInMap!693 (ListLongMap!1811 Hashable!4981) Bool)

(assert (=> b!4386210 (= res!1807247 (allKeysSameHashInMap!693 lm!1707 hashF!1247))))

(declare-fun b!4386212 () Bool)

(declare-fun lt!1595751 () List!49308)

(declare-fun e!2730654 () Bool)

(declare-fun apply!11441 (ListLongMap!1811 (_ BitVec 64)) List!49308)

(assert (=> b!4386212 (= e!2730654 (= (apply!11441 lt!1595741 hash!377) lt!1595751))))

(declare-fun b!4386213 () Bool)

(declare-fun res!1807249 () Bool)

(declare-fun e!2730648 () Bool)

(assert (=> b!4386213 (=> res!1807249 e!2730648)))

(declare-fun newBucket!200 () List!49308)

(declare-fun noDuplicateKeys!589 (List!49308) Bool)

(assert (=> b!4386213 (= res!1807249 (not (noDuplicateKeys!589 newBucket!200)))))

(declare-fun b!4386214 () Bool)

(declare-fun res!1807260 () Bool)

(assert (=> b!4386214 (=> (not res!1807260) (not e!2730651))))

(declare-fun key!3918 () K!10540)

(declare-fun hash!1776 (Hashable!4981 K!10540) (_ BitVec 64))

(assert (=> b!4386214 (= res!1807260 (= (hash!1776 hashF!1247 key!3918) hash!377))))

(declare-fun b!4386215 () Bool)

(declare-fun e!2730653 () Bool)

(declare-datatypes ((ListMap!2405 0))(
  ( (ListMap!2406 (toList!3162 List!49308)) )
))
(declare-fun lt!1595747 () ListMap!2405)

(declare-fun lt!1595738 () ListMap!2405)

(declare-fun eq!327 (ListMap!2405 ListMap!2405) Bool)

(assert (=> b!4386215 (= e!2730653 (eq!327 lt!1595747 lt!1595738))))

(declare-fun tp!1331338 () Bool)

(declare-fun tp_is_empty!25593 () Bool)

(declare-fun e!2730647 () Bool)

(declare-fun tp_is_empty!25595 () Bool)

(declare-fun b!4386216 () Bool)

(assert (=> b!4386216 (= e!2730647 (and tp_is_empty!25593 tp_is_empty!25595 tp!1331338))))

(declare-fun b!4386217 () Bool)

(declare-fun res!1807253 () Bool)

(assert (=> b!4386217 (=> res!1807253 e!2730656)))

(assert (=> b!4386217 (= res!1807253 (not (allKeysSameHashInMap!693 lt!1595741 hashF!1247)))))

(declare-fun b!4386218 () Bool)

(declare-fun res!1807256 () Bool)

(declare-fun e!2730655 () Bool)

(assert (=> b!4386218 (=> (not res!1807256) (not e!2730655))))

(declare-fun lt!1595737 () ListLongMap!1811)

(declare-fun lambda!146409 () Int)

(declare-fun forall!9293 (List!49309 Int) Bool)

(assert (=> b!4386218 (= res!1807256 (forall!9293 (toList!3161 lt!1595737) lambda!146409))))

(declare-fun b!4386211 () Bool)

(declare-fun res!1807252 () Bool)

(assert (=> b!4386211 (=> res!1807252 e!2730656)))

(assert (=> b!4386211 (= res!1807252 (not (forall!9293 (toList!3161 lt!1595741) lambda!146409)))))

(declare-fun res!1807257 () Bool)

(assert (=> start!425924 (=> (not res!1807257) (not e!2730651))))

(assert (=> start!425924 (= res!1807257 (forall!9293 (toList!3161 lm!1707) lambda!146409))))

(assert (=> start!425924 e!2730651))

(assert (=> start!425924 e!2730647))

(assert (=> start!425924 true))

(declare-fun e!2730650 () Bool)

(declare-fun inv!64726 (ListLongMap!1811) Bool)

(assert (=> start!425924 (and (inv!64726 lm!1707) e!2730650)))

(assert (=> start!425924 tp_is_empty!25593))

(assert (=> start!425924 tp_is_empty!25595))

(declare-fun b!4386219 () Bool)

(declare-fun e!2730652 () Bool)

(assert (=> b!4386219 (= e!2730652 e!2730656)))

(declare-fun res!1807259 () Bool)

(assert (=> b!4386219 (=> res!1807259 e!2730656)))

(declare-fun lt!1595754 () Bool)

(assert (=> b!4386219 (= res!1807259 lt!1595754)))

(assert (=> b!4386219 e!2730654))

(declare-fun res!1807258 () Bool)

(assert (=> b!4386219 (=> (not res!1807258) (not e!2730654))))

(declare-fun lt!1595753 () ListMap!2405)

(declare-fun contains!11534 (ListMap!2405 K!10540) Bool)

(assert (=> b!4386219 (= res!1807258 (= lt!1595754 (contains!11534 lt!1595753 key!3918)))))

(declare-fun lt!1595739 () ListMap!2405)

(assert (=> b!4386219 (= lt!1595754 (contains!11534 lt!1595739 key!3918))))

(declare-datatypes ((Unit!76846 0))(
  ( (Unit!76847) )
))
(declare-fun lt!1595729 () Unit!76846)

(declare-fun lemmaEquivalentThenSameContains!114 (ListMap!2405 ListMap!2405 K!10540) Unit!76846)

(assert (=> b!4386219 (= lt!1595729 (lemmaEquivalentThenSameContains!114 lt!1595739 lt!1595753 key!3918))))

(assert (=> b!4386219 (eq!327 lt!1595739 lt!1595753)))

(declare-fun lt!1595744 () ListMap!2405)

(declare-fun -!264 (ListMap!2405 K!10540) ListMap!2405)

(assert (=> b!4386219 (= lt!1595753 (-!264 lt!1595744 key!3918))))

(declare-fun lt!1595742 () Unit!76846)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!79 (ListLongMap!1811 (_ BitVec 64) List!49308 K!10540 Hashable!4981) Unit!76846)

(assert (=> b!4386219 (= lt!1595742 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!79 lm!1707 hash!377 lt!1595751 key!3918 hashF!1247))))

(declare-fun lt!1595752 () ListMap!2405)

(assert (=> b!4386219 (= lt!1595752 lt!1595739)))

(declare-fun extractMap!648 (List!49309) ListMap!2405)

(assert (=> b!4386219 (= lt!1595739 (extractMap!648 (toList!3161 lt!1595741)))))

(declare-fun lt!1595746 () List!49308)

(assert (=> b!4386219 (= lt!1595751 lt!1595746)))

(declare-fun +!809 (ListLongMap!1811 tuple2!48728) ListLongMap!1811)

(assert (=> b!4386219 (= lt!1595741 (+!809 lm!1707 (tuple2!48729 hash!377 lt!1595751)))))

(declare-fun tail!7082 (List!49308) List!49308)

(assert (=> b!4386219 (= lt!1595751 (tail!7082 newBucket!200))))

(assert (=> b!4386219 e!2730653))

(declare-fun res!1807248 () Bool)

(assert (=> b!4386219 (=> (not res!1807248) (not e!2730653))))

(declare-fun lt!1595750 () ListMap!2405)

(assert (=> b!4386219 (= res!1807248 (eq!327 lt!1595750 lt!1595738))))

(declare-fun lt!1595748 () tuple2!48726)

(declare-fun +!810 (ListMap!2405 tuple2!48726) ListMap!2405)

(assert (=> b!4386219 (= lt!1595738 (+!810 lt!1595752 lt!1595748))))

(declare-fun lt!1595736 () ListMap!2405)

(declare-fun addToMapMapFromBucket!270 (List!49308 ListMap!2405) ListMap!2405)

(assert (=> b!4386219 (= lt!1595752 (addToMapMapFromBucket!270 lt!1595746 lt!1595736))))

(declare-fun newValue!99 () V!10786)

(declare-fun lt!1595732 () Unit!76846)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!136 (ListMap!2405 K!10540 V!10786 List!49308) Unit!76846)

(assert (=> b!4386219 (= lt!1595732 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!136 lt!1595736 key!3918 newValue!99 lt!1595746))))

(assert (=> b!4386219 (= lt!1595747 lt!1595750)))

(assert (=> b!4386219 (= lt!1595750 (addToMapMapFromBucket!270 lt!1595746 (+!810 lt!1595736 lt!1595748)))))

(declare-fun lt!1595745 () ListMap!2405)

(assert (=> b!4386219 (= lt!1595745 lt!1595747)))

(declare-fun lt!1595749 () List!49308)

(assert (=> b!4386219 (= lt!1595747 (addToMapMapFromBucket!270 lt!1595749 lt!1595736))))

(assert (=> b!4386219 (= lt!1595745 (addToMapMapFromBucket!270 newBucket!200 lt!1595736))))

(assert (=> b!4386219 (= lt!1595745 (extractMap!648 (toList!3161 lt!1595737)))))

(assert (=> b!4386219 (= lt!1595736 (extractMap!648 (t!356239 (toList!3161 lm!1707))))))

(declare-fun b!4386220 () Bool)

(declare-fun res!1807261 () Bool)

(declare-fun e!2730649 () Bool)

(assert (=> b!4386220 (=> (not res!1807261) (not e!2730649))))

(assert (=> b!4386220 (= res!1807261 (contains!11533 lm!1707 hash!377))))

(declare-fun b!4386221 () Bool)

(assert (=> b!4386221 (= e!2730651 e!2730649)))

(declare-fun res!1807251 () Bool)

(assert (=> b!4386221 (=> (not res!1807251) (not e!2730649))))

(assert (=> b!4386221 (= res!1807251 (contains!11534 lt!1595744 key!3918))))

(assert (=> b!4386221 (= lt!1595744 (extractMap!648 (toList!3161 lm!1707)))))

(declare-fun b!4386222 () Bool)

(declare-fun res!1807254 () Bool)

(assert (=> b!4386222 (=> (not res!1807254) (not e!2730651))))

(declare-fun allKeysSameHash!547 (List!49308 (_ BitVec 64) Hashable!4981) Bool)

(assert (=> b!4386222 (= res!1807254 (allKeysSameHash!547 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4386223 () Bool)

(declare-fun tp!1331337 () Bool)

(assert (=> b!4386223 (= e!2730650 tp!1331337)))

(declare-fun b!4386224 () Bool)

(assert (=> b!4386224 (= e!2730649 (not e!2730648))))

(declare-fun res!1807250 () Bool)

(assert (=> b!4386224 (=> res!1807250 e!2730648)))

(assert (=> b!4386224 (= res!1807250 (not (= newBucket!200 lt!1595749)))))

(assert (=> b!4386224 (= lt!1595749 (Cons!49184 lt!1595748 lt!1595746))))

(declare-fun lt!1595735 () List!49308)

(declare-fun removePairForKey!557 (List!49308 K!10540) List!49308)

(assert (=> b!4386224 (= lt!1595746 (removePairForKey!557 lt!1595735 key!3918))))

(assert (=> b!4386224 (= lt!1595748 (tuple2!48727 key!3918 newValue!99))))

(declare-fun lt!1595743 () Unit!76846)

(declare-fun lt!1595731 () tuple2!48728)

(declare-fun forallContained!1931 (List!49309 Int tuple2!48728) Unit!76846)

(assert (=> b!4386224 (= lt!1595743 (forallContained!1931 (toList!3161 lm!1707) lambda!146409 lt!1595731))))

(declare-fun contains!11535 (List!49309 tuple2!48728) Bool)

(assert (=> b!4386224 (contains!11535 (toList!3161 lm!1707) lt!1595731)))

(assert (=> b!4386224 (= lt!1595731 (tuple2!48729 hash!377 lt!1595735))))

(declare-fun lt!1595734 () Unit!76846)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!434 (List!49309 (_ BitVec 64) List!49308) Unit!76846)

(assert (=> b!4386224 (= lt!1595734 (lemmaGetValueByKeyImpliesContainsTuple!434 (toList!3161 lm!1707) hash!377 lt!1595735))))

(assert (=> b!4386224 (= lt!1595735 (apply!11441 lm!1707 hash!377))))

(declare-fun b!4386225 () Bool)

(assert (=> b!4386225 (= e!2730648 e!2730652)))

(declare-fun res!1807255 () Bool)

(assert (=> b!4386225 (=> res!1807255 e!2730652)))

(get-info :version)

(assert (=> b!4386225 (= res!1807255 (or (not ((_ is Cons!49185) (toList!3161 lm!1707))) (not (= (_1!27658 (h!54790 (toList!3161 lm!1707))) hash!377))))))

(assert (=> b!4386225 e!2730655))

(declare-fun res!1807246 () Bool)

(assert (=> b!4386225 (=> (not res!1807246) (not e!2730655))))

(assert (=> b!4386225 (= res!1807246 (forall!9293 (toList!3161 lt!1595737) lambda!146409))))

(declare-fun lt!1595730 () tuple2!48728)

(assert (=> b!4386225 (= lt!1595737 (+!809 lm!1707 lt!1595730))))

(assert (=> b!4386225 (= lt!1595730 (tuple2!48729 hash!377 newBucket!200))))

(declare-fun lt!1595733 () Unit!76846)

(declare-fun addValidProp!235 (ListLongMap!1811 Int (_ BitVec 64) List!49308) Unit!76846)

(assert (=> b!4386225 (= lt!1595733 (addValidProp!235 lm!1707 lambda!146409 hash!377 newBucket!200))))

(assert (=> b!4386225 (forall!9293 (toList!3161 lm!1707) lambda!146409)))

(declare-fun b!4386226 () Bool)

(assert (=> b!4386226 (= e!2730655 (or (not ((_ is Cons!49185) (toList!3161 lm!1707))) (not (= (_1!27658 (h!54790 (toList!3161 lm!1707))) hash!377)) (= lt!1595737 (ListLongMap!1812 (Cons!49185 lt!1595730 (t!356239 (toList!3161 lm!1707)))))))))

(assert (= (and start!425924 res!1807257) b!4386210))

(assert (= (and b!4386210 res!1807247) b!4386214))

(assert (= (and b!4386214 res!1807260) b!4386222))

(assert (= (and b!4386222 res!1807254) b!4386221))

(assert (= (and b!4386221 res!1807251) b!4386220))

(assert (= (and b!4386220 res!1807261) b!4386224))

(assert (= (and b!4386224 (not res!1807250)) b!4386213))

(assert (= (and b!4386213 (not res!1807249)) b!4386225))

(assert (= (and b!4386225 res!1807246) b!4386218))

(assert (= (and b!4386218 res!1807256) b!4386226))

(assert (= (and b!4386225 (not res!1807255)) b!4386219))

(assert (= (and b!4386219 res!1807248) b!4386215))

(assert (= (and b!4386219 res!1807258) b!4386212))

(assert (= (and b!4386219 (not res!1807259)) b!4386211))

(assert (= (and b!4386211 (not res!1807252)) b!4386217))

(assert (= (and b!4386217 (not res!1807253)) b!4386209))

(assert (= (and start!425924 ((_ is Cons!49184) newBucket!200)) b!4386216))

(assert (= start!425924 b!4386223))

(declare-fun m!5034165 () Bool)

(assert (=> b!4386209 m!5034165))

(declare-fun m!5034167 () Bool)

(assert (=> b!4386214 m!5034167))

(declare-fun m!5034169 () Bool)

(assert (=> b!4386218 m!5034169))

(declare-fun m!5034171 () Bool)

(assert (=> b!4386211 m!5034171))

(declare-fun m!5034173 () Bool)

(assert (=> b!4386220 m!5034173))

(declare-fun m!5034175 () Bool)

(assert (=> b!4386215 m!5034175))

(declare-fun m!5034177 () Bool)

(assert (=> b!4386222 m!5034177))

(declare-fun m!5034179 () Bool)

(assert (=> start!425924 m!5034179))

(declare-fun m!5034181 () Bool)

(assert (=> start!425924 m!5034181))

(declare-fun m!5034183 () Bool)

(assert (=> b!4386210 m!5034183))

(declare-fun m!5034185 () Bool)

(assert (=> b!4386213 m!5034185))

(declare-fun m!5034187 () Bool)

(assert (=> b!4386221 m!5034187))

(declare-fun m!5034189 () Bool)

(assert (=> b!4386221 m!5034189))

(declare-fun m!5034191 () Bool)

(assert (=> b!4386212 m!5034191))

(assert (=> b!4386225 m!5034169))

(declare-fun m!5034193 () Bool)

(assert (=> b!4386225 m!5034193))

(declare-fun m!5034195 () Bool)

(assert (=> b!4386225 m!5034195))

(assert (=> b!4386225 m!5034179))

(declare-fun m!5034197 () Bool)

(assert (=> b!4386224 m!5034197))

(declare-fun m!5034199 () Bool)

(assert (=> b!4386224 m!5034199))

(declare-fun m!5034201 () Bool)

(assert (=> b!4386224 m!5034201))

(declare-fun m!5034203 () Bool)

(assert (=> b!4386224 m!5034203))

(declare-fun m!5034205 () Bool)

(assert (=> b!4386224 m!5034205))

(declare-fun m!5034207 () Bool)

(assert (=> b!4386219 m!5034207))

(declare-fun m!5034209 () Bool)

(assert (=> b!4386219 m!5034209))

(declare-fun m!5034211 () Bool)

(assert (=> b!4386219 m!5034211))

(declare-fun m!5034213 () Bool)

(assert (=> b!4386219 m!5034213))

(declare-fun m!5034215 () Bool)

(assert (=> b!4386219 m!5034215))

(declare-fun m!5034217 () Bool)

(assert (=> b!4386219 m!5034217))

(declare-fun m!5034219 () Bool)

(assert (=> b!4386219 m!5034219))

(declare-fun m!5034221 () Bool)

(assert (=> b!4386219 m!5034221))

(declare-fun m!5034223 () Bool)

(assert (=> b!4386219 m!5034223))

(declare-fun m!5034225 () Bool)

(assert (=> b!4386219 m!5034225))

(assert (=> b!4386219 m!5034209))

(declare-fun m!5034227 () Bool)

(assert (=> b!4386219 m!5034227))

(declare-fun m!5034229 () Bool)

(assert (=> b!4386219 m!5034229))

(declare-fun m!5034231 () Bool)

(assert (=> b!4386219 m!5034231))

(declare-fun m!5034233 () Bool)

(assert (=> b!4386219 m!5034233))

(declare-fun m!5034235 () Bool)

(assert (=> b!4386219 m!5034235))

(declare-fun m!5034237 () Bool)

(assert (=> b!4386219 m!5034237))

(declare-fun m!5034239 () Bool)

(assert (=> b!4386219 m!5034239))

(declare-fun m!5034241 () Bool)

(assert (=> b!4386219 m!5034241))

(declare-fun m!5034243 () Bool)

(assert (=> b!4386219 m!5034243))

(declare-fun m!5034245 () Bool)

(assert (=> b!4386217 m!5034245))

(check-sat (not b!4386213) (not b!4386224) (not b!4386220) (not b!4386225) (not b!4386216) (not b!4386219) (not b!4386212) tp_is_empty!25595 (not b!4386222) (not b!4386215) (not b!4386217) (not b!4386211) (not b!4386210) (not b!4386223) (not b!4386209) (not b!4386218) (not b!4386221) tp_is_empty!25593 (not start!425924) (not b!4386214))
(check-sat)
