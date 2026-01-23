; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436174 () Bool)

(assert start!436174)

(declare-fun b!4453322 () Bool)

(declare-fun res!1845642 () Bool)

(declare-fun e!2773154 () Bool)

(assert (=> b!4453322 (=> (not res!1845642) (not e!2773154))))

(declare-datatypes ((V!11519 0))(
  ( (V!11520 (val!17289 Int)) )
))
(declare-datatypes ((K!11273 0))(
  ( (K!11274 (val!17290 Int)) )
))
(declare-datatypes ((tuple2!49898 0))(
  ( (tuple2!49899 (_1!28243 K!11273) (_2!28243 V!11519)) )
))
(declare-datatypes ((List!50025 0))(
  ( (Nil!49901) (Cons!49901 (h!55646 tuple2!49898) (t!356975 List!50025)) )
))
(declare-datatypes ((tuple2!49900 0))(
  ( (tuple2!49901 (_1!28244 (_ BitVec 64)) (_2!28244 List!50025)) )
))
(declare-datatypes ((List!50026 0))(
  ( (Nil!49902) (Cons!49902 (h!55647 tuple2!49900) (t!356976 List!50026)) )
))
(declare-datatypes ((ListLongMap!2397 0))(
  ( (ListLongMap!2398 (toList!3743 List!50026)) )
))
(declare-fun lm!1837 () ListLongMap!2397)

(declare-fun key!4369 () K!11273)

(declare-datatypes ((ListMap!2983 0))(
  ( (ListMap!2984 (toList!3744 List!50025)) )
))
(declare-fun contains!12485 (ListMap!2983 K!11273) Bool)

(declare-fun extractMap!937 (List!50026) ListMap!2983)

(declare-fun tail!7440 (ListLongMap!2397) ListLongMap!2397)

(assert (=> b!4453322 (= res!1845642 (contains!12485 (extractMap!937 (toList!3743 (tail!7440 lm!1837))) key!4369))))

(declare-fun b!4453323 () Bool)

(declare-fun res!1845643 () Bool)

(assert (=> b!4453323 (=> (not res!1845643) (not e!2773154))))

(assert (=> b!4453323 (= res!1845643 (is-Cons!49902 (toList!3743 lm!1837)))))

(declare-fun b!4453324 () Bool)

(declare-fun res!1845644 () Bool)

(assert (=> b!4453324 (=> (not res!1845644) (not e!2773154))))

(declare-fun isEmpty!28422 (List!50026) Bool)

(assert (=> b!4453324 (= res!1845644 (not (isEmpty!28422 (toList!3743 lm!1837))))))

(declare-fun b!4453325 () Bool)

(declare-fun e!2773153 () Bool)

(declare-fun tp!1334684 () Bool)

(assert (=> b!4453325 (= e!2773153 tp!1334684)))

(declare-fun b!4453326 () Bool)

(declare-fun noDuplicateKeys!875 (List!50025) Bool)

(assert (=> b!4453326 (= e!2773154 (not (noDuplicateKeys!875 (_2!28244 (h!55647 (toList!3743 lm!1837))))))))

(declare-fun res!1845640 () Bool)

(assert (=> start!436174 (=> (not res!1845640) (not e!2773154))))

(declare-fun lambda!159411 () Int)

(declare-fun forall!9775 (List!50026 Int) Bool)

(assert (=> start!436174 (= res!1845640 (forall!9775 (toList!3743 lm!1837) lambda!159411))))

(assert (=> start!436174 e!2773154))

(declare-fun inv!65460 (ListLongMap!2397) Bool)

(assert (=> start!436174 (and (inv!65460 lm!1837) e!2773153)))

(assert (=> start!436174 true))

(declare-fun tp_is_empty!26741 () Bool)

(assert (=> start!436174 tp_is_empty!26741))

(declare-fun b!4453327 () Bool)

(declare-fun res!1845641 () Bool)

(assert (=> b!4453327 (=> (not res!1845641) (not e!2773154))))

