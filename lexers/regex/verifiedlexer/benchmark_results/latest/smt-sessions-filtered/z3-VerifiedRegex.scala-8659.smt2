; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461360 () Bool)

(assert start!461360)

(declare-fun b!4612851 () Bool)

(declare-fun e!2877335 () Bool)

(declare-fun e!2877337 () Bool)

(assert (=> b!4612851 (= e!2877335 e!2877337)))

(declare-fun res!1931951 () Bool)

(assert (=> b!4612851 (=> res!1931951 e!2877337)))

(declare-datatypes ((K!12700 0))(
  ( (K!12701 (val!18431 Int)) )
))
(declare-datatypes ((V!12946 0))(
  ( (V!12947 (val!18432 Int)) )
))
(declare-datatypes ((tuple2!52126 0))(
  ( (tuple2!52127 (_1!29357 K!12700) (_2!29357 V!12946)) )
))
(declare-datatypes ((List!51439 0))(
  ( (Nil!51315) (Cons!51315 (h!57317 tuple2!52126) (t!358433 List!51439)) )
))
(declare-fun lt!1767994 () List!51439)

(declare-fun newBucket!224 () List!51439)

(assert (=> b!4612851 (= res!1931951 (not (= lt!1767994 newBucket!224)))))

(declare-fun oldBucket!40 () List!51439)

(declare-fun tail!8067 (List!51439) List!51439)

(assert (=> b!4612851 (= lt!1767994 (tail!8067 oldBucket!40))))

(declare-fun b!4612852 () Bool)

(declare-fun res!1931941 () Bool)

(declare-fun e!2877342 () Bool)

(assert (=> b!4612852 (=> (not res!1931941) (not e!2877342))))

(declare-datatypes ((Hashable!5817 0))(
  ( (HashableExt!5816 (__x!31520 Int)) )
))
(declare-fun hashF!1389 () Hashable!5817)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun allKeysSameHash!1274 (List!51439 (_ BitVec 64) Hashable!5817) Bool)

(assert (=> b!4612852 (= res!1931941 (allKeysSameHash!1274 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4612853 () Bool)

(declare-fun e!2877344 () Bool)

(assert (=> b!4612853 (= e!2877337 e!2877344)))

(declare-fun res!1931939 () Bool)

(assert (=> b!4612853 (=> res!1931939 e!2877344)))

(declare-datatypes ((tuple2!52128 0))(
  ( (tuple2!52129 (_1!29358 (_ BitVec 64)) (_2!29358 List!51439)) )
))
(declare-datatypes ((List!51440 0))(
  ( (Nil!51316) (Cons!51316 (h!57318 tuple2!52128) (t!358434 List!51440)) )
))
(declare-fun lt!1767993 () List!51440)

(declare-datatypes ((ListMap!4109 0))(
  ( (ListMap!4110 (toList!4808 List!51439)) )
))
(declare-fun extractMap!1476 (List!51440) ListMap!4109)

(assert (=> b!4612853 (= res!1931939 (not (= (extractMap!1476 lt!1767993) (extractMap!1476 (Cons!51316 (tuple2!52129 hash!414 newBucket!224) Nil!51316)))))))

(assert (=> b!4612853 (= lt!1767993 (Cons!51316 (tuple2!52129 hash!414 lt!1767994) Nil!51316))))

(declare-fun b!4612854 () Bool)

(declare-fun e!2877343 () Bool)

(assert (=> b!4612854 (= e!2877342 e!2877343)))

(declare-fun res!1931949 () Bool)

(assert (=> b!4612854 (=> (not res!1931949) (not e!2877343))))

(declare-fun lt!1767991 () ListMap!4109)

(declare-fun key!4968 () K!12700)

(declare-fun contains!14286 (ListMap!4109 K!12700) Bool)

(assert (=> b!4612854 (= res!1931949 (contains!14286 lt!1767991 key!4968))))

(assert (=> b!4612854 (= lt!1767991 (extractMap!1476 (Cons!51316 (tuple2!52129 hash!414 oldBucket!40) Nil!51316)))))

(declare-fun tp!1341398 () Bool)

(declare-fun b!4612856 () Bool)

(declare-fun tp_is_empty!28973 () Bool)

(declare-fun e!2877339 () Bool)

(declare-fun tp_is_empty!28975 () Bool)

(assert (=> b!4612856 (= e!2877339 (and tp_is_empty!28973 tp_is_empty!28975 tp!1341398))))

(declare-fun b!4612857 () Bool)

(declare-fun res!1931947 () Bool)

(assert (=> b!4612857 (=> (not res!1931947) (not e!2877342))))

(declare-fun noDuplicateKeys!1420 (List!51439) Bool)

(assert (=> b!4612857 (= res!1931947 (noDuplicateKeys!1420 newBucket!224))))

(declare-fun b!4612858 () Bool)

(declare-fun res!1931948 () Bool)

(assert (=> b!4612858 (=> (not res!1931948) (not e!2877342))))

(declare-fun removePairForKey!1043 (List!51439 K!12700) List!51439)

(assert (=> b!4612858 (= res!1931948 (= (removePairForKey!1043 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4612859 () Bool)

(declare-fun res!1931943 () Bool)

(assert (=> b!4612859 (=> (not res!1931943) (not e!2877343))))

(declare-fun hash!3363 (Hashable!5817 K!12700) (_ BitVec 64))

(assert (=> b!4612859 (= res!1931943 (= (hash!3363 hashF!1389 key!4968) hash!414))))

(declare-fun e!2877338 () Bool)

(declare-fun b!4612860 () Bool)

(declare-fun tp!1341399 () Bool)

(assert (=> b!4612860 (= e!2877338 (and tp_is_empty!28973 tp_is_empty!28975 tp!1341399))))

(declare-fun b!4612861 () Bool)

(declare-fun e!2877336 () Bool)

(declare-fun e!2877341 () Bool)

(assert (=> b!4612861 (= e!2877336 e!2877341)))

(declare-fun res!1931945 () Bool)

(assert (=> b!4612861 (=> res!1931945 e!2877341)))

(declare-fun lt!1767992 () ListMap!4109)

(declare-fun eq!763 (ListMap!4109 ListMap!4109) Bool)

(declare-fun +!1805 (ListMap!4109 tuple2!52126) ListMap!4109)

(declare-fun addToMapMapFromBucket!881 (List!51439 ListMap!4109) ListMap!4109)

(assert (=> b!4612861 (= res!1931945 (not (eq!763 (+!1805 lt!1767992 (h!57317 oldBucket!40)) (addToMapMapFromBucket!881 oldBucket!40 (ListMap!4110 Nil!51315)))))))

(declare-fun lt!1767995 () tuple2!52126)

(assert (=> b!4612861 (eq!763 (addToMapMapFromBucket!881 (Cons!51315 lt!1767995 lt!1767994) (ListMap!4110 Nil!51315)) (+!1805 lt!1767992 lt!1767995))))

(declare-datatypes ((Unit!109496 0))(
  ( (Unit!109497) )
))
(declare-fun lt!1767989 () Unit!109496)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!14 (tuple2!52126 List!51439 ListMap!4109) Unit!109496)

(assert (=> b!4612861 (= lt!1767989 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!14 lt!1767995 lt!1767994 (ListMap!4110 Nil!51315)))))

(declare-fun head!9580 (List!51439) tuple2!52126)

(assert (=> b!4612861 (= lt!1767995 (head!9580 oldBucket!40))))

(declare-fun b!4612862 () Bool)

(declare-fun res!1931940 () Bool)

(assert (=> b!4612862 (=> (not res!1931940) (not e!2877343))))

(assert (=> b!4612862 (= res!1931940 (allKeysSameHash!1274 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4612863 () Bool)

(declare-fun e!2877340 () Bool)

(declare-fun lt!1767990 () ListMap!4109)

(assert (=> b!4612863 (= e!2877340 (= lt!1767990 (ListMap!4110 Nil!51315)))))

(declare-fun b!4612864 () Bool)

(assert (=> b!4612864 (= e!2877344 e!2877336)))

(declare-fun res!1931952 () Bool)

(assert (=> b!4612864 (=> res!1931952 e!2877336)))

(assert (=> b!4612864 (= res!1931952 (not (= lt!1767992 (addToMapMapFromBucket!881 newBucket!224 (ListMap!4110 Nil!51315)))))))

(assert (=> b!4612864 (= lt!1767992 (addToMapMapFromBucket!881 lt!1767994 (ListMap!4110 Nil!51315)))))

(declare-fun b!4612855 () Bool)

(declare-fun res!1931942 () Bool)

(assert (=> b!4612855 (=> res!1931942 e!2877341)))

(declare-fun containsKey!2290 (List!51439 K!12700) Bool)

(assert (=> b!4612855 (= res!1931942 (containsKey!2290 lt!1767994 key!4968))))

(declare-fun res!1931944 () Bool)

(assert (=> start!461360 (=> (not res!1931944) (not e!2877342))))

(assert (=> start!461360 (= res!1931944 (noDuplicateKeys!1420 oldBucket!40))))

(assert (=> start!461360 e!2877342))

(assert (=> start!461360 true))

(assert (=> start!461360 e!2877339))

(assert (=> start!461360 tp_is_empty!28973))

(assert (=> start!461360 e!2877338))

(declare-fun b!4612865 () Bool)

(declare-fun lambda!188682 () Int)

(declare-fun forall!10716 (List!51440 Int) Bool)

(assert (=> b!4612865 (= e!2877341 (forall!10716 lt!1767993 lambda!188682))))

(declare-fun b!4612866 () Bool)

(assert (=> b!4612866 (= e!2877343 (not e!2877335))))

(declare-fun res!1931946 () Bool)

(assert (=> b!4612866 (=> res!1931946 e!2877335)))

(get-info :version)

(assert (=> b!4612866 (= res!1931946 (or (not ((_ is Cons!51315) oldBucket!40)) (not (= (_1!29357 (h!57317 oldBucket!40)) key!4968))))))

(assert (=> b!4612866 e!2877340))

(declare-fun res!1931950 () Bool)

(assert (=> b!4612866 (=> (not res!1931950) (not e!2877340))))

(assert (=> b!4612866 (= res!1931950 (= lt!1767991 (addToMapMapFromBucket!881 oldBucket!40 lt!1767990)))))

(assert (=> b!4612866 (= lt!1767990 (extractMap!1476 Nil!51316))))

(assert (=> b!4612866 true))

(assert (= (and start!461360 res!1931944) b!4612857))

(assert (= (and b!4612857 res!1931947) b!4612858))

(assert (= (and b!4612858 res!1931948) b!4612852))

(assert (= (and b!4612852 res!1931941) b!4612854))

(assert (= (and b!4612854 res!1931949) b!4612859))

(assert (= (and b!4612859 res!1931943) b!4612862))

(assert (= (and b!4612862 res!1931940) b!4612866))

(assert (= (and b!4612866 res!1931950) b!4612863))

(assert (= (and b!4612866 (not res!1931946)) b!4612851))

(assert (= (and b!4612851 (not res!1931951)) b!4612853))

(assert (= (and b!4612853 (not res!1931939)) b!4612864))

(assert (= (and b!4612864 (not res!1931952)) b!4612861))

(assert (= (and b!4612861 (not res!1931945)) b!4612855))

(assert (= (and b!4612855 (not res!1931942)) b!4612865))

(assert (= (and start!461360 ((_ is Cons!51315) oldBucket!40)) b!4612856))

(assert (= (and start!461360 ((_ is Cons!51315) newBucket!224)) b!4612860))

(declare-fun m!5444143 () Bool)

(assert (=> b!4612861 m!5444143))

(declare-fun m!5444145 () Bool)

(assert (=> b!4612861 m!5444145))

(declare-fun m!5444147 () Bool)

(assert (=> b!4612861 m!5444147))

(assert (=> b!4612861 m!5444143))

(declare-fun m!5444149 () Bool)

(assert (=> b!4612861 m!5444149))

(declare-fun m!5444151 () Bool)

(assert (=> b!4612861 m!5444151))

(declare-fun m!5444153 () Bool)

(assert (=> b!4612861 m!5444153))

(assert (=> b!4612861 m!5444145))

(declare-fun m!5444155 () Bool)

(assert (=> b!4612861 m!5444155))

(assert (=> b!4612861 m!5444153))

(assert (=> b!4612861 m!5444149))

(declare-fun m!5444157 () Bool)

(assert (=> b!4612861 m!5444157))

(declare-fun m!5444159 () Bool)

(assert (=> b!4612858 m!5444159))

(declare-fun m!5444161 () Bool)

(assert (=> b!4612852 m!5444161))

(declare-fun m!5444163 () Bool)

(assert (=> b!4612865 m!5444163))

(declare-fun m!5444165 () Bool)

(assert (=> b!4612855 m!5444165))

(declare-fun m!5444167 () Bool)

(assert (=> b!4612864 m!5444167))

(declare-fun m!5444169 () Bool)

(assert (=> b!4612864 m!5444169))

(declare-fun m!5444171 () Bool)

(assert (=> b!4612853 m!5444171))

(declare-fun m!5444173 () Bool)

(assert (=> b!4612853 m!5444173))

(declare-fun m!5444175 () Bool)

(assert (=> b!4612862 m!5444175))

(declare-fun m!5444177 () Bool)

(assert (=> start!461360 m!5444177))

(declare-fun m!5444179 () Bool)

(assert (=> b!4612857 m!5444179))

(declare-fun m!5444181 () Bool)

(assert (=> b!4612854 m!5444181))

(declare-fun m!5444183 () Bool)

(assert (=> b!4612854 m!5444183))

(declare-fun m!5444185 () Bool)

(assert (=> b!4612866 m!5444185))

(declare-fun m!5444187 () Bool)

(assert (=> b!4612866 m!5444187))

(declare-fun m!5444189 () Bool)

(assert (=> b!4612859 m!5444189))

(declare-fun m!5444191 () Bool)

(assert (=> b!4612851 m!5444191))

(check-sat (not b!4612852) (not b!4612857) tp_is_empty!28973 (not b!4612855) (not b!4612865) tp_is_empty!28975 (not b!4612860) (not b!4612853) (not b!4612862) (not b!4612866) (not b!4612858) (not b!4612859) (not b!4612851) (not b!4612854) (not b!4612856) (not b!4612861) (not start!461360) (not b!4612864))
(check-sat)
(get-model)

(declare-fun d!1453178 () Bool)

(declare-fun res!1931957 () Bool)

(declare-fun e!2877353 () Bool)

(assert (=> d!1453178 (=> res!1931957 e!2877353)))

(assert (=> d!1453178 (= res!1931957 (not ((_ is Cons!51315) oldBucket!40)))))

(assert (=> d!1453178 (= (noDuplicateKeys!1420 oldBucket!40) e!2877353)))

(declare-fun b!4612883 () Bool)

(declare-fun e!2877354 () Bool)

(assert (=> b!4612883 (= e!2877353 e!2877354)))

(declare-fun res!1931958 () Bool)

(assert (=> b!4612883 (=> (not res!1931958) (not e!2877354))))

(assert (=> b!4612883 (= res!1931958 (not (containsKey!2290 (t!358433 oldBucket!40) (_1!29357 (h!57317 oldBucket!40)))))))

(declare-fun b!4612884 () Bool)

(assert (=> b!4612884 (= e!2877354 (noDuplicateKeys!1420 (t!358433 oldBucket!40)))))

(assert (= (and d!1453178 (not res!1931957)) b!4612883))

(assert (= (and b!4612883 res!1931958) b!4612884))

(declare-fun m!5444211 () Bool)

(assert (=> b!4612883 m!5444211))

(declare-fun m!5444213 () Bool)

(assert (=> b!4612884 m!5444213))

(assert (=> start!461360 d!1453178))

(declare-fun b!4612992 () Bool)

(assert (=> b!4612992 true))

(declare-fun bs!1016315 () Bool)

(declare-fun b!4612993 () Bool)

(assert (= bs!1016315 (and b!4612993 b!4612992)))

(declare-fun lambda!188760 () Int)

(declare-fun lambda!188759 () Int)

(assert (=> bs!1016315 (= lambda!188760 lambda!188759)))

(assert (=> b!4612993 true))

(declare-fun lt!1768200 () ListMap!4109)

(declare-fun lambda!188761 () Int)

(assert (=> bs!1016315 (= (= lt!1768200 (ListMap!4110 Nil!51315)) (= lambda!188761 lambda!188759))))

(assert (=> b!4612993 (= (= lt!1768200 (ListMap!4110 Nil!51315)) (= lambda!188761 lambda!188760))))

(assert (=> b!4612993 true))

(declare-fun bs!1016321 () Bool)

(declare-fun d!1453182 () Bool)

(assert (= bs!1016321 (and d!1453182 b!4612992)))

(declare-fun lt!1768210 () ListMap!4109)

(declare-fun lambda!188763 () Int)

(assert (=> bs!1016321 (= (= lt!1768210 (ListMap!4110 Nil!51315)) (= lambda!188763 lambda!188759))))

(declare-fun bs!1016323 () Bool)

(assert (= bs!1016323 (and d!1453182 b!4612993)))

(assert (=> bs!1016323 (= (= lt!1768210 (ListMap!4110 Nil!51315)) (= lambda!188763 lambda!188760))))

(assert (=> bs!1016323 (= (= lt!1768210 lt!1768200) (= lambda!188763 lambda!188761))))

(assert (=> d!1453182 true))

(declare-fun b!4612989 () Bool)

(declare-fun res!1932015 () Bool)

(declare-fun e!2877423 () Bool)

(assert (=> b!4612989 (=> (not res!1932015) (not e!2877423))))

(declare-fun forall!10718 (List!51439 Int) Bool)

(assert (=> b!4612989 (= res!1932015 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) lambda!188763))))

(declare-fun bm!321547 () Bool)

(declare-fun c!789906 () Bool)

(declare-fun call!321553 () Bool)

(assert (=> bm!321547 (= call!321553 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) (ite c!789906 lambda!188759 lambda!188760)))))

(declare-fun b!4612990 () Bool)

(declare-fun invariantList!1157 (List!51439) Bool)

(assert (=> b!4612990 (= e!2877423 (invariantList!1157 (toList!4808 lt!1768210)))))

(declare-fun bm!321548 () Bool)

(declare-fun call!321552 () Unit!109496)

(declare-fun lemmaContainsAllItsOwnKeys!459 (ListMap!4109) Unit!109496)

(assert (=> bm!321548 (= call!321552 (lemmaContainsAllItsOwnKeys!459 (ListMap!4110 Nil!51315)))))

(declare-fun b!4612991 () Bool)

(declare-fun e!2877424 () Bool)

(assert (=> b!4612991 (= e!2877424 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) lambda!188761))))

(assert (=> d!1453182 e!2877423))

(declare-fun res!1932016 () Bool)

(assert (=> d!1453182 (=> (not res!1932016) (not e!2877423))))

(assert (=> d!1453182 (= res!1932016 (forall!10718 (Cons!51315 lt!1767995 lt!1767994) lambda!188763))))

(declare-fun e!2877425 () ListMap!4109)

(assert (=> d!1453182 (= lt!1768210 e!2877425)))

(assert (=> d!1453182 (= c!789906 ((_ is Nil!51315) (Cons!51315 lt!1767995 lt!1767994)))))

(assert (=> d!1453182 (noDuplicateKeys!1420 (Cons!51315 lt!1767995 lt!1767994))))

(assert (=> d!1453182 (= (addToMapMapFromBucket!881 (Cons!51315 lt!1767995 lt!1767994) (ListMap!4110 Nil!51315)) lt!1768210)))

(assert (=> b!4612992 (= e!2877425 (ListMap!4110 Nil!51315))))

(declare-fun lt!1768202 () Unit!109496)

(assert (=> b!4612992 (= lt!1768202 call!321552)))

(assert (=> b!4612992 call!321553))

(declare-fun lt!1768213 () Unit!109496)

(assert (=> b!4612992 (= lt!1768213 lt!1768202)))

(declare-fun call!321554 () Bool)

(assert (=> b!4612992 call!321554))

(declare-fun lt!1768195 () Unit!109496)

(declare-fun Unit!109520 () Unit!109496)

(assert (=> b!4612992 (= lt!1768195 Unit!109520)))

(assert (=> b!4612993 (= e!2877425 lt!1768200)))

(declare-fun lt!1768198 () ListMap!4109)

(assert (=> b!4612993 (= lt!1768198 (+!1805 (ListMap!4110 Nil!51315) (h!57317 (Cons!51315 lt!1767995 lt!1767994))))))

(assert (=> b!4612993 (= lt!1768200 (addToMapMapFromBucket!881 (t!358433 (Cons!51315 lt!1767995 lt!1767994)) (+!1805 (ListMap!4110 Nil!51315) (h!57317 (Cons!51315 lt!1767995 lt!1767994)))))))

(declare-fun lt!1768214 () Unit!109496)

(assert (=> b!4612993 (= lt!1768214 call!321552)))

(assert (=> b!4612993 call!321553))

(declare-fun lt!1768199 () Unit!109496)

(assert (=> b!4612993 (= lt!1768199 lt!1768214)))

(assert (=> b!4612993 call!321554))

(declare-fun lt!1768201 () Unit!109496)

(declare-fun Unit!109521 () Unit!109496)

(assert (=> b!4612993 (= lt!1768201 Unit!109521)))

(assert (=> b!4612993 (forall!10718 (t!358433 (Cons!51315 lt!1767995 lt!1767994)) lambda!188761)))

(declare-fun lt!1768207 () Unit!109496)

(declare-fun Unit!109522 () Unit!109496)

(assert (=> b!4612993 (= lt!1768207 Unit!109522)))

(declare-fun lt!1768206 () Unit!109496)

(declare-fun Unit!109523 () Unit!109496)

(assert (=> b!4612993 (= lt!1768206 Unit!109523)))

(declare-fun lt!1768211 () Unit!109496)

(declare-fun forallContained!2951 (List!51439 Int tuple2!52126) Unit!109496)

(assert (=> b!4612993 (= lt!1768211 (forallContained!2951 (toList!4808 lt!1768198) lambda!188761 (h!57317 (Cons!51315 lt!1767995 lt!1767994))))))

(assert (=> b!4612993 (contains!14286 lt!1768198 (_1!29357 (h!57317 (Cons!51315 lt!1767995 lt!1767994))))))

(declare-fun lt!1768197 () Unit!109496)

(declare-fun Unit!109524 () Unit!109496)

(assert (=> b!4612993 (= lt!1768197 Unit!109524)))

(assert (=> b!4612993 (contains!14286 lt!1768200 (_1!29357 (h!57317 (Cons!51315 lt!1767995 lt!1767994))))))

(declare-fun lt!1768203 () Unit!109496)

(declare-fun Unit!109525 () Unit!109496)

(assert (=> b!4612993 (= lt!1768203 Unit!109525)))

(assert (=> b!4612993 (forall!10718 (Cons!51315 lt!1767995 lt!1767994) lambda!188761)))

(declare-fun lt!1768208 () Unit!109496)

(declare-fun Unit!109526 () Unit!109496)

(assert (=> b!4612993 (= lt!1768208 Unit!109526)))

(assert (=> b!4612993 (forall!10718 (toList!4808 lt!1768198) lambda!188761)))

(declare-fun lt!1768209 () Unit!109496)

(declare-fun Unit!109527 () Unit!109496)

(assert (=> b!4612993 (= lt!1768209 Unit!109527)))

(declare-fun lt!1768212 () Unit!109496)

(declare-fun Unit!109528 () Unit!109496)

(assert (=> b!4612993 (= lt!1768212 Unit!109528)))

(declare-fun lt!1768205 () Unit!109496)

(declare-fun addForallContainsKeyThenBeforeAdding!458 (ListMap!4109 ListMap!4109 K!12700 V!12946) Unit!109496)

(assert (=> b!4612993 (= lt!1768205 (addForallContainsKeyThenBeforeAdding!458 (ListMap!4110 Nil!51315) lt!1768200 (_1!29357 (h!57317 (Cons!51315 lt!1767995 lt!1767994))) (_2!29357 (h!57317 (Cons!51315 lt!1767995 lt!1767994)))))))

(assert (=> b!4612993 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) lambda!188761)))

