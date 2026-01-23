; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466076 () Bool)

(assert start!466076)

(declare-fun b!4637214 () Bool)

(declare-fun e!2892790 () Bool)

(declare-fun e!2892793 () Bool)

(assert (=> b!4637214 (= e!2892790 (not e!2892793))))

(declare-fun res!1946804 () Bool)

(assert (=> b!4637214 (=> res!1946804 e!2892793)))

(declare-datatypes ((K!13050 0))(
  ( (K!13051 (val!18711 Int)) )
))
(declare-datatypes ((V!13296 0))(
  ( (V!13297 (val!18712 Int)) )
))
(declare-datatypes ((tuple2!52686 0))(
  ( (tuple2!52687 (_1!29637 K!13050) (_2!29637 V!13296)) )
))
(declare-datatypes ((List!51808 0))(
  ( (Nil!51684) (Cons!51684 (h!57776 tuple2!52686) (t!358882 List!51808)) )
))
(declare-fun oldBucket!40 () List!51808)

(declare-fun key!4968 () K!13050)

(get-info :version)

(assert (=> b!4637214 (= res!1946804 (or (not ((_ is Cons!51684) oldBucket!40)) (not (= (_1!29637 (h!57776 oldBucket!40)) key!4968))))))

(declare-fun e!2892792 () Bool)

(assert (=> b!4637214 e!2892792))

(declare-fun res!1946800 () Bool)

(assert (=> b!4637214 (=> (not res!1946800) (not e!2892792))))

(declare-datatypes ((ListMap!4389 0))(
  ( (ListMap!4390 (toList!5076 List!51808)) )
))
(declare-fun lt!1799840 () ListMap!4389)

(declare-fun lt!1799841 () ListMap!4389)

(declare-fun addToMapMapFromBucket!1019 (List!51808 ListMap!4389) ListMap!4389)

(assert (=> b!4637214 (= res!1946800 (= lt!1799840 (addToMapMapFromBucket!1019 oldBucket!40 lt!1799841)))))

(declare-datatypes ((tuple2!52688 0))(
  ( (tuple2!52689 (_1!29638 (_ BitVec 64)) (_2!29638 List!51808)) )
))
(declare-datatypes ((List!51809 0))(
  ( (Nil!51685) (Cons!51685 (h!57777 tuple2!52688) (t!358883 List!51809)) )
))
(declare-fun extractMap!1616 (List!51809) ListMap!4389)

(assert (=> b!4637214 (= lt!1799841 (extractMap!1616 Nil!51685))))

(assert (=> b!4637214 true))

(declare-fun b!4637215 () Bool)

(declare-fun tp!1342598 () Bool)

(declare-fun tp_is_empty!29535 () Bool)

(declare-fun tp_is_empty!29533 () Bool)

(declare-fun e!2892794 () Bool)

(assert (=> b!4637215 (= e!2892794 (and tp_is_empty!29533 tp_is_empty!29535 tp!1342598))))

(declare-fun res!1946799 () Bool)

(declare-fun e!2892791 () Bool)

(assert (=> start!466076 (=> (not res!1946799) (not e!2892791))))

(declare-fun noDuplicateKeys!1560 (List!51808) Bool)

(assert (=> start!466076 (= res!1946799 (noDuplicateKeys!1560 oldBucket!40))))

(assert (=> start!466076 e!2892791))

(assert (=> start!466076 true))

(declare-fun e!2892789 () Bool)

(assert (=> start!466076 e!2892789))

(assert (=> start!466076 tp_is_empty!29533))

(assert (=> start!466076 e!2892794))

(declare-fun b!4637216 () Bool)

(declare-fun res!1946805 () Bool)

(assert (=> b!4637216 (=> (not res!1946805) (not e!2892791))))

(declare-fun newBucket!224 () List!51808)

(assert (=> b!4637216 (= res!1946805 (noDuplicateKeys!1560 newBucket!224))))

(declare-fun b!4637217 () Bool)

(declare-fun res!1946798 () Bool)

(assert (=> b!4637217 (=> (not res!1946798) (not e!2892791))))

(declare-fun removePairForKey!1183 (List!51808 K!13050) List!51808)

