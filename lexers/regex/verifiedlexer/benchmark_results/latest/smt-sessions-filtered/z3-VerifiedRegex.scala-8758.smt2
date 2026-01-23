; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!467488 () Bool)

(assert start!467488)

(declare-fun e!2897723 () Bool)

(declare-fun b!4645166 () Bool)

(declare-fun tp_is_empty!29765 () Bool)

(declare-fun tp!1343082 () Bool)

(declare-fun tp_is_empty!29767 () Bool)

(assert (=> b!4645166 (= e!2897723 (and tp_is_empty!29765 tp_is_empty!29767 tp!1343082))))

(declare-fun b!4645167 () Bool)

(declare-fun res!1951574 () Bool)

(declare-fun e!2897726 () Bool)

(assert (=> b!4645167 (=> (not res!1951574) (not e!2897726))))

(declare-datatypes ((Hashable!6015 0))(
  ( (HashableExt!6014 (__x!31718 Int)) )
))
(declare-fun hashF!1389 () Hashable!6015)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!13195 0))(
  ( (K!13196 (val!18827 Int)) )
))
(declare-datatypes ((V!13441 0))(
  ( (V!13442 (val!18828 Int)) )
))
(declare-datatypes ((tuple2!52918 0))(
  ( (tuple2!52919 (_1!29753 K!13195) (_2!29753 V!13441)) )
))
(declare-datatypes ((List!51958 0))(
  ( (Nil!51834) (Cons!51834 (h!57960 tuple2!52918) (t!359054 List!51958)) )
))
(declare-fun oldBucket!40 () List!51958)

(declare-fun allKeysSameHash!1472 (List!51958 (_ BitVec 64) Hashable!6015) Bool)