(declare-fun lt!1768194 () Unit!109496)

(assert (=> b!4612993 (= lt!1768194 lt!1768205)))

(assert (=> b!4612993 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) lambda!188761)))

(declare-fun lt!1768196 () Unit!109496)

(declare-fun Unit!109529 () Unit!109496)

(assert (=> b!4612993 (= lt!1768196 Unit!109529)))

(declare-fun res!1932017 () Bool)

(assert (=> b!4612993 (= res!1932017 (forall!10718 (Cons!51315 lt!1767995 lt!1767994) lambda!188761))))

(assert (=> b!4612993 (=> (not res!1932017) (not e!2877424))))

(assert (=> b!4612993 e!2877424))

(declare-fun lt!1768204 () Unit!109496)

(declare-fun Unit!109530 () Unit!109496)

(assert (=> b!4612993 (= lt!1768204 Unit!109530)))

(declare-fun bm!321549 () Bool)

(assert (=> bm!321549 (= call!321554 (forall!10718 (ite c!789906 (toList!4808 (ListMap!4110 Nil!51315)) (toList!4808 lt!1768198)) (ite c!789906 lambda!188759 lambda!188761)))))

(assert (= (and d!1453182 c!789906) b!4612992))

(assert (= (and d!1453182 (not c!789906)) b!4612993))

(assert (= (and b!4612993 res!1932017) b!4612991))

(assert (= (or b!4612992 b!4612993) bm!321548))

(assert (= (or b!4612992 b!4612993) bm!321549))

(assert (= (or b!4612992 b!4612993) bm!321547))

(assert (= (and d!1453182 res!1932016) b!4612989))

(assert (= (and b!4612989 res!1932015) b!4612990))

(declare-fun m!5444361 () Bool)

(assert (=> b!4612989 m!5444361))

(declare-fun m!5444363 () Bool)

(assert (=> b!4612990 m!5444363))

(declare-fun m!5444365 () Bool)

(assert (=> bm!321547 m!5444365))

(declare-fun m!5444371 () Bool)

(assert (=> bm!321549 m!5444371))

(declare-fun m!5444373 () Bool)

(assert (=> b!4612991 m!5444373))

(declare-fun m!5444377 () Bool)

(assert (=> b!4612993 m!5444377))

(declare-fun m!5444381 () Bool)

(assert (=> b!4612993 m!5444381))

(declare-fun m!5444385 () Bool)

(assert (=> b!4612993 m!5444385))

(assert (=> b!4612993 m!5444373))

(declare-fun m!5444391 () Bool)

(assert (=> b!4612993 m!5444391))

(declare-fun m!5444393 () Bool)

(assert (=> b!4612993 m!5444393))

(declare-fun m!5444397 () Bool)

(assert (=> b!4612993 m!5444397))

(assert (=> b!4612993 m!5444393))

(declare-fun m!5444403 () Bool)

(assert (=> b!4612993 m!5444403))

(assert (=> b!4612993 m!5444373))

(assert (=> b!4612993 m!5444381))

(declare-fun m!5444409 () Bool)

(assert (=> b!4612993 m!5444409))

(declare-fun m!5444413 () Bool)

(assert (=> b!4612993 m!5444413))

(declare-fun m!5444419 () Bool)

(assert (=> d!1453182 m!5444419))

(declare-fun m!5444421 () Bool)

(assert (=> d!1453182 m!5444421))

(declare-fun m!5444423 () Bool)

(assert (=> bm!321548 m!5444423))

(assert (=> b!4612861 d!1453182))

(declare-fun d!1453218 () Bool)

(declare-fun e!2877432 () Bool)

(assert (=> d!1453218 e!2877432))

(declare-fun res!1932026 () Bool)

(assert (=> d!1453218 (=> (not res!1932026) (not e!2877432))))

(declare-fun lt!1768247 () ListMap!4109)

(assert (=> d!1453218 (= res!1932026 (contains!14286 lt!1768247 (_1!29357 lt!1767995)))))

(declare-fun lt!1768248 () List!51439)

(assert (=> d!1453218 (= lt!1768247 (ListMap!4110 lt!1768248))))

(declare-fun lt!1768245 () Unit!109496)

(declare-fun lt!1768246 () Unit!109496)

(assert (=> d!1453218 (= lt!1768245 lt!1768246)))

(declare-datatypes ((Option!11460 0))(
  ( (None!11459) (Some!11459 (v!45525 V!12946)) )
))
(declare-fun getValueByKey!1374 (List!51439 K!12700) Option!11460)

(assert (=> d!1453218 (= (getValueByKey!1374 lt!1768248 (_1!29357 lt!1767995)) (Some!11459 (_2!29357 lt!1767995)))))

(declare-fun lemmaContainsTupThenGetReturnValue!810 (List!51439 K!12700 V!12946) Unit!109496)

(assert (=> d!1453218 (= lt!1768246 (lemmaContainsTupThenGetReturnValue!810 lt!1768248 (_1!29357 lt!1767995) (_2!29357 lt!1767995)))))

(declare-fun insertNoDuplicatedKeys!318 (List!51439 K!12700 V!12946) List!51439)

(assert (=> d!1453218 (= lt!1768248 (insertNoDuplicatedKeys!318 (toList!4808 lt!1767992) (_1!29357 lt!1767995) (_2!29357 lt!1767995)))))

(assert (=> d!1453218 (= (+!1805 lt!1767992 lt!1767995) lt!1768247)))

(declare-fun b!4613007 () Bool)

(declare-fun res!1932025 () Bool)

(assert (=> b!4613007 (=> (not res!1932025) (not e!2877432))))

(assert (=> b!4613007 (= res!1932025 (= (getValueByKey!1374 (toList!4808 lt!1768247) (_1!29357 lt!1767995)) (Some!11459 (_2!29357 lt!1767995))))))

(declare-fun b!4613008 () Bool)

(declare-fun contains!14289 (List!51439 tuple2!52126) Bool)

(assert (=> b!4613008 (= e!2877432 (contains!14289 (toList!4808 lt!1768247) lt!1767995))))

(assert (= (and d!1453218 res!1932026) b!4613007))

(assert (= (and b!4613007 res!1932025) b!4613008))

(declare-fun m!5444461 () Bool)

(assert (=> d!1453218 m!5444461))

(declare-fun m!5444463 () Bool)

(assert (=> d!1453218 m!5444463))

(declare-fun m!5444465 () Bool)

(assert (=> d!1453218 m!5444465))

(declare-fun m!5444467 () Bool)

(assert (=> d!1453218 m!5444467))

(declare-fun m!5444469 () Bool)

(assert (=> b!4613007 m!5444469))

(declare-fun m!5444471 () Bool)

(assert (=> b!4613008 m!5444471))

(assert (=> b!4612861 d!1453218))

(declare-fun d!1453224 () Bool)

(assert (=> d!1453224 (= (head!9580 oldBucket!40) (h!57317 oldBucket!40))))

(assert (=> b!4612861 d!1453224))

(declare-fun bs!1016381 () Bool)

(declare-fun b!4613017 () Bool)

(assert (= bs!1016381 (and b!4613017 b!4612992)))

(declare-fun lambda!188770 () Int)

(assert (=> bs!1016381 (= lambda!188770 lambda!188759)))

(declare-fun bs!1016382 () Bool)

(assert (= bs!1016382 (and b!4613017 b!4612993)))

(assert (=> bs!1016382 (= lambda!188770 lambda!188760)))

(assert (=> bs!1016382 (= (= (ListMap!4110 Nil!51315) lt!1768200) (= lambda!188770 lambda!188761))))

(declare-fun bs!1016384 () Bool)

(assert (= bs!1016384 (and b!4613017 d!1453182)))

(assert (=> bs!1016384 (= (= (ListMap!4110 Nil!51315) lt!1768210) (= lambda!188770 lambda!188763))))

(assert (=> b!4613017 true))

(declare-fun bs!1016386 () Bool)

(declare-fun b!4613018 () Bool)

(assert (= bs!1016386 (and b!4613018 b!4612993)))

(declare-fun lambda!188772 () Int)

(assert (=> bs!1016386 (= lambda!188772 lambda!188760)))

(declare-fun bs!1016388 () Bool)

(assert (= bs!1016388 (and b!4613018 d!1453182)))

(assert (=> bs!1016388 (= (= (ListMap!4110 Nil!51315) lt!1768210) (= lambda!188772 lambda!188763))))

(assert (=> bs!1016386 (= (= (ListMap!4110 Nil!51315) lt!1768200) (= lambda!188772 lambda!188761))))

(declare-fun bs!1016391 () Bool)

(assert (= bs!1016391 (and b!4613018 b!4613017)))

(assert (=> bs!1016391 (= lambda!188772 lambda!188770)))

(declare-fun bs!1016393 () Bool)

(assert (= bs!1016393 (and b!4613018 b!4612992)))

(assert (=> bs!1016393 (= lambda!188772 lambda!188759)))

(assert (=> b!4613018 true))

(declare-fun lt!1768276 () ListMap!4109)

(declare-fun lambda!188773 () Int)

(assert (=> bs!1016386 (= (= lt!1768276 (ListMap!4110 Nil!51315)) (= lambda!188773 lambda!188760))))

(assert (=> bs!1016388 (= (= lt!1768276 lt!1768210) (= lambda!188773 lambda!188763))))

(assert (=> bs!1016386 (= (= lt!1768276 lt!1768200) (= lambda!188773 lambda!188761))))

(assert (=> bs!1016391 (= (= lt!1768276 (ListMap!4110 Nil!51315)) (= lambda!188773 lambda!188770))))

(assert (=> bs!1016393 (= (= lt!1768276 (ListMap!4110 Nil!51315)) (= lambda!188773 lambda!188759))))

(assert (=> b!4613018 (= (= lt!1768276 (ListMap!4110 Nil!51315)) (= lambda!188773 lambda!188772))))

(assert (=> b!4613018 true))

(declare-fun bs!1016404 () Bool)

(declare-fun d!1453226 () Bool)

(assert (= bs!1016404 (and d!1453226 b!4612993)))

(declare-fun lt!1768286 () ListMap!4109)

(declare-fun lambda!188775 () Int)

(assert (=> bs!1016404 (= (= lt!1768286 (ListMap!4110 Nil!51315)) (= lambda!188775 lambda!188760))))

(declare-fun bs!1016405 () Bool)

(assert (= bs!1016405 (and d!1453226 d!1453182)))

(assert (=> bs!1016405 (= (= lt!1768286 lt!1768210) (= lambda!188775 lambda!188763))))

(assert (=> bs!1016404 (= (= lt!1768286 lt!1768200) (= lambda!188775 lambda!188761))))

(declare-fun bs!1016406 () Bool)

(assert (= bs!1016406 (and d!1453226 b!4613017)))

(assert (=> bs!1016406 (= (= lt!1768286 (ListMap!4110 Nil!51315)) (= lambda!188775 lambda!188770))))

(declare-fun bs!1016407 () Bool)

(assert (= bs!1016407 (and d!1453226 b!4612992)))

(assert (=> bs!1016407 (= (= lt!1768286 (ListMap!4110 Nil!51315)) (= lambda!188775 lambda!188759))))

(declare-fun bs!1016408 () Bool)

(assert (= bs!1016408 (and d!1453226 b!4613018)))

(assert (=> bs!1016408 (= (= lt!1768286 (ListMap!4110 Nil!51315)) (= lambda!188775 lambda!188772))))

(assert (=> bs!1016408 (= (= lt!1768286 lt!1768276) (= lambda!188775 lambda!188773))))

(assert (=> d!1453226 true))

(declare-fun b!4613014 () Bool)

(declare-fun res!1932030 () Bool)

(declare-fun e!2877436 () Bool)

(assert (=> b!4613014 (=> (not res!1932030) (not e!2877436))))

(assert (=> b!4613014 (= res!1932030 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) lambda!188775))))

(declare-fun call!321562 () Bool)

(declare-fun bm!321556 () Bool)

(declare-fun c!789910 () Bool)

(assert (=> bm!321556 (= call!321562 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) (ite c!789910 lambda!188770 lambda!188772)))))

(declare-fun b!4613015 () Bool)

(assert (=> b!4613015 (= e!2877436 (invariantList!1157 (toList!4808 lt!1768286)))))

(declare-fun bm!321557 () Bool)

(declare-fun call!321561 () Unit!109496)