(declare-datatypes ((Hashable!5274 0))(
  ( (HashableExt!5273 (__x!30977 Int)) )
))
(declare-fun hashF!1304 () Hashable!5274)

(declare-fun allKeysSameHashInMap!986 (ListLongMap!2397 Hashable!5274) Bool)

(assert (=> b!4453327 (= res!1845641 (allKeysSameHashInMap!986 lm!1837 hashF!1304))))

(assert (= (and start!436174 res!1845640) b!4453327))

(assert (= (and b!4453327 res!1845641) b!4453324))

(assert (= (and b!4453324 res!1845644) b!4453322))

(assert (= (and b!4453322 res!1845642) b!4453323))

(assert (= (and b!4453323 res!1845643) b!4453326))

(assert (= start!436174 b!4453325))

(declare-fun m!5154081 () Bool)

(assert (=> b!4453326 m!5154081))

(declare-fun m!5154083 () Bool)

(assert (=> b!4453322 m!5154083))

(declare-fun m!5154085 () Bool)

(assert (=> b!4453322 m!5154085))

(assert (=> b!4453322 m!5154085))

(declare-fun m!5154087 () Bool)

(assert (=> b!4453322 m!5154087))

(declare-fun m!5154089 () Bool)

(assert (=> start!436174 m!5154089))

(declare-fun m!5154091 () Bool)

(assert (=> start!436174 m!5154091))

(declare-fun m!5154093 () Bool)

(assert (=> b!4453327 m!5154093))

(declare-fun m!5154095 () Bool)

(assert (=> b!4453324 m!5154095))

(push 1)

(assert (not start!436174))

(assert (not b!4453325))

(assert (not b!4453324))

(assert (not b!4453327))

(assert tp_is_empty!26741)

(assert (not b!4453322))

(assert (not b!4453326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4453364 () Bool)

(declare-datatypes ((Unit!85691 0))(
  ( (Unit!85692) )
))
(declare-fun e!2773175 () Unit!85691)

(declare-fun lt!1645223 () Unit!85691)

(assert (=> b!4453364 (= e!2773175 lt!1645223)))

(declare-fun lt!1645220 () Unit!85691)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!732 (List!50025 K!11273) Unit!85691)

(assert (=> b!4453364 (= lt!1645220 (lemmaContainsKeyImpliesGetValueByKeyDefined!732 (toList!3744 (extractMap!937 (toList!3743 (tail!7440 lm!1837)))) key!4369))))

(declare-datatypes ((Option!10841 0))(
  ( (None!10840) (Some!10840 (v!44094 V!11519)) )
))
(declare-fun isDefined!8129 (Option!10841) Bool)

(declare-fun getValueByKey!827 (List!50025 K!11273) Option!10841)

(assert (=> b!4453364 (isDefined!8129 (getValueByKey!827 (toList!3744 (extractMap!937 (toList!3743 (tail!7440 lm!1837)))) key!4369))))

(declare-fun lt!1645226 () Unit!85691)

(assert (=> b!4453364 (= lt!1645226 lt!1645220)))

(declare-fun lemmaInListThenGetKeysListContains!306 (List!50025 K!11273) Unit!85691)

(assert (=> b!4453364 (= lt!1645223 (lemmaInListThenGetKeysListContains!306 (toList!3744 (extractMap!937 (toList!3743 (tail!7440 lm!1837)))) key!4369))))

(declare-fun call!309897 () Bool)

(assert (=> b!4453364 call!309897))

(declare-fun b!4453366 () Bool)

(declare-datatypes ((List!50029 0))(
  ( (Nil!49905) (Cons!49905 (h!55650 K!11273) (t!356979 List!50029)) )
))
(declare-fun e!2773173 () List!50029)

(declare-fun keys!17125 (ListMap!2983) List!50029)

(assert (=> b!4453366 (= e!2773173 (keys!17125 (extractMap!937 (toList!3743 (tail!7440 lm!1837)))))))

(declare-fun b!4453367 () Bool)

(declare-fun e!2773178 () Bool)