(assert (=> b!4637217 (= res!1946798 (= (removePairForKey!1183 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4637218 () Bool)

(declare-fun res!1946803 () Bool)

(assert (=> b!4637218 (=> (not res!1946803) (not e!2892791))))

(declare-datatypes ((Hashable!5957 0))(
  ( (HashableExt!5956 (__x!31660 Int)) )
))
(declare-fun hashF!1389 () Hashable!5957)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1414 (List!51808 (_ BitVec 64) Hashable!5957) Bool)

(assert (=> b!4637218 (= res!1946803 (allKeysSameHash!1414 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4637219 () Bool)

(assert (=> b!4637219 (= e!2892791 e!2892790)))

(declare-fun res!1946806 () Bool)

(assert (=> b!4637219 (=> (not res!1946806) (not e!2892790))))

(declare-fun contains!14805 (ListMap!4389 K!13050) Bool)

(assert (=> b!4637219 (= res!1946806 (contains!14805 lt!1799840 key!4968))))

(assert (=> b!4637219 (= lt!1799840 (extractMap!1616 (Cons!51685 (tuple2!52689 hash!414 oldBucket!40) Nil!51685)))))

(declare-fun b!4637220 () Bool)

(declare-fun tp!1342599 () Bool)

(assert (=> b!4637220 (= e!2892789 (and tp_is_empty!29533 tp_is_empty!29535 tp!1342599))))

(declare-fun b!4637221 () Bool)

(declare-fun res!1946801 () Bool)

(assert (=> b!4637221 (=> (not res!1946801) (not e!2892790))))

(assert (=> b!4637221 (= res!1946801 (allKeysSameHash!1414 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4637222 () Bool)

(assert (=> b!4637222 (= e!2892792 (= lt!1799841 (ListMap!4390 Nil!51684)))))

(declare-fun b!4637223 () Bool)

(declare-fun tail!8187 (List!51808) List!51808)

(assert (=> b!4637223 (= e!2892793 (= (tail!8187 oldBucket!40) newBucket!224))))

(declare-fun b!4637224 () Bool)

(declare-fun res!1946802 () Bool)

(assert (=> b!4637224 (=> (not res!1946802) (not e!2892790))))

(declare-fun hash!3636 (Hashable!5957 K!13050) (_ BitVec 64))

(assert (=> b!4637224 (= res!1946802 (= (hash!3636 hashF!1389 key!4968) hash!414))))

(assert (= (and start!466076 res!1946799) b!4637216))

(assert (= (and b!4637216 res!1946805) b!4637217))

(assert (= (and b!4637217 res!1946798) b!4637218))

(assert (= (and b!4637218 res!1946803) b!4637219))

(assert (= (and b!4637219 res!1946806) b!4637224))

(assert (= (and b!4637224 res!1946802) b!4637221))

(assert (= (and b!4637221 res!1946801) b!4637214))

(assert (= (and b!4637214 res!1946800) b!4637222))

(assert (= (and b!4637214 (not res!1946804)) b!4637223))

(assert (= (and start!466076 ((_ is Cons!51684) oldBucket!40)) b!4637220))

(assert (= (and start!466076 ((_ is Cons!51684) newBucket!224)) b!4637215))

(declare-fun m!5495165 () Bool)

(assert (=> b!4637224 m!5495165))

(declare-fun m!5495167 () Bool)

(assert (=> start!466076 m!5495167))

(declare-fun m!5495169 () Bool)

(assert (=> b!4637219 m!5495169))

(declare-fun m!5495171 () Bool)

(assert (=> b!4637219 m!5495171))

(declare-fun m!5495173 () Bool)

(assert (=> b!4637223 m!5495173))

(declare-fun m!5495175 () Bool)

(assert (=> b!4637218 m!5495175))

(declare-fun m!5495177 () Bool)

(assert (=> b!4637216 m!5495177))

(declare-fun m!5495179 () Bool)

(assert (=> b!4637221 m!5495179))

(declare-fun m!5495181 () Bool)

(assert (=> b!4637217 m!5495181))

(declare-fun m!5495183 () Bool)

(assert (=> b!4637214 m!5495183))

(declare-fun m!5495185 () Bool)

(assert (=> b!4637214 m!5495185))

(check-sat (not start!466076) (not b!4637223) (not b!4637219) (not b!4637218) (not b!4637221) (not b!4637216) tp_is_empty!29535 (not b!4637220) (not b!4637215) (not b!4637214) (not b!4637224) tp_is_empty!29533 (not b!4637217))
(check-sat)
(get-model)

(declare-fun d!1462260 () Bool)

(assert (=> d!1462260 true))

(assert (=> d!1462260 true))

(declare-fun lambda!195263 () Int)

(declare-fun forall!10911 (List!51808 Int) Bool)

(assert (=> d!1462260 (= (allKeysSameHash!1414 newBucket!224 hash!414 hashF!1389) (forall!10911 newBucket!224 lambda!195263))))

(declare-fun bs!1031784 () Bool)

(assert (= bs!1031784 d!1462260))

(declare-fun m!5495191 () Bool)

(assert (=> bs!1031784 m!5495191))

(assert (=> b!4637221 d!1462260))

(declare-fun d!1462264 () Bool)

(declare-fun res!1946811 () Bool)

(declare-fun e!2892807 () Bool)

(assert (=> d!1462264 (=> res!1946811 e!2892807)))

(assert (=> d!1462264 (= res!1946811 (not ((_ is Cons!51684) newBucket!224)))))

(assert (=> d!1462264 (= (noDuplicateKeys!1560 newBucket!224) e!2892807)))

(declare-fun b!4637249 () Bool)

(declare-fun e!2892808 () Bool)

(assert (=> b!4637249 (= e!2892807 e!2892808)))

(declare-fun res!1946812 () Bool)

(assert (=> b!4637249 (=> (not res!1946812) (not e!2892808))))

(declare-fun containsKey!2576 (List!51808 K!13050) Bool)

(assert (=> b!4637249 (= res!1946812 (not (containsKey!2576 (t!358882 newBucket!224) (_1!29637 (h!57776 newBucket!224)))))))

(declare-fun b!4637250 () Bool)

(assert (=> b!4637250 (= e!2892808 (noDuplicateKeys!1560 (t!358882 newBucket!224)))))

(assert (= (and d!1462264 (not res!1946811)) b!4637249))

(assert (= (and b!4637249 res!1946812) b!4637250))

(declare-fun m!5495193 () Bool)

(assert (=> b!4637249 m!5495193))

(declare-fun m!5495195 () Bool)

(assert (=> b!4637250 m!5495195))

(assert (=> b!4637216 d!1462264))

(declare-fun d!1462266 () Bool)

(declare-fun lt!1799853 () List!51808)

(assert (=> d!1462266 (not (containsKey!2576 lt!1799853 key!4968))))

(declare-fun e!2892814 () List!51808)

(assert (=> d!1462266 (= lt!1799853 e!2892814)))

(declare-fun c!793648 () Bool)

(assert (=> d!1462266 (= c!793648 (and ((_ is Cons!51684) oldBucket!40) (= (_1!29637 (h!57776 oldBucket!40)) key!4968)))))

(assert (=> d!1462266 (noDuplicateKeys!1560 oldBucket!40)))

(assert (=> d!1462266 (= (removePairForKey!1183 oldBucket!40 key!4968) lt!1799853)))

(declare-fun b!4637262 () Bool)

(declare-fun e!2892813 () List!51808)

(assert (=> b!4637262 (= e!2892813 Nil!51684)))

(declare-fun b!4637259 () Bool)

(assert (=> b!4637259 (= e!2892814 (t!358882 oldBucket!40))))

(declare-fun b!4637260 () Bool)

(assert (=> b!4637260 (= e!2892814 e!2892813)))

(declare-fun c!793647 () Bool)

(assert (=> b!4637260 (= c!793647 ((_ is Cons!51684) oldBucket!40))))

(declare-fun b!4637261 () Bool)

(assert (=> b!4637261 (= e!2892813 (Cons!51684 (h!57776 oldBucket!40) (removePairForKey!1183 (t!358882 oldBucket!40) key!4968)))))

(assert (= (and d!1462266 c!793648) b!4637259))

(assert (= (and d!1462266 (not c!793648)) b!4637260))

(assert (= (and b!4637260 c!793647) b!4637261))

(assert (= (and b!4637260 (not c!793647)) b!4637262))

(declare-fun m!5495197 () Bool)

(assert (=> d!1462266 m!5495197))

(assert (=> d!1462266 m!5495167))

(declare-fun m!5495199 () Bool)

(assert (=> b!4637261 m!5495199))

(assert (=> b!4637217 d!1462266))

(declare-fun d!1462268 () Bool)

(declare-fun hash!3637 (Hashable!5957 K!13050) (_ BitVec 64))

(assert (=> d!1462268 (= (hash!3636 hashF!1389 key!4968) (hash!3637 hashF!1389 key!4968))))

(declare-fun bs!1031785 () Bool)

(assert (= bs!1031785 d!1462268))

(declare-fun m!5495201 () Bool)

(assert (=> bs!1031785 m!5495201))

(assert (=> b!4637224 d!1462268))

(declare-fun d!1462270 () Bool)

(assert (=> d!1462270 (= (tail!8187 oldBucket!40) (t!358882 oldBucket!40))))

(assert (=> b!4637223 d!1462270))

(declare-fun bs!1031786 () Bool)

(declare-fun d!1462272 () Bool)

(assert (= bs!1031786 (and d!1462272 d!1462260)))

(declare-fun lambda!195264 () Int)

(assert (=> bs!1031786 (= lambda!195264 lambda!195263)))

(assert (=> d!1462272 true))

(assert (=> d!1462272 true))

(assert (=> d!1462272 (= (allKeysSameHash!1414 oldBucket!40 hash!414 hashF!1389) (forall!10911 oldBucket!40 lambda!195264))))

(declare-fun bs!1031787 () Bool)

(assert (= bs!1031787 d!1462272))

(declare-fun m!5495203 () Bool)

(assert (=> bs!1031787 m!5495203))

(assert (=> b!4637218 d!1462272))

(declare-fun d!1462274 () Bool)

(declare-fun res!1946813 () Bool)

(declare-fun e!2892815 () Bool)

(assert (=> d!1462274 (=> res!1946813 e!2892815)))

(assert (=> d!1462274 (= res!1946813 (not ((_ is Cons!51684) oldBucket!40)))))

(assert (=> d!1462274 (= (noDuplicateKeys!1560 oldBucket!40) e!2892815)))

(declare-fun b!4637263 () Bool)

(declare-fun e!2892816 () Bool)

(assert (=> b!4637263 (= e!2892815 e!2892816)))

(declare-fun res!1946814 () Bool)

(assert (=> b!4637263 (=> (not res!1946814) (not e!2892816))))

(assert (=> b!4637263 (= res!1946814 (not (containsKey!2576 (t!358882 oldBucket!40) (_1!29637 (h!57776 oldBucket!40)))))))

(declare-fun b!4637264 () Bool)

(assert (=> b!4637264 (= e!2892816 (noDuplicateKeys!1560 (t!358882 oldBucket!40)))))

(assert (= (and d!1462274 (not res!1946813)) b!4637263))

(assert (= (and b!4637263 res!1946814) b!4637264))

(declare-fun m!5495205 () Bool)

(assert (=> b!4637263 m!5495205))

(declare-fun m!5495207 () Bool)

(assert (=> b!4637264 m!5495207))

(assert (=> start!466076 d!1462274))

(declare-fun b!4637283 () Bool)

(declare-datatypes ((Unit!114635 0))(
  ( (Unit!114636) )
))
(declare-fun e!2892834 () Unit!114635)

(declare-fun Unit!114637 () Unit!114635)

(assert (=> b!4637283 (= e!2892834 Unit!114637)))

(declare-fun d!1462276 () Bool)

(declare-fun e!2892833 () Bool)

(assert (=> d!1462276 e!2892833))

(declare-fun res!1946822 () Bool)

(assert (=> d!1462276 (=> res!1946822 e!2892833)))

(declare-fun e!2892830 () Bool)

(assert (=> d!1462276 (= res!1946822 e!2892830)))

(declare-fun res!1946821 () Bool)

(assert (=> d!1462276 (=> (not res!1946821) (not e!2892830))))

(declare-fun lt!1799871 () Bool)

(assert (=> d!1462276 (= res!1946821 (not lt!1799871))))

(declare-fun lt!1799875 () Bool)

(assert (=> d!1462276 (= lt!1799871 lt!1799875)))

(declare-fun lt!1799873 () Unit!114635)

(declare-fun e!2892831 () Unit!114635)

(assert (=> d!1462276 (= lt!1799873 e!2892831)))

(declare-fun c!793656 () Bool)

(assert (=> d!1462276 (= c!793656 lt!1799875)))

(declare-fun containsKey!2578 (List!51808 K!13050) Bool)

(assert (=> d!1462276 (= lt!1799875 (containsKey!2578 (toList!5076 lt!1799840) key!4968))))

(assert (=> d!1462276 (= (contains!14805 lt!1799840 key!4968) lt!1799871)))

(declare-fun b!4637284 () Bool)

(declare-datatypes ((List!51811 0))(
  ( (Nil!51687) (Cons!51687 (h!57781 K!13050) (t!358885 List!51811)) )
))
(declare-fun contains!14807 (List!51811 K!13050) Bool)

(declare-fun keys!18250 (ListMap!4389) List!51811)

(assert (=> b!4637284 (= e!2892830 (not (contains!14807 (keys!18250 lt!1799840) key!4968)))))

(declare-fun b!4637285 () Bool)

(assert (=> b!4637285 (= e!2892831 e!2892834)))

(declare-fun c!793657 () Bool)

(declare-fun call!323654 () Bool)

(assert (=> b!4637285 (= c!793657 call!323654)))

(declare-fun b!4637286 () Bool)

(declare-fun e!2892832 () Bool)

(assert (=> b!4637286 (= e!2892833 e!2892832)))

(declare-fun res!1946823 () Bool)

(assert (=> b!4637286 (=> (not res!1946823) (not e!2892832))))

(declare-datatypes ((Option!11718 0))(
  ( (None!11717) (Some!11717 (v!45927 V!13296)) )
))
(declare-fun isDefined!8983 (Option!11718) Bool)

(declare-fun getValueByKey!1534 (List!51808 K!13050) Option!11718)

(assert (=> b!4637286 (= res!1946823 (isDefined!8983 (getValueByKey!1534 (toList!5076 lt!1799840) key!4968)))))

(declare-fun b!4637287 () Bool)

(declare-fun lt!1799877 () Unit!114635)

(assert (=> b!4637287 (= e!2892831 lt!1799877)))

(declare-fun lt!1799870 () Unit!114635)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1436 (List!51808 K!13050) Unit!114635)

(assert (=> b!4637287 (= lt!1799870 (lemmaContainsKeyImpliesGetValueByKeyDefined!1436 (toList!5076 lt!1799840) key!4968))))

(assert (=> b!4637287 (isDefined!8983 (getValueByKey!1534 (toList!5076 lt!1799840) key!4968))))

(declare-fun lt!1799876 () Unit!114635)

(assert (=> b!4637287 (= lt!1799876 lt!1799870)))

(declare-fun lemmaInListThenGetKeysListContains!692 (List!51808 K!13050) Unit!114635)

(assert (=> b!4637287 (= lt!1799877 (lemmaInListThenGetKeysListContains!692 (toList!5076 lt!1799840) key!4968))))

(assert (=> b!4637287 call!323654))

(declare-fun bm!323649 () Bool)

(declare-fun e!2892829 () List!51811)

(assert (=> bm!323649 (= call!323654 (contains!14807 e!2892829 key!4968))))

(declare-fun c!793655 () Bool)

(assert (=> bm!323649 (= c!793655 c!793656)))

(declare-fun b!4637288 () Bool)

(assert (=> b!4637288 (= e!2892829 (keys!18250 lt!1799840))))

(declare-fun b!4637289 () Bool)

(assert (=> b!4637289 (= e!2892832 (contains!14807 (keys!18250 lt!1799840) key!4968))))

(declare-fun b!4637290 () Bool)

(assert (=> b!4637290 false))

(declare-fun lt!1799874 () Unit!114635)

(declare-fun lt!1799872 () Unit!114635)

(assert (=> b!4637290 (= lt!1799874 lt!1799872)))

(assert (=> b!4637290 (containsKey!2578 (toList!5076 lt!1799840) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!696 (List!51808 K!13050) Unit!114635)

(assert (=> b!4637290 (= lt!1799872 (lemmaInGetKeysListThenContainsKey!696 (toList!5076 lt!1799840) key!4968))))

(declare-fun Unit!114639 () Unit!114635)

(assert (=> b!4637290 (= e!2892834 Unit!114639)))

(declare-fun b!4637291 () Bool)

(declare-fun getKeysList!697 (List!51808) List!51811)

(assert (=> b!4637291 (= e!2892829 (getKeysList!697 (toList!5076 lt!1799840)))))

(assert (= (and d!1462276 c!793656) b!4637287))

(assert (= (and d!1462276 (not c!793656)) b!4637285))

(assert (= (and b!4637285 c!793657) b!4637290))

(assert (= (and b!4637285 (not c!793657)) b!4637283))

(assert (= (or b!4637287 b!4637285) bm!323649))

(assert (= (and bm!323649 c!793655) b!4637291))

(assert (= (and bm!323649 (not c!793655)) b!4637288))

(assert (= (and d!1462276 res!1946821) b!4637284))

(assert (= (and d!1462276 (not res!1946822)) b!4637286))

(assert (= (and b!4637286 res!1946823) b!4637289))

(declare-fun m!5495209 () Bool)

(assert (=> d!1462276 m!5495209))

(declare-fun m!5495211 () Bool)

(assert (=> b!4637291 m!5495211))

(assert (=> b!4637290 m!5495209))

(declare-fun m!5495213 () Bool)

(assert (=> b!4637290 m!5495213))

(declare-fun m!5495215 () Bool)

(assert (=> b!4637284 m!5495215))

(assert (=> b!4637284 m!5495215))

(declare-fun m!5495217 () Bool)

(assert (=> b!4637284 m!5495217))

(assert (=> b!4637288 m!5495215))

(declare-fun m!5495219 () Bool)

(assert (=> bm!323649 m!5495219))

(declare-fun m!5495221 () Bool)

(assert (=> b!4637287 m!5495221))

(declare-fun m!5495223 () Bool)

(assert (=> b!4637287 m!5495223))

(assert (=> b!4637287 m!5495223))

(declare-fun m!5495225 () Bool)

(assert (=> b!4637287 m!5495225))

(declare-fun m!5495227 () Bool)

(assert (=> b!4637287 m!5495227))

(assert (=> b!4637286 m!5495223))

(assert (=> b!4637286 m!5495223))

(assert (=> b!4637286 m!5495225))

(assert (=> b!4637289 m!5495215))

(assert (=> b!4637289 m!5495215))

(assert (=> b!4637289 m!5495217))

(assert (=> b!4637219 d!1462276))

(declare-fun d!1462278 () Bool)

(declare-fun lt!1799880 () ListMap!4389)

(declare-fun invariantList!1246 (List!51808) Bool)

(assert (=> d!1462278 (invariantList!1246 (toList!5076 lt!1799880))))

(declare-fun e!2892837 () ListMap!4389)

(assert (=> d!1462278 (= lt!1799880 e!2892837)))

(declare-fun c!793660 () Bool)

(assert (=> d!1462278 (= c!793660 ((_ is Cons!51685) (Cons!51685 (tuple2!52689 hash!414 oldBucket!40) Nil!51685)))))

(declare-fun lambda!195267 () Int)

(declare-fun forall!10912 (List!51809 Int) Bool)

(assert (=> d!1462278 (forall!10912 (Cons!51685 (tuple2!52689 hash!414 oldBucket!40) Nil!51685) lambda!195267)))

(assert (=> d!1462278 (= (extractMap!1616 (Cons!51685 (tuple2!52689 hash!414 oldBucket!40) Nil!51685)) lt!1799880)))

(declare-fun b!4637296 () Bool)

(assert (=> b!4637296 (= e!2892837 (addToMapMapFromBucket!1019 (_2!29638 (h!57777 (Cons!51685 (tuple2!52689 hash!414 oldBucket!40) Nil!51685))) (extractMap!1616 (t!358883 (Cons!51685 (tuple2!52689 hash!414 oldBucket!40) Nil!51685)))))))

(declare-fun b!4637297 () Bool)

(assert (=> b!4637297 (= e!2892837 (ListMap!4390 Nil!51684))))

(assert (= (and d!1462278 c!793660) b!4637296))

(assert (= (and d!1462278 (not c!793660)) b!4637297))

(declare-fun m!5495229 () Bool)

(assert (=> d!1462278 m!5495229))

(declare-fun m!5495231 () Bool)

(assert (=> d!1462278 m!5495231))

(declare-fun m!5495233 () Bool)

(assert (=> b!4637296 m!5495233))

(assert (=> b!4637296 m!5495233))

(declare-fun m!5495235 () Bool)

(assert (=> b!4637296 m!5495235))

(assert (=> b!4637219 d!1462278))

(declare-fun bs!1031802 () Bool)

(declare-fun b!4637375 () Bool)

(assert (= bs!1031802 (and b!4637375 d!1462260)))

(declare-fun lambda!195336 () Int)

(assert (=> bs!1031802 (not (= lambda!195336 lambda!195263))))

(declare-fun bs!1031803 () Bool)

(assert (= bs!1031803 (and b!4637375 d!1462272)))

(assert (=> bs!1031803 (not (= lambda!195336 lambda!195264))))

(assert (=> b!4637375 true))

(declare-fun bs!1031804 () Bool)

(declare-fun b!4637377 () Bool)

(assert (= bs!1031804 (and b!4637377 d!1462260)))

(declare-fun lambda!195337 () Int)

(assert (=> bs!1031804 (not (= lambda!195337 lambda!195263))))

(declare-fun bs!1031805 () Bool)

(assert (= bs!1031805 (and b!4637377 d!1462272)))

(assert (=> bs!1031805 (not (= lambda!195337 lambda!195264))))

(declare-fun bs!1031806 () Bool)

(assert (= bs!1031806 (and b!4637377 b!4637375)))

(assert (=> bs!1031806 (= lambda!195337 lambda!195336)))

(assert (=> b!4637377 true))

(declare-fun lambda!195338 () Int)

(assert (=> bs!1031804 (not (= lambda!195338 lambda!195263))))

(assert (=> bs!1031805 (not (= lambda!195338 lambda!195264))))

(declare-fun lt!1800026 () ListMap!4389)

(assert (=> bs!1031806 (= (= lt!1800026 lt!1799841) (= lambda!195338 lambda!195336))))

(assert (=> b!4637377 (= (= lt!1800026 lt!1799841) (= lambda!195338 lambda!195337))))

(assert (=> b!4637377 true))

(declare-fun bs!1031807 () Bool)

(declare-fun d!1462280 () Bool)

(assert (= bs!1031807 (and d!1462280 d!1462272)))

(declare-fun lambda!195339 () Int)

(assert (=> bs!1031807 (not (= lambda!195339 lambda!195264))))

(declare-fun bs!1031808 () Bool)

(assert (= bs!1031808 (and d!1462280 d!1462260)))

(assert (=> bs!1031808 (not (= lambda!195339 lambda!195263))))

(declare-fun bs!1031809 () Bool)

(assert (= bs!1031809 (and d!1462280 b!4637375)))

(declare-fun lt!1800009 () ListMap!4389)

(assert (=> bs!1031809 (= (= lt!1800009 lt!1799841) (= lambda!195339 lambda!195336))))

(declare-fun bs!1031810 () Bool)

(assert (= bs!1031810 (and d!1462280 b!4637377)))

(assert (=> bs!1031810 (= (= lt!1800009 lt!1800026) (= lambda!195339 lambda!195338))))

(assert (=> bs!1031810 (= (= lt!1800009 lt!1799841) (= lambda!195339 lambda!195337))))

(assert (=> d!1462280 true))

(declare-fun b!4637374 () Bool)

(declare-fun e!2892886 () Bool)

(assert (=> b!4637374 (= e!2892886 (invariantList!1246 (toList!5076 lt!1800009)))))

(declare-fun bm!323668 () Bool)

(declare-fun call!323673 () Bool)

(declare-fun c!793677 () Bool)

(assert (=> bm!323668 (= call!323673 (forall!10911 (ite c!793677 (toList!5076 lt!1799841) oldBucket!40) (ite c!793677 lambda!195336 lambda!195338)))))

(declare-fun e!2892887 () ListMap!4389)

(assert (=> b!4637375 (= e!2892887 lt!1799841)))

(declare-fun lt!1800008 () Unit!114635)

(declare-fun call!323675 () Unit!114635)

(assert (=> b!4637375 (= lt!1800008 call!323675)))

(declare-fun call!323674 () Bool)

(assert (=> b!4637375 call!323674))

(declare-fun lt!1800010 () Unit!114635)

(assert (=> b!4637375 (= lt!1800010 lt!1800008)))

(assert (=> b!4637375 call!323673))

(declare-fun lt!1800015 () Unit!114635)

(declare-fun Unit!114640 () Unit!114635)

(assert (=> b!4637375 (= lt!1800015 Unit!114640)))

(assert (=> d!1462280 e!2892886))

(declare-fun res!1946857 () Bool)

(assert (=> d!1462280 (=> (not res!1946857) (not e!2892886))))

(assert (=> d!1462280 (= res!1946857 (forall!10911 oldBucket!40 lambda!195339))))

(assert (=> d!1462280 (= lt!1800009 e!2892887)))

(assert (=> d!1462280 (= c!793677 ((_ is Nil!51684) oldBucket!40))))

(assert (=> d!1462280 (noDuplicateKeys!1560 oldBucket!40)))

(assert (=> d!1462280 (= (addToMapMapFromBucket!1019 oldBucket!40 lt!1799841) lt!1800009)))

(declare-fun b!4637376 () Bool)

(declare-fun res!1946858 () Bool)

(assert (=> b!4637376 (=> (not res!1946858) (not e!2892886))))

(assert (=> b!4637376 (= res!1946858 (forall!10911 (toList!5076 lt!1799841) lambda!195339))))

(declare-fun bm!323669 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!548 (ListMap!4389) Unit!114635)

(assert (=> bm!323669 (= call!323675 (lemmaContainsAllItsOwnKeys!548 lt!1799841))))

(declare-fun bm!323670 () Bool)

(assert (=> bm!323670 (= call!323674 (forall!10911 (ite c!793677 (toList!5076 lt!1799841) (t!358882 oldBucket!40)) (ite c!793677 lambda!195336 lambda!195338)))))

(assert (=> b!4637377 (= e!2892887 lt!1800026)))

(declare-fun lt!1800027 () ListMap!4389)

(declare-fun +!1918 (ListMap!4389 tuple2!52686) ListMap!4389)

(assert (=> b!4637377 (= lt!1800027 (+!1918 lt!1799841 (h!57776 oldBucket!40)))))

(assert (=> b!4637377 (= lt!1800026 (addToMapMapFromBucket!1019 (t!358882 oldBucket!40) (+!1918 lt!1799841 (h!57776 oldBucket!40))))))

(declare-fun lt!1800011 () Unit!114635)

(assert (=> b!4637377 (= lt!1800011 call!323675)))

(assert (=> b!4637377 (forall!10911 (toList!5076 lt!1799841) lambda!195337)))

(declare-fun lt!1800021 () Unit!114635)

(assert (=> b!4637377 (= lt!1800021 lt!1800011)))

(assert (=> b!4637377 (forall!10911 (toList!5076 lt!1800027) lambda!195338)))

(declare-fun lt!1800019 () Unit!114635)

(declare-fun Unit!114641 () Unit!114635)

(assert (=> b!4637377 (= lt!1800019 Unit!114641)))

(assert (=> b!4637377 call!323674))

(declare-fun lt!1800012 () Unit!114635)

(declare-fun Unit!114642 () Unit!114635)

(assert (=> b!4637377 (= lt!1800012 Unit!114642)))

(declare-fun lt!1800028 () Unit!114635)

(declare-fun Unit!114643 () Unit!114635)

(assert (=> b!4637377 (= lt!1800028 Unit!114643)))

(declare-fun lt!1800018 () Unit!114635)

(declare-fun forallContained!3138 (List!51808 Int tuple2!52686) Unit!114635)

(assert (=> b!4637377 (= lt!1800018 (forallContained!3138 (toList!5076 lt!1800027) lambda!195338 (h!57776 oldBucket!40)))))

(assert (=> b!4637377 (contains!14805 lt!1800027 (_1!29637 (h!57776 oldBucket!40)))))

(declare-fun lt!1800016 () Unit!114635)

(declare-fun Unit!114644 () Unit!114635)

(assert (=> b!4637377 (= lt!1800016 Unit!114644)))

(assert (=> b!4637377 (contains!14805 lt!1800026 (_1!29637 (h!57776 oldBucket!40)))))

(declare-fun lt!1800020 () Unit!114635)

(declare-fun Unit!114645 () Unit!114635)

(assert (=> b!4637377 (= lt!1800020 Unit!114645)))

(assert (=> b!4637377 call!323673))

(declare-fun lt!1800013 () Unit!114635)

(declare-fun Unit!114646 () Unit!114635)

(assert (=> b!4637377 (= lt!1800013 Unit!114646)))

(assert (=> b!4637377 (forall!10911 (toList!5076 lt!1800027) lambda!195338)))

(declare-fun lt!1800014 () Unit!114635)

(declare-fun Unit!114647 () Unit!114635)

(assert (=> b!4637377 (= lt!1800014 Unit!114647)))

(declare-fun lt!1800024 () Unit!114635)

(declare-fun Unit!114648 () Unit!114635)

(assert (=> b!4637377 (= lt!1800024 Unit!114648)))

(declare-fun lt!1800023 () Unit!114635)

(declare-fun addForallContainsKeyThenBeforeAdding!547 (ListMap!4389 ListMap!4389 K!13050 V!13296) Unit!114635)

(assert (=> b!4637377 (= lt!1800023 (addForallContainsKeyThenBeforeAdding!547 lt!1799841 lt!1800026 (_1!29637 (h!57776 oldBucket!40)) (_2!29637 (h!57776 oldBucket!40))))))

(assert (=> b!4637377 (forall!10911 (toList!5076 lt!1799841) lambda!195338)))

(declare-fun lt!1800022 () Unit!114635)

(assert (=> b!4637377 (= lt!1800022 lt!1800023)))

(assert (=> b!4637377 (forall!10911 (toList!5076 lt!1799841) lambda!195338)))

(declare-fun lt!1800017 () Unit!114635)

(declare-fun Unit!114649 () Unit!114635)

(assert (=> b!4637377 (= lt!1800017 Unit!114649)))

(declare-fun res!1946856 () Bool)

(assert (=> b!4637377 (= res!1946856 (forall!10911 oldBucket!40 lambda!195338))))

(declare-fun e!2892885 () Bool)

(assert (=> b!4637377 (=> (not res!1946856) (not e!2892885))))

(assert (=> b!4637377 e!2892885))

(declare-fun lt!1800025 () Unit!114635)

(declare-fun Unit!114650 () Unit!114635)

(assert (=> b!4637377 (= lt!1800025 Unit!114650)))

(declare-fun b!4637378 () Bool)

(assert (=> b!4637378 (= e!2892885 (forall!10911 (toList!5076 lt!1799841) lambda!195338))))

(assert (= (and d!1462280 c!793677) b!4637375))

(assert (= (and d!1462280 (not c!793677)) b!4637377))

(assert (= (and b!4637377 res!1946856) b!4637378))

(assert (= (or b!4637375 b!4637377) bm!323669))

(assert (= (or b!4637375 b!4637377) bm!323670))

(assert (= (or b!4637375 b!4637377) bm!323668))

(assert (= (and d!1462280 res!1946857) b!4637376))

(assert (= (and b!4637376 res!1946858) b!4637374))

(declare-fun m!5495317 () Bool)

(assert (=> b!4637378 m!5495317))

(declare-fun m!5495319 () Bool)

(assert (=> d!1462280 m!5495319))

(assert (=> d!1462280 m!5495167))

(assert (=> b!4637377 m!5495317))

(declare-fun m!5495321 () Bool)

(assert (=> b!4637377 m!5495321))

(declare-fun m!5495323 () Bool)

(assert (=> b!4637377 m!5495323))

(assert (=> b!4637377 m!5495317))

(declare-fun m!5495325 () Bool)

(assert (=> b!4637377 m!5495325))

(assert (=> b!4637377 m!5495321))

(declare-fun m!5495327 () Bool)

(assert (=> b!4637377 m!5495327))

(declare-fun m!5495329 () Bool)

(assert (=> b!4637377 m!5495329))

(assert (=> b!4637377 m!5495329))

(declare-fun m!5495331 () Bool)

(assert (=> b!4637377 m!5495331))

(declare-fun m!5495333 () Bool)

(assert (=> b!4637377 m!5495333))

(declare-fun m!5495335 () Bool)

(assert (=> b!4637377 m!5495335))

(declare-fun m!5495337 () Bool)

(assert (=> b!4637377 m!5495337))

(declare-fun m!5495339 () Bool)

(assert (=> bm!323670 m!5495339))

(declare-fun m!5495341 () Bool)

(assert (=> b!4637374 m!5495341))

(declare-fun m!5495343 () Bool)

(assert (=> bm!323668 m!5495343))

(declare-fun m!5495345 () Bool)

(assert (=> b!4637376 m!5495345))

(declare-fun m!5495347 () Bool)

(assert (=> bm!323669 m!5495347))

(assert (=> b!4637214 d!1462280))

(declare-fun bs!1031811 () Bool)

(declare-fun d!1462300 () Bool)

(assert (= bs!1031811 (and d!1462300 d!1462278)))

(declare-fun lambda!195340 () Int)

(assert (=> bs!1031811 (= lambda!195340 lambda!195267)))

(declare-fun lt!1800029 () ListMap!4389)

(assert (=> d!1462300 (invariantList!1246 (toList!5076 lt!1800029))))

(declare-fun e!2892888 () ListMap!4389)

(assert (=> d!1462300 (= lt!1800029 e!2892888)))

(declare-fun c!793678 () Bool)

(assert (=> d!1462300 (= c!793678 ((_ is Cons!51685) Nil!51685))))

(assert (=> d!1462300 (forall!10912 Nil!51685 lambda!195340)))

(assert (=> d!1462300 (= (extractMap!1616 Nil!51685) lt!1800029)))

(declare-fun b!4637381 () Bool)

(assert (=> b!4637381 (= e!2892888 (addToMapMapFromBucket!1019 (_2!29638 (h!57777 Nil!51685)) (extractMap!1616 (t!358883 Nil!51685))))))

(declare-fun b!4637382 () Bool)

(assert (=> b!4637382 (= e!2892888 (ListMap!4390 Nil!51684))))

(assert (= (and d!1462300 c!793678) b!4637381))

(assert (= (and d!1462300 (not c!793678)) b!4637382))

(declare-fun m!5495349 () Bool)

(assert (=> d!1462300 m!5495349))

(declare-fun m!5495351 () Bool)

(assert (=> d!1462300 m!5495351))

(declare-fun m!5495353 () Bool)

(assert (=> b!4637381 m!5495353))

(assert (=> b!4637381 m!5495353))

(declare-fun m!5495355 () Bool)

(assert (=> b!4637381 m!5495355))

(assert (=> b!4637214 d!1462300))

(declare-fun b!4637387 () Bool)

(declare-fun tp!1342606 () Bool)

(declare-fun e!2892891 () Bool)

(assert (=> b!4637387 (= e!2892891 (and tp_is_empty!29533 tp_is_empty!29535 tp!1342606))))

(assert (=> b!4637215 (= tp!1342598 e!2892891)))

(assert (= (and b!4637215 ((_ is Cons!51684) (t!358882 newBucket!224))) b!4637387))

(declare-fun tp!1342607 () Bool)

(declare-fun b!4637388 () Bool)

(declare-fun e!2892892 () Bool)

(assert (=> b!4637388 (= e!2892892 (and tp_is_empty!29533 tp_is_empty!29535 tp!1342607))))

(assert (=> b!4637220 (= tp!1342599 e!2892892)))

(assert (= (and b!4637220 ((_ is Cons!51684) (t!358882 oldBucket!40))) b!4637388))

(check-sat (not b!4637286) (not b!4637290) (not b!4637284) (not b!4637288) (not b!4637287) (not d!1462280) (not bm!323669) (not bm!323649) (not b!4637381) (not b!4637376) tp_is_empty!29535 (not d!1462300) (not d!1462278) (not bm!323668) (not bm!323670) (not b!4637289) (not b!4637374) (not d!1462276) (not d!1462272) (not b!4637388) (not b!4637250) (not d!1462260) (not b!4637378) (not b!4637249) (not b!4637291) (not b!4637261) (not b!4637387) (not d!1462268) (not d!1462266) (not b!4637264) (not b!4637377) (not b!4637263) (not b!4637296) tp_is_empty!29533)
(check-sat)