(assert (=> bm!321557 (= call!321561 (lemmaContainsAllItsOwnKeys!459 (ListMap!4110 Nil!51315)))))

(declare-fun b!4613016 () Bool)

(declare-fun e!2877437 () Bool)

(assert (=> b!4613016 (= e!2877437 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) lambda!188773))))

(assert (=> d!1453226 e!2877436))

(declare-fun res!1932031 () Bool)

(assert (=> d!1453226 (=> (not res!1932031) (not e!2877436))))

(assert (=> d!1453226 (= res!1932031 (forall!10718 oldBucket!40 lambda!188775))))

(declare-fun e!2877438 () ListMap!4109)

(assert (=> d!1453226 (= lt!1768286 e!2877438)))

(assert (=> d!1453226 (= c!789910 ((_ is Nil!51315) oldBucket!40))))

(assert (=> d!1453226 (noDuplicateKeys!1420 oldBucket!40)))

(assert (=> d!1453226 (= (addToMapMapFromBucket!881 oldBucket!40 (ListMap!4110 Nil!51315)) lt!1768286)))

(assert (=> b!4613017 (= e!2877438 (ListMap!4110 Nil!51315))))

(declare-fun lt!1768278 () Unit!109496)

(assert (=> b!4613017 (= lt!1768278 call!321561)))

(assert (=> b!4613017 call!321562))

(declare-fun lt!1768289 () Unit!109496)

(assert (=> b!4613017 (= lt!1768289 lt!1768278)))

(declare-fun call!321563 () Bool)

(assert (=> b!4613017 call!321563))

(declare-fun lt!1768271 () Unit!109496)

(declare-fun Unit!109533 () Unit!109496)

(assert (=> b!4613017 (= lt!1768271 Unit!109533)))

(assert (=> b!4613018 (= e!2877438 lt!1768276)))

(declare-fun lt!1768274 () ListMap!4109)

(assert (=> b!4613018 (= lt!1768274 (+!1805 (ListMap!4110 Nil!51315) (h!57317 oldBucket!40)))))

(assert (=> b!4613018 (= lt!1768276 (addToMapMapFromBucket!881 (t!358433 oldBucket!40) (+!1805 (ListMap!4110 Nil!51315) (h!57317 oldBucket!40))))))

(declare-fun lt!1768290 () Unit!109496)

(assert (=> b!4613018 (= lt!1768290 call!321561)))

(assert (=> b!4613018 call!321562))

(declare-fun lt!1768275 () Unit!109496)

(assert (=> b!4613018 (= lt!1768275 lt!1768290)))

(assert (=> b!4613018 call!321563))

(declare-fun lt!1768277 () Unit!109496)

(declare-fun Unit!109534 () Unit!109496)

(assert (=> b!4613018 (= lt!1768277 Unit!109534)))

(assert (=> b!4613018 (forall!10718 (t!358433 oldBucket!40) lambda!188773)))

(declare-fun lt!1768283 () Unit!109496)

(declare-fun Unit!109535 () Unit!109496)

(assert (=> b!4613018 (= lt!1768283 Unit!109535)))

(declare-fun lt!1768282 () Unit!109496)

(declare-fun Unit!109536 () Unit!109496)

(assert (=> b!4613018 (= lt!1768282 Unit!109536)))

(declare-fun lt!1768287 () Unit!109496)

(assert (=> b!4613018 (= lt!1768287 (forallContained!2951 (toList!4808 lt!1768274) lambda!188773 (h!57317 oldBucket!40)))))

(assert (=> b!4613018 (contains!14286 lt!1768274 (_1!29357 (h!57317 oldBucket!40)))))

(declare-fun lt!1768273 () Unit!109496)

(declare-fun Unit!109537 () Unit!109496)

(assert (=> b!4613018 (= lt!1768273 Unit!109537)))

(assert (=> b!4613018 (contains!14286 lt!1768276 (_1!29357 (h!57317 oldBucket!40)))))

(declare-fun lt!1768279 () Unit!109496)

(declare-fun Unit!109538 () Unit!109496)

(assert (=> b!4613018 (= lt!1768279 Unit!109538)))

(assert (=> b!4613018 (forall!10718 oldBucket!40 lambda!188773)))

(declare-fun lt!1768284 () Unit!109496)

(declare-fun Unit!109539 () Unit!109496)

(assert (=> b!4613018 (= lt!1768284 Unit!109539)))

(assert (=> b!4613018 (forall!10718 (toList!4808 lt!1768274) lambda!188773)))

(declare-fun lt!1768285 () Unit!109496)

(declare-fun Unit!109540 () Unit!109496)

(assert (=> b!4613018 (= lt!1768285 Unit!109540)))

(declare-fun lt!1768288 () Unit!109496)

(declare-fun Unit!109541 () Unit!109496)

(assert (=> b!4613018 (= lt!1768288 Unit!109541)))

(declare-fun lt!1768281 () Unit!109496)

(assert (=> b!4613018 (= lt!1768281 (addForallContainsKeyThenBeforeAdding!458 (ListMap!4110 Nil!51315) lt!1768276 (_1!29357 (h!57317 oldBucket!40)) (_2!29357 (h!57317 oldBucket!40))))))

(assert (=> b!4613018 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) lambda!188773)))

(declare-fun lt!1768270 () Unit!109496)

(assert (=> b!4613018 (= lt!1768270 lt!1768281)))

(assert (=> b!4613018 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) lambda!188773)))

(declare-fun lt!1768272 () Unit!109496)

(declare-fun Unit!109542 () Unit!109496)

(assert (=> b!4613018 (= lt!1768272 Unit!109542)))

(declare-fun res!1932032 () Bool)

(assert (=> b!4613018 (= res!1932032 (forall!10718 oldBucket!40 lambda!188773))))

(assert (=> b!4613018 (=> (not res!1932032) (not e!2877437))))

(assert (=> b!4613018 e!2877437))

(declare-fun lt!1768280 () Unit!109496)

(declare-fun Unit!109543 () Unit!109496)

(assert (=> b!4613018 (= lt!1768280 Unit!109543)))

(declare-fun bm!321558 () Bool)

(assert (=> bm!321558 (= call!321563 (forall!10718 (ite c!789910 (toList!4808 (ListMap!4110 Nil!51315)) (toList!4808 lt!1768274)) (ite c!789910 lambda!188770 lambda!188773)))))

(assert (= (and d!1453226 c!789910) b!4613017))

(assert (= (and d!1453226 (not c!789910)) b!4613018))

(assert (= (and b!4613018 res!1932032) b!4613016))

(assert (= (or b!4613017 b!4613018) bm!321557))

(assert (= (or b!4613017 b!4613018) bm!321558))

(assert (= (or b!4613017 b!4613018) bm!321556))

(assert (= (and d!1453226 res!1932031) b!4613014))

(assert (= (and b!4613014 res!1932030) b!4613015))

(declare-fun m!5444473 () Bool)

(assert (=> b!4613014 m!5444473))

(declare-fun m!5444475 () Bool)

(assert (=> b!4613015 m!5444475))

(declare-fun m!5444477 () Bool)

(assert (=> bm!321556 m!5444477))

(declare-fun m!5444479 () Bool)

(assert (=> bm!321558 m!5444479))

(declare-fun m!5444481 () Bool)

(assert (=> b!4613016 m!5444481))

(declare-fun m!5444483 () Bool)

(assert (=> b!4613018 m!5444483))

(declare-fun m!5444485 () Bool)

(assert (=> b!4613018 m!5444485))

(declare-fun m!5444487 () Bool)

(assert (=> b!4613018 m!5444487))

(assert (=> b!4613018 m!5444481))

(declare-fun m!5444489 () Bool)

(assert (=> b!4613018 m!5444489))

(declare-fun m!5444491 () Bool)

(assert (=> b!4613018 m!5444491))

(declare-fun m!5444493 () Bool)

(assert (=> b!4613018 m!5444493))

(assert (=> b!4613018 m!5444491))

(declare-fun m!5444495 () Bool)

(assert (=> b!4613018 m!5444495))

(assert (=> b!4613018 m!5444481))

(assert (=> b!4613018 m!5444485))

(declare-fun m!5444497 () Bool)

(assert (=> b!4613018 m!5444497))

(declare-fun m!5444499 () Bool)

(assert (=> b!4613018 m!5444499))

(declare-fun m!5444501 () Bool)

(assert (=> d!1453226 m!5444501))

(assert (=> d!1453226 m!5444177))

(assert (=> bm!321557 m!5444423))

(assert (=> b!4612861 d!1453226))

(declare-fun d!1453228 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8709 (List!51439) (InoxSet tuple2!52126))

(assert (=> d!1453228 (= (eq!763 (+!1805 lt!1767992 (h!57317 oldBucket!40)) (addToMapMapFromBucket!881 oldBucket!40 (ListMap!4110 Nil!51315))) (= (content!8709 (toList!4808 (+!1805 lt!1767992 (h!57317 oldBucket!40)))) (content!8709 (toList!4808 (addToMapMapFromBucket!881 oldBucket!40 (ListMap!4110 Nil!51315))))))))

(declare-fun bs!1016425 () Bool)

(assert (= bs!1016425 d!1453228))

(declare-fun m!5444503 () Bool)

(assert (=> bs!1016425 m!5444503))

(declare-fun m!5444505 () Bool)

(assert (=> bs!1016425 m!5444505))

(assert (=> b!4612861 d!1453228))

(declare-fun d!1453230 () Bool)

(assert (=> d!1453230 (= (eq!763 (addToMapMapFromBucket!881 (Cons!51315 lt!1767995 lt!1767994) (ListMap!4110 Nil!51315)) (+!1805 lt!1767992 lt!1767995)) (= (content!8709 (toList!4808 (addToMapMapFromBucket!881 (Cons!51315 lt!1767995 lt!1767994) (ListMap!4110 Nil!51315)))) (content!8709 (toList!4808 (+!1805 lt!1767992 lt!1767995)))))))

(declare-fun bs!1016426 () Bool)

(assert (= bs!1016426 d!1453230))

(declare-fun m!5444507 () Bool)

(assert (=> bs!1016426 m!5444507))

(declare-fun m!5444509 () Bool)

(assert (=> bs!1016426 m!5444509))

(assert (=> b!4612861 d!1453230))

(declare-fun d!1453232 () Bool)

(declare-fun e!2877439 () Bool)

(assert (=> d!1453232 e!2877439))

(declare-fun res!1932034 () Bool)

(assert (=> d!1453232 (=> (not res!1932034) (not e!2877439))))

(declare-fun lt!1768293 () ListMap!4109)

(assert (=> d!1453232 (= res!1932034 (contains!14286 lt!1768293 (_1!29357 (h!57317 oldBucket!40))))))

(declare-fun lt!1768294 () List!51439)

(assert (=> d!1453232 (= lt!1768293 (ListMap!4110 lt!1768294))))

(declare-fun lt!1768291 () Unit!109496)

(declare-fun lt!1768292 () Unit!109496)

(assert (=> d!1453232 (= lt!1768291 lt!1768292)))

(assert (=> d!1453232 (= (getValueByKey!1374 lt!1768294 (_1!29357 (h!57317 oldBucket!40))) (Some!11459 (_2!29357 (h!57317 oldBucket!40))))))

(assert (=> d!1453232 (= lt!1768292 (lemmaContainsTupThenGetReturnValue!810 lt!1768294 (_1!29357 (h!57317 oldBucket!40)) (_2!29357 (h!57317 oldBucket!40))))))

(assert (=> d!1453232 (= lt!1768294 (insertNoDuplicatedKeys!318 (toList!4808 lt!1767992) (_1!29357 (h!57317 oldBucket!40)) (_2!29357 (h!57317 oldBucket!40))))))

(assert (=> d!1453232 (= (+!1805 lt!1767992 (h!57317 oldBucket!40)) lt!1768293)))

(declare-fun b!4613019 () Bool)

(declare-fun res!1932033 () Bool)

(assert (=> b!4613019 (=> (not res!1932033) (not e!2877439))))

(assert (=> b!4613019 (= res!1932033 (= (getValueByKey!1374 (toList!4808 lt!1768293) (_1!29357 (h!57317 oldBucket!40))) (Some!11459 (_2!29357 (h!57317 oldBucket!40)))))))

(declare-fun b!4613020 () Bool)

(assert (=> b!4613020 (= e!2877439 (contains!14289 (toList!4808 lt!1768293) (h!57317 oldBucket!40)))))

(assert (= (and d!1453232 res!1932034) b!4613019))

(assert (= (and b!4613019 res!1932033) b!4613020))

(declare-fun m!5444511 () Bool)

(assert (=> d!1453232 m!5444511))

(declare-fun m!5444513 () Bool)

(assert (=> d!1453232 m!5444513))

(declare-fun m!5444515 () Bool)

(assert (=> d!1453232 m!5444515))

(declare-fun m!5444517 () Bool)

(assert (=> d!1453232 m!5444517))

(declare-fun m!5444519 () Bool)

(assert (=> b!4613019 m!5444519))

(declare-fun m!5444521 () Bool)

(assert (=> b!4613020 m!5444521))

(assert (=> b!4612861 d!1453232))

(declare-fun d!1453234 () Bool)

(assert (=> d!1453234 (eq!763 (addToMapMapFromBucket!881 (Cons!51315 lt!1767995 lt!1767994) (ListMap!4110 Nil!51315)) (+!1805 (addToMapMapFromBucket!881 lt!1767994 (ListMap!4110 Nil!51315)) lt!1767995))))

(declare-fun lt!1768297 () Unit!109496)

(declare-fun choose!31051 (tuple2!52126 List!51439 ListMap!4109) Unit!109496)

(assert (=> d!1453234 (= lt!1768297 (choose!31051 lt!1767995 lt!1767994 (ListMap!4110 Nil!51315)))))

(assert (=> d!1453234 (noDuplicateKeys!1420 lt!1767994)))

(assert (=> d!1453234 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!14 lt!1767995 lt!1767994 (ListMap!4110 Nil!51315)) lt!1768297)))

(declare-fun bs!1016428 () Bool)

(assert (= bs!1016428 d!1453234))

(declare-fun m!5444557 () Bool)

(assert (=> bs!1016428 m!5444557))

(assert (=> bs!1016428 m!5444143))

(assert (=> bs!1016428 m!5444169))

(assert (=> bs!1016428 m!5444143))

(declare-fun m!5444559 () Bool)

(assert (=> bs!1016428 m!5444559))

(declare-fun m!5444561 () Bool)

(assert (=> bs!1016428 m!5444561))

(assert (=> bs!1016428 m!5444169))

(assert (=> bs!1016428 m!5444559))

(declare-fun m!5444563 () Bool)

(assert (=> bs!1016428 m!5444563))

(assert (=> b!4612861 d!1453234))

(declare-fun d!1453242 () Bool)

(assert (=> d!1453242 (= (tail!8067 oldBucket!40) (t!358433 oldBucket!40))))

(assert (=> b!4612851 d!1453242))

(declare-fun bs!1016429 () Bool)

(declare-fun d!1453244 () Bool)

(assert (= bs!1016429 (and d!1453244 b!4612993)))

(declare-fun lambda!188779 () Int)

(assert (=> bs!1016429 (not (= lambda!188779 lambda!188760))))

(declare-fun bs!1016430 () Bool)

(assert (= bs!1016430 (and d!1453244 d!1453182)))

(assert (=> bs!1016430 (not (= lambda!188779 lambda!188763))))

(assert (=> bs!1016429 (not (= lambda!188779 lambda!188761))))

(declare-fun bs!1016431 () Bool)

(assert (= bs!1016431 (and d!1453244 b!4613017)))

(assert (=> bs!1016431 (not (= lambda!188779 lambda!188770))))

(declare-fun bs!1016432 () Bool)

(assert (= bs!1016432 (and d!1453244 b!4612992)))

(assert (=> bs!1016432 (not (= lambda!188779 lambda!188759))))

(declare-fun bs!1016433 () Bool)

(assert (= bs!1016433 (and d!1453244 d!1453226)))

(assert (=> bs!1016433 (not (= lambda!188779 lambda!188775))))

(declare-fun bs!1016434 () Bool)

(assert (= bs!1016434 (and d!1453244 b!4613018)))

(assert (=> bs!1016434 (not (= lambda!188779 lambda!188772))))

(assert (=> bs!1016434 (not (= lambda!188779 lambda!188773))))

(assert (=> d!1453244 true))

(assert (=> d!1453244 true))

(assert (=> d!1453244 (= (allKeysSameHash!1274 newBucket!224 hash!414 hashF!1389) (forall!10718 newBucket!224 lambda!188779))))

(declare-fun bs!1016435 () Bool)

(assert (= bs!1016435 d!1453244))

(declare-fun m!5444565 () Bool)

(assert (=> bs!1016435 m!5444565))

(assert (=> b!4612862 d!1453244))

(declare-fun bs!1016436 () Bool)

(declare-fun d!1453246 () Bool)

(assert (= bs!1016436 (and d!1453246 b!4612993)))

(declare-fun lambda!188780 () Int)

(assert (=> bs!1016436 (not (= lambda!188780 lambda!188760))))

(declare-fun bs!1016437 () Bool)

(assert (= bs!1016437 (and d!1453246 d!1453182)))

(assert (=> bs!1016437 (not (= lambda!188780 lambda!188763))))

(assert (=> bs!1016436 (not (= lambda!188780 lambda!188761))))

(declare-fun bs!1016438 () Bool)

(assert (= bs!1016438 (and d!1453246 b!4613017)))

(assert (=> bs!1016438 (not (= lambda!188780 lambda!188770))))

(declare-fun bs!1016439 () Bool)

(assert (= bs!1016439 (and d!1453246 d!1453244)))

(assert (=> bs!1016439 (= lambda!188780 lambda!188779)))

(declare-fun bs!1016440 () Bool)

(assert (= bs!1016440 (and d!1453246 b!4612992)))

(assert (=> bs!1016440 (not (= lambda!188780 lambda!188759))))

(declare-fun bs!1016441 () Bool)

(assert (= bs!1016441 (and d!1453246 d!1453226)))

(assert (=> bs!1016441 (not (= lambda!188780 lambda!188775))))

(declare-fun bs!1016442 () Bool)

(assert (= bs!1016442 (and d!1453246 b!4613018)))