(declare-fun e!2773174 () Bool)

(assert (=> b!4453367 (= e!2773178 e!2773174)))

(declare-fun res!1845666 () Bool)

(assert (=> b!4453367 (=> (not res!1845666) (not e!2773174))))

(assert (=> b!4453367 (= res!1845666 (isDefined!8129 (getValueByKey!827 (toList!3744 (extractMap!937 (toList!3743 (tail!7440 lm!1837)))) key!4369)))))

(declare-fun b!4453368 () Bool)

(declare-fun e!2773176 () Bool)

(declare-fun contains!12487 (List!50029 K!11273) Bool)

(assert (=> b!4453368 (= e!2773176 (not (contains!12487 (keys!17125 (extractMap!937 (toList!3743 (tail!7440 lm!1837)))) key!4369)))))

(declare-fun b!4453369 () Bool)

(declare-fun e!2773177 () Unit!85691)

(assert (=> b!4453369 (= e!2773175 e!2773177)))

(declare-fun c!758164 () Bool)

(assert (=> b!4453369 (= c!758164 call!309897)))

(declare-fun b!4453370 () Bool)

(declare-fun Unit!85693 () Unit!85691)

(assert (=> b!4453370 (= e!2773177 Unit!85693)))

(declare-fun b!4453371 () Bool)

(assert (=> b!4453371 false))

(declare-fun lt!1645222 () Unit!85691)

(declare-fun lt!1645225 () Unit!85691)

(assert (=> b!4453371 (= lt!1645222 lt!1645225)))

(declare-fun containsKey!1300 (List!50025 K!11273) Bool)

(assert (=> b!4453371 (containsKey!1300 (toList!3744 (extractMap!937 (toList!3743 (tail!7440 lm!1837)))) key!4369)))

(declare-fun lemmaInGetKeysListThenContainsKey!307 (List!50025 K!11273) Unit!85691)

(assert (=> b!4453371 (= lt!1645225 (lemmaInGetKeysListThenContainsKey!307 (toList!3744 (extractMap!937 (toList!3743 (tail!7440 lm!1837)))) key!4369))))

(declare-fun Unit!85694 () Unit!85691)

(assert (=> b!4453371 (= e!2773177 Unit!85694)))

(declare-fun b!4453372 () Bool)

(assert (=> b!4453372 (= e!2773174 (contains!12487 (keys!17125 (extractMap!937 (toList!3743 (tail!7440 lm!1837)))) key!4369))))

(declare-fun bm!309892 () Bool)

(assert (=> bm!309892 (= call!309897 (contains!12487 e!2773173 key!4369))))

(declare-fun c!758163 () Bool)

(declare-fun c!758162 () Bool)

(assert (=> bm!309892 (= c!758163 c!758162)))

(declare-fun d!1358483 () Bool)

(assert (=> d!1358483 e!2773178))

(declare-fun res!1845668 () Bool)

(assert (=> d!1358483 (=> res!1845668 e!2773178)))

(assert (=> d!1358483 (= res!1845668 e!2773176)))

(declare-fun res!1845667 () Bool)

(assert (=> d!1358483 (=> (not res!1845667) (not e!2773176))))

(declare-fun lt!1645224 () Bool)

(assert (=> d!1358483 (= res!1845667 (not lt!1645224))))

(declare-fun lt!1645227 () Bool)

(assert (=> d!1358483 (= lt!1645224 lt!1645227)))

(declare-fun lt!1645221 () Unit!85691)

(assert (=> d!1358483 (= lt!1645221 e!2773175)))

(assert (=> d!1358483 (= c!758162 lt!1645227)))

(assert (=> d!1358483 (= lt!1645227 (containsKey!1300 (toList!3744 (extractMap!937 (toList!3743 (tail!7440 lm!1837)))) key!4369))))

(assert (=> d!1358483 (= (contains!12485 (extractMap!937 (toList!3743 (tail!7440 lm!1837))) key!4369) lt!1645224)))

(declare-fun b!4453365 () Bool)