(assert (=> b!4645167 (= res!1951574 (allKeysSameHash!1472 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4645168 () Bool)

(declare-fun e!2897724 () Bool)

(assert (=> b!4645168 (= e!2897726 e!2897724)))

(declare-fun res!1951573 () Bool)

(assert (=> b!4645168 (=> (not res!1951573) (not e!2897724))))

(declare-datatypes ((ListMap!4505 0))(
  ( (ListMap!4506 (toList!5174 List!51958)) )
))
(declare-fun lt!1809542 () ListMap!4505)

(declare-fun key!4968 () K!13195)

(declare-fun contains!14981 (ListMap!4505 K!13195) Bool)

(assert (=> b!4645168 (= res!1951573 (contains!14981 lt!1809542 key!4968))))

(declare-datatypes ((tuple2!52920 0))(
  ( (tuple2!52921 (_1!29754 (_ BitVec 64)) (_2!29754 List!51958)) )
))
(declare-datatypes ((List!51959 0))(
  ( (Nil!51835) (Cons!51835 (h!57961 tuple2!52920) (t!359055 List!51959)) )
))
(declare-fun extractMap!1674 (List!51959) ListMap!4505)

(assert (=> b!4645168 (= lt!1809542 (extractMap!1674 (Cons!51835 (tuple2!52921 hash!414 oldBucket!40) Nil!51835)))))

(declare-fun b!4645169 () Bool)

(declare-fun res!1951576 () Bool)

(assert (=> b!4645169 (=> (not res!1951576) (not e!2897726))))

(declare-fun newBucket!224 () List!51958)

(declare-fun removePairForKey!1241 (List!51958 K!13195) List!51958)

(assert (=> b!4645169 (= res!1951576 (= (removePairForKey!1241 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4645170 () Bool)

(declare-fun res!1951570 () Bool)

(assert (=> b!4645170 (=> (not res!1951570) (not e!2897724))))

(assert (=> b!4645170 (= res!1951570 (allKeysSameHash!1472 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4645171 () Bool)

(declare-fun res!1951571 () Bool)

(assert (=> b!4645171 (=> (not res!1951571) (not e!2897726))))

(declare-fun noDuplicateKeys!1618 (List!51958) Bool)

(assert (=> b!4645171 (= res!1951571 (noDuplicateKeys!1618 newBucket!224))))

(declare-fun b!4645172 () Bool)

(declare-fun res!1951575 () Bool)

(assert (=> b!4645172 (=> (not res!1951575) (not e!2897724))))

(declare-fun hash!3737 (Hashable!6015 K!13195) (_ BitVec 64))

(assert (=> b!4645172 (= res!1951575 (= (hash!3737 hashF!1389 key!4968) hash!414))))

(declare-fun res!1951572 () Bool)

(assert (=> start!467488 (=> (not res!1951572) (not e!2897726))))

(assert (=> start!467488 (= res!1951572 (noDuplicateKeys!1618 oldBucket!40))))

(assert (=> start!467488 e!2897726))

(assert (=> start!467488 true))

(declare-fun e!2897725 () Bool)

(assert (=> start!467488 e!2897725))

(assert (=> start!467488 tp_is_empty!29765))

(assert (=> start!467488 e!2897723))

(declare-fun b!4645173 () Bool)

(declare-fun tp!1343083 () Bool)

(assert (=> b!4645173 (= e!2897725 (and tp_is_empty!29765 tp_is_empty!29767 tp!1343083))))

(declare-fun b!4645174 () Bool)

(declare-fun lt!1809543 () ListMap!4505)

(assert (=> b!4645174 (= e!2897724 (not (= lt!1809543 (ListMap!4506 Nil!51834))))))

(declare-fun addToMapMapFromBucket!1075 (List!51958 ListMap!4505) ListMap!4505)

(assert (=> b!4645174 (= lt!1809542 (addToMapMapFromBucket!1075 oldBucket!40 lt!1809543))))

(assert (=> b!4645174 (= lt!1809543 (extractMap!1674 Nil!51835))))

(assert (=> b!4645174 true))

(assert (= (and start!467488 res!1951572) b!4645171))

(assert (= (and b!4645171 res!1951571) b!4645169))

(assert (= (and b!4645169 res!1951576) b!4645167))

(assert (= (and b!4645167 res!1951574) b!4645168))

(assert (= (and b!4645168 res!1951573) b!4645172))

(assert (= (and b!4645172 res!1951575) b!4645170))

(assert (= (and b!4645170 res!1951570) b!4645174))

(get-info :version)

(assert (= (and start!467488 ((_ is Cons!51834) oldBucket!40)) b!4645173))

(assert (= (and start!467488 ((_ is Cons!51834) newBucket!224)) b!4645166))

(declare-fun m!5510119 () Bool)

(assert (=> b!4645172 m!5510119))

(declare-fun m!5510121 () Bool)

(assert (=> b!4645171 m!5510121))

(declare-fun m!5510123 () Bool)

(assert (=> b!4645168 m!5510123))

(declare-fun m!5510125 () Bool)

(assert (=> b!4645168 m!5510125))

(declare-fun m!5510127 () Bool)

(assert (=> b!4645167 m!5510127))

(declare-fun m!5510129 () Bool)

(assert (=> b!4645170 m!5510129))

(declare-fun m!5510131 () Bool)

(assert (=> b!4645174 m!5510131))

(declare-fun m!5510133 () Bool)

(assert (=> b!4645174 m!5510133))

(declare-fun m!5510135 () Bool)

(assert (=> b!4645169 m!5510135))

(declare-fun m!5510137 () Bool)

(assert (=> start!467488 m!5510137))

(check-sat (not b!4645168) (not b!4645170) (not b!4645174) (not b!4645166) (not b!4645167) (not b!4645172) (not start!467488) tp_is_empty!29767 (not b!4645173) tp_is_empty!29765 (not b!4645171) (not b!4645169))
(check-sat)
(get-model)

(declare-fun d!1464807 () Bool)

(declare-fun hash!3738 (Hashable!6015 K!13195) (_ BitVec 64))

(assert (=> d!1464807 (= (hash!3737 hashF!1389 key!4968) (hash!3738 hashF!1389 key!4968))))

(declare-fun bs!1036096 () Bool)

(assert (= bs!1036096 d!1464807))

(declare-fun m!5510139 () Bool)

(assert (=> bs!1036096 m!5510139))

(assert (=> b!4645172 d!1464807))

(declare-fun d!1464809 () Bool)

(declare-fun res!1951581 () Bool)

(declare-fun e!2897731 () Bool)

(assert (=> d!1464809 (=> res!1951581 e!2897731)))

(assert (=> d!1464809 (= res!1951581 (not ((_ is Cons!51834) oldBucket!40)))))

(assert (=> d!1464809 (= (noDuplicateKeys!1618 oldBucket!40) e!2897731)))

(declare-fun b!4645179 () Bool)

(declare-fun e!2897732 () Bool)

(assert (=> b!4645179 (= e!2897731 e!2897732)))

(declare-fun res!1951582 () Bool)

(assert (=> b!4645179 (=> (not res!1951582) (not e!2897732))))

(declare-fun containsKey!2681 (List!51958 K!13195) Bool)

(assert (=> b!4645179 (= res!1951582 (not (containsKey!2681 (t!359054 oldBucket!40) (_1!29753 (h!57960 oldBucket!40)))))))

(declare-fun b!4645180 () Bool)

(assert (=> b!4645180 (= e!2897732 (noDuplicateKeys!1618 (t!359054 oldBucket!40)))))

(assert (= (and d!1464809 (not res!1951581)) b!4645179))

(assert (= (and b!4645179 res!1951582) b!4645180))

(declare-fun m!5510141 () Bool)

(assert (=> b!4645179 m!5510141))

(declare-fun m!5510143 () Bool)

(assert (=> b!4645180 m!5510143))

(assert (=> start!467488 d!1464809))

(declare-fun d!1464811 () Bool)

(assert (=> d!1464811 true))

(assert (=> d!1464811 true))

(declare-fun lambda!197309 () Int)

(declare-fun forall!10978 (List!51958 Int) Bool)

(assert (=> d!1464811 (= (allKeysSameHash!1472 oldBucket!40 hash!414 hashF!1389) (forall!10978 oldBucket!40 lambda!197309))))

(declare-fun bs!1036097 () Bool)

(assert (= bs!1036097 d!1464811))

(declare-fun m!5510145 () Bool)

(assert (=> bs!1036097 m!5510145))

(assert (=> b!4645167 d!1464811))

(declare-fun b!4645207 () Bool)

(declare-datatypes ((Unit!116182 0))(
  ( (Unit!116183) )
))
(declare-fun e!2897750 () Unit!116182)

(declare-fun lt!1809569 () Unit!116182)

(assert (=> b!4645207 (= e!2897750 lt!1809569)))

(declare-fun lt!1809572 () Unit!116182)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1489 (List!51958 K!13195) Unit!116182)

(assert (=> b!4645207 (= lt!1809572 (lemmaContainsKeyImpliesGetValueByKeyDefined!1489 (toList!5174 lt!1809542) key!4968))))

(declare-datatypes ((Option!11799 0))(
  ( (None!11798) (Some!11798 (v!46050 V!13441)) )
))
(declare-fun isDefined!9064 (Option!11799) Bool)

(declare-fun getValueByKey!1587 (List!51958 K!13195) Option!11799)

(assert (=> b!4645207 (isDefined!9064 (getValueByKey!1587 (toList!5174 lt!1809542) key!4968))))

(declare-fun lt!1809566 () Unit!116182)

(assert (=> b!4645207 (= lt!1809566 lt!1809572)))

(declare-fun lemmaInListThenGetKeysListContains!725 (List!51958 K!13195) Unit!116182)

(assert (=> b!4645207 (= lt!1809569 (lemmaInListThenGetKeysListContains!725 (toList!5174 lt!1809542) key!4968))))

(declare-fun call!324326 () Bool)

(assert (=> b!4645207 call!324326))

(declare-fun d!1464815 () Bool)

(declare-fun e!2897749 () Bool)

(assert (=> d!1464815 e!2897749))

(declare-fun res!1951591 () Bool)

(assert (=> d!1464815 (=> res!1951591 e!2897749)))

(declare-fun e!2897752 () Bool)

(assert (=> d!1464815 (= res!1951591 e!2897752)))

(declare-fun res!1951590 () Bool)

(assert (=> d!1464815 (=> (not res!1951590) (not e!2897752))))

(declare-fun lt!1809568 () Bool)

(assert (=> d!1464815 (= res!1951590 (not lt!1809568))))

(declare-fun lt!1809571 () Bool)

(assert (=> d!1464815 (= lt!1809568 lt!1809571)))

(declare-fun lt!1809573 () Unit!116182)

(assert (=> d!1464815 (= lt!1809573 e!2897750)))

(declare-fun c!794848 () Bool)

(assert (=> d!1464815 (= c!794848 lt!1809571)))

(declare-fun containsKey!2682 (List!51958 K!13195) Bool)

(assert (=> d!1464815 (= lt!1809571 (containsKey!2682 (toList!5174 lt!1809542) key!4968))))

(assert (=> d!1464815 (= (contains!14981 lt!1809542 key!4968) lt!1809568)))

(declare-fun bm!324321 () Bool)

(declare-datatypes ((List!51960 0))(
  ( (Nil!51836) (Cons!51836 (h!57964 K!13195) (t!359056 List!51960)) )
))
(declare-fun e!2897747 () List!51960)

(declare-fun contains!14982 (List!51960 K!13195) Bool)

(assert (=> bm!324321 (= call!324326 (contains!14982 e!2897747 key!4968))))

(declare-fun c!794849 () Bool)

(assert (=> bm!324321 (= c!794849 c!794848)))

(declare-fun b!4645208 () Bool)

(declare-fun e!2897748 () Bool)

(declare-fun keys!18341 (ListMap!4505) List!51960)

(assert (=> b!4645208 (= e!2897748 (contains!14982 (keys!18341 lt!1809542) key!4968))))

(declare-fun b!4645209 () Bool)

(assert (=> b!4645209 (= e!2897749 e!2897748)))

(declare-fun res!1951589 () Bool)

(assert (=> b!4645209 (=> (not res!1951589) (not e!2897748))))

(assert (=> b!4645209 (= res!1951589 (isDefined!9064 (getValueByKey!1587 (toList!5174 lt!1809542) key!4968)))))

(declare-fun b!4645210 () Bool)

(assert (=> b!4645210 (= e!2897752 (not (contains!14982 (keys!18341 lt!1809542) key!4968)))))

(declare-fun b!4645211 () Bool)

(assert (=> b!4645211 false))

(declare-fun lt!1809570 () Unit!116182)

(declare-fun lt!1809567 () Unit!116182)

(assert (=> b!4645211 (= lt!1809570 lt!1809567)))

(assert (=> b!4645211 (containsKey!2682 (toList!5174 lt!1809542) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!729 (List!51958 K!13195) Unit!116182)

(assert (=> b!4645211 (= lt!1809567 (lemmaInGetKeysListThenContainsKey!729 (toList!5174 lt!1809542) key!4968))))

(declare-fun e!2897751 () Unit!116182)

(declare-fun Unit!116184 () Unit!116182)

(assert (=> b!4645211 (= e!2897751 Unit!116184)))

(declare-fun b!4645212 () Bool)

(assert (=> b!4645212 (= e!2897750 e!2897751)))

(declare-fun c!794847 () Bool)

(assert (=> b!4645212 (= c!794847 call!324326)))

(declare-fun b!4645213 () Bool)

(declare-fun Unit!116185 () Unit!116182)

(assert (=> b!4645213 (= e!2897751 Unit!116185)))

(declare-fun b!4645214 () Bool)

(declare-fun getKeysList!730 (List!51958) List!51960)

(assert (=> b!4645214 (= e!2897747 (getKeysList!730 (toList!5174 lt!1809542)))))

(declare-fun b!4645215 () Bool)

(assert (=> b!4645215 (= e!2897747 (keys!18341 lt!1809542))))

(assert (= (and d!1464815 c!794848) b!4645207))

(assert (= (and d!1464815 (not c!794848)) b!4645212))

(assert (= (and b!4645212 c!794847) b!4645211))

(assert (= (and b!4645212 (not c!794847)) b!4645213))

(assert (= (or b!4645207 b!4645212) bm!324321))

(assert (= (and bm!324321 c!794849) b!4645214))

(assert (= (and bm!324321 (not c!794849)) b!4645215))

(assert (= (and d!1464815 res!1951590) b!4645210))

(assert (= (and d!1464815 (not res!1951591)) b!4645209))

(assert (= (and b!4645209 res!1951589) b!4645208))

(declare-fun m!5510147 () Bool)

(assert (=> b!4645209 m!5510147))

(assert (=> b!4645209 m!5510147))

(declare-fun m!5510149 () Bool)

(assert (=> b!4645209 m!5510149))

(declare-fun m!5510151 () Bool)

(assert (=> b!4645210 m!5510151))

(assert (=> b!4645210 m!5510151))

(declare-fun m!5510153 () Bool)

(assert (=> b!4645210 m!5510153))

(assert (=> b!4645215 m!5510151))

(declare-fun m!5510155 () Bool)

(assert (=> bm!324321 m!5510155))

(declare-fun m!5510157 () Bool)

(assert (=> d!1464815 m!5510157))

(declare-fun m!5510159 () Bool)

(assert (=> b!4645207 m!5510159))

(assert (=> b!4645207 m!5510147))

(assert (=> b!4645207 m!5510147))

(assert (=> b!4645207 m!5510149))

(declare-fun m!5510161 () Bool)

(assert (=> b!4645207 m!5510161))

(assert (=> b!4645208 m!5510151))

(assert (=> b!4645208 m!5510151))

(assert (=> b!4645208 m!5510153))

(declare-fun m!5510163 () Bool)

(assert (=> b!4645214 m!5510163))

(assert (=> b!4645211 m!5510157))

(declare-fun m!5510165 () Bool)

(assert (=> b!4645211 m!5510165))

(assert (=> b!4645168 d!1464815))

(declare-fun d!1464817 () Bool)

(declare-fun lt!1809576 () ListMap!4505)

(declare-fun invariantList!1280 (List!51958) Bool)

(assert (=> d!1464817 (invariantList!1280 (toList!5174 lt!1809576))))

(declare-fun e!2897755 () ListMap!4505)

(assert (=> d!1464817 (= lt!1809576 e!2897755)))

(declare-fun c!794852 () Bool)

(assert (=> d!1464817 (= c!794852 ((_ is Cons!51835) (Cons!51835 (tuple2!52921 hash!414 oldBucket!40) Nil!51835)))))

(declare-fun lambda!197312 () Int)

(declare-fun forall!10980 (List!51959 Int) Bool)

(assert (=> d!1464817 (forall!10980 (Cons!51835 (tuple2!52921 hash!414 oldBucket!40) Nil!51835) lambda!197312)))

(assert (=> d!1464817 (= (extractMap!1674 (Cons!51835 (tuple2!52921 hash!414 oldBucket!40) Nil!51835)) lt!1809576)))

(declare-fun b!4645220 () Bool)

(assert (=> b!4645220 (= e!2897755 (addToMapMapFromBucket!1075 (_2!29754 (h!57961 (Cons!51835 (tuple2!52921 hash!414 oldBucket!40) Nil!51835))) (extractMap!1674 (t!359055 (Cons!51835 (tuple2!52921 hash!414 oldBucket!40) Nil!51835)))))))

(declare-fun b!4645221 () Bool)

(assert (=> b!4645221 (= e!2897755 (ListMap!4506 Nil!51834))))

(assert (= (and d!1464817 c!794852) b!4645220))

(assert (= (and d!1464817 (not c!794852)) b!4645221))

(declare-fun m!5510167 () Bool)

(assert (=> d!1464817 m!5510167))

(declare-fun m!5510169 () Bool)

(assert (=> d!1464817 m!5510169))

(declare-fun m!5510171 () Bool)

(assert (=> b!4645220 m!5510171))

(assert (=> b!4645220 m!5510171))

(declare-fun m!5510173 () Bool)

(assert (=> b!4645220 m!5510173))

(assert (=> b!4645168 d!1464817))

(declare-fun bs!1036112 () Bool)

(declare-fun b!4645312 () Bool)

(assert (= bs!1036112 (and b!4645312 d!1464811)))

(declare-fun lambda!197381 () Int)

(assert (=> bs!1036112 (not (= lambda!197381 lambda!197309))))

(assert (=> b!4645312 true))

(declare-fun bs!1036113 () Bool)

(declare-fun b!4645314 () Bool)

(assert (= bs!1036113 (and b!4645314 d!1464811)))

(declare-fun lambda!197382 () Int)

(assert (=> bs!1036113 (not (= lambda!197382 lambda!197309))))

(declare-fun bs!1036114 () Bool)

(assert (= bs!1036114 (and b!4645314 b!4645312)))

(assert (=> bs!1036114 (= lambda!197382 lambda!197381)))

(assert (=> b!4645314 true))

(declare-fun lambda!197383 () Int)

(assert (=> bs!1036113 (not (= lambda!197383 lambda!197309))))

(declare-fun lt!1809723 () ListMap!4505)

(assert (=> bs!1036114 (= (= lt!1809723 lt!1809543) (= lambda!197383 lambda!197381))))

(assert (=> b!4645314 (= (= lt!1809723 lt!1809543) (= lambda!197383 lambda!197382))))

(assert (=> b!4645314 true))

(declare-fun bs!1036115 () Bool)

(declare-fun d!1464819 () Bool)

(assert (= bs!1036115 (and d!1464819 d!1464811)))

(declare-fun lambda!197384 () Int)

(assert (=> bs!1036115 (not (= lambda!197384 lambda!197309))))

(declare-fun bs!1036116 () Bool)

(assert (= bs!1036116 (and d!1464819 b!4645312)))

(declare-fun lt!1809708 () ListMap!4505)

(assert (=> bs!1036116 (= (= lt!1809708 lt!1809543) (= lambda!197384 lambda!197381))))

(declare-fun bs!1036117 () Bool)

(assert (= bs!1036117 (and d!1464819 b!4645314)))

(assert (=> bs!1036117 (= (= lt!1809708 lt!1809543) (= lambda!197384 lambda!197382))))

(assert (=> bs!1036117 (= (= lt!1809708 lt!1809723) (= lambda!197384 lambda!197383))))

(assert (=> d!1464819 true))

(declare-fun b!4645310 () Bool)

(declare-fun e!2897809 () Bool)

(assert (=> b!4645310 (= e!2897809 (invariantList!1280 (toList!5174 lt!1809708)))))

(declare-fun b!4645311 () Bool)

(declare-fun e!2897810 () Bool)

(assert (=> b!4645311 (= e!2897810 (forall!10978 (toList!5174 lt!1809543) lambda!197383))))

(declare-fun e!2897811 () ListMap!4505)

(assert (=> b!4645312 (= e!2897811 lt!1809543)))

(declare-fun lt!1809707 () Unit!116182)

(declare-fun call!324345 () Unit!116182)

(assert (=> b!4645312 (= lt!1809707 call!324345)))

(declare-fun call!324347 () Bool)

(assert (=> b!4645312 call!324347))

(declare-fun lt!1809722 () Unit!116182)

(assert (=> b!4645312 (= lt!1809722 lt!1809707)))

(declare-fun call!324346 () Bool)

(assert (=> b!4645312 call!324346))

(declare-fun lt!1809710 () Unit!116182)

(declare-fun Unit!116186 () Unit!116182)

(assert (=> b!4645312 (= lt!1809710 Unit!116186)))

(declare-fun bm!324340 () Bool)

(declare-fun c!794875 () Bool)

(assert (=> bm!324340 (= call!324346 (forall!10978 (ite c!794875 (toList!5174 lt!1809543) oldBucket!40) (ite c!794875 lambda!197381 lambda!197383)))))

(assert (=> d!1464819 e!2897809))

(declare-fun res!1951625 () Bool)

(assert (=> d!1464819 (=> (not res!1951625) (not e!2897809))))

(assert (=> d!1464819 (= res!1951625 (forall!10978 oldBucket!40 lambda!197384))))

(assert (=> d!1464819 (= lt!1809708 e!2897811)))

(assert (=> d!1464819 (= c!794875 ((_ is Nil!51834) oldBucket!40))))

(assert (=> d!1464819 (noDuplicateKeys!1618 oldBucket!40)))

(assert (=> d!1464819 (= (addToMapMapFromBucket!1075 oldBucket!40 lt!1809543) lt!1809708)))

(declare-fun b!4645313 () Bool)

(declare-fun res!1951626 () Bool)

(assert (=> b!4645313 (=> (not res!1951626) (not e!2897809))))

(assert (=> b!4645313 (= res!1951626 (forall!10978 (toList!5174 lt!1809543) lambda!197384))))

(declare-fun bm!324341 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!580 (ListMap!4505) Unit!116182)

(assert (=> bm!324341 (= call!324345 (lemmaContainsAllItsOwnKeys!580 lt!1809543))))

(assert (=> b!4645314 (= e!2897811 lt!1809723)))

(declare-fun lt!1809709 () ListMap!4505)

(declare-fun +!1964 (ListMap!4505 tuple2!52918) ListMap!4505)

(assert (=> b!4645314 (= lt!1809709 (+!1964 lt!1809543 (h!57960 oldBucket!40)))))

(assert (=> b!4645314 (= lt!1809723 (addToMapMapFromBucket!1075 (t!359054 oldBucket!40) (+!1964 lt!1809543 (h!57960 oldBucket!40))))))

(declare-fun lt!1809714 () Unit!116182)

(assert (=> b!4645314 (= lt!1809714 call!324345)))

(assert (=> b!4645314 (forall!10978 (toList!5174 lt!1809543) lambda!197382)))

(declare-fun lt!1809726 () Unit!116182)

(assert (=> b!4645314 (= lt!1809726 lt!1809714)))

(assert (=> b!4645314 (forall!10978 (toList!5174 lt!1809709) lambda!197383)))

(declare-fun lt!1809716 () Unit!116182)

(declare-fun Unit!116188 () Unit!116182)

(assert (=> b!4645314 (= lt!1809716 Unit!116188)))

(assert (=> b!4645314 call!324347))

(declare-fun lt!1809721 () Unit!116182)

(declare-fun Unit!116189 () Unit!116182)

(assert (=> b!4645314 (= lt!1809721 Unit!116189)))

(declare-fun lt!1809719 () Unit!116182)

(declare-fun Unit!116190 () Unit!116182)

(assert (=> b!4645314 (= lt!1809719 Unit!116190)))

(declare-fun lt!1809720 () Unit!116182)

(declare-fun forallContained!3198 (List!51958 Int tuple2!52918) Unit!116182)

(assert (=> b!4645314 (= lt!1809720 (forallContained!3198 (toList!5174 lt!1809709) lambda!197383 (h!57960 oldBucket!40)))))

(assert (=> b!4645314 (contains!14981 lt!1809709 (_1!29753 (h!57960 oldBucket!40)))))

(declare-fun lt!1809712 () Unit!116182)

(declare-fun Unit!116191 () Unit!116182)

(assert (=> b!4645314 (= lt!1809712 Unit!116191)))

(assert (=> b!4645314 (contains!14981 lt!1809723 (_1!29753 (h!57960 oldBucket!40)))))

(declare-fun lt!1809725 () Unit!116182)

(declare-fun Unit!116192 () Unit!116182)

(assert (=> b!4645314 (= lt!1809725 Unit!116192)))

(assert (=> b!4645314 call!324346))

(declare-fun lt!1809713 () Unit!116182)

(declare-fun Unit!116193 () Unit!116182)

(assert (=> b!4645314 (= lt!1809713 Unit!116193)))

(assert (=> b!4645314 (forall!10978 (toList!5174 lt!1809709) lambda!197383)))

(declare-fun lt!1809724 () Unit!116182)

(declare-fun Unit!116195 () Unit!116182)

(assert (=> b!4645314 (= lt!1809724 Unit!116195)))

(declare-fun lt!1809715 () Unit!116182)

(declare-fun Unit!116196 () Unit!116182)

(assert (=> b!4645314 (= lt!1809715 Unit!116196)))

(declare-fun lt!1809727 () Unit!116182)

(declare-fun addForallContainsKeyThenBeforeAdding!579 (ListMap!4505 ListMap!4505 K!13195 V!13441) Unit!116182)

(assert (=> b!4645314 (= lt!1809727 (addForallContainsKeyThenBeforeAdding!579 lt!1809543 lt!1809723 (_1!29753 (h!57960 oldBucket!40)) (_2!29753 (h!57960 oldBucket!40))))))

(assert (=> b!4645314 (forall!10978 (toList!5174 lt!1809543) lambda!197383)))

(declare-fun lt!1809718 () Unit!116182)

(assert (=> b!4645314 (= lt!1809718 lt!1809727)))

(assert (=> b!4645314 (forall!10978 (toList!5174 lt!1809543) lambda!197383)))

(declare-fun lt!1809717 () Unit!116182)

(declare-fun Unit!116197 () Unit!116182)

(assert (=> b!4645314 (= lt!1809717 Unit!116197)))

(declare-fun res!1951624 () Bool)

(assert (=> b!4645314 (= res!1951624 (forall!10978 oldBucket!40 lambda!197383))))

(assert (=> b!4645314 (=> (not res!1951624) (not e!2897810))))

(assert (=> b!4645314 e!2897810))

(declare-fun lt!1809711 () Unit!116182)

(declare-fun Unit!116198 () Unit!116182)

(assert (=> b!4645314 (= lt!1809711 Unit!116198)))

(declare-fun bm!324342 () Bool)

(assert (=> bm!324342 (= call!324347 (forall!10978 (ite c!794875 (toList!5174 lt!1809543) (t!359054 oldBucket!40)) (ite c!794875 lambda!197381 lambda!197383)))))

(assert (= (and d!1464819 c!794875) b!4645312))

(assert (= (and d!1464819 (not c!794875)) b!4645314))

(assert (= (and b!4645314 res!1951624) b!4645311))

(assert (= (or b!4645312 b!4645314) bm!324341))

(assert (= (or b!4645312 b!4645314) bm!324340))

(assert (= (or b!4645312 b!4645314) bm!324342))

(assert (= (and d!1464819 res!1951625) b!4645313))

(assert (= (and b!4645313 res!1951626) b!4645310))

(declare-fun m!5510261 () Bool)

(assert (=> bm!324341 m!5510261))

(declare-fun m!5510263 () Bool)

(assert (=> b!4645310 m!5510263))

(declare-fun m!5510265 () Bool)

(assert (=> bm!324340 m!5510265))

(declare-fun m!5510267 () Bool)

(assert (=> d!1464819 m!5510267))

(assert (=> d!1464819 m!5510137))

(declare-fun m!5510269 () Bool)

(assert (=> bm!324342 m!5510269))

(declare-fun m!5510271 () Bool)

(assert (=> b!4645314 m!5510271))

(declare-fun m!5510273 () Bool)

(assert (=> b!4645314 m!5510273))

(declare-fun m!5510275 () Bool)

(assert (=> b!4645314 m!5510275))

(assert (=> b!4645314 m!5510273))

(declare-fun m!5510277 () Bool)

(assert (=> b!4645314 m!5510277))

(declare-fun m!5510279 () Bool)

(assert (=> b!4645314 m!5510279))

(assert (=> b!4645314 m!5510275))

(declare-fun m!5510281 () Bool)

(assert (=> b!4645314 m!5510281))

(assert (=> b!4645314 m!5510279))

(declare-fun m!5510283 () Bool)

(assert (=> b!4645314 m!5510283))

(declare-fun m!5510285 () Bool)

(assert (=> b!4645314 m!5510285))

(declare-fun m!5510287 () Bool)

(assert (=> b!4645314 m!5510287))

(declare-fun m!5510289 () Bool)

(assert (=> b!4645314 m!5510289))

(assert (=> b!4645311 m!5510279))

(declare-fun m!5510291 () Bool)

(assert (=> b!4645313 m!5510291))

(assert (=> b!4645174 d!1464819))

(declare-fun bs!1036118 () Bool)

(declare-fun d!1464839 () Bool)

(assert (= bs!1036118 (and d!1464839 d!1464817)))

(declare-fun lambda!197385 () Int)

(assert (=> bs!1036118 (= lambda!197385 lambda!197312)))

(declare-fun lt!1809728 () ListMap!4505)

(assert (=> d!1464839 (invariantList!1280 (toList!5174 lt!1809728))))

(declare-fun e!2897812 () ListMap!4505)

(assert (=> d!1464839 (= lt!1809728 e!2897812)))

(declare-fun c!794876 () Bool)

(assert (=> d!1464839 (= c!794876 ((_ is Cons!51835) Nil!51835))))

(assert (=> d!1464839 (forall!10980 Nil!51835 lambda!197385)))

(assert (=> d!1464839 (= (extractMap!1674 Nil!51835) lt!1809728)))

(declare-fun b!4645317 () Bool)

(assert (=> b!4645317 (= e!2897812 (addToMapMapFromBucket!1075 (_2!29754 (h!57961 Nil!51835)) (extractMap!1674 (t!359055 Nil!51835))))))

(declare-fun b!4645318 () Bool)

(assert (=> b!4645318 (= e!2897812 (ListMap!4506 Nil!51834))))

(assert (= (and d!1464839 c!794876) b!4645317))

(assert (= (and d!1464839 (not c!794876)) b!4645318))

(declare-fun m!5510293 () Bool)

(assert (=> d!1464839 m!5510293))

(declare-fun m!5510295 () Bool)

(assert (=> d!1464839 m!5510295))

(declare-fun m!5510297 () Bool)

(assert (=> b!4645317 m!5510297))

(assert (=> b!4645317 m!5510297))

(declare-fun m!5510299 () Bool)

(assert (=> b!4645317 m!5510299))

(assert (=> b!4645174 d!1464839))

(declare-fun b!4645330 () Bool)

(declare-fun e!2897818 () List!51958)

(assert (=> b!4645330 (= e!2897818 Nil!51834)))

(declare-fun d!1464841 () Bool)

(declare-fun lt!1809731 () List!51958)

(assert (=> d!1464841 (not (containsKey!2681 lt!1809731 key!4968))))

(declare-fun e!2897817 () List!51958)

(assert (=> d!1464841 (= lt!1809731 e!2897817)))

(declare-fun c!794882 () Bool)

(assert (=> d!1464841 (= c!794882 (and ((_ is Cons!51834) oldBucket!40) (= (_1!29753 (h!57960 oldBucket!40)) key!4968)))))

(assert (=> d!1464841 (noDuplicateKeys!1618 oldBucket!40)))

(assert (=> d!1464841 (= (removePairForKey!1241 oldBucket!40 key!4968) lt!1809731)))

(declare-fun b!4645329 () Bool)

(assert (=> b!4645329 (= e!2897818 (Cons!51834 (h!57960 oldBucket!40) (removePairForKey!1241 (t!359054 oldBucket!40) key!4968)))))

(declare-fun b!4645327 () Bool)

(assert (=> b!4645327 (= e!2897817 (t!359054 oldBucket!40))))

(declare-fun b!4645328 () Bool)

(assert (=> b!4645328 (= e!2897817 e!2897818)))

(declare-fun c!794881 () Bool)

(assert (=> b!4645328 (= c!794881 ((_ is Cons!51834) oldBucket!40))))

(assert (= (and d!1464841 c!794882) b!4645327))

(assert (= (and d!1464841 (not c!794882)) b!4645328))

(assert (= (and b!4645328 c!794881) b!4645329))

(assert (= (and b!4645328 (not c!794881)) b!4645330))

(declare-fun m!5510301 () Bool)

(assert (=> d!1464841 m!5510301))

(assert (=> d!1464841 m!5510137))

(declare-fun m!5510303 () Bool)

(assert (=> b!4645329 m!5510303))

(assert (=> b!4645169 d!1464841))

(declare-fun bs!1036119 () Bool)

(declare-fun d!1464843 () Bool)

(assert (= bs!1036119 (and d!1464843 d!1464819)))

(declare-fun lambda!197386 () Int)

(assert (=> bs!1036119 (not (= lambda!197386 lambda!197384))))

(declare-fun bs!1036120 () Bool)

(assert (= bs!1036120 (and d!1464843 b!4645312)))

(assert (=> bs!1036120 (not (= lambda!197386 lambda!197381))))

(declare-fun bs!1036121 () Bool)

(assert (= bs!1036121 (and d!1464843 b!4645314)))

(assert (=> bs!1036121 (not (= lambda!197386 lambda!197383))))

(declare-fun bs!1036122 () Bool)

(assert (= bs!1036122 (and d!1464843 d!1464811)))

(assert (=> bs!1036122 (= lambda!197386 lambda!197309)))

(assert (=> bs!1036121 (not (= lambda!197386 lambda!197382))))

(assert (=> d!1464843 true))

(assert (=> d!1464843 true))

(assert (=> d!1464843 (= (allKeysSameHash!1472 newBucket!224 hash!414 hashF!1389) (forall!10978 newBucket!224 lambda!197386))))

(declare-fun bs!1036123 () Bool)

(assert (= bs!1036123 d!1464843))

(declare-fun m!5510305 () Bool)

(assert (=> bs!1036123 m!5510305))

(assert (=> b!4645170 d!1464843))

(declare-fun d!1464845 () Bool)

(declare-fun res!1951627 () Bool)

(declare-fun e!2897819 () Bool)

(assert (=> d!1464845 (=> res!1951627 e!2897819)))

(assert (=> d!1464845 (= res!1951627 (not ((_ is Cons!51834) newBucket!224)))))

(assert (=> d!1464845 (= (noDuplicateKeys!1618 newBucket!224) e!2897819)))

(declare-fun b!4645331 () Bool)

(declare-fun e!2897820 () Bool)

(assert (=> b!4645331 (= e!2897819 e!2897820)))

(declare-fun res!1951628 () Bool)

(assert (=> b!4645331 (=> (not res!1951628) (not e!2897820))))

(assert (=> b!4645331 (= res!1951628 (not (containsKey!2681 (t!359054 newBucket!224) (_1!29753 (h!57960 newBucket!224)))))))

(declare-fun b!4645332 () Bool)

(assert (=> b!4645332 (= e!2897820 (noDuplicateKeys!1618 (t!359054 newBucket!224)))))

(assert (= (and d!1464845 (not res!1951627)) b!4645331))

(assert (= (and b!4645331 res!1951628) b!4645332))

(declare-fun m!5510307 () Bool)

(assert (=> b!4645331 m!5510307))

(declare-fun m!5510309 () Bool)

(assert (=> b!4645332 m!5510309))

(assert (=> b!4645171 d!1464845))

(declare-fun b!4645337 () Bool)

(declare-fun tp!1343090 () Bool)

(declare-fun e!2897823 () Bool)

(assert (=> b!4645337 (= e!2897823 (and tp_is_empty!29765 tp_is_empty!29767 tp!1343090))))

(assert (=> b!4645173 (= tp!1343083 e!2897823)))

(assert (= (and b!4645173 ((_ is Cons!51834) (t!359054 oldBucket!40))) b!4645337))

(declare-fun e!2897824 () Bool)

(declare-fun tp!1343091 () Bool)

(declare-fun b!4645338 () Bool)

(assert (=> b!4645338 (= e!2897824 (and tp_is_empty!29765 tp_is_empty!29767 tp!1343091))))

(assert (=> b!4645166 (= tp!1343082 e!2897824)))

(assert (= (and b!4645166 ((_ is Cons!51834) (t!359054 newBucket!224))) b!4645338))

(check-sat (not d!1464807) (not b!4645311) (not b!4645209) (not b!4645207) (not b!4645331) (not bm!324321) (not b!4645208) (not d!1464817) tp_is_empty!29767 (not b!4645310) (not b!4645211) (not b!4645329) (not d!1464839) (not b!4645180) (not d!1464819) (not b!4645215) (not d!1464841) (not bm!324340) (not d!1464843) (not b!4645179) (not b!4645338) (not b!4645313) (not b!4645337) (not b!4645214) tp_is_empty!29765 (not bm!324342) (not d!1464811) (not b!4645317) (not b!4645220) (not b!4645210) (not b!4645314) (not d!1464815) (not b!4645332) (not bm!324341))
(check-sat)