(assert (=> bs!1016442 (not (= lambda!188780 lambda!188772))))

(assert (=> bs!1016442 (not (= lambda!188780 lambda!188773))))

(assert (=> d!1453246 true))

(assert (=> d!1453246 true))

(assert (=> d!1453246 (= (allKeysSameHash!1274 oldBucket!40 hash!414 hashF!1389) (forall!10718 oldBucket!40 lambda!188780))))

(declare-fun bs!1016443 () Bool)

(assert (= bs!1016443 d!1453246))

(declare-fun m!5444567 () Bool)

(assert (=> bs!1016443 m!5444567))

(assert (=> b!4612852 d!1453246))

(declare-fun bs!1016444 () Bool)

(declare-fun d!1453248 () Bool)

(assert (= bs!1016444 (and d!1453248 b!4612865)))

(declare-fun lambda!188783 () Int)

(assert (=> bs!1016444 (= lambda!188783 lambda!188682)))

(declare-fun lt!1768300 () ListMap!4109)

(assert (=> d!1453248 (invariantList!1157 (toList!4808 lt!1768300))))

(declare-fun e!2877448 () ListMap!4109)

(assert (=> d!1453248 (= lt!1768300 e!2877448)))

(declare-fun c!789913 () Bool)

(assert (=> d!1453248 (= c!789913 ((_ is Cons!51316) lt!1767993))))

(assert (=> d!1453248 (forall!10716 lt!1767993 lambda!188783)))

(assert (=> d!1453248 (= (extractMap!1476 lt!1767993) lt!1768300)))

(declare-fun b!4613037 () Bool)

(assert (=> b!4613037 (= e!2877448 (addToMapMapFromBucket!881 (_2!29358 (h!57318 lt!1767993)) (extractMap!1476 (t!358434 lt!1767993))))))

(declare-fun b!4613038 () Bool)

(assert (=> b!4613038 (= e!2877448 (ListMap!4110 Nil!51315))))

(assert (= (and d!1453248 c!789913) b!4613037))

(assert (= (and d!1453248 (not c!789913)) b!4613038))

(declare-fun m!5444569 () Bool)

(assert (=> d!1453248 m!5444569))

(declare-fun m!5444571 () Bool)

(assert (=> d!1453248 m!5444571))

(declare-fun m!5444573 () Bool)

(assert (=> b!4613037 m!5444573))

(assert (=> b!4613037 m!5444573))

(declare-fun m!5444575 () Bool)

(assert (=> b!4613037 m!5444575))

(assert (=> b!4612853 d!1453248))

(declare-fun bs!1016445 () Bool)

(declare-fun d!1453250 () Bool)

(assert (= bs!1016445 (and d!1453250 b!4612865)))

(declare-fun lambda!188784 () Int)

(assert (=> bs!1016445 (= lambda!188784 lambda!188682)))

(declare-fun bs!1016446 () Bool)

(assert (= bs!1016446 (and d!1453250 d!1453248)))

(assert (=> bs!1016446 (= lambda!188784 lambda!188783)))

(declare-fun lt!1768301 () ListMap!4109)

(assert (=> d!1453250 (invariantList!1157 (toList!4808 lt!1768301))))

(declare-fun e!2877449 () ListMap!4109)

(assert (=> d!1453250 (= lt!1768301 e!2877449)))

(declare-fun c!789914 () Bool)

(assert (=> d!1453250 (= c!789914 ((_ is Cons!51316) (Cons!51316 (tuple2!52129 hash!414 newBucket!224) Nil!51316)))))

(assert (=> d!1453250 (forall!10716 (Cons!51316 (tuple2!52129 hash!414 newBucket!224) Nil!51316) lambda!188784)))

(assert (=> d!1453250 (= (extractMap!1476 (Cons!51316 (tuple2!52129 hash!414 newBucket!224) Nil!51316)) lt!1768301)))

(declare-fun b!4613039 () Bool)

(assert (=> b!4613039 (= e!2877449 (addToMapMapFromBucket!881 (_2!29358 (h!57318 (Cons!51316 (tuple2!52129 hash!414 newBucket!224) Nil!51316))) (extractMap!1476 (t!358434 (Cons!51316 (tuple2!52129 hash!414 newBucket!224) Nil!51316)))))))

(declare-fun b!4613040 () Bool)

(assert (=> b!4613040 (= e!2877449 (ListMap!4110 Nil!51315))))

(assert (= (and d!1453250 c!789914) b!4613039))

(assert (= (and d!1453250 (not c!789914)) b!4613040))

(declare-fun m!5444577 () Bool)

(assert (=> d!1453250 m!5444577))

(declare-fun m!5444579 () Bool)

(assert (=> d!1453250 m!5444579))

(declare-fun m!5444581 () Bool)

(assert (=> b!4613039 m!5444581))

(assert (=> b!4613039 m!5444581))

(declare-fun m!5444583 () Bool)

(assert (=> b!4613039 m!5444583))

(assert (=> b!4612853 d!1453250))

(declare-fun bs!1016447 () Bool)

(declare-fun b!4613044 () Bool)

(assert (= bs!1016447 (and b!4613044 d!1453246)))

(declare-fun lambda!188785 () Int)

(assert (=> bs!1016447 (not (= lambda!188785 lambda!188780))))

(declare-fun bs!1016448 () Bool)

(assert (= bs!1016448 (and b!4613044 b!4612993)))

(assert (=> bs!1016448 (= lambda!188785 lambda!188760)))

(declare-fun bs!1016449 () Bool)

(assert (= bs!1016449 (and b!4613044 d!1453182)))

(assert (=> bs!1016449 (= (= (ListMap!4110 Nil!51315) lt!1768210) (= lambda!188785 lambda!188763))))

(assert (=> bs!1016448 (= (= (ListMap!4110 Nil!51315) lt!1768200) (= lambda!188785 lambda!188761))))

(declare-fun bs!1016450 () Bool)

(assert (= bs!1016450 (and b!4613044 b!4613017)))

(assert (=> bs!1016450 (= lambda!188785 lambda!188770)))

(declare-fun bs!1016451 () Bool)

(assert (= bs!1016451 (and b!4613044 d!1453244)))

(assert (=> bs!1016451 (not (= lambda!188785 lambda!188779))))

(declare-fun bs!1016452 () Bool)

(assert (= bs!1016452 (and b!4613044 b!4612992)))

(assert (=> bs!1016452 (= lambda!188785 lambda!188759)))

(declare-fun bs!1016453 () Bool)

(assert (= bs!1016453 (and b!4613044 d!1453226)))

(assert (=> bs!1016453 (= (= (ListMap!4110 Nil!51315) lt!1768286) (= lambda!188785 lambda!188775))))

(declare-fun bs!1016454 () Bool)

(assert (= bs!1016454 (and b!4613044 b!4613018)))

(assert (=> bs!1016454 (= lambda!188785 lambda!188772)))

(assert (=> bs!1016454 (= (= (ListMap!4110 Nil!51315) lt!1768276) (= lambda!188785 lambda!188773))))

(assert (=> b!4613044 true))

(declare-fun bs!1016455 () Bool)

(declare-fun b!4613045 () Bool)

(assert (= bs!1016455 (and b!4613045 d!1453246)))

(declare-fun lambda!188786 () Int)

(assert (=> bs!1016455 (not (= lambda!188786 lambda!188780))))

(declare-fun bs!1016456 () Bool)

(assert (= bs!1016456 (and b!4613045 b!4612993)))

(assert (=> bs!1016456 (= lambda!188786 lambda!188760)))

(declare-fun bs!1016457 () Bool)

(assert (= bs!1016457 (and b!4613045 d!1453182)))

(assert (=> bs!1016457 (= (= (ListMap!4110 Nil!51315) lt!1768210) (= lambda!188786 lambda!188763))))

(assert (=> bs!1016456 (= (= (ListMap!4110 Nil!51315) lt!1768200) (= lambda!188786 lambda!188761))))

(declare-fun bs!1016458 () Bool)

(assert (= bs!1016458 (and b!4613045 b!4613017)))

(assert (=> bs!1016458 (= lambda!188786 lambda!188770)))

(declare-fun bs!1016459 () Bool)

(assert (= bs!1016459 (and b!4613045 d!1453244)))

(assert (=> bs!1016459 (not (= lambda!188786 lambda!188779))))

(declare-fun bs!1016460 () Bool)

(assert (= bs!1016460 (and b!4613045 b!4612992)))

(assert (=> bs!1016460 (= lambda!188786 lambda!188759)))

(declare-fun bs!1016461 () Bool)

(assert (= bs!1016461 (and b!4613045 d!1453226)))

(assert (=> bs!1016461 (= (= (ListMap!4110 Nil!51315) lt!1768286) (= lambda!188786 lambda!188775))))

(declare-fun bs!1016462 () Bool)

(assert (= bs!1016462 (and b!4613045 b!4613044)))

(assert (=> bs!1016462 (= lambda!188786 lambda!188785)))

(declare-fun bs!1016463 () Bool)

(assert (= bs!1016463 (and b!4613045 b!4613018)))

(assert (=> bs!1016463 (= lambda!188786 lambda!188772)))

(assert (=> bs!1016463 (= (= (ListMap!4110 Nil!51315) lt!1768276) (= lambda!188786 lambda!188773))))

(assert (=> b!4613045 true))

(declare-fun lambda!188787 () Int)

(assert (=> bs!1016455 (not (= lambda!188787 lambda!188780))))

(declare-fun lt!1768308 () ListMap!4109)

(assert (=> bs!1016456 (= (= lt!1768308 (ListMap!4110 Nil!51315)) (= lambda!188787 lambda!188760))))

(assert (=> bs!1016457 (= (= lt!1768308 lt!1768210) (= lambda!188787 lambda!188763))))

(assert (=> bs!1016456 (= (= lt!1768308 lt!1768200) (= lambda!188787 lambda!188761))))

(assert (=> bs!1016458 (= (= lt!1768308 (ListMap!4110 Nil!51315)) (= lambda!188787 lambda!188770))))

(assert (=> bs!1016459 (not (= lambda!188787 lambda!188779))))

(assert (=> b!4613045 (= (= lt!1768308 (ListMap!4110 Nil!51315)) (= lambda!188787 lambda!188786))))

(assert (=> bs!1016460 (= (= lt!1768308 (ListMap!4110 Nil!51315)) (= lambda!188787 lambda!188759))))

(assert (=> bs!1016461 (= (= lt!1768308 lt!1768286) (= lambda!188787 lambda!188775))))

(assert (=> bs!1016462 (= (= lt!1768308 (ListMap!4110 Nil!51315)) (= lambda!188787 lambda!188785))))

(assert (=> bs!1016463 (= (= lt!1768308 (ListMap!4110 Nil!51315)) (= lambda!188787 lambda!188772))))

(assert (=> bs!1016463 (= (= lt!1768308 lt!1768276) (= lambda!188787 lambda!188773))))

(assert (=> b!4613045 true))

(declare-fun bs!1016464 () Bool)

(declare-fun d!1453252 () Bool)

(assert (= bs!1016464 (and d!1453252 d!1453246)))

(declare-fun lambda!188788 () Int)

(assert (=> bs!1016464 (not (= lambda!188788 lambda!188780))))

(declare-fun bs!1016465 () Bool)

(assert (= bs!1016465 (and d!1453252 b!4612993)))

(declare-fun lt!1768318 () ListMap!4109)

(assert (=> bs!1016465 (= (= lt!1768318 (ListMap!4110 Nil!51315)) (= lambda!188788 lambda!188760))))

(declare-fun bs!1016466 () Bool)

(assert (= bs!1016466 (and d!1453252 d!1453182)))

(assert (=> bs!1016466 (= (= lt!1768318 lt!1768210) (= lambda!188788 lambda!188763))))

(assert (=> bs!1016465 (= (= lt!1768318 lt!1768200) (= lambda!188788 lambda!188761))))

(declare-fun bs!1016467 () Bool)

(assert (= bs!1016467 (and d!1453252 b!4613045)))

(assert (=> bs!1016467 (= (= lt!1768318 lt!1768308) (= lambda!188788 lambda!188787))))

(declare-fun bs!1016468 () Bool)

(assert (= bs!1016468 (and d!1453252 b!4613017)))

(assert (=> bs!1016468 (= (= lt!1768318 (ListMap!4110 Nil!51315)) (= lambda!188788 lambda!188770))))

(declare-fun bs!1016469 () Bool)

(assert (= bs!1016469 (and d!1453252 d!1453244)))

(assert (=> bs!1016469 (not (= lambda!188788 lambda!188779))))

(assert (=> bs!1016467 (= (= lt!1768318 (ListMap!4110 Nil!51315)) (= lambda!188788 lambda!188786))))

(declare-fun bs!1016470 () Bool)

(assert (= bs!1016470 (and d!1453252 b!4612992)))

(assert (=> bs!1016470 (= (= lt!1768318 (ListMap!4110 Nil!51315)) (= lambda!188788 lambda!188759))))

(declare-fun bs!1016471 () Bool)

(assert (= bs!1016471 (and d!1453252 d!1453226)))

(assert (=> bs!1016471 (= (= lt!1768318 lt!1768286) (= lambda!188788 lambda!188775))))

(declare-fun bs!1016472 () Bool)

(assert (= bs!1016472 (and d!1453252 b!4613044)))

(assert (=> bs!1016472 (= (= lt!1768318 (ListMap!4110 Nil!51315)) (= lambda!188788 lambda!188785))))

(declare-fun bs!1016473 () Bool)

(assert (= bs!1016473 (and d!1453252 b!4613018)))

(assert (=> bs!1016473 (= (= lt!1768318 (ListMap!4110 Nil!51315)) (= lambda!188788 lambda!188772))))

(assert (=> bs!1016473 (= (= lt!1768318 lt!1768276) (= lambda!188788 lambda!188773))))

(assert (=> d!1453252 true))

(declare-fun b!4613041 () Bool)

(declare-fun res!1932037 () Bool)

(declare-fun e!2877450 () Bool)

(assert (=> b!4613041 (=> (not res!1932037) (not e!2877450))))

(assert (=> b!4613041 (= res!1932037 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) lambda!188788))))

(declare-fun call!321565 () Bool)

(declare-fun bm!321559 () Bool)

(declare-fun c!789915 () Bool)

(assert (=> bm!321559 (= call!321565 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) (ite c!789915 lambda!188785 lambda!188786)))))

(declare-fun b!4613042 () Bool)

(assert (=> b!4613042 (= e!2877450 (invariantList!1157 (toList!4808 lt!1768318)))))

(declare-fun bm!321560 () Bool)

(declare-fun call!321564 () Unit!109496)

(assert (=> bm!321560 (= call!321564 (lemmaContainsAllItsOwnKeys!459 (ListMap!4110 Nil!51315)))))

(declare-fun b!4613043 () Bool)

(declare-fun e!2877451 () Bool)

(assert (=> b!4613043 (= e!2877451 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) lambda!188787))))

(assert (=> d!1453252 e!2877450))

(declare-fun res!1932038 () Bool)

(assert (=> d!1453252 (=> (not res!1932038) (not e!2877450))))

(assert (=> d!1453252 (= res!1932038 (forall!10718 newBucket!224 lambda!188788))))

(declare-fun e!2877452 () ListMap!4109)

(assert (=> d!1453252 (= lt!1768318 e!2877452)))

(assert (=> d!1453252 (= c!789915 ((_ is Nil!51315) newBucket!224))))

(assert (=> d!1453252 (noDuplicateKeys!1420 newBucket!224)))

(assert (=> d!1453252 (= (addToMapMapFromBucket!881 newBucket!224 (ListMap!4110 Nil!51315)) lt!1768318)))

(assert (=> b!4613044 (= e!2877452 (ListMap!4110 Nil!51315))))

(declare-fun lt!1768310 () Unit!109496)

(assert (=> b!4613044 (= lt!1768310 call!321564)))

(assert (=> b!4613044 call!321565))

(declare-fun lt!1768321 () Unit!109496)

(assert (=> b!4613044 (= lt!1768321 lt!1768310)))

(declare-fun call!321566 () Bool)

(assert (=> b!4613044 call!321566))

(declare-fun lt!1768303 () Unit!109496)

(declare-fun Unit!109555 () Unit!109496)

(assert (=> b!4613044 (= lt!1768303 Unit!109555)))

(assert (=> b!4613045 (= e!2877452 lt!1768308)))

(declare-fun lt!1768306 () ListMap!4109)

(assert (=> b!4613045 (= lt!1768306 (+!1805 (ListMap!4110 Nil!51315) (h!57317 newBucket!224)))))

(assert (=> b!4613045 (= lt!1768308 (addToMapMapFromBucket!881 (t!358433 newBucket!224) (+!1805 (ListMap!4110 Nil!51315) (h!57317 newBucket!224))))))

(declare-fun lt!1768322 () Unit!109496)

(assert (=> b!4613045 (= lt!1768322 call!321564)))

(assert (=> b!4613045 call!321565))

(declare-fun lt!1768307 () Unit!109496)

(assert (=> b!4613045 (= lt!1768307 lt!1768322)))

(assert (=> b!4613045 call!321566))

(declare-fun lt!1768309 () Unit!109496)

(declare-fun Unit!109559 () Unit!109496)

(assert (=> b!4613045 (= lt!1768309 Unit!109559)))

(assert (=> b!4613045 (forall!10718 (t!358433 newBucket!224) lambda!188787)))

(declare-fun lt!1768315 () Unit!109496)

(declare-fun Unit!109561 () Unit!109496)

(assert (=> b!4613045 (= lt!1768315 Unit!109561)))

(declare-fun lt!1768314 () Unit!109496)

(declare-fun Unit!109563 () Unit!109496)

(assert (=> b!4613045 (= lt!1768314 Unit!109563)))

(declare-fun lt!1768319 () Unit!109496)

(assert (=> b!4613045 (= lt!1768319 (forallContained!2951 (toList!4808 lt!1768306) lambda!188787 (h!57317 newBucket!224)))))

(assert (=> b!4613045 (contains!14286 lt!1768306 (_1!29357 (h!57317 newBucket!224)))))

(declare-fun lt!1768305 () Unit!109496)

(declare-fun Unit!109565 () Unit!109496)

(assert (=> b!4613045 (= lt!1768305 Unit!109565)))