(declare-fun getKeysList!309 (List!50025) List!50029)

(assert (=> b!4453365 (= e!2773173 (getKeysList!309 (toList!3744 (extractMap!937 (toList!3743 (tail!7440 lm!1837))))))))

(assert (= (and d!1358483 c!758162) b!4453364))

(assert (= (and d!1358483 (not c!758162)) b!4453369))

(assert (= (and b!4453369 c!758164) b!4453371))

(assert (= (and b!4453369 (not c!758164)) b!4453370))

(assert (= (or b!4453364 b!4453369) bm!309892))

(assert (= (and bm!309892 c!758163) b!4453365))

(assert (= (and bm!309892 (not c!758163)) b!4453366))

(assert (= (and d!1358483 res!1845667) b!4453368))

(assert (= (and d!1358483 (not res!1845668)) b!4453367))

(assert (= (and b!4453367 res!1845666) b!4453372))

(declare-fun m!5154113 () Bool)

(assert (=> d!1358483 m!5154113))

(assert (=> b!4453366 m!5154085))

(declare-fun m!5154115 () Bool)

(assert (=> b!4453366 m!5154115))

(assert (=> b!4453372 m!5154085))

(assert (=> b!4453372 m!5154115))

(assert (=> b!4453372 m!5154115))

(declare-fun m!5154117 () Bool)

(assert (=> b!4453372 m!5154117))

(declare-fun m!5154119 () Bool)

(assert (=> b!4453364 m!5154119))

(declare-fun m!5154121 () Bool)

(assert (=> b!4453364 m!5154121))

(assert (=> b!4453364 m!5154121))

(declare-fun m!5154123 () Bool)

(assert (=> b!4453364 m!5154123))

(declare-fun m!5154125 () Bool)

(assert (=> b!4453364 m!5154125))

(declare-fun m!5154127 () Bool)

(assert (=> bm!309892 m!5154127))

(assert (=> b!4453368 m!5154085))

(assert (=> b!4453368 m!5154115))

(assert (=> b!4453368 m!5154115))

(assert (=> b!4453368 m!5154117))

(declare-fun m!5154129 () Bool)

(assert (=> b!4453365 m!5154129))

(assert (=> b!4453371 m!5154113))

(declare-fun m!5154131 () Bool)

(assert (=> b!4453371 m!5154131))

(assert (=> b!4453367 m!5154121))

(assert (=> b!4453367 m!5154121))

(assert (=> b!4453367 m!5154123))

(assert (=> b!4453322 d!1358483))

(declare-fun bs!790055 () Bool)

(declare-fun d!1358487 () Bool)

(assert (= bs!790055 (and d!1358487 start!436174)))

(declare-fun lambda!159417 () Int)

(assert (=> bs!790055 (= lambda!159417 lambda!159411)))

(declare-fun lt!1645230 () ListMap!2983)

(declare-fun invariantList!863 (List!50025) Bool)

(assert (=> d!1358487 (invariantList!863 (toList!3744 lt!1645230))))

(declare-fun e!2773181 () ListMap!2983)

(assert (=> d!1358487 (= lt!1645230 e!2773181)))

(declare-fun c!758167 () Bool)

(assert (=> d!1358487 (= c!758167 (is-Cons!49902 (toList!3743 (tail!7440 lm!1837))))))

(assert (=> d!1358487 (forall!9775 (toList!3743 (tail!7440 lm!1837)) lambda!159417)))

(assert (=> d!1358487 (= (extractMap!937 (toList!3743 (tail!7440 lm!1837))) lt!1645230)))

(declare-fun b!4453377 () Bool)

(declare-fun addToMapMapFromBucket!474 (List!50025 ListMap!2983) ListMap!2983)

(assert (=> b!4453377 (= e!2773181 (addToMapMapFromBucket!474 (_2!28244 (h!55647 (toList!3743 (tail!7440 lm!1837)))) (extractMap!937 (t!356976 (toList!3743 (tail!7440 lm!1837))))))))

(declare-fun b!4453378 () Bool)