(assert (=> b!4613045 (contains!14286 lt!1768308 (_1!29357 (h!57317 newBucket!224)))))

(declare-fun lt!1768311 () Unit!109496)

(declare-fun Unit!109568 () Unit!109496)

(assert (=> b!4613045 (= lt!1768311 Unit!109568)))

(assert (=> b!4613045 (forall!10718 newBucket!224 lambda!188787)))

(declare-fun lt!1768316 () Unit!109496)

(declare-fun Unit!109569 () Unit!109496)

(assert (=> b!4613045 (= lt!1768316 Unit!109569)))

(assert (=> b!4613045 (forall!10718 (toList!4808 lt!1768306) lambda!188787)))

(declare-fun lt!1768317 () Unit!109496)

(declare-fun Unit!109570 () Unit!109496)

(assert (=> b!4613045 (= lt!1768317 Unit!109570)))

(declare-fun lt!1768320 () Unit!109496)

(declare-fun Unit!109571 () Unit!109496)

(assert (=> b!4613045 (= lt!1768320 Unit!109571)))

(declare-fun lt!1768313 () Unit!109496)

(assert (=> b!4613045 (= lt!1768313 (addForallContainsKeyThenBeforeAdding!458 (ListMap!4110 Nil!51315) lt!1768308 (_1!29357 (h!57317 newBucket!224)) (_2!29357 (h!57317 newBucket!224))))))

(assert (=> b!4613045 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) lambda!188787)))

(declare-fun lt!1768302 () Unit!109496)

(assert (=> b!4613045 (= lt!1768302 lt!1768313)))

(assert (=> b!4613045 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) lambda!188787)))

(declare-fun lt!1768304 () Unit!109496)

(declare-fun Unit!109574 () Unit!109496)

(assert (=> b!4613045 (= lt!1768304 Unit!109574)))

(declare-fun res!1932039 () Bool)

(assert (=> b!4613045 (= res!1932039 (forall!10718 newBucket!224 lambda!188787))))

(assert (=> b!4613045 (=> (not res!1932039) (not e!2877451))))

(assert (=> b!4613045 e!2877451))

(declare-fun lt!1768312 () Unit!109496)

(declare-fun Unit!109575 () Unit!109496)

(assert (=> b!4613045 (= lt!1768312 Unit!109575)))

(declare-fun bm!321561 () Bool)

(assert (=> bm!321561 (= call!321566 (forall!10718 (ite c!789915 (toList!4808 (ListMap!4110 Nil!51315)) (toList!4808 lt!1768306)) (ite c!789915 lambda!188785 lambda!188787)))))

(assert (= (and d!1453252 c!789915) b!4613044))

(assert (= (and d!1453252 (not c!789915)) b!4613045))

(assert (= (and b!4613045 res!1932039) b!4613043))

(assert (= (or b!4613044 b!4613045) bm!321560))

(assert (= (or b!4613044 b!4613045) bm!321561))

(assert (= (or b!4613044 b!4613045) bm!321559))

(assert (= (and d!1453252 res!1932038) b!4613041))

(assert (= (and b!4613041 res!1932037) b!4613042))

(declare-fun m!5444585 () Bool)

(assert (=> b!4613041 m!5444585))

(declare-fun m!5444587 () Bool)

(assert (=> b!4613042 m!5444587))

(declare-fun m!5444589 () Bool)

(assert (=> bm!321559 m!5444589))

(declare-fun m!5444591 () Bool)

(assert (=> bm!321561 m!5444591))

(declare-fun m!5444593 () Bool)

(assert (=> b!4613043 m!5444593))

(declare-fun m!5444595 () Bool)

(assert (=> b!4613045 m!5444595))

(declare-fun m!5444597 () Bool)

(assert (=> b!4613045 m!5444597))

(declare-fun m!5444599 () Bool)

(assert (=> b!4613045 m!5444599))

(assert (=> b!4613045 m!5444593))

(declare-fun m!5444601 () Bool)

(assert (=> b!4613045 m!5444601))

(declare-fun m!5444603 () Bool)

(assert (=> b!4613045 m!5444603))

(declare-fun m!5444605 () Bool)

(assert (=> b!4613045 m!5444605))

(assert (=> b!4613045 m!5444603))

(declare-fun m!5444607 () Bool)

(assert (=> b!4613045 m!5444607))

(assert (=> b!4613045 m!5444593))

(assert (=> b!4613045 m!5444597))

(declare-fun m!5444609 () Bool)

(assert (=> b!4613045 m!5444609))

(declare-fun m!5444611 () Bool)

(assert (=> b!4613045 m!5444611))

(declare-fun m!5444613 () Bool)

(assert (=> d!1453252 m!5444613))

(assert (=> d!1453252 m!5444179))

(assert (=> bm!321560 m!5444423))

(assert (=> b!4612864 d!1453252))

(declare-fun bs!1016474 () Bool)

(declare-fun b!4613049 () Bool)

(assert (= bs!1016474 (and b!4613049 d!1453246)))

(declare-fun lambda!188789 () Int)

(assert (=> bs!1016474 (not (= lambda!188789 lambda!188780))))

(declare-fun bs!1016475 () Bool)

(assert (= bs!1016475 (and b!4613049 d!1453182)))

(assert (=> bs!1016475 (= (= (ListMap!4110 Nil!51315) lt!1768210) (= lambda!188789 lambda!188763))))

(declare-fun bs!1016476 () Bool)

(assert (= bs!1016476 (and b!4613049 b!4612993)))

(assert (=> bs!1016476 (= (= (ListMap!4110 Nil!51315) lt!1768200) (= lambda!188789 lambda!188761))))

(declare-fun bs!1016477 () Bool)

(assert (= bs!1016477 (and b!4613049 b!4613045)))

(assert (=> bs!1016477 (= (= (ListMap!4110 Nil!51315) lt!1768308) (= lambda!188789 lambda!188787))))

(declare-fun bs!1016478 () Bool)

(assert (= bs!1016478 (and b!4613049 b!4613017)))

(assert (=> bs!1016478 (= lambda!188789 lambda!188770)))

(declare-fun bs!1016479 () Bool)

(assert (= bs!1016479 (and b!4613049 d!1453244)))

(assert (=> bs!1016479 (not (= lambda!188789 lambda!188779))))

(assert (=> bs!1016477 (= lambda!188789 lambda!188786)))

(declare-fun bs!1016480 () Bool)

(assert (= bs!1016480 (and b!4613049 b!4612992)))

(assert (=> bs!1016480 (= lambda!188789 lambda!188759)))

(declare-fun bs!1016481 () Bool)

(assert (= bs!1016481 (and b!4613049 d!1453226)))

(assert (=> bs!1016481 (= (= (ListMap!4110 Nil!51315) lt!1768286) (= lambda!188789 lambda!188775))))

(declare-fun bs!1016482 () Bool)

(assert (= bs!1016482 (and b!4613049 b!4613044)))

(assert (=> bs!1016482 (= lambda!188789 lambda!188785)))

(assert (=> bs!1016476 (= lambda!188789 lambda!188760)))

(declare-fun bs!1016483 () Bool)

(assert (= bs!1016483 (and b!4613049 d!1453252)))

(assert (=> bs!1016483 (= (= (ListMap!4110 Nil!51315) lt!1768318) (= lambda!188789 lambda!188788))))

(declare-fun bs!1016484 () Bool)

(assert (= bs!1016484 (and b!4613049 b!4613018)))

(assert (=> bs!1016484 (= lambda!188789 lambda!188772)))

(assert (=> bs!1016484 (= (= (ListMap!4110 Nil!51315) lt!1768276) (= lambda!188789 lambda!188773))))

(assert (=> b!4613049 true))

(declare-fun bs!1016485 () Bool)

(declare-fun b!4613050 () Bool)

(assert (= bs!1016485 (and b!4613050 d!1453246)))

(declare-fun lambda!188790 () Int)

(assert (=> bs!1016485 (not (= lambda!188790 lambda!188780))))

(declare-fun bs!1016486 () Bool)

(assert (= bs!1016486 (and b!4613050 d!1453182)))

(assert (=> bs!1016486 (= (= (ListMap!4110 Nil!51315) lt!1768210) (= lambda!188790 lambda!188763))))

(declare-fun bs!1016487 () Bool)

(assert (= bs!1016487 (and b!4613050 b!4612993)))

(assert (=> bs!1016487 (= (= (ListMap!4110 Nil!51315) lt!1768200) (= lambda!188790 lambda!188761))))

(declare-fun bs!1016488 () Bool)

(assert (= bs!1016488 (and b!4613050 b!4613045)))

(assert (=> bs!1016488 (= (= (ListMap!4110 Nil!51315) lt!1768308) (= lambda!188790 lambda!188787))))

(declare-fun bs!1016489 () Bool)

(assert (= bs!1016489 (and b!4613050 b!4613017)))

(assert (=> bs!1016489 (= lambda!188790 lambda!188770)))

(declare-fun bs!1016490 () Bool)

(assert (= bs!1016490 (and b!4613050 d!1453244)))

(assert (=> bs!1016490 (not (= lambda!188790 lambda!188779))))

(declare-fun bs!1016491 () Bool)

(assert (= bs!1016491 (and b!4613050 b!4612992)))

(assert (=> bs!1016491 (= lambda!188790 lambda!188759)))

(declare-fun bs!1016492 () Bool)

(assert (= bs!1016492 (and b!4613050 d!1453226)))

(assert (=> bs!1016492 (= (= (ListMap!4110 Nil!51315) lt!1768286) (= lambda!188790 lambda!188775))))

(declare-fun bs!1016493 () Bool)

(assert (= bs!1016493 (and b!4613050 b!4613044)))

(assert (=> bs!1016493 (= lambda!188790 lambda!188785)))

(assert (=> bs!1016487 (= lambda!188790 lambda!188760)))

(declare-fun bs!1016494 () Bool)

(assert (= bs!1016494 (and b!4613050 d!1453252)))

(assert (=> bs!1016494 (= (= (ListMap!4110 Nil!51315) lt!1768318) (= lambda!188790 lambda!188788))))

(assert (=> bs!1016488 (= lambda!188790 lambda!188786)))

(declare-fun bs!1016495 () Bool)

(assert (= bs!1016495 (and b!4613050 b!4613049)))

(assert (=> bs!1016495 (= lambda!188790 lambda!188789)))

(declare-fun bs!1016496 () Bool)

(assert (= bs!1016496 (and b!4613050 b!4613018)))

(assert (=> bs!1016496 (= lambda!188790 lambda!188772)))

(assert (=> bs!1016496 (= (= (ListMap!4110 Nil!51315) lt!1768276) (= lambda!188790 lambda!188773))))

(assert (=> b!4613050 true))

(declare-fun lambda!188791 () Int)

(assert (=> bs!1016485 (not (= lambda!188791 lambda!188780))))

(declare-fun lt!1768329 () ListMap!4109)

(assert (=> bs!1016486 (= (= lt!1768329 lt!1768210) (= lambda!188791 lambda!188763))))

(assert (=> b!4613050 (= (= lt!1768329 (ListMap!4110 Nil!51315)) (= lambda!188791 lambda!188790))))

(assert (=> bs!1016487 (= (= lt!1768329 lt!1768200) (= lambda!188791 lambda!188761))))

(assert (=> bs!1016488 (= (= lt!1768329 lt!1768308) (= lambda!188791 lambda!188787))))

(assert (=> bs!1016489 (= (= lt!1768329 (ListMap!4110 Nil!51315)) (= lambda!188791 lambda!188770))))

(assert (=> bs!1016490 (not (= lambda!188791 lambda!188779))))

(assert (=> bs!1016491 (= (= lt!1768329 (ListMap!4110 Nil!51315)) (= lambda!188791 lambda!188759))))

(assert (=> bs!1016492 (= (= lt!1768329 lt!1768286) (= lambda!188791 lambda!188775))))

(assert (=> bs!1016493 (= (= lt!1768329 (ListMap!4110 Nil!51315)) (= lambda!188791 lambda!188785))))

(assert (=> bs!1016487 (= (= lt!1768329 (ListMap!4110 Nil!51315)) (= lambda!188791 lambda!188760))))

(assert (=> bs!1016494 (= (= lt!1768329 lt!1768318) (= lambda!188791 lambda!188788))))

(assert (=> bs!1016488 (= (= lt!1768329 (ListMap!4110 Nil!51315)) (= lambda!188791 lambda!188786))))

(assert (=> bs!1016495 (= (= lt!1768329 (ListMap!4110 Nil!51315)) (= lambda!188791 lambda!188789))))

(assert (=> bs!1016496 (= (= lt!1768329 (ListMap!4110 Nil!51315)) (= lambda!188791 lambda!188772))))

(assert (=> bs!1016496 (= (= lt!1768329 lt!1768276) (= lambda!188791 lambda!188773))))

(assert (=> b!4613050 true))

(declare-fun bs!1016497 () Bool)

(declare-fun d!1453254 () Bool)

(assert (= bs!1016497 (and d!1453254 d!1453246)))

(declare-fun lambda!188792 () Int)

(assert (=> bs!1016497 (not (= lambda!188792 lambda!188780))))

(declare-fun bs!1016498 () Bool)

(assert (= bs!1016498 (and d!1453254 d!1453182)))

(declare-fun lt!1768339 () ListMap!4109)

(assert (=> bs!1016498 (= (= lt!1768339 lt!1768210) (= lambda!188792 lambda!188763))))

(declare-fun bs!1016499 () Bool)

(assert (= bs!1016499 (and d!1453254 b!4613050)))

(assert (=> bs!1016499 (= (= lt!1768339 (ListMap!4110 Nil!51315)) (= lambda!188792 lambda!188790))))

(declare-fun bs!1016500 () Bool)

(assert (= bs!1016500 (and d!1453254 b!4612993)))

(assert (=> bs!1016500 (= (= lt!1768339 lt!1768200) (= lambda!188792 lambda!188761))))

(declare-fun bs!1016501 () Bool)

(assert (= bs!1016501 (and d!1453254 b!4613045)))

(assert (=> bs!1016501 (= (= lt!1768339 lt!1768308) (= lambda!188792 lambda!188787))))

(declare-fun bs!1016502 () Bool)

(assert (= bs!1016502 (and d!1453254 b!4613017)))

(assert (=> bs!1016502 (= (= lt!1768339 (ListMap!4110 Nil!51315)) (= lambda!188792 lambda!188770))))

(declare-fun bs!1016503 () Bool)

(assert (= bs!1016503 (and d!1453254 d!1453244)))

(assert (=> bs!1016503 (not (= lambda!188792 lambda!188779))))

(declare-fun bs!1016504 () Bool)

(assert (= bs!1016504 (and d!1453254 b!4612992)))

(assert (=> bs!1016504 (= (= lt!1768339 (ListMap!4110 Nil!51315)) (= lambda!188792 lambda!188759))))

(assert (=> bs!1016499 (= (= lt!1768339 lt!1768329) (= lambda!188792 lambda!188791))))

(declare-fun bs!1016505 () Bool)

(assert (= bs!1016505 (and d!1453254 d!1453226)))

(assert (=> bs!1016505 (= (= lt!1768339 lt!1768286) (= lambda!188792 lambda!188775))))

(declare-fun bs!1016506 () Bool)

(assert (= bs!1016506 (and d!1453254 b!4613044)))

(assert (=> bs!1016506 (= (= lt!1768339 (ListMap!4110 Nil!51315)) (= lambda!188792 lambda!188785))))

(assert (=> bs!1016500 (= (= lt!1768339 (ListMap!4110 Nil!51315)) (= lambda!188792 lambda!188760))))

(declare-fun bs!1016507 () Bool)

(assert (= bs!1016507 (and d!1453254 d!1453252)))

(assert (=> bs!1016507 (= (= lt!1768339 lt!1768318) (= lambda!188792 lambda!188788))))

(assert (=> bs!1016501 (= (= lt!1768339 (ListMap!4110 Nil!51315)) (= lambda!188792 lambda!188786))))

(declare-fun bs!1016508 () Bool)

(assert (= bs!1016508 (and d!1453254 b!4613049)))

(assert (=> bs!1016508 (= (= lt!1768339 (ListMap!4110 Nil!51315)) (= lambda!188792 lambda!188789))))

(declare-fun bs!1016509 () Bool)

(assert (= bs!1016509 (and d!1453254 b!4613018)))

(assert (=> bs!1016509 (= (= lt!1768339 (ListMap!4110 Nil!51315)) (= lambda!188792 lambda!188772))))

(assert (=> bs!1016509 (= (= lt!1768339 lt!1768276) (= lambda!188792 lambda!188773))))

(assert (=> d!1453254 true))

(declare-fun b!4613046 () Bool)

(declare-fun res!1932040 () Bool)

(declare-fun e!2877453 () Bool)

(assert (=> b!4613046 (=> (not res!1932040) (not e!2877453))))

(assert (=> b!4613046 (= res!1932040 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) lambda!188792))))

(declare-fun call!321568 () Bool)

(declare-fun bm!321562 () Bool)

(declare-fun c!789916 () Bool)

(assert (=> bm!321562 (= call!321568 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) (ite c!789916 lambda!188789 lambda!188790)))))

(declare-fun b!4613047 () Bool)

(assert (=> b!4613047 (= e!2877453 (invariantList!1157 (toList!4808 lt!1768339)))))

(declare-fun bm!321563 () Bool)

(declare-fun call!321567 () Unit!109496)

(assert (=> bm!321563 (= call!321567 (lemmaContainsAllItsOwnKeys!459 (ListMap!4110 Nil!51315)))))

(declare-fun b!4613048 () Bool)

(declare-fun e!2877454 () Bool)

(assert (=> b!4613048 (= e!2877454 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) lambda!188791))))

(assert (=> d!1453254 e!2877453))

(declare-fun res!1932041 () Bool)

(assert (=> d!1453254 (=> (not res!1932041) (not e!2877453))))

(assert (=> d!1453254 (= res!1932041 (forall!10718 lt!1767994 lambda!188792))))

(declare-fun e!2877455 () ListMap!4109)

(assert (=> d!1453254 (= lt!1768339 e!2877455)))

(assert (=> d!1453254 (= c!789916 ((_ is Nil!51315) lt!1767994))))

(assert (=> d!1453254 (noDuplicateKeys!1420 lt!1767994)))

(assert (=> d!1453254 (= (addToMapMapFromBucket!881 lt!1767994 (ListMap!4110 Nil!51315)) lt!1768339)))

(assert (=> b!4613049 (= e!2877455 (ListMap!4110 Nil!51315))))

(declare-fun lt!1768331 () Unit!109496)

(assert (=> b!4613049 (= lt!1768331 call!321567)))

(assert (=> b!4613049 call!321568))

(declare-fun lt!1768342 () Unit!109496)

(assert (=> b!4613049 (= lt!1768342 lt!1768331)))

(declare-fun call!321569 () Bool)

(assert (=> b!4613049 call!321569))

(declare-fun lt!1768324 () Unit!109496)

(declare-fun Unit!109577 () Unit!109496)

(assert (=> b!4613049 (= lt!1768324 Unit!109577)))

(assert (=> b!4613050 (= e!2877455 lt!1768329)))

(declare-fun lt!1768327 () ListMap!4109)

(assert (=> b!4613050 (= lt!1768327 (+!1805 (ListMap!4110 Nil!51315) (h!57317 lt!1767994)))))

(assert (=> b!4613050 (= lt!1768329 (addToMapMapFromBucket!881 (t!358433 lt!1767994) (+!1805 (ListMap!4110 Nil!51315) (h!57317 lt!1767994))))))

(declare-fun lt!1768343 () Unit!109496)

(assert (=> b!4613050 (= lt!1768343 call!321567)))

(assert (=> b!4613050 call!321568))

(declare-fun lt!1768328 () Unit!109496)

(assert (=> b!4613050 (= lt!1768328 lt!1768343)))

(assert (=> b!4613050 call!321569))

(declare-fun lt!1768330 () Unit!109496)

(declare-fun Unit!109578 () Unit!109496)

(assert (=> b!4613050 (= lt!1768330 Unit!109578)))

(assert (=> b!4613050 (forall!10718 (t!358433 lt!1767994) lambda!188791)))

(declare-fun lt!1768336 () Unit!109496)

(declare-fun Unit!109579 () Unit!109496)

(assert (=> b!4613050 (= lt!1768336 Unit!109579)))

(declare-fun lt!1768335 () Unit!109496)

(declare-fun Unit!109580 () Unit!109496)

(assert (=> b!4613050 (= lt!1768335 Unit!109580)))

(declare-fun lt!1768340 () Unit!109496)

(assert (=> b!4613050 (= lt!1768340 (forallContained!2951 (toList!4808 lt!1768327) lambda!188791 (h!57317 lt!1767994)))))

(assert (=> b!4613050 (contains!14286 lt!1768327 (_1!29357 (h!57317 lt!1767994)))))

(declare-fun lt!1768326 () Unit!109496)

(declare-fun Unit!109581 () Unit!109496)

(assert (=> b!4613050 (= lt!1768326 Unit!109581)))

(assert (=> b!4613050 (contains!14286 lt!1768329 (_1!29357 (h!57317 lt!1767994)))))

(declare-fun lt!1768332 () Unit!109496)

(declare-fun Unit!109582 () Unit!109496)

(assert (=> b!4613050 (= lt!1768332 Unit!109582)))

(assert (=> b!4613050 (forall!10718 lt!1767994 lambda!188791)))

(declare-fun lt!1768337 () Unit!109496)

(declare-fun Unit!109583 () Unit!109496)

(assert (=> b!4613050 (= lt!1768337 Unit!109583)))

(assert (=> b!4613050 (forall!10718 (toList!4808 lt!1768327) lambda!188791)))

(declare-fun lt!1768338 () Unit!109496)

(declare-fun Unit!109584 () Unit!109496)

(assert (=> b!4613050 (= lt!1768338 Unit!109584)))

(declare-fun lt!1768341 () Unit!109496)

(declare-fun Unit!109585 () Unit!109496)

(assert (=> b!4613050 (= lt!1768341 Unit!109585)))

(declare-fun lt!1768334 () Unit!109496)

(assert (=> b!4613050 (= lt!1768334 (addForallContainsKeyThenBeforeAdding!458 (ListMap!4110 Nil!51315) lt!1768329 (_1!29357 (h!57317 lt!1767994)) (_2!29357 (h!57317 lt!1767994))))))

(assert (=> b!4613050 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) lambda!188791)))

(declare-fun lt!1768323 () Unit!109496)

(assert (=> b!4613050 (= lt!1768323 lt!1768334)))

(assert (=> b!4613050 (forall!10718 (toList!4808 (ListMap!4110 Nil!51315)) lambda!188791)))

(declare-fun lt!1768325 () Unit!109496)

(declare-fun Unit!109586 () Unit!109496)

(assert (=> b!4613050 (= lt!1768325 Unit!109586)))

(declare-fun res!1932042 () Bool)

(assert (=> b!4613050 (= res!1932042 (forall!10718 lt!1767994 lambda!188791))))

(assert (=> b!4613050 (=> (not res!1932042) (not e!2877454))))

(assert (=> b!4613050 e!2877454))

(declare-fun lt!1768333 () Unit!109496)

(declare-fun Unit!109587 () Unit!109496)

(assert (=> b!4613050 (= lt!1768333 Unit!109587)))

(declare-fun bm!321564 () Bool)

(assert (=> bm!321564 (= call!321569 (forall!10718 (ite c!789916 (toList!4808 (ListMap!4110 Nil!51315)) (toList!4808 lt!1768327)) (ite c!789916 lambda!188789 lambda!188791)))))

(assert (= (and d!1453254 c!789916) b!4613049))

(assert (= (and d!1453254 (not c!789916)) b!4613050))

(assert (= (and b!4613050 res!1932042) b!4613048))

(assert (= (or b!4613049 b!4613050) bm!321563))

(assert (= (or b!4613049 b!4613050) bm!321564))

(assert (= (or b!4613049 b!4613050) bm!321562))

(assert (= (and d!1453254 res!1932041) b!4613046))

(assert (= (and b!4613046 res!1932040) b!4613047))

(declare-fun m!5444615 () Bool)

(assert (=> b!4613046 m!5444615))

(declare-fun m!5444617 () Bool)

(assert (=> b!4613047 m!5444617))

(declare-fun m!5444619 () Bool)

(assert (=> bm!321562 m!5444619))

(declare-fun m!5444621 () Bool)

(assert (=> bm!321564 m!5444621))

(declare-fun m!5444623 () Bool)

(assert (=> b!4613048 m!5444623))

(declare-fun m!5444625 () Bool)

(assert (=> b!4613050 m!5444625))

(declare-fun m!5444627 () Bool)

(assert (=> b!4613050 m!5444627))

(declare-fun m!5444629 () Bool)

(assert (=> b!4613050 m!5444629))

(assert (=> b!4613050 m!5444623))

(declare-fun m!5444631 () Bool)

(assert (=> b!4613050 m!5444631))

(declare-fun m!5444633 () Bool)

(assert (=> b!4613050 m!5444633))

(declare-fun m!5444635 () Bool)

(assert (=> b!4613050 m!5444635))

(assert (=> b!4613050 m!5444633))

(declare-fun m!5444637 () Bool)

(assert (=> b!4613050 m!5444637))

(assert (=> b!4613050 m!5444623))

(assert (=> b!4613050 m!5444627))

(declare-fun m!5444639 () Bool)

(assert (=> b!4613050 m!5444639))

(declare-fun m!5444641 () Bool)

(assert (=> b!4613050 m!5444641))

(declare-fun m!5444643 () Bool)

(assert (=> d!1453254 m!5444643))

(assert (=> d!1453254 m!5444563))

(assert (=> bm!321563 m!5444423))

(assert (=> b!4612864 d!1453254))

(declare-fun d!1453256 () Bool)

(declare-fun res!1932047 () Bool)

(declare-fun e!2877460 () Bool)

(assert (=> d!1453256 (=> res!1932047 e!2877460)))

(assert (=> d!1453256 (= res!1932047 ((_ is Nil!51316) lt!1767993))))

(assert (=> d!1453256 (= (forall!10716 lt!1767993 lambda!188682) e!2877460)))

(declare-fun b!4613055 () Bool)

(declare-fun e!2877461 () Bool)

(assert (=> b!4613055 (= e!2877460 e!2877461)))

(declare-fun res!1932048 () Bool)

(assert (=> b!4613055 (=> (not res!1932048) (not e!2877461))))

(declare-fun dynLambda!21451 (Int tuple2!52128) Bool)

(assert (=> b!4613055 (= res!1932048 (dynLambda!21451 lambda!188682 (h!57318 lt!1767993)))))

(declare-fun b!4613056 () Bool)

(assert (=> b!4613056 (= e!2877461 (forall!10716 (t!358434 lt!1767993) lambda!188682))))

(assert (= (and d!1453256 (not res!1932047)) b!4613055))

(assert (= (and b!4613055 res!1932048) b!4613056))

(declare-fun b_lambda!170489 () Bool)

(assert (=> (not b_lambda!170489) (not b!4613055)))

(declare-fun m!5444645 () Bool)

(assert (=> b!4613055 m!5444645))

(declare-fun m!5444647 () Bool)

(assert (=> b!4613056 m!5444647))

(assert (=> b!4612865 d!1453256))

(declare-fun b!4613075 () Bool)

(declare-fun e!2877478 () Unit!109496)

(declare-fun e!2877474 () Unit!109496)

(assert (=> b!4613075 (= e!2877478 e!2877474)))

(declare-fun c!789923 () Bool)

(declare-fun call!321572 () Bool)

(assert (=> b!4613075 (= c!789923 call!321572)))

(declare-fun bm!321567 () Bool)

(declare-datatypes ((List!51442 0))(
  ( (Nil!51318) (Cons!51318 (h!57322 K!12700) (t!358438 List!51442)) )
))
(declare-fun e!2877479 () List!51442)

(declare-fun contains!14290 (List!51442 K!12700) Bool)

(assert (=> bm!321567 (= call!321572 (contains!14290 e!2877479 key!4968))))

(declare-fun c!789924 () Bool)

(declare-fun c!789925 () Bool)

(assert (=> bm!321567 (= c!789924 c!789925)))

(declare-fun b!4613076 () Bool)

(declare-fun getKeysList!608 (List!51439) List!51442)

(assert (=> b!4613076 (= e!2877479 (getKeysList!608 (toList!4808 lt!1767991)))))

(declare-fun d!1453258 () Bool)

(declare-fun e!2877476 () Bool)

(assert (=> d!1453258 e!2877476))

(declare-fun res!1932057 () Bool)

(assert (=> d!1453258 (=> res!1932057 e!2877476)))

(declare-fun e!2877477 () Bool)

(assert (=> d!1453258 (= res!1932057 e!2877477)))

(declare-fun res!1932055 () Bool)

(assert (=> d!1453258 (=> (not res!1932055) (not e!2877477))))

(declare-fun lt!1768367 () Bool)

(assert (=> d!1453258 (= res!1932055 (not lt!1768367))))

(declare-fun lt!1768366 () Bool)

(assert (=> d!1453258 (= lt!1768367 lt!1768366)))

(declare-fun lt!1768365 () Unit!109496)

(assert (=> d!1453258 (= lt!1768365 e!2877478)))

(assert (=> d!1453258 (= c!789925 lt!1768366)))

(declare-fun containsKey!2292 (List!51439 K!12700) Bool)

(assert (=> d!1453258 (= lt!1768366 (containsKey!2292 (toList!4808 lt!1767991) key!4968))))

(assert (=> d!1453258 (= (contains!14286 lt!1767991 key!4968) lt!1768367)))

(declare-fun b!4613077 () Bool)

(declare-fun keys!18021 (ListMap!4109) List!51442)

(assert (=> b!4613077 (= e!2877477 (not (contains!14290 (keys!18021 lt!1767991) key!4968)))))

(declare-fun b!4613078 () Bool)

(declare-fun Unit!109599 () Unit!109496)

(assert (=> b!4613078 (= e!2877474 Unit!109599)))

(declare-fun b!4613079 () Bool)

(declare-fun e!2877475 () Bool)

(assert (=> b!4613079 (= e!2877475 (contains!14290 (keys!18021 lt!1767991) key!4968))))

(declare-fun b!4613080 () Bool)

(declare-fun lt!1768364 () Unit!109496)

(assert (=> b!4613080 (= e!2877478 lt!1768364)))

(declare-fun lt!1768363 () Unit!109496)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1276 (List!51439 K!12700) Unit!109496)

(assert (=> b!4613080 (= lt!1768363 (lemmaContainsKeyImpliesGetValueByKeyDefined!1276 (toList!4808 lt!1767991) key!4968))))

(declare-fun isDefined!8725 (Option!11460) Bool)

(assert (=> b!4613080 (isDefined!8725 (getValueByKey!1374 (toList!4808 lt!1767991) key!4968))))

(declare-fun lt!1768362 () Unit!109496)

(assert (=> b!4613080 (= lt!1768362 lt!1768363)))

(declare-fun lemmaInListThenGetKeysListContains!603 (List!51439 K!12700) Unit!109496)

(assert (=> b!4613080 (= lt!1768364 (lemmaInListThenGetKeysListContains!603 (toList!4808 lt!1767991) key!4968))))

(assert (=> b!4613080 call!321572))

(declare-fun b!4613081 () Bool)

(assert (=> b!4613081 (= e!2877476 e!2877475)))

(declare-fun res!1932056 () Bool)

(assert (=> b!4613081 (=> (not res!1932056) (not e!2877475))))

(assert (=> b!4613081 (= res!1932056 (isDefined!8725 (getValueByKey!1374 (toList!4808 lt!1767991) key!4968)))))

(declare-fun b!4613082 () Bool)

(assert (=> b!4613082 (= e!2877479 (keys!18021 lt!1767991))))

(declare-fun b!4613083 () Bool)

(assert (=> b!4613083 false))

(declare-fun lt!1768360 () Unit!109496)

(declare-fun lt!1768361 () Unit!109496)

(assert (=> b!4613083 (= lt!1768360 lt!1768361)))