(assert (=> b!4453378 (= e!2773181 (ListMap!2984 Nil!49901))))

(assert (= (and d!1358487 c!758167) b!4453377))

(assert (= (and d!1358487 (not c!758167)) b!4453378))

(declare-fun m!5154133 () Bool)

(assert (=> d!1358487 m!5154133))

(declare-fun m!5154135 () Bool)

(assert (=> d!1358487 m!5154135))

(declare-fun m!5154137 () Bool)

(assert (=> b!4453377 m!5154137))

(assert (=> b!4453377 m!5154137))

(declare-fun m!5154139 () Bool)

(assert (=> b!4453377 m!5154139))

(assert (=> b!4453322 d!1358487))

(declare-fun d!1358489 () Bool)

(declare-fun tail!7442 (List!50026) List!50026)

(assert (=> d!1358489 (= (tail!7440 lm!1837) (ListLongMap!2398 (tail!7442 (toList!3743 lm!1837))))))

(declare-fun bs!790056 () Bool)

(assert (= bs!790056 d!1358489))

(declare-fun m!5154141 () Bool)

(assert (=> bs!790056 m!5154141))

(assert (=> b!4453322 d!1358489))

(declare-fun bs!790057 () Bool)

(declare-fun d!1358491 () Bool)

(assert (= bs!790057 (and d!1358491 start!436174)))

(declare-fun lambda!159420 () Int)

(assert (=> bs!790057 (not (= lambda!159420 lambda!159411))))

(declare-fun bs!790058 () Bool)

(assert (= bs!790058 (and d!1358491 d!1358487)))

(assert (=> bs!790058 (not (= lambda!159420 lambda!159417))))

(assert (=> d!1358491 true))

(assert (=> d!1358491 (= (allKeysSameHashInMap!986 lm!1837 hashF!1304) (forall!9775 (toList!3743 lm!1837) lambda!159420))))

(declare-fun bs!790059 () Bool)

(assert (= bs!790059 d!1358491))

(declare-fun m!5154143 () Bool)

(assert (=> bs!790059 m!5154143))

(assert (=> b!4453327 d!1358491))

(declare-fun d!1358493 () Bool)

(declare-fun res!1845673 () Bool)

(declare-fun e!2773186 () Bool)

(assert (=> d!1358493 (=> res!1845673 e!2773186)))

(assert (=> d!1358493 (= res!1845673 (not (is-Cons!49901 (_2!28244 (h!55647 (toList!3743 lm!1837))))))))

(assert (=> d!1358493 (= (noDuplicateKeys!875 (_2!28244 (h!55647 (toList!3743 lm!1837)))) e!2773186)))

(declare-fun b!4453385 () Bool)

(declare-fun e!2773187 () Bool)

(assert (=> b!4453385 (= e!2773186 e!2773187)))

(declare-fun res!1845674 () Bool)

(assert (=> b!4453385 (=> (not res!1845674) (not e!2773187))))

(declare-fun containsKey!1301 (List!50025 K!11273) Bool)

(assert (=> b!4453385 (= res!1845674 (not (containsKey!1301 (t!356975 (_2!28244 (h!55647 (toList!3743 lm!1837)))) (_1!28243 (h!55646 (_2!28244 (h!55647 (toList!3743 lm!1837))))))))))

(declare-fun b!4453386 () Bool)

(assert (=> b!4453386 (= e!2773187 (noDuplicateKeys!875 (t!356975 (_2!28244 (h!55647 (toList!3743 lm!1837))))))))

(assert (= (and d!1358493 (not res!1845673)) b!4453385))

(assert (= (and b!4453385 res!1845674) b!4453386))

(declare-fun m!5154145 () Bool)

(assert (=> b!4453385 m!5154145))

(declare-fun m!5154147 () Bool)

(assert (=> b!4453386 m!5154147))

(assert (=> b!4453326 d!1358493))

(declare-fun d!1358495 () Bool)

(assert (=> d!1358495 (= (isEmpty!28422 (toList!3743 lm!1837)) (is-Nil!49902 (toList!3743 lm!1837)))))