(assert (=> b!4613083 (containsKey!2292 (toList!4808 lt!1767991) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!607 (List!51439 K!12700) Unit!109496)

(assert (=> b!4613083 (= lt!1768361 (lemmaInGetKeysListThenContainsKey!607 (toList!4808 lt!1767991) key!4968))))

(declare-fun Unit!109600 () Unit!109496)

(assert (=> b!4613083 (= e!2877474 Unit!109600)))

(assert (= (and d!1453258 c!789925) b!4613080))

(assert (= (and d!1453258 (not c!789925)) b!4613075))

(assert (= (and b!4613075 c!789923) b!4613083))

(assert (= (and b!4613075 (not c!789923)) b!4613078))

(assert (= (or b!4613080 b!4613075) bm!321567))

(assert (= (and bm!321567 c!789924) b!4613076))

(assert (= (and bm!321567 (not c!789924)) b!4613082))

(assert (= (and d!1453258 res!1932055) b!4613077))

(assert (= (and d!1453258 (not res!1932057)) b!4613081))

(assert (= (and b!4613081 res!1932056) b!4613079))

(declare-fun m!5444649 () Bool)

(assert (=> b!4613081 m!5444649))

(assert (=> b!4613081 m!5444649))

(declare-fun m!5444651 () Bool)

(assert (=> b!4613081 m!5444651))

(declare-fun m!5444653 () Bool)

(assert (=> b!4613076 m!5444653))

(declare-fun m!5444655 () Bool)

(assert (=> b!4613080 m!5444655))

(assert (=> b!4613080 m!5444649))

(assert (=> b!4613080 m!5444649))

(assert (=> b!4613080 m!5444651))

(declare-fun m!5444657 () Bool)

(assert (=> b!4613080 m!5444657))

(declare-fun m!5444659 () Bool)

(assert (=> bm!321567 m!5444659))

(declare-fun m!5444661 () Bool)

(assert (=> b!4613083 m!5444661))

(declare-fun m!5444663 () Bool)

(assert (=> b!4613083 m!5444663))

(declare-fun m!5444665 () Bool)

(assert (=> b!4613082 m!5444665))

(assert (=> b!4613079 m!5444665))

(assert (=> b!4613079 m!5444665))

(declare-fun m!5444667 () Bool)

(assert (=> b!4613079 m!5444667))

(assert (=> d!1453258 m!5444661))

(assert (=> b!4613077 m!5444665))

(assert (=> b!4613077 m!5444665))

(assert (=> b!4613077 m!5444667))

(assert (=> b!4612854 d!1453258))

(declare-fun bs!1016510 () Bool)

(declare-fun d!1453260 () Bool)

(assert (= bs!1016510 (and d!1453260 b!4612865)))

(declare-fun lambda!188793 () Int)

(assert (=> bs!1016510 (= lambda!188793 lambda!188682)))

(declare-fun bs!1016511 () Bool)

(assert (= bs!1016511 (and d!1453260 d!1453248)))

(assert (=> bs!1016511 (= lambda!188793 lambda!188783)))

(declare-fun bs!1016512 () Bool)

(assert (= bs!1016512 (and d!1453260 d!1453250)))

(assert (=> bs!1016512 (= lambda!188793 lambda!188784)))

(declare-fun lt!1768368 () ListMap!4109)

(assert (=> d!1453260 (invariantList!1157 (toList!4808 lt!1768368))))

(declare-fun e!2877480 () ListMap!4109)

(assert (=> d!1453260 (= lt!1768368 e!2877480)))

(declare-fun c!789926 () Bool)

(assert (=> d!1453260 (= c!789926 ((_ is Cons!51316) (Cons!51316 (tuple2!52129 hash!414 oldBucket!40) Nil!51316)))))

(assert (=> d!1453260 (forall!10716 (Cons!51316 (tuple2!52129 hash!414 oldBucket!40) Nil!51316) lambda!188793)))

(assert (=> d!1453260 (= (extractMap!1476 (Cons!51316 (tuple2!52129 hash!414 oldBucket!40) Nil!51316)) lt!1768368)))

(declare-fun b!4613084 () Bool)

(assert (=> b!4613084 (= e!2877480 (addToMapMapFromBucket!881 (_2!29358 (h!57318 (Cons!51316 (tuple2!52129 hash!414 oldBucket!40) Nil!51316))) (extractMap!1476 (t!358434 (Cons!51316 (tuple2!52129 hash!414 oldBucket!40) Nil!51316)))))))

(declare-fun b!4613085 () Bool)

(assert (=> b!4613085 (= e!2877480 (ListMap!4110 Nil!51315))))

(assert (= (and d!1453260 c!789926) b!4613084))

(assert (= (and d!1453260 (not c!789926)) b!4613085))

(declare-fun m!5444669 () Bool)

(assert (=> d!1453260 m!5444669))

(declare-fun m!5444671 () Bool)

(assert (=> d!1453260 m!5444671))

(declare-fun m!5444673 () Bool)

(assert (=> b!4613084 m!5444673))

(assert (=> b!4613084 m!5444673))

(declare-fun m!5444675 () Bool)

(assert (=> b!4613084 m!5444675))

(assert (=> b!4612854 d!1453260))

(declare-fun d!1453262 () Bool)

(declare-fun res!1932062 () Bool)

(declare-fun e!2877485 () Bool)

(assert (=> d!1453262 (=> res!1932062 e!2877485)))

(assert (=> d!1453262 (= res!1932062 (and ((_ is Cons!51315) lt!1767994) (= (_1!29357 (h!57317 lt!1767994)) key!4968)))))

(assert (=> d!1453262 (= (containsKey!2290 lt!1767994 key!4968) e!2877485)))

(declare-fun b!4613090 () Bool)

(declare-fun e!2877486 () Bool)

(assert (=> b!4613090 (= e!2877485 e!2877486)))

(declare-fun res!1932063 () Bool)

(assert (=> b!4613090 (=> (not res!1932063) (not e!2877486))))

(assert (=> b!4613090 (= res!1932063 ((_ is Cons!51315) lt!1767994))))

(declare-fun b!4613091 () Bool)

(assert (=> b!4613091 (= e!2877486 (containsKey!2290 (t!358433 lt!1767994) key!4968))))

(assert (= (and d!1453262 (not res!1932062)) b!4613090))

(assert (= (and b!4613090 res!1932063) b!4613091))

(declare-fun m!5444677 () Bool)

(assert (=> b!4613091 m!5444677))

(assert (=> b!4612855 d!1453262))

(declare-fun bs!1016513 () Bool)

(declare-fun b!4613095 () Bool)

(assert (= bs!1016513 (and b!4613095 d!1453246)))

(declare-fun lambda!188794 () Int)

(assert (=> bs!1016513 (not (= lambda!188794 lambda!188780))))

(declare-fun bs!1016514 () Bool)

(assert (= bs!1016514 (and b!4613095 d!1453182)))

(assert (=> bs!1016514 (= (= lt!1767990 lt!1768210) (= lambda!188794 lambda!188763))))

(declare-fun bs!1016515 () Bool)

(assert (= bs!1016515 (and b!4613095 b!4613050)))

(assert (=> bs!1016515 (= (= lt!1767990 (ListMap!4110 Nil!51315)) (= lambda!188794 lambda!188790))))

(declare-fun bs!1016516 () Bool)

(assert (= bs!1016516 (and b!4613095 b!4612993)))

(assert (=> bs!1016516 (= (= lt!1767990 lt!1768200) (= lambda!188794 lambda!188761))))

(declare-fun bs!1016517 () Bool)

(assert (= bs!1016517 (and b!4613095 b!4613045)))

(assert (=> bs!1016517 (= (= lt!1767990 lt!1768308) (= lambda!188794 lambda!188787))))

(declare-fun bs!1016518 () Bool)

(assert (= bs!1016518 (and b!4613095 d!1453244)))

(assert (=> bs!1016518 (not (= lambda!188794 lambda!188779))))

(declare-fun bs!1016519 () Bool)

(assert (= bs!1016519 (and b!4613095 b!4612992)))

(assert (=> bs!1016519 (= (= lt!1767990 (ListMap!4110 Nil!51315)) (= lambda!188794 lambda!188759))))

(assert (=> bs!1016515 (= (= lt!1767990 lt!1768329) (= lambda!188794 lambda!188791))))

(declare-fun bs!1016520 () Bool)

(assert (= bs!1016520 (and b!4613095 d!1453226)))

(assert (=> bs!1016520 (= (= lt!1767990 lt!1768286) (= lambda!188794 lambda!188775))))

(declare-fun bs!1016521 () Bool)

(assert (= bs!1016521 (and b!4613095 b!4613044)))

(assert (=> bs!1016521 (= (= lt!1767990 (ListMap!4110 Nil!51315)) (= lambda!188794 lambda!188785))))

(assert (=> bs!1016516 (= (= lt!1767990 (ListMap!4110 Nil!51315)) (= lambda!188794 lambda!188760))))

(declare-fun bs!1016522 () Bool)

(assert (= bs!1016522 (and b!4613095 d!1453252)))

(assert (=> bs!1016522 (= (= lt!1767990 lt!1768318) (= lambda!188794 lambda!188788))))

(declare-fun bs!1016523 () Bool)

(assert (= bs!1016523 (and b!4613095 b!4613017)))

(assert (=> bs!1016523 (= (= lt!1767990 (ListMap!4110 Nil!51315)) (= lambda!188794 lambda!188770))))

(declare-fun bs!1016524 () Bool)

(assert (= bs!1016524 (and b!4613095 d!1453254)))

(assert (=> bs!1016524 (= (= lt!1767990 lt!1768339) (= lambda!188794 lambda!188792))))

(assert (=> bs!1016517 (= (= lt!1767990 (ListMap!4110 Nil!51315)) (= lambda!188794 lambda!188786))))

(declare-fun bs!1016525 () Bool)

(assert (= bs!1016525 (and b!4613095 b!4613049)))

(assert (=> bs!1016525 (= (= lt!1767990 (ListMap!4110 Nil!51315)) (= lambda!188794 lambda!188789))))

(declare-fun bs!1016526 () Bool)

(assert (= bs!1016526 (and b!4613095 b!4613018)))

(assert (=> bs!1016526 (= (= lt!1767990 (ListMap!4110 Nil!51315)) (= lambda!188794 lambda!188772))))

(assert (=> bs!1016526 (= (= lt!1767990 lt!1768276) (= lambda!188794 lambda!188773))))

(assert (=> b!4613095 true))

(declare-fun bs!1016527 () Bool)

(declare-fun b!4613096 () Bool)

(assert (= bs!1016527 (and b!4613096 d!1453246)))

(declare-fun lambda!188795 () Int)

(assert (=> bs!1016527 (not (= lambda!188795 lambda!188780))))

(declare-fun bs!1016528 () Bool)

(assert (= bs!1016528 (and b!4613096 d!1453182)))

(assert (=> bs!1016528 (= (= lt!1767990 lt!1768210) (= lambda!188795 lambda!188763))))

(declare-fun bs!1016529 () Bool)

(assert (= bs!1016529 (and b!4613096 b!4613050)))

(assert (=> bs!1016529 (= (= lt!1767990 (ListMap!4110 Nil!51315)) (= lambda!188795 lambda!188790))))

(declare-fun bs!1016530 () Bool)

(assert (= bs!1016530 (and b!4613096 b!4612993)))

(assert (=> bs!1016530 (= (= lt!1767990 lt!1768200) (= lambda!188795 lambda!188761))))

(declare-fun bs!1016531 () Bool)

(assert (= bs!1016531 (and b!4613096 b!4613045)))

(assert (=> bs!1016531 (= (= lt!1767990 lt!1768308) (= lambda!188795 lambda!188787))))

(declare-fun bs!1016532 () Bool)

(assert (= bs!1016532 (and b!4613096 d!1453244)))

(assert (=> bs!1016532 (not (= lambda!188795 lambda!188779))))

(declare-fun bs!1016533 () Bool)

(assert (= bs!1016533 (and b!4613096 b!4612992)))

(assert (=> bs!1016533 (= (= lt!1767990 (ListMap!4110 Nil!51315)) (= lambda!188795 lambda!188759))))

(declare-fun bs!1016534 () Bool)

(assert (= bs!1016534 (and b!4613096 b!4613095)))

(assert (=> bs!1016534 (= lambda!188795 lambda!188794)))

(assert (=> bs!1016529 (= (= lt!1767990 lt!1768329) (= lambda!188795 lambda!188791))))

(declare-fun bs!1016535 () Bool)

(assert (= bs!1016535 (and b!4613096 d!1453226)))

(assert (=> bs!1016535 (= (= lt!1767990 lt!1768286) (= lambda!188795 lambda!188775))))

(declare-fun bs!1016536 () Bool)

(assert (= bs!1016536 (and b!4613096 b!4613044)))

(assert (=> bs!1016536 (= (= lt!1767990 (ListMap!4110 Nil!51315)) (= lambda!188795 lambda!188785))))

(assert (=> bs!1016530 (= (= lt!1767990 (ListMap!4110 Nil!51315)) (= lambda!188795 lambda!188760))))

(declare-fun bs!1016537 () Bool)

(assert (= bs!1016537 (and b!4613096 d!1453252)))

(assert (=> bs!1016537 (= (= lt!1767990 lt!1768318) (= lambda!188795 lambda!188788))))

(declare-fun bs!1016538 () Bool)

(assert (= bs!1016538 (and b!4613096 b!4613017)))

(assert (=> bs!1016538 (= (= lt!1767990 (ListMap!4110 Nil!51315)) (= lambda!188795 lambda!188770))))

(declare-fun bs!1016539 () Bool)

(assert (= bs!1016539 (and b!4613096 d!1453254)))

(assert (=> bs!1016539 (= (= lt!1767990 lt!1768339) (= lambda!188795 lambda!188792))))

(assert (=> bs!1016531 (= (= lt!1767990 (ListMap!4110 Nil!51315)) (= lambda!188795 lambda!188786))))

(declare-fun bs!1016540 () Bool)

(assert (= bs!1016540 (and b!4613096 b!4613049)))

(assert (=> bs!1016540 (= (= lt!1767990 (ListMap!4110 Nil!51315)) (= lambda!188795 lambda!188789))))

(declare-fun bs!1016541 () Bool)

(assert (= bs!1016541 (and b!4613096 b!4613018)))

(assert (=> bs!1016541 (= (= lt!1767990 (ListMap!4110 Nil!51315)) (= lambda!188795 lambda!188772))))

(assert (=> bs!1016541 (= (= lt!1767990 lt!1768276) (= lambda!188795 lambda!188773))))

(assert (=> b!4613096 true))

(declare-fun lambda!188796 () Int)

(assert (=> bs!1016527 (not (= lambda!188796 lambda!188780))))

(declare-fun lt!1768375 () ListMap!4109)

(assert (=> bs!1016528 (= (= lt!1768375 lt!1768210) (= lambda!188796 lambda!188763))))

(assert (=> bs!1016529 (= (= lt!1768375 (ListMap!4110 Nil!51315)) (= lambda!188796 lambda!188790))))

(assert (=> bs!1016530 (= (= lt!1768375 lt!1768200) (= lambda!188796 lambda!188761))))

(assert (=> bs!1016531 (= (= lt!1768375 lt!1768308) (= lambda!188796 lambda!188787))))

(assert (=> bs!1016532 (not (= lambda!188796 lambda!188779))))

(assert (=> bs!1016533 (= (= lt!1768375 (ListMap!4110 Nil!51315)) (= lambda!188796 lambda!188759))))

(assert (=> bs!1016534 (= (= lt!1768375 lt!1767990) (= lambda!188796 lambda!188794))))

(assert (=> bs!1016529 (= (= lt!1768375 lt!1768329) (= lambda!188796 lambda!188791))))

(assert (=> bs!1016535 (= (= lt!1768375 lt!1768286) (= lambda!188796 lambda!188775))))

(assert (=> bs!1016536 (= (= lt!1768375 (ListMap!4110 Nil!51315)) (= lambda!188796 lambda!188785))))

(assert (=> bs!1016530 (= (= lt!1768375 (ListMap!4110 Nil!51315)) (= lambda!188796 lambda!188760))))

(assert (=> bs!1016537 (= (= lt!1768375 lt!1768318) (= lambda!188796 lambda!188788))))

(assert (=> bs!1016538 (= (= lt!1768375 (ListMap!4110 Nil!51315)) (= lambda!188796 lambda!188770))))

(assert (=> bs!1016539 (= (= lt!1768375 lt!1768339) (= lambda!188796 lambda!188792))))

(assert (=> bs!1016531 (= (= lt!1768375 (ListMap!4110 Nil!51315)) (= lambda!188796 lambda!188786))))

(assert (=> bs!1016540 (= (= lt!1768375 (ListMap!4110 Nil!51315)) (= lambda!188796 lambda!188789))))

(assert (=> bs!1016541 (= (= lt!1768375 (ListMap!4110 Nil!51315)) (= lambda!188796 lambda!188772))))

(assert (=> bs!1016541 (= (= lt!1768375 lt!1768276) (= lambda!188796 lambda!188773))))

(assert (=> b!4613096 (= (= lt!1768375 lt!1767990) (= lambda!188796 lambda!188795))))

(assert (=> b!4613096 true))

(declare-fun bs!1016542 () Bool)

(declare-fun d!1453264 () Bool)

(assert (= bs!1016542 (and d!1453264 d!1453246)))

(declare-fun lambda!188797 () Int)

(assert (=> bs!1016542 (not (= lambda!188797 lambda!188780))))

(declare-fun bs!1016543 () Bool)

(assert (= bs!1016543 (and d!1453264 d!1453182)))

(declare-fun lt!1768385 () ListMap!4109)

(assert (=> bs!1016543 (= (= lt!1768385 lt!1768210) (= lambda!188797 lambda!188763))))

(declare-fun bs!1016544 () Bool)

(assert (= bs!1016544 (and d!1453264 b!4613050)))

(assert (=> bs!1016544 (= (= lt!1768385 (ListMap!4110 Nil!51315)) (= lambda!188797 lambda!188790))))

(declare-fun bs!1016545 () Bool)

(assert (= bs!1016545 (and d!1453264 b!4612993)))

(assert (=> bs!1016545 (= (= lt!1768385 lt!1768200) (= lambda!188797 lambda!188761))))

(declare-fun bs!1016546 () Bool)

(assert (= bs!1016546 (and d!1453264 b!4613045)))

(assert (=> bs!1016546 (= (= lt!1768385 lt!1768308) (= lambda!188797 lambda!188787))))

(declare-fun bs!1016547 () Bool)

(assert (= bs!1016547 (and d!1453264 d!1453244)))

(assert (=> bs!1016547 (not (= lambda!188797 lambda!188779))))

(declare-fun bs!1016548 () Bool)

(assert (= bs!1016548 (and d!1453264 b!4612992)))

(assert (=> bs!1016548 (= (= lt!1768385 (ListMap!4110 Nil!51315)) (= lambda!188797 lambda!188759))))

(declare-fun bs!1016549 () Bool)

(assert (= bs!1016549 (and d!1453264 b!4613096)))

(assert (=> bs!1016549 (= (= lt!1768385 lt!1768375) (= lambda!188797 lambda!188796))))

(declare-fun bs!1016550 () Bool)

(assert (= bs!1016550 (and d!1453264 b!4613095)))

(assert (=> bs!1016550 (= (= lt!1768385 lt!1767990) (= lambda!188797 lambda!188794))))

(assert (=> bs!1016544 (= (= lt!1768385 lt!1768329) (= lambda!188797 lambda!188791))))

(declare-fun bs!1016551 () Bool)

(assert (= bs!1016551 (and d!1453264 d!1453226)))

(assert (=> bs!1016551 (= (= lt!1768385 lt!1768286) (= lambda!188797 lambda!188775))))

(declare-fun bs!1016552 () Bool)

(assert (= bs!1016552 (and d!1453264 b!4613044)))

(assert (=> bs!1016552 (= (= lt!1768385 (ListMap!4110 Nil!51315)) (= lambda!188797 lambda!188785))))

(assert (=> bs!1016545 (= (= lt!1768385 (ListMap!4110 Nil!51315)) (= lambda!188797 lambda!188760))))

(declare-fun bs!1016553 () Bool)

(assert (= bs!1016553 (and d!1453264 d!1453252)))

(assert (=> bs!1016553 (= (= lt!1768385 lt!1768318) (= lambda!188797 lambda!188788))))

(declare-fun bs!1016554 () Bool)

(assert (= bs!1016554 (and d!1453264 b!4613017)))

(assert (=> bs!1016554 (= (= lt!1768385 (ListMap!4110 Nil!51315)) (= lambda!188797 lambda!188770))))

(declare-fun bs!1016555 () Bool)

(assert (= bs!1016555 (and d!1453264 d!1453254)))

(assert (=> bs!1016555 (= (= lt!1768385 lt!1768339) (= lambda!188797 lambda!188792))))

(assert (=> bs!1016546 (= (= lt!1768385 (ListMap!4110 Nil!51315)) (= lambda!188797 lambda!188786))))

(declare-fun bs!1016556 () Bool)

(assert (= bs!1016556 (and d!1453264 b!4613049)))

(assert (=> bs!1016556 (= (= lt!1768385 (ListMap!4110 Nil!51315)) (= lambda!188797 lambda!188789))))

(declare-fun bs!1016557 () Bool)

(assert (= bs!1016557 (and d!1453264 b!4613018)))

(assert (=> bs!1016557 (= (= lt!1768385 (ListMap!4110 Nil!51315)) (= lambda!188797 lambda!188772))))

(assert (=> bs!1016557 (= (= lt!1768385 lt!1768276) (= lambda!188797 lambda!188773))))

(assert (=> bs!1016549 (= (= lt!1768385 lt!1767990) (= lambda!188797 lambda!188795))))

(assert (=> d!1453264 true))

(declare-fun b!4613092 () Bool)

(declare-fun res!1932064 () Bool)

(declare-fun e!2877487 () Bool)

(assert (=> b!4613092 (=> (not res!1932064) (not e!2877487))))

(assert (=> b!4613092 (= res!1932064 (forall!10718 (toList!4808 lt!1767990) lambda!188797))))

(declare-fun call!321574 () Bool)

(declare-fun c!789927 () Bool)

(declare-fun bm!321568 () Bool)

(assert (=> bm!321568 (= call!321574 (forall!10718 (toList!4808 lt!1767990) (ite c!789927 lambda!188794 lambda!188795)))))

(declare-fun b!4613093 () Bool)

(assert (=> b!4613093 (= e!2877487 (invariantList!1157 (toList!4808 lt!1768385)))))

(declare-fun bm!321569 () Bool)

(declare-fun call!321573 () Unit!109496)

(assert (=> bm!321569 (= call!321573 (lemmaContainsAllItsOwnKeys!459 lt!1767990))))

(declare-fun b!4613094 () Bool)

(declare-fun e!2877488 () Bool)

(assert (=> b!4613094 (= e!2877488 (forall!10718 (toList!4808 lt!1767990) lambda!188796))))

(assert (=> d!1453264 e!2877487))

(declare-fun res!1932065 () Bool)

(assert (=> d!1453264 (=> (not res!1932065) (not e!2877487))))

(assert (=> d!1453264 (= res!1932065 (forall!10718 oldBucket!40 lambda!188797))))

(declare-fun e!2877489 () ListMap!4109)

(assert (=> d!1453264 (= lt!1768385 e!2877489)))

(assert (=> d!1453264 (= c!789927 ((_ is Nil!51315) oldBucket!40))))

(assert (=> d!1453264 (noDuplicateKeys!1420 oldBucket!40)))

(assert (=> d!1453264 (= (addToMapMapFromBucket!881 oldBucket!40 lt!1767990) lt!1768385)))

(assert (=> b!4613095 (= e!2877489 lt!1767990)))

(declare-fun lt!1768377 () Unit!109496)

(assert (=> b!4613095 (= lt!1768377 call!321573)))

(assert (=> b!4613095 call!321574))

(declare-fun lt!1768388 () Unit!109496)

(assert (=> b!4613095 (= lt!1768388 lt!1768377)))

(declare-fun call!321575 () Bool)

(assert (=> b!4613095 call!321575))

(declare-fun lt!1768370 () Unit!109496)

(declare-fun Unit!109601 () Unit!109496)

(assert (=> b!4613095 (= lt!1768370 Unit!109601)))

(assert (=> b!4613096 (= e!2877489 lt!1768375)))

(declare-fun lt!1768373 () ListMap!4109)

(assert (=> b!4613096 (= lt!1768373 (+!1805 lt!1767990 (h!57317 oldBucket!40)))))

(assert (=> b!4613096 (= lt!1768375 (addToMapMapFromBucket!881 (t!358433 oldBucket!40) (+!1805 lt!1767990 (h!57317 oldBucket!40))))))

(declare-fun lt!1768389 () Unit!109496)

(assert (=> b!4613096 (= lt!1768389 call!321573)))

(assert (=> b!4613096 call!321574))

(declare-fun lt!1768374 () Unit!109496)

(assert (=> b!4613096 (= lt!1768374 lt!1768389)))

(assert (=> b!4613096 call!321575))

(declare-fun lt!1768376 () Unit!109496)

(declare-fun Unit!109602 () Unit!109496)

(assert (=> b!4613096 (= lt!1768376 Unit!109602)))

(assert (=> b!4613096 (forall!10718 (t!358433 oldBucket!40) lambda!188796)))

(declare-fun lt!1768382 () Unit!109496)

(declare-fun Unit!109603 () Unit!109496)

(assert (=> b!4613096 (= lt!1768382 Unit!109603)))

(declare-fun lt!1768381 () Unit!109496)

(declare-fun Unit!109604 () Unit!109496)

(assert (=> b!4613096 (= lt!1768381 Unit!109604)))

(declare-fun lt!1768386 () Unit!109496)

(assert (=> b!4613096 (= lt!1768386 (forallContained!2951 (toList!4808 lt!1768373) lambda!188796 (h!57317 oldBucket!40)))))

(assert (=> b!4613096 (contains!14286 lt!1768373 (_1!29357 (h!57317 oldBucket!40)))))

(declare-fun lt!1768372 () Unit!109496)

(declare-fun Unit!109605 () Unit!109496)

(assert (=> b!4613096 (= lt!1768372 Unit!109605)))

(assert (=> b!4613096 (contains!14286 lt!1768375 (_1!29357 (h!57317 oldBucket!40)))))

(declare-fun lt!1768378 () Unit!109496)

(declare-fun Unit!109606 () Unit!109496)

(assert (=> b!4613096 (= lt!1768378 Unit!109606)))

(assert (=> b!4613096 (forall!10718 oldBucket!40 lambda!188796)))

(declare-fun lt!1768383 () Unit!109496)

(declare-fun Unit!109607 () Unit!109496)

(assert (=> b!4613096 (= lt!1768383 Unit!109607)))

(assert (=> b!4613096 (forall!10718 (toList!4808 lt!1768373) lambda!188796)))

(declare-fun lt!1768384 () Unit!109496)

(declare-fun Unit!109608 () Unit!109496)

(assert (=> b!4613096 (= lt!1768384 Unit!109608)))

(declare-fun lt!1768387 () Unit!109496)

(declare-fun Unit!109609 () Unit!109496)

(assert (=> b!4613096 (= lt!1768387 Unit!109609)))

(declare-fun lt!1768380 () Unit!109496)

(assert (=> b!4613096 (= lt!1768380 (addForallContainsKeyThenBeforeAdding!458 lt!1767990 lt!1768375 (_1!29357 (h!57317 oldBucket!40)) (_2!29357 (h!57317 oldBucket!40))))))

(assert (=> b!4613096 (forall!10718 (toList!4808 lt!1767990) lambda!188796)))

(declare-fun lt!1768369 () Unit!109496)

(assert (=> b!4613096 (= lt!1768369 lt!1768380)))

(assert (=> b!4613096 (forall!10718 (toList!4808 lt!1767990) lambda!188796)))

(declare-fun lt!1768371 () Unit!109496)

(declare-fun Unit!109610 () Unit!109496)

(assert (=> b!4613096 (= lt!1768371 Unit!109610)))

(declare-fun res!1932066 () Bool)

(assert (=> b!4613096 (= res!1932066 (forall!10718 oldBucket!40 lambda!188796))))

(assert (=> b!4613096 (=> (not res!1932066) (not e!2877488))))

(assert (=> b!4613096 e!2877488))

(declare-fun lt!1768379 () Unit!109496)

(declare-fun Unit!109611 () Unit!109496)

(assert (=> b!4613096 (= lt!1768379 Unit!109611)))

(declare-fun bm!321570 () Bool)

(assert (=> bm!321570 (= call!321575 (forall!10718 (ite c!789927 (toList!4808 lt!1767990) (toList!4808 lt!1768373)) (ite c!789927 lambda!188794 lambda!188796)))))

(assert (= (and d!1453264 c!789927) b!4613095))

(assert (= (and d!1453264 (not c!789927)) b!4613096))

(assert (= (and b!4613096 res!1932066) b!4613094))

(assert (= (or b!4613095 b!4613096) bm!321569))

(assert (= (or b!4613095 b!4613096) bm!321570))

(assert (= (or b!4613095 b!4613096) bm!321568))

(assert (= (and d!1453264 res!1932065) b!4613092))

(assert (= (and b!4613092 res!1932064) b!4613093))

(declare-fun m!5444679 () Bool)

(assert (=> b!4613092 m!5444679))

(declare-fun m!5444681 () Bool)

(assert (=> b!4613093 m!5444681))

(declare-fun m!5444683 () Bool)

(assert (=> bm!321568 m!5444683))

(declare-fun m!5444685 () Bool)

(assert (=> bm!321570 m!5444685))

(declare-fun m!5444687 () Bool)

(assert (=> b!4613094 m!5444687))

(declare-fun m!5444689 () Bool)

(assert (=> b!4613096 m!5444689))

(declare-fun m!5444691 () Bool)

(assert (=> b!4613096 m!5444691))

(declare-fun m!5444693 () Bool)

(assert (=> b!4613096 m!5444693))

(assert (=> b!4613096 m!5444687))

(declare-fun m!5444695 () Bool)

(assert (=> b!4613096 m!5444695))

(declare-fun m!5444697 () Bool)

(assert (=> b!4613096 m!5444697))

(declare-fun m!5444699 () Bool)

(assert (=> b!4613096 m!5444699))

(assert (=> b!4613096 m!5444697))

(declare-fun m!5444701 () Bool)

(assert (=> b!4613096 m!5444701))

(assert (=> b!4613096 m!5444687))

(assert (=> b!4613096 m!5444691))

(declare-fun m!5444703 () Bool)

(assert (=> b!4613096 m!5444703))

(declare-fun m!5444705 () Bool)

(assert (=> b!4613096 m!5444705))

(declare-fun m!5444707 () Bool)

(assert (=> d!1453264 m!5444707))

(assert (=> d!1453264 m!5444177))

(declare-fun m!5444709 () Bool)

(assert (=> bm!321569 m!5444709))

(assert (=> b!4612866 d!1453264))

(declare-fun bs!1016558 () Bool)

(declare-fun d!1453266 () Bool)

(assert (= bs!1016558 (and d!1453266 b!4612865)))

(declare-fun lambda!188798 () Int)

(assert (=> bs!1016558 (= lambda!188798 lambda!188682)))

(declare-fun bs!1016559 () Bool)

(assert (= bs!1016559 (and d!1453266 d!1453248)))

(assert (=> bs!1016559 (= lambda!188798 lambda!188783)))

(declare-fun bs!1016560 () Bool)

(assert (= bs!1016560 (and d!1453266 d!1453250)))

(assert (=> bs!1016560 (= lambda!188798 lambda!188784)))

(declare-fun bs!1016561 () Bool)

(assert (= bs!1016561 (and d!1453266 d!1453260)))

(assert (=> bs!1016561 (= lambda!188798 lambda!188793)))

(declare-fun lt!1768390 () ListMap!4109)

(assert (=> d!1453266 (invariantList!1157 (toList!4808 lt!1768390))))

(declare-fun e!2877490 () ListMap!4109)

(assert (=> d!1453266 (= lt!1768390 e!2877490)))

(declare-fun c!789928 () Bool)

(assert (=> d!1453266 (= c!789928 ((_ is Cons!51316) Nil!51316))))

(assert (=> d!1453266 (forall!10716 Nil!51316 lambda!188798)))

(assert (=> d!1453266 (= (extractMap!1476 Nil!51316) lt!1768390)))

(declare-fun b!4613097 () Bool)

(assert (=> b!4613097 (= e!2877490 (addToMapMapFromBucket!881 (_2!29358 (h!57318 Nil!51316)) (extractMap!1476 (t!358434 Nil!51316))))))

(declare-fun b!4613098 () Bool)

(assert (=> b!4613098 (= e!2877490 (ListMap!4110 Nil!51315))))

(assert (= (and d!1453266 c!789928) b!4613097))

(assert (= (and d!1453266 (not c!789928)) b!4613098))

(declare-fun m!5444711 () Bool)

(assert (=> d!1453266 m!5444711))

(declare-fun m!5444713 () Bool)

(assert (=> d!1453266 m!5444713))

(declare-fun m!5444715 () Bool)

(assert (=> b!4613097 m!5444715))

(assert (=> b!4613097 m!5444715))

(declare-fun m!5444717 () Bool)

(assert (=> b!4613097 m!5444717))

(assert (=> b!4612866 d!1453266))

(declare-fun d!1453268 () Bool)

(declare-fun res!1932067 () Bool)

(declare-fun e!2877491 () Bool)

(assert (=> d!1453268 (=> res!1932067 e!2877491)))

(assert (=> d!1453268 (= res!1932067 (not ((_ is Cons!51315) newBucket!224)))))

(assert (=> d!1453268 (= (noDuplicateKeys!1420 newBucket!224) e!2877491)))

(declare-fun b!4613099 () Bool)

(declare-fun e!2877492 () Bool)

(assert (=> b!4613099 (= e!2877491 e!2877492)))

(declare-fun res!1932068 () Bool)

(assert (=> b!4613099 (=> (not res!1932068) (not e!2877492))))

(assert (=> b!4613099 (= res!1932068 (not (containsKey!2290 (t!358433 newBucket!224) (_1!29357 (h!57317 newBucket!224)))))))

(declare-fun b!4613100 () Bool)

(assert (=> b!4613100 (= e!2877492 (noDuplicateKeys!1420 (t!358433 newBucket!224)))))

(assert (= (and d!1453268 (not res!1932067)) b!4613099))

(assert (= (and b!4613099 res!1932068) b!4613100))

(declare-fun m!5444719 () Bool)

(assert (=> b!4613099 m!5444719))

(declare-fun m!5444721 () Bool)

(assert (=> b!4613100 m!5444721))

(assert (=> b!4612857 d!1453268))

(declare-fun b!4613111 () Bool)

(declare-fun e!2877497 () List!51439)

(assert (=> b!4613111 (= e!2877497 (Cons!51315 (h!57317 oldBucket!40) (removePairForKey!1043 (t!358433 oldBucket!40) key!4968)))))

(declare-fun b!4613110 () Bool)

(declare-fun e!2877498 () List!51439)

(assert (=> b!4613110 (= e!2877498 e!2877497)))

(declare-fun c!789933 () Bool)

(assert (=> b!4613110 (= c!789933 ((_ is Cons!51315) oldBucket!40))))

(declare-fun b!4613109 () Bool)

(assert (=> b!4613109 (= e!2877498 (t!358433 oldBucket!40))))

(declare-fun d!1453270 () Bool)

(declare-fun lt!1768393 () List!51439)

(assert (=> d!1453270 (not (containsKey!2290 lt!1768393 key!4968))))

(assert (=> d!1453270 (= lt!1768393 e!2877498)))

(declare-fun c!789934 () Bool)

(assert (=> d!1453270 (= c!789934 (and ((_ is Cons!51315) oldBucket!40) (= (_1!29357 (h!57317 oldBucket!40)) key!4968)))))

(assert (=> d!1453270 (noDuplicateKeys!1420 oldBucket!40)))

(assert (=> d!1453270 (= (removePairForKey!1043 oldBucket!40 key!4968) lt!1768393)))

(declare-fun b!4613112 () Bool)

(assert (=> b!4613112 (= e!2877497 Nil!51315)))

(assert (= (and d!1453270 c!789934) b!4613109))

(assert (= (and d!1453270 (not c!789934)) b!4613110))

(assert (= (and b!4613110 c!789933) b!4613111))

(assert (= (and b!4613110 (not c!789933)) b!4613112))

(declare-fun m!5444723 () Bool)

(assert (=> b!4613111 m!5444723))

(declare-fun m!5444725 () Bool)

(assert (=> d!1453270 m!5444725))

(assert (=> d!1453270 m!5444177))

(assert (=> b!4612858 d!1453270))

(declare-fun d!1453272 () Bool)

(declare-fun hash!3365 (Hashable!5817 K!12700) (_ BitVec 64))

(assert (=> d!1453272 (= (hash!3363 hashF!1389 key!4968) (hash!3365 hashF!1389 key!4968))))

(declare-fun bs!1016562 () Bool)

(assert (= bs!1016562 d!1453272))

(declare-fun m!5444727 () Bool)

(assert (=> bs!1016562 m!5444727))

(assert (=> b!4612859 d!1453272))

(declare-fun tp!1341406 () Bool)

(declare-fun b!4613117 () Bool)

(declare-fun e!2877501 () Bool)

(assert (=> b!4613117 (= e!2877501 (and tp_is_empty!28973 tp_is_empty!28975 tp!1341406))))

(assert (=> b!4612860 (= tp!1341399 e!2877501)))

(assert (= (and b!4612860 ((_ is Cons!51315) (t!358433 newBucket!224))) b!4613117))

(declare-fun tp!1341407 () Bool)

(declare-fun e!2877502 () Bool)

(declare-fun b!4613118 () Bool)

(assert (=> b!4613118 (= e!2877502 (and tp_is_empty!28973 tp_is_empty!28975 tp!1341407))))

(assert (=> b!4612856 (= tp!1341398 e!2877502)))

(assert (= (and b!4612856 ((_ is Cons!51315) (t!358433 oldBucket!40))) b!4613118))

(declare-fun b_lambda!170491 () Bool)

(assert (= b_lambda!170489 (or b!4612865 b_lambda!170491)))

(declare-fun bs!1016563 () Bool)

(declare-fun d!1453274 () Bool)

(assert (= bs!1016563 (and d!1453274 b!4612865)))

(assert (=> bs!1016563 (= (dynLambda!21451 lambda!188682 (h!57318 lt!1767993)) (noDuplicateKeys!1420 (_2!29358 (h!57318 lt!1767993))))))

(declare-fun m!5444729 () Bool)

(assert (=> bs!1016563 m!5444729))

(assert (=> b!4613055 d!1453274))

(check-sat (not b!4613056) (not d!1453250) (not bm!321559) (not b!4613015) (not b!4613111) (not b!4613092) (not bm!321548) (not d!1453248) (not b!4613016) (not d!1453230) (not bm!321562) (not b!4613007) (not d!1453272) (not b!4613014) (not d!1453254) (not bm!321558) (not b!4613008) (not bm!321561) (not d!1453260) (not b!4613050) (not d!1453244) (not b!4613096) (not b!4612989) (not b!4613043) (not bm!321567) (not b!4613099) (not bm!321547) (not d!1453264) (not b!4613094) (not bm!321556) (not b!4612990) (not d!1453270) (not bs!1016563) (not b!4613082) (not b!4613100) (not b!4612883) (not b!4613091) (not b!4613042) (not b!4613045) (not bm!321549) (not b!4613020) (not bm!321568) (not b!4613048) (not bm!321569) (not d!1453228) (not bm!321557) (not b!4613117) (not d!1453226) (not b!4613084) (not b!4613037) (not b!4613019) (not b!4613018) (not d!1453266) tp_is_empty!28973 (not bm!321563) (not b!4613093) (not b_lambda!170491) (not d!1453234) (not b!4613076) tp_is_empty!28975 (not b!4613079) (not b!4613047) (not d!1453252) (not b!4612884) (not b!4613083) (not b!4613081) (not b!4613046) (not b!4612993) (not b!4613077) (not d!1453246) (not d!1453232) (not d!1453218) (not d!1453258) (not b!4612991) (not b!4613080) (not bm!321570) (not d!1453182) (not b!4613118) (not bm!321564) (not b!4613039) (not b!4613041) (not bm!321560) (not b!4613097))
(check-sat)