(assert (=> b!4453324 d!1358495))

(declare-fun d!1358497 () Bool)

(declare-fun res!1845679 () Bool)

(declare-fun e!2773192 () Bool)

(assert (=> d!1358497 (=> res!1845679 e!2773192)))

(assert (=> d!1358497 (= res!1845679 (is-Nil!49902 (toList!3743 lm!1837)))))

(assert (=> d!1358497 (= (forall!9775 (toList!3743 lm!1837) lambda!159411) e!2773192)))

(declare-fun b!4453391 () Bool)

(declare-fun e!2773193 () Bool)

(assert (=> b!4453391 (= e!2773192 e!2773193)))

(declare-fun res!1845680 () Bool)

(assert (=> b!4453391 (=> (not res!1845680) (not e!2773193))))

(declare-fun dynLambda!20950 (Int tuple2!49900) Bool)

(assert (=> b!4453391 (= res!1845680 (dynLambda!20950 lambda!159411 (h!55647 (toList!3743 lm!1837))))))

(declare-fun b!4453392 () Bool)

(assert (=> b!4453392 (= e!2773193 (forall!9775 (t!356976 (toList!3743 lm!1837)) lambda!159411))))

(assert (= (and d!1358497 (not res!1845679)) b!4453391))

(assert (= (and b!4453391 res!1845680) b!4453392))

(declare-fun b_lambda!147361 () Bool)

(assert (=> (not b_lambda!147361) (not b!4453391)))

(declare-fun m!5154149 () Bool)

(assert (=> b!4453391 m!5154149))

(declare-fun m!5154151 () Bool)

(assert (=> b!4453392 m!5154151))

(assert (=> start!436174 d!1358497))

(declare-fun d!1358499 () Bool)

(declare-fun isStrictlySorted!291 (List!50026) Bool)

(assert (=> d!1358499 (= (inv!65460 lm!1837) (isStrictlySorted!291 (toList!3743 lm!1837)))))

(declare-fun bs!790060 () Bool)

(assert (= bs!790060 d!1358499))

(declare-fun m!5154153 () Bool)

(assert (=> bs!790060 m!5154153))

(assert (=> start!436174 d!1358499))

(declare-fun b!4453405 () Bool)

(declare-fun e!2773200 () Bool)

(declare-fun tp!1334692 () Bool)

(declare-fun tp!1334693 () Bool)

(assert (=> b!4453405 (= e!2773200 (and tp!1334692 tp!1334693))))

(assert (=> b!4453325 (= tp!1334684 e!2773200)))

(assert (= (and b!4453325 (is-Cons!49902 (toList!3743 lm!1837))) b!4453405))

(declare-fun b_lambda!147363 () Bool)

(assert (= b_lambda!147361 (or start!436174 b_lambda!147363)))

(declare-fun bs!790061 () Bool)

(declare-fun d!1358501 () Bool)

(assert (= bs!790061 (and d!1358501 start!436174)))

(assert (=> bs!790061 (= (dynLambda!20950 lambda!159411 (h!55647 (toList!3743 lm!1837))) (noDuplicateKeys!875 (_2!28244 (h!55647 (toList!3743 lm!1837)))))))

(assert (=> bs!790061 m!5154081))

(assert (=> b!4453391 d!1358501))

(push 1)

(assert (not b!4453371))

(assert (not b!4453365))

(assert (not b_lambda!147363))

(assert (not bs!790061))

(assert (not d!1358483))

(assert (not bm!309892))

(assert (not b!4453377))

(assert (not b!4453372))

(assert (not b!4453386))

(assert (not d!1358491))

(assert (not b!4453392))

(assert (not d!1358489))

(assert (not b!4453364))

(assert (not b!4453385))

(assert (not b!4453368))

(assert tp_is_empty!26741)

(assert (not d!1358487))

(assert (not b!4453405))

(assert (not d!1358499))

(assert (not b!4453367))

(assert (not b!4453366))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

